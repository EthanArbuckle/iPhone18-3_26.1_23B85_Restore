uint64_t sub_1AF97F9EC(uint64_t a1, uint64_t a2)
{
  sub_1AF97FB54(0, &qword_1EB640A58, &type metadata for CodeGenContext.SubGraphContext, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF97FA74(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1AF97FB54(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1AF97FAD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1AF97FB54(255, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1AF97FB54(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AF97FBE8()
{
  v1 = 0xE600000000000000;
  v2 = *(v0 + OBJC_IVAR____TtC3VFX14CanvasItemNode_stage);
  if (v2 <= 3)
  {
    if (*(v0 + OBJC_IVAR____TtC3VFX14CanvasItemNode_stage) <= 1u)
    {
      if (*(v0 + OBJC_IVAR____TtC3VFX14CanvasItemNode_stage))
      {
        v1 = 0xE500000000000000;
        v3 = 0x6E77617073;
      }

      else
      {
        v1 = 0xE400000000000000;
        v3 = 1852399981;
      }

      goto LABEL_17;
    }

    if (v2 == 2)
    {
      v1 = 0xEA0000000000657ALL;
      v3 = 0x696C616974696E69;
      goto LABEL_17;
    }

    v1 = 0xEC00000074696E49;
LABEL_15:
    v3 = 0x656C636974726170;
    goto LABEL_17;
  }

  if (*(v0 + OBJC_IVAR____TtC3VFX14CanvasItemNode_stage) <= 5u)
  {
    if (v2 == 4)
    {
      v3 = 0x657461647075;
      goto LABEL_17;
    }

    v1 = 0xEE00657461647055;
    goto LABEL_15;
  }

  if (v2 == 6)
  {
    v3 = 0x7265646E6572;
  }

  else
  {
    v1 = 0xE700000000000000;
    v3 = 0x72656767697274;
  }

LABEL_17:
  MEMORY[0x1B2718AE0](v3, v1);

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  return 0x28206D657449;
}

uint64_t sub_1AF97FD88(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  result = sub_1AFDFF398();
  if (!v2)
  {
    sub_1AF441150(v4, v4[3]);
    sub_1AF9825F4();
    sub_1AFDFEE88();
    *(v1 + OBJC_IVAR____TtC3VFX14CanvasItemNode_stage) = v5;
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v4);
  }

  return result;
}

uint64_t sub_1AF97FEEC(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  v5 = *(v1 + OBJC_IVAR____TtC3VFX14CanvasItemNode_stage);
  sub_1AF448018(v3, v4);
  sub_1AF9815CC();
  sub_1AFDFEF28();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v3);
}

uint64_t sub_1AF97FFE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1AF967124(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000000;
  *(v4 + 32) = result | 0x8000000000000000;
  v6 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v4;
  a2[2] = a1;
  a2[3] = v6;
  a2[4] = v6;
  a2[5] = v6;
  return result;
}

uint64_t sub_1AF980090(void *a1, int a2)
{
  v69 = a2;
  v3 = MEMORY[0x1E69E6F58];
  sub_1AF9824E4(0, &qword_1EB640B00, sub_1AF982244, &type metadata for CanvasStickyNode.ColorScheme.GrayCodingKeys, MEMORY[0x1E69E6F58]);
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v61 = &v50 - v6;
  sub_1AF9824E4(0, &qword_1EB640B08, sub_1AF982298, &type metadata for CanvasStickyNode.ColorScheme.PinkCodingKeys, v3);
  v59 = *(v7 - 8);
  v60 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v58 = &v50 - v9;
  sub_1AF9824E4(0, &qword_1EB640B10, sub_1AF9822EC, &type metadata for CanvasStickyNode.ColorScheme.PurpleCodingKeys, v3);
  v56 = *(v10 - 8);
  v57 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v55 = &v50 - v12;
  sub_1AF9824E4(0, &qword_1EB640B18, sub_1AF982340, &type metadata for CanvasStickyNode.ColorScheme.BlueCodingKeys, v3);
  v53 = *(v13 - 8);
  v54 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v52 = &v50 - v15;
  sub_1AF9824E4(0, &qword_1EB640B20, sub_1AF982394, &type metadata for CanvasStickyNode.ColorScheme.GreenCodingKeys, v3);
  v67 = *(v16 - 8);
  v68 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v66 = &v50 - v18;
  sub_1AF9824E4(0, &qword_1EB640B28, sub_1AF9823E8, &type metadata for CanvasStickyNode.ColorScheme.YellowCodingKeys, v3);
  v51 = v19;
  v65 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v50 - v21;
  sub_1AF9824E4(0, &qword_1EB640B30, sub_1AF98243C, &type metadata for CanvasStickyNode.ColorScheme.OrangeCodingKeys, v3);
  v24 = v23;
  v64 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v50 - v26;
  sub_1AF9824E4(0, &qword_1EB640B38, sub_1AF982490, &type metadata for CanvasStickyNode.ColorScheme.CodingKeys, v3);
  v71 = v28;
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v50 - v31;
  sub_1AF441150(a1, a1[3]);
  sub_1AF982490();
  v70 = v32;
  sub_1AFDFF3F8();
  v33 = (v29 + 8);
  if (v69 <= 2u)
  {
    v39 = v64;
    v40 = v65;
    v41 = v66;
    v42 = v67;
    v43 = v68;
    if (v69)
    {
      if (v69 != 1)
      {
        v74 = 2;
        sub_1AF982394();
        v47 = v41;
        v48 = v70;
        v49 = v71;
        sub_1AFDFE848();
        (*(v42 + 8))(v47, v43);
        return (*v33)(v48, v49);
      }

      v73 = 1;
      sub_1AF9823E8();
      v44 = v70;
      v45 = v71;
      sub_1AFDFE848();
      (*(v40 + 8))(v22, v51);
    }

    else
    {
      v72 = 0;
      sub_1AF98243C();
      v44 = v70;
      v45 = v71;
      sub_1AFDFE848();
      (*(v39 + 8))(v27, v24);
    }

    return (*v33)(v44, v45);
  }

  if (v69 > 4u)
  {
    if (v69 == 5)
    {
      v77 = 5;
      sub_1AF982298();
      v34 = v58;
      v35 = v70;
      v36 = v71;
      sub_1AFDFE848();
      v38 = v59;
      v37 = v60;
    }

    else
    {
      v78 = 6;
      sub_1AF982244();
      v34 = v61;
      v35 = v70;
      v36 = v71;
      sub_1AFDFE848();
      v38 = v62;
      v37 = v63;
    }
  }

  else if (v69 == 3)
  {
    v75 = 3;
    sub_1AF982340();
    v34 = v52;
    v35 = v70;
    v36 = v71;
    sub_1AFDFE848();
    v38 = v53;
    v37 = v54;
  }

  else
  {
    v76 = 4;
    sub_1AF9822EC();
    v34 = v55;
    v35 = v70;
    v36 = v71;
    sub_1AFDFE848();
    v38 = v56;
    v37 = v57;
  }

  (*(v38 + 8))(v34, v37);
  return (*v33)(v35, v36);
}

uint64_t sub_1AF980880(uint64_t a1)
{
  v2 = sub_1AF982340();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF9808BC(uint64_t a1)
{
  v2 = sub_1AF982340();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF980904()
{
  v1 = *v0;
  v2 = 0x65676E61726FLL;
  v3 = 1802398064;
  if (v1 != 5)
  {
    v3 = 2036429415;
  }

  v4 = 1702194274;
  if (v1 != 3)
  {
    v4 = 0x656C70727570;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x776F6C6C6579;
  if (v1 != 1)
  {
    v5 = 0x6E65657267;
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

uint64_t sub_1AF9809B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF981620(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF9809DC(uint64_t a1)
{
  v2 = sub_1AF982490();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF980A18(uint64_t a1)
{
  v2 = sub_1AF982490();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF980A54(uint64_t a1)
{
  v2 = sub_1AF982244();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF980A90(uint64_t a1)
{
  v2 = sub_1AF982244();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF980ACC(uint64_t a1)
{
  v2 = sub_1AF982394();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF980B08(uint64_t a1)
{
  v2 = sub_1AF982394();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF980B44(uint64_t a1)
{
  v2 = sub_1AF98243C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF980B80(uint64_t a1)
{
  v2 = sub_1AF98243C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF980BBC(uint64_t a1)
{
  v2 = sub_1AF982298();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF980BF8(uint64_t a1)
{
  v2 = sub_1AF982298();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF980C34(uint64_t a1)
{
  v2 = sub_1AF9822EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF980C70(uint64_t a1)
{
  v2 = sub_1AF9822EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF980CAC(uint64_t a1)
{
  v2 = sub_1AF9823E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF980CE8(uint64_t a1)
{
  v2 = sub_1AF9823E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF980D24@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF981858(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_1AF980D7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    v11 = byte_1F24F3810[v6 + 32];
    if (v11 != 6)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AFC07368(0, *(v8 + 16) + 1, 1);
      }

      v10 = *(v8 + 16);
      v9 = *(v8 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1AFC07368(v9 > 1, v10 + 1, 1);
      }

      *(v8 + 16) = v10 + 1;
      *(v8 + v10 + 32) = v11;
    }

    ++v6;
  }

  while (v6 != 7);
  v12 = *(v8 + 16);
  if (v12)
  {
    v13 = *(v8 + sub_1AF4563F4(v12) + 32);
  }

  else
  {
    v13 = 7;
  }

  *(v3 + OBJC_IVAR____TtC3VFX16CanvasStickyNode_colorScheme) = v13;
  v14 = (v3 + OBJC_IVAR____TtC3VFX16CanvasStickyNode_text);
  *v14 = a1;
  v14[1] = a2;
  v3[3] = 0;
  v3[4] = 0;
  v3[2] = v7;
  sub_1AFDFC308();
  return v3;
}

char *sub_1AF980EE8(void *a1)
{
  v2 = v1;
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = byte_1F24F3810[v4 + 32];
    if (v8 != 6)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AFC07368(0, *(v5 + 16) + 1, 1);
      }

      v7 = *(v5 + 16);
      v6 = *(v5 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1AFC07368(v6 > 1, v7 + 1, 1);
      }

      *(v5 + 16) = v7 + 1;
      *(v5 + v7 + 32) = v8;
    }

    ++v4;
  }

  while (v4 != 7);
  v9 = *(v5 + 16);
  if (v9)
  {
    v10 = *(v5 + sub_1AF4563F4(v9) + 32);
  }

  else
  {
    v10 = 7;
  }

  v11 = OBJC_IVAR____TtC3VFX16CanvasStickyNode_colorScheme;
  *(v2 + OBJC_IVAR____TtC3VFX16CanvasStickyNode_colorScheme) = v10;
  v12 = *(a1 + OBJC_IVAR____TtC3VFX16CanvasStickyNode_text + 8);
  v13 = (v2 + OBJC_IVAR____TtC3VFX16CanvasStickyNode_text);
  *v13 = *(a1 + OBJC_IVAR____TtC3VFX16CanvasStickyNode_text);
  v13[1] = v12;
  *(v2 + v11) = *(a1 + OBJC_IVAR____TtC3VFX16CanvasStickyNode_colorScheme);

  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF981038(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v4, v5);

  sub_1AFDFEBE8();

  if (!v2 && *(v1 + OBJC_IVAR____TtC3VFX16CanvasStickyNode_colorScheme) != 7)
  {
    sub_1AF448018(v4, v5);
    sub_1AF9825A0();
    sub_1AFDFEC38();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v4);
}

uint64_t sub_1AF98114C(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  result = sub_1AFDFF388();
  if (!v2)
  {
    sub_1AF448018(v7, v8);
    v4 = sub_1AFDFEA78();
    v5 = (v1 + OBJC_IVAR____TtC3VFX16CanvasStickyNode_text);
    *v5 = v4;
    v5[1] = v6;

    sub_1AF448018(v7, v8);
    sub_1AF98254C();
    sub_1AFDFEAD8();
    *(v1 + OBJC_IVAR____TtC3VFX16CanvasStickyNode_colorScheme) = v9;
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v7);
  }

  return result;
}

uint64_t sub_1AF9812C4()
{

  sub_1AF919DAC(*(v0 + 24));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_1AF9814F8()
{
  result = qword_1EB640A60;
  if (!qword_1EB640A60)
  {
    sub_1AF967124(255, &qword_1EB640A68, &type metadata for CanvasStickyNode.ColorScheme, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640A60);
  }

  return result;
}

unint64_t sub_1AF981578()
{
  result = qword_1EB640A70;
  if (!qword_1EB640A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640A70);
  }

  return result;
}

unint64_t sub_1AF9815CC()
{
  result = qword_1EB640A78;
  if (!qword_1EB640A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640A78);
  }

  return result;
}

uint64_t sub_1AF981620(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676E61726FLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x776F6C6C6579 && a2 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C70727570 && a2 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1802398064 && a2 == 0xE400000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 2036429415 && a2 == 0xE400000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1AF981858(void *a1)
{
  v2 = MEMORY[0x1E69E6F48];
  sub_1AF9824E4(0, &qword_1EB640A80, sub_1AF982244, &type metadata for CanvasStickyNode.ColorScheme.GrayCodingKeys, MEMORY[0x1E69E6F48]);
  v68 = v3;
  v64 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v71 = &v53[-v5];
  sub_1AF9824E4(0, &qword_1EB640A90, sub_1AF982298, &type metadata for CanvasStickyNode.ColorScheme.PinkCodingKeys, v2);
  v66 = *(v6 - 8);
  v67 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v74 = &v53[-v8];
  sub_1AF9824E4(0, &qword_1EB640AA0, sub_1AF9822EC, &type metadata for CanvasStickyNode.ColorScheme.PurpleCodingKeys, v2);
  v65 = v9;
  v63 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v70 = &v53[-v11];
  sub_1AF9824E4(0, &qword_1EB640AB0, sub_1AF982340, &type metadata for CanvasStickyNode.ColorScheme.BlueCodingKeys, v2);
  v61 = *(v12 - 8);
  v62 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v73 = &v53[-v14];
  sub_1AF9824E4(0, &qword_1EB640AC0, sub_1AF982394, &type metadata for CanvasStickyNode.ColorScheme.GreenCodingKeys, v2);
  v16 = *(v15 - 8);
  v59 = v15;
  v60 = v16;
  MEMORY[0x1EEE9AC00](v15, v17);
  v69 = &v53[-v18];
  sub_1AF9824E4(0, &qword_1EB640AD0, sub_1AF9823E8, &type metadata for CanvasStickyNode.ColorScheme.YellowCodingKeys, v2);
  v57 = *(v19 - 8);
  v58 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v72 = &v53[-v21];
  sub_1AF9824E4(0, &qword_1EB640AE0, sub_1AF98243C, &type metadata for CanvasStickyNode.ColorScheme.OrangeCodingKeys, v2);
  v23 = v22;
  v56 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v53[-v25];
  sub_1AF9824E4(0, &qword_1EB640AF0, sub_1AF982490, &type metadata for CanvasStickyNode.ColorScheme.CodingKeys, v2);
  v28 = v27;
  v29 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v30);
  v32 = &v53[-v31];
  v33 = a1[3];
  v76 = a1;
  sub_1AF441150(a1, v33);
  sub_1AF982490();
  v34 = v75;
  sub_1AFDFF3B8();
  if (v34)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v76);
  }

  v55 = v23;
  v36 = v72;
  v35 = v73;
  v37 = v74;
  v75 = v29;
  v38 = v32;
  v39 = sub_1AFDFE7F8();
  if (*(v39 + 16) != 1)
  {
    v43 = sub_1AFDFE2C8();
    swift_allocError();
    v44 = v28;
    v46 = v45;
    sub_1AF602A88();
    *v46 = &type metadata for CanvasStickyNode.ColorScheme;
    sub_1AFDFE678();
    sub_1AFDFE2A8();
    (*(*(v43 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v43);
    swift_willThrow();
    (*(v75 + 8))(v38, v44);

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v76);
  }

  v40 = *(v39 + 32);
  v54 = v40;
  if (v40 <= 2)
  {
    if (v40)
    {
      if (v40 == 1)
      {
        v78 = 1;
        sub_1AF9823E8();
        sub_1AFDFE668();
        (*(v57 + 8))(v36, v58);
      }

      else
      {
        v79 = 2;
        sub_1AF982394();
        v48 = v69;
        sub_1AFDFE668();
        (*(v60 + 8))(v48, v59);
      }
    }

    else
    {
      v77 = 0;
      sub_1AF98243C();
      sub_1AFDFE668();
      (*(v56 + 8))(v26, v55);
    }

    (*(v75 + 8))(v32, v28);
  }

  else
  {
    if (v40 <= 4)
    {
      v42 = v75;
      v41 = v76;
      if (v40 == 3)
      {
        v80 = 3;
        sub_1AF982340();
        sub_1AFDFE668();
        (*(v61 + 8))(v35, v62);
      }

      else
      {
        v81 = 4;
        sub_1AF9822EC();
        v50 = v70;
        sub_1AFDFE668();
        (*(v63 + 8))(v50, v65);
      }

      (*(v42 + 8))(v32, v28);

      v52 = v41;
      goto LABEL_22;
    }

    v47 = v75;
    if (v40 == 5)
    {
      v82 = 5;
      sub_1AF982298();
      sub_1AFDFE668();
      (*(v66 + 8))(v37, v67);
    }

    else
    {
      v83 = 6;
      sub_1AF982244();
      v51 = v71;
      sub_1AFDFE668();
      (*(v64 + 8))(v51, v68);
    }

    (*(v47 + 8))(v32, v28);
  }

  v52 = v76;
LABEL_22:
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v52);
  return v54;
}

unint64_t sub_1AF982244()
{
  result = qword_1EB640A88;
  if (!qword_1EB640A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640A88);
  }

  return result;
}

unint64_t sub_1AF982298()
{
  result = qword_1EB640A98;
  if (!qword_1EB640A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640A98);
  }

  return result;
}

unint64_t sub_1AF9822EC()
{
  result = qword_1EB640AA8;
  if (!qword_1EB640AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640AA8);
  }

  return result;
}

unint64_t sub_1AF982340()
{
  result = qword_1EB640AB8;
  if (!qword_1EB640AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640AB8);
  }

  return result;
}

unint64_t sub_1AF982394()
{
  result = qword_1EB640AC8;
  if (!qword_1EB640AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640AC8);
  }

  return result;
}

unint64_t sub_1AF9823E8()
{
  result = qword_1EB640AD8;
  if (!qword_1EB640AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640AD8);
  }

  return result;
}

unint64_t sub_1AF98243C()
{
  result = qword_1EB640AE8;
  if (!qword_1EB640AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640AE8);
  }

  return result;
}

unint64_t sub_1AF982490()
{
  result = qword_1EB640AF8;
  if (!qword_1EB640AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640AF8);
  }

  return result;
}

void sub_1AF9824E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AF98254C()
{
  result = qword_1EB640B40;
  if (!qword_1EB640B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640B40);
  }

  return result;
}

unint64_t sub_1AF9825A0()
{
  result = qword_1EB640B48;
  if (!qword_1EB640B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640B48);
  }

  return result;
}

unint64_t sub_1AF9825F4()
{
  result = qword_1EB640B50;
  if (!qword_1EB640B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640B50);
  }

  return result;
}

unint64_t sub_1AF9826CC()
{
  result = qword_1EB640B58;
  if (!qword_1EB640B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640B58);
  }

  return result;
}

unint64_t sub_1AF982724()
{
  result = qword_1EB640B60;
  if (!qword_1EB640B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640B60);
  }

  return result;
}

unint64_t sub_1AF98277C()
{
  result = qword_1EB640B68;
  if (!qword_1EB640B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640B68);
  }

  return result;
}

unint64_t sub_1AF9827D4()
{
  result = qword_1EB640B70;
  if (!qword_1EB640B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640B70);
  }

  return result;
}

unint64_t sub_1AF98282C()
{
  result = qword_1EB640B78;
  if (!qword_1EB640B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640B78);
  }

  return result;
}

unint64_t sub_1AF982884()
{
  result = qword_1EB640B80;
  if (!qword_1EB640B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640B80);
  }

  return result;
}

unint64_t sub_1AF9828DC()
{
  result = qword_1EB640B88;
  if (!qword_1EB640B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640B88);
  }

  return result;
}

unint64_t sub_1AF982934()
{
  result = qword_1EB640B90;
  if (!qword_1EB640B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640B90);
  }

  return result;
}

unint64_t sub_1AF98298C()
{
  result = qword_1EB640B98;
  if (!qword_1EB640B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640B98);
  }

  return result;
}

unint64_t sub_1AF9829E4()
{
  result = qword_1EB640BA0;
  if (!qword_1EB640BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640BA0);
  }

  return result;
}

unint64_t sub_1AF982A3C()
{
  result = qword_1EB640BA8;
  if (!qword_1EB640BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640BA8);
  }

  return result;
}

unint64_t sub_1AF982A94()
{
  result = qword_1EB640BB0;
  if (!qword_1EB640BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640BB0);
  }

  return result;
}

unint64_t sub_1AF982AEC()
{
  result = qword_1EB640BB8;
  if (!qword_1EB640BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640BB8);
  }

  return result;
}

unint64_t sub_1AF982B44()
{
  result = qword_1EB640BC0;
  if (!qword_1EB640BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640BC0);
  }

  return result;
}

unint64_t sub_1AF982B9C()
{
  result = qword_1EB640BC8;
  if (!qword_1EB640BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640BC8);
  }

  return result;
}

unint64_t sub_1AF982BF4()
{
  result = qword_1EB640BD0;
  if (!qword_1EB640BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640BD0);
  }

  return result;
}

unint64_t sub_1AF982C4C()
{
  result = qword_1EB640BD8;
  if (!qword_1EB640BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640BD8);
  }

  return result;
}

uint64_t sub_1AF982CA8@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC3VFX9_CodeNode_inputNames;
  v4 = *(*(v1 + OBJC_IVAR____TtC3VFX9_CodeNode_inputNames) + 16);
  if (v4)
  {
    v5 = sub_1AFDFD488();
    *(v5 + 16) = v4;
    memset_pattern16((v5 + 32), &unk_1AFE854D0, 8 * v4);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = *(v1 + OBJC_IVAR____TtC3VFX9_CodeNode_outputTypes);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v22 = v1;
    *&v23[0] = MEMORY[0x1E69E7CC0];

    sub_1AFC05EAC(0, v7, 0);
    v9 = 32;
    v8 = *&v23[0];
    do
    {
      v10 = *(v6 + v9);
      v11 = swift_allocObject();
      *(v11 + 16) = v10;
      sub_1AF442064(v10);
      *&v23[0] = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1AFC05EAC(v12 > 1, v13 + 1, 1);
        v8 = *&v23[0];
      }

      *(v8 + 16) = v13 + 1;
      *(v8 + 8 * v13 + 32) = v11 | 0x8000000000000000;
      v9 += 8;
      --v7;
    }

    while (v7);

    v1 = v22;
  }

  v15 = sub_1AF3C3AA4(v14);

  v24 = MEMORY[0x1E69E6530];
  v23[0] = xmmword_1AFE87F70;
  v16 = *(*(v1 + v3) + 16);
  if (v16)
  {
    v17 = sub_1AFDFD488();
    *(v17 + 16) = v16;
    v18 = v17 + 32;
    do
    {
      sub_1AF914FF0(v23, v18);
      v18 += 40;
      --v16;
    }

    while (v16);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  sub_1AF9151B0(v23);

  v20 = sub_1AF3C3AA4(v19);

  *a1 = v5;
  a1[1] = v8;
  a1[2] = &unk_1F24F37B0;
  a1[3] = v15;
  a1[4] = v20;
  a1[5] = v17;
  return result;
}

char *sub_1AF982ED4(void *a1)
{
  v4 = *(a1 + OBJC_IVAR____TtC3VFX9_CodeNode_code);
  v3 = *(a1 + OBJC_IVAR____TtC3VFX9_CodeNode_code + 8);
  v5 = (v1 + OBJC_IVAR____TtC3VFX9_CodeNode_code);
  *v5 = v4;
  v5[1] = v3;
  *(v1 + OBJC_IVAR____TtC3VFX9_CodeNode_inputNames) = *(a1 + OBJC_IVAR____TtC3VFX9_CodeNode_inputNames);
  *(v1 + OBJC_IVAR____TtC3VFX9_CodeNode_outputNames) = *(a1 + OBJC_IVAR____TtC3VFX9_CodeNode_outputNames);
  *(v1 + OBJC_IVAR____TtC3VFX9_CodeNode_outputTypes) = *(a1 + OBJC_IVAR____TtC3VFX9_CodeNode_outputTypes);

  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF982F7C()
{
  if (*(*(v0 + 16) + 16) && (, v1 = sub_1AF9A1B58(1, 0), v3 = v2, , v3))
  {
    v4 = v1;
  }

  else
  {

    v4 = 0;
    v3 = 0xE000000000000000;
  }

  MEMORY[0x1B2718AE0](v4, v3);

  MEMORY[0x1B2718AE0](34, 0xE100000000000000);
  return 34;
}

uint64_t sub_1AF983080(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v4, v5);

  sub_1AFDFEBE8();

  if (!v2)
  {
    v6 = *(v1 + OBJC_IVAR____TtC3VFX9_CodeNode_inputNames);
    sub_1AF448018(v4, v5);
    sub_1AF985A10(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1AF985A60(&qword_1EB639870);
    sub_1AFDFEC38();
    v6 = *(v1 + OBJC_IVAR____TtC3VFX9_CodeNode_outputNames);
    sub_1AF448018(v4, v5);
    sub_1AFDFEC38();
    v6 = *(v1 + OBJC_IVAR____TtC3VFX9_CodeNode_outputTypes);
    sub_1AF448018(v4, v5);
    sub_1AF985A10(0, &qword_1EB640C18, &type metadata for AnyType, MEMORY[0x1E69E62F8]);
    sub_1AF985AE4(&qword_1EB640C28, sub_1AF9748D8);
    sub_1AFDFEC38();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v4);
}

uint64_t sub_1AF9832DC(void *a1)
{
  v3 = v1;
  sub_1AF441150(a1, a1[3]);
  result = sub_1AFDFF388();
  if (!v2)
  {
    v6 = a1[3];
    v7 = a1[4];
    sub_1AF441150(a1, v6);
    if (sub_1AF69504C(3020, v6, v7))
    {
      v8 = (v3 + OBJC_IVAR____TtC3VFX9_CodeNode_code);
      *v8 = 0;
      v8[1] = 0xE000000000000000;

      sub_1AF985A10(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1AF448018(v13, v14);
      sub_1AF985A60(&qword_1ED726C58);
      sub_1AFDFEAD8();
      *(v3 + OBJC_IVAR____TtC3VFX9_CodeNode_inputNames) = v15;

      *(v3 + OBJC_IVAR____TtC3VFX9_CodeNode_outputNames) = &unk_1F25000B8;

      sub_1AF985A10(0, &qword_1EB630990, &type metadata for AnyType, MEMORY[0x1E69E6F90]);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1AFE431C0;
      sub_1AF448018(v13, v14);
      sub_1AF974884();
      sub_1AFDFEAD8();
      *(v3 + OBJC_IVAR____TtC3VFX9_CodeNode_outputTypes) = v9;
    }

    else
    {
      sub_1AF448018(v13, v14);
      v10 = sub_1AFDFEA78();
      v11 = (v3 + OBJC_IVAR____TtC3VFX9_CodeNode_code);
      *v11 = v10;
      v11[1] = v12;

      sub_1AF985A10(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1AF448018(v13, v14);
      sub_1AF985A60(&qword_1ED726C58);
      sub_1AFDFEAD8();
      *(v3 + OBJC_IVAR____TtC3VFX9_CodeNode_inputNames) = v15;

      sub_1AF448018(v13, v14);
      sub_1AFDFEAD8();
      *(v3 + OBJC_IVAR____TtC3VFX9_CodeNode_outputNames) = v15;

      sub_1AF985A10(0, &qword_1EB640C18, &type metadata for AnyType, MEMORY[0x1E69E62F8]);
      sub_1AF448018(v13, v14);
      sub_1AF985AE4(&qword_1EB640C20, sub_1AF974884);
      sub_1AFDFEAD8();
      *(v3 + OBJC_IVAR____TtC3VFX9_CodeNode_outputTypes) = v15;
    }

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v13);
  }

  return result;
}

uint64_t sub_1AF98376C()
{
}

uint64_t sub_1AF9837D0()
{

  sub_1AF919DAC(*(v0 + 24));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_1AF9839C4()
{
  v1 = (v0 + OBJC_IVAR____TtC3VFX9_CodeNode_code);
  *v1 = 0xD00000000000001ALL;
  v1[1] = 0x80000001AFF3CD70;
  *(v0 + OBJC_IVAR____TtC3VFX9_CodeNode_inputNames) = &unk_1F24FFEB8;
  *(v0 + OBJC_IVAR____TtC3VFX9_CodeNode_outputNames) = &unk_1F24FFEF8;
  *(v0 + OBJC_IVAR____TtC3VFX9_CodeNode_outputTypes) = &unk_1F24FFF28;
  v2 = MEMORY[0x1E69E7CC0];
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v2;
  sub_1AFDFC308();
  return v0;
}

uint64_t sub_1AF983A64(unsigned __int8 *a1)
{
  v101 = a1;
  v123 = 0;
  v114 = sub_1AFDFC3F8();
  v2 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v3);
  v113 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF98552C(0, &qword_1EB640C10, sub_1AF95A7B4, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v119 = &v100 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v100 - v14;
  sub_1AF95A7B4(0);
  v122 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v109 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v105 = &v100 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v118 = &v100 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v111 = &v100 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  MEMORY[0x1EEE9AC00](v31, v32);
  v110 = &v100 - v34;
  v35 = *(v1 + OBJC_IVAR____TtC3VFX9_CodeNode_code + 8);
  v121 = *(v1 + OBJC_IVAR____TtC3VFX9_CodeNode_code);
  v130 = v121;
  v131 = v35;
  v104 = v1;
  v36 = *(v1 + OBJC_IVAR____TtC3VFX9_CodeNode_inputNames);
  v37 = *(v36 + 16);
  v117 = v8;
  v103 = v2;
  v102 = v17;
  if (v37)
  {
    v115 = (v17 + 56);
    v116 = v33;
    v106 = (v2 + 8);
    v112 = (v17 + 8);
    v38 = (v17 + 48);
    v107 = (v17 + 32);
    v120 = v35;

    v100 = v36;
    v39 = (v36 + 40);
    v108 = v17 + 48;
    do
    {
      v47 = *(v39 - 1);
      v46 = *v39;
      v128 = v47;
      v129 = v46;
      v48 = HIBYTE(v46) & 0xF;
      if ((v46 & 0x2000000000000000) == 0)
      {
        v48 = v47 & 0xFFFFFFFFFFFFLL;
      }

      if (v48)
      {
        swift_bridgeObjectRetain_n();
        sub_1AFDFD068();
        sub_1AFDFD1C8();
        v49 = sub_1AFDFCD48();

        if (v49)
        {
          MEMORY[0x1B2718AE0](25180, 0xE200000000000000);
        }

        sub_1AFDFD1C8();
        v50 = sub_1AFDFCD48();

        if (v50)
        {
          v126 = 25180;
          v127 = 0xE200000000000000;
          MEMORY[0x1B2718AE0](v128, v129);

          v128 = v126;
          v129 = v127;
        }
      }

      else
      {
        swift_bridgeObjectRetain_n();
      }

      v51 = v116;
      v52 = v123;
      sub_1AFDFC4A8();
      v123 = v52;
      if (v52)
      {

        v123 = 0;
        v53 = 1;
      }

      else
      {
        v54 = v113;
        sub_1AFDFC3E8();
        v55 = v122;
        sub_1AFDFC458();
        (*v106)(v54, v114);
        (*v112)(v51, v55);
        v53 = 0;
      }

      v56 = v122;
      (*v115)(v15, v53, 1, v122);
      if ((*v38)(v15, 1, v56) == 1)
      {

        sub_1AF985590(v15, &qword_1EB640C10, sub_1AF95A7B4, MEMORY[0x1E69E6720], sub_1AF98552C);
      }

      else
      {
        v40 = v122;
        v41 = v37;
        v42 = v15;
        v43 = v110;
        (*v107)(v110, v42, v122);
        v126 = v121;
        v127 = v120;
        v128 = 37;
        v129 = 0xE100000000000000;

        MEMORY[0x1B2718AE0](v47, v46);

        v124 = v128;
        v125 = v129;
        sub_1AF95A690();
        sub_1AF95A6E4();
        sub_1AF9855F0();
        sub_1AFDFD978();

        v44 = v43;
        v15 = v42;
        v37 = v41;
        v45 = v40;
        v38 = v108;
        (*v112)(v44, v45);

        v120 = v129;
        v121 = v128;
        v130 = v128;
        v131 = v129;
      }

      v39 += 2;
      --v37;
    }

    while (v37);

    v8 = v117;
    v35 = v120;
    v2 = v103;
    v17 = v102;
  }

  else
  {
  }

  v57 = *(*(v104 + OBJC_IVAR____TtC3VFX9_CodeNode_outputNames) + 16);
  if (v57)
  {
    v120 = v35;
    v58 = (v17 + 56);
    v110 = (v2 + 8);
    v116 = (v17 + 8);
    v59 = (v17 + 48);
    v112 = (v17 + 32);

    v60 = (v108 + 40);
    v115 = (v17 + 56);
    do
    {
      v67 = *(v60 - 1);
      v66 = *v60;
      v128 = v67;
      v129 = v66;
      v68 = HIBYTE(v66) & 0xF;
      if ((v66 & 0x2000000000000000) == 0)
      {
        v68 = v67 & 0xFFFFFFFFFFFFLL;
      }

      if (v68)
      {
        swift_bridgeObjectRetain_n();
        sub_1AFDFD068();
        sub_1AFDFD1C8();
        v69 = sub_1AFDFCD48();

        if (v69)
        {
          MEMORY[0x1B2718AE0](25180, 0xE200000000000000);
        }

        sub_1AFDFD1C8();
        v70 = sub_1AFDFCD48();

        if (v70)
        {
          v126 = 25180;
          v127 = 0xE200000000000000;
          MEMORY[0x1B2718AE0](v128, v129);

          v128 = v126;
          v129 = v127;
        }
      }

      else
      {
        swift_bridgeObjectRetain_n();
      }

      v71 = v118;
      v72 = v123;
      sub_1AFDFC4A8();
      v123 = v72;
      if (v72)
      {

        v123 = 0;
        v73 = 1;
        v74 = v119;
      }

      else
      {
        v75 = v113;
        sub_1AFDFC3E8();
        v74 = v119;
        v76 = v122;
        sub_1AFDFC458();
        (*v110)(v75, v114);
        (*v116)(v71, v76);
        v73 = 0;
      }

      v77 = v122;
      (*v58)(v74, v73, 1, v122);
      if ((*v59)(v74, 1, v77) == 1)
      {

        sub_1AF985590(v74, &qword_1EB640C10, sub_1AF95A7B4, MEMORY[0x1E69E6720], sub_1AF98552C);
      }

      else
      {
        v61 = v111;
        v62 = v59;
        v63 = v122;
        (*v112)(v111, v74, v122);
        v126 = v121;
        v127 = v120;
        v128 = 37;
        v129 = 0xE100000000000000;

        MEMORY[0x1B2718AE0](v67, v66);

        v124 = v128;
        v125 = v129;
        sub_1AF95A690();
        sub_1AF95A6E4();
        sub_1AF9855F0();
        sub_1AFDFD978();

        v64 = v61;
        v58 = v115;
        v65 = v63;
        v59 = v62;
        (*v116)(v64, v65);

        v120 = v129;
        v121 = v128;
        v130 = v128;
        v131 = v129;
      }

      v60 += 2;
      --v57;
    }

    while (v57);

    v8 = v117;
    v35 = v120;
    v2 = v103;
    v17 = v102;
  }

  v78 = *v101;
  LODWORD(v120) = 1 << v78;
  v116 = (v17 + 56);
  v111 = (v2 + 8);
  v115 = (v17 + 8);
  v79 = (v17 + 48);
  v112 = (v17 + 32);
  v80 = aAt2;
  v81 = 38;
  v118 = v78;
  do
  {
    if (v78 <= 7 && (v120 & *(v80 - 32)) != 0)
    {
      v85 = *(v80 - 3);
      v84 = *(v80 - 2);
      v86 = *v80;
      v119 = *(v80 - 1);
      v128 = v85;
      v129 = v84;
      v87 = HIBYTE(v84) & 0xF;
      if ((v84 & 0x2000000000000000) == 0)
      {
        v87 = v85 & 0xFFFFFFFFFFFFLL;
      }

      if (v87)
      {
        swift_bridgeObjectRetain_n();

        sub_1AFDFD068();
        sub_1AFDFD1C8();
        v88 = sub_1AFDFCD48();

        if (v88)
        {
          MEMORY[0x1B2718AE0](25180, 0xE200000000000000);
        }

        sub_1AFDFD1C8();

        v89 = sub_1AFDFCD48();

        if (v89)
        {
          v126 = 25180;
          v127 = 0xE200000000000000;
          MEMORY[0x1B2718AE0](v128, v129);

          v128 = v126;
          v129 = v127;
        }

        v8 = v117;
      }

      else
      {
      }

      v90 = v109;
      v91 = v123;
      sub_1AFDFC4A8();
      v123 = v91;
      if (v91)
      {

        v123 = 0;
        v92 = 1;
      }

      else
      {
        v93 = v113;
        sub_1AFDFC3E8();
        v94 = v122;
        sub_1AFDFC458();
        v95 = v93;
        v8 = v117;
        (*v111)(v95, v114);
        (*v115)(v90, v94);
        v92 = 0;
      }

      v96 = v122;
      (*v116)(v8, v92, 1, v122);
      if ((*v79)(v8, 1, v96) == 1)
      {

        sub_1AF985590(v8, &qword_1EB640C10, sub_1AF95A7B4, MEMORY[0x1E69E6720], sub_1AF98552C);
      }

      else
      {
        v82 = v105;
        v83 = v122;
        (*v112)(v105, v8, v122);
        v126 = v121;
        v127 = v35;
        v124 = v119;
        v125 = v86;
        sub_1AF95A690();
        sub_1AF95A6E4();
        sub_1AF9855F0();
        v8 = v117;
        sub_1AFDFD978();
        (*v115)(v82, v83);

        v35 = v129;
        v121 = v128;
        v130 = v128;
        v131 = v129;
      }

      v78 = v118;
    }

    v80 += 40;
    --v81;
  }

  while (v81);
  v97 = sub_1AF985648(v104, v78, &v130);
  v98 = sub_1AFA5413C(v97);

  return v98;
}

uint64_t sub_1AF98495C(unsigned __int8 *a1)
{
  v3 = 0;
  v80 = sub_1AFDFC3F8();
  v4 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80, v5);
  v79 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF98552C(0, &qword_1EB640C10, sub_1AF95A7B4, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v69 - v13;
  sub_1AF95A7B4(0);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v18);
  v77 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v74 = &v69 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v86 = &v69 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v78 = &v69 - v28;
  v29 = *(v1 + OBJC_IVAR____TtC3VFX9_CodeNode_code + 8);
  v87 = *(v1 + OBJC_IVAR____TtC3VFX9_CodeNode_code);
  v73 = v1;
  v30 = *(v1 + OBJC_IVAR____TtC3VFX9_CodeNode_inputNames);
  v31 = *(v30 + 16);
  v83 = v10;
  v88 = v29;
  if (v31)
  {
    v72 = a1;
    v85 = (v17 + 56);
    v71 = v4;
    v75 = (v4 + 8);
    v81 = (v17 + 8);
    v84 = (v17 + 48);
    v70 = v17;
    v76 = (v17 + 32);

    v69 = v30;
    v32 = (v30 + 40);
    v33 = v86;
    do
    {
      v35 = *(v32 - 1);
      v34 = *v32;
      v93 = v35;
      v94 = v34;
      v36 = HIBYTE(v34) & 0xF;
      if ((v34 & 0x2000000000000000) == 0)
      {
        v36 = v35 & 0xFFFFFFFFFFFFLL;
      }

      if (v36)
      {
        swift_bridgeObjectRetain_n();
        sub_1AFDFD068();
        sub_1AFDFD1C8();
        v37 = sub_1AFDFCD48();

        if (v37)
        {
          MEMORY[0x1B2718AE0](25180, 0xE200000000000000);
        }

        sub_1AFDFD1C8();
        v38 = sub_1AFDFCD48();

        if (v38)
        {
          v91 = 25180;
          v92 = 0xE200000000000000;
          MEMORY[0x1B2718AE0](v93, v94);

          v93 = v91;
          v94 = v92;
        }

        v33 = v86;
      }

      else
      {
        swift_bridgeObjectRetain_n();
      }

      sub_1AFDFC4A8();
      if (v3)
      {

        v3 = 0;
        v39 = 1;
      }

      else
      {
        v40 = v79;
        sub_1AFDFC3E8();
        sub_1AFDFC458();
        (*v75)(v40, v80);
        (*v81)(v33, v16);
        v39 = 0;
      }

      (*v85)(v14, v39, 1, v16);
      if ((*v84)(v14, 1, v16) == 1)
      {

        sub_1AF985590(v14, &qword_1EB640C10, sub_1AF95A7B4, MEMORY[0x1E69E6720], sub_1AF98552C);
      }

      else
      {
        v41 = *v76;
        v82 = 0;
        v42 = v31;
        v43 = v14;
        v44 = v16;
        v45 = v78;
        v41(v78, v43, v44);
        v91 = v87;
        v92 = v88;
        v93 = 37;
        v94 = 0xE100000000000000;
        MEMORY[0x1B2718AE0](v35, v34);

        v89 = v93;
        v90 = v94;
        sub_1AF95A690();
        sub_1AF95A6E4();
        sub_1AF9855F0();
        sub_1AFDFD978();
        v33 = v86;

        v46 = v45;
        v16 = v44;
        v14 = v43;
        v31 = v42;
        v3 = v82;
        (*v81)(v46, v16);
        v87 = v93;
        v88 = v94;
      }

      v32 += 2;
      --v31;
    }

    while (v31);

    v10 = v83;
    a1 = v72;
    v4 = v71;
    v17 = v70;
  }

  else
  {
  }

  v47 = *a1;
  LODWORD(v86) = 1 << v47;
  v84 = (v17 + 56);
  v75 = (v4 + 8);
  v76 = v47;
  v81 = (v17 + 8);
  v82 = (v17 + 48);
  v78 = (v17 + 32);
  v48 = aAt2;
  v49 = 38;
  do
  {
    if (v47 <= 7 && (v86 & *(v48 - 32)) != 0)
    {
      v51 = *(v48 - 3);
      v50 = *(v48 - 2);
      v52 = *v48;
      v85 = *(v48 - 1);
      v93 = v51;
      v94 = v50;
      v53 = HIBYTE(v50) & 0xF;
      if ((v50 & 0x2000000000000000) == 0)
      {
        v53 = v51 & 0xFFFFFFFFFFFFLL;
      }

      if (v53)
      {
        swift_bridgeObjectRetain_n();
        v54 = v52;

        sub_1AFDFD068();
        sub_1AFDFD1C8();
        v55 = sub_1AFDFCD48();

        if (v55)
        {
          MEMORY[0x1B2718AE0](25180, 0xE200000000000000);
        }

        sub_1AFDFD1C8();

        v56 = sub_1AFDFCD48();

        if (v56)
        {
          v91 = 25180;
          v92 = 0xE200000000000000;
          MEMORY[0x1B2718AE0](v93, v94);

          v93 = v91;
          v94 = v92;
        }

        v10 = v83;
      }

      else
      {

        v54 = v52;
      }

      v57 = v77;
      sub_1AFDFC4A8();
      if (v3)
      {

        v3 = 0;
        v58 = 1;
      }

      else
      {
        v59 = v79;
        sub_1AFDFC3E8();
        sub_1AFDFC458();
        v60 = v59;
        v10 = v83;
        (*v75)(v60, v80);
        (*v81)(v57, v16);
        v58 = 0;
      }

      (*v84)(v10, v58, 1, v16);
      if ((*v82)(v10, 1, v16) == 1)
      {

        sub_1AF985590(v10, &qword_1EB640C10, sub_1AF95A7B4, MEMORY[0x1E69E6720], sub_1AF98552C);
      }

      else
      {
        v61 = v74;
        (*v78)(v74, v10, v16);
        v91 = v87;
        v92 = v88;
        v89 = v85;
        v90 = v54;
        sub_1AF95A690();
        sub_1AF95A6E4();
        sub_1AF9855F0();
        v10 = v83;
        sub_1AFDFD978();

        v62 = v61;
        v47 = v76;
        (*v81)(v62, v16);

        v87 = v93;
        v88 = v94;
      }
    }

    v48 += 40;
    --v49;
  }

  while (v49);
  v63 = *(*(v73 + 32) + 32);
  sub_1AF448650(*(v73 + 24));
  sub_1AF442064(v63);

  v64 = sub_1AF937FF8(v47, v63);
  if ((~v64 & 0xF000000000000007) == 0)
  {
    sub_1AF442064(v63);
    v64 = v63;
  }

  v65 = sub_1AF94B594(v47, v64);
  v67 = v66;
  sub_1AF445BE4(v64);
  sub_1AF445BE4(v63);
  v93 = v65;
  v94 = v67;
  MEMORY[0x1B2718AE0](0x203D2030722520, 0xE700000000000000);
  MEMORY[0x1B2718AE0](v87, v88);

  MEMORY[0x1B2718AE0](59, 0xE100000000000000);
  return v93;
}

uint64_t sub_1AF9853D8()
{

  sub_1AF919DAC(*(v0 + 24));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1AF98552C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AF985590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_1AF9855F0()
{
  result = qword_1ED722BD8;
  if (!qword_1ED722BD8)
  {
    sub_1AF95A7B4(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED722BD8);
  }

  return result;
}

uint64_t sub_1AF985648(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(*(a1 + OBJC_IVAR____TtC3VFX9_CodeNode_outputTypes) + 16);

  v35 = v4;
  if (v4)
  {
    v6 = 0;
    v34 = v5 + 32;
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      v8 = *(v34 + 8 * v6);
      sub_1AF442064(v8);
      v9 = sub_1AF937FF8(a2, v8);
      if ((~v9 & 0xF000000000000007) == 0)
      {
        sub_1AF442064(v8);
        v9 = v8;
      }

      v10 = sub_1AF94B594(a2, v9);
      v12 = v11;
      sub_1AF445BE4(v9);
      sub_1AF90EDE8(v8, &v36, 0.0);
      v13 = sub_1AF92F69C(v8, &v36, a2);
      v15 = v14;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v36);
      v36 = v10;
      v37 = v12;
      MEMORY[0x1B2718AE0](7480608, 0xE300000000000000);
      v16 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v16);

      MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
      MEMORY[0x1B2718AE0](v13, v15);

      MEMORY[0x1B2718AE0](59, 0xE100000000000000);
      v17 = v36;
      v18 = v37;
      sub_1AF985A10(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AFE431C0;
      *(inited + 32) = v17;
      *(inited + 40) = v18;
      sub_1AF441DD8();
      *(inited + 48) = 0;
      *(inited + 56) = 0;
      v20 = swift_initStackObject();
      *(v20 + 16) = xmmword_1AFE431C0;
      *(v20 + 32) = inited;
      v21 = v20 + 32;
      v22 = sub_1AFA56CA0(v20);
      swift_setDeallocating();
      sub_1AF985590(v21, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AF985A10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1AF426BC8(0, v7[2] + 1, 1, v7);
      }

      v24 = v7[2];
      v23 = v7[3];
      if (v24 >= v23 >> 1)
      {
        v7 = sub_1AF426BC8(v23 > 1, v24 + 1, 1, v7);
      }

      ++v6;
      sub_1AF445BE4(v8);
      v7[2] = v24 + 1;
      v7[v24 + 4] = v22;
    }

    while (v35 != v6);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v25 = sub_1AFA56CA0(v7);

  v26 = sub_1AFA56740(a3);
  v28 = v27;
  sub_1AF985A10(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_1AFE431C0;
  *(v29 + 32) = v26;
  *(v29 + 40) = v28;
  sub_1AF441DD8();
  *(v29 + 48) = 0;
  *(v29 + 56) = 0;
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_1AFE4C620;
  *(v30 + 32) = v25;
  *(v30 + 40) = v29;
  v31 = sub_1AFA56CA0(v30);
  swift_setDeallocating();
  sub_1AF985A10(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v31;
}

void sub_1AF985A10(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AF985A60(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AF985A10(255, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF985AE4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1AF985A10(255, &qword_1EB640C18, &type metadata for AnyType, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1AF985BCC()
{
  v1 = v0;
  (*(*v0 + 312))(v4);
  v2 = OBJC_IVAR____TtC3VFX12ConstantNode_semantic;
  sub_1AF914FF0(v4, v1 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  *(v1 + v2) = xmmword_1AFE22A20;
  v1[2] = MEMORY[0x1E69E7CC0];
  v1[3] = 0;
  v1[4] = 0;
  sub_1AFDFC308();
  sub_1AF9151B0(v4);
  return v1;
}

uint64_t sub_1AF985E24@<X0>(unint64_t *a1@<X8>, float a2@<S0>)
{
  v3[3] = MEMORY[0x1E69E6448];
  *v3 = a2;
  sub_1AF975674(v3, a1);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v3);
}

uint64_t sub_1AF985EA8@<X0>(unint64_t *a1@<X8>)
{
  type metadata accessor for simd_float2x2(0);
  v4[3] = v2;
  v4[0] = 1065353216;
  v4[1] = 0x3F80000000000000;
  sub_1AF975674(v4, a1);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v4);
}

uint64_t sub_1AF985F4C@<X0>(unint64_t *a1@<X8>)
{
  type metadata accessor for simd_float3x3(0);
  v5[3] = v2;
  v3 = swift_allocObject();
  v5[0] = v3;
  v3[1] = xmmword_1AFE20150;
  v3[2] = xmmword_1AFE20160;
  v3[3] = xmmword_1AFE20180;
  sub_1AF975674(v5, a1);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5);
}

uint64_t sub_1AF986014@<X0>(unint64_t *a1@<X8>)
{
  type metadata accessor for simd_float4x4(0);
  v5[3] = v2;
  v3 = swift_allocObject();
  v5[0] = v3;
  v3[1] = xmmword_1AFE20150;
  v3[2] = xmmword_1AFE20160;
  v3[3] = xmmword_1AFE20180;
  v3[4] = xmmword_1AFE201A0;
  sub_1AF975674(v5, a1);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5);
}

uint64_t sub_1AF9860E0@<X0>(unint64_t *a1@<X8>)
{
  type metadata accessor for simd_quatf(0);
  v4[3] = v2;
  v4[0] = swift_allocObject();
  *(v4[0] + 16) = xmmword_1AFE201A0;
  sub_1AF975674(v4, a1);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v4);
}

char *sub_1AF98614C(void *a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC3VFX12ConstantNode_semantic;
  *(v2 + OBJC_IVAR____TtC3VFX12ConstantNode_semantic) = xmmword_1AFE22A20;
  sub_1AF914FF0(a1 + OBJC_IVAR____TtC3VFX12ConstantNode_holder, v2 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  *(v2 + v3) = *(a1 + OBJC_IVAR____TtC3VFX12ConstantNode_semantic);
  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF9861CC()
{

  sub_1AF919DAC(*(v0 + 24));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1AF9151B0(v0 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);

  return swift_deallocClassInstance();
}

void sub_1AF9862F0()
{
  sub_1AFDFE218();

  v0 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v0);

  sub_1AFDFE518();
  __break(1u);
}

BOOL sub_1AF9863CC(unint64_t a1, unint64_t a2)
{
  if (sub_1AF98750C(a1, a2) != 1)
  {
    return 0;
  }

  if (a1 >> 61 != 1)
  {
    if (a1 >> 61 == 6)
    {
      v4 = __ROR8__(a1 + 0x3FFFFFFFFFFFFFD0, 3);
      v5 = v4 > 6 || v4 == 4;
      v6 = a2 >> 61;
      v7 = !v5 && v6 == 1;
      if (v7 && *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) >> 61 != 1)
      {
        return 1;
      }

      if (((a1 + 0x3FFFFFFFFFFFFFD0) & 0xFFFFFFFFFFFFFFE7) == 0)
      {
        if (sub_1AF90F890(a2, 0xC000000000000058) & 1) != 0 || (sub_1AF90F890(a2, 0xC000000000000060))
        {
          return 1;
        }

        if (v6 == 6 && ((a2 + 0x3FFFFFFFFFFFFFD0) & 0xFFFFFFFFFFFFFFE7) == 0)
        {
          sub_1AF90E730(a1);
          v13 = sub_1AF87136C(v12);
          sub_1AF90E730(a2);
          if (v13 < sub_1AF87136C(v14))
          {
            return 1;
          }

          if (((a1 + 0x3FFFFFFFFFFFFFC8) & 0xFFFFFFFFFFFFFFEFLL) != 0)
          {
            return ((a2 + 0x3FFFFFFFFFFFFFC8) & 0xFFFFFFFFFFFFFFEFLL) == 0;
          }
        }
      }
    }

    return 0;
  }

  if (a2 >> 61 != 1)
  {
    return 0;
  }

  v9 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v10 = a2 & 0x1FFFFFFFFFFFFFFFLL;
  v11 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  return (sub_1AF90F890(*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18), *(v10 + 24)) & 1) != 0 && v9 < v11;
}

uint64_t sub_1AF986544()
{
  result = 2125652;
  sub_1AF987298();
  return result;
}

unint64_t sub_1AF986554@<X0>(void *a1@<X8>)
{
  v3 = MEMORY[0x1E69E6F90];
  sub_1AF98790C(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  v5 = swift_allocObject();
  v6 = *(v1 + OBJC_IVAR____TtC3VFX8CastNode_dstType);
  *(v5 + 16) = v6;
  *(v4 + 32) = v5 | 0x8000000000000000;
  sub_1AF98790C(0, &unk_1EB630980, &type metadata for AnyValue, v3);
  v7 = swift_allocObject();
  *(v7 + 64) = MEMORY[0x1E69E6530];
  *(v7 + 16) = xmmword_1AFE431C0;
  *(v7 + 32) = xmmword_1AFE87F70;
  result = sub_1AF442064(v6);
  *a1 = &unk_1F24F2FE8;
  a1[1] = v4;
  v9 = MEMORY[0x1E69E7CC0];
  a1[2] = &unk_1F24F3010;
  a1[3] = v9;
  a1[4] = v9;
  a1[5] = v7;
  return result;
}

uint64_t sub_1AF986674(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  result = sub_1AFDFF388();
  if (!v2)
  {
    sub_1AF448018(v5, v6);
    sub_1AF974884();
    sub_1AFDFEAD8();
    v4 = *(v1 + OBJC_IVAR____TtC3VFX8CastNode_dstType);
    *(v1 + OBJC_IVAR____TtC3VFX8CastNode_dstType) = v7;
    sub_1AF445BE4(v4);
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5);
  }

  return result;
}

uint64_t sub_1AF986744(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = sub_1AF937FF8(a3, a1);
  if ((~v6 & 0xF000000000000007) == 0)
  {
    sub_1AF442064(a1);
    v6 = a1;
  }

  v7 = sub_1AF937FF8(v3, a2);
  if ((~v7 & 0xF000000000000007) == 0)
  {
    sub_1AF442064(a2);
    v7 = a2;
  }

  sub_1AF90F890(v6, v7);
  v8 = v7 >> 61;
  if (!(v7 >> 61))
  {
    v9 = *(v7 + 16);
    sub_1AF442064(v6);
    sub_1AF442064(v7);
    sub_1AF442064(v9);
    v10 = sub_1AF986744(v6, v9, v3);
    sub_1AF445BE4(v9);
    sub_1AF445BE4(v6);
    sub_1AF445BE4(v7);
    sub_1AF445BE4(v7);
    sub_1AF445BE4(v6);
    return v10;
  }

  sub_1AF442064(v6);
  sub_1AF442064(v7);
  if (sub_1AF90F890(v6, v7))
  {
    sub_1AF445BE4(v6);
    sub_1AF445BE4(v7);
    sub_1AF445BE4(v7);
    sub_1AF445BE4(v6);
    return 12325;
  }

  if (sub_1AF90DCC0(v6) & 1) != 0 && (sub_1AF90DCC0(v7))
  {
    goto LABEL_51;
  }

  if (v6 >> 61 == 1)
  {
    if (v8 == 1)
    {
      v12 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) & 0xE000000000000000;
      if (v12 != 0x2000000000000000)
      {
        v13 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        if ((v13 & 0xE000000000000000) != 0x2000000000000000)
        {
          v14 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v54 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          if (v14 >= v54)
          {
            sub_1AF90EDE8(v13, &v58, 0.0);
            v53 = sub_1AF92F69C(v13, &v58, v3);
            v38 = v37;
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v58);
            if (v14)
            {
              v57 = MEMORY[0x1E69E7CC0];
              sub_1AFC05CE4(0, v14 & ~(v14 >> 63), 0);
              v39 = 0;
              do
              {
                if (v39 >= v54)
                {
                  v41 = v38;

                  v42 = v53;
                }

                else
                {
                  v58 = 12325;
                  v59 = 0xE200000000000000;
                  v40 = sub_1AF931868(v6, v39, v3);
                  MEMORY[0x1B2718AE0](v40);

                  v42 = v58;
                  v41 = v59;
                }

                v44 = *(v57 + 16);
                v43 = *(v57 + 24);
                v45 = v44 + 1;
                if (v44 >= v43 >> 1)
                {
                  sub_1AFC05CE4(v43 > 1, v44 + 1, 1);
                  v45 = v44 + 1;
                }

                ++v39;
                *(v57 + 16) = v45;
                v46 = v57 + 16 * v44;
                *(v46 + 32) = v42;
                *(v46 + 40) = v41;
              }

              while (v14 != v39);
            }
          }

          else if (v14)
          {
            v55 = v3;
            v56 = MEMORY[0x1E69E7CC0];
            sub_1AFC05CE4(0, v14 & ~(v14 >> 63), 0);
            v15 = 0;
            do
            {
              v16 = v14;
              v17 = sub_1AF931868(v6, v15, v55);
              v58 = 12325;
              v59 = 0xE200000000000000;
              MEMORY[0x1B2718AE0](v17);

              v19 = *(v56 + 16);
              v18 = *(v56 + 24);
              if (v19 >= v18 >> 1)
              {
                sub_1AFC05CE4(v18 > 1, v19 + 1, 1);
              }

              ++v15;
              *(v56 + 16) = v19 + 1;
              v20 = v56 + 16 * v19;
              *(v20 + 32) = 12325;
              *(v20 + 40) = 0xE200000000000000;
              v14 = v16;
            }

            while (v16 != v15);
            v3 = v55;
          }

          v58 = sub_1AF94B4E8(v3, v7);
          v59 = v47;
          MEMORY[0x1B2718AE0](40, 0xE100000000000000);
          sub_1AF98790C(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
          sub_1AF488088();
          v48 = sub_1AFDFCD98();
          v50 = v49;

          MEMORY[0x1B2718AE0](v48, v50);

          MEMORY[0x1B2718AE0](41, 0xE100000000000000);
          sub_1AF445BE4(v6);
          sub_1AF445BE4(v7);
          sub_1AF445BE4(v6);
          v36 = v7;
          goto LABEL_60;
        }
      }
    }

    else
    {
      v12 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) & 0xE000000000000000;
    }

    if (v12 != 0x2000000000000000 && (sub_1AF90DCC0(v7) & 1) != 0)
    {
      sub_1AF445BE4(v6);
      sub_1AF445BE4(v7);
      v21 = sub_1AF931868(v6, 0, v3);
      v58 = 12325;
      v59 = 0xE200000000000000;
      MEMORY[0x1B2718AE0](v21);

LABEL_59:
      sub_1AF445BE4(v7);
      v36 = v6;
LABEL_60:
      sub_1AF445BE4(v36);
      return v58;
    }
  }

  if (v8 == 1)
  {
    v22 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    if ((sub_1AF90DCC0(v6) & 1) != 0 && *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) >> 61 != 1)
    {
      if (v22)
      {
        v58 = MEMORY[0x1E69E7CC0];
        sub_1AFC05CE4(0, v22 & ~(v22 >> 63), 0);
        v23 = v58;
        v24 = *(v58 + 16);
        v25 = 16 * v24;
        do
        {
          v58 = v23;
          v26 = *(v23 + 24);
          v27 = v24 + 1;
          if (v24 >= v26 >> 1)
          {
            sub_1AFC05CE4(v26 > 1, v24 + 1, 1);
            v23 = v58;
          }

          *(v23 + 16) = v27;
          v28 = v23 + v25;
          *(v28 + 32) = 12325;
          *(v28 + 40) = 0xE200000000000000;
          v25 += 16;
          v24 = v27;
          --v22;
        }

        while (v22);
      }

      sub_1AF98790C(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1AF488088();
      v29 = sub_1AFDFCD98();
      v31 = v30;

      v58 = sub_1AF94B4E8(v3, v7);
      v59 = v32;
      MEMORY[0x1B2718AE0](40, 0xE100000000000000);
      MEMORY[0x1B2718AE0](v29, v31);

      MEMORY[0x1B2718AE0](41, 0xE100000000000000);
      sub_1AF445BE4(v6);
      sub_1AF445BE4(v7);
      goto LABEL_59;
    }
  }

  if (v6 == 0xC000000000000020 && (sub_1AF90F890(0xC000000000000040, v7) & 1) != 0)
  {
    goto LABEL_37;
  }

  if (v8 != 6)
  {
LABEL_47:
    if (((sub_1AF90F890(v6, 0xC000000000000010) & 1) == 0 || (sub_1AF90DCC0(v7) & 1) == 0) && ((sub_1AF90F890(v7, 0xC000000000000010) & 1) == 0 || (sub_1AF90DCC0(v6) & 1) == 0))
    {
      if (v6 >> 61 != 6 || v7 != 0xC0000000000000B8 || (v34 = v6, ((v6 + 0x3FFFFFFFFFFFFFD0) & 0xFFFFFFFFFFFFFFE7) != 0))
      {
        if (v6 != 0xC0000000000000B8 || v8 != 6 || (v34 = v7, ((v7 + 0x3FFFFFFFFFFFFFD0) & 0xFFFFFFFFFFFFFFE7) != 0))
        {
          v58 = 0;
          v59 = 0xE000000000000000;
          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0xD00000000000002CLL, 0x80000001AFF3CF80);
          v51 = sub_1AF90D394(v6);
          MEMORY[0x1B2718AE0](v51);

          MEMORY[0x1B2718AE0](9602786, 0xA300000000000000);
          v52 = sub_1AF90D394(v7);
          MEMORY[0x1B2718AE0](v52);

          MEMORY[0x1B2718AE0](33, 0xE100000000000000);
          goto LABEL_72;
        }
      }

LABEL_58:
      sub_1AF445BE4(v34);
      v58 = sub_1AF94B4E8(v3, v7);
      v59 = v35;
      MEMORY[0x1B2718AE0](691021096, 0xE400000000000000);
      goto LABEL_59;
    }

LABEL_51:
    sub_1AF445BE4(v6);
    v34 = v7;
    goto LABEL_58;
  }

  if (v7 == 0xC000000000000058)
  {
    v33 = 0xC000000000000028;
LABEL_46:
    if (v6 == v33)
    {
      goto LABEL_72;
    }

    goto LABEL_47;
  }

  if (v7 == 0xC000000000000028)
  {
    v33 = 0xC000000000000058;
    goto LABEL_46;
  }

  if (v7 != 0xC000000000000020 || (sub_1AF90F890(0xC000000000000040, v6) & 1) == 0)
  {
    goto LABEL_47;
  }

  v7 = v6;
LABEL_37:
  sub_1AF445BE4(v7);
LABEL_72:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF9870FC(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  v5 = *(v1 + OBJC_IVAR____TtC3VFX8CastNode_dstType);
  sub_1AF448018(v3, v4);
  sub_1AF9748D8();
  sub_1AFDFEC38();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v3);
}

uint64_t sub_1AF9871C8(unsigned __int8 *a1)
{
  v2 = *(*(v1 + 24) + 32);
  v3 = *a1;
  sub_1AF448650(*(v1 + 24));
  sub_1AF442064(v2);

  v4 = *(*(v1 + 32) + 32);
  sub_1AF448650(*(v1 + 24));
  sub_1AF442064(v4);

  v5 = sub_1AF986744(v2, v4, v3);
  sub_1AF445BE4(v2);
  sub_1AF445BE4(v4);
  return v5;
}

uint64_t sub_1AF987280()
{
  result = 0x206F546F747541;
  sub_1AF987298();
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1AF987298()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX8CastNode_dstType);
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
}

char *sub_1AF9873D0(void *a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + OBJC_IVAR____TtC3VFX8CastNode_dstType);
  *(v2 + OBJC_IVAR____TtC3VFX8CastNode_dstType) = v3;
  sub_1AF442064(v3);
  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF987424()
{

  sub_1AF919DAC(*(v0 + 24));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1AF445BE4(*(v0 + OBJC_IVAR____TtC3VFX8CastNode_dstType));

  return swift_deallocClassInstance();
}

uint64_t sub_1AF98750C(unint64_t a1, unint64_t a2)
{
  if (sub_1AF90F890(a1, a2))
  {
    return 1;
  }

  v5 = a2 >> 61;
  if (!(a2 >> 61))
  {
    v6 = *(a2 + 16);
    sub_1AF442064(v6);
    v7 = sub_1AF98750C(a1, v6);
    sub_1AF445BE4(v6);
    return v7;
  }

  v8 = a1 >> 61;
  if (a1 >> 61 == 1)
  {
    goto LABEL_48;
  }

  if (v8 == 6)
  {
    v9 = __ROR8__(a1 + 0x3FFFFFFFFFFFFFD0, 3);
    if (v9 <= 6 && v9 != 4 && v5 == 6)
    {
      v10 = __ROR8__(a2 + 0x3FFFFFFFFFFFFFD0, 3);
      if (v10 < 7 && ((0x6Fu >> v10) & 1) != 0)
      {
        return 1;
      }
    }
  }

  if (v8 == 1)
  {
LABEL_48:
    v11 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    if (v11 >> 61 != 1)
    {
      if (v5 != 1)
      {
        goto LABEL_17;
      }

      if (*((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) >> 61 != 1)
      {
        return 1;
      }

      if (v8 == 1)
      {
LABEL_17:
        if (sub_1AF90DCC0(a2))
        {
          sub_1AF442064(v11);
          v12 = sub_1AF90F890(v11, a2);
          v13 = v11;
LABEL_35:
          sub_1AF445BE4(v13);
          return v12 & 1;
        }
      }
    }
  }

  if ((sub_1AF90DCC0(a1) & 1) != 0 && v5 == 1)
  {
    v14 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    if (v14 >> 61 != 1)
    {
      sub_1AF442064(*((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18));
      v12 = sub_1AF90F890(a1, v14);
      v13 = v14;
      goto LABEL_35;
    }
  }

  if (a1 == 0xC000000000000020 && (sub_1AF90F890(0xC000000000000040, a2) & 1) != 0 || a2 == 0xC000000000000020 && (sub_1AF90F890(0xC000000000000040, a1) & 1) != 0 || (sub_1AF90F890(a1, 0xC000000000000010) & 1) != 0 && (sub_1AF90DCC0(a2) & 1) != 0 || (sub_1AF90F890(a2, 0xC000000000000010) & 1) != 0 && (sub_1AF90DCC0(a1) & 1) != 0)
  {
    return 0;
  }

  if (a2 == 0xC0000000000000B8 && v8 == 6)
  {
    if (((a1 + 0x3FFFFFFFFFFFFFD0) & 0xFFFFFFFFFFFFFFE7) == 0)
    {
      return 0;
    }
  }

  else if (v8 != 6)
  {
    goto LABEL_43;
  }

  if (a1 == 0xC000000000000028)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1AFE4C440;
    v16 = sub_1AF90F890(v15 | 0x2000000000000000, a2);

    if ((v16 & 1) == 0)
    {
      goto LABEL_43;
    }

    return 1;
  }

  if (a1 == 0xC0000000000000B8 && v5 == 6 && ((a2 + 0x3FFFFFFFFFFFFFD0) & 0xFFFFFFFFFFFFFFE7) == 0)
  {
    return 0;
  }

LABEL_43:
  if (a2 == 0xC000000000000028)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1AFE4C440;
    v18 = sub_1AF90F890(v17 | 0x2000000000000000, a1);

    if (v18)
    {
      return 1;
    }
  }

  return 2;
}

unint64_t sub_1AF987824(unint64_t a1, unint64_t a2)
{
  if (a2 >> 61 == 4)
  {
    v3 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    sub_1AF442064(v3);
    if (sub_1AF98750C(a1, v3) != 1)
    {
      sub_1AF445BE4(v3);
      return 0xF000000000000007;
    }
  }

  else
  {
    if (a1 >> 61 != 6)
    {
      return 0xF000000000000007;
    }

    v4 = __ROR8__(a1 + 0x3FFFFFFFFFFFFFD0, 3);
    if (v4 > 6 || v4 == 4)
    {
      return 0xF000000000000007;
    }

    v3 = 0xC000000000000058;
    if ((sub_1AF90F890(a1, 0xC000000000000058) & 1) != 0 || (sub_1AF9C4C80(0xC000000000000058, a2) & 1) == 0 || sub_1AF98750C(a1, 0xC000000000000058) == 2)
    {
      return 0xF000000000000007;
    }
  }

  return v3;
}

void sub_1AF98790C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void *sub_1AF987964()
{
  v0 = swift_allocObject();
  v1 = v0 + OBJC_IVAR____TtC3VFX20ColorRampTextureNode_colorRamp;
  sub_1AF43A038();
  v2 = swift_allocObject();
  __asm { FMOV            V1.4S, #1.0 }

  v2[1] = xmmword_1AFE4C620;
  v2[2] = _Q1;
  v2[3] = xmmword_1AFE201A0;
  *v1 = v2;
  *(v1 + 1) = &unk_1F24EDC70;
  v1[16] = 1;
  *(v0 + OBJC_IVAR____TtC3VFX14ECSStorageNode_entity) = 0xFFFFFFFFLL;
  v0[2] = MEMORY[0x1E69E7CC0];
  v0[3] = 0;
  v0[4] = 0;
  sub_1AFDFC308();
  return v0;
}

void *sub_1AF987A1C()
{
  v0 = swift_allocObject();
  v1 = v0 + OBJC_IVAR____TtC3VFX16CurveTextureNode_curve;
  *v1 = sub_1AF9D3914(&unk_1F24FFCA0);
  *(v1 + 1) = v2;
  *(v1 + 2) = 0;
  v1[24] = 1;
  *(v0 + OBJC_IVAR____TtC3VFX14ECSStorageNode_entity) = 0xFFFFFFFFLL;
  v0[2] = MEMORY[0x1E69E7CC0];
  v0[3] = 0;
  v0[4] = 0;
  sub_1AFDFC308();
  return v0;
}

void sub_1AF987AAC()
{
  sub_1AFDFE218();

  v0 = sub_1AF9703D8();
  MEMORY[0x1B2718AE0](v0);

  sub_1AFDFE518();
  __break(1u);
}

uint64_t sub_1AF987C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *(a1 + 8);
  v8 = **(v7 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw);
  v9 = swift_conformsToProtocol2();
  if (v9)
  {
    v10 = *(v9 + 8);
    v11 = v9;

    v10(a2, a3, v8, v11);
  }

  *a4 = v7;
}

unint64_t sub_1AF987D30(unsigned __int8 *a1)
{
  if (*a1 >= 3u)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD00000000000002DLL;
  }
}

uint64_t sub_1AF987DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1AF98F688(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = a1;
  *(v6 + 32) = result | 0x8000000000000000;
  v8 = MEMORY[0x1E69E7CC0];
  *a3 = MEMORY[0x1E69E7CC0];
  a3[1] = v6;
  a3[2] = a2;
  a3[3] = v8;
  a3[4] = v8;
  a3[5] = v8;
  return result;
}

unint64_t sub_1AF987E70(unsigned __int8 *a1)
{
  if (*a1 >= 3u)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD00000000000002CLL;
  }
}

uint64_t sub_1AF98800C()
{
  v1 = *v0;
  v2 = 1852399981;
  v3 = 0x7265646E6572;
  if (v1 != 6)
  {
    v3 = 0x72656767697274;
  }

  v4 = 0x657461647075;
  if (v1 != 4)
  {
    v4 = 0x656C636974726170;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x696C616974696E69;
  if (v1 != 2)
  {
    v5 = 0x656C636974726170;
  }

  if (*v0)
  {
    v2 = 0x6E77617073;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AF988294()
{

  v0 = sub_1AF98EF40();
  v2 = v1;

  type metadata accessor for GetAnyECSValueNode(0);
  if (swift_dynamicCastClass())
  {
    v3 = 0x20BA80E220746547;
  }

  else
  {
    v3 = 0x20BA80E220746553;
  }

  MEMORY[0x1B2718AE0](v3, 0xA800000000000000);

  if (v2)
  {

    MEMORY[0x1B2718AE0](0x20BA80E220, 0xA500000000000000);
    MEMORY[0x1B2718AE0](v0, v2);
  }

  sub_1AF4486E4();
  v4 = sub_1AFDFDEB8();
  v6 = v5;

  MEMORY[0x1B2718AE0](v4, v6);

  return 0;
}

uint64_t sub_1AF988438()
{
  strcpy(v7, "ecs:dynamic:");
  BYTE5(v7[1]) = 0;
  HIWORD(v7[1]) = -5120;
  v1 = *(v0 + OBJC_IVAR____TtC3VFX16_AnyECSValueNode_scriptKeyPath);
  v2 = *(v0 + OBJC_IVAR____TtC3VFX16_AnyECSValueNode_scriptKeyPath + 8);

  sub_1AFDFDFD8();
  v5 = sub_1AFDFF4B8();
  v6 = v3;
  MEMORY[0x1B2718AE0](46, 0xE100000000000000);
  MEMORY[0x1B2718AE0](v1, v2);

  MEMORY[0x1B2718AE0](v5, v6);

  return v7[0];
}

uint64_t sub_1AF98857C(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  result = sub_1AFDFF398();
  if (!v2)
  {
    sub_1AF441150(v11, v11[3]);
    sub_1AF64896C();
    sub_1AFDFEE88();
    v4 = v1 + OBJC_IVAR____TtC3VFX16_AnyECSValueNode_scriptKeyPath;
    *v4 = v5;
    *(v4 + 8) = v6;
    *(v4 + 24) = v7;
    *(v4 + 32) = v8;
    *(v4 + 40) = v9;
    *(v4 + 42) = v10;

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v11);
  }

  return result;
}

uint64_t sub_1AF9886F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = 0xC000000000000020;
  sub_1AF98F688(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC0000000000000A0;
  *(v4 + 32) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  v7 = *(v1 + OBJC_IVAR____TtC3VFX16_AnyECSValueNode_scriptKeyPath + 24);
  if (swift_conformsToProtocol2())
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = sub_1AF90DEFC(v7);
    if ((~v9 & 0xF000000000000007) != 0)
    {
      v3 = v9;
    }

    else
    {
      v3 = 0xC000000000000000;
    }
  }

  result = swift_allocObject();
  *(result + 16) = v3;
  *(v6 + 32) = result | 0x8000000000000000;
  *a1 = v4;
  a1[1] = v6;
  v11 = MEMORY[0x1E69E7CC0];
  a1[2] = &unk_1F24F0960;
  a1[3] = v11;
  a1[4] = v11;
  a1[5] = v11;
  return result;
}

uint64_t sub_1AF988888@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF98F688(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C680;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000008;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC0000000000000A0;
  *(v3 + 40) = v5 | 0x8000000000000000;
  v6 = *(v1 + OBJC_IVAR____TtC3VFX16_AnyECSValueNode_scriptKeyPath + 24);
  if (swift_conformsToProtocol2())
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = sub_1AF90DEFC(v6);
    if ((~v8 & 0xF000000000000007) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xC000000000000000;
    }
  }

  else
  {
    v9 = 0xC000000000000020;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v3 + 48) = v10 | 0x8000000000000000;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  *(v11 + 32) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v11;
  v13 = MEMORY[0x1E69E7CC0];
  a1[2] = &unk_1F24F0CA0;
  a1[3] = v13;
  a1[4] = v13;
  a1[5] = v13;
  return result;
}

uint64_t sub_1AF988A34(unsigned __int8 *a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = *(v4 + OBJC_IVAR____TtC3VFX16_AnyECSValueNode_scriptKeyPath + 28);
  v9 = *(v4 + OBJC_IVAR____TtC3VFX16_AnyECSValueNode_scriptKeyPath + 16);
  v18 = *(v4 + OBJC_IVAR____TtC3VFX16_AnyECSValueNode_scriptKeyPath);
  v19[0] = v9;
  *(v19 + 12) = v8;
  v10 = *a1;
  v20 = v18;
  v11 = *(&v19[0] + 1);
  if (swift_conformsToProtocol2() && *(&v19[0] + 1))
  {
    sub_1AF450FE0(&v20, v17);

    v12 = 0xC000000000000020;
  }

  else
  {
    sub_1AF450FE0(&v20, v17);

    v13 = sub_1AF90DEFC(v11);
    if ((~v13 & 0xF000000000000007) != 0)
    {
      v12 = v13;
    }

    else
    {
      v12 = 0xC000000000000000;
    }
  }

  v14 = sub_1AF9BF064(a2, a3, v10, &v18, 1, v12, a4);
  v15 = sub_1AFA5413C(v14);

  sub_1AF445BE4(v12);
  sub_1AF585778(&v20);

  return v15;
}

unint64_t sub_1AF988BC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 32);
  if (swift_conformsToProtocol2())
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    result = sub_1AF90DEFC(v1);
    if ((~result & 0xF000000000000007) != 0)
    {
      return result;
    }

    sub_1AFDFE218();
    sub_1AFDFF4B8();

    MEMORY[0x1B2718AE0](0xD000000000000023, 0x80000001AFF3D880);
    sub_1AFDFE518();
    __break(1u);
  }

  return 0xC000000000000020;
}

uint64_t sub_1AF988CD4()
{
  sub_1AFDFE218();

  v1 = v0 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath;
  v2 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v2);

  MEMORY[0x1B2718AE0](58, 0xE100000000000000);
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);

  sub_1AFDFDFD8();
  v7 = sub_1AFDFF4B8();
  v8 = v5;
  MEMORY[0x1B2718AE0](46, 0xE100000000000000);
  MEMORY[0x1B2718AE0](v3, v4);

  MEMORY[0x1B2718AE0](v7, v8);

  return 0x746174733A736365;
}

uint64_t sub_1AF988E14()
{

  v1 = sub_1AF98EF40();
  v3 = v2;

  v4 = *v0;
  if (*v0 == _TtC3VFX24InspectorSetECSValueNode)
  {
    MEMORY[0x1B2718AE0](0x6F74636570736E49, 0xE900000000000072);
  }

  if (v4 == _TtC3VFX15GetECSValueNode)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0x20BA80E220746553;
  }

  if (v4 == _TtC3VFX15GetECSValueNode)
  {
    v6 = 0xE000000000000000;
  }

  else
  {
    v6 = 0xA800000000000000;
  }

  MEMORY[0x1B2718AE0](v5, v6);

  MEMORY[0x1B2718AE0](63, 0xE100000000000000);
  MEMORY[0x1B2718AE0](0x20BA80E220, 0xA500000000000000);
  if (v3)
  {

    MEMORY[0x1B2718AE0](0x20BA80E220, 0xA500000000000000);
    MEMORY[0x1B2718AE0](v1, v3);
  }

  sub_1AF4486E4();
  v7 = sub_1AFDFDEB8();
  v9 = v8;

  MEMORY[0x1B2718AE0](v7, v9);

  return 0;
}

uint64_t sub_1AF989028(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = (v2 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath);
  v6 = *(v2 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath);
  sub_1AF62BFF0(v6, 0, ObjectType, a2);
  v7 = *v5;
  v8 = v5[2];
  v18 = v5[1];
  v19 = v8;
  v20 = *(v5 + 12);
  v9 = *v5;
  v17 = v7;
  v10 = *(&v7 + 1);
  v11 = v19;
  v12 = HIWORD(v20);
  v13 = v20 & 1;
  v14 = v5[2];
  v22 = *(v5 + 12);
  v21[1] = v18;
  v21[2] = v14;
  v21[0] = v9;
  *v5 = v6;
  *(v5 + 1) = v10;
  v5[1] = v18;
  v5[2] = v11;
  *(v5 + 48) = v13;
  *(v5 + 25) = v12;
  sub_1AF98F5BC(&v17, &v16);
  return sub_1AF98F72C(v21);
}

uint64_t sub_1AF9890F8()
{
  v1 = v0;
  sub_1AF98F688(0, &qword_1ED722F30, &type metadata for ScriptParameter, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  v3 = v0 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath;
  v4 = *(v0 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath);
  v6 = *(v0 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 8);
  v5 = *(v0 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 16);
  v19 = *(v3 + 24);
  v7 = *(v3 + 5);
  v8 = v3[48];
  v9 = *(v3 + 25);
  LOBYTE(v10) = 1;
  if (*v1 != _TtC3VFX15GetECSValueNode)
  {
    v11 = *v1;
    type metadata accessor for PartialComposeNode(0);
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = *(v12 + 16);
      v10 = *(v13 + 16);
      if (v10)
      {
        v14 = v13 + 32;
        type metadata accessor for NilNode(0);
        while (swift_dynamicCastClass())
        {
          v14 += 16;
          if (!--v10)
          {
            goto LABEL_17;
          }
        }

        if (v11 == _TtC3VFX24InspectorSetECSValueNode)
        {
          LOBYTE(v10) = 7;
        }

        else
        {
          LOBYTE(v10) = 3;
        }
      }
    }

    else
    {
      type metadata accessor for NilNode(0);
      v15 = swift_dynamicCastClass();
      if (v11 == _TtC3VFX24InspectorSetECSValueNode)
      {
        v16 = 6;
      }

      else
      {
        v16 = 3;
      }

      if (v15)
      {
        LOBYTE(v10) = 0;
      }

      else
      {
        LOBYTE(v10) = v16;
      }
    }
  }

LABEL_17:
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = v6;
  *(v17 + 32) = v5;
  *(v17 + 40) = v19;
  *(v17 + 56) = v7;
  *(v17 + 64) = v8;
  *(v17 + 66) = v9;
  *(v2 + 32) = v17 | 0x2000000000000000;
  *(v2 + 40) = v10;
  *(v2 + 48) = xmmword_1AFE4C460;
  *(v2 + 64) = 1;

  return v2;
}

uint64_t sub_1AF989308(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  v2 = *(v1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 16);
  v14[0] = *(v1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath);
  v14[1] = v2;
  v4 = *(v1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath);
  v3 = *(v1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 16);
  v14[2] = *(v1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 32);
  v15 = *(v1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 48);
  v8 = v4;
  v9 = v3;
  v10 = *(v1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 32);
  v11 = *(v1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 48);
  sub_1AF448018(v12, v13);
  sub_1AF98F5BC(v14, v6);
  sub_1AF98F780();
  sub_1AFDFEF28();
  v6[0] = v8;
  v6[1] = v9;
  v6[2] = v10;
  v7 = v11;
  sub_1AF98F72C(v6);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v12);
}

uint64_t sub_1AF989414(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  result = sub_1AFDFF398();
  if (!v2)
  {
    sub_1AF441150(v13, v13[3]);
    sub_1AF98F6D8();
    sub_1AFDFEE88();
    v4 = v1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath;
    v5 = *(v1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 16);
    v7[0] = *(v1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath);
    v7[1] = v5;
    v7[2] = *(v1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 32);
    v8 = *(v1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 48);
    v6 = v10;
    *v4 = v9;
    *(v4 + 16) = v6;
    *(v4 + 32) = v11;
    *(v4 + 48) = v12;
    sub_1AF98F72C(v7);
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v13);
  }

  return result;
}

uint64_t sub_1AF989540()
{
}

uint64_t sub_1AF9895F4@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF98F688(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C620;
  v3 = swift_allocObject();
  *(v3 + 16) = 0xC000000000000008;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1AF988BC4();
  *(v2 + 40) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  *(v5 + 32) = result | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  a1[2] = &unk_1F24EFA00;
  a1[3] = v7;
  a1[4] = v7;
  a1[5] = v7;
  return result;
}

double sub_1AF989758@<D0>(uint64_t a1@<X8>)
{
  sub_1AF9895F4(v7);
  sub_1AF98F688(0, &unk_1EB630980, &type metadata for AnyValue, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E6530];
  *(v2 + 64) = MEMORY[0x1E69E6530];
  *(v2 + 16) = xmmword_1AFE4C620;
  *(v2 + 32) = xmmword_1AFE87F70;
  *(v2 + 104) = v3;
  *(v2 + 72) = xmmword_1AFE87F70;
  v4 = v8;
  v10 = v9;
  sub_1AF98F618(&v10, &qword_1EB638978, &type metadata for AnyValue);
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  *(a1 + 40) = v2;
  return result;
}

unint64_t sub_1AF989848@<X0>(void *a1@<X8>)
{
  sub_1AF98F688(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  v3 = swift_allocObject();
  result = sub_1AF988BC4();
  *(v3 + 16) = result;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v5 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  a1[2] = &unk_1F24EF460;
  a1[3] = v5;
  a1[4] = v5;
  a1[5] = v5;
  return result;
}

char *sub_1AF989900(void *a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 16);
  v9[0] = *(a1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath);
  v9[1] = v3;
  v10 = *(a1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 32);
  v4 = v10;
  v11 = *(a1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 48);
  v5 = v11;
  v6 = v2 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath;
  *v6 = v9[0];
  *(v6 + 16) = v3;
  *(v6 + 32) = v4;
  *(v6 + 48) = v5;
  sub_1AF98F5BC(v9, v8);
  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF989988()
{

  sub_1AF919DAC(*(v0 + 24));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF989A7C()
{
  v1 = *v0;
  v2 = sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (result)
  {
    (*(result + 16))(v2, result);
    if (v1 == _TtC3VFX29InspectorSetParticleValueNode)
    {
      MEMORY[0x1B2718AE0](0x6F74636570736E49, 0xE900000000000072);
    }

    if (v1 == _TtC3VFX20GetParticleValueNode)
    {
      v4 = 0;
    }

    else
    {
      v4 = 0x20BA80E220746553;
    }

    if (v1 == _TtC3VFX20GetParticleValueNode)
    {
      v5 = 0xE000000000000000;
    }

    else
    {
      v5 = 0xA800000000000000;
    }

    if (v1 == _TtC3VFX27GetParticleValueAtIndexNode)
    {
      v6 = 0x20BA80E220746547;
    }

    else
    {
      v6 = v4;
    }

    if (v1 == _TtC3VFX27GetParticleValueAtIndexNode)
    {
      v7 = 0xA800000000000000;
    }

    else
    {
      v7 = v5;
    }

    MEMORY[0x1B2718AE0](v6, v7);

    MEMORY[0x1B2718AE0](0x656C636974726150, 0xE800000000000000);
    MEMORY[0x1B2718AE0](0x20BA80E220, 0xA500000000000000);
    sub_1AF4486E4();
    v8 = sub_1AFDFDEB8();
    v10 = v9;

    MEMORY[0x1B2718AE0](v8, v10);

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF989CE4(void *a1, void (*a2)(void *__return_ptr, uint64_t, uint64_t), void *a3, void (*a4)(uint64_t *, ValueMetadata *, unint64_t, uint64_t, uint64_t))
{
  v8 = a1[3];
  v9 = a1[4];
  sub_1AF441150(a1, v8);
  a2(v25, v8, v9);
  v10 = (v4 + *a3);
  v11 = v10[3];
  v12 = v10[4];
  v13 = *(v10 + 40);
  v14 = *(v10 + 21);
  v19 = *v10;
  v20 = *(v10 + 1);
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v15 = v26;
  v16 = v27;
  sub_1AF448018(v25, v26);
  v17 = sub_1AF6489C0();
  a4(&v19, &type metadata for ScriptKeyPath, v17, v15, v16);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v25);
}

uint64_t sub_1AF989DD4(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  result = sub_1AFDFF388();
  if (!v2)
  {
    sub_1AF448018(v11, v12);
    sub_1AF64896C();
    sub_1AFDFEAD8();
    v4 = v1 + OBJC_IVAR____TtC3VFX18_ParticleValueNode_keyPath;
    *v4 = v5;
    *(v4 + 8) = v6;
    *(v4 + 24) = v7;
    *(v4 + 32) = v8;
    *(v4 + 40) = v9;
    *(v4 + 42) = v10;

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v11);
  }

  return result;
}

uint64_t sub_1AF989ED0()
{
  v1 = (v0 + OBJC_IVAR____TtC3VFX18_ParticleValueNode_keyPath);
  v2 = sub_1AFDFDFD8();
  v3 = swift_conformsToProtocol2();
  sub_1AF98F688(0, &qword_1ED722F30, &type metadata for ScriptParameter, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  v6 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v16 = *(v1 + 40);
  v10 = *(v1 + 21);
  if (v3)
  {
    v11 = v2 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    type metadata accessor for SetParticleValueNode(0);
    if (swift_dynamicCastClass())
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    v12 = swift_allocObject();
    *(v12 + 16) = v6;
    *(v12 + 24) = v5;
    *(v12 + 32) = v7;
    *(v12 + 40) = v8;
    *(v12 + 48) = v9;
    *(v12 + 56) = v16;
    *(v12 + 58) = v10;
    v14 = 0x5000000000000000;
    *(v12 + 60) = 5;
  }

  else
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v6;
    *(v12 + 24) = v5;
    *(v12 + 32) = v7;
    *(v12 + 40) = v8;
    *(v12 + 48) = v9;
    *(v12 + 56) = v16;
    v13 = 1;
    v14 = 0x5000000000000004;
    *(v12 + 58) = v10;
  }

  *(v4 + 32) = v14 | v12;
  *(v4 + 40) = v13;
  *(v4 + 48) = xmmword_1AFE4C460;
  *(v4 + 64) = 1;

  return v4;
}

uint64_t sub_1AF98A0E0()
{
}

uint64_t sub_1AF98A208@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1AF90DEFC(*(v1 + OBJC_IVAR____TtC3VFX18_ParticleValueNode_keyPath + 24));
  if ((~v4 & 0xF000000000000007) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0xC000000000000000;
  }

  if (v3 != _TtC3VFX29InspectorSetParticleValueNode)
  {
    v9 = 0;
    v11 = 0;
    goto LABEL_8;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v9 = (*(result + 16))(v7, result);
    v11 = v10;
    v5 = v6;
LABEL_8:
    v12 = MEMORY[0x1E69E6F90];
    sub_1AF98F688(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1AFE4C620;
    v14 = swift_allocObject();
    *(v14 + 16) = 0xC000000000000008;
    *(v13 + 32) = v14 | 0x8000000000000000;
    v15 = swift_allocObject();
    *(v15 + 16) = v5;
    *(v13 + 40) = v15 | 0x8000000000000000;
    sub_1AF98F688(0, &unk_1EB630980, &type metadata for AnyValue, v12);
    v16 = swift_allocObject();
    v17 = MEMORY[0x1E69E6530];
    *(v16 + 64) = MEMORY[0x1E69E6530];
    *(v16 + 16) = xmmword_1AFE4C620;
    *(v16 + 32) = xmmword_1AFE87170;
    *(v16 + 104) = v17;
    *(v16 + 72) = xmmword_1AFE87170;
    sub_1AF98F514(0, &qword_1EB630968, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1AFE4C620;
    *(v18 + 32) = 0;
    *(v18 + 40) = 0;
    *(v18 + 48) = v9;
    *(v18 + 56) = v11;
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1AFE431C0;
    result = swift_allocObject();
    *(result + 16) = 0xC000000000000008;
    *(v19 + 32) = result | 0x8000000000000000;
    *a1 = v13;
    a1[1] = v19;
    a1[2] = &unk_1F24F13E8;
    a1[3] = v18;
    a1[4] = MEMORY[0x1E69E7CC0];
    a1[5] = v16;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AF98A50C()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX29InspectorSetParticleValueNode_stage);
  if (v1 <= 3)
  {
    if (*(v0 + OBJC_IVAR____TtC3VFX29InspectorSetParticleValueNode_stage) <= 1u)
    {
      if (*(v0 + OBJC_IVAR____TtC3VFX29InspectorSetParticleValueNode_stage))
      {
        v2 = 0xE500000000000000;
        v3 = 0x6E77617073;
      }

      else
      {
        v2 = 0xE400000000000000;
        v3 = 1852399981;
      }

      goto LABEL_17;
    }

    if (v1 == 2)
    {
      v2 = 0xEA0000000000657ALL;
      v3 = 0x696C616974696E69;
      goto LABEL_17;
    }

    v2 = 0xEC00000074696E49;
LABEL_15:
    v3 = 0x656C636974726170;
    goto LABEL_17;
  }

  if (*(v0 + OBJC_IVAR____TtC3VFX29InspectorSetParticleValueNode_stage) <= 5u)
  {
    if (v1 == 4)
    {
      v2 = 0xE600000000000000;
      v3 = 0x657461647075;
      goto LABEL_17;
    }

    v2 = 0xEE00657461647055;
    goto LABEL_15;
  }

  if (v1 == 6)
  {
    v2 = 0xE600000000000000;
    v3 = 0x7265646E6572;
  }

  else
  {
    v2 = 0xE700000000000000;
    v3 = 0x72656767697274;
  }

LABEL_17:
  MEMORY[0x1B2718AE0](v3, v2);

  return 0;
}

char *sub_1AF98A640(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + OBJC_IVAR____TtC3VFX29InspectorSetParticleValueNode_stage) = *(a1 + OBJC_IVAR____TtC3VFX29InspectorSetParticleValueNode_stage);
  v3 = a1 + OBJC_IVAR____TtC3VFX18_ParticleValueNode_keyPath;
  v4 = *(a1 + OBJC_IVAR____TtC3VFX18_ParticleValueNode_keyPath + 8);
  v5 = *(a1 + OBJC_IVAR____TtC3VFX18_ParticleValueNode_keyPath + 32);
  v6 = *(a1 + OBJC_IVAR____TtC3VFX18_ParticleValueNode_keyPath + 40);
  v7 = *(a1 + OBJC_IVAR____TtC3VFX18_ParticleValueNode_keyPath + 42);
  v8 = v2 + OBJC_IVAR____TtC3VFX18_ParticleValueNode_keyPath;
  *v8 = *(a1 + OBJC_IVAR____TtC3VFX18_ParticleValueNode_keyPath);
  *(v8 + 8) = v4;
  *(v8 + 16) = *(v3 + 1);
  *(v8 + 32) = v5;
  *(v8 + 40) = v6;
  *(v8 + 42) = v7;

  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF98A6E0(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v3, v4);
  sub_1AF6489C0();
  sub_1AFDFEC38();
  if (!v1)
  {
    sub_1AF448018(v3, v4);
    sub_1AF9815CC();
    sub_1AFDFEC38();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v3);
}

uint64_t sub_1AF98A808(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  result = sub_1AFDFF388();
  if (!v2)
  {
    sub_1AF448018(v11, v12);
    sub_1AF64896C();
    sub_1AFDFEAD8();
    v4 = v1 + OBJC_IVAR____TtC3VFX18_ParticleValueNode_keyPath;
    *v4 = v5;
    *(v4 + 8) = v6;
    *(v4 + 24) = v7;
    *(v4 + 32) = v8;
    *(v4 + 40) = v9;
    *(v4 + 42) = v10;

    sub_1AF448018(v11, v12);
    sub_1AF9825F4();
    sub_1AFDFEAD8();
    *(v1 + OBJC_IVAR____TtC3VFX29InspectorSetParticleValueNode_stage) = v5;
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v11);
  }

  return result;
}

uint64_t sub_1AF98A9D0@<X0>(void *a1@<X8>)
{
  sub_1AF98F688(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  v4 = sub_1AF90DEFC(*(v1 + OBJC_IVAR____TtC3VFX18_ParticleValueNode_keyPath + 24));
  if ((~v4 & 0xF000000000000007) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0xC000000000000000;
  }

  result = swift_allocObject();
  *(result + 16) = v5;
  *(v3 + 32) = result | 0x8000000000000000;
  v7 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v3;
  a1[2] = &unk_1F24F1150;
  a1[3] = v7;
  a1[4] = v7;
  a1[5] = v7;
  return result;
}

uint64_t sub_1AF98AAC8@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF98F688(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  *(v2 + 32) = result | 0x8000000000000000;
  v4 = MEMORY[0x1E69E7CC0];
  *a1 = v2;
  a1[1] = v4;
  a1[2] = &unk_1F24F2ED8;
  a1[3] = v4;
  a1[4] = v4;
  a1[5] = v4;
  return result;
}

uint64_t sub_1AF98AC24()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX19OnParticleStageNode_stage);
  if (v1 == 3)
  {
    return 0x6369747261506E4FLL;
  }

  if (v1 == 5)
  {
    return 0xD000000000000010;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF98AD98(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AF9815CC();
  return sub_1AF974C50();
}

uint64_t sub_1AF98AE10(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AF9825F4();
  result = sub_1AF974940();
  if (!v2)
  {
    *(v1 + OBJC_IVAR____TtC3VFX19OnParticleStageNode_stage) = v4;
  }

  return result;
}

uint64_t sub_1AF98AE94(uint64_t a1)
{
  v2 = sub_1AF98F964();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF98AED0(uint64_t a1)
{
  v2 = sub_1AF98F964();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF98AF0C(void *a1)
{
  sub_1AF98F8FC(0, &qword_1EB640DB0, sub_1AF98F964, &type metadata for GraphSideStorage.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AF98F964();
  sub_1AFDFF3F8();
  return (*(v4 + 8))(v7, v3);
}

void *sub_1AF98B04C()
{
  v0 = swift_allocObject();
  *(v0 + OBJC_IVAR____TtC3VFX14ECSStorageNode_entity) = 0xFFFFFFFFLL;
  v1 = MEMORY[0x1E69E7CC0];
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v1;
  sub_1AFDFC308();
  return v0;
}

uint64_t sub_1AF98B0B4()
{
  v0 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v0);

  return 0x3A656761726F7473;
}

uint64_t sub_1AF98B164(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC3VFX14ECSStorageNode_entity;
  result = *(v3 + OBJC_IVAR____TtC3VFX14ECSStorageNode_entity);
  sub_1AF62BFF0(result, 1, ObjectType, a2);
  *(v3 + v6) = result;
  return result;
}

char *sub_1AF98B2AC(void *a1)
{
  v2 = swift_allocObject();
  v3 = v2 + OBJC_IVAR____TtC3VFX16CurveTextureNode_curve;
  sub_1AF9D3914(&unk_1F24F3838);
  v4 = *(a1 + OBJC_IVAR____TtC3VFX16CurveTextureNode_curve + 8);
  v5 = *(a1 + OBJC_IVAR____TtC3VFX16CurveTextureNode_curve + 16);
  v6 = *(a1 + OBJC_IVAR____TtC3VFX16CurveTextureNode_curve + 24);
  *v3 = *(a1 + OBJC_IVAR____TtC3VFX16CurveTextureNode_curve);
  *(v3 + 8) = v4;
  *(v3 + 16) = v5;
  *(v3 + 24) = v6;

  *(v2 + OBJC_IVAR____TtC3VFX14ECSStorageNode_entity) = *(a1 + OBJC_IVAR____TtC3VFX14ECSStorageNode_entity);
  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF98B378()
{
}

uint64_t sub_1AF98B3C8()
{

  sub_1AF919DAC(*(v0 + 24));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF98B4DC(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AF8C0110();
  sub_1AF8C021C(&qword_1EB63F018);
  return sub_1AF974C50();
}

uint64_t sub_1AF98B594(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AF8C0110();
  sub_1AF8C021C(qword_1ED724010);
  result = sub_1AF974940();
  if (!v2)
  {
    v4 = v1 + OBJC_IVAR____TtC3VFX16CurveTextureNode_curve;
    *v4 = v5;
    *(v4 + 16) = v6;
    *(v4 + 24) = v7;
  }

  return result;
}

char *sub_1AF98B6AC(void *a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC3VFX20ColorRampTextureNode_colorRamp;
  v4 = v2 + OBJC_IVAR____TtC3VFX20ColorRampTextureNode_colorRamp;
  sub_1AF43A038();
  v5 = swift_allocObject();
  __asm { FMOV            V1.4S, #1.0 }

  v5[1] = xmmword_1AFE4C620;
  v5[2] = _Q1;
  v5[3] = xmmword_1AFE201A0;
  v11 = a1 + v3;
  v12 = *(a1 + v3);
  v13 = *(a1 + v3 + 8);
  LOBYTE(v11) = v11[16];
  *v4 = v12;
  *(v4 + 8) = v13;
  *(v4 + 16) = v11;

  *(v2 + OBJC_IVAR____TtC3VFX14ECSStorageNode_entity) = *(a1 + OBJC_IVAR____TtC3VFX14ECSStorageNode_entity);
  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF98B770()
{
  sub_1AF98F688(0, &qword_1ED722F30, &type metadata for ScriptParameter, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1AFE431C0;
  v2 = swift_allocObject();
  *(v2 + 16) = *(v0 + OBJC_IVAR____TtC3VFX14ECSStorageNode_entity);
  *(v2 + 24) = 0;
  *(v2 + 32) = 16842752;
  *(v1 + 32) = v2 | 0x4000000000000000;
  *(v1 + 40) = 1;
  *(v1 + 48) = xmmword_1AFE4C460;
  *(v1 + 64) = 1;
  return v1;
}

uint64_t sub_1AF98B828()
{
}

uint64_t sub_1AF98B86C()
{

  sub_1AF919DAC(*(v0 + 24));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF98B9A8(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AF80BC20();
  return sub_1AF974C50();
}

uint64_t sub_1AF98BA34(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AF80A7AC();
  result = sub_1AF974940();
  if (!v2)
  {
    v4 = v1 + OBJC_IVAR____TtC3VFX20ColorRampTextureNode_colorRamp;
    *v4 = v5;
    *(v4 + 16) = v6;
  }

  return result;
}

uint64_t sub_1AF98BB8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x1E69E6F90];
  sub_1AF98F688(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AFE431C0;
  v12 = swift_allocObject();
  *(v12 + 16) = 0xC000000000000098;
  *(v11 + 32) = v12 | 0x8000000000000000;
  sub_1AF98F688(0, &unk_1EB630980, &type metadata for AnyValue, v10);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AFE431C0;
  if (qword_1EB6371F0 != -1)
  {
    swift_once();
  }

  v14 = qword_1EB6C3430;
  type metadata accessor for ImplicitWorldAssetNode(0);
  swift_allocObject();
  v15 = v14;
  v16 = sub_1AF9C3E60(v15, 0, 1, a1, 0);

  *(v13 + 64) = type metadata accessor for Node();
  *(v13 + 32) = 0xC000000000000000;
  *(v13 + 40) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = a2;
  *(v17 + 32) = result | 0x8000000000000000;
  *a5 = v11;
  a5[1] = v17;
  a5[2] = a3;
  a5[3] = a4;
  a5[4] = MEMORY[0x1E69E7CC0];
  a5[5] = v13;
  return result;
}

uint64_t sub_1AF98BD74()
{

  v0 = sub_1AF9A178C(1, 0);
  v2 = v1;

  sub_1AF98F688(0, &qword_1ED722F30, &type metadata for ScriptParameter, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  v4 = swift_allocObject();
  v5 = 0xFFFFFFFFLL;
  if ((v2 & 1) == 0)
  {
    v5 = v0;
  }

  *(v4 + 16) = v5;
  *(v4 + 24) = 0;
  *(v4 + 32) = 16842752;
  *(v3 + 32) = v4 | 0x4000000000000000;
  *(v3 + 40) = 1;
  *(v3 + 48) = xmmword_1AFE4C460;
  *(v3 + 64) = 1;
  return v3;
}

uint64_t sub_1AF98BE68()
{
  v0 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v0);

  MEMORY[0x1B2718AE0](0x6D61726170253DLL, 0xE700000000000000);
  v1 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v1);

  return 29219;
}

uint64_t sub_1AF98BF64@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF98F688(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000098;
  *(v3 + 32) = v4 | 0x8000000000000000;
  sub_1AF98F688(0, &unk_1EB630980, &type metadata for AnyValue, v2);
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
  v8 = sub_1AF9C3E60(v7, 0, 1, 33, 0);

  *(v5 + 64) = type metadata accessor for Node();
  *(v5 + 32) = 0xC000000000000000;
  *(v5 + 40) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE4C630;
  v10 = swift_allocObject();
  *(v10 + 16) = 0xC000000000000010;
  *(v9 + 32) = v10 | 0x8000000000000000;
  v11 = swift_allocObject();
  *(v11 + 16) = 0xC000000000000010;
  *(v9 + 40) = v11 | 0x8000000000000000;
  v12 = swift_allocObject();
  *(v12 + 16) = 0xC000000000000010;
  *(v9 + 48) = v12 | 0x8000000000000000;
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = 0xC000000000000058;
  *(v13 + 16) = v14 | 0x6000000000000000;
  *(v9 + 56) = v13 | 0x8000000000000000;
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  *(v16 + 16) = 0xC000000000000058;
  *(v15 + 16) = v16 | 0x6000000000000000;
  *(v9 + 64) = v15 | 0x8000000000000000;
  v17 = swift_allocObject();
  v18 = swift_allocObject();
  *(v18 + 16) = 0xC000000000000058;
  *(v17 + 16) = v18 | 0x6000000000000000;
  *(v9 + 72) = v17 | 0x8000000000000000;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000058;
  *(v9 + 80) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v9;
  a1[2] = &unk_1F24EED90;
  a1[3] = &unk_1F24EEDC0;
  a1[4] = &unk_1F24EEDF0;
  a1[5] = v5;
  return result;
}

uint64_t sub_1AF98C248()
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

  sub_1AF98F688(0, &qword_1ED722F30, &type metadata for ScriptParameter, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE4C630;
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 20) = v4;
  v7 = v3;
  v65 = v3;
  KeyPath = swift_getKeyPath();
  v9 = sub_1AF57907C(KeyPath);

  v11 = *(v9 + 16);
  v10 = *(v9 + 24);
  v12 = *(v9 + 48);
  v13 = *(v9 + 56);
  v14 = *(v9 + 58);

  v67 = *(v9 + 32);

  *(v6 + 24) = v11;
  *(v6 + 32) = v10;
  *(v6 + 40) = v67;
  *(v6 + 56) = v12;
  *(v6 + 64) = v13;
  *(v6 + 66) = v14;
  *(v5 + 32) = v6 | 0x2000000000000000;
  *(v5 + 40) = 1;
  *(v5 + 48) = xmmword_1AFE4C460;
  *(v5 + 64) = 1;
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  *(v15 + 20) = v4;
  v16 = swift_getKeyPath();
  v17 = sub_1AF57907C(v16);

  v18 = *(v17 + 16);
  v19 = *(v17 + 24);
  v20 = *(v17 + 48);
  LOBYTE(v14) = *(v17 + 56);
  LOWORD(v12) = *(v17 + 58);

  v60 = *(v17 + 32);

  *(v15 + 24) = v18;
  *(v15 + 32) = v19;
  *(v15 + 40) = v60;
  *(v15 + 56) = v20;
  *(v15 + 64) = v14;
  *(v15 + 66) = v12;
  *(v5 + 72) = v15 | 0x2000000000000000;
  *(v5 + 80) = 1;
  *(v5 + 88) = xmmword_1AFE4C460;
  *(v5 + 104) = 1;
  v21 = swift_allocObject();
  *(v21 + 16) = v65;
  *(v21 + 20) = v4;
  v22 = swift_getKeyPath();
  v23 = sub_1AF57907C(v22);

  v24 = *(v23 + 16);
  v25 = *(v23 + 24);
  v26 = *(v23 + 48);
  LOBYTE(v14) = *(v23 + 56);
  LOWORD(v12) = *(v23 + 58);

  v61 = *(v23 + 32);

  *(v21 + 24) = v24;
  *(v21 + 32) = v25;
  *(v21 + 40) = v61;
  *(v21 + 56) = v26;
  *(v21 + 64) = v14;
  *(v21 + 66) = v12;
  *(v5 + 112) = v21 | 0x2000000000000000;
  *(v5 + 120) = 1;
  *(v5 + 128) = xmmword_1AFE4C460;
  *(v5 + 144) = 1;
  v27 = swift_allocObject();
  *(v27 + 16) = v65;
  *(v27 + 20) = v4;
  v28 = sub_1AFDFD488();
  *(v28 + 16) = 2048;
  bzero((v28 + 32), 0x2000uLL);
  v29 = sub_1AFDFD488();
  *(v29 + 16) = 2048;
  bzero((v29 + 32), 0x2000uLL);
  v95 = 1;
  v89[0] = MEMORY[0x1E69E7CC0];
  v89[1] = MEMORY[0x1E69E7CC0];
  v89[2] = MEMORY[0x1E69E7CC0];
  v90 = 0;
  v91 = v28;
  v92 = v29;
  v93 = 0;
  v94 = 1;
  v30 = swift_getKeyPath();
  v31 = sub_1AF579058(v30);

  sub_1AF5871B8(v89);
  v32 = *(v31 + 16);
  v33 = *(v31 + 24);
  v34 = *(v31 + 48);
  LOBYTE(v21) = *(v31 + 56);
  LOWORD(v7) = *(v31 + 58);

  v62 = *(v31 + 32);

  *(v27 + 24) = v32;
  *(v27 + 32) = v33;
  *(v27 + 40) = v62;
  *(v27 + 56) = v34;
  *(v27 + 64) = v21;
  *(v27 + 66) = v7;
  *(v5 + 152) = v27 | 0x2000000000000000;
  *(v5 + 160) = 1;
  *(v5 + 168) = xmmword_1AFE4C460;
  *(v5 + 184) = 1;
  v35 = swift_allocObject();
  *(v35 + 16) = v65;
  *(v35 + 20) = v4;
  v36 = sub_1AFDFD488();
  *(v36 + 16) = 2048;
  bzero((v36 + 32), 0x2000uLL);
  v37 = sub_1AFDFD488();
  *(v37 + 16) = 2048;
  bzero((v37 + 32), 0x2000uLL);
  v88 = 1;
  v82[0] = MEMORY[0x1E69E7CC0];
  v82[1] = MEMORY[0x1E69E7CC0];
  v82[2] = MEMORY[0x1E69E7CC0];
  v83 = 0;
  v84 = v36;
  v85 = v37;
  v86 = 0;
  v87 = 1;
  v38 = swift_getKeyPath();
  v39 = sub_1AF579058(v38);

  sub_1AF5871B8(v82);
  v40 = *(v39 + 16);
  v41 = *(v39 + 24);
  v42 = *(v39 + 48);
  LOBYTE(v34) = *(v39 + 56);
  LOWORD(v7) = *(v39 + 58);

  v63 = *(v39 + 32);

  *(v35 + 24) = v40;
  *(v35 + 32) = v41;
  *(v35 + 40) = v63;
  *(v35 + 56) = v42;
  *(v35 + 64) = v34;
  *(v35 + 66) = v7;
  *(v5 + 192) = v35 | 0x2000000000000000;
  *(v5 + 200) = 1;
  *(v5 + 208) = xmmword_1AFE4C460;
  *(v5 + 224) = 1;
  v43 = swift_allocObject();
  *(v43 + 16) = v65;
  *(v43 + 20) = v4;
  v44 = sub_1AFDFD488();
  *(v44 + 16) = 2048;
  bzero((v44 + 32), 0x2000uLL);
  v45 = sub_1AFDFD488();
  *(v45 + 16) = 2048;
  bzero((v45 + 32), 0x2000uLL);
  v81 = 1;
  v75[0] = MEMORY[0x1E69E7CC0];
  v75[1] = MEMORY[0x1E69E7CC0];
  v75[2] = MEMORY[0x1E69E7CC0];
  v76 = 0;
  v77 = v44;
  v78 = v45;
  v79 = 0;
  v80 = 1;
  v46 = swift_getKeyPath();
  v47 = sub_1AF579058(v46);

  sub_1AF5871B8(v75);
  v48 = *(v47 + 16);
  v49 = *(v47 + 24);
  v50 = *(v47 + 48);
  LOBYTE(v34) = *(v47 + 56);
  LOWORD(v7) = *(v47 + 58);

  v64 = *(v47 + 32);

  *(v43 + 24) = v48;
  *(v43 + 32) = v49;
  *(v43 + 40) = v64;
  *(v43 + 56) = v50;
  *(v43 + 64) = v34;
  *(v43 + 66) = v7;
  *(v5 + 232) = v43 | 0x2000000000000000;
  *(v5 + 240) = 1;
  *(v5 + 248) = xmmword_1AFE4C460;
  *(v5 + 264) = 1;
  v51 = swift_allocObject();
  *(v51 + 16) = v65;
  *(v51 + 20) = v4;
  v52 = sub_1AFDFD488();
  *(v52 + 16) = 2048;
  bzero((v52 + 32), 0x2000uLL);
  v53 = sub_1AFDFD488();
  *(v53 + 16) = 2048;
  bzero((v53 + 32), 0x2000uLL);
  v74 = 1;
  v68[0] = MEMORY[0x1E69E7CC0];
  v68[1] = MEMORY[0x1E69E7CC0];
  v68[2] = MEMORY[0x1E69E7CC0];
  v69 = 0;
  v70 = v52;
  v71 = v53;
  v72 = 0;
  v73 = 1;
  v54 = swift_getKeyPath();
  v55 = sub_1AF579058(v54);

  sub_1AF5871B8(v68);
  v57 = *(v55 + 16);
  v56 = *(v55 + 24);
  v58 = *(v55 + 48);
  LOBYTE(v34) = *(v55 + 56);
  LOWORD(v7) = *(v55 + 58);

  v66 = *(v55 + 32);

  *(v51 + 24) = v57;
  *(v51 + 32) = v56;
  *(v51 + 40) = v66;
  *(v51 + 56) = v58;
  *(v51 + 64) = v34;
  *(v51 + 66) = v7;
  *(v5 + 272) = v51 | 0x2000000000000000;
  *(v5 + 280) = 1;
  *(v5 + 288) = xmmword_1AFE4C460;
  *(v5 + 304) = 1;
  return v5;
}

uint64_t sub_1AF98C990()
{
  v0 = sub_1AF98F16C();
  v1 = sub_1AFA5413C(v0);

  return v1;
}

uint64_t sub_1AF98CA00()
{
  strcpy(v4, "ImportError: ");
  HIWORD(v4[1]) = -4864;
  v1 = *(v0 + OBJC_IVAR____TtC3VFX15ImportErrorNode_name);
  v2 = *(v0 + OBJC_IVAR____TtC3VFX15ImportErrorNode_name + 8);

  MEMORY[0x1B2718AE0](v1, v2);

  return v4[0];
}

uint64_t sub_1AF98CA84@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC3VFX15ImportErrorNode_inputCount);
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
  result = sub_1AFDFD488();
  *(result + 16) = 1;
  *(result + 32) = 0xA000000000000000;
  *a1 = v5;
  a1[1] = result;
  a1[2] = &unk_1F24EF4C0;
  a1[3] = v4;
  a1[4] = v4;
  a1[5] = v4;
  return result;
}

char *sub_1AF98CB38(void *a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC3VFX15ImportErrorNode_message;
  v4 = (v2 + OBJC_IVAR____TtC3VFX15ImportErrorNode_message);
  v5 = OBJC_IVAR____TtC3VFX15ImportErrorNode_inputCount;
  v6 = *(a1 + OBJC_IVAR____TtC3VFX15ImportErrorNode_name + 8);
  v7 = (v2 + OBJC_IVAR____TtC3VFX15ImportErrorNode_name);
  *v7 = *(a1 + OBJC_IVAR____TtC3VFX15ImportErrorNode_name);
  v7[1] = v6;
  v8 = (a1 + v3);
  v9 = v8[1];
  *v4 = *v8;
  v4[1] = v9;
  *(v2 + v5) = *(a1 + v5);

  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF98CBC8()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX15ImportErrorNode_name);

  return v1;
}

uint64_t sub_1AF98CC04(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x756F437475706E69;
  v4 = 0xEA0000000000746ELL;
  if (v2 != 1)
  {
    v3 = 0x6567617373656DLL;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1701667182;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x756F437475706E69;
  v8 = 0xEA0000000000746ELL;
  if (*a2 != 1)
  {
    v7 = 0x6567617373656DLL;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1701667182;
  }

  if (*a2)
  {
    v10 = v8;
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
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF98CD08()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF98CDA8()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF98CE34()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF98CED0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF98F120();
  *a1 = result;
  return result;
}

void sub_1AF98CF00(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEA0000000000746ELL;
  v5 = 0x756F437475706E69;
  if (v2 != 1)
  {
    v5 = 0x6567617373656DLL;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701667182;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1AF98CF5C()
{
  v1 = 0x756F437475706E69;
  if (*v0 != 1)
  {
    v1 = 0x6567617373656DLL;
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

uint64_t sub_1AF98CFB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF98F120();
  *a1 = result;
  return result;
}

uint64_t sub_1AF98CFDC(uint64_t a1)
{
  v2 = sub_1AF98F43C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF98D018(uint64_t a1)
{
  v2 = sub_1AF98F43C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF98D054(void *a1)
{
  v3 = v1;
  sub_1AF98F8FC(0, &qword_1EB640D80, sub_1AF98F43C, &type metadata for ImportErrorNode.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF98F43C();
  sub_1AFDFF3F8();
  LOBYTE(v12) = 0;

  sub_1AFDFE8B8();
  if (v2)
  {
    (*(v7 + 8))(v10, v6);
  }

  else
  {

    LOBYTE(v12) = 1;
    sub_1AFDFE8F8();
    v12 = *(v3 + OBJC_IVAR____TtC3VFX15ImportErrorNode_message);
    v13 = 2;
    sub_1AF98F688(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    sub_1AF98F490(&qword_1EB6442C0);
    sub_1AFDFE918();
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_1AF98D2D4(void *a1)
{
  v3 = v1;
  sub_1AF98F8FC(0, &qword_1EB640D70, sub_1AF98F43C, &type metadata for ImportErrorNode.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF98F43C();
  result = sub_1AFDFF3B8();
  if (!v2)
  {
    LOBYTE(v15) = 0;
    v12 = sub_1AFDFE708();
    v13 = (v3 + OBJC_IVAR____TtC3VFX15ImportErrorNode_name);
    *v13 = v12;
    v13[1] = v14;

    LOBYTE(v15) = 1;
    *(v3 + OBJC_IVAR____TtC3VFX15ImportErrorNode_inputCount) = sub_1AFDFE748();
    sub_1AF98F688(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v16 = 2;
    sub_1AF98F490(&qword_1ED726CB8);
    sub_1AFDFE768();
    (*(v7 + 8))(v10, v6);
    *(v3 + OBJC_IVAR____TtC3VFX15ImportErrorNode_message) = v15;
  }

  return result;
}

uint64_t sub_1AF98D5A8()
{
}

uint64_t sub_1AF98D5F0()
{

  sub_1AF919DAC(*(v0 + 24));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF98D7BC@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF98F688(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C6B0;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000008;
  *(v3 + 32) = v4 | 0x8000000000000000;
  *(v3 + 40) = 0xA000000000000048;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC0000000000000B8;
  *(v3 + 48) = v5 | 0x8000000000000000;
  v6 = sub_1AF90DEFC(*(v1 + OBJC_IVAR____TtC3VFX18_ParticleValueNode_keyPath + 24));
  if ((~v6 & 0xF000000000000007) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0xC000000000000000;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v3 + 56) = v8 | 0x8000000000000000;
  sub_1AF98F688(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E6530];
  *(v9 + 64) = MEMORY[0x1E69E6530];
  *(v9 + 16) = xmmword_1AFE4C6B0;
  *(v9 + 32) = xmmword_1AFE87170;
  sub_1AF9708B8(11, 0, (v9 + 72));
  *(v9 + 144) = v10;
  *(v9 + 112) = xmmword_1AFE87170;
  *(v9 + 184) = v10;
  *(v9 + 152) = xmmword_1AFE87170;
  sub_1AF98F514(0, &qword_1EB630968, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AFE4C6B0;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 48) = xmmword_1AFE880C0;
  *(v11 + 64) = xmmword_1AFE880D0;
  v12 = sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (result)
  {
    (*(result + 16))(v12, result);
    sub_1AF9A0BAC();
    v14 = sub_1AFDFDDA8();
    v16 = v15;

    sub_1AF701628();

    sub_1AF725990();
    sub_1AFDFD0A8();

    *(v11 + 80) = v14;
    *(v11 + 88) = v16;
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1AFE431C0;
    result = swift_allocObject();
    *(result + 16) = 0xC000000000000008;
    *(v17 + 32) = result | 0x8000000000000000;
    *a1 = v3;
    a1[1] = v17;
    a1[2] = &unk_1F24F23F8;
    a1[3] = v11;
    a1[4] = MEMORY[0x1E69E7CC0];
    a1[5] = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF98DB30(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (v1 == 2)
  {
    if (result)
    {
      sub_1AFB7A5C0();
      v4 = v3;
      v6 = v5;

      v11 = 3027237;
      MEMORY[0x1B2718AE0](v4, v6);

      v7 = 0x293325202C322528;
      v8 = 0xE800000000000000;
LABEL_6:
      MEMORY[0x1B2718AE0](v7, v8);
      return v11;
    }

    __break(1u);
  }

  else if (result)
  {
    sub_1AFD62F64();
    v10 = v9;

    v11 = v10;
    v7 = 0x2C3225202C312528;
    v8 = 0xEC00000029332520;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AF98DC9C@<X0>(uint64_t *a1@<X8>)
{
  v3 = MEMORY[0x1E69E6F90];
  sub_1AF98F688(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE4C620;
  *(v4 + 32) = 0xA000000000000048;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC0000000000000B8;
  v17 = v4;
  *(v4 + 40) = v5 | 0x8000000000000000;
  sub_1AF98F688(0, &unk_1EB630980, &type metadata for AnyValue, v3);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE4C620;
  sub_1AF9708B8(11, 0, (v6 + 32));
  *(v6 + 104) = MEMORY[0x1E69E6530];
  *(v6 + 72) = xmmword_1AFE87170;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  v8 = sub_1AF90DEFC(*(v1 + OBJC_IVAR____TtC3VFX18_ParticleValueNode_keyPath + 24));
  if ((~v8 & 0xF000000000000007) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0xC000000000000000;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v7 + 32) = v10 | 0x8000000000000000;
  sub_1AF98F514(0, &qword_1EB630968, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AFE431C0;
  v12 = sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (result)
  {
    (*(result + 16))(v12, result);
    sub_1AF9A0BAC();
    v14 = sub_1AFDFDDA8();
    v16 = v15;

    sub_1AF701628();

    sub_1AF725990();
    sub_1AFDFD0A8();

    *(v11 + 32) = v14;
    *(v11 + 40) = v16;
    *a1 = v17;
    a1[1] = v7;
    a1[2] = &unk_1F24F2388;
    a1[3] = &unk_1F24F23B8;
    a1[4] = v11;
    a1[5] = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF98DFA0(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (v1 == 2)
  {
    if (result)
    {
      v3 = sub_1AFB7A5C0();
      v5 = v4;

      v9 = 3026981;
      MEMORY[0x1B2718AE0](v3, v5);

      v6 = 691086632;
      v7 = 0xE400000000000000;
LABEL_6:
      MEMORY[0x1B2718AE0](v6, v7);
      return v9;
    }

    __break(1u);
  }

  else if (result)
  {
    v8 = sub_1AFD62F64();

    v9 = v8;
    v6 = 0x293125202C302528;
    v7 = 0xE800000000000000;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

char *sub_1AF98E0D4(void *a1, void *a2)
{
  v4 = swift_allocObject();
  v5 = a1 + *a2;
  v6 = *(v5 + 1);
  v7 = *(v5 + 4);
  v8 = v5[40];
  v9 = *(v5 + 21);
  v10 = v4 + *a2;
  *v10 = *v5;
  *(v10 + 8) = v6;
  *(v10 + 16) = *(v5 + 1);
  *(v10 + 32) = v7;
  *(v10 + 40) = v8;
  *(v10 + 42) = v9;

  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF98E16C()
{

  sub_1AF919DAC(*(v0 + 24));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF98E2BC@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF98F688(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C620;
  *(v3 + 32) = 0xA000000000000048;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000038;
  *(v3 + 40) = v4 | 0x8000000000000000;
  sub_1AF98F688(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE4C620;
  sub_1AF9708B8(11, 0, (v5 + 32));
  *(v5 + 104) = MEMORY[0x1E69E6530];
  *(v5 + 72) = xmmword_1AFE87170;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC0000000000000B8;
  *(v6 + 32) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v6;
  a1[2] = &unk_1F24F2598;
  a1[3] = &unk_1F24F25C8;
  a1[4] = &unk_1F24F2608;
  a1[5] = v5;
  return result;
}

unint64_t sub_1AF98E440(_BYTE *a1)
{
  if (*a1 == 2)
  {
    return 0xD00000000000001DLL;
  }

  else
  {
    return 0xD000000000000028;
  }
}

uint64_t sub_1AF98E4C0@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF98F688(0, &unk_1EB630980, &type metadata for AnyValue, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  sub_1AF9708B8(11, 0, (v3 + 32));
  sub_1AF98F688(0, &qword_1EB6309E8, &type metadata for TypeConstraint, v2);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000040;
  *(v4 + 32) = result | 0x8000000000000000;
  *a1 = &unk_1F24F1EE8;
  a1[1] = v4;
  a1[2] = &unk_1F24F1F10;
  a1[3] = &unk_1F24F1F40;
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v3;
  return result;
}

unint64_t sub_1AF98E5D8(_BYTE *a1)
{
  if (*a1 == 2)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

uint64_t sub_1AF98E658@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF98F688(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  v3 = swift_allocObject();
  *(v3 + 16) = 0xC0000000000000B8;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000010;
  *(v4 + 32) = result | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v4;
  a1[2] = &unk_1F24F20C8;
  a1[3] = &unk_1F24F20F8;
  v6 = MEMORY[0x1E69E7CC0];
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v6;
  return result;
}

uint64_t sub_1AF98E7D0@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF98F688(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C680;
  *(v3 + 32) = 0xA000000000000048;
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE4C430;
  *(v4 + 16) = v5 | 0x2000000000000000;
  *(v3 + 40) = v4 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = 0xC000000000000058;
  *(v3 + 48) = v6 | 0x8000000000000000;
  sub_1AF98F688(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE4C680;
  sub_1AF9708B8(11, 0, (v7 + 32));
  v8 = MEMORY[0x1E69E6530];
  *(v7 + 104) = MEMORY[0x1E69E6530];
  *(v7 + 72) = xmmword_1AFE87170;
  *(v7 + 144) = v8;
  *(v7 + 112) = xmmword_1AFE87170;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC0000000000000B8;
  *(v9 + 32) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v9;
  a1[2] = &unk_1F24F2A18;
  a1[3] = &unk_1F24F2A48;
  a1[4] = &unk_1F24F2A98;
  a1[5] = v7;
  return result;
}

uint64_t sub_1AF98EA00@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF98F688(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C6B0;
  *(v3 + 32) = 0xA000000000000048;
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE4C430;
  *(v4 + 16) = v5 | 0x2000000000000000;
  *(v3 + 40) = v4 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = 0xC000000000000058;
  *(v3 + 48) = v6 | 0x8000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xC000000000000038;
  *(v3 + 56) = v7 | 0x8000000000000000;
  sub_1AF98F688(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE4C6B0;
  sub_1AF9708B8(11, 0, (v8 + 32));
  v9 = MEMORY[0x1E69E6530];
  *(v8 + 104) = MEMORY[0x1E69E6530];
  *(v8 + 72) = xmmword_1AFE87170;
  *(v8 + 144) = v9;
  *(v8 + 112) = xmmword_1AFE87170;
  v13[3] = MEMORY[0x1E69E7668];
  LODWORD(v13[0]) = 20;
  sub_1AF975674(v13, (v8 + 152));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v13);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE431C0;
  v11 = swift_allocObject();
  result = swift_allocObject();
  *(result + 16) = 0xC0000000000000B8;
  *(v11 + 16) = result | 0x6000000000000000;
  *(v10 + 32) = v11 | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v10;
  a1[2] = &unk_1F24F26A8;
  a1[3] = &unk_1F24F26D8;
  a1[4] = &unk_1F24F2738;
  a1[5] = v8;
  return result;
}

uint64_t sub_1AF98EC3C()
{

  sub_1AF9A27E0(1, 0);

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF3D580);
  v0 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v0);

  MEMORY[0x1B2718AE0](0xD000000000000038, 0x80000001AFF3D5A0);
  v1 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v1);

  MEMORY[0x1B2718AE0](0xD000000000000050, 0x80000001AFF3D5E0);
  return 0;
}

unint64_t sub_1AF98EDC0()
{
  result = qword_1EB640D50;
  if (!qword_1EB640D50)
  {
    sub_1AF98F688(255, &qword_1EB640D58, &type metadata for VFXStage, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640D50);
  }

  return result;
}

unint64_t sub_1AF98EE40()
{
  result = qword_1EB640D60;
  if (!qword_1EB640D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640D60);
  }

  return result;
}

uint64_t sub_1AF98EE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = a1;
  v7[3] = a4;
  sub_1AF3FB9C8(sub_1AF42B5A8, v7, 0, 0x1000000000000000uLL, 0, MEMORY[0x1E69E7CC0]);
  v5 = sub_1AF449CC8();

  *(a2 + 24) = v5;
}

uint64_t sub_1AF98EF40()
{
  v0 = sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v3 = result;
    v4 = *(v0 - 8);
    MEMORY[0x1EEE9AC00](result, v2);
    v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v8 = *(v7 + 8);
    sub_1AF6461F4(v0, v8);
    v9 = (*(v8 + 24))(v0, v8);
    (*(v4 + 8))(v6, v0);
    if (v9 >> 62)
    {
      v10 = sub_1AFDFE108();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = (*(v3 + 16))(v0, v3);
    if (v10 == 1)
    {
      return 0;
    }

    else
    {
      v12 = v11;

      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF98F120()
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

uint64_t sub_1AF98F16C()
{
  v0 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v2 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v2);

    MEMORY[0x1B2718AE0](0x6D61726170253DLL, 0xE700000000000000);
    v3 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v3);

    sub_1AF98F688(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AFE431C0;
    *(inited + 32) = 29219;
    *(inited + 40) = 0xE200000000000000;
    sub_1AF98F514(0, &qword_1ED722EF8, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_1AFE431C0;
    *(v5 + 32) = inited;
    v6 = v5 + 32;
    v7 = sub_1AFA56CA0(v5);
    swift_setDeallocating();
    sub_1AF98F618(v6, &unk_1ED723290, &type metadata for CodeEmitter.Code);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1AF426BC8(0, v1[2] + 1, 1, v1);
    }

    v9 = v1[2];
    v8 = v1[3];
    if (v9 >= v8 >> 1)
    {
      v1 = sub_1AF426BC8(v8 > 1, v9 + 1, 1, v1);
    }

    ++v0;
    v1[2] = v9 + 1;
    v1[v9 + 4] = v7;
  }

  while (v0 != 7);
  v10 = sub_1AFA56CA0(v1);

  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1AFE431C0;
  *(v11 + 32) = v10;
  v12 = v11 + 32;
  v13 = sub_1AFA56CA0(v11);
  swift_setDeallocating();
  sub_1AF98F618(v12, &unk_1ED723290, &type metadata for CodeEmitter.Code);
  return v13;
}

unint64_t sub_1AF98F3E8()
{
  result = qword_1EB640D68;
  if (!qword_1EB640D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640D68);
  }

  return result;
}

unint64_t sub_1AF98F43C()
{
  result = qword_1EB640D78;
  if (!qword_1EB640D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640D78);
  }

  return result;
}

uint64_t sub_1AF98F490(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AF98F688(255, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AF98F514(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  if (!*a2)
  {
    sub_1AF98F688(255, a3, a4, a5);
    v6 = sub_1AFDFEA18();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1AF98F570(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1AF98F618(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AF98F688(0, a2, a3, MEMORY[0x1E69E62F8]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1AF98F688(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AF98F6D8()
{
  result = qword_1EB640D88;
  if (!qword_1EB640D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640D88);
  }

  return result;
}

unint64_t sub_1AF98F780()
{
  result = qword_1EB640D90;
  if (!qword_1EB640D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640D90);
  }

  return result;
}

unint64_t sub_1AF98F7F8()
{
  result = qword_1EB640D98;
  if (!qword_1EB640D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640D98);
  }

  return result;
}

unint64_t sub_1AF98F850()
{
  result = qword_1EB640DA0;
  if (!qword_1EB640DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640DA0);
  }

  return result;
}

unint64_t sub_1AF98F8A8()
{
  result = qword_1EB640DA8;
  if (!qword_1EB640DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640DA8);
  }

  return result;
}

void sub_1AF98F8FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AF98F964()
{
  result = qword_1EB640DB8;
  if (!qword_1EB640DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640DB8);
  }

  return result;
}

unint64_t sub_1AF98F9CC()
{
  result = qword_1EB640DC0;
  if (!qword_1EB640DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640DC0);
  }

  return result;
}

unint64_t sub_1AF98FA24()
{
  result = qword_1EB640DC8;
  if (!qword_1EB640DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640DC8);
  }

  return result;
}

uint64_t sub_1AF98FBDC@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF992EA8(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C620;
  *(v2 + 32) = 0xA000000000000038;
  v3 = swift_allocObject();
  *(v3 + 16) = 0xC000000000000058;
  *(v2 + 40) = v3 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000058;
  *(v4 + 32) = result | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v4;
  a1[2] = &unk_1F24F02B0;
  a1[3] = &unk_1F24F02E0;
  v6 = MEMORY[0x1E69E7CC0];
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v6;
  return result;
}

unint64_t sub_1AF98FD14(unsigned __int8 *a1)
{
  v3 = 0xD000000000000021;
  v4 = *(v1 + 24);
  v5 = *(v4 + 32);
  sub_1AF448650(v4);
  sub_1AF442064(v5);

  if (sub_1AF90F890(v5, 0xC000000000000090))
  {
    v6 = *a1;
    sub_1AF445BE4(v5);
    if (v6)
    {
      return 0xD000000000000023;
    }

    else
    {
      return 0xD000000000000025;
    }
  }

  else
  {
    sub_1AF445BE4(v5);
  }

  return v3;
}

double sub_1AF98FE0C@<D0>(uint64_t *a1@<X8>)
{
  sub_1AF992EA8(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C620;
  *(v2 + 32) = 0xA000000000000040;
  v3 = swift_allocObject();
  *(v3 + 16) = 0xC000000000000058;
  *(v2 + 40) = v3 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *&result = 4;
  *(v6 + 16) = xmmword_1AFE4C440;
  *(v5 + 16) = v6 | 0x2000000000000000;
  *(v4 + 32) = v5 | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v4;
  a1[2] = &unk_1F24F1558;
  a1[3] = &unk_1F24F1588;
  v8 = MEMORY[0x1E69E7CC0];
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v8;
  return result;
}

unint64_t sub_1AF98FF5C(unsigned __int8 *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v3 + 32);
  sub_1AF448650(v3);
  sub_1AF442064(v4);

  if (sub_1AF90F890(v4, 0xC000000000000080))
  {
    v5 = *a1;
    sub_1AF445BE4(v4);
    if (v5)
    {
      return 0xD000000000000021;
    }

    else
    {
      return 0xD000000000000023;
    }
  }

  else
  {
    sub_1AF445BE4(v4);
    return 0xD000000000000026;
  }
}

uint64_t sub_1AF990050@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF992EA8(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C680;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000078;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE4C440;
  *(v5 + 16) = v6 | 0x2000000000000000;
  *(v3 + 40) = v5 | 0x8000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xC000000000000038;
  *(v3 + 48) = v7 | 0x8000000000000000;
  sub_1AF992EA8(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v8 = swift_allocObject();
  *(v8 + 64) = MEMORY[0x1E69E6530];
  *(v8 + 16) = xmmword_1AFE4C680;
  *(v8 + 32) = xmmword_1AFE87170;
  if (qword_1EB6371E8 != -1)
  {
    swift_once();
  }

  v15 = xmmword_1EB6C3370;
  sub_1AF6AF6D4();
  v16[3] = v9;
  v16[0] = swift_allocObject();
  *(v16[0] + 16) = v15;
  sub_1AF975674(v16, v17);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v16);
  type metadata accessor for ImplicitConstantNode(0);
  v10 = swift_allocObject();
  sub_1AF914FF0(v17, v16);
  v11 = OBJC_IVAR____TtC3VFX12ConstantNode_semantic;
  sub_1AF914FF0(v16, v10 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  *(v10 + v11) = xmmword_1AFE55160;
  v12 = MEMORY[0x1E69E7CC0];
  v10[2] = MEMORY[0x1E69E7CC0];
  v10[3] = 0;
  v10[4] = 0;
  sub_1AFDFC308();
  sub_1AF9151B0(v17);
  sub_1AF9151B0(v16);
  *(v8 + 104) = type metadata accessor for Node();
  *(v8 + 72) = 0xC000000000000000;
  *(v8 + 80) = v10;
  v17[3] = MEMORY[0x1E69E7360];
  v17[0] = 0;
  sub_1AF975674(v17, (v8 + 112));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v17);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000078;
  *(v13 + 32) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v13;
  a1[2] = &unk_1F24EE800;
  a1[3] = &unk_1F24EE830;
  a1[4] = v12;
  a1[5] = v8;
  return result;
}

__n128 sub_1AF990408@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, __n128 a3@<Q0>)
{
  sub_1AF992EA8(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE431C0;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v6 + 16) = v7 | 0x2000000000000000;
  *(v5 + 32) = v6 | 0x8000000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  result = a3;
  *(v10 + 16) = a3;
  *(v9 + 16) = v10 | 0x2000000000000000;
  *(v8 + 32) = v9 | 0x8000000000000000;
  *a2 = v5;
  a2[1] = v8;
  v12 = MEMORY[0x1E69E7CC0];
  a2[2] = a1;
  a2[3] = v12;
  a2[4] = v12;
  a2[5] = v12;
  return result;
}

unint64_t sub_1AF99084C(_BYTE *a1)
{
  if (*a1 == 3)
  {
    return 0xD000000000000034;
  }

  else
  {
    return 0xD000000000000024;
  }
}

uint64_t sub_1AF9908B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX11SamplerNode_textureType);
  if (v1 < 3)
  {
    return (v1 << 56) + 0x3165727574786554;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF99094C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6F90];
  sub_1AF992EA8(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE4C680;
  v6 = swift_allocObject();
  *(v6 + 16) = 0xC000000000000098;
  *(v5 + 32) = v6 | 0x8000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xC000000000000020;
  *(v5 + 40) = v7 | 0x8000000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = 0xC000000000000020;
  *(v5 + 48) = v8 | 0x8000000000000000;
  sub_1AF992EA8(0, &unk_1EB630980, &type metadata for AnyValue, v4);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE4C680;
  if (qword_1EB6371F0 != -1)
  {
    swift_once();
  }

  v10 = qword_1EB6C3430;
  type metadata accessor for ImplicitWorldAssetNode(0);
  swift_allocObject();
  v11 = v10;
  v12 = sub_1AF9C3E60(v11, 0, 1, 8, 0);

  *(v9 + 64) = type metadata accessor for Node();
  *(v9 + 32) = 0xC000000000000000;
  *(v9 + 40) = v12;
  v17 = &type metadata for AddressMode;
  LOBYTE(v16[0]) = 2;
  sub_1AF975674(v16, (v9 + 72));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v16);
  v17 = &type metadata for FilterMode;
  LOBYTE(v16[0]) = 1;
  sub_1AF975674(v16, (v9 + 112));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v16);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AFE431C0;
  v14 = swift_allocObject();
  result = swift_allocObject();
  *(result + 16) = *(v2 + OBJC_IVAR____TtC3VFX11SamplerNode_textureType);
  *(v14 + 16) = result | 0x8000000000000000;
  *(v13 + 32) = v14 | 0x8000000000000000;
  *a1 = v5;
  a1[1] = v13;
  a1[2] = &unk_1F24EE520;
  a1[3] = &unk_1F24EE550;
  a1[4] = &unk_1F24EE5A0;
  a1[5] = v9;
  return result;
}

uint64_t sub_1AF990C0C()
{
  v1 = v0;

  v2 = sub_1AF9A178C(1, 0);
  v4 = v3;

  v5 = sub_1AF9A8AB0();

  v6 = sub_1AF9A8AC0();

  sub_1AF992EA8(0, &qword_1ED722F30, &type metadata for ScriptParameter, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  v8 = swift_allocObject();
  v9 = 0xFFFFFFFFLL;
  if ((v4 & 1) == 0)
  {
    v9 = v2;
  }

  *(v8 + 16) = v9;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 33) = *(v1 + OBJC_IVAR____TtC3VFX11SamplerNode_textureType);
  *(v8 + 34) = v5;
  *(v8 + 35) = v6 & 1;
  *(v7 + 32) = v8 | 0x4000000000000000;
  *(v7 + 40) = 1;
  *(v7 + 48) = xmmword_1AFE4C460;
  *(v7 + 64) = 1;
  return v7;
}

uint64_t sub_1AF990E34()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX10SampleNode_textureType);
  if (v1 < 3)
  {
    return (v1 << 48) + 0x4431656C706D6153;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF990ECC@<X0>(uint64_t *a1@<X8>)
{
  v3 = MEMORY[0x1E69E6F90];
  sub_1AF992EA8(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE4C6B0;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = *(v1 + OBJC_IVAR____TtC3VFX10SampleNode_textureType);
  *(v5 + 16) = v6 | 0x8000000000000000;
  *(v4 + 32) = v5 | 0x8000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1AF99117C();
  *(v4 + 40) = v7 | 0x8000000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1AF99117C();
  *(v4 + 48) = v8 | 0x8000000000000000;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1AF99117C();
  *(v4 + 56) = v9 | 0x8000000000000000;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE431C0;
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AFE4C440;
  *(v11 + 16) = v12 | 0x2000000000000000;
  *(v10 + 32) = v11 | 0x8000000000000000;
  sub_1AF992EA8(0, &unk_1EB630980, &type metadata for AnyValue, v3);
  v13 = swift_allocObject();
  *(v13 + 64) = MEMORY[0x1E69E6530];
  *(v13 + 16) = xmmword_1AFE4C6B0;
  *(v13 + 32) = xmmword_1AFE87F70;
  v14 = sub_1AF99117C();
  sub_1AF90EDE8(v14, v18, 0.5);
  sub_1AF445BE4(v14);
  sub_1AF975674(v18, (v13 + 72));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v18);
  v15 = sub_1AF99117C();
  sub_1AF90EDE8(v15, v18, 1.0);
  sub_1AF445BE4(v15);
  sub_1AF975674(v18, (v13 + 112));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v18);
  v16 = sub_1AF99117C();
  sub_1AF90EDE8(v16, v18, 0.0);
  sub_1AF445BE4(v16);
  sub_1AF975674(v18, (v13 + 152));
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v18);
  *a1 = v4;
  a1[1] = v10;
  a1[2] = &unk_1F24EDC98;
  a1[3] = &unk_1F24EDCC8;
  a1[4] = &unk_1F24EDD28;
  a1[5] = v13;
  return result;
}

uint64_t sub_1AF99117C()
{
  v1 = 0xC000000000000058;
  v2 = *(v0 + OBJC_IVAR____TtC3VFX10SampleNode_textureType);
  if (!*(v0 + OBJC_IVAR____TtC3VFX10SampleNode_textureType))
  {
    return v1;
  }

  if (v2 == 1)
  {
    v3 = 2;
LABEL_6:
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0xC000000000000058;
    return v4 | 0x2000000000000000;
  }

  if (v2 == 2)
  {
    v3 = 3;
    goto LABEL_6;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF991250(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      return 0xD000000000000035;
    }
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR____TtC3VFX10SampleNode_textureType);
    if (!*(v1 + OBJC_IVAR____TtC3VFX10SampleNode_textureType) || v3 == 2 || v3 == 1)
    {
      sub_1AFDFE218();

      MEMORY[0x1B2718AE0](0xD00000000000001CLL, 0x80000001AFF3E030);
      return 0xD00000000000001BLL;
    }
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF9914C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF992EA8(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C6B0;
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 1;
  *(v4 + 16) = v5 | 0x8000000000000000;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE4C420;
  *(v6 + 16) = v7 | 0x2000000000000000;
  *(v3 + 40) = v6 | 0x8000000000000000;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE4C420;
  *(v8 + 16) = v9 | 0x2000000000000000;
  *(v3 + 48) = v8 | 0x8000000000000000;
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AFE4C420;
  *(v10 + 16) = v11 | 0x2000000000000000;
  *(v3 + 56) = v10 | 0x8000000000000000;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AFE431C0;
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AFE4C420;
  *(v13 + 16) = v14 | 0x2000000000000000;
  *(v12 + 32) = v13 | 0x8000000000000000;
  sub_1AF992EA8(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v15 = swift_allocObject();
  *(v15 + 64) = MEMORY[0x1E69E6530];
  *(v15 + 16) = xmmword_1AFE4C6B0;
  *(v15 + 32) = xmmword_1AFE87F70;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1AFE4C420;
  sub_1AF90EDE8(v16 | 0x2000000000000000, v20, 0.5);

  sub_1AF975674(v20, (v15 + 72));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v20);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1AFE4C420;
  sub_1AF90EDE8(v17 | 0x2000000000000000, v20, 1.0);

  sub_1AF975674(v20, (v15 + 112));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v20);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1AFE4C420;
  sub_1AF90EDE8(v18 | 0x2000000000000000, v20, 0.0);

  sub_1AF975674(v20, (v15 + 152));
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v20);
  *a1 = v3;
  a1[1] = v12;
  a1[2] = &unk_1F24EFCA0;
  a1[3] = &unk_1F24EFCD0;
  a1[4] = &unk_1F24EFD30;
  a1[5] = v15;
  return result;
}

uint64_t sub_1AF991828(unsigned __int8 *a1)
{
  result = 0xD000000000000042;
  v3 = *a1;
  if (v3 >= 2)
  {
    if (v3 == 2)
    {
      return 0xD000000000000035;
    }

    else
    {
      result = sub_1AFDFE518();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1AF9918E4(char a1)
{
  result = 0x7361456369627563;
  switch(a1)
  {
    case 3:
      return 0x6974617264617571;
    case 4:
      return 0xD000000000000010;
    case 5:
      return 0xD000000000000012;
    case 6:
      v3 = 1918989681;
      return v3 | 0x4563697400000000;
    case 7:
      v4 = 1918989681;
      goto LABEL_18;
    case 8:
      return 0xD000000000000010;
    case 9:
      v3 = 1852405105;
      return v3 | 0x4563697400000000;
    case 10:
      v4 = 1852405105;
LABEL_18:
      result = v4 | 0x4563697400000000;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x49657361456E6973;
      break;
    case 13:
      result = 0x4F657361456E6973;
      break;
    case 14:
      result = 0x49657361456E6973;
      break;
    case 15:
      result = 0x746E656E6F707865;
      break;
    case 16:
      result = 0x6C61636973796870;
      break;
    case 17:
      result = 0x7361457265776F70;
      break;
    case 18:
      result = 0x614565636E756F62;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1AF991B0C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1AF9918E4(*a1);
  v5 = v4;
  if (v3 == sub_1AF9918E4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF991B94()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AF9918E4(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF991BF8()
{
  sub_1AF9918E4(*v0);
  sub_1AFDFD038();
}

uint64_t sub_1AF991C4C()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AF9918E4(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF991CAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF992E00();
  *a1 = result;
  return result;
}

uint64_t sub_1AF991CDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AF9918E4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AF991DDC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC3VFX10EasingNode_kind);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3 >= 0xF)
  {
    if (*(v1 + OBJC_IVAR____TtC3VFX10EasingNode_kind) > 0x10u)
    {
      if (v3 == 17)
      {
        sub_1AF992EA8(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_1AFE4C620;
        v15 = swift_allocObject();
        *(v15 + 16) = 0xC000000000000058;
        *(v6 + 32) = v15 | 0x8000000000000000;
        v16 = swift_allocObject();
        *(v16 + 16) = 0xC000000000000058;
        *(v6 + 40) = v16 | 0x8000000000000000;
        v8 = MEMORY[0x1E69E7CC0];
        v9 = &unk_1F24ED7E8;
        v10 = &unk_1F24ED7B8;
      }

      else
      {
        sub_1AF992EA8(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_1AFE4C6B0;
        v21 = swift_allocObject();
        *(v21 + 16) = 0xC000000000000058;
        *(v6 + 32) = v21 | 0x8000000000000000;
        v22 = swift_allocObject();
        *(v22 + 16) = 0xC000000000000058;
        *(v6 + 40) = v22 | 0x8000000000000000;
        v23 = swift_allocObject();
        *(v23 + 16) = 0xC000000000000058;
        *(v6 + 48) = v23 | 0x8000000000000000;
        v24 = swift_allocObject();
        *(v24 + 16) = 0xC000000000000058;
        *(v6 + 56) = v24 | 0x8000000000000000;
        v8 = MEMORY[0x1E69E7CC0];
        v9 = &unk_1F24ED858;
        v10 = &unk_1F24ED828;
      }
    }

    else if (v3 == 15)
    {
      sub_1AF992EA8(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1AFE4C620;
      v13 = swift_allocObject();
      *(v13 + 16) = 0xC000000000000058;
      *(v6 + 32) = v13 | 0x8000000000000000;
      v14 = swift_allocObject();
      *(v14 + 16) = 0xC000000000000058;
      *(v6 + 40) = v14 | 0x8000000000000000;
      v8 = MEMORY[0x1E69E7CC0];
      v9 = &unk_1F24ED6E8;
      v10 = &unk_1F24ED6B8;
    }

    else
    {
      sub_1AF992EA8(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1AFE4C6B0;
      v17 = swift_allocObject();
      *(v17 + 16) = 0xC000000000000058;
      *(v6 + 32) = v17 | 0x8000000000000000;
      v18 = swift_allocObject();
      *(v18 + 16) = 0xC000000000000058;
      *(v6 + 40) = v18 | 0x8000000000000000;
      v19 = swift_allocObject();
      *(v19 + 16) = 0xC000000000000058;
      *(v6 + 48) = v19 | 0x8000000000000000;
      v20 = swift_allocObject();
      *(v20 + 16) = 0xC000000000000030;
      *(v6 + 56) = v20 | 0x8000000000000000;
      v8 = MEMORY[0x1E69E7CC0];
      v9 = &unk_1F24ED758;
      v10 = &unk_1F24ED728;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E6F90];
    sub_1AF992EA8(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1AFE431C0;
    v7 = swift_allocObject();
    *(v7 + 16) = 0xC000000000000058;
    *(v6 + 32) = v7 | 0x8000000000000000;
    sub_1AF992EA8(0, &unk_1EB630980, &type metadata for AnyValue, v5);
    v8 = swift_allocObject();
    *(v8 + 64) = MEMORY[0x1E69E6530];
    *(v8 + 16) = xmmword_1AFE431C0;
    *(v8 + 32) = xmmword_1AFE87170;
    v9 = &unk_1F24ED688;
    v10 = &unk_1F24ED658;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000058;
  *(v11 + 32) = result | 0x8000000000000000;
  *a1 = v6;
  a1[1] = v11;
  a1[2] = v10;
  a1[3] = v9;
  a1[4] = v4;
  a1[5] = v8;
  return result;
}

uint64_t sub_1AF9922A8()
{
  BYTE8(v2) = 0;
  MEMORY[0x1B2718AE0](0x3A646E696BLL, 0xE500000000000000);
  *&v2 = *(v0 + OBJC_IVAR____TtC3VFX10EasingNode_kind);
  sub_1AFDFE458();
  return *(&v2 + 1);
}

uint64_t getEnumTagSinglePayload for EasingNode.EasingKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EasingNode.EasingKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1AF992518()
{
  result = qword_1EB640E10;
  if (!qword_1EB640E10)
  {
    sub_1AF992EA8(255, &qword_1EB640E18, &type metadata for EasingNode.EasingKind, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640E10);
  }

  return result;
}

unint64_t sub_1AF992598()
{
  result = qword_1EB640E20;
  if (!qword_1EB640E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640E20);
  }

  return result;
}

uint64_t sub_1AF992630(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  sub_1AF441150(a1, a1[3]);
  a5();
  return sub_1AF974C50();
}

uint64_t sub_1AF9926FC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, void *a6)
{
  sub_1AF441150(a1, a1[3]);
  a4();
  result = sub_1AF974940();
  if (!v7)
  {
    *(v6 + *a6) = v11;
  }

  return result;
}

unint64_t sub_1AF992798()
{
  result = qword_1EB6337B8;
  if (!qword_1EB6337B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6337B8);
  }

  return result;
}

unint64_t sub_1AF9927EC()
{
  result = qword_1EB640E28;
  if (!qword_1EB640E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640E28);
  }

  return result;
}

unint64_t sub_1AF992840(uint64_t a1)
{
  switch(*(v1 + OBJC_IVAR____TtC3VFX10EasingNode_kind))
  {
    case 1:
      return 0xD000000000000014;
    case 2:
      return 0xD000000000000016;
    case 3:
      return 0xD000000000000017;
    case 4:
    case 8:
    case 0xB:
      return 0xD000000000000018;
    case 5:
      return 0xD00000000000001ALL;
    case 6:
    case 9:
      return 0xD000000000000015;
    case 7:
      return 0xD000000000000016;
    case 0xA:
      return 0xD000000000000016;
    case 0xC:
      sub_1AF90EDE8(0xC000000000000058, &v27, 1.0);
      v11 = sub_1AF92F69C(0xC000000000000058, &v27, a1);
      v13 = v12;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v27);
      sub_1AF90EDE8(0xC000000000000058, &v27, 2.0);
      v14 = sub_1AF92F69C(0xC000000000000058, &v27, a1);
      v16 = v15;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v27);
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_1AFDFE218();

      v27 = v11;
      v28 = v13;
      MEMORY[0x1B2718AE0](0xD00000000000001BLL, 0x80000001AFF3DD60);
      MEMORY[0x1B2718AE0](v14, v16);
      goto LABEL_13;
    case 0xD:
      sub_1AF90EDE8(0xC000000000000058, &v27, 2.0);
      v24 = sub_1AF92F69C(0xC000000000000058, &v27, a1);
      v26 = v25;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v27);
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_1AFDFE218();

      v27 = 0xD000000000000018;
      v28 = 0x80000001AFF3DD40;
      MEMORY[0x1B2718AE0](v24, v26);
LABEL_13:

      v22 = 41;
      v21 = 0xE100000000000000;
      goto LABEL_14;
    case 0xE:
      sub_1AF90EDE8(0xC000000000000058, &v27, 1.0);
      v4 = sub_1AF92F69C(0xC000000000000058, &v27, a1);
      v6 = v5;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v27);
      sub_1AF90EDE8(0xC000000000000058, &v27, 2.0);
      v7 = sub_1AF92F69C(0xC000000000000058, &v27, a1);
      v9 = v8;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v27);
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_1AFDFE218();

      v27 = 0xD000000000000019;
      v28 = 0x80000001AFF3DD20;
      MEMORY[0x1B2718AE0](v4, v6);

      MEMORY[0x1B2718AE0](539959337, 0xE400000000000000);
      MEMORY[0x1B2718AE0](v7, v9);

      goto LABEL_15;
    case 0xF:
      sub_1AF90EDE8(0xC000000000000058, &v27, 1.0);
      v18 = sub_1AF92F69C(0xC000000000000058, &v27, a1);
      v20 = v19;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v27);
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](40, 0xE100000000000000);
      MEMORY[0x1B2718AE0](v18, v20);
      MEMORY[0x1B2718AE0](0xD00000000000001FLL, 0x80000001AFF3DCE0);
      MEMORY[0x1B2718AE0](v18, v20);

      v21 = 0x80000001AFF3DD00;
      v22 = 0xD000000000000016;
LABEL_14:
      MEMORY[0x1B2718AE0](v22, v21);
LABEL_15:
      result = v27;
      break;
    case 0x10:
      result = 0xD000000000000036;
      break;
    case 0x12:
      result = 0xD000000000000031;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

unint64_t sub_1AF992D58()
{
  result = qword_1EB640E30;
  if (!qword_1EB640E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640E30);
  }

  return result;
}

unint64_t sub_1AF992DAC()
{
  result = qword_1EB640E38;
  if (!qword_1EB640E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640E38);
  }

  return result;
}

uint64_t sub_1AF992E00()
{
  v0 = sub_1AFDFF118();

  if (v0 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1AF992E54()
{
  result = qword_1EB640E40;
  if (!qword_1EB640E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640E40);
  }

  return result;
}

void sub_1AF992EA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AF992FB8@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF993970();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C680;
  v3 = swift_allocObject();
  *(v3 + 16) = 0xC000000000000010;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v2 + 40) = v4 | 0x4000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v2 + 48) = v5 | 0x4000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v6 + 32) = result | 0x4000000000000000;
  *a1 = v2;
  a1[1] = v6;
  a1[2] = &unk_1F24EDDA8;
  a1[3] = &unk_1F24EDD58;
  v8 = MEMORY[0x1E69E7CC0];
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v8;
  return result;
}

double sub_1AF993118@<D0>(uint64_t *a1@<X8>)
{
  sub_1AF993970();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v3 + 32) = v4 | 0x4000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE431C0;
  v6 = swift_allocObject();
  *(v6 + 16) = 0xC000000000000010;
  *(v5 + 32) = v6 | 0x8000000000000000;
  v7 = (*(*v1 + 256))();
  v8 = swift_allocObject();
  *&result = 2;
  *(v8 + 16) = xmmword_1AFE4C620;
  *(v8 + 32) = v7;
  *(v8 + 40) = 0xA000000000000000;
  *a1 = v3;
  a1[1] = v5;
  v10 = MEMORY[0x1E69E7CC0];
  a1[2] = v8;
  a1[3] = v10;
  a1[4] = v10;
  a1[5] = v10;
  return result;
}

unint64_t sub_1AF993254()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xC000000000000010;
  return v0 | 0x8000000000000000;
}

__n128 sub_1AF9933C8@<Q0>(uint64_t *a1@<X8>)
{
  sub_1AF993970();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C620;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v3 + 32) = v4 | 0x4000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v3 + 40) = v5 | 0x4000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xC000000000000010;
  *(v6 + 32) = v7 | 0x8000000000000000;
  v8 = (*(*v1 + 256))();
  v9 = swift_allocObject();
  result = xmmword_1AFE4C620;
  *(v9 + 16) = xmmword_1AFE4C620;
  *(v9 + 32) = v8;
  *(v9 + 40) = 0xA000000000000000;
  *a1 = v3;
  a1[1] = v6;
  v11 = MEMORY[0x1E69E7CC0];
  a1[2] = v9;
  a1[3] = v11;
  a1[4] = v11;
  a1[5] = v11;
  return result;
}

uint64_t sub_1AF9938B0(unsigned __int8 *a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, unint64_t, unint64_t, uint64_t))
{
  v4 = *(v2 + 24);
  v5 = *(v4 + 32);
  v6 = *a1;
  sub_1AF448650(v4);
  sub_1AF442064(v5);

  v7 = a2(12325, 0xE200000000000000, 12581, 0xE200000000000000, v5, v6);
  sub_1AF445BE4(v5);
  return v7;
}

void sub_1AF993970()
{
  if (!qword_1EB6309E8)
  {
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6309E8);
    }
  }
}

uint64_t sub_1AF9939C8(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_1AFDFD068();
  return sub_1AFDFD1C8();
}

uint64_t sub_1AF993A48(unsigned __int8 *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, unsigned __int8 a8)
{
  v9 = *(v8 + 24);
  v10 = *(v9 + 16);
  v11 = *a1;
  if (v11 == 2)
  {
    if (a5)
    {
      v21 = a5;
    }

    else
    {
      if (a3)
      {
        a4 = a2;
      }

      else
      {
        a4 = 0;
      }

      if (a3)
      {
        v21 = a3;
      }

      else
      {
        v21 = 0xE000000000000000;
      }
    }

    v17 = v21;
    v16 = a4;
    if (v10 == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

  if (v11 != 3)
  {
    goto LABEL_7;
  }

  v13 = a6;
  if (a8 <= 1u)
  {
    if (a8)
    {
      v26 = *(v9 + 32);
      sub_1AF448650(*(v8 + 24));
      sub_1AF442064(v26);

      v27 = sub_1AF993E8C(v13, a7, v26, 3);
      v29 = v28;
      sub_1AF445BE4(v26);
      switch(v10)
      {
        case 1:
          v30[0] = v27;
          v30[1] = v29;
          goto LABEL_10;
        case 2:
          v30[0] = v27;
          v30[1] = v29;
          goto LABEL_29;
        case 3:
          v30[0] = v27;
          v30[1] = v29;
          goto LABEL_32;
      }
    }

    else
    {
      switch(v10)
      {
        case 1:
          v30[0] = a6;
          v30[1] = a7;
          sub_1AF99B380(a6, a7, 0);
          goto LABEL_10;
        case 2:
          v30[0] = a6;
          v30[1] = a7;
          sub_1AF99B380(a6, a7, 0);
LABEL_29:
          v18 = 0x293125202C302528;
          v19 = 0xE800000000000000;
          goto LABEL_33;
        case 3:
          v30[0] = a6;
          v30[1] = a7;
          sub_1AF99B380(a6, a7, 0);
          v18 = 0x2C3125202C302528;
          v19 = 0xEC00000029332520;
          goto LABEL_33;
      }
    }

    while (1)
    {
LABEL_52:
      sub_1AFDFE518();
      __break(1u);
    }
  }

  if (a8 == 2)
  {
    v24 = *(v9 + 32);
    sub_1AF448650(*(v8 + 24));
    sub_1AF442064(v24);

    if (v24 >> 61 == 1)
    {
      v25 = *((v24 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1AF445BE4(v24);
      if (v25 >> 61 != 1)
      {
        if (v10 == 2)
        {
          sub_1AFDFE218();

          v30[0] = 0xD000000000000010;
          v30[1] = 0x80000001AFF3F3D0;
          MEMORY[0x1B2718AE0](v13, a7);
          v18 = 0x695B3125202C7828;
          v19 = 0xEB0000000029295DLL;
          goto LABEL_33;
        }

        if (v10 == 1)
        {
          sub_1AFDFE218();

          strcpy(v30, "%0.map(x => ");
          BYTE5(v30[1]) = 0;
          HIWORD(v30[1]) = -5120;
          MEMORY[0x1B2718AE0](v13, a7);
          v18 = 690583592;
          goto LABEL_11;
        }

        goto LABEL_52;
      }
    }

    else
    {
      sub_1AF445BE4(v24);
    }

    return sub_1AF993A48(a1, 0, 0, 0, 0, v13, a7, 0);
  }

  if (a8 != 3)
  {
LABEL_7:
    if (a3)
    {

      v16 = a2;
      v17 = a3;
      if (v10 == 1)
      {
LABEL_9:
        v30[0] = v16;
        v30[1] = v17;
LABEL_10:
        v18 = 691021096;
LABEL_11:
        v19 = 0xE400000000000000;
LABEL_33:
        MEMORY[0x1B2718AE0](v18, v19);
        return v30[0];
      }
    }

    else
    {
      v16 = 0;
      v17 = 0xE000000000000000;
      if (v10 == 1)
      {
        goto LABEL_9;
      }
    }

LABEL_27:
    if (v10 == 2)
    {
      v30[0] = v16;
      v30[1] = v17;
      goto LABEL_29;
    }

    if (v10 == 3)
    {
      v30[0] = v16;
      v30[1] = v17;
LABEL_32:
      v18 = 0x2C3125202C302528;
      v19 = 0xEC00000029322520;
      goto LABEL_33;
    }

    goto LABEL_52;
  }

  sub_1AF99B368(a6, a7, 3u);
  return v13;
}

uint64_t sub_1AF993E8C(uint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  v5 = a1;
  if (a4 == 3 && a3 >> 61 == 1)
  {
    v6 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    if (v6 >> 61 == 1)
    {

      sub_1AF9939C8(v5, a2);
      if (v7)
      {
        v8 = sub_1AFDFCD58();

        if (v8)
        {
          MEMORY[0x1B2718AE0](95, 0xE100000000000000);
          v5 = a1;
        }
      }

      v18 = sub_1AFDFEA08();
      v20 = v9;
      MEMORY[0x1B2718AE0](120, 0xE100000000000000);

      v10 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v10);

      v11 = v18;
      v19 = v5;

      MEMORY[0x1B2718AE0](v11, v20);
    }

    else
    {

      sub_1AF442064(v6);
      sub_1AF9939C8(v5, a2);
      if (v12)
      {
        v13 = sub_1AFDFCD58();

        if (v13)
        {
          MEMORY[0x1B2718AE0](95, 0xE100000000000000);
          v5 = a1;
        }
      }

      v14 = sub_1AFDFEA08();
      v16 = v15;
      v19 = v5;

      MEMORY[0x1B2718AE0](v14, v16);

      sub_1AF445BE4(v6);
    }

    return v19;
  }

  else
  {
  }

  return v5;
}

uint64_t sub_1AF99418C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 256);
  v5 = v4();
  if (v5 >> 61 == 4)
  {
    v6 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v7 = v5;
    sub_1AF442064(v6);
    sub_1AF441114(v7);
    sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1AFE4C620;
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    *(v8 + 32) = v9 | 0x8000000000000000;
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    *(v8 + 40) = v10 | 0x8000000000000000;
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1AFE431C0;
    v12 = swift_allocObject();
    *(v12 + 16) = v6;
    *(v11 + 32) = v12 | 0x8000000000000000;
    sub_1AF442064(v6);
    sub_1AF442064(v6);
    v13 = &unk_1F24F2428;
  }

  else
  {
    sub_1AF441114(v5);
    sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1AFE4C620;
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v8 + 32) = v14 | 0x4000000000000000;
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v8 + 40) = v15 | 0x4000000000000000;
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1AFE431C0;
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v11 + 32) = v16 | 0x4000000000000000;
    v17 = v4();
    v13 = swift_allocObject();
    v13[1] = xmmword_1AFE4C620;
    *(v13 + 4) = v17;
    *(v13 + 5) = 0xA000000000000000;
  }

  sub_1AF99B878(0, &unk_1EB630980, &type metadata for AnyValue, MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 64) = MEMORY[0x1E69E6530];
  *(v18 + 16) = xmmword_1AFE4C620;
  *(v18 + 32) = xmmword_1AFE87170;
  (*(v3 + 264))();
  v19 = MEMORY[0x1E69E7CC0];

  *a1 = v8;
  a1[1] = v11;
  a1[2] = v13;
  a1[3] = v19;
  a1[4] = v19;
  a1[5] = v18;
  return result;
}

double sub_1AF9944C8@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = MEMORY[0x1E69E6530];
  result = -2.0;
  *a1 = xmmword_1AFE87170;
  return result;
}

void sub_1AF99462C(void *a1@<X8>)
{
  a1[4] = MEMORY[0x1E69E63B0];
  *a1 = 0xC000000000000068;
  a1[1] = 0x3FF0000000000000;
}

uint64_t sub_1AF99464C(unsigned __int8 *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v3 + 32);
  sub_1AF448650(v3);
  sub_1AF442064(v4);

  v5 = *a1;
  sub_1AF90EDE8(v4, &v11, 0.0);
  v6 = sub_1AF92F69C(v4, &v11, v5);
  v8 = v7;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v11);
  if (v4 >> 61 == 1 && *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) >> 61 != 1)
  {
    if (v5 == 3)
    {

      v11 = 7760228;
      v12 = 0xE300000000000000;
      v10 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v10);

      MEMORY[0x1B2718AE0](0x293125202C302528, 0xE800000000000000);
    }

    else
    {
      v11 = 0;
      v12 = 0xE000000000000000;
      sub_1AFDFE218();

      v11 = 0x656C65735F786676;
      v12 = 0xEB00000000287463;
      MEMORY[0x1B2718AE0](v6, v8);
      MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF3FEB0);
      MEMORY[0x1B2718AE0](v6, v8);

      MEMORY[0x1B2718AE0](41, 0xE100000000000000);
    }
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
    sub_1AFDFE218();

    v11 = 0x203D2120312528;
    v12 = 0xE700000000000000;
    MEMORY[0x1B2718AE0](v6, v8);
    MEMORY[0x1B2718AE0](0x2F203025203F2029, 0xEE00203A20312520);
    MEMORY[0x1B2718AE0](v6, v8);
  }

  sub_1AF445BE4(v4);
  return v11;
}

uint64_t sub_1AF9948E4(unsigned __int8 *a1)
{
  v3 = *(*(v1 + 24) + 32);
  sub_1AF448650(*(v1 + 24));
  sub_1AF442064(v3);

  v4 = *a1;
  if (v4 == 3)
  {
    v5 = sub_1AF993A48(a1, 0, 0, 0, 0, 0xD000000000000014, 0x80000001AFF3FE90, 2u);
    sub_1AF445BE4(v3);
    return v5;
  }

  sub_1AF90EDE8(v3, &v14, 0.0);
  v7 = sub_1AF92F69C(v3, &v14, v4);
  v9 = v8;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v14);
  if (v4 == 2)
  {
    v10 = 0xD000000000000011;
  }

  else
  {
    v10 = 0x6D65725F67745F5FLL;
  }

  if (v4 == 2)
  {
    v11 = 0x80000001AFF3FE70;
  }

  else
  {
    v11 = 0xEE007265646E6961;
  }

  if (v3 >> 61 == 1 && *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) >> 61 != 1)
  {
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_1AFDFE218();

    v14 = 0x656C65735F786676;
    v15 = 0xEB00000000287463;
    MEMORY[0x1B2718AE0](v7, v9);
    MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
    MEMORY[0x1B2718AE0](v10, v11);

    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF3FE50);
    MEMORY[0x1B2718AE0](v7, v9);

    v12 = 41;
    v13 = 0xE100000000000000;
    goto LABEL_15;
  }

  if ((sub_1AF90F890(v3, 0xC000000000000058) & 1) == 0)
  {

    v14 = 0;
    v15 = 0xE000000000000000;
    sub_1AFDFE218();

    v14 = 0x203D3D203125;
    v15 = 0xE600000000000000;
    MEMORY[0x1B2718AE0](v7, v9);
    MEMORY[0x1B2718AE0](2113312, 0xE300000000000000);
    MEMORY[0x1B2718AE0](v7, v9);

    v12 = 0x2025203025203A20;
    v13 = 0xEA00000000003125;
LABEL_15:
    MEMORY[0x1B2718AE0](v12, v13);
    goto LABEL_16;
  }

  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1AFDFE218();

  v14 = 0x203D2120312528;
  v15 = 0xE700000000000000;
  MEMORY[0x1B2718AE0](v7, v9);
  MEMORY[0x1B2718AE0](541007913, 0xE400000000000000);
  MEMORY[0x1B2718AE0](v10, v11);

  MEMORY[0x1B2718AE0](0x293125202C302528, 0xEB00000000203A20);
  MEMORY[0x1B2718AE0](v7, v9);

LABEL_16:
  sub_1AF445BE4(v3);
  return v14;
}

unint64_t sub_1AF994C94(_BYTE *a1)
{
  if (*a1 == 3)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_1AF994D14(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == 3)
  {
    return sub_1AF993A48(a1, 0, 0, 0, 0, 0xD00000000000001ALL, 0x80000001AFF3FDF0, 2u);
  }

  v4 = *(v1 + 24);
  v5 = *(v4 + 32);
  sub_1AF448650(v4);
  sub_1AF442064(v5);

  sub_1AF90EDE8(v5, &v9, 0.0);
  v6 = sub_1AF92F69C(v5, &v9, v2);
  v8 = v7;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v9);
  if (v2 == 2)
  {

    sub_1AF445BE4(v5);
    return 0x2C302528646F6D66;
  }

  else if (v5 >> 61 == 1 && *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) >> 61 != 1)
  {
    v9 = 0;
    v10 = 0xE000000000000000;
    sub_1AFDFE218();

    v9 = 0x656C65735F786676;
    v10 = 0xEB00000000287463;
    MEMORY[0x1B2718AE0](v6, v8);

    MEMORY[0x1B2718AE0](0xD000000000000015, 0x80000001AFF3FDD0);
    MEMORY[0x1B2718AE0](0x6E73695F67745F5FLL, 0xED00006C616D726FLL);
    MEMORY[0x1B2718AE0](0x2929312528, 0xE500000000000000);
    sub_1AF445BE4(v5);
    return v9;
  }

  else
  {

    sub_1AF445BE4(v5);
    return 0xD000000000000011;
  }
}

uint64_t sub_1AF995264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE4C620;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v6 + 32) = v7 | 0x4000000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v6 + 40) = v8 | 0x4000000000000000;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = a1;
  *(v9 + 32) = result | 0x8000000000000000;
  *a3 = v6;
  a3[1] = v9;
  v11 = MEMORY[0x1E69E7CC0];
  a3[2] = a2;
  a3[3] = v11;
  a3[4] = v11;
  a3[5] = v11;
  return result;
}

unint64_t sub_1AF99549C()
{
  v0 = swift_allocObject();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1AFE4C430;
  *(v0 + 16) = v1 | 0x2000000000000000;
  return v0 | 0x8000000000000000;
}

double sub_1AF99569C@<D0>(uint64_t *a1@<X8>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C680;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v3 + 32) = v4 | 0x4000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v3 + 40) = v5 | 0x4000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v3 + 48) = v6 | 0x4000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v7 + 32) = v8 | 0x4000000000000000;
  v9 = (*(*v1 + 256))();
  v10 = swift_allocObject();
  *&result = 2;
  *(v10 + 16) = xmmword_1AFE4C620;
  *(v10 + 32) = v9;
  *(v10 + 40) = 0xA000000000000000;
  *a1 = v3;
  a1[1] = v7;
  v12 = MEMORY[0x1E69E7CC0];
  a1[2] = v10;
  a1[3] = v12;
  a1[4] = v12;
  a1[5] = v12;
  return result;
}

unint64_t sub_1AF99585C(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 < 2)
  {
    return 0xD00000000000001CLL;
  }

  if (v2 == 2)
  {
    return 0xD000000000000010;
  }

  v4 = *(v1 + 24);
  v5 = *(v4 + 32);
  sub_1AF448650(v4);
  sub_1AF442064(v5);

  v6 = sub_1AF993E8C(0x6E696D5F786676, 0xE700000000000000, v5, 3);
  v8 = v7;
  sub_1AF445BE4(v5);
  sub_1AFDFE218();

  MEMORY[0x1B2718AE0](0x202C302528, 0xE500000000000000);
  MEMORY[0x1B2718AE0](v6, v8);

  MEMORY[0x1B2718AE0](0x293225202C312528, 0xE900000000000029);
  return v6;
}

unint64_t sub_1AF9959E8(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 < 2)
  {
    return 0xD00000000000001CLL;
  }

  if (v2 == 2)
  {
    return 0xD000000000000010;
  }

  v4 = *(v1 + 24);
  v5 = *(v4 + 32);
  sub_1AF448650(v4);
  sub_1AF442064(v5);

  v6 = sub_1AF993E8C(0x78616D5F786676, 0xE700000000000000, v5, 3);
  v8 = v7;
  sub_1AF445BE4(v5);
  sub_1AFDFE218();

  MEMORY[0x1B2718AE0](0x202C302528, 0xE500000000000000);
  MEMORY[0x1B2718AE0](v6, v8);

  MEMORY[0x1B2718AE0](0x293225202C312528, 0xE900000000000029);
  return v6;
}

double sub_1AF995B80@<D0>(uint64_t a1@<X8>)
{
  sub_1AF99569C(&v5);
  v2 = v6;
  v9 = v7;
  sub_1AF91219C(&v9);
  result = *&v5;
  v4 = v8;
  *a1 = v5;
  *(a1 + 16) = v2;
  *(a1 + 24) = &unk_1F24EF180;
  *(a1 + 32) = v4;
  return result;
}

uint64_t sub_1AF995BDC(char *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v2 + 32);
  v4 = *a1;
  sub_1AF448650(v2);
  sub_1AF442064(v3);

  v5 = sub_1AF993E8C(0x6F6F6D735F786676, 0xEE00706574736874, v3, v4);
  sub_1AF445BE4(v3);
  MEMORY[0x1B2718AE0](0x2C3225202C312528, 0xEC00000029302520);
  return v5;
}

_OWORD *sub_1AF995DBC@<X0>(uint64_t *a1@<X8>)
{
  v3 = (*v1 + 256);
  v4 = *v3;
  v5 = (*v3)();
  if (v5 >> 61 == 4)
  {
    v6 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v7 = v5;
    sub_1AF442064(v6);
    sub_1AF441114(v7);
    sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1AFE431C0;
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    *(v8 + 32) = v9 | 0x8000000000000000;
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1AFE431C0;
    v11 = swift_allocObject();
    *(v11 + 16) = v6;
    *(v10 + 32) = v11 | 0x8000000000000000;
    sub_1AF442064(v6);
    result = &unk_1F24F2358;
  }

  else
  {
    sub_1AF441114(v5);
    sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1AFE431C0;
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v8 + 32) = v13 | 0x4000000000000000;
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1AFE431C0;
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v10 + 32) = v14 | 0x4000000000000000;
    v15 = v4();
    result = swift_allocObject();
    result[1] = xmmword_1AFE4C620;
    *(result + 4) = v15;
    *(result + 5) = 0xA000000000000000;
  }

  *a1 = v8;
  a1[1] = v10;
  v16 = MEMORY[0x1E69E7CC0];
  a1[2] = result;
  a1[3] = v16;
  a1[4] = v16;
  a1[5] = v16;
  return result;
}

unint64_t sub_1AF99604C(unsigned __int8 *a1)
{
  v7[0] = 0;
  v7[1] = 0xE000000000000000;
  sub_1AFDFE218();

  v8 = 0xD000000000000010;
  v9 = 0x80000001AFF3FC10;
  v2 = *a1;
  v7[3] = MEMORY[0x1E69E6448];
  LODWORD(v7[0]) = 1127481344;
  v3 = sub_1AF92F69C(0xC000000000000058, v7, v2);
  v5 = v4;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v7);
  MEMORY[0x1B2718AE0](v3, v5);

  return v8;
}

unint64_t sub_1AF99614C()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xC000000000000058;
  return v0 | 0x8000000000000000;
}

unint64_t sub_1AF996184(unsigned __int8 *a1)
{
  v7[0] = 0;
  v7[1] = 0xE000000000000000;
  sub_1AFDFE218();

  v8 = 0xD000000000000010;
  v9 = 0x80000001AFF3FBF0;
  v2 = *a1;
  v7[3] = MEMORY[0x1E69E6448];
  LODWORD(v7[0]) = 1127481344;
  v3 = sub_1AF92F69C(0xC000000000000058, v7, v2);
  v5 = v4;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v7);
  MEMORY[0x1B2718AE0](v3, v5);

  return v8;
}

uint64_t sub_1AF996354(unsigned __int8 *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v3 + 32);
  sub_1AF448650(v3);
  sub_1AF442064(v4);

  v5 = *a1;
  sub_1AF90EDE8(v4, &v12, 1.0);
  v6 = sub_1AF92F69C(v4, &v12, v5);
  v8 = v7;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v12);
  if (v5 == 3 && (v4 & 0xE000000000000000) == 0x2000000000000000 && *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) >> 61 != 1)
  {
    v12 = sub_1AF993E8C(6452595, 0xE300000000000000, v4, 3);
    v13 = v10;
    MEMORY[0x1B2718AE0](40, 0xE100000000000000);
    MEMORY[0x1B2718AE0](v6, v8);

    v9 = 0x293025202CLL;
  }

  else
  {
    v12 = v6;
    v13 = v8;
    v9 = 0x3025202D20;
  }

  MEMORY[0x1B2718AE0](v9, 0xE500000000000000);
  sub_1AF445BE4(v4);
  return v12;
}

uint64_t sub_1AF996C54@<X0>(void *a1@<X8>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000058;
  *(v2 + 32) = result | 0x8000000000000000;
  *a1 = &unk_1F24ED8B8;
  a1[1] = v2;
  v4 = MEMORY[0x1E69E7CC0];
  a1[2] = &unk_1F24ED8E0;
  a1[3] = v4;
  a1[4] = v4;
  a1[5] = v4;
  return result;
}

uint64_t sub_1AF996D08(unsigned __int8 *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v3 + 32);
  v5 = *a1;
  sub_1AF448650(v3);
  sub_1AF442064(v4);

  v6 = sub_1AF993E8C(0x746F645F786676, 0xE700000000000000, v4, v5);
  v8 = v7;
  sub_1AF445BE4(v4);
  sub_1AFDFE218();

  strcpy(v11, "(v=>Math.sqrt(");
  HIBYTE(v11[1]) = -18;
  MEMORY[0x1B2718AE0](v6, v8);

  MEMORY[0x1B2718AE0](0x292929762C7628, 0xE700000000000000);
  v9 = sub_1AF993A48(a1, 0x6E656C5F646D6973, 0xEB00000000687467, 0x6874676E656CLL, 0xE600000000000000, v11[0], v11[1], 0);

  return v9;
}

uint64_t sub_1AF996FB4(unsigned __int8 *a1)
{
  v3 = 0xE900000000000070;
  v4 = 0x6D616C635F786676;
  v5 = *(v1 + 24);
  v6 = *(v5 + 32);
  sub_1AF448650(v5);
  sub_1AF442064(v6);

  v7 = *a1;
  sub_1AF90EDE8(v6, v16, 1.0);
  v8 = sub_1AF92F69C(v6, v16, v7);
  v10 = v9;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v16);
  sub_1AF90EDE8(v6, v16, -1.0);
  v11 = sub_1AF92F69C(v6, v16, v7);
  v13 = v12;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v16);
  if (v7 == 3)
  {
    v4 = sub_1AF993E8C(0x6D616C635F786676, 0xE900000000000070, v6, 3);
    v3 = v14;
  }

  v16[0] = v4;
  v16[1] = v3;
  MEMORY[0x1B2718AE0](0x202C302528, 0xE500000000000000);
  MEMORY[0x1B2718AE0](v11, v13);

  MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
  MEMORY[0x1B2718AE0](v8, v10);

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  sub_1AF445BE4(v6);
  return v16[0];
}

unint64_t sub_1AF997264()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xC000000000000028;
  return v0 | 0x8000000000000000;
}

__n128 sub_1AF99743C@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, __n128 a3@<Q0>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE431C0;
  v6 = swift_allocObject();
  *(v6 + 16) = 0xC000000000000028;
  *(v5 + 32) = v6 | 0x8000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  result = a3;
  *(v9 + 16) = a3;
  *(v8 + 16) = v9 | 0x2000000000000000;
  *(v7 + 32) = v8 | 0x8000000000000000;
  *a2 = v5;
  a2[1] = v7;
  v11 = MEMORY[0x1E69E7CC0];
  a2[2] = a1;
  a2[3] = v11;
  a2[4] = v11;
  a2[5] = v11;
  return result;
}

unint64_t sub_1AF9976C4(_BYTE *a1)
{
  if (*a1 == 3)
  {
    return 0xD00000000000002ELL;
  }

  else
  {
    return 0xD000000000000024;
  }
}

uint64_t sub_1AF997754@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v4 + 32) = v5 | 0x4000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000058;
  *(v6 + 32) = result | 0x8000000000000000;
  *a2 = v4;
  a2[1] = v6;
  v8 = MEMORY[0x1E69E7CC0];
  a2[2] = a1;
  a2[3] = v8;
  a2[4] = v8;
  a2[5] = v8;
  return result;
}

__n128 sub_1AF997974@<Q0>(uint64_t *a1@<X8>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE4C430;
  *(v3 + 16) = v4 | 0x2000000000000000;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE4C620;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE4C430;
  *(v6 + 16) = v7 | 0x2000000000000000;
  *(v5 + 32) = v6 | 0x8000000000000000;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  result = xmmword_1AFE4C430;
  *(v9 + 16) = xmmword_1AFE4C430;
  *(v8 + 16) = v9 | 0x2000000000000000;
  *(v5 + 40) = v8 | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v5;
  v11 = MEMORY[0x1E69E7CC0];
  a1[2] = &unk_1F24F1288;
  a1[3] = v11;
  a1[4] = v11;
  a1[5] = v11;
  return result;
}

uint64_t sub_1AF997B00(unsigned __int8 *a1)
{
  v1 = sub_1AF997B4C(*a1);
  v2 = sub_1AFA5413C(v1);

  return v2;
}

uint64_t sub_1AF997B4C(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C430;
  v3 = v2 | 0x2000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE4C430;
  sub_1AF90EDE8(v4 | 0x2000000000000000, &v43, 0.0);
  v5 = sub_1AF92F69C(v4 | 0x2000000000000000, &v43, a1);
  v7 = v6;

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v43);
  v8 = sub_1AF937FF8(a1, v3);
  if ((~v8 & 0xF000000000000007) == 0)
  {

    v8 = v3;
  }

  if (a1 == 3)
  {
    v43 = 0x3D2061242074656CLL;
    v44 = 0xE900000000000020;
  }

  else
  {
    v43 = 0;
    v44 = 0xE000000000000000;
    v9 = sub_1AF937FF8(a1, v8);
    if ((~v9 & 0xF000000000000007) == 0)
    {
      sub_1AF442064(v8);
      v9 = v8;
    }

    v10 = sub_1AF94B594(a1, v9);
    v12 = v11;
    sub_1AF445BE4(v9);
    MEMORY[0x1B2718AE0](v10, v12);

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    MEMORY[0x1B2718AE0](24868, 0xE200000000000000);
    MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
  }

  MEMORY[0x1B2718AE0](v5, v7);
  MEMORY[0x1B2718AE0](59, 0xE100000000000000);

  sub_1AF445BE4(v8);

  v13 = v43;
  v14 = v44;
  sub_1AF99B878(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v13;
  *(inited + 40) = v14;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1AFE4C430;
  v17 = v16 | 0x2000000000000000;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1AFE4C430;
  sub_1AF90EDE8(v18 | 0x2000000000000000, &v43, 0.0);
  v19 = sub_1AF92F69C(v18 | 0x2000000000000000, &v43, a1);
  v21 = v20;

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v43);
  v22 = sub_1AF937FF8(a1, v17);
  if ((~v22 & 0xF000000000000007) == 0)
  {

    v22 = v17;
  }

  if (a1 == 3)
  {
    v43 = 0x3D2062242074656CLL;
    v44 = 0xE900000000000020;
  }

  else
  {
    v43 = 0;
    v44 = 0xE000000000000000;
    v23 = sub_1AF937FF8(a1, v22);
    if ((~v23 & 0xF000000000000007) == 0)
    {
      sub_1AF442064(v22);
      v23 = v22;
    }

    v24 = sub_1AF94B594(a1, v23);
    v26 = v25;
    sub_1AF445BE4(v23);
    MEMORY[0x1B2718AE0](v24, v26);

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    MEMORY[0x1B2718AE0](25124, 0xE200000000000000);
    MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
  }

  MEMORY[0x1B2718AE0](v19, v21);
  MEMORY[0x1B2718AE0](59, 0xE100000000000000);

  sub_1AF445BE4(v22);

  v27 = v43;
  v28 = v44;
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_1AFE431C0;
  *(v29 + 32) = v27;
  *(v29 + 40) = v28;
  *(v29 + 48) = 0;
  *(v29 + 56) = 0;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1AFE4C430;
  v31 = sub_1AF9316FC(3174949, 0xE300000000000000, v30 | 0x2000000000000000, 24868, 0xE200000000000000, a1);
  v33 = v32;

  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_1AFE431C0;
  *(v34 + 32) = v31;
  *(v34 + 40) = v33;
  *(v34 + 48) = 0;
  *(v34 + 56) = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1AFE4C430;
  v36 = sub_1AF9316FC(3240485, 0xE300000000000000, v35 | 0x2000000000000000, 25124, 0xE200000000000000, a1);
  v38 = v37;

  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_1AFE431C0;
  *(v39 + 32) = v36;
  *(v39 + 40) = v38;
  sub_1AF441DD8();
  *(v39 + 48) = 0;
  *(v39 + 56) = 0;
  v40 = swift_initStackObject();
  *(v40 + 16) = xmmword_1AFE4C6A0;
  *(v40 + 32) = inited;
  *(v40 + 40) = v29;
  *(v40 + 48) = &unk_1F2505F80;
  *(v40 + 56) = v34;
  *(v40 + 64) = v39;
  v41 = sub_1AFA56CA0(v40);
  swift_setDeallocating();
  sub_1AF99B878(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v41;
}

uint64_t sub_1AF9980E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE4C680;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v6 + 32) = v7 | 0x4000000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v6 + 40) = v8 | 0x4000000000000000;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v6 + 48) = v9 | 0x4000000000000000;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v10 + 32) = result | 0x4000000000000000;
  *a3 = v6;
  a3[1] = v10;
  a3[2] = a1;
  a3[3] = a2;
  v12 = MEMORY[0x1E69E7CC0];
  a3[4] = MEMORY[0x1E69E7CC0];
  a3[5] = v12;
  return result;
}

uint64_t sub_1AF9982F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xC000000000000028;
  *(v6 + 32) = v7 | 0x8000000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = a1;
  *(v8 + 32) = result | 0x8000000000000000;
  *a3 = v6;
  a3[1] = v8;
  v10 = MEMORY[0x1E69E7CC0];
  a3[2] = a2;
  a3[3] = v10;
  a3[4] = v10;
  a3[5] = v10;
  return result;
}

uint64_t sub_1AF998558@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v4 + 32) = v5 | 0x4000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v6 + 32) = result | 0x4000000000000000;
  *a2 = v4;
  a2[1] = v6;
  v8 = MEMORY[0x1E69E7CC0];
  a2[2] = a1;
  a2[3] = v8;
  a2[4] = v8;
  a2[5] = v8;
  return result;
}

__n128 sub_1AF998788@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, __n128 a4@<Q0>, __n128 a5@<Q1>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE4C620;
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v10 + 24) = v11 | 0x2000000000000000;
  *(v9 + 16) = v10 | 0x2000000000000000;
  *(v8 + 32) = v9 | 0x8000000000000000;
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  *(v12 + 16) = v13 | 0x2000000000000000;
  *(v8 + 40) = v12 | 0x8000000000000000;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AFE431C0;
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  result = a5;
  *(v16 + 16) = a5;
  *(v15 + 16) = v16 | 0x2000000000000000;
  *(v14 + 32) = v15 | 0x8000000000000000;
  *a3 = v8;
  a3[1] = v14;
  v18 = MEMORY[0x1E69E7CC0];
  a3[2] = a2;
  a3[3] = v18;
  a3[4] = v18;
  a3[5] = v18;
  return result;
}

__n128 sub_1AF998B74@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, __n128 a4@<Q0>, __n128 a5@<Q1>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE4C620;
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v10 + 24) = v11 | 0x2000000000000000;
  *(v9 + 16) = v10 | 0x2000000000000000;
  *(v8 + 32) = v9 | 0x8000000000000000;
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  *(v12 + 16) = v13 | 0x2000000000000000;
  *(v8 + 40) = v12 | 0x8000000000000000;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AFE431C0;
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  v17 = swift_allocObject();
  result = a4;
  *(v17 + 16) = a4;
  *(v16 + 24) = v17 | 0x2000000000000000;
  *(v15 + 16) = v16 | 0x2000000000000000;
  *(v14 + 32) = v15 | 0x8000000000000000;
  *a3 = v8;
  a3[1] = v14;
  v19 = MEMORY[0x1E69E7CC0];
  a3[2] = a2;
  a3[3] = v19;
  a3[4] = v19;
  a3[5] = v19;
  return result;
}

uint64_t sub_1AF998F00@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C620;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v2 + 32) = v3 | 0x4000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v2 + 40) = v4 | 0x4000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v5 + 32) = result | 0x4000000000000000;
  *a1 = v2;
  a1[1] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  a1[2] = &unk_1F24F0A30;
  a1[3] = v7;
  a1[4] = v7;
  a1[5] = v7;
  return result;
}

__n128 sub_1AF999234@<Q0>(uint64_t *a1@<X8>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = 4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE4C440;
  *(v4 + 24) = v5 | 0x2000000000000000;
  *(v3 + 16) = v4 | 0x2000000000000000;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE4C680;
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE4C430;
  *(v7 + 16) = v8 | 0x2000000000000000;
  *(v6 + 32) = v7 | 0x8000000000000000;
  v9 = swift_allocObject();
  *(v9 + 16) = 0xC000000000000028;
  *(v6 + 40) = v9 | 0x8000000000000000;
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  result = xmmword_1AFE4C430;
  *(v11 + 16) = xmmword_1AFE4C430;
  *(v10 + 16) = v11 | 0x2000000000000000;
  *(v6 + 48) = v10 | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v6;
  v13 = MEMORY[0x1E69E7CC0];
  a1[2] = &unk_1F24F2EA8;
  a1[3] = v13;
  a1[4] = v13;
  a1[5] = v13;
  return result;
}

uint64_t sub_1AF999414(unsigned __int8 *a1)
{
  v1 = sub_1AF99B53C(*a1, *a1);
  v2 = sub_1AFA5413C(v1);

  return v2;
}

__n128 sub_1AF999534@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, __n128 a4@<Q0>, __n128 a5@<Q1>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v10 + 24) = v11 | 0x2000000000000000;
  *(v9 + 16) = v10 | 0x2000000000000000;
  *(v8 + 32) = v9 | 0x8000000000000000;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AFE431C0;
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  result = a5;
  *(v14 + 16) = a5;
  *(v13 + 16) = v14 | 0x2000000000000000;
  *(v12 + 32) = v13 | 0x8000000000000000;
  *a3 = v8;
  a3[1] = v12;
  v16 = MEMORY[0x1E69E7CC0];
  a3[2] = a2;
  a3[3] = v16;
  a3[4] = v16;
  a3[5] = v16;
  return result;
}

double sub_1AF99972C@<D0>(uint64_t *a1@<X8>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = 4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE4C440;
  *(v4 + 24) = v5 | 0x2000000000000000;
  *(v3 + 16) = v4 | 0x2000000000000000;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = 3;
  v9 = swift_allocObject();
  *&result = 3;
  *(v9 + 16) = xmmword_1AFE4C430;
  *(v8 + 24) = v9 | 0x2000000000000000;
  *(v7 + 16) = v8 | 0x2000000000000000;
  *(v6 + 32) = v7 | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v6;
  v11 = MEMORY[0x1E69E7CC0];
  a1[2] = &unk_1F24EF490;
  a1[3] = v11;
  a1[4] = v11;
  a1[5] = v11;
  return result;
}

uint64_t sub_1AF999940@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = 4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE4C440;
  *(v4 + 24) = v5 | 0x2000000000000000;
  *(v3 + 16) = v4 | 0x2000000000000000;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000028;
  *(v6 + 32) = result | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v6;
  v8 = MEMORY[0x1E69E7CC0];
  a1[2] = &unk_1F24EE7D0;
  a1[3] = v8;
  a1[4] = v8;
  a1[5] = v8;
  return result;
}

unint64_t sub_1AF999AA0(_BYTE *a1)
{
  if (*a1 == 3)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

__n128 sub_1AF999C34@<Q0>(uint64_t *a1@<X8>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C620;
  v3 = swift_allocObject();
  *(v3 + 16) = 0xC000000000000028;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE4C430;
  *(v4 + 16) = v5 | 0x2000000000000000;
  *(v2 + 40) = v4 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  result = xmmword_1AFE4C430;
  *(v8 + 16) = xmmword_1AFE4C430;
  *(v7 + 16) = v8 | 0x2000000000000000;
  *(v6 + 32) = v7 | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v6;
  v10 = MEMORY[0x1E69E7CC0];
  a1[2] = &unk_1F24F0090;
  a1[3] = v10;
  a1[4] = v10;
  a1[5] = v10;
  return result;
}

uint64_t sub_1AF999E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE4C620;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xC000000000000028;
  *(v6 + 32) = v7 | 0x8000000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v6 + 40) = v8 | 0x8000000000000000;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000028;
  *(v9 + 32) = result | 0x8000000000000000;
  *a3 = v6;
  a3[1] = v9;
  v11 = MEMORY[0x1E69E7CC0];
  a3[2] = a2;
  a3[3] = v11;
  a3[4] = v11;
  a3[5] = v11;
  return result;
}

uint64_t sub_1AF99A078@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE4C680;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000028;
  *(v4 + 32) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = 0xC000000000000028;
  *(v4 + 40) = v6 | 0x8000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xC000000000000058;
  *(v4 + 48) = v7 | 0x8000000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000028;
  *(v8 + 32) = result | 0x8000000000000000;
  *a2 = v4;
  a2[1] = v8;
  v10 = MEMORY[0x1E69E7CC0];
  a2[2] = a1;
  a2[3] = v10;
  a2[4] = v10;
  a2[5] = v10;
  return result;
}

uint64_t sub_1AF99A278@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE4C6A0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000028;
  *(v4 + 32) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = 0xC000000000000028;
  *(v4 + 40) = v6 | 0x8000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xC000000000000028;
  *(v4 + 48) = v7 | 0x8000000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = 0xC000000000000028;
  *(v4 + 56) = v8 | 0x8000000000000000;
  v9 = swift_allocObject();
  *(v9 + 16) = 0xC000000000000058;
  *(v4 + 64) = v9 | 0x8000000000000000;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000028;
  *(v10 + 32) = result | 0x8000000000000000;
  *a2 = v4;
  a2[1] = v10;
  v12 = MEMORY[0x1E69E7CC0];
  a2[2] = a1;
  a2[3] = v12;
  a2[4] = v12;
  a2[5] = v12;
  return result;
}

unint64_t sub_1AF99A464(_BYTE *a1)
{
  sub_1AFDFE218();

  if (*a1)
  {
    v2 = 0;
  }

  else
  {
    v2 = 95;
  }

  if (*a1)
  {
    v3 = 0xE000000000000000;
  }

  else
  {
    v3 = 0xE100000000000000;
  }

  MEMORY[0x1B2718AE0](v2, v3);

  MEMORY[0x1B2718AE0](0x293125202C302528, 0xE800000000000000);
  return 0xD000000000000019;
}

uint64_t sub_1AF99A570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE4C620;
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE4C430;
  *(v7 + 16) = v8 | 0x2000000000000000;
  *(v6 + 32) = v7 | 0x8000000000000000;
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE4C430;
  *(v9 + 16) = v10 | 0x2000000000000000;
  *(v6 + 40) = v9 | 0x8000000000000000;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000028;
  *(v11 + 32) = result | 0x8000000000000000;
  *a3 = v6;
  a3[1] = v11;
  a3[2] = a1;
  a3[3] = a2;
  v13 = MEMORY[0x1E69E7CC0];
  a3[4] = MEMORY[0x1E69E7CC0];
  a3[5] = v13;
  return result;
}

uint64_t sub_1AF99A814@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C680;
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE4C430;
  *(v4 + 16) = v5 | 0x2000000000000000;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE4C430;
  *(v6 + 16) = v7 | 0x2000000000000000;
  *(v3 + 40) = v6 | 0x8000000000000000;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE4C430;
  *(v9 + 16) = v10 | 0x2000000000000000;
  *(v8 + 16) = v9;
  *(v3 + 48) = v8 | 0x8000000000000000;
  sub_1AF99B878(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E6530];
  *(v11 + 64) = MEMORY[0x1E69E6530];
  *(v11 + 16) = xmmword_1AFE4C680;
  *(v11 + 32) = xmmword_1AFE87170;
  *(v11 + 104) = v12;
  *(v11 + 72) = xmmword_1AFE87170;
  sub_1AF99B394();
  v18[3] = v13;
  v18[0] = swift_allocObject();
  *(v18[0] + 16) = xmmword_1AFE20160;
  sub_1AF975674(v18, v19);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v18);
  v14 = swift_allocObject();
  *(v14 + 16) = 0xC000000000000000;
  *(v11 + 144) = &type metadata for AnyValue;
  v15 = swift_allocObject();
  *(v11 + 120) = v15;
  sub_1AF914FF0(v19, v15 + 16);
  *(v11 + 112) = v14;
  sub_1AF9151B0(v19);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000058;
  *(v16 + 32) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v16;
  a1[2] = &unk_1F24F3210;
  a1[3] = &unk_1F24F3240;
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v11;
  return result;
}

unint64_t sub_1AF99AAE0()
{
  type metadata accessor for NilNode(0);
  if (swift_dynamicCastClass())
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1AF99AB8C@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C680;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v3 + 32) = v4 | 0x4000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v3 + 40) = v5 | 0x4000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v3 + 48) = v6 | 0x4000000000000000;
  sub_1AF99B878(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E6530];
  *(v7 + 16) = xmmword_1AFE4C680;
  *(v7 + 32) = xmmword_1AFE87170;
  v9 = MEMORY[0x1E69E63B0];
  *(v7 + 64) = v8;
  *(v7 + 72) = 0xC000000000000068;
  *(v7 + 80) = 0;
  *(v7 + 144) = v9;
  *(v7 + 104) = v9;
  *(v7 + 112) = 0xC000000000000068;
  *(v7 + 120) = 0x3FF0000000000000;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v10 + 32) = result | 0x4000000000000000;
  *a1 = v3;
  a1[1] = v10;
  a1[2] = &unk_1F24EE4F0;
  a1[3] = &unk_1F24EE4A0;
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v7;
  return result;
}

uint64_t sub_1AF99AD40(char *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v2 + 32);
  v4 = *a1;
  sub_1AF448650(v2);
  sub_1AF442064(v3);

  v5 = sub_1AF993E8C(0x616D65725F786676, 0xEC00000031305F70, v3, v4);
  sub_1AF445BE4(v3);
  MEMORY[0x1B2718AE0](0x2C3125202C302528, 0xEC00000029322520);
  return v5;
}

__n128 sub_1AF99AE3C@<Q0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C6A0;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v3 + 32) = v4 | 0x4000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v3 + 40) = v5 | 0x4000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v3 + 48) = v6 | 0x4000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v3 + 56) = v7 | 0x4000000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v3 + 64) = v8 | 0x4000000000000000;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE431C0;
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v9 + 32) = v10 | 0x4000000000000000;
  sub_1AF99B878(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E63B0];
  result = xmmword_1AFE4C6A0;
  *(v11 + 16) = xmmword_1AFE4C6A0;
  *(v11 + 32) = 0xC000000000000068;
  *(v11 + 40) = 0;
  *(v11 + 72) = 0xC000000000000068;
  *(v11 + 80) = 0;
  *(v11 + 64) = v12;
  *(v11 + 112) = 0xC000000000000068;
  *(v11 + 120) = 0x3FF0000000000000;
  *(v11 + 104) = v12;
  *(v11 + 152) = 0xC000000000000068;
  *(v11 + 160) = 0;
  *(v11 + 144) = v12;
  *(v11 + 224) = v12;
  *(v11 + 192) = 0xC000000000000068;
  *(v11 + 200) = 0x3FF0000000000000;
  *(v11 + 184) = v12;
  *a1 = v3;
  a1[1] = v9;
  a1[2] = &unk_1F24F3580;
  a1[3] = &unk_1F24F35B0;
  a1[4] = &unk_1F24F3620;
  a1[5] = v11;
  return result;
}

uint64_t sub_1AF99B028(char *a1)
{
  v2 = *(*(v1 + 24) + 32);
  v3 = *a1;
  sub_1AF448650(*(v1 + 24));
  sub_1AF442064(v2);

  v4 = sub_1AF993E8C(0x78696D5F786676, 0xE700000000000000, v2, v3);
  sub_1AF445BE4(v2);
  v5 = *(v1 + 24);
  v6 = *(v5 + 32);
  sub_1AF448650(v5);
  sub_1AF442064(v6);

  v7 = sub_1AF993E8C(0x616D65725F786676, 0xEC00000031305F70, v6, v3);
  v9 = v8;
  sub_1AF445BE4(v6);
  sub_1AFDFE218();

  MEMORY[0x1B2718AE0](0x2C3425202C332528, 0xE900000000000020);
  MEMORY[0x1B2718AE0](v7, v9);

  MEMORY[0x1B2718AE0](0x2C3125202C302528, 0xED00002929322520);
  return v4;
}

uint64_t sub_1AF99B1CC@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C680;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v2 + 32) = v3 | 0x4000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v2 + 40) = v4 | 0x4000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v2 + 48) = v5 | 0x4000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000010;
  *(v6 + 32) = result | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v6;
  a1[2] = &unk_1F24EF540;
  a1[3] = &unk_1F24EF4F0;
  v8 = MEMORY[0x1E69E7CC0];
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v8;
  return result;
}

uint64_t sub_1AF99B368(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_1AF99B380(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1AF99B368(a1, a2, a3);
  }

  return a1;
}

void sub_1AF99B394()
{
  if (!qword_1ED72F740)
  {
    sub_1AF43A0C8();
    v0 = sub_1AFDFF228();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED72F740);
    }
  }
}

uint64_t sub_1AF99B3F0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != 3)
  {
    goto LABEL_5;
  }

  v8 = *(v4 + 24);
  v9 = *(v8 + 32);
  sub_1AF448650(v8);
  sub_1AF442064(v9);

  if (v9 >> 61 != 1)
  {
    sub_1AF445BE4(v9);
LABEL_5:
    v13 = 2109477;
    MEMORY[0x1B2718AE0](a2, a3);
    MEMORY[0x1B2718AE0](3220768, 0xE300000000000000);
    return v13;
  }

  v10 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  sub_1AF442064(v10);
  sub_1AF445BE4(v9);
  v13 = a4;

  v11 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v11);

  MEMORY[0x1B2718AE0](0x293125202C302528, 0xE800000000000000);
  sub_1AF445BE4(v10);
  return v13;
}

uint64_t sub_1AF99B53C(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE4C430;
  v6 = sub_1AF9316FC(3174949, 0xE300000000000000, v5 | 0x2000000000000000, 0xD000000000000017, 0x80000001AFF3F750, a1);
  v8 = v7;

  sub_1AF99B878(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v6;
  *(inited + 40) = v8;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v10 = sub_1AF937FF8(a2, 0xC000000000000028);
  v11 = v10;
  if (v4 == 3)
  {
    v12 = 0xD000000000000015;
  }

  else
  {
    v12 = 0xD00000000000001FLL;
  }

  if (v4 == 3)
  {
    v13 = "vfx_quat_(vfx_get_rotation(%0))";
  }

  else
  {
    v13 = "vfx_get_scale_2D(%0)";
  }

  if ((~v10 & 0xF000000000000007) != 0)
  {
    v14 = v10;
  }

  else
  {
    v14 = 0xC000000000000028;
  }

  v15 = sub_1AF9316FC(3240485, 0xE300000000000000, v14, v12, v13 | 0x8000000000000000, a1);
  v17 = v16;

  sub_1AF914F8C(v11);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1AFE431C0;
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  *(v18 + 48) = 0;
  *(v18 + 56) = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1AFE4C430;
  v20 = swift_allocObject();
  *(v20 + 16) = 4;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1AFE4C440;
  *(v20 + 24) = v21 | 0x2000000000000000;
  v22 = sub_1AF993E8C(0x5F7465675F786676, 0xED0000656C616373, v20 | 0x2000000000000000, a1);
  v24 = v23;

  MEMORY[0x1B2718AE0](691021096, 0xE400000000000000);
  v25 = sub_1AF9316FC(3306021, 0xE300000000000000, v19 | 0x2000000000000000, v22, v24, a1);
  v27 = v26;

  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_1AFE431C0;
  *(v28 + 32) = v25;
  *(v28 + 40) = v27;
  sub_1AF441DD8();
  *(v28 + 48) = 0;
  *(v28 + 56) = 0;
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_1AFE4C680;
  *(v29 + 32) = inited;
  *(v29 + 40) = v18;
  *(v29 + 48) = v28;
  v30 = sub_1AFA56CA0(v29);
  swift_setDeallocating();
  sub_1AF99B878(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v30;
}

void sub_1AF99B878(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AF99BA5C@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF6E53A0(0, &qword_1EB6309E8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C620;
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE4C430;
  *(v3 + 16) = v4 | 0x2000000000000000;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000058;
  *(v2 + 40) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000028;
  *(v6 + 32) = result | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v6;
  a1[2] = &unk_1F24F27C8;
  a1[3] = &unk_1F24F27F8;
  v8 = MEMORY[0x1E69E7CC0];
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v8;
  return result;
}

uint64_t sub_1AF99BC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, __n128 a4@<Q0>)
{
  sub_1AF6E53A0(0, &qword_1EB6309E8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v8 + 16) = v9 | 0x2000000000000000;
  *(v7 + 32) = v8 | 0x8000000000000000;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000028;
  *(v10 + 32) = result | 0x8000000000000000;
  *a3 = v7;
  a3[1] = v10;
  a3[2] = a1;
  a3[3] = a2;
  v12 = MEMORY[0x1E69E7CC0];
  a3[4] = MEMORY[0x1E69E7CC0];
  a3[5] = v12;
  return result;
}

uint64_t sub_1AF99BED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1AF6E53A0(0, &qword_1EB6309E8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xC000000000000058;
  *(v6 + 32) = v7 | 0x8000000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000028;
  *(v8 + 32) = result | 0x8000000000000000;
  *a3 = v6;
  a3[1] = v8;
  a3[2] = a1;
  a3[3] = a2;
  v10 = MEMORY[0x1E69E7CC0];
  a3[4] = MEMORY[0x1E69E7CC0];
  a3[5] = v10;
  return result;
}

uint64_t sub_1AF99C144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, __n128 a5@<Q0>)
{
  sub_1AF6E53A0(0, &qword_1EB6309E8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE431C0;
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v11 + 24) = v12 | 0x2000000000000000;
  *(v10 + 16) = v11 | 0x2000000000000000;
  *(v9 + 32) = v10 | 0x8000000000000000;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000028;
  *(v13 + 32) = result | 0x8000000000000000;
  *a4 = v9;
  a4[1] = v13;
  a4[2] = a2;
  a4[3] = a3;
  v15 = MEMORY[0x1E69E7CC0];
  a4[4] = MEMORY[0x1E69E7CC0];
  a4[5] = v15;
  return result;
}

uint64_t sub_1AF99C2DC()
{
  sub_1AFDFE218();
  v0 = swift_allocObject();
  *(v0 + 16) = 3;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1AFE4C430;
  *(v0 + 24) = v1 | 0x2000000000000000;
  sub_1AF90D394(v0 | 0x2000000000000000);

  sub_1AF9A0BAC();

  v2 = sub_1AFDFDDB8();

  sub_1AF701628();

  sub_1AF725990();
  sub_1AFDFD0A8();

  MEMORY[0x1B2718AE0](0xD00000000000001CLL, 0x80000001AFF40380);
  return v2;
}

double sub_1AF99C508@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1AF6E53A0(0, &qword_1EB6309E8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v8 + 32) = v9 | 0x8000000000000000;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE431C0;
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = 3;
  v13 = swift_allocObject();
  *&result = 3;
  *(v13 + 16) = xmmword_1AFE4C430;
  *(v12 + 24) = v13 | 0x2000000000000000;
  *(v11 + 16) = v12 | 0x2000000000000000;
  *(v10 + 32) = v11 | 0x8000000000000000;
  *a4 = v8;
  a4[1] = v10;
  a4[2] = a2;
  a4[3] = a3;
  v15 = MEMORY[0x1E69E7CC0];
  a4[4] = MEMORY[0x1E69E7CC0];
  a4[5] = v15;
  return result;
}

double sub_1AF99C6B0@<D0>(uint64_t *a1@<X8>)
{
  sub_1AF6E53A0(0, &qword_1EB6309E8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  v3 = swift_allocObject();
  *(v3 + 16) = 0xC000000000000028;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = 4;
  v7 = swift_allocObject();
  *&result = 4;
  *(v7 + 16) = xmmword_1AFE4C440;
  *(v6 + 24) = v7 | 0x2000000000000000;
  *(v5 + 16) = v6 | 0x2000000000000000;
  *(v4 + 32) = v5 | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v4;
  a1[2] = &unk_1F24F29B8;
  a1[3] = &unk_1F24F29E8;
  v9 = MEMORY[0x1E69E7CC0];
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v9;
  return result;
}

uint64_t sub_1AF99C840()
{
  sub_1AFDFE218();
  v0 = swift_allocObject();
  *(v0 + 16) = 4;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1AFE4C440;
  *(v0 + 24) = v1 | 0x2000000000000000;
  sub_1AF90D394(v0 | 0x2000000000000000);

  sub_1AF9A0BAC();

  v2 = sub_1AFDFDDB8();

  sub_1AF701628();

  sub_1AF725990();
  sub_1AFDFD0A8();

  MEMORY[0x1B2718AE0](0xD00000000000001ALL, 0x80000001AFF40270);
  return v2;
}

double sub_1AF99C9D4@<D0>(uint64_t *a1@<X8>)
{
  sub_1AF6E53A0(0, &qword_1EB6309E8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C620;
  v3 = swift_allocObject();
  *(v3 + 16) = 0xC000000000000028;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE4C430;
  *(v4 + 16) = v5 | 0x2000000000000000;
  *(v2 + 40) = v4 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = 4;
  v9 = swift_allocObject();
  *&result = 4;
  *(v9 + 16) = xmmword_1AFE4C440;
  *(v8 + 24) = v9 | 0x2000000000000000;
  *(v7 + 16) = v8 | 0x2000000000000000;
  *(v6 + 32) = v7 | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v6;
  a1[2] = &unk_1F24F2638;
  a1[3] = &unk_1F24F2668;
  v11 = MEMORY[0x1E69E7CC0];
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v11;
  return result;
}
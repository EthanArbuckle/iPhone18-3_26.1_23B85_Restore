unint64_t sub_1D89BDD8C()
{
  result = qword_1ECA66D98;
  if (!qword_1ECA66D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66D98);
  }

  return result;
}

unint64_t sub_1D89BDE04()
{
  result = qword_1ECA66DA8;
  if (!qword_1ECA66DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66DA8);
  }

  return result;
}

unint64_t sub_1D89BDE6C()
{
  result = qword_1ECA66DB8;
  if (!qword_1ECA66DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66DB8);
  }

  return result;
}

unint64_t sub_1D89BDEC4()
{
  result = qword_1ECA66DC0;
  if (!qword_1ECA66DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66DC0);
  }

  return result;
}

unint64_t sub_1D89BDF1C()
{
  result = qword_1ECA66DC8;
  if (!qword_1ECA66DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66DC8);
  }

  return result;
}

uint64_t SendableTransfer.unwrapped<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[2] = *(*(a1 + 16) + 16);
  v3 = type metadata accessor for SendableTransfer();
  return sub_1D89BE1E4(sub_1D89BE1C4, v6, MEMORY[0x1E69E73E0], v3, v4, a2);
}

uint64_t sub_1D89BE0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  return (*(v5 + 32))(a3, v7, a2);
}

uint64_t sub_1D89BE1E4@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t SendableTransfer<A>.hashValue.getter()
{
  sub_1D8B16D20();
  sub_1D8B157A0();
  return sub_1D8B16D80();
}

uint64_t sub_1D89BE520()
{
  sub_1D8B16D20();
  SendableTransfer<A>.hash(into:)();
  return sub_1D8B16D80();
}

uint64_t sub_1D89BE5BC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D89BE62C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_1D89BE76C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t SiriStreamingVoicePlayer.Metadata.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SiriStreamingVoicePlayer.Metadata.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SiriStreamingVoicePlayer.Metadata.text.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SiriStreamingVoicePlayer.Metadata.text.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SiriStreamingVoicePlayer.Metadata.localeIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SiriStreamingVoicePlayer.Metadata.localeIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t SiriStreamingVoicePlayer.Metadata.init(title:text:localeIdentifier:image:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t sub_1D89BEB74()
{
  type metadata accessor for SiriStreamingVoicePlayer();
  v0 = swift_allocObject();
  result = sub_1D89C27A8();
  qword_1ECA66DD0 = v0;
  return result;
}

uint64_t static SiriStreamingVoicePlayer.shared.getter()
{
  if (qword_1ECA62240 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D89BEC10@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1D89BECF4()
{
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t type metadata accessor for SiriStreamingVoicePlayer()
{
  result = qword_1ECA66E30;
  if (!qword_1ECA66E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D89BEDF4(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer);
    sub_1D8B13510();
  }

  return result;
}

void (*sub_1D89BEF30(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC22VisualIntelligenceCore24SiriStreamingVoicePlayer___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D8B13540();

  v4[7] = sub_1D898CA88();
  return sub_1D89BF068;
}

void sub_1D89BF068(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1D8B13530();

  free(v1);
}

uint64_t sub_1D89BF0FC()
{
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  return *(v0 + 17);
}

uint64_t sub_1D89BF19C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_1D89BF244(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer);
    sub_1D8B13510();
  }

  return result;
}

uint64_t sub_1D89BF354()
{
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  swift_beginAccess();
  if (*(v0 + 16))
  {
    v1 = 0;
  }

  else
  {
    swift_getKeyPath();
    sub_1D8B13520();

    v1 = *(v0 + 17) ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_1D89BF464()
{
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  return swift_unknownObjectRetain();
}

uint64_t sub_1D89BF508@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  *a2 = *(v3 + 32);
  return swift_unknownObjectRetain();
}

uint64_t sub_1D89BF5B4()
{
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer);
  sub_1D8B13510();
}

id sub_1D89BF680()
{
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  v1 = *(v0 + 40);

  return v1;
}

id sub_1D89BF730@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

void sub_1D89BF7E8(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  sub_1D881F764(0, &unk_1ECA66E48);
  v5 = v4;
  v6 = sub_1D8B16400();

  if (v6)
  {
    v7 = *(v2 + 40);
    *(v2 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer);
    sub_1D8B13510();
  }
}

void sub_1D89BF954(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  v8 = v1[12];
  v9 = v1[13];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  sub_1D89C2F2C(v3, v4, v5, v6, v7, v8, v9);
}

void sub_1D89BFA18(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  v4 = v3[7];
  v5 = v3[8];
  v6 = v3[9];
  v7 = v3[10];
  v8 = v3[11];
  v9 = v3[12];
  v10 = v3[13];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
  sub_1D89C2F2C(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D89BFADC()
{
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer);
  sub_1D8B13510();
}

void sub_1D89BFBC0(void *a1, uint64_t a2)
{
  v2 = a1[7];
  v3 = a1[8];
  v4 = *(a2 + 16);
  *(a1 + 7) = *a2;
  v5 = a1[9];
  v6 = a1[10];
  v7 = a1[11];
  v8 = a1[12];
  v9 = a1[13];
  *(a1 + 9) = v4;
  *(a1 + 11) = *(a2 + 32);
  a1[13] = *(a2 + 48);
  sub_1D89C3088(a2, v10);
  sub_1D89C2A28(v2, v3, v5, v6, v7, v8, v9);
}

uint64_t sub_1D89BFC60()
{
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  v1 = *(v0 + 112);

  return v1;
}

uint64_t sub_1D89BFD10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  v4 = *(v3 + 120);
  *a2 = *(v3 + 112);
  a2[1] = v4;
}

uint64_t sub_1D89BFDBC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 112) == a1 && *(v2 + 120) == a2;
  if (v5 || (sub_1D8B16BA0() & 1) != 0)
  {
    *(v2 + 112) = a1;
    *(v2 + 120) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer);
    sub_1D8B13510();
  }
}

void sub_1D89BFF1C()
{
  v1 = v0;
  swift_getKeyPath();
  v5 = v0;
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  swift_beginAccess();
  if (*(v0 + 16))
  {
    swift_getKeyPath();
    sub_1D8B13520();

    [*(v0 + 40) sendCommand:1 options:0 completion:{0, v0, v0}];
  }

  else
  {
    v2 = *(v0 + 24);
    swift_getKeyPath();
    sub_1D8B13520();

    v3 = sub_1D8B15940();

    v4 = [v2 getPlaybackStatusForIdentifier_];

    if (v4 == 3)
    {
      sub_1D89C10DC();
    }

    else
    {
      sub_1D89C0DB8();
    }
  }
}

void sub_1D89C00BC(__int128 *a1)
{
  v2 = v1;
  v4 = sub_1D8B13240();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[1];
  v45 = *a1;
  v46 = v7;
  v47 = a1[2];
  v48 = *(a1 + 6);
  v9 = *a1;
  v8 = *(a1 + 1);
  v11 = *(a1 + 2);
  v10 = *(a1 + 3);
  v12 = *(a1 + 4);
  v13 = *(a1 + 40);
  if (*(v2 + 17) == 1)
  {
    *(v2 + 17) = 1;
  }

  else
  {
    v40 = *(a1 + 40);
    v38 = v12;
    v39 = v10;
    KeyPath = swift_getKeyPath();
    v37[1] = v37;
    MEMORY[0x1EEE9AC00](KeyPath);
    v37[-2] = v2;
    LOBYTE(v37[-1]) = 1;
    v49[0] = v2;
    sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer);
    sub_1D8B13510();

    v12 = v38;
    v10 = v39;
    v13 = v40;
  }

  v49[0] = v9;
  v49[1] = v8;
  v49[2] = v11;
  v49[3] = v10;
  v49[4] = v12;
  v50 = v13;
  v15 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v15);
  v37[-2] = v2;
  v37[-1] = v49;
  v43[0] = v2;
  sub_1D89C2880(&v45, v44);
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer);
  sub_1D8B13510();
  sub_1D89C28B8(&v45);

  sub_1D8B13230();
  v16 = sub_1D8B131E0();
  v18 = v17;
  (*(v41 + 8))(v6, v42);
  sub_1D89BFDBC(v16, v18);
  if (qword_1ECA621C8 != -1)
  {
    swift_once();
  }

  v19 = sub_1D8B151E0();
  __swift_project_value_buffer(v19, qword_1ECA66AC8);
  sub_1D89C2880(&v45, v44);
  v20 = sub_1D8B151C0();
  v21 = sub_1D8B16200();
  sub_1D89C28B8(&v45);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v44[0] = v23;
    *v22 = 136315394;
    v24 = v46;

    v25 = sub_1D89AC714(v24, *(&v24 + 1), v44);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    v26 = v47;

    v27 = sub_1D89AC714(v26, *(&v26 + 1), v44);

    *(v22 + 14) = v27;
    _os_log_impl(&dword_1D8783000, v20, v21, "Starting to play Siri audio for Read Aloud: %s with locale identifier: %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v23, -1, -1);
    MEMORY[0x1DA721330](v22, -1, -1);
  }

  swift_getKeyPath();
  v44[0] = v2;
  sub_1D8B13520();

  v28 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66DE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8B1AB90;
  v44[0] = *MEMORY[0x1E69B1168];
  v30 = v44[0];
  v31 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66DF0);
  sub_1D89C28E8();
  sub_1D8B166A0();
  *(inited + 96) = MEMORY[0x1E69E6530];
  *(inited + 72) = 0;
  sub_1D893CDD0(inited);
  swift_setDeallocating();
  sub_1D89C299C(inited + 32);
  v32 = sub_1D8B15710();

  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v35 = v46;
  *(v34 + 24) = v45;
  *(v34 + 16) = v33;
  *(v34 + 40) = v35;
  *(v34 + 56) = v47;
  *(v34 + 72) = v48;
  v43[4] = sub_1D89C2A04;
  v43[5] = v34;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 1107296256;
  v43[2] = sub_1D89C0D50;
  v43[3] = &block_descriptor_7;
  v36 = _Block_copy(v43);
  sub_1D89C2880(&v45, v44);

  [v31 sendCommand:3 options:v32 completion:v36];
  _Block_release(v36);
}

uint64_t sub_1D89C074C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D8B155B0();
  v18 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D8B155E0();
  v8 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D881F764(0, &qword_1EE0E3730);
  v11 = sub_1D8B162C0();
  v12 = swift_allocObject();
  v13 = *(a3 + 16);
  *(v12 + 24) = *a3;
  *(v12 + 16) = a2;
  *(v12 + 40) = v13;
  *(v12 + 56) = *(a3 + 32);
  *(v12 + 72) = *(a3 + 48);
  aBlock[4] = sub_1D89C2FE8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D89B1AA0;
  aBlock[3] = &block_descriptor_77;
  v14 = _Block_copy(aBlock);

  sub_1D89C2880(a3, v19);

  sub_1D8B155D0();
  v19[0] = MEMORY[0x1E69E7CC0];
  sub_1D89C2E54(&qword_1EE0E3A50, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA66838);
  sub_1D89C2E9C(&qword_1EE0E3950, &unk_1ECA66838);
  sub_1D8B16570();
  MEMORY[0x1DA71F7C0](0, v10, v7, v14);
  _Block_release(v14);

  (*(v18 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v17);
}

uint64_t sub_1D89C0A5C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *(result + 24);
    v6 = sub_1D8B15940();
    v7 = sub_1D8B15940();
    swift_getKeyPath();
    sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer);
    sub_1D8B13520();

    v8 = sub_1D8B15940();

    v9 = sub_1D8B15940();
    v10 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];
    [v5 readText:v6 textBody:v7 textIdentifier:v8 textLocale:v9 textLeadingImage:v10 activationSource:3];

    swift_beginAccess();
    if (*(v4 + 16) == 1)
    {
      *(v4 + 16) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D8B13510();
    }

    sub_1D89C18A8();
    if (*(v4 + 17))
    {
      v12 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v12);
      sub_1D8B13510();
    }

    else
    {
      *(v4 + 17) = 0;
    }
  }

  return result;
}

void sub_1D89C0D50(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1D89C0DB8()
{
  v1 = v0;
  if (qword_1ECA621C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D8B151E0();
  __swift_project_value_buffer(v2, qword_1ECA66AC8);
  v3 = sub_1D8B151C0();
  v4 = sub_1D8B16200();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D8783000, v3, v4, "Trying to start media playback from the beginning", v5, 2u);
    MEMORY[0x1DA721330](v5, -1, -1);
  }

  swift_getKeyPath();
  *&v17 = v1;
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  v6 = v1[8];
  if (v6)
  {
    v8 = v1[12];
    v7 = v1[13];
    v10 = v1[10];
    v9 = v1[11];
    v11 = v1[9];
    *&v17 = v1[7];
    v12 = v17;
    *(&v17 + 1) = v6;
    v18 = v11;
    v19 = v10;
    v20 = v9;
    v21 = v8;
    v22 = v7;

    v13 = v7;
    sub_1D89C00BC(&v17);
    sub_1D89C2A28(v12, v6, v11, v10, v9, v8, v7);
  }

  else
  {
    v14 = sub_1D8B151C0();
    v15 = sub_1D8B16200();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D8783000, v14, v15, "There's no metadata to resume.", v16, 2u);
      MEMORY[0x1DA721330](v16, -1, -1);
    }
  }
}

uint64_t sub_1D89C1018(uint64_t a1)
{
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  [*(v1 + 40) sendCommand:a1 options:0 completion:0];
  return sub_1D89C18A8();
}

void sub_1D89C10DC()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  if (!*(v0 + 64))
  {
    if (qword_1ECA621C8 != -1)
    {
      swift_once();
    }

    v5 = sub_1D8B151E0();
    __swift_project_value_buffer(v5, qword_1ECA66AC8);
    v6 = sub_1D8B151C0();
    v7 = sub_1D8B16200();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_13;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "No metadata available to resume.";
    goto LABEL_12;
  }

  v2 = *(v0 + 24);
  swift_getKeyPath();
  sub_1D8B13520();

  v3 = sub_1D8B15940();

  v4 = [v2 getPlaybackStatusForIdentifier_];

  if (v4 == 3)
  {
    swift_getKeyPath();
    sub_1D8B13520();

    [*(v1 + 40) sendCommand:0 options:0 completion:0];
    sub_1D89C18A8();
    return;
  }

  if (qword_1ECA621C8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D8B151E0();
  __swift_project_value_buffer(v10, qword_1ECA66AC8);
  v6 = sub_1D8B151C0();
  v7 = sub_1D8B16200();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Playback status is not paused. Restarting from beginning.";
LABEL_12:
    _os_log_impl(&dword_1D8783000, v6, v7, v9, v8, 2u);
    MEMORY[0x1DA721330](v8, -1, -1);
  }

LABEL_13:

  sub_1D89C0DB8();
}

id sub_1D89C13AC()
{
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  return [*(v0 + 40) sendCommand:1 options:0 completion:0];
}

void sub_1D89C1464()
{
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  v1 = *(v0 + 120);
  v2 = *(v0 + 112) & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (v2)
  {
    sub_1D89C15D8();
  }

  else
  {
    if (qword_1ECA621C8 != -1)
    {
      swift_once();
    }

    v3 = sub_1D8B151E0();
    __swift_project_value_buffer(v3, qword_1ECA66AC8);
    v4 = sub_1D8B151C0();
    v5 = sub_1D8B16200();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1D8783000, v4, v5, "stopIfNeeded was called but we haven't played anything before, no-op'ing", v6, 2u);
      MEMORY[0x1DA721330](v6, -1, -1);
    }
  }
}

void sub_1D89C15D8()
{
  v1 = v0;
  if (qword_1ECA621C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D8B151E0();
  __swift_project_value_buffer(v2, qword_1ECA66AC8);

  v3 = sub_1D8B151C0();
  v4 = sub_1D8B16200();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    swift_getKeyPath();
    sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer);
    sub_1D8B13520();

    v7 = *(v0 + 112);
    v8 = *(v1 + 120);

    v9 = sub_1D89AC714(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1D8783000, v3, v4, "Stopping Siri audio for Read Aloud for identifier: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1DA721330](v6, -1, -1);
    MEMORY[0x1DA721330](v5, -1, -1);
  }

  v10 = *(v1 + 24);
  swift_getKeyPath();
  v12 = v1;
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  v11 = sub_1D8B15940();

  [v10 endMediaSessionForIdentifier_];

  swift_getKeyPath();
  v12 = v1;
  sub_1D8B13520();

  [*(v1 + 40) sendCommand:3 options:0 completion:0];
  sub_1D89C22C4();
}

uint64_t sub_1D89C18A8()
{
  v1 = v0;
  v2 = sub_1D8B155B0();
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v48 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1D8B155E0();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v46 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1D8B155A0();
  v45 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D8B15600();
  v44 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D8B16310();
  v43 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v13 = OBJC_IVAR____TtC22VisualIntelligenceCore24SiriStreamingVoicePlayer___observationRegistrar;
  aBlock[0] = v0;
  v14 = sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  if (!*(v0 + 32))
  {
    v37 = v12;
    v38 = v9;
    v39 = v7;
    v16 = v42;
    v40 = v14;
    v41 = v13;
    if (qword_1ECA621C8 != -1)
    {
      swift_once();
    }

    v17 = sub_1D8B151E0();
    __swift_project_value_buffer(v17, qword_1ECA66AC8);
    v18 = sub_1D8B151C0();
    v19 = sub_1D8B16200();
    v20 = v1;
    v21 = v16;
    v22 = v6;
    v23 = v10;
    if (os_log_type_enabled(v18, v19))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1D8783000, v18, v19, "Starting to observe Siri audio for Read Aloud", v24, 2u);
      MEMORY[0x1DA721330](v24, -1, -1);
    }

    v36 = sub_1D881F764(0, &unk_1ECA66E00);
    sub_1D881F764(0, &qword_1EE0E3730);
    v25 = sub_1D8B162C0();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D89C2E54(&qword_1ECA66E10, MEMORY[0x1E69E80B0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66E18);
    sub_1D89C2E9C(&unk_1ECA66E20, &qword_1ECA66E18);
    v26 = v37;
    sub_1D8B16570();
    v27 = sub_1D8B16320();

    (*(v43 + 8))(v26, v23);
    ObjectType = swift_getObjectType();
    v29 = v38;
    sub_1D8B155F0();
    *v22 = 0;
    v30 = v45;
    (*(v45 + 104))(v22, *MEMORY[0x1E69E7F28], v21);
    MEMORY[0x1DA71F8A0](v29, v22, ObjectType, 0.35);
    (*(v30 + 8))(v22, v21);
    (*(v44 + 8))(v29, v39);
    v31 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1D89C2A8C;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D89B1AA0;
    aBlock[3] = &block_descriptor_29;
    v32 = _Block_copy(aBlock);

    v33 = v46;
    sub_1D8B155D0();
    v34 = v48;
    sub_1D89C21EC();
    sub_1D8B16330();
    _Block_release(v32);
    (*(v50 + 8))(v34, v51);
    (*(v47 + 8))(v33, v49);

    sub_1D8B16350();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v36 - 2) = v20;
    *(&v36 - 1) = v27;
    aBlock[0] = v20;
    sub_1D8B13510();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D89C1FF8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + 24);
    swift_getKeyPath();
    sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer);
    v3 = v2;
    sub_1D8B13520();

    v4 = sub_1D8B15940();

    v5 = [v3 getPlaybackStatusForIdentifier_];

    swift_beginAccess();
    if (((v5 == 2) ^ *(v1 + 16)))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D8B13510();
    }

    else
    {
      *(v1 + 16) = v5 == 2;
    }
  }

  return result;
}

uint64_t sub_1D89C21EC()
{
  sub_1D8B155B0();
  sub_1D89C2E54(&qword_1EE0E3A50, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA66838);
  sub_1D89C2E9C(&qword_1EE0E3950, &unk_1ECA66838);
  return sub_1D8B16570();
}

void sub_1D89C22C4()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1D89C2E54(&qword_1ECA66DE0, type metadata accessor for SiriStreamingVoicePlayer);
  sub_1D8B13520();

  if (*(v0 + 32))
  {
    v2 = qword_1ECA621C8;
    swift_unknownObjectRetain();
    if (v2 != -1)
    {
      swift_once();
    }

    v3 = sub_1D8B151E0();
    __swift_project_value_buffer(v3, qword_1ECA66AC8);
    v4 = sub_1D8B151C0();
    v5 = sub_1D8B16200();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1D8783000, v4, v5, "Stopping progress updates", v6, 2u);
      MEMORY[0x1DA721330](v6, -1, -1);
    }

    swift_getObjectType();
    sub_1D8B16340();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D8B13510();

    swift_beginAccess();
    if (*(v1 + 16))
    {
      v8 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v8);
      sub_1D8B13510();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      *(v1 + 16) = 0;
    }
  }

  else
  {
    if (qword_1ECA621C8 != -1)
    {
      swift_once();
    }

    v9 = sub_1D8B151E0();
    __swift_project_value_buffer(v9, qword_1ECA66AC8);
    v10 = sub_1D8B151C0();
    v11 = sub_1D8B16200();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D8783000, v10, v11, "Update timer is already empty", v12, 2u);
      MEMORY[0x1DA721330](v12, -1, -1);
    }
  }
}

uint64_t SiriStreamingVoicePlayer.deinit()
{
  swift_unknownObjectRelease();

  sub_1D89C2A28(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore24SiriStreamingVoicePlayer___observationRegistrar;
  v2 = sub_1D8B13560();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SiriStreamingVoicePlayer.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  sub_1D89C2A28(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore24SiriStreamingVoicePlayer___observationRegistrar;
  v2 = sub_1D8B13560();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D89C27A8()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = [objc_allocWithZone(MEMORY[0x1E69D27D0]) init];
  *(v0 + 32) = 0;
  *(v0 + 40) = [objc_opt_self() localRouteController];
  *(v0 + 48) = [objc_opt_self() localDestination];
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0xE000000000000000;
  sub_1D8B13550();
  return v0;
}

unint64_t sub_1D89C28E8()
{
  result = qword_1ECA66DF8;
  if (!qword_1ECA66DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA66DF0);
    sub_1D89C2E54(&qword_1EE0E37C0, type metadata accessor for CFString);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66DF8);
  }

  return result;
}

uint64_t sub_1D89C299C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65BC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D89C2A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a2)
  {
  }
}

uint64_t sub_1D89C2AB4()
{
  result = sub_1D8B13560();
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

void sub_1D89C2E1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 40);
  *(v1 + 40) = v2;
  v4 = v2;
}

uint64_t sub_1D89C2E54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D89C2E9C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D89C2EF0()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void sub_1D89C2F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a2)
  {

    v7 = a7;
  }
}

uint64_t objectdestroy_20Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D89C2FF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_1D89C3048()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 112) = v0[3];
  *(v1 + 120) = v2;
}

uint64_t sub_1D89C3088(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66E58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D89C3168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D893EC3C(&unk_1F5427AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66E60);
  v7 = a1;
  swift_arrayDestroy();
  if (sub_1D89A4644(a2, a3, a1))
  {
LABEL_48:

    return 1;
  }

  i = a3;
  v8 = a1 + 56;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 56);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  v68 = 0;
  v69 = v7;
  while (v11)
  {
    v15 = v11;
LABEL_12:
    v11 = (v15 - 1) & v15;
    if (*(v6 + 16))
    {
      v18 = (*(v7 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v15)))));
      v19 = *v18;
      v20 = v18[1];

      v21 = sub_1D87EF838(v19, v20);
      v23 = v22;

      if (v23)
      {
        v24 = *(*(v6 + 56) + 8 * v21);
        v72 = a2;
        v73 = i;
        MEMORY[0x1EEE9AC00](result);
        v63[2] = &v72;

        v25 = v68;
        v26 = sub_1D8AD0444(sub_1D89475B0, v63, v24);
        v68 = v25;
        v7 = v69;

        if (v26)
        {

          return 1;
        }
      }
    }
  }

  v16 = a2;
  while (1)
  {
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    if (v17 >= v12)
    {
      break;
    }

    v15 = *(v8 + 8 * v17);
    ++v14;
    if (v15)
    {
      v14 = v17;
      goto LABEL_12;
    }
  }

  v27 = sub_1D87C2E84(v6);
  v28 = i;
  v72 = a2;
  v73 = i;
  v66 = sub_1D87C12C0();
  v29 = sub_1D8B16500();
  v30 = v29[2];
  v67 = v27;
  if (v30)
  {
    v31 = v29[4];
    v32 = v29[5];
    v33 = v29[6];
    v34 = v29[7];
    swift_bridgeObjectRetain_n();

    v16 = MEMORY[0x1DA71EF10](v31, v32, v33, v34);
    v28 = v35;
    v27 = v67;
    swift_bridgeObjectRelease_n();
  }

  else
  {
  }

  v36 = 1 << *(v7 + 32);
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  else
  {
    v37 = -1;
  }

  v38 = v37 & *(v7 + 56);
  v39 = (v36 + 63) >> 6;
  v71 = v27 + 56;

  v40 = 0;
  v64 = v16;
  v65 = v39;
  for (i = v28; v38; result = )
  {
LABEL_27:
    v42 = (*(v69 + 48) + ((v40 << 10) | (16 * __clz(__rbit64(v38)))));
    v44 = *v42;
    v43 = v42[1];
    v72 = *v42;
    v73 = v43;

    v45 = sub_1D8B16500();
    if (v45[2])
    {
      v46 = v45[4];
      v47 = v45[5];
      v49 = v45[6];
      v48 = v45[7];
      swift_bridgeObjectRetain_n();

      v50 = v49;
      v16 = v64;
      v51 = MEMORY[0x1DA71EF10](v46, v47, v50, v48);
      v53 = v52;
      v28 = i;
      swift_bridgeObjectRelease_n();
    }

    else
    {

      v51 = v44;
      v53 = v43;
    }

    if (v51 == v16 && v53 == v28)
    {
    }

    else
    {
      v55 = sub_1D8B16BA0();

      if ((v55 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v56 = v67;
    if (!*(v67 + 16) || (sub_1D8B16D20(), sub_1D8B15A60(), v57 = sub_1D8B16D80(), v58 = -1 << *(v56 + 32), v59 = v57 & ~v58, ((*(v71 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0))
    {
LABEL_47:

      goto LABEL_48;
    }

    v60 = ~v58;
    while (1)
    {
      v61 = (*(v56 + 48) + 16 * v59);
      v62 = *v61 == v44 && v61[1] == v43;
      if (v62 || (sub_1D8B16BA0() & 1) != 0)
      {
        break;
      }

      v59 = (v59 + 1) & v60;
      if (((*(v71 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
      {
        goto LABEL_47;
      }
    }

LABEL_35:
    v39 = v65;
    v38 &= v38 - 1;
  }

  while (1)
  {
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v41 >= v39)
    {

      return 0;
    }

    v38 = *(v8 + 8 * v41);
    ++v40;
    if (v38)
    {
      v40 = v41;
      goto LABEL_27;
    }
  }

LABEL_51:
  __break(1u);
  return result;
}

void *sub_1D89C36A0()
{
  type metadata accessor for SiriVoiceAvailabilityUtility();
  swift_allocObject();
  result = sub_1D89C3738();
  off_1ECA66E68 = result;
  return result;
}

uint64_t static SiriVoiceAvailabilityUtility.shared.getter()
{
  if (qword_1ECA62248 != -1)
  {
    swift_once();
  }
}

void *sub_1D89C3738()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v17 = v15 - v3;
  v16 = sub_1D8B162B0();
  v4 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D8B162A0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1D8B155E0();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v0[2] = 0;
  v0[3] = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v0[4] = 0xE000000000000000;
  v0[5] = v9;
  v10 = sub_1D87C1314();
  v15[1] = "eLanguageCodes";
  v15[2] = v10;
  sub_1D8B155D0();
  v18 = v9;
  sub_1D89C581C(&unk_1EE0E3740, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66E80);
  sub_1D89C2E9C(&qword_1EE0E3920, &qword_1ECA66E80);
  sub_1D8B16570();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8090], v16);
  v0[6] = sub_1D8B162F0();
  v11 = sub_1D8B15EA0();
  v12 = v17;
  (*(*(v11 - 8) + 56))(v17, 1, 1, v11);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v1;

  sub_1D8891CA0(0, 0, v12, &unk_1D8B30E40, v13);

  return v1;
}

uint64_t sub_1D89C3A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1D89C3B14;

  return sub_1D89C3EB4();
}

uint64_t sub_1D89C3B14()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1D89C3C60;

  return sub_1D89C43F0();
}

uint64_t sub_1D89C3C60()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D89C3DC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_1D89C3DE0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

uint64_t sub_1D89C3E00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
  sub_1D8B162D0();
  return v1;
}

uint64_t sub_1D89C3EB4()
{
  v1[9] = v0;
  v2 = sub_1D8B155B0();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v3 = sub_1D8B155E0();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D89C3FD0, 0, 0);
}

uint64_t sub_1D89C3FD0()
{
  v29 = v0;
  v1 = [objc_opt_self() sharedPreferences];
  v2 = [v1 outputVoice];

  if (v2 && (v3 = [v2 languageCode], v2, v3))
  {
    v4 = sub_1D8B15970();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  if (qword_1ECA621C8 != -1)
  {
    swift_once();
  }

  v7 = sub_1D8B151E0();
  __swift_project_value_buffer(v7, qword_1ECA66AC8);

  v8 = sub_1D8B151C0();
  v9 = sub_1D8B16200();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 136315138;
    v12 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v12 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {

      v13 = v4;
      v14 = v6;
    }

    else
    {
      v14 = 0x80000001D8B467A0;
      v13 = 0xD000000000000014;
    }

    v15 = sub_1D89AC714(v13, v14, &v28);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1D8783000, v8, v9, "The preferred Siri language is %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1DA721330](v11, -1, -1);
    MEMORY[0x1DA721330](v10, -1, -1);
  }

  v16 = v0[15];
  v17 = v0[12];
  v26 = v0[14];
  v27 = v0[13];
  v18 = v0[10];
  v19 = v0[9];
  v25 = v0[11];
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = v4;
  v20[4] = v6;
  v0[6] = sub_1D89C53D4;
  v0[7] = v20;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1D89B1AA0;
  v0[5] = &block_descriptor_8;
  v24 = v6;
  v21 = _Block_copy(v0 + 2);

  sub_1D8B155D0();
  v0[8] = MEMORY[0x1E69E7CC0];
  sub_1D89C581C(&qword_1EE0E3A50, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA66838);
  sub_1D89C2E9C(&qword_1EE0E3950, &unk_1ECA66838);
  sub_1D8B16570();
  MEMORY[0x1DA71F7C0](0, v16, v17, v21);
  _Block_release(v21);
  (*(v25 + 8))(v17, v18);
  (*(v26 + 8))(v16, v27);

  v22 = v0[1];

  return v22(v4, v24);
}

uint64_t sub_1D89C4410()
{
  if (qword_1ECA621C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D8B151E0();
  __swift_project_value_buffer(v1, qword_1ECA66AC8);
  v2 = sub_1D8B151C0();
  v3 = sub_1D8B16200();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D8783000, v2, v3, "Checking for available Siri voice languages…", v4, 2u);
    MEMORY[0x1DA721330](v4, -1, -1);
  }

  v5 = v0[4];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66E70);
  sub_1D8B162D0();
  v6 = v0[2];
  v0[5] = v6;
  v7 = swift_task_alloc();
  v0[6] = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  v0[7] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
  *v8 = v0;
  v8[1] = sub_1D89C461C;

  return MEMORY[0x1EEE6DDE0](v0 + 3, 0, 0, 0xD000000000000016, 0x80000001D8B467C0, sub_1D89C544C, v7, v9);
}

uint64_t sub_1D89C461C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D89C4734, 0, 0);
}

uint64_t sub_1D89C4734()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 8);

  return v2(v1);
}

id sub_1D89C4798@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    v5 = [objc_allocWithZone(sub_1D8B13DA0()) init];
    v6 = *(a1 + 16);
    *(a1 + 16) = v5;

    v3 = *(a1 + 16);
  }

  *a2 = v3;
  return v3;
}

uint64_t sub_1D89C4804(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = sub_1D8B155B0();
  v26 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D8B155E0();
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66E78);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - v14;
  v22 = *(a2 + 48);
  (*(v12 + 16))(&v22 - v14, a1, v11);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  (*(v12 + 32))(v17 + v16, v15, v11);
  *(v17 + ((v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_1D89C56F8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D89B1AA0;
  aBlock[3] = &block_descriptor_20;
  v18 = _Block_copy(aBlock);
  v19 = a3;

  sub_1D8B155D0();
  v27 = MEMORY[0x1E69E7CC0];
  sub_1D89C581C(&qword_1EE0E3A50, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA66838);
  sub_1D89C2E9C(&qword_1EE0E3950, &unk_1ECA66838);
  v20 = v23;
  sub_1D8B16570();
  MEMORY[0x1DA71F7C0](0, v10, v7, v18);
  _Block_release(v18);
  (*(v26 + 8))(v7, v20);
  (*(v24 + 8))(v10, v25);
}

void sub_1D89C4BB0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66E78);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - v6;
  if (a1)
  {
    v8 = swift_allocObject();
    swift_weakInit();
    (*(v5 + 16))(v7, a2, v4);
    v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    (*(v5 + 32))(v10 + v9, v7, v4);
    v11 = a1;

    sub_1D8B13D90();
  }

  else
  {
    v12[1] = MEMORY[0x1E69E7CC0];
    sub_1D8B15E20();
  }
}

char *sub_1D89C4D6C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D8B155B0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D8B155E0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    aBlock[0] = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66E78);
    return sub_1D8B15E20();
  }

  v41 = v12;
  v42 = v10;
  v43 = v8;
  v46 = Strong;
  if (a1 >> 62)
  {
    v14 = sub_1D8B16610();
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v44 = v9;
  v15 = MEMORY[0x1E69E7CC0];
  v47 = a3;
  v45 = v6;
  if (v14)
  {
    aBlock[0] = MEMORY[0x1E69E7CC0];
    result = sub_1D87F3F54(0, v14 & ~(v14 >> 63), 0);
    if (v14 < 0)
    {
      __break(1u);
      return result;
    }

    v40 = v5;
    v17 = 0;
    v18 = aBlock[0];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1DA71FC20](v17, a1);
      }

      else
      {
        v19 = *(a1 + 8 * v17 + 32);
      }

      v20 = v19;
      v21 = sub_1D8B13DB0();
      v23 = v22;

      aBlock[0] = v18;
      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1D87F3F54((v24 > 1), v25 + 1, 1);
        v18 = aBlock[0];
      }

      ++v17;
      *(v18 + 16) = v25 + 1;
      v26 = v18 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
    }

    while (v14 != v17);
    v5 = v40;
    v15 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  v27 = v46;
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = v18;
  aBlock[4] = sub_1D89C5814;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D89B1AA0;
  aBlock[3] = &block_descriptor_32;
  v29 = _Block_copy(aBlock);

  v30 = v41;
  sub_1D8B155D0();
  v48 = v15;
  sub_1D89C581C(&qword_1EE0E3A50, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA66838);
  sub_1D89C2E9C(&qword_1EE0E3950, &unk_1ECA66838);
  v31 = v43;
  sub_1D8B16570();
  MEMORY[0x1DA71F7C0](0, v30, v31, v29);
  _Block_release(v29);
  (*(v45 + 8))(v31, v5);
  (*(v42 + 8))(v30, v44);

  if (qword_1ECA621C8 != -1)
  {
    swift_once();
  }

  v32 = sub_1D8B151E0();
  __swift_project_value_buffer(v32, qword_1ECA66AC8);

  v33 = sub_1D8B151C0();
  v34 = sub_1D8B16200();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    aBlock[0] = v36;
    *v35 = 136315138;
    v37 = MEMORY[0x1DA71F1E0](v18, MEMORY[0x1E69E6158]);
    v39 = sub_1D89AC714(v37, v38, aBlock);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_1D8783000, v33, v34, "Siri has voices for the following languages: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x1DA721330](v36, -1, -1);
    MEMORY[0x1DA721330](v35, -1, -1);
  }

  aBlock[0] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66E78);
  sub_1D8B15E20();
}

void sub_1D89C52FC(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = a2;

  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
}

uint64_t SiriVoiceAvailabilityUtility.deinit()
{

  return v0;
}

uint64_t SiriVoiceAvailabilityUtility.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D89C53D4()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 24) = v0[3];
  *(v1 + 32) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t dispatch thunk of SiriVoiceAvailabilityUtility.updatePreferredSiriLanguageCode()()
{
  v4 = (*(*v0 + 208) + **(*v0 + 208));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D888F054;

  return v4();
}

uint64_t dispatch thunk of SiriVoiceAvailabilityUtility.updateVoiceLanguages()()
{
  v4 = (*(*v0 + 216) + **(*v0 + 216));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D89424A4;

  return v4();
}

void sub_1D89C56F8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66E78) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1D89C4BB0(v2, v3);
}

char *sub_1D89C5794(unint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66E78) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1D89C4D6C(a1, v4, v5);
}

uint64_t sub_1D89C581C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return MEMORY[0x1EEE6BDD0](v2, 40, 7);
}

uint64_t sub_1D89C58BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D8864FBC;

  return sub_1D89C3A80(a1, v4, v5, v6);
}

unint64_t sub_1D89C599C(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1D89C7AB8(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = sub_1D8B16710();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_1D8B167B0();
        }

        v8 = (v7 + v6);
      }

      v9 = *v8;
      if (*v8 < 0)
      {
        v10 = (__clz(v9 ^ 0xFF) - 24);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v11 = v8[1];
            v12 = v8[2];
            v13 = ((v9 & 0xF) << 12) | ((v11 & 0x3F) << 6);
          }

          else
          {
            v14 = v8[1];
            v15 = v8[2];
            v12 = v8[3];
            v13 = ((v9 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
          }

          v9 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
        }

        else if (v10 != 1)
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

uint64_t sub_1D89C5B04@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1D8B16580();
  v9 = 1;
  if (v8 != 1 << *(a1 + 32))
  {
    sub_1D89C7E24(v8, *(a1 + 36), a1, a2, a4);
    v9 = 0;
  }

  v10 = a3(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a4, v9, 1, v10);
}

uint64_t sub_1D89C5BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D8B16580();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_1D89C7D64(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = type metadata accessor for DetectionRequest(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

Swift::String_optional __swiftcall String.detectedLanguage()()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6977A58]) init];
  v1 = sub_1D8B15940();
  [v0 processString_];

  v2 = [v0 dominantLanguage];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1D8B15970();
    v6 = v5;
  }

  else
  {

    v4 = 0;
    v6 = 0;
  }

  v7 = v4;
  v8 = v6;
  result.value._object = v8;
  result.value._countAndFlagsBits = v7;
  return result;
}

unint64_t sub_1D89C5D50(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65CD0);
    v2 = sub_1D8B16910();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_1D8943B68(&v22, v24);
        sub_1D8943B68(v24, v25);
        sub_1D8943B68(v25, &v23);
        result = sub_1D87EF838(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1(v11);
          result = sub_1D8943B68(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_1D8943B68(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D89C5F98(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C20);
    v1 = sub_1D8B16910();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v26 = *(*(a1 + 56) + v11);
    v13 = v26;
    sub_1D89C8E58();
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    sub_1D8943B68((v27 + 8), v25);
    sub_1D8943B68(v25, v27);
    sub_1D8B15970();
    sub_1D8B16D20();
    sub_1D8B15A60();
    v16 = sub_1D8B16D80();

    v17 = -1 << *(v1 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v6 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v6 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v6 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v14;
    result = sub_1D8943B68(v27, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

char *String.camelCaseToWords.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D8B12C60();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = 0;
  v61 = 0xE000000000000000;
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v56 = a1;
  v57 = a2;
  v58 = 0;
  v59 = v8;

  v9 = sub_1D8B15AE0();
  if (v10)
  {
    v11 = v10;
    v52 = v4;
    v12 = (v5 + 8);
    v50 = MEMORY[0x1E69E7CC0];
    v13 = MEMORY[0x1E69E6158];
    v51 = v7;
    while (1)
    {
      while (1)
      {
        v53 = v9;
        v54 = v9;
        v55 = v11;
        sub_1D8B12C20();
        sub_1D87C12C0();
        sub_1D8B164A0();
        v16 = v15;
        v17 = *v12;
        v18 = v52;
        (*v12)(v7, v52);
        if ((v16 & 1) == 0)
        {
          v29 = v13;
          v30 = v60;
          v31 = v61;
          v32 = HIBYTE(v61) & 0xF;
          if ((v61 & 0x2000000000000000) == 0)
          {
            v32 = v60 & 0xFFFFFFFFFFFFLL;
          }

          if (v32)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v7 = v51;
            if (isUniquelyReferenced_nonNull_native)
            {
              v34 = v50;
            }

            else
            {
              v34 = sub_1D87C8284(0, *(v50 + 2) + 1, 1, v50);
            }

            v36 = *(v34 + 2);
            v35 = *(v34 + 3);
            if (v36 >= v35 >> 1)
            {
              v34 = sub_1D87C8284((v35 > 1), v36 + 1, 1, v34);
            }

            *(v34 + 2) = v36 + 1;
            v50 = v34;
            v37 = &v34[16 * v36];
            *(v37 + 4) = v30;
            *(v37 + 5) = v31;
            v60 = 0;
            v61 = 0xE000000000000000;
          }

          else
          {
            v7 = v51;
          }

          v38 = sub_1D8B159F0();
          v40 = v39;

          MEMORY[0x1DA71EFA0](v38, v40);

          v13 = v29;
          goto LABEL_27;
        }

        v54 = v53;
        v55 = v11;
        sub_1D8B12C10();
        sub_1D8B164A0();
        v20 = v19;
        v17(v7, v18);
        if (v20)
        {
          break;
        }

        MEMORY[0x1DA71EFA0](v53, v11);

LABEL_6:
        v9 = sub_1D8B15AE0();
        v11 = v14;
        v7 = v51;
        if (!v14)
        {
          goto LABEL_32;
        }
      }

      v21 = v60;
      v22 = v61;
      v23 = HIBYTE(v61) & 0xF;
      if ((v61 & 0x2000000000000000) == 0)
      {
        v23 = v60 & 0xFFFFFFFFFFFFLL;
      }

      if (!v23)
      {
        goto LABEL_6;
      }

      v24 = swift_isUniquelyReferenced_nonNull_native();
      v7 = v51;
      if (v24)
      {
        v25 = v50;
      }

      else
      {
        v25 = sub_1D87C8284(0, *(v50 + 2) + 1, 1, v50);
      }

      v27 = *(v25 + 2);
      v26 = *(v25 + 3);
      if (v27 >= v26 >> 1)
      {
        v25 = sub_1D87C8284((v26 > 1), v27 + 1, 1, v25);
      }

      *(v25 + 2) = v27 + 1;
      v50 = v25;
      v28 = &v25[16 * v27];
      *(v28 + 4) = v21;
      *(v28 + 5) = v22;
      v60 = 0;
      v61 = 0xE000000000000000;
LABEL_27:
      v9 = sub_1D8B15AE0();
      v11 = v41;
      if (!v41)
      {
        goto LABEL_32;
      }
    }
  }

  v50 = MEMORY[0x1E69E7CC0];
LABEL_32:

  v42 = v60;
  v43 = v61;
  v44 = HIBYTE(v61) & 0xF;
  if ((v61 & 0x2000000000000000) == 0)
  {
    v44 = v60 & 0xFFFFFFFFFFFFLL;
  }

  if (v44)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v45 = v50;
    }

    else
    {
      v45 = sub_1D87C8284(0, *(v50 + 2) + 1, 1, v50);
    }

    v47 = *(v45 + 2);
    v46 = *(v45 + 3);
    if (v47 >= v46 >> 1)
    {
      v45 = sub_1D87C8284((v46 > 1), v47 + 1, 1, v45);
    }

    *(v45 + 2) = v47 + 1;
    v48 = &v45[16 * v47];
    *(v48 + 4) = v42;
    *(v48 + 5) = v43;
  }

  else
  {

    return v50;
  }

  return v45;
}

Swift::Bool __swiftcall String.isUserPreferredLanguage()()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6977A58]) init];
  v1 = sub_1D8B15940();
  [v0 processString_];

  v2 = [v0 dominantLanguage];
  if (!v2)
  {

LABEL_6:
    v4 = 0;
    return v4 & 1;
  }

  v3 = v2;
  sub_1D8B15970();

  if (!*(sub_1D8B13280() + 16))
  {

    goto LABEL_6;
  }

  sub_1D89C78B4();
  sub_1D89C7908();
  v4 = sub_1D8B157F0();

  return v4 & 1;
}

uint64_t sub_1D89C67EC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
  v1 = sub_1D8B15940();
  [v0 setString_];

  v3 = MEMORY[0x1E69E7CC0];
  sub_1D8B161B0();

  return v3;
}

uint64_t sub_1D89C68D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char **a6)
{
  v9 = sub_1D8B15BB0();
  v10 = MEMORY[0x1DA71EF10](v9);
  v12 = v11;

  v13 = *a6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a6 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_1D87C8284(0, *(v13 + 2) + 1, 1, v13);
    *a6 = v13;
  }

  v16 = *(v13 + 2);
  v15 = *(v13 + 3);
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1D87C8284((v15 > 1), v16 + 1, 1, v13);
    *a6 = v13;
  }

  *(v13 + 2) = v16 + 1;
  v17 = &v13[16 * v16];
  *(v17 + 4) = v10;
  *(v17 + 5) = v12;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v18 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v19 = sub_1D8B15AA0();
  if ((v20 & 1) == 0)
  {
    v21 = v19;
    v22 = v19 >> 14;
    if (v19 >> 14 < 4 * v18)
    {
      sub_1D8B15B80();
      v23 = sub_1D8B157B0();

      if (v23)
      {
        sub_1D8B15B80();
        v24 = sub_1D8B157B0();

        v25 = v22;
        if (v24)
        {
          do
          {
            v25 = sub_1D8B15A80() >> 14;
            if (v25 >= 4 * v18)
            {
              break;
            }

            sub_1D8B15B80();
            v26 = sub_1D8B157B0();
          }

          while ((v26 & 1) != 0);
        }

        if (v25 < v22)
        {
          __break(1u);
        }

        else
        {
          v27 = sub_1D8B15BB0();
          a5 = MEMORY[0x1DA71EF10](v27);
          a4 = v28;

          v21 = *a6;
          v29 = swift_isUniquelyReferenced_nonNull_native();
          *a6 = v21;
          if (v29)
          {
LABEL_16:
            v31 = *(v21 + 2);
            v30 = *(v21 + 3);
            if (v31 >= v30 >> 1)
            {
              v21 = sub_1D87C8284((v30 > 1), v31 + 1, 1, v21);
              *a6 = v21;
            }

            *(v21 + 2) = v31 + 1;
            v32 = &v21[16 * v31];
            *(v32 + 4) = a5;
            *(v32 + 5) = a4;
            return 1;
          }
        }

        v21 = sub_1D87C8284(0, *(v21 + 2) + 1, 1, v21);
        *a6 = v21;
        goto LABEL_16;
      }
    }
  }

  return 1;
}

uint64_t sub_1D89C6B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char **a6)
{
  v7 = sub_1D8B15BB0();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = *a6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a6 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_1D87C94F0(0, *(v14 + 2) + 1, 1, v14);
    *a6 = v14;
  }

  v17 = *(v14 + 2);
  v16 = *(v14 + 3);
  if (v17 >= v16 >> 1)
  {
    v14 = sub_1D87C94F0((v16 > 1), v17 + 1, 1, v14);
    *a6 = v14;
  }

  *(v14 + 2) = v17 + 1;
  v18 = &v14[32 * v17];
  *(v18 + 4) = v7;
  *(v18 + 5) = v9;
  *(v18 + 6) = v11;
  *(v18 + 7) = v13;
  return 1;
}

Swift::Bool __swiftcall String.isSentenceEndingCharacter(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_1D8B12C60();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1D89C599C(countAndFlagsBits, object) & 0x100000000) != 0)
  {
    v7 = 0;
  }

  else
  {
    sub_1D8B12C30();
    v7 = sub_1D8B12C50();
    (*(v4 + 8))(v6, v3);
  }

  return v7 & 1;
}

Swift::String __swiftcall String.cleanUpJSONResponseString()()
{
  v2 = v1;
  v3 = v0;
  v54 = *MEMORY[0x1E69E9840];
  v4 = sub_1D8B159C0();
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D8B12C60();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v44 - v9;
  *&v53[0] = v3;
  *(&v53[0] + 1) = v2;
  v51 = 123;
  v52 = 0xE100000000000000;
  v11 = sub_1D8B13350();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 1, 1, v11);
  sub_1D87C12C0();
  v50 = sub_1D8B164E0();
  v14 = v13;
  v15 = v2;
  sub_1D87A14E4(v10, &qword_1ECA643B0);
  if (v14)
  {
    goto LABEL_10;
  }

  *&v53[0] = v3;
  *(&v53[0] + 1) = v2;
  v51 = 125;
  v52 = 0xE100000000000000;
  v12(v10, 1, 1, v11);
  sub_1D8B164E0();
  v17 = v16;
  v19 = v18;
  sub_1D87A14E4(v10, &qword_1ECA643B0);
  if (v19)
  {
    goto LABEL_10;
  }

  v20 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v20 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v50 >> 14 >= 4 * v20 || 4 * v20 < v17 >> 14 || v17 >> 14 < v50 >> 14)
  {
LABEL_10:
  }

  else
  {
    v21 = v3;
    v22 = v15;
    v23 = sub_1D8B15BB0();
    v24 = MEMORY[0x1DA71EF10](v23);
    v26 = v25;

    *&v53[0] = v24;
    *(&v53[0] + 1) = v26;
    v27 = v44;
    sub_1D8B12C40();
    v28 = sub_1D8B164B0();
    v30 = v29;
    (*(v45 + 8))(v27, v46);

    v31 = v47;
    sub_1D8B159B0();
    v32 = sub_1D8B15980();
    v34 = v33;
    (*(v48 + 8))(v31, v49);
    if (v34 >> 60 == 15)
    {

LABEL_15:
      v15 = v22;

      v3 = v21;
      goto LABEL_11;
    }

    v37 = objc_opt_self();
    v38 = sub_1D8B13030();
    v51 = 0;
    v39 = [v37 JSONObjectWithData:v38 options:0 error:&v51];

    v40 = v51;
    if (!v39)
    {
      v41 = v40;

      v42 = sub_1D8B12EB0();

      swift_willThrow();
      sub_1D87C12A4(v32, v34);

      memset(v53, 0, sizeof(v53));
      sub_1D87A14E4(v53, &qword_1ECA650C0);
      goto LABEL_15;
    }

    sub_1D8B16540();
    sub_1D87C12A4(v32, v34);
    swift_unknownObjectRelease();
    sub_1D87A14E4(v53, &qword_1ECA650C0);
    v3 = v28;
    v15 = v30;
  }

LABEL_11:
  v35 = v3;
  v36 = v15;
  result._object = v36;
  result._countAndFlagsBits = v35;
  return result;
}

CGSize __swiftcall String.anticipatedSize(usingUIFont:)(UIFont usingUIFont)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66E98);
  inited = swift_initStackObject();
  v3 = MEMORY[0x1E69DB648];
  *(inited + 16) = xmmword_1D8B1AB90;
  v4 = *v3;
  *(inited + 32) = v4;
  *(inited + 40) = usingUIFont;
  v5 = v4;
  v6 = usingUIFont.super.isa;
  v7 = sub_1D893F0E0(inited);
  swift_setDeallocating();
  sub_1D87A14E4(inited + 32, &qword_1ECA66EA0);
  v8 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v9 = sub_1D8B15940();
  v10 = [v8 initWithString_];

  sub_1D89C5F98(v7);

  type metadata accessor for Key(0);
  sub_1D89C8DAC(&qword_1ECA62478, type metadata accessor for Key);
  v11 = sub_1D8B15710();

  [v10 boundingRectWithSize:3 options:v11 attributes:0 context:{1.79769313e308, 1.79769313e308}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

double String.anticipatedSize(usingFont:)()
{
  sub_1D8B154F0();
  v0 = sub_1D8B15510();

  if (v0)
  {
    v1 = objc_opt_self();
    v2 = MEMORY[0x1E69DDD58];
LABEL_19:
    v11 = *v2;
    goto LABEL_20;
  }

  sub_1D8B15530();
  v3 = sub_1D8B15510();

  if (v3)
  {
    v1 = objc_opt_self();
    v2 = MEMORY[0x1E69DDDB8];
    goto LABEL_19;
  }

  sub_1D8B15540();
  v4 = sub_1D8B15510();

  if (v4)
  {
    v1 = objc_opt_self();
    v2 = MEMORY[0x1E69DDDC0];
    goto LABEL_19;
  }

  sub_1D8B15590();
  v5 = sub_1D8B15510();

  if (v5)
  {
    v1 = objc_opt_self();
    v2 = MEMORY[0x1E69DDD40];
    goto LABEL_19;
  }

  sub_1D8B15500();
  v6 = sub_1D8B15510();

  if (v6)
  {
    v1 = objc_opt_self();
    v2 = MEMORY[0x1E69DDD80];
    goto LABEL_19;
  }

  sub_1D8B15560();
  v7 = sub_1D8B15510();

  if (v7)
  {
    v1 = objc_opt_self();
    v2 = MEMORY[0x1E69DDD08];
    goto LABEL_19;
  }

  sub_1D8B15570();
  v8 = sub_1D8B15510();

  if (v8)
  {
    v1 = objc_opt_self();
    v2 = MEMORY[0x1E69DDD10];
    goto LABEL_19;
  }

  sub_1D8B15580();
  v9 = sub_1D8B15510();

  if (v9)
  {
    v1 = objc_opt_self();
    v2 = MEMORY[0x1E69DDD28];
    goto LABEL_19;
  }

  sub_1D8B15520();
  v10 = sub_1D8B15510();

  if (v10)
  {
    v1 = objc_opt_self();
    v2 = MEMORY[0x1E69DDCF8];
    goto LABEL_19;
  }

  sub_1D8B15550();
  v30 = sub_1D8B15510();

  v1 = objc_opt_self();
  if (v30)
  {
    v31 = MEMORY[0x1E69DDD00];
  }

  else
  {
    v31 = MEMORY[0x1E69DDCF8];
  }

  v11 = *v31;
LABEL_20:
  v12 = [v1 preferredFontForTextStyle_];
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 defaultMetrics];
  v16 = [v15 scaledFontForFont_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66E98);
  inited = swift_initStackObject();
  v18 = MEMORY[0x1E69DB648];
  *(inited + 16) = xmmword_1D8B1AB90;
  v19 = *v18;
  *(inited + 32) = v19;
  *(inited + 40) = v16;
  v20 = v19;
  v21 = v16;
  v22 = sub_1D893F0E0(inited);
  swift_setDeallocating();
  sub_1D87A14E4(inited + 32, &qword_1ECA66EA0);
  v23 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v24 = sub_1D8B15940();
  v25 = [v23 initWithString_];

  sub_1D89C5F98(v22);

  type metadata accessor for Key(0);
  sub_1D89C8DAC(&qword_1ECA62478, type metadata accessor for Key);
  v26 = sub_1D8B15710();

  [v25 boundingRectWithSize:3 options:v26 attributes:0 context:{1.79769313e308, 1.79769313e308}];
  v28 = v27;

  return v28;
}

unint64_t sub_1D89C78B4()
{
  result = qword_1ECA66E88;
  if (!qword_1ECA66E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66E88);
  }

  return result;
}

unint64_t sub_1D89C7908()
{
  result = qword_1ECA66E90;
  if (!qword_1ECA66E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66E90);
  }

  return result;
}

unint64_t sub_1D89C7968(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1D89C7AB8(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_1D8B16710();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_1D8B167B0() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_1D89C7AB8(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1D89C7B50(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1D89C7BC4(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1D89C7B50(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1D89C7CE8(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D89C7BC4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1D8B167B0();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

uint64_t sub_1D89C7CE8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1D8B15B40();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1DA71EFE0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1D89C7D64@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v5 = *(a3 + 48);
  v6 = v5 + *(*(type metadata accessor for DetectionRequest(0) - 8) + 72) * result;

  return sub_1D89C8DF4(v6, a4);
}

uint64_t sub_1D89C7E24@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  if (result < 0 || (v5 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = *(a3 + 48);
  v8 = a4(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v11 = v7 + *(v9 + 72) * v5;

  return v10(a5, v11, v8);
}

uint64_t sub_1D89C7EE8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
    if (a3)
    {
      result = sub_1D8B165F0();
      if (result != *(a4 + 36))
      {
        __break(1u);
        goto LABEL_23;
      }

      sub_1D8B16600();
      type metadata accessor for CVTrackedDetection(0);
      swift_dynamicCast();
      sub_1D8B16D20();
      sub_1D8B13240();
      sub_1D89C8DAC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
      sub_1D8B157A0();
      v7 = sub_1D8B16D80();
      v8 = -1 << *(a4 + 32);
      v5 = v7 & ~v8;
      if ((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
      {
        v9 = ~v8;
        do
        {

          v10 = sub_1D8B13200();

          if (v10)
          {
            goto LABEL_19;
          }

          v5 = (v5 + 1) & v9;
        }

        while (((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
      }

      __break(1u);
    }

    if ((v5 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > v5)
    {
      if ((*(a4 + 8 * (v5 >> 6) + 56) >> v5))
      {
        if (*(a4 + 36) == a2)
        {
        }

        __break(1u);
LABEL_19:
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((a3 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  if (a4 < 0)
  {
    v6 = a4;
  }

  else
  {
    v6 = a4 & 0xFFFFFFFFFFFFFF8;
  }

  MEMORY[0x1DA71FB10](result, a2, v6);
  type metadata accessor for CVTrackedDetection(0);
  swift_dynamicCast();
  return v11;
}

uint64_t _sSS22VisualIntelligenceCoreE15normalizeDashesyS2SFZ_0()
{
  sub_1D87C12C0();
  sub_1D8B164D0();
  sub_1D8B164D0();

  sub_1D8B164D0();

  sub_1D8B164D0();

  v0 = sub_1D8B164D0();

  return v0;
}

uint64_t _sSS22VisualIntelligenceCoreE19endsWithDashOrTildeySbSSFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8B12C60();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[0] = a1;
  v10[1] = a2;
  sub_1D8B12C40();
  sub_1D87C12C0();
  sub_1D8B164B0();
  (*(v5 + 8))(v7, v4);
  if (sub_1D8B15B60() & 1) != 0 || (sub_1D8B15B60() & 1) != 0 || (sub_1D8B15B60() & 1) != 0 || (sub_1D8B15B60())
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D8B15B60();
  }

  return v8 & 1;
}

unint64_t _sSS22VisualIntelligenceCoreE27concatenateTextForReadAloud4fromSSSaySSG_tFZ_0(uint64_t a1)
{
  v2 = sub_1D8B16E00();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v69[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v79 = sub_1D8B12C60();
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v69[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v89 = 0;
  v90 = 0xE000000000000000;
  v8 = *(a1 + 16);
  if (!v8)
  {
    return 0;
  }

  v73 = v5;
  v74 = v2;
  v77 = (v6 + 8);
  v72 = (v3 + 8);
  sub_1D87C12C0();
  v9 = (a1 + 56);
  v75 = v8;
  v76 = -v8;
  v10 = 1;
  while (1)
  {
    v81 = v10;
    v82 = v9;
    v11 = *(v9 - 2);
    v87 = *(v9 - 3);
    v88 = v11;
    v85 = 11565;
    v86 = 0xE200000000000000;
    v83 = 0x209480E220;
    v84 = 0xA500000000000000;

    v87 = sub_1D8B164D0();
    v88 = v12;
    v80 = 9732322;
    v85 = 9732322;
    v86 = 0xA300000000000000;
    v83 = 0x209480E220;
    v84 = 0xA500000000000000;
    v13 = sub_1D8B164D0();
    v15 = v14;

    v87 = v13;
    v88 = v15;
    v85 = 9666786;
    v86 = 0xA300000000000000;
    v83 = 0x209480E220;
    v84 = 0xA500000000000000;
    v16 = sub_1D8B164D0();
    v18 = v17;

    v87 = v16;
    v88 = v18;
    v85 = 45;
    v86 = 0xE100000000000000;
    v83 = 0x209480E220;
    v84 = 0xA500000000000000;
    v19 = sub_1D8B164D0();
    v21 = v20;

    v87 = v19;
    v88 = v21;
    v85 = 126;
    v86 = 0xE100000000000000;
    v83 = 0x209480E220;
    v84 = 0xA500000000000000;
    v22 = sub_1D8B164D0();
    v24 = v23;

    v87 = v22;
    v88 = v24;
    v25 = v78;
    sub_1D8B12C40();
    v26 = sub_1D8B164B0();
    v28 = v27;
    v29 = *v77;
    v30 = v79;
    (*v77)(v25, v79);
    v31 = v26;

    v87 = v26;
    v88 = v28;
    sub_1D8B12C40();
    sub_1D8B164B0();
    v32 = v29;
    v29(v25, v30);
    if ((sub_1D8B15B60() & 1) == 0 && (sub_1D8B15B60() & 1) == 0 && (sub_1D8B15B60() & 1) == 0 && (sub_1D8B15B60() & 1) == 0)
    {
      break;
    }

    v33 = v82;
LABEL_8:
    v87 = v26;
    v88 = v28;

    MEMORY[0x1DA71EFA0](32, 0xE100000000000000);

    MEMORY[0x1DA71EFA0](v87, v88);
    v34 = v81;
LABEL_9:

    v10 = v34 + 1;
    v9 = v33 + 2;
    if (v76 + v10 == 1)
    {
      return v89;
    }
  }

  v35 = sub_1D8B15B60();

  v33 = v82;
  if (v35)
  {
    goto LABEL_8;
  }

  if ((v28 & 0x2000000000000000) != 0)
  {
    v36 = HIBYTE(v28) & 0xF;
  }

  else
  {
    v36 = v26 & 0xFFFFFFFFFFFFLL;
  }

  v34 = v81;
  if (v36)
  {
    sub_1D8B15A90();
    v37 = sub_1D8B15B80();
    if ((sub_1D89C599C(v37, v38) & 0x100000000) != 0)
    {
    }

    else
    {
      v39 = v78;
      sub_1D8B12C30();
      v40 = sub_1D8B12C50();

      v32(v39, v79);
      if (v40)
      {
        v87 = v26;
        v88 = v28;

        v41 = 10;
        goto LABEL_49;
      }
    }
  }

  if (v34 >= v75)
  {
    v56 = v26;
    goto LABEL_51;
  }

  v80 = v36;
  v42 = *v33;
  v87 = *(v33 - 1);
  v88 = v42;

  v43 = v78;
  sub_1D8B12C40();
  v44 = sub_1D8B164B0();
  v46 = v45;
  v47 = v44;
  v32(v43, v79);

  v48 = HIBYTE(v46) & 0xF;
  v71 = v47;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v48 = v47 & 0xFFFFFFFFFFFFLL;
  }

  if (!v48)
  {

    v58 = 0xE100000000000000;
    v59 = 32;
    goto LABEL_40;
  }

  v49 = sub_1D8B15B80();
  v51 = v50;
  if ((sub_1D8B157E0() & 1) == 0)
  {
    goto LABEL_27;
  }

  v52 = v49;
  result = sub_1D89C7968(v49, v51);
  if ((result & 0x100000000) == 0)
  {
    v53 = v73;
    sub_1D8B16E10();
    v70 = sub_1D8B16DE0();
    (*v72)(v53, v74);
    v49 = v52;
    if ((v70 & 1) == 0)
    {
LABEL_27:
      if ((sub_1D8B157D0() & 1) == 0)
      {

        goto LABEL_39;
      }

      if ((sub_1D8B157E0() & 1) == 0)
      {
        goto LABEL_31;
      }

      result = sub_1D89C7968(v49, v51);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_55;
      }

      v54 = v73;
      sub_1D8B16E10();
      v70 = sub_1D8B16DF0();
      (*v72)(v54, v74);
      if ((v70 & 1) == 0)
      {
LABEL_31:
        if (sub_1D8B157D0())
        {
          v55 = sub_1D8B157C0();

          if ((v55 & 1) == 0)
          {
LABEL_36:

            v57 = v80;
LABEL_42:
            if (v57 && (sub_1D8B15A90(), sub_1D8B15B80(), v65 = sub_1D8B157B0(), , (v65 & 1) != 0))
            {
              v66 = 0;
              v67 = 0xE000000000000000;
            }

            else
            {
              v67 = 0xE200000000000000;
              v66 = 8238;
            }

            v87 = v31;
            v88 = v28;

            MEMORY[0x1DA71EFA0](v66, v67);

            goto LABEL_50;
          }

LABEL_39:
          v60 = sub_1D8B15B80();
          v58 = v61;

          v59 = v60;
LABEL_40:
          v62 = sub_1D89C599C(v59, v58);
          v57 = v80;
          if ((v62 & 0x100000000) != 0)
          {
          }

          else
          {
            v63 = v78;
            sub_1D8B12C30();
            v64 = sub_1D8B12C50();

            v32(v63, v79);
            if (v64)
            {
              goto LABEL_42;
            }
          }

          v87 = v31;
          v88 = v28;

          v41 = 32;
LABEL_49:
          MEMORY[0x1DA71EFA0](v41, 0xE100000000000000);
LABEL_50:

          v56 = v87;
          v28 = v88;
LABEL_51:
          MEMORY[0x1DA71EFA0](v56, v28);
          goto LABEL_9;
        }
      }
    }

    goto LABEL_36;
  }

  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_1D89C8DAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D89C8DF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectionRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D89C8E58()
{
  result = qword_1ECA66EA8;
  if (!qword_1ECA66EA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECA66EA8);
  }

  return result;
}

void *sub_1D89C8EB8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t *a10)
{
  if ((a5 & 0x8000000000000000) != 0)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v10 = result;
  if (a5)
  {
    if (a5 <= 3)
    {
      v11 = 0;
LABEL_8:
      v16 = a5 - v11;
      v17 = v11 + 1;
      do
      {
        result[v17] = v17;
        ++v17;
        --v16;
      }

      while (v16);
      goto LABEL_10;
    }

    v12 = 0;
    v11 = a5 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v13 = vdupq_n_s64(v12);
      v14 = vorrq_s8(v13, xmmword_1D8B1AB90);
      v15 = &result[v14.i64[0]];
      *v15 = v14;
      v15[1] = vaddq_s64(v13, xmmword_1D8B30E60);
      v12 += 4;
    }

    while (v11 != v12);
    if (v11 != a5)
    {
      goto LABEL_8;
    }
  }

LABEL_10:
  if (a6 < 0)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  *result = 0;
  if (!a6)
  {
    goto LABEL_65;
  }

  for (i = 0; i != a6; result[a3 * i] = i)
  {
    ++i;
    if ((a3 * i) >> 64 != (a3 * i) >> 63)
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }
  }

  if (!a5)
  {
    goto LABEL_65;
  }

  v19 = *(a7 + 16);
  v46 = *(a8 + 16);
  v20 = a8 + 40;
  v21 = 1;
  v41 = a8 + 40;
  v42 = v19;
  while (2)
  {
    v22 = v21 - 1;
    if (v21 - 1 >= v19)
    {
      goto LABEL_60;
    }

    v23 = 1;
    while (1)
    {
      v24 = v23 - 1;
      if (v23 - 1 >= v46)
      {
        goto LABEL_49;
      }

      v25 = sub_1D8A98664();

      v26 = a3 * v23;
      if ((a3 * v23) >> 64 != (a3 * v23) >> 63)
      {
        goto LABEL_50;
      }

      if (__OFADD__(v26, v22))
      {
        goto LABEL_51;
      }

      v27 = v10[v26 + v22];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_52;
      }

      v30 = a3 * v24;
      if ((a3 * v24) >> 64 != (a3 * v24) >> 63)
      {
        goto LABEL_53;
      }

      if (__OFADD__(v30, v21))
      {
        goto LABEL_54;
      }

      v31 = v10[v30 + v21];
      v28 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v28)
      {
        goto LABEL_55;
      }

      v28 = __OFADD__(v30, v22);
      v33 = v30 + v22;
      if (v28)
      {
        goto LABEL_56;
      }

      v34 = (v25 & 1) == 0;
      v35 = v10[v33];
      v28 = __OFADD__(v35, v34);
      v36 = v35 + v34;
      if (v28)
      {
        goto LABEL_57;
      }

      v28 = __OFADD__(v26, v21);
      v37 = v26 + v21;
      if (v28)
      {
        goto LABEL_58;
      }

      if (v32 < v29)
      {
        v29 = v32;
      }

      if (v36 < v29)
      {
        v29 = v36;
      }

      v10[v37] = v29;
      if (v29 > a9)
      {
        goto LABEL_42;
      }

      if (a6 == v23)
      {
        break;
      }

      v20 += 16;
      v28 = __OFADD__(v23++, 1);
      if (v28)
      {
        goto LABEL_59;
      }
    }

    if (v21 != a5)
    {
      v28 = __OFADD__(v21++, 1);
      v19 = v42;
      v20 = v41;
      if (!v28)
      {
        continue;
      }

      __break(1u);
LABEL_42:
      v38 = a5;
      if (a6 > a5)
      {
        v38 = a6;
      }

LABEL_44:
      *a10 = v38;
    }

    break;
  }

  v39 = a3 * a6;
  if ((a3 * a6) >> 64 != (a3 * a6) >> 63)
  {
    goto LABEL_63;
  }

  v28 = __OFADD__(v39, a5);
  v40 = v39 + a5;
  if (!v28)
  {
    v38 = v10[v40];
    goto LABEL_44;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

unint64_t sub_1D89C91D8()
{
  result = qword_1ECA66EB0;
  if (!qword_1ECA66EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66EB0);
  }

  return result;
}

uint64_t sub_1D89C922C()
{
  result = os_variant_has_internal_content();
  byte_1EE0E55D8 = result;
  return result;
}

uint64_t static SystemVariantSupport.isInternalBuild.getter()
{
  if (qword_1EE0E55D0 != -1)
  {
    swift_once();
  }

  return byte_1EE0E55D8;
}

BOOL static TextDetectionReadabilityUtility.isSmallOrIsolated(result:imageResolution:minConfidence:minBoundingBoxPercentage:)(uint64_t a1, double a2, double a3, float a4, double a5)
{
  if (sub_1D89CC210(a1, a2, a3, a5))
  {
    return 1;
  }

  v8 = *(a1 + *(type metadata accessor for TextDetectorResult(0) + 44));
  v9 = (v8 + 32);
  v10 = *(v8 + 16) + 1;
  do
  {
    result = --v10 == 0;
    if (!v10)
    {
      break;
    }

    v11 = *v9;
    v9 += 10;
  }

  while (v11 < a4);
  return result;
}

CGFloat static TextDetectionReadabilityUtility.getBoundingBoxPercentage(result:imageResolution:)(double a1, double a2)
{
  v4 = a1 * a2;
  type metadata accessor for TextDetectorResult(0);
  Corners.bounds.getter();
  v5 = CGRectGetWidth(v7) * a1;
  Corners.bounds.getter();
  return v5 * (CGRectGetHeight(v8) * a2) / v4 * 100.0;
}

uint64_t sub_1D89C93D4(void **a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for TextDetectorResult(0) - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1D885D36C(v7);
  }

  v8 = v7[2];
  v10[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10[1] = v8;
  result = sub_1D89C9500(v10, a2, a3);
  *a1 = v7;
  return result;
}

uint64_t sub_1D89C9494(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D885D394(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1D89C963C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D89C9500(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_1D8B16B30();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for TextDetectorResult(0);
        v10 = sub_1D8B15D60();
        *(v10 + 16) = v9;
      }

      v11 = *(type metadata accessor for TextDetectorResult(0) - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_1D89C963C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D8B16B30();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA634B0);
        v5 = sub_1D8B15D60();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D89CADB0(v7, v8, a1, v4);
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
    return sub_1D89C9B68(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D89C9744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for TextDetectorResult(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v31 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v18 = &v31 - v17;
  v33 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v39 = v18 + 8;
    v38 = v14 + 8;
    v21 = v19 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v24 = v19;
    v32 = v20;
    v25 = v19 + v20 * a3;
LABEL_5:
    v36 = v21;
    v37 = a3;
    v34 = v25;
    v35 = v23;
    v26 = v23;
    while (1)
    {
      sub_1D88CC83C(v25, v18);
      sub_1D88CC83C(v21, v14);
      v27 = *(v8 + 24);
      v28 = *&v39[v27];
      v29 = *&v38[v27];
      sub_1D89A2300(v14);
      result = sub_1D89A2300(v18);
      if (v28 >= v29)
      {
LABEL_4:
        a3 = v37 + 1;
        v21 = v36 + v32;
        v23 = v35 - 1;
        v25 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v24)
      {
        break;
      }

      sub_1D89CDBB8(v25, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D89CDBB8(v11, v21);
      v21 += v22;
      v25 += v22;
      if (__CFADD__(v26++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D89C9960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for TextDetectorResult(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v30 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v18 = &v30 - v17;
  v32 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v31 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v36 = a3;
    v33 = v24;
    v34 = v23;
    v25 = v23;
    v35 = v21;
    while (1)
    {
      sub_1D88CC83C(v24, v18);
      sub_1D88CC83C(v21, v14);
      v26 = *(v8 + 24);
      v27 = *&v18[v26];
      v28 = *&v14[v26];
      sub_1D89A2300(v14);
      result = sub_1D89A2300(v18);
      if (v27 >= v28)
      {
LABEL_4:
        a3 = v36 + 1;
        v21 = v35 + v31;
        v23 = v34 - 1;
        v24 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      sub_1D89CDBB8(v24, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D89CDBB8(v11, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D89C9B68(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = result - a3;
LABEL_5:
    v9 = *(v6 + 8 * v4);
    v10 = v8;
    v11 = v7;
    while (1)
    {
      v12 = *v11;
      if (*(v9 + 16))
      {
        v13 = type metadata accessor for TextDetectorResult(0);
        v14 = *(v13 - 8);
        result = v13 - 8;
        v15 = *(v9 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(result + 32));
        if (!*(v12 + 16))
        {
          if (v15 >= 0.0)
          {
            goto LABEL_4;
          }

          goto LABEL_12;
        }
      }

      else
      {
        v15 = 0.0;
        if (!*(v12 + 16))
        {
          goto LABEL_4;
        }
      }

      v16 = type metadata accessor for TextDetectorResult(0);
      v17 = *(v16 - 8);
      result = v16 - 8;
      if (v15 >= *(v12 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(result + 32)))
      {
        goto LABEL_4;
      }

LABEL_12:
      if (!v6)
      {
        __break(1u);
        return result;
      }

      *v11 = v9;
      v11[1] = v12;
      --v11;
      if (__CFADD__(v10++, 1))
      {
LABEL_4:
        ++v4;
        v7 += 8;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_1D89C9CD4(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v118 = a1;
  v9 = type metadata accessor for TextDetectorResult(0);
  v125 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v115 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v127 = &v114 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  result = MEMORY[0x1EEE9AC00](v14);
  v121 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v118;
    if (!*v118)
    {
      goto LABEL_135;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v37 = v121;
    if ((result & 1) == 0)
    {
LABEL_129:
      result = sub_1D885CC68(v20);
      v20 = result;
    }

    v133 = v20;
    v109 = *(v20 + 2);
    if (v109 >= 2)
    {
      v110 = v125;
      while (*v37)
      {
        v111 = *&v20[16 * v109];
        v112 = *&v20[16 * v109 + 24];
        sub_1D89CB574(*v37 + *(v110 + 72) * v111, *v37 + *(v110 + 72) * *&v20[16 * v109 + 16], *v37 + *(v110 + 72) * v112, v5);
        if (v6)
        {
        }

        if (v112 < v111)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1D885CC68(v20);
        }

        if (v109 - 2 >= *(v20 + 2))
        {
          goto LABEL_123;
        }

        v113 = &v20[16 * v109];
        *v113 = v111;
        *(v113 + 1) = v112;
        v133 = v20;
        result = sub_1D885CBDC(v109 - 1);
        v20 = v133;
        v109 = *(v133 + 2);
        if (v109 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v131 = &v114 - v16;
  v132 = result;
  v116 = a4;
  v19 = 0;
  v128 = v17;
  v129 = v17 + 8;
  v130 = &v114 - v16 + 8;
  v20 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v21 = v19;
    v126 = v20;
    if (v19 + 1 >= v18)
    {
      v36 = v19 + 1;
      v37 = v121;
    }

    else
    {
      v22 = *v121;
      v23 = *(v125 + 72);
      v5 = *v121 + v23 * (v19 + 1);
      v24 = v131;
      sub_1D88CC83C(v5, v131);
      v25 = v128;
      sub_1D88CC83C(v22 + v23 * v19, v128);
      v26 = *(v132 + 24);
      v27 = *&v130[v26];
      v28 = *(v129 + v26);
      sub_1D89A2300(v25);
      result = sub_1D89A2300(v24);
      v117 = v19;
      v29 = v19 + 2;
      v30 = v22 + v23 * (v19 + 2);
      while (v18 != v29)
      {
        v31 = v131;
        sub_1D88CC83C(v30, v131);
        v32 = v128;
        sub_1D88CC83C(v5, v128);
        v33 = *(v132 + 24);
        v34 = *&v130[v33];
        v35 = *(v129 + v33);
        sub_1D89A2300(v32);
        result = sub_1D89A2300(v31);
        v20 = v126;
        ++v29;
        v30 += v23;
        v5 += v23;
        if (v27 < v28 == v34 >= v35)
        {
          v36 = v29 - 1;
          goto LABEL_11;
        }
      }

      v36 = v18;
LABEL_11:
      v21 = v117;
      v37 = v121;
      if (v27 < v28)
      {
        if (v36 < v117)
        {
          goto LABEL_126;
        }

        if (v117 < v36)
        {
          v114 = v6;
          v38 = v23 * (v36 - 1);
          v39 = v36;
          v40 = v36 * v23;
          v124 = v36;
          v41 = v117;
          v42 = v117 * v23;
          v43 = v115;
          do
          {
            if (v41 != --v39)
            {
              v44 = *v121;
              if (!*v121)
              {
                goto LABEL_132;
              }

              v5 = v44 + v42;
              sub_1D89CDBB8(v44 + v42, v43);
              if (v42 < v38 || v5 >= v44 + v40)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v42 != v38)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1D89CDBB8(v43, v44 + v38);
              v20 = v126;
            }

            ++v41;
            v38 -= v23;
            v40 -= v23;
            v42 += v23;
          }

          while (v41 < v39);
          v6 = v114;
          v37 = v121;
          v21 = v117;
          v36 = v124;
        }
      }
    }

    v45 = v37[1];
    if (v36 < v45)
    {
      if (__OFSUB__(v36, v21))
      {
        goto LABEL_125;
      }

      if (v36 - v21 < v116)
      {
        if (__OFADD__(v21, v116))
        {
          goto LABEL_127;
        }

        if (v21 + v116 >= v45)
        {
          v46 = v37[1];
        }

        else
        {
          v46 = v21 + v116;
        }

        if (v46 < v21)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v36 != v46)
        {
          break;
        }
      }
    }

    v19 = v36;
    if (v36 < v21)
    {
      goto LABEL_124;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D87C7C5C(0, *(v20 + 2) + 1, 1, v20);
      v20 = result;
    }

    v48 = *(v20 + 2);
    v47 = *(v20 + 3);
    v5 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      result = sub_1D87C7C5C((v47 > 1), v48 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v5;
    v49 = &v20[16 * v48];
    *(v49 + 4) = v21;
    *(v49 + 5) = v19;
    if (!*v118)
    {
      goto LABEL_134;
    }

    if (v48)
    {
      v50 = *v118;
      while (1)
      {
        v51 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v52 = *(v20 + 4);
          v53 = *(v20 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_55:
          if (v55)
          {
            goto LABEL_113;
          }

          v68 = &v20[16 * v5];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_116;
          }

          v74 = &v20[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_120;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v5 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v78 = &v20[16 * v5];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_69:
        if (v73)
        {
          goto LABEL_115;
        }

        v81 = &v20[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_118;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_76:
        v89 = v51 - 1;
        if (v51 - 1 >= v5)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v37)
        {
          goto LABEL_131;
        }

        v90 = *&v20[16 * v89 + 32];
        v5 = *&v20[16 * v51 + 40];
        sub_1D89CB574(*v37 + *(v125 + 72) * v90, *v37 + *(v125 + 72) * *&v20[16 * v51 + 32], *v37 + *(v125 + 72) * v5, v50);
        if (v6)
        {
        }

        if (v5 < v90)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1D885CC68(v20);
        }

        if (v89 >= *(v20 + 2))
        {
          goto LABEL_110;
        }

        v91 = &v20[16 * v89];
        *(v91 + 4) = v90;
        *(v91 + 5) = v5;
        v133 = v20;
        result = sub_1D885CBDC(v51);
        v20 = v133;
        v5 = *(v133 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v20[16 * v5 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_111;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_112;
      }

      v63 = &v20[16 * v5];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_114;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_117;
      }

      if (v67 >= v59)
      {
        v85 = &v20[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_121;
        }

        if (v54 < v88)
        {
          v51 = v5 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v18 = v37[1];
    if (v19 >= v18)
    {
      goto LABEL_96;
    }
  }

  v114 = v6;
  v92 = *v37;
  v93 = *(v125 + 72);
  v94 = *v37 + v93 * (v36 - 1);
  v95 = v21;
  v96 = -v93;
  v117 = v95;
  v97 = v95 - v36;
  v119 = v93;
  v120 = v46;
  v98 = v92 + v36 * v93;
  v99 = v128;
LABEL_87:
  v123 = v94;
  v124 = v36;
  v5 = v98;
  v122 = v97;
  v100 = v97;
  v101 = v132;
  while (1)
  {
    v102 = v131;
    sub_1D88CC83C(v5, v131);
    sub_1D88CC83C(v94, v99);
    v103 = *(v101 + 24);
    v104 = *&v130[v103];
    v105 = *(v129 + v103);
    sub_1D89A2300(v99);
    result = sub_1D89A2300(v102);
    if (v104 >= v105)
    {
LABEL_86:
      v36 = v124 + 1;
      v19 = v120;
      v94 = v123 + v119;
      v97 = v122 - 1;
      v98 += v119;
      if (v124 + 1 != v120)
      {
        goto LABEL_87;
      }

      v6 = v114;
      v37 = v121;
      v20 = v126;
      v21 = v117;
      if (v120 < v117)
      {
        goto LABEL_124;
      }

      goto LABEL_35;
    }

    if (!v92)
    {
      break;
    }

    v106 = v127;
    sub_1D89CDBB8(v5, v127);
    v101 = v132;
    swift_arrayInitWithTakeFrontToBack();
    v107 = v106;
    v99 = v128;
    sub_1D89CDBB8(v107, v94);
    v94 += v96;
    v5 += v96;
    if (__CFADD__(v100++, 1))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

uint64_t sub_1D89CA560(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v110 = a1;
  v9 = type metadata accessor for TextDetectorResult(0);
  v117 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v112 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v120 = &v105 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v105 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v19 = &v105 - v18;
  v119 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v5 = *v110;
    if (!*v110)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_1D885CC68(v22);
      v22 = result;
    }

    v122 = v22;
    v101 = *(v22 + 2);
    if (v101 >= 2)
    {
      while (*v119)
      {
        v102 = *&v22[16 * v101];
        v103 = *&v22[16 * v101 + 24];
        sub_1D89CBA18(*v119 + *(v117 + 72) * v102, *v119 + *(v117 + 72) * *&v22[16 * v101 + 16], *v119 + *(v117 + 72) * v103, v5);
        if (v6)
        {
        }

        if (v103 < v102)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_1D885CC68(v22);
        }

        if (v101 - 2 >= *(v22 + 2))
        {
          goto LABEL_120;
        }

        v104 = &v22[16 * v101];
        *v104 = v102;
        *(v104 + 1) = v103;
        v122 = v22;
        result = sub_1D885CBDC(v101 - 1);
        v22 = v122;
        v101 = *(v122 + 2);
        if (v101 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v121 = result;
  v108 = a4;
  v21 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    if (v24 >= v20)
    {
      v20 = v24;
    }

    else
    {
      v25 = *v119;
      v26 = *(v117 + 72);
      v5 = *v119 + v26 * v24;
      sub_1D88CC83C(v5, v19);
      sub_1D88CC83C(v25 + v26 * v23, v16);
      v27 = *(v121 + 24);
      v28 = *&v19[v27];
      v29 = *&v16[v27];
      sub_1D89A2300(v16);
      result = sub_1D89A2300(v19);
      v109 = v23;
      v30 = v23 + 2;
      v118 = v26;
      v31 = v25 + v26 * v30;
      while (v20 != v30)
      {
        sub_1D88CC83C(v31, v19);
        sub_1D88CC83C(v5, v16);
        v32 = *(v121 + 24);
        v33 = *&v19[v32];
        v34 = *&v16[v32];
        sub_1D89A2300(v16);
        result = sub_1D89A2300(v19);
        ++v30;
        v31 += v118;
        v5 += v118;
        if (v28 < v29 == v33 >= v34)
        {
          v20 = v30 - 1;
          break;
        }
      }

      v23 = v109;
      if (v28 < v29)
      {
        if (v20 < v109)
        {
          goto LABEL_123;
        }

        if (v109 < v20)
        {
          v106 = v22;
          v107 = v6;
          v35 = v118 * (v20 - 1);
          v36 = v20 * v118;
          v116 = v20;
          v37 = v20;
          v38 = v109;
          v39 = v109 * v118;
          do
          {
            if (v38 != --v37)
            {
              v5 = *v119;
              if (!*v119)
              {
                goto LABEL_129;
              }

              sub_1D89CDBB8(v5 + v39, v112);
              if (v39 < v35 || v5 + v39 >= v5 + v36)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v39 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1D89CDBB8(v112, v5 + v35);
            }

            ++v38;
            v35 -= v118;
            v36 -= v118;
            v39 += v118;
          }

          while (v38 < v37);
          v22 = v106;
          v6 = v107;
          v23 = v109;
          v20 = v116;
        }
      }
    }

    v40 = v119[1];
    if (v20 < v40)
    {
      if (__OFSUB__(v20, v23))
      {
        goto LABEL_122;
      }

      if (v20 - v23 < v108)
      {
        if (__OFADD__(v23, v108))
        {
          goto LABEL_124;
        }

        if (v23 + v108 >= v40)
        {
          v41 = v119[1];
        }

        else
        {
          v41 = v23 + v108;
        }

        if (v41 < v23)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v20 != v41)
        {
          break;
        }
      }
    }

    v42 = v20;
    if (v20 < v23)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D87C7C5C(0, *(v22 + 2) + 1, 1, v22);
      v22 = result;
    }

    v44 = *(v22 + 2);
    v43 = *(v22 + 3);
    v5 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      result = sub_1D87C7C5C((v43 > 1), v44 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v45 = &v22[16 * v44];
    *(v45 + 4) = v23;
    *(v45 + 5) = v42;
    v46 = *v110;
    if (!*v110)
    {
      goto LABEL_131;
    }

    v113 = v42;
    if (v44)
    {
      while (1)
      {
        v47 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v48 = *(v22 + 4);
          v49 = *(v22 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_52:
          if (v51)
          {
            goto LABEL_110;
          }

          v64 = &v22[16 * v5];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_113;
          }

          v70 = &v22[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_117;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v74 = &v22[16 * v5];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_66:
        if (v69)
        {
          goto LABEL_112;
        }

        v77 = &v22[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_115;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_73:
        v85 = v47 - 1;
        if (v47 - 1 >= v5)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*v119)
        {
          goto LABEL_128;
        }

        v86 = *&v22[16 * v85 + 32];
        v5 = *&v22[16 * v47 + 40];
        sub_1D89CBA18(*v119 + *(v117 + 72) * v86, *v119 + *(v117 + 72) * *&v22[16 * v47 + 32], *v119 + *(v117 + 72) * v5, v46);
        if (v6)
        {
        }

        if (v5 < v86)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_1D885CC68(v22);
        }

        if (v85 >= *(v22 + 2))
        {
          goto LABEL_107;
        }

        v87 = &v22[16 * v85];
        *(v87 + 4) = v86;
        *(v87 + 5) = v5;
        v122 = v22;
        result = sub_1D885CBDC(v47);
        v22 = v122;
        v5 = *(v122 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v22[16 * v5 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_108;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_109;
      }

      v59 = &v22[16 * v5];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_111;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_114;
      }

      if (v63 >= v55)
      {
        v81 = &v22[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_118;
        }

        if (v50 < v84)
        {
          v47 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = v119[1];
    v21 = v113;
    if (v113 >= v20)
    {
      goto LABEL_94;
    }
  }

  v106 = v22;
  v107 = v6;
  v88 = *v119;
  v89 = *(v117 + 72);
  v90 = *v119 + v89 * (v20 - 1);
  v91 = v23;
  v92 = -v89;
  v109 = v91;
  v93 = v91 - v20;
  v111 = v89;
  v5 = v88 + v20 * v89;
  v113 = v41;
LABEL_85:
  v115 = v93;
  v116 = v20;
  v114 = v5;
  v118 = v90;
  v94 = v90;
  v95 = v121;
  while (1)
  {
    sub_1D88CC83C(v5, v19);
    sub_1D88CC83C(v94, v16);
    v96 = *(v95 + 24);
    v97 = *&v19[v96];
    v98 = *&v16[v96];
    sub_1D89A2300(v16);
    result = sub_1D89A2300(v19);
    if (v97 >= v98)
    {
LABEL_84:
      v20 = v116 + 1;
      v90 = v118 + v111;
      v93 = v115 - 1;
      v42 = v113;
      v5 = v114 + v111;
      if (v116 + 1 != v113)
      {
        goto LABEL_85;
      }

      v22 = v106;
      v6 = v107;
      v23 = v109;
      if (v113 < v109)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v88)
    {
      break;
    }

    v99 = v120;
    sub_1D89CDBB8(v5, v120);
    v95 = v121;
    swift_arrayInitWithTakeFrontToBack();
    sub_1D89CDBB8(v99, v94);
    v94 += v92;
    v5 += v92;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1D89CADB0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v99 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v5 = *v99;
    if (!*v99)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_105:
      v91 = v6;
      v92 = *(v9 + 2);
      if (v92 >= 2)
      {
        while (*a3)
        {
          v6 = (v92 - 1);
          v93 = *&v9[16 * v92];
          v94 = *&v9[16 * v92 + 24];
          sub_1D89CBE8C((*a3 + 8 * v93), (*a3 + 8 * *&v9[16 * v92 + 16]), (*a3 + 8 * v94), v5);
          if (v91)
          {
          }

          if (v94 < v93)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1D885CC68(v9);
          }

          if (v92 - 2 >= *(v9 + 2))
          {
            goto LABEL_130;
          }

          v95 = &v9[16 * v92];
          *v95 = v93;
          *(v95 + 1) = v94;
          result = sub_1D885CBDC(v92 - 1);
          v92 = *(v9 + 2);
          if (v92 <= 1)
          {
          }
        }

        goto LABEL_140;
      }
    }

LABEL_136:
    result = sub_1D885CC68(v9);
    v9 = result;
    goto LABEL_105;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 >= v7)
    {
      goto LABEL_29;
    }

    v5 = v6;
    v11 = *a3;
    v12 = *(*a3 + 8 * v8);
    v13 = *(*a3 + 8 * v10);
    v14 = 0.0;
    v15 = 0.0;
    if (*(v12 + 16))
    {
      v16 = type metadata accessor for TextDetectorResult(0);
      v17 = *(v16 - 8);
      result = v16 - 8;
      v15 = *(v12 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(result + 32));
    }

    if (*(v13 + 16))
    {
      v18 = type metadata accessor for TextDetectorResult(0);
      v19 = *(v18 - 8);
      result = v18 - 8;
      v14 = *(v13 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(result + 32));
    }

    v8 = v10 + 2;
    if (v10 + 2 < v7)
    {
      while (1)
      {
        v20 = *(v11 + 8 * v8);
        if (*(v20 + 16))
        {
          v21 = type metadata accessor for TextDetectorResult(0);
          v22 = *(v21 - 8);
          result = v21 - 8;
          v23 = *(v20 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(result + 32));
          if (*(v12 + 16))
          {
            goto LABEL_17;
          }
        }

        else
        {
          v23 = 0.0;
          if (*(v12 + 16))
          {
LABEL_17:
            v24 = type metadata accessor for TextDetectorResult(0);
            v25 = *(v24 - 8);
            result = v24 - 8;
            if (v15 < v14 == v23 >= *(v12 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(result + 32)))
            {
              break;
            }

            goto LABEL_12;
          }
        }

        if (v15 < v14 == v23 >= 0.0)
        {
          break;
        }

LABEL_12:
        ++v8;
        v12 = v20;
        if (v7 == v8)
        {
          v8 = v7;
          break;
        }
      }
    }

    v6 = v5;
    if (v15 < v14)
    {
      if (v8 < v10)
      {
        goto LABEL_133;
      }

      if (v10 < v8)
      {
        v26 = 8 * v8 - 8;
        v27 = 8 * v10;
        v28 = v8;
        v29 = v10;
        do
        {
          if (v29 != --v28)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_139;
            }

            v31 = *(v30 + v27);
            *(v30 + v27) = *(v30 + v26);
            *(v30 + v26) = v31;
          }

          ++v29;
          v26 -= 8;
          v27 += 8;
        }

        while (v29 < v28);
        v7 = a3[1];
      }
    }

LABEL_29:
    if (v8 >= v7)
    {
      goto LABEL_52;
    }

    if (__OFSUB__(v8, v10))
    {
      goto LABEL_132;
    }

    if (v8 - v10 >= a4)
    {
      goto LABEL_52;
    }

    if (__OFADD__(v10, a4))
    {
      goto LABEL_134;
    }

    if (v10 + a4 >= v7)
    {
      v32 = v7;
    }

    else
    {
      v32 = v10 + a4;
    }

    if (v32 < v10)
    {
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    if (v8 == v32)
    {
      goto LABEL_52;
    }

    v96 = v10;
    v97 = v6;
    v33 = *a3;
    v34 = *a3 + 8 * v8 - 8;
    v35 = (v10 - v8);
    v100 = v32;
LABEL_40:
    v36 = *(v33 + 8 * v8);
    v5 = v35;
    v37 = v34;
LABEL_41:
    v38 = *v37;
    if (*(v36 + 16))
    {
      v39 = type metadata accessor for TextDetectorResult(0);
      v40 = *(v39 - 8);
      result = v39 - 8;
      v41 = *(v36 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(result + 32));
      if (!*(v38 + 16))
      {
        if (v41 >= 0.0)
        {
          goto LABEL_39;
        }

        goto LABEL_47;
      }
    }

    else
    {
      v41 = 0.0;
      if (!*(v38 + 16))
      {
        goto LABEL_39;
      }
    }

    v42 = type metadata accessor for TextDetectorResult(0);
    v43 = *(v42 - 8);
    result = v42 - 8;
    if (v41 >= *(v38 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(result + 32)))
    {
      goto LABEL_39;
    }

LABEL_47:
    if (!v33)
    {
      break;
    }

    *v37 = v36;
    v37[1] = v38;
    --v37;
    if (!__CFADD__(v5++, 1))
    {
      goto LABEL_41;
    }

LABEL_39:
    ++v8;
    v34 += 8;
    --v35;
    if (v8 != v100)
    {
      goto LABEL_40;
    }

    v8 = v100;
    v10 = v96;
    v6 = v97;
LABEL_52:
    if (v8 < v10)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D87C7C5C(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v46 = *(v9 + 2);
    v45 = *(v9 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_1D87C7C5C((v45 > 1), v46 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v47;
    v48 = &v9[16 * v46];
    *(v48 + 4) = v10;
    *(v48 + 5) = v8;
    v49 = *v99;
    if (!*v99)
    {
      goto LABEL_141;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v9 + 4);
          v52 = *(v9 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_72:
          if (v54)
          {
            goto LABEL_120;
          }

          v67 = &v9[16 * v47];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_123;
          }

          v73 = &v9[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_127;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v77 = &v9[16 * v47];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_86:
        if (v72)
        {
          goto LABEL_122;
        }

        v80 = &v9[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_125;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_93:
        v88 = v50 - 1;
        if (v50 - 1 >= v47)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*a3)
        {
          goto LABEL_138;
        }

        v89 = *&v9[16 * v88 + 32];
        v5 = *&v9[16 * v50 + 40];
        sub_1D89CBE8C((*a3 + 8 * v89), (*a3 + 8 * *&v9[16 * v50 + 32]), (*a3 + 8 * v5), v49);
        if (v6)
        {
        }

        if (v5 < v89)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D885CC68(v9);
        }

        if (v88 >= *(v9 + 2))
        {
          goto LABEL_117;
        }

        v90 = &v9[16 * v88];
        *(v90 + 4) = v89;
        *(v90 + 5) = v5;
        result = sub_1D885CBDC(v50);
        v47 = *(v9 + 2);
        if (v47 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v9[16 * v47 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_118;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_119;
      }

      v62 = &v9[16 * v47];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_121;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_124;
      }

      if (v66 >= v58)
      {
        v84 = &v9[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_128;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_103;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t sub_1D89CB574(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = type metadata accessor for TextDetectorResult(0);
  v8 = MEMORY[0x1EEE9AC00](v49);
  v48 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = &v41 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v52 = a1;
  v51 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v18;
    if (v18 >= 1)
    {
      v42 = v48 + 8;
      v43 = v12 + 8;
      v27 = -v14;
      v28 = a4 + v18;
      v45 = a4;
      v46 = a1;
      v44 = v27;
      do
      {
        v41 = v26;
        v29 = a2 + v27;
        v47 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v52 = a2;
            v50 = v41;
            goto LABEL_58;
          }

          v31 = a3;
          v32 = v26;
          a3 += v27;
          v33 = v28 + v27;
          sub_1D88CC83C(v33, v12);
          a2 = v29;
          v34 = v12;
          v35 = v48;
          sub_1D88CC83C(v29, v48);
          v36 = *(v49 + 24);
          v37 = *&v43[v36];
          v38 = *(v42 + v36);
          v39 = v35;
          v12 = v34;
          sub_1D89A2300(v39);
          sub_1D89A2300(v34);
          if (v37 < v38)
          {
            break;
          }

          v26 = v33;
          if (v31 < v28 || a3 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v46;
          }

          else
          {
            a1 = v46;
            if (v31 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v33;
          v30 = v33 > v45;
          v27 = v44;
          a2 = v47;
          if (!v30)
          {
            goto LABEL_56;
          }
        }

        if (v31 < v47 || a3 >= v47)
        {
          swift_arrayInitWithTakeFrontToBack();
          v26 = v32;
          v27 = v44;
          v40 = v45;
        }

        else
        {
          v26 = v32;
          v27 = v44;
          v40 = v45;
          if (v31 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v46;
      }

      while (v28 > v40);
    }

LABEL_56:
    v52 = a2;
    v50 = v26;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v50 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v47 = v12 + 8;
      v21 = v48 + 8;
      do
      {
        sub_1D88CC83C(a2, v12);
        v22 = v48;
        sub_1D88CC83C(a4, v48);
        v23 = *(v49 + 24);
        v24 = *&v47[v23];
        v25 = *(v21 + v23);
        sub_1D89A2300(v22);
        sub_1D89A2300(v12);
        if (v24 >= v25)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v51 = a4 + v14;
          a4 += v14;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v52 = a1;
      }

      while (a4 < v19 && a2 < a3);
    }
  }

LABEL_58:
  sub_1D885CE84(&v52, &v51, &v50);
  return 1;
}

uint64_t sub_1D89CBA18(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v47 = type metadata accessor for TextDetectorResult(0);
  v8 = MEMORY[0x1EEE9AC00](v47);
  v46 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = &v41 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v50 = a1;
  v49 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v18;
    if (v18 >= 1)
    {
      v26 = -v14;
      v27 = a4 + v18;
      v44 = v26;
      v45 = a4;
      do
      {
        v42 = v25;
        v28 = a2 + v26;
        while (1)
        {
          if (a2 <= a1)
          {
            v50 = a2;
            v25 = v42;
            goto LABEL_57;
          }

          v30 = a3;
          v43 = v25;
          a3 += v26;
          v31 = v27 + v26;
          sub_1D88CC83C(v31, v12);
          v32 = v28;
          v33 = v28;
          v34 = v12;
          v35 = v46;
          sub_1D88CC83C(v33, v46);
          v36 = *(v47 + 24);
          v37 = *(v34 + v36);
          v38 = *(v35 + v36);
          v39 = v35;
          v12 = v34;
          sub_1D89A2300(v39);
          sub_1D89A2300(v34);
          if (v37 < v38)
          {
            break;
          }

          v25 = v31;
          if (v30 < v27 || a3 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v25 = v31;
            v28 = v32;
          }

          else
          {
            v28 = v32;
            if (v30 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
              v25 = v31;
            }
          }

          v27 = v25;
          v29 = v31 > v45;
          v26 = v44;
          if (!v29)
          {
            goto LABEL_55;
          }
        }

        if (v30 < a2 || a3 >= a2)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v44;
        }

        else
        {
          v40 = v30 == a2;
          a2 = v32;
          v26 = v44;
          if (!v40)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v25 = v43;
      }

      while (v27 > v45);
    }

LABEL_55:
    v50 = a2;
LABEL_57:
    v48 = v25;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v48 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        sub_1D88CC83C(a2, v12);
        v21 = v46;
        sub_1D88CC83C(a4, v46);
        v22 = *(v47 + 24);
        v23 = *&v12[v22];
        v24 = *(v21 + v22);
        sub_1D89A2300(v21);
        sub_1D89A2300(v12);
        if (v23 >= v24)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v49 = a4 + v14;
          a4 += v14;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v50 = a1;
      }

      while (a4 < v19 && a2 < a3);
    }
  }

  sub_1D885CE84(&v50, &v49, &v48);
  return 1;
}

uint64_t sub_1D89CBE8C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_46;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6;
      v17 = *v4;
      if (*(*v6 + 16))
      {
        v18 = type metadata accessor for TextDetectorResult(0);
        v19 = *(v16 + ((*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80)) + *(v18 + 24));
        if (!*(v17 + 16))
        {
          if (v19 < 0.0)
          {
            goto LABEL_21;
          }

          goto LABEL_11;
        }
      }

      else
      {
        v19 = 0.0;
        if (!*(v17 + 16))
        {
          goto LABEL_11;
        }
      }

      v20 = type metadata accessor for TextDetectorResult(0);
      if (v19 < *(v17 + ((*(*(v20 - 8) + 80) + 32) & ~*(*(v20 - 8) + 80)) + *(v20 + 24)))
      {
LABEL_21:
        v17 = v16;
        v15 = v7 == v6;
        v6 += 8;
        if (v15)
        {
          goto LABEL_13;
        }

LABEL_12:
        *v7 = v17;
        goto LABEL_13;
      }

LABEL_11:
      v15 = v7 == v4;
      v4 += 8;
      if (!v15)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
    v21 = v6;
    while (1)
    {
      v32 = v21;
      v22 = v21 - 8;
      v23 = v5;
      v24 = v14;
      while (1)
      {
        v26 = *(v24 - 8);
        v24 -= 8;
        v25 = v26;
        v6 = v22;
        v27 = *v22;
        if (!*(v26 + 16))
        {
          break;
        }

        v28 = type metadata accessor for TextDetectorResult(0);
        v29 = *(v25 + ((*(*(v28 - 8) + 80) + 32) & ~*(*(v28 - 8) + 80)) + *(v28 + 24));
        v5 = v23 - 8;
        if (*(v27 + 16))
        {
          goto LABEL_37;
        }

        if (v29 < 0.0)
        {
          goto LABEL_40;
        }

LABEL_38:
        v22 = v6;
        if (v14 != v23)
        {
          *v5 = v25;
        }

        v14 = v24;
        v23 = v5;
        if (v24 <= v4)
        {
          v14 = v24;
          v6 = v32;
          goto LABEL_46;
        }
      }

      v5 = v23 - 8;
      v29 = 0.0;
      if (!*(v27 + 16))
      {
        goto LABEL_38;
      }

LABEL_37:
      v30 = type metadata accessor for TextDetectorResult(0);
      if (v29 >= *(v27 + ((*(*(v30 - 8) + 80) + 32) & ~*(*(v30 - 8) + 80)) + *(v30 + 24)))
      {
        goto LABEL_38;
      }

LABEL_40:
      if (v23 != v32)
      {
        *v5 = v27;
      }

      if (v14 > v4)
      {
        v21 = v6;
        if (v6 > v7)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_46:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

BOOL sub_1D89CC210(uint64_t a1, double a2, double a3, double a4)
{
  v8 = type metadata accessor for TextDetectorResult(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2 * a3;
  v13 = (a1 + *(v9 + 24));
  v14 = v13[1];
  v30 = *v13;
  v31 = v14;
  v15 = v13[3];
  v32 = v13[2];
  v33 = v15;
  Corners.bounds.getter();
  v16 = CGRectGetWidth(v34) * a2;
  v17 = v13[1];
  v30 = *v13;
  v31 = v17;
  v18 = v13[3];
  v32 = v13[2];
  v33 = v18;
  Corners.bounds.getter();
  v19 = v16 * (CGRectGetHeight(v35) * a3) / v12 * 100.0;
  if (v19 < a4)
  {
    if (qword_1EE0E4258 != -1)
    {
      swift_once();
    }

    v20 = sub_1D8B151E0();
    __swift_project_value_buffer(v20, qword_1EE0E4260);
    sub_1D88CC83C(a1, v11);
    v21 = sub_1D8B151C0();
    v22 = sub_1D8B16200();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v30 = v24;
      *v23 = 134218242;
      *(v23 + 4) = a4;
      *(v23 + 12) = 2080;
      v25 = &v11[*(v8 + 28)];
      v26 = *v25;
      v27 = v25[1];

      sub_1D89A2300(v11);
      v28 = sub_1D89AC714(v26, v27, &v30);

      *(v23 + 14) = v28;
      _os_log_impl(&dword_1D8783000, v21, v22, "Not reading out text because it is less than %f%% of the image content: %s", v23, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1DA721330](v24, -1, -1);
      MEMORY[0x1DA721330](v23, -1, -1);
    }

    else
    {

      sub_1D89A2300(v11);
    }
  }

  return v19 < a4;
}

uint64_t sub_1D89CC470(uint64_t a1)
{
  v63 = type metadata accessor for TextDetectorResult(0);
  v53 = *(v63 - 8);
  v2 = MEMORY[0x1EEE9AC00](v63);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v2);
  v8 = &v52 - v6;
  v55 = *(a1 + 16);
  if (v55)
  {
    v9 = 0;
    v54 = a1 + 32;
    *&v7 = 134217984;
    v52 = v7;
    *&v7 = 136315138;
    v61 = v7;
    v59 = v4;
    v58 = &v52 - v6;
    do
    {
      v10 = *(v54 + 8 * v9);
      v11 = qword_1EE0E4258;

      if (v11 != -1)
      {
        swift_once();
      }

      ++v9;
      v12 = sub_1D8B151E0();
      v13 = __swift_project_value_buffer(v12, qword_1EE0E4260);
      v14 = sub_1D8B151C0();
      v15 = sub_1D8B16200();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = v52;
        *(v16 + 4) = v9;
        _os_log_impl(&dword_1D8783000, v14, v15, "Column %ld:", v16, 0xCu);
        MEMORY[0x1DA721330](v16, -1, -1);
      }

      v17 = *(v10 + 16);
      if (v17)
      {
        v57 = v9;
        v18 = 0;
        v19 = v10;
        v20 = &v8[*(v63 + 24)];
        v21 = (*(v53 + 80) + 32) & ~*(v53 + 80);
        v56 = v19;
        v69 = v19 + v21;
        v68 = *(v53 + 72);
        v60 = v13;
        v62 = v17;
        do
        {
          sub_1D88CC83C(v69 + v68 * v18, v8);
          v23 = *v20;
          v22 = *(v20 + 1);
          v25 = *(v20 + 2);
          v24 = *(v20 + 3);
          v27 = *(v20 + 4);
          v26 = *(v20 + 5);
          v29 = *(v20 + 6);
          v28 = *(v20 + 7);
          sub_1D89CDBB8(v8, v4);
          v30 = sub_1D8B151C0();
          v31 = sub_1D8B16200();
          if (os_log_type_enabled(v30, v31))
          {
            v65 = v31;
            v67 = v30;
            v32 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v71 = v64;
            v66 = v32;
            *v32 = v61;
            v33 = *&v4[*(v63 + 44)];
            v34 = *(v33 + 16);
            if (v34)
            {
              v70 = MEMORY[0x1E69E7CC0];
              sub_1D87F3F54(0, v34, 0);
              v35 = v70;
              v36 = (v33 + 48);
              do
              {
                v38 = *(v36 - 1);
                v37 = *v36;
                v70 = v35;
                v40 = *(v35 + 16);
                v39 = *(v35 + 24);

                if (v40 >= v39 >> 1)
                {
                  sub_1D87F3F54((v39 > 1), v40 + 1, 1);
                  v35 = v70;
                }

                *(v35 + 16) = v40 + 1;
                v41 = v35 + 16 * v40;
                *(v41 + 32) = v38;
                *(v41 + 40) = v37;
                v36 += 5;
                --v34;
              }

              while (v34);
              v4 = v59;
              v8 = v58;
            }

            else
            {
              v35 = MEMORY[0x1E69E7CC0];
            }

            v70 = v35;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
            sub_1D88F0E40();
            v42 = sub_1D8B15810();
            v44 = v43;

            sub_1D89A2300(v4);
            v45 = sub_1D89AC714(v42, v44, &v71);

            v46 = v66;
            *(v66 + 1) = v45;
            v47 = v67;
            _os_log_impl(&dword_1D8783000, v67, v65, "-- Text: %s", v46, 0xCu);
            v48 = v64;
            __swift_destroy_boxed_opaque_existential_1(v64);
            MEMORY[0x1DA721330](v48, -1, -1);
            MEMORY[0x1DA721330](v46, -1, -1);

            v17 = v62;
          }

          else
          {

            sub_1D89A2300(v4);
          }

          v49 = sub_1D8B151C0();
          v50 = sub_1D8B16200();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            *v51 = 134219776;
            *(v51 + 4) = v23;
            *(v51 + 12) = 2048;
            *(v51 + 14) = v22;
            *(v51 + 22) = 2048;
            *(v51 + 24) = v25;
            *(v51 + 32) = 2048;
            *(v51 + 34) = v24;
            *(v51 + 42) = 2048;
            *(v51 + 44) = v27;
            *(v51 + 52) = 2048;
            *(v51 + 54) = v26;
            *(v51 + 62) = 2048;
            *(v51 + 64) = v29;
            *(v51 + 72) = 2048;
            *(v51 + 74) = v28;
            _os_log_impl(&dword_1D8783000, v49, v50, "Top left: (%f, %f), top right: (%f, %f), bottom left: (%f, %f), bottom right: (%f, %f)\n", v51, 0x52u);
            MEMORY[0x1DA721330](v51, -1, -1);
          }

          ++v18;
        }

        while (v18 != v17);

        v9 = v57;
      }

      else
      {
      }
    }

    while (v9 != v55);
  }

  return result;
}

uint64_t sub_1D89CCA20(uint64_t a1, double a2)
{
  v139 = sub_1D8B13240();
  v4 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  *&v138 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for TextDetectorResult(0);
  v6 = *(v140 - 1);
  v7 = MEMORY[0x1EEE9AC00](v140);
  v121 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v120 = &v118 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v118 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v137 = &v118 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v118 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v118 - v21;
  v23 = *(a1 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  v119 = v6;
  v131 = v13;
  if (v23)
  {
    v123 = v20;
    v146 = MEMORY[0x1E69E7CC0];
    sub_1D87F44D0(0, v23, 0);
    v25 = 0;
    v24 = v146;
    v127 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v126 = a1 + v127;
    v26 = *(v6 + 72);
    v124 = (v4 + 16);
    v122 = (v4 + 8);
    v130 = v19;
    v129 = v22;
    v128 = v23;
    v125 = v26;
    do
    {
      v136 = v24;
      v135 = v25;
      sub_1D88CC83C(v126 + v26 * v25, v19);
      v27 = v137;
      sub_1D88CC83C(v19, v137);
      v28 = *v124;
      v29 = v138;
      v30 = v139;
      (*v124)(v138, v27, v139);
      v31 = v140;
      v32 = v140[6];
      v33 = *(v27 + v140[5]);
      v34 = *(v27 + v32 + 16);
      v143[0] = *(v27 + v32);
      v143[1] = v34;
      v35 = *(v27 + v32 + 48);
      v143[2] = *(v27 + v32 + 32);
      v144 = v35;
      v142 = 0.0;
      v141 = *(v27 + v140[8]);
      sub_1D8A5A9D8(&v142, &v141, v145);
      v36 = (v27 + v31[7]);
      v37 = *v36;
      v38 = v36[1];
      v39 = *(v27 + v31[9]);
      v40 = *(v27 + v31[10]);
      v41 = *(v27 + v31[11]);
      v42 = v27 + v31[12];
      v43 = *(v42 + 8);
      v132 = *v42;
      v134 = v43;
      v133 = *(v42 + 16);
      v44 = v123;
      v28(v123, v29, v30);
      *(v44 + v31[5]) = v33;
      v45 = (v44 + v31[6]);
      v46 = v145[1];
      *v45 = v145[0];
      v45[1] = v46;
      v47 = v145[3];
      v45[2] = v145[2];
      v45[3] = v47;
      v48 = (v44 + v31[7]);
      *v48 = v37;
      v48[1] = v38;
      *(v44 + v31[8]) = 0;
      *(v44 + v31[9]) = v39;
      *(v44 + v31[10]) = v40;
      *(v44 + v31[11]) = v41;
      v49 = *(v41 + 16);
      if (v49)
      {
        *&v143[0] = MEMORY[0x1E69E7CC0];

        v50 = v132;
        v51 = v132;

        sub_1D87F3F54(0, v49, 0);
        v52 = *&v143[0];
        v53 = (v41 + 48);
        do
        {
          v54 = *(v53 - 1);
          v55 = *v53;
          *&v143[0] = v52;
          v57 = *(v52 + 16);
          v56 = *(v52 + 24);

          if (v57 >= v56 >> 1)
          {
            sub_1D87F3F54((v56 > 1), v57 + 1, 1);
            v52 = *&v143[0];
          }

          *(v52 + 16) = v57 + 1;
          v58 = v52 + 16 * v57;
          *(v58 + 32) = v54;
          *(v58 + 40) = v55;
          v53 += 5;
          --v49;
        }

        while (v49);
      }

      else
      {
        v50 = v132;
        v59 = v132;

        v52 = MEMORY[0x1E69E7CC0];
      }

      *&v143[0] = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
      sub_1D88F0E40();
      sub_1D8B15810();

      sub_1D8B15AA0();
      v60 = sub_1D8B15BB0();
      v62 = v61;
      v64 = v63;
      v66 = v65;

      v67 = MEMORY[0x1DA71EF10](v60, v62, v64, v66);
      v69 = v68;

      (*v122)(v138, v139);
      v70 = v140;
      v71 = (v44 + v140[13]);
      *v71 = v67;
      v71[1] = v69;
      v72 = (v44 + v70[12]);
      v73 = v134;
      *v72 = v50;
      v72[1] = v73;
      v72[2] = v133;
      sub_1D89A2300(v137);
      v74 = v129;
      sub_1D88CC83C(v44, v129);
      v19 = v130;
      sub_1D89A2300(v130);
      sub_1D89A2300(v44);
      v24 = v136;
      v146 = v136;
      v76 = *(v136 + 16);
      v75 = *(v136 + 24);
      v77 = v135;
      if (v76 >= v75 >> 1)
      {
        sub_1D87F44D0(v75 > 1, v76 + 1, 1);
        v24 = v146;
      }

      v25 = v77 + 1;
      *(v24 + 16) = v76 + 1;
      v78 = v24 + v127 + v76 * v125;
      v26 = v125;
      sub_1D89CDBB8(v74, v78);
    }

    while (v25 != v128);
    v13 = v131;
  }

  *&v145[0] = v24;

  v79 = 0;
  sub_1D89C93D4(v145, sub_1D89CA560, sub_1D89C9960);

  v137 = *&v145[0];
  v80 = *(*&v145[0] + 16);
  if (!v80)
  {

    v83 = MEMORY[0x1E69E7CC0];
    v85 = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_41;
    }

LABEL_36:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_76:
      v83 = sub_1D87C862C(0, v83[2] + 1, 1, v83);
    }

    v98 = v83[2];
    v97 = v83[3];
    v99 = v98 + 1;
    if (v98 >= v97 >> 1)
    {
      v83 = sub_1D87C862C((v97 > 1), v98 + 1, 1, v83);
    }

    v83[2] = v99;
    v83[v98 + 4] = v85;
LABEL_42:
    *&v145[0] = MEMORY[0x1E69E7CC0];
    sub_1D87F4490(0, v99, 0);
    v100 = 0;
    v101 = *&v145[0];
    while (1)
    {
      if (v100 >= v83[2])
      {
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      *&v143[0] = v83[v100 + 4];
      swift_bridgeObjectRetain_n();
      sub_1D89C93D4(v143, sub_1D89C9CD4, sub_1D89C9744);
      if (v79)
      {
        break;
      }

      v102 = *&v143[0];
      *&v145[0] = v101;
      v104 = *(v101 + 16);
      v103 = *(v101 + 24);
      if (v104 >= v103 >> 1)
      {
        sub_1D87F4490((v103 > 1), v104 + 1, 1);
        v101 = *&v145[0];
      }

      ++v100;
      *(v101 + 16) = v104 + 1;
      *(v101 + 8 * v104 + 32) = v102;
      if (v99 == v100)
      {
        goto LABEL_50;
      }
    }

    __break(1u);

    __break(1u);
    return result;
  }

  v139 = *(v119 + 80);
  v81 = (v139 + 32) & ~v139;
  v82 = v137 + v81;
  v83 = MEMORY[0x1E69E7CC0];
  v84 = *(v119 + 72);
  v138 = xmmword_1D8B1AB90;
  v85 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1D88CC83C(v82, v13);
    v90 = v85[2];
    if (!v90)
    {
      sub_1D88CC83C(v13, v121);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v85 = sub_1D87C7EE0(0, 1, 1, v85);
      }

      v94 = v85[2];
      v93 = v85[3];
      if (v94 >= v93 >> 1)
      {
        v85 = sub_1D87C7EE0(v93 > 1, v94 + 1, 1, v85);
      }

      v86 = v131;
      sub_1D89A2300(v131);
      v85[2] = v94 + 1;
      v13 = v86;
      v87 = v85 + v81 + v94 * v84;
      v88 = &v144 + 8;
      goto LABEL_17;
    }

    if (vabdd_f64(*&v13[v140[6]], *(v85 + v81 + (v90 - 1) * v84 + v140[6])) <= a2)
    {
      sub_1D88CC83C(v13, v120);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v85 = sub_1D87C7EE0(0, v90 + 1, 1, v85);
      }

      v96 = v85[2];
      v95 = v85[3];
      if (v96 >= v95 >> 1)
      {
        v85 = sub_1D87C7EE0(v95 > 1, v96 + 1, 1, v85);
      }

      v13 = v131;
      sub_1D89A2300(v131);
      v85[2] = v96 + 1;
      v87 = v85 + v81 + v96 * v84;
      v88 = &v144;
LABEL_17:
      v89 = *(v88 - 32);
      goto LABEL_18;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v83 = sub_1D87C862C(0, v83[2] + 1, 1, v83);
    }

    v92 = v83[2];
    v91 = v83[3];
    if (v92 >= v91 >> 1)
    {
      v83 = sub_1D87C862C((v91 > 1), v92 + 1, 1, v83);
    }

    v83[2] = v92 + 1;
    v83[v92 + 4] = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA634C0);
    v85 = swift_allocObject();
    *(v85 + 1) = v138;
    v87 = v85 + v81;
    v13 = v131;
    v89 = v131;
LABEL_18:
    sub_1D89CDBB8(v89, v87);
    v82 += v84;
    --v80;
  }

  while (v80);

  if (v85[2])
  {
    goto LABEL_36;
  }

LABEL_41:
  v99 = v83[2];
  if (v99)
  {
    goto LABEL_42;
  }

  v101 = MEMORY[0x1E69E7CC0];
LABEL_50:
  *&v145[0] = v101;

  sub_1D89C9494(v145);

  v105 = *&v145[0];
  sub_1D89CC470(*&v145[0]);
  v106 = *(v105 + 16);
  if (v106)
  {
    v107 = 0;
    v139 = v105 + 32;
    v79 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v107 >= *(v105 + 16))
      {
        goto LABEL_71;
      }

      v108 = *(v139 + 8 * v107);
      v109 = *(v108 + 16);
      v110 = v79[2];
      v111 = v110 + v109;
      if (__OFADD__(v110, v109))
      {
        goto LABEL_72;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v111 <= v79[3] >> 1)
      {
        if (!*(v108 + 16))
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v110 <= v111)
        {
          v113 = v110 + v109;
        }

        else
        {
          v113 = v110;
        }

        v79 = sub_1D87C7EE0(isUniquelyReferenced_nonNull_native, v113, 1, v79);
        if (!*(v108 + 16))
        {
LABEL_52:

          if (v109)
          {
            goto LABEL_73;
          }

          goto LABEL_53;
        }
      }

      if ((v79[3] >> 1) - v79[2] < v109)
      {
        goto LABEL_74;
      }

      swift_arrayInitWithCopy();

      if (v109)
      {
        v114 = v79[2];
        v115 = __OFADD__(v114, v109);
        v116 = v114 + v109;
        if (v115)
        {
          goto LABEL_75;
        }

        v79[2] = v116;
      }

LABEL_53:
      if (v106 == ++v107)
      {
        goto LABEL_69;
      }
    }
  }

  v79 = MEMORY[0x1E69E7CC0];
LABEL_69:

  return v79;
}

unint64_t _s22VisualIntelligenceCore31TextDetectionReadabilityUtilityV016generateReadableD0_15imageResolution21skipReadabiltySorting5isRTL13minConfidenceSSSayAA0D14DetectorResultVG_So6CGSizeVS2bSftFZ_0(uint64_t a1, int a2, double a3, double a4, float a5)
{
  LODWORD(v55) = a2;
  v9 = type metadata accessor for TextDetectorResult(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v57 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v52 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v52 - v16;
  v18 = *(a1 + 16);
  v53 = v15;
  if (v18)
  {
    v19 = 0;
    v56 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v20 = a1 + v56;
    v21 = *(v15 + 72);
    v22 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D88CC83C(v20 + v21 * v19, v17);
      if (!sub_1D89CC210(v17, a3, a4, 0.75))
      {
        v23 = *&v17[*(v9 + 44)];
        v24 = (v23 + 32);
        v25 = *(v23 + 16) + 1;
        while (--v25)
        {
          v26 = *v24;
          v24 += 10;
          if (v26 >= a5)
          {
            sub_1D89CDBB8(v17, v14);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v59 = v22;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D87F44D0(0, *(v22 + 16) + 1, 1);
              v22 = v59;
            }

            v29 = *(v22 + 16);
            v28 = *(v22 + 24);
            if (v29 >= v28 >> 1)
            {
              sub_1D87F44D0(v28 > 1, v29 + 1, 1);
              v22 = v59;
            }

            *(v22 + 16) = v29 + 1;
            sub_1D89CDBB8(v14, v22 + v56 + v29 * v21);
            goto LABEL_4;
          }
        }
      }

      sub_1D89A2300(v17);
LABEL_4:
      ++v19;
    }

    while (v19 != v18);
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  if ((v55 & 1) == 0)
  {
    v22 = sub_1D89CCA20(v22, 0.1);
  }

  v30 = v53;
  v31 = *(v22 + 16);
  v32 = MEMORY[0x1E69E7CC0];
  if (v31)
  {
    v59 = MEMORY[0x1E69E7CC0];
    v56 = v22;
    sub_1D87F3F54(0, v31, 0);
    result = v56;
    v34 = 0;
    v35 = v59;
    v54 = v56 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v55 = v31;
    v52 = v9;
    while (v34 < *(result + 16))
    {
      v36 = v57;
      sub_1D88CC83C(v54 + *(v30 + 72) * v34, v57);
      v37 = *(v36 + *(v9 + 44));
      v38 = *(v37 + 16);
      if (v38)
      {
        v58 = v32;
        sub_1D87F3F54(0, v38, 0);
        v32 = v58;
        v39 = (v37 + 48);
        do
        {
          v40 = *(v39 - 1);
          v41 = *v39;
          v58 = v32;
          v43 = *(v32 + 16);
          v42 = *(v32 + 24);

          if (v43 >= v42 >> 1)
          {
            sub_1D87F3F54((v42 > 1), v43 + 1, 1);
            v32 = v58;
          }

          *(v32 + 16) = v43 + 1;
          v44 = v32 + 16 * v43;
          *(v44 + 32) = v40;
          *(v44 + 40) = v41;
          v39 += 5;
          --v38;
        }

        while (v38);
        v9 = v52;
        v30 = v53;
      }

      v58 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
      sub_1D88F0E40();
      v45 = sub_1D8B15810();
      v47 = v46;

      sub_1D89A2300(v57);
      v59 = v35;
      v49 = *(v35 + 16);
      v48 = *(v35 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_1D87F3F54((v48 > 1), v49 + 1, 1);
        v35 = v59;
      }

      ++v34;
      *(v35 + 16) = v49 + 1;
      v50 = v35 + 16 * v49;
      *(v50 + 32) = v45;
      *(v50 + 40) = v47;
      result = v56;
      v32 = MEMORY[0x1E69E7CC0];
      if (v34 == v55)
      {

        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {

    v35 = MEMORY[0x1E69E7CC0];
LABEL_31:
    Aloud4fromSSSaySSG_tFZ_0 = _sSS22VisualIntelligenceCoreE27concatenateTextForReadAloud4fromSSSaySSG_tFZ_0(v35);

    return Aloud4fromSSSaySSG_tFZ_0;
  }

  return result;
}

uint64_t sub_1D89CDBB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextDetectorResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TextSummarizer.init(entryPoint:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D8B15340();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  if ((v9 - 1) < 2)
  {
    goto LABEL_4;
  }

  if (v9 != 3)
  {
    if (v9 != 4)
    {
      v14 = MEMORY[0x1E69C9A88];
LABEL_11:
      sub_1D88793B8(v8, v9);
      goto LABEL_12;
    }

LABEL_4:
    if (qword_1EE0E44C8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D8B151E0();
    __swift_project_value_buffer(v10, qword_1EE0E44D0);
    v11 = sub_1D8B151C0();
    v12 = sub_1D8B16210();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D8783000, v11, v12, "TextSummarizer.summarize was invoked from an unknown source process", v13, 2u);
      MEMORY[0x1DA721330](v13, -1, -1);
    }

    v14 = MEMORY[0x1E69C9A80];
    goto LABEL_11;
  }

  v14 = MEMORY[0x1E69C9A80];
LABEL_12:
  (*(v5 + 104))(v7, *v14, v4);
  v15 = type metadata accessor for TextSummarizer();
  (*(v5 + 16))(a2 + *(v15 + 20), v7, v4);
  sub_1D8B153D0();
  swift_allocObject();
  v16 = sub_1D8B153C0();
  result = (*(v5 + 8))(v7, v4);
  *a2 = v16;
  return result;
}

double static TextSummarizationResult.offlineResult.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1D8B13350();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1D8B15930();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1D8B158D0();
  sub_1D8B132F0();
  v4 = sub_1D8B159D0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 34) = 0;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  result = 0.0;
  *(a1 + 56) = xmmword_1D8B23E10;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return result;
}

uint64_t sub_1D89CDF94(uint64_t a1, uint64_t a2)
{
  v40 = a1;
  v41 = a2;
  v37 = sub_1D8B13240();
  v2 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D8B13330();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66EE8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v36 - v9;
  v11 = sub_1D8B15340();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D8B15360();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v14, *MEMORY[0x1E69C9A80], v11);
  v19 = sub_1D8B15330();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  sub_1D8B15350();
  v20 = [objc_allocWithZone(MEMORY[0x1E6977A58]) init];
  v21 = sub_1D8B15940();
  [v20 processString_];

  v22 = [v20 dominantLanguage];
  if (v22)
  {
    v40 = v16;
    v41 = v15;
    v23 = v22;
    v24 = sub_1D8B15970();
    v26 = v25;

    sub_1D8B13300();
    sub_1D8B13230();
    sub_1D8B131E0();
    (*(v2 + 8))(v4, v37);
    v27 = v18;
    v28 = sub_1D8B15380();
    (*(v38 + 8))(v7, v39);

    if (qword_1EE0E44C8 != -1)
    {
      swift_once();
    }

    v29 = sub_1D8B151E0();
    __swift_project_value_buffer(v29, qword_1EE0E44D0);

    v30 = sub_1D8B151C0();
    v31 = sub_1D8B16200();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v42 = v33;
      *v32 = 136315394;
      v34 = sub_1D89AC714(v24, v26, &v42);

      *(v32 + 4) = v34;
      *(v32 + 12) = 1024;
      *(v32 + 14) = v28 & 1;
      _os_log_impl(&dword_1D8783000, v30, v31, "Summarization languageIsEligible - detectedLanguage: %s, textIsInAnAllowedLanguage: %{BOOL}d", v32, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1DA721330](v33, -1, -1);
      MEMORY[0x1DA721330](v32, -1, -1);
    }

    else
    {
    }

    (*(v40 + 8))(v27, v41);
  }

  else
  {
    (*(v16 + 8))(v18, v15);

    v28 = 0;
  }

  return v28 & 1;
}

uint64_t TextSummarizer.summarize(text:useExternalIntelligence:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 272) = a4;
  *(v5 + 144) = a3;
  *(v5 + 152) = v4;
  *(v5 + 128) = a1;
  *(v5 + 136) = a2;
  sub_1D8B13350();
  *(v5 + 160) = swift_task_alloc();
  sub_1D8B15930();
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  v6 = sub_1D8B16880();
  *(v5 + 192) = v6;
  *(v5 + 200) = *(v6 - 8);
  *(v5 + 208) = swift_task_alloc();
  v7 = *(type metadata accessor for TextSummarizer() - 8);
  *(v5 + 216) = v7;
  *(v5 + 224) = *(v7 + 64);
  *(v5 + 232) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D89CE818, 0, 0);
}

uint64_t sub_1D89CE818()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 144);
  v6 = *(v0 + 272);
  v7 = *(v0 + 136);
  sub_1D89D2698(*(v0 + 152), v1);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = v8 + v2;
  v10 = (v8 + v2) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v0 + 240) = v11;
  sub_1D89D26FC(v1, v11 + v8);
  *(v11 + v9) = v6;
  v12 = v11 + v10;
  *(v12 + 8) = v7;
  *(v12 + 16) = v5;

  _s22VisualIntelligenceCore7TimeoutO7perform6within2on9operationx8DurationQy__q_xyYaYbKctYaKs8SendableRzs5ClockR_r0_lFZfA0__0();
  *(v0 + 64) = xmmword_1D8B23E00;
  v13 = swift_task_alloc();
  *(v0 + 248) = v13;
  v13[2] = &unk_1D8B31000;
  v13[3] = v11;
  v13[4] = v3;
  v13[5] = v0 + 64;
  v14 = swift_task_alloc();
  *(v0 + 256) = v14;
  *v14 = v0;
  v14[1] = sub_1D89CE9B4;
  v15 = *(v0 + 128);

  return MEMORY[0x1EEE6DD58](v15, &type metadata for TextSummarizationResult, &type metadata for TextSummarizationResult, 0, 0, &unk_1D8B31010, v13, &type metadata for TextSummarizationResult);
}

uint64_t sub_1D89CE9B4()
{
  v2 = *v1;
  v2[33] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D89CEB6C, 0, 0);
  }

  else
  {
    v4 = v2[25];
    v3 = v2[26];
    v5 = v2[24];

    (*(v4 + 8))(v3, v5);

    v6 = v2[1];

    return v6();
  }
}

uint64_t sub_1D89CEB6C()
{
  v58 = v0;
  v1 = *(v0 + 264);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 192);

  (*(v3 + 8))(v2, v4);
  *(v0 + 80) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
  v6 = swift_dynamicCast();
  v7 = *(v0 + 264);
  if (v6)
  {

    sub_1D8B158D0();
    sub_1D87D1F20();
    if (!sub_1D8B163E0())
    {
      v8 = [objc_opt_self() mainBundle];
    }

    sub_1D8B132F0();
    v9 = sub_1D8B159D0();
    v11 = v10;
    v12 = sub_1D89CF244(0x7A6972616D6D7553);
    v14 = v13;
    if (qword_1EE0E44C8 != -1)
    {
      swift_once();
    }

    v15 = sub_1D8B151E0();
    __swift_project_value_buffer(v15, qword_1EE0E44D0);

    v16 = sub_1D8B151C0();
    v17 = sub_1D8B16210();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v57 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1D89AC714(v9, v11, &v57);
      _os_log_impl(&dword_1D8783000, v16, v17, "%s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1DA721330](v19, -1, -1);
      MEMORY[0x1DA721330](v18, -1, -1);
    }

    v20 = *(v0 + 144);
    v21 = *(v0 + 128);
    *v21 = *(v0 + 136);
    *(v21 + 8) = v20;
    *(v21 + 16) = 0;
    *(v21 + 24) = 0xE000000000000000;
    *(v21 + 32) = 0;
    *(v21 + 34) = 0;
    *(v21 + 40) = v9;
    *(v21 + 48) = v11;
    *(v21 + 56) = v12;
    *(v21 + 64) = v14;
    *(v21 + 72) = 0;
    *(v21 + 80) = 0;
    v22 = *(v0 + 80);
LABEL_13:

    goto LABEL_19;
  }

  *(v0 + 88) = v7;
  v23 = v7;
  type metadata accessor for SummarizationClientError(0);
  if (swift_dynamicCast())
  {

    v24 = *(v0 + 96);
    sub_1D8B158D0();
    sub_1D87D1F20();
    if (!sub_1D8B163E0())
    {
      v25 = [objc_opt_self() mainBundle];
    }

    v27 = *(v0 + 136);
    v26 = *(v0 + 144);
    v28 = *(v0 + 128);
    sub_1D8B132F0();
    v29 = sub_1D8B159D0();
    v31 = v30;
    *(v0 + 120) = v24;
    sub_1D89D310C(&qword_1ECA623D0, type metadata accessor for SummarizationClientError);
    v32 = sub_1D8B16C90();
    v34 = v33;

    *v28 = v27;
    *(v28 + 8) = v26;
    *(v28 + 16) = 0;
    *(v28 + 24) = 0xE000000000000000;
    *(v28 + 32) = 0;
    *(v28 + 34) = 0;
    *(v28 + 40) = v29;
    *(v28 + 48) = v31;
    *(v28 + 56) = v32;
    *(v28 + 64) = v34;
    *(v28 + 72) = 0;
    *(v28 + 80) = 0;
    v22 = *(v0 + 88);
    goto LABEL_13;
  }

  if (qword_1EE0E44C8 != -1)
  {
    swift_once();
  }

  v35 = *(v0 + 264);
  v36 = sub_1D8B151E0();
  __swift_project_value_buffer(v36, qword_1EE0E44D0);
  v37 = v35;
  v38 = sub_1D8B151C0();
  v39 = sub_1D8B16210();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v57 = v41;
    *v40 = 136315138;
    swift_getErrorValue();
    v42 = sub_1D8B16C90();
    v44 = sub_1D89AC714(v42, v43, &v57);

    *(v40 + 4) = v44;
    _os_log_impl(&dword_1D8783000, v38, v39, "Error summarizing text with error: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x1DA721330](v41, -1, -1);
    MEMORY[0x1DA721330](v40, -1, -1);
  }

  v45 = *(v0 + 264);
  v47 = *(v0 + 136);
  v46 = *(v0 + 144);
  v48 = *(v0 + 128);

  sub_1D8B158D0();
  sub_1D8B132F0();
  v49 = sub_1D8B159D0();
  v51 = v50;
  swift_getErrorValue();
  v52 = sub_1D8B16C90();
  v54 = v53;

  *v48 = v47;
  *(v48 + 8) = v46;
  *(v48 + 16) = 0;
  *(v48 + 24) = 0xE000000000000000;
  *(v48 + 32) = 0;
  *(v48 + 34) = 0;
  *(v48 + 40) = v49;
  *(v48 + 48) = v51;
  *(v48 + 56) = v52;
  *(v48 + 64) = v54;
  *(v48 + 72) = 0;
  *(v48 + 80) = 0;
LABEL_19:

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_1D89CF244(uint64_t a1)
{
  sub_1D8B16720();

  MEMORY[0x1DA71EFA0](0xD00000000000001DLL, 0x80000001D8B469D0);
  sub_1D8B16E20();
  v2 = sub_1D8B16B50();
  MEMORY[0x1DA71EFA0](v2);

  MEMORY[0x1DA71EFA0](0x73646E6F63657320, 0xE800000000000000);
  return a1;
}

uint64_t sub_1D89CF330(uint64_t a1, uint64_t a2)
{
  v19[1] = a1;
  v19[2] = a2;
  v19[0] = sub_1D8B13240();
  v2 = *(v19[0] - 8);
  MEMORY[0x1EEE9AC00](v19[0]);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66EE8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v19 - v6;
  v8 = sub_1D8B15340();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D8B15360();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, *MEMORY[0x1E69C9A80], v8);
  v16 = sub_1D8B15330();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  sub_1D8B15350();
  sub_1D8B13230();
  sub_1D8B131E0();
  (*(v2 + 8))(v4, v19[0]);
  v17 = sub_1D8B15370();
  (*(v13 + 8))(v15, v12);

  return v17 & 1;
}

uint64_t TextSummarizationResult.input.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TextSummarizationResult.summary.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TextSummarizationResult.localizedErrorString.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t TextSummarizationResult.internalErrorString.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t TextSummarizationResult.symbolName.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t static TextSummarizationResult.withSummary(_:input:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a3;
  *(a5 + 8) = a4;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = 0;
  *(a5 + 34) = 0;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0u;
}

uint64_t sub_1D89CF8E4()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x614E6C6F626D7973;
    if (v1 == 6)
    {
      v5 = 0xD000000000000013;
    }

    if (v1 == 4)
    {
      v6 = 0xD000000000000016;
    }

    else
    {
      v6 = 0xD000000000000014;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x7475706E69;
    v3 = 0xD000000000000017;
    if (v1 == 2)
    {
      v3 = 0xD00000000000001ALL;
    }

    if (*v0)
    {
      v2 = 0x7972616D6D7573;
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
}

uint64_t sub_1D89CF9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D89D2C78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D89CFA10(uint64_t a1)
{
  v2 = sub_1D89D295C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D89CFA4C(uint64_t a1)
{
  v2 = sub_1D89D295C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TextSummarizationResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66EB8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - v5;
  v7 = *(v1 + 16);
  v17 = *(v1 + 24);
  v18 = v7;
  LODWORD(v7) = *(v1 + 32);
  v15 = *(v1 + 33);
  v16 = v7;
  v14 = *(v1 + 34);
  v8 = *(v1 + 40);
  v13[5] = *(v1 + 48);
  v13[6] = v8;
  v9 = *(v1 + 64);
  v13[3] = *(v1 + 56);
  v13[4] = v9;
  v10 = *(v1 + 80);
  v13[1] = *(v1 + 72);
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D89D295C();
  sub_1D8B16DD0();
  v27 = 0;
  v11 = v19;
  sub_1D8B16A90();
  if (v11)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v26 = 1;
  sub_1D8B16A90();
  v25 = 2;
  sub_1D8B16AA0();
  v24 = 3;
  sub_1D8B16AA0();
  v23 = 4;
  sub_1D8B16AA0();
  v22 = 5;
  sub_1D8B16A50();
  v21 = 6;
  sub_1D8B16A50();
  v20 = 7;
  sub_1D8B16A50();
  return (*(v4 + 8))(v6, v3);
}

uint64_t TextSummarizationResult.hash(into:)()
{
  v1 = v0[6];
  v2 = v0[8];
  v3 = v0[10];
  sub_1D8B15A60();
  sub_1D8B15A60();
  sub_1D8B16D40();
  sub_1D8B16D40();
  sub_1D8B16D40();
  if (v1)
  {
    sub_1D8B16D40();
    sub_1D8B15A60();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1D8B16D40();
    if (v3)
    {
      goto LABEL_4;
    }

    return sub_1D8B16D40();
  }

  sub_1D8B16D40();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_1D8B16D40();
  sub_1D8B15A60();
  if (!v3)
  {
    return sub_1D8B16D40();
  }

LABEL_4:
  sub_1D8B16D40();

  return sub_1D8B15A60();
}

uint64_t TextSummarizationResult.hashValue.getter()
{
  sub_1D8B16D20();
  TextSummarizationResult.hash(into:)();
  return sub_1D8B16D80();
}

uint64_t sub_1D89CFEAC()
{
  sub_1D8B16D20();
  TextSummarizationResult.hash(into:)();
  return sub_1D8B16D80();
}

uint64_t sub_1D89CFEF0()
{
  sub_1D8B16D20();
  TextSummarizationResult.hash(into:)();
  return sub_1D8B16D80();
}

uint64_t sub_1D89CFF30(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  *(v5 + 248) = a3;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66F00);
  *(v5 + 80) = swift_task_alloc();
  v6 = sub_1D8B15420();
  *(v5 + 88) = v6;
  *(v5 + 96) = *(v6 - 8);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  v7 = sub_1D8B13240();
  *(v5 + 120) = v7;
  *(v5 + 128) = *(v7 - 8);
  *(v5 + 136) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66F08);
  *(v5 + 144) = v8;
  *(v5 + 152) = *(v8 - 8);
  *(v5 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66EE8);
  *(v5 + 168) = swift_task_alloc();
  v9 = sub_1D8B15340();
  *(v5 + 176) = v9;
  *(v5 + 184) = *(v9 - 8);
  *(v5 + 192) = swift_task_alloc();
  v10 = sub_1D8B15360();
  *(v5 + 200) = v10;
  *(v5 + 208) = *(v10 - 8);
  *(v5 + 216) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D89D01F0, 0, 0);
}

uint64_t sub_1D89D01F0()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[16];
  v5 = v0[17];
  v19 = v0[15];
  v7 = v0[7];
  v8 = type metadata accessor for TextSummarizer();
  (*(v2 + 16))(v1, v7 + *(v8 + 20), v3);
  v9 = sub_1D8B15330();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  sub_1D8B15350();
  sub_1D8B13230();
  v10 = sub_1D8B131E0();
  v12 = v11;
  v0[28] = v11;
  (*(v6 + 8))(v5, v19);
  v13 = swift_task_alloc();
  v0[29] = v13;
  *v13 = v0;
  v13[1] = sub_1D89D038C;
  v14 = v0[27];
  v15 = v0[20];
  v16 = v0[8];
  v17 = v0[9];

  return MEMORY[0x1EEE33608](v15, v16, v17, v14, v10, v12);
}

uint64_t sub_1D89D038C()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_1D89D09B4;
  }

  else
  {
    v2 = sub_1D89D04BC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D89D04BC()
{
  v54 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  sub_1D8B15390();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1D87A14E4(*(v0 + 80), &qword_1ECA66F00);
    if (qword_1EE0E44C8 != -1)
    {
      swift_once();
    }

    v4 = sub_1D8B151E0();
    __swift_project_value_buffer(v4, qword_1EE0E44D0);
    v5 = sub_1D8B151C0();
    v6 = sub_1D8B161F0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1D8783000, v5, v6, "Summarization had an empty safety classification.", v7, 2u);
      MEMORY[0x1DA721330](v7, -1, -1);
    }

    v8 = *(v0 + 208);
    v50 = *(v0 + 216);
    v9 = *(v0 + 200);
    v11 = *(v0 + 152);
    v10 = *(v0 + 160);
    v12 = *(v0 + 144);
    v13 = *(v0 + 64);
    v14 = *(v0 + 72);
    v52 = *(v0 + 248);
    v15 = *(v0 + 48);

    MEMORY[0x1DA71E880](v12);
    (*(v11 + 8))(v10, v12);
    (*(v8 + 8))(v50, v9);
    v16 = *(v0 + 16);
    v17 = *(v0 + 24);
    *v15 = v13;
    *(v15 + 8) = v14;
    *(v15 + 16) = v16;
    *(v15 + 24) = v17;
    *(v15 + 32) = 0;
  }

  else
  {
    (*(*(v0 + 96) + 32))(*(v0 + 112), *(v0 + 80), *(v0 + 88));
    if (qword_1EE0E44C8 != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 104);
    v19 = *(v0 + 112);
    v20 = *(v0 + 88);
    v21 = *(v0 + 96);
    v22 = sub_1D8B151E0();
    __swift_project_value_buffer(v22, qword_1EE0E44D0);
    (*(v21 + 16))(v18, v19, v20);
    v23 = sub_1D8B151C0();
    v24 = sub_1D8B161F0();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 96);
    v27 = *(v0 + 104);
    v28 = *(v0 + 88);
    if (v25)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v53 = v30;
      *v29 = 136315138;
      v31 = sub_1D8B15410();
      if (v31)
      {
        v32 = 1701208435;
      }

      else
      {
        v32 = 0x656661736E75;
      }

      if (v31)
      {
        v33 = 0xE400000000000000;
      }

      else
      {
        v33 = 0xE600000000000000;
      }

      v51 = *(v26 + 8);
      v51(v27, v28);
      v34 = sub_1D89AC714(v32, v33, &v53);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_1D8783000, v23, v24, "Summarization had a %s safety classification.", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1DA721330](v30, -1, -1);
      MEMORY[0x1DA721330](v29, -1, -1);
    }

    else
    {

      v51 = *(v26 + 8);
      v51(v27, v28);
    }

    v35 = *(v0 + 208);
    v48 = *(v0 + 200);
    v49 = *(v0 + 216);
    v36 = *(v0 + 152);
    v37 = *(v0 + 160);
    v38 = *(v0 + 144);
    v39 = *(v0 + 112);
    v40 = *(v0 + 88);
    v41 = *(v0 + 72);
    v47 = *(v0 + 64);
    v52 = *(v0 + 248);
    v15 = *(v0 + 48);

    MEMORY[0x1DA71E880](v38);
    v45 = *(v0 + 40);
    v46 = *(v0 + 32);
    v42 = sub_1D8B15410();
    v51(v39, v40);
    (*(v36 + 8))(v37, v38);
    (*(v35 + 8))(v49, v48);
    *v15 = v47;
    *(v15 + 8) = v41;
    *(v15 + 16) = v46;
    *(v15 + 24) = v45;
    *(v15 + 32) = (v42 & 1) == 0;
  }

  *(v15 + 33) = 0;
  *(v15 + 34) = v52;
  *(v15 + 40) = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 72) = 0u;

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_1D89D09B4()
{
  (*(v0[26] + 8))(v0[27], v0[25]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D89D0A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = sub_1D8B16880();
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v6[11] = *(v8 + 64);
  v6[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  v6[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D89D0B9C, 0, 0);
}

uint64_t sub_1D89D0B9C()
{
  v1 = v0[13];
  v2 = v0[10];
  v16 = v0[12];
  v17 = v0[11];
  v18 = v0[7];
  v19 = v0[8];
  v14 = v0[6];
  v15 = v0[9];
  v3 = v0[4];
  v4 = v0[5];
  v5 = sub_1D8B15EA0();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v3;
  v7[5] = v4;

  sub_1D89D1754(v1, &unk_1D8B312F0, v7);
  sub_1D87A14E4(v1, &unk_1ECA675E0);
  v6(v1, 1, 1, v5);
  (*(v2 + 16))(v16, v14, v15);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  (*(v2 + 32))(v9 + v8, v16, v15);
  v10 = (v9 + ((v17 + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v10 = v18;
  v10[1] = v19;
  sub_1D89D1754(v1, &unk_1D8B31300, v9);
  sub_1D87A14E4(v1, &unk_1ECA675E0);
  v11 = swift_task_alloc();
  v0[14] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66F10);
  *v11 = v0;
  v11[1] = sub_1D89D0E18;

  return MEMORY[0x1EEE6DAC8](v0 + 2, 0, 0, v12);
}

uint64_t sub_1D89D0E18()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1D89D100C;
  }

  else
  {
    v2 = sub_1D89D0F2C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1D89D0F2C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64428);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
    sub_1D8B15FB0();

    v2 = *(v0 + 8);

    v2(v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D89D100C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D89D1078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a6;
  v7[19] = a7;
  v7[16] = a4;
  v7[17] = a5;
  v7[14] = a2;
  v7[15] = a3;
  v7[13] = a1;
  v8 = sub_1D8B16880();
  v7[20] = v8;
  v9 = *(v8 - 8);
  v7[21] = v9;
  v7[22] = *(v9 + 64);
  v7[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  v7[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D89D1184, 0, 0);
}

uint64_t sub_1D89D1184()
{
  v1 = v0[24];
  v2 = v0[21];
  v16 = v0[23];
  v17 = v0[22];
  v18 = v0[18];
  v19 = v0[19];
  v14 = v0[17];
  v15 = v0[20];
  v3 = v0[15];
  v4 = v0[16];
  v5 = sub_1D8B15EA0();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v3;
  v7[5] = v4;

  sub_1D89D1940(v1, &unk_1D8B312A8, v7);
  sub_1D87A14E4(v1, &unk_1ECA675E0);
  v6(v1, 1, 1, v5);
  (*(v2 + 16))(v16, v14, v15);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  (*(v2 + 32))(v9 + v8, v16, v15);
  v10 = (v9 + ((v17 + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v10 = v18;
  v10[1] = v19;
  sub_1D89D1940(v1, &unk_1D8B312B8, v9);
  sub_1D87A14E4(v1, &unk_1ECA675E0);
  v11 = swift_task_alloc();
  v0[25] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66EF0);
  *v11 = v0;
  v11[1] = sub_1D89D1400;

  return MEMORY[0x1EEE6DAC8](v0 + 2, 0, 0, v12);
}

uint64_t sub_1D89D1400()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1D89D15F0;
  }

  else
  {
    v2 = sub_1D89D1514;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D89D1514()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 104);
    v3 = *(v0 + 64);
    v2 = *(v0 + 80);
    v4 = *(v0 + 48);
    *(v1 + 80) = *(v0 + 96);
    *(v1 + 48) = v3;
    *(v1 + 64) = v2;
    *(v1 + 32) = v4;
    v5 = *(v0 + 32);
    *v1 = *(v0 + 16);
    *(v1 + 16) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
    sub_1D8B15FB0();

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D89D15F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D89D165C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1D886553C;

  return v8(a1);
}

uint64_t sub_1D89D1754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v18 - v8;
  sub_1D889342C(a1, v18 - v8);
  v10 = sub_1D8B15EA0();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D87A14E4(v9, &unk_1ECA675E0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_1D8B15E00();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D8B15E90();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64428);
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}
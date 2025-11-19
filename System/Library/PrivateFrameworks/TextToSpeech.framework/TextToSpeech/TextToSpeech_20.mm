uint64_t sub_1A94EAFB0(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A9382328;

  return sub_1A94EA09C(a1, a2, v2);
}

unint64_t sub_1A94EB05C()
{
  result = qword_1EB388218;
  if (!qword_1EB388218)
  {
    sub_1A93A7B68(&qword_1EB388210, &qword_1A9596238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388218);
  }

  return result;
}

uint64_t sub_1A94EB0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1A957B308();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v10 = *(a1 + 8);
  v14[0] = *a1;
  v14[1] = v10;
  v15 = *(a1 + 16);
  (*(v7 + 16))(v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  TTSMarkup.SpeechText.transformed(_:)(sub_1A94F2484, a3);
}

uint64_t sub_1A94EB21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a4)
  {
    v8 = sub_1A957C0F8();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v7(a2, a3, v8, v10);
}

uint64_t sub_1A94EB2B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 1);
  return TTSMarkup.SpeechText.transformed(_:)(sub_1A94EB304, a2);
}

uint64_t sub_1A94EB304(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, void *))
{

  v62 = a2;
  v63 = a1;
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  TransformableString.init(_:)(v5);
  v6 = sub_1A94F0BB4(MEMORY[0x1E69E7CC0]);
  v7 = 0;
  v67 = v6;
LABEL_3:
  v8 = (&unk_1F1CFB020 + 12 * v7);
  v10 = v8[8];
  v9 = v8[9];
  v11 = v9 - v10;
  if (v9 < v10)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    result = sub_1A957D438();
    __break(1u);
    return result;
  }

  v12 = 0;
  v13 = v8[10];
  v64 = v7 + 1;
  while (1)
  {
    v14 = v10 + v12;
    if (__CFADD__(v10, v12))
    {
      break;
    }

    v15 = v13 + v12;
    if (__CFADD__(v13, v12))
    {
      goto LABEL_42;
    }

    if (HIWORD(v15) > 0x10u || (v15 & 0xFFFFF800) == 0xD800)
    {
      goto LABEL_16;
    }

    v16 = sub_1A957C218();
    v18 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v67;
    v65[0] = v67;
    v20 = sub_1A937BEE0(v10 + v12);
    v22 = v67[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_44;
    }

    v26 = v21;
    if (v67[3] < v25)
    {
      sub_1A94F00C4(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_1A937BEE0(v10 + v12);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_55;
      }

LABEL_14:
      v6 = v65[0];
      if (v26)
      {
        goto LABEL_15;
      }

      goto LABEL_21;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v31 = v20;
    sub_1A94F034C();
    v20 = v31;
    v6 = v65[0];
    if (v26)
    {
LABEL_15:
      v28 = (v6[7] + 16 * v20);
      v29 = v28[1];
      *v28 = v16;
      v28[1] = v18;

      v67 = v6;
LABEL_16:
      if (v11 == v12)
      {
        goto LABEL_2;
      }

      goto LABEL_17;
    }

LABEL_21:
    v6[(v20 >> 6) + 8] |= 1 << v20;
    *(v6[6] + 4 * v20) = v14;
    v32 = (v6[7] + 16 * v20);
    *v32 = v16;
    v32[1] = v18;
    v33 = v6[2];
    v24 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (v24)
    {
      __break(1u);
      goto LABEL_52;
    }

    v6[2] = v34;
    v67 = v6;
    if (v11 == v12)
    {
LABEL_2:
      v7 = v64;
      if (v64 != 36)
      {
        goto LABEL_3;
      }

      v35 = &unk_1F1CFB220;
      v36 = 7;
      while (2)
      {
        v41 = *(v35 - 4);
        v42 = *(v35 - 1);
        v43 = *v35;
        swift_bridgeObjectRetain_n();
        v44 = swift_isUniquelyReferenced_nonNull_native();
        v65[0] = v67;
        v45 = sub_1A937BEE0(v41);
        v47 = v67[2];
        v48 = (v46 & 1) == 0;
        v24 = __OFADD__(v47, v48);
        v49 = v47 + v48;
        if (v24)
        {
          goto LABEL_53;
        }

        v50 = v46;
        if (v67[3] >= v49)
        {
          if (v44)
          {
            goto LABEL_32;
          }

          v56 = v45;
          sub_1A94F034C();
          v45 = v56;
          v52 = v65[0];
          if (v50)
          {
            goto LABEL_25;
          }

LABEL_33:
          v52[(v45 >> 6) + 8] |= 1 << v45;
          *(v52[6] + 4 * v45) = v41;
          v53 = (v52[7] + 16 * v45);
          *v53 = v42;
          v53[1] = v43;

          v54 = v52[2];
          v24 = __OFADD__(v54, 1);
          v55 = v54 + 1;
          if (v24)
          {
            goto LABEL_54;
          }

          v52[2] = v55;
        }

        else
        {
          sub_1A94F00C4(v49, v44);
          v45 = sub_1A937BEE0(v41);
          if ((v50 & 1) != (v51 & 1))
          {
            goto LABEL_55;
          }

LABEL_32:
          v52 = v65[0];
          if ((v50 & 1) == 0)
          {
            goto LABEL_33;
          }

LABEL_25:
          v37 = (v52[7] + 16 * v45);
          v38 = v37[1];
          *v37 = v42;
          v37[1] = v43;
        }

        v67 = v52;
        v35 += 3;
        if (!--v36)
        {
          MEMORY[0x1EEE9AC00](v39, v40);
          TransformableString.withTransformation<A>(_:)(sub_1A94F26F0);
          v14 = v68;
          v6 = v69;
          v11 = v62;
          v12 = v63;
          if (v68 == v63 && v69 == v62 || (sub_1A957D3E8() & 1) != 0)
          {
          }

          goto LABEL_45;
        }

        continue;
      }
    }

LABEL_17:
    v30 = __CFADD__(v12, 1);
    v12 = (v12 + 1);
    if (v30)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  v57 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v57 = v12;
  }

  v58 = 7;
  if (((v11 >> 60) & ((v12 & 0x800000000000000) == 0)) != 0)
  {
    v58 = 11;
  }

  v59 = v58 | (v57 << 16);

  v65[0] = v14;
  v65[1] = v6;
  v66 = 1;
  a3(15, v59, v65);
  sub_1A94D9AC4(v65);
}

uint64_t sub_1A94EB820@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void *a4@<X3>, uint64_t *a5@<X8>)
{
  v40 = a4;
  v38 = a3;
  v42 = a5;
  v7 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v35 - v10;
  v12 = type metadata accessor for CoreSynthesizer.Substitution.Context(0);
  v41 = *(v12 - 8);
  v13 = *(v41 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v39 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = (&v35 - v18);
  v20 = *a1;
  v36 = a1[1];
  v37 = v20;
  v21 = *(a2 + 24);
  v22 = (*((*MEMORY[0x1E69E7D40] & *v21) + 0x2D0))(v17);
  v24 = v23;
  v25 = sub_1A957B308();
  v26 = *(v25 - 8);
  v27 = *(v26 + 16);
  v35 = *(a1 + 1);
  v27(v11, v38, v25);
  (*(v26 + 56))(v11, 0, 1, v25);
  memcpy(v43, v40, 0x118uLL);
  v28 = CoreSynthesizer.Voice.cannonicId.getter();
  sub_1A9497B0C(v22, v24, v11, v28, v29, v19);
  v30 = (*((*MEMORY[0x1E69E7D40] & *v21) + 0x3C0))(v19);
  *&v43[0] = v37;
  *(&v43[0] + 1) = v36;
  v43[1] = v35;
  v31 = v39;
  sub_1A94F19F8(v19, v39, type metadata accessor for CoreSynthesizer.Substitution.Context);
  v32 = (*(v41 + 80) + 24) & ~*(v41 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v30;
  sub_1A94F1AC0(v31, v33 + v32, type metadata accessor for CoreSynthesizer.Substitution.Context);
  TTSMarkup.SpeechText.transformed(_:)(sub_1A94F281C, v42);

  return sub_1A94F1A60(v19, type metadata accessor for CoreSynthesizer.Substitution.Context);
}

void *sub_1A94EBB88(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1A94EDB90(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1A937829C(&qword_1EB3882A0, &qword_1A9596570);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A94EBC8C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t), uint64_t a3, uint64_t a4)
{
  v14 = a1;
  v7 = a1;
  v8 = *(a4 + 16);

  if (v8)
  {
    v9 = *(type metadata accessor for CoreSynthesizer.Substitution(0) - 8);
    v10 = a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a2(&v13, &v14, v10);
      if (v4)
      {
        break;
      }

      v7 = v13;
      v14 = v13;
      v10 += v11;
      if (!--v8)
      {
        return v7;
      }
    }
  }

  return v7;
}

uint64_t sub_1A94EBD90(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  sub_1A94EBDF8(a1, a2, a3, a4);
  return v11;
}

uint64_t sub_1A94EBDF8(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1A957BC88();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  type metadata accessor for TTSExecutor();
  *(v4 + 16) = TTSExecutor.__allocating_init()();
  *(v4 + 457) = 0;
  v13 = OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_suspendedState;
  v14 = _s15UtteranceRunnerC14SynthesisStateVMa(0);
  (*(*(v14 - 8) + 56))(v5 + v13, 1, 1, v14);
  *(v5 + OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_receivedFirstBuffer) = 0;
  *(v5 + OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_playedFirstBuffer) = 0;
  *(v5 + 24) = a1;
  sub_1A9410E08(a2, v5 + 32);
  *(v5 + 456) = a3;
  sub_1A9391BAC(a4, v5 + OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_eventContinuation, &qword_1EB3871A8, &qword_1A958BE88);
  sub_1A9378344(a2 + 320, &v52);
  if (!v55)
  {
    v41 = a4;
    v32 = v52;
    v31 = v53;
    v40 = a1;

    TTSMarkup.SpeechDocument.init(ssml:)(&v47);
    MEMORY[0x1EEE9AC00](v33, v34);
    *&v39[-32] = v32;
    *&v39[-24] = v31;
    a4 = v41;
    *&v39[-16] = v41;
    TTSMarkupSpeech.transformed<A>(of:_:)(sub_1A94EDDC0, &v39[-48], &type metadata for TTSMarkup.SpeechDocument, &type metadata for TTSMarkup.SpeechText, &protocol witness table for TTSMarkup.SpeechDocument, &protocol witness table for TTSMarkup.SpeechText, &v42);

    sub_1A9377B5C(&v47);
    v47 = v42;
    v48 = v43;
    v49 = v44;
    *(&v43 + 1) = &type metadata for TTSMarkup.SpeechDocument;
    *&v44 = &protocol witness table for TTSMarkup.SpeechDocument;
    v35 = swift_allocObject();
    *&v42 = v35;
    v36 = v48;
    v35[1] = v47;
    v35[2] = v36;
    v35[3] = v49;

    sub_1A9410E64(a2);
    v37 = &v42;
LABEL_6:
    sub_1A932D070(v37, v5 + 416);
    goto LABEL_7;
  }

  if (v55 != 1)
  {
    sub_1A9410E64(a2);
    v37 = &v52;
    goto LABEL_6;
  }

  v16 = v52;
  v17 = v53;
  v18 = MEMORY[0x1EEE9AC00](v54, v15);
  *&v39[-48] = v16;
  *&v39[-40] = v17;
  *&v39[-32] = a4;
  *&v39[-24] = v19;
  v39[-20] = v20;
  *&v39[-16] = v21;
  v39[-12] = v22;
  *&v39[-8] = v23;
  v39[-4] = v18;
  *(&v48 + 1) = &type metadata for TTSMarkup.SpeechDocument;
  *&v49 = &protocol witness table for TTSMarkup.SpeechDocument;
  v24 = swift_allocObject();
  *&v47 = v24;
  v25 = a1;
  TTSMarkup.SpeechDocument.init(_:)(sub_1A94EDDCC, (v24 + 16));
  sub_1A932D070(&v47, v5 + 416);
  v26 = *(v5 + 440);
  v27 = *(v5 + 448);
  sub_1A93780F4((v5 + 416), v26);
  v28 = (*(v27 + 64))(v26, v27);
  *&v42 = v16;
  *(&v42 + 1) = v17;
  *&v43 = v28;
  *(&v43 + 1) = v29;
  v46 = 1;
  v30._countAndFlagsBits = (*(*v5 + 184))();
  TTSSpeechEvent.emit(forJob:)(v30);

  sub_1A9410E64(a2);
  v49 = v44;
  v50 = v45;
  v51 = v46;
  v47 = v42;
  v48 = v43;
  sub_1A946C4C0(&v47);
LABEL_7:
  sub_1A937B960(a4, &qword_1EB3871A8, &qword_1A958BE88);
  return v5;
}

uint64_t sub_1A94EC4DC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a6;
  v26 = a5;
  v25 = a4;
  v28 = a7;
  v10 = sub_1A937829C(&qword_1EB3871A8, &qword_1A958BE88);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v13);
  v15 = &v25 - v14;

  TTSMarkup.SpeechText.init(_:)(a1, a2, &v34);
  v30 = v34;
  v31 = v35;
  v32 = v36;
  sub_1A9391BAC(a3, v15, &qword_1EB3871A8, &qword_1A958BE88);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  sub_1A93A7460(v15, v17 + v16, &qword_1EB3871A8, &qword_1A958BE88);
  TTSMarkup.SpeechText.word(_:)(sub_1A94F20B8, v17, &v38);

  v30 = v38;
  v31 = v39;
  v32 = v40;
  sub_1A9391BAC(a3, v15, &qword_1EB3871A8, &qword_1A958BE88);
  v18 = swift_allocObject();
  sub_1A93A7460(v15, v18 + v16, &qword_1EB3871A8, &qword_1A958BE88);
  TTSMarkup.SpeechText.sentence(_:)(sub_1A94F20C0, v18, &v34);

  v30 = v34;
  v31 = v35;
  v32 = v36;
  sub_1A9391BAC(a3, v15, &qword_1EB3871A8, &qword_1A958BE88);
  v19 = swift_allocObject();
  sub_1A93A7460(v15, v19 + v16, &qword_1EB3871A8, &qword_1A958BE88);
  TTSMarkup.SpeechText.paragraph(_:)(sub_1A94F21EC, v19, &v38);

  v30 = v38;
  v31 = v39;
  v32 = v40;
  TTSMarkupSpeech.rate(_:)(v25 | ((HIDWORD(v25) & 1) << 32), &type metadata for TTSMarkup.SpeechText, &protocol witness table for TTSMarkup.SpeechText, &v34);

  v20 = *(&v36 + 1);
  v21 = v37;
  sub_1A93780F4(&v34, *(&v36 + 1));
  TTSMarkupSpeech.pitch(_:)(v26 | ((HIDWORD(v26) & 1) << 32), v20, v21, &v30);
  v22 = *(&v32 + 1);
  v23 = v33;
  sub_1A93780F4(&v30, *(&v32 + 1));
  TTSMarkupSpeech.volume(_:)(v27 | ((HIDWORD(v27) & 1) << 32), v22, v23, v29);
  static TTSMarkup.SpeechBuilder.buildExpression(_:)(&v38, v29);
  sub_1A9378138(v29);
  sub_1A9378138(&v30);
  sub_1A9378138(&v34);
  static TTSMarkup.SpeechBuilder.buildBlock(_:)(&v38, v28);
  return sub_1A9378138(&v38);
}

uint64_t sub_1A94EC8D4(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  v10 = sub_1A937829C(&qword_1EB3871A8, &qword_1A958BE88);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v25 - v13;
  v15 = sub_1A937829C(&qword_1EB388200, &unk_1A95961F0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v25 - v18;
  sub_1A9391BAC(a4, v14, &qword_1EB3871A8, &qword_1A958BE88);
  v20 = sub_1A937829C(&qword_1EB3871B0, &qword_1A958BE98);
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v14, 1, v20) == 1)
  {
    sub_1A937B960(v14, &qword_1EB3871A8, &qword_1A958BE88);
    v22 = 1;
  }

  else
  {
    v25.n128_u64[0] = a1;
    v25.n128_u64[1] = a2;
    LOBYTE(v26) = a5;
    sub_1A9474C48(&v25, a3, &v28);
    v25 = v28;
    v26 = v29 | 0x2000000000000000;
    v27 = v30;
    sub_1A957C818();
    (*(v21 + 8))(v14, v20);
    v22 = 0;
  }

  v23 = sub_1A937829C(&qword_1EB3871C0, &qword_1A958BEC0);
  (*(*(v23 - 8) + 56))(v19, v22, 1, v23);
  return sub_1A937B960(v19, &qword_1EB388200, &unk_1A95961F0);
}

uint64_t sub_1A94ECB28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v32 = a5;
  v33 = a4;
  v31 = a2;
  v7 = sub_1A937829C(&qword_1EB3871A8, &qword_1A958BE88);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v10);
  v12 = &v30 - v11;
  v14 = *a1;
  v13 = a1[1];
  v16 = a1[2];
  v15 = a1[3];
  KeyPath = swift_getKeyPath();
  v40 = v14;
  v41 = v13;
  *&v42 = v16;
  *(&v42 + 1) = v15;
  TTSMarkupSpeech.subscript.getter(KeyPath, &type metadata for TTSMarkup.SpeechText, &protocol witness table for TTSMarkup.SpeechText);

  if (v38 == 1)
  {
    v18 = v32;
    v32[3] = &type metadata for TTSMarkup.SpeechText;
    v18[4] = &protocol witness table for TTSMarkup.SpeechText;
    v19 = swift_allocObject();
    *v18 = v19;
    v19[2] = v14;
    v19[3] = v13;
    v19[4] = v16;
    v19[5] = v15;
  }

  else
  {
    v21 = v37;
    v40 = v14;
    v41 = v13;
    *&v42 = v16;
    *(&v42 + 1) = v15;
    sub_1A9391BAC(v33, v12, &qword_1EB3871A8, &qword_1A958BE88);
    v22 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v23 = swift_allocObject();
    v24 = a3;
    v25 = v31;
    v23[2] = v31;
    v23[3] = v24;
    v23[4] = v21;
    sub_1A93A7460(v12, v23 + v22, &qword_1EB3871A8, &qword_1A958BE88);

    TTSMarkup.SpeechText.word(_:)(sub_1A94F228C, v23, &v37);

    v34 = v37;
    v35 = v38;
    v36 = v39;
    sub_1A9391BAC(v33, v12, &qword_1EB3871A8, &qword_1A958BE88);
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = v24;
    v26[4] = v21;
    sub_1A93A7460(v12, v26 + v22, &qword_1EB3871A8, &qword_1A958BE88);

    TTSMarkup.SpeechText.sentence(_:)(sub_1A94F2294, v26, &v40);

    v37 = v40;
    v38 = v41;
    v39 = v42;
    sub_1A9391BAC(v33, v12, &qword_1EB3871A8, &qword_1A958BE88);
    v27 = swift_allocObject();
    v27[2] = v25;
    v27[3] = v24;
    v27[4] = v21;
    sub_1A93A7460(v12, v27 + v22, &qword_1EB3871A8, &qword_1A958BE88);
    v28 = v32;
    v32[3] = &type metadata for TTSMarkup.SpeechText;
    v28[4] = &protocol witness table for TTSMarkup.SpeechText;
    v29 = swift_allocObject();
    *v28 = v29;

    TTSMarkup.SpeechText.paragraph(_:)(sub_1A94F23C8, v27, v29 + 16);
  }
}

uint64_t sub_1A94ECEF8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, int a8)
{
  v34 = a8;
  v35 = a3;
  v14 = sub_1A937829C(&qword_1EB3871A8, &qword_1A958BE88);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v33[-v17];
  v19 = sub_1A937829C(&qword_1EB388200, &unk_1A95961F0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v23 = &v33[-v22];
  sub_1A94F0CC8(a1, a2, a4, a5, a6);
  v25 = v24;
  v27 = v26;
  sub_1A9391BAC(a7, v18, &qword_1EB3871A8, &qword_1A958BE88);
  v28 = sub_1A937829C(&qword_1EB3871B0, &qword_1A958BE98);
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v18, 1, v28) == 1)
  {
    sub_1A937B960(v18, &qword_1EB3871A8, &qword_1A958BE88);
    v30 = 1;
  }

  else
  {
    v36.n128_u64[0] = v25;
    v36.n128_u64[1] = v27;
    LOBYTE(v37) = v34;
    sub_1A9474C48(&v36, v35, &v39);
    v36 = v39;
    v37 = v40 | 0x2000000000000000;
    v38 = v41;
    sub_1A957C818();
    (*(v29 + 8))(v18, v28);
    v30 = 0;
  }

  v31 = sub_1A937829C(&qword_1EB3871C0, &qword_1A958BEC0);
  (*(*(v31 - 8) + 56))(v23, v30, 1, v31);
  return sub_1A937B960(v23, &qword_1EB388200, &unk_1A95961F0);
}

uint64_t CoreSynthesizer.UtteranceRunner.__allocating_init(copy:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v5 = sub_1A94F0E38(a1);

  return v5;
}

uint64_t CoreSynthesizer.UtteranceRunner.init(copy:)(uint64_t a1)
{
  v1 = sub_1A94F0E38(a1);

  return v1;
}

uint64_t sub_1A94ED1FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = v2 == v3;
  }

  v6 = v5;
  v8 = v4 == 1 && v2 == v3;
  v10 = v4 == 2 && v3 == 0;
  if (*(a1 + 8) != 1)
  {
    v8 = v10;
  }

  if (*(a1 + 8))
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

uint64_t CoreSynthesizer.UtteranceRunner.deinit()
{
  v1 = *(v0 + 16);

  sub_1A9410E64(v0 + 32);
  sub_1A9378138((v0 + 416));
  sub_1A937B960(v0 + OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_suspendedState, &qword_1EB388220, &qword_1A9596240);
  sub_1A937B960(v0 + OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_eventContinuation, &qword_1EB3871A8, &qword_1A958BE88);
  return v0;
}

uint64_t CoreSynthesizer.UtteranceRunner.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  sub_1A9410E64(v0 + 32);
  sub_1A9378138((v0 + 416));
  sub_1A937B960(v0 + OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_suspendedState, &qword_1EB388220, &qword_1A9596240);
  sub_1A937B960(v0 + OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_eventContinuation, &qword_1EB3871A8, &qword_1A958BE88);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1A94ED370()
{
  v0 = type metadata accessor for CoreSynthesizer.UtteranceRunner(0);
  v1 = sub_1A94E9538(&qword_1EB388290, type metadata accessor for CoreSynthesizer.UtteranceRunner);

  return TTSActor.unownedExecutor.getter(v0, v1);
}

uint64_t sub_1A94ED3E4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 184))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A94ED4C0()
{
  v2 = *(*v0 + 264);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A9382328;

  return v6();
}

uint64_t sub_1A94ED5D8(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 272);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A93836DC;

  return v10(a1, a2);
}

uint64_t sub_1A94ED708(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 280);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A93836DC;

  return v10(a1, a2);
}

uint64_t sub_1A94ED838(uint64_t a1)
{
  v2 = type metadata accessor for CoreSynthesizer.UtteranceRunner(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_1A94F0E38(a1);

  return v5;
}

uint64_t sub_1A94ED91C(uint64_t (*a1)(void), float a2, float a3, float a4)
{
  v7 = a1();
  v8 = v7;
  if ((v7 & 0x100000000) != 0)
  {
    v9 = *&v7;
  }

  else
  {
    v10 = 0.5;
    if (*&v7 >= 0.5)
    {
      v11 = 1.0;
      v12 = a2;
      v13 = a3;
    }

    else
    {
      v10 = 0.0;
      v11 = 0.5;
      v12 = a4;
      v13 = a2;
    }

    v9 = sub_1A94CF2F0(v10, v11, v12, v13, *&v7);
  }

  return LODWORD(v9) | ((HIDWORD(v8) & 1) << 32);
}

size_t sub_1A94ED9B8(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A937829C(&qword_1EB386AE0, &qword_1A95884F8);
  v10 = *(type metadata accessor for SpeechSlicer.Slice(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for SpeechSlicer.Slice(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1A94EDB90(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A937829C(&qword_1EB3882A8, &qword_1A9596578);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A937829C(&qword_1EB3882A0, &qword_1A9596570);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1A94EDCC4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A937829C(&qword_1EB386FD0, &qword_1A958AF40);
  v4 = *(type metadata accessor for TTSAURenderer.SpeechBuffer() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A94EDE1C(void **a1)
{
  v2 = *(type metadata accessor for TTSAURenderer.SpeechBuffer() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1A94F0A44(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1A94EDF30(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1A94EDEC4(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A94F0A58(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1A94EE05C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1A94EDF30(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1A957D388();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for TTSAURenderer.SpeechBuffer();
        v6 = sub_1A957C518();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for TTSAURenderer.SpeechBuffer() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1A94EE564(v8, v9, a1, v4);
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
    return sub_1A94EE164(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1A94EE05C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1A957D388();
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
        sub_1A937829C(&qword_1EB3882A0, &qword_1A9596570);
        v5 = sub_1A957C518();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1A94EEED0(v7, v8, a1, v4);
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
    return sub_1A94EE3C8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1A94EE164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for TTSAURenderer.SpeechBuffer();
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v42 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v33 - v15;
  result = MEMORY[0x1EEE9AC00](v14, v17);
  v21 = &v33 - v20;
  v35 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v23 = *(v19 + 72);
    v24 = *a4 + v23 * (a3 - 1);
    v40 = -v23;
    v41 = v22;
    v25 = a1 - a3;
    v34 = v23;
    v26 = v22 + v23 * a3;
LABEL_5:
    v38 = v24;
    v39 = a3;
    v36 = v26;
    v37 = v25;
    while (1)
    {
      sub_1A94F19F8(v26, v21, type metadata accessor for TTSAURenderer.SpeechBuffer);
      sub_1A94F19F8(v24, v16, type metadata accessor for TTSAURenderer.SpeechBuffer);
      v27 = *(v8 + 20);
      v28 = v8;
      v29 = *&v21[v27];
      v30 = *&v16[v27];
      sub_1A94F1A60(v16, type metadata accessor for TTSAURenderer.SpeechBuffer);
      result = sub_1A94F1A60(v21, type metadata accessor for TTSAURenderer.SpeechBuffer);
      v31 = v29 >= v30;
      v8 = v28;
      if (v31)
      {
LABEL_4:
        a3 = v39 + 1;
        v24 = v38 + v34;
        v25 = v37 - 1;
        v26 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v41)
      {
        break;
      }

      v32 = v42;
      sub_1A94F1AC0(v26, v42, type metadata accessor for TTSAURenderer.SpeechBuffer);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1A94F1AC0(v32, v24, type metadata accessor for TTSAURenderer.SpeechBuffer);
      v24 += v40;
      v26 += v40;
      v31 = __CFADD__(v25++, 1);
      if (v31)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A94EE3C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + (a3 << 6));
    v6 = result - a3;
LABEL_5:
    v27 = a3;
    v17 = v6;
    v18 = v5;
    while (1)
    {
      sub_1A9391BAC(v5, &v24, &qword_1EB3882A0, &qword_1A9596570);
      v7 = v5 - 4;
      sub_1A9391BAC((v5 - 4), v23, &qword_1EB3882A0, &qword_1A9596570);
      sub_1A9391BAC(&v24, &v21, &qword_1EB3882A0, &qword_1A9596570);
      v8 = v21;
      sub_1A9391BAC(v23, &v19, &qword_1EB3882A0, &qword_1A9596570);
      v9 = v19;
      sub_1A94D9AC4(&v20);
      sub_1A94D9AC4(&v22);
      sub_1A937B960(v23, &qword_1EB3882A0, &qword_1A9596570);
      result = sub_1A937B960(&v24, &qword_1EB3882A0, &qword_1A9596570);
      if (v8 >> 14 >= v9 >> 14)
      {
LABEL_4:
        a3 = v27 + 1;
        v5 = v18 + 4;
        v6 = v17 - 1;
        if (v27 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v26[0] = v5[2];
      *(v26 + 9) = *(v5 + 41);
      v24 = *v5;
      v10 = v24;
      v25 = v5[1];
      v11 = v25;
      v12 = *(v5 - 3);
      *v5 = *v7;
      v5[1] = v12;
      v13 = *(v5 - 1);
      v5[2] = *(v5 - 2);
      v5[3] = v13;
      *v7 = v10;
      *(v5 - 23) = *(v26 + 9);
      v14 = v26[0];
      *(v5 - 3) = v11;
      *(v5 - 2) = v14;
      v5 -= 4;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A94EE564(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v116 = a1;
  v130 = type metadata accessor for TTSAURenderer.SpeechBuffer();
  v9 = *(v130 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v130, v11);
  v119 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v127 = &v111 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v129 = &v111 - v19;
  result = MEMORY[0x1EEE9AC00](v18, v20);
  v128 = &v111 - v22;
  v23 = a3[1];
  if (v23 < 1)
  {
    v25 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v116;
    if (!*v116)
    {
      goto LABEL_136;
    }

    a4 = v25;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_99:
      v131 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        v107 = v9;
        while (*a3)
        {
          v108 = *(result + 16 * a4);
          v109 = result;
          v9 = *(result + 16 * (a4 - 1) + 40);
          sub_1A94EF700(*a3 + *(v107 + 72) * v108, *a3 + *(v107 + 72) * *(result + 16 * (a4 - 1) + 32), *a3 + *(v107 + 72) * v9, v5);
          if (v6)
          {
          }

          if (v9 < v108)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v109 = sub_1A938911C(v109);
          }

          if (a4 - 2 >= *(v109 + 2))
          {
            goto LABEL_124;
          }

          v110 = &v109[16 * a4];
          *v110 = v108;
          *(v110 + 1) = v9;
          v131 = v109;
          sub_1A93CE710(a4 - 1);
          result = v131;
          a4 = *(v131 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_134;
      }
    }

LABEL_130:
    result = sub_1A938911C(a4);
    goto LABEL_99;
  }

  v24 = 0;
  v25 = MEMORY[0x1E69E7CC0];
  v115 = a4;
  v117 = a3;
  v112 = v9;
  while (1)
  {
    v26 = v24;
    v27 = v24 + 1;
    v120 = v25;
    if (v27 >= v23)
    {
      v23 = v27;
    }

    else
    {
      v113 = v6;
      v28 = *a3;
      v29 = *(v9 + 72);
      v5 = *a3 + v29 * v27;
      v30 = v128;
      sub_1A94F19F8(v5, v128, type metadata accessor for TTSAURenderer.SpeechBuffer);
      v31 = v129;
      sub_1A94F19F8(v28 + v29 * v26, v129, type metadata accessor for TTSAURenderer.SpeechBuffer);
      v32 = *(v130 + 20);
      LODWORD(v124) = *(v30 + v32);
      LODWORD(v123) = *(v31 + v32);
      sub_1A94F1A60(v31, type metadata accessor for TTSAURenderer.SpeechBuffer);
      result = sub_1A94F1A60(v30, type metadata accessor for TTSAURenderer.SpeechBuffer);
      v114 = v26;
      v33 = v26 + 2;
      v125 = v29;
      v34 = v28 + v29 * v33;
      while (v23 != v33)
      {
        LODWORD(v126) = v124 < v123;
        v35 = v128;
        sub_1A94F19F8(v34, v128, type metadata accessor for TTSAURenderer.SpeechBuffer);
        v36 = v129;
        sub_1A94F19F8(v5, v129, type metadata accessor for TTSAURenderer.SpeechBuffer);
        v37 = *(v130 + 20);
        v38 = *(v35 + v37);
        v39 = *(v36 + v37);
        sub_1A94F1A60(v36, type metadata accessor for TTSAURenderer.SpeechBuffer);
        result = sub_1A94F1A60(v35, type metadata accessor for TTSAURenderer.SpeechBuffer);
        ++v33;
        v34 += v125;
        v5 += v125;
        if (((v126 ^ (v38 >= v39)) & 1) == 0)
        {
          v23 = v33 - 1;
          break;
        }
      }

      a3 = v117;
      v9 = v112;
      v6 = v113;
      v26 = v114;
      a4 = v115;
      if (v124 < v123)
      {
        if (v23 < v114)
        {
          goto LABEL_127;
        }

        if (v114 < v23)
        {
          v40 = v125 * (v23 - 1);
          v41 = v23 * v125;
          v124 = v23;
          v42 = v23;
          v43 = v114;
          v44 = v114 * v125;
          do
          {
            if (v43 != --v42)
            {
              v45 = *v117;
              if (!*v117)
              {
                goto LABEL_133;
              }

              v5 = v45 + v44;
              sub_1A94F1AC0(v45 + v44, v119, type metadata accessor for TTSAURenderer.SpeechBuffer);
              if (v44 < v40 || v5 >= v45 + v41)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v44 != v40)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1A94F1AC0(v119, v45 + v40, type metadata accessor for TTSAURenderer.SpeechBuffer);
            }

            ++v43;
            v40 -= v125;
            v41 -= v125;
            v44 += v125;
          }

          while (v43 < v42);
          a3 = v117;
          v9 = v112;
          v26 = v114;
          a4 = v115;
          v23 = v124;
        }
      }
    }

    v46 = a3[1];
    if (v23 >= v46)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v23, v26))
    {
      goto LABEL_126;
    }

    if (v23 - v26 >= a4)
    {
LABEL_32:
      v48 = v23;
      if (v23 < v26)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v26, a4))
    {
      goto LABEL_128;
    }

    if ((v26 + a4) >= v46)
    {
      v47 = a3[1];
    }

    else
    {
      v47 = v26 + a4;
    }

    if (v47 < v26)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v23 == v47)
    {
      goto LABEL_32;
    }

    v93 = *a3;
    v94 = *(v9 + 72);
    v95 = *a3 + v94 * (v23 - 1);
    v96 = v26;
    v97 = -v94;
    v113 = v6;
    v114 = v96;
    v98 = v96 - v23;
    v126 = v93;
    v118 = v94;
    v5 = v93 + v23 * v94;
    v99 = v130;
    v121 = v47;
LABEL_86:
    v123 = v98;
    v124 = v23;
    v122 = v5;
    v125 = v95;
    v100 = v95;
LABEL_87:
    a4 = v128;
    sub_1A94F19F8(v5, v128, type metadata accessor for TTSAURenderer.SpeechBuffer);
    v101 = v129;
    sub_1A94F19F8(v100, v129, type metadata accessor for TTSAURenderer.SpeechBuffer);
    v102 = *(v99 + 20);
    v103 = *(a4 + v102);
    v104 = *(v101 + v102);
    sub_1A94F1A60(v101, type metadata accessor for TTSAURenderer.SpeechBuffer);
    result = sub_1A94F1A60(a4, type metadata accessor for TTSAURenderer.SpeechBuffer);
    if (v103 < v104)
    {
      break;
    }

    v99 = v130;
LABEL_85:
    v23 = v124 + 1;
    v95 = v125 + v118;
    v98 = v123 - 1;
    v5 = v122 + v118;
    v48 = v121;
    if (v124 + 1 != v121)
    {
      goto LABEL_86;
    }

    v9 = v112;
    v6 = v113;
    a3 = v117;
    v26 = v114;
    if (v121 < v114)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v25 = v120;
    }

    else
    {
      result = sub_1A9389130(0, *(v120 + 2) + 1, 1, v120);
      v25 = result;
    }

    a4 = *(v25 + 2);
    v49 = *(v25 + 3);
    v5 = a4 + 1;
    if (a4 >= v49 >> 1)
    {
      result = sub_1A9389130((v49 > 1), a4 + 1, 1, v25);
      v25 = result;
    }

    *(v25 + 2) = v5;
    v50 = &v25[16 * a4];
    *(v50 + 4) = v26;
    *(v50 + 5) = v48;
    v51 = *v116;
    if (!*v116)
    {
      goto LABEL_135;
    }

    v121 = v48;
    if (a4)
    {
      while (2)
      {
        v52 = v5 - 1;
        if (v5 >= 4)
        {
          v57 = &v25[16 * v5 + 32];
          v58 = *(v57 - 64);
          v59 = *(v57 - 56);
          v63 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          if (v63)
          {
            goto LABEL_112;
          }

          v62 = *(v57 - 48);
          v61 = *(v57 - 40);
          v63 = __OFSUB__(v61, v62);
          v55 = v61 - v62;
          v56 = v63;
          if (v63)
          {
            goto LABEL_113;
          }

          v64 = &v25[16 * v5];
          v66 = *v64;
          v65 = *(v64 + 1);
          v63 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v63)
          {
            goto LABEL_115;
          }

          v63 = __OFADD__(v55, v67);
          v68 = v55 + v67;
          if (v63)
          {
            goto LABEL_118;
          }

          if (v68 >= v60)
          {
            v86 = &v25[16 * v52 + 32];
            v88 = *v86;
            v87 = *(v86 + 1);
            v63 = __OFSUB__(v87, v88);
            v89 = v87 - v88;
            if (v63)
            {
              goto LABEL_122;
            }

            if (v55 < v89)
            {
              v52 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v56)
            {
              goto LABEL_114;
            }

            v69 = &v25[16 * v5];
            v71 = *v69;
            v70 = *(v69 + 1);
            v72 = __OFSUB__(v70, v71);
            v73 = v70 - v71;
            v74 = v72;
            if (v72)
            {
              goto LABEL_117;
            }

            v75 = &v25[16 * v52 + 32];
            v77 = *v75;
            v76 = *(v75 + 1);
            v63 = __OFSUB__(v76, v77);
            v78 = v76 - v77;
            if (v63)
            {
              goto LABEL_120;
            }

            if (__OFADD__(v73, v78))
            {
              goto LABEL_121;
            }

            if (v73 + v78 < v55)
            {
              goto LABEL_66;
            }

            if (v55 < v78)
            {
              v52 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v53 = *(v25 + 4);
            v54 = *(v25 + 5);
            v63 = __OFSUB__(v54, v53);
            v55 = v54 - v53;
            v56 = v63;
            goto LABEL_52;
          }

          v79 = &v25[16 * v5];
          v81 = *v79;
          v80 = *(v79 + 1);
          v63 = __OFSUB__(v80, v81);
          v73 = v80 - v81;
          v74 = v63;
LABEL_66:
          if (v74)
          {
            goto LABEL_116;
          }

          v82 = &v25[16 * v52];
          v84 = *(v82 + 4);
          v83 = *(v82 + 5);
          v63 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v63)
          {
            goto LABEL_119;
          }

          if (v85 < v73)
          {
            break;
          }
        }

        a4 = v52 - 1;
        if (v52 - 1 >= v5)
        {
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
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v90 = v25;
        v91 = *&v25[16 * a4 + 32];
        v5 = *&v25[16 * v52 + 40];
        sub_1A94EF700(*a3 + *(v9 + 72) * v91, *a3 + *(v9 + 72) * *&v25[16 * v52 + 32], *a3 + *(v9 + 72) * v5, v51);
        if (v6)
        {
        }

        if (v5 < v91)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = sub_1A938911C(v90);
        }

        if (a4 >= *(v90 + 2))
        {
          goto LABEL_111;
        }

        v92 = &v90[16 * a4];
        *(v92 + 4) = v91;
        *(v92 + 5) = v5;
        v131 = v90;
        result = sub_1A93CE710(v52);
        v25 = v131;
        v5 = *(v131 + 16);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v23 = a3[1];
    v24 = v121;
    a4 = v115;
    if (v121 >= v23)
    {
      goto LABEL_96;
    }
  }

  if (v126)
  {
    v105 = v127;
    sub_1A94F1AC0(v5, v127, type metadata accessor for TTSAURenderer.SpeechBuffer);
    v99 = v130;
    swift_arrayInitWithTakeFrontToBack();
    sub_1A94F1AC0(v105, v100, type metadata accessor for TTSAURenderer.SpeechBuffer);
    v100 += v97;
    v5 += v97;
    if (__CFADD__(v98++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_1A94EEED0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v98 = result;
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v5 = *v98;
    if (!*v98)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v7 = v105;
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_1A938911C(v6);
      v6 = result;
    }

    v114 = v6;
    v90 = *(v6 + 2);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = *&v6[16 * v90];
        v92 = *&v6[16 * v90 + 24];
        sub_1A94EFC2C((*a3 + (v91 << 6)), (*a3 + (*&v6[16 * v90 + 16] << 6)), (*a3 + (v92 << 6)), v5);
        if (v7)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1A938911C(v6);
        }

        if (v90 - 2 >= *(v6 + 2))
        {
          goto LABEL_119;
        }

        v93 = &v6[16 * v90];
        *v93 = v91;
        *(v93 + 1) = v92;
        v114 = v6;
        result = sub_1A93CE710(v90 - 1);
        v6 = v114;
        v90 = *(v114 + 2);
        if (v90 <= 1)
        {
        }
      }

      goto LABEL_129;
    }
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = &qword_1A9596570;
  while (1)
  {
    if ((v5 + 1) >= v4)
    {
      v14 = v5 + 1;
    }

    else
    {
      v115 = v4;
      v8 = *a3;
      sub_1A9391BAC(*a3 + ((v5 + 1) << 6), &v111, &qword_1EB3882A0, &qword_1A9596570);
      v9 = v5 << 6;
      v10 = v8 + (v5 << 6);
      sub_1A9391BAC(v10, v110, &qword_1EB3882A0, &qword_1A9596570);
      sub_1A9391BAC(&v111, v108, &qword_1EB3882A0, &qword_1A9596570);
      v11 = v108[0];
      sub_1A9391BAC(v110, v106, &qword_1EB3882A0, &qword_1A9596570);
      v99 = v106[0] >> 14;
      v102 = v11 >> 14;
      sub_1A94D9AC4(v107);
      sub_1A94D9AC4(v109);
      sub_1A937B960(v110, &qword_1EB3882A0, &qword_1A9596570);
      result = sub_1A937B960(&v111, &qword_1EB3882A0, &qword_1A9596570);
      v96 = v5;
      v12 = v5 + 2;
      v13 = v10 + 64;
      while (1)
      {
        v14 = v115;
        if (v115 == v12)
        {
          break;
        }

        v15 = v13 + 64;
        sub_1A9391BAC(v13 + 64, &v111, &qword_1EB3882A0, &qword_1A9596570);
        sub_1A9391BAC(v13, v110, &qword_1EB3882A0, &qword_1A9596570);
        sub_1A9391BAC(&v111, v108, &qword_1EB3882A0, &qword_1A9596570);
        v16 = v108[0];
        sub_1A9391BAC(v110, v106, &qword_1EB3882A0, &qword_1A9596570);
        v17 = v106[0];
        sub_1A94D9AC4(v107);
        sub_1A94D9AC4(v109);
        sub_1A937B960(v110, &qword_1EB3882A0, &qword_1A9596570);
        result = sub_1A937B960(&v111, &qword_1EB3882A0, &qword_1A9596570);
        v18 = v16 >> 14 >= v17 >> 14;
        ++v12;
        v13 = v15;
        if ((((v102 < v99) ^ v18) & 1) == 0)
        {
          v14 = v12 - 1;
          break;
        }
      }

      v5 = v96;
      if (v102 < v99)
      {
        if (v14 < v96)
        {
          goto LABEL_122;
        }

        if (v96 < v14)
        {
          v19 = (v14 << 6) - 64;
          v20 = v14;
          v21 = v96;
          do
          {
            if (v21 != --v20)
            {
              v25 = *a3;
              if (!*a3)
              {
                goto LABEL_128;
              }

              v26 = (v25 + v9);
              v27 = (v25 + v19);
              v111 = *v26;
              v112 = v26[1];
              v113[0] = v26[2];
              *(v113 + 9) = *(v26 + 41);
              if (v9 != v19 || v26 >= v27 + 4)
              {
                v22 = *v27;
                v23 = v27[1];
                v24 = v27[3];
                v26[2] = v27[2];
                v26[3] = v24;
                *v26 = v22;
                v26[1] = v23;
              }

              *v27 = v111;
              v27[1] = v112;
              v27[2] = v113[0];
              *(v27 + 41) = *(v113 + 9);
            }

            ++v21;
            v19 -= 64;
            v9 += 64;
          }

          while (v21 < v20);
        }
      }
    }

    v28 = a3[1];
    if (v14 < v28)
    {
      if (__OFSUB__(v14, v5))
      {
        goto LABEL_121;
      }

      if (v14 - v5 < a4)
      {
        if (__OFADD__(v5, a4))
        {
          goto LABEL_123;
        }

        if (&v5[a4] >= v28)
        {
          v29 = a3[1];
        }

        else
        {
          v29 = &v5[a4];
        }

        if (v29 < v5)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v14 != v29)
        {
          break;
        }
      }
    }

    v30 = v14;
    if (v14 < v5)
    {
      goto LABEL_120;
    }

LABEL_32:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A9389130(0, *(v6 + 2) + 1, 1, v6);
      v6 = result;
    }

    v32 = *(v6 + 2);
    v31 = *(v6 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      result = sub_1A9389130((v31 > 1), v32 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 2) = v33;
    v34 = &v6[16 * v32];
    *(v34 + 4) = v5;
    *(v34 + 5) = v30;
    v100 = v30;
    v35 = *v98;
    if (!*v98)
    {
      goto LABEL_130;
    }

    if (v32)
    {
      while (1)
      {
        v36 = v33 - 1;
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v37 = *(v6 + 4);
          v38 = *(v6 + 5);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_51:
          if (v40)
          {
            goto LABEL_109;
          }

          v53 = &v6[16 * v33];
          v55 = *v53;
          v54 = *(v53 + 1);
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_112;
          }

          v59 = &v6[16 * v36 + 32];
          v61 = *v59;
          v60 = *(v59 + 1);
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_115;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_116;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v36 = v33 - 2;
            }

            goto LABEL_72;
          }

          goto LABEL_65;
        }

        v63 = &v6[16 * v33];
        v65 = *v63;
        v64 = *(v63 + 1);
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_65:
        if (v58)
        {
          goto LABEL_111;
        }

        v66 = &v6[16 * v36];
        v68 = *(v66 + 4);
        v67 = *(v66 + 5);
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_114;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_72:
        v74 = v36 - 1;
        if (v36 - 1 >= v33)
        {
          __break(1u);
LABEL_105:
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
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_127;
        }

        v75 = *&v6[16 * v74 + 32];
        v5 = *&v6[16 * v36 + 40];
        sub_1A94EFC2C((*a3 + (v75 << 6)), (*a3 + (*&v6[16 * v36 + 32] << 6)), (*a3 + (v5 << 6)), v35);
        if (v105)
        {
        }

        if (v5 < v75)
        {
          goto LABEL_105;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1A938911C(v6);
        }

        if (v74 >= *(v6 + 2))
        {
          goto LABEL_106;
        }

        v76 = &v6[16 * v74];
        *(v76 + 4) = v75;
        *(v76 + 5) = v5;
        v114 = v6;
        result = sub_1A93CE710(v36);
        v6 = v114;
        v33 = *(v114 + 2);
        if (v33 <= 1)
        {
          goto LABEL_3;
        }
      }

      v41 = &v6[16 * v33 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_107;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_108;
      }

      v48 = &v6[16 * v33];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_110;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_113;
      }

      if (v52 >= v44)
      {
        v70 = &v6[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_117;
        }

        if (v39 < v73)
        {
          v36 = v33 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_51;
    }

LABEL_3:
    v4 = a3[1];
    v5 = v100;
    if (v100 >= v4)
    {
      goto LABEL_93;
    }
  }

  v94 = v6;
  v77 = *a3;
  v78 = (*a3 + (v14 << 6));
  v97 = v5;
  v79 = (v5 - v14);
  v101 = v29;
LABEL_83:
  v115 = v14;
  v80 = v79;
  v103 = v78;
  while (1)
  {
    sub_1A9391BAC(v78, &v111, &qword_1EB3882A0, &qword_1A9596570);
    v81 = v78 - 4;
    sub_1A9391BAC((v78 - 4), v110, &qword_1EB3882A0, &qword_1A9596570);
    sub_1A9391BAC(&v111, v108, &qword_1EB3882A0, &qword_1A9596570);
    v82 = v108[0];
    sub_1A9391BAC(v110, v106, &qword_1EB3882A0, &qword_1A9596570);
    v83 = v106[0];
    sub_1A94D9AC4(v107);
    sub_1A94D9AC4(v109);
    sub_1A937B960(v110, &qword_1EB3882A0, &qword_1A9596570);
    result = sub_1A937B960(&v111, &qword_1EB3882A0, &qword_1A9596570);
    if (v82 >> 14 >= v83 >> 14)
    {
LABEL_82:
      v14 = (v115 + 1);
      v30 = v101;
      v78 = v103 + 4;
      --v79;
      if ((v115 + 1) != v101)
      {
        goto LABEL_83;
      }

      v6 = v94;
      v5 = v97;
      if (v101 < v97)
      {
        goto LABEL_120;
      }

      goto LABEL_32;
    }

    if (!v77)
    {
      break;
    }

    v113[0] = v78[2];
    *(v113 + 9) = *(v78 + 41);
    v111 = *v78;
    v84 = v111;
    v112 = v78[1];
    v85 = v112;
    v86 = *(v78 - 3);
    *v78 = *v81;
    v78[1] = v86;
    v87 = *(v78 - 1);
    v78[2] = *(v78 - 2);
    v78[3] = v87;
    *v81 = v84;
    *(v78 - 23) = *(v113 + 9);
    v88 = v113[0];
    *(v78 - 3) = v85;
    *(v78 - 2) = v88;
    v78 -= 4;
    if (__CFADD__(v80++, 1))
    {
      goto LABEL_82;
    }
  }

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
  return result;
}

uint64_t sub_1A94EF700(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for TTSAURenderer.SpeechBuffer();
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v54 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v11, v13);
  v53 = &v44 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_62;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_63;
  }

  v19 = (a2 - a1) / v17;
  v57 = a1;
  v56 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v29 = a4 + v21;
    if (v21 >= 1)
    {
      v30 = -v17;
      v31 = v29;
      v48 = a4;
      v49 = a1;
      v52 = v8;
      v47 = -v17;
      do
      {
        v45 = v29;
        v32 = a2;
        v33 = a2 + v30;
        v50 = a2;
        v51 = a2 + v30;
        while (1)
        {
          if (v32 <= a1)
          {
            v57 = v32;
            v55 = v45;
            goto LABEL_60;
          }

          v35 = a3;
          v46 = v29;
          a3 += v30;
          v36 = v31 + v30;
          v37 = v53;
          sub_1A94F19F8(v31 + v30, v53, type metadata accessor for TTSAURenderer.SpeechBuffer);
          v38 = v54;
          sub_1A94F19F8(v33, v54, type metadata accessor for TTSAURenderer.SpeechBuffer);
          v39 = *(v8 + 20);
          v40 = *(v37 + v39);
          v41 = *(v38 + v39);
          sub_1A94F1A60(v38, type metadata accessor for TTSAURenderer.SpeechBuffer);
          sub_1A94F1A60(v37, type metadata accessor for TTSAURenderer.SpeechBuffer);
          if (v40 < v41)
          {
            break;
          }

          v29 = v36;
          if (v35 < v31 || a3 >= v31)
          {
            v34 = v52;
            swift_arrayInitWithTakeFrontToBack();
            v33 = v51;
            v8 = v34;
            v30 = v47;
          }

          else
          {
            v33 = v51;
            v8 = v52;
            v30 = v47;
            if (v35 != v31)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v31 = v36;
          a1 = v49;
          v32 = v50;
          if (v36 <= v48)
          {
            a2 = v50;
            goto LABEL_59;
          }
        }

        v42 = v48;
        if (v35 < v50 || a3 >= v50)
        {
          a2 = v51;
          v8 = v52;
          swift_arrayInitWithTakeFrontToBack();
          v29 = v46;
          v30 = v47;
        }

        else
        {
          v43 = v35 == v50;
          a2 = v51;
          v8 = v52;
          v29 = v46;
          v30 = v47;
          if (!v43)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v49;
      }

      while (v31 > v42);
    }

LABEL_59:
    v57 = a2;
    v55 = v29;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v51 = a4 + v20;
    v55 = a4 + v20;
    if (v20 >= 1 && a2 < a3)
    {
      v50 = a3;
      v52 = v8;
      do
      {
        v23 = v53;
        sub_1A94F19F8(a2, v53, type metadata accessor for TTSAURenderer.SpeechBuffer);
        v24 = v54;
        sub_1A94F19F8(a4, v54, type metadata accessor for TTSAURenderer.SpeechBuffer);
        v25 = *(v8 + 20);
        v26 = *(v23 + v25);
        v27 = *(v24 + v25);
        sub_1A94F1A60(v24, type metadata accessor for TTSAURenderer.SpeechBuffer);
        sub_1A94F1A60(v23, type metadata accessor for TTSAURenderer.SpeechBuffer);
        if (v26 >= v27)
        {
          if (a1 < a4 || a1 >= a4 + v17)
          {
            v8 = v52;
            swift_arrayInitWithTakeFrontToBack();
            v28 = v50;
          }

          else
          {
            v28 = v50;
            v8 = v52;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v56 = a4 + v17;
          a4 += v17;
        }

        else if (a1 < a2 || a1 >= a2 + v17)
        {
          v8 = v52;
          swift_arrayInitWithTakeFrontToBack();
          a2 += v17;
          v28 = v50;
        }

        else
        {
          v28 = v50;
          v8 = v52;
          if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v17;
        }

        a1 += v17;
        v57 = a1;
      }

      while (a4 < v51 && a2 < v28);
    }
  }

LABEL_60:
  sub_1A94EFFE0(&v57, &v56, &v55);
  return 1;
}

uint64_t sub_1A94EFC2C(char *__src, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 63;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 6;
  v11 = a3 - a2;
  v12 = a3 - a2 + 63;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 6;
  if (v10 >= v13)
  {
    v25 = v13 << 6;
    if (a4 != a2 || &a2[v25] <= a4)
    {
      memmove(a4, a2, v13 << 6);
    }

    v15 = &v4[v25];
    if (v11 < 64 || v6 <= v7)
    {
      v24 = v6;
      goto LABEL_38;
    }

    while (1)
    {
      __dst = v6;
      v49 = v6 - 64;
      v26 = v15 - 64;
      v5 -= 64;
      while (1)
      {
        v29 = v4;
        v30 = v26 + 64;
        v31 = v5 + 64;
        sub_1A9391BAC(v26, v48, &qword_1EB3882A0, &qword_1A9596570);
        sub_1A9391BAC(v49, v47, &qword_1EB3882A0, &qword_1A9596570);
        sub_1A9391BAC(v48, v45, &qword_1EB3882A0, &qword_1A9596570);
        v32 = v45[0];
        sub_1A9391BAC(v47, v43, &qword_1EB3882A0, &qword_1A9596570);
        v33 = v43[0];
        sub_1A94D9AC4(v44);
        sub_1A94D9AC4(v46);
        sub_1A937B960(v47, &qword_1EB3882A0, &qword_1A9596570);
        sub_1A937B960(v48, &qword_1EB3882A0, &qword_1A9596570);
        if (v32 >> 14 < v33 >> 14)
        {
          break;
        }

        v4 = v29;
        if (v31 != v30)
        {
          v34 = *v26;
          v35 = *(v26 + 1);
          v36 = *(v26 + 3);
          *(v5 + 2) = *(v26 + 2);
          *(v5 + 3) = v36;
          *v5 = v34;
          *(v5 + 1) = v35;
        }

        v27 = v26 - 64;
        v5 -= 64;
        v28 = v26 > v29;
        v26 -= 64;
        if (!v28)
        {
          v15 = v27 + 64;
          v24 = __dst;
          goto LABEL_38;
        }
      }

      v4 = v29;
      v24 = v49;
      if (v31 != __dst)
      {
        v37 = *v49;
        v38 = *(v49 + 1);
        v39 = *(v49 + 3);
        *(v5 + 2) = *(v49 + 2);
        *(v5 + 3) = v39;
        *v5 = v37;
        *(v5 + 1) = v38;
      }

      if (v30 > v29)
      {
        v15 = v26 + 64;
        v6 = v24;
        if (v24 > v7)
        {
          continue;
        }
      }

      v15 = v26 + 64;
      goto LABEL_38;
    }
  }

  v14 = v10 << 6;
  if (a4 != __src || &__src[v14] <= a4)
  {
    memmove(a4, __src, v14);
  }

  v15 = &v4[v14];
  if (v8 < 64 || v6 >= v5)
  {
    v24 = v7;
    goto LABEL_38;
  }

  do
  {
    v16 = v15;
    sub_1A9391BAC(v6, v48, &qword_1EB3882A0, &qword_1A9596570);
    sub_1A9391BAC(v4, v47, &qword_1EB3882A0, &qword_1A9596570);
    sub_1A9391BAC(v48, v45, &qword_1EB3882A0, &qword_1A9596570);
    v17 = v45[0];
    sub_1A9391BAC(v47, v43, &qword_1EB3882A0, &qword_1A9596570);
    v18 = v43[0];
    sub_1A94D9AC4(v44);
    sub_1A94D9AC4(v46);
    sub_1A937B960(v47, &qword_1EB3882A0, &qword_1A9596570);
    sub_1A937B960(v48, &qword_1EB3882A0, &qword_1A9596570);
    if (v17 >> 14 < v18 >> 14)
    {
      v19 = v6;
      v20 = v7 == v6;
      v6 += 64;
      if (v20)
      {
        goto LABEL_17;
      }

LABEL_16:
      v21 = *v19;
      v22 = v19[1];
      v23 = v19[3];
      *(v7 + 2) = v19[2];
      *(v7 + 3) = v23;
      *v7 = v21;
      *(v7 + 1) = v22;
      goto LABEL_17;
    }

    v19 = v4;
    v20 = v7 == v4;
    v4 += 64;
    if (!v20)
    {
      goto LABEL_16;
    }

LABEL_17:
    v7 += 64;
    v15 = v16;
  }

  while (v4 < v16 && v6 < v5);
  v24 = v7;
LABEL_38:
  v40 = (v15 - v4 + (v15 - v4 < 0 ? 0x3FuLL : 0)) & 0xFFFFFFFFFFFFFFC0;
  if (v24 != v4 || v24 >= &v4[v40])
  {
    memmove(v24, v4, v40);
  }

  return 1;
}

uint64_t sub_1A94EFFE0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for TTSAURenderer.SpeechBuffer();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1A94F00C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A937829C(&qword_1EB388298, &qword_1A9596568);
  v35 = a2;
  result = sub_1A957D118();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 4 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      if ((v35 & 1) == 0)
      {
      }

      result = MEMORY[0x1AC586390](*(v8 + 40), v22, 4);
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_1A94F034C()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB388298, &qword_1A9596568);
  v2 = *v0;
  v3 = sub_1A957D108();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

void *sub_1A94F04B4(void *a1, int64_t a2, char a3)
{
  result = sub_1A94F06AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A94F04D4(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A937829C(&qword_1EB386FD0, &qword_1A958AF40);
  v10 = *(type metadata accessor for TTSAURenderer.SpeechBuffer() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for TTSAURenderer.SpeechBuffer() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1A94F06AC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A937829C(&qword_1EB3882A8, &qword_1A9596578);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A937829C(&qword_1EB3882A0, &qword_1A9596570);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A94F07E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TTSAURenderer.SpeechBuffer();
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v35 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v11, v13);
  v34 = &v31 - v15;
  v16 = a4 + 56;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v20 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v16;
    a1[2] = ~v17;
    a1[3] = v20;
    a1[4] = v19;
    return a3;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v32 = a1;
    v33 = a3;
    result = 0;
    v20 = 0;
    v31 = v17;
    v21 = (63 - v17) >> 6;
    v22 = 1;
    while (v19)
    {
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = v35;
      a1 = *(v36 + 72);
      sub_1A94F19F8(*(a4 + 48) + a1 * (v25 | (v20 << 6)), v35, type metadata accessor for TTSAURenderer.SpeechBuffer);
      v27 = v26;
      v28 = v34;
      sub_1A94F1AC0(v27, v34, type metadata accessor for TTSAURenderer.SpeechBuffer);
      sub_1A94F1AC0(v28, a2, type metadata accessor for TTSAURenderer.SpeechBuffer);
      if (v22 == v33)
      {
        a1 = v32;
        a3 = v33;
        goto LABEL_23;
      }

      a2 += a1;
      result = v22;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v20;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v24 >= v21)
      {
        break;
      }

      v19 = *(v16 + 8 * v24);
      ++v23;
      if (v19)
      {
        v20 = v24;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v30 = v20 + 1;
    }

    else
    {
      v30 = v21;
    }

    v20 = v30 - 1;
    a3 = result;
    a1 = v32;
LABEL_23:
    v17 = v31;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_1A94F0A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for SpeechSlicer.Slice(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

void *sub_1A94F0BB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1A937829C(&qword_1EB388298, &qword_1A9596568);
  v3 = sub_1A957D128();
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_1A937BEE0(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 4 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 4);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_1A937BEE0(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_1A94F0CC8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v15 = MEMORY[0x1AC5851A0](15, a5);
    v16 = a3;
    v9 = v15;
    v5 = a4 & 0x2000000000000000;
    v6 = HIBYTE(a4) & 0xF;
    v7 = v16 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    if ((a5 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v5 = a4 & 0x2000000000000000;
    v6 = HIBYTE(a4) & 0xF;
    v7 = a3 & 0xFFFFFFFFFFFFLL;
    if ((a4 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(a4) & 0xF;
    }

    else
    {
      v8 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v8 < a5)
    {
      goto LABEL_17;
    }

    v9 = (a5 << 16) | 4;
  }

  if (v5)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (4 * v10 < v9 >> 14)
  {
    goto LABEL_16;
  }

  v11 = sub_1A957C3B8();
  MEMORY[0x1AC585090](v11);

  sub_1A957C318();
  sub_1A957C318();

  v12 = sub_1A957C268();
  if (sub_1A957C268() >> 14 < v12 >> 14)
  {
LABEL_18:
    __break(1u);
  }
}

uint64_t sub_1A94F0E38(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for TTSExecutor();
  *(v1 + 16) = TTSExecutor.__allocating_init()();
  *(v1 + 457) = 0;
  v4 = OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_suspendedState;
  v5 = _s15UtteranceRunnerC14SynthesisStateVMa(0);
  (*(*(v5 - 8) + 56))(v2 + v4, 1, 1, v5);
  *(v2 + OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_receivedFirstBuffer) = 0;
  *(v2 + OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_playedFirstBuffer) = 0;
  v6 = *(a1 + 24);
  *(v2 + 24) = v6;
  sub_1A9410E08(a1 + 32, v2 + 32);
  *(v2 + 456) = *(a1 + 456);
  sub_1A9391BAC(a1 + OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_eventContinuation, v2 + OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_eventContinuation, &qword_1EB3871A8, &qword_1A958BE88);
  sub_1A9379534(a1 + 416, v2 + 416);
  v7 = v6;
  return v2;
}

uint64_t sub_1A94F0F30(uint64_t a1)
{
  *(a1 + 8) = sub_1A94E9538(&qword_1EB388228, type metadata accessor for CoreSynthesizer.UtteranceRunner);
  result = sub_1A94E9538(&qword_1EB388208, type metadata accessor for CoreSynthesizer.UtteranceRunner);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A94F0FB4(uint64_t a1)
{
  result = sub_1A94E9538(&qword_1EB388208, type metadata accessor for CoreSynthesizer.UtteranceRunner);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A94F100C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1A94F105C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1A94F10B0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1A94F10E0()
{
  sub_1A94F1878(319, &qword_1EB388230, _s15UtteranceRunnerC14SynthesisStateVMa, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1A94F1824(319, &qword_1EB388238, &qword_1EB3871B0, &qword_1A958BE98);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of CoreSynthesizer.UtteranceRunner.run()()
{
  v2 = *(*v0 + 264);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return v6();
}

uint64_t dispatch thunk of CoreSynthesizer.UtteranceRunner.stop(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 272);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A93836DC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of CoreSynthesizer.UtteranceRunner.suspend(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 280);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A93836DC;

  return v10(a1, a2);
}

void sub_1A94F16C8()
{
  sub_1A94F1824(319, &qword_1EB388248, &qword_1EB386D08, &qword_1A95892D8);
  if (v0 <= 0x3F)
  {
    sub_1A94F1878(319, &qword_1EB388250, type metadata accessor for TTSAURenderer.SpeechBuffer, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1A94F1878(319, &qword_1EB388258, type metadata accessor for SpeechSlicer.Slice, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1A94F1878(319, &qword_1EB388260, type metadata accessor for SpeechSlicer.Slice, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A94F1824(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1A93A7B68(a3, a4);
    v5 = sub_1A957CC58();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A94F1878(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A94F18E0()
{
  result = qword_1EB3A0B90[0];
  if (!qword_1EB3A0B90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A0B90);
  }

  return result;
}

uint64_t sub_1A94F19E4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1A9410F88(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1A94F19F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A94F1A60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A94F1AC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A94F1B2C()
{
  v1 = (type metadata accessor for TTSAURenderer.SpeechBuffer() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = _s15UtteranceRunnerC14SynthesisStateVMa(0);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v38 = *(*(v5 - 8) + 64);
  v8 = *(v0 + 16);

  v9 = *(v0 + 24);

  v10 = v0 + v3;
  v11 = sub_1A957B0B8();
  (*(*(v11 - 8) + 8))(v10, v11);

  v12 = *(v10 + v1[9]);

  v13 = *(v0 + v7);

  v14 = *(v0 + v7 + 8);

  v15 = v0 + v7 + *(v5 + 24);
  v16 = type metadata accessor for SpeechSlicer.Slice(0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v17 = *(v15 + 8);

    sub_1A9378138((v15 + 16));
    v18 = v15 + *(v16 + 24);
    type metadata accessor for SpeechSlicer.Slice.SliceType(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v20 = *(v18 + 8);

    if (EnumCaseMultiPayload != 1)
    {
      v21 = *(v18 + 16);

      v22 = *(v18 + 32);

      v23 = *(v18 + 48);

      sub_1A93B183C(*(v18 + 72), *(v18 + 80), *(v18 + 88), *(v18 + 96), *(v18 + 104), *(v18 + 112), *(v18 + 120));
      v24 = *(v18 + 128);

      v25 = *(v18 + 136);

      v26 = *(v18 + 144);

      v27 = *(v18 + 152);

      if (*(v18 + 208))
      {

        v28 = *(v18 + 224);
      }

      if (*(v18 + 248))
      {

        v29 = *(v18 + 264);
      }

      v30 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
      v31 = *(v30 + 48);
      v32 = sub_1A957B308();
      (*(*(v32 - 8) + 8))(v18 + v31, v32);
      v33 = *(v30 + 64);
      v34 = sub_1A957B8C8();
      v35 = *(v34 - 8);
      if (!(*(v35 + 48))(v18 + v33, 1, v34))
      {
        (*(v35 + 8))(v18 + v33, v34);
      }
    }
  }

  v36 = *(v0 + v7 + *(v5 + 28));

  return MEMORY[0x1EEE6BDD0](v0, v7 + v38, v2 | v6 | 7);
}

void sub_1A94F1E9C(char a1)
{
  v3 = *(type metadata accessor for TTSAURenderer.SpeechBuffer() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(_s15UtteranceRunnerC14SynthesisStateVMa(0) - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  sub_1A94E8A60(a1, v7, v8, v1 + v4, v9);
}

unint64_t sub_1A94F1FA0()
{
  result = qword_1EB388288;
  if (!qword_1EB388288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388288);
  }

  return result;
}

uint64_t sub_1A94F2048(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB388220, &qword_1A9596240);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A94F20C8()
{
  v1 = *(sub_1A937829C(&qword_1EB3871A8, &qword_1A958BE88) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1A937829C(&qword_1EB3871B0, &qword_1A958BE98);
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1A94F229C()
{
  v1 = *(sub_1A937829C(&qword_1EB3871A8, &qword_1A958BE88) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = sub_1A937829C(&qword_1EB3871B0, &qword_1A958BE98);
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

void sub_1A94F2484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(sub_1A957B308() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = objc_opt_self();
  v11 = sub_1A957C0C8();
  sub_1A957B118();
  v12 = sub_1A957C0C8();

  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  v15[4] = sub_1A94F260C;
  v15[5] = v13;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1A94EB21C;
  v15[3] = &unk_1F1CFB628;
  v14 = _Block_copy(v15);

  [v10 enumerateEmojiCharactersInString:v11 languageCode:v12 withBlock:v14];
  _Block_release(v14);
}

void sub_1A94F260C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v7 = v4;
    v9 = *(v4 + 32);
    v8 = *(v4 + 40);
    v11 = *(v7 + 16);
    v10 = *(v7 + 24);

    v12 = sub_1A94CF2D4();
    if (v13)
    {
    }

    else
    {
      v14[0] = a3;
      v14[1] = a4;
      v15 = 1;
      v9(v12);
      sub_1A94D9AC4(v14);
    }
  }
}

uint64_t sub_1A94F26D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1A94F26F0(unint64_t result, unint64_t a2, void (*a3)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v6 = 0;
    v7 = *(v3 + 16);
    v8 = 4 * v4;
    v9 = 15;
    do
    {
      v10 = sub_1A957C388();
      v12 = sub_1A9499588(v10, v11);

      v13 = *v7;
      if (*(*v7 + 16))
      {
        v14 = (v12 & 0x100000000) != 0 ? 0 : v12;
        v15 = sub_1A937BEE0(v14);
        if (v16)
        {
          v17 = (*(v13 + 56) + 16 * v15);
          v18 = *v17;
          v19 = v17[1];

          result = sub_1A957C248();
          if (v6 > result >> 14)
          {
            __break(1u);
            return result;
          }

          a3(v9, result, v18, v19);
        }
      }

      result = sub_1A957C248();
      v9 = result;
      v6 = result >> 14;
    }

    while (result >> 14 < v8);
  }

  return result;
}

uint64_t sub_1A94F281C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v7 = *(type metadata accessor for CoreSynthesizer.Substitution.Context(0) - 8);
  v8 = *(v3 + 16);
  v12[2] = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));
  v12[3] = a1;
  v12[4] = a2;
  v16[0] = sub_1A94EBC8C(MEMORY[0x1E69E7CC0], sub_1A94F299C, v12, v8);

  sub_1A94EDEC4(v16);

  v9 = v16[0][2];
  if (v9)
  {
    v10 = v16[0] + 4;
    do
    {
      sub_1A9391BAC(v10, v16, &qword_1EB3882A0, &qword_1A9596570);
      v13[0] = v16[0];
      v13[1] = v16[1];
      v14 = v17;
      v15[0] = v18[0];
      *(v15 + 9) = *(v18 + 9);
      a3();
      sub_1A937B960(v13, &qword_1EB3882A0, &qword_1A9596570);
      v10 += 8;
      --v9;
    }

    while (v9);
  }
}

void sub_1A94F299C(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = *a1;
  v10 = type metadata accessor for CoreSynthesizer.Substitution.Context(0);
  CoreSynthesizer.Substitution.regex(forLocale:)(v6 + *(v10 + 20));
  v11 = objc_allocWithZone(TTSRegex);
  v12 = sub_1A957C0C8();

  v13 = [v11 initWithPerlPattern_];

  v14 = sub_1A9499C2C(v7, v8);
  v15 = *(v14 + 16);
  if (v15)
  {
    v24 = v13;
    v25 = a3;
    v30 = v9;
    v29 = MEMORY[0x1E69E7CC0];

    sub_1A94F04B4(0, v15, 0);
    v16 = v29;
    v17 = 0;
    v18 = *(type metadata accessor for CoreSynthesizer.Substitution(0) + 24);
    while (v17 < *(v14 + 16))
    {
      v26 = *(v14 + 16 * v17 + 32);
      sub_1A944A98C(a2 + v18, &v27);
      v29 = v16;
      v20 = v16[2];
      v19 = v16[3];
      if (v20 >= v19 >> 1)
      {
        sub_1A94F04B4((v19 > 1), v20 + 1, 1);
        v16 = v29;
      }

      ++v17;
      v16[2] = v20 + 1;
      v21 = &v16[8 * v20];
      v22 = v27;
      v23 = v28[0];
      *(v21 + 73) = *(v28 + 9);
      v21[3] = v22;
      v21[4] = v23;
      v21[2] = v26;
      if (v15 == v17)
      {

        sub_1A94EBB88(v16);

        *v25 = v30;
        return;
      }
    }

    __break(1u);
  }

  else
  {

    *a3 = v9;
  }
}

uint64_t _s15UtteranceRunnerC10RetryStateOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t _s15UtteranceRunnerC10RetryStateOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A94F2C2C(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1A94F2C44(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1A94F2C70()
{
  type metadata accessor for AttributeUtilities();
  v0 = swift_allocObject();
  *(v0 + 16) = sub_1A94F3C1C(MEMORY[0x1E69E7CC0]);
  sub_1A937829C(&qword_1EB3882C0, &qword_1A9588BD0);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v0 + 24) = result;
  qword_1EB3A7CB8 = v0;
  return result;
}

uint64_t sub_1A94F2CE0()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_1A94F3C1C(MEMORY[0x1E69E7CC0]);
  sub_1A937829C(&qword_1EB3882C0, &qword_1A9588BD0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 24) = v1;
  return v0;
}

uint64_t *sub_1A94F2D4C()
{
  if (qword_1EB3A0CB0 != -1)
  {
    swift_once();
  }

  return &qword_1EB3A7CB8;
}

uint64_t sub_1A94F2DC0(uint64_t a1, uint64_t a2)
{
  sub_1A957CF08();

  sub_1A937829C(&qword_1EB386B68, &qword_1A9591620);
  sub_1A93BD360();
  v4 = sub_1A957C088();
  MEMORY[0x1AC585140](v4);

  MEMORY[0x1AC585140](10537, 0xE200000000000000);
  v5 = sub_1A94F331C(0xD00000000000001BLL, 0x80000001A95C4A40);

  if (v5)
  {
    v6 = sub_1A957C0C8();
    v7 = [v5 firstMatchInString:v6 options:0 range:{0, MEMORY[0x1AC5851E0](a1, a2)}];

    if (v7)
    {
      v8 = sub_1A957C0C8();
      [v7 rangeWithName_];

      sub_1A957CA08();
      if (v9 & 1) != 0 || (v10 = sub_1A957C0C8(), [v7 rangeWithName_], v10, sub_1A957CA08(), (v11))
      {
      }

      else
      {
        v13 = sub_1A957C3B8();
        v14 = MEMORY[0x1AC585090](v13);
        v16 = v15;

        v17 = sub_1A957C3B8();
        MEMORY[0x1AC585090](v17);

        v18 = sub_1A94F3B24(v14, v16);

        if (v18)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1A94F3080(uint64_t a1, uint64_t a2)
{
  sub_1A957CF08();

  sub_1A937829C(&qword_1EB386B68, &qword_1A9591620);
  sub_1A93BD360();
  v4 = sub_1A957C088();
  MEMORY[0x1AC585140](v4);

  MEMORY[0x1AC585140](10537, 0xE200000000000000);
  v5 = sub_1A94F331C(0xD000000000000021, 0x80000001A95C4A10);

  if (v5)
  {
    v6 = sub_1A957C0C8();
    v7 = [v5 firstMatchInString:v6 options:0 range:{0, MEMORY[0x1AC5851E0](a1, a2)}];

    if (v7)
    {
      v8 = sub_1A957C0C8();
      [v7 rangeWithName_];

      sub_1A957CA08();
      if (v9 & 1) != 0 || (v10 = sub_1A957C0C8(), [v7 rangeWithName_], v10, sub_1A957CA08(), (v11))
      {
      }

      else
      {
        v13 = sub_1A957C3B8();
        v14 = MEMORY[0x1AC585090](v13);
        v16 = v15;

        v17 = sub_1A957C3B8();
        MEMORY[0x1AC585090](v17);

        v18 = sub_1A94F3B24(v14, v16);

        if (v18)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

id sub_1A94F331C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 24);

  os_unfair_lock_lock(v6 + 4);
  swift_beginAccess();
  v7 = *(v2 + 16);
  if (*(v7 + 16))
  {

    v8 = sub_1A937A490(a1, a2);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);
      v11 = v10;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  os_unfair_lock_unlock(v6 + 4);

  if (!v10)
  {
    v12 = objc_allocWithZone(MEMORY[0x1E696AE70]);

    v10 = sub_1A943639C(a1, a2, 1);
    if (v10)
    {
      v13 = *(v3 + 24);

      os_unfair_lock_lock(v13 + 4);
      swift_beginAccess();
      v14 = v10;

      v15 = v14;
      sub_1A94F34A4(v10, a1, a2);
      swift_endAccess();
      os_unfair_lock_unlock(v13 + 4);
    }
  }

  return v10;
}

uint64_t sub_1A94F34A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1A94F3840(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1A937A490(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_1A94F39B8();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_1A939748C(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_1A94F359C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A937829C(&unk_1EB3882B0, &qword_1A9596630);
  v39 = a2;
  result = sub_1A957D118();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1A94F3840(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A937A490(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A94F359C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1A937A490(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_1A957D438();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      sub_1A94F39B8();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

id sub_1A94F39B8()
{
  v1 = v0;
  sub_1A937829C(&unk_1EB3882B0, &qword_1A9596630);
  v2 = *v0;
  v3 = sub_1A957D108();
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

        result = v20;
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

BOOL sub_1A94F3B24(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtof_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_1A957CED8();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

unint64_t sub_1A94F3C1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&unk_1EB3882B0, &qword_1A9596630);
    v3 = sub_1A957D128();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1A937A490(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_1A94F3D44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1A94F3D8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1A94F3DDC@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t SSEError.hashValue.getter()
{
  v1 = *v0;
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](v1);
  return sub_1A957D548();
}

uint64_t sub_1A94F3EE4()
{
  v0 = sub_1A957BC88();
  sub_1A9377618(v0, qword_1EB3A0CC8);
  sub_1A937731C(v0, qword_1EB3A0CC8);
  return sub_1A957BC78();
}

void *SSELoaderManager.__allocating_init(database:)(uint64_t a1)
{
  v2 = swift_allocObject();
  type metadata accessor for TTSExecutor();
  v2[2] = TTSExecutor.__allocating_init()();
  type metadata accessor for SSELoaderManager.Store();
  v3 = swift_allocObject();
  sub_1A93E9DFC();
  v2[3] = a1;
  v2[4] = v3;
  return v2;
}

uint64_t SSELoaderManager.init(database:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for TTSExecutor();
  *(v1 + 16) = TTSExecutor.__allocating_init()();
  type metadata accessor for SSELoaderManager.Store();
  v4 = swift_allocObject();
  sub_1A93E9DFC();
  *(v2 + 24) = a1;
  *(v2 + 32) = v4;
  return v2;
}

uint64_t sub_1A94F4038()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock(v1 + 4);
  sub_1A93B5080(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_1A94F40B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1A957B9F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  if (*(a1 + 16))
  {
    v7 = *(a1 + 16);
  }

  else
  {
    sub_1A937829C(&qword_1EB3882D0, qword_1A9596640);

    sub_1A957BA08();
    type metadata accessor for SSELoaderManager.Store();
    sub_1A95012F0(&unk_1EB385FB0, sub_1A950129C);
    sub_1A95012F0(&qword_1EB385FC0, sub_1A9501374);
    sub_1A94FF1F4(qword_1EB386090, v8, type metadata accessor for SSELoaderManager.Store);
    v7 = sub_1A957B8D8();
    v9 = *(a1 + 16);
    *(a1 + 16) = v7;
  }

  *a2 = v7;
}

unint64_t sub_1A94F42BC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1A94FED34(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

uint64_t sub_1A94F42EC()
{

  sub_1A937829C(&qword_1EB3882C8, &qword_1A9596638);
  sub_1A957BA88();
}

uint64_t sub_1A94F4360()
{
  (*(*v0 + 168))();
  sub_1A957B8E8();

  return v2;
}

uint64_t sub_1A94F43C0()
{
  (*(*v0 + 168))();
  sub_1A957B8F8();
}

void (*sub_1A94F4424(void *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *(*v1 + 168);
  v6 = (*v1 + 168) & 0xFFFFFFFFFFFFLL | 0xFBA3000000000000;
  v3[3] = v5;
  v3[4] = v6;
  v5();
  sub_1A957B8E8();

  *v4 = v4[1];
  return sub_1A93E9B5C;
}

uint64_t sub_1A94F44E0()
{
  v1 = (*(*v0 + 168))();
  v16 = sub_1A937829C(&qword_1EB3882D0, qword_1A9596640);
  v17 = sub_1A93B744C(&qword_1EB3882D8, &qword_1EB3882D0, qword_1A9596640);
  *&v15 = v1;
  sub_1A932D070(&v15, v13);
  v2 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = v2;
  v4 = v14;
  v5 = sub_1A9396054(v13, v14);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v5);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  sub_1A94FE70C(*v8, 0x73726564616F6C24, 0xE800000000000000, isUniquelyReferenced_nonNull_native, &v12);
  sub_1A9378138(v13);
  return v12;
}

char *sub_1A94F46C0()
{
  v1 = (*(**(v0 + 32) + 184))();
  v2 = v1;
  v3 = *(v1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = sub_1A94FB16C(*(v1 + 16), 0);
  v5 = sub_1A94FEA2C(&v7, v4 + 32, v3, v2);
  sub_1A932D088();
  if (v5 != v3)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t sub_1A94F4778()
{
  v1[2] = v0;
  type metadata accessor for SSELoaderManager();
  sub_1A94FF1F4(&unk_1EB386080, v2, type metadata accessor for SSELoaderManager);
  v4 = sub_1A957C5A8();
  v1[3] = v4;
  v1[4] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A94F482C, v4, v3);
}

uint64_t sub_1A94F482C()
{
  v15 = v0;
  v1 = v0[2];
  v2 = *(v1 + 24);
  v3 = (*(**(v1 + 32) + 184))();
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = sub_1A94FB16C(*(v3 + 16), 0);
    v7 = sub_1A94FEA2C(&v14, v6 + 32, v5, v4);
    sub_1A932D088();
    if (v7 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v8 = sub_1A94F4C74(v6);
  v0[5] = v8;

  v12 = (*v2 + 264);
  v13 = (*v12 + **v12);
  v9 = (*v12)[1];
  v10 = swift_task_alloc();
  v0[6] = v10;
  *v10 = v0;
  v10[1] = sub_1A94F4A0C;

  return v13(v8);
}

uint64_t sub_1A94F4A0C()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {
    v4 = v3[3];
    v5 = v3[4];

    return MEMORY[0x1EEE6DFA0](sub_1A94F4C10, v4, v5);
  }

  else
  {
    v6 = v3[5];
    v7 = v3[2];

    v8 = *(*v7 + 136);
    v13 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    v3[8] = v10;
    *v10 = v3;
    v10[1] = sub_1A938B224;
    v11 = v3[2];

    return v13();
  }
}

uint64_t sub_1A94F4C10()
{
  v1 = v0[5];

  v2 = v0[7];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1A94F4C74(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1A93ED5A8(0, v1, 0);
    v2 = v17;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[1];
      v14 = *v4;
      v15 = v5;
      *v16 = v4[2];
      *&v16[13] = *(v4 + 45);
      sub_1A94FF0E4(&v14, &v11);
      v17 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1A93ED5A8((v6 > 1), v7 + 1, 1);
        v2 = v17;
      }

      v12 = &type metadata for SSEVoiceLoader;
      v13 = &protocol witness table for SSEVoiceLoader;
      v8 = swift_allocObject();
      *&v11 = v8;
      v9 = v15;
      *(v8 + 16) = v14;
      *(v8 + 32) = v9;
      *(v8 + 48) = *v16;
      *(v8 + 61) = *&v16[13];
      *(v2 + 16) = v7 + 1;
      sub_1A932D070(&v11, v2 + 40 * v7 + 32);
      v4 = (v4 + 56);
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1A94F4DB8(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB3883C8, &qword_1A9596DF8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v15 - v6;
  v8 = [objc_opt_self() defaultHost];
  if (v8)
  {
    v9 = v8;
    sub_1A937829C(&unk_1EB3883D0, &unk_1A9596E00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A9587160;
    aBlock = 0xD000000000000014;
    v17 = 0x80000001A95C4B00;
    sub_1A957CE88();
    *(inited + 96) = sub_1A937829C(&qword_1EB386B68, &qword_1A9591620);
    *(inited + 72) = &unk_1F1CFB708;
    sub_1A94FEEE4(inited);
    swift_setDeallocating();
    sub_1A937B960(inited + 32, &qword_1EB3883E0, &unk_1A9596E10);
    v11 = sub_1A957C018();

    (*(v3 + 16))(v7, a1, v2);
    v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v13 = swift_allocObject();
    (*(v3 + 32))(v13 + v12, v7, v2);
    v20 = sub_1A9500FA8;
    v21 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v17 = 1107296256;
    v18 = sub_1A94F58C8;
    v19 = &unk_1F1CFBBA8;
    v14 = _Block_copy(&aBlock);

    [v9 discoverPlugInsForAttributes:v11 flags:0 found:v14];

    _Block_release(v14);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A94F508C(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A957AFD8();
  v66 = *(v4 - 8);
  v5 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A937829C(&unk_1EB387B80, qword_1A9587740);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v61 - v12;
  v14 = [v1 attributes];
  if (!v14)
  {
    __break(1u);
    goto LABEL_43;
  }

  v15 = v14;
  v16 = sub_1A957C038();

  v67 = 0xD000000000000014;
  v68 = 0x80000001A95C4B00;
  sub_1A957CE88();
  if (!*(v16 + 16))
  {
    goto LABEL_28;
  }

  v17 = sub_1A93B1014(v69);
  if ((v18 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_1A937BA14(*(v16 + 56) + 32 * v17, &v70);
  sub_1A93B1058(v69);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:
    v44 = 0;
LABEL_30:
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v51 = 0;
    v49 = 0;
    v50 = 0;
    goto LABEL_31;
  }

  v19 = v67;
  v65 = v68;
  v20 = [v2 attributes];
  if (!v20)
  {
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v21 = v20;
  v22 = sub_1A957C038();

  v67 = 0x6D6F436F69647541;
  v68 = 0xEF73746E656E6F70;
  sub_1A957CE88();
  if (!*(v22 + 16) || (v23 = sub_1A93B1014(v69), (v24 & 1) == 0))
  {

LABEL_28:

    sub_1A93B1058(v69);
    goto LABEL_29;
  }

  sub_1A937BA14(*(v22 + 56) + 32 * v23, &v70);
  sub_1A93B1058(v69);

  sub_1A937829C(&qword_1EB3882E0, &unk_1A9596658);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_41:

    goto LABEL_29;
  }

  if (!*(v67 + 16))
  {

    goto LABEL_29;
  }

  v25 = *(v67 + 32);

  if (!*(v25 + 16))
  {
    goto LABEL_40;
  }

  v26 = sub_1A937A490(1701869940, 0xE400000000000000);
  if ((v27 & 1) == 0)
  {
    goto LABEL_40;
  }

  sub_1A93B1F94(*(v25 + 56) + 40 * v26, v69);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_40;
  }

  v28 = v70;
  v29 = v71;

  v30._countAndFlagsBits = v28;
  v30._object = v29;
  *&v31 = UInt32.init(axFourCharCode:)(v30);
  if ((v31 & 0x100000000) != 0 || v31 != 1635087216)
  {
LABEL_39:

LABEL_40:

    goto LABEL_41;
  }

  if (!*(v25 + 16) || (v32 = sub_1A937A490(0x74636166756E616DLL, 0xEC00000072657275), (v33 & 1) == 0))
  {

    goto LABEL_29;
  }

  sub_1A93B1F94(*(v25 + 56) + 40 * v32, v69);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_39;
  }

  v34 = v71;
  v64 = v70;

  v35._countAndFlagsBits = v64;
  v64 = v34;
  v35._object = v34;
  *&v36 = UInt32.init(axFourCharCode:)(v35);
  v63 = v36;
  if ((v36 & 0x100000000) != 0)
  {
LABEL_38:

    goto LABEL_39;
  }

  if (!*(v25 + 16) || (v37 = sub_1A937A490(0x65707974627573, 0xE700000000000000), (v38 & 1) == 0))
  {

    goto LABEL_29;
  }

  sub_1A93B1F94(*(v25 + 56) + 40 * v37, v69);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_38;
  }

  v39 = v71;
  v62 = v70;

  v40._countAndFlagsBits = v62;
  v62 = v39;
  v40._object = v39;
  *&v41 = UInt32.init(axFourCharCode:)(v40);
  v61 = v41;
  if ((v41 & 0x100000000) != 0)
  {

    goto LABEL_38;
  }

  if (v19 == 0xD00000000000001ALL && 0x80000001A95C4AE0 == v65 || (sub_1A957D3E8() & 1) != 0)
  {
    v42 = [v2 identifier];
    if (v42)
    {
      v43 = v42;

      v44 = sub_1A957C0F8();
      v46 = v45;

      v47 = 0;
      v48 = 0;
      v49 = v63;
      v50 = 0x100000000;
      v51 = (v61 << 32) | 0x61757370;
LABEL_31:
      *a1 = v44;
      *(a1 + 8) = v46;
      *(a1 + 16) = v47;
      *(a1 + 24) = v48;
      *(a1 + 32) = v51;
      *(a1 + 40) = v49;
      *(a1 + 48) = v50;
      *(a1 + 52) = BYTE4(v50);
      return;
    }

    goto LABEL_52;
  }

LABEL_43:
  v44 = [v2 containingUrl];
  if (!v44)
  {

    (*(v66 + 56))(v13, 1, 1, v4);
    sub_1A937B960(v13, &unk_1EB387B80, qword_1A9587740);
    goto LABEL_30;
  }

  sub_1A957AF98();

  (*(v66 + 56))(v13, 0, 1, v4);
  sub_1A937B960(v13, &unk_1EB387B80, qword_1A9587740);
  v52 = [v2 containingUrl];
  if (!v52)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v53 = v52;
  sub_1A957AF98();

  v54 = objc_allocWithZone(MEMORY[0x1E69635F8]);
  v55 = sub_1A94FAEF4(v8, 0);
  v56 = [v55 bundleIdentifier];

  if (!v56)
  {

    goto LABEL_39;
  }

  v47 = sub_1A957C0F8();
  v48 = v57;

  v58 = [v2 identifier];
  if (v58)
  {
    v59 = v58;

    v44 = sub_1A957C0F8();
    v46 = v60;

    v50 = 0;
    v51 = (v61 << 32) | 0x61757370;
    v49 = v63;
    goto LABEL_31;
  }

LABEL_54:
  __break(1u);
}

uint64_t sub_1A94F58C8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_1A957C8A8();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_1A94F5968()
{
  v1[33] = v0;
  v2 = sub_1A957BC88();
  v1[34] = v2;
  v3 = *(v2 - 8);
  v1[35] = v3;
  v4 = *(v3 + 64) + 15;
  v1[36] = swift_task_alloc();
  v6 = sub_1A94FF1F4(&unk_1EB386080, v5, type metadata accessor for SSELoaderManager);
  v1[37] = v6;
  v7 = *(MEMORY[0x1E69E8920] + 4);
  v8 = swift_task_alloc();
  v1[38] = v8;
  v9 = sub_1A937829C(&qword_1EB3882E8, &unk_1A9596668);
  *v8 = v1;
  v8[1] = sub_1A94F5AF4;

  return MEMORY[0x1EEE6DE38](v1 + 32, v0, v6, 0xD000000000000011, 0x80000001A95C4B20, sub_1A94F4DB8, 0, v9);
}

uint64_t sub_1A94F5AF4()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 304);
  v5 = *v1;
  v3[39] = v0;

  v6 = v3[37];
  v7 = v3[33];
  type metadata accessor for SSELoaderManager();
  v8 = sub_1A957C5A8();
  if (v2)
  {
    v10 = sub_1A94F61EC;
  }

  else
  {
    v3[40] = v8;
    v3[41] = v9;
    v10 = sub_1A94F5C58;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_1A94F5C58()
{
  v1 = *(v0 + 256);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 312);
    v3 = *(*(v0 + 264) + 32);
    *(v0 + 336) = v3;
    v4 = (*(*v3 + 184))();
    v5 = sub_1A94F6BDC(v4);
    *(v0 + 344) = v2;

    v6 = sub_1A94FF020(v5);

    v7 = sub_1A94FF020(v1);
    *(v0 + 352) = v7;

    if (*(v7 + 16) <= *(v6 + 16) >> 3)
    {
      sub_1A94FBB98(v7);
      v8 = v6;
    }

    else
    {
      v8 = sub_1A94FBCD0(v7, v6);
    }

    *(v0 + 360) = v8;
    v24 = *(v0 + 264);
    v25 = *(v8 + 32);
    *(v0 + 69) = v25;
    v26 = -1;
    v27 = -1 << v25;
    if (-(-1 << v25) < 64)
    {
      v26 = ~(-1 << -(-1 << v25));
    }

    v28 = v26 & *(v8 + 56);
    if (v28)
    {
      v29 = 0;
LABEL_19:
      *(v0 + 368) = v28;
      *(v0 + 376) = v29;
      v32 = (*(v8 + 48) + 56 * (__clz(__rbit64(v28)) | (v29 << 6)));
      v33 = v32[8];
      v34 = v32[9];
      v35 = v32[10];
      v36 = *(v24 + 24);
      *(v0 + 240) = sub_1A9394D1C();
      *(v0 + 248) = v37;
      MEMORY[0x1AC585140](95, 0xE100000000000000);
      v38 = sub_1A9394D1C();
      MEMORY[0x1AC585140](v38);

      MEMORY[0x1AC585140](95, 0xE100000000000000);
      v39 = sub_1A9394D1C();
      MEMORY[0x1AC585140](v39);

      v40 = *(v0 + 240);
      v41 = *(v0 + 248);
      *(v0 + 384) = v41;
      v51 = (*v36 + 288);
      v53 = (*v51 + **v51);
      v42 = (*v51)[1];
      v43 = swift_task_alloc();
      *(v0 + 392) = v43;
      *v43 = v0;
      v43[1] = sub_1A94F6250;

      return v53(v40, v41);
    }

    else
    {
      v30 = 0;
      v31 = ((63 - v27) >> 6) - 1;
      while (v31 != v30)
      {
        v29 = v30 + 1;
        v28 = *(v8 + 8 * v30++ + 64);
        if (v28)
        {
          goto LABEL_19;
        }
      }

      v45 = *(v0 + 344);
      v44 = *(v0 + 352);

      v46 = sub_1A94F6E58(v44);
      *(v0 + 400) = v46;

      v47 = *(v24 + 24);
      v48 = sub_1A94F4C74(v46);
      *(v0 + 408) = v48;
      v52 = (*v47 + 264);
      v54 = (*v52 + **v52);
      v49 = (*v52)[1];
      v50 = swift_task_alloc();
      *(v0 + 416) = v50;
      *v50 = v0;
      v50[1] = sub_1A94F66F8;

      return v54(v48);
    }
  }

  else
  {
    v9 = *(v0 + 256);

    if (qword_1EB3A0CC0 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 280);
    v10 = *(v0 + 288);
    v12 = *(v0 + 272);
    v13 = sub_1A937731C(v12, qword_1EB3A0CC8);
    (*(v11 + 16))(v10, v13, v12);
    v14 = sub_1A957BC68();
    v15 = sub_1A957CA78();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1A9324000, v14, v15, "Failed to perform SSE Scan", v16, 2u);
      MEMORY[0x1AC587CD0](v16, -1, -1);
    }

    v18 = *(v0 + 280);
    v17 = *(v0 + 288);
    v19 = *(v0 + 272);

    (*(v18 + 8))(v17, v19);
    sub_1A94FF14C();
    swift_allocError();
    *v20 = 4;
    swift_willThrow();
    v21 = *(v0 + 288);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_1A94F61EC()
{
  v1 = v0[39];
  v2 = v0[36];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A94F6250()
{
  v1 = *v0;
  v2 = *(*v0 + 392);
  v3 = *(*v0 + 384);
  v7 = *v0;

  v4 = *(v1 + 328);
  v5 = *(v1 + 320);

  return MEMORY[0x1EEE6DFA0](sub_1A94F6394, v5, v4);
}

void sub_1A94F6394()
{
  v1 = *(v0 + 376);
  v2 = (*(v0 + 368) - 1) & *(v0 + 368);
  if (v2)
  {
    v3 = *(v0 + 360);
LABEL_7:
    *(v0 + 368) = v2;
    *(v0 + 376) = v1;
    v5 = (*(v3 + 48) + 56 * (__clz(__rbit64(v2)) | (v1 << 6)));
    v6 = v5[8];
    v7 = v5[9];
    v8 = v5[10];
    v9 = *(*(v0 + 264) + 24);
    *(v0 + 240) = sub_1A9394D1C();
    *(v0 + 248) = v10;
    MEMORY[0x1AC585140](95, 0xE100000000000000);
    v11 = sub_1A9394D1C();
    MEMORY[0x1AC585140](v11);

    MEMORY[0x1AC585140](95, 0xE100000000000000);
    v12 = sub_1A9394D1C();
    MEMORY[0x1AC585140](v12);

    v13 = *(v0 + 240);
    v14 = *(v0 + 248);
    *(v0 + 384) = v14;
    v25 = (*v9 + 288);
    v27 = (*v25 + **v25);
    v15 = (*v25)[1];
    v16 = swift_task_alloc();
    *(v0 + 392) = v16;
    *v16 = v0;
    v16[1] = sub_1A94F6250;

    v27(v13, v14);
  }

  else
  {
    while (1)
    {
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        return;
      }

      v3 = *(v0 + 360);
      if (v4 >= (((1 << *(v0 + 69)) + 63) >> 6))
      {
        break;
      }

      v2 = *(v3 + 8 * v4 + 56);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    v18 = *(v0 + 344);
    v17 = *(v0 + 352);
    v19 = *(v0 + 264);

    v20 = sub_1A94F6E58(v17);
    *(v0 + 400) = v20;

    v21 = *(v19 + 24);
    v22 = sub_1A94F4C74(v20);
    *(v0 + 408) = v22;
    v26 = (*v21 + 264);
    v28 = (*v26 + **v26);
    v23 = (*v26)[1];
    v24 = swift_task_alloc();
    *(v0 + 416) = v24;
    *v24 = v0;
    v24[1] = sub_1A94F66F8;

    v28(v22);
  }
}

uint64_t sub_1A94F66F8()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v9 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v4 = v2[40];
    v5 = v2[41];
    v6 = sub_1A94F6B68;
  }

  else
  {
    v7 = v2[51];

    v4 = v2[40];
    v5 = v2[41];
    v6 = sub_1A94F6814;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

unint64_t sub_1A94F6814()
{
  v1 = *(v0 + 400);
  result = sub_1A94FED34(MEMORY[0x1E69E7CC0]);
  v3 = result;
  v45 = v1;
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = *(v0 + 400) + 32;
    while (1)
    {
      if (v5 >= *(v45 + 16))
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        return result;
      }

      v15 = *v6;
      v16 = *(v6 + 16);
      v17 = *(v6 + 32);
      *(v0 + 61) = *(v6 + 45);
      *(v0 + 32) = v16;
      *(v0 + 48) = v17;
      *(v0 + 16) = v15;
      v18 = *(v0 + 48);
      v19 = *(v0 + 52);
      v20 = *(v0 + 56);
      sub_1A94FF0E4(v0 + 16, v0 + 72);
      v46 = sub_1A9394D1C();
      v48 = v21;
      MEMORY[0x1AC585140](95, 0xE100000000000000);
      v22 = sub_1A9394D1C();
      MEMORY[0x1AC585140](v22);

      MEMORY[0x1AC585140](95, 0xE100000000000000);
      v23 = sub_1A9394D1C();
      MEMORY[0x1AC585140](v23);

      v24 = v46;
      sub_1A94FF0E4(v0 + 16, v0 + 128);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v3;
      result = sub_1A937A490(v24, v48);
      v27 = v3[2];
      v28 = (v26 & 1) == 0;
      v29 = __OFADD__(v27, v28);
      v30 = v27 + v28;
      if (v29)
      {
        goto LABEL_23;
      }

      v31 = v26;
      if (v3[3] < v30)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v40 = result;
      sub_1A94FB534();
      result = v40;
      if (v31)
      {
LABEL_3:
        v7 = result;

        v3 = v47;
        v8 = v47[7] + 56 * v7;
        v10 = *(v8 + 16);
        v9 = *(v8 + 32);
        v11 = *(v8 + 45);
        *(v0 + 184) = *v8;
        *(v0 + 229) = v11;
        *(v0 + 216) = v9;
        *(v0 + 200) = v10;
        v12 = *(v0 + 16);
        v13 = *(v0 + 32);
        v14 = *(v0 + 48);
        *(v8 + 45) = *(v0 + 61);
        *(v8 + 16) = v13;
        *(v8 + 32) = v14;
        *v8 = v12;
        sub_1A94FF11C(v0 + 184);
        result = sub_1A94FF11C(v0 + 16);
        goto LABEL_4;
      }

LABEL_12:
      v3 = v47;
      v47[(result >> 6) + 8] |= 1 << result;
      v33 = (v47[6] + 16 * result);
      *v33 = v24;
      v33[1] = v48;
      v34 = v47[7] + 56 * result;
      v35 = *(v0 + 61);
      v37 = *(v0 + 32);
      v36 = *(v0 + 48);
      *v34 = *(v0 + 16);
      *(v34 + 16) = v37;
      *(v34 + 32) = v36;
      *(v34 + 45) = v35;
      result = sub_1A94FF11C(v0 + 16);
      v38 = v47[2];
      v29 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v29)
      {
        goto LABEL_24;
      }

      v47[2] = v39;
LABEL_4:
      ++v5;
      v6 += 56;
      if (v4 == v5)
      {
        goto LABEL_16;
      }
    }

    sub_1A94FB204(v30, isUniquelyReferenced_nonNull_native);
    result = sub_1A937A490(v24, v48);
    if ((v31 & 1) != (v32 & 1))
    {

      return sub_1A957D438();
    }

LABEL_11:
    if (v31)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

LABEL_16:
  v41 = *(v0 + 400);
  v42 = *(v0 + 336);
  v43 = *(v0 + 288);

  (*(*v42 + 192))(v3);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_1A94F6B68()
{
  v2 = v0[50];
  v1 = v0[51];

  v3 = v0[53];
  v4 = v0[36];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A94F6BDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v34 = MEMORY[0x1E69E7CC0];
  sub_1A94FB720(0, v1, 0);
  v2 = v34;
  v4 = -1 << *(a1 + 32);
  v29 = a1 + 64;
  result = sub_1A957CE18();
  if (result < 0 || (v6 = result, result >= 1 << *(a1 + 32)))
  {
LABEL_23:
    __break(1u);
  }

  else
  {
    v28 = v1;
    v7 = *(a1 + 36);
    v8 = 1;
    while (1)
    {
      v9 = v6 >> 6;
      if ((*(v29 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        break;
      }

      v10 = *(a1 + 56) + 56 * v6;
      v12 = *(v10 + 16);
      v11 = *(v10 + 32);
      v13 = *v10;
      *&v33[13] = *(v10 + 45);
      v32 = v12;
      *v33 = v11;
      v31 = v13;
      result = sub_1A94FF0E4(&v31, v30);
      v34 = v2;
      v15 = *(v2 + 16);
      v14 = *(v2 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_1A94FB720((v14 > 1), v15 + 1, 1);
        v2 = v34;
      }

      *(v2 + 16) = v15 + 1;
      v16 = v2 + 56 * v15;
      v17 = v31;
      v18 = v32;
      v19 = *v33;
      *(v16 + 77) = *&v33[13];
      *(v16 + 48) = v18;
      *(v16 + 64) = v19;
      *(v16 + 32) = v17;
      v20 = 1 << *(a1 + 32);
      if (v6 >= v20)
      {
        goto LABEL_25;
      }

      v21 = *(v29 + 8 * v9);
      if ((v21 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      if (v7 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v22 = v21 & (-2 << (v6 & 0x3F));
      if (v22)
      {
        v6 = __clz(__rbit64(v22)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v9 << 6;
        v24 = v9 + 1;
        v25 = (a1 + 72 + 8 * v9);
        while (v24 < (v20 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_1A932D0A4(v6, v7, 0);
            v6 = __clz(__rbit64(v26)) + v23;
            goto LABEL_18;
          }
        }

        result = sub_1A932D0A4(v6, v7, 0);
        v6 = v20;
      }

LABEL_18:
      if (v8 == v28)
      {
        return v2;
      }

      if ((v6 & 0x8000000000000000) == 0)
      {
        v7 = *(a1 + 36);
        ++v8;
        if (v6 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1A94F6E58(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v36 = MEMORY[0x1E69E7CC0];
  sub_1A94FB6E8(0, v1, 0);
  v2 = v36;
  v4 = -1 << *(a1 + 32);
  v29 = a1 + 56;
  result = sub_1A957CE18();
  if (result < 0 || (v6 = result, result >= 1 << *(a1 + 32)))
  {
LABEL_23:
    __break(1u);
  }

  else
  {
    v28 = v1;
    v7 = *(a1 + 36);
    v8 = 1;
    while (1)
    {
      v9 = v6 >> 6;
      if ((*(v29 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        break;
      }

      v10 = *(a1 + 48) + 56 * v6;
      v12 = *(v10 + 16);
      v11 = *(v10 + 32);
      v13 = *v10;
      *&v35[13] = *(v10 + 45);
      v34 = v12;
      *v35 = v11;
      v33 = v13;
      result = sub_1A94FF810(&v33, &v30);
      v36 = v2;
      v15 = *(v2 + 16);
      v14 = *(v2 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_1A94FB6E8((v14 > 1), v15 + 1, 1);
        v2 = v36;
      }

      v31 = v34;
      v32[0] = *v35;
      *(v32 + 13) = *&v35[13];
      v16 = v33;
      v30 = v33;
      *(v2 + 16) = v15 + 1;
      v17 = v2 + 56 * v15;
      v18 = v31;
      v19 = v32[0];
      *(v17 + 77) = *(v32 + 13);
      *(v17 + 48) = v18;
      *(v17 + 64) = v19;
      *(v17 + 32) = v16;
      v20 = 1 << *(a1 + 32);
      if (v6 >= v20)
      {
        goto LABEL_25;
      }

      v21 = *(v29 + 8 * v9);
      if ((v21 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      if (v7 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v22 = v21 & (-2 << (v6 & 0x3F));
      if (v22)
      {
        v6 = __clz(__rbit64(v22)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v9 << 6;
        v24 = v9 + 1;
        v25 = (a1 + 64 + 8 * v9);
        while (v24 < (v20 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_1A932D0A4(v6, v7, 0);
            v6 = __clz(__rbit64(v26)) + v23;
            goto LABEL_18;
          }
        }

        result = sub_1A932D0A4(v6, v7, 0);
        v6 = v20;
      }

LABEL_18:
      if (v8 == v28)
      {
        return v2;
      }

      if ((v6 & 0x8000000000000000) == 0)
      {
        v7 = *(a1 + 36);
        ++v8;
        if (v6 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1A94F70E8()
{
  v3 = sub_1A9394D1C();
  MEMORY[0x1AC585140](95, 0xE100000000000000);
  v0 = sub_1A9394D1C();
  MEMORY[0x1AC585140](v0);

  MEMORY[0x1AC585140](95, 0xE100000000000000);
  v1 = sub_1A9394D1C();
  MEMORY[0x1AC585140](v1);

  return v3;
}

uint64_t SSEVoiceLoader.identifier.getter()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[10];
  v7 = sub_1A9394D1C();
  MEMORY[0x1AC585140](95, 0xE100000000000000);
  v4 = sub_1A9394D1C();
  MEMORY[0x1AC585140](v4);

  MEMORY[0x1AC585140](95, 0xE100000000000000);
  v5 = sub_1A9394D1C();
  MEMORY[0x1AC585140](v5);

  return v7;
}

uint64_t sub_1A94F7218()
{
  v1[2] = v0;
  type metadata accessor for SSELoaderManager();
  sub_1A94FF1F4(&unk_1EB386080, v2, type metadata accessor for SSELoaderManager);
  v4 = sub_1A957C5A8();
  v1[3] = v4;
  v1[4] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A94F72CC, v4, v3);
}

uint64_t sub_1A94F72CC()
{
  v14 = v0;
  v1 = v0[2];
  v2 = *(v1 + 24);
  v3 = (*(**(v1 + 32) + 184))();
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = sub_1A9457228(*(v3 + 16), 0);
    v7 = sub_1A94FEBDC(&v13, v6 + 4, v5, v4);
    sub_1A932D088();
    if (v7 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v0[5] = v6;
  v8 = *(*v2 + 272);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[6] = v10;
  *v10 = v0;
  v10[1] = sub_1A94F748C;

  return v12(v6);
}

uint64_t sub_1A94F748C()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {
    v4 = v3[3];
    v5 = v3[4];

    return MEMORY[0x1EEE6DFA0](sub_1A938C248, v4, v5);
  }

  else
  {
    v6 = v3[5];

    v7 = v3[1];

    return v7();
  }
}

void *SSELoaderManager.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t SSELoaderManager.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t sub_1A94F763C()
{
  v0 = type metadata accessor for SSELoaderManager();
  v2 = sub_1A94FF1F4(&unk_1EB386070, v1, type metadata accessor for SSELoaderManager);

  return TTSActor.unownedExecutor.getter(v0, v2);
}

unint64_t sub_1A94F76AC()
{
  v1 = 0x696669746E656469;
  v2 = 0x6E656E6F706D6F63;
  if (*v0 != 2)
  {
    v2 = 0x7261507473726966;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001ALL;
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

uint64_t sub_1A94F7734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A94FF348(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A94F775C(uint64_t a1)
{
  v2 = sub_1A94FF1A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94F7798(uint64_t a1)
{
  v2 = sub_1A94FF1A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94F77D4(void *a1)
{
  v3 = v1;
  v5 = sub_1A937829C(&qword_1EB3882F8, &unk_1A9596678);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v18[-v9];
  v11 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A94FF1A0();
  sub_1A957D598();
  v12 = *v3;
  v13 = v3[1];
  LOBYTE(v19) = 0;
  sub_1A957D2E8();
  if (!v2)
  {
    v15 = v3[2];
    v16 = v3[3];
    LOBYTE(v19) = 1;
    sub_1A957D298();
    v19 = *(v3 + 2);
    v20 = *(v3 + 12);
    v18[15] = 2;
    type metadata accessor for AudioComponentDescription();
    sub_1A94FF1F4(&qword_1EB385ED0, 255, type metadata accessor for AudioComponentDescription);
    sub_1A957D338();
    v17 = *(v3 + 52);
    LOBYTE(v19) = 3;
    sub_1A957D2F8();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_1A94F7A18()
{
  sub_1A957D4F8();
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1A957C228();
  sub_1A957D518();
  if (v4)
  {
    sub_1A957C228();
  }

  v7 = *(v0 + 2);
  v8 = *(v0 + 12);
  v5 = *(v0 + 52);
  type metadata accessor for AudioComponentDescription();
  sub_1A94FF1F4(&qword_1EB385EC8, 255, type metadata accessor for AudioComponentDescription);
  sub_1A957C068();
  sub_1A957D518();
  return sub_1A957D548();
}

double sub_1A94F7B10@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A94FF4C8(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = v7[0];
    *(a2 + 32) = *v7;
    *(a2 + 45) = *(&v7[1] + 5);
  }

  return result;
}

uint64_t sub_1A94F7B7C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v8 = *(v0 + 2);
  v5 = *(v0 + 12);
  v6 = *(v0 + 52);
  sub_1A957C228();
  sub_1A957D518();
  if (v4)
  {
    sub_1A957C228();
  }

  type metadata accessor for AudioComponentDescription();
  sub_1A94FF1F4(&qword_1EB385EC8, 255, type metadata accessor for AudioComponentDescription);
  sub_1A957C068();
  return sub_1A957D518();
}

uint64_t sub_1A94F7C70()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v8 = *(v0 + 2);
  v5 = *(v0 + 12);
  v6 = *(v0 + 52);
  sub_1A957D4F8();
  sub_1A957C228();
  sub_1A957D518();
  if (v4)
  {
    sub_1A957C228();
  }

  type metadata accessor for AudioComponentDescription();
  sub_1A94FF1F4(&qword_1EB385EC8, 255, type metadata accessor for AudioComponentDescription);
  sub_1A957C068();
  sub_1A957D518();
  return sub_1A957D548();
}

uint64_t sub_1A94F7D80(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v20 = *(a1 + 52);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v12 = *(a2 + 52);
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    v19 = *(a2 + 40);
    v13 = *(a1 + 48);
    v14 = sub_1A957D3E8();
    LODWORD(v9) = v19;
    v6 = v13;
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  if (v4)
  {
    if (v7)
    {
      if (v2 == v8 && v4 == v7)
      {
        goto LABEL_9;
      }

      v15 = v9;
      v16 = v6;
      v17 = sub_1A957D3E8();
      LODWORD(v9) = v15;
      v6 = v16;
      if (v17)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  if (v7)
  {
    return 0;
  }

LABEL_9:
  if (static AudioComponentDescription.== infix(_:_:)(v3, v5, v6, v10, v9))
  {
    return v20 ^ v12 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t SSEVoiceLoader.reloadTriggers.getter()
{
  if (v0[3])
  {
    v1 = v0[2];
  }

  else
  {
    v4 = v0;
    v3 = *v0;
    v2 = v4[1];
  }

  v5 = sub_1A957C0C8();

  v6 = [v5 hash];

  sub_1A937829C(&unk_1EB388300, &unk_1A9589B30);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A9587160;
  v8 = swift_allocObject();
  *(v8 + 16) = 0xD000000000000029;
  *(v8 + 24) = 0x80000001A95C4B40;
  *(v8 + 32) = v6;
  *(v8 + 40) = 0;
  *(v7 + 32) = v8;
  return v7;
}

uint64_t SSEVoiceLoader.voices()()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 61) = *(v0 + 45);
  return MEMORY[0x1EEE6DFA0](sub_1A94F7FEC, 0, 0);
}

uint64_t sub_1A94F7FEC()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *(v1 + 16) = v0 + 16;
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  sub_1A937829C(&qword_1EB386958, &qword_1A9587790);
  *v2 = v0;
  v2[1] = sub_1A94F80DC;

  return withRetry<A>(startDelay:multiplier:maxDelay:maxAttempts:_:)(v0 + 72, 10, &unk_1A95966A0, v1, 1.0, 2.0, 15.0);
}

uint64_t sub_1A94F80DC()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1A93F6FAC;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1A94F81F8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A94F8214(uint64_t a1, uint64_t a2)
{
  *(v2 + 72) = a1;
  v3 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a2 + 32);
  *(v2 + 61) = *(a2 + 45);
  v4 = swift_task_alloc();
  *(v2 + 80) = v4;
  *v4 = v2;
  v4[1] = sub_1A94F82C0;

  return sub_1A94F8424();
}

uint64_t sub_1A94F82C0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = sub_1A94F840C;
  }

  else
  {
    *(v4 + 96) = a1;
    v7 = sub_1A94F83E8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1A94F8424()
{
  v2 = sub_1A957CAD8();
  *(v1 + 32) = v2;
  v3 = *(v2 - 8);
  *(v1 + 40) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 48) = swift_task_alloc();
  v5 = sub_1A957CBD8();
  *(v1 + 56) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v1 + 64) = swift_task_alloc();
  v7 = *(*(sub_1A957BF48() - 8) + 64) + 15;
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 80) = *v0;
  v8 = *(v0 + 24);
  *(v1 + 96) = *(v0 + 16);
  *(v1 + 104) = v8;
  *(v1 + 152) = *(v0 + 32);
  *(v1 + 168) = *(v0 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1A94F8564, 0, 0);
}

uint64_t sub_1A94F8564()
{
  v1 = *(v0 + 64);
  v18 = *(v0 + 72);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);
  v19 = *(v0 + 32);
  v20 = *(v0 + 104);
  sub_1A9387478(0, &qword_1ED96FDA8, 0x1E69E9620);
  sub_1A957BF28();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  sub_1A94FF1F4(&unk_1ED96FE80, 255, MEMORY[0x1E69E8120]);
  sub_1A937829C(&qword_1EB388348, &qword_1A9596DA8);
  sub_1A93B744C(&qword_1ED96FDB0, &qword_1EB388348, &qword_1A9596DA8);
  sub_1A957CE08();
  (*(v4 + 104))(v3, *MEMORY[0x1E69E8098], v19);
  v5 = sub_1A957CBE8();
  *(v0 + 112) = v5;
  if (v20)
  {
    v6 = *(v0 + 104);
    v7 = (v0 + 96);
    v8 = *(v0 + 88);
  }

  else
  {
    v7 = (v0 + 80);
    v8 = *(v0 + 88);

    v6 = v8;
  }

  v9 = *v7;
  *(v0 + 120) = v6;
  v10 = *(v0 + 168);
  v11 = *(v0 + 80);
  v12 = swift_task_alloc();
  *(v0 + 128) = v12;
  v13 = *(v0 + 152);
  *(v12 + 16) = v5;
  *(v12 + 24) = v13;
  *(v12 + 40) = v10;
  *(v12 + 48) = v11;
  *(v12 + 56) = v8;
  *(v12 + 64) = v9;
  *(v12 + 72) = v6;
  v14 = *(MEMORY[0x1E69E8920] + 4);
  v15 = swift_task_alloc();
  *(v0 + 136) = v15;
  v16 = sub_1A937829C(&qword_1EB386958, &qword_1A9587790);
  *v15 = v0;
  v15[1] = sub_1A94F8804;

  return MEMORY[0x1EEE6DE38](v0 + 24, 0, 0, 0x28736563696F765FLL, 0xE900000000000029, sub_1A950038C, v12, v16);
}

uint64_t sub_1A94F8804()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v8 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_1A94F89BC;
  }

  else
  {
    v5 = *(v2 + 120);
    v6 = *(v2 + 128);

    v4 = sub_1A94F8928;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A94F8928()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);

  v4 = *(v0 + 24);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1A94F89BC()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 48);

  v6 = *(v0 + 8);
  v7 = *(v0 + 144);

  return v6();
}

uint64_t sub_1A94F8A64(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v47 = a7;
  v48 = a8;
  v44 = a5;
  v9 = a4;
  v10 = a3;
  v45 = a9;
  v46 = a6;
  v41 = HIDWORD(a3);
  v42 = HIDWORD(a4);
  v43 = a2;
  v51 = sub_1A957BF18();
  v53 = *(v51 - 8);
  v12 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v51, v13);
  v49 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1A957BF48();
  v50 = *(v52 - 8);
  v15 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v52, v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A937829C(&qword_1EB386E70, &unk_1A9589D10);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v40 - v23;
  (*(v20 + 16))(&v40 - v23, a1, v19);
  v25 = (*(v20 + 80) + 48) & ~*(v20 + 80);
  v26 = (v21 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v30 = v41;
  v29 = v42;
  *(v28 + 16) = v10;
  *(v28 + 20) = v30;
  *(v28 + 24) = v9;
  *(v28 + 28) = v29;
  *(v28 + 32) = v44;
  v31 = v43;
  *(v28 + 40) = v43;
  (*(v20 + 32))(v28 + v25, v24, v19);
  v32 = (v28 + v26);
  v33 = v47;
  *v32 = v46;
  v32[1] = v33;
  v34 = (v28 + v27);
  v35 = v45;
  *v34 = v48;
  v34[1] = v35;
  aBlock[4] = sub_1A95003C4;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A93C80E8;
  aBlock[3] = &unk_1F1CED8B0;
  v36 = _Block_copy(aBlock);
  v31;

  sub_1A957BF28();
  v54 = MEMORY[0x1E69E7CC0];
  sub_1A94FF1F4(qword_1ED96FED0, 255, MEMORY[0x1E69E7F60]);
  sub_1A937829C(&qword_1EB386D78, &qword_1A95898D0);
  sub_1A93B744C(&qword_1ED96FEB0, &qword_1EB386D78, &qword_1A95898D0);
  v37 = v49;
  v38 = v51;
  sub_1A957CE08();
  MEMORY[0x1AC5859B0](0, v18, v37, v36);
  _Block_release(v36);
  (*(v53 + 8))(v37, v38);
  (*(v50 + 8))(v18, v52);
}

void sub_1A94F8E94(unint64_t a1, unint64_t a2, unsigned int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v36 = a7;
  v37 = a8;
  v38 = a3;
  v11 = a1;
  v31 = a2;
  v32 = a9;
  v34 = HIDWORD(a1);
  v35 = a6;
  v33 = HIDWORD(a2);
  v12 = sub_1A937829C(&qword_1EB386E70, &unk_1A9589D10);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v30 - v16;
  v39 = objc_opt_self();
  (*(v13 + 16))(v17, a5, v12);
  v18 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  (*(v13 + 32))(v21 + v18, v17, v12);
  v22 = (v21 + v19);
  v23 = v36;
  *v22 = v35;
  v22[1] = v23;
  v24 = (v21 + v20);
  LODWORD(v12) = v31;
  v25 = v32;
  *v24 = v37;
  v24[1] = v25;
  v26 = (v21 + ((v20 + 19) & 0xFFFFFFFFFFFFFFF8));
  v27 = v33;
  LODWORD(v20) = v34;
  *v26 = v11;
  v26[1] = v20;
  v26[2] = v12;
  v26[3] = v27;
  LODWORD(v18) = v38;
  v26[4] = v38;
  v44 = sub_1A9500494;
  v45 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1A94F9F20;
  v43 = &unk_1F1CFBB08;
  v28 = _Block_copy(&aBlock);
  v29 = a4;

  aBlock = __PAIR64__(v20, v11);
  v41 = __PAIR64__(v27, v12);
  LODWORD(v42) = v18;
  [v39 instantiateWithComponentDescription:&aBlock options:1 completionHandler:v28];
  _Block_release(v28);
}

uint64_t sub_1A94F9100(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, int a11)
{
  v53 = a7;
  v54 = a8;
  v51 = a6;
  v47 = a5;
  v61 = a3;
  v45 = a2;
  v55 = a11;
  v50 = a10;
  v46 = a9;
  v49 = HIDWORD(a9);
  v52 = HIDWORD(a10);
  v58 = sub_1A957BF18();
  v60 = *(v58 - 8);
  v13 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v58, v14);
  v56 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1A957BF48();
  v57 = *(v59 - 8);
  v16 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v59, v17);
  v48 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A937829C(&qword_1EB386E70, &unk_1A9589D10);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v44 - v23;
  (*(v20 + 16))(&v44 - v23, a4, v19);
  v25 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v26 = (v21 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v29 = v45;
  *(v28 + 16) = a1;
  *(v28 + 24) = v29;
  (*(v20 + 32))(v28 + v25, v24, v19);
  v30 = (v28 + v26);
  v31 = v51;
  *v30 = v47;
  v30[1] = v31;
  v32 = (v28 + v27);
  v33 = v54;
  *v32 = v53;
  v32[1] = v33;
  v34 = (v28 + ((v27 + 19) & 0xFFFFFFFFFFFFFFF8));
  v36 = v49;
  v35 = v50;
  *v34 = v46;
  v34[1] = v36;
  v34[2] = v35;
  v34[3] = v52;
  v34[4] = v55;
  aBlock[4] = sub_1A950057C;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A93C80E8;
  aBlock[3] = &unk_1F1CFBB58;
  v37 = _Block_copy(aBlock);
  v38 = a1;
  v39 = v29;

  v40 = v48;
  sub_1A957BF28();
  v62 = MEMORY[0x1E69E7CC0];
  sub_1A94FF1F4(qword_1ED96FED0, 255, MEMORY[0x1E69E7F60]);
  sub_1A937829C(&qword_1EB386D78, &qword_1A95898D0);
  sub_1A93B744C(&qword_1ED96FEB0, &qword_1EB386D78, &qword_1A95898D0);
  v41 = v56;
  v42 = v58;
  sub_1A957CE08();
  MEMORY[0x1AC5859B0](0, v40, v41, v37);
  _Block_release(v37);
  (*(v60 + 8))(v41, v42);
  (*(v57 + 8))(v40, v59);
}

void *sub_1A94F9580@<X0>(void **a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, int a11)
{
  v106 = a8;
  v107 = a9;
  v97 = a6;
  v98 = a7;
  v96 = a5;
  v109 = sub_1A957B308();
  v114 = *(v109 - 8);
  v15 = *(v114 + 64);
  v17 = MEMORY[0x1EEE9AC00](v109, v16);
  v100 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v113 = &v96 - v21;
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v96 - v23;
  v25 = *a1;
  v101 = a3;
  v102 = a4;
  if (a2)
  {
    v26 = [v25 identifier];
    v27 = sub_1A957C0F8();
    v104 = v28;
    v105 = v27;

    v103 = [v25 gender];
    sub_1A937829C(&unk_1EB388350, &unk_1A9589F30);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1A95873F0;
    v30 = sub_1A9493C9C();
  }

  else
  {
    v128[0] = a3;
    v128[1] = a4;

    MEMORY[0x1AC585140](46, 0xE100000000000000);
    v31 = [v25 identifier];
    v32 = sub_1A957C0F8();
    v34 = v33;

    MEMORY[0x1AC585140](v32, v34);

    v104 = v128[1];
    v105 = v128[0];
    v103 = [v25 gender];
    sub_1A937829C(&unk_1EB388350, &unk_1A9589F30);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1A95873F0;
    v30 = sub_1A9493C24();
  }

  *(v29 + 32) = *v30;
  *(v29 + 40) = *sub_1A9493C84();
  v123[0] = v29;
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B744C(&qword_1ED96FEB8, &unk_1EB388360, qword_1A958B690);
  sub_1A957CE08();
  v129[0] = v128[0];
  v35 = [v25 primaryLanguages];
  v36 = sub_1A957C4C8();

  v37 = *(v36 + 16);
  v38 = MEMORY[0x1E69E7CC0];
  v108 = v25;
  if (v37)
  {
    v128[0] = MEMORY[0x1E69E7CC0];
    sub_1A93ABB88(0, v37, 0);
    v39 = v128[0];
    v111 = v114 + 32;
    v112 = (v114 + 8);
    v110 = v36;
    v40 = (v36 + 40);
    v41 = v24;
    v42 = v109;
    do
    {
      v43 = *(v40 - 1);
      v44 = *v40;
      swift_bridgeObjectRetain_n();
      v45 = v113;
      sub_1A957B1B8();
      Locale.withTTSLanguageDisambiguation(overrides:)(0, v41);

      (*v112)(v45, v42);
      v128[0] = v39;
      v47 = *(v39 + 16);
      v46 = *(v39 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_1A93ABB88(v46 > 1, v47 + 1, 1);
        v42 = v109;
        v39 = v128[0];
      }

      *(v39 + 16) = v47 + 1;
      (*(v114 + 32))(v39 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v47, v41, v42);
      v40 += 2;
      --v37;
    }

    while (v37);

    v25 = v108;
    v38 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v39 = MEMORY[0x1E69E7CC0];
  }

  sub_1A94855D8(v39);
  v110 = v49;
  v111 = v48;
  v50 = [v25 supportedLanguages];
  v51 = sub_1A957C4C8();

  v52 = *(v51 + 16);
  v53 = v100;
  if (v52)
  {
    v128[0] = v38;
    sub_1A93ABB88(0, v52, 0);
    v54 = v128[0];
    v55 = (v114 + 8);
    v112 = (v114 + 32);
    v99 = v51;
    v56 = (v51 + 40);
    v57 = v109;
    do
    {
      v58 = *(v56 - 1);
      v59 = *v56;
      swift_bridgeObjectRetain_n();
      v60 = v113;
      sub_1A957B1B8();
      Locale.withTTSLanguageDisambiguation(overrides:)(0, v53);

      (*v55)(v60, v57);
      v128[0] = v54;
      v61 = v53;
      v63 = *(v54 + 16);
      v62 = *(v54 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_1A93ABB88(v62 > 1, v63 + 1, 1);
        v57 = v109;
        v54 = v128[0];
      }

      *(v54 + 16) = v63 + 1;
      (*(v114 + 32))(v54 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v63, v61, v57);
      v56 += 2;
      --v52;
      v53 = v61;
    }

    while (v52);

    v25 = v108;
  }

  else
  {

    v54 = MEMORY[0x1E69E7CC0];
  }

  sub_1A94855D8(v54);
  v65 = v64;
  v67 = v66;

  v68 = sub_1A94FDE00(v111, v110, v65, v67);
  v70 = v69;
  v71 = [v25 isPersonalVoice];
  v113 = v67;
  v114 = v65;
  v112 = v68;
  v109 = v70;
  LODWORD(v100) = a11;
  v99 = a10;
  if (v71)
  {
    v72 = sub_1A949016C();
    sub_1A93B0A74(v128, *v72);
    v102 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 2;
    v78 = 3;
  }

  else if (v101 == 0xD00000000000002BLL && 0x80000001A95C4C30 == v102 || (sub_1A957D3E8() & 1) != 0)
  {
    v102 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 2;
    v78 = 4;
  }

  else
  {
    v79 = [v25 identifier];
    v80 = sub_1A957C0F8();
    v82 = v81;

    v83 = [v96 manufacturerName];
    v84 = sub_1A957C0F8();
    v86 = v85;

    v87 = v98;

    CoreSynthesizer.Voice.ThirdPartyVoiceDetails.init(rawIdentifier:manufacturerName:manufacturerBundleIdentifier:)(v80, v82, v84, v86, v97, v87, v128);
    v78 = v128[0];
    v102 = v128[1];
    v73 = v128[2];
    v74 = v128[3];
    v77 = 1;
    v75 = v128[4];
    v76 = v128[5];
  }

  if (v103 == 2)
  {
    v88 = 1;
  }

  else
  {
    v88 = 2;
  }

  if (v103 == 1)
  {
    v89 = 0;
  }

  else
  {
    v89 = v88;
  }

  v90 = [v25 name];
  v108 = sub_1A957C0F8();
  v103 = v91;

  v126 = 0;
  v125 = v89;
  v128[0] = v78;
  v128[1] = v102;
  v128[2] = v73;
  v128[3] = v74;
  v128[4] = v75;
  v128[5] = v76;
  LOBYTE(v128[6]) = v77;
  v92 = sub_1A937829C(&unk_1EB388370, &unk_1A9596DB0);
  v123[3] = v92;
  v124 = sub_1A93B744C(&qword_1EB3863E8, &unk_1EB388370, &unk_1A9596DB0);
  v123[0] = v111;
  v123[1] = v110;
  v122[3] = v92;
  v122[4] = v124;
  v122[0] = v112;
  v122[1] = v109;
  memset(v121, 0, 40);

  v93 = sub_1A93DA58C();
  sub_1A948F7A4(v119);
  v117[0] = v119[0];
  v117[1] = v119[1];
  v118 = v120;
  sub_1A9327184(&v116);
  v115 = 1;
  CoreSynthesizer.Voice.init(id:alternateIdentifiers:name:quality:gender:traits:type:primaryLocales:secondaryLocales:componentDescription:downloadSizeBytes:diskSizeBytes:assetId:state:newerAssetId:supersedingVoiceIdentifier:)(v105, v104, v93, v108, v103, &v126, &v125, v129, v127, v128, v123, v122, v106, v99, v100, v95, 0, 1, 0, 1, v117, &v116, v121, 0, 0);

  memcpy(v128, v127, sizeof(v128));
  nullsub_23(v128);
  return memcpy(v107, v128, 0x118uLL);
}

void sub_1A94F9F20(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1A94F9FCC()
{
  v1 = v0[37];
  sub_1A93847E0((v0 + 2));
  memcpy(v1, v0 + 2, 0x118uLL);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1A94FA058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64726F636572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A957D3E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A94FA0DC(uint64_t a1)
{
  v2 = sub_1A94FF8E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94FA118(uint64_t a1)
{
  v2 = sub_1A94FF8E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SSEVoiceLoader.encode(to:)(void *a1)
{
  v3 = sub_1A937829C(&unk_1EB388310, &qword_1A95966B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v12 - v7;
  v9 = v1[1];
  v17 = *v1;
  v18 = v9;
  v19[0] = v1[2];
  *(v19 + 13) = *(v1 + 45);
  v10 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A94FF810(&v17, &v14);
  sub_1A94FF8E8();
  sub_1A957D598();
  v14 = v17;
  v15 = v18;
  v16[0] = v19[0];
  *(v16 + 13) = *(v19 + 13);
  sub_1A94FF93C();
  sub_1A957D338();
  v12[0] = v14;
  v12[1] = v15;
  v13[0] = v16[0];
  *(v13 + 13) = *(v16 + 13);
  sub_1A94FF990(v12);
  return (*(v4 + 8))(v8, v3);
}

uint64_t SSEVoiceLoader.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v8 = *(v0 + 2);
  v5 = *(v0 + 12);
  v6 = *(v0 + 52);
  sub_1A957C228();
  sub_1A957D518();
  if (v4)
  {
    sub_1A957C228();
  }

  type metadata accessor for AudioComponentDescription();
  sub_1A94FF1F4(&qword_1EB385EC8, 255, type metadata accessor for AudioComponentDescription);
  sub_1A957C068();
  return sub_1A957D518();
}

uint64_t SSEVoiceLoader.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v8 = *(v0 + 2);
  v5 = *(v0 + 12);
  v6 = *(v0 + 52);
  sub_1A957D4F8();
  sub_1A957C228();
  sub_1A957D518();
  if (v4)
  {
    sub_1A957C228();
  }

  type metadata accessor for AudioComponentDescription();
  sub_1A94FF1F4(&qword_1EB385EC8, 255, type metadata accessor for AudioComponentDescription);
  sub_1A957C068();
  sub_1A957D518();
  return sub_1A957D548();
}

uint64_t SSEVoiceLoader.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A937829C(&unk_1EB388320, &qword_1A95966C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14[-v9];
  v11 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A94FF8E8();
  sub_1A957D588();
  if (!v2)
  {
    sub_1A94FF9C0();
    sub_1A957D238();
    (*(v6 + 8))(v10, v5);
    v12 = v15;
    *a2 = *&v14[8];
    *(a2 + 16) = v12;
    *(a2 + 32) = *v16;
    *(a2 + 45) = *&v16[13];
  }

  return sub_1A9378138(a1);
}

uint64_t sub_1A94FA698()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[10];
  v7 = sub_1A9394D1C();
  MEMORY[0x1AC585140](95, 0xE100000000000000);
  v4 = sub_1A9394D1C();
  MEMORY[0x1AC585140](v4);

  MEMORY[0x1AC585140](95, 0xE100000000000000);
  v5 = sub_1A9394D1C();
  MEMORY[0x1AC585140](v5);

  return v7;
}

uint64_t sub_1A94FA73C()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 61) = *(v0 + 45);
  return MEMORY[0x1EEE6DFA0](sub_1A94FA770, 0, 0);
}

uint64_t sub_1A94FA770()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *(v1 + 16) = v0 + 16;
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  sub_1A937829C(&qword_1EB386958, &qword_1A9587790);
  *v2 = v0;
  v2[1] = sub_1A94FA860;

  return withRetry<A>(startDelay:multiplier:maxDelay:maxAttempts:_:)(v0 + 72, 10, &unk_1A9596D98, v1, 1.0, 2.0, 15.0);
}

uint64_t sub_1A94FA860()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1A95013D4;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1A95013DC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A94FA99C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A93836DC;

  return VoiceLoader.record(forVoice:)();
}

uint64_t sub_1A94FAA60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A93836DC;

  return VoiceLoader.download(voice:)();
}

uint64_t sub_1A94FAB10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A9382328;

  return VoiceLoader.cancelDownload(voice:)();
}

uint64_t sub_1A94FABC0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A93836DC;

  return VoiceLoader.purge(voice:)();
}

uint64_t sub_1A94FAC70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A93836DC;

  return VoiceLoader.downloadProgress(voice:)();
}

uint64_t sub_1A94FAD34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A93836DC;

  return VoiceLoader.url(forVoice:)();
}

uint64_t sub_1A94FAE28()
{
  sub_1A957D4F8();
  SSEVoiceLoader.hash(into:)();
  return sub_1A957D548();
}

uint64_t sub_1A94FAE6C()
{
  sub_1A957D4F8();
  SSEVoiceLoader.hash(into:)();
  return sub_1A957D548();
}

id sub_1A94FAEF4(uint64_t a1, char a2)
{
  v3 = v2;
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1A957AF58();
  v16[0] = 0;
  v7 = [v3 initWithURL:v6 allowPlaceholder:a2 & 1 error:v16];

  v8 = v16[0];
  if (v7)
  {
    v9 = sub_1A957AFD8();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v16[0];
    sub_1A957AEF8();

    swift_willThrow();
    v13 = sub_1A957AFD8();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

char *sub_1A94FB048(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB3883C0, &qword_1A9596DF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A94FB16C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A937829C(&unk_1EB3883B0, &qword_1A9596DE8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

uint64_t sub_1A94FB204(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A937829C(&qword_1EB3883A0, &qword_1A9596DD8);
  v41 = a2;
  result = sub_1A957D118();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 56 * v22;
      if (v41)
      {
        v45 = *v26;
        v46 = *(v26 + 16);
        v47[0] = *(v26 + 32);
        v27 = *(v26 + 45);
      }

      else
      {
        v29 = *(v26 + 16);
        v28 = *(v26 + 32);
        v30 = *v26;
        *&v44[13] = *(v26 + 45);
        v43 = v29;
        *v44 = v28;
        v42 = v30;

        sub_1A94FF0E4(&v42, &v45);
        v45 = v42;
        v46 = v43;
        v47[0] = *v44;
        v27 = *&v44[13];
      }

      *(v47 + 13) = v27;
      v31 = *(v8 + 40);
      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
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
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 56 * v16;
      *v18 = v45;
      *(v18 + 16) = v46;
      *(v18 + 32) = v47[0];
      *(v18 + 45) = *(v47 + 13);
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

void *sub_1A94FB534()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB3883A0, &qword_1A9596DD8);
  v2 = *v0;
  v3 = sub_1A957D108();
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
        v17 *= 56;
        v24 = *(v19 + v17 + 16);
        v23 = *(v19 + v17 + 32);
        v25 = *(v19 + v17);
        *&v34[13] = *(v19 + v17 + 45);
        v33 = v24;
        *v34 = v23;
        v32 = v25;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = *(v4 + 56) + v17;
        v28 = v32;
        v29 = v33;
        v30 = *v34;
        *(v27 + 45) = *&v34[13];
        *(v27 + 16) = v29;
        *(v27 + 32) = v30;
        *v27 = v28;

        result = sub_1A94FF0E4(&v32, v31);
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

char *sub_1A94FB6E8(char *a1, int64_t a2, char a3)
{
  result = sub_1A94FB758(a1, a2, a3, *v3, &unk_1EB3883B0, &qword_1A9596DE8);
  *v3 = result;
  return result;
}

char *sub_1A94FB720(char *a1, int64_t a2, char a3)
{
  result = sub_1A94FB758(a1, a2, a3, *v3, &qword_1EB3883C0, &qword_1A9596DF0);
  *v3 = result;
  return result;
}

char *sub_1A94FB758(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1A937829C(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 56);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[56 * v10])
    {
      memmove(v14, v15, 56 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t sub_1A94FB87C(uint64_t a1, uint64_t a2)
{
  v48 = *v2;
  v4 = *(*v2 + 40);
  sub_1A957D4F8();
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v50 = *(a2 + 8);
  v51 = *a2;
  sub_1A957C228();
  v49 = v5;
  sub_1A957D518();
  if (v5)
  {
    sub_1A957C228();
  }

  v7 = *(a2 + 52);
  v9 = *(a2 + 32);
  v8 = *(a2 + 36);
  v11 = *(a2 + 40);
  v10 = *(a2 + 44);
  v41 = a2;
  v12 = *(a2 + 48);
  LODWORD(v52) = *(a2 + 32);
  HIDWORD(v52) = v8;
  v53 = v11;
  v54 = v10;
  v55 = v12;
  type metadata accessor for AudioComponentDescription();
  sub_1A94FF1F4(&qword_1EB385EC8, 255, type metadata accessor for AudioComponentDescription);
  sub_1A957C068();
  v43 = v7;
  sub_1A957D518();
  v13 = sub_1A957D548();
  v14 = -1 << *(v48 + 32);
  v15 = v13 & ~v14;
  if ((*(v48 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v46 = v6;
    v47 = ~v14;
    v44 = v11;
    v45 = v9 | (v8 << 32);
    v16 = v49;
    do
    {
      v17 = *(v48 + 48) + 56 * v15;
      v19 = *(v17 + 16);
      v18 = *(v17 + 24);
      v20 = *(v17 + 32);
      v21 = *(v17 + 36);
      v22 = *(v17 + 40);
      v23 = *(v17 + 44);
      v24 = *(v17 + 48);
      v25 = *(v17 + 52);
      if (*v17 != v51 || *(v17 + 8) != v50)
      {
        v27 = sub_1A957D3E8();
        v16 = v49;
        if ((v27 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      if (v18)
      {
        if (!v16)
        {
          goto LABEL_6;
        }

        if (v19 != v46 || v18 != v16)
        {
          v29 = sub_1A957D3E8();
          v16 = v49;
          if ((v29 & 1) == 0)
          {
            goto LABEL_6;
          }
        }
      }

      else if (v16)
      {
        goto LABEL_6;
      }

      v30 = static AudioComponentDescription.== infix(_:_:)(v20 | (v21 << 32), v22, v24, v45, v44);
      v16 = v49;
      if (v30 && ((v25 ^ v43) & 1) == 0)
      {
        sub_1A94FF990(v41);
        v31 = *(v48 + 48) + 56 * v15;
        v33 = *(v31 + 16);
        v32 = *(v31 + 32);
        v34 = *v31;
        *&v57[13] = *(v31 + 45);
        v56[1] = v33;
        *v57 = v32;
        v56[0] = v34;
        v35 = *(v31 + 16);
        *a1 = *v31;
        *(a1 + 16) = v35;
        *(a1 + 32) = *(v31 + 32);
        *(a1 + 45) = *(v31 + 45);
        sub_1A94FF810(v56, &v52);
        return 0;
      }

LABEL_6:
      v15 = (v15 + 1) & v47;
    }

    while (((*(v48 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  v37 = *v40;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v40;
  sub_1A94FF810(v41, v56);
  sub_1A94FDAFC(v41, v15, isUniquelyReferenced_nonNull_native);
  *v40 = v52;
  v39 = *(v41 + 16);
  *a1 = *v41;
  *(a1 + 16) = v39;
  *(a1 + 32) = *(v41 + 32);
  *(a1 + 45) = *(v41 + 45);
  return 1;
}

uint64_t sub_1A94FBB98(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    for (i = 0; v6; result = sub_1A93B10AC(v15[0], v15[1]))
    {
      v9 = i;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = *(v2 + 48) + 56 * (v10 | (v9 << 6));
      v13 = *(v11 + 16);
      v12 = *(v11 + 32);
      v14 = *v11;
      *&v17[13] = *(v11 + 45);
      v16[1] = v13;
      *v17 = v12;
      v16[0] = v14;
      sub_1A94FF810(v16, v15);
      sub_1A94FC5DC(v16, v15);
      sub_1A94FF990(v16);
    }

    while (1)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
      }

      v6 = *(v3 + 8 * v9);
      ++i;
      if (v6)
      {
        i = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A94FBCD0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v159 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    v2 = MEMORY[0x1E69E7CD0];
    goto LABEL_79;
  }

  v3 = a1;
  v5 = a1 + 56;
  v4 = *(a1 + 56);
  v6 = -1 << *(a1 + 32);
  v130 = ~v6;
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v4;
  v9 = (63 - v6) >> 6;
  v145 = (a2 + 56);

  v11 = 0;
  v123 = 0;
  v128 = v5;
  v129 = v9;
  v144 = v2;
  v127 = v10;
  if (!v8)
  {
LABEL_7:
    v13 = v11;
    while (1)
    {
      v12 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        goto LABEL_78;
      }

      v8 = *(v5 + 8 * v12);
      ++v13;
      if (v8)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:

    v2 = MEMORY[0x1E69E7CD0];
    goto LABEL_78;
  }

  while (1)
  {
    v12 = v11;
LABEL_11:
    v14 = *(v3 + 48) + 56 * (__clz(__rbit64(v8)) | (v12 << 6));
    v16 = *(v14 + 16);
    v15 = *(v14 + 32);
    v17 = (v8 - 1) & v8;
    v18 = *v14;
    *&v153[13] = *(v14 + 45);
    v152 = v16;
    *v153 = v15;
    v151 = v18;
    v154 = v3;
    v155 = v5;
    v156 = v130;
    v157 = v12;
    v158 = v17;
    v19 = *(v2 + 40);
    sub_1A957D4F8();
    v20 = v151;
    v21 = v152;
    sub_1A94FF810(&v151, &v148);
    v142 = *(&v20 + 1);
    v143 = v20;
    sub_1A957C228();
    v141 = *(&v21 + 1);
    v131 = v12;
    v132 = v17;
    v137 = v21;
    sub_1A957D518();
    if (*(&v21 + 1))
    {
      sub_1A957C228();
    }

    v22 = v153[20];
    v23 = *&v153[4];
    v25 = *&v153[8];
    v24 = *&v153[12];
    v26 = *v153;
    v148 = *v153;
    v136 = *&v153[16];
    LODWORD(v149) = *&v153[16];
    type metadata accessor for AudioComponentDescription();
    v28 = v27;
    v125 = sub_1A94FF1F4(&qword_1EB385EC8, 255, type metadata accessor for AudioComponentDescription);
    v126 = v28;
    sub_1A957C068();
    v133 = v22;
    sub_1A957D518();
    v29 = sub_1A957D548();
    v30 = -1 << *(v2 + 32);
    v31 = v29 & ~v30;
    v32 = v31 >> 6;
    v33 = 1 << v31;
    if (((1 << v31) & v145[v31 >> 6]) != 0)
    {
      break;
    }

    sub_1A94FF990(&v151);
    v11 = v131;
LABEL_34:
    v5 = v128;
    v9 = v129;
    v8 = v132;
    if (!v132)
    {
      goto LABEL_7;
    }
  }

  v139 = ~v30;
  v134 = v25 | (v24 << 32);
  v135 = v26 | (v23 << 32);
  v34 = v141;
  while (1)
  {
    v35 = *(v2 + 48) + 56 * v31;
    v36 = *v35;
    v37 = *(v35 + 8);
    v38 = *(v35 + 16);
    v39 = *(v35 + 24);
    v40 = *(v35 + 32);
    v41 = *(v35 + 36);
    v42 = *(v35 + 40);
    v43 = *(v35 + 44);
    v44 = *(v35 + 48);
    v140 = *(v35 + 52);
    if (v36 != v143 || v37 != v142)
    {
      v138 = v33;
      v46 = v41;
      v47 = v42;
      v48 = v40;
      v49 = v44;
      v50 = sub_1A957D3E8();
      v44 = v49;
      v40 = v48;
      v42 = v47;
      v41 = v46;
      v34 = v141;
      if ((v50 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    if (v39)
    {
      break;
    }

    if (!v34)
    {
      goto LABEL_29;
    }

LABEL_16:
    v31 = (v31 + 1) & v139;
    v32 = v31 >> 6;
    v2 = v144;
    v33 = 1 << v31;
    if ((v145[v31 >> 6] & (1 << v31)) == 0)
    {
      sub_1A94FF990(&v151);
      v11 = v131;
      v3 = v127;
      goto LABEL_34;
    }
  }

  if (!v34)
  {
    goto LABEL_16;
  }

  if (v38 != v137 || v39 != v34)
  {
    v52 = v44;
    v53 = sub_1A957D3E8();
    v44 = v52;
    v34 = v141;
    if ((v53 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_29:
  v54 = static AudioComponentDescription.== infix(_:_:)(v40 | (v41 << 32), v42, v44, v135, v134);
  v34 = v141;
  if (!v54 || ((v133 ^ v140) & 1) != 0)
  {
    goto LABEL_16;
  }

  v55 = sub_1A94FF990(&v151);
  v57 = v144;
  v58 = *(v144 + 32);
  v59 = v58 & 0x3F;
  v60 = ((1 << v58) + 63) >> 6;
  v120 = v60;
  if (v59 <= 0xD)
  {
LABEL_39:
    v121 = &v119;
    MEMORY[0x1EEE9AC00](v55, v56);
    v62 = &v119 - ((v61 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v62, v145, v61);
    v63 = *&v62[8 * v32] & ~v33;
    v124 = v62;
    *&v62[8 * v32] = v63;
    v122 = *(v57 + 16) - 1;
    v65 = v128;
    v64 = v129;
    v66 = v131;
    v67 = v132;
    while (1)
    {
      while (1)
      {
        if (!v67)
        {
          v69 = v66;
          while (1)
          {
            v68 = v69 + 1;
            if (__OFADD__(v69, 1))
            {
              goto LABEL_81;
            }

            if (v68 >= v64)
            {
              if (v64 <= v66 + 1)
              {
                v113 = v66 + 1;
              }

              else
              {
                v113 = v64;
              }

              v154 = v127;
              v155 = v65;
              v156 = v130;
              v157 = v113 - 1;
              v158 = 0;
              v2 = sub_1A94FD04C(v124, v120, v122, v57);
              goto LABEL_78;
            }

            v67 = *(v65 + 8 * v68);
            ++v69;
            if (v67)
            {
              goto LABEL_48;
            }
          }
        }

        v68 = v66;
LABEL_48:
        v70 = *(v127 + 48) + 56 * (__clz(__rbit64(v67)) | (v68 << 6));
        v72 = *(v70 + 16);
        v71 = *(v70 + 32);
        v73 = (v67 - 1) & v67;
        v74 = *v70;
        *(v150 + 13) = *(v70 + 45);
        v149 = v72;
        v150[0] = v71;
        v148 = v74;
        v154 = v127;
        v155 = v65;
        v156 = v130;
        v157 = v68;
        v158 = v73;
        v75 = *(v57 + 40);
        sub_1A957D4F8();
        v76 = v148;
        v77 = v149;
        sub_1A94FF810(&v148, &v146);
        v142 = *(&v76 + 1);
        v143 = v76;
        sub_1A957C228();
        v141 = *(&v77 + 1);
        v131 = v68;
        v132 = v73;
        v137 = v77;
        sub_1A957D518();
        if (*(&v77 + 1))
        {
          sub_1A957C228();
        }

        v78 = BYTE4(v150[1]);
        v79 = LODWORD(v150[0]);
        v80 = DWORD1(v150[0]);
        v81 = DWORD2(v150[0]);
        v82 = HIDWORD(v150[0]);
        v146 = v150[0];
        v136 = v150[1];
        v147 = v150[1];
        sub_1A957C068();
        v133 = v78;
        sub_1A957D518();
        v83 = sub_1A957D548();
        v84 = -1 << *(v57 + 32);
        v85 = v83 & ~v84;
        v86 = v85 >> 6;
        v87 = 1 << v85;
        if (((1 << v85) & v145[v85 >> 6]) != 0)
        {
          break;
        }

        sub_1A94FF990(&v148);
        v66 = v131;
LABEL_41:
        v64 = v129;
        v67 = v132;
      }

      v139 = ~v84;
      v134 = v81 | (v82 << 32);
      v135 = v79 | (v80 << 32);
      v88 = v141;
      while (1)
      {
        v89 = *(v57 + 48) + 56 * v85;
        v90 = *v89;
        v91 = *(v89 + 8);
        v92 = *(v89 + 16);
        v93 = *(v89 + 24);
        v94 = *(v89 + 32);
        v95 = *(v89 + 36);
        v96 = *(v89 + 40);
        v97 = *(v89 + 44);
        v98 = *(v89 + 48);
        v140 = *(v89 + 52);
        if (v90 != v143 || v91 != v142)
        {
          v138 = v97;
          v100 = v95;
          v101 = v96;
          v102 = v94;
          v103 = v98;
          v104 = v87;
          v105 = v86;
          v106 = v92;
          v107 = sub_1A957D3E8();
          v92 = v106;
          v86 = v105;
          v87 = v104;
          v98 = v103;
          v94 = v102;
          v96 = v101;
          v95 = v100;
          v88 = v141;
          if ((v107 & 1) == 0)
          {
            goto LABEL_53;
          }
        }

        if (v93)
        {
          break;
        }

        if (!v88)
        {
          goto LABEL_66;
        }

LABEL_53:
        v85 = (v85 + 1) & v139;
        v86 = v85 >> 6;
        v57 = v144;
        v87 = 1 << v85;
        if ((v145[v85 >> 6] & (1 << v85)) == 0)
        {
          sub_1A94FF990(&v148);
          v66 = v131;
          v65 = v128;
          goto LABEL_41;
        }
      }

      if (!v88)
      {
        goto LABEL_53;
      }

      if (v92 != v137 || v93 != v88)
      {
        v109 = v98;
        v110 = sub_1A957D3E8();
        v98 = v109;
        v88 = v141;
        if ((v110 & 1) == 0)
        {
          goto LABEL_53;
        }
      }

LABEL_66:
      v111 = static AudioComponentDescription.== infix(_:_:)(v94 | (v95 << 32), v96, v98, v135, v134);
      v88 = v141;
      if (!v111 || ((v133 ^ v140) & 1) != 0)
      {
        goto LABEL_53;
      }

      sub_1A94FF990(&v148);
      v112 = v124[v86];
      v124[v86] = v112 & ~v87;
      v65 = v128;
      v64 = v129;
      if ((v112 & v87) != 0)
      {
        v57 = v144;
        v66 = v131;
        v67 = v132;
        if (__OFSUB__(v122, 1))
        {
          __break(1u);
        }

        if (v122 == 1)
        {
          goto LABEL_82;
        }

        --v122;
      }

      else
      {
        v66 = v131;
        v67 = v132;
        v57 = v144;
      }
    }
  }

  v116 = 8 * v60;

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_39;
  }

  v117 = swift_slowAlloc();
  memcpy(v117, v145, v116);
  v118 = sub_1A94FCC34(v117, v120, v144, v31, &v154);

  MEMORY[0x1AC587CD0](v117, -1, -1);
  v2 = v118;
LABEL_78:
  sub_1A932D088();
LABEL_79:
  v114 = *MEMORY[0x1E69E9840];
  return v2;
}

double sub_1A94FC5DC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = *v2;
  v4 = *(*v2 + 40);
  sub_1A957D4F8();
  v5 = a1[2];
  v6 = a1[3];
  v44 = a1[1];
  v45 = *a1;
  sub_1A957C228();
  v43 = v6;
  v40 = v5;
  sub_1A957D518();
  if (v6)
  {
    sub_1A957C228();
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v10 = *(a1 + 10);
  v9 = *(a1 + 11);
  v11 = *(a1 + 52);
  v46 = *(a1 + 12);
  type metadata accessor for AudioComponentDescription();
  sub_1A94FF1F4(&qword_1EB385EC8, 255, type metadata accessor for AudioComponentDescription);
  sub_1A957C068();
  v38 = v11;
  sub_1A957D518();
  v12 = sub_1A957D548();
  v13 = -1 << *(v42 + 32);
  v14 = v12 & ~v13;
  v15 = v43;
  if (((*(v42 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_24:
    *(a2 + 45) = 0;
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    return result;
  }

  v41 = ~v13;
  v39 = v7 | (v8 << 32);
  while (1)
  {
    v16 = *(v42 + 48) + 56 * v14;
    v18 = *(v16 + 16);
    v17 = *(v16 + 24);
    v19 = *(v16 + 32);
    v20 = *(v16 + 36);
    v21 = *(v16 + 40);
    v22 = *(v16 + 44);
    v23 = *(v16 + 48);
    v24 = *(v16 + 52);
    if (*v16 != v45 || *(v16 + 8) != v44)
    {
      v26 = sub_1A957D3E8();
      v15 = v43;
      if ((v26 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    if (v17)
    {
      break;
    }

    if (!v15)
    {
      goto LABEL_19;
    }

LABEL_6:
    v14 = (v14 + 1) & v41;
    if (((*(v42 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  if (!v15)
  {
    goto LABEL_6;
  }

  if (v18 != v40 || v17 != v15)
  {
    v28 = sub_1A957D3E8();
    v15 = v43;
    if ((v28 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

LABEL_19:
  v29 = static AudioComponentDescription.== infix(_:_:)(v19 | (v20 << 32), v21, v23, v39, v10);
  v15 = v43;
  if (!v29 || ((v24 ^ v38) & 1) != 0)
  {
    goto LABEL_6;
  }

  v30 = *v36;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v36;
  v47 = *v36;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1A94FD380();
    v32 = v47;
  }

  v33 = *(v32 + 48) + 56 * v14;
  v34 = *(v33 + 16);
  *a2 = *v33;
  *(a2 + 16) = v34;
  *(a2 + 32) = *(v33 + 32);
  *(a2 + 45) = *(v33 + 45);
  sub_1A94FD834(v14);
  *v36 = v47;
  return result;
}

uint64_t sub_1A94FC8B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1A937829C(&qword_1EB388398, &qword_1A9596DD0);
  result = sub_1A957CEA8();
  v6 = result;
  if (*(v3 + 16))
  {
    v37 = v2;
    v38 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v39 = (v11 - 1) & v11;
LABEL_17:
      v19 = *(v3 + 48) + 56 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      v44 = *(v19 + 36);
      v45 = *(v19 + 32);
      v42 = *(v19 + 44);
      v43 = *(v19 + 40);
      v41 = *(v19 + 48);
      v24 = *(v19 + 52);
      v25 = v6;
      v26 = *(v6 + 40);
      sub_1A957D4F8();
      v40 = v21;
      sub_1A957C228();
      if (v23)
      {
        sub_1A957D518();
        v27 = v22;
        sub_1A957C228();
      }

      else
      {
        v27 = v22;
        sub_1A957D518();
      }

      type metadata accessor for AudioComponentDescription();
      sub_1A94FF1F4(&qword_1EB385EC8, 255, type metadata accessor for AudioComponentDescription);
      sub_1A957C068();
      sub_1A957D518();
      result = sub_1A957D548();
      v6 = v25;
      v28 = -1 << *(v25 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v13 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v13 + 8 * v30);
          if (v34 != -1)
          {
            v14 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v29) & ~*(v13 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v25 + 48) + 56 * v14;
      *v15 = v20;
      *(v15 + 8) = v40;
      *(v15 + 16) = v27;
      *(v15 + 24) = v23;
      *(v15 + 32) = v45;
      *(v15 + 36) = v44;
      *(v15 + 40) = v43;
      *(v15 + 44) = v42;
      *(v15 + 48) = v41;
      *(v15 + 52) = v24;
      ++*(v25 + 16);
      v3 = v38;
      v11 = v39;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v35 = v6;
    v36 = 1 << *(v3 + 32);
    if (v36 >= 64)
    {
      bzero(v8, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v36;
    }

    v2 = v37;
    *(v3 + 16) = 0;
  }

  else
  {
    v35 = result;
  }

  *v2 = v35;
  return result;
}

uint64_t sub_1A94FCC34(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v6 = *(a3 + 16);
  v53 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v59 = a3 + 56;
LABEL_2:
  v52 = v7;
LABEL_4:
  while (2)
  {
    v8 = v5[3];
    v9 = v5[4];
    if (v9)
    {
      v10 = v5[3];
LABEL_10:
      v13 = *(*v5 + 48) + 56 * (__clz(__rbit64(v9)) | (v10 << 6));
      v14 = *(v13 + 45);
      v15 = *(v13 + 32);
      v16 = *v13;
      v65 = *(v13 + 16);
      *v66 = v15;
      v64 = v16;
      *&v66[13] = v14;
      v5[3] = v10;
      v5[4] = (v9 - 1) & v9;
      v17 = *(a3 + 40);
      sub_1A957D4F8();
      v18 = v64;
      v19 = v65;
      sub_1A94FF810(&v64, &v62);
      v67 = v18;
      sub_1A957C228();
      sub_1A957D518();
      if (*(&v19 + 1))
      {
        sub_1A957C228();
      }

      v20 = v66[20];
      v22 = *v66;
      v21 = *&v66[4];
      v62 = *v66;
      v63 = *&v66[16];
      type metadata accessor for AudioComponentDescription();
      sub_1A94FF1F4(&qword_1EB385EC8, 255, type metadata accessor for AudioComponentDescription);
      sub_1A957C068();
      v55 = v20;
      sub_1A957D518();
      v23 = sub_1A957D548();
      v24 = -1 << *(a3 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      v27 = 1 << v25;
      if (((1 << v25) & *(v59 + 8 * (v25 >> 6))) == 0)
      {
        result = sub_1A94FF990(&v64);
        continue;
      }

      v58 = ~v24;
      v56 = v22 | (v21 << 32);
      v28 = *(&v19 + 1);
      while (1)
      {
        v29 = *(a3 + 48) + 56 * v25;
        v30 = *(v29 + 16);
        v31 = *(v29 + 24);
        v32 = *(v29 + 32);
        v33 = *(v29 + 36);
        v34 = *(v29 + 40);
        v35 = *(v29 + 44);
        v36 = *(v29 + 48);
        v61 = *(v29 + 52);
        if (*v29 != v67 || *(v29 + 8) != *(&v18 + 1))
        {
          v57 = *(v29 + 48);
          v38 = *(v29 + 36);
          v39 = *(v29 + 40);
          v40 = v27;
          v41 = v26;
          v42 = *(v29 + 16);
          v43 = sub_1A957D3E8();
          v30 = v42;
          v26 = v41;
          v27 = v40;
          v34 = v39;
          v33 = v38;
          v36 = v57;
          v28 = *(&v19 + 1);
          if ((v43 & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        if (v31)
        {
          if (!v28)
          {
            goto LABEL_15;
          }

          if (v30 != v19 || v31 != v28)
          {
            v45 = v36;
            v46 = v34;
            v47 = sub_1A957D3E8();
            v34 = v46;
            v36 = v45;
            v28 = *(&v19 + 1);
            if ((v47 & 1) == 0)
            {
              goto LABEL_15;
            }
          }
        }

        else if (v28)
        {
          goto LABEL_15;
        }

        v48 = static AudioComponentDescription.== infix(_:_:)(v32 | (v33 << 32), v34, v36, v56, v19);
        v28 = *(&v19 + 1);
        if (v48 && ((v55 ^ v61) & 1) == 0)
        {
          result = sub_1A94FF990(&v64);
          v5 = a5;
          v49 = v53[v26];
          v53[v26] = v49 & ~v27;
          if ((v49 & v27) != 0)
          {
            v7 = v52 - 1;
            if (__OFSUB__(v52, 1))
            {
LABEL_41:
              __break(1u);
              return result;
            }

            if (v52 == 1)
            {
              return MEMORY[0x1E69E7CD0];
            }

            goto LABEL_2;
          }

          goto LABEL_4;
        }

LABEL_15:
        v25 = (v25 + 1) & v58;
        v26 = v25 >> 6;
        v27 = 1 << v25;
        if ((*(v59 + 8 * (v25 >> 6)) & (1 << v25)) == 0)
        {
          result = sub_1A94FF990(&v64);
          v5 = a5;
          goto LABEL_4;
        }
      }
    }

    break;
  }

  v11 = (v5[2] + 64) >> 6;
  v12 = v5[3];
  while (1)
  {
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (v10 >= v11)
    {
      break;
    }

    v9 = *(v5[1] + 8 * v10);
    ++v12;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  if (v11 <= v8 + 1)
  {
    v50 = v8 + 1;
  }

  else
  {
    v50 = (v5[2] + 64) >> 6;
  }

  v5[3] = v50 - 1;
  v5[4] = 0;

  return sub_1A94FD04C(v53, a2, v52, a3);
}
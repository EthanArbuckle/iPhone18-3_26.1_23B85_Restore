uint64_t sub_2721E6044()
{
  v1 = *(v0 + *(type metadata accessor for Sentencepiece_TrainerSpec(0) + 24));
  swift_beginAccess();
  if (*(v1 + 56) == 4)
  {
    return 0;
  }

  else
  {
    return *(v1 + 56);
  }
}

uint64_t sub_2721E60AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F4038();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_2721E60F8@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2721F0508(a1);
  *a2 = result;
  return result;
}

uint64_t sub_2721E612C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2721F0508(*a1);
  *a2 = result;
  return result;
}

uint64_t (*sub_2721E6168(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_2721E61A0(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t (*sub_2721E61FC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_2721E6220@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2721F065C(&qword_2808815D0, &qword_27237AFD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Sentencepiece_ModelProto(0);
  sub_2721F07F4(v1 + *(v7 + 28), v6, &qword_2808815D0, &qword_27237AFD0);
  v8 = type metadata accessor for Sentencepiece_TrainerSpec(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_2721F06C4(v6, a1, type metadata accessor for Sentencepiece_TrainerSpec);
  }

  sub_272376F0C();
  v10 = a1 + *(v8 + 20);
  sub_272376F5C();
  v11 = *(v8 + 24);
  if (qword_2808833D8 != -1)
  {
    swift_once();
  }

  *(a1 + v11) = qword_2808833E0;
  v12 = v9(v6, 1, v8);

  if (v12 != 1)
  {
    return sub_2721F40F0(v6, &qword_2808815D0, &qword_27237AFD0);
  }

  return result;
}

float sub_2721E63EC()
{
  v1 = v0 + *(type metadata accessor for Sentencepiece_ModelProto.SentencePiece(0) + 28);
  result = *v1;
  if (*(v1 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_2721E644C()
{
  v2 = *v0;
  sub_27237874C();
  sub_27237777C();
  return sub_27237878C();
}

uint64_t sub_2721E64B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F3FE4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_2721E6500()
{
  v2 = *v0;
  sub_27237874C();
  sub_27237777C();
  return sub_27237878C();
}

uint64_t sub_2721E6568@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2721F08B4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_2721E65A4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2721F08B4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2721E661C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_272376F6C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2721E6694(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_272376F6C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2721E6718()
{
  v0 = sub_27237717C();
  sub_2721F408C(v0, qword_280893918);
  sub_2721F08DC(v0, qword_280893918);
  sub_2721F065C(&qword_280881798, &qword_27237BE78);
  v1 = (sub_2721F065C(&qword_2808817A0, &qword_27237BE80) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_27237AF50;
  v4 = v95 + v3;
  v5 = v95 + v3 + v1[14];
  *(v95 + v3) = 1;
  *v5 = "input";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_27237715C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v95 + v3 + v2 + v1[14];
  *(v4 + v2) = 7;
  *v9 = "input_format";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x277D21888];
  v8();
  v11 = (v95 + v3 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "model_prefix";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v8();
  v13 = (v95 + v3 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "model_type";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v8();
  v15 = (v95 + v3 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "vocab_size";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v8();
  v17 = (v95 + v3 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "accept_language";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v8();
  v19 = (v95 + v3 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "self_test_sample_size";
  *(v20 + 1) = 21;
  v20[16] = 2;
  v8();
  v21 = (v95 + v3 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 50;
  *v22 = "enable_differential_privacy";
  *(v22 + 1) = 27;
  v22[16] = 2;
  v8();
  v23 = v95 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 51;
  *v23 = "differential_privacy_noise_level";
  *(v23 + 8) = 32;
  *(v23 + 16) = 2;
  v8();
  v24 = (v95 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 52;
  *v25 = "differential_privacy_clipping_threshold";
  *(v25 + 1) = 39;
  v25[16] = 2;
  v8();
  v26 = (v95 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 10;
  *v27 = "character_coverage";
  *(v27 + 1) = 18;
  v27[16] = 2;
  v8();
  v28 = (v95 + v3 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 11;
  *v29 = "input_sentence_size";
  *(v29 + 1) = 19;
  v29[16] = 2;
  v8();
  v30 = (v95 + v3 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 19;
  *v31 = "shuffle_input_sentence";
  *(v31 + 1) = 22;
  v31[16] = 2;
  v8();
  v32 = (v95 + v3 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 12;
  *v33 = "mining_sentence_size";
  *(v33 + 1) = 20;
  v33[16] = 2;
  v8();
  v34 = (v95 + v3 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 13;
  *v35 = "training_sentence_size";
  *(v35 + 1) = 22;
  v35[16] = 2;
  v8();
  v36 = (v95 + v3 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 14;
  *v37 = "seed_sentencepiece_size";
  *(v37 + 1) = 23;
  v37[16] = 2;
  v8();
  v38 = v95 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 15;
  *v38 = "shrinking_factor";
  *(v38 + 8) = 16;
  *(v38 + 16) = 2;
  v8();
  v39 = (v95 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "max_sentence_length";
  *(v40 + 1) = 19;
  v40[16] = 2;
  v8();
  v41 = (v95 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 16;
  *v42 = "num_threads";
  *(v42 + 1) = 11;
  v42[16] = 2;
  v8();
  v43 = (v95 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 17;
  *v44 = "num_sub_iterations";
  *(v44 + 1) = 18;
  v44[16] = 2;
  v8();
  v45 = (v95 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "max_sentencepiece_length";
  *(v46 + 1) = 24;
  v46[16] = 2;
  v8();
  v47 = (v95 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "split_by_unicode_script";
  *(v48 + 1) = 23;
  v48[16] = 2;
  v8();
  v49 = (v95 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "split_by_number";
  *(v50 + 1) = 15;
  v50[16] = 2;
  v8();
  v51 = (v95 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 22;
  *v52 = "split_by_whitespace";
  *(v52 + 1) = 19;
  v52[16] = 2;
  v8();
  v53 = (v95 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "treat_whitespace_as_suffix";
  *(v54 + 1) = 26;
  v54[16] = 2;
  v8();
  v55 = (v95 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 26;
  *v56 = "allow_whitespace_only_pieces";
  *(v56 + 1) = 28;
  v56[16] = 2;
  v8();
  v57 = (v95 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 25;
  *v58 = "split_digits";
  *(v58 + 1) = 12;
  v58[16] = 2;
  v8();
  v59 = (v95 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 53;
  *v60 = "pretokenization_delimiter";
  *(v60 + 1) = 25;
  v60[16] = 2;
  v8();
  v61 = (v95 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 30;
  *v62 = "control_symbols";
  *(v62 + 1) = 15;
  v62[16] = 2;
  v8();
  v63 = (v95 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 31;
  *v64 = "user_defined_symbols";
  *(v64 + 1) = 20;
  v64[16] = 2;
  v8();
  v65 = (v95 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 36;
  *v66 = "required_chars";
  *(v66 + 1) = 14;
  v66[16] = 2;
  v8();
  v67 = (v95 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 35;
  *v68 = "byte_fallback";
  *(v68 + 1) = 13;
  v68[16] = 2;
  v8();
  v69 = v95 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 32;
  *v69 = "vocabulary_output_piece_score";
  *(v69 + 8) = 29;
  *(v69 + 16) = 2;
  v8();
  v70 = (v95 + v3 + 33 * v2);
  v71 = v70 + v1[14];
  *v70 = 33;
  *v71 = "hard_vocab_limit";
  *(v71 + 1) = 16;
  v71[16] = 2;
  v8();
  v72 = (v95 + v3 + 34 * v2);
  v73 = v72 + v1[14];
  *v72 = 34;
  *v73 = "use_all_vocab";
  *(v73 + 1) = 13;
  v73[16] = 2;
  v8();
  v74 = (v95 + v3 + 35 * v2);
  v75 = v74 + v1[14];
  *v74 = 40;
  *v75 = "unk_id";
  *(v75 + 1) = 6;
  v75[16] = 2;
  v8();
  v76 = (v95 + v3 + 36 * v2);
  v77 = v76 + v1[14];
  *v76 = 41;
  *v77 = "bos_id";
  *(v77 + 1) = 6;
  v77[16] = 2;
  v8();
  v78 = (v95 + v3 + 37 * v2);
  v79 = v78 + v1[14];
  *v78 = 42;
  *v79 = "eos_id";
  *(v79 + 1) = 6;
  v79[16] = 2;
  v8();
  v80 = (v95 + v3 + 38 * v2);
  v81 = v80 + v1[14];
  *v80 = 43;
  *v81 = "pad_id";
  *(v81 + 1) = 6;
  v81[16] = 2;
  v8();
  v82 = (v95 + v3 + 39 * v2);
  v83 = v82 + v1[14];
  *v82 = 45;
  *v83 = "unk_piece";
  *(v83 + 1) = 9;
  v83[16] = 2;
  v8();
  v84 = (v95 + v3 + 40 * v2);
  v85 = v84 + v1[14];
  *v84 = 46;
  *v85 = "bos_piece";
  *(v85 + 1) = 9;
  v85[16] = 2;
  v8();
  v86 = (v95 + v3 + 41 * v2);
  v87 = v86 + v1[14];
  *v86 = 47;
  *v87 = "eos_piece";
  *(v87 + 1) = 9;
  v87[16] = 2;
  v8();
  v88 = (v95 + v3 + 42 * v2);
  v89 = v88 + v1[14];
  *v88 = 48;
  *v89 = "pad_piece";
  *(v89 + 1) = 9;
  v89[16] = 2;
  v8();
  v90 = (v95 + v3 + 43 * v2);
  v91 = v90 + v1[14];
  *v90 = 44;
  *v91 = "unk_surface";
  *(v91 + 1) = 11;
  v91[16] = 2;
  v8();
  v92 = (v95 + v3 + 44 * v2);
  v93 = v92 + v1[14];
  *v92 = 49;
  *v93 = "train_extremely_large_corpus";
  *(v93 + 1) = 28;
  v93[16] = 2;
  v8();
  return sub_27237716C();
}

double sub_2721E7340()
{
  type metadata accessor for Sentencepiece_TrainerSpec._StorageClass();
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 4;
  *(v0 + 60) = 0;
  *(v0 + 64) = 1;
  *(v0 + 72) = v1;
  *(v0 + 80) = 0;
  *(v0 + 84) = 513;
  *(v0 + 88) = 0;
  *(v0 + 92) = 1;
  *(v0 + 96) = 0;
  *(v0 + 104) = 1;
  *(v0 + 108) = 0;
  *(v0 + 112) = 1;
  *(v0 + 120) = 0;
  *(v0 + 128) = 513;
  *(v0 + 132) = 0;
  *(v0 + 136) = 1;
  *(v0 + 140) = 0;
  *(v0 + 144) = 1;
  *(v0 + 148) = 0;
  *(v0 + 152) = 1;
  *(v0 + 156) = 0;
  *(v0 + 160) = 1;
  *(v0 + 164) = 0;
  *(v0 + 168) = 1;
  *(v0 + 172) = 0;
  *(v0 + 176) = 1;
  *(v0 + 180) = 0;
  *(v0 + 184) = 1;
  *(v0 + 188) = 0;
  *(v0 + 192) = 1;
  *(v0 + 197) = 514;
  *(v0 + 193) = 33686018;
  *(v0 + 200) = 0;
  *(v0 + 208) = 0;
  *(v0 + 216) = v1;
  *(v0 + 224) = v1;
  *(v0 + 232) = 0;
  *(v0 + 240) = 0;
  *(v0 + 248) = 33686018;
  *(v0 + 256) = 1;
  *(v0 + 260) = 0;
  *(v0 + 264) = 1;
  *(v0 + 268) = 0;
  *(v0 + 272) = 1;
  *(v0 + 276) = 0;
  *(v0 + 280) = 1;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 0u;
  *(v0 + 368) = 2;
  qword_2808833E0 = v0;
  return result;
}

uint64_t sub_2721E745C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  v5 = v0[26];

  v6 = v0[27];

  v7 = v0[28];

  v8 = v0[30];

  v9 = v0[37];

  v10 = v0[39];

  v11 = v0[41];

  v12 = v0[43];

  v13 = v0[45];

  return swift_deallocClassInstance();
}

uint64_t sub_2721E74F4()
{
  v2 = v0;
  v3 = type metadata accessor for Sentencepiece_TrainerSpec(0);
  v4 = *(v3 + 24);
  v5 = *(v0 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Sentencepiece_TrainerSpec._StorageClass();
    v8 = swift_allocObject();
    sub_2721EF8D0(v7);

    *(v2 + v4) = v8;
  }

  v9 = sub_272376FAC();
  v11 = v1;
  if (!v1)
  {
    while ((v10 & 1) == 0)
    {
      switch(v9)
      {
        case 1:
        case 5:
        case 30:
        case 31:
          swift_beginAccess();
          v13 = v11;
          sub_27237701C();
          goto LABEL_16;
        case 2:
        case 7:
        case 36:
        case 44:
        case 45:
        case 46:
        case 47:
        case 48:
        case 53:
          swift_beginAccess();
          v13 = v11;
          sub_27237702C();
          goto LABEL_16;
        case 3:
          swift_beginAccess();
          sub_2721F4038();
          v13 = v11;
          sub_272376FDC();
          goto LABEL_16;
        case 4:
        case 6:
        case 12:
        case 13:
        case 14:
        case 16:
        case 17:
        case 18:
        case 20:
        case 40:
        case 41:
        case 42:
        case 43:
          swift_beginAccess();
          v13 = v11;
          sub_27237700C();
          goto LABEL_16;
        case 10:
        case 15:
        case 51:
          swift_beginAccess();
          v13 = v11;
          sub_272376FFC();
          goto LABEL_16;
        case 11:
        case 52:
          swift_beginAccess();
          v13 = v11;
          sub_27237703C();
          goto LABEL_16;
        case 19:
        case 21:
        case 22:
        case 23:
        case 24:
        case 25:
        case 26:
        case 32:
        case 33:
        case 34:
        case 35:
        case 49:
        case 50:
          swift_beginAccess();
          v13 = v11;
          sub_272376FCC();
LABEL_16:
          v11 = v13;
          swift_endAccess();
          break;
        default:
          if ((v9 - 200) <= 0x1FFFFF37)
          {
            sub_2721F106C(&qword_280881650, type metadata accessor for Sentencepiece_TrainerSpec);
            v14 = *(v3 + 20);
            sub_272376FBC();
          }

          break;
      }

      v9 = sub_272376FAC();
    }
  }
}

uint64_t sub_2721E7D00()
{
  v2 = v1;
  v3 = type metadata accessor for Sentencepiece_TrainerSpec(0);
  v4 = *(v0 + *(v3 + 24));
  swift_beginAccess();
  if (*(*(v4 + 16) + 16))
  {
    v5 = *(v4 + 16);

    sub_27237710C();
    if (v1)
    {
    }
  }

  result = swift_beginAccess();
  if (*(v4 + 48))
  {
    v7 = *(v4 + 40);
    v8 = *(v4 + 48);

    sub_27237711C();
  }

  if (!v2)
  {
    swift_beginAccess();
    if (*(v4 + 56) != 4)
    {
      sub_2721F4038();
      sub_2723770CC();
    }

    swift_beginAccess();
    if ((*(v4 + 64) & 1) == 0)
    {
      v9 = *(v4 + 60);
      sub_2723770FC();
    }

    swift_beginAccess();
    if (*(*(v4 + 72) + 16))
    {
      v10 = *(v4 + 72);

      sub_27237710C();
    }

    sub_2721E8490(v4);
    sub_2721E8514(v4);
    sub_2721E85B0(v4);
    sub_2721E8638(v4);
    sub_2721E86BC(v4);
    sub_2721E8740(v4);
    sub_2721E87C4(v4);
    sub_2721E8848(v4);
    sub_2721E88D0(v4);
    sub_2721E8954(v4);
    sub_2721E89D8(v4);
    sub_2721E8A5C(v4);
    sub_2721E8AE4(v4);
    sub_2721E8B68(v4);
    sub_2721E8BF0(v4);
    sub_2721E8C78(v4);
    sub_2721E8D00(v4);
    sub_2721E8D88(v4);
    sub_2721E8E10(v4);
    swift_beginAccess();
    if (*(*(v4 + 216) + 16))
    {
      v11 = *(v4 + 216);

      sub_27237710C();
    }

    swift_beginAccess();
    if (*(*(v4 + 224) + 16))
    {
      v12 = *(v4 + 224);

      sub_27237710C();
    }

    sub_2721E8E98(v4);
    sub_2721E8F20(v4);
    sub_2721E8FA8(v4);
    sub_2721E9030(v4);
    sub_2721E90B8(v4);
    sub_2721E9154(v4);
    sub_2721E91D8(v4);
    sub_2721E9260(v4);
    sub_2721E92E8(v4);
    sub_2721E9370(v4);
    sub_2721E940C(v4);
    sub_2721E94A8(v4);
    sub_2721E9544(v4);
    sub_2721E95E0(v4);
    sub_2721E967C(v4);
    sub_2721E9704(v4);
    sub_2721E978C(v4);
    sub_2721E9814(v4);
    sub_2721E9898(v4);
    v13 = *(v3 + 20);
    sub_2723770AC();
    return sub_272376EFC();
  }

  return result;
}

uint64_t sub_2721E8490(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 84) & 1) == 0)
  {
    v3 = *(a1 + 80);
    return sub_2723770FC();
  }

  return result;
}

uint64_t sub_2721E8514(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 32))
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 32);

    sub_27237711C();
  }

  return result;
}

uint64_t sub_2721E85B0(uint64_t a1)
{
  v2 = (a1 + 108);
  result = swift_beginAccess();
  if ((*(a1 + 112) & 1) == 0)
  {
    v4 = *v2;
    return sub_2723770EC();
  }

  return result;
}

uint64_t sub_2721E8638(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 128) & 1) == 0)
  {
    v3 = *(a1 + 120);
    return sub_27237712C();
  }

  return result;
}

uint64_t sub_2721E86BC(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 136) & 1) == 0)
  {
    v3 = *(a1 + 132);
    return sub_2723770FC();
  }

  return result;
}

uint64_t sub_2721E8740(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 144) & 1) == 0)
  {
    v3 = *(a1 + 140);
    return sub_2723770FC();
  }

  return result;
}

uint64_t sub_2721E87C4(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 152) & 1) == 0)
  {
    v3 = *(a1 + 148);
    return sub_2723770FC();
  }

  return result;
}

uint64_t sub_2721E8848(uint64_t a1)
{
  v2 = (a1 + 156);
  result = swift_beginAccess();
  if ((*(a1 + 160) & 1) == 0)
  {
    v4 = *v2;
    return sub_2723770EC();
  }

  return result;
}

uint64_t sub_2721E88D0(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 176) & 1) == 0)
  {
    v3 = *(a1 + 172);
    return sub_2723770FC();
  }

  return result;
}

uint64_t sub_2721E8954(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 184) & 1) == 0)
  {
    v3 = *(a1 + 180);
    return sub_2723770FC();
  }

  return result;
}

uint64_t sub_2721E89D8(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 168) & 1) == 0)
  {
    v3 = *(a1 + 164);
    return sub_2723770FC();
  }

  return result;
}

uint64_t sub_2721E8A5C(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 129) != 2)
  {
    return sub_2723770BC();
  }

  return result;
}

uint64_t sub_2721E8AE4(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 192) & 1) == 0)
  {
    v3 = *(a1 + 188);
    return sub_2723770FC();
  }

  return result;
}

uint64_t sub_2721E8B68(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 193) != 2)
  {
    return sub_2723770BC();
  }

  return result;
}

uint64_t sub_2721E8BF0(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 195) != 2)
  {
    return sub_2723770BC();
  }

  return result;
}

uint64_t sub_2721E8C78(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 194) != 2)
  {
    return sub_2723770BC();
  }

  return result;
}

uint64_t sub_2721E8D00(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 196) != 2)
  {
    return sub_2723770BC();
  }

  return result;
}

uint64_t sub_2721E8D88(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 198) != 2)
  {
    return sub_2723770BC();
  }

  return result;
}

uint64_t sub_2721E8E10(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 197) != 2)
  {
    return sub_2723770BC();
  }

  return result;
}

uint64_t sub_2721E8E98(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 249) != 2)
  {
    return sub_2723770BC();
  }

  return result;
}

uint64_t sub_2721E8F20(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 250) != 2)
  {
    return sub_2723770BC();
  }

  return result;
}

uint64_t sub_2721E8FA8(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 251) != 2)
  {
    return sub_2723770BC();
  }

  return result;
}

uint64_t sub_2721E9030(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 248) != 2)
  {
    return sub_2723770BC();
  }

  return result;
}

uint64_t sub_2721E90B8(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 240))
  {
    v3 = *(a1 + 232);
    v4 = *(a1 + 240);

    sub_27237711C();
  }

  return result;
}

uint64_t sub_2721E9154(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 256) & 1) == 0)
  {
    v3 = *(a1 + 252);
    return sub_2723770FC();
  }

  return result;
}

uint64_t sub_2721E91D8(uint64_t a1)
{
  v2 = (a1 + 260);
  result = swift_beginAccess();
  if ((*(a1 + 264) & 1) == 0)
  {
    v4 = *v2;
    return sub_2723770FC();
  }

  return result;
}

uint64_t sub_2721E9260(uint64_t a1)
{
  v2 = (a1 + 268);
  result = swift_beginAccess();
  if ((*(a1 + 272) & 1) == 0)
  {
    v4 = *v2;
    return sub_2723770FC();
  }

  return result;
}

uint64_t sub_2721E92E8(uint64_t a1)
{
  v2 = (a1 + 276);
  result = swift_beginAccess();
  if ((*(a1 + 280) & 1) == 0)
  {
    v4 = *v2;
    return sub_2723770FC();
  }

  return result;
}

uint64_t sub_2721E9370(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 360))
  {
    v3 = *(a1 + 352);
    v4 = *(a1 + 360);

    sub_27237711C();
  }

  return result;
}

uint64_t sub_2721E940C(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 296))
  {
    v3 = *(a1 + 288);
    v4 = *(a1 + 296);

    sub_27237711C();
  }

  return result;
}

uint64_t sub_2721E94A8(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 312))
  {
    v3 = *(a1 + 304);
    v4 = *(a1 + 312);

    sub_27237711C();
  }

  return result;
}

uint64_t sub_2721E9544(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 328))
  {
    v3 = *(a1 + 320);
    v4 = *(a1 + 328);

    sub_27237711C();
  }

  return result;
}

uint64_t sub_2721E95E0(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 344))
  {
    v3 = *(a1 + 336);
    v4 = *(a1 + 344);

    sub_27237711C();
  }

  return result;
}

uint64_t sub_2721E967C(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 368) != 2)
  {
    return sub_2723770BC();
  }

  return result;
}

uint64_t sub_2721E9704(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 85) != 2)
  {
    return sub_2723770BC();
  }

  return result;
}

uint64_t sub_2721E978C(uint64_t a1)
{
  v2 = (a1 + 88);
  result = swift_beginAccess();
  if ((*(a1 + 92) & 1) == 0)
  {
    v4 = *v2;
    return sub_2723770EC();
  }

  return result;
}

uint64_t sub_2721E9814(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 104) & 1) == 0)
  {
    v3 = *(a1 + 96);
    return sub_27237712C();
  }

  return result;
}

uint64_t sub_2721E9898(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 208))
  {
    v3 = *(a1 + 200);
    v4 = *(a1 + 208);

    sub_27237711C();
  }

  return result;
}

uint64_t sub_2721E9934(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  if ((sub_2721EF318(v4, *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  swift_beginAccess();
  v7 = *(a2 + 32);
  if (v6)
  {
    if (!v7 || (v5 != *(a2 + 24) || v6 != v7) && (sub_27237865C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  swift_beginAccess();
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  swift_beginAccess();
  v10 = *(a2 + 48);
  if (v9)
  {
    if (!v10 || (v8 != *(a2 + 40) || v9 != v10) && (sub_27237865C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  swift_beginAccess();
  v11 = *(a1 + 56);
  swift_beginAccess();
  v12 = *(a2 + 56);
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      return 0;
    }

    goto LABEL_21;
  }

  result = 0;
  if (v12 != 4 && v11 == v12)
  {
LABEL_21:
    swift_beginAccess();
    v14 = *(a1 + 60);
    v15 = *(a1 + 64);
    swift_beginAccess();
    v16 = *(a2 + 64);
    if (v15)
    {
      if (!*(a2 + 64))
      {
        return 0;
      }
    }

    else
    {
      if (v14 != *(a2 + 60))
      {
        v16 = 1;
      }

      if (v16)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v17 = *(a1 + 72);
    swift_beginAccess();
    if (sub_2721EF318(v17, *(a2 + 72)))
    {
      swift_beginAccess();
      v18 = *(a1 + 80);
      v19 = *(a1 + 84);
      swift_beginAccess();
      v20 = *(a2 + 84);
      if (v19)
      {
        if (!*(a2 + 84))
        {
          return 0;
        }
      }

      else
      {
        if (v18 != *(a2 + 80))
        {
          v20 = 1;
        }

        if (v20)
        {
          return 0;
        }
      }

      swift_beginAccess();
      v21 = *(a1 + 85);
      swift_beginAccess();
      v22 = *(a2 + 85);
      if (v21 == 2)
      {
        if (v22 != 2)
        {
          return 0;
        }
      }

      else if (v22 == 2 || ((v21 ^ v22) & 1) != 0)
      {
        return 0;
      }

      swift_beginAccess();
      v23 = *(a1 + 88);
      v24 = *(a1 + 92);
      swift_beginAccess();
      v25 = *(a2 + 92);
      if (v24)
      {
        if (!*(a2 + 92))
        {
          return 0;
        }
      }

      else
      {
        if (v23 != *(a2 + 88))
        {
          v25 = 1;
        }

        if (v25)
        {
          return 0;
        }
      }

      swift_beginAccess();
      v26 = *(a1 + 96);
      v27 = *(a1 + 104);
      swift_beginAccess();
      v28 = *(a2 + 104);
      if (v27)
      {
        if (!*(a2 + 104))
        {
          return 0;
        }
      }

      else
      {
        if (v26 != *(a2 + 96))
        {
          v28 = 1;
        }

        if (v28)
        {
          return 0;
        }
      }

      swift_beginAccess();
      v29 = *(a1 + 108);
      v30 = *(a1 + 112);
      swift_beginAccess();
      v31 = *(a2 + 112);
      if (v30)
      {
        if (!*(a2 + 112))
        {
          return 0;
        }
      }

      else
      {
        if (v29 != *(a2 + 108))
        {
          v31 = 1;
        }

        if (v31)
        {
          return 0;
        }
      }

      swift_beginAccess();
      v32 = *(a1 + 120);
      v33 = *(a1 + 128);
      swift_beginAccess();
      v34 = *(a2 + 128);
      if (v33)
      {
        if (!*(a2 + 128))
        {
          return 0;
        }
      }

      else
      {
        if (v32 != *(a2 + 120))
        {
          v34 = 1;
        }

        if (v34)
        {
          return 0;
        }
      }

      swift_beginAccess();
      v35 = *(a1 + 129);
      swift_beginAccess();
      v36 = *(a2 + 129);
      if (v35 == 2)
      {
        if (v36 != 2)
        {
          return 0;
        }
      }

      else if (v36 == 2 || ((v35 ^ v36) & 1) != 0)
      {
        return 0;
      }

      swift_beginAccess();
      v37 = *(a1 + 132);
      v38 = *(a1 + 136);
      swift_beginAccess();
      v39 = *(a2 + 136);
      if (v38)
      {
        if (!*(a2 + 136))
        {
          return 0;
        }
      }

      else
      {
        if (v37 != *(a2 + 132))
        {
          v39 = 1;
        }

        if (v39)
        {
          return 0;
        }
      }

      swift_beginAccess();
      v40 = *(a1 + 140);
      v41 = *(a1 + 144);
      swift_beginAccess();
      v42 = *(a2 + 144);
      if (v41)
      {
        if (!*(a2 + 144))
        {
          return 0;
        }
      }

      else
      {
        if (v40 != *(a2 + 140))
        {
          v42 = 1;
        }

        if (v42)
        {
          return 0;
        }
      }

      swift_beginAccess();
      v43 = *(a1 + 148);
      v44 = *(a1 + 152);
      swift_beginAccess();
      v45 = *(a2 + 152);
      if (v44)
      {
        if (!*(a2 + 152))
        {
          return 0;
        }
      }

      else
      {
        if (v43 != *(a2 + 148))
        {
          v45 = 1;
        }

        if (v45)
        {
          return 0;
        }
      }

      swift_beginAccess();
      v46 = *(a1 + 156);
      v47 = *(a1 + 160);
      swift_beginAccess();
      v48 = *(a2 + 160);
      if (v47)
      {
        if (!*(a2 + 160))
        {
          return 0;
        }
      }

      else
      {
        if (v46 != *(a2 + 156))
        {
          v48 = 1;
        }

        if (v48)
        {
          return 0;
        }
      }

      swift_beginAccess();
      v49 = *(a1 + 164);
      v50 = *(a1 + 168);
      swift_beginAccess();
      v51 = *(a2 + 168);
      if (v50)
      {
        if (!*(a2 + 168))
        {
          return 0;
        }
      }

      else
      {
        if (v49 != *(a2 + 164))
        {
          v51 = 1;
        }

        if (v51)
        {
          return 0;
        }
      }

      swift_beginAccess();
      v52 = *(a1 + 172);
      v53 = *(a1 + 176);
      swift_beginAccess();
      v54 = *(a2 + 176);
      if (v53)
      {
        if (!*(a2 + 176))
        {
          return 0;
        }
      }

      else
      {
        if (v52 != *(a2 + 172))
        {
          v54 = 1;
        }

        if (v54)
        {
          return 0;
        }
      }

      swift_beginAccess();
      v55 = *(a1 + 180);
      v56 = *(a1 + 184);
      swift_beginAccess();
      v57 = *(a2 + 184);
      if (v56)
      {
        if (!*(a2 + 184))
        {
          return 0;
        }
      }

      else
      {
        if (v55 != *(a2 + 180))
        {
          v57 = 1;
        }

        if (v57)
        {
          return 0;
        }
      }

      swift_beginAccess();
      v58 = *(a1 + 188);
      v59 = *(a1 + 192);
      swift_beginAccess();
      v60 = *(a2 + 192);
      if (v59)
      {
        if (!*(a2 + 192))
        {
          return 0;
        }
      }

      else
      {
        if (v58 != *(a2 + 188))
        {
          v60 = 1;
        }

        if (v60)
        {
          return 0;
        }
      }

      swift_beginAccess();
      v61 = *(a1 + 193);
      swift_beginAccess();
      v62 = *(a2 + 193);
      if (v61 == 2)
      {
        if (v62 != 2)
        {
          return 0;
        }
      }

      else if (v62 == 2 || ((v61 ^ v62) & 1) != 0)
      {
        return 0;
      }

      swift_beginAccess();
      v63 = *(a1 + 194);
      swift_beginAccess();
      v64 = *(a2 + 194);
      if (v63 == 2)
      {
        if (v64 != 2)
        {
          return 0;
        }
      }

      else if (v64 == 2 || ((v63 ^ v64) & 1) != 0)
      {
        return 0;
      }

      swift_beginAccess();
      v65 = *(a1 + 195);
      swift_beginAccess();
      v66 = *(a2 + 195);
      if (v65 == 2)
      {
        if (v66 != 2)
        {
          return 0;
        }
      }

      else if (v66 == 2 || ((v65 ^ v66) & 1) != 0)
      {
        return 0;
      }

      swift_beginAccess();
      v67 = *(a1 + 196);
      swift_beginAccess();
      v68 = *(a2 + 196);
      if (v67 == 2)
      {
        if (v68 != 2)
        {
          return 0;
        }
      }

      else if (v68 == 2 || ((v67 ^ v68) & 1) != 0)
      {
        return 0;
      }

      swift_beginAccess();
      v69 = *(a1 + 197);
      swift_beginAccess();
      v70 = *(a2 + 197);
      if (v69 == 2)
      {
        if (v70 != 2)
        {
          return 0;
        }
      }

      else if (v70 == 2 || ((v69 ^ v70) & 1) != 0)
      {
        return 0;
      }

      swift_beginAccess();
      v71 = *(a1 + 198);
      swift_beginAccess();
      v72 = *(a2 + 198);
      if (v71 == 2)
      {
        if (v72 != 2)
        {
          return 0;
        }
      }

      else if (v72 == 2 || ((v71 ^ v72) & 1) != 0)
      {
        return 0;
      }

      swift_beginAccess();
      v73 = *(a1 + 200);
      v74 = *(a1 + 208);
      swift_beginAccess();
      v75 = *(a2 + 208);
      if (v74)
      {
        if (!v75 || (v73 != *(a2 + 200) || v74 != v75) && (sub_27237865C() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v75)
      {
        return 0;
      }

      swift_beginAccess();
      v76 = *(a1 + 216);
      swift_beginAccess();
      if ((sub_2721EF318(v76, *(a2 + 216)) & 1) == 0)
      {
        return 0;
      }

      swift_beginAccess();
      v77 = *(a1 + 224);
      swift_beginAccess();
      if ((sub_2721EF318(v77, *(a2 + 224)) & 1) == 0)
      {
        return 0;
      }

      swift_beginAccess();
      v78 = *(a1 + 232);
      v79 = *(a1 + 240);
      swift_beginAccess();
      v80 = *(a2 + 240);
      if (v79)
      {
        if (!v80 || (v78 != *(a2 + 232) || v79 != v80) && (sub_27237865C() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v80)
      {
        return 0;
      }

      swift_beginAccess();
      v81 = *(a1 + 248);
      swift_beginAccess();
      v82 = *(a2 + 248);
      if (v81 == 2)
      {
        if (v82 != 2)
        {
          return 0;
        }
      }

      else if (v82 == 2 || ((v81 ^ v82) & 1) != 0)
      {
        return 0;
      }

      swift_beginAccess();
      v83 = *(a1 + 249);
      swift_beginAccess();
      v84 = *(a2 + 249);
      if (v83 == 2)
      {
        if (v84 != 2)
        {
          return 0;
        }
      }

      else if (v84 == 2 || ((v83 ^ v84) & 1) != 0)
      {
        return 0;
      }

      swift_beginAccess();
      v85 = *(a1 + 250);
      swift_beginAccess();
      v86 = *(a2 + 250);
      if (v85 == 2)
      {
        if (v86 != 2)
        {
          return 0;
        }
      }

      else if (v86 == 2 || ((v85 ^ v86) & 1) != 0)
      {
        return 0;
      }

      swift_beginAccess();
      v87 = *(a1 + 251);
      swift_beginAccess();
      v88 = *(a2 + 251);
      if (v87 == 2)
      {
        if (v88 != 2)
        {
          return 0;
        }
      }

      else if (v88 == 2 || ((v87 ^ v88) & 1) != 0)
      {
        return 0;
      }

      swift_beginAccess();
      v89 = *(a1 + 252);
      v90 = *(a1 + 256);
      swift_beginAccess();
      v91 = *(a2 + 256);
      if (v90)
      {
        if (!*(a2 + 256))
        {
          return 0;
        }
      }

      else
      {
        if (v89 != *(a2 + 252))
        {
          v91 = 1;
        }

        if (v91)
        {
          return 0;
        }
      }

      swift_beginAccess();
      v92 = *(a1 + 260);
      v93 = *(a1 + 264);
      swift_beginAccess();
      v94 = *(a2 + 264);
      if (v93)
      {
        if (!*(a2 + 264))
        {
          return 0;
        }
      }

      else
      {
        if (v92 != *(a2 + 260))
        {
          v94 = 1;
        }

        if (v94)
        {
          return 0;
        }
      }

      swift_beginAccess();
      v95 = *(a1 + 268);
      v96 = *(a1 + 272);
      swift_beginAccess();
      v97 = *(a2 + 272);
      if (v96)
      {
        if (!*(a2 + 272))
        {
          return 0;
        }
      }

      else
      {
        if (v95 != *(a2 + 268))
        {
          v97 = 1;
        }

        if (v97)
        {
          return 0;
        }
      }

      swift_beginAccess();
      v98 = *(a1 + 276);
      v99 = *(a1 + 280);
      swift_beginAccess();
      v100 = *(a2 + 280);
      if (v99)
      {
        if (!*(a2 + 280))
        {
          return 0;
        }
      }

      else
      {
        if (v98 != *(a2 + 276))
        {
          v100 = 1;
        }

        if (v100)
        {
          return 0;
        }
      }

      swift_beginAccess();
      v101 = *(a1 + 288);
      v102 = *(a1 + 296);
      swift_beginAccess();
      v103 = *(a2 + 296);
      if (v102)
      {
        if (!v103 || (v101 != *(a2 + 288) || v102 != v103) && (sub_27237865C() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v103)
      {
        return 0;
      }

      swift_beginAccess();
      v104 = *(a1 + 304);
      v105 = *(a1 + 312);
      swift_beginAccess();
      v106 = *(a2 + 312);
      if (v105)
      {
        if (!v106 || (v104 != *(a2 + 304) || v105 != v106) && (sub_27237865C() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v106)
      {
        return 0;
      }

      swift_beginAccess();
      v107 = *(a1 + 320);
      v108 = *(a1 + 328);
      swift_beginAccess();
      v109 = *(a2 + 328);
      if (v108)
      {
        if (!v109 || (v107 != *(a2 + 320) || v108 != v109) && (sub_27237865C() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v109)
      {
        return 0;
      }

      swift_beginAccess();
      v110 = *(a1 + 336);
      v111 = *(a1 + 344);
      swift_beginAccess();
      v112 = *(a2 + 344);
      if (v111)
      {
        if (!v112 || (v110 != *(a2 + 336) || v111 != v112) && (sub_27237865C() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v112)
      {
        return 0;
      }

      swift_beginAccess();
      v113 = *(a1 + 352);
      v114 = *(a1 + 360);
      swift_beginAccess();
      v115 = *(a2 + 360);
      if (v114)
      {
        if (!v115 || (v113 != *(a2 + 352) || v114 != v115) && (sub_27237865C() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v115)
      {
        return 0;
      }

      swift_beginAccess();
      v116 = *(a1 + 368);
      swift_beginAccess();
      v117 = *(a2 + 368);
      if (v116 == 2)
      {
        if (v117 == 2)
        {
          return 1;
        }
      }

      else if (v117 != 2 && ((v116 ^ v117) & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_2721EA870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_272376F0C();
  v4 = a2 + *(a1 + 20);
  sub_272376F5C();
  v5 = *(a1 + 24);
  if (qword_2808833D8 != -1)
  {
    swift_once();
  }

  *(a2 + v5) = qword_2808833E0;
}

uint64_t sub_2721EA960(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F106C(&qword_280881780, type metadata accessor for Sentencepiece_TrainerSpec);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2721EAA00(uint64_t a1)
{
  v2 = sub_2721F106C(&qword_280881650, type metadata accessor for Sentencepiece_TrainerSpec);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2721EAA6C()
{
  sub_2721F106C(&qword_280881650, type metadata accessor for Sentencepiece_TrainerSpec);

  return sub_27237709C();
}

uint64_t sub_2721EAAEC()
{
  v0 = sub_27237717C();
  sub_2721F408C(v0, qword_280893930);
  sub_2721F08DC(v0, qword_280893930);
  sub_2721F065C(&qword_280881798, &qword_27237BE78);
  v1 = (sub_2721F065C(&qword_2808817A0, &qword_27237BE80) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_27237AF60;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "UNIGRAM";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_27237715C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "BPE";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "WORD";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "CHAR";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_27237716C();
}

uint64_t sub_2721EAD58()
{
  v0 = sub_27237717C();
  sub_2721F408C(v0, qword_280893948);
  sub_2721F08DC(v0, qword_280893948);
  sub_2721F065C(&qword_280881798, &qword_27237BE78);
  v1 = (sub_2721F065C(&qword_2808817A0, &qword_27237BE80) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_27237AF70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_27237715C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "precompiled_charsmap";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "add_dummy_prefix";
  *(v13 + 1) = 16;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "remove_extra_whitespaces";
  *(v15 + 1) = 24;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "escape_whitespaces";
  *(v17 + 1) = 18;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "normalization_rule_tsv";
  *(v19 + 1) = 22;
  v19[16] = 2;
  v9();
  return sub_27237716C();
}

uint64_t sub_2721EB030()
{
  result = sub_272376FAC();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4)
        {
          v3 = v0;
          v4 = *(type metadata accessor for Sentencepiece_NormalizerSpec(0) + 36);
LABEL_5:
          v0 = v3;
          sub_272376FCC();
          goto LABEL_6;
        }

        v3 = v0;
        if (result == 5)
        {
          v11 = *(type metadata accessor for Sentencepiece_NormalizerSpec(0) + 40);
          goto LABEL_5;
        }

        if (result == 6)
        {
          v6 = *(type metadata accessor for Sentencepiece_NormalizerSpec(0) + 44);
LABEL_18:
          v0 = v3;
          sub_27237702C();
          goto LABEL_6;
        }
      }

      else
      {
        if (result == 1)
        {
          v3 = v0;
          v7 = *(type metadata accessor for Sentencepiece_NormalizerSpec(0) + 24);
          goto LABEL_18;
        }

        v3 = v0;
        if (result == 2)
        {
          v10 = *(type metadata accessor for Sentencepiece_NormalizerSpec(0) + 28);
          sub_272376FEC();
          goto LABEL_6;
        }

        if (result == 3)
        {
          v5 = *(type metadata accessor for Sentencepiece_NormalizerSpec(0) + 32);
          goto LABEL_5;
        }
      }

      if ((result - 200) >= 0x1FFFFF38)
      {
        v0 = v3;
      }

      else
      {
        v8 = type metadata accessor for Sentencepiece_NormalizerSpec(0);
        sub_2721F106C(&qword_280881668, type metadata accessor for Sentencepiece_NormalizerSpec);
        v9 = *(v8 + 20);
        v0 = v3;
        sub_272376FBC();
      }

LABEL_6:
      result = sub_272376FAC();
    }
  }

  return result;
}

uint64_t sub_2721EB220()
{
  result = type metadata accessor for Sentencepiece_NormalizerSpec(0);
  v3 = result;
  v4 = (v0 + *(result + 24));
  if (v4[1])
  {
    v5 = *v4;
    result = sub_27237711C();
    if (v1)
    {
      return result;
    }
  }

  else if (v1)
  {
    return result;
  }

  v6 = v0 + v3[7];
  v7 = *(v6 + 8);
  if (v7 >> 60 != 15)
  {
    v8 = *v6;
    sub_2721F0560(*v6, *(v6 + 8));
    sub_2723770DC();
    sub_2721F05B4(v8, v7);
  }

  if (*(v0 + v3[8]) != 2)
  {
    sub_2723770BC();
  }

  if (*(v0 + v3[9]) != 2)
  {
    sub_2723770BC();
  }

  sub_2721EB3C0(v0);
  sub_2721EB438(v0);
  v9 = v3[5];
  sub_2723770AC();
  return sub_272376EFC();
}

uint64_t sub_2721EB3C0(uint64_t a1)
{
  result = type metadata accessor for Sentencepiece_NormalizerSpec(0);
  if (*(a1 + *(result + 40)) != 2)
  {
    return sub_2723770BC();
  }

  return result;
}

uint64_t sub_2721EB438(uint64_t a1)
{
  result = type metadata accessor for Sentencepiece_NormalizerSpec(0);
  v3 = (a1 + *(result + 44));
  if (v3[1])
  {
    v4 = *v3;
    return sub_27237711C();
  }

  return result;
}

double sub_2721EB4B0@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_272376F0C();
  v4 = a2 + a1[5];
  sub_272376F5C();
  v5 = a1[7];
  v6 = (a2 + a1[6]);
  *v6 = 0;
  v6[1] = 0;
  result = 0.0;
  *(a2 + v5) = xmmword_27237AF40;
  v8 = a1[9];
  *(a2 + a1[8]) = 2;
  *(a2 + v8) = 2;
  v9 = a1[11];
  *(a2 + a1[10]) = 2;
  v10 = (a2 + v9);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t sub_2721EB568(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F106C(&qword_280881778, type metadata accessor for Sentencepiece_NormalizerSpec);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2721EB608(uint64_t a1)
{
  v2 = sub_2721F106C(&qword_280881668, type metadata accessor for Sentencepiece_NormalizerSpec);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2721EB674()
{
  sub_2721F106C(&qword_280881668, type metadata accessor for Sentencepiece_NormalizerSpec);

  return sub_27237709C();
}

uint64_t sub_2721EB6F4()
{
  v0 = sub_27237717C();
  sub_2721F408C(v0, qword_280893960);
  sub_2721F08DC(v0, qword_280893960);
  sub_2721F065C(&qword_280881798, &qword_27237BE78);
  v1 = (sub_2721F065C(&qword_2808817A0, &qword_27237BE80) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_27237AF80;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "samples";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_27237715C();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_27237716C();
}

uint64_t sub_2721EB860()
{
  result = sub_272376FAC();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Sentencepiece_SelfTestData.Sample(0);
        sub_2721F106C(&qword_2808815F8, type metadata accessor for Sentencepiece_SelfTestData.Sample);
        sub_27237704C();
      }

      else if ((result - 200) <= 0x1FFFFF37)
      {
        v3 = type metadata accessor for Sentencepiece_SelfTestData(0);
        sub_2721F106C(&qword_280881670, type metadata accessor for Sentencepiece_SelfTestData);
        v4 = *(v3 + 24);
        sub_272376FBC();
      }

      result = sub_272376FAC();
    }
  }

  return result;
}

uint64_t sub_2721EB9CC()
{
  v2 = v1;
  if (*(*v0 + 16))
  {
    type metadata accessor for Sentencepiece_SelfTestData.Sample(0);
    sub_2721F106C(&qword_2808815F8, type metadata accessor for Sentencepiece_SelfTestData.Sample);
    result = sub_27237713C();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  v4 = type metadata accessor for Sentencepiece_SelfTestData(0);
  v5 = *(v4 + 24);
  result = sub_2723770AC();
  if (!v2)
  {
    v6 = v0 + *(v4 + 20);
    return sub_272376EFC();
  }

  return result;
}

uint64_t sub_2721EBAD8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = a2 + *(a1 + 20);
  sub_272376F0C();
  v5 = a2 + *(a1 + 24);
  return sub_272376F5C();
}

uint64_t sub_2721EBB98(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F106C(&qword_280881770, type metadata accessor for Sentencepiece_SelfTestData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2721EBC38(uint64_t a1)
{
  v2 = sub_2721F106C(&qword_280881670, type metadata accessor for Sentencepiece_SelfTestData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2721EBCA4()
{
  sub_2721F106C(&qword_280881670, type metadata accessor for Sentencepiece_SelfTestData);

  return sub_27237709C();
}

uint64_t sub_2721EBD20(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_2721EED00(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_272376F1C();
  sub_2721F106C(&qword_280881600, MEMORY[0x277D216C8]);
  if ((sub_2723777DC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 24);
  sub_272376F6C();
  sub_2721F106C(&qword_280881608, MEMORY[0x277D21710]);
  return sub_2723777DC() & 1;
}

uint64_t sub_2721EBE28()
{
  result = MEMORY[0x2743C4AD0](0x656C706D61532ELL, 0xE700000000000000);
  qword_280893978 = 0xD00000000000001ALL;
  unk_280893980 = 0x80000002723877A0;
  return result;
}

uint64_t sub_2721EBE94()
{
  v0 = sub_27237717C();
  sub_2721F408C(v0, qword_280893988);
  sub_2721F08DC(v0, qword_280893988);
  sub_2721F065C(&qword_280881798, &qword_27237BE78);
  v1 = (sub_2721F065C(&qword_2808817A0, &qword_27237BE80) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_27237AF90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "input";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_27237715C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "expected";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_27237716C();
}

uint64_t sub_2721EC05C()
{
  while (1)
  {
    result = sub_272376FAC();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result == 1)
    {
      v1 = *(type metadata accessor for Sentencepiece_SelfTestData.Sample(0) + 20);
      goto LABEL_3;
    }

    if (result == 2)
    {
      v4 = *(type metadata accessor for Sentencepiece_SelfTestData.Sample(0) + 24);
LABEL_3:
      v0 = 0;
      sub_27237702C();
    }
  }
}

uint64_t sub_2721EC104()
{
  result = type metadata accessor for Sentencepiece_SelfTestData.Sample(0);
  v3 = result;
  v4 = (v0 + *(result + 20));
  if (v4[1])
  {
    v5 = *v4;
    result = sub_27237711C();
    if (v1)
    {
      return result;
    }
  }

  else if (v1)
  {
    return result;
  }

  v6 = (v0 + *(v3 + 24));
  if (v6[1])
  {
    v7 = *v6;
    sub_27237711C();
  }

  return sub_272376EFC();
}

uint64_t sub_2721EC1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_272376F0C();
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_2721EC25C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F106C(&qword_280881768, type metadata accessor for Sentencepiece_SelfTestData.Sample);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2721EC2FC(uint64_t a1)
{
  v2 = sub_2721F106C(&qword_2808815F8, type metadata accessor for Sentencepiece_SelfTestData.Sample);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2721EC368()
{
  sub_2721F106C(&qword_2808815F8, type metadata accessor for Sentencepiece_SelfTestData.Sample);

  return sub_27237709C();
}

uint64_t sub_2721EC3E8()
{
  v0 = sub_27237717C();
  sub_2721F408C(v0, qword_2808939A0);
  sub_2721F08DC(v0, qword_2808939A0);
  sub_2721F065C(&qword_280881798, &qword_27237BE78);
  v1 = (sub_2721F065C(&qword_2808817A0, &qword_27237BE80) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_27237AFA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "pieces";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_27237715C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "trainer_spec";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "normalizer_spec";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "self_test_data";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v9();
  v16 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v16 = "denormalizer_spec";
  *(v16 + 8) = 17;
  *(v16 + 16) = 2;
  v9();
  return sub_27237716C();
}

BOOL sub_2721EC688()
{
  v1 = v0;
  v2 = sub_2721F065C(&qword_2808815E0, &qword_27237AFE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v51 = &v46 - v4;
  v5 = type metadata accessor for Sentencepiece_SelfTestData(0);
  v49 = *(v5 - 8);
  v50 = v5;
  v6 = *(v49 + 64);
  MEMORY[0x28223BE20](v5);
  v48 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2721F065C(&qword_2808815D8, &qword_27237AFD8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v46 - v13;
  v15 = type metadata accessor for Sentencepiece_NormalizerSpec(0);
  v52 = *(v15 - 8);
  v53 = v15;
  v16 = *(v52 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v47 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v46 - v19;
  v21 = sub_2721F065C(&qword_2808815D0, &qword_27237AFD0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v46 - v23;
  v25 = type metadata accessor for Sentencepiece_TrainerSpec(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Sentencepiece_ModelProto(0);
  v31 = v0 + v30[6];
  if ((sub_272376F4C() & 1) == 0)
  {
    return 0;
  }

  v46 = v12;
  sub_2721ECC88(*v1);
  v32 = sub_272376EEC();

  if ((v32 & 1) == 0)
  {
    return 0;
  }

  sub_2721F07F4(v1 + v30[7], v24, &qword_2808815D0, &qword_27237AFD0);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_2721F40F0(v24, &qword_2808815D0, &qword_27237AFD0);
    v33 = v46;
  }

  else
  {
    sub_2721F06C4(v24, v29, type metadata accessor for Sentencepiece_TrainerSpec);
    v34 = &v29[*(v25 + 20)];
    LOBYTE(v34) = sub_272376F4C();
    sub_2721F0794(v29, type metadata accessor for Sentencepiece_TrainerSpec);
    v33 = v46;
    if ((v34 & 1) == 0)
    {
      return 0;
    }
  }

  sub_2721F07F4(v1 + v30[8], v14, &qword_2808815D8, &qword_27237AFD8);
  v35 = v53;
  v36 = *(v52 + 48);
  if (v36(v14, 1, v53) == 1)
  {
    sub_2721F40F0(v14, &qword_2808815D8, &qword_27237AFD8);
  }

  else
  {
    sub_2721F06C4(v14, v20, type metadata accessor for Sentencepiece_NormalizerSpec);
    v37 = &v20[*(v35 + 20)];
    LOBYTE(v37) = sub_272376F4C();
    sub_2721F0794(v20, type metadata accessor for Sentencepiece_NormalizerSpec);
    if ((v37 & 1) == 0)
    {
      return 0;
    }
  }

  v38 = v51;
  sub_2721F07F4(v1 + v30[9], v51, &qword_2808815E0, &qword_27237AFE0);
  v39 = v50;
  if ((*(v49 + 48))(v38, 1, v50) == 1)
  {
    sub_2721F40F0(v38, &qword_2808815E0, &qword_27237AFE0);
  }

  else
  {
    v40 = v48;
    sub_2721F06C4(v38, v48, type metadata accessor for Sentencepiece_SelfTestData);
    v41 = v40 + *(v39 + 24);
    LOBYTE(v41) = sub_272376F4C();
    sub_2721F0794(v40, type metadata accessor for Sentencepiece_SelfTestData);
    if ((v41 & 1) == 0)
    {
      return 0;
    }
  }

  sub_2721F07F4(v1 + v30[10], v33, &qword_2808815D8, &qword_27237AFD8);
  if (v36(v33, 1, v35) == 1)
  {
    sub_2721F40F0(v33, &qword_2808815D8, &qword_27237AFD8);
    return 1;
  }

  v42 = v47;
  sub_2721F06C4(v33, v47, type metadata accessor for Sentencepiece_NormalizerSpec);
  v43 = v42 + *(v35 + 20);
  v44 = sub_272376F4C();
  sub_2721F0794(v42, type metadata accessor for Sentencepiece_NormalizerSpec);
  return (v44 & 1) != 0;
}

uint64_t sub_2721ECC88(uint64_t a1)
{
  v2 = type metadata accessor for Sentencepiece_ModelProto.SentencePiece(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v18 = MEMORY[0x277D84F90];
    sub_2721EF768(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_2721F072C(v9, v6, type metadata accessor for Sentencepiece_ModelProto.SentencePiece);
      v18 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_2721EF768((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = sub_2721F106C(&qword_280881620, type metadata accessor for Sentencepiece_ModelProto.SentencePiece);
      v13 = sub_2721F4150(&v15);
      sub_2721F072C(v6, v13, type metadata accessor for Sentencepiece_ModelProto.SentencePiece);
      *(v8 + 16) = v12 + 1;
      sub_2721F41B4(&v15, v8 + 40 * v12 + 32);
      sub_2721F0794(v6, type metadata accessor for Sentencepiece_ModelProto.SentencePiece);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_2721ECE7C()
{
  result = sub_272376FAC();
  if (!v0)
  {
    for (i = result; ; i = result)
    {
      if (v2)
      {
        return result;
      }

      if (i <= 2)
      {
        v4 = v0;
        if (i == 1)
        {
          type metadata accessor for Sentencepiece_ModelProto.SentencePiece(0);
          sub_2721F106C(&qword_280881620, type metadata accessor for Sentencepiece_ModelProto.SentencePiece);
          sub_27237704C();
          goto LABEL_5;
        }

        if (i == 2)
        {
          v8 = *(type metadata accessor for Sentencepiece_ModelProto(0) + 28);
          type metadata accessor for Sentencepiece_TrainerSpec(0);
          v6 = type metadata accessor for Sentencepiece_TrainerSpec;
          v7 = &qword_280881650;
          goto LABEL_17;
        }
      }

      else
      {
        if (i == 3)
        {
          v9 = *(type metadata accessor for Sentencepiece_ModelProto(0) + 32);
          type metadata accessor for Sentencepiece_NormalizerSpec(0);
          sub_2721F106C(&qword_280881668, type metadata accessor for Sentencepiece_NormalizerSpec);
          goto LABEL_18;
        }

        v4 = v0;
        if (i == 4)
        {
          v10 = *(type metadata accessor for Sentencepiece_ModelProto(0) + 36);
          type metadata accessor for Sentencepiece_SelfTestData(0);
          v6 = type metadata accessor for Sentencepiece_SelfTestData;
          v7 = &qword_280881670;
LABEL_17:
          sub_2721F106C(v7, v6);
          v0 = v4;
LABEL_18:
          sub_27237705C();
          goto LABEL_5;
        }

        if (i == 5)
        {
          v5 = *(type metadata accessor for Sentencepiece_ModelProto(0) + 40);
          type metadata accessor for Sentencepiece_NormalizerSpec(0);
          v6 = type metadata accessor for Sentencepiece_NormalizerSpec;
          v7 = &qword_280881668;
          goto LABEL_17;
        }
      }

      if ((i - 200) > 0x1FFFFF37)
      {
        v0 = v4;
      }

      else
      {
        v11 = type metadata accessor for Sentencepiece_ModelProto(0);
        sub_2721F106C(&qword_280881690, type metadata accessor for Sentencepiece_ModelProto);
        v12 = *(v11 + 24);
        v0 = v4;
        sub_272376FBC();
      }

LABEL_5:
      result = sub_272376FAC();
    }
  }

  return result;
}

uint64_t sub_2721ED188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Sentencepiece_ModelProto.SentencePiece(0), sub_2721F106C(&qword_280881620, type metadata accessor for Sentencepiece_ModelProto.SentencePiece), result = sub_27237713C(), !v4))
  {
    result = sub_2721ED2F4(v3, a1, a2, a3);
    if (!v4)
    {
      sub_2721ED510(v3, a1, a2, a3);
      sub_2721ED72C(v3, a1, a2, a3);
      sub_2721ED948(v3, a1, a2, a3);
      v9 = type metadata accessor for Sentencepiece_ModelProto(0);
      v10 = *(v9 + 24);
      sub_2723770AC();
      v11 = v3 + *(v9 + 20);
      return sub_272376EFC();
    }
  }

  return result;
}

uint64_t sub_2721ED2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_2721F065C(&qword_2808815D0, &qword_27237AFD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Sentencepiece_TrainerSpec(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Sentencepiece_ModelProto(0);
  sub_2721F07F4(a1 + *(v14 + 28), v8, &qword_2808815D0, &qword_27237AFD0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_2721F40F0(v8, &qword_2808815D0, &qword_27237AFD0);
  }

  sub_2721F06C4(v8, v13, type metadata accessor for Sentencepiece_TrainerSpec);
  sub_2721F106C(&qword_280881650, type metadata accessor for Sentencepiece_TrainerSpec);
  sub_27237714C();
  return sub_2721F0794(v13, type metadata accessor for Sentencepiece_TrainerSpec);
}

uint64_t sub_2721ED510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_2721F065C(&qword_2808815D8, &qword_27237AFD8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Sentencepiece_NormalizerSpec(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Sentencepiece_ModelProto(0);
  sub_2721F07F4(a1 + *(v14 + 32), v8, &qword_2808815D8, &qword_27237AFD8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_2721F40F0(v8, &qword_2808815D8, &qword_27237AFD8);
  }

  sub_2721F06C4(v8, v13, type metadata accessor for Sentencepiece_NormalizerSpec);
  sub_2721F106C(&qword_280881668, type metadata accessor for Sentencepiece_NormalizerSpec);
  sub_27237714C();
  return sub_2721F0794(v13, type metadata accessor for Sentencepiece_NormalizerSpec);
}

uint64_t sub_2721ED72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_2721F065C(&qword_2808815E0, &qword_27237AFE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Sentencepiece_SelfTestData(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Sentencepiece_ModelProto(0);
  sub_2721F07F4(a1 + *(v14 + 36), v8, &qword_2808815E0, &qword_27237AFE0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_2721F40F0(v8, &qword_2808815E0, &qword_27237AFE0);
  }

  sub_2721F06C4(v8, v13, type metadata accessor for Sentencepiece_SelfTestData);
  sub_2721F106C(&qword_280881670, type metadata accessor for Sentencepiece_SelfTestData);
  sub_27237714C();
  return sub_2721F0794(v13, type metadata accessor for Sentencepiece_SelfTestData);
}

uint64_t sub_2721ED948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_2721F065C(&qword_2808815D8, &qword_27237AFD8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Sentencepiece_NormalizerSpec(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Sentencepiece_ModelProto(0);
  sub_2721F07F4(a1 + *(v14 + 40), v8, &qword_2808815D8, &qword_27237AFD8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_2721F40F0(v8, &qword_2808815D8, &qword_27237AFD8);
  }

  sub_2721F06C4(v8, v13, type metadata accessor for Sentencepiece_NormalizerSpec);
  sub_2721F106C(&qword_280881668, type metadata accessor for Sentencepiece_NormalizerSpec);
  sub_27237714C();
  return sub_2721F0794(v13, type metadata accessor for Sentencepiece_NormalizerSpec);
}

uint64_t sub_2721EDB64@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = &a2[a1[5]];
  sub_272376F0C();
  v5 = &a2[a1[6]];
  sub_272376F5C();
  v6 = a1[7];
  v7 = type metadata accessor for Sentencepiece_TrainerSpec(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[8];
  v9 = type metadata accessor for Sentencepiece_NormalizerSpec(0);
  v14 = *(*(v9 - 8) + 56);
  (v14)((v9 - 8), &a2[v8], 1, 1, v9);
  v10 = a1[9];
  v11 = type metadata accessor for Sentencepiece_SelfTestData(0);
  (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  v12 = &a2[a1[10]];

  return v14(v12, 1, 1, v9);
}

uint64_t sub_2721EDCFC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 20);
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t sub_2721EDD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *(a2 + 20);
  v7 = a4(0);
  v8 = *(*(v7 - 8) + 40);

  return v8(v4 + v6, a1, v7);
}

uint64_t sub_2721EDE34(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F106C(&qword_280881760, type metadata accessor for Sentencepiece_ModelProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2721EDED4(uint64_t a1)
{
  v2 = sub_2721F106C(&qword_280881690, type metadata accessor for Sentencepiece_ModelProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2721EDF40()
{
  sub_2721F106C(&qword_280881690, type metadata accessor for Sentencepiece_ModelProto);

  return sub_27237709C();
}

uint64_t sub_2721EDFC0()
{
  result = MEMORY[0x2743C4AD0](0x636E65746E65532ELL, 0xEE00656365695065);
  qword_2808939B8 = 0xD000000000000018;
  unk_2808939C0 = 0x80000002723877C0;
  return result;
}

uint64_t sub_2721EE038()
{
  v0 = sub_27237717C();
  sub_2721F408C(v0, qword_2808939C8);
  sub_2721F08DC(v0, qword_2808939C8);
  sub_2721F065C(&qword_280881798, &qword_27237BE78);
  v1 = (sub_2721F065C(&qword_2808817A0, &qword_27237BE80) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_27237AFB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "piece";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_27237715C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "score";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "type";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_27237716C();
}

uint64_t sub_2721EE24C()
{
  result = sub_272376FAC();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          v5 = *(type metadata accessor for Sentencepiece_ModelProto.SentencePiece(0) + 32);
          sub_2721F3FE4();
          sub_272376FDC();
          break;
        case 2:
          v3 = *(type metadata accessor for Sentencepiece_ModelProto.SentencePiece(0) + 28);
          sub_272376FFC();
          break;
        case 1:
          v4 = *(type metadata accessor for Sentencepiece_ModelProto.SentencePiece(0) + 24);
          sub_27237702C();
          break;
        default:
          if ((result - 200) <= 0x1FFFFF37)
          {
            v6 = type metadata accessor for Sentencepiece_ModelProto.SentencePiece(0);
            sub_2721F106C(&qword_280881620, type metadata accessor for Sentencepiece_ModelProto.SentencePiece);
            v7 = *(v6 + 20);
            sub_272376FBC();
          }

          break;
      }

      result = sub_272376FAC();
    }
  }

  return result;
}

uint64_t sub_2721EE3F4()
{
  result = type metadata accessor for Sentencepiece_ModelProto.SentencePiece(0);
  v3 = result;
  v4 = (v0 + *(result + 24));
  if (v4[1])
  {
    v5 = *v4;
    result = sub_27237711C();
    if (v1)
    {
      return result;
    }
  }

  else if (v1)
  {
    return result;
  }

  v6 = (v0 + v3[7]);
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    sub_2723770EC();
  }

  if (*(v0 + v3[8]) != 6)
  {
    v9 = *(v0 + v3[8]);
    sub_2721F3FE4();
    sub_2723770CC();
  }

  v8 = v3[5];
  sub_2723770AC();
  return sub_272376EFC();
}

uint64_t sub_2721EE520@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_272376F0C();
  v4 = a2 + a1[5];
  result = sub_272376F5C();
  v6 = a1[7];
  v7 = (a2 + a1[6]);
  *v7 = 0;
  v7[1] = 0;
  v8 = a2 + v6;
  *v8 = 0;
  *(v8 + 4) = 1;
  *(a2 + a1[8]) = 6;
  return result;
}

uint64_t sub_2721EE5A4(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (*a3 != -1)
  {
    v8 = a5;
    v9 = a4;
    swift_once();
    a4 = v9;
    a5 = v8;
  }

  v5 = *a4;
  v6 = *a5;

  return v5;
}

uint64_t sub_2721EE634@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_272376F1C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2721EE6A0(uint64_t a1)
{
  v3 = sub_272376F1C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_2721EE73C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F106C(&qword_280881758, type metadata accessor for Sentencepiece_ModelProto.SentencePiece);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2721EE7E0(uint64_t a1)
{
  v2 = sub_2721F106C(&qword_280881620, type metadata accessor for Sentencepiece_ModelProto.SentencePiece);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2721EE850()
{
  sub_27237874C();
  sub_27237777C();
  return sub_27237878C();
}

uint64_t sub_2721EE8A8()
{
  sub_2721F106C(&qword_280881620, type metadata accessor for Sentencepiece_ModelProto.SentencePiece);

  return sub_27237709C();
}

uint64_t sub_2721EE928()
{
  sub_27237874C();
  sub_27237777C();
  return sub_27237878C();
}

uint64_t sub_2721EE980()
{
  v0 = sub_27237717C();
  sub_2721F408C(v0, qword_2808939E0);
  sub_2721F08DC(v0, qword_2808939E0);
  sub_2721F065C(&qword_280881798, &qword_27237BE78);
  v1 = (sub_2721F065C(&qword_2808817A0, &qword_27237BE80) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_27237AF70;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "NORMAL";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_27237715C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "UNKNOWN";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "CONTROL";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "USER_DEFINED";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "UNUSED";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "BYTE";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v8();
  return sub_27237716C();
}

uint64_t sub_2721EEC64@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_27237717C();
  v6 = sub_2721F08DC(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_2721EED00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Sentencepiece_SelfTestData.Sample(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = (MEMORY[0x28223BE20])();
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v31 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (v12 && a1 != a2)
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        sub_2721F072C(v14, v11, type metadata accessor for Sentencepiece_SelfTestData.Sample);
        sub_2721F072C(v15, v8, type metadata accessor for Sentencepiece_SelfTestData.Sample);
        v17 = *(v4 + 20);
        v18 = &v11[v17];
        v19 = *&v11[v17 + 8];
        v20 = &v8[v17];
        v21 = *(v20 + 1);
        if (v19)
        {
          if (!v21 || (*v18 == *v20 ? (v22 = v19 == v21) : (v22 = 0), !v22 && (sub_27237865C() & 1) == 0))
          {
LABEL_27:
            sub_2721F0794(v8, type metadata accessor for Sentencepiece_SelfTestData.Sample);
            sub_2721F0794(v11, type metadata accessor for Sentencepiece_SelfTestData.Sample);
            goto LABEL_28;
          }
        }

        else if (v21)
        {
          goto LABEL_27;
        }

        v23 = *(v4 + 24);
        v24 = &v11[v23];
        v25 = *&v11[v23 + 8];
        v26 = &v8[v23];
        v27 = *(v26 + 1);
        if (v25)
        {
          if (!v27)
          {
            goto LABEL_27;
          }

          v28 = *v24 == *v26 && v25 == v27;
          if (!v28 && (sub_27237865C() & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        else if (v27)
        {
          goto LABEL_27;
        }

        sub_272376F1C();
        sub_2721F106C(&qword_280881600, MEMORY[0x277D216C8]);
        v29 = sub_2723777DC();
        sub_2721F0794(v8, type metadata accessor for Sentencepiece_SelfTestData.Sample);
        sub_2721F0794(v11, type metadata accessor for Sentencepiece_SelfTestData.Sample);
        if (v29)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v29 & 1;
      }
    }

    v29 = 1;
  }

  else
  {
LABEL_28:
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t sub_2721EEFC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Sentencepiece_ModelProto.SentencePiece(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v34 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (v12 && a1 != a2)
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        sub_2721F072C(v14, v11, type metadata accessor for Sentencepiece_ModelProto.SentencePiece);
        sub_2721F072C(v15, v8, type metadata accessor for Sentencepiece_ModelProto.SentencePiece);
        v17 = v4[6];
        v18 = &v11[v17];
        v19 = *&v11[v17 + 8];
        v20 = &v8[v17];
        v21 = *(v20 + 1);
        if (v19)
        {
          if (!v21)
          {
            goto LABEL_30;
          }

          v22 = *v18 == *v20 && v19 == v21;
          if (!v22 && (sub_27237865C() & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        else if (v21)
        {
          goto LABEL_30;
        }

        v23 = v4[7];
        v24 = &v11[v23];
        v25 = v11[v23 + 4];
        v26 = &v8[v23];
        v27 = v8[v23 + 4];
        if (v25)
        {
          if (!v27)
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (*v24 != *v26)
          {
            LOBYTE(v27) = 1;
          }

          if (v27)
          {
LABEL_30:
            sub_2721F0794(v8, type metadata accessor for Sentencepiece_ModelProto.SentencePiece);
            sub_2721F0794(v11, type metadata accessor for Sentencepiece_ModelProto.SentencePiece);
            goto LABEL_31;
          }
        }

        v28 = v4[8];
        v29 = v11[v28];
        v30 = v8[v28];
        if (v29 == 6)
        {
          if (v30 != 6)
          {
            goto LABEL_30;
          }
        }

        else if (v30 == 6 || qword_27237BEB8[v29] != qword_27237BEB8[v30])
        {
          goto LABEL_30;
        }

        sub_272376F1C();
        sub_2721F106C(&qword_280881600, MEMORY[0x277D216C8]);
        if ((sub_2723777DC() & 1) == 0)
        {
          goto LABEL_30;
        }

        v31 = v4[5];
        sub_272376F6C();
        sub_2721F106C(&qword_280881608, MEMORY[0x277D21710]);
        v32 = sub_2723777DC();
        sub_2721F0794(v8, type metadata accessor for Sentencepiece_ModelProto.SentencePiece);
        sub_2721F0794(v11, type metadata accessor for Sentencepiece_ModelProto.SentencePiece);
        if (v32)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v32 & 1;
      }
    }

    v32 = 1;
  }

  else
  {
LABEL_31:
    v32 = 0;
  }

  return v32 & 1;
}

uint64_t sub_2721EF318(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_27237865C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_2721EF3A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_272376BDC();
    if (v10)
    {
      v11 = sub_272376BFC();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_272376BEC();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_272376BDC();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_272376BFC();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_272376BEC();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2721EF5D8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2721F0914(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2721F05C8(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_2721EF3A8(v14, a3, a4, &v13);
  v10 = v4;
  sub_2721F05C8(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

void *sub_2721EF768(void *a1, int64_t a2, char a3)
{
  result = sub_2721EF788(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2721EF788(void *result, int64_t a2, char a3, void *a4)
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
    sub_2721F065C(&qword_2808817C0, &qword_27237BEA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2721F065C(&qword_2808817C8, &unk_27237BEA8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2721EF8D0(uint64_t a1)
{
  v3 = MEMORY[0x277D84F90];
  *(v1 + 16) = MEMORY[0x277D84F90];
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 56) = 4;
  *(v1 + 60) = 0;
  *(v1 + 64) = 1;
  *(v1 + 72) = v3;
  *(v1 + 80) = 0;
  *(v1 + 84) = 513;
  *(v1 + 88) = 0;
  *(v1 + 92) = 1;
  *(v1 + 96) = 0;
  *(v1 + 108) = 0;
  *(v1 + 104) = 1;
  *(v1 + 112) = 1;
  *(v1 + 120) = 0;
  *(v1 + 128) = 513;
  *(v1 + 132) = 0;
  *(v1 + 140) = 0;
  *(v1 + 136) = 1;
  *(v1 + 144) = 1;
  *(v1 + 148) = 0;
  *(v1 + 152) = 1;
  *(v1 + 156) = 0;
  *(v1 + 164) = 0;
  *(v1 + 160) = 1;
  *(v1 + 168) = 1;
  *(v1 + 172) = 0;
  *(v1 + 176) = 1;
  *(v1 + 180) = 0;
  *(v1 + 188) = 0;
  *(v1 + 184) = 1;
  *(v1 + 192) = 1;
  *(v1 + 197) = 514;
  *(v1 + 193) = 33686018;
  *(v1 + 200) = 0;
  *(v1 + 216) = v3;
  *(v1 + 224) = v3;
  *(v1 + 208) = 0;
  *(v1 + 240) = 0;
  *(v1 + 232) = 0;
  *(v1 + 248) = 33686018;
  *(v1 + 256) = 1;
  *(v1 + 260) = 0;
  *(v1 + 264) = 1;
  *(v1 + 268) = 0;
  *(v1 + 272) = 1;
  *(v1 + 276) = 0;
  *(v1 + 280) = 1;
  *(v1 + 288) = 0u;
  *(v1 + 304) = 0u;
  *(v1 + 320) = 0u;
  *(v1 + 336) = 0u;
  *(v1 + 352) = 0u;
  *(v1 + 368) = 2;
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v4;
  swift_beginAccess();
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v6;
  *(v1 + 32) = v5;
  swift_beginAccess();
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 40) = v8;
  *(v1 + 48) = v7;
  swift_beginAccess();
  LOBYTE(v8) = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v8;
  swift_beginAccess();
  LODWORD(v8) = *(a1 + 60);
  v9 = *(a1 + 64);
  swift_beginAccess();
  *(v1 + 60) = v8;
  *(v1 + 64) = v9;
  swift_beginAccess();
  v10 = *(a1 + 72);
  swift_beginAccess();
  v11 = *(v1 + 72);
  *(v1 + 72) = v10;

  swift_beginAccess();
  LODWORD(v7) = *(a1 + 80);
  LOBYTE(v4) = *(a1 + 84);
  swift_beginAccess();
  *(v1 + 80) = v7;
  *(v1 + 84) = v4;
  swift_beginAccess();
  LOBYTE(v7) = *(a1 + 85);
  swift_beginAccess();
  *(v1 + 85) = v7;
  swift_beginAccess();
  LODWORD(v7) = *(a1 + 88);
  LOBYTE(v4) = *(a1 + 92);
  swift_beginAccess();
  *(v1 + 88) = v7;
  *(v1 + 92) = v4;
  swift_beginAccess();
  v12 = *(a1 + 96);
  LOBYTE(v4) = *(a1 + 104);
  swift_beginAccess();
  *(v1 + 96) = v12;
  *(v1 + 104) = v4;
  swift_beginAccess();
  LODWORD(v12) = *(a1 + 108);
  LOBYTE(v4) = *(a1 + 112);
  swift_beginAccess();
  *(v1 + 108) = v12;
  *(v1 + 112) = v4;
  swift_beginAccess();
  v13 = *(a1 + 120);
  LOBYTE(v4) = *(a1 + 128);
  swift_beginAccess();
  *(v1 + 120) = v13;
  *(v1 + 128) = v4;
  swift_beginAccess();
  LOBYTE(v13) = *(a1 + 129);
  swift_beginAccess();
  *(v1 + 129) = v13;
  swift_beginAccess();
  LODWORD(v13) = *(a1 + 132);
  LOBYTE(v4) = *(a1 + 136);
  swift_beginAccess();
  *(v1 + 132) = v13;
  *(v1 + 136) = v4;
  swift_beginAccess();
  LODWORD(v13) = *(a1 + 140);
  LOBYTE(v4) = *(a1 + 144);
  swift_beginAccess();
  *(v1 + 140) = v13;
  *(v1 + 144) = v4;
  swift_beginAccess();
  LODWORD(v13) = *(a1 + 148);
  LOBYTE(v4) = *(a1 + 152);
  swift_beginAccess();
  *(v1 + 148) = v13;
  *(v1 + 152) = v4;
  swift_beginAccess();
  LODWORD(v13) = *(a1 + 156);
  LOBYTE(v4) = *(a1 + 160);
  swift_beginAccess();
  *(v1 + 156) = v13;
  *(v1 + 160) = v4;
  swift_beginAccess();
  LODWORD(v13) = *(a1 + 164);
  LOBYTE(v4) = *(a1 + 168);
  swift_beginAccess();
  *(v1 + 164) = v13;
  *(v1 + 168) = v4;
  swift_beginAccess();
  LODWORD(v13) = *(a1 + 172);
  LOBYTE(v4) = *(a1 + 176);
  swift_beginAccess();
  *(v1 + 172) = v13;
  *(v1 + 176) = v4;
  swift_beginAccess();
  LODWORD(v13) = *(a1 + 180);
  LOBYTE(v4) = *(a1 + 184);
  swift_beginAccess();
  *(v1 + 180) = v13;
  *(v1 + 184) = v4;
  swift_beginAccess();
  LODWORD(v13) = *(a1 + 188);
  LOBYTE(v4) = *(a1 + 192);
  swift_beginAccess();
  *(v1 + 188) = v13;
  *(v1 + 192) = v4;
  swift_beginAccess();
  LOBYTE(v13) = *(a1 + 193);
  swift_beginAccess();
  *(v1 + 193) = v13;
  swift_beginAccess();
  LOBYTE(v13) = *(a1 + 194);
  swift_beginAccess();
  *(v1 + 194) = v13;
  swift_beginAccess();
  LOBYTE(v13) = *(a1 + 195);
  swift_beginAccess();
  *(v1 + 195) = v13;
  swift_beginAccess();
  LOBYTE(v13) = *(a1 + 196);
  swift_beginAccess();
  *(v1 + 196) = v13;
  swift_beginAccess();
  LOBYTE(v13) = *(a1 + 197);
  swift_beginAccess();
  *(v1 + 197) = v13;
  swift_beginAccess();
  LOBYTE(v13) = *(a1 + 198);
  swift_beginAccess();
  *(v1 + 198) = v13;
  swift_beginAccess();
  v15 = *(a1 + 200);
  v14 = *(a1 + 208);
  swift_beginAccess();
  v16 = *(v1 + 208);
  *(v1 + 200) = v15;
  *(v1 + 208) = v14;

  swift_beginAccess();
  v17 = *(a1 + 216);
  swift_beginAccess();
  v18 = *(v1 + 216);
  *(v1 + 216) = v17;

  swift_beginAccess();
  v19 = *(a1 + 224);
  swift_beginAccess();
  v20 = *(v1 + 224);
  *(v1 + 224) = v19;

  swift_beginAccess();
  v22 = *(a1 + 232);
  v21 = *(a1 + 240);
  swift_beginAccess();
  v23 = *(v1 + 240);
  *(v1 + 232) = v22;
  *(v1 + 240) = v21;

  swift_beginAccess();
  LOBYTE(v21) = *(a1 + 248);
  swift_beginAccess();
  *(v1 + 248) = v21;
  swift_beginAccess();
  LOBYTE(v21) = *(a1 + 249);
  swift_beginAccess();
  *(v1 + 249) = v21;
  swift_beginAccess();
  LOBYTE(v21) = *(a1 + 250);
  swift_beginAccess();
  *(v1 + 250) = v21;
  swift_beginAccess();
  LOBYTE(v21) = *(a1 + 251);
  swift_beginAccess();
  *(v1 + 251) = v21;
  swift_beginAccess();
  LODWORD(v21) = *(a1 + 252);
  LOBYTE(v23) = *(a1 + 256);
  swift_beginAccess();
  *(v1 + 252) = v21;
  *(v1 + 256) = v23;
  swift_beginAccess();
  LODWORD(v21) = *(a1 + 260);
  LOBYTE(v23) = *(a1 + 264);
  swift_beginAccess();
  *(v1 + 260) = v21;
  *(v1 + 264) = v23;
  swift_beginAccess();
  LODWORD(v21) = *(a1 + 268);
  LOBYTE(v23) = *(a1 + 272);
  swift_beginAccess();
  *(v1 + 268) = v21;
  *(v1 + 272) = v23;
  swift_beginAccess();
  LODWORD(v21) = *(a1 + 276);
  LOBYTE(v23) = *(a1 + 280);
  swift_beginAccess();
  *(v1 + 276) = v21;
  *(v1 + 280) = v23;
  swift_beginAccess();
  v25 = *(a1 + 288);
  v24 = *(a1 + 296);
  swift_beginAccess();
  v26 = *(v1 + 296);
  *(v1 + 288) = v25;
  *(v1 + 296) = v24;

  swift_beginAccess();
  v28 = *(a1 + 304);
  v27 = *(a1 + 312);
  swift_beginAccess();
  v29 = *(v1 + 312);
  *(v1 + 304) = v28;
  *(v1 + 312) = v27;

  swift_beginAccess();
  v31 = *(a1 + 320);
  v30 = *(a1 + 328);
  swift_beginAccess();
  v32 = *(v1 + 328);
  *(v1 + 320) = v31;
  *(v1 + 328) = v30;

  swift_beginAccess();
  v34 = *(a1 + 336);
  v33 = *(a1 + 344);
  swift_beginAccess();
  v35 = *(v1 + 344);
  *(v1 + 336) = v34;
  *(v1 + 344) = v33;

  swift_beginAccess();
  v37 = *(a1 + 352);
  v36 = *(a1 + 360);
  swift_beginAccess();
  v38 = *(v1 + 360);
  *(v1 + 352) = v37;
  *(v1 + 360) = v36;

  swift_beginAccess();
  LOBYTE(a1) = *(a1 + 368);
  swift_beginAccess();
  *(v1 + 368) = a1;
  return v1;
}

uint64_t sub_2721F0508(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

uint64_t sub_2721F054C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2721F0560(a1, a2);
  }

  return a1;
}

uint64_t sub_2721F0560(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2721F05B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2721F05C8(a1, a2);
  }

  return a1;
}

uint64_t sub_2721F05C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2721F065C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2721F06C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2721F072C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2721F0794(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2721F07F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2721F065C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2721F087C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2721F08B4(unint64_t a1)
{
  if (a1 >= 7)
  {
    return 6;
  }

  else
  {
    return (0x4050302010006uLL >> (8 * a1));
  }
}

uint64_t sub_2721F08DC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2721F0914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_272376BDC();
  v11 = result;
  if (result)
  {
    result = sub_272376BFC();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_272376BEC();
  sub_2721EF3A8(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_2721F09CC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_2721F0560(a3, a4);
          return sub_2721EF5D8(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2721F0B34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Sentencepiece_NormalizerSpec(0);
  v5 = v4[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_27237865C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = v4[7];
  v13 = *(a1 + v11);
  v12 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v16 = *v14;
  v15 = v14[1];
  if (v12 >> 60 == 15)
  {
    if (v15 >> 60 == 15)
    {
      sub_2721F054C(v13, v12);
      sub_2721F054C(v16, v15);
      sub_2721F05B4(v13, v12);
      goto LABEL_17;
    }

LABEL_14:
    sub_2721F054C(v13, v12);
    sub_2721F054C(v16, v15);
    sub_2721F05B4(v13, v12);
    sub_2721F05B4(v16, v15);
    return 0;
  }

  if (v15 >> 60 == 15)
  {
    goto LABEL_14;
  }

  sub_2721F054C(v13, v12);
  sub_2721F054C(v16, v15);
  v18 = sub_2721F09CC(v13, v12, v16, v15);
  sub_2721F05B4(v16, v15);
  sub_2721F05B4(v13, v12);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v19 = v4[8];
  v20 = *(a1 + v19);
  v21 = *(a2 + v19);
  if (v20 == 2)
  {
    if (v21 != 2)
    {
      return 0;
    }
  }

  else if (v21 == 2 || ((v20 ^ v21) & 1) != 0)
  {
    return 0;
  }

  v22 = v4[9];
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);
  if (v23 == 2)
  {
    if (v24 != 2)
    {
      return 0;
    }
  }

  else if (v24 == 2 || ((v23 ^ v24) & 1) != 0)
  {
    return 0;
  }

  v25 = v4[10];
  v26 = *(a1 + v25);
  v27 = *(a2 + v25);
  if (v26 == 2)
  {
    if (v27 != 2)
    {
      return 0;
    }
  }

  else if (v27 == 2 || ((v26 ^ v27) & 1) != 0)
  {
    return 0;
  }

  v28 = v4[11];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = v31[1];
  if (!v30)
  {
    if (!v32)
    {
      goto LABEL_39;
    }

    return 0;
  }

  if (!v32 || (*v29 != *v31 || v30 != v32) && (sub_27237865C() & 1) == 0)
  {
    return 0;
  }

LABEL_39:
  sub_272376F1C();
  sub_2721F106C(&qword_280881600, MEMORY[0x277D216C8]);
  if ((sub_2723777DC() & 1) == 0)
  {
    return 0;
  }

  v33 = v4[5];
  sub_272376F6C();
  sub_2721F106C(&qword_280881608, MEMORY[0x277D21710]);
  return sub_2723777DC() & 1;
}

uint64_t sub_2721F0E30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Sentencepiece_SelfTestData.Sample(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_27237865C();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = *(v4 + 24);
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (v17)
    {
      v18 = *v14 == *v16 && v15 == v17;
      if (v18 || (sub_27237865C() & 1) != 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (!v17)
  {
LABEL_17:
    sub_272376F1C();
    sub_2721F106C(&qword_280881600, MEMORY[0x277D216C8]);
    return sub_2723777DC() & 1;
  }

  return 0;
}

uint64_t sub_2721F0F5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Sentencepiece_TrainerSpec(0);
  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 != v7 && (sub_2721E9934(v6, v7) & 1) == 0)
  {
    return 0;
  }

  sub_272376F1C();
  sub_2721F106C(&qword_280881600, MEMORY[0x277D216C8]);
  if ((sub_2723777DC() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v4 + 20);
  sub_272376F6C();
  sub_2721F106C(&qword_280881608, MEMORY[0x277D21710]);
  return sub_2723777DC() & 1;
}

uint64_t sub_2721F106C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2721F10B4(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Sentencepiece_SelfTestData(0);
  v97 = *(v4 - 8);
  v98 = v4;
  v5 = *(v97 + 64);
  MEMORY[0x28223BE20](v4);
  v93 = (&v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_2721F065C(&qword_2808815E0, &qword_27237AFE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v95 = (&v89 - v9);
  v96 = sub_2721F065C(&qword_2808817A8, &qword_27237BE88);
  v10 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96);
  v99 = &v89 - v11;
  v12 = type metadata accessor for Sentencepiece_NormalizerSpec(0);
  v101 = *(v12 - 8);
  v102 = v12;
  v13 = *(v101 + 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2721F065C(&qword_2808815D8, &qword_27237AFD8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v92 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v100 = &v89 - v20;
  v103 = sub_2721F065C(&qword_2808817B0, &qword_27237BE90);
  v21 = *(*(v103 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v103);
  v94 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v89 - v24;
  v26 = type metadata accessor for Sentencepiece_TrainerSpec(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2721F065C(&qword_2808815D0, &qword_27237AFD0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v89 - v33;
  v35 = sub_2721F065C(&qword_2808817B8, &qword_27237BE98);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v38 = &v89 - v37;
  if ((sub_2721EEFC8(*a1, *a2) & 1) == 0)
  {
    goto LABEL_19;
  }

  v89 = v15;
  v39 = type metadata accessor for Sentencepiece_ModelProto(0);
  v104 = a2;
  v40 = *(v39 + 28);
  v41 = *(v35 + 48);
  v90 = a1;
  v91 = v39;
  sub_2721F07F4(a1 + v40, v38, &qword_2808815D0, &qword_27237AFD0);
  sub_2721F07F4(v104 + v40, &v38[v41], &qword_2808815D0, &qword_27237AFD0);
  v42 = *(v27 + 48);
  if (v42(v38, 1, v26) == 1)
  {
    if (v42(&v38[v41], 1, v26) == 1)
    {
      sub_2721F40F0(v38, &qword_2808815D0, &qword_27237AFD0);
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  sub_2721F07F4(v38, v34, &qword_2808815D0, &qword_27237AFD0);
  if (v42(&v38[v41], 1, v26) == 1)
  {
    sub_2721F0794(v34, type metadata accessor for Sentencepiece_TrainerSpec);
LABEL_10:
    v51 = &qword_2808817B8;
    v52 = &qword_27237BE98;
LABEL_17:
    v58 = v38;
LABEL_18:
    sub_2721F40F0(v58, v51, v52);
    goto LABEL_19;
  }

  sub_2721F06C4(&v38[v41], v30, type metadata accessor for Sentencepiece_TrainerSpec);
  v53 = *(v26 + 24);
  v54 = *&v34[v53];
  v55 = *&v30[v53];
  if (v54 != v55 && (sub_2721E9934(v54, v55) & 1) == 0 || (sub_272376F1C(), sub_2721F106C(&qword_280881600, MEMORY[0x277D216C8]), (sub_2723777DC() & 1) == 0))
  {
    sub_2721F0794(v30, type metadata accessor for Sentencepiece_TrainerSpec);
    sub_2721F0794(v34, type metadata accessor for Sentencepiece_TrainerSpec);
    v51 = &qword_2808815D0;
    v52 = &qword_27237AFD0;
    goto LABEL_17;
  }

  v56 = *(v26 + 20);
  sub_272376F6C();
  sub_2721F106C(&qword_280881608, MEMORY[0x277D21710]);
  v57 = sub_2723777DC();
  sub_2721F0794(v30, type metadata accessor for Sentencepiece_TrainerSpec);
  sub_2721F0794(v34, type metadata accessor for Sentencepiece_TrainerSpec);
  sub_2721F40F0(v38, &qword_2808815D0, &qword_27237AFD0);
  if ((v57 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_5:
  v44 = v90;
  v43 = v91;
  v45 = v91[8];
  v46 = *(v103 + 48);
  sub_2721F07F4(v90 + v45, v25, &qword_2808815D8, &qword_27237AFD8);
  v47 = v104 + v45;
  v48 = v104;
  sub_2721F07F4(v47, &v25[v46], &qword_2808815D8, &qword_27237AFD8);
  v49 = v102;
  v50 = *(v101 + 6);
  if (v50(v25, 1, v102) == 1)
  {
    if (v50(&v25[v46], 1, v49) == 1)
    {
      v101 = v50;
      sub_2721F40F0(v25, &qword_2808815D8, &qword_27237AFD8);
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v61 = v100;
  sub_2721F07F4(v25, v100, &qword_2808815D8, &qword_27237AFD8);
  if (v50(&v25[v46], 1, v49) == 1)
  {
    sub_2721F0794(v61, type metadata accessor for Sentencepiece_NormalizerSpec);
LABEL_23:
    v51 = &qword_2808817B0;
    v52 = &qword_27237BE90;
    v58 = v25;
    goto LABEL_18;
  }

  v101 = v50;
  v62 = &v25[v46];
  v63 = v89;
  sub_2721F06C4(v62, v89, type metadata accessor for Sentencepiece_NormalizerSpec);
  v64 = sub_2721F0B34(v61, v63);
  sub_2721F0794(v63, type metadata accessor for Sentencepiece_NormalizerSpec);
  sub_2721F0794(v61, type metadata accessor for Sentencepiece_NormalizerSpec);
  sub_2721F40F0(v25, &qword_2808815D8, &qword_27237AFD8);
  if ((v64 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_25:
  v65 = v43[9];
  v66 = *(v96 + 48);
  v67 = v99;
  sub_2721F07F4(v44 + v65, v99, &qword_2808815E0, &qword_27237AFE0);
  sub_2721F07F4(v48 + v65, v67 + v66, &qword_2808815E0, &qword_27237AFE0);
  v68 = v98;
  v69 = *(v97 + 48);
  if (v69(v67, 1, v98) == 1)
  {
    if (v69(v67 + v66, 1, v68) == 1)
    {
      sub_2721F40F0(v67, &qword_2808815E0, &qword_27237AFE0);
      goto LABEL_28;
    }

    goto LABEL_33;
  }

  v76 = v95;
  sub_2721F07F4(v67, v95, &qword_2808815E0, &qword_27237AFE0);
  if (v69(v67 + v66, 1, v68) == 1)
  {
    sub_2721F0794(v76, type metadata accessor for Sentencepiece_SelfTestData);
LABEL_33:
    v51 = &qword_2808817A8;
    v52 = &qword_27237BE88;
    v58 = v67;
    goto LABEL_18;
  }

  v77 = v67 + v66;
  v78 = v93;
  sub_2721F06C4(v77, v93, type metadata accessor for Sentencepiece_SelfTestData);
  if ((sub_2721EED00(*v76, *v78) & 1) == 0 || (v79 = *(v68 + 20), sub_272376F1C(), sub_2721F106C(&qword_280881600, MEMORY[0x277D216C8]), (sub_2723777DC() & 1) == 0))
  {
    sub_2721F0794(v78, type metadata accessor for Sentencepiece_SelfTestData);
    sub_2721F0794(v76, type metadata accessor for Sentencepiece_SelfTestData);
    v51 = &qword_2808815E0;
    v52 = &qword_27237AFE0;
    v58 = v67;
    goto LABEL_18;
  }

  v80 = *(v68 + 24);
  sub_272376F6C();
  sub_2721F106C(&qword_280881608, MEMORY[0x277D21710]);
  LOBYTE(v80) = sub_2723777DC();
  sub_2721F0794(v78, type metadata accessor for Sentencepiece_SelfTestData);
  sub_2721F0794(v76, type metadata accessor for Sentencepiece_SelfTestData);
  sub_2721F40F0(v67, &qword_2808815E0, &qword_27237AFE0);
  if ((v80 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_28:
  v70 = v91[10];
  v71 = *(v103 + 48);
  v72 = v94;
  sub_2721F07F4(v44 + v70, v94, &qword_2808815D8, &qword_27237AFD8);
  v73 = v104 + v70;
  v74 = v72;
  sub_2721F07F4(v73, v72 + v71, &qword_2808815D8, &qword_27237AFD8);
  v75 = v101;
  if (v101(v72, 1, v49) != 1)
  {
    v81 = v72;
    v82 = v92;
    sub_2721F07F4(v81, v92, &qword_2808815D8, &qword_27237AFD8);
    if (v75(v74 + v71, 1, v49) != 1)
    {
      v83 = v74 + v71;
      v84 = v89;
      sub_2721F06C4(v83, v89, type metadata accessor for Sentencepiece_NormalizerSpec);
      v85 = sub_2721F0B34(v82, v84);
      sub_2721F0794(v84, type metadata accessor for Sentencepiece_NormalizerSpec);
      sub_2721F0794(v82, type metadata accessor for Sentencepiece_NormalizerSpec);
      sub_2721F40F0(v74, &qword_2808815D8, &qword_27237AFD8);
      if ((v85 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_43;
    }

    sub_2721F0794(v82, type metadata accessor for Sentencepiece_NormalizerSpec);
    goto LABEL_41;
  }

  if (v75(v72 + v71, 1, v49) != 1)
  {
LABEL_41:
    v51 = &qword_2808817B0;
    v52 = &qword_27237BE90;
    v58 = v74;
    goto LABEL_18;
  }

  sub_2721F40F0(v72, &qword_2808815D8, &qword_27237AFD8);
LABEL_43:
  v86 = v91;
  v87 = v91[5];
  sub_272376F1C();
  sub_2721F106C(&qword_280881600, MEMORY[0x277D216C8]);
  if (sub_2723777DC())
  {
    v88 = v86[6];
    sub_272376F6C();
    sub_2721F106C(&qword_280881608, MEMORY[0x277D21710]);
    v59 = sub_2723777DC();
    return v59 & 1;
  }

LABEL_19:
  v59 = 0;
  return v59 & 1;
}

uint64_t sub_2721F1E10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Sentencepiece_ModelProto.SentencePiece(0);
  v5 = v4[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_27237865C();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[7];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 4);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 4);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = v4[8];
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 6)
  {
    if (v20 != 6)
    {
      return 0;
    }
  }

  else if (v20 == 6 || qword_27237BEB8[v19] != qword_27237BEB8[v20])
  {
    return 0;
  }

  v21 = v4;
  sub_272376F1C();
  sub_2721F106C(&qword_280881600, MEMORY[0x277D216C8]);
  if (sub_2723777DC())
  {
    v22 = v21[5];
    sub_272376F6C();
    sub_2721F106C(&qword_280881608, MEMORY[0x277D21710]);
    return sub_2723777DC() & 1;
  }

  return 0;
}

unint64_t sub_2721F1FD0()
{
  result = qword_280881638;
  if (!qword_280881638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881638);
  }

  return result;
}

unint64_t sub_2721F2028()
{
  result = qword_280881640;
  if (!qword_280881640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881640);
  }

  return result;
}

unint64_t sub_2721F2080()
{
  result = qword_280881648;
  if (!qword_280881648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881648);
  }

  return result;
}

uint64_t sub_2721F214C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2721F2228()
{
  result = qword_280881678;
  if (!qword_280881678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881678);
  }

  return result;
}

unint64_t sub_2721F2280()
{
  result = qword_280881680;
  if (!qword_280881680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881680);
  }

  return result;
}

unint64_t sub_2721F22D8()
{
  result = qword_280881688;
  if (!qword_280881688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881688);
  }

  return result;
}

uint64_t sub_2721F23EC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2721F214C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2721F29AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_272376F1C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_272376F6C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2721F2ACC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_272376F1C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_272376F6C();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2721F2BD4()
{
  result = sub_272376F1C();
  if (v1 <= 0x3F)
  {
    result = sub_272376F6C();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Sentencepiece_TrainerSpec._StorageClass();
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Sentencepiece_TrainerSpec.ModelType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Sentencepiece_TrainerSpec.ModelType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_2721F2DF4()
{
  sub_272376F1C();
  if (v0 <= 0x3F)
  {
    sub_272376F6C();
    if (v1 <= 0x3F)
    {
      sub_2721F3E38(319, &qword_280881708);
      if (v2 <= 0x3F)
      {
        sub_2721F3E38(319, &qword_280881710);
        if (v3 <= 0x3F)
        {
          sub_2721F3E38(319, &qword_280881718);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2721F2F0C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_272376F1C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_272376F6C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_2721F3044(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_272376F1C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_272376F6C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_2721F3168()
{
  sub_2721F3A88(319, &qword_280881720, type metadata accessor for Sentencepiece_SelfTestData.Sample, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_272376F1C();
    if (v1 <= 0x3F)
    {
      sub_272376F6C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2721F3248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_272376F1C();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_2721F3328(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_272376F1C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_2721F33E4()
{
  sub_272376F1C();
  if (v0 <= 0x3F)
  {
    sub_2721F3E38(319, &qword_280881708);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2721F348C(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_272376F1C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(&a1[v11], a2, v9);
  }

  v12 = sub_272376F6C();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_13;
  }

  v13 = sub_2721F065C(&qword_2808815D0, &qword_27237AFD0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v14 = sub_2721F065C(&qword_2808815D8, &qword_27237AFD8);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v16 = sub_2721F065C(&qword_2808815E0, &qword_27237AFE0);
  v17 = *(*(v16 - 8) + 48);
  v18 = &a1[a3[9]];

  return v17(v18, a2, v16);
}

char *sub_2721F36C0(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_272376F1C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(&v5[v11], a2, a2, v9);
  }

  v12 = sub_272376F6C();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_11;
  }

  v13 = sub_2721F065C(&qword_2808815D0, &qword_27237AFD0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v14 = sub_2721F065C(&qword_2808815D8, &qword_27237AFD8);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v16 = sub_2721F065C(&qword_2808815E0, &qword_27237AFE0);
  v17 = *(*(v16 - 8) + 56);
  v18 = &v5[a4[9]];

  return v17(v18, a2, a2, v16);
}

void sub_2721F38E0()
{
  sub_2721F3A88(319, &qword_280881728, type metadata accessor for Sentencepiece_ModelProto.SentencePiece, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_272376F1C();
    if (v1 <= 0x3F)
    {
      sub_272376F6C();
      if (v2 <= 0x3F)
      {
        sub_2721F3A88(319, &qword_280881730, type metadata accessor for Sentencepiece_TrainerSpec, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_2721F3A88(319, &qword_280881738, type metadata accessor for Sentencepiece_NormalizerSpec, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_2721F3A88(319, &qword_280881740, type metadata accessor for Sentencepiece_SelfTestData, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2721F3A88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2721F3B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_272376F1C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_272376F6C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_2721F3C30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_272376F1C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_272376F6C();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_2721F3D3C()
{
  sub_272376F1C();
  if (v0 <= 0x3F)
  {
    sub_272376F6C();
    if (v1 <= 0x3F)
    {
      sub_2721F3E38(319, &qword_280881708);
      if (v2 <= 0x3F)
      {
        sub_2721F3E38(319, &qword_280881748);
        if (v3 <= 0x3F)
        {
          sub_2721F3E38(319, &qword_280881750);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2721F3E38(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_27237801C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for Sentencepiece_ModelProto.SentencePiece.TypeEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Sentencepiece_ModelProto.SentencePiece.TypeEnum(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2721F3FE4()
{
  result = qword_280881788;
  if (!qword_280881788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881788);
  }

  return result;
}

unint64_t sub_2721F4038()
{
  result = qword_280881790;
  if (!qword_280881790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881790);
  }

  return result;
}

uint64_t *sub_2721F408C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_2721F40F0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2721F065C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *sub_2721F4150(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2721F41B4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_2721F4234()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (v2)
  {
    v3 = *v0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_2722002AC(v1);
    }

    if (v2 > *(v1 + 2))
    {
      __break(1u);
    }

    else
    {
      bzero(v1 + 32, 4 * v2);
      *v0 = v1;
    }
  }
}

uint64_t sub_2721F42A0(__int128 *a1)
{
  v10 = a1[8];
  v11 = a1[9];
  v12 = *(a1 + 20);
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  return sub_2722CB3F0(sub_2722002C0);
}

uint64_t sub_2721F4330()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_2721F437C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_2721F4454(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_2721F4518(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_2721F45DC(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_2721F466C()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t sub_2721F46B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t sub_2721F475C()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t sub_2721F47A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 80);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

uint64_t sub_2721F484C()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
}

uint64_t sub_2721F4884(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  *(v1 + 88) = a1;
}

uint64_t sub_2721F491C()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
}

uint64_t sub_2721F4954(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  *(v1 + 96) = a1;
}

uint64_t sub_2721F49EC()
{
  swift_beginAccess();
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t sub_2721F4A38(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 112);
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
}

uint64_t sub_2721F4B10(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 120) = a1;
  return result;
}

uint64_t sub_2721F4BA0()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t sub_2721F4BEC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 136);
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
}

uint64_t sub_2721F4CE0()
{
  swift_beginAccess();
  v1 = *(v0 + 160);
}

uint64_t sub_2721F4D18(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 160);
  *(v1 + 160) = a1;
}

uint64_t sub_2721F4DE4(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 168) = a1;
  return result;
}

uint64_t sub_2721F4E74()
{
  swift_beginAccess();
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return v1;
}

uint64_t sub_2721F4EC0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 184);
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
}

uint64_t sub_2721F4F64()
{
  swift_beginAccess();
  result = *(v0 + 192);
  v2 = *(v0 + 200);
  return result;
}

uint64_t sub_2721F4F9C(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 192) = a1;
  *(v2 + 200) = a2 & 1;
  return result;
}

uint64_t sub_2721F5090()
{
  swift_beginAccess();
  result = *(v0 + 224);
  v2 = *(v0 + 232);
  return result;
}

uint64_t sub_2721F50C8(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 224) = a1;
  *(v2 + 232) = a2 & 1;
  return result;
}

uint64_t sub_2721F516C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v6 = sub_27220038C(a1, a2);
    if (v7)
    {
      sub_2722041FC(*(a3 + 56) + 32 * v6, &v13);
      if (swift_dynamicCast())
      {
        return v12;
      }
    }
  }

  v13 = 0;
  v14 = 0xE000000000000000;
  sub_27237820C();

  v13 = 0x742064656C696146;
  v14 = 0xEF2064616572206FLL;
  MEMORY[0x2743C4AD0](a1, a2);
  MEMORY[0x2743C4AD0](0x6F63206D6F726620, 0xEC0000006769666ELL);
  v9 = v13;
  v10 = v14;
  sub_2722032B4();
  swift_allocError();
  *v11 = v9;
  v11[1] = v10;
  return swift_willThrow();
}

void *sub_2721F52A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    goto LABEL_14;
  }

  v6 = sub_27220038C(a1, a2);
  if ((v7 & 1) == 0 || (sub_2722041FC(*(a3 + 56) + 32 * v6, &v16), !swift_dynamicCast()))
  {
    if (*(a3 + 16))
    {
      v9 = sub_27220038C(a1, a2);
      if (v10)
      {
        sub_2722041FC(*(a3 + 56) + 32 * v9, &v16);
        sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
        if (swift_dynamicCast())
        {
          if (v15[2] == 2 && (v15[4] == a1 && v15[5] == a2 || (sub_27237865C() & 1) != 0))
          {
            v8 = v15[6];
            v11 = v15[7];

            return v8;
          }
        }
      }
    }

LABEL_14:
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_27237820C();

    v16 = 0x742064656C696146;
    v17 = 0xEF2064616572206FLL;
    MEMORY[0x2743C4AD0](a1, a2);
    MEMORY[0x2743C4AD0](0x6F63206D6F726620, 0xEC0000006769666ELL);
    v12 = v16;
    v8 = v17;
    sub_2722032B4();
    swift_allocError();
    *v13 = v12;
    v13[1] = v8;
    swift_willThrow();
    return v8;
  }

  return v15;
}

uint64_t sub_2721F54A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v6 = sub_27220038C(a1, a2), (v7 & 1) != 0) && (sub_2722041FC(*(a3 + 56) + 32 * v6, &v25), sub_2721F065C(&qword_280881890, &unk_272382EF0), (swift_dynamicCast() & 1) != 0))
  {
    v8 = v27;
    v9 = *(v27 + 16);
    if (v9)
    {
      v25 = MEMORY[0x277D84F90];
      sub_27220056C(0, v9, 0);
      v10 = v25;
      v11 = (v8 + 56);
      do
      {
        v12 = *(v11 - 3);
        v13 = *(v11 - 2);
        v14 = *(v11 - 1);
        v15 = *v11;

        v16 = MEMORY[0x2743C4A20](v12, v13, v14, v15);
        v18 = v17;

        v25 = v10;
        v20 = *(v10 + 16);
        v19 = *(v10 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_27220056C((v19 > 1), v20 + 1, 1);
          v10 = v25;
        }

        *(v10 + 16) = v20 + 1;
        v21 = v10 + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v18;
        v11 += 4;
        --v9;
      }

      while (v9);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_27237820C();

    v25 = 0x742064656C696146;
    v26 = 0xEF2064616572206FLL;
    MEMORY[0x2743C4AD0](a1, a2);
    MEMORY[0x2743C4AD0](0x6F63206D6F726620, 0xEC0000006769666ELL);
    v10 = v25;
    v22 = v26;
    sub_2722032B4();
    swift_allocError();
    *v23 = v10;
    v23[1] = v22;
    swift_willThrow();
  }

  return v10;
}

uint64_t sub_2721F56DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v8 = result;
  v26 = MEMORY[0x277D84F90];
  result = sub_2722005CC(0, v4 & ~(v4 >> 63), 0);
  if (a2 >= v8 && (v4 & 0x8000000000000000) == 0)
  {
    v5 = v26;
    v9 = v8;
    while (a2 != v9)
    {
      if (v8 < 0)
      {
        goto LABEL_32;
      }

      if (v9 >= *(*a3 + 16))
      {
        goto LABEL_33;
      }

      v10 = *(*(*a3 + 8 * v9 + 32) + 16);
      v11 = v9 * v10;
      if ((v9 * v10) >> 64 != (v9 * v10) >> 63)
      {
        goto LABEL_34;
      }

      v12 = __OFADD__(v11, v10);
      v13 = v11 + v10;
      if (v12)
      {
        goto LABEL_35;
      }

      v14 = v13 - v11;
      if (v13 < v11)
      {
        goto LABEL_36;
      }

      if (v11 < 0)
      {
        goto LABEL_37;
      }

      v15 = *a4;
      v16 = *(*a4 + 16);
      if (v16 < v11 || v16 < v13)
      {
        goto LABEL_38;
      }

      if (v16 == v14)
      {
        v18 = *a4;

        v19 = v15;
      }

      else
      {
        v19 = MEMORY[0x277D84F90];
        if (v13 != v11)
        {
          if (v14 < 1)
          {
            v23 = 4 * v14;
            v19 = MEMORY[0x277D84F90];
          }

          else
          {
            sub_2721F065C(&qword_280881848, &unk_27237C250);
            v19 = swift_allocObject();
            v22 = j__malloc_size(v19);
            v23 = 4 * v14;
            v24 = v22 - 32;
            if (v22 < 32)
            {
              v24 = v22 - 29;
            }

            v19[2] = v14;
            v19[3] = 2 * (v24 >> 2);
          }

          result = memcpy(v19 + 4, v15 + 4 * v11 + 32, v23);
        }
      }

      v21 = *(v26 + 16);
      v20 = *(v26 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_2722005CC((v20 > 1), v21 + 1, 1);
      }

      *(v26 + 16) = v21 + 1;
      *(v26 + 8 * v21 + 32) = v19;
      if (a2 == ++v9)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2721F58F8(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_27237825C();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_272200A34(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_2721F5BF8()
{
  (*(*v0 + 560))();
  if (v1 && (v2 = , v3 = (*(*v0 + 584))(v2), (v4 & 1) == 0) && ((*(*v0 + 608))(v3), v5))
  {

    (*(*v0 + 632))(v6);
    v8 = v7 ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

unint64_t sub_2721F5CE8(char a1)
{
  result = 0x6165467475706E69;
  switch(a1)
  {
    case 1:
      result = 0x6172467475706E69;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0x65764F656D617266;
      break;
    case 4:
      result = 1802723693;
      break;
    case 5:
      result = 0x6465626D45736F70;
      break;
    case 6:
      result = 0x6168536574617473;
      break;
    case 7:
      result = 0x6174537475706E69;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x6D69447475706E69;
      break;
    case 10:
      result = 0x656D726F666E6F63;
      break;
    case 11:
      result = 0x6574736F50435463;
      break;
    case 12:
      result = 0x745374757074756FLL;
      break;
    case 13:
      result = 0x694474757074756FLL;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0xD000000000000014;
      break;
    case 17:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2721F5F80()
{
  v1 = *v0;
  sub_27237874C();
  MEMORY[0x2743C58B0](v1);
  return sub_27237878C();
}

uint64_t sub_2721F5FF4()
{
  v1 = *v0;
  sub_27237874C();
  MEMORY[0x2743C58B0](v1);
  return sub_27237878C();
}

uint64_t sub_2721F6040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_272203364(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2721F6080(uint64_t a1)
{
  v2 = sub_272203050();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2721F60BC(uint64_t a1)
{
  v2 = sub_272203050();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2721F60F8()
{
  v1 = v0[3];

  v2 = v0[8];

  v3 = v0[10];

  v4 = v0[11];

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[17];

  v8 = v0[19];

  v9 = v0[20];

  v10 = v0[23];

  v11 = v0[27];

  return v0;
}

uint64_t sub_2721F6168()
{
  sub_2721F60F8();

  return swift_deallocClassInstance();
}

uint64_t sub_2721F619C(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_2721F61EC(a1);
  return v2;
}

void *sub_2721F61EC(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_2721F065C(&qword_2808817D0, &qword_27237BF10);
  v90 = *(v4 - 8);
  v91 = v4;
  v5 = *(v90 + 64);
  MEMORY[0x28223BE20](v4);
  v113 = v77 - v6;
  *(v2 + 16) = 0;
  v89 = v2 + 16;
  *(v2 + 32) = 0u;
  v88 = (v2 + 32);
  *(v2 + 48) = 0u;
  v87 = (v2 + 48);
  *(v2 + 24) = 0xE000000000000000;
  *(v2 + 64) = 0xE000000000000000;
  *(v2 + 72) = 0;
  v86 = v2 + 72;
  *(v2 + 80) = 0xE000000000000000;
  v7 = MEMORY[0x277D84F90];
  *(v2 + 88) = MEMORY[0x277D84F90];
  v85 = (v2 + 88);
  *(v2 + 96) = v7;
  v84 = (v2 + 96);
  *(v2 + 104) = 0;
  v83 = v2 + 104;
  *(v2 + 112) = 0xE000000000000000;
  *(v2 + 128) = 0;
  v81 = v2 + 128;
  *(v2 + 120) = 0;
  v82 = (v2 + 120);
  *(v2 + 136) = 0xE000000000000000;
  *(v2 + 144) = 0;
  *(v2 + 152) = 0xE000000000000000;
  *(v2 + 160) = v7;
  *(v2 + 184) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 208) = 0;
  *(v2 + 200) = 1;
  *(v2 + 224) = 0;
  *(v2 + 216) = 0;
  *(v2 + 232) = 1;
  v8 = a1[3];
  v92 = a1[4];
  v94 = a1;
  sub_27220300C(a1, v8);
  sub_272203050();
  v9 = v93;
  sub_2723787AC();
  if (v9)
  {

    v10 = v2;
    sub_2722039C8(v94);
  }

  else
  {
    v79 = (v2 + 160);
    v80 = v2 + 144;
    v92 = v2 + 208;
    v93 = v2;
    v77[1] = v2 + 224;
    v78 = (v2 + 168);
    v11 = v90;
    v112 = 0;
    v12 = sub_2723784AC();
    v14 = v13;
    swift_beginAccess();
    v15 = v93;
    v16 = v93[3];
    v93[2] = v12;
    v15[3] = v14;

    v111 = 1;
    v18 = sub_2723784EC();
    v19 = v88;
    swift_beginAccess();
    *v19 = v18;
    v110 = 2;
    v20 = sub_2723784EC();
    v21 = v92;
    swift_beginAccess();
    *(v21 - 168) = v20;
    v109 = 3;
    v22 = sub_2723784EC();
    v23 = v87;
    swift_beginAccess();
    *v23 = v22;
    v108 = 4;
    v24 = sub_2723784AC();
    v26 = v25;
    swift_beginAccess();
    v27 = v15[8];
    v15[7] = v24;
    v15[8] = v26;

    v107 = 5;
    v28 = sub_2723784AC();
    v30 = v29;
    swift_beginAccess();
    v31 = v15[10];
    v15[9] = v28;
    v15[10] = v30;

    sub_2721F065C(&qword_2808817D8, &qword_27237BF18);
    v106 = 6;
    sub_2722030A4();
    sub_2723784FC();
    v32 = v105;
    v33 = v85;
    swift_beginAccess();
    v34 = *v33;
    *v33 = v32;

    sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
    LOBYTE(v105) = 7;
    sub_272203148(&qword_280881800, &qword_2808817F8, &unk_27237CA80);
    sub_2723784FC();
    v35 = v104;
    v36 = v84;
    swift_beginAccess();
    v37 = *v36;
    *v36 = v35;

    LOBYTE(v104) = 8;
    v38 = sub_2723784AC();
    v39 = v93;
    v40 = v38;
    v42 = v41;
    swift_beginAccess();
    v43 = v39[14];
    v39[13] = v40;
    v39[14] = v42;

    v103 = 9;
    v44 = sub_2723784EC();
    v45 = v82;
    swift_beginAccess();
    *v45 = v44;
    v102 = 10;
    v46 = sub_2723784AC();
    v48 = v47;
    swift_beginAccess();
    v49 = v93;
    v50 = v93[17];
    v93[16] = v46;
    v49[17] = v48;

    v101 = 11;
    v51 = sub_2723784AC();
    v53 = v52;
    swift_beginAccess();
    v54 = v93;
    v55 = v93[19];
    v93[18] = v51;
    v54[19] = v53;

    v100 = 12;
    sub_2723784FC();
    v56 = v99;
    v57 = v79;
    swift_beginAccess();
    v58 = *v57;
    *v57 = v56;

    LOBYTE(v99) = 13;
    v59 = sub_2723784EC();
    v60 = v78;
    swift_beginAccess();
    *v60 = v59;
    v98 = 14;
    v61 = sub_27237843C();
    v63 = v62;
    swift_beginAccess();
    v64 = v93;
    v65 = v93[23];
    v93[22] = v61;
    v64[23] = v63;

    v97 = 15;
    v66 = sub_27237847C();
    LOBYTE(v63) = v67;
    swift_beginAccess();
    v68 = v93;
    v93[24] = v66;
    *(v68 + 200) = v63 & 1;
    v96 = 16;
    v69 = sub_27237843C();
    v71 = v70;
    swift_beginAccess();
    v72 = v93;
    v73 = v93[27];
    v93[26] = v69;
    v72[27] = v71;

    v95 = 17;
    v74 = sub_27237847C();
    LOBYTE(v71) = v75;
    (*(v11 + 8))(v113, v91);
    swift_beginAccess();
    v10 = v93;
    v76 = v94;
    v93[28] = v74;
    *(v10 + 232) = v71 & 1;
    sub_2722039C8(v76);
  }

  return v10;
}

uint64_t sub_2721F6AF8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 672))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2721F6B34@<X0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[4];
  v10 = v1[3];
  v11[0] = v3;
  *(v11 + 9) = *(v1 + 73);
  v4 = *(v11 + 9);
  v5 = v1[2];
  v9[0] = v1[1];
  v6 = v9[0];
  v9[1] = v5;
  a1[2] = v10;
  a1[3] = v3;
  *(a1 + 57) = v4;
  *a1 = v6;
  a1[1] = v5;
  return sub_2721F07F4(v9, v8, &qword_280881808, &qword_27237BF30);
}

uint64_t sub_2721F6BBC(_OWORD *a1)
{
  swift_beginAccess();
  v3 = v1[4];
  v8[2] = v1[3];
  v9[0] = v3;
  *(v9 + 9) = *(v1 + 73);
  v4 = v1[2];
  v8[0] = v1[1];
  v8[1] = v4;
  v5 = a1[3];
  v1[3] = a1[2];
  v1[4] = v5;
  *(v1 + 73) = *(a1 + 57);
  v6 = a1[1];
  v1[1] = *a1;
  v1[2] = v6;
  return sub_2721F40F0(v8, &qword_280881808, &qword_27237BF30);
}

uint64_t sub_2721F6C40@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[12];
  v4 = v1[13];
  v5 = v1[14];
  v6 = v1[15];
  v8 = v1[16];
  v7 = v1[17];
  result = sub_2722031B0(v3, v4);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v8;
  a1[5] = v7;
  return result;
}

uint64_t sub_2721F6CC8(_OWORD *a1)
{
  swift_beginAccess();
  v3 = v1[12];
  v4 = v1[13];
  v5 = v1[14];
  v6 = v1[15];
  v7 = v1[16];
  v8 = v1[17];
  v9 = a1[1];
  *(v1 + 6) = *a1;
  *(v1 + 7) = v9;
  *(v1 + 8) = a1[2];
  return sub_272203220(v3, v4);
}

uint64_t sub_2721F6D28()
{
  swift_beginAccess();
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t sub_2721F6D78(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 152);
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
}

uint64_t sub_2721F6DCC()
{
  swift_beginAccess();
  v1 = *(v0 + 176);
}

uint64_t sub_2721F6E04(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 176);
  *(v1 + 176) = a1;
}

uint64_t sub_2721F6E4C()
{
  swift_beginAccess();
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  return v1;
}

uint64_t sub_2721F6E98(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 192);
  *(v2 + 184) = a1;
  *(v2 + 192) = a2;
}

uint64_t sub_2721F6F3C()
{
  swift_beginAccess();
  v1 = *(v0 + 200);
}

uint64_t sub_2721F6F74(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 200);
  *(v1 + 200) = a1;
}

uint64_t sub_2721F7010()
{
  swift_beginAccess();
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return v1;
}

uint64_t sub_2721F7060(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 216);
  *(v2 + 208) = a1;
  *(v2 + 216) = a2;
}

uint64_t sub_2721F70B4()
{
  swift_beginAccess();
  v1 = *(v0 + 224);
}

uint64_t sub_2721F70EC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 224);
  *(v1 + 224) = a1;
}

uint64_t sub_2721F7168(char a1)
{
  result = swift_beginAccess();
  *(v1 + 232) = a1;
  return result;
}

uint64_t sub_2721F722C(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 240) = a1;
  return result;
}

uint64_t sub_2721F72BC()
{
  swift_beginAccess();
  v1 = *(v0 + 248);
}

uint64_t sub_2721F72F4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 248);
  *(v1 + 248) = a1;
}

uint64_t sub_2721F738C()
{
  swift_beginAccess();
  v1 = *(v0 + 256);
}

uint64_t sub_2721F73C4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 256);
  *(v1 + 256) = a1;
}

uint64_t sub_2721F746C()
{
  swift_beginAccess();
  v1 = *(v0 + 272);
}

uint64_t sub_2721F74A4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 272);
  *(v1 + 272) = a1;
}

uint64_t sub_2721F753C()
{
  swift_beginAccess();
  v1 = *(v0 + 280);
}

uint64_t sub_2721F7574(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 280);
  *(v1 + 280) = a1;
}

uint64_t sub_2721F760C()
{
  swift_beginAccess();
  v1 = *(v0 + 288);
}

uint64_t sub_2721F7644(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 288);
  *(v1 + 288) = a1;
}

uint64_t sub_2721F76E0()
{
  swift_beginAccess();
  v1 = *(v0 + 296);
}

uint64_t sub_2721F7718(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 296);
  *(v1 + 296) = a1;
}

uint64_t sub_2721F77B0()
{
  swift_beginAccess();
  v1 = *(v0 + 304);
}

uint64_t sub_2721F77E8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 304);
  *(v1 + 304) = a1;
}

uint64_t sub_2721F78B4(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 312) = a1;
  return result;
}

uint64_t sub_2721F7944()
{
  swift_beginAccess();
  v1 = *(v0 + 320);
}

uint64_t sub_2721F797C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 320);
  *(v1 + 320) = a1;
}

uint64_t sub_2721F7A48(float a1)
{
  result = swift_beginAccess();
  *(v1 + 328) = a1;
  return result;
}

uint64_t sub_2721F7B0C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 332) = a1;
  return result;
}

uint64_t sub_2721F7BD0(char a1)
{
  result = swift_beginAccess();
  *(v1 + 333) = a1;
  return result;
}

uint64_t sub_2721F7C60()
{
  swift_beginAccess();
  v1 = *(v0 + 336);
}

uint64_t sub_2721F7C98(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 336);
  *(v1 + 336) = a1;
}

uint64_t sub_2721F7D30()
{
  swift_beginAccess();
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);

  return v1;
}

uint64_t sub_2721F7D7C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 352);
  *(v2 + 344) = a1;
  *(v2 + 352) = a2;
}

uint64_t sub_2721F7E54(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 360) = a1;
  return result;
}

uint64_t sub_2721F7EEC(uint64_t a1, int a2)
{
  v4 = swift_allocObject();
  sub_2721F7F44(a1, a2);
  return v4;
}

uint64_t sub_2721F7F44(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v225) = a2;
  v5 = sub_27237728C();
  v226 = *(v5 - 8);
  v227 = v5;
  v6 = *(v226 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v212 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v212 - v11;
  MEMORY[0x28223BE20](v10);
  v224 = &v212 - v13;
  *(v2 + 1) = 0u;
  v14 = v2 + 16;
  *(v2 + 6) = 0u;
  *(v2 + 73) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 7) = 0u;
  *(v2 + 8) = 0u;
  *(v2 + 11) = 0u;
  v15 = (v2 + 176);
  *(v2 + 13) = 0u;
  v222 = v2 + 208;
  *(v2 + 18) = 0;
  *(v2 + 19) = 0xE000000000000000;
  *(v2 + 30) = -1;
  v223 = (v2 + 240);
  *(v2 + 12) = 0u;
  *(v2 + 217) = 0u;
  v16 = MEMORY[0x277D84F98];
  *(v2 + 31) = MEMORY[0x277D84F98];
  *(v2 + 32) = v16;
  *(v2 + 66) = -1028740016;
  v17 = MEMORY[0x277D84F90];
  *(v2 + 34) = MEMORY[0x277D84F90];
  *(v2 + 35) = v17;
  *(v2 + 36) = v17;
  *(v2 + 37) = v17;
  *(v2 + 38) = v17;
  *(v2 + 39) = -1;
  *(v2 + 40) = v17;
  *(v2 + 82) = 0;
  *(v2 + 166) = 0;
  *(v2 + 42) = v17;
  strcpy(v2 + 344, "ctc_activation");
  v2[359] = -18;
  *(v2 + 45) = 0;
  type metadata accessor for VATinyASRFeatureExtract();
  *(v2 + 20) = VATinyASRFeatureExtract.__allocating_init()();
  v18 = (*(*a1 + 464))();
  v19 = swift_beginAccess();
  v14[317] = v18 & 1;
  if ((*(*a1 + 320))(v19))
  {
    type metadata accessor for VAEspressoUtilsV2();
    v20 = (*(*a1 + 200))();
    v22 = v21;
    v23 = sub_2721F7EE4();
    v24 = v258;
    sub_2723195D0(v20, v22, v23 & 1, v252);
    if (v24)
    {

LABEL_22:
      v100 = *(v14 + 3);
      v248 = *(v14 + 2);
      v249[0] = v100;
      *(v249 + 9) = *(v14 + 57);
      v101 = *(v14 + 1);
      v246 = *v14;
      v247 = v101;
      sub_2721F40F0(&v246, &qword_280881808, &qword_27237BF30);
      v102 = *(v3 + 14);
      v103 = *(v3 + 15);
      v104 = *(v3 + 16);
      v105 = *(v3 + 17);
      sub_272203220(*(v3 + 12), *(v3 + 13));
      v106 = *(v3 + 19);

      v107 = *(v3 + 22);

      v108 = *(v3 + 24);

      v109 = *(v3 + 25);

      v110 = *(v3 + 27);

      v111 = *(v3 + 28);

      v112 = *(v3 + 31);

      v113 = *(v3 + 32);

      v114 = *(v3 + 34);

      v115 = *(v3 + 35);

      v116 = *(v3 + 36);

      v117 = *(v3 + 37);

      v118 = *(v3 + 38);

      v119 = *(v3 + 40);

      v120 = *(v3 + 42);

      v121 = *(v3 + 44);

      type metadata accessor for VACTCEncoder();
      swift_deallocPartialClassInstance();
      return v3;
    }

    v219 = v15;
    v258 = 0;
    v225 = a1;
    v34 = *v252;
    v35 = v254;
    v214 = *&v252[8];
    v215 = v253;

    v257[0] = *v252;
    v255 = v253;
    v256 = *&v252[16];
    v36 = *(&v253 + 1);
    v37 = v254;
    swift_beginAccess();
    v38 = *(v3 + 13);
    v220 = *(v3 + 12);
    v39 = *(v3 + 14);
    v40 = *(v3 + 15);
    v41 = *(v3 + 17);
    v217 = *(v3 + 16);
    v218 = v39;
    v216 = v41;
    *(v3 + 12) = v34;
    v42 = v215;
    *(v3 + 104) = v214;
    *(v3 + 120) = v42;
    *(v3 + 17) = v35;
    sub_272203A14(v257, &v246);
    sub_2721F07F4(&v256, &v246, &qword_280881818, &qword_27237BF38);
    sub_2721F07F4(&v255, &v246, &qword_280881818, &qword_27237BF38);
    v221 = v36;

    sub_272203220(v220, v38);
    v43 = sub_2722C389C();
    v44 = v224;
    (*(v226 + 16))(v224, v43, v227);
    sub_272203A14(v257, &v246);
    sub_2721F07F4(&v256, &v246, &qword_280881818, &qword_27237BF38);
    sub_2721F07F4(&v255, &v246, &qword_280881818, &qword_27237BF38);

    v45 = sub_27237725C();
    LODWORD(v36) = sub_272377E7C();
    sub_272203A70(v257);
    sub_2721F40F0(&v256, &qword_280881818, &qword_27237BF38);
    sub_2721F40F0(&v255, &qword_280881818, &qword_27237BF38);
    v220 = v37;

    LODWORD(v218) = v36;
    if (os_log_type_enabled(v45, v36))
    {
      v46 = swift_slowAlloc();
      v47 = v226;
      v48 = v46;
      v49 = swift_slowAlloc();
      *&v246 = v49;
      *v48 = 136315138;
      v50 = sub_272319254();
      v52 = sub_2721FFD04(v50, v51, &v246);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_2721E4000, v45, v218, "tASR model description: %s", v48, 0xCu);
      sub_2722039C8(v49);
      MEMORY[0x2743C69C0](v49, -1, -1);
      MEMORY[0x2743C69C0](v48, -1, -1);

      v53 = (*(v47 + 8))(v224, v227);
    }

    else
    {

      v53 = (*(v226 + 8))(v44, v227);
    }

    v74 = (*(*v225 + 576))(v53);
    v75 = v258;
    v77 = sub_27220226C(v74, v76);
    v258 = v75;
    if (v75)
    {

      sub_272203A70(v257);
      sub_2721F40F0(&v256, &qword_280881818, &qword_27237BF38);
      sub_2721F40F0(&v255, &qword_280881818, &qword_27237BF38);

      goto LABEL_22;
    }

    v82 = v77;
    sub_272203A70(v257);
    sub_2721F40F0(&v256, &qword_280881818, &qword_27237BF38);
    sub_2721F40F0(&v255, &qword_280881818, &qword_27237BF38);
  }

  else
  {
    v224 = v3;
    v219 = v15;
    v220 = v12;
    v218 = v9;
    v221 = type metadata accessor for VAEspressoUtils();
    v25 = *(*a1 + 200);
    v26 = *a1 + 200;
    v27 = v25();
    v29 = v28;
    v30 = (*(*a1 + 344))(v230);
    v229[0] = v230[0];
    v31 = (*(*a1 + 368))(v30);
    v32 = v258;
    static VAEspressoUtils.loadModel(_:computeUnits:espressoPrefix:debug:)(v27, v29, v229, v31, v33, v225 & 1, v250);
    if (v32)
    {

      v3 = v224;
      goto LABEL_22;
    }

    v221 = v26;
    v258 = v25;
    v225 = a1;

    swift_beginAccess();
    v54 = *(v14 + 2);
    v55 = *(v14 + 3);
    v56 = *v14;
    v242[1] = *(v14 + 1);
    v242[2] = v54;
    v243[0] = v55;
    *(v243 + 9) = *(v14 + 57);
    v242[0] = v56;
    v57 = v251[0];
    *(v14 + 2) = v250[2];
    *(v14 + 3) = v57;
    *(v14 + 57) = *(v251 + 9);
    v58 = v250[1];
    *v14 = v250[0];
    *(v14 + 1) = v58;
    sub_2721F40F0(v242, &qword_280881808, &qword_27237BF30);
    v59 = *(v14 + 3);
    v248 = *(v14 + 2);
    v249[0] = v59;
    *(v249 + 9) = *(v14 + 57);
    v60 = *(v14 + 1);
    v246 = *v14;
    v247 = v60;
    v244 = v246;
    v245 = v60;
    v3 = v224;
    v231 = *(v224 + 72);
    v228 = BYTE8(v249[1]);
    if (!v248)
    {
      *&v240[0] = 0;
      *(&v240[0] + 1) = 0xE000000000000000;
      sub_27237820C();

      *&v240[0] = 0x742064656C696146;
      *(&v240[0] + 1) = 0xEF2064616F6C206FLL;
      v79 = (v258)(v78);
      MEMORY[0x2743C4AD0](v79);

      v80 = v240[0];
      sub_2722032B4();
      swift_allocError();
      *v81 = v80;
      swift_willThrow();

      goto LABEL_22;
    }

    v216 = *&v249[0];
    v217 = *(&v248 + 1);
    v221 = v248;
    v258 = 0;
    v61 = *(v14 + 3);
    v238[2] = *(v14 + 2);
    v239[0] = v61;
    *(v239 + 9) = *(v14 + 57);
    v62 = *(v14 + 1);
    v238[0] = *v14;
    v238[1] = v62;
    sub_272203308(v238, v232);
    v63 = sub_2722C389C();
    v65 = v226;
    v64 = v227;
    v66 = *(v226 + 16);
    *&v215 = v63;
    *&v214 = v66;
    v66(v220);
    v240[2] = v248;
    v241[0] = v249[0];
    *(v241 + 9) = *(v249 + 9);
    v240[0] = v246;
    v240[1] = v247;
    sub_272203308(v240, v232);
    v67 = sub_27237725C();
    v68 = sub_272377E7C();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v213 = swift_slowAlloc();
      *&v232[0] = v213;
      *v69 = 136315394;
      v70 = v216;

      v71 = sub_2721FFD04(v217, v70, v232);

      *(v69 + 4) = v71;
      v64 = v227;
      *(v69 + 12) = 1024;
      *(v69 + 14) = v228;
      sub_2721F40F0(&v246, &qword_280881808, &qword_27237BF30);
      _os_log_impl(&dword_2721E4000, v67, v68, "Loaded %s, aneChosen=%{BOOL}d", v69, 0x12u);
      v72 = v213;
      sub_2722039C8(v213);
      v73 = v72;
      v65 = v226;
      MEMORY[0x2743C69C0](v73, -1, -1);
      MEMORY[0x2743C69C0](v69, -1, -1);
    }

    else
    {
      sub_2721F40F0(&v246, &qword_280881808, &qword_27237BF30);
    }

    v83 = v220;
    v220 = *(v65 + 8);
    v220(v83, v64);
    v84 = v218;
    (v214)(v218, v215, v64);
    v85 = v221;

    v86 = sub_27237725C();
    v87 = v84;
    v88 = sub_272377E7C();
    if (os_log_type_enabled(v86, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *&v232[0] = v90;
      *v89 = 136315138;
      v91 = sub_27237773C();
      v93 = v92;

      v94 = sub_2721FFD04(v91, v93, v232);

      *(v89 + 4) = v94;
      _os_log_impl(&dword_2721E4000, v86, v88, "tASR model config: %s", v89, 0xCu);
      sub_2722039C8(v90);
      v95 = v90;
      v85 = v221;
      MEMORY[0x2743C69C0](v95, -1, -1);
      MEMORY[0x2743C69C0](v89, -1, -1);

      v96 = v227;
      v97 = v218;
    }

    else
    {

      v97 = v87;
      v96 = v64;
    }

    v220(v97, v96);
    v98 = v258;
    v232[0] = v244;
    v232[1] = v245;
    v233 = v85;
    v234 = v217;
    v235 = v216;
    v236 = v231;
    v237 = v228;
    v99 = sub_2722023D0(v232);
    v258 = v98;
    if (v98)
    {

      sub_2721F40F0(&v246, &qword_280881808, &qword_27237BF30);
      goto LABEL_22;
    }

    v82 = v99;
    sub_2721F40F0(&v246, &qword_280881808, &qword_27237BF30);
  }

  *(v3 + 21) = v82;
  v123 = *(*v82 + 664);

  v125 = v123(v124);

  swift_beginAccess();
  v14[216] = v125 & 1;
  if ((v125 & 1) == 0)
  {
    v136 = v258;
    goto LABEL_39;
  }

  v126 = *(**(v3 + 21) + 560);

  v128 = v126(v127);
  v130 = v129;

  swift_beginAccess();
  v131 = *(v3 + 24);
  *(v3 + 23) = v128;
  *(v3 + 24) = v130;

  v132 = *(**(v3 + 21) + 584);

  v134 = v132(v133);
  LOBYTE(v132) = v135;

  v136 = v258;
  if (v132)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v137 = v223;
  swift_beginAccess();
  *(v3 + 30) = v134;
  v138 = *(**(v3 + 21) + 608);

  v140 = v138(v139);
  v142 = v141;

  swift_beginAccess();
  v143 = *(v3 + 27);
  *(v3 + 26) = v140;
  *(v3 + 27) = v142;

  v144 = *(**(v3 + 21) + 632);

  v146 = v144(v145);
  LOBYTE(v144) = v147;

  if ((v144 & 1) == 0)
  {
    v148 = *v137;
    if (*v137 < 0)
    {
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    if (v148)
    {
      v149 = *v137;
      v150 = sub_272377B5C();
      *(v150 + 16) = v148;
      bzero((v150 + 32), 4 * v148);
    }

    else
    {
      v150 = MEMORY[0x277D84F90];
    }

    v151 = sub_27220392C(v150, v146);

    swift_beginAccess();
    v152 = *(v14 + 23);
    *(v14 + 23) = v151;

    if (v146 < 0)
    {
      goto LABEL_105;
    }

    if (v146)
    {
      v153 = sub_272377B5C();
      *(v153 + 16) = v146;
      bzero((v153 + 32), 4 * v146);
    }

    else
    {
      v153 = MEMORY[0x277D84F90];
    }

    swift_beginAccess();
    v154 = *(v14 + 26);
    *(v14 + 26) = v153;

    type metadata accessor for VAContextEncoder();
    v155 = *v137;

    v157 = VAContextEncoder.__allocating_init(config:outputDim:)(v156, v155);
    if (v136)
    {
      goto LABEL_89;
    }

    v158 = v157;
    v159 = v219;
    swift_beginAccess();
    v160 = *v159;
    *v159 = v158;

LABEL_39:
    v161 = *(**(v3 + 21) + 368);

    v163 = v161(v162);

    if (!v163[2])
    {
      goto LABEL_95;
    }

    v164 = v163[4];
    v165 = *(v164 + 16);
    if (v165)
    {
      v166 = (v164 + 32);
      v167 = 1;
      do
      {
        v168 = *v166++;
        v169 = v167 * v168;
        if ((v167 * v168) >> 64 != (v167 * v168) >> 63)
        {
          __break(1u);
          goto LABEL_91;
        }

        v167 = v169;
        --v165;
      }

      while (v165);
      if (v169 < 0)
      {
        goto LABEL_96;
      }

      if (!v169)
      {
        v170 = MEMORY[0x277D84F90];
        goto LABEL_49;
      }
    }

    else
    {
      v167 = 1;
    }

    v170 = sub_272377B5C();
    *(v170 + 16) = v167;
    bzero((v170 + 32), 4 * v167);
LABEL_49:
    swift_beginAccess();
    v171 = *(v14 + 32);
    *(v14 + 32) = v170;

    if (v163[2] < 2uLL)
    {
      goto LABEL_97;
    }

    v172 = v163[5];
    v173 = *(v172 + 16);
    if (v173)
    {
      v174 = (v172 + 32);
      v175 = 1;
      while (1)
      {
        v176 = *v174++;
        v177 = v175 * v176;
        if ((v175 * v176) >> 64 != (v175 * v176) >> 63)
        {
          break;
        }

        v175 = v177;
        if (!--v173)
        {
          if (v177 < 0)
          {
            goto LABEL_98;
          }

          if (!v177)
          {
            v178 = MEMORY[0x277D84F90];
            goto LABEL_59;
          }

          goto LABEL_58;
        }
      }

LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v175 = 1;
LABEL_58:
    v178 = sub_272377B5C();
    *(v178 + 16) = v175;
    bzero((v178 + 32), 4 * v175);
LABEL_59:
    swift_beginAccess();
    v179 = *(v14 + 33);
    *(v14 + 33) = v178;

    if (v163[2] < 3uLL)
    {
      goto LABEL_99;
    }

    v180 = v163[6];
    v181 = *(v180 + 16);
    if (v181)
    {
      v182 = (v180 + 32);
      v183 = 1;
      while (1)
      {
        v184 = *v182++;
        v185 = v183 * v184;
        if ((v183 * v184) >> 64 != (v183 * v184) >> 63)
        {
          break;
        }

        v183 = v185;
        if (!--v181)
        {
          if (v185 < 0)
          {
            goto LABEL_100;
          }

          if (!v185)
          {
            v186 = MEMORY[0x277D84F90];
            goto LABEL_69;
          }

          goto LABEL_68;
        }
      }

LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    v183 = 1;
LABEL_68:
    v186 = sub_272377B5C();
    *(v186 + 16) = v183;
    bzero((v186 + 32), 4 * v183);
LABEL_69:
    swift_beginAccess();
    v187 = *(v14 + 34);
    *(v14 + 34) = v186;

    if (v163[2] < 4uLL)
    {
      goto LABEL_101;
    }

    v188 = v163[7];
    v189 = *(v188 + 16);
    if (v189)
    {
      v190 = (v188 + 32);
      v191 = 1;
      while (1)
      {
        v192 = *v190++;
        v193 = v191 * v192;
        if ((v191 * v192) >> 64 != (v191 * v192) >> 63)
        {
          goto LABEL_93;
        }

        v191 = v193;
        if (!--v189)
        {
          if (v193 < 0)
          {
            goto LABEL_102;
          }

          if (!v193)
          {
            v194 = MEMORY[0x277D84F90];
            goto LABEL_79;
          }

          goto LABEL_78;
        }
      }
    }

    v191 = 1;
LABEL_78:
    v194 = sub_272377B5C();
    *(v194 + 16) = v191;
    bzero((v194 + 32), 4 * v191);
LABEL_79:
    swift_beginAccess();
    v195 = *(v14 + 35);
    *(v14 + 35) = v194;

    if (v163[2] < 5uLL)
    {
      goto LABEL_103;
    }

    v196 = v163[8];

    v197 = *(v196 + 16);
    if (v197)
    {
      v198 = 1;
      v199 = 32;
      while (1)
      {
        v200 = *(v196 + v199);
        v201 = v198 * v200;
        if ((v198 * v200) >> 64 != (v198 * v200) >> 63)
        {
          goto LABEL_94;
        }

        v199 += 8;
        v198 *= v200;
        if (!--v197)
        {

          v202 = v201;
          goto LABEL_86;
        }
      }
    }

    v202 = 1.0;
LABEL_86:
    sub_272201EE0(0.0, v202, 1.0);
    v204 = v203;
    swift_beginAccess();
    v205 = *(v14 + 36);
    *(v14 + 36) = v204;

    type metadata accessor for VABundleUtil();
    v206 = (*(*v225 + 296))();
    v208 = static VABundleUtil.bundlePathFallback(path:)(v206, v207);
    if (!v136)
    {
      v210 = v209;
      v211 = v208;

      sub_2721F94F8(v211, v210);

      sub_2721F9FF0();

      return v3;
    }

LABEL_89:

    return v3;
  }

LABEL_107:
  __break(1u);
  return result;
}

unint64_t sub_2721F94F8(uint64_t a1, unint64_t a2)
{
  v6 = sub_27237728C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_27237788C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  sub_27237787C();
  result = sub_2723777EC();
  if (v3)
  {
    return result;
  }

  v15 = result;
  v16 = v14;
  v119 = v2;
  v108 = a1;
  v116 = a2;
  v123 = 10;
  v124 = 0xE100000000000000;
  MEMORY[0x28223BE20](result);
  *(&v106 - 2) = &v123;

  result = sub_2721FF4F4(0x7FFFFFFFFFFFFFFFLL, 1, sub_272204258, (&v106 - 4), v15, v16, v17);
  v18 = result;
  v109 = 0;
  v115 = *(result + 16);
  v117 = v7;
  v118 = v10;
  if (!v115)
  {

    v97 = v116;
    goto LABEL_104;
  }

  v106 = v16;
  v107 = v6;
  v19 = 0;
  v113 = result;
  v114 = result + 32;
  v110 = &v123 + 1;
  do
  {
    if (v19 >= *(v18 + 16))
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
      goto LABEL_113;
    }

    v120 = v19;
    v20 = (v114 + 32 * v19);
    v21 = *v20;
    v22 = v20[2];
    v23 = v20[3];
    v24 = *v20 >> 14;
    v25 = v20[1] >> 14;

    v122 = v23;
    if (v24 == v25)
    {
      v26 = MEMORY[0x277D84F90];
      v27 = v118;
      v28 = v119;
      goto LABEL_30;
    }

    v121 = MEMORY[0x277D84F90];
    v29 = v21;
    do
    {
      while (sub_27237807C() != 9 || v33 != 0xE100000000000000)
      {
        v34 = sub_27237865C();

        if (v34)
        {
          goto LABEL_16;
        }

        result = sub_27237803C();
        v24 = result >> 14;
        if (result >> 14 == v25)
        {
          goto LABEL_22;
        }
      }

LABEL_16:
      if (v29 >> 14 != v24)
      {
        if (v24 < v29 >> 14)
        {
          goto LABEL_111;
        }

        v35 = sub_27237808C();
        v37 = v36;
        v111 = v39;
        v112 = v38;
        v40 = v121;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_2721FF9B8(0, *(v40 + 2) + 1, 1, v40);
        }

        v41 = v40;
        v42 = *(v40 + 2);
        v121 = v41;
        v43 = *(v41 + 3);
        if (v42 >= v43 >> 1)
        {
          v121 = sub_2721FF9B8((v43 > 1), v42 + 1, 1, v121);
        }

        v30 = v121;
        *(v121 + 2) = v42 + 1;
        v31 = &v30[32 * v42];
        *(v31 + 4) = v35;
        *(v31 + 5) = v37;
        v32 = v111;
        *(v31 + 6) = v112;
        *(v31 + 7) = v32;
      }

      result = sub_27237803C();
      v29 = result;
      v24 = result >> 14;
    }

    while (result >> 14 != v25);
LABEL_22:
    if (v29 >> 14 == v25)
    {

      v27 = v118;
      v28 = v119;
      v26 = v121;
      goto LABEL_30;
    }

    v28 = v119;
    v44 = v121;
    if (v25 < v29 >> 14)
    {
      goto LABEL_112;
    }

    v45 = sub_27237808C();
    v47 = v46;
    v49 = v48;
    v51 = v50;

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2721FF9B8(0, *(v44 + 2) + 1, 1, v44);
      v44 = result;
    }

    v27 = v118;
    v52 = v44;
    v53 = *(v44 + 2);
    v54 = v52;
    v55 = *(v52 + 3);
    if (v53 >= v55 >> 1)
    {
      result = sub_2721FF9B8((v55 > 1), v53 + 1, 1, v54);
      v54 = result;
    }

    *(v54 + 16) = v53 + 1;
    v56 = (v54 + 32 * v53);
    v26 = v54;
    v56[4] = v45;
    v56[5] = v47;
    v56[6] = v49;
    v56[7] = v51;
LABEL_30:
    if (*(v26 + 2) < 2uLL)
    {
      goto LABEL_109;
    }

    v58 = *(v26 + 8);
    v57 = *(v26 + 9);
    v59 = *(v26 + 10);
    v60 = *(v26 + 11);

    v61 = MEMORY[0x2743C4A20](v58, v57, v59, v60);
    v63 = v62;

    v64 = HIBYTE(v63) & 0xF;
    v65 = v61 & 0xFFFFFFFFFFFFLL;
    if ((v63 & 0x2000000000000000) != 0)
    {
      v66 = HIBYTE(v63) & 0xF;
    }

    else
    {
      v66 = v61 & 0xFFFFFFFFFFFFLL;
    }

    if (!v66)
    {

      v68 = 0;
      v86 = 1;
      if (*(v26 + 2))
      {
        goto LABEL_96;
      }

      goto LABEL_110;
    }

    if ((v63 & 0x1000000000000000) != 0)
    {
      v125 = 0;
      v68 = sub_272200A34(v61, v63, 10);
      v86 = v98;
      goto LABEL_93;
    }

    if ((v63 & 0x2000000000000000) != 0)
    {
      v123 = v61;
      v124 = v63 & 0xFFFFFFFFFFFFFFLL;
      if (v61 == 43)
      {
        if (v64)
        {
          if (--v64)
          {
            v68 = 0;
            v78 = v110;
            while (1)
            {
              v79 = *v78 - 48;
              if (v79 > 9)
              {
                break;
              }

              v80 = 10 * v68;
              if ((v68 * 10) >> 64 != (10 * v68) >> 63)
              {
                break;
              }

              v68 = v80 + v79;
              if (__OFADD__(v80, v79))
              {
                break;
              }

              ++v78;
              if (!--v64)
              {
                goto LABEL_92;
              }
            }
          }

          goto LABEL_91;
        }

LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      if (v61 != 45)
      {
        if (v64)
        {
          v68 = 0;
          v83 = &v123;
          while (1)
          {
            v84 = *v83 - 48;
            if (v84 > 9)
            {
              break;
            }

            v85 = 10 * v68;
            if ((v68 * 10) >> 64 != (10 * v68) >> 63)
            {
              break;
            }

            v68 = v85 + v84;
            if (__OFADD__(v85, v84))
            {
              break;
            }

            v83 = (v83 + 1);
            if (!--v64)
            {
              goto LABEL_92;
            }
          }
        }

        goto LABEL_91;
      }

      if (v64)
      {
        if (--v64)
        {
          v68 = 0;
          v72 = v110;
          while (1)
          {
            v73 = *v72 - 48;
            if (v73 > 9)
            {
              break;
            }

            v74 = 10 * v68;
            if ((v68 * 10) >> 64 != (10 * v68) >> 63)
            {
              break;
            }

            v68 = v74 - v73;
            if (__OFSUB__(v74, v73))
            {
              break;
            }

            ++v72;
            if (!--v64)
            {
              goto LABEL_92;
            }
          }
        }

LABEL_91:
        v68 = 0;
        LOBYTE(v64) = 1;
        goto LABEL_92;
      }

LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    if ((v61 & 0x1000000000000000) != 0)
    {
      result = (v63 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_27237825C();
    }

    v67 = *result;
    if (v67 == 43)
    {
      if (v65 >= 1)
      {
        v64 = v65 - 1;
        if (v65 == 1)
        {
          goto LABEL_91;
        }

        v68 = 0;
        if (!result)
        {
          goto LABEL_83;
        }

        v75 = (result + 1);
        while (1)
        {
          v76 = *v75 - 48;
          if (v76 > 9)
          {
            goto LABEL_91;
          }

          v77 = 10 * v68;
          if ((v68 * 10) >> 64 != (10 * v68) >> 63)
          {
            goto LABEL_91;
          }

          v68 = v77 + v76;
          if (__OFADD__(v77, v76))
          {
            goto LABEL_91;
          }

          ++v75;
          if (!--v64)
          {
            goto LABEL_92;
          }
        }
      }

LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
      return result;
    }

    if (v67 != 45)
    {
      if (!v65)
      {
        goto LABEL_91;
      }

      v68 = 0;
      if (!result)
      {
        goto LABEL_83;
      }

      while (1)
      {
        v81 = *result - 48;
        if (v81 > 9)
        {
          goto LABEL_91;
        }

        v82 = 10 * v68;
        if ((v68 * 10) >> 64 != (10 * v68) >> 63)
        {
          goto LABEL_91;
        }

        v68 = v82 + v81;
        if (__OFADD__(v82, v81))
        {
          goto LABEL_91;
        }

        ++result;
        if (!--v65)
        {
          goto LABEL_83;
        }
      }
    }

    if (v65 < 1)
    {
      goto LABEL_115;
    }

    v64 = v65 - 1;
    if (v65 == 1)
    {
      goto LABEL_91;
    }

    v68 = 0;
    if (result)
    {
      v69 = (result + 1);
      while (1)
      {
        v70 = *v69 - 48;
        if (v70 > 9)
        {
          goto LABEL_91;
        }

        v71 = 10 * v68;
        if ((v68 * 10) >> 64 != (10 * v68) >> 63)
        {
          goto LABEL_91;
        }

        v68 = v71 - v70;
        if (__OFSUB__(v71, v70))
        {
          goto LABEL_91;
        }

        ++v69;
        if (!--v64)
        {
          goto LABEL_92;
        }
      }
    }

LABEL_83:
    LOBYTE(v64) = 0;
LABEL_92:
    v125 = v64;
    v86 = v64;
LABEL_93:

    if (v86)
    {
      v68 = 0;
    }

    if (!*(v26 + 2))
    {
      goto LABEL_110;
    }

LABEL_96:
    v87 = v27;
    v88 = *(v26 + 4);
    v89 = *(v26 + 5);
    v90 = *(v26 + 6);
    v91 = *(v26 + 7);

    v92 = MEMORY[0x2743C4A20](v88, v89, v90, v91);
    v94 = v93;

    if (v86)
    {
      goto LABEL_117;
    }

    v19 = v120 + 1;

    v95 = (*(*v28 + 584))(&v123);
    sub_272201588(v68, v92, v94);
    v95(&v123, 0);
    v96 = (*(*v28 + 560))(&v123);
    sub_272201434(v92, v94, v68);

    result = v96(&v123, 0);
    v97 = v116;
    v7 = v117;
    v18 = v113;
  }

  while (v19 != v115);

  v10 = v87;
  v6 = v107;
LABEL_104:
  v99 = sub_2722C389C();
  (*(v7 + 16))(v10, v99, v6);
  v100 = v119;
  swift_retain_n();

  v101 = sub_27237725C();
  v102 = sub_272377E7C();

  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v123 = v104;
    *v103 = 134218242;
    v105 = *((*(*v100 + 544))(v104) + 16);

    *(v103 + 4) = v105;

    *(v103 + 12) = 2080;
    *(v103 + 14) = sub_2721FFD04(v108, v97, &v123);
    _os_log_impl(&dword_2721E4000, v101, v102, "Loaded %ld symbols from %s", v103, 0x16u);
    sub_2722039C8(v104);
    MEMORY[0x2743C69C0](v104, -1, -1);
    MEMORY[0x2743C69C0](v103, -1, -1);

    return (*(v117 + 8))(v118, v6);
  }

  else
  {

    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_2721F9FF0()
{
  v1 = v0;
  v2 = (*(*v0 + 744))(MEMORY[0x277D84F90]);
  (*(*v0 + 768))(v2, 0.0);
  v3 = (*(*v0 + 720))(-1);
  v4 = *(*v0 + 664);
  v5 = *(v4(v3) + 16);

  if (v5)
  {
    v7 = 0;
    v8 = *(*v0 + 680);
    while (1)
    {
      v9 = *(v4(v6) + 16);

      v10 = v7 >= v9 - 8 ? 1.0 : 0.0;
      v11 = v8(v20);
      v13 = v12;
      v14 = *v12;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v13 = v14;
      if ((result & 1) == 0)
      {
        result = sub_2722002AC(v14);
        v14 = result;
        *v13 = result;
      }

      if (v7 >= *(v14 + 16))
      {
        break;
      }

      *(v14 + 4 * v7 + 32) = v10;
      v6 = v11(v20, 0);
      if (v5 == ++v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v16 = (*(*v1 + 656))(v20);
    sub_2721F4234();
    v16(v20, 0);
    v17 = (*(*v1 + 608))(v20);
    sub_2721F4234();
    v17(v20, 0);
    v18 = (*(*v1 + 632))(v20);
    sub_2721F4234();
    v18(v20, 0);
    v19 = (*(*v1 + 704))(v20);
    sub_2721F4234();
    v19(v20, 0);
    return (*(*v1 + 360))(0, 0xE000000000000000);
  }

  return result;
}

uint64_t static VACTCEncoder.build(config:debug:)(uint64_t a1, char a2)
{
  v3 = v2;
  if ((*(*a1 + 488))(a1))
  {
    type metadata accessor for VATransducer();

    return VATransducer.__allocating_init(config:debug:)(v5);
  }

  else
  {
    type metadata accessor for VACTCEncoder();
    v7 = swift_allocObject();

    result = sub_2721F7F44(v8, a2 & 1);
    if (!v3)
    {
      return v7;
    }
  }

  return result;
}

uint64_t sub_2721FA494(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v7 = sub_27237728C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v76 - v14;
  MEMORY[0x28223BE20](v13);
  v91 = &v76 - v16;
  v90 = sub_272376BCC();
  v17 = *(v90 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v90);
  v89 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v92 = (*(*v2 + 376))(v19);
    if (!v92)
    {
      v69 = sub_2722C389C();
      (*(v8 + 16))(v12, v69, v7);
      v70 = sub_27237725C();
      v71 = sub_272377E8C();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = v7;
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_2721E4000, v70, v71, "Context encoder not initialized. Ignoring setContext", v73, 2u);
        MEMORY[0x2743C69C0](v73, -1, -1);

        return (*(v8 + 8))(v12, v72);
      }

      else
      {

        return (*(v8 + 8))(v12, v7);
      }
    }

    v78 = v15;
    v21 = *(*v2 + 504);
    v81 = v2;
    v21(1);
    v76 = a1;
    v98 = a1;
    v99 = a2;
    v77 = a2;
    v96 = 44;
    v97 = 0xE100000000000000;
    v2 = &v98;
    v88 = sub_272203AC4();
    v22 = sub_2723780BC();
    v87 = *(v22 + 16);
    v79 = v8;
    if (!v87)
    {
LABEL_27:

      v60 = sub_2722C389C();
      v61 = v79;
      v62 = v78;
      (*(v79 + 16))(v78, v60, v7);
      v63 = v77;

      v64 = sub_27237725C();
      v65 = sub_272377E6C();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = v7;
        v68 = swift_slowAlloc();
        v98 = v68;
        *v66 = 136315138;
        *(v66 + 4) = sub_2721FFD04(v76, v63, &v98);
        _os_log_impl(&dword_2721E4000, v64, v65, "Using contextual bias: %s", v66, 0xCu);
        sub_2722039C8(v68);
        MEMORY[0x2743C69C0](v68, -1, -1);
        MEMORY[0x2743C69C0](v66, -1, -1);

        return (*(v61 + 8))(v62, v67);
      }

      else
      {

        return (*(v61 + 8))(v62, v7);
      }
    }

    v24 = 0;
    v85 = (v8 + 16);
    v86 = (v17 + 8);
    v84 = (v8 + 8);
    v25 = (v22 + 40);
    *&v23 = 136315138;
    v80 = v23;
    v82 = v7;
    v83 = v22;
    v26 = v81;
    while (v24 < *(v22 + 16))
    {
      v93 = v4;
      v27 = *(v25 - 1);
      v28 = *v25;
      v98 = sub_2723778AC();
      v99 = v29;
      v96 = 95;
      v97 = 0xE100000000000000;
      v94 = 32;
      v95 = 0xE100000000000000;
      v30 = sub_2723780FC();
      v32 = v31;

      v98 = v30;
      v99 = v32;
      v33 = v89;
      sub_272376B4C();
      v100 = sub_2723780EC();
      v12 = v34;
      (*v86)(v33, v90);

      v35 = v92;

      v36 = sub_2722C389C();
      v37 = v91;
      (*v85)(v91, v36, v7);

      v38 = sub_27237725C();
      v39 = sub_272377E7C();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = v7;
        v42 = swift_slowAlloc();
        v98 = v42;
        *v40 = v80;
        *(v40 + 4) = sub_2721FFD04(v100, v12, &v98);
        _os_log_impl(&dword_2721E4000, v38, v39, "Computing context vector for %s", v40, 0xCu);
        sub_2722039C8(v42);
        MEMORY[0x2743C69C0](v42, -1, -1);
        v43 = v40;
        v35 = v92;
        MEMORY[0x2743C69C0](v43, -1, -1);

        v44 = v41;
        v26 = v81;
        (*v84)(v37, v44);
      }

      else
      {

        (*v84)(v37, v7);
      }

      v45 = v93;
      v46 = *(*v35 + 152);

      v47 = v46(v100, v12);
      v4 = v45;
      if (v45)
      {
      }

      v48 = v47;

      v2 = (*(*v26 + 440))(&v98);
      v15 = *v49;
      if (*v49)
      {
        v12 = v49;
        v50 = *v49;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v12 = v15;
        v7 = v82;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v15 = sub_272200344(v15);
          *v12 = v15;
        }

        if (v24 >= *(v15 + 2))
        {
          goto LABEL_39;
        }

        v52 = &v15[8 * v24];
        v53 = *(v52 + 4);
        *(v52 + 4) = v48;

        (v2)(&v98, 0);
      }

      else
      {

        (v2)(&v98, 0);
        v7 = v82;
      }

      v2 = (*(*v26 + 488))(&v98);
      v15 = *v54;
      if (*v54)
      {
        v12 = v54;
        v55 = *v54;
        v56 = swift_isUniquelyReferenced_nonNull_native();
        *v12 = v15;
        if ((v56 & 1) == 0)
        {
          v15 = sub_2722002AC(v15);
          *v12 = v15;
        }

        if (v24 >= *(v15 + 2))
        {
          goto LABEL_40;
        }

        *&v15[4 * v24 + 32] = 1065353216;
      }

      (v2)(&v98, 0);
      v24 = (v24 + 1);
      v25 += 2;
      v22 = v83;
      if (v87 == v24)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  else
  {
    v12 = (*(*v2 + 440))(&v98);
    v15 = *v57;
    if (!*v57)
    {
      (v12)(&v98, 0);
      goto LABEL_32;
    }

    v24 = v57;
    v58 = *v57;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v24 = v15;
    if (result)
    {
      if (!*(v15 + 2))
      {
LABEL_42:
        __break(1u);
        return result;
      }

      goto LABEL_26;
    }
  }

  result = sub_272200344(v15);
  *v24 = result;
  if (!*(result + 16))
  {
    goto LABEL_42;
  }

LABEL_26:
  sub_2721F4234();
  (v12)(&v98, 0);
LABEL_32:
  v74 = (*(*v2 + 488))(&v98);
  if (*v75)
  {
    sub_2721F4234();
  }

  return v74(&v98, 0);
}
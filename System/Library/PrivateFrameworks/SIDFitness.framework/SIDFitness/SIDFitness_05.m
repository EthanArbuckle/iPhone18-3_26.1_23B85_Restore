BOOL sub_2629F491C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  if (!*(*a3 + 16))
  {
    goto LABEL_9;
  }

  v8 = sub_2629CB210(*a1);
  if (v9)
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    v11 = sub_2629CB210(v6);
    if ((v12 & 1) == 0)
    {
      if (v10)
      {
        return v10 > 0;
      }

LABEL_9:
      v16 = *a4;
      if (*(*a4 + 16))
      {
        v17 = sub_2629CB210(v5);
        if (v18)
        {
          v19 = *(*(v16 + 56) + 8 * v17);
          v20 = sub_2629CB210(v6);
          if ((v21 & 1) == 0)
          {
            if (v19 != 0.0)
            {
              v22 = 0.0;
              return v22 < v19;
            }

            return v5 < v6;
          }

          goto LABEL_16;
        }

        v20 = sub_2629CB210(v6);
        if (v23)
        {
          v19 = 0.0;
LABEL_16:
          v22 = *(*(v16 + 56) + 8 * v20);
          if (v19 != v22)
          {
            return v22 < v19;
          }
        }
      }

      return v5 < v6;
    }
  }

  else
  {
    v11 = sub_2629CB210(v6);
    if ((v14 & 1) == 0)
    {
      goto LABEL_9;
    }

    v10 = 0;
  }

  v15 = *(*(v7 + 56) + 8 * v11);
  if (v10 == v15)
  {
    goto LABEL_9;
  }

  return v15 < v10;
}

int64_t sub_2629F4A34(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v57 = type metadata accessor for PreprocessedUserHistoryWithMetadata();
  v4 = *(v57 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v57);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v54 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v54 - v12;
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD000000000000035, 0x8000000262A33140);
  v59 = *(a1 + 16);
  v14 = v59;
  v15 = sub_262A2A868();
  MEMORY[0x26672ECF0](v15);

  MEMORY[0x26672ECF0](0x74756F6B726F7720, 0xE900000000000073);
  v56 = v2;
  sub_2629EA8C8(v60, v61);

  v54 = v4;
  if (v14)
  {
    v16 = *(v4 + 80);
    v17 = *(v4 + 72);
    v58 = (v16 + 32) & ~v16;
    v18 = a1 + v58;
    v19 = MEMORY[0x277D84F90];
    v20 = v57;
    do
    {
      sub_2629FEF84(v18, v13, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      if (v13[*(v20 + 56)] == 7)
      {
        sub_2629FEFEC(v13, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      }

      else
      {
        sub_2629FF04C(v13, v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2629CD8E0(0, *(v19 + 16) + 1, 1);
          v20 = v57;
          v19 = v60;
        }

        v23 = *(v19 + 16);
        v22 = *(v19 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_2629CD8E0(v22 > 1, v23 + 1, 1);
          v20 = v57;
          v19 = v60;
        }

        *(v19 + 16) = v23 + 1;
        sub_2629FF04C(v8, v19 + v58 + v23 * v17);
      }

      v18 += v17;
      --v14;
    }

    while (v14);
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  v60 = 0;
  v61 = 0xE000000000000000;
  sub_262A2A6F8();

  v60 = 0x20646E756F46;
  v61 = 0xE600000000000000;
  v59 = *(v19 + 16);
  v24 = sub_262A2A868();
  MEMORY[0x26672ECF0](v24);

  MEMORY[0x26672ECF0](0xD000000000000022, 0x8000000262A33180);
  sub_2629EA8C8(v60, v61);

  v25 = *(v19 + 16);
  if (v25)
  {
    v26 = *(v57 + 56);
    v27 = v19 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
    v28 = *(v54 + 72);
    v29 = MEMORY[0x277D84F90];
    do
    {
      sub_2629FEF84(v27, v11, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v31 = v11[v26];
      sub_2629FEFEC(v11, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      if (v31 != 7)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_2629A9140(0, *(v29 + 2) + 1, 1, v29);
        }

        v33 = *(v29 + 2);
        v32 = *(v29 + 3);
        if (v33 >= v32 >> 1)
        {
          v29 = sub_2629A9140((v32 > 1), v33 + 1, 1, v29);
        }

        v30 = qword_262A30AA0[v31];
        *(v29 + 2) = v33 + 1;
        *&v29[8 * v33 + 32] = v30;
      }

      v27 += v28;
      --v25;
    }

    while (v25);
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
  }

  result = sub_262A04550(v29);
  if (v35)
  {
    v36 = 0;
  }

  else
  {
    v36 = result;
  }

  v37 = *(v29 + 2);
  if (v37)
  {
    v38 = 0;
    v39 = (v29 + 32);
    while (1)
    {
      v40 = *v39++;
      v41 = __OFADD__(v38, v40);
      v38 += v40;
      if (v41)
      {
        break;
      }

      if (!--v37)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_52;
  }

  v38 = 0;
LABEL_32:

  v42 = *(v55 + 16);
  if (v42)
  {
    v43 = 0;
    v44 = (v55 + 32);
    while (1)
    {
      v45 = *v44++;
      v41 = __OFADD__(v43, v45);
      v43 += v45;
      if (v41)
      {
        break;
      }

      if (!--v42)
      {
        if (v43 <= 0)
        {
          v46 = 0;
        }

        else
        {
          v46 = v38 / v43;
        }

        goto LABEL_40;
      }
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v43 = 0;
  v46 = 0;
LABEL_40:
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD000000000000019, 0x8000000262A331B0);
  v59 = v36;
  v47 = sub_262A2A868();
  MEMORY[0x26672ECF0](v47);

  MEMORY[0x26672ECF0](0x657661202C6E696DLL, 0xEE00203A65676172);
  v59 = v46;
  v48 = sub_262A2A868();
  MEMORY[0x26672ECF0](v48);

  MEMORY[0x26672ECF0](0xD000000000000017, 0x8000000262A331D0);
  v59 = v43;
  v49 = sub_262A2A868();
  MEMORY[0x26672ECF0](v49);

  sub_2629EA8C8(v60, v61);

  if (v46 <= v36)
  {
    v50 = v36;
  }

  else
  {
    v50 = v46;
  }

  v51 = v50 % 10;
  if (!(v50 % 10))
  {
    goto LABEL_50;
  }

  if (v51 < 6)
  {
    if (!(v50 % 5))
    {
      goto LABEL_50;
    }

    v51 = 5 - v50 % 5;
    v41 = __OFADD__(v50, v51);
    v50 += v51;
    if (!v41)
    {
      goto LABEL_50;
    }

    __break(1u);
  }

  v52 = 10 - v51;
  v41 = __OFADD__(v50, v52);
  v50 += v52;
  if (!v41)
  {
LABEL_50:
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_262A2A6F8();

    v60 = 0xD000000000000027;
    v61 = 0x8000000262A331F0;
    v59 = v50;
    v53 = sub_262A2A868();
    MEMORY[0x26672ECF0](v53);

    sub_2629EA8C8(v60, v61);

    return v50;
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_2629F514C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = MEMORY[0x277D84F90];
  v8 = sub_2629AC1F0(MEMORY[0x277D84F90]);
  v88 = v4;
  v75 = sub_262A1CF90(v8, sub_2629FEE44, v87, a1);
  v73 = sub_2629EF140(a1, a2);
  v9 = v4 + *(type metadata accessor for HeuristicsProcessor() + 24);
  v10 = type metadata accessor for PlanGenerationContext();
  v11 = *(v9 + *(v10 + 128)) * 100.0;
  v64 = v10;
  v65 = v9;
  v12 = *(v9 + *(v10 + 108)) * 100.0;
  v13 = sub_2629AC1C8(&unk_287533A20);
  v14 = sub_2629AC5B8(&unk_287533CE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C2D8, &unk_262A30A30);
  swift_arrayDestroy();
  v15 = sub_2629ACBD0(v7);
  v82 = v13;
  v83 = v14;
  v84 = v4;
  v85 = v11;
  v86 = v12;
  v16 = sub_262A1CF90(v15, sub_2629FEE60, v81, a1);

  v17 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v76 = v19 & *(a1 + 64);
  v20 = (v18 + 63) >> 6;
  v74 = a1;

  v21 = 0;
  v80 = v7;
  v71 = a1 + 64;
  v72 = v16;
  v70 = v20;
  v22 = v75;
  v23 = v76;
  if (v76)
  {
LABEL_8:
    while (2)
    {
      v25 = *(*(v74 + 48) + (__clz(__rbit64(v23)) | (v21 << 6)));
      if (!*(v16 + 16))
      {
        v30 = v7;
        v38 = v7;
        goto LABEL_71;
      }

      v26 = sub_2629CB1E4(v25);
      if (v27)
      {
        v68 = v25;
        v28 = *(*(v16 + 56) + 16 * v26 + 8);
        v29 = *(v28 + 16);
        if (v29)
        {
          v77 = v23;
          v89 = v7;

          sub_2629CD800(0, v29, 0);
          v30 = v89;
          v31 = 32;
          do
          {
            v32 = 0xEA00000000003436;
            v33 = 0x3936313931323531;
            switch(*(v28 + v31))
            {
              case 1:
                v32 = 0xEA00000000003432;
                goto LABEL_41;
              case 2:
                v32 = 0xEA00000000003834;
                goto LABEL_47;
              case 3:
                v32 = 0xEA00000000003536;
                goto LABEL_38;
              case 4:
                v32 = 0xEA00000000003630;
                v33 = 0x3536313931323531;
                break;
              case 5:
                v32 = 0xEA00000000003137;
                goto LABEL_50;
              case 6:
                v32 = 0xEA00000000003536;
                v33 = 0x3131303236323531;
                break;
              case 7:
                v32 = 0xEA00000000003137;
                goto LABEL_38;
              case 8:
                v32 = 0xEA00000000003537;
                goto LABEL_38;
              case 9:
                v32 = 0xEA00000000003231;
                v33 = 0x3535313931323531;
                break;
              case 0xA:
                v32 = 0xEA00000000003830;
                v33 = 0x3136393933373531;
                break;
              case 0xB:
                v32 = 0xEA00000000003936;
                goto LABEL_47;
              case 0xC:
                v33 = 0x3835313931323531;
                goto LABEL_31;
              case 0xD:
                v32 = 0xEA00000000003631;
                goto LABEL_35;
              case 0xE:
                v32 = 0xEA00000000003234;
                v33 = 0x3035343739323631;
                break;
              case 0xF:
                v33 = 0x3236313931323531;
                goto LABEL_31;
              case 0x10:
                v32 = 0xEA00000000003330;
                v33 = 0x3534333231373531;
                break;
              case 0x11:
                v32 = 0xEA00000000003634;
                v33 = 0x3036313931323531;
                break;
              case 0x12:
                v32 = 0xEA00000000003138;
LABEL_35:
                v33 = 0x3936313931323531;
                break;
              case 0x13:
                v32 = 0xEA00000000003533;
                goto LABEL_43;
              case 0x14:
                v32 = 0xEA00000000003335;
                goto LABEL_45;
              case 0x15:
                v33 = 0x3331393535343631;
LABEL_31:
                v32 = 0xEA00000000003832;
                break;
              case 0x16:
                v32 = 0xEA00000000003831;
LABEL_41:
                v33 = 0x3236313931323531;
                break;
              case 0x17:
                v32 = 0xEA00000000003336;
LABEL_45:
                v33 = 0x3439303330373531;
                break;
              case 0x18:
                v32 = 0xEA00000000003437;
                v33 = 0x3531393535343631;
                break;
              case 0x19:
                v32 = 0xEA00000000003934;
LABEL_38:
                v33 = 0x3337313931323531;
                break;
              case 0x1A:
                v32 = 0xEA00000000003537;
LABEL_50:
                v34 = 0x303236323531;
                goto LABEL_51;
              case 0x1B:
                v32 = 0xEA00000000003630;
                v34 = 0x393535343631;
LABEL_51:
                v33 = v34 & 0xFFFFFFFFFFFFLL | 0x3331000000000000;
                break;
              case 0x1C:
                v32 = 0xEA00000000003636;
LABEL_47:
                v33 = 0x3637313931323531;
                break;
              case 0x1D:
                v32 = 0xEA00000000003539;
                v33 = 0x3436393933373531;
                break;
              case 0x1E:
                v32 = 0xEA00000000003534;
LABEL_43:
                v33 = 0x3835313931323531;
                break;
              default:
                break;
            }

            v89 = v30;
            v36 = *(v30 + 16);
            v35 = *(v30 + 24);
            if (v36 >= v35 >> 1)
            {
              sub_2629CD800((v35 > 1), v36 + 1, 1);
              v30 = v89;
            }

            *(v30 + 16) = v36 + 1;
            v37 = v30 + 16 * v36;
            *(v37 + 32) = v33;
            *(v37 + 40) = v32;
            ++v31;
            --v29;
          }

          while (v29);

          v7 = MEMORY[0x277D84F90];
          v22 = v75;
          v23 = v77;
          v16 = v72;
        }

        else
        {
          v30 = v7;
          v22 = v75;
        }

        v25 = v68;
        if (!*(v16 + 16))
        {
          break;
        }
      }

      else
      {
        v30 = v7;
        if (!*(v16 + 16))
        {
          break;
        }
      }

      v39 = sub_2629CB1E4(v25);
      if (v40)
      {
        v69 = v25;
        v41 = *(*(v16 + 56) + 16 * v39);
        v42 = *(v41 + 16);
        if (v42)
        {
          v78 = v23;
          v89 = v7;

          sub_2629CD800(0, v42, 0);
          v38 = v89;
          v43 = 32;
          do
          {
            v44 = *(v41 + v43);
            v89 = v38;
            v46 = *(v38 + 16);
            v45 = *(v38 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_2629CD800((v45 > 1), v46 + 1, 1);
              v38 = v89;
            }

            *(v38 + 16) = v46 + 1;
            v47 = v38 + 16 * v46;
            *(v47 + 32) = 3748149 - (v44 << 16);
            *(v47 + 40) = 0xE300000000000000;
            ++v43;
            --v42;
          }

          while (v42);

          v7 = MEMORY[0x277D84F90];
          v22 = v75;
          v23 = v78;
        }

        else
        {
          v38 = v7;
          v22 = v75;
        }

        v25 = v69;
LABEL_71:
        v79 = (v23 - 1) & v23;
        v48 = 0xEA00000000003638;
        v49 = 0x3932343038373431;
        switch(v25)
        {
          case 1:
            v48 = 0xEA00000000003937;
            if (*(v22 + 16))
            {
              goto LABEL_95;
            }

            goto LABEL_88;
          case 2:
            v48 = 0xEA00000000003438;
            if (!*(v22 + 16))
            {
              goto LABEL_88;
            }

            goto LABEL_95;
          case 3:
            v48 = 0xEA00000000003238;
            if (!*(v22 + 16))
            {
              goto LABEL_88;
            }

            goto LABEL_95;
          case 4:
            v48 = 0xEA00000000003633;
            v49 = 0x3532363037343631;
            if (!*(v22 + 16))
            {
              goto LABEL_88;
            }

            goto LABEL_95;
          case 5:
            v48 = 0xEA00000000003839;
            goto LABEL_87;
          case 6:
            v48 = 0xEA00000000003738;
            if (!*(v22 + 16))
            {
              goto LABEL_88;
            }

            goto LABEL_95;
          case 7:
            v48 = 0xEA00000000003739;
            goto LABEL_87;
          case 8:
            v48 = 0xEA00000000003038;
            if (!*(v22 + 16))
            {
              goto LABEL_88;
            }

            goto LABEL_95;
          case 9:
            v48 = 0xEA00000000003639;
LABEL_87:
            v49 = 0x3332373831363531;
            if (!*(v22 + 16))
            {
              goto LABEL_88;
            }

            goto LABEL_95;
          case 10:
            v48 = 0xEA00000000003338;
            goto LABEL_94;
          case 11:
            v48 = 0xEA00000000003138;
            if (!*(v22 + 16))
            {
              goto LABEL_88;
            }

            goto LABEL_95;
          case 12:
            v48 = 0xEA00000000003635;
            v49 = 0x3032383934393431;
            if (!*(v22 + 16))
            {
              goto LABEL_88;
            }

            goto LABEL_95;
          case 13:
            v48 = 0xEA00000000003538;
            if (!*(v22 + 16))
            {
              goto LABEL_88;
            }

            goto LABEL_95;
          default:
LABEL_94:
            if (*(v22 + 16))
            {
LABEL_95:
              v50 = v25;
              v51 = sub_2629CB1E4(v25);
              if (v52)
              {
                v53 = *(*(v22 + 56) + 8 * v51);

                goto LABEL_98;
              }
            }

            else
            {
LABEL_88:
              v50 = v25;
            }

            v53 = v7;
LABEL_98:
            if (*(v73 + 2) && (v54 = sub_2629CB1E4(v50), (v55 & 1) != 0))
            {
              v56 = *(*(v73 + 7) + 8 * v54);
            }

            else
            {
              v56 = v7;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v80 = sub_2629A9020(0, *(v80 + 2) + 1, 1, v80);
            }

            v58 = *(v80 + 2);
            v57 = *(v80 + 3);
            if (v58 >= v57 >> 1)
            {
              v80 = sub_2629A9020((v57 > 1), v58 + 1, 1, v80);
            }

            *(v80 + 2) = v58 + 1;
            v59 = &v80[48 * v58];
            *(v59 + 4) = v49;
            *(v59 + 5) = v48;
            *(v59 + 6) = v53;
            *(v59 + 7) = v38;
            *(v59 + 8) = v30;
            *(v59 + 9) = v56;
            v7 = MEMORY[0x277D84F90];
            v17 = v71;
            v16 = v72;
            v20 = v70;
            v22 = v75;
            v23 = v79;
            if (!v79)
            {
              goto LABEL_4;
            }

            continue;
        }
      }

      break;
    }

    v38 = v7;
    goto LABEL_71;
  }

  while (1)
  {
LABEL_4:
    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      JUMPOUT(0x2629F5A40);
    }

    if (v24 >= v20)
    {
      break;
    }

    v23 = *(v17 + 8 * v24);
    ++v21;
    if (v23)
    {
      v21 = v24;
      goto LABEL_8;
    }
  }

  v60 = *(v65 + *(v64 + 116));

  v62 = sub_262A272BC(v61);

  *a4 = a3;
  a4[1] = a3;
  a4[2] = v80;
  a4[3] = a3;
  a4[4] = v60;
  a4[5] = v62;
  return result;
}

uint64_t sub_2629F5AF4(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v116 = MEMORY[0x277D84F90];
  for (i = &unk_2875338B0; v5; v116[v17 + 32] = v13)
  {
LABEL_4:
    while (1)
    {
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = (*(a1 + 48) + ((v7 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      v13 = sub_262A2A788();

      if (v13 < 0xE)
      {
        break;
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v116 = sub_2629A900C(0, *(v116 + 2) + 1, 1, v116);
    }

    v17 = *(v116 + 2);
    v16 = *(v116 + 3);
    if (v17 >= v16 >> 1)
    {
      v116 = sub_2629A900C((v16 > 1), v17 + 1, 1, v116);
    }

    *(v116 + 2) = v17 + 1;
  }

LABEL_6:
  v14 = v116;
  while (1)
  {
    v15 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_125;
    }

    if (v15 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v15);
    ++v7;
    if (v5)
    {
      v7 = v15;
      goto LABEL_4;
    }
  }

  v18 = *(v116 + 2);
  if (v18 <= 3)
  {

    return a1;
  }

  v19 = 0;
  v20 = MEMORY[0x277D84F98];
  v118 = MEMORY[0x277D84F98];
  do
  {
    if (v19 >= *(v14 + 2))
    {
      goto LABEL_126;
    }

    v21 = v14[v19 + 32];
    v22 = byte_262A30AD8[v21];
    v24 = sub_2629D41BC(v22);
    v25 = *(v20 + 2);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_127;
    }

    v28 = v23;
    if (*(v20 + 3) < v27)
    {
      sub_2629CFEEC(v27, 1);
      v20 = v118;
      v29 = sub_2629D41BC(v22);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_132;
      }

      v24 = v29;
    }

    i = v21;
    if (v28)
    {
      v31 = *(v20 + 7);
      v32 = *(v31 + 8 * v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v31 + 8 * v24) = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = sub_2629A900C(0, *(v32 + 2) + 1, 1, v32);
        *(v31 + 8 * v24) = v32;
      }

      v35 = *(v32 + 2);
      v34 = *(v32 + 3);
      if (v35 >= v34 >> 1)
      {
        v32 = sub_2629A900C((v34 > 1), v35 + 1, 1, v32);
        *(v31 + 8 * v24) = v32;
      }

      *(v32 + 2) = v35 + 1;
      v32[v35 + 32] = i;
      v14 = v116;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF30, &qword_262A2B3D8);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_262A2B290;
      *(v36 + 32) = v21;
      *&v20[8 * (v24 >> 6) + 64] |= 1 << v24;
      *(*(v20 + 6) + v24) = v22;
      *(*(v20 + 7) + 8 * v24) = v36;
      v37 = *(v20 + 2);
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_128;
      }

      *(v20 + 2) = v39;
    }

    ++v19;
  }

  while (v18 != v19);
  v41 = 0;
  v42 = MEMORY[0x277D84F90];
  while (2)
  {
    if (!*(v20 + 2))
    {
      goto LABEL_36;
    }

    v43 = sub_2629D41BC(byte_287533DC0[v41 + 32]);
    if ((v44 & 1) == 0)
    {
      goto LABEL_36;
    }

    v45 = *(*(v20 + 7) + 8 * v43);
    v46 = *(v45 + 16);
    if (!v46)
    {
      goto LABEL_36;
    }

    i = *(v45 + 32);
    v111 = v45 + 32;
    if (v46 == 1)
    {
      goto LABEL_41;
    }

    v109 = v42;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CDD0, &qword_262A2B3B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3BF00, &qword_262A2B3A8);
    v49 = 1;
    v110 = v46;
    while (2)
    {
      v114 = i;
      v113 = v49;
      v115 = *(v111 + v49);
      v50 = sub_262A2A778();
      v51 = &qword_287533A48;
      v52 = 12;
      do
      {
        i = *(v51 - 8);
        v53 = *v51;
        v54 = sub_2629CB1E4(i);
        if (v55)
        {
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
          sub_262A2A938();
          __break(1u);
          MEMORY[0x26672F6A0](i);

          __break(1u);
          JUMPOUT(0x2629F6668);
        }

        *(v50 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v54;
        *(v50[6] + v54) = i;
        *(v50[7] + 8 * v54) = v53;
        v56 = v50[2];
        v38 = __OFADD__(v56, 1);
        v57 = v56 + 1;
        if (v38)
        {
          goto LABEL_118;
        }

        v51 += 2;
        v50[2] = v57;
        --v52;
      }

      while (v52);
      v58 = sub_262A2A778();

      v59 = &off_287533D08;
      v60 = 12;
      do
      {
        v61 = *(v59 - 8);
        i = *v59;

        v62 = sub_2629CB1E4(v61);
        if (v63)
        {
          goto LABEL_119;
        }

        *(v58 + ((v62 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v62;
        *(v58[6] + v62) = v61;
        *(v58[7] + 8 * v62) = i;
        v64 = v58[2];
        v38 = __OFADD__(v64, 1);
        v65 = v64 + 1;
        if (v38)
        {
          goto LABEL_120;
        }

        v58[2] = v65;
        v59 += 2;
        --v60;
      }

      while (v60);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C2D8, &unk_262A30A30);
      swift_arrayDestroy();

      if (v50[2] && (v66 = sub_2629CB1E4(v115), (v67 & 1) != 0))
      {
        v68 = *(v50[7] + 8 * v66);
      }

      else
      {
        v68 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v112 = v68;

      v69 = sub_262A2A778();
      i = &qword_287533A48;
      v70 = 12;
      do
      {
        v71 = *(i - 8);
        v72 = *i;
        v73 = sub_2629CB1E4(v71);
        if (v74)
        {
          goto LABEL_121;
        }

        *(v69 + ((v73 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v73;
        *(v69[6] + v73) = v71;
        *(v69[7] + 8 * v73) = v72;
        v75 = v69[2];
        v38 = __OFADD__(v75, 1);
        v76 = v75 + 1;
        if (v38)
        {
          goto LABEL_122;
        }

        i += 16;
        v69[2] = v76;
        --v70;
      }

      while (v70);
      v77 = sub_262A2A778();

      i = &off_287533D08;
      v78 = 12;
      do
      {
        v79 = *(i - 8);
        v80 = *i;

        v81 = sub_2629CB1E4(v79);
        if (v82)
        {
          goto LABEL_123;
        }

        *(v77 + ((v81 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v81;
        *(v77[6] + v81) = v79;
        *(v77[7] + 8 * v81) = v80;
        v83 = v77[2];
        v38 = __OFADD__(v83, 1);
        v84 = v83 + 1;
        if (v38)
        {
          goto LABEL_124;
        }

        v77[2] = v84;
        i += 16;
        --v78;
      }

      while (v78);

      swift_arrayDestroy();

      if (v69[2] && (v85 = sub_2629CB1E4(v114), (v86 & 1) != 0))
      {
        v87 = *(v69[7] + 8 * v85);

        if (v112 >= v87)
        {
          i = v114;
        }

        else
        {
          i = v115;
        }
      }

      else
      {

        if (v112 == 0x7FFFFFFFFFFFFFFFLL)
        {
          i = v114;
        }

        else
        {
          i = v115;
        }
      }

      v14 = v116;
      v49 = v113 + 1;
      if (v113 + 1 != v110)
      {
        continue;
      }

      break;
    }

    v42 = v109;
LABEL_41:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_2629A900C(0, *(v42 + 2) + 1, 1, v42);
    }

    v48 = *(v42 + 2);
    v47 = *(v42 + 3);
    if (v48 >= v47 >> 1)
    {
      v42 = sub_2629A900C((v47 > 1), v48 + 1, 1, v42);
    }

    *(v42 + 2) = v48 + 1;
    v42[v48 + 32] = i;
LABEL_36:
    if (++v41 != 4)
    {
      continue;
    }

    break;
  }

  v118 = v42;
  if (*(v42 + 2) > 2uLL)
  {

    goto LABEL_95;
  }

  v88 = 0;
  v89 = *(v14 + 2);
  v90 = MEMORY[0x277D84F90];
  while (v89 != v88)
  {
    if (v88 >= v89)
    {
      goto LABEL_129;
    }

    v91 = v88 + 1;
    if (__OFADD__(v88, 1))
    {
      goto LABEL_130;
    }

    i = v116[v88 + 32];

    v92 = sub_2629EB278(i, v42);

    ++v88;
    if (!v92)
    {
      v117 = v90;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2629CD8A0(0, *(v90 + 16) + 1, 1);
        v90 = v117;
      }

      v94 = *(v90 + 16);
      v93 = *(v90 + 24);
      if (v94 >= v93 >> 1)
      {
        sub_2629CD8A0((v93 > 1), v94 + 1, 1);
        v90 = v117;
      }

      *(v90 + 16) = v94 + 1;
      *(v90 + v94 + 32) = i;
      v88 = v91;
    }
  }

  v117 = v90;

  i = 0;
  sub_2629F6B6C(&v117, sub_262A1F2C4, &type metadata for SIDWorkoutModality, sub_2629F81D8, sub_2629F7474);

  v95 = *(v42 + 2);
  if (v95 >= 4)
  {
    goto LABEL_131;
  }

  v96 = 3 - v95;
  if (*(v117 + 16) < 3 - v95)
  {
    v96 = *(v117 + 16);
  }

  v97 = 2 * v96;
  if (v95 == 3)
  {
    v98 = 1;
  }

  else
  {
    v98 = v97 + 1;
  }

  sub_262A03EE8(v117, v117 + 32, 0, v98);
  v42 = v118;
LABEL_95:
  v99 = *(v42 + 2);
  v100 = MEMORY[0x277D84F90];
  if (v99)
  {
    v117 = MEMORY[0x277D84F90];
    sub_2629CD800(0, v99, 0);
    v101 = (v42 + 32);
    v100 = v117;
    do
    {
      v102 = *v101++;
      v103 = 0xEA00000000003638;
      v104 = 0x3932343038373431;
      switch(v102)
      {
        case 1:
          v103 = 0xEA00000000003937;
          goto LABEL_110;
        case 2:
          v103 = 0xEA00000000003438;
          goto LABEL_110;
        case 3:
          v103 = 0xEA00000000003238;
          goto LABEL_110;
        case 4:
          v103 = 0xEA00000000003633;
          v104 = 0x3532363037343631;
          break;
        case 5:
          v103 = 0xEA00000000003839;
          v104 = 0x3332373831363531;
          break;
        case 6:
          v103 = 0xEA00000000003738;
          goto LABEL_110;
        case 7:
          v103 = 0xEA00000000003739;
          v104 = 0x3332373831363531;
          break;
        case 8:
          v104 = 0x3932343038373431;
          v103 = 0xEA00000000003038;
          break;
        case 9:
          v103 = 0xEA00000000003639;
          v104 = 0x3332373831363531;
          break;
        case 10:
          v103 = 0xEA00000000003338;
          goto LABEL_110;
        case 11:
          v103 = 0xEA00000000003138;
          goto LABEL_110;
        case 12:
          v103 = 0xEA00000000003635;
          v104 = 0x3032383934393431;
          break;
        case 13:
          v103 = 0xEA00000000003538;
LABEL_110:
          v104 = 0x3932343038373431;
          break;
        default:
          break;
      }

      v117 = v100;
      v106 = *(v100 + 16);
      v105 = *(v100 + 24);
      if (v106 >= v105 >> 1)
      {
        sub_2629CD800((v105 > 1), v106 + 1, 1);
        v100 = v117;
      }

      *(v100 + 16) = v106 + 1;
      v107 = v100 + 16 * v106;
      *(v107 + 32) = v104;
      *(v107 + 40) = v103;
      --v99;
    }

    while (v99);
  }

  v108 = sub_262A26BD8(v100);

  return v108;
}

int64_t sub_2629F66A0(char **a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_262A1F29C(v6);
  }

  v7 = *(v6 + 2);
  v9[0] = (v6 + 32);
  v9[1] = v7;
  result = sub_2629F6FB0(v9, a2, a3);
  *a1 = v6;
  return result;
}

uint64_t sub_2629F6724(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_262A1F2FC(v2);
  }

  v3 = *(v2 + 2);
  v19[0] = (v2 + 32);
  v19[1] = v3;
  result = sub_262A2A858();
  if (result >= v3)
  {
    if (v3 < 2)
    {
      goto LABEL_28;
    }

    v8 = -1;
    v9 = 1;
    v10 = v2 + 32;
LABEL_9:
    v11 = v2[v9 + 32];
    v12 = qword_262A30AE8[v11];
    v13 = v8;
    v14 = v10;
    while (1)
    {
      result = *v14;
      if (*v14 > 2u)
      {
        if (result == 3)
        {
          if (v12 <= 0x2D)
          {
            goto LABEL_8;
          }
        }

        else if (result != 4 || v12 <= 0x3C)
        {
          goto LABEL_8;
        }
      }

      else
      {
        if (result == 1)
        {
          v15 = 20;
        }

        else
        {
          v15 = 30;
        }

        if (!*v14)
        {
          v15 = 10;
        }

        if (v15 >= v12)
        {
LABEL_8:
          ++v9;
          ++v10;
          --v8;
          if (v9 == v3)
          {
            goto LABEL_28;
          }

          goto LABEL_9;
        }
      }

      v14[1] = result;
      *v14-- = v11;
      if (__CFADD__(v13++, 1))
      {
        goto LABEL_8;
      }
    }
  }

  v5 = result;
  v6 = v3 >> 1;
  if (v3 >= 2)
  {
    v7 = sub_262A2A548();
    *(v7 + 16) = v6;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v17[0] = v7 + 32;
  v17[1] = v6;
  sub_2629F93C4(v17, v18, v19, v5);
  *(v7 + 16) = 0;

LABEL_28:
  *a1 = v2;
  return result;
}

uint64_t sub_2629F68C0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_262A1F2FC(v2);
  }

  v3 = *(v2 + 2);
  v19[0] = (v2 + 32);
  v19[1] = v3;
  result = sub_262A2A858();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = qword_262A30AE8[v11];
        v13 = v8;
        v14 = v10;
        do
        {
          v15 = *v14;
          if (v12 >= qword_262A30AE8[v15])
          {
            break;
          }

          v14[1] = v15;
          *v14-- = v11;
        }

        while (!__CFADD__(v13++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_262A2A548();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v17[0] = v7 + 32;
    v17[1] = v6;
    sub_2629F8E48(v17, v18, v19, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_2629F6A10(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_262A1F334(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_262A2A858();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[16 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 1) >= v11)
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 16) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 16;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CBE0, &unk_262A30A80);
      v7 = sub_262A2A548();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_2629F99DC(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_2629F6B6C(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_2629F70C8(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

uint64_t sub_2629F6C08(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_262A1F414(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2629F71D8(v5);
  *a1 = v2;
  return result;
}

void sub_2629F6C74(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF18, &unk_262A2B3C0);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_2629F6D44(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(&v9, v6 + 32, v3, a1);

  sub_2629ADE08();
  if (v7 != v3)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v6;
}

void sub_2629F6E10(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C040, &qword_262A30F70);
      v7 = *(type metadata accessor for PreprocessedUserHistoryWithMetadata() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(type metadata accessor for PreprocessedUserHistoryWithMetadata() - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

int64_t sub_2629F6FB0(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  result = sub_262A2A858();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      if (v6 <= 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        v9 = sub_262A2A548();
        *(v9 + 16) = v6 / 2;
      }

      v11[0] = v9 + 32;
      v11[1] = v6 / 2;
      v10 = v9;
      sub_2629F7A3C(v11, v12, a1, v8, a2, a3);
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
    return sub_2629F72E0(0, v6, 1, a1, a2, a3);
  }

  return result;
}

uint64_t sub_2629F70C8(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_262A2A858();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      if (v7 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        v10 = sub_262A2A548();
        *(v10 + 16) = v7 / 2;
      }

      v12[0] = v10 + 32;
      v12[1] = v7 / 2;
      v11 = v10;
      a3(v12, v13, a1, v9);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

uint64_t sub_2629F71D8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_262A2A858();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CBB0, &unk_262A30A40);
        v5 = sub_262A2A548();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2629FAAF0(v7, v8, a1, v4);
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
    return sub_2629F7998(0, v2, 1, a1);
  }

  return result;
}

unint64_t sub_2629F72E0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a3 != a2)
  {
    v8 = *a4;
    v9 = (*a4 + 8 * a3 - 8);
    v10 = result - a3;
LABEL_5:
    v31 = v9;
    v32 = a3;
    v11 = *(v8 + 8 * a3);
    v30 = v10;
    while (1)
    {
      v12 = *v9;
      v13 = *a5;
      if (!*(*a5 + 16))
      {
        goto LABEL_14;
      }

      v14 = sub_2629CB210(v11);
      if ((v15 & 1) == 0)
      {
        break;
      }

      v16 = *(*(v13 + 56) + 8 * v14);
      result = sub_2629CB210(v12);
      if (v17)
      {
        goto LABEL_13;
      }

      if (v16)
      {
        v18 = 0;
LABEL_19:
        if (v18 >= v16)
        {
          goto LABEL_4;
        }

        goto LABEL_25;
      }

LABEL_14:
      v20 = *a6;
      if (!*(*a6 + 16))
      {
        goto LABEL_24;
      }

      v21 = sub_2629CB210(v11);
      if (v22)
      {
        v23 = *(*(v20 + 56) + 8 * v21);
        result = sub_2629CB210(v12);
        if ((v24 & 1) == 0)
        {
          if (v23 == 0.0)
          {
            goto LABEL_24;
          }

          v25 = 0.0;
          goto LABEL_29;
        }
      }

      else
      {
        result = sub_2629CB210(v12);
        if ((v26 & 1) == 0)
        {
          goto LABEL_24;
        }

        v23 = 0.0;
      }

      v25 = *(*(v20 + 56) + 8 * result);
      if (v23 == v25)
      {
LABEL_24:
        if (v11 >= v12)
        {
          goto LABEL_4;
        }

        goto LABEL_25;
      }

LABEL_29:
      if (v25 >= v23)
      {
LABEL_4:
        a3 = v32 + 1;
        v9 = v31 + 1;
        v10 = v30 - 1;
        if (v32 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

LABEL_25:
      if (!v8)
      {
        __break(1u);
        return result;
      }

      v27 = *v9;
      v11 = v9[1];
      *v9 = v11;
      v9[1] = v27;
      --v9;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    result = sub_2629CB210(v12);
    if ((v19 & 1) == 0)
    {
      goto LABEL_14;
    }

    v16 = 0;
LABEL_13:
    v18 = *(*(v13 + 56) + 8 * result);
    if (v16 != v18)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  return result;
}

unint64_t sub_2629F7474(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v49 = result;
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CDD0, &qword_262A2B3B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3BF00, &qword_262A2B3A8);
    v48 = v6;
LABEL_3:
    v47 = v4;
    v7 = *(v6 + v4);
LABEL_4:
    v52 = v4 - 1;
    v53 = v4;
    v50 = *(v6 + v4 - 1);
    v8 = sub_262A2A778();
    v9 = &qword_287533A48;
    v10 = 12;
    while (1)
    {
      v11 = *(v9 - 8);
      v12 = *v9;
      result = sub_2629CB1E4(v11);
      if (v13)
      {
        break;
      }

      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v11;
      *(v8[7] + 8 * result) = v12;
      v14 = v8[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_34;
      }

      v9 += 2;
      v8[2] = v16;
      if (!--v10)
      {
        v17 = sub_262A2A778();

        v18 = &off_287533D08;
        v19 = 12;
        do
        {
          v20 = *(v18 - 8);
          v21 = *v18;

          result = sub_2629CB1E4(v20);
          if (v22)
          {
            goto LABEL_35;
          }

          *(v17 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v17[6] + result) = v20;
          *(v17[7] + 8 * result) = v21;
          v23 = v17[2];
          v15 = __OFADD__(v23, 1);
          v24 = v23 + 1;
          if (v15)
          {
            goto LABEL_36;
          }

          v17[2] = v24;
          v18 += 2;
          --v19;
        }

        while (v19);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C2D8, &unk_262A30A30);
        swift_arrayDestroy();

        if (v8[2] && (v25 = sub_2629CB1E4(v7), (v26 & 1) != 0))
        {
          v27 = *(v8[7] + 8 * v25);
        }

        else
        {
          v27 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v51 = v27;

        v28 = sub_262A2A778();
        v29 = &qword_287533A48;
        v30 = 12;
        do
        {
          v31 = *(v29 - 8);
          v32 = *v29;
          result = sub_2629CB1E4(v31);
          if (v33)
          {
            goto LABEL_37;
          }

          *(v28 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v28[6] + result) = v31;
          *(v28[7] + 8 * result) = v32;
          v34 = v28[2];
          v15 = __OFADD__(v34, 1);
          v35 = v34 + 1;
          if (v15)
          {
            goto LABEL_38;
          }

          v29 += 2;
          v28[2] = v35;
          --v30;
        }

        while (v30);
        v36 = sub_262A2A778();

        v37 = &off_287533D08;
        v38 = 12;
        do
        {
          v39 = *(v37 - 8);
          v40 = *v37;

          result = sub_2629CB1E4(v39);
          if (v41)
          {
            goto LABEL_39;
          }

          *(v36 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v36[6] + result) = v39;
          *(v36[7] + 8 * result) = v40;
          v42 = v36[2];
          v15 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v15)
          {
            goto LABEL_40;
          }

          v36[2] = v43;
          v37 += 2;
          --v38;
        }

        while (v38);

        swift_arrayDestroy();

        if (v28[2] && (v44 = sub_2629CB1E4(v50), (v45 & 1) != 0))
        {
          v46 = *(v28[7] + 8 * v44);

          v6 = v48;
          if (v51 >= v46)
          {
LABEL_31:
            v4 = v47 + 1;
            if (v47 + 1 != a2)
            {
              goto LABEL_3;
            }

            return result;
          }
        }

        else
        {

          v6 = v48;
          if (v51 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_31;
          }
        }

        if (!v6)
        {
          goto LABEL_41;
        }

        v7 = *(v6 + v53);
        *(v6 + v53) = *(v6 + v52);
        *(v6 + v52) = v7;
        v4 = v52;
        if (v52 != v49)
        {
          goto LABEL_4;
        }

        goto LABEL_31;
      }
    }

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
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  return result;
}

uint64_t sub_2629F787C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 16 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      if (v7 >= *v9 && (v7 != *v9 || *(v9 + 24) >= *(v9 + 8)))
      {
LABEL_4:
        ++a3;
        v5 += 16;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v11 = *(v9 + 24);
      *(v9 + 16) = *v9;
      *v9 = v7;
      *(v9 + 8) = v11;
      v9 -= 16;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2629F7908(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 16 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = vmovn_s64(vcgtq_s64(v7, *v9));
      if (vmovn_s64(vceqq_s64(v7, *v9)).u8[0])
      {
        v11 = v10.i8[4];
      }

      else
      {
        v11 = v10.i8[0];
      }

      if ((v11 & 1) == 0)
      {
LABEL_4:
        ++a3;
        v5 += 16;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *(v9 + 16) = *v9;
      *v9 = v7;
      v9 -= 16;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

BOOL sub_2629F7998(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = v4 + 24 * a3;
    v8 = *(v7 + 8);
    v9 = *(v7 + 16);
    v10 = v6;
    v11 = v5;
    while (1)
    {
      v12 = *(v11 - 8);
      result = v12 < v8;
      if (v8 == v12)
      {
        v13 = v9 < *v11;
      }

      else
      {
        v13 = v12 < v8;
      }

      if (!v13)
      {
LABEL_4:
        ++a3;
        v5 += 24;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v14 = *(v11 + 8);
      *(v11 + 8) = *(v11 - 16);
      *(v11 + 24) = *v11;
      *(v11 - 16) = v14;
      *(v11 - 8) = v8;
      *v11 = v9;
      v11 -= 24;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2629F7A3C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = v6;
  v121 = result;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_132:
    v7 = *v121;
    if (!*v121)
    {
      goto LABEL_170;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_164;
    }

    goto LABEL_134;
  }

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
LABEL_4:
  v12 = v10;
  if (v10 + 1 >= v9)
  {
    v35 = v10 + 1;
    goto LABEL_42;
  }

  v13 = *a3;
  v14 = *(*a3 + 8 * (v10 + 1));
  v128 = *(*a3 + 8 * v10);
  v129 = v14;
  result = sub_2629F491C(&v129, &v128, a5, a6);
  if (v8)
  {
  }

  v15 = result;
  v124 = v9;
  v16 = v10 + 2;
  v119 = v10;
  v17 = (v13 + 8 * v10 + 16);
  while (v124 != v16)
  {
    v19 = v11;
    v7 = *(v17 - 1);
    v20 = *v17;
    v21 = *a5;
    if (!*(*a5 + 16))
    {
      goto LABEL_19;
    }

    v22 = sub_2629CB210(*v17);
    if ((v23 & 1) == 0)
    {
      result = sub_2629CB210(v7);
      if ((v27 & 1) == 0)
      {
        goto LABEL_19;
      }

      v24 = 0;
LABEL_18:
      v26 = *(*(v21 + 56) + 8 * result);
      if (v24 != v26)
      {
        goto LABEL_23;
      }

      goto LABEL_19;
    }

    v24 = *(*(v21 + 56) + 8 * v22);
    result = sub_2629CB210(v7);
    if (v25)
    {
      goto LABEL_18;
    }

    if (v24)
    {
      v26 = 0;
LABEL_23:
      v18 = v26 < v24;
      v11 = v19;
      goto LABEL_9;
    }

LABEL_19:
    v28 = *a6;
    v11 = v19;
    if (*(*a6 + 16))
    {
      v29 = sub_2629CB210(v20);
      if (v30)
      {
        v31 = *(*(v28 + 56) + 8 * v29);
        result = sub_2629CB210(v7);
        if ((v32 & 1) == 0)
        {
          if (v31 != 0.0)
          {
            v34 = 0.0;
LABEL_29:
            v18 = v34 < v31;
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        goto LABEL_26;
      }

      result = sub_2629CB210(v7);
      if (v33)
      {
        v31 = 0.0;
LABEL_26:
        v34 = *(*(v28 + 56) + 8 * result);
        if (v31 != v34)
        {
          goto LABEL_29;
        }
      }
    }

LABEL_8:
    v18 = v20 < v7;
LABEL_9:
    ++v16;
    ++v17;
    if ((v15 ^ v18))
    {
      v35 = v16 - 1;
      v12 = v119;
      if ((v15 & 1) == 0)
      {
        goto LABEL_42;
      }

LABEL_34:
      if (v35 >= v12)
      {
        if (v12 < v35)
        {
          v36 = v35 - 1;
          v37 = v12;
          do
          {
            if (v37 != v36)
            {
              v39 = *a3;
              if (!*a3)
              {
                goto LABEL_167;
              }

              v40 = *(v39 + 8 * v37);
              *(v39 + 8 * v37) = *(v39 + 8 * v36);
              *(v39 + 8 * v36) = v40;
            }
          }

          while (++v37 < v36--);
        }

        goto LABEL_42;
      }

LABEL_163:
      __break(1u);
LABEL_164:
      result = sub_262A1F22C(v11);
      v11 = result;
LABEL_134:
      v130 = v11;
      v112 = *(v11 + 2);
      if (v112 >= 2)
      {
        while (*a3)
        {
          v113 = *&v11[16 * v112];
          v114 = *&v11[16 * v112 + 24];
          sub_2629FB0FC((*a3 + 8 * v113), (*a3 + 8 * *&v11[16 * v112 + 16]), (*a3 + 8 * v114), v7, a5, a6);
          if (v8)
          {
          }

          if (v114 < v113)
          {
            goto LABEL_157;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_262A1F22C(v11);
          }

          if (v112 - 2 >= *(v11 + 2))
          {
            goto LABEL_158;
          }

          v115 = &v11[16 * v112];
          *v115 = v113;
          *(v115 + 1) = v114;
          v130 = v11;
          result = sub_262A1F1A0(v112 - 1);
          v11 = v130;
          v112 = *(v130 + 2);
          if (v112 <= 1)
          {
          }
        }

        goto LABEL_168;
      }
    }
  }

  v35 = v124;
  v12 = v119;
  if (v15)
  {
    goto LABEL_34;
  }

LABEL_42:
  v41 = a3[1];
  if (v35 >= v41)
  {
    goto LABEL_51;
  }

  if (__OFSUB__(v35, v12))
  {
    goto LABEL_160;
  }

  if (v35 - v12 >= a4)
  {
    goto LABEL_51;
  }

  if (__OFADD__(v12, a4))
  {
    goto LABEL_161;
  }

  if (v12 + a4 >= v41)
  {
    v42 = a3[1];
  }

  else
  {
    v42 = v12 + a4;
  }

  if (v42 < v12)
  {
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  if (v35 == v42)
  {
LABEL_51:
    v10 = v35;
    if (v35 < v12)
    {
      goto LABEL_159;
    }

    goto LABEL_52;
  }

  v116 = v11;
  v117 = v8;
  v90 = *a3;
  v91 = *a3 + 8 * v35 - 8;
  v120 = v12;
  v92 = v12 - v35;
  v122 = v42;
  while (2)
  {
    v125 = v35;
    v93 = *(v90 + 8 * v35);
    v94 = v92;
    v95 = v91;
LABEL_104:
    v7 = *v95;
    v96 = *a5;
    if (!*(*a5 + 16))
    {
      goto LABEL_112;
    }

    v97 = sub_2629CB210(v93);
    if ((v98 & 1) == 0)
    {
      result = sub_2629CB210(v7);
      if (v102)
      {
        v99 = 0;
LABEL_111:
        v101 = *(*(v96 + 56) + 8 * result);
        if (v99 != v101)
        {
          goto LABEL_117;
        }
      }

LABEL_112:
      v103 = *a6;
      if (!*(*a6 + 16))
      {
        goto LABEL_122;
      }

      v104 = sub_2629CB210(v93);
      if (v105)
      {
        v106 = *(*(v103 + 56) + 8 * v104);
        result = sub_2629CB210(v7);
        if ((v107 & 1) == 0)
        {
          if (v106 == 0.0)
          {
            goto LABEL_122;
          }

          v108 = 0.0;
          goto LABEL_127;
        }
      }

      else
      {
        result = sub_2629CB210(v7);
        if ((v109 & 1) == 0)
        {
          goto LABEL_122;
        }

        v106 = 0.0;
      }

      v108 = *(*(v103 + 56) + 8 * result);
      if (v106 == v108)
      {
LABEL_122:
        if (v93 >= v7)
        {
          goto LABEL_102;
        }

        goto LABEL_123;
      }

LABEL_127:
      if (v108 < v106)
      {
        goto LABEL_123;
      }

LABEL_102:
      v35 = v125 + 1;
      v91 += 8;
      --v92;
      v10 = v122;
      if (v125 + 1 != v122)
      {
        continue;
      }

      v11 = v116;
      v8 = v117;
      v12 = v120;
      if (v122 < v120)
      {
        goto LABEL_159;
      }

LABEL_52:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2629A8DAC(0, *(v11 + 2) + 1, 1, v11);
        v11 = result;
      }

      v44 = *(v11 + 2);
      v43 = *(v11 + 3);
      v45 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        result = sub_2629A8DAC((v43 > 1), v44 + 1, 1, v11);
        v11 = result;
      }

      *(v11 + 2) = v45;
      v46 = &v11[16 * v44];
      *(v46 + 4) = v12;
      *(v46 + 5) = v10;
      v47 = *v121;
      if (!*v121)
      {
        goto LABEL_169;
      }

      if (v44)
      {
        while (2)
        {
          v48 = v45 - 1;
          if (v45 >= 4)
          {
            v53 = &v11[16 * v45 + 32];
            v54 = *(v53 - 64);
            v55 = *(v53 - 56);
            v59 = __OFSUB__(v55, v54);
            v56 = v55 - v54;
            if (v59)
            {
              goto LABEL_146;
            }

            v58 = *(v53 - 48);
            v57 = *(v53 - 40);
            v59 = __OFSUB__(v57, v58);
            v51 = v57 - v58;
            v52 = v59;
            if (v59)
            {
              goto LABEL_147;
            }

            v60 = &v11[16 * v45];
            v62 = *v60;
            v61 = *(v60 + 1);
            v59 = __OFSUB__(v61, v62);
            v63 = v61 - v62;
            if (v59)
            {
              goto LABEL_149;
            }

            v59 = __OFADD__(v51, v63);
            v64 = v51 + v63;
            if (v59)
            {
              goto LABEL_152;
            }

            if (v64 >= v56)
            {
              v82 = &v11[16 * v48 + 32];
              v84 = *v82;
              v83 = *(v82 + 1);
              v59 = __OFSUB__(v83, v84);
              v85 = v83 - v84;
              if (v59)
              {
                goto LABEL_156;
              }

              if (v51 < v85)
              {
                v48 = v45 - 2;
              }
            }

            else
            {
LABEL_71:
              if (v52)
              {
                goto LABEL_148;
              }

              v65 = &v11[16 * v45];
              v67 = *v65;
              v66 = *(v65 + 1);
              v68 = __OFSUB__(v66, v67);
              v69 = v66 - v67;
              v70 = v68;
              if (v68)
              {
                goto LABEL_151;
              }

              v71 = &v11[16 * v48 + 32];
              v73 = *v71;
              v72 = *(v71 + 1);
              v59 = __OFSUB__(v72, v73);
              v74 = v72 - v73;
              if (v59)
              {
                goto LABEL_154;
              }

              if (__OFADD__(v69, v74))
              {
                goto LABEL_155;
              }

              if (v69 + v74 < v51)
              {
                goto LABEL_85;
              }

              if (v51 < v74)
              {
                v48 = v45 - 2;
              }
            }
          }

          else
          {
            if (v45 == 3)
            {
              v49 = *(v11 + 4);
              v50 = *(v11 + 5);
              v59 = __OFSUB__(v50, v49);
              v51 = v50 - v49;
              v52 = v59;
              goto LABEL_71;
            }

            v75 = &v11[16 * v45];
            v77 = *v75;
            v76 = *(v75 + 1);
            v59 = __OFSUB__(v76, v77);
            v69 = v76 - v77;
            v70 = v59;
LABEL_85:
            if (v70)
            {
              goto LABEL_150;
            }

            v78 = &v11[16 * v48];
            v80 = *(v78 + 4);
            v79 = *(v78 + 5);
            v59 = __OFSUB__(v79, v80);
            v81 = v79 - v80;
            if (v59)
            {
              goto LABEL_153;
            }

            if (v81 < v69)
            {
              break;
            }
          }

          v86 = v48 - 1;
          if (v48 - 1 >= v45)
          {
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
            goto LABEL_162;
          }

          if (!*a3)
          {
            goto LABEL_166;
          }

          v87 = *&v11[16 * v86 + 32];
          v88 = *&v11[16 * v48 + 40];
          sub_2629FB0FC((*a3 + 8 * v87), (*a3 + 8 * *&v11[16 * v48 + 32]), (*a3 + 8 * v88), v47, a5, a6);
          if (v8)
          {
          }

          if (v88 < v87)
          {
            goto LABEL_144;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_262A1F22C(v11);
          }

          if (v86 >= *(v11 + 2))
          {
            goto LABEL_145;
          }

          v89 = &v11[16 * v86];
          *(v89 + 4) = v87;
          *(v89 + 5) = v88;
          v130 = v11;
          result = sub_262A1F1A0(v48);
          v11 = v130;
          v45 = *(v130 + 2);
          if (v45 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v9 = a3[1];
      if (v10 >= v9)
      {
        goto LABEL_132;
      }

      goto LABEL_4;
    }

    break;
  }

  v99 = *(*(v96 + 56) + 8 * v97);
  result = sub_2629CB210(v7);
  if (v100)
  {
    goto LABEL_111;
  }

  if (!v99)
  {
    goto LABEL_112;
  }

  v101 = 0;
LABEL_117:
  if (v101 >= v99)
  {
    goto LABEL_102;
  }

LABEL_123:
  if (v90)
  {
    v110 = *v95;
    v93 = *(v95 + 8);
    *v95 = v93;
    *(v95 + 8) = v110;
    v95 -= 8;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_102;
    }

    goto LABEL_104;
  }

  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
  return result;
}

uint64_t sub_2629F81D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v147 = result;
  v7 = *(a3 + 8);
  if (v7 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_138:
    v12 = *v147;
    if (!*v147)
    {
      goto LABEL_192;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_140:
      v138 = *(v10 + 2);
      if (v138 >= 2)
      {
        while (*v6)
        {
          v139 = *&v10[16 * v138];
          v140 = *&v10[16 * v138 + 24];
          sub_2629FB4F8((*v6 + v139), (*v6 + *&v10[16 * v138 + 16]), *v6 + v140, v12);
          if (v5)
          {
          }

          if (v140 < v139)
          {
            goto LABEL_178;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_262A1F22C(v10);
          }

          if (v138 - 2 >= *(v10 + 2))
          {
            goto LABEL_179;
          }

          v141 = &v10[16 * v138];
          *v141 = v139;
          *(v141 + 1) = v140;
          result = sub_262A1F1A0(v138 - 1);
          v138 = *(v10 + 2);
          if (v138 <= 1)
          {
          }
        }

        goto LABEL_188;
      }
    }

LABEL_183:
    result = sub_262A1F22C(v10);
    v10 = result;
    goto LABEL_140;
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 < v7)
    {
      break;
    }

LABEL_45:
    v53 = *(v6 + 8);
    if (v12 >= v53)
    {
      goto LABEL_53;
    }

    if (__OFSUB__(v12, v11))
    {
      goto LABEL_182;
    }

    if (v12 - v11 >= v8)
    {
      goto LABEL_53;
    }

    if (__OFADD__(v11, v8))
    {
      __break(1u);
LABEL_185:
      __break(1u);
      goto LABEL_186;
    }

    if (v11 + v8 < v53)
    {
      v53 = v11 + v8;
    }

    if (v53 < v11)
    {
      goto LABEL_185;
    }

    if (v12 == v53)
    {
LABEL_53:
      if (v12 < v11)
      {
        goto LABEL_181;
      }

      goto LABEL_54;
    }

    v146 = v53;
    v100 = *v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CDD0, &qword_262A2B3B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3BF00, &qword_262A2B3A8);
    v144 = v11;
    v149 = v100;
    do
    {
      v101 = *(v100 + v12);
      v102 = v12;
      v165 = v12;
      while (1)
      {
        v156 = v101;
        v151 = v5;
        v162 = v102;
        v161 = v102 - 1;
        v153 = *(v100 + v102 - 1);
        v103 = sub_262A2A778();
        v12 = (v103 + 8);
        v104 = &qword_287533A48;
        v5 = 12;
        do
        {
          v105 = *(v104 - 8);
          v6 = *v104;
          v106 = sub_2629CB1E4(v105);
          if (v107)
          {
            goto LABEL_157;
          }

          *(v12 + ((v106 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v106;
          *(v103[6] + v106) = v105;
          *(v103[7] + 8 * v106) = v6;
          v108 = v103[2];
          v70 = __OFADD__(v108, 1);
          v109 = v108 + 1;
          if (v70)
          {
            goto LABEL_158;
          }

          v104 += 2;
          v103[2] = v109;
          --v5;
        }

        while (v5);
        v110 = sub_262A2A778();
        v6 = (v110 + 8);

        v111 = &off_287533D08;
        v5 = 12;
        do
        {
          v112 = *(v111 - 8);
          v12 = *v111;

          v113 = sub_2629CB1E4(v112);
          if (v114)
          {
            goto LABEL_159;
          }

          *(v6 + ((v113 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v113;
          *(v110[6] + v113) = v112;
          *(v110[7] + 8 * v113) = v12;
          v115 = v110[2];
          v70 = __OFADD__(v115, 1);
          v116 = v115 + 1;
          if (v70)
          {
            goto LABEL_160;
          }

          v110[2] = v116;
          v111 += 2;
          --v5;
        }

        while (v5);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C2D8, &unk_262A30A30);
        swift_arrayDestroy();

        if (v103[2] && (v117 = sub_2629CB1E4(v156), (v118 & 1) != 0))
        {
          v119 = *(v103[7] + 8 * v117);
        }

        else
        {
          v119 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v157 = v119;

        v120 = sub_262A2A778();
        v12 = (v120 + 8);
        v121 = &qword_287533A48;
        v5 = 12;
        do
        {
          v122 = *(v121 - 8);
          v6 = *v121;
          v123 = sub_2629CB1E4(v122);
          if (v124)
          {
            goto LABEL_161;
          }

          *(v12 + ((v123 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v123;
          *(v120[6] + v123) = v122;
          *(v120[7] + 8 * v123) = v6;
          v125 = v120[2];
          v70 = __OFADD__(v125, 1);
          v126 = v125 + 1;
          if (v70)
          {
            goto LABEL_162;
          }

          v121 += 2;
          v120[2] = v126;
          --v5;
        }

        while (v5);
        v127 = sub_262A2A778();
        v6 = (v127 + 8);

        v128 = &off_287533D08;
        v12 = 12;
        do
        {
          v129 = *(v128 - 8);
          v5 = *v128;

          v130 = sub_2629CB1E4(v129);
          if (v131)
          {
            goto LABEL_163;
          }

          *(v6 + ((v130 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v130;
          *(v127[6] + v130) = v129;
          *(v127[7] + 8 * v130) = v5;
          v132 = v127[2];
          v70 = __OFADD__(v132, 1);
          v133 = v132 + 1;
          if (v70)
          {
            goto LABEL_164;
          }

          v127[2] = v133;
          v128 += 2;
          --v12;
        }

        while (v12);

        swift_arrayDestroy();

        if (v120[2])
        {
          v134 = sub_2629CB1E4(v153);
          if (v135)
          {
            v136 = *(v120[7] + 8 * v134);

            v6 = a3;
            v5 = v151;
            v137 = v165;
            if (v157 >= v136)
            {
              break;
            }

            goto LABEL_130;
          }
        }

        v6 = a3;
        v5 = v151;
        v137 = v165;
        if (v157 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

LABEL_130:
        v11 = v144;
        v100 = v149;
        if (!v149)
        {
          goto LABEL_190;
        }

        v101 = *(v149 + v162);
        *(v149 + v162) = *(v149 + v161);
        *(v149 + v161) = v101;
        v102 = v161;
        if (v161 == v144)
        {
          goto LABEL_134;
        }
      }

      v11 = v144;
      v100 = v149;
LABEL_134:
      v12 = v137 + 1;
    }

    while (v12 != v146);
    v12 = v146;
    if (v146 < v11)
    {
      goto LABEL_181;
    }

LABEL_54:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2629A8DAC(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v55 = *(v10 + 2);
    v54 = *(v10 + 3);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      result = sub_2629A8DAC((v54 > 1), v55 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v56;
    v57 = &v10[16 * v55];
    *(v57 + 4) = v11;
    *(v57 + 5) = v12;
    v58 = *v147;
    if (!*v147)
    {
      goto LABEL_191;
    }

    v164 = v12;
    if (v55)
    {
      while (2)
      {
        v59 = v56 - 1;
        if (v56 >= 4)
        {
          v64 = &v10[16 * v56 + 32];
          v65 = *(v64 - 64);
          v66 = *(v64 - 56);
          v70 = __OFSUB__(v66, v65);
          v67 = v66 - v65;
          if (v70)
          {
            goto LABEL_168;
          }

          v69 = *(v64 - 48);
          v68 = *(v64 - 40);
          v70 = __OFSUB__(v68, v69);
          v62 = v68 - v69;
          v63 = v70;
          if (v70)
          {
            goto LABEL_169;
          }

          v71 = &v10[16 * v56];
          v73 = *v71;
          v72 = *(v71 + 1);
          v70 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v70)
          {
            goto LABEL_171;
          }

          v70 = __OFADD__(v62, v74);
          v75 = v62 + v74;
          if (v70)
          {
            goto LABEL_174;
          }

          if (v75 >= v67)
          {
            v93 = &v10[16 * v59 + 32];
            v95 = *v93;
            v94 = *(v93 + 1);
            v70 = __OFSUB__(v94, v95);
            v96 = v94 - v95;
            if (v70)
            {
              goto LABEL_180;
            }

            if (v62 < v96)
            {
              v59 = v56 - 2;
            }
          }

          else
          {
LABEL_73:
            if (v63)
            {
              goto LABEL_170;
            }

            v76 = &v10[16 * v56];
            v78 = *v76;
            v77 = *(v76 + 1);
            v79 = __OFSUB__(v77, v78);
            v80 = v77 - v78;
            v81 = v79;
            if (v79)
            {
              goto LABEL_173;
            }

            v82 = &v10[16 * v59 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v70 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v70)
            {
              goto LABEL_176;
            }

            if (__OFADD__(v80, v85))
            {
              goto LABEL_177;
            }

            if (v80 + v85 < v62)
            {
              goto LABEL_87;
            }

            if (v62 < v85)
            {
              v59 = v56 - 2;
            }
          }
        }

        else
        {
          if (v56 == 3)
          {
            v60 = *(v10 + 4);
            v61 = *(v10 + 5);
            v70 = __OFSUB__(v61, v60);
            v62 = v61 - v60;
            v63 = v70;
            goto LABEL_73;
          }

          v86 = &v10[16 * v56];
          v88 = *v86;
          v87 = *(v86 + 1);
          v70 = __OFSUB__(v87, v88);
          v80 = v87 - v88;
          v81 = v70;
LABEL_87:
          if (v81)
          {
            goto LABEL_172;
          }

          v89 = &v10[16 * v59];
          v91 = *(v89 + 4);
          v90 = *(v89 + 5);
          v70 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v70)
          {
            goto LABEL_175;
          }

          if (v92 < v80)
          {
            break;
          }
        }

        v97 = v59 - 1;
        if (v59 - 1 >= v56)
        {
          goto LABEL_165;
        }

        if (!*v6)
        {
          goto LABEL_187;
        }

        v98 = *&v10[16 * v97 + 32];
        v12 = *&v10[16 * v59 + 40];
        sub_2629FB4F8((*v6 + v98), (*v6 + *&v10[16 * v59 + 32]), *v6 + v12, v58);
        if (v5)
        {
        }

        if (v12 < v98)
        {
          goto LABEL_166;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_262A1F22C(v10);
        }

        if (v97 >= *(v10 + 2))
        {
          goto LABEL_167;
        }

        v99 = &v10[16 * v97];
        *(v99 + 4) = v98;
        *(v99 + 5) = v12;
        result = sub_262A1F1A0(v59);
        v56 = *(v10 + 2);
        if (v56 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v7 = *(v6 + 8);
    v9 = v164;
    v8 = a4;
    if (v164 >= v7)
    {
      goto LABEL_138;
    }
  }

  v148 = *v6;
  v13 = *(*v6 + v9);
  v154 = sub_2629B8818(*(*v6 + v12));
  result = sub_2629B8818(v13);
  v152 = result;
  v14 = v11 + 2;
  if (v11 + 2 >= v7)
  {
    goto LABEL_35;
  }

  v143 = v11;
  v145 = v7;
  v150 = v5;
  while (2)
  {
    v155 = *(v148 + v12);
    v163 = v14;
    v159 = *(v148 + v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CDD0, &qword_262A2B3B0);
    v16 = sub_262A2A778();
    v12 = (v16 + 8);
    v17 = &qword_287533A48;
    v5 = 12;
    do
    {
      v18 = *(v17 - 8);
      v6 = *v17;
      v19 = sub_2629CB1E4(v18);
      if (v20)
      {
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
        goto LABEL_183;
      }

      *(v12 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(v16[6] + v19) = v18;
      *(v16[7] + 8 * v19) = v6;
      v21 = v16[2];
      v70 = __OFADD__(v21, 1);
      v22 = v21 + 1;
      if (v70)
      {
        goto LABEL_150;
      }

      v17 += 2;
      v16[2] = v22;
      --v5;
    }

    while (v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3BF00, &qword_262A2B3A8);
    v23 = sub_262A2A778();

    v5 = &off_287533D08;
    v12 = 12;
    do
    {
      v24 = *(v5 - 8);
      v6 = *v5;

      v25 = sub_2629CB1E4(v24);
      if (v26)
      {
        goto LABEL_151;
      }

      *(v23 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v25;
      *(v23[6] + v25) = v24;
      *(v23[7] + 8 * v25) = v6;
      v27 = v23[2];
      v70 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v70)
      {
        goto LABEL_152;
      }

      v23[2] = v28;
      v5 += 16;
      --v12;
    }

    while (v12);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C2D8, &unk_262A30A30);
    swift_arrayDestroy();

    if (v16[2] && (v29 = sub_2629CB1E4(v159), (v30 & 1) != 0))
    {
      v31 = *(v16[7] + 8 * v29);
    }

    else
    {
      v31 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v160 = v31;

    v12 = sub_262A2A778();
    v32 = &qword_287533A48;
    v5 = 12;
    do
    {
      v33 = *(v32 - 8);
      v6 = *v32;
      v34 = sub_2629CB1E4(v33);
      if (v35)
      {
        goto LABEL_153;
      }

      *(v12 + 64 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
      *(*(v12 + 48) + v34) = v33;
      *(*(v12 + 56) + 8 * v34) = v6;
      v36 = *(v12 + 16);
      v70 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v70)
      {
        goto LABEL_154;
      }

      v32 += 2;
      *(v12 + 16) = v37;
      --v5;
    }

    while (v5);
    v38 = sub_262A2A778();

    v5 = &off_287533D08;
    v6 = 12;
    do
    {
      v39 = *(v5 - 8);
      v40 = *v5;

      v41 = sub_2629CB1E4(v39);
      if (v42)
      {
        goto LABEL_155;
      }

      *(v38 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v41;
      *(v38[6] + v41) = v39;
      *(v38[7] + 8 * v41) = v40;
      v43 = v38[2];
      v70 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v70)
      {
        goto LABEL_156;
      }

      v38[2] = v44;
      v5 += 16;
      --v6;
    }

    while (v6);

    swift_arrayDestroy();

    if (*(v12 + 16) && (v45 = sub_2629CB1E4(v155), (v46 & 1) != 0))
    {
      v47 = *(*(v12 + 56) + 8 * v45);

      v6 = a3;
      v12 = v163;
      v15 = v145;
      if (v154 < v152 == v160 >= v47)
      {
LABEL_32:
        v14 = v12;
        goto LABEL_34;
      }
    }

    else
    {

      v6 = a3;
      v12 = v163;
      v15 = v145;
      if (v154 < v152 == (v160 == 0x7FFFFFFFFFFFFFFFLL))
      {
        goto LABEL_32;
      }
    }

    v14 = v12 + 1;
    if (v12 + 1 != v15)
    {
      continue;
    }

    break;
  }

  v14 = v15;
LABEL_34:
  v5 = v150;
  v8 = a4;
  v11 = v143;
LABEL_35:
  if (v154 >= v152)
  {
LABEL_44:
    v12 = v14;
    goto LABEL_45;
  }

  if (v14 >= v11)
  {
    if (v11 < v14)
    {
      v48 = v14 - 1;
      v49 = v11;
      while (1)
      {
        if (v49 != v48)
        {
          v51 = *v6;
          if (!*v6)
          {
            goto LABEL_189;
          }

          v52 = *(v51 + v49);
          *(v51 + v49) = *(v51 + v48);
          *(v51 + v48) = v52;
        }

        if (++v49 >= v48--)
        {
          goto LABEL_44;
        }
      }
    }

    goto LABEL_44;
  }

LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
  return result;
}

uint64_t sub_2629F8E48(uint64_t result, uint64_t a2, uint64_t *a3, char *a4)
{
  v84 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_89:
    v6 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_121:
      result = sub_262A1F22C(v8);
      v8 = result;
    }

    v76 = v8 + 16;
    v77 = *(v8 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = &v8[16 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_2629FBDB8((*a3 + *v78), (*a3 + *v80), *a3 + v81, v6);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_113;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_114;
        }

        *v78 = v79;
        *(v78 + 1) = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_115;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_125;
    }
  }

  v6 = a4;
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v5)
    {
      v10 = qword_262A30AE8[*(*a3 + v7)];
      v11 = *(*a3 + v7);
      v12 = qword_262A30AE8[*(*a3 + v9)];
      v13 = v9 + 2;
      if (v5 <= v9 + 2)
      {
        v7 = v9 + 2;
      }

      else
      {
        v7 = v5;
      }

      while (v7 != v13)
      {
        v14 = *(*a3 + v13);
        v15 = (v10 < v12) ^ (qword_262A30AE8[v14] >= qword_262A30AE8[v11]);
        ++v13;
        v11 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v13 - 1;
          break;
        }
      }

      if (v10 < v12)
      {
        if (v7 < v9)
        {
          goto LABEL_118;
        }

        if (v9 < v7)
        {
          v16 = v7 - 1;
          v17 = v9;
          do
          {
            if (v17 != v16)
            {
              v20 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v18 = *(v20 + v17);
              *(v20 + v17) = *(v20 + v16);
              *(v20 + v16) = v18;
            }
          }

          while (++v17 < v16--);
          v5 = a3[1];
        }
      }
    }

    if (v7 < v5)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_117;
      }

      if (v7 - v9 < v6)
      {
        if (__OFADD__(v9, v6))
        {
          goto LABEL_119;
        }

        if (v9 + v6 < v5)
        {
          v5 = v9 + v6;
        }

        if (v5 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v7 != v5)
        {
          break;
        }
      }
    }

LABEL_38:
    if (v7 < v9)
    {
      goto LABEL_116;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2629A8DAC(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v31 = *(v8 + 2);
    v30 = *(v8 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_2629A8DAC((v30 > 1), v31 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v32;
    v33 = &v8[16 * v31];
    *(v33 + 4) = v9;
    *(v33 + 5) = v7;
    v34 = *v84;
    if (!*v84)
    {
      goto LABEL_126;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v8 + 4);
          v37 = *(v8 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_58:
          if (v39)
          {
            goto LABEL_104;
          }

          v52 = &v8[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_107;
          }

          v58 = &v8[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_111;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        v62 = &v8[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_72:
        if (v57)
        {
          goto LABEL_106;
        }

        v65 = &v8[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_109;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_79:
        v6 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v73 = *&v8[16 * v6 + 32];
        v74 = *&v8[16 * v35 + 40];
        sub_2629FBDB8((*a3 + v73), (*a3 + *&v8[16 * v35 + 32]), *a3 + v74, v34);
        if (v4)
        {
        }

        if (v74 < v73)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_262A1F22C(v8);
        }

        if (v6 >= *(v8 + 2))
        {
          goto LABEL_101;
        }

        v75 = &v8[16 * v6];
        *(v75 + 4) = v73;
        *(v75 + 5) = v74;
        result = sub_262A1F1A0(v35);
        v32 = *(v8 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v8[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_102;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_103;
      }

      v47 = &v8[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_105;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_108;
      }

      if (v51 >= v43)
      {
        v69 = &v8[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_112;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

LABEL_3:
    v5 = a3[1];
    v6 = a4;
    if (v7 >= v5)
    {
      goto LABEL_89;
    }
  }

  v21 = *a3;
  v22 = (*a3 + v7);
  v23 = v9 - v7;
LABEL_31:
  v24 = *(v21 + v7);
  v25 = qword_262A30AE8[v24];
  v26 = v23;
  v27 = v22;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v25 >= qword_262A30AE8[v28])
    {
LABEL_30:
      ++v7;
      ++v22;
      --v23;
      if (v7 != v5)
      {
        goto LABEL_31;
      }

      v7 = v5;
      goto LABEL_38;
    }

    if (!v21)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v24;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_30;
    }
  }

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
  return result;
}

uint64_t sub_2629F93C4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_113:
    v5 = *v85;
    if (!*v85)
    {
      goto LABEL_151;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_145:
      result = sub_262A1F22C(v9);
      v9 = result;
    }

    v77 = v9 + 16;
    v78 = *(v9 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = &v9[16 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        sub_2629FBFD0((*a3 + *v79), (*a3 + *v81), *a3 + v82, v5);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_137;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_138;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_139;
        }

        v78 = *v77 - 1;
        result = memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
        }
      }

      goto LABEL_149;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  result = 20;
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = qword_262A30AE8[v11];
      v13 = qword_262A30AE8[*(*a3 + v10)];
      v8 = v10 + 2;
      if (v10 + 2 < v6)
      {
        v14 = v11;
        while (1)
        {
          if (v14 <= 2u)
          {
            if (v14 == 1)
            {
              v15 = 20;
            }

            else
            {
              v15 = 30;
            }

            if (v14)
            {
              v16 = v15;
            }

            else
            {
              v16 = 10;
            }
          }

          else if (v14 == 3)
          {
            v16 = 45;
          }

          else
          {
            if (v14 != 4)
            {
              if (v13 < v12)
              {
                goto LABEL_24;
              }

              goto LABEL_14;
            }

            v16 = 60;
          }

          if (v13 < v12 == v16 >= qword_262A30AE8[*(*a3 + v8)])
          {
            break;
          }

LABEL_14:
          v14 = *(*a3 + v8++);
          if (v6 == v8)
          {
            v8 = v6;
            break;
          }
        }
      }

      if (v13 < v12)
      {
LABEL_24:
        if (v8 < v10)
        {
          goto LABEL_142;
        }

        if (v10 < v8)
        {
          v17 = v8 - 1;
          v18 = v10;
          do
          {
            if (v18 != v17)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_148;
              }

              v19 = *(v21 + v18);
              *(v21 + v18) = *(v21 + v17);
              *(v21 + v17) = v19;
            }
          }

          while (++v18 < v17--);
          v6 = a3[1];
        }
      }
    }

    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_141;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_143;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_62:
    if (v8 < v10)
    {
      goto LABEL_140;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2629A8DAC(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v5 = *(v9 + 2);
    v32 = *(v9 + 3);
    v33 = v5 + 1;
    if (v5 >= v32 >> 1)
    {
      result = sub_2629A8DAC((v32 > 1), v5 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v33;
    v34 = &v9[16 * v5];
    *(v34 + 4) = v10;
    *(v34 + 5) = v8;
    v35 = *v85;
    if (!*v85)
    {
      goto LABEL_150;
    }

    if (v5)
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
          v37 = *(v9 + 4);
          v38 = *(v9 + 5);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_82:
          if (v40)
          {
            goto LABEL_128;
          }

          v53 = &v9[16 * v33];
          v55 = *v53;
          v54 = *(v53 + 1);
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_131;
          }

          v59 = &v9[16 * v36 + 32];
          v61 = *v59;
          v60 = *(v59 + 1);
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_134;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_135;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v36 = v33 - 2;
            }

            goto LABEL_103;
          }

          goto LABEL_96;
        }

        v63 = &v9[16 * v33];
        v65 = *v63;
        v64 = *(v63 + 1);
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_96:
        if (v58)
        {
          goto LABEL_130;
        }

        v66 = &v9[16 * v36];
        v68 = *(v66 + 4);
        v67 = *(v66 + 5);
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_133;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_103:
        v74 = v36 - 1;
        if (v36 - 1 >= v33)
        {
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
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
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        if (!*a3)
        {
          goto LABEL_147;
        }

        v75 = *&v9[16 * v74 + 32];
        v5 = *&v9[16 * v36 + 40];
        sub_2629FBFD0((*a3 + v75), (*a3 + *&v9[16 * v36 + 32]), *a3 + v5, v35);
        if (v4)
        {
        }

        if (v5 < v75)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_262A1F22C(v9);
        }

        if (v74 >= *(v9 + 2))
        {
          goto LABEL_125;
        }

        v76 = &v9[16 * v74];
        *(v76 + 4) = v75;
        *(v76 + 5) = v5;
        result = sub_262A1F1A0(v36);
        v33 = *(v9 + 2);
        if (v33 <= 1)
        {
          goto LABEL_3;
        }
      }

      v41 = &v9[16 * v33 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_126;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_127;
      }

      v48 = &v9[16 * v33];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_129;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_132;
      }

      if (v52 >= v44)
      {
        v70 = &v9[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_136;
        }

        if (v39 < v73)
        {
          v36 = v33 - 2;
        }

        goto LABEL_103;
      }

      goto LABEL_82;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    result = 20;
    if (v8 >= v6)
    {
      goto LABEL_113;
    }
  }

  v22 = *a3;
  v23 = (*a3 + v8);
  v24 = v10 - v8;
LABEL_43:
  v25 = *(v22 + v8);
  v26 = qword_262A30AE8[v25];
  v27 = v24;
  v28 = v23;
  while (1)
  {
    v29 = *(v28 - 1);
    if (v29 > 2)
    {
      if (v29 == 3)
      {
        if (v26 <= 0x2D)
        {
          goto LABEL_42;
        }
      }

      else if (v29 != 4 || v26 <= 0x3C)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (v29 == 1)
      {
        v30 = 20;
      }

      else
      {
        v30 = 30;
      }

      if (!*(v28 - 1))
      {
        v30 = 10;
      }

      if (v30 >= v26)
      {
LABEL_42:
        ++v8;
        ++v23;
        --v24;
        if (v8 != v6)
        {
          goto LABEL_43;
        }

        v8 = v6;
        goto LABEL_62;
      }
    }

    if (!v22)
    {
      break;
    }

    *v28 = v29;
    *--v28 = v25;
    if (__CFADD__(v27++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
  return result;
}

uint64_t sub_2629F99DC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_262A1F22C(v8);
      v8 = result;
    }

    v81 = (v8 + 16);
    v82 = *(v8 + 16);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = (v8 + 16 * v82);
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_2629FC280((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = v16 >= v17;
        ++v14;
        v16 = v17;
        if ((((v13 < v10) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = *(v22 + 1);
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2629A8DAC(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v35 = *(v8 + 24);
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_2629A8DAC((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v36;
    v37 = v8 + 32;
    v38 = (v8 + 32 + 16 * v5);
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = *(v8 + 32);
          v40 = *(v8 + 40);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = (v8 + 16 * v36);
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = (v37 + 16 * v5);
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = (v8 + 16 * v36);
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = (v37 + 16 * v5);
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
        {
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
LABEL_104:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = (v37 + 16 * (v5 - 1));
        v77 = *v76;
        v78 = (v37 + 16 * v5);
        v79 = v78[1];
        sub_2629FC280((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = *(v8 + 16);
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        result = memmove((v37 + 16 * v5), v78 + 2, 16 * (v80 - 1 - v5));
        *(v8 + 16) = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = v37 + 16 * v36;
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = (v8 + 16 * v36);
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = (v37 + 16 * v5);
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (*(v32 - 1) >= v30)
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 16) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_2629F9F70(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v91 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_109:
    v91 = *v91;
    if (!v91)
    {
      goto LABEL_147;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_111;
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 >= v6)
    {
      ++v8;
      goto LABEL_34;
    }

    v12 = (*a3 + 16 * v11);
    v13 = *v12;
    v14 = (*a3 + 16 * v8);
    v15 = *v12 < *v14 || v13 == *v14 && v12[1] < v14[1];
    v8 += 2;
    if (v10 + 2 < v6)
    {
      v11 = v6 - 1;
      v17 = v12[1];
      v18 = v14 + 5;
      do
      {
        v19 = v13;
        v13 = *(v18 - 1);
        v20 = *v18;
        if (v13 < v19)
        {
          if (!v15)
          {
            goto LABEL_34;
          }
        }

        else if (v13 == v19)
        {
          if (((v15 ^ (v20 >= v17)) & 1) == 0)
          {
            v11 = v8 - 1;
            if (!v15)
            {
              goto LABEL_34;
            }

LABEL_26:
            if (v8 >= v10)
            {
              if (v10 <= v11)
              {
                v21 = 16 * v8 - 16;
                v22 = 16 * v10;
                v23 = v8;
                v24 = v10;
                do
                {
                  if (v24 != --v23)
                  {
                    v25 = *a3;
                    if (!*a3)
                    {
                      goto LABEL_144;
                    }

                    v26 = *(v25 + v22);
                    *(v25 + v22) = *(v25 + v21);
                    *(v25 + v21) = v26;
                  }

                  ++v24;
                  v21 -= 16;
                  v22 += 16;
                }

                while (v24 < v23);
                v6 = a3[1];
              }

              goto LABEL_34;
            }

LABEL_140:
            __break(1u);
LABEL_141:
            result = sub_262A1F22C(v9);
            v9 = result;
LABEL_111:
            v83 = v9 + 16;
            v84 = *(v9 + 2);
            if (v84 >= 2)
            {
              while (*a3)
              {
                v85 = &v9[16 * v84];
                v86 = *v85;
                v87 = &v83[2 * v84];
                v88 = v87[1];
                sub_2629FC484((*a3 + 16 * *v85), (*a3 + 16 * *v87), (*a3 + 16 * v88), v91);
                if (v4)
                {
                }

                if (v88 < v86)
                {
                  goto LABEL_133;
                }

                if (v84 - 2 >= *v83)
                {
                  goto LABEL_134;
                }

                *v85 = v86;
                *(v85 + 1) = v88;
                v89 = *v83 - v84;
                if (*v83 < v84)
                {
                  goto LABEL_135;
                }

                v84 = *v83 - 1;
                result = memmove(v87, v87 + 2, 16 * v89);
                *v83 = v84;
                if (v84 <= 1)
                {
                }
              }

              goto LABEL_145;
            }
          }
        }

        else if (v15)
        {
          v11 = v8 - 1;
          goto LABEL_26;
        }

        v18 += 2;
        ++v8;
        v17 = v20;
      }

      while (v6 != v8);
      v8 = v6;
    }

    if (v15)
    {
      goto LABEL_26;
    }

LABEL_34:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_137;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_138;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_56:
    if (v8 < v10)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2629A8DAC(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v37 = *(v9 + 2);
    v36 = *(v9 + 3);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_2629A8DAC((v36 > 1), v37 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v38;
    v39 = &v9[16 * v37];
    *(v39 + 4) = v10;
    *(v39 + 5) = v8;
    v40 = *v91;
    if (!*v91)
    {
      goto LABEL_146;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v9 + 4);
          v43 = *(v9 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_76:
          if (v45)
          {
            goto LABEL_124;
          }

          v58 = &v9[16 * v38];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_127;
          }

          v64 = &v9[16 * v41 + 32];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_131;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_97;
          }

          goto LABEL_90;
        }

        v68 = &v9[16 * v38];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_90:
        if (v63)
        {
          goto LABEL_126;
        }

        v71 = &v9[16 * v41];
        v73 = *(v71 + 4);
        v72 = *(v71 + 5);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_129;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_97:
        v79 = v41 - 1;
        if (v41 - 1 >= v38)
        {
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*a3)
        {
          goto LABEL_143;
        }

        v80 = *&v9[16 * v79 + 32];
        v81 = *&v9[16 * v41 + 40];
        sub_2629FC484((*a3 + 16 * v80), (*a3 + 16 * *&v9[16 * v41 + 32]), (*a3 + 16 * v81), v40);
        if (v4)
        {
        }

        if (v81 < v80)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_262A1F22C(v9);
        }

        if (v79 >= *(v9 + 2))
        {
          goto LABEL_121;
        }

        v82 = &v9[16 * v79];
        *(v82 + 4) = v80;
        *(v82 + 5) = v81;
        result = sub_262A1F1A0(v41);
        v38 = *(v9 + 2);
        if (v38 <= 1)
        {
          goto LABEL_3;
        }
      }

      v46 = &v9[16 * v38 + 32];
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_122;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_123;
      }

      v53 = &v9[16 * v38];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_125;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_128;
      }

      if (v57 >= v49)
      {
        v75 = &v9[16 * v41 + 32];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_132;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_97;
      }

      goto LABEL_76;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_109;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v8 - 16;
  v29 = v10 - v8;
LABEL_44:
  v30 = *(v27 + 16 * v8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (v30 >= *v32 && (v30 != *v32 || *(v32 + 24) >= *(v32 + 8)))
    {
LABEL_43:
      ++v8;
      v28 += 16;
      --v29;
      if (v8 != v6)
      {
        goto LABEL_44;
      }

      v8 = v6;
      goto LABEL_56;
    }

    if (!v27)
    {
      break;
    }

    v34 = *(v32 + 24);
    *(v32 + 16) = *v32;
    *v32 = v30;
    *(v32 + 8) = v34;
    v32 -= 16;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_2629FA544(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v91 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v91;
    if (!*v91)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_128:
      result = sub_262A1F22C(v10);
      v10 = result;
    }

    v86 = *(v10 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = *&v10[16 * v86];
        v88 = *&v10[16 * v86 + 24];
        sub_2629FC6B0((*a3 + 16 * v87), (*a3 + 16 * *&v10[16 * v86 + 16]), (*a3 + 16 * v88), v5);
        if (v4)
        {
        }

        if (v88 < v87)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_262A1F22C(v10);
        }

        if (v86 - 2 >= *(v10 + 2))
        {
          goto LABEL_122;
        }

        v89 = &v10[16 * v86];
        *v89 = v87;
        *(v89 + 1) = v88;
        result = sub_262A1F1A0(v86 - 1);
        v86 = *(v10 + 2);
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = (*a3 + 16 * v9);
      v13 = *v12;
      v14 = v12[1];
      v15 = 16 * v11;
      v16 = (*a3 + 16 * v11);
      v17 = *v16;
      v18 = v16[1];
      v19 = v16 + 5;
      v20 = v18 < v14;
      if (v13 == v17)
      {
        v21 = v20;
      }

      else
      {
        v21 = v17 < v13;
      }

      v22 = v11 + 2;
      while (v7 != v22)
      {
        v23 = *(v19 - 1);
        v24 = *v19;
        v25 = v14 >= *v19;
        v26 = v13 >= v23;
        if (v23 == v13)
        {
          v26 = v25;
        }

        ++v22;
        v19 += 2;
        v14 = v24;
        v13 = v23;
        if (v21 == v26)
        {
          v9 = v22 - 1;
          if (!v21)
          {
            goto LABEL_25;
          }

          goto LABEL_16;
        }
      }

      v9 = v7;
      if (!v21)
      {
        goto LABEL_25;
      }

LABEL_16:
      if (v9 < v11)
      {
        goto LABEL_125;
      }

      if (v11 < v9)
      {
        v27 = 16 * v9 - 16;
        v28 = v9;
        v29 = v11;
        do
        {
          if (v29 != --v28)
          {
            v31 = *a3;
            if (!*a3)
            {
              goto LABEL_131;
            }

            v30 = *(v31 + v15);
            *(v31 + v15) = *(v31 + v27);
            *(v31 + v27) = v30;
          }

          ++v29;
          v27 -= 16;
          v15 += 16;
        }

        while (v29 < v28);
        v7 = a3[1];
      }
    }

LABEL_25:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_124;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_126;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_45:
    if (v9 < v11)
    {
      goto LABEL_123;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2629A8DAC(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v41 = *(v10 + 3);
    v42 = v5 + 1;
    if (v5 >= v41 >> 1)
    {
      result = sub_2629A8DAC((v41 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v42;
    v43 = &v10[16 * v5];
    *(v43 + 4) = v11;
    *(v43 + 5) = v9;
    v44 = *v91;
    if (!*v91)
    {
      goto LABEL_133;
    }

    if (v5)
    {
      while (1)
      {
        v45 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v46 = *(v10 + 4);
          v47 = *(v10 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_65:
          if (v49)
          {
            goto LABEL_112;
          }

          v62 = &v10[16 * v42];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_115;
          }

          v68 = &v10[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_119;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v42 - 2;
            }

            goto LABEL_86;
          }

          goto LABEL_79;
        }

        v72 = &v10[16 * v42];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_79:
        if (v67)
        {
          goto LABEL_114;
        }

        v75 = &v10[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_117;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_86:
        v83 = v45 - 1;
        if (v45 - 1 >= v42)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v84 = *&v10[16 * v83 + 32];
        v5 = *&v10[16 * v45 + 40];
        sub_2629FC6B0((*a3 + 16 * v84), (*a3 + 16 * *&v10[16 * v45 + 32]), (*a3 + 16 * v5), v44);
        if (v4)
        {
        }

        if (v5 < v84)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_262A1F22C(v10);
        }

        if (v83 >= *(v10 + 2))
        {
          goto LABEL_109;
        }

        v85 = &v10[16 * v83];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        result = sub_262A1F1A0(v45);
        v42 = *(v10 + 2);
        if (v42 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v10[16 * v42 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_110;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_111;
      }

      v57 = &v10[16 * v42];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_113;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_116;
      }

      if (v61 >= v53)
      {
        v79 = &v10[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_120;
        }

        if (v48 < v82)
        {
          v45 = v42 - 2;
        }

        goto LABEL_86;
      }

      goto LABEL_65;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_96;
    }
  }

  v32 = *a3;
  v33 = *a3 + 16 * v9 - 16;
  v34 = v11 - v9;
LABEL_35:
  v35 = *(v32 + 16 * v9);
  v36 = v34;
  v37 = v33;
  while (1)
  {
    v38 = vmovn_s64(vcgtq_s64(v35, *v37));
    if (vmovn_s64(vceqq_s64(v35, *v37)).u8[0])
    {
      v39 = v38.i8[4];
    }

    else
    {
      v39 = v38.i8[0];
    }

    if ((v39 & 1) == 0)
    {
LABEL_34:
      ++v9;
      v33 += 16;
      --v34;
      if (v9 != v7)
      {
        goto LABEL_35;
      }

      v9 = v7;
      goto LABEL_45;
    }

    if (!v32)
    {
      break;
    }

    *(v37 + 16) = *v37;
    *v37 = v35;
    v37 -= 16;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_34;
    }
  }

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
  return result;
}

uint64_t sub_2629FAAF0(uint64_t result, uint64_t a2, uint64_t *a3, char *a4)
{
  v95 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_96:
    v6 = *v95;
    if (!*v95)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_128:
      result = sub_262A1F22C(v8);
      v8 = result;
    }

    v90 = *(v8 + 2);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = *&v8[16 * v90];
        v92 = *&v8[16 * v90 + 24];
        sub_2629FC8E4((*a3 + 24 * v91), (*a3 + 24 * *&v8[16 * v90 + 16]), *a3 + 24 * v92, v6);
        if (v4)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_262A1F22C(v8);
        }

        if (v90 - 2 >= *(v8 + 2))
        {
          goto LABEL_122;
        }

        v93 = &v8[16 * v90];
        *v93 = v91;
        *(v93 + 1) = v92;
        result = sub_262A1F1A0(v90 - 1);
        v90 = *(v8 + 2);
        if (v90 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v6 = a4;
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v5)
    {
      v10 = *a3 + 24 * v7;
      v11 = *(v10 + 8);
      v12 = *(v10 + 16);
      v13 = 24 * v9;
      v14 = *a3 + 24 * v9;
      v15 = *(v14 + 8);
      if (v11 == v15)
      {
        v16 = v12 < *(v14 + 16);
      }

      else
      {
        v16 = v15 < v11;
      }

      v17 = v9 + 2;
      v18 = (v14 + 64);
      while (v5 != v17)
      {
        v19 = *(v18 - 1);
        v20 = *v18;
        v21 = *v18 >= v12;
        v22 = v11 >= v19;
        if (v19 == v11)
        {
          v22 = v21;
        }

        ++v17;
        v18 += 3;
        v12 = v20;
        v11 = v19;
        if (v16 == v22)
        {
          v7 = v17 - 1;
          if (!v16)
          {
            goto LABEL_25;
          }

          goto LABEL_16;
        }
      }

      v7 = v5;
      if (!v16)
      {
        goto LABEL_25;
      }

LABEL_16:
      if (v7 < v9)
      {
        goto LABEL_125;
      }

      if (v9 < v7)
      {
        v23 = 0;
        v24 = 24 * v7;
        v25 = v9;
        do
        {
          if (v25 != v7 + v23 - 1)
          {
            v31 = *a3;
            if (!*a3)
            {
              goto LABEL_131;
            }

            v26 = (v31 + v13);
            v27 = v31 + v24;
            v28 = *v26;
            v29 = *(v26 + 8);
            v30 = *(v27 - 24);
            *(v26 + 2) = *(v27 - 8);
            *v26 = v30;
            *(v27 - 24) = v28;
            *(v27 - 16) = v29;
          }

          ++v25;
          --v23;
          v24 -= 24;
          v13 += 24;
        }

        while (v25 < v7 + v23);
        v5 = a3[1];
      }
    }

LABEL_25:
    if (v7 < v5)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_124;
      }

      if (v7 - v9 < v6)
      {
        if (__OFADD__(v9, v6))
        {
          goto LABEL_126;
        }

        if (v9 + v6 < v5)
        {
          v5 = v9 + v6;
        }

        if (v5 < v9)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v7 != v5)
        {
          break;
        }
      }
    }

LABEL_45:
    if (v7 < v9)
    {
      goto LABEL_123;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2629A8DAC(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v45 = *(v8 + 2);
    v44 = *(v8 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_2629A8DAC((v44 > 1), v45 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v46;
    v47 = &v8[16 * v45];
    *(v47 + 4) = v9;
    *(v47 + 5) = v7;
    v48 = *v95;
    if (!*v95)
    {
      goto LABEL_133;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 4);
          v51 = *(v8 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_65:
          if (v53)
          {
            goto LABEL_112;
          }

          v66 = &v8[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_115;
          }

          v72 = &v8[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_119;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_86;
          }

          goto LABEL_79;
        }

        v76 = &v8[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_79:
        if (v71)
        {
          goto LABEL_114;
        }

        v79 = &v8[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_117;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_86:
        v6 = v49 - 1;
        if (v49 - 1 >= v46)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v87 = *&v8[16 * v6 + 32];
        v88 = *&v8[16 * v49 + 40];
        sub_2629FC8E4((*a3 + 24 * v87), (*a3 + 24 * *&v8[16 * v49 + 32]), *a3 + 24 * v88, v48);
        if (v4)
        {
        }

        if (v88 < v87)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_262A1F22C(v8);
        }

        if (v6 >= *(v8 + 2))
        {
          goto LABEL_109;
        }

        v89 = &v8[16 * v6];
        *(v89 + 4) = v87;
        *(v89 + 5) = v88;
        result = sub_262A1F1A0(v49);
        v46 = *(v8 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v8[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_110;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_111;
      }

      v61 = &v8[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_113;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_116;
      }

      if (v65 >= v57)
      {
        v83 = &v8[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_120;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_86;
      }

      goto LABEL_65;
    }

LABEL_3:
    v5 = a3[1];
    v6 = a4;
    if (v7 >= v5)
    {
      goto LABEL_96;
    }
  }

  v32 = *a3;
  v33 = *a3 + 24 * v7 - 8;
  v34 = v9 - v7;
LABEL_35:
  v35 = v32 + 24 * v7;
  v36 = *(v35 + 8);
  v37 = *(v35 + 16);
  v38 = v34;
  v39 = v33;
  while (1)
  {
    v40 = *(v39 - 8);
    if (v36 == v40)
    {
      v41 = v37 < *v39;
    }

    else
    {
      v41 = v40 < v36;
    }

    if (!v41)
    {
LABEL_34:
      ++v7;
      v33 += 24;
      --v34;
      if (v7 != v5)
      {
        goto LABEL_35;
      }

      v7 = v5;
      goto LABEL_45;
    }

    if (!v32)
    {
      break;
    }

    v42 = *(v39 + 8);
    *(v39 + 8) = *(v39 - 16);
    *(v39 + 24) = *v39;
    *(v39 - 16) = v42;
    *(v39 - 8) = v36;
    *v39 = v37;
    v39 -= 24;
    if (__CFADD__(v38++, 1))
    {
      goto LABEL_34;
    }
  }

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
  return result;
}

uint64_t sub_2629FB0FC(uint64_t *__dst, uint64_t *__src, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    v15 = a4;
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      memmove(a4, __dst, 8 * v11);
    }

    v16 = &v15[v11];
    if (v9 < 8)
    {
LABEL_10:
      v7 = v8;
      goto LABEL_76;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v18 = v7;
      v19 = *v7;
      v20 = *v15;
      v21 = *a5;
      if (!*(*a5 + 16))
      {
        goto LABEL_24;
      }

      v22 = sub_2629CB210(v19);
      if ((v23 & 1) == 0)
      {
        break;
      }

      v24 = *(*(v21 + 56) + 8 * v22);
      v25 = sub_2629CB210(v20);
      if (v26)
      {
        goto LABEL_23;
      }

      if (v24)
      {
        v27 = 0;
LABEL_29:
        if (v27 >= v24)
        {
          goto LABEL_35;
        }

        goto LABEL_12;
      }

LABEL_24:
      v29 = *a6;
      if (!*(*a6 + 16))
      {
        goto LABEL_34;
      }

      v30 = sub_2629CB210(v19);
      if (v31)
      {
        v32 = *(*(v29 + 56) + 8 * v30);
        v33 = sub_2629CB210(v20);
        if ((v34 & 1) == 0)
        {
          if (v32 == 0.0)
          {
            goto LABEL_34;
          }

          v35 = 0.0;
          goto LABEL_38;
        }
      }

      else
      {
        v33 = sub_2629CB210(v20);
        if ((v36 & 1) == 0)
        {
          goto LABEL_34;
        }

        v32 = 0.0;
      }

      v35 = *(*(v29 + 56) + 8 * v33);
      if (v32 == v35)
      {
LABEL_34:
        if (v19 >= v20)
        {
          goto LABEL_35;
        }

        goto LABEL_12;
      }

LABEL_38:
      if (v35 >= v32)
      {
LABEL_35:
        v17 = v15;
        v37 = v8 == v15++;
        v7 = v18;
        if (v37)
        {
          goto LABEL_14;
        }

LABEL_13:
        *v8 = *v17;
        goto LABEL_14;
      }

LABEL_12:
      v17 = v18;
      v7 = v18 + 1;
      if (v8 != v18)
      {
        goto LABEL_13;
      }

LABEL_14:
      ++v8;
      if (v15 >= v16)
      {
        goto LABEL_10;
      }
    }

    v25 = sub_2629CB210(v20);
    if ((v28 & 1) == 0)
    {
      goto LABEL_24;
    }

    v24 = 0;
LABEL_23:
    v27 = *(*(v21 + 56) + 8 * v25);
    if (v24 != v27)
    {
      goto LABEL_29;
    }

    goto LABEL_24;
  }

  if (a4 != __src || &__src[v14] <= a4)
  {
    v38 = a4;
    memmove(a4, __src, 8 * v14);
    a4 = v38;
  }

  v16 = &a4[v14];
  v15 = a4;
  if (v12 >= 8 && v7 > v8)
  {
    v64 = a4;
LABEL_46:
    v39 = v7 - 1;
    v40 = v6;
    v41 = v16;
    v62 = v7 - 1;
    v63 = v7;
    while (1)
    {
      v43 = *--v41;
      v42 = v43;
      v44 = *v39;
      v45 = *a5;
      if (!*(*a5 + 16))
      {
LABEL_56:
        v53 = *a6;
        if (*(*a6 + 16))
        {
          v54 = sub_2629CB210(v42);
          if (v55)
          {
            v56 = *(*(v53 + 56) + 8 * v54);
            v57 = sub_2629CB210(v44);
            if ((v58 & 1) == 0)
            {
              if (v56 != 0.0)
              {
                v59 = 0.0;
LABEL_69:
                v6 = (v40 - 8);
                if (v59 < v56)
                {
LABEL_70:
                  if (v40 != v63)
                  {
                    *v6 = *v62;
                  }

                  v15 = v64;
                  if (v16 <= v64 || (v7 = v62, v62 <= v8))
                  {
                    v7 = v62;
                    break;
                  }

                  goto LABEL_46;
                }

                goto LABEL_67;
              }

              goto LABEL_66;
            }

LABEL_65:
            v59 = *(*(v53 + 56) + 8 * v57);
            if (v56 != v59)
            {
              goto LABEL_69;
            }
          }

          else
          {
            v57 = sub_2629CB210(v44);
            if (v60)
            {
              v56 = 0.0;
              goto LABEL_65;
            }
          }
        }

LABEL_66:
        v6 = (v40 - 8);
        if (v42 < v44)
        {
          goto LABEL_70;
        }

        goto LABEL_67;
      }

      v46 = sub_2629CB210(v42);
      if (v47)
      {
        v48 = *(*(v45 + 56) + 8 * v46);
        v49 = sub_2629CB210(v44);
        if ((v50 & 1) == 0)
        {
          if (!v48)
          {
            goto LABEL_56;
          }

          v51 = 0;
          goto LABEL_61;
        }
      }

      else
      {
        v49 = sub_2629CB210(v44);
        if ((v52 & 1) == 0)
        {
          goto LABEL_56;
        }

        v48 = 0;
      }

      v51 = *(*(v45 + 56) + 8 * v49);
      if (v48 == v51)
      {
        goto LABEL_56;
      }

LABEL_61:
      v6 = (v40 - 8);
      if (v51 < v48)
      {
        goto LABEL_70;
      }

LABEL_67:
      v7 = v63;
      if (v16 != v40)
      {
        *v6 = *v41;
      }

      v16 = v41;
      v40 = v6;
      v39 = v62;
      if (v41 <= v64)
      {
        v16 = v41;
        v15 = v64;
        break;
      }
    }
  }

LABEL_76:
  if (v7 != v15 || v7 >= (v15 + ((v16 - v15 + (v16 - v15 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v7, v15, 8 * (v16 - v15));
  }

  return 1;
}

unint64_t sub_2629FB4F8(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst < (a3 - __src))
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 < 1 || v6 >= v5)
    {
LABEL_44:
      v6 = v7;
      goto LABEL_89;
    }

    v109 = &v4[v8];
    while (2)
    {
      v105 = v7;
      v107 = v6;
      v102 = *v6;
      v111 = v4;
      v100 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CDD0, &qword_262A2B3B0);
      v11 = sub_262A2A778();
      v12 = &qword_287533A48;
      v13 = 12;
      do
      {
        v14 = *(v12 - 8);
        v15 = *v12;
        result = sub_2629CB1E4(v14);
        if (v17)
        {
          goto LABEL_94;
        }

        *(v11 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        *(v11[6] + result) = v14;
        *(v11[7] + 8 * result) = v15;
        v18 = v11[2];
        v19 = __OFADD__(v18, 1);
        v20 = v18 + 1;
        if (v19)
        {
          goto LABEL_96;
        }

        v12 += 2;
        v11[2] = v20;
        --v13;
      }

      while (v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3BF00, &qword_262A2B3A8);
      v21 = sub_262A2A778();

      v22 = &off_287533D08;
      v23 = 12;
      do
      {
        v24 = *(v22 - 8);
        v25 = *v22;

        result = sub_2629CB1E4(v24);
        if (v26)
        {
          goto LABEL_97;
        }

        *(v21 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        *(v21[6] + result) = v24;
        *(v21[7] + 8 * result) = v25;
        v27 = v21[2];
        v19 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v19)
        {
          goto LABEL_99;
        }

        v21[2] = v28;
        v22 += 2;
        --v23;
      }

      while (v23);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C2D8, &unk_262A30A30);
      swift_arrayDestroy();

      if (v11[2] && (v29 = sub_2629CB1E4(v102), (v30 & 1) != 0))
      {
        v31 = *(v11[7] + 8 * v29);
      }

      else
      {
        v31 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v103 = v31;

      v32 = sub_262A2A778();
      v33 = &qword_287533A48;
      v34 = 12;
      do
      {
        v35 = *(v33 - 8);
        v36 = *v33;
        result = sub_2629CB1E4(v35);
        if (v37)
        {
          goto LABEL_102;
        }

        *(v32 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        *(v32[6] + result) = v35;
        *(v32[7] + 8 * result) = v36;
        v38 = v32[2];
        v19 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v19)
        {
          goto LABEL_103;
        }

        v33 += 2;
        v32[2] = v39;
        --v34;
      }

      while (v34);
      v40 = sub_262A2A778();

      v41 = &off_287533D08;
      v42 = 12;
      do
      {
        v43 = *(v41 - 8);
        v44 = *v41;

        result = sub_2629CB1E4(v43);
        if (v45)
        {
          goto LABEL_106;
        }

        *(v40 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        *(v40[6] + result) = v43;
        *(v40[7] + 8 * result) = v44;
        v46 = v40[2];
        v19 = __OFADD__(v46, 1);
        v47 = v46 + 1;
        if (v19)
        {
          goto LABEL_107;
        }

        v40[2] = v47;
        v41 += 2;
        --v42;
      }

      while (v42);

      swift_arrayDestroy();

      if (v32[2] && (v48 = sub_2629CB1E4(v100), (v49 & 1) != 0))
      {
        v50 = *(v32[7] + 8 * v48);

        v4 = v111;
        v52 = v105;
        v51 = v107;
        if (v103 >= v50)
        {
LABEL_31:
          v53 = v4 + 1;
          v54 = v4;
          v55 = v51;
          if (v52 >= v4)
          {
            ++v4;
            v56 = v52 >= v53;
            v10 = v109;
            if (!v56)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          }

          ++v4;
          break;
        }
      }

      else
      {

        v4 = v111;
        v52 = v105;
        v51 = v107;
        if (v103 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_31;
        }
      }

      v55 = v51 + 1;
      v54 = v51;
      if (v52 >= v51)
      {
        v10 = v109;
        if (v52 < v55)
        {
LABEL_42:
          v7 = v52 + 1;
          if (v4 < v10)
          {
            v6 = v55;
            if (v55 < v5)
            {
              continue;
            }
          }

          goto LABEL_44;
        }

LABEL_41:
        *v52 = *v54;
        goto LABEL_42;
      }

      break;
    }

    v10 = v109;
    goto LABEL_41;
  }

  if (a4 != __src || a4 >= a3)
  {
    memmove(a4, __src, a3 - __src);
  }

  v10 = &v4[v9];
  if (v9 < 1 || v6 <= v7)
  {
    goto LABEL_89;
  }

  v106 = v7;
  v108 = v6;
  v112 = v4;
  while (2)
  {
    v57 = v108 - 1;
    v96 = v108 - 1;
    while (2)
    {
      v104 = v5;
      v110 = v10;
      v101 = v10 - 1;
      v97 = *v57;
      v98 = *(v10 - 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CDD0, &qword_262A2B3B0);
      v58 = sub_262A2A778();
      v59 = &qword_287533A48;
      v60 = 12;
      do
      {
        v61 = *(v59 - 8);
        v62 = *v59;
        result = sub_2629CB1E4(v61);
        if (v63)
        {
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
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
          return result;
        }

        *(v58 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        *(v58[6] + result) = v61;
        *(v58[7] + 8 * result) = v62;
        v64 = v58[2];
        v19 = __OFADD__(v64, 1);
        v65 = v64 + 1;
        if (v19)
        {
          goto LABEL_95;
        }

        v59 += 2;
        v58[2] = v65;
        --v60;
      }

      while (v60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3BF00, &qword_262A2B3A8);
      v66 = sub_262A2A778();

      v67 = &off_287533D08;
      v68 = 12;
      do
      {
        v69 = *(v67 - 8);
        v70 = *v67;

        result = sub_2629CB1E4(v69);
        if (v71)
        {
          goto LABEL_98;
        }

        *(v66 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        *(v66[6] + result) = v69;
        *(v66[7] + 8 * result) = v70;
        v72 = v66[2];
        v19 = __OFADD__(v72, 1);
        v73 = v72 + 1;
        if (v19)
        {
          goto LABEL_100;
        }

        v66[2] = v73;
        v67 += 2;
        --v68;
      }

      while (v68);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C2D8, &unk_262A30A30);
      swift_arrayDestroy();

      if (v58[2] && (v74 = sub_2629CB1E4(v98), (v75 & 1) != 0))
      {
        v76 = *(v58[7] + 8 * v74);
      }

      else
      {
        v76 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v99 = v76;

      v77 = sub_262A2A778();
      v78 = &qword_287533A48;
      v79 = 12;
      do
      {
        v80 = *(v78 - 8);
        v81 = *v78;
        result = sub_2629CB1E4(v80);
        if (v82)
        {
          goto LABEL_101;
        }

        *(v77 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        *(v77[6] + result) = v80;
        *(v77[7] + 8 * result) = v81;
        v83 = v77[2];
        v19 = __OFADD__(v83, 1);
        v84 = v83 + 1;
        if (v19)
        {
          goto LABEL_104;
        }

        v78 += 2;
        v77[2] = v84;
        --v79;
      }

      while (v79);
      v85 = sub_262A2A778();

      v86 = &off_287533D08;
      v87 = 12;
      do
      {
        v88 = *(v86 - 8);
        v89 = *v86;

        result = sub_2629CB1E4(v88);
        if (v90)
        {
          goto LABEL_105;
        }

        *(v85 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        *(v85[6] + result) = v88;
        *(v85[7] + 8 * result) = v89;
        v91 = v85[2];
        v19 = __OFADD__(v91, 1);
        v92 = v91 + 1;
        if (v19)
        {
          goto LABEL_108;
        }

        v85[2] = v92;
        v86 += 2;
        --v87;
      }

      while (v87);

      v5 = v104 - 1;
      swift_arrayDestroy();

      if (!v77[2] || (v93 = sub_2629CB1E4(v97), (v94 & 1) == 0))
      {

        if (v99 != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_82;
        }

LABEL_79:
        v4 = v112;
        v57 = v108 - 1;
        v10 = v101;
        if (v104 < v110 || v5 >= v110)
        {
          *v5 = *v101;
        }

        if (v101 <= v112)
        {
          v6 = v108;
          goto LABEL_89;
        }

        continue;
      }

      break;
    }

    v95 = *(v77[7] + 8 * v93);

    if (v99 >= v95)
    {
      goto LABEL_79;
    }

LABEL_82:
    v10 = v110;
    v4 = v112;
    v6 = v108 - 1;
    if (v104 < v108 || v5 >= v108)
    {
      *v5 = *v96;
    }

    if (v110 > v112)
    {
      --v108;
      if (v96 > v106)
      {
        continue;
      }
    }

    break;
  }

LABEL_89:
  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}

uint64_t sub_2629FBDB8(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (qword_262A30AE8[v18] < qword_262A30AE8[v19])
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v4;
        if (qword_262A30AE8[*v6] >= qword_262A30AE8[v11])
        {
          v13 = v4 + 1;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          LOBYTE(v11) = *v6;
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_2629FBFD0(_BYTE *__dst, _BYTE *__src, unint64_t a3, _BYTE *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst < (a3 - __src))
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v4;
        v12 = qword_262A30AE8[*v6];
        if (v11 > 2)
        {
          if (v11 == 3)
          {
            if (v12 > 0x2D)
            {
              goto LABEL_22;
            }
          }

          else if (v11 == 4 && v12 > 0x3C)
          {
            goto LABEL_22;
          }
        }

        else
        {
          if (v11 == 1)
          {
            v13 = 20;
          }

          else
          {
            v13 = 30;
          }

          if (!*v4)
          {
            v13 = 10;
          }

          if (v13 < v12)
          {
LABEL_22:
            LOBYTE(v11) = *v6;
            v15 = v6 + 1;
            if (v7 >= v6 && v7 < v15)
            {
              goto LABEL_27;
            }

            goto LABEL_26;
          }
        }

        v14 = v4 + 1;
        v15 = v6;
        if (v7 < v4)
        {
          ++v4;
        }

        else
        {
          ++v4;
          if (v7 < v14)
          {
            goto LABEL_27;
          }
        }

LABEL_26:
        *v7 = v11;
LABEL_27:
        ++v7;
        if (v4 < v10)
        {
          v6 = v15;
          if (v15 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_65;
    }

LABEL_64:
    if (v6 >= v10)
    {
      goto LABEL_65;
    }

    return 1;
  }

  if (a4 != __src || a4 >= a3)
  {
    memmove(a4, __src, a3 - __src);
  }

  v10 = &v4[v9];
  if (v9 < 1 || v6 <= v7)
  {
LABEL_63:
    if (v6 != v4)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  do
  {
    v16 = v6 - 1;
    --v5;
    v17 = v10;
    while (1)
    {
      v19 = *--v17;
      v18 = v19;
      v20 = *v16;
      v21 = qword_262A30AE8[v19];
      if (v20 <= 2)
      {
        break;
      }

      if (v20 == 3)
      {
        if (v21 > 0x2D)
        {
          goto LABEL_55;
        }
      }

      else if (v20 == 4 && v21 > 0x3C)
      {
        goto LABEL_55;
      }

LABEL_52:
      if ((v5 + 1) < v10 || v5 >= v10)
      {
        *v5 = v18;
      }

      --v5;
      v10 = v17;
      if (v17 <= v4)
      {
        v10 = v17;
        goto LABEL_63;
      }
    }

    if (v20 == 1)
    {
      v22 = 20;
    }

    else
    {
      v22 = 30;
    }

    if (!*v16)
    {
      v22 = 10;
    }

    if (v22 >= v21)
    {
      goto LABEL_52;
    }

LABEL_55:
    if (v5 + 1 < v6 || v5 >= v6)
    {
      *v5 = v20;
    }

    if (v10 <= v4)
    {
      break;
    }

    --v6;
  }

  while (v16 > v7);
  v6 = v16;
  if (v16 == v4)
  {
    goto LABEL_64;
  }

LABEL_65:
  memmove(v6, v4, v10 - v4);
  return 1;
}

uint64_t sub_2629FC280(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[1] < v6[1])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 2;
    do
    {
      v17 = v5 + 2;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v19 = v6 - 2;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 2;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 -= 2;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v20 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

uint64_t sub_2629FC484(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 >= *v4 && (*v6 != *v4 || *(v6 + 1) >= *(v4 + 1)))
      {
        break;
      }

      v15 = v6;
      v16 = v7 == v6;
      v6 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v4;
    v16 = v7 == v4;
    v4 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v18 = v6 - 16;
    v5 -= 16;
    v19 = v14;
    do
    {
      v20 = v5 + 16;
      v22 = *(v19 - 2);
      v19 -= 16;
      v21 = v22;
      if (v22 < *v18 || (v21 == *v18 ? (v23 = *(v14 - 1) < *(v6 - 1)) : (v23 = 0), v23))
      {
        if (v20 != v6)
        {
          *v5 = *v18;
        }

        if (v14 <= v4 || (v6 -= 16, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v20 != v14)
      {
        *v5 = *v19;
      }

      v5 -= 16;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_43:
  v24 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v24 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v24 >> 4));
  }

  return 1;
}

uint64_t sub_2629FC6B0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_41;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 == *v4 ? *(v4 + 1) < *(v6 + 1) : *v4 < *v6)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_27:
    v18 = v6 - 16;
    v5 -= 16;
    v19 = v14;
    do
    {
      v20 = *(v19 - 2);
      v21 = *(v19 - 1);
      v19 -= 16;
      v22 = v5 + 16;
      v23 = *(v6 - 2);
      v24 = *(v6 - 1) < v21;
      if (v20 == v23)
      {
        v25 = v24;
      }

      else
      {
        v25 = v23 < v20;
      }

      if (v25)
      {
        if (v22 != v6)
        {
          *v5 = *v18;
        }

        if (v14 <= v4 || (v6 -= 16, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_41;
        }

        goto LABEL_27;
      }

      if (v22 != v14)
      {
        *v5 = *v19;
      }

      v5 -= 16;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_41:
  v26 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v26 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v26 >> 4));
  }

  return 1;
}

uint64_t sub_2629FC8E4(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_37;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v16 = *(v6 + 1);
      v17 = *(v4 + 1);
      if (v16 == v17 ? *(v6 + 2) < *(v4 + 2) : v17 < v16)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_23:
    v5 -= 24;
    do
    {
      v19 = (v5 + 24);
      v20 = *(v12 - 2);
      v21 = *(v6 - 2);
      if (v20 == v21)
      {
        v22 = *(v12 - 1) < *(v6 - 1);
      }

      else
      {
        v22 = v21 < v20;
      }

      if (v22)
      {
        v25 = v6 - 24;
        if (v19 != v6)
        {
          v26 = *v25;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v26;
        }

        if (v12 <= v4 || (v6 -= 24, v25 <= v7))
        {
          v6 = v25;
          goto LABEL_37;
        }

        goto LABEL_23;
      }

      v23 = v12 - 24;
      if (v19 != v12)
      {
        v24 = *v23;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v24;
      }

      v5 -= 24;
      v12 -= 24;
    }

    while (v23 > v4);
    v12 = v23;
  }

LABEL_37:
  v27 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v28 = (v27 >> 2) + (v27 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v28])
  {
    memmove(v6, v4, 24 * v28);
  }

  return 1;
}

uint64_t sub_2629FCB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v10 = v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_2629FCCE4(v10, v8, a3, v6);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v13 = swift_slowAlloc();
  v14 = sub_2629FCEF4(v13, v8, a3, v6, a2, sub_2629FCCE4);
  result = MEMORY[0x26672F820](v13, -1, -1);
  if (!v3)
  {
    result = v14;
  }

LABEL_4:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2629FCCE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t *))
{
  v20 = 0;
  v19 = result;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(a3 + 56);
    v24 = *(*(a3 + 48) + v14);
    v23 = *(v15 + 8 * v14);

    v16 = a4(&v24, &v23);

    if (v4)
    {
      return result;
    }

    if (v16)
    {
      *(v19 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        return sub_2629FCF94(v19, a2, v20, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_2629FCF94(v19, a2, v20, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_2629FCE58(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_2629FE304(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void *sub_2629FCEF4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a6(result, a2, a3);

    return v10;
  }

  return result;
}

uint64_t sub_2629FCF94(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) != a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C778, &qword_262A2E740);
    v8 = sub_262A2A778();
    v9 = v8;
    if (a2 < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = *a1;
    }

    v11 = 0;
    v12 = v8 + 64;
    v32 = v4;
    while (1)
    {
      if (v10)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        goto LABEL_16;
      }

      v14 = v11;
      do
      {
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          JUMPOUT(0x2629FD2B4);
        }

        if (v11 >= a2)
        {
          return v9;
        }

        v15 = a1[v11];
        ++v14;
      }

      while (!v15);
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
LABEL_16:
      v16 = v13 | (v11 << 6);
      v17 = *(v4 + 56);
      v18 = *(*(v4 + 48) + v16);
      v34 = *(v17 + 8 * v16);
      v19 = *(v9 + 40);
      sub_262A2A998();
      v33 = v18;

      sub_262A2A448();

      v20 = sub_262A2A9D8();
      v21 = -1 << *(v9 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      v4 = v32;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) != 0)
      {
        v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
        v25 = v33;
      }

      else
      {
        v26 = 0;
        v27 = (63 - v21) >> 6;
        v25 = v33;
        do
        {
          if (++v23 == v27 && (v26 & 1) != 0)
          {
            goto LABEL_31;
          }

          v28 = v23 == v27;
          if (v23 == v27)
          {
            v23 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v23);
        }

        while (v29 == -1);
        v24 = __clz(__rbit64(~v29)) + (v23 << 6);
      }

      *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      *(*(v9 + 48) + v24) = v25;
      *(*(v9 + 56) + 8 * v24) = v34;
      ++*(v9 + 16);
      if (__OFSUB__(v5--, 1))
      {
        goto LABEL_32;
      }

      if (!v5)
      {
        return v9;
      }
    }
  }

  return v4;
}

unsigned __int8 *sub_2629FD2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_2629FF104();

  result = sub_262A2A4C8();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_2629FD884();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_262A2A728();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}
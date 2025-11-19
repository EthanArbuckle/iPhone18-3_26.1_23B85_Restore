uint64_t sub_230D9261C(uint64_t a1)
{
  v2 = sub_230D0E5F0(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    for (i = v3 - 1; ; --i)
    {
      v6 = v4[9];
      v107 = v4[8];
      v108 = v6;
      v109 = *(v4 + 20);
      v7 = v4[5];
      v103 = v4[4];
      v104 = v7;
      v8 = v4[7];
      v105 = v4[6];
      v106 = v8;
      v9 = v4[1];
      v99 = *v4;
      v100 = v9;
      v10 = v4[3];
      v101 = v4[2];
      v102 = v10;
      v11 = v105;
      if (!v105)
      {
        goto LABEL_16;
      }

      v12 = *(&v104 + 1);
      v13 = BYTE7(v105) & 0xF;
      if ((v105 & 0x2000000000000000) == 0)
      {
        v13 = *(&v104 + 1) & 0xFFFFFFFFFFFFLL;
      }

      if (!v13)
      {
        goto LABEL_16;
      }

      v14 = v104;
      if (!v104)
      {
        goto LABEL_16;
      }

      v15 = *(&v103 + 1);
      v16 = BYTE7(v104) & 0xF;
      if ((v104 & 0x2000000000000000) == 0)
      {
        v16 = *(&v103 + 1) & 0xFFFFFFFFFFFFLL;
      }

      if (!v16)
      {
LABEL_16:
        sub_230D93514(&v99, v98);
        v27 = sub_230E68D60();
        v28 = sub_230E693F0();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = v100;
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v98[0] = v31;
          *v30 = 136315138;

          sub_230D93570(&v99);
          v32 = sub_230D7E620(v29, *(&v29 + 1), v98);

          *(v30 + 4) = v32;
          _os_log_impl(&dword_230D02000, v27, v28, "[MusicAggregator][generateTopAlbums] Skipping session without album or artist: %s", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v31);
          MEMORY[0x23191EAE0](v31, -1, -1);
          MEMORY[0x23191EAE0](v30, -1, -1);

          if (!i)
          {
            break;
          }
        }

        else
        {

          sub_230D93570(&v99);
          if (!i)
          {
            break;
          }
        }

        goto LABEL_45;
      }

      v17 = *(&v108 + 1);
      v18 = v109;
      v19 = *(&v101 + 1);
      if (v2[2])
      {
        sub_230D93514(&v99, v98);

        v20 = sub_230DA41A0(v12, v11);
        if (v21)
        {
          v22 = v20;

          v23 = v2[7] + 48 * v22;
          v24 = *v23 + 1;
          if (__OFADD__(*v23, 1))
          {
            goto LABEL_65;
          }

          v25 = *(v23 + 24);
          v92 = *(v23 + 16);
          v26 = *(v23 + 8);
          if (*(v23 + 40))
          {
            v17 = *(v23 + 32);
            v93 = *(v23 + 40);
          }

          else
          {
            v93 = v18;
          }

          sub_230D93570(&v99);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v98[0] = v2;
          v49 = sub_230DA41A0(v12, v11);
          v51 = v2;
          v52 = v2[2];
          v53 = (v50 & 1) == 0;
          v39 = __OFADD__(v52, v53);
          v54 = v52 + v53;
          if (v39)
          {
            goto LABEL_66;
          }

          v55 = v50;
          if (v51[3] < v54)
          {
            sub_230DB7614(v54, isUniquelyReferenced_nonNull_native);
            v49 = sub_230DA41A0(v12, v11);
            if ((v55 & 1) != (v56 & 1))
            {
              goto LABEL_68;
            }

            goto LABEL_35;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_35:
            v57 = v19 + v26;
            if (v55)
            {
              goto LABEL_36;
            }
          }

          else
          {
            v69 = v17;
            v70 = v49;
            sub_230DBA4C0();
            v49 = v70;
            v17 = v69;
            v57 = v19 + v26;
            if (v55)
            {
LABEL_36:
              v58 = v17;
              v59 = v49;

              v2 = v98[0];
              v60 = *(v98[0] + 56) + 48 * v59;
              v61 = *(v60 + 24);
              v62 = *(v60 + 40);
              *v60 = v24;
              *(v60 + 8) = v57;
              *(v60 + 16) = v92;
              *(v60 + 24) = v25;
              *(v60 + 32) = v58;
              *(v60 + 40) = v93;

              goto LABEL_44;
            }
          }

          v2 = v98[0];
          *(v98[0] + 8 * (v49 >> 6) + 64) |= 1 << v49;
          v71 = (v2[6] + 16 * v49);
          *v71 = v12;
          v71[1] = v11;
          v72 = v2[7] + 48 * v49;
          *v72 = v24;
          *(v72 + 8) = v57;
          *(v72 + 16) = v92;
          *(v72 + 24) = v25;
          *(v72 + 32) = v17;
          *(v72 + 40) = v93;
          v73 = v2[2];
          v39 = __OFADD__(v73, 1);
          v68 = v73 + 1;
          if (v39)
          {
            goto LABEL_67;
          }

          goto LABEL_43;
        }
      }

      else
      {
        sub_230D93514(&v99, v98);
      }

      v94 = v18;

      v33 = swift_isUniquelyReferenced_nonNull_native();
      v98[0] = v2;
      v34 = sub_230DA41A0(v12, v11);
      v36 = v2;
      v37 = v2[2];
      v38 = (v35 & 1) == 0;
      v39 = __OFADD__(v37, v38);
      v40 = v37 + v38;
      if (v39)
      {
        goto LABEL_63;
      }

      v41 = v35;
      if (v36[3] >= v40)
      {
        if ((v33 & 1) == 0)
        {
          v63 = v17;
          v64 = v34;
          sub_230DBA4C0();
          v34 = v64;
          v17 = v63;
          if (v41)
          {
LABEL_28:
            v43 = v17;
            v44 = v34;

            v2 = v98[0];
            v45 = *(v98[0] + 56) + 48 * v44;
            v46 = *(v45 + 24);
            v47 = *(v45 + 40);
            *v45 = 1;
            *(v45 + 8) = v19;
            *(v45 + 16) = v15;
            *(v45 + 24) = v14;
            *(v45 + 32) = v43;
            *(v45 + 40) = v94;

            sub_230D93570(&v99);
            goto LABEL_44;
          }

          goto LABEL_38;
        }
      }

      else
      {
        sub_230DB7614(v40, v33);
        v34 = sub_230DA41A0(v12, v11);
        if ((v41 & 1) != (v42 & 1))
        {
          goto LABEL_68;
        }
      }

      if (v41)
      {
        goto LABEL_28;
      }

LABEL_38:
      v2 = v98[0];
      *(v98[0] + 8 * (v34 >> 6) + 64) |= 1 << v34;
      v65 = (v2[6] + 16 * v34);
      *v65 = v12;
      v65[1] = v11;
      v66 = v2[7] + 48 * v34;
      *v66 = 1;
      *(v66 + 8) = v19;
      *(v66 + 16) = v15;
      *(v66 + 24) = v14;
      *(v66 + 32) = v17;
      *(v66 + 40) = v94;
      sub_230D93570(&v99);
      v67 = v2[2];
      v39 = __OFADD__(v67, 1);
      v68 = v67 + 1;
      if (v39)
      {
        goto LABEL_64;
      }

LABEL_43:
      v2[2] = v68;
LABEL_44:
      if (!i)
      {
        break;
      }

LABEL_45:
      v4 = (v4 + 168);
    }
  }

  v74 = v2[2];
  v75 = v2;
  v76 = MEMORY[0x277D84F90];
  if (v74)
  {
    v77 = sub_230E4B244(v74, 0);
    v78 = sub_230E68470(&v99, v77 + 4, v74, v75);

    sub_230D912FC();
    if (v78 == v74)
    {
      goto LABEL_50;
    }

    __break(1u);
  }

  v77 = v76;
LABEL_50:
  *&v99 = v77;
  i = 0;
  sub_230D93744(&v99, sub_230D45148, &qword_27DB5B388, &qword_230E6F708);
  v79 = v99;
  v80 = *(v99 + 16);
  if (v80 >= 5)
  {
    v81 = 5;
  }

  else
  {
    v81 = *(v99 + 16);
  }

  if (v80)
  {
    *&v99 = v76;
    sub_230D48F90(0, v81, 0);
    v82 = v99;
    v83 = (v79 + 48);
    while (v81)
    {
      v84 = *(v83 - 1);
      v97 = *v83;
      v85 = v83[1];
      v86 = *(v83 + 3);
      v95 = *(v83 + 2);
      v96 = *(v83 - 2);
      i = *(v83 + 4);
      v87 = *(v83 + 5);
      v88 = *(v82 + 16);
      v89 = *(v82 + 24);
      *&v99 = v82;

      if (v88 >= v89 >> 1)
      {
        sub_230D48F90((v89 > 1), v88 + 1, 1);
        v82 = v99;
      }

      *(v82 + 16) = v88 + 1;
      v90 = v82 + (v88 << 6);
      *(v90 + 32) = v96;
      *(v90 + 40) = v84;
      *(v90 + 48) = i;
      *(v90 + 56) = v87;
      *(v90 + 64) = v95;
      *(v90 + 72) = v86;
      *(v90 + 80) = v97;
      *(v90 + 88) = round(v85 * 100.0) / 100.0;
      v83 += 8;
      if (!--v81)
      {

        return v82;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    sub_230E69950();
    __break(1u);
    MEMORY[0x23191E910](i);

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_230D92DC8(uint64_t a1)
{
  v3 = sub_230D0E4B4(MEMORY[0x277D84F90]);
  v4 = *(a1 + 16);
  v5 = &OBJC_IVAR____TtC20ServicesIntelligence26ContextualContentRetrieval_logger;
  if (!v4)
  {
    goto LABEL_37;
  }

  v6 = (a1 + 32);
  for (i = v4 - 1; ; --i)
  {
    v7 = v6[9];
    v99 = v6[8];
    v100 = v7;
    v101 = *(v6 + 20);
    v8 = v6[5];
    v95 = v6[4];
    v96 = v8;
    v9 = v6[7];
    v97 = v6[6];
    v98 = v9;
    v10 = v6[1];
    v91 = *v6;
    v92 = v10;
    v11 = v6[3];
    v93 = v6[2];
    v94 = v11;
    v12 = v98;
    if (v98)
    {
      v13 = *(&v97 + 1);
      v14 = BYTE7(v98) & 0xF;
      if ((v98 & 0x2000000000000000) == 0)
      {
        v14 = *(&v97 + 1) & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        v15 = *(&v93 + 1);
        v16 = *(v3 + 16);

        if (v16)
        {
          v17 = sub_230DA41A0(v13, v12);
          if (v18)
          {
            v19 = *(v3 + 56) + 16 * v17;
            v20 = *v19 + 1;
            if (__OFADD__(*v19, 1))
            {
              goto LABEL_69;
            }

            v21 = *(v19 + 8);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v90[0] = v3;
            v23 = sub_230DA41A0(v13, v12);
            v25 = *(v3 + 16);
            v26 = (v24 & 1) == 0;
            v27 = __OFADD__(v25, v26);
            v28 = v25 + v26;
            if (v27)
            {
              goto LABEL_70;
            }

            v29 = v24;
            if (*(v3 + 24) >= v28)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v55 = v23;
                sub_230DBA320();
                v23 = v55;
                v47 = v15 + v21;
                if (v29)
                {
LABEL_26:
                  v48 = v23;

                  v3 = v90[0];
                  v49 = *(v90[0] + 56) + 16 * v48;
                  *v49 = v20;
                  *(v49 + 8) = v47;
                  goto LABEL_34;
                }

                goto LABEL_32;
              }
            }

            else
            {
              sub_230DB732C(v28, isUniquelyReferenced_nonNull_native);
              v23 = sub_230DA41A0(v13, v12);
              if ((v29 & 1) != (v30 & 1))
              {
                goto LABEL_72;
              }
            }

            v47 = v15 + v21;
            if (v29)
            {
              goto LABEL_26;
            }

LABEL_32:
            v3 = v90[0];
            *(v90[0] + 8 * (v23 >> 6) + 64) |= 1 << v23;
            v56 = (*(v3 + 48) + 16 * v23);
            *v56 = v13;
            v56[1] = v12;
            v57 = *(v3 + 56) + 16 * v23;
            *v57 = v20;
            *(v57 + 8) = v47;
            v58 = *(v3 + 16);
            v27 = __OFADD__(v58, 1);
            v54 = v58 + 1;
            if (v27)
            {
              goto LABEL_71;
            }

            goto LABEL_33;
          }
        }

        v37 = swift_isUniquelyReferenced_nonNull_native();
        v90[0] = v3;
        v38 = sub_230DA41A0(v13, v12);
        v40 = *(v3 + 16);
        v41 = (v39 & 1) == 0;
        v27 = __OFADD__(v40, v41);
        v42 = v40 + v41;
        if (v27)
        {
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          sub_230E69950();
          __break(1u);
          MEMORY[0x23191E910](i);

          __break(1u);
          return result;
        }

        v43 = v39;
        if (*(v3 + 24) >= v42)
        {
          if ((v37 & 1) == 0)
          {
            v50 = v38;
            sub_230DBA320();
            v38 = v50;
            if (v43)
            {
LABEL_23:
              v45 = v38;

              v3 = v90[0];
              v46 = *(v90[0] + 56) + 16 * v45;
              *v46 = 1;
              *(v46 + 8) = v15;
              goto LABEL_34;
            }

            goto LABEL_28;
          }
        }

        else
        {
          sub_230DB732C(v42, v37);
          v38 = sub_230DA41A0(v13, v12);
          if ((v43 & 1) != (v44 & 1))
          {
            goto LABEL_72;
          }
        }

        if (v43)
        {
          goto LABEL_23;
        }

LABEL_28:
        v3 = v90[0];
        *(v90[0] + 8 * (v38 >> 6) + 64) |= 1 << v38;
        v51 = (*(v3 + 48) + 16 * v38);
        *v51 = v13;
        v51[1] = v12;
        v52 = *(v3 + 56) + 16 * v38;
        *v52 = 1;
        *(v52 + 8) = v15;
        v53 = *(v3 + 16);
        v27 = __OFADD__(v53, 1);
        v54 = v53 + 1;
        if (v27)
        {
          goto LABEL_68;
        }

LABEL_33:
        *(v3 + 16) = v54;
        goto LABEL_34;
      }
    }

    sub_230D93514(&v91, v90);
    v31 = sub_230E68D60();
    v32 = sub_230E693F0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = v92;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v90[0] = v35;
      *v34 = 136315138;

      sub_230D93570(&v91);
      v36 = sub_230D7E620(v33, *(&v33 + 1), v90);

      *(v34 + 4) = v36;
      _os_log_impl(&dword_230D02000, v31, v32, "[MusicAggregator][generateGenreDistribution] Skipping session without genre: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x23191EAE0](v35, -1, -1);
      MEMORY[0x23191EAE0](v34, -1, -1);
    }

    else
    {

      sub_230D93570(&v91);
    }

LABEL_34:
    if (!i)
    {
      break;
    }

    v6 = (v6 + 168);
  }

  v5 = &OBJC_IVAR____TtC20ServicesIntelligence26ContextualContentRetrieval_logger;
LABEL_37:
  v59 = 0;
  v60 = 1 << *(v3 + 32);
  v61 = -1;
  if (v60 < 64)
  {
    v61 = ~(-1 << v60);
  }

  v62 = v61 & *(v3 + 64);
  v63 = (v60 + 63) >> 6;
  for (j = 0.0; v62; j = j + *(*(v3 + 56) + ((v65 << 10) | (16 * v66)) + 8))
  {
    v65 = v59;
LABEL_45:
    v66 = __clz(__rbit64(v62));
    v62 &= v62 - 1;
  }

  while (2)
  {
    v65 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      __break(1u);
      goto LABEL_66;
    }

    if (v65 < v63)
    {
      v62 = *(v3 + 64 + 8 * v65);
      ++v59;
      if (v62)
      {
        v59 = v65;
        goto LABEL_45;
      }

      continue;
    }

    break;
  }

  if (j <= 0.0)
  {
    goto LABEL_51;
  }

  v67 = *(v3 + 16);
  v68 = MEMORY[0x277D84F90];
  if (!v67)
  {
    v69 = MEMORY[0x277D84F90];
    goto LABEL_55;
  }

  v69 = sub_230E4B198(*(v3 + 16), 0);
  v70 = sub_230E67174(&v91, v69 + 4, v67, v3);

  sub_230D912FC();
  if (v70 == v67)
  {
LABEL_55:
    *&v91 = v69;
    sub_230D90560(&v91);
    i = v91;
    v75 = *(v91 + 16);
    if (!v75)
    {

      return MEMORY[0x277D84F90];
    }

    *&v91 = v68;
    sub_230D48FC8(0, v75, 0);
    v76 = 0;
    v77 = v91;
    v78 = (i + 56);
    v89 = i;
    while (v76 < *(i + 16))
    {
      v79 = v75;
      v81 = *(v78 - 3);
      v80 = *(v78 - 2);
      v82 = *(v78 - 1);
      v83 = *v78;
      *&v91 = v77;
      v84 = *(v77 + 16);
      v85 = *(v77 + 24);

      if (v84 >= v85 >> 1)
      {
        sub_230D48FC8((v85 > 1), v84 + 1, 1);
        v77 = v91;
      }

      *(v77 + 16) = v84 + 1;
      v86 = v77 + 40 * v84;
      *(v86 + 32) = v81;
      *(v86 + 40) = v80;
      *(v86 + 48) = round(v83 / j * 100.0) / 100.0;
      ++v76;
      *(v86 + 56) = v82;
      *(v86 + 64) = round(v83 * 100.0) / 100.0;
      v78 += 4;
      v75 = v79;
      i = v89;
      if (v79 == v76)
      {

        return v77;
      }
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  __break(1u);
LABEL_51:
  v71 = v88 + *v5;
  v72 = sub_230E68D60();
  v73 = sub_230E693F0();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&dword_230D02000, v72, v73, "[MusicAggregator][generateGenreDistribution] No valid genre data found", v74, 2u);
    MEMORY[0x23191EAE0](v74, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_230D935C4(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_230D45120(v2);
  }

  v3 = v2[2];
  v22[0] = (v2 + 4);
  v22[1] = v3;
  result = sub_230E69880();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 7;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[6 * i + 7];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*v13 >= v11)
          {
            break;
          }

          v14 = v13[3];
          v15 = v13[4];
          v16 = v13[5];
          v17 = *(v13 - 1);
          *(v13 + 3) = *(v13 - 3);
          v18 = *(v13 + 7);
          *(v13 + 5) = v17;
          *(v13 + 7) = *(v13 + 1);
          *(v13 - 3) = v14;
          *(v13 - 2) = v15;
          *(v13 - 1) = v16;
          *v13 = v11;
          *(v13 + 1) = v18;
          v13 -= 6;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 6;
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B3B8, &unk_230E6F738);
      v7 = sub_230E69270();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v20[0] = v7 + 32;
    v20[1] = v6;
    sub_230D938CC(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_230D93744(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t *a3, uint64_t *a4)
{
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = a2(v8);
  }

  v9 = *(v8 + 16);
  v34[0] = v8 + 32;
  v34[1] = v9;
  result = sub_230E69880();
  if (result >= v9)
  {
    if (v9 >= 2)
    {
      v14 = v8 + 96;
      v15 = -1;
      for (i = 1; i != v9; ++i)
      {
        v17 = v15;
        v18 = v14;
        do
        {
          if (*(v18 - 40) >= *(v18 + 24))
          {
            break;
          }

          v19 = (v18 - 64);
          v20 = *v18;
          v21 = *(v18 + 16);
          v22 = *(v18 + 48);
          v32 = *(v18 + 32);
          v33 = v22;
          v30 = v20;
          v31 = v21;
          v23 = *(v18 - 48);
          *v18 = *(v18 - 64);
          *(v18 + 16) = v23;
          v24 = *(v18 - 16);
          *(v18 + 32) = *(v18 - 32);
          *(v18 + 48) = v24;
          v25 = v33;
          v26 = v30;
          v27 = v31;
          v19[2] = v32;
          v19[3] = v25;
          *v19 = v26;
          v19[1] = v27;
          v18 -= 64;
        }

        while (!__CFADD__(v17++, 1));
        v14 += 64;
        --v15;
      }
    }
  }

  else
  {
    v11 = result;
    v12 = v9 >> 1;
    if (v9 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      v13 = sub_230E69270();
      *(v13 + 16) = v12;
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    *&v30 = v13 + 32;
    *(&v30 + 1) = v12;
    sub_230D93EB0(&v30, v29, v34, v11);
    *(v13 + 16) = 0;
  }

  *a1 = v8;
  return result;
}

uint64_t sub_230D938CC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v98 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v99 = *v98;
    if (!*v98)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_230D44FDC(v7);
      v7 = result;
    }

    v90 = (v7 + 16);
    v91 = *(v7 + 16);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = (v7 + 16 * v91);
        v93 = *v92;
        v94 = &v90[2 * v91];
        v95 = v94[1];
        sub_230D94454((*a3 + 48 * *v92), (*a3 + 48 * *v94), (*a3 + 48 * v95), v99);
        if (v4)
        {
        }

        if (v95 < v93)
        {
          goto LABEL_114;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_115;
        }

        *v92 = v93;
        v92[1] = v95;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_116;
        }

        v91 = *v90 - 1;
        result = memmove(v94, v94 + 2, 16 * v96);
        *v90 = v91;
        if (v91 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v97 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 48 * v6 + 24);
      v10 = *a3 + 48 * v8;
      v11 = *(v10 + 24);
      v12 = v8 + 2;
      v13 = (v10 + 120);
      v14 = v9;
      while (v5 != v12)
      {
        v15 = *v13;
        v13 += 6;
        v16 = v14 >= v15;
        ++v12;
        v14 = v15;
        if ((((v11 < v9) ^ v16) & 1) == 0)
        {
          v6 = v12 - 1;
          if (v11 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v11 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v17 = 48 * v6 - 24;
        v18 = 48 * v8 + 32;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v29 + v18);
            v22 = *(v29 + v18 - 32);
            v23 = v29 + v17;
            v24 = *(v21 - 2);
            v25 = *(v21 - 1);
            v26 = *v21;
            v27 = *(v23 + 8);
            v28 = *(v23 - 8);
            *(v21 - 2) = *(v23 - 24);
            *(v21 - 1) = v28;
            *v21 = v27;
            *(v23 - 24) = v22;
            *(v23 - 8) = v24;
            *v23 = v25;
            *(v23 + 8) = v26;
          }

          ++v20;
          v17 -= 48;
          v18 += 48;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_230D44FF0(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v43 = *(v7 + 16);
    v42 = *(v7 + 24);
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = sub_230D44FF0((v42 > 1), v43 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v44;
    v45 = v7 + 32;
    v46 = (v7 + 32 + 16 * v43);
    *v46 = v8;
    v46[1] = v6;
    v99 = *v98;
    if (!*v98)
    {
      goto LABEL_127;
    }

    if (v43)
    {
      while (1)
      {
        v47 = v44 - 1;
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v48 = *(v7 + 32);
          v49 = *(v7 + 40);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_57:
          if (v51)
          {
            goto LABEL_104;
          }

          v64 = (v7 + 16 * v44);
          v66 = *v64;
          v65 = v64[1];
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_106;
          }

          v70 = (v45 + 16 * v47);
          v72 = *v70;
          v71 = v70[1];
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_111;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v44 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v44 < 2)
        {
          goto LABEL_112;
        }

        v74 = (v7 + 16 * v44);
        v76 = *v74;
        v75 = v74[1];
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_72:
        if (v69)
        {
          goto LABEL_108;
        }

        v77 = (v45 + 16 * v47);
        v79 = *v77;
        v78 = v77[1];
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_110;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v47 - 1 >= v44)
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

        v85 = (v45 + 16 * (v47 - 1));
        v86 = *v85;
        v87 = (v45 + 16 * v47);
        v88 = v87[1];
        sub_230D94454((*a3 + 48 * *v85), (*a3 + 48 * *v87), (*a3 + 48 * v88), v99);
        if (v4)
        {
        }

        if (v88 < v86)
        {
          goto LABEL_99;
        }

        if (v47 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v85 = v86;
        v85[1] = v88;
        v89 = *(v7 + 16);
        if (v47 >= v89)
        {
          goto LABEL_101;
        }

        v44 = v89 - 1;
        result = memmove((v45 + 16 * v47), v87 + 2, 16 * (v89 - 1 - v47));
        *(v7 + 16) = v89 - 1;
        if (v89 <= 2)
        {
          goto LABEL_3;
        }
      }

      v52 = v45 + 16 * v44;
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_102;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_103;
      }

      v59 = (v7 + 16 * v44);
      v61 = *v59;
      v60 = v59[1];
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_105;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_107;
      }

      if (v63 >= v55)
      {
        v81 = (v45 + 16 * v47);
        v83 = *v81;
        v82 = v81[1];
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_113;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v97;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v30 = *a3;
  v31 = *a3 + 48 * v6 - 48;
  v32 = v8 - v6;
LABEL_30:
  v33 = *(v30 + 48 * v6 + 24);
  v34 = v32;
  v35 = v31;
  while (1)
  {
    if (*(v35 + 24) >= v33)
    {
LABEL_29:
      ++v6;
      v31 += 48;
      --v32;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v30)
    {
      break;
    }

    v36 = *(v35 + 64);
    v37 = *(v35 + 80);
    v38 = *v35;
    v40 = *(v35 + 32);
    v39 = *(v35 + 48);
    *(v35 + 64) = *(v35 + 16);
    *(v35 + 80) = v40;
    *v35 = v39;
    *(v35 + 16) = v36;
    *(v35 + 24) = v33;
    *(v35 + 32) = v37;
    *(v35 + 48) = v38;
    v35 -= 48;
    if (__CFADD__(v34++, 1))
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

uint64_t sub_230D93EB0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v99 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v99;
    if (!*v99)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_230D44FDC(v8);
      v8 = result;
    }

    v91 = (v8 + 16);
    v92 = *(v8 + 16);
    if (v92 >= 2)
    {
      while (*a3)
      {
        v93 = (v8 + 16 * v92);
        v94 = *v93;
        v95 = &v91[2 * v92];
        v96 = v95[1];
        sub_230D94690((*a3 + (*v93 << 6)), (*a3 + (*v95 << 6)), (*a3 + (v96 << 6)), v5);
        if (v4)
        {
        }

        if (v96 < v94)
        {
          goto LABEL_114;
        }

        if (v92 - 2 >= *v91)
        {
          goto LABEL_115;
        }

        *v93 = v94;
        v93[1] = v96;
        v97 = *v91 - v92;
        if (*v91 < v92)
        {
          goto LABEL_116;
        }

        v92 = *v91 - 1;
        result = memmove(v95, v95 + 2, 16 * v97);
        *v91 = v92;
        if (v92 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v98 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + (v7 << 6) + 24);
      v11 = v9 << 6;
      v12 = *a3 + (v9 << 6);
      v13 = *(v12 + 24);
      v14 = v9 + 2;
      v15 = (v12 + 152);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 8;
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
        v19 = (v7 << 6) - 64;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v31 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v31 + v11);
            v23 = (v31 + v19);
            v25 = v22[2];
            v24 = v22[3];
            v27 = *v22;
            v26 = v22[1];
            v28 = v23[3];
            v30 = *v23;
            v29 = v23[1];
            v22[2] = v23[2];
            v22[3] = v28;
            *v22 = v30;
            v22[1] = v29;
            *v23 = v27;
            v23[1] = v26;
            v23[2] = v25;
            v23[3] = v24;
          }

          ++v21;
          v19 -= 64;
          v11 += 64;
        }

        while (v21 < v20);
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
      result = sub_230D44FF0(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v45 = *(v8 + 24);
    v46 = v5 + 1;
    if (v5 >= v45 >> 1)
    {
      result = sub_230D44FF0((v45 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v46;
    v47 = v8 + 32;
    v48 = (v8 + 32 + 16 * v5);
    *v48 = v9;
    v48[1] = v7;
    v100 = *v99;
    if (!*v99)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v49 = *(v8 + 32);
          v50 = *(v8 + 40);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_57:
          if (v52)
          {
            goto LABEL_104;
          }

          v65 = (v8 + 16 * v46);
          v67 = *v65;
          v66 = v65[1];
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_106;
          }

          v71 = (v47 + 16 * v5);
          v73 = *v71;
          v72 = v71[1];
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_111;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v5 = v46 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v46 < 2)
        {
          goto LABEL_112;
        }

        v75 = (v8 + 16 * v46);
        v77 = *v75;
        v76 = v75[1];
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_72:
        if (v70)
        {
          goto LABEL_108;
        }

        v78 = (v47 + 16 * v5);
        v80 = *v78;
        v79 = v78[1];
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_110;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v46)
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

        v86 = (v47 + 16 * (v5 - 1));
        v87 = *v86;
        v88 = (v47 + 16 * v5);
        v89 = v88[1];
        sub_230D94690((*a3 + (*v86 << 6)), (*a3 + (*v88 << 6)), (*a3 + (v89 << 6)), v100);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *(v8 + 16);
        if (v5 >= v90)
        {
          goto LABEL_101;
        }

        v46 = v90 - 1;
        result = memmove((v47 + 16 * v5), v88 + 2, 16 * (v90 - 1 - v5));
        *(v8 + 16) = v90 - 1;
        if (v90 <= 2)
        {
          goto LABEL_3;
        }
      }

      v53 = v47 + 16 * v46;
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_102;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_103;
      }

      v60 = (v8 + 16 * v46);
      v62 = *v60;
      v61 = v60[1];
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_105;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_107;
      }

      if (v64 >= v56)
      {
        v82 = (v47 + 16 * v5);
        v84 = *v82;
        v83 = v82[1];
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_113;
        }

        if (v51 < v85)
        {
          v5 = v46 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v98;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v32 = *a3;
  v33 = *a3 + (v7 << 6);
  v34 = v9 - v7;
LABEL_30:
  v35 = v34;
  v36 = v33;
  while (1)
  {
    if (*(v36 - 5) >= v36[3])
    {
LABEL_29:
      ++v7;
      v33 += 64;
      --v34;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v32)
    {
      break;
    }

    v37 = (v36 - 8);
    v39 = *(v36 + 2);
    v38 = *(v36 + 3);
    v41 = *v36;
    v40 = *(v36 + 1);
    v42 = *(v36 - 3);
    *v36 = *(v36 - 4);
    *(v36 + 1) = v42;
    v43 = *(v36 - 1);
    *(v36 + 2) = *(v36 - 2);
    *(v36 + 3) = v43;
    *v37 = v41;
    v37[1] = v40;
    v36 -= 8;
    v37[2] = v39;
    v37[3] = v38;
    if (__CFADD__(v35++, 1))
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

uint64_t sub_230D94454(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 48;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 48;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[6 * v9] <= a4)
    {
      memmove(a4, __dst, 48 * v9);
    }

    v12 = &v4[6 * v9];
    if (v8 < 48)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[3] < v6[3])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 6;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 6;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 6;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 2);
    *(v7 + 1) = *(v13 + 1);
    *(v7 + 2) = v16;
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[6 * v11] <= a4)
  {
    memmove(a4, __src, 48 * v11);
  }

  v12 = &v4[6 * v11];
  if (v10 >= 48 && v6 > v7)
  {
LABEL_20:
    v5 -= 6;
    do
    {
      v17 = v5 + 6;
      if (*(v6 - 3) < *(v12 - 3))
      {
        v21 = v6 - 6;
        if (v17 != v6)
        {
          v22 = *v21;
          v23 = *(v6 - 1);
          *(v5 + 1) = *(v6 - 2);
          *(v5 + 2) = v23;
          *v5 = v22;
        }

        if (v12 <= v4 || (v6 -= 6, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v18 = v12 - 6;
      if (v17 != v12)
      {
        v19 = *v18;
        v20 = *(v12 - 1);
        *(v5 + 1) = *(v12 - 2);
        *(v5 + 2) = v20;
        *v5 = v19;
      }

      v5 -= 6;
      v12 -= 6;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v24 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v25 = (v24 >> 3) + (v24 >> 63);
  if (v6 != v4 || v6 >= &v4[6 * v25])
  {
    memmove(v6, v4, 48 * v25);
  }

  return 1;
}

uint64_t sub_230D94690(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 63;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 6;
  v11 = a3 - __src;
  v12 = a3 - __src + 63;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 6;
  if (v10 < v12 >> 6)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, v10 << 6);
    }

    v14 = &v4[8 * v10];
    if (v8 < 64)
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

      if (v4[3] < v6[3])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
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

    v15 = v6;
    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *v15;
    v18 = *(v15 + 1);
    v19 = *(v15 + 3);
    *(v7 + 2) = *(v15 + 2);
    *(v7 + 3) = v19;
    *v7 = v17;
    *(v7 + 1) = v18;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, v13 << 6);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 64 && v6 > v7)
  {
LABEL_24:
    v5 -= 8;
    do
    {
      v20 = v5 + 8;
      if (*(v6 - 5) < *(v14 - 5))
      {
        v25 = v6 - 8;
        if (v20 != v6)
        {
          v26 = *v25;
          v27 = *(v6 - 3);
          v28 = *(v6 - 1);
          *(v5 + 2) = *(v6 - 2);
          *(v5 + 3) = v28;
          *v5 = v26;
          *(v5 + 1) = v27;
        }

        if (v14 <= v4 || (v6 -= 8, v25 <= v7))
        {
          v6 = v25;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v21 = v14 - 8;
      if (v20 != v14)
      {
        v22 = *v21;
        v23 = *(v14 - 3);
        v24 = *(v14 - 1);
        *(v5 + 2) = *(v14 - 2);
        *(v5 + 3) = v24;
        *v5 = v22;
        *(v5 + 1) = v23;
      }

      v5 -= 8;
      v14 -= 8;
    }

    while (v21 > v4);
    v14 = v21;
  }

LABEL_35:
  v29 = v14 - v4 + (v14 - v4 < 0 ? 0x3FuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v29 & 0xFFFFFFFFFFFFFFC0)))
  {
    memmove(v6, v4, v29 >> 6 << 6);
  }

  return 1;
}

void sub_230D948AC(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a2;
  if ((a1[8] & 1) == 0)
  {
    v11 = *a1;
    v12 = *(*a1 + 16);

    if (v12)
    {
      v13 = 0;
      v14 = v11 + 32;
      v3 = MEMORY[0x277D84F90];
      do
      {
        v15 = (v14 + 168 * v13);
        v16 = v13;
        while (1)
        {
          if (v16 >= *(v11 + 16))
          {
            __break(1u);
            goto LABEL_37;
          }

          v17 = *v15;
          v18 = v15[2];
          v59 = v15[1];
          v60 = v18;
          v58 = v17;
          v19 = v15[3];
          v20 = v15[4];
          v21 = v15[6];
          v63 = v15[5];
          v64 = v21;
          v61 = v19;
          v62 = v20;
          v22 = v15[7];
          v23 = v15[8];
          v24 = v15[9];
          v68 = *(v15 + 20);
          v66 = v23;
          v67 = v24;
          v65 = v22;
          if (v60 <= 1u)
          {
            if (v60)
            {
              break;
            }
          }

          v25 = sub_230E698C0();
          sub_230D93514(&v58, v57);

          if (v25)
          {
            goto LABEL_15;
          }

          ++v16;
          sub_230D93570(&v58);
          v15 = (v15 + 168);
          if (v12 == v16)
          {
            goto LABEL_32;
          }
        }

        sub_230D93514(&v58, v57);

LABEL_15:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v69 = v3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_230D48F00(0, *(v3 + 16) + 1, 1);
          v3 = v69;
        }

        v28 = *(v3 + 16);
        v27 = *(v3 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_230D48F00((v27 > 1), v28 + 1, 1);
          v3 = v69;
        }

        v13 = v16 + 1;
        *(v3 + 16) = v28 + 1;
        v29 = v3 + 168 * v28;
        v30 = v58;
        v31 = v60;
        *(v29 + 48) = v59;
        *(v29 + 64) = v31;
        *(v29 + 32) = v30;
        v32 = v61;
        v33 = v62;
        v34 = v64;
        *(v29 + 112) = v63;
        *(v29 + 128) = v34;
        *(v29 + 80) = v32;
        *(v29 + 96) = v33;
        v35 = v65;
        v36 = v66;
        v37 = v67;
        *(v29 + 192) = v68;
        *(v29 + 160) = v36;
        *(v29 + 176) = v37;
        *(v29 + 144) = v35;
        v14 = v11 + 32;
      }

      while (v12 - 1 != v16);
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
    }

LABEL_32:

    v2 = a2;
    v4 = *(v3 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_33:

    v53 = sub_230E68D60();
    v54 = sub_230E693F0();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_230D02000, v53, v54, "[PodcastAggregator][generatePodcastInsights] No podcast sessions found", v55, 2u);
      MEMORY[0x23191EAE0](v55, -1, -1);
    }

    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *v2 = 0u;
    return;
  }

  v3 = MEMORY[0x277D84F90];
  v4 = *(MEMORY[0x277D84F90] + 16);
  if (!v4)
  {
    goto LABEL_33;
  }

LABEL_3:

  v5 = sub_230E68D60();
  v6 = sub_230E693E0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v3 + 16);

    _os_log_impl(&dword_230D02000, v5, v6, "[PodcastAggregator][generatePodcastInsights] Processing %ld podcast sessions", v7, 0xCu);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  else
  {
  }

  v38 = *(v3 + 16);
  if (v38 > v4 - 1)
  {
    if (v4 == 1)
    {
      v39 = 0;
      v40 = 0.0;
    }

    else
    {
      v39 = v4 & 0x7FFFFFFFFFFFFFFELL;
      v41 = (v3 + 240);
      v40 = 0.0;
      v42 = v4 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v8.n128_f64[0] = *v41;
        v40 = v40 + *(v41 - 21) + *v41;
        v41 += 42;
        v42 -= 2;
      }

      while (v42);
      if (v4 == v39)
      {
        goto LABEL_30;
      }
    }

    v43 = v4 - v39;
    v44 = (v3 + 168 * v39 + 72);
    do
    {
      v45 = *v44;
      v44 += 21;
      v40 = v40 + v45;
      --v43;
    }

    while (v43);
LABEL_30:
    v46 = round(v40 * 100.0) / 100.0;
    v47 = round(v46 / v38 * 100.0);
    v48 = v47 / 100.0;
    sub_230DA1E8C(v3, v47, 100.0, v8, v9, v10);
    v50 = v49;
    v51 = sub_230D94D64(v3);
    v52 = sub_230D95438(v3);

    *v2 = v38;
    *(v2 + 8) = v46;
    *(v2 + 16) = v48;
    *(v2 + 24) = v50;
    *(v2 + 32) = v51;
    *(v2 + 40) = v52;
    return;
  }

LABEL_37:
  __break(1u);
}

uint64_t sub_230D94D64(uint64_t a1)
{
  v2 = v1;
  v4 = sub_230D0E604(MEMORY[0x277D84F90]);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 32);
    v7 = v5 - 1;
    v91 = v2;
    while (1)
    {
      v8 = v6[9];
      v102 = v6[8];
      v103 = v8;
      v104 = *(v6 + 20);
      v9 = v6[5];
      v98 = v6[4];
      v99 = v9;
      v10 = v6[7];
      v100 = v6[6];
      v101 = v10;
      v11 = v6[1];
      v94 = *v6;
      v95 = v11;
      v12 = v6[3];
      v96 = v6[2];
      v97 = v12;
      v13 = v99;
      if (!v99)
      {
        goto LABEL_12;
      }

      v14 = *(&v98 + 1);
      v15 = BYTE7(v99) & 0xF;
      if ((v99 & 0x2000000000000000) == 0)
      {
        v15 = *(&v98 + 1) & 0xFFFFFFFFFFFFLL;
      }

      if (!v15)
      {
LABEL_12:
        sub_230D93514(&v94, v93);
        v25 = sub_230E68D60();
        v26 = sub_230E693F0();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = v95;
          v28 = swift_slowAlloc();
          v29 = v4;
          v30 = swift_slowAlloc();
          v93[0] = v30;
          *v28 = 136315138;

          sub_230D93570(&v94);
          v31 = sub_230D7E620(v27, *(&v27 + 1), v93);

          *(v28 + 4) = v31;
          _os_log_impl(&dword_230D02000, v25, v26, "[PodcastAggregator][generateTopChannels] Skipping session without show name: %s", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v30);
          v32 = v30;
          v4 = v29;
          MEMORY[0x23191EAE0](v32, -1, -1);
          MEMORY[0x23191EAE0](v28, -1, -1);

          if (!v7)
          {
            break;
          }

          goto LABEL_42;
        }

        goto LABEL_24;
      }

      v16 = *(&v103 + 1);
      v17 = v104;
      v18 = *(&v96 + 1);
      if (!v4[2])
      {
        sub_230D93514(&v94, v93);

LABEL_17:

        v33 = v4;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v93[0] = v33;
        v35 = sub_230DA41A0(v14, v13);
        v37 = *(v33 + 16);
        v38 = (v36 & 1) == 0;
        v39 = __OFADD__(v37, v38);
        v40 = v37 + v38;
        if (v39)
        {
          goto LABEL_60;
        }

        v41 = v36;
        if (*(v33 + 24) < v40)
        {
          sub_230DB7628(v40, isUniquelyReferenced_nonNull_native);
          v35 = sub_230DA41A0(v14, v13);
          if ((v41 & 1) != (v42 & 1))
          {
            goto LABEL_65;
          }

          goto LABEL_22;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_22:
          if (v41)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v61 = v16;
          v62 = v35;
          sub_230DBA4D4();
          v35 = v62;
          v16 = v61;
          if (v41)
          {
LABEL_23:
            v43 = v16;
            v44 = v35;

            v4 = v93[0];
            v45 = *(v93[0] + 56) + 32 * v44;
            v46 = *(v45 + 24);
            *v45 = 1;
            *(v45 + 8) = v18;
            *(v45 + 16) = v43;
            *(v45 + 24) = v17;

LABEL_24:
            sub_230D93570(&v94);
            if (!v7)
            {
              break;
            }

            goto LABEL_42;
          }
        }

        v4 = v93[0];
        *(v93[0] + 8 * (v35 >> 6) + 64) |= 1 << v35;
        v63 = (v4[6] + 16 * v35);
        *v63 = v14;
        v63[1] = v13;
        v64 = v4[7] + 32 * v35;
        *v64 = 1;
        *(v64 + 8) = v18;
        *(v64 + 16) = v16;
        *(v64 + 24) = v17;
        sub_230D93570(&v94);
        v65 = v4[2];
        v39 = __OFADD__(v65, 1);
        v66 = v65 + 1;
        if (v39)
        {
          goto LABEL_61;
        }

        v4[2] = v66;
        if (!v7)
        {
          break;
        }

        goto LABEL_42;
      }

      sub_230D93514(&v94, v93);

      v19 = sub_230DA41A0(v14, v13);
      if ((v20 & 1) == 0)
      {
        goto LABEL_17;
      }

      v21 = v4[7] + 32 * v19;
      v2 = *v21 + 1;
      if (__OFADD__(*v21, 1))
      {
        goto LABEL_62;
      }

      v22 = *(v21 + 24);
      v23 = *(v21 + 8);
      if (v22)
      {
        v16 = *(v21 + 16);
        v24 = *(v21 + 24);
      }

      else
      {

        v22 = v17;
      }

      sub_230D93570(&v94);
      v47 = v4;
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v93[0] = v47;
      v49 = sub_230DA41A0(v14, v13);
      v51 = *(v47 + 16);
      v52 = (v50 & 1) == 0;
      v39 = __OFADD__(v51, v52);
      v53 = v51 + v52;
      if (v39)
      {
        goto LABEL_63;
      }

      v54 = v50;
      if (*(v47 + 24) >= v53)
      {
        if ((v48 & 1) == 0)
        {
          v67 = v16;
          v68 = v49;
          sub_230DBA4D4();
          v49 = v68;
          v16 = v67;
          v56 = v18 + v23;
          if (v54)
          {
LABEL_33:
            v57 = v16;
            v58 = v49;

            v4 = v93[0];
            v59 = *(v93[0] + 56) + 32 * v58;
            v60 = *(v59 + 24);
            *v59 = v2;
            *(v59 + 8) = v56;
            *(v59 + 16) = v57;
            *(v59 + 24) = v22;

            v2 = v91;
            if (!v7)
            {
              break;
            }

            goto LABEL_42;
          }

          goto LABEL_40;
        }
      }

      else
      {
        sub_230DB7628(v53, v48);
        v49 = sub_230DA41A0(v14, v13);
        if ((v54 & 1) != (v55 & 1))
        {
          goto LABEL_65;
        }
      }

      v56 = v18 + v23;
      if (v54)
      {
        goto LABEL_33;
      }

LABEL_40:
      v4 = v93[0];
      *(v93[0] + 8 * (v49 >> 6) + 64) |= 1 << v49;
      v69 = (v4[6] + 16 * v49);
      *v69 = v14;
      v69[1] = v13;
      v70 = v4[7] + 32 * v49;
      *v70 = v2;
      *(v70 + 8) = v56;
      *(v70 + 16) = v16;
      *(v70 + 24) = v22;
      v71 = v4[2];
      v39 = __OFADD__(v71, 1);
      v72 = v71 + 1;
      if (v39)
      {
        goto LABEL_64;
      }

      v4[2] = v72;
      v2 = v91;
      if (!v7)
      {
        break;
      }

LABEL_42:
      --v7;
      v6 = (v6 + 168);
    }
  }

  v73 = v4[2];
  v74 = v4;
  v75 = MEMORY[0x277D84F90];
  if (v73)
  {
    v76 = sub_230E4B258(v73, 0);
    v77 = sub_230E68474(&v94, v76 + 4, v73, v74);

    sub_230D912FC();
    if (v77 == v73)
    {
      goto LABEL_47;
    }

    __break(1u);
  }

  v76 = v75;
LABEL_47:
  *&v94 = v76;
  v2 = 0;
  sub_230D95B84(&v94);
  v78 = v94;
  v79 = *(v94 + 16);
  if (v79 >= 5)
  {
    v80 = 5;
  }

  else
  {
    v80 = *(v94 + 16);
  }

  if (v79)
  {
    *&v94 = v75;
    sub_230D48FE8(0, v80, 0);
    v81 = v94;
    v82 = (v78 + 72);
    while (v80)
    {
      v84 = *(v82 - 5);
      v83 = *(v82 - 4);
      v92 = *(v82 - 3);
      v85 = *(v82 - 2);
      v87 = *(v82 - 1);
      v86 = *v82;
      *&v94 = v81;
      v88 = *(v81 + 16);
      v2 = *(v81 + 24);

      if (v88 >= v2 >> 1)
      {
        sub_230D48FE8((v2 > 1), v88 + 1, 1);
        v81 = v94;
      }

      *(v81 + 16) = v88 + 1;
      v89 = v81 + 48 * v88;
      *(v89 + 32) = v84;
      *(v89 + 40) = v83;
      *(v89 + 48) = v87;
      *(v89 + 56) = v86;
      *(v89 + 64) = v92;
      *(v89 + 72) = round(v85 * 100.0) / 100.0;
      v82 += 6;
      if (!--v80)
      {

        return v81;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    sub_230E69950();
    __break(1u);
    MEMORY[0x23191E910](v2);

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_230D95438(uint64_t a1)
{
  v2 = sub_230D0E738(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    for (i = v3 - 1; ; --i)
    {
      v6 = *(v4 + 144);
      v100 = *(v4 + 128);
      v101 = v6;
      v102 = *(v4 + 160);
      v7 = *(v4 + 80);
      v96 = *(v4 + 64);
      v97 = v7;
      v8 = *(v4 + 112);
      v98 = *(v4 + 96);
      v99 = v8;
      v9 = *(v4 + 16);
      v93[0] = *v4;
      v93[1] = v9;
      v10 = *(v4 + 48);
      v94 = *(v4 + 32);
      v95 = v10;
      v11 = v97;
      v12 = v9;
      if (!v97)
      {
        goto LABEL_12;
      }

      v13 = *(&v96 + 1);
      v14 = BYTE7(v97) & 0xF;
      if ((v97 & 0x2000000000000000) == 0)
      {
        v14 = *(&v96 + 1) & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        v15 = *(&v99 + 1);
        v16 = v100;
        v17 = *(&v94 + 1);
        if (!v2[2])
        {
          sub_230D93514(v93, v92);

LABEL_16:
          v88 = i;
          i = v16;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v92[0] = v2;
          v31 = sub_230DA41A0(v12, *(&v12 + 1));
          v33 = v2;
          v34 = v2[2];
          v35 = (v32 & 1) == 0;
          v36 = __OFADD__(v34, v35);
          v37 = v34 + v35;
          if (v36)
          {
            goto LABEL_57;
          }

          v38 = v32;
          if (v33[3] >= v37)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_21;
            }

            v63 = v31;
            sub_230DBA664();
            v31 = v63;
            v40 = v15;
            if ((v38 & 1) == 0)
            {
              goto LABEL_35;
            }

LABEL_22:
            v41 = v31;

            v2 = v92[0];
            v42 = *(v92[0] + 56) + 48 * v41;
            v43 = *(v42 + 24);
            v44 = *(v42 + 40);
            *v42 = 1;
            *(v42 + 8) = v17;
            *(v42 + 16) = v13;
            *(v42 + 24) = v11;
            *(v42 + 32) = v40;
            *(v42 + 40) = i;

            sub_230D93570(v93);
          }

          else
          {
            sub_230DB7904(v37, isUniquelyReferenced_nonNull_native);
            v31 = sub_230DA41A0(v12, *(&v12 + 1));
            if ((v38 & 1) != (v39 & 1))
            {
              goto LABEL_62;
            }

LABEL_21:
            v40 = v15;
            if (v38)
            {
              goto LABEL_22;
            }

LABEL_35:
            v2 = v92[0];
            *(v92[0] + 8 * (v31 >> 6) + 64) |= 1 << v31;
            *(v2[6] + 16 * v31) = v12;
            v64 = v2[7] + 48 * v31;
            *v64 = 1;
            *(v64 + 8) = v17;
            *(v64 + 16) = v13;
            *(v64 + 24) = v11;
            *(v64 + 32) = v40;
            *(v64 + 40) = i;
            sub_230D93570(v93);
            v65 = v2[2];
            v36 = __OFADD__(v65, 1);
            v66 = v65 + 1;
            if (v36)
            {
              goto LABEL_58;
            }

            v2[2] = v66;
          }

          i = v88;
          goto LABEL_38;
        }

        sub_230D93514(v93, v92);

        v18 = sub_230DA41A0(v12, *(&v12 + 1));
        if ((v19 & 1) == 0)
        {
          goto LABEL_16;
        }

        v20 = v18;

        v21 = v2[7] + 48 * v20;
        v22 = *v21 + 1;
        if (__OFADD__(*v21, 1))
        {
          goto LABEL_59;
        }

        v23 = *(v21 + 24);
        v86 = *(v21 + 16);
        v24 = *(v21 + 8);
        if (*(v21 + 40))
        {
          v15 = *(v21 + 32);
          v87 = *(v21 + 40);
        }

        else
        {
          v87 = v16;
        }

        sub_230D93570(v93);
        v45 = swift_isUniquelyReferenced_nonNull_native();
        v92[0] = v2;
        v46 = sub_230DA41A0(v12, *(&v12 + 1));
        v48 = v2;
        v49 = v2[2];
        v50 = (v47 & 1) == 0;
        v36 = __OFADD__(v49, v50);
        v51 = v49 + v50;
        if (v36)
        {
          goto LABEL_60;
        }

        v52 = v47;
        if (v48[3] >= v51)
        {
          if ((v45 & 1) == 0)
          {
            v67 = v46;
            sub_230DBA664();
            v46 = v67;
          }
        }

        else
        {
          sub_230DB7904(v51, v45);
          v46 = sub_230DA41A0(v12, *(&v12 + 1));
          if ((v52 & 1) != (v53 & 1))
          {
            goto LABEL_62;
          }
        }

        v54 = v15;
        v55 = v17 + v24;
        if (v52)
        {
          v56 = v46;

          v2 = v92[0];
          v57 = *(v92[0] + 56) + 48 * v56;
          v58 = *(v57 + 24);
          v59 = *(v57 + 40);
          *v57 = v22;
          *(v57 + 8) = v55;
          *(v57 + 16) = v86;
          *(v57 + 24) = v23;
          *(v57 + 32) = v54;
          *(v57 + 40) = v87;
        }

        else
        {
          v2 = v92[0];
          *(v92[0] + 8 * (v46 >> 6) + 64) |= 1 << v46;
          *(v2[6] + 16 * v46) = v12;
          v60 = v2[7] + 48 * v46;
          *v60 = v22;
          *(v60 + 8) = v55;
          *(v60 + 16) = v86;
          *(v60 + 24) = v23;
          *(v60 + 32) = v15;
          *(v60 + 40) = v87;
          v61 = v2[2];
          v36 = __OFADD__(v61, 1);
          v62 = v61 + 1;
          if (v36)
          {
            goto LABEL_61;
          }

          v2[2] = v62;
        }
      }

      else
      {
LABEL_12:
        sub_230D93514(v93, v92);
        v25 = sub_230E68D60();
        v26 = sub_230E693F0();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v92[0] = v28;
          *v27 = 136315138;

          sub_230D93570(v93);
          v29 = sub_230D7E620(v12, *(&v12 + 1), v92);

          *(v27 + 4) = v29;
          _os_log_impl(&dword_230D02000, v25, v26, "[PodcastAggregator][generateTopEpisodes] Skipping session without show name: %s", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v28);
          MEMORY[0x23191EAE0](v28, -1, -1);
          MEMORY[0x23191EAE0](v27, -1, -1);
        }

        else
        {

          sub_230D93570(v93);
        }
      }

LABEL_38:
      if (!i)
      {
        break;
      }

      v4 += 168;
    }
  }

  v68 = v2[2];
  v69 = v2;
  v70 = MEMORY[0x277D84F90];
  if (v68)
  {
    v71 = sub_230E4B2F4(v68, 0);
    v72 = sub_230E68470(v93, v71 + 4, v68, v69);

    sub_230D912FC();
    if (v72 == v68)
    {
      goto LABEL_44;
    }

    __break(1u);
  }

  v71 = v70;
LABEL_44:
  *&v93[0] = v71;
  i = 0;
  sub_230D95D04(v93);
  v73 = *&v93[0];
  v74 = *(*&v93[0] + 16);
  if (v74 >= 5)
  {
    v75 = 5;
  }

  else
  {
    v75 = *(*&v93[0] + 16);
  }

  if (v74)
  {
    *&v93[0] = v70;
    sub_230D49020(0, v75, 0);
    v76 = *&v93[0];
    v77 = (v73 + 48);
    while (v75)
    {
      v78 = *(v77 - 1);
      v90 = *(v77 - 2);
      v91 = *v77;
      v79 = v77[1];
      v80 = *(v77 + 3);
      v89 = *(v77 + 2);
      i = *(v77 + 4);
      v81 = *(v77 + 5);
      v82 = *(v76 + 16);
      v83 = *(v76 + 24);
      *&v93[0] = v76;

      if (v82 >= v83 >> 1)
      {
        sub_230D49020((v83 > 1), v82 + 1, 1);
        v76 = *&v93[0];
      }

      *(v76 + 16) = v82 + 1;
      v84 = v76 + (v82 << 6);
      *(v84 + 32) = v90;
      *(v84 + 40) = v78;
      *(v84 + 48) = i;
      *(v84 + 56) = v81;
      *(v84 + 64) = v89;
      *(v84 + 72) = v80;
      *(v84 + 80) = v91;
      *(v84 + 88) = round(v79 * 100.0) / 100.0;
      v77 += 8;
      if (!--v75)
      {

        return v76;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    sub_230E69950();
    __break(1u);
    MEMORY[0x23191E910](i);

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_230D95B84(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_230D4515C(v2);
  }

  v3 = v2[2];
  v22[0] = (v2 + 4);
  v22[1] = v3;
  result = sub_230E69880();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 7;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[6 * i + 7];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*v13 >= v11)
          {
            break;
          }

          v14 = v13[3];
          v15 = v13[4];
          v16 = v13[5];
          v17 = *(v13 - 1);
          *(v13 + 3) = *(v13 - 3);
          v18 = *(v13 + 7);
          *(v13 + 5) = v17;
          *(v13 + 7) = *(v13 + 1);
          *(v13 - 3) = v14;
          *(v13 - 2) = v15;
          *(v13 - 1) = v16;
          *v13 = v11;
          *(v13 + 1) = v18;
          v13 -= 6;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 6;
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B368, &qword_230E6F6E8);
      v7 = sub_230E69270();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v20[0] = v7 + 32;
    v20[1] = v6;
    sub_230D938CC(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_230D95D04(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_230D45170(v2);
  }

  v3 = v2[2];
  v28[0] = (v2 + 4);
  v28[1] = v3;
  result = sub_230E69880();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 12);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*(v12 - 5) >= v12[3])
          {
            break;
          }

          v13 = v12 - 8;
          v14 = *v12;
          v15 = *(v12 + 1);
          v16 = *(v12 + 3);
          v26 = *(v12 + 2);
          v27 = v16;
          v24 = v14;
          v25 = v15;
          v17 = *(v12 - 3);
          *v12 = *(v12 - 4);
          *(v12 + 1) = v17;
          v18 = *(v12 - 1);
          *(v12 + 2) = *(v12 - 2);
          *(v12 + 3) = v18;
          v19 = v27;
          v20 = v24;
          v21 = v25;
          *(v13 + 2) = v26;
          *(v13 + 3) = v19;
          *v13 = v20;
          *(v13 + 1) = v21;
          v12 -= 8;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 8;
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B350, &qword_230E6F6D0);
      v7 = sub_230E69270();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    *&v24 = v7 + 32;
    *(&v24 + 1) = v6;
    sub_230D93EB0(&v24, v23, v28, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void sub_230D95E7C(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a2;
  if ((a1[8] & 1) == 0)
  {
    v11 = *a1;
    v12 = *(*a1 + 16);

    if (v12)
    {
      v13 = 0;
      v14 = v11 + 32;
      v3 = MEMORY[0x277D84F90];
      do
      {
        v15 = (v14 + 168 * v13);
        v16 = v13;
        while (1)
        {
          if (v16 >= *(v11 + 16))
          {
            __break(1u);
            goto LABEL_37;
          }

          v17 = *v15;
          v18 = v15[2];
          v58 = v15[1];
          v59 = v18;
          v57 = v17;
          v19 = v15[3];
          v20 = v15[4];
          v21 = v15[6];
          v62 = v15[5];
          v63 = v21;
          v60 = v19;
          v61 = v20;
          v22 = v15[7];
          v23 = v15[8];
          v24 = v15[9];
          v67 = *(v15 + 20);
          v65 = v23;
          v66 = v24;
          v64 = v22;
          if (v59 > 1u && v59 != 3)
          {
            break;
          }

          v25 = sub_230E698C0();
          sub_230D93514(&v57, v56);

          if (v25)
          {
            goto LABEL_15;
          }

          ++v16;
          sub_230D93570(&v57);
          v15 = (v15 + 168);
          if (v12 == v16)
          {
            goto LABEL_32;
          }
        }

        sub_230D93514(&v57, v56);

LABEL_15:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v68 = v3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_230D48F00(0, *(v3 + 16) + 1, 1);
          v3 = v68;
        }

        v28 = *(v3 + 16);
        v27 = *(v3 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_230D48F00((v27 > 1), v28 + 1, 1);
          v3 = v68;
        }

        v13 = v16 + 1;
        *(v3 + 16) = v28 + 1;
        v29 = v3 + 168 * v28;
        v30 = v57;
        v31 = v59;
        *(v29 + 48) = v58;
        *(v29 + 64) = v31;
        *(v29 + 32) = v30;
        v32 = v60;
        v33 = v61;
        v34 = v63;
        *(v29 + 112) = v62;
        *(v29 + 128) = v34;
        *(v29 + 80) = v32;
        *(v29 + 96) = v33;
        v35 = v64;
        v36 = v65;
        v37 = v66;
        *(v29 + 192) = v67;
        *(v29 + 160) = v36;
        *(v29 + 176) = v37;
        *(v29 + 144) = v35;
        v14 = v11 + 32;
      }

      while (v12 - 1 != v16);
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
    }

LABEL_32:

    v2 = a2;
    v4 = *(v3 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_33:

    v52 = sub_230E68D60();
    v53 = sub_230E693F0();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_230D02000, v52, v53, "[VideoAggregator][generateVideoInsights] No video sessions found", v54, 2u);
      MEMORY[0x23191EAE0](v54, -1, -1);
    }

    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
    return;
  }

  v3 = MEMORY[0x277D84F90];
  v4 = *(MEMORY[0x277D84F90] + 16);
  if (!v4)
  {
    goto LABEL_33;
  }

LABEL_3:

  v5 = sub_230E68D60();
  v6 = sub_230E693E0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v3 + 16);

    _os_log_impl(&dword_230D02000, v5, v6, "[VideoAggregator][generateVideoInsights] Processing %ld video sessions", v7, 0xCu);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  else
  {
  }

  v38 = *(v3 + 16);
  if (v38 > v4 - 1)
  {
    if (v4 == 1)
    {
      v39 = 0;
      v40 = 0.0;
    }

    else
    {
      v39 = v4 & 0x7FFFFFFFFFFFFFFELL;
      v41 = (v3 + 240);
      v40 = 0.0;
      v42 = v4 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v8.n128_f64[0] = *v41;
        v40 = v40 + *(v41 - 21) + *v41;
        v41 += 42;
        v42 -= 2;
      }

      while (v42);
      if (v4 == v39)
      {
        goto LABEL_30;
      }
    }

    v43 = v4 - v39;
    v44 = (v3 + 168 * v39 + 72);
    do
    {
      v45 = *v44;
      v44 += 21;
      v40 = v40 + v45;
      --v43;
    }

    while (v43);
LABEL_30:
    v46 = round(v40 * 100.0) / 100.0;
    v47 = round(v46 / v38 * 100.0);
    v48 = v47 / 100.0;
    sub_230DA1E8C(v3, v47, 100.0, v8, v9, v10);
    v50 = v49;
    v51 = sub_230D9632C(v3);

    *v2 = v38;
    *(v2 + 8) = v46;
    *(v2 + 16) = v48;
    *(v2 + 24) = v50;
    *(v2 + 32) = v51;
    return;
  }

LABEL_37:
  __break(1u);
}

uint64_t sub_230D9632C(uint64_t a1)
{
  v2 = sub_230D0E4B4(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 72);
    do
    {
      v8 = *(v4 - 3);
      v7 = *(v4 - 2);
      v9 = *v4;
      v10 = v2[2];

      if (v10)
      {
        v11 = sub_230DA41A0(v8, v7);
        if (v12)
        {
          v13 = v2[7] + 16 * v11;
          v14 = *v13 + 1;
          if (__OFADD__(*v13, 1))
          {
            goto LABEL_49;
          }

          v15 = *(v13 + 8);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v58 = v2;
          v17 = sub_230DA41A0(v8, v7);
          v19 = v2[2];
          v20 = (v18 & 1) == 0;
          v21 = __OFADD__(v19, v20);
          v22 = v19 + v20;
          if (v21)
          {
            goto LABEL_50;
          }

          v23 = v18;
          if (v2[3] < v22)
          {
            sub_230DB732C(v22, isUniquelyReferenced_nonNull_native);
            v17 = sub_230DA41A0(v8, v7);
            if ((v23 & 1) != (v24 & 1))
            {
              goto LABEL_52;
            }

            goto LABEL_23;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_23:
            v9 = v9 + v15;
            if ((v23 & 1) == 0)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v39 = v17;
            sub_230DBA320();
            v17 = v39;
            v9 = v9 + v15;
            if ((v23 & 1) == 0)
            {
LABEL_28:
              v2 = v58;
              v58[(v17 >> 6) + 8] |= 1 << v17;
              v40 = (v2[6] + 16 * v17);
              *v40 = v8;
              v40[1] = v7;
              v41 = v2[7] + 16 * v17;
              *v41 = v14;
              *(v41 + 8) = v9;
              v42 = v2[2];
              v21 = __OFADD__(v42, 1);
              v36 = v42 + 1;
              if (v21)
              {
                goto LABEL_51;
              }

              goto LABEL_29;
            }
          }

          v37 = v17;

          v2 = v58;
          v6 = v58[7] + 16 * v37;
          *v6 = v14;
          goto LABEL_4;
        }
      }

      v25 = swift_isUniquelyReferenced_nonNull_native();
      v58 = v2;
      v26 = sub_230DA41A0(v8, v7);
      v28 = v2[2];
      v29 = (v27 & 1) == 0;
      v21 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v21)
      {
        goto LABEL_47;
      }

      v31 = v27;
      if (v2[3] >= v30)
      {
        if ((v25 & 1) == 0)
        {
          v38 = v26;
          sub_230DBA320();
          v26 = v38;
          if ((v31 & 1) == 0)
          {
LABEL_19:
            v2 = v58;
            v58[(v26 >> 6) + 8] |= 1 << v26;
            v33 = (v2[6] + 16 * v26);
            *v33 = v8;
            v33[1] = v7;
            v34 = v2[7] + 16 * v26;
            *v34 = 1;
            *(v34 + 8) = v9;
            v35 = v2[2];
            v21 = __OFADD__(v35, 1);
            v36 = v35 + 1;
            if (v21)
            {
              goto LABEL_48;
            }

LABEL_29:
            v2[2] = v36;
            goto LABEL_5;
          }

          goto LABEL_3;
        }
      }

      else
      {
        sub_230DB732C(v30, v25);
        v26 = sub_230DA41A0(v8, v7);
        if ((v31 & 1) != (v32 & 1))
        {
          goto LABEL_52;
        }
      }

      if ((v31 & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_3:
      v5 = v26;

      v2 = v58;
      v6 = v58[7] + 16 * v5;
      *v6 = 1;
LABEL_4:
      *(v6 + 8) = v9;
LABEL_5:
      v4 += 21;
      --v3;
    }

    while (v3);
  }

  v43 = v2[2];
  v44 = MEMORY[0x277D84F90];
  if (v43)
  {
    v45 = sub_230E4B198(v2[2], 0);
    v46 = sub_230E67174(&v58, v45 + 4, v43, v2);

    sub_230D912FC();
    if (v46 == v43)
    {
      goto LABEL_34;
    }

    __break(1u);
  }

  v45 = v44;
LABEL_34:
  v58 = v45;
  sub_230D90560(&v58);
  v7 = v58;
  v47 = v58[2];
  if (v47 >= 5)
  {
    v48 = 5;
  }

  else
  {
    v48 = v58[2];
  }

  if (v47)
  {
    v58 = v44;
    sub_230D49058(0, v48, 0);
    v49 = v58;
    v50 = (v7 + 56);
    while (v48)
    {
      v52 = *(v50 - 3);
      v51 = *(v50 - 2);
      v53 = *(v50 - 1);
      v54 = *v50;
      v58 = v49;
      v7 = v49[2];
      v55 = v49[3];

      if (v7 >= v55 >> 1)
      {
        sub_230D49058((v55 > 1), v7 + 1, 1);
        v49 = v58;
      }

      v49[2] = v7 + 1;
      v56 = &v49[4 * v7];
      *(v56 + 4) = v52;
      *(v56 + 5) = v51;
      *(v56 + 6) = v53;
      v56[7] = round(v54 * 100.0) / 100.0;
      v50 += 4;
      if (!--v48)
      {

        return v49;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    sub_230E69950();
    __break(1u);
    MEMORY[0x23191E910](v7);

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

ServicesIntelligence::AppsInsights __swiftcall AppsInsights.init(totalSessions:totalUsageTime:averageSessionLength:appDistribution:)(Swift::Int totalSessions, Swift::Double totalUsageTime, Swift::Double averageSessionLength, Swift::OpaquePointer appDistribution)
{
  *v4 = totalSessions;
  *(v4 + 8) = totalUsageTime;
  *(v4 + 16) = averageSessionLength;
  *(v4 + 24) = appDistribution;
  result.averageSessionLength = averageSessionLength;
  result.totalUsageTime = totalUsageTime;
  result.appDistribution = appDistribution;
  result.totalSessions = totalSessions;
  return result;
}

ServicesIntelligence::AppsInsights::AppInsight __swiftcall AppsInsights.AppInsight.init(bundleID:sessionCount:totalSeconds:)(Swift::String bundleID, Swift::Int sessionCount, Swift::Double totalSeconds)
{
  *v3 = bundleID;
  *(v3 + 16) = sessionCount;
  *(v3 + 24) = totalSeconds;
  result.bundleID = bundleID;
  result.totalSeconds = totalSeconds;
  result.sessionCount = sessionCount;
  return result;
}

void __swiftcall MusicInsights.init(totalSessions:totalListeningTime:averageSessionLength:completionRate:artistDistribution:songDistribution:albumDistribution:genreDistribution:)(ServicesIntelligence::MusicInsights *__return_ptr retstr, Swift::Int totalSessions, Swift::Double totalListeningTime, Swift::Double averageSessionLength, Swift::Double completionRate, Swift::OpaquePointer artistDistribution, Swift::OpaquePointer songDistribution, Swift::OpaquePointer albumDistribution, Swift::OpaquePointer genreDistribution)
{
  retstr->totalSessions = totalSessions;
  retstr->totalListeningTime = totalListeningTime;
  retstr->averageSessionLength = averageSessionLength;
  retstr->completionRate = completionRate;
  retstr->artistDistribution = artistDistribution;
  retstr->songDistribution = songDistribution;
  retstr->albumDistribution = albumDistribution;
  retstr->genreDistribution = genreDistribution;
}

void __swiftcall MusicInsights.ArtistInsight.init(name:artistID:sessionCount:totalSeconds:)(ServicesIntelligence::MusicInsights::ArtistInsight *__return_ptr retstr, Swift::String name, Swift::String_optional artistID, Swift::Int sessionCount, Swift::Double totalSeconds)
{
  retstr->name = name;
  retstr->artistID = artistID;
  retstr->sessionCount = sessionCount;
  retstr->totalSeconds = totalSeconds;
}

void __swiftcall MusicInsights.GenreInsight.init(name:percentage:sessionCount:totalSeconds:)(ServicesIntelligence::MusicInsights::GenreInsight *__return_ptr retstr, Swift::String name, Swift::Double percentage, Swift::Int sessionCount, Swift::Double totalSeconds)
{
  retstr->name = name;
  retstr->percentage = percentage;
  retstr->sessionCount = sessionCount;
  retstr->totalSeconds = totalSeconds;
}

void __swiftcall PodcastInsights.init(totalSessions:totalListeningTime:averageSessionLength:completionRate:channelDistribution:episodeDistribution:)(ServicesIntelligence::PodcastInsights *__return_ptr retstr, Swift::Int totalSessions, Swift::Double totalListeningTime, Swift::Double averageSessionLength, Swift::Double completionRate, Swift::OpaquePointer channelDistribution, Swift::OpaquePointer episodeDistribution)
{
  retstr->totalSessions = totalSessions;
  retstr->totalListeningTime = totalListeningTime;
  retstr->averageSessionLength = averageSessionLength;
  retstr->completionRate = completionRate;
  retstr->channelDistribution = channelDistribution;
  retstr->episodeDistribution = episodeDistribution;
}

uint64_t _s20ServicesIntelligence13MusicInsightsV11SongInsightV5title6songID6artist12sessionCount12totalSecondsAESS_SSSgSSSiSdtcfC_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  *(a8 + 56) = a9;
  return result;
}

void __swiftcall VideoInsights.init(totalSessions:totalWatchingTime:averageSessionLength:completionRate:contentDistribution:)(ServicesIntelligence::VideoInsights *__return_ptr retstr, Swift::Int totalSessions, Swift::Double totalWatchingTime, Swift::Double averageSessionLength, Swift::Double completionRate, Swift::OpaquePointer contentDistribution)
{
  retstr->totalSessions = totalSessions;
  retstr->totalWatchingTime = totalWatchingTime;
  retstr->averageSessionLength = averageSessionLength;
  retstr->completionRate = completionRate;
  retstr->contentDistribution = contentDistribution;
}

uint64_t AggregatedInsights.context.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
}

uint64_t AggregatedInsights.mediaDistribution.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = v2;
  a1[1] = v3;
  return sub_230D968B8(v2);
}

uint64_t sub_230D968B8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t AggregatedInsights.musicInsights.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[5];
  v7[0] = v1[4];
  v7[1] = v2;
  v4 = v1[7];
  v8 = v1[6];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_230D96938(v7, &v6);
}

uint64_t sub_230D96938(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BD60, &qword_230E73530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AggregatedInsights.podcastInsights.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[16];
  v3 = v1[17];
  v4 = v1[18];
  v5 = v1[19];
  v6 = v1[20];
  v7 = v1[21];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_230D969C4(v2, v3, v4, v5, v6);
}

uint64_t sub_230D969C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t AggregatedInsights.videoInsights.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 208);
  v3 = *(v1 + 192);
  *a1 = *(v1 + 176);
  *(a1 + 16) = v3;
  *(a1 + 32) = v2;
}

uint64_t AggregatedInsights.appsInsights.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 232);
  v2 = *(v1 + 240);
  *a1 = *(v1 + 216);
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
}

__n128 AggregatedInsights.init(context:mediaDistribution:musicInsights:podcastInsights:videoInsights:appsInsights:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a5 + 32);
  *a7 = *a1;
  *(a7 + 16) = v7;
  *(a7 + 32) = v8;
  *(a7 + 40) = v9;
  v12 = a3[2];
  v11 = a3[3];
  v13 = *a3;
  *(a7 + 80) = a3[1];
  *(a7 + 96) = v12;
  *(a7 + 48) = *a2;
  *(a7 + 64) = v13;
  v14 = *a4;
  v15 = a4[1];
  *(a7 + 112) = v11;
  *(a7 + 128) = v14;
  v16 = a4[2];
  *(a7 + 144) = v15;
  *(a7 + 160) = v16;
  v17 = *(a5 + 16);
  *(a7 + 176) = *a5;
  *(a7 + 192) = v17;
  *(a7 + 208) = v10;
  result = *a6;
  v19 = *(a6 + 16);
  *(a7 + 216) = *a6;
  *(a7 + 232) = v19;
  return result;
}

uint64_t sub_230D96A8C()
{
  v1 = *v0;
  v2 = 0x747865746E6F63;
  v3 = 0x4974736163646F70;
  v4 = 0x736E496F65646976;
  if (v1 != 4)
  {
    v4 = 0x69736E4973707061;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0x736E49636973756DLL;
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

uint64_t sub_230D96B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230D9F820(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230D96BA0(uint64_t a1)
{
  v2 = sub_230D97058();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D96BDC(uint64_t a1)
{
  v2 = sub_230D97058();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AggregatedInsights.encode(to:)(void *a1)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BD68, &qword_230E73538);
  v45 = *(v43 - 8);
  v3 = *(v45 + 64);
  MEMORY[0x28223BE20](v43, v4);
  v6 = &v27 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[3];
  v41 = v1[2];
  v42 = v7;
  v10 = v1[4];
  v11 = v1[5];
  v12 = v1[7];
  v39 = v1[6];
  v40 = v10;
  v13 = *(v1 + 5);
  v57 = *(v1 + 4);
  v58 = v13;
  v14 = *(v1 + 7);
  v59 = *(v1 + 6);
  v60 = v14;
  v15 = v1[17];
  v37 = v1[16];
  v38 = v12;
  v16 = v1[19];
  v35 = v1[18];
  v36 = v15;
  v17 = v1[21];
  v33 = v1[20];
  v34 = v16;
  v32 = v17;
  v18 = *(v1 + 11);
  v30 = *(v1 + 12);
  v31 = v18;
  v29 = v1[26];
  v19 = *(v1 + 29);
  v27 = *(v1 + 27);
  v28 = v19;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D97058();

  sub_230E69A50();
  *&v53 = v42;
  *(&v53 + 1) = v8;
  *&v54 = v41;
  *(&v54 + 1) = v9;
  v21 = v43;
  *&v55 = v40;
  *(&v55 + 1) = v11;
  LOBYTE(v51[0]) = 0;
  sub_230D970AC();
  v22 = v44;
  sub_230E69850();
  if (v22)
  {

    return (*(v45 + 8))(v6, v21);
  }

  else
  {
    v24 = v36;
    v25 = v37;
    v26 = v45;

    *&v53 = v39;
    *(&v53 + 1) = v38;
    LOBYTE(v51[0]) = 1;
    sub_230D968B8(v39);
    sub_230D97100();
    sub_230E697F0();
    sub_230D97154(v53);
    v53 = v57;
    v54 = v58;
    v55 = v59;
    v56 = v60;
    v52 = 2;
    sub_230D96938(&v57, v51);
    sub_230D97194();
    sub_230E697F0();
    v51[0] = v53;
    v51[1] = v54;
    v51[2] = v55;
    v51[3] = v56;
    sub_230D971E8(v51);
    *&v47 = v25;
    *(&v47 + 1) = v24;
    *&v48 = v35;
    *(&v48 + 1) = v34;
    v49 = v33;
    v50 = v32;
    v46 = 3;
    sub_230D969C4(v25, v24, v35, v34, v33);
    sub_230D97250();
    sub_230E697F0();
    sub_230D972A4(v47, *(&v47 + 1), v48, *(&v48 + 1), v49);
    v47 = v31;
    v48 = v30;
    v49 = v29;
    v46 = 4;
    sub_230D972E8();

    sub_230E697F0();

    v47 = v27;
    v48 = v28;
    v46 = 5;
    sub_230D9733C();

    sub_230E697F0();

    return (*(v26 + 8))(v6, v21);
  }
}

unint64_t sub_230D97058()
{
  result = qword_27DB5BD70;
  if (!qword_27DB5BD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BD70);
  }

  return result;
}

unint64_t sub_230D970AC()
{
  result = qword_27DB5BD78;
  if (!qword_27DB5BD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BD78);
  }

  return result;
}

unint64_t sub_230D97100()
{
  result = qword_27DB5BD80;
  if (!qword_27DB5BD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BD80);
  }

  return result;
}

uint64_t sub_230D97154(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_230D97194()
{
  result = qword_27DB5BD88;
  if (!qword_27DB5BD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BD88);
  }

  return result;
}

uint64_t sub_230D971E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BD60, &qword_230E73530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_230D97250()
{
  result = qword_27DB5BD90;
  if (!qword_27DB5BD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BD90);
  }

  return result;
}

uint64_t sub_230D972A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

unint64_t sub_230D972E8()
{
  result = qword_27DB5BD98;
  if (!qword_27DB5BD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BD98);
  }

  return result;
}

unint64_t sub_230D9733C()
{
  result = qword_27DB5BDA0;
  if (!qword_27DB5BDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BDA0);
  }

  return result;
}

uint64_t AggregatedInsights.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BDA8, &qword_230E73540);
  v5 = *(v55 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v55, v7);
  v9 = &v35 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D97058();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v53 = a2;
  v54 = v5;
  LOBYTE(v56) = 0;
  sub_230D97A24();
  sub_230E69760();
  v11 = v72;
  v12 = v73;
  v51 = v74;
  v52 = *(&v72 + 1);
  v13 = v75;
  v14 = v76;
  LOBYTE(v56) = 1;
  sub_230D97A78();
  sub_230E69700();
  v42 = v13;
  v43 = v12;
  v44 = v11;
  v50 = v72;
  v101 = 2;
  sub_230D97ACC();
  sub_230E69700();
  v106 = v102;
  v107 = v103;
  v108 = v104;
  v109 = v105;
  LOBYTE(v56) = 3;
  sub_230D97B20();
  sub_230E69700();
  v49 = v72;
  v47 = v75;
  v48 = v74;
  v45 = v73;
  v46 = v76;
  LOBYTE(v56) = 4;
  sub_230D97B74();
  sub_230E69700();
  v15 = v72;
  v40 = v73;
  v41 = *(&v72 + 1);
  v39 = v74;
  v16 = v75;
  v97 = 5;
  sub_230D97BC8();
  sub_230E69700();
  v38 = v15;
  (*(v54 + 8))(v9, v55);
  v54 = v99;
  v55 = v98;
  v37 = *(&v99 + 1);
  *&v56 = v44;
  *(&v56 + 1) = v52;
  v17 = *(&v50 + 1);
  *&v57 = v43;
  *(&v57 + 1) = v51;
  *&v58 = v42;
  *(&v58 + 1) = v14;
  v18 = v50;
  v59 = v50;
  v60 = v106;
  v61 = v107;
  v62 = v108;
  v63 = v109;
  v64 = v49;
  v19 = v45;
  *&v65 = v45;
  *(&v65 + 1) = v48;
  *&v66 = v47;
  *(&v66 + 1) = v46;
  *&v67 = v15;
  *(&v67 + 1) = v41;
  *&v68 = v40;
  *(&v68 + 1) = v39;
  *&v69 = v16;
  *(&v69 + 1) = v98;
  v70 = v99;
  v20 = v100;
  v71 = v100;
  v21 = v56;
  v22 = v57;
  v23 = v50;
  v36 = v16;
  v24 = v53;
  *(v53 + 32) = v58;
  *(v24 + 48) = v23;
  *v24 = v21;
  *(v24 + 16) = v22;
  v25 = v60;
  v26 = v61;
  v27 = v63;
  *(v24 + 96) = v62;
  *(v24 + 112) = v27;
  *(v24 + 64) = v25;
  *(v24 + 80) = v26;
  v28 = v64;
  v29 = v65;
  v30 = v67;
  *(v24 + 160) = v66;
  *(v24 + 176) = v30;
  *(v24 + 128) = v28;
  *(v24 + 144) = v29;
  v31 = v68;
  v32 = v69;
  v33 = v70;
  *(v24 + 240) = v20;
  *(v24 + 208) = v32;
  *(v24 + 224) = v33;
  *(v24 + 192) = v31;
  sub_230D97C1C(&v56, &v72);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *&v72 = v44;
  *(&v72 + 1) = v52;
  v73 = v43;
  v74 = v51;
  v75 = v42;
  v76 = v14;
  v77 = v18;
  v78 = v17;
  v79 = v106;
  v80 = v107;
  v81 = v108;
  v82 = v109;
  v83 = v49;
  v84 = v19;
  v85 = v48;
  v86 = v47;
  v87 = v46;
  v88 = v38;
  v89 = v41;
  v90 = v40;
  v91 = v39;
  v92 = v36;
  v93 = v55;
  v94 = v54;
  v95 = v37;
  v96 = v20;
  return sub_230D97C54(&v72);
}

unint64_t sub_230D97A24()
{
  result = qword_27DB5BDB0;
  if (!qword_27DB5BDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BDB0);
  }

  return result;
}

unint64_t sub_230D97A78()
{
  result = qword_27DB5BDB8;
  if (!qword_27DB5BDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BDB8);
  }

  return result;
}

unint64_t sub_230D97ACC()
{
  result = qword_27DB5BDC0;
  if (!qword_27DB5BDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BDC0);
  }

  return result;
}

unint64_t sub_230D97B20()
{
  result = qword_27DB5BDC8;
  if (!qword_27DB5BDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BDC8);
  }

  return result;
}

unint64_t sub_230D97B74()
{
  result = qword_27DB5BDD0;
  if (!qword_27DB5BDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BDD0);
  }

  return result;
}

unint64_t sub_230D97BC8()
{
  result = qword_27DB5BDD8;
  if (!qword_27DB5BDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BDD8);
  }

  return result;
}

uint64_t ContextSummary.timeFrame.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void __swiftcall ContextSummary.init(type:timeFrame:totalSessions:totalEngagementTime:)(ServicesIntelligence::ContextSummary *__return_ptr retstr, Swift::String type, Swift::String timeFrame, Swift::Int totalSessions, Swift::Double totalEngagementTime)
{
  retstr->type = type;
  retstr->timeFrame = timeFrame;
  retstr->totalSessions = totalSessions;
  retstr->totalEngagementTime = totalEngagementTime;
}

unint64_t sub_230D97CF8()
{
  v1 = 1701869940;
  v2 = 0x7365536C61746F74;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0x6D617246656D6974;
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

uint64_t sub_230D97D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230D9FA40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230D97DA8(uint64_t a1)
{
  v2 = sub_230D9800C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D97DE4(uint64_t a1)
{
  v2 = sub_230D9800C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContextSummary.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BDE0, &qword_230E73548);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v16 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v16[2] = v1[3];
  v16[3] = v11;
  v16[1] = v1[4];
  v12 = v1[5];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D9800C();
  sub_230E69A50();
  v20 = 0;
  v14 = v16[4];
  sub_230E69810();
  if (!v14)
  {
    v19 = 1;
    sub_230E69810();
    v18 = 2;
    sub_230E69840();
    v17 = 3;
    sub_230E69830();
  }

  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_230D9800C()
{
  result = qword_27DB5BDE8;
  if (!qword_27DB5BDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BDE8);
  }

  return result;
}

uint64_t ContextSummary.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BDF0, &qword_230E73550);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v21 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D9800C();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = 0;
  v12 = sub_230E69720();
  v25 = v13;
  v28 = 1;
  v23 = sub_230E69720();
  v24 = v14;
  v27 = 2;
  v22 = sub_230E69750();
  v26 = 3;
  sub_230E69740();
  v17 = v16;
  (*(v6 + 8))(v10, v5);
  v19 = v24;
  v18 = v25;
  *a2 = v12;
  a2[1] = v18;
  v20 = v22;
  a2[2] = v23;
  a2[3] = v19;
  a2[4] = v20;
  a2[5] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

ServicesIntelligence::MediaDistribution __swiftcall MediaDistribution.init(byTime:bySessions:)(Swift::OpaquePointer byTime, Swift::OpaquePointer bySessions)
{
  v2->_rawValue = byTime._rawValue;
  v2[1]._rawValue = bySessions._rawValue;
  result.bySessions = bySessions;
  result.byTime = byTime;
  return result;
}

uint64_t sub_230D9833C()
{
  if (*v0)
  {
    result = 0x6F69737365537962;
  }

  else
  {
    result = 0x656D69547962;
  }

  *v0;
  return result;
}

uint64_t sub_230D98378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D69547962 && a2 == 0xE600000000000000;
  if (v6 || (sub_230E698C0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F69737365537962 && a2 == 0xEA0000000000736ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230E698C0();

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

uint64_t sub_230D98458(uint64_t a1)
{
  v2 = sub_230D986BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D98494(uint64_t a1)
{
  v2 = sub_230D986BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaDistribution.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BDF8, &qword_230E73558);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v13 - v8;
  v10 = *v1;
  v13 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D986BC();

  sub_230E69A50();
  v15 = v10;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
  sub_230D6C1DC(&unk_281565FA0);
  sub_230E69850();

  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    sub_230E69850();
  }

  return (*(v5 + 8))(v9, v4);
}

unint64_t sub_230D986BC()
{
  result = qword_27DB5BE00;
  if (!qword_27DB5BE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BE00);
  }

  return result;
}

uint64_t MediaDistribution.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BE08, &qword_230E73568);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D986BC();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
  v17 = 0;
  sub_230D6C1DC(&qword_27DB5D980);
  sub_230E69760();
  v12 = v18;
  v17 = 1;
  sub_230E69760();
  (*(v6 + 8))(v10, v5);
  v13 = v18;
  v14 = v16;
  *v16 = v12;
  v14[1] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicInsights.SongInsight.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MusicInsights.SongInsight.songID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MusicInsights.SongInsight.artist.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_230D98A6C()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x747369747261;
  v4 = 0x436E6F6973736573;
  if (v1 != 3)
  {
    v4 = 0x6365536C61746F74;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4449676E6F73;
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

uint64_t sub_230D98B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230D9FBBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230D98B34(uint64_t a1)
{
  v2 = sub_230D98BF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D98B70(uint64_t a1)
{
  v2 = sub_230D98BF0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_230D98BF0()
{
  result = qword_27DB5BE18;
  if (!qword_27DB5BE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BE18);
  }

  return result;
}

uint64_t MusicInsights.SongInsight.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BE20, &qword_230E73578);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v27 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D98BF0();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v37[0]) = 0;
  v12 = sub_230E69720();
  v32 = v13;
  LOBYTE(v37[0]) = 1;
  v14 = sub_230E696B0();
  v31 = v15;
  v29 = v14;
  LOBYTE(v37[0]) = 2;
  v28 = sub_230E69720();
  v30 = v16;
  LOBYTE(v37[0]) = 3;
  v27 = sub_230E69750();
  v38 = 4;
  sub_230E69740();
  v18 = v17;
  (*(v6 + 8))(v10, v5);
  v20 = v31;
  v19 = v32;
  *&v33 = v12;
  *(&v33 + 1) = v32;
  v22 = v29;
  v21 = v30;
  *&v34 = v29;
  *(&v34 + 1) = v31;
  v23 = v28;
  *&v35 = v28;
  *(&v35 + 1) = v30;
  *&v36 = v27;
  *(&v36 + 1) = v18;
  v24 = v34;
  *a2 = v33;
  a2[1] = v24;
  v25 = v36;
  a2[2] = v35;
  a2[3] = v25;
  sub_230D98F78(&v33, v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v37[0] = v12;
  v37[1] = v19;
  v37[2] = v22;
  v37[3] = v20;
  v37[4] = v23;
  v37[5] = v21;
  v37[6] = v27;
  v37[7] = v18;
  return sub_230D98FB0(v37);
}

uint64_t MusicInsights.ArtistInsight.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MusicInsights.ArtistInsight.artistID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_230D99080()
{
  v1 = 1701667182;
  v2 = 0x436E6F6973736573;
  if (*v0 != 2)
  {
    v2 = 0x6365536C61746F74;
  }

  if (*v0)
  {
    v1 = 0x4449747369747261;
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

uint64_t sub_230D99104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230D9FD68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230D9912C(uint64_t a1)
{
  v2 = sub_230D993C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D99168(uint64_t a1)
{
  v2 = sub_230D993C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230D991E8(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v24 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v23 - v10;
  v12 = *v4;
  v13 = v4[1];
  v14 = v4[2];
  v23[1] = v4[3];
  v23[2] = v14;
  v23[0] = v4[4];
  v15 = v4[5];
  v17 = a1[3];
  v16 = a1[4];
  v18 = a1;
  v20 = v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  v24();
  sub_230E69A50();
  v29 = 0;
  v21 = v25;
  sub_230E69810();
  if (!v21)
  {
    v28 = 1;
    sub_230E697B0();
    v27 = 2;
    sub_230E69840();
    v26 = 3;
    sub_230E69830();
  }

  return (*(v7 + 8))(v11, v20);
}

unint64_t sub_230D993C8()
{
  result = qword_27DB5BE30;
  if (!qword_27DB5BE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BE30);
  }

  return result;
}

uint64_t sub_230D99490()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x747369747261;
  v4 = 0x436E6F6973736573;
  if (v1 != 3)
  {
    v4 = 0x6365536C61746F74;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x44496D75626C61;
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

uint64_t sub_230D99530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230D9FED4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230D99558(uint64_t a1)
{
  v2 = sub_230D99614();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D99594(uint64_t a1)
{
  v2 = sub_230D99614();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_230D99614()
{
  result = qword_27DB5BE48;
  if (!qword_27DB5BE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BE48);
  }

  return result;
}

uint64_t MusicInsights.AlbumInsight.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BE50, &qword_230E73598);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v27 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D99614();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v37[0]) = 0;
  v12 = sub_230E69720();
  v32 = v13;
  LOBYTE(v37[0]) = 1;
  v14 = sub_230E696B0();
  v31 = v15;
  v29 = v14;
  LOBYTE(v37[0]) = 2;
  v28 = sub_230E69720();
  v30 = v16;
  LOBYTE(v37[0]) = 3;
  v27 = sub_230E69750();
  v38 = 4;
  sub_230E69740();
  v18 = v17;
  (*(v6 + 8))(v10, v5);
  v20 = v31;
  v19 = v32;
  *&v33 = v12;
  *(&v33 + 1) = v32;
  v22 = v29;
  v21 = v30;
  *&v34 = v29;
  *(&v34 + 1) = v31;
  v23 = v28;
  *&v35 = v28;
  *(&v35 + 1) = v30;
  *&v36 = v27;
  *(&v36 + 1) = v18;
  v24 = v34;
  *a2 = v33;
  a2[1] = v24;
  v25 = v36;
  a2[2] = v35;
  a2[3] = v25;
  sub_230D9999C(&v33, v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v37[0] = v12;
  v37[1] = v19;
  v37[2] = v22;
  v37[3] = v20;
  v37[4] = v23;
  v37[5] = v21;
  v37[6] = v27;
  v37[7] = v18;
  return sub_230D999D4(v37);
}

uint64_t MusicInsights.GenreInsight.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_230D99A7C()
{
  v1 = 1701667182;
  v2 = 0x436E6F6973736573;
  if (*v0 != 2)
  {
    v2 = 0x6365536C61746F74;
  }

  if (*v0)
  {
    v1 = 0x61746E6563726570;
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

uint64_t sub_230D99B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230DA0088(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230D99B2C(uint64_t a1)
{
  v2 = sub_230D99D8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D99B68(uint64_t a1)
{
  v2 = sub_230D99D8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicInsights.GenreInsight.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BE58, &qword_230E735A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v16 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v16[0] = v1[3];
  v12 = v1[4];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D99D8C();
  sub_230E69A50();
  v20 = 0;
  v14 = v16[1];
  sub_230E69810();
  if (!v14)
  {
    v19 = 1;
    sub_230E69830();
    v18 = 2;
    sub_230E69840();
    v17 = 3;
    sub_230E69830();
  }

  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_230D99D8C()
{
  result = qword_27DB5BE60;
  if (!qword_27DB5BE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BE60);
  }

  return result;
}

uint64_t MusicInsights.GenreInsight.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BE68, &qword_230E735A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v21 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D99D8C();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  v12 = sub_230E69720();
  v14 = v13;
  v15 = v12;
  v25 = 1;
  sub_230E69740();
  v17 = v16;
  v24 = 2;
  v22 = sub_230E69750();
  v23 = 3;
  sub_230E69740();
  v20 = v19;
  (*(v6 + 8))(v10, v5);
  *a2 = v15;
  a2[1] = v14;
  a2[2] = v17;
  a2[3] = v22;
  a2[4] = v20;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_230D9A054()
{
  v1 = *v0;
  if (v1 > 3)
  {
    if (v1 == 4)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (*v0 <= 5u)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000011;
    }
  }

  else
  {
    v2 = 0x7365536C61746F74;
    v3 = 0xD000000000000014;
    if (v1 != 2)
    {
      v3 = 0x6974656C706D6F63;
    }

    if (*v0)
    {
      v2 = 0xD000000000000012;
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

uint64_t sub_230D9A170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230DA01FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230D9A198(uint64_t a1)
{
  v2 = sub_230D9A5B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D9A1D4(uint64_t a1)
{
  v2 = sub_230D9A5B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicInsights.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BE70, &qword_230E735B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v22 - v7;
  v9 = *v1;
  v11 = v1[1];
  v10 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v23 = v1[5];
  v24 = v13;
  v14 = v1[7];
  v22 = v1[6];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D9A5B0();
  v16 = v3;
  sub_230E69A50();
  LOBYTE(v27) = 0;
  v17 = v25;
  sub_230E69840();
  if (v17)
  {
    return (*(v4 + 8))(v8, v3);
  }

  v18 = v23;
  v19 = v24;
  v20 = v22;
  LOBYTE(v27) = 1;
  sub_230E69830();
  LOBYTE(v27) = 2;
  sub_230E69830();
  LOBYTE(v27) = 3;
  sub_230E69830();
  v27 = v19;
  v26 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BE80, &qword_230E735B8);
  sub_230D9A604();
  sub_230E69850();
  v27 = v18;
  v26 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BE98, &qword_230E735C0);
  sub_230D9A6DC();
  sub_230E69850();
  v27 = v20;
  v26 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BEB0, &qword_230E735C8);
  sub_230D9A7B4();
  sub_230E69850();
  v27 = v14;
  v26 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BEC8, &qword_230E735D0);
  sub_230D9A88C();
  sub_230E69850();
  return MEMORY[8](v8, v16);
}

unint64_t sub_230D9A5B0()
{
  result = qword_27DB5BE78;
  if (!qword_27DB5BE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BE78);
  }

  return result;
}

unint64_t sub_230D9A604()
{
  result = qword_27DB5BE88;
  if (!qword_27DB5BE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BE80, &qword_230E735B8);
    sub_230D9A688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BE88);
  }

  return result;
}

unint64_t sub_230D9A688()
{
  result = qword_27DB5BE90;
  if (!qword_27DB5BE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BE90);
  }

  return result;
}

unint64_t sub_230D9A6DC()
{
  result = qword_27DB5BEA0;
  if (!qword_27DB5BEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BE98, &qword_230E735C0);
    sub_230D9A760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BEA0);
  }

  return result;
}

unint64_t sub_230D9A760()
{
  result = qword_27DB5BEA8;
  if (!qword_27DB5BEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BEA8);
  }

  return result;
}

unint64_t sub_230D9A7B4()
{
  result = qword_27DB5BEB8;
  if (!qword_27DB5BEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BEB0, &qword_230E735C8);
    sub_230D9A838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BEB8);
  }

  return result;
}

unint64_t sub_230D9A838()
{
  result = qword_27DB5BEC0;
  if (!qword_27DB5BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BEC0);
  }

  return result;
}

unint64_t sub_230D9A88C()
{
  result = qword_27DB5BED0;
  if (!qword_27DB5BED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BEC8, &qword_230E735D0);
    sub_230D9A910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BED0);
  }

  return result;
}

unint64_t sub_230D9A910()
{
  result = qword_27DB5BED8;
  if (!qword_27DB5BED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BED8);
  }

  return result;
}

uint64_t MusicInsights.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BEE0, &qword_230E735D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v26 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D9A5B0();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v33[0]) = 0;
  v12 = sub_230E69750();
  LOBYTE(v33[0]) = 1;
  sub_230E69740();
  v14 = v13;
  LOBYTE(v33[0]) = 2;
  sub_230E69740();
  v16 = v15;
  LOBYTE(v33[0]) = 3;
  sub_230E69740();
  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BE80, &qword_230E735B8);
  LOBYTE(v29) = 4;
  sub_230D9ADB0();
  sub_230E69760();
  v28 = v33[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BE98, &qword_230E735C0);
  LOBYTE(v29) = 5;
  sub_230D9AE88();
  sub_230E69760();
  v27 = v33[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BEB0, &qword_230E735C8);
  LOBYTE(v29) = 6;
  sub_230D9AF60();
  sub_230E69760();
  v19 = v33[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BEC8, &qword_230E735D0);
  v34 = 7;
  sub_230D9B038();
  sub_230E69760();
  (*(v6 + 8))(v10, v5);
  v20 = v35;
  *&v29 = v12;
  *(&v29 + 1) = v14;
  *&v30 = v16;
  *(&v30 + 1) = v18;
  v21 = v28;
  v22 = v27;
  *&v31 = v28;
  *(&v31 + 1) = v27;
  *&v32 = v19;
  *(&v32 + 1) = v35;
  v23 = v30;
  *a2 = v29;
  a2[1] = v23;
  v24 = v32;
  a2[2] = v31;
  a2[3] = v24;
  sub_230D9B110(&v29, v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v33[0] = v12;
  v33[1] = v14;
  v33[2] = v16;
  v33[3] = v18;
  v33[4] = v21;
  v33[5] = v22;
  v33[6] = v19;
  v33[7] = v20;
  return sub_230D9B148(v33);
}

unint64_t sub_230D9ADB0()
{
  result = qword_27DB5BEE8;
  if (!qword_27DB5BEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BE80, &qword_230E735B8);
    sub_230D9AE34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BEE8);
  }

  return result;
}

unint64_t sub_230D9AE34()
{
  result = qword_27DB5BEF0;
  if (!qword_27DB5BEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BEF0);
  }

  return result;
}

unint64_t sub_230D9AE88()
{
  result = qword_27DB5BEF8;
  if (!qword_27DB5BEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BE98, &qword_230E735C0);
    sub_230D9AF0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BEF8);
  }

  return result;
}

unint64_t sub_230D9AF0C()
{
  result = qword_27DB5BF00;
  if (!qword_27DB5BF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BF00);
  }

  return result;
}

unint64_t sub_230D9AF60()
{
  result = qword_27DB5BF08;
  if (!qword_27DB5BF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BEB0, &qword_230E735C8);
    sub_230D9AFE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BF08);
  }

  return result;
}

unint64_t sub_230D9AFE4()
{
  result = qword_27DB5BF10;
  if (!qword_27DB5BF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BF10);
  }

  return result;
}

unint64_t sub_230D9B038()
{
  result = qword_27DB5BF18;
  if (!qword_27DB5BF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BEC8, &qword_230E735D0);
    sub_230D9B0BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BF18);
  }

  return result;
}

unint64_t sub_230D9B0BC()
{
  result = qword_27DB5BF20;
  if (!qword_27DB5BF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BF20);
  }

  return result;
}

uint64_t sub_230D9B1D8()
{
  v1 = 1701667182;
  v2 = 0x436E6F6973736573;
  if (*v0 != 2)
  {
    v2 = 0x6365536C61746F74;
  }

  if (*v0)
  {
    v1 = 0x496C656E6E616863;
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

uint64_t sub_230D9B260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230DA04A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230D9B288(uint64_t a1)
{
  v2 = sub_230D9B344();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D9B2C4(uint64_t a1)
{
  v2 = sub_230D9B344();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_230D9B344()
{
  result = qword_27DB5BF30;
  if (!qword_27DB5BF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BF30);
  }

  return result;
}

uint64_t sub_230D9B3DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  v28 = a5;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v29 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v29, v10);
  v12 = &v25 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_230E69A30();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v28;
  v33 = 0;
  v15 = sub_230E69720();
  v27 = v16;
  v32 = 1;
  v17 = v8;
  v26 = sub_230E696B0();
  v19 = v18;
  v31 = 2;
  v25 = sub_230E69750();
  v30 = 3;
  sub_230E69740();
  v22 = v21;
  (*(v17 + 8))(v12, v29);
  v23 = v26;
  v24 = v27;
  *v14 = v15;
  v14[1] = v24;
  v14[2] = v23;
  v14[3] = v19;
  v14[4] = v25;
  v14[5] = v22;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230D9B6AC()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 2003789939;
  v4 = 0x436E6F6973736573;
  if (v1 != 3)
  {
    v4 = 0x6365536C61746F74;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4965646F73697065;
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

uint64_t sub_230D9B750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230DA0618(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230D9B778(uint64_t a1)
{
  v2 = sub_230D9BA40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D9B7B4(uint64_t a1)
{
  v2 = sub_230D9BA40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230D9B834(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v21 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v20 - v10;
  v12 = *v4;
  v13 = v4[1];
  v14 = v4[3];
  v20[5] = v4[2];
  v20[6] = v12;
  v15 = v4[5];
  v20[3] = v4[4];
  v20[4] = v14;
  v20[1] = v4[6];
  v20[2] = v15;
  v16 = v4[7];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21();
  sub_230E69A50();
  v27 = 0;
  v18 = v22;
  sub_230E69810();
  if (!v18)
  {
    v26 = 1;
    sub_230E697B0();
    v25 = 2;
    sub_230E69810();
    v24 = 3;
    sub_230E69840();
    v23 = 4;
    sub_230E69830();
  }

  return (*(v7 + 8))(v11, v6);
}

unint64_t sub_230D9BA40()
{
  result = qword_27DB5BF48;
  if (!qword_27DB5BF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BF48);
  }

  return result;
}

uint64_t PodcastInsights.EpisodeInsight.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BF50, &qword_230E735F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v27 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D9BA40();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v37[0]) = 0;
  v12 = sub_230E69720();
  v32 = v13;
  LOBYTE(v37[0]) = 1;
  v14 = sub_230E696B0();
  v31 = v15;
  v29 = v14;
  LOBYTE(v37[0]) = 2;
  v28 = sub_230E69720();
  v30 = v16;
  LOBYTE(v37[0]) = 3;
  v27 = sub_230E69750();
  v38 = 4;
  sub_230E69740();
  v18 = v17;
  (*(v6 + 8))(v10, v5);
  v20 = v31;
  v19 = v32;
  *&v33 = v12;
  *(&v33 + 1) = v32;
  v22 = v29;
  v21 = v30;
  *&v34 = v29;
  *(&v34 + 1) = v31;
  v23 = v28;
  *&v35 = v28;
  *(&v35 + 1) = v30;
  *&v36 = v27;
  *(&v36 + 1) = v18;
  v24 = v34;
  *a2 = v33;
  a2[1] = v24;
  v25 = v36;
  a2[2] = v35;
  a2[3] = v25;
  sub_230D9BDC8(&v33, v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v37[0] = v12;
  v37[1] = v19;
  v37[2] = v22;
  v37[3] = v20;
  v37[4] = v23;
  v37[5] = v21;
  v37[6] = v27;
  v37[7] = v18;
  return sub_230D9BE00(v37);
}

unint64_t sub_230D9BE60()
{
  v1 = *v0;
  v2 = 0x7365536C61746F74;
  v3 = 0x6974656C706D6F63;
  if (v1 != 3)
  {
    v3 = 0xD000000000000013;
  }

  if (v1 == 1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_230D9BF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230DA07D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230D9BF60(uint64_t a1)
{
  v2 = sub_230D9C288();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D9BF9C(uint64_t a1)
{
  v2 = sub_230D9C288();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PodcastInsights.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BF58, &qword_230E73600);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v20 - v8;
  v10 = *v1;
  v12 = v1[1];
  v11 = v1[2];
  v13 = v1[3];
  v14 = v1[4];
  v20 = v1[5];
  v21 = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D9C288();
  v16 = v4;
  sub_230E69A50();
  LOBYTE(v23) = 0;
  sub_230E69840();
  if (v2)
  {
    return (*(v5 + 8))(v9, v4);
  }

  v18 = v20;
  v17 = v21;
  LOBYTE(v23) = 1;
  sub_230E69830();
  LOBYTE(v23) = 2;
  sub_230E69830();
  LOBYTE(v23) = 3;
  sub_230E69830();
  v23 = v17;
  v22 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BF68, &qword_230E73608);
  sub_230D9C2DC();
  sub_230E69850();
  v23 = v18;
  v22 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BF80, &qword_230E73610);
  sub_230D9C3B4();
  sub_230E69850();
  return (*(v5 + 8))(v9, v16);
}

unint64_t sub_230D9C288()
{
  result = qword_27DB5BF60;
  if (!qword_27DB5BF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BF60);
  }

  return result;
}

unint64_t sub_230D9C2DC()
{
  result = qword_27DB5BF70;
  if (!qword_27DB5BF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BF68, &qword_230E73608);
    sub_230D9C360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BF70);
  }

  return result;
}

unint64_t sub_230D9C360()
{
  result = qword_27DB5BF78;
  if (!qword_27DB5BF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BF78);
  }

  return result;
}

unint64_t sub_230D9C3B4()
{
  result = qword_27DB5BF88;
  if (!qword_27DB5BF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BF80, &qword_230E73610);
    sub_230D9C438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BF88);
  }

  return result;
}

unint64_t sub_230D9C438()
{
  result = qword_27DB5BF90;
  if (!qword_27DB5BF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BF90);
  }

  return result;
}

uint64_t PodcastInsights.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BF98, &qword_230E73618);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v22 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D9C288();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v23) = 0;
  v12 = sub_230E69750();
  LOBYTE(v23) = 1;
  sub_230E69740();
  v14 = v13;
  LOBYTE(v23) = 2;
  sub_230E69740();
  v16 = v15;
  LOBYTE(v23) = 3;
  sub_230E69740();
  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BF68, &qword_230E73608);
  HIBYTE(v22) = 4;
  sub_230D9C768();
  sub_230E69760();
  v19 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BF80, &qword_230E73610);
  HIBYTE(v22) = 5;
  sub_230D9C840();
  sub_230E69760();
  (*(v6 + 8))(v10, v5);
  v20 = v23;
  *a2 = v12;
  a2[1] = v14;
  a2[2] = v16;
  a2[3] = v18;
  a2[4] = v19;
  a2[5] = v20;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_230D9C768()
{
  result = qword_27DB5BFA0;
  if (!qword_27DB5BFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BF68, &qword_230E73608);
    sub_230D9C7EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BFA0);
  }

  return result;
}

unint64_t sub_230D9C7EC()
{
  result = qword_27DB5BFA8;
  if (!qword_27DB5BFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BFA8);
  }

  return result;
}

unint64_t sub_230D9C840()
{
  result = qword_27DB5BFB0;
  if (!qword_27DB5BFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BF80, &qword_230E73610);
    sub_230D9C8C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BFB0);
  }

  return result;
}

unint64_t sub_230D9C8C4()
{
  result = qword_27DB5BFB8;
  if (!qword_27DB5BFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BFB8);
  }

  return result;
}

uint64_t sub_230D9C968()
{
  v1 = 0x436E6F6973736573;
  if (*v0 != 1)
  {
    v1 = 0x6365536C61746F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_230D9C9D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230DA09E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230D9C9F8(uint64_t a1)
{
  v2 = sub_230D9CAB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D9CA34(uint64_t a1)
{
  v2 = sub_230D9CAB4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_230D9CAB4()
{
  result = qword_27DB5BFC8;
  if (!qword_27DB5BFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BFC8);
  }

  return result;
}

unint64_t sub_230D9CB7C()
{
  v1 = *v0;
  v2 = 0x7365536C61746F74;
  v3 = 0xD000000000000013;
  if (v1 == 3)
  {
    v3 = 0x6974656C706D6F63;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_230D9CC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230DA0B04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230D9CC64(uint64_t a1)
{
  v2 = sub_230D9CF38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D9CCA0(uint64_t a1)
{
  v2 = sub_230D9CF38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoInsights.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BFD8, &qword_230E73630);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v17 - v8;
  v10 = *v1;
  v12 = v1[1];
  v11 = v1[2];
  v13 = v1[3];
  v17 = v1[4];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D9CF38();
  sub_230E69A50();
  v23 = 0;
  sub_230E69840();
  if (!v2)
  {
    v15 = v17;
    v22 = 1;
    sub_230E69830();
    v21 = 2;
    sub_230E69830();
    v20 = 3;
    sub_230E69830();
    v19 = v15;
    v18 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BFE8, &qword_230E73638);
    sub_230D9CF8C();
    sub_230E69850();
  }

  return (*(v5 + 8))(v9, v4);
}

unint64_t sub_230D9CF38()
{
  result = qword_27DB5BFE0;
  if (!qword_27DB5BFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BFE0);
  }

  return result;
}

unint64_t sub_230D9CF8C()
{
  result = qword_27DB5BFF0;
  if (!qword_27DB5BFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BFE8, &qword_230E73638);
    sub_230D9D010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BFF0);
  }

  return result;
}

unint64_t sub_230D9D010()
{
  result = qword_27DB5BFF8;
  if (!qword_27DB5BFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BFF8);
  }

  return result;
}

uint64_t VideoInsights.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C000, &qword_230E73640);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v21[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D9CF38();
  sub_230E69A30();
  if (!v2)
  {
    v26 = 0;
    v12 = sub_230E69750();
    v25 = 1;
    sub_230E69740();
    v14 = v13;
    v24 = 2;
    sub_230E69740();
    v16 = v15;
    v23 = 3;
    sub_230E69740();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BFE8, &qword_230E73638);
    v21[15] = 4;
    sub_230D9D2C8();
    sub_230E69760();
    (*(v6 + 8))(v10, v5);
    v20 = v22;
    *a2 = v12;
    a2[1] = v14;
    a2[2] = v16;
    a2[3] = v19;
    a2[4] = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_230D9D2C8()
{
  result = qword_27DB5C008;
  if (!qword_27DB5C008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BFE8, &qword_230E73638);
    sub_230D9D34C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C008);
  }

  return result;
}

unint64_t sub_230D9D34C()
{
  result = qword_27DB5C010;
  if (!qword_27DB5C010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C010);
  }

  return result;
}

uint64_t AppsInsights.AppInsight.bundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_230D9D430()
{
  v1 = 0x436E6F6973736573;
  if (*v0 != 1)
  {
    v1 = 0x6365536C61746F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4449656C646E7562;
  }
}

uint64_t sub_230D9D49C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230DA0CCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230D9D4C4(uint64_t a1)
{
  v2 = sub_230D9D740();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D9D500(uint64_t a1)
{
  v2 = sub_230D9D740();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230D9D580(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v19 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v18 - v10;
  v13 = *v4;
  v12 = v4[1];
  v18[1] = v4[2];
  v18[2] = v12;
  v14 = v4[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19();
  sub_230E69A50();
  v23 = 0;
  v16 = v20;
  sub_230E69810();
  if (!v16)
  {
    v22 = 1;
    sub_230E69840();
    v21 = 2;
    sub_230E69830();
  }

  return (*(v7 + 8))(v11, v6);
}

unint64_t sub_230D9D740()
{
  result = qword_27DB5C020;
  if (!qword_27DB5C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C020);
  }

  return result;
}

uint64_t sub_230D9D7D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  v23 = a5;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v24, v10);
  v12 = &v22 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_230E69A30();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v23;
  v27 = 0;
  v15 = sub_230E69720();
  v17 = v16;
  v22 = v15;
  v26 = 1;
  v18 = sub_230E69750();
  v25 = 2;
  sub_230E69740();
  v21 = v20;
  (*(v8 + 8))(v12, v24);
  *v14 = v22;
  v14[1] = v17;
  v14[2] = v18;
  v14[3] = v21;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_230D9DA34()
{
  v1 = 0x7365536C61746F74;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0x7274736944707061;
  }

  if (*v0)
  {
    v1 = 0x6173556C61746F74;
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

uint64_t sub_230D9DAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230DA0DEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230D9DB00(uint64_t a1)
{
  v2 = sub_230D9DDA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D9DB3C(uint64_t a1)
{
  v2 = sub_230D9DDA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppsInsights.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C030, &qword_230E73658);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v16 - v8;
  v10 = *v1;
  v12 = v1[1];
  v11 = v1[2];
  v16[0] = v1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D9DDA8();
  sub_230E69A50();
  v20 = 0;
  sub_230E69840();
  if (!v2)
  {
    v14 = v16[0];
    v19 = 1;
    sub_230E69830();
    v18 = 2;
    sub_230E69830();
    v16[1] = v14;
    v17 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C040, &qword_230E73660);
    sub_230D9DDFC();
    sub_230E69850();
  }

  return (*(v5 + 8))(v9, v4);
}

unint64_t sub_230D9DDA8()
{
  result = qword_27DB5C038;
  if (!qword_27DB5C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C038);
  }

  return result;
}

unint64_t sub_230D9DDFC()
{
  result = qword_27DB5C048;
  if (!qword_27DB5C048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5C040, &qword_230E73660);
    sub_230D9DE80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C048);
  }

  return result;
}

unint64_t sub_230D9DE80()
{
  result = qword_27DB5C050;
  if (!qword_27DB5C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C050);
  }

  return result;
}

uint64_t AppsInsights.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C058, &qword_230E73668);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D9DDA8();
  sub_230E69A30();
  if (!v2)
  {
    v23 = 0;
    v12 = sub_230E69750();
    v22 = 1;
    sub_230E69740();
    v14 = v13;
    v21 = 2;
    sub_230E69740();
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C040, &qword_230E73660);
    v20 = 3;
    sub_230D9E104();
    sub_230E69760();
    (*(v6 + 8))(v10, v5);
    v18 = v19[1];
    *a2 = v12;
    a2[1] = v14;
    a2[2] = v17;
    a2[3] = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_230D9E104()
{
  result = qword_27DB5C060;
  if (!qword_27DB5C060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5C040, &qword_230E73660);
    sub_230D9E188();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C060);
  }

  return result;
}

unint64_t sub_230D9E188()
{
  result = qword_27DB5C068;
  if (!qword_27DB5C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C068);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20ServicesIntelligence17MediaDistributionVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy248_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_230D9E270(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
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

uint64_t sub_230D9E2B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_230D9E378(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_230D9E3C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_230D9E464(uint64_t a1, int a2)
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

uint64_t sub_230D9E4AC(uint64_t result, int a2, int a3)
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

uint64_t sub_230D9E504(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_230D9E54C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_230D9E5B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_230D9E600(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_230D9E660(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_230D9E6A8(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_230D9E710(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_230D9E758(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_230D9E8AC()
{
  result = qword_27DB5C070;
  if (!qword_27DB5C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C070);
  }

  return result;
}

unint64_t sub_230D9E904()
{
  result = qword_27DB5C078;
  if (!qword_27DB5C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C078);
  }

  return result;
}

unint64_t sub_230D9E95C()
{
  result = qword_27DB5C080;
  if (!qword_27DB5C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C080);
  }

  return result;
}

unint64_t sub_230D9E9B4()
{
  result = qword_27DB5C088;
  if (!qword_27DB5C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C088);
  }

  return result;
}

unint64_t sub_230D9EA0C()
{
  result = qword_27DB5C090;
  if (!qword_27DB5C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C090);
  }

  return result;
}

unint64_t sub_230D9EA64()
{
  result = qword_27DB5C098;
  if (!qword_27DB5C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C098);
  }

  return result;
}

unint64_t sub_230D9EABC()
{
  result = qword_27DB5C0A0;
  if (!qword_27DB5C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C0A0);
  }

  return result;
}

unint64_t sub_230D9EB14()
{
  result = qword_27DB5C0A8;
  if (!qword_27DB5C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C0A8);
  }

  return result;
}

unint64_t sub_230D9EB6C()
{
  result = qword_27DB5C0B0;
  if (!qword_27DB5C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C0B0);
  }

  return result;
}

unint64_t sub_230D9EBC4()
{
  result = qword_27DB5C0B8;
  if (!qword_27DB5C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C0B8);
  }

  return result;
}

unint64_t sub_230D9EC1C()
{
  result = qword_27DB5C0C0;
  if (!qword_27DB5C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C0C0);
  }

  return result;
}

unint64_t sub_230D9EC74()
{
  result = qword_27DB5C0C8;
  if (!qword_27DB5C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C0C8);
  }

  return result;
}

unint64_t sub_230D9ECCC()
{
  result = qword_27DB5C0D0;
  if (!qword_27DB5C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C0D0);
  }

  return result;
}

unint64_t sub_230D9ED24()
{
  result = qword_27DB5C0D8;
  if (!qword_27DB5C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C0D8);
  }

  return result;
}

unint64_t sub_230D9ED7C()
{
  result = qword_27DB5C0E0;
  if (!qword_27DB5C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C0E0);
  }

  return result;
}

unint64_t sub_230D9EDD4()
{
  result = qword_27DB5C0E8;
  if (!qword_27DB5C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C0E8);
  }

  return result;
}

unint64_t sub_230D9EE2C()
{
  result = qword_27DB5C0F0;
  if (!qword_27DB5C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C0F0);
  }

  return result;
}

unint64_t sub_230D9EE84()
{
  result = qword_27DB5C0F8;
  if (!qword_27DB5C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C0F8);
  }

  return result;
}

unint64_t sub_230D9EEDC()
{
  result = qword_27DB5C100;
  if (!qword_27DB5C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C100);
  }

  return result;
}

unint64_t sub_230D9EF34()
{
  result = qword_27DB5C108;
  if (!qword_27DB5C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C108);
  }

  return result;
}

unint64_t sub_230D9EF8C()
{
  result = qword_27DB5C110;
  if (!qword_27DB5C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C110);
  }

  return result;
}

unint64_t sub_230D9EFE4()
{
  result = qword_27DB5C118;
  if (!qword_27DB5C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C118);
  }

  return result;
}

unint64_t sub_230D9F03C()
{
  result = qword_27DB5C120;
  if (!qword_27DB5C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C120);
  }

  return result;
}

unint64_t sub_230D9F094()
{
  result = qword_27DB5C128;
  if (!qword_27DB5C128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C128);
  }

  return result;
}

unint64_t sub_230D9F0EC()
{
  result = qword_27DB5C130;
  if (!qword_27DB5C130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C130);
  }

  return result;
}

unint64_t sub_230D9F144()
{
  result = qword_27DB5C138;
  if (!qword_27DB5C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C138);
  }

  return result;
}

unint64_t sub_230D9F19C()
{
  result = qword_27DB5C140;
  if (!qword_27DB5C140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C140);
  }

  return result;
}

unint64_t sub_230D9F1F4()
{
  result = qword_27DB5C148;
  if (!qword_27DB5C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C148);
  }

  return result;
}

unint64_t sub_230D9F24C()
{
  result = qword_27DB5C150;
  if (!qword_27DB5C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C150);
  }

  return result;
}

unint64_t sub_230D9F2A4()
{
  result = qword_27DB5C158;
  if (!qword_27DB5C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C158);
  }

  return result;
}

unint64_t sub_230D9F2FC()
{
  result = qword_27DB5C160;
  if (!qword_27DB5C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C160);
  }

  return result;
}

unint64_t sub_230D9F354()
{
  result = qword_27DB5C168;
  if (!qword_27DB5C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C168);
  }

  return result;
}

unint64_t sub_230D9F3AC()
{
  result = qword_27DB5C170;
  if (!qword_27DB5C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C170);
  }

  return result;
}

unint64_t sub_230D9F404()
{
  result = qword_27DB5C178;
  if (!qword_27DB5C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C178);
  }

  return result;
}

unint64_t sub_230D9F45C()
{
  result = qword_27DB5C180;
  if (!qword_27DB5C180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C180);
  }

  return result;
}

unint64_t sub_230D9F4B4()
{
  result = qword_27DB5C188;
  if (!qword_27DB5C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C188);
  }

  return result;
}

unint64_t sub_230D9F50C()
{
  result = qword_27DB5C190;
  if (!qword_27DB5C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C190);
  }

  return result;
}

unint64_t sub_230D9F564()
{
  result = qword_27DB5C198;
  if (!qword_27DB5C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C198);
  }

  return result;
}

unint64_t sub_230D9F5BC()
{
  result = qword_27DB5C1A0;
  if (!qword_27DB5C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C1A0);
  }

  return result;
}

unint64_t sub_230D9F614()
{
  result = qword_27DB5C1A8;
  if (!qword_27DB5C1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C1A8);
  }

  return result;
}

unint64_t sub_230D9F66C()
{
  result = qword_27DB5C1B0;
  if (!qword_27DB5C1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C1B0);
  }

  return result;
}

unint64_t sub_230D9F6C4()
{
  result = qword_27DB5C1B8;
  if (!qword_27DB5C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C1B8);
  }

  return result;
}

unint64_t sub_230D9F71C()
{
  result = qword_27DB5C1C0;
  if (!qword_27DB5C1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C1C0);
  }

  return result;
}

unint64_t sub_230D9F774()
{
  result = qword_27DB5C1C8;
  if (!qword_27DB5C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C1C8);
  }

  return result;
}

unint64_t sub_230D9F7CC()
{
  result = qword_27DB5C1D0;
  if (!qword_27DB5C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C1D0);
  }

  return result;
}

uint64_t sub_230D9F820(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x747865746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000230E82880 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E49636973756DLL && a2 == 0xED00007374686769 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4974736163646F70 && a2 == 0xEF7374686769736ELL || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736E496F65646976 && a2 == 0xED00007374686769 || (sub_230E698C0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69736E4973707061 && a2 == 0xEC00000073746867)
  {

    return 5;
  }

  else
  {
    v6 = sub_230E698C0();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_230D9FA40(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617246656D6974 && a2 == 0xE900000000000065 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365536C61746F74 && a2 == 0xED0000736E6F6973 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000230E828A0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230D9FBBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449676E6F73 && a2 == 0xE600000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x747369747261 && a2 == 0xE600000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x436E6F6973736573 && a2 == 0xEC000000746E756FLL || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6365536C61746F74 && a2 == 0xEC00000073646E6FLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_230E698C0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_230D9FD68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449747369747261 && a2 == 0xE800000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x436E6F6973736573 && a2 == 0xEC000000746E756FLL || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6365536C61746F74 && a2 == 0xEC00000073646E6FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230D9FED4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44496D75626C61 && a2 == 0xE700000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x747369747261 && a2 == 0xE600000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x436E6F6973736573 && a2 == 0xEC000000746E756FLL || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6365536C61746F74 && a2 == 0xEC00000073646E6FLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_230E698C0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_230DA0088(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61746E6563726570 && a2 == 0xEA00000000006567 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x436E6F6973736573 && a2 == 0xEC000000746E756FLL || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6365536C61746F74 && a2 == 0xEC00000073646E6FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230DA01FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365536C61746F74 && a2 == 0xED0000736E6F6973;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000230E828C0 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000230E828E0 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974656C706D6F63 && a2 == 0xEE00657461526E6FLL || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000230E82900 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000230E82920 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000230E82940 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000230E82960 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_230E698C0();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_230DA04A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496C656E6E616863 && a2 == 0xE900000000000044 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x436E6F6973736573 && a2 == 0xEC000000746E756FLL || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6365536C61746F74 && a2 == 0xEC00000073646E6FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230DA0618(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4965646F73697065 && a2 == 0xE900000000000044 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 2003789939 && a2 == 0xE400000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x436E6F6973736573 && a2 == 0xEC000000746E756FLL || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6365536C61746F74 && a2 == 0xEC00000073646E6FLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_230E698C0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_230DA07D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365536C61746F74 && a2 == 0xED0000736E6F6973;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000230E828C0 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000230E828E0 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974656C706D6F63 && a2 == 0xEE00657461526E6FLL || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000230E82980 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000230E829A0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_230E698C0();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_230DA09E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x436E6F6973736573 && a2 == 0xEC000000746E756FLL || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6365536C61746F74 && a2 == 0xEC00000073646E6FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230DA0B04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365536C61746F74 && a2 == 0xED0000736E6F6973;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000230E829C0 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000230E828E0 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974656C706D6F63 && a2 == 0xEE00657461526E6FLL || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000230E829E0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_230E698C0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_230DA0CCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x436E6F6973736573 && a2 == 0xEC000000746E756FLL || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6365536C61746F74 && a2 == 0xEC00000073646E6FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230DA0DEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365536C61746F74 && a2 == 0xED0000736E6F6973;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6173556C61746F74 && a2 == 0xEE00656D69546567 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000230E828E0 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7274736944707061 && a2 == 0xEF6E6F6974756269)
  {

    return 3;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t ContextualContentRetrieval.generateAggregatedInsights(content:context:timeFrame:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  *(v5 + 64) = a1;
  *(v5 + 72) = a4;
  v7 = *a2;
  v8 = *a3;
  v9 = a3[1];
  *(v5 + 80) = v4;
  *(v5 + 88) = v8;
  *(v5 + 96) = v9;
  v10 = *(a3 + 16);
  *(v5 + 33) = v10;
  *(v5 + 56) = v7;
  *(v5 + 16) = v8;
  *(v5 + 24) = v9;
  *(v5 + 32) = v10;
  v11 = swift_task_alloc();
  *(v5 + 104) = v11;
  *v11 = v5;
  v11[1] = sub_230DA10F0;

  return sub_230DAECF0(v5 + 40, (v5 + 56), v5 + 16, a4);
}

uint64_t sub_230DA10F0()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_230DA1404;
  }

  else
  {
    v3 = sub_230DA1204;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230DA1204()
{
  v42 = v0;
  v1 = *(v0 + 33);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 64);
  v7 = *(v0 + 48);
  *&v33 = *(v0 + 40);
  BYTE8(v33) = v7;
  sub_230DA2190(&v33, &v37);
  v8 = v37;
  v9 = BYTE8(v37);
  *&v33 = v3;
  *(&v33 + 1) = v2;
  LOBYTE(v34) = v1;
  v10 = sub_230DA23B0(&v33);
  v31 = v11;
  v32 = v10;
  v12 = sub_230DA24CC(v5);
  v29 = v13;
  v30 = v12;
  v28 = *(v8 + 16);
  *&v33 = v8;
  BYTE8(v33) = v9;
  v14 = sub_230DA2890(&v33);
  *&v37 = v8;
  BYTE8(v37) = v9;
  sub_230DA1644(&v37, &v33);
  v15 = v33;
  *&v37 = v8;
  BYTE8(v37) = v9;
  sub_230D91304(&v37, &v33);
  v40 = v8;
  v41 = v9;
  sub_230D948AC(&v40, &v37);
  v25 = v38;
  v26 = v39;
  v27 = v37;
  v40 = v8;
  v41 = v9;
  sub_230D95E7C(&v40, &v37);
  v16 = v39;
  v23 = v37;
  v24 = v38;
  v40 = v8;
  v41 = v9;
  sub_230D902E8(&v40, &v37);

  v17 = v37;
  v18 = v38;
  *v6 = v32;
  *(v6 + 8) = v31;
  *(v6 + 16) = v30;
  *(v6 + 24) = v29;
  *(v6 + 32) = v28;
  *(v6 + 40) = v14;
  *(v6 + 48) = v15;
  v19 = v34;
  *(v6 + 64) = v33;
  *(v6 + 80) = v19;
  v20 = v36;
  *(v6 + 96) = v35;
  *(v6 + 112) = v20;
  *(v6 + 128) = v27;
  *(v6 + 144) = v25;
  *(v6 + 160) = v26;
  *(v6 + 176) = v23;
  *(v6 + 192) = v24;
  *(v6 + 208) = v16;
  *(v6 + 216) = v17;
  *(v6 + 232) = v18;
  v21 = *(v0 + 8);

  return v21();
}

uint64_t ContextualContentRetrieval.processAggregatedInsights(from:content:context:timeFrame:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 16) = a1;
  *(v6 + 24) = a5;
  v7 = *a2;
  *(v6 + 32) = v5;
  *(v6 + 40) = v7;
  *(v6 + 64) = *(a2 + 8);
  *(v6 + 48) = *a4;
  *(v6 + 65) = *(a4 + 16);
  return MEMORY[0x2822009F8](sub_230DA145C, 0, 0);
}

uint64_t sub_230DA145C()
{
  v41 = v0;
  v1 = *(v0 + 65);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 32);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  *&v32 = *(v0 + 40);
  BYTE8(v32) = v4;
  sub_230DA2190(&v32, &v36);
  v8 = v36;
  v9 = BYTE8(v36);
  *&v32 = v3;
  *(&v32 + 1) = v2;
  LOBYTE(v33) = v1;
  v10 = sub_230DA23B0(&v32);
  v30 = v11;
  v31 = v10;
  v12 = sub_230DA24CC(v6);
  v14 = v13;
  v29 = *(v8 + 16);
  *&v32 = v8;
  BYTE8(v32) = v9;
  v15 = sub_230DA2890(&v32);
  *&v36 = v8;
  BYTE8(v36) = v9;
  sub_230DA1644(&v36, &v32);
  v16 = v32;
  *&v36 = v8;
  BYTE8(v36) = v9;
  sub_230D91304(&v36, &v32);
  v39 = v8;
  v40 = v9;
  sub_230D948AC(&v39, &v36);
  v26 = v37;
  v27 = v38;
  v28 = v36;
  v39 = v8;
  v40 = v9;
  sub_230D95E7C(&v39, &v36);
  v24 = v36;
  v25 = v37;
  v17 = v38;
  v39 = v8;
  v40 = v9;
  sub_230D902E8(&v39, &v36);

  v18 = v36;
  v19 = v37;
  *v7 = v31;
  *(v7 + 8) = v30;
  *(v7 + 16) = v12;
  *(v7 + 24) = v14;
  *(v7 + 32) = v29;
  *(v7 + 40) = v15;
  *(v7 + 48) = v16;
  v20 = v33;
  *(v7 + 64) = v32;
  *(v7 + 80) = v20;
  v21 = v35;
  *(v7 + 96) = v34;
  *(v7 + 112) = v21;
  *(v7 + 128) = v28;
  *(v7 + 144) = v26;
  *(v7 + 160) = v27;
  *(v7 + 176) = v24;
  *(v7 + 192) = v25;
  *(v7 + 208) = v17;
  *(v7 + 216) = v18;
  *(v7 + 232) = v19;
  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_230DA1644@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 8))
  {
    goto LABEL_57;
  }

  v109 = a2;
  v2 = *result;

  v3 = sub_230D0E4B4(MEMORY[0x277D84F90]);
  v113 = *(v2 + 16);
  if (!v113)
  {
LABEL_45:

    if (*(v3 + 16) >= 2uLL)
    {
      v48 = 0;
      v49 = v3 + 64;
      v50 = 1 << *(v3 + 32);
      v51 = -1;
      if (v50 < 64)
      {
        v51 = ~(-1 << v50);
      }

      v52 = v51 & *(v3 + 64);
      v53 = (v50 + 63) >> 6;
      v54 = 0.0;
      if (v52)
      {
        while (1)
        {
          v55 = v48;
LABEL_54:
          v56 = __clz(__rbit64(v52));
          v52 &= v52 - 1;
          v54 = v54 + *(*(v3 + 56) + ((v55 << 10) | (16 * v56)) + 8);
          if (!v52)
          {
            goto LABEL_50;
          }
        }
      }

      while (1)
      {
LABEL_50:
        v55 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_106;
        }

        if (v55 >= v53)
        {
          break;
        }

        v52 = *(v49 + 8 * v55);
        ++v48;
        if (v52)
        {
          v48 = v55;
          goto LABEL_54;
        }
      }

      v57 = 0;
      v58 = 0;
      v59 = 1 << *(v3 + 32);
      v60 = -1;
      if (v59 < 64)
      {
        v60 = ~(-1 << v59);
      }

      v61 = v60 & *(v3 + 64);
      v62 = (v59 + 63) >> 6;
      do
      {
        if (v61)
        {
          v63 = v57;
        }

        else
        {
          do
          {
            v63 = v57 + 1;
            if (__OFADD__(v57, 1))
            {
              goto LABEL_107;
            }

            if (v63 >= v62)
            {
              goto LABEL_70;
            }

            v61 = *(v49 + 8 * v63);
            ++v57;
          }

          while (!v61);
          v57 = v63;
        }

        v64 = __clz(__rbit64(v61));
        v61 &= v61 - 1;
        v65 = *(*(v3 + 56) + ((v63 << 10) | (16 * v64)));
        v26 = __OFADD__(v58, v65);
        v58 += v65;
      }

      while (!v26);
      __break(1u);
LABEL_70:
      v66 = MEMORY[0x277D84F90];
      v114 = sub_230D0EAD0(MEMORY[0x277D84F90]);
      v67 = sub_230D0EAD0(v66);
      v68 = 1 << *(v3 + 32);
      v69 = -1;
      if (v68 < 64)
      {
        v69 = ~(-1 << v68);
      }

      v70 = v69 & *(v3 + 64);
      v71 = (v68 + 63) >> 6;
      v72 = v58;

      v73 = 0;
      v110 = v71;
      for (i = v58; ; v58 = i)
      {
        if (!v70)
        {
          while (1)
          {
            v75 = v73 + 1;
            if (__OFADD__(v73, 1))
            {
              break;
            }

            if (v75 >= v71)
            {

              *v109 = v114;
              v109[1] = v67;
              return result;
            }

            v70 = *(v49 + 8 * v75);
            ++v73;
            if (v70)
            {
              goto LABEL_80;
            }
          }

LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
          goto LABEL_112;
        }

        v75 = v73;
LABEL_80:
        v76 = (v75 << 10) | (16 * __clz(__rbit64(v70)));
        v77 = *(v3 + 56) + v76;
        if (v54 <= 0.0)
        {
          v78 = 0.0;
          v79 = 0.0;
          if (v58 <= 0)
          {
            goto LABEL_85;
          }
        }

        else
        {
          v78 = *(v77 + 8) / v54;
          if (v58 < 1)
          {
            v79 = 0.0;
            goto LABEL_85;
          }
        }

        v79 = *v77 / v72 * 100.0;
LABEL_85:
        v80 = (*(v3 + 48) + v76);
        v82 = *v80;
        v81 = v80[1];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v84 = sub_230DA41A0(v82, v81);
        v86 = v114[2];
        v87 = (v85 & 1) == 0;
        v26 = __OFADD__(v86, v87);
        v88 = v86 + v87;
        if (v26)
        {
          goto LABEL_114;
        }

        v89 = v85;
        if (v114[3] >= v88)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v107 = v84;
            sub_230DBAB18();
            v84 = v107;
          }
        }

        else
        {
          sub_230DB8198(v88, isUniquelyReferenced_nonNull_native);
          v84 = sub_230DA41A0(v82, v81);
          if ((v89 & 1) != (v90 & 1))
          {
            goto LABEL_118;
          }
        }

        v91 = round(v78 * 100.0) / 100.0;
        if (v89)
        {
          *(v114[7] + 8 * v84) = v91;
        }

        else
        {
          v114[(v84 >> 6) + 8] |= 1 << v84;
          v92 = (v114[6] + 16 * v84);
          *v92 = v82;
          v92[1] = v81;
          *(v114[7] + 8 * v84) = v91;
          v93 = v114[2];
          v26 = __OFADD__(v93, 1);
          v94 = v93 + 1;
          if (v26)
          {
            goto LABEL_116;
          }

          v114[2] = v94;
        }

        v95 = swift_isUniquelyReferenced_nonNull_native();
        v116 = v67;
        v96 = sub_230DA41A0(v82, v81);
        v98 = *(v67 + 16);
        v99 = (v97 & 1) == 0;
        v26 = __OFADD__(v98, v99);
        v100 = v98 + v99;
        if (v26)
        {
          goto LABEL_115;
        }

        v101 = v97;
        if (*(v67 + 24) >= v100)
        {
          if ((v95 & 1) == 0)
          {
            v108 = v96;
            sub_230DBAB18();
            v96 = v108;
          }
        }

        else
        {
          sub_230DB8198(v100, v95);
          v96 = sub_230DA41A0(v82, v81);
          if ((v101 & 1) != (v102 & 1))
          {
            goto LABEL_118;
          }
        }

        v70 &= v70 - 1;
        v103 = round(v79) / 100.0;
        if (v101)
        {
          v74 = v96;

          v67 = v116;
          *(v116[7] + 8 * v74) = v103;
        }

        else
        {
          v67 = v116;
          v116[(v96 >> 6) + 8] |= 1 << v96;
          v104 = (v116[6] + 16 * v96);
          *v104 = v82;
          v104[1] = v81;
          *(v116[7] + 8 * v96) = v103;
          v105 = v116[2];
          v26 = __OFADD__(v105, 1);
          v106 = v105 + 1;
          if (v26)
          {
            goto LABEL_117;
          }

          v116[2] = v106;
        }

        v73 = v75;
        v71 = v110;
      }
    }

    a2 = v109;
LABEL_57:
    *a2 = 0;
    a2[1] = 0;
    return result;
  }

  v4 = 0;
  v5 = (v2 + 72);
  v111 = v2;
  while (1)
  {
    if (v4 >= *(v2 + 16))
    {
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    ++v4;
    v8 = *(v5 - 8);
    v9 = 0x6F65646976;
    if (v8 != 2)
    {
      v9 = 0x6E776F6E6B6E75;
    }

    v10 = 0xE500000000000000;
    if (v8 == 2)
    {
      v11 = 0xE500000000000000;
    }

    else
    {
      v11 = 0xE700000000000000;
    }

    v12 = 0x636973756DLL;
    if (*(v5 - 8))
    {
      v12 = 0x74736163646F70;
      v10 = 0xE700000000000000;
    }

    v13 = *(v5 - 8) <= 1u ? v12 : v9;
    v14 = *(v5 - 8) <= 1u ? v10 : v11;
    v15 = round(*v5 * 100.0) / 100.0;
    if (*(v3 + 16))
    {
      v16 = sub_230DA41A0(v13, v14);
      if (v17)
      {
        break;
      }
    }

    v30 = swift_isUniquelyReferenced_nonNull_native();
    v31 = sub_230DA41A0(v13, v14);
    v33 = *(v3 + 16);
    v34 = (v32 & 1) == 0;
    v26 = __OFADD__(v33, v34);
    v35 = v33 + v34;
    if (v26)
    {
      goto LABEL_109;
    }

    v36 = v32;
    if (*(v3 + 24) < v35)
    {
      sub_230DB732C(v35, v30);
      v31 = sub_230DA41A0(v13, v14);
      if ((v36 & 1) != (v37 & 1))
      {
        goto LABEL_118;
      }

LABEL_33:
      if ((v36 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_4;
    }

    if (v30)
    {
      goto LABEL_33;
    }

    v43 = v31;
    sub_230DBA320();
    v31 = v43;
    if ((v36 & 1) == 0)
    {
LABEL_34:
      *(v3 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v38 = (*(v3 + 48) + 16 * v31);
      *v38 = v13;
      v38[1] = v14;
      v39 = *(v3 + 56) + 16 * v31;
      *v39 = 1;
      *(v39 + 8) = v15;
      v40 = *(v3 + 16);
      v26 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v26)
      {
        goto LABEL_110;
      }

LABEL_44:
      *(v3 + 16) = v41;
      goto LABEL_6;
    }

LABEL_4:
    v6 = v31;

    v7 = *(v3 + 56) + 16 * v6;
    *v7 = 1;
LABEL_5:
    *(v7 + 8) = v15;
LABEL_6:
    v2 = v111;
    v5 += 21;
    if (v113 == v4)
    {
      goto LABEL_45;
    }
  }

  v18 = *(v3 + 56) + 16 * v16;
  v19 = *v18 + 1;
  if (__OFADD__(*v18, 1))
  {
    goto LABEL_111;
  }

  v20 = *(v18 + 8);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v115 = v3;
  v22 = sub_230DA41A0(v13, v14);
  v24 = *(v3 + 16);
  v25 = (v23 & 1) == 0;
  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (!v26)
  {
    v28 = v23;
    if (*(v3 + 24) < v27)
    {
      sub_230DB732C(v27, v21);
      v22 = sub_230DA41A0(v13, v14);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_118;
      }

      goto LABEL_38;
    }

    if (v21)
    {
LABEL_38:
      v15 = v15 + v20;
      if ((v28 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v44 = v22;
      sub_230DBA320();
      v22 = v44;
      v15 = v15 + v20;
      if ((v28 & 1) == 0)
      {
LABEL_43:
        v3 = v115;
        v115[(v22 >> 6) + 8] |= 1 << v22;
        v45 = (v115[6] + 16 * v22);
        *v45 = v13;
        v45[1] = v14;
        v46 = v115[7] + 16 * v22;
        *v46 = v19;
        *(v46 + 8) = v15;
        v47 = v115[2];
        v26 = __OFADD__(v47, 1);
        v41 = v47 + 1;
        if (v26)
        {
          goto LABEL_113;
        }

        goto LABEL_44;
      }
    }

    v42 = v22;

    v3 = v115;
    v7 = v115[7] + 16 * v42;
    *v7 = v19;
    goto LABEL_5;
  }

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
  result = sub_230E69950();
  __break(1u);
  return result;
}

void sub_230DA1E8C(uint64_t a1, double a2, double a3, __n128 a4, __n128 a5, double a6)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = a1 + 32;
    v9 = MEMORY[0x277D84F90];
    while (2)
    {
      v10 = (v8 + 168 * v7);
      v11 = v7;
      while (1)
      {
        if (v11 >= v6)
        {
          __break(1u);
LABEL_34:
          __break(1u);
          return;
        }

        v12 = v10[9];
        v50 = v10[8];
        v51 = v12;
        v52 = *(v10 + 20);
        v13 = v10[5];
        v46 = v10[4];
        v47 = v13;
        v14 = v10[7];
        v48 = v10[6];
        v49 = v14;
        v15 = v10[1];
        v42 = *v10;
        v43 = v15;
        v16 = v10[3];
        v44 = v10[2];
        v45 = v16;
        v7 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_34;
        }

        if (v45)
        {
          break;
        }

        ++v11;
        v10 = (v10 + 168);
        if (v7 == v6)
        {
          goto LABEL_14;
        }
      }

      sub_230D93514(&v42, v41);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_230D48F00(0, *(v9 + 16) + 1, 1);
        v9 = v53;
      }

      v19 = *(v9 + 16);
      v18 = *(v9 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_230D48F00((v18 > 1), v19 + 1, 1);
        v9 = v53;
      }

      *(v9 + 16) = v19 + 1;
      v20 = v9 + 168 * v19;
      v21 = v42;
      v22 = v44;
      *(v20 + 48) = v43;
      *(v20 + 64) = v22;
      *(v20 + 32) = v21;
      v23 = v45;
      v24 = v46;
      a5 = v48;
      *(v20 + 112) = v47;
      *(v20 + 128) = a5;
      *(v20 + 80) = v23;
      *(v20 + 96) = v24;
      v25 = v49;
      v26 = v50;
      a4 = v51;
      *(v20 + 192) = v52;
      *(v20 + 160) = v26;
      *(v20 + 176) = a4;
      *(v20 + 144) = v25;
      if (v7 != v6)
      {
        continue;
      }

      break;
    }

LABEL_14:
    v27 = *(v9 + 16);
    if (v27)
    {
      if (v27 == 1)
      {
        v28 = 0;
        v29 = 0.0;
        goto LABEL_27;
      }

      v28 = v27 & 0x7FFFFFFFFFFFFFFELL;
      v33 = (v9 + 248);
      v29 = 0.0;
      v34 = v27 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        a5.n128_u32[0] = *(v33 - 42);
        a5.n128_f64[0] = a5.n128_u64[0];
        LODWORD(a6) = *v33;
        a6 = *&a6;
        v35 = *(v33 - 22) / a5.n128_f64[0];
        a4.n128_f64[0] = *(v33 - 1) / a6;
        if (v35 > 1.0)
        {
          v35 = 1.0;
        }

        if (a4.n128_f64[0] > 1.0)
        {
          a4.n128_f64[0] = 1.0;
        }

        v29 = v29 + v35 + a4.n128_f64[0];
        v33 += 42;
        v34 -= 2;
      }

      while (v34);
      if (v27 != v28)
      {
LABEL_27:
        v36 = v27 - v28;
        v37 = (v9 + 168 * v28 + 80);
        do
        {
          v38 = *(v37 - 1);
          v39 = *v37;
          v37 += 21;
          a4.n128_u32[0] = v39;
          a4.n128_f64[0] = a4.n128_u64[0];
          v40 = v38 / a4.n128_f64[0];
          if (v40 > 1.0)
          {
            v40 = 1.0;
          }

          v29 = v29 + v40;
          --v36;
        }

        while (v36);
      }

      return;
    }

    v30 = sub_230E68D60();
    v31 = sub_230E69400();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_230D02000, v30, v31, "[AggregationUtilities][calculateCompletionRate] No sessions with valid content length", v32, 2u);
      MEMORY[0x23191EAE0](v32, -1, -1);
    }
  }
}

uint64_t sub_230DA2190@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {
    *a2 = v3;
    *(a2 + 8) = 1;
  }

  else
  {
    v5 = *(v3 + 16);
    v6 = *a1;

    if (v5)
    {
      v7 = 0;
      v8 = v3 + 32;
      v9 = MEMORY[0x277D84F90];
      do
      {
        v10 = *(v3 + 16);
        v11 = (v8 + 168 * v7);
        v12 = v7;
        while (1)
        {
          if (v12 >= v10)
          {
            __break(1u);
            return result;
          }

          v13 = *v11;
          v14 = v11[2];
          v35 = v11[1];
          v36 = v14;
          v34 = v13;
          v15 = v11[3];
          v16 = v11[4];
          v17 = v11[6];
          v39 = v11[5];
          v40 = v17;
          v37 = v15;
          v38 = v16;
          v18 = v11[7];
          v19 = v11[8];
          v20 = v11[9];
          v44 = *(v11 + 20);
          v42 = v19;
          v43 = v20;
          v41 = v18;
          v7 = v12 + 1;
          if (*(&v36 + 1) >= 15.0)
          {
            break;
          }

          v11 = (v11 + 168);
          ++v12;
          if (v5 == v7)
          {
            goto LABEL_19;
          }
        }

        v32 = v8;
        sub_230D93514(&v34, v33);
        result = swift_isUniquelyReferenced_nonNull_native();
        v45 = v9;
        if ((result & 1) == 0)
        {
          result = sub_230D48F00(0, *(v9 + 16) + 1, 1);
          v9 = v45;
        }

        v22 = *(v9 + 16);
        v21 = *(v9 + 24);
        if (v22 >= v21 >> 1)
        {
          result = sub_230D48F00((v21 > 1), v22 + 1, 1);
          v9 = v45;
        }

        *(v9 + 16) = v22 + 1;
        v23 = v9 + 168 * v22;
        v24 = v34;
        v25 = v36;
        *(v23 + 48) = v35;
        *(v23 + 64) = v25;
        *(v23 + 32) = v24;
        v26 = v37;
        v27 = v38;
        v28 = v40;
        *(v23 + 112) = v39;
        *(v23 + 128) = v28;
        *(v23 + 80) = v26;
        *(v23 + 96) = v27;
        v29 = v41;
        v30 = v42;
        v31 = v43;
        *(v23 + 192) = v44;
        *(v23 + 160) = v30;
        *(v23 + 176) = v31;
        *(v23 + 144) = v29;
        v8 = v32;
      }

      while (v5 - 1 != v12);
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

LABEL_19:

    *a2 = v9;
    *(a2 + 8) = 0;
  }

  return result;
}
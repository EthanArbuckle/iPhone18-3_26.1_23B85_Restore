void sub_1AF9024D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a2 + 528) + 16);
  if (v3)
  {
    v6 = byte_1EB6C31AB;
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    *(v8 + 32) = a3;
    *(v8 + 40) = a2;
    v10[4] = sub_1AF904254;
    v10[5] = v8;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1AF719CC4;
    v10[3] = &unk_1F24E6118;
    v9 = _Block_copy(v10);
    swift_unknownObjectRetain();

    [v3 addCompletedHandler_];
    swift_unknownObjectRelease();
    _Block_release(v9);
  }
}

unint64_t sub_1AF902768()
{
  result = qword_1EB640178;
  if (!qword_1EB640178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640178);
  }

  return result;
}

uint64_t sub_1AF9027C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AF90280C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(v1 + 32);
  v112[0] = *(v1 + 16);
  v112[1] = v4;
  v113 = *(v1 + 48);
  sub_1AF6B06C0(a1, v112, 0x200000000, v99);
  if (*&v99[0] && v103 >= 1 && *(&v101 + 1))
  {
    v69 = v1;
    v70 = v3;
    v5 = *(&v100 + 1);
    v6 = *(&v100 + 1) + 48 * *(&v101 + 1);
    v106 = v100;
    v107 = v101;
    v108 = v102;
    v109 = v103;
    v104 = v99[0];
    v105 = v99[1];
    sub_1AF5DD298(&v104, &v93);
    v71 = v6;
    do
    {
      v7 = *(v5 + 40);
      v8 = *(v7 + 376);
      swift_retain_n();
      os_unfair_lock_lock(v8);
      os_unfair_lock_lock(*(v7 + 344));
      v9 = *(v7 + 24);

      *&v95 = 0;
      v93 = 0u;
      v94 = 0u;
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
      v10 = sub_1AF65A4B4(v9, 0, 0, &type metadata for TextureCPURuntime, &off_1F2543E80, &v93, &v87);

      sub_1AF5DD41C(&v87);
      sub_1AF5DD41C(&v93);
      if (sub_1AF649CEC())
      {
        sub_1AF649D40(v10);
      }

      else
      {
        v77 = v5;
        v11 = *(v7 + 232);
        v12 = *(v7 + 240);
        v74 = *(v7 + 120);
        v84 = *(v7 + 28);
        v83 = *(v7 + 32);
        v13 = *(v7 + 16);
        v14 = *(v7 + 40);
        v15 = *(v14 + 200);
        v81 = *(*(v13 + 88) + 8 * v10 + 32);

        if ((v15 & 1) != 0 || *(v81 + 200) == 1)
        {
          *(v13 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
          v14 = *(v7 + 40);
        }

        v16 = *(v7 + 256);
        sub_1AF5B4FCC(v14, v11, v12, 0, v7);
        v79 = v16;
        v78 = *(v7 + 256);
        v17 = v78 - v16;
        if (v78 == v16)
        {
          v18 = 0;
        }

        else
        {
          v18 = v16;
        }

        *&v87 = v18;
        v19 = *(*(v7 + 40) + 24);
        v20 = *(v19 + 16);
        if (v20)
        {
          v21 = v19 + 32;

          for (i = 0; i != v20; ++i)
          {
            v23 = v21 + 40 * i;
            if ((*(v23 + 32) & 1) == 0)
            {
              v24 = *(v81 + 24);
              v25 = *(v24 + 16);
              if (v25)
              {
                v26 = (v24 + 32);
                while (*v26 != *v23)
                {
                  v26 += 5;
                  if (!--v25)
                  {
                    goto LABEL_16;
                  }
                }
              }

              else
              {
LABEL_16:
                sub_1AF640BC8();
              }
            }
          }
        }

        if (*(v13 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
        {
          vfx_counters.add(_:_:)(*(v13 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v7 + 72) * v17);
        }

        if (*(v7 + 184))
        {
          v27 = 0;
        }

        else
        {
          v27 = *(v7 + 168);
        }

        *&v110[0] = 0;

        MEMORY[0x1EEE9AC00](v28, v29);
        v30 = v84;
        v31 = v83;
        DWORD2(v94) = -1;
        *&v95 = v79;
        *(&v95 + 1) = v78;
        *&v96 = v79;
        *(&v96 + 1) = v78;
        *&v93 = v79;
        *(&v93 + 1) = v78;
        *&v94 = v27;
        if (v17 < 1)
        {

          v5 = v77;
        }

        else
        {
          v5 = v77;
          do
          {
            LOBYTE(v86[0]) = v31;
            sub_1AF6248A8(v10, v30 | (v31 << 32), v74, v13, &v93, sub_1AF5C5E08);
            v31 = v83;
            v30 = v84;
          }

          while ((*(&v93 + 1) - v93) > 0);
        }

        v32 = *(v7 + 192);
        v6 = v71;
        if (v32)
        {
          v33 = *(v7 + 208);
          sub_1AF75D364(v79, v78, v32);
          v6 = v71;
          sub_1AF75D364(v79, v78, v33);
        }
      }

      v5 += 48;
      os_unfair_lock_unlock(*(v7 + 344));
      os_unfair_lock_unlock(*(v7 + 376));
    }

    while (v5 != v6);
    sub_1AF8FE1E4(v99, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
    v2 = v69;
    v3 = v70;
  }

  v34 = *(v2 + 72);
  v110[0] = *(v2 + 56);
  v110[1] = v34;
  v111 = *(v2 + 88);
  sub_1AF6B06C0(v3, v110, 0x200000000, &v104);
  if (v104)
  {
    if (v109 >= 1 && *(&v107 + 1))
    {
      v35 = *(&v106 + 1);
      v36 = *(&v106 + 1) + 48 * *(&v107 + 1);
      v95 = v106;
      v96 = v107;
      v97 = v108;
      v98 = v109;
      v93 = v104;
      v94 = v105;
      sub_1AF5DD298(&v93, &v87);
      v72 = v36;
      do
      {
        v37 = *(v35 + 40);
        v38 = *(v37 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v38);
        os_unfair_lock_lock(*(v37 + 344));
        v39 = *(v37 + 24);

        v89 = 0;
        v87 = 0u;
        v88 = 0u;
        memset(v86, 0, 40);
        v40 = sub_1AF65A4B4(v39, 0, 0, &type metadata for TextureGPURuntime, &off_1F2544388, &v87, v86);

        sub_1AF5DD41C(v86);
        sub_1AF5DD41C(&v87);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v40);
        }

        else
        {
          v42 = *(v37 + 232);
          v41 = *(v37 + 240);
          v75 = *(v37 + 120);
          v82 = *(v37 + 28);
          v43 = *(v37 + 32);
          v44 = *(v37 + 16);
          v45 = *(v37 + 40);
          v46 = *(v45 + 200);
          v85 = *(*(v44 + 88) + 8 * v40 + 32);

          if ((v46 & 1) != 0 || *(v85 + 200) == 1)
          {
            *(v44 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v45 = *(v37 + 40);
          }

          v76 = v43;
          v47 = v82;
          v48 = *(v37 + 256);
          sub_1AF5B4FCC(v45, v42, v41, 0, v37);
          v80 = *(v37 + 256);
          v49 = v80 - v48;
          if (v80 == v48)
          {
            v50 = 0;
          }

          else
          {
            v50 = v48;
          }

          v86[0] = v50;
          v51 = *(*(v37 + 40) + 24);
          v52 = *(v51 + 16);
          if (v52)
          {
            v73 = v35;
            v53 = v51 + 32;

            v54 = 0;
            v55 = v80 - v48;
            do
            {
              v56 = v53 + 40 * v54;
              if ((*(v56 + 32) & 1) == 0)
              {
                v57 = *(v85 + 24);
                v58 = *(v57 + 16);
                if (v58)
                {
                  v59 = (v57 + 32);
                  while (*v59 != *v56)
                  {
                    v59 += 5;
                    if (!--v58)
                    {
                      goto LABEL_54;
                    }
                  }
                }

                else
                {
LABEL_54:
                  sub_1AF640BC8();
                  v55 = v80 - v48;
                }
              }

              ++v54;
            }

            while (v54 != v52);
            v49 = v55;

            v35 = v73;
            v47 = v82;
          }

          if (*(v44 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v44 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v37 + 72) * v49);
          }

          if (*(v37 + 184))
          {
            v60 = 0;
          }

          else
          {
            v60 = *(v37 + 168);
          }

          MEMORY[0x1EEE9AC00](v61, v62);
          *(&v87 + 1) = v80;
          *&v88 = v60;
          DWORD2(v88) = -1;
          v89 = v48;
          v90 = v80;
          v91 = v48;
          v92 = v80;
          *&v87 = v48;
          if (v49 >= 1)
          {
            do
            {
              sub_1AF6248A8(v40, v47 | (v76 << 32), v75, v44, &v87, sub_1AF5C5E08);
            }

            while ((*(&v87 + 1) - v87) > 0);
          }

          v63 = *(v37 + 192);
          if (v63)
          {
            v64 = *(v37 + 208);
            sub_1AF75D364(v48, v80, v63);
            sub_1AF75D364(v48, v80, v64);
          }

          v36 = v72;
        }

        v35 += 48;
        os_unfair_lock_unlock(*(v37 + 344));
        os_unfair_lock_unlock(*(v37 + 376));
      }

      while (v35 != v36);
      v65 = MEMORY[0x1E69E6720];
      sub_1AF8FE1E4(&v104, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF90540C);
      v66 = v65;
    }

    else
    {
      v65 = MEMORY[0x1E69E6720];
      v66 = MEMORY[0x1E69E6720];
    }

    sub_1AF8FE1E4(&v104, &qword_1ED725EA0, &type metadata for QueryResult, v66, sub_1AF90540C);
    v67 = v65;
  }

  else
  {
    v67 = MEMORY[0x1E69E6720];
  }

  return sub_1AF8FE1E4(v99, &qword_1ED725EA0, &type metadata for QueryResult, v67, sub_1AF90540C);
}

uint64_t sub_1AF9032D0@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1AFDFC128();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v111 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_1AFDFBD38();
  v122 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129, v7);
  v9 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1AFDFC0D8();
  v11 = v10;
  v12 = sub_1AFDFC0E8();
  if (!v13)
  {

    v127 = 0;
    v128 = 0xE000000000000000;
    sub_1AFDFE218();

    v127 = 0xD00000000000002ALL;
    v128 = 0x80000001AFF3A1B0;
    sub_1AF9027C4(&qword_1EB632790, MEMORY[0x1E6968FB0]);
    v29 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v29);
LABEL_9:

    v30 = v127;
    v31 = v128;
    sub_1AF902768();
    swift_allocError();
    *v32 = v30;
    *(v32 + 8) = v31;
    *(v32 + 16) = 0;
    return swift_willThrow();
  }

  v14 = v13;
  v113 = v11;
  v107 = v4;
  v108 = v3;
  v15 = v12;
  v127 = v12;
  v128 = v13;
  v115 = sub_1AF4486E4();
  v16 = sub_1AFDFDED8();
  if (!v17)
  {

    v127 = 0;
    v128 = 0xE000000000000000;
    sub_1AFDFE218();

    v127 = 0xD000000000000030;
    v128 = 0x80000001AFF3A1E0;
    MEMORY[0x1B2718AE0](v15, v14);
    goto LABEL_9;
  }

  v18 = v16;
  v19 = v17;

  v109 = v19;
  if ((sub_1AFDFD178() & 1) == 0)
  {
    goto LABEL_108;
  }

  v106 = v18;
  v20 = objc_allocWithZone(MEMORY[0x1E696AF20]);
  v21 = sub_1AFDFC048();
  v22 = [v20 initWithURL:v21 resolvingAgainstBaseURL:0];

  v105 = v22;
  if (v22)
  {
    v23 = [v22 queryItems];
    v24 = v129;
    v25 = v122;
    if (v23)
    {
      v26 = v23;
      v27 = sub_1AFDFD418();

      v28 = v27;
    }

    else
    {
      v28 = MEMORY[0x1E69E7CC0];
    }

    v18 = v106;
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
    v18 = v106;
    v24 = v129;
    v25 = v122;
  }

  v129 = *(v28 + 16);
  if (!v129)
  {

LABEL_108:

    v93 = 0;
    v94 = 0;
    v88 = 0;
    goto LABEL_109;
  }

  v103 = a1;
  v104 = v1;
  v116 = 0;
  v117 = 0;
  v118 = 0;
  v34 = 0;
  v35 = 0;
  v37 = v25[2];
  v36 = (v25 + 2);
  v122 = v37;
  v38 = (v36[64] + 32) & ~v36[64];
  v102 = v28;
  v121 = v28 + v38;
  v39 = *(v36 + 7);
  v112 = &v127 + 1;
  v119 = (v36 - 8);
  v120 = v39;
  v114 = v9;
  (v37)(v9, v28 + v38, v24);
  while (1)
  {
    if (sub_1AFDFBD18() == 0x74657366666FLL && v40 == 0xE600000000000000)
    {
    }

    else
    {
      v41 = sub_1AFDFEE28();

      if ((v41 & 1) == 0)
      {
        goto LABEL_85;
      }
    }

    v42 = sub_1AFDFBD28();
    v44 = HIBYTE(v43) & 0xF;
    v45 = v42 & 0xFFFFFFFFFFFFLL;
    if ((v43 & 0x2000000000000000) != 0)
    {
      v46 = HIBYTE(v43) & 0xF;
    }

    else
    {
      v46 = v42 & 0xFFFFFFFFFFFFLL;
    }

    if (!v46)
    {

      v116 = 0;
      goto LABEL_85;
    }

    if ((v43 & 0x1000000000000000) != 0)
    {
      v49 = sub_1AF87B790(v42, v43, 10);
      v67 = v86;
      goto LABEL_81;
    }

    if ((v43 & 0x2000000000000000) != 0)
    {
      v127 = v42;
      v128 = v43 & 0xFFFFFFFFFFFFFFLL;
      if (v42 == 43)
      {
        v45 = v44 - 1;
        if (v44 != 1)
        {
          v49 = 0;
          v59 = v112;
          while (1)
          {
            v60 = *v59 - 48;
            if (v60 > 9)
            {
              break;
            }

            v61 = 10 * v49;
            if ((v49 * 10) >> 64 != (10 * v49) >> 63)
            {
              break;
            }

            v49 = v61 + v60;
            if (__OFADD__(v61, v60))
            {
              break;
            }

            ++v59;
            if (!--v45)
            {
              goto LABEL_80;
            }
          }
        }
      }

      else if (v42 == 45)
      {
        v45 = v44 - 1;
        if (v44 != 1)
        {
          v49 = 0;
          v53 = v112;
          while (1)
          {
            v54 = *v53 - 48;
            if (v54 > 9)
            {
              break;
            }

            v55 = 10 * v49;
            if ((v49 * 10) >> 64 != (10 * v49) >> 63)
            {
              break;
            }

            v49 = v55 - v54;
            if (__OFSUB__(v55, v54))
            {
              break;
            }

            ++v53;
            if (!--v45)
            {
              goto LABEL_80;
            }
          }
        }
      }

      else if (v44)
      {
        v49 = 0;
        v64 = &v127;
        while (1)
        {
          v65 = *v64 - 48;
          if (v65 > 9)
          {
            break;
          }

          v66 = 10 * v49;
          if ((v49 * 10) >> 64 != (10 * v49) >> 63)
          {
            break;
          }

          v49 = v66 + v65;
          if (__OFADD__(v66, v65))
          {
            break;
          }

          v64 = (v64 + 1);
          if (!--v44)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_79;
    }

    if ((v42 & 0x1000000000000000) != 0)
    {
      v47 = ((v43 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v47 = sub_1AFDFE308();
      v45 = v87;
    }

    v48 = *v47;
    if (v48 == 43)
    {
      if (!--v45)
      {
        goto LABEL_79;
      }

      v49 = 0;
      if (v47)
      {
        v56 = v47 + 1;
        while (1)
        {
          v57 = *v56 - 48;
          if (v57 > 9)
          {
            goto LABEL_79;
          }

          v58 = 10 * v49;
          if ((v49 * 10) >> 64 != (10 * v49) >> 63)
          {
            goto LABEL_79;
          }

          v49 = v58 + v57;
          if (__OFADD__(v58, v57))
          {
            goto LABEL_79;
          }

          ++v56;
          if (!--v45)
          {
            goto LABEL_80;
          }
        }
      }
    }

    else if (v48 == 45)
    {
      if (!--v45)
      {
        goto LABEL_79;
      }

      v49 = 0;
      if (v47)
      {
        v50 = v47 + 1;
        while (1)
        {
          v51 = *v50 - 48;
          if (v51 > 9)
          {
            break;
          }

          v52 = 10 * v49;
          if ((v49 * 10) >> 64 != (10 * v49) >> 63)
          {
            break;
          }

          v49 = v52 - v51;
          if (__OFSUB__(v52, v51))
          {
            break;
          }

          ++v50;
          if (!--v45)
          {
            goto LABEL_80;
          }
        }

LABEL_79:
        v49 = 0;
        LOBYTE(v45) = 1;
        goto LABEL_80;
      }
    }

    else
    {
      if (!v45)
      {
        goto LABEL_79;
      }

      v49 = 0;
      if (v47)
      {
        while (1)
        {
          v62 = *v47 - 48;
          if (v62 > 9)
          {
            goto LABEL_79;
          }

          v63 = 10 * v49;
          if ((v49 * 10) >> 64 != (10 * v49) >> 63)
          {
            goto LABEL_79;
          }

          v49 = v63 + v62;
          if (__OFADD__(v63, v62))
          {
            goto LABEL_79;
          }

          ++v47;
          if (!--v45)
          {
            goto LABEL_80;
          }
        }
      }
    }

LABEL_78:
    LOBYTE(v45) = 0;
LABEL_80:
    LOBYTE(v125) = v45;
    v67 = v45;
LABEL_81:

    v68 = (v67 & 1) != 0 ? 0 : v49;
    v116 = v68;
LABEL_85:
    if (sub_1AFDFBD18() == 1702521203 && v69 == 0xE400000000000000)
    {
    }

    else
    {
      v70 = sub_1AFDFEE28();

      if ((v70 & 1) == 0)
      {
        goto LABEL_93;
      }
    }

    v71 = sub_1AFDFBD28();
    v73 = sub_1AF878D44(v71, v72);
    v75 = (v74 & 1) != 0 ? 0 : v73;
    v118 = v75;
LABEL_93:
    if (sub_1AFDFBD18() == 1701667182 && v76 == 0xE400000000000000)
    {
    }

    else
    {
      v77 = sub_1AFDFEE28();

      if ((v77 & 1) == 0)
      {
        (*v119)(v9, v24);
        goto LABEL_17;
      }
    }

    v78 = sub_1AFDFBD28();
    if (v79)
    {
      v127 = v78;
      v128 = v79;
      v125 = 91;
      v126 = 0xE100000000000000;
      v123 = 95;
      v124 = 0xE100000000000000;
      v80 = sub_1AFDFDEB8();
      v81 = v24;
      v82 = v36;
      v84 = v83;

      v127 = v80;
      v128 = v84;
      v125 = 93;
      v126 = 0xE100000000000000;
      v123 = 0;
      v124 = 0xE000000000000000;
      v9 = v114;
      v117 = sub_1AFDFDEB8();
      v34 = v85;
      v36 = v82;
      v24 = v81;

      (*v119)(v9, v81);
    }

    else
    {
      (*v119)(v9, v24);
      v117 = 0;
      v34 = 0;
    }

LABEL_17:
    if (++v35 == v129)
    {
      break;
    }

    (v122)(v9, v121 + v120 * v35, v24);
  }

  v88 = v34;

  a1 = v103;
  if (v118 <= 0)
  {

    v18 = v106;
    goto LABEL_108;
  }

  v89 = v111;
  sub_1AFDFC018();

  v90 = v104;
  v91 = sub_1AFDFC148();
  v18 = v106;
  if (v90)
  {

    result = (*(v107 + 8))(v89, v108);
    v93 = 0;
  }

  else
  {
    v95 = v91;
    v96 = v89;
    v97 = v92;
    (*(v107 + 8))(v96, v108);
    v98 = sub_1AFDFC1F8();
    v100 = v99;
    v101 = v95;
    v18 = v106;
    sub_1AF439ED8(v101, v97);
    v93 = sub_1AFDFC1A8();

    result = sub_1AF439ED8(v98, v100);
  }

  v94 = v117;
LABEL_109:
  *a1 = v93;
  a1[1] = v18;
  a1[2] = v109;
  a1[3] = v94;
  a1[4] = v88;
  return result;
}

uint64_t sub_1AF903E3C()
{
  v1 = sub_1AFDFC128();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 65) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

double sub_1AF903EF8@<D0>(uint64_t a1@<X8>)
{
  v3 = *(sub_1AFDFC128() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1AF8EF03C(v1 + v4, (v1 + v5), *(v1 + ((v5 + 65) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t sub_1AF90402C()
{
  v1 = sub_1AFDFC128();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 65) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1AF9040E0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_1AFDFC128() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1AF8EF0A0(v1 + v4, v1 + v5, *(v1 + ((v5 + 65) & 0xFFFFFFFFFFFFFFF8)), a1);
}

void sub_1AF904190()
{
  if (!qword_1EB6401E0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6401E0);
    }
  }
}

void sub_1AF9041F4()
{
  if (!qword_1EB6401E8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6401E8);
    }
  }
}

uint64_t sub_1AF904264(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1AF904288()
{
  if (!qword_1ED723AC8)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723AC8);
    }
  }
}

void sub_1AF90430C()
{
  if (!qword_1ED723AC0)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723AC0);
    }
  }
}

unint64_t sub_1AF9043DC()
{
  result = qword_1EB633D98;
  if (!qword_1EB633D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633D98);
  }

  return result;
}

unint64_t sub_1AF904430()
{
  result = qword_1EB633D70;
  if (!qword_1EB633D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633D70);
  }

  return result;
}

uint64_t sub_1AF904484(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AF90540C(255, &unk_1ED72F970, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF904508()
{
  result = qword_1EB640208;
  if (!qword_1EB640208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640208);
  }

  return result;
}

unint64_t sub_1AF90455C()
{
  result = qword_1EB640218;
  if (!qword_1EB640218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640218);
  }

  return result;
}

unint64_t sub_1AF9045B0()
{
  result = qword_1EB640240;
  if (!qword_1EB640240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640240);
  }

  return result;
}

uint64_t sub_1AF904604(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1AF0D0F04(255, &qword_1EB63A870, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
    sub_1AF9027C4(a2, MEMORY[0x1E6968FB0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF9046C8()
{
  result = qword_1EB633E18;
  if (!qword_1EB633E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633E18);
  }

  return result;
}

unint64_t sub_1AF90471C()
{
  result = qword_1EB634240;
  if (!qword_1EB634240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB634240);
  }

  return result;
}

unint64_t sub_1AF904770()
{
  result = qword_1EB640280;
  if (!qword_1EB640280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640280);
  }

  return result;
}

unint64_t sub_1AF9047C4()
{
  result = qword_1EB632D90;
  if (!qword_1EB632D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632D90);
  }

  return result;
}

void sub_1AF904818()
{
  if (!qword_1EB640288)
  {
    v0 = sub_1AFDFCCB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB640288);
    }
  }
}

unint64_t sub_1AF904878()
{
  result = qword_1EB640298;
  if (!qword_1EB640298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640298);
  }

  return result;
}

void sub_1AF9048CC()
{
  if (!qword_1EB632AF0)
  {
    v0 = sub_1AFDFCCB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB632AF0);
    }
  }
}

uint64_t sub_1AF90492C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF9049B0(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AF904A34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1AF904AA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x1E69E6158], v7, MEMORY[0x1E69E6168]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1AF904B14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AF904B7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 initializeWithCopy for TextureShaderAsset.Parameter(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TextureShaderAsset.Parameter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TextureShaderAsset.Parameter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AF904D3C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  sub_1AF904D1C();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for TextureError(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  sub_1AF904D1C();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  sub_1AF904D34();
  return a1;
}

uint64_t assignWithTake for TextureError(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  sub_1AF904D34();
  return a1;
}

uint64_t getEnumTagSinglePayload for MipmapGeneration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TextureRequireMipmap(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for RenderGraphTextureTarget(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RenderGraphTextureTarget(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextureRequireMask(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && a1[8])
  {
    return (*a1 + 252);
  }

  v3 = *a1;
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TextureRequireMask(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for MipmapGeneration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1AF9051AC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF9051C8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1AF905208(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 58))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 57);
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 57);
  }

  v5 = v4 - 4;
  if (v3 < 3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1AF90525C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 57) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1AF905320(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AF90540C(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF905388()
{
  result = qword_1EB6402E0;
  if (!qword_1EB6402E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6402E0);
  }

  return result;
}

void sub_1AF90540C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AF905460()
{
  result = qword_1EB6402F8;
  if (!qword_1EB6402F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6402F8);
  }

  return result;
}

unint64_t sub_1AF9054B8()
{
  result = qword_1EB640300;
  if (!qword_1EB640300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640300);
  }

  return result;
}

unint64_t sub_1AF905510()
{
  result = qword_1EB640308;
  if (!qword_1EB640308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640308);
  }

  return result;
}

unint64_t sub_1AF905568()
{
  result = qword_1EB640310;
  if (!qword_1EB640310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640310);
  }

  return result;
}

unint64_t sub_1AF9055C0()
{
  result = qword_1EB640318;
  if (!qword_1EB640318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640318);
  }

  return result;
}

unint64_t sub_1AF90561C()
{
  result = qword_1EB640320;
  if (!qword_1EB640320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640320);
  }

  return result;
}

unint64_t sub_1AF905674()
{
  result = qword_1EB640328;
  if (!qword_1EB640328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640328);
  }

  return result;
}

unint64_t sub_1AF9056CC()
{
  result = qword_1EB640330;
  if (!qword_1EB640330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640330);
  }

  return result;
}

unint64_t sub_1AF905724()
{
  result = qword_1EB640338;
  if (!qword_1EB640338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640338);
  }

  return result;
}

unint64_t sub_1AF90577C()
{
  result = qword_1EB640340;
  if (!qword_1EB640340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640340);
  }

  return result;
}

unint64_t sub_1AF9057D4()
{
  result = qword_1EB632D78;
  if (!qword_1EB632D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632D78);
  }

  return result;
}

unint64_t sub_1AF90582C()
{
  result = qword_1EB632D80;
  if (!qword_1EB632D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632D80);
  }

  return result;
}

unint64_t sub_1AF905884()
{
  result = qword_1EB633E08;
  if (!qword_1EB633E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633E08);
  }

  return result;
}

unint64_t sub_1AF9058DC()
{
  result = qword_1EB633E10;
  if (!qword_1EB633E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633E10);
  }

  return result;
}

unint64_t sub_1AF905934()
{
  result = qword_1EB640348;
  if (!qword_1EB640348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640348);
  }

  return result;
}

unint64_t sub_1AF90598C()
{
  result = qword_1EB640350;
  if (!qword_1EB640350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640350);
  }

  return result;
}

unint64_t sub_1AF9059E4()
{
  result = qword_1EB640358;
  if (!qword_1EB640358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640358);
  }

  return result;
}

unint64_t sub_1AF905A3C()
{
  result = qword_1EB640360;
  if (!qword_1EB640360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640360);
  }

  return result;
}

unint64_t sub_1AF905A94()
{
  result = qword_1EB633D88;
  if (!qword_1EB633D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633D88);
  }

  return result;
}

unint64_t sub_1AF905AEC()
{
  result = qword_1EB633D90;
  if (!qword_1EB633D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633D90);
  }

  return result;
}

unint64_t sub_1AF905B44()
{
  result = qword_1ED7229A8;
  if (!qword_1ED7229A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7229A8);
  }

  return result;
}

unint64_t sub_1AF905B9C()
{
  result = qword_1ED7229B0;
  if (!qword_1ED7229B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7229B0);
  }

  return result;
}

unint64_t sub_1AF905BF4()
{
  result = qword_1ED725408;
  if (!qword_1ED725408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED725408);
  }

  return result;
}

unint64_t sub_1AF905C4C()
{
  result = qword_1ED725410;
  if (!qword_1ED725410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED725410);
  }

  return result;
}

unint64_t sub_1AF905CA0()
{
  result = qword_1ED725618[0];
  if (!qword_1ED725618[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED725618);
  }

  return result;
}

unint64_t sub_1AF905CF4()
{
  result = qword_1ED72B2B0;
  if (!qword_1ED72B2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED72B2B0);
  }

  return result;
}

unint64_t sub_1AF905D48()
{
  result = qword_1EB633D78;
  if (!qword_1EB633D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633D78);
  }

  return result;
}

unint64_t sub_1AF905D9C()
{
  result = qword_1EB634268;
  if (!qword_1EB634268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB634268);
  }

  return result;
}

unint64_t sub_1AF905DF0()
{
  result = qword_1EB634270;
  if (!qword_1EB634270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB634270);
  }

  return result;
}

unint64_t sub_1AF905E44()
{
  result = qword_1EB640370;
  if (!qword_1EB640370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640370);
  }

  return result;
}

unint64_t sub_1AF905E98()
{
  result = qword_1EB632CF0;
  if (!qword_1EB632CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632CF0);
  }

  return result;
}

unint64_t sub_1AF905EEC()
{
  result = qword_1EB632CD0;
  if (!qword_1EB632CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632CD0);
  }

  return result;
}

uint64_t sub_1AF905F40(uint64_t result, uint64_t a2)
{
  v2 = 0x2000000000000;
  if (!result)
  {
    v2 = 0;
  }

  *(a2 + 12) = *(a2 + 12) & 0xFFFDFFFFFFFFFFFFLL | v2;
  return result;
}

unint64_t sub_1AF905F6C()
{
  result = qword_1EB6403B0;
  if (!qword_1EB6403B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6403B0);
  }

  return result;
}

unint64_t sub_1AF905FC0()
{
  result = qword_1EB6403C0;
  if (!qword_1EB6403C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6403C0);
  }

  return result;
}

unint64_t sub_1AF906014()
{
  result = qword_1EB6403D0;
  if (!qword_1EB6403D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6403D0);
  }

  return result;
}

unint64_t sub_1AF906068()
{
  result = qword_1EB6403E0;
  if (!qword_1EB6403E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6403E0);
  }

  return result;
}

unint64_t sub_1AF9060BC()
{
  result = qword_1EB6403F8;
  if (!qword_1EB6403F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6403F8);
  }

  return result;
}

unint64_t sub_1AF906110()
{
  result = qword_1EB640408;
  if (!qword_1EB640408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640408);
  }

  return result;
}

unint64_t sub_1AF906164()
{
  result = qword_1EB640420;
  if (!qword_1EB640420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640420);
  }

  return result;
}

void sub_1AF9061B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for TextureDescriptorCoder.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TextureDescriptorCoder.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextureOptions.SizeModification(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 17))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 16) & 0x7E | (*(a1 + 16) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for TextureOptions.SizeModification(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

unint64_t sub_1AF9064F4()
{
  result = qword_1EB640440;
  if (!qword_1EB640440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640440);
  }

  return result;
}

unint64_t sub_1AF90654C()
{
  result = qword_1EB640448;
  if (!qword_1EB640448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640448);
  }

  return result;
}

unint64_t sub_1AF9065A4()
{
  result = qword_1EB634280;
  if (!qword_1EB634280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB634280);
  }

  return result;
}

unint64_t sub_1AF9065FC()
{
  result = qword_1EB640458;
  if (!qword_1EB640458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640458);
  }

  return result;
}

unint64_t sub_1AF906654()
{
  result = qword_1EB640460;
  if (!qword_1EB640460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640460);
  }

  return result;
}

unint64_t sub_1AF9066AC()
{
  result = qword_1EB640468;
  if (!qword_1EB640468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640468);
  }

  return result;
}

unint64_t sub_1AF906704()
{
  result = qword_1EB640470;
  if (!qword_1EB640470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640470);
  }

  return result;
}

unint64_t sub_1AF90675C()
{
  result = qword_1EB640478;
  if (!qword_1EB640478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640478);
  }

  return result;
}

unint64_t sub_1AF9067B4()
{
  result = qword_1EB640480;
  if (!qword_1EB640480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640480);
  }

  return result;
}

unint64_t sub_1AF90680C()
{
  result = qword_1EB640488;
  if (!qword_1EB640488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640488);
  }

  return result;
}

unint64_t sub_1AF906864()
{
  result = qword_1EB640490;
  if (!qword_1EB640490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640490);
  }

  return result;
}

unint64_t sub_1AF9068BC()
{
  result = qword_1EB640498;
  if (!qword_1EB640498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640498);
  }

  return result;
}

unint64_t sub_1AF906914()
{
  result = qword_1EB6404A0;
  if (!qword_1EB6404A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6404A0);
  }

  return result;
}

unint64_t sub_1AF90696C()
{
  result = qword_1EB6404A8;
  if (!qword_1EB6404A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6404A8);
  }

  return result;
}

unint64_t sub_1AF9069C4()
{
  result = qword_1EB6404B0;
  if (!qword_1EB6404B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6404B0);
  }

  return result;
}

unint64_t sub_1AF906A1C()
{
  result = qword_1EB6404B8;
  if (!qword_1EB6404B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6404B8);
  }

  return result;
}

unint64_t sub_1AF906A74()
{
  result = qword_1EB6404C0;
  if (!qword_1EB6404C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6404C0);
  }

  return result;
}

unint64_t sub_1AF906ACC()
{
  result = qword_1EB6404C8;
  if (!qword_1EB6404C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6404C8);
  }

  return result;
}

unint64_t sub_1AF906B24()
{
  result = qword_1EB6404D0;
  if (!qword_1EB6404D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6404D0);
  }

  return result;
}

unint64_t sub_1AF906B7C()
{
  result = qword_1EB6404D8;
  if (!qword_1EB6404D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6404D8);
  }

  return result;
}

unint64_t sub_1AF906BD4()
{
  result = qword_1EB6404E0;
  if (!qword_1EB6404E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6404E0);
  }

  return result;
}

unint64_t sub_1AF906C2C()
{
  result = qword_1EB6404E8;
  if (!qword_1EB6404E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6404E8);
  }

  return result;
}

unint64_t sub_1AF906C84()
{
  result = qword_1EB6404F0;
  if (!qword_1EB6404F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6404F0);
  }

  return result;
}

unint64_t sub_1AF906CDC()
{
  result = qword_1EB6404F8;
  if (!qword_1EB6404F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6404F8);
  }

  return result;
}

unint64_t sub_1AF906D34()
{
  result = qword_1EB640500;
  if (!qword_1EB640500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640500);
  }

  return result;
}

unint64_t sub_1AF906D8C()
{
  result = qword_1EB640508;
  if (!qword_1EB640508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640508);
  }

  return result;
}

unint64_t sub_1AF906DE4()
{
  result = qword_1EB632CC0;
  if (!qword_1EB632CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632CC0);
  }

  return result;
}

unint64_t sub_1AF906E3C()
{
  result = qword_1EB632CC8;
  if (!qword_1EB632CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632CC8);
  }

  return result;
}

unint64_t sub_1AF906E94()
{
  result = qword_1EB632CE0;
  if (!qword_1EB632CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632CE0);
  }

  return result;
}

unint64_t sub_1AF906EEC()
{
  result = qword_1EB632CE8;
  if (!qword_1EB632CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632CE8);
  }

  return result;
}

unint64_t sub_1AF906F44()
{
  result = qword_1EB634250;
  if (!qword_1EB634250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB634250);
  }

  return result;
}

unint64_t sub_1AF906F9C()
{
  result = qword_1EB634258;
  if (!qword_1EB634258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB634258);
  }

  return result;
}

uint64_t assignWithCopy for TexturePlaceholder(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a1;
}

void *assignWithTake for TexturePlaceholder(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  swift_unknownObjectRelease();
  return a1;
}

uint64_t sub_1AF9071C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AF907250(uint64_t a1)
{
  v2 = sub_1AF907CA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF90728C(uint64_t a1)
{
  v2 = sub_1AF907CA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF9072C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AF907CF8(0, &qword_1EB630B10, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF907CA4();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v11 = sub_1AFDFE708();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_1AF907454(void *a1)
{
  sub_1AF907CF8(0, &qword_1EB640520, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AF907CA4();
  sub_1AFDFF3F8();
  sub_1AFDFE8B8();
  return (*(v4 + 8))(v7, v3);
}

void *sub_1AF9075A0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1AF907AFC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1AF9075D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v60 = qword_1ED73B840;
  v61 = 0;
  v62 = 2;
  v63 = 0;
  v64 = 2;
  v65 = 0;
  sub_1AF705080(1, v47);
  v58[0] = v47[0];
  v58[1] = v47[1];
  v59 = v48;
  sub_1AF6B06C0(v3, v58, a3 & 0xFFFFFFFFFFLL, v49);
  v37 = *v49;
  if (!*v49)
  {
    v30 = sub_1AF907BDC;
    v31 = v47;
    goto LABEL_36;
  }

  v36 = *&v49[40];
  v7 = *(&v50 + 1);
  v43 = *(&v51 + 1);
  v53 = *&v49[8];
  v54 = *&v49[24];
  if (v52 <= 0 || !*(&v50 + 1))
  {
    sub_1AF907C34(v47, sub_1AF907BDC);
    v30 = sub_1AF5C3C90;
    v31 = v49;
LABEL_36:
    sub_1AF907C34(v31, v30);
    v32 = 0;
    v33 = 0xFFFFFFFFLL;
    return v33 | v32;
  }

  v42 = *(*(&v51 + 1) + 32);
  v41 = *(v51 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v46[2] = *&v49[32];
  v46[3] = v50;
  v46[4] = v51;
  v46[5] = v52;
  v46[0] = *v49;
  v46[1] = *&v49[16];
  sub_1AF5DD298(v46, v44);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = -1;
  v35 = v7;
  while (1)
  {
    v39 = v10;
    v40 = v8;
    v12 = (v36 + 48 * v8);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(v12 + 2);
    v38 = *(v12 + 3);
    v16 = *(v12 + 4);
    v17 = *(v12 + 5);
    if (v41)
    {
      v18 = *(v17 + 376);

      os_unfair_lock_lock(v18);
      os_unfair_lock_lock(*(v17 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v42);
    v19 = *(v43 + 64);
    v44[0] = *(v43 + 48);
    v44[1] = v19;
    v45 = *(v43 + 80);
    v20 = *(*(*(*(v17 + 40) + 16) + 32) + 16) + 1;
    *(v43 + 48) = ecs_stack_allocator_allocate(*(v43 + 32), 48 * v20, 8);
    *(v43 + 56) = v20;
    *(v43 + 72) = 0;
    *(v43 + 80) = 0;
    *(v43 + 64) = 0;
    v21 = sub_1AF64B110(&type metadata for TextureClient, &off_1F2546D98, v15, v38, v16, v43);
    if (v15)
    {
      if (v16)
      {
        v22 = (v21 + 8);
        while (1)
        {
          v24 = *v15++;
          v23 = v24;
          v25 = *(v22 - 1) == a1 && *v22 == a2;
          if (v25 || (sub_1AFDFEE28() & 1) != 0)
          {

            if (*(v17 + 184))
            {
              goto LABEL_39;
            }

            v11 = *(*(v17 + 168) + 4 * v23);
            v9 = *(*(v26 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v11 + 8);
          }

          v22 += 2;
          if (!--v16)
          {
            goto LABEL_23;
          }
        }
      }

      goto LABEL_23;
    }

    if (v14 != v13)
    {
      break;
    }

LABEL_23:
    v55 = v37;
    v56 = v53;
    v57 = v54;
    v10 = v39;
    sub_1AF630994(v43, &v55, v44);
    sub_1AF62D29C(v17);
    ecs_stack_allocator_pop_snapshot(v42);
    if (v41)
    {
      os_unfair_lock_unlock(*(v17 + 344));
      os_unfair_lock_unlock(*(v17 + 376));
    }

    v8 = v40 + 1;
    if (v40 + 1 == v35)
    {
      sub_1AF907C34(v47, sub_1AF907BDC);
      sub_1AF907C34(v49, sub_1AF5C3C90);
      sub_1AF907C34(v49, sub_1AF5C3C90);
      v32 = v9 << 32;
      v33 = v11;
      return v33 | v32;
    }
  }

  v27 = (v21 + 16 * v14 + 8);
  while (1)
  {
    v28 = *(v27 - 1) == a1 && *v27 == a2;
    if (!v28 && (sub_1AFDFEE28() & 1) == 0)
    {
      goto LABEL_26;
    }

    if (*(v17 + 184))
    {
      break;
    }

    v11 = *(*(v17 + 168) + 4 * v14);
    v9 = *(*(v29 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v11 + 8);

LABEL_26:
    ++v14;
    v27 += 2;
    if (v13 == v14)
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF907AB0(void *a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  *a1 = a2;
  return result;
}

void *sub_1AF907AFC(void *a1)
{
  v3 = sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (!v1)
  {
    sub_1AF441150(v5, v5[3]);
    sub_1AF47FEB4();
    sub_1AFDFEE88();
    v3 = v5[6];
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v3;
}

void sub_1AF907BDC()
{
  if (!qword_1EB640510)
  {
    v0 = type metadata accessor for Query1();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB640510);
    }
  }
}

uint64_t sub_1AF907C34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1AF907CA4()
{
  result = qword_1EB632268;
  if (!qword_1EB632268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632268);
  }

  return result;
}

void sub_1AF907CF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF907CA4();
    v7 = a3(a1, &type metadata for TextureClient.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AF907D70()
{
  result = qword_1EB640528;
  if (!qword_1EB640528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640528);
  }

  return result;
}

unint64_t sub_1AF907DC8()
{
  result = qword_1EB632250;
  if (!qword_1EB632250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632250);
  }

  return result;
}

unint64_t sub_1AF907E20()
{
  result = qword_1EB632258;
  if (!qword_1EB632258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632258);
  }

  return result;
}

uint64_t sub_1AF907E78@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_1AF0D0F68(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v23 = &v20 - v5;
  sub_1AF90D020(0, &qword_1EB640578, sub_1AF90CF68, &type metadata for SceneKitAsset.CodingKeys, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v22 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for SceneKitAsset(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1AFDFC128();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_1AF441150(a1, a1[3]);
  sub_1AF90CF68();
  v16 = v24;
  sub_1AFDFF3B8();
  if (!v16)
  {
    v17 = v22;
    sub_1AF90D088(&qword_1EB633060, MEMORY[0x1E6968FB0]);
    v18 = v23;
    sub_1AFDFE6E8();
    (*(v17 + 8))(v10, v7);
    sub_1AF456BE8(v18, v14);
    sub_1AF90CFBC(v14, v21);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return sub_1AF90C2E0(v14, type metadata accessor for SceneKitAsset);
}

uint64_t sub_1AF9081A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7465737361 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AF908224(uint64_t a1)
{
  v2 = sub_1AF90CF68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF908260(uint64_t a1)
{
  v2 = sub_1AF90CF68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF9082B4(void *a1)
{
  sub_1AF90D020(0, &qword_1EB640588, sub_1AF90CF68, &type metadata for SceneKitAsset.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AF90CF68();
  sub_1AFDFF3F8();
  sub_1AFDFC128();
  sub_1AF90D088(&qword_1EB640270, MEMORY[0x1E6968FB0]);
  sub_1AFDFE8A8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1AF908460@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1AFDFC128();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1AF9084CC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x676E6979616C70;
  }

  else
  {
    v3 = 0x746E457465737361;
  }

  if (v2)
  {
    v4 = 0xEB00000000797469;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x676E6979616C70;
  }

  else
  {
    v5 = 0x746E457465737361;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xEB00000000797469;
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

uint64_t sub_1AF90857C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF908608()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF908680()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF908708@<X0>(char *a1@<X8>)
{
  v2 = sub_1AFDFE638();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1AF908768(uint64_t *a1@<X8>)
{
  v2 = 0x746E457465737361;
  if (*v1)
  {
    v2 = 0x676E6979616C70;
  }

  v3 = 0xEB00000000797469;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AF9087B0()
{
  if (*v0)
  {
    return 0x676E6979616C70;
  }

  else
  {
    return 0x746E457465737361;
  }
}

uint64_t sub_1AF9087F4@<X0>(char *a1@<X8>)
{
  v2 = sub_1AFDFE638();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1AF908858(uint64_t a1)
{
  v2 = sub_1AF90C450();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF908894(uint64_t a1)
{
  v2 = sub_1AF90C450();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF9088D0(void *a1, uint64_t a2, int a3)
{
  v13[2] = a3;
  sub_1AF90D020(0, &qword_1EB640558, sub_1AF90C450, &type metadata for SceneKitAssetInstance.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v13 - v10;
  sub_1AF441150(a1, a1[3]);
  sub_1AF90C450();
  sub_1AFDFF3F8();
  v16 = a2;
  v15 = 0;
  sub_1AF480018();
  sub_1AFDFE918();
  if (!v3)
  {
    v14 = 1;
    sub_1AFDFE8C8();
  }

  return (*(v8 + 8))(v11, v7);
}

void *sub_1AF908A7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF90B720(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

double sub_1AF908AD4@<D0>(uint64_t a1@<X8>)
{
  *&result = 0xFFFFFFFFLL;
  *a1 = 0xFFFFFFFFLL;
  *(a1 + 8) = 1;
  return result;
}

uint64_t sub_1AF908AE8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  v3 = *(a1 + 24);
  v4 = sub_1AFDFC128();
  v5 = *(*(v4 - 8) + 56);

  return v5(&a2[v3], 1, 1, v4);
}

void sub_1AF908B5C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v7 = a1;
  v8 = *(v3 + 32);
  v73[0] = *(v3 + 16);
  v73[1] = v8;
  v74 = *(v3 + 48);
  v9 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  sub_1AF6B06C0(a1, v73, 0x200000000, v48);
  v42 = *v48;
  if (*v48)
  {
    v12 = *&v48[40];
    v13 = *(&v49 + 1);
    v38 = *(&v50 + 1);
    v41 = v50;
    v60 = *&v48[8];
    v61 = *&v48[24];
    MEMORY[0x1EEE9AC00](v10, v11);
    v39 = v30;
    v40 = v14;
    v30[2] = v4;
    v30[3] = v7;
    v30[4] = a2;
    v31 = a3;
    v37 = v15;
    if (v14 > 0 && v13)
    {
      v32 = v9;
      v33 = v7;
      v34 = v4;
      v35 = a2;
      v36 = a3;
      v16 = v38;
      v17 = v38[4];
      v47 = *(v41 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v65[2] = *&v48[32];
      v65[3] = v49;
      v65[4] = v50;
      v65[5] = v51;
      v65[0] = *v48;
      v65[1] = *&v48[16];
      sub_1AF5DD298(v65, v68);
      v18 = (v12 + 24);
      do
      {
        v46 = v13;
        v20 = *(v18 - 6);
        v19 = *(v18 - 5);
        v21 = *(v18 - 4);
        v22 = *(v18 - 1);
        v44 = *v18;
        v45 = v22;
        v23 = v18[2];
        v43 = v18[1];
        if (v47)
        {
          v24 = *(v23 + 376);

          v16 = v38;
          os_unfair_lock_lock(v24);
          os_unfair_lock_lock(*(v23 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v17);

        sub_1AF630914(v25, v16, v52);

        LOBYTE(v53) = 1;
        v68[0] = v41;
        v68[1] = v23;
        v68[2] = v16;
        v68[3] = v21;
        v68[4] = (v19 - v20 + v21);
        v68[5] = v40;
        v68[6] = v20;
        v68[7] = v19;
        v68[8] = 0;
        v68[9] = 0;
        v69 = 1;
        v70 = v45;
        v71 = v44;
        v72 = v43;
        sub_1AF889F6C(v68, sub_1AF90D1E8);
        v62 = v42;
        v63 = v60;
        v64 = v61;
        sub_1AF630994(v16, &v62, v52);
        sub_1AF62D29C(v23);
        ecs_stack_allocator_pop_snapshot(v17);
        v26 = v46;
        if (v47)
        {
          os_unfair_lock_unlock(*(v23 + 344));
          os_unfair_lock_unlock(*(v23 + 376));
        }

        v18 += 6;
        v13 = v26 - 1;
      }

      while (v13);
      sub_1AF0D9DB0(v48, &qword_1ED725EA0);
      sub_1AF0D9DB0(v48, &qword_1ED725EA0);
      LOBYTE(a3) = v36;
      v4 = v34;
      a2 = v35;
      v7 = v33;
    }

    else
    {
      sub_1AF0D9DB0(v48, &qword_1ED725EA0);
    }
  }

  v27 = *(v4 + 72);
  v66[0] = *(v4 + 56);
  v66[1] = v27;
  v67 = *(v4 + 88);
  sub_1AF6B06C0(v7, v66, 0x200000000, &v53);
  if (v53)
  {
    *(&v65[2] + 8) = v56;
    *(&v65[3] + 8) = v57;
    *(&v65[4] + 8) = v58;
    *(v65 + 8) = v54;
    *(&v65[1] + 8) = v55;
    *(&v65[5] + 1) = v59;
    *&v65[0] = v53;
    MEMORY[0x1EEE9AC00](v28, v29);
    v30[-4] = v4;
    v30[-3] = v7;
    v30[-2] = a2;
    LOBYTE(v30[-1]) = a3;
    sub_1AF5D5D74(sub_1AF90B6E4, &v30[-6]);
    sub_1AF0D9DB0(&v53, &qword_1ED725EA0);
  }
}

id sub_1AF908F8C(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1AFDFC048();
  if (a2)
  {
    type metadata accessor for LoadingOption(0);
    sub_1AF90D088(&qword_1EB637E10, type metadata accessor for LoadingOption);
    v5 = sub_1AFDFCBE8();
  }

  else
  {
    v5 = 0;
  }

  v14[0] = 0;
  v6 = [swift_getObjCClassFromMetadata() sceneWithURL:v4 options:v5 error:v14];

  v7 = v14[0];
  if (v6)
  {
    v8 = sub_1AFDFC128();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14[0];
    sub_1AFDFBF58();

    swift_willThrow();
    v12 = sub_1AFDFC128();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

uint64_t sub_1AF909188()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v22 = qword_1ED73B840;
  v23 = 0;
  v24 = 2;
  v25 = 0;
  v26 = 2;
  v27 = 0;
  sub_1AFCC3B14(1, 2, &v11);
  v1 = v12;
  v2 = v13;
  v3 = v15;
  v4 = v14 | 4;
  *(v0 + 16) = v11;
  *(v0 + 24) = v1;
  *(v0 + 28) = v2;
  *(v0 + 32) = v4;
  *(v0 + 40) = 2;
  *(v0 + 48) = v3;
  sub_1AF703AE0(1, v16);
  sub_1AF0D0F68(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = type metadata accessor for SceneKitRenderer(0);
  *(inited + 40) = &off_1F2546F88;
  sub_1AF5D1EC0(inited, &v17);
  sub_1AF90C2E0(v16, sub_1AF90C3F8);
  swift_setDeallocating();
  v6 = v18;
  v7 = v19;
  v8 = v21;
  v9 = v20 | 4;
  *(v0 + 56) = v17;
  *(v0 + 64) = v6;
  *(v0 + 68) = v7;
  *(v0 + 72) = v9;
  *(v0 + 80) = 2;
  *(v0 + 88) = v8;
  return v0;
}

uint64_t sub_1AF909330()
{
  v0 = swift_allocObject();
  sub_1AF909188();
  return v0;
}

void sub_1AF90939C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v3 = v2;
  v5 = v4;
  v6 = *(v2 + 32);
  v269[0] = *(v2 + 16);
  v269[1] = v6;
  v270 = *(v2 + 48);
  v189 = v7;
  sub_1AF6B06C0(v7, v269, 0x200000000, v238);
  v8 = *v238;
  if (*v238)
  {
    if (!v5)
    {
      goto LABEL_100;
    }

    v9 = 0;
    v192 = *&v238[40];
    v10 = *(&v239 + 1);
    v12 = *(&v240 + 1);
    v11 = v240;
    v13 = v241;
    swift_retain_n();
    sub_1AF6023BC(v189, v5);
    v205 = v5;
    if (v13 >= 1 && v10)
    {
      v185 = v2;
      v14 = *(v11 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v197 = *(v12 + 32);
      v256 = v8;
      v257 = *&v238[8];
      v258 = *&v238[24];
      v15 = type metadata accessor for SceneKitRenderer(0);
      v268[2] = *&v238[32];
      v268[3] = v239;
      v268[4] = v240;
      v268[5] = v241;
      v268[0] = *v238;
      v268[1] = *&v238[16];
      sub_1AF5DD298(v268, __dst);
      v16 = 0;
      v190 = v15;
      v187 = v15 - 8;
      v17 = 0;
      v191 = v14;
      while (1)
      {
        v18 = (v192 + 48 * v16);
        v19 = *v18;
        v193 = v18[1];
        v21 = *(v18 + 2);
        v20 = *(v18 + 3);
        v22 = *(v18 + 4);
        v23 = *(v18 + 5);
        v202 = v17;
        if (v14)
        {
          v24 = *(v23 + 376);

          os_unfair_lock_lock(v24);
          os_unfair_lock_lock(*(v23 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v197);
        v25 = *(v12 + 64);
        v275[0] = *(v12 + 48);
        v275[1] = v25;
        v276 = *(v12 + 80);
        v26 = *(*(*(*(v23 + 40) + 16) + 32) + 16) + 1;
        *(v12 + 48) = ecs_stack_allocator_allocate(*(v12 + 32), 48 * v26, 8);
        *(v12 + 56) = v26;
        *(v12 + 72) = 0;
        *(v12 + 80) = 0;
        *(v12 + 64) = 0;
        v27 = sub_1AF64B110(v190, &off_1F2547010, v21, v20, v22, v12);
        if (!v21)
        {
          break;
        }

        if (v22)
        {
          v28 = *(*v187 + 72);
          v29 = (v27 + 8);
          do
          {
            if (*v29)
            {
              v34 = [*v29 scene];
              v35 = *(v29 - 1);
              if (v34)
              {
                v36 = v34;
                if (v35)
                {
                  sub_1AF90C340();
                  v37 = v35;
                  v38 = sub_1AFDFDC48();

                  if (v38)
                  {
                    goto LABEL_15;
                  }
                }

                else
                {
                }
              }

              else if (!v35)
              {
                goto LABEL_15;
              }
            }

            v30 = CFXGPUDeviceGetMTLDevice(*(v205 + 16));
            v31 = [objc_opt_self() rendererWithDevice:v30 options:0];
            swift_unknownObjectRelease();
            [v31 setScene_];
            v32 = [objc_allocWithZone(MEMORY[0x1E697A8B0]) init];
            [v31 setPointOfView_];
            [v31 setAutoenablesDefaultLighting_];

            v33 = *v29;
            *v29 = v31;

LABEL_15:
            v29 = (v29 + v28);
            --v22;
          }

          while (v22);
        }

LABEL_24:
        v17 = v202;
        sub_1AF630994(v12, &v256, v275);
        sub_1AF62D29C(v23);
        ecs_stack_allocator_pop_snapshot(v197);
        v14 = v191;
        if (v191)
        {
          os_unfair_lock_unlock(*(v23 + 344));
          os_unfair_lock_unlock(*(v23 + 376));
        }

        if (++v16 == v10)
        {
          v9 = v202;
          sub_1AF0D9DB0(v238, &qword_1ED725EA0);
          v5 = v205;
          v3 = v185;
          goto LABEL_38;
        }
      }

      if (v19 == v193)
      {
        goto LABEL_24;
      }

      v39 = *(*v187 + 72);
      v40 = v193 - v19;
      v41 = (v27 + v39 * v19 + 8);
      while (1)
      {
        if (*v41)
        {
          v46 = [*v41 scene];
          v47 = *(v41 - 1);
          if (v46)
          {
            v48 = v46;
            if (v47)
            {
              sub_1AF90C340();
              v49 = v47;
              v50 = sub_1AFDFDC48();

              if (v50)
              {
                goto LABEL_29;
              }
            }

            else
            {
            }
          }

          else if (!v47)
          {
            goto LABEL_29;
          }
        }

        v42 = CFXGPUDeviceGetMTLDevice(*(v205 + 16));
        v43 = [objc_opt_self() rendererWithDevice:v42 options:0];
        swift_unknownObjectRelease();
        [v43 setScene_];
        v44 = [objc_allocWithZone(MEMORY[0x1E697A8B0]) init];
        [v43 setPointOfView_];
        [v43 setAutoenablesDefaultLighting_];

        v45 = *v41;
        *v41 = v43;

LABEL_29:
        v41 = (v41 + v39);
        if (!--v40)
        {
          goto LABEL_24;
        }
      }
    }

LABEL_38:
    v51 = *(v3 + 72);
    v273[0] = *(v3 + 56);
    v273[1] = v51;
    v274 = *(v3 + 88);
    sub_1AF6B06C0(v189, v273, 0x200000000, &v242);
    v52 = v242;
    if (v242)
    {
      if (v249 >= 1 && (v53 = v246) != 0)
      {
        v54 = v245;
        v55 = v248;
        v203 = *(v248 + 32);
        v56 = *(v247 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v194 = type metadata accessor for SceneKitRenderer(0);
        v259 = v52;
        v260 = v243;
        v261 = v244;
        v57 = (v54 + 40);
        v58 = v9;
        v198 = v56;
        do
        {
          v59 = *(v57 - 3);
          v60 = *(v57 - 2);
          v61 = *(v57 - 1);
          v62 = *v57;
          if (v56)
          {
            v63 = *(v62 + 376);

            os_unfair_lock_lock(v63);
            os_unfair_lock_lock(*(v62 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v203);
          v64 = *(v55 + 64);
          v271[0] = *(v55 + 48);
          v271[1] = v64;
          v272 = *(v55 + 80);
          v65 = *(*(*(*(v62 + 40) + 16) + 32) + 16) + 1;
          *(v55 + 48) = ecs_stack_allocator_allocate(*(v55 + 32), 48 * v65, 8);
          *(v55 + 56) = v65;
          *(v55 + 72) = 0;
          *(v55 + 80) = 0;
          *(v55 + 64) = 0;
          sub_1AF64B110(v194, &off_1F2547010, v59, v60, v61, v55);
          sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v59, v60, v61, v55);
          sub_1AF630994(v55, &v259, v271);
          sub_1AF62D29C(v62);
          ecs_stack_allocator_pop_snapshot(v203);
          v56 = v198;
          if (v198)
          {
            os_unfair_lock_unlock(*(v62 + 344));
            os_unfair_lock_unlock(*(v62 + 376));
          }

          v57 += 6;
          --v53;
        }

        while (v53);
      }

      else
      {
        v58 = v9;
      }

      sub_1AF0D9DB0(&v242, &qword_1ED725EA0);
      v5 = v205;
    }

    else
    {
      v58 = v9;
    }

    v66 = *(v5 + 280);
    v67 = *(v66 + 56);
    if (v67)
    {
      v68 = *(v66 + 80);
      if (v68)
      {
        v69 = v68;
        swift_unknownObjectRetain();
        v70 = [v69 colorAttachments];
        v71 = [v70 objectAtIndexedSubscript_];

        v72 = [v71 texture];
        if (!v72)
        {

          swift_unknownObjectRelease();

          goto LABEL_100;
        }

        v188 = v67;
        v73 = [v69 depthAttachment];
        v74 = [v73 texture];

        if (!v74)
        {

          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          goto LABEL_100;
        }

        v172 = v69;
        v75 = objc_allocWithZone(MEMORY[0x1E6974128]);
        swift_unknownObjectRetain_n();
        swift_unknownObjectRetain();
        v76 = [v75 init];
        v77 = [v76 colorAttachments];
        v78 = [v77 objectAtIndexedSubscript_];

        [v78 setTexture_];
        [v78 setLoadAction_];
        [v78 setStoreAction_];
        [v78 setClearColor_];
        [v78 setLevel_];

        v79 = [v76 depthAttachment];
        swift_unknownObjectRetain();
        [v79 setTexture_];
        [v79 setLoadAction_];
        [v79 setStoreAction_];
        [v79 setClearDepth_];
        [v79 setLevel_];

        swift_unknownObjectRelease();
        sub_1AF474EC4();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease_n();
        sub_1AF6B06C0(v189, v269, 0x200000000, v250);
        v179 = *v250;
        if (*v250)
        {
          v178 = *&v250[40];
          v80 = *(&v251 + 1);
          v81 = *(&v252 + 1);
          v254 = *&v250[8];
          v255 = *&v250[24];
          if (v253 > 0)
          {
            if (*(&v251 + 1))
            {
              v186 = v76;
              v82 = *(*(&v252 + 1) + 32);
              v182 = *(v252 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
              v83 = type metadata accessor for SceneKitRenderer(0);
              v84 = (v5 + 544);
              v237[2] = *&v250[32];
              v237[3] = v251;
              v237[4] = v252;
              v237[5] = v253;
              v237[0] = *v250;
              v237[1] = *&v250[16];
              sub_1AF5DD298(v237, v268);
              v85 = 0;
              v173 = v83 - 8;
              v174 = v83;
              v175 = v82;
              v176 = v81;
              v177 = v80;
              do
              {
                v181 = v85;
                v86 = (v178 + 48 * v85);
                v87 = *v86;
                v199 = v86[1];
                v204 = v58;
                v88 = *(v86 + 2);
                v89 = *(v86 + 3);
                v91 = *(v86 + 4);
                v90 = *(v86 + 5);
                if (v182)
                {
                  v92 = *(v90 + 376);

                  os_unfair_lock_lock(v92);
                  os_unfair_lock_lock(*(v90 + 344));
                }

                else
                {
                }

                ecs_stack_allocator_push_snapshot(v82);
                v93 = *(v81 + 4);
                v265[0] = *(v81 + 3);
                v265[1] = v93;
                v266 = v81[10];
                v94 = *(*(*(*(v90 + 40) + 16) + 32) + 16) + 1;
                v81[6] = ecs_stack_allocator_allocate(v81[4], 48 * v94, 8);
                v81[7] = v94;
                v81[9] = 0;
                v81[10] = 0;
                v81[8] = 0;
                v180 = v90;
                v95 = sub_1AF64B110(v174, &off_1F2547010, v88, v89, v91, v81);
                if (v88)
                {
                  if (v91)
                  {
                    v96 = *(*v173 + 72);
                    v97 = (v95 + 8);
                    v183 = v96;
                    do
                    {
                      if (*v97)
                      {
                        v98 = *v97;
                        [v98 updateAtTime_];
                        v99 = v84[7];
                        v234 = v84[6];
                        v235 = v99;
                        v236[0] = v84[8];
                        *(v236 + 9) = *(v84 + 137);
                        v100 = v84[3];
                        v230 = v84[2];
                        v231 = v100;
                        v101 = v84[5];
                        v232 = v84[4];
                        v233 = v101;
                        v102 = v84[1];
                        v228 = *v84;
                        v229 = v102;
                        if (sub_1AF448314(&v228) == 1)
                        {
                        }

                        else
                        {
                          v200 = *(v5 + 568);
                          swift_unknownObjectRetain();
                          v195 = [v98 pointOfView];
                          v103 = *(v189 + 184);

                          os_unfair_recursive_lock_lock_with_options();
                          v104 = sub_1AF6D2A6C(&type metadata for FrameConstantsStorage);
                          if (v105 == 2 || (v105 & 1) == 0)
                          {
                            os_unfair_recursive_lock_unlock();
                          }

                          else
                          {
                            v107 = *(v103 + 16);
                            v108 = 32 * v106;
                            v109 = v104;
                            os_unfair_lock_lock(*(*(v103 + 32) + 32 * v106 + 24));
                            os_unfair_recursive_lock_unlock();
                            memcpy(__dst, (v107 + v109), 0x606uLL);
                            sub_1AFB1A59C();
                            os_unfair_lock_unlock(*(*(v103 + 32) + v108 + 24));
                          }

                          v110 = [objc_allocWithZone(MEMORY[0x1E697A868]) init];
                          sub_1AFDFD9C8();
                          v215 = v224;
                          v216 = v225;
                          v217 = v226;
                          v218 = v227;
                          [v110 setProjectionTransform_];
                          [v110 setVignettingIntensity_];
                          [v110 setBloomIntensity_];
                          [v110 setMotionBlurIntensity_];
                          [v110 setWantsHDR_];
                          [v110 setWantsExposureAdaptation_];
                          [v110 setSaturation_];
                          [v110 setWantsDepthOfField_];
                          [v110 setContrast_];
                          [v110 setColorFringeStrength_];
                          [v110 setGrainIntensity_];
                          v111 = [v98 scene];
                          if (v111)
                          {
                            v112 = v111;
                            [v111 setWantsScreenSpaceReflection_];
                            v113 = [v112 background];
                            [v113 setContents_];
                          }

                          [objc_opt_self() flush];
                          v114 = CACurrentMediaTime();
                          v115 = v84[7];
                          v221 = v84[6];
                          v222 = v115;
                          v223[0] = v84[8];
                          *(v223 + 9) = *(v84 + 137);
                          v116 = v84[3];
                          v217 = v84[2];
                          v218 = v116;
                          v117 = v84[5];
                          v219 = v84[4];
                          v220 = v117;
                          v118 = v84[1];
                          v215 = *v84;
                          v216 = v118;
                          if (sub_1AF448314(&v215) == 1)
                          {
                            goto LABEL_107;
                          }

                          v119 = *(&v215 + 1);
                          ObjectType = swift_getObjectType();
                          v121 = *(v119 + 80);
                          swift_unknownObjectRetain();
                          v122 = v121(ObjectType, v119);
                          swift_unknownObjectRelease();
                          v123 = v84[7];
                          v212 = v84[6];
                          v213 = v123;
                          v214[0] = v84[8];
                          *(v214 + 9) = *(v84 + 137);
                          v124 = v84[3];
                          v208 = v84[2];
                          v209 = v124;
                          v125 = v84[5];
                          v210 = v84[4];
                          v211 = v125;
                          v126 = v84[1];
                          v206 = *v84;
                          v207 = v126;
                          if (sub_1AF448314(&v206) == 1)
                          {
                            goto LABEL_107;
                          }

                          v127 = *(&v206 + 1);
                          v128 = swift_getObjectType();
                          v129 = *(v127 + 80);
                          swift_unknownObjectRetain();
                          v129(v128, v127);
                          v131 = v130;
                          swift_unknownObjectRelease();
                          v132 = [v200 commandQueue];
                          swift_unknownObjectRetain();
                          [v98 renderAtTime:v188 viewport:v186 encoder:v132 passDescriptor:v114 commandQueue:{0.0, 0.0, v122, v131}];
                          swift_unknownObjectRelease();

                          swift_unknownObjectRelease_n();
                          v5 = v205;
                          v96 = v183;
                        }
                      }

                      v97 = (v97 + v96);
                      --v91;
                    }

                    while (v91);
                  }
                }

                else if (v87 != v199)
                {
                  v133 = *(*v173 + 72);
                  v134 = &v199[-v87];
                  v135 = (v95 + v133 * v87 + 8);
                  v184 = v133;
                  do
                  {
                    if (*v135)
                    {
                      v136 = *v135;
                      [v136 updateAtTime_];
                      v137 = v84[7];
                      v234 = v84[6];
                      v235 = v137;
                      v236[0] = v84[8];
                      *(v236 + 9) = *(v84 + 137);
                      v138 = v84[3];
                      v230 = v84[2];
                      v231 = v138;
                      v139 = v84[5];
                      v232 = v84[4];
                      v233 = v139;
                      v140 = v84[1];
                      v228 = *v84;
                      v229 = v140;
                      if (sub_1AF448314(&v228) == 1)
                      {
                      }

                      else
                      {
                        v201 = *(v5 + 568);
                        swift_unknownObjectRetain();
                        v196 = [v136 pointOfView];
                        v141 = *(v189 + 184);

                        os_unfair_recursive_lock_lock_with_options();
                        v142 = sub_1AF6D2A6C(&type metadata for FrameConstantsStorage);
                        if (v143 == 2 || (v143 & 1) == 0)
                        {
                          os_unfair_recursive_lock_unlock();
                        }

                        else
                        {
                          v145 = *(v141 + 16);
                          v146 = 32 * v144;
                          v147 = v142;
                          os_unfair_lock_lock(*(*(v141 + 32) + 32 * v144 + 24));
                          os_unfair_recursive_lock_unlock();
                          memcpy(v268, (v145 + v147), 0x606uLL);
                          sub_1AFB1A59C();
                          os_unfair_lock_unlock(*(*(v141 + 32) + v146 + 24));
                        }

                        v148 = [objc_allocWithZone(MEMORY[0x1E697A868]) init];
                        sub_1AFDFD9C8();
                        v215 = v224;
                        v216 = v225;
                        v217 = v226;
                        v218 = v227;
                        [v148 setProjectionTransform_];
                        [v148 setVignettingIntensity_];
                        [v148 setBloomIntensity_];
                        [v148 setMotionBlurIntensity_];
                        [v148 setWantsHDR_];
                        [v148 setWantsExposureAdaptation_];
                        [v148 setSaturation_];
                        [v148 setWantsDepthOfField_];
                        [v148 setContrast_];
                        [v148 setColorFringeStrength_];
                        [v148 setGrainIntensity_];
                        v149 = [v136 scene];
                        if (v149)
                        {
                          v150 = v149;
                          [v149 setWantsScreenSpaceReflection_];
                          v151 = [v150 background];
                          [v151 setContents_];
                        }

                        [objc_opt_self() flush];
                        v152 = CACurrentMediaTime();
                        v153 = v84[7];
                        v221 = v84[6];
                        v222 = v153;
                        v223[0] = v84[8];
                        *(v223 + 9) = *(v84 + 137);
                        v154 = v84[3];
                        v217 = v84[2];
                        v218 = v154;
                        v155 = v84[5];
                        v219 = v84[4];
                        v220 = v155;
                        v156 = v84[1];
                        v215 = *v84;
                        v216 = v156;
                        if (sub_1AF448314(&v215) == 1 || (v157 = *(&v215 + 1), v158 = swift_getObjectType(), v159 = *(v157 + 80), swift_unknownObjectRetain(), v160 = v159(v158, v157), swift_unknownObjectRelease(), v161 = v84[7], v212 = v84[6], v213 = v161, v214[0] = v84[8], *(v214 + 9) = *(v84 + 137), v162 = v84[3], v208 = v84[2], v209 = v162, v163 = v84[5], v210 = v84[4], v211 = v163, v164 = v84[1], v206 = *v84, v207 = v164, sub_1AF448314(&v206) == 1))
                        {
LABEL_107:
                          sub_1AFDFE518();
                          __break(1u);
                          return;
                        }

                        v165 = *(&v206 + 1);
                        v166 = swift_getObjectType();
                        v167 = *(v165 + 80);
                        swift_unknownObjectRetain();
                        v167(v166, v165);
                        v169 = v168;
                        swift_unknownObjectRelease();
                        v170 = [v201 commandQueue];
                        swift_unknownObjectRetain();
                        [v136 renderAtTime:v188 viewport:v186 encoder:v170 passDescriptor:v152 commandQueue:{0.0, 0.0, v160, v169}];
                        swift_unknownObjectRelease();

                        swift_unknownObjectRelease_n();
                        v5 = v205;
                        v133 = v184;
                      }
                    }

                    v135 = (v135 + v133);
                    --v134;
                  }

                  while (v134);
                }

                v262 = v179;
                v263 = v254;
                v264 = v255;
                v81 = v176;
                v58 = v204;
                sub_1AF630994(v176, &v262, v265);
                sub_1AF62D29C(v180);
                v82 = v175;
                ecs_stack_allocator_pop_snapshot(v175);
                if (v182)
                {
                  os_unfair_lock_unlock(*(v180 + 344));
                  os_unfair_lock_unlock(*(v180 + 376));
                }

                v85 = v181 + 1;
              }

              while (v181 + 1 != v177);
              swift_unknownObjectRelease();

              sub_1AF0D9DB0(v250, &qword_1ED725EA0);

              sub_1AF0D9DB0(v238, &qword_1ED725EA0);
            }

            else
            {
              sub_1AF5D15C0(v250, v268);
              swift_unknownObjectRelease();

              sub_1AF0D9DB0(v250, &qword_1ED725EA0);

              sub_1AF0D9DB0(v238, &qword_1ED725EA0);
            }

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v171 = v250;
            goto LABEL_101;
          }

          sub_1AF5D15C0(v250, v268);

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();

          sub_1AF0D9DB0(v250, &qword_1ED725EA0);
          sub_1AF0D9DB0(v250, &qword_1ED725EA0);
LABEL_100:
          v171 = v238;
LABEL_101:
          sub_1AF0D9DB0(v171, &qword_1ED725EA0);
          return;
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_100;
  }
}

char *sub_1AF90AB98(char *a1, char **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v6 = a1;
    v7 = a2[1];
    *(a1 + 1) = v7;
    v8 = *(a3 + 24);
    v9 = sub_1AFDFC128();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);
    v12 = v4;
    v13 = v7;
    if (v11(a2 + v8, 1, v9))
    {
      sub_1AF0D0F68(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      memcpy(&v6[v8], a2 + v8, *(*(v14 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&v6[v8], a2 + v8, v9);
      (*(v10 + 56))(&v6[v8], 0, 1, v9);
    }
  }

  return v6;
}

uint64_t sub_1AF90AD38(id *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1AFDFC128();
  v8 = *(v5 - 8);
  result = (*(v8 + 48))(a1 + v4, 1, v5);
  if (!result)
  {
    v7 = *(v8 + 8);

    return v7(a1 + v4, v5);
  }

  return result;
}

char *sub_1AF90AE14(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = *(a3 + 24);
  v8 = sub_1AFDFC128();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v5;
  v12 = v6;
  if (v10(a2 + v7, 1, v8))
  {
    sub_1AF0D0F68(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(&a1[v7], (a2 + v7), *(*(v13 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(&a1[v7], a2 + v7, v8);
    (*(v9 + 56))(&a1[v7], 0, 1, v8);
  }

  return a1;
}

uint64_t sub_1AF90AF64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *a2;
  *a1 = *a2;
  v8 = v7;

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  *(a1 + 8) = v10;
  v11 = v10;

  v12 = *(a3 + 24);
  v13 = sub_1AFDFC128();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  LODWORD(v9) = v15(a1 + v12, 1, v13);
  v16 = v15(a2 + v12, 1, v13);
  if (!v9)
  {
    if (!v16)
    {
      (*(v14 + 24))(a1 + v12, a2 + v12, v13);
      return a1;
    }

    (*(v14 + 8))(a1 + v12, v13);
    goto LABEL_6;
  }

  if (v16)
  {
LABEL_6:
    sub_1AF0D0F68(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy((a1 + v12), (a2 + v12), *(*(v17 - 8) + 64));
    return a1;
  }

  (*(v14 + 16))(a1 + v12, a2 + v12, v13);
  (*(v14 + 56))(a1 + v12, 0, 1, v13);
  return a1;
}

char *sub_1AF90B124(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 24);
  v6 = sub_1AFDFC128();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(&a2[v5], 1, v6))
  {
    sub_1AF0D0F68(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(&a1[v5], &a2[v5], *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(&a1[v5], &a2[v5], v6);
    (*(v7 + 56))(&a1[v5], 0, 1, v6);
  }

  return a1;
}

uint64_t sub_1AF90B25C(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 1);

  v8 = *(a3 + 24);
  v9 = sub_1AFDFC128();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(a1 + v8, 1, v9);
  v13 = v11(&a2[v8], 1, v9);
  if (!v12)
  {
    if (!v13)
    {
      (*(v10 + 40))(a1 + v8, &a2[v8], v9);
      return a1;
    }

    (*(v10 + 8))(a1 + v8, v9);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    sub_1AF0D0F68(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy((a1 + v8), &a2[v8], *(*(v14 - 8) + 64));
    return a1;
  }

  (*(v10 + 32))(a1 + v8, &a2[v8], v9);
  (*(v10 + 56))(a1 + v8, 0, 1, v9);
  return a1;
}

void sub_1AF90B45C()
{
  sub_1AF0D0F68(319, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t initializeBufferWithCopyOfBuffer for SceneKitAssetInstance(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SceneKitAssetInstance(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SceneKitAssetInstance(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AF90B5E4()
{
  v0 = swift_allocObject();
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v8 = qword_1ED73B840;
  v9 = 0;
  v10 = 2;
  v11 = 0;
  v12 = 2;
  v13 = 0;
  sub_1AF826C54(v4);
  v1 = v4[1];
  *(v0 + 16) = v4[0];
  *(v0 + 32) = v1;
  *(v0 + 48) = v5;
  sub_1AF5C8BC0(v6);
  v2 = v6[1];
  *(v0 + 56) = v6[0];
  *(v0 + 72) = v2;
  *(v0 + 88) = v7;
  return v0;
}

void *sub_1AF90B720(void *a1)
{
  sub_1AF90D020(0, &qword_1EB640548, sub_1AF90C450, &type metadata for SceneKitAssetInstance.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v12 - v7;
  v9 = sub_1AF441150(a1, a1[3]);
  sub_1AF90C450();
  v10 = v9;
  sub_1AFDFF3B8();
  if (v1)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  else
  {
    v15 = 1;
    if (sub_1AFDFE808())
    {
      v13 = 1;
      sub_1AFDFE718();
    }

    v14 = 0;
    sub_1AF47FEB4();
    sub_1AFDFE768();
    (*(v5 + 8))(v8, v4);
    v10 = v12[1];
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  return v10;
}

void sub_1AF90B92C(uint64_t a1, uint64_t a2, unint64_t a3, int a4, id *a5)
{
  v71 = a4;
  sub_1AF90C24C();
  v70 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v60[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1AF0D0F68(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v67 = &v60[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v60[-v17];
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v60[-v21];
  v23 = sub_1AFDFC128();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v68 = &v60[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v27, v28);
  v65 = &v60[-v29];
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v60[-v32];
  sub_1AF3CBC2C(a3, &v75);
  if (*(&v75 + 1))
  {
    v72 = v33;
    v35 = v76;
    v34 = v77;
    v69 = a5;
    v66 = a2;
    if (v78)
    {
      v36 = v79;
      ObjectType = swift_getObjectType();
      v38 = v35;
      v39 = v72;
      (*(v36 + 8))(v38, v34, ObjectType, v36);
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v73 = 0;
      v74 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF2C630);
      MEMORY[0x1B2718AE0](v35, v34);
      MEMORY[0x1B2718AE0](0xD000000000000016, 0x80000001AFF2C660);
      v40 = v74;
      v64 = v73;
      v41 = sub_1AFDFDA08();
      v63 = v35;
      if (qword_1ED731058 != -1)
      {
        swift_once();
      }

      v73 = 0;
      sub_1AF0D4F18(v41, &v73, v64, v40);

      v39 = v72;
      sub_1AFDFC018();
      a5 = v69;
    }

    v62 = *(v24 + 16);
    v62(v22, v39, v23);
    v64 = *(v24 + 56);
    v64(v22, 0, 1, v23);
    v63 = *(type metadata accessor for SceneKitRenderer(0) + 24);
    sub_1AF456C4C(a5 + v63, v18);
    v42 = *(v70 + 48);
    sub_1AF456C4C(v22, v11);
    sub_1AF456C4C(v18, &v11[v42]);
    v43 = *(v24 + 48);
    if (v43(v11, 1, v23) == 1)
    {
      sub_1AF456B8C(v18);
      sub_1AF456B8C(v22);
      if (v43(&v11[v42], 1, v23) == 1)
      {
        sub_1AF456B8C(v11);
        v44 = *(v24 + 8);
LABEL_17:
        a5 = v69;
        v44(v72, v23);
        sub_1AF0D9DB0(&v75, &qword_1EB640540);
        goto LABEL_18;
      }
    }

    else
    {
      v70 = v24 + 56;
      v45 = v67;
      sub_1AF456C4C(v11, v67);
      if (v43(&v11[v42], 1, v23) != 1)
      {
        v52 = v65;
        (*(v24 + 32))(v65, &v11[v42], v23);
        sub_1AF90D088(&qword_1EB6327A0, MEMORY[0x1E6968FB0]);
        v61 = sub_1AFDFCE58();
        v44 = *(v24 + 8);
        v44(v52, v23);
        sub_1AF456B8C(v18);
        sub_1AF456B8C(v22);
        v44(v45, v23);
        sub_1AF456B8C(v11);
        if (v61)
        {
          goto LABEL_17;
        }

LABEL_15:
        sub_1AF90C340();
        v46 = v68;
        v47 = v72;
        v62(v68, v72, v23);
        sub_1AF0D0F68(0, &qword_1EB640538, sub_1AF90C38C, MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1AFE431C0;
        v49 = *MEMORY[0x1E697A9C0];
        *(inited + 32) = *MEMORY[0x1E697A9C0];
        *(inited + 64) = MEMORY[0x1E69E6370];
        *(inited + 40) = 0;
        v50 = v49;
        v51 = sub_1AF44021C(inited);
        swift_setDeallocating();
        sub_1AF90C2E0(inited + 32, sub_1AF90C38C);
        v53 = sub_1AF908F8C(v46, v51);
        sub_1AF0D9DB0(&v75, &qword_1EB640540);
        a5 = v69;

        *a5 = v53;
        v54 = v63;
        sub_1AF456B8C(a5 + v63);
        (*(v24 + 32))(a5 + v54, v47, v23);
        v64(a5 + v54, 0, 1, v23);
LABEL_18:
        a2 = v66;
        goto LABEL_19;
      }

      sub_1AF456B8C(v18);
      sub_1AF456B8C(v22);
      (*(v24 + 8))(v45, v23);
    }

    sub_1AF90C2E0(v11, sub_1AF90C24C);
    goto LABEL_15;
  }

LABEL_19:
  v55 = *a5;
  if (*a5 || (v55 = [objc_allocWithZone(MEMORY[0x1E697A8C8]) init], (*a5 = v55) != 0))
  {
    [v55 setPaused_];
  }

  v56 = a5[1];
  if (!v56)
  {
    if (a2)
    {
      v57 = CFXGPUDeviceGetMTLDevice(*(a2 + 16));
    }

    else
    {
      v57 = 0;
    }

    v56 = [objc_opt_self() rendererWithDevice:v57 options:0];
    swift_unknownObjectRelease();
    [v56 setAutoenablesDefaultLighting_];
    a5[1] = v56;
  }

  v58 = v56;
  [v58 setScene_];
  v59 = [objc_allocWithZone(MEMORY[0x1E697A8B0]) init];
  [v58 setPointOfView_];
}

void sub_1AF90C24C()
{
  if (!qword_1EB644220)
  {
    sub_1AF0D0F68(255, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB644220);
    }
  }
}

uint64_t sub_1AF90C2E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1AF90C340()
{
  result = qword_1EB640530;
  if (!qword_1EB640530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB640530);
  }

  return result;
}

void sub_1AF90C38C()
{
  if (!qword_1EB638360)
  {
    type metadata accessor for LoadingOption(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB638360);
    }
  }
}

void sub_1AF90C3F8()
{
  if (!qword_1ED723C70)
  {
    v0 = type metadata accessor for Query1();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723C70);
    }
  }
}

unint64_t sub_1AF90C450()
{
  result = qword_1EB640550;
  if (!qword_1EB640550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640550);
  }

  return result;
}

uint64_t *sub_1AF90C4A4(uint64_t *a1, uint64_t *a2)
{
  sub_1AF0D0F68(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(v4 - 8);
  v7 = sub_1AFDFC128();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    (*(v8 + 16))(a1, a2, v7);
    (*(v8 + 56))(a1, 0, 1, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_1AF90C644(uint64_t a1)
{
  v2 = sub_1AFDFC128();
  v5 = *(v2 - 8);
  result = (*(v5 + 48))(a1, 1, v2);
  if (!result)
  {
    v4 = *(v5 + 8);

    return v4(a1, v2);
  }

  return result;
}

void *sub_1AF90C714(void *a1, const void *a2)
{
  v4 = sub_1AFDFC128();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a2, 1, v4))
  {
    sub_1AF0D0F68(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    v7 = *(*(v6 - 8) + 64);

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v5 + 16))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }
}

void *sub_1AF90C868(void *a1, void *a2)
{
  v4 = sub_1AFDFC128();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (v7)
  {
    if (!v8)
    {
      (*(v5 + 16))(a1, a2, v4);
      (*(v5 + 56))(a1, 0, 1, v4);
      return a1;
    }
  }

  else
  {
    if (!v8)
    {
      (*(v5 + 24))(a1, a2, v4);
      return a1;
    }

    (*(v5 + 8))(a1, v4);
  }

  sub_1AF0D0F68(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *sub_1AF90CA30(void *a1, const void *a2)
{
  v4 = sub_1AFDFC128();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a2, 1, v4))
  {
    sub_1AF0D0F68(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    v7 = *(*(v6 - 8) + 64);

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v5 + 32))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }
}

void *sub_1AF90CB84(void *a1, void *a2)
{
  v4 = sub_1AFDFC128();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (v7)
  {
    if (!v8)
    {
      (*(v5 + 32))(a1, a2, v4);
      (*(v5 + 56))(a1, 0, 1, v4);
      return a1;
    }
  }

  else
  {
    if (!v8)
    {
      (*(v5 + 40))(a1, a2, v4);
      return a1;
    }

    (*(v5 + 8))(a1, v4);
  }

  sub_1AF0D0F68(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void sub_1AF90CD94()
{
  sub_1AF0D0F68(319, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

unint64_t sub_1AF90CE64()
{
  result = qword_1EB640560;
  if (!qword_1EB640560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640560);
  }

  return result;
}

unint64_t sub_1AF90CEBC()
{
  result = qword_1EB640568;
  if (!qword_1EB640568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640568);
  }

  return result;
}

unint64_t sub_1AF90CF14()
{
  result = qword_1EB640570;
  if (!qword_1EB640570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640570);
  }

  return result;
}

unint64_t sub_1AF90CF68()
{
  result = qword_1EB640580;
  if (!qword_1EB640580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640580);
  }

  return result;
}

uint64_t sub_1AF90CFBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SceneKitAsset(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AF90D020(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1AF90D088(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1AF90D0E4()
{
  result = qword_1EB640590;
  if (!qword_1EB640590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640590);
  }

  return result;
}

unint64_t sub_1AF90D13C()
{
  result = qword_1EB640598;
  if (!qword_1EB640598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640598);
  }

  return result;
}

unint64_t sub_1AF90D194()
{
  result = qword_1EB6405A0;
  if (!qword_1EB6405A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6405A0);
  }

  return result;
}

unint64_t *assignWithCopy for AnyType(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  sub_1AF442064(*a2);
  v4 = *a1;
  *a1 = v3;
  sub_1AF445BE4(v4);
  return a1;
}

unint64_t *assignWithTake for AnyType(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  sub_1AF445BE4(v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for AnyType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7A && *(a1 + 8))
  {
    return (*a1 + 122);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x79)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for AnyType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1AF90D328(void *a1)
{
  if (*a1 >> 62 == 3)
  {
    return (*a1 >> 3) + 6;
  }

  else
  {
    return *a1 >> 61;
  }
}

void *sub_1AF90D358(void *result, uint64_t a2)
{
  if (a2 < 6)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 6)) | 0xC000000000000000;
  }

  return result;
}

uint64_t sub_1AF90D394(unint64_t a1)
{
  v2 = a1 >> 61;
  if (a1 >> 61 == 6)
  {
    v3 = __ROR8__(a1 + 0x3FFFFFFFFFFFFFF0, 3);
    if (v3 > 5)
    {
      if (v3 <= 7)
      {
        if (v3 == 6)
        {
          return 0x3436746E69;
        }

        else
        {
          return 0x3436746E6975;
        }
      }

      if (v3 == 8)
      {
        return 1718378856;
      }

      if (v3 == 9)
      {
        return 0x74616F6C66;
      }
    }

    else
    {
      if (v3 > 3)
      {
        if (v3 == 4)
        {
          return 0x3233746E69;
        }

        else
        {
          return 0x3233746E6975;
        }
      }

      if (!v3)
      {
        return 1819242338;
      }

      if (v3 == 1)
      {
        v4 = 1852403568;
        return v4 | 0x72657400000000;
      }
    }
  }

  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE4C420;
  v7 = sub_1AF90F890(v6 | 0x2000000000000000, a1);

  if (v7)
  {
    return 0x3274616F6C66;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE4C430;
  v9 = sub_1AF90F890(v8 | 0x2000000000000000, a1);

  if (v9)
  {
    return 0x3374616F6C66;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE4C440;
  v11 = sub_1AF90F890(v10 | 0x2000000000000000, a1);

  if (v11)
  {
    return 0x3474616F6C66;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = 2;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AFE4C420;
  *(v12 + 24) = v13 | 0x2000000000000000;
  v14 = sub_1AF90F890(v12 | 0x2000000000000000, a1);

  if (v14)
  {
    return 0x32783274616F6C66;
  }

  v15 = swift_allocObject();
  *(v15 + 16) = 3;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1AFE4C430;
  *(v15 + 24) = v16 | 0x2000000000000000;
  v17 = sub_1AF90F890(v15 | 0x2000000000000000, a1);

  if (v17)
  {
    return 0x33783374616F6C66;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = 4;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1AFE4C440;
  *(v18 + 24) = v19 | 0x2000000000000000;
  v20 = sub_1AF90F890(v18 | 0x2000000000000000, a1);

  if (v20)
  {
    return 0x34783474616F6C66;
  }

  if (a1 == 0xC000000000000060)
  {
    return 0x656C62756F64;
  }

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1AFE85120;
  v22 = sub_1AF90F890(v21 | 0x2000000000000000, a1);

  if (v22)
  {
    return 846491241;
  }

  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1AFE85130;
  v24 = sub_1AF90F890(v23 | 0x2000000000000000, a1);

  if (v24)
  {
    return 0x33746E6975;
  }

  if (v2 <= 3)
  {
    if (v2 > 1)
    {
      v25 = a1 & 0x1FFFFFFFFFFFFFFFLL;
      if (v2 == 2)
      {
        v32 = sub_1AF90D394(*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18));
        MEMORY[0x1B2718AE0](91, 0xE100000000000000);
        v26 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v26);

        MEMORY[0x1B2718AE0](93, 0xE100000000000000);
        return v32;
      }

      v27 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1AF442064(*(v25 + 16));
      v32 = sub_1AF90D394(v27);
      v28 = 0x726566667542;
      v29 = 0xE600000000000000;
LABEL_51:
      MEMORY[0x1B2718AE0](v28, v29);
      sub_1AF445BE4(v27);
      return v32;
    }

    if (!v2)
    {
      v27 = *(a1 + 16);
      sub_1AF442064(v27);
      v32 = sub_1AF90D394(v27);
      v28 = 63;
      v29 = 0xE100000000000000;
      goto LABEL_51;
    }

LABEL_80:
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x6163206120646461, 0xEF20726F66206573);
    sub_1AFDFE458();
    result = sub_1AFDFE518();
    __break(1u);
    return result;
  }

  if (v2 <= 5)
  {
    if (v2 == 4)
    {
      return 0x72656C706D6173;
    }

    v30 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

    return v30;
  }

  if (v2 != 6)
  {
LABEL_79:
    sub_1AFDFEE18();
    __break(1u);
    goto LABEL_80;
  }

  result = 0x696E726574617571;
  switch(__ROR8__(a1 + 0x4000000000000000, 3))
  {
    case 0:
      return 1701736302;
    case 1:
      return 2003790950;
    case 4:
      return 1836412517;
    case 5:
      return result;
    case 0xDLL:
      return 0x64657079746E75;
    case 0xELL:
      return 0x676E69727473;
    case 0xFLL:
      return 0x6D6152726F6C6F63;
    case 0x10:
      return 0xD000000000000010;
    case 0x11:
      return 0x6576727563;
    case 0x12:
      v31 = 0x546576727563;
      goto LABEL_68;
    case 0x13:
      return 0x7465737361;
    case 0x14:
      return 0x7463656A626FLL;
    case 0x15:
      return 0x6574617473;
    case 0x16:
      v4 = 1953066341;
      return v4 | 0x72657400000000;
    case 0x17:
      return 0x656C636974726170;
    case 0x18:
      return 7629160;
    case 0x19:
      return 0xD000000000000011;
    case 0x1ALL:
      v31 = 0x546C6174656DLL;
LABEL_68:
      result = v31 & 0xFFFFFFFFFFFFLL | 0x7865000000000000;
      break;
    case 0x1BLL:
      result = 0x6675426C6174656DLL;
      break;
    case 0x1CLL:
      result = 0x756F724765646F6ELL;
      break;
    case 0x1DLL:
      result = 0xD000000000000011;
      break;
    case 0x1ELL:
      result = 0x6C69466567616D69;
      break;
    case 0x1FLL:
      result = 0xD000000000000017;
      break;
    default:
      goto LABEL_79;
  }

  return result;
}

uint64_t sub_1AF90DC34(unint64_t a1, unint64_t a2)
{
  if (sub_1AF90F890(a2, a1))
  {
    v4 = 1;
  }

  else if (a2 >> 61)
  {
    v4 = 0;
  }

  else
  {
    v5 = *(a2 + 16);
    sub_1AF442064(v5);
    if (sub_1AF90F890(a1, 0xC000000000000000))
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_1AF90DC34(a1, v5);
    }

    sub_1AF445BE4(v5);
  }

  return v4 & 1;
}

uint64_t sub_1AF90DCC0(unint64_t a1)
{
  v1 = __ROR8__(a1 + 0x3FFFFFFFFFFFFFD0, 3);
  v2 = 0x6Fu >> v1;
  if (v1 > 6)
  {
    LOBYTE(v2) = 0;
  }

  if (a1 >> 61 == 6)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1AF90DCF4(unint64_t a1)
{
  if (a1 >> 61 == 1)
  {
    v2 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    sub_1AF442064(*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18));
  }

  else if (a1 >> 61)
  {
    return 0;
  }

  else
  {
    v1 = *(a1 + 16);
    sub_1AF442064(v1);
    v2 = sub_1AF90DCF4(v1);
    sub_1AF445BE4(v1);
  }

  return v2;
}

BOOL sub_1AF90DD74(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 61;
  if (a2 >> 61 == 2)
  {
    v5 = 24;
  }

  else
  {
    if (v4 != 3)
    {
      if (v4 == 6 && a2 == 0xC0000000000000F0)
      {
        return 0;
      }

      goto LABEL_9;
    }

    v5 = 16;
  }

  v6 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + v5);
  sub_1AF442064(v6);
  v7 = sub_1AF90DD74(a1, v6);
  sub_1AF445BE4(v6);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  if (a1 >= 2u)
  {
    if (a1 == 2)
    {
      v9 = __ROR8__(a2 + 0x3FFFFFFFFFFFFF90, 3);
      v10 = 0x14u >> v9;
      if (v9 >= 8)
      {
        LOBYTE(v10) = 1;
      }

      if (v4 == 6)
      {
        return v10;
      }

      else
      {
        return 1;
      }
    }

    if (v4 != 1)
    {
      v8 = v4 != 6 || ((a2 + 0x3FFFFFFFFFFFFF88) & 0xFFFFFFFFFFFFFFEFLL) != 0;
      if (v4 == 4)
      {
        return 0;
      }

      return v8;
    }

    v11 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    if ((sub_1AF90F890(v11, 0xC000000000000058) & 1) == 0)
    {
      if (v11 >> 61 == 1)
      {
        v12 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        sub_1AF442064(v12);
        v13 = sub_1AF90F890(v12, 0xC000000000000058);
        sub_1AF445BE4(v12);
        return v13 & 1;
      }

      return 0;
    }
  }

  return 1;
}

unint64_t sub_1AF90DEFC(uint64_t a1)
{
  v2 = 0xC000000000000018;
  if (!swift_dynamicCastMetatype())
  {
    if (swift_dynamicCastMetatype())
    {
      return 0xC000000000000010;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0xC000000000000040;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0xC000000000000030;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0xC000000000000040;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0xC000000000000048;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0xC000000000000038;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0xC000000000000060;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0xC000000000000058;
    }

    sub_1AF90FFC4(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    if (swift_dynamicCastMetatype())
    {
      goto LABEL_19;
    }

    sub_1AF90FFC4(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    if (swift_dynamicCastMetatype())
    {
      v4 = swift_allocObject();
      v5 = xmmword_1AFE4C430;
      goto LABEL_24;
    }

    sub_1AF90FFC4(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    if (swift_dynamicCastMetatype())
    {
      v4 = swift_allocObject();
      v5 = xmmword_1AFE4C440;
      goto LABEL_24;
    }

    type metadata accessor for simd_float2x2(0);
    if (swift_dynamicCastMetatype())
    {
      v6 = swift_allocObject();
      *(v6 + 16) = 2;
      v7 = swift_allocObject();
      v8 = xmmword_1AFE4C420;
LABEL_31:
      *(v7 + 16) = v8;
      *(v6 + 24) = v7 | 0x2000000000000000;
      return v6 | 0x2000000000000000;
    }

    type metadata accessor for simd_float3x3(0);
    if (swift_dynamicCastMetatype())
    {
      v6 = swift_allocObject();
      *(v6 + 16) = 3;
      v7 = swift_allocObject();
      v8 = xmmword_1AFE4C430;
      goto LABEL_31;
    }

    type metadata accessor for simd_float4x4(0);
    if (swift_dynamicCastMetatype())
    {
      v6 = swift_allocObject();
      *(v6 + 16) = 4;
      v7 = swift_allocObject();
      v8 = xmmword_1AFE4C440;
      goto LABEL_31;
    }

    type metadata accessor for simd_quatf(0);
    if (swift_dynamicCastMetatype())
    {
      return 0xC000000000000028;
    }

    sub_1AF91002C(0, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    if (swift_dynamicCastMetatype())
    {
      goto LABEL_36;
    }

    sub_1AF91002C(0, &unk_1ED72F940, MEMORY[0x1E69E7360], MEMORY[0x1E69E7378], MEMORY[0x1E69E66A8]);
    if (swift_dynamicCastMetatype())
    {
      goto LABEL_36;
    }

    sub_1AF91002C(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    if (swift_dynamicCastMetatype())
    {
LABEL_19:
      v4 = swift_allocObject();
      v5 = xmmword_1AFE4C420;
LABEL_24:
      *(v4 + 16) = v5;
      return v4 | 0x2000000000000000;
    }

    sub_1AF90FFC4(0, &qword_1ED722EC8, sub_1AF477C08, MEMORY[0x1E69E72F0], MEMORY[0x1E69E7428]);
    if (swift_dynamicCastMetatype())
    {
LABEL_36:
      v4 = swift_allocObject();
      v5 = xmmword_1AFE85120;
      goto LABEL_24;
    }

    sub_1AF90FFC4(0, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
    if (swift_dynamicCastMetatype())
    {
      v4 = swift_allocObject();
      v5 = xmmword_1AFE85130;
      goto LABEL_24;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0xC000000000000078;
    }

    sub_1AF91002C(0, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
    if (swift_dynamicCastMetatype())
    {
      return 0xC000000000000088;
    }

    type metadata accessor for TextureDescriptor(0);
    if (swift_dynamicCastMetatype())
    {
      return 0xC0000000000000C8;
    }

    v9 = swift_conformsToProtocol2();
    if (v9 && a1)
    {
      v10 = (*(v9 + 8))(a1, v9);
      v11 = sub_1AF90DEFC(v10);
      if ((~v11 & 0xF000000000000007) != 0)
      {
        v13 = v11;
        v2 = swift_allocObject();
        *(v2 + 16) = v13;
        return v2;
      }

      return 0xF000000000000007;
    }

    type metadata accessor for __vfx_sampler1d(0);
    if (swift_dynamicCastMetatype())
    {
      v12 = swift_allocObject();
      *(v12 + 16) = 0;
      return v12 | 0x8000000000000000;
    }

    type metadata accessor for __vfx_sampler2d(0);
    if (swift_dynamicCastMetatype())
    {
      v14 = swift_allocObject();
      v15 = 1;
LABEL_58:
      *(v14 + 16) = v15;
      return v14 | 0x8000000000000000;
    }

    type metadata accessor for __vfx_sampler3d(0);
    if (swift_dynamicCastMetatype())
    {
      v14 = swift_allocObject();
      v15 = 2;
      goto LABEL_58;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0xC0000000000000B0;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0xC000000000000070;
    }

    sub_1AF82352C(0, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
    if (swift_dynamicCastMetatype())
    {
      v16 = swift_allocObject();
      v17 = 0xC000000000000058;
LABEL_65:
      *(v16 + 16) = v17;
      return v16 | 0x6000000000000000;
    }

    if (swift_conformsToProtocol2() && a1)
    {
      return 0xC000000000000020;
    }

    if (swift_dynamicCastMetatype())
    {
      return v2;
    }

    sub_1AF0D4478(0, &qword_1EB632940);
    if (swift_dynamicCastMetatype())
    {
      return 0xC0000000000000A8;
    }

    type metadata accessor for vfx_script_buffer(0);
    if (swift_dynamicCastMetatype())
    {
      v16 = swift_allocObject();
      v17 = 0xC000000000000000;
      goto LABEL_65;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0xC0000000000000F0;
    }

    v2 = 0xC0000000000000A0;
    if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
    {
      return 0xF000000000000007;
    }
  }

  return v2;
}

void sub_1AF90E730(unint64_t a1)
{
  v2 = a1 >> 61;
  if (a1 >> 61 == 6)
  {
    v3 = __ROR8__(a1 + 0x3FFFFFFFFFFFFFF0, 3);
    if (v3 <= 4)
    {
      if (v3 < 2 || v3 == 4)
      {
        return;
      }
    }

    else if (v3 <= 8)
    {
      return;
    }
  }

  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE85140;
  v5 = sub_1AF90F890(v4 | 0x2000000000000000, a1);

  if (v5)
  {
    return;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE85150;
  v7 = sub_1AF90F890(v6 | 0x2000000000000000, a1);

  if (v7)
  {
    return;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE85160;
  v9 = sub_1AF90F890(v8 | 0x2000000000000000, a1);

  if ((v9 & 1) != 0 || a1 == 0xC000000000000058)
  {
    return;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE4C420;
  v11 = sub_1AF90F890(v10 | 0x2000000000000000, a1);

  if (v11)
  {
    v12 = &unk_1ED72F770;
    v13 = MEMORY[0x1E69E6448];
    v14 = sub_1AF43A0C8;
LABEL_15:
    v15 = v14;
    v16 = MEMORY[0x1E69E7428];
LABEL_21:
    sub_1AF90FFC4(0, v12, v15, v13, v16);
    return;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1AFE4C430;
  v18 = sub_1AF90F890(v17 | 0x2000000000000000, a1);

  if (v18)
  {
    v12 = &qword_1ED72F740;
    v13 = MEMORY[0x1E69E6448];
    v19 = sub_1AF43A0C8;
LABEL_18:
    v15 = v19;
    v16 = MEMORY[0x1E69E7450];
    goto LABEL_21;
  }

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1AFE4C440;
  v21 = sub_1AF90F890(v20 | 0x2000000000000000, a1);

  if (v21)
  {
    v12 = &qword_1ED72F6E0;
    v13 = MEMORY[0x1E69E6448];
    v15 = sub_1AF43A0C8;
    v16 = MEMORY[0x1E69E74A8];
    goto LABEL_21;
  }

  v22 = swift_allocObject();
  *(v22 + 16) = 2;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1AFE4C420;
  *(v22 + 24) = v23 | 0x2000000000000000;
  v24 = sub_1AF90F890(v22 | 0x2000000000000000, a1);

  if (v24)
  {
    type metadata accessor for simd_float2x2(0);
    return;
  }

  v25 = swift_allocObject();
  *(v25 + 16) = 3;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1AFE4C430;
  *(v25 + 24) = v26 | 0x2000000000000000;
  v27 = sub_1AF90F890(v25 | 0x2000000000000000, a1);

  if (v27)
  {
    type metadata accessor for simd_float3x3(0);
    return;
  }

  v28 = swift_allocObject();
  *(v28 + 16) = 4;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1AFE4C440;
  *(v28 + 24) = v29 | 0x2000000000000000;
  v30 = sub_1AF90F890(v28 | 0x2000000000000000, a1);

  if (v30)
  {
    type metadata accessor for simd_float4x4(0);
    return;
  }

  if (a1 != 0xC000000000000060)
  {
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1AFE85120;
    v32 = sub_1AF90F890(v31 | 0x2000000000000000, a1);

    if (v32)
    {
      v12 = &unk_1ED722EC8;
      v13 = MEMORY[0x1E69E72F0];
      v14 = sub_1AF477C08;
      goto LABEL_15;
    }

    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1AFE85130;
    v34 = sub_1AF90F890(v33 | 0x2000000000000000, a1);

    if (v34)
    {
      v12 = &unk_1ED72F730;
      v13 = MEMORY[0x1E69E7668];
      v19 = sub_1AF477BB4;
      goto LABEL_18;
    }

    if (v2 == 3)
    {
      type metadata accessor for vfx_script_buffer(0);
    }

    else if (v2 == 6)
    {
      switch(__ROR8__(a1 + 0x3FFFFFFFFFFFFFD8, 3))
      {
        case 0:
          type metadata accessor for simd_quatf(0);
          break;
        case 0xCLL:
          sub_1AF91002C(0, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
          break;
        case 0xFLL:
          v35 = &qword_1EB63A740;
          v36 = &qword_1ED72F7F0;
          goto LABEL_45;
        case 0x10:
          v35 = &unk_1EB6405B0;
          v36 = &unk_1EB632940;
LABEL_45:
          sub_1AF450F88(0, v35, v36);
          break;
        case 0x14:
          type metadata accessor for TextureDescriptor(0);
          break;
        case 0x1ALL:
          type metadata accessor for pbr_lighting_parameters(0);
          break;
        default:
          return;
      }
    }
  }
}

void sub_1AF90EDE8(unint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = a1 >> 61;
  if (a1 >> 61 == 6)
  {
    v7 = __ROR8__(a1 + 0x3FFFFFFFFFFFFFF0, 3);
    if (v7 <= 5)
    {
      switch(v7)
      {
        case 0:
          *(a2 + 24) = MEMORY[0x1E69E6370];
          *a2 = a3 != 0.0;
          return;
        case 4:
          v8 = a3;
          v9 = MEMORY[0x1E69E72F0];
          goto LABEL_23;
        case 5:
          v8 = a3;
          v9 = MEMORY[0x1E69E7668];
LABEL_23:
          *(a2 + 24) = v9;
          *a2 = v8;
          return;
      }

      goto LABEL_11;
    }

    switch(v7)
    {
      case 6:
        v26 = a3;
        v27 = MEMORY[0x1E69E7360];
        break;
      case 7:
        v26 = a3;
        v27 = MEMORY[0x1E69E76D8];
        break;
      case 9:
        v10 = a3;
        *(a2 + 24) = MEMORY[0x1E69E6448];
        *a2 = v10;
        return;
      default:
        goto LABEL_11;
    }

    *(a2 + 24) = v27;
LABEL_26:
    *a2 = v26;
    return;
  }

LABEL_11:
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AFE4C420;
  v12 = sub_1AF90F890(v11 | 0x2000000000000000, a1);

  if (v12)
  {
    *v13.i32 = a3;
    v71 = v13;
    sub_1AF90FFC4(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    *(a2 + 24) = v14;
    *a2 = vdup_lane_s32(v71, 0);
    return;
  }

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1AFE4C430;
  v16 = sub_1AF90F890(v15 | 0x2000000000000000, a1);

  if (v16)
  {
    *v17.i32 = a3;
    v72 = v17;
    sub_1AF90FFC4(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    *(a2 + 24) = v18;
    v19 = swift_allocObject();
    *a2 = v19;
    v20 = vdupq_lane_s32(v72, 0);
LABEL_15:
    v20.i32[3] = 0;
    *(v19 + 16) = v20;
    return;
  }

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1AFE4C440;
  v22 = sub_1AF90F890(v21 | 0x2000000000000000, a1);

  if (v22)
  {
    *v23.i32 = a3;
    v73 = v23;
    sub_1AF90FFC4(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    *(a2 + 24) = v24;
    v25 = swift_allocObject();
    *a2 = v25;
    v25[1] = vdupq_lane_s32(v73, 0);
    return;
  }

  v28 = swift_allocObject();
  *(v28 + 16) = 2;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1AFE4C420;
  *(v28 + 24) = v29 | 0x2000000000000000;
  v30 = sub_1AF90F890(v28 | 0x2000000000000000, a1);

  if (v30)
  {
    type metadata accessor for simd_float2x2(0);
    *(a2 + 24) = v31;
    *a2 = 1065353216;
    *(a2 + 8) = 0x3F80000000000000;
    return;
  }

  v32 = swift_allocObject();
  *(v32 + 16) = 3;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1AFE4C430;
  *(v32 + 24) = v33 | 0x2000000000000000;
  v34 = sub_1AF90F890(v32 | 0x2000000000000000, a1);

  if (v34)
  {
    type metadata accessor for simd_float3x3(0);
    *(a2 + 24) = v35;
    v36 = swift_allocObject();
    *a2 = v36;
    v36[1] = xmmword_1AFE20150;
    v36[2] = xmmword_1AFE20160;
    v36[3] = xmmword_1AFE20180;
  }

  else
  {
    v37 = swift_allocObject();
    *(v37 + 16) = 4;
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1AFE4C440;
    *(v37 + 24) = v38 | 0x2000000000000000;
    v39 = sub_1AF90F890(v37 | 0x2000000000000000, a1);

    if (v39)
    {
      type metadata accessor for simd_float4x4(0);
      *(a2 + 24) = v40;
      v41 = swift_allocObject();
      *a2 = v41;
      v41[1] = xmmword_1AFE20150;
      v41[2] = xmmword_1AFE20160;
      v41[3] = xmmword_1AFE20180;
      v41[4] = xmmword_1AFE201A0;
    }

    else if (a1 == 0xC000000000000060)
    {
LABEL_33:
      *(a2 + 24) = MEMORY[0x1E69E63B0];
      *a2 = a3;
    }

    else
    {
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1AFE85130;
      v43 = sub_1AF90F890(v42 | 0x2000000000000000, a1);

      if (v43)
      {
        sub_1AF90FFC4(0, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
        *(a2 + 24) = v44;
        v19 = swift_allocObject();
        *a2 = v19;
        v20 = vdupq_n_s32(a3);
        goto LABEL_15;
      }

      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1AFE85120;
      v46 = sub_1AF90F890(v45 | 0x2000000000000000, a1);

      if (v46)
      {
        sub_1AF90FFC4(0, &qword_1ED722EC8, sub_1AF477C08, MEMORY[0x1E69E72F0], MEMORY[0x1E69E7428]);
        *(a2 + 24) = v48;
        *a2 = vdup_n_s32(a3);
      }

      else if (v6)
      {
        if (v6 == 6)
        {
          switch(__ROR8__(a1 + 0x3FFFFFFFFFFFFFE8, 3))
          {
            case 0:
              goto LABEL_40;
            case 2:
              type metadata accessor for simd_quatf(0);
              *(a2 + 24) = v67;
              v68 = swift_allocObject();
              *a2 = v68;
              *(v68 + 16) = xmmword_1AFE201A0;
              return;
            case 0xALL:
              goto LABEL_33;
            case 0xBLL:
              *(a2 + 24) = MEMORY[0x1E69E6158];
              *a2 = 0;
              *(a2 + 8) = 0xE000000000000000;
              return;
            case 0xCLL:
              sub_1AF43A038();
              v69 = swift_allocObject();
              __asm { FMOV            V1.4S, #1.0 }

              v69[1] = xmmword_1AFE4C620;
              v69[2] = _Q1;
              v69[3] = xmmword_1AFE201A0;
              *(a2 + 24) = &type metadata for ColorRamp;
              *a2 = v69;
              *(a2 + 8) = &unk_1F24EDC70;
              *(a2 + 16) = 1;
              return;
            case 0xDLL:
            case 0xFLL:
              *(a2 + 24) = &type metadata for Entity;
              *a2 = 0xFFFFFFFFLL;
              return;
            case 0xELL:
              v55 = sub_1AF9D3914(MEMORY[0x1E69E7CC0]);
              v57 = v56;
              sub_1AF91002C(0, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
              *(a2 + 24) = v58;
              v59 = swift_allocObject();
              *a2 = v59;
              *(v59 + 16) = v55;
              *(v59 + 24) = v57;
              *(v59 + 32) = 0;
              *(v59 + 40) = 1;
              return;
            case 0x11:
              v53 = &unk_1EB632948;
              v54 = &qword_1EB633BB0;
              goto LABEL_55;
            case 0x12:
              v53 = &unk_1EB6405B0;
              v54 = &qword_1EB632940;
LABEL_55:
              sub_1AF450F88(0, v53, v54);
              goto LABEL_41;
            case 0x14:
              *(a2 + 24) = MEMORY[0x1E69E6530];
              v26 = -1;
              goto LABEL_26;
            case 0x19:
              *(a2 + 24) = MEMORY[0x1E69E76D8];
              *a2 = 0;
              return;
            case 0x1ALL:
              v52 = RGResourceIdentifierFinalColor(v47);
              *(a2 + 24) = MEMORY[0x1E69E76D8];
              *a2 = v52;
              return;
            case 0x1BLL:
              v60 = sub_1AFDFD488();
              *(v60 + 16) = 9;
              __asm { FMOV            V0.4S, #1.0 }

              *(v60 + 32) = _Q0;
              *(v60 + 48) = _Q0;
              *(v60 + 64) = 1065353216;
              *(a2 + 24) = &type metadata for ImageFilter;
              v66 = swift_allocObject();
              *a2 = v66;
              v66[1] = vdupq_n_s64(3uLL);
              v66[2].i64[0] = v60;
              v66[2].i8[8] = 2;
              return;
            default:
              break;
          }
        }

        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0x20676E697373696DLL, 0xEE00203A65736163);
        sub_1AFDFE458();
        sub_1AFDFE518();
        __break(1u);
      }

      else if (*(a1 + 16) == 0xC000000000000018)
      {
LABEL_40:
        sub_1AF82352C(0, &qword_1ED722038, MEMORY[0x1E69E6270], MEMORY[0x1E69E6720]);
LABEL_41:
        *(a2 + 24) = v49;
        *a2 = 0;
      }

      else
      {
        sub_1AF90EDE8(&v74, a3);
        v50 = v75;
        v51 = sub_1AF441150(&v74, v75);
        sub_1AF90F7CC(v51, v50, a2);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v74);
      }
    }
  }
}

uint64_t sub_1AF90F7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = sub_1AFDFDD58();
  v6 = sub_1AF585714(a3);
  v9 = *(a2 - 8);
  (*(v9 + 16))(v6, a1, a2);
  v7 = *(v9 + 56);

  return v7(v6, 0, 1, a2);
}

uint64_t sub_1AF90F890(unint64_t a1, unint64_t a2)
{
  while (1)
  {
    v2 = a1 >> 61;
    if ((a1 >> 61) >= 2)
    {
      break;
    }

    if (v2 != 1)
    {
      if (!(a2 >> 61))
      {
        v3 = *(a1 + 16);
        v4 = *(a2 + 16);
        goto LABEL_23;
      }

      return 0;
    }

    if (a2 >> 61 != 1)
    {
      return 0;
    }

LABEL_7:
    if (*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) != *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
    {
      return 0;
    }

    a1 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    a2 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  }

  if ((a1 >> 61) <= 2)
  {
    if (a2 >> 61 != 2)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (v2 > 4)
  {
    if (v2 == 5)
    {
      if (a2 >> 61 != 5 || *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) != *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
      {
        return 0;
      }

      if (*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) != *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) || *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20) != *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20))
      {

        return sub_1AFDFEE28();
      }
    }

    else
    {
      switch(__ROR8__(a1 + 0x4000000000000000, 3))
      {
        case 1:
          v7 = 0xC000000000000008;
          break;
        case 2:
          v7 = 0xC000000000000010;
          break;
        case 3:
          v7 = 0xC000000000000018;
          break;
        case 4:
          v7 = 0xC000000000000020;
          break;
        case 5:
          v7 = 0xC000000000000028;
          break;
        case 6:
          v7 = 0xC000000000000030;
          break;
        case 7:
          v7 = 0xC000000000000038;
          break;
        case 8:
          v7 = 0xC000000000000040;
          break;
        case 9:
          v7 = 0xC000000000000048;
          break;
        case 0xALL:
          v7 = 0xC000000000000050;
          break;
        case 0xBLL:
          v8 = 80;
          goto LABEL_56;
        case 0xCLL:
          v7 = 0xC000000000000060;
          break;
        case 0xDLL:
          v7 = 0xC000000000000068;
          break;
        case 0xELL:
          v7 = 0xC000000000000070;
          break;
        case 0xFLL:
          v7 = 0xC000000000000078;
          break;
        case 0x10:
          v7 = 0xC000000000000080;
          break;
        case 0x11:
          v7 = 0xC000000000000088;
          break;
        case 0x12:
          v7 = 0xC000000000000090;
          break;
        case 0x13:
          v8 = 144;
          goto LABEL_56;
        case 0x14:
          v7 = 0xC0000000000000A0;
          break;
        case 0x15:
          v8 = 160;
          goto LABEL_56;
        case 0x16:
          v7 = 0xC0000000000000B0;
          break;
        case 0x17:
          v8 = 176;
          goto LABEL_56;
        case 0x18:
          v7 = 0xC0000000000000C0;
          break;
        case 0x19:
          v7 = 0xC0000000000000C8;
          break;
        case 0x1ALL:
          v7 = 0xC0000000000000D0;
          break;
        case 0x1BLL:
          v8 = 208;
LABEL_56:
          v7 = v8 | 0xC000000000000008;
          break;
        case 0x1CLL:
          v7 = 0xC0000000000000E0;
          break;
        case 0x1DLL:
          v7 = 0xC0000000000000E8;
          break;
        case 0x1ELL:
          v7 = 0xC0000000000000F0;
          break;
        case 0x1FLL:
          v7 = 0xC0000000000000F8;
          break;
        default:
          v7 = 0xC000000000000000;
          break;
      }

      if (a2 != v7)
      {
        return 0;
      }
    }

    return 1;
  }

  if (v2 == 3)
  {
    if (a2 >> 61 == 3)
    {
      v3 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v4 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
LABEL_23:
      sub_1AF442064(v4);
      v6 = sub_1AF90F890(v3, v4);
      sub_1AF445BE4(v4);
      return v6 & 1;
    }
  }

  else if (a2 >> 61 == 4)
  {
    return *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  }

  return 0;
}

unint64_t sub_1AF90FC0C(uint64_t a1, unint64_t a2)
{
  while (1)
  {
    v5 = a2 >> 61;
    if ((a2 >> 61) >= 2)
    {
      break;
    }

    if (v5 != 1)
    {
      v6 = *(a2 + 16);
      v7 = 4;
LABEL_16:
      MEMORY[0x1B271ACB0](v7);
      sub_1AF442064(v6);
      sub_1AF90FC0C(a1, v6);

      return sub_1AF445BE4(v6);
    }

LABEL_2:
    v4 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    a2 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    MEMORY[0x1B271ACB0]();
    MEMORY[0x1B271ACB0](v4);
  }

  if ((a2 >> 61) <= 2)
  {
    goto LABEL_2;
  }

  if (v5 <= 4)
  {
    if (v5 != 3)
    {
      MEMORY[0x1B271ACB0](25);
      return sub_1AFDFF2A8();
    }

    v6 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v7 = 7;
    goto LABEL_16;
  }

  if (v5 == 5)
  {
    MEMORY[0x1B271ACB0](36);
    sub_1AFDFF2A8();

    return sub_1AFDFD038();
  }

  else
  {
    switch(__ROR8__(a2 + 0x4000000000000000, 3))
    {
      case 1:
        v9 = 1;
        break;
      case 2:
        v9 = 2;
        break;
      case 3:
        v9 = 3;
        break;
      case 4:
        v9 = 8;
        break;
      case 5:
        v9 = 9;
        break;
      case 6:
        v9 = 10;
        break;
      case 7:
        v9 = 11;
        break;
      case 8:
        v9 = 12;
        break;
      case 9:
        v9 = 13;
        break;
      case 0xALL:
        v9 = 14;
        break;
      case 0xBLL:
        v9 = 15;
        break;
      case 0xCLL:
        v9 = 16;
        break;
      case 0xDLL:
        v9 = 17;
        break;
      case 0xELL:
        v9 = 18;
        break;
      case 0xFLL:
        v9 = 19;
        break;
      case 0x10:
        v9 = 20;
        break;
      case 0x11:
        v9 = 21;
        break;
      case 0x12:
        v9 = 22;
        break;
      case 0x13:
        v9 = 23;
        break;
      case 0x14:
        v9 = 24;
        break;
      case 0x15:
        v9 = 26;
        break;
      case 0x16:
        v9 = 27;
        break;
      case 0x17:
        v9 = 28;
        break;
      case 0x18:
        v9 = 29;
        break;
      case 0x19:
        v9 = 30;
        break;
      case 0x1ALL:
        v9 = 31;
        break;
      case 0x1BLL:
        v9 = 32;
        break;
      case 0x1CLL:
        v9 = 33;
        break;
      case 0x1DLL:
        v9 = 34;
        break;
      case 0x1ELL:
        v9 = 35;
        break;
      case 0x1FLL:
        v9 = 37;
        break;
      default:
        v9 = 0;
        break;
    }

    return MEMORY[0x1B271ACB0](v9);
  }
}

uint64_t sub_1AF90FE74()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AF90FC0C(v3, v1);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF90FEC4()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AF90FC0C(v3, v1);
  return sub_1AFDFF2F8();
}

unint64_t sub_1AF90FF18()
{
  result = qword_1EB6405A8;
  if (!qword_1EB6405A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6405A8);
  }

  return result;
}

unint64_t sub_1AF90FF6C(unint64_t a1)
{
  if (a1 >> 61)
  {
    sub_1AF442064(a1);
    return a1;
  }

  else
  {
    v1 = *(a1 + 16);
    sub_1AF442064(v1);
    v2 = sub_1AF90FF6C(v1);
    sub_1AF445BE4(v1);
    return v2;
  }
}

void sub_1AF90FFC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1AF91002C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1AF910080()
{
  sub_1AF770DF0();
  sub_1AF770E44();
  if (sub_1AFDFCD68())
  {
    v0 = sub_1AFDFCD68();

    if (v0)
    {
      return 4;
    }

    else
    {
      return 0;
    }
  }

  else if (sub_1AFDFCD68())
  {
    v2 = sub_1AFDFCD68();

    if (v2)
    {
      return 5;
    }

    else
    {
      return 1;
    }
  }

  else if (sub_1AFDFCD68())
  {

    return 2;
  }

  else if (sub_1AFDFCD68())
  {

    return 3;
  }

  else
  {
    v3 = sub_1AFDFCD68();

    if (v3)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_1AF9102F8(unint64_t a1)
{
  v1 = a1 >> 61;
  if ((a1 >> 61) > 2)
  {
    if (v1 > 4)
    {
      if (v1 == 6)
      {
        v8 = __ROR8__(a1 + 0x4000000000000000, 3);
        result = 1;
        switch(v8)
        {
          case 1uLL:
            result = 2;
            break;
          case 2uLL:
            result = 3;
            break;
          case 3uLL:
            result = 4;
            break;
          case 4uLL:
            result = 26;
            break;
          case 5uLL:
            result = 8;
            break;
          case 6uLL:
            result = 9;
            break;
          case 7uLL:
            result = 10;
            break;
          case 8uLL:
            result = 11;
            break;
          case 9uLL:
            result = 46;
            break;
          case 0xAuLL:
            result = 12;
            break;
          case 0xBuLL:
            result = 13;
            break;
          case 0xCuLL:
            result = 14;
            break;
          case 0xDuLL:
            result = 15;
            break;
          case 0xEuLL:
            result = 25;
            break;
          case 0xFuLL:
            result = 16;
            break;
          case 0x10uLL:
            result = 23;
            break;
          case 0x11uLL:
          case 0x12uLL:
          case 0x1EuLL:
            result = v8;
            break;
          case 0x13uLL:
            result = 21;
            break;
          case 0x14uLL:
            result = 7;
            break;
          case 0x15uLL:
            result = 34;
            break;
          case 0x16uLL:
            result = 24;
            break;
          case 0x17uLL:
            result = 38;
            break;
          case 0x18uLL:
            result = 29;
            break;
          case 0x19uLL:
            result = 19;
            break;
          case 0x1AuLL:
            result = 20;
            break;
          case 0x1BuLL:
            result = 35;
            break;
          case 0x1CuLL:
            result = 22;
            break;
          case 0x1DuLL:
            result = 32;
            break;
          case 0x1FuLL:
            goto LABEL_42;
          default:
            return result;
        }
      }

      else
      {
LABEL_42:
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF3A7A0);
        sub_1AFDFE458();
        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        result = sub_1AFDFE518();
        __break(1u);
      }
    }

    else if (v1 == 3)
    {
      v4 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1AF442064(v4);
      v5 = sub_1AF9102F8(v4);
      sub_1AF445BE4(v4);
      return (v5 << 8) | 0x25;
    }

    else
    {
      return (*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) << 8) | 0x1C;
    }
  }

  else if (v1)
  {
    v2 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) << 8;
    if (v1 == 1)
    {
      return v2 | (sub_1AF9102F8(*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18)) << 16) | 6;
    }

    else
    {
      return v2 | (sub_1AF9102F8(*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18)) << 16) | 0x1B;
    }
  }

  else
  {
    v6 = *(a1 + 16);
    sub_1AF442064(v6);
    v7 = sub_1AF9102F8(v6);
    sub_1AF445BE4(v6);
    return (v7 << 8) | 5;
  }

  return result;
}

unint64_t sub_1AF9105CC(unint64_t a1, uint64_t a2, char a3)
{
  v4 = a1 - 1;
  result = 0xC000000000000000;
  switch(v4)
  {
    case 0:
      return result;
    case 1:
      result = 0xC000000000000008;
      break;
    case 2:
      result = 0xC000000000000010;
      break;
    case 3:
      result = 0xC000000000000018;
      break;
    case 4:
      v12 = sub_1AF9105CC(a1 >> 8, a2, a3 & 1);
      if ((~v12 & 0xF000000000000007) == 0)
      {
        goto LABEL_41;
      }

      v13 = v12;
      result = swift_allocObject();
      *(result + 16) = v13;
      break;
    case 5:
      v9 = sub_1AF9105CC(a1 >> 16, a2, a3 & 1);
      if ((~v9 & 0xF000000000000007) == 0)
      {
        goto LABEL_41;
      }

      v10 = v9;
      v11 = swift_allocObject();
      *(v11 + 16) = BYTE1(a1);
      *(v11 + 24) = v10;
      result = v11 | 0x2000000000000000;
      break;
    case 6:
      result = 0xC0000000000000A0;
      break;
    case 7:
      result = 0xC000000000000028;
      break;
    case 8:
      result = 0xC000000000000030;
      break;
    case 9:
      result = 0xC000000000000038;
      break;
    case 10:
      result = 0xC000000000000040;
      break;
    case 11:
      result = 0xC000000000000050;
      break;
    case 12:
      result = 0xC000000000000058;
      break;
    case 13:
      result = 0xC000000000000060;
      break;
    case 14:
      result = 0xC000000000000068;
      break;
    case 15:
      result = 0xC000000000000078;
      break;
    case 16:
      result = 0xC000000000000088;
      break;
    case 17:
      result = 0xC000000000000090;
      break;
    case 18:
      result = 0xC0000000000000C8;
      break;
    case 19:
      result = 0xC0000000000000D0;
      break;
    case 20:
      result = 0xC000000000000098;
      break;
    case 21:
      result = 0xC0000000000000E0;
      break;
    case 22:
      result = 0xC000000000000080;
      break;
    case 23:
      result = 0xC0000000000000B0;
      break;
    case 24:
      result = 0xC000000000000070;
      break;
    case 25:
      result = 0xC000000000000020;
      break;
    case 26:
      v17 = sub_1AF9105CC(a1 >> 16, a2, a3 & 1);
      if ((~v17 & 0xF000000000000007) == 0)
      {
        goto LABEL_41;
      }

      v18 = v17;
      v19 = swift_allocObject();
      *(v19 + 16) = BYTE1(a1);
      *(v19 + 24) = v18;
      result = v19 | 0x4000000000000000;
      break;
    case 27:
      v14 = sub_1AFAB8BF4(a1 >> 8);
      if (v14 == 7)
      {
        goto LABEL_41;
      }

      v15 = v14;
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      result = v16 | 0x8000000000000000;
      break;
    case 28:
      result = 0xC0000000000000C0;
      break;
    case 29:
      if (a3 & 1 | (a2 > 3010))
      {
        result = 0xC0000000000000F0;
      }

      else
      {
        result = 0xC000000000000098;
      }

      break;
    case 31:
      result = 0xC0000000000000E8;
      break;
    case 33:
      result = 0xC0000000000000A8;
      break;
    case 34:
      result = 0xC0000000000000D8;
      break;
    case 36:
      v6 = sub_1AF9105CC(a1 >> 8, a2, a3 & 1);
      if ((~v6 & 0xF000000000000007) == 0)
      {
        goto LABEL_41;
      }

      v7 = v6;
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      result = v8 | 0x6000000000000000;
      break;
    case 37:
      result = 0xC0000000000000B8;
      break;
    case 45:
      result = 0xC000000000000048;
      break;
    default:
LABEL_41:
      result = 0xF000000000000007;
      break;
  }

  return result;
}

uint64_t sub_1AF910940(void *a1)
{
  v3 = sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (!v1)
  {
    sub_1AF441150(v12, v12[3]);
    v4 = sub_1AFDFEEB8();
    v5 = a1[3];
    v6 = a1[4];
    sub_1AF441150(a1, v5);
    v7 = sub_1AF695174(v5, v6);
    v8 = sub_1AF9105CC(v4, v7, 0);
    if ((~v8 & 0xF000000000000007) != 0)
    {
      v3 = v8;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v12);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
      return v3;
    }

    v12[6] = v4;
    v9 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v9);

    v3 = 0x3A65707954796E41;
    sub_1AF4567E0();
    swift_allocError();
    *v10 = 0x3A65707954796E41;
    *(v10 + 8) = 0xE900000000000020;
    *(v10 + 16) = 0;
    swift_willThrow();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v12);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v3;
}

uint64_t sub_1AF910AC8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF910940(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1AF910AF4(void *a1)
{
  v2 = *v1;
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  sub_1AF9102F8(v2);
  sub_1AF448018(v4, v5);
  sub_1AFDFEF58();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v4);
}

uint64_t sub_1AF910B98(char a1, unint64_t a2)
{
  if (a1)
  {
    v3 = type metadata accessor for ImplicitConstantNode(0);
    v4 = type metadata accessor for ImplicitNilNode(0);
    v5 = type metadata accessor for ImplicitStateNode(0);
  }

  else
  {
    v3 = type metadata accessor for ConstantNode(0);
    v4 = type metadata accessor for NilNode(0);
    v5 = type metadata accessor for StateNode(0);
  }

  v6 = v5;
  result = 0;
  v8 = a2 >> 61;
  if ((a2 >> 61) > 3)
  {
    if (v8 == 4)
    {
      v10 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      type metadata accessor for SamplerNode(0);
      v11 = swift_allocObject();
      *(v11 + OBJC_IVAR____TtC3VFX11SamplerNode_textureType) = v10;
      v12 = MEMORY[0x1E69E7CC0];
      v11[3] = 0;
      v11[4] = 0;
      v11[2] = v12;
LABEL_13:
      sub_1AFDFC308();
      return v11;
    }

    else if (v8 != 5)
    {
      result = 0;
      switch(__ROR8__(a2 + 0x4000000000000000, 3))
      {
        case 1:
        case 3:
        case 4:
        case 0x16:
        case 0x17:
        case 0x18:
        case 0x19:
        case 0x1ALL:
        case 0x1BLL:
        case 0x1FLL:
          return result;
        case 2:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 0xALL:
        case 0xBLL:
        case 0xCLL:
        case 0xDLL:
        case 0xELL:
        case 0xFLL:
        case 0x11:
        case 0x1CLL:
        case 0x1DLL:
        case 0x1ELL:
          goto LABEL_11;
        case 0x10:
          type metadata accessor for ColorRampTextureNode(0);
          v11 = swift_allocObject();
          v13 = v11 + OBJC_IVAR____TtC3VFX20ColorRampTextureNode_colorRamp;
          sub_1AF43A038();
          v14 = swift_allocObject();
          __asm { FMOV            V1.4S, #1.0 }

          v14[1] = xmmword_1AFE4C620;
          v14[2] = _Q1;
          v14[3] = xmmword_1AFE201A0;
          *v13 = v14;
          *(v13 + 1) = &unk_1F24EDC70;
          v13[16] = 1;
          goto LABEL_20;
        case 0x12:
          type metadata accessor for CurveTextureNode(0);
          v11 = swift_allocObject();
          v21 = v11 + OBJC_IVAR____TtC3VFX16CurveTextureNode_curve;
          *v21 = sub_1AF9D3914(&unk_1F24FFCA0);
          *(v21 + 1) = v22;
          *(v21 + 2) = 0;
          v21[24] = 1;
LABEL_20:
          *(v11 + OBJC_IVAR____TtC3VFX14ECSStorageNode_entity) = 0xFFFFFFFFLL;
          v11[2] = MEMORY[0x1E69E7CC0];
          v11[3] = 0;
          v11[4] = 0;
          goto LABEL_13;
        case 0x13:
          if (qword_1EB6371F0 != -1)
          {
            swift_once();
          }

          v23 = qword_1EB6C3430;
          type metadata accessor for ImplicitWorldAssetNode(0);
          swift_allocObject();
          v24 = v23;
          v25 = sub_1AF9C3E60(v24, 0, 1, 1, 0);

          return v25;
        case 0x14:
          swift_unknownObjectWeakInit();
          v27[0] = 0;
          swift_unknownObjectWeakAssign();
          v27[1] = 0x3E6C6C756E3CLL;
          v27[2] = 0xE600000000000000;
          type metadata accessor for ImplicitWorldObjectNode(0);
          v11 = swift_allocObject();
          sub_1AF44596C(&v26, v28);
          sub_1AF44596C(v28, v11 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference);
          *(v11 + OBJC_IVAR____TtC3VFX15WorldObjectNode_semantic) = xmmword_1AFE22A20;
          v20 = MEMORY[0x1E69E7CC0];
          v11[3] = 0;
          v11[4] = 0;
          v11[2] = v20;
          sub_1AFDFC308();
          sub_1AF4459C8(v28);
          sub_1AF4459C8(&v26);
          return v11;
        case 0x15:
          return (*(v6 + 104))(0);
        default:
          return (*(v4 + 104))(0);
      }
    }
  }

  else if ((v8 - 2) >= 2)
  {
    if (v8)
    {
LABEL_11:
      sub_1AF90EDE8(a2, v27, 0.0);
      v26 = a2;
      v9 = *(v3 + 304);
      sub_1AF442064(a2);
      return v9(&v26, 1, 0);
    }

    else
    {
      return (*(v4 + 104))(0);
    }
  }

  return result;
}

uint64_t sub_1AF910F70()
{
  sub_1AF911220();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE85230;
  *(v0 + 32) = 0xC000000000000058;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1AFE4C420;
  *(v0 + 40) = v1 | 0x2000000000000000;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C430;
  *(v0 + 48) = v2 | 0x2000000000000000;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C440;
  *(v0 + 56) = v3 | 0x2000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = 2;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE4C420;
  *(v4 + 24) = v5 | 0x2000000000000000;
  *(v0 + 64) = v4 | 0x2000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = 3;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE4C430;
  *(v6 + 24) = v7 | 0x2000000000000000;
  *(v0 + 72) = v6 | 0x2000000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = 4;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE4C440;
  *(v8 + 24) = v9 | 0x2000000000000000;
  *(v0 + 80) = v8 | 0x2000000000000000;
  *(v0 + 88) = xmmword_1AFE85240;
  *(v0 + 104) = xmmword_1AFE85250;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE85120;
  *(v0 + 120) = v10 | 0x2000000000000000;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AFE85130;
  *(v0 + 128) = v11 | 0x2000000000000000;
  *(v0 + 136) = xmmword_1AFE85260;
  *(v0 + 152) = xmmword_1AFE85270;
  *(v0 + 168) = xmmword_1AFE85280;
  *(v0 + 184) = xmmword_1AFE85290;
  *(v0 + 200) = 0xC000000000000098;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v0 + 208) = v12 | 0x8000000000000000;
  v13 = swift_allocObject();
  *(v13 + 16) = 1;
  *(v0 + 216) = v13 | 0x8000000000000000;
  v14 = swift_allocObject();
  *(v14 + 16) = 2;
  *(v0 + 224) = v14 | 0x8000000000000000;
  *(v0 + 232) = 0xC0000000000000A8;
  return v0;
}

void sub_1AF911220()
{
  if (!qword_1EB630990)
  {
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB630990);
    }
  }
}

uint64_t sub_1AF911270()
{
  v1 = *(v0 + 24);
  v10 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
    v2 = sub_1AFDFE108();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1B2719C70](i, v1);
        v4 = v5;
      }

      else
      {
        v4 = *(v1 + 8 * i + 32);
      }

      (*(**(v4 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152))(&v11, v5);
      v6 = v12;
      v22 = v12;
      v21 = v11;
      sub_1AF9121F8(&v21, &qword_1EB638968, &type metadata for TypeConstraint);
      v20 = v13;
      sub_1AF9121F8(&v20, &qword_1EB638968, &type metadata for TypeConstraint);
      v19 = v14;
      sub_1AF91219C(&v19);
      v18 = v15;
      sub_1AF91219C(&v18);
      v17 = v16;
      sub_1AF9121F8(&v17, &qword_1EB638978, &type metadata for AnyValue);
      v7 = *(v6 + 16);
      sub_1AF9121F8(&v22, &qword_1EB638968, &type metadata for TypeConstraint);
      if (v7)
      {
      }

      else
      {
        sub_1AFDFE328();
        sub_1AFDFE398();
        sub_1AFDFE3A8();
        sub_1AFDFE348();
      }
    }

    v8 = v10;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  return v8;
}

uint64_t sub_1AF9114A4()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 48) = sub_1AF42B088(MEMORY[0x1E69E7CC0]);

  v20 = sub_1AF42B490(v1);
  v17 = &v20;
  v14 = sub_1AF9122B8;
  v15 = &v16;
  v18 = sub_1AF42B0F4(v1);
  v19 = v2;
  sub_1AF412AA8(sub_1AF441EF8, v13, 1, 0x1000000000000000uLL, 0, v1, &v18);

  v12 = &v20;
  v9 = sub_1AF9122D4;
  v10 = &v11;
  v18 = sub_1AF42B0F4(v1);
  v19 = v3;
  sub_1AF412AA8(sub_1AF9122F0, v8, 1, 0x1000000000000000uLL, 0, v1, &v18);

  v6[2] = sub_1AF91230C;
  v7 = v0;
  v18 = sub_1AF42B0F4(v1);
  v19 = v4;
  sub_1AF412AA8(sub_1AF912380, v6, 1, 0x1000000000000000uLL, 0, v1, &v18);
}

uint64_t sub_1AF911654(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1AFDFC318();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  (*(v5 + 16))(v9, *(a1 + 8) + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v4, v7);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *a2;
  *a2 = 0x8000000000000000;
  sub_1AF8581C4(v10, v9, isUniquelyReferenced_nonNull_native);
  result = (*(v5 + 8))(v9, v4);
  *a2 = v14;
  return result;
}

uint64_t sub_1AF911798(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_1AFDFC318();
  MEMORY[0x1EEE9AC00](v5, v6);
  v50 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v49 = v41 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v41 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v45 = v41 - v18;
  v19 = *a1;
  result = *(*a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs);
  v53 = *(result + 16);
  if (v53)
  {
    v41[1] = v2;
    v48 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
    v52 = result + 32;
    v58 = (v17 + 16);
    v43 = v17;
    v57 = (v17 + 8);
    v41[0] = result;

    v21 = 0;
    v22 = v45;
    v44 = a2;
    v42 = v14;
    v46 = v19;
    while (1)
    {
      v23 = *(v52 + 16 * v21);
      if (!v23)
      {
        goto LABEL_5;
      }

      v56 = *v58;
      v56(v22, v19 + v48, v5);
      v24 = *a2;
      if (!*(*a2 + 16))
      {
        break;
      }

      v25 = sub_1AF419940(v22);
      if ((v26 & 1) == 0)
      {
        v27 = *v57;
        (*v57)(v22, v5);
        goto LABEL_12;
      }

      v27 = *v57;
      v55 = *(*(v24 + 56) + 8 * v25);

      v27(v22, v5);
LABEL_13:
      v56(v14, v23 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v5);
      v28 = *a2;
      v29 = *(*a2 + 16);
      v54 = v23;
      if (v29 && (v30 = sub_1AF419940(v14), (v31 & 1) != 0))
      {
        v32 = *(*(v28 + 56) + 8 * v30);

        v27(v14, v5);
        v33 = v55;
        if (!v55)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v27(v14, v5);
        v32 = 0;
        v33 = v55;
        if (!v55)
        {
LABEL_16:

          if (!v32)
          {
            goto LABEL_5;
          }

          goto LABEL_4;
        }
      }

      if (v32)
      {
        v34 = *(v33 + 16);
        if (v34 == *(v32 + 16) && v34 && v33 != v32)
        {
          v51 = v32;
          v35 = (*(v43 + 80) + 32) & ~*(v43 + 80);
          v47 = *(v43 + 72);
          do
          {
            v36 = v49;
            v37 = v27;
            v38 = v56;
            v56(v49, v33 + v35, v5);
            v39 = v50;
            v38(v50, v51 + v35, v5);
            v27 = v37;
            sub_1AF912328();
            v40 = sub_1AFDFCE58();
            v37(v39, v5);
            v37(v36, v5);
            if ((v40 & 1) == 0)
            {
              break;
            }

            v35 += v47;
            --v34;
            v33 = v55;
          }

          while (v34);

          a2 = v44;
          v22 = v45;
          v14 = v42;
        }

        else
        {
        }

        v19 = v46;
        goto LABEL_5;
      }

LABEL_4:

LABEL_5:
      if (++v21 == v53)
      {
      }
    }

    v27 = *v57;

    v27(v22, v5);
LABEL_12:
    v55 = 0;
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1AF911C20(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1AFDFC318();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v23 - v12;
  v14 = *a1;
  v15 = *(v5 + 16);
  v24 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
  v25 = v15;
  (v15)(&v23 - v12, v14 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v4, v11);
  if (*(*(a2 + 48) + 16) && (sub_1AF419940(v13), (v16 & 1) != 0))
  {
    v17 = *(v5 + 8);

    v18 = v13;
    v19 = v17;
    v17(v18, v4);
  }

  else
  {
    v20 = v13;
    v19 = *(v5 + 8);
    v19(v20, v4);
  }

  v25(v8, v14 + v24, v4);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(a2 + 48);
  *(a2 + 48) = 0x8000000000000000;
  sub_1AF8583B0(v14, v8, isUniquelyReferenced_nonNull_native);
  result = (v19)(v8, v4);
  *(a2 + 48) = v26;
  return result;
}

uint64_t sub_1AF911E20@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = sub_1AFDFC318();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 8);
  if ((a2 & 1) == 0)
  {
    sub_1AFDFC308();
    v12 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
    (*(v7 + 40))(v11 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v10, v6);
    (*(v7 + 24))(*(v11 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + OBJC_IVAR____TtC3VFX4Node_authoringID, v11 + v12, v6);
  }

  *a3 = v11;
}

uint64_t sub_1AF911F64()
{

  sub_1AF0FB8EC(*(v0 + 32));

  v1 = OBJC_IVAR____TtC3VFX14AuthoringGraph_id;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AuthoringGraph()
{
  result = qword_1EB6405B8;
  if (!qword_1EB6405B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AF912074()
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

void *sub_1AF912130(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[2] = 0;
  v2[4] = 0;
  v2[5] = 0;
  v2[6] = sub_1AF42B088(MEMORY[0x1E69E7CC0]);
  sub_1AFDFC308();
  v2[3] = a1;
  return v2;
}

uint64_t sub_1AF91219C(uint64_t a1)
{
  sub_1AF445C2C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AF9121F8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AF912268(0, a2, a3, MEMORY[0x1E69E62F8]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1AF912268(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AF912328()
{
  result = qword_1EB633A10;
  if (!qword_1EB633A10)
  {
    sub_1AFDFC318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633A10);
  }

  return result;
}

uint64_t sub_1AF912398(char a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  v5 = a2();
  v6 = v5;
  if (v5 >> 62)
  {
    v7 = sub_1AFDFE108();
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  for (i = 0; i != v7; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B2719C70](i, v6);
    }

    else
    {
    }

    MEMORY[0x1B2718E00](v9);
    if (*((v2[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AFDFD458();
    }

    sub_1AFDFD4B8();
  }

LABEL_12:

  v10 = sub_1AF913E84();
  if (a1)
  {
    if (qword_1EB6325F0 != -1)
    {
      v10 = swift_once();
    }

    v12 = byte_1EB6C28A0;
    v13 = qword_1EB6C28A8;
    v14 = byte_1EB6C28B0;
    MEMORY[0x1EEE9AC00](v10, v11);
    v21[6] = 0;
    v21[7] = v4;
    MEMORY[0x1EEE9AC00](v15, v16);
    v21[2] = sub_1AF91260C;
    v21[3] = v17;
    v18 = MEMORY[0x1E69E7CC0];
    v22[0] = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
    v22[1] = v19;
    sub_1AF412AA8(sub_1AF441EF8, v21, v12, v13, v14, v18, v22);
  }

  sub_1AF9114A4();
}

uint64_t sub_1AF912628(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = (a1 + 32);
    v4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v5 = *v3;
      v6 = *(*v3 + 16);
      v7 = *(v4 + 16) + v6;

      if (swift_isUniquelyReferenced_nonNull_native() && v7 <= *(v4 + 24) >> 1)
      {
        if (*(v5 + 16))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v4 = sub_1AFDFE268();
        if (*(v5 + 16))
        {
LABEL_10:
          sub_1AF44479C(0);
          swift_arrayInitWithCopy();

          if (v6)
          {
            *(v4 + 16) += v6;
          }

          goto LABEL_4;
        }
      }

LABEL_4:
      ++v3;
      if (!--v1)
      {
        goto LABEL_13;
      }
    }
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_13:
  v8 = 0;
  v13 = v2;
  v9 = *(v4 + 16);
  while (v9 != v8)
  {
    if (*(v4 + 8 * v8++ + 32))
    {

      MEMORY[0x1B2718E00](v11);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AFDFD458();
      }

      sub_1AFDFD4B8();
      v2 = v13;
    }
  }

  return v2;
}

unint64_t sub_1AF9127DC()
{
  result = qword_1EB6405C8;
  if (!qword_1EB6405C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6405C8);
  }

  return result;
}

unint64_t sub_1AF912834()
{
  result = qword_1EB6405D0;
  if (!qword_1EB6405D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6405D0);
  }

  return result;
}

unint64_t sub_1AF91288C()
{
  result = qword_1EB6405D8;
  if (!qword_1EB6405D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6405D8);
  }

  return result;
}

unint64_t sub_1AF9128E4()
{
  result = qword_1EB6405E0;
  if (!qword_1EB6405E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6405E0);
  }

  return result;
}

void *sub_1AF912938(unint64_t a1, uint64_t a2, char a3)
{
  sub_1AF915070(a2, &v30);
  if (!v32)
  {
    sub_1AF913E28(&v30, &qword_1EB6405E8, &type metadata for AnyValue, MEMORY[0x1E69E6720]);
    goto LABEL_15;
  }

  v33[0] = v30;
  v33[1] = v31;
  v34 = v32;
  v5 = v30;
  if (sub_1AF90F890(v30, 0xC000000000000000))
  {
    sub_1AF0D5A54(v33 + 8, &v30);
    if (swift_dynamicCast())
    {
      if (!v27)
      {
        sub_1AF9151B0(v33);
LABEL_15:
        if ((~a1 & 0xF000000000000007) == 0)
        {
          return 0;
        }

        sub_1AF442064(a1);
        if (sub_1AF90F890(a1, 0xC000000000000000) & 1) != 0 || (sub_1AF90F890(a1, 0xC000000000000068) & 1) != 0 || (sub_1AF90F890(a1, 0xC0000000000000E0) & 1) != 0 || (sub_1AF90F890(a1, 0xC000000000000010) & 1) != 0 || (sub_1AF90F890(a1, 0xC000000000000070) & 1) != 0 || (sub_1AF90F890(a1, 0xC000000000000020) & 1) != 0 || (sub_1AF90F890(a1, 0xC0000000000000A8) & 1) != 0 || (sub_1AF90F890(a1, 0xC0000000000000E8) & 1) != 0 || (v17 = swift_allocObject(), *(v17 + 16) = xmmword_1AFE85120, v18 = sub_1AF90F890(a1, v17 | 0x2000000000000000), , (v18))
        {
LABEL_52:
          v8 = sub_1AF910B98(1, a1);
          sub_1AF914F8C(a1);
          return v8;
        }

        v19 = a1 >> 61;
        if (a1 >> 61 == 1)
        {
          v21 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          if (v21 >> 61 != 1 && (v21 >> 61 != 6 || ((v21 + 0x3FFFFFFFFFFFFFD0) & 0xFFFFFFFFFFFFFFE7) != 0))
          {
            goto LABEL_52;
          }
        }

        else
        {
          if (v19 == 6)
          {
            v20 = __ROR8__(a1 + 0x3FFFFFFFFFFFFFD0, 3);
            if (v20 <= 6 && v20 != 4)
            {
              goto LABEL_52;
            }
          }

          if (v19 != 1)
          {
            if (!v19)
            {
              goto LABEL_52;
            }

            goto LABEL_50;
          }

          v21 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        }

        if (v21 >> 61 == 1)
        {
          goto LABEL_52;
        }

LABEL_50:
        if ((sub_1AF90F890(a1, 0xC000000000000098) & 1) == 0 && (sub_1AF90F890(a1, 0xC0000000000000A0) & 1) == 0)
        {
          sub_1AF914F8C(a1);
          return 0;
        }

        goto LABEL_52;
      }
    }
  }

  if ((sub_1AF90F890(v5, 0xC000000000000000) & 1) == 0 || (sub_1AF0D5A54(v33 + 8, &v30), !swift_dynamicCast()) || v27 != 1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = 0xC000000000000000;
    v7 = sub_1AF90F890(v5, v6);

    if (v7 & 1) != 0 && (sub_1AF0D5A54(v33 + 8, v26), (swift_dynamicCast()))
    {
      if (v29)
      {
        v30 = v27;
        v31 = v28;
        v32 = v29;
        if (a3)
        {
          sub_1AF914FF0(&v30, &v27);
          v8 = sub_1AF912938(a1, &v27, 1);
          sub_1AF913E28(&v27, &qword_1EB6405E8, &type metadata for AnyValue, MEMORY[0x1E69E6720]);
        }

        else
        {
          type metadata accessor for ImplicitNilNode(0);
          v8 = swift_allocObject();
          v24 = MEMORY[0x1E69E7CC0];
          v8[3] = 0;
          v8[4] = 0;
          v8[2] = v24;
          sub_1AFDFC308();
        }

        v23 = &v30;
        goto LABEL_42;
      }
    }

    else
    {
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
    }

    sub_1AF913E28(&v27, &qword_1EB6405E8, &type metadata for AnyValue, MEMORY[0x1E69E6720]);
    if (sub_1AF90F890(v5, 0xC000000000000000) & 1) != 0 && (sub_1AF0D5A54(v33 + 8, &v30), type metadata accessor for Node(), (swift_dynamicCast()))
    {

      sub_1AF0D5A54(v33 + 8, &v30);
      swift_dynamicCast();
      v8 = sub_1AF96FB80(0);
    }

    else
    {
      sub_1AF0D5A54(v33 + 8, v26);
      sub_1AF9150F8();
      if (!swift_dynamicCast())
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_1AF914F30(&v27, &qword_1EB641070, sub_1AF9150F8);
        sub_1AF914FF0(v33, &v30);
        type metadata accessor for ImplicitConstantNode(0);
        v8 = swift_allocObject();
        sub_1AF914FF0(&v30, &v27);
        v22 = OBJC_IVAR____TtC3VFX12ConstantNode_semantic;
        sub_1AF914FF0(&v27, v8 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
        *(v8 + v22) = xmmword_1AFE22A20;
        v8[2] = MEMORY[0x1E69E7CC0];
        v8[3] = 0;
        v8[4] = 0;
        sub_1AFDFC308();
        sub_1AF9151B0(&v30);
        v23 = &v27;
LABEL_42:
        sub_1AF9151B0(v23);
        goto LABEL_43;
      }

      sub_1AF0FBA54(&v27, &v30);
      v9 = type metadata accessor for ImplicitEnumConstantNode(0);
      sub_1AF441194(&v30, &v27);
      v10 = *(&v28 + 1);
      v11 = v29;
      v12 = sub_1AF448018(&v27, *(&v28 + 1));
      v13 = MEMORY[0x1EEE9AC00](v12, v12);
      v15 = &v26[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v16 + 16))(v15, v13);
      v8 = sub_1AF97DE74(v15, v9, v10, v11);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v30);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v27);
    }

LABEL_43:
    sub_1AF9151B0(v33);
    return v8;
  }

  sub_1AF9151B0(v33);
  return 0;
}

void *sub_1AF913020(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *(**(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152);
  (v6)(v33);
  v7 = v33[0];
  v58 = v33[1];
  v59 = v33[0];
  v8 = MEMORY[0x1E69E62F8];
  sub_1AF913E28(&v58, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
  v57 = v33[2];
  sub_1AF913E28(&v57, &qword_1EB638968, &type metadata for TypeConstraint, v8);
  v56 = v33[3];
  sub_1AF91219C(&v56);
  v55 = v33[4];
  sub_1AF91219C(&v55);
  v54 = v33[5];
  sub_1AF913E28(&v54, &qword_1EB638978, &type metadata for AnyValue, v8);
  v9 = a2;
  a2 *= 8;
  v30 = *(v7 + a2 + 32);
  sub_1AF4410A8(v30);
  v10 = sub_1AF913E28(&v59, &qword_1EB638968, &type metadata for TypeConstraint, v8);
  v6(&v34, v10);
  v53 = v34;
  v11 = *(v34 + a2 + 32);
  if (v11 >> 61 == 2)
  {
    v12 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v52 = v36;
    v11 = *(v36 + 8 * v12 + 32);
    sub_1AF4410A8(v11);
    v13 = MEMORY[0x1E69E62F8];
    sub_1AF913E28(&v53, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
    v51 = v35;
    sub_1AF913E28(&v51, &qword_1EB638968, &type metadata for TypeConstraint, v13);
    v14 = &v52;
    v15 = v13;
  }

  else
  {
    sub_1AF4410A8(v11);
    v16 = MEMORY[0x1E69E62F8];
    sub_1AF913E28(&v53, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
    v52 = v35;
    sub_1AF913E28(&v52, &qword_1EB638968, &type metadata for TypeConstraint, v16);
    v51 = v36;
    v14 = &v51;
    v15 = v16;
  }

  sub_1AF913E28(v14, &qword_1EB638968, &type metadata for TypeConstraint, v15);
  v50 = v37;
  sub_1AF91219C(&v50);
  v49 = v38;
  sub_1AF91219C(&v49);
  v48 = v39;
  sub_1AF913E28(&v48, &qword_1EB638978, &type metadata for AnyValue, MEMORY[0x1E69E62F8]);
  v17 = v11 >> 61;
  v18 = v9;
  if (v11 >> 61 == 3)
  {
    v19 = 0xC000000000000000;
    goto LABEL_16;
  }

  if (v17 == 4)
  {
    v19 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    sub_1AF442064(v19);
    goto LABEL_16;
  }

  if (!a3 || (v19 = sub_1AF947BAC(a1, v9), (~v19 & 0xF000000000000007) == 0))
  {
    if (v17 == 5 && __ROR8__(v11 + 0x6000000000000000, 3) <= 5uLL)
    {
      v19 = 0xC000000000000030;
      v20 = sub_1AF9C4A68(0xA000000000000018, v11);
      v21 = (v20 >> 57) & 0x78 | v20 & 7;
      if (v21 != 111)
      {
        if (v21 == 127)
        {
          v19 = 0xC000000000000068;
          goto LABEL_16;
        }

        sub_1AF91504C(v20);
      }

      if (v11 != 0xA000000000000010)
      {
        if (v11 == 0xA000000000000028)
        {
          v27 = swift_allocObject();
          *(v27 + 16) = xmmword_1AFE4C430;
          v19 = v27 | 0x2000000000000000;
        }

        else
        {
          v19 = 0xC000000000000058;
        }
      }
    }

    else
    {
      v19 = 0xF000000000000007;
    }
  }

LABEL_16:
  if (a4)
  {
    if ((v19 & 0xF000000000000007) == 0xF000000000000007)
    {
      goto LABEL_22;
    }

    if (!(v19 >> 61))
    {
      v22 = *(v19 + 16);
      sub_1AF442064(v22);
      sub_1AF914F8C(v19);
      v19 = v22;
    }
  }

  else if ((v19 & 0xF000000000000007) == 0xF000000000000007)
  {
    goto LABEL_22;
  }

  if ((sub_1AF9C4C80(v19, v30) & 1) == 0)
  {
    sub_1AF441114(v11);
    sub_1AF441114(v30);
    sub_1AF914F8C(v19);
    return 0;
  }

LABEL_22:
  (v6)(v40);
  v23 = v41;
  v46 = v40[0];
  v47 = v41;

  v24 = MEMORY[0x1E69E62F8];
  sub_1AF913E28(&v46, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
  v45 = v40[1];
  sub_1AF913E28(&v45, &qword_1EB638968, &type metadata for TypeConstraint, v24);
  v44 = v40[2];
  sub_1AF913E28(&v44, &qword_1EB638968, &type metadata for TypeConstraint, v24);
  v43 = v40[3];
  sub_1AF91219C(&v43);
  v42 = v40[4];
  sub_1AF91219C(&v42);
  sub_1AF913E28(&v47, &qword_1EB638978, &type metadata for AnyValue, v24);
  if (v18 < 0 || *(v23 + 16) <= v18)
  {
    sub_1AF913E28(&v47, &qword_1EB638978, &type metadata for AnyValue, MEMORY[0x1E69E62F8]);
    memset(v31, 0, sizeof(v31));
    v32 = 0;
  }

  else
  {
    sub_1AF914FF0(v23 + 40 * v18 + 32, v31);
    sub_1AF913E28(&v47, &qword_1EB638978, &type metadata for AnyValue, MEMORY[0x1E69E62F8]);
  }

  v25 = sub_1AF912938(v19, v31, a4 & 1);
  sub_1AF441114(v30);
  sub_1AF914F8C(v19);
  sub_1AF441114(v11);
  sub_1AF913E28(v31, &qword_1EB6405E8, &type metadata for AnyValue, MEMORY[0x1E69E6720]);
  return v25;
}

uint64_t sub_1AF913638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v66 = a2;
  v5 = sub_1AFDFC318();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v64 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF91515C(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v68 = &v56 - v16;
  v17 = *(a1 + 8);
  (*(**(v17 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152))(v70, v15);
  v18 = v70[0];
  v83 = v70[0];
  v82 = v70[1];
  v19 = MEMORY[0x1E69E62F8];
  sub_1AF913E28(&v82, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
  v81 = v70[2];
  sub_1AF913E28(&v81, &qword_1EB638968, &type metadata for TypeConstraint, v19);
  v80 = v70[3];
  sub_1AF91219C(&v80);
  v79 = v70[4];
  sub_1AF91219C(&v79);
  v78 = v70[5];
  sub_1AF913E28(&v78, &qword_1EB638978, &type metadata for AnyValue, v19);
  v20 = *(v18 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
    v60 = (v6 + 56);
    v65 = (v6 + 32);
    v57 = (v6 + 24);
    v67 = v12;
    v58 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
    v63 = a3;
    v62 = v5;
    v61 = v20;
    v59 = (v6 + 48);
    do
    {
      if (!*(*(v17 + v22) + 16 * v21 + 32))
      {
        v31 = sub_1AF913020(v17, v21, v66, 0);
        if (v31)
        {
          v32 = v31;
          (*v60)(v68, 1, 1, v5);
          type metadata accessor for AuthoringNode();
          v33 = swift_allocObject();
          v34 = v33 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
          *v34 = 0;
          *(v34 + 8) = 0;
          *(v34 + 16) = 1;
          v35 = v33 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
          *v35 = 0;
          *(v35 + 8) = 0;
          *(v35 + 16) = 1;
          v36 = v33 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
          *v36 = 0;
          *(v36 + 8) = 1;
          v37 = (v33 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
          *v37 = 0;
          v37[1] = 0;
          *(v33 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v32;
          v38 = *(*v32 + 152);
          v39 = swift_retain_n();
          v38(v71, v39);
          v40 = v71[0];
          v76 = v71[1];
          v77 = v71[0];
          v41 = MEMORY[0x1E69E62F8];
          sub_1AF913E28(&v76, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
          v75 = v71[2];
          sub_1AF913E28(&v75, &qword_1EB638968, &type metadata for TypeConstraint, v41);
          v74 = v71[3];
          sub_1AF91219C(&v74);
          v73 = v71[4];
          sub_1AF91219C(&v73);
          v72 = v71[5];
          sub_1AF913E28(&v72, &qword_1EB638978, &type metadata for AnyValue, v41);
          v42 = *(v40 + 16);
          sub_1AF913E28(&v77, &qword_1EB638968, &type metadata for TypeConstraint, v41);
          v43 = MEMORY[0x1E69E7CC0];
          if (v42)
          {
            v69 = MEMORY[0x1E69E7CC0];
            sub_1AFC05D04(0, v42, 0);
            v43 = v69;
            v44 = *(v69 + 16);
            v45 = 16 * v44 + 32;
            v46 = v68;
            do
            {
              v69 = v43;
              v47 = *(v43 + 24);
              v48 = v44 + 1;
              if (v44 >= v47 >> 1)
              {
                sub_1AFC05D04(v47 > 1, v44 + 1, 1);
                v46 = v68;
                v43 = v69;
              }

              *(v43 + 16) = v48;
              v49 = (v43 + v45);
              *v49 = 0;
              v49[1] = 0;
              v45 += 16;
              v44 = v48;
              --v42;
            }

            while (v42);
          }

          else
          {
            v46 = v68;
          }

          v50 = v67;
          *(v33 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v43;
          v51 = v46;
          sub_1AF487314(v46, v50);
          v52 = *v59;
          v5 = v62;
          if ((*v59)(v50, 1, v62) == 1)
          {
            v53 = v64;
            sub_1AFDFC308();
            sub_1AF914F30(v51, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
            v54 = v52(v67, 1, v5);
            v23 = v53;
            if (v54 != 1)
            {
              sub_1AF914F30(v67, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
            }
          }

          else
          {
            sub_1AF914F30(v51, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
            v23 = v64;
            (*v65)(v64, v50, v5);
          }

          (*v65)((v33 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID), v23, v5);
          (*v57)(v32 + OBJC_IVAR____TtC3VFX4Node_authoringID, v33 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v5);

          v24 = v33 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
          *v24 = 0;
          *(v24 + 8) = 0;
          *(v24 + 16) = 1;
          v25 = v33 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
          *v25 = 0;
          *(v25 + 8) = 0;
          *(v25 + 16) = 1;
          v26 = v33 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
          *v26 = 0;
          *(v26 + 8) = 1;
          v27 = (v33 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
          *v27 = 0;
          v27[1] = 0;

          v22 = v58;
          v28 = *(v17 + v58);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v17 + v22) = v28;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            *(v17 + v22) = sub_1AFC0DA6C(v28);
          }

          v30 = *(v17 + v22) + 16 * v21;
          *(v30 + 32) = v33;
          *(v30 + 40) = 0;

          v20 = v61;
        }
      }

      ++v21;
    }

    while (v21 != v20);
  }

  return sub_1AF913E28(&v83, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
}

uint64_t sub_1AF913E28(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1AF914FA0(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AF913E84()
{
  v32 = MEMORY[0x1E69E7CD0];
  v33 = MEMORY[0x1E69E7CD0];
  v1 = MEMORY[0x1E69E7CC0];
  v31 = sub_1AF42B0C8(MEMORY[0x1E69E7CC0]);
  v27 = 0x1000000000000000;
  v28 = &v31;
  v24 = sub_1AF915204;
  v25 = &v26;
  v29 = sub_1AF42B0F4(v1);
  v30 = v2;
  sub_1AF412AA8(sub_1AF9122F0, v23, 1, 0x1000000000000000uLL, 0, v1, &v29);

  v3 = sub_1AF3D9910(v31);

  v20 = v3;
  v21 = &v32;
  v22 = &v33;
  v17 = sub_1AF915220;
  v18 = &v19;
  v29 = sub_1AF42B0F4(v1);
  v30 = v4;
  sub_1AF412AA8(sub_1AF912380, v16, 1, 0x1000000000000000uLL, 0, v1, &v29);

  MEMORY[0x1EEE9AC00](v5, v6);
  v15[10] = &v32;
  v15[11] = &v33;
  MEMORY[0x1EEE9AC00](v7, v8);
  v15[6] = sub_1AF915240;
  v15[7] = v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v15[2] = sub_1AF915248;
  v15[3] = v12;
  sub_1AF3FB9C8(sub_1AF915250, v15, 0, 0x1000000000000000uLL, 0, MEMORY[0x1E69E7CC0]);
  v13 = sub_1AF449CC8();

  *(v0 + 24) = v13;
}

uint64_t sub_1AF914120(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v63 = sub_1AFDFC318();
  v52 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63, v9);
  v64 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v51 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v65 = v51 - v17;
  v18 = *a1;
  v58 = OBJC_IVAR____TtC3VFX13AuthoringNode_raw;
  v19 = *(v18 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw);
  v51[3] = type metadata accessor for ImplicitPartialComposeNode(0);
  v20 = swift_dynamicCastClass();
  v56 = v18;
  if (v20 || *v19 == _TtC3VFX19ImplicitComposeNode)
  {
    if (*(a2 + 16))
    {
      v21 = sub_1AF0D3F10(v18);
      if (v22)
      {
        if (*(*(*(a2 + 56) + 8 * v21) + 16))
        {
          v23 = v52;
          v24 = v18 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
          v25 = v63;
          (*(v52 + 16))(v14, v24, v63);
          v26 = v65;
          sub_1AF70E7D8(v65, v14);
          v27 = v25;
          v18 = v56;
          (*(v23 + 8))(v26, v27);
        }
      }
    }
  }

  result = *(v18 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs);
  v61 = *(result + 16);
  if (v61)
  {
    v51[2] = v4;
    v57 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
    v60 = result + 32;
    v68 = (v52 + 16);
    v69 = (v52 + 8);
    v51[1] = result;

    v29 = 0;
    v30 = v63;
    v54 = a3;
    v55 = a4;
    v53 = v14;
    while (1)
    {
      v32 = *(v60 + 16 * v29);
      if (!v32)
      {
        goto LABEL_12;
      }

      v33 = *v68;
      v59 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
      v66 = v33;
      v33(v14, v32 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v30);
      v62 = v32;

      v34 = v65;
      sub_1AF70E7D8(v65, v14);
      v67 = *v69;
      v67(v34, v30);
      v35 = *(v18 + v58);
      type metadata accessor for ImplicitNilNode(0);
      v36 = swift_dynamicCastClass();
      v37 = *v35;
      if (v36 || v37 == _TtC3VFX20ImplicitConstantNode || (type metadata accessor for ImplicitEnumConstantNode(0), swift_dynamicCastClass()) || ((type metadata accessor for ImplicitStateNode(0), v38 = swift_dynamicCastClass(), v37 != _TtC3VFX19ImplicitComposeNode) ? (v39 = v38 == 0) : (v39 = 0), !v39 || swift_dynamicCastClass() || (type metadata accessor for ImplicitWorldAssetNode(0), swift_dynamicCastClass()) || (type metadata accessor for ImplicitWorldObjectNode(0), v49 = swift_dynamicCastClass(), v37 == _TtC3VFX24InspectorSetECSValueNode) || v37 == _TtC3VFX21ImplicitDecomposeNode || v49 || (type metadata accessor for InspectorSetWorldValueNode(0), v50 = swift_dynamicCastClass(), v37 == _TtC3VFX29InspectorSetParticleValueNode) || v50))
      {
        if (v37 != _TtC3VFX29InspectorSetParticleValueNode)
        {
          v40 = *a3;
          v31 = v64;
          v66(v64, v18 + v57, v30);
          if (!*(v40 + 16))
          {
            goto LABEL_11;
          }

          sub_1AF823984(&qword_1EB633A20);

          v41 = sub_1AFDFCCF8();
          v42 = -1 << *(v40 + 32);
          v43 = v41 & ~v42;
          if (((*(v40 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
          {
LABEL_30:

            v30 = v63;
            v31 = v64;
            a3 = v54;
            v14 = v53;
            v18 = v56;
            goto LABEL_11;
          }

          v44 = ~v42;
          v45 = *(v52 + 72);
          while (1)
          {
            v46 = v65;
            v47 = v63;
            v66(v65, *(v40 + 48) + v45 * v43, v63);
            sub_1AF823984(&qword_1EB633A10);
            v48 = sub_1AFDFCE58();
            v67(v46, v47);
            if (v48)
            {
              break;
            }

            v43 = (v43 + 1) & v44;
            if (((*(v40 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
            {
              goto LABEL_30;
            }
          }

          v30 = v63;
          v67(v64, v63);
          a3 = v54;
          v14 = v53;
          v18 = v56;
        }
      }

      v66(v14, v62 + v59, v30);
      v31 = v65;
      sub_1AF70E7D8(v65, v14);
LABEL_11:

      v67(v31, v30);
LABEL_12:
      if (++v29 == v61)
      {
      }
    }
  }

  return result;
}

uint64_t sub_1AF91477C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v55 = a2;
  v5 = sub_1AFDFC318();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = OBJC_IVAR____TtC3VFX13AuthoringNode_raw;
  v12 = *(*a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw);
  type metadata accessor for ImplicitNilNode(0);
  v13 = swift_dynamicCastClass();
  v14 = *v12;
  if (!v13 && v14 != _TtC3VFX20ImplicitConstantNode)
  {
    type metadata accessor for ImplicitEnumConstantNode(0);
    if (!swift_dynamicCastClass())
    {
      type metadata accessor for ImplicitStateNode(0);
      v15 = swift_dynamicCastClass();
      if (v14 != _TtC3VFX19ImplicitComposeNode && v15 == 0)
      {
        type metadata accessor for ImplicitPartialComposeNode(0);
        if (!swift_dynamicCastClass())
        {
          type metadata accessor for ImplicitWorldAssetNode(0);
          if (!swift_dynamicCastClass())
          {
            type metadata accessor for ImplicitWorldObjectNode(0);
            v17 = swift_dynamicCastClass();
            v18 = v14 == _TtC3VFX24InspectorSetECSValueNode || v14 == _TtC3VFX21ImplicitDecomposeNode;
            if (!v18 && v17 == 0)
            {
              type metadata accessor for InspectorSetWorldValueNode(0);
              v20 = swift_dynamicCastClass();
              if (v14 != _TtC3VFX29InspectorSetParticleValueNode && v20 == 0)
              {
                return 1;
              }
            }
          }
        }
      }
    }
  }

  if (v14 == _TtC3VFX29InspectorSetParticleValueNode)
  {
    return 1;
  }

  v22 = *v55;
  v23 = *(v6 + 16);
  v53 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
  v54 = v23;
  v23(v9, v10 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v5);

  v24 = sub_1AF70292C(v9, v22);

  v25 = *(v6 + 8);
  v26 = v25(v9, v5);
  if (v24)
  {
    return 1;
  }

  v51[2] = v6 + 16;
  v52 = v25;
  v51[1] = a3;
  (*(**(v10 + v11) + 152))(v56, v26);
  v28 = v56[0];
  v73 = v56[1];
  v74 = v56[0];
  v29 = MEMORY[0x1E69E62F8];
  sub_1AF913E28(&v73, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
  v72 = v56[2];
  sub_1AF913E28(&v72, &qword_1EB638968, &type metadata for TypeConstraint, v29);
  v71 = v56[3];
  sub_1AF91219C(&v71);
  v70 = v56[4];
  sub_1AF91219C(&v70);
  v69 = v56[5];
  sub_1AF913E28(&v69, &qword_1EB638978, &type metadata for AnyValue, v29);
  v30 = *(v28 + 16);
  result = sub_1AF913E28(&v74, &qword_1EB638968, &type metadata for TypeConstraint, v29);
  if (v30)
  {
    v31 = *(v10 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs);
    v32 = *(v31 + 16);
    if (v32)
    {
      v33 = (v31 + 32);
      v55 = OBJC_IVAR____TtC3VFX13AuthoringNode_raw;
      do
      {
        v35 = *v33;
        v33 += 2;
        v34 = v35;
        if (v35)
        {
          v36 = *(v55 + v34);
          type metadata accessor for ImplicitPartialComposeNode(0);
          if (swift_dynamicCastClass() || *v36 == _TtC3VFX19ImplicitComposeNode)
          {
            return 1;
          }

          v37 = *v36;
          result = swift_dynamicCastClass();
          v38 = v37 != _TtC3VFX20ImplicitConstantNode && result == 0;
          if (!v38 || (type metadata accessor for ImplicitEnumConstantNode(0), (result = swift_dynamicCastClass()) != 0) || (type metadata accessor for ImplicitStateNode(0), (result = swift_dynamicCastClass()) != 0) || (type metadata accessor for ImplicitWorldAssetNode(0), (result = swift_dynamicCastClass()) != 0) || ((type metadata accessor for ImplicitWorldObjectNode(0), result = swift_dynamicCastClass(), v37 != _TtC3VFX24InspectorSetECSValueNode) ? (v39 = v37 == _TtC3VFX21ImplicitDecomposeNode) : (v39 = 1), !v39 ? (v40 = result == 0) : (v40 = 0), !v40))
          {
            if (v37 == _TtC3VFX29InspectorSetParticleValueNode)
            {
              return 1;
            }
          }

          else
          {
            type metadata accessor for InspectorSetWorldValueNode(0);
            v41 = swift_dynamicCastClass();
            result = 1;
            if (v37 == _TtC3VFX29InspectorSetParticleValueNode || !v41)
            {
              return result;
            }
          }
        }

        --v32;
      }

      while (v32);
    }

    (*(**(v10 + v11) + 152))(&v57, result);
    v46 = v58;
    v67 = v57;
    v68 = v58;
    v47 = MEMORY[0x1E69E62F8];
    sub_1AF913E28(&v67, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
    v66 = v59;
    sub_1AF913E28(&v66, &qword_1EB638968, &type metadata for TypeConstraint, v47);
    v65 = v60;
    sub_1AF91219C(&v65);
    v64 = v61;
    sub_1AF91219C(&v64);
    v63 = v62;
    sub_1AF913E28(&v63, &qword_1EB638978, &type metadata for AnyValue, v47);
    v48 = *(v46 + 16);
    sub_1AF913E28(&v68, &qword_1EB638968, &type metadata for TypeConstraint, v47);
    if (!v48)
    {
      return 0;
    }

    v45 = &v75;
  }

  else
  {
    (*(**(v10 + v11) + 152))(&v57, result);
    v42 = v58;
    v67 = v57;
    v68 = v58;
    v43 = MEMORY[0x1E69E62F8];
    sub_1AF913E28(&v67, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
    v66 = v59;
    sub_1AF913E28(&v66, &qword_1EB638968, &type metadata for TypeConstraint, v43);
    v65 = v60;
    sub_1AF91219C(&v65);
    v64 = v61;
    sub_1AF91219C(&v64);
    v63 = v62;
    sub_1AF913E28(&v63, &qword_1EB638978, &type metadata for AnyValue, v43);
    v44 = *(v42 + 16);
    sub_1AF913E28(&v68, &qword_1EB638968, &type metadata for TypeConstraint, v43);
    if (!v44)
    {
      return 1;
    }

    v45 = &v76;
  }

  v49 = **(v45 - 32);
  v54(v9, v10 + v53, v5);

  v50 = sub_1AF70292C(v9, v49);

  v52(v9, v5);
  return (v50 & 1) != 0;
}

uint64_t sub_1AF914F30(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1AF91515C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1AF914F8C(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1AF445BE4(result);
  }

  return result;
}

void sub_1AF914FA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AF91504C(unint64_t result)
{
  if (((result >> 57) & 0xF8 | result & 7 | 0x10) != 0x7F)
  {
    return sub_1AF445BE4(result);
  }

  return result;
}

uint64_t sub_1AF915070(uint64_t a1, uint64_t a2)
{
  sub_1AF914FA0(0, &qword_1EB6405E8, &type metadata for AnyValue, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AF9150F8()
{
  result = qword_1EB641060;
  if (!qword_1EB641060)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB641060);
  }

  return result;
}

void sub_1AF91515C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1AF91526C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1AFDFC318();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v47 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF483618();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v45 = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v44 - v19;
  *(v5 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = a1;
  v46 = a4;
  sub_1AF487314(a4, v44 - v19);
  v21 = v5 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
  *v21 = 0;
  *(v21 + 8) = 0;
  *(v21 + 16) = 1;
  v22 = v5 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
  *v22 = 0;
  *(v22 + 8) = 0;
  *(v22 + 16) = 1;
  v23 = v5 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = (v5 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
  *v24 = 0;
  v24[1] = 0;
  *(v5 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = a2;
  v25 = *(a3 + 16);
  swift_retain_n();
  v44[1] = a1;

  v44[2] = a2;
  sub_1AF915C68(v26, v27, v50);
  v28 = v50[0];
  v55 = v50[1];
  v56 = v50[0];
  sub_1AF919968(&v55, &qword_1EB638968, &type metadata for TypeConstraint);
  v54 = v50[2];
  sub_1AF919968(&v54, &qword_1EB638968, &type metadata for TypeConstraint);
  v53 = v50[3];
  sub_1AF9199D8(&v53, sub_1AF445C2C);
  v52 = v50[4];
  sub_1AF9199D8(&v52, sub_1AF445C2C);
  v51 = v50[5];
  sub_1AF919968(&v51, &qword_1EB638978, &type metadata for AnyValue);
  v29 = *(v28 + 16);
  sub_1AF919968(&v56, &qword_1EB638968, &type metadata for TypeConstraint);
  if (v29 <= v25)
  {
    v29 = v25;
  }

  if (v29)
  {
    v44[0] = v10;
    v49 = MEMORY[0x1E69E7CC0];
    sub_1AFC05D04(0, v29, 0);
    v30 = 0;
    v31 = v49;
    do
    {
      v32 = 0uLL;
      if (v30 < v25)
      {
        v48 = *(a3 + 16 * v30 + 32);

        v32 = v48;
      }

      v49 = v31;
      v34 = *(v31 + 16);
      v33 = *(v31 + 24);
      if (v34 >= v33 >> 1)
      {
        v48 = v32;
        sub_1AFC05D04(v33 > 1, v34 + 1, 1);
        v32 = v48;
        v31 = v49;
      }

      ++v30;
      *(v31 + 16) = v34 + 1;
      *(v31 + 16 * v34 + 32) = v32;
    }

    while (v29 != v30);

    v10 = v44[0];
  }

  else
  {

    v31 = MEMORY[0x1E69E7CC0];
  }

  *(v5 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v31;
  v35 = v45;
  sub_1AF487314(v20, v45);
  v36 = *(v11 + 48);
  v37 = v36(v35, 1, v10);
  v38 = v47;
  if (v37 == 1)
  {
    sub_1AFDFC308();

    sub_1AF9199D8(v46, sub_1AF483618);
    sub_1AF9199D8(v20, sub_1AF483618);
    if (v36(v35, 1, v10) != 1)
    {
      sub_1AF9199D8(v35, sub_1AF483618);
    }
  }

  else
  {

    sub_1AF9199D8(v46, sub_1AF483618);
    sub_1AF9199D8(v20, sub_1AF483618);
    (*(v11 + 32))(v38, v35, v10);
  }

  (*(v11 + 32))(v5 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v38, v10);
  (*(v11 + 24))(*(v5 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + OBJC_IVAR____TtC3VFX4Node_authoringID, v5 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v10);
  v39 = v5 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
  *v39 = 0;
  *(v39 + 8) = 0;
  *(v39 + 16) = 1;
  v40 = v5 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
  *v40 = 0;
  *(v40 + 8) = 0;
  *(v40 + 16) = 1;
  v41 = v5 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
  *v41 = 0;
  *(v41 + 8) = 1;
  v42 = (v5 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
  *v42 = 0;
  v42[1] = 0;

  return v5;
}

uint64_t sub_1AF9157EC(char a1)
{
  v2 = v1;
  sub_1AF483618();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AFDFC318();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*(v9 + 16))(v13, v2 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v8, v11);
  }

  else
  {
    sub_1AFDFC308();
  }

  v14 = *(v2 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph);

  v15 = sub_1AF96FB80(1);
  v16 = *(v2 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs);
  (*(v9 + 16))(v7, v13, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v17 = swift_allocObject();

  sub_1AF91526C(v14, v15, v16, v7);
  (*(v9 + 8))(v13, v8);
  v18 = *(v2 + OBJC_IVAR____TtC3VFX13AuthoringNode_position + 16);
  v19 = v17 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
  *v19 = *(v2 + OBJC_IVAR____TtC3VFX13AuthoringNode_position);
  *(v19 + 16) = v18;
  v20 = *(v2 + OBJC_IVAR____TtC3VFX13AuthoringNode_size + 16);
  v21 = v17 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
  *v21 = *(v2 + OBJC_IVAR____TtC3VFX13AuthoringNode_size);
  *(v21 + 16) = v20;
  v22 = *(v2 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex + 8);
  v23 = v17 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
  *v23 = *(v2 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex);
  *(v23 + 8) = v22;
  v24 = *(v2 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName + 8);
  v25 = (v17 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
  *v25 = *(v2 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
  v25[1] = v24;

  return v17;
}
uint64_t sub_1AF7B4200(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v15 = 0;
  v16 = 0xE000000000000000;
  swift_weakLoadStrong();
  v14 = MEMORY[0x1E69E6158];
  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v13, v12);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v13);

  sub_1AF449D40(v12, &v13);
  swift_dynamicCast();
  MEMORY[0x1B2718AE0]();

  MEMORY[0x1B2718AE0](124, 0xE100000000000000);
  v6 = v5[3];
  v7 = v5[4];

  MEMORY[0x1B2718AE0](v6, v7);

  MEMORY[0x1B2718AE0](124, 0xE100000000000000);
  v8 = v5[5];
  v9 = v5[6];

  MEMORY[0x1B2718AE0](v8, v9);

  if (v15 == a2 && v16 == a3)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1AFDFEE28();
  }

  return v10 & 1;
}

uint64_t sub_1AF7B43D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v24 = a4;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_7:
      v13 = __clz(__rbit64(v9)) | (v12 << 6);
      v14 = (*(a1 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = (*(a1 + 56) + 24 * v13);
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v23[0] = v15;
      v23[1] = v16;
      v23[2] = v18;
      v23[3] = v19;
      v23[4] = v20;

      sub_1AF7B3080(v23, a2, a3, v24);
      if (v4)
      {
        break;
      }

      v9 &= v9 - 1;

      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (v11 + 1 >= v10)
      {
      }

      v9 = *(a1 + 8 * v11++ + 72);
      if (v9)
      {
        goto LABEL_7;
      }
    }
  }
}

uint64_t sub_1AF7B4548(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a1;
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  *&v65[0] = v7;
  *(&v65[0] + 1) = v8;
  *&v63[0] = 46;
  *(&v63[0] + 1) = 0xE100000000000000;
  sub_1AF4486E4();

  if ((sub_1AFDFDF18() & 1) == 0 || (v9 = *(*a2 + 16)) == 0)
  {

LABEL_24:
    v27 = (*a4 + 120);
    v28 = *v27;

    sub_1AF5AA544(v6, v28);
    if (v29)
    {

      MEMORY[0x1B2718E00](v30);
      if (*((*v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AFDFD458();
      }

      sub_1AFDFD4B8();
    }
  }

  v57 = v6;
  v58 = a2;
  v59 = a4;
  v60 = *a2 + 32;

  v10 = v9 - 1;
  for (i = 48; ; i += 64)
  {
    v12 = *(v60 + i - 48);
    v13 = *(v60 + i - 32);
    v14 = *(v60 + i - 16);
    *&v66[9] = *(v60 + i - 7);
    v65[1] = v13;
    *v66 = v14;
    v65[0] = v12;
    v62[0] = v7;
    v62[1] = v8;
    sub_1AF7B4A38(v65, v63, sub_1AF7AC288);
    v15 = sub_1AFDFDF28();
    if (v15[2])
    {
      v16 = v15[4];
      v17 = v15[5];
      v19 = v15[6];
      v18 = v15[7];

      v20 = v16 >> 16;
      v21 = v17 >> 16;
    }

    else
    {

      v20 = 0;
      v21 = 0;
      v19 = 0;
      v18 = 0;
    }

    v22 = (*(&v65[0] + 1) & 0x2000000000000000) != 0 ? HIBYTE(*(&v65[0] + 1)) & 0xFLL : *&v65[0] & 0xFFFFFFFFFFFFLL;
    v23 = *&v65[0] == v19 && v18 == *(&v65[0] + 1);
    v24 = v23 && v20 == 0;
    if (v24 && v22 == v21)
    {
      break;
    }

    v26 = sub_1AFDFE9E8();

    sub_1AF7B49D8(v65, sub_1AF7AC288);
    if (v26)
    {
      goto LABEL_32;
    }

    if (!v10)
    {

      a4 = v59;
      v6 = v57;
      goto LABEL_24;
    }

    --v10;
  }

  sub_1AF7B49D8(v65, sub_1AF7AC288);
LABEL_32:

  v32 = (*v58 + i);
  v34 = *v32;
  v33 = v32[1];
  v35 = *(v32 - 1);
  *&v64[9] = *(v32 + 25);
  v63[1] = v34;
  *v64 = v33;
  v63[0] = v35;
  v36 = v64[24];
  v37 = *(&v34 + 1);
  v38 = v34;
  sub_1AF7B4A38(v63, v62, sub_1AF7AC288);

  result = sub_1AF687FE4(v38, v37);
  if ((v36 & 1) == 0)
  {
    v39 = *v58;
    v40 = (*v58 + i);
    v42 = *(v40 - 2);
    v41 = *(v40 - 1);
    v43 = *v40;
    v44 = v40[1];
    v45 = v40[2];
    v46 = v40[3];
    v47 = v40[4];

    sub_1AF687F90(v43, v44);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v58 = v39;
    v61 = v43;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v39 = sub_1AFC0DBD4(v39);
      *v58 = v39;
    }

    LOBYTE(v39[i / 8 + 5]) = 1;
    v49 = sub_1AF7B0B84(v42, v41);
    v51 = v50;
    _s11ParameterInCMa();
    v52 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v52[3] = v42;
    v52[4] = v41;
    v52[5] = v49;
    v52[6] = v51;
    v52[7] = v61;
    v52[8] = v44;
    v52[9] = v45;
    v52[10] = v46;
    v52[11] = v47;
    v53 = (*v59 + 120);
    v54 = *v53;

    sub_1AF5AA544(v52, v54);
    if (v55)
    {

      MEMORY[0x1B2718E00](v56);
      if (*((*v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AFDFD458();
      }

      sub_1AFDFD4B8();
    }
  }

  return result;
}

uint64_t sub_1AF7B49D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AF7B4A38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AF7B4AA0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AF7B4B10(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1AF7B4B10(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AF7B4B60(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF624800(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1AF7B878C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1AF7B4BCC(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = (result + 56);
    do
    {
      v5 = *(v3 - 3);
      v4 = *(v3 - 2);
      v7 = *(v3 - 1);
      v6 = *v3;
      v8 = *a2;

      v9 = MEMORY[0x1B27189E0](v5, v4, v7, v6);
      MEMORY[0x1B2718AE0](v9);

      if (*(*a2 + 24) == 3)
      {
        v10 = 0;
      }

      else
      {
        v10 = 59;
      }

      if (*(*a2 + 24) == 3)
      {
        v11 = 0xE000000000000000;
      }

      else
      {
        v11 = 0xE100000000000000;
      }

      MEMORY[0x1B2718AE0](v10, v11);

      v12 = *(v8 + 128);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v8 + 128) = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = sub_1AF420554(0, *(v12 + 2) + 1, 1, v12);
        *(v8 + 128) = v12;
      }

      v15 = *(v12 + 2);
      v14 = *(v12 + 3);
      if (v15 >= v14 >> 1)
      {
        v12 = sub_1AF420554(v14 > 1, v15 + 1, 1, v12);
      }

      *(v12 + 2) = v15 + 1;
      v16 = &v12[16 * v15];
      *(v16 + 4) = 8201;
      *(v16 + 5) = 0xE200000000000000;
      *(v8 + 128) = v12;

      v3 += 4;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1AF7B4D4C(unint64_t a1, unint64_t *a2, int a3)
{
  v100 = a3;
  sub_1AF7B9154(0, &unk_1ED72DF20, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v99 = &v82[-v7];
  sub_1AF0D4E74();
  v90 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v89 = &v82[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v88 = sub_1AFDFC298();
  v11 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88, v12);
  v87 = &v82[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 >> 62)
  {
    result = sub_1AFDFE108();
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
LABEL_3:
      v15 = 0;
      v95 = a1 & 0xC000000000000001;
      v86 = 0x80000001AFF33DF0;
      v85 = "CodeGenContext.typeAsCode: ";
      v84 = (v11 + 32);
      v83 = xmmword_1AFE431C0;
      v97 = a1;
      v98 = a2;
      v96 = result;
      do
      {
        if (v95)
        {
          v16 = MEMORY[0x1B2719C70](v15, a1);
        }

        else
        {
        }

        v18 = *a2;
        v17 = a2[1];
        v20 = *(v16 + 24);
        v19 = *(v16 + 32);
        v21 = *(v16 + 72);
        v106 = *(v16 + 56);
        v107 = v21;
        v108 = *(v16 + 88);
        v109 = v15;
        v101 = v16;
        if (v100 == 3)
        {
          v104 = 544499052;
          v105 = 0xE400000000000000;

          sub_1AF444F60(&v106, &v102);
          MEMORY[0x1B2718AE0](0, 0xE000000000000000);
          MEMORY[0x1B2718AE0](v20, v19);
          MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
          if (*(&v106 + 1) >= 0x3BuLL)
          {
            v29 = v107;
            v30 = v108;
            if (*(v108 + 16) && (v31 = sub_1AF41A220(3u), (v32 & 1) != 0))
            {
              v33 = (*(v30 + 56) + 16 * v31);
              v34 = *v33;
              v24 = v33[1];

              v22 = v34;
            }

            else
            {
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v94 = v19;
              v102 = 0;
              v103 = 0xE000000000000000;
              sub_1AFDFE218();

              v102 = 0xD00000000000001BLL;
              v103 = v86;
              MEMORY[0x1B2718AE0](v29, *(&v29 + 1));
              MEMORY[0x1B2718AE0](0xD000000000000011, v85 | 0x8000000000000000);
              MEMORY[0x1B2718AE0](0x4C28207466697753, 0xEE00297963616765);
              v43 = v102;
              v42 = v103;
              v44 = sub_1AFDFDA18();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              v93 = v20;
              v92 = v17;
              v91 = v18;
              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              sub_1AF7B9154(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
              v45 = swift_allocObject();
              *(v45 + 16) = v83;
              *(v45 + 56) = MEMORY[0x1E69E6158];
              *(v45 + 64) = sub_1AF0D544C();
              *(v45 + 32) = v43;
              *(v45 + 40) = v42;

              sub_1AFDFC4C8();

              v46 = v87;
              sub_1AFDFC288();
              v47 = v90[12];
              v48 = v90[16];
              v49 = v89;
              v50 = v43;
              v51 = v42;
              v52 = &v89[v90[20]];
              (*v84)(v89, v46, v88);
              *(v49 + v47) = v44;
              *(v49 + v48) = 0;
              *v52 = v50;
              v52[1] = v51;

              sub_1AFDFC608();

              sub_1AF7B90F4(v49, sub_1AF0D4E74);

              v22 = 0;
              v24 = 0xE000000000000000;
              v18 = v91;
              v17 = v92;
              v20 = v93;
              v19 = v94;
            }
          }

          else
          {
            v22 = sub_1AF7E4930(&v106);
            v24 = v23;
          }

          MEMORY[0x1B2718AE0](v22, v24);

          goto LABEL_53;
        }

        v104 = 0x2074736E6F63;
        v105 = 0xE600000000000000;
        if (*(&v106 + 1) >= 0x3BuLL)
        {
          v35 = v107;
          v36 = v108;
          v37 = *(v108 + 16);

          if (!v37)
          {
            sub_1AF444F60(&v106, &v102);
LABEL_31:
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v102 = 0;
            v103 = 0xE000000000000000;
            sub_1AFDFE218();

            v102 = 0xD00000000000001BLL;
            v103 = v86;
            MEMORY[0x1B2718AE0](v35, *(&v35 + 1));
            MEMORY[0x1B2718AE0](0xD000000000000011, v85 | 0x8000000000000000);
            v53 = 0x6C6174654DLL;
            if (v100 != 2)
            {
              v53 = 0x697263536176614ALL;
            }

            v54 = 0xE500000000000000;
            if (v100 != 2)
            {
              v54 = 0xEA00000000007470;
            }

            v55 = 0x7070436A624FLL;
            if (!v100)
            {
              v55 = 67;
            }

            v56 = 0xE600000000000000;
            if (!v100)
            {
              v56 = 0xE100000000000000;
            }

            if (v100 <= 1u)
            {
              v57 = v55;
            }

            else
            {
              v57 = v53;
            }

            if (v100 <= 1u)
            {
              v58 = v56;
            }

            else
            {
              v58 = v54;
            }

            v94 = v19;
            MEMORY[0x1B2718AE0](v57, v58);

            v60 = v102;
            v59 = v103;
            v61 = sub_1AFDFDA18();
            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            v93 = v20;
            v92 = v17;
            v91 = v18;
            if (qword_1ED730E98 != -1)
            {
              swift_once();
            }

            sub_1AF7B9154(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
            v62 = swift_allocObject();
            *(v62 + 16) = v83;
            *(v62 + 56) = MEMORY[0x1E69E6158];
            *(v62 + 64) = sub_1AF0D544C();
            *(v62 + 32) = v60;
            *(v62 + 40) = v59;

            sub_1AFDFC4C8();

            v63 = v87;
            sub_1AFDFC288();
            v64 = v90[12];
            v65 = v90[16];
            v66 = v89;
            v67 = v60;
            v68 = v59;
            v69 = &v89[v90[20]];
            (*v84)(v89, v63, v88);
            *(v66 + v64) = v61;
            *(v66 + v65) = 0;
            *v69 = v67;
            v69[1] = v68;

            sub_1AFDFC608();

            sub_1AF7B90F4(v66, sub_1AF0D4E74);

            v26 = 0;
            v28 = 0xE000000000000000;
            v18 = v91;
            v17 = v92;
            v20 = v93;
            v19 = v94;
            goto LABEL_52;
          }

          sub_1AF444F60(&v106, &v102);
          v38 = sub_1AF41A220(v100);
          if ((v39 & 1) == 0)
          {
            goto LABEL_31;
          }

          v40 = (*(v36 + 56) + 16 * v38);
          v41 = *v40;
          v28 = v40[1];

          v26 = v41;
        }

        else
        {
          v25 = v100;

          sub_1AF444F60(&v106, &v102);
          if (v25 == 2)
          {
            v26 = sub_1AF7E4F70(&v106);
          }

          else
          {
            v26 = sub_1AF7E54DC(&v106);
          }

          v28 = v27;
        }

LABEL_52:
        MEMORY[0x1B2718AE0](v26, v28);

        MEMORY[0x1B2718AE0](32, 0xE100000000000000);
        MEMORY[0x1B2718AE0](0, 0xE000000000000000);
        MEMORY[0x1B2718AE0](v20, v19);
LABEL_53:
        sub_1AF444FBC(&v106);
        v71 = v104;
        v70 = v105;
        v102 = v18;
        v103 = v17;
        v104 = v20;
        v105 = v19;
        v72 = sub_1AFDFC328();
        v73 = v99;
        (*(*(v72 - 8) + 56))(v99, 1, 1, v72);
        sub_1AF4486E4();
        v74 = sub_1AFDFDEF8();
        v76 = v75;
        v77 = v17;
        v79 = v78;
        sub_1AF7B9068(v73);

        if (v79)
        {
        }

        else
        {
          v18 = sub_1AF9AADA8(v74, v76, v71, v70, v18, v77);
          v81 = v80;

          v77 = v81;
        }

        a2 = v98;
        v15 = v109 + 1;
        *v98 = v18;
        a2[1] = v77;

        result = v96;
        a1 = v97;
      }

      while (v96 != v15);
    }
  }

  return result;
}

unint64_t sub_1AF7B5894()
{
  sub_1AFDFE218();

  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  MEMORY[0x1B2718AE0](v1, v2);

  MEMORY[0x1B2718AE0](0x656372756F73202CLL, 0xEA0000000000203ALL);

  v3 = sub_1AF777650();
  MEMORY[0x1B2718AE0](v3);

  return 0xD000000000000017;
}

uint64_t sub_1AF7B5974(int a1, char *a2, unint64_t a3)
{
  v118 = a1;
  v6 = 0;
  sub_1AF7B9154(0, &unk_1ED72DF20, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v117 = &v103 - v9;
  sub_1AF0D4E74();
  v116 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v115 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1AFDFC298();
  v13 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v14);
  v113 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = a2;
  v130 = a3;
  v16 = *(*(v3 + 136) + 160);
  v106 = v3;
  if (v16)
  {
    *(&v119 + 1) = v13;
    v126 = v16;
    swift_bridgeObjectRetain_n();

    sub_1AF7B4B60(&v126);
    v120 = 0;

    v121 = v126;
    v17 = *(v126 + 2);
    if (v17)
    {
      v18 = (v121 + 40);
      do
      {
        v20 = *(v18 - 1);
        v19 = *v18;
        v126 = a2;
        v127 = a3;
        v136 = v20;
        v137 = v19;
        v131 = 36;
        v132 = 0xE100000000000000;

        MEMORY[0x1B2718AE0](v20, v19);
        sub_1AF4486E4();
        a2 = sub_1AFDFDEB8();
        v22 = v21;

        swift_bridgeObjectRelease_n();

        v129 = a2;
        v130 = v22;
        v18 += 2;
        a3 = v22;
        --v17;
      }

      while (v17);
    }

    v3 = v106;
    v13 = *(&v119 + 1);
    v6 = v120;
  }

  else
  {
  }

  sub_1AF7B4D4C(v23, &v129, v118);
  v104 = v6;

  v24 = sub_1AF764DE8();
  if (v24)
  {
    v105 = v24;
    v25 = v24[2];
    if (v25)
    {
      v26 = (v105 + 4);
      v111 = "CodeGenContext.typeAsCode: ";
      v112 = 0x80000001AFF33DF0;
      v110 = (v13 + 32);
      v109 = xmmword_1AFE431C0;
      do
      {
        v120 = v26;
        sub_1AF7A70A0(v26, &v126);
        v28 = v126;
        v27 = v127;
        v29 = sub_1AFDFD188();

        if (v29)
        {
          sub_1AFDFD048();
          sub_1AFDFD078();
          v30 = sub_1AFDFD1F8();
          v32 = v31;
          v34 = v33;
          v36 = v35;

          v28 = MEMORY[0x1B27189E0](v30, v32, v34, v36);
          v27 = v37;
        }

        v38 = v118;
        v39 = v130;
        *&v119 = v129;
        sub_1AF44CBE4(&v128, v124);
        sub_1AF449D40(v124, &v125);
        *(&v119 + 1) = v39;

        swift_dynamicCast();
        sub_1AF809DF8(v122, v123, &v131);
        v40 = v132;
        v42 = v133;
        v41 = v134;
        v43 = v135;
        v136 = v131;
        v137 = v132;
        v138 = v133;
        v139 = v134;
        v140 = v135;
        v121 = v25;
        if (v38 == 3)
        {
          *&v125 = 544499052;
          *(&v125 + 1) = 0xE400000000000000;
          MEMORY[0x1B2718AE0](0, 0xE000000000000000);
          MEMORY[0x1B2718AE0](v28, v27);
          MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
          if (v40 >= 0x3B)
          {
            if (*(v43 + 16) && (v49 = sub_1AF41A220(3u), (v50 & 1) != 0))
            {
              v51 = (*(v43 + 56) + 16 * v49);
              v52 = *v51;
              v46 = v51[1];

              v44 = v52;
            }

            else
            {
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              *&v124[0] = 0;
              *(&v124[0] + 1) = 0xE000000000000000;
              sub_1AFDFE218();

              *&v124[0] = 0xD00000000000001BLL;
              *(&v124[0] + 1) = v112;
              MEMORY[0x1B2718AE0](v42, v41);
              MEMORY[0x1B2718AE0](0xD000000000000011, v111 | 0x8000000000000000);
              MEMORY[0x1B2718AE0](0x4C28207466697753, 0xEE00297963616765);
              v58 = v124[0];
              v59 = sub_1AFDFDA18();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              sub_1AF7B9154(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
              v60 = swift_allocObject();
              *(v60 + 16) = v109;
              *(v60 + 56) = MEMORY[0x1E69E6158];
              *(v60 + 64) = sub_1AF0D544C();
              *(v60 + 32) = v58;

              sub_1AFDFC4C8();

              v61 = v113;
              sub_1AFDFC288();
              v62 = v115;
              v63 = v116[12];
              v107 = v116[16];
              v108 = v63;
              v64 = &v115[v116[20]];
              (*v110)(v115, v61, v114);
              v65 = v107;
              v108[v62] = v59;
              *(v62 + v65) = 0;
              *v64 = v58;

              sub_1AFDFC608();

              sub_1AF7B90F4(v62, sub_1AF0D4E74);

              v44 = 0;
              v46 = 0xE000000000000000;
            }
          }

          else
          {
            v44 = sub_1AF7E4930(&v136);
            v46 = v45;
          }

          MEMORY[0x1B2718AE0](v44, v46);
        }

        else
        {
          *&v125 = 0x2074736E6F63;
          *(&v125 + 1) = 0xE600000000000000;
          if (v132 >= 0x3B)
          {
            if (*(v135 + 16) && (v53 = sub_1AF41A220(v118), (v54 & 1) != 0))
            {
              v55 = (*(v43 + 56) + 16 * v53);
              v56 = *v55;
              v57 = v55[1];

              v47 = v56;
            }

            else
            {
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              *&v124[0] = 0;
              *(&v124[0] + 1) = 0xE000000000000000;
              sub_1AFDFE218();

              *&v124[0] = 0xD00000000000001BLL;
              *(&v124[0] + 1) = v112;
              MEMORY[0x1B2718AE0](v42, v41);
              MEMORY[0x1B2718AE0](0xD000000000000011, v111 | 0x8000000000000000);
              v66 = 0x6C6174654DLL;
              if (v118 != 2)
              {
                v66 = 0x697263536176614ALL;
              }

              v67 = 0xE500000000000000;
              if (v118 != 2)
              {
                v67 = 0xEA00000000007470;
              }

              v68 = 0x7070436A624FLL;
              if (!v118)
              {
                v68 = 67;
              }

              v69 = 0xE600000000000000;
              if (!v118)
              {
                v69 = 0xE100000000000000;
              }

              if (v118 <= 1u)
              {
                v70 = v68;
              }

              else
              {
                v70 = v66;
              }

              if (v118 <= 1u)
              {
                v71 = v69;
              }

              else
              {
                v71 = v67;
              }

              MEMORY[0x1B2718AE0](v70, v71);

              v72 = v124[0];
              v73 = sub_1AFDFDA18();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              v108 = v28;
              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              sub_1AF7B9154(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
              v74 = swift_allocObject();
              *(v74 + 16) = v109;
              *(v74 + 56) = MEMORY[0x1E69E6158];
              *(v74 + 64) = sub_1AF0D544C();
              *(v74 + 32) = v72;

              sub_1AFDFC4C8();

              v75 = v113;
              sub_1AFDFC288();
              v76 = v115;
              v107 = v72;
              v77 = v116[12];
              v78 = v116[16];
              v79 = &v115[v116[20]];
              (*v110)(v115, v75, v114);
              *(v76 + v77) = v73;
              *(v76 + v78) = 0;
              *v79 = v107;
              *(v79 + 1) = *(&v72 + 1);

              sub_1AFDFC608();

              sub_1AF7B90F4(v76, sub_1AF0D4E74);

              v47 = 0;
              v57 = 0xE000000000000000;
              v28 = v108;
            }
          }

          else
          {
            if (v118 == 2)
            {
              v47 = sub_1AF7E4F70(&v136);
            }

            else
            {
              v47 = sub_1AF7E54DC(&v136);
            }

            v57 = v48;
          }

          MEMORY[0x1B2718AE0](v47, v57);

          MEMORY[0x1B2718AE0](32, 0xE100000000000000);
          MEMORY[0x1B2718AE0](0, 0xE000000000000000);
          MEMORY[0x1B2718AE0](v28, v27);
        }

        sub_1AF7B8FFC(&v131);
        v80 = v125;
        v82 = *(&v119 + 1);
        v81 = v119;
        v125 = v119;
        *&v124[0] = v28;
        *(&v124[0] + 1) = v27;
        v83 = sub_1AFDFC328();
        v84 = v117;
        (*(*(v83 - 8) + 56))(v117, 1, 1, v83);
        sub_1AF4486E4();
        v85 = sub_1AFDFDEF8();
        v87 = v86;
        v89 = v88;
        sub_1AF7B9068(v84);

        if (v89)
        {
        }

        else
        {
          v81 = sub_1AF9AADA8(v85, v87, v80, *(&v80 + 1), v81, v82);
          v91 = v90;
          swift_bridgeObjectRelease_n();

          v82 = v91;
        }

        v129 = v81;
        v130 = v82;
        sub_1AF7B90F4(&v126, sub_1AF7711B0);
        v26 = v120 + 104;
        v25 = v121 - 1;
      }

      while (v121 != 1);
    }

    v3 = v106;
  }

  v92 = *(v3 + 136);
  if (!*(v92 + 200))
  {
    return v129;
  }

  v126 = *(v92 + 200);
  swift_bridgeObjectRetain_n();
  v93 = v104;
  sub_1AF7B4B60(&v126);
  if (!v93)
  {

    v94 = *(v126 + 2);
    v95 = v129;
    v96 = v130;
    v121 = v126;
    if (v94)
    {
      v97 = v126 + 40;
      do
      {
        v99 = *(v97 - 1);
        v98 = *v97;
        v126 = v95;
        v127 = v96;
        *&v125 = v99;
        *(&v125 + 1) = v98;
        *&v124[0] = 36;
        *(&v124[0] + 1) = 0xE100000000000000;

        MEMORY[0x1B2718AE0](v99, v98);
        sub_1AF4486E4();
        v95 = sub_1AFDFDEB8();
        v101 = v100;

        swift_bridgeObjectRelease_n();

        v97 += 16;
        v96 = v101;
        --v94;
      }

      while (v94);
    }

    return v95;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AF7B67A4(uint64_t *a1)
{
  v2 = v1;
  if ((sub_1AF7626A4() & 1) == 0)
  {
    goto LABEL_13;
  }

  v3 = v1[6];
  if (v3[2])
  {
    v4 = v3[4];
    v5 = v3[5];
    v6 = v3[6];
    v7 = v3[8];
    v114 = v3[7];
    sub_1AF687F90(v4, v5);
    v8 = v2[11];
    if (!v8[2])
    {
      if (v5 != 59)
      {
        v9 = 0;
        v10 = 59;
LABEL_12:
        sub_1AF771214(v4, v5);
        sub_1AF771214(v9, v10);
        goto LABEL_13;
      }

      goto LABEL_39;
    }
  }

  else
  {
    v8 = v1[11];
    if (!v8[2])
    {
      goto LABEL_39;
    }

    v7 = 0;
    v114 = 0;
    v6 = 0;
    v4 = 0;
    v5 = 59;
  }

  v9 = v8[4];
  v10 = v8[5];
  v11 = v8[6];
  v12 = v8[7];
  v13 = v8[8];
  sub_1AF687F90(v9, v10);
  if (v5 == 59)
  {
    if (v10 != 59)
    {
      v5 = 59;
      goto LABEL_12;
    }

    goto LABEL_39;
  }

  if (v10 == 59)
  {
    goto LABEL_12;
  }

  v125 = v9;
  v126 = v10;
  v127 = v11;
  v128 = v12;
  v129 = v13;
  v130 = v4;
  v112 = v4;
  v131 = v5;
  v132 = v6;
  v133 = v114;
  v134 = v7;
  v61 = sub_1AF7FE65C();
  v63 = v62;
  if (v61 == sub_1AF7FE65C() && v63 == v64)
  {

    sub_1AF771214(v9, v10);
    sub_1AF771214(v112, v5);
    goto LABEL_39;
  }

  v111 = sub_1AFDFEE28();

  sub_1AF771214(v9, v10);
  sub_1AF771214(v112, v5);
  if ((v111 & 1) == 0)
  {
LABEL_13:
    v14 = *a1;
    v15 = *(*a1 + 24);

    v16 = sub_1AF776964(v15);
    v18 = v17;

    if (v18)
    {
      v19 = sub_1AF7B5974(*(v14 + 24), v16, v18);
      v21 = v20;

      v22 = v2[17];
      v23 = *(v22 + 160);
      if (v23)
      {
        v24 = *(v23 + 16);
        if (v24)
        {
          v25 = ( + 40);
          do
          {
            v26 = *(v25 - 1);
            v27 = *v25;
            *&v121 = v19;
            *(&v121 + 1) = v21;
            *&v117[0] = 36;
            *(&v117[0] + 1) = 0xE100000000000000;

            MEMORY[0x1B2718AE0](v26, v27);
            v28 = v2[4];
            *&v120 = v2[3];
            *(&v120 + 1) = v28;

            MEMORY[0x1B2718AE0](47, 0xE100000000000000);

            MEMORY[0x1B2718AE0](v26, v27);

            v29 = sub_1AF76ED08(v120, *(&v120 + 1));
            v31 = v30;

            *&v120 = v29;
            *(&v120 + 1) = v31;
            sub_1AF4486E4();
            v19 = sub_1AFDFDEB8();
            v33 = v32;

            v21 = v33;
            v25 += 2;
            --v24;
          }

          while (v24);

          v22 = v2[17];
        }
      }

      v34 = *(v22 + 200);
      if (v34)
      {
        v35 = *(v34 + 16);
        if (v35)
        {
          v36 = ( + 40);
          do
          {
            v37 = *(v36 - 1);
            v38 = *v36;
            *&v121 = v19;
            *(&v121 + 1) = v21;
            *&v117[0] = 36;
            *(&v117[0] + 1) = 0xE100000000000000;

            MEMORY[0x1B2718AE0](v37, v38);
            v39 = v2[4];
            *&v120 = v2[3];
            *(&v120 + 1) = v39;

            MEMORY[0x1B2718AE0](47, 0xE100000000000000);

            MEMORY[0x1B2718AE0](v37, v38);

            v40 = sub_1AF76ED08(v120, *(&v120 + 1));
            v42 = v41;

            *&v120 = v40;
            *(&v120 + 1) = v42;
            sub_1AF4486E4();
            v19 = sub_1AFDFDEB8();
            v44 = v43;

            v21 = v44;
            v36 += 2;
            --v35;
          }

          while (v35);
        }
      }

      *&v121 = v19;
      *(&v121 + 1) = v21;
      *&v117[0] = 0x23504D455423;
      *(&v117[0] + 1) = 0xE600000000000000;
      sub_1AF4486E4();
      if (sub_1AFDFDF18())
      {
        *&v121 = v19;
        *(&v121 + 1) = v21;
        *&v117[0] = 0x23504D455423;
        *(&v117[0] + 1) = 0xE600000000000000;
        v45 = v2[4];
        *&v120 = v2[3];
        *(&v120 + 1) = v45;

        MEMORY[0x1B2718AE0](47, 0xE100000000000000);

        MEMORY[0x1B2718AE0](1886217556, 0xE400000000000000);

        v46 = sub_1AF76ED08(v120, *(&v120 + 1));
        v48 = v47;

        *&v120 = v46;
        *(&v120 + 1) = v48;
        sub_1AFDFDEB8();
      }

      *&v117[0] = 10;
      *(&v117[0] + 1) = 0xE100000000000000;
      *&v120 = 2099466;
      *(&v120 + 1) = 0xE300000000000000;
      v49 = sub_1AFDFDEB8();
      v51 = v50;

      *&v121 = v49;
      *(&v121 + 1) = v51;
      v52 = sub_1AFDFDF28();

      sub_1AF7B4BCC(v52, a1);
    }

    else
    {
      v55 = v2[3];
      v54 = v2[4];
      *(&v122 + 1) = MEMORY[0x1E69E6158];
      *&v121 = 0;
      *(&v121 + 1) = 0xE000000000000000;

      sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v121, v117);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v121);
      sub_1AF449D40(v117, &v121);
      swift_dynamicCast();
      v56 = v120;
      v57 = sub_1AF762980();
      v59 = v58;
      *&v121 = 0;
      *(&v121 + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      v120 = v121;
      v115 = v14;
      v113 = v59;
      v60 = v55;

      sub_1AF9A0BAC();

      v65 = sub_1AFDFDDB8();
      v67 = v66;

      v68 = sub_1AF701628();
      v70 = v69;
      v72 = v71;
      v74 = v73;

      *&v121 = v68;
      *(&v121 + 1) = v70;
      *&v122 = v72;
      *(&v122 + 1) = v74;
      sub_1AF725990();
      sub_1AFDFD0A8();

      MEMORY[0x1B2718AE0](v65, v67);

      MEMORY[0x1B2718AE0](0xD00000000000003ALL, 0x80000001AFF34BD0);
      *&v117[0] = v60;
      *(&v117[0] + 1) = v54;
      v117[1] = v56;
      *&v118 = v57;
      *(&v118 + 1) = v113;
      v119 = v120;
      v121 = v117[0];
      v122 = v56;
      v123 = v118;
      v124 = v120;
      v75 = *(v115 + 144);
      sub_1AF51E760(&v121, v75);
      if (v76)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        *(v115 + 144) = v75;
        if ((result & 1) == 0)
        {
          result = sub_1AF424EC0(0, *(v75 + 16) + 1, 1, v75);
          v75 = result;
          *(v115 + 144) = result;
        }

        v78 = *(v75 + 16);
        v77 = *(v75 + 24);
        if (v78 >= v77 >> 1)
        {
          result = sub_1AF424EC0(v77 > 1, v78 + 1, 1, v75);
          v75 = result;
        }

        *(v75 + 16) = v78 + 1;
        v79 = (v75 + (v78 << 6));
        v80 = v121;
        v81 = v122;
        v82 = v124;
        v79[4] = v123;
        v79[5] = v82;
        v79[2] = v80;
        v79[3] = v81;
        *(v115 + 144) = v75;
      }

      else
      {
        return sub_1AF761440(v117);
      }
    }

    return result;
  }

LABEL_39:
  v83 = v2[7];
  if (!(v83 >> 62))
  {
    if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_41;
    }

LABEL_44:
    v84 = 0;
    goto LABEL_45;
  }

  if (!sub_1AFDFE108())
  {
    goto LABEL_44;
  }

LABEL_41:
  if ((v83 & 0xC000000000000001) != 0)
  {

    v84 = MEMORY[0x1B2719C70](0, v83);
  }

  else
  {
    v84 = *(v83 + 32);
  }

LABEL_45:
  v85 = v2[12];
  if (v85 >> 62)
  {
    sub_1AFDFE108();
    if ((v85 & 0xC000000000000001) == 0)
    {
      goto LABEL_47;
    }

LABEL_60:

    v86 = MEMORY[0x1B2719C70](0, v85);

    goto LABEL_48;
  }

  if ((v85 & 0xC000000000000001) != 0)
  {
    goto LABEL_60;
  }

LABEL_47:
  v86 = *(v85 + 32);

LABEL_48:
  v87 = *a1;
  *&v120 = 8201;
  *(&v120 + 1) = 0xE200000000000000;
  v88 = *(v86 + 72);
  v89 = *(v87 + 24);
  v121 = *(v86 + 56);
  v122 = v88;
  *&v123 = *(v86 + 88);
  v90 = *(v86 + 40);
  v91 = *(v86 + 48);

  sub_1AF444F60(&v121, v117);
  v92 = sub_1AF76ED08(v90, v91);
  v94 = v93;

  v95 = sub_1AF7DBFF8(&v121, v92, v94, 0, v89);
  v97 = v96;

  sub_1AF444FBC(&v121);
  MEMORY[0x1B2718AE0](v95, v97);

  MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
  v98 = *(v84 + 40);
  v99 = *(v84 + 48);

  v100 = sub_1AF76ED08(v98, v99);
  v102 = v101;

  MEMORY[0x1B2718AE0](v100, v102);

  if (*(v87 + 24) == 3)
  {
    v103 = 0;
  }

  else
  {
    v103 = 59;
  }

  if (*(v87 + 24) == 3)
  {
    v104 = 0xE000000000000000;
  }

  else
  {
    v104 = 0xE100000000000000;
  }

  MEMORY[0x1B2718AE0](v103, v104);

  v105 = v120;
  v106 = *(v87 + 128);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v87 + 128) = v106;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v106 = sub_1AF420554(0, *(v106 + 2) + 1, 1, v106);
    *(v87 + 128) = v106;
  }

  v109 = *(v106 + 2);
  v108 = *(v106 + 3);
  if (v109 >= v108 >> 1)
  {
    *(v87 + 128) = sub_1AF420554(v108 > 1, v109 + 1, 1, v106);
  }

  v110 = *(v87 + 128);
  *(v110 + 16) = v109 + 1;
  *(v110 + 16 * v109 + 32) = v105;
  *(v87 + 128) = v110;
  return result;
}

uint64_t sub_1AF7B7430@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1AFDFE638();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1AF7B7488(uint64_t a1)
{
  v2 = sub_1AF7B85E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF7B74C4(uint64_t a1)
{
  v2 = sub_1AF7B85E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF7B754C(void *a1)
{
  sub_1AF7B86E0(0, &qword_1EB63EAF0, sub_1AF7B85E4, &_s17CustomCodeSnippetC10CodingKeysON, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v13[-1] - v7;
  v9 = sub_1AF441150(a1, a1[3]);
  sub_1AF7B85E4();
  v10 = v9;
  sub_1AFDFF3B8();
  if (v1)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    _s17CustomCodeSnippetCMa();
    swift_deallocPartialClassInstance();
  }

  else
  {
    _s17CodeSourceSnippetCMa();
    sub_1AF7B8748(&qword_1EB63EB00);
    sub_1AFDFE768();
    *(v13[6] + 136) = v13[0];
    sub_1AF441194(a1, v13);
    v10 = sub_1AF76BC24(v13);

    sub_1AF76B4B4();
    sub_1AF763428();
    (*(v5 + 8))(v8, v4);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  return v10;
}

uint64_t sub_1AF7B77B0(void *a1)
{
  sub_1AF7B86E0(0, &qword_1EB63EB38, sub_1AF7B85E4, &_s17CustomCodeSnippetC10CodingKeysON, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v11 - v8;
  result = sub_1AF76C660(a1);
  if (!v2)
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AF7B85E4();
    sub_1AFDFF3F8();
    v11[1] = *(v1 + 136);
    _s17CodeSourceSnippetCMa();
    sub_1AF7B8748(&qword_1EB63EB40);
    sub_1AFDFE918();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

unint64_t sub_1AF7B79D0()
{
  *&v5 = 0;
  *(&v5 + 1) = 0xE000000000000000;
  sub_1AFDFE218();

  v7 = 0xD000000000000015;
  v8 = 0x80000001AFF34BB0;
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  MEMORY[0x1B2718AE0](v1, v2);

  MEMORY[0x1B2718AE0](0x203A656D616E202CLL, 0xE900000000000022);
  v6 = MEMORY[0x1E69E6158];
  *&v5 = 0;
  *(&v5 + 1) = 0xE000000000000000;
  sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v5, v4);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v5);
  sub_1AF449D40(v4, &v5);
  swift_dynamicCast();
  MEMORY[0x1B2718AE0]();

  MEMORY[0x1B2718AE0](10530, 0xE200000000000000);
  return v7;
}

uint64_t sub_1AF7B7B24@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1AFDFE638();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1AF7B7B7C(uint64_t a1)
{
  v2 = sub_1AF7B868C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF7B7BB8(uint64_t a1)
{
  v2 = sub_1AF7B868C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF7B7C40(void *a1)
{
  sub_1AF7B86E0(0, &qword_1EB63EB30, sub_1AF7B868C, &_s15VariableSnippetC10CodingKeysON, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v15 - v7;
  v9 = sub_1AF441150(a1, a1[3]);
  sub_1AF7B868C();
  v10 = v9;
  sub_1AFDFF3B8();
  if (v1)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    _s15VariableSnippetCMa();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1AF75FCC4();
    sub_1AFDFE768();
    v12 = v16;
    v13 = v15[1];
    v14 = v17;
    *(v17 + 144) = v15[0];
    *(v14 + 160) = v13;
    *(v14 + 176) = v12;
    sub_1AF441194(a1, v15);
    v10 = sub_1AF7B754C(v15);
    (*(v5 + 8))(v8, v4);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  return v10;
}

unint64_t sub_1AF7B7EF0()
{
  *&v5 = 0;
  *(&v5 + 1) = 0xE000000000000000;
  sub_1AFDFE218();

  v7 = 0xD00000000000001ELL;
  v8 = 0x80000001AFF34B90;
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  MEMORY[0x1B2718AE0](v1, v2);

  MEMORY[0x1B2718AE0](0x203A656D616E202CLL, 0xE900000000000022);
  v6 = MEMORY[0x1E69E6158];
  *&v5 = 0;
  *(&v5 + 1) = 0xE000000000000000;
  sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v5, v4);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v5);
  sub_1AF449D40(v4, &v5);
  swift_dynamicCast();
  MEMORY[0x1B2718AE0]();

  MEMORY[0x1B2718AE0](8745, 0xE200000000000000);
  return v7;
}

uint64_t sub_1AF7B8034@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1AFDFE638();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1AF7B808C(uint64_t a1)
{
  v2 = sub_1AF7B8638();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF7B80C8(uint64_t a1)
{
  v2 = sub_1AF7B8638();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF7B8150(void *a1)
{
  sub_1AF7B86E0(0, &qword_1EB63EB18, sub_1AF7B8638, &_s24VariableReferenceSnippetC10CodingKeysON, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v15 - v7;
  v9 = sub_1AF441150(a1, a1[3]);
  sub_1AF7B8638();
  v10 = v9;
  sub_1AFDFF3B8();
  if (v1)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    _s24VariableReferenceSnippetCMa();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1AF75FCC4();
    sub_1AFDFE768();
    v12 = v16;
    v13 = v15[1];
    v14 = v17;
    *(v17 + 144) = v15[0];
    *(v14 + 160) = v13;
    *(v14 + 176) = v12;
    sub_1AF441194(a1, v15);
    v10 = sub_1AF7B754C(v15);
    (*(v5 + 8))(v8, v4);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  return v10;
}

uint64_t sub_1AF7B83D4(void *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(void))
{
  sub_1AF7B86E0(0, a2, a3, a4, MEMORY[0x1E69E6F58]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v19 - v13;
  result = sub_1AF7B77B0(a1);
  if (!v6)
  {
    v16 = a1[3];
    v21 = a1[4];
    sub_1AF441150(a1, v16);
    a5();
    sub_1AFDFF3F8();
    v17 = *(v5 + 176);
    v18 = *(v5 + 160);
    v19[0] = *(v5 + 144);
    v19[1] = v18;
    v20 = v17;
    sub_1AF75FC0C();
    sub_1AFDFE918();
    return (*(v11 + 8))(v14, v10);
  }

  return result;
}

uint64_t sub_1AF7B8568()
{
  v0 = sub_1AF76CB54();

  sub_1AF687FE4(*(v0 + 144), *(v0 + 152));

  return swift_deallocClassInstance();
}

unint64_t sub_1AF7B85E4()
{
  result = qword_1EB63EAF8;
  if (!qword_1EB63EAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EAF8);
  }

  return result;
}

unint64_t sub_1AF7B8638()
{
  result = qword_1EB63EB10;
  if (!qword_1EB63EB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EB10);
  }

  return result;
}

unint64_t sub_1AF7B868C()
{
  result = qword_1EB63EB28;
  if (!qword_1EB63EB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EB28);
  }

  return result;
}

void sub_1AF7B86E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1AF7B8748(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s17CodeSourceSnippetCMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF7B878C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1AFDFE9D8();
  if (result >= v2)
  {
    if (v2 >= 2)
    {
      v7 = *a1;
      v8 = -1;
      v9 = 1;
      v10 = *a1;
      do
      {
        v11 = (v7 + 16 * v9);
        v12 = *v11;
        v13 = v11[1];
        v14 = v8;
        v15 = v10;
        do
        {
          result = *v15;
          if (*v15 == v12 && *(v15 + 8) == v13)
          {
            break;
          }

          result = sub_1AFDFEE28();
          if ((result & 1) == 0)
          {
            break;
          }

          *(v15 + 16) = *v15;
          *v15 = v12;
          *(v15 + 8) = v13;
          v15 -= 16;
        }

        while (!__CFADD__(v14++, 1));
        ++v9;
        v10 += 16;
        --v8;
      }

      while (v9 != v2);
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
      v6 = sub_1AFDFD488();
      *(v6 + 16) = v5;
    }

    v18[0] = (v6 + 32);
    v18[1] = v5;
    sub_1AF7B88E0(v18, v19, a1, v4);
    *(v6 + 16) = 0;
  }

  return result;
}

uint64_t sub_1AF7B88E0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = a4;
    v8 = 0;
    v80 = *a1;
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v79 = v9;
      v10 = v8;
      v11 = v8 + 1;
      if (v8 + 1 >= v6)
      {
        ++v8;
        v9 = v79;
        goto LABEL_32;
      }

      v12 = (*a3 + 16 * v11);
      v13 = (*a3 + 16 * v8);
      if (*v13 == *v12 && v13[1] == v12[1])
      {
        v15 = 0;
      }

      else
      {
        v15 = sub_1AFDFEE28();
      }

      v16 = v8 + 2;
      if (v8 + 2 < v6)
      {
        v17 = v13 + 3;
        v18 = v13 + 3;
        while (1)
        {
          v8 = v16;
          v20 = v18[2];
          v18 += 2;
          v19 = v20;
          if (*(v17 - 1) == v17[1] && *v17 == v19)
          {
            if (v15)
            {
              v9 = v79;
              if (v10 <= v16 - 1)
              {
                goto LABEL_28;
              }

              goto LABEL_32;
            }
          }

          else if ((v15 ^ sub_1AFDFEE28()))
          {
            v11 = v8 - 1;
            goto LABEL_27;
          }

          v16 = v8 + 1;
          v17 = v18;
          if (v6 == v8 + 1)
          {
            v11 = v8;
            v8 = v6;
            goto LABEL_27;
          }
        }
      }

      v8 += 2;
LABEL_27:
      v22 = v10 <= v11;
      v9 = v79;
      if (v15 & v22)
      {
LABEL_28:
        v23 = 0;
        v24 = 16 * v8;
        v25 = 16 * v10;
        v26 = v10;
        do
        {
          if (v26 != v8 + v23 - 1)
          {
            v27 = (*a3 + v25);
            v28 = *a3 + v24;
            v29 = *v27;
            v30 = v27[1];
            *v27 = *(v28 - 16);
            *(v28 - 16) = v29;
            *(v28 - 8) = v30;
          }

          ++v26;
          --v23;
          v24 -= 16;
          v25 += 16;
        }

        while (v26 < v8 + v23);
      }

LABEL_32:
      v31 = a3[1];
      if (v8 < v31 && v8 - v10 < v7)
      {
        if (v10 + v7 >= v31)
        {
          v33 = a3[1];
        }

        else
        {
          v33 = v10 + v7;
        }

        if (v10 + v7 == v8)
        {
          v8 = v33;
        }

        else
        {
          v75 = v10;
          v76 = v5;
          v34 = *a3;
          v35 = *a3 + 16 * v8 - 16;
          v36 = v10 - v8;
          do
          {
            v37 = (v34 + 16 * v8);
            v38 = *v37;
            v39 = v37[1];
            v40 = v36;
            v41 = v35;
            do
            {
              if (*v41 == v38 && *(v41 + 8) == v39)
              {
                break;
              }

              if ((sub_1AFDFEE28() & 1) == 0)
              {
                break;
              }

              *(v41 + 16) = *v41;
              *v41 = v38;
              *(v41 + 8) = v39;
              v41 -= 16;
            }

            while (!__CFADD__(v40++, 1));
            ++v8;
            v35 += 16;
            --v36;
          }

          while (v8 != v33);
          v8 = v33;
          v10 = v75;
          v5 = v76;
          v9 = v79;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1AF4209A4(0, *(v9 + 2) + 1, 1, v9);
      }

      v45 = *(v9 + 2);
      v44 = *(v9 + 3);
      v46 = v45 + 1;
      if (v45 >= v44 >> 1)
      {
        v9 = sub_1AF4209A4(v44 > 1, v45 + 1, 1, v9);
      }

      *(v9 + 2) = v46;
      v47 = v9 + 32;
      v48 = &v9[16 * v45 + 32];
      *v48 = v10;
      *(v48 + 1) = v8;
      if (v45)
      {
        break;
      }

LABEL_3:
      v6 = a3[1];
      v7 = a4;
      if (v8 >= v6)
      {
        goto LABEL_75;
      }
    }

    while (1)
    {
      v49 = v46 - 1;
      if (v46 >= 4)
      {
        v53 = &v47[16 * v46];
        v54 = *(v53 - 7) - *(v53 - 8);
        v52 = *(v53 - 5) - *(v53 - 6);
        v55 = &v9[16 * v46];
        v50 = *v55;
        v51 = *(v55 + 1);
        if (v52 - v50 + v51 >= v54)
        {
          v58 = v46 - 2;
          v57 = *&v47[16 * v49 + 8] - *&v47[16 * v49];
          goto LABEL_69;
        }
      }

      else
      {
        if (v46 != 3)
        {
          v56 = *&v9[16 * v46 + 8] - *&v9[16 * v46];
          v57 = *&v47[16 * v49 + 8] - *&v47[16 * v49];
LABEL_66:
          if (v57 < v56)
          {
            goto LABEL_3;
          }

          goto LABEL_71;
        }

        v50 = *(v9 + 6);
        v51 = *(v9 + 7);
        v52 = *(v9 + 5) - *(v9 + 4);
      }

      v56 = v51 - v50;
      v57 = *&v47[16 * v49 + 8] - *&v47[16 * v49];
      if (v56 + v57 < v52)
      {
        goto LABEL_66;
      }

      v58 = v46 - 2;
LABEL_69:
      if (v52 < v57)
      {
        v49 = v58;
      }

LABEL_71:
      v59 = &v47[16 * v49];
      v60 = *(v59 - 2);
      v61 = *(v59 + 1);
      sub_1AF7B8DD4((*a3 + 16 * v60), (*a3 + 16 * *v59), (*a3 + 16 * v61), v80);
      if (v5)
      {
      }

      *(v59 - 2) = v60;
      *(v59 - 1) = v61;
      v62 = *(v9 + 2);
      v46 = v62 - 1;
      memmove(&v47[16 * v49], v59 + 16, 16 * (v62 - 1 - v49));
      *(v9 + 2) = v62 - 1;
      if (v62 <= 2)
      {
        goto LABEL_3;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_75:
  v63 = *a1;
  v64 = v5;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1AF650C88(v9);
  }

  v65 = v9;
  v68 = *(v9 + 2);
  v66 = (v9 + 16);
  v67 = v68;
  if (v68 >= 2)
  {
    do
    {
      v69 = &v65[16 * v67];
      v70 = *v69;
      v71 = &v66[2 * v67];
      v72 = v71[1];
      sub_1AF7B8DD4((*a3 + 16 * *v69), (*a3 + 16 * *v71), (*a3 + 16 * v72), v63);
      if (v64)
      {
        break;
      }

      *v69 = v70;
      *(v69 + 1) = v72;
      v73 = *v66 - 1;
      memmove(&v66[2 * v67], v71 + 2, 16 * (*v66 - v67));
      *v66 = v73;
      v67 = v73;
    }

    while (v73 > 1);
  }
}

uint64_t sub_1AF7B8DD4(char *__dst, char *__src, char *a3, char *a4)
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

      v16 = *v4 == *v6 && *(v4 + 1) == *(v6 + 1);
      if (!v16 && (sub_1AFDFEE28() & 1) != 0)
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
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = *(v6 - 2) == v19 && *(v6 - 1) == v20;
      if (!v21 && (sub_1AFDFEE28() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1AF7B8FFC(uint64_t a1)
{
  sub_1AF6B740C(0, &qword_1EB63E690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AF7B9068(uint64_t a1)
{
  sub_1AF7B9154(0, &unk_1ED72DF20, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AF7B90F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AF7B9154(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1AF7B91EC()
{
  result = qword_1EB63EB48;
  if (!qword_1EB63EB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EB48);
  }

  return result;
}

unint64_t sub_1AF7B9244()
{
  result = qword_1EB63EB50;
  if (!qword_1EB63EB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EB50);
  }

  return result;
}

unint64_t sub_1AF7B929C()
{
  result = qword_1EB63EB58;
  if (!qword_1EB63EB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EB58);
  }

  return result;
}

unint64_t sub_1AF7B92F4()
{
  result = qword_1EB63EB60;
  if (!qword_1EB63EB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EB60);
  }

  return result;
}

unint64_t sub_1AF7B934C()
{
  result = qword_1EB63EB68;
  if (!qword_1EB63EB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EB68);
  }

  return result;
}

unint64_t sub_1AF7B93A4()
{
  result = qword_1EB63EB70;
  if (!qword_1EB63EB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EB70);
  }

  return result;
}

unint64_t sub_1AF7B93FC()
{
  result = qword_1EB63EB78;
  if (!qword_1EB63EB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EB78);
  }

  return result;
}

unint64_t sub_1AF7B9454()
{
  result = qword_1EB63EB80;
  if (!qword_1EB63EB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EB80);
  }

  return result;
}

unint64_t sub_1AF7B94AC()
{
  result = qword_1EB63EB88;
  if (!qword_1EB63EB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63EB88);
  }

  return result;
}

uint64_t sub_1AF7B9518(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 40);
    while (1)
    {
      v7 = *v6;
      v11[0] = *(v6 - 1);
      v11[1] = v7;

      v8 = a1(v11);

      if (v3)
      {
        break;
      }

      if (v8)
      {
        v9 = 1;
        return v9 & 1;
      }

      v6 += 2;
      if (!--v4)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1AF7B95C0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = (a3 + 64);
    do
    {
      v17 = v5;
      v7 = *(v6 - 4);
      v8 = *(v6 - 3);
      v9 = *(v6 - 2);
      v10 = *(v6 - 1);
      v11 = *v6;
      v16[0] = v7;
      v16[1] = v8;
      v16[2] = v9;
      v16[3] = v10;
      v16[4] = v11;
      sub_1AF687F90(v7, v8);
      v12 = v4;
      v13 = a1(v16);
      sub_1AF687FE4(v7, v8);
      if (v12)
      {
        break;
      }

      if (v13)
      {
        LOBYTE(v5) = 1;
        return v5 & 1;
      }

      v6 += 5;
      v5 = v17 - 1;
      v4 = 0;
    }

    while (v17 != 1);
  }

  return v5 & 1;
}

uint64_t sub_1AF7B96BC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 74);
    while (1)
    {
      v7 = *(v6 - 17);
      v8 = *(v6 - 5);
      v9 = *(v6 - 2);
      v10 = *v6;
      v14[0] = *(v6 - 21);
      v14[1] = v7;
      v15 = *(v6 - 13);
      v16 = v8;
      v17 = v9;
      v18 = v10;

      v11 = a1(v14);

      if (v3)
      {
        break;
      }

      if (v11)
      {
        v12 = 1;
        return v12 & 1;
      }

      v6 += 24;
      if (!--v4)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1AF7B97A4(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    while (1)
    {
      v10 = *v6;

      v7 = a1(&v10);

      if (v3)
      {
        break;
      }

      if (v7)
      {
        v8 = 1;
        return v8 & 1;
      }

      ++v6;
      if (!--v4)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1AF7B9844(uint64_t (*a1)(_OWORD *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    while (1)
    {
      v7 = v6[3];
      v8 = v6[5];
      v23 = v6[4];
      v24 = v8;
      v9 = v6[1];
      v19 = *v6;
      v20 = v9;
      v10 = v6[3];
      v12 = *v6;
      v11 = v6[1];
      v21 = v6[2];
      v22 = v10;
      v13 = v6[5];
      v17[4] = v23;
      v17[5] = v13;
      v17[0] = v12;
      v17[1] = v11;
      v25 = *(v6 + 96);
      v18 = *(v6 + 96);
      v17[2] = v21;
      v17[3] = v7;
      sub_1AF725E8C(v19, *(&v19 + 1), v20);
      v14 = a1(v17);
      sub_1AF7D4D70(&v19);
      if (v3)
      {
        break;
      }

      if (v14)
      {
        v15 = 1;
        return v15 & 1;
      }

      v6 += 7;
      if (!--v4)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1AF7B9934(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (!(a3 >> 62))
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_14:
    v10 = 0;
    return v10 & 1;
  }

  v6 = sub_1AFDFE108();
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_3:
  v7 = 0;
  while (1)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1B2719C70](v7, a3);
    }

    else
    {
      v8 = *(a3 + 8 * v7 + 32);
    }

    v12 = v8;
    v9 = a1(&v12);

    if (v3)
    {
      return v10 & 1;
    }

    if (v9)
    {
      v10 = 1;
      return v10 & 1;
    }

    if (v6 == ++v7)
    {
      goto LABEL_14;
    }
  }
}

char *sub_1AF7B9A38(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = 0;
  v4 = a1 + 80;
  v21 = -v2;
  v20 = MEMORY[0x1E69E7CC0];
  v19 = a1 + 80;
  do
  {
    for (i = v4 + 56 * v3++; ; i += 56)
    {
      v6 = *(a2 + 8);
      if (*(v6 + 16))
      {
        break;
      }

LABEL_4:
      ++v3;
      if (v21 + v3 == 1)
      {
        return v20;
      }
    }

    v7 = *(i - 32);
    v8 = *(i - 24);
    v9 = *(i - 40);
    v23 = *(i - 48);

    sub_1AF687F90(v7, v8);
    v10 = sub_1AF419914(v23, v9);
    if ((v11 & 1) == 0)
    {

      sub_1AF687FE4(v7, v8);
      goto LABEL_4;
    }

    v12 = (*(v6 + 56) + 16 * v10);
    v13 = *v12;
    v14 = v12[1];

    sub_1AF687FE4(v7, v8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1AF425958(0, *(v20 + 2) + 1, 1, v20);
    }

    v16 = *(v20 + 2);
    v15 = *(v20 + 3);
    if (v16 >= v15 >> 1)
    {
      v20 = sub_1AF425958(v15 > 1, v16 + 1, 1, v20);
    }

    *(v20 + 2) = v16 + 1;
    v17 = &v20[16 * v16];
    *(v17 + 4) = v13;
    *(v17 + 5) = v14;
    v4 = v19;
  }

  while (v21 + v3);
  return v20;
}

uint64_t sub_1AF7B9C28(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return v4;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1AFC075C8(0, v3, 0);
  v4 = v21;
  for (i = (a1 + 56); ; i += 4)
  {
    v7 = *(i - 2);
    v8 = *(i - 1);
    v9 = *i;
    v18[0] = *(i - 3);
    v18[1] = v7;
    v18[2] = v8;
    v18[3] = v9;

    sub_1AF7BE194(v18, v19);
    if (v2)
    {
      break;
    }

    v2 = 0;

    v10 = v19[0];
    v11 = v19[1];
    v12 = v20;
    v21 = v4;
    v14 = *(v4 + 16);
    v13 = *(v4 + 24);
    if (v14 >= v13 >> 1)
    {
      v17 = v20;
      sub_1AFC075C8(v13 > 1, v14 + 1, 1);
      v12 = v17;
      v4 = v21;
    }

    *(v4 + 16) = v14 + 1;
    v15 = v4 + 32 * v14;
    *(v15 + 32) = v10;
    *(v15 + 40) = v11;
    *(v15 + 48) = v12;
    if (!--v3)
    {
      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AF7B9D94(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1AFC07194(0, v2, 0);
    result = v8;
    v4 = (a1 + 32);
    v5 = *(v8 + 16);
    do
    {
      v6 = *v4;
      v9 = result;
      v7 = *(result + 24);
      if (v5 >= v7 >> 1)
      {
        sub_1AFC07194(v7 > 1, v5 + 1, 1);
        result = v9;
      }

      *(result + 16) = v5 + 1;
      *(result + 8 * v5 + 32) = v6;
      v4 += 7;
      ++v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1AF7B9E60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a2;
  sub_1AF7D8944();
  v24 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  while (v11)
  {
    v26 = v3;
    v14 = v13;
LABEL_9:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = v15 | (v14 << 6);
    v17 = *(a1 + 56);
    v18 = *(a1 + 48) + 8 * v16;
    v19 = *v18;
    v20 = *(v18 + 4);
    v21 = type metadata accessor for GraphScriptingConfig.ScriptInfo();
    sub_1AF7D4B24(v17 + *(*(v21 - 8) + 72) * v16, v8 + *(v24 + 48), type metadata accessor for GraphScriptingConfig.ScriptInfo);
    *v8 = v19;
    *(v8 + 4) = v20;
    v22 = v26;
    sub_1AF7C62D0(v8, v25);
    v3 = v22;
    sub_1AF7D48A0(v8, sub_1AF7D8944);
    if (v22)
    {
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (v13 + 1 >= v12)
    {
    }

    v11 = *(a1 + 8 * v13++ + 72);
    if (v11)
    {
      v26 = v3;
      v13 = v14;
      goto LABEL_9;
    }
  }
}

unint64_t sub_1AF7BA018(unint64_t result, void *a2)
{
  v3 = result;
  v39[1] = *MEMORY[0x1E69E9840];
  if (result >> 62)
  {
    result = sub_1AFDFE108();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  v5 = 0;
  v6 = v3 & 0xC000000000000001;
  v33 = a2;
  v34 = v4;
  v35 = v3;
  v37 = v3 & 0xC000000000000001;
  while (1)
  {
    if (v6)
    {
      v7 = MEMORY[0x1B2719C70](v5, v3);
    }

    else
    {
      v7 = *(v3 + 8 * v5 + 32);
    }

    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      goto LABEL_4;
    }

    if (*Strong != _TtCO3VFX21GraphV1CodeGeneration12ContextEntry)
    {

LABEL_4:

      goto LABEL_5;
    }

    v9 = *(Strong + 16);
    if (!v9)
    {

      v6 = v37;
      goto LABEL_5;
    }

    v10 = *(v9 + 32);
    v11 = ((1 << v10) + 63) >> 6;
    v12 = 8 * v11;
    if ((v10 & 0x3Fu) <= 0xD)
    {

      goto LABEL_13;
    }

    swift_bridgeObjectRetain_n();

    if (swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v12 = swift_slowAlloc();
    v31 = v38;
    v32 = sub_1AF76EC5C(v12, v11, v9);
    if (v31)
    {
      goto LABEL_40;
    }

    v17 = v32;
    MEMORY[0x1B271DEA0](v12, -1, -1);
LABEL_15:

    v18 = sub_1AF7615AC(v17);

    if (*(v18 + 16))
    {
      sub_1AF7D8BC0(0, &qword_1EB63F4E0, &_s8MetadataVN, MEMORY[0x1E69E6EC8]);
      v19 = sub_1AFDFE5C8();
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC8];
    }

    v39[0] = v19;
    sub_1AF76E344(v18, 1, v39);
    v38 = 0;

    v20 = v39[0];
    if (*(v39[0] + 16))
    {
      v21 = *(v7 + 40);
      v22 = *(v7 + 48);
      _s11MetadataSetCMa();
      v36 = swift_allocObject();
      *(v36 + 16) = v20;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39[0] = *a2;
      v24 = v39[0];
      *a2 = 0x8000000000000000;
      v25 = sub_1AF419914(v21, v22);
      v12 = v26;
      v27 = *(v24 + 16) + ((v26 & 1) == 0);
      if (*(v24 + 24) >= v27)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1AF84C5C4();
        }
      }

      else
      {
        sub_1AF837210(v27, isUniquelyReferenced_nonNull_native);
        v28 = sub_1AF419914(v21, v22);
        if ((v12 & 1) != (v29 & 1))
        {
          goto LABEL_39;
        }

        v25 = v28;
      }

      v30 = v39[0];
      if (v12)
      {
        *(*(v39[0] + 56) + 8 * v25) = v36;
      }

      else
      {
        sub_1AF85B958(v25, v21, v22, v36, v39[0]);
      }

      v6 = v37;
      a2 = v33;
      *v33 = v30;

      v4 = v34;
      v3 = v35;
    }

    else
    {

      v4 = v34;
      v3 = v35;
      v6 = v37;
    }

LABEL_5:
    if (v4 == ++v5)
    {
      return result;
    }
  }

LABEL_13:
  MEMORY[0x1EEE9AC00](v13, v14);
  bzero(&v33 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v12);
  v15 = v38;
  v16 = sub_1AF76E8B0((&v33 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0)), v11, v9);
  if (!v15)
  {
    v17 = v16;
    goto LABEL_15;
  }

  swift_willThrow();
  __break(1u);
  swift_unexpectedError();
  __break(1u);
LABEL_39:
  sub_1AFDFF1A8();
  __break(1u);
LABEL_40:
  result = MEMORY[0x1B271DEA0](v12, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1AF7BA4D0(uint64_t result, char **a2)
{
  v29 = *(result + 16);
  if (v29)
  {
    v2 = 0;
    v28 = result + 32;
    do
    {
      v4 = (v28 + (v2 << 6));
      v5 = v4[3];
      v42 = v4[2];
      v43 = v5;
      v6 = v4[1];
      v40 = *v4;
      v41 = v6;
      v31 = v2;
      v32 = *a2;
      v7 = *(*a2 + 2);
      if (v7)
      {
        v8 = *(&v40 + 1);
        v44 = v40;
        v37 = *(&v41 + 1);
        v38 = v41;
        v35 = *(&v42 + 1);
        v36 = v42;
        v9 = (v32 + 48);
        v33 = *(&v43 + 1);
        v34 = v43;
        while (1)
        {
          result = *(v9 - 2);
          v10 = *v9;
          v11 = v9[1];
          v13 = v9[2];
          v12 = v9[3];
          v14 = v9[4];
          v15 = v9[5];
          v16 = result == v44 && *(v9 - 1) == v8;
          if (v16 || (result = sub_1AFDFEE28(), (result & 1) != 0))
          {
            v17 = v10 == v38 && v11 == v37;
            if (v17 || (result = sub_1AFDFEE28(), (result & 1) != 0))
            {
              v18 = v13 == v36 && v12 == v35;
              if (v18 || (result = sub_1AFDFEE28(), (result & 1) != 0))
              {
                if (v14 == v34 && v15 == v33)
                {
                  break;
                }

                result = sub_1AFDFEE28();
                if (result)
                {
                  break;
                }
              }
            }
          }

          v9 += 8;
          if (!--v7)
          {
            goto LABEL_29;
          }
        }

        v3 = v31;
      }

      else
      {
LABEL_29:
        sub_1AF7613E4(&v40, v39);
        sub_1AF7613E4(&v40, v39);
        v20 = v32;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v20 = sub_1AF424EC0(0, *(v32 + 2) + 1, 1, v32);
          *a2 = v20;
        }

        v23 = *(v20 + 2);
        v22 = *(v20 + 3);
        if (v23 >= v22 >> 1)
        {
          v20 = sub_1AF424EC0(v22 > 1, v23 + 1, 1, v20);
          *a2 = v20;
        }

        v3 = v31;
        *(v20 + 2) = v23 + 1;
        v24 = &v20[64 * v23];
        v25 = v40;
        v26 = v41;
        v27 = v43;
        *(v24 + 4) = v42;
        *(v24 + 5) = v27;
        *(v24 + 2) = v25;
        *(v24 + 3) = v26;
        result = sub_1AF761440(&v40);
      }

      v2 = v3 + 1;
    }

    while (v2 != v29);
  }

  return result;
}

unint64_t sub_1AF7BA714(unint64_t result, unsigned __int8 a2, char **a3, uint64_t *a4)
{
  v5 = *(result + 16);
  if (v5)
  {
    for (i = (result + 64); ; i += 40)
    {
      v10 = *(i - 4);
      v11 = *(i - 24);
      v12 = *i;
      v14 = v10;
      v15 = v11;
      v16 = *(i - 1);
      v13 = v16;
      v17 = v12;
      sub_1AF443EE0(v10);
      sub_1AF444224(v13);
      sub_1AF7BCA30(&v14, a2, a3, a4);
      sub_1AF443F24(v10);
      if (v4)
      {
        break;
      }

      result = sub_1AF444AF4(v13);
      if (!--v5)
      {
        return result;
      }
    }

    return sub_1AF444AF4(v13);
  }

  return result;
}

uint64_t sub_1AF7BA7F0(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, uint64_t, uint64_t))
{
  v5 = *(result + 16);
  if (v5)
  {
    for (i = result + 32; ; i += 56)
    {
      v10 = *(i + 16);
      v21[0] = *i;
      v21[1] = v10;
      v12 = *i;
      v11 = *(i + 16);
      v21[2] = *(i + 32);
      v22 = *(i + 48);
      v17 = v12;
      v18 = v11;
      v19 = *(i + 32);
      v20 = *(i + 48);
      sub_1AF7D4D04(v21, &v13);
      a4(&v17, a2, a3);
      if (v4)
      {
        break;
      }

      v13 = v17;
      v14 = v18;
      v15 = v19;
      v16 = v20;
      result = sub_1AF7D4D3C(&v13);
      if (!--v5)
      {
        return result;
      }
    }

    v13 = v17;
    v14 = v18;
    v15 = v19;
    v16 = v20;
    return sub_1AF7D4D3C(&v13);
  }

  return result;
}

uint64_t sub_1AF7BA8F0(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v31 = MEMORY[0x1E69E7CC8];
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (!v5)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_5:
    while (1)
    {
      v8 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v9 = v8 | (v7 << 6);
      v10 = (*(a1 + 56) + 16 * v9);
      v11 = v10[1];
      if (v11)
      {
        break;
      }

      if (!v5)
      {
        goto LABEL_7;
      }
    }

    v13 = (*(a1 + 48) + 16 * v9);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(v2 + 16);
    v30 = *v10;
    if (*(v2 + 24) <= v16)
    {

      sub_1AF83603C(v16 + 1, 1);
      v2 = v31;
    }

    else
    {
    }

    sub_1AFDFF288();
    sub_1AFDFD038();
    v17 = sub_1AFDFF2F8();
    v18 = v2 + 64;
    v19 = -1 << *(v2 + 32);
    v20 = v17 & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v2 + 64 + 8 * (v20 >> 6))) != 0)
    {
      v22 = __clz(__rbit64((-1 << v20) & ~*(v2 + 64 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
      v23 = v30;
    }

    else
    {
      v24 = (63 - v19) >> 6;
      v23 = v30;
      do
      {
        if (v21 + 1 == v24)
        {
          v21 = 0;
        }

        else
        {
          ++v21;
        }

        v25 = *(v18 + 8 * v21);
      }

      while (v25 == -1);
      v22 = __clz(__rbit64(~v25)) + (v21 << 6);
    }

    *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v26 = 16 * v22;
    v27 = (*(v2 + 48) + v26);
    *v27 = v14;
    v27[1] = v15;
    v28 = (*(v2 + 56) + v26);
    *v28 = v23;
    v28[1] = v11;
    ++*(v2 + 16);
  }

  while (v5);
LABEL_7:
  while (1)
  {
    v12 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      break;
    }

    v5 = *(a1 + 8 * v7++ + 72);
    if (v5)
    {
      v7 = v12;
      goto LABEL_5;
    }
  }

  return v2;
}

uint64_t sub_1AF7BAB38(uint64_t a1)
{
  v2 = sub_1AF7DACDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF7BAB74(uint64_t a1)
{
  v2 = sub_1AF7DACDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF7BABB0(void *a1)
{
  sub_1AF7DB68C(0, &qword_1EB63EC80, sub_1AF7DACDC, &type metadata for CodeGenerationInitialized.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AF7DACDC();
  sub_1AFDFF3F8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1AF7BACF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  sub_1AF7DB68C(0, &qword_1EB63EC60, sub_1AF7DA9D0, &type metadata for GraphEntityComponentPropertyReferences.DirectPropertyAssignment.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF7DA9D0();
  sub_1AFDFF3F8();
  v18 = 0;
  v11 = v15;
  sub_1AFDFE8B8();
  if (!v11)
  {
    v16 = v14;
    v17 = 1;
    sub_1AF7DB7D4(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1AF7DABB0(&qword_1EB639870);
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AF7BAEF8(uint64_t a1)
{
  v2 = sub_1AF7DA9D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF7BAF34(uint64_t a1)
{
  v2 = sub_1AF7DA9D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF7BAF70@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF7CF04C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1AF7BAFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[3] = &type metadata for Entity;
  v13[4] = &off_1F2535EA8;
  v13[0] = a3;
  v8 = sub_1AF441150(v13, &type metadata for Entity);
  v12[3] = &type metadata for Entity;
  v12[4] = &off_1F2535EA8;
  v9 = sub_1AF585714(v12);
  *v9 = sub_1AF6C97E0(*v8);
  sub_1AF5C5358(0, &qword_1ED722510);
  swift_dynamicCast();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v13);
  v10 = v13[5];

  sub_1AF8A057C(a1, a2, a5);
  return v10;
}

uint64_t sub_1AF7BB0B4(void *a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v17 = a3;
  v16 = a4;
  v4 = a2;
  v6 = HIDWORD(a2);
  sub_1AF7DB68C(0, &qword_1EB63EC50, sub_1AF7DAA24, &type metadata for GraphEntityComponentPropertyReferences.ExportedDirectPropertyAssignment.CodingKeys, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v15 - v11;
  sub_1AF441150(a1, a1[3]);
  sub_1AF7DAA24();
  sub_1AFDFF3F8();
  v19 = __PAIR64__(v6, v4);
  v20 = v17;
  v21 = 0;
  sub_1AF47F894();
  v13 = v18;
  sub_1AFDFE918();
  if (!v13)
  {
    v19 = v16;
    v21 = 1;
    sub_1AF7DB7D4(0, &qword_1EB633C60, &type metadata for EntityComponentProperty, MEMORY[0x1E69E62F8]);
    sub_1AF7DAB14();
    sub_1AFDFE918();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1AF7BB2B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x73746567726174;
  }

  else
  {
    v3 = 0x656372756F73;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x73746567726174;
  }

  else
  {
    v5 = 0x656372756F73;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
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

uint64_t sub_1AF7BB358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v6 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73746567726174 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();

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

uint64_t sub_1AF7BB430(uint64_t a1)
{
  v2 = sub_1AF7DAA24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF7BB46C(uint64_t a1)
{
  v2 = sub_1AF7DAA24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF7BB4A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF7CEDEC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1AF7BB4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1AF7BAFC0(a1, a2, *v3, v3[1], v3[2]);
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  return result;
}

uint64_t sub_1AF7BB534(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_unknownObjectRetain();
  v6 = sub_1AF7C7B74(v5, a1, a2);

  swift_unknownObjectRelease();
  *v2 = v6;
  v7 = v2[1];
  swift_unknownObjectRetain();
  v50 = a2;
  v8 = sub_1AF7C7D74(v7, a1, a2);

  v9 = a1;
  swift_unknownObjectRelease();
  v2[1] = v8;
  v10 = v2[6];
  v11 = *(v10 + 16);
  if (v11)
  {
    v42 = v2;
    v52 = MEMORY[0x1E69E7CC0];
    sub_1AFC07254(0, v11, 0);
    v12 = v52;
    v13 = v9;
    ObjectType = swift_getObjectType();
    v14 = 0;
    v43 = v11;
    v44 = v10 + 32;
    do
    {
      v15 = (v44 + 24 * v14);
      v16 = *v15;
      v17 = v15[1];
      v18 = *(v15 + 2);
      v48 = *(v15 + 1);

      v19 = sub_1AF62C7C0(v16 | (v17 << 32), 0, ObjectType, v50);
      if (v20)
      {
        v21 = v16;
      }

      else
      {
        v21 = v19;
      }

      v22 = v18;
      v47 = v21;
      if ((v20 & 1) == 0)
      {
        LODWORD(v17) = HIDWORD(v19);
      }

      v23 = *(v18 + 16);
      if (v23)
      {
        v45 = v17;
        v46 = v14;
        v51 = MEMORY[0x1E69E7CC0];
        sub_1AFC07274(0, v23, 0);
        v24 = v51;
        v25 = (v22 + 40);
        do
        {
          v26 = *(v25 - 2);
          v27 = *(v25 - 1);
          v28 = *v25;

          v29 = sub_1AF62C7C0(v26 | (v27 << 32), 0, ObjectType, v50);
          if (v30)
          {
            v31 = v26;
          }

          else
          {
            v31 = v29;
          }

          if (v30)
          {
            v32 = v27;
          }

          else
          {
            v32 = HIDWORD(v29);
          }

          v34 = *(v51 + 16);
          v33 = *(v51 + 24);
          if (v34 >= v33 >> 1)
          {
            sub_1AFC07274(v33 > 1, v34 + 1, 1);
          }

          *(v51 + 16) = v34 + 1;
          v35 = v51 + 16 * v34;
          *(v35 + 32) = v31;
          *(v35 + 36) = v32;
          *(v35 + 40) = v28;
          v25 += 2;
          --v23;
        }

        while (v23);

        v11 = v43;
        v14 = v46;
        LODWORD(v17) = v45;
      }

      else
      {

        v24 = MEMORY[0x1E69E7CC0];
      }

      v37 = *(v52 + 16);
      v36 = *(v52 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1AFC07254(v36 > 1, v37 + 1, 1);
      }

      ++v14;
      *(v52 + 16) = v37 + 1;
      v38 = v52 + 24 * v37;
      *(v38 + 32) = v47;
      *(v38 + 36) = v17;
      *(v38 + 40) = v48;
      *(v38 + 48) = v24;
    }

    while (v14 != v11);
    v9 = v13;

    v2 = v42;
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  v2[6] = v12;
  v39 = v2[4];
  swift_unknownObjectRetain();
  v40 = sub_1AF7C7D74(v39, v9, v50);

  result = swift_unknownObjectRelease();
  v2[4] = v40;
  return result;
}

unint64_t sub_1AF7BB860(char a1)
{
  result = 1953522533;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000022;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
    case 5:
      result = 0xD000000000000021;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 6:
      return result;
    case 7:
      result = 0x7469706365;
      break;
    case 8:
      result = 1953063792;
      break;
    case 9:
      result = 0x7469636370;
      break;
    case 10:
      result = 6385764;
      break;
    case 11:
      result = 1634755685;
      break;
    case 12:
      result = 0x7469647065;
      break;
    default:
      result = 0xD00000000000001CLL;
      break;
  }

  return result;
}

uint64_t sub_1AF7BB994(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1AF7BB860(*a1);
  v5 = v4;
  if (v3 == sub_1AF7BB860(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF7BBA1C()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AF7BB860(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF7BBA80()
{
  sub_1AF7BB860(*v0);
  sub_1AFDFD038();
}

uint64_t sub_1AF7BBAD4()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AF7BB860(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF7BBB34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF7C840C();
  *a1 = result;
  return result;
}

unint64_t sub_1AF7BBB64@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1AF7BB860(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AF7BBBAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF7C840C();
  *a1 = result;
  return result;
}

uint64_t sub_1AF7BBBE0(uint64_t a1)
{
  v2 = sub_1AF7D4DC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF7BBC1C(uint64_t a1)
{
  v2 = sub_1AF7D4DC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF7BBC58(void *a1)
{
  v3 = v1;
  sub_1AF7DB68C(0, &qword_1EB63EBB0, sub_1AF7D4DC4, &type metadata for GraphEntityComponentPropertyReferences.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF7D4DC4();
  sub_1AFDFF3F8();
  if (!*(*v3 + 16) || (v15 = *v3, v14 = 6, sub_1AF7D5530(0, &qword_1EB6342C0, sub_1AF47F798, sub_1AF47F894), sub_1AF7D55DC(), sub_1AFDFE918(), !v2))
  {
    if (!*(v3[1] + 16) || (v15 = v3[1], v14 = 7, sub_1AF7D5530(0, &qword_1EB6342C0, sub_1AF47F798, sub_1AF47F894), sub_1AF7D55DC(), sub_1AFDFE918(), !v2))
    {
      if (!*(v3[2] + 16) || (v15 = v3[2], v14 = 8, sub_1AF7D5530(0, &qword_1EB6342E0, sub_1AF648860, sub_1AF6488B4), sub_1AF7D566C(), sub_1AFDFE918(), !v2))
      {
        if (!*(v3[3] + 16) || (v15 = v3[3], v14 = 9, sub_1AF7D5530(0, &qword_1EB6342E0, sub_1AF648860, sub_1AF6488B4), sub_1AF7D566C(), sub_1AFDFE918(), !v2))
        {
          v11 = v3[5];
          if (!v11 || !*(v11 + 16) || (v15 = v3[5], v14 = 10, sub_1AF7D5120(0, &qword_1EB633C30, &qword_1EB633C40, &type metadata for GraphEntityComponentPropertyReferences.DirectPropertyAssignment, MEMORY[0x1E69E62F8]), sub_1AF7D5888(&qword_1EB63EBE0, sub_1AF7D5920), sub_1AFDFE918(), !v2))
          {
            if (!*(v3[6] + 16) || (v15 = v3[6], v14 = 11, sub_1AF7DB7D4(0, &qword_1EB633C50, &type metadata for GraphEntityComponentPropertyReferences.ExportedDirectPropertyAssignment, MEMORY[0x1E69E62F8]), sub_1AF7D56FC(), sub_1AFDFE918(), !v2))
            {
              if (*(v3[4] + 16))
              {
                v15 = v3[4];
                v14 = 12;
                sub_1AF7D8BC0(0, &qword_1EB633C98, &type metadata for EntityComponentProperty, MEMORY[0x1E69E5E28]);
                sub_1AF7D57EC(&qword_1EB63EBD8, sub_1AF47F894);
                sub_1AFDFE918();
              }
            }
          }
        }
      }
    }
  }

  return (*(v7 + 8))(v10, v6);
}

double sub_1AF7BC194@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF7CF2BC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_1AF7BC1FC()
{

  *v0 = MEMORY[0x1E69E7CC8];

  v0[5] = 0;
  return result;
}

void *sub_1AF7BC230@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1AF42CD8C(MEMORY[0x1E69E7CC0]);
  v4 = sub_1AF42CD8C(v2);
  v5 = sub_1AF42D848(v2);
  v6 = sub_1AF42D848(v2);
  result = sub_1AF42CD8C(v2);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = result;
  *(a1 + 40) = 0;
  *(a1 + 48) = v2;
  *(a1 + 56) = 1;
  return result;
}

uint64_t sub_1AF7BC2B8()
{
  sub_1AFDFD038();
  sub_1AFDFD038();
  if (*(v0 + 40))
  {
    sub_1AFDFF2A8();
    sub_1AFDFD038();
    if (*(v0 + 56))
    {
LABEL_3:
      sub_1AFDFF2A8();
      sub_1AFDFD038();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1AFDFF2A8();
    if (*(v0 + 56))
    {
      goto LABEL_3;
    }
  }

  sub_1AFDFF2A8();
LABEL_6:
  if (*(v0 + 68) == 1)
  {
    return sub_1AFDFF2A8();
  }

  sub_1AFDFF2A8();
  return sub_1AFDFF2C8();
}

uint64_t sub_1AF7BC388()
{
  sub_1AFDFF288();
  sub_1AF7BC2B8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF7BC3CC()
{
  sub_1AFDFF288();
  sub_1AF7BC2B8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF7BC408(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  if (*(a1 + 68))
  {
    v2 = 0;
  }

  return (*(a2 + 64) > v2) & ~*(a2 + 68);
}

uint64_t sub_1AF7BC430(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  if (*(a2 + 68))
  {
    v2 = 0;
  }

  return *(a1 + 68) & 1 | (*(a1 + 64) <= v2);
}

uint64_t sub_1AF7BC45C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  if (*(a1 + 68))
  {
    v2 = 0;
  }

  return *(a2 + 68) & 1 | (*(a2 + 64) <= v2);
}

uint64_t sub_1AF7BC488(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  if (*(a2 + 68))
  {
    v2 = 0;
  }

  return (*(a1 + 64) > v2) & ~*(a1 + 68);
}

uint64_t sub_1AF7BC4B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v8[0] = v2;
  *(v8 + 13) = *(a1 + 61);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v10[0] = v4;
  *(v10 + 13) = *(a2 + 61);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1AF7C7698(v7, v9) & 1;
}

void *sub_1AF7BC50C@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1AF42D5B4(MEMORY[0x1E69E7CC0]);
  result = sub_1AF42D5E0(v2);
  *a1 = v3;
  a1[1] = result;
  return result;
}

uint64_t sub_1AF7BC554()
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF7BC5C0()
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF7BC610@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1AFDFE638();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1AF7BC698@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1AFDFE638();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1AF7BC6F0(uint64_t a1)
{
  v2 = sub_1AF7DAC88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF7BC72C(uint64_t a1)
{
  v2 = sub_1AF7DAC88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF7BC768(void *a1, uint64_t a2)
{
  sub_1AF7DB68C(0, &qword_1EB63EC78, sub_1AF7DAC88, &type metadata for CodeGenerationComponent.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF7DAC88();
  sub_1AFDFF3F8();
  if (!a2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11[1] = a2;
  _s7ContextCMa();
  sub_1AF7D5048(&qword_1EB63E8C8, _s7ContextCMa);

  sub_1AFDFE918();
  (*(v6 + 8))(v9, v5);
}

void *sub_1AF7BC94C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1AF7CEB88(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1AF7BC994(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  result = (*(a2 + 32))(ObjectType, a2);
  if (result)
  {
    v7 = *v2;
    if (*v3)
    {
      v8 = (*(*v7 + 2512))();
    }

    else
    {
      v8 = 0;
    }

    *v3 = v8;
  }

  return result;
}

uint64_t sub_1AF7BCA30(unint64_t *a1, unsigned __int8 a2, char **a3, uint64_t *a4)
{
  v6 = *a1;
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v18 = ((v6 >> 59) & 0x1E | (v6 >> 2) & 1) == 16;
      v19 = v6 == 0x8000000000000000;
      v10 = v18 && v19;
      if (v18 && v19)
      {
        v20 = 0xD000000000000027;
      }

      else
      {
        v20 = 0xD00000000000001ELL;
      }

      if (v18 && v19)
      {
        v21 = "constant uint32_t& currentSeed";
      }

      else
      {
        v21 = "const void* scriptContext";
      }
    }

    else
    {
      if (a2 != 3)
      {
        result = sub_1AFDFE518();
        __break(1u);
        return result;
      }

      v22 = ((v6 >> 59) & 0x1E | (v6 >> 2) & 1) == 16;
      v23 = v6 == 0x8000000000000000;
      v21 = "_ currentSeed: UInt32";
      v10 = v22 && v23;
      if (v22 && v23)
      {
        v20 = 0xD000000000000021;
      }

      else
      {
        v20 = 0xD000000000000015;
      }

      if (!v22 || !v23)
      {
        v21 = "onstants& scriptContext";
      }
    }

    v24 = v21 | 0x8000000000000000;
    v25 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_1AF420554(0, *(v25 + 2) + 1, 1, v25);
      *a3 = v25;
    }

    v28 = *(v25 + 2);
    v27 = *(v25 + 3);
    v29 = v28 + 1;
    if (v28 >= v27 >> 1)
    {
      v38 = sub_1AF420554(v27 > 1, v28 + 1, 1, v25);
      v29 = v28 + 1;
      v25 = v38;
      *a3 = v38;
    }

    *(v25 + 2) = v29;
    v30 = &v25[16 * v28];
    *(v30 + 4) = v20;
    *(v30 + 5) = v24;
  }

  else
  {
    v7 = ((v6 >> 59) & 0x1E | (v6 >> 2) & 1) == 16;
    v8 = v6 == 0x8000000000000000;
    v9 = "uint32_t currentSeed";
    v10 = v7 && v8;
    if (v7 && v8)
    {
      v11 = 0xD000000000000019;
    }

    else
    {
      v11 = 0xD000000000000014;
    }

    if (!v7 || !v8)
    {
      v9 = "nd unsupported base object: ";
    }

    v12 = v9 | 0x8000000000000000;
    v13 = *a3;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v13;
    if ((v14 & 1) == 0)
    {
      v13 = sub_1AF420554(0, *(v13 + 2) + 1, 1, v13);
      *a3 = v13;
    }

    v16 = *(v13 + 2);
    v15 = *(v13 + 3);
    if (v16 >= v15 >> 1)
    {
      v13 = sub_1AF420554(v15 > 1, v16 + 1, 1, v13);
      *a3 = v13;
    }

    *(v13 + 2) = v16 + 1;
    v17 = &v13[16 * v16];
    *(v17 + 4) = v11;
    *(v17 + 5) = v12;
  }

  if (v10)
  {
    v31 = 0x6F43747069726373;
  }

  else
  {
    v31 = 0x53746E6572727563;
  }

  if (v10)
  {
    v32 = 0xED0000747865746ELL;
  }

  else
  {
    v32 = 0xEB00000000646565;
  }

  v33 = *a4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v33;
  if ((result & 1) == 0)
  {
    result = sub_1AF420554(0, *(v33 + 16) + 1, 1, v33);
    v33 = result;
    *a4 = result;
  }

  v36 = *(v33 + 16);
  v35 = *(v33 + 24);
  if (v36 >= v35 >> 1)
  {
    result = sub_1AF420554(v35 > 1, v36 + 1, 1, v33);
    v33 = result;
    *a4 = result;
  }

  *(v33 + 16) = v36 + 1;
  v37 = v33 + 16 * v36;
  *(v37 + 32) = v31;
  *(v37 + 40) = v32;
  return result;
}

uint64_t sub_1AF7BCDA8()
{
  sub_1AF7DB7D4(0, &unk_1EB633A78, &type metadata for ComponentProperty, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE77490;
  v1 = sub_1AFDFDE28();
  v5 = sub_1AF578F80(v1, v2, v3, v4);

  *(v0 + 32) = v5;
  v6 = sub_1AFDFDE28();
  v10 = sub_1AF578FA4(v6, v7, v8, v9);

  *(v0 + 40) = v10;
  v11 = sub_1AFDFDE28();
  v15 = sub_1AF578DAC(v11, v12, v13, v14);

  *(v0 + 48) = v15;
  v16 = sub_1AFDFDE28();
  v20 = sub_1AF578F14(v16, v17, v18, v19);

  *(v0 + 56) = v20;
  v21 = sub_1AFDFDE28();
  v25 = sub_1AF578F38(v21, v22, v23, v24);

  *(v0 + 64) = v25;
  v26 = sub_1AFDFDE28();
  v30 = sub_1AF578F5C(v26, v27, v28, v29);

  *(v0 + 72) = v30;
  v31 = sub_1AFDFDE28();
  v35 = sub_1AF578EF0(v31, v32, v33, v34);

  *(v0 + 80) = v35;
  v36 = sub_1AFDFDE28();
  v40 = sub_1AF578CD4(v36, v37, v38, v39);

  *(v0 + 88) = v40;
  v41 = sub_1AFDFDE28();
  v45 = sub_1AF578D40(v41, v42, v43, v44);

  *(v0 + 96) = v45;
  v46 = sub_1AFDFDE28();
  v50 = sub_1AF578EA8(v46, v47, v48, v49);

  *(v0 + 104) = v50;
  v51 = sub_1AFDFDE28();
  v55 = sub_1AF578CB0(v51, v52, v53, v54);

  *(v0 + 112) = v55;
  v56 = sub_1AFDFDE28();
  v60 = sub_1AF578E84(v56, v57, v58, v59);

  *(v0 + 120) = v60;
  v61 = sub_1AFDFDE28();
  v65 = sub_1AF578D64(v61, v62, v63, v64);

  *(v0 + 128) = v65;
  v66 = sub_1AFDFDE28();
  v70 = sub_1AF578CF8(v66, v67, v68, v69);

  *(v0 + 136) = v70;
  v71 = sub_1AFDFDE28();
  v75 = sub_1AF578DF4(v71, v72, v73, v74);

  *(v0 + 144) = v75;
  v76 = sub_1AFDFDE28();
  v80 = sub_1AF578ECC(v76, v77, v78, v79);

  *(v0 + 152) = v80;
  v81 = sub_1AFDFDE28();
  v85 = sub_1AF578D88(v81, v82, v83, v84);

  *(v0 + 160) = v85;
  v86 = sub_1AFDFDE28();
  v90 = sub_1AF578FC8(v86, v87, v88, v89);

  *(v0 + 168) = v90;
  v91 = sub_1AFDFDE28();
  v95 = sub_1AF578FEC(v91, v92, v93, v94);

  *(v0 + 176) = v95;
  v96 = sub_1AFDFDE28();
  v100 = sub_1AF579010(v96, v97, v98, v99);

  *(v0 + 184) = v100;
  v101 = sub_1AFDFDE28();
  v105 = sub_1AF579034(v101, v102, v103, v104);

  *(v0 + 192) = v105;
  v106 = sub_1AFDFDE28();
  v110 = sub_1AF578E3C(v106, v107, v108, v109);

  *(v0 + 200) = v110;
  v111 = sub_1AFDFDE28();
  v115 = sub_1AF578E18(v111, v112, v113, v114);

  *(v0 + 208) = v115;
  v116 = sub_1AFDFDE28();
  v120 = sub_1AF578DD0(v116, v117, v118, v119);

  *(v0 + 216) = v120;
  v121 = sub_1AFDFDE28();
  v125 = sub_1AF578D1C(v121, v122, v123, v124);

  *(v0 + 224) = v125;
  qword_1EB6C2AD0 = v0;
  return result;
}

uint64_t sub_1AF7BD2C8()
{
  sub_1AF7DB7D4(0, &unk_1EB633A78, &type metadata for ComponentProperty, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE431C0;
  v1 = sub_1AFDFDE28();
  v5 = sub_1AF578E60(v1, v2, v3, v4);

  *(v0 + 32) = v5;
  qword_1EB6C2900 = v0;
  return result;
}

double sub_1AF7BD36C()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED73B840;
  v4 = 0;
  v5 = 2;
  v6 = 0;
  v7 = 2;
  v8 = 0;

  sub_1AF704D30(1, v1);

  result = *v1;
  xmmword_1EB6C31E0 = v1[0];
  *&qword_1EB6C31F0 = v1[1];
  qword_1EB6C3200 = v2;
  return result;
}

uint64_t sub_1AF7BD41C()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED73B840;
  v8 = 0;
  v9 = 2;
  v10 = 0;
  v11 = 2;
  v12 = 0;

  sub_1AF704D30(1, &v1);

  qword_1ED73B628 = v1;
  dword_1ED73B630 = v2;
  byte_1ED73B634 = v3;
  qword_1ED73B638 = v4 | 1;
  byte_1ED73B640 = v5;
  qword_1ED73B648 = v6;
  return result;
}

uint64_t sub_1AF7BD4F0()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED73B840;
  v8 = 0;
  v9 = 2;
  v10 = 0;
  v11 = 2;
  v12 = 0;

  sub_1AF704D44(1, &v1);

  *&xmmword_1ED73B428 = v1;
  DWORD2(xmmword_1ED73B428) = v2;
  BYTE12(xmmword_1ED73B428) = v3;
  qword_1ED73B438 = v4 | 1;
  byte_1ED73B440 = v5;
  qword_1ED73B448 = v6;
  return result;
}

uint64_t sub_1AF7BD5C4()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED73B840;
  v8 = 0;
  v9 = 2;
  v10 = 0;
  v11 = 2;
  v12 = 0;

  sub_1AF702F78(3, &v1);

  *&xmmword_1ED73B650 = v1;
  DWORD2(xmmword_1ED73B650) = v2;
  BYTE12(xmmword_1ED73B650) = v3;
  qword_1ED73B660 = v4 | 1;
  byte_1ED73B668 = v5;
  qword_1ED73B670 = v6;
  return result;
}

double sub_1AF7BD698()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED73B840;
  v4 = 0;
  v5 = 2;
  v6 = 0;
  v7 = 2;
  v8 = 0;

  sub_1AF70337C(3, v1);

  result = *v1;
  xmmword_1ED73B678 = v1[0];
  unk_1ED73B688 = v1[1];
  qword_1ED73B698 = v2;
  return result;
}

void sub_1AF7BD748(uint64_t a1)
{
  if (qword_1EB637178 != -1)
  {
    swift_once();
  }

  v2 = xmmword_1EB6C31E0;
  v3 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v4 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v3 + 40));
  sub_1AF6B1714(a1, v2);

  sub_1AF6B1B20(a1, v4, v2);
  os_unfair_lock_unlock(*(v3 + 40));
  if (qword_1ED7290B0 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED73B628;
  swift_getObjectType();
  v6 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v3 + 40));
  sub_1AF6B1714(a1, v5);

  sub_1AF6B1B20(a1, v6, v5);
  os_unfair_lock_unlock(*(v3 + 40));
  if (qword_1ED725248 != -1)
  {
    swift_once();
  }

  v7 = xmmword_1ED73B428;
  swift_getObjectType();
  v8 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v3 + 40));
  sub_1AF6B1714(a1, v7);

  sub_1AF6B1B20(a1, v8, v7);
  os_unfair_lock_unlock(*(v3 + 40));
  if (qword_1ED7290C0 != -1)
  {
    swift_once();
  }

  v9 = xmmword_1ED73B650;
  swift_getObjectType();
  v10 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v3 + 40));
  sub_1AF6B1714(a1, v9);

  sub_1AF6B1B20(a1, v10, v9);
  os_unfair_lock_unlock(*(v3 + 40));
  if (qword_1ED7290C8 != -1)
  {
    swift_once();
  }

  v11 = xmmword_1ED73B678;
  swift_getObjectType();
  v12 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v3 + 40));
  sub_1AF6B1714(a1, v11);

  sub_1AF6B1B20(a1, v12, v11);
  v13 = *(v3 + 40);

  os_unfair_lock_unlock(v13);
}

uint64_t sub_1AF7BDAD4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(*(*(a3 + 88) + 8 * sub_1AF65CA4C(a2) + 32) + 200) != 1)
  {
    return 1;
  }

  v6 = sub_1AF65AE88(a2);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = (a3 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  for (i = (a1 + 40); ; i += 2)
  {
    v11 = *(i - 1);
    v12 = *(i - 2);
    v13 = v12 == -1 && v11 == 0;
    v14 = v13;
    if (v13)
    {
      goto LABEL_14;
    }

    v15 = -2;
    if ((v12 & 0x80000000) != 0 || v9[1] <= v12)
    {
      goto LABEL_15;
    }

    v22 = *v9 + 12 * v12;
    if (v11 == -1 || *(v22 + 8) == v11)
    {
      v15 = *(v22 + 6);
    }

    else
    {
LABEL_14:
      v15 = -2;
    }

LABEL_15:
    if ((*(*(*(a3 + 88) + 8 * v15 + 32) + 200) & 1) == 0)
    {
      return 1;
    }

    v16 = *i;
    if (v8)
    {
      if (v14)
      {
        return 1;
      }

      result = 1;
      if ((v12 & 0x80000000) != 0)
      {
        return result;
      }

      if (v9[1] <= v12)
      {
        return result;
      }

      v18 = (*v9 + 12 * v12);
      if (v11 != -1 && v18[2] != v11)
      {
        return result;
      }

      if (*(*(*(a3 + 144) + 8 * *v18 + 32) + 120))
      {
        return result;
      }
    }

    v19 = sub_1AFDFDFD8();
    result = swift_conformsToProtocol2();
    if (!result)
    {
      break;
    }

    if (v19 == &type metadata for SetActive)
    {
      goto LABEL_37;
    }

    v20 = sub_1AFDFDFD8();
    result = swift_conformsToProtocol2();
    if (!result)
    {
      goto LABEL_41;
    }

    if (v20 == &type metadata for NodeVisibilityController)
    {
      if (*(v16 + 16) == 0x656C6269736976 && *(v16 + 24) == 0xE700000000000000)
      {
LABEL_37:

        return 1;
      }

      v21 = sub_1AFDFEE28();

      if (v21)
      {
        return 1;
      }
    }

    else
    {
    }

    if (!--v7)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1AF7BDD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v7 = 0;
  v8 = 0;
  v9 = 1;
  v10 = 1 << *(a4 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a4 + 56);
  v13 = (v10 + 63) >> 6;
LABEL_11:
  while (v12)
  {
    v15 = v12;
LABEL_16:
    v12 = (v15 - 1) & v15;
    v17 = *(v4 + 16);
    v18 = *(v17 + 16);
    if (v18)
    {
      v65 = v9;
      v67 = v8;
      v19 = (*(v5 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v15)))));
      v20 = *v19;
      v21 = v19[1];
      while (1)
      {
        v22 = *(v17 + 32 * v18 + 16);
        if (*(v22 + 16))
        {
          sub_1AFDFF288();
          sub_1AFDFF2C8();
          sub_1AFDFF2C8();
          v23 = sub_1AFDFF2F8();
          v24 = -1 << *(v22 + 32);
          v25 = v23 & ~v24;
          if ((*(v22 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
          {
            break;
          }
        }

LABEL_18:
        if (!--v18)
        {
          v6 = a3;
          v5 = a4;
          v4 = v62;
          v9 = v65;
          v8 = v67;
          goto LABEL_11;
        }
      }

      v26 = ~v24;
      while (1)
      {
        v27 = (*(v22 + 48) + 8 * v25);
        v29 = *v27;
        v28 = v27[1];
        if (v29 == v20 && v28 == v21)
        {
          break;
        }

        v25 = (v25 + 1) & v26;
        if (((*(v22 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v14 = v67;
      v9 = 0;
      if (v65)
      {
        v14 = v18;
      }

      if (v18 <= v14)
      {
        v8 = v14;
      }

      else
      {
        v8 = v18;
      }

      v6 = a3;
      v5 = a4;
      v4 = v62;
    }
  }

  while (1)
  {
    v16 = v7 + 1;
    if (v7 + 1 >= v13)
    {
      break;
    }

    v15 = *(v5 + 8 * v7++ + 64);
    if (v15)
    {
      v7 = v16;
      goto LABEL_16;
    }
  }

  v31 = 0;
  v32 = 1 << *(v6 + 32);
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 & *(v6 + 56);
  v35 = (v32 + 63) >> 6;
LABEL_39:
  while (v34)
  {
    v37 = v34;
LABEL_44:
    v34 = (v37 - 1) & v37;
    v39 = *(v4 + 16);
    v40 = *(v39 + 16);
    if (v40)
    {
      v66 = v9;
      v68 = v8;
      v41 = 0;
      v42 = (*(v6 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v37)))));
      v43 = *v42;
      v44 = v42[1];
      v45 = v39 + 32;
      while (1)
      {
        v46 = *(v45 + 32 * v41 + 24);
        if (*(v46 + 16))
        {
          sub_1AFDFF288();
          sub_1AFDFF2C8();
          sub_1AFDFF2C8();
          v47 = sub_1AFDFF2F8();
          v48 = -1 << *(v46 + 32);
          v49 = v47 & ~v48;
          if ((*(v46 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
          {
            break;
          }
        }

LABEL_46:
        if (++v41 == v40)
        {
          v6 = a3;
          v5 = a4;
          v4 = v62;
          v9 = v66;
          v8 = v68;
          goto LABEL_39;
        }
      }

      v50 = ~v48;
      while (1)
      {
        v51 = (*(v46 + 48) + 8 * v49);
        v53 = *v51;
        v52 = v51[1];
        if (v53 == v43 && v52 == v44)
        {
          break;
        }

        v49 = (v49 + 1) & v50;
        if (((*(v46 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      v36 = v68;
      v9 = 0;
      if (v66)
      {
        v36 = v41;
      }

      if (v41 >= v36)
      {
        v8 = v36;
      }

      else
      {
        v8 = v41;
      }

      v6 = a3;
      v5 = a4;
      v4 = v62;
    }
  }

  while (1)
  {
    v38 = v31 + 1;
    if (v31 + 1 >= v35)
    {
      break;
    }

    v37 = *(v6 + 8 * v31++ + 64);
    if (v37)
    {
      v31 = v38;
      goto LABEL_44;
    }
  }

  if (v9)
  {
    v55 = *(v4 + 16);

    result = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 16) = v55;
    if ((result & 1) == 0)
    {
      result = sub_1AF423AFC(0, *(v55 + 16) + 1, 1, v55);
      v55 = result;
      *(v4 + 16) = result;
    }

    v58 = *(v55 + 16);
    v57 = *(v55 + 24);
    if (v58 >= v57 >> 1)
    {
      result = sub_1AF423AFC(v57 > 1, v58 + 1, 1, v55);
      v55 = result;
    }

    *(v55 + 16) = v58 + 1;
    v59 = (v55 + 32 * v58);
    v59[4] = a1;
    v59[5] = a2;
    v59[6] = v6;
    v59[7] = v5;
    *(v4 + 16) = v55;
  }

  else
  {

    return sub_1AF64B884(v8, v8, a1, a2, v6, v5);
  }

  return result;
}

uint64_t sub_1AF7BE194@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;

  v4 = sub_1AF7C8458(v3, v2);
  v34 = v6;
  v35 = v5;
  v33 = v7;

  v38 = *(v4 + 16);
  v32 = v4;
  if (v38)
  {
    v8 = 0;
    v37 = v4 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v10 = *(v37 + 40 * v8 + 24);
      v11 = *(v10 + 16);
      v39 = v8;

      if (!v11)
      {
        goto LABEL_3;
      }

      v12 = 0;
      while (2)
      {
        while (1)
        {
          v13 = v10 + 32 + 56 * v12;
          v14 = *v13;
          v15 = *(v13 + 16);
          v16 = *(v13 + 32);
          v44 = *(v13 + 48);
          v42 = v15;
          v43 = v16;
          v41 = v14;
          ++v12;
          v17 = *(v9 + 2);
          if (!v17)
          {
            break;
          }

          v19 = v41;
          v18 = DWORD1(v41);
          sub_1AF7D4D04(&v41, v40);
          v20 = v9 + 40;
          while (1)
          {
            if (*(v20 - 2) != v19 || *(v20 - 1) != v18)
            {
              goto LABEL_9;
            }

            if (*v20 != *(&v41 + 1) || *(v20 + 2) != *(&v42 + 1))
            {
              goto LABEL_9;
            }

            v23 = *(v20 + 5);
            if (*(v20 + 24) != v43 && (sub_1AFDFEE28() & 1) == 0)
            {
              goto LABEL_9;
            }

            if (v23)
            {
              break;
            }

            if (!v44)
            {
              goto LABEL_25;
            }

LABEL_9:
            v20 += 56;
            if (!--v17)
            {
              goto LABEL_28;
            }
          }

          v40[0] = v23;
          if (!v44)
          {
            goto LABEL_9;
          }

          v45 = v44;
          sub_1AFDFE008();

          v24 = sub_1AFDFCE58();

          if ((v24 & 1) == 0)
          {
            goto LABEL_9;
          }

LABEL_25:
          sub_1AF7D4D3C(&v41);
          if (v12 == v11)
          {
            goto LABEL_3;
          }
        }

        sub_1AF7D4D04(&v41, v40);
LABEL_28:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1AF425A64(0, *(v9 + 2) + 1, 1, v9);
        }

        v26 = *(v9 + 2);
        v25 = *(v9 + 3);
        if (v26 >= v25 >> 1)
        {
          v9 = sub_1AF425A64(v25 > 1, v26 + 1, 1, v9);
        }

        *(v9 + 2) = v26 + 1;
        v27 = &v9[56 * v26];
        v28 = v41;
        v29 = v42;
        v30 = v43;
        *(v27 + 10) = v44;
        *(v27 + 3) = v29;
        *(v27 + 4) = v30;
        *(v27 + 2) = v28;
        if (v12 != v11)
        {
          continue;
        }

        break;
      }

LABEL_3:

      v8 = v39 + 1;
      if (v39 + 1 == v38)
      {
        goto LABEL_35;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_35:
  result = sub_1AF490748(v9);
  *a2 = v32;
  a2[1] = v35;
  a2[2] = v34;
  a2[3] = v33;
  return result;
}

void sub_1AF7BE47C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a3;
  v5 = v4;
  sub_1AF7D4B24(a1, a4, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  v8 = type metadata accessor for GraphScriptingConfig.ScriptInfo();
  v9 = *(v8 + 44);
  v10 = *(a4 + v9);
  if (v10)
  {
    v11 = *(a2 + 16);
    swift_unownedRetainStrong();
    v12 = *(a2 + 24);

    v13 = *(v10 + 32);
    v14 = swift_conformsToProtocol2();
    if (v14)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v16 = v14;
      v30 = v12;
      v17 = *(v11 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

      if (v17)
      {
        v29 = *(v17 + 80);
        swift_unknownObjectWeakLoadStrong();
        v17 = *(v17 + 56);
      }

      else
      {
        v29 = 0;
      }

      swift_unknownObjectUnownedInit();
      v31[0] = v11;
      v31[2] = v17;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      v32 = v29;
      sub_1AF6C150C(v13, v16, v30);
      sub_1AF579490(v31);
      if (v29)
      {
        v18 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v18 ^ 1);
      }

      v5 = v4;
    }

    *(a4 + v9) = 0;
  }

  v19 = a4 + *(v8 + 48);
  if ((*(v19 + 8) & 1) == 0)
  {
    v20 = *v19;
    if (*v19 != 0xFFFFFFFFLL && (v20 & 0x80000000) == 0 && v20 < *(v33 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      v21 = HIDWORD(v20);
      v22 = (*(v33 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v20);
      if (v21 == 0xFFFFFFFF || v22[2] == v21)
      {
        v24 = *(v22 + 2);
        v25 = *(*(v33 + 144) + 8 * *v22 + 32);
        if (*(v25 + 232) <= v24 && *(v25 + 240) > v24)
        {
          v27 = **(v33 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
          v28 = *(v25 + 344);

          os_unfair_lock_lock(v28);
          ecs_stack_allocator_push_snapshot(*(v27 + 32));

          sub_1AF65CFA0(v27, v25, v24);
          if (v5)
          {

            os_unfair_lock_unlock(*(v25 + 344));
            __break(1u);
            return;
          }

          ecs_stack_allocator_pop_snapshot(*(v27 + 32));
          os_unfair_lock_unlock(*(v25 + 344));
        }
      }
    }

    *v19 = 0;
    *(v19 + 8) = 1;
  }
}

uint64_t sub_1AF7BE760(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1AF0D4E74();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AFDFC298();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  *(a1 + 24) = 1;
  if (a3 == 0xFFFFFFFF || (a3 & 0x80000000) != 0 || a3 >= *(result + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) || (v16 = (*(result + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a3), HIDWORD(a3) != 0xFFFFFFFF) && v16[2] != HIDWORD(a3) || (v17 = *v16, v45 = result, (v18 = sub_1AF685564(*(*(result + 144) + 8 * v17 + 32))) == 0) || (v19 = v18, v18 == 1))
  {

LABEL_21:

    *(a1 + 16) = MEMORY[0x1E69E7CC8];
    return result;
  }

  v20 = sub_1AF67E7A0(a3, v45);
  if (!v20)
  {

    sub_1AF0DB74C(v19);
    goto LABEL_21;
  }

  v49 = v6;
  v50 = v14;
  v51 = v10;
  sub_1AF7BECFC(v19, v20, 1, *a1, *(a1 + 8));

  v59 = MEMORY[0x1E69E7CC0];
  v42 = a1;
  v43 = v19;
  sub_1AF7BF5E4(v19, &v59);
  v44 = v59;
  v21 = *(v59 + 2);
  if (v21)
  {
    v47 = (v11 + 32);
    v48 = "]: Unable to find input: '";
    v22 = (v44 + 88);
    v46 = xmmword_1AFE431C0;
    do
    {
      v56 = v21;
      v23 = *(v22 - 7);
      v24 = *(v22 - 6);
      v25 = *(v22 - 4);
      v27 = *(v22 - 2);
      v26 = *(v22 - 1);
      v28 = *v22;
      v29 = qword_1ED730EA0;

      v54 = v25;

      v53 = v27;

      if (v29 != -1)
      {
        swift_once();
      }

      v57 = 0;
      v58 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD00000000000004CLL, v48 | 0x8000000000000000);
      MEMORY[0x1B2718AE0](v23, v24);
      MEMORY[0x1B2718AE0](0x3A726F7272652820, 0xE900000000000020);
      v52 = v28;
      MEMORY[0x1B2718AE0](v26, v28);
      MEMORY[0x1B2718AE0](41, 0xE100000000000000);
      v30 = v57;
      v31 = v58;
      v32 = sub_1AFDFDA08();
      v33 = v49;
      if (qword_1ED731058 != -1)
      {
        swift_once();
      }

      v55 = v24;
      if (qword_1ED730E98 != -1)
      {
        swift_once();
      }

      v22 += 8;
      sub_1AF5FD6BC(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v34 = swift_allocObject();
      *(v34 + 16) = v46;
      *(v34 + 56) = MEMORY[0x1E69E6158];
      *(v34 + 64) = sub_1AF0D544C();
      *(v34 + 32) = v30;
      *(v34 + 40) = v31;

      sub_1AFDFC4C8();

      v35 = v32;
      v36 = v50;
      sub_1AFDFC288();
      v37 = v33[12];
      v38 = v33[16];
      v39 = v33[20];
      v40 = v30;
      v41 = &v9[v39];
      (*v47)(v9, v36, v51);
      v9[v37] = v35;
      *&v9[v38] = 0;
      *v41 = v40;
      *(v41 + 1) = v31;

      sub_1AFDFC608();

      sub_1AF7D48A0(v9, sub_1AF0D4E74);

      v21 = v56 - 1;
    }

    while (v56 != 1);
  }

  sub_1AF0DB74C(v43);

  *(v42 + 26) = 1;
  return result;
}

uint64_t sub_1AF7BECFC(uint64_t result, uint64_t a2, char a3, unsigned __int8 a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    return result;
  }

  v5 = 0xE400000000000000;
  v6 = 1852399949;
  v7 = 0xEE00657461647055;
  v8 = 0x656C636974726150;
  if (a4 != 5)
  {
    v8 = 0x7265646E6552;
    v7 = 0xE600000000000000;
  }

  v9 = 0xEC00000074696E49;
  v10 = 0x656C636974726150;
  if (a4 != 3)
  {
    v10 = 0x657461647055;
    v9 = 0xE600000000000000;
  }

  if (a4 <= 4u)
  {
    v8 = v10;
    v7 = v9;
  }

  v11 = 0xE500000000000000;
  v12 = 0x6E77617053;
  if (a4 != 1)
  {
    v12 = 1953066569;
    v11 = 0xE400000000000000;
  }

  if (a4)
  {
    v6 = v12;
    v5 = v11;
  }

  if (a4 <= 2u)
  {
    v13 = v6;
  }

  else
  {
    v13 = v8;
  }

  if (a4 <= 2u)
  {
    v14 = v5;
  }

  else
  {
    v14 = v7;
  }

  v15 = *(result + 176);
  if (!*(v15 + 16) || (v16 = result, , v17 = sub_1AF419914(v13, v14), v19 = v18, , (v19 & 1) == 0))
  {
  }

  v20 = *(*(v15 + 56) + 8 * v17);

  v83 = v16;
  v21 = *(v20 + 56);
  if (v21 >> 62)
  {
    v22 = sub_1AFDFE108();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v22)
  {
    for (i = 0; i != v22; ++i)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x1B2719C70](i, v21);
      }

      else
      {
        v24 = *(v21 + 8 * i + 32);
      }

      v25 = *(v24 + 72);
      v95[0] = *(v24 + 56);
      v95[1] = v25;
      v96 = *(v24 + 88);
      sub_1AF444F60(v95, &v90);
      if (sub_1AF7FE65C() == 0x6156686374697753 && v26 == 0xEB0000000065756CLL)
      {

        sub_1AF444FBC(v95);
      }

      else
      {
        v27 = sub_1AFDFEE28();

        sub_1AF444FBC(v95);
        if ((v27 & 1) == 0)
        {
          if (*(a5 + 16))
          {
            v28 = *(v24 + 40);
            v29 = *(v24 + 48);

            v30 = sub_1AF419914(v28, v29);
            v32 = v31;

            if (v32)
            {
              v33 = *(*(a5 + 56) + 16 * v30 + 8);
              v34 = *(v24 + 72);
              v93[0] = *(v24 + 56);
              v93[1] = v34;
              v94 = *(v24 + 88);

              sub_1AF444F60(v93, &v90);
              v35 = sub_1AF80CC24(v93);
              sub_1AF444FBC(v93);
              if (v35 != *(v33 + 40))
              {
                v36 = *(v24 + 24);
                v37 = *(v24 + 32);

                sub_1AF808478(v88);
                sub_1AF7B085C(v36, v37, v88);
                sub_1AF444FBC(v88);
                v38 = sub_1AF7B0A00(v36, v37);

                v39 = v38[5];
                v40 = v38[6];

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v90 = *(v83 + 264);
                *(v83 + 264) = 0x8000000000000000;
                sub_1AF854E5C(v38, v39, v40, isUniquelyReferenced_nonNull_native);

                *(v83 + 264) = v90;
              }
            }
          }
        }
      }
    }
  }

  if ((a3 & 1) == 0)
  {
  }

  v42 = *(v83 + 168);
  v43 = 1 << *(v42 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *(v42 + 64);
  v46 = (v43 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v47 = 0;
  v81 = v46;
LABEL_45:
  while (v45)
  {
LABEL_49:
    v49 = __clz(__rbit64(v45));
    v45 &= v45 - 1;
    v86 = *(*(v42 + 56) + 8 * (v49 | (v47 << 6)));
    v50 = *(v86 + 80);
    v51 = v50[2];
    if (v51)
    {
      v53 = v50 + 5;
      v52 = v50[5];
      v54 = v50[4];

      v55 = v50 + 5;
      while (1)
      {
        v56 = *(v55 - 1) == v54 && *v55 == v52;
        if (v56 || (sub_1AFDFEE28() & 1) != 0)
        {
          break;
        }

        v55 += 2;
        if (!--v51)
        {

          goto LABEL_45;
        }
      }

      v57 = v50[2];
      if (v57)
      {
        v58 = 0;
        while (1)
        {
          v59 = *(v53 - 1) == v54 && *v53 == v52;
          if (v59 || (sub_1AFDFEE28() & 1) != 0)
          {
            break;
          }

          ++v58;
          v53 += 2;
          if (v57 == v58)
          {
            goto LABEL_66;
          }
        }
      }

      else
      {
LABEL_66:
        v58 = 0;
      }

      v60 = *(v86 + 88) + 40 * v58;
      v61 = *(v60 + 64);
      v62 = *(v60 + 48);
      v90 = *(v60 + 32);
      v91 = v62;
      v92 = v61;
      v80 = *(v60 + 40);

      sub_1AF444F60(&v90, v87);
      v63 = sub_1AF7AF740(v54, v52);
      v65 = v64;
      _s12ParameterOutCMa();
      inited = swift_initStackObject();
      swift_weakInit();
      swift_weakAssign();
      *(inited + 24) = v54;
      *(inited + 32) = v52;
      v79 = v63;
      *(inited + 40) = v63;
      *(inited + 48) = v65;
      v67 = v91;
      *(inited + 56) = v90;
      *(inited + 72) = v67;
      *(inited + 88) = v92;
      sub_1AF444F60(&v90, v87);
      if (sub_1AF7FE65C() == 0x6156686374697753 && v68 == 0xEB0000000065756CLL)
      {

        sub_1AF444FBC(&v90);
        v46 = v81;
LABEL_71:

        goto LABEL_75;
      }

      v69 = sub_1AFDFEE28();

      sub_1AF444FBC(&v90);
      v46 = v81;
      if (v69)
      {
        goto LABEL_71;
      }

      if (v80 > 0x26 || ((1 << v80) & 0x43A0000000) == 0) && *(a2 + 16) && (, v70 = sub_1AF419914(v79, v65), v72 = v71, , (v72))
      {
        v73 = *(*(a2 + 56) + 16 * v70 + 8);
        sub_1AF444F60(&v90, v87);

        v74 = sub_1AF80CC24(&v90);
        sub_1AF444FBC(&v90);
        if (v74 != *(v73 + 40))
        {

          sub_1AF808478(v89);
          sub_1AF7AF3E4(v54, v52, v89);
          sub_1AF444FBC(v89);
          v75 = sub_1AF7AF5BC(v54, v52);

          v76 = v75[5];
          v77 = v75[6];

          v78 = swift_isUniquelyReferenced_nonNull_native();
          v87[0] = *(v83 + 264);
          *(v83 + 264) = 0x8000000000000000;
          sub_1AF854E5C(v75, v76, v77, v78);

          *(v83 + 264) = v87[0];
        }
      }

      else
      {
      }

LABEL_75:

      swift_setDeallocating();
      swift_weakDestroy();

      sub_1AF687FE4(*(inited + 56), *(inited + 64));
    }
  }

  while (1)
  {
    v48 = v47 + 1;
    if (v47 + 1 >= v46)
    {
      break;
    }

    v45 = *(v42 + 8 * v47++ + 72);
    if (v45)
    {
      v47 = v48;
      goto LABEL_49;
    }
  }
}

uint64_t sub_1AF7BF5E4(uint64_t a1, char **a2)
{
  v109 = a2;
  v123 = *MEMORY[0x1E69E9840];
  sub_1AF7D8944();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v96 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v105 = &v96 - v16;
  sub_1AF7D4B8C(0, &qword_1EB63EC10, sub_1AF7D8944);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v96 - v19;
  v21 = v2;
  v22 = *v2;
  if (v22 <= 2)
  {
    if (*v2)
    {
      if (v22 == 1)
      {
        v23 = 0xE500000000000000;
        v24 = 0x6E77617053;
      }

      else
      {
        v23 = 0xE400000000000000;
        v24 = 1953066569;
      }
    }

    else
    {
      v23 = 0xE400000000000000;
      v24 = 1852399949;
    }

    goto LABEL_15;
  }

  if (*v2 > 4u)
  {
    if (v22 == 5)
    {
      v23 = 0xEE00657461647055;
      goto LABEL_10;
    }

    v23 = 0xE600000000000000;
    v24 = 0x7265646E6552;
  }

  else
  {
    if (v22 == 3)
    {
      v23 = 0xEC00000074696E49;
LABEL_10:
      v24 = 0x656C636974726150;
      goto LABEL_15;
    }

    v23 = 0xE600000000000000;
    v24 = 0x657461647055;
  }

LABEL_15:
  v25 = *(a1 + 176);
  if (!*(v25 + 16) || (v99 = v20, v100 = v6, , v26 = sub_1AF419914(v24, v23), v28 = v27, , (v28 & 1) == 0))
  {
  }

  v107 = a1;
  v29 = *(*(v25 + 56) + 8 * v26);

  v30 = *(*(v21 + 2) + 16);
  sub_1AF7DB7D4(0, &qword_1ED722F30, &type metadata for ScriptParameter, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = 0x8000000000000000;
  *(inited + 40) = 1;
  *(inited + 48) = xmmword_1AFE4C460;
  *(inited + 64) = 1;
  v32 = v21[24];
  v104 = v5;
  v97 = v30;
  if (v32 == 1)
  {
    v33 = inited;
    v110 = xmmword_1AFE4C460;
    v34 = swift_allocObject();
    *(v34 + 16) = 0xFFFFFFFFLL;
    v35 = v34 | 0x6000000000000000;
    inited = sub_1AF420C34(1, 2, 1, v33);
    *(inited + 16) = 2;
    *(inited + 72) = v35;
    *(inited + 80) = 1;
    *(inited + 88) = v110;
    *(inited + 104) = 1;
  }

  v36 = v21[1];
  v37 = MEMORY[0x1E69E7CC0];
  *&v122[0] = MEMORY[0x1E69E7CC0];
  *&v118 = MEMORY[0x1E69E7CC0];
  v98 = inited;
  sub_1AF7BA714(inited, v36, v122, &v118);
  v106 = *&v122[0];
  *&v110 = v118;
  *&v118 = v37;
  v38 = *(v29 + 40);
  v39 = *(v38 + 16);

  v102 = v9;
  v103 = v13;
  if (v39)
  {
    v40 = (v38 + 40);
    v41 = v107;
    do
    {
      v42 = *v40;
      *&v122[0] = *(v40 - 1);
      *(&v122[0] + 1) = v42;

      sub_1AF79B318(v122, v29, v41);

      v40 += 2;
      --v39;
    }

    while (v39);
    v43 = v118;
  }

  else
  {
    v43 = v37;
  }

  v45 = *(v43 + 16);
  v111 = v21;
  v108 = v29;
  v101 = v43;
  if (!v45)
  {
    v60 = v21;
    v47 = &unk_1F2503780;
    v58 = v110;
    v57 = v60;
    goto LABEL_55;
  }

  *&v122[0] = MEMORY[0x1E69E7CC0];
  sub_1AFC076E8(0, v45, 0);
  v46 = (v43 + 40);
  v47 = *&v122[0];
  do
  {
    v48 = *(v46 - 1);
    v49 = *v46;
    if (v48 == 1701015119 && v49 == 0xE400000000000000)
    {
      v51 = 0;
      v52 = 1;
      goto LABEL_43;
    }

    if (sub_1AFDFEE28())
    {
      v51 = 0;
LABEL_42:
      v52 = 1;
      goto LABEL_43;
    }

    v53 = v48 == 0x74737275426E4FLL && v49 == 0xE700000000000000;
    if (v53 || (sub_1AFDFEE28() & 1) != 0)
    {
      v51 = 1;
      goto LABEL_42;
    }

    if (v48 == 0x7461657065526E4FLL && v49 == 0xE800000000000000)
    {
      v51 = 0;
      v52 = 0;
    }

    else
    {
      v59 = sub_1AFDFEE28();
      if (v59)
      {
        v51 = 0;
      }

      else
      {
        v51 = 2;
      }

      v52 = v59 ^ 1;
    }

LABEL_43:
    *&v122[0] = v47;
    v55 = v47[2];
    v54 = v47[3];
    if (v55 >= v54 >> 1)
    {
      sub_1AFC076E8(v54 > 1, v55 + 1, 1);
      v47 = *&v122[0];
    }

    v47[2] = v55 + 1;
    v56 = &v47[v55];
    *(v56 + 8) = v51;
    v56[36] = v52 & 1;
    v46 += 2;
    --v45;
    v57 = v111;
    v58 = v110;
  }

  while (v45);
  v43 = v101;
LABEL_55:
  sub_1AF7C5F84(v47);

  v61 = *(v43 + 16);
  v62 = v106;
  if (v61)
  {
    v63 = (v43 + 40);
    do
    {
      v67 = *(v63 - 1);
      v68 = *v63;
      LOBYTE(v118) = v57[1];
      v69 = 1;
      *(&v118 + 1) = 1;
      BYTE3(v118) = 0;
      *(&v118 + 1) = MEMORY[0x1E69E7CC0];
      LOWORD(v119) = 1;
      *(&v119 + 1) = v62;
      *&v120 = v58;
      WORD4(v120) = 257;
      *&v121 = v67;
      *(&v121 + 1) = v68;
      v122[2] = v120;
      v122[3] = v121;
      v122[0] = v118;
      v122[1] = v119;
      if (v67 == 1701015119 && v68 == 0xE400000000000000 || (sub_1AFDFEE28() & 1) != 0)
      {
        v64 = 0;
      }

      else if (v67 == 0x74737275426E4FLL && v68 == 0xE700000000000000 || (sub_1AFDFEE28() & 1) != 0)
      {
        v64 = 1;
      }

      else if (v67 == 0x7461657065526E4FLL && v68 == 0xE800000000000000)
      {
        v64 = 0;
        v69 = 0;
      }

      else
      {
        v70 = sub_1AFDFEE28();
        v69 = v70 ^ 1;
        if (v70)
        {
          v64 = 0;
        }

        else
        {
          v64 = 2;
        }
      }

      swift_bridgeObjectRetain_n();

      v58 = v110;

      v65 = sub_1AF79054C(v108, v122, MEMORY[0x1E69E7CC8]);
      sub_1AF75FD78(&v118);
      LOBYTE(v113) = v69 & 1;
      v66 = (v64 | ((v69 & 1) << 32));
      v57 = v111;
      sub_1AF7C54A8(v66, v65, v109);

      v62 = v106;

      v63 += 2;
      --v61;
    }

    while (v61);
  }

  LOBYTE(v113) = v57[1];
  *(&v113 + 1) = 1;
  BYTE3(v113) = 0;
  *(&v113 + 1) = MEMORY[0x1E69E7CC0];
  LOWORD(v114) = 1;
  *(&v114 + 1) = v62;
  *&v115 = v58;
  WORD4(v115) = 257;
  v116 = 0;
  v117 = 0;
  v120 = v115;
  v121 = 0u;
  v118 = v113;
  v119 = v114;
  v71 = sub_1AF432980(MEMORY[0x1E69E7CC0]);
  v72 = sub_1AF79054C(v108, &v118, v71);

  sub_1AF75FD78(&v113);
  v112 = 1;
  sub_1AF7C54A8(0x100000002, v72, v109);

  v73 = *(v57 + 2);
  if (v97 == *(v73 + 16))
  {
    v74 = 1 << *(v73 + 32);
    v75 = -1;
    if (v74 < 64)
    {
      v75 = ~(-1 << v74);
    }

    v76 = v75 & *(v73 + 64);
    v77 = (v74 + 63) >> 6;

    v78 = 0;
    if (v76)
    {
      while (1)
      {
        v79 = v78;
LABEL_79:
        v80 = __clz(__rbit64(v76)) | (v79 << 6);
        v81 = *(v73 + 56);
        v82 = *(v73 + 48) + 8 * v80;
        v83 = *v82;
        v84 = *(v82 + 4);
        v85 = v81 + *(*(type metadata accessor for GraphScriptingConfig.ScriptInfo() - 8) + 72) * v80;
        v86 = v104;
        v87 = v105;
        sub_1AF7D4B24(v85, &v105[*(v104 + 48)], type metadata accessor for GraphScriptingConfig.ScriptInfo);
        *v87 = v83;
        v87[4] = v84;
        v88 = v87;
        v89 = v103;
        sub_1AF0D6D20(v88, v103, sub_1AF7D8944);
        v90 = v102;
        sub_1AF7D4B24(v89, v102, sub_1AF7D8944);
        v91 = v90 + *(v86 + 48);
        LODWORD(v86) = *(v91 + 40);
        sub_1AF7D48A0(v91, type metadata accessor for GraphScriptingConfig.ScriptInfo);
        if (v86 == 1)
        {
          break;
        }

        v76 &= v76 - 1;
        sub_1AF7D48A0(v89, sub_1AF7D8944);
        v78 = v79;
        v57 = v111;
        if (!v76)
        {
          goto LABEL_77;
        }
      }

      v93 = v99;
      sub_1AF0D6D20(v89, v99, sub_1AF7D8944);
      v92 = v100;
      v94 = v104;
      (*(v100 + 56))(v93, 0, 1, v104);
      v57 = v111;
    }

    else
    {
LABEL_77:
      while (1)
      {
        v79 = v78 + 1;
        if (v78 + 1 >= v77)
        {
          break;
        }

        v76 = *(v73 + 8 * v78++ + 72);
        if (v76)
        {
          goto LABEL_79;
        }
      }

      v93 = v99;
      v92 = v100;
      v94 = v104;
      (*(v100 + 56))(v99, 1, 1, v104);
    }

    v95 = (*(v92 + 48))(v93, 1, v94) != 1;
    result = sub_1AF7D4900(v93, &qword_1EB63EC10, sub_1AF7D8944);
    v57[26] = v95;
  }

  else
  {

    v57[26] = 1;
  }

  return result;
}

uint64_t sub_1AF7C0174(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char **a6)
{
  v7 = *a1;
  v8 = a1[1];
  if (*(a3 + 16) && (v10 = sub_1AF419914(*a1, v8), (v11 & 1) != 0))
  {
    v34 = a6;
    v12 = (*(a3 + 56) + 16 * v10);
    v13 = *v12;
    v14 = v12[1];
    if (*(v14 + 216))
    {
      v15 = *(v14 + 216);
    }

    else
    {

      v15 = v14;
    }

    v19 = swift_allocObject();
    *(v19 + 16) = v13;
    v21 = *(v15 + 16);
    v20 = *(v15 + 24);
    v22 = *(v15 + 48);
    v23 = *(v15 + 56);
    v24 = *(v15 + 58);

    v33 = *(v15 + 32);

    *(v19 + 24) = v21;
    *(v19 + 32) = v20;
    *(v19 + 40) = v33;
    *(v19 + 56) = v22;
    *(v19 + 64) = v23;
    *(v19 + 66) = v24;
    v25 = v19 | 0x2000000000000000;
    v26 = *v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v34 = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = sub_1AF420C34(0, *(v26 + 2) + 1, 1, v26);
      *v34 = v26;
    }

    v29 = *(v26 + 2);
    v28 = *(v26 + 3);
    if (v29 >= v28 >> 1)
    {
      *v34 = sub_1AF420C34(v28 > 1, v29 + 1, 1, v26);
    }

    v30 = *v34;
    *(v30 + 2) = v29 + 1;
    v31 = &v30[40 * v29];
    *(v31 + 4) = v25;
    v31[40] = 7;
    *(v31 + 3) = xmmword_1AFE4C460;
    v31[64] = 1;
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v35[1] = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF34E20);
    sub_1AFDFE458();
    MEMORY[0x1B2718AE0](0xD00000000000001BLL, 0x80000001AFF34E40);
    MEMORY[0x1B2718AE0](v7, v8);
    MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF34E60);
    v16 = sub_1AFDFCC18();
    MEMORY[0x1B2718AE0](v16);

    v17 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v32 = v17;
      swift_once();
      v17 = v32;
    }

    v35[0] = 0;
    sub_1AF0D4F18(v17, v35, 0, 0xE000000000000000);
  }

  return result;
}

uint64_t sub_1AF7C04D4(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char **a6)
{
  v8 = *a1;
  v9 = a1[1];
  if (*(a3 + 16) && (v11 = sub_1AF419914(*a1, v9), (v12 & 1) != 0))
  {
    v13 = *(*(a3 + 56) + 16 * v11 + 8);
    if (*(v13 + 216))
    {
      v14 = *(v13 + 216);
    }

    else
    {

      v14 = v13;
    }

    v19 = *(v14 + 16);
    v18 = *(v14 + 24);
    v20 = *(v14 + 48);
    v21 = *(v14 + 56);
    v22 = *(v14 + 58);

    v31 = *(v14 + 32);

    v23 = swift_allocObject();
    *(v23 + 16) = v19;
    *(v23 + 24) = v18;
    *(v23 + 32) = v31;
    *(v23 + 48) = v20;
    *(v23 + 56) = v21;
    *(v23 + 58) = v22;
    *(v23 + 60) = 5;
    v24 = *a6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a6 = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_1AF420C34(0, *(v24 + 2) + 1, 1, v24);
      *a6 = v24;
    }

    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    if (v27 >= v26 >> 1)
    {
      *a6 = sub_1AF420C34(v26 > 1, v27 + 1, 1, v24);
    }

    v28 = *a6;
    *(v28 + 2) = v27 + 1;
    v29 = &v28[40 * v27];
    *(v29 + 4) = v23 | 0x5000000000000000;
    v29[40] = 3;
    *(v29 + 3) = xmmword_1AFE4C460;
    v29[64] = 1;
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v32[1] = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF34E20);
    v33 = a2;
    sub_1AFDFE458();
    MEMORY[0x1B2718AE0](0xD00000000000001BLL, 0x80000001AFF34E40);
    MEMORY[0x1B2718AE0](v8, v9);
    MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF34E60);
    v15 = sub_1AFDFCC18();
    MEMORY[0x1B2718AE0](v15);

    v16 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v30 = v16;
      swift_once();
      v16 = v30;
    }

    v32[0] = 0;
    sub_1AF0D4F18(v16, v32, 0, 0xE000000000000000);
  }

  return result;
}

uint64_t sub_1AF7C0854(uint64_t result)
{
  if (*(result + 56) == 1)
  {
    return sub_1AF7D3C8C(result, 1);
  }

  return result;
}

uint64_t sub_1AF7C0884(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1AF7C77A8(v5, v7) & 1;
}

uint64_t sub_1AF7C08E0()
{
  v1 = MEMORY[0x1E69E7CC0];
  v26 = *(*v0 + 16);
  if (v26)
  {
    v2 = 0;
    v25 = *v0 + 32;
    v3 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v4 = *(v25 + 40 * v2 + 24);
      v5 = *(v4 + 16);
      if (v5)
      {
        v6 = v1;
        v28 = v1;

        swift_bridgeObjectRetain_n();
        sub_1AFC07194(0, v5, 0);
        v7 = v1;
        v8 = v1[2];
        v9 = 32;
        do
        {
          v10 = *(v4 + v9);
          v28 = v7;
          v11 = v7[3];
          if (v8 >= v11 >> 1)
          {
            sub_1AFC07194(v11 > 1, v8 + 1, 1);
            v7 = v28;
          }

          v7[2] = v8 + 1;
          v7[v8 + 4] = v10;
          v9 += 56;
          ++v8;
          --v5;
        }

        while (v5);
        swift_bridgeObjectRelease_n();

        v1 = v6;
      }

      else
      {
        v7 = v1;
      }

      v12 = v7[2];
      v13 = *(v3 + 2);
      v14 = v13 + v12;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v14 <= *(v3 + 3) >> 1)
      {
        if (v7[2])
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 <= v14)
        {
          v16 = v13 + v12;
        }

        else
        {
          v16 = v13;
        }

        v3 = sub_1AF4217DC(isUniquelyReferenced_nonNull_native, v16, 1, v3);
        if (v7[2])
        {
LABEL_20:
          memcpy(&v3[8 * *(v3 + 2) + 32], v7 + 4, 8 * v12);

          if (v12)
          {
            *(v3 + 2) += v12;
          }

          goto LABEL_4;
        }
      }

LABEL_4:
      if (++v2 == v26)
      {
        goto LABEL_23;
      }
    }
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_23:
  v17 = *(v3 + 2);
  v18 = sub_1AF43B694();
  v19 = MEMORY[0x1B27191B0](v17, &type metadata for Entity, v18);
  v28 = v19;
  v20 = *(v3 + 2);
  if (v20)
  {
    v21 = 32;
    do
    {
      sub_1AF70DA24(&v27, *&v3[v21]);
      v21 += 8;
      --v20;
    }

    while (v20);

    v22 = v28;
  }

  else
  {
    v22 = v19;
  }

  *(v24 + 16) = v22;
  return result;
}

uint64_t sub_1AF7C0B40()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    v5 = v1 + 32;
    v6 = MEMORY[0x1E69E7CC0];
    v29 = v1 + 32;
    v30 = *(*v0 + 16);
    while (1)
    {
      v7 = *(v5 + 40 * v4 + 16);
      if (v7 && (v8 = *(v7 + 16)) != 0)
      {
        v9 = v3;
        v32 = v3;
        swift_bridgeObjectRetain_n();

        sub_1AFC07194(0, v8, 0);
        v10 = v3;
        v11 = v3[2];
        v12 = 32;
        do
        {
          v13 = *(v7 + v12);
          v32 = v10;
          v14 = v10[3];
          if (v11 >= v14 >> 1)
          {
            sub_1AFC07194(v14 > 1, v11 + 1, 1);
            v10 = v32;
          }

          v10[2] = v11 + 1;
          v10[v11 + 4] = v13;
          v12 += 56;
          ++v11;
          --v8;
        }

        while (v8);

        swift_bridgeObjectRelease_n();
        v3 = v9;
        v5 = v29;
        v2 = v30;
      }

      else
      {
        v10 = v3;
      }

      v15 = v10[2];
      v16 = *(v6 + 2);
      v17 = v16 + v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v17 <= *(v6 + 3) >> 1)
      {
        if (v10[2])
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v16 <= v17)
        {
          v19 = v16 + v15;
        }

        else
        {
          v19 = v16;
        }

        v6 = sub_1AF4217DC(isUniquelyReferenced_nonNull_native, v19, 1, v6);
        if (v10[2])
        {
LABEL_21:
          memcpy(&v6[8 * *(v6 + 2) + 32], v10 + 4, 8 * v15);

          if (v15)
          {
            *(v6 + 2) += v15;
          }

          goto LABEL_4;
        }
      }

LABEL_4:
      if (++v4 == v2)
      {
        goto LABEL_24;
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_24:
  v20 = *(v6 + 2);
  v21 = sub_1AF43B694();
  v22 = MEMORY[0x1B27191B0](v20, &type metadata for Entity, v21);
  v32 = v22;
  v23 = *(v6 + 2);
  if (v23)
  {
    v24 = 32;
    v25 = v28;
    do
    {
      sub_1AF70DA24(&v31, *&v6[v24]);
      v24 += 8;
      --v23;
    }

    while (v23);

    v26 = v32;
  }

  else
  {
    v26 = v22;

    v25 = v28;
  }

  *(v25 + 24) = v26;
  return result;
}

uint64_t sub_1AF7C0DA4(unsigned int *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 1);
  v6 = *(a1 + 3);
  v41 = *(a1 + 4);
  v40 = *(a1 + 5);
  v38 = *(a1 + 6);
  v7 = *(*a2 + 16);
  v36 = *a2;

  if (!v7)
  {
  }

  v39 = v6;
  while (1)
  {
    v8 = *(v36 + 32 + 40 * (v7 - 1) + 24);
    v9 = *(v8 + 16);
    v42 = v7 - 1;

    if (v9)
    {
      break;
    }

LABEL_3:
    if (v5 == &type metadata for WorldTransform)
    {
      v37 = v7;
      v11 = *(v8 + 16);
      if (v11)
      {
        v12 = 0;
        v13 = v8 + 32;
        v14 = -v11;
        v15 = MEMORY[0x1E69E7CC0];
        do
        {
          v16 = (v13 + 56 * v12++);
          while (1)
          {
            v18 = v16[1];
            v17 = v16[2];
            v19 = *v16;
            v48 = *(v16 + 6);
            v46 = v18;
            v47 = v17;
            v45 = v19;
            if (v19 == __PAIR64__(v3, v4) && (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype()))
            {
              break;
            }

            v16 = (v16 + 56);
            ++v12;
            if (v14 + v12 == 1)
            {
              goto LABEL_38;
            }
          }

          sub_1AF7D4D04(&v45, v43);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v49 = v15;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1AFC076A8(0, *(v15 + 16) + 1, 1);
            v15 = v49;
          }

          v22 = *(v15 + 16);
          v21 = *(v15 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_1AFC076A8(v21 > 1, v22 + 1, 1);
            v15 = v49;
          }

          *(v15 + 16) = v22 + 1;
          v23 = v15 + 56 * v22;
          v24 = v45;
          v25 = v46;
          v26 = v47;
          *(v23 + 80) = v48;
          *(v23 + 48) = v25;
          *(v23 + 64) = v26;
          *(v23 + 32) = v24;
          v13 = v8 + 32;
        }

        while (v14 + v12);
      }

      else
      {
        v15 = MEMORY[0x1E69E7CC0];
      }

LABEL_38:

      v31 = *(v15 + 16);

      v6 = v39;
      if (v31)
      {

        v33 = a3;
        v7 = v37;
        goto LABEL_42;
      }
    }

    else
    {
    }

    v7 = v42;
    if (!v42)
    {
    }
  }

  v10 = 32;
  while (1)
  {
    v28 = *(v8 + v10 + 16);
    v27 = *(v8 + v10 + 32);
    v29 = *(v8 + v10);
    v48 = *(v8 + v10 + 48);
    v46 = v28;
    v47 = v27;
    v45 = v29;
    if (v29 != __PAIR64__(v3, v4) || __PAIR128__(*(&v46 + 1), *(&v45 + 1)) != __PAIR128__(v6, v5) || v47 != __PAIR128__(v40, v41) && (sub_1AFDFEE28() & 1) == 0)
    {
      goto LABEL_28;
    }

    if (v48)
    {
      break;
    }

    if (!v38)
    {
      goto LABEL_41;
    }

LABEL_28:
    v10 += 56;
    if (!--v9)
    {
      goto LABEL_3;
    }
  }

  v49 = v48;
  if (!v38)
  {
    goto LABEL_28;
  }

  v44 = v38;
  sub_1AFDFE008();
  sub_1AF7D4D04(&v45, v43);

  v6 = v39;
  v30 = sub_1AFDFCE58();

  sub_1AF7D4D3C(&v45);
  if ((v30 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_41:

  v33 = a3;
LABEL_42:
  v34 = *v33;
  if (*(v33 + 8))
  {
    v34 = v7;
  }

  if (v7 > v34)
  {
    v34 = v7;
  }

  *v33 = v34;
  *(v33 + 8) = 0;
  return result;
}

uint64_t sub_1AF7C11D4(unsigned int *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 1);
  v40 = *(a1 + 3);
  *&v39 = *(a1 + 5);
  *(&v39 + 1) = *(a1 + 4);
  v6 = *(*a2 + 16);
  v37 = *a2;
  v38 = *(a1 + 6);

  if (!v6)
  {
  }

  v7 = 0;
  while (1)
  {
    v8 = *(v37 + 32 + 40 * v7 + 16);
    if (v8)
    {
      v9 = *(v8 + 16);

      if (v9)
      {
        v10 = 32;
        do
        {
          v30 = *(v8 + v10 + 16);
          v29 = *(v8 + v10 + 32);
          v31 = *(v8 + v10);
          v45 = *(v8 + v10 + 48);
          v43 = v30;
          v44 = v29;
          v42 = v31;
          if (v31 == __PAIR64__(v3, v4) && __PAIR128__(*(&v43 + 1), *(&v42 + 1)) == __PAIR128__(v40, v5) && (__PAIR128__(v44, *(&v44 + 1)) == v39 || (sub_1AFDFEE28() & 1) != 0))
          {
            if (v45)
            {
              v46 = v45;
              if (v38)
              {
                sub_1AFDFE008();
                sub_1AF7D4D04(&v42, v41);

                v32 = sub_1AFDFCE58();

                sub_1AF7D4D3C(&v42);
                if (v32)
                {
LABEL_41:

                  goto LABEL_43;
                }
              }
            }

            else if (!v38)
            {
              goto LABEL_41;
            }
          }

          v10 += 56;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
    }

    if ((swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype()) && v8)
    {
      break;
    }

LABEL_4:
    if (++v7 == v6)
    {
    }
  }

  v11 = *(v8 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v8 + 32;
    v14 = -v11;
    v15 = MEMORY[0x1E69E7CC0];
    do
    {
      v16 = (v13 + 56 * v12++);
      while (1)
      {
        v18 = v16[1];
        v17 = v16[2];
        v19 = *v16;
        v45 = *(v16 + 6);
        v43 = v18;
        v44 = v17;
        v42 = v19;
        if (v19 == __PAIR128__(&type metadata for WorldTransform, __PAIR64__(v3, v4)))
        {
          break;
        }

        v16 = (v16 + 56);
        ++v12;
        if (v14 + v12 == 1)
        {
          goto LABEL_30;
        }
      }

      sub_1AF7D4D04(&v42, v41);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = v15;
      v36 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1AFC076A8(0, *(v15 + 16) + 1, 1);
        v15 = v46;
      }

      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        sub_1AFC076A8(v21 > 1, v22 + 1, 1);
        v23 = v22 + 1;
        v15 = v46;
      }

      *(v15 + 16) = v23;
      v24 = v15 + 56 * v22;
      v25 = v42;
      v26 = v43;
      v27 = v44;
      *(v24 + 80) = v45;
      *(v24 + 48) = v26;
      *(v24 + 64) = v27;
      *(v24 + 32) = v25;
      v13 = v36;
    }

    while (v14 + v12);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

LABEL_30:
  v28 = *(v15 + 16);

  if (!v28)
  {
    goto LABEL_4;
  }

LABEL_43:

  v34 = *a3;
  if (*(a3 + 8))
  {
    v34 = v7;
  }

  if (v7 < v34)
  {
    v34 = v7;
  }

  *a3 = v34;
  *(a3 + 8) = 0;
  return result;
}

uint64_t sub_1AF7C1624(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  if (v4)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1AFC071B4(0, v4, 0);
    v5 = v30;
    v6 = v4 - 1;
    v7 = 32;
    v8 = a2;
    while (1)
    {
      v9 = *(v3 + v7);
      v10 = *(v3 + v7 + 16);
      *&v29[15] = *(v3 + v7 + 31);
      v28 = v9;
      *v29 = v10;
      v11 = *(v3 + v7 + 16);
      v24 = *(v3 + v7);
      *v25 = v11;
      *&v25[15] = *(v3 + v7 + 31);
      sub_1AF7D495C(&v28, &v22);
      sub_1AF7C17D4(&v24, v8, &v26);
      v20 = v24;
      v21[0] = *v25;
      *(v21 + 15) = *&v25[15];
      sub_1AF7D4994(&v20);
      *&v23[15] = *&v27[15];
      v22 = v26;
      *v23 = *v27;
      v30 = v5;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1AFC071B4(v12 > 1, v13 + 1, 1);
        v8 = a2;
        v5 = v30;
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 40 * v13;
      v15 = v22;
      v16 = *v23;
      *(v14 + 63) = *&v23[15];
      *(v14 + 32) = v15;
      *(v14 + 48) = v16;
      if (!v6)
      {
        break;
      }

      --v6;
      v7 += 40;
    }

    v2 = v18;
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1AF7C17D4@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  v65 = *(a1 + 33);
  v66 = *(a1 + 32);
  ObjectType = swift_getObjectType();
  v67 = v4;
  v68 = v5;
  v62 = sub_1AF62C7C0(v5 | (v4 << 32), 0, ObjectType, a2);
  v63 = v7;
  v61 = v11;
  v64 = v6;
  v70 = ObjectType;
  v71 = a2;
  result = sub_1AF62C7C0(v6 | (v7 << 32), 1, ObjectType, a2);
  v60 = result;
  v59 = v13;
  if (v8)
  {
    v14 = *(v8 + 16);
    v15 = MEMORY[0x1E69E7CC0];
    if (v14)
    {
      v77 = MEMORY[0x1E69E7CC0];
      sub_1AFC076A8(0, v14, 0);
      v15 = v77;
      v16 = (v8 + 32);
      do
      {
        v18 = v16[1];
        v17 = v16[2];
        v19 = *v16;
        v76 = *(v16 + 6);
        *&v74[16] = v18;
        v75 = v17;
        *v74 = v19;
        v20 = v19;
        v21 = DWORD1(v19);
        v22 = v15;
        sub_1AF7D4D04(v74, v73);
        v23 = sub_1AF62C7C0(v20 | (v21 << 32), 0, v70, v71);
        if (v24)
        {
          v25 = v20;
        }

        else
        {
          v25 = v23;
        }

        if ((v24 & 1) == 0)
        {
          LODWORD(v21) = HIDWORD(v23);
        }

        v27 = *(&v75 + 1);
        v26 = v76;
        v28 = v75;

        result = sub_1AF7D4D3C(v74);
        v15 = v22;
        v77 = v22;
        v29 = *(v22 + 16);
        v30 = *(v15 + 24);
        if (v29 >= v30 >> 1)
        {
          result = sub_1AFC076A8(v30 > 1, v29 + 1, 1);
          v15 = v77;
        }

        v31 = *&v74[24];
        v32 = *&v74[8];
        v33 = v15 + 56 * v29;
        *(v15 + 16) = v29 + 1;
        *(v33 + 32) = v25;
        *(v33 + 36) = v21;
        *(v33 + 40) = v32;
        *(v33 + 56) = v31;
        *(v33 + 64) = v28;
        *(v33 + 72) = v27;
        *(v33 + 80) = v26;
        v16 = (v16 + 56);
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    v15 = 0;
  }

  v34 = *(v9 + 16);
  v35 = MEMORY[0x1E69E7CC0];
  if (v34)
  {
    v58 = v15;
    v77 = MEMORY[0x1E69E7CC0];
    sub_1AFC076A8(0, v34, 0);
    v35 = v77;
    v36 = (v9 + 32);
    do
    {
      v38 = v36[1];
      v37 = v36[2];
      v39 = *v36;
      v76 = *(v36 + 6);
      *&v74[16] = v38;
      v75 = v37;
      *v74 = v39;
      v40 = v39;
      v41 = DWORD1(v39);
      sub_1AF7D4D04(v74, v73);
      v42 = sub_1AF62C7C0(v40 | (v41 << 32), 0, v70, v71);
      if (v43)
      {
        v44 = v40;
      }

      else
      {
        v44 = v42;
      }

      v72 = v44;
      if (v43)
      {
        v45 = v41;
      }

      else
      {
        v45 = HIDWORD(v42);
      }

      v47 = *(&v75 + 1);
      v46 = v76;
      v48 = v75;

      result = sub_1AF7D4D3C(v74);
      v77 = v35;
      v50 = *(v35 + 16);
      v49 = *(v35 + 24);
      if (v50 >= v49 >> 1)
      {
        result = sub_1AFC076A8(v49 > 1, v50 + 1, 1);
        v35 = v77;
      }

      v51 = *&v74[24];
      v52 = *&v74[8];
      v53 = v35 + 56 * v50;
      *(v35 + 16) = v50 + 1;
      *(v53 + 32) = v72;
      *(v53 + 36) = v45;
      *(v53 + 40) = v52;
      *(v53 + 56) = v51;
      *(v53 + 64) = v48;
      *(v53 + 72) = v47;
      *(v53 + 80) = v46;
      v36 = (v36 + 56);
      --v34;
    }

    while (v34);
    v15 = v58;
  }

  v54 = HIDWORD(v60);
  if (v59)
  {
    LODWORD(v54) = v63;
    v55 = v64;
  }

  else
  {
    v55 = v60;
  }

  v56 = HIDWORD(v62);
  if (v61)
  {
    LODWORD(v56) = v67;
    v57 = v68;
  }

  else
  {
    v57 = v62;
  }

  *a3 = v57;
  *(a3 + 4) = v56;
  *(a3 + 8) = v55;
  *(a3 + 12) = v54;
  *(a3 + 16) = v15;
  *(a3 + 24) = v35;
  *(a3 + 32) = v66;
  *(a3 + 33) = v65;
  *(a3 + 34) = 1;
  return result;
}

void sub_1AF7C1B3C(void *a1@<X8>)
{
  v1 = qword_1EB634218++;
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
  v2 = MEMORY[0x1E69E7CD0];
  a1[2] = MEMORY[0x1E69E7CD0];
  a1[3] = v2;
}

uint64_t destroy for GraphEntityComponentPropertyReferences()
{
}

uint64_t initializeWithCopy for GraphEntityComponentPropertyReferences(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for GraphEntityComponentPropertyReferences(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithTake for GraphEntityComponentPropertyReferences(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for GraphEntityComponentPropertyReferences(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GraphEntityComponentPropertyReferences(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for GraphScriptGroup()
{
}

void *initializeWithCopy for GraphScriptGroup(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *assignWithCopy for GraphScriptGroup(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];

  a1[3] = a2[3];

  return a1;
}

uint64_t assignWithTake for GraphScriptGroup(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t getEnumTagSinglePayload for GraphScriptGroup(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GraphScriptGroup(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1AF7C20C4()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF7C21D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF7DAD30();
  *a1 = result;
  return result;
}

void sub_1AF7C2204(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1852399949;
  v5 = 0xEE00657461647055;
  v6 = 0x656C636974726150;
  if (v2 != 5)
  {
    v6 = 0x7265646E6552;
    v5 = 0xE600000000000000;
  }

  v7 = 0xEC00000074696E49;
  v8 = 0x656C636974726150;
  if (v2 != 3)
  {
    v8 = 0x657461647055;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x6E77617053;
  if (v2 != 1)
  {
    v10 = 1953066569;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1AF7C239C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x100000000) != 0)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v3 = 1;
      }

      else
      {
        v3 = 3;
      }
    }

    else
    {
      v3 = 0;
    }

    return MEMORY[0x1B271ACB0](v3);
  }

  else
  {
    MEMORY[0x1B271ACB0](2);
    return sub_1AFDFF2C8();
  }
}

uint64_t sub_1AF7C2408()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1AFDFF288();
  sub_1AF7C239C(v4, v1 | (v2 << 32));
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF7C247C()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1AFDFF288();
  sub_1AF7C239C(v4, v1 | (v2 << 32));
  return sub_1AFDFF2F8();
}

unint64_t sub_1AF7C24CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF7CDD10(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 4) = BYTE4(result) & 1;
  }

  return result;
}

uint64_t sub_1AF7C2500(void *a1)
{
  v3 = *(v1 + 4);
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v5, v6);
  sub_1AFDFEC28();
  if (!v2 && (v3 & 1) == 0)
  {
    sub_1AF448018(v5, v6);
    sub_1AFDFEC18();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5);
}

BOOL sub_1AF7C25F8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 4) != 1)
  {
    if ((*(a2 + 4) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 == 0.0)
  {
    v4 = LODWORD(v3) == 0;
  }

  else
  {
    if (LODWORD(v2) != 1)
    {
      if (LODWORD(v3) > 1)
      {
        v7 = *(a2 + 4);
      }

      else
      {
        v7 = 0;
      }

      return v7 == 1;
    }

    v4 = LODWORD(v3) == 1;
  }

  if (v4)
  {
    v6 = *(a2 + 4);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

uint64_t sub_1AF7C266C(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v3, v4);
  sub_1AFDFEBE8();
  if (!v1)
  {
    sub_1AF448018(v3, v4);
    sub_1AF75FC0C();
    sub_1AFDFEC38();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v3);
}

double sub_1AF7C275C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF7CDE98(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_1AF7C27C4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1] || (v2 = 0, (sub_1AFDFEE28() & 1) != 0))
  {
    v3 = sub_1AF7FE65C();
    v5 = v4;
    if (v3 == sub_1AF7FE65C() && v5 == v6)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_1AFDFEE28();
    }
  }

  return v2 & 1;
}

uint64_t sub_1AF7C28B4()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF7C298C()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF7C2A50()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF7C2B24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF7C83C0();
  *a1 = result;
  return result;
}

void sub_1AF7C2B54(uint64_t *a1@<X8>)
{
  v2 = 0xEE00617461447265;
  v3 = 0x7355736772416E69;
  v4 = 0xE900000000000073;
  v5 = 0x67724174754F6E69;
  if (*v1 != 2)
  {
    v5 = 0x6E49747069726373;
    v4 = 0xEB00000000786564;
  }

  if (*v1)
  {
    v3 = 0x736772416E69;
    v2 = 0xE600000000000000;
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

uint64_t sub_1AF7C2BE8()
{
  v1 = 0x7355736772416E69;
  v2 = 0x67724174754F6E69;
  if (*v0 != 2)
  {
    v2 = 0x6E49747069726373;
  }

  if (*v0)
  {
    v1 = 0x736772416E69;
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

uint64_t sub_1AF7C2C78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF7C83C0();
  *a1 = result;
  return result;
}

uint64_t sub_1AF7C2CA0(uint64_t a1)
{
  v2 = sub_1AF7DADD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF7C2CDC(uint64_t a1)
{
  v2 = sub_1AF7DADD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF7C2D18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v27 = a2;
  sub_1AF7D4B8C(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v28 = &v26 - v5;
  sub_1AF7DB68C(0, &qword_1EB633AF0, sub_1AF7DADD0, &type metadata for GraphScriptingConfig.ScriptInfo.CodingKeys, MEMORY[0x1E69E6F48]);
  v7 = *(v6 - 8);
  v29 = v6;
  v30 = v7;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for GraphScriptingConfig.ScriptInfo();
  v12 = (v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v15 = 0;
  *(v15 + 1) = 0;
  *(v15 + 2) = sub_1AF432C7C(MEMORY[0x1E69E7CC0]);
  *(v15 + 3) = 0;
  *(v15 + 4) = 0;
  *(v15 + 20) = 1;
  v16 = v12[12];
  v17 = sub_1AFDFC318();
  (*(*(v17 - 8) + 56))(&v15[v16], 1, 1, v17);
  *&v15[v12[13]] = 0;
  v18 = &v15[v12[14]];
  *v18 = 0;
  v18[8] = 1;
  sub_1AF441150(a1, a1[3]);
  sub_1AF7DADD0();
  v19 = v31;
  sub_1AFDFF3B8();
  if (!v19)
  {
    v31 = v16;
    sub_1AF7DB7D4(0, &unk_1EB633C70, &type metadata for GraphScriptingConfig.ScriptArg, MEMORY[0x1E69E62F8]);
    v33 = 1;
    sub_1AF7DAE24();
    v20 = v29;
    sub_1AFDFE6E8();
    *(v15 + 3) = v34;
    v33 = 2;
    sub_1AFDFE6E8();
    *(v15 + 4) = v34;
    LOBYTE(v34) = 3;
    sub_1AF7D5048(&qword_1ED72DF38, MEMORY[0x1E69695A8]);
    v21 = v28;
    sub_1AFDFE6E8();
    sub_1AF7D4BE0(v21, &v15[v31], &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    v23 = v32[3];
    v24 = v32[4];
    sub_1AF441150(v32, v23);
    if (sub_1AF69504C(2010, v23, v24))
    {
      sub_1AF7DB010();
      v33 = 0;
      sub_1AF7A72CC();
    }

    else
    {
      sub_1AF7DAF14();
      v33 = 0;
      sub_1AF7D5048(&qword_1EB6342D8, sub_1AF7DAF14);
    }

    sub_1AFDFE768();
    v25 = v27;
    (*(v30 + 8))(v10, v20);

    *(v15 + 2) = v34;
    sub_1AF7D4B24(v15, v25, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v32);
  return sub_1AF7D48A0(v15, type metadata accessor for GraphScriptingConfig.ScriptInfo);
}

uint64_t sub_1AF7C3228(void *a1)
{
  v3 = v1;
  sub_1AF7DB68C(0, &qword_1EB63EC90, sub_1AF7DADD0, &type metadata for GraphScriptingConfig.ScriptInfo.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF7DADD0();
  sub_1AFDFF3F8();
  v14 = v3[2];
  v13 = 0;
  sub_1AF7DAF14();
  sub_1AF7D5048(&qword_1EB63EC98, sub_1AF7DAF14);
  sub_1AFDFE918();
  if (!v2)
  {
    v14 = v3[3];
    v13 = 1;
    sub_1AF7D5120(0, &qword_1EB63ECA0, &unk_1EB633C70, &type metadata for GraphScriptingConfig.ScriptArg, MEMORY[0x1E69E62F8]);
    sub_1AF7DB078();
    sub_1AFDFE918();
    v14 = v3[4];
    v13 = 2;
    sub_1AFDFE918();
    type metadata accessor for GraphScriptingConfig.ScriptInfo();
    LOBYTE(v14) = 3;
    sub_1AF7D4B8C(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    sub_1AF487378();
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AF7C3500@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  v5 = MEMORY[0x1E69E7CC0];
  *(a3 + 16) = sub_1AF432C7C(MEMORY[0x1E69E7CC0]);
  *(v4 + 40) = 1;
  v6 = type metadata accessor for GraphScriptingConfig.ScriptInfo();
  v7 = v6[10];
  v8 = sub_1AFDFC318();
  (*(*(v8 - 8) + 56))(v4 + v7, 1, 1, v8);
  *(v4 + v6[11]) = 0;
  v9 = v4 + v6[12];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1[1];
  *v4 = *a1;
  *(v4 + 8) = v10;
  v11 = v6[10];

  sub_1AF7D5A10(a1 + v11, v4 + v7);
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  v12 = a1[3];
  if (v12)
  {
    v13 = *(v12 + 16);
    v14 = MEMORY[0x1E69E7CC0];
    if (v13)
    {
      v54 = v4;
      v56 = a1;
      v64 = MEMORY[0x1E69E7CC0];
      sub_1AFC076C8(0, v13, 0);
      v14 = v64;
      v15 = (v12 + 80);
      do
      {
        v59 = v14;
        v16 = *(v15 - 6);
        v17 = *(v15 - 5);
        v18 = *(v15 - 4);
        v19 = *(v15 - 3);
        v20 = *(v15 - 2);
        v21 = *(v15 - 1);
        v22 = *v15;
        v23 = *(a2 + 16);

        sub_1AF687F90(v18, v19);

        v61 = v16;
        if (v23)
        {
          v24 = sub_1AF419914(v16, v17);
          v25 = v17;
          if (v26)
          {
            v27 = (*(a2 + 56) + 16 * v24);
            v25 = v27[1];
            v61 = *v27;
          }
        }

        else
        {
          v25 = v17;
        }

        sub_1AF687F90(v18, v19);

        sub_1AF687FE4(v18, v19);
        v14 = v59;
        v29 = *(v59 + 16);
        v28 = *(v59 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1AFC076C8(v28 > 1, v29 + 1, 1);
          v14 = v59;
        }

        v15 += 7;
        *(v14 + 16) = v29 + 1;
        v30 = (v14 + 56 * v29);
        v30[4] = v61;
        v30[5] = v25;
        v30[6] = v18;
        v30[7] = v19;
        v30[8] = v20;
        v30[9] = v21;
        v30[10] = v22;
        --v13;
      }

      while (v13);
      v4 = v54;
      a1 = v56;
      v5 = MEMORY[0x1E69E7CC0];
    }

    *(v4 + 24) = v14;
    v31 = a1[2];

    sub_1AF7CB88C(v31, v4, a2);

    v32 = a1[4];
    if (v32)
    {
      goto LABEL_13;
    }

LABEL_24:

    return sub_1AF7D48A0(a1, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  }

  v32 = a1[4];
  if (!v32)
  {
    goto LABEL_24;
  }

LABEL_13:
  v33 = *(v32 + 16);
  if (v33)
  {
    v55 = v4;
    v57 = a1;
    sub_1AFC076C8(0, v33, 0);
    v34 = a2;
    v60 = v5;
    v35 = (v32 + 80);
    do
    {
      v58 = v33;
      v36 = *(v35 - 6);
      v37 = *(v35 - 5);
      v38 = *(v35 - 4);
      v39 = *(v35 - 3);
      v40 = *(v35 - 2);
      v41 = *(v35 - 1);
      v42 = *v35;
      v43 = *(v34 + 16);

      sub_1AF687F90(v38, v39);

      v62 = v36;
      if (v43)
      {
        v44 = sub_1AF419914(v36, v37);
        v45 = v37;
        if (v46)
        {
          v47 = (*(a2 + 56) + 16 * v44);
          v45 = v47[1];
          v62 = *v47;
        }
      }

      else
      {
        v45 = v37;
      }

      sub_1AF687F90(v38, v39);

      sub_1AF687FE4(v38, v39);
      v48 = v60;
      v50 = *(v60 + 16);
      v49 = *(v60 + 24);
      v34 = a2;
      if (v50 >= v49 >> 1)
      {
        sub_1AFC076C8(v49 > 1, v50 + 1, 1);
        v34 = a2;
        v48 = v60;
      }

      v35 += 7;
      *(v48 + 16) = v50 + 1;
      v60 = v48;
      v51 = (v48 + 56 * v50);
      v51[4] = v62;
      v51[5] = v45;
      v51[6] = v38;
      v51[7] = v39;
      v51[8] = v40;
      v51[9] = v41;
      v51[10] = v42;
      --v33;
    }

    while (v58 != 1);

    v4 = v55;
    a1 = v57;
    v52 = v60;
  }

  else
  {

    v52 = MEMORY[0x1E69E7CC0];
  }

  sub_1AF7D48A0(a1, type metadata accessor for GraphScriptingConfig.ScriptInfo);

  *(v4 + 32) = v52;
  return result;
}

uint64_t sub_1AF7C399C(uint64_t *a1)
{
  if (*(v1 + 40))
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1AF7C3AC4(a1);
  }

  *(v1 + 40) = v3 & 1;
  v5 = *a1;
  v4 = a1[1];

  *v1 = v5;
  *(v1 + 8) = v4;
  v6 = a1[2];

  *(v1 + 16) = v6;
  v7 = a1[3];

  *(v1 + 24) = v7;
  v8 = a1[4];

  *(v1 + 32) = v8;
  if (*(a1 + 41) != 1)
  {
    if ((v3 & 1) == 0 || v8 && *(v8 + 16))
    {
      *(v1 + 41) = 0;
      goto LABEL_10;
    }

    result = type metadata accessor for GraphScriptingConfig.ScriptInfo();
    if ((*(v1 + *(result + 48) + 8) & 1) != 0 && !*(v1 + *(result + 44)))
    {
      *(v1 + 41) = 0;
      v3 = 1;
      goto LABEL_10;
    }
  }

  v3 = 1;
  *(v1 + 41) = 1;
LABEL_10:
  *(v1 + 40) = v3 & 1;
  return result;
}

uint64_t sub_1AF7C3AC4(void *a1)
{
  v3 = v1[1];
  v4 = a1[1];
  if (v3)
  {
    if (!v4)
    {
      return 1;
    }

    v5 = *v1 == *a1 && v3 == v4;
    if (!v5 && (sub_1AFDFEE28() & 1) == 0)
    {
      return 1;
    }
  }

  else if (v4)
  {
    return 1;
  }

  v6 = v1[3];
  v7 = a1[3];
  if (v6)
  {
    if (!v7)
    {
      return 1;
    }

    v8 = sub_1AFB7BD5C(v6, v7);

    if ((v8 & 1) == 0)
    {
      return 1;
    }
  }

  else if (v7)
  {
    return 1;
  }

  v9 = v1[4];
  v10 = a1[4];
  if (!v9)
  {
    if (!v10)
    {
      goto LABEL_20;
    }

    return 1;
  }

  if (!v10)
  {
    return 1;
  }

  v11 = sub_1AFB7BD5C(v9, v10);

  if ((v11 & 1) == 0)
  {
    return 1;
  }

LABEL_20:
  v12 = v1[2];
  v13 = a1[2];

  v14 = sub_1AF7FE534(v12, v13);

  if ((v14 & 1) == 0)
  {
    return 1;
  }

  v15 = 1 << *(v12 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v12 + 64);
  v18 = (v15 + 63) >> 6;

  v19 = 0;
  while (v17)
  {
LABEL_28:
    v21 = (*(v12 + 48) + ((v19 << 10) | (16 * __clz(__rbit64(v17)))));
    v23 = *v21;
    v22 = v21[1];
    v24 = *(v12 + 16);

    if (v24 && (sub_1AF419914(v23, v22), (v25 & 1) != 0))
    {

      if (!*(v13 + 16))
      {
        goto LABEL_31;
      }
    }

    else if (!*(v13 + 16))
    {
LABEL_31:

LABEL_35:
      v29 = 0;
      goto LABEL_36;
    }

    v26 = sub_1AF419914(v23, v22);
    v28 = v27;

    if ((v28 & 1) == 0)
    {
      goto LABEL_35;
    }

    v29 = *(*(v13 + 56) + 8 * v26);

LABEL_36:
    v17 &= v17 - 1;
    v30 = sub_1AF7FD6CC(v29);

    if ((v30 & 1) == 0)
    {
      v31 = 1;
      goto LABEL_40;
    }
  }

  while (1)
  {
    v20 = v19 + 1;
    if (v19 + 1 >= v18)
    {
      break;
    }

    v17 = *(v12 + 72 + 8 * v19++);
    if (v17)
    {
      v19 = v20;
      goto LABEL_28;
    }
  }

  v31 = 0;
LABEL_40:

  return v31;
}

uint64_t sub_1AF7C3D44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1AF7D4B8C(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v48 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v43 - v10;
  v47 = sub_1AFDFC318();
  v12 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v13);
  v46 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for GraphScriptingConfig.ScriptInfo();
  v16 = v15[11];
  v17 = *(v2 + v16);
  if (!v17)
  {
    goto LABEL_4;
  }

  ObjectType = swift_getObjectType();
  v19 = *(v17 + 24);

  v20 = sub_1AF62C7C0(v19, 0, ObjectType, a2);
  if (v21)
  {

LABEL_4:
    v22 = 0;
    goto LABEL_6;
  }

  v44 = HIDWORD(v20);
  v45 = v12;
  v23 = *(v17 + 16);
  v24 = v20;
  swift_unownedRetainStrong();
  v43 = *(v17 + 32);

  type metadata accessor for VFXAttribute();
  v22 = swift_allocObject();
  *(v22 + 16) = v23;
  *(v22 + 24) = v24;
  v12 = v45;
  *(v22 + 28) = v44;
  *(v22 + 32) = v43;
  swift_unownedRetain();

LABEL_6:
  *(v2 + v16) = v22;
  v25 = v2 + v15[12];
  if (*(v25 + 8))
  {
    v26 = 0;
    v27 = 1;
  }

  else
  {
    v28 = *v25;
    v29 = swift_getObjectType();
    v30 = sub_1AF62C7C0(v28, 0, v29, a2);
    if (v27)
    {
      v26 = 0;
    }

    else
    {
      v26 = v30;
    }
  }

  *v25 = v26;
  *(v25 + 8) = v27 & 1;
  *(v2 + 40) = 1;
  v31 = swift_getObjectType();
  v32 = *(a2 + 32);
  result = v32(v31, a2);
  if (result)
  {
    v34 = v15[10];
    sub_1AF7D4AB8(v2 + v34, v11, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    v35 = *(v12 + 48);
    v36 = v12;
    v37 = v47;
    if (v35(v11, 1, v47) == 1)
    {
      return sub_1AF7D4900(v11, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    }

    else
    {
      v44 = v34;
      v45 = v36;
      v38 = *(v36 + 32);
      v38(v46, v11, v37);
      if (v32(v31, a2))
      {
        v39 = v46;
        (*(a2 + 24))(v46, 0x6E49747069726353, 0xEB00000000786564, sub_1AF8208AC, 0, v31, a2);
        v40 = v45;
        (*(v45 + 8))(v39, v37);
        v41 = v40;
      }

      else
      {
        v38(v48, v46, v37);
        v41 = v45;
      }

      v42 = v48;
      (*(v41 + 56))(v48, 0, 1, v37);
      return sub_1AF7D4BE0(v42, v3 + v44, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    }
  }

  return result;
}

uint64_t sub_1AF7C41C0(unint64_t a1)
{
  sub_1AF7D4B8C(0, &qword_1EB634090, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26[-v9];
  v11 = *(v1 + 16);
  v12 = HIDWORD(a1) & 1;
  if (*(v11 + 16))
  {
    v13 = a1;
    v14 = sub_1AF419B74(a1 | (v12 << 32));
    if (v15)
    {
      v16 = v14;
      v17 = *(v11 + 56);
      v18 = type metadata accessor for GraphScriptingConfig.ScriptInfo();
      v19 = *(v18 - 8);
      sub_1AF7D4B24(v17 + *(v19 + 72) * v16, v10, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      (*(v19 + 56))(v10, 0, 1, v18);
      return sub_1AF7D4900(v10, &qword_1EB634090, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    }
  }

  else
  {
    v13 = a1;
  }

  v21 = type metadata accessor for GraphScriptingConfig.ScriptInfo();
  v22 = *(*(v21 - 1) + 56);
  v22(v10, 1, 1, v21);
  sub_1AF7D4900(v10, &qword_1EB634090, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  *(v6 + 2) = sub_1AF432C7C(MEMORY[0x1E69E7CC0]);
  *(v6 + 20) = 1;
  v23 = v21[10];
  v24 = sub_1AFDFC318();
  (*(*(v24 - 8) + 56))(&v6[v23], 1, 1, v24);
  *&v6[v21[11]] = 0;
  v25 = &v6[v21[12]];
  *v25 = 0;
  v25[8] = 1;
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 3) = 0;
  *(v6 + 4) = 0;
  v22(v6, 0, 1, v21);
  return sub_1AF82502C(v6, v13 | (v12 << 32));
}

uint64_t sub_1AF7C4488()
{
  v1 = type metadata accessor for GraphScriptingConfig.ScriptInfo();
  v33 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v32 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v31 = &v28 - v6;
  v29 = v0;
  v7 = *(v0 + 16);
  sub_1AF7DB54C(0, &qword_1EB633B90, MEMORY[0x1E69E6EC8]);
  v8 = sub_1AFDFE598();
  v9 = 0;
  v10 = 1 << *(v7 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v7 + 64);
  v13 = (v10 + 63) >> 6;
  v34 = v8;
  v30 = v8 + 64;
  v14 = v32;
  if (v12)
  {
    do
    {
      v39 = (v12 - 1) & v12;
      v15 = __clz(__rbit64(v12)) | (v9 << 6);
LABEL_9:
      v36 = 8 * v15;
      v19 = *(v7 + 56);
      v20 = *(v7 + 48) + 8 * v15;
      v21 = *v20;
      v37 = *(v20 + 4);
      v38 = v21;
      v35 = *(v33 + 72) * v15;
      v22 = v31;
      sub_1AF7D4B24(v19 + v35, v31, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      sub_1AF7D4B24(v22, v14, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      v23 = sub_1AF7D0704(*(v14 + 16), &unk_1F2500820);
      swift_arrayDestroy();
      sub_1AF7D48A0(v22, type metadata accessor for GraphScriptingConfig.ScriptInfo);

      *(v14 + 16) = v23;
      *(v30 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v24 = v34;
      v25 = *(v34 + 48) + v36;
      v26 = v37;
      *v25 = v38;
      *(v25 + 4) = v26;
      sub_1AF0D6D20(v14, *(v24 + 56) + v35, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      ++*(v24 + 16);
      v12 = v39;
    }

    while (v39);
  }

  v16 = v9 << 6;
  while (1)
  {
    v17 = v9 + 1;
    if (v9 + 1 >= v13)
    {
      break;
    }

    v18 = *(v7 + 8 * v9 + 72);
    v16 += 64;
    ++v9;
    if (v18)
    {
      v39 = (v18 - 1) & v18;
      v15 = __clz(__rbit64(v18)) + v16;
      v9 = v17;
      goto LABEL_9;
    }
  }

  *(v29 + 16) = v34;
  return result;
}

uint64_t sub_1AF7C478C()
{
  v1 = &qword_1ED72DF30;
  sub_1AF7D4B8C(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v50 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v47 - v7;
  v9 = type metadata accessor for GraphScriptingConfig.ScriptInfo();
  v55 = *(v9 - 8);
  v56 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v54 = &v47 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v47 - v18;
  v48 = v0;
  v20 = *(v0 + 16);
  sub_1AF7DB54C(0, &qword_1EB633B90, MEMORY[0x1E69E6EC8]);
  v21 = sub_1AFDFE598();
  v22 = 0;
  v23 = 1 << *(v20 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v20 + 64);
  v26 = (v23 + 63) >> 6;
  v57 = v21;
  v52 = v21 + 64;
  v53 = v19;
  v49 = v8;
  while (v25)
  {
    v63 = (v25 - 1) & v25;
    v31 = __clz(__rbit64(v25)) | (v22 << 6);
LABEL_12:
    v35 = *(v20 + 48);
    v36 = *(v20 + 56);
    v62 = 8 * v31;
    v37 = (v35 + 8 * v31);
    v38 = *v37;
    v59 = *(v37 + 4);
    v60 = v38;
    v61 = *(v55 + 72) * v31;
    sub_1AF7D4B24(v36 + v61, v19, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    sub_1AF7D4B24(v19, v12, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    v58 = *(v56 + 40);
    sub_1AF7D4AB8(&v12[v58], v8, v1, MEMORY[0x1E69695A8]);
    v39 = sub_1AFDFC318();
    v40 = v12;
    v41 = v19;
    v42 = v1;
    v43 = *(v39 - 8);
    if ((*(v43 + 48))(v8, 1, v39) == 1)
    {
      sub_1AF7D48A0(v41, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      sub_1AF7D4900(v8, v42, MEMORY[0x1E69695A8]);
    }

    else
    {
      v51 = MEMORY[0x1E69695A8];
      sub_1AF7D4900(v8, v42, MEMORY[0x1E69695A8]);
      v44 = v50;
      sub_1AFDFC308();
      sub_1AF7D48A0(v41, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      (*(v43 + 56))(v44, 0, 1, v39);
      v45 = v44;
      v8 = v49;
      sub_1AF7D4BE0(v45, v40 + v58, v42, v51);
    }

    v1 = v42;
    v27 = v54;
    sub_1AF0D6D20(v40, v54, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    *(v52 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    v28 = v57;
    v29 = *(v57 + 48) + v62;
    v30 = v59;
    *v29 = v60;
    *(v29 + 4) = v30;
    sub_1AF0D6D20(v27, *(v28 + 56) + v61, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    ++*(v28 + 16);
    v12 = v40;
    v19 = v53;
    v25 = v63;
  }

  v32 = v22 << 6;
  while (1)
  {
    v33 = v22 + 1;
    if (v22 + 1 >= v26)
    {
      break;
    }

    v34 = *(v20 + 8 * v22 + 72);
    v32 += 64;
    ++v22;
    if (v34)
    {
      v63 = (v34 - 1) & v34;
      v31 = __clz(__rbit64(v34)) + v32;
      v22 = v33;
      goto LABEL_12;
    }
  }

  *(v48 + 16) = v57;
  return result;
}

uint64_t sub_1AF7C4C58()
{
  sub_1AF7DB7D4(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for GraphScriptingConfig.Mode;
  sub_1AF7DB7D4(0, &qword_1EB63BD70, &type metadata for GraphScriptingConfig.Mode, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF7DB79C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF7DB7C8;
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
  *(v4 + 16) = 1701080941;
  *(v4 + 24) = 0xE400000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for GraphScriptingConfig.Mode;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
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
  if (v6 && v2)
  {
    *(v4 + 160) = (*(v6 + 8))(v2, v6);
  }

  *(v4 + 64) = sub_1AF7DB824;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C3208 = v0;
  return result;
}

uint64_t sub_1AF7C4F00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF7C8374();
  *a1 = result;
  return result;
}

unint64_t sub_1AF7C4F30@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701080941;
  v5 = 0xE800000000000000;
  v6 = 0x65676175676E616CLL;
  v7 = 0x65746172656E6567;
  if (v2 != 6)
  {
    v6 = 0x65746172656E6567;
    v5 = 0xED00006174614464;
  }

  v8 = 0xEF736772416E4964;
  if (v2 != 4)
  {
    v7 = 0xD000000000000012;
    v8 = 0x80000001AFF23C80;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xED000065646F4364;
  v10 = 0x65746172656E6567;
  result = 0xD00000000000001ALL;
  if (v2 != 2)
  {
    v10 = 0xD00000000000001ALL;
    v9 = 0x80000001AFF23C50;
  }

  if (*v1)
  {
    v4 = 0xD000000000000023;
    v3 = 0x80000001AFF23C10;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v12;
  a1[1] = v3;
  return result;
}

unint64_t sub_1AF7C5040()
{
  v1 = *v0;
  v2 = 1701080941;
  v3 = 0x65676175676E616CLL;
  v4 = 0x65746172656E6567;
  if (v1 != 6)
  {
    v3 = 0x65746172656E6567;
  }

  if (v1 != 4)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x65746172656E6567;
  if (v1 != 2)
  {
    v5 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v2 = 0xD000000000000023;
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

uint64_t sub_1AF7C514C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF7C8374();
  *a1 = result;
  return result;
}

uint64_t sub_1AF7C5174(uint64_t a1)
{
  v2 = sub_1AF7DB20C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF7C51B0(uint64_t a1)
{
  v2 = sub_1AF7DB20C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF7C51EC(void *a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  v17 = a3;
  v18 = a4;
  sub_1AF7DB68C(0, &qword_1EB63ECD0, sub_1AF7DB20C, &type metadata for GraphScriptingConfig.CodingKeys, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v16 - v11;
  sub_1AF441150(a1, a1[3]);
  sub_1AF7DB20C();
  sub_1AFDFF3F8();
  LOBYTE(v19) = a2;
  v20 = 0;
  sub_1AF7DB6F4();
  sub_1AFDFE918();
  if (!v4)
  {
    v14 = v17;
    v13 = v18;
    LOBYTE(v19) = HIBYTE(a2);
    v20 = 6;
    sub_1AF7DB748();
    sub_1AFDFE918();
    v19 = v14;
    v20 = 1;
    sub_1AF7D5530(0, &qword_1EB6342C0, sub_1AF47F798, sub_1AF47F894);
    sub_1AF7D55DC();
    sub_1AFDFE918();
    v19 = v13;
    v20 = 7;
    sub_1AF7DB2B4();
    sub_1AF7D5048(&qword_1EB63ECE8, sub_1AF7DB2B4);
    sub_1AFDFE918();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1AF7C54A8(uint64_t *a1, void *a2, char **a3)
{
  v4 = v3;
  sub_1AF7D4B8C(0, &qword_1EB634090, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v92 - v14;
  v16 = type metadata accessor for GraphScriptingConfig.ScriptInfo();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  MEMORY[0x1EEE9AC00](v19, v20);
  v23 = a2[16];
  v24 = *(v23 + 16);
  if (!v24)
  {
LABEL_30:
    v63 = sub_1AF6B0C68(&v105, a1 | (((a1 >> 32) & 1) << 32));
    v65 = v64;
    if (!(*(v17 + 48))(v64, 1, v16))
    {
      *v65 = 0;
      *(v65 + 8) = 0;

      *(v65 + 24) = 0;

      *(v65 + 32) = 0;

      *(v65 + 40) = 257;
    }

    return (v63)(&v105, 0);
  }

  v100 = a3;
  v101 = a1;
  v93 = (&v92 - v21);
  v92 = v22;
  v94 = v11;
  v102 = v17;
  v104 = v16;
  v95 = v15;
  LODWORD(v97) = *v4;
  v25 = *(v4 + 1);
  v26 = *(v4 + 2);
  v103 = v4;
  v105 = 0;
  v106 = 0xE000000000000000;
  v99 = v25;

  v98 = v26;

  v96 = v23;
  v27 = (v23 + 40);
  do
  {
    v28 = *v27;
    v110 = *(v27 - 1);
    v111 = v28;
    strcpy(v109, "$DOMAIN$");
    BYTE1(v109[1]) = 0;
    WORD1(v109[1]) = 0;
    HIDWORD(v109[1]) = -402653184;
    v107 = 34;
    v108 = 0xE100000000000000;
    v29 = a2[11];
    v30 = a2[12];

    MEMORY[0x1B2718AE0](v29, v30);

    MEMORY[0x1B2718AE0](34, 0xE100000000000000);
    sub_1AF4486E4();
    v31 = sub_1AFDFDEB8();
    v32 = a2;
    v34 = v33;

    MEMORY[0x1B2718AE0](v31, v34);

    a2 = v32;

    v27 += 2;
    --v24;
  }

  while (v24);

  v35 = 0xE400000000000000;
  v36 = 1852399949;
  v37 = 0x656C636974726150;
  if (v97 != 5)
  {
    v37 = 0x7265646E6552;
  }

  v110 = 0x4F4954434E55463CLL;
  v111 = 0xEF3E454D414E5F4ELL;
  if (v97 == 5)
  {
    v38 = 0xEE00657461647055;
  }

  else
  {
    v38 = 0xE600000000000000;
  }

  v39 = 0xEC00000074696E49;
  v40 = 0x656C636974726150;
  if (v97 != 3)
  {
    v40 = 0x657461647055;
    v39 = 0xE600000000000000;
  }

  if (v97 > 4)
  {
    v39 = v38;
  }

  else
  {
    v37 = v40;
  }

  v41 = 0xE500000000000000;
  v42 = 0x6E77617053;
  if (v97 != 1)
  {
    v42 = 1953066569;
    v41 = 0xE400000000000000;
  }

  if (v97)
  {
    v36 = v42;
    v35 = v41;
  }

  if (v97 <= 2)
  {
    v43 = v36;
  }

  else
  {
    v43 = v37;
  }

  if (v97 <= 2)
  {
    v44 = v35;
  }

  else
  {
    v44 = v39;
  }

  v109[0] = v43;
  v109[1] = v44;
  v45 = sub_1AFDFDEB8();
  v47 = v46;

  v105 = v45;
  v106 = v47;
  v110 = 0x5F54554F205F202CLL;
  v111 = 0xE800000000000000;
  strcpy(v109, "\n\t\t\t , _ OUT_");
  HIWORD(v109[1]) = -4864;
  v48 = sub_1AFDFDEB8();
  v50 = v49;

  v105 = v48;
  v106 = v50;
  v110 = 0x5F4E49205F202CLL;
  v111 = 0xE700000000000000;
  strcpy(v109, "\n\t\t\t , _ IN_");
  BYTE5(v109[1]) = 0;
  HIWORD(v109[1]) = -5120;
  v97 = sub_1AFDFDEB8();
  v52 = v51;

  v53 = v103;
  v54 = v32[14];
  v55 = v100;
  if (v54 >> 62)
  {
    _s13ParameterBaseCMa();

    v56 = sub_1AFDFE528();
  }

  else
  {
    swift_bridgeObjectRetain_n();

    sub_1AFDFEF88();
    v56 = v54;
  }

  v57 = sub_1AF7D89B0(v56);

  v58 = v32[15];
  if (v58 >> 62)
  {
    _s13ParameterBaseCMa();

    v59 = sub_1AFDFE528();
  }

  else
  {
    swift_bridgeObjectRetain_n();

    sub_1AFDFEF88();
    v59 = v58;
  }

  v60 = sub_1AF7D89B0(v59);

  v105 = sub_1AF432C7C(MEMORY[0x1E69E7CC0]);

  sub_1AF7BA018(v61, &v105);

  sub_1AF7BA4D0(v62, v55);

  if (*(*v55 + 2))
  {

    v16 = v104;
    a1 = v101;
    v17 = v102;
    goto LABEL_30;
  }

  v67 = (v101 >> 32) & 1;
  LOBYTE(v110) = BYTE4(v101) & 1;
  v68 = v101;
  sub_1AF7C41C0(v101 | ((BYTE4(v101) & 1) << 32));
  v69 = v105;

  sub_1AF432C7C(MEMORY[0x1E69E7CC0]);
  v100 = v57;
  v70 = v52;
  v71 = v93;
  *(v93 + 20) = 1;
  v72 = v104;
  v73 = *(v104 + 40);
  v74 = sub_1AFDFC318();
  (*(*(v74 - 8) + 56))(v71 + v73, 1, 1, v74);

  *(v71 + *(v72 + 44)) = 0;
  v75 = v71 + *(v72 + 48);
  *v75 = 0;
  v75[8] = 1;
  *v71 = v97;
  v71[1] = v70;
  v101 = v69;
  v76 = v100;
  v71[2] = v69;
  v71[3] = v76;
  v71[4] = v60;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v110 = *(v53 + 2);
  v78 = v110;
  *(v53 + 2) = 0x8000000000000000;
  LOBYTE(v109[0]) = v67;
  v80 = sub_1AF419B74(v68 | (v67 << 32));
  v81 = v79;
  v82 = *(v78 + 16) + ((v79 & 1) == 0);
  if (*(v78 + 24) >= v82)
  {
    v85 = v94;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v79 & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      sub_1AF8494C8();
      if ((v81 & 1) == 0)
      {
        goto LABEL_46;
      }
    }
  }

  else
  {
    sub_1AF835420(v82, isUniquelyReferenced_nonNull_native);
    v83 = sub_1AF419B74(v68 | (v67 << 32));
    v85 = v94;
    if ((v81 & 1) != (v84 & 1))
    {
LABEL_47:
      result = sub_1AFDFF1A8();
      __break(1u);
      return result;
    }

    v80 = v83;
    if ((v81 & 1) == 0)
    {
LABEL_46:
      (*(v102 + 56))(v95, 1, 1, v104);
      __break(1u);
      goto LABEL_47;
    }
  }

  v86 = v110;
  v87 = v102;
  v88 = *(v102 + 72) * v80;
  v89 = v95;
  sub_1AF0D6D20(*(v110 + 56) + v88, v95, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  v90 = v104;
  (*(v87 + 56))(v89, 0, 1, v104);
  sub_1AF7C399C(v71);
  sub_1AF7D48A0(v71, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  sub_1AF7D4AB8(v89, v85, &qword_1EB634090, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  if ((*(v87 + 48))(v85, 1, v90) == 1)
  {
    sub_1AF7D4900(v85, &qword_1EB634090, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    sub_1AF6B3BBC(v80, v86);
  }

  else
  {
    v91 = v92;
    sub_1AF0D6D20(v85, v92, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    sub_1AF0D6D20(v91, *(v86 + 56) + v88, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  }

  sub_1AF7D4900(v89, &qword_1EB634090, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  *(v53 + 2) = v86;
}
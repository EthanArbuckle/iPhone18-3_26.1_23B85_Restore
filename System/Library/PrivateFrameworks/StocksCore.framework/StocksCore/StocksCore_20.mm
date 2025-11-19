uint64_t sub_1DAC0EA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, int a6)
{
  v77 = a6;
  v112 = a5;
  v86 = sub_1DACB7664();
  v10 = *(*(v86 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v86);
  v85 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = a2;
  if (a3 != a2)
  {
    v14 = *a4;
    v84 = (v12 + 8);
    v76 = v14;
    v15 = (v14 + 136 * a3);
    v16 = a1 - a3 + 1;
LABEL_6:
    v74 = v15;
    v75 = a3;
    v73 = v16;
    v78 = v16;
    while (1)
    {
      v96[0] = *v15;
      v17 = v15[1];
      v18 = v15[2];
      v19 = v15[4];
      v98 = v15[3];
      v99 = v19;
      v96[1] = v17;
      v97 = v18;
      v20 = v15[5];
      v21 = v15[6];
      v22 = v15[7];
      v103 = *(v15 + 16);
      v101 = v21;
      v102 = v22;
      v100 = v20;
      v104[0] = *(v15 - 136);
      v23 = *(v15 - 120);
      v24 = *(v15 - 104);
      v25 = *(v15 - 72);
      v106 = *(v15 - 88);
      v107 = v25;
      v104[1] = v23;
      v105 = v24;
      v26 = *(v15 - 56);
      v27 = *(v15 - 40);
      v28 = *(v15 - 24);
      v111 = *(v15 - 1);
      v109 = v27;
      v110 = v28;
      v108 = v26;
      v29 = v97;
      v30 = v112[5];
      v31 = v112[6];
      __swift_project_boxed_opaque_existential_1(v112 + 2, v30);
      v32 = *(v31 + 8);
      sub_1DAA806E4(v96, &v87);
      sub_1DAA806E4(v104, &v87);
      v33 = v32(v29, *(&v29 + 1), 0, v30, v31);
      if (v34)
      {
        v35 = v33;
      }

      else
      {
        v35 = 0;
      }

      if (v34)
      {
        v36 = v34;
      }

      else
      {
        v36 = 0xE000000000000000;
      }

      v37 = HIBYTE(v36) & 0xF;
      if ((v36 & 0x2000000000000000) == 0)
      {
        v37 = v35 & 0xFFFFFFFFFFFFLL;
      }

      if (!v37)
      {

        v36 = sub_1DACB71E4();
        v35 = v29;
      }

      v83 = v36;
      v79 = v105;
      *&v87 = v35;
      *(&v87 + 1) = v36;
      v38 = v85;
      sub_1DACB7614();
      v39 = sub_1DAA642D8();
      v40 = sub_1DACB9B34();
      v42 = v41;
      v81 = v41;
      v43 = *v84;
      v44 = v86;
      (*v84)(v38, v86);

      *&v87 = v40;
      *(&v87 + 1) = v42;
      sub_1DACB7644();
      v82 = v39;
      sub_1DACB9B34();
      v45 = v44;
      v46 = v79;
      v80 = v43;
      v43(v38, v45);
      v47 = *(&v79 + 1);

      v81 = sub_1DACB93B4();
      v83 = v48;

      v50 = v112[5];
      v49 = v112[6];
      __swift_project_boxed_opaque_existential_1(v112 + 2, v50);
      v51 = (*(v49 + 8))(v46, v47, 0, v50, v49);
      if (v52)
      {
        v53 = v51;
      }

      else
      {
        v53 = 0;
      }

      if (v52)
      {
        v54 = v52;
      }

      else
      {
        v54 = 0xE000000000000000;
      }

      v55 = HIBYTE(v54) & 0xF;
      if ((v54 & 0x2000000000000000) == 0)
      {
        v55 = v53 & 0xFFFFFFFFFFFFLL;
      }

      if (!v55)
      {

        sub_1DACB71E4();
        v53 = v46;
        v54 = v47;
      }

      *&v87 = v53;
      *(&v87 + 1) = v54;
      v56 = v85;
      sub_1DACB7614();
      *(&v79 + 1) = sub_1DACB9B34();
      v58 = v57;
      v59 = v86;
      v60 = v80;
      v80(v56, v86);

      *&v87 = *(&v79 + 1);
      *(&v87 + 1) = v58;
      sub_1DACB7644();
      sub_1DACB9B34();
      v60(v56, v59);

      v61 = sub_1DACB93B4();
      v63 = v62;

      if (v77)
      {
        if (v61 == v81 && v63 == v83)
        {
          goto LABEL_4;
        }
      }

      else if (v81 == v61 && v83 == v63)
      {
LABEL_4:

        sub_1DAA9B1C8(v104);
        result = sub_1DAA9B1C8(v96);
LABEL_5:
        a3 = v75 + 1;
        v15 = (v74 + 136);
        v16 = v73 - 1;
        if (v75 + 1 == v72)
        {
          return result;
        }

        goto LABEL_6;
      }

      v64 = sub_1DACBA174();

      sub_1DAA9B1C8(v104);
      result = sub_1DAA9B1C8(v96);
      v65 = v78;
      if ((v64 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v76)
      {
        break;
      }

      v66 = v15 - 136;
      v92 = v15[5];
      v93 = v15[6];
      v94 = v15[7];
      v95 = *(v15 + 16);
      v88 = v15[1];
      v89 = v15[2];
      v90 = v15[3];
      v91 = v15[4];
      v87 = *v15;
      v67 = *(v15 - 56);
      v15[4] = *(v15 - 72);
      v15[5] = v67;
      v68 = *(v15 - 24);
      v15[6] = *(v15 - 40);
      v15[7] = v68;
      *(v15 + 16) = *(v15 - 1);
      v69 = *(v15 - 88);
      v15[2] = *(v15 - 104);
      v15[3] = v69;
      v70 = *(v15 - 120);
      *v15 = *(v15 - 136);
      v15[1] = v70;
      *(v66 + 64) = v91;
      *(v66 + 80) = v92;
      *(v66 + 96) = v93;
      *(v66 + 112) = v94;
      *(v66 + 128) = v95;
      *(v66 + 16) = v88;
      *(v66 + 32) = v89;
      *(v66 + 48) = v90;
      *v66 = v87;
      if (!v65)
      {
        goto LABEL_5;
      }

      v78 = v65 + 1;
      v15 = (v15 - 136);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DAC0F05C(uint64_t *a1, void *a2, char a3)
{
  v6 = a1[1];
  swift_retain_n();
  result = sub_1DACBA104();
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
        v10 = sub_1DACB96C4();
        *(v10 + 16) = v9;
      }

      v11[0] = (v10 + 32);
      v11[1] = v9;
      sub_1DACB71F4();
      sub_1DAC0D8E8(v11, v12, a1, v8, a2, a3 & 1);

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
    sub_1DACB71F4();
    sub_1DAC0EA78(0, v6, 1, a1, a2, a3 & 1);
  }
}

uint64_t sub_1DAC0F1B8(char **a1, uint64_t a2, char a3, void (*a4)(void *, uint64_t, void))
{
  v8 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1DACA671C(v8);
  }

  v9 = *(v8 + 2);
  v11[0] = v8 + 32;
  v11[1] = v9;
  sub_1DACB71F4();
  a4(v11, a2, a3 & 1);

  *a1 = v8;
}

uint64_t sub_1DAC0F278(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Quote();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAC0F2DC(uint64_t a1)
{
  v2 = type metadata accessor for Quote();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAC0F35C(uint64_t a1, _OWORD *a2)
{
  sub_1DAA7BD0C(0, qword_1EE11EF28, type metadata accessor for SymbolEntity, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-v9];
  sub_1DAAA2D3C(a1, &v17[-v9], qword_1EE11EF28, type metadata accessor for SymbolEntity);
  v11 = a2[9];
  v18[8] = a2[8];
  v18[9] = v11;
  v18[10] = a2[10];
  v12 = a2[5];
  v18[4] = a2[4];
  v18[5] = v12;
  v13 = a2[7];
  v18[6] = a2[6];
  v18[7] = v13;
  v14 = a2[1];
  v18[0] = *a2;
  v18[1] = v14;
  v15 = a2[3];
  v18[2] = a2[2];
  v18[3] = v15;
  sub_1DAAA2D3C(v10, v8, qword_1EE11EF28, type metadata accessor for SymbolEntity);
  sub_1DAC1435C(v18, v17);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v10, qword_1EE11EF28, type metadata accessor for SymbolEntity);
  return sub_1DABBB588(v18);
}

uint64_t sub_1DAC0F4C8(uint64_t a1)
{
  sub_1DAA7BD0C(0, qword_1EE11EF28, type metadata accessor for SymbolEntity, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = *v1;
  sub_1DAAA2D3C(a1, &v8 - v6, qword_1EE11EF28, type metadata accessor for SymbolEntity);
  sub_1DACB6EE4();
  return sub_1DAAA2DBC(a1, qword_1EE11EF28, type metadata accessor for SymbolEntity);
}

uint64_t (*sub_1DAC0F5A4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC0F660(uint64_t a1, _OWORD *a2)
{
  v4 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18[-v10];
  sub_1DAAA2D3C(a1, &v18[-v10], &qword_1EE11F180, v4);
  v12 = a2[9];
  v19[8] = a2[8];
  v19[9] = v12;
  v19[10] = a2[10];
  v13 = a2[5];
  v19[4] = a2[4];
  v19[5] = v13;
  v14 = a2[7];
  v19[6] = a2[6];
  v19[7] = v14;
  v15 = a2[1];
  v19[0] = *a2;
  v19[1] = v15;
  v16 = a2[3];
  v19[2] = a2[2];
  v19[3] = v16;
  sub_1DAAA2D3C(v11, v9, &qword_1EE11F180, v4);
  sub_1DAC1435C(v19, v18);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v11, &qword_1EE11F180, v4);
  return sub_1DABBB588(v19);
}

uint64_t sub_1DAC0F7CC(uint64_t a1)
{
  v3 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = *(v1 + 8);
  sub_1DAAA2D3C(a1, &v9 - v7, &qword_1EE11F180, v3);
  sub_1DACB6EE4();
  return sub_1DAAA2DBC(a1, &qword_1EE11F180, v3);
}

uint64_t (*sub_1DAC0F8A8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC0F964(uint64_t a1, _OWORD *a2)
{
  v4 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18[-v10];
  sub_1DAAA2D3C(a1, &v18[-v10], &qword_1EE11F180, v4);
  v12 = a2[9];
  v19[8] = a2[8];
  v19[9] = v12;
  v19[10] = a2[10];
  v13 = a2[5];
  v19[4] = a2[4];
  v19[5] = v13;
  v14 = a2[7];
  v19[6] = a2[6];
  v19[7] = v14;
  v15 = a2[1];
  v19[0] = *a2;
  v19[1] = v15;
  v16 = a2[3];
  v19[2] = a2[2];
  v19[3] = v16;
  sub_1DAAA2D3C(v11, v9, &qword_1EE11F180, v4);
  sub_1DAC1435C(v19, v18);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v11, &qword_1EE11F180, v4);
  return sub_1DABBB588(v19);
}

uint64_t sub_1DAC0FAD0(uint64_t a1)
{
  v3 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = *(v1 + 16);
  sub_1DAAA2D3C(a1, &v9 - v7, &qword_1EE11F180, v3);
  sub_1DACB6EE4();
  return sub_1DAAA2DBC(a1, &qword_1EE11F180, v3);
}

uint64_t (*sub_1DAC0FBAC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC0FC68(uint64_t a1, _OWORD *a2)
{
  v4 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18[-v10];
  sub_1DAAA2D3C(a1, &v18[-v10], &qword_1EE11F180, v4);
  v12 = a2[9];
  v19[8] = a2[8];
  v19[9] = v12;
  v19[10] = a2[10];
  v13 = a2[5];
  v19[4] = a2[4];
  v19[5] = v13;
  v14 = a2[7];
  v19[6] = a2[6];
  v19[7] = v14;
  v15 = a2[1];
  v19[0] = *a2;
  v19[1] = v15;
  v16 = a2[3];
  v19[2] = a2[2];
  v19[3] = v16;
  sub_1DAAA2D3C(v11, v9, &qword_1EE11F180, v4);
  sub_1DAC1435C(v19, v18);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v11, &qword_1EE11F180, v4);
  return sub_1DABBB588(v19);
}

uint64_t sub_1DAC0FDD4(uint64_t a1)
{
  v3 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = *(v1 + 24);
  sub_1DAAA2D3C(a1, &v9 - v7, &qword_1EE11F180, v3);
  sub_1DACB6EE4();
  return sub_1DAAA2DBC(a1, &qword_1EE11F180, v3);
}

uint64_t (*sub_1DAC0FEB0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 24);
  *(v3 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC0FF6C(uint64_t a1, _OWORD *a2)
{
  v4 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18[-v10];
  sub_1DAAA2D3C(a1, &v18[-v10], &qword_1EE11F180, v4);
  v12 = a2[9];
  v19[8] = a2[8];
  v19[9] = v12;
  v19[10] = a2[10];
  v13 = a2[5];
  v19[4] = a2[4];
  v19[5] = v13;
  v14 = a2[7];
  v19[6] = a2[6];
  v19[7] = v14;
  v15 = a2[1];
  v19[0] = *a2;
  v19[1] = v15;
  v16 = a2[3];
  v19[2] = a2[2];
  v19[3] = v16;
  sub_1DAAA2D3C(v11, v9, &qword_1EE11F180, v4);
  sub_1DAC1435C(v19, v18);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v11, &qword_1EE11F180, v4);
  return sub_1DABBB588(v19);
}

uint64_t sub_1DAC100D8(uint64_t a1)
{
  v3 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = *(v1 + 32);
  sub_1DAAA2D3C(a1, &v9 - v7, &qword_1EE11F180, v3);
  sub_1DACB6EE4();
  return sub_1DAAA2DBC(a1, &qword_1EE11F180, v3);
}

uint64_t (*sub_1DAC101B4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 32);
  *(v3 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC10270(uint64_t a1, _OWORD *a2)
{
  v4 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18[-v10];
  sub_1DAAA2D3C(a1, &v18[-v10], &qword_1EE11F180, v4);
  v12 = a2[9];
  v19[8] = a2[8];
  v19[9] = v12;
  v19[10] = a2[10];
  v13 = a2[5];
  v19[4] = a2[4];
  v19[5] = v13;
  v14 = a2[7];
  v19[6] = a2[6];
  v19[7] = v14;
  v15 = a2[1];
  v19[0] = *a2;
  v19[1] = v15;
  v16 = a2[3];
  v19[2] = a2[2];
  v19[3] = v16;
  sub_1DAAA2D3C(v11, v9, &qword_1EE11F180, v4);
  sub_1DAC1435C(v19, v18);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v11, &qword_1EE11F180, v4);
  return sub_1DABBB588(v19);
}

uint64_t sub_1DAC103DC(uint64_t a1)
{
  v3 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = *(v1 + 40);
  sub_1DAAA2D3C(a1, &v9 - v7, &qword_1EE11F180, v3);
  sub_1DACB6EE4();
  return sub_1DAAA2DBC(a1, &qword_1EE11F180, v3);
}

uint64_t (*sub_1DAC104B8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 40);
  *(v3 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC10574(uint64_t a1, _OWORD *a2)
{
  v4 = MEMORY[0x1E6969530];
  sub_1DAA7BD0C(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18[-v10];
  sub_1DAAA2D3C(a1, &v18[-v10], &qword_1EE125280, v4);
  v12 = a2[9];
  v19[8] = a2[8];
  v19[9] = v12;
  v19[10] = a2[10];
  v13 = a2[5];
  v19[4] = a2[4];
  v19[5] = v13;
  v14 = a2[7];
  v19[6] = a2[6];
  v19[7] = v14;
  v15 = a2[1];
  v19[0] = *a2;
  v19[1] = v15;
  v16 = a2[3];
  v19[2] = a2[2];
  v19[3] = v16;
  sub_1DAAA2D3C(v11, v9, &qword_1EE125280, v4);
  sub_1DAC1435C(v19, v18);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v11, &qword_1EE125280, v4);
  return sub_1DABBB588(v19);
}

uint64_t sub_1DAC106E0(uint64_t a1)
{
  v3 = MEMORY[0x1E6969530];
  sub_1DAA7BD0C(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = *(v1 + 48);
  sub_1DAAA2D3C(a1, &v9 - v7, &qword_1EE125280, v3);
  sub_1DACB6EE4();
  return sub_1DAAA2DBC(a1, &qword_1EE125280, v3);
}

uint64_t (*sub_1DAC107BC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 48);
  *(v3 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC10878(uint64_t a1, _OWORD *a2)
{
  v4 = MEMORY[0x1E6969530];
  sub_1DAA7BD0C(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18[-v10];
  sub_1DAAA2D3C(a1, &v18[-v10], &qword_1EE125280, v4);
  v12 = a2[9];
  v19[8] = a2[8];
  v19[9] = v12;
  v19[10] = a2[10];
  v13 = a2[5];
  v19[4] = a2[4];
  v19[5] = v13;
  v14 = a2[7];
  v19[6] = a2[6];
  v19[7] = v14;
  v15 = a2[1];
  v19[0] = *a2;
  v19[1] = v15;
  v16 = a2[3];
  v19[2] = a2[2];
  v19[3] = v16;
  sub_1DAAA2D3C(v11, v9, &qword_1EE125280, v4);
  sub_1DAC1435C(v19, v18);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v11, &qword_1EE125280, v4);
  return sub_1DABBB588(v19);
}

uint64_t sub_1DAC109E4(uint64_t a1)
{
  v3 = MEMORY[0x1E6969530];
  sub_1DAA7BD0C(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = *(v1 + 56);
  sub_1DAAA2D3C(a1, &v9 - v7, &qword_1EE125280, v3);
  sub_1DACB6EE4();
  return sub_1DAAA2DBC(a1, &qword_1EE125280, v3);
}

uint64_t (*sub_1DAC10AC0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 56);
  *(v3 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC10B7C(uint64_t a1, _OWORD *a2)
{
  v4 = MEMORY[0x1E6969530];
  sub_1DAA7BD0C(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18[-v10];
  sub_1DAAA2D3C(a1, &v18[-v10], &qword_1EE125280, v4);
  v12 = a2[9];
  v19[8] = a2[8];
  v19[9] = v12;
  v19[10] = a2[10];
  v13 = a2[5];
  v19[4] = a2[4];
  v19[5] = v13;
  v14 = a2[7];
  v19[6] = a2[6];
  v19[7] = v14;
  v15 = a2[1];
  v19[0] = *a2;
  v19[1] = v15;
  v16 = a2[3];
  v19[2] = a2[2];
  v19[3] = v16;
  sub_1DAAA2D3C(v11, v9, &qword_1EE125280, v4);
  sub_1DAC1435C(v19, v18);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v11, &qword_1EE125280, v4);
  return sub_1DABBB588(v19);
}

uint64_t sub_1DAC10CE8(uint64_t a1)
{
  v3 = MEMORY[0x1E6969530];
  sub_1DAA7BD0C(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = *(v1 + 64);
  sub_1DAAA2D3C(a1, &v9 - v7, &qword_1EE125280, v3);
  sub_1DACB6EE4();
  return sub_1DAAA2DBC(a1, &qword_1EE125280, v3);
}

uint64_t (*sub_1DAC10DC4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 64);
  *(v3 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC10E80(uint64_t a1, _OWORD *a2)
{
  v4 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18[-v10];
  sub_1DAAA2D3C(a1, &v18[-v10], &qword_1EE11F180, v4);
  v12 = a2[9];
  v19[8] = a2[8];
  v19[9] = v12;
  v19[10] = a2[10];
  v13 = a2[5];
  v19[4] = a2[4];
  v19[5] = v13;
  v14 = a2[7];
  v19[6] = a2[6];
  v19[7] = v14;
  v15 = a2[1];
  v19[0] = *a2;
  v19[1] = v15;
  v16 = a2[3];
  v19[2] = a2[2];
  v19[3] = v16;
  sub_1DAAA2D3C(v11, v9, &qword_1EE11F180, v4);
  sub_1DAC1435C(v19, v18);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v11, &qword_1EE11F180, v4);
  return sub_1DABBB588(v19);
}

uint64_t sub_1DAC10FEC(uint64_t a1)
{
  v3 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = *(v1 + 72);
  sub_1DAAA2D3C(a1, &v9 - v7, &qword_1EE11F180, v3);
  sub_1DACB6EE4();
  return sub_1DAAA2DBC(a1, &qword_1EE11F180, v3);
}

uint64_t (*sub_1DAC110C8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 72);
  *(v3 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC11184(uint64_t a1, _OWORD *a2)
{
  v4 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18[-v10];
  sub_1DAAA2D3C(a1, &v18[-v10], &qword_1EE11F180, v4);
  v12 = a2[9];
  v19[8] = a2[8];
  v19[9] = v12;
  v19[10] = a2[10];
  v13 = a2[5];
  v19[4] = a2[4];
  v19[5] = v13;
  v14 = a2[7];
  v19[6] = a2[6];
  v19[7] = v14;
  v15 = a2[1];
  v19[0] = *a2;
  v19[1] = v15;
  v16 = a2[3];
  v19[2] = a2[2];
  v19[3] = v16;
  sub_1DAAA2D3C(v11, v9, &qword_1EE11F180, v4);
  sub_1DAC1435C(v19, v18);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v11, &qword_1EE11F180, v4);
  return sub_1DABBB588(v19);
}

uint64_t sub_1DAC112F0(uint64_t a1)
{
  v3 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = *(v1 + 80);
  sub_1DAAA2D3C(a1, &v9 - v7, &qword_1EE11F180, v3);
  sub_1DACB6EE4();
  return sub_1DAAA2DBC(a1, &qword_1EE11F180, v3);
}

uint64_t (*sub_1DAC113CC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 80);
  *(v3 + 32) = sub_1DACB6EC4();
  return sub_1DAAD9D74;
}

uint64_t sub_1DAC11488(uint64_t a1, _OWORD *a2)
{
  v4 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18[-v10];
  sub_1DAAA2D3C(a1, &v18[-v10], &qword_1EE11F180, v4);
  v12 = a2[9];
  v19[8] = a2[8];
  v19[9] = v12;
  v19[10] = a2[10];
  v13 = a2[5];
  v19[4] = a2[4];
  v19[5] = v13;
  v14 = a2[7];
  v19[6] = a2[6];
  v19[7] = v14;
  v15 = a2[1];
  v19[0] = *a2;
  v19[1] = v15;
  v16 = a2[3];
  v19[2] = a2[2];
  v19[3] = v16;
  sub_1DAAA2D3C(v11, v9, &qword_1EE11F180, v4);
  sub_1DAC1435C(v19, v18);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v11, &qword_1EE11F180, v4);
  return sub_1DABBB588(v19);
}

uint64_t sub_1DAC115F4(uint64_t a1)
{
  v3 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = *(v1 + 88);
  sub_1DAAA2D3C(a1, &v9 - v7, &qword_1EE11F180, v3);
  sub_1DACB6EE4();
  return sub_1DAAA2DBC(a1, &qword_1EE11F180, v3);
}

uint64_t (*sub_1DAC116D0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 88);
  *(v3 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC1178C(uint64_t a1, _OWORD *a2)
{
  v4 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18[-v10];
  sub_1DAAA2D3C(a1, &v18[-v10], &qword_1EE11F180, v4);
  v12 = a2[9];
  v19[8] = a2[8];
  v19[9] = v12;
  v19[10] = a2[10];
  v13 = a2[5];
  v19[4] = a2[4];
  v19[5] = v13;
  v14 = a2[7];
  v19[6] = a2[6];
  v19[7] = v14;
  v15 = a2[1];
  v19[0] = *a2;
  v19[1] = v15;
  v16 = a2[3];
  v19[2] = a2[2];
  v19[3] = v16;
  sub_1DAAA2D3C(v11, v9, &qword_1EE11F180, v4);
  sub_1DAC1435C(v19, v18);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v11, &qword_1EE11F180, v4);
  return sub_1DABBB588(v19);
}

uint64_t sub_1DAC118F8(uint64_t a1)
{
  v3 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = *(v1 + 96);
  sub_1DAAA2D3C(a1, &v9 - v7, &qword_1EE11F180, v3);
  sub_1DACB6EE4();
  return sub_1DAAA2DBC(a1, &qword_1EE11F180, v3);
}

uint64_t (*sub_1DAC119D4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 96);
  *(v3 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC11A90(uint64_t a1, _OWORD *a2)
{
  v4 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18[-v10];
  sub_1DAAA2D3C(a1, &v18[-v10], &qword_1EE11F180, v4);
  v12 = a2[9];
  v19[8] = a2[8];
  v19[9] = v12;
  v19[10] = a2[10];
  v13 = a2[5];
  v19[4] = a2[4];
  v19[5] = v13;
  v14 = a2[7];
  v19[6] = a2[6];
  v19[7] = v14;
  v15 = a2[1];
  v19[0] = *a2;
  v19[1] = v15;
  v16 = a2[3];
  v19[2] = a2[2];
  v19[3] = v16;
  sub_1DAAA2D3C(v11, v9, &qword_1EE11F180, v4);
  sub_1DAC1435C(v19, v18);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v11, &qword_1EE11F180, v4);
  return sub_1DABBB588(v19);
}

uint64_t sub_1DAC11BFC(uint64_t a1)
{
  v3 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = *(v1 + 104);
  sub_1DAAA2D3C(a1, &v9 - v7, &qword_1EE11F180, v3);
  sub_1DACB6EE4();
  return sub_1DAAA2DBC(a1, &qword_1EE11F180, v3);
}

uint64_t (*sub_1DAC11CD8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 104);
  *(v3 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC11D70()
{
  v1 = *(v0 + 112);
  sub_1DACB6ED4();
  return v3;
}

uint64_t sub_1DAC11DA8(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a2[9];
  v12[8] = a2[8];
  v12[9] = v4;
  v12[10] = a2[10];
  v5 = a2[5];
  v12[4] = a2[4];
  v12[5] = v5;
  v6 = a2[7];
  v12[6] = a2[6];
  v12[7] = v6;
  v7 = a2[1];
  v12[0] = *a2;
  v12[1] = v7;
  v8 = a2[3];
  v12[2] = a2[2];
  v12[3] = v8;
  v10[22] = v2;
  v11 = v3;
  sub_1DAC1435C(v12, v10);
  sub_1DACB6EE4();
  return sub_1DABBB588(v12);
}

uint64_t (*sub_1DAC11E68(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 112);
  *(v3 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC11F00()
{
  v1 = *(v0 + 120);
  sub_1DACB6ED4();
  return v3;
}

uint64_t sub_1DAC11F38(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a2[9];
  v12[8] = a2[8];
  v12[9] = v4;
  v12[10] = a2[10];
  v5 = a2[5];
  v12[4] = a2[4];
  v12[5] = v5;
  v6 = a2[7];
  v12[6] = a2[6];
  v12[7] = v6;
  v7 = a2[1];
  v12[0] = *a2;
  v12[1] = v7;
  v8 = a2[3];
  v12[2] = a2[2];
  v12[3] = v8;
  v10[22] = v2;
  v11 = v3;
  sub_1DAC1435C(v12, v10);
  sub_1DACB6EE4();
  return sub_1DABBB588(v12);
}

uint64_t (*sub_1DAC11FF8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 120);
  *(v3 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC12090()
{
  v1 = *(v0 + 128);
  sub_1DACB6ED4();
  return v3;
}

uint64_t sub_1DAC120C8(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a2[9];
  v12[8] = a2[8];
  v12[9] = v4;
  v12[10] = a2[10];
  v5 = a2[5];
  v12[4] = a2[4];
  v12[5] = v5;
  v6 = a2[7];
  v12[6] = a2[6];
  v12[7] = v6;
  v7 = a2[1];
  v12[0] = *a2;
  v12[1] = v7;
  v8 = a2[3];
  v12[2] = a2[2];
  v12[3] = v8;
  v10[22] = v2;
  v11 = v3;
  sub_1DAC1435C(v12, v10);
  sub_1DACB6EE4();
  return sub_1DABBB588(v12);
}

uint64_t (*sub_1DAC12188(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 128);
  *(v3 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC12220()
{
  v1 = *(v0 + 136);
  sub_1DACB6ED4();
  return v3;
}

uint64_t sub_1DAC12258(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a2[9];
  v12[8] = a2[8];
  v12[9] = v4;
  v12[10] = a2[10];
  v5 = a2[5];
  v12[4] = a2[4];
  v12[5] = v5;
  v6 = a2[7];
  v12[6] = a2[6];
  v12[7] = v6;
  v7 = a2[1];
  v12[0] = *a2;
  v12[1] = v7;
  v8 = a2[3];
  v12[2] = a2[2];
  v12[3] = v8;
  v10[22] = v2;
  v11 = v3;
  sub_1DAC1435C(v12, v10);
  sub_1DACB6EE4();
  return sub_1DABBB588(v12);
}

uint64_t (*sub_1DAC12318(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 136);
  *(v3 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC123B0()
{
  v1 = *(v0 + 144);
  sub_1DACB6ED4();
  return v3;
}

uint64_t sub_1DAC123E8(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a2[9];
  v12[8] = a2[8];
  v12[9] = v4;
  v12[10] = a2[10];
  v5 = a2[5];
  v12[4] = a2[4];
  v12[5] = v5;
  v6 = a2[7];
  v12[6] = a2[6];
  v12[7] = v6;
  v7 = a2[1];
  v12[0] = *a2;
  v12[1] = v7;
  v8 = a2[3];
  v12[2] = a2[2];
  v12[3] = v8;
  v10[22] = v2;
  v11 = v3;
  sub_1DAC1435C(v12, v10);
  sub_1DACB6EE4();
  return sub_1DABBB588(v12);
}

uint64_t (*sub_1DAC124A8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 144);
  *(v3 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC12564(uint64_t a1, _OWORD *a2)
{
  v4 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18[-v10];
  sub_1DAAA2D3C(a1, &v18[-v10], &qword_1EE11F180, v4);
  v12 = a2[9];
  v19[8] = a2[8];
  v19[9] = v12;
  v19[10] = a2[10];
  v13 = a2[5];
  v19[4] = a2[4];
  v19[5] = v13;
  v14 = a2[7];
  v19[6] = a2[6];
  v19[7] = v14;
  v15 = a2[1];
  v19[0] = *a2;
  v19[1] = v15;
  v16 = a2[3];
  v19[2] = a2[2];
  v19[3] = v16;
  sub_1DAAA2D3C(v11, v9, &qword_1EE11F180, v4);
  sub_1DAC1435C(v19, v18);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v11, &qword_1EE11F180, v4);
  return sub_1DABBB588(v19);
}

uint64_t sub_1DAC126D0(uint64_t a1)
{
  v3 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = *(v1 + 152);
  sub_1DAAA2D3C(a1, &v9 - v7, &qword_1EE11F180, v3);
  sub_1DACB6EE4();
  return sub_1DAAA2DBC(a1, &qword_1EE11F180, v3);
}

uint64_t (*sub_1DAC127AC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 152);
  *(v3 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC12868(uint64_t a1, _OWORD *a2)
{
  v4 = MEMORY[0x1E6969530];
  sub_1DAA7BD0C(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18[-v10];
  sub_1DAAA2D3C(a1, &v18[-v10], &qword_1EE125280, v4);
  v12 = a2[9];
  v19[8] = a2[8];
  v19[9] = v12;
  v19[10] = a2[10];
  v13 = a2[5];
  v19[4] = a2[4];
  v19[5] = v13;
  v14 = a2[7];
  v19[6] = a2[6];
  v19[7] = v14;
  v15 = a2[1];
  v19[0] = *a2;
  v19[1] = v15;
  v16 = a2[3];
  v19[2] = a2[2];
  v19[3] = v16;
  sub_1DAAA2D3C(v11, v9, &qword_1EE125280, v4);
  sub_1DAC1435C(v19, v18);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v11, &qword_1EE125280, v4);
  return sub_1DABBB588(v19);
}

uint64_t sub_1DAC129D4(uint64_t a1)
{
  v3 = MEMORY[0x1E6969530];
  sub_1DAA7BD0C(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = *(v1 + 160);
  sub_1DAAA2D3C(a1, &v9 - v7, &qword_1EE125280, v3);
  sub_1DACB6EE4();
  return sub_1DAAA2DBC(a1, &qword_1EE125280, v3);
}

uint64_t (*sub_1DAC12AB0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 160);
  *(v3 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC12B48()
{
  v1 = *(v0 + 168);
  sub_1DACB6ED4();
  return v3;
}

uint64_t sub_1DAC12B7C(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[9];
  v11[8] = a2[8];
  v11[9] = v4;
  v11[10] = a2[10];
  v5 = a2[5];
  v11[4] = a2[4];
  v11[5] = v5;
  v6 = a2[7];
  v11[6] = a2[6];
  v11[7] = v6;
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v8 = a2[3];
  v11[2] = a2[2];
  v11[3] = v8;
  v10[22] = v3;
  v10[23] = v2;
  sub_1DACB71E4();
  sub_1DAC1435C(v11, v10);
  sub_1DACB6EE4();
  return sub_1DABBB588(v11);
}

uint64_t (*sub_1DAC12C30(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 168);
  *(v3 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC12CCC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1DACB78E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DACB7E44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1DACB92E4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = sub_1DACB7904();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAAA113C(0, &qword_1EE11F1E0, qword_1EE11EF28, type metadata accessor for SymbolEntity, sub_1DAAA11C4);
  sub_1DACB9284();
  sub_1DACB7DF4();
  v15 = *MEMORY[0x1E6968DF0];
  v16 = *(v3 + 104);
  v16(v6, v15, v2);
  sub_1DACB7914();
  sub_1DAAA15D8(&unk_1EE11EF70, type metadata accessor for SymbolEntity);
  *a1 = sub_1DACB6F04();
  sub_1DAAA113C(0, &qword_1EE11F1D8, &qword_1EE11F180, MEMORY[0x1E695A360], sub_1DAAA16DC);
  v18 = v17;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v16(v6, v15, v2);
  sub_1DACB7914();
  a1[1] = sub_1DACB6F14();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v16(v6, v15, v2);
  sub_1DACB7914();
  v52 = v18;
  a1[2] = sub_1DACB6F14();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v16(v6, v15, v2);
  sub_1DACB7914();
  a1[3] = sub_1DACB6F14();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v53 = v15;
  v54 = v2;
  v16(v6, v15, v2);
  sub_1DACB7914();
  a1[4] = sub_1DACB6F14();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v16(v6, v15, v2);
  v49 = v3 + 104;
  v50 = v16;
  v19 = v6;
  sub_1DACB7914();
  a1[5] = sub_1DACB6F14();
  sub_1DAAA113C(0, &unk_1EE11F1E8, &qword_1EE125280, MEMORY[0x1E6969530], sub_1DAAA1870);
  v21 = v20;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v22 = v6;
  v23 = v53;
  v24 = v54;
  v16(v22, v53, v54);
  sub_1DACB7914();
  a1[6] = sub_1DACB6F24();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v46 = v19;
  v25 = v19;
  v26 = v50;
  v50(v25, v23, v24);
  sub_1DACB7914();
  v48 = v21;
  a1[7] = sub_1DACB6F24();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v27 = v46;
  v28 = v54;
  v26(v46, v23, v54);
  sub_1DACB7914();
  a1[8] = sub_1DACB6F24();
  v51 = a1;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v26(v27, v23, v28);
  sub_1DACB7914();
  a1[9] = sub_1DACB6F14();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v29 = v54;
  v26(v27, v23, v54);
  sub_1DACB7914();
  v30 = sub_1DACB6F14();
  v31 = v51;
  v51[10] = v30;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v32 = v50;
  v50(v27, v23, v29);
  sub_1DACB7914();
  v31[11] = sub_1DACB6F14();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v33 = v53;
  v32(v27, v53, v29);
  sub_1DACB7914();
  v51[12] = sub_1DACB6F14();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v32(v27, v33, v54);
  sub_1DACB7914();
  v34 = sub_1DACB6F14();
  v35 = v51;
  v51[13] = v34;
  sub_1DAAA1AEC();
  v47 = v36;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v37 = v53;
  v38 = v54;
  v32(v27, v53, v54);
  sub_1DACB7914();
  v35[14] = sub_1DACB6F44();
  sub_1DAAA2198();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v32(v27, v37, v38);
  sub_1DACB7914();
  v35[15] = sub_1DACB6F54();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v32(v27, v37, v38);
  v45[1] = v14;
  sub_1DACB7914();
  v39 = v35;
  v35[16] = sub_1DACB6F54();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v40 = v53;
  v41 = v54;
  v32(v27, v53, v54);
  sub_1DACB7914();
  v39[17] = sub_1DACB6F44();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v32(v27, v40, v41);
  sub_1DACB7914();
  v42 = v39;
  v39[18] = sub_1DACB6F44();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v43 = v54;
  v32(v27, v40, v54);
  sub_1DACB7914();
  v42[19] = sub_1DACB6F14();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v32(v27, v40, v43);
  sub_1DACB7914();
  v42[20] = sub_1DACB6F24();
  sub_1DAAA2870();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v32(v27, v40, v43);
  sub_1DACB7914();
  result = sub_1DACB6F34();
  v42[21] = result;
  return result;
}

uint64_t sub_1DAC13AF4(uint64_t a1)
{
  v2 = sub_1DAAA474C();

  return MEMORY[0x1EEDB29C8](a1, v2);
}

uint64_t sub_1DAC13B40@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5B88 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7354();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE90B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAC13BE8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5B88 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7354();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE90B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAC13C90(uint64_t a1)
{
  v2 = sub_1DAAA4820();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

uint64_t sub_1DAC13CDC(uint64_t a1)
{
  v2 = sub_1DAAA4074();

  return MEMORY[0x1EEDB3F68](a1, v2);
}

uint64_t sub_1DAC13D28()
{
  v22 = MEMORY[0x1E6968E10];
  sub_1DAA7BD0C(0, &qword_1EE123A80, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v21 = &v20 - v2;
  v3 = sub_1DACB78E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB7E44();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1DACB92E4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1DACB7904();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = sub_1DACB7354();
  __swift_allocate_value_buffer(v15, qword_1ECBE90B0);
  __swift_project_value_buffer(v15, qword_1ECBE90B0);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v4 + 104))(v7, *MEMORY[0x1E6968DF0], v3);
  sub_1DACB7914();
  v16 = *(v13 + 56);
  v13 += 56;
  v16(v21, 1, 1, v12);
  sub_1DAA7BD0C(0, &qword_1ECBE6D78, v22, MEMORY[0x1E69E6F90]);
  v17 = *(v13 + 16);
  v18 = (*(v13 + 24) + 32) & ~*(v13 + 24);
  *(swift_allocObject() + 16) = xmmword_1DACD6260;
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  return sub_1DACB7334();
}

unint64_t sub_1DAC141E0()
{
  result = qword_1ECBE90D0;
  if (!qword_1ECBE90D0)
  {
    sub_1DAC142F4(255, &qword_1ECBE90D8, sub_1DAAA474C, MEMORY[0x1E6959CF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE90D0);
  }

  return result;
}

unint64_t sub_1DAC1426C()
{
  result = qword_1ECBE90E0;
  if (!qword_1ECBE90E0)
  {
    sub_1DAC142F4(255, &qword_1ECBE90E8, sub_1DAAA3D4C, MEMORY[0x1E695A570]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE90E0);
  }

  return result;
}

void sub_1DAC142F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v7 = a3();
    v8 = a4(a1, &type metadata for SymbolQuoteEntity, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1DAC143B8(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for YahooHeadline();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  sub_1DAC1595C(0);
  sub_1DAADF7BC();
  v10 = sub_1DACB94F4();
  v11 = MEMORY[0x1E69E7CC8];
  v19 = MEMORY[0x1E69E7CC8];
  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = 0;
    while (v13 < *(v10 + 16))
    {
      sub_1DAC159AC(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v9);
      sub_1DAC145C0(&v19, v9, a2);
      if (v2)
      {
        goto LABEL_9;
      }

      ++v13;
      sub_1DAC15A10(v9);
      if (v12 == v13)
      {
        v11 = v19;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_9:

    sub_1DAC15A10(v9);

    __break(1u);
  }

  else
  {
LABEL_7:

    v19 = v11;
    sub_1DAC15A6C(0, &qword_1EE11D400, sub_1DABBEA00, MEMORY[0x1E69D6B18]);
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    return sub_1DACB8AE4();
  }

  return result;
}

void sub_1DAC145C0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1DACB7CC4();
  v92 = *(v7 - 8);
  v8 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = a2;
  sub_1DABE06DC(sub_1DAC15AD0, a3, v81);
  v89 = v81[6];
  v90 = v81[7];
  v91 = v82;
  v85 = v81[2];
  v86 = v81[3];
  v87 = v81[4];
  v88 = v81[5];
  v83 = v81[0];
  v84 = v81[1];
  if (get_enum_tag_for_layout_string_10StocksCore24SubscriptionButtonConfigVSg_0(&v83) == 1)
  {
    sub_1DAC15A6C(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = v11;
    *(v11 + 16) = xmmword_1DACC1D40;
    v13 = *(a3 + 16);
    v14 = MEMORY[0x1E69E7CC0];
    if (v13)
    {
      v75 = v11;
      v92 = a2;
      v76 = v3;
      *&v78[0] = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v13, 0);
      v14 = *&v78[0];
      v15 = (a3 + 56);
      do
      {
        v17 = *(v15 - 1);
        v16 = *v15;
        *&v78[0] = v14;
        v19 = *(v14 + 16);
        v18 = *(v14 + 24);
        sub_1DACB71E4();
        if (v19 >= v18 >> 1)
        {
          sub_1DAA5859C((v18 > 1), v19 + 1, 1);
          v14 = *&v78[0];
        }

        *(v14 + 16) = v19 + 1;
        v20 = v14 + 16 * v19;
        *(v20 + 32) = v17;
        *(v20 + 40) = v16;
        v15 += 17;
        --v13;
      }

      while (v13);
      v12 = v75;
      a2 = v92;
    }

    *&v78[0] = v14;
    v35 = MEMORY[0x1E69E6158];
    sub_1DAA48940(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v36 = sub_1DACB9214();
    v38 = v37;

    v12[7] = v35;
    v39 = sub_1DAA443C8();
    v12[8] = v39;
    v12[4] = v36;
    v12[5] = v38;
    v40 = (a2 + *(type metadata accessor for YahooHeadline() + 36));
    v41 = *v40;
    v42 = v40[1];
    v12[12] = v35;
    v12[13] = v39;
    v43 = 7104878;
    if (v42)
    {
      v43 = v41;
    }

    v44 = 0xE300000000000000;
    if (v42)
    {
      v44 = v42;
    }

    v12[9] = v43;
    v12[10] = v44;
    sub_1DAA41DCC();
    sub_1DACB71E4();
    v45 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();

    return;
  }

  v75 = a1;
  v76 = v3;
  v79[6] = v89;
  v79[7] = v90;
  v80 = v91;
  v79[2] = v85;
  v79[3] = v86;
  v79[4] = v87;
  v79[5] = v88;
  v79[0] = v83;
  v79[1] = v84;
  v21 = type metadata accessor for YahooHeadline();
  v22 = (a2 + v21[5]);
  v23 = v7;
  v25 = *v22;
  v24 = v22[1];
  v26 = (a2 + v21[6]);
  v27 = v26[1];
  v73[1] = *v26;
  v28 = *(v92 + 16);
  v29 = a2 + v21[8];
  v74 = v23;
  v28(v10, v29);
  v30 = (a2 + v21[7]);
  v31 = v30[1];
  v73[2] = *v30;
  v32 = sub_1DACB7A04();
  v33 = sub_1DACB92F4();
  if (v27)
  {
    v34 = sub_1DACB92F4();
  }

  else
  {
    v34 = 0;
  }

  v46 = objc_allocWithZone(SCWebHeadline);
  v47 = sub_1DACB7C04();
  v48 = sub_1DACB92F4();
  v49 = [v46 initWithURL:v32 title:v33 shortExcerpt:v34 publishDate:v47 sourceName:v48];

  (*(v92 + 8))(v10, v74);
  v50 = v75;
  v51 = *v75;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v78[0] = *v50;
  v53 = *&v78[0];
  v55 = sub_1DAB095DC(v79);
  v56 = v53[2];
  v57 = (v54 & 1) == 0;
  v58 = v56 + v57;
  if (__OFADD__(v56, v57))
  {
    __break(1u);
    goto LABEL_25;
  }

  LOBYTE(v10) = v54;
  if (v53[3] >= v58)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *v50 = v53;
      if (v54)
      {
        goto LABEL_23;
      }

LABEL_26:
      sub_1DACA6464(v55, v79, MEMORY[0x1E69E7CC0], v53);
      goto LABEL_27;
    }

LABEL_25:
    sub_1DAB66728();
    v53 = *&v78[0];
    *v50 = *&v78[0];
    if (v10)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  sub_1DAB61D98(v58, isUniquelyReferenced_nonNull_native);
  v53 = *&v78[0];
  v59 = sub_1DAB095DC(v79);
  if ((v10 & 1) != (v60 & 1))
  {
    sub_1DACBA1F4();
    __break(1u);
    return;
  }

  v55 = v59;
  *v50 = v53;
  if ((v10 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_23:
  sub_1DAC15AF0(v81);
LABEL_27:
  v61 = v53[7];
  v62 = *(v61 + 8 * v55);
  v63 = swift_isUniquelyReferenced_nonNull_native();
  *(v61 + 8 * v55) = v62;
  if ((v63 & 1) == 0)
  {
    v62 = sub_1DAADC60C(0, *(v62 + 2) + 1, 1, v62);
    *(v61 + 8 * v55) = v62;
  }

  v65 = *(v62 + 2);
  v64 = *(v62 + 3);
  if (v65 >= v64 >> 1)
  {
    v62 = sub_1DAADC60C((v64 > 1), v65 + 1, 1, v62);
    *(v61 + 8 * v55) = v62;
  }

  *&v78[0] = v49;
  sub_1DAAD4DD0(v78);
  *(v62 + 2) = v65 + 1;
  v66 = &v62[144 * v65];
  *(v66 + 2) = v78[0];
  v67 = v78[1];
  v68 = v78[2];
  v69 = v78[4];
  *(v66 + 5) = v78[3];
  *(v66 + 6) = v69;
  *(v66 + 3) = v67;
  *(v66 + 4) = v68;
  v70 = v78[5];
  v71 = v78[6];
  v72 = v78[8];
  *(v66 + 9) = v78[7];
  *(v66 + 10) = v72;
  *(v66 + 7) = v70;
  *(v66 + 8) = v71;
}

uint64_t sub_1DAC14BCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = (a2 + *(type metadata accessor for YahooHeadline() + 36));
  v5 = v4[1];
  if (!v5)
  {
    return 0;
  }

  if (v2 == *v4 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return sub_1DACBA174() & 1;
  }
}

uint64_t sub_1DAC14C4C(void *a1)
{
  sub_1DAC15A6C(0, &qword_1ECBE90F0, sub_1DAC1595C, MEMORY[0x1E69D6B18]);
  sub_1DACB82E4();
  sub_1DACB8294();
  v2 = a1;
  v3 = sub_1DACB8B84();

  return v3;
}

uint64_t sub_1DAC14CFC(void *a1)
{
  v56 = sub_1DACB7CC4();
  v3 = *(v56 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v55 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for YahooHeadline();
  v6 = *(v51 - 1);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v57[0] = *a1;
  sub_1DAC1595C(0);
  sub_1DAADF7BC();
  v10 = sub_1DACB94F4();
  v11 = *(v10 + 16);
  if (v11)
  {
    v47[1] = v1;
    v58 = MEMORY[0x1E69E7CC0];
    v12 = v10;
    sub_1DAAA50F8(0, v11, 0);
    v54 = v58;
    v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v47[0] = v12;
    v14 = v12 + v13;
    v50 = (v3 + 16);
    v49 = (v3 + 8);
    v48 = *(v6 + 72);
    v53 = v11 - 1;
    while (1)
    {
      v52 = v14;
      sub_1DAC159AC(v14, v9);
      v15 = v51;
      v16 = &v9[v51[5]];
      v18 = *v16;
      v17 = *(v16 + 1);
      v19 = &v9[v51[6]];
      v20 = *v19;
      v21 = *(v19 + 1);
      (*v50)(v55, &v9[v51[8]], v56);
      v22 = &v9[v15[7]];
      v24 = *v22;
      v23 = *(v22 + 1);
      v25 = sub_1DACB7A04();
      v26 = sub_1DACB92F4();
      v27 = v21 ? sub_1DACB92F4() : 0;
      v28 = objc_allocWithZone(SCWebHeadline);
      v29 = v55;
      v30 = sub_1DACB7C04();
      v31 = sub_1DACB92F4();
      v32 = [v28 initWithURL:v25 title:v26 shortExcerpt:v27 publishDate:v30 sourceName:{v31, v47[0]}];

      (*v49)(v29, v56);
      sub_1DAC15A10(v9);
      v33 = v54;
      v58 = v54;
      v35 = *(v54 + 16);
      v34 = *(v54 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1DAAA50F8((v34 > 1), v35 + 1, 1);
        v33 = v58;
      }

      *&v57[0] = v32;
      sub_1DAAD4DD0(v57);
      *(v33 + 16) = v35 + 1;
      v36 = (v33 + 144 * v35);
      v36[2] = v57[0];
      v37 = v57[1];
      v38 = v57[2];
      v39 = v57[4];
      v36[5] = v57[3];
      v36[6] = v39;
      v36[3] = v37;
      v36[4] = v38;
      v40 = v57[5];
      v41 = v57[6];
      v42 = v57[8];
      v36[9] = v57[7];
      v36[10] = v42;
      v36[7] = v40;
      v36[8] = v41;
      if (!v53)
      {
        break;
      }

      v54 = v33;
      --v53;
      v14 = v52 + v48;
    }
  }

  else
  {

    v33 = MEMORY[0x1E69E7CC0];
  }

  *&v57[0] = v33;
  BYTE8(v57[0]) = 0;
  sub_1DAC15A6C(0, &qword_1EE11FE40, sub_1DAAD4E00, MEMORY[0x1E69D6B18]);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  return sub_1DACB8AE4();
}

id sub_1DAC151C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for YahooBaseOperationFactory();
  v22[3] = v6;
  v22[4] = &off_1F56825C8;
  v22[0] = a2;
  v7 = type metadata accessor for YahooNewsOperation();
  v8 = objc_allocWithZone(v7);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v22, v6);
  v10 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;
  v21[3] = v6;
  v21[4] = &off_1F56825C8;
  v21[0] = v14;
  *&v8[qword_1ECBE6A98] = a1;
  sub_1DAA4D678(v21, &v8[qword_1ECBE6AA0]);
  v15 = qword_1ECBE6AA8;
  v16 = sub_1DACB8204();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v8[v15], a3, v16);
  v20.receiver = v8;
  v20.super_class = v7;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  (*(v17 + 8))(a3, v16);
  __swift_destroy_boxed_opaque_existential_1(v21);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v18;
}

uint64_t sub_1DAC153A0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1DACB8204();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  sub_1DAA48940(0, &qword_1EE123B50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DACC1D20;
  *(v12 + 32) = v11;
  *(v12 + 40) = v10;
  sub_1DAA4D678(v2 + 16, v26);
  (*(v6 + 16))(v9, a2, v5);
  v13 = v27;
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v24[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v18 + 16))(v17);
  v19 = *v17;
  sub_1DACB71E4();
  v20 = sub_1DAC151C8(v12, v19, v9);
  __swift_destroy_boxed_opaque_existential_1(v26);
  v25 = v20;
  sub_1DAC1595C(0);
  sub_1DACB8BB4();
  v21 = sub_1DACB89D4();
  sub_1DAAD4E00();
  v22 = sub_1DACB8A54();

  return v22;
}

uint64_t sub_1DAC15610(uint64_t a1, uint64_t a2)
{
  v5 = sub_1DACB8204();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v29 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = v2;
    v31 = v5;
    v32 = a2;
    v34[0] = MEMORY[0x1E69E7CC0];
    sub_1DAA5859C(0, v10, 0);
    v11 = v34[0];
    v33 = a1;
    v12 = (a1 + 56);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      v34[0] = v11;
      v15 = *(v11 + 16);
      v16 = *(v11 + 24);
      sub_1DACB71E4();
      if (v15 >= v16 >> 1)
      {
        sub_1DAA5859C((v16 > 1), v15 + 1, 1);
        v11 = v34[0];
      }

      *(v11 + 16) = v15 + 1;
      v17 = v11 + 16 * v15;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      v12 += 17;
      --v10;
    }

    while (v10);
    a2 = v32;
    a1 = v33;
    v2 = v30;
    v5 = v31;
    v9 = v29;
  }

  sub_1DAA4D678(v2 + 16, v34);
  (*(v6 + 16))(v9, a2, v5);
  v18 = v35;
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = sub_1DAC151C8(v11, *v22, v9);
  v25 = __swift_destroy_boxed_opaque_existential_1(v34);
  MEMORY[0x1EEE9AC00](v25);
  *(&v29 - 2) = v24;
  sub_1DAC1595C(0);
  sub_1DACB8BB4();
  *(swift_allocObject() + 16) = a1;
  sub_1DACB71E4();
  v26 = sub_1DACB89D4();
  sub_1DABBEA00();
  v27 = sub_1DACB8A54();

  return v27;
}

uint64_t sub_1DAC159AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for YahooHeadline();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAC15A10(uint64_t a1)
{
  v2 = type metadata accessor for YahooHeadline();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DAC15A6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DAC15AF0(uint64_t a1)
{
  sub_1DAA48940(0, &qword_1EE1201A8, &type metadata for Stock, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for SDSStockMetadataOperation()
{
  result = qword_1EE11DD58;
  if (!qword_1EE11DD58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAC15C0C()
{
  result = sub_1DACB7CC4();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1DACB8204();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1DAC15CF8(uint64_t a1, uint64_t a2)
{
  v19 = *(v2 + qword_1EE11DD68);
  sub_1DACB71E4();
  sub_1DACA8764(&v19);
  sub_1DAA6144C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1DAAE81E4(&qword_1EE11FA38);
  v5 = sub_1DACB9864();

  v6 = *(v5 + 16);
  if (v6)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1DACB9D64();
    sub_1DAC16BC0(0, &qword_1EE11D3F8, sub_1DAA7F334, MEMORY[0x1E69D6B18]);
    v8 = v7;
    v9 = 32;
    do
    {
      v10 = *(v5 + v9);
      MEMORY[0x1EEE9AC00](v7);
      v11 = *(v8 + 48);
      v12 = *(v8 + 52);
      swift_allocObject();
      sub_1DACB71E4();
      sub_1DACB8B44();

      sub_1DACB9D34();
      v13 = *(v19 + 2);
      sub_1DACB9D74();
      sub_1DACB9D84();
      v7 = sub_1DACB9D44();
      v9 += 8;
      --v6;
    }

    while (v6);
  }

  v14 = sub_1DACB89D4();
  sub_1DAA7F334();
  sub_1DACB8934();

  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  sub_1DACB71F4();
  v16 = sub_1DACB89D4();
  sub_1DACB8A64();

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  sub_1DACB71F4();
  v18 = sub_1DACB89D4();
  sub_1DACB8AA4();
}

uint64_t sub_1DAC16028(uint64_t result, void (*a2)(uint64_t, void))
{
  v3 = *result;
  v4 = MEMORY[0x1E69E7CC8];
  v9 = MEMORY[0x1E69E7CC8];
  v5 = *(*result + 16);
  if (v5)
  {
    v6 = 0;
    while (v6 < *(v3 + 16))
    {
      v7 = v6 + 1;
      v8 = *(v3 + 32 + 8 * v6);
      sub_1DACB71E4();
      sub_1DACB88C4();

      v6 = v7;
      if (v5 == v7)
      {
        v4 = v9;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    a2(v4, 0);
  }

  return result;
}

void sub_1DAC16124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = __swift_project_boxed_opaque_existential_1(&a5[qword_1EE11DD80], *&a5[qword_1EE11DD80 + 24]);
  sub_1DAC16BC0(0, &qword_1EE123B40, sub_1DAA4BD7C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DACC1D40;
  *(inited + 32) = 0x6C6F626D7973;
  *(inited + 40) = 0xE600000000000000;
  sub_1DAA6144C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1DAAE81E4(&qword_1EE123E90);
  sub_1DACB71F4();
  *(inited + 48) = sub_1DACB9214();
  *(inited + 56) = v14;
  *(inited + 64) = 0x74655361746164;
  *(inited + 72) = 0xE700000000000000;
  *(inited + 80) = 0x65746F7571;
  *(inited + 88) = 0xE500000000000000;
  v15 = sub_1DAA4BDD8(inited);
  swift_setDeallocating();
  sub_1DAA4BD7C();
  swift_arrayDestroy();
  v16 = *v12;
  v17 = sub_1DABF30CC(2, v15, &a5[qword_1EE11DD70], &a5[qword_1EE11DD78]);

  v18 = swift_allocObject();
  *(v18 + 16) = a6;
  v19 = (v17 + *((*MEMORY[0x1E69E7D40] & *v17) + qword_1EE13E480 + 16));
  v20 = *v19;
  v21 = v19[1];
  *v19 = sub_1DAC16B60;
  v19[1] = v18;
  sub_1DACB71E4();
  sub_1DAA4F910(v20);
  v22 = swift_allocObject();
  v22[2] = a3;
  v22[3] = a4;
  v22[4] = a5;
  v22[5] = sub_1DAA7390C;
  v22[6] = v11;
  v23 = v17;
  sub_1DACB71F4();
  v24 = a5;
  sub_1DACB8304();

  [v23 start];
}

uint64_t sub_1DAC16438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1DAAD8184();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC16BC0(0, &qword_1EE11FEE0, sub_1DAAD8184, MEMORY[0x1E69D6AF8]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  sub_1DAC16C24(a2, &v30 - v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DAC171E4(v15);
    sub_1DAA8C2EC();
    v17 = (a4 + *(v16 + 48));
    v18 = sub_1DACB8754();
    (*(*(v18 - 8) + 16))(a4, a1, v18);
    *v17 = *(a3 + 16);
    v17[1] = 0;
    v19 = MEMORY[0x1E69E7CC0];
    v17[2] = MEMORY[0x1E69E7CC0];
    v17[3] = v19;
    type metadata accessor for NetworkEvent();
    v17[4] = 0;
    v17[5] = 0;
  }

  else
  {
    sub_1DAAE82AC(v15, v11);
    v20 = sub_1DACB8754();
    (*(*(v20 - 8) + 16))(a4, a1, v20);
    v21 = *(a3 + 16);
    sub_1DAA6144C(0, &qword_1EE11FF88, &type metadata for SDSQuoteResponse, MEMORY[0x1E69D68E0]);
    sub_1DACB8794();
    v22 = v30;
    sub_1DAA75E60(v31, v32);
    v23 = *(v22 + 16);

    sub_1DACB8794();

    v24 = v32;
    if (v32)
    {
      v25 = v31;
    }

    else
    {
      v25 = 0;
    }

    sub_1DAA8C2EC();
    v27 = (a4 + *(v26 + 48));
    sub_1DAAE84EC(v11);
    *v27 = v21;
    v27[1] = v23;
    v28 = MEMORY[0x1E69E7CC0];
    v27[2] = MEMORY[0x1E69E7CC0];
    v27[3] = v28;
    v27[4] = v25;
    v27[5] = v24;
    type metadata accessor for NetworkEvent();
  }

  return swift_storeEnumTagMultiPayload();
}

void sub_1DAC16704(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  sub_1DAAD8184();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC16BC0(0, &qword_1EE11FEE0, sub_1DAAD8184, MEMORY[0x1E69D6AF8]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (v20 - v14);
  sub_1DAC16C24(a1, v20 - v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    a2(*v15);
  }

  else
  {
    sub_1DAAE82AC(v15, v11);
    sub_1DAA6144C(0, &qword_1EE11FF88, &type metadata for SDSQuoteResponse, MEMORY[0x1E69D68E0]);
    sub_1DACB8794();
    v17 = v20[1];
    v18 = v20[2];
    v19 = sub_1DAC16CB8(v20[0]);

    sub_1DAA75E60(v17, v18);
    a5(v19);

    sub_1DAAE84EC(v11);
  }
}

uint64_t sub_1DAC16920()
{
  v1 = *(v0 + qword_1EE11DD68);

  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1EE11DD80));
  v2 = qword_1EE11DD70;
  v3 = sub_1DACB7CC4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = qword_1EE11DD78;
  v5 = sub_1DACB8204();
  v6 = *(*(v5 - 8) + 8);

  return v6(v0 + v4, v5);
}

uint64_t sub_1DAC169E8(uint64_t a1)
{
  v2 = *(a1 + qword_1EE11DD68);

  __swift_destroy_boxed_opaque_existential_1((a1 + qword_1EE11DD80));
  v3 = qword_1EE11DD70;
  v4 = sub_1DACB7CC4();
  (*(*(v4 - 8) + 8))(a1 + v3, v4);
  v5 = qword_1EE11DD78;
  v6 = sub_1DACB8204();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

uint64_t sub_1DAC16AB4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DACB71F4();
  sub_1DAC15CF8(sub_1DAADF554, v4);
}

uint64_t sub_1DAC16B60(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[2] = a1;
  v5[3] = v3;
  return sub_1DAC95478(sub_1DAC171C4, v5, a2);
}

void sub_1DAC16BC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DAC16C24(uint64_t a1, uint64_t a2)
{
  sub_1DAC16BC0(0, &qword_1EE11FEE0, sub_1DAAD8184, MEMORY[0x1E69D6AF8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAC16CB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v2 = 0;
  v3 = a1 + 136;
  v4 = MEMORY[0x1E69E7CC8];
  while (2)
  {
    v5 = (v3 + 776 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      memcpy(__dst, v5 - 104, 0x308uLL);
      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_43;
      }

      v7 = __dst[10];
      if (__dst[10])
      {
        break;
      }

      v5 += 776;
      if (v2 == v1)
      {
        return v4;
      }
    }

    v67 = v4;
    v8 = __dst[90];
    v9 = __dst[91];
    v69 = __dst[9];
    v70 = __dst[90];
    if (__dst[12])
    {
      v65 = __dst[12];
      v66 = __dst[11];
    }

    else
    {
      sub_1DACB71E4();
      v65 = v9;
      v66 = v8;
    }

    v10 = byte_1DACD6652[SLOBYTE(__dst[92])];
    memcpy(v76, v5, sizeof(v76));
    v54 = v3;
    v64 = v10;
    if (sub_1DAAE865C(v76) == 1)
    {
      v62 = 0;
      v63 = 0;
      v60 = 0;
      v61 = 0;
    }

    else
    {
      v11 = v76[70];
      v63 = __dst[84];
      v61 = v76[69];
      v62 = __dst[85];
      sub_1DACB71E4();
      v60 = v11;
      sub_1DACB71E4();
    }

    v56 = __dst[88];
    v12 = __dst[89];
    v58 = __dst[86];
    v13 = __dst[87];
    v14 = v67;
    v74 = v69;
    v75 = v7;
    swift_bridgeObjectRetain_n();
    sub_1DACB71E4();
    sub_1DAAE8548(__dst, v72);
    v15 = v12;
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DACB71E4();
    MEMORY[0x1E1276F20](58, 0xE100000000000000);
    MEMORY[0x1E1276F20](v70, v9);
    v59 = v74;
    v68 = v75;
    v16 = qword_1EE122610;
    sub_1DACB71E4();
    if (v16 != -1)
    {
      swift_once();
    }

    v17 = qword_1EE13E388;
    if (*(qword_1EE13E388 + 16))
    {
      v18 = sub_1DAA4BF3C(v70, v9);
      if (v19)
      {
        v20 = v18;

        v21 = (*(v17 + 56) + 16 * v20);
        v23 = *v21;
        v22 = v21[1];
        goto LABEL_22;
      }
    }

    v22 = v9;
    v23 = v70;
    if (v13)
    {
      v57 = v13;
    }

    else
    {
LABEL_22:
      v57 = v22;
      v58 = v23;
      sub_1DACB71E4();
    }

    v24 = qword_1EE13E390;
    if (*(qword_1EE13E390 + 16) && (v25 = sub_1DAA4BF3C(v70, v9), (v26 & 1) != 0))
    {
      v27 = v25;

      v28 = (*(v24 + 56) + 16 * v27);
      v30 = *v28;
      v29 = v28[1];
      v31 = sub_1DACB71E4();
    }

    else
    {
      v30 = v70;
      v31 = v9;
      if (v15)
      {

        v30 = v56;
        v31 = v15;
      }
    }

    v55 = v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = v14;
    v33 = sub_1DAA4BF3C(v70, v9);
    v35 = v14[2];
    v36 = (v34 & 1) == 0;
    v37 = __OFADD__(v35, v36);
    v38 = v35 + v36;
    if (v37)
    {
      goto LABEL_44;
    }

    v39 = v34;
    if (v14[3] >= v38)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v52 = v33;
        sub_1DAB656FC();
        v33 = v52;
      }
    }

    else
    {
      sub_1DAA80804(v38, isUniquelyReferenced_nonNull_native);
      v33 = sub_1DAA4BF3C(v70, v9);
      if ((v39 & 1) != (v40 & 1))
      {
        goto LABEL_46;
      }
    }

    if ((v39 & 1) == 0)
    {
      v4 = v74;
      v74[(v33 >> 6) + 8] |= 1 << v33;
      v48 = (v4[6] + 16 * v33);
      *v48 = v70;
      v48[1] = v9;
      v49 = v4[7] + 136 * v33;
      *v49 = v59;
      *(v49 + 8) = v68;
      *(v49 + 16) = v70;
      *(v49 + 24) = v9;
      *(v49 + 32) = v66;
      *(v49 + 40) = v65;
      *(v49 + 48) = v69;
      *(v49 + 56) = v7;
      *(v49 + 64) = v64;
      *(v49 + 65) = *v71;
      *(v49 + 68) = *&v71[3];
      *(v49 + 72) = v58;
      *(v49 + 80) = v57;
      *(v49 + 88) = v30;
      *(v49 + 96) = v55;
      *(v49 + 104) = v61;
      *(v49 + 112) = v60;
      *(v49 + 120) = v63;
      *(v49 + 128) = v62;
      v50 = v4[2];
      v37 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (!v37)
      {
        v4[2] = v51;
        sub_1DACB71E4();
        goto LABEL_38;
      }

LABEL_45:
      __break(1u);
LABEL_46:
      result = sub_1DACBA1F4();
      __break(1u);
      return result;
    }

    v4 = v74;
    v41 = v74[7] + 136 * v33;
    v72[0] = *v41;
    v42 = *(v41 + 64);
    v44 = *(v41 + 16);
    v43 = *(v41 + 32);
    v72[3] = *(v41 + 48);
    v72[4] = v42;
    v72[1] = v44;
    v72[2] = v43;
    v46 = *(v41 + 96);
    v45 = *(v41 + 112);
    v47 = *(v41 + 80);
    v73 = *(v41 + 128);
    v72[6] = v46;
    v72[7] = v45;
    v72[5] = v47;
    *v41 = v59;
    *(v41 + 8) = v68;
    *(v41 + 16) = v70;
    *(v41 + 24) = v9;
    *(v41 + 32) = v66;
    *(v41 + 40) = v65;
    *(v41 + 48) = v69;
    *(v41 + 56) = v7;
    *(v41 + 64) = v64;
    *(v41 + 65) = *v71;
    *(v41 + 68) = *&v71[3];
    *(v41 + 72) = v58;
    *(v41 + 80) = v57;
    *(v41 + 88) = v30;
    *(v41 + 96) = v55;
    *(v41 + 104) = v61;
    *(v41 + 112) = v60;
    *(v41 + 120) = v63;
    *(v41 + 128) = v62;
    sub_1DAA9B1C8(v72);
LABEL_38:
    sub_1DAAE85A4(__dst);
    v3 = v54;
    if (v2 != v1)
    {
      continue;
    }

    return v4;
  }
}

uint64_t sub_1DAC171E4(uint64_t a1)
{
  sub_1DAC16BC0(0, &qword_1EE11FEE0, sub_1DAAD8184, MEMORY[0x1E69D6AF8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAC17270(uint64_t *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  sub_1DAC17598(a1, a2);
  return v4;
}

uint64_t sub_1DAC172C0(uint64_t a1, void *a2)
{
  v2 = *(*(*(*a2 + *MEMORY[0x1E69E77B0]) - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v8 - v3;
  (*(v5 + 8))(v6, v5);
  swift_getAtKeyPath();
  return sub_1DAA640AC(v4);
}

uint64_t sub_1DAC17398()
{
  v1 = *(v0 + 32);
  v2 = (*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80);
  return sub_1DAC172C0(v0 + v2, *(v0 + ((*(*(*(v0 + 16) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1DAC17404()
{
  v1 = *(v0 + 104);
  sub_1DACB88F4();

  sub_1DACB83C4();
}

uint64_t sub_1DAC17450()
{
  v1 = *(v0 + 104);
  sub_1DACB88F4();

  return v3;
}

uint64_t sub_1DAC1748C()
{
  v1 = *(v0 + 104);
  sub_1DACB88F4();

  return v3;
}

uint64_t sub_1DAC174C8()
{
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE124210 != -1)
  {
    swift_once();
  }

  sub_1DACB7FE4();

  if (v5)
  {
    v1 = 0;
  }

  else
  {
    v2 = v0[11];
    v3 = v0[12];
    __swift_project_boxed_opaque_existential_1(v0 + 8, v2);
    v1 = (*(v3 + 8))(v2, v3);
  }

  return v1 & 1;
}

void *sub_1DAC17598(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v21 = *v2;
  v4 = sub_1DACB81D4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1DACB86E4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  *&v23[0] = MEMORY[0x1E69E7CC0];
  sub_1DAA5CC70(&qword_1EE1255A8, MEMORY[0x1E69D67A0]);
  v8 = MEMORY[0x1E69D67A0];
  v9 = MEMORY[0x1E69E62F8];
  sub_1DAA5FE8C(0, &qword_1EE125510, MEMORY[0x1E69D67A0], MEMORY[0x1E69E62F8]);
  sub_1DAA58620(&qword_1EE125508, &qword_1EE125510, v8);
  sub_1DACB9BB4();
  sub_1DAC1790C();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v2[7] = sub_1DACB8354();
  sub_1DAA4D678(a1, (v2 + 2));
  sub_1DAA4D678(a2, (v2 + 8));
  sub_1DAA4D678(a2, v23);
  v13 = swift_allocObject();
  sub_1DAA4D460(v23, v13 + 16);
  *(v13 + 56) = v21;
  *&v23[0] = MEMORY[0x1E69E7CC0];
  sub_1DAA5CC70(&qword_1EE1255D0, MEMORY[0x1E69D6420]);
  v14 = MEMORY[0x1E69D6420];
  sub_1DAA5FE8C(0, &qword_1EE125540, MEMORY[0x1E69D6420], v9);
  sub_1DAA58620(&qword_1EE125530, &qword_1EE125540, v14);
  sub_1DACB9BB4();
  sub_1DAA5FE8C(0, &qword_1EE1240C8, sub_1DAC17AF0, MEMORY[0x1E69D6A80]);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_1DACB8914();
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v3[13] = v18;
  return v3;
}

void sub_1DAC1790C()
{
  if (!qword_1EE124118)
  {
    type metadata accessor for AppConfiguration(255);
    v0 = sub_1DACB8374();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE124118);
    }
  }
}

uint64_t sub_1DAC17974@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AppConfiguration(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  sub_1DAC17BC0(a1, &v19 - v9);
  sub_1DAA55824(v10, v8);
  sub_1DAA5FE8C(0, &qword_1EE124100, type metadata accessor for AppConfiguration, MEMORY[0x1E69D6538]);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *a2 = sub_1DACB83B4();
  sub_1DAA55824(v10, v8);
  sub_1DAA5FE8C(0, &qword_1EE1240F8, type metadata accessor for AppConfiguration, MEMORY[0x1E69D6550]);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_1DACB8424();
  result = sub_1DAA640AC(v10);
  a2[1] = v17;
  return result;
}

void sub_1DAC17AF0()
{
  if (!qword_1EE124108)
  {
    sub_1DAA5FE8C(255, &qword_1EE124100, type metadata accessor for AppConfiguration, MEMORY[0x1E69D6538]);
    sub_1DAA5FE8C(255, &qword_1EE1240F8, type metadata accessor for AppConfiguration, MEMORY[0x1E69D6550]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE124108);
    }
  }
}

void sub_1DAC17BC0(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DAA5FE8C(0, &qword_1EE124E18, type metadata accessor for AppConfiguration, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v68 - v6;
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE124210 != -1)
  {
    swift_once();
  }

  sub_1DACB7FE4();

  if (v89[0])
  {
    sub_1DAA41DCC();
    v8 = sub_1DACB9AD4();
    sub_1DACB9914();
  }

  else
  {
    v9 = a1[3];
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v9);
    (*(v10 + 16))(v9, v10);
    v11 = type metadata accessor for AppConfiguration(0);
    if ((*(*(v11 - 8) + 48))(v7, 1, v11) != 1)
    {
      sub_1DAA4F708(v7, a2);
      sub_1DAA41DCC();
      v67 = sub_1DACB9AD4();
      sub_1DACB9914();
      sub_1DACB8C64();

      return;
    }

    sub_1DAA54190(v7);
    sub_1DAA41DCC();
    v8 = sub_1DACB9AD4();
    sub_1DACB9914();
  }

  sub_1DACB8C64();

  v12 = type metadata accessor for AppConfiguration(0);
  v13 = *(v12 + 536);
  v14 = sub_1DACB88D4();
  v15 = *(*(v14 - 8) + 56);
  v15(a2 + v13, 1, 1, v14);
  v75 = v12;
  v15(a2 + *(v12 + 560), 1, 1, v14);
  *a2 = 0;
  v16 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = v16;
  *(a2 + 24) = xmmword_1DACD4070;
  *(a2 + 40) = xmmword_1DACD4080;
  *(a2 + 56) = vdupq_n_s64(0x64uLL);
  *(a2 + 72) = 1;
  *(a2 + 80) = v16;
  *(a2 + 88) = 257;
  *(a2 + 96) = 0x3F50624DD2F1A9FCLL;
  *(a2 + 104) = 257;
  *(a2 + 112) = vdupq_n_s64(3uLL);
  *(a2 + 128) = xmmword_1DACD4090;
  *(a2 + 144) = xmmword_1DACD40A0;
  *(a2 + 160) = 0x4092C00000000000;
  *(a2 + 168) = 0xD00000000000002CLL;
  *(a2 + 176) = 0x80000001DACEDBE0;
  v17 = vdupq_n_s64(0x4122750000000000uLL);
  *(a2 + 184) = vdupq_n_s64(0x4082C00000000000uLL);
  *(a2 + 200) = v17;
  *(a2 + 216) = v17;
  *(a2 + 232) = xmmword_1DACD40B0;
  *(a2 + 248) = 1;
  *(a2 + 250) = 0;
  *(a2 + 256) = vdupq_n_s64(0xCuLL);
  *(a2 + 272) = vdupq_n_s64(0x40CC200000000000uLL);
  *(a2 + 288) = xmmword_1DACD40C0;
  *(a2 + 304) = xmmword_1DACD40D0;
  *(a2 + 320) = 0x404E000000000000;
  *(a2 + 328) = 2;
  *(a2 + 336) = 0x3FF8000000000000;
  *(a2 + 344) = 1;
  *(a2 + 352) = 0x40F5180000000000;
  strcpy((a2 + 1384), "WS-143441-en");
  *(a2 + 1397) = 0;
  *(a2 + 1398) = -5120;
  *(a2 + 1400) = 257;
  *(a2 + 1408) = xmmword_1DACD40E0;
  strcpy((a2 + 1424), "YS-143441-en");
  *(a2 + 1437) = 0;
  *(a2 + 1438) = -5120;
  *(a2 + 1440) = 0;
  *(a2 + 1448) = 0xE000000000000000;
  *(a2 + 1456) = xmmword_1DACD40F0;
  *(a2 + 1472) = 0x80000001DACE6EB0;
  *(a2 + 1480) = v16;
  *(a2 + 1488) = 0x40D5180000000000;
  *(a2 + 1496) = 0xD00000000000002FLL;
  *(a2 + 1504) = 0x80000001DACEDC10;
  *(a2 + 1512) = v16;
  *(a2 + 1520) = 0xD00000000000005ELL;
  *(a2 + 1528) = 0x80000001DACEDC40;
  *(a2 + 1536) = 23899;
  *(a2 + 1544) = 0xE200000000000000;
  *(a2 + 1552) = 0;
  *(a2 + 1560) = 0xE000000000000000;
  *(a2 + 1568) = 0;
  *(a2 + 1576) = 0x3FF0000000000000;
  *(a2 + 1584) = 0x3FF0000000000000;
  *(a2 + 400) = v16;
  *(a2 + 408) = v16;
  sub_1DAA4BB18(v77);
  if (qword_1EE1242B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v18 = qword_1EE1242C0;
  v19 = qword_1EE1242C8;
  sub_1DACB71E4();
  v20 = sub_1DAA4BBA0(v18, v19);
  v73 = v21;
  v74 = v20;

  v22 = qword_1EE1242C0;
  v23 = qword_1EE1242C8;
  sub_1DACB71E4();
  v24 = sub_1DAA4C06C(v22, v23);
  v71 = v25;
  v72 = v24;

  v26 = qword_1EE1242C0;
  v27 = qword_1EE1242C8;
  sub_1DACB71E4();
  v28 = sub_1DAA4C248(v26, v27);
  v69 = v29;
  v70 = v28;

  v30 = qword_1EE1242C0;
  v31 = qword_1EE1242C8;
  sub_1DACB71E4();
  v32 = sub_1DAA4C424(v30, v31);
  v34 = v33;

  v35 = qword_1EE1242C0;
  v36 = qword_1EE1242C8;
  sub_1DACB71E4();
  v37 = sub_1DAA4C600(v35, v36);
  v39 = v38;

  *(a2 + 544) = 0u;
  *(a2 + 560) = xmmword_1DACD4100;
  v40 = v77[8];
  v41 = v77[9];
  v42 = v77[6];
  *(a2 + 736) = v77[7];
  *(a2 + 752) = v40;
  *(a2 + 768) = v41;
  v43 = v77[4];
  v44 = v77[5];
  v45 = v77[2];
  *(a2 + 672) = v77[3];
  *(a2 + 688) = v43;
  *(a2 + 704) = v44;
  *(a2 + 720) = v42;
  v46 = v77[0];
  v47 = v77[1];
  *(a2 + 608) = 0u;
  *(a2 + 624) = v46;
  v84 = 1;
  v82 = 1;
  *(a2 + 416) = 0u;
  *(a2 + 432) = 0;
  *(a2 + 433) = 1;
  *(a2 + 435) = 0;
  *(a2 + 440) = 0;
  *(a2 + 448) = 0;
  *(a2 + 449) = *v85;
  *(a2 + 452) = *&v85[3];
  v49 = v73;
  v48 = v74;
  *(a2 + 456) = 0;
  *(a2 + 464) = v48;
  v51 = v71;
  v50 = v72;
  *(a2 + 472) = v49;
  *(a2 + 480) = v50;
  v52 = v69;
  v53 = v70;
  *(a2 + 488) = v51;
  *(a2 + 496) = v53;
  *(a2 + 504) = v52;
  *(a2 + 512) = v32;
  *(a2 + 520) = v34;
  *(a2 + 528) = v37;
  *(a2 + 536) = v39;
  *(a2 + 576) = 0u;
  *(a2 + 592) = 0u;
  *(a2 + 784) = v78;
  *(a2 + 640) = v47;
  *(a2 + 656) = v45;
  *(a2 + 792) = 0;
  *(a2 + 800) = v84;
  *(a2 + 801) = *v83;
  *(a2 + 804) = *&v83[3];
  *(a2 + 808) = 0;
  *(a2 + 816) = v82;
  *(a2 + 817) = *v81;
  *(a2 + 820) = *&v81[3];
  *(a2 + 824) = 0;
  *(a2 + 832) = 0u;
  *(a2 + 848) = 0xE000000000000000;
  *(a2 + 856) = 0u;
  *(a2 + 872) = 0u;
  *(a2 + 882) = 0u;
  *(a2 + 898) = v79;
  *(a2 + 902) = v80;
  *(a2 + 904) = 25;
  v54 = MEMORY[0x1E69E7CC0];
  *(a2 + 912) = MEMORY[0x1E69E7CC0];
  *(a2 + 920) = 1;
  v89[0] = 0;
  LOBYTE(v88[0]) = 0;
  LOBYTE(v87[0]) = 0;
  LOBYTE(v86[0]) = 0;
  *(a2 + 928) = xmmword_1DACD4110;
  *(a2 + 944) = 0;
  *(a2 + 945) = v88[0];
  *(a2 + 948) = *(v88 + 3);
  *(a2 + 952) = 0;
  *(a2 + 960) = 0;
  *(a2 + 961) = v87[0];
  *(a2 + 964) = *(v87 + 3);
  *(a2 + 968) = 1;
  *(a2 + 976) = 0;
  LODWORD(v53) = v86[0];
  *(a2 + 980) = *(v86 + 3);
  *(a2 + 977) = v53;
  *(a2 + 984) = 86400;
  *(a2 + 992) = 0;
  *(a2 + 1000) = 0x3FA999999999999ALL;
  *(a2 + 1040) = 0;
  *(a2 + 1008) = xmmword_1DACD4120;
  *(a2 + 1024) = 0u;
  *(a2 + 1048) = 0x3FA999999999999ALL;
  *(a2 + 1056) = xmmword_1DACD4130;
  *(a2 + 1072) = xmmword_1DACD4140;
  *(a2 + 1088) = xmmword_1DACD4120;
  *(a2 + 1104) = xmmword_1DACD4150;
  *(a2 + 1120) = xmmword_1DACD4160;
  *(a2 + 1136) = xmmword_1DACD4170;
  *(a2 + 1152) = 0;
  sub_1DAA4C870(v89);
  memcpy(v76, v89, 0x46BuLL);
  memcpy(&v76[1136], v89, 0x46BuLL);
  memcpy((a2 + 1592), v76, 0x8DBuLL);
  *(a2 + 3859) = 0;
  *(a2 + 360) = 1;
  *(a2 + 368) = vdupq_n_s64(0x4143C68000000000uLL);
  *(a2 + 384) = xmmword_1DACD4180;
  *(a2 + 1160) = 32123;
  *(a2 + 1168) = 0xE200000000000000;
  *(a2 + 3864) = 0x3FD0000000000000;
  *(a2 + 3872) = 0;
  *(a2 + 3880) = 2;
  *(a2 + 3888) = 0;
  *(a2 + 3896) = 2592000;
  *(a2 + 3904) = 0;
  *(a2 + 3912) = 0x3FF0000000000000;
  *(a2 + 3920) = 0;
  *(a2 + 3928) = 0x3FF0000000000000;
  *(a2 + 3936) = 0;
  *(a2 + 3944) = 0;
  *(a2 + 3952) = 1;
  *(a2 + 1272) = 600;
  *(a2 + 1280) = xmmword_1DACD4190;
  *(a2 + 1296) = 180;
  *(a2 + 1304) = 0x4008000000000000;
  *(a2 + 1312) = 0xD00000000000001CLL;
  *(a2 + 1320) = 0x80000001DACEDCA0;
  *(a2 + 1328) = 0xD00000000000002BLL;
  *(a2 + 1336) = 0x80000001DACEDCC0;
  *(a2 + 1344) = 0;
  *(a2 + 1176) = 0;
  v55 = objc_opt_self();
  [v55 fc_timeIntervalOneDay];
  *(a2 + 3960) = v56;
  *(a2 + 3968) = 0;
  [v55 fc_timeIntervalOneDay];
  *(a2 + 3976) = v57 * 15.0;
  *(a2 + 1184) = 0xFFFFFFFFLL;
  *(a2 + 1192) = v54;
  *(a2 + 3984) = 256;
  *(a2 + 3992) = 0u;
  *(a2 + 1200) = 0xFFFFFFFFLL;
  *(a2 + 1208) = 0xC082C00000000000;
  *(a2 + 1216) = 0x4082C00000000000;
  *(a2 + 1224) = v54;
  *(a2 + 1232) = v54;
  *(a2 + 1240) = v54;
  *(a2 + 4008) = 1;
  *(a2 + 4016) = xmmword_1DACD41A0;
  *(a2 + 4032) = 1;
  *(a2 + 4040) = 0u;
  *(a2 + 1248) = v54;
  *(a2 + 1256) = v54;
  *(a2 + 1264) = v54;
  *(a2 + 1352) = 1296000;
  v58 = sub_1DAA5518C(&unk_1F567EAF8);
  swift_arrayDestroy();
  *(a2 + 1360) = v58;
  *(a2 + 1368) = 0u;
  v59 = v75;
  *(a2 + v75[135]) = 0;
  *(a2 + 4056) = 0;
  *(a2 + 4064) = 0;
  *(a2 + 4072) = 0x7FEFFFFFFFFFFFFFLL;
  v60.f64[0] = NAN;
  v60.f64[1] = NAN;
  *(a2 + 4080) = vnegq_f64(v60);
  *(a2 + 4096) = 0x7FFFFFFFFFFFFFFFLL;
  *(a2 + 4104) = 0;
  *(a2 + 4112) = 0;
  *(a2 + 4128) = 0;
  *(a2 + 4120) = 0;
  *(a2 + 4136) = 0xE000000000000000;
  *(a2 + 4144) = 0;
  *(a2 + 4152) = 0;
  *(a2 + 4160) = 0;
  *(a2 + 4168) = 0;
  *(a2 + 4176) = 0;
  *(a2 + 4192) = 0;
  *(a2 + 4184) = 0;
  *(a2 + 4200) = 0;
  *(a2 + 4208) = 1;
  *(a2 + 4216) = 0x415DA9C000000000;
  *(a2 + 4224) = 1;
  *(a2 + 4232) = 0;
  *(a2 + 4248) = 0xFFFFFFFFLL;
  *(a2 + 4256) = 0xFFFFFFFFLL;
  sub_1DAA5FE8C(0, &qword_1EE123B78, MEMORY[0x1E6969680], MEMORY[0x1E69E6F90]);
  v61 = *(sub_1DACB7DC4() - 8);
  v62 = *(v61 + 72);
  v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1DACC1D40;
  sub_1DACB7DB4();
  sub_1DACB7DB4();
  v65 = sub_1DAA4CB70(v64);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(a2 + 4264) = v65;
  *(a2 + 4272) = 0;
  *(a2 + 4240) = v54;
  *(a2 + 4280) = 0;
  *(a2 + 4288) = 0;
  *(a2 + v59[136]) = 0;
  *(a2 + v59[137]) = 1;
  *(a2 + v59[138]) = 0;
  v66 = a2 + v59[139];
  *v66 = 0;
  *(v66 + 8) = 1;
}

uint64_t sub_1DAC187F4()
{
  v1 = v0;
  v2 = type metadata accessor for AppConfiguration(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE124210 != -1)
  {
    swift_once();
  }

  sub_1DACB7FE4();

  if ((v14 & 1) != 0 || (v4 = v0[11], v5 = v0[12], __swift_project_boxed_opaque_existential_1(v0 + 8, v4), ((*(v5 + 8))(v4, v5) & 1) == 0))
  {
    sub_1DAA41DCC();
    v12 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();

    v13 = v1[7];
    return sub_1DACB8364();
  }

  else
  {
    sub_1DAA41DCC();
    v6 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();

    v7 = v1[13];
    sub_1DACB88F4();

    sub_1DACB83C4();

    sub_1DAA5FE8C(0, &qword_1EE1240B0, type metadata accessor for AppConfiguration, MEMORY[0x1E69D6B18]);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    return sub_1DACB8AE4();
  }
}

uint64_t sub_1DAC18AAC()
{
  sub_1DAA5FE8C(0, &qword_1EE1240B0, type metadata accessor for AppConfiguration, MEMORY[0x1E69D6B18]);
  sub_1DACB71F4();
  return sub_1DACB8A44();
}

uint64_t sub_1DAC18B2C(uint64_t a1, uint64_t a2)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DAC18B4C, 0, 0);
}

uint64_t sub_1DAC18B4C()
{
  v1 = v0[10];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v0[11] = (*(v3 + 8))(v2, v3);
  v4 = *(MEMORY[0x1E69D6B08] + 4);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1DAC18C28;
  v6 = v0[9];

  return MEMORY[0x1EEE44EE0](v6);
}

uint64_t sub_1DAC18C28()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1DAC18FD0;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_1DAC18D44;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAC18D44()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v1[11];
  v4 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v3);
  (*(v4 + 24))(v2, v3, v4);
  sub_1DACB9794();
  v0[14] = sub_1DACB9784();
  v6 = sub_1DACB9744();

  return MEMORY[0x1EEE6DFA0](sub_1DAC18E1C, v6, v5);
}

uint64_t sub_1DAC18E1C()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[10];

  v0[15] = *(v3 + 104);
  sub_1DACB88F4();
  v5 = v0[4];
  v4 = v0[5];

  v0[16] = sub_1DAA5CC70(&qword_1EE124E28, type metadata accessor for AppConfiguration);
  sub_1DACB83E4();

  return MEMORY[0x1EEE6DFA0](sub_1DAC18EF0, 0, 0);
}

uint64_t sub_1DAC18EF0()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[9];
  sub_1DACB88F4();
  v4 = v0[6];

  v5 = v0[7];
  sub_1DACB8454();

  sub_1DAA41DCC();
  v6 = sub_1DACB9AD4();
  sub_1DACB9914();
  sub_1DACB8C64();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DAC18FD0()
{
  v1 = v0[13];
  v2 = v0[11];

  sub_1DAA41DCC();
  v3 = sub_1DACB9AD4();
  sub_1DACB9904();
  sub_1DAA41D64();
  v4 = swift_allocObject();
  v0[2] = 0;
  *(v4 + 16) = xmmword_1DACC1D20;
  v0[3] = 0xE000000000000000;
  v0[8] = v1;
  sub_1DAA4436C(0, &qword_1EE123B10);
  sub_1DACB9DD4();
  v5 = v0[2];
  v6 = v0[3];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1DAA443C8();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  sub_1DACB8C64();

  swift_willThrow();
  v7 = v0[1];
  v8 = v0[13];

  return v7();
}

uint64_t *sub_1DAC19138()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v2 = v0[13];

  return v0;
}

uint64_t sub_1DAC19170()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v2 = v0[13];

  return swift_deallocClassInstance();
}

uint64_t sub_1DAC191C0()
{
  v1 = *(*v0 + 104);
  sub_1DACB88F4();

  sub_1DACB83C4();
}

uint64_t sub_1DAC19210()
{
  v1 = *(*v0 + 104);
  sub_1DACB88F4();

  return v3;
}

uint64_t sub_1DAC19250()
{
  v1 = *(*v0 + 104);
  sub_1DACB88F4();

  return v3;
}

uint64_t sub_1DAC19290()
{
  v1 = *v0;
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE124210 != -1)
  {
    swift_once();
  }

  sub_1DACB7FE4();

  if (v6)
  {
    v2 = 0;
  }

  else
  {
    v3 = v1[11];
    v4 = v1[12];
    __swift_project_boxed_opaque_existential_1(v1 + 8, v3);
    v2 = (*(v4 + 8))(v3, v4);
  }

  return v2 & 1;
}

BOOL sub_1DAC193E4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1DACB92F4();
  v2 = [v0 dataForKey_];

  if (v2)
  {
    v3 = sub_1DACB7B64();
    v5 = v4;

    sub_1DAA563C0(v3, v5);
  }

  return v2 != 0;
}

uint64_t sub_1DAC194A8@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1DACB92F4();
  v4 = [v2 dataForKey_];

  if (v4)
  {
    v5 = sub_1DACB7B64();
    v7 = v6;

    v8 = sub_1DACB7554();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_1DACB7544();
    v11 = type metadata accessor for AppConfiguration(0);
    sub_1DAA5CC70(&qword_1EE124E20, type metadata accessor for AppConfiguration);
    sub_1DACB7524();
    sub_1DAA563C0(v5, v7);

    v13 = *(*(v11 - 8) + 56);
    v14 = a1;
    v15 = 0;
    v16 = v11;
  }

  else
  {
    v12 = type metadata accessor for AppConfiguration(0);
    v13 = *(*(v12 - 8) + 56);
    v16 = v12;
    v14 = a1;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

BOOL sub_1DAC19818()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1DACB92F4();
  v2 = [v0 dataForKey_];

  if (v2)
  {
    v3 = sub_1DACB7B64();
    v5 = v4;

    sub_1DAA563C0(v3, v5);
  }

  return v2 != 0;
}

uint64_t sub_1DAC198F8()
{
  v0 = swift_allocObject();
  sub_1DAC19930(v0);
  return v0;
}

uint64_t sub_1DAC19930(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v185 = v1;
  v2 = type metadata accessor for AppConfiguration(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 536);
  v8 = sub_1DACB88D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v11 = v9 + 56;
  v10(&v6[v7], 1, 1, v8);
  v184 = v2;
  v12 = &v6[*(v2 + 560)];
  v183 = v8;
  v182 = v10;
  v181 = v11;
  v10(v12, 1, 1, v8);
  *v6 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  *(v6 + 1) = MEMORY[0x1E69E7CC0];
  *(v6 + 2) = v13;
  v180 = xmmword_1DACD4070;
  *(v6 + 24) = xmmword_1DACD4070;
  v179 = xmmword_1DACD4080;
  *(v6 + 40) = xmmword_1DACD4080;
  *(v6 + 56) = vdupq_n_s64(0x64uLL);
  *(v6 + 9) = 1;
  *(v6 + 10) = v13;
  *(v6 + 44) = 257;
  *(v6 + 12) = 0x3F50624DD2F1A9FCLL;
  *(v6 + 52) = 257;
  *(v6 + 7) = vdupq_n_s64(3uLL);
  *(v6 + 8) = xmmword_1DACD4090;
  v178 = xmmword_1DACD4090;
  v177 = xmmword_1DACD40A0;
  *(v6 + 9) = xmmword_1DACD40A0;
  *(v6 + 20) = 0x4092C00000000000;
  *(v6 + 21) = 0xD00000000000002CLL;
  v175 = 0xD00000000000002CLL;
  v176 = 0x80000001DACEDBE0;
  *(v6 + 22) = 0x80000001DACEDBE0;
  v174 = vdupq_n_s64(0x4082C00000000000uLL);
  *(v6 + 184) = v174;
  v14 = vdupq_n_s64(0x4122750000000000uLL);
  *(v6 + 200) = v14;
  v173 = v14;
  *(v6 + 216) = v14;
  v172 = xmmword_1DACD40B0;
  *(v6 + 232) = xmmword_1DACD40B0;
  *(v6 + 124) = 1;
  v6[250] = 0;
  v15 = vdupq_n_s64(0x40CC200000000000uLL);
  *(v6 + 16) = vdupq_n_s64(0xCuLL);
  *(v6 + 17) = v15;
  v171 = v15;
  v170 = xmmword_1DACD40C0;
  *(v6 + 18) = xmmword_1DACD40C0;
  *(v6 + 19) = xmmword_1DACD40D0;
  v168 = xmmword_1DACD40D0;
  *(v6 + 40) = 0x404E000000000000;
  *(v6 + 41) = 2;
  *(v6 + 42) = 0x3FF8000000000000;
  v6[344] = 1;
  *(v6 + 44) = 0x40F5180000000000;
  strcpy(v6 + 1384, "WS-143441-en");
  v6[1397] = 0;
  *(v6 + 699) = -5120;
  *(v6 + 700) = 257;
  v167 = xmmword_1DACD40E0;
  *(v6 + 88) = xmmword_1DACD40E0;
  v166 = 0x34343334312D5359;
  strcpy(v6 + 1424, "YS-143441-en");
  v6[1437] = 0;
  *(v6 + 719) = -5120;
  *(v6 + 180) = 0;
  *(v6 + 181) = 0xE000000000000000;
  v164 = xmmword_1DACD40F0;
  *(v6 + 91) = xmmword_1DACD40F0;
  v165 = 0x80000001DACE6EB0;
  *(v6 + 184) = 0x80000001DACE6EB0;
  *(v6 + 185) = v13;
  *(v6 + 186) = 0x40D5180000000000;
  v161 = 0xD00000000000002FLL;
  v162 = 0x80000001DACEDC40;
  *(v6 + 187) = 0xD00000000000002FLL;
  v163 = 0x80000001DACEDC10;
  *(v6 + 188) = 0x80000001DACEDC10;
  *(v6 + 189) = v13;
  *(v6 + 190) = 0xD00000000000005ELL;
  *(v6 + 191) = 0x80000001DACEDC40;
  *(v6 + 192) = 23899;
  *(v6 + 193) = 0xE200000000000000;
  *(v6 + 194) = 0;
  *(v6 + 195) = 0xE000000000000000;
  v6[1568] = 0;
  *(v6 + 197) = 0x3FF0000000000000;
  *(v6 + 198) = 0x3FF0000000000000;
  *(v6 + 50) = v13;
  *(v6 + 51) = v13;
  sub_1DAA4BB18(&v188);
  if (qword_1EE1242B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = qword_1EE1242C0;
  v17 = qword_1EE1242C8;
  sub_1DACB71E4();
  v18 = sub_1DAA4BBA0(v16, v17);
  v159 = v19;
  v160 = v18;

  v20 = qword_1EE1242C0;
  v21 = qword_1EE1242C8;
  sub_1DACB71E4();
  v22 = sub_1DAA4C06C(v20, v21);
  v157 = v23;
  v158 = v22;

  v25 = qword_1EE1242C0;
  v24 = qword_1EE1242C8;
  sub_1DACB71E4();
  v26 = sub_1DAA4C248(v25, v24);
  v28 = v27;

  v29 = qword_1EE1242C0;
  v30 = qword_1EE1242C8;
  sub_1DACB71E4();
  v31 = sub_1DAA4C424(v29, v30);
  v33 = v32;

  v35 = qword_1EE1242C0;
  v34 = qword_1EE1242C8;
  sub_1DACB71E4();
  v36 = sub_1DAA4C600(v35, v34);
  v38 = v37;

  v204 = 1;
  v202 = 1;
  *(v6 + 26) = 0u;
  v6[432] = 0;
  *(v6 + 433) = 1;
  v6[435] = 0;
  *(v6 + 55) = 0;
  v6[448] = 0;
  v169 = v6 + 449;
  *(v6 + 449) = *v205;
  *(v6 + 113) = *&v205[3];
  v40 = v159;
  v39 = v160;
  *(v6 + 57) = 0;
  *(v6 + 58) = v39;
  v41 = v157;
  v42 = v158;
  *(v6 + 59) = v40;
  *(v6 + 60) = v42;
  *(v6 + 61) = v41;
  *(v6 + 62) = v26;
  *(v6 + 63) = v28;
  *(v6 + 64) = v31;
  *(v6 + 65) = v33;
  *(v6 + 66) = v36;
  *(v6 + 67) = v38;
  v43 = v196;
  v44 = v197;
  v45 = v194;
  *(v6 + 46) = v195;
  *(v6 + 47) = v43;
  *(v6 + 48) = v44;
  v46 = v192;
  v47 = v193;
  v48 = v190;
  *(v6 + 42) = v191;
  *(v6 + 43) = v46;
  v146 = xmmword_1DACD4100;
  *(v6 + 34) = 0u;
  *(v6 + 35) = xmmword_1DACD4100;
  *(v6 + 36) = 0u;
  *(v6 + 37) = 0u;
  *(v6 + 98) = v198;
  *(v6 + 44) = v47;
  *(v6 + 45) = v45;
  v49 = v188;
  v50 = v189;
  *(v6 + 38) = 0u;
  *(v6 + 39) = v49;
  *(v6 + 40) = v50;
  *(v6 + 41) = v48;
  *(v6 + 99) = 0;
  v6[800] = v204;
  v160 = v6 + 801;
  *(v6 + 801) = *v203;
  *(v6 + 201) = *&v203[3];
  *(v6 + 101) = 0;
  v6[816] = v202;
  *(v6 + 817) = *v201;
  *(v6 + 205) = *&v201[3];
  *(v6 + 103) = 0;
  *(v6 + 52) = 0u;
  *(v6 + 106) = 0xE000000000000000;
  v157 = v6 + 856;
  v158 = v6 + 817;
  v159 = v6 + 898;
  *(v6 + 856) = 0u;
  *(v6 + 872) = 0u;
  *(v6 + 882) = 0u;
  *(v6 + 898) = v199;
  *(v6 + 451) = v200;
  *(v6 + 113) = 25;
  v51 = MEMORY[0x1E69E7CC0];
  *(v6 + 114) = MEMORY[0x1E69E7CC0];
  v6[920] = 1;
  v209[0] = 0;
  LOBYTE(v217[0]) = 0;
  LOBYTE(v216[0]) = 0;
  LOBYTE(v215[0]) = 0;
  v156 = xmmword_1DACD4110;
  *(v6 + 58) = xmmword_1DACD4110;
  v6[944] = 0;
  v155 = v6 + 945;
  *(v6 + 945) = *v208;
  *(v6 + 237) = *&v208[3];
  *(v6 + 119) = 0;
  v6[960] = 0;
  *(v6 + 961) = *v207;
  *(v6 + 241) = *&v207[3];
  *(v6 + 121) = 1;
  v6[976] = 0;
  v153 = v6 + 977;
  v154 = v6 + 961;
  LODWORD(v41) = *v206;
  *(v6 + 245) = *&v206[3];
  *(v6 + 977) = v41;
  *(v6 + 123) = 86400;
  v6[992] = 0;
  *(v6 + 125) = 0x3FA999999999999ALL;
  *(v6 + 130) = 0;
  *(v6 + 63) = xmmword_1DACD4120;
  *(v6 + 64) = 0u;
  *(v6 + 131) = 0x3FA999999999999ALL;
  *(v6 + 66) = xmmword_1DACD4130;
  *(v6 + 67) = xmmword_1DACD4140;
  *(v6 + 68) = xmmword_1DACD4120;
  *(v6 + 69) = xmmword_1DACD4150;
  *(v6 + 70) = xmmword_1DACD4160;
  *(v6 + 71) = xmmword_1DACD4170;
  *(v6 + 144) = 0;
  sub_1DAA4C870(v209);
  memcpy(v187, v209, 0x46BuLL);
  memcpy(&v187[1136], v209, 0x46BuLL);
  memcpy(v6 + 1592, v187, 0x8DBuLL);
  v6[3859] = 0;
  *(v6 + 45) = 1;
  v152 = vdupq_n_s64(0x4143C68000000000uLL);
  v151 = xmmword_1DACD4180;
  *(v6 + 23) = v152;
  *(v6 + 24) = xmmword_1DACD4180;
  *(v6 + 145) = 32123;
  *(v6 + 146) = 0xE200000000000000;
  *(v6 + 483) = 0x3FD0000000000000;
  v6[3872] = 0;
  *(v6 + 485) = 2;
  v6[3888] = 0;
  *(v6 + 487) = 2592000;
  v6[3904] = 0;
  *(v6 + 489) = 0x3FF0000000000000;
  v6[3920] = 0;
  *(v6 + 491) = 0x3FF0000000000000;
  v6[3936] = 0;
  *(v6 + 493) = 0;
  v6[3952] = 1;
  *(v6 + 159) = 600;
  *(v6 + 80) = xmmword_1DACD4190;
  *(v6 + 162) = 180;
  *(v6 + 163) = 0x4008000000000000;
  v150 = 0x80000001DACEDCA0;
  *(v6 + 164) = 0xD00000000000001CLL;
  *(v6 + 165) = 0x80000001DACEDCA0;
  v148 = 0xD00000000000002BLL;
  v149 = 0x80000001DACEDCC0;
  *(v6 + 166) = 0xD00000000000002BLL;
  *(v6 + 167) = 0x80000001DACEDCC0;
  *(v6 + 168) = 0;
  v6[1176] = 0;
  v52 = objc_opt_self();
  v145 = v52;
  [v52 fc_timeIntervalOneDay];
  *(v6 + 495) = v53;
  *(v6 + 496) = 0;
  [v52 &selRef_initWithOldWatchlistIDs_newWatchlistIDs_ + 6];
  *(v6 + 497) = v54 * 15.0;
  *(v6 + 148) = 0xFFFFFFFFLL;
  *(v6 + 149) = v51;
  *(v6 + 1992) = 256;
  *(v6 + 3992) = 0u;
  *(v6 + 150) = 0xFFFFFFFFLL;
  *(v6 + 151) = 0xC082C00000000000;
  *(v6 + 152) = 0x4082C00000000000;
  *(v6 + 153) = v51;
  *(v6 + 154) = v51;
  *(v6 + 155) = v51;
  v6[4008] = 1;
  v147 = xmmword_1DACD41A0;
  *(v6 + 251) = xmmword_1DACD41A0;
  *(v6 + 504) = 1;
  *(v6 + 4040) = 0u;
  *(v6 + 156) = v51;
  *(v6 + 157) = v51;
  *(v6 + 158) = v51;
  *(v6 + 169) = 1296000;
  v55 = sub_1DAA5518C(&unk_1F567EBB8);
  swift_arrayDestroy();
  *(v6 + 170) = v55;
  *(v6 + 1368) = 0u;
  v56 = v184;
  *&v6[v184[135]] = 0;
  *(v6 + 507) = 0;
  v6[4064] = 0;
  *(v6 + 509) = 0x7FEFFFFFFFFFFFFFLL;
  v57.f64[0] = NAN;
  v57.f64[1] = NAN;
  v144 = vnegq_f64(v57);
  *(v6 + 255) = v144;
  *(v6 + 512) = 0x7FFFFFFFFFFFFFFFLL;
  v6[4104] = 0;
  v143 = v6 + 4112;
  *(v6 + 514) = 0;
  *(v6 + 4120) = 0u;
  *(v6 + 517) = 0xE000000000000000;
  *(v6 + 518) = 0;
  v6[4152] = 0;
  *(v6 + 520) = 0;
  v6[4168] = 0;
  v142 = v6 + 4176;
  *(v6 + 522) = 0;
  *(v6 + 4184) = 0u;
  v6[4200] = 0;
  *(v6 + 526) = 1;
  *(v6 + 527) = 0x415DA9C000000000;
  v6[4224] = 1;
  *(v6 + 529) = 0;
  *(v6 + 531) = 0xFFFFFFFFLL;
  *(v6 + 532) = 0xFFFFFFFFLL;
  sub_1DAA5FE8C(0, &qword_1EE123B78, MEMORY[0x1E6969680], MEMORY[0x1E69E6F90]);
  v141 = v58;
  v136 = sub_1DACB7DC4();
  v59 = *(*(v136 - 8) + 72);
  v60 = *(*(v136 - 8) + 80);
  v139 = ((v60 + 32) & ~v60) + 2 * v59;
  v140 = v60;
  v138 = (v60 + 32) & ~v60;
  v135 = v59;
  v61 = swift_allocObject();
  v137 = xmmword_1DACC1D40;
  *(v61 + 16) = xmmword_1DACC1D40;
  sub_1DACB7DB4();
  sub_1DACB7DB4();
  v62 = sub_1DAA4CB70(v61);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v6 + 533) = v62;
  *(v6 + 534) = 0;
  *(v6 + 530) = v51;
  v6[4280] = 0;
  *(v6 + 536) = 0;
  *&v6[v56[136]] = 0;
  v6[v56[137]] = 1;
  v6[v56[138]] = 0;
  v63 = &v6[v56[139]];
  *v63 = 0;
  v63[8] = 1;
  v134 = type metadata accessor for AppConfiguration;
  sub_1DAA5FE8C(0, &qword_1EE124100, type metadata accessor for AppConfiguration, MEMORY[0x1E69D6538]);
  v65 = *(v64 + 48);
  v66 = *(v64 + 52);
  swift_allocObject();
  *(v185 + 16) = sub_1DACB83B4();
  v67 = v183;
  v68 = v182;
  v182(&v6[v56[134]], 1, 1, v183);
  v68(&v6[v56[140]], 1, 1, v67);
  *v6 = 0;
  *(v6 + 1) = v51;
  *(v6 + 2) = v51;
  v69 = v179;
  *(v6 + 24) = v180;
  *(v6 + 40) = v69;
  *(v6 + 56) = vdupq_n_s64(0x64uLL);
  *(v6 + 9) = 1;
  *(v6 + 10) = v51;
  v6[88] = 1;
  v6[89] = 1;
  *(v6 + 12) = 0x3F50624DD2F1A9FCLL;
  v6[104] = 1;
  v6[105] = 1;
  v70 = v177;
  v71 = v178;
  *(v6 + 7) = vdupq_n_s64(3uLL);
  *(v6 + 8) = v71;
  *(v6 + 9) = v70;
  *(v6 + 20) = 0x4092C00000000000;
  v72 = v176;
  *(v6 + 21) = v175;
  *(v6 + 22) = v72;
  v73 = v173;
  *(v6 + 184) = v174;
  *(v6 + 200) = v73;
  *(v6 + 216) = v73;
  *(v6 + 232) = v172;
  v6[248] = 1;
  v6[249] = 0;
  v6[250] = 0;
  v75 = v170;
  v74 = v171;
  *(v6 + 16) = vdupq_n_s64(0xCuLL);
  *(v6 + 17) = v74;
  v76 = v168;
  *(v6 + 18) = v75;
  *(v6 + 19) = v76;
  *(v6 + 40) = 0x404E000000000000;
  *(v6 + 41) = 2;
  *(v6 + 42) = 0x3FF8000000000000;
  v6[344] = 1;
  *(v6 + 44) = 0x40F5180000000000;
  strcpy(v6 + 1384, "WS-143441-en");
  v6[1397] = 0;
  *(v6 + 699) = -5120;
  v6[1400] = 1;
  v6[1401] = 1;
  *(v6 + 88) = v167;
  *(v6 + 178) = v166;
  *(v6 + 179) = 0xEC0000006E652D31;
  *(v6 + 180) = 0;
  *(v6 + 181) = 0xE000000000000000;
  *(v6 + 91) = v164;
  *(v6 + 184) = v165;
  *(v6 + 185) = v51;
  *(v6 + 186) = 0x40D5180000000000;
  *(v6 + 187) = v161;
  *(v6 + 188) = v163;
  *(v6 + 189) = v51;
  *(v6 + 190) = 0xD00000000000005ELL;
  *(v6 + 191) = v162;
  *(v6 + 192) = 23899;
  *(v6 + 193) = 0xE200000000000000;
  *(v6 + 194) = 0;
  *(v6 + 195) = 0xE000000000000000;
  v6[1568] = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v6 + 1576) = _Q0;
  *(v6 + 50) = v51;
  *(v6 + 51) = v51;
  v82 = qword_1EE1242C0;
  v83 = qword_1EE1242C8;
  sub_1DACB71E4();
  v183 = sub_1DAA4BBA0(v82, v83);
  v182 = v84;

  v85 = qword_1EE1242C0;
  v86 = qword_1EE1242C8;
  sub_1DACB71E4();
  v181 = sub_1DAA4C06C(v85, v86);
  *&v180 = v87;

  v88 = qword_1EE1242C0;
  v89 = qword_1EE1242C8;
  sub_1DACB71E4();
  *&v179 = sub_1DAA4C248(v88, v89);
  *&v178 = v90;

  v91 = qword_1EE1242C0;
  v92 = qword_1EE1242C8;
  sub_1DACB71E4();
  v93 = sub_1DAA4C424(v91, v92);
  v95 = v94;

  v97 = qword_1EE1242C0;
  v96 = qword_1EE1242C8;
  sub_1DACB71E4();
  v98 = sub_1DAA4C600(v97, v96);
  v100 = v99;

  v101 = v146;
  *(v6 + 34) = 0u;
  *(v6 + 35) = v101;
  v102 = v194;
  v103 = v196;
  v104 = v197;
  *(v6 + 46) = v195;
  *(v6 + 47) = v103;
  v105 = v188;
  v106 = v190;
  v107 = v191;
  *(v6 + 40) = v189;
  *(v6 + 41) = v106;
  *(v6 + 38) = 0u;
  *(v6 + 39) = v105;
  v108 = v192;
  *(v6 + 44) = v193;
  *(v6 + 45) = v102;
  *(v6 + 42) = v107;
  *(v6 + 43) = v108;
  v6[432] = 0;
  *(v6 + 52) = 0;
  *(v6 + 53) = 0;
  v6[433] = 1;
  *(v6 + 217) = 0;
  *(v6 + 55) = 0;
  v6[448] = 0;
  *v169 = *v214;
  *(v6 + 113) = *&v214[3];
  v109 = v183;
  *(v6 + 57) = 0;
  *(v6 + 58) = v109;
  v110 = v181;
  *(v6 + 59) = v182;
  *(v6 + 60) = v110;
  v111 = v179;
  *(v6 + 61) = v180;
  *(v6 + 62) = v111;
  *(v6 + 63) = v178;
  *(v6 + 64) = v93;
  *(v6 + 65) = v95;
  *(v6 + 66) = v98;
  *(v6 + 67) = v100;
  *(v6 + 36) = 0u;
  *(v6 + 37) = 0u;
  *(v6 + 98) = v198;
  *(v6 + 48) = v104;
  *(v6 + 99) = 0;
  v6[800] = 1;
  *v160 = *v213;
  *(v6 + 201) = *&v213[3];
  *(v6 + 101) = 0;
  v6[816] = 1;
  *v158 = *v212;
  *(v6 + 205) = *&v212[3];
  *(v6 + 103) = 0;
  *(v6 + 52) = 0u;
  *(v6 + 106) = 0xE000000000000000;
  v112 = v157;
  *v157 = 0u;
  v112[1] = 0u;
  *(v112 + 26) = 0u;
  LODWORD(v112) = v210;
  *(v6 + 451) = v211;
  *v159 = v112;
  *(v6 + 113) = 25;
  v113 = MEMORY[0x1E69E7CC0];
  *(v6 + 114) = MEMORY[0x1E69E7CC0];
  v6[920] = 1;
  LOBYTE(v217[0]) = 0;
  LOBYTE(v216[0]) = 0;
  LOBYTE(v215[0]) = 0;
  v186[2272] = 0;
  *(v6 + 58) = v156;
  v6[944] = 0;
  v114 = v154;
  *v155 = v217[0];
  *(v6 + 237) = *(v217 + 3);
  *(v6 + 119) = 0;
  v6[960] = 0;
  *v114 = v216[0];
  *(v6 + 241) = *(v216 + 3);
  *(v6 + 121) = 1;
  v6[976] = 0;
  LODWORD(v112) = v215[0];
  *(v6 + 245) = *(v215 + 3);
  *v153 = v112;
  *(v6 + 123) = 86400;
  v6[992] = 0;
  *(v6 + 1000) = xmmword_1DACD6660;
  *(v6 + 127) = 0x3FF0000000000000;
  *(v6 + 130) = 0;
  *(v6 + 129) = 0;
  *(v6 + 128) = 0;
  *(v6 + 1048) = xmmword_1DACD6670;
  *(v6 + 1064) = xmmword_1DACD6680;
  *(v6 + 1080) = xmmword_1DACD6690;
  *(v6 + 1096) = xmmword_1DACD66A0;
  __asm { FMOV            V1.2D, #0.5 }

  *(v6 + 1112) = xmmword_1DACD66B0;
  *(v6 + 1128) = _Q1;
  *(v6 + 1144) = xmmword_1DACD66C0;
  memcpy(v186, v209, 0x46BuLL);
  memcpy(&v186[1136], v209, 0x46BuLL);
  memcpy(v6 + 1592, v186, 0x8DBuLL);
  v6[3859] = 0;
  *(v6 + 45) = 1;
  v116 = v151;
  *(v6 + 23) = v152;
  *(v6 + 24) = v116;
  *(v6 + 145) = 32123;
  *(v6 + 146) = 0xE200000000000000;
  *(v6 + 483) = 0x3FD0000000000000;
  v6[3872] = 0;
  *(v6 + 485) = 2;
  v6[3888] = 0;
  *(v6 + 487) = 2592000;
  v6[3904] = 0;
  *(v6 + 489) = 0x3FF0000000000000;
  v6[3920] = 0;
  *(v6 + 491) = 0x3FF0000000000000;
  v6[3936] = 0;
  *(v6 + 493) = 0;
  v6[3952] = 1;
  *(v6 + 1272) = xmmword_1DACD66D0;
  *(v6 + 1288) = xmmword_1DACD66E0;
  *(v6 + 163) = 0x4008000000000000;
  *(v6 + 164) = 0xD00000000000001CLL;
  *(v6 + 165) = v150;
  v117 = v149;
  *(v6 + 166) = v148;
  *(v6 + 167) = v117;
  *(v6 + 168) = 0;
  v6[1176] = 0;
  v118 = v145;
  [v145 fc_timeIntervalOneDay];
  *(v6 + 495) = v119;
  *(v6 + 496) = 0;
  [v118 fc_timeIntervalOneDay];
  *(v6 + 497) = v120 * 15.0;
  *(v6 + 148) = 0xFFFFFFFFLL;
  *(v6 + 149) = v113;
  v6[3984] = 0;
  v6[3985] = 1;
  *(v6 + 150) = 0xFFFFFFFFLL;
  *(v6 + 1208) = xmmword_1DACD66F0;
  *(v6 + 153) = v113;
  *(v6 + 154) = v113;
  *(v6 + 155) = v113;
  *(v6 + 3992) = 0u;
  v6[4008] = 1;
  *(v6 + 251) = v147;
  *(v6 + 504) = 1;
  *(v6 + 505) = 0;
  *(v6 + 506) = 0;
  *(v6 + 156) = v113;
  *(v6 + 157) = v113;
  *(v6 + 158) = v113;
  *(v6 + 169) = 1296000;
  v121 = sub_1DAA5518C(&unk_1F567EC18);
  swift_arrayDestroy();
  *(v6 + 170) = v121;
  *(v6 + 171) = 0;
  *(v6 + 172) = 0;
  *&v6[v56[135]] = 0;
  *(v6 + 507) = 0;
  v6[4064] = 0;
  *(v6 + 4072) = xmmword_1DACD6700;
  *(v6 + 4088) = v144;
  v6[4104] = 0;
  *(v6 + 514) = 0;
  *(v143 + 1) = 0;
  *(v6 + 516) = 0;
  *(v6 + 4136) = xmmword_1DACD6710;
  v6[4152] = 0;
  *(v6 + 520) = 0;
  v6[4168] = 0;
  *(v6 + 522) = 0;
  v122 = v142;
  *(v142 + 1) = 0;
  *(v6 + 524) = 0;
  v122[24] = 0;
  *(v6 + 526) = 1;
  *(v6 + 527) = 0x415DA9C000000000;
  v6[4224] = 1;
  *(v6 + 529) = 0;
  *&v123 = 0xFFFFFFFFLL;
  *(&v123 + 1) = 0xFFFFFFFFLL;
  *(v6 + 4248) = v123;
  v124 = swift_allocObject();
  *(v124 + 16) = v137;
  sub_1DACB7DB4();
  sub_1DACB7DB4();
  v125 = sub_1DAA4CB70(v124);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v6 + 533) = v125;
  *(v6 + 534) = 0;
  *(v6 + 530) = v113;
  v6[4280] = 0;
  *(v6 + 536) = 0;
  *&v6[v56[136]] = 0;
  v6[v56[137]] = 1;
  v6[v56[138]] = 0;
  v126 = &v6[v56[139]];
  *v126 = 0;
  v126[8] = 1;
  sub_1DAA5FE8C(0, &qword_1EE1240F8, v134, MEMORY[0x1E69D6550]);
  v128 = *(v127 + 48);
  v129 = *(v127 + 52);
  swift_allocObject();
  v130 = sub_1DACB8424();
  v131 = v185;
  *(v185 + 24) = v130;
  *(v131 + 32) = 1;
  return v131;
}

uint64_t sub_1DAC1ADE0()
{
  v1 = type metadata accessor for AppConfiguration(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = *(v0 + 16);
  sub_1DACB83C4();
  sub_1DAA5FE8C(0, &qword_1EE1240B0, type metadata accessor for AppConfiguration, MEMORY[0x1E69D6B18]);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAC1AEA0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_1DAC1AEC8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAC1AF30()
{
  v1 = type metadata accessor for AppConfiguration(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = *(*v0 + 16);
  sub_1DACB83C4();
  sub_1DAA5FE8C(0, &qword_1EE1240B0, type metadata accessor for AppConfiguration, MEMORY[0x1E69D6B18]);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAC1AFFC()
{
  v0 = sub_1DACB75A4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1DACB7594();
  type metadata accessor for AppConfiguration(0);
  sub_1DAA5CC70(&qword_1EE124E30, type metadata accessor for AppConfiguration);
  v3 = sub_1DACB7584();
  v5 = v4;

  v6 = [objc_opt_self() standardUserDefaults];
  v7 = sub_1DACB7B44();
  v8 = sub_1DACB92F4();
  [v6 setObject:v7 forKey:v8];

  return sub_1DAA563C0(v3, v5);
}

uint64_t sub_1DAC1B390(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DAA94754;

  return sub_1DAC18B2C(a1, v1);
}

double HeadlineScores.globalCohort.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

double HeadlineScores.sourceChannelCohort.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = result;
  return result;
}

StocksCore::HeadlineScores::Cohort __swiftcall HeadlineScores.Cohort.init(clicks:impressions:timestamp:)(Swift::Double clicks, Swift::Double impressions, Swift::Double timestamp)
{
  *v3 = clicks;
  v3[1] = impressions;
  v3[2] = timestamp;
  result.timestamp = timestamp;
  result.impressions = impressions;
  result.clicks = clicks;
  return result;
}

void __swiftcall HeadlineScores.init(globalCohort:sourceChannelCohort:stockEntityCohorts:)(StocksCore::HeadlineScores *__return_ptr retstr, StocksCore::HeadlineScores::Cohort globalCohort, StocksCore::HeadlineScores::Cohort sourceChannelCohort, Swift::OpaquePointer stockEntityCohorts)
{
  v6 = *(stockEntityCohorts._rawValue + 2);
  v7 = *(v4 + 16);
  *&retstr->globalCohort.clicks = *stockEntityCohorts._rawValue;
  retstr->globalCohort.timestamp = v6;
  *&retstr->sourceChannelCohort.clicks = *v4;
  retstr->sourceChannelCohort.timestamp = v7;
  retstr->stockEntityCohorts._rawValue = v5;
}

uint64_t sub_1DAC1B4C0()
{
  v1 = 0x6973736572706D69;
  if (*v0 != 1)
  {
    v1 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x736B63696C63;
  }
}

uint64_t sub_1DAC1B524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAC1CE1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAC1B54C(uint64_t a1)
{
  v2 = sub_1DAC1B788();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC1B588(uint64_t a1)
{
  v2 = sub_1DAC1B788();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HeadlineScores.Cohort.encode(to:)(void *a1)
{
  sub_1DAC1C818(0, &qword_1ECBE90F8, sub_1DAC1B788, &type metadata for HeadlineScores.Cohort.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v15[-v8];
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[2];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC1B788();
  sub_1DACBA304();
  v15[15] = 0;
  sub_1DACBA0B4();
  if (!v2)
  {
    v15[14] = 1;
    sub_1DACBA0B4();
    v15[13] = 2;
    sub_1DACBA0B4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1DAC1B788()
{
  result = qword_1EE123330;
  if (!qword_1EE123330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123330);
  }

  return result;
}

uint64_t HeadlineScores.Cohort.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v20 = a2;
  sub_1DAC1C818(0, &qword_1EE11F648, sub_1DAC1B788, &type metadata for HeadlineScores.Cohort.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC1B788();
  sub_1DACBA2F4();
  if (!v2)
  {
    v11 = v6;
    v12 = v20;
    v23 = 0;
    sub_1DACB9FC4();
    v14 = v13;
    v22 = 1;
    sub_1DACB9FC4();
    v16 = v15;
    v21 = 2;
    sub_1DACB9FC4();
    v19 = v18;
    (*(v11 + 8))(v9, v5);
    *v12 = v14;
    v12[1] = v16;
    v12[2] = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t HeadlineScores.StockEntityCohort.stockEntityID.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAC1BA80()
{
  v1 = 0x746E456B636F7473;
  v2 = 0x6973736572706D69;
  if (*v0 != 2)
  {
    v2 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    v1 = 0x736B63696C63;
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

uint64_t sub_1DAC1BB10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAC1CF3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAC1BB38(uint64_t a1)
{
  v2 = sub_1DAC1BD9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC1BB74(uint64_t a1)
{
  v2 = sub_1DAC1BD9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HeadlineScores.StockEntityCohort.encode(to:)(void *a1)
{
  sub_1DAC1C818(0, &qword_1ECBE9100, sub_1DAC1BD9C, &type metadata for HeadlineScores.StockEntityCohort.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v17 - v7;
  v9 = *v1;
  v10 = v1[1];
  v12 = v1[2];
  v11 = v1[3];
  v13 = v1[4];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC1BD9C();
  sub_1DACBA304();
  v21 = 0;
  v15 = v17;
  sub_1DACBA094();
  if (!v15)
  {
    v20 = 1;
    sub_1DACBA0B4();
    v19 = 2;
    sub_1DACBA0B4();
    v18 = 3;
    sub_1DACBA0B4();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1DAC1BD9C()
{
  result = qword_1EE123350;
  if (!qword_1EE123350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123350);
  }

  return result;
}

uint64_t HeadlineScores.StockEntityCohort.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = a2;
  sub_1DAC1C818(0, &qword_1EE11F650, sub_1DAC1BD9C, &type metadata for HeadlineScores.StockEntityCohort.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC1BD9C();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v6;
  v12 = v24;
  v28 = 0;
  v13 = sub_1DACB9FA4();
  v15 = v14;
  v16 = v13;
  v27 = 1;
  sub_1DACB9FC4();
  v18 = v17;
  v26 = 2;
  sub_1DACB9FC4();
  v20 = v19;
  v25 = 3;
  sub_1DACB9FC4();
  v23 = v22;
  (*(v11 + 8))(v9, v5);
  *v12 = v16;
  v12[1] = v15;
  v12[2] = v18;
  v12[3] = v20;
  v12[4] = v23;
  sub_1DACB71E4();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DAC1C0A4()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F436C61626F6C67;
  }
}

uint64_t sub_1DAC1C114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAC1D0B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAC1C13C(uint64_t a1)
{
  v2 = sub_1DAC1C41C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC1C178(uint64_t a1)
{
  v2 = sub_1DAC1C41C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HeadlineScores.encode(to:)(void *a1)
{
  sub_1DAC1C818(0, &qword_1ECBE9108, sub_1DAC1C41C, &type metadata for HeadlineScores.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v17 - v8;
  v19 = *v1;
  v11 = *(v1 + 2);
  v10 = *(v1 + 3);
  v12 = *(v1 + 4);
  v13 = *(v1 + 5);
  v18 = *(v1 + 6);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC1C41C();
  sub_1DACBA304();
  v20 = v19;
  v21 = v11;
  v22 = 0;
  sub_1DAC1C470();
  sub_1DACBA0E4();
  if (!v2)
  {
    v15 = v18;
    *&v20 = v10;
    *(&v20 + 1) = v12;
    v21 = v13;
    v22 = 1;
    sub_1DACBA0E4();
    *&v20 = v15;
    v22 = 2;
    sub_1DAC1C4C4();
    sub_1DAC1C8D4(&qword_1ECBE9118, sub_1DAC1C514);
    sub_1DACBA0E4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1DAC1C41C()
{
  result = qword_1EE123368;
  if (!qword_1EE123368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123368);
  }

  return result;
}

unint64_t sub_1DAC1C470()
{
  result = qword_1ECBE9110;
  if (!qword_1ECBE9110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9110);
  }

  return result;
}

void sub_1DAC1C4C4()
{
  if (!qword_1EE11FB68)
  {
    v0 = sub_1DACB9724();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FB68);
    }
  }
}

unint64_t sub_1DAC1C514()
{
  result = qword_1ECBE9120;
  if (!qword_1ECBE9120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9120);
  }

  return result;
}

uint64_t HeadlineScores.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v20 = a2;
  sub_1DAC1C818(0, &qword_1EE11F658, sub_1DAC1C41C, &type metadata for HeadlineScores.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC1C41C();
  sub_1DACBA2F4();
  if (!v2)
  {
    v11 = v20;
    v24 = 0;
    sub_1DAC1C880();
    sub_1DACB9FE4();
    v12 = v21;
    v13 = v22;
    v14 = v23;
    v24 = 1;
    sub_1DACB9FE4();
    v15 = v21;
    v16 = v22;
    v17 = v23;
    sub_1DAC1C4C4();
    v24 = 2;
    sub_1DAC1C8D4(&qword_1EE11FB60, sub_1DAC1C940);
    sub_1DACB9FE4();
    (*(v6 + 8))(v9, v5);
    v19 = v21;
    *v11 = v12;
    v11[1] = v13;
    v11[2] = v14;
    v11[3] = v15;
    v11[4] = v16;
    v11[5] = v17;
    v11[6] = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1DAC1C818(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1DAC1C880()
{
  result = qword_1EE123318;
  if (!qword_1EE123318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123318);
  }

  return result;
}

uint64_t sub_1DAC1C8D4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1DAC1C4C4();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAC1C940()
{
  result = qword_1EE123338;
  if (!qword_1EE123338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123338);
  }

  return result;
}

uint64_t sub_1DAC1C9C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DAC1CA0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeadlineScores.Cohort(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HeadlineScores.Cohort(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_1DAC1CB08()
{
  result = qword_1ECBE9128;
  if (!qword_1ECBE9128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9128);
  }

  return result;
}

unint64_t sub_1DAC1CB60()
{
  result = qword_1ECBE9130;
  if (!qword_1ECBE9130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9130);
  }

  return result;
}

unint64_t sub_1DAC1CBB8()
{
  result = qword_1ECBE9138;
  if (!qword_1ECBE9138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9138);
  }

  return result;
}

unint64_t sub_1DAC1CC10()
{
  result = qword_1EE123358;
  if (!qword_1EE123358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123358);
  }

  return result;
}

unint64_t sub_1DAC1CC68()
{
  result = qword_1EE123360;
  if (!qword_1EE123360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123360);
  }

  return result;
}

unint64_t sub_1DAC1CCC0()
{
  result = qword_1EE123340;
  if (!qword_1EE123340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123340);
  }

  return result;
}

unint64_t sub_1DAC1CD18()
{
  result = qword_1EE123348;
  if (!qword_1EE123348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123348);
  }

  return result;
}

unint64_t sub_1DAC1CD70()
{
  result = qword_1EE123320;
  if (!qword_1EE123320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123320);
  }

  return result;
}

unint64_t sub_1DAC1CDC8()
{
  result = qword_1EE123328;
  if (!qword_1EE123328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123328);
  }

  return result;
}

uint64_t sub_1DAC1CE1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736B63696C63 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6973736572706D69 && a2 == 0xEB00000000736E6FLL || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DACBA174();

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

uint64_t sub_1DAC1CF3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E456B636F7473 && a2 == 0xED00004449797469;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736B63696C63 && a2 == 0xE600000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6973736572706D69 && a2 == 0xEB00000000736E6FLL || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DACBA174();

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

uint64_t sub_1DAC1D0B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F436C61626F6C67 && a2 == 0xEC00000074726F68;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001DACEF660 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DACEF680 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DACBA174();

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

uint64_t get_enum_tag_for_layout_string_10StocksCore14HeadlineOriginO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DAC1D1F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 136))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DAC1D24C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 128) = 0;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

double sub_1DAC1D2BC(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 120) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DAC1D324()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return swift_deallocClassInstance();
}

uint64_t sub_1DAC1D37C(void *a1, uint64_t a2)
{
  sub_1DAC1E3BC(0, &qword_1ECBE9170, sub_1DAC1E0C8, &type metadata for TestTopStoriesService.TestData.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC1E0C8();
  sub_1DACBA304();
  v12[1] = a2;
  sub_1DAA488A4(0, &qword_1ECBE9158);
  sub_1DAC1E170(&qword_1ECBE9178, sub_1DAC1E1EC);
  sub_1DACBA0E4();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DAC1D558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x49656C6369747261 && a2 == 0xE900000000000064)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DACBA174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DAC1D5E8(uint64_t a1)
{
  v2 = sub_1DAC1E368();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC1D624(uint64_t a1)
{
  v2 = sub_1DAC1E368();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC1D660@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v17 = a2;
  sub_1DAC1E3BC(0, &qword_1ECBE91A0, sub_1DAC1E368, &type metadata for TestTopStoriesService.TestData.Article.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC1E368();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v17;
  v12 = sub_1DACB9FA4();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v11 = v12;
  v11[1] = v14;
  return result;
}

uint64_t sub_1DAC1D810(void *a1)
{
  sub_1DAC1E3BC(0, &qword_1ECBE91B0, sub_1DAC1E368, &type metadata for TestTopStoriesService.TestData.Article.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC1E368();
  sub_1DACBA304();
  sub_1DACBA094();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1DAC1D990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656C6369747261 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DACBA174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DAC1DA18(uint64_t a1)
{
  v2 = sub_1DAC1E0C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC1DA54(uint64_t a1)
{
  v2 = sub_1DAC1E0C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DAC1DA90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1DAC1DEC4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DAC1DAD8(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = *(*a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v21 = v2;
    *&v19[0] = MEMORY[0x1E69E7CC0];
    sub_1DAA5859C(0, v5, 0);
    v6 = *&v19[0];
    v7 = (v4 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      *&v19[0] = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      sub_1DACB71E4();
      if (v11 >= v10 >> 1)
      {
        sub_1DAA5859C((v10 > 1), v11 + 1, 1);
        v6 = *&v19[0];
      }

      *(v6 + 16) = v11 + 1;
      v12 = v6 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v9;
      v7 += 2;
      --v5;
    }

    while (v5);
  }

  v13 = a2[6];
  v14 = a2[7];
  __swift_project_boxed_opaque_existential_1(a2 + 3, v13);
  sub_1DAAD4FA4(v19);
  v17[6] = v19[6];
  v17[7] = v19[7];
  v18 = v20;
  v17[2] = v19[2];
  v17[3] = v19[3];
  v17[4] = v19[4];
  v17[5] = v19[5];
  v17[0] = v19[0];
  v17[1] = v19[1];
  v15 = (*(v14 + 8))(v6, v17, v13, v14);

  return v15;
}

uint64_t sub_1DAC1DC40(uint64_t *a1)
{
  v5 = *a1;
  sub_1DAAD4BD8();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAC1DCA0()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1DAC1DD04()
{
  v1 = *v0;
  sub_1DACB8BB4();
  sub_1DACB71F4();
  v2 = sub_1DACB89D4();
  sub_1DAAD4E00();
  sub_1DACB8A54();

  v3 = sub_1DACB89D4();
  sub_1DAA488A4(0, &qword_1EE11FAA0);
  v4 = sub_1DACB8A54();

  return v4;
}

uint64_t sub_1DAC1DE04()
{
  v1 = *(v0 + 16);
  sub_1DAC1DE60();
  return sub_1DACB83F4();
}

unint64_t sub_1DAC1DE60()
{
  result = qword_1ECBE9140;
  if (!qword_1ECBE9140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9140);
  }

  return result;
}

void *sub_1DAC1DEC4(uint64_t *a1)
{
  sub_1DAC1E3BC(0, &qword_1ECBE9148, sub_1DAC1E0C8, &type metadata for TestTopStoriesService.TestData.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v13 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC1E0C8();
  v11 = v10;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DAA488A4(0, &qword_1ECBE9158);
    sub_1DAC1E170(&qword_1ECBE9160, sub_1DAC1E11C);
    sub_1DACB9FE4();
    (*(v5 + 8))(v8, v4);
    v11 = v13[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

unint64_t sub_1DAC1E0C8()
{
  result = qword_1ECBE9150;
  if (!qword_1ECBE9150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9150);
  }

  return result;
}

unint64_t sub_1DAC1E11C()
{
  result = qword_1ECBE9168;
  if (!qword_1ECBE9168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9168);
  }

  return result;
}

uint64_t sub_1DAC1E170(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA488A4(255, &qword_1ECBE9158);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAC1E1EC()
{
  result = qword_1ECBE9180;
  if (!qword_1ECBE9180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9180);
  }

  return result;
}

unint64_t sub_1DAC1E264()
{
  result = qword_1ECBE9188;
  if (!qword_1ECBE9188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9188);
  }

  return result;
}

unint64_t sub_1DAC1E2BC()
{
  result = qword_1ECBE9190;
  if (!qword_1ECBE9190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9190);
  }

  return result;
}

unint64_t sub_1DAC1E314()
{
  result = qword_1ECBE9198;
  if (!qword_1ECBE9198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9198);
  }

  return result;
}

unint64_t sub_1DAC1E368()
{
  result = qword_1ECBE91A8;
  if (!qword_1ECBE91A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE91A8);
  }

  return result;
}

void sub_1DAC1E3BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1DAC1E438()
{
  result = qword_1ECBE91B8;
  if (!qword_1ECBE91B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE91B8);
  }

  return result;
}

unint64_t sub_1DAC1E490()
{
  result = qword_1ECBE91C0;
  if (!qword_1ECBE91C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE91C0);
  }

  return result;
}

unint64_t sub_1DAC1E4E8()
{
  result = qword_1ECBE91C8;
  if (!qword_1ECBE91C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE91C8);
  }

  return result;
}

uint64_t sub_1DAC1E560(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1DAAA1C0C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a2;
  v14 = *(a2 + 2);
  v15 = *(a2 + 3);
  v16 = v5[2];
  swift_getObjectType();
  v17 = sub_1DACB81B4();
  (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  sub_1DAAA2240(a1);
  sub_1DAAA3F64(v13);
  v18 = v5[6];
  v19 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v18);
  v25 = v24;
  v26 = v14;
  v27 = v15;
  (*(v19 + 8))(a1, &v25, a3, a4, v18, v19);
  v20 = sub_1DACB89D4();
  sub_1DACB89C4();

  v21 = sub_1DACB89D4();
  sub_1DAC1EDC0(0, &qword_1EE11FC80, MEMORY[0x1E69E5E28]);
  v22 = sub_1DACB8A64();

  return v22;
}

double sub_1DAC1E758@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = a1[7];
  v56 = a1[6];
  v57 = v7;
  v58 = *(a1 + 16);
  v8 = a1[3];
  v52 = a1[2];
  v53 = v8;
  v9 = a1[5];
  v54 = a1[4];
  v55 = v9;
  v10 = a1[1];
  v50 = *a1;
  v51 = v10;
  if (!*(a2 + 16))
  {
    goto LABEL_30;
  }

  v12 = v51;
  v13 = sub_1DAA4BF3C(v51, *(&v51 + 1));
  if ((v14 & 1) == 0)
  {
    goto LABEL_30;
  }

  v15 = (*(a2 + 56) + 104 * v13);
  v16 = v15[4];
  v17 = v15[5];
  v18 = v15[6];
  v19 = v15[7];
  if (!v17)
  {
LABEL_8:
    if (!v19)
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  v20 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v20 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    sub_1DACB71E4();
    goto LABEL_8;
  }

  v16 = 0;
  v17 = 0;
  if (!v19)
  {
    goto LABEL_16;
  }

LABEL_9:
  v21 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    sub_1DACB71E4();
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

LABEL_16:
  if (!v17)
  {
    goto LABEL_22;
  }

  v22 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v22 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
LABEL_22:
    if (v19)
    {
      v25 = HIBYTE(v19) & 0xF;
      if ((v19 & 0x2000000000000000) == 0)
      {
        v25 = v18 & 0xFFFFFFFFFFFFLL;
      }

      if (v25)
      {
        v59 = v4;
        if (v17)
        {
          v48 = v16;
          v24 = *(&v53 + 1);
          v23 = v53;
          v47 = v54;
        }

        else
        {
          v17 = *(&v52 + 1);
          v48 = v52;
          v24 = *(&v53 + 1);
          v23 = v53;
          v47 = v54;
          sub_1DACB71E4();
        }

        goto LABEL_32;
      }
    }

LABEL_30:
    v26 = a1[7];
    *(a3 + 96) = a1[6];
    *(a3 + 112) = v26;
    *(a3 + 128) = *(a1 + 16);
    v27 = a1[3];
    *(a3 + 32) = a1[2];
    *(a3 + 48) = v27;
    v28 = a1[5];
    *(a3 + 64) = a1[4];
    *(a3 + 80) = v28;
    v29 = a1[1];
    *a3 = *a1;
    *(a3 + 16) = v29;
    sub_1DAA806E4(&v50, v49);
    return result;
  }

  v59 = v4;
  v24 = *(&v53 + 1);
  v23 = v53;
  v47 = v54;
  v48 = v16;
  if (v19)
  {
LABEL_32:
    v46 = v18;
    goto LABEL_33;
  }

  v19 = v55;
  v46 = *(&v54 + 1);
  sub_1DACB71E4();
LABEL_33:
  sub_1DACB71E4();
  v31 = v56;
  v45 = *(&v55 + 1);
  v49[0] = v23;
  v49[1] = v24;
  sub_1DACB71E4();
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20](v51, *(&v51 + 1));
  *a3 = v23;
  *(a3 + 8) = v24;
  *(a3 + 16) = v12;
  *(a3 + 32) = v48;
  *(a3 + 40) = v17;
  *(a3 + 48) = v23;
  *(a3 + 56) = v24;
  *(a3 + 64) = v47;
  v32 = qword_1EE122610;
  sub_1DACB71E4();
  if (v32 != -1)
  {
    swift_once();
  }

  v33 = qword_1EE13E388;
  if (*(qword_1EE13E388 + 16) && (v34 = sub_1DAA4BF3C(v12, *(&v12 + 1)), (v35 & 1) != 0))
  {
    v36 = v34;

    v37 = (*(v33 + 56) + 16 * v36);
    v38 = *v37;
    v19 = v37[1];
    sub_1DACB71E4();
  }

  else
  {
    v38 = v46;
  }

  *(a3 + 72) = v38;
  *(a3 + 80) = v19;
  v39 = qword_1EE13E390;
  if (*(qword_1EE13E390 + 16) && (v40 = sub_1DAA4BF3C(v12, *(&v12 + 1)), (v41 & 1) != 0))
  {
    v42 = v40;

    v43 = (*(v39 + 56) + 16 * v42);
    v44 = *v43;
    v31 = v43[1];
    sub_1DACB71E4();
  }

  else
  {
    v44 = v45;
  }

  *(a3 + 88) = v44;
  *(a3 + 96) = v31;
  result = 0.0;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  return result;
}

uint64_t sub_1DAC1EA98@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_1DACB71E4();
  v5 = sub_1DAC1EB14(v4, v3);

  *a2 = v5;
  return result;
}

uint64_t sub_1DAC1EB14(uint64_t a1, uint64_t a2)
{
  v65 = a2;
  sub_1DAC1EDC0(0, &qword_1EE11F6D8, MEMORY[0x1E69E6EC8]);
  result = sub_1DACB9E74();
  v5 = 0;
  v41 = result;
  v42 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v40 = result + 64;
  if ((v10 & v6) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v17 = (*(v42 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      v20 = *(v42 + 56) + 136 * v16;
      v63[0] = *v20;
      v21 = *(v20 + 64);
      v23 = *(v20 + 16);
      v22 = *(v20 + 32);
      v63[3] = *(v20 + 48);
      v63[4] = v21;
      v63[1] = v23;
      v63[2] = v22;
      v25 = *(v20 + 96);
      v24 = *(v20 + 112);
      v26 = *(v20 + 80);
      v64 = *(v20 + 128);
      v63[6] = v25;
      v63[7] = v24;
      v63[5] = v26;
      v27 = *(v20 + 112);
      v60 = *(v20 + 96);
      v61 = v27;
      v62 = *(v20 + 128);
      v28 = *(v20 + 48);
      v56 = *(v20 + 32);
      v57 = v28;
      v29 = *(v20 + 80);
      v58 = *(v20 + 64);
      v59 = v29;
      v30 = *(v20 + 16);
      v54 = *v20;
      v55 = v30;
      sub_1DACB71E4();
      sub_1DAA806E4(v63, &v43);
      sub_1DAC1E758(&v54, v65, v52);
      if (v2)
      {
        break;
      }

      v49 = v60;
      v50 = v61;
      v51 = v62;
      v45 = v56;
      v46 = v57;
      v47 = v58;
      v48 = v59;
      v43 = v54;
      v44 = v55;
      sub_1DAA9B1C8(&v43);
      result = v41;
      *(v40 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v31 = (v41[6] + 16 * v16);
      *v31 = v19;
      v31[1] = v18;
      v32 = v41[7] + 136 * v16;
      v33 = v52[3];
      *(v32 + 32) = v52[2];
      *(v32 + 48) = v33;
      v34 = v52[1];
      *v32 = v52[0];
      *(v32 + 16) = v34;
      *(v32 + 128) = v53;
      v35 = v52[7];
      *(v32 + 96) = v52[6];
      *(v32 + 112) = v35;
      v36 = v52[5];
      *(v32 + 64) = v52[4];
      *(v32 + 80) = v36;
      v37 = v41[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_17;
      }

      v41[2] = v39;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    v49 = v60;
    v50 = v61;
    v51 = v62;
    v45 = v56;
    v46 = v57;
    v47 = v58;
    v48 = v59;
    v43 = v54;
    v44 = v55;
    sub_1DAA9B1C8(&v43);
    return v41;
  }

  else
  {
LABEL_5:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v12)
      {
        return result;
      }

      v15 = *(v7 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

void sub_1DAC1EDC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, ValueMetadata *, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158], &type metadata for Stock, MEMORY[0x1E69E6168]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_1DAC1EFD0(__int128 *a1, uint64_t a2)
{
  v4 = *(a1 + 4);
  v5 = type metadata accessor for NewsUserProfileShim();
  v13 = a1[1];
  v14 = *a1;
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtC10StocksCoreP33_6F15235305946077A82EB95D8E9A724719NewsUserProfileShim_userProfile];
  *v7 = v14;
  *(v7 + 1) = v13;
  *(v7 + 4) = v4;
  v15.receiver = v6;
  v15.super_class = v5;
  v8 = objc_msgSendSuper2(&v15, sel_init);
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v10 = v8;
  v11 = [v9 initWithPurchaseProvider:v10 bundleSubscriptionProvider:v10 configurationManager:a2];

  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_1DAC1F0A8(void *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v7 = (a1 + 3);
  v6 = a1[3];
  v8 = a1[4];
  v9 = *(v1 + 16);
  result = sub_1DACB88F4();
  if (v12)
  {
    v19 = *a1;
    v17 = *v7;
    v18 = v5;
    v12 = v3;
    v13 = v4;
    v14 = v5;
    v15 = v6;
    v16 = v8;
    sub_1DAAA1344(&v19, v11);
    sub_1DAC1F200(&v18, v11);
    sub_1DABF433C(&v17, v11);
    sub_1DACB8DC4();
  }

  return result;
}

uint64_t sub_1DAC1F200(uint64_t a1, uint64_t a2)
{
  sub_1DAB5395C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAC1F2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DAA5FF54(0, &qword_1EE1252D8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6F90]);
  v6 = sub_1DACB7AB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DACC1D20;
  (*(v7 + 16))(v10 + v9, a1, v6);
  (*(a3 + 8))(v10, a2, a3);

  v11 = sub_1DACB89D4();
  type metadata accessor for SDSAuthToken();
  v12 = sub_1DACB8A54();

  return v12;
}

uint64_t sub_1DAC1F428(uint64_t *a1)
{
  sub_1DAC21E20(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SDSAuthToken();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v22 - v12;
  sub_1DAB85A54(*a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1DAC21E54(v5, sub_1DAC21E20);
    sub_1DAC21EB4();
    swift_allocError();
    sub_1DAA5FF54(0, &qword_1EE1240B8, type metadata accessor for SDSAuthToken, MEMORY[0x1E69D6B18]);
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    return sub_1DACB8AD4();
  }

  else
  {
    sub_1DAC21DBC(v5, v13);
    sub_1DABB8B1C(v13, v11);
    sub_1DAA5FF54(0, &qword_1EE1240B8, type metadata accessor for SDSAuthToken, MEMORY[0x1E69D6B18]);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v21 = sub_1DACB8AE4();
    sub_1DAC21E54(v13, type metadata accessor for SDSAuthToken);
    return v21;
  }
}

uint64_t sub_1DAC1F6C0@<X0>(uint64_t *a1@<X8>)
{
  sub_1DACB88F4();
  sub_1DAA8CC04(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_1DACB8D74();
  *a1 = result;
  return result;
}

uint64_t sub_1DAC1F750(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1DACB8344();
  v21 = *(v4 - 8);
  v5 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB81B4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB8014();
  swift_retain_n();
  sub_1DACB7FF4();
  if (qword_1EE124170 != -1)
  {
    swift_once();
  }

  sub_1DACB7FE4();

  v19 = v8;
  if (LOBYTE(v22[0]) == 1)
  {
    (*(v9 + 104))(v12, *MEMORY[0x1E69D63C0], v8);
  }

  else
  {
    (*(v9 + 16))(v12, a2, v8);
  }

  sub_1DAA8C974(0, &qword_1EE1240C0, MEMORY[0x1E69D6B00]);
  v18[1] = v13;
  sub_1DAA4D678(v2 + 16, v22);
  v14 = swift_allocObject();
  sub_1DAA4D460(v22, v14 + 16);
  v15 = *(v2 + 96);
  *&v22[0] = MEMORY[0x1E69E7CC0];
  sub_1DAA5CD00(&qword_1EE1255B0, MEMORY[0x1E69D6528]);
  sub_1DAA7A378(0);
  sub_1DAA5CD00(&qword_1EE125518, sub_1DAA7A378);
  swift_retain_n();
  sub_1DACB9BB4();
  v16 = sub_1DACB89F4();

  (*(v21 + 8))(v7, v4);
  (*(v9 + 8))(v12, v19);
  return v16;
}

uint64_t sub_1DAC1FB1C()
{
  sub_1DAC21448();
  sub_1DACB8BB4();
  sub_1DACB71F4();
  v0 = sub_1DACB89D4();
  sub_1DAA8C974(0, &qword_1EE124010, MEMORY[0x1E69E5E28]);
  v1 = sub_1DACB8A64();

  return v1;
}

uint64_t sub_1DAC1FBF0(uint64_t a1, uint64_t a2)
{
  v41 = sub_1DACB7AB4();
  v5 = *(v41 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5FF54(0, &qword_1EE124078, sub_1DAC2134C, MEMORY[0x1E69E6720]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v32 - v10;
  v12 = *(a1 + 104);
  sub_1DACB88F4();
  sub_1DACB8D84();

  sub_1DAC2134C(0);
  v14 = v13;
  v15 = *(v13 - 8);
  result = (*(v15 + 48))(v11, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v36 = v15;
    v17 = *(a2 + 16);
    if (v17)
    {
      v33 = v14;
      v34 = v11;
      v35 = v2;
      v42 = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v17, 0);
      v18 = v42;
      v20 = *(v5 + 16);
      v19 = v5 + 16;
      v21 = a2 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
      v37 = *(v19 + 56);
      v38 = v20;
      v39 = v19;
      v22 = (v19 - 8);
      do
      {
        v23 = v40;
        v24 = v41;
        v38(v40, v21, v41);
        v25 = sub_1DACB79C4();
        v27 = v26;
        (*v22)(v23, v24);
        v42 = v18;
        v29 = *(v18 + 16);
        v28 = *(v18 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1DAA5859C((v28 > 1), v29 + 1, 1);
          v18 = v42;
        }

        *(v18 + 16) = v29 + 1;
        v30 = v18 + 16 * v29;
        *(v30 + 32) = v25;
        *(v30 + 40) = v27;
        v21 += v37;
        --v17;
      }

      while (v17);
      v11 = v34;
      v14 = v33;
    }

    v31 = sub_1DACB8D34();

    (*(v36 + 8))(v11, v14);
    return v31;
  }

  return result;
}

uint64_t sub_1DAC1FEF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for SDSAuthToken();
  sub_1DACB7AB4();
  sub_1DAA5CD00(&qword_1EE1263D8, MEMORY[0x1E6968FB0]);
  result = sub_1DACB9154();
  *a2 = result;
  return result;
}

uint64_t sub_1DAC1FFC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = sub_1DACB7CC4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a3;
  v13 = a3[1];
  sub_1DACB7A94();
  v14 = type metadata accessor for SDSAuthToken();
  v15 = *(v14 + 28);
  sub_1DACB7CB4();
  sub_1DAA5CD00(&qword_1EE123A48, MEMORY[0x1E6969530]);
  LOBYTE(v15) = sub_1DACB9224();
  (*(v8 + 8))(v11, v7);
  if (v15)
  {
    sub_1DABB8B1C(a4, a2);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(*(v14 - 8) + 56))(a2, v16, 1, v14);
}

uint64_t sub_1DAC20168()
{
  sub_1DAC21448();
  sub_1DACB8BB4();
  v0 = sub_1DACB89D4();
  sub_1DAA8C974(0, &qword_1EE124010, MEMORY[0x1E69E5E28]);
  v1 = sub_1DACB8A64();

  return v1;
}

uint64_t sub_1DAC20228(uint64_t a1)
{
  sub_1DAA5FF54(0, &qword_1EE124078, sub_1DAC2134C, MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v12 - v4;
  v6 = *(a1 + 104);
  sub_1DACB88F4();
  sub_1DACB8D84();

  sub_1DAC2134C(0);
  v8 = v7;
  v9 = *(v7 - 8);
  result = (*(v9 + 48))(v5, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1DACB7AB4();
    type metadata accessor for SDSAuthToken();
    sub_1DAA5CD00(&qword_1EE1263D8, MEMORY[0x1E6968FB0]);
    sub_1DACB9144();
    v11 = sub_1DACB8D44();

    (*(v9 + 8))(v5, v8);
    return v11;
  }

  return result;
}

uint64_t sub_1DAC20434(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = sub_1DACB79C4();
  a1[1] = v7;
  return sub_1DABB8B1C(a4, a2);
}

uint64_t sub_1DAC2048C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for SDSAuthToken();
  sub_1DACB7AB4();
  sub_1DAA5CD00(&qword_1EE1263D8, MEMORY[0x1E6968FB0]);
  result = sub_1DACB9154();
  *a2 = result;
  return result;
}

uint64_t sub_1DAC20560(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a3;
  v6 = a3[1];
  sub_1DACB7A94();
  sub_1DABB8B1C(a4, a2);
  v8 = type metadata accessor for SDSAuthToken();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t sub_1DAC205F0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[12];

  v2 = v0[13];

  return swift_deallocClassInstance();
}

uint64_t sub_1DAC20650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DAA41DCC();
  sub_1DACB71E4();
  v6 = sub_1DACB9AD4();
  v7 = sub_1DACB9914();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    v10 = sub_1DACB7AB4();
    v11 = MEMORY[0x1E1277130](a1, v10);
    v13 = sub_1DAA7ABE4(v11, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1DAA3F000, v6, v7, "SDSAuthTokenManager will refresh auth tokens for URLs: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E1278C00](v9, -1, -1);
    MEMORY[0x1E1278C00](v8, -1, -1);
  }

  MEMORY[0x1EEE9AC00](v14);
  sub_1DAA8C974(0, &qword_1EE124010, MEMORY[0x1E69E5E28]);
  sub_1DACB8BB4();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  sub_1DACB71F4();
  v16 = sub_1DACB89D4();
  sub_1DAA5FF54(0, &unk_1EE11FBC8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
  sub_1DACB8A64();

  sub_1DACB71F4();
  v17 = sub_1DACB89D4();
  v18 = sub_1DACB8A54();

  return v18;
}

uint64_t sub_1DAC208F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DACB81B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x1E69D63C8], v3);
  v8 = sub_1DAC1F750(a2, v7);
  (*(v4 + 8))(v7, v3);
  return v8;
}

uint64_t sub_1DAC20A08@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(char *)@<X1>, size_t *a3@<X8>)
{
  v5 = *a1;
  sub_1DACB71F4();
  v6 = sub_1DAC21BF0(v5, a2);

  v7 = *(v6 + 16);
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = sub_1DAB02D38(*(v6 + 16), 0);
  v9 = *(sub_1DACB7AB4() - 8);
  v10 = sub_1DAB05DA8(&v12, (v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80))), v7, v6);
  result = sub_1DAA54B38();
  if (v10 != v7)
  {
    __break(1u);
LABEL_4:

    v8 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DAC20B10(uint64_t *a1)
{
  v2 = sub_1DACB81B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  (*(v3 + 104))(v6, *MEMORY[0x1E69D63C0], v2);
  v8 = sub_1DAC1F750(v7, v6);
  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t sub_1DAC20C20(char *a1)
{
  v2 = sub_1DACB7AB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - v8;
  v30 = *(v3 + 16);
  v30(&v28 - v8, a1, v2);
  sub_1DAA41DCC();
  v10 = sub_1DACB9AD4();
  v11 = sub_1DACB9914();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v28 = v7;
    v13 = v12;
    v14 = swift_slowAlloc();
    v29 = a1;
    v15 = v14;
    v33 = v14;
    *v13 = 136315138;
    sub_1DAA5CD00(&qword_1EE11F120, MEMORY[0x1E6968FB0]);
    v16 = sub_1DACBA114();
    v18 = v17;
    (*(v3 + 8))(v9, v2);
    v19 = sub_1DAA7ABE4(v16, v18, &v33);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_1DAA3F000, v10, v11, "SDSAuthTokenManager will discard auth token for URL: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    v20 = v15;
    a1 = v29;
    MEMORY[0x1E1278C00](v20, -1, -1);
    v21 = v13;
    v7 = v28;
    MEMORY[0x1E1278C00](v21, -1, -1);
  }

  else
  {

    v22 = (*(v3 + 8))(v9, v2);
  }

  MEMORY[0x1EEE9AC00](v22);
  *(&v28 - 2) = v31;
  *(&v28 - 1) = a1;
  sub_1DAA614EC(0, &qword_1EE123EA0, MEMORY[0x1E69E62F8]);
  sub_1DACB8BB4();
  v30(v7, a1, v2);
  v23 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v24 = swift_allocObject();
  (*(v3 + 32))(v24 + v23, v7, v2);
  v25 = sub_1DACB89D4();
  v26 = sub_1DACB8A64();

  return v26;
}

uint64_t sub_1DAC20FB0(uint64_t a1)
{
  sub_1DAA5FF54(0, &qword_1EE124078, sub_1DAC2134C, MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - v4;
  v6 = *(a1 + 104);
  sub_1DACB88F4();
  sub_1DACB8D84();

  sub_1DAC2134C(0);
  v8 = v7;
  v9 = *(v7 - 8);
  result = (*(v9 + 48))(v5, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1DAA614EC(0, &qword_1EE123B50, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1DACC1D20;
    *(v11 + 32) = sub_1DACB79C4();
    *(v11 + 40) = v12;
    v13 = sub_1DACB8D54();

    (*(v9 + 8))(v5, v8);
    return v13;
  }

  return result;
}

uint64_t sub_1DAC2116C(uint64_t a1)
{
  v3 = sub_1DACB81B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  (*(v4 + 104))(v7, *MEMORY[0x1E69D63C8], v3);
  v9 = sub_1DAC1F750(a1, v7);
  (*(v4 + 8))(v7, v3);
  return v9;
}

uint64_t sub_1DAC213D0(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 8))(a1, v3, v4);
}

void sub_1DAC21448()
{
  if (!qword_1EE124008)
  {
    type metadata accessor for SDSAuthToken();
    v0 = sub_1DACB91A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE124008);
    }
  }
}

unint64_t *sub_1DAC21504(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
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

    sub_1DACB71F4();
    v8 = sub_1DAC21A0C(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1DAC215A8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for SDSAuthToken();
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v58 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v50 = v46 - v12;
  v57 = sub_1DACB7AB4();
  v55 = *(v57 - 8);
  v13 = *(v55 + 64);
  v14 = MEMORY[0x1EEE9AC00](v57);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v49 = v46 - v17;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {
    sub_1DACB71F4();
    return a4;
  }

  sub_1DAA8C974(0, &qword_1EE11F748, MEMORY[0x1E69E6EC8]);
  result = sub_1DACB9EA4();
  v19 = result;
  if (a2 < 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = *a1;
  }

  v21 = 0;
  v46[1] = v55 + 16;
  v47 = a2;
  v56 = v55 + 32;
  v22 = result + 64;
  v48 = a1;
  v46[0] = a4;
  v23 = v57;
  while (v20)
  {
    v24 = v16;
    v25 = __clz(__rbit64(v20));
    v52 = (v20 - 1) & v20;
LABEL_16:
    v28 = v25 | (v21 << 6);
    v29 = a4[6];
    v30 = v55;
    v54 = *(v55 + 72);
    v31 = v49;
    (*(v55 + 16))(v49, v29 + v54 * v28, v23);
    v32 = a4[7];
    v53 = *(v51 + 72);
    v33 = v32 + v53 * v28;
    v34 = v50;
    sub_1DABB8B1C(v33, v50);
    v35 = *(v30 + 32);
    v16 = v24;
    v35(v24, v31, v23);
    sub_1DAC21DBC(v34, v58);
    v36 = *(v19 + 40);
    sub_1DAA5CD00(&qword_1EE1263D8, MEMORY[0x1E6968FB0]);
    result = sub_1DACB91E4();
    v37 = -1 << *(v19 + 32);
    v38 = result & ~v37;
    v39 = v38 >> 6;
    if (((-1 << v38) & ~*(v22 + 8 * (v38 >> 6))) == 0)
    {
      v41 = 0;
      v42 = (63 - v37) >> 6;
      a2 = v47;
      a1 = v48;
      while (++v39 != v42 || (v41 & 1) == 0)
      {
        v43 = v39 == v42;
        if (v39 == v42)
        {
          v39 = 0;
        }

        v41 |= v43;
        v44 = *(v22 + 8 * v39);
        if (v44 != -1)
        {
          v40 = __clz(__rbit64(~v44)) + (v39 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v40 = __clz(__rbit64((-1 << v38) & ~*(v22 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
    a2 = v47;
    a1 = v48;
LABEL_26:
    *(v22 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
    v35((*(v19 + 48) + v40 * v54), v16, v57);
    result = sub_1DAC21DBC(v58, *(v19 + 56) + v40 * v53);
    ++*(v19 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v46[0];
    v20 = v52;
    if (!a3)
    {
      return v19;
    }
  }

  v26 = v21;
  while (1)
  {
    v21 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v21 >= a2)
    {
      return v19;
    }

    v27 = a1[v21];
    ++v26;
    if (v27)
    {
      v24 = v16;
      v25 = __clz(__rbit64(v27));
      v52 = (v27 - 1) & v27;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1DAC21A0C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v22 = a2;
  v26 = a4;
  v23 = a1;
  v5 = type metadata accessor for SDSAuthToken();
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  result = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0;
  v10 = 0;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v18 = v15 | (v10 << 6);
    sub_1DABB8B1C(*(a3 + 56) + *(v25 + 72) * v18, v9);
    v19 = v26(v9);
    result = sub_1DAC21E54(v9, type metadata accessor for SDSAuthToken);
    if (v19)
    {
      *(v23 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
        return sub_1DAC215A8(v23, v22, v24, a3);
      }
    }
  }

  v16 = v10;
  while (1)
  {
    v10 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v10 >= v14)
    {
      return sub_1DAC215A8(v23, v22, v24, a3);
    }

    v17 = *(a3 + 64 + 8 * v10);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAC21BF0(uint64_t a1, uint64_t (*a2)(char *))
{
  v3 = v2;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {
    sub_1DACB71F4();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();
      sub_1DACB71F4();
      v11 = sub_1DAC21504(v14, v8, a1, a2);
      MEMORY[0x1E1278C00](v14, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v10);
  bzero(v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);
  sub_1DACB71F4();
  v11 = sub_1DAC21A0C((v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0)), v8, a1, a2);

  if (v3)
  {
    swift_willThrow();
  }

LABEL_6:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t sub_1DAC21DBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDSAuthToken();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAC21E54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1DAC21EB4()
{
  result = qword_1ECBE91D8;
  if (!qword_1ECBE91D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE91D8);
  }

  return result;
}

unint64_t sub_1DAC21F1C()
{
  result = qword_1ECBE91E0;
  if (!qword_1ECBE91E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE91E0);
  }

  return result;
}

uint64_t type metadata accessor for SDSQuoteOperation()
{
  result = qword_1EE122618;
  if (!qword_1EE122618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAC21FBC()
{
  result = sub_1DACB7CC4();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1DACB8204();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1DAC220B4(uint64_t a1, uint64_t a2)
{
  v19 = *(v2 + qword_1EE122628);
  sub_1DACB71E4();
  sub_1DACA8764(&v19);
  sub_1DAA616D4(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1DAC257FC(&qword_1EE11FA38);
  v5 = sub_1DACB9864();

  v6 = *(v5 + 16);
  if (v6)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1DACB9D64();
    sub_1DAC25798(0, &qword_1EE11FE60, sub_1DAC25714, MEMORY[0x1E69D6B18]);
    v8 = v7;
    v9 = 32;
    do
    {
      v10 = *(v5 + v9);
      MEMORY[0x1EEE9AC00](v7);
      v11 = *(v8 + 48);
      v12 = *(v8 + 52);
      swift_allocObject();
      sub_1DACB71E4();
      sub_1DACB8B44();

      sub_1DACB9D34();
      v13 = *(v19 + 2);
      sub_1DACB9D74();
      sub_1DACB9D84();
      v7 = sub_1DACB9D44();
      v9 += 8;
      --v6;
    }

    while (v6);
  }

  v14 = sub_1DACB89D4();
  sub_1DAC25714();
  sub_1DACB8934();

  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  sub_1DACB71F4();
  v16 = sub_1DACB89D4();
  sub_1DACB8A64();

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  sub_1DACB71F4();
  v18 = sub_1DACB89D4();
  sub_1DACB8AA4();
}

uint64_t sub_1DAC223E4(uint64_t result, void (*a2)(uint64_t, void))
{
  v3 = *result;
  v4 = MEMORY[0x1E69E7CC8];
  v9 = MEMORY[0x1E69E7CC8];
  v5 = *(*result + 16);
  if (v5)
  {
    v6 = 0;
    while (v6 < *(v3 + 16))
    {
      v7 = v6 + 1;
      v8 = *(v3 + 32 + 8 * v6);
      type metadata accessor for Quote();
      sub_1DACB71E4();
      sub_1DACB88C4();

      v6 = v7;
      if (v5 == v7)
      {
        v4 = v9;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    a2(v4, 0);
  }

  return result;
}

void sub_1DAC224E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = __swift_project_boxed_opaque_existential_1((a5 + qword_1EE122670), *(a5 + qword_1EE122670 + 24));
  sub_1DAC25798(0, &qword_1EE123B40, sub_1DAA4BD7C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DACC1D40;
  *(inited + 32) = 0x6C6F626D7973;
  *(inited + 40) = 0xE600000000000000;
  v36 = a6;
  sub_1DAA616D4(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1DAC257FC(&qword_1EE123E90);
  sub_1DACB71F4();
  *(inited + 48) = sub_1DACB9214();
  *(inited + 56) = v14;
  *(inited + 64) = 0x74655361746164;
  *(inited + 72) = 0xE700000000000000;
  *(inited + 80) = 0x65746F7571;
  *(inited + 88) = 0xE500000000000000;
  v15 = sub_1DAA4BDD8(inited);
  swift_setDeallocating();
  sub_1DAA4BD7C();
  swift_arrayDestroy();
  v16 = *v12;
  v17 = sub_1DABF30CC(2, v15, (a5 + qword_1EE122660), (a5 + qword_1EE122668));

  v18 = sub_1DACB8314();
  v20 = v19;
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v23[2] = v21;
  v23[3] = v18;
  v23[4] = v20;
  v23[5] = a3;
  v23[6] = a4;
  v23[7] = v22;
  v23[8] = sub_1DAA7390C;
  v23[9] = v11;
  v23[10] = a6;
  v24 = v17;
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71E4();
  sub_1DACB8304();

  if (qword_1EE124088 != -1)
  {
    swift_once();
  }

  v25 = sub_1DACB8C94();
  __swift_project_value_buffer(v25, qword_1EE124090);
  v26 = v24;
  sub_1DACB71E4();
  v27 = sub_1DACB8C74();
  v28 = sub_1DACB9914();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v36 = v30;
    *v29 = 136315394;
    v31 = sub_1DAA7ABE4(v18, v20, &v36);

    *(v29 + 4) = v31;
    *(v29 + 12) = 2080;
    v32 = sub_1DACB8314();
    v34 = sub_1DAA7ABE4(v32, v33, &v36);

    *(v29 + 14) = v34;
    _os_log_impl(&dword_1DAA3F000, v27, v28, "SDSQuoteOperation %s will start base operation %s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v30, -1, -1);
    MEMORY[0x1E1278C00](v29, -1, -1);
  }

  else
  {
  }

  [v26 start];
}

void sub_1DAC22944(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), uint64_t a9, uint64_t a10)
{
  v134 = a8;
  v135 = a3;
  v136 = a7;
  v138 = a4;
  sub_1DAC25798(0, qword_1EE120250, type metadata accessor for Quote, MEMORY[0x1E69E6720]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v148 = v133 - v14;
  v150 = sub_1DACB8FB4();
  v15 = *(v150 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v150);
  v149 = v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_1DACB9004();
  v18 = *(v151 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v151);
  v21 = v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC26110(0, &qword_1EE120B40, sub_1DAAD81E0, &type metadata for SDSQuoteResponse, type metadata accessor for SDSBaseOperationResponse);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v137 = v133 - v24;
  sub_1DAC2589C();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = (v133 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_1EE124088 != -1)
    {
      goto LABEL_86;
    }

    goto LABEL_9;
  }

  sub_1DAC25948(a1, v28, sub_1DAC2589C);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v28;
    if (qword_1EE124088 != -1)
    {
      swift_once();
    }

    v30 = sub_1DACB8C94();
    __swift_project_value_buffer(v30, qword_1EE124090);
    v31 = v138;
    sub_1DACB71E4();
    v32 = v29;
    v33 = sub_1DACB8C74();
    v34 = sub_1DACB9914();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v154[0] = v37;
      *v35 = 136315394;
      *(v35 + 4) = sub_1DAA7ABE4(v135, v31, v154);
      *(v35 + 12) = 2112;
      v38 = v29;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 14) = v39;
      *v36 = v39;
      _os_log_impl(&dword_1DAA3F000, v33, v34, "SDSQuoteOperation %s failed with error: %@", v35, 0x16u);
      sub_1DAC25E7C(v36, sub_1DAC25E14);
      MEMORY[0x1E1278C00](v36, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1E1278C00](v37, -1, -1);
      MEMORY[0x1E1278C00](v35, -1, -1);
    }

    (a5)(v29);
    swift_beginAccess();
    v40 = swift_unknownObjectWeakLoadStrong();
    v41 = Strong;
    sub_1DAC259B0(v40);

    goto LABEL_12;
  }

  sub_1DAAE82AC(v28, v137);
  sub_1DAA616D4(0, &qword_1EE11FF88, &type metadata for SDSQuoteResponse, MEMORY[0x1E69D68E0]);
  v51 = v50;
  sub_1DACB8794();

  v147 = v154[2];
  if (v154[2])
  {
    v52 = *(Strong + qword_1EE122658);
    v53 = *(v52 + 16);
    if (v53)
    {
      v145 = v154[5];
      v146 = v154[3];
      v133[1] = v51;
      v142 = v154[4];
      v143 = v154[1];
      v54 = v52 + 32;
      v140 = (v15 + 8);
      v141 = &v154[2];
      v139 = (v18 + 8);
      do
      {
        sub_1DAA4D678(v54, v153);
        v55 = __swift_project_boxed_opaque_existential_1(v153, v153[3]);
        v56 = *v55;
        if (*(*v55 + 24) == 2)
        {
          v57 = *(v56 + 128);
          v58 = swift_allocObject();
          v59 = v142;
          v60 = v143;
          v58[2] = v56;
          v58[3] = v60;
          v61 = v146;
          v58[4] = v147;
          v58[5] = v61;
          v62 = v145;
          v58[6] = v59;
          v58[7] = v62;
          v154[4] = sub_1DABF4330;
          v154[5] = v58;
          v154[0] = MEMORY[0x1E69E9820];
          v154[1] = 1107296256;
          v154[2] = sub_1DAA5796C;
          v154[3] = &block_descriptor_30;
          v63 = _Block_copy(v154);
          sub_1DACB71F4();
          sub_1DACB71E4();
          sub_1DACB71E4();
          sub_1DACB71E4();
          sub_1DACB8FD4();
          v152 = MEMORY[0x1E69E7CC0];
          sub_1DAC25DCC(&qword_1EE124040, MEMORY[0x1E69E7F60]);
          sub_1DAC25798(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
          sub_1DAA6F790();
          v64 = v149;
          v65 = v150;
          sub_1DACB9BB4();
          MEMORY[0x1E1277440](0, v21, v64, v63);
          _Block_release(v63);
          (*v140)(v64, v65);
          (*v139)(v21, v151);
        }

        __swift_destroy_boxed_opaque_existential_1(v153);
        v54 += 40;
        --v53;
      }

      while (v53);

      v149 = 0;
      goto LABEL_22;
    }
  }

  v149 = 0;
LABEL_22:
  sub_1DACB8794();
  v66 = v154[0];
  sub_1DAA75E60(v154[1], v154[2]);
  v151 = *(v66 + 16);
  if (!v151)
  {
    v68 = MEMORY[0x1E69E7CC8];
LABEL_38:
    v85 = a10;

    MEMORY[0x1EEE9AC00](v86);
    v150 = type metadata accessor for Quote();
    v87 = sub_1DACB9154();
    if (qword_1EE124088 != -1)
    {
      swift_once();
    }

    v88 = sub_1DACB8C94();
    __swift_project_value_buffer(v88, qword_1EE124090);
    v89 = v138;
    sub_1DACB71E4();
    sub_1DACB71E4();
    v90 = sub_1DACB8C74();
    v91 = sub_1DACB9914();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v154[0] = v93;
      *v92 = 136315394;
      *(v92 + 4) = sub_1DAA7ABE4(v135, v89, v154);
      *(v92 + 12) = 2048;
      *(v92 + 14) = *(v87 + 16);

      _os_log_impl(&dword_1DAA3F000, v90, v91, "SDSQuoteOperation %s succeeded with %ld quotes", v92, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v93);
      MEMORY[0x1E1278C00](v93, -1, -1);
      v94 = v92;
      v85 = a10;
      MEMORY[0x1E1278C00](v94, -1, -1);
    }

    else
    {
    }

    v151 = v87;
    v134(v87);
    v95 = *(v85 + 16);
    if (v95)
    {
      v96 = 0;
      v145 = v85;
      v97 = v85 + 40;
      v98 = MEMORY[0x1E69E7CC0];
      v147 = v85 + 40;
LABEL_45:
      a5 = v97 + 16 * v96;
      v99 = v96;
      while (v99 < v95)
      {
        v96 = (v99 + 1);
        if (__OFADD__(v99, 1))
        {
          goto LABEL_82;
        }

        v101 = *(a5 - 8);
        v100 = *a5;
        v102 = v68[2];
        sub_1DACB71E4();
        if (!v102 || (sub_1DAA4BF3C(v101, v100), (v103 & 1) == 0))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v154[0] = v98;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1DAA5859C(0, *(v98 + 16) + 1, 1);
            v98 = v154[0];
          }

          v106 = *(v98 + 16);
          v105 = *(v98 + 24);
          if (v106 >= v105 >> 1)
          {
            sub_1DAA5859C((v105 > 1), v106 + 1, 1);
            v98 = v154[0];
          }

          *(v98 + 16) = v106 + 1;
          v107 = v98 + 16 * v106;
          *(v107 + 32) = v101;
          *(v107 + 40) = v100;
          v97 = v147;
          if (v96 == v95)
          {
LABEL_57:
            a5 = 0;
            v108 = (v150 - 8);
            v109 = v145 + 40;
            v110 = MEMORY[0x1E69E7CC0];
            v145 += 40;
            v146 = v98;
            v149 = v95;
LABEL_58:
            v147 = v110;
            v111 = (v109 + 16 * a5);
            v112 = a5;
            while (1)
            {
              if (v112 >= v95)
              {
                goto LABEL_83;
              }

              a5 = v112 + 1;
              if (__OFADD__(v112, 1))
              {
                goto LABEL_84;
              }

              if (v68[2])
              {
                v114 = *(v111 - 1);
                v113 = *v111;
                sub_1DACB71E4();
                sub_1DAA4BF3C(v114, v113);
                if (v115)
                {
                  v116 = v151;
                  if (!*(v151 + 16))
                  {
                    v118 = *v108;
                    goto LABEL_70;
                  }

                  v117 = sub_1DAA4BF3C(v114, v113);
                  v118 = *v108;
                  if ((v119 & 1) == 0)
                  {
                    v95 = v149;
LABEL_70:
                    v123 = v148;
                    (*(v118 + 56))(v148, 1, 1, v150);
                    sub_1DAC25EDC(v123, qword_1EE120250, type metadata accessor for Quote);
                    v124 = v147;
                    v125 = swift_isUniquelyReferenced_nonNull_native();
                    v154[0] = v124;
                    v126 = v146;
                    if ((v125 & 1) == 0)
                    {
                      sub_1DAA5859C(0, *(v124 + 16) + 1, 1);
                      v124 = v154[0];
                    }

                    v128 = *(v124 + 16);
                    v127 = *(v124 + 24);
                    v129 = v128 + 1;
                    if (v128 >= v127 >> 1)
                    {
                      v147 = v128 + 1;
                      sub_1DAA5859C((v127 > 1), v128 + 1, 1);
                      v129 = v147;
                      v124 = v154[0];
                    }

                    *(v124 + 16) = v129;
                    v130 = v124 + 16 * v128;
                    *(v130 + 32) = v114;
                    *(v130 + 40) = v113;
                    v110 = v124;
                    v109 = v145;
                    if (a5 != v95)
                    {
                      goto LABEL_58;
                    }

                    goto LABEL_78;
                  }

                  v120 = *(v116 + 56);
                  v121 = *v108;
                  v122 = v148;
                  sub_1DAC25948(v120 + *(v118 + 72) * v117, v148, type metadata accessor for Quote);

                  (*(v121 + 56))(v122, 0, 1, v150);
                  sub_1DAC25EDC(v122, qword_1EE120250, type metadata accessor for Quote);
                  v95 = v149;
                }

                else
                {
                }
              }

              ++v112;
              v111 += 2;
              if (a5 == v95)
              {
                v126 = v146;
                v110 = v147;
                goto LABEL_78;
              }
            }
          }

          goto LABEL_45;
        }

        ++v99;
        a5 += 16;
        if (v96 == v95)
        {
          goto LABEL_57;
        }
      }

      goto LABEL_81;
    }

    v126 = MEMORY[0x1E69E7CC0];
    v110 = MEMORY[0x1E69E7CC0];
LABEL_78:

    sub_1DAC25C98(v126);
    swift_beginAccess();
    v131 = swift_unknownObjectWeakLoadStrong();
    v132 = Strong;
    sub_1DAC2466C(v131, v126, v110);

    sub_1DAAE84EC(v137);
    return;
  }

  a5 = 0;
  v67 = (v66 + 32);
  v68 = MEMORY[0x1E69E7CC8];
  while (a5 < *(v66 + 16))
  {
    memcpy(v154, v67, sizeof(v154));
    v70 = v154[90];
    v71 = v154[91];
    sub_1DAAE8548(v154, v153);
    sub_1DAAE8548(v154, v153);
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v152 = v68;
    v73 = sub_1DAA4BF3C(v70, v71);
    v75 = v68[2];
    v76 = (v74 & 1) == 0;
    v77 = __OFADD__(v75, v76);
    v78 = v75 + v76;
    if (v77)
    {
      goto LABEL_80;
    }

    v79 = v74;
    if (v68[3] < v78)
    {
      sub_1DAB627A4(v78, v72);
      v73 = sub_1DAA4BF3C(v70, v71);
      if ((v79 & 1) != (v80 & 1))
      {
        sub_1DACBA1F4();
        __break(1u);
        return;
      }

LABEL_32:
      if (v79)
      {
        goto LABEL_24;
      }

      goto LABEL_33;
    }

    if (v72)
    {
      goto LABEL_32;
    }

    v84 = v73;
    sub_1DAB66EAC();
    v73 = v84;
    if (v79)
    {
LABEL_24:
      v68 = v152;
      v69 = (v152[7] + 776 * v73);
      memcpy(v153, v69, sizeof(v153));
      memcpy(v69, v154, 0x308uLL);
      sub_1DAAE85A4(v153);
      sub_1DAAE85A4(v154);
      goto LABEL_25;
    }

LABEL_33:
    v68 = v152;
    v152[(v73 >> 6) + 8] |= 1 << v73;
    v81 = (v68[6] + 16 * v73);
    *v81 = v70;
    v81[1] = v71;
    memcpy((v68[7] + 776 * v73), v154, 0x308uLL);
    sub_1DACB71E4();
    sub_1DAAE85A4(v154);
    v82 = v68[2];
    v77 = __OFADD__(v82, 1);
    v83 = v82 + 1;
    if (v77)
    {
      goto LABEL_85;
    }

    v68[2] = v83;
LABEL_25:
    ++a5;
    v67 += 776;
    if (v151 == a5)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  swift_once();
LABEL_9:
  v42 = sub_1DACB8C94();
  __swift_project_value_buffer(v42, qword_1EE124090);
  v43 = v138;
  sub_1DACB71E4();
  v44 = sub_1DACB8C74();
  v45 = sub_1DACB9914();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v154[0] = v47;
    *v46 = 136315138;
    *(v46 + 4) = sub_1DAA7ABE4(v135, v43, v154);
    _os_log_impl(&dword_1DAA3F000, v44, v45, "SDSQuoteOperation %s was freed before base operation completion", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x1E1278C00](v47, -1, -1);
    MEMORY[0x1E1278C00](v46, -1, -1);
  }

  v48 = sub_1DACB8214();
  sub_1DAC25DCC(&qword_1ECBE7058, MEMORY[0x1E69D64B0]);
  v29 = swift_allocError();
  (*(*(v48 - 8) + 104))(v49, *MEMORY[0x1E69D64A0], v48);
  (a5)(v29);
LABEL_12:
}

uint64_t sub_1DAC23A98(void *a1, uint64_t a2, uint64_t *a3, char *__src)
{
  v8 = *a3;
  v7 = a3[1];
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, __src + 104, sizeof(__srca));
  if (sub_1DAAE865C(__srca) == 1)
  {
    v9 = type metadata accessor for Quote();
    *a1 = 0;
    a1[1] = 0;
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }

  else
  {
    memcpy(v12, __srca, sizeof(v12));
    *a1 = v8;
    a1[1] = v7;
    sub_1DACB71E4();
    sub_1DAC23BC4(v12, __dst, a2);
    v11 = type metadata accessor for Quote();
    return (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
  }
}

uint64_t sub_1DAC23BC4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a2;
  v5 = MEMORY[0x1E69E6720];
  sub_1DAC25798(0, &qword_1EE1239E8, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v70 = &v67 - v8;
  v9 = sub_1DACB7F54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC25798(0, &qword_1EE125280, MEMORY[0x1E6969530], v5);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v79 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v67 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v82 = &v67 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v81 = &v67 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v67 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v80 = &v67 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v67 - v30;
  v71 = *(a1 + 256);
  v32 = *(a1 + 96);
  v85 = *(a1 + 208);
  v86[0] = v32;
  v72 = &v67 - v30;
  if (*(&v85 + 1))
  {
    v84 = v85;
    sub_1DABF433C(v86, v83);
    sub_1DABF433C(&v85, v83);
    sub_1DAC25F4C();
    sub_1DACB7CD4();
    v34 = sub_1DACB7CC4();
    (*(*(v34 - 8) + 56))(v31, 0, 1, v34);
  }

  else
  {
    v33 = sub_1DACB7CC4();
    (*(*(v33 - 8) + 56))(v31, 1, 1, v33);
    sub_1DABF433C(v86, &v84);
  }

  v35 = *(a1 + 232);
  v76 = v10;
  v77 = v9;
  v74 = v20;
  v75 = v13;
  if (v35)
  {
    *&v84 = *(a1 + 224);
    *(&v84 + 1) = v35;
    sub_1DAC25F4C();
    sub_1DACB71E4();
    sub_1DACB7CD4();
    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  v37 = sub_1DACB7CC4();
  v38 = *(v37 - 8);
  v39 = *(v38 + 56);
  v40 = 1;
  v39(v80, v36, 1, v37);
  v41 = *(a1 + 248);
  if (v41)
  {
    *&v84 = *(a1 + 240);
    *(&v84 + 1) = v41;
    sub_1DAC25F4C();
    sub_1DACB71E4();
    sub_1DACB7CD4();
    v40 = 0;
  }

  v73 = v27;
  v39(v27, v40, 1, v37);
  v42 = *(a1 + 25);
  v43 = *(a1 + 57);
  if (v42 <= 2)
  {
    if (*(a1 + 25))
    {
      if (v42 == 1)
      {
        if (v43 == 6)
        {
          LOBYTE(v42) = 1;
        }
      }

      else if (v43 == 6)
      {
        LOBYTE(v42) = 2;
      }
    }

    else if (v43 == 6)
    {
      LOBYTE(v42) = 0;
    }
  }

  else if (*(a1 + 25) > 4u)
  {
    if (v42 == 5)
    {
      if (v43 == 6)
      {
        LOBYTE(v42) = 5;
      }
    }

    else if (v43 == 6)
    {
      v69 = 6;
      LOBYTE(v42) = 6;
      goto LABEL_30;
    }
  }

  else if (v42 == 3)
  {
    if (v43 == 6)
    {
      LOBYTE(v42) = 3;
    }
  }

  else if (v43 == 6)
  {
    LOBYTE(v42) = 4;
  }

  v69 = *(a1 + 57);
LABEL_30:
  v68 = *(a1 + 353);
  v44 = *(a1 + 416);
  if (v44)
  {
    *&v84 = *(a1 + 408);
    *(&v84 + 1) = v44;
    sub_1DAC25F4C();
    sub_1DACB71E4();
    sub_1DACB7CD4();
    v45 = 0;
  }

  else
  {
    v45 = 1;
  }

  v46 = 1;
  v39(v81, v45, 1, v37);
  v47 = *(a1 + 432);
  if (v47)
  {
    *&v84 = *(a1 + 424);
    *(&v84 + 1) = v47;
    sub_1DAC25F4C();
    sub_1DACB71E4();
    sub_1DACB7CD4();
    v46 = 0;
  }

  v39(v82, v46, 1, v37);
  v48 = v78[96];
  if (v48)
  {
    *&v84 = v78[95];
    *(&v84 + 1) = v48;
    sub_1DAC25F4C();
    sub_1DACB71E4();
    v49 = v79;
    sub_1DACB7CD4();
    v39(v49, 0, 1, v37);
    v52 = v74;
    (*(v38 + 32))(v74, v49, v37);
    v39(v52, 0, 1, v37);
    v53 = v70;
  }

  else
  {
    v50 = 1;
    v39(v79, 1, 1, v37);
    v51 = v78[94];
    if (v51)
    {
      *&v84 = v78[93];
      *(&v84 + 1) = v51;
      sub_1DAC25F4C();
      sub_1DACB71E4();
      v52 = v74;
      sub_1DACB7CD4();
      v50 = 0;
    }

    else
    {
      v52 = v74;
    }

    v39(v52, v50, 1, v37);
    v54 = v79;
    v55 = (*(v38 + 48))(v79, 1, v37);
    v53 = v70;
    if (v55 != 1)
    {
      sub_1DAC25EDC(v54, &qword_1EE125280, MEMORY[0x1E6969530]);
    }
  }

  v57 = v76;
  v56 = v77;
  v58 = v75;
  if ((*(a1 + 449) & 1) == 0 && (*(a1 + 448) & 1) == 0)
  {
    v59 = *(a1 + 440);
    sub_1DACB7F24();
    if ((*(v57 + 48))(v53, 1, v56) != 1)
    {
      (*(v57 + 32))(v58, v53, v56);
      goto LABEL_49;
    }

    sub_1DAC25EDC(v53, &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
  }

  if (qword_1EE123A08 != -1)
  {
    swift_once();
  }

  v60 = __swift_project_value_buffer(v56, qword_1EE13E458);
  (*(v57 + 16))(v58, v60, v56);
LABEL_49:
  v61 = 0x4030201uLL >> (8 * v71);
  v62 = type metadata accessor for Quote();
  v63 = a3 + v62[22];
  sub_1DACB7CB4();
  *a3 = *(a1 + 312);
  *(a3 + 8) = *(a1 + 320);
  *(a3 + 16) = *(a1 + 328);
  *(a3 + 24) = *(a1 + 336);
  *(a3 + 32) = *(a1 + 296);
  *(a3 + 40) = *(a1 + 304);
  *(a3 + 56) = *(a1 + 8);
  *(a3 + 48) = *a1;
  v64 = *(a1 + 16);
  *(a3 + 72) = *(a1 + 24);
  *(a3 + 64) = v64;
  *(a3 + 80) = *(a1 + 32);
  *(a3 + 88) = *(a1 + 40);
  *(a3 + 96) = *(a1 + 48);
  *(a3 + 104) = *(a1 + 56);
  *(a3 + 112) = v86[0];
  *(a3 + 128) = v61;
  sub_1DABD4334(v72, a3 + v62[13]);
  sub_1DABD4334(v80, a3 + v62[14]);
  sub_1DABD4334(v73, a3 + v62[15]);
  *(a3 + v62[16]) = v68;
  *(a3 + v62[17]) = v42;
  *(a3 + v62[18]) = v69;
  v65 = a3 + v62[19];
  *v65 = *(a1 + 264);
  *(v65 + 8) = *(a1 + 272);
  sub_1DABD4334(v81, a3 + v62[20]);
  sub_1DABD4334(v82, a3 + v62[21]);
  sub_1DABD4334(v52, a3 + v62[23]);
  return (*(v57 + 32))(a3 + v62[24], v58, v56);
}

uint64_t sub_1DAC2466C(void *a1, uint64_t a2, uint64_t a3)
{
  v48 = a2;
  v6 = type metadata accessor for NetworkEvent();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DACB8754();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v45 = v14;
    v47 = *(*(v3 + qword_1EE122628) + 16);
    v15 = *(v48 + 16);
    v16 = MEMORY[0x1E69E7D40];
    v17 = *((*MEMORY[0x1E69E7D40] & *a1) + qword_1EE13E480 + 88);
    swift_beginAccess();
    v18 = *(a1 + v17);
    v19 = *(v18 + 16);
    if (v19)
    {
      v44 = v47 - v15;
      v43 = (a1 + *((*v16 & *a1) + qword_1EE13E480 + 64));
      v20 = *(v11 + 16);
      v41 = v10;
      v42 = v20;
      v21 = v11 + 16;
      v22 = v18 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v39 = *(v21 + 56);
      v40 = v21;
      v38 = (v21 + 16);
      v23 = v18;
      sub_1DACB71E4();
      sub_1DACB71E4();
      v37 = v23;
      sub_1DACB71E4();
      v46 = a3;
      do
      {
        v24 = v45;
        v25 = v41;
        v42(v45, v22, v41);
        v27 = v43[3];
        v26 = v43[4];
        v49 = __swift_project_boxed_opaque_existential_1(v43, v27);
        sub_1DAA8C2EC();
        v29 = &v9[*(v28 + 48)];
        (*v38)(v9, v24, v25);
        v30 = v48;
        v31 = v44;
        *v29 = v47;
        *(v29 + 1) = v31;
        v32 = v9;
        v33 = v46;
        *(v29 + 2) = v30;
        *(v29 + 3) = v33;
        *(v29 + 4) = 0;
        *(v29 + 5) = 0;
        swift_storeEnumTagMultiPayload();
        v34 = v6;
        v35 = *(v26 + 16);
        sub_1DACB71E4();
        v9 = v32;
        sub_1DACB71E4();
        v35(v32, v27, v26);
        v6 = v34;
        sub_1DAC25E7C(v32, type metadata accessor for NetworkEvent);
        v22 += v39;
        --v19;
      }

      while (v19);
    }
  }
}

void sub_1DAC24A04(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a2;
  v68 = a1;
  v73 = a3;
  v72 = sub_1DACB7BD4();
  v78 = *(v72 - 8);
  v4 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1DACB7BB4();
  v75 = *(v69 - 8);
  v6 = v75;
  v7 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1DACB7B94();
  v74 = *(v65 - 8);
  v9 = v74;
  v10 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1DACB7BA4();
  v13 = *(v64 - 8);
  v14 = v13[8];
  MEMORY[0x1EEE9AC00](v64);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1DACB7BE4();
  v17 = *(*(v66 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v66);
  v61 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v76 = v68;
  v77 = a2;
  v20 = v13[13];
  v59 = *MEMORY[0x1E6969360];
  v60 = (v13 + 13);
  v58 = v20;
  v20(v16);
  v21 = *(v9 + 104);
  v56 = *MEMORY[0x1E6969358];
  v57 = v9 + 104;
  v55 = v21;
  v21(v12);
  v22 = v6 + 104;
  v23 = *(v6 + 104);
  v24 = v67;
  v53 = *MEMORY[0x1E6969370];
  v25 = v69;
  v54 = v22;
  v52 = v23;
  v23(v67);
  v26 = v78;
  v27 = *(v78 + 104);
  v28 = v70;
  v50 = *MEMORY[0x1E6969380];
  v29 = v72;
  v51 = v78 + 104;
  v49 = v27;
  v27(v70);
  sub_1DACB71E4();
  sub_1DACB8C54();
  v30 = *(v26 + 8);
  v78 = v26 + 8;
  v48 = v30;
  v30(v28, v29);
  v31 = *(v75 + 8);
  v75 += 8;
  v31(v24, v25);
  v32 = *(v74 + 8);
  v33 = v12;
  v74 += 8;
  v47 = v32;
  v32(v12, v65);
  v34 = v13[1];
  v35 = v16;
  v36 = v16;
  v37 = v64;
  v62 = v13 + 1;
  v34(v36);
  v38 = sub_1DAC25DCC(&qword_1EE125290, MEMORY[0x1E69693A0]);
  v39 = v63;
  sub_1DACB7CD4();
  if (v39)
  {
    v76 = v68;
    v77 = v71;
    v68 = v38;
    v40 = v35;
    v58(v35, v59, v37);
    v63 = v34;
    v41 = v33;
    v42 = v65;
    v55(v33, v56, v65);
    v43 = v67;
    v44 = v69;
    v52(v67, v53, v69);
    v60 = v31;
    v45 = v70;
    v46 = v72;
    v49(v70, v50, v72);
    sub_1DACB71E4();
    sub_1DACB8C54();
    v48(v45, v46);
    v60(v43, v44);
    v47(v41, v42);
    (v63)(v40, v64);
    sub_1DACB7CD4();
  }
}

uint64_t sub_1DAC25084(uint64_t a1)
{
  v2 = sub_1DAC26178();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC250C0(uint64_t a1)
{
  v2 = sub_1DAC26178();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC25144(void *a1)
{
  sub_1DAC26110(0, &qword_1ECBE91E8, sub_1DAC26178, &type metadata for SDSQuoteOperation.SDSTimestampParseStrategy.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC26178();
  sub_1DACBA304();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1DAC25320()
{
  v1 = *(v0 + qword_1EE122628);

  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1EE122670));
  v2 = qword_1EE122660;
  v3 = sub_1DACB7CC4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = qword_1EE122668;
  v5 = sub_1DACB8204();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + qword_1EE122658);
}

uint64_t sub_1DAC253F8(uint64_t a1)
{
  v2 = *(a1 + qword_1EE122628);

  __swift_destroy_boxed_opaque_existential_1((a1 + qword_1EE122670));
  v3 = qword_1EE122660;
  v4 = sub_1DACB7CC4();
  (*(*(v4 - 8) + 8))(a1 + v3, v4);
  v5 = qword_1EE122668;
  v6 = sub_1DACB8204();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
  v7 = *(a1 + qword_1EE122658);
}

uint64_t sub_1DAC254D4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DACB71F4();
  sub_1DAC220B4(sub_1DAADF554, v4);
}

uint64_t sub_1DAC2555C()
{
  swift_getObjectType();

  return sub_1DACB7F84();
}

uint64_t sub_1DAC255B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE454E0](a1, a2, ObjectType, a6);
}

uint64_t sub_1DAC2561C()
{
  swift_getObjectType();

  return sub_1DACB7F94();
}

uint64_t sub_1DAC2568C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE454D8](a1, a2, a3, a4, ObjectType, a8);
}

void sub_1DAC25714()
{
  if (!qword_1EE11FC98)
  {
    type metadata accessor for Quote();
    v0 = sub_1DACB91A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FC98);
    }
  }
}

void sub_1DAC25798(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DAC257FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA616D4(255, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1DAC2589C()
{
  if (!qword_1EE11FEE0)
  {
    sub_1DAC26110(255, &qword_1EE120B40, sub_1DAAD81E0, &type metadata for SDSQuoteResponse, type metadata accessor for SDSBaseOperationResponse);
    v0 = sub_1DACB89E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FEE0);
    }
  }
}

uint64_t sub_1DAC25948(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAC259B0(void *a1)
{
  v3 = type metadata accessor for NetworkEvent();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DACB8754();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = MEMORY[0x1E69E7D40];
    v14 = *((*MEMORY[0x1E69E7D40] & *a1) + qword_1EE13E480 + 88);
    swift_beginAccess();
    result = *(a1 + v14);
    v15 = *(result + 16);
    if (v15)
    {
      v35 = (a1 + *((*v13 & *a1) + qword_1EE13E480 + 64));
      v16 = *(*(v1 + qword_1EE122628) + 16);
      v18 = *(v8 + 16);
      v17 = v8 + 16;
      v33 = v18;
      v34 = v16;
      v19 = result + ((*(v17 + 64) + 32) & ~*(v17 + 64));
      v20 = *(v17 + 56);
      v31 = (v17 + 16);
      v32 = v20;
      v30 = result;
      sub_1DACB71E4();
      v36 = v17;
      do
      {
        v33(v12, v19, v7);
        v21 = v12;
        v22 = v35[3];
        v23 = v35[4];
        __swift_project_boxed_opaque_existential_1(v35, v22);
        sub_1DAA8C2EC();
        v25 = v3;
        v26 = &v6[*(v24 + 48)];
        (*v31)(v6, v21, v7);
        *v26 = v34;
        *(v26 + 1) = 0;
        v27 = MEMORY[0x1E69E7CC0];
        *(v26 + 2) = MEMORY[0x1E69E7CC0];
        *(v26 + 3) = v27;
        *(v26 + 4) = 0;
        *(v26 + 5) = 0;
        v3 = v25;
        swift_storeEnumTagMultiPayload();
        v28 = *(v23 + 16);
        v29 = v23;
        v12 = v21;
        v28(v6, v22, v29);
        sub_1DAC25E7C(v6, type metadata accessor for NetworkEvent);
        v19 += v32;
        --v15;
      }

      while (v15);
    }
  }

  return result;
}

void sub_1DAC25C98(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1DACB9904();
    sub_1DAC25798(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1DACC1D20;
    v3 = MEMORY[0x1E69E6158];
    v4 = MEMORY[0x1E1277130](a1, MEMORY[0x1E69E6158]);
    v6 = v5;
    *(v2 + 56) = v3;
    *(v2 + 64) = sub_1DAA443C8();
    *(v2 + 32) = v4;
    *(v2 + 40) = v6;
    sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
    v7 = sub_1DACB9AD4();
    sub_1DACB8C64();
  }
}

uint64_t sub_1DAC25DCC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DAC25E14()
{
  if (!qword_1EE11F790)
  {
    sub_1DAA420F4(255, &qword_1EE11F798, 0x1E69E58C0);
    v0 = sub_1DACB9AF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F790);
    }
  }
}

uint64_t sub_1DAC25E7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAC25EDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1DAC25798(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1DAC25F4C()
{
  result = qword_1EE122650;
  if (!qword_1EE122650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122650);
  }

  return result;
}

unint64_t sub_1DAC25FB4()
{
  result = qword_1EE122638;
  if (!qword_1EE122638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122638);
  }

  return result;
}

unint64_t sub_1DAC2600C()
{
  result = qword_1EE122630;
  if (!qword_1EE122630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122630);
  }

  return result;
}

unint64_t sub_1DAC26064()
{
  result = qword_1EE122648;
  if (!qword_1EE122648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122648);
  }

  return result;
}

unint64_t sub_1DAC260BC()
{
  result = qword_1EE122640;
  if (!qword_1EE122640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122640);
  }

  return result;
}

void sub_1DAC26110(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1DAC26178()
{
  result = qword_1ECBE91F0;
  if (!qword_1ECBE91F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE91F0);
  }

  return result;
}

unint64_t sub_1DAC261E0()
{
  result = qword_1ECBE91F8;
  if (!qword_1ECBE91F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE91F8);
  }

  return result;
}

unint64_t sub_1DAC26238()
{
  result = qword_1ECBE9200;
  if (!qword_1ECBE9200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9200);
  }

  return result;
}

uint64_t sub_1DAC2628C(void *a1, uint64_t a2)
{
  sub_1DAC27614(0, &qword_1ECBE9250, sub_1DAC27100, &type metadata for TestStockFeedService.TestData.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC27100();
  sub_1DACBA304();
  v12[1] = a2;
  sub_1DAC27154(0, &qword_1ECBE9228, &qword_1ECBE9230, &type metadata for TestStockFeedService.TestData.Article);
  sub_1DAC272EC();
  sub_1DACBA0E4();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DAC26424(uint64_t a1)
{
  v2 = sub_1DAC275C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC26460(uint64_t a1)
{
  v2 = sub_1DAC275C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC2649C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v17 = a2;
  sub_1DAC27614(0, &qword_1ECBE9288, sub_1DAC275C0, &type metadata for TestStockFeedService.TestData.Article.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC275C0();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v17;
  v12 = sub_1DACB9FA4();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v11 = v12;
  v11[1] = v14;
  return result;
}

uint64_t sub_1DAC2664C(void *a1)
{
  sub_1DAC27614(0, &qword_1ECBE9298, sub_1DAC275C0, &type metadata for TestStockFeedService.TestData.Article.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC275C0();
  sub_1DACBA304();
  sub_1DACBA094();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1DAC267B4(uint64_t a1)
{
  v2 = sub_1DAC27100();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC267F0(uint64_t a1)
{
  v2 = sub_1DAC27100();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DAC2682C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1DAC26F24(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DAC26874(void *a1, uint64_t a2)
{
  v4 = a1[2];
  sub_1DAC26EC0();
  sub_1DACB83F4();
  v5 = a1[11];
  v6 = a1[12];
  __swift_project_boxed_opaque_existential_1(a1 + 8, v5);
  sub_1DAA61724(0, &qword_1EE123B50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DACC1D20;
  v8 = *(a2 + 24);
  *(v7 + 32) = *(a2 + 16);
  *(v7 + 40) = v8;
  sub_1DACB71E4();
  sub_1DAA9C8F8(v7, v5, v6);

  v9 = sub_1DACB89D4();
  v10 = sub_1DACB89C4();

  return v10;
}

uint64_t sub_1DAC26990(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = *(a4 + 112);
  v58 = *(a4 + 96);
  v59 = v7;
  v60 = *(a4 + 128);
  v8 = *(a4 + 48);
  v54 = *(a4 + 32);
  v55 = v8;
  v9 = *(a4 + 80);
  v56 = *(a4 + 64);
  v57 = v9;
  v10 = *(a4 + 16);
  v52 = *a4;
  v53 = v10;
  v11 = sub_1DAB85A94(a2);
  if (!v11)
  {
    goto LABEL_14;
  }

  if (!v11[2])
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v11[4];
  v12 = v11[5];
  sub_1DACB71E4();

  if (!*(a1 + 16))
  {
LABEL_15:

    __break(1u);
    return result;
  }

  v14 = sub_1DAA4BF3C(v13, v12);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

  v17 = *(*(a1 + 56) + 8 * v14);
  v18 = *(v17 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v31 = a3;
    *&v50[0] = MEMORY[0x1E69E7CC0];
    sub_1DACB71E4();
    sub_1DAA5859C(0, v18, 0);
    v19 = *&v50[0];
    v20 = (v17 + 40);
    do
    {
      v22 = *(v20 - 1);
      v21 = *v20;
      *&v50[0] = v19;
      v24 = *(v19 + 16);
      v23 = *(v19 + 24);
      sub_1DACB71E4();
      if (v24 >= v23 >> 1)
      {
        sub_1DAA5859C((v23 > 1), v24 + 1, 1);
        v19 = *&v50[0];
      }

      *(v19 + 16) = v24 + 1;
      v25 = v19 + 16 * v24;
      *(v25 + 32) = v22;
      *(v25 + 40) = v21;
      v20 += 2;
      --v18;
    }

    while (v18);

    a3 = v31;
  }

  v26 = a3[6];
  v27 = a3[7];
  __swift_project_boxed_opaque_existential_1(a3 + 3, v26);
  v47 = v58;
  v48 = v59;
  v49 = v60;
  v43 = v54;
  v44 = v55;
  v45 = v56;
  v46 = v57;
  v41 = v52;
  v42 = v53;
  nullsub_1(&v41);
  v38 = v47;
  v39 = v48;
  v40 = v49;
  v34 = v43;
  v35 = v44;
  v36 = v45;
  v37 = v46;
  v32 = v41;
  v33 = v42;
  v28 = *(v27 + 8);
  sub_1DAA806E4(a4, v50);
  v29 = v28(v19, &v32, v26, v27);

  v50[6] = v38;
  v50[7] = v39;
  v51 = v40;
  v50[2] = v34;
  v50[3] = v35;
  v50[4] = v36;
  v50[5] = v37;
  v50[0] = v32;
  v50[1] = v33;
  sub_1DAB76B6C(v50);
  return v29;
}

uint64_t sub_1DAC26BFC()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAC26C68(__int128 *a1)
{
  v2 = *v1;
  v3 = a1[7];
  v23 = a1[6];
  v24 = v3;
  v25 = *(a1 + 16);
  v4 = a1[3];
  v19 = a1[2];
  v20 = v4;
  v5 = a1[5];
  v21 = a1[4];
  v22 = v5;
  v6 = a1[1];
  v17 = *a1;
  v18 = v6;
  sub_1DAC26DFC();
  sub_1DACB8BB4();
  v7 = swift_allocObject();
  v8 = v21;
  *(v7 + 104) = v22;
  v9 = v24;
  *(v7 + 120) = v23;
  *(v7 + 136) = v9;
  v10 = v17;
  *(v7 + 40) = v18;
  v11 = v20;
  *(v7 + 56) = v19;
  *(v7 + 72) = v11;
  *(v7 + 88) = v8;
  *(v7 + 16) = v2;
  *(v7 + 152) = v25;
  *(v7 + 24) = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1DAC26E7C;
  *(v12 + 24) = v7;
  sub_1DACB71F4();
  sub_1DAA806E4(&v17, v16);
  v13 = sub_1DACB89D4();
  sub_1DAAD4E00();
  v14 = sub_1DACB8A54();

  return v14;
}

void sub_1DAC26DFC()
{
  if (!qword_1ECBE9208)
  {
    sub_1DAC27154(255, &qword_1EE11FC60, &qword_1EE123EA0, MEMORY[0x1E69E6158]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECBE9208);
    }
  }
}

uint64_t sub_1DAC26E88(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

unint64_t sub_1DAC26EC0()
{
  result = qword_1ECBE9210;
  if (!qword_1ECBE9210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9210);
  }

  return result;
}

void *sub_1DAC26F24(uint64_t *a1)
{
  sub_1DAC27614(0, &qword_1ECBE9218, sub_1DAC27100, &type metadata for TestStockFeedService.TestData.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v13 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC27100();
  v11 = v10;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DAC27154(0, &qword_1ECBE9228, &qword_1ECBE9230, &type metadata for TestStockFeedService.TestData.Article);
    sub_1DAC271D0();
    sub_1DACB9FE4();
    (*(v5 + 8))(v8, v4);
    v11 = v13[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

unint64_t sub_1DAC27100()
{
  result = qword_1ECBE9220;
  if (!qword_1ECBE9220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9220);
  }

  return result;
}

void sub_1DAC27154(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1DAA61724(255, a3, a4, MEMORY[0x1E69E62F8]);
    v5 = sub_1DACB91A4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1DAC271D0()
{
  result = qword_1ECBE9238;
  if (!qword_1ECBE9238)
  {
    sub_1DAC27154(255, &qword_1ECBE9228, &qword_1ECBE9230, &type metadata for TestStockFeedService.TestData.Article);
    sub_1DAC273B4(&qword_1ECBE9240, sub_1DAC27298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9238);
  }

  return result;
}

unint64_t sub_1DAC27298()
{
  result = qword_1ECBE9248;
  if (!qword_1ECBE9248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9248);
  }

  return result;
}

unint64_t sub_1DAC272EC()
{
  result = qword_1ECBE9258;
  if (!qword_1ECBE9258)
  {
    sub_1DAC27154(255, &qword_1ECBE9228, &qword_1ECBE9230, &type metadata for TestStockFeedService.TestData.Article);
    sub_1DAC273B4(&qword_1ECBE9260, sub_1DAC27444);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9258);
  }

  return result;
}

uint64_t sub_1DAC273B4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA61724(255, &qword_1ECBE9230, &type metadata for TestStockFeedService.TestData.Article, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAC27444()
{
  result = qword_1ECBE9268;
  if (!qword_1ECBE9268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9268);
  }

  return result;
}

unint64_t sub_1DAC274BC()
{
  result = qword_1ECBE9270;
  if (!qword_1ECBE9270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9270);
  }

  return result;
}

unint64_t sub_1DAC27514()
{
  result = qword_1ECBE9278;
  if (!qword_1ECBE9278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9278);
  }

  return result;
}

unint64_t sub_1DAC2756C()
{
  result = qword_1ECBE9280;
  if (!qword_1ECBE9280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9280);
  }

  return result;
}

unint64_t sub_1DAC275C0()
{
  result = qword_1ECBE9290;
  if (!qword_1ECBE9290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9290);
  }

  return result;
}

void sub_1DAC27614(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1DAC27690()
{
  result = qword_1ECBE92A0;
  if (!qword_1ECBE92A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE92A0);
  }

  return result;
}
uint64_t sub_1AFAE9D30(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    v5 = *(a1 + 16);
    if (v5 == *(a1 + 24) >> 1 || *(*(a1 + 8) + 40 * v5) != 8)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  v6 = *(a1 + 48);
  v84 = *(a1 + 32);
  v85 = v6;
  v86 = *(a1 + 64);
  v7 = *(a1 + 16);
  v83[0] = *a1;
  v83[1] = v7;
  *v81 = v84;
  *&v81[16] = v6;
  v82 = v86;
  v79 = v83[0];
  v80 = v7;
  sub_1AFAF541C(v83, &v74);
  sub_1AFAE59B0(8u);
  if (v3)
  {
    v76 = *v81;
    v77 = *&v81[16];
    v78 = v82;
    v74 = v79;
    v75 = v80;
    v8 = &v74;
    return sub_1AFAF53E8(v8);
  }

  else
  {

    v87 = a3 + 56;
    v50 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v72[2] = *v81;
      v72[3] = *&v81[16];
      v69 = *v81;
      v70 = *&v81[16];
      v72[0] = v79;
      v72[1] = v80;
      v67 = v79;
      v68 = v80;
      v76 = *v81;
      v77 = *&v81[16];
      v74 = v79;
      v75 = v80;
      v73 = v82;
      v71 = v82;
      v78 = v82;
      *v65 = *v81;
      *&v65[16] = *&v81[16];
      v66 = v82;
      v63 = v79;
      v64 = v80;
      sub_1AFAF541C(v72, &v58);
      sub_1AFAF541C(&v74, &v58);
      v10 = sub_1AFAE59B0(0xEu);
      v11 = MEMORY[0x1B27189E0](v10);
      v13 = v12;

      if (v64 == *(&v64 + 1) >> 1 || (v14 = *(&v63 + 1) + 40 * v64, *v14 != 7))
      {

        v60 = *v65;
        v61 = *&v65[16];
        v62 = v66;
        v58 = v63;
        v59 = v64;
        sub_1AFAF53E8(&v58);
        v11 = 0;
        v13 = 0;
      }

      else
      {
        v48 = *(v14 + 8);
        v16 = *(v14 + 24);
        v15 = *(v14 + 32);
        *&v64 = v64 + 1;

        *v65 = 7;
        *&v65[8] = v48;
        *&v65[24] = v16;
        v66 = v15;
        v60 = v69;
        v61 = v70;
        v62 = v71;
        v58 = v67;
        v59 = v68;
        sub_1AFAF53E8(&v58);
        v69 = *v65;
        v70 = *&v65[16];
        v71 = v66;
        v67 = v63;
        v68 = v64;
      }

      v17 = sub_1AFAE9720(&v67);
      v19 = v18;
      *v65 = *v81;
      *&v65[16] = *&v81[16];
      v66 = v82;
      v63 = v79;
      v64 = v80;
      sub_1AFAF53E8(&v63);
      v20 = v68;
      *v81 = v69;
      *&v81[16] = v70;
      v79 = v67;
      v47 = *(&v68 + 1);
      v49 = *(&v67 + 1);
      v80 = v68;
      v82 = v71;
      v46 = v67;
      if (v13)
      {
        if (!*(a3 + 16) || (sub_1AFDFF288(), sub_1AFDFD038(), v21 = sub_1AFDFF2F8(), v22 = -1 << *(a3 + 32), v23 = v21 & ~v22, ((*(v87 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0))
        {
LABEL_37:

          *&v58 = 0;
          *(&v58 + 1) = 0xE000000000000000;
          sub_1AFDFE218();

          *&v58 = 0x746E656D75677261;
          *(&v58 + 1) = 0xEA00000000002720;
          MEMORY[0x1B2718AE0](v11, v13);

          MEMORY[0x1B2718AE0](0xD000000000000015, 0x80000001AFF46C30);
          v36 = sub_1AFAE5C18(v58, *(&v58 + 1));
          v38 = v37;

          sub_1AFAF5454();
          swift_allocError();
          *v39 = v36;
          v39[1] = v38;
          swift_willThrow();
          v60 = *v81;
          v61 = *&v81[16];
          v62 = v82;
          v58 = v79;
          v59 = v80;
          v8 = &v58;
          return sub_1AFAF53E8(v8);
        }

        v24 = ~v22;
        while (1)
        {
          v25 = (*(a3 + 48) + 16 * v23);
          v26 = *v25 == v11 && v13 == v25[1];
          if (v26 || (sub_1AFDFEE28() & 1) != 0)
          {
            break;
          }

          v23 = (v23 + 1) & v24;
          if (((*(v87 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        v27 = (swift_isUniquelyReferenced_nonNull_native() & 1) != 0 ? v50 : sub_1AF427218(0, *(v50 + 2) + 1, 1, v50);
        v29 = *(v27 + 2);
        v28 = *(v27 + 3);
        v30 = v29 + 1;
        if (v29 >= v28 >> 1)
        {
          v27 = sub_1AF427218(v28 > 1, v29 + 1, 1, v27);
        }
      }

      else
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v27 = v50;
        }

        else
        {
          v27 = sub_1AF427218(0, *(v50 + 2) + 1, 1, v50);
        }

        v29 = *(v27 + 2);
        v31 = *(v27 + 3);
        v30 = v29 + 1;
        if (v29 >= v31 >> 1)
        {
          v27 = sub_1AF427218(v31 > 1, v29 + 1, 1, v27);
        }

        v13 = 0;
      }

      *(v27 + 2) = v30;
      v50 = v27;
      v32 = &v27[32 * v29];
      *(v32 + 4) = v11;
      *(v32 + 5) = v13;
      *(v32 + 6) = v17;
      *(v32 + 7) = v19;
      if (v20 == v47 >> 1)
      {
        break;
      }

      v33 = v49 + 40 * v20;
      if (*v33)
      {
        break;
      }

      v45 = *(v33 + 8);
      v35 = *(v33 + 24);
      v34 = *(v33 + 32);

      *&v79 = v46;
      *(&v79 + 1) = v49;
      *&v80 = v20 + 1;
      *(&v80 + 1) = v47;
      *v81 = 0;
      *&v81[8] = v45;
      *&v81[24] = v35;
      v82 = v34;
    }

    sub_1AFAE59B0(9u);

    v53 = *v81;
    v54 = *&v81[16];
    v55 = v82;
    v51 = v79;
    v52 = v80;
    v56[2] = *v81;
    v56[3] = *&v81[16];
    v57 = v82;
    v56[0] = v79;
    v56[1] = v80;
    sub_1AFAF541C(&v51, &v58);
    sub_1AFAF53E8(v56);
    v40 = *(a1 + 48);
    v60 = *(a1 + 32);
    v61 = v40;
    v62 = *(a1 + 64);
    v41 = *(a1 + 16);
    v58 = *a1;
    v59 = v41;
    sub_1AFAF53E8(&v58);
    v42 = v54;
    *(a1 + 32) = v53;
    *(a1 + 48) = v42;
    *(a1 + 64) = v55;
    v43 = v52;
    *a1 = v51;
    *(a1 + 16) = v43;
    return v50;
  }
}

uint64_t sub_1AFAEA414@<X0>(uint64_t a1@<X0>, char a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  LODWORD(v129) = a3;
  v8 = sub_1AFDFBCE8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 48);
  v126 = *(a1 + 32);
  v127 = v13;
  v128 = *(a1 + 64);
  v14 = *(a1 + 16);
  v124 = *a1;
  v125 = v14;
  v87 = v126;
  v88 = v13;
  v89 = v128;
  v85 = v124;
  v86 = v14;
  if (a2)
  {
    if (v125 == *(&v125 + 1) >> 1 || (*(*(&v124 + 1) + 40 * v125) | 4) != 5)
    {
      sub_1AFAF541C(&v124, &v80);
    }

    else
    {
      sub_1AFAF541C(&v124, &v80);
      sub_1AFAE5E1C(v90);
      sub_1AFAF54A8(v90);
    }

    sub_1AFAE59B0(0xEu);
    if (v4)
    {
      goto LABEL_29;
    }

    sub_1AFAE59B0(2u);
  }

  else
  {
    sub_1AFAF541C(&v124, &v80);
  }

  v15 = sub_1AFAE59B0(0xEu);
  if (!v4)
  {
    v72 = a4;
    v73 = v9;
    v16 = MEMORY[0x1B27189E0](v15);
    v18 = v17;

    if (v86 == *(&v86 + 1) >> 1 || *(*(&v85 + 1) + 40 * v86) != 2)
    {
      sub_1AFB7929C(v16, v18, &v95);
      if (v96)
      {
        v71 = v96;
        HIDWORD(v68) = v100;
        v129 = v98;
        v70 = v97;
        v69 = v95;
        v101 = v99;

        v19 = *(a1 + 48);
        v116 = *(a1 + 32);
        v117 = v19;
        v118 = *(a1 + 64);
        v20 = *(a1 + 16);
        v115[0] = *a1;
        v115[1] = v20;
        v77 = v116;
        v78 = v19;
        v79 = v118;
        v75 = v115[0];
        v76 = v20;
        sub_1AFAF541C(v115, &v80);
        sub_1AFAF53E8(&v75);
        v21 = sub_1AFAE5EE4();
        v34 = v22;
        sub_1AFAF53E8(v115);
        *&v80 = v21;
        *(&v80 + 1) = v34;
        sub_1AFDFBC88();
        sub_1AF4486E4();
        v23 = sub_1AFDFDEA8();
        v25 = v24;
        v26 = v12;
        v27 = WORD2(v68);
        (*(v73 + 8))(v26, v8);

        v28 = v88;
        v82 = v87;
        v83 = v88;
        v29 = v89;
        v84 = v89;
        v31 = v85;
        v30 = v86;
        v80 = v85;
        v81 = v86;
        *(a1 + 32) = v87;
        *(a1 + 48) = v28;
        *(a1 + 64) = v29;
        *a1 = v31;
        *(a1 + 16) = v30;
        v32 = v101;
        sub_1AFAF541C(&v80, v74);
        v33 = 0;
        LOBYTE(v34) = 1;
LABEL_18:
        v82 = v87;
        v83 = v88;
        v84 = v89;
        v80 = v85;
        v81 = v86;
        result = sub_1AFAF53E8(&v80);
        v36 = v72;
        v37 = v71;
        *v72 = v69;
        v36[1] = v37;
        *(v36 + 1) = v70;
        v36[4] = v129;
        *(v36 + 40) = v32;
        *(v36 + 21) = v27;
        v36[6] = v23;
        v36[7] = v25;
        *(v36 + 64) = v33;
        *(v36 + 65) = v34;
        return result;
      }

      v38 = *(a1 + 48);
      v121 = *(a1 + 32);
      v122 = v38;
      v123 = *(a1 + 64);
      v39 = *(a1 + 16);
      v119 = *a1;
      v120 = v39;
      *&v80 = 0;
      *(&v80 + 1) = 0xE000000000000000;
      sub_1AFDFE218();

      *&v80 = 0xD000000000000017;
      *(&v80 + 1) = 0x80000001AFF46910;
      MEMORY[0x1B2718AE0](v16, v18);

      MEMORY[0x1B2718AE0](39, 0xE100000000000000);
      v41 = *(&v80 + 1);
      v40 = v80;
    }

    else
    {
      v71 = 0x73676E69646E6942;
      if (v16 == 0x73676E69646E6962 && v18 == 0xE800000000000000 || (sub_1AFDFEE28() & 1) != 0)
      {

        v18 = 0xE800000000000000;
      }

      else
      {
        v71 = v16;
      }

      if (qword_1ED730450 != -1)
      {
        swift_once();
      }

      v42 = sub_1AF6DC144(v71, v18, 0, 1);
      if (v42)
      {
        v43 = v42;
        if (swift_conformsToProtocol2())
        {
          v44 = swift_conformsToProtocol2();
          if (v44)
          {
            v71 = v44;

            sub_1AFAE59B0(2u);

            sub_1AFAE8B28(&v85, v43, v91);
            v45 = *(a1 + 48);
            v107 = *(a1 + 32);
            v108 = v45;
            v109 = *(a1 + 64);
            v46 = *(a1 + 16);
            v105 = *a1;
            v106 = v46;
            *&v80 = sub_1AFAE5EE4();
            *(&v80 + 1) = v47;
            sub_1AFDFBC88();
            sub_1AF4486E4();
            v23 = sub_1AFDFDEA8();
            v25 = v48;
            (*(v73 + 8))(v12, v8);

            v103[2] = v87;
            v103[3] = v88;
            v104 = v89;
            v103[0] = v85;
            v103[1] = v86;
            sub_1AFAF541C(v103, &v80);
            v49 = sub_1AFAE9034(&unk_1F2500BB8);
            sub_1AF585778(&unk_1F2500BD8);
            v56 = sub_1AFAE9D30(&v85, 1, v49);

            if (!*(v56 + 16))
            {
              v33 = 0;
              LOBYTE(v34) = 1;
              goto LABEL_35;
            }

            if (v129)
            {
              v57 = sub_1AFAE56B0(v56);
              v33 = v57;
              LODWORD(v34) = (v57 >> 8) & 1;
LABEL_35:
              sub_1AFAF53E8(v103);

              v62 = *(a1 + 48);
              v77 = *(a1 + 32);
              v78 = v62;
              v79 = *(a1 + 64);
              v63 = *(a1 + 16);
              v75 = *a1;
              v76 = v63;
              sub_1AFAF53E8(&v75);
              v64 = v88;
              v82 = v87;
              v83 = v88;
              v65 = v89;
              v84 = v89;
              v67 = v85;
              v66 = v86;
              v80 = v85;
              v81 = v86;
              *(a1 + 32) = v87;
              *(a1 + 48) = v64;
              *(a1 + 64) = v65;
              *a1 = v67;
              *(a1 + 16) = v66;
              v27 = v94;
              v129 = v92;
              v32 = v93;
              v70 = v91[1];
              v71 = *(&v91[0] + 1);
              v69 = *&v91[0];
              sub_1AFAF541C(&v80, v74);
              goto LABEL_18;
            }

            v58 = sub_1AFAE5C18(0xD000000000000021, 0x80000001AFF46950);
            v60 = v59;
            sub_1AFAF5454();
            swift_allocError();
            *v61 = v58;
            v61[1] = v60;
            swift_willThrow();
            v102 = v91[0];
            sub_1AF585778(&v102);

            sub_1AFAF53E8(v103);
            goto LABEL_29;
          }
        }
      }

      v50 = *(a1 + 48);
      v112 = *(a1 + 32);
      v113 = v50;
      v114 = *(a1 + 64);
      v51 = *(a1 + 16);
      v110 = *a1;
      v111 = v51;
      *&v80 = 0;
      *(&v80 + 1) = 0xE000000000000000;
      sub_1AFDFE218();

      *&v80 = 0xD000000000000018;
      *(&v80 + 1) = 0x80000001AFF46930;
      MEMORY[0x1B2718AE0](v71, v18);

      MEMORY[0x1B2718AE0](39, 0xE100000000000000);
      v41 = *(&v80 + 1);
      v40 = v80;
    }

    v52 = sub_1AFAE5C18(v40, v41);
    v54 = v53;

    sub_1AFAF5454();
    swift_allocError();
    *v55 = v52;
    v55[1] = v54;
    swift_willThrow();
  }

LABEL_29:
  v82 = v87;
  v83 = v88;
  v84 = v89;
  v80 = v85;
  v81 = v86;
  return sub_1AFAF53E8(&v80);
}

uint64_t sub_1AFAEAD00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61636F6CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646C726F77 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E656373 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646C726F777263 && a2 == 0xE700000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 2003134838 && a2 == 0xE400000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 4;
  }

  else
  {
    sub_1AFDFE218();

    MEMORY[0x1B2718AE0](a1, a2);

    MEMORY[0x1B2718AE0](0xD000000000000016, 0x80000001AFF469F0);
    sub_1AFAF5454();
    swift_allocError();
    *v6 = 39;
    v6[1] = 0xE100000000000000;
    return swift_willThrow();
  }
}

uint64_t sub_1AFAEAF38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  sub_1AFAF57F8(0, &qword_1EB630C80, sub_1AFAF54D4, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6A10]);
  v3 = sub_1AFDFE1B8();
  v4 = 0;
  v5 = v3 + 56;
  v6 = a1 + 32;
  do
  {
    v7 = *(v6 + v4);
    sub_1AFDFF288();
    sub_1AFDFF2A8();
    v8 = sub_1AFDFF2F8();
    v9 = ~(-1 << *(v3 + 32));
    v10 = v8 & v9;
    v11 = (v8 & v9) >> 6;
    v12 = *(v5 + 8 * v11);
    v13 = 1 << (v8 & v9);
    v14 = *(v3 + 48);
    if ((v13 & v12) != 0)
    {
      while (*(v14 + v10) != v7)
      {
        v10 = (v10 + 1) & v9;
        v11 = v10 >> 6;
        v12 = *(v5 + 8 * (v10 >> 6));
        v13 = 1 << v10;
        if (((1 << v10) & v12) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
LABEL_3:
      *(v5 + 8 * v11) = v13 | v12;
      *(v14 + v10) = v7;
      ++*(v3 + 16);
    }

    ++v4;
  }

  while (v4 != v1);
  return v3;
}

uint64_t sub_1AFAEB098@<X0>(__int128 *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v7 = swift_allocObject();
  v9 = *a1;
  v814 = a1[1];
  v8 = v814;
  v10 = a1[3];
  v815 = a1[2];
  v816 = v10;
  v817 = *(a1 + 8);
  v11 = v817;
  v813 = v9;
  *(v7 + 48) = v815;
  *(v7 + 64) = v10;
  *(v7 + 80) = v11;
  *(v7 + 16) = v9;
  *(v7 + 32) = v8;
  sub_1AFAF541C(&v813, &v587);
  v12 = sub_1AFAE59B0(0xEu);
  if (v3)
  {
  }

  v17 = v15;
  v583 = a3;
  v584 = v12;
  v18 = v13;
  v818 = v14;
  sub_1AFAF5748(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1AFE431C0;
  *(v19 + 32) = 0x6563617073;
  *(v19 + 40) = 0xE500000000000000;
  v20 = sub_1AFAE9034(v19);
  swift_setDeallocating();
  sub_1AF756E70();
  v21 = sub_1AFAE9D30(v7 + 16, 1, v20);
  v577 = v17;

  v578 = v21;
  sub_1AFAE55E4(0x6563617073, 0xE500000000000000, v21);
  if (v23)
  {
    v24 = v22;
    v25 = v23;

    v26 = sub_1AFAEAD00(v24, v25);
  }

  else
  {
    v26 = 5;
  }

  v27 = v818;
  if ((sub_1AFAE6C5C(29796, 0xE200000000000000, v584, v18, v818, v17) & 1) == 0)
  {
    if (sub_1AFAE6C5C(1701669236, 0xE400000000000000, v584, v18, v27, v17))
    {
      if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
      {
        v28 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
      }

      else
      {
        v28 = MEMORY[0x1E69E7CD0];
      }

      sub_1AFAE6460(1, v28, v578, v7, v584, v18, v27, v17, &v596);
      v43 = a1[3];
      v589 = a1[2];
      v590 = v43;
      v591 = *(a1 + 8);
      v44 = a1[1];
      v587 = *a1;
      v588 = v44;
      sub_1AFAF53E8(&v587);

      v35 = v599;
      v585 = v598;
      v36 = v597;
      v37 = v596;
      goto LABEL_132;
    }

    if (sub_1AFAE6C5C(0x5F646C726F777263, 0xEF6A6F72705F6F74, v584, v18, v27, v17))
    {
      v565 = v18;
      sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
      v29 = swift_allocObject();
      v30 = sub_1AF757508(v29, 2);
      *v31 = 258;
      if (sub_1AF449D1C(v30))
      {
        v32 = sub_1AFAEAF38(v30);
      }

      else
      {
        v32 = MEMORY[0x1E69E7CD0];
      }

      v49 = v818;

      if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
      {
        v50 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
      }

      else
      {
        v50 = MEMORY[0x1E69E7CD0];
      }

      if (a2 != 4 && sub_1AF702B44(a2, v32))
      {

        v579 = v50;
        v554 = sub_1AF449D1C(v578);
        if (v554)
        {
          v51 = 0;
          v52 = v578 + 32;
          v53 = v50 + 56;
          while (1)
          {
            v68 = (v52 + 32 * v51);
            v69 = v68[1];
            if (!v69)
            {
              break;
            }

            v70 = *v68;
            if (!*(v579 + 16))
            {

              goto LABEL_46;
            }

            sub_1AFDFF288();

            sub_1AFDFD038();
            v71 = sub_1AFDFF2F8();
            v72 = -1 << *(v579 + 32);
            v73 = v71 & ~v72;
            if (((*(v53 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73) & 1) == 0)
            {
LABEL_45:

              v18 = v565;
LABEL_46:
              v77 = *(v7 + 64);
              v630 = *(v7 + 48);
              v631 = v77;
              v632 = *(v7 + 80);
              v78 = *(v7 + 32);
              v628 = *(v7 + 16);
              v629 = v78;
              *&v587 = 0x746E656D75677261;
              *(&v587 + 1) = 0xEA00000000002720;
              MEMORY[0x1B2718AE0](v70, v69);

              MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF468F0);
              v79 = MEMORY[0x1B27189E0](v584, v18, v818, v577);
              v81 = v80;

              MEMORY[0x1B2718AE0](v79, v81);

              MEMORY[0x1B2718AE0](39, 0xE100000000000000);
              v63 = *(&v587 + 1);
              v62 = v587;
              goto LABEL_56;
            }

            ++v51;
            v74 = ~v72;
            while (1)
            {
              v75 = (*(v579 + 48) + 16 * v73);
              v76 = *v75 == v70 && v69 == v75[1];
              if (v76 || (sub_1AFDFEE28() & 1) != 0)
              {
                break;
              }

              v73 = (v73 + 1) & v74;
              if (((*(v53 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73) & 1) == 0)
              {
                goto LABEL_45;
              }
            }

            v18 = v565;
            v52 = v578 + 32;
            if (v51 == v554)
            {
              goto LABEL_75;
            }
          }

          v217 = *(v7 + 64);
          v635 = *(v7 + 48);
          v636 = v217;
          v637 = *(v7 + 80);
          v218 = *(v7 + 32);
          v633 = *(v7 + 16);
          v634 = v218;
          *&v587 = 0xD000000000000016;
          *(&v587 + 1) = 0x80000001AFF468D0;
          v219 = MEMORY[0x1B27189E0](v584, v18, v818, v577);
          v221 = v220;

          MEMORY[0x1B2718AE0](v219, v221);

          MEMORY[0x1B2718AE0](39, 0xE100000000000000);
          v63 = *(&v587 + 1);
          v62 = v587;
          goto LABEL_56;
        }

LABEL_75:

        v116 = a1[3];
        v589 = a1[2];
        v590 = v116;
        v591 = *(a1 + 8);
        v117 = a1[1];
        v587 = *a1;
        v588 = v117;
        sub_1AFAF53E8(&v587);
        v118 = swift_allocObject();
        *(v118 + 16) = 5;
        *(v118 + 24) = 0;
        *(v118 + 32) = 0;
        *(v118 + 40) = 0;
        v37 = v118 | 0x7000000000000000;
        *(v118 + 48) = 5;
LABEL_131:
        v36 = 1;
        v35 = 1;
        v585 = xmmword_1AFE4C460;
LABEL_132:
        v38 = v583;
        goto LABEL_133;
      }

      v54 = *(v7 + 64);
      v640 = *(v7 + 48);
      v641 = v54;
      v642 = *(v7 + 80);
      v55 = *(v7 + 32);
      v638 = *(v7 + 16);
      v639 = v55;
      *&v587 = 0x206E69746C697562;
      *(&v587 + 1) = 0xE900000000000027;
      v56 = MEMORY[0x1B27189E0](v584, v18, v49, v577);
      v58 = v57;

      MEMORY[0x1B2718AE0](v56, v58);

      MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF468A0);
      sub_1AFAF54D4();
      v59 = sub_1AFDFD788();
      v61 = v60;

      MEMORY[0x1B2718AE0](v59, v61);

      v63 = *(&v587 + 1);
      v62 = v587;
LABEL_56:
      v93 = sub_1AFAE5C18(v62, v63);
      v95 = v94;

      sub_1AFAF5454();
      swift_allocError();
      *v96 = v93;
      v96[1] = v95;
      swift_willThrow();
    }

    if (sub_1AFAE6C5C(0x5F646C726F777263, 0xEF776569765F6F74, v584, v18, v27, v17))
    {
      sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
      v39 = swift_allocObject();
      v40 = sub_1AF757508(v39, 2);
      *v41 = 258;
      if (sub_1AF449D1C(v40))
      {
        v42 = sub_1AFAEAF38(v40);
      }

      else
      {
        v42 = MEMORY[0x1E69E7CD0];
      }

      if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
      {
        v82 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
      }

      else
      {
        v82 = MEMORY[0x1E69E7CD0];
      }

      if (a2 == 4 || !sub_1AF702B44(a2, v42))
      {

        v85 = *(v7 + 64);
        v655 = *(v7 + 48);
        v656 = v85;
        v657 = *(v7 + 80);
        v86 = *(v7 + 32);
        v653 = *(v7 + 16);
        v654 = v86;
        *&v587 = 0x206E69746C697562;
        *(&v587 + 1) = 0xE900000000000027;
        v87 = MEMORY[0x1B27189E0](v584, v18, v27, v577);
        v89 = v88;

        MEMORY[0x1B2718AE0](v87, v89);

        MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF468A0);
        sub_1AFAF54D4();
        v90 = sub_1AFDFD788();
        v92 = v91;

        MEMORY[0x1B2718AE0](v90, v92);

        v63 = *(&v587 + 1);
        v62 = v587;
        goto LABEL_56;
      }

      v580 = v82;
      v555 = sub_1AF449D1C(v578);
      if (v555)
      {
        v83 = 0;
        v84 = v82 + 56;
        v568 = v18;
        while (1)
        {
          v101 = (v578 + 32 + 32 * v83);
          v102 = v101[1];
          if (!v102)
          {
            break;
          }

          v573 = v83;
          v103 = *v101;
          if (!*(v580 + 16))
          {

LABEL_71:

            v110 = *(v7 + 64);
            v645 = *(v7 + 48);
            v646 = v110;
            v647 = *(v7 + 80);
            v111 = *(v7 + 32);
            v643 = *(v7 + 16);
            v644 = v111;
            *&v587 = 0x746E656D75677261;
            *(&v587 + 1) = 0xEA00000000002720;
            MEMORY[0x1B2718AE0](v103, v102);

            MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF468F0);
            v112 = MEMORY[0x1B27189E0](v584, v568, v818, v577);
            v114 = v113;

            MEMORY[0x1B2718AE0](v112, v114);

            MEMORY[0x1B2718AE0](39, 0xE100000000000000);
            v63 = *(&v587 + 1);
            v62 = v587;
            goto LABEL_56;
          }

          sub_1AFDFF288();

          sub_1AFDFD038();
          v104 = sub_1AFDFF2F8();
          v105 = -1 << *(v580 + 32);
          v106 = v104 & ~v105;
          if (((*(v84 + ((v106 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v106) & 1) == 0)
          {
            goto LABEL_71;
          }

          v574 = v573 + 1;
          v107 = ~v105;
          while (1)
          {
            v108 = (*(v580 + 48) + 16 * v106);
            v109 = *v108 == v103 && v102 == v108[1];
            if (v109 || (sub_1AFDFEE28() & 1) != 0)
            {
              break;
            }

            v106 = (v106 + 1) & v107;
            if (((*(v84 + ((v106 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v106) & 1) == 0)
            {
              goto LABEL_71;
            }
          }

          v18 = v568;
          v83 = v574;
          if (v574 == v555)
          {
            goto LABEL_103;
          }
        }

        v261 = *(v7 + 64);
        v650 = *(v7 + 48);
        v651 = v261;
        v652 = *(v7 + 80);
        v262 = *(v7 + 32);
        v648 = *(v7 + 16);
        v649 = v262;
        *&v587 = 0xD000000000000016;
        *(&v587 + 1) = 0x80000001AFF468D0;
        v263 = MEMORY[0x1B27189E0](v584, v18, v818, v577);
        v265 = v264;

        MEMORY[0x1B2718AE0](v263, v265);

        MEMORY[0x1B2718AE0](39, 0xE100000000000000);
        v63 = *(&v587 + 1);
        v62 = v587;
        goto LABEL_56;
      }

LABEL_103:

      v149 = a1[3];
      v589 = a1[2];
      v590 = v149;
      v591 = *(a1 + 8);
      v150 = a1[1];
      v587 = *a1;
      v588 = v150;
      sub_1AFAF53E8(&v587);
      v151 = swift_allocObject();
      v152 = 6;
    }

    else
    {
      if (sub_1AFAE6C5C(0x5F6F745F77656976, 0xEC0000006A6F7270, v584, v18, v27, v17))
      {
        v566 = v18;
        sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
        v45 = swift_allocObject();
        v46 = sub_1AF757508(v45, 2);
        *v47 = 258;
        if (sub_1AF449D1C(v46))
        {
          v48 = sub_1AFAEAF38(v46);
        }

        else
        {
          v48 = MEMORY[0x1E69E7CD0];
        }

        if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
        {
          v115 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
        }

        else
        {
          v115 = MEMORY[0x1E69E7CD0];
        }

        if (a2 == 4 || !sub_1AF702B44(a2, v48))
        {

          v121 = *(v7 + 64);
          v670 = *(v7 + 48);
          v671 = v121;
          v672 = *(v7 + 80);
          v122 = *(v7 + 32);
          v668 = *(v7 + 16);
          v669 = v122;
          *&v587 = 0x206E69746C697562;
          *(&v587 + 1) = 0xE900000000000027;
          v123 = MEMORY[0x1B27189E0](v584, v566, v27, v17);
          v125 = v124;

          MEMORY[0x1B2718AE0](v123, v125);

          MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF468A0);
          sub_1AFAF54D4();
          v126 = sub_1AFDFD788();
          v128 = v127;

          MEMORY[0x1B2718AE0](v126, v128);

          v63 = *(&v587 + 1);
          v62 = v587;
          goto LABEL_56;
        }

        v556 = sub_1AF449D1C(v578);
        if (v556)
        {
          v119 = 0;
          v120 = v115 + 56;
          v581 = v115;
          while (1)
          {
            v134 = (v578 + 32 + 32 * v119);
            v135 = v134[1];
            if (!v135)
            {
              break;
            }

            v575 = v119;
            v136 = *v134;
            if (!*(v115 + 16))
            {

LABEL_99:

              v143 = *(v7 + 64);
              v660 = *(v7 + 48);
              v661 = v143;
              v662 = *(v7 + 80);
              v144 = *(v7 + 32);
              v658 = *(v7 + 16);
              v659 = v144;
              *&v587 = 0x746E656D75677261;
              *(&v587 + 1) = 0xEA00000000002720;
              MEMORY[0x1B2718AE0](v136, v135);

              MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF468F0);
              v145 = MEMORY[0x1B27189E0](v584, v566, v818, v577);
              v147 = v146;

              MEMORY[0x1B2718AE0](v145, v147);

              MEMORY[0x1B2718AE0](39, 0xE100000000000000);
              v63 = *(&v587 + 1);
              v62 = v587;
              goto LABEL_56;
            }

            sub_1AFDFF288();

            sub_1AFDFD038();
            v137 = sub_1AFDFF2F8();
            v138 = -1 << *(v115 + 32);
            v139 = v137 & ~v138;
            if (((*(v120 + ((v139 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v139) & 1) == 0)
            {
              goto LABEL_99;
            }

            v576 = v575 + 1;
            v140 = ~v138;
            while (1)
            {
              v141 = (*(v581 + 48) + 16 * v139);
              v142 = *v141 == v136 && v135 == v141[1];
              if (v142 || (sub_1AFDFEE28() & 1) != 0)
              {
                break;
              }

              v139 = (v139 + 1) & v140;
              if (((*(v120 + ((v139 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v139) & 1) == 0)
              {
                goto LABEL_99;
              }
            }

            v119 = v576;
            v115 = v581;
            if (v576 == v556)
            {
              goto LABEL_129;
            }
          }

          v298 = *(v7 + 64);
          v665 = *(v7 + 48);
          v666 = v298;
          v667 = *(v7 + 80);
          v299 = *(v7 + 32);
          v663 = *(v7 + 16);
          v664 = v299;
          *&v587 = 0xD000000000000016;
          *(&v587 + 1) = 0x80000001AFF468D0;
          v300 = MEMORY[0x1B27189E0](v584, v566, v818, v577);
          v302 = v301;

          MEMORY[0x1B2718AE0](v300, v302);

          MEMORY[0x1B2718AE0](39, 0xE100000000000000);
          v63 = *(&v587 + 1);
          v62 = v587;
          goto LABEL_56;
        }

LABEL_129:

        v183 = a1[3];
        v589 = a1[2];
        v590 = v183;
        v591 = *(a1 + 8);
        v184 = a1[1];
        v587 = *a1;
        v588 = v184;
        sub_1AFAF53E8(&v587);
        v151 = swift_allocObject();
        *(v151 + 16) = 7;
LABEL_130:
        *(v151 + 24) = 0;
        *(v151 + 32) = 0;
        *(v151 + 40) = 0;
        v37 = v151 | 0x7000000000000000;
        *(v151 + 48) = 5;
        goto LABEL_131;
      }

      if ((sub_1AFAE6C5C(0x5F6F745F6A6F7270, 0xEC00000077656976, v584, v18, v27, v17) & 1) == 0)
      {
        if (sub_1AFAE6C5C(0xD000000000000012, 0x80000001AFF46800, v584, v18, v27, v17))
        {
          sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
          v97 = swift_allocObject();
          v98 = sub_1AF757508(v97, 2);
          *v99 = 258;
          if (sub_1AF449D1C(v98))
          {
            v100 = sub_1AFAEAF38(v98);
          }

          else
          {
            v100 = MEMORY[0x1E69E7CD0];
          }

          v181 = v818;

          if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
          {
            v182 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
          }

          else
          {
            v182 = MEMORY[0x1E69E7CD0];
          }

          if (a2 == 4 || !sub_1AF702B44(a2, v100))
          {

            v191 = *(v7 + 16);
            v699 = *(v7 + 32);
            v192 = *(v7 + 64);
            v700 = *(v7 + 48);
            v701 = v192;
            v702 = *(v7 + 80);
            v698 = v191;
            *&v587 = 0x206E69746C697562;
            *(&v587 + 1) = 0xE900000000000027;
            v193 = MEMORY[0x1B27189E0](v584, v18, v181, v17);
            v195 = v194;

            MEMORY[0x1B2718AE0](v193, v195);

            MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF468A0);
            sub_1AFAF54D4();
            v196 = sub_1AFDFD788();
            v198 = v197;

            MEMORY[0x1B2718AE0](v196, v198);

            v63 = *(&v587 + 1);
            v62 = v587;
            goto LABEL_56;
          }

          v558 = sub_1AF449D1C(v578);
          if (v558)
          {
            v569 = v18;
            v189 = 0;
            v190 = v182 + 56;
            while (1)
            {
              v203 = (v578 + 32 + 32 * v189);
              v204 = v203[1];
              if (!v204)
              {
                break;
              }

              v205 = *v203;
              if (!*(v182 + 16))
              {

LABEL_154:

                v212 = *(v7 + 16);
                v689 = *(v7 + 32);
                v213 = *(v7 + 64);
                v690 = *(v7 + 48);
                v691 = v213;
                v692 = *(v7 + 80);
                v688 = v212;
                *&v587 = 0x746E656D75677261;
                *(&v587 + 1) = 0xEA00000000002720;
                MEMORY[0x1B2718AE0](v205, v204);

                MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF468F0);
                v214 = MEMORY[0x1B27189E0](v584, v569, v818, v577);
                v216 = v215;

                MEMORY[0x1B2718AE0](v214, v216);

                MEMORY[0x1B2718AE0](39, 0xE100000000000000);
                v63 = *(&v587 + 1);
                v62 = v587;
                goto LABEL_56;
              }

              sub_1AFDFF288();

              sub_1AFDFD038();
              v206 = sub_1AFDFF2F8();
              v207 = -1 << *(v182 + 32);
              v208 = v206 & ~v207;
              if (((*(v190 + ((v208 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v208) & 1) == 0)
              {
                goto LABEL_154;
              }

              ++v189;
              v209 = ~v207;
              while (1)
              {
                v210 = (*(v182 + 48) + 16 * v208);
                v211 = *v210 == v205 && v204 == v210[1];
                if (v211 || (sub_1AFDFEE28() & 1) != 0)
                {
                  break;
                }

                v208 = (v208 + 1) & v209;
                if (((*(v190 + ((v208 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v208) & 1) == 0)
                {
                  goto LABEL_154;
                }
              }

              if (v189 == v558)
              {
                goto LABEL_182;
              }
            }

            v368 = *(v7 + 16);
            v694 = *(v7 + 32);
            v369 = *(v7 + 64);
            v695 = *(v7 + 48);
            v696 = v369;
            v697 = *(v7 + 80);
            v693 = v368;
            *&v587 = 0xD000000000000016;
            *(&v587 + 1) = 0x80000001AFF468D0;
            v370 = MEMORY[0x1B27189E0](v584, v569, v818, v577);
            v372 = v371;

            MEMORY[0x1B2718AE0](v370, v372);

            MEMORY[0x1B2718AE0](39, 0xE100000000000000);
            v63 = *(&v587 + 1);
            v62 = v587;
            goto LABEL_56;
          }

LABEL_182:

          v257 = a1[3];
          v589 = a1[2];
          v590 = v257;
          v591 = *(a1 + 8);
          v258 = a1[1];
          v587 = *a1;
          v588 = v258;
          sub_1AFAF53E8(&v587);
          v259 = swift_allocObject();
          v260 = 9;
        }

        else if (sub_1AFAE6C5C(0x705F6172656D6163, 0xEF6E6F697469736FLL, v584, v18, v27, v17))
        {
          if (v26 == 5)
          {
            v129 = 3;
          }

          else
          {
            v129 = v26;
          }

          v557 = v129;
          v130 = swift_allocObject();
          v131 = sub_1AF757508(v130, 1);
          *v132 = 0x6563617073;
          v132[1] = 0xE500000000000000;
          if (sub_1AF449D1C(v131))
          {
            v133 = sub_1AFAE9034(v131);
          }

          else
          {
            v133 = MEMORY[0x1E69E7CD0];
          }

          v222 = v818;

          sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
          v223 = swift_allocObject();
          v224 = sub_1AF757508(v223, 2);
          *v225 = 258;
          if (sub_1AF449D1C(v224))
          {
            v226 = sub_1AFAEAF38(v224);
          }

          else
          {
            v226 = MEMORY[0x1E69E7CD0];
          }

          if (a2 == 4 || !sub_1AF702B44(a2, v226))
          {

            v231 = *(v7 + 16);
            v714 = *(v7 + 32);
            v232 = *(v7 + 64);
            v715 = *(v7 + 48);
            v716 = v232;
            v717 = *(v7 + 80);
            v713 = v231;
            *&v587 = 0x206E69746C697562;
            *(&v587 + 1) = 0xE900000000000027;
            v233 = MEMORY[0x1B27189E0](v584, v18, v222, v17);
            v235 = v234;

            MEMORY[0x1B2718AE0](v233, v235);

            MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF468A0);
            sub_1AFAF54D4();
            v236 = sub_1AFDFD788();
            v238 = v237;

            MEMORY[0x1B2718AE0](v236, v238);

            v63 = *(&v587 + 1);
            v62 = v587;
            goto LABEL_56;
          }

          v571 = v18;

          v547 = sub_1AF449D1C(v578);
          if (v547)
          {
            v229 = 0;
            v230 = v133 + 56;
            while (1)
            {
              v243 = (v578 + 32 + 32 * v229);
              v244 = v243[1];
              if (!v244)
              {
                break;
              }

              v245 = *v243;
              if (!*(v133 + 16))
              {

LABEL_181:

                v252 = *(v7 + 16);
                v704 = *(v7 + 32);
                v253 = *(v7 + 64);
                v705 = *(v7 + 48);
                v706 = v253;
                v707 = *(v7 + 80);
                v703 = v252;
                *&v587 = 0x746E656D75677261;
                *(&v587 + 1) = 0xEA00000000002720;
                MEMORY[0x1B2718AE0](v245, v244);

                MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF468F0);
                v254 = MEMORY[0x1B27189E0](v584, v571, v818, v577);
                v256 = v255;

                MEMORY[0x1B2718AE0](v254, v256);

                MEMORY[0x1B2718AE0](39, 0xE100000000000000);
                v63 = *(&v587 + 1);
                v62 = v587;
                goto LABEL_56;
              }

              sub_1AFDFF288();

              sub_1AFDFD038();
              v246 = sub_1AFDFF2F8();
              v247 = -1 << *(v133 + 32);
              v248 = v246 & ~v247;
              if (((*(v230 + ((v248 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v248) & 1) == 0)
              {
                goto LABEL_181;
              }

              ++v229;
              v249 = ~v247;
              while (1)
              {
                v250 = (*(v133 + 48) + 16 * v248);
                v251 = *v250 == v245 && v244 == v250[1];
                if (v251 || (sub_1AFDFEE28() & 1) != 0)
                {
                  break;
                }

                v248 = (v248 + 1) & v249;
                if (((*(v230 + ((v248 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v248) & 1) == 0)
                {
                  goto LABEL_181;
                }
              }

              if (v229 == v547)
              {
                goto LABEL_209;
              }
            }

            v403 = *(v7 + 16);
            v709 = *(v7 + 32);
            v404 = *(v7 + 64);
            v710 = *(v7 + 48);
            v711 = v404;
            v712 = *(v7 + 80);
            v708 = v403;
            *&v587 = 0xD000000000000016;
            *(&v587 + 1) = 0x80000001AFF468D0;
            v405 = MEMORY[0x1B27189E0](v584, v571, v818, v577);
            v407 = v406;

            MEMORY[0x1B2718AE0](v405, v407);

            MEMORY[0x1B2718AE0](39, 0xE100000000000000);
            v63 = *(&v587 + 1);
            v62 = v587;
            goto LABEL_56;
          }

LABEL_209:

          v296 = a1[3];
          v589 = a1[2];
          v590 = v296;
          v591 = *(a1 + 8);
          v297 = a1[1];
          v587 = *a1;
          v588 = v297;
          sub_1AFAF53E8(&v587);
          v259 = swift_allocObject();
          v260 = v557;
        }

        else if (sub_1AFAE6C5C(0xD000000000000018, 0x80000001AFF46820, v584, v18, v27, v17))
        {
          sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
          v163 = swift_allocObject();
          v164 = sub_1AF757508(v163, 2);
          *v165 = 258;
          if (sub_1AF449D1C(v164))
          {
            v166 = sub_1AFAEAF38(v164);
          }

          else
          {
            v166 = MEMORY[0x1E69E7CD0];
          }

          v266 = v818;

          if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
          {
            v267 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
          }

          else
          {
            v267 = MEMORY[0x1E69E7CD0];
          }

          v559 = v267;
          if (a2 == 4 || !sub_1AF702B44(a2, v166))
          {

            v270 = *(v7 + 16);
            v729 = *(v7 + 32);
            v271 = *(v7 + 64);
            v730 = *(v7 + 48);
            v731 = v271;
            v732 = *(v7 + 80);
            v728 = v270;
            *&v587 = 0x206E69746C697562;
            *(&v587 + 1) = 0xE900000000000027;
            v272 = MEMORY[0x1B27189E0](v584, v18, v266, v17);
            v274 = v273;

            MEMORY[0x1B2718AE0](v272, v274);

            MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF468A0);
            sub_1AFAF54D4();
            v275 = sub_1AFDFD788();
            v277 = v276;

            MEMORY[0x1B2718AE0](v275, v277);

            v63 = *(&v587 + 1);
            v62 = v587;
            goto LABEL_56;
          }

          v572 = v18;

          v548 = sub_1AF449D1C(v578);
          if (v548)
          {
            v268 = 0;
            v269 = v559 + 56;
            while (1)
            {
              v282 = (v578 + 32 + 32 * v268);
              v283 = v282[1];
              if (!v283)
              {
                break;
              }

              v284 = *v282;
              if (!*(v559 + 16))
              {

LABEL_208:

                v291 = *(v7 + 16);
                v719 = *(v7 + 32);
                v292 = *(v7 + 64);
                v720 = *(v7 + 48);
                v721 = v292;
                v722 = *(v7 + 80);
                v718 = v291;
                *&v587 = 0x746E656D75677261;
                *(&v587 + 1) = 0xEA00000000002720;
                MEMORY[0x1B2718AE0](v284, v283);

                MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF468F0);
                v293 = MEMORY[0x1B27189E0](v584, v572, v818, v577);
                v295 = v294;

                MEMORY[0x1B2718AE0](v293, v295);

                MEMORY[0x1B2718AE0](39, 0xE100000000000000);
                v63 = *(&v587 + 1);
                v62 = v587;
                goto LABEL_56;
              }

              sub_1AFDFF288();

              sub_1AFDFD038();
              v285 = sub_1AFDFF2F8();
              v286 = -1 << *(v559 + 32);
              v287 = v285 & ~v286;
              if (((*(v269 + ((v287 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v287) & 1) == 0)
              {
                goto LABEL_208;
              }

              ++v268;
              v288 = ~v286;
              while (1)
              {
                v289 = (*(v559 + 48) + 16 * v287);
                v290 = *v289 == v284 && v283 == v289[1];
                if (v290 || (sub_1AFDFEE28() & 1) != 0)
                {
                  break;
                }

                v287 = (v287 + 1) & v288;
                if (((*(v269 + ((v287 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v287) & 1) == 0)
                {
                  goto LABEL_208;
                }
              }

              if (v268 == v548)
              {
                goto LABEL_236;
              }
            }

            v438 = *(v7 + 16);
            v724 = *(v7 + 32);
            v439 = *(v7 + 64);
            v725 = *(v7 + 48);
            v726 = v439;
            v727 = *(v7 + 80);
            v723 = v438;
            *&v587 = 0xD000000000000016;
            *(&v587 + 1) = 0x80000001AFF468D0;
            v440 = MEMORY[0x1B27189E0](v584, v572, v818, v577);
            v442 = v441;

            MEMORY[0x1B2718AE0](v440, v442);

            MEMORY[0x1B2718AE0](39, 0xE100000000000000);
            v63 = *(&v587 + 1);
            v62 = v587;
            goto LABEL_56;
          }

LABEL_236:

          v331 = a1[3];
          v589 = a1[2];
          v590 = v331;
          v591 = *(a1 + 8);
          v332 = a1[1];
          v587 = *a1;
          v588 = v332;
          sub_1AFAF53E8(&v587);
          v259 = swift_allocObject();
          v260 = 10;
        }

        else
        {
          v570 = v18;
          if (sub_1AFAE6C5C(0xD000000000000012, 0x80000001AFF46840, v584, v18, v27, v17))
          {
            sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
            v199 = swift_allocObject();
            v200 = sub_1AF757508(v199, 2);
            *v201 = 258;
            if (sub_1AF449D1C(v200))
            {
              v202 = sub_1AFAEAF38(v200);
            }

            else
            {
              v202 = MEMORY[0x1E69E7CD0];
            }

            if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
            {
              v560 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
            }

            else
            {
              v560 = MEMORY[0x1E69E7CD0];
            }

            if (a2 == 4 || !sub_1AF702B44(a2, v202))
            {

              v305 = *(v7 + 16);
              v744 = *(v7 + 32);
              v306 = *(v7 + 64);
              v745 = *(v7 + 48);
              v746 = v306;
              v747 = *(v7 + 80);
              v743 = v305;
              *&v587 = 0x206E69746C697562;
              *(&v587 + 1) = 0xE900000000000027;
              v307 = MEMORY[0x1B27189E0](v584, v18, v818, v17);
              v309 = v308;

              MEMORY[0x1B2718AE0](v307, v309);

              MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF468A0);
              sub_1AFAF54D4();
              v310 = sub_1AFDFD788();
              v312 = v311;

              MEMORY[0x1B2718AE0](v310, v312);

              v63 = *(&v587 + 1);
              v62 = v587;
              goto LABEL_56;
            }

            v549 = sub_1AF449D1C(v578);
            if (v549)
            {
              v303 = 0;
              v304 = v560 + 56;
              while (1)
              {
                v317 = (v578 + 32 + 32 * v303);
                v318 = v317[1];
                if (!v318)
                {
                  break;
                }

                v319 = *v317;
                if (!*(v560 + 16))
                {

LABEL_235:

                  v326 = *(v7 + 16);
                  v734 = *(v7 + 32);
                  v327 = *(v7 + 64);
                  v735 = *(v7 + 48);
                  v736 = v327;
                  v737 = *(v7 + 80);
                  v733 = v326;
                  *&v587 = 0x746E656D75677261;
                  *(&v587 + 1) = 0xEA00000000002720;
                  MEMORY[0x1B2718AE0](v319, v318);

                  MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF468F0);
                  v328 = MEMORY[0x1B27189E0](v584, v570, v818, v577);
                  v330 = v329;

                  MEMORY[0x1B2718AE0](v328, v330);

                  MEMORY[0x1B2718AE0](39, 0xE100000000000000);
                  v63 = *(&v587 + 1);
                  v62 = v587;
                  goto LABEL_56;
                }

                sub_1AFDFF288();

                sub_1AFDFD038();
                v320 = sub_1AFDFF2F8();
                v321 = -1 << *(v560 + 32);
                v322 = v320 & ~v321;
                if (((*(v304 + ((v322 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v322) & 1) == 0)
                {
                  goto LABEL_235;
                }

                ++v303;
                v323 = ~v321;
                while (1)
                {
                  v324 = (*(v560 + 48) + 16 * v322);
                  v325 = *v324 == v319 && v318 == v324[1];
                  if (v325 || (sub_1AFDFEE28() & 1) != 0)
                  {
                    break;
                  }

                  v322 = (v322 + 1) & v323;
                  if (((*(v304 + ((v322 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v322) & 1) == 0)
                  {
                    goto LABEL_235;
                  }
                }

                if (v303 == v549)
                {
                  goto LABEL_263;
                }
              }

              v473 = *(v7 + 16);
              v739 = *(v7 + 32);
              v474 = *(v7 + 64);
              v740 = *(v7 + 48);
              v741 = v474;
              v742 = *(v7 + 80);
              v738 = v473;
              *&v587 = 0xD000000000000016;
              *(&v587 + 1) = 0x80000001AFF468D0;
              v475 = MEMORY[0x1B27189E0](v584, v570, v818, v577);
              v477 = v476;

              MEMORY[0x1B2718AE0](v475, v477);

              MEMORY[0x1B2718AE0](39, 0xE100000000000000);
              v63 = *(&v587 + 1);
              v62 = v587;
              goto LABEL_56;
            }

LABEL_263:

            v366 = a1[3];
            v589 = a1[2];
            v590 = v366;
            v591 = *(a1 + 8);
            v367 = a1[1];
            v587 = *a1;
            v588 = v367;
            sub_1AFAF53E8(&v587);
            v259 = swift_allocObject();
            v260 = 11;
          }

          else if (sub_1AFAE6C5C(0xD00000000000001ALL, 0x80000001AFF46860, v584, v18, v818, v17))
          {
            sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
            v239 = swift_allocObject();
            v240 = sub_1AF757508(v239, 2);
            *v241 = 258;
            if (sub_1AF449D1C(v240))
            {
              v242 = sub_1AFAEAF38(v240);
            }

            else
            {
              v242 = MEMORY[0x1E69E7CD0];
            }

            if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
            {
              v561 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
            }

            else
            {
              v561 = MEMORY[0x1E69E7CD0];
            }

            if (a2 == 4 || !sub_1AF702B44(a2, v242))
            {

              v340 = *(v7 + 16);
              v759 = *(v7 + 32);
              v341 = *(v7 + 64);
              v760 = *(v7 + 48);
              v761 = v341;
              v762 = *(v7 + 80);
              v758 = v340;
              *&v587 = 0x206E69746C697562;
              *(&v587 + 1) = 0xE900000000000027;
              v342 = MEMORY[0x1B27189E0](v584, v18, v818, v17);
              v344 = v343;

              MEMORY[0x1B2718AE0](v342, v344);

              MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF468A0);
              sub_1AFAF54D4();
              v345 = sub_1AFDFD788();
              v347 = v346;

              MEMORY[0x1B2718AE0](v345, v347);

              v63 = *(&v587 + 1);
              v62 = v587;
              goto LABEL_56;
            }

            v550 = sub_1AF449D1C(v578);
            if (v550)
            {
              v338 = 0;
              v339 = v561 + 56;
              while (1)
              {
                v352 = (v578 + 32 + 32 * v338);
                v353 = v352[1];
                if (!v353)
                {
                  break;
                }

                v354 = *v352;
                if (!*(v561 + 16))
                {

LABEL_262:

                  v361 = *(v7 + 16);
                  v749 = *(v7 + 32);
                  v362 = *(v7 + 64);
                  v750 = *(v7 + 48);
                  v751 = v362;
                  v752 = *(v7 + 80);
                  v748 = v361;
                  *&v587 = 0x746E656D75677261;
                  *(&v587 + 1) = 0xEA00000000002720;
                  MEMORY[0x1B2718AE0](v354, v353);

                  MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF468F0);
                  v363 = MEMORY[0x1B27189E0](v584, v570, v818, v577);
                  v365 = v364;

                  MEMORY[0x1B2718AE0](v363, v365);

                  MEMORY[0x1B2718AE0](39, 0xE100000000000000);
                  v63 = *(&v587 + 1);
                  v62 = v587;
                  goto LABEL_56;
                }

                sub_1AFDFF288();

                sub_1AFDFD038();
                v355 = sub_1AFDFF2F8();
                v356 = -1 << *(v561 + 32);
                v357 = v355 & ~v356;
                if (((*(v339 + ((v357 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v357) & 1) == 0)
                {
                  goto LABEL_262;
                }

                ++v338;
                v358 = ~v356;
                while (1)
                {
                  v359 = (*(v561 + 48) + 16 * v357);
                  v360 = *v359 == v354 && v353 == v359[1];
                  if (v360 || (sub_1AFDFEE28() & 1) != 0)
                  {
                    break;
                  }

                  v357 = (v357 + 1) & v358;
                  if (((*(v339 + ((v357 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v357) & 1) == 0)
                  {
                    goto LABEL_262;
                  }
                }

                if (v338 == v550)
                {
                  goto LABEL_290;
                }
              }

              v487 = *(v7 + 16);
              v754 = *(v7 + 32);
              v488 = *(v7 + 64);
              v755 = *(v7 + 48);
              v756 = v488;
              v757 = *(v7 + 80);
              v753 = v487;
              *&v587 = 0xD000000000000016;
              *(&v587 + 1) = 0x80000001AFF468D0;
              v489 = MEMORY[0x1B27189E0](v584, v570, v818, v577);
              v491 = v490;

              MEMORY[0x1B2718AE0](v489, v491);

              MEMORY[0x1B2718AE0](39, 0xE100000000000000);
              v63 = *(&v587 + 1);
              v62 = v587;
              goto LABEL_56;
            }

LABEL_290:

            v401 = a1[3];
            v589 = a1[2];
            v590 = v401;
            v591 = *(a1 + 8);
            v402 = a1[1];
            v587 = *a1;
            v588 = v402;
            sub_1AFAF53E8(&v587);
            v259 = swift_allocObject();
            v260 = 12;
          }

          else if (sub_1AFAE6C5C(0x6E5F6172656D6163, 0xEB00000000726165, v584, v18, v818, v17))
          {
            sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
            v278 = swift_allocObject();
            v279 = sub_1AF757508(v278, 2);
            *v280 = 258;
            if (sub_1AF449D1C(v279))
            {
              v281 = sub_1AFAEAF38(v279);
            }

            else
            {
              v281 = MEMORY[0x1E69E7CD0];
            }

            if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
            {
              v562 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
            }

            else
            {
              v562 = MEMORY[0x1E69E7CD0];
            }

            if (a2 == 4 || !sub_1AF702B44(a2, v281))
            {

              v375 = *(v7 + 16);
              v774 = *(v7 + 32);
              v376 = *(v7 + 64);
              v775 = *(v7 + 48);
              v776 = v376;
              v777 = *(v7 + 80);
              v773 = v375;
              *&v587 = 0x206E69746C697562;
              *(&v587 + 1) = 0xE900000000000027;
              v377 = MEMORY[0x1B27189E0](v584, v18, v818, v17);
              v379 = v378;

              MEMORY[0x1B2718AE0](v377, v379);

              MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF468A0);
              sub_1AFAF54D4();
              v380 = sub_1AFDFD788();
              v382 = v381;

              MEMORY[0x1B2718AE0](v380, v382);

              v63 = *(&v587 + 1);
              v62 = v587;
              goto LABEL_56;
            }

            v551 = sub_1AF449D1C(v578);
            if (v551)
            {
              v373 = 0;
              v374 = v562 + 56;
              while (1)
              {
                v387 = (v578 + 32 + 32 * v373);
                v388 = v387[1];
                if (!v388)
                {
                  break;
                }

                v389 = *v387;
                if (!*(v562 + 16))
                {

LABEL_289:

                  v396 = *(v7 + 16);
                  v764 = *(v7 + 32);
                  v397 = *(v7 + 64);
                  v765 = *(v7 + 48);
                  v766 = v397;
                  v767 = *(v7 + 80);
                  v763 = v396;
                  *&v587 = 0x746E656D75677261;
                  *(&v587 + 1) = 0xEA00000000002720;
                  MEMORY[0x1B2718AE0](v389, v388);

                  MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF468F0);
                  v398 = MEMORY[0x1B27189E0](v584, v570, v818, v577);
                  v400 = v399;

                  MEMORY[0x1B2718AE0](v398, v400);

                  MEMORY[0x1B2718AE0](39, 0xE100000000000000);
                  v63 = *(&v587 + 1);
                  v62 = v587;
                  goto LABEL_56;
                }

                sub_1AFDFF288();

                sub_1AFDFD038();
                v390 = sub_1AFDFF2F8();
                v391 = -1 << *(v562 + 32);
                v392 = v390 & ~v391;
                if (((*(v374 + ((v392 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v392) & 1) == 0)
                {
                  goto LABEL_289;
                }

                ++v373;
                v393 = ~v391;
                while (1)
                {
                  v394 = (*(v562 + 48) + 16 * v392);
                  v395 = *v394 == v389 && v388 == v394[1];
                  if (v395 || (sub_1AFDFEE28() & 1) != 0)
                  {
                    break;
                  }

                  v392 = (v392 + 1) & v393;
                  if (((*(v374 + ((v392 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v392) & 1) == 0)
                  {
                    goto LABEL_289;
                  }
                }

                if (v373 == v551)
                {
                  goto LABEL_317;
                }
              }

              v499 = *(v7 + 16);
              v769 = *(v7 + 32);
              v500 = *(v7 + 64);
              v770 = *(v7 + 48);
              v771 = v500;
              v772 = *(v7 + 80);
              v768 = v499;
              *&v587 = 0xD000000000000016;
              *(&v587 + 1) = 0x80000001AFF468D0;
              v501 = MEMORY[0x1B27189E0](v584, v570, v818, v577);
              v503 = v502;

              MEMORY[0x1B2718AE0](v501, v503);

              MEMORY[0x1B2718AE0](39, 0xE100000000000000);
              v63 = *(&v587 + 1);
              v62 = v587;
              goto LABEL_56;
            }

LABEL_317:

            v436 = a1[3];
            v589 = a1[2];
            v590 = v436;
            v591 = *(a1 + 8);
            v437 = a1[1];
            v587 = *a1;
            v588 = v437;
            sub_1AFAF53E8(&v587);
            v259 = swift_allocObject();
            v260 = 14;
          }

          else if (sub_1AFAE6C5C(0x665F6172656D6163, 0xEA00000000007261, v584, v18, v818, v17))
          {
            sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
            v313 = swift_allocObject();
            v314 = sub_1AF757508(v313, 2);
            *v315 = 258;
            if (sub_1AF449D1C(v314))
            {
              v316 = sub_1AFAEAF38(v314);
            }

            else
            {
              v316 = MEMORY[0x1E69E7CD0];
            }

            if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
            {
              v563 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
            }

            else
            {
              v563 = MEMORY[0x1E69E7CD0];
            }

            if (a2 == 4 || !sub_1AF702B44(a2, v316))
            {

              v410 = *(v7 + 16);
              v789 = *(v7 + 32);
              v411 = *(v7 + 64);
              v790 = *(v7 + 48);
              v791 = v411;
              v792 = *(v7 + 80);
              v788 = v410;
              *&v587 = 0x206E69746C697562;
              *(&v587 + 1) = 0xE900000000000027;
              v412 = MEMORY[0x1B27189E0](v584, v18, v818, v17);
              v414 = v413;

              MEMORY[0x1B2718AE0](v412, v414);

              MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF468A0);
              sub_1AFAF54D4();
              v415 = sub_1AFDFD788();
              v417 = v416;

              MEMORY[0x1B2718AE0](v415, v417);

              v63 = *(&v587 + 1);
              v62 = v587;
              goto LABEL_56;
            }

            v552 = sub_1AF449D1C(v578);
            if (v552)
            {
              v408 = 0;
              v409 = v563 + 56;
              while (1)
              {
                v422 = (v578 + 32 + 32 * v408);
                v423 = v422[1];
                if (!v423)
                {
                  break;
                }

                v424 = *v422;
                if (!*(v563 + 16))
                {

LABEL_316:

                  v431 = *(v7 + 16);
                  v779 = *(v7 + 32);
                  v432 = *(v7 + 64);
                  v780 = *(v7 + 48);
                  v781 = v432;
                  v782 = *(v7 + 80);
                  v778 = v431;
                  *&v587 = 0x746E656D75677261;
                  *(&v587 + 1) = 0xEA00000000002720;
                  MEMORY[0x1B2718AE0](v424, v423);

                  MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF468F0);
                  v433 = MEMORY[0x1B27189E0](v584, v570, v818, v577);
                  v435 = v434;

                  MEMORY[0x1B2718AE0](v433, v435);

                  MEMORY[0x1B2718AE0](39, 0xE100000000000000);
                  v63 = *(&v587 + 1);
                  v62 = v587;
                  goto LABEL_56;
                }

                sub_1AFDFF288();

                sub_1AFDFD038();
                v425 = sub_1AFDFF2F8();
                v426 = -1 << *(v563 + 32);
                v427 = v425 & ~v426;
                if (((*(v409 + ((v427 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v427) & 1) == 0)
                {
                  goto LABEL_316;
                }

                ++v408;
                v428 = ~v426;
                while (1)
                {
                  v429 = (*(v563 + 48) + 16 * v427);
                  v430 = *v429 == v424 && v423 == v429[1];
                  if (v430 || (sub_1AFDFEE28() & 1) != 0)
                  {
                    break;
                  }

                  v427 = (v427 + 1) & v428;
                  if (((*(v409 + ((v427 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v427) & 1) == 0)
                  {
                    goto LABEL_316;
                  }
                }

                if (v408 == v552)
                {
                  goto LABEL_344;
                }
              }

              v511 = *(v7 + 16);
              v784 = *(v7 + 32);
              v512 = *(v7 + 64);
              v785 = *(v7 + 48);
              v786 = v512;
              v787 = *(v7 + 80);
              v783 = v511;
              *&v587 = 0xD000000000000016;
              *(&v587 + 1) = 0x80000001AFF468D0;
              v513 = MEMORY[0x1B27189E0](v584, v570, v818, v577);
              v515 = v514;

              MEMORY[0x1B2718AE0](v513, v515);

              MEMORY[0x1B2718AE0](39, 0xE100000000000000);
              v63 = *(&v587 + 1);
              v62 = v587;
              goto LABEL_56;
            }

LABEL_344:

            v471 = a1[3];
            v589 = a1[2];
            v590 = v471;
            v591 = *(a1 + 8);
            v472 = a1[1];
            v587 = *a1;
            v588 = v472;
            sub_1AFAF53E8(&v587);
            v259 = swift_allocObject();
            v260 = 15;
          }

          else
          {
            if ((sub_1AFAE6C5C(0x695F6172656D6163, 0xEC0000007865646ELL, v584, v18, v818, v17) & 1) == 0)
            {
              if (sub_1AFAE6C5C(0x6F5F6C6174726F70, 0xEE00797469636170, v584, v18, v818, v17))
              {
                sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
                v383 = swift_allocObject();
                v384 = sub_1AF757508(v383, 2);
                *v385 = 258;
                if (sub_1AF449D1C(v384))
                {
                  v386 = sub_1AFAEAF38(v384);
                }

                else
                {
                  v386 = MEMORY[0x1E69E7CD0];
                }

                if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
                {
                  v478 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
                }

                else
                {
                  v478 = MEMORY[0x1E69E7CD0];
                }

                sub_1AFAE5FC0(0x13u, v478, v386, a2, v7, v584, v18, v818, &v600, v17, v578);
                v479 = a1[3];
                v589 = a1[2];
                v590 = v479;
                v591 = *(a1 + 8);
                v480 = a1[1];
                v587 = *a1;
                v588 = v480;
                sub_1AFAF53E8(&v587);

                v35 = v603;
                v585 = v602;
                v36 = v601;
                v37 = v600;
              }

              else if (sub_1AFAE6C5C(0x65636E6169646172, 0xE800000000000000, v584, v18, v818, v17))
              {
                sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
                v418 = swift_allocObject();
                v419 = sub_1AF757508(v418, 2);
                *v420 = 258;
                if (sub_1AF449D1C(v419))
                {
                  v421 = sub_1AFAEAF38(v419);
                }

                else
                {
                  v421 = MEMORY[0x1E69E7CD0];
                }

                if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
                {
                  v492 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
                }

                else
                {
                  v492 = MEMORY[0x1E69E7CD0];
                }

                sub_1AFAE5FC0(0x14u, v492, v421, a2, v7, v584, v18, v818, &v604, v17, v578);
                v493 = a1[3];
                v589 = a1[2];
                v590 = v493;
                v591 = *(a1 + 8);
                v494 = a1[1];
                v587 = *a1;
                v588 = v494;
                sub_1AFAF53E8(&v587);

                v35 = v607;
                v585 = v606;
                v36 = v605;
                v37 = v604;
              }

              else if (sub_1AFAE6C5C(0x6E61696461727269, 0xEA00000000006563, v584, v18, v818, v17))
              {
                sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
                v453 = swift_allocObject();
                v454 = sub_1AF757508(v453, 2);
                *v455 = 258;
                if (sub_1AF449D1C(v454))
                {
                  v456 = sub_1AFAEAF38(v454);
                }

                else
                {
                  v456 = MEMORY[0x1E69E7CD0];
                }

                if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
                {
                  v504 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
                }

                else
                {
                  v504 = MEMORY[0x1E69E7CD0];
                }

                sub_1AFAE5FC0(0x15u, v504, v456, a2, v7, v584, v18, v818, &v608, v17, v578);
                v505 = a1[3];
                v589 = a1[2];
                v590 = v505;
                v591 = *(a1 + 8);
                v506 = a1[1];
                v587 = *a1;
                v588 = v506;
                sub_1AFAF53E8(&v587);

                v35 = v611;
                v585 = v610;
                v36 = v609;
                v37 = v608;
              }

              else if (sub_1AFAE6C5C(0x65746E695F6C6269, 0xED0000797469736ELL, v584, v18, v818, v17))
              {
                sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
                v481 = swift_allocObject();
                v482 = sub_1AF757508(v481, 2);
                *v483 = 258;
                if (sub_1AF449D1C(v482))
                {
                  v484 = sub_1AFAEAF38(v482);
                }

                else
                {
                  v484 = MEMORY[0x1E69E7CD0];
                }

                if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
                {
                  v516 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
                }

                else
                {
                  v516 = MEMORY[0x1E69E7CD0];
                }

                sub_1AFAE5FC0(0x10u, v516, v484, a2, v7, v584, v18, v818, &v612, v17, v578);
                v517 = a1[3];
                v589 = a1[2];
                v590 = v517;
                v591 = *(a1 + 8);
                v518 = a1[1];
                v587 = *a1;
                v588 = v518;
                sub_1AFAF53E8(&v587);

                v35 = v615;
                v585 = v614;
                v36 = v613;
                v37 = v612;
              }

              else if (sub_1AFAE6C5C(0x61746F725F6C6269, 0xEC0000006E6F6974, v584, v18, v818, v17))
              {
                sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
                v495 = swift_allocObject();
                v496 = sub_1AF757508(v495, 2);
                *v497 = 258;
                if (sub_1AF449D1C(v496))
                {
                  v498 = sub_1AFAEAF38(v496);
                }

                else
                {
                  v498 = MEMORY[0x1E69E7CD0];
                }

                if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
                {
                  v528 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
                }

                else
                {
                  v528 = MEMORY[0x1E69E7CD0];
                }

                sub_1AFAE5FC0(0x11u, v528, v498, a2, v7, v584, v18, v818, &v616, v17, v578);
                v529 = a1[3];
                v589 = a1[2];
                v590 = v529;
                v591 = *(a1 + 8);
                v530 = a1[1];
                v587 = *a1;
                v588 = v530;
                sub_1AFAF53E8(&v587);

                v35 = v619;
                v585 = v618;
                v36 = v617;
                v37 = v616;
              }

              else if (sub_1AFAE6C5C(0x74756C5F66647262, 0xE800000000000000, v584, v18, v818, v17))
              {
                sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
                v507 = swift_allocObject();
                v508 = sub_1AF757508(v507, 2);
                *v509 = 258;
                if (sub_1AF449D1C(v508))
                {
                  v510 = sub_1AFAEAF38(v508);
                }

                else
                {
                  v510 = MEMORY[0x1E69E7CD0];
                }

                if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
                {
                  v540 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
                }

                else
                {
                  v540 = MEMORY[0x1E69E7CD0];
                }

                sub_1AFAE5FC0(0x16u, v540, v510, a2, v7, v584, v18, v818, &v620, v17, v578);
                v541 = a1[3];
                v589 = a1[2];
                v590 = v541;
                v591 = *(a1 + 8);
                v542 = a1[1];
                v587 = *a1;
                v588 = v542;
                sub_1AFAF53E8(&v587);

                v35 = v623;
                v585 = v622;
                v36 = v621;
                v37 = v620;
              }

              else
              {
                if ((sub_1AFAE6C5C(0xD000000000000017, 0x80000001AFF3A740, v584, v18, v818, v17) & 1) == 0)
                {

                  v531 = *(v7 + 16);
                  v809 = *(v7 + 32);
                  v532 = *(v7 + 64);
                  v810 = *(v7 + 48);
                  v811 = v532;
                  v812 = *(v7 + 80);
                  v808 = v531;
                  *&v587 = 0xD000000000000017;
                  *(&v587 + 1) = 0x80000001AFF46880;
                  v533 = MEMORY[0x1B27189E0](v584, v18, v818, v17);
                  v535 = v534;

                  MEMORY[0x1B2718AE0](v533, v535);

                  MEMORY[0x1B2718AE0](39, 0xE100000000000000);
                  v536 = sub_1AFAE5C18(v587, *(&v587 + 1));
                  v538 = v537;

                  sub_1AFAF5454();
                  swift_allocError();
                  *v539 = v536;
                  v539[1] = v538;
                  swift_willThrow();
                }

                sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
                v519 = swift_allocObject();
                v520 = sub_1AF757508(v519, 1);
                *v521 = 1;
                if (sub_1AF449D1C(v520))
                {
                  v522 = sub_1AFAEAF38(v520);
                }

                else
                {
                  v522 = MEMORY[0x1E69E7CD0];
                }

                if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
                {
                  v543 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
                }

                else
                {
                  v543 = MEMORY[0x1E69E7CD0];
                }

                sub_1AFAE5FC0(0x12u, v543, v522, a2, v7, v584, v18, v818, &v624, v17, v578);
                v544 = a1[3];
                v589 = a1[2];
                v590 = v544;
                v591 = *(a1 + 8);
                v545 = a1[1];
                v587 = *a1;
                v588 = v545;
                sub_1AFAF53E8(&v587);

                v35 = v627;
                v585 = v626;
                v36 = v625;
                v37 = v624;
              }

              goto LABEL_132;
            }

            sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
            v348 = swift_allocObject();
            v349 = sub_1AF757508(v348, 2);
            *v350 = 258;
            if (sub_1AF449D1C(v349))
            {
              v351 = sub_1AFAEAF38(v349);
            }

            else
            {
              v351 = MEMORY[0x1E69E7CD0];
            }

            if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
            {
              v564 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
            }

            else
            {
              v564 = MEMORY[0x1E69E7CD0];
            }

            if (a2 == 4 || !sub_1AF702B44(a2, v351))
            {

              v445 = *(v7 + 16);
              v804 = *(v7 + 32);
              v446 = *(v7 + 64);
              v805 = *(v7 + 48);
              v806 = v446;
              v807 = *(v7 + 80);
              v803 = v445;
              *&v587 = 0x206E69746C697562;
              *(&v587 + 1) = 0xE900000000000027;
              v447 = MEMORY[0x1B27189E0](v584, v18, v818, v17);
              v449 = v448;

              MEMORY[0x1B2718AE0](v447, v449);

              MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF468A0);
              sub_1AFAF54D4();
              v450 = sub_1AFDFD788();
              v452 = v451;

              MEMORY[0x1B2718AE0](v450, v452);

              v63 = *(&v587 + 1);
              v62 = v587;
              goto LABEL_56;
            }

            v553 = sub_1AF449D1C(v578);
            if (v553)
            {
              v443 = 0;
              v444 = v564 + 56;
              while (1)
              {
                v457 = (v578 + 32 + 32 * v443);
                v458 = v457[1];
                if (!v458)
                {
                  break;
                }

                v459 = *v457;
                if (!*(v564 + 16))
                {

LABEL_343:

                  v466 = *(v7 + 16);
                  v794 = *(v7 + 32);
                  v467 = *(v7 + 64);
                  v795 = *(v7 + 48);
                  v796 = v467;
                  v797 = *(v7 + 80);
                  v793 = v466;
                  *&v587 = 0x746E656D75677261;
                  *(&v587 + 1) = 0xEA00000000002720;
                  MEMORY[0x1B2718AE0](v459, v458);

                  MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF468F0);
                  v468 = MEMORY[0x1B27189E0](v584, v570, v818, v577);
                  v470 = v469;

                  MEMORY[0x1B2718AE0](v468, v470);

                  MEMORY[0x1B2718AE0](39, 0xE100000000000000);
                  v63 = *(&v587 + 1);
                  v62 = v587;
                  goto LABEL_56;
                }

                sub_1AFDFF288();

                sub_1AFDFD038();
                v460 = sub_1AFDFF2F8();
                v461 = -1 << *(v564 + 32);
                v462 = v460 & ~v461;
                if (((*(v444 + ((v462 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v462) & 1) == 0)
                {
                  goto LABEL_343;
                }

                ++v443;
                v463 = ~v461;
                while (1)
                {
                  v464 = (*(v564 + 48) + 16 * v462);
                  v465 = *v464 == v459 && v458 == v464[1];
                  if (v465 || (sub_1AFDFEE28() & 1) != 0)
                  {
                    break;
                  }

                  v462 = (v462 + 1) & v463;
                  if (((*(v444 + ((v462 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v462) & 1) == 0)
                  {
                    goto LABEL_343;
                  }
                }

                if (v443 == v553)
                {
                  goto LABEL_355;
                }
              }

              v523 = *(v7 + 16);
              v799 = *(v7 + 32);
              v524 = *(v7 + 64);
              v800 = *(v7 + 48);
              v801 = v524;
              v802 = *(v7 + 80);
              v798 = v523;
              *&v587 = 0xD000000000000016;
              *(&v587 + 1) = 0x80000001AFF468D0;
              v525 = MEMORY[0x1B27189E0](v584, v570, v818, v577);
              v527 = v526;

              MEMORY[0x1B2718AE0](v525, v527);

              MEMORY[0x1B2718AE0](39, 0xE100000000000000);
              v63 = *(&v587 + 1);
              v62 = v587;
              goto LABEL_56;
            }

LABEL_355:

            v485 = a1[3];
            v589 = a1[2];
            v590 = v485;
            v591 = *(a1 + 8);
            v486 = a1[1];
            v587 = *a1;
            v588 = v486;
            sub_1AFAF53E8(&v587);
            v259 = swift_allocObject();
            v260 = 13;
          }
        }

        *(v259 + 16) = v260;
        *(v259 + 24) = 0;
        *(v259 + 32) = 0;
        *(v259 + 40) = 0;
        v37 = v259 | 0x7000000000000000;
        *(v259 + 48) = 5;
        v36 = 1;
        v35 = 1;
        v585 = xmmword_1AFE4C460;
        v38 = v583;
        goto LABEL_133;
      }

      v567 = v18;
      sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
      v64 = swift_allocObject();
      v65 = sub_1AF757508(v64, 2);
      *v66 = 258;
      if (sub_1AF449D1C(v65))
      {
        v67 = sub_1AFAEAF38(v65);
      }

      else
      {
        v67 = MEMORY[0x1E69E7CD0];
      }

      if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
      {
        v148 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
      }

      else
      {
        v148 = MEMORY[0x1E69E7CD0];
      }

      if (a2 == 4 || !sub_1AF702B44(a2, v67))
      {

        v155 = *(v7 + 16);
        v684 = *(v7 + 32);
        v156 = *(v7 + 64);
        v685 = *(v7 + 48);
        v686 = v156;
        v687 = *(v7 + 80);
        v683 = v155;
        *&v587 = 0x206E69746C697562;
        *(&v587 + 1) = 0xE900000000000027;
        v157 = MEMORY[0x1B27189E0](v584, v567, v27, v17);
        v159 = v158;

        MEMORY[0x1B2718AE0](v157, v159);

        MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF468A0);
        sub_1AFAF54D4();
        v160 = sub_1AFDFD788();
        v162 = v161;

        MEMORY[0x1B2718AE0](v160, v162);

        v63 = *(&v587 + 1);
        v62 = v587;
        goto LABEL_56;
      }

      v546 = sub_1AF449D1C(v578);
      if (v546)
      {
        v153 = 0;
        v154 = v148 + 56;
        v582 = v148;
        while (1)
        {
          v167 = (v578 + 32 + 32 * v153);
          v168 = v167[1];
          if (!v168)
          {
            break;
          }

          v169 = *v167;
          if (!*(v148 + 16))
          {

LABEL_125:

            v176 = *(v7 + 16);
            v674 = *(v7 + 32);
            v177 = *(v7 + 64);
            v675 = *(v7 + 48);
            v676 = v177;
            v677 = *(v7 + 80);
            v673 = v176;
            *&v587 = 0x746E656D75677261;
            *(&v587 + 1) = 0xEA00000000002720;
            MEMORY[0x1B2718AE0](v169, v168);

            MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF468F0);
            v178 = MEMORY[0x1B27189E0](v584, v567, v818, v577);
            v180 = v179;

            MEMORY[0x1B2718AE0](v178, v180);

            MEMORY[0x1B2718AE0](39, 0xE100000000000000);
            v63 = *(&v587 + 1);
            v62 = v587;
            goto LABEL_56;
          }

          sub_1AFDFF288();

          sub_1AFDFD038();
          v170 = sub_1AFDFF2F8();
          v171 = -1 << *(v148 + 32);
          v172 = v170 & ~v171;
          if (((*(v154 + ((v172 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v172) & 1) == 0)
          {
            goto LABEL_125;
          }

          ++v153;
          v173 = ~v171;
          while (1)
          {
            v174 = (*(v582 + 48) + 16 * v172);
            v175 = *v174 == v169 && v168 == v174[1];
            if (v175 || (sub_1AFDFEE28() & 1) != 0)
            {
              break;
            }

            v172 = (v172 + 1) & v173;
            if (((*(v154 + ((v172 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v172) & 1) == 0)
            {
              goto LABEL_125;
            }
          }

          v148 = v582;
          if (v153 == v546)
          {
            goto LABEL_160;
          }
        }

        v333 = *(v7 + 16);
        v679 = *(v7 + 32);
        v334 = *(v7 + 64);
        v680 = *(v7 + 48);
        v681 = v334;
        v682 = *(v7 + 80);
        v678 = v333;
        *&v587 = 0xD000000000000016;
        *(&v587 + 1) = 0x80000001AFF468D0;
        v335 = MEMORY[0x1B27189E0](v584, v567, v818, v577);
        v337 = v336;

        MEMORY[0x1B2718AE0](v335, v337);

        MEMORY[0x1B2718AE0](39, 0xE100000000000000);
        v63 = *(&v587 + 1);
        v62 = v587;
        goto LABEL_56;
      }

LABEL_160:

      v227 = a1[3];
      v589 = a1[2];
      v590 = v227;
      v591 = *(a1 + 8);
      v228 = a1[1];
      v587 = *a1;
      v588 = v228;
      sub_1AFAF53E8(&v587);
      v151 = swift_allocObject();
      v152 = 8;
    }

    *(v151 + 16) = v152;
    goto LABEL_130;
  }

  sub_1AFAE6460(0, MEMORY[0x1E69E7CD0], v578, v7, v584, v18, v27, v17, &v592);
  v33 = a1[3];
  v589 = a1[2];
  v590 = v33;
  v591 = *(a1 + 8);
  v34 = a1[1];
  v587 = *a1;
  v588 = v34;
  sub_1AFAF53E8(&v587);

  v35 = v595;
  v585 = v594;
  v36 = v593;
  v37 = v592;
  v38 = v583;
LABEL_133:
  v185 = *(v7 + 64);
  v589 = *(v7 + 48);
  v590 = v185;
  v591 = *(v7 + 80);
  v186 = *(v7 + 32);
  v587 = *(v7 + 16);
  v588 = v186;
  sub_1AFAF541C(&v587, v586);

  v187 = v590;
  a1[2] = v589;
  a1[3] = v187;
  *(a1 + 8) = v591;
  v188 = v588;
  *a1 = v587;
  a1[1] = v188;
  *v38 = v37;
  *(v38 + 8) = v36;
  *(v38 + 16) = v585;
  *(v38 + 32) = v35;
  return result;
}

uint64_t sub_1AFAEFCA4(__int128 *a1)
{
  v3 = a1[3];
  v61 = a1[2];
  v62 = v3;
  v63 = *(a1 + 8);
  v4 = a1[1];
  v60[0] = *a1;
  v60[1] = v4;
  v52 = v61;
  v53 = v3;
  v54 = v63;
  v50 = v60[0];
  v51 = v4;
  sub_1AFAF541C(v60, &v45);
  v5 = &v50;
  sub_1AFAE59B0(2u);
  if (!v1)
  {

    v6 = sub_1AFAE59B0(0xEu);
    v11 = v6;
    v12 = v7;
    v13 = v8;
    v14 = v9;
    if (sub_1AFAE6C5C(0x6E6F697469736F70, 0xE800000000000000, v6, v7, v8, v9))
    {
      v15 = a1[3];
      v47 = a1[2];
      v48 = v15;
      v49 = *(a1 + 8);
      v16 = a1[1];
      v45 = *a1;
      v46 = v16;
      sub_1AFAF53E8(&v45);

      v5 = 0;
LABEL_21:
      v42 = v52;
      v43 = v53;
      v44 = v54;
      v40 = v50;
      v41 = v51;
      v47 = v52;
      v48 = v53;
      v49 = v54;
      v45 = v50;
      v46 = v51;
      sub_1AFAF541C(&v40, v39);
      sub_1AFAF53E8(&v45);
      v31 = v43;
      a1[2] = v42;
      a1[3] = v31;
      *(a1 + 8) = v44;
      v32 = v41;
      *a1 = v40;
      a1[1] = v32;
      return v5;
    }

    if (sub_1AFAE6C5C(0x726F6C6F63, 0xE500000000000000, v11, v12, v13, v14))
    {
      v17 = a1[3];
      v47 = a1[2];
      v48 = v17;
      v49 = *(a1 + 8);
      v18 = a1[1];
      v45 = *a1;
      v46 = v18;
      sub_1AFAF53E8(&v45);

      v5 = 5;
      goto LABEL_21;
    }

    if (sub_1AFAE6C5C(0x6C616D726F6ELL, 0xE600000000000000, v11, v12, v13, v14))
    {
      v19 = a1[3];
      v47 = a1[2];
      v48 = v19;
      v49 = *(a1 + 8);
      v20 = a1[1];
      v45 = *a1;
      v46 = v20;
      sub_1AFAF53E8(&v45);

      v5 = 6;
      goto LABEL_21;
    }

    if (sub_1AFAE6C5C(0x746E65676E6174, 0xE700000000000000, v11, v12, v13, v14))
    {
      v21 = a1[3];
      v47 = a1[2];
      v48 = v21;
      v49 = *(a1 + 8);
      v22 = a1[1];
      v45 = *a1;
      v46 = v22;
      sub_1AFAF53E8(&v45);

      v5 = 7;
      goto LABEL_21;
    }

    if (sub_1AFAE6C5C(3176053, 0xE300000000000000, v11, v12, v13, v14))
    {
      v23 = a1[3];
      v47 = a1[2];
      v48 = v23;
      v49 = *(a1 + 8);
      v24 = a1[1];
      v45 = *a1;
      v46 = v24;
      sub_1AFAF53E8(&v45);

      v5 = 1;
      goto LABEL_21;
    }

    if (sub_1AFAE6C5C(3241589, 0xE300000000000000, v11, v12, v13, v14))
    {
      v25 = a1[3];
      v47 = a1[2];
      v48 = v25;
      v49 = *(a1 + 8);
      v26 = a1[1];
      v45 = *a1;
      v46 = v26;
      sub_1AFAF53E8(&v45);

      v5 = 2;
      goto LABEL_21;
    }

    if (sub_1AFAE6C5C(3307125, 0xE300000000000000, v11, v12, v13, v14))
    {
      v27 = a1[3];
      v47 = a1[2];
      v48 = v27;
      v49 = *(a1 + 8);
      v28 = a1[1];
      v45 = *a1;
      v46 = v28;
      sub_1AFAF53E8(&v45);

      v5 = 3;
      goto LABEL_21;
    }

    if (sub_1AFAE6C5C(3372661, 0xE300000000000000, v11, v12, v13, v14))
    {
      v29 = a1[3];
      v47 = a1[2];
      v48 = v29;
      v49 = *(a1 + 8);
      v30 = a1[1];
      v45 = *a1;
      v46 = v30;
      sub_1AFAF53E8(&v45);

      v5 = 4;
      goto LABEL_21;
    }

    v57 = v52;
    v58 = v53;
    v59 = v54;
    v55 = v50;
    v56 = v51;
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v45 = 0xD000000000000011;
    *(&v45 + 1) = 0x80000001AFF46A10;
    v33 = MEMORY[0x1B27189E0](v11, v12, v13, v14);
    v35 = v34;

    MEMORY[0x1B2718AE0](v33, v35);

    MEMORY[0x1B2718AE0](0x65762420726F6620, 0xEC00000078657472);
    v5 = sub_1AFAE5C18(v45, *(&v45 + 1));
    v37 = v36;

    sub_1AFAF5454();
    swift_allocError();
    *v38 = v5;
    v38[1] = v37;
    swift_willThrow();
  }

  v47 = v52;
  v48 = v53;
  v49 = v54;
  v45 = v50;
  v46 = v51;
  sub_1AFAF53E8(&v45);
  return v5;
}

unint64_t sub_1AFAF0198(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1718378856 && a2 == 0xE400000000000000;
  if (v3 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0xC000000000000050;
  }

  if (a1 == 0x32666C6168 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    v6 = swift_allocObject();
    v7 = xmmword_1AFE85140;
LABEL_11:
    *(v6 + 16) = v7;
    return v6 | 0x2000000000000000;
  }

  if (a1 == 0x33666C6168 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    v6 = swift_allocObject();
    v7 = xmmword_1AFE85150;
    goto LABEL_11;
  }

  if (a1 == 0x34666C6168 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    v6 = swift_allocObject();
    v7 = xmmword_1AFE85160;
    goto LABEL_11;
  }

  if (a1 == 0x74616F6C66 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0xC000000000000058;
  }

  if (a1 == 0x3274616F6C66 && a2 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    v6 = swift_allocObject();
    v7 = xmmword_1AFE4C420;
    goto LABEL_11;
  }

  if (a1 == 0x3374616F6C66 && a2 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    v6 = swift_allocObject();
    v7 = xmmword_1AFE4C430;
    goto LABEL_11;
  }

  if (a1 == 0x3474616F6C66 && a2 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    v6 = swift_allocObject();
    v7 = xmmword_1AFE4C440;
    goto LABEL_11;
  }

  if (a1 == 0x33783374616F6C66 && a2 == 0xE800000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = swift_allocObject();
    *(v8 + 16) = 3;
    v9 = swift_allocObject();
    v10 = xmmword_1AFE4C430;
LABEL_41:
    *(v9 + 16) = v10;
    *(v8 + 24) = v9 | 0x2000000000000000;
    return v8 | 0x2000000000000000;
  }

  if (a1 == 0x34783474616F6C66 && a2 == 0xE800000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = swift_allocObject();
    *(v8 + 16) = 4;
    v9 = swift_allocObject();
    v10 = xmmword_1AFE4C440;
    goto LABEL_41;
  }

  if (a1 == 7630441 && a2 == 0xE300000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0xC000000000000030;
  }

  else
  {
    sub_1AF770DF0();
    sub_1AF770E44();
    if ((sub_1AFDFCD68() & 1) != 0 || (sub_1AFDFCD68()) && (, v11 = sub_1AF910080(), v11 != 7))
    {
      v12 = v11;
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = a1;
      *(v13 + 32) = a2;
      return v13 | 0xA000000000000000;
    }

    else
    {

      return 0xF000000000000007;
    }
  }
}

uint64_t sub_1AFAF0708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1ED722B48 != -1)
  {
    swift_once();
  }

  result = sub_1AF70265C(a2, a3, qword_1ED73B388);
  if (result)
  {
    sub_1AFDFE218();

    MEMORY[0x1B2718AE0](a2, a3);
    MEMORY[0x1B2718AE0](0xD000000000000025, 0x80000001AFF46AD0);
    v6 = sub_1AFAE5C18(39, 0xE100000000000000);
    v8 = v7;

    sub_1AFAF5454();
    swift_allocError();
    *v9 = v6;
    v9[1] = v8;
    return swift_willThrow();
  }

  return result;
}

__int128 *sub_1AFAF0834(__int128 *a1)
{
  v3 = a1[1];
  v77[0] = *a1;
  v77[1] = v3;
  v4 = a1[3];
  v78 = a1[2];
  v79 = v4;
  v80 = *(a1 + 8);
  v66 = v77[0];
  v67 = v3;
  *v68 = v78;
  *&v68[16] = v4;
  v69 = v80;
  if (v3 != *(&v3 + 1) >> 1)
  {
    v5 = *(&v77[0] + 1) + 40 * v3;
    if (*v5 == 2)
    {
      v54 = *(v5 + 8);
      v7 = *(v5 + 24);
      v6 = *(v5 + 32);
      v66 = v77[0];
      *&v67 = v3 + 1;
      *(&v67 + 1) = *(&v3 + 1);
      sub_1AFAF541C(v77, &v61);

      *&v68[8] = v54;
      *v68 = 2;
      *&v68[24] = v7;
      v69 = v6;
      v8 = &v66;
      v9 = sub_1AFAE59B0(0xEu);
      if (v1)
      {
LABEL_29:
        v63 = *v68;
        v64 = *&v68[16];
        v65 = v69;
        v61 = v66;
        v62 = v67;
        sub_1AFAF53E8(&v61);
        return v8;
      }

      v13 = v9;
      v14 = v10;
      v15 = v11;
      v16 = v12;
      if (sub_1AFAE6C5C(0x6E6F697469736F70, 0xE800000000000000, v9, v10, v11, v12) & 1) != 0 || (sub_1AFAE6C5C(0xD000000000000010, 0x80000001AFF46A80, v13, v14, v15, v16) & 1) != 0 || (sub_1AFAE6C5C(3176053, 0xE300000000000000, v13, v14, v15, v16) & 1) != 0 || (sub_1AFAE6C5C(3241589, 0xE300000000000000, v13, v14, v15, v16) & 1) != 0 || (sub_1AFAE6C5C(3307125, 0xE300000000000000, v13, v14, v15, v16) & 1) != 0 || (sub_1AFAE6C5C(3372661, 0xE300000000000000, v13, v14, v15, v16) & 1) != 0 || (sub_1AFAE6C5C(0x726F6C6F63, 0xE500000000000000, v13, v14, v15, v16) & 1) != 0 || (sub_1AFAE6C5C(0x6C616D726F6ELL, 0xE600000000000000, v13, v14, v15, v16) & 1) != 0 || (sub_1AFAE6C5C(0x746E65676E6174, 0xE700000000000000, v13, v14, v15, v16))
      {
        v47 = a1[3];
        v63 = a1[2];
        v64 = v47;
        v65 = *(a1 + 8);
        v48 = a1[1];
        v61 = *a1;
        v62 = v48;
        sub_1AFAF53E8(&v61);

        v8 = 0;
        goto LABEL_43;
      }

      v74 = *v68;
      v75 = *&v68[16];
      v76 = v69;
      v72 = v66;
      v73 = v67;
      *&v61 = 0;
      *(&v61 + 1) = 0xE000000000000000;
      sub_1AFDFE218();

      *&v61 = 0xD000000000000021;
      *(&v61 + 1) = 0x80000001AFF46AA0;
      v51 = MEMORY[0x1B27189E0](v13, v14, v15, v16);
      v53 = v52;

      MEMORY[0x1B2718AE0](v51, v53);

      MEMORY[0x1B2718AE0](39, 0xE100000000000000);
      v39 = *(&v61 + 1);
      v38 = v61;
      goto LABEL_26;
    }
  }

  sub_1AFAF541C(v77, &v61);
  v8 = sub_1AFAE9034(&unk_1F2500C48);
  sub_1AF585778(&unk_1F2500C68);
  v17 = sub_1AFAE9D30(&v66, 0, v8);
  if (!v1)
  {
    v18 = v17;

    if (v67 == *(&v67 + 1) >> 1 || (v19 = (*(&v66 + 1) + 40 * v67), v20 = *v19, v22 = v19[1], v21 = v19[2], v23 = v19[3], v24 = v19[4], , v20 != 14))
    {

      v30 = *(v18 + 2);
      if (!v30)
      {
LABEL_27:

        v8 = sub_1AFAE5C18(0xD000000000000026, 0x80000001AFF46A50);
        v41 = v42;
        goto LABEL_28;
      }
    }

    else
    {
      v25 = MEMORY[0x1B27189E0](v22, v21, v23, v24);
      v27 = v26;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1AF427218(0, *(v18 + 2) + 1, 1, v18);
      }

      v29 = *(v18 + 2);
      v28 = *(v18 + 3);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v18 = sub_1AF427218(v28 > 1, v29 + 1, 1, v18);
      }

      *(v18 + 2) = v30;
      v31 = &v18[32 * v29];
      *(v31 + 2) = xmmword_1AFE99BE0;
      *(v31 + 6) = v25;
      *(v31 + 7) = v27;
    }

    v32 = (v18 + 56);
    while (1)
    {
      v33 = *(v32 - 2);
      if (v33)
      {
        v8 = *(v32 - 1);
        v34 = *v32;
        v35 = *(v32 - 3) == 1701667182 && v33 == 0xE400000000000000;
        if (v35 || (sub_1AFDFEE28() & 1) != 0)
        {
          break;
        }
      }

      v32 += 4;
      if (!--v30)
      {
        goto LABEL_27;
      }
    }

    v37 = *(v18 + 6);
    v36 = *(v18 + 7);

    swift_bridgeObjectRetain_n();

    if ((~sub_1AFAF0198(v37, v36) & 0xF000000000000007) != 0)
    {

      v70[2] = *v68;
      v70[3] = *&v68[16];
      v71 = v69;
      v70[0] = v66;
      v70[1] = v67;
      sub_1AFAF541C(v70, &v61);
      sub_1AFAF0708(v70, v8, v34);
      v45 = a1[3];
      v63 = a1[2];
      v64 = v45;
      v65 = *(a1 + 8);
      v46 = a1[1];
      v61 = *a1;
      v62 = v46;
      sub_1AFAF53E8(&v61);
      sub_1AFAF53E8(v70);
LABEL_43:
      v58 = *v68;
      v59 = *&v68[16];
      v60 = v69;
      v56 = v66;
      v57 = v67;
      v63 = *v68;
      v64 = *&v68[16];
      v65 = v69;
      v61 = v66;
      v62 = v67;
      sub_1AFAF541C(&v56, v55);
      sub_1AFAF53E8(&v61);
      v49 = v59;
      a1[2] = v58;
      a1[3] = v49;
      *(a1 + 8) = v60;
      v50 = v57;
      *a1 = v56;
      a1[1] = v50;
      return v8;
    }

    *&v61 = 0;
    *(&v61 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v61 = 0xD000000000000014;
    *(&v61 + 1) = 0x80000001AFF46A30;
    MEMORY[0x1B2718AE0](v37, v36);

    MEMORY[0x1B2718AE0](39, 0xE100000000000000);
    v39 = *(&v61 + 1);
    v38 = v61;
LABEL_26:
    v8 = sub_1AFAE5C18(v38, v39);
    v41 = v40;

LABEL_28:
    sub_1AFAF5454();
    swift_allocError();
    *v43 = v8;
    v43[1] = v41;
    swift_willThrow();
    goto LABEL_29;
  }

  v63 = *v68;
  v64 = *&v68[16];
  v65 = v69;
  v61 = v66;
  v62 = v67;
  sub_1AFAF53E8(&v61);

  return v8;
}

uint64_t sub_1AFAF1160(__int128 *a1)
{
  v3 = a1[3];
  v57 = a1[2];
  v58 = v3;
  v59 = *(a1 + 8);
  v4 = a1[1];
  v56[0] = *a1;
  v56[1] = v4;
  v48 = v57;
  v49 = v3;
  v50 = v59;
  v46 = v56[0];
  v47 = v4;
  sub_1AFAF541C(v56, &v41);
  v5 = &v46;
  sub_1AFAE59B0(2u);
  if (!v1)
  {

    v6 = sub_1AFAE59B0(0xEu);
    v11 = v6;
    v12 = v7;
    v13 = v8;
    v14 = v9;
    if (sub_1AFAE6C5C(0x726F6C6F63, 0xE500000000000000, v6, v7, v8, v9))
    {
      v15 = a1[3];
      v43 = a1[2];
      v44 = v15;
      v45 = *(a1 + 8);
      v16 = a1[1];
      v41 = *a1;
      v42 = v16;
      sub_1AFAF53E8(&v41);

      v5 = 0;
LABEL_17:
      v38 = v48;
      v39 = v49;
      v40 = v50;
      v36 = v46;
      v37 = v47;
      v43 = v48;
      v44 = v49;
      v45 = v50;
      v41 = v46;
      v42 = v47;
      sub_1AFAF541C(&v36, v35);
      sub_1AFAF53E8(&v41);
      v27 = v39;
      a1[2] = v38;
      a1[3] = v27;
      *(a1 + 8) = v40;
      v28 = v37;
      *a1 = v36;
      a1[1] = v28;
      return v5;
    }

    if (sub_1AFAE6C5C(0xD000000000000010, 0x80000001AFF46A80, v11, v12, v13, v14))
    {
      v17 = a1[3];
      v43 = a1[2];
      v44 = v17;
      v45 = *(a1 + 8);
      v18 = a1[1];
      v41 = *a1;
      v42 = v18;
      sub_1AFAF53E8(&v41);

      v5 = 1;
      goto LABEL_17;
    }

    if (sub_1AFAE6C5C(0x645F7261656E696CLL, 0xEC00000068747065, v11, v12, v13, v14))
    {
      v19 = a1[3];
      v43 = a1[2];
      v44 = v19;
      v45 = *(a1 + 8);
      v20 = a1[1];
      v41 = *a1;
      v42 = v20;
      sub_1AFAF53E8(&v41);

      v5 = 2;
      goto LABEL_17;
    }

    if (sub_1AFAE6C5C(0x61665F746E6F7266, 0xEC000000676E6963, v11, v12, v13, v14))
    {
      v21 = a1[3];
      v43 = a1[2];
      v44 = v21;
      v45 = *(a1 + 8);
      v22 = a1[1];
      v41 = *a1;
      v42 = v22;
      sub_1AFAF53E8(&v41);

      v5 = 3;
      goto LABEL_17;
    }

    if (sub_1AFAE6C5C(0xD000000000000017, 0x80000001AFF46B00, v11, v12, v13, v14))
    {
      v23 = a1[3];
      v43 = a1[2];
      v44 = v23;
      v45 = *(a1 + 8);
      v24 = a1[1];
      v41 = *a1;
      v42 = v24;
      sub_1AFAF53E8(&v41);

      v5 = 4;
      goto LABEL_17;
    }

    if (sub_1AFAE6C5C(0x766974696D697270, 0xEC00000064695F65, v11, v12, v13, v14))
    {
      v25 = a1[3];
      v43 = a1[2];
      v44 = v25;
      v45 = *(a1 + 8);
      v26 = a1[1];
      v41 = *a1;
      v42 = v26;
      sub_1AFAF53E8(&v41);

      v5 = 5;
      goto LABEL_17;
    }

    v53 = v48;
    v54 = v49;
    v55 = v50;
    v51 = v46;
    v52 = v47;
    *&v41 = 0;
    *(&v41 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v41 = 0xD000000000000011;
    *(&v41 + 1) = 0x80000001AFF46A10;
    v29 = MEMORY[0x1B27189E0](v11, v12, v13, v14);
    v31 = v30;

    MEMORY[0x1B2718AE0](v29, v31);

    MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF46B20);
    v5 = sub_1AFAE5C18(v41, *(&v41 + 1));
    v33 = v32;

    sub_1AFAF5454();
    swift_allocError();
    *v34 = v5;
    v34[1] = v33;
    swift_willThrow();
  }

  v43 = v48;
  v44 = v49;
  v45 = v50;
  v41 = v46;
  v42 = v47;
  sub_1AFAF53E8(&v41);
  return v5;
}

uint64_t sub_1AFAF15DC(uint64_t a1)
{
  v3 = *(a1 + 48);
  v48 = *(a1 + 32);
  v49 = v3;
  v50 = *(a1 + 64);
  v4 = *(a1 + 16);
  v47[0] = *a1;
  v47[1] = v4;
  v39 = v48;
  v40 = v3;
  v41 = v50;
  v37 = v47[0];
  v38 = v4;
  sub_1AFAF541C(v47, &v32);
  sub_1AFAE59B0(2u);
  if (!v1)
  {

    v5 = sub_1AFAE59B0(0xEu);
    v7 = v6;
    v9 = v8;
    v11 = v10;
    if (sub_1AFAE6C5C(0x726F6C6F63, 0xE500000000000000, v5, v6, v8, v10))
    {
      v12 = *(a1 + 48);
      v25[2] = *(a1 + 32);
      v25[3] = v12;
      v26 = *(a1 + 64);
      v13 = *(a1 + 16);
      v25[0] = *a1;
      v25[1] = v13;
      sub_1AFAF53E8(v25);

      v29 = v39;
      v30 = v40;
      v31 = v41;
      v27 = v37;
      v28 = v38;
      v34 = v39;
      v35 = v40;
      v36 = v41;
      v32 = v37;
      v33 = v38;
      sub_1AFAF541C(&v27, v24);
      result = sub_1AFAF53E8(&v32);
      v15 = v30;
      *(a1 + 32) = v29;
      *(a1 + 48) = v15;
      *(a1 + 64) = v31;
      v16 = v28;
      *a1 = v27;
      *(a1 + 16) = v16;
      return result;
    }

    v44 = v39;
    v45 = v40;
    v46 = v41;
    v42 = v37;
    v43 = v38;
    *&v32 = 0;
    *(&v32 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v32 = 0xD000000000000011;
    *(&v32 + 1) = 0x80000001AFF46A10;
    v17 = MEMORY[0x1B27189E0](v5, v7, v9, v11);
    v19 = v18;

    MEMORY[0x1B2718AE0](v17, v19);

    MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF46B40);
    v20 = sub_1AFAE5C18(v32, *(&v32 + 1));
    v22 = v21;

    sub_1AFAF5454();
    swift_allocError();
    *v23 = v20;
    v23[1] = v22;
    swift_willThrow();
  }

  v34 = v39;
  v35 = v40;
  v36 = v41;
  v32 = v37;
  v33 = v38;
  return sub_1AFAF53E8(&v32);
}

uint64_t sub_1AFAF1860(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_1AFDFE9E8() & 1;
  }
}

__int128 *sub_1AFAF18D8(__int128 *a1)
{
  v3 = a1[3];
  v72 = a1[2];
  v73 = v3;
  v74 = *(a1 + 8);
  v4 = a1[1];
  v71[0] = *a1;
  v71[1] = v4;
  v63 = v72;
  v64 = v3;
  v65 = v74;
  v61 = v71[0];
  v62 = v4;
  sub_1AFAF541C(v71, &v56);
  v5 = &v61;
  v6 = sub_1AFAE59B0(0xEu);
  if (v1)
  {
LABEL_8:
    v58 = v63;
    v59 = v64;
    v60 = v65;
    v56 = v61;
    v57 = v62;
    sub_1AFAF53E8(&v56);
    return v5;
  }

  v10 = sub_1AFAF1860(v6, v7, v8, v9, 0x6C6169726574616DLL, 0xE800000000000000);

  if ((v10 & 1) == 0)
  {
    v66 = v61;
    v67 = v62;
    v68 = v63;
    v69 = v64;
    v70 = v65;
    v12 = v62;
    v13 = 0xE000000000000000;
    *&v56 = 0;
    *(&v56 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v54[0] = 0xD000000000000017;
    *(&v54[0] + 1) = 0x80000001AFF46BB0;
    if (v12 == *(&v12 + 1) >> 1)
    {
      v14 = 0;
    }

    else
    {

      v15 = sub_1AFDFD1F8();
      v17 = v16;
      v19 = v18;
      v21 = v20;

      v22 = MEMORY[0x1B27189E0](v15, v17, v19, v21);
      v13 = v23;

      v14 = v22;
    }

    MEMORY[0x1B2718AE0](v14, v13);

    v5 = sub_1AFAE5C18(*&v54[0], *(&v54[0] + 1));
    v25 = v24;

    sub_1AFAF5454();
    swift_allocError();
    *v26 = v5;
    v26[1] = v25;
    swift_willThrow();
    goto LABEL_8;
  }

  v11 = sub_1AFAE9034(&unk_1F2500C78);
  sub_1AF585778(&unk_1F2500C98);
  v5 = sub_1AFAE9D30(&v61, 0, v11);
  v28 = a1[3];
  v58 = a1[2];
  v59 = v28;
  v60 = *(a1 + 8);
  v29 = a1[1];
  v56 = *a1;
  v57 = v29;
  sub_1AFAF53E8(&v56);

  if (v62 == *(&v62 + 1) >> 1 || (v30 = (*(&v61 + 1) + 40 * v62), v31 = *v30, v32 = v30[1], v33 = v30[2], v34 = v30[3], v35 = v30[4], , v31 != 14))
  {
  }

  else
  {
    v36 = MEMORY[0x1B27189E0](v32, v33, v34, v35);
    v38 = v37;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1AF427218(0, *(v5 + 2) + 1, 1, v5);
    }

    v39 = *(v5 + 2);
    v40 = *(v5 + 3);
    v41 = v39 + 1;
    if (v39 >= v40 >> 1)
    {
      v45 = v5;
      v46 = *(v5 + 2);
      v47 = sub_1AF427218(v40 > 1, v39 + 1, 1, v45);
      v39 = v46;
      v5 = v47;
    }

    *(v5 + 2) = v41;
    v42 = &v5[2 * v39];
    v42[2] = xmmword_1AFE99BE0;
    *(v42 + 6) = v36;
    *(v42 + 7) = v38;
  }

  v51 = v63;
  v52 = v64;
  v53 = v65;
  v49 = v61;
  v50 = v62;
  v54[2] = v63;
  v54[3] = v64;
  v55 = v65;
  v54[0] = v61;
  v54[1] = v62;
  sub_1AFAF541C(&v49, v48);
  sub_1AFAF53E8(v54);
  v43 = v52;
  a1[2] = v51;
  a1[3] = v43;
  *(a1 + 8) = v53;
  v44 = v50;
  *a1 = v49;
  a1[1] = v44;
  return v5;
}

uint64_t sub_1AFAF1CF0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[3];
  v90 = a1[2];
  v91 = v5;
  v92 = *(a1 + 8);
  v6 = a1[1];
  v89[0] = *a1;
  v89[1] = v6;
  v69 = v90;
  v70 = v5;
  v71 = v92;
  v67 = v89[0];
  v68 = v6;
  sub_1AFAF541C(v89, &v62);
  v7 = sub_1AFAF18D8(&v67);
  if (v2)
  {
    goto LABEL_7;
  }

  v8 = v7;
  v9 = *(v7 + 2);
  if (!v9)
  {

    v18 = a1[3];
    v86 = a1[2];
    v87 = v18;
    v88 = *(a1 + 8);
    v19 = a1[1];
    v84 = *a1;
    v85 = v19;
    v15 = sub_1AFAE5C18(0xD000000000000023, 0x80000001AFF46B60);
    v17 = v20;
    goto LABEL_6;
  }

  v11 = *(v7 + 6);
  v10 = *(v7 + 7);
  swift_bridgeObjectRetain_n();
  v12 = sub_1AFAF0198(v11, v10);
  if ((~v12 & 0xF000000000000007) == 0)
  {

    v13 = a1[3];
    v81 = a1[2];
    v82 = v13;
    v83 = *(a1 + 8);
    v14 = a1[1];
    v79 = *a1;
    v80 = v14;
    *&v62 = 0;
    *(&v62 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v62 = 0xD00000000000001DLL;
    *(&v62 + 1) = 0x80000001AFF46B90;
    MEMORY[0x1B2718AE0](v11, v10);

    MEMORY[0x1B2718AE0](39, 0xE100000000000000);
    v15 = sub_1AFAE5C18(v62, *(&v62 + 1));
    v17 = v16;

LABEL_6:
    sub_1AFAF5454();
    swift_allocError();
    *v21 = v15;
    v21[1] = v17;
    swift_willThrow();
LABEL_7:
    v64 = v69;
    v65 = v70;
    v66 = v71;
    v62 = v67;
    v63 = v68;
    return sub_1AFAF53E8(&v62);
  }

  v56 = v11;
  v57 = a2;
  v58 = v10;
  v59 = v12;
  v23 = 0;
  v24 = -v9;
  v25 = MEMORY[0x1E69E7CC0];
  do
  {
    v26 = 2 * v23++;
    while (1)
    {
      v27 = &v8[v26];
      v28 = *(&v8[v26 + 2] + 8);
      v60 = v28;
      if (!v28)
      {
        goto LABEL_10;
      }

      v29 = *(v27 + 4);
      v30 = *(v27 + 7);
      if (v29 == 1701667182 && v28 == 0xE400000000000000)
      {
        break;
      }

      if (sub_1AFDFEE28())
      {
        goto LABEL_19;
      }

LABEL_10:
      v26 += 2;
      ++v23;
      if (v24 + v23 == 1)
      {
        goto LABEL_24;
      }
    }

    v29 = 1701667182;
LABEL_19:

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v62 = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AFC07A2C(0, v25[2] + 1, 1);
      v25 = v62;
    }

    v34 = v25[2];
    v33 = v25[3];
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      sub_1AFC07A2C(v33 > 1, v34 + 1, 1);
      v35 = v34 + 1;
      v25 = v62;
    }

    v25[2] = v35;
    v36 = &v25[4 * v34];
    v36[4] = v29;
    *(v36 + 5) = v60;
    v36[7] = v30;
  }

  while (v24 + v23);
LABEL_24:

  if (!v25[2])
  {

    v41 = a1[3];
    v74 = a1[2];
    v75 = v41;
    v76 = *(a1 + 8);
    v42 = a1[1];
    v72 = *a1;
    v73 = v42;
    v43 = sub_1AFAE5C18(0xD000000000000023, 0x80000001AFF46B60);
    v45 = v44;
    sub_1AFAF5454();
    swift_allocError();
    *v46 = v43;
    v46[1] = v45;
    swift_willThrow();
    sub_1AF914F8C(v59);
    goto LABEL_7;
  }

  v38 = v25[6];
  v37 = v25[7];

  v39 = a1[3];
  v77[2] = a1[2];
  v77[3] = v39;
  v78 = *(a1 + 8);
  v40 = a1[1];
  v77[0] = *a1;
  v77[1] = v40;
  sub_1AFAF541C(v77, &v62);
  sub_1AFAF0708(v77, v38, v37);
  v47 = a1[3];
  v64 = a1[2];
  v65 = v47;
  v66 = *(a1 + 8);
  v48 = a1[1];
  v62 = *a1;
  v63 = v48;
  sub_1AFAF53E8(&v62);
  sub_1AFAF53E8(v77);
  if (v59 >> 61 == 5)
  {
    result = sub_1AF914F8C(v59);
    v49 = 4;
    v50 = v56;
    v51 = v57;
    v52 = v58;
    goto LABEL_31;
  }

  sub_1AF90E730(v59);
  v51 = v57;
  if (v53)
  {
    memset(v61, 0, sizeof(v61));
    v38 = sub_1AF493834(v53, v61, v38, v37, 0, 1, 0, 1, 0, 1, 1, 0, 0, 0, 0, &type metadata for MaterialParameters, v53, &off_1F253F520);
    sub_1AF914F8C(v59);

    result = sub_1AFAF5528(v61, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    v37 = 0;
    v50 = 0;
    v52 = 0;
    v49 = 3;
LABEL_31:
    v54 = v70;
    a1[2] = v69;
    a1[3] = v54;
    *(a1 + 8) = v71;
    v55 = v68;
    *a1 = v67;
    a1[1] = v55;
    *v51 = v38;
    *(v51 + 8) = v37;
    *(v51 + 16) = v50;
    *(v51 + 24) = v52;
    *(v51 + 32) = v49;
  }

  else
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20676E697373696DLL, 0xEE00203A65736163);
    v93 = v59;
    sub_1AFDFE458();
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFAF2328(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746165706572 && a2 == 0xE600000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F745F706D616C63 && a2 == 0xED00006F72657A5FLL || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F745F706D616C63 && a2 == 0xED0000656764655FLL || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D5F746165706572 && a2 == 0xED0000726F727269 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 3;
  }

  else
  {
    sub_1AFDFE218();

    MEMORY[0x1B2718AE0](a1, a2);

    MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF46BF0);
    sub_1AFAF5454();
    swift_allocError();
    *v6 = 39;
    v6[1] = 0xE100000000000000;
    return swift_willThrow();
  }
}

uint64_t sub_1AFAF252C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7473657261656ELL && a2 == 0xE700000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261656E696CLL && a2 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else
  {
    sub_1AFDFE218();

    MEMORY[0x1B2718AE0](a1, a2);

    MEMORY[0x1B2718AE0](0xD00000000000001CLL, 0x80000001AFF46C10);
    sub_1AFAF5454();
    swift_allocError();
    *v6 = 39;
    v6[1] = 0xE100000000000000;
    return swift_willThrow();
  }
}

uint64_t sub_1AFAF2688@<X0>(__int128 *a1@<X0>, char a2@<W1>, int a3@<W2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  v11 = swift_allocObject();
  v13 = *a1;
  v332 = a1[1];
  v12 = v332;
  v14 = a1[3];
  v333 = a1[2];
  v334 = v14;
  v336 = a1;
  v335 = *(a1 + 8);
  v15 = v335;
  v331 = v13;
  *(v11 + 48) = v333;
  *(v11 + 64) = v14;
  *(v11 + 80) = v15;
  *(v11 + 16) = v13;
  *(v11 + 32) = v12;
  sub_1AFAF541C(&v331, &v221);
  sub_1AFAE5E1C(v226);
  sub_1AFAF54A8(v226);
  v16 = v226[0];
  if (v226[0] != 5 && v226[0] != 6 && v226[0] != 1)
  {
    v29 = *(v11 + 32);
    v326 = *(v11 + 16);
    v327 = v29;
    v30 = *(v11 + 64);
    v328 = *(v11 + 48);
    v329 = v30;
    v330 = *(v11 + 80);
    v31 = v327;
    v32 = 0xE000000000000000;
    *&v221 = 0;
    *(&v221 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v221 = 0xD00000000000001ELL;
    *(&v221 + 1) = 0x80000001AFF464D0;
    if (v31 == *(&v31 + 1) >> 1)
    {
      v33 = 0;
    }

    else
    {

      v47 = sub_1AF9AAD70();
      v49 = v48;
      v51 = v50;
      v53 = v52;

      v54 = MEMORY[0x1B27189E0](v47, v49, v51, v53);
      v32 = v55;

      v33 = v54;
    }

    MEMORY[0x1B2718AE0](v33, v32);

    v57 = *(&v221 + 1);
    v56 = v221;
    goto LABEL_14;
  }

  v213 = a2;
  v216 = a3;
  v219 = a5;
  v17 = a4 < 5u;
  v18 = *(v11 + 16);
  v322 = *(v11 + 32);
  v19 = *(v11 + 64);
  v323 = *(v11 + 48);
  v324 = v19;
  v325 = *(v11 + 80);
  v321 = v18;
  v20 = sub_1AFAE891C(0xEu);
  if (v5)
  {
  }

  v24 = v20;
  v25 = v21;
  v26 = v22;
  v27 = a4;
  v28 = v23;
  v212 = v27;
  if (sub_1AFAE6C5C(0x6F43747069726373, 0xED0000747865746ELL, v20, v21, v22, v23) & 1) != 0 || (sub_1AFAE6C5C(0x635F747069726373, 0xEE00747865746E6FLL, v24, v25, v26, v28))
  {

    sub_1AFAE67C4(5, v24, v25, v26, v28, v16, v11);
    v34 = v336;
    v35 = v336[3];
    v223 = v336[2];
    v224 = v35;
    v225 = *(v336 + 8);
    v36 = v336[1];
    v221 = *v336;
    v222 = v36;
    sub_1AFAF53E8(&v221);

    sub_1AFAE5E1C(v227);
    sub_1AFAF54A8(v227);
    v37 = 0;
    v38 = 1;
    v39 = 0xF000000000000007;
    v40 = 0x8000000000000000;
LABEL_10:
    v41 = 1;
LABEL_11:
    v42 = *(v11 + 64);
    v223 = *(v11 + 48);
    v224 = v42;
    v225 = *(v11 + 80);
    v43 = *(v11 + 32);
    v221 = *(v11 + 16);
    v222 = v43;
    sub_1AFAF541C(&v221, v220);

    v45 = v224;
    v34[2] = v223;
    v34[3] = v45;
    *(v34 + 8) = v225;
    v46 = v222;
    *v34 = v221;
    v34[1] = v46;
    *v219 = v40;
    *(v219 + 8) = v38;
    *(v219 + 16) = v39;
    *(v219 + 24) = v37;
    *(v219 + 32) = v41;
    return result;
  }

  v62 = v17 & (6u >> v212);
  if (v16 == 1)
  {
    sub_1AFAEA414(v11 + 16, 1, 1, &v221);
    v63 = *(&v222 + 1);
    v64 = v224;
    v214 = v225;
    v65 = BYTE1(v225);
    v66 = v336[3];
    v223 = v336[2];
    v224 = v66;
    v225 = *(v336 + 8);
    v67 = v336[1];
    v221 = *v336;
    v222 = v67;
    sub_1AFAF53E8(&v221);
    v220[0] = 35;
    v220[1] = 0xE100000000000000;
    MEMORY[0x1B2718AE0](v64, *(&v64 + 1));

    v68 = swift_allocObject();
    *(v68 + 16) = v63;
    *(v68 + 24) = 35;
    *(v68 + 32) = 0xE100000000000000;
    if ((v62 | v216) & 1) != 0 && ((v214 & 2) == 0 ? (v69 = 1) : (v69 = v65), (v69))
    {
      v38 = 1;
    }

    else
    {
      v38 = 7;
    }

    v37 = 0;
    v40 = v68 | 0x3000000000000004;
LABEL_34:
    v41 = 1;
    v39 = 0xF000000000000007;
    v34 = v336;
    goto LABEL_11;
  }

  if (sub_1AFAE6C5C(0x6E69746C697562, 0xE700000000000000, v24, v25, v26, v28))
  {

    sub_1AFAE67C4(5, v24, v25, v26, v28, v16, v11);

    sub_1AFAE5E1C(v228);
    sub_1AFAF54A8(v228);
    sub_1AFAE59B0(2u);

    sub_1AFAEB098((v11 + 16), v212, &v229);
    v34 = v336;
    v70 = v336[3];
    v223 = v336[2];
    v224 = v70;
    v225 = *(v336 + 8);
    v71 = v336[1];
    v221 = *v336;
    v222 = v71;
    sub_1AFAF53E8(&v221);
    v41 = v233;
    v39 = v231;
    v37 = v232;
    v38 = v230;
    v40 = v229;
    goto LABEL_11;
  }

  if ((sub_1AFAE6C5C(0x72657474696D65, 0xE700000000000000, v24, v25, v26, v28) & 1) == 0)
  {
    if (sub_1AFAE6C5C(0x656C636974726170, 0xE800000000000000, v24, v25, v26, v28))
    {

      sub_1AFAE67C4(5, v24, v25, v26, v28, v16, v11);

      if (v216)
      {
        sub_1AFAE5E1C(v236);
        sub_1AFAF54A8(v236);
        sub_1AFAE59B0(2u);

        v84 = sub_1AFAE9188(v11 + 16);
        if (v84 == 0x7865646E69 && v85 == 0xE500000000000000 || (v138 = v62, v139 = v84, v140 = v85, (sub_1AFDFEE28() & 1) != 0))
        {

          if (v213 == 2)
          {
            v34 = v336;
            v141 = v336[3];
            v223 = v336[2];
            v224 = v141;
            v225 = *(v336 + 8);
            v142 = v336[1];
            v221 = *v336;
            v222 = v142;
            sub_1AFAF53E8(&v221);
            v37 = 0;
            v38 = 1;
            v39 = 0xF000000000000007;
            v40 = 0x8000000000000010;
            goto LABEL_10;
          }

          v148 = *(v11 + 64);
          v263 = *(v11 + 48);
          v264 = v148;
          v265 = *(v11 + 80);
          v149 = *(v11 + 32);
          v261 = *(v11 + 16);
          v262 = v149;
          v107 = 0xD000000000000038;
          v108 = 0x80000001AFF46720;
          goto LABEL_94;
        }

        sub_1AF701F04(v139, v140, &v237);

        v150 = v238;
        if (v238)
        {
          v215 = v237;
          v217 = v239;
          v151 = sub_1AFAE9034(&unk_1F2500CA8);
          sub_1AF585778(&unk_1F2500CC8);
          v174 = sub_1AFAE9D30(v11 + 16, 1, v151);

          sub_1AFAE55E4(0x6563617073, 0xE500000000000000, v174);
          v176 = v175;
          v178 = v177;

          if (!v178)
          {
            v185 = 5;
            goto LABEL_114;
          }

          v179 = sub_1AFAEAD00(v176, v178);
          v185 = v179;

          if ((v212 - 1) >= 2u)
          {
            v206 = *(v11 + 64);
            v273 = *(v11 + 48);
            v274 = v206;
            v275 = *(v11 + 80);
            v207 = *(v11 + 32);
            v271 = *(v11 + 16);
            v272 = v207;
            v208 = sub_1AFAE5C18(0xD00000000000003DLL, 0x80000001AFF46680);
            v210 = v209;
            sub_1AFAF5454();
            swift_allocError();
            *v211 = v208;
            v211[1] = v210;
            swift_willThrow();
            v250[0] = v215;
            v250[1] = v150;
            v201 = v250;
            goto LABEL_134;
          }

          sub_1AFDFDFD8();
          if (swift_conformsToProtocol2())
          {
            if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
            {
              v195 = *(v11 + 64);
              v268 = *(v11 + 48);
              v269 = v195;
              v270 = *(v11 + 80);
              v196 = *(v11 + 32);
              v266 = *(v11 + 16);
              v267 = v196;
              v197 = sub_1AFAE5C18(0xD000000000000055, 0x80000001AFF466C0);
              v199 = v198;
              sub_1AFAF5454();
              swift_allocError();
              *v200 = v197;
              v200[1] = v199;
              swift_willThrow();
              v249[0] = v215;
              v249[1] = v150;
              v201 = v249;
LABEL_134:
              sub_1AF585778(v201);
            }

LABEL_114:
            v186 = v336;
            v187 = v336[3];
            v223 = v336[2];
            v224 = v187;
            v225 = *(v336 + 8);
            v188 = v336[1];
            v221 = *v336;
            v222 = v188;
            sub_1AFAF53E8(&v221);
            v189 = swift_allocObject();
            v37 = 0;
            *(v189 + 16) = v215;
            *(v189 + 24) = v150;
            v34 = v186;
            *(v189 + 32) = v217;
            *(v189 + 40) = v240;
            *(v189 + 56) = v241;
            *(v189 + 60) = v185;
            if (v138)
            {
              v38 = 1;
            }

            else
            {
              v38 = 3;
            }

            v40 = v189 | 0x5000000000000000;
            v41 = 1;
            v39 = 0xF000000000000007;
            goto LABEL_11;
          }

          __break(1u);
LABEL_136:
          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }

        v162 = *(v11 + 32);
        v276 = *(v11 + 16);
        v277 = v162;
        v163 = *(v11 + 64);
        v278 = *(v11 + 48);
        v279 = v163;
        v280 = *(v11 + 80);
        *&v221 = 0xD00000000000001BLL;
        *(&v221 + 1) = 0x80000001AFF46660;
        if (v277 == *(&v277 + 1) >> 1)
        {
          v160 = 0;
          v161 = 0xE000000000000000;
          goto LABEL_102;
        }

        goto LABEL_101;
      }

      v105 = *(v11 + 64);
      v283 = *(v11 + 48);
      v284 = v105;
      v285 = *(v11 + 80);
      v106 = *(v11 + 32);
      v281 = *(v11 + 16);
      v282 = v106;
      v107 = 0xD000000000000031;
      v108 = 0x80000001AFF46620;
LABEL_94:
      v154 = sub_1AFAE5C18(v107, v108);
      v156 = v155;
      sub_1AFAF5454();
      swift_allocError();
      *v157 = v154;
      v157[1] = v156;
      goto LABEL_15;
    }

    if (sub_1AFAE6C5C(0x695F786574726576, 0xE90000000000006ELL, v24, v25, v26, v28))
    {

      sub_1AFAE67C4(5, v24, v25, v26, v28, v16, v11);

      if (v212 == 2)
      {
        sub_1AFAE5E1C(v242);
        sub_1AFAF54A8(v242);
        v122 = sub_1AFAEFCA4((v11 + 16));
        v34 = v336;
        v123 = v336[3];
        v223 = v336[2];
        v224 = v123;
        v225 = *(v336 + 8);
        v124 = v336[1];
        v221 = *v336;
        v222 = v124;
        sub_1AFAF53E8(&v221);
        v125 = swift_allocObject();
        v37 = 0;
        v126 = v122;
        v40 = v125 | 0x7000000000000000;
        *(v125 + 16) = v126;
        *(v125 + 24) = 0;
        *(v125 + 32) = 0;
        *(v125 + 40) = 0;
        v38 = 1;
        v39 = 0xF000000000000007;
        v41 = 1;
        *(v125 + 48) = 0;
        goto LABEL_11;
      }

      v112 = *(v11 + 64);
      v288 = *(v11 + 48);
      v289 = v112;
      v290 = *(v11 + 80);
      v113 = *(v11 + 32);
      v286 = *(v11 + 16);
      v287 = v113;
      v107 = 0xD000000000000030;
      v108 = 0x80000001AFF465E0;
      goto LABEL_94;
    }

    if (sub_1AFAE6C5C(0x6F5F786574726576, 0xEA00000000007475, v24, v25, v26, v28))
    {

      sub_1AFAE67C4(5, v24, v25, v26, v28, v16, v11);

      sub_1AFAE5E1C(v243);
      sub_1AFAF54A8(v243);
      if (v212 <= 2u && v212)
      {
        v93 = sub_1AFAF0834((v11 + 16));
        v95 = v94;
        v97 = v96;
        v34 = v336;
        v98 = v336[3];
        v223 = v336[2];
        v224 = v98;
        v225 = *(v336 + 8);
        v99 = v336[1];
        v221 = *v336;
        v222 = v99;
        sub_1AFAF53E8(&v221);
        v100 = swift_allocObject();
        v37 = 0;
        *(v100 + 16) = v93;
        *(v100 + 24) = v95;
        *(v100 + 32) = v97;
        *(v100 + 40) = 0;
        if (v212 == 1)
        {
          v38 = 1;
          v40 = v100 | 0x7000000000000000;
          v39 = 0xF000000000000007;
          v41 = 1;
        }

        else
        {
          v41 = 1;
          v40 = v100 | 0x7000000000000000;
          v39 = 0xF000000000000007;
          v38 = 3;
        }

        *(v100 + 48) = 1;
        goto LABEL_11;
      }

      v118 = *(v11 + 64);
      v293 = *(v11 + 48);
      v294 = v118;
      v295 = *(v11 + 80);
      v119 = *(v11 + 32);
      v291 = *(v11 + 16);
      v292 = v119;
      v107 = 0xD00000000000002ALL;
      v108 = 0x80000001AFF465B0;
      goto LABEL_94;
    }

    if (sub_1AFAE6C5C(0x746E656D67617266, 0xEB000000006E695FLL, v24, v25, v26, v28))
    {

      sub_1AFAE67C4(5, v24, v25, v26, v28, v16, v11);

      sub_1AFAE5E1C(v244);
      sub_1AFAF54A8(v244);
      if (v212 == 1)
      {
        v101 = sub_1AFAF1160((v11 + 16));
        v34 = v336;
        v102 = v336[3];
        v223 = v336[2];
        v224 = v102;
        v225 = *(v336 + 8);
        v103 = v336[1];
        v221 = *v336;
        v222 = v103;
        sub_1AFAF53E8(&v221);
        v104 = swift_allocObject();
        v37 = 0;
        *(v104 + 16) = v101;
        *(v104 + 24) = 0;
        *(v104 + 32) = 0;
        *(v104 + 40) = 0;
        v40 = v104 | 0x7000000000000000;
        v38 = 1;
        v39 = 0xF000000000000007;
        v41 = 1;
        *(v104 + 48) = 2;
        goto LABEL_11;
      }

      v131 = *(v11 + 64);
      v298 = *(v11 + 48);
      v299 = v131;
      v300 = *(v11 + 80);
      v132 = *(v11 + 32);
      v296 = *(v11 + 16);
      v297 = v132;
      v107 = 0xD000000000000032;
      v108 = 0x80000001AFF46570;
      goto LABEL_94;
    }

    if (sub_1AFAE6C5C(0x746E656D67617266, 0xEC00000074756F5FLL, v24, v25, v26, v28))
    {

      sub_1AFAE67C4(5, v24, v25, v26, v28, v16, v11);

      sub_1AFAE5E1C(v245);
      sub_1AFAF54A8(v245);
      if (v212 == 1)
      {
        sub_1AFAF15DC(v11 + 16);
        v34 = v336;
        v109 = v336[3];
        v223 = v336[2];
        v224 = v109;
        v225 = *(v336 + 8);
        v110 = v336[1];
        v221 = *v336;
        v222 = v110;
        sub_1AFAF53E8(&v221);
        v111 = swift_allocObject();
        v37 = 0;
        v41 = 1;
        *(v111 + 16) = 1;
        *(v111 + 24) = 0;
        *(v111 + 32) = 0;
        *(v111 + 40) = 0;
        v40 = v111 | 0x7000000000000000;
        v39 = 0xF000000000000007;
        v38 = 3;
        *(v111 + 48) = 6;
        goto LABEL_11;
      }

      v143 = *(v11 + 64);
      v303 = *(v11 + 48);
      v304 = v143;
      v305 = *(v11 + 80);
      v144 = *(v11 + 32);
      v301 = *(v11 + 16);
      v302 = v144;
      v107 = 0xD000000000000032;
      v108 = 0x80000001AFF46570;
      goto LABEL_94;
    }

    if (sub_1AFAE6C5C(0x6C6169726574616DLL, 0xE800000000000000, v24, v25, v26, v28))
    {

      sub_1AFAE67C4(5, v24, v25, v26, v28, v16, v11);

      if ((v212 - 1) <= 1u)
      {
        sub_1AFAF1CF0((v11 + 16), v246);
        v34 = v336;
        v114 = v336[3];
        v223 = v336[2];
        v224 = v114;
        v225 = *(v336 + 8);
        v115 = v336[1];
        v221 = *v336;
        v222 = v115;
        sub_1AFAF53E8(&v221);
        v116 = swift_allocObject();
        v37 = 0;
        v117 = v246[1];
        *(v116 + 16) = v246[0];
        *(v116 + 32) = v117;
        *(v116 + 48) = v247;
        v40 = v116 | 0x7000000000000000;
        goto LABEL_45;
      }

      v152 = *(v11 + 16);
      v307 = *(v11 + 32);
      v153 = *(v11 + 64);
      v308 = *(v11 + 48);
      v309 = v153;
      v310 = *(v11 + 80);
      v306 = v152;
      v107 = 0xD00000000000002DLL;
      v108 = 0x80000001AFF46540;
      goto LABEL_94;
    }

    if ((sub_1AFAE6C5C(0x3165727574786574, 0xE900000000000064, v24, v25, v26, v28) & 1) == 0 && (sub_1AFAE6C5C(0x3265727574786574, 0xE900000000000064, v24, v25, v26, v28) & 1) == 0 && (sub_1AFAE6C5C(0x3365727574786574, 0xE900000000000064, v24, v25, v26, v28) & 1) == 0)
    {
      v158 = *(v11 + 32);
      v316 = *(v11 + 16);
      v317 = v158;
      v159 = *(v11 + 64);
      v318 = *(v11 + 48);
      v319 = v159;
      v320 = *(v11 + 80);
      *&v221 = 0xD00000000000001BLL;
      *(&v221 + 1) = 0x80000001AFF464F0;
      if (v317 == *(&v317 + 1) >> 1)
      {
        v160 = 0;
        v161 = 0xE000000000000000;
LABEL_102:
        MEMORY[0x1B2718AE0](v160, v161);

        v57 = *(&v221 + 1);
        v56 = v221;
LABEL_14:
        v58 = sub_1AFAE5C18(v56, v57);
        v60 = v59;

        sub_1AFAF5454();
        swift_allocError();
        *v61 = v58;
        v61[1] = v60;
LABEL_15:
        swift_willThrow();
      }

LABEL_101:

      v166 = sub_1AF9AAD70();
      v168 = v167;
      v170 = v169;
      v172 = v171;

      v160 = MEMORY[0x1B27189E0](v166, v168, v170, v172);
      v161 = v173;

      goto LABEL_102;
    }

    sub_1AFAE5E1C(v248);
    sub_1AFAF54A8(v248);
    v127 = sub_1AFAE9034(&unk_1F2500CD8);
    swift_arrayDestroy();
    v145 = sub_1AFAE9D30(v11 + 16, 1, v127);

    if (!v145[2])
    {
LABEL_89:

      v146 = *(v11 + 16);
      v312 = *(v11 + 32);
      v147 = *(v11 + 64);
      v313 = *(v11 + 48);
      v314 = v147;
      v315 = *(v11 + 80);
      v311 = v146;
      v107 = 0xD000000000000025;
      v108 = 0x80000001AFF46510;
      goto LABEL_94;
    }

    if (v145[5])
    {

      goto LABEL_89;
    }

    v164 = v145[7];
    v218 = v145[6];
    if (sub_1AFAE6C5C(0x3165727574786574, 0xE900000000000064, v24, v25, v26, v28))
    {
      v165 = 0;
    }

    else
    {
      if ((sub_1AFAE6C5C(0x3265727574786574, 0xE900000000000064, v24, v25, v26, v28) & 1) == 0)
      {
        v180 = sub_1AFAE6C5C(0x3365727574786574, 0xE900000000000064, v24, v25, v26, v28);
        v165 = 2;
        swift_bridgeObjectRetain_n();

        if ((v180 & 1) == 0)
        {
          goto LABEL_136;
        }

LABEL_110:

        sub_1AFAE55E4(0x5F73736572646461, 0xEC00000065646F6DLL, v145);
        if (v182)
        {
          v183 = v181;
          v184 = v182;

          v190 = sub_1AFAF2328(v183, v184);
        }

        else
        {
          v190 = 2;
        }

        sub_1AFAE55E4(0x6D5F7265746C6966, 0xEB0000000065646FLL, v145);
        v192 = v191;
        v194 = v193;

        v41 = 1;
        if (v194)
        {

          v202 = sub_1AFAF252C(v192, v194);
        }

        else
        {
          v202 = 1;
        }

        v34 = v336;
        v203 = v336[3];
        v223 = v336[2];
        v224 = v203;
        v225 = *(v336 + 8);
        v204 = v336[1];
        v221 = *v336;
        v222 = v204;
        sub_1AFAF53E8(&v221);
        v205 = swift_allocObject();
        v37 = 0;
        *(v205 + 16) = v218;
        *(v205 + 24) = v164;
        *(v205 + 32) = 1;
        *(v205 + 33) = v165;
        *(v205 + 34) = v190;
        v40 = v205 | 0x4000000000000000;
        v39 = 0xF000000000000007;
        v38 = 3;
        *(v205 + 35) = v202 & 1;
        goto LABEL_11;
      }

      v165 = 1;
    }

    goto LABEL_110;
  }

  if (v16 != 5)
  {
    sub_1AFAE5E1C(v235);
    sub_1AFAF54A8(v235);
    sub_1AFAE59B0(8u);
    v34 = v336;

    v86 = sub_1AFAE9188(v11 + 16);
    v88 = v87;
    v89 = v86;
    sub_1AFAE59B0(9u);

    if ((v212 - 1) >= 2u)
    {
      v128 = v34[3];
      v223 = v34[2];
      v224 = v128;
      v225 = *(v34 + 8);
      v129 = v34[1];
      v221 = *v34;
      v222 = v129;
      sub_1AFAF53E8(&v221);
      v130 = swift_allocObject();
      v37 = 0;
      *(v130 + 16) = v89;
      *(v130 + 24) = v88;
      v38 = 1;
      *(v130 + 32) = 1;
      v40 = v130 | 0x4000000000000004;
      goto LABEL_46;
    }

    v120 = *(v11 + 64);
    v258 = *(v11 + 48);
    v259 = v120;
    v260 = *(v11 + 80);
    v121 = *(v11 + 32);
    v256 = *(v11 + 16);
    v257 = v121;
    v107 = 0xD000000000000043;
    v108 = 0x80000001AFF46760;
    goto LABEL_94;
  }

  sub_1AFAE5E1C(v234);
  sub_1AFAF54A8(v234);
  v72 = *(v11 + 32);
  v34 = v336;
  if (v72 == *(v11 + 40) >> 1 || *(*(v11 + 24) + 40 * v72) != 2)
  {
    v90 = v336[3];
    v223 = v336[2];
    v224 = v90;
    v225 = *(v336 + 8);
    v91 = v336[1];
    v221 = *v336;
    v222 = v91;
    sub_1AFAF53E8(&v221);
    v92 = swift_allocObject();
    v37 = 0;
    *(v92 + 16) = 0;
    *(v92 + 24) = 0;
    *(v92 + 32) = 2;
    v40 = v92 | 0x4000000000000004;
LABEL_45:
    v38 = 1;
LABEL_46:
    v39 = 0xF000000000000007;
    goto LABEL_10;
  }

  sub_1AFAE59B0(2u);

  sub_1AFAEA414(v11 + 16, 0, 1, &v221);
  v73 = v62;
  v74 = *(&v222 + 1);
  v75 = v225;
  v76 = BYTE1(v225);
  *&v221 = 0x72657474696D6524;
  *(&v221 + 1) = 0xE90000000000002ELL;
  MEMORY[0x1B2718AE0](v224, *(&v224 + 1));

  v77 = *(&v221 + 1);
  if ((v212 - 1) >= 2u)
  {
    v133 = v221;
    v134 = v336[3];
    v223 = v336[2];
    v224 = v134;
    v225 = *(v336 + 8);
    v135 = v336[1];
    v221 = *v336;
    v222 = v135;
    sub_1AFAF53E8(&v221);
    v136 = swift_allocObject();
    *(v136 + 16) = v74;
    *(v136 + 24) = v133;
    *(v136 + 32) = v77;
    if ((v73 | v216) & 1) != 0 && ((v75 & 2) == 0 ? (v137 = 1) : (v137 = v76), (v137))
    {
      v38 = 1;
    }

    else
    {
      v38 = 3;
    }

    v37 = 0;
    v40 = v136 | 0x3000000000000004;
    goto LABEL_34;
  }

  v78 = *(v11 + 64);
  v253 = *(v11 + 48);
  v254 = v78;
  v255 = *(v11 + 80);
  v79 = *(v11 + 32);
  v251 = *(v11 + 16);
  v252 = v79;
  v80 = sub_1AFAE5C18(0xD000000000000047, 0x80000001AFF467B0);
  v82 = v81;
  sub_1AFAF5454();
  swift_allocError();
  *v83 = v80;
  v83[1] = v82;
  swift_willThrow();
}

char *sub_1AFAF4338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, char a6, unsigned __int8 a7)
{
  result = sub_1AFAE6F94(a1, a2, a3, a4, a5);
  if (v7)
  {
    return result;
  }

  sub_1AFDFD1F8();
  v12 = sub_1AFDFDE38();
  v16 = sub_1AFAE53E0(v12, v13, v14, v15, 0);
  v65 = a5;

  v17 = *(v16 + 2);

  v18 = 0;
  v19 = v16 + 32;
  v20 = 1;
  v21 = (2 * v17) | 1;
  *&v92 = v16;
  *(&v92 + 1) = v16 + 32;
  *&v93 = 0;
  *(&v93 + 1) = v21;
  v103 = MEMORY[0x1E69E7CC0];
  memset(v94, 0, sizeof(v94));
  v95 = 0;
  v63 = a6;
  for (i = a7; ; a7 = i)
  {
    v22 = v21 >> 1;
    if (v18 != v21 >> 1 && v19[40 * v18] == 16)
    {
      break;
    }

    if (v20)
    {
      v23 = v65;
    }

    else
    {
      sub_1AFAE59B0(0);
      v23 = v65;

      v21 = *(&v93 + 1);
      v18 = v93;
      v22 = *(&v93 + 1) >> 1;
      if (v93 != *(&v93 + 1) >> 1)
      {
        v19 = *(&v92 + 1);
        if (*(*(&v92 + 1) + 40 * v93) == 16)
        {
          break;
        }
      }
    }

    v89 = v94[0];
    v90 = v94[1];
    v91 = v95;
    v87 = v92;
    v88 = v93;
    v83 = v93;
    v84 = v94[0];
    v85 = v94[1];
    v86 = v95;
    v82 = v92;
    if (v23 == 3)
    {
      sub_1AFAF541C(&v87, v80);

LABEL_12:
      sub_1AFAE59B0(0xEu);

      sub_1AFAE59B0(0xEu);

      sub_1AFAE59B0(3u);

      sub_1AFAF2688(&v82, v23, a6 & 1, a7, v96);
      v25 = v96;
      goto LABEL_14;
    }

    v24 = sub_1AFDFEE28();
    sub_1AFAF541C(&v87, v80);

    if (v24)
    {
      goto LABEL_12;
    }

    sub_1AFAF2688(&v82, v23, a6 & 1, a7, v97);
    sub_1AFAE59B0(0xEu);

    v25 = v97;
LABEL_14:
    v80[1] = v93;
    v80[2] = v94[0];
    v80[3] = v94[1];
    v26 = v25[32];
    v27 = *(v25 + 2);
    v28 = *(v25 + 3);
    v29 = v25[8];
    v30 = *v25;
    v81 = v95;
    v80[0] = v92;
    v68 = v27;
    v67 = v29;
    v66 = v30;
    if (v93 != *(&v93 + 1) >> 1)
    {
    }

    sub_1AFAF53E8(v80);
    v31 = sub_1AFDFD1F8();
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v73 = v84;
    v74 = v85;
    v75 = v86;
    v71 = v82;
    v72 = v83;
    v94[0] = v84;
    v94[1] = v85;
    v95 = v86;
    v92 = v82;
    v93 = v83;
    v77 = v26;
    v79 = v86;
    v78[3] = v85;
    v78[2] = v84;
    v78[1] = v83;
    v78[0] = v82;
    sub_1AFAF541C(&v71, v70);
    sub_1AFAF53E8(v78);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v38 = v103;
    }

    else
    {
      v38 = sub_1AF427324(0, *(v103 + 2) + 1, 1, v103);
    }

    v40 = *(v38 + 2);
    v39 = *(v38 + 3);
    if (v40 >= v39 >> 1)
    {
      v38 = sub_1AF427324(v39 > 1, v40 + 1, 1, v38);
    }

    v20 = 0;
    v19 = *(&v71 + 1);
    v21 = *(&v72 + 1);
    v18 = v72;
    *(v38 + 2) = v40 + 1;
    v103 = v38;
    v41 = &v38[72 * v40];
    *(v41 + 4) = v66;
    v41[40] = v67;
    v42 = *(v70 + 3);
    *(v41 + 41) = v70[0];
    *(v41 + 11) = v42;
    *(v41 + 6) = v68;
    *(v41 + 7) = v28;
    v41[64] = v77;
    v43 = *v76;
    *(v41 + 17) = *&v76[3];
    *(v41 + 65) = v43;
    *(v41 + 9) = v31;
    *(v41 + 10) = v33;
    *(v41 + 11) = v35;
    *(v41 + 12) = v37;
    a6 = v63;
  }

  if (v18 == v22)
  {

    v98 = v92;
    v99 = v93;
    v100 = v94[0];
    v101 = v94[1];
    v102 = v95;
    v44 = v93;
    v45 = 0xE000000000000000;
    *&v87 = 0;
    *(&v87 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v82 = 0xD000000000000017;
    *(&v82 + 1) = 0x80000001AFF464B0;
    if (v44 == *(&v44 + 1) >> 1)
    {
      v46 = 0;
    }

    else
    {

      v50 = sub_1AFDFD1F8();
      v52 = v51;
      v54 = v53;
      v56 = v55;

      v57 = MEMORY[0x1B27189E0](v50, v52, v54, v56);
      v45 = v58;

      v46 = v57;
    }

    MEMORY[0x1B2718AE0](v46, v45);

    v59 = sub_1AFAE5C18(v82, *(&v82 + 1));
    v61 = v60;

    sub_1AFAF5454();
    swift_allocError();
    *v62 = v59;
    v62[1] = v61;
    swift_willThrow();
    v89 = v94[0];
    v90 = v94[1];
    v91 = v95;
    v87 = v92;
    v88 = v93;
    return sub_1AFAF53E8(&v87);
  }

  else
  {
    v47 = &v19[40 * v18];
    v69 = *(v47 + 8);
    v49 = *(v47 + 3);
    v48 = *(v47 + 4);
    *(&v92 + 1) = v19;
    *&v93 = v18 + 1;
    *(&v93 + 1) = v21;

    *(v94 + 8) = v69;
    *&v94[0] = 16;
    *(&v94[1] + 1) = v49;
    v95 = v48;
    v91 = v48;
    v87 = v92;
    v88 = v93;
    v89 = v94[0];
    v90 = v94[1];
    sub_1AFAF53E8(&v87);
    return v103;
  }
}

uint64_t sub_1AFAF4B48@<X0>(unint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
  if (v6 <= 8)
  {
    if (v6 >= 8)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  if (v6 >= 14)
  {
    if (v6 != 14)
    {
      if (v6 != 16)
      {
        goto LABEL_63;
      }

      if (a1 == 0x8000000000000000)
      {
        sub_1AFA9EF20(0x8000000000000000);
        if (sub_1AFADB4E4(v25, 2u))
        {
          goto LABEL_28;
        }

        v12 = 0x8000000000000000;
        goto LABEL_12;
      }

      goto LABEL_6;
    }

    v18 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v19 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
    v21 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    v20 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
    v22 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
    if (v22 <= 2)
    {
      if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30))
      {
        v26 = v22 == 1;
      }

      else
      {
        v26 = 0;
      }

      if (v26)
      {
        sub_1AFABCED4(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18), *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20));
      }
    }

    else
    {
      if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30) <= 4u)
      {
        if (v22 != 3)
        {

          v15 = 0;
          v16 = 0xE500000000000000;
          v17 = 0x74736E6F63;
          v14 = v20;
          result = v21;
          goto LABEL_16;
        }

        sub_1AFA9EF20(a1);
        if (sub_1AFADB4E4(v23, 2u))
        {
          if ((a2 & 2) != 0)
          {
            v24 = MEMORY[0x1E69E6878];
          }

          else
          {
            v24 = MEMORY[0x1E69E6270];
          }
        }

        else
        {
          sub_1AFA9EF20(a1);
        }

        v35 = sub_1AFAF9348(v24, 2u);
        v42 = v41;
        sub_1AFABCF1C(v18, v19, v21, v20, 3);
        v14 = v42;
        goto LABEL_54;
      }

      if (v22 == 5)
      {
        if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) - 20 >= 3)
        {
          if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) != 18)
          {
LABEL_3:
            sub_1AFA9EF20(a1);
            if (sub_1AFADB4E4(v7, 2u))
            {
LABEL_28:
              if ((a2 & 2) != 0)
              {
                v10 = MEMORY[0x1E69E6878];
              }

              else
              {
                v10 = MEMORY[0x1E69E6270];
              }

              goto LABEL_13;
            }

LABEL_11:
            v12 = a1;
LABEL_12:
            sub_1AFA9EF20(v12);
            goto LABEL_13;
          }

          sub_1AFA9EF20(a1);
          if (sub_1AFADB4E4(v43, 2u))
          {
            if ((a2 & 2) != 0)
            {
              v44 = MEMORY[0x1E69E6878];
            }

            else
            {
              v44 = MEMORY[0x1E69E6270];
            }
          }

          else
          {
            sub_1AFA9EF20(a1);
          }

          result = sub_1AFAF9348(v44, 2u);
        }

        else
        {
          v27 = sub_1AFA9F610(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10));
          if (v27 >> 61 != 5)
          {
            while (1)
            {
              sub_1AF445BE4(v27);
              sub_1AFDFE218();
              MEMORY[0x1B2718AE0](0xD000000000000015, 0x80000001AFF46470);
              sub_1AFDFE458();
              MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF46490);
LABEL_63:
              v27 = sub_1AFDFE518();
              __break(1u);
            }
          }

          v29 = *((v27 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          v28 = *((v27 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v30 = v27;

          sub_1AF445BE4(v30);
          v14 = v28;
          result = v29;
        }

        v17 = 0;
        v15 = 0;
        v16 = 0xE000000000000000;
        goto LABEL_16;
      }
    }

    sub_1AFA9EF20(a1);
    v32 = sub_1AFADB4E4(v31, 2u);
    if ((a2 & 2) != 0)
    {
      if (v32)
      {
        v34 = MEMORY[0x1E69E6878];
      }

      else
      {
        sub_1AFA9EF20(a1);
      }

      v38 = sub_1AFAF9348(v34, 2u);
      v40 = v39;
      sub_1AFABCF1C(v18, v19, v21, v20, v22);
      v14 = v40;
      v15 = 1;
      v16 = 0xE600000000000000;
      v17 = 0x646165726874;
      result = v38;
      goto LABEL_16;
    }

    if (v32)
    {
      v33 = MEMORY[0x1E69E6270];
    }

    else
    {
      sub_1AFA9EF20(a1);
    }

    v35 = sub_1AFAF9348(v33, 2u);
    v37 = v36;
    sub_1AFABCF1C(v18, v19, v21, v20, v22);
    v14 = v37;
LABEL_54:
    v15 = 0;
    v16 = 0xE500000000000000;
    v17 = 0x74736E6F63;
    result = v35;
    goto LABEL_16;
  }

LABEL_6:
  sub_1AFA9EF20(a1);
  v9 = sub_1AFADB4E4(v8, 2u);
  if ((a2 & 2) == 0)
  {
    if (v9)
    {
      v10 = MEMORY[0x1E69E6270];
LABEL_13:
      result = sub_1AFAF9348(v10, 2u);
      v15 = 0;
      v16 = 0xE500000000000000;
      v17 = 0x74736E6F63;
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  if (v9)
  {
    v11 = MEMORY[0x1E69E6878];
  }

  else
  {
    sub_1AFA9EF20(a1);
  }

  result = sub_1AFAF9348(v11, 2u);
  v15 = 1;
  v16 = 0xE600000000000000;
  v17 = 0x646165726874;
LABEL_16:
  *a3 = result;
  *(a3 + 8) = v14;
  *(a3 + 16) = v17;
  *(a3 + 24) = v16;
  *(a3 + 32) = v15;
  return result;
}

uint64_t sub_1AFAF500C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v36 = a1;
  v37 = a2;
  v4 = *(a3 + 16);
  if (!v4)
  {

    return a1;
  }

  v7 = (a3 + 72 * v4);
  v32 = a4;
  while (1)
  {
    if (!v7[3])
    {
      goto LABEL_10;
    }

    v16 = *(v7 - 5);
    v17 = *(v7 - 32);
    v18 = *(v7 - 3);
    v42 = *v7;
    if (a4 > 1u)
    {
      break;
    }

    sub_1AF443EE0(v16);
    sub_1AF444224(v18);

    sub_1AF443EE0(v16);
    sub_1AF444224(v18);
    sub_1AFA9EF20(v16);
    if (sub_1AFADB4E4(v19, a4))
    {
      if ((v17 & 2) != 0)
      {
        v20 = MEMORY[0x1E69E6878];
      }

      else
      {
        v20 = MEMORY[0x1E69E6270];
      }
    }

    else
    {
      sub_1AFA9EF20(v16);
    }

    v15 = sub_1AFAF9348(v20, a4);
    v14 = v25;
    *&v35 = v15;
    *(&v35 + 1) = v25;
    sub_1AFA9EF20(v16);
    if ((sub_1AFADB4E4(v26, a4) & 1) == 0)
    {
      MEMORY[0x1B2718AE0](38, 0xE100000000000000);
      v14 = *(&v35 + 1);
      v15 = v35;
    }

LABEL_9:
    v34[0] = v15;
    v34[1] = v14;
    sub_1AF95A6E4();
    sub_1AFDFCFE8();
    sub_1AF443F24(v16);
    sub_1AF444AF4(v18);
    sub_1AF443F24(v16);
    sub_1AF444AF4(v18);

LABEL_10:
    v7 -= 9;
    if (!--v4)
    {
      return v36;
    }
  }

  if (a4 == 2)
  {
    sub_1AF443EE0(v16);
    sub_1AF444224(v18);

    sub_1AF443EE0(v16);
    sub_1AF444224(v18);
    sub_1AFAF4B48(v16, v17, v38);
    v21 = v38[1];
    v33 = v38[0];
    v41[0] = v39;
    if ((*(&v39 + 1) & 0x2000000000000000) != 0)
    {
      v22 = HIBYTE(*(&v39 + 1)) & 0xFLL;
    }

    else
    {
      v22 = *&v41[0] & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      v35 = v39;

      sub_1AF450FE0(v41, v34);
      MEMORY[0x1B2718AE0](32, 0xE100000000000000);

      sub_1AF585778(v41);
      v24 = *(&v35 + 1);
      v23 = v35;
    }

    else
    {
      sub_1AF585778(v41);
      v23 = 0;
      v24 = 0xE000000000000000;
    }

    if (v40)
    {
      v28 = 38;
    }

    else
    {
      v28 = 0;
    }

    if (v40)
    {
      v29 = 0xE100000000000000;
    }

    else
    {
      v29 = 0xE000000000000000;
    }

    *&v35 = v23;
    *(&v35 + 1) = v24;
    MEMORY[0x1B2718AE0](v33, v21);

    MEMORY[0x1B2718AE0](v28, v29);

    v14 = *(&v35 + 1);
    v15 = v35;
    a4 = v32;
    goto LABEL_9;
  }

  if (a4 == 3)
  {
    sub_1AF443EE0(v16);
    sub_1AF444224(v18);

    sub_1AF443EE0(v16);
    sub_1AF444224(v18);
    sub_1AFA9EF20(v16);
    if (sub_1AFADB4E4(v27, 3u))
    {
      v9 = v17 & 2;
      if ((v17 & 2) != 0)
      {
        v8 = MEMORY[0x1E69E6878];
      }

      else
      {
        v8 = MEMORY[0x1E69E6270];
      }
    }

    else
    {
      sub_1AFA9EF20(v16);
      v9 = v17 & 2;
    }

    v10 = v9 == 0;
    v11 = 0x2074756F6E69;
    if (v10)
    {
      v11 = 0;
    }

    v12 = 0xE000000000000000;
    if (!v10)
    {
      v12 = 0xE600000000000000;
    }

    *&v35 = v11;
    *(&v35 + 1) = v12;
    v13 = sub_1AFAF9348(v8, 3u);
    MEMORY[0x1B2718AE0](v13);

    v14 = *(&v35 + 1);
    v15 = v35;
    goto LABEL_9;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFAF53E8(uint64_t a1)
{
  swift_unknownObjectRelease();

  return a1;
}

unint64_t sub_1AFAF5454()
{
  result = qword_1EB642938;
  if (!qword_1EB642938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642938);
  }

  return result;
}

unint64_t sub_1AFAF54D4()
{
  result = qword_1EB632128;
  if (!qword_1EB632128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632128);
  }

  return result;
}

uint64_t sub_1AFAF5528(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AFAF5748(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1AFAF5598()
{
  if (!qword_1ED726B68)
  {
    v0 = sub_1AFDFE1C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED726B68);
    }
  }
}

uint64_t sub_1AFAF55F0(uint64_t a1, uint64_t a2)
{
  sub_1AFAF5748(0, qword_1ED722118, &type metadata for Lexer.Token, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AFAF5678()
{
  result = qword_1EB642940;
  if (!qword_1EB642940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642940);
  }

  return result;
}

void sub_1AFAF56CC()
{
  if (!qword_1ED722BE0)
  {
    sub_1AFAF5748(255, &qword_1ED722BE8, MEMORY[0x1E69E67B0], MEMORY[0x1E69E9280]);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED722BE0);
    }
  }
}

void sub_1AFAF5748(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AFAF5798(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AFAF57F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AFAF5860()
{
  result = qword_1EB630E10;
  if (!qword_1EB630E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB630E10);
  }

  return result;
}

unint64_t sub_1AFAF58B4()
{
  result = qword_1EB630C58;
  if (!qword_1EB630C58)
  {
    sub_1AFAF57F8(255, &qword_1EB630C50, sub_1AFAF5860, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6EA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB630C58);
  }

  return result;
}

void sub_1AFAF5944(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AFAF59A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t initializeWithCopy for Lexer.Token(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;

  return a1;
}

uint64_t assignWithCopy for Lexer.Token(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithTake for Lexer.Token(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;

  return a1;
}

uint64_t destroy for ScriptParser.ParsedScriptParameter(unint64_t *a1)
{
  sub_1AF443F24(*a1);
  v2 = a1[2];
  if ((~v2 & 0xF000000000000007) != 0)
  {
    sub_1AF443F24(v2);
  }
}

uint64_t initializeWithCopy for ScriptParser.ParsedScriptParameter(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  sub_1AF443EE0(*a2);
  *a1 = v4;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((~v5 & 0xF000000000000007) != 0)
  {
    sub_1AF443EE0(*(a2 + 16));
  }

  v6 = *(a2 + 24);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;

  return a1;
}

uint64_t assignWithCopy for ScriptParser.ParsedScriptParameter(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  sub_1AF443EE0(*a2);
  v5 = *a1;
  *a1 = v4;
  sub_1AF443F24(v5);
  v7 = (a1 + 16);
  v6 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = v8 & 0xF000000000000007;
  if ((~v6 & 0xF000000000000007) != 0)
  {
    if (v9 == 0xF000000000000007)
    {
      sub_1AFABD940((a1 + 16));
      *v7 = *(a2 + 16);
    }

    else
    {
      sub_1AF443EE0(*(a2 + 16));
      v10 = *v7;
      *v7 = v8;
      sub_1AF443F24(v10);
    }
  }

  else
  {
    if (v9 != 0xF000000000000007)
    {
      sub_1AF443EE0(*(a2 + 16));
    }

    *v7 = v8;
  }

  v11 = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v11;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t assignWithTake for ScriptParser.ParsedScriptParameter(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;
  sub_1AF443F24(v4);
  v6 = (a1 + 16);
  v5 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);
  v7 = *(a2 + 16);
  if ((~v5 & 0xF000000000000007) != 0)
  {
    if ((~v7 & 0xF000000000000007) != 0)
    {
      *v6 = v7;
      sub_1AF443F24(v5);
      goto LABEL_6;
    }

    sub_1AFABD940((a1 + 16));
  }

  *v6 = v7;
LABEL_6:
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v8 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v8;

  return a1;
}

uint64_t getEnumTagSinglePayload for ScriptParser.ParsedScriptParameter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ScriptParser.ParsedScriptParameter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t destroy for ScriptParser.Cursor()
{
  swift_unknownObjectRelease();
}

uint64_t initializeWithCopy for ScriptParser.Cursor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v3 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v3;
  swift_unknownObjectRetain();

  return a1;
}

uint64_t assignWithCopy for ScriptParser.Cursor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t assignWithTake for ScriptParser.Cursor(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;

  return a1;
}

unint64_t sub_1AFAF603C()
{
  result = qword_1EB642950;
  if (!qword_1EB642950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642950);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Lexer(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1AFAF6160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  v10 = *a3;
  v11 = sub_1AFDFDFE8();
  v12 = *(v10 + *MEMORY[0x1E69E77B0] + 8);
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = v12;
  *(a5 + 32) = v11;
  *(a5 + 40) = v13 & 1;
  *(a5 + 42) = a4;
}

uint64_t sub_1AFAF6214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v9 = qword_1EB633620;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = off_1EB633628;
  v11 = sub_1AFAF6B54(a3, a4, a1, ObjectType);
  if (v11 != 1)
  {
    v12 = v11;
LABEL_13:

    return v12;
  }

  if (sub_1AFAF67A8(a2, a3, a4))
  {
    if (ObjectType == sub_1AFDFDFD8())
    {
      swift_retain_n();
      v12 = a1;
    }

    else if ((*(a4 + 8))(a2, a3, a4))
    {
      sub_1AFDFE008();
      v12 = sub_1AFDFE628();
    }

    else
    {
      v12 = 0;
    }

    os_unfair_lock_lock(v10[5]);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = v10[6];
    v10[6] = 0x8000000000000000;
    sub_1AF85177C(v12, a3, a4, a1, ObjectType, isUniquelyReferenced_nonNull_native);

    v10[6] = v15;
    os_unfair_lock_unlock(v10[5]);

    goto LABEL_13;
  }

  return 0;
}

uint64_t sub_1AFAF6430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = (*(a4 + 16))(a3, a4);
  v8 = *(v7 + 16);
  if (v8)
  {
    v20 = a5;
    v9 = (v7 + 74);
    while (1)
    {
      v10 = *(v9 - 21);
      v11 = *(v9 - 17);
      v12 = *(v9 - 13);
      v13 = *(v9 - 9);
      v14 = *(v9 - 5);
      v15 = *(v9 - 2);
      v16 = *v9;
      if (v10 == a1 && v11 == a2)
      {
        break;
      }

      if (sub_1AFDFEE28())
      {
        goto LABEL_12;
      }

      v9 += 24;
      if (!--v8)
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v18 = 0;
        goto LABEL_13;
      }
    }

    v10 = a1;
LABEL_12:
    v18 = v15 | (v16 << 16);

LABEL_13:
    a5 = v20;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v18 = 0;
  }

  *a5 = v10;
  *(a5 + 8) = v11;
  *(a5 + 16) = v12;
  *(a5 + 24) = v13;
  *(a5 + 32) = v14;
  *(a5 + 40) = v18;
  return result;
}

double sub_1AFAF6564@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (a3)
  {
    (*(a6 + 24))(v12, a1, a2, a3, a4, 0, a5);
  }

  else
  {
    sub_1AFAF65F4(a1, a2, a4, a5, a6, v12);
  }

  v8 = v13;
  v9 = v14;
  result = *v12;
  v11 = v12[1];
  *a7 = v12[0];
  *(a7 + 16) = v11;
  *(a7 + 32) = v8;
  *(a7 + 40) = v9;
  return result;
}

uint64_t sub_1AFAF65F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = a2;
  v10 = a1;
  result = sub_1AFAF6430(a1, a2, a4, a5, v28);
  if (!*(&v28[0] + 1))
  {
    v17 = *(a5 + 40);

    v18 = v17(a4, a5);
    v19 = *(v18 + 16);
    if (v19)
    {
      v26 = 0;
      v20 = v18 + 80;
      do
      {
        v21 = *(v20 - 48);
        if (v21 > a3)
        {
          v22 = *(v20 - 24);
          v23 = *(v20 - 16);
          v24 = v10 == *(v20 - 40) && v9 == *(v20 - 32);
          if (v24 || (sub_1AFDFEE28() & 1) != 0)
          {

            v26 = v21;
            v10 = v22;
            v9 = v23;
          }
        }

        v20 += 56;
        --v19;
      }

      while (v19);

      if (v26)
      {
        sub_1AFAF65F4(v31, v10, v9);
        v25 = v31[0];
        v27 = v31[1];
        v14 = v32;
        v13 = v33;

        v16 = v25;
        v15 = v27;
        goto LABEL_18;
      }
    }

    else
    {
    }

    v14 = 0;
    v13 = 0;
    v16 = 0uLL;
    v15 = 0uLL;
    goto LABEL_18;
  }

  v13 = v30;
  v14 = v29;
  v15 = v28[1];
  v16 = v28[0];
LABEL_18:
  *a6 = v16;
  *(a6 + 16) = v15;
  *(a6 + 32) = v14;
  *(a6 + 40) = v13;
  return result;
}

BOOL sub_1AFAF67A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!(*(a3 + 8))())
  {
    return 1;
  }

  sub_1AFDFDFC8();
  v4 = v3;

  if (!v4)
  {
    return 1;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = sub_1AFDFCEC8();

    v8 = [v6 valueForKeyPath_];

    if (v8)
    {
      sub_1AFDFDFB8();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_1AF449D40(&v10, v11);
    }

    else
    {
      swift_unknownObjectRelease();
      memset(v11, 0, sizeof(v11));
    }

    sub_1AF44CB60(v11);
    return v8 != 0;
  }

  else
  {

    swift_unknownObjectRelease();
    return 1;
  }
}

uint64_t sub_1AFAF68E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](a1);
  sub_1AFDFE008();
  sub_1AFDFCD08();
  MEMORY[0x1B271ACB0](a4);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFAF697C()
{
  v1 = v0[3];
  MEMORY[0x1B271ACB0](*v0);
  sub_1AFDFE008();
  sub_1AFDFCD08();
  return MEMORY[0x1B271ACB0](v1);
}

uint64_t sub_1AFAF69EC()
{
  v1 = *v0;
  v2 = v0[3];
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](v1);
  sub_1AFDFE008();
  sub_1AFDFCD08();
  MEMORY[0x1B271ACB0](v2);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFAF6A6C(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a2[2];
  v4 = a2[3];
  v5 = a1[2];
  v6 = a1[3];
  sub_1AFDFE008();
  return MEMORY[0x1B2719A10](v5, v3) & (v6 == v4);
}

void *sub_1AFAF6ADC()
{
  type metadata accessor for ScriptKeyPathCache();
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *v1 = 0;
  *(v0 + 16) = "ScriptKeyPathCache";
  *(v0 + 24) = 18;
  *(v0 + 32) = 2;
  *(v0 + 40) = v1;
  result = sub_1AF42E9B0(MEMORY[0x1E69E7CC0]);
  *(v0 + 48) = result;
  off_1EB633628 = v0;
  return result;
}

uint64_t sub_1AFAF6B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  os_unfair_lock_lock(*(v4 + 40));
  v10 = *(v4 + 48);
  if (*(v10 + 16))
  {

    v11 = sub_1AF419CA8(a1, a2, a3, a4);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 1;
  }

  os_unfair_lock_unlock(*(v5 + 40));
  return v13;
}

uint64_t sub_1AFAF6BFC()
{

  return swift_deallocClassInstance();
}

uint64_t ScriptKeyPathReference.hash(into:)()
{
  v1 = *(v0 + 24);
  if (v1 < 0)
  {
    MEMORY[0x1B271ACB0](1);
    sub_1AFDFE008();
    sub_1AFDFCD08();
    sub_1AFDFD038();
    return MEMORY[0x1B271ACB0](v1 & 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
    MEMORY[0x1B271ACB0](0);
    sub_1AFDFE008();
    return sub_1AFDFCD08();
  }
}

uint64_t ScriptKeyPathReference.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_1AFDFF288();
  if (v1 < 0)
  {
    MEMORY[0x1B271ACB0](1);
    sub_1AFDFE008();
    sub_1AFDFCD08();
    sub_1AFDFD038();
    MEMORY[0x1B271ACB0](v1 & 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
    MEMORY[0x1B271ACB0](0);
    sub_1AFDFE008();
    sub_1AFDFCD08();
  }

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFAF6DD8()
{
  sub_1AFDFF288();
  ScriptKeyPathReference.hash(into:)();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFAF6E84()
{
  sub_1AFDFF288();
  v0 = sub_1AFDFDFD8();
  MEMORY[0x1B271ACB0](v0);
  sub_1AFDFD038();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFAF6F10()
{
  v0 = sub_1AFDFDFD8();
  MEMORY[0x1B271ACB0](v0);

  return sub_1AFDFD038();
}

uint64_t sub_1AFAF6F8C()
{
  sub_1AFDFF288();
  v0 = sub_1AFDFDFD8();
  MEMORY[0x1B271ACB0](v0);
  sub_1AFDFD038();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFAF7014()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1AFDFDFD8();
  v4 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](46, 0xE100000000000000);
  MEMORY[0x1B2718AE0](v1, v2);
  return v4;
}

uint64_t sub_1AFAF70A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = sub_1AFDFDFD8();
  if (v6 != sub_1AFDFDFD8())
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1AFDFEE28();
}

uint64_t sub_1AFAF7198(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v4, v5);
  sub_1AFDFEBE8();
  if (!v2)
  {
    sub_1AFDFDFD8();
    sub_1AF448018(v4, v5);
    sub_1AF6457DC();
    sub_1AFDFEC38();
    if ((*(v1 + 42) & 0x400) != 0)
    {
      sub_1AF448018(v4, v5);
      sub_1AFDFEC38();
    }
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v4);
}

double sub_1AFAF72F8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AFAF7D20(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 12);
    *(a2 + 28) = *(v7 + 12);
  }

  return result;
}

BOOL _s3VFX22ScriptKeyPathReferenceO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  if ((v4 & 0x8000000000000000) == 0)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      sub_1AFDFE008();
      sub_1AFAF75C8(v6, v7, v9, v8);
      sub_1AFAF75C8(v3, v2, v5, v4);
      v10 = MEMORY[0x1B2719A10](v3, v6);
      sub_1AFAF7624(v3, v2, v5, v4);
      sub_1AFAF7624(v6, v7, v9, v8);
      return v10 & 1;
    }

    goto LABEL_5;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
LABEL_5:
    sub_1AFAF75C8(*a2, a2[1], v9, v8);
    sub_1AFAF75C8(v3, v2, v5, v4);
LABEL_6:
    sub_1AFAF7624(v3, v2, v5, v4);
    sub_1AFAF7624(v6, v7, v9, v8);
    return 0;
  }

  sub_1AFDFE008();
  sub_1AFAF75C8(v6, v7, v9, v8);
  sub_1AFAF75C8(v3, v2, v5, v4);
  if ((MEMORY[0x1B2719A10](v3, v6) & 1) == 0)
  {
    goto LABEL_6;
  }

  if (v2 == v7 && v5 == v9)
  {
    sub_1AFAF7624(v3, v2, v5, v4);
    sub_1AFAF7624(v6, v2, v5, v8);
    return v4 == v8;
  }

  v12 = sub_1AFDFEE28();
  sub_1AFAF7624(v3, v2, v5, v4);
  sub_1AFAF7624(v6, v7, v9, v8);
  result = 0;
  if (v12)
  {
    return v4 == v8;
  }

  return result;
}

unint64_t sub_1AFAF7550()
{
  result = qword_1EB642958;
  if (!qword_1EB642958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642958);
  }

  return result;
}

uint64_t sub_1AFAF75C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 0)
  {
  }

  else
  {
  }
}

uint64_t sub_1AFAF7624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  if (a4 < 0)
  {
  }

  return result;
}

uint64_t *initializeWithCopy for ScriptKeyPathReference(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  sub_1AFAF75C8(*a2, v4, v5, v6);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return a1;
}

uint64_t *assignWithCopy for ScriptKeyPathReference(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  sub_1AFAF75C8(*a2, v4, v5, v6);
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  sub_1AFAF7624(v7, v8, v9, v10);
  return a1;
}

uint64_t *assignWithTake for ScriptKeyPathReference(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v5 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v7 = a2[1];
  *a1 = *a2;
  *(a1 + 1) = v7;
  sub_1AFAF7624(v3, v5, v4, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScriptKeyPathReference(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 32))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = (((*(a1 + 24) >> 50) >> 13) | (2 * ((*(a1 + 24) >> 50) & 0x1C00 | ((*(a1 + 24) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ScriptKeyPathReference(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x3FFF;
    *(result + 8) = 0;
    if (a3 >= 0x3FFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1FFF | ((-a2 & 0x3FFF) << 13);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1AFAF7878(void *result, uint64_t a2)
{
  v2 = result[3] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  result[3] = v2;
  return result;
}

_OWORD *initializeWithCopy for ScriptKeyPathCache.ResolveRequest(_OWORD *a1, _OWORD *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t assignWithCopy for ScriptKeyPathCache.ResolveRequest(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

_OWORD *assignWithTake for ScriptKeyPathCache.ResolveRequest(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

uint64_t destroy for ScriptKeyPath()
{
}

uint64_t initializeWithCopy for ScriptKeyPath(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 42) = *(a2 + 42);

  return a1;
}

uint64_t assignWithCopy for ScriptKeyPath(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v4;
  *(a1 + 42) = *(a2 + 42);
  return a1;
}

uint64_t assignWithTake for ScriptKeyPath(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 42) = *(a2 + 42);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScriptKeyPath(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 44))
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

uint64_t storeEnumTagSinglePayload for ScriptKeyPath(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 44) = 1;
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

    *(result + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AFAF7BDC()
{
  result = qword_1EB642960;
  if (!qword_1EB642960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642960);
  }

  return result;
}

unint64_t sub_1AFAF7C34()
{
  result = qword_1EB633630;
  if (!qword_1EB633630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633630);
  }

  return result;
}

uint64_t sub_1AFAF7C88()
{
  sub_1AF4486E4();
  v0 = sub_1AFDFDE98();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t sub_1AFAF7D20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF388();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF448018(v45, v46);
  v5 = sub_1AFDFEA78();
  v7 = v6;
  *&v43 = v5;
  sub_1AF448018(v45, v46);
  sub_1AF645788();
  sub_1AFDFEAD8();
  v42 = v7;
  v9 = *&v44[0];
  v10 = swift_conformsToProtocol2();
  if (v10)
  {
    if (*&v44[0])
    {
      v11 = v10;
      sub_1AF441150(v45, v46);
      if ((sub_1AFDFEB18() & 1) == 0)
      {
        sub_1AF448018(v45, v46);
        sub_1AFDFEAD8();
        v38 = *&v44[0];
        memset(v44, 0, sizeof(v44));
        v39 = sub_1AF4917E4(v43, v42, v38, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, v44, 0, v9, v11);

        sub_1AF44CB60(v44);
        v20 = *(v39 + 16);
        v19 = *(v39 + 24);
        v43 = *(v39 + 32);
        v40 = *(v39 + 48);
        v22 = *(v39 + 56);
        v23 = *(v39 + 58);

        v21 = v40;

        goto LABEL_24;
      }
    }
  }

  v12 = swift_conformsToProtocol2();
  if (!v12 || !*&v44[0])
  {
    v24 = swift_conformsToProtocol2();
    if (v24 && *&v44[0])
    {
      v25 = v24;
      sub_1AF441150(v45, v46);
      v26 = sub_1AFDFEA68();
      if ((v27 & 1) != 0 || v26 != 3)
      {
        v35 = a1[3];
        v36 = a1[4];
        sub_1AF441150(a1, v35);
        v37 = sub_1AF695174(v35, v36);
        sub_1AFAF65F4(v43, v42, v37, *&v44[0], v25, &v53);
        v19 = v54;
        if (v54)
        {
          v23 = v58;
          v43 = v55;
          v20 = v53;
          v60 = v57;
          v21 = v56;

          v22 = v60;
          goto LABEL_24;
        }

        sub_1AFDFE218();

        *&v44[0] = 0xD00000000000001CLL;
        *(&v44[0] + 1) = 0x80000001AFF46E90;
        MEMORY[0x1B2718AE0](v43, v42);
      }

      else
      {
        sub_1AF448018(v45, v46);
        sub_1AFDFEAD8();
        v28 = a1[3];
        v29 = a1[4];
        sub_1AF441150(a1, v28);
        v30 = sub_1AF695174(v28, v29);
        (*(v25 + 24))(&v47, v43, v42, *&v44[0], v30, 0, *&v44[0], v25);
        v19 = v48;
        if (v48)
        {
          v23 = v52;
          v21 = v50;
          v43 = v49;
          v59 = v51;
          v20 = v47;

          v22 = v59;
          goto LABEL_24;
        }

        sub_1AFDFE218();

        *&v44[0] = 0xD000000000000023;
        *(&v44[0] + 1) = 0x80000001AFF46EB0;
        MEMORY[0x1B2718AE0](v43, v42);
      }

      goto LABEL_21;
    }

    *&v44[0] = 0;
    *(&v44[0] + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    v31 = 0x80000001AFF46E60;
    v32 = 0xD000000000000022;
LABEL_20:
    *&v44[0] = v32;
    *(&v44[0] + 1) = v31;
    MEMORY[0x1B2718AE0](v43, v42);
LABEL_21:

    v33 = v44[0];
    sub_1AF4567E0();
    swift_allocError();
    *v34 = v33;
    *(v34 + 16) = 32;
    swift_willThrow();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v45);
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v14 = v12;
  v41 = &v41;
  v15 = *(*&v44[0] - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF6461F4(v9, v14);
  v18 = sub_1AF64622C(v43, v42, v9, v14);
  (*(v15 + 8))(v17, v9);
  if (!v18)
  {
    *&v44[0] = 0;
    *(&v44[0] + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    v31 = 0x80000001AFF46EE0;
    v32 = 0xD00000000000001DLL;
    goto LABEL_20;
  }

  v20 = *(v18 + 16);
  v19 = *(v18 + 24);
  v43 = *(v18 + 32);
  v21 = *(v18 + 48);
  v22 = *(v18 + 56);
  v23 = *(v18 + 58);

LABEL_24:
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v45);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v20;
  *(a2 + 8) = v19;
  *(a2 + 16) = v43;
  *(a2 + 32) = v21;
  *(a2 + 40) = v22;
  *(a2 + 42) = v23;
  return result;
}

uint64_t destroy for ScriptKeyPathMigration()
{
}

uint64_t initializeWithCopy for ScriptKeyPathMigration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;

  return a1;
}

uint64_t assignWithCopy for ScriptKeyPathMigration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for ScriptKeyPathMigration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  return a1;
}

uint64_t getEnumTagSinglePayload for ScriptKeyPathMigration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for ScriptKeyPathMigration(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1AFAF8704(uint64_t a1, unint64_t a2, __int16 *a3)
{
  v6 = *a3;
  type metadata accessor for MetalToolchainCodeLoader();
  v7 = swift_allocObject();
  *(v7 + 128) = 0;
  *(v7 + 136) = 0;
  sub_1AF45207C();
  v9 = v8;
  v15 = v6;
  type metadata accessor for XcodeCommandBuilder();
  swift_allocObject();
  v10 = sub_1AF45D418(&v15);
  if (v10)
  {
    *(v9 + 120) = v10;

    v11 = sub_1AF452240(a1, a2);
    if (v3)
    {
    }

    else
    {
      sub_1AF454174(v11, v12);

      sub_1AFDFC018();
    }
  }

  else
  {
    sub_1AF81F330();
    swift_allocError();
    *v13 = 0;
    v13[1] = 0;
    swift_willThrow();
  }
}

uint64_t sub_1AFAF888C()
{
  sub_1AF4486E4();
  v0 = sub_1AFDFDE98();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = v0 + 32;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      v8 = (v3 + 16 * v2);
      v10 = *v8;
      v9 = v8[1];
      swift_bridgeObjectRetain_n();
      while (1)
      {
        v12 = sub_1AFDFD108();
        if (!v13)
        {
          break;
        }

        if (v12 == 32 && v13 == 0xE100000000000000)
        {
        }

        else
        {
          v11 = sub_1AFDFEE28();

          if ((v11 & 1) == 0)
          {

            v21 = sub_1AFDFD1A8();
            v22 = v17;

            MEMORY[0x1B2718AE0](v10, v9);

            v5 = v21;
            v6 = v22;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = sub_1AF420554(0, *(v4 + 2) + 1, 1, v4);
            }

            v15 = *(v4 + 2);
            v18 = *(v4 + 3);
            v16 = v15 + 1;
            if (v15 >= v18 >> 1)
            {
              v4 = sub_1AF420554(v18 > 1, v15 + 1, 1, v4);
            }

            goto LABEL_4;
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1AF420554(0, *(v4 + 2) + 1, 1, v4);
      }

      v15 = *(v4 + 2);
      v14 = *(v4 + 3);
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        v4 = sub_1AF420554(v14 > 1, v15 + 1, 1, v4);
      }

      v5 = 0;
      v6 = 0xE000000000000000;
LABEL_4:
      ++v2;
      *(v4 + 2) = v16;
      v7 = &v4[16 * v15];
      *(v7 + 4) = v5;
      *(v7 + 5) = v6;
    }

    while (v2 != v1);
  }

  sub_1AFB12AC4(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AF488088();
  v19 = sub_1AFDFCD98();

  return v19;
}

uint64_t sub_1AFAF8B58(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8)
{
  v79 = a6;
  v80 = a7;
  v77 = a3;
  v78 = a4;
  v75 = a1;
  v76 = a2;
  v10 = sub_1AFDFC318();
  v72 = *(v10 - 8);
  v73 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v71 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFB0EF20(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v71 - v19;
  v21 = type metadata accessor for ScriptIndex();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = (&v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v71 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = (&v71 - v32);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v71 - v36;
  v74 = a8;
  sub_1AFB12858(a8, v20);
  v38 = *(v22 + 48);
  if (v38(v20, 1, v21) == 1)
  {
    sub_1AF687E28(v20);
  }

  else
  {
    sub_1AFB128EC(v20, v37);
    sub_1AFB12BD8(v37, v33, type metadata accessor for ScriptIndex);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1AFB12B14(v33, type metadata accessor for ScriptIndex);
      v39 = v37;
    }

    else
    {
      v40 = *v33;
      v41 = v33[1];
      if (v40 != -1 || v41 != 0)
      {
        LODWORD(v83[0]) = v40;
        v84 = sub_1AFDFEA08();
        v85 = v43;
        MEMORY[0x1B2718AE0](95, 0xE100000000000000);
        LODWORD(v83[0]) = v41;
        v44 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v44);

        v46 = v84;
        v45 = v85;
        sub_1AFB12B14(v37, type metadata accessor for ScriptIndex);
        goto LABEL_13;
      }

      v39 = v37;
    }

    sub_1AFB12B14(v39, type metadata accessor for ScriptIndex);
  }

  LODWORD(v83[0]) = a5;
  v84 = sub_1AFDFEA08();
  v85 = v47;
  MEMORY[0x1B2718AE0](95, 0xE100000000000000);
  LODWORD(v83[0]) = HIDWORD(a5);
  v48 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v48);

  v46 = v84;
  v45 = v85;
LABEL_13:
  sub_1AFB12858(v74, v16);
  if (v38(v16, 1, v21) == 1)
  {
    sub_1AF687E28(v16);
    v49 = 0;
    v50 = 0xE000000000000000;
  }

  else
  {
    sub_1AFB128EC(v16, v29);
    sub_1AFB12BD8(v29, v25, type metadata accessor for ScriptIndex);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v52 = v72;
      v51 = v73;
      v53 = *(v72 + 32);
      v74 = v46;
      v54 = v71;
      v53(v71, v25, v73);
      v84 = sub_1AFDFC2B8();
      v85 = v55;
      v83[0] = 45;
      v83[1] = 0xE100000000000000;
      v81 = 95;
      v82 = 0xE100000000000000;
      sub_1AF4486E4();
      v49 = sub_1AFDFDEB8();
      v50 = v56;
      v57 = v54;
      v46 = v74;
      (*(v52 + 8))(v57, v51);
      sub_1AFB12B14(v29, type metadata accessor for ScriptIndex);
    }

    else
    {
      LODWORD(v84) = *v25;
      v49 = sub_1AFDFEA08();
      v50 = v58;
      sub_1AFB12B14(v29, type metadata accessor for ScriptIndex);
    }
  }

  v84 = v75;
  v85 = v76;
  strcpy(v83, "%SCRIPT_ID%");
  HIDWORD(v83[1]) = -352321536;
  v81 = 0xD00000000000001ELL;
  v82 = 0x80000001AFF47E30;
  sub_1AF4486E4();
  v84 = sub_1AFDFDEB8();
  v85 = v59;
  strcpy(v83, "%PROJECT%");
  WORD1(v83[1]) = 0;
  HIDWORD(v83[1]) = -385875968;
  v81 = v77;
  v82 = v78;
  v60 = sub_1AFDFDEB8();
  v62 = v61;

  v84 = v60;
  v85 = v62;
  v83[0] = 0x25444E494B25;
  v83[1] = 0xE600000000000000;
  v81 = v79;
  v82 = v80;
  v63 = sub_1AFDFDEB8();
  v65 = v64;

  v84 = v63;
  v85 = v65;
  strcpy(v83, "%ENTITY%");
  BYTE1(v83[1]) = 0;
  WORD1(v83[1]) = 0;
  HIDWORD(v83[1]) = -402653184;
  v81 = v46;
  v82 = v45;
  v66 = sub_1AFDFDEB8();
  v68 = v67;

  v84 = v66;
  v85 = v68;
  strcpy(v83, "%ORIG_ENTITY%");
  HIWORD(v83[1]) = -4864;
  v81 = v49;
  v82 = v50;
  v69 = sub_1AFDFDEB8();

  return v69;
}

uint64_t sub_1AFAF9348(uint64_t a1, unsigned __int8 a2)
{
  if (a2 < 3u)
  {
    LOBYTE(v2) = a2;
    if (swift_dynamicCastMetatype())
    {
      return 1819242338;
    }

    if (swift_dynamicCastMetatype())
    {
      v4 = 0x5F38746E6975;
      return v4 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x745F3631746E6975;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x745F3233746E6975;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x745F3436746E6975;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x745F3436746E69;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x745F38746E69;
    }

    if (swift_dynamicCastMetatype())
    {
      v4 = 0x5F3631746E69;
      return v4 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
    }

    if (swift_dynamicCastMetatype())
    {
      v4 = 0x5F3233746E69;
      return v4 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x745F3436746E69;
    }

    sub_1AF67C994(0, &qword_1ED722EC8, sub_1AF477C08, MEMORY[0x1E69E72F0], MEMORY[0x1E69E7428]);
    if (swift_dynamicCastMetatype())
    {
      return 0x746E695F646D6973;
    }

    sub_1AF67C994(0, &qword_1ED722EC0, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7428]);
    if (swift_dynamicCastMetatype())
    {
      return 0x6E69755F646D6973;
    }

    sub_1AF67C994(0, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
    if (swift_dynamicCastMetatype())
    {
      return 0x6E69755F646D6973;
    }

    sub_1AF67C994(0, &qword_1ED722EB8, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E74A8]);
    if (swift_dynamicCastMetatype())
    {
      return 0x6E69755F646D6973;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x656C62756F64;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x74616F6C66;
    }

    sub_1AF67C994(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    if (swift_dynamicCastMetatype())
    {
      return 0x6F6C665F646D6973;
    }

    sub_1AF67C994(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    if (swift_dynamicCastMetatype())
    {
      return 0x6F6C665F646D6973;
    }

    sub_1AF67C994(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    if (swift_dynamicCastMetatype())
    {
      return 0x6F6C665F646D6973;
    }

    sub_1AF80AF34(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    if (swift_dynamicCastMetatype())
    {
      return 0x616F6C665F786676;
    }

    sub_1AF80AF34(0, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    if (swift_dynamicCastMetatype())
    {
      return 0x5F746E695F786676;
    }

    type metadata accessor for simd_quatf(0);
    if (swift_dynamicCastMetatype())
    {
      if (v2 <= 1u)
      {
        v6 = sub_1AFDFEE28();

        result = 0x6F6C665F646D6973;
        if ((v6 & 1) == 0)
        {
          return 0x6175715F646D6973;
        }

        return result;
      }
    }

    else
    {
      type metadata accessor for simd_float2x2(0);
      if (!swift_dynamicCastMetatype())
      {
        type metadata accessor for simd_float2x3(0);
        v5 = swift_dynamicCastMetatype();
        if (!v5)
        {
          while (1)
          {
            type metadata accessor for simd_float2x4(v5);
            if (swift_dynamicCastMetatype())
            {
              break;
            }

            type metadata accessor for simd_float3x2(0);
            if (swift_dynamicCastMetatype())
            {
              break;
            }

            type metadata accessor for simd_float3x3(0);
            if (swift_dynamicCastMetatype())
            {
              break;
            }

            type metadata accessor for simd_float3x4(0);
            if (swift_dynamicCastMetatype())
            {
              break;
            }

            type metadata accessor for simd_float4x2(0);
            if (swift_dynamicCastMetatype())
            {
              break;
            }

            type metadata accessor for simd_float4x3(0);
            if (swift_dynamicCastMetatype())
            {
              break;
            }

            type metadata accessor for simd_float4x4(0);
            if (swift_dynamicCastMetatype())
            {
              break;
            }

            if (swift_dynamicCastMetatype())
            {
              return 0x2A64696F76;
            }

            sub_1AFB12AC4(0, &qword_1ED722038, MEMORY[0x1E69E6270], MEMORY[0x1E69E6720]);
            if (swift_dynamicCastMetatype())
            {
              return 0x2A64696F76;
            }

            if (swift_dynamicCastMetatype())
            {
              return 0x2A64696F76;
            }

            sub_1AFB12AC4(0, &unk_1ED721F60, MEMORY[0x1E69E6878], MEMORY[0x1E69E6720]);
            if (swift_dynamicCastMetatype())
            {
              return 0x2A64696F76;
            }

            if (swift_dynamicCastMetatype())
            {
              return 0x2A64696F76;
            }

            sub_1AFB12AC4(0, &qword_1EB642968, MEMORY[0x1E69E6B70], MEMORY[0x1E69E6720]);
            if (swift_dynamicCastMetatype())
            {
              return 0x2A64696F76;
            }

            type metadata accessor for __vfx_sampler1d(0);
            if (swift_dynamicCastMetatype())
            {
              return 0x706D61735F786676;
            }

            type metadata accessor for __vfx_sampler2d(0);
            if (swift_dynamicCastMetatype())
            {
              return 0x706D61735F786676;
            }

            type metadata accessor for __vfx_sampler3d(0);
            if (swift_dynamicCastMetatype())
            {
              return 0x706D61735F786676;
            }

            type metadata accessor for frame_constants(0);
            if (swift_dynamicCastMetatype())
            {
              return 0x6F635F656D617266;
            }

            if (swift_dynamicCastMetatype())
            {
              return 0x656C636974726170;
            }

            if (swift_dynamicCastMetatype())
            {
              return 1718378856;
            }

            if (swift_dynamicCastMetatype())
            {
              return 0x32666C6168;
            }

            if (swift_dynamicCastMetatype())
            {
              return 0x33666C6168;
            }

            if (swift_dynamicCastMetatype())
            {
              return 0x34666C6168;
            }

            type metadata accessor for pbr_lighting_parameters(0);
            if (swift_dynamicCastMetatype())
            {
              return 0xD000000000000017;
            }

            sub_1AFB12AC4(0, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
            if (swift_dynamicCastMetatype())
            {
              return 0x2A2074616F6C66;
            }

            type metadata accessor for vfx_script_buffer(0);
            if (swift_dynamicCastMetatype())
            {
              return 0xD000000000000011;
            }

            if (!swift_dynamicCastMetatype())
            {
              v7 = sub_1AFDFF4B8();
              MEMORY[0x1B2718AE0](v7);

              MEMORY[0x1B2718AE0](544106784, 0xE400000000000000);
              if (v2)
              {
                if (v2 == 1)
                {
                  v2 = 0xE600000000000000;
                  v8 = 0x7070436A624FLL;
                }

                else
                {
                  v2 = 0xE500000000000000;
                  v8 = 0x6C6174654DLL;
                }
              }

              else
              {
                v2 = 0xE100000000000000;
                v8 = 67;
              }

              MEMORY[0x1B2718AE0](v8, v2);
            }

LABEL_55:
            v5 = sub_1AFDFE518();
            __break(1u);
          }
        }

        return 0x6F6C665F646D6973;
      }
    }

    return 0x6F6C665F646D6973;
  }

  if (a2 != 3)
  {
    goto LABEL_55;
  }

  return sub_1AF75D128();
}

uint64_t sub_1AFAF9FBC()
{
  result = sub_1AFAF9FE0();
  qword_1ED73B400 = result;
  *algn_1ED73B408 = v1;
  return result;
}

uint64_t sub_1AFAF9FE0()
{
  v0 = sub_1AFDFC128();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF45F940();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = sub_1AFDFCEC8();
  v8 = sub_1AFDFCEC8();
  v9 = [v6 URLForResource:v7 withExtension:v8];

  sub_1AFDFC0B8();
  v10 = sub_1AFDFCEA8();
  (*(v1 + 8))(v4, v0);
  return v10;
}

uint64_t sub_1AFAFA198()
{
  result = sub_1AFAFA1BC();
  qword_1EB6C35A8 = result;
  unk_1EB6C35B0 = v1;
  return result;
}

uint64_t sub_1AFAFA1BC()
{
  v0 = sub_1AFDFC128();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF45F940();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = sub_1AFDFCEC8();
  v8 = sub_1AFDFCEC8();
  v9 = [v6 URLForResource:v7 withExtension:v8];

  sub_1AFDFC0B8();
  v10 = sub_1AFDFCEA8();
  (*(v1 + 8))(v4, v0);
  return v10;
}

uint64_t sub_1AFAFA374()
{
  sub_1AFDFE218();

  MEMORY[0x1B2718AE0](v0[5], v0[6]);
  v1 = MEMORY[0x1B2718AE0](46, 0xE100000000000000);
  v2 = (*(*v0 + 104))(v1);
  if (v2 <= 1)
  {
    if (v2)
    {
      v3 = 0xE200000000000000;
      v4 = 28013;
    }

    else
    {
      v3 = 0xE300000000000000;
      v4 = 7368803;
    }
  }

  else if (v2 == 2)
  {
    v3 = 0xE500000000000000;
    v4 = 0x6C6174656DLL;
  }

  else if (v2 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x7466697773;
  }

  else
  {
    v3 = 0xE200000000000000;
    v4 = 29546;
  }

  MEMORY[0x1B2718AE0](v4, v3);

  MEMORY[0x1B2718AE0](0x100000000000001FLL, 0x80000001AFF47ED0);
  return 0x202F2F0A2F2FLL;
}

uint64_t sub_1AFAFA510(int a1)
{
  v3 = v2;
  v4 = v1;
  v181 = a1;
  sub_1AFB0EF20(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v160 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v172 = (&v160 - v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  v188 = &v160 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v160 - v17;
  v189 = type metadata accessor for SimpleScript(0);
  v19 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189, v20);
  v180 = &v160 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v160 - v24;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v234 = qword_1ED73B840;
  v235 = 0;
  v236 = 2;
  v237 = 0;
  v238 = 2;
  v239 = 0;
  sub_1AF70471C(1, &v208);
  v228 = v208;
  v229 = v209;
  v230 = v210;
  v231 = v211 | 1;
  v232 = v212;
  v233 = v213;
  sub_1AF6B06C0(v1[2], &v228, 0x200000000, v214);
  v167 = *&v214[0];
  if (!*&v214[0])
  {
    v149 = &qword_1ED723E50;
    v150 = &off_1F255B808;
    v151 = type metadata accessor for SimpleScript;
    v152 = sub_1AFB12B74;
    v153 = &v208;
LABEL_134:
    sub_1AFB12A64(v153, v149, v151, v150, v152);
    return MEMORY[0x1E69E7CC0];
  }

  v165 = *(&v214[2] + 1);
  v26 = *(&v215 + 1);
  v170 = *(&v216 + 1);
  v171 = v216;
  v218 = *(v214 + 8);
  v219 = *(&v214[1] + 8);
  if (v217 < 1)
  {
    sub_1AFB12A64(&v208, &qword_1ED723E50, type metadata accessor for SimpleScript, &off_1F255B808, sub_1AFB12B74);
    v149 = &qword_1ED725EA0;
    v151 = &type metadata for QueryResult;
    v150 = MEMORY[0x1E69E6720];
    v152 = sub_1AFB12AC4;
    v153 = v214;
    goto LABEL_134;
  }

  if (!*(&v215 + 1))
  {
    v204 = v214[2];
    v205 = v215;
    v206 = v216;
    v207 = v217;
    v202 = v214[0];
    v203 = v214[1];
    sub_1AF5DD298(&v202, &v196);
    sub_1AFB12A64(&v208, &qword_1ED723E50, type metadata accessor for SimpleScript, &off_1F255B808, sub_1AFB12B74);
    sub_1AFB12A64(v214, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
    v157 = MEMORY[0x1E69E7CC0];
LABEL_139:
    sub_1AFB12A64(v214, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
    return v157;
  }

  v163 = v19;
  v169 = v170[4];
  v168 = *(v171 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v204 = v214[2];
  v205 = v215;
  v206 = v216;
  v207 = v217;
  v202 = v214[0];
  v203 = v214[1];
  sub_1AF5DD298(&v202, &v196);
  v27 = 0;
  v179 = MEMORY[0x1E69E7CC0];
  v182 = v4;
  v173 = v8;
  v190 = v25;
  v191 = v18;
  v164 = v26;
  while (1)
  {
    v28 = (v165 + 48 * v27);
    v195 = *v28;
    v193 = v28[1];
    v29 = *(v28 + 3);
    v194 = *(v28 + 2);
    v31 = *(v28 + 4);
    v30 = *(v28 + 5);
    v166 = v27;
    if (v168)
    {
      v32 = *(v30 + 376);

      os_unfair_lock_lock(v32);
      os_unfair_lock_lock(*(v30 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v169);
    v33 = v170;
    v34 = *(v170 + 4);
    v226[0] = *(v170 + 3);
    v226[1] = v34;
    v227 = v170[10];
    v35 = *(*(*(*(v30 + 40) + 16) + 32) + 16) + 1;
    v33[6] = ecs_stack_allocator_allocate(v170[4], 48 * v35, 8);
    v33[7] = v35;
    v33[9] = 0;
    v33[10] = 0;
    v33[8] = 0;
    v36 = v194;
    v192 = v30;
    v37 = sub_1AF64B110(v189, &off_1F255B808, v194, v29, v31, v33);
    v38 = v37;
    if (!v36)
    {
      break;
    }

    if (v31)
    {
      v183 = *(v163 + 72);
      while (1)
      {
        v240 = v38;
        v41 = *v194++;
        v195 = v41;
        v42 = *(*v4 + 104);
        v43 = v42();
        v193 = v31;
        if (!v43)
        {
          break;
        }

        v44 = v192;
        v45 = sub_1AFDFEE28();

        if ((v45 & 1) == 0)
        {
          if ((v42)(v46) == 1)
          {
            goto LABEL_25;
          }

          v47 = sub_1AFDFEE28();

          if ((v47 & 1) == 0)
          {
            v49 = *(v240 + 32);
            v50 = (v42)(v48);
            if (v49 <= 1)
            {
              if (v49)
              {
                v51 = 0xE600000000000000;
                v52 = 0x7070636A626FLL;
              }

              else
              {
                v51 = 0xE100000000000000;
                v52 = 99;
              }
            }

            else
            {
              if (v49 != 2)
              {
                v40 = v240;
                if (v49 == 3)
                {
                  v51 = 0xE500000000000000;
                  v52 = 0x7466697773;
                }

                else
                {
                  v51 = 0xE200000000000000;
                  v52 = 29546;
                }

                goto LABEL_38;
              }

              v51 = 0xE500000000000000;
              v52 = 0x6C6174656DLL;
            }

            v40 = v240;
LABEL_38:
            if (v50 <= 1u)
            {
              if (v50)
              {
                v56 = 0xE600000000000000;
                if (v52 != 0x7070636A626FLL)
                {
                  goto LABEL_67;
                }
              }

              else
              {
                v56 = 0xE100000000000000;
                if (v52 != 99)
                {
                  goto LABEL_67;
                }
              }
            }

            else if (v50 == 2)
            {
              v56 = 0xE500000000000000;
              if (v52 != 0x6C6174656DLL)
              {
                goto LABEL_67;
              }
            }

            else if (v50 == 3)
            {
              v56 = 0xE500000000000000;
              if (v52 != 0x7466697773)
              {
                goto LABEL_67;
              }
            }

            else
            {
              v56 = 0xE200000000000000;
              if (v52 != 29546)
              {
                goto LABEL_67;
              }
            }

            if (v51 != v56)
            {
LABEL_67:
              v93 = sub_1AFDFEE28();

              if ((v93 & 1) == 0)
              {
                goto LABEL_15;
              }

              goto LABEL_54;
            }

            goto LABEL_53;
          }
        }

LABEL_26:
        v40 = v240;
        v53 = *(v240 + 32);
        if (v53 > 1 || *(v240 + 32))
        {
          v54 = sub_1AFDFEE28();

          if (v54)
          {
            goto LABEL_54;
          }

          if (v53 != 1)
          {
            v55 = sub_1AFDFEE28();

            if ((v55 & 1) == 0)
            {
              goto LABEL_15;
            }

            goto LABEL_54;
          }
        }

LABEL_53:

LABEL_54:
        sub_1AFB12BD8(v40, v25, type metadata accessor for SimpleScript);
        v57 = v4[5];
        v186 = v4[6];
        v187 = v57;

        if (v44[184])
        {
          goto LABEL_141;
        }

        v59 = *(*(v58 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(*(v44 + 21) + 4 * v195) + 8);
        v184 = *(*(v44 + 21) + 4 * v195);
        v185 = v59;

        v60 = v188;
        sub_1AFB12858(v40 + *(v189 + 40), v188);
        v61 = type metadata accessor for ScriptIndex();
        v62 = *(v61 - 8);
        v63 = *(v62 + 48);
        if (v63(v60, 1, v61) == 1)
        {
          v64 = v3;

          if (v44[184])
          {
            goto LABEL_141;
          }

          v66 = *(*(v44 + 21) + 4 * v195);
          v67 = *(*(v65 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v66 + 8);

          v68 = v191;
          *v191 = v66;
          v68[1] = v67;
          swift_storeEnumTagMultiPayload();
          v69 = v188;
          v70 = v63(v188, 1, v61) == 1;
          v3 = v64;
          v71 = v69;
          v40 = v240;
          if (!v70)
          {
            sub_1AF687E28(v71);
          }
        }

        else
        {
          v68 = v191;
          sub_1AFB128EC(v60, v191);
        }

        (*(v62 + 56))(v68, 0, 1, v61);
        v25 = v190;
        v72 = sub_1AFAA86E4(0, 0, &v196);
        if (v3)
        {
          sub_1AFB12B14(v25, type metadata accessor for SimpleScript);
          sub_1AF687E28(v68);
          if (v181)
          {
            goto LABEL_135;
          }

          v3 = 0;
          v4 = v182;
        }

        else
        {
          v174 = &v160;
          v74 = v184;
          v75 = v196;
          v76 = v197;
          v77 = v198;
          v175 = v199;
          v176 = v200;
          v177 = v201;
          MEMORY[0x1EEE9AC00](v72, v73);
          v79 = v186;
          v78 = v187;
          *(&v160 - 6) = v187;
          *(&v160 - 5) = v79;
          v80 = v185;
          *(&v160 - 8) = v81;
          *(&v160 - 7) = v80;
          *(&v160 - 3) = 0x656C706D6973;
          v158 = 0xE600000000000000;
          v159 = v191;
          v178 = sub_1AFBFBEF0(sub_1AFA9EB54, (&v160 - 8), v75);
          v184 = 0;
          v82 = sub_1AFAF8B58(v76, v77, v78, v79, v74 | (v80 << 32), 0x656C706D6973uLL, 0xE600000000000000, v191);
          v84 = v83;
          v25 = v190;

          sub_1AFB12B14(v25, type metadata accessor for SimpleScript);
          sub_1AF687E28(v191);

          v85 = sub_1AF6496EC(v195);

          sub_1AFAB9EAC(v85);
          v87 = v86;
          v89 = v88;

          v90 = v179;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v90 = sub_1AF425C8C(0, *(v90 + 2) + 1, 1, v90);
          }

          v92 = *(v90 + 2);
          v91 = *(v90 + 3);
          if (v92 >= v91 >> 1)
          {
            v90 = sub_1AF425C8C(v91 > 1, v92 + 1, 1, v90);
          }

          *(v90 + 2) = v92 + 1;
          v179 = v90;
          v39 = &v90[40 * v92];
          *(v39 + 4) = v178;
          *(v39 + 5) = v82;
          *(v39 + 6) = v84;
          *(v39 + 7) = v87;
          *(v39 + 8) = v89;
          v3 = v184;
          v4 = v182;
          v40 = v240;
        }

LABEL_15:
        v38 = v40 + v183;
        v31 = v193 - 1;
        if (v193 == 1)
        {
          goto LABEL_70;
        }
      }

      v44 = v192;
LABEL_25:

      goto LABEL_26;
    }

LABEL_70:
    v220 = v167;
    v221 = v218;
    v222 = v219;
    sub_1AF630994(v170, &v220, v226);
    v95 = v192;
    sub_1AF62D29C(v192);
    ecs_stack_allocator_pop_snapshot(v169);
    if (v168)
    {
      os_unfair_lock_unlock(*(v95 + 43));
      os_unfair_lock_unlock(*(v95 + 47));
    }

    v27 = v166 + 1;
    if (v166 + 1 == v164)
    {
      sub_1AFB12A64(&v208, &qword_1ED723E50, type metadata accessor for SimpleScript, &off_1F255B808, sub_1AFB12B74);
      sub_1AFB12A64(v214, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
      v157 = v179;
      goto LABEL_139;
    }
  }

  v94 = v195;
  if (v195 == v193)
  {
    goto LABEL_70;
  }

  v96 = *(v163 + 72);
  v178 = v193 - 1;
  v240 = v37;
  v187 = v96;
  while (2)
  {
    v97 = v38 + v96 * v94;
    v194 = v94;
    while (2)
    {
      v195 = v97;
      v98 = *(*v4 + 104);
      if (!v98())
      {
        goto LABEL_83;
      }

      v99 = sub_1AFDFEE28();

      if (v99)
      {
        break;
      }

      if ((v98)(v100) == 1)
      {
LABEL_83:

        break;
      }

      v101 = sub_1AFDFEE28();

      if ((v101 & 1) == 0)
      {
        v103 = *(v195 + 32);
        v104 = (v98)(v102);
        if (v103 <= 1)
        {
          if (v103)
          {
            v106 = 0xE600000000000000;
            v107 = 0x7070636A626FLL;
          }

          else
          {
            v106 = 0xE100000000000000;
            v107 = 99;
          }
        }

        else
        {
          if (v103 != 2)
          {
            v105 = v192;
            if (v103 == 3)
            {
              v106 = 0xE500000000000000;
              v107 = 0x7466697773;
            }

            else
            {
              v106 = 0xE200000000000000;
              v107 = 29546;
            }

LABEL_97:
            if (v104 <= 1u)
            {
              if (v104)
              {
                v111 = 0xE600000000000000;
                if (v107 != 0x7070636A626FLL)
                {
                  goto LABEL_122;
                }

                goto LABEL_110;
              }

              v111 = 0xE100000000000000;
              if (v107 == 99)
              {
                goto LABEL_110;
              }
            }

            else if (v104 == 2)
            {
              v111 = 0xE500000000000000;
              if (v107 == 0x6C6174656DLL)
              {
                goto LABEL_110;
              }
            }

            else
            {
              if (v104 == 3)
              {
                v111 = 0xE500000000000000;
                if (v107 != 0x7466697773)
                {
                  goto LABEL_122;
                }

LABEL_110:
                if (v106 != v111)
                {
                  goto LABEL_122;
                }

LABEL_112:

                goto LABEL_113;
              }

              v111 = 0xE200000000000000;
              if (v107 == 29546)
              {
                goto LABEL_110;
              }
            }

LABEL_122:
            v128 = sub_1AFDFEE28();

            if (v128)
            {
              goto LABEL_113;
            }

LABEL_74:
            v97 = v195 + v187;
            v194 = (v194 + 1);
            if (v193 == v194)
            {
              goto LABEL_70;
            }

            continue;
          }

          v106 = 0xE500000000000000;
          v107 = 0x6C6174656DLL;
        }

        v105 = v192;
        goto LABEL_97;
      }

      break;
    }

    v108 = *(v195 + 32);
    if (v108 <= 1)
    {
      v105 = v192;
      if (!*(v195 + 32))
      {
        goto LABEL_112;
      }
    }

    else
    {
      v105 = v192;
    }

    v109 = sub_1AFDFEE28();

    if ((v109 & 1) == 0)
    {
      if (v108 == 1)
      {
        goto LABEL_112;
      }

      v110 = sub_1AFDFEE28();

      if ((v110 & 1) == 0)
      {
        goto LABEL_74;
      }
    }

LABEL_113:
    v112 = v195;
    sub_1AFB12BD8(v195, v180, type metadata accessor for SimpleScript);
    v113 = v4[5];
    v185 = v4[6];
    v186 = v113;

    if (v105[184])
    {
      goto LABEL_141;
    }

    v115 = *(*(v114 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(*(v105 + 21) + 4 * v194) + 8);
    v183 = *(*(v105 + 21) + 4 * v194);
    v184 = v115;

    v116 = v173;
    sub_1AFB12858(v112 + *(v189 + 40), v173);
    v117 = type metadata accessor for ScriptIndex();
    v118 = *(v117 - 8);
    v119 = *(v118 + 48);
    if (v119(v116, 1, v117) == 1)
    {

      if (v105[184])
      {
LABEL_141:
        LODWORD(v159) = 0;
        v158 = 204;
        result = sub_1AFDFE518();
        __break(1u);
        return result;
      }

      v121 = *(*(v105 + 21) + 4 * v194);
      v122 = *(*(v120 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v121 + 8);

      v123 = v172;
      *v172 = v121;
      v123[1] = v122;
      swift_storeEnumTagMultiPayload();
      v124 = v119(v173, 1, v117);
      v4 = v182;
      if (v124 != 1)
      {
        sub_1AF687E28(v173);
      }
    }

    else
    {
      v123 = v172;
      sub_1AFB128EC(v116, v172);
    }

    (*(v118 + 56))(v123, 0, 1, v117);
    v125 = v180;
    v126 = sub_1AFAA86E4(0, 0, &v196);
    if (!v3)
    {
      v162 = &v160;
      v174 = v183;
      v161 = v197;
      v129 = v198;
      v175 = v199;
      v176 = v200;
      v177 = v201;
      MEMORY[0x1EEE9AC00](v126, v127);
      v131 = v185;
      v130 = v186;
      *(&v160 - 6) = v186;
      *(&v160 - 5) = v131;
      v132 = v184;
      *(&v160 - 8) = v133;
      *(&v160 - 7) = v132;
      *(&v160 - 3) = 0x656C706D6973;
      v158 = 0xE600000000000000;
      v159 = v123;
      v195 = sub_1AFBFBEF0(sub_1AFA9EB54, (&v160 - 8), v134);
      v135 = sub_1AFAF8B58(v161, v129, v130, v131, v174 | (v132 << 32), 0x656C706D6973uLL, 0xE600000000000000, v123);
      v137 = v136;

      sub_1AFB12B14(v125, type metadata accessor for SimpleScript);
      sub_1AF687E28(v123);

      v138 = sub_1AF6496EC(v194);

      sub_1AFAB9EAC(v138);
      v140 = v139;
      v142 = v141;

      v143 = v179;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v143 = sub_1AF425C8C(0, *(v143 + 2) + 1, 1, v143);
      }

      v145 = *(v143 + 2);
      v144 = *(v143 + 3);
      if (v145 >= v144 >> 1)
      {
        v179 = sub_1AF425C8C(v144 > 1, v145 + 1, 1, v143);
      }

      else
      {
        v179 = v143;
      }

      v146 = v194;
      v94 = (v194 + 1);
      v147 = v179;
      *(v179 + 2) = v145 + 1;
      v148 = &v147[40 * v145];
      *(v148 + 4) = v195;
      *(v148 + 5) = v135;
      *(v148 + 6) = v137;
      *(v148 + 7) = v140;
      *(v148 + 8) = v142;
      v70 = v178 == v146;
      v3 = 0;
      v4 = v182;
      v25 = v190;
      v38 = v240;
      v96 = v187;
      if (v70)
      {
        goto LABEL_70;
      }

      continue;
    }

    break;
  }

  sub_1AFB12B14(v125, type metadata accessor for SimpleScript);
  sub_1AF687E28(v123);
  if ((v181 & 1) == 0)
  {

    v3 = 0;
    v25 = v190;
    goto LABEL_74;
  }

LABEL_135:
  v155 = v192;
  swift_willThrow();
  v223 = v167;
  v224 = v218;
  v225 = v219;
  sub_1AF630994(v170, &v223, v226);
  sub_1AF62D29C(v155);
  ecs_stack_allocator_pop_snapshot(v169);
  if (v168)
  {
    os_unfair_lock_unlock(*(v155 + 43));
    os_unfair_lock_unlock(*(v155 + 47));
  }

  sub_1AFB12A64(&v208, &qword_1ED723E50, type metadata accessor for SimpleScript, &off_1F255B808, sub_1AFB12B74);

  v156 = MEMORY[0x1E69E6720];
  sub_1AFB12A64(v214, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
  sub_1AFB12A64(v214, &qword_1ED725EA0, &type metadata for QueryResult, v156, sub_1AFB12AC4);
}

uint64_t sub_1AFAFBDA0(int a1)
{
  v3 = v2;
  v4 = v1;
  v155 = a1;
  sub_1AFB0EF20(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v153 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v147 = (&v139 - v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v164 = &v139 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v139 - v16);
  v165 = type metadata accessor for ShaderScript(0);
  v18 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165, v19);
  v154 = &v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v139 - v23;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v209 = qword_1ED73B840;
  v210 = 0;
  v211 = 2;
  v212 = 0;
  v213 = 2;
  v214 = 0;
  sub_1AF70424C(1, &v183);
  v203 = v183;
  v204 = v184;
  v205 = v185;
  v206 = v186 | 1;
  v207 = v187;
  v208 = v188;
  sub_1AF6B06C0(v1[2], &v203, 0x200000000, v189);
  v143 = *&v189[0];
  if (!*&v189[0])
  {
    v130 = &qword_1ED723E58;
    v131 = &off_1F255B8D0;
    v132 = type metadata accessor for ShaderScript;
    v133 = sub_1AFB12B74;
    v134 = &v183;
LABEL_124:
    sub_1AFB12A64(v134, v130, v132, v131, v133);
    return MEMORY[0x1E69E7CC0];
  }

  v141 = *(&v189[2] + 1);
  v25 = *(&v190 + 1);
  v146 = *(&v191 + 1);
  v193 = *(v189 + 8);
  v194 = *(&v189[1] + 8);
  if (v192 < 1)
  {
    sub_1AFB12A64(&v183, &qword_1ED723E58, type metadata accessor for ShaderScript, &off_1F255B8D0, sub_1AFB12B74);
    v130 = &qword_1ED725EA0;
    v132 = &type metadata for QueryResult;
    v131 = MEMORY[0x1E69E6720];
    v133 = sub_1AFB12AC4;
    v134 = v189;
    goto LABEL_124;
  }

  if (!*(&v190 + 1))
  {
    v179 = v189[2];
    v180 = v190;
    v181 = v191;
    v182 = v192;
    v177 = v189[0];
    v178 = v189[1];
    sub_1AF5DD298(&v177, &v171);
    sub_1AFB12A64(&v183, &qword_1ED723E58, type metadata accessor for ShaderScript, &off_1F255B8D0, sub_1AFB12B74);
    sub_1AFB12A64(v189, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
    v138 = MEMORY[0x1E69E7CC0];
    goto LABEL_129;
  }

  v139 = v18;
  v145 = v146[4];
  v144 = *(v191 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v179 = v189[2];
  v180 = v190;
  v181 = v191;
  v182 = v192;
  v177 = v189[0];
  v178 = v189[1];
  sub_1AF5DD298(&v177, &v171);
  v26 = 0;
  v156 = MEMORY[0x1E69E7CC0];
  v161 = v4;
  v167 = v24;
  v168 = v17;
  v140 = v25;
  while (2)
  {
    v27 = (v141 + 48 * v26);
    v215 = *v27;
    v28 = v27[1];
    v30 = *(v27 + 2);
    v29 = *(v27 + 3);
    v31 = *(v27 + 4);
    v32 = *(v27 + 5);
    v142 = v26;
    v170 = v28;
    if (v144)
    {
      v33 = *(v32 + 376);

      os_unfair_lock_lock(v33);
      os_unfair_lock_lock(*(v32 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v145);
    v34 = v146;
    v35 = *(v146 + 4);
    v201[0] = *(v146 + 3);
    v201[1] = v35;
    v202 = v146[10];
    v36 = *(*(*(*(v32 + 40) + 16) + 32) + 16) + 1;
    v34[6] = ecs_stack_allocator_allocate(v146[4], 48 * v36, 8);
    v34[7] = v36;
    v34[9] = 0;
    v34[10] = 0;
    v34[8] = 0;
    v37 = v30;
    v38 = sub_1AF64B110(v165, &off_1F255B8D0, v30, v29, v31, v34);
    v39 = v38;
    v162 = v32;
    if (v37)
    {
      if (!v31)
      {
        goto LABEL_66;
      }

      v157 = *(v139 + 72);
      while (1)
      {
        v169 = v31;
        v215 = *v37;
        v42 = *(*v4 + 104);
        v43 = v42();
        v170 = v37 + 1;
        if (!v43)
        {
          break;
        }

        v44 = sub_1AFDFEE28();

        if ((v44 & 1) == 0)
        {
          if ((v42)(v45) == 1)
          {
            break;
          }

          v46 = sub_1AFDFEE28();

          if ((v46 & 1) == 0)
          {
            v48 = *(v39 + 16);
            v49 = (v42)(v47);
            if (v48 <= 1)
            {
              if (v48)
              {
                v50 = 0xE600000000000000;
                v51 = 0x7070636A626FLL;
              }

              else
              {
                v50 = 0xE100000000000000;
                v51 = 99;
              }
            }

            else if (v48 == 2)
            {
              v50 = 0xE500000000000000;
              v51 = 0x6C6174656DLL;
            }

            else if (v48 == 3)
            {
              v50 = 0xE500000000000000;
              v51 = 0x7466697773;
            }

            else
            {
              v50 = 0xE200000000000000;
              v51 = 29546;
            }

            if (v49 <= 1u)
            {
              if (v49)
              {
                v55 = 0xE600000000000000;
                if (v51 != 0x7070636A626FLL)
                {
                  goto LABEL_63;
                }
              }

              else
              {
                v55 = 0xE100000000000000;
                if (v51 != 99)
                {
                  goto LABEL_63;
                }
              }
            }

            else if (v49 == 2)
            {
              v55 = 0xE500000000000000;
              if (v51 != 0x6C6174656DLL)
              {
                goto LABEL_63;
              }
            }

            else if (v49 == 3)
            {
              v55 = 0xE500000000000000;
              if (v51 != 0x7466697773)
              {
                goto LABEL_63;
              }
            }

            else
            {
              v55 = 0xE200000000000000;
              if (v51 != 29546)
              {
                goto LABEL_63;
              }
            }

            if (v50 != v55)
            {
LABEL_63:
              v84 = sub_1AFDFEE28();

              if ((v84 & 1) == 0)
              {
                goto LABEL_15;
              }

              goto LABEL_52;
            }

            goto LABEL_51;
          }
        }

LABEL_25:
        v52 = *(v39 + 16);
        if (v52 > 1 || *(v39 + 16))
        {
          v53 = sub_1AFDFEE28();

          if (v53)
          {
            goto LABEL_52;
          }

          if (v52 != 1)
          {
            v54 = sub_1AFDFEE28();

            if ((v54 & 1) == 0)
            {
              goto LABEL_15;
            }

            goto LABEL_52;
          }
        }

LABEL_51:

LABEL_52:
        v56 = v3;
        sub_1AFB12BD8(v39, v167, type metadata accessor for ShaderScript);
        v57 = v4[5];
        v159 = v4[6];
        v160 = v57;

        v58 = v215;
        v158 = sub_1AF6496EC(v215);

        v59 = v164;
        v60 = *(v165 + 24);
        v166 = v39;
        sub_1AFB12858(v39 + v60, v164);
        v61 = type metadata accessor for ScriptIndex();
        v62 = *(v61 - 8);
        v63 = *(v62 + 48);
        if (v63(v59, 1, v61) == 1)
        {

          v64 = sub_1AF6496EC(v58);

          v65 = v168;
          *v168 = v64;
          v66 = v164;
          swift_storeEnumTagMultiPayload();
          v67 = v63(v66, 1, v61);
          v68 = v167;
          if (v67 != 1)
          {
            sub_1AF687E28(v66);
          }
        }

        else
        {
          v65 = v168;
          sub_1AFB128EC(v59, v168);
          v68 = v167;
        }

        (*(v62 + 56))(v65, 0, 1, v61);
        v69 = sub_1AFAAADB4(0, 0, &v171);
        if (v56)
        {
          sub_1AFB12B14(v68, type metadata accessor for ShaderScript);
          sub_1AF687E28(v65);
          if (v155)
          {
            goto LABEL_125;
          }

          v3 = 0;
          v4 = v161;
          v32 = v162;
          v39 = v166;
        }

        else
        {
          v148 = &v139;
          v71 = v158;
          v72 = v171;
          v73 = v172;
          v74 = v173;
          v151 = v175;
          v149 = v174;
          v150 = v176;
          MEMORY[0x1EEE9AC00](v69, v70);
          v76 = v159;
          v75 = v160;
          *(&v139 - 6) = v160;
          *(&v139 - 5) = v76;
          *(&v139 - 8) = v71;
          *(&v139 - 7) = v77;
          *(&v139 - 3) = 0x726564616873;
          *(&v139 - 2) = 0xE600000000000000;
          *(&v139 - 1) = v168;
          v152 = sub_1AFBFBEF0(sub_1AFA9EB54, (&v139 - 8), v72);
          v163 = 0;
          v78 = sub_1AFAF8B58(v73, v74, v75, v76, v71, 0x726564616873uLL, 0xE600000000000000, v168);
          v80 = v79;

          sub_1AFB12B14(v68, type metadata accessor for ShaderScript);
          sub_1AF687E28(v168);
          v32 = v162;

          sub_1AF6496EC(v215);

          sub_1AFAACE38();

          v81 = v156;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v81 = sub_1AF425C8C(0, *(v81 + 2) + 1, 1, v81);
          }

          v39 = v166;
          v83 = *(v81 + 2);
          v82 = *(v81 + 3);
          v156 = v81;
          v3 = v163;
          v4 = v161;
          if (v83 >= v82 >> 1)
          {
            v156 = sub_1AF425C8C(v82 > 1, v83 + 1, 1, v156);
          }

          v40 = v156;
          *(v156 + 2) = v83 + 1;
          v41 = &v40[40 * v83];
          *(v41 + 4) = v152;
          *(v41 + 5) = v78;
          *(v41 + 6) = v80;
          strcpy(v41 + 56, "Shader Script");
          *(v41 + 35) = -4864;
        }

LABEL_15:
        v39 += v157;
        v37 = v170;
        v31 = v169 - 1;
        if (v169 == 1)
        {
          goto LABEL_66;
        }
      }

      goto LABEL_25;
    }

    v85 = v215;
    if (v215 == v170)
    {
      goto LABEL_66;
    }

    v86 = *(v139 + 72);
    v157 = v170 - 1;
    v169 = v86;
    v166 = v38;
    do
    {
      v87 = v39 + v86 * v85;
      v88 = v85;
      while (1)
      {
        v215 = v88;
        v89 = *(*v4 + 104);
        if (!v89())
        {
LABEL_79:

          goto LABEL_80;
        }

        v90 = sub_1AFDFEE28();

        if ((v90 & 1) == 0)
        {
          if ((v89)(v91) == 1)
          {
            goto LABEL_79;
          }

          v92 = sub_1AFDFEE28();

          if ((v92 & 1) == 0)
          {
            v94 = *(v87 + 16);
            v95 = (v89)(v93);
            if (v94 <= 1)
            {
              if (v94)
              {
                v96 = 0xE600000000000000;
                v97 = 0x7070636A626FLL;
              }

              else
              {
                v96 = 0xE100000000000000;
                v97 = 99;
              }
            }

            else if (v94 == 2)
            {
              v96 = 0xE500000000000000;
              v97 = 0x6C6174656DLL;
            }

            else if (v94 == 3)
            {
              v96 = 0xE500000000000000;
              v97 = 0x7466697773;
            }

            else
            {
              v96 = 0xE200000000000000;
              v97 = 29546;
            }

            if (v95 <= 1u)
            {
              if (v95)
              {
                v101 = 0xE600000000000000;
                if (v97 != 0x7070636A626FLL)
                {
                  goto LABEL_114;
                }

                goto LABEL_104;
              }

              v101 = 0xE100000000000000;
              if (v97 == 99)
              {
                goto LABEL_104;
              }
            }

            else if (v95 == 2)
            {
              v101 = 0xE500000000000000;
              if (v97 == 0x6C6174656DLL)
              {
                goto LABEL_104;
              }
            }

            else
            {
              if (v95 == 3)
              {
                v101 = 0xE500000000000000;
                if (v97 != 0x7466697773)
                {
                  goto LABEL_114;
                }

LABEL_104:
                if (v96 == v101)
                {

LABEL_106:

                  goto LABEL_107;
                }

                goto LABEL_114;
              }

              v101 = 0xE200000000000000;
              if (v97 == 29546)
              {
                goto LABEL_104;
              }
            }

LABEL_114:
            v115 = sub_1AFDFEE28();

            if ((v115 & 1) == 0)
            {
              goto LABEL_70;
            }

            goto LABEL_107;
          }
        }

LABEL_80:
        v98 = *(v87 + 16);
        if (v98 <= 1 && !*(v87 + 16))
        {
          goto LABEL_106;
        }

        v99 = sub_1AFDFEE28();

        if (v99)
        {
          goto LABEL_107;
        }

        if (v98 == 1)
        {
          goto LABEL_106;
        }

        v100 = sub_1AFDFEE28();

        if ((v100 & 1) == 0)
        {
          goto LABEL_70;
        }

LABEL_107:
        v163 = v3;
        sub_1AFB12BD8(v87, v154, type metadata accessor for ShaderScript);
        v102 = v4[5];
        v159 = v4[6];
        v160 = v102;

        v103 = v215;
        v158 = sub_1AF6496EC(v215);

        v104 = v153;
        sub_1AFB12858(v87 + *(v165 + 24), v153);
        v105 = type metadata accessor for ScriptIndex();
        v106 = *(v105 - 8);
        v107 = *(v106 + 48);
        if (v107(v104, 1, v105) == 1)
        {

          v108 = sub_1AF6496EC(v103);

          v109 = v147;
          *v147 = v108;
          v110 = v153;
          swift_storeEnumTagMultiPayload();
          if (v107(v110, 1, v105) != 1)
          {
            sub_1AF687E28(v110);
          }
        }

        else
        {
          v109 = v147;
          sub_1AFB128EC(v104, v147);
        }

        (*(v106 + 56))(v109, 0, 1, v105);
        v111 = v154;
        v112 = v163;
        v113 = sub_1AFAAADB4(0, 0, &v171);
        v3 = v112;
        if (!v112)
        {
          break;
        }

        sub_1AFB12B14(v111, type metadata accessor for ShaderScript);
        sub_1AF687E28(v109);
        if (v155)
        {
LABEL_125:
          v136 = v162;
          swift_willThrow();
          v198 = v143;
          v199 = v193;
          v200 = v194;
          sub_1AF630994(v146, &v198, v201);
          sub_1AF62D29C(v136);
          ecs_stack_allocator_pop_snapshot(v145);
          if (v144)
          {
            os_unfair_lock_unlock(*(v136 + 344));
            os_unfair_lock_unlock(*(v136 + 376));
          }

          sub_1AFB12A64(&v183, &qword_1ED723E58, type metadata accessor for ShaderScript, &off_1F255B8D0, sub_1AFB12B74);

          v137 = MEMORY[0x1E69E6720];
          sub_1AFB12A64(v189, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
          sub_1AFB12A64(v189, &qword_1ED725EA0, &type metadata for QueryResult, v137, sub_1AFB12AC4);
        }

        v3 = 0;
        v4 = v161;
        v32 = v162;
LABEL_70:
        v88 = v215 + 1;
        v87 += v169;
        if (v170 == (v215 + 1))
        {
          goto LABEL_66;
        }
      }

      v149 = &v139;
      v116 = v171;
      v148 = v172;
      v117 = v173;
      v118 = v158;
      v152 = v175;
      v150 = v174;
      v151 = v176;
      MEMORY[0x1EEE9AC00](v113, v114);
      v119 = v159;
      v120 = v160;
      *(&v139 - 6) = v160;
      *(&v139 - 5) = v119;
      *(&v139 - 8) = v118;
      *(&v139 - 7) = v121;
      *(&v139 - 3) = 0x726564616873;
      *(&v139 - 2) = 0xE600000000000000;
      *(&v139 - 1) = v109;
      v163 = sub_1AFBFBEF0(sub_1AFA9EB54, (&v139 - 8), v116);
      v122 = sub_1AFAF8B58(v148, v117, v120, v119, v118, 0x726564616873uLL, 0xE600000000000000, v109);
      v160 = v123;

      sub_1AFB12B14(v154, type metadata accessor for ShaderScript);
      sub_1AF687E28(v109);
      v32 = v162;

      v124 = v215;
      sub_1AF6496EC(v215);

      sub_1AFAACE38();

      v125 = v156;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v125 = sub_1AF425C8C(0, *(v125 + 2) + 1, 1, v125);
      }

      v4 = v161;
      v86 = v169;
      v127 = *(v125 + 2);
      v126 = *(v125 + 3);
      v156 = v125;
      if (v127 >= v126 >> 1)
      {
        v156 = sub_1AF425C8C(v126 > 1, v127 + 1, 1, v156);
      }

      v85 = v124 + 1;
      v128 = v156;
      *(v156 + 2) = v127 + 1;
      v129 = &v128[40 * v127];
      *(v129 + 4) = v163;
      *(v129 + 5) = v122;
      *(v129 + 6) = v160;
      strcpy(v129 + 56, "Shader Script");
      *(v129 + 35) = -4864;
      v39 = v166;
    }

    while (v157 != v124);
LABEL_66:
    v195 = v143;
    v196 = v193;
    v197 = v194;
    sub_1AF630994(v146, &v195, v201);
    sub_1AF62D29C(v32);
    ecs_stack_allocator_pop_snapshot(v145);
    if (v144)
    {
      os_unfair_lock_unlock(*(v32 + 344));
      os_unfair_lock_unlock(*(v32 + 376));
    }

    v26 = v142 + 1;
    if (v142 + 1 != v140)
    {
      continue;
    }

    break;
  }

  sub_1AFB12A64(&v183, &qword_1ED723E58, type metadata accessor for ShaderScript, &off_1F255B8D0, sub_1AFB12B74);
  sub_1AFB12A64(v189, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
  v138 = v156;
LABEL_129:
  sub_1AFB12A64(v189, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
  return v138;
}
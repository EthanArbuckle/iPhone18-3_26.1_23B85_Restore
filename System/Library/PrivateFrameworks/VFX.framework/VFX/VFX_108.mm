uint64_t sub_1AF954ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 56);
  v35 = 0;
  v36 = 0xE000000000000000;
  if (v8 == 3)
  {
    v33 = 0x6E6F6974636E7566;
    v34 = 0xE900000000000020;
  }

  else
  {

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    MEMORY[0x1B2718AE0](0x636974617473, 0xE600000000000000);

    v33 = 1684631414;
    v34 = 0xE400000000000000;
    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
  }

  MEMORY[0x1B2718AE0](a1, a2);
  MEMORY[0x1B2718AE0](40, 0xE100000000000000);
  MEMORY[0x1B2718AE0](v33, v34);

  v9 = sub_1AF952C10(a3, v4);
  v10 = *(v9 + 16);
  if (v10)
  {
    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
    v11 = 0;
    v12 = (v9 + 56);
    do
    {
      v16 = *(v12 - 2);
      v18 = *(v12 - 1);
      v17 = *v12;
      v33 = *(v12 - 3);
      v34 = v16;
      v19 = *(v9 + 16) - 1;

      swift_bridgeObjectRetain_n();
      if (v11 != v19)
      {
        MEMORY[0x1B2718AE0](44, 0xE100000000000000);
      }

      if (v17)
      {
        v32[0] = 539963168;
        v32[1] = 0xE400000000000000;
        MEMORY[0x1B2718AE0](v18, v17);

        MEMORY[0x1B2718AE0](539963168, 0xE400000000000000);
      }

      ++v11;
      v12 += 4;
      MEMORY[0x1B2718AE0](10, 0xE100000000000000);
      v13 = sub_1AFAF888C();
      v15 = v14;

      MEMORY[0x1B2718AE0](v13, v15);
    }

    while (v10 != v11);
  }

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);

  MEMORY[0x1B2718AE0](686880, 0xE300000000000000);
  v32[0] = MEMORY[0x1E69E7CD0];
  v20 = sub_1AF953C6C(a4, v32);
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v33 = v20;
  v34 = v22;

  MEMORY[0x1B2718AE0](v24, v26);

  v27 = sub_1AFAF888C();
  v29 = v28;

  MEMORY[0x1B2718AE0](v27, v29);

  MEMORY[0x1B2718AE0](2685, 0xE200000000000000);
  return v35;
}

uint64_t sub_1AF955248()
{
  sub_1AF95B314(0, &qword_1ED722BC8, MEMORY[0x1E69E67B0], MEMORY[0x1E69E9288]);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v17 - v5;
  if (*(v0 + 56) == 3)
  {
    return 0;
  }

  v31 = 0;
  v32 = 0xE000000000000000;
  v7 = *(v0 + 72);
  v8 = *(v7 + 16);
  if (!v8)
  {
    return 0;
  }

  v18 = v4;
  v9 = sub_1AF4486E4();
  v19 = (v2 + 8);
  v20 = v9;

  v17 = v7;
  v10 = (v7 + 40);
  do
  {
    v22 = v8;
    v11 = *v10;
    v29 = *(v10 - 1);
    v30 = v11;
    v27 = 10;
    v28 = 0xE100000000000000;
    v25 = 0;
    v26 = 0xE000000000000000;
    v29 = sub_1AFDFDEB8();
    v30 = v12;
    sub_1AFDFC408();
    v25 = 0;
    v26 = 0xE000000000000000;
    v21 = sub_1AF95A690();
    sub_1AF95A6E4();
    sub_1AF95A738();
    v13 = v18;
    sub_1AFDFD978();
    v14 = *v19;
    (*v19)(v6, v13);

    v25 = v27;
    v26 = v28;
    sub_1AFDFC408();
    v23 = 8236;
    v24 = 0xE200000000000000;
    sub_1AFDFD978();
    v14(v6, v13);

    v27 = v29;
    v28 = v30;

    MEMORY[0x1B2718AE0](59, 0xE100000000000000);

    v29 = v27;
    v30 = v28;

    MEMORY[0x1B2718AE0](10, 0xE100000000000000);

    MEMORY[0x1B2718AE0](v29, v30);
    v15 = v22;

    v10 += 2;
    v8 = v15 - 1;
  }

  while (v8);

  return v31;
}

uint64_t sub_1AF95558C(uint64_t a1)
{
  v2 = *(*(v1 + 32) + 16);
  v3 = v2 != 0;
  v109 = MEMORY[0x1E69E7CD0];
  v4 = *(a1 + 16);
  if (!v4)
  {

    v103 = MEMORY[0x1E69E7CC0];
    if (!v2)
    {
LABEL_113:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v103 = sub_1AFC0DBFC(v103);
      }

      v80 = v103[2];
      v105 = (v103 + 4);
      v106 = v80;
      sub_1AF95789C(&v105);
      return v103;
    }

LABEL_107:
    if (*(v94 + 56) != 3)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v103 = sub_1AF42612C(0, v103[2] + 1, 1, v103);
      }

      v76 = v103[2];
      v75 = v103[3];
      if (v76 >= v75 >> 1)
      {
        v103 = sub_1AF42612C(v75 > 1, v76 + 1, 1, v103);
      }

      v108 = 1;
      v103[2] = v76 + 1;
      v77 = &v103[11 * v76];
      v77[4] = 0x8000000000000000;
      *(v77 + 40) = 1;
      v78 = *(&v105 + 3);
      *(v77 + 41) = v105;
      *(v77 + 11) = v78;
      *(v77 + 3) = xmmword_1AFE4C460;
      *(v77 + 64) = v108;
      *(v77 + 17) = *&v104[3];
      *(v77 + 65) = *v104;
      *(v77 + 9) = xmmword_1AFE86420;
      v77[11] = 0xEE00747865746E6FLL;
      *(v77 + 96) = 0;
      v79 = *&v107[3];
      *(v77 + 97) = *v107;
      *(v77 + 25) = v79;
      v77[13] = 0;
      v77[14] = 0;
    }

    goto LABEL_113;
  }

  v5 = 0;
  v90 = a1 + 32;
  v85 = MEMORY[0x1E69E7CA0] + 8;
  v103 = MEMORY[0x1E69E7CC0];
  v87 = *(a1 + 16);
  while (1)
  {
    v6 = v90 + 120 * v5;
    v7 = *v6;
    v91 = *(v6 + 24);
    v92 = *(v6 + 32);
    v8 = *(v6 + 96);
    v9 = *(v94 + 104);
    if (*(v9 + 16))
    {
      v10 = *v6;
      v11 = sub_1AFDFF278();
      v7 = v10;
      v12 = -1 << *(v9 + 32);
      v13 = v11 & ~v12;
      if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
      {
        v14 = ~v12;
        while (*(*(v9 + 48) + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v14;
          if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        goto LABEL_4;
      }
    }

LABEL_10:
    v3 |= v8;
    v15 = *v7;
    v16 = swift_conformsToProtocol2();
    if (v16)
    {
      break;
    }

LABEL_4:
    if (++v5 == v4)
    {

      if ((v3 & 1) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_107;
    }
  }

  v88 = v5;
  v89 = v3;
  v17 = *(v16 + 48);
  v18 = v16;

  sub_1AF487F80(v91, v92);

  v19 = v17(v15, v18);

  v99 = *(v19 + 16);
  if (v99)
  {
    v20 = 0;
    v97 = v19 + 32;
    v21 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v22 = v97 + 40 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 32);
      v112 = *v22;
      v113 = v24;
      v101 = *(v22 + 16);
      v114 = v101;
      v115 = v25;
      v26 = v109;
      if (*(v109 + 16))
      {
        sub_1AFDFF288();
        sub_1AF443EE0(v23);
        sub_1AF444224(v101);
        sub_1AFAA0C08(&v105, v23);
        v27 = sub_1AFDFF2F8();
        v28 = -1 << *(v26 + 32);
        v29 = v27 & ~v28;
        if ((*(v26 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
        {
          v30 = ~v28;
          while (1)
          {
            v31 = *(*(v26 + 48) + 8 * v29);
            sub_1AF443EE0(v31);
            v32 = sub_1AFAB5FF0(v31, v23);
            sub_1AF443F24(v31);
            if (v32)
            {
              break;
            }

            v29 = (v29 + 1) & v30;
            if (((*(v26 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          sub_1AF443F24(v23);
          sub_1AF444AF4(v101);
          goto LABEL_14;
        }
      }

      else
      {
        sub_1AF443EE0(v23);
        sub_1AF444224(v101);
      }

LABEL_22:
      sub_1AF443EE0(v23);
      sub_1AF70E690(&v105, v23);
      sub_1AF443F24(v105);
      sub_1AF94CFE0(&v112, v110);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1AF420C34(0, *(v21 + 2) + 1, 1, v21);
      }

      v34 = *(v21 + 2);
      v33 = *(v21 + 3);
      if (v34 >= v33 >> 1)
      {
        v21 = sub_1AF420C34(v33 > 1, v34 + 1, 1, v21);
      }

      sub_1AF443F24(v23);
      sub_1AF444AF4(v101);
      *(v21 + 2) = v34 + 1;
      v35 = &v21[40 * v34];
      v36 = v110[0];
      v37 = v110[1];
      v35[64] = v111;
      *(v35 + 2) = v36;
      *(v35 + 3) = v37;
LABEL_14:
      if (++v20 == v99)
      {
        goto LABEL_28;
      }
    }
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_28:
  v38 = *(v21 + 2);
  if (!v38)
  {
LABEL_3:

    sub_1AF487074(v91, v92);

    v3 = v89;
    v4 = v87;
    v5 = v88;
    goto LABEL_4;
  }

  v39 = *(v94 + 56);
  v93 = 0xBu >> (v39 & 0xF);
  v86 = 0x4020100u >> (8 * v39);
  v40 = v38 - 1;
  for (i = v21 + 64; ; i = v95 + 40)
  {
    v42 = MEMORY[0x1E69E6270];
    v43 = *(i - 4);
    v44 = *(i - 24);
    v46 = *(i - 2);
    v45 = *(i - 1);
    v47 = *i;
    sub_1AF443EE0(v43);
    sub_1AF444224(v46);
    sub_1AFA9EF20(v43);
    v49 = v48;
    sub_1AF443EE0(v43);
    v50 = sub_1AFAA129C(v43);
    if ((~v50 & 0xF000000000000007) != 0)
    {
      v45 = 0;
      v100 = 1;
      v98 = v43;
    }

    else
    {
      v100 = v47;
      sub_1AF444224(v46);
      v50 = v43;
      v98 = v46;
    }

    v102 = v50;
    sub_1AFA9EF20(v50);
    v52 = v51;
    if (swift_dynamicCastMetatype())
    {
      goto LABEL_34;
    }

    type metadata accessor for frame_constants(0);
    if (swift_dynamicCastMetatype())
    {
      goto LABEL_38;
    }

    if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
    {
      goto LABEL_45;
    }

    if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
    {
      sub_1AF8C0110();
      if (!swift_dynamicCastMetatype())
      {
        if (!swift_dynamicCastMetatype())
        {
          if (v52 == v85)
          {
            goto LABEL_34;
          }

          if (!swift_dynamicCastMetatype())
          {
            type metadata accessor for __vfx_sampler1d(0);
            if (!swift_dynamicCastMetatype())
            {
              type metadata accessor for __vfx_sampler2d(0);
              if (!swift_dynamicCastMetatype())
              {
                type metadata accessor for __vfx_sampler3d(0);
                if (!swift_dynamicCastMetatype())
                {
                  goto LABEL_45;
                }
              }
            }
          }

LABEL_38:
          if ((v93 & 1) == 0)
          {
            goto LABEL_45;
          }

          goto LABEL_34;
        }

        if (v86 == 3)
        {
          goto LABEL_101;
        }

        v71 = sub_1AFDFEE28();

        if (v71)
        {
          goto LABEL_45;
        }

        if (v86 >= 4u)
        {
LABEL_101:

LABEL_45:
          sub_1AFA9EF20(v102);
          v53 = v54;
          goto LABEL_46;
        }

        v73 = sub_1AFDFEE28();

        if (v73)
        {
          goto LABEL_45;
        }
      }
    }

LABEL_34:
    v53 = (v44 & 2) != 0 ? MEMORY[0x1E69E6878] : v42;
LABEL_46:
    v55 = sub_1AF90DEFC(v53);
    if ((~v55 & 0xF000000000000007) == 0)
    {
      break;
    }

    v56 = v55;
    if ((v44 & 2) == 0)
    {
      v57 = 0;
      goto LABEL_60;
    }

    if (!swift_dynamicCastMetatype())
    {
      type metadata accessor for frame_constants(0);
      if (swift_dynamicCastMetatype())
      {
        goto LABEL_52;
      }

      if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
      {
        goto LABEL_58;
      }

      if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
      {
        sub_1AF8C0110();
        if (!swift_dynamicCastMetatype())
        {
          if (swift_dynamicCastMetatype())
          {
            if (v86 == 3)
            {
              goto LABEL_102;
            }

            v72 = sub_1AFDFEE28();

            if ((v72 & 1) == 0)
            {
              if (v86 < 4u)
              {
                v74 = sub_1AFDFEE28();

                v58 = v74 ^ 1;
                goto LABEL_59;
              }

LABEL_102:
            }

LABEL_58:
            v58 = 0;
            goto LABEL_59;
          }

          if (v49 != MEMORY[0x1E69E7CA0] + 8)
          {
            if (!swift_dynamicCastMetatype())
            {
              type metadata accessor for __vfx_sampler1d(0);
              if (!swift_dynamicCastMetatype())
              {
                type metadata accessor for __vfx_sampler2d(0);
                if (!swift_dynamicCastMetatype())
                {
                  type metadata accessor for __vfx_sampler3d(0);
                  if (!swift_dynamicCastMetatype())
                  {
                    goto LABEL_58;
                  }
                }
              }
            }

LABEL_52:
            v58 = v93;
            goto LABEL_59;
          }
        }
      }
    }

    v58 = 1;
LABEL_59:
    v57 = v58 ^ 1;
LABEL_60:
    v59 = *(v94 + 80);
    if (!*(v59 + 16))
    {
      goto LABEL_117;
    }

    v60 = sub_1AF41AF3C(v43);
    if ((v61 & 1) == 0)
    {

LABEL_117:
      v105 = 0;
      v106 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF3BC00);
      sub_1AFDFE458();
      MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF3BC20);
      goto LABEL_119;
    }

    v95 = i;
    v96 = v56;
    v62 = *(v59 + 56) + 32 * v60;
    v64 = *(v62 + 8);
    v63 = *(v62 + 16);

    v65 = v40;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v103 = sub_1AF42612C(0, v103[2] + 1, 1, v103);
    }

    v67 = v103[2];
    v66 = v103[3];
    if (v67 >= v66 >> 1)
    {
      v103 = sub_1AF42612C(v66 > 1, v67 + 1, 1, v103);
    }

    sub_1AF443F24(v43);
    sub_1AF444AF4(v46);
    v108 = v100;
    v103[2] = v67 + 1;
    v68 = &v103[11 * v67];
    v68[4] = v102;
    *(v68 + 40) = v44;
    v69 = *(&v105 + 3);
    *(v68 + 41) = v105;
    *(v68 + 11) = v69;
    v68[6] = v98;
    v68[7] = v45;
    *(v68 + 64) = v108;
    *(v68 + 17) = *&v104[3];
    *(v68 + 65) = *v104;
    v68[9] = v96;
    v68[10] = v64;
    v68[11] = v63;
    *(v68 + 96) = v57 & 1;
    v70 = *v107;
    *(v68 + 25) = *&v107[3];
    *(v68 + 97) = v70;
    v68[13] = 0;
    v68[14] = 0;
    if (!v65)
    {
      goto LABEL_3;
    }

    v40 = v65 - 1;
  }

  v105 = 0;
  v106 = 0xE000000000000000;
  sub_1AFDFE218();
  v82 = sub_1AFDFF4B8();
  v84 = v83;

  v105 = v82;
  v106 = v84;
  MEMORY[0x1B2718AE0](0xD000000000000023, 0x80000001AFF3BBD0);
LABEL_119:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF95644C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1AF952600(*(v2 + 48), a2);
  v8 = sub_1AF95558C(v7);

  for (i = *(v2 + 64); *(i + 2); i = *(v3 + 64))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 64) = i;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      i = sub_1AFC0DC10(i);
    }

    v11 = *(i + 2);
    v12 = v11 - 1;
    v13 = &i[120 * v11];
    v14 = *(v13 - 88);
    v15 = *(v13 - 72);
    v16 = *(v13 - 40);
    v28[2] = *(v13 - 56);
    v28[3] = v16;
    v28[1] = v15;
    v17 = *(v13 - 24);
    v18 = *(v13 - 8);
    v19 = *(v13 + 8);
    v29 = *(v13 + 3);
    v28[5] = v18;
    v28[6] = v19;
    v28[4] = v17;
    v28[0] = v14;
    *(i + 2) = v12;
    *(v3 + 64) = i;
    v20 = sub_1AF954348(v28);
    MEMORY[0x1B2718AE0](v20);

    sub_1AF95A660(v28);
  }

  sub_1AF9D3B48(v8);
  v22 = v21;

  if (*(v3 + 56) == 3)
  {

    v22 = MEMORY[0x1E69E7CC0];
  }

  v23 = sub_1AF954ED4(a1, a2, v22, v6);
  v25 = v24;

  MEMORY[0x1B2718AE0](v23, v25);

  if (*(*(v3 + 72) + 16) < 2uLL)
  {

    return 0;
  }

  else
  {
    v27 = sub_1AF955248();

    MEMORY[0x1B2718AE0](0, 0xE000000000000000);

    return v27;
  }
}

uint64_t sub_1AF95665C(uint64_t a1)
{
  v23 = MEMORY[0x1E69E7CD0];
  v20 = &v23;
  v17 = sub_1AF919398;
  v18 = &v19;
  v4 = MEMORY[0x1E69E7CC0];
  v21 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
  v22 = v5;
  sub_1AF412D4C(sub_1AF441EF8, v16, 1, 0x1000000000000000uLL, 0, v4, &v21);
  if (v2)
  {

    __break(1u);
  }

  else
  {

    v6 = v23;
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    MEMORY[0x1EEE9AC00](v7, v8);
    v15[6] = v6;
    v15[7] = v9;
    v15[8] = a1;
    v15[9] = v1;
    MEMORY[0x1EEE9AC00](v9, v10);
    v15[2] = sub_1AF95A640;
    v15[3] = v11;
    v12 = MEMORY[0x1E69E7CC0];
    v21 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
    v22 = v13;
    sub_1AF412D4C(sub_1AF9122F0, v15, 1, 0x1000000000000000uLL, 0, v12, &v21);

    if (*(v7 + 16))
    {
      sub_1AF93E174();
    }
  }

  return result;
}

uint64_t sub_1AF95685C(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AF483618();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  result = sub_1AF7025B4(v14, a2);
  if (result)
  {
    return result;
  }

  v16 = *v14;
  v17 = swift_conformsToProtocol2();
  if (v17)
  {
    v18 = v17;
    v57 = a3;
    v19 = *(v17 + 8);

    v20 = v19(v16, v18);
    v21 = *(a5 + 56);
    v22 = 1 << (v21 & 7);
    if (v21 > 7)
    {
      v22 = 0;
    }

    if ((v22 & v20) != 0)
    {
    }

    if (v21 == 2)
    {
      v36 = "Not available on CPU";
      v37 = 0xD000000000000030;
    }

    else
    {
      if ((v22 & 0xB) == 0 || (v19(v16, v18) & 0xB) != 0)
      {
        v38 = 0xD00000000000001BLL;
        if (v21 != 3)
        {
          v38 = 0xD000000000000012;
        }

        v56 = v38;
        if (v21 == 3)
        {
          v36 = "Not available in C";
        }

        else
        {
          v36 = "t code generation";
        }

        goto LABEL_22;
      }

      v36 = "Not available in JavaScript";
      v37 = 0xD000000000000014;
    }

    v56 = v37;
LABEL_22:
    v55 = v36 | 0x8000000000000000;
    v39 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    v40 = sub_1AFDFC318();
    v41 = *(v40 - 8);
    (*(v41 + 16))(v13, &v14[v39], v40);
    (*(v41 + 56))(v13, 0, 1, v40);
    v42 = type metadata accessor for GraphError(0);
    sub_1AF95BBAC(&qword_1EB638988, type metadata accessor for GraphError);
    v43 = swift_allocError();
    v45 = v44;
    *(v44 + v42[8]) = 0;
    *v44 = 0;
    sub_1AF95BCB4(v13, v44 + v42[5], sub_1AF483618);
    v46 = v45 + v42[6];
    *v46 = 1;
    v46[8] = -64;
    v47 = (v45 + v42[7]);
    v48 = v55;
    *v47 = v56;
    v47[1] = v48;
    *(v57 + 16) = 1;
    v49 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v50 = *(a4 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + v49) = v50;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v50 = sub_1AF420408(0, v50[2] + 1, 1, v50);
      *(a4 + v49) = v50;
    }

    v53 = v50[2];
    v52 = v50[3];
    if (v53 >= v52 >> 1)
    {
      *(a4 + v49) = sub_1AF420408(v52 > 1, v53 + 1, 1, v50);
    }

    v54 = *(a4 + v49);
    *(v54 + 16) = v53 + 1;
    *(v54 + 8 * v53 + 32) = v43;
    *(a4 + v49) = v54;
    return result;
  }

  v23 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v24 = sub_1AFDFC318();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v13, &v14[v23], v24);
  (*(v25 + 56))(v13, 0, 1, v24);
  v26 = type metadata accessor for GraphError(0);
  sub_1AF95BBAC(&qword_1EB638988, type metadata accessor for GraphError);
  v27 = swift_allocError();
  v29 = v28;
  *(v28 + v26[8]) = 0;
  *v28 = 0;
  sub_1AF95BCB4(v13, v28 + v26[5], sub_1AF483618);
  v30 = v29 + v26[6];
  *v30 = 1;
  v30[8] = -64;
  v31 = (v29 + v26[7]);
  *v31 = 0xD000000000000021;
  v31[1] = 0x80000001AFF3BB00;
  *(a3 + 16) = 1;
  v32 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
  v33 = *(a4 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + v32) = v33;
  if ((result & 1) == 0)
  {
    result = sub_1AF420408(0, v33[2] + 1, 1, v33);
    v33 = result;
    *(a4 + v32) = result;
  }

  v35 = v33[2];
  v34 = v33[3];
  if (v35 >= v34 >> 1)
  {
    result = sub_1AF420408(v34 > 1, v35 + 1, 1, v33);
    v33 = result;
  }

  v33[2] = v35 + 1;
  v33[v35 + 4] = v27;
  *(a4 + v32) = v33;
  return result;
}

uint64_t sub_1AF956E28()
{

  return v0;
}

uint64_t sub_1AF956E90()
{
  sub_1AF956E28();

  return swift_deallocClassInstance();
}

uint64_t assignWithCopy for GraphCodeGen.CFGCustomFlow.Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  return a1;
}

uint64_t assignWithTake for GraphCodeGen.CFGCustomFlow.Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t destroy for GraphCodeGen.CodeGenAtom(uint64_t a1)
{

  if (*(a1 + 32))
  {
  }
}

uint64_t initializeWithCopy for GraphCodeGen.CodeGenAtom(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);

  if (v4)
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = v4;
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
  }

  else
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 33) = *(a2 + 33);
  }

  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;
  v6 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v6;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  v7 = *(a2 + 104);
  v8 = *(a2 + 112);
  *(a1 + 104) = v7;
  *(a1 + 112) = v8;

  return a1;
}

uint64_t assignWithCopy for GraphCodeGen.CodeGenAtom(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  v4 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (v4)
    {
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);

      *(a1 + 40) = *(a2 + 40);

      *(a1 + 48) = *(a2 + 48);
    }

    else
    {
      sub_1AF957354(a1 + 24);
      v5 = *(a2 + 33);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 33) = v5;
    }
  }

  else if (v4)
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
  }

  else
  {
    v6 = *(a2 + 24);
    *(a1 + 33) = *(a2 + 33);
    *(a1 + 24) = v6;
  }

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);

  return a1;
}

uint64_t sub_1AF957354(uint64_t a1)
{

  return a1;
}

__n128 initializeWithTake for GraphCodeGen.CodeGenAtom(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t assignWithTake for GraphCodeGen.CodeGenAtom(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  if (!*(a1 + 32))
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 32);
  if (!v4)
  {
    sub_1AF957354(a1 + 24);
LABEL_5:
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 33) = *(a2 + 33);
    goto LABEL_6;
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
LABEL_6:
  *(a1 + 56) = *(a2 + 56);

  v5 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v5;

  v6 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v6;

  *(a1 + 96) = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v7;

  return a1;
}

uint64_t getEnumTagSinglePayload for GraphCodeGen.CodeGenAtom(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t storeEnumTagSinglePayload for GraphCodeGen.CodeGenAtom(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for CodeGenContext.SubGraphContext(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for CodeGenContext.SubGraphContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for CodeGenContext.SubGraphContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

unint64_t sub_1AF95768C()
{
  result = qword_1EB640750;
  if (!qword_1EB640750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640750);
  }

  return result;
}

unint64_t sub_1AF9576E4()
{
  result = qword_1EB640758;
  if (!qword_1EB640758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640758);
  }

  return result;
}

unint64_t sub_1AF95773C()
{
  result = qword_1EB640760;
  if (!qword_1EB640760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640760);
  }

  return result;
}

unint64_t sub_1AF957794()
{
  result = qword_1EB640768;
  if (!qword_1EB640768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640768);
  }

  return result;
}

unint64_t sub_1AF9577EC()
{
  result = qword_1EB640770;
  if (!qword_1EB640770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640770);
  }

  return result;
}

uint64_t sub_1AF957840(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1AF95B314(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AF95789C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1AFDFE9D8();
  if (result >= v2)
  {
    if (v2 < 2)
    {
      return result;
    }

    v7 = *a1;
    v8 = -1;
    v9 = 1;
LABEL_7:
    v10 = v8;
    v11 = v7;
    while (1)
    {
      v12 = (v11 + 88);
      v13 = *(v11 + 88);
      v14 = (v13 >> 59) & 0x1E | (v13 >> 2) & 1;
      if ((v14 - 12) >= 2)
      {
        if (v14 == 16 && v13 == 0x8000000000000000)
        {
          v15 = 0;
        }

        else
        {
          v15 = 2;
        }
      }

      else
      {
        v15 = 1;
      }

      v17 = (*v11 >> 59) & 0x1E | (*v11 >> 2) & 1;
      if ((v17 - 12) >= 2)
      {
        v18 = v17 == 16 && *v11 == 0x8000000000000000;
        if (v18 || v15 >= 2)
        {
LABEL_6:
          ++v9;
          v7 += 88;
          --v8;
          if (v9 == v2)
          {
            return result;
          }

          goto LABEL_7;
        }
      }

      else if (v15)
      {
        goto LABEL_6;
      }

      v19 = *(v11 + 136);
      v29 = *(v11 + 120);
      v30 = v19;
      v31 = *(v11 + 152);
      v20 = *(v11 + 104);
      v27 = *v12;
      v28 = v20;
      v21 = *(v11 + 48);
      *(v11 + 120) = *(v11 + 32);
      *(v11 + 136) = v21;
      *(v11 + 152) = *(v11 + 64);
      v22 = *v11;
      v23 = *(v11 + 16);
      v24 = v30;
      *(v11 + 32) = v29;
      *(v11 + 48) = v24;
      *(v11 + 64) = v31;
      v25 = v28;
      *v11 = v27;
      *(v11 + 16) = v25;
      v32 = *(v11 + 168);
      *(v11 + 168) = *(v11 + 80);
      *(v11 + 80) = v32;
      v11 -= 88;
      *v12 = v22;
      v12[1] = v23;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_6;
      }
    }
  }

  v4 = result;
  v5 = v2 / 2;
  if (v2 <= 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1AF0D8108(0, &qword_1EB638700);
    v6 = sub_1AFDFD488();
    *(v6 + 16) = v5;
  }

  *&v27 = v6 + 32;
  *(&v27 + 1) = v5;
  sub_1AF957EC8(&v27, v33, a1, v4);
  *(v6 + 16) = 0;
}

uint64_t sub_1AF957AB0(void *a1)
{
  v2 = a1[1];
  result = sub_1AFDFE9D8();
  if (result >= v2)
  {
    if (v2)
    {
      return sub_1AF957D88(0, v2, 1, a1);
    }
  }

  else
  {
    v4 = result;
    if (v2 <= 1)
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1AF95BBF4();
      v5 = sub_1AFDFD488();
      *(v5 + 16) = v2 / 2;
    }

    v7[0] = (v5 + 32);
    v7[1] = (v2 / 2);
    v6 = v5;
    sub_1AF958528(v7, v8, a1, v4);
    *(v6 + 16) = 0;
  }

  return result;
}

uint64_t sub_1AF957B98(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1AFDFE9D8();
  if (result >= v2)
  {
    if (v2 < 2)
    {
      return result;
    }

    v7 = -1;
    v8 = 1;
    v9 = *a1;
    v10 = *a1;
LABEL_7:
    v11 = *(v9 + 56 * v8);
    v12 = (v11 >> 59) & 0x1E | (v11 >> 2) & 1;
    v13 = v7;
    result = v10;
    while (1)
    {
      if ((v12 - 12) >= 2)
      {
        if (v12 == 16 && v11 == 0x8000000000000000)
        {
          v14 = 0;
        }

        else
        {
          v14 = 2;
        }
      }

      else
      {
        v14 = 1;
      }

      v15 = result + 56;
      v16 = (*result >> 59) & 0x1E | (*result >> 2) & 1;
      if ((v16 - 12) >= 2)
      {
        if (v16 == 16 && *result == 0x8000000000000000)
        {
          v18 = 0;
        }

        else
        {
          v18 = 2;
        }

        if (v14 >= v18)
        {
LABEL_6:
          ++v8;
          v10 += 56;
          --v7;
          if (v8 == v2)
          {
            return result;
          }

          goto LABEL_7;
        }
      }

      else if (v14)
      {
        goto LABEL_6;
      }

      v19 = *(result + 64);
      v20 = *(result + 88);
      v21 = *(result + 96);
      v22 = *(result + 104);
      v23 = *(result + 72);
      v24 = *(result + 16);
      *v15 = *result;
      *(result + 72) = v24;
      *(result + 88) = *(result + 32);
      v25 = *(result + 48);
      *result = v11;
      *(result + 8) = v19;
      *(result + 16) = v23;
      *(result + 32) = v20;
      *(result + 40) = v21;
      *(result + 48) = v22;
      result -= 56;
      *(v15 + 48) = v25;
      if (__CFADD__(v13++, 1))
      {
        goto LABEL_6;
      }
    }
  }

  v4 = result;
  v5 = v2 / 2;
  if (v2 <= 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1AF0D8108(0, &qword_1EB638730);
    v6 = sub_1AFDFD488();
    *(v6 + 16) = v5;
  }

  v27[0] = (v6 + 32);
  v27[1] = v5;
  sub_1AF958B14(v27, v28, a1, v4);
  *(v6 + 16) = 0;
}

uint64_t sub_1AF957D88(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4 + 32 * a3 - 32;
    v6 = result - a3;
    do
    {
      v16 = v6;
      v17 = v5;
      do
      {

        v7 = sub_1AFDFD048();
        v8 = sub_1AFDFD048();

        if (v7 < v8)
        {
          break;
        }

        v9 = *(v5 + 32);
        v10 = *(v5 + 40);
        v11 = *(v5 + 48);
        v12 = *(v5 + 56);
        v13 = *(v5 + 16);
        *(v5 + 32) = *v5;
        *(v5 + 48) = v13;
        *v5 = v9;
        *(v5 + 8) = v10;
        *(v5 + 16) = v11;
        *(v5 + 24) = v12;
        v5 -= 32;
      }

      while (!__CFADD__(v6++, 1));
      ++v4;
      v5 = v17 + 32;
      v6 = v16 - 1;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t sub_1AF957EC8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v77 = *a1;
    v7 = MEMORY[0x1E69E7CC0];
    v76 = a4;
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *a3;
        v10 = *(*a3 + 88 * v6);
        v11 = (v10 >> 59) & 0x1E | (v10 >> 2) & 1;
        if ((v11 - 12) >= 2)
        {
          if (v11 == 16 && v10 == 0x8000000000000000)
          {
            v12 = 0;
          }

          else
          {
            v12 = 2;
          }
        }

        else
        {
          v12 = 1;
        }

        v14 = *(v9 + 88 * v8);
        v15 = (v14 >> 59) & 0x1E | (v14 >> 2) & 1;
        if ((v15 - 12) >= 2)
        {
          if (v15 == 16 && v14 == 0x8000000000000000)
          {
            v16 = 0;
          }

          else
          {
            v16 = 2;
          }
        }

        else
        {
          v16 = 1;
        }

        v18 = v8 + 2;
        if (v5 > v8 + 2)
        {
          v18 = v5;
        }

        v19 = v18 - v8 - 2;
        v20 = 88 * v8;
        v21 = (v9 + 88 * v8 + 176);
        while (v19)
        {
          v24 = *v21;
          v25 = (*v21 >> 59) & 0x1E | (*v21 >> 2) & 1;
          if ((v25 - 12) >= 2)
          {
            if (v25 == 16 && v24 == 0x8000000000000000)
            {
              v26 = 0;
            }

            else
            {
              v26 = 2;
            }
          }

          else
          {
            v26 = 1;
          }

          v28 = (v10 >> 59) & 0x1E | (v10 >> 2) & 1;
          if ((v28 - 12) < 2)
          {
            v22 = 1;
          }

          else if (v28 == 16 && v10 == 0x8000000000000000)
          {
            v22 = 0;
          }

          else
          {
            v22 = 2;
          }

          v23 = (v12 < v16) ^ (v26 >= v22);
          --v19;
          v21 += 11;
          ++v6;
          v10 = v24;
          if ((v23 & 1) == 0)
          {
            goto LABEL_41;
          }
        }

        v6 = v18;
LABEL_41:
        if (v12 < v16 && v8 < v6)
        {
          v29 = 88 * v6 - 88;
          v30 = v6;
          v74 = v8;
          do
          {
            if (v8 != --v30)
            {
              v31 = (*a3 + v20);
              v32 = (*a3 + v29);
              v83 = v31[2];
              v85 = v31[3];
              v87 = v31[4];
              v89 = *(v31 + 10);
              v79 = *v31;
              v81 = v31[1];
              memmove(v31, v32, 0x58uLL);
              v32[2] = v83;
              v32[3] = v85;
              v32[4] = v87;
              *(v32 + 10) = v89;
              *v32 = v79;
              v32[1] = v81;
            }

            ++v8;
            v29 -= 88;
            v20 += 88;
          }

          while (v8 < v30);
          v5 = a3[1];
          a4 = v76;
          v8 = v74;
        }
      }

      if (v6 < v5 && v6 - v8 < a4)
      {
        break;
      }

LABEL_54:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1AF4209A4(0, *(v7 + 2) + 1, 1, v7);
      }

      v34 = *(v7 + 2);
      v33 = *(v7 + 3);
      v35 = v34 + 1;
      if (v34 >= v33 >> 1)
      {
        v7 = sub_1AF4209A4(v33 > 1, v34 + 1, 1, v7);
      }

      *(v7 + 2) = v35;
      v36 = v7 + 32;
      v37 = &v7[16 * v34 + 32];
      *v37 = v8;
      *(v37 + 1) = v6;
      if (v34)
      {
        do
        {
          v38 = v35 - 1;
          if (v35 >= 4)
          {
            v42 = &v36[16 * v35];
            v43 = *(v42 - 7) - *(v42 - 8);
            v41 = *(v42 - 5) - *(v42 - 6);
            v44 = &v7[16 * v35];
            v39 = *v44;
            v40 = *(v44 + 1);
            if (v41 - v39 + v40 >= v43)
            {
              v47 = v35 - 2;
              v46 = *&v36[16 * v38 + 8] - *&v36[16 * v38];
              goto LABEL_69;
            }
          }

          else
          {
            if (v35 != 3)
            {
              v45 = *&v7[16 * v35 + 8] - *&v7[16 * v35];
              v46 = *&v36[16 * v38 + 8] - *&v36[16 * v38];
LABEL_66:
              if (v46 < v45)
              {
                break;
              }

              goto LABEL_71;
            }

            v39 = *(v7 + 6);
            v40 = *(v7 + 7);
            v41 = *(v7 + 5) - *(v7 + 4);
          }

          v45 = v40 - v39;
          v46 = *&v36[16 * v38 + 8] - *&v36[16 * v38];
          if (v45 + v46 < v41)
          {
            goto LABEL_66;
          }

          v47 = v35 - 2;
LABEL_69:
          if (v41 < v46)
          {
            v38 = v47;
          }

LABEL_71:
          v48 = &v36[16 * v38];
          v49 = *(v48 - 2);
          v50 = *(v48 + 1);
          sub_1AF959144((*a3 + 88 * v49), (*a3 + 88 * *v48), (*a3 + 88 * v50), v77);
          if (v4)
          {
          }

          *(v48 - 2) = v49;
          *(v48 - 1) = v50;
          v51 = *(v7 + 2);
          v35 = v51 - 1;
          memmove(&v36[16 * v38], v48 + 16, 16 * (v51 - 1 - v38));
          *(v7 + 2) = v51 - 1;
        }

        while (v51 > 2);
      }

      v5 = a3[1];
      a4 = v76;
      if (v6 >= v5)
      {
        goto LABEL_99;
      }
    }

    if (v8 + a4 < v5)
    {
      v5 = v8 + a4;
    }

    if (v8 + a4 == v6)
    {
LABEL_53:
      v6 = v5;
      goto LABEL_54;
    }

    v52 = *a3 + 88 * v6;
    v53 = v8 - v6;
LABEL_76:
    v54 = v53;
    v55 = v52;
    while (1)
    {
      v56 = (*v55 >> 59) & 0x1E | (*v55 >> 2) & 1;
      if ((v56 - 12) >= 2)
      {
        if (v56 == 16 && *v55 == 0x8000000000000000)
        {
          v57 = 0;
        }

        else
        {
          v57 = 2;
        }
      }

      else
      {
        v57 = 1;
      }

      v59 = (v55 - 88);
      v60 = *(v55 - 88);
      v61 = (v60 >> 59) & 0x1E | (v60 >> 2) & 1;
      if ((v61 - 12) >= 2)
      {
        v62 = v61 == 16 && v60 == 0x8000000000000000;
        if (v62 || v57 >= 2)
        {
LABEL_75:
          ++v6;
          v52 += 88;
          --v53;
          if (v6 == v5)
          {
            goto LABEL_53;
          }

          goto LABEL_76;
        }
      }

      else if (v57)
      {
        goto LABEL_75;
      }

      v84 = *(v55 + 32);
      v86 = *(v55 + 48);
      v88 = *(v55 + 64);
      v90 = *(v55 + 80);
      v80 = *v55;
      v82 = *(v55 + 16);
      v63 = *(v55 - 40);
      *(v55 + 32) = *(v55 - 56);
      *(v55 + 48) = v63;
      *(v55 + 64) = *(v55 - 24);
      *(v55 + 80) = *(v55 - 8);
      v64 = *(v55 - 72);
      *v55 = *v59;
      *(v55 + 16) = v64;
      *(v55 - 56) = v84;
      *(v55 - 40) = v86;
      *(v55 - 24) = v88;
      *(v55 - 8) = v90;
      v55 -= 88;
      *v59 = v80;
      v59[1] = v82;
      if (__CFADD__(v54++, 1))
      {
        goto LABEL_75;
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_99:
  v78 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1AF650C88(v7);
  }

  v66 = v7 + 16;
  v67 = *(v7 + 2);
  if (v67 >= 2)
  {
    do
    {
      v68 = &v7[16 * v67];
      v69 = *v68;
      v70 = &v66[2 * v67];
      v71 = v70[1];
      sub_1AF959144((*a3 + 88 * *v68), (*a3 + 88 * *v70), (*a3 + 88 * v71), v78);
      if (v4)
      {
        break;
      }

      *v68 = v69;
      *(v68 + 1) = v71;
      v72 = *v66 - 1;
      memmove(&v66[2 * v67], v70 + 2, 16 * (*v66 - v67));
      *v66 = v72;
      v67 = v72;
    }

    while (v72 > 1);
  }
}

uint64_t sub_1AF958528(char **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 >= 1)
  {
    v8 = 0;
    v76 = *a1;
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v74 = v8;
      if (v8 + 1 >= v7)
      {
        v7 = v8 + 1;
        v15 = a4;
      }

      else
      {
        v75 = 32 * v8;
        v10 = *v6 + 32 * v8;

        v80 = sub_1AFDFD048();
        v77 = sub_1AFDFD048();

        v11 = v8 + 2;
        v12 = v10 + 88;
        while (v7 != v11)
        {

          v13 = sub_1AFDFD048();
          v14 = sub_1AFDFD048();

          ++v11;
          v12 += 32;
          if (v80 >= v77 == v13 < v14)
          {
            v7 = v11 - 1;
            break;
          }
        }

        v6 = a3;
        v15 = a4;
        v8 = v74;
        if (v80 >= v77 && v74 < v7)
        {
          v16 = 32 * v7 - 16;
          v17 = v75 + 24;
          v18 = v7;
          v19 = v74;
          do
          {
            if (v19 != --v18)
            {
              v20 = (*a3 + v17);
              v21 = *a3 + v16;
              v22 = *(v20 - 3);
              v23 = *(v20 - 1);
              v24 = *v20;
              v25 = *v21;
              *(v20 - 3) = *(v21 - 16);
              *(v20 - 1) = v25;
              *(v21 - 16) = v22;
              *v21 = v23;
              *(v21 + 8) = v24;
            }

            ++v19;
            v16 -= 32;
            v17 += 32;
          }

          while (v19 < v18);
        }
      }

      v26 = v6[1];
      if (v7 < v26 && v7 - v8 < v15)
      {
        if (v8 + v15 >= v26)
        {
          v28 = v6[1];
        }

        else
        {
          v28 = v8 + v15;
        }

        if (v8 + v15 != v7)
        {
          v72 = v9;
          v73 = v5;
          v29 = *v6 + 32 * v7 - 32;
          v30 = v8 - v7;
          v78 = v28;
          do
          {
            v82 = v7;
            v31 = v30;
            v81 = v29;
            do
            {

              v32 = sub_1AFDFD048();
              v33 = sub_1AFDFD048();

              if (v32 < v33)
              {
                break;
              }

              v34 = *(v29 + 32);
              v35 = *(v29 + 40);
              v36 = *(v29 + 48);
              v37 = *(v29 + 56);
              v38 = *(v29 + 16);
              *(v29 + 32) = *v29;
              *(v29 + 48) = v38;
              *v29 = v34;
              *(v29 + 8) = v35;
              *(v29 + 16) = v36;
              *(v29 + 24) = v37;
              v29 -= 32;
            }

            while (!__CFADD__(v31++, 1));
            ++v7;
            v28 = v78;
            v29 = v81 + 32;
            --v30;
          }

          while (v82 + 1 != v78);
          v9 = v72;
          v5 = v73;
          v6 = a3;
        }
      }

      else
      {
        v28 = v7;
      }

      v79 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1AF4209A4(0, *(v9 + 2) + 1, 1, v9);
      }

      v41 = *(v9 + 2);
      v40 = *(v9 + 3);
      v42 = v41 + 1;
      if (v41 >= v40 >> 1)
      {
        v9 = sub_1AF4209A4(v40 > 1, v41 + 1, 1, v9);
      }

      *(v9 + 2) = v42;
      v43 = v9 + 32;
      v44 = &v9[16 * v41 + 32];
      *v44 = v74;
      *(v44 + 1) = v79;
      if (v41)
      {
        break;
      }

LABEL_3:
      v7 = v6[1];
      v8 = v79;
      if (v79 >= v7)
      {
        goto LABEL_54;
      }
    }

    while (1)
    {
      v45 = v42 - 1;
      if (v42 >= 4)
      {
        v49 = &v43[16 * v42];
        v50 = *(v49 - 7) - *(v49 - 8);
        v48 = *(v49 - 5) - *(v49 - 6);
        v51 = &v9[16 * v42];
        v46 = *v51;
        v47 = *(v51 + 1);
        if (v48 - v46 + v47 >= v50)
        {
          v54 = v42 - 2;
          v53 = *&v43[16 * v45 + 8] - *&v43[16 * v45];
          goto LABEL_48;
        }
      }

      else
      {
        if (v42 != 3)
        {
          v52 = *&v9[16 * v42 + 8] - *&v9[16 * v42];
          v53 = *&v43[16 * v45 + 8] - *&v43[16 * v45];
LABEL_45:
          if (v53 < v52)
          {
            goto LABEL_3;
          }

          goto LABEL_50;
        }

        v46 = *(v9 + 6);
        v47 = *(v9 + 7);
        v48 = *(v9 + 5) - *(v9 + 4);
      }

      v52 = v47 - v46;
      v53 = *&v43[16 * v45 + 8] - *&v43[16 * v45];
      if (v52 + v53 < v48)
      {
        goto LABEL_45;
      }

      v54 = v42 - 2;
LABEL_48:
      if (v48 < v53)
      {
        v45 = v54;
      }

LABEL_50:
      v55 = &v43[16 * v45];
      v56 = *(v55 - 2);
      v57 = *(v55 + 1);
      sub_1AF959490((*v6 + 32 * v56), (*v6 + 32 * *v55), (*v6 + 32 * v57), v76);
      if (v5)
      {
      }

      *(v55 - 2) = v56;
      *(v55 - 1) = v57;
      v58 = *(v9 + 2);
      v42 = v58 - 1;
      memmove(&v43[16 * v45], v55 + 16, 16 * (v58 - 1 - v45));
      *(v9 + 2) = v58 - 1;
      if (v58 <= 2)
      {
        goto LABEL_3;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_54:
  v83 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1AF650C88(v9);
  }

  v59 = v9 + 16;
  v60 = *(v9 + 2);
  if (v60 >= 2)
  {
    v61 = v6;
    do
    {
      v62 = v9;
      v63 = &v9[16 * v60];
      v64 = *v63;
      v65 = &v59[2 * v60];
      v66 = v65[1];
      sub_1AF959490((*v61 + 32 * *v63), (*v61 + 32 * *v65), (*v61 + 32 * v66), v83);
      if (v5)
      {
        break;
      }

      *v63 = v64;
      *(v63 + 1) = v66;
      v67 = *v59 - 1;
      memmove(&v59[2 * v60], v65 + 2, 16 * (*v59 - v60));
      *v59 = v67;
      v60 = v67;
      v9 = v62;
    }

    while (v67 > 1);
  }
}

uint64_t sub_1AF958B14(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v93 = *a1;
    v95 = MEMORY[0x1E69E7CC0];
    v92 = a4;
    while (1)
    {
      v8 = v7++;
      if (v7 < v6)
      {
        v9 = *a3;
        v10 = *(*a3 + 56 * v7);
        v11 = (v10 >> 59) & 0x1E | (v10 >> 2) & 1;
        if ((v11 - 12) >= 2)
        {
          if (v11 == 16 && v10 == 0x8000000000000000)
          {
            v12 = 0;
          }

          else
          {
            v12 = 2;
          }
        }

        else
        {
          v12 = 1;
        }

        v14 = *(v9 + 56 * v8);
        v15 = (v14 >> 59) & 0x1E | (v14 >> 2) & 1;
        if ((v15 - 12) >= 2)
        {
          if (v15 == 16 && v14 == 0x8000000000000000)
          {
            v16 = 0;
          }

          else
          {
            v16 = 2;
          }
        }

        else
        {
          v16 = 1;
        }

        if (v6 <= v8 + 2)
        {
          v18 = v8 + 2;
        }

        else
        {
          v18 = v6;
        }

        v19 = v18 - v8 - 2;
        v20 = (v9 + 56 * v8 + 112);
        while (v19)
        {
          v23 = *v20;
          v24 = (*v20 >> 59) & 0x1E | (*v20 >> 2) & 1;
          if ((v24 - 12) >= 2)
          {
            if (v24 == 16 && v23 == 0x8000000000000000)
            {
              v25 = 0;
            }

            else
            {
              v25 = 2;
            }
          }

          else
          {
            v25 = 1;
          }

          v27 = (v10 >> 59) & 0x1E | (v10 >> 2) & 1;
          if ((v27 - 12) < 2)
          {
            v21 = 1;
          }

          else if (v27 == 16 && v10 == 0x8000000000000000)
          {
            v21 = 0;
          }

          else
          {
            v21 = 2;
          }

          v22 = (v12 < v16) ^ (v25 >= v21);
          --v19;
          v20 += 7;
          ++v7;
          v10 = v23;
          if ((v22 & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        v7 = v18;
LABEL_42:
        if (v12 < v16 && v8 < v7)
        {
          v28 = 56 * v7 - 24;
          v29 = 56 * v8 + 48;
          v30 = v7;
          v31 = v8;
          do
          {
            if (v31 != --v30)
            {
              v32 = (*a3 + v29);
              v33 = *a3 + v28;
              v34 = *(v32 - 6);
              v35 = *(v32 - 40);
              v36 = *(v32 - 16);
              v37 = *(v32 - 1);
              v38 = *v32;
              v39 = *(v32 - 2);
              v41 = *(v33 - 16);
              v40 = *v33;
              v42 = *(v33 - 32);
              *v32 = *(v33 + 16);
              *(v32 - 2) = v41;
              *(v32 - 1) = v40;
              *(v32 - 3) = v42;
              *(v33 - 32) = v34;
              *(v33 - 24) = v35;
              *(v33 - 16) = v39;
              *v33 = v36;
              *(v33 + 8) = v37;
              *(v33 + 16) = v38;
            }

            ++v31;
            v28 -= 56;
            v29 += 56;
          }

          while (v31 < v30);
          v6 = a3[1];
        }
      }

      if (v7 < v6 && v7 - v8 < a4)
      {
        break;
      }

LABEL_55:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v95 = sub_1AF4209A4(0, *(v95 + 2) + 1, 1, v95);
      }

      v44 = *(v95 + 2);
      v43 = *(v95 + 3);
      v45 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        v95 = sub_1AF4209A4(v43 > 1, v44 + 1, 1, v95);
      }

      *(v95 + 2) = v45;
      v46 = v95 + 32;
      v47 = &v95[16 * v44 + 32];
      *v47 = v8;
      *(v47 + 1) = v7;
      if (v44)
      {
        do
        {
          v48 = v45 - 1;
          if (v45 >= 4)
          {
            v52 = &v46[16 * v45];
            v53 = *(v52 - 7) - *(v52 - 8);
            v51 = *(v52 - 5) - *(v52 - 6);
            v54 = &v95[16 * v45];
            v49 = *v54;
            v50 = *(v54 + 1);
            if (v51 - v49 + v50 >= v53)
            {
              v57 = v45 - 2;
              v56 = *&v46[16 * v48 + 8] - *&v46[16 * v48];
              goto LABEL_70;
            }
          }

          else
          {
            if (v45 != 3)
            {
              v55 = *&v95[16 * v45 + 8] - *&v95[16 * v45];
              v56 = *&v46[16 * v48 + 8] - *&v46[16 * v48];
LABEL_67:
              if (v56 < v55)
              {
                break;
              }

              goto LABEL_72;
            }

            v49 = *(v95 + 6);
            v50 = *(v95 + 7);
            v51 = *(v95 + 5) - *(v95 + 4);
          }

          v55 = v50 - v49;
          v56 = *&v46[16 * v48 + 8] - *&v46[16 * v48];
          if (v55 + v56 < v51)
          {
            goto LABEL_67;
          }

          v57 = v45 - 2;
LABEL_70:
          if (v51 < v56)
          {
            v48 = v57;
          }

LABEL_72:
          v58 = &v46[16 * v48];
          v59 = *(v58 - 2);
          v60 = *(v58 + 1);
          sub_1AF9597DC((*a3 + 56 * v59), (*a3 + 56 * *v58), *a3 + 56 * v60, v93);
          if (v5)
          {
          }

          *(v58 - 2) = v59;
          *(v58 - 1) = v60;
          v61 = *(v95 + 2);
          v45 = v61 - 1;
          memmove(&v46[16 * v48], v58 + 16, 16 * (v61 - 1 - v48));
          *(v95 + 2) = v61 - 1;
        }

        while (v61 > 2);
      }

      v6 = a3[1];
      a4 = v92;
      if (v7 >= v6)
      {
        goto LABEL_98;
      }
    }

    if (v8 + a4 < v6)
    {
      v6 = v8 + a4;
    }

    if (v8 + a4 == v7)
    {
LABEL_54:
      v7 = v6;
      goto LABEL_55;
    }

    v62 = *a3;
    v63 = *a3 + 56 * v7 - 56;
    v64 = v8 - v7;
LABEL_77:
    v65 = *(v62 + 56 * v7);
    v66 = (v65 >> 59) & 0x1E | (v65 >> 2) & 1;
    v67 = v64;
    v68 = v63;
    while (1)
    {
      if ((v66 - 12) >= 2)
      {
        if (v66 == 16 && v65 == 0x8000000000000000)
        {
          v69 = 0;
        }

        else
        {
          v69 = 2;
        }
      }

      else
      {
        v69 = 1;
      }

      v70 = v68 + 56;
      v71 = (*v68 >> 59) & 0x1E | (*v68 >> 2) & 1;
      if ((v71 - 12) >= 2)
      {
        if (v71 == 16 && *v68 == 0x8000000000000000)
        {
          v73 = 0;
        }

        else
        {
          v73 = 2;
        }

        if (v69 >= v73)
        {
LABEL_76:
          ++v7;
          v63 += 56;
          --v64;
          if (v7 == v6)
          {
            goto LABEL_54;
          }

          goto LABEL_77;
        }
      }

      else if (v69)
      {
        goto LABEL_76;
      }

      v74 = *(v68 + 64);
      v75 = *(v68 + 88);
      v76 = *(v68 + 96);
      v77 = *(v68 + 104);
      v78 = *(v68 + 72);
      v79 = *(v68 + 16);
      *v70 = *v68;
      *(v68 + 72) = v79;
      *(v68 + 88) = *(v68 + 32);
      v80 = *(v68 + 48);
      *v68 = v65;
      *(v68 + 8) = v74;
      *(v68 + 16) = v78;
      *(v68 + 32) = v75;
      *(v68 + 40) = v76;
      *(v68 + 48) = v77;
      v68 -= 56;
      *(v70 + 48) = v80;
      if (__CFADD__(v67++, 1))
      {
        goto LABEL_76;
      }
    }
  }

  v95 = MEMORY[0x1E69E7CC0];
LABEL_98:
  v82 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v95 = sub_1AF650C88(v95);
  }

  v83 = v95 + 16;
  v84 = *(v95 + 2);
  if (v84 >= 2)
  {
    do
    {
      v85 = &v95[16 * v84];
      v86 = *v85;
      v87 = &v83[2 * v84];
      v88 = v87[1];
      sub_1AF9597DC((*a3 + 56 * *v85), (*a3 + 56 * *v87), *a3 + 56 * v88, v82);
      if (v5)
      {
        break;
      }

      *v85 = v86;
      *(v85 + 1) = v88;
      v89 = *v83 - 1;
      memmove(&v83[2 * v84], v87 + 2, 16 * (*v83 - v84));
      *v83 = v89;
      v84 = v89;
    }

    while (v89 > 1);
  }
}

uint64_t sub_1AF959144(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 88;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 88;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[88 * v11] <= a4)
    {
      memmove(a4, __src, 88 * v11);
    }

    v12 = &v4[88 * v11];
    if (v10 >= 88 && v6 > v7)
    {
LABEL_36:
      v20 = v6 - 88;
      v5 -= 88;
      v21 = v12;
      do
      {
        v23 = *(v21 - 11);
        v21 -= 88;
        v22 = v23;
        v24 = *v20;
        v25 = (v23 >> 59) & 0x1E | (v23 >> 2) & 1;
        if (v25 == 16 && v22 == 0x8000000000000000)
        {
          v27 = 0;
        }

        else
        {
          v27 = 2;
        }

        if ((v25 - 12) < 2)
        {
          v27 = 1;
        }

        v28 = (v24 >> 59) & 0x1E | (v24 >> 2) & 1;
        if ((v28 - 12) >= 2)
        {
          v29 = v28 == 16 && v24 == 0x8000000000000000;
          if (!v29 && v27 < 2)
          {
LABEL_56:
            if (v5 + 88 != v6)
            {
              memmove(v5, v6 - 88, 0x58uLL);
            }

            if (v12 <= v4 || (v6 -= 88, v20 <= v7))
            {
              v6 = v20;
              goto LABEL_63;
            }

            goto LABEL_36;
          }
        }

        else if (!v27)
        {
          goto LABEL_56;
        }

        if (v5 + 88 != v12)
        {
          memmove(v5, v21, 0x58uLL);
        }

        v5 -= 88;
        v12 = v21;
      }

      while (v21 > v4);
      v12 = v21;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[88 * v9] <= a4)
    {
      memmove(a4, __dst, 88 * v9);
    }

    v12 = &v4[88 * v9];
    if (v8 >= 88 && v6 < v5)
    {
      do
      {
        v13 = *v4;
        v14 = (*v6 >> 59) & 0x1E | (*v6 >> 2) & 1;
        v15 = v14 == 16 && *v6 == 0x8000000000000000;
        if (v15)
        {
          v16 = 0;
        }

        else
        {
          v16 = 2;
        }

        if ((v14 - 12) < 2)
        {
          v16 = 1;
        }

        v17 = (v13 >> 59) & 0x1E | (v13 >> 2) & 1;
        if ((v17 - 12) >= 2)
        {
          v19 = v17 == 16 && v13 == 0x8000000000000000;
          if (v19 || v16 >= 2)
          {
LABEL_25:
            v18 = v4;
            v15 = v7 == v4;
            v4 += 88;
            if (v15)
            {
              goto LABEL_27;
            }

LABEL_26:
            memmove(v7, v18, 0x58uLL);
            goto LABEL_27;
          }
        }

        else if (v16)
        {
          goto LABEL_25;
        }

        v18 = v6;
        v15 = v7 == v6;
        v6 += 88;
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_27:
        v7 += 88;
      }

      while (v4 < v12 && v6 < v5);
    }

    v6 = v7;
  }

LABEL_63:
  v30 = (v12 - v4) / 88;
  if (v6 != v4 || v6 >= &v4[88 * v30])
  {
    memmove(v6, v4, 88 * v30);
  }

  return 1;
}

uint64_t sub_1AF959490(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __src - __dst;
  v7 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v7 = __src - __dst;
  }

  v8 = v7 >> 5;
  v9 = a3 - __src;
  v10 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v10 = a3 - __src;
  }

  v11 = v10 >> 5;
  if (v8 >= v10 >> 5)
  {
    v14 = a4;
    if (a4 != __src || &__src[32 * v11] <= a4)
    {
      memmove(a4, __src, 32 * v11);
    }

    v33 = &v14[32 * v11];
    if (v9 >= 32 && v5 > __dst)
    {
      v31 = v14;
LABEL_26:
      v32 = v5;
      v29 = v5 - 32;
      v20 = v4 - 32;
      v21 = v33;
      do
      {
        v21 -= 32;
        v22 = v20;
        v23 = v20 + 32;

        v24 = sub_1AFDFD048();
        v25 = sub_1AFDFD048();

        if (v24 >= v25)
        {
          v4 = v22;
          if (v23 != v32)
          {
            v27 = *(v29 + 1);
            *v22 = *v29;
            *(v22 + 1) = v27;
          }

          v14 = v31;
          if (v33 <= v31 || (v5 = v29, v29 <= __dst))
          {
            v5 = v29;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v23 != v33)
        {
          v26 = *(v21 + 1);
          *v22 = *v21;
          *(v22 + 1) = v26;
        }

        v20 = v22 - 32;
        v33 = v21;
        v14 = v31;
      }

      while (v21 > v31);
      v33 = v21;
      v5 = v32;
    }
  }

  else
  {
    v12 = __dst;
    if (a4 != __dst || &__dst[32 * v8] <= a4)
    {
      v13 = a4;
      memmove(a4, __dst, 32 * v8);
      a4 = v13;
    }

    v33 = &a4[32 * v8];
    v14 = a4;
    if (v6 >= 32 && v5 < v4)
    {
      while (1)
      {

        v15 = sub_1AFDFD048();
        v16 = sub_1AFDFD048();

        if (v15 >= v16)
        {
          break;
        }

        v17 = v14;
        v18 = v12 == v14;
        v14 += 32;
        if (!v18)
        {
          goto LABEL_16;
        }

LABEL_17:
        v12 += 32;
        if (v14 >= v33 || v5 >= v4)
        {
          goto LABEL_19;
        }
      }

      v17 = v5;
      v18 = v12 == v5;
      v5 += 32;
      if (v18)
      {
        goto LABEL_17;
      }

LABEL_16:
      v19 = *(v17 + 1);
      *v12 = *v17;
      *(v12 + 1) = v19;
      goto LABEL_17;
    }

LABEL_19:
    v5 = v12;
  }

LABEL_37:
  if (v5 != v14 || v5 >= &v14[(v33 - v14 + (v33 - v14 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v5, v14, 32 * ((v33 - v14) / 32));
  }

  return 1;
}

uint64_t sub_1AF9597DC(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 56;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 56;
  if (v9 >= v11)
  {
    if (a4 != __dst || &__dst[56 * v11] <= a4)
    {
      memmove(a4, __dst, 56 * v11);
    }

    v12 = &v4[56 * v11];
    if (v10 >= 56 && v6 > v7)
    {
LABEL_36:
      v23 = v6 - 56;
      v5 -= 56;
      v24 = v12;
      do
      {
        v26 = *(v24 - 56);
        v24 -= 56;
        v25 = v26;
        v27 = *v23;
        v28 = (v26 >> 59) & 0x1E | (v26 >> 2) & 1;
        if (v28 == 16 && v25 == 0x8000000000000000)
        {
          v30 = 0;
        }

        else
        {
          v30 = 2;
        }

        if ((v28 - 12) < 2)
        {
          v30 = 1;
        }

        v31 = (v27 >> 59) & 0x1E | (v27 >> 2) & 1;
        if ((v31 - 12) >= 2)
        {
          v32 = v31 == 16 && v27 == 0x8000000000000000;
          if (!v32 && v30 < 2)
          {
LABEL_56:
            if ((v5 + 56) != v6)
            {
              v36 = *v23;
              v37 = *(v6 - 40);
              v38 = *(v6 - 24);
              *(v5 + 48) = *(v6 - 1);
              *(v5 + 16) = v37;
              *(v5 + 32) = v38;
              *v5 = v36;
            }

            if (v12 <= v4 || (v6 -= 56, v23 <= v7))
            {
              v6 = v23;
              goto LABEL_63;
            }

            goto LABEL_36;
          }
        }

        else if (!v30)
        {
          goto LABEL_56;
        }

        if ((v5 + 56) != v12)
        {
          v33 = *v24;
          v34 = *(v24 + 16);
          v35 = *(v24 + 32);
          *(v5 + 48) = *(v24 + 48);
          *(v5 + 16) = v34;
          *(v5 + 32) = v35;
          *v5 = v33;
        }

        v5 -= 56;
        v12 = v24;
      }

      while (v24 > v4);
      v12 = v24;
    }
  }

  else
  {
    if (a4 != __src || &__src[56 * v9] <= a4)
    {
      memmove(a4, __src, 56 * v9);
    }

    v12 = &v4[56 * v9];
    if (v8 >= 56 && v6 < v5)
    {
      do
      {
        v13 = *v4;
        v14 = (*v6 >> 59) & 0x1E | (*v6 >> 2) & 1;
        v15 = v14 == 16 && *v6 == 0x8000000000000000;
        if (v15)
        {
          v16 = 0;
        }

        else
        {
          v16 = 2;
        }

        if ((v14 - 12) < 2)
        {
          v16 = 1;
        }

        v17 = (v13 >> 59) & 0x1E | (v13 >> 2) & 1;
        if ((v17 - 12) >= 2)
        {
          v19 = v17 == 16 && v13 == 0x8000000000000000;
          if (v19 || v16 >= 2)
          {
LABEL_25:
            v18 = v4;
            v15 = v7 == v4;
            v4 += 56;
            if (v15)
            {
              goto LABEL_27;
            }

LABEL_26:
            v20 = *v18;
            v21 = *(v18 + 1);
            v22 = *(v18 + 2);
            *(v7 + 6) = *(v18 + 6);
            *(v7 + 1) = v21;
            *(v7 + 2) = v22;
            *v7 = v20;
            goto LABEL_27;
          }
        }

        else if (v16)
        {
          goto LABEL_25;
        }

        v18 = v6;
        v15 = v7 == v6;
        v6 += 56;
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_27:
        v7 += 56;
      }

      while (v4 < v12 && v6 < v5);
    }

    v6 = v7;
  }

LABEL_63:
  v39 = ((v12 - v4) * 0x4924924924924925) >> 64;
  v40 = (v39 >> 4) + (v39 >> 63);
  if (v6 != v4 || v6 >= &v4[56 * v40])
  {
    memmove(v6, v4, 56 * v40);
  }

  return 1;
}

uint64_t sub_1AF959B3C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1AF95A7B4(0);
  v24 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);

  if (v11)
  {
    v26 = v10;
    v23 = (v7 + 8);
    v12 = v11 - 1;
    v13 = a3 + 16 * v11 + 24;
    do
    {
      v29 = 0x776F6C6625;
      v30 = 0xE500000000000000;
      v27 = v12;
      v14 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v14);

      v16 = v29;
      v15 = v30;
      v29 = 690626600;
      v30 = 0xE400000000000000;

      MEMORY[0x1B2718AE0](v16, v15);
      MEMORY[0x1B2718AE0](4157020, 0xE300000000000000);
      sub_1AFDFC4A8();

      v25 = &v22;
      v27 = a1;
      v28 = a2;
      MEMORY[0x1EEE9AC00](v17, v18);
      sub_1AFDFC3B8();
      sub_1AF95A690();
      sub_1AF95A6E4();
      sub_1AF95BBAC(&qword_1ED722BD8, sub_1AF95A7B4);
      v19 = v26;
      v20 = v24;
      sub_1AFDFD968();

      (*v23)(v19, v20);

      a1 = v29;
      a2 = v30;
      --v12;
      v13 -= 16;
    }

    while (v12 != -1);
  }

  return a1;
}

uint64_t sub_1AF959E18(void *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v25 = a3;
  v5 = *a1;
  v4 = a1[1];
  v23 = 0;
  v24 = 0xE000000000000000;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v6 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    v19 = a1;
    v17 = 0;
    v18 = 0xE000000000000000;
    goto LABEL_27;
  }

  for (i = 0; i < v6; i += v13)
  {
    if ((v4 & 0x1000000000000000) != 0)
    {
      v11 = sub_1AFDFE208();
      v13 = v12;
      goto LABEL_16;
    }

    if ((v4 & 0x2000000000000000) != 0)
    {
      v22[0] = v5;
      v22[1] = v4 & 0xFFFFFFFFFFFFFFLL;
      v10 = v22 + i;
    }

    else
    {
      v9 = (v4 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v5 & 0x1000000000000000) == 0)
      {
        v9 = sub_1AFDFE308();
      }

      v10 = (v9 + i);
    }

    v11 = *v10;
    if ((*v10 & 0x80000000) == 0)
    {
LABEL_15:
      v13 = 1;
      goto LABEL_16;
    }

    v15 = (__clz(v11 ^ 0xFF) - 24);
    if (v15 > 2)
    {
      if (v15 == 3)
      {
        v11 = ((v11 & 0xF) << 12) | ((v10[1] & 0x3F) << 6) | v10[2] & 0x3F;
        v13 = 3;
      }

      else
      {
        v11 = ((v11 & 0xF) << 18) | ((v10[1] & 0x3F) << 12) | ((v10[2] & 0x3F) << 6) | v10[3] & 0x3F;
        v13 = 4;
      }
    }

    else
    {
      if (v15 == 1)
      {
        goto LABEL_15;
      }

      v11 = v10[1] & 0x3F | ((v11 & 0x1F) << 6);
      v13 = 2;
    }

LABEL_16:
    v14 = a2(v11);
    if (v3)
    {
    }

    if ((v14 & 1) == 0)
    {
      sub_1AFDFD018();
    }
  }

  v17 = v23;
  v18 = v24;
  v19 = a1;
LABEL_27:
  *v19 = v17;
  v19[1] = v18;
  return result;
}

uint64_t sub_1AF95A008(uint64_t a1, unint64_t a2)
{
  v4 = sub_1AFDFBCE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v50 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
  }

  else
  {
    a2 = 0xE600000000000000;
    a1 = 0x656D616E6F6ELL;
  }

  sub_1AF8CC534(a1, a2);
  if (v9)
  {
    v10 = sub_1AFDFCD48();

    if ((v10 & 1) == 0)
    {
      v51 = 95;
      v52 = 0xE100000000000000;
      MEMORY[0x1B2718AE0](a1, a2);
    }
  }

  v11 = sub_1AFDFCF98();
  v13 = v12;

  v51 = v11;
  v52 = v13;
  v57 = 46;
  v58 = 0xE100000000000000;
  v55 = 95;
  v56 = 0xE100000000000000;
  sub_1AF4486E4();
  v14 = sub_1AFDFDEB8();
  v16 = v15;

  v51 = v14;
  v52 = v16;
  v57 = 45;
  v58 = 0xE100000000000000;
  v55 = 95;
  v56 = 0xE100000000000000;
  v17 = sub_1AFDFDEB8();
  v19 = v18;

  v51 = v17;
  v52 = v19;
  v57 = 47;
  v58 = 0xE100000000000000;
  v55 = 95;
  v56 = 0xE100000000000000;
  v20 = sub_1AFDFDEB8();
  v22 = v21;

  v51 = v20;
  v52 = v22;
  v57 = 124;
  v58 = 0xE100000000000000;
  v55 = 95;
  v56 = 0xE100000000000000;
  v23 = sub_1AFDFDEB8();
  v25 = v24;

  v51 = v23;
  v52 = v25;
  v57 = 35;
  v58 = 0xE100000000000000;
  v26 = sub_1AFDFDE98();

  v28 = *(v26 + 32);
  v27 = *(v26 + 40);

  v29 = 0xE000000000000000;
  v57 = 0;
  v58 = 0xE000000000000000;
  v30 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v30 = v28 & 0xFFFFFFFFFFFFLL;
  }

  v51 = v28;
  v52 = v27;
  v53 = 0;
  v54 = v30;

  v31 = sub_1AFDFD108();
  v33 = v32;
  if (v32)
  {
    v34 = v31;
    while (1)
    {
      if ((v34 != 2573 || v33 != 0xE200000000000000) && (sub_1AFDFEE28() & 1) == 0)
      {
        if ((v33 & 0x1000000000000000) != 0)
        {
          v41 = sub_1AFDFD008();
          v38 = v33 & 0x2000000000000000;
        }

        else
        {
          if ((v33 & 0x2000000000000000) != 0)
          {
            v37 = v34;
          }

          else
          {
            if ((v34 & 0x1000000000000000) != 0)
            {
              v36 = ((v33 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v36 = sub_1AFDFE308();
            }

            v37 = *v36;
          }

          v38 = v33 & 0x2000000000000000;
          v39 = v37;
          v40 = (__clz(~v37) - 24) << 16;
          if (v39 < 0)
          {
            v41 = v40;
          }

          else
          {
            v41 = 65541;
          }
        }

        if (v38)
        {
          v42 = HIBYTE(v33) & 0xF;
        }

        else
        {
          v42 = v34 & 0xFFFFFFFFFFFFLL;
        }

        if (v41 >> 14 != 4 * v42 || (sub_1AF759524(v34, v33) & 0xFFFFFF80) != 0)
        {
          goto LABEL_15;
        }

        sub_1AF759524(v34, v33);
      }

      MEMORY[0x1B2718AD0](v34, v33);
LABEL_15:

      v34 = sub_1AFDFD108();
      v33 = v35;
      if (!v35)
      {
        v33 = v57;
        v29 = v58;
        break;
      }
    }
  }

  if (qword_1EB6371D0 != -1)
  {
    swift_once();
  }

  v43 = sub_1AF477C68(v4, qword_1EB640730);
  v44 = v50;
  (*(v5 + 16))(v50, v43, v4);
  v45 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v46 = swift_allocObject();
  (*(v5 + 32))(v46 + v45, v44, v4);
  v57 = v33;
  v58 = v29;
  sub_1AF959E18(&v57, sub_1AF95A5D8, v46);

  v47 = v57;
  v48 = v58;
  v51 = v57;
  v52 = v58;
  if (qword_1EB6371D8 != -1)
  {
    swift_once();
  }

  if (sub_1AF70265C(v47, v48, qword_1EB640748))
  {
    MEMORY[0x1B2718AE0](95, 0xE100000000000000);
    return v51;
  }

  return v47;
}

unint64_t sub_1AF95A690()
{
  result = qword_1EB640778;
  if (!qword_1EB640778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640778);
  }

  return result;
}

unint64_t sub_1AF95A6E4()
{
  result = qword_1EB640780;
  if (!qword_1EB640780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640780);
  }

  return result;
}

unint64_t sub_1AF95A738()
{
  result = qword_1EB640788;
  if (!qword_1EB640788)
  {
    sub_1AF95B314(255, &qword_1ED722BC8, MEMORY[0x1E69E67B0], MEMORY[0x1E69E9288]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640788);
  }

  return result;
}

uint64_t sub_1AF95A88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  if (v5)
  {

    v7 = v5 - 1;
    v8 = a4 + 16 * v5 + 24;
    do
    {
      v9 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v9);

      sub_1AF4486E4();
      a1 = sub_1AFDFDEB8();

      --v7;
      v8 -= 16;
    }

    while (v7 != -1);
    v10 = 16 * v5 + 24;
    v11 = *(a3 + 16);
    v12 = a4 + v10;
    v13 = (a3 + v10);
    do
    {
      if (v5 <= v11)
      {
        v14 = *v13;
        if (*v13)
        {
          v15 = *(v13 - 1);

          MEMORY[0x1B2718AE0](v15, v14);

          a1 = sub_1AFDFDEB8();
        }
      }

      v12 -= 16;
      v13 -= 2;
      --v5;
    }

    while (v5);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_1AF95AAA8(uint64_t a1)
{
  sub_1AF4486E4();
  if (sub_1AFDFDF18())
  {
    v2 = sub_1AFDFDE98();
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      v19 = -v3;
      v18 = v2 + 40;
      v6 = MEMORY[0x1E69E7CC0];
      v7 = MEMORY[0x1E69E7CC0];
      do
      {
        v8 = (v18 + 16 * v5++);
        while (1)
        {
          v12 = *(v8 - 1);
          v11 = *v8;

          if (sub_1AFDFDF18())
          {
            break;
          }

          if (v4)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v7 = sub_1AF420554(0, *(v7 + 2) + 1, 1, v7);
            }

            v14 = *(v7 + 2);
            v13 = *(v7 + 3);
            v15 = v14 + 1;
            if (v14 >= v13 >> 1)
            {
              v9 = sub_1AF420554(v13 > 1, v14 + 1, 1, v7);
              v7 = v9;
            }

            else
            {
              v9 = v7;
            }
          }

          else
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_1AF420554(0, *(v6 + 2) + 1, 1, v6);
            }

            v14 = *(v6 + 2);
            v16 = *(v6 + 3);
            v15 = v14 + 1;
            if (v14 >= v16 >> 1)
            {
              v9 = sub_1AF420554(v16 > 1, v14 + 1, 1, v6);
              v6 = v9;
            }

            else
            {
              v9 = v6;
            }
          }

          *(v9 + 2) = v15;
          v10 = &v9[16 * v14];
          *(v10 + 4) = v12;
          *(v10 + 5) = v11;
          ++v5;
          v8 += 2;
          if (v19 + v5 == 1)
          {
            goto LABEL_21;
          }
        }

        v4 = 1;
      }

      while (v19 + v5);
    }

LABEL_21:

    sub_1AF95B314(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1AF488088();
    a1 = sub_1AFDFCD98();

    sub_1AFDFCD98();
  }

  else
  {
  }

  return a1;
}

uint64_t sub_1AF95ADC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v5 = sub_1AFDFC318();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v29, "node_id_begin:");
  HIBYTE(v29[1]) = -18;
  (*(v6 + 16))(v10, a1 + OBJC_IVAR____TtC3VFX4Node_authoringID, v5, v8);
  v11 = sub_1AFDFC2B8();
  v13 = v12;
  (*(v6 + 8))(v10, v5);
  MEMORY[0x1B2718AE0](v11, v13);

  v14 = v29[0];
  v15 = v29[1];
  v29[0] = 0;
  v29[1] = 0xE000000000000000;
  sub_1AFDFE218();

  v29[0] = 0xD000000000000011;
  v29[1] = 0x80000001AFF3BD40;
  MEMORY[0x1B2718AE0](v14, v15);

  v16 = v29[0];
  v17 = v29[1];
  sub_1AF95B314(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v28 = xmmword_1AFE431C0;
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v16;
  *(inited + 40) = v17;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v19 = swift_initStackObject();
  *(v19 + 16) = v28;
  *(v19 + 32) = v27;
  *(v19 + 40) = a3;
  *(v19 + 48) = 0;
  *(v19 + 56) = 0;
  v29[0] = 0;
  v29[1] = 0xE000000000000000;

  sub_1AFDFE218();

  v29[0] = 0xD000000000000011;
  v29[1] = 0x80000001AFF3BD40;
  MEMORY[0x1B2718AE0](0x5F64695F65646F6ELL, 0xEB00000000646E65);
  v20 = v29[0];
  v21 = v29[1];
  v22 = swift_initStackObject();
  *(v22 + 16) = v28;
  *(v22 + 32) = v20;
  *(v22 + 40) = v21;
  sub_1AF441DD8();
  *(v22 + 48) = 0;
  *(v22 + 56) = 0;
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1AFE4C680;
  *(v23 + 32) = inited;
  *(v23 + 40) = v19;
  *(v23 + 48) = v22;
  v24 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AF95B314(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v24;
}

double sub_1AF95B0CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26[2] = a4;
  v26[3] = a5;
  v9 = *(a3 + 112);
  if (*(v9 + 16) && (v10 = a2, v11 = sub_1AF0D3F10(a1), v13 = v12, a2 = v10, (v13 & 1) != 0))
  {
    v14 = *(v9 + 56) + 120 * v11;
    v16 = *(v14 + 32);
    v15 = *(v14 + 48);
    v17 = *(v14 + 16);
    v28 = *v14;
    v29 = v17;
    v30 = v16;
    v31 = v15;
    v18 = *(v14 + 64);
    v19 = *(v14 + 80);
    v20 = *(v14 + 96);
    v35 = *(v14 + 112);
    v33 = v19;
    v34 = v20;
    v32 = v18;
    sub_1AF95B9F0(&v28, &v36, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720]);
    v40 = v32;
    v41 = v33;
    v42 = v34;
    v43 = v35;
    v36 = v28;
    v37 = v29;
    v38 = v30;
    v39 = v31;
  }

  else
  {
    sub_1AF94FCAC(a1, a2, sub_1AF95B2A0, v26, &v28);
    v40 = v32;
    v41 = v33;
    v42 = v34;
    v43 = v35;
    v36 = v28;
    v37 = v29;
    v38 = v30;
    v39 = v31;
    sub_1AF95B9F0(&v28, v27, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27[0] = *(a3 + 112);
    *(a3 + 112) = 0x8000000000000000;
    sub_1AF857304(&v28, a1, isUniquelyReferenced_nonNull_native);
    *(a3 + 112) = v27[0];
  }

  v22 = v41;
  *(a6 + 64) = v40;
  *(a6 + 80) = v22;
  *(a6 + 96) = v42;
  *(a6 + 112) = v43;
  v23 = v37;
  *a6 = v36;
  *(a6 + 16) = v23;
  result = *&v38;
  v25 = v39;
  *(a6 + 32) = v38;
  *(a6 + 48) = v25;
  return result;
}

double sub_1AF95B2A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v9 = a1;
  v4(v10, &v9);
  v5 = v14;
  *(a2 + 64) = v13;
  *(a2 + 80) = v5;
  *(a2 + 96) = v15;
  *(a2 + 112) = v16;
  v6 = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = v6;
  result = *&v11;
  v8 = v12;
  *(a2 + 32) = v11;
  *(a2 + 48) = v8;
  return result;
}

void sub_1AF95B314(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AF95B380(uint64_t a1, void (*a2)(void *__return_ptr, uint64_t *))
{
  type metadata accessor for NoopNode(0);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    type metadata accessor for GraphCodeGen.CFGNoop();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
LABEL_32:

    return v6;
  }

  v7 = *a1;
  v8 = swift_conformsToProtocol2();
  if (v8)
  {
    v9 = a1 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v11 = (*(v8 + 8))(v7, v8);
    v12 = *(a1 + 16);
    v13 = *(v12 + 16);
    if (v13)
    {
      v34 = a2;
      v38 = MEMORY[0x1E69E7CC0];

      sub_1AFC079FC(0, v13, 0);
      v14 = 0;
      v15 = 32;
      v36 = a1;
      v37 = v38;
      v35 = v12;
      do
      {
        v16 = *(v12 + v14 + 32);
        v17 = *(a1 + 24);
        v18 = *(v17 + v15);

        sub_1AF448650(v17);
        sub_1AF442064(v18);

        LOBYTE(v17) = sub_1AF90F890(v18, 0xC000000000000008);
        sub_1AF445BE4(v18);
        if (v17)
        {
          v41 = v16;
          v34(v52, &v41);
          v19 = v52[0];
          if (!v52[0])
          {
            v41 = 0;
            v42 = 0xE000000000000000;
            sub_1AFDFE218();

            v41 = sub_1AF9703D8();
            v42 = v32;
            MEMORY[0x1B2718AE0](0xD00000000000002BLL, 0x80000001AFF3BCE0);

            while (1)
            {
              sub_1AFDFE518();
              __break(1u);
LABEL_41:
              v38 = 0;
              v39 = 0xE000000000000000;
              sub_1AFDFE218();

              v38 = sub_1AF9703D8();
              v39 = v33;
              MEMORY[0x1B2718AE0](0xD00000000000002BLL, 0x80000001AFF3BCE0);
            }
          }
        }

        else
        {
          type metadata accessor for GraphCodeGen.CFGInvalid();
          v19 = swift_allocObject();
        }

        v20 = v11;
        v21 = *(v11 + v14 + 32);
        v22 = *(v11 + v14 + 40);

        v23 = v37;
        v38 = v37;
        v25 = *(v37 + 16);
        v24 = *(v37 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1AFC079FC(v24 > 1, v25 + 1, 1);
          v23 = v38;
        }

        *(v23 + 16) = v25 + 1;
        v37 = v23;
        v26 = v23 + 24 * v25;
        *(v26 + 32) = v19;
        *(v26 + 40) = v21;
        *(v26 + 48) = v22;
        v14 += 16;
        v15 += 8;
        --v13;
        v11 = v20;
        v12 = v35;
        a1 = v36;
      }

      while (v13);

      v27 = v37;
    }

    else
    {

      v27 = MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for GraphCodeGen.CFGCustomFlow();
    goto LABEL_31;
  }

  if (v7 == _TtC3VFX14NoopReturnNode || v7 == _TtC3VFX17NoopReturnAnyNode)
  {
LABEL_13:
    type metadata accessor for GraphCodeGen.CFGProcedure();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = 0;
    goto LABEL_32;
  }

  if (v7 == _TtC3VFX12SubGraphNode)
  {
    (v7[3].info)(&v41);
    v28 = v42;
    v51 = v41;
    v52[0] = v42;
    v29 = MEMORY[0x1E69E62F8];
    sub_1AF957840(&v51, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
    v50 = v43;
    sub_1AF957840(&v50, &qword_1EB638968, &type metadata for TypeConstraint, v29);
    v49 = v44;
    sub_1AF95BC54(&v49, sub_1AF445C2C);
    v48 = v45;
    sub_1AF95BC54(&v48, sub_1AF445C2C);
    v47 = v46;
    sub_1AF957840(&v47, &qword_1EB638978, &type metadata for AnyValue, v29);
    v30 = *(v28 + 16);
    sub_1AF957840(v52, &qword_1EB638968, &type metadata for TypeConstraint, v29);
    if (!v30)
    {
      type metadata accessor for GraphCodeGen.CFGNoop();
      v6 = swift_allocObject();
      *(v6 + 16) = a1;
      goto LABEL_32;
    }
  }

  if (sub_1AF974CEC())
  {
    v38 = *(*(a1 + 16) + 32);

    a2(&v40, &v38);
    v27 = v40;
    if (!v40)
    {
      goto LABEL_41;
    }

    type metadata accessor for GraphCodeGen.CFGProcedure();
LABEL_31:
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = v27;
    goto LABEL_32;
  }

  if ((sub_1AF975010() & 1) == 0)
  {
    if (!sub_1AF975340())
    {
      return 0;
    }

    goto LABEL_13;
  }

  v38 = *(*(a1 + 16) + 32);

  a2(&v40, &v38);
  v6 = v40;
  if (!v40)
  {
    goto LABEL_41;
  }

  return v6;
}

void sub_1AF95B98C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AF95B9F0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_1AF95B314(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1AF95BA60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

ValueMetadata *sub_1AF95BAC8()
{
  result = qword_1EB640790;
  if (!qword_1EB640790)
  {
    result = &type metadata for VFXObjectReference;
    atomic_store(&type metadata for VFXObjectReference, &qword_1EB640790);
  }

  return result;
}

void sub_1AF95BB40()
{
  if (!qword_1EB638FC8)
  {
    sub_1AF0D8108(255, &qword_1EB638FC0);
    v0 = sub_1AFDFC4B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB638FC8);
    }
  }
}

uint64_t sub_1AF95BBAC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1AF95BBF4()
{
  if (!qword_1EB6407A0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6407A0);
    }
  }
}

uint64_t sub_1AF95BC54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AF95BCB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t destroy for GraphCodeGen.CodeGenParameter(unint64_t *a1)
{
  sub_1AF445BE4(*a1);
}

uint64_t initializeWithCopy for GraphCodeGen.CodeGenParameter(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  sub_1AF442064(*a2);
  v6 = *(a2 + 8);
  v5 = *(a2 + 16);
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;

  return a1;
}

uint64_t assignWithCopy for GraphCodeGen.CodeGenParameter(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  sub_1AF442064(*a2);
  v5 = *a1;
  *a1 = v4;
  sub_1AF445BE4(v5);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithTake for GraphCodeGen.CodeGenParameter(uint64_t a1, uint64_t a2)
{
  sub_1AF445BE4(*a1);
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;

  return a1;
}

uint64_t getEnumTagSinglePayload for GraphCodeGen.CodeGenParameter(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for GraphCodeGen.CodeGenParameter(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t destroy for CodeGenContext(uint64_t a1)
{

  result = *(a1 + 24);
  if (result)
  {
  }

  return result;
}

uint64_t initializeWithCopy for CodeGenContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);

  if (v4)
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = v4;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
  }

  else
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 25) = *(a2 + 25);
  }

  return a1;
}

uint64_t assignWithCopy for CodeGenContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v4)
    {
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);

      *(a1 + 32) = *(a2 + 32);

      *(a1 + 40) = *(a2 + 40);
    }

    else
    {
      sub_1AF957354(a1 + 16);
      v5 = *(a2 + 25);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 25) = v5;
    }
  }

  else if (v4)
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
  }

  else
  {
    v6 = *(a2 + 16);
    *(a1 + 25) = *(a2 + 25);
    *(a1 + 16) = v6;
  }

  return a1;
}

uint64_t assignWithTake for CodeGenContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  if (!*(a1 + 24))
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    sub_1AF957354(a1 + 16);
LABEL_5:
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 25) = *(a2 + 25);
    return a1;
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for CodeGenContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t storeEnumTagSinglePayload for CodeGenContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1AF95C29C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isVisible];
  *a2 = result;
  return result;
}

id sub_1AF95C2E4@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 opacity];
  *a2 = v4;
  return result;
}

id sub_1AF95C32C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 renderingOrder];
  *a2 = result;
  return result;
}

id sub_1AF95C374@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 castsShadow];
  *a2 = result;
  return result;
}

id sub_1AF95C3BC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 categoryBitMask];
  *a2 = result;
  return result;
}

void sub_1AF95C404(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 states];
  if (v3)
  {
    v4 = v3;
    sub_1AF44D11C();
    v5 = sub_1AFDFD418();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

id sub_1AF95C474@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 state];
  *a2 = result;
  return result;
}

uint64_t sub_1AF95C4DC(char a1)
{
  result = 0x746E6174736E6F43;
  switch(a1)
  {
    case 1:
      result = 1752457549;
      break;
    case 2:
      result = 2003790918;
      break;
    case 3:
      result = 0x6369676F4CLL;
      break;
    case 4:
      result = 0x6D6F646E6152;
      break;
    case 5:
      result = 0x676E69736145;
      break;
    case 6:
      result = 0x69737265766E6F43;
      break;
    case 7:
      result = 0x7463656A624FLL;
      break;
    case 8:
      result = 0x6E69746E65726150;
      break;
    case 9:
      result = 0x6F6974616D696E41;
      break;
    case 10:
      result = 0x616E6964726F6F43;
      break;
    case 11:
      result = 0x656974696C697455;
      break;
    case 12:
      result = 0x47207265646E6552;
      break;
    case 13:
      result = 0x65727574786554;
      break;
    case 14:
      result = 0x6870617267627553;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1AF95C66C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1AF95C4DC(*a1);
  v5 = v4;
  if (v3 == sub_1AF95C4DC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF95C6F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF966F50();
  *a1 = result;
  return result;
}

uint64_t sub_1AF95C724@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AF95C4DC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AF95C750()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AF95C4DC(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF95C7B4()
{
  sub_1AF95C4DC(*v0);
  sub_1AFDFD038();
}

uint64_t sub_1AF95C808()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AF95C4DC(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF95C878()
{
  type metadata accessor for GraphNodeLibrary();
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  v0[2] = sub_1AF43DC14(MEMORY[0x1E69E7CC0]);
  v0[3] = sub_1AF43DCF8(v1);
  v0[4] = sub_1AF43DD10(v1);
  v0[5] = v1;
  v0[6] = v1;
  v0[7] = sub_1AF43DD28(v1);
  result = sub_1AF95CC18();
  qword_1EB6C27C0 = v0;
  return result;
}

uint64_t sub_1AF95C8F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v3 + 16);
  *(v3 + 16) = 0x8000000000000000;
  sub_1AF8549FC(a1, v7, isUniquelyReferenced_nonNull_native);
  *(v3 + 16) = v34;
  v9 = sub_1AF91A590();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *(v3 + 24);
  *(v3 + 24) = 0x8000000000000000;
  sub_1AF8549E8(v7, v9, v11, v12);

  *(v3 + 24) = v35;

  if (a3)
  {
    v13 = *(a3 + 16);
    if (v13)
    {
      v14 = (a3 + 48);
      while (1)
      {
        v18 = *(v14 - 1);
        v17 = *v14;

        v19 = swift_isUniquelyReferenced_nonNull_native();
        v20 = *(v4 + 24);
        v36 = v20;
        *(v4 + 24) = 0x8000000000000000;
        v21 = sub_1AF419914(v18, v17);
        v23 = v22;
        v24 = v20[2] + ((v22 & 1) == 0);
        if (v20[3] < v24)
        {
          break;
        }

        if (v19)
        {
          goto LABEL_10;
        }

        v27 = v21;
        sub_1AF849484();
        v21 = v27;
        if ((v23 & 1) == 0)
        {
LABEL_11:
          v16 = v20;
          v20[(v21 >> 6) + 8] |= 1 << v21;
          v26 = (v20[6] + 16 * v21);
          *v26 = v18;
          v26[1] = v17;
          *(v20[7] + 8 * v21) = v7;
          ++v20[2];
          goto LABEL_5;
        }

LABEL_4:
        v15 = v21;

        v16 = v36;
        *(v36[7] + 8 * v15) = v7;
LABEL_5:
        *(v4 + 24) = v16;

        v14 += 3;
        if (!--v13)
        {
          goto LABEL_14;
        }
      }

      sub_1AF83518C(v24, v19);
      v21 = sub_1AF419914(v18, v17);
      if ((v23 & 1) != (v25 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }

LABEL_10:
      if ((v23 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_4;
    }
  }

LABEL_14:
  v28 = *(v4 + 40);

  result = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 40) = v28;
  if ((result & 1) == 0)
  {
    result = sub_1AF423364(0, *(v28 + 16) + 1, 1, v28);
    v28 = result;
    *(v4 + 40) = result;
  }

  v30 = *(v28 + 16);
  v29 = *(v28 + 24);
  if (v30 >= v29 >> 1)
  {
    result = sub_1AF423364(v29 > 1, v30 + 1, 1, v28);
    v28 = result;
  }

  *(v28 + 16) = v30 + 1;
  v31 = v28 + 16 * v30;
  *(v31 + 32) = a1;
  *(v31 + 40) = a2;
  *(v4 + 40) = v28;
  return result;
}

double sub_1AF95CBC0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF966618(a1, v6);
  if (!v2)
  {
    sub_1AF966F9C();
    *(a2 + 24) = v5;
    *a2 = v6[0];
    result = v7;
    *(a2 + 4) = v7;
  }

  return result;
}

uint64_t sub_1AF95CC18()
{
  sub_1AF9642D4();
  sub_1AF95E984();
  sub_1AF95FD98();
  sub_1AF961378();
  sub_1AF95CF64();
  v14 = &type metadata for BlendMode;
  v0 = sub_1AF9671D8();
  v15 = v0;
  v12 = 0;
  v13 = 1;
  type metadata accessor for EnumConstantNode(0);
  v1 = swift_allocObject();
  sub_1AF441194(&v12, v1 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value);
  v2 = MEMORY[0x1E69E7CC0];
  v1[3] = 0;
  v1[4] = 0;
  v1[2] = v2;
  sub_1AFDFC308();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v12);
  sub_1AF95C8F0(v1, 2, 0);

  v14 = &type metadata for BlendMode;
  v15 = v0;
  v12 = 0;
  v13 = 1;
  type metadata accessor for ImplicitEnumConstantNode(0);
  v3 = swift_allocObject();
  sub_1AF441194(&v12, v11);
  sub_1AF441194(v11, v3 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value);
  v3[3] = 0;
  v3[4] = 0;
  v3[2] = v2;
  sub_1AFDFC308();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v11);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v12);
  sub_1AF95C8F0(v3, 2, 0);

  sub_1AF963A0C();
  sub_1AF961AE4();
  type metadata accessor for EasingNode(0);
  v4 = swift_allocObject();
  *(v4 + OBJC_IVAR____TtC3VFX10EasingNode_kind) = 2;
  v4[3] = 0;
  v4[4] = 0;
  v4[2] = v2;
  sub_1AFDFC308();
  sub_1AF95C8F0(v4, 0, 0);

  sub_1AF963E04();
  sub_1AF960F88();
  type metadata accessor for NoopReturnNode(0);
  v5 = swift_allocObject();
  *(v5 + OBJC_IVAR____TtC3VFX14NoopReturnNode_type) = 0xC000000000000058;
  v5[3] = 0;
  v5[4] = 0;
  v5[2] = v2;
  sub_1AFDFC308();
  sub_1AF95C8F0(v5, 1, 0);

  type metadata accessor for NoopReturnAnyNode(0);
  v6 = swift_allocObject();
  v6[3] = 0;
  v6[4] = 0;
  v6[2] = v2;
  sub_1AFDFC308();
  sub_1AF95C8F0(v6, 1, 0);

  type metadata accessor for NoopActionNode(0);
  v7 = swift_allocObject();
  v7[3] = 0;
  v7[4] = 0;
  v7[2] = v2;
  sub_1AFDFC308();
  sub_1AF95C8F0(v7, 1, 0);

  sub_1AF964974();
  type metadata accessor for LogDebugNode(0);
  v8 = swift_allocObject();
  v8[3] = 0;
  v8[4] = 0;
  v8[2] = v2;
  sub_1AFDFC308();
  sub_1AF95C8F0(v8, 0, 0);

  type metadata accessor for LogDebugPassthroughNode(0);
  v9 = swift_allocObject();
  v9[3] = 0;
  v9[4] = 0;
  v9[2] = v2;
  sub_1AFDFC308();
  sub_1AF95C8F0(v9, 0, 0);

  sub_1AF9652B8();
  return sub_1AF9653DC();
}

uint64_t sub_1AF95CF64()
{
  v0 = sub_1AFDFDE28();
  v4 = sub_1AF578F80(v0, v1, v2, v3);

  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  v7 = *(v4 + 32);
  v8 = *(v4 + 40);
  v9 = *(v4 + 48);
  v10 = *(v4 + 56);
  v11 = *(v4 + 58);

  type metadata accessor for SetECSValueNode(0);
  v12 = swift_allocObject();
  v13 = v12 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath;
  *v13 = 0xFFFFFFFFLL;
  *(v13 + 1) = v6;
  *(v13 + 2) = v5;
  *(v13 + 3) = v7;
  *(v13 + 4) = v8;
  *(v13 + 5) = v9;
  v13[48] = v10;
  *(v13 + 25) = v11;
  v12[2] = MEMORY[0x1E69E7CC0];
  v12[3] = 0;
  v12[4] = 0;

  sub_1AFDFC308();
  sub_1AF95C8F0(v12, 2, 0);

  type metadata accessor for GetECSValueNode(0);
  v14 = swift_allocObject();
  v15 = v14 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath;
  *v15 = 0xFFFFFFFFLL;
  *(v15 + 1) = v6;
  *(v15 + 2) = v5;
  *(v15 + 3) = v7;
  *(v15 + 4) = v8;
  *(v15 + 5) = v9;
  v15[48] = v10;
  *(v15 + 25) = v11;
  v14[2] = MEMORY[0x1E69E7CC0];
  v14[3] = 0;
  v14[4] = 0;

  sub_1AFDFC308();
  sub_1AF95C8F0(v14, 2, 0);

  type metadata accessor for InspectorSetECSValueNode(0);
  v16 = swift_allocObject();
  v17 = v16 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath;
  *v17 = 0xFFFFFFFFLL;
  *(v17 + 1) = v6;
  *(v17 + 2) = v5;
  *(v17 + 3) = v7;
  *(v17 + 4) = v8;
  *(v17 + 5) = v9;
  v17[48] = v10;
  *(v17 + 25) = v11;
  v16[2] = MEMORY[0x1E69E7CC0];
  v16[3] = 0;
  v16[4] = 0;

  sub_1AFDFC308();
  sub_1AF95C8F0(v16, 2, 0);

  type metadata accessor for SetAnyECSValueNode(0);
  v18 = swift_allocObject();
  v19 = v18 + OBJC_IVAR____TtC3VFX16_AnyECSValueNode_scriptKeyPath;
  *v19 = v6;
  *(v19 + 1) = v5;
  *(v19 + 2) = v7;
  *(v19 + 3) = v8;
  *(v19 + 4) = v9;
  v19[40] = v10;
  *(v19 + 21) = v11;
  v18[2] = MEMORY[0x1E69E7CC0];
  v18[3] = 0;
  v18[4] = 0;

  sub_1AFDFC308();
  sub_1AF95C8F0(v18, 2, 0);

  type metadata accessor for GetAnyECSValueNode(0);
  v20 = swift_allocObject();
  v21 = v20 + OBJC_IVAR____TtC3VFX16_AnyECSValueNode_scriptKeyPath;
  *v21 = v6;
  *(v21 + 1) = v5;
  *(v21 + 2) = v7;
  *(v21 + 3) = v8;
  *(v21 + 4) = v9;
  v21[40] = v10;
  *(v21 + 21) = v11;
  v20[2] = MEMORY[0x1E69E7CC0];
  v20[3] = 0;
  v20[4] = 0;

  sub_1AFDFC308();
  sub_1AF95C8F0(v20, 2, 0);

  type metadata accessor for SetParticleValueAtIndexNode(0);
  v22 = swift_allocObject();
  v23 = v22 + OBJC_IVAR____TtC3VFX18_ParticleValueNode_keyPath;
  *v23 = v6;
  *(v23 + 1) = v5;
  *(v23 + 2) = v7;
  *(v23 + 3) = v8;
  *(v23 + 4) = v9;
  v23[40] = v10;
  *(v23 + 21) = v11;
  v22[2] = MEMORY[0x1E69E7CC0];
  v22[3] = 0;
  v22[4] = 0;

  sub_1AFDFC308();
  sub_1AF95C8F0(v22, 2, 0);

  type metadata accessor for GetParticleValueAtIndexNode(0);
  v24 = swift_allocObject();
  v25 = v24 + OBJC_IVAR____TtC3VFX18_ParticleValueNode_keyPath;
  *v25 = v6;
  *(v25 + 1) = v5;
  *(v25 + 2) = v7;
  *(v25 + 3) = v8;
  *(v25 + 4) = v9;
  v25[40] = v10;
  *(v25 + 21) = v11;
  v24[2] = MEMORY[0x1E69E7CC0];
  v24[3] = 0;
  v24[4] = 0;

  sub_1AFDFC308();
  sub_1AF95C8F0(v24, 2, 0);

  type metadata accessor for InspectorSetParticleValueNode(0);
  v26 = swift_allocObject();
  *(v26 + OBJC_IVAR____TtC3VFX29InspectorSetParticleValueNode_stage) = 3;
  v27 = v26 + OBJC_IVAR____TtC3VFX18_ParticleValueNode_keyPath;
  v127 = v8;
  v128 = v6;
  *v27 = v6;
  *(v27 + 1) = v5;
  *(v27 + 2) = v7;
  *(v27 + 3) = v8;
  v126 = v9;
  *(v27 + 4) = v9;
  v124 = v11;
  v125 = v10;
  v27[40] = v10;
  *(v27 + 21) = v11;
  v26[4] = 0;
  v28 = MEMORY[0x1E69E7CC0];
  v26[2] = MEMORY[0x1E69E7CC0];
  v26[3] = 0;
  v130 = v5;

  v129 = v7;

  sub_1AFDFC308();
  sub_1AF95C8F0(v26, 2, 0);

  KeyPath = swift_getKeyPath();
  sub_1AF9669C8(KeyPath, v136);
  v30 = v136[0];
  v31 = v136[1];
  v33 = v136[2];
  v32 = v136[3];
  v34 = v136[4];
  LODWORD(v7) = v137;

  *&v138 = v30;
  *(&v138 + 1) = v31;
  *v139 = v33;
  *&v139[8] = v32;
  *&v139[16] = v34;
  v139[24] = v7 & 1;
  *&v139[26] = WORD1(v7);
  if (qword_1EB633DD8 != -1)
  {
    swift_once();
  }

  v35 = qword_1EB6C2AB8;
  type metadata accessor for SetWorldValueNode(0);
  v36 = swift_allocObject();
  v37 = v35;

  v38 = sub_1AF966D44(v37, &v138, v36);
  sub_1AF95C8F0(v38, 2, 0);

  type metadata accessor for GetWorldValueNode(0);
  v39 = swift_allocObject();

  v40 = sub_1AF966D44(v37, &v138, v39);
  sub_1AF95C8F0(v40, 2, 0);

  type metadata accessor for InspectorSetWorldValueNode(0);
  v41 = swift_allocObject();

  v42 = sub_1AF966D44(v37, &v138, v41);
  sub_1AF95C8F0(v42, 2, 0);

  type metadata accessor for GetAnyWorldValueNode(0);
  v43 = swift_allocObject();
  v44 = (v43 + OBJC_IVAR____TtC3VFX18_AnyWorldValueNode_scriptKeyPath);
  v45 = *v139;
  *v44 = v138;
  v44[1] = v45;
  *(v44 + 28) = *&v139[12];
  v43[3] = 0;
  v43[4] = 0;
  v43[2] = v28;

  sub_1AFDFC308();
  sub_1AF95C8F0(v43, 2, 0);

  type metadata accessor for SetAnyWorldValueNode(0);
  v46 = swift_allocObject();
  v47 = (v46 + OBJC_IVAR____TtC3VFX18_AnyWorldValueNode_scriptKeyPath);
  v48 = *v139;
  *v47 = v138;
  v47[1] = v48;
  *(v47 + 28) = *&v139[12];
  v46[3] = 0;
  v46[4] = 0;
  v46[2] = v28;

  sub_1AFDFC308();
  sub_1AF95C8F0(v46, 2, 0);

  swift_unknownObjectWeakInit();
  v133 = 0;
  swift_unknownObjectWeakAssign();
  v134 = 0x3E6C6C756E3CLL;
  v135 = 0xE600000000000000;
  type metadata accessor for WorldObjectNode(0);
  v49 = swift_allocObject();
  sub_1AF44596C(v132, v49 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference);
  *(v49 + OBJC_IVAR____TtC3VFX15WorldObjectNode_semantic) = xmmword_1AFE22A20;
  v49[3] = 0;
  v49[4] = 0;
  v49[2] = v28;
  sub_1AFDFC308();
  sub_1AF4459C8(v132);
  sub_1AF95C8F0(v49, 2, &unk_1F24FFFE0);

  sub_1AF966FFC(&unk_1F2500000);
  v133 = 0;
  swift_unknownObjectWeakInit();
  v133 = 0;
  swift_unknownObjectWeakAssign();
  v134 = 0x3E6C6C756E3CLL;
  v135 = 0xE600000000000000;
  type metadata accessor for ImplicitWorldObjectNode(0);
  v50 = swift_allocObject();
  sub_1AF44596C(v132, v131);
  sub_1AF44596C(v131, v50 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference);
  *(v50 + OBJC_IVAR____TtC3VFX15WorldObjectNode_semantic) = xmmword_1AFE22A20;
  v50[3] = 0;
  v50[4] = 0;
  v50[2] = v28;
  sub_1AFDFC308();
  sub_1AF4459C8(v131);
  sub_1AF4459C8(v132);
  sub_1AF95C8F0(v50, 2, &unk_1F2500018);

  sub_1AF966FFC(&unk_1F2500038);
  v133 = 0;
  swift_unknownObjectWeakInit();
  v133 = 0;
  swift_unknownObjectWeakAssign();
  v134 = 0x3E6C6C756E3CLL;
  v135 = 0xE600000000000000;
  v51 = swift_allocObject();
  sub_1AF44596C(v132, v51 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference);
  *(v51 + OBJC_IVAR____TtC3VFX15WorldObjectNode_semantic) = xmmword_1AFE86810;
  v51[3] = 0;
  v51[4] = 0;
  v51[2] = v28;
  sub_1AFDFC308();
  sub_1AF4459C8(v132);
  sub_1AF95C8F0(v51, 0, 0);

  type metadata accessor for TimeNode(0);
  v52 = swift_allocObject();
  v52[3] = 0;
  v52[4] = 0;
  v52[2] = v28;
  sub_1AFDFC308();
  sub_1AF95C8F0(v52, 0, 0);

  type metadata accessor for DeltaTimeNode(0);
  v53 = swift_allocObject();
  v53[3] = 0;
  v53[4] = 0;
  v53[2] = v28;
  sub_1AFDFC308();
  sub_1AF95C8F0(v53, 0, 0);

  type metadata accessor for IsFirstFrameNode(0);
  v54 = swift_allocObject();
  v54[3] = 0;
  v54[4] = 0;
  v54[2] = v28;
  sub_1AFDFC308();
  sub_1AF95C8F0(v54, 0, 0);

  type metadata accessor for OnUpdateNode(0);
  v55 = swift_allocObject();
  v55[3] = 0;
  v55[4] = 0;
  v55[2] = v28;
  sub_1AFDFC308();
  sub_1AF95C8F0(v55, 0, 0);

  type metadata accessor for OnFirstFrameNode(0);
  v56 = swift_allocObject();
  v56[3] = 0;
  v56[4] = 0;
  v56[2] = v28;
  sub_1AFDFC308();
  sub_1AF95C8F0(v56, 0, 0);

  type metadata accessor for OnParticleStageNode(0);
  v57 = swift_allocObject();
  *(v57 + OBJC_IVAR____TtC3VFX19OnParticleStageNode_stage) = 3;
  v57[3] = 0;
  v57[4] = 0;
  v57[2] = v28;
  sub_1AFDFC308();
  sub_1AF95C8F0(v57, 0, 0);

  v58 = swift_allocObject();
  *(v58 + OBJC_IVAR____TtC3VFX19OnParticleStageNode_stage) = 5;
  v58[3] = 0;
  v58[4] = 0;
  v58[2] = v28;
  sub_1AFDFC308();
  sub_1AF95C8F0(v58, 0, 0);

  type metadata accessor for AlphaPremultipliedNode(0);
  v59 = swift_allocObject();
  v59[3] = 0;
  v59[4] = 0;
  v59[2] = v28;
  sub_1AFDFC308();
  sub_1AF95C8F0(v59, 0, 0);

  type metadata accessor for RGBAToHSBANode(0);
  v60 = swift_allocObject();
  v60[3] = 0;
  v60[4] = 0;
  v60[2] = v28;
  sub_1AFDFC308();
  sub_1AF95C8F0(v60, 0, 0);

  type metadata accessor for RGBToHSBNode(0);
  v61 = swift_allocObject();
  v61[3] = 0;
  v61[4] = 0;
  v61[2] = v28;
  sub_1AFDFC308();
  sub_1AF95C8F0(v61, 0, 0);

  type metadata accessor for HSBAToRGBANode(0);
  v62 = swift_allocObject();
  v62[2] = v28;
  v62[3] = 0;
  v62[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v62, 0, 0);

  type metadata accessor for HSBToRGBNode(0);
  v63 = swift_allocObject();
  v63[2] = v28;
  v63[3] = 0;
  v63[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v63, 0, 0);

  type metadata accessor for sRGBAToLinearNode(0);
  v64 = swift_allocObject();
  v64[2] = v28;
  v64[3] = 0;
  v64[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v64, 0, 0);

  type metadata accessor for sRGBToLinearNode(0);
  v65 = swift_allocObject();
  v65[2] = v28;
  v65[3] = 0;
  v65[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v65, 0, 0);

  type metadata accessor for LinearTosRGBNode(0);
  v66 = swift_allocObject();
  v66[2] = v28;
  v66[3] = 0;
  v66[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v66, 0, 0);

  type metadata accessor for LinearTosRGBANode(0);
  v67 = swift_allocObject();
  v67[2] = v28;
  v67[3] = 0;
  v67[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v67, 0, 0);

  type metadata accessor for SetColorNode(0);
  v68 = swift_allocObject();
  v68[2] = v28;
  v68[3] = 0;
  v68[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v68, 0, 0);

  type metadata accessor for EvaluateCurveNode(0);
  v69 = swift_allocObject();
  v69[2] = v28;
  v69[3] = 0;
  v69[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v69, 0, 0);

  type metadata accessor for EvaluateColorRampNode(0);
  v70 = swift_allocObject();
  v70[2] = v28;
  v70[3] = 0;
  v70[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v70, 0, 0);

  v71 = [objc_allocWithZone(VFXAssetNode) init];
  type metadata accessor for ImplicitWorldAssetNode(0);
  swift_allocObject();
  v72 = sub_1AF9C3E60(v71, 0, 1, 1, 0);

  sub_1AF95C8F0(v72, 2, 0);

  v73 = [objc_allocWithZone(VFXAssetNode) init];
  type metadata accessor for WorldAssetNode(0);
  swift_allocObject();
  v74 = sub_1AF9C3E60(v73, 0, 1, 1, 0);

  sub_1AF95C8F0(v74, 2, 0);

  type metadata accessor for Random01Node(0);
  v75 = swift_allocObject();
  *(v75 + OBJC_IVAR____TtC3VFX12_RandomTNode_type) = 0xC000000000000058;
  v75[2] = v28;
  v75[3] = 0;
  v75[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v75, 0, 0);

  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_1AFE4C420;
  v77 = v76 | 0x2000000000000000;
  v78 = swift_allocObject();
  *(v78 + OBJC_IVAR____TtC3VFX12_RandomTNode_type) = v77;
  v78[2] = v28;
  v78[3] = 0;
  v78[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v78, 0, 0);

  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_1AFE4C430;
  v80 = v79 | 0x2000000000000000;
  v81 = swift_allocObject();
  *(v81 + OBJC_IVAR____TtC3VFX12_RandomTNode_type) = v80;
  v81[2] = v28;
  v81[3] = 0;
  v81[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v81, 0, 0);

  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_1AFE4C440;
  v83 = v82 | 0x2000000000000000;
  v84 = swift_allocObject();
  *(v84 + OBJC_IVAR____TtC3VFX12_RandomTNode_type) = v83;
  v84[2] = v28;
  v84[3] = 0;
  v84[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v84, 0, 0);

  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_1AFE4C420;
  v86 = v85 | 0x2000000000000000;
  type metadata accessor for RandomUnitVectorNode(0);
  v87 = swift_allocObject();
  *(v87 + OBJC_IVAR____TtC3VFX12_RandomTNode_type) = v86;
  v87[2] = v28;
  v87[3] = 0;
  v87[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v87, 0, 0);

  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_1AFE4C430;
  v89 = v88 | 0x2000000000000000;
  v90 = swift_allocObject();
  *(v90 + OBJC_IVAR____TtC3VFX12_RandomTNode_type) = v89;
  v90[2] = v28;
  v90[3] = 0;
  v90[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v90, 0, 0);

  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_1AFE4C440;
  v92 = v91 | 0x2000000000000000;
  v93 = swift_allocObject();
  *(v93 + OBJC_IVAR____TtC3VFX12_RandomTNode_type) = v92;
  v93[2] = v28;
  v93[3] = 0;
  v93[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v93, 0, 0);

  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_1AFE4C420;
  v95 = v94 | 0x2000000000000000;
  type metadata accessor for RandomInRangeNode(0);
  v96 = swift_allocObject();
  *(v96 + OBJC_IVAR____TtC3VFX12_RandomTNode_type) = v95;
  v96[2] = v28;
  v96[3] = 0;
  v96[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v96, 0, 0);

  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_1AFE85120;
  v98 = v97 | 0x2000000000000000;
  v99 = swift_allocObject();
  *(v99 + OBJC_IVAR____TtC3VFX12_RandomTNode_type) = v98;
  v99[2] = v28;
  v99[3] = 0;
  v99[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v99, 0, 0);

  type metadata accessor for RandomPositionInsideSphereNode(0);
  v100 = swift_allocObject();
  v100[2] = v28;
  v100[3] = 0;
  v100[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v100, 0, 0);

  type metadata accessor for RandomPositionInsideCubeNode(0);
  v101 = swift_allocObject();
  v101[2] = v28;
  v101[3] = 0;
  v101[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v101, 0, 0);

  type metadata accessor for PerlinNoiseFloatNode(0);
  v102 = swift_allocObject();
  v102[2] = v28;
  v102[3] = 0;
  v102[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v102, 0, 0);

  type metadata accessor for PerlinNoiseFloat2Node(0);
  v103 = swift_allocObject();
  v103[2] = v28;
  v103[3] = 0;
  v103[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v103, 0, 0);

  type metadata accessor for PerlinNoiseFloat3Node(0);
  v104 = swift_allocObject();
  v104[2] = v28;
  v104[3] = 0;
  v104[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v104, 0, 0);

  type metadata accessor for PerlinNoiseFloat4Node(0);
  v105 = swift_allocObject();
  v105[2] = v28;
  v105[3] = 0;
  v105[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v105, 0, 0);

  type metadata accessor for SetParticleValueNode(0);
  v106 = swift_allocObject();
  v107 = v106 + OBJC_IVAR____TtC3VFX18_ParticleValueNode_keyPath;
  *v107 = v128;
  *(v107 + 1) = v130;
  *(v107 + 2) = v129;
  *(v107 + 3) = v127;
  *(v107 + 4) = v126;
  v107[40] = v125;
  *(v107 + 21) = v124;
  v106[4] = 0;
  v106[2] = MEMORY[0x1E69E7CC0];
  v106[3] = 0;

  sub_1AFDFC308();
  sub_1AF95C8F0(v106, 2, 0);

  type metadata accessor for GetParticleValueNode(0);
  v108 = swift_allocObject();
  v109 = v108 + OBJC_IVAR____TtC3VFX18_ParticleValueNode_keyPath;
  *v109 = v128;
  *(v109 + 1) = v130;
  *(v109 + 2) = v129;
  *(v109 + 3) = v127;
  *(v109 + 4) = v126;
  v109[40] = v125;
  *(v109 + 21) = v124;
  v108[4] = 0;
  v110 = MEMORY[0x1E69E7CC0];
  v108[2] = MEMORY[0x1E69E7CC0];
  v108[3] = 0;

  sub_1AFDFC308();
  sub_1AF95C8F0(v108, 2, 0);

  type metadata accessor for SamplerNode(0);
  v111 = swift_allocObject();
  *(v111 + OBJC_IVAR____TtC3VFX11SamplerNode_textureType) = 0;
  v111[2] = v110;
  v111[3] = 0;
  v111[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v111, 0, 0);

  v112 = swift_allocObject();
  *(v112 + OBJC_IVAR____TtC3VFX11SamplerNode_textureType) = 1;
  v112[2] = v110;
  v112[3] = 0;
  v112[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v112, 0, 0);

  v113 = swift_allocObject();
  *(v113 + OBJC_IVAR____TtC3VFX11SamplerNode_textureType) = 2;
  v113[2] = v110;
  v113[3] = 0;
  v113[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v113, 0, 0);

  type metadata accessor for GetSDFNormalNode(0);
  v114 = swift_allocObject();
  v114[2] = v110;
  v114[3] = 0;
  v114[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v114, 0, 0);

  type metadata accessor for SampleNode(0);
  v115 = swift_allocObject();
  *(v115 + OBJC_IVAR____TtC3VFX10SampleNode_textureType) = 0;
  v115[2] = v110;
  v115[3] = 0;
  v115[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v115, 0, 0);

  v116 = swift_allocObject();
  *(v116 + OBJC_IVAR____TtC3VFX10SampleNode_textureType) = 1;
  v116[2] = v110;
  v116[3] = 0;
  v116[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v116, 0, 0);

  v117 = swift_allocObject();
  *(v117 + OBJC_IVAR____TtC3VFX10SampleNode_textureType) = 2;
  v117[2] = v110;
  v117[3] = 0;
  v117[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v117, 0, 0);

  type metadata accessor for EmitterLookupParticleIndexNode(0);
  v118 = swift_allocObject();
  v118[2] = v110;
  v118[3] = 0;
  v118[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v118, 0, 0);

  type metadata accessor for ParticleIndexIsValidNode(0);
  v119 = swift_allocObject();
  v119[2] = v110;
  v119[3] = 0;
  v119[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v119, 0, 0);

  type metadata accessor for EmitterParticleCountNode(0);
  v120 = swift_allocObject();
  v120[2] = v110;
  v120[3] = 0;
  v120[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v120, 0, 0);

  type metadata accessor for EmitterGetNearestNeighborInRadiusNode(0);
  v121 = swift_allocObject();
  v121[2] = v110;
  v121[3] = 0;
  v121[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v121, 0, 0);

  type metadata accessor for EmitterGetNeighborsInRadiusNode(0);
  v122 = swift_allocObject();
  v122[2] = v110;
  v122[3] = 0;
  v122[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v122, 0, 0);
}

double sub_1AF95E970()
{
  *&result = 1056964608;
  xmmword_1EB6C3370 = xmmword_1AFE86820;
  return result;
}

uint64_t sub_1AF95E984()
{
  v0 = MEMORY[0x1E69E6448];
  v104 = MEMORY[0x1E69E6448];
  v103[0] = 0;
  sub_1AF0D5A54(v103, v102);
  v101 = 0xC000000000000058;
  type metadata accessor for ImplicitConstantNode(0);
  v1 = swift_allocObject();
  sub_1AF914FF0(&v101, &v97);
  v2 = OBJC_IVAR____TtC3VFX12ConstantNode_semantic;
  sub_1AF914FF0(&v97, v1 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  *(v1 + v2) = xmmword_1AFE22A20;
  v3 = MEMORY[0x1E69E7CC0];
  v1[2] = MEMORY[0x1E69E7CC0];
  v1[3] = 0;
  v4 = v3;
  v1[4] = 0;
  sub_1AFDFC308();
  sub_1AF9151B0(&v101);
  sub_1AF9151B0(&v97);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v103);
  sub_1AF95C8F0(v1, 2, 0);

  v100 = v0;
  LODWORD(v97) = 0;
  sub_1AF0D5A54(&v97, v102);
  v101 = 0xC000000000000058;
  type metadata accessor for ConstantNode(0);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC3VFX12ConstantNode_semantic;
  sub_1AF914FF0(&v101, v5 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  *(v5 + v6) = xmmword_1AFE22A20;
  v5[2] = v4;
  v5[3] = 0;
  v5[4] = 0;
  sub_1AFDFC308();
  sub_1AF9151B0(&v101);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v97);
  sub_1AF95C8F0(v5, 0, 0);

  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE4C420;
  sub_1AF9670BC(0, &unk_1ED72F770, sub_1AF43A0C8, v0, MEMORY[0x1E69E7428]);
  v100 = v8;
  v97 = 0;
  sub_1AF0D5A54(&v97, v102);
  v101 = v7 | 0x2000000000000000;
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtC3VFX12ConstantNode_semantic;
  sub_1AF914FF0(&v101, v9 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  *(v9 + v10) = xmmword_1AFE22A20;
  v9[2] = v4;
  v9[3] = 0;
  v9[4] = 0;
  sub_1AFDFC308();
  sub_1AF9151B0(&v101);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v97);
  sub_1AF95C8F0(v9, 0, 0);

  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AFE4C430;
  v94 = MEMORY[0x1E69E7450];
  v12 = v0;
  sub_1AF9670BC(0, &qword_1ED72F740, sub_1AF43A0C8, v0, MEMORY[0x1E69E7450]);
  v100 = v13;
  v97 = swift_allocObject();
  *(v97 + 16) = 0u;
  sub_1AF0D5A54(&v97, v102);
  v101 = v11 | 0x2000000000000000;
  v14 = swift_allocObject();
  v15 = OBJC_IVAR____TtC3VFX12ConstantNode_semantic;
  sub_1AF914FF0(&v101, v14 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  *(v14 + v15) = xmmword_1AFE22A20;
  v16 = MEMORY[0x1E69E7CC0];
  v14[2] = MEMORY[0x1E69E7CC0];
  v14[3] = 0;
  v14[4] = 0;
  sub_1AFDFC308();
  sub_1AF9151B0(&v101);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v97);
  sub_1AF95C8F0(v14, 0, 0);

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1AFE4C440;
  sub_1AF9670BC(0, &qword_1ED72F6E0, sub_1AF43A0C8, v12, MEMORY[0x1E69E74A8]);
  v93 = v18;
  v100 = v18;
  v97 = swift_allocObject();
  *(v97 + 16) = 0u;
  sub_1AF0D5A54(&v97, v102);
  v101 = v17 | 0x2000000000000000;
  v19 = swift_allocObject();
  v20 = OBJC_IVAR____TtC3VFX12ConstantNode_semantic;
  sub_1AF914FF0(&v101, v19 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  *(v19 + v20) = xmmword_1AFE22A20;
  v19[2] = v16;
  v19[3] = 0;
  v19[4] = 0;
  sub_1AFDFC308();
  sub_1AF9151B0(&v101);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v97);
  sub_1AF95C8F0(v19, 0, 0);

  v21 = swift_allocObject();
  *(v21 + 16) = 2;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1AFE4C420;
  *(v21 + 24) = v22 | 0x2000000000000000;
  type metadata accessor for simd_float2x2(0);
  v100 = v23;
  v97 = 1065353216;
  v98 = 0x3F80000000000000;
  sub_1AF0D5A54(&v97, v102);
  v101 = v21 | 0x2000000000000000;
  v24 = swift_allocObject();
  v25 = OBJC_IVAR____TtC3VFX12ConstantNode_semantic;
  sub_1AF914FF0(&v101, v24 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  *(v24 + v25) = xmmword_1AFE22A20;
  v24[2] = v16;
  v24[3] = 0;
  v24[4] = 0;
  sub_1AFDFC308();
  sub_1AF9151B0(&v101);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v97);
  sub_1AF95C8F0(v24, 0, 0);

  v26 = swift_allocObject();
  *(v26 + 16) = 3;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1AFE4C430;
  *(v26 + 24) = v27 | 0x2000000000000000;
  type metadata accessor for simd_float3x3(0);
  v100 = v28;
  v29 = swift_allocObject();
  v97 = v29;
  v29[1] = xmmword_1AFE20150;
  v29[2] = xmmword_1AFE20160;
  v29[3] = xmmword_1AFE20180;
  sub_1AF0D5A54(&v97, v102);
  v101 = v26 | 0x2000000000000000;
  v30 = swift_allocObject();
  v31 = OBJC_IVAR____TtC3VFX12ConstantNode_semantic;
  sub_1AF914FF0(&v101, v30 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  *(v30 + v31) = xmmword_1AFE22A20;
  v30[2] = v16;
  v30[3] = 0;
  v30[4] = 0;
  sub_1AFDFC308();
  sub_1AF9151B0(&v101);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v97);
  sub_1AF95C8F0(v30, 0, 0);

  v32 = swift_allocObject();
  *(v32 + 16) = 4;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1AFE4C440;
  *(v32 + 24) = v33 | 0x2000000000000000;
  type metadata accessor for simd_float4x4(0);
  v100 = v34;
  v35 = swift_allocObject();
  v97 = v35;
  v35[1] = xmmword_1AFE20150;
  v35[2] = xmmword_1AFE20160;
  v35[3] = xmmword_1AFE20180;
  v35[4] = xmmword_1AFE201A0;
  sub_1AF0D5A54(&v97, v102);
  v101 = v32 | 0x2000000000000000;
  v36 = swift_allocObject();
  v37 = OBJC_IVAR____TtC3VFX12ConstantNode_semantic;
  sub_1AF914FF0(&v101, v36 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  *(v36 + v37) = xmmword_1AFE22A20;
  v38 = MEMORY[0x1E69E7CC0];
  v36[2] = MEMORY[0x1E69E7CC0];
  v36[3] = 0;
  v36[4] = 0;
  sub_1AFDFC308();
  sub_1AF9151B0(&v101);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v97);
  sub_1AF95C8F0(v36, 0, 0);

  v100 = MEMORY[0x1E69E72F0];
  LODWORD(v97) = 0;
  sub_1AF0D5A54(&v97, v102);
  v101 = 0xC000000000000030;
  v39 = swift_allocObject();
  v40 = OBJC_IVAR____TtC3VFX12ConstantNode_semantic;
  sub_1AF914FF0(&v101, v39 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  *(v39 + v40) = xmmword_1AFE22A20;
  v39[2] = v38;
  v39[3] = 0;
  v39[4] = 0;
  sub_1AFDFC308();
  sub_1AF9151B0(&v101);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v97);
  sub_1AF95C8F0(v39, 0, 0);

  v100 = MEMORY[0x1E69E7668];
  LODWORD(v97) = 0;
  sub_1AF0D5A54(&v97, v102);
  v101 = 0xC000000000000038;
  v41 = swift_allocObject();
  v42 = OBJC_IVAR____TtC3VFX12ConstantNode_semantic;
  sub_1AF914FF0(&v101, v41 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  *(v41 + v42) = xmmword_1AFE22A20;
  v41[3] = 0;
  v41[4] = 0;
  v41[2] = v38;
  sub_1AFDFC308();
  sub_1AF9151B0(&v101);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v97);
  sub_1AF95C8F0(v41, 0, 0);

  v100 = MEMORY[0x1E69E7360];
  v97 = 0;
  sub_1AF0D5A54(&v97, v102);
  v101 = 0xC000000000000040;
  v43 = swift_allocObject();
  v44 = OBJC_IVAR____TtC3VFX12ConstantNode_semantic;
  sub_1AF914FF0(&v101, v43 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  *(v43 + v44) = xmmword_1AFE22A20;
  v43[3] = 0;
  v43[4] = 0;
  v43[2] = v38;
  sub_1AFDFC308();
  sub_1AF9151B0(&v101);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v97);
  sub_1AF95C8F0(v43, 0, 0);

  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1AFE85130;
  sub_1AF9670BC(0, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], v94);
  v100 = v46;
  v47 = swift_allocObject();
  v97 = v47;
  *(v47 + 16) = 0;
  *(v47 + 24) = 0;
  sub_1AF0D5A54(&v97, v102);
  v101 = v45 | 0x2000000000000000;
  v48 = swift_allocObject();
  v49 = OBJC_IVAR____TtC3VFX12ConstantNode_semantic;
  sub_1AF914FF0(&v101, v48 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  *(v48 + v49) = xmmword_1AFE22A20;
  v48[3] = 0;
  v48[4] = 0;
  v48[2] = v38;
  sub_1AFDFC308();
  sub_1AF9151B0(&v101);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v97);
  sub_1AF95C8F0(v48, 0, 0);

  v100 = MEMORY[0x1E69E6370];
  LOBYTE(v97) = 0;
  sub_1AF0D5A54(&v97, v102);
  v101 = 0xC000000000000010;
  v50 = swift_allocObject();
  v51 = OBJC_IVAR____TtC3VFX12ConstantNode_semantic;
  sub_1AF914FF0(&v101, v50 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  *(v50 + v51) = xmmword_1AFE22A20;
  v50[3] = 0;
  v50[4] = 0;
  v50[2] = v38;
  sub_1AFDFC308();
  sub_1AF9151B0(&v101);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v97);
  sub_1AF95C8F0(v50, 0, 0);

  type metadata accessor for simd_quatf(0);
  v100 = v52;
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_1AFE201A0;
  sub_1AF0D5A54(&v97, v102);
  v101 = 0xC000000000000028;
  v53 = swift_allocObject();
  v54 = OBJC_IVAR____TtC3VFX12ConstantNode_semantic;
  sub_1AF914FF0(&v101, v53 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  *(v53 + v54) = xmmword_1AFE22A20;
  v53[3] = 0;
  v53[4] = 0;
  v53[2] = v38;
  sub_1AFDFC308();
  sub_1AF9151B0(&v101);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v97);
  sub_1AF95C8F0(v53, 0, 0);

  v100 = MEMORY[0x1E69E6158];
  v97 = 0;
  v98 = 0xE000000000000000;
  sub_1AF0D5A54(&v97, v102);
  v101 = 0xC000000000000070;
  v55 = swift_allocObject();
  v56 = OBJC_IVAR____TtC3VFX12ConstantNode_semantic;
  sub_1AF914FF0(&v101, v55 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  *(v55 + v56) = xmmword_1AFE22A20;
  v55[3] = 0;
  v55[4] = 0;
  v55[2] = v38;
  sub_1AFDFC308();
  sub_1AF9151B0(&v101);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v97);
  sub_1AF95C8F0(v55, 0, 0);

  type metadata accessor for ColorRampTextureNode(0);
  v57 = swift_allocObject();
  v58 = v57 + OBJC_IVAR____TtC3VFX20ColorRampTextureNode_colorRamp;
  sub_1AF43A038();
  v59 = swift_allocObject();
  __asm { FMOV            V0.4S, #1.0 }

  v95 = _Q0;
  v59[1] = xmmword_1AFE4C620;
  v59[2] = _Q0;
  v59[3] = xmmword_1AFE201A0;
  *v58 = v59;
  *(v58 + 1) = &unk_1F24EDC70;
  v58[16] = 1;
  *(v57 + OBJC_IVAR____TtC3VFX14ECSStorageNode_entity) = 0xFFFFFFFFLL;
  v57[3] = 0;
  v57[4] = 0;
  v57[2] = v38;
  sub_1AFDFC308();
  sub_1AF95C8F0(v57, 0, 0);

  type metadata accessor for ColorRampAssetNode(0);
  v65 = swift_allocObject();
  v65[2] = v38;
  v65[3] = 0;
  v65[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v65, 0, 0);

  v66 = swift_allocObject();
  v66[1] = xmmword_1AFE4C620;
  v66[2] = v95;
  v66[3] = xmmword_1AFE201A0;
  v100 = &type metadata for ColorRamp;
  v97 = v66;
  v98 = &unk_1F24EDC70;
  v99 = 1;
  sub_1AF0D5A54(&v97, v102);
  v101 = 0xC000000000000078;
  v67 = swift_allocObject();
  v68 = OBJC_IVAR____TtC3VFX12ConstantNode_semantic;
  sub_1AF914FF0(&v101, v67 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  *(v67 + v68) = xmmword_1AFE22A20;
  v67[3] = 0;
  v67[4] = 0;
  v67[2] = v38;
  sub_1AFDFC308();
  sub_1AF9151B0(&v101);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v97);
  sub_1AF95C8F0(v67, 0, 0);

  type metadata accessor for CurveTextureNode(0);
  v69 = swift_allocObject();
  v70 = v69 + OBJC_IVAR____TtC3VFX16CurveTextureNode_curve;
  *v70 = sub_1AF9D3914(&unk_1F24FFCA0);
  *(v70 + 1) = v71;
  *(v70 + 2) = 0;
  v70[24] = 1;
  *(v69 + OBJC_IVAR____TtC3VFX14ECSStorageNode_entity) = 0xFFFFFFFFLL;
  v69[3] = 0;
  v69[4] = 0;
  v69[2] = v38;
  sub_1AFDFC308();
  sub_1AF95C8F0(v69, 0, 0);

  type metadata accessor for CurveAssetNode(0);
  v72 = swift_allocObject();
  v72[2] = v38;
  v72[3] = 0;
  v72[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v72, 0, 0);

  type metadata accessor for AudioAssetNode(0);
  v73 = swift_allocObject();
  v73[2] = v38;
  v73[3] = 0;
  v73[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v73, 0, 0);

  v74 = sub_1AFDFD488();
  *(v74 + 16) = 9;
  *(v74 + 32) = v95;
  *(v74 + 48) = v95;
  *(v74 + 64) = 1065353216;
  v100 = &type metadata for ImageFilter;
  v75 = swift_allocObject();
  v97 = v75;
  v75[1] = vdupq_n_s64(3uLL);
  v75[2].i64[0] = v74;
  v75[2].i8[8] = 2;
  sub_1AF0D5A54(&v97, v102);
  v101 = 0xC0000000000000F0;
  v76 = swift_allocObject();
  v77 = OBJC_IVAR____TtC3VFX12ConstantNode_semantic;
  sub_1AF914FF0(&v101, v76 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  *(v76 + v77) = xmmword_1AFE22A20;
  v76[3] = 0;
  v76[4] = 0;
  v76[2] = v38;
  sub_1AFDFC308();
  sub_1AF9151B0(&v101);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v97);
  sub_1AF95C8F0(v76, 0, 0);

  sub_1AF8C0110();
  v100 = v78;
  v79 = swift_allocObject();
  v97 = v79;
  *(v79 + 16) = &unk_1F24FFCD0;
  *(v79 + 24) = &unk_1F24FFCF8;
  *(v79 + 32) = 0;
  *(v79 + 40) = 1;
  sub_1AF0D5A54(&v97, v102);
  v101 = 0xC000000000000088;
  v80 = swift_allocObject();
  v81 = OBJC_IVAR____TtC3VFX12ConstantNode_semantic;
  sub_1AF914FF0(&v101, v80 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  *(v80 + v81) = xmmword_1AFE22A20;
  v80[3] = 0;
  v80[4] = 0;
  v80[2] = v38;
  sub_1AFDFC308();
  sub_1AF9151B0(&v101);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v97);
  sub_1AF95C8F0(v80, 2, 0);

  if (qword_1EB6371E8 != -1)
  {
    swift_once();
  }

  v96 = xmmword_1EB6C3370;
  v100 = v93;
  v97 = swift_allocObject();
  *(v97 + 16) = v96;
  sub_1AF975674(&v97, &v101);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v97);
  v82 = swift_allocObject();
  v83 = OBJC_IVAR____TtC3VFX12ConstantNode_semantic;
  sub_1AF914FF0(&v101, v82 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  *(v82 + v83) = xmmword_1AFE55160;
  v82[2] = v38;
  v82[3] = 0;
  v82[4] = 0;
  sub_1AFDFC308();
  sub_1AF9151B0(&v101);
  sub_1AF95C8F0(v82, 0, 0);

  type metadata accessor for PiNode(0);
  swift_allocObject();
  v84 = sub_1AF985BCC();
  sub_1AF95C8F0(v84, 0, 0);

  type metadata accessor for TwoPiNode(0);
  swift_allocObject();
  v85 = sub_1AF985BCC();
  sub_1AF95C8F0(v85, 0, 0);

  type metadata accessor for HalfPiNode(0);
  swift_allocObject();
  v86 = sub_1AF985BCC();
  sub_1AF95C8F0(v86, 0, 0);

  type metadata accessor for EpsilonNode(0);
  swift_allocObject();
  v87 = sub_1AF985BCC();
  sub_1AF95C8F0(v87, 0, 0);

  type metadata accessor for Identity2x2Node(0);
  swift_allocObject();
  v88 = sub_1AF985BCC();
  sub_1AF95C8F0(v88, 0, 0);

  type metadata accessor for Identity3x3Node(0);
  swift_allocObject();
  v89 = sub_1AF985BCC();
  sub_1AF95C8F0(v89, 0, 0);

  type metadata accessor for Identity4x4Node(0);
  swift_allocObject();
  v90 = sub_1AF985BCC();
  sub_1AF95C8F0(v90, 0, 0);

  type metadata accessor for IdentityQuaternionNode(0);
  swift_allocObject();
  v91 = sub_1AF985BCC();
  sub_1AF95C8F0(v91, 0, 0);
}

uint64_t sub_1AF95FD98()
{
  v1 = v0;
  type metadata accessor for DeclareVariableNode(0);
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = v3;
  sub_1AFDFC308();
  sub_1AF95C8F0(v2, 0, 0);

  type metadata accessor for SetVariableValueNode(0);
  v4 = swift_allocObject();
  v4[3] = 0;
  v4[4] = 0;
  v4[2] = v3;
  sub_1AFDFC308();
  sub_1AF95C8F0(v4, 0, 0);

  type metadata accessor for GetVariableValueNode(0);
  v5 = swift_allocObject();
  v5[3] = 0;
  v5[4] = 0;
  v5[2] = v3;
  sub_1AFDFC308();
  sub_1AF95C8F0(v5, 0, 0);

  type metadata accessor for DotNode(0);
  v6 = swift_allocObject();
  v6[3] = 0;
  v6[4] = 0;
  v6[2] = v3;
  sub_1AFDFC308();
  sub_1AF95C8F0(v6, 2, 0);

  type metadata accessor for SubGraphNode(0);
  v7 = swift_allocObject();
  v8 = (v7 + OBJC_IVAR____TtC3VFX12SubGraphNode_name);
  *(v7 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = 0;
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = (v7 + OBJC_IVAR____TtC3VFX12SubGraphNode__signature);
  *v9 = v3;
  v9[1] = v3;
  v9[2] = &unk_1F24FFF50;
  v9[3] = v3;
  v9[4] = v3;
  v9[5] = v3;
  v7[2] = v3;
  v7[3] = 0;
  v7[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v7, 2, 0);

  v123[0] = v3;
  v123[1] = v3;
  v123[2] = &unk_1F24FFF80;
  v123[3] = v3;
  v123[4] = v3;
  v123[5] = v3;
  type metadata accessor for SubGraphEnterNode(0);
  swift_allocObject();
  v10 = sub_1AF917C40(v123);
  sub_1AF95C8F0(v10, 2, 0);

  v122[0] = v3;
  v122[1] = v3;
  v122[2] = &unk_1F24FFFB0;
  v122[3] = v3;
  v122[4] = v3;
  v122[5] = v3;
  type metadata accessor for SubGraphReturnNode(0);
  swift_allocObject();
  v11 = sub_1AF9182C0(v122);
  sub_1AF95C8F0(v11, 2, 0);

  v12 = 32;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AFE4C420;
  v119 = v13 | 0x2000000000000000;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AFE4C430;
  v120 = v14 | 0x2000000000000000;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1AFE4C440;
  v121 = v15 | 0x2000000000000000;
  type metadata accessor for ComposeNode(0);
  while (1)
  {
    v16 = *&v118[v12];
    v17 = swift_allocObject();
    *(v17 + OBJC_IVAR____TtC3VFX12_ComposeNode_type) = v16;
    v17[4] = 0;
    v17[2] = MEMORY[0x1E69E7CC0];
    v17[3] = 0;
    sub_1AF442064(v16);
    sub_1AF442064(v16);
    sub_1AFDFC308();
    v18 = *v17;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v1[2];
    v1[2] = 0x8000000000000000;
    v21 = sub_1AF0D3F10(v18);
    v23 = v22;
    v24 = v20[2] + ((v22 & 1) == 0);
    if (v20[3] < v24)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

    v26 = v21;
    sub_1AF849498();
    v21 = v26;
    if (v23)
    {
LABEL_7:
      *(v20[7] + 8 * v21) = v17;

      goto LABEL_10;
    }

LABEL_9:
    v20[(v21 >> 6) + 8] |= 1 << v21;
    *(v20[6] + 8 * v21) = v18;
    *(v20[7] + 8 * v21) = v17;
    ++v20[2];
LABEL_10:
    v1[2] = v20;
    v27 = sub_1AF91A590();
    v29 = v28;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v31 = v1[3];
    v116 = v31;
    v1[3] = 0x8000000000000000;
    v32 = sub_1AF419914(v27, v29);
    v34 = v33;
    v35 = v31[2] + ((v33 & 1) == 0);
    if (v31[3] < v35)
    {
      sub_1AF83518C(v35, v30);
      v32 = sub_1AF419914(v27, v29);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_47;
      }

LABEL_14:
      if ((v34 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    if (v30)
    {
      goto LABEL_14;
    }

    v39 = v32;
    sub_1AF849484();
    v32 = v39;
    if ((v34 & 1) == 0)
    {
LABEL_17:
      v38 = v31;
      v31[(v32 >> 6) + 8] |= 1 << v32;
      v40 = (v31[6] + 16 * v32);
      *v40 = v27;
      v40[1] = v29;
      *(v31[7] + 8 * v32) = v18;
      ++v31[2];
      goto LABEL_18;
    }

LABEL_15:
    v37 = v32;

    v38 = v116;
    *(v116[7] + 8 * v37) = v18;
LABEL_18:
    v1[3] = v38;

    v41 = v1[5];

    v42 = swift_isUniquelyReferenced_nonNull_native();
    v1[5] = v41;
    if ((v42 & 1) == 0)
    {
      v41 = sub_1AF423364(0, *(v41 + 2) + 1, 1, v41);
      v1[5] = v41;
    }

    v44 = *(v41 + 2);
    v43 = *(v41 + 3);
    if (v44 >= v43 >> 1)
    {
      v1[5] = sub_1AF423364(v43 > 1, v44 + 1, 1, v41);
    }

    sub_1AF445BE4(v16);
    v45 = v1[5];
    *(v45 + 16) = v44 + 1;
    v46 = v45 + 16 * v44;
    *(v46 + 32) = v17;
    *(v46 + 40) = 0;
    v1[5] = v45;
    v12 += 8;
    if (v12 == 56)
    {
      type metadata accessor for DecomposeNode(0);
      v47 = 32;
      while (1)
      {
        v48 = *&v118[v47];
        v49 = swift_allocObject();
        *(v49 + OBJC_IVAR____TtC3VFX12_ComposeNode_type) = v48;
        v49[4] = 0;
        v49[2] = MEMORY[0x1E69E7CC0];
        v49[3] = 0;
        sub_1AF442064(v48);
        sub_1AF442064(v48);
        sub_1AFDFC308();
        v50 = *v49;

        v51 = swift_isUniquelyReferenced_nonNull_native();
        v52 = v1[2];
        v1[2] = 0x8000000000000000;
        v53 = sub_1AF0D3F10(v50);
        v55 = v54;
        v56 = v52[2] + ((v54 & 1) == 0);
        if (v52[3] < v56)
        {
          break;
        }

        if (v51)
        {
          goto LABEL_28;
        }

        v58 = v53;
        sub_1AF849498();
        v53 = v58;
        if (v55)
        {
LABEL_29:
          *(v52[7] + 8 * v53) = v49;

          goto LABEL_32;
        }

LABEL_31:
        v52[(v53 >> 6) + 8] |= 1 << v53;
        *(v52[6] + 8 * v53) = v50;
        *(v52[7] + 8 * v53) = v49;
        ++v52[2];
LABEL_32:
        v1[2] = v52;
        v59 = sub_1AF91A590();
        v61 = v60;
        v62 = swift_isUniquelyReferenced_nonNull_native();
        v63 = v1[3];
        v117 = v63;
        v1[3] = 0x8000000000000000;
        v64 = sub_1AF419914(v59, v61);
        v66 = v65;
        v67 = v63[2] + ((v65 & 1) == 0);
        if (v63[3] < v67)
        {
          sub_1AF83518C(v67, v62);
          v64 = sub_1AF419914(v59, v61);
          if ((v66 & 1) != (v68 & 1))
          {
            goto LABEL_47;
          }

LABEL_36:
          if ((v66 & 1) == 0)
          {
            goto LABEL_39;
          }

          goto LABEL_37;
        }

        if (v62)
        {
          goto LABEL_36;
        }

        v71 = v64;
        sub_1AF849484();
        v64 = v71;
        if ((v66 & 1) == 0)
        {
LABEL_39:
          v70 = v63;
          v63[(v64 >> 6) + 8] |= 1 << v64;
          v72 = (v63[6] + 16 * v64);
          *v72 = v59;
          v72[1] = v61;
          *(v63[7] + 8 * v64) = v50;
          ++v63[2];
          goto LABEL_40;
        }

LABEL_37:
        v69 = v64;

        v70 = v117;
        *(v117[7] + 8 * v69) = v50;
LABEL_40:
        v1[3] = v70;

        v73 = v1[5];

        v74 = swift_isUniquelyReferenced_nonNull_native();
        v1[5] = v73;
        if ((v74 & 1) == 0)
        {
          v73 = sub_1AF423364(0, *(v73 + 2) + 1, 1, v73);
          v1[5] = v73;
        }

        v76 = *(v73 + 2);
        v75 = *(v73 + 3);
        if (v76 >= v75 >> 1)
        {
          v1[5] = sub_1AF423364(v75 > 1, v76 + 1, 1, v73);
        }

        sub_1AF445BE4(v48);
        v77 = v1[5];
        *(v77 + 16) = v76 + 1;
        v78 = v77 + 16 * v76;
        *(v78 + 32) = v49;
        *(v78 + 40) = 0;
        v1[5] = v77;
        v47 += 8;
        if (v47 == 56)
        {
          swift_arrayDestroy();
          v79 = swift_allocObject();
          *(v79 + 16) = xmmword_1AFE4C430;
          v80 = v79 | 0x2000000000000000;
          type metadata accessor for ImplicitComposeNode(0);
          v81 = swift_allocObject();
          *(v81 + OBJC_IVAR____TtC3VFX12_ComposeNode_type) = v80;
          v81[4] = 0;
          v82 = MEMORY[0x1E69E7CC0];
          v81[2] = MEMORY[0x1E69E7CC0];
          v81[3] = 0;
          sub_1AFDFC308();
          sub_1AF95C8F0(v81, 2, 0);

          v83 = swift_allocObject();
          *(v83 + 16) = xmmword_1AFE4C430;
          v84 = v83 | 0x2000000000000000;
          type metadata accessor for ImplicitDecomposeNode(0);
          v85 = swift_allocObject();
          *(v85 + OBJC_IVAR____TtC3VFX12_ComposeNode_type) = v84;
          v85[3] = 0;
          v85[4] = 0;
          v85[2] = v82;
          sub_1AFDFC308();
          sub_1AF95C8F0(v85, 2, 0);

          v86 = swift_allocObject();
          *(v86 + 16) = xmmword_1AFE4C430;
          v87 = v86 | 0x2000000000000000;
          type metadata accessor for ImplicitPartialComposeNode(0);
          v88 = swift_allocObject();
          *(v88 + OBJC_IVAR____TtC3VFX12_ComposeNode_type) = v87;
          v88[3] = 0;
          v88[4] = 0;
          v88[2] = v82;
          sub_1AFDFC308();
          sub_1AF95C8F0(v88, 2, 0);

          type metadata accessor for GetCollectionElementNode(0);
          v89 = swift_allocObject();
          v89[3] = 0;
          v89[4] = 0;
          v89[2] = v82;
          sub_1AFDFC308();
          sub_1AF95C8F0(v89, 0, 0);

          type metadata accessor for GetCollectionSizeNode(0);
          v90 = swift_allocObject();
          v90[3] = 0;
          v90[4] = 0;
          v90[2] = v82;
          sub_1AFDFC308();
          sub_1AF95C8F0(v90, 0, 0);

          type metadata accessor for GenericArrayNode(0);
          v91 = swift_allocObject();
          *(v91 + OBJC_IVAR____TtC3VFX10_ArrayNode_count) = 1;
          v91[3] = 0;
          v91[4] = 0;
          v91[2] = v82;
          sub_1AFDFC308();
          sub_1AF95C8F0(v91, 0, 0);

          type metadata accessor for TypedArrayNode(0);
          v92 = swift_allocObject();
          *(v92 + OBJC_IVAR____TtC3VFX14TypedArrayNode_elementType) = 0xC000000000000098;
          *(v92 + OBJC_IVAR____TtC3VFX10_ArrayNode_count) = 1;
          v92[2] = v82;
          v92[3] = 0;
          v92[4] = 0;
          sub_1AFDFC308();
          sub_1AF95C8F0(v92, 0, 0);

          type metadata accessor for StartNode(0);
          v93 = swift_allocObject();
          v93[3] = 0;
          v93[4] = 0;
          v93[2] = v82;
          sub_1AFDFC308();
          sub_1AF95C8F0(v93, 2, 0);

          type metadata accessor for ImplicitStartNode(0);
          v94 = swift_allocObject();
          v94[3] = 0;
          v94[4] = 0;
          v94[2] = v82;
          sub_1AFDFC308();
          sub_1AF95C8F0(v94, 2, 0);

          type metadata accessor for IfNode(0);
          v95 = swift_allocObject();
          v95[3] = 0;
          v95[4] = 0;
          v95[2] = v82;
          sub_1AFDFC308();
          sub_1AF95C8F0(v95, 0, 0);

          type metadata accessor for RepeatNode(0);
          v96 = swift_allocObject();
          v96[3] = 0;
          v96[4] = 0;
          v96[2] = v82;
          sub_1AFDFC308();
          sub_1AF95C8F0(v96, 0, 0);

          type metadata accessor for ForEachNode(0);
          v97 = swift_allocObject();
          v97[3] = 0;
          v97[4] = 0;
          v97[2] = v82;
          sub_1AFDFC308();
          sub_1AF95C8F0(v97, 0, 0);

          type metadata accessor for DoNode(0);
          swift_allocObject();
          v98 = sub_1AF97A3A0(2);
          sub_1AF95C8F0(v98, 0, 0);

          type metadata accessor for SwitchNode(0);
          v99 = swift_allocObject();
          *(v99 + OBJC_IVAR____TtC3VFX10SwitchNode_count) = 3;
          v99[3] = 0;
          v99[4] = 0;
          v99[2] = v82;
          sub_1AFDFC308();
          sub_1AF95C8F0(v99, 0, 0);

          type metadata accessor for NoopNode(0);
          v100 = swift_allocObject();
          v100[3] = 0;
          v100[4] = 0;
          v100[2] = v82;
          sub_1AFDFC308();
          sub_1AF95C8F0(v100, 2, 0);

          type metadata accessor for ImplicitNoopNode(0);
          v101 = swift_allocObject();
          v101[3] = 0;
          v101[4] = 0;
          v101[2] = v82;
          sub_1AFDFC308();
          sub_1AF95C8F0(v101, 2, 0);

          type metadata accessor for GuardIsRunMode(0);
          v102 = swift_allocObject();
          v102[3] = 0;
          v102[4] = 0;
          v102[2] = v82;
          sub_1AFDFC308();
          sub_1AF95C8F0(v102, 0, 0);

          type metadata accessor for NilNode(0);
          v103 = swift_allocObject();
          v103[3] = 0;
          v103[4] = 0;
          v103[2] = v82;
          sub_1AFDFC308();
          sub_1AF95C8F0(v103, 2, 0);

          type metadata accessor for ImplicitNilNode(0);
          v104 = swift_allocObject();
          v104[3] = 0;
          v104[4] = 0;
          v104[2] = v82;
          sub_1AFDFC308();
          sub_1AF95C8F0(v104, 2, 0);

          type metadata accessor for StringJoinNode(0);
          v105 = swift_allocObject();
          *(v105 + OBJC_IVAR____TtC3VFX14StringJoinNode_count) = 1;
          v105[3] = 0;
          v105[4] = 0;
          v105[2] = v82;
          sub_1AFDFC308();
          sub_1AF95C8F0(v105, 0, 0);

          type metadata accessor for ExpressionNode(0);
          v106 = swift_allocObject();
          v107 = (v106 + OBJC_IVAR____TtC3VFX9_CodeNode_code);
          *v107 = 0x62202B2061;
          v107[1] = 0xE500000000000000;
          *(v106 + OBJC_IVAR____TtC3VFX9_CodeNode_inputNames) = &unk_1F24FFE20;
          *(v106 + OBJC_IVAR____TtC3VFX9_CodeNode_outputNames) = &unk_1F24FFE60;
          *(v106 + OBJC_IVAR____TtC3VFX9_CodeNode_outputTypes) = &unk_1F24FFE90;
          v106[2] = v82;
          v106[3] = 0;
          v106[4] = 0;
          sub_1AFDFC308();
          sub_1AF95C8F0(v106, 0, 0);

          type metadata accessor for CodeNode(0);
          swift_allocObject();
          v108 = sub_1AF9839C4();
          sub_1AF95C8F0(v108, 0, 0);

          type metadata accessor for DecodingErrorNode(0);
          v109 = swift_allocObject();
          v110 = (v109 + OBJC_IVAR____TtC3VFX17DecodingErrorNode_name);
          *v110 = 0;
          v110[1] = 0xE000000000000000;
          v109[3] = 0;
          v109[4] = 0;
          v109[2] = v82;
          sub_1AFDFC308();
          sub_1AF95C8F0(v109, 2, 0);

          type metadata accessor for ImportErrorNode(0);
          v111 = swift_allocObject();
          v112 = (v111 + OBJC_IVAR____TtC3VFX15ImportErrorNode_message);
          *(v111 + OBJC_IVAR____TtC3VFX15ImportErrorNode_inputCount) = 0;
          v113 = (v111 + OBJC_IVAR____TtC3VFX15ImportErrorNode_name);
          *v113 = 0;
          v113[1] = 0xE000000000000000;
          *v112 = 0;
          v112[1] = 0;
          v111[2] = v82;
          v111[3] = 0;
          v111[4] = 0;
          sub_1AFDFC308();
          sub_1AF95C8F0(v111, 2, 0);

          type metadata accessor for PreferJavaScriptNode(0);
          v114 = swift_allocObject();
          v114[2] = v82;
          v114[3] = 0;
          v114[4] = 0;
          sub_1AFDFC308();
          sub_1AF95C8F0(v114, 0, 0);
        }
      }

      sub_1AF8351A0(v56, v51);
      v53 = sub_1AF0D3F10(v50);
      if ((v55 & 1) != (v57 & 1))
      {
        goto LABEL_46;
      }

LABEL_28:
      if (v55)
      {
        goto LABEL_29;
      }

      goto LABEL_31;
    }
  }

  sub_1AF8351A0(v24, isUniquelyReferenced_nonNull_native);
  v21 = sub_1AF0D3F10(v18);
  if ((v23 & 1) == (v25 & 1))
  {
LABEL_6:
    if (v23)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

LABEL_46:
  sub_1AFDFF1A8();
  __break(1u);
LABEL_47:
  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

uint64_t sub_1AF960F88()
{
  if (qword_1EB633DC0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB6C2AA8;
  KeyPath = swift_getKeyPath();
  v2 = 0x80000001AFF28740;
  v3 = swift_getKeyPath();
  type metadata accessor for simd_float4x4(0);
  v5 = v4;
  v6 = 0xD000000000000011;
  v7 = swift_getKeyPath();
  sub_1AFDFE008();

  v8 = v0;
  if (MEMORY[0x1B2719A10](v3, KeyPath))
  {
    v9 = 0x80000001AFF28740;
  }

  else
  {

    if ((MEMORY[0x1B2719A10](v10, KeyPath) & 1) == 0)
    {

      v6 = 0;
      v9 = 0;
      v3 = 0;
      v12 = 0;
      v11 = 0;
      goto LABEL_9;
    }

    v6 = 0x74614D2077656956;
    v9 = 0xEB00000000786972;
    v3 = v7;
  }

  v11 = 1;
  v12 = v5;
LABEL_9:
  swift_arrayDestroy();
  *&v32 = v6;
  *(&v32 + 1) = v9;
  v33 = v3;
  v34 = v12;
  v35 = 0;
  v36 = v11;
  v37 = 0;
  type metadata accessor for GetWorldValueNode(0);
  v13 = swift_allocObject();
  v24 = v8;
  v14 = sub_1AF966D44(v24, &v32, v13);
  sub_1AF95C8F0(v14, 0, 0);

  v15 = swift_getKeyPath();
  v16 = swift_getKeyPath();
  v17 = 0xD000000000000011;
  v25 = swift_getKeyPath();

  if (MEMORY[0x1B2719A10](v18, v15) & 1) != 0 || (, , v17 = 0x74614D2077656956, v2 = 0xEB00000000786972, v16 = v25, , v19 = , (MEMORY[0x1B2719A10](v19, v15)))
  {

    v20 = 1;
  }

  else
  {

    v17 = 0;
    v2 = 0;
    v16 = 0;
    v5 = 0;
    v20 = 0;
  }

  swift_arrayDestroy();
  *&v26 = v17;
  *(&v26 + 1) = v2;
  v27 = v16;
  v28 = v5;
  v29 = 0;
  v30 = v20 & 1;
  v31 = HIWORD(v20);
  v21 = swift_allocObject();
  v22 = sub_1AF966D44(v24, &v26, v21);
  sub_1AF95C8F0(v22, 0, 0);
}

uint64_t sub_1AF961378()
{
  type metadata accessor for AddAnimationNode(0);
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v0, 0, 0);

  type metadata accessor for RemoveAllAnimationsNode(0);
  v2 = swift_allocObject();
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v2, 0, 0);

  type metadata accessor for RemoveAnimationNode(0);
  v3 = swift_allocObject();
  v3[3] = 0;
  v3[4] = 0;
  v3[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v3, 0, 0);

  type metadata accessor for CloneNode(0);
  v4 = swift_allocObject();
  v4[3] = 0;
  v4[4] = 0;
  v4[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v4, 0, 0);

  type metadata accessor for DeepCloneNode(0);
  v5 = swift_allocObject();
  v5[3] = 0;
  v5[4] = 0;
  v5[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v5, 0, 0);

  type metadata accessor for InstantiatePrefabNode(0);
  v6 = swift_allocObject();
  v6[3] = 0;
  v6[4] = 0;
  v6[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v6, 0, 0);

  type metadata accessor for NewNodeNode(0);
  v7 = swift_allocObject();
  v7[3] = 0;
  v7[4] = 0;
  v7[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v7, 0, 0);

  type metadata accessor for AddChildNode(0);
  v8 = swift_allocObject();
  v8[3] = 0;
  v8[4] = 0;
  v8[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v8, 0, 0);

  type metadata accessor for RemoveFromParentNode(0);
  v9 = swift_allocObject();
  v9[3] = 0;
  v9[4] = 0;
  v9[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v9, 0, 0);

  type metadata accessor for LookupNodeByNameNode(0);
  v10 = swift_allocObject();
  v10[3] = 0;
  v10[4] = 0;
  v10[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v10, 0, 0);

  type metadata accessor for ConvertPositionNode(0);
  v11 = swift_allocObject();
  v11[3] = 0;
  v11[4] = 0;
  v11[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v11, 0, 0);

  type metadata accessor for ConvertVectorNode(0);
  v12 = swift_allocObject();
  v12[3] = 0;
  v12[4] = 0;
  v12[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v12, 0, 0);

  type metadata accessor for ConvertTransformNode(0);
  v13 = swift_allocObject();
  v13[3] = 0;
  v13[4] = 0;
  v13[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v13, 0, 0);

  type metadata accessor for LocalTranslateByNode(0);
  v14 = swift_allocObject();
  v14[3] = 0;
  v14[4] = 0;
  v14[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v14, 0, 0);

  type metadata accessor for LocalRotateByNode(0);
  v15 = swift_allocObject();
  v15[3] = 0;
  v15[4] = 0;
  v15[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v15, 0, 0);

  type metadata accessor for RotateAroundTargetNode(0);
  v16 = swift_allocObject();
  v16[3] = 0;
  v16[4] = 0;
  v16[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v16, 0, 0);

  type metadata accessor for HitTestNode(0);
  v17 = swift_allocObject();
  v17[3] = 0;
  v17[4] = 0;
  v17[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v17, 0, 0);

  type metadata accessor for RayTestNode(0);
  v18 = swift_allocObject();
  v18[3] = 0;
  v18[4] = 0;
  v18[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v18, 0, 0);

  type metadata accessor for HitNode(0);
  v19 = swift_allocObject();
  v19[3] = 0;
  v19[4] = 0;
  v19[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v19, 0, 0);

  type metadata accessor for PresentationNode(0);
  v20 = swift_allocObject();
  v20[3] = 0;
  v20[4] = 0;
  v20[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v20, 2, 0);

  type metadata accessor for ApplyForceNode(0);
  v21 = swift_allocObject();
  v21[3] = 0;
  v21[4] = 0;
  v21[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v21, 0, 0);

  type metadata accessor for ApplyTorqueNode(0);
  v22 = swift_allocObject();
  v22[3] = 0;
  v22[4] = 0;
  v22[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v22, 0, 0);

  type metadata accessor for ProjectNode(0);
  v23 = swift_allocObject();
  v23[3] = 0;
  v23[4] = 0;
  v23[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v23, 0, 0);

  type metadata accessor for UnprojectNode(0);
  v24 = swift_allocObject();
  v24[2] = v1;
  v24[3] = 0;
  v24[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v24, 0, 0);

  type metadata accessor for PointToPixelNode(0);
  v25 = swift_allocObject();
  v25[2] = v1;
  v25[3] = 0;
  v25[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v25, 0, 0);

  type metadata accessor for ContentsScaleFactorNode(0);
  v26 = swift_allocObject();
  v26[2] = v1;
  v26[3] = 0;
  v26[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v26, 0, 0);

  type metadata accessor for ScreenSizeNode(0);
  v27 = swift_allocObject();
  v27[2] = v1;
  v27[3] = 0;
  v27[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v27, 0, 0);
}

uint64_t sub_1AF961AE4()
{
  type metadata accessor for AddNode(0);
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v0, 0, 0);

  type metadata accessor for SubNode(0);
  v2 = swift_allocObject();
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v2, 0, 0);

  type metadata accessor for MulNode(0);
  v3 = swift_allocObject();
  v3[3] = 0;
  v3[4] = 0;
  v3[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v3, 0, 0);

  type metadata accessor for DivNode(0);
  v4 = swift_allocObject();
  v4[3] = 0;
  v4[4] = 0;
  v4[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v4, 0, 0);

  type metadata accessor for RemainderNode(0);
  v5 = swift_allocObject();
  v5[3] = 0;
  v5[4] = 0;
  v5[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v5, 0, 0);

  type metadata accessor for QuotientNode(0);
  v6 = swift_allocObject();
  v6[3] = 0;
  v6[4] = 0;
  v6[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v6, 0, 0);

  type metadata accessor for FModNode(0);
  v7 = swift_allocObject();
  v7[3] = 0;
  v7[4] = 0;
  v7[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v7, 0, 0);

  type metadata accessor for MinNode(0);
  v8 = swift_allocObject();
  v8[3] = 0;
  v8[4] = 0;
  v8[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v8, 0, 0);

  type metadata accessor for MaxNode(0);
  v9 = swift_allocObject();
  v9[3] = 0;
  v9[4] = 0;
  v9[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v9, 0, 0);

  type metadata accessor for PowNode(0);
  v10 = swift_allocObject();
  v10[3] = 0;
  v10[4] = 0;
  v10[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v10, 0, 0);

  type metadata accessor for ATan2Node(0);
  v11 = swift_allocObject();
  v11[3] = 0;
  v11[4] = 0;
  v11[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v11, 0, 0);

  type metadata accessor for StepNode(0);
  v12 = swift_allocObject();
  v12[3] = 0;
  v12[4] = 0;
  v12[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v12, 0, 0);

  type metadata accessor for DistanceNode(0);
  v13 = swift_allocObject();
  v13[3] = 0;
  v13[4] = 0;
  v13[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v13, 0, 0);

  type metadata accessor for DistanceSquaredNode(0);
  v14 = swift_allocObject();
  v14[3] = 0;
  v14[4] = 0;
  v14[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v14, 0, 0);

  type metadata accessor for LengthSquaredNode(0);
  v15 = swift_allocObject();
  v15[3] = 0;
  v15[4] = 0;
  v15[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v15, 0, 0);

  type metadata accessor for IsAlmostEqualNode(0);
  v16 = swift_allocObject();
  v16[3] = 0;
  v16[4] = 0;
  v16[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v16, 0, 0);

  type metadata accessor for CrossProductNode(0);
  v17 = swift_allocObject();
  v17[3] = 0;
  v17[4] = 0;
  v17[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v17, 0, 0);

  type metadata accessor for DotProductNode(0);
  v18 = swift_allocObject();
  v18[3] = 0;
  v18[4] = 0;
  v18[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v18, 0, 0);

  type metadata accessor for Min3Node(0);
  v19 = swift_allocObject();
  v19[3] = 0;
  v19[4] = 0;
  v19[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v19, 0, 0);

  type metadata accessor for Max3Node(0);
  v20 = swift_allocObject();
  v20[3] = 0;
  v20[4] = 0;
  v20[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v20, 0, 0);

  type metadata accessor for SmoothStepNode(0);
  v21 = swift_allocObject();
  v21[3] = 0;
  v21[4] = 0;
  v21[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v21, 0, 0);

  type metadata accessor for MulAddNode(0);
  v22 = swift_allocObject();
  v22[3] = 0;
  v22[4] = 0;
  v22[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v22, 0, 0);

  type metadata accessor for ClampNode(0);
  v23 = swift_allocObject();
  v23[3] = 0;
  v23[4] = 0;
  v23[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v23, 0, 0);

  type metadata accessor for Remap01Node(0);
  v24 = swift_allocObject();
  v24[2] = v1;
  v24[3] = 0;
  v24[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v24, 0, 0);

  type metadata accessor for ToRadiansNode(0);
  v25 = swift_allocObject();
  v25[2] = v1;
  v25[3] = 0;
  v25[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v25, 0, 0);

  type metadata accessor for ToDegreesNode(0);
  v26 = swift_allocObject();
  v26[2] = v1;
  v26[3] = 0;
  v26[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v26, 0, 0);

  type metadata accessor for SqrtNode(0);
  v27 = swift_allocObject();
  v27[2] = v1;
  v27[3] = 0;
  v27[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v27, 0, 0);

  type metadata accessor for FractNode(0);
  v28 = swift_allocObject();
  v28[2] = v1;
  v28[3] = 0;
  v28[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v28, 0, 0);

  type metadata accessor for OneMinusNode(0);
  v29 = swift_allocObject();
  v29[2] = v1;
  v29[3] = 0;
  v29[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v29, 0, 0);

  type metadata accessor for Pow2Node(0);
  v30 = swift_allocObject();
  v30[2] = v1;
  v30[3] = 0;
  v30[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v30, 0, 0);

  type metadata accessor for Pow3Node(0);
  v31 = swift_allocObject();
  v31[2] = v1;
  v31[3] = 0;
  v31[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v31, 0, 0);

  type metadata accessor for RoundNode(0);
  v32 = swift_allocObject();
  v32[2] = v1;
  v32[3] = 0;
  v32[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v32, 0, 0);

  type metadata accessor for SignNode(0);
  v33 = swift_allocObject();
  v33[2] = v1;
  v33[3] = 0;
  v33[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v33, 0, 0);

  type metadata accessor for AbsNode(0);
  v34 = swift_allocObject();
  v34[2] = v1;
  v34[3] = 0;
  v34[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v34, 0, 0);

  type metadata accessor for FloorNode(0);
  v35 = swift_allocObject();
  v35[2] = v1;
  v35[3] = 0;
  v35[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v35, 0, 0);

  type metadata accessor for LogNode(0);
  v36 = swift_allocObject();
  v36[2] = v1;
  v36[3] = 0;
  v36[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v36, 0, 0);

  type metadata accessor for ExpNode(0);
  v37 = swift_allocObject();
  v37[2] = v1;
  v37[3] = 0;
  v37[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v37, 0, 0);

  type metadata accessor for Exp2Node(0);
  v38 = swift_allocObject();
  v38[2] = v1;
  v38[3] = 0;
  v38[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v38, 0, 0);

  type metadata accessor for Exp10Node(0);
  v39 = swift_allocObject();
  v39[2] = v1;
  v39[3] = 0;
  v39[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v39, 0, 0);

  type metadata accessor for CosNode(0);
  v40 = swift_allocObject();
  v40[2] = v1;
  v40[3] = 0;
  v40[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v40, 0, 0);

  type metadata accessor for SinNode(0);
  v41 = swift_allocObject();
  v41[2] = v1;
  v41[3] = 0;
  v41[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v41, 0, 0);

  type metadata accessor for ASinNode(0);
  v42 = swift_allocObject();
  v42[2] = v1;
  v42[3] = 0;
  v42[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v42, 0, 0);

  type metadata accessor for ACosNode(0);
  v43 = swift_allocObject();
  v43[2] = v1;
  v43[3] = 0;
  v43[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v43, 0, 0);

  type metadata accessor for CeilNode(0);
  v44 = swift_allocObject();
  v44[2] = v1;
  v44[3] = 0;
  v44[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v44, 0, 0);

  type metadata accessor for TanNode(0);
  v45 = swift_allocObject();
  v45[2] = v1;
  v45[3] = 0;
  v45[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v45, 0, 0);

  type metadata accessor for ATanNode(0);
  v46 = swift_allocObject();
  v46[2] = v1;
  v46[3] = 0;
  v46[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v46, 0, 0);

  type metadata accessor for LengthNode(0);
  v47 = swift_allocObject();
  v47[2] = v1;
  v47[3] = 0;
  v47[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v47, 0, 0);

  type metadata accessor for QLengthNode(0);
  v48 = swift_allocObject();
  v48[2] = v1;
  v48[3] = 0;
  v48[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v48, 0, 0);

  type metadata accessor for IsAlmostZeroNode(0);
  v49 = swift_allocObject();
  v49[2] = v1;
  v49[3] = 0;
  v49[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v49, 0, 0);

  type metadata accessor for SaturateNode(0);
  v50 = swift_allocObject();
  v50[2] = v1;
  v50[3] = 0;
  v50[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v50, 0, 0);

  type metadata accessor for SignedSaturateNode(0);
  v51 = swift_allocObject();
  v51[2] = v1;
  v51[3] = 0;
  v51[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v51, 0, 0);

  type metadata accessor for NormalizedNode(0);
  v52 = swift_allocObject();
  v52[2] = v1;
  v52[3] = 0;
  v52[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v52, 0, 0);

  type metadata accessor for QNormalizedNode(0);
  v53 = swift_allocObject();
  v53[2] = v1;
  v53[3] = 0;
  v53[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v53, 0, 0);

  type metadata accessor for ConjugateNode(0);
  v54 = swift_allocObject();
  v54[2] = v1;
  v54[3] = 0;
  v54[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v54, 0, 0);

  type metadata accessor for QLnNode(0);
  v55 = swift_allocObject();
  v55[2] = v1;
  v55[3] = 0;
  v55[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v55, 0, 0);

  type metadata accessor for QExpNode(0);
  v56 = swift_allocObject();
  v56[2] = v1;
  v56[3] = 0;
  v56[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v56, 0, 0);

  type metadata accessor for EulerAnglesNode(0);
  v57 = swift_allocObject();
  v57[2] = v1;
  v57[3] = 0;
  v57[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v57, 0, 0);

  type metadata accessor for AxisAngleNode(0);
  v58 = swift_allocObject();
  v58[2] = v1;
  v58[3] = 0;
  v58[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v58, 0, 0);

  type metadata accessor for AxisNode(0);
  v59 = swift_allocObject();
  v59[2] = v1;
  v59[3] = 0;
  v59[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v59, 0, 0);

  type metadata accessor for QAngleNode(0);
  v60 = swift_allocObject();
  v60[2] = v1;
  v60[3] = 0;
  v60[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v60, 0, 0);

  type metadata accessor for NormalAxisNode(0);
  v61 = swift_allocObject();
  v61[2] = v1;
  v61[3] = 0;
  v61[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v61, 0, 0);

  type metadata accessor for ReduceSumNode(0);
  v62 = swift_allocObject();
  v62[2] = v1;
  v62[3] = 0;
  v62[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v62, 0, 0);

  type metadata accessor for ReduceMulNode(0);
  v63 = swift_allocObject();
  v63[2] = v1;
  v63[3] = 0;
  v63[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v63, 0, 0);

  type metadata accessor for OrthonormalBasisNode(0);
  v64 = swift_allocObject();
  v64[2] = v1;
  v64[3] = 0;
  v64[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v64, 0, 0);

  type metadata accessor for MixNode(0);
  v65 = swift_allocObject();
  v65[2] = v1;
  v65[3] = 0;
  v65[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v65, 0, 0);

  type metadata accessor for QMultiplyNode(0);
  v66 = swift_allocObject();
  v66[2] = v1;
  v66[3] = 0;
  v66[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v66, 0, 0);

  type metadata accessor for InverseNode(0);
  v67 = swift_allocObject();
  v67[2] = v1;
  v67[3] = 0;
  v67[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v67, 0, 0);

  type metadata accessor for QInverseNode(0);
  v68 = swift_allocObject();
  v68[2] = v1;
  v68[3] = 0;
  v68[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v68, 0, 0);

  type metadata accessor for TransposeNode(0);
  v69 = swift_allocObject();
  v69[2] = v1;
  v69[3] = 0;
  v69[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v69, 0, 0);

  type metadata accessor for TransformNormalNode(0);
  v70 = swift_allocObject();
  v70[2] = v1;
  v70[3] = 0;
  v70[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v70, 0, 0);

  type metadata accessor for TransformPosition3Node(0);
  v71 = swift_allocObject();
  v71[2] = v1;
  v71[3] = 0;
  v71[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v71, 0, 0);

  type metadata accessor for TransformPosition4Node(0);
  v72 = swift_allocObject();
  v72[2] = v1;
  v72[3] = 0;
  v72[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v72, 0, 0);

  type metadata accessor for TransformNode(0);
  v73 = swift_allocObject();
  v73[2] = v1;
  v73[3] = 0;
  v73[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v73, 0, 0);

  type metadata accessor for TranslateMatrix3Node(0);
  v74 = swift_allocObject();
  v74[2] = v1;
  v74[3] = 0;
  v74[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v74, 0, 0);

  type metadata accessor for TranslateMatrix4Node(0);
  v75 = swift_allocObject();
  v75[2] = v1;
  v75[3] = 0;
  v75[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v75, 0, 0);

  type metadata accessor for ScaleMatrix3Node(0);
  v76 = swift_allocObject();
  v76[2] = v1;
  v76[3] = 0;
  v76[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v76, 0, 0);

  type metadata accessor for ScaleMatrix4Node(0);
  v77 = swift_allocObject();
  v77[2] = v1;
  v77[3] = 0;
  v77[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v77, 0, 0);

  type metadata accessor for MatrixMultiplyNode(0);
  v78 = swift_allocObject();
  v78[2] = v1;
  v78[3] = 0;
  v78[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v78, 0, 0);

  type metadata accessor for ProjectPositionNode(0);
  v79 = swift_allocObject();
  v79[2] = v1;
  v79[3] = 0;
  v79[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v79, 0, 0);

  type metadata accessor for TransformDirection3Node(0);
  v80 = swift_allocObject();
  v80[2] = v1;
  v80[3] = 0;
  v80[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v80, 0, 0);

  type metadata accessor for TransformDirection4Node(0);
  v81 = swift_allocObject();
  v81[2] = v1;
  v81[3] = 0;
  v81[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v81, 0, 0);

  type metadata accessor for TRSNode(0);
  v82 = swift_allocObject();
  v82[2] = v1;
  v82[3] = 0;
  v82[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v82, 0, 0);

  type metadata accessor for GetTranslation3Node(0);
  v83 = swift_allocObject();
  v83[2] = v1;
  v83[3] = 0;
  v83[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v83, 0, 0);

  type metadata accessor for GetTranslation4Node(0);
  v84 = swift_allocObject();
  v84[2] = v1;
  v84[3] = 0;
  v84[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v84, 0, 0);

  type metadata accessor for GetRotationNode(0);
  v85 = swift_allocObject();
  v85[2] = v1;
  v85[3] = 0;
  v85[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v85, 0, 0);

  type metadata accessor for RotationNode(0);
  v86 = swift_allocObject();
  v86[2] = v1;
  v86[3] = 0;
  v86[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v86, 0, 0);

  type metadata accessor for GetScale3Node(0);
  v87 = swift_allocObject();
  v87[2] = v1;
  v87[3] = 0;
  v87[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v87, 0, 0);

  type metadata accessor for GetScale4Node(0);
  v88 = swift_allocObject();
  v88[2] = v1;
  v88[3] = 0;
  v88[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v88, 0, 0);

  type metadata accessor for RotateVectorNode(0);
  v89 = swift_allocObject();
  v89[2] = v1;
  v89[3] = 0;
  v89[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v89, 0, &unk_1F2500050);

  sub_1AF966FFC(&unk_1F2500070);
  type metadata accessor for QPowNode(0);
  v90 = swift_allocObject();
  v90[2] = v1;
  v90[3] = 0;
  v90[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v90, 0, 0);

  type metadata accessor for LookAtNode(0);
  v91 = swift_allocObject();
  v91[2] = v1;
  v91[3] = 0;
  v91[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v91, 0, 0);

  type metadata accessor for SlerpNode(0);
  v92 = swift_allocObject();
  v92[2] = v1;
  v92[3] = 0;
  v92[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v92, 0, 0);

  type metadata accessor for SlerpLongestNode(0);
  v93 = swift_allocObject();
  v93[2] = v1;
  v93[3] = 0;
  v93[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v93, 0, 0);

  type metadata accessor for SquadNode(0);
  v94 = swift_allocObject();
  v94[2] = v1;
  v94[3] = 0;
  v94[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v94, 0, 0);

  type metadata accessor for BezierNode(0);
  v95 = swift_allocObject();
  v95[2] = v1;
  v95[3] = 0;
  v95[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v95, 0, 0);

  type metadata accessor for RotationBetweenNode(0);
  v96 = swift_allocObject();
  v96[2] = v1;
  v96[3] = 0;
  v96[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v96, 0, 0);

  type metadata accessor for RotationBetweenFastNode(0);
  v97 = swift_allocObject();
  v97[2] = v1;
  v97[3] = 0;
  v97[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v97, 0, 0);

  type metadata accessor for IsIdentityNode(0);
  v98 = swift_allocObject();
  v98[2] = v1;
  v98[3] = 0;
  v98[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v98, 0, 0);

  type metadata accessor for AngleNode(0);
  v99 = swift_allocObject();
  v99[2] = v1;
  v99[3] = 0;
  v99[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v99, 0, 0);

  type metadata accessor for IsInClosedRange(0);
  v100 = swift_allocObject();
  v100[2] = v1;
  v100[3] = 0;
  v100[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v100, 0, 0);

  type metadata accessor for RemapNode(0);
  v101 = swift_allocObject();
  v101[2] = v1;
  v101[3] = 0;
  v101[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v101, 0, 0);

  type metadata accessor for QuaternionFromNormalNode(0);
  v102 = swift_allocObject();
  v102[2] = v1;
  v102[3] = 0;
  v102[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v102, 0, 0);

  type metadata accessor for QuaternionFromFloat3AxisAngleNode(0);
  v103 = swift_allocObject();
  v103[2] = v1;
  v103[3] = 0;
  v103[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v103, 0, 0);

  type metadata accessor for QuaternionFromFloat4AxisAngleNode(0);
  v104 = swift_allocObject();
  v104[2] = v1;
  v104[3] = 0;
  v104[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v104, 0, 0);

  type metadata accessor for QuaternionFromEulerAnglesNode(0);
  v105 = swift_allocObject();
  v105[2] = v1;
  v105[3] = 0;
  v105[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v105, 0, 0);

  type metadata accessor for QuaternionXNode(0);
  v106 = swift_allocObject();
  v106[2] = v1;
  v106[3] = 0;
  v106[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v106, 0, 0);

  type metadata accessor for QuaternionYNode(0);
  v107 = swift_allocObject();
  v107[2] = v1;
  v107[3] = 0;
  v107[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v107, 0, 0);

  type metadata accessor for QuaternionZNode(0);
  v108 = swift_allocObject();
  v108[2] = v1;
  v108[3] = 0;
  v108[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v108, 0, 0);

  type metadata accessor for QuaternionFromRotationMatrix3x3Node(0);
  v109 = swift_allocObject();
  v109[2] = v1;
  v109[3] = 0;
  v109[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v109, 0, 0);

  type metadata accessor for QuaternionFromRotationMatrix4x4Node(0);
  v110 = swift_allocObject();
  v110[2] = v1;
  v110[3] = 0;
  v110[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v110, 0, 0);

  type metadata accessor for RotationMatrixFromEulerAngleNode(0);
  v111 = swift_allocObject();
  v111[2] = v1;
  v111[3] = 0;
  v111[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v111, 0, 0);

  type metadata accessor for RotationMatrix3x3FromQuaternionNode(0);
  v112 = swift_allocObject();
  v112[2] = v1;
  v112[3] = 0;
  v112[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v112, 0, 0);

  type metadata accessor for RotationMatrix4x4FromQuaternionNode(0);
  v113 = swift_allocObject();
  v113[2] = v1;
  v113[3] = 0;
  v113[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v113, 0, 0);

  type metadata accessor for RotationMatrixAroundCenterNode(0);
  v114 = swift_allocObject();
  v114[2] = v1;
  v114[3] = 0;
  v114[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v114, 0, 0);

  type metadata accessor for TRSFloat3x3MatrixNode(0);
  v115 = swift_allocObject();
  v115[2] = v1;
  v115[3] = 0;
  v115[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v115, 0, 0);

  type metadata accessor for TRSFloat4x4MatrixNode(0);
  v116 = swift_allocObject();
  v116[2] = v1;
  v116[3] = 0;
  v116[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v116, 0, 0);
}

uint64_t sub_1AF963A0C()
{
  type metadata accessor for SelectNode(0);
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v0, 0, 0);

  type metadata accessor for NotNode(0);
  v2 = swift_allocObject();
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v2, 0, 0);

  type metadata accessor for IsOddNode(0);
  v3 = swift_allocObject();
  v3[3] = 0;
  v3[4] = 0;
  v3[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v3, 0, 0);

  type metadata accessor for IsEvenNode(0);
  v4 = swift_allocObject();
  v4[3] = 0;
  v4[4] = 0;
  v4[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v4, 0, 0);

  type metadata accessor for OrNode(0);
  v5 = swift_allocObject();
  v5[3] = 0;
  v5[4] = 0;
  v5[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v5, 0, 0);

  type metadata accessor for AndNode(0);
  v6 = swift_allocObject();
  v6[3] = 0;
  v6[4] = 0;
  v6[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v6, 0, 0);

  type metadata accessor for NandNode(0);
  v7 = swift_allocObject();
  v7[3] = 0;
  v7[4] = 0;
  v7[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v7, 0, 0);

  type metadata accessor for NorNode(0);
  v8 = swift_allocObject();
  v8[3] = 0;
  v8[4] = 0;
  v8[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v8, 0, 0);

  type metadata accessor for IsGreaterNode(0);
  v9 = swift_allocObject();
  v9[3] = 0;
  v9[4] = 0;
  v9[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v9, 0, 0);

  type metadata accessor for IsGreaterOrEqualNode(0);
  v10 = swift_allocObject();
  v10[3] = 0;
  v10[4] = 0;
  v10[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v10, 0, 0);

  type metadata accessor for IsLesserNode(0);
  v11 = swift_allocObject();
  v11[3] = 0;
  v11[4] = 0;
  v11[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v11, 0, 0);

  type metadata accessor for IsLesserOrEqualNode(0);
  v12 = swift_allocObject();
  v12[3] = 0;
  v12[4] = 0;
  v12[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v12, 0, 0);

  type metadata accessor for IsEqualNode(0);
  v13 = swift_allocObject();
  v13[3] = 0;
  v13[4] = 0;
  v13[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v13, 0, 0);

  type metadata accessor for IsNotEqualNode(0);
  v14 = swift_allocObject();
  v14[3] = 0;
  v14[4] = 0;
  v14[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v14, 0, 0);
}

uint64_t sub_1AF963E04()
{
  type metadata accessor for CastNode(0);
  v0 = swift_allocObject();
  *(v0 + OBJC_IVAR____TtC3VFX8CastNode_dstType) = 0xC000000000000058;
  v1 = MEMORY[0x1E69E7CC0];
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v0, 0, 0);

  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C420;
  v3 = v2 | 0x2000000000000000;
  v4 = swift_allocObject();
  *(v4 + OBJC_IVAR____TtC3VFX8CastNode_dstType) = v3;
  v4[3] = 0;
  v4[4] = 0;
  v4[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v4, 0, 0);

  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE4C430;
  v6 = v5 | 0x2000000000000000;
  v7 = swift_allocObject();
  *(v7 + OBJC_IVAR____TtC3VFX8CastNode_dstType) = v6;
  v7[3] = 0;
  v7[4] = 0;
  v7[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v7, 0, 0);

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE4C440;
  v9 = v8 | 0x2000000000000000;
  v10 = swift_allocObject();
  *(v10 + OBJC_IVAR____TtC3VFX8CastNode_dstType) = v9;
  v10[3] = 0;
  v10[4] = 0;
  v10[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v10, 0, 0);

  v11 = swift_allocObject();
  *(v11 + OBJC_IVAR____TtC3VFX8CastNode_dstType) = 0xC000000000000030;
  v11[3] = 0;
  v11[4] = 0;
  v11[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v11, 0, 0);

  v12 = swift_allocObject();
  *(v12 + OBJC_IVAR____TtC3VFX8CastNode_dstType) = 0xC000000000000038;
  v12[3] = 0;
  v12[4] = 0;
  v12[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v12, 0, 0);

  v13 = swift_allocObject();
  *(v13 + OBJC_IVAR____TtC3VFX8CastNode_dstType) = 0xC000000000000040;
  v13[3] = 0;
  v13[4] = 0;
  v13[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v13, 0, 0);

  v14 = swift_allocObject();
  *(v14 + OBJC_IVAR____TtC3VFX8CastNode_dstType) = 0xC000000000000048;
  v14[3] = 0;
  v14[4] = 0;
  v14[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v14, 0, 0);

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1AFE85120;
  v16 = v15 | 0x2000000000000000;
  v17 = swift_allocObject();
  *(v17 + OBJC_IVAR____TtC3VFX8CastNode_dstType) = v16;
  v17[3] = 0;
  v17[4] = 0;
  v17[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v17, 0, 0);

  v18 = swift_allocObject();
  *(v18 + OBJC_IVAR____TtC3VFX8CastNode_dstType) = 0xC000000000000028;
  v18[3] = 0;
  v18[4] = 0;
  v18[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v18, 0, 0);

  v19 = swift_allocObject();
  *(v19 + OBJC_IVAR____TtC3VFX8CastNode_dstType) = 0xC000000000000020;
  v19[3] = 0;
  v19[4] = 0;
  v19[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v19, 0, 0);

  v20 = swift_allocObject();
  *(v20 + OBJC_IVAR____TtC3VFX8CastNode_dstType) = 0xC0000000000000B8;
  v20[3] = 0;
  v20[4] = 0;
  v20[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v20, 0, 0);

  type metadata accessor for ConvertToStringNode(0);
  v21 = swift_allocObject();
  *(v21 + OBJC_IVAR____TtC3VFX14StringJoinNode_count) = 1;
  v21[3] = 0;
  v21[4] = 0;
  v21[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v21, 0, 0);
}

uint64_t sub_1AF9642D4()
{
  type metadata accessor for RenderWorldNode(0);
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v0, 0, 0);

  type metadata accessor for PresentNode(0);
  v2 = swift_allocObject();
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v2, 0, 0);

  type metadata accessor for PublishTextureNode(0);
  v3 = swift_allocObject();
  v3[3] = 0;
  v3[4] = 0;
  v3[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v3, 0, 0);

  type metadata accessor for TextureDescriptorNode(0);
  v4 = swift_allocObject();
  *(v4 + OBJC_IVAR____TtC3VFX21TextureDescriptorNode__descriptor) = 0;
  v4[3] = 0;
  v4[4] = 0;
  v4[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v4, 0, 0);

  type metadata accessor for ComputeShaderNode(0);
  swift_allocObject();
  v5 = sub_1AF9A67B8();
  sub_1AF95C8F0(v5, 0, 0);

  type metadata accessor for FullscreenQuadNode(0);
  swift_allocObject();
  v6 = sub_1AF9A67B8();
  sub_1AF95C8F0(v6, 0, 0);

  type metadata accessor for LinearizeDepthNode(0);
  v7 = swift_allocObject();
  v7[3] = 0;
  v7[4] = 0;
  v7[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v7, 0, 0);

  type metadata accessor for BlurNode(0);
  v8 = swift_allocObject();
  v8[3] = 0;
  v8[4] = 0;
  v8[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v8, 0, 0);

  type metadata accessor for LaplacianNode(0);
  v9 = swift_allocObject();
  v9[3] = 0;
  v9[4] = 0;
  v9[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v9, 0, 0);

  type metadata accessor for BoxNode(0);
  v10 = swift_allocObject();
  v10[3] = 0;
  v10[4] = 0;
  v10[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v10, 0, 0);

  type metadata accessor for TentNode(0);
  v11 = swift_allocObject();
  v11[3] = 0;
  v11[4] = 0;
  v11[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v11, 0, 0);

  type metadata accessor for SobelNode(0);
  v12 = swift_allocObject();
  v12[3] = 0;
  v12[4] = 0;
  v12[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v12, 0, 0);

  type metadata accessor for CannyNode(0);
  v13 = swift_allocObject();
  v13[3] = 0;
  v13[4] = 0;
  v13[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v13, 0, 0);

  type metadata accessor for BloomNode(0);
  v14 = swift_allocObject();
  v14[3] = 0;
  v14[4] = 0;
  v14[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v14, 0, 0);

  type metadata accessor for SDFGenerationNode(0);
  v15 = swift_allocObject();
  v15[3] = 0;
  v15[4] = 0;
  v15[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v15, 0, 0);

  type metadata accessor for RenderGraphTextureNode(0);
  v16 = swift_allocObject();
  v16[3] = 0;
  v16[4] = 0;
  v16[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v16, 0, 0);

  type metadata accessor for ResolveResolutionNode(0);
  v17 = swift_allocObject();
  v17[3] = 0;
  v17[4] = 0;
  v17[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v17, 0, 0);

  type metadata accessor for CameraEffectNode(0);
  v18 = swift_allocObject();
  v18[3] = 0;
  v18[4] = 0;
  v18[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v18, 0, 0);

  type metadata accessor for InvalidateRenderTargetNode(0);
  v19 = swift_allocObject();
  v19[3] = 0;
  v19[4] = 0;
  v19[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v19, 0, 0);

  type metadata accessor for FrameConstantsNode(0);
  v20 = swift_allocObject();
  v20[3] = 0;
  v20[4] = 0;
  v20[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v20, 0, 0);

  type metadata accessor for ViewConstantsNode(0);
  v21 = swift_allocObject();
  v21[3] = 0;
  v21[4] = 0;
  v21[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v21, 0, 0);

  type metadata accessor for AreaMinNode(0);
  v22 = swift_allocObject();
  v22[3] = 0;
  v22[4] = 0;
  v22[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v22, 0, 0);

  type metadata accessor for AreaMaxNode(0);
  v23 = swift_allocObject();
  v23[3] = 0;
  v23[4] = 0;
  v23[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v23, 0, 0);

  type metadata accessor for CopyTextureNode(0);
  v24 = swift_allocObject();
  v24[2] = v1;
  v24[3] = 0;
  v24[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v24, 0, 0);
}

uint64_t sub_1AF964974()
{
  type metadata accessor for OnTickTriggerNode(0);
  v0 = swift_allocObject();
  *(v0 + OBJC_IVAR____TtC3VFX13OnTriggerNode_eventType) = @"VFXTriggerTypeTick";
  v1 = MEMORY[0x1E69E7CC0];
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v1;
  v2 = @"VFXTriggerTypeTick";
  sub_1AFDFC308();
  sub_1AF95C8F0(v0, 0, 0);

  type metadata accessor for OnCollisionNode(0);
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC3VFX13OnTriggerNode_eventType) = @"VFXTriggerTypeCollisionBegan";
  v3[3] = 0;
  v3[4] = 0;
  v3[2] = v1;
  v4 = @"VFXTriggerTypeCollisionBegan";
  sub_1AFDFC308();
  sub_1AF95C8F0(v3, 0, 0);

  v5 = swift_allocObject();
  *(v5 + OBJC_IVAR____TtC3VFX13OnTriggerNode_eventType) = @"VFXTriggerTypeCollisionUpdate";
  v5[3] = 0;
  v5[4] = 0;
  v5[2] = v1;
  v6 = @"VFXTriggerTypeCollisionUpdate";
  sub_1AFDFC308();
  sub_1AF95C8F0(v5, 0, 0);

  v7 = swift_allocObject();
  *(v7 + OBJC_IVAR____TtC3VFX13OnTriggerNode_eventType) = @"VFXTriggerTypeCollisionEnded";
  v7[3] = 0;
  v7[4] = 0;
  v7[2] = v1;
  v8 = @"VFXTriggerTypeCollisionEnded";
  sub_1AFDFC308();
  sub_1AF95C8F0(v7, 0, 0);

  type metadata accessor for OnMouseDownNode(0);
  v9 = swift_allocObject();
  *(v9 + OBJC_IVAR____TtC3VFX13OnTriggerNode_eventType) = @"VFXTriggerTypeTapBegan";
  v9[3] = 0;
  v9[4] = 0;
  v9[2] = v1;
  v10 = @"VFXTriggerTypeTapBegan";
  sub_1AFDFC308();
  sub_1AF95C8F0(v9, 0, 0);

  type metadata accessor for OnMouseTriggerNode(0);
  v11 = swift_allocObject();
  *(v11 + OBJC_IVAR____TtC3VFX13OnTriggerNode_eventType) = @"VFXTriggerTypeTapEnded";
  v11[3] = 0;
  v11[4] = 0;
  v11[2] = v1;
  v12 = @"VFXTriggerTypeTapEnded";
  sub_1AFDFC308();
  sub_1AF95C8F0(v11, 0, 0);

  v13 = swift_allocObject();
  *(v13 + OBJC_IVAR____TtC3VFX13OnTriggerNode_eventType) = @"VFXTriggerTypeTapDragged";
  v13[3] = 0;
  v13[4] = 0;
  v13[2] = v1;
  v14 = @"VFXTriggerTypeTapDragged";
  sub_1AFDFC308();
  sub_1AF95C8F0(v13, 0, 0);

  v15 = swift_allocObject();
  *(v15 + OBJC_IVAR____TtC3VFX13OnTriggerNode_eventType) = @"VFXTriggerTypeTapCancelled";
  v15[3] = 0;
  v15[4] = 0;
  v15[2] = v1;
  v16 = @"VFXTriggerTypeTapCancelled";
  sub_1AFDFC308();
  sub_1AF95C8F0(v15, 0, 0);

  type metadata accessor for OnMouseMovedNode(0);
  v17 = swift_allocObject();
  *(v17 + OBJC_IVAR____TtC3VFX13OnTriggerNode_eventType) = @"VFXTriggerTypeMouseMoved";
  v17[3] = 0;
  v17[4] = 0;
  v17[2] = v1;
  v18 = @"VFXTriggerTypeMouseMoved";
  sub_1AFDFC308();
  sub_1AF95C8F0(v17, 0, 0);

  type metadata accessor for OnKeyTriggerNode(0);
  v19 = swift_allocObject();
  *(v19 + OBJC_IVAR____TtC3VFX13OnTriggerNode_eventType) = @"VFXTriggerTypeKeyDown";
  v19[3] = 0;
  v19[4] = 0;
  v19[2] = v1;
  v20 = @"VFXTriggerTypeKeyDown";
  sub_1AFDFC308();
  sub_1AF95C8F0(v19, 0, 0);

  v21 = swift_allocObject();
  *(v21 + OBJC_IVAR____TtC3VFX13OnTriggerNode_eventType) = @"VFXTriggerTypeKeyUp";
  v21[3] = 0;
  v21[4] = 0;
  v21[2] = v1;
  v22 = @"VFXTriggerTypeKeyUp";
  sub_1AFDFC308();
  sub_1AF95C8F0(v21, 0, 0);

  type metadata accessor for StateNode(0);
  v23 = swift_allocObject();
  *(v23 + OBJC_IVAR____TtC3VFX9StateNode_stateRef + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = 0;
  v24 = swift_unknownObjectWeakAssign();
  *(v24 + 16) = 0x3E6C6C756E3CLL;
  *(v24 + 24) = 0xE600000000000000;
  v23[3] = 0;
  v23[4] = 0;
  v23[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v23, 0, 0);

  type metadata accessor for ImplicitStateNode(0);
  v25 = swift_allocObject();
  *(v25 + OBJC_IVAR____TtC3VFX9StateNode_stateRef + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = 0;
  v26 = swift_unknownObjectWeakAssign();
  *(v26 + 16) = 0x3E6C6C756E3CLL;
  *(v26 + 24) = 0xE600000000000000;
  v25[3] = 0;
  v25[4] = 0;
  v25[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v25, 2, 0);

  type metadata accessor for SetWorldStateNode(0);
  v27 = swift_allocObject();
  v27[3] = 0;
  v27[4] = 0;
  v27[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v27, 0, 0);

  type metadata accessor for SetObjectStateNode(0);
  v28 = swift_allocObject();
  v28[3] = 0;
  v28[4] = 0;
  v28[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v28, 0, 0);

  type metadata accessor for TickNode(0);
  v29 = swift_allocObject();
  v29[3] = 0;
  v29[4] = 0;
  v29[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v29, 0, 0);

  type metadata accessor for StartTimerNode(0);
  v30 = swift_allocObject();
  v30[3] = 0;
  v30[4] = 0;
  v30[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v30, 0, 0);

  type metadata accessor for StopTimerNode(0);
  v31 = swift_allocObject();
  v31[3] = 0;
  v31[4] = 0;
  v31[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v31, 0, 0);

  type metadata accessor for IsKeyDownNode(0);
  v32 = swift_allocObject();
  v32[3] = 0;
  v32[4] = 0;
  v32[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v32, 0, 0);

  type metadata accessor for OnARGazeTrackingUpdateNode(0);
  v33 = swift_allocObject();
  *(v33 + OBJC_IVAR____TtC3VFX13OnTriggerNode_eventType) = @"VFXTriggerTypeGazeTracking";
  v33[3] = 0;
  v33[4] = 0;
  v33[2] = v1;
  v34 = @"VFXTriggerTypeGazeTracking";
  sub_1AFDFC308();
  sub_1AF95C8F0(v33, 0, 0);

  type metadata accessor for ARGazeNode(0);
  v35 = swift_allocObject();
  v35[2] = v1;
  v35[3] = 0;
  v35[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v35, 0, 0);

  type metadata accessor for OnARHandTrackingUpdateNode(0);
  v36 = swift_allocObject();
  *(v36 + OBJC_IVAR____TtC3VFX13OnTriggerNode_eventType) = @"VFXTriggerTypeHandTracking";
  v36[2] = v1;
  v36[3] = 0;
  v36[4] = 0;
  v37 = @"VFXTriggerTypeHandTracking";
  sub_1AFDFC308();
  sub_1AF95C8F0(v36, 0, 0);

  type metadata accessor for ARHandNode(0);
  v38 = swift_allocObject();
  v38[2] = v1;
  v38[3] = 0;
  v38[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v38, 0, 0);

  type metadata accessor for OnMotionUpdateNode(0);
  v39 = swift_allocObject();
  *(v39 + OBJC_IVAR____TtC3VFX13OnTriggerNode_eventType) = @"VFXTriggerTypeMotionTracking";
  v39[2] = v1;
  v39[3] = 0;
  v39[4] = 0;
  v40 = @"VFXTriggerTypeMotionTracking";
  sub_1AFDFC308();
  sub_1AF95C8F0(v39, 0, 0);

  type metadata accessor for MotionDataNode(0);
  v41 = swift_allocObject();
  v41[2] = v1;
  v41[3] = 0;
  v41[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v41, 0, 0);

  type metadata accessor for OnParticleCollisionNode(0);
  v42 = swift_allocObject();
  *(v42 + OBJC_IVAR____TtC3VFX13OnTriggerNode_eventType) = @"VFXTriggerTypeParticleCollision";
  v42[2] = v1;
  v42[3] = 0;
  v42[4] = 0;
  v43 = @"VFXTriggerTypeParticleCollision";
  sub_1AFDFC308();
  sub_1AF95C8F0(v42, 0, 0);

  type metadata accessor for GetParticleCollisionNode(0);
  v44 = swift_allocObject();
  v44[2] = v1;
  v44[3] = 0;
  v44[4] = 0;
  sub_1AFDFC308();
  sub_1AF95C8F0(v44, 0, 0);
}

uint64_t sub_1AF9652B8()
{
  type metadata accessor for CanvasItemNode(0);
  v0 = swift_allocObject();
  *(v0 + OBJC_IVAR____TtC3VFX14CanvasItemNode_stage) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v0, 2, 0);

  type metadata accessor for CanvasStickyNode(0);
  swift_allocObject();
  v2 = sub_1AF980D7C(0, 0xE000000000000000);
  sub_1AF95C8F0(v2, 2, 0);

  type metadata accessor for CanvasStickyGroupNode(0);
  v3 = swift_allocObject();
  v3[3] = 0;
  v3[4] = 0;
  v3[2] = v1;
  sub_1AFDFC308();
  sub_1AF95C8F0(v3, 2, 0);
}

uint64_t sub_1AF9653DC()
{
  type metadata accessor for MigrationPlaceholderNode(0);
  v1 = swift_allocObject();
  v2 = (v1 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_payload);
  *v2 = 0u;
  v2[1] = 0u;
  v3 = (v1 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID);
  *v3 = 0x7341797469746E45;
  v3[1] = 0xEF65646F4E746573;
  *(v1 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_inputCount) = 1;
  v4 = (v1 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_decodeFn);
  *v4 = sub_1AF96739C;
  v4[1] = 0;
  v5 = MEMORY[0x1E69E7CC0];
  v1[2] = MEMORY[0x1E69E7CC0];
  v1[3] = 0;
  v1[4] = 0;
  sub_1AFDFC308();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v112 = *(v0 + 32);
  *(v0 + 32) = 0x8000000000000000;
  sub_1AF854B5C(v1, 0x7341797469746E45, 0xEF65646F4E746573, isUniquelyReferenced_nonNull_native);
  *(v0 + 32) = v112;
  v7 = swift_allocObject();
  v8 = (v7 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_payload);
  *v8 = 0u;
  v8[1] = 0u;
  v9 = (v7 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID);
  *v9 = 0xD000000000000017;
  v9[1] = 0x80000001AFF3BE70;
  *(v7 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_inputCount) = 1;
  v10 = (v7 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_decodeFn);
  *v10 = sub_1AF96739C;
  v10[1] = 0;
  v7[2] = v5;
  v7[3] = 0;
  v7[4] = 0;
  sub_1AFDFC308();
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v113 = *(v0 + 32);
  *(v0 + 32) = 0x8000000000000000;
  sub_1AF854B5C(v7, 0xD000000000000017, 0x80000001AFF3BE70, v11);
  *(v0 + 32) = v113;
  v12 = swift_allocObject();
  v13 = &v12[OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_payload];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v14 = &v12[OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID];
  strcpy(&v12[OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID], "BounceEaseNode");
  v14[15] = -18;
  *&v12[OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_inputCount] = 4;
  v15 = &v12[OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_decodeFn];
  *v15 = sub_1AF9673B4;
  v15[1] = 0;
  v16 = MEMORY[0x1E69E7CC0];
  *(v12 + 2) = MEMORY[0x1E69E7CC0];
  *(v12 + 3) = 0;
  *(v12 + 4) = 0;
  sub_1AFDFC308();
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v114 = *(v0 + 32);
  *(v0 + 32) = 0x8000000000000000;
  sub_1AF854B5C(v12, 0x614565636E756F42, 0xEE0065646F4E6573, v17);
  *(v0 + 32) = v114;
  v18 = swift_allocObject();
  v19 = (v18 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_payload);
  *v19 = 0u;
  v19[1] = 0u;
  v20 = (v18 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID);
  *v20 = 0x7361456369627543;
  v20[1] = 0xEF65646F4E6E4965;
  *(v18 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_inputCount) = 1;
  v21 = (v18 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_decodeFn);
  *v21 = sub_1AF9673B4;
  v21[1] = 0;
  v18[2] = v16;
  v18[3] = 0;
  v18[4] = 0;
  sub_1AFDFC308();
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v115 = *(v0 + 32);
  *(v0 + 32) = 0x8000000000000000;
  sub_1AF854B5C(v18, 0x7361456369627543, 0xEF65646F4E6E4965, v22);
  *(v0 + 32) = v115;
  v23 = swift_allocObject();
  v24 = (v23 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_payload);
  *v24 = 0u;
  v24[1] = 0u;
  v25 = (v23 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID);
  *v25 = 0xD000000000000010;
  v25[1] = 0x80000001AFF3BE90;
  *(v23 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_inputCount) = 1;
  v26 = (v23 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_decodeFn);
  *v26 = sub_1AF9673B4;
  v26[1] = 0;
  v23[2] = v16;
  v23[3] = 0;
  v23[4] = 0;
  sub_1AFDFC308();
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v116 = *(v0 + 32);
  *(v0 + 32) = 0x8000000000000000;
  sub_1AF854B5C(v23, 0xD000000000000010, 0x80000001AFF3BE90, v27);
  *(v0 + 32) = v116;
  v28 = swift_allocObject();
  v29 = (v28 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_payload);
  *v29 = 0u;
  v29[1] = 0u;
  v30 = (v28 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID);
  *v30 = 0xD000000000000012;
  v30[1] = 0x80000001AFF3BEB0;
  *(v28 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_inputCount) = 1;
  v31 = (v28 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_decodeFn);
  *v31 = sub_1AF9673B4;
  v31[1] = 0;
  v28[2] = v16;
  v28[3] = 0;
  v28[4] = 0;
  sub_1AFDFC308();
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v117 = *(v0 + 32);
  *(v0 + 32) = 0x8000000000000000;
  sub_1AF854B5C(v28, 0xD000000000000012, 0x80000001AFF3BEB0, v32);
  *(v0 + 32) = v117;
  v33 = swift_allocObject();
  v34 = (v33 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_payload);
  *v34 = 0u;
  v34[1] = 0u;
  v35 = (v33 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID);
  *v35 = 0xD000000000000013;
  v35[1] = 0x80000001AFF3BED0;
  *(v33 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_inputCount) = 2;
  v36 = (v33 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_decodeFn);
  *v36 = sub_1AF9673B4;
  v36[1] = 0;
  v33[2] = MEMORY[0x1E69E7CC0];
  v33[3] = 0;
  v33[4] = 0;
  sub_1AFDFC308();
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v118 = *(v0 + 32);
  *(v0 + 32) = 0x8000000000000000;
  sub_1AF854B5C(v33, 0xD000000000000013, 0x80000001AFF3BED0, v37);
  *(v0 + 32) = v118;
  v38 = swift_allocObject();
  v39 = (v38 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_payload);
  *v39 = 0u;
  v39[1] = 0u;
  v40 = (v38 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID);
  *v40 = 0xD000000000000010;
  v40[1] = 0x80000001AFF3BEF0;
  *(v38 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_inputCount) = 4;
  v41 = (v38 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_decodeFn);
  *v41 = sub_1AF9673B4;
  v41[1] = 0;
  v38[2] = MEMORY[0x1E69E7CC0];
  v38[3] = 0;
  v38[4] = 0;
  sub_1AFDFC308();
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v119 = *(v0 + 32);
  *(v0 + 32) = 0x8000000000000000;
  sub_1AF854B5C(v38, 0xD000000000000010, 0x80000001AFF3BEF0, v42);
  *(v0 + 32) = v119;
  v43 = swift_allocObject();
  v44 = &v43[OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_payload];
  *v44 = 0u;
  *(v44 + 1) = 0u;
  v45 = &v43[OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID];
  strcpy(&v43[OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID], "PowerEaseNode");
  *(v45 + 7) = -4864;
  *&v43[OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_inputCount] = 2;
  v46 = &v43[OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_decodeFn];
  *v46 = sub_1AF9673B4;
  v46[1] = 0;
  *(v43 + 2) = MEMORY[0x1E69E7CC0];
  *(v43 + 3) = 0;
  *(v43 + 4) = 0;
  sub_1AFDFC308();
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v120 = *(v0 + 32);
  *(v0 + 32) = 0x8000000000000000;
  sub_1AF854B5C(v43, 0x7361457265776F50, 0xED000065646F4E65, v47);
  *(v0 + 32) = v120;
  v48 = swift_allocObject();
  v49 = (v48 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_payload);
  *v49 = 0u;
  v49[1] = 0u;
  v50 = (v48 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID);
  *v50 = 0xD000000000000013;
  v50[1] = 0x80000001AFF3BF10;
  *(v48 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_inputCount) = 1;
  v51 = (v48 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_decodeFn);
  *v51 = sub_1AF9673B4;
  v51[1] = 0;
  v48[2] = MEMORY[0x1E69E7CC0];
  v48[3] = 0;
  v48[4] = 0;
  sub_1AFDFC308();
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v121 = *(v0 + 32);
  *(v0 + 32) = 0x8000000000000000;
  sub_1AF854B5C(v48, 0xD000000000000013, 0x80000001AFF3BF10, v52);
  *(v0 + 32) = v121;
  v53 = swift_allocObject();
  v54 = (v53 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_payload);
  *v54 = 0u;
  v54[1] = 0u;
  v55 = (v53 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID);
  *v55 = 0xD000000000000014;
  v55[1] = 0x80000001AFF3BF30;
  *(v53 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_inputCount) = 1;
  v56 = (v53 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_decodeFn);
  *v56 = sub_1AF9673B4;
  v56[1] = 0;
  v57 = MEMORY[0x1E69E7CC0];
  v53[2] = MEMORY[0x1E69E7CC0];
  v53[3] = 0;
  v53[4] = 0;
  sub_1AFDFC308();
  v58 = swift_isUniquelyReferenced_nonNull_native();
  v122 = *(v0 + 32);
  *(v0 + 32) = 0x8000000000000000;
  sub_1AF854B5C(v53, 0xD000000000000014, 0x80000001AFF3BF30, v58);
  *(v0 + 32) = v122;
  v59 = swift_allocObject();
  v60 = (v59 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_payload);
  *v60 = 0u;
  v60[1] = 0u;
  v61 = (v59 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID);
  *v61 = 0xD000000000000016;
  v61[1] = 0x80000001AFF3BF50;
  *(v59 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_inputCount) = 1;
  v62 = (v59 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_decodeFn);
  *v62 = sub_1AF9673B4;
  v62[1] = 0;
  v59[2] = v57;
  v59[3] = 0;
  v59[4] = 0;
  sub_1AFDFC308();
  v63 = swift_isUniquelyReferenced_nonNull_native();
  v123 = *(v0 + 32);
  *(v0 + 32) = 0x8000000000000000;
  sub_1AF854B5C(v59, 0xD000000000000016, 0x80000001AFF3BF50, v63);
  *(v0 + 32) = v123;
  v64 = swift_allocObject();
  v65 = (v64 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_payload);
  *v65 = 0u;
  v65[1] = 0u;
  v66 = (v64 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID);
  *v66 = 0xD000000000000011;
  v66[1] = 0x80000001AFF3BF70;
  *(v64 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_inputCount) = 1;
  v67 = (v64 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_decodeFn);
  *v67 = sub_1AF9673B4;
  v67[1] = 0;
  v64[2] = MEMORY[0x1E69E7CC0];
  v64[3] = 0;
  v64[4] = 0;
  sub_1AFDFC308();
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v124 = *(v0 + 32);
  *(v0 + 32) = 0x8000000000000000;
  sub_1AF854B5C(v64, 0xD000000000000011, 0x80000001AFF3BF70, v68);
  *(v0 + 32) = v124;
  v69 = swift_allocObject();
  v70 = (v69 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_payload);
  *v70 = 0u;
  v70[1] = 0u;
  v71 = (v69 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID);
  *v71 = 0xD000000000000012;
  v71[1] = 0x80000001AFF3BF90;
  *(v69 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_inputCount) = 1;
  v72 = (v69 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_decodeFn);
  *v72 = sub_1AF9673B4;
  v72[1] = 0;
  v69[4] = 0;
  v69[2] = MEMORY[0x1E69E7CC0];
  v69[3] = 0;
  sub_1AFDFC308();
  v73 = swift_isUniquelyReferenced_nonNull_native();
  v125 = *(v0 + 32);
  *(v0 + 32) = 0x8000000000000000;
  sub_1AF854B5C(v69, 0xD000000000000012, 0x80000001AFF3BF90, v73);
  *(v0 + 32) = v125;
  v74 = swift_allocObject();
  v75 = (v74 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_payload);
  *v75 = 0u;
  v75[1] = 0u;
  v76 = (v74 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID);
  *v76 = 0xD000000000000014;
  v76[1] = 0x80000001AFF3BFB0;
  *(v74 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_inputCount) = 1;
  v77 = (v74 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_decodeFn);
  *v77 = sub_1AF9673B4;
  v77[1] = 0;
  v74[4] = 0;
  v74[2] = MEMORY[0x1E69E7CC0];
  v74[3] = 0;
  sub_1AFDFC308();
  v78 = swift_isUniquelyReferenced_nonNull_native();
  v126 = *(v0 + 32);
  *(v0 + 32) = 0x8000000000000000;
  sub_1AF854B5C(v74, 0xD000000000000014, 0x80000001AFF3BFB0, v78);
  *(v0 + 32) = v126;
  v79 = swift_allocObject();
  v80 = (v79 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_payload);
  *v80 = 0u;
  v80[1] = 0u;
  v81 = (v79 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID);
  *v81 = 0xD000000000000011;
  v81[1] = 0x80000001AFF3BFD0;
  *(v79 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_inputCount) = 1;
  v82 = (v79 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_decodeFn);
  *v82 = sub_1AF9673B4;
  v82[1] = 0;
  v79[4] = 0;
  v79[2] = MEMORY[0x1E69E7CC0];
  v79[3] = 0;
  sub_1AFDFC308();
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v127 = *(v0 + 32);
  *(v0 + 32) = 0x8000000000000000;
  sub_1AF854B5C(v79, 0xD000000000000011, 0x80000001AFF3BFD0, v83);
  *(v0 + 32) = v127;
  v84 = swift_allocObject();
  v85 = (v84 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_payload);
  *v85 = 0u;
  v85[1] = 0u;
  v86 = (v84 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID);
  *v86 = 0xD000000000000012;
  v86[1] = 0x80000001AFF3BFF0;
  *(v84 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_inputCount) = 1;
  v87 = (v84 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_decodeFn);
  *v87 = sub_1AF9673B4;
  v87[1] = 0;
  v84[4] = 0;
  v88 = MEMORY[0x1E69E7CC0];
  v84[2] = MEMORY[0x1E69E7CC0];
  v84[3] = 0;
  sub_1AFDFC308();
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v128 = *(v0 + 32);
  *(v0 + 32) = 0x8000000000000000;
  sub_1AF854B5C(v84, 0xD000000000000012, 0x80000001AFF3BFF0, v89);
  *(v0 + 32) = v128;
  v90 = swift_allocObject();
  v91 = (v90 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_payload);
  *v91 = 0u;
  v91[1] = 0u;
  v92 = (v90 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID);
  *v92 = 0xD000000000000014;
  v92[1] = 0x80000001AFF3C010;
  *(v90 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_inputCount) = 1;
  v93 = (v90 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_decodeFn);
  *v93 = sub_1AF9673B4;
  v93[1] = 0;
  v90[3] = 0;
  v90[4] = 0;
  v90[2] = v88;
  sub_1AFDFC308();
  v94 = swift_isUniquelyReferenced_nonNull_native();
  v129 = *(v0 + 32);
  *(v0 + 32) = 0x8000000000000000;
  sub_1AF854B5C(v90, 0xD000000000000014, 0x80000001AFF3C010, v94);
  *(v0 + 32) = v129;
  v95 = swift_allocObject();
  v96 = &v95[OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_payload];
  *v96 = 0u;
  *(v96 + 1) = 0u;
  v97 = &v95[OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID];
  strcpy(&v95[OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID], "SinEaseInNode");
  *(v97 + 7) = -4864;
  *&v95[OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_inputCount] = 1;
  v98 = &v95[OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_decodeFn];
  *v98 = sub_1AF9673B4;
  v98[1] = 0;
  *(v95 + 4) = 0;
  v99 = MEMORY[0x1E69E7CC0];
  *(v95 + 2) = MEMORY[0x1E69E7CC0];
  *(v95 + 3) = 0;
  sub_1AFDFC308();
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v130 = *(v0 + 32);
  *(v0 + 32) = 0x8000000000000000;
  sub_1AF854B5C(v95, 0x49657361456E6953, 0xED000065646F4E6ELL, v100);
  *(v0 + 32) = v130;
  v101 = swift_allocObject();
  v102 = &v101[OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_payload];
  *v102 = 0u;
  *(v102 + 1) = 0u;
  v103 = &v101[OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID];
  strcpy(&v101[OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID], "SinEaseOutNode");
  v103[15] = -18;
  *&v101[OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_inputCount] = 1;
  v104 = &v101[OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_decodeFn];
  *v104 = sub_1AF9673B4;
  v104[1] = 0;
  *(v101 + 3) = 0;
  *(v101 + 4) = 0;
  *(v101 + 2) = v99;
  sub_1AFDFC308();
  v105 = swift_isUniquelyReferenced_nonNull_native();
  v131 = *(v0 + 32);
  *(v0 + 32) = 0x8000000000000000;
  sub_1AF854B5C(v101, 0x4F657361456E6953, 0xEE0065646F4E7475, v105);
  *(v0 + 32) = v131;
  v106 = swift_allocObject();
  v107 = (v106 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_payload);
  *v107 = 0u;
  v107[1] = 0u;
  v108 = (v106 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID);
  *v108 = 0xD000000000000010;
  v108[1] = 0x80000001AFF3C030;
  *(v106 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_inputCount) = 1;
  v109 = (v106 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_decodeFn);
  *v109 = sub_1AF9673B4;
  v109[1] = 0;
  v106[3] = 0;
  v106[4] = 0;
  v106[2] = v99;
  sub_1AFDFC308();
  v110 = swift_isUniquelyReferenced_nonNull_native();
  v132 = *(v0 + 32);
  *(v0 + 32) = 0x8000000000000000;
  result = sub_1AF854B5C(v106, 0xD000000000000010, 0x80000001AFF3C030, v110);
  *(v0 + 32) = v132;
  return result;
}

uint64_t sub_1AF966618@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1AF441150(a1, a1[3]);
  result = sub_1AFDFF388();
  if (!v2)
  {
    sub_1AF448018(v5, v6);
    *a2 = sub_1AFDFEAF8();
    sub_1AF448018(v5, v6);
    sub_1AF47FEB4();
    sub_1AFDFEAD8();
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5);
  }

  return result;
}

uint64_t sub_1AF96670C()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for GraphNodeLibrary.NodeCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GraphNodeLibrary.NodeCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1AF9668F4()
{
  result = qword_1EB6407B0;
  if (!qword_1EB6407B0)
  {
    sub_1AF967124(255, &qword_1EB6407B8, &type metadata for GraphNodeLibrary.NodeCategory, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6407B0);
  }

  return result;
}

unint64_t sub_1AF966974()
{
  result = qword_1EB6407C0;
  if (!qword_1EB6407C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6407C0);
  }

  return result;
}

uint64_t sub_1AF9669C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EB633230 != -1)
  {
    swift_once();
  }

  v2 = qword_1EB6C29D0;
  sub_1AF967124(0, &qword_1EB633AA0, &type metadata for ScriptKeyPath, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C630;
  KeyPath = swift_getKeyPath();
  *(inited + 32) = 0x656C6269736956;
  *(inited + 40) = 0xE700000000000000;
  v5 = MEMORY[0x1E69E6370];
  *(inited + 48) = KeyPath;
  *(inited + 56) = v5;
  *(inited + 64) = 0;
  *(inited + 72) = 1;
  *(inited + 74) = 0;
  v6 = swift_getKeyPath();
  v7 = MEMORY[0x1E69E6448];
  *(inited + 80) = 0x7974696361704FLL;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = v6;
  *(inited + 104) = v7;
  *(inited + 112) = 0;
  *(inited + 120) = 1;
  *(inited + 122) = 0;
  v8 = swift_getKeyPath();
  v9 = MEMORY[0x1E69E6530];
  *(inited + 128) = 0x726564724FLL;
  *(inited + 136) = 0xE500000000000000;
  *(inited + 144) = v8;
  *(inited + 152) = v9;
  *(inited + 160) = 0;
  *(inited + 168) = 1;
  *(inited + 170) = 0;
  v10 = swift_getKeyPath();
  strcpy((inited + 176), "Casts Shadow");
  *(inited + 189) = 0;
  *(inited + 190) = -5120;
  *(inited + 192) = v10;
  *(inited + 200) = v5;
  *(inited + 208) = 0;
  *(inited + 216) = 1;
  *(inited + 218) = 0;
  v11 = swift_getKeyPath();
  v12 = MEMORY[0x1E69E76D8];
  *(inited + 224) = 0x70756F7247;
  *(inited + 232) = 0xE500000000000000;
  *(inited + 240) = v11;
  *(inited + 248) = v12;
  *(inited + 256) = 0;
  *(inited + 264) = 1;
  *(inited + 266) = 0;
  v13 = swift_getKeyPath();
  v14 = MEMORY[0x1E69E6720];
  sub_1AF967174(0, &qword_1EB6332D8, sub_1AF44D084, MEMORY[0x1E69E6720]);
  *(inited + 272) = 0x736574617453;
  *(inited + 280) = 0xE600000000000000;
  *(inited + 288) = v13;
  *(inited + 296) = v15;
  *(inited + 304) = 0;
  *(inited + 312) = 1;
  *(inited + 314) = 0;
  v16 = swift_getKeyPath();
  sub_1AF967174(0, &qword_1EB633220, sub_1AF44D11C, v14);
  *(inited + 320) = 0x6574617453;
  *(inited + 328) = 0xE500000000000000;
  *(inited + 336) = v16;
  *(inited + 344) = v17;
  *(inited + 352) = 0;
  *(inited + 360) = 1;
  *(inited + 362) = 0;

  sub_1AF48FF94(inited);
  v18 = *(v2 + 16);
  if (v18)
  {
    sub_1AFDFE008();
    v19 = 0;
    while (1)
    {
      v21 = *(v2 + v19 + 32);
      v20 = *(v2 + v19 + 40);
      v31 = *(v2 + v19 + 48);
      v22 = *(v2 + v19 + 64);
      v23 = *(v2 + v19 + 72);
      v24 = *(v2 + v19 + 74);

      if (MEMORY[0x1B2719A10](v25, a1))
      {
        break;
      }

      v19 += 48;
      if (!--v18)
      {
        goto LABEL_7;
      }
    }

    v27 = v23 | (v24 << 16);
    v28 = v31;
  }

  else
  {
LABEL_7:

    v21 = 0;
    v20 = 0;
    v22 = 0;
    v27 = 0;
    v28 = 0uLL;
  }

  *a2 = v21;
  *(a2 + 8) = v20;
  *(a2 + 16) = v28;
  *(a2 + 32) = v22;
  *(a2 + 40) = v27;
  return result;
}

void *sub_1AF966D44(char *a1, _OWORD *a2, void *a3)
{
  swift_unknownObjectWeakInit();
  v12[1] = &off_1F256B790;
  swift_unknownObjectWeakAssign();
  v7 = *&a1[OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_identifier];
  v6 = *&a1[OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_identifier + 8];

  v12[2] = v7;
  v12[3] = v6;
  sub_1AF640200(v12, a3 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_target);
  v8 = (a3 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_scriptKeyPath);
  *(v8 + 28) = *(a2 + 28);
  v9 = a2[1];
  *v8 = *a2;
  v8[1] = v9;
  v10 = MEMORY[0x1E69E7CC0];
  a3[3] = 0;
  a3[4] = 0;
  a3[2] = v10;
  sub_1AFDFC308();
  return a3;
}

uint64_t sub_1AF966E30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 24);
  if (*(v6 + 16))
  {

    v7 = sub_1AF419914(a1, a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      if (*(*(v3 + 16) + 16))
      {
        sub_1AF0D3F10(v9);
        if (v10)
        {

          v11 = sub_1AF96FB80(1);

          return v11;
        }
      }
    }

    else
    {
    }
  }

  if (*(*(v3 + 32) + 16))
  {

    sub_1AF419914(a1, a2);
    if (v13)
    {

      v14 = sub_1AF96FB80(1);

      return v14;
    }
  }

  return 0;
}

uint64_t sub_1AF966F50()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v0;
  }
}

void sub_1AF966F9C()
{
  if (!qword_1EB6407C8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6407C8);
    }
  }
}

uint64_t sub_1AF966FFC(uint64_t a1)
{
  sub_1AF967058();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AF967058()
{
  if (!qword_1ED72F980)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED72F980);
    }
  }
}

void sub_1AF9670BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1AF967124(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AF967174(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1AF9671D8()
{
  result = qword_1EB630F38;
  if (!qword_1EB630F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB630F38);
  }

  return result;
}

unint64_t sub_1AF967240()
{
  result = qword_1EB6407D0;
  if (!qword_1EB6407D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6407D0);
  }

  return result;
}

unint64_t sub_1AF967298()
{
  result = qword_1EB6407D8;
  if (!qword_1EB6407D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6407D8);
  }

  return result;
}

unint64_t sub_1AF9672F0()
{
  result = qword_1EB6407E0;
  if (!qword_1EB6407E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6407E0);
  }

  return result;
}

unint64_t sub_1AF967348()
{
  result = qword_1EB6407E8;
  if (!qword_1EB6407E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6407E8);
  }

  return result;
}

uint64_t sub_1AF9673CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v12, v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t sub_1AF9674A8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9[5] = a5;
  v9[2] = a6;
  v9[3] = a7;
  v9[4] = a4;
  result = sub_1AF967AF8(a1 & 1, a2, a3, sub_1AF96E3AC, v9, a6, MEMORY[0x1E69E7CA8] + 8, a7);
  if (!v7)
  {
  }

  return result;
}
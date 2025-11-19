void *sub_1AFC6E1E8@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = 0;
  result = swift_unknownObjectWeakAssign();
  result[2] = 0x3E6C6C756E3CLL;
  result[3] = 0xE600000000000000;
  result[4] = 0;
  return result;
}

uint64_t sub_1AFC6E244()
{
  v50 = MEMORY[0x1E69E7CC0];
  v0 = sub_1AFC628C8(&selRef_morpher);
  if (v0)
  {
    v1 = v0;
    v2 = [v0 targets];

    sub_1AFC7235C();
    v40 = sub_1AFDFD418();
  }

  else
  {
    v40 = MEMORY[0x1E69E7CC0];
  }

  if (v40 >> 62)
  {
    v39 = sub_1AFDFE108();
  }

  else
  {
    v39 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v39)
  {
    v3 = 0;
    v38 = xmmword_1AFE22A20;
    do
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1B2719C70](v3, v40);
      }

      else
      {
        v4 = *(v40 + 8 * v3 + 32);
        swift_unknownObjectRetain();
      }

      v5 = [v4 name];
      if (v5)
      {
        v6 = v5;
        v7 = sub_1AFDFCEF8();
        v9 = v8;
      }

      else
      {
        v9 = 0xE800000000000000;
        v7 = 0x64656C7469746E55;
      }

      memset(v49, 0, sizeof(v49));
      sub_1AF44CBE4(v49, &v43);
      if (v45)
      {
        v10 = sub_1AF449D40(&v43, v48);
        MEMORY[0x1EEE9AC00](v10, v11);
        v12 = MEMORY[0x1E69E6448];
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath, v13);
        v14 = swift_getKeyPath();
        sub_1AFC7246C(0, &qword_1EB643A60, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for EntityGetSet);
        v15 = swift_allocObject();
        v15[4] = sub_1AFC73BB0;
        v15[5] = v14;
        v15[2] = sub_1AFC73BB4;
        v15[3] = v14;
        v15[6] = v14;
        sub_1AFC7246C(0, &unk_1ED722B70, v12, type metadata accessor for EntityGetSet);
        v16 = swift_allocObject();
        v16[4] = sub_1AFC73BB8;
        v16[5] = v15;
        v16[2] = sub_1AFC73BBC;
        v16[3] = v15;
        v16[6] = v14;
        sub_1AF0D5A54(v48, v47);
        swift_bridgeObjectRetain_n();

        swift_dynamicCast();
        v17 = v43;
        v18 = v7;
        v19 = v44;
        v41 = v45;
        v20 = v46;
        type metadata accessor for BindingPropertyDescription();
        v21 = swift_allocObject();
        *(v21 + 232) = *(&v17 + 1);
        *(v21 + 240) = v19;
        *(v21 + 248) = v41;
        *(v21 + 264) = v20;
        v22 = MEMORY[0x1E69E7CC0];
        *(v21 + 64) = 0u;
        *(v21 + 80) = 0u;
        *(v21 + 96) = 0u;
        *(v21 + 112) = 1;
        *(v21 + 128) = 0;
        *(v21 + 136) = 0;
        *(v21 + 120) = 0;
        *(v21 + 168) = 0;
        *(v21 + 176) = 0;
        *(v21 + 160) = v22;
        *(v21 + 184) = 0;
        *(v21 + 188) = 1;
        *(v21 + 192) = 0;
        *(v21 + 196) = 1;
        *(v21 + 200) = 0x1000100000000;
        *(v21 + 208) = 1;
        *(v21 + 210) = 0;
        *(v21 + 216) = 0;
        *(v21 + 224) = v17;
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v48);
        sub_1AFC723FC(v49, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        *(v21 + 16) = v18;
        *(v21 + 24) = v9;
        *(v21 + 32) = KeyPath;
        *(v21 + 40) = MEMORY[0x1E69E6448];
        *(v21 + 48) = 0;
        *(v21 + 56) = 1;
        *(v21 + 58) = 1152;
        v23 = *(v21 + 64);
        *(v21 + 64) = 0;
        *(v21 + 72) = 0;
        sub_1AF0FB8EC(v23);
        *(v21 + 144) = v38;
        *(v21 + 184) = 0;
        *(v21 + 188) = 1;
        *(v21 + 192) = 0;
        *(v21 + 196) = 1;
        *(v21 + 200) = 0;
        *(v21 + 204) = 1;
        *(v21 + 210) = 1152;
        *(v21 + 168) = 0;
        *(v21 + 176) = 0;

        *(v21 + 80) = v16;
        *(v21 + 88) = &off_1F2535378;

        swift_unknownObjectRelease();
        v24 = *(v21 + 64);
        v25 = sub_1AFC73BC0;
      }

      else
      {
        v26 = MEMORY[0x1E69E7CA0];
        v27 = sub_1AFC723FC(&v43, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1EEE9AC00](v27, v28);
        v29 = MEMORY[0x1E69E6448];
        v30 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v30, v31);
        v32 = swift_getKeyPath();
        sub_1AFC7246C(0, &qword_1EB643A60, v26 + 8, type metadata accessor for EntityGetSet);
        v33 = swift_allocObject();
        v33[4] = sub_1AFC722E8;
        v33[5] = v32;
        v33[2] = sub_1AFC722F0;
        v33[3] = v32;
        v33[6] = v32;
        sub_1AFC7246C(0, &unk_1ED722B70, v29, type metadata accessor for EntityGetSet);
        v16 = swift_allocObject();
        v16[4] = sub_1AFC722F8;
        v16[5] = v33;
        v16[2] = sub_1AFC72300;
        v16[3] = v33;
        v16[6] = v32;
        type metadata accessor for PropertyDescription();
        v21 = swift_allocObject();
        *(v21 + 64) = 0u;
        *(v21 + 80) = 0u;
        *(v21 + 96) = 0u;
        *(v21 + 112) = 1;
        *(v21 + 128) = 0;
        *(v21 + 136) = 0;
        *(v21 + 120) = 0;
        *(v21 + 176) = 0;
        *(v21 + 160) = MEMORY[0x1E69E7CC0];
        *(v21 + 168) = 0;
        *(v21 + 184) = 0;
        *(v21 + 188) = 1;
        *(v21 + 192) = 0;
        *(v21 + 196) = 1;
        *(v21 + 200) = 0x1000100000000;
        *(v21 + 208) = 1;
        *(v21 + 210) = 0;
        *(v21 + 216) = 0;
        swift_bridgeObjectRetain_n();

        sub_1AFC723FC(v49, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        *(v21 + 16) = v7;
        *(v21 + 24) = v9;
        *(v21 + 32) = v30;
        *(v21 + 40) = v29;
        *(v21 + 48) = 0;
        *(v21 + 56) = 1;
        *(v21 + 58) = 1152;
        v34 = *(v21 + 64);
        *(v21 + 64) = 0;
        *(v21 + 72) = 0;
        sub_1AF0FB8EC(v34);
        *(v21 + 144) = v38;
        *(v21 + 184) = 0;
        *(v21 + 188) = 1;
        *(v21 + 192) = 0;
        *(v21 + 196) = 1;
        *(v21 + 200) = 0;
        *(v21 + 204) = 1;
        *(v21 + 210) = 1152;
        *(v21 + 168) = 0;
        *(v21 + 176) = 0;

        *(v21 + 80) = v16;
        *(v21 + 88) = &off_1F2535378;

        swift_unknownObjectRelease();
        v24 = *(v21 + 64);
        v25 = sub_1AFC72304;
      }

      *(v21 + 64) = v25;
      *(v21 + 72) = v16;
      sub_1AF0FB8EC(v24);

      MEMORY[0x1B2718E00](v35);
      if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AFDFD458();
      }

      ++v3;
      sub_1AFDFD4B8();

      swift_unknownObjectRelease();
    }

    while (v39 != v3);
    v36 = v50;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v36;
}

uint64_t sub_1AFC6EAA0(uint64_t a1)
{
  if (![objc_opt_self() immediateMode])
  {
    sub_1AFC73A9C(v1, v12);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v12);
    if (Strong)
    {
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (!v10)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v10 = 0;
    }

    v3 = [v10 morpher];

    if (v3)
    {
      goto LABEL_3;
    }

LABEL_12:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v3 = v1[4];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_12;
  }

LABEL_3:
  sub_1AF0D5A54(a1, v12);
  if (swift_dynamicCast())
  {
    v5 = v11;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = sub_1AFDFCEC8();

  *&v7 = v5;
  [v3 setWeight:v6 forTargetNamed:v7];

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

void sub_1AFC6EC1C(uint64_t a1@<X8>)
{
  v2 = sub_1AFC628C8(&selRef_morpher);
  if (v2)
  {
    v3 = v2;
    v4 = sub_1AFDFCEC8();
    [v3 weightForTargetNamed_];
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 24) = MEMORY[0x1E69E6448];
  *a1 = v6;
}

uint64_t sub_1AFC6ECCC()
{
  if (qword_1EB6373B8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB6C3698;

  v1 = sub_1AFC6E244();
  sub_1AF48FA18(v1);
  return v0;
}

unint64_t sub_1AFC6ED6C()
{
  result = qword_1EB634120;
  if (!qword_1EB634120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB634120);
  }

  return result;
}

uint64_t sub_1AFC6EDC0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1AFDFE9D8();
  if (result >= v2)
  {
    if (v2)
    {
      return sub_1AFC6EEC0(0, v2, 1, a1);
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
      sub_1AF0D4478(0, &unk_1EB630CE0);
      v6 = sub_1AFDFD488();
      *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
    }

    v7 = v6 & 0xFFFFFFFFFFFFFF8;
    v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
    v8[1] = v5;
    sub_1AFC6F038(v8, v9, a1, v4);
    *(v7 + 16) = 0;
  }

  return result;
}

uint64_t sub_1AFC6EEC0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v22 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
    do
    {
      v26 = a3;
      v6 = *(v22 + 8 * a3);
      v24 = v5;
      v25 = v4;
      while (1)
      {
        v7 = *v4;
        v8 = v6;
        v9 = v7;
        v10 = [v8 name];
        v11 = sub_1AFDFCEF8();
        v13 = v12;

        v14 = [v9 name];
        v15 = sub_1AFDFCEF8();
        v17 = v16;

        if (v11 == v15 && v13 == v17)
        {
          break;
        }

        v19 = sub_1AFDFEE28();

        if (v19)
        {
          v20 = *v4;
          v6 = *(v4 + 8);
          *v4 = v6;
          *(v4 + 8) = v20;
          v4 -= 8;
          if (!__CFADD__(v5++, 1))
          {
            continue;
          }
        }

        goto LABEL_5;
      }

LABEL_5:
      a3 = v26 + 1;
      v4 = v25 + 8;
      v5 = v24 - 1;
    }

    while (v26 + 1 != a2);
  }

  return result;
}

uint64_t sub_1AFC6F038(id **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = a3;
    v8 = 0;
    v108 = *a1;
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v10 = v8;
      v11 = v8 + 1;
      if (v8 + 1 >= v6)
      {
        v26 = a4;
      }

      else
      {
        v109 = v6;
        v99 = v9;
        v101 = v5;
        v12 = *v7;
        v13 = *(*v7 + 8 * v11);
        v103 = v8;
        v14 = *(*v7 + 8 * v8);
        v15 = v13;
        v16 = v14;
        v17 = [v15 name];
        v18 = sub_1AFDFCEF8();
        v20 = v19;

        v21 = [v16 name];
        v22 = sub_1AFDFCEF8();
        v24 = v23;

        if (v18 == v22 && v20 == v24)
        {
          v111 = 0;
        }

        else
        {
          v111 = sub_1AFDFEE28();
        }

        v10 = v103;
        v7 = a3;
        v11 = v103 + 2;
        if (v103 + 2 < v109)
        {
          v27 = (v12 + 8 * v103 + 16);
          do
          {
            v113 = v11;
            v29 = *(v27 - 1);
            v30 = *v27;
            v31 = v29;
            v32 = [v30 name];
            v33 = sub_1AFDFCEF8();
            v35 = v34;

            v36 = [v31 name];
            v37 = sub_1AFDFCEF8();
            v39 = v38;

            if (v33 == v37 && v35 == v39)
            {

              v7 = a3;
              v11 = v113;
              if (v111)
              {
                goto LABEL_24;
              }
            }

            else
            {
              v28 = sub_1AFDFEE28();

              v7 = a3;
              v11 = v113;
              if ((v111 ^ v28))
              {
                goto LABEL_24;
              }
            }

            ++v11;
            ++v27;
          }

          while (v109 != v11);
          v11 = v109;
LABEL_24:
          v10 = v103;
        }

        v9 = v99;
        v5 = v101;
        v26 = a4;
        if (v10 < v11 && (v111 & 1) != 0)
        {
          v41 = 8 * v11 - 8;
          v42 = 8 * v10;
          v43 = v11;
          v44 = v10;
          do
          {
            if (v44 != --v43)
            {
              v45 = *v7;
              v46 = *(*v7 + v42);
              *(v45 + v42) = *(*v7 + v41);
              *(v45 + v41) = v46;
            }

            ++v44;
            v41 -= 8;
            v42 += 8;
          }

          while (v44 < v43);
        }
      }

      v47 = v7[1];
      if (v11 < v47 && v11 - v10 < v26)
      {
        if (v10 + v26 >= v47)
        {
          v49 = v7[1];
        }

        else
        {
          v49 = v10 + v26;
        }

        if (v10 + v26 == v11)
        {
          v11 = v49;
        }

        else
        {
          v100 = v9;
          v102 = v5;
          v106 = *v7;
          v107 = v49;
          v50 = *v7 + 8 * v11 - 8;
          v104 = v10;
          v51 = v10 - v11;
          do
          {
            v114 = v11;
            v52 = *(v106 + 8 * v11);
            v110 = v51;
            v112 = v50;
            v53 = v50;
            while (1)
            {
              v54 = *v53;
              v55 = v52;
              v56 = v54;
              v57 = [v55 name];
              v58 = sub_1AFDFCEF8();
              v60 = v59;

              v61 = [v56 name];
              v62 = sub_1AFDFCEF8();
              v64 = v63;

              if (v58 == v62 && v60 == v64)
              {
                break;
              }

              v66 = sub_1AFDFEE28();

              if (v66)
              {
                v67 = *v53;
                v52 = *(v53 + 8);
                *v53 = v52;
                *(v53 + 8) = v67;
                v53 -= 8;
                if (!__CFADD__(v51++, 1))
                {
                  continue;
                }
              }

              goto LABEL_42;
            }

LABEL_42:
            v11 = v114 + 1;
            v50 = v112 + 8;
            v51 = v110 - 1;
          }

          while (v114 + 1 != v107);
          v11 = v107;
          v9 = v100;
          v5 = v102;
          v10 = v104;
          v7 = a3;
        }
      }

      v115 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1AF4209A4(0, *(v9 + 2) + 1, 1, v9);
      }

      v70 = *(v9 + 2);
      v69 = *(v9 + 3);
      v71 = v70 + 1;
      if (v70 >= v69 >> 1)
      {
        v9 = sub_1AF4209A4(v69 > 1, v70 + 1, 1, v9);
      }

      *(v9 + 2) = v71;
      v72 = v9 + 32;
      v73 = &v9[16 * v70 + 32];
      *v73 = v10;
      *(v73 + 1) = v115;
      if (v70)
      {
        break;
      }

LABEL_3:
      v6 = v7[1];
      v8 = v115;
      if (v115 >= v6)
      {
        goto LABEL_74;
      }
    }

    while (1)
    {
      v74 = v71 - 1;
      if (v71 >= 4)
      {
        v78 = &v72[16 * v71];
        v79 = *(v78 - 7) - *(v78 - 8);
        v77 = *(v78 - 5) - *(v78 - 6);
        v80 = &v9[16 * v71];
        v75 = *v80;
        v76 = *(v80 + 1);
        if (v77 - v75 + v76 >= v79)
        {
          v83 = v71 - 2;
          v82 = *&v72[16 * v74 + 8] - *&v72[16 * v74];
          goto LABEL_68;
        }
      }

      else
      {
        if (v71 != 3)
        {
          v81 = *&v9[16 * v71 + 8] - *&v9[16 * v71];
          v82 = *&v72[16 * v74 + 8] - *&v72[16 * v74];
LABEL_65:
          if (v82 < v81)
          {
            goto LABEL_3;
          }

          goto LABEL_70;
        }

        v75 = *(v9 + 6);
        v76 = *(v9 + 7);
        v77 = *(v9 + 5) - *(v9 + 4);
      }

      v81 = v76 - v75;
      v82 = *&v72[16 * v74 + 8] - *&v72[16 * v74];
      if (v81 + v82 < v77)
      {
        goto LABEL_65;
      }

      v83 = v71 - 2;
LABEL_68:
      if (v77 < v82)
      {
        v74 = v83;
      }

LABEL_70:
      v84 = &v72[16 * v74];
      v85 = *(v84 - 2);
      v86 = *(v84 + 1);
      sub_1AFC6F6D8((*v7 + 8 * v85), (*v7 + 8 * *v84), (*v7 + 8 * v86), v108);
      if (v5)
      {
      }

      *(v84 - 2) = v85;
      *(v84 - 1) = v86;
      v87 = *(v9 + 2);
      v71 = v87 - 1;
      memmove(&v72[16 * v74], v84 + 16, 16 * (v87 - 1 - v74));
      *(v9 + 2) = v87 - 1;
      if (v87 <= 2)
      {
        goto LABEL_3;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_74:
  v88 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1AF650C88(v9);
  }

  v89 = v9 + 16;
  v90 = *(v9 + 2);
  if (v90 >= 2)
  {
    do
    {
      v91 = &v9[16 * v90];
      v92 = *v91;
      v93 = &v89[2 * v90];
      v94 = v93[1];
      sub_1AFC6F6D8((*a3 + 8 * *v91), (*a3 + 8 * *v93), (*a3 + 8 * v94), v88);
      if (v5)
      {
        break;
      }

      *v91 = v92;
      *(v91 + 1) = v94;
      v95 = *v89 - 1;
      memmove(&v89[2 * v90], v93 + 2, 16 * (*v89 - v90));
      *v89 = v95;
      v90 = v95;
    }

    while (v95 > 1);
  }
}

uint64_t sub_1AFC6F6D8(void **__dst, id *__src, id *a3, id *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != __src || &__src[v12] <= a4)
    {
      v29 = a4;
      memmove(a4, __src, 8 * v12);
      a4 = v29;
    }

    v54 = &a4[v12];
    v13 = a4;
    if (v10 >= 8 && v5 > v6)
    {
      v49 = a4;
      v48 = v6;
LABEL_32:
      v30 = v5 - 1;
      v31 = v4;
      v32 = v54;
      v51 = v5 - 1;
      v53 = v5;
      do
      {
        v33 = *--v32;
        v34 = *v30;
        v35 = v33;
        v36 = v34;
        v37 = [v35 name];
        v38 = sub_1AFDFCEF8();
        v40 = v39;

        v41 = [v36 name];
        v42 = sub_1AFDFCEF8();
        v44 = v43;

        if (v38 == v42 && v40 == v44)
        {

          v4 = (v31 - 8);
        }

        else
        {
          v46 = sub_1AFDFEE28();

          v4 = (v31 - 8);
          if (v46)
          {
            v13 = v49;
            if (v31 != v53)
            {
              *v4 = *v51;
            }

            if (v54 <= v49 || (v5 = v51, v51 <= v48))
            {
              v5 = v51;
              goto LABEL_49;
            }

            goto LABEL_32;
          }
        }

        v13 = v49;
        v30 = v51;
        if (v54 != v31)
        {
          *v4 = *v32;
        }

        v54 = v32;
        v31 = v4;
      }

      while (v32 > v49);
      v54 = v32;
      v5 = v53;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v54 = &v13[v9];
    if (v7 >= 8 && v5 < v4)
    {
      v50 = v4;
      while (1)
      {
        v52 = v5;
        v14 = *v13;
        v15 = *v5;
        v16 = v14;
        v17 = [v15 name];
        v18 = sub_1AFDFCEF8();
        v20 = v19;

        v21 = [v16 name];
        v22 = sub_1AFDFCEF8();
        v24 = v23;

        v25 = v18 == v22 && v20 == v24;
        if (v25)
        {
          break;
        }

        v26 = sub_1AFDFEE28();

        if ((v26 & 1) == 0)
        {
          goto LABEL_20;
        }

        v27 = v52;
        v5 = v52 + 1;
        v28 = v50;
        if (v6 != v52)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v6;
        if (v13 >= v54 || v5 >= v28)
        {
          goto LABEL_24;
        }
      }

LABEL_20:
      v27 = v13;
      v25 = v6 == v13++;
      v5 = v52;
      v28 = v50;
      if (v25)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v6 = *v27;
      goto LABEL_22;
    }

LABEL_24:
    v5 = v6;
  }

LABEL_49:
  if (v5 != v13 || v5 >= (v13 + ((v54 - v13 + (v54 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v13, 8 * ((v54 - v13) / 8));
  }

  return 1;
}

uint64_t sub_1AFC6FAC4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AF52957C(a1, a2, a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1AFC6FAFC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_1AF5295B8(a1, a2, a3);
  *a4 = result;
  return result;
}

unint64_t sub_1AFC6FB50@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AF5295F4(a1, a2, a3);
  *a4 = result;
  *(a4 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AFC6FB98@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AF529630(a1, a2, a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

__n128 sub_1AFC6FBD0@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF5298B8(a1, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1AFC6FC28@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AF52997C(a1, a2, a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1AFC6FC64@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_1AF5299B8(a1, a2, a3);
  *a4 = result;
  return result;
}

unint64_t sub_1AFC6FC94@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AF5299F4(a1, a2, a3);
  *a4 = result;
  *(a4 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_1AFC6FCD0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52B908(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_1AFC6FD30@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AF52CD50(a1, a2, a3);
  *a4 = result;
  *(a4 + 4) = BYTE4(result) & 1;
  return result;
}

__n128 sub_1AFC6FD90@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF52CDC8(a1, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

unint64_t sub_1AFC6FDE8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AF52CE04(a1, a2, a3);
  *a4 = result;
  *(a4 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AFC6FE24@<X0>(uint64_t a1@<X8>)
{
  result = sub_1AF5AA5A0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1AFC6FE5C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1AF5AA59C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1AFC6FEC8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_1AF52FBB4(a1, a2, a3);
  *a4 = result;
  return result;
}

unint64_t sub_1AFC6FEF8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AF52FCA8(a1, a2, a3);
  *a4 = result;
  *(a4 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_1AFC6FF44@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AF530900(a1, a2, a3);
  *a4 = result;
  *(a4 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_1AFC6FFB0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AF531AEC(a1, a2, a3);
  *a4 = result;
  *(a4 + 4) = BYTE4(result) & 1;
  return result;
}

__n128 sub_1AFC70010@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF531DA4(a1, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

void sub_1AFC700D0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    Set = type metadata accessor for EntityGetSet();
    if (!v5)
    {
      atomic_store(Set, a2);
    }
  }
}

void sub_1AFC7012C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = *a1;
  v6 = sub_1AFC52758();
  [v6 *a5];
}

__n128 sub_1AFC70188@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF531DA4(a1, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1AFC701EC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF5324FC(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1AFC70224@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF5325A4(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AFC70260@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF532658(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AFC70288@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF532658(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1AFC702D0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF5325A4(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AFC70318@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF5324FC(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AFC70360@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF529630(a1, a2, v3);
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

void sub_1AFC703CC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1AFC739C4(255, a3, sub_1AF43A0C8, MEMORY[0x1E69E6448], a4);
    Set = type metadata accessor for EntityGetSet();
    if (!v6)
    {
      atomic_store(Set, a2);
    }
  }
}

unint64_t sub_1AFC70448@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF5295F4(a1, a2, v3);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AFC704A4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF5295B8(a1, a2, v3);
  *a3 = result;
  return result;
}

uint64_t sub_1AFC704E4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF52957C(a1, a2, v3);
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

unint64_t sub_1AFC7052C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF5299F4(a1, a2, v3);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AFC70574@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF5299B8(a1, a2, v3);
  *a3 = result;
  return result;
}

uint64_t sub_1AFC705B4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF52997C(a1, a2, v3);
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

__n128 sub_1AFC705FC@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF5298B8(a1, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

unint64_t sub_1AFC70664@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AF53368C(a1, a2, a3);
  *a4 = result;
  *(a4 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AFC706A0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AF5337A0(a1, a2, a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

__n128 sub_1AFC706D8@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF534644(a1, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

unint64_t sub_1AFC70730@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AF534764(a1, a2, a3);
  *a4 = result;
  *(a4 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AFC7076C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF534A74(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1AFC707C8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AF534B58(a1, a2, a3);
  *a4 = result;
  *(a4 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AFC70804@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_1AF534B94(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1AFC7082C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF534B94(a1, a2, v3);
  *a3 = result;
  return result;
}

unint64_t sub_1AFC70874@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF534B58(a1, a2, v3);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AFC708E8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF534A74(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1AFC70930@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AF534BD0(a1, a2, a3);
  *a4 = result;
  *(a4 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AFC7096C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_1AF534C0C(a1, a2, a3);
  *a4 = result;
  return result;
}

unint64_t sub_1AFC7099C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AF535D8C(a1, a2, a3);
  *a4 = result;
  *(a4 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AFC709D8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_1AF535DC8(a1, a2, a3);
  *a4 = result;
  return result;
}

unint64_t sub_1AFC70A08@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AF535E04(a1, a2, a3);
  *a4 = result;
  *(a4 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AFC70A44@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_1AF535E40(a1, a2, a3);
  *a4 = result;
  return result;
}

unint64_t sub_1AFC70A74@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AF536080(a1, a2, a3);
  *a4 = result;
  *(a4 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AFC70AB0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_1AF5360BC(a1, a2, a3);
  *a4 = result;
  return result;
}

unint64_t sub_1AFC70AE0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AF5366E4(a1, a2, a3);
  *a4 = result;
  *(a4 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AFC70B1C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF536720(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AFC70B54@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_1AF5367C8(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1AFC70B7C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF5367C8(a1, a2, v3);
  *a3 = result;
  return result;
}

void sub_1AFC70BC4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5, SEL *a6)
{
  v7 = *a1;
  v8 = sub_1AFC59C10(a5);
  [v8 *a6];
}

uint64_t sub_1AFC70C28@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF536720(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1AFC70C70@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF5366E4(a1, a2, v3);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AFC70CB8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF535DC8(a1, a2, v3);
  *a3 = result;
  return result;
}

unint64_t sub_1AFC70CF8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF535D8C(a1, a2, v3);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AFC70D40@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF535E40(a1, a2, v3);
  *a3 = result;
  return result;
}

unint64_t sub_1AFC70D80@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF535E04(a1, a2, v3);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AFC70DC8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF534C0C(a1, a2, v3);
  *a3 = result;
  return result;
}

unint64_t sub_1AFC70E08@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF534BD0(a1, a2, v3);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AFC70E50@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF5360BC(a1, a2, v3);
  *a3 = result;
  return result;
}

unint64_t sub_1AFC70E90@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF536080(a1, a2, v3);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_1AFC70ED8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AF536804(a1, a2, a3);
  *a4 = result;
  *(a4 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AFC70F14@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_1AF536840(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1AFC70F3C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF536840(a1, a2, v3);
  *a3 = result;
  return result;
}

unint64_t sub_1AFC70F84@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF536804(a1, a2, v3);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AFC70FCC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AF53687C(a1, a2, a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

unint64_t sub_1AFC71008@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AF5368B8(a1, a2, a3);
  *a4 = result;
  *(a4 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AFC71044@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_1AF5368F4(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1AFC7108C@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

uint64_t sub_1AFC710CC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AF536DAC(a1, a2, a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

unint64_t sub_1AFC71108@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AF536EB4(a1, a2, a3);
  *a4 = result;
  *(a4 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AFC71144@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_1AF536FC8(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1AFC7116C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF536FC8(a1, a2, v3);
  *a3 = result;
  return result;
}

unint64_t sub_1AFC711B4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF536EB4(a1, a2, v3);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AFC711FC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF536DAC(a1, a2, v3);
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1AFC71270@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF5368F4(a1, a2, v3);
  *a3 = result;
  return result;
}

unint64_t sub_1AFC712B0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF5368B8(a1, a2, v3);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AFC712F8(uint64_t a1@<X3>, uint64_t (*a2)(uint64_t)@<X4>, SEL *a3@<X5>, void *a4@<X8>)
{
  v6 = a2(a1);
  if (v6)
  {
    v7 = v6;
    [v6 *a3];
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9;
}

void sub_1AFC71360(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), SEL *a7)
{
  v8 = *a1;
  v9 = a6(a5);
  [v9 *a7];
}

uint64_t sub_1AFC713C8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF53687C(a1, a2, v3);
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

void sub_1AFC71410(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), SEL *a7)
{
  v8 = *a1;
  v9 = a6(a5);
  [v9 *a7];
}

uint64_t sub_1AFC71478@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF5337A0(a1, a2, v3);
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

unint64_t sub_1AFC714C0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF53368C(a1, a2, v3);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AFC71548(uint64_t a1@<X3>, uint64_t (*a2)(uint64_t)@<X4>, SEL *a3@<X5>, _OWORD *a4@<X8>)
{
  v6 = a2(a1);
  if (v6)
  {
    v7 = v6;
    [v6 *a3];
    v10 = v8;

    v9 = v10;
  }

  else
  {
    v9 = 0uLL;
  }

  *a4 = v9;
}

void sub_1AFC715B4(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), SEL *a7)
{
  v9 = *a1;
  v8 = a6(a5);
  [v8 *a7];
}

unint64_t sub_1AFC71618@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF530900(a1, a2, v3);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AFC71660(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), SEL *a7)
{
  v8 = *a1;
  v10 = a6(a5);
  LODWORD(v9) = v8;
  [v10 *a7];
}

uint64_t sub_1AFC716C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF5AA5A0(a1, a2, v3);
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1AFC71710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF5AA59C(a1, a2, v3);
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

unint64_t sub_1AFC71758@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF52FCA8(a1, a2, v3);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AFC717A0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF52FBB4(a1, a2, v3);
  *a3 = result;
  return result;
}

void sub_1AFC717E0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5, SEL *a6)
{
  v7 = *a1;
  v8 = sub_1AFC628C8(a5);
  [v8 *a6];
}

void sub_1AFC718AC(SEL *a1@<X3>, SEL *a2@<X4>, _OWORD *a3@<X8>)
{
  v5 = sub_1AFC628C8(a1);
  if (v5)
  {
    v6 = v5;
    [v5 *a2];
    v9 = v7;

    v8 = v9;
  }

  else
  {
    v8 = 0uLL;
  }

  *a3 = v8;
}

void sub_1AFC71914(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5, SEL *a6)
{
  v8 = *a1;
  v7 = sub_1AFC628C8(a5);
  [v7 *a6];
}

void sub_1AFC71974(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5, SEL *a6)
{
  v7 = *a1;
  v8 = sub_1AFC628C8(a5);
  [v8 *a6];
}

void sub_1AFC719EC(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5, SEL *a6)
{
  v7 = *a1;
  v9 = sub_1AFC628C8(a5);
  LODWORD(v8) = v7;
  [v9 *a6];
}

uint64_t sub_1AFC71A50@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  (*(a1 + 32))(v5);
  sub_1AFC7246C(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  result = swift_dynamicCast();
  v4 = v6;
  if (!result)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = result ^ 1;
  return result;
}

uint64_t sub_1AFC71AEC()
{
  if (swift_dynamicCastMetatype())
  {
    v0 = 0;
    v1 = 3;
  }

  else if (swift_dynamicCastMetatype())
  {
    v0 = 0;
    v1 = 45;
  }

  else if (swift_dynamicCastMetatype())
  {
    v0 = 0;
    v1 = 2;
  }

  else
  {
    sub_1AFC739C4(0, &qword_1ED722EC0, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7428]);
    if (swift_dynamicCastMetatype())
    {
      v0 = 0;
      v1 = 17;
    }

    else
    {
      sub_1AFC739C4(0, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
      if (swift_dynamicCastMetatype())
      {
        v0 = 0;
        v1 = 18;
      }

      else
      {
        sub_1AFC739C4(0, &qword_1ED722EB8, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E74A8]);
        if (swift_dynamicCastMetatype())
        {
          v0 = 0;
          v1 = 19;
        }

        else if (swift_dynamicCastMetatype())
        {
          v0 = 0;
          v1 = 1;
        }

        else
        {
          sub_1AFC739C4(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
          if (swift_dynamicCastMetatype())
          {
            v0 = 0;
            v1 = 7;
          }

          else
          {
            sub_1AFC739C4(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
            if (swift_dynamicCastMetatype())
            {
              v0 = 0;
              v1 = 8;
            }

            else
            {
              sub_1AFC739C4(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
              if (swift_dynamicCastMetatype())
              {
                v0 = 0;
                v1 = 9;
              }

              else
              {
                type metadata accessor for simd_float3x3(0);
                if (swift_dynamicCastMetatype())
                {
                  v0 = 0;
                  v1 = 11;
                }

                else
                {
                  type metadata accessor for simd_float4x4(0);
                  if (swift_dynamicCastMetatype())
                  {
                    v0 = 0;
                    v1 = 10;
                  }

                  else
                  {
                    type metadata accessor for simd_quatf(0);
                    v2 = swift_dynamicCastMetatype();
                    v0 = v2 == 0;
                    if (v2)
                    {
                      v1 = 9;
                    }

                    else
                    {
                      v1 = 0;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v1 | (v0 << 16);
}

uint64_t sub_1AFC71E04()
{
  sub_1AFC73A9C((v0 + 8), v14);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v14);
  if (Strong)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = [v2 presentationObject];
      swift_unknownObjectRelease();
      sub_1AFDFDFB8();
      swift_unknownObjectRelease();
      sub_1AF0D4478(0, &qword_1ED72E0B0);
      if (swift_dynamicCast())
      {
        v4 = v14[0];
        v5 = [v14[0] materialRef];
        if (v5 && (v6 = v5, swift_unknownObjectRetain(), v7 = sub_1AFDFCEC8(), v8 = sub_1AF1DB6D0(v6, v7, 0), swift_unknownObjectRelease(), v7, v8))
        {
          v9 = sub_1AFC71AEC();
          if ((v9 & 0x10000) != 0)
          {
          }

          else
          {
            v10 = v9;
            v11 = v8;
            if (sub_1AF1DE538(v11) == v10)
            {
              v12 = sub_1AF1DE3A8(v11);

              return v12;
            }
          }
        }

        else
        {
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 0;
}

unint64_t sub_1AFC71FF0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52B908(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_1AFC72038@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF534764(a1, a2, v3);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

__n128 sub_1AFC72080@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF534644(a1, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

unint64_t sub_1AFC720E4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF52CE04(a1, a2, v3);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AFC7212C(double (*a1)(void)@<X3>, _OWORD *a2@<X8>)
{
  *&v3 = a1();
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

__n128 sub_1AFC72160@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF52CDC8(a1, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

unint64_t sub_1AFC721F0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF531AEC(a1, a2, v3);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AFC72250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  result = a3(a1, a2, v4);
  *a4 = result;
  *(a4 + 8) = v7;
  *(a4 + 16) = v8 & 1;
  return result;
}

unint64_t sub_1AFC722A0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF52CD50(a1, a2, v3);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AFC7230C(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = *a3;
  v7 = MEMORY[0x1E69E6448];
  v6[0] = v4;
  (*(v3 + 16))(a1, a2, v6);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v6);
}

unint64_t sub_1AFC7235C()
{
  result = qword_1EB643A68;
  if (!qword_1EB643A68)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB643A68);
  }

  return result;
}

uint64_t sub_1AFC723DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AFC723FC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AFC7246C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1AFC7246C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AFC724BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v8 = sub_1AF6496EC(a2);

  v9 = sub_1AF682350(v8);
  v10 = *(v9 + 16);
  if (!v10)
  {
  }

  v47 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
  v49 = (a3 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v11 = 32;
  v12 = v9;
  v53 = a4;
  v55 = a3;
  v51 = v9;
  v52 = a1;
  while (1)
  {
    v64 = v10;
    v13 = *(v12 + v11 + 8);
    v14 = *(v13 + 8);
    v56 = *(v12 + v11);
    v15 = *(v12 + v11);
    if (sub_1AF6411A4(v15) < 1)
    {
      goto LABEL_4;
    }

    if (*(a1 + 184))
    {
      goto LABEL_28;
    }

    v17 = *(*(a1 + 168) + 4 * a2);
    v18 = *(*(v16 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v17 + 8);

    v54 = v18;
    v19 = v17 | (v18 << 32);

    v20 = sub_1AF6824B0(v15, v13, v19);
    if (!v20)
    {
      break;
    }

    v21 = v20;
    if (sub_1AF640D40(v15))
    {
      v63 = v56;
      v22 = sub_1AF585714(&v61);
      sub_1AF641154(v21, v15, v22);
      v23 = *(v14 + 48);

      if (v23(v15, v14))
      {
        v48 = v17;
        v24 = *(v55 + v47);
        ecs_stack_allocator_push_snapshot(*(*v24 + 32));
        v57 = v24;
        v25 = *(*v24 + 32);
        v26 = sub_1AF640D40(v15);
        v27 = sub_1AF6411A8(v15);
        v50 = ecs_stack_allocator_allocate(v25, v26, v27);
        sub_1AF641760();
        v28 = v63;
        sub_1AF448018(&v61, v63);
        (*(*(*(&v28 + 1) + 8) + 96))(v53, &off_1F2532000, v28);
        v29 = sub_1AF6824B0(v15, v13, v19);
        v30 = v63;
        v31 = sub_1AF441150(&v61, v63);
        v59 = v30;
        v60 = *(*(&v30 + 1) + 8);
        v32 = sub_1AF585714(v58);
        (*(*(v30 - 8) + 16))(v32, v31, v30);
        sub_1AF6411D8(v58, v29, v15);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v58);
        if (v48 == -1 && !v54)
        {
          goto LABEL_28;
        }

        if ((v48 & 0x80000000) != 0)
        {
          goto LABEL_28;
        }

        if (v49[1] <= v48)
        {
          goto LABEL_28;
        }

        v33 = (*v49 + 12 * v48);
        if (v54 != -1 && v33[2] != v54)
        {
          goto LABEL_28;
        }

        v34 = *(v33 + 2);
        v35 = *(*(v55 + 144) + 8 * *v33 + 32);
        v36 = *(v14 + 88);

        if (v36(v50, v21, v15, v14))
        {
          v37 = *(v35 + 192);
          if (v37)
          {
            v38 = *(v35 + 208);
            *(v37 + 8 * (v34 >> 6)) |= 1 << v34;
            *(v38 + 8 * (v34 >> 6)) &= ~(1 << v34);
          }

          sub_1AF705804(v34);
        }

        else
        {
        }

        sub_1AF640BC8();
        ecs_stack_allocator_pop_snapshot(*(*v57 + 32));
      }

      else
      {
        v39 = v63;
        sub_1AF448018(&v61, v63);
        (*(*(*(&v39 + 1) + 8) + 96))(v53, &off_1F2532000, v39);
        v40 = sub_1AF6824B0(v15, v13, v19);
        v41 = v63;
        v42 = sub_1AF441150(&v61, v63);
        v59 = v41;
        v60 = *(*(&v41 + 1) + 8);
        v43 = sub_1AF585714(v58);
        (*(*(v41 - 8) + 16))(v43, v42, v41);
        sub_1AF6411D8(v58, v40, v15);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v58);
      }

      v12 = v51;
      a1 = v52;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v61);
    }

    else
    {

      v12 = v51;
      a1 = v52;
    }

LABEL_4:
    v11 += 16;
    v10 = v64 - 1;
    if (v64 == 1)
    {
    }
  }

  v61 = 0;
  v62 = 0xE000000000000000;
  sub_1AFDFE218();

  v61 = 0x20797469746E45;
  v62 = 0xE700000000000000;
  v45 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v45);

  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EA10);
  v46 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v46);

LABEL_28:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AFC72B78()
{
  MEMORY[0x1B271E060]();

  JUMPOUT(0x1B271E060);
}

uint64_t sub_1AFC72BB8(uint64_t a1, void *a2)
{
  v4 = swift_unknownObjectWeakCopyInit();
  v5 = a2[2];
  *(v4 + 8) = a2[1];
  *(v4 + 16) = v5;
  *(a1 + 24) = a2[3];

  swift_unknownObjectWeakCopyInit();
  return a1;
}

uint64_t sub_1AFC72C04(uint64_t a1, void *a2)
{
  v4 = swift_unknownObjectWeakCopyAssign();
  *(v4 + 8) = a2[1];
  *(v4 + 16) = a2[2];
  *(a1 + 24) = a2[3];

  swift_unknownObjectWeakCopyAssign();
  return a1;
}

uint64_t sub_1AFC72C6C(uint64_t a1, uint64_t a2)
{
  v4 = swift_unknownObjectWeakTakeInit();
  *(v4 + 8) = *(a2 + 8);
  *(v4 + 16) = *(a2 + 16);
  swift_unknownObjectWeakTakeInit();
  return a1;
}

uint64_t sub_1AFC72CB4(uint64_t a1, uint64_t a2)
{
  *(swift_unknownObjectWeakTakeAssign() + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);

  swift_unknownObjectWeakTakeAssign();
  return a1;
}

uint64_t sub_1AFC72DD4(uint64_t a1)
{
  MEMORY[0x1B271E060]();
}

void *sub_1AFC72E1C(void *a1, void *a2)
{
  v4 = swift_unknownObjectWeakCopyInit();
  v5 = a2[2];
  *(v4 + 8) = a2[1];
  *(v4 + 16) = v5;
  v6 = a2[4];
  a1[3] = a2[3];
  a1[4] = v6;
  v7 = a2[5];
  v8 = a2[6];
  a1[5] = v7;
  a1[6] = v8;

  v9 = v6;

  return a1;
}

void *sub_1AFC72E78(void *a1, void *a2)
{
  v4 = swift_unknownObjectWeakCopyAssign();
  *(v4 + 8) = a2[1];
  *(v4 + 16) = a2[2];
  a1[3] = a2[3];

  v5 = a1[4];
  v6 = a2[4];
  a1[4] = v6;
  v7 = v6;

  a1[5] = a2[5];
  a1[6] = a2[6];

  return a1;
}

__n128 sub_1AFC72F08(uint64_t a1, uint64_t a2)
{
  v3 = swift_unknownObjectWeakTakeInit();
  *(v3 + 8) = *(a2 + 8);
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(v3 + 40) = result;
  return result;
}

void *sub_1AFC72F4C(void *a1, uint64_t a2)
{
  *(swift_unknownObjectWeakTakeAssign() + 8) = *(a2 + 8);
  a1[3] = *(a2 + 24);

  v4 = a1[4];
  a1[4] = *(a2 + 32);

  v5 = *(a2 + 48);
  a1[5] = *(a2 + 40);
  a1[6] = v5;

  return a1;
}

uint64_t sub_1AFC72FB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AFC72FFC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
      *(result + 8) = 1;
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

uint64_t destroy for MaterialController(id *a1)
{
  MEMORY[0x1B271E060](a1 + 1);
}

void *initializeWithCopy for MaterialController(void *a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  v5 = v4;
  swift_unknownObjectWeakCopyInit();
  v6 = *(a2 + 24);
  a1[2] = *(a2 + 16);
  a1[3] = v6;
  v7 = *(a2 + 40);
  a1[4] = *(a2 + 32);
  a1[5] = v7;
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  a1[6] = v8;
  a1[7] = v9;

  v10 = v7;

  return a1;
}

uint64_t assignWithCopy for MaterialController(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  swift_unknownObjectWeakCopyAssign();
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  v7 = *(a1 + 40);
  v8 = *(a2 + 40);
  *(a1 + 40) = v8;
  v9 = v8;

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t initializeWithTake for MaterialController(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_unknownObjectWeakTakeInit();
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t assignWithTake for MaterialController(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  swift_unknownObjectWeakTakeAssign();
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);

  v5 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);

  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v6;

  return a1;
}

uint64_t getEnumTagSinglePayload for MaterialController(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 16) & 0xF000000000000007) != 0)
  {
    v2 = *(a1 + 8) & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MaterialController(uint64_t result, int a2, int a3)
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
      *(result + 16) = 1;
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

void destroy for ModelController(uint64_t a1)
{
  MEMORY[0x1B271E060](a1 + 8);

  v2 = *(a1 + 40);
}

void *initializeWithCopy for ModelController(void *a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  v5 = v4;
  swift_unknownObjectWeakCopyInit();
  v6 = *(a2 + 24);
  a1[2] = *(a2 + 16);
  a1[3] = v6;
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  a1[4] = v7;
  a1[5] = v8;

  v9 = v8;
  return a1;
}

uint64_t assignWithCopy for ModelController(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  swift_unknownObjectWeakCopyAssign();
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  v7 = *(a1 + 40);
  v8 = *(a2 + 40);
  *(a1 + 40) = v8;
  v9 = v8;

  return a1;
}

uint64_t initializeWithTake for ModelController(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_unknownObjectWeakTakeInit();
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for ModelController(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  swift_unknownObjectWeakTakeAssign();
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);

  v5 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t getEnumTagSinglePayload for ModelController(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 16) & 0xF000000000000007) != 0)
  {
    v2 = *(a1 + 8) & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ModelController(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
      *(result + 16) = 1;
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

uint64_t sub_1AFC73620(uint64_t a1, void *a2)
{
  v4 = swift_unknownObjectWeakCopyInit();
  v5 = a2[2];
  *(v4 + 8) = a2[1];
  *(v4 + 16) = v5;
  *(a1 + 24) = a2[3];

  return a1;
}

uint64_t sub_1AFC73660(uint64_t a1, void *a2)
{
  v4 = swift_unknownObjectWeakCopyAssign();
  *(v4 + 8) = a2[1];
  *(v4 + 16) = a2[2];
  *(a1 + 24) = a2[3];

  return a1;
}

uint64_t sub_1AFC736B4(uint64_t a1, uint64_t a2)
{
  *(swift_unknownObjectWeakTakeAssign() + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t sub_1AFC736F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AFC73744(uint64_t result, int a2, int a3)
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
      *(result + 8) = 1;
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

void sub_1AFC73798(uint64_t a1)
{
  MEMORY[0x1B271E060]();

  v2 = *(a1 + 32);
}

uint64_t sub_1AFC737D8(uint64_t a1, void *a2)
{
  v4 = swift_unknownObjectWeakCopyInit();
  v5 = a2[2];
  *(v4 + 8) = a2[1];
  *(v4 + 16) = v5;
  v6 = a2[3];
  v7 = a2[4];
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;

  v8 = v7;
  return a1;
}

uint64_t sub_1AFC7381C(uint64_t a1, void *a2)
{
  v4 = swift_unknownObjectWeakCopyAssign();
  *(v4 + 8) = a2[1];
  *(v4 + 16) = a2[2];
  *(a1 + 24) = a2[3];

  v5 = *(a1 + 32);
  v6 = a2[4];
  *(a1 + 32) = v6;
  v7 = v6;

  return a1;
}

__n128 sub_1AFC7388C(uint64_t a1, __n128 *a2)
{
  v3 = swift_unknownObjectWeakTakeInit();
  v3->n128_u64[1] = a2->n128_u64[1];
  result = a2[1];
  v3[1] = result;
  v3[2].n128_u64[0] = a2[2].n128_u64[0];
  return result;
}

uint64_t sub_1AFC738C8(uint64_t a1, uint64_t a2)
{
  *(swift_unknownObjectWeakTakeAssign() + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);

  v4 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t sub_1AFC7391C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AFC73968(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
      *(result + 8) = 1;
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

void sub_1AFC739C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1AFC73A2C(uint64_t a1)
{
  MEMORY[0x1B271E060]();

  MEMORY[0x1B271E060](a1 + 32);
  return a1;
}

void *sub_1AFC73A9C(void *a1, void *a2)
{
  swift_unknownObjectWeakCopyInit();
  v4 = a1[2];
  a2[1] = a1[1];
  a2[2] = v4;
  a2[3] = a1[3];

  return a2;
}

void sub_1AFC73D08()
{
  v0 = sub_1AFDFCEC8();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  qword_1EB643AF0 = v1;
}

uint64_t static VFXScene.vfxAssetsFrameworkBundle.getter()
{
  if (qword_1EB6373C0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB643AF0;
  v1 = qword_1EB643AF0;
  return v0;
}

char *sub_1AFC73E30()
{
  result = sub_1AFC73E50();
  qword_1EB643AF8 = result;
  return result;
}

char *sub_1AFC73E50()
{
  v33 = sub_1AFDFC128();
  v0 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v1);
  v3 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v29 - v6;
  if (qword_1EB6373C0 != -1)
  {
    swift_once();
  }

  v8 = qword_1EB643AF0;
  if (!qword_1EB643AF0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v9 = sub_1AFDFCEC8();
  v10 = [v8 URLsForResourcesWithExtension:v9 subdirectory:0];

  if (!v10)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v11 = sub_1AFDFD418();

  v12 = v11;
  v13 = *(v11 + 16);
  if (!v13)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v15 = *(v0 + 16);
  v14 = v0 + 16;
  v16 = *(v14 + 64);
  v29[1] = v12;
  v17 = v12 + ((v16 + 32) & ~v16);
  v30 = *(v14 + 56);
  v31 = v15;
  v32 = v14;
  v18 = (v14 - 8);
  v19 = MEMORY[0x1E69E7CC0];
  do
  {
    v20 = v33;
    v31(v7, v17, v33);
    sub_1AFDFC068();
    v21 = *v18;
    (*v18)(v7, v20);
    v22 = sub_1AFDFC028();
    v24 = v23;
    v21(v3, v20);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1AF420554(0, *(v19 + 2) + 1, 1, v19);
    }

    v26 = *(v19 + 2);
    v25 = *(v19 + 3);
    if (v26 >= v25 >> 1)
    {
      v19 = sub_1AF420554(v25 > 1, v26 + 1, 1, v19);
    }

    *(v19 + 2) = v26 + 1;
    v27 = &v19[16 * v26];
    *(v27 + 4) = v22;
    *(v27 + 5) = v24;
    v17 += v30;
    --v13;
  }

  while (v13);

  return v19;
}

uint64_t static VFXScene.builtinEffectIdentifiers.getter()
{
  if (qword_1EB6373C8 != -1)
  {
    swift_once();
  }
}

uint64_t static VFXScene.builtinEffectIdentifiers.setter(uint64_t a1)
{
  if (qword_1EB6373C8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  qword_1EB643AF8 = a1;
}

double (*static VFXScene.builtinEffectIdentifiers.modify())()
{
  if (qword_1EB6373C8 != -1)
  {
    swift_once();
  }

  return nullsub_106;
}

id VFXScene.__allocating_init(identifier:)()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = objc_allocWithZone(v0);
  v2 = sub_1AFDFCEC8();

  v7[0] = 0;
  v3 = [v1 initWithIdentifier:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_1AFDFBF58();

    swift_willThrow();
  }

  return v3;
}

id VFXScene.init(identifier:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v25 = *MEMORY[0x1E69E9840];
  sub_1AF455364();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AFDFC128();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VFXScene(0);
  sub_1AFC74754(a1, a2, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1AF456B8C(v9);
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1AFDFE218();

    v23 = 0xD00000000000001FLL;
    v24 = 0x80000001AFF4C170;
    MEMORY[0x1B2718AE0](a1, a2);

    MEMORY[0x1B2718AE0](46, 0xE100000000000000);
    v15 = v23;
    v16 = v24;
    sub_1AFC74A8C();
    swift_allocError();
    *v17 = v15;
    *(v17 + 8) = v16;
    *(v17 + 16) = 0;
    swift_willThrow();
    swift_getObjectType();
    swift_deallocPartialClassInstance();
  }

  else
  {

    (*(v11 + 32))(v14, v9, v10);
    v18 = sub_1AFDFC048();
    v23 = 0;
    v3 = [v3 initWithContentsOf:v18 error:&v23];

    if (v3)
    {
      v19 = *(v11 + 8);
      v20 = v23;
      v19(v14, v10);
    }

    else
    {
      v3 = v23;
      sub_1AFDFBF58();

      swift_willThrow();
      (*(v11 + 8))(v14, v10);
    }
  }

  return v3;
}

uint64_t sub_1AFC74754@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AF455364();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v32 - v12;
  v14 = sub_1AFC74E64(a1, a2);
  if (v14)
  {
    v15 = v14;
    v16 = sub_1AFDFCEC8();
    v17 = sub_1AFDFCEC8();
    v18 = [v15 URLForResource:v16 withExtension:v17];

    if (v18)
    {
      sub_1AFDFC0B8();

      v19 = sub_1AFDFC128();
      (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
    }

    else
    {

      v26 = sub_1AFDFC128();
      (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
    }

    v27 = v13;
    return sub_1AF6EE3D0(v27, a3);
  }

  v20 = sub_1AFDFCEC8();
  v21 = [objc_opt_self() bundleWithIdentifier_];

  if (v21)
  {
    v22 = sub_1AFDFCEC8();
    v23 = sub_1AFDFCEC8();
    v24 = [v21 URLForResource:v22 withExtension:v23];

    if (v24)
    {
      sub_1AFDFC0B8();

      v25 = sub_1AFDFC128();
      (*(*(v25 - 8) + 56))(v9, 0, 1, v25);
    }

    else
    {
      v31 = sub_1AFDFC128();
      (*(*(v31 - 8) + 56))(v9, 1, 1, v31);
    }

    v27 = v9;
    return sub_1AF6EE3D0(v27, a3);
  }

  v28 = sub_1AFDFC128();
  v29 = *(*(v28 - 8) + 56);

  return v29(a3, 1, 1, v28);
}

unint64_t sub_1AFC74A8C()
{
  result = qword_1EB643B00;
  if (!qword_1EB643B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643B00);
  }

  return result;
}

uint64_t static VFXScene.vfxLibraryURL(for:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AF455364();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AFC74E64(a1, a2);
  if (v10)
  {
    v11 = v10;
    v12 = sub_1AFDFCEC8();
    v13 = sub_1AFDFCEC8();
    v14 = [v11 URLForResource:v12 withExtension:v13];

    if (v14)
    {
      sub_1AFDFC0B8();

      v15 = sub_1AFDFC128();
      (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
    }

    else
    {

      v19 = sub_1AFDFC128();
      (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
    }

    return sub_1AF6EE3D0(v9, a3);
  }

  else
  {
    v16 = sub_1AFDFC128();
    v17 = *(*(v16 - 8) + 56);

    return v17(a3, 1, 1, v16);
  }
}

id sub_1AFC74E64(uint64_t a1, unint64_t a2)
{
  v4 = sub_1AFDFC128();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v30 - v11;
  v30 = a1;
  v31 = a2;
  sub_1AF4486E4();
  v13 = sub_1AFDFDF28();
  if (*(v13 + 16) < 4uLL)
  {

    return 0;
  }

  v30 = v13;
  v31 = v13 + 32;
  v32 = xmmword_1AFE79030;
  sub_1AFC751B0();
  sub_1AF6DC49C();
  sub_1AF6DC518();
  v14 = sub_1AFDFD298();
  v16 = v15;

  v30 = v14;
  v31 = v16;

  MEMORY[0x1B2718AE0](0x7262696C7866762ELL, 0xEB00000000797261);

  v17 = [objc_opt_self() processInfo];
  v18 = [v17 environment];

  v19 = sub_1AFDFCC08();
  if (*(v19 + 16) && (v20 = sub_1AF419914(0x4F54414C554D4953, 0xEE00544F4F525F52), (v21 & 1) != 0))
  {
    v22 = (*(v19 + 56) + 16 * v20);
    v24 = *v22;
    v23 = v22[1];
  }

  else
  {
    v24 = 0;
    v23 = 0xE000000000000000;
  }

  v30 = v24;
  v31 = v23;

  MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF4C200);

  sub_1AFDFC018();

  sub_1AFDFC088();

  v25 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
  v26 = sub_1AFDFC048();
  v27 = [v25 initWithURL_];

  v28 = *(v5 + 8);
  v28(v8, v4);
  v28(v12, v4);
  result = v27;
  if (!v27)
  {
    return 0;
  }

  return result;
}

void sub_1AFC751B0()
{
  if (!qword_1EB63D678)
  {
    v0 = sub_1AFDFE018();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63D678);
    }
  }
}

uint64_t sub_1AFC75200(uint64_t result, uint64_t a2, float a3)
{
  if (result != 0xFFFFFFFFLL)
  {
    v4 = result;
    v6 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v6)
    {
      v7 = *(v6 + 80);
      swift_unknownObjectWeakLoadStrong();
      v6 = *(v6 + 56);
    }

    else
    {
      v7 = 0;
    }

    swift_unknownObjectUnownedInit();
    v9[0] = a2;
    v9[2] = v6;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v10 = v7;
    sub_1AFC75D20(v9, v4, a3);
    sub_1AF579490(v9);
    if (v7)
    {
      v8 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v8 ^ 1);
    }
  }

  return result;
}

uint64_t sub_1AFC75380(uint64_t result, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t, __n128, __n128, __n128, __n128), __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  if (result != 0xFFFFFFFFLL)
  {
    v9 = result;
    v10 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v10)
    {
      v11 = *(v10 + 80);
      swift_unknownObjectWeakLoadStrong();
      v10 = *(v10 + 56);
    }

    else
    {
      v11 = 0;
    }

    swift_unknownObjectUnownedInit();
    v17[0] = a2;
    v17[2] = v10;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v18 = v11;
    a3(v17, v9, a2, a4, a5, a6, a7);
    sub_1AF579490(v17);
    if (v11)
    {
      v12 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v12 ^ 1);
    }
  }

  return result;
}

uint64_t sub_1AFC75510(uint64_t result, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t, __n128), __n128 a4)
{
  if (result != 0xFFFFFFFFLL)
  {
    v6 = result;
    v7 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v7)
    {
      v8 = *(v7 + 80);
      swift_unknownObjectWeakLoadStrong();
      v7 = *(v7 + 56);
    }

    else
    {
      v8 = 0;
    }

    swift_unknownObjectUnownedInit();
    v11[0] = a2;
    v11[2] = v7;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v12 = v8;
    a3(v11, v6, a2, a4);
    sub_1AF579490(v11);
    if (v8)
    {
      v9 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v9 ^ 1);
    }
  }

  return result;
}

void sub_1AFC75668(char a1, void (*a2)(void *))
{
  if (a1)
  {
    v7 = 0;
    v6 = *(v2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = *(v2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
    if ((a1 & 2) != 0)
    {
      v7 = v6 != 0;
      if (!v6)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    if (v6)
    {
      v7 = *(v6 + 80);
LABEL_8:
      swift_unknownObjectWeakLoadStrong();
      v6 = *(v6 + 56);
      goto LABEL_10;
    }

    v7 = 0;
  }

LABEL_10:
  swift_unknownObjectUnownedInit();
  v9[0] = v2;
  v9[2] = v6;
  swift_unknownObjectUnownedAssign();
  swift_unownedRetain();
  swift_unknownObjectRelease();
  v10 = v7;
  a2(v9);
  if (!v3)
  {
    sub_1AF579490(v9);
    if (!v7)
    {
      return;
    }

    if ((a1 & 8) == 0)
    {
      if ((a1 & 4) == 0)
      {
        goto LABEL_14;
      }

LABEL_18:
      v8 = 0;
      goto LABEL_20;
    }

LABEL_19:
    v8 = 1;
    goto LABEL_20;
  }

  sub_1AF579490(v9);
  if (!v7)
  {
    return;
  }

  if ((a1 & 8) != 0)
  {
    goto LABEL_19;
  }

  if ((a1 & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  v8 = [objc_opt_self() immediateMode] ^ 1;
LABEL_20:
  sub_1AF6C5E30(v8);
}

void *sub_1AFC757E0(void *result, unint64_t a2, __n128 a3, __n128 a4)
{
  v5 = result;
  v6 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v7 = *result;
    swift_unownedRetainStrong();
    v8 = sub_1AF67CACC(&type metadata for LocalAABB, &off_1F2510440, a2);

    swift_unownedRetainStrong();
    sub_1AFBFCE80(a2, a3, a4);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v5 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v13[0] = a2;
      v13[1] = v6;
      v14 = v7;
      sub_1AF5B2158(0, &qword_1EB643B90);
      v16 = v9;
      v17 = &off_1F2536170;
      v10 = swift_allocObject();
      v15 = v10;
      v10[1] = a3;
      v10[2] = a4;
      v10[3].n128_u8[0] = !v8;
      v18 = 12;
      sub_1AF6C67D0(v13);

      return sub_1AF57955C(v13);
    }
  }

  return result;
}

void *sub_1AFC75940(void *result, unint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = result;
  v8 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v9 = *result;
    swift_unownedRetainStrong();
    v10 = sub_1AF67CACC(&type metadata for ProjectionMatrix, &off_1F2511D20, a2);

    swift_unownedRetainStrong();
    sub_1AFBFCF84(a2, a3, a4, a5, a6);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v7 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v17[0] = a2;
      v17[1] = v8;
      v18 = v9;
      sub_1AF5B2158(0, &qword_1EB643BB8);
      v20 = v11;
      v21 = &off_1F2536170;
      v12 = swift_allocObject();
      v19 = v12;
      v12[1] = a3;
      v12[2] = a4;
      v12[3] = a5;
      v12[4] = a6;
      v12[5].n128_u8[0] = !v10;
      v22 = 12;
      sub_1AF6C67D0(v17);

      return sub_1AF57955C(v17);
    }
  }

  return result;
}

void *sub_1AFC75AB0(void *result, unint64_t a2)
{
  v3 = result;
  v4 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v5 = *result;
    swift_unownedRetainStrong();
    v6 = sub_1AF67CACC(&type metadata for HiddenOrHasHiddenAncestor, &off_1F2529510, a2);

    swift_unownedRetainStrong();
    sub_1AFBFD0DC(a2);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v3 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v8[0] = a2;
      v8[1] = v4;
      v9 = v5;
      sub_1AF5B2158(0, &qword_1EB643B70);
      v11 = v7;
      v12 = &off_1F2536170;
      v10 = !v6;
      v13 = 12;
      sub_1AF6C67D0(v8);

      return sub_1AF57955C(v8);
    }
  }

  return result;
}

void *sub_1AFC75BE8(void *result, unint64_t a2)
{
  v3 = result;
  v4 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v5 = *result;
    swift_unownedRetainStrong();
    v6 = sub_1AF67CACC(&type metadata for Hidden, &off_1F25296F8, a2);

    swift_unownedRetainStrong();
    sub_1AFBFD0F4(a2);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v3 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v8[0] = a2;
      v8[1] = v4;
      v9 = v5;
      sub_1AF5B2158(0, &qword_1EB643B78);
      v11 = v7;
      v12 = &off_1F2536170;
      v10 = !v6;
      v13 = 12;
      sub_1AF6C67D0(v8);

      return sub_1AF57955C(v8);
    }
  }

  return result;
}

void *sub_1AFC75D20(void *result, unint64_t a2, float a3)
{
  v5 = result;
  v6 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v7 = *result;
    swift_unownedRetainStrong();
    v8 = sub_1AF67CACC(&type metadata for Opacity, &off_1F2529658, a2);

    swift_unownedRetainStrong();
    sub_1AFBFD204(a2, a3);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v5 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v10[0] = a2;
      v10[1] = v6;
      v11 = v7;
      sub_1AF5B2158(0, &qword_1EB643BA8);
      v14 = v9;
      v15 = &off_1F2536170;
      v12 = a3;
      v13 = !v8;
      v16 = 12;
      sub_1AF6C67D0(v10);

      return sub_1AF57955C(v10);
    }
  }

  return result;
}

void *sub_1AFC75E6C(void *result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = HIDWORD(a3);
  if (HIDWORD(a3) || a3 != -1)
  {
    v7 = *result;
    swift_unownedRetainStrong();
    v8 = sub_1AF67CACC(&type metadata for Parent, &off_1F2529C18, a3);

    swift_unownedRetainStrong();
    sub_1AFBFD378(a2, a3);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v5 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v10[0] = a3;
      v10[1] = v6;
      v11 = v7;
      sub_1AF5B2158(0, &qword_1EB643B80);
      v14 = v9;
      v15 = &off_1F2536170;
      v12 = a2;
      v13 = !v8;
      v16 = 12;
      sub_1AF6C67D0(v10);

      return sub_1AF57955C(v10);
    }
  }

  return result;
}

void *sub_1AFC75FB4(void *result, unint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = result;
  v8 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v9 = *result;
    swift_unownedRetainStrong();
    v10 = sub_1AF67CACC(&type metadata for WorldTransform, &off_1F2529AF8, a2);

    swift_unownedRetainStrong();
    sub_1AFBFD4A8(a2, a3, a4, a5, a6);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v7 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v17[0] = a2;
      v17[1] = v8;
      v18 = v9;
      sub_1AF5B2158(0, &qword_1EB643BE0);
      v20 = v11;
      v21 = &off_1F2536170;
      v12 = swift_allocObject();
      v19 = v12;
      v12[1] = a3;
      v12[2] = a4;
      v12[3] = a5;
      v12[4] = a6;
      v12[5].n128_u8[0] = !v10;
      v22 = 12;
      sub_1AF6C67D0(v17);

      return sub_1AF57955C(v17);
    }
  }

  return result;
}

void *sub_1AFC76124(void *result, unint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = result;
  v8 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v9 = *result;
    swift_unownedRetainStrong();
    v10 = sub_1AF67CACC(&type metadata for InverseWorldTransform, &off_1F2529D78, a2);

    swift_unownedRetainStrong();
    sub_1AFBFD4C0(a2, a3, a4, a5, a6);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v7 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v17[0] = a2;
      v17[1] = v8;
      v18 = v9;
      sub_1AF5B2158(0, &qword_1EB643BD8);
      v20 = v11;
      v21 = &off_1F2536170;
      v12 = swift_allocObject();
      v19 = v12;
      v12[1] = a3;
      v12[2] = a4;
      v12[3] = a5;
      v12[4] = a6;
      v12[5].n128_u8[0] = !v10;
      v22 = 12;
      sub_1AF6C67D0(v17);

      return sub_1AF57955C(v17);
    }
  }

  return result;
}

void *sub_1AFC76294(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = result;
  v8 = HIDWORD(a4);
  if (HIDWORD(a4) || a4 != -1)
  {
    v9 = *result;
    swift_unownedRetainStrong();
    v10 = sub_1AF67CACC(&type metadata for Name, &off_1F2534FE8, a4);

    swift_unownedRetainStrong();
    sub_1AFBFD770(a2, a3, a4);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v7 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v12[0] = a4;
      v12[1] = v8;
      v13 = v9;
      sub_1AF5B2158(0, &qword_1EB643B30);
      v17 = v11;
      v18 = &off_1F2536170;
      v14 = a2;
      v15 = a3;
      v16 = !v10;
      v19 = 12;

      sub_1AF6C67D0(v12);

      return sub_1AF57955C(v12);
    }
  }

  return result;
}

void *sub_1AFC763F0(void *result, unint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v6 = *result;
    swift_unownedRetainStrong();
    v7 = sub_1AF67CACC(&type metadata for Color, &off_1F252CA08, a2);

    swift_unownedRetainStrong();
    sub_1AFBFD788(a2, a3);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v4 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v11[0] = a2;
      v11[1] = v5;
      v12 = v6;
      sub_1AF5B2158(0, &qword_1EB643B50);
      v14 = v8;
      v15 = &off_1F2536170;
      v9 = swift_allocObject();
      v13 = v9;
      v9[1] = a3;
      v9[2].n128_u8[0] = !v7;
      v16 = 12;
      sub_1AF6C67D0(v11);

      return sub_1AF57955C(v11);
    }
  }

  return result;
}

void *sub_1AFC76550(void *result, unint64_t a2, float a3)
{
  v5 = result;
  v6 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v7 = *result;
    swift_unownedRetainStrong();
    v8 = sub_1AF67CACC(&type metadata for AmbientLight, &off_1F252AC40, a2);

    swift_unownedRetainStrong();
    sub_1AFBFD8B8(a2, a3);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v5 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v10[0] = a2;
      v10[1] = v6;
      v11 = v7;
      sub_1AF5B2158(0, &qword_1EB643B58);
      v14 = v9;
      v15 = &off_1F2536170;
      v12 = a3;
      v13 = !v8;
      v16 = 12;
      sub_1AF6C67D0(v10);

      return sub_1AF57955C(v10);
    }
  }

  return result;
}

void *sub_1AFC7669C(void *result, unint64_t a2, float a3, float a4, float a5, float a6)
{
  v11 = result;
  v12 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v13 = *result;
    swift_unownedRetainStrong();
    v14 = sub_1AF67CACC(&type metadata for DirectionalLight, &off_1F252AA30, a2);

    swift_unownedRetainStrong();
    sub_1AFBFDA14(a2, a3, a4, a5, a6);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v11 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v16[0] = a2;
      v16[1] = v12;
      v17 = v13;
      sub_1AF5B2158(0, &qword_1EB643B48);
      v23 = v15;
      v24 = &off_1F2536170;
      v18 = a3;
      v19 = a4;
      v20 = a5;
      v21 = a6;
      v22 = !v14;
      v25 = 12;
      sub_1AF6C67D0(v16);

      return sub_1AF57955C(v16);
    }
  }

  return result;
}

void *sub_1AFC7680C(void *result, __n128 *a2, unint64_t a3)
{
  v5 = result;
  v6 = HIDWORD(a3);
  if (HIDWORD(a3) || a3 != -1)
  {
    v7 = *result;
    swift_unownedRetainStrong();
    v8 = sub_1AF67CACC(&type metadata for SpotLight, &off_1F252AB90, a3);

    swift_unownedRetainStrong();
    sub_1AFBFDA2C(a2, a3);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v5 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v11[0] = a3;
      v11[1] = v6;
      v12 = v7;
      sub_1AF5B2158(0, &qword_1EB643B40);
      v14 = v9;
      v15 = &off_1F2536170;
      v10 = swift_allocObject();
      v13 = v10;
      *(v10 + 16) = *a2;
      *(v10 + 32) = a2[1].n128_u64[0];
      *(v10 + 40) = !v8;
      v16 = 12;
      sub_1AF6C67D0(v11);

      return sub_1AF57955C(v11);
    }
  }

  return result;
}

void *sub_1AFC76974(void *result, unint64_t a2, float a3, float a4, float a5, float a6)
{
  v11 = result;
  v12 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v13 = *result;
    swift_unownedRetainStrong();
    v14 = sub_1AF67CACC(&type metadata for PointLight, &off_1F252AAE0, a2);

    swift_unownedRetainStrong();
    sub_1AFBFDB3C(a2, a3, a4, a5, a6);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v11 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v16[0] = a2;
      v16[1] = v12;
      v17 = v13;
      sub_1AF5B2158(0, &qword_1EB643B38);
      v23 = v15;
      v24 = &off_1F2536170;
      v18 = a3;
      v19 = a4;
      v20 = a5;
      v21 = a6;
      v22 = !v14;
      v25 = 12;
      sub_1AF6C67D0(v16);

      return sub_1AF57955C(v16);
    }
  }

  return result;
}

void *sub_1AFC76B14(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = result;
  v8 = HIDWORD(a4);
  if (HIDWORD(a4) || a4 != -1)
  {
    v9 = *result;
    swift_unownedRetainStrong();
    v10 = sub_1AF67CACC(&type metadata for ModelRenderer, &off_1F25623D0, a4);

    swift_unownedRetainStrong();
    sub_1AFBFD758(a2, a3, a4);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v7 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v12[0] = a4;
      v12[1] = v8;
      v13 = v9;
      sub_1AF5B2158(0, &qword_1EB643B28);
      v17 = v11;
      v18 = &off_1F2536170;
      v14 = a2;
      v15 = a3;
      v16 = !v10;
      v19 = 12;
      sub_1AF6C67D0(v12);

      return sub_1AF57955C(v12);
    }
  }

  return result;
}

void *sub_1AFC76C74(void *result, unint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v6 = *result;
    swift_unownedRetainStrong();
    v7 = sub_1AF67CACC(&type metadata for Orientation, &off_1F252C828, a2);

    swift_unownedRetainStrong();
    sub_1AFBFD728(a2, a3);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v4 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v11[0] = a2;
      v11[1] = v5;
      v12 = v6;
      sub_1AF5B2158(0, &qword_1EB643BC0);
      v14 = v8;
      v15 = &off_1F2536170;
      v9 = swift_allocObject();
      v13 = v9;
      v9[1] = a3;
      v9[2].n128_u8[0] = !v7;
      v16 = 12;
      sub_1AF6C67D0(v11);

      return sub_1AF57955C(v11);
    }
  }

  return result;
}

void *sub_1AFC76DD4(void *result, unint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v6 = *result;
    swift_unownedRetainStrong();
    v7 = sub_1AF67CACC(&type metadata for Position, &off_1F252EDF0, a2);

    swift_unownedRetainStrong();
    sub_1AFBFD710(a2, a3);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v4 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v11[0] = a2;
      v11[1] = v5;
      v12 = v6;
      sub_1AF5B2158(0, &qword_1EB643BC8);
      v14 = v8;
      v15 = &off_1F2536170;
      v9 = swift_allocObject();
      v13 = v9;
      v9[1] = a3;
      v9[2].n128_u8[0] = !v7;
      v16 = 12;
      sub_1AF6C67D0(v11);

      return sub_1AF57955C(v11);
    }
  }

  return result;
}

void *sub_1AFC76F34(void *result, unint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v6 = *result;
    swift_unownedRetainStrong();
    v7 = sub_1AF67CACC(&type metadata for Scale3, &off_1F252F918, a2);

    swift_unownedRetainStrong();
    sub_1AFBFD740(a2, a3);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v4 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v11[0] = a2;
      v11[1] = v5;
      v12 = v6;
      sub_1AF5B2158(0, &qword_1EB643BA0);
      v14 = v8;
      v15 = &off_1F2536170;
      v9 = swift_allocObject();
      v13 = v9;
      v9[1] = a3;
      v9[2].n128_u8[0] = !v7;
      v16 = 12;
      sub_1AF6C67D0(v11);

      return sub_1AF57955C(v11);
    }
  }

  return result;
}

void *sub_1AFC77094(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v11 = result;
  v12 = HIDWORD(a6);
  if (HIDWORD(a6) || a6 != -1)
  {
    v13 = *result;
    swift_unownedRetainStrong();
    v16 = sub_1AF67CACC(&type metadata for MeshReferenceAsset, &off_1F252BDD8, a6);

    swift_unownedRetainStrong();
    sub_1AFBFE334(a2, a3, a4, a5, a6);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v11 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v17[0] = a6;
      v17[1] = v12;
      v18 = v13;
      sub_1AF5B2158(0, &qword_1EB643B88);
      v20 = v14;
      v21 = &off_1F2536170;
      v15 = swift_allocObject();
      v19 = v15;
      *(v15 + 16) = a2;
      *(v15 + 24) = a3;
      *(v15 + 32) = a4;
      *(v15 + 40) = a5;
      *(v15 + 48) = !v16;
      v22 = 12;

      sub_1AF6C67D0(v17);

      return sub_1AF57955C(v17);
    }
  }

  return result;
}

void *sub_1AFC7722C(void *result, __int128 *a2, unint64_t a3)
{
  v5 = result;
  v6 = HIDWORD(a3);
  if (HIDWORD(a3) || a3 != -1)
  {
    v7 = *result;
    swift_unownedRetainStrong();
    v8 = sub_1AF67CACC(&type metadata for ForceField, &off_1F2560E90, a3);

    swift_unownedRetainStrong();
    sub_1AFBFE7F8(a2, a3);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v5 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v15[0] = a3;
      v15[1] = v6;
      v16 = v7;
      sub_1AF5B2158(0, &qword_1EB643BF0);
      v18 = v9;
      v19 = &off_1F2536170;
      v10 = swift_allocObject();
      v17 = v10;
      v11 = a2[7];
      *(v10 + 112) = a2[6];
      *(v10 + 128) = v11;
      *(v10 + 140) = *(a2 + 124);
      v12 = a2[3];
      *(v10 + 48) = a2[2];
      *(v10 + 64) = v12;
      v13 = a2[5];
      *(v10 + 80) = a2[4];
      *(v10 + 96) = v13;
      v14 = a2[1];
      *(v10 + 16) = *a2;
      *(v10 + 32) = v14;
      *(v10 + 156) = !v8;
      v20 = 12;
      sub_1AF6C67D0(v15);

      return sub_1AF57955C(v15);
    }
  }

  return result;
}

void *sub_1AFC773AC(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = result;
  v8 = HIDWORD(a4);
  if (HIDWORD(a4) || a4 != -1)
  {
    v9 = *result;
    swift_unownedRetainStrong();
    v10 = sub_1AF67CACC(&type metadata for VFXTag, &off_1F253D558, a4);

    swift_unownedRetainStrong();
    sub_1AFBFE5A4(a2, a3, a4);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v7 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v12[0] = a4;
      v12[1] = v8;
      v13 = v9;
      sub_1AF5B2158(0, &qword_1EB63F278);
      v17 = v11;
      v18 = &off_1F2536170;
      v14 = a2;
      v15 = a3;
      v16 = !v10;
      v19 = 12;

      sub_1AF6C67D0(v12);

      return sub_1AF57955C(v12);
    }
  }

  return result;
}

void *sub_1AFC77508(void *result, unint64_t a2)
{
  v3 = result;
  v4 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v5 = *result;
    swift_unownedRetainStrong();
    v6 = sub_1AF67CACC(&type metadata for Authoring, &off_1F2562C70, a2);

    swift_unownedRetainStrong();
    sub_1AFBFEA40(a2);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v3 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v8[0] = a2;
      v8[1] = v4;
      v9 = v5;
      sub_1AF5B2158(0, &qword_1EB643BF8);
      v11 = v7;
      v12 = &off_1F2536170;
      v10 = !v6;
      v13 = 12;
      sub_1AF6C67D0(v8);

      return sub_1AF57955C(v8);
    }
  }

  return result;
}

void *sub_1AFC77640(void *result, unint64_t a2)
{
  v3 = result;
  v4 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v5 = *result;
    swift_unownedRetainStrong();
    v6 = sub_1AF67CACC(&type metadata for Beamed, &off_1F2529B88, a2);

    swift_unownedRetainStrong();
    sub_1AFBFECE4(a2);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v3 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v8[0] = a2;
      v8[1] = v4;
      v9 = v5;
      sub_1AF5B2158(0, &qword_1EB643BB0);
      v11 = v7;
      v12 = &off_1F2536170;
      v10 = !v6;
      v13 = 12;
      sub_1AF6C67D0(v8);

      return sub_1AF57955C(v8);
    }
  }

  return result;
}

uint64_t sub_1AFC77778(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 != 0xFFFFFFFF)
  {
    v11 = *(result + 16);
    v12 = *result;
    v9 = *(result + 48);
    v10 = *(result + 32);
    v5 = *(result + 64);
    v6 = *(a3 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v5)
    {
      if (v6)
      {
        v7 = *(v6 + 80);
        swift_unknownObjectWeakLoadStrong();
        v6 = *(v6 + 56);
      }

      else
      {
        v7 = 0;
      }

      swift_unknownObjectUnownedInit();
      v13[0] = a3;
      v14 = v6;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      v15 = v7;
      sub_1AF6C150C(&type metadata for LastFrameWorldTransform, &off_1F2529EB0, a2);
    }

    else
    {
      if (v6)
      {
        v7 = *(v6 + 80);
        swift_unknownObjectWeakLoadStrong();
        v6 = *(v6 + 56);
      }

      else
      {
        v7 = 0;
      }

      swift_unknownObjectUnownedInit();
      v13[0] = a3;
      v14 = v6;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      v15 = v7;
      sub_1AFC77DDC(v13, a2, v12, v11, v10, v9);
    }

    sub_1AF579490(v13);
    if (v7)
    {
      v8 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v8 ^ 1);
    }
  }

  return result;
}

void *sub_1AFC77960(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = result;
  v10 = HIDWORD(a5);
  if (HIDWORD(a5) || a5 != -1)
  {
    v11 = *result;
    swift_unownedRetainStrong();
    v21 = sub_1AF67CACC(&type metadata for ScriptsHolder, &off_1F255C998, a5);

    swift_unownedRetainStrong();
    sub_1AFBFE5BC(a2, a3, a4, a5);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v9 + 24) == 1)
    {
      v12 = !v21;
      swift_unownedRetainStrong();
      v15[0] = a5;
      v15[1] = v10;
      v16 = v11;
      sub_1AF5B2158(0, &qword_1EB643BE8);
      v18 = v13;
      v19 = &off_1F2536170;
      v14 = swift_allocObject();
      v17 = v14;
      *(v14 + 16) = a2;
      *(v14 + 24) = a3;
      *(v14 + 32) = a4;
      *(v14 + 40) = v12;
      v20 = 12;

      sub_1AF6C67D0(v15);

      return sub_1AF57955C(v15);
    }
  }

  return result;
}

void *sub_1AFC77AF8(void *result, __int128 *a2, unint64_t a3)
{
  v5 = result;
  v6 = HIDWORD(a3);
  if (HIDWORD(a3) || a3 != -1)
  {
    v7 = *result;
    swift_unownedRetainStrong();
    v8 = sub_1AF67CACC(&type metadata for PerspectiveCamera, &off_1F2511BE0, a3);

    swift_unownedRetainStrong();
    sub_1AFBFDC9C(a2, a3);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v5 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v12[0] = a3;
      v12[1] = v6;
      v13 = v7;
      sub_1AF5B2158(0, &qword_1EB643B68);
      v15 = v9;
      v16 = &off_1F2536170;
      v10 = swift_allocObject();
      v14 = v10;
      v11 = a2[1];
      *(v10 + 16) = *a2;
      *(v10 + 32) = v11;
      *(v10 + 48) = a2[2];
      *(v10 + 64) = !v8;
      v17 = 12;
      sub_1AF6C67D0(v12);

      return sub_1AF57955C(v12);
    }
  }

  return result;
}

void *sub_1AFC77C60(void *result, __n128 *a2, unint64_t a3)
{
  v5 = result;
  v6 = HIDWORD(a3);
  v7 = a2->n128_u32[0];
  v8 = a2->n128_u8[4];
  v9 = a2->n128_u64[1];
  v10 = a2[1].n128_u8[0];
  if (HIDWORD(a3) || a3 != -1)
  {
    v11 = *result;
    swift_unownedRetainStrong();
    v23 = sub_1AF67CACC(&type metadata for OrthographicCamera, &off_1F2511C70, a3);

    swift_unownedRetainStrong();
    sub_1AFBFDDAC(a2, a3);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v5 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v13[0] = a3;
      v13[1] = v6;
      v14 = v11;
      sub_1AF5B2158(0, &qword_1EB643B60);
      v20 = v12;
      v21 = &off_1F2536170;
      v15 = v7;
      v16 = v8 & 1;
      v17 = v9;
      v18 = v10 & 1;
      v19 = !v23;
      v22 = 12;
      sub_1AF6C67D0(v13);

      return sub_1AF57955C(v13);
    }
  }

  return result;
}

void *sub_1AFC77DDC(void *result, unint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = result;
  v8 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v9 = *result;
    swift_unownedRetainStrong();
    v10 = sub_1AF67CACC(&type metadata for LastFrameWorldTransform, &off_1F2529E30, a2);

    swift_unownedRetainStrong();
    sub_1AFBFE908(a2, a3, a4, a5, a6);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v7 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v17[0] = a2;
      v17[1] = v8;
      v18 = v9;
      sub_1AF5B2158(0, &qword_1EB643BD0);
      v20 = v11;
      v21 = &off_1F2536170;
      v12 = swift_allocObject();
      v19 = v12;
      v12[1] = a3;
      v12[2] = a4;
      v12[3] = a5;
      v12[4] = a6;
      v12[5].n128_u8[0] = !v10;
      v22 = 12;
      sub_1AF6C67D0(v17);

      return sub_1AF57955C(v17);
    }
  }

  return result;
}

void *sub_1AFC77F4C(void *result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = HIDWORD(a3);
  if (HIDWORD(a3) || a3 != -1)
  {
    v7 = *result;
    swift_unownedRetainStrong();
    v8 = sub_1AF67CACC(&type metadata for Children, &off_1F252A420, a3);

    swift_unownedRetainStrong();
    sub_1AFBFD360(a2, a3);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v5 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v10[0] = a3;
      v10[1] = v6;
      v11 = v7;
      sub_1AF5B2158(0, &qword_1EB63BE08);
      v14 = v9;
      v15 = &off_1F2536170;
      v12 = a2;
      v13 = !v8;
      v16 = 12;

      sub_1AF6C67D0(v10);

      return sub_1AF57955C(v10);
    }
  }

  return result;
}

uint64_t VFXCoreCameraProjectionDirection.init(rawValue:)(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  return v1 | ((a1 > 1u) << 8);
}

unsigned __int8 *sub_1AFC780CC@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 1;
  if (v2 > 1)
  {
    LOBYTE(v2) = 0;
  }

  *a2 = v2;
  a2[1] = v3;
  return result;
}

BOOL sub_1AFC781A8(uint64_t a1)
{
  swift_getObjectType();
  sub_1AF44CBE4(a1, v12);
  if (!v13)
  {
    sub_1AF44CB60(v12);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = v1 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance;
  v4 = &v11[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
  if (*(v1 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance) != *&v11[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance])
  {

    return 0;
  }

  v5 = *(v4 + 1);
  v6 = *(v3 + 8);
  v7 = *(v4 + 1);
  v8 = *(v3 + 4);

  return v8 == v7 && v6 == v5;
}

uint64_t sub_1AFC783A4()
{
  v1 = *&v0[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 8];

  v2 = v0;
  v3 = sub_1AF671054(v1, v2);

  return v3;
}

uint64_t sub_1AFC784D0(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 8];

  sub_1AF661448(v3, a1, v1);
}

void sub_1AFC78544(void **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 8);

  v5 = v3;
  LOBYTE(v3) = sub_1AF671594(v4, v5);

  *a2 = v3 & 1;
}

uint64_t sub_1AFC785C0(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 8);

  sub_1AF661448(v4, v2, v3);
}

void sub_1AFC78638(char a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance);
  v4 = *(a2 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4);
  v5 = *(a2 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 8);
  v7 = v3 == 0xFFFFFFFFLL && v4 == 0;
  if (a1)
  {
    if (v7)
    {
      return;
    }

    v8 = v3 | (v4 << 32);

    v9 = sub_1AF67CACC(&type metadata for OrthographicCamera, &off_1F2511C70, v8);

    if (v9)
    {
      return;
    }

    v27.n128_u32[0] = 1065353216;
    v27.n128_u8[4] = 0;
    v27.n128_u64[1] = 0x461C40003DCCCCCDLL;
    LOBYTE(v28) = 1;
    v10 = *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v10)
    {
      v11 = *(v10 + 80);
      swift_unknownObjectWeakLoadStrong();
      v10 = *(v10 + 56);
    }

    else
    {
      v11 = 0;
    }

    swift_unknownObjectUnownedInit();
    *&v30 = v5;
    v31 = v10;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v32 = v11;
    sub_1AFC77C60(&v30, &v27, v8);
    if (!v2)
    {
      sub_1AF579490(&v30);
      if (v11)
      {
        v16 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v16 ^ 1);
      }

      v17 = sub_1AF67CACC(&type metadata for PerspectiveCamera, &off_1F2511BE0, v8);

      if (v17)
      {
        v18 = *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

        if (v18)
        {
          v19 = *(v18 + 80);
          swift_unknownObjectWeakLoadStrong();
          v18 = *(v18 + 56);
        }

        else
        {
          v19 = 0;
        }

        v31 = 0;
        swift_unknownObjectUnownedInit();
        *&v30 = v5;
        v31 = v18;
        swift_unknownObjectUnownedAssign();
        swift_unownedRetain();
        swift_unknownObjectRelease();
        v32 = v19;
        sub_1AF6C150C(&type metadata for PerspectiveCamera, &off_1F2511ED0, v8);
        sub_1AF579490(&v30);
        if (!v19)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      return;
    }

    v25 = &v30;
LABEL_41:
    sub_1AF579490(v25);
    v26 = [objc_opt_self() immediateMode];
    sub_1AF6C5E30(v26 ^ 1);
    __break(1u);
    return;
  }

  if (v7)
  {
    sub_1AF48B444(&v30);
    return;
  }

  v12 = v3 | (v4 << 32);

  v13 = sub_1AF67CACC(&type metadata for PerspectiveCamera, &off_1F2511BE0, v12);

  if (v13)
  {
    return;
  }

  sub_1AF48B444(&v30);
  v14 = *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

  if (v14)
  {
    v15 = *(v14 + 80);
    swift_unknownObjectWeakLoadStrong();
    v14 = *(v14 + 56);
  }

  else
  {
    v15 = 0;
  }

  swift_unknownObjectUnownedInit();
  v27.n128_u64[0] = v5;
  v28 = v14;
  swift_unknownObjectUnownedAssign();
  swift_unownedRetain();
  swift_unknownObjectRelease();
  v29 = v15;
  sub_1AFC77AF8(&v27, &v30, v12);
  if (v2)
  {

    v25 = &v27;
    goto LABEL_41;
  }

  sub_1AF579490(&v27);
  if (v15)
  {
    v20 = [objc_opt_self() immediateMode];
    sub_1AF6C5E30(v20 ^ 1);
  }

  v21 = sub_1AF67CACC(&type metadata for OrthographicCamera, &off_1F2511C70, v12);

  if (v21)
  {
    v22 = *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v22)
    {
      v23 = *(v22 + 80);
      swift_unknownObjectWeakLoadStrong();
      v22 = *(v22 + 56);
    }

    else
    {
      v23 = 0;
    }

    v28 = 0;
    swift_unknownObjectUnownedInit();
    v27.n128_u64[0] = v5;
    v28 = v22;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v29 = v23;
    sub_1AF6C150C(&type metadata for OrthographicCamera, &off_1F2511CF0, v12);
    sub_1AF579490(&v27);
    if (!v23)
    {
      goto LABEL_37;
    }

LABEL_36:
    v24 = [objc_opt_self() immediateMode];
    sub_1AF6C5E30(v24 ^ 1);
LABEL_37:
  }
}

uint64_t (*sub_1AFC78B00(uint64_t a1))(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 8];
  *a1 = v1;
  *(a1 + 8) = v3;

  v4 = v1;
  v5 = sub_1AF671594(v3, v4);
  *(a1 + 16) = 0;

  *(a1 + 24) = v5 & 1;
  return sub_1AFC78BA4;
}

uint64_t sub_1AFC78BA4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = *(a1 + 24);

  sub_1AF661448(v1, v3, v2);
}

void sub_1AFC78CF4(simd_float4x4 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance);
  v3 = *(v1 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4);
  v4 = *(v1 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 8);
  v5 = v2 == 0xFFFFFFFFLL && v3 == 0;
  v6 = v5;
  if (!v5)
  {
    v13 = a1;
    v7 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v7)
    {
      v8 = *(v7 + 80);
      swift_unknownObjectWeakLoadStrong();
      v7 = *(v7 + 56);
    }

    else
    {
      v8 = 0;
    }

    swift_unknownObjectUnownedInit();
    v18[0] = v4;
    v19 = v7;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v20 = v8;
    sub_1AFC75FB4(v18, v2 | (v3 << 32), v13.columns[0], v13.columns[1], v13.columns[2], v13.columns[3]);
    sub_1AF579490(v18);
    if (v8)
    {
      v9 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v9 ^ 1);
    }

    a1 = v13;
  }

  v21 = __invert_f4(a1);
  if ((v6 & 1) == 0)
  {
    v14 = v21.columns[3];
    v15 = v21.columns[2];
    v16 = v21.columns[1];
    v17 = v21.columns[0];
    v10 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v10)
    {
      v11 = *(v10 + 80);
      swift_unknownObjectWeakLoadStrong();
      v10 = *(v10 + 56);
    }

    else
    {
      v11 = 0;
    }

    v19 = 0;
    swift_unknownObjectUnownedInit();
    v18[0] = v4;
    v19 = v10;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v20 = v11;
    sub_1AFC76124(v18, v2 | (v3 << 32), v17, v16, v15, v14);
    sub_1AF579490(v18);
    if (v11)
    {
      v12 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v12 ^ 1);
    }
  }
}

uint64_t sub_1AFC78F48(uint64_t a1, void *a2)
{
  v9 = *a1;
  v7 = *(a1 + 32);
  v8 = *(a1 + 16);
  v6 = *(a1 + 48);
  v2 = (*a2 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance);
  v4 = *v2;
  v3 = v2[1];
  sub_1AFC75380(*v2, v3, sub_1AFC75FB4, *a1, v8, v7, v6);
  v10.columns[0] = v9;
  v10.columns[2] = v7;
  v10.columns[1] = v8;
  v10.columns[3] = v6;
  v11 = j____invert_f4_1(v10);
  return sub_1AFC75380(v4, v3, sub_1AFC76124, v11.columns[0], v11.columns[1], v11.columns[2], v11.columns[3]);
}

void (*sub_1AFC78FE4(void *a1))(simd_float4x4 **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance;
  v3[12] = v1;
  v3[13] = v5;
  v6 = *&v1[v5 + 8];
  v3[14] = v6;

  v7 = v1;
  sub_1AF672928(v6, v7);
  v15 = v9;
  v16 = v8;
  v13 = v11;
  v14 = v10;
  v4[15] = 0;

  *v4 = v16;
  *(v4 + 1) = v15;
  *(v4 + 2) = v14;
  *(v4 + 3) = v13;
  return sub_1AFC790C0;
}

void sub_1AFC790C0(simd_float4x4 **a1)
{
  v1 = *a1;
  v2 = ((*a1)[1].columns[2].i64[0] + (*a1)[1].columns[2].i64[1]);
  v3 = *v2;
  v4 = v2[1];
  if (v3 == 0xFFFFFFFFLL && v4 == 0)
  {
    __invert_f4(**a1);
  }

  else
  {
    *v19 = (*a1)->columns[0];
    *&v19[16] = (*a1)->columns[1];
    *&v19[32] = (*a1)->columns[2];
    *&v19[48] = (*a1)->columns[3];
    v7 = v1[1].columns[3].i64[0];
    v8 = *(v7 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v8)
    {
      v9 = *(v8 + 80);
      swift_unknownObjectWeakLoadStrong();
      v10 = *(v8 + 56);
      v7 = v1[1].columns[3].i64[0];
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v11 = v1[1].columns[3].i64[1];
    v1[1].columns[1].i64[0] = 0;
    swift_unknownObjectUnownedInit();
    v1[1].columns[0].i64[0] = v7;
    v1[1].columns[1].i64[0] = v10;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v1[1].columns[1].i8[8] = v9;
    sub_1AFC75FB4(&v1[1], v3 | (v4 << 32), *v19, *&v19[16], *&v19[32], *&v19[48]);
    if (v11)
    {

      sub_1AF579490(&v1[1]);
      v18 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v18 ^ 1);
      __break(1u);
      return;
    }

    sub_1AF579490(&v1[1]);
    if (v9)
    {
      v12 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v12 ^ 1);
    }

    v13 = *v19;
    v25 = __invert_f4(v13);
    v20 = v25.columns[3];
    v21 = v25.columns[2];
    v22 = v25.columns[1];
    v23 = v25.columns[0];
    v14 = v1[1].columns[3].i64[0];
    v15 = *(v14 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v15)
    {
      v16 = *(v15 + 80);
      swift_unknownObjectWeakLoadStrong();
      v15 = *(v15 + 56);
      v14 = v1[1].columns[3].i64[0];
    }

    else
    {
      v16 = 0;
    }

    v1[1].columns[1].i64[0] = 0;
    swift_unknownObjectUnownedInit();
    v1[1].columns[0].i64[0] = v14;
    v1[1].columns[1].i64[0] = v15;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v1[1].columns[1].i8[8] = v16;
    sub_1AFC76124(&v1[1], v3 | (v4 << 32), v23, v22, v21, v20);
    sub_1AF579490(&v1[1]);
    if (v16)
    {
      v17 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v17 ^ 1);
    }
  }

  free(v1);
}

void sub_1AFC793CC(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance);
  v6 = *(v4 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4);
  if (v5 != -1 || v6 != 0)
  {
    v8 = *(v4 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 8);
    v9 = *(v8 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v9)
    {
      v10 = *(v9 + 80);
      swift_unknownObjectWeakLoadStrong();
      v9 = *(v9 + 56);
    }

    else
    {
      v10 = 0;
    }

    swift_unknownObjectUnownedInit();
    v16[0] = v8;
    v16[2] = v9;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v17 = v10;
    sub_1AFC77DDC(v16, v5 | (v6 << 32), a1, a2, a3, a4);
    sub_1AF579490(v16);
    if (v10)
    {
      v11 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v11 ^ 1);
    }
  }
}

void (*sub_1AFC79530(void *a1))(__n128 **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance;
  v3[12] = v1;
  v3[13] = v5;
  v6 = *&v1[v5 + 8];
  v3[14] = v6;

  v7 = v1;
  sub_1AF672CA8(v6, v7);
  v15 = v9;
  v16 = v8;
  v13 = v11;
  v14 = v10;
  v4[15] = 0;

  *v4 = v16;
  *(v4 + 1) = v15;
  *(v4 + 2) = v14;
  *(v4 + 3) = v13;
  return sub_1AFC7960C;
}

void sub_1AFC7960C(__n128 **a1)
{
  v1 = *a1;
  v2 = ((*a1)[6].n128_u64[0] + (*a1)[6].n128_u64[1]);
  v3 = *v2;
  v4 = v2[1];
  if (v3 != 0xFFFFFFFFLL || v4 != 0)
  {
    v14 = **a1;
    v15 = (*a1)[1];
    v16 = (*a1)[2];
    v17 = (*a1)[3];
    v7 = v1[7].n128_u64[0];
    v8 = *(v7 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v8)
    {
      v9 = *(v8 + 80);
      swift_unknownObjectWeakLoadStrong();
      v10 = *(v8 + 56);
      v7 = v1[7].n128_u64[0];
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v11 = v1[7].n128_u64[1];
    v1[5].n128_u64[0] = 0;
    swift_unknownObjectUnownedInit();
    v1[4].n128_u64[0] = v7;
    v1[5].n128_u64[0] = v10;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v1[5].n128_u8[8] = v9;
    sub_1AFC77DDC(v1[4].n128_u64, v3 | (v4 << 32), v14, v15, v16, v17);
    if (v11)
    {

      sub_1AF579490(&v1[4]);
      v13 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v13 ^ 1);
      __break(1u);
      return;
    }

    sub_1AF579490(&v1[4]);
    if (v9)
    {
      v12 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v12 ^ 1);
    }
  }

  free(v1);
}

void sub_1AFC7987C(__n128 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance);
  v3 = *(v1 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4);
  if (v2 == -1 && v3 == 0)
  {
    return;
  }

  v5 = *(v1 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 8);
  v6 = v2 | (v3 << 32);

  v7 = sub_1AF3C9FF4(v6);
  v9 = v8;
  v11 = v10;

  if (v11)
  {
    v12 = a1;
LABEL_15:
    v12.n128_u32[3] = 1.0;
    v22 = v12;
    v18 = *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v18)
    {
      v19 = *(v18 + 80);
      swift_unknownObjectWeakLoadStrong();
      v18 = *(v18 + 56);
    }

    else
    {
      v19 = 0;
    }

    v26 = 0;
    swift_unknownObjectUnownedInit();
    v25[0] = v5;
    v26 = v18;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v27 = v19;
    sub_1AFC76DD4(v25, v6, v22);
    sub_1AF579490(v25);
    if (v19)
    {
      v20 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v20 ^ 1);
    }

    return;
  }

  v13 = 0;
  *&v14 = v7;
  *(&v14 + 1) = v9;
  v12 = a1;
  while (1)
  {
    v23 = a1;
    v16 = *(&v23 & 0xFFFFFFFFFFFFFFF3 | (4 * (v13 & 3)));
    v24 = v14;
    v17 = *(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v13 & 3)));
    v15 = v16 == v17;
    if (v13 == 2)
    {
      break;
    }

    while (1)
    {
      ++v13;
      if (v15)
      {
        break;
      }

      if (v13 == 2)
      {
        goto LABEL_15;
      }

      v15 = 0;
    }
  }

  if (v16 != v17)
  {
    goto LABEL_15;
  }
}

__n128 sub_1AFC79A94@<Q0>(void **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 8);

  v5 = v3;
  sub_1AF6730AC(v4, v5);
  v8 = v6;

  result = v8;
  *a2 = v8;
  return result;
}

void (*sub_1AFC79B10(uint64_t *a1))(__n128 **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x18uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *&v1[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 8];

  v6 = v1;
  sub_1AF6730AC(v5, v6);
  v9 = v7;

  *v4 = v9;
  return sub_1AFC79BD8;
}

__n128 sub_1AFC79C7C(double (*a1)(uint64_t, char *))
{
  v3 = *&v1[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 8];

  v4 = v1;
  *&v5 = a1(v3, v4);
  v7 = v5;

  return v7;
}

void sub_1AFC79D44(__n128 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance);
  v3 = *(v1 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4);
  if (v2 == -1 && v3 == 0)
  {
    return;
  }

  v5 = *(v1 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 8);
  v6 = v2 | (v3 << 32);

  v7 = sub_1AF3CA0E0(v6);
  v9 = v8;
  v11 = v10;

  if (v11)
  {
    goto LABEL_6;
  }

  v14 = 0;
  *&v15 = v7;
  *(&v15 + 1) = v9;
  v16 = 1;
  while (!v16)
  {
    if (v14 == 3)
    {
      goto LABEL_6;
    }

    v16 = 0;
LABEL_10:
    ++v14;
  }

  v21 = a1;
  v17 = *(&v21 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3)));
  v22 = v15;
  v18 = *(&v22 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3)));
  v16 = v17 == v18;
  if (v14 != 3)
  {
    goto LABEL_10;
  }

  if (v17 != v18)
  {
LABEL_6:
    v12 = *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v12)
    {
      v13 = *(v12 + 80);
      swift_unknownObjectWeakLoadStrong();
      v12 = *(v12 + 56);
    }

    else
    {
      v13 = 0;
    }

    v24 = 0;
    swift_unknownObjectUnownedInit();
    v23[0] = v5;
    v24 = v12;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v25 = v13;
    sub_1AFC76C74(v23, v6, a1);
    sub_1AF579490(v23);
    if (v13)
    {
      v19 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v19 ^ 1);
    }
  }
}

__n128 sub_1AFC79F30@<Q0>(void **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 8);

  v5 = v3;
  sub_1AF673390(v4, v5);
  v8 = v6;

  result = v8;
  *a2 = v8;
  return result;
}

void (*sub_1AFC79FAC(uint64_t *a1))(__n128 **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x18uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *&v1[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 8];

  v6 = v1;
  sub_1AF673390(v5, v6);
  v9 = v7;

  *v4 = v9;
  return sub_1AFC7A074;
}

void sub_1AFC7A08C(__n128 **a1, uint64_t a2, void (*a3)(__n128))
{
  v3 = *a1;
  a3(**a1);

  free(v3);
}

__n128 sub_1AFC7A0E8(char *a1, uint64_t a2, double (*a3)(uint64_t, char *))
{
  v5 = *&a1[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 8];

  v6 = a1;
  *&v7 = a3(v5, v6);
  v9 = v7;

  return v9;
}

__n128 sub_1AFC7A184(double (*a1)(uint64_t, char *))
{
  v3 = *&v1[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 8];

  v4 = v1;
  *&v5 = a1(v3, v4);
  v7 = v5;

  return v7;
}

void sub_1AFC7A264(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance);
  v6 = *(v4 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 4);
  if (v5 != -1 || v6 != 0)
  {
    v8 = *(v4 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 8);
    v9 = v5 | (v6 << 32);

    sub_1AF3C9AB8(v9, v23);

    if ((v24 & 1) != 0 || (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v23[1], a2), vceqq_f32(v23[0], a1)), vandq_s8(vceqq_f32(v23[2], a3), vceqq_f32(v23[3], a4)))) & 0x80000000) == 0)
    {
      v10 = *(v8 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

      if (v10)
      {
        v11 = *(v10 + 80);
        swift_unknownObjectWeakLoadStrong();
        v10 = *(v10 + 56);
      }

      else
      {
        v11 = 0;
      }

      swift_unknownObjectUnownedInit();
      v20[0] = v8;
      v21 = v10;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      v22 = v11;
      sub_1AFC75940(v20, v9, a1, a2, a3, a4);
      sub_1AF579490(v20);
      if (v11)
      {
        v12 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v12 ^ 1);
      }

      v13 = *(v8 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

      if (v13)
      {
        v14 = *(v13 + 80);
        swift_unknownObjectWeakLoadStrong();
        v13 = *(v13 + 56);
      }

      else
      {
        v14 = 0;
      }

      v21 = 0;
      swift_unknownObjectUnownedInit();
      v20[0] = v8;
      v21 = v13;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      v22 = v14;
      sub_1AF6C150C(&type metadata for PerspectiveCamera, &off_1F2511ED0, v9);
      sub_1AF579490(v20);
      if (v14)
      {
        v15 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v15 ^ 1);
      }
    }
  }
}

__n128 sub_1AFC7A4F8@<Q0>(void **a1@<X0>, double (*a2)(uint64_t, id)@<X3>, _OWORD *a3@<X8>)
{
  v5 = *a1;
  v6 = *(*a1 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 8);

  v7 = v5;
  *&v8 = a2(v6, v7);
  v15 = v9;
  v16 = v8;
  v13 = v11;
  v14 = v10;

  *a3 = v16;
  a3[1] = v15;
  result = v13;
  a3[2] = v14;
  a3[3] = v13;
  return result;
}

void (*sub_1AFC7A590(uint64_t *a1))(__n128 **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = *&v1[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 8];

  v6 = v1;
  sub_1AF672CFC(v5, v6);
  v14 = v8;
  v15 = v7;
  v12 = v10;
  v13 = v9;

  *v4 = v15;
  v4[1] = v14;
  v4[2] = v13;
  v4[3] = v12;
  return sub_1AFC7A664;
}

void sub_1AFC7A664(__n128 **a1)
{
  v1 = *a1;
  sub_1AFC7A264(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

double sub_1AFC7A874()
{
  v1 = *&v0[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 8];

  v2 = v0;
  v3 = sub_1AF67501C(v1, v2);

  return v3;
}

void sub_1AFC7A94C(char *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = &a1[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
  v5 = *&a1[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 8];

  v6 = a1;
  v7 = sub_1AF671594(v5, v6);

  if (v7)
  {
    v8 = *v4;
    v9 = *(v4 + 1);
    if (v8 != -1 || v9 != 0)
    {
      v11 = v8 | (v9 << 32);

      v12 = sub_1AF3CEF50(v11);
      v14 = v13;

      if ((v12 & 0xFF00000000) != 0x200000000)
      {
        *a2 = v14;
        return;
      }
    }

    goto LABEL_13;
  }

  v15 = *v4;
  v16 = *(v4 + 1);
  v17 = v15 == -1 && v16 == 0;
  if (v17 || (v18 = v15 | (v16 << 32), , sub_1AF3CEE78(v18, v19), , v20 == 2))
  {
LABEL_13:
    *a2 = 0;
    return;
  }

  *a2 = v19[6];
}

float sub_1AFC7AA88(char *a1, uint64_t a2, float (*a3)(uint64_t, char *))
{
  v5 = *&a1[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 8];

  v6 = a1;
  v7 = a3(v5, v6);

  return v7;
}

float sub_1AFC7AB24(float (*a1)(uint64_t, char *))
{
  v3 = *&v1[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 8];

  v4 = v1;
  v5 = a1(v3, v4);

  return v5;
}

void sub_1AFC7ABA4(char *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = &a1[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
  v5 = *&a1[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 8];

  v6 = a1;
  v7 = sub_1AF671594(v5, v6);

  if (v7)
  {
    v8 = *v4;
    v9 = *(v4 + 1);
    if (v8 != -1 || v9 != 0)
    {
      v11 = v8 | (v9 << 32);

      v12 = sub_1AF3CEF50(v11);
      v14 = v13;

      if ((v12 & 0xFF00000000) != 0x200000000)
      {
        *a2 = v14;
        return;
      }
    }

    goto LABEL_13;
  }

  v15 = *v4;
  v16 = *(v4 + 1);
  v17 = v15 == -1 && v16 == 0;
  if (v17 || (v18 = v15 | (v16 << 32), , sub_1AF3CEE78(v18, v19), , v20 == 2))
  {
LABEL_13:
    *a2 = 0;
    return;
  }

  *a2 = v19[7];
}

uint64_t sub_1AFC7ACE4(char *a1, uint64_t a2, uint64_t (*a3)(uint64_t, char *))
{
  v5 = *&a1[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 8];

  v6 = a1;
  LOBYTE(a3) = a3(v5, v6);

  return a3 & 1;
}

uint64_t sub_1AFC7AD78(uint64_t (*a1)(uint64_t, char *))
{
  v3 = *&v1[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 8];

  v4 = v1;
  LOBYTE(a1) = a1(v3, v4);

  return a1 & 1;
}

void sub_1AFC7ADF0(char *a1@<X0>, char *a2@<X8>)
{
  v4 = &a1[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
  v5 = *&a1[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 8];

  v6 = a1;
  v7 = sub_1AF671594(v5, v6);

  if ((v7 & 1) == 0)
  {
    v16 = *v4;
    v17 = *(v4 + 1);
    if (v16 != -1 || v17 != 0)
    {
      v19 = v16 | (v17 << 32);

      sub_1AF3CEE78(v19, &v20);

      if (v21 != 2)
      {
        v15 = v21 & 1;
        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

  v8 = *v4;
  v9 = *(v4 + 1);
  if (v8 == -1 && v9 == 0)
  {
LABEL_14:
    v15 = 1;
    goto LABEL_15;
  }

  v11 = v8 | (v9 << 32);

  v12 = sub_1AF3CEF50(v11);
  v14 = v13;

  v15 = v14 & 1;
  if ((v12 & 0xFF00000000) == 0x200000000)
  {
    v15 = 1;
  }

LABEL_15:
  *a2 = v15;
}

uint64_t sub_1AFC7AF8C()
{
  v1 = *&v0[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 8];

  v2 = v0;
  sub_1AF6752F8(v1, v2);
  v4 = v3;

  return v4;
}

void sub_1AFC7AFFC(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = &a1[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
  v5 = *&a1[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 8];

  v6 = a1;
  v7 = sub_1AF671594(v5, v6);

  if ((v7 & 1) == 0)
  {
    v14 = *v4;
    v15 = *(v4 + 1);
    if (v14 != -1 || v15 != 0)
    {
      v17 = v14 | (v15 << 32);

      sub_1AF3CEE78(v17, &v18);

      if (v19 != 2)
      {
        LODWORD(v13) = (v19 >> 8) & 1;
        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

  v8 = *v4;
  v9 = *(v4 + 1);
  if (v8 == -1 && v9 == 0)
  {
LABEL_14:
    LOBYTE(v13) = 0;
    goto LABEL_15;
  }

  v11 = v8 | (v9 << 32);

  v12 = sub_1AF3CEF50(v11);

  v13 = HIDWORD(v12) & 1;
  if ((v12 & 0xFF00000000) == 0x200000000)
  {
    LOBYTE(v13) = 0;
  }

LABEL_15:
  *a2 = v13;
}

id VFXCoreCamera.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VFXCoreCamera.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VFXCoreCamera();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1AFC7B210()
{
  result = qword_1EB643B10;
  if (!qword_1EB643B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643B10);
  }

  return result;
}

unint64_t sub_1AFC7B268()
{
  result = qword_1EB643B18;
  if (!qword_1EB643B18)
  {
    sub_1AF82352C(255, &qword_1EB643B20, &type metadata for VFXCoreCameraProjectionDirection, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643B18);
  }

  return result;
}

unint64_t sub_1AFC7B9F4()
{
  result = qword_1EB643B98;
  if (!qword_1EB643B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643B98);
  }

  return result;
}

uint64_t sub_1AFC7BA48(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1AFC07518(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1AF0D5A54(i, v11);
      sub_1AFC88CA0(0, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1AFC07518(v5 > 1, v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1AFC7BB7C(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_1AFDFE368();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1AF0D5A54(i, v5);
    sub_1AF0D4478(0, &qword_1ED721F80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1AFDFE328();
    sub_1AFDFE398();
    sub_1AFDFE3A8();
    sub_1AFDFE348();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_1AFC7BC88(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_1AFDFE368();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1AF0D5A54(i, v5);
    type metadata accessor for CGColor(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1AFDFE328();
    sub_1AFDFE398();
    sub_1AFDFE3A8();
    sub_1AFDFE348();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

id sub_1AFC7BD74(void (*a1)(void), uint64_t a2)
{
  v4 = v2;
  v7 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v8 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v8)
  {
    v11 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v12 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v12)
    {
      pthread_mutex_lock(v12);
      if (*(v4 + v7))
      {
        goto LABEL_6;
      }
    }

    else
    {
      [*(v4 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) lock];
      if (*(v4 + v7))
      {
LABEL_6:
        sub_1AFC7BD74(a1, a2);
        v13 = *(v4 + v11);
        if (v13)
        {
          return pthread_mutex_unlock(v13);
        }

        return [*(v4 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      }
    }

    sub_1AF65E3F4();
    a1();
    if (v3)
    {
      sub_1AF6786A4(v4);
      v13 = *(v4 + v11);
      if (v13)
      {
        return pthread_mutex_unlock(v13);
      }
    }

    else
    {
      sub_1AF6786A4(v4);
      v13 = *(v4 + v11);
      if (v13)
      {
        return pthread_mutex_unlock(v13);
      }
    }

    return [*(v4 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

  v9 = *(v8 + 144);

  v10 = pthread_self();
  if (pthread_equal(v9, v10))
  {
    sub_1AF65E3F4();
    a1();
    sub_1AF6786A4(v4);
  }

  else
  {
    sub_1AFC7BF18(a1);
  }
}

uint64_t sub_1AFC7BF18(void (*a1)(uint64_t))
{
  pthread_mutex_lock(*(v1 + 64));
  v3 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1AF65E3F4();
  }

  a1(Strong);
  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v6 = v3(&runtime_thread_is_locked);
  --*v6;
  return pthread_mutex_unlock(*(v1 + 64));
}

uint64_t sub_1AFC7BFF8()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX9VFXEffect_entityObject);
  if (v1)
  {
    v2 = *&v1[OBJC_IVAR____TtC3VFX15VFXEntityObject_entity];
    if (!swift_weakLoadStrong())
    {
      if (*&v1[OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager])
      {
      }

      else
      {
        v5 = qword_1ED730EA0;
        v6 = v1;
        if (v5 != -1)
        {
          swift_once();
        }

        v7 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v9 = v7;
          swift_once();
          v7 = v9;
        }

        v11 = 0;
        sub_1AF0D4F18(v7, &v11, 0xD000000000000021, 0x80000001AFF2E730);
        type metadata accessor for EntityManager();
        swift_allocObject();
        sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
      }
    }

    goto LABEL_14;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    if (*(v0 + OBJC_IVAR____TtC3VFX9VFXEffect_rootEntity + 8))
    {

      return 0;
    }

    v2 = *(v0 + OBJC_IVAR____TtC3VFX9VFXEffect_rootEntity);
LABEL_14:

    return v2;
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD00000000000001CLL, 0x80000001AFF4C3C0);
  v10 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v10);

  MEMORY[0x1B2718AE0](0xD000000000000035, 0x80000001AFF4C400);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFC7C2E4()
{
  if (*(v0 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID + 4))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID);
  }
}

uint64_t sub_1AFC7C334()
{
  if (*(v0 + OBJC_IVAR____TtC3VFX9VFXEffect_rootEntity + 8))
  {
    return 0;
  }

  if (*(v0 + OBJC_IVAR____TtC3VFX9VFXEffect_rootEntity) == 0xFFFFFFFFLL)
  {
    return 0;
  }

  return *(v0 + OBJC_IVAR____TtC3VFX9VFXEffect_rootEntity);
}

uint64_t sub_1AFC7C4B8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);

    return v2;
  }

  else
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000001CLL, 0x80000001AFF4C3C0);
    v4 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v4);

    MEMORY[0x1B2718AE0](0xD000000000000035, 0x80000001AFF4C400);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFC7C604()
{
  v17 = MEMORY[0x1E69E8050];
  sub_1AFC88A68(0, &qword_1EB6329C8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v16 - v3;
  sub_1AFC7C890();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v0 + OBJC_IVAR____TtC3VFX9VFXEffect_onEffectRestartSubject);
  sub_1AF0D4478(0, &qword_1ED72F8A0);

  v11 = sub_1AFDFDB08();
  v18 = v11;
  v12 = sub_1AFDFDAD8();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = MEMORY[0x1E695BF70];
  sub_1AFC89000(0, &qword_1EB632B30, MEMORY[0x1E695BF70]);
  sub_1AFC7E014(&qword_1EB632B38, &qword_1EB632B30, v13);
  sub_1AFC7C97C();
  sub_1AFDFC6A8();
  sub_1AFC88F88(v4, &qword_1EB6329C8, v17);

  sub_1AFC7C9E4();
  v14 = sub_1AFDFC698();
  (*(v7 + 8))(v10, v6);
  return v14;
}

void sub_1AFC7C890()
{
  if (!qword_1EB632B58)
  {
    v0 = MEMORY[0x1E695BF70];
    sub_1AFC89000(255, &qword_1EB632B30, MEMORY[0x1E695BF70]);
    sub_1AF0D4478(255, &qword_1ED72F8A0);
    sub_1AFC7E014(&qword_1EB632B38, &qword_1EB632B30, v0);
    sub_1AFC7C97C();
    v1 = sub_1AFDFC5C8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB632B58);
    }
  }
}

unint64_t sub_1AFC7C97C()
{
  result = qword_1EB6329C0;
  if (!qword_1EB6329C0)
  {
    sub_1AF0D4478(255, &qword_1ED72F8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6329C0);
  }

  return result;
}

unint64_t sub_1AFC7C9E4()
{
  result = qword_1EB632B60;
  if (!qword_1EB632B60)
  {
    sub_1AFC7C890();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632B60);
  }

  return result;
}

uint64_t sub_1AFC7CA3C()
{
  v1 = v0;
  v2 = **(sub_1AFC7C4B8() + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);

  v3 = (v1 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID);
  if (*(v1 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID + 4))
  {
    v4 = 0;
    v5 = 1;
  }

  else
  {
    v4 = *v3;
    v5 = *v3 == 0;
  }

  LOBYTE(v55[0]) = v5;
  v51 = sub_1AFD04FFC(v4 | (v5 << 32), v2);
  v48 = sub_1AFC7C4B8();

  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v61 = qword_1ED73B840;
  v62 = 0;
  v63 = 2;
  v64 = 0;
  v65 = 2;
  v66 = 0;
  sub_1AFCC6FEC(1, 1, v52);
  sub_1AFC88A68(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C620;
  *(inited + 32) = &type metadata for Parent;
  *(inited + 40) = &off_1F2529C18;
  *(inited + 48) = &type metadata for PointOfView;
  *(inited + 56) = &off_1F2511DD0;
  sub_1AF5D1EC0(inited, v53);
  sub_1AFC891DC(v52, sub_1AFC88E60);
  swift_setDeallocating();
  v7 = sub_1AFC7C4B8();
  if (v3[1])
  {
    v8 = 0x200000000;
  }

  else
  {
    v8 = *v3 | ((*v3 == 0) << 33);
  }

  v59[0] = v53[0];
  v59[1] = v53[1];
  v60 = v54;
  sub_1AF6B06C0(v7, v59, v8, v55);

  if (*&v55[0])
  {
    v10 = v58;
    if (v58 >= 1)
    {
      v11 = v56;
      v12 = v57;
      v13 = thread_worker_index(v9);
      v15 = *(v14 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
      if (*v13 != -1)
      {
        v15 += 8 * *v13 + 8;
      }

      v16 = *(*v15 + 32);
      ecs_stack_allocator_push_snapshot(v16);
      v47 = v16;
      v17 = ecs_stack_allocator_allocate(v16, 8 * v10, 4);
      if (v12)
      {
        v45 = v17;
        v46 = v1;
        v18 = 0;
        v49 = v17 + 4;
        v50 = &v11[12 * v12];
        do
        {
          v19 = *(v11 + 2);
          v20 = *(v11 + 5);
          if (v19)
          {
            v21 = *(v11 + 4);

            if (v21)
            {
              v22 = &v49[8 * v18];
              do
              {
                v24 = *v19++;
                v23 = v24;

                if (*(v20 + 184))
                {
                  goto LABEL_39;
                }

                v26 = *(*(v20 + 168) + 4 * v23);
                v27 = *(*(v25 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v26 + 8);

                *(v22 - 1) = v26;
                *v22 = v27;
                ++v18;
                v22 += 8;
                --v21;
              }

              while (v21);
            }
          }

          else
          {
            v29 = *v11;
            v28 = v11[1];

            if (v29 != v28)
            {
              v30 = &v49[8 * v18];
              do
              {

                if (*(v20 + 184))
                {
                  goto LABEL_39;
                }

                v32 = *(*(v20 + 168) + 4 * v29);
                v33 = v29 + 1;
                v34 = *(*(v31 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v32 + 8);

                *(v30 - 1) = v32;
                *v30 = v34;
                ++v18;
                v30 += 8;
                v29 = v33;
              }

              while (v28 != v33);
            }
          }

          v11 += 12;
        }

        while (v11 != v50);
        v35 = v45;
        v1 = v46;
        if (v18)
        {
          do
          {
            v36 = *v35;
            v37 = v35[1];
            if (v36 != v51 || v37 != HIDWORD(v51))
            {
              v39 = v35;
              Strong = swift_unknownObjectWeakLoadStrong();
              if (!Strong)
              {
                while (1)
                {
                  sub_1AFDFE218();
                  MEMORY[0x1B2718AE0](0xD00000000000001CLL, 0x80000001AFF4C3C0);
                  v44 = sub_1AFDFEA08();
                  MEMORY[0x1B2718AE0](v44);

                  MEMORY[0x1B2718AE0](0xD000000000000035, 0x80000001AFF4C400);
LABEL_39:
                  sub_1AFDFE518();
                  __break(1u);
                }
              }

              v41 = *&Strong[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];

              sub_1AF5ABF9C(v51, v48, v36 | (v37 << 32), v41);
              v35 = v39;
            }

            v35 += 2;
          }

          while (v35 != &v45[2 * v18]);
        }
      }

      ecs_stack_allocator_pop_snapshot(v47);
    }

    sub_1AFC88DF0(v55, &qword_1ED725EA0, &type metadata for QueryResult);
  }

  result = sub_1AFC891DC(v53, sub_1AFC88E60);
  v43 = v1 + OBJC_IVAR____TtC3VFX9VFXEffect_rootEntity;
  *v43 = v51;
  *(v43 + 8) = 0;
  return result;
}

uint64_t sub_1AFC7CFF0()
{
  v1 = v0;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v33 = qword_1ED73B840;
  v34 = 0;
  v35 = 2;
  v36 = 0;
  v37 = 2;
  v38 = 0;
  sub_1AFCC6FEC(1, 1, v14);
  sub_1AFC88A68(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C620;
  *(inited + 32) = &type metadata for Parent;
  *(inited + 40) = &off_1F2529C18;
  *(inited + 48) = &type metadata for PointOfView;
  *(inited + 56) = &off_1F2511DD0;
  sub_1AF5D1EC0(inited, v15);
  sub_1AFC891DC(v14, sub_1AFC88E60);
  swift_setDeallocating();
  v3 = sub_1AFC7C4B8();
  if (*(v0 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID + 4))
  {
    v4 = 0x200000000;
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID) | ((*(v0 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID) == 0) << 33);
  }

  v31[0] = v15[0];
  v31[1] = v15[1];
  v32 = v16;
  sub_1AF6B06C0(v3, v31, v4, &v17);

  if (!v17)
  {
    return sub_1AFC891DC(v15, sub_1AFC88E60);
  }

  v29 = v22;
  v27 = v20;
  v28 = v21;
  v24 = v17;
  v30 = v23;
  v25 = v18;
  v26 = v19;
  if (*(&v22 + 1) != 1)
  {
    sub_1AFC7CA3C();
    sub_1AFC88DF0(&v17, &qword_1ED725EA0, &type metadata for QueryResult);
    return sub_1AFC891DC(v15, sub_1AFC88E60);
  }

  sub_1AF6BA358(0);
  v6 = v5;

  v7 = sub_1AF6496EC(v6);

  sub_1AFC7C4B8();

  v8 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  v9 = [v8 UUIDString];

  sub_1AFDFCEF8();
  if (HIDWORD(v7) || v7 != -1)
  {

    MEMORY[0x1EEE9AC00](v11, v12);
    sub_1AFC75668(0, sub_1AFC88EE0);
    sub_1AFC88DF0(&v17, &qword_1ED725EA0, &type metadata for QueryResult);
    sub_1AFC891DC(v15, sub_1AFC88E60);
  }

  else
  {
    sub_1AFC88DF0(&v17, &qword_1ED725EA0, &type metadata for QueryResult);
    sub_1AFC891DC(v15, sub_1AFC88E60);
  }

  v13 = v1 + OBJC_IVAR____TtC3VFX9VFXEffect_rootEntity;
  *v13 = v7;
  *(v13 + 8) = 0;
  return result;
}

void sub_1AFC7D3EC()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = *&Strong[OBJC_IVAR____TtC3VFX9VFXEffect_delegate];
  swift_unknownObjectRetain();

  if (v1)
  {
    v2 = swift_unknownObjectUnownedLoadStrong();
    [v1 effectDidRestart_];

    swift_unknownObjectRelease();
  }
}

id sub_1AFC7D484()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC3VFX9VFXEffect_effectID];
  *v2 = 0;
  v2[4] = 1;
  v3 = OBJC_IVAR____TtC3VFX9VFXEffect_url;
  v4 = sub_1AFDFC128();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = &v1[OBJC_IVAR____TtC3VFX9VFXEffect_rootEntity];
  *v5 = 0;
  v5[8] = 1;
  *&v1[OBJC_IVAR____TtC3VFX9VFXEffect_entityObject] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC3VFX9VFXEffect_delegate] = 0;
  *&v1[OBJC_IVAR____TtC3VFX9VFXEffect_version] = 0;
  v6 = OBJC_IVAR____TtC3VFX9VFXEffect_onEffectRestartSubject;
  sub_1AFC89000(0, &qword_1EB632B30, MEMORY[0x1E695BF70]);
  swift_allocObject();
  *&v1[v6] = sub_1AFDFC618();
  *&v1[OBJC_IVAR____TtC3VFX9VFXEffect_cancellables] = MEMORY[0x1E69E7CD0];
  v1[OBJC_IVAR____TtC3VFX9VFXEffect__enabled] = 1;
  v1[OBJC_IVAR____TtC3VFX9VFXEffect__tombstoned] = 0;
  swift_unknownObjectWeakAssign();
  *v2 = 0;
  v2[4] = 1;
  v7 = &v1[OBJC_IVAR____TtC3VFX9VFXEffect_name];
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for VFXEffect();
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_1AFC7D640(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC3VFX9VFXEffect_effectID];
  *v10 = 0;
  v10[4] = 1;
  v11 = OBJC_IVAR____TtC3VFX9VFXEffect_url;
  v12 = sub_1AFDFC128();
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  v13 = &v5[OBJC_IVAR____TtC3VFX9VFXEffect_rootEntity];
  *v13 = 0;
  v13[8] = 1;
  *&v5[OBJC_IVAR____TtC3VFX9VFXEffect_entityObject] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC3VFX9VFXEffect_delegate] = 0;
  *&v5[OBJC_IVAR____TtC3VFX9VFXEffect_version] = 0;
  v14 = OBJC_IVAR____TtC3VFX9VFXEffect_onEffectRestartSubject;
  sub_1AFC89000(0, &qword_1EB632B30, MEMORY[0x1E695BF70]);
  swift_allocObject();
  *&v5[v14] = sub_1AFDFC618();
  *&v5[OBJC_IVAR____TtC3VFX9VFXEffect_cancellables] = MEMORY[0x1E69E7CD0];
  v5[OBJC_IVAR____TtC3VFX9VFXEffect__enabled] = 1;
  v5[OBJC_IVAR____TtC3VFX9VFXEffect__tombstoned] = 0;
  swift_unknownObjectWeakAssign();
  *v10 = a2;
  v10[4] = 0;
  v15 = &v5[OBJC_IVAR____TtC3VFX9VFXEffect_name];
  *v15 = a3;
  v15[1] = a4;
  v21.receiver = v5;
  v21.super_class = type metadata accessor for VFXEffect();
  v16 = objc_msgSendSuper2(&v21, sel_init);
  sub_1AFC7C604();
  v17 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1AFC88FF8;
  *(v18 + 24) = v17;
  v19 = MEMORY[0x1E695BED0];
  sub_1AFC89000(0, &qword_1EB632B48, MEMORY[0x1E695BED0]);
  sub_1AFC7E014(&qword_1EB632B50, &qword_1EB632B48, v19);
  sub_1AFDFC6B8();

  sub_1AFDFC5D8();

  sub_1AFC7CFF0();

  return v16;
}

char *sub_1AFC7D91C(char *a1, unint64_t a2)
{
  v53 = type metadata accessor for BundleInfo();
  MEMORY[0x1EEE9AC00](v53, v5);
  v55 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v54 = &v50 - v9;
  v10 = [objc_allocWithZone(v2) init];
  swift_unknownObjectWeakAssign();
  v11 = v10;
  v12 = sub_1AF700FA8(0xFFFFFFFF);
  LOBYTE(v62) = 0;
  v13 = sub_1AF80F414(v12 ^ 0x80000000);
  v14 = &v11[OBJC_IVAR____TtC3VFX9VFXEffect_effectID];
  *v14 = v13;
  v14[4] = 0;
  v15 = sub_1AFDFC028();
  v16 = &v11[OBJC_IVAR____TtC3VFX9VFXEffect_name];
  *v16 = v15;
  v16[1] = v17;

  v18 = OBJC_IVAR____TtC3VFX9VFXEffect_url;
  sub_1AFC88F88(&v11[OBJC_IVAR____TtC3VFX9VFXEffect_url], &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
  v19 = sub_1AFDFC128();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v11[v18], a2, v19);
  v58 = v20;
  v59 = v19;
  (*(v20 + 56))(&v11[v18], 0, 1, v19);
  v21 = sub_1AFC7C4B8();
  v22 = *v14;
  v23 = *&a1[OBJC_IVAR____TtC3VFX8VFXScene_loader];
  v24 = v14[4];
  v25 = a1;
  v26 = *&a1[OBJC_IVAR____TtC3VFX8VFXScene_legacyRenderer];

  LOBYTE(v62) = v24;
  if (v24)
  {
    v27 = 0;
  }

  else
  {
    v27 = v22;
  }

  v28 = v55;
  v60 = a2;
  v56 = v23;
  v29 = v57;
  v30 = sub_1AF81249C(v55, a2, 0, v21, v26, v27 | (v24 << 32));
  if (v29)
  {

    (*(v58 + 8))(v60, v59);
  }

  else
  {
    v51 = v22;
    v52 = v26;
    v57 = v25;
    v31 = v30;
    v32 = v54;
    sub_1AF81FF3C(v28, v54);
    v31(v21, 7, 0);
    v55 = 0;
    if ((v24 & 1) == 0)
    {
      v35 = *(v21 + 184);

      v36 = v55;
      v37 = sub_1AF6D6574(&type metadata for EffectsRegistry, &off_1F2537360, v35);

      v62 = v37;
      v38 = sub_1AF70DE00(&v61, v51);
      v39 = v62;
      MEMORY[0x1EEE9AC00](v38, v40);
      *(&v50 - 2) = v39;
      v41 = v32;
      v42 = *(v21 + 184);
      MEMORY[0x1EEE9AC00](v43, v44);
      *(&v50 - 2) = sub_1AF70102C;
      *(&v50 - 1) = v45;

      sub_1AF6D655C(&type metadata for EffectsRegistry, &off_1F2537360, v42, sub_1AF6FFFE8);
      v55 = v36;
      v32 = v41;
    }

    v34 = v57;
    v46 = *(v32 + *(v53 + 24));
    sub_1AFC891DC(v32, type metadata accessor for BundleInfo);

    *&v11[OBJC_IVAR____TtC3VFX9VFXEffect_version] = v46;

    v62 = sub_1AFC7C604();
    v47 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v48 = swift_allocObject();
    *(v48 + 16) = sub_1AFC892C0;
    *(v48 + 24) = v47;
    v49 = MEMORY[0x1E695BED0];
    sub_1AFC89000(0, &qword_1EB632B48, MEMORY[0x1E695BED0]);
    sub_1AFC7E014(&qword_1EB632B50, &qword_1EB632B48, v49);
    sub_1AFDFC6B8();

    sub_1AFDFC5D8();

    sub_1AFC7CFF0();

    (*(v58 + 8))(v60, v59);
  }

  return v11;
}

uint64_t sub_1AFC7DF38()
{
  v1 = v0;
  v2 = MEMORY[0x1E695BF70];
  sub_1AFC89000(0, &qword_1EB632B30, MEMORY[0x1E695BF70]);
  sub_1AFC7E014(&qword_1EB632B40, &qword_1EB632B30, v2);
  sub_1AFDFC638();
  v3 = sub_1AFC7C4B8();
  sub_1AF66164C(v3, v1);
}

uint64_t sub_1AFC7E014(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_1AFC89000(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AFC7E120()
{
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v2 = v0;
    swift_once();
    v0 = v2;
  }

  v3 = 0;
  return sub_1AF0D4F18(v0, &v3, 0xD000000000000034, 0x80000001AFF4C380);
}

uint64_t sub_1AFC7E204()
{
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v2 = v0;
    swift_once();
    v0 = v2;
  }

  v3 = 0;
  return sub_1AF0D4F18(v0, &v3, 0xD000000000000034, 0x80000001AFF4C380);
}

uint64_t sub_1AFC7E2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1AFC7C4B8();
  v10 = v4;

  v11 = sub_1AF675A8C(v9, v10, a1, a2, a3, a4);

  return v11;
}

uint64_t sub_1AFC7E36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1AF6AC0F4(a1, a2, a5 & 0xFFFFFFFFFFLL, 1);
  if ((v9 & 1) == 0 && v8 != 0xFFFFFFFF)
  {
    v10 = v8 ? v8 : 0xFFFFFFFFLL;
    if (HIDWORD(v8) || v10 != -1)
    {
      v11 = v8 & 0xFFFFFFFF00000000;

      v12 = sub_1AF685FD8(v11 | v10, v5);

      if (v12 >= 2)
      {
        type metadata accessor for BindingPropertyDescription();
        v13 = swift_dynamicCastClass();
        if (v13)
        {
          v14 = sub_1AFC7F448(v11 | v10, a1, a2, v13);
          sub_1AF0DB74C(v12);
          return v14;
        }

        sub_1AF0DB74C(v12);
      }
    }
  }

  return 0;
}

uint64_t sub_1AFC7E554(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1AFC7C4B8();
  v8 = v3;

  sub_1AF675E9C(v7, v8, a1, a2, a3);
  v10 = v9;

  return v10;
}

uint64_t sub_1AFC7E5E4@<X0>(unint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_1AFC7C4B8();
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  if (v5 == -1 && HIDWORD(a1) == 0)
  {
    goto LABEL_13;
  }

  v7 = a1 & 0xFFFFFFFF00000000;

  v8 = sub_1AF685FD8(a1 & 0xFFFFFFFF00000000 | v5, v4);

  if (v8 < 2)
  {
    goto LABEL_13;
  }

  type metadata accessor for BindingPropertyDescription();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    sub_1AF0DB74C(v8);
LABEL_13:

    v16 = 0;
    goto LABEL_14;
  }

  v10 = v9;
  v11 = sub_1AF3C9078(v7 | v5);
  if (v12)
  {
    v13 = v11;
    v14 = v12;
  }

  else
  {
    v17 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v17);

    MEMORY[0x1B2718AE0](93, 0xE100000000000000);
    v13 = 0x5B64656D616E6E55;
    v14 = 0xE800000000000000;
  }

  v16 = sub_1AFC7F448(v7 | v5, v13, v14, v10);

  result = sub_1AF0DB74C(v8);
LABEL_14:
  *a2 = v16;
  return result;
}

uint64_t sub_1AFC7E844(uint64_t a1, uint64_t a2)
{
  sub_1AFC7C4B8();
  if (*(v2 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID + 4))
  {
    v5 = 0x200000000;
  }

  else
  {
    v5 = *(v2 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID) | ((*(v2 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID) == 0) << 33);
  }

  v6 = sub_1AFC7E8C4(a1, a2, v5);

  return v6;
}

uint64_t sub_1AFC7E8C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = sub_1AF440BDC(MEMORY[0x1E69E7CC0]);
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v64 = qword_1ED73B840;
  v65 = 0;
  v66 = 2;
  v67 = 0;
  v68 = 2;
  v69 = 0;
  sub_1AFCC701C(1, 1, &v52);
  v58 = v52;
  v59 = v53;
  v60 = v54;
  v61 = v55 | 1;
  v62 = v56;
  v63 = v57;

  v7 = sub_1AF675534(v6, v3, &v58, a3 & 0xFFFFFFFFFFLL, &v51);

  sub_1AFC891DC(&v52, sub_1AF6784F0);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC8];
  }

  v9 = 0;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;
LABEL_12:
  while (v12)
  {
LABEL_16:
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v16 = (v9 << 9) | (8 * v15);
    v17 = (*(v8 + 48) + v16);
    v19 = *v17;
    v18 = v17[1];
    v20 = *(*(v8 + 56) + v16);
    if (v19 != -1 || v18)
    {
      if (v19 == -1)
      {
        if (v18)
        {

          goto LABEL_11;
        }
      }

      else
      {
        v48 = v18;
        v21 = OBJC_IVAR____TtC3VFX13EntityManager__entries;

        if ((v19 & 0x80000000) == 0 && *(v4 + v21 + 8) > v19)
        {
          v22 = (*(v4 + v21) + 12 * v19);
          if (v48 == -1 || v22[2] == v48)
          {
            v24 = *(v22 + 2);
            v25 = *(*(v4 + 144) + 8 * *v22 + 32);
            v26 = *(v25 + 48);
            v27 = (v26 + 32);
            v28 = *(v26 + 16) + 1;
            do
            {
              if (!--v28)
              {
                goto LABEL_11;
              }

              v29 = v27 + 5;
              v30 = *v27;
              v27 += 5;
            }

            while (v30 != &type metadata for Name);
            v31 = (&(*(v29 - 2))[v24].Kind + *(v25 + 128));
            v33 = *v31;
            v32 = v31[1];

            if (v20 >> 62)
            {
              v34 = sub_1AFDFE108();
              if (v34)
              {
                goto LABEL_31;
              }
            }

            else
            {
              v34 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v34)
              {
LABEL_31:
                v44 = v33;
                v45 = v32;
                v46 = v4;
                v35 = 0;
                v36 = v20;
                v47 = v20 & 0xC000000000000001;
                while (1)
                {
                  v38 = v34;
                  if (v47)
                  {
                    v39 = MEMORY[0x1B2719C70](v35, v36);
                  }

                  else
                  {
                    v39 = *(v36 + 8 * v35 + 32);
                  }

                  v40 = *(v39 + 16) == a1 && *(v39 + 24) == a2;
                  if (v40 || (sub_1AFDFEE28() & 1) != 0)
                  {
                    type metadata accessor for BindingPropertyDescription();
                    v37 = swift_dynamicCastClass();
                    if (v37)
                    {
                      break;
                    }
                  }

                  ++v35;

                  v34 = v38;
                  if (v38 == v35)
                  {

                    v4 = v46;
                    goto LABEL_12;
                  }
                }

                v42 = v37;

                v43 = sub_1AFC7F448(v19 | (v48 << 32), v44, v45, v42);

                return v43;
              }
            }

            continue;
          }
        }

LABEL_11:
      }
    }
  }

  while (1)
  {
    v14 = v9 + 1;
    if (v9 + 1 >= v13)
    {
      break;
    }

    v12 = *(v8 + 8 * v9++ + 72);
    if (v12)
    {
      v9 = v14;
      goto LABEL_16;
    }
  }

  return 0;
}

uint64_t sub_1AFC7EDB8()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX9VFXEffect_entityObject);
  if (!v1)
  {
    sub_1AFC7C4B8();
    if (*(v0 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID + 4))
    {
      v8 = 0x200000000;
    }

    else
    {
      v8 = *(v0 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID) | ((*(v0 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID) == 0) << 33);
    }

    v9 = sub_1AFC7F614(v8, 0, 0);

    return v9;
  }

  v40 = MEMORY[0x1E69E7CC0];
  v2 = &v1[OBJC_IVAR____TtC3VFX15VFXEntityObject_entity];
  v3 = *&v1[OBJC_IVAR____TtC3VFX15VFXEntityObject_entity];
  v4 = *&v1[OBJC_IVAR____TtC3VFX15VFXEntityObject_entity + 4];
  if (v3 == -1 && v4 == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = v3 | (v4 << 32);
  if (swift_weakLoadStrong())
  {
    v7 = v1;
  }

  else if (*&v1[OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager])
  {
    v11 = v1;
  }

  else
  {
    v12 = qword_1ED730EA0;
    v13 = v1;
    if (v12 != -1)
    {
      swift_once();
    }

    v14 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v34 = v14;
      swift_once();
      v14 = v34;
    }

    v39[0] = 0;
    sub_1AF0D4F18(v14, v39, 0xD000000000000021, 0x80000001AFF2E730);
    type metadata accessor for EntityManager();
    swift_allocObject();
    sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
  }

  v38 = sub_1AF3C9078(v6);
  v16 = v15;

  if (!v16)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v18 = *v2;
  v17 = *(v2 + 1);
  if (!swift_weakLoadStrong())
  {
    if (*&v1[OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager])
    {
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v19 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v35 = v19;
        swift_once();
        v19 = v35;
      }

      v39[0] = 0;
      sub_1AF0D4F18(v19, v39, 0xD000000000000021, 0x80000001AFF2E730);
      type metadata accessor for EntityManager();
      swift_allocObject();
      sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
    }
  }

  v20 = v18 == -1 && v17 == 0;
  if (v20 || (, v21 = sub_1AF3D11F4(v18 | (v17 << 32)), v23 = v22, , !v21))
  {
  }

  else
  {
    v37 = v16;
    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = sub_1AFC85778(*(v23 + 16), 0);
      sub_1AFC869B0(v39, (v25 + 32), v24, v23);

      sub_1AF0FBB14();
    }

    else
    {
      v25 = MEMORY[0x1E69E7CC0];
    }

    if ((v25 & 0x8000000000000000) != 0 || (v25 & 0x4000000000000000) != 0)
    {
      v27 = sub_1AFDFE108();
      if (v27)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v27 = *(v25 + 16);
      if (v27)
      {
LABEL_44:
        v28 = 0;
        v26 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if ((v25 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1B2719C70](v28, v25);
          }

          else
          {
          }

          type metadata accessor for BindingPropertyDescription();
          v29 = swift_dynamicCastClass();
          if (!v29 || *(v29 + 240))
          {
          }

          else
          {
            v30 = v29;
            Strong = swift_unknownObjectWeakLoadStrong();
            if (!Strong)
            {
              v39[0] = 0;
              v39[1] = 0xE000000000000000;
              sub_1AFDFE218();
              MEMORY[0x1B2718AE0](0xD00000000000001CLL, 0x80000001AFF4C3C0);
              v36 = sub_1AFDFEA08();
              MEMORY[0x1B2718AE0](v36);

              MEMORY[0x1B2718AE0](0xD000000000000035, 0x80000001AFF4C400);
              result = sub_1AFDFE518();
              __break(1u);
              return result;
            }

            v32 = Strong;

            sub_1AFC7F448(v6, v38, v16, v30);

            v33 = swift_unknownObjectRetain();
            MEMORY[0x1B2718E00](v33);
            if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1AFDFD458();
            }

            sub_1AFDFD4B8();
            swift_unknownObjectRelease();

            v26 = v40;
            v16 = v37;
          }

          if (v27 == ++v28)
          {

            goto LABEL_39;
          }
        }
      }
    }
  }

  v26 = MEMORY[0x1E69E7CC0];
LABEL_39:

  return v26;
}

uint64_t sub_1AFC7F448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 216))
  {
    v27 = *(a4 + 216);
  }

  else
  {

    v27 = a4;
  }

  if (*(a4 + 176))
  {
    v23 = *(a4 + 176);
    v24 = *(a4 + 168);
  }

  else
  {
    v23 = 0xE000000000000000;
    v24 = 0;
  }

  v5 = *(a4 + 232);
  v20 = *(a4 + 224);
  v6 = *(a4 + 24);
  v22 = *(a4 + 16);
  v21 = sub_1AFC4E7A8();
  v19 = sub_1AFC4EA4C(*(a4 + 144));
  v7 = *(a4 + 184);
  v8 = *(a4 + 188);
  v9 = *(a4 + 192);
  v10 = *(a4 + 196);
  v11 = *(a4 + 240);
  v12 = *(a4 + 256);
  if (v12)
  {
    v13 = *(a4 + 264);
    v14 = *(a4 + 248);
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  if (v10)
  {
    v15 = 1.79769313e308;
  }

  else
  {
    v15 = v9;
  }

  if (v8)
  {
    v16 = 2.22507386e-308;
  }

  else
  {
    v16 = v7;
  }

  type metadata accessor for BindingImpl();
  v17 = swift_allocObject();
  swift_weakInit();
  *(v17 + 24) = v20;
  *(v17 + 32) = v5;
  *(v17 + 40) = a1;
  *(v17 + 48) = a2;
  *(v17 + 56) = a3;
  *(v17 + 64) = v22;
  *(v17 + 72) = v6;
  *(v17 + 80) = v24;
  *(v17 + 88) = v23;
  *(v17 + 96) = v21;
  *(v17 + 104) = v19;
  *(v17 + 112) = v16;
  *(v17 + 120) = v15;
  *(v17 + 128) = v11 == 0;
  *(v17 + 136) = v14;
  *(v17 + 144) = v12;
  *(v17 + 152) = v13;
  *(v17 + 160) = v27;
  swift_weakAssign();

  return v17;
}

uint64_t sub_1AFC7F614(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v49 = MEMORY[0x1E69E7CC0];
  v48 = sub_1AF440BDC(MEMORY[0x1E69E7CC0]);
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v62 = qword_1ED73B840;
  v63 = 0;
  v64 = 2;
  v65 = 0;
  v66 = 2;
  v67 = 0;
  sub_1AFCC701C(1, 1, &v50);
  v56 = v50;
  v57 = v51;
  v58 = v52;
  v59 = v53 | 1;
  v60 = v54;
  v61 = v55;

  v7 = sub_1AF675534(v6, v3, &v56, a1 & 0xFFFFFFFFFFLL, &v48);

  sub_1AFC891DC(&v50, sub_1AF6784F0);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC8];
  }

  v9 = 0;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v47 = MEMORY[0x1E69E7CC0];
  v13 = (v10 + 63) >> 6;
LABEL_12:
  if (v12)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v14 = v9 + 1;
    if (v9 + 1 >= v13)
    {
      break;
    }

    v12 = *(v8 + 8 * v9++ + 72);
    if (v12)
    {
      v9 = v14;
LABEL_16:
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v16 = (v9 << 9) | (8 * v15);
      v17 = (*(v8 + 48) + v16);
      v19 = *v17;
      v18 = v17[1];
      v20 = *(*(v8 + 56) + v16);
      if (__PAIR64__(v18, v19) != 0xFFFFFFFF)
      {
        v21 = v18;
        if (v19 == -1)
        {
          if (v18)
          {

            goto LABEL_11;
          }
        }

        else
        {
          v22 = OBJC_IVAR____TtC3VFX13EntityManager__entries;

          if ((v19 & 0x80000000) == 0 && *(v4 + v22 + 8) > v19)
          {
            v23 = (*(v4 + v22) + 12 * v19);
            if (v21 == -1 || v23[2] == v21)
            {
              v44 = v19 | (v21 << 32);
              v25 = *(v23 + 2);
              v26 = *(*(v4 + 144) + 8 * *v23 + 32);
              v27 = *(v26 + 48);
              v28 = (v27 + 32);
              v29 = *(v27 + 16) + 1;
              do
              {
                if (!--v29)
                {
                  goto LABEL_11;
                }

                v30 = v28 + 5;
                v31 = *v28;
                v28 += 5;
              }

              while (v31 != &type metadata for Name);
              v32 = (&(*(v30 - 2))[v25].Kind + *(v26 + 128));
              v33 = v32[1];
              v42 = *v32;

              v43 = v33;

              if (v20 >> 62)
              {
                v34 = sub_1AFDFE108();
                if (v34)
                {
                  goto LABEL_30;
                }
              }

              else
              {
                v34 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v34)
                {
LABEL_30:
                  v35 = 0;
                  v36 = v20 & 0xC000000000000001;
                  v41 = v34;
                  do
                  {
                    if (v36)
                    {
                      MEMORY[0x1B2719C70](v35, v20);
                    }

                    else
                    {
                    }

                    type metadata accessor for BindingPropertyDescription();
                    v37 = swift_dynamicCastClass();
                    if (v37 && ((a3 & 1) != 0 || !*(v37 + 240)))
                    {
                      v38 = sub_1AFC7F448(v44, v42, v43, v37);
                      if ((a2 & 1) != 0 || [v38 type] != 23)
                      {
                        v39 = swift_unknownObjectRetain();
                        MEMORY[0x1B2718E00](v39);
                        if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                        {
                          sub_1AFDFD458();
                        }

                        sub_1AFDFD4B8();
                        swift_unknownObjectRelease();

                        v47 = v49;
                      }

                      else
                      {

                        swift_unknownObjectRelease();
                      }

                      v36 = v20 & 0xC000000000000001;
                      v34 = v41;
                    }

                    else
                    {
                    }

                    ++v35;
                  }

                  while (v34 != v35);
                }
              }

              goto LABEL_12;
            }
          }

LABEL_11:
        }
      }

      goto LABEL_12;
    }
  }

  return v47;
}

uint64_t sub_1AFC7FA7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_1AFC7C4B8();
  if (*(v5 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID + 4))
  {
    v12 = 0x200000000;
  }

  else
  {
    v12 = *(v5 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID) | ((*(v5 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID) == 0) << 33);
  }

  sub_1AF66C6B4(v11, v11, a1, a2, v12, a3, a4, a5);
}

uint64_t sub_1AFC7FCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1AFC7C4B8();
  MEMORY[0x1EEE9AC00](v10, v11);
  v16[2] = v12;
  v16[3] = a1;
  v16[4] = a2;
  v17 = v13;
  v18 = v14;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  sub_1AFC7BD74(sub_1AFC87ED4, v16);
}

uint64_t sub_1AFC7FE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
    swift_retain_n();

    sub_1AF66CB6C(v10, v10, a1, a2, a3, a4);
  }

  else
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000001CLL, 0x80000001AFF4C3C0);
    v12 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v12);

    MEMORY[0x1B2718AE0](0xD000000000000035, 0x80000001AFF4C400);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFC80010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = sub_1AFC7C4B8();
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = a4;
  sub_1AFC7BD74(sub_1AFC87F08, v9);
}

uint64_t sub_1AFC80090()
{
  sub_1AFC7C4B8();

  v1 = sub_1AFDFD1E8();
  if (*(v0 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID + 4))
  {
    v3 = 0x200000000;
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID) | ((*(v0 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID) == 0) << 33);
  }

  v4 = sub_1AF6AC0F4(v1, v2, v3, 1);
  v6 = v5;

  if (v6 & 1 | (v4 == 0xFFFFFFFFLL))
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1AFC80168()
{
  result = sub_1AFC80090();
  if (v1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1AFC801F4(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5)
{
  v10 = sub_1AFC7C4B8();

  sub_1AF66189C(v10, v10, a1, a2, a3, 23, a4, a5);
}

uint64_t sub_1AFC8035C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t), uint64_t a6)
{
  v12 = sub_1AFC7C4B8();

  sub_1AF66189C(v12, v12, a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1AFC804DC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v10 = sub_1AFC7C4B8();

  sub_1AF661BB4(v10, v10, a1, a2, a3, 23, 0, a4, a5);
}

uint64_t sub_1AFC80650(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7)
{
  v14 = sub_1AFC7C4B8();

  sub_1AF661BB4(v14, v14, a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1AFC807E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_1AFC80090();
  if ((v11 & 1) == 0)
  {
    v12 = result;
    v13 = swift_allocObject();
    *(v13 + 16) = a5;
    *(v13 + 24) = a6;
    v14 = sub_1AFC7C4B8();

    sub_1AF661BB4(v14, v14, v12, a3, a4, 23, 0, sub_1AFC87F2C, v13);
  }

  return result;
}

uint64_t sub_1AFC80A60(uint64_t a1, uint64_t a2, char a3)
{
  v7 = sub_1AFC7C4B8();
  if (*(v3 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID + 4))
  {
    v8 = 0x200000000;
  }

  else
  {
    v8 = *(v3 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID) | ((*(v3 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID) == 0) << 33);
  }

  sub_1AF6621E4(v7, v7, a1, a2, v8, a3 & 1);
}

uint64_t sub_1AFC80B84(uint64_t a1, uint64_t a2)
{
  v5 = sub_1AFC7C4B8();
  if (*(v2 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID + 4))
  {
    v6 = 0x200000000;
  }

  else
  {
    v6 = *(v2 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID) | ((*(v2 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID) == 0) << 33);
  }

  v7 = sub_1AF671A7C(v5, v5, a1, a2, v6);

  return v7 & 1;
}

uint64_t sub_1AFC80C94(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);

    v8 = v2;

    v9 = sub_1AF676254(v7, v8, a1, a2);

    return v9;
  }

  else
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000001CLL, 0x80000001AFF4C3C0);
    v11 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v11);

    MEMORY[0x1B2718AE0](0xD000000000000035, 0x80000001AFF4C400);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFC80E94(unint64_t a1, uint64_t a2)
{
  v5 = sub_1AFC7C4B8();
  swift_unknownObjectRetain();
  sub_1AF6624F0(v5, v2, a1, a2);
}

void sub_1AFC80F08(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1AFC7C4B8();
  v8 = v7;
  v9 = HIDWORD(a2);
  if (a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = 0xFFFFFFFFLL;
  }

  v18[2] = a3;
  if (v10 == -1 && v9 == 0)
  {
    goto LABEL_18;
  }

  if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  if (*(v7 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) <= v10)
  {
    goto LABEL_18;
  }

  v12 = (*(v7 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v10);
  if (v9 != 0xFFFFFFFF && v12[2] != HIDWORD(a2))
  {
    goto LABEL_18;
  }

  v13 = *(v12 + 2);
  v14 = *(*(v7 + 144) + 8 * *v12 + 32);
  if (*(v14 + 232) > v13 || *(v14 + 240) <= v13)
  {
    goto LABEL_18;
  }

  v16 = **(v7 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  v17 = *(v14 + 344);

  os_unfair_lock_lock(v17);
  ecs_stack_allocator_push_snapshot(*(v16 + 32));

  sub_1AFCC71F8(v16, v14, v13, v8, a2 & 0xFFFFFFFF00000000 | v10, sub_1AFC890EC, v18);
  if (!v4)
  {

    ecs_stack_allocator_pop_snapshot(*(v16 + 32));
    os_unfair_lock_unlock(*(v14 + 344));

LABEL_18:
    sub_1AF678B44(a2 & 0xFFFFFFFF00000000 | v10);

    return;
  }

  os_unfair_lock_unlock(*(v14 + 344));
  __break(1u);
}

uint64_t sub_1AFC811C0()
{
  v1 = sub_1AFC7C4B8();
  v2 = v0;
  v3 = sub_1AF671D7C(v1, v2);

  return v3 & 1;
}

uint64_t sub_1AFC81298(char a1)
{
  v3 = sub_1AFC7C4B8();
  sub_1AF662800(v3, v1, a1);
}

void sub_1AFC812FC(void **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1AFC7C4B8();
  v5 = v3;
  v6 = sub_1AF671D7C(v4, v5);

  *a2 = v6 & 1;
}

uint64_t sub_1AFC81368(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1AFC7C4B8();
  sub_1AF662800(v4, v3, v2);
}

uint64_t (*sub_1AFC813D0(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = sub_1AFC7C4B8();
  v4 = v1;
  v5 = sub_1AF671D7C(v3, v4);
  *(a1 + 8) = 0;

  *(a1 + 16) = v5 & 1;
  return sub_1AFC81464;
}

uint64_t sub_1AFC81464(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 16);
  v3 = sub_1AFC7C4B8();
  sub_1AF662800(v3, v1, v2);
}

void sub_1AFC814C8(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v5 = a2 & 1;
    *(a1 + OBJC_IVAR____TtC3VFX9VFXEffect__enabled) = v5;
    if ((*(a1 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID + 4) & 1) == 0)
    {
      v6 = *(a1 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID);
      sub_1AFC7C4B8();

      sub_1AF662AEC(v7, v5, v7, v6);
    }
  }
}

uint64_t sub_1AFC81630(uint64_t result)
{
  if (v1[OBJC_IVAR____TtC3VFX9VFXEffect__tombstoned] != (result & 1))
  {
    v1[OBJC_IVAR____TtC3VFX9VFXEffect__tombstoned] = result & 1;
    v2 = sub_1AFC7C4B8();
    sub_1AF662D68(v2, v1);
  }

  return result;
}

unsigned __int8 *sub_1AFC816BC(unsigned __int8 *result, void **a2)
{
  v2 = *result;
  v3 = *a2;
  if (v2 != *(*a2 + OBJC_IVAR____TtC3VFX9VFXEffect__tombstoned))
  {
    v3[OBJC_IVAR____TtC3VFX9VFXEffect__tombstoned] = v2;
    v4 = sub_1AFC7C4B8();
    sub_1AF662D68(v4, v3);
  }

  return result;
}

uint64_t (*sub_1AFC8174C(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR____TtC3VFX9VFXEffect__tombstoned;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_1AFC81780;
}

uint64_t sub_1AFC81780(uint64_t result)
{
  v2 = *result;
  v1 = *(result + 8);
  v3 = *(result + 16);
  if (v3 != *(*result + v1))
  {
    v2[v1] = v3;
    v4 = sub_1AFC7C4B8();
    sub_1AF662D68(v4, v2);
  }

  return result;
}

uint64_t sub_1AFC818A4()
{
  v1 = sub_1AFC7C4B8();
  v2 = v0;
  sub_1AF6765C0(v1, v2);
  v4 = v3;

  return v4;
}

uint64_t sub_1AFC81904@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v81 = qword_1ED73B840;
  v82 = 0;
  v83 = 2;
  v84 = 0;
  v85 = 2;
  v86 = 0;
  sub_1AFC88A68(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C620;
  *(inited + 32) = &type metadata for PointOfView;
  *(inited + 40) = &off_1F2511DD0;
  *(inited + 48) = &type metadata for WorldTransform;
  *(inited + 56) = &off_1F2529AF8;
  sub_1AF5F58E4(inited, 1, v71);
  swift_setDeallocating();
  v7 = sub_1AFC7C4B8();
  v8 = (a1 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID);
  if (*(a1 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID + 4))
  {
    v9 = 0x200000000;
  }

  else
  {
    v9 = *v8 | ((*v8 == 0) << 33);
  }

  sub_1AF6B06C0(v7, v71, v9, v72);
  v67 = *&v72[32];
  v68 = v73;
  v69 = v74;
  v70 = v75;
  v65 = *v72;
  v66 = *&v72[16];

  v64 = MEMORY[0x1E69E7CC0];
  v52 = *v72;
  if (!*v72)
  {
    result = sub_1AF692DB0(v71);
LABEL_33:
    v44 = MEMORY[0x1E69E7CC0];
LABEL_35:
    *a2 = v44;
    return result;
  }

  v51 = *&v72[40];
  v10 = *(&v73 + 1);
  v87 = *(&v74 + 1);
  v76 = *&v72[8];
  v77 = *&v72[24];
  if (v75 <= 0 || !*(&v73 + 1))
  {
    sub_1AF692DB0(v71);
    result = sub_1AFC88DF0(v72, &qword_1ED725EA0, &type metadata for QueryResult);
    goto LABEL_33;
  }

  v47 = v8;
  v11 = v87[4];
  v55 = *(v74 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v63[2] = v67;
  v63[3] = v68;
  v63[4] = v69;
  v63[5] = v70;
  v63[0] = v65;
  v63[1] = v66;
  sub_1AF5DD298(v63, v61);
  v12 = 0;
  v48 = MEMORY[0x1E69E7CC0];
  v49 = v11;
  v50 = v10;
  while (1)
  {
    v53 = v12;
    v54 = v3;
    v13 = (v51 + 48 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(v13 + 2);
    v18 = *(v13 + 4);
    v17 = *(v13 + 5);
    if (v55)
    {
      v19 = *(v17 + 376);

      os_unfair_lock_lock(v19);
      os_unfair_lock_lock(*(v17 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v11);
    v20 = v87;
    v21 = *(v87 + 4);
    v61[0] = *(v87 + 3);
    v61[1] = v21;
    v62 = v87[10];
    v22 = *(*(*(*(v17 + 40) + 16) + 32) + 16) + 1;
    v20[6] = ecs_stack_allocator_allocate(v87[4], 48 * v22, 8);
    v20[7] = v22;
    v20[9] = 0;
    v20[10] = 0;
    v20[8] = 0;
    if (!v16)
    {
      break;
    }

    if (v18)
    {
      while (1)
      {
        v24 = *v16++;
        v23 = v24;

        if (*(v17 + 184))
        {
          goto LABEL_39;
        }

        v26 = *(*(v17 + 168) + 4 * v23);
        v27 = *(*(v25 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v26 + 8);

        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong)
        {
          goto LABEL_36;
        }

        v29 = *&Strong[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];

        v30 = type metadata accessor for VFXCoreCamera();
        v31 = objc_allocWithZone(v30);
        v32 = &v31[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
        *v32 = v26;
        *(v32 + 1) = v27;
        *(v32 + 1) = v29;
        v56.receiver = v31;
        v56.super_class = v30;
        v33 = objc_msgSendSuper2(&v56, sel_init);
        MEMORY[0x1B2718E00]();
        if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1AFDFD458();
        }

        sub_1AFDFD4B8();

        if (!--v18)
        {
          goto LABEL_28;
        }
      }
    }

LABEL_29:
    v78 = v52;
    v79 = v76;
    v80 = v77;
    sub_1AF630994(v87, &v78, v61);
    v3 = v54;
    sub_1AF62D29C(v17);
    v11 = v49;
    ecs_stack_allocator_pop_snapshot(v49);
    if (v55)
    {
      os_unfair_lock_unlock(*(v17 + 344));
      os_unfair_lock_unlock(*(v17 + 376));
    }

    v12 = v53 + 1;
    if (v53 + 1 == v50)
    {
      sub_1AF692DB0(v71);
      sub_1AFC88DF0(v72, &qword_1ED725EA0, &type metadata for QueryResult);
      result = sub_1AFC88DF0(v72, &qword_1ED725EA0, &type metadata for QueryResult);
      v44 = v48;
      goto LABEL_35;
    }
  }

  if (v15 == v14)
  {
    goto LABEL_29;
  }

  while (1)
  {

    if (*(v17 + 184))
    {
      break;
    }

    v35 = *(*(v17 + 168) + 4 * v15);
    v36 = *(*(v34 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v35 + 8);

    v37 = swift_unknownObjectWeakLoadStrong();
    if (!v37)
    {
LABEL_36:
      v59 = 0;
      v60 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD00000000000001CLL, 0x80000001AFF4C3C0);
      v45 = *v47;
      if (*(v47 + 4))
      {
        v45 = 0;
      }

      v58 = v45;
      v46 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v46);

      MEMORY[0x1B2718AE0](0xD000000000000035, 0x80000001AFF4C400);
      break;
    }

    v38 = *&v37[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];

    v39 = type metadata accessor for VFXCoreCamera();
    v40 = objc_allocWithZone(v39);
    v41 = &v40[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
    *v41 = v35;
    *(v41 + 1) = v36;
    *(v41 + 1) = v38;
    v57.receiver = v40;
    v57.super_class = v39;
    v42 = objc_msgSendSuper2(&v57, sel_init);
    MEMORY[0x1B2718E00]();
    if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AFDFD458();
    }

    ++v15;
    sub_1AFDFD4B8();

    if (v14 == v15)
    {
LABEL_28:
      v48 = v64;
      goto LABEL_29;
    }
  }

LABEL_39:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFC8203C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1AFC7C4B8();
  v6 = v2;

  sub_1AF6767FC(v5, v6, a1, a2);
  v8 = v7;

  return v8;
}

uint64_t sub_1AFC820BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v102 = a3;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v96 = qword_1ED73B840;
  v97 = 0;
  v98 = 2;
  v99 = 0;
  v100 = 2;
  v101 = 0;
  sub_1AF702CBC(1, v76);
  sub_1AFC88A68(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE4C620;
  *(v9 + 32) = &type metadata for PointOfView;
  *(v9 + 40) = &off_1F2511DD0;
  *(v9 + 48) = &type metadata for WorldTransform;
  *(v9 + 56) = &off_1F2529AF8;
  sub_1AF5F903C(v77);
  sub_1AFC88D80(v76, &qword_1EB643C18, &type metadata for Name, &off_1F2535068);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v10 = sub_1AFC7C4B8();
  v11 = (a1 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID);
  if (*(a1 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID + 4))
  {
    v12 = 0x200000000;
  }

  else
  {
    v12 = *v11 | ((*v11 == 0) << 33);
  }

  v88[0] = v77[0];
  v88[1] = v77[1];
  v89 = v78;
  sub_1AF6B06C0(v10, v88, v12, &v79);

  v61 = v79;
  if (!v79)
  {
    result = sub_1AFC88D80(v77, &qword_1EB643C18, &type metadata for Name, &off_1F2535068);
    goto LABEL_45;
  }

  v67 = v86;
  v13 = v84;
  v58 = v82;
  v59 = v83;
  v57 = v80;
  v60 = *(&v79 + 1);
  v56 = v81;
  v75 = MEMORY[0x1E69E7CC0];
  if (v87 <= 0 || !v84)
  {
    sub_1AFC88D80(v77, &qword_1EB643C18, &type metadata for Name, &off_1F2535068);
    result = sub_1AFC88DF0(&v79, &qword_1ED725EA0, &type metadata for QueryResult);
LABEL_45:
    v15 = MEMORY[0x1E69E7CC0];
LABEL_47:
    *a4 = v15;
    return result;
  }

  v53 = v11;
  v54 = a4;
  v66 = *(v86 + 32);
  v65 = *(v85 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  sub_1AFC8906C(&v79, v73, &qword_1ED725EA0, &type metadata for QueryResult);
  sub_1AFC8906C(&v79, v73, &qword_1ED725EA0, &type metadata for QueryResult);
  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  v55 = v13;
  while (1)
  {
    v63 = v14;
    v64 = v5;
    v16 = (v59 + 48 * v14);
    v18 = *v16;
    v17 = v16[1];
    v19 = *(v16 + 2);
    v62 = *(v16 + 3);
    v20 = *(v16 + 4);
    v21 = *(v16 + 5);
    if (v65)
    {
      v22 = *(v21 + 376);

      os_unfair_lock_lock(v22);
      os_unfair_lock_lock(*(v21 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v66);
    v23 = *(v67 + 64);
    v73[0] = *(v67 + 48);
    v73[1] = v23;
    v74 = *(v67 + 80);
    v24 = *(*(*(*(v21 + 40) + 16) + 32) + 16) + 1;
    *(v67 + 48) = ecs_stack_allocator_allocate(*(v67 + 32), 48 * v24, 8);
    *(v67 + 56) = v24;
    *(v67 + 72) = 0;
    *(v67 + 80) = 0;
    *(v67 + 64) = 0;
    v25 = sub_1AF64B110(&type metadata for Name, &off_1F2535068, v19, v62, v20, v67);
    if (v19)
    {
      if (v20)
      {
        v26 = (v25 + 8);
        while (1)
        {
          v28 = *v19++;
          v27 = v28;
          v29 = *(v26 - 1) == a2 && *v26 == v102;
          if (v29 || (sub_1AFDFEE28() & 1) != 0)
          {

            if (*(v21 + 184))
            {
              goto LABEL_51;
            }

            v31 = *(*(v21 + 168) + 4 * v27);
            v32 = *(*(v30 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v31 + 8);

            Strong = swift_unknownObjectWeakLoadStrong();
            if (!Strong)
            {
              goto LABEL_48;
            }

            v34 = *&Strong[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];

            v35 = type metadata accessor for VFXCoreCamera();
            v36 = objc_allocWithZone(v35);
            v37 = &v36[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
            *v37 = v31;
            *(v37 + 1) = v32;
            *(v37 + 1) = v34;
            v68.receiver = v36;
            v68.super_class = v35;
            v38 = objc_msgSendSuper2(&v68, sel_init);
            MEMORY[0x1B2718E00]();
            if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1AFDFD458();
            }

            sub_1AFDFD4B8();

            v15 = v75;
          }

          v26 += 2;
          if (!--v20)
          {
            goto LABEL_29;
          }
        }
      }

      goto LABEL_29;
    }

    if (v18 != v17)
    {
      break;
    }

LABEL_29:
    v90 = v61;
    v91 = v60;
    v92 = BYTE4(v60);
    v93 = v57;
    v94 = v56;
    v95 = v58;
    sub_1AF630994(v67, &v90, v73);
    v5 = v64;
    sub_1AF62D29C(v21);
    ecs_stack_allocator_pop_snapshot(v66);
    if (v65)
    {
      os_unfair_lock_unlock(*(v21 + 344));
      os_unfair_lock_unlock(*(v21 + 376));
    }

    v14 = v63 + 1;
    if (v63 + 1 == v55)
    {
      sub_1AFC88D80(v77, &qword_1EB643C18, &type metadata for Name, &off_1F2535068);
      sub_1AFC88DF0(&v79, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFC88DF0(&v79, &qword_1ED725EA0, &type metadata for QueryResult);
      result = sub_1AFC88DF0(&v79, &qword_1ED725EA0, &type metadata for QueryResult);
      a4 = v54;
      goto LABEL_47;
    }
  }

  v39 = (v25 + 16 * v18 + 8);
  while (1)
  {
    v40 = *(v39 - 1) == a2 && *v39 == v102;
    if (v40 || (sub_1AFDFEE28() & 1) != 0)
    {
      break;
    }

LABEL_33:
    ++v18;
    v39 += 2;
    if (v17 == v18)
    {
      goto LABEL_29;
    }
  }

  if (*(v21 + 184))
  {
    goto LABEL_51;
  }

  v42 = *(*(v21 + 168) + 4 * v18);
  v43 = *(*(v41 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v42 + 8);

  v44 = swift_unknownObjectWeakLoadStrong();
  if (v44)
  {
    v45 = *&v44[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];

    v46 = type metadata accessor for VFXCoreCamera();
    v47 = objc_allocWithZone(v46);
    v48 = &v47[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
    *v48 = v42;
    *(v48 + 1) = v43;
    *(v48 + 1) = v45;
    v69.receiver = v47;
    v69.super_class = v46;
    v49 = objc_msgSendSuper2(&v69, sel_init);
    MEMORY[0x1B2718E00]();
    if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AFDFD458();
    }

    sub_1AFDFD4B8();

    v15 = v75;
    goto LABEL_33;
  }

LABEL_48:
  v71 = 0;
  v72 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD00000000000001CLL, 0x80000001AFF4C3C0);
  v51 = *v53;
  if (*(v53 + 4))
  {
    v51 = 0;
  }

  v70 = v51;
  v52 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v52);

  MEMORY[0x1B2718AE0](0xD000000000000035, 0x80000001AFF4C400);
LABEL_51:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFC82A24()
{
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  sub_1AFDFE218();

  v20[1] = 0xEF20746365666665;
  v1 = [v0 description];
  v2 = sub_1AFDFCEF8();
  v4 = v3;

  MEMORY[0x1B2718AE0](v2, v4);

  v5 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v19 = v5;
    swift_once();
    v5 = v19;
  }

  v20[0] = 0;
  sub_1AF0D4F18(v5, v20, 0x20676E69706D7564, 0xEF20746365666665);

  if (v0[OBJC_IVAR____TtC3VFX9VFXEffect_rootEntity + 8])
  {
    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    sub_1AFDFE218();

    strcpy(v20, "effect ");
    v20[1] = 0xE700000000000000;
    v6 = [v0 description];
    v7 = sub_1AFDFCEF8();
    v9 = v8;

    MEMORY[0x1B2718AE0](v7, v9);

    MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF4C440);
  }

  else
  {
    v10 = *&v0[OBJC_IVAR____TtC3VFX9VFXEffect_rootEntity];
    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    sub_1AFDFE218();

    strcpy(v20, "root entity: ");
    HIWORD(v20[1]) = -4864;
    v11 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v11);

    MEMORY[0x1B2718AE0](0x6F7473626D6F7420, 0xEC0000003A64656ELL);
    sub_1AFC7C4B8();
    v12 = sub_1AF67CACC(&type metadata for Tombstone, &off_1F2532360, v10);

    if (v12)
    {
      v13 = 1702195828;
    }

    else
    {
      v13 = 0x65736C6166;
    }

    if (v12)
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v14 = 0xE500000000000000;
    }

    MEMORY[0x1B2718AE0](v13, v14);
  }

  v15 = v20[0];
  v16 = v20[1];
  v17 = sub_1AFDFDA08();
  v20[0] = 0;
  sub_1AF0D4F18(v17, v20, v15, v16);
}

id VFXEffect.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VFXEffect();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AFC82E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v8 = *(a2 + 16);
  v48[0] = *a2;
  v48[1] = v8;
  v49 = *(a2 + 32);
  sub_1AF6B06C0(a1, v48, a3 & 0xFFFFFFFFFFLL, v35);
  v29 = *v35;
  if (*v35)
  {
    v9 = *&v35[40];
    v10 = *(&v36 + 1);
    v11 = *(&v37 + 1);
    v40 = *&v35[8];
    v41 = *&v35[24];
    v27 = v38;
    v28 = v37;
    if (v38 > 0 && *(&v36 + 1))
    {
      v26 = a5;
      v12 = *(*(&v37 + 1) + 32);
      v55 = *(v37 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v34[2] = *&v35[32];
      v34[3] = v36;
      v34[4] = v37;
      v34[5] = v38;
      v34[0] = *v35;
      v34[1] = *&v35[16];
      sub_1AF5DD298(v34, v50);
      v13 = (v9 + 24);
      while (1)
      {
        v33 = v6;
        v15 = *(v13 - 6);
        v14 = *(v13 - 5);
        v16 = *(v13 - 4);
        v31 = *v13;
        v32 = *(v13 - 1);
        v17 = v13[1];
        v18 = v13[2];
        if (v55)
        {
          v19 = *(v18 + 376);

          os_unfair_lock_lock(v19);
          os_unfair_lock_lock(*(v18 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v12);

        sub_1AF630914(v20, v11, v39);

        LOBYTE(v42) = 1;
        v50[0] = v28;
        v50[1] = v18;
        v50[2] = v11;
        v50[3] = v16;
        v50[4] = (v14 - v15 + v16);
        v50[5] = v27;
        v50[6] = v15;
        v50[7] = v14;
        v50[8] = 0;
        v50[9] = 0;
        v51 = 1;
        v52 = v32;
        v53 = v31;
        v54 = v17;
        sub_1AFD1220C(v50, a4);
        if (v33)
        {
          break;
        }

        v45 = v29;
        v46 = v40;
        v47 = v41;
        sub_1AF630994(v11, &v45, v39);
        v6 = 0;
        sub_1AF62D29C(v18);
        ecs_stack_allocator_pop_snapshot(v12);
        if (v55)
        {
          os_unfair_lock_unlock(*(v18 + 344));
          os_unfair_lock_unlock(*(v18 + 376));
        }

        v13 += 6;
        if (!--v10)
        {
          sub_1AFC88DF0(v35, &qword_1ED725EA0, &type metadata for QueryResult);
          sub_1AFC88DF0(v35, &qword_1ED725EA0, &type metadata for QueryResult);
          a5 = v26;
          goto LABEL_14;
        }
      }

      v42 = v29;
      v43 = v40;
      v44 = v41;
      sub_1AF630994(v11, &v42, v39);
      sub_1AF62D29C(v18);
      ecs_stack_allocator_pop_snapshot(v12);
      os_unfair_lock_unlock(*(v18 + 344));
      os_unfair_lock_unlock(*(v18 + 376));
      __break(1u);
      goto LABEL_20;
    }

    sub_1AFC88DF0(v35, &qword_1ED725EA0, &type metadata for QueryResult);
  }

LABEL_14:

  v22 = sub_1AFC87CB0(v21, sub_1AFC8923C);

  if (*(v22 + 16))
  {
    sub_1AF446384();
    v23 = sub_1AFDFE5C8();
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC8];
  }

  *&v34[0] = v23;

  sub_1AFC87754(v24, 1, v34);
  if (!v6)
  {

    *a5 = *&v34[0];
    return result;
  }

LABEL_20:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_1AFC83220(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x1E69E7CC0];
  v53 = MEMORY[0x1E69E7CC0];
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v73 = qword_1ED73B840;
  v74 = 0;
  v75 = 2;
  v76 = 0;
  v77 = 2;
  v78 = 0;
  sub_1AF705008(1, &v54);
  v67 = v54;
  v68 = v55;
  v69 = v56;
  v70 = v57 | 1;
  v71 = v58;
  v72 = v59;
  sub_1AF6B06C0(a3, &v67, 0x200000000, v60);
  v48 = a2 >> 62;
  if (*&v60[0])
  {
    if (v63 > 0)
    {
      v36 = *(&v61 + 1);
      if (*(&v61 + 1))
      {
        v35 = *(&v60[2] + 1);
        v41 = *(v62 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v42 = *(&v62 + 1);
        v40 = *(*(&v62 + 1) + 32);
        v64 = *&v60[0];
        v65 = *(v60 + 8);
        v66 = *(&v60[1] + 8);
        v51[2] = v60[2];
        v51[3] = v61;
        v51[4] = v62;
        v51[5] = v63;
        v51[0] = v60[0];
        v51[1] = v60[1];
        sub_1AF5DD298(v51, v49);
        v7 = 0;
        v8 = a2 & 0xFFFFFFFFFFFFFF8;
        v45 = a2 & 0xFFFFFFFFFFFFFF8;
        if (a2 < 0)
        {
          v8 = a2;
        }

        v44 = v8;
        v9 = a2 & 0xC000000000000001;
        while (1)
        {
          v39 = v7;
          v10 = (v35 + 48 * v7);
          v37 = *v10;
          v43 = v10[1];
          v12 = *(v10 + 2);
          v11 = *(v10 + 3);
          v13 = *(v10 + 5);
          v47 = *(v10 + 4);
          if (v41)
          {
            v14 = *(v13 + 376);

            os_unfair_lock_lock(v14);
            os_unfair_lock_lock(*(v13 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v40);
          v15 = v42;
          v16 = *(v42 + 4);
          v49[0] = *(v42 + 3);
          v49[1] = v16;
          v50 = v42[10];
          v17 = *(*(*(*(v13 + 40) + 16) + 32) + 16) + 1;
          v42[6] = ecs_stack_allocator_allocate(v42[4], 48 * v17, 8);
          v15[7] = v17;
          v15[9] = 0;
          v15[10] = 0;
          v15[8] = 0;
          v38 = v13;
          v46 = sub_1AF64B110(&type metadata for GraphScriptingConfig, &off_1F253C070, v12, v11, v47, v15);
          if (v12)
          {
            if (v47)
            {
              v18 = 0;
              while (1)
              {
                if (v48)
                {
                  v19 = sub_1AFDFE108();
                  if (v19)
                  {
LABEL_21:
                    v20 = 0;
                    do
                    {
                      if (v9)
                      {
                        v21 = MEMORY[0x1B2719C70](v20, a2);
                      }

                      else
                      {
                        v21 = *(a2 + 8 * v20 + 32);
                      }

                      ++v20;
                      v52 = v21;
                      sub_1AFC83858(&v52, v46 + 32 * v18, a1, &v53);
                    }

                    while (v19 != v20);
                  }
                }

                else
                {
                  v19 = *(v45 + 16);
                  if (v19)
                  {
                    goto LABEL_21;
                  }
                }

                if (++v18 == v47)
                {
                  goto LABEL_28;
                }
              }
            }

            goto LABEL_28;
          }

          v22 = v37;
          if (v37 != v43)
          {
            break;
          }

LABEL_28:
          sub_1AF630994(v42, &v64, v49);
          sub_1AF62D29C(v38);
          ecs_stack_allocator_pop_snapshot(v40);
          if (v41)
          {
            os_unfair_lock_unlock(*(v38 + 43));
            os_unfair_lock_unlock(*(v38 + 47));
          }

          v7 = v39 + 1;
          if (v39 + 1 == v36)
          {
            sub_1AFC88DF0(v60, &qword_1ED725EA0, &type metadata for QueryResult);
            sub_1AFC88DF0(v60, &qword_1ED725EA0, &type metadata for QueryResult);
            v6 = MEMORY[0x1E69E7CC0];
            goto LABEL_44;
          }
        }

        while (1)
        {
          if (v48)
          {
            v23 = sub_1AFDFE108();
            if (v23)
            {
LABEL_35:
              v24 = 0;
              do
              {
                if (v9)
                {
                  v25 = MEMORY[0x1B2719C70](v24, a2);
                }

                else
                {
                  v25 = *(a2 + 8 * v24 + 32);
                }

                ++v24;
                v52 = v25;
                sub_1AFC83858(&v52, v46 + 32 * v22, a1, &v53);
              }

              while (v23 != v24);
            }
          }

          else
          {
            v23 = *(v45 + 16);
            if (v23)
            {
              goto LABEL_35;
            }
          }

          if (++v22 == v43)
          {
            goto LABEL_28;
          }
        }
      }
    }

    sub_1AFC88DF0(v60, &qword_1ED725EA0, &type metadata for QueryResult);
  }

LABEL_44:
  *&v51[0] = v6;
  if (v48)
  {
    v26 = sub_1AFDFE108();
  }

  else
  {
    v26 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = v53;

  if (v26)
  {
    v28 = 0;
    v48 = a2 & 0xC000000000000001;
    do
    {
      if (v48)
      {
        v30 = MEMORY[0x1B2719C70](v28, a2);
        v29 = v30;
      }

      else
      {
        v29 = *(a2 + 8 * v28 + 32);
      }

      v52 = v29;
      MEMORY[0x1EEE9AC00](v30, v31);
      v34[2] = &v52;

      v32 = sub_1AF7B9934(sub_1AFC89244, v34, v27);

      if (v32)
      {
      }

      else
      {
        sub_1AFDFE328();
        sub_1AFDFE398();
        sub_1AFDFE3A8();
        sub_1AFDFE348();
      }

      ++v28;
    }

    while (v26 != v28);
  }

  sub_1AFC88D80(&v54, &qword_1EB63D280, &type metadata for GraphScriptingConfig, &off_1F253C070);

  return a1;
}
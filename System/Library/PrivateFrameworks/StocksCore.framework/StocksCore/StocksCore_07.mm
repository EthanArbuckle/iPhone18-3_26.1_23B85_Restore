void *sub_1DAB02B38(uint64_t a1, uint64_t a2)
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

  sub_1DAA6149C(0, &qword_1EE11F4E0, &type metadata for Watchlist, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 3) + (v7 >> 63));
  return result;
}

void *sub_1DAB02BE0(uint64_t a1, uint64_t a2)
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

  sub_1DAA6149C(0, &qword_1EE11F4E8, &type metadata for Headline, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0xE38E38E38E38E39) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 3) + (v7 >> 63));
  return result;
}

void *sub_1DAB02C90(uint64_t a1, uint64_t a2)
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

  sub_1DAA6149C(0, &qword_1EE11F4F0, &type metadata for Stock, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x7878787878787879) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 6) + (v7 >> 63));
  return result;
}

size_t sub_1DAB02D38(uint64_t a1, uint64_t a2)
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

  sub_1DAB02E58(0, &qword_1EE1252D8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6F90]);
  v4 = *(sub_1DACB7AB4() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
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

void sub_1DAB02E58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DAB02EBC()
{
  if (!qword_1ECBE6D80)
  {
    sub_1DAB02F28();
    sub_1DAADA468();
    v0 = sub_1DACB71A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE6D80);
    }
  }
}

unint64_t sub_1DAB02F28()
{
  result = qword_1ECBE6D88;
  if (!qword_1ECBE6D88)
  {
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1ECBE6D88);
  }

  return result;
}

void *sub_1DAB02F80(uint64_t a1)
{
  v1 = *(*a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1DAB02BE0(*(*a1 + 16), 0);
  sub_1DAB07228(a1, v6);
  v4 = sub_1DAB05768(v6, v3 + 2, v1);

  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void sub_1DAB0300C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1DAA6149C(0, &qword_1EE11F4E0, &type metadata for Watchlist, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 48);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_1DAB0310C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1DAA6149C(0, &qword_1EE11F4E8, &type metadata for Headline, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 144);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_1DAB03214(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1DAA6149C(0, &qword_1EE11F4F0, &type metadata for Stock, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 136);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_1DAB03314(char *__src, char *a2, char *a3, char *a4, char *a5)
{
  v6 = v5;
  v7 = a3;
  v8 = a2;
  v10 = a2 - __src;
  v11 = (a2 - __src) / 48;
  v12 = a3 - a2;
  v13 = (a3 - a2) / 48;
  v82 = a4;
  if (v11 < v13)
  {
    v14 = 48 * v11;
    if (a4 != __src || &__src[v14] <= a4)
    {
      memmove(a4, __src, v14);
      a4 = v82;
    }

    v15 = &a4[v14];
    if (v10 < 48)
    {
      v37 = __src;
      goto LABEL_44;
    }

    v16 = __src;
    if (v8 < v7)
    {
      while (1)
      {
        v17 = *(v8 + 1);
        v19 = *(v8 + 2);
        v18 = *(v8 + 3);
        v20 = *(v8 + 4);
        v21 = v8[40];
        v22 = v8[41];
        v76 = *v8;
        v77 = v17;
        v78 = v19;
        v79 = v18;
        v80 = v20;
        LOBYTE(v81) = v21;
        HIBYTE(v81) = v22;
        v23 = *a4;
        v24 = *(a4 + 1);
        v25 = v6;
        v27 = *(a4 + 2);
        v26 = *(a4 + 3);
        v28 = *(a4 + 4);
        v29 = a4[40];
        v82 = a4;
        v30 = a4[41];
        v70 = v23;
        v71 = v24;
        v72 = v27;
        v73 = v26;
        v74 = v28;
        LOBYTE(v75) = v29;
        HIBYTE(v75) = v30;
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        v31 = sub_1DAB0213C(&v76, &v70, a5);
        v6 = v25;
        if (v25)
        {

          v62 = v82;
          v63 = 48 * ((v15 - v82) / 48);
          if (v16 < v82 || v16 >= &v82[v63] || v16 != v82)
          {
            v37 = v16;
            goto LABEL_48;
          }

          goto LABEL_49;
        }

        v32 = v31;

        if ((v32 & 1) == 0)
        {
          break;
        }

        v33 = v8;
        v34 = v16 == v8;
        v8 += 48;
        a4 = v82;
        if (!v34)
        {
          goto LABEL_13;
        }

LABEL_14:
        v16 += 48;
        if (a4 >= v15 || v8 >= v7)
        {
          goto LABEL_16;
        }
      }

      v33 = v82;
      a4 = v82 + 48;
      if (v16 == v82)
      {
        goto LABEL_14;
      }

LABEL_13:
      v35 = *v33;
      v36 = *(v33 + 2);
      *(v16 + 1) = *(v33 + 1);
      *(v16 + 2) = v36;
      *v16 = v35;
      goto LABEL_14;
    }

LABEL_16:
    v37 = v16;
LABEL_44:
    v63 = 48 * ((v15 - a4) / 48);
    if (v37 >= a4 && v37 < &a4[v63] && v37 == a4)
    {
      goto LABEL_49;
    }

    v62 = a4;
LABEL_48:
    memmove(v37, v62, v63);
    goto LABEL_49;
  }

  v38 = 48 * v13;
  if (a4 != a2 || &a2[v38] <= a4)
  {
    memmove(a4, a2, 48 * v13);
    a4 = v82;
  }

  v15 = &a4[v38];
  if (v12 < 48 || v8 <= __src)
  {
    v37 = v8;
    goto LABEL_44;
  }

LABEL_22:
  v67 = v7;
  v68 = v6;
  v39 = 0;
  v40 = v15;
  v65 = v8 - 48;
  while (1)
  {
    v41 = v40;
    v42 = &v40[v39];
    v43 = &v40[v39 - 48];
    v44 = *&v40[v39 - 40];
    v45 = *&v40[v39 - 32];
    v46 = *&v40[v39 - 24];
    v47 = *(v42 - 2);
    v48 = *(v42 - 4);
    v76 = *v43;
    v77 = v44;
    v78 = v45;
    v79 = v46;
    v80 = v47;
    v81 = v48;
    v49 = *(v8 - 5);
    v51 = *(v8 - 4);
    v50 = *(v8 - 3);
    v52 = *(v8 - 2);
    v53 = *(v8 - 4);
    v70 = *(v8 - 6);
    v71 = v49;
    v72 = v51;
    v73 = v50;
    v74 = v52;
    v75 = v53;
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DACB71E4();
    v54 = sub_1DAB0213C(&v76, &v70, a5);
    if (v68)
    {
      break;
    }

    v55 = v54;

    if (v55)
    {
      v7 = &v67[v39 - 48];
      a4 = v82;
      v37 = v8 - 48;
      v59 = v41;
      if (&v67[v39] != v8)
      {
        v60 = *v65;
        v61 = *(v8 - 1);
        *&v67[v39 - 32] = *(v8 - 2);
        *&v67[v39 - 16] = v61;
        *v7 = v60;
      }

      v15 = &v41[v39];
      v6 = 0;
      if (&v59[v39] <= a4 || (v8 -= 48, v65 <= __src))
      {
        v15 = &v59[v39];
        goto LABEL_44;
      }

      goto LABEL_22;
    }

    a4 = v82;
    v40 = v41;
    if (&v67[v39] != v42)
    {
      v56 = &v67[v39 - 48];
      v57 = *v43;
      v58 = *(v43 + 32);
      *(v56 + 1) = *(v43 + 16);
      *(v56 + 2) = v58;
      *v56 = v57;
    }

    v39 -= 48;
    v15 = &v41[v39];
    if (&v40[v39] <= a4)
    {
      v37 = v8;
      goto LABEL_44;
    }
  }

  v62 = v82;
  v63 = 48 * ((v41 - v82 + v39) / 48);
  if (v8 < v82 || v8 >= &v82[v63])
  {
    memmove(v8, v82, v63);
    goto LABEL_49;
  }

  if (v8 != v82)
  {
    v37 = v8;
    goto LABEL_48;
  }

LABEL_49:

  return 1;
}

void *sub_1DAB0387C(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return sub_1DAB038EC(a1, a2, sub_1DAB04318, sub_1DAB04318);
}

void *sub_1DAB038EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;
  sub_1DACB71F4();
  isStackAllocationSafe = sub_1DACB71F4();
  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v16 = swift_slowAlloc();
    sub_1DACB71F4();
    v13 = sub_1DAB03AC8(v16, v10, a2, a1, a4);

    MEMORY[0x1E1278C00](v16, -1, -1);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

void *sub_1DAB03AC8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
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

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

uint64_t sub_1DAB03B60(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v68 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    goto LABEL_59;
  }

  v6 = 0;
  v7 = a4 + 56;
  v8 = 1 << *(a4 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a4 + 56);
  v66 = (v8 + 63) >> 6;
  v94 = a3 + 56;
  v69 = a4 + 56;
  v71 = 0;
  while (1)
  {
LABEL_7:
    if (v10)
    {
      v11 = __clz(__rbit64(v10));
      v72 = (v10 - 1) & v10;
    }

    else
    {
      v12 = v6;
      do
      {
        v6 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_119;
        }

        if (v6 >= v66)
        {
          goto LABEL_116;
        }

        v13 = *(v7 + 8 * v6);
        ++v12;
      }

      while (!v13);
      v11 = __clz(__rbit64(v13));
      v72 = (v13 - 1) & v13;
    }

    v74 = v6;
    v14 = *(v4 + 48) + 48 * (v11 | (v6 << 6));
    v15 = *(v14 + 8);
    v16 = *(v14 + 16);
    v17 = *(v14 + 32);
    v18 = *(v5 + 40);
    v100 = *v14;
    v88 = *(v14 + 24);
    v76 = *(v14 + 40);
    v80 = *(v14 + 41);
    sub_1DACBA284();
    v102 = v15;
    sub_1DACB71E4();
    v98 = v16;
    sub_1DACB71E4();
    v86 = v17;
    sub_1DACB71E4();
    sub_1DABE6B08();
    v19 = sub_1DACBA2C4();
    v20 = -1 << *(v5 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    v23 = 1 << v21;
    if (((1 << v21) & *(v94 + 8 * (v21 >> 6))) != 0)
    {
      break;
    }

LABEL_6:

    v4 = a4;
    v5 = a3;
    v7 = v69;
    v10 = v72;
    v6 = v74;
  }

  v90 = ~v20;
  v92 = *(a3 + 48);
  v84 = v76 & 0xE0;
  v78 = (v16 + 40);
  while (1)
  {
    v24 = v92 + 48 * v21;
    result = *v24;
    v26 = *(v24 + 16);
    v25 = *(v24 + 24);
    v27 = *(v24 + 32);
    v28 = *(v24 + 40);
    v96 = *(v24 + 41);
    if (*v24 != v100 || *(v24 + 8) != v102)
    {
      result = sub_1DACBA174();
      if ((result & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v30 = *(v26 + 16);
    if (v30 != *(v98 + 16))
    {
      goto LABEL_18;
    }

    if (v30)
    {
      v31 = v26 == v98;
    }

    else
    {
      v31 = 1;
    }

    if (!v31)
    {
      v33 = (v26 + 40);
      v34 = v78;
      while (v30)
      {
        result = *(v33 - 1);
        if (result != *(v34 - 1) || *v33 != *v34)
        {
          result = sub_1DACBA174();
          if ((result & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        v33 += 2;
        v34 += 2;
        if (!--v30)
        {
          goto LABEL_30;
        }
      }

LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
      return result;
    }

LABEL_30:
    if ((v25 != v88 || v27 != v86) && (sub_1DACBA174() & 1) == 0)
    {
      goto LABEL_18;
    }

    v32 = v28 >> 5;
    if (v28 >> 5 > 2)
    {
      if (v32 == 3)
      {
        if (v84 != 96)
        {
          goto LABEL_18;
        }
      }

      else if (v32 == 4)
      {
        if (v84 != 128)
        {
          goto LABEL_18;
        }
      }

      else if (v76 != 160)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (v32)
    {
      break;
    }

    if (v76 <= 0x1F)
    {
      goto LABEL_17;
    }

LABEL_18:
    v21 = (v21 + 1) & v90;
    v22 = v21 >> 6;
    v23 = 1 << v21;
    if ((*(v94 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
    {
      goto LABEL_6;
    }
  }

  if (v32 == 1)
  {
    if (v84 != 32)
    {
      goto LABEL_18;
    }
  }

  else if (v84 != 64)
  {
    goto LABEL_18;
  }

LABEL_17:
  if (v96 != v80)
  {
    goto LABEL_18;
  }

  v7 = v69;
  v68[v22] |= v23;
  v10 = v72;
  v36 = __OFADD__(v71++, 1);
  v4 = a4;
  v5 = a3;
  v6 = v74;
  if (!v36)
  {
    goto LABEL_7;
  }

  __break(1u);
LABEL_59:
  v37 = 0;
  v38 = v5 + 56;
  v39 = 1 << *(v5 + 32);
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  else
  {
    v40 = -1;
  }

  v41 = v40 & *(v5 + 56);
  v70 = (v39 + 63) >> 6;
  v71 = 0;
  v97 = v4 + 56;
  v75 = v5 + 56;
  while (1)
  {
LABEL_64:
    if (v41)
    {
      v42 = __clz(__rbit64(v41));
      v77 = (v41 - 1) & v41;
    }

    else
    {
      v43 = v37;
      do
      {
        v37 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          goto LABEL_120;
        }

        if (v37 >= v70)
        {
          goto LABEL_116;
        }

        v44 = *(v38 + 8 * v37);
        ++v43;
      }

      while (!v44);
      v42 = __clz(__rbit64(v44));
      v77 = (v44 - 1) & v44;
    }

    v73 = v42 | (v37 << 6);
    v45 = *(v5 + 48) + 48 * v73;
    v46 = *(v45 + 8);
    v47 = *(v45 + 16);
    v48 = *(v45 + 32);
    v49 = *(v4 + 40);
    v101 = *v45;
    v91 = *(v45 + 24);
    v79 = *(v45 + 40);
    v85 = *(v45 + 41);
    sub_1DACBA284();
    v103 = v46;
    sub_1DACB71E4();
    v99 = v47;
    sub_1DACB71E4();
    v89 = v48;
    sub_1DACB71E4();
    sub_1DABE6B08();
    v50 = sub_1DACBA2C4();
    v51 = -1 << *(v4 + 32);
    v52 = v50 & ~v51;
    if ((*(v97 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52))
    {
      break;
    }

LABEL_63:

    v4 = a4;
    v5 = a3;
    v38 = v75;
    v41 = v77;
  }

  v93 = ~v51;
  v95 = *(a4 + 48);
  v87 = v79 & 0xE0;
  v81 = (v47 + 40);
  while (2)
  {
    v53 = v95 + 48 * v52;
    result = *v53;
    v55 = *(v53 + 16);
    v54 = *(v53 + 24);
    v56 = *(v53 + 32);
    v57 = *(v53 + 40);
    v58 = *(v53 + 41);
    if (*v53 != v101 || *(v53 + 8) != v103)
    {
      result = sub_1DACBA174();
      if ((result & 1) == 0)
      {
        goto LABEL_75;
      }
    }

    v60 = *(v55 + 16);
    if (v60 != *(v99 + 16))
    {
      goto LABEL_75;
    }

    if (v60)
    {
      v61 = v55 == v99;
    }

    else
    {
      v61 = 1;
    }

    if (!v61)
    {
      v63 = (v55 + 40);
      v64 = v81;
      while (v60)
      {
        result = *(v63 - 1);
        if (result != *(v64 - 1) || *v63 != *v64)
        {
          result = sub_1DACBA174();
          if ((result & 1) == 0)
          {
            goto LABEL_75;
          }
        }

        v63 += 2;
        v64 += 2;
        if (!--v60)
        {
          goto LABEL_87;
        }
      }

      __break(1u);
      goto LABEL_118;
    }

LABEL_87:
    if ((v54 != v91 || v56 != v89) && (sub_1DACBA174() & 1) == 0)
    {
LABEL_75:
      v52 = (v52 + 1) & v93;
      if (((*(v97 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
      {
        goto LABEL_63;
      }

      continue;
    }

    break;
  }

  v62 = v57 >> 5;
  if (v57 >> 5 > 2)
  {
    if (v62 == 3)
    {
      if (v87 == 96)
      {
        goto LABEL_74;
      }
    }

    else if (v62 == 4)
    {
      if (v87 == 128)
      {
        goto LABEL_74;
      }
    }

    else if (v79 == 160)
    {
      goto LABEL_74;
    }

    goto LABEL_75;
  }

  if (!v62)
  {
    if (v79 > 0x1F)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  if (v62 != 1)
  {
    if (v87 == 64)
    {
      goto LABEL_74;
    }

    goto LABEL_75;
  }

  if (v87 != 32)
  {
    goto LABEL_75;
  }

LABEL_74:
  if (v58 != v85)
  {
    goto LABEL_75;
  }

  *(v68 + ((v73 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v73;
  v36 = __OFADD__(v71++, 1);
  v4 = a4;
  v5 = a3;
  v38 = v75;
  v41 = v77;
  if (!v36)
  {
    goto LABEL_64;
  }

  __break(1u);
LABEL_116:
  sub_1DACB71F4();
  return sub_1DAB0517C(v68, a2, v71, v5);
}

unint64_t sub_1DAB04318(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v94 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v48 = 0;
    v95 = 0;
    v97 = a3 + 56;
    v49 = 1 << *(a3 + 32);
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    else
    {
      v50 = -1;
    }

    v51 = v50 & *(a3 + 56);
    v52 = (v49 + 63) >> 6;
    v53 = a4 + 56;
    v114 = a4 + 56;
    v99 = v52;
    while (1)
    {
LABEL_110:
      if (v51)
      {
        v54 = __clz(__rbit64(v51));
        v51 &= v51 - 1;
      }

      else
      {
        v55 = v48;
        do
        {
          v48 = v55 + 1;
          if (__OFADD__(v55, 1))
          {
            goto LABEL_212;
          }

          if (v48 >= v52)
          {
            goto LABEL_210;
          }

          v56 = *(v97 + 8 * v48);
          ++v55;
        }

        while (!v56);
        v54 = __clz(__rbit64(v56));
        v51 = (v56 - 1) & v56;
      }

      v57 = v54 | (v48 << 6);
      v58 = *(v5 + 48) + 136 * v57;
      v132 = *v58;
      v59 = *(v58 + 64);
      v61 = *(v58 + 16);
      v60 = *(v58 + 32);
      v135 = *(v58 + 48);
      v136 = v59;
      v133 = v61;
      v134 = v60;
      v63 = *(v58 + 96);
      v62 = *(v58 + 112);
      v64 = *(v58 + 80);
      v140 = *(v58 + 128);
      v138 = v63;
      v139 = v62;
      v137 = v64;
      v65 = *(v4 + 40);
      *&v130[16] = *(v58 + 80);
      *v131 = *(v58 + 96);
      *&v131[16] = *(v58 + 112);
      *&v131[32] = *(v58 + 128);
      v127 = *(v58 + 16);
      v128 = *(v58 + 32);
      v129 = *(v58 + 48);
      *v130 = *(v58 + 64);
      v126 = *v58;
      sub_1DACBA284();
      sub_1DAA806E4(&v132, v125);
      sub_1DAB08BD4();
      v66 = sub_1DACBA2C4();
      v67 = -1 << *(v4 + 32);
      v68 = v66 & ~v67;
      if (((*(v53 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68) & 1) == 0)
      {
        result = sub_1DAA9B1C8(&v132);
        v5 = a3;
        continue;
      }

      v92 = v57;
      v101 = v51;
      v141 = ~v67;
      v69 = v136;
      v70 = v132;
      v71 = v133;
      *(&v121 + 1) = v134;
      v124 = *(&v133 + 1);
      *(&v119 + 1) = v135;
      *&v121 = *(&v134 + 1);
      *(&v117 + 1) = *(&v136 + 1);
      *&v119 = *(&v135 + 1);
      *&v117 = v137;
      *&v110 = v138;
      *(&v110 + 1) = *(&v137 + 1);
      v103 = *(&v139 + 1);
      v105 = *(&v138 + 1);
      v107 = v140;
      v108 = v139;
      while (1)
      {
        v72 = *(v4 + 48) + 136 * v68;
        v126 = *v72;
        v73 = *(v72 + 64);
        v75 = *(v72 + 16);
        v74 = *(v72 + 32);
        v129 = *(v72 + 48);
        *v130 = v73;
        v127 = v75;
        v128 = v74;
        v77 = *(v72 + 96);
        v76 = *(v72 + 112);
        v78 = *(v72 + 80);
        *&v131[32] = *(v72 + 128);
        *v131 = v77;
        *&v131[16] = v76;
        *&v130[16] = v78;
        if (v126 != v70 && (sub_1DACBA174() & 1) == 0 || v127 != __PAIR128__(v124, v71) && (sub_1DACBA174() & 1) == 0 || __PAIR128__(v128, *(&v128 + 1)) != v121 && (sub_1DACBA174() & 1) == 0 || __PAIR128__(v129, *(&v129 + 1)) != v119 && (sub_1DACBA174() & 1) == 0)
        {
          goto LABEL_121;
        }

        if (v130[0] > 3u)
        {
          if (v130[0] > 5u)
          {
            if (v130[0] == 6)
            {
              v80 = 0xE500000000000000;
              v79 = 0x7865646E69;
              if (v69 > 3)
              {
                goto LABEL_156;
              }
            }

            else
            {
              v79 = 0x75466C617574756DLL;
              v80 = 0xEA0000000000646ELL;
              if (v69 > 3)
              {
                goto LABEL_156;
              }
            }
          }

          else
          {
            if (v130[0] == 4)
            {
              v79 = 6714469;
            }

            else
            {
              v79 = 0x73657275747566;
            }

            if (v130[0] == 4)
            {
              v80 = 0xE300000000000000;
            }

            else
            {
              v80 = 0xE700000000000000;
            }

            if (v69 > 3)
            {
LABEL_156:
              v81 = 0x75466C617574756DLL;
              if (v69 == 6)
              {
                v81 = 0x7865646E69;
              }

              v82 = 0xEA0000000000646ELL;
              if (v69 == 6)
              {
                v82 = 0xE500000000000000;
              }

              v83 = 0x73657275747566;
              if (v69 == 4)
              {
                v83 = 6714469;
              }

              v84 = 0xE700000000000000;
              if (v69 == 4)
              {
                v84 = 0xE300000000000000;
              }

              if (v69 <= 5)
              {
                v85 = v83;
              }

              else
              {
                v85 = v81;
              }

              if (v69 <= 5)
              {
                v86 = v84;
              }

              else
              {
                v86 = v82;
              }

              if (v79 != v85)
              {
                goto LABEL_188;
              }

              goto LABEL_186;
            }
          }
        }

        else if (v130[0] > 1u)
        {
          if (v130[0] == 2)
          {
            v79 = 0x75636F7470797263;
            v80 = 0xEE0079636E657272;
            if (v69 > 3)
            {
              goto LABEL_156;
            }
          }

          else
          {
            v80 = 0xE600000000000000;
            v79 = 0x797469757165;
            if (v69 > 3)
            {
              goto LABEL_156;
            }
          }
        }

        else
        {
          if (v130[0])
          {
            v79 = 0x79636E6572727563;
          }

          else
          {
            v79 = 0x6E776F6E6B6E75;
          }

          if (v130[0])
          {
            v80 = 0xE800000000000000;
          }

          else
          {
            v80 = 0xE700000000000000;
          }

          if (v69 > 3)
          {
            goto LABEL_156;
          }
        }

        if (v69 > 1)
        {
          if (v69 == 2)
          {
            v87 = 0x75636F7470797263;
          }

          else
          {
            v87 = 0x797469757165;
          }

          if (v69 == 2)
          {
            v86 = 0xEE0079636E657272;
          }

          else
          {
            v86 = 0xE600000000000000;
          }

          if (v79 != v87)
          {
            goto LABEL_188;
          }
        }

        else if (v69)
        {
          v86 = 0xE800000000000000;
          if (v79 != 0x79636E6572727563)
          {
            goto LABEL_188;
          }
        }

        else
        {
          v86 = 0xE700000000000000;
          if (v79 != 0x6E776F6E6B6E75)
          {
            goto LABEL_188;
          }
        }

LABEL_186:
        if (v80 == v86)
        {
          sub_1DAA806E4(&v126, v125);

          v53 = v114;
          goto LABEL_189;
        }

LABEL_188:
        v88 = sub_1DACBA174();
        sub_1DAA806E4(&v126, v125);

        v53 = v114;
        if ((v88 & 1) == 0)
        {
          goto LABEL_120;
        }

LABEL_189:
        if (__PAIR128__(*&v130[8], *&v130[16]) != v117 && (sub_1DACBA174() & 1) == 0 || __PAIR128__(*&v130[24], *v131) != v110 && (sub_1DACBA174() & 1) == 0)
        {
          goto LABEL_120;
        }

        if (*&v131[16])
        {
          if (!v108 || *&v131[8] != __PAIR128__(v108, v105) && (sub_1DACBA174() & 1) == 0)
          {
            goto LABEL_120;
          }
        }

        else if (v108)
        {
          goto LABEL_120;
        }

        if (!*&v131[32])
        {
          if (!v107)
          {
            goto LABEL_206;
          }

          goto LABEL_120;
        }

        if (v107)
        {
          break;
        }

LABEL_120:
        sub_1DAA9B1C8(&v126);
        v4 = a4;
LABEL_121:
        v68 = (v68 + 1) & v141;
        if (((*(v53 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68) & 1) == 0)
        {
          result = sub_1DAA9B1C8(&v132);
          v5 = a3;
          v52 = v99;
          v51 = v101;
          goto LABEL_110;
        }
      }

      if (*&v131[24] != v103 || *&v131[32] != v107)
      {
        v89 = sub_1DACBA174();
        sub_1DAA9B1C8(&v126);
        v4 = a4;
        if (v89)
        {
          goto LABEL_207;
        }

        goto LABEL_121;
      }

LABEL_206:
      sub_1DAA9B1C8(&v126);
      v4 = a4;
LABEL_207:
      v51 = v101;
      result = sub_1DAA9B1C8(&v132);
      *(v94 + ((v92 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v92;
      v47 = __OFADD__(v95++, 1);
      v5 = a3;
      v52 = v99;
      if (v47)
      {
        __break(1u);
LABEL_210:
        sub_1DACB71F4();
        return sub_1DAB05504(v94, a2, v95, v5);
      }
    }
  }

  v95 = 0;
  v6 = 0;
  v90 = a4 + 56;
  v7 = 1 << *(a4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  v10 = (v7 + 63) >> 6;
  v123 = a3 + 56;
  v91 = v10;
  while (2)
  {
    while (2)
    {
      while (2)
      {
        if (v9)
        {
          v11 = __clz(__rbit64(v9));
          v98 = (v9 - 1) & v9;
          goto LABEL_14;
        }

        v12 = v6;
        do
        {
          v6 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
LABEL_212:
            __break(1u);
            goto LABEL_213;
          }

          if (v6 >= v10)
          {
            goto LABEL_210;
          }

          v13 = *(v90 + 8 * v6);
          ++v12;
        }

        while (!v13);
        v11 = __clz(__rbit64(v13));
        v98 = (v13 - 1) & v13;
LABEL_14:
        v14 = *(v4 + 48) + 136 * (v11 | (v6 << 6));
        v132 = *v14;
        v15 = *(v14 + 64);
        v17 = *(v14 + 16);
        v16 = *(v14 + 32);
        v135 = *(v14 + 48);
        v136 = v15;
        v133 = v17;
        v134 = v16;
        v19 = *(v14 + 96);
        v18 = *(v14 + 112);
        v20 = *(v14 + 80);
        v140 = *(v14 + 128);
        v138 = v19;
        v139 = v18;
        v137 = v20;
        v21 = *(v5 + 40);
        *&v130[16] = *(v14 + 80);
        *v131 = *(v14 + 96);
        *&v131[16] = *(v14 + 112);
        *&v131[32] = *(v14 + 128);
        v127 = *(v14 + 16);
        v128 = *(v14 + 32);
        v129 = *(v14 + 48);
        *v130 = *(v14 + 64);
        v126 = *v14;
        sub_1DACBA284();
        sub_1DAA806E4(&v132, v125);
        sub_1DAB08BD4();
        v22 = sub_1DACBA2C4();
        v23 = -1 << *(v5 + 32);
        v24 = v22 & ~v23;
        v25 = v24 >> 6;
        v26 = 1 << v24;
        if (((1 << v24) & *(v123 + 8 * (v24 >> 6))) == 0)
        {
          result = sub_1DAA9B1C8(&v132);
          v9 = v98;
          continue;
        }

        break;
      }

      v122 = ~v23;
      v111 = v136;
      v27 = v132;
      v141 = v133;
      *(&v118 + 1) = v134;
      v120 = *(&v133 + 1);
      *(&v116 + 1) = v135;
      *&v118 = *(&v134 + 1);
      *&v116 = *(&v135 + 1);
      v113 = *(&v136 + 1);
      *(&v106 + 1) = *(&v137 + 1);
      v109 = v137;
      v104 = v139;
      *&v106 = v138;
      v96 = *(&v139 + 1);
      v100 = *(&v138 + 1);
      v102 = v140;
LABEL_19:
      v28 = *(v5 + 48) + 136 * v24;
      v126 = *v28;
      v29 = *(v28 + 64);
      v31 = *(v28 + 16);
      v30 = *(v28 + 32);
      v129 = *(v28 + 48);
      *v130 = v29;
      v127 = v31;
      v128 = v30;
      v33 = *(v28 + 96);
      v32 = *(v28 + 112);
      v34 = *(v28 + 80);
      *&v131[32] = *(v28 + 128);
      *v131 = v33;
      *&v131[16] = v32;
      *&v130[16] = v34;
      if (v126 != v27 && (sub_1DACBA174() & 1) == 0 || v127 != __PAIR128__(v120, v141) && (sub_1DACBA174() & 1) == 0 || __PAIR128__(v128, *(&v128 + 1)) != v118 && (sub_1DACBA174() & 1) == 0 || __PAIR128__(v129, *(&v129 + 1)) != v116 && (sub_1DACBA174() & 1) == 0)
      {
LABEL_18:
        v24 = (v24 + 1) & v122;
        v25 = v24 >> 6;
        v26 = 1 << v24;
        if ((*(v123 + 8 * (v24 >> 6)) & (1 << v24)) == 0)
        {
          result = sub_1DAA9B1C8(&v132);
          v4 = a4;
          v10 = v91;
          v9 = v98;
          continue;
        }

        goto LABEL_19;
      }

      break;
    }

    if (v130[0] > 3u)
    {
      v35 = v111;
      if (v130[0] > 5u)
      {
        if (v130[0] == 6)
        {
          v37 = 0xE500000000000000;
          v36 = 0x7865646E69;
          if (v111 <= 3)
          {
            goto LABEL_70;
          }
        }

        else
        {
          v36 = 0x75466C617574756DLL;
          v37 = 0xEA0000000000646ELL;
          if (v111 <= 3)
          {
            goto LABEL_70;
          }
        }

        goto LABEL_53;
      }

      if (v130[0] == 4)
      {
        v36 = 6714469;
      }

      else
      {
        v36 = 0x73657275747566;
      }

      if (v130[0] == 4)
      {
        v37 = 0xE300000000000000;
      }

      else
      {
        v37 = 0xE700000000000000;
      }

      if (v111 > 3)
      {
        goto LABEL_53;
      }

LABEL_70:
      if (v35 > 1)
      {
        if (v35 == 2)
        {
          v44 = 0x75636F7470797263;
        }

        else
        {
          v44 = 0x797469757165;
        }

        if (v35 == 2)
        {
          v43 = 0xEE0079636E657272;
        }

        else
        {
          v43 = 0xE600000000000000;
        }

        if (v36 != v44)
        {
          goto LABEL_85;
        }
      }

      else if (v35)
      {
        v43 = 0xE800000000000000;
        if (v36 != 0x79636E6572727563)
        {
          goto LABEL_85;
        }
      }

      else
      {
        v43 = 0xE700000000000000;
        if (v36 != 0x6E776F6E6B6E75)
        {
          goto LABEL_85;
        }
      }
    }

    else
    {
      v35 = v111;
      if (v130[0] > 1u)
      {
        if (v130[0] == 2)
        {
          v36 = 0x75636F7470797263;
          v37 = 0xEE0079636E657272;
          if (v111 <= 3)
          {
            goto LABEL_70;
          }
        }

        else
        {
          v37 = 0xE600000000000000;
          v36 = 0x797469757165;
          if (v111 <= 3)
          {
            goto LABEL_70;
          }
        }
      }

      else
      {
        if (v130[0])
        {
          v36 = 0x79636E6572727563;
        }

        else
        {
          v36 = 0x6E776F6E6B6E75;
        }

        if (v130[0])
        {
          v37 = 0xE800000000000000;
        }

        else
        {
          v37 = 0xE700000000000000;
        }

        if (v111 <= 3)
        {
          goto LABEL_70;
        }
      }

LABEL_53:
      v38 = 0x75466C617574756DLL;
      if (v35 == 6)
      {
        v38 = 0x7865646E69;
      }

      v39 = 0xEA0000000000646ELL;
      if (v35 == 6)
      {
        v39 = 0xE500000000000000;
      }

      v40 = 0x73657275747566;
      if (v35 == 4)
      {
        v40 = 6714469;
      }

      v41 = 0xE700000000000000;
      if (v35 == 4)
      {
        v41 = 0xE300000000000000;
      }

      if (v35 <= 5)
      {
        v42 = v40;
      }

      else
      {
        v42 = v38;
      }

      if (v35 <= 5)
      {
        v43 = v41;
      }

      else
      {
        v43 = v39;
      }

      if (v36 != v42)
      {
LABEL_85:
        v45 = sub_1DACBA174();
        sub_1DAA806E4(&v126, v125);

        if (v45)
        {
          goto LABEL_86;
        }

        goto LABEL_17;
      }
    }

    if (v37 != v43)
    {
      goto LABEL_85;
    }

    sub_1DAA806E4(&v126, v125);

LABEL_86:
    if (*&v130[8] != __PAIR128__(v109, v113) && (sub_1DACBA174() & 1) == 0 || __PAIR128__(*&v130[24], *v131) != v106 && (sub_1DACBA174() & 1) == 0)
    {
LABEL_17:
      sub_1DAA9B1C8(&v126);
      v5 = a3;
      goto LABEL_18;
    }

    if (*&v131[16])
    {
      if (!v104 || *&v131[8] != __PAIR128__(v104, v100) && (sub_1DACBA174() & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (v104)
    {
      goto LABEL_17;
    }

    if (!*&v131[32])
    {
      if (!v102)
      {
        goto LABEL_102;
      }

      goto LABEL_17;
    }

    if (!v102)
    {
      goto LABEL_17;
    }

    if (*&v131[24] != __PAIR128__(v102, v96))
    {
      v46 = sub_1DACBA174();
      sub_1DAA9B1C8(&v126);
      v5 = a3;
      if (v46)
      {
        goto LABEL_103;
      }

      goto LABEL_18;
    }

LABEL_102:
    sub_1DAA9B1C8(&v126);
    v5 = a3;
LABEL_103:
    v10 = v91;
    result = sub_1DAA9B1C8(&v132);
    v94[v25] |= v26;
    v47 = __OFADD__(v95++, 1);
    v4 = a4;
    if (!v47)
    {
      v9 = v98;
      continue;
    }

    break;
  }

LABEL_213:
  __break(1u);
  return result;
}

uint64_t sub_1DAB0517C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1DAA8D834(0, &qword_1ECBE6DE0, sub_1DAB073D0, &type metadata for Watchlist, MEMORY[0x1E69E6A10]);
  result = sub_1DACB9C44();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v41 = v4;
  v42 = result;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v43 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(v4 + 48) + 48 * (v13 | (v11 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v49 = *(v16 + 24);
    v20 = *(v16 + 32);
    v46 = *(v16 + 41);
    v47 = *(v16 + 40);
    v21 = *(v9 + 40);
    sub_1DACBA284();
    sub_1DACB71E4();
    sub_1DACB71E4();
    v48 = v20;
    sub_1DACB71E4();
    v44 = v18;
    v45 = v17;
    sub_1DACB9404();
    MEMORY[0x1E1277D70](*(v19 + 16));
    v22 = *(v19 + 16);
    if (v22)
    {
      v23 = (v19 + 40);
      do
      {
        v24 = *(v23 - 1);
        v25 = *v23;
        sub_1DACB71E4();
        sub_1DACB9404();

        v23 += 2;
        --v22;
      }

      while (v22);
    }

    sub_1DACB9404();
    v26 = v47 >> 5;
    if (v47 >> 5 <= 2)
    {
      v27 = 2;
      if (v26 != 1)
      {
        v27 = 3;
      }

      if (v26)
      {
        v28 = v27;
      }

      else
      {
        v28 = 1;
      }

      v9 = v42;
      v29 = v46;
      goto LABEL_31;
    }

    v29 = v46;
    if (v26 == 3)
    {
      v28 = 4;
      v9 = v42;
      goto LABEL_31;
    }

    v9 = v42;
    if (v26 == 4)
    {
      v28 = 5;
LABEL_31:
      MEMORY[0x1E1277D70](v28);
      v30 = v47 & 1;
      goto LABEL_32;
    }

    v30 = 0;
LABEL_32:
    MEMORY[0x1E1277D70](v30);
    MEMORY[0x1E1277D70](v29);
    result = sub_1DACBA2C4();
    v31 = -1 << *(v9 + 32);
    v32 = result & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v12 + 8 * (v32 >> 6))) == 0)
    {
      v35 = 0;
      v36 = (63 - v31) >> 6;
      while (++v33 != v36 || (v35 & 1) == 0)
      {
        v37 = v33 == v36;
        if (v33 == v36)
        {
          v33 = 0;
        }

        v35 |= v37;
        v38 = *(v12 + 8 * v33);
        if (v38 != -1)
        {
          v34 = __clz(__rbit64(~v38)) + (v33 << 6);
          goto LABEL_42;
        }
      }

      goto LABEL_47;
    }

    v34 = __clz(__rbit64((-1 << v32) & ~*(v12 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_42:
    *(v12 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    v39 = *(v9 + 48) + 48 * v34;
    *v39 = v45;
    *(v39 + 8) = v44;
    *(v39 + 16) = v19;
    *(v39 + 24) = v49;
    *(v39 + 32) = v48;
    *(v39 + 40) = v47;
    *(v39 + 41) = v29;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_48;
    }

    v4 = v41;
    v10 = v43;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v43 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

unint64_t sub_1DAB05504(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1DAA8D834(0, &qword_1ECBE6DD8, sub_1DAB07284, &type metadata for Stock, MEMORY[0x1E69E6A10]);
  result = sub_1DACB9C44();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = *(a4 + 48) + 136 * (v13 | (v11 << 6));
    v17 = *(v16 + 16);
    v18 = *(v16 + 32);
    v19 = *(v16 + 64);
    v42 = *(v16 + 48);
    v43 = v19;
    v41 = v18;
    v21 = *(v16 + 96);
    v20 = *(v16 + 112);
    v22 = *(v16 + 80);
    v47 = *(v16 + 128);
    v45 = v21;
    v46 = v20;
    v44 = v22;
    v39 = *v16;
    v40 = v17;
    v23 = *(v6 + 40);
    v24 = *(v16 + 112);
    v37[19] = *(v16 + 96);
    v37[20] = v24;
    v38 = *(v16 + 128);
    v25 = *(v16 + 48);
    v37[15] = *(v16 + 32);
    v37[16] = v25;
    v26 = *(v16 + 80);
    v37[17] = *(v16 + 64);
    v37[18] = v26;
    v27 = *(v16 + 16);
    v37[13] = *v16;
    v37[14] = v27;
    sub_1DACBA284();
    sub_1DAA806E4(&v39, v37);
    sub_1DAB08BD4();
    sub_1DACBA2C4();
    v28 = -1 << *(v6 + 32);
    result = sub_1DACB9BE4();
    *(v12 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v29 = *(v6 + 48) + 136 * result;
    *v29 = v39;
    v30 = v43;
    v32 = v40;
    v31 = v41;
    *(v29 + 48) = v42;
    *(v29 + 64) = v30;
    *(v29 + 16) = v32;
    *(v29 + 32) = v31;
    v33 = v44;
    v34 = v45;
    v35 = v46;
    *(v29 + 128) = v47;
    *(v29 + 96) = v34;
    *(v29 + 112) = v35;
    *(v29 + 80) = v33;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_21;
    }

    if (!v5)
    {
LABEL_18:

      return v6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_18;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1DAB05768(uint64_t *a1, _OWORD *a2, uint64_t a3)
{
  v7 = *v3;
  sub_1DACB71E4();
  sub_1DAB07030(v3);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = 0;
  sub_1DAB0708C();
  result = swift_allocObject();
  v10 = result;
  *(result + 16) = sub_1DAB07084;
  *(result + 24) = v8;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_11:
    *a1 = v10;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = 1;
    while (1)
    {
      v12 = *(v10 + 24);
      (*(v10 + 16))(&v19);
      v28[6] = v25;
      v28[7] = v26;
      v28[8] = v27;
      v28[2] = v21;
      v28[3] = v22;
      v28[4] = v23;
      v28[5] = v24;
      v28[0] = v19;
      v28[1] = v20;
      if (sub_1DAB07190(v28) == 1)
      {
        break;
      }

      v13 = v26;
      a2[6] = v25;
      a2[7] = v13;
      a2[8] = v27;
      v14 = v22;
      a2[2] = v21;
      a2[3] = v14;
      v15 = v24;
      a2[4] = v23;
      a2[5] = v15;
      v16 = v20;
      *a2 = v19;
      a2[1] = v16;
      if (a3 == v11)
      {
        goto LABEL_11;
      }

      a2 += 9;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    v18[6] = v25;
    v18[7] = v26;
    v18[8] = v27;
    v18[2] = v21;
    v18[3] = v22;
    v18[4] = v23;
    v18[5] = v24;
    v18[0] = v19;
    v18[1] = v20;
    sub_1DAB071A8(v18);
    *a1 = v10;
    return v11 - 1;
  }

  __break(1u);
  return result;
}

void *sub_1DAB058F4(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = result;
  v5 = a4 + 56;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v10 = 0;
    a3 = 0;
LABEL_24:
    *v4 = a4;
    v4[1] = v5;
    v4[2] = ~v6;
    v4[3] = v10;
    v4[4] = v8;
    return a3;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v24 = -1 << *(a4 + 32);
    v25 = a3;
    result = 0;
    v10 = 0;
    v11 = (63 - v6) >> 6;
    v12 = 1;
    while (v8)
    {
LABEL_14:
      v15 = a4;
      v16 = *(a4 + 48) + 48 * (__clz(__rbit64(v8)) | (v10 << 6));
      v18 = *v16;
      v17 = *(v16 + 8);
      v8 &= v8 - 1;
      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      v21 = *(v16 + 32);
      LOWORD(v16) = *(v16 + 40);
      *v9 = v18;
      *(v9 + 8) = v17;
      *(v9 + 16) = v20;
      *(v9 + 24) = v19;
      *(v9 + 32) = v21;
      *(v9 + 40) = v16;
      if (v12 == v25)
      {
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        a4 = v15;
        v6 = v24;
        a3 = v25;
        goto LABEL_24;
      }

      v9 += 48;
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      result = v12;
      v22 = __OFADD__(v12++, 1);
      a4 = v15;
      if (v22)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v14 >= v11)
      {
        break;
      }

      v8 = *(v5 + 8 * v14);
      ++v13;
      if (v8)
      {
        v10 = v14;
        goto LABEL_14;
      }
    }

    v8 = 0;
    if (v11 <= v10 + 1)
    {
      v23 = v10 + 1;
    }

    else
    {
      v23 = v11;
    }

    v10 = v23 - 1;
    a3 = result;
    v6 = v24;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1DAB05AA0(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v27 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 136 * (v17 | (v12 << 6)));
      v29[0] = *v18;
      v19 = v18[4];
      v21 = v18[1];
      v20 = v18[2];
      v29[3] = v18[3];
      v29[4] = v19;
      v29[1] = v21;
      v29[2] = v20;
      v23 = v18[6];
      v22 = v18[7];
      v24 = v18[5];
      v30 = *(v18 + 16);
      v29[6] = v23;
      v29[7] = v22;
      v29[5] = v24;
      memmove(v11, v18, 0x88uLL);
      if (v14 == v10)
      {
        sub_1DAA806E4(v29, v28);
        goto LABEL_23;
      }

      v11 += 136;
      sub_1DAA806E4(v29, v28);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = v13;
    }

    v12 = v26 - 1;
    v10 = result;
LABEL_23:
    v7 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1DAB05C50(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {
        sub_1DACB71E4();
        goto LABEL_24;
      }

      v11 += 2;
      sub_1DACB71E4();
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1DAB05DA8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_1DACB7AB4();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x1EEE9AC00](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1DAB0604C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1DAB073D0();
  result = MEMORY[0x1E1277300](v2, &type metadata for Watchlist, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[1];
      v9 = *v5;
      v10[0] = v6;
      *(v10 + 10) = *(v5 + 26);
      sub_1DAA8DB84(&v9, v7);
      sub_1DAB88B38(v7, &v9);

      v5 += 3;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1DAB060FC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, char *a5)
{
  v6 = v5;
  v7 = a3[1];
  if (v7 < 1)
  {
    swift_bridgeObjectRetain_n();
    v9 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v150 = *a1;
    if (*a1)
    {
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_92;
    }

    goto LABEL_131;
  }

  swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v8 + 1 >= v7)
    {
      v28 = (v8 + 1);
    }

    else
    {
      v150 = v7;
      v10 = *a3;
      v11 = *a3 + 48 * (v8 + 1);
      v13 = *v11;
      v12 = *(v11 + 8);
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      v16 = *(v11 + 32);
      LOWORD(v11) = *(v11 + 40);
      v159 = v13;
      v160 = v12;
      v161 = v15;
      v162 = v14;
      v163 = v16;
      v164 = v11;
      v17 = (v10 + 48 * v8);
      v18 = *v17;
      v19 = v17[1];
      v21 = v17[2];
      v20 = v17[3];
      v22 = v17[4];
      LOWORD(v17) = *(v17 + 20);
      v153 = v18;
      v154 = v19;
      v155 = v21;
      v156 = v20;
      v157 = v22;
      v158 = v17;
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      v23 = sub_1DAB0213C(&v159, &v153, a5);
      if (v6)
      {
LABEL_101:

        swift_bridgeObjectRelease_n();
      }

      v24 = v23;

      v25 = v8;
      v26 = (v8 + 2);
      v143 = v25;
      v148 = 48 * v25;
      v27 = v10 + 48 * v25 + 137;
      while (1)
      {
        v28 = v150;
        if (v150 == v26)
        {
          break;
        }

        v29 = *(v27 - 33);
        v30 = *(v27 - 25);
        v31 = *(v27 - 17);
        v32 = *(v27 - 9);
        v33 = *(v27 - 1);
        v159 = *(v27 - 41);
        v160 = v29;
        v161 = v30;
        v162 = v31;
        v163 = v32;
        v164 = v33;
        v34 = *(v27 - 81);
        v35 = *(v27 - 73);
        v36 = *(v27 - 65);
        v37 = *(v27 - 57);
        v38 = *(v27 - 49);
        v153 = *(v27 - 89);
        v154 = v34;
        v155 = v35;
        v156 = v36;
        v157 = v37;
        v158 = v38;
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        LODWORD(v34) = sub_1DAB0213C(&v159, &v153, a5);

        ++v26;
        v27 += 48;
        if ((v24 ^ v34))
        {
          v28 = v26 - 1;
          break;
        }
      }

      v8 = v143;
      if (v24)
      {
        if (v28 < v143)
        {
          goto LABEL_125;
        }

        if (v143 < v28)
        {
          v39 = 48 * v28 - 24;
          v40 = v148 + 41;
          v41 = v28;
          v42 = v143;
          do
          {
            if (v42 != --v41)
            {
              v52 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v43 = v52 + v40;
              v44 = *(v52 + v40 - 41);
              v45 = v52 + v39;
              v46 = *(v43 - 17);
              v47 = *(v43 - 9);
              v48 = *(v43 - 1);
              v49 = *(v43 - 33);
              v50 = *(v45 + 8);
              v51 = *(v45 - 8);
              *(v43 - 41) = *(v45 - 24);
              *(v43 - 25) = v51;
              *(v43 - 9) = v50;
              *(v45 - 24) = v44;
              *(v45 - 16) = v49;
              *v45 = v46;
              *(v45 + 8) = v47;
              *(v45 + 16) = v48;
            }

            ++v42;
            v39 -= 48;
            v40 += 48;
          }

          while (v42 < v41);
        }
      }
    }

    v53 = a3[1];
    if (v28 >= v53)
    {
      goto LABEL_29;
    }

    if (__OFSUB__(v28, v8))
    {
      goto LABEL_121;
    }

    if (&v28[-v8] >= a4)
    {
      goto LABEL_29;
    }

    if (__OFADD__(v8, a4))
    {
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_127:
      swift_bridgeObjectRelease_n();
      __break(1u);
      goto LABEL_128;
    }

    if (v8 + a4 >= v53)
    {
      v54 = a3[1];
    }

    else
    {
      v54 = (v8 + a4);
    }

    if (v54 < v8)
    {
      goto LABEL_124;
    }

    if (v28 == v54)
    {
LABEL_29:
      v55 = v28;
      if (v28 < v8)
      {
        goto LABEL_120;
      }
    }

    else
    {
      v147 = v54;
      v149 = *a3;
      v107 = *a3 + 48 * v28 - 48;
      v144 = v8;
      v108 = v8 - v28;
      do
      {
        v150 = v28;
        v140 = v108;
        v141 = v107;
        v109 = v107;
        do
        {
          v110 = (v109 + 48);
          v111 = *(v109 + 56);
          v112 = *(v109 + 64);
          v113 = *(v109 + 72);
          v114 = *(v109 + 80);
          v115 = *(v109 + 88);
          v159 = *(v109 + 48);
          v160 = v111;
          v161 = v112;
          v162 = v113;
          v163 = v114;
          v164 = v115;
          v116 = *(v109 + 8);
          v118 = *(v109 + 16);
          v117 = *(v109 + 24);
          v119 = *(v109 + 32);
          v120 = *(v109 + 40);
          v153 = *v109;
          v154 = v116;
          v155 = v118;
          v156 = v117;
          v157 = v119;
          v158 = v120;
          sub_1DACB71E4();
          sub_1DACB71E4();
          sub_1DACB71E4();
          sub_1DACB71E4();
          sub_1DACB71E4();
          sub_1DACB71E4();
          v121 = sub_1DAB0213C(&v159, &v153, a5);
          if (v6)
          {
            goto LABEL_101;
          }

          v122 = v121;

          if ((v122 & 1) == 0)
          {
            break;
          }

          if (!v149)
          {
            goto LABEL_127;
          }

          v123 = *(v109 + 48);
          v124 = *(v109 + 72);
          v125 = *(v109 + 80);
          v126 = *(v109 + 88);
          v127 = *(v109 + 56);
          v128 = *(v109 + 16);
          *v110 = *v109;
          *(v109 + 64) = v128;
          v129 = *(v109 + 32);
          *v109 = v123;
          *(v109 + 8) = v127;
          *(v109 + 24) = v124;
          *(v109 + 32) = v125;
          *(v109 + 40) = v126;
          v109 -= 48;
          v110[2] = v129;
        }

        while (!__CFADD__(v108++, 1));
        v28 = v150 + 1;
        v107 = v141 + 48;
        v108 = v140 - 1;
        v55 = v147;
      }

      while (v150 + 1 != v147);
      v8 = v144;
      if (v147 < v144)
      {
        goto LABEL_120;
      }
    }

    v146 = v55;
    v56 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1DAADB818(0, *(v9 + 2) + 1, 1, v9);
    }

    v58 = *(v9 + 2);
    v57 = *(v9 + 3);
    v59 = v58 + 1;
    if (v58 >= v57 >> 1)
    {
      v9 = sub_1DAADB818((v57 > 1), v58 + 1, 1, v9);
    }

    *(v9 + 2) = v59;
    v60 = &v9[16 * v58];
    *(v60 + 4) = v56;
    *(v60 + 5) = v146;
    v150 = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    if (v58)
    {
      break;
    }

LABEL_3:
    v7 = a3[1];
    v8 = v146;
    if (v146 >= v7)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v61 = v59 - 1;
    if (v59 >= 4)
    {
      v66 = &v9[16 * v59 + 32];
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_107;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_108;
      }

      v73 = &v9[16 * v59];
      v75 = *v73;
      v74 = *(v73 + 1);
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_110;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_113;
      }

      if (v77 >= v69)
      {
        v95 = &v9[16 * v61 + 32];
        v97 = *v95;
        v96 = *(v95 + 1);
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_119;
        }

        if (v64 < v98)
        {
          v61 = v59 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v59 == 3)
    {
      v62 = *(v9 + 4);
      v63 = *(v9 + 5);
      v72 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      v65 = v72;
LABEL_49:
      if (v65)
      {
        goto LABEL_109;
      }

      v78 = &v9[16 * v59];
      v80 = *v78;
      v79 = *(v78 + 1);
      v81 = __OFSUB__(v79, v80);
      v82 = v79 - v80;
      v83 = v81;
      if (v81)
      {
        goto LABEL_112;
      }

      v84 = &v9[16 * v61 + 32];
      v86 = *v84;
      v85 = *(v84 + 1);
      v72 = __OFSUB__(v85, v86);
      v87 = v85 - v86;
      if (v72)
      {
        goto LABEL_115;
      }

      if (__OFADD__(v82, v87))
      {
        goto LABEL_116;
      }

      if (v82 + v87 >= v64)
      {
        if (v64 < v87)
        {
          v61 = v59 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v88 = &v9[16 * v59];
    v90 = *v88;
    v89 = *(v88 + 1);
    v72 = __OFSUB__(v89, v90);
    v82 = v89 - v90;
    v83 = v72;
LABEL_63:
    if (v83)
    {
      goto LABEL_111;
    }

    v91 = &v9[16 * v61];
    v93 = *(v91 + 4);
    v92 = *(v91 + 5);
    v72 = __OFSUB__(v92, v93);
    v94 = v92 - v93;
    if (v72)
    {
      goto LABEL_114;
    }

    if (v94 < v82)
    {
      goto LABEL_3;
    }

LABEL_70:
    v99 = v61 - 1;
    if (v61 - 1 >= v59)
    {
      break;
    }

    v100 = *a3;
    if (!*a3)
    {
      goto LABEL_126;
    }

    v101 = *&v9[16 * v99 + 32];
    v102 = *&v9[16 * v61 + 40];
    v103 = (v100 + 48 * v101);
    v104 = (v100 + 48 * *&v9[16 * v61 + 32]);
    v105 = (v100 + 48 * v102);
    sub_1DACB71E4();
    sub_1DAB03314(v103, v104, v105, v150, a5);
    if (v6)
    {
      swift_bridgeObjectRelease_n();
    }

    if (v102 < v101)
    {
      goto LABEL_105;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1DAC0694C(v9);
    }

    if (v99 >= *(v9 + 2))
    {
      goto LABEL_106;
    }

    v106 = &v9[16 * v99];
    *(v106 + 4) = v101;
    *(v106 + 5) = v102;
    v165 = v9;
    sub_1DAC068C0(v61);
    v9 = v165;
    v59 = *(v165 + 2);
    if (v59 <= 1)
    {
      goto LABEL_3;
    }
  }

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
  v9 = sub_1DAC0694C(v9);
LABEL_92:
  v165 = v9;
  v131 = *(v9 + 2);
  if (v131 < 2)
  {
LABEL_100:

    return swift_bridgeObjectRelease_n();
  }

  else
  {
    while (1)
    {
      v132 = *a3;
      if (!*a3)
      {
        break;
      }

      v133 = *&v9[16 * v131];
      v134 = *&v9[16 * v131 + 24];
      v135 = (v132 + 48 * v133);
      v136 = (v132 + 48 * *&v9[16 * v131 + 16]);
      v137 = (v132 + 48 * v134);
      sub_1DACB71E4();
      sub_1DAB03314(v135, v136, v137, v150, a5);
      if (v6)
      {
        goto LABEL_100;
      }

      if (v134 < v133)
      {
        goto LABEL_117;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1DAC0694C(v9);
      }

      if (v131 - 2 >= *(v9 + 2))
      {
        goto LABEL_118;
      }

      v138 = &v9[16 * v131];
      *v138 = v133;
      *(v138 + 1) = v134;
      v165 = v9;
      sub_1DAC068C0(v131 - 1);
      v9 = v165;
      v131 = *(v165 + 2);
      if (v131 <= 1)
      {
        goto LABEL_100;
      }
    }

LABEL_128:

    __break(1u);
LABEL_129:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_130:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_131:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAB06A90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, char *a5)
{
  if (a3 != a2)
  {
    v37 = *a4;
    v7 = v37 + 48 * a3 - 48;
    v8 = result - a3;
LABEL_4:
    v31 = v7;
    v32 = a3;
    v30 = v8;
    while (1)
    {
      v9 = (v7 + 48);
      v10 = *(v7 + 56);
      v11 = *(v7 + 64);
      v12 = *(v7 + 72);
      v13 = *(v7 + 80);
      v14 = *(v7 + 88);
      v35[0] = *(v7 + 48);
      v35[1] = v10;
      v35[2] = v11;
      v35[3] = v12;
      v35[4] = v13;
      v36 = v14;
      v15 = *(v7 + 8);
      v17 = *(v7 + 16);
      v16 = *(v7 + 24);
      v18 = *(v7 + 32);
      v19 = *(v7 + 40);
      v33[0] = *v7;
      v33[1] = v15;
      v33[2] = v17;
      v33[3] = v16;
      v33[4] = v18;
      v34 = v19;
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      v20 = sub_1DAB0213C(v35, v33, a5);

      if (v5)
      {
        break;
      }

      if (v20)
      {
        if (!v37)
        {
          __break(1u);
          return result;
        }

        v21 = *(v7 + 48);
        v22 = *(v7 + 72);
        v23 = *(v7 + 80);
        v24 = *(v7 + 88);
        v25 = *(v7 + 56);
        v26 = *(v7 + 16);
        *v9 = *v7;
        *(v7 + 64) = v26;
        v27 = *(v7 + 32);
        *v7 = v21;
        *(v7 + 8) = v25;
        *(v7 + 24) = v22;
        *(v7 + 32) = v23;
        *(v7 + 40) = v24;
        v7 -= 48;
        v9[2] = v27;
        if (!__CFADD__(v8++, 1))
        {
          continue;
        }
      }

      a3 = v32 + 1;
      v7 = v31 + 48;
      v8 = v30 - 1;
      if (v32 + 1 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_1DAB06C38(uint64_t *a1, char *a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1DACBA104();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v8 = sub_1DACB96C4();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;
      sub_1DACB71E4();
      sub_1DAB060FC(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1DACB71E4();
    sub_1DAB06A90(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1DAB06D80(char **a1, char *a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DAC06974(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;
  sub_1DACB71E4();
  sub_1DAB06C38(v7, a2);

  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

unint64_t sub_1DAB06E28()
{
  result = qword_1ECBE6D98;
  if (!qword_1ECBE6D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6D98);
  }

  return result;
}

unint64_t sub_1DAB06E80()
{
  result = qword_1ECBE6DA0;
  if (!qword_1ECBE6DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6DA0);
  }

  return result;
}

unint64_t sub_1DAB06ED8()
{
  result = qword_1ECBE6DA8;
  if (!qword_1ECBE6DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6DA8);
  }

  return result;
}

unint64_t sub_1DAB06F30()
{
  result = qword_1ECBE6DB0;
  if (!qword_1ECBE6DB0)
  {
    sub_1DAA6149C(255, &qword_1ECBE69C0, &type metadata for WatchlistEntity, MEMORY[0x1E69E62F8]);
    sub_1DAA8E020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6DB0);
  }

  return result;
}

unint64_t sub_1DAB06FCC()
{
  result = qword_1ECBE6DB8;
  if (!qword_1ECBE6DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6DB8);
  }

  return result;
}

void sub_1DAB0708C()
{
  if (!qword_1ECBE6DC0)
  {
    sub_1DAA6149C(255, &unk_1ECBE7F10, &type metadata for Headline, MEMORY[0x1E69E6F28]);
    sub_1DAB07114();
    v0 = sub_1DACB9CE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE6DC0);
    }
  }
}

unint64_t sub_1DAB07114()
{
  result = qword_1ECBE6DC8;
  if (!qword_1ECBE6DC8)
  {
    sub_1DAA6149C(255, &unk_1ECBE7F10, &type metadata for Headline, MEMORY[0x1E69E6F28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6DC8);
  }

  return result;
}

uint64_t sub_1DAB07190(uint64_t a1)
{
  if ((*(a1 + 104) >> 1) > 0x80000000)
  {
    return -(*(a1 + 104) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DAB071A8(uint64_t a1)
{
  sub_1DAA6149C(0, &qword_1ECBE6DD0, &type metadata for Headline, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DAB07284()
{
  result = qword_1EE1201C0;
  if (!qword_1EE1201C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1201C0);
  }

  return result;
}

uint64_t sub_1DAB072D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1DAB07284();
  result = MEMORY[0x1E1277300](v2, &type metadata for Stock, v3);
  v14 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 112);
      v15[6] = *(v5 + 96);
      v15[7] = v6;
      v16 = *(v5 + 128);
      v7 = *(v5 + 48);
      v15[2] = *(v5 + 32);
      v15[3] = v7;
      v8 = *(v5 + 80);
      v15[4] = *(v5 + 64);
      v15[5] = v8;
      v9 = *(v5 + 16);
      v15[0] = *v5;
      v15[1] = v9;
      sub_1DAA806E4(v15, v12);
      sub_1DAB88E84(v10, v15);
      v12[6] = v10[6];
      v12[7] = v10[7];
      v13 = v11;
      v12[2] = v10[2];
      v12[3] = v10[3];
      v12[4] = v10[4];
      v12[5] = v10[5];
      v12[0] = v10[0];
      v12[1] = v10[1];
      sub_1DAA9B1C8(v12);
      v5 += 136;
      --v2;
    }

    while (v2);
    return v14;
  }

  return result;
}

unint64_t sub_1DAB073D0()
{
  result = qword_1ECBE6DE8;
  if (!qword_1ECBE6DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6DE8);
  }

  return result;
}

unint64_t sub_1DAB07424()
{
  result = qword_1ECBE6E00;
  if (!qword_1ECBE6E00)
  {
    sub_1DAA8D834(255, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6E00);
  }

  return result;
}

void sub_1DAB074B4()
{
  if (!qword_1ECBE6E08)
  {
    sub_1DAA8D834(255, &qword_1ECBE6DF8, sub_1DAADA468, &type metadata for WatchlistEntity, MEMORY[0x1E695A630]);
    v0 = sub_1DACBA124();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE6E08);
    }
  }
}

void sub_1DAB07544()
{
  if (!qword_1ECBE6E10)
  {
    sub_1DAA8D834(255, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
    sub_1DAB02F28();
    sub_1DAADA468();
    sub_1DAA8D9E8();
    v0 = sub_1DACB7104();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE6E10);
    }
  }
}

void sub_1DAB07624()
{
  if (!qword_1ECBE6E18)
  {
    sub_1DAA8D834(255, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
    sub_1DAB02F28();
    sub_1DAA8D9E8();
    v0 = sub_1DACB72B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE6E18);
    }
  }
}

void sub_1DAB076F0()
{
  if (!qword_1ECBE6E20)
  {
    sub_1DAA8D834(255, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
    sub_1DAB02F28();
    sub_1DAA8D9E8();
    v0 = sub_1DACB70D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE6E20);
    }
  }
}

void sub_1DAB077B4()
{
  if (!qword_1ECBE6E28)
  {
    sub_1DAA8D834(255, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
    sub_1DAB02F28();
    sub_1DAA8D9E8();
    v0 = sub_1DACB7074();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE6E28);
    }
  }
}

uint64_t sub_1DAB07880@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1DAAFFF64(a1, a2);
}

uint64_t sub_1DAB07888@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1DAAFFE58(a1, a2);
}

uint64_t sub_1DAB07B6C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___SCUpdateUpsellAppLaunchCountCommand_upsellAppLaunchCount);
  sub_1DACBA274();
  return sub_1DACB9A84();
}

id sub_1DAB07C6C(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1DAA492B4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB7CC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DACB92F4();
  v14 = [a1 decodeObjectForKey_];

  if (v14)
  {
    sub_1DACB9B74();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24[0] = v22;
  v24[1] = v23;
  if (!*(&v23 + 1))
  {

    sub_1DAB0826C(v24, sub_1DAADFABC);
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_8;
  }

  v15 = swift_dynamicCast();
  (*(v9 + 56))(v7, v15 ^ 1u, 1, v8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

LABEL_8:
    sub_1DAB0826C(v7, sub_1DAA492B4);
    v16 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x30);
    v17 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v19 = *(v9 + 32);
  v19(v12, v7, v8);
  v19(&v1[OBJC_IVAR___SCUpdateAppReviewRequestLastSeenDateCommand_appReviewRequestLastSeenDate], v12, v8);
  v21.receiver = v1;
  v21.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v21, sel_init);

  return v20;
}

uint64_t sub_1DAB08044(void *a1, uint64_t a2)
{
  v3 = [a1 encryptedValues];
  swift_getObjectType();
  v4 = OBJC_IVAR___SCUpdateAppReviewRequestLastSeenDateCommand_appReviewRequestLastSeenDate;
  v5 = sub_1DACB7CC4();
  v8[3] = v5;
  v8[4] = MEMORY[0x1E695B590];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, a2 + v4, v5);
  sub_1DACB9A44();
  return swift_unknownObjectRelease();
}

uint64_t sub_1DAB0826C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAB082CC()
{
  sub_1DACB9404();
}

uint64_t sub_1DAB083FC()
{
  sub_1DACB9404();
}

uint64_t sub_1DAB08530()
{
  sub_1DACB9404();
}

uint64_t sub_1DAB08640()
{
  sub_1DACB9404();
}

uint64_t sub_1DAB087D8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB08808()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB08838()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB08868()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB088A4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB088D4()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB08904()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB08934()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  sub_1DACB71E4();
  return v1;
}

unint64_t sub_1DAB08964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v24 = *a7;
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20](a1, a2);
  *a9 = a5;
  *(a9 + 8) = a6;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = v24;
  v25 = qword_1EE122610;
  result = sub_1DACB71E4();
  if (v25 != -1)
  {
    result = swift_once();
  }

  v27 = a10;
  v28 = qword_1EE13E388;
  if (*(qword_1EE13E388 + 16) && (result = sub_1DAA4BF3C(a1, a2), (v29 & 1) != 0))
  {
    v30 = result;

    v31 = (*(v28 + 56) + 16 * v30);
    a8 = *v31;
    v27 = v31[1];
    result = sub_1DACB71E4();
  }

  else if (!a10)
  {
    result = sub_1DACB71E4();
    a8 = a1;
    v27 = a2;
  }

  *(a9 + 72) = a8;
  *(a9 + 80) = v27;
  v32 = qword_1EE13E390;
  if (*(qword_1EE13E390 + 16) && (result = sub_1DAA4BF3C(a1, a2), (v33 & 1) != 0))
  {
    v34 = result;

    v35 = (*(v32 + 56) + 16 * v34);
    a1 = *v35;
    a2 = v35[1];
    result = sub_1DACB71E4();
  }

  else if (a12)
  {
    a1 = a11;

    a2 = a12;
  }

  *(a9 + 88) = a1;
  *(a9 + 96) = a2;
  *(a9 + 104) = a13;
  *(a9 + 112) = a14;
  *(a9 + 120) = a15;
  *(a9 + 128) = a16;
  return result;
}

uint64_t sub_1DAB08B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAB0A6E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAB08B5C(uint64_t a1)
{
  v2 = sub_1DAA85E4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB08B98(uint64_t a1)
{
  v2 = sub_1DAA85E4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB08BD4()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = *(v0 + 64);
  v14 = v0[10];
  v15 = v0[9];
  v16 = v0[12];
  v17 = v0[11];
  v10 = v0[14];
  v12 = v0[13];
  v13 = v0[15];
  v18 = v0[16];
  sub_1DACB9404();
  sub_1DACB9404();
  sub_1DACB9404();
  sub_1DACB9404();
  sub_1DACB9404();

  sub_1DACB9404();
  sub_1DACB9404();
  if (!v10)
  {
    sub_1DACBA2A4();
    if (v18)
    {
      goto LABEL_3;
    }

    return sub_1DACBA2A4();
  }

  sub_1DACBA2A4();
  sub_1DACB9404();
  if (!v18)
  {
    return sub_1DACBA2A4();
  }

LABEL_3:
  sub_1DACBA2A4();

  return sub_1DACB9404();
}

uint64_t sub_1DAB08E34()
{
  sub_1DACBA284();
  sub_1DAB08BD4();
  return sub_1DACBA2C4();
}

uint64_t sub_1DAB08E74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  sub_1DAA85948(0, &qword_1EE11F598, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v41 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA85E4C();
  v81 = v9;
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v6;
  v12 = v58;
  LOBYTE(v68[0]) = 0;
  v13 = v5;
  v14 = sub_1DACB9FA4();
  v57 = v15;
  LOBYTE(v68[0]) = 1;
  v16 = sub_1DACB9FA4();
  v56 = v17;
  v52 = v14;
  v53 = v16;
  LOBYTE(v68[0]) = 2;
  v18 = a1;
  v19 = sub_1DACB9FA4();
  v54 = v20;
  LOBYTE(v68[0]) = 3;
  v51 = sub_1DACB9FA4();
  v55 = v21;
  LOBYTE(v59) = 4;
  sub_1DAB0A548();
  sub_1DACB9FE4();
  v22 = LOBYTE(v68[0]);
  LOBYTE(v68[0]) = 5;
  v23 = sub_1DACB9FA4();
  v50 = v24;
  v45 = v22;
  v46 = v23;
  LOBYTE(v68[0]) = 6;
  v49 = 0;
  v25 = sub_1DACB9FA4();
  v48 = v26;
  v44 = v25;
  LOBYTE(v68[0]) = 7;
  v27 = sub_1DACB9F34();
  v47 = v28;
  v43 = v27;
  v79 = 8;
  v29 = sub_1DACB9F34();
  v42 = v30;
  v31 = v29;
  (*(v11 + 8))(v81, v13);
  v32 = v52;
  *&v59 = v52;
  *(&v59 + 1) = v57;
  *&v60 = v53;
  *(&v60 + 1) = v56;
  v41 = v19;
  *&v61 = v19;
  *(&v61 + 1) = v54;
  *&v62 = v51;
  *(&v62 + 1) = v55;
  LOBYTE(v22) = v45;
  LOBYTE(v63) = v45;
  *(&v63 + 1) = v80[0];
  DWORD1(v63) = *(v80 + 3);
  *(&v63 + 1) = v46;
  *&v64 = v50;
  v33 = v44;
  *(&v64 + 1) = v44;
  *&v65 = v48;
  v34 = v42;
  *(&v65 + 1) = v43;
  *&v66 = v47;
  *(&v66 + 1) = v31;
  v67 = v42;
  v35 = v66;
  *(v12 + 96) = v65;
  *(v12 + 112) = v35;
  *(v12 + 128) = v34;
  v36 = v59;
  v37 = v60;
  v38 = v64;
  *(v12 + 64) = v63;
  *(v12 + 80) = v38;
  v39 = v62;
  *(v12 + 32) = v61;
  *(v12 + 48) = v39;
  *v12 = v36;
  *(v12 + 16) = v37;
  sub_1DAA806E4(&v59, v68);
  __swift_destroy_boxed_opaque_existential_1(v18);
  v68[0] = v32;
  v68[1] = v57;
  v68[2] = v53;
  v68[3] = v56;
  v68[4] = v41;
  v68[5] = v54;
  v68[6] = v51;
  v68[7] = v55;
  v69 = v22;
  *v70 = v80[0];
  *&v70[3] = *(v80 + 3);
  v71 = v46;
  v72 = v50;
  v73 = v33;
  v74 = v48;
  v75 = v43;
  v76 = v47;
  v77 = v31;
  v78 = v34;
  return sub_1DAA9B1C8(v68);
}

uint64_t sub_1DAB09488()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB094B8()
{
  sub_1DACBA284();
  sub_1DAB08BD4();
  return sub_1DACBA2C4();
}

uint64_t sub_1DAB094FC()
{
  sub_1DACBA284();
  sub_1DAB08BD4();
  return sub_1DACBA2C4();
}

unint64_t sub_1DAB09554(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1DACB9BF4();

  return sub_1DAB09884(a1, v5);
}

unint64_t sub_1DAB09598(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1DACB9A94();

  return sub_1DAB0994C(a1, v5);
}

unint64_t sub_1DAB095DC(uint64_t *a1)
{
  v3 = *(v1 + 40);
  sub_1DACBA284();
  sub_1DAB08BD4();
  v4 = sub_1DACBA2C4();

  return sub_1DAB09A10(a1, v4);
}

unint64_t sub_1DAB09648(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1DACBA284();
  sub_1DACB9404();

  v4 = sub_1DACBA2C4();

  return sub_1DAB09F70(a1, v4);
}

unint64_t sub_1DAB0970C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1DACB9324();
  sub_1DACBA284();
  sub_1DACB9404();
  v4 = sub_1DACBA2C4();

  return sub_1DAB0A100(a1, v4);
}

unint64_t sub_1DAB0979C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1DACB7AB4();
  sub_1DAB0A9D4(&qword_1EE1263D8);
  v5 = sub_1DACB91E4();

  return sub_1DAB0A204(a1, v5);
}

unint64_t sub_1DAB09820(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1DACB9DF4();
  v5 = sub_1DACB91E4();

  return sub_1DAB0A3B0(a1, v5);
}

unint64_t sub_1DAB09884(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1DAB0AA18(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1E12776E0](v9, a1);
      sub_1DAB0AA74(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1DAB0994C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1DAB0AAC8();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1DACB9AA4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1DAB09A10(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = *(a1 + 64);
    v7 = ~v4;
    v8 = *a1;
    v9 = a1[1];
    v10 = a1[2];
    v47 = a1[4];
    v48 = a1[3];
    v45 = a1[6];
    v46 = a1[5];
    v43 = a1[9];
    v44 = a1[7];
    v40 = a1[11];
    v41 = a1[10];
    v38 = a1[14];
    v39 = a1[12];
    v11 = a1[15];
    v35 = v11;
    v36 = a1[13];
    v37 = a1[16];
    v42 = ~v4;
    do
    {
      v12 = *(v2 + 48) + 136 * v5;
      v50 = *v12;
      v13 = *(v12 + 64);
      v15 = *(v12 + 16);
      v14 = *(v12 + 32);
      v53 = *(v12 + 48);
      v54 = v13;
      v51 = v15;
      v52 = v14;
      v17 = *(v12 + 96);
      v16 = *(v12 + 112);
      v18 = *(v12 + 80);
      v58 = *(v12 + 128);
      v56 = v17;
      v57 = v16;
      v55 = v18;
      if ((v50 != v8 || *(&v50 + 1) != v9) && (sub_1DACBA174() & 1) == 0 || (v51 != v10 || *(&v51 + 1) != v48) && (sub_1DACBA174() & 1) == 0 || (v52 != v47 || *(&v52 + 1) != v46) && (sub_1DACBA174() & 1) == 0 || (v53 != v45 || *(&v53 + 1) != v44) && (sub_1DACBA174() & 1) == 0)
      {
        goto LABEL_5;
      }

      if (v54 > 3u)
      {
        if (v54 > 5u)
        {
          if (v54 == 6)
          {
            v24 = 0xE500000000000000;
            v23 = 0x7865646E69;
            if (v6 > 3)
            {
              goto LABEL_46;
            }
          }

          else
          {
            v23 = 0x75466C617574756DLL;
            v24 = 0xEA0000000000646ELL;
            if (v6 > 3)
            {
              goto LABEL_46;
            }
          }
        }

        else
        {
          if (v54 == 4)
          {
            v23 = 6714469;
          }

          else
          {
            v23 = 0x73657275747566;
          }

          if (v54 == 4)
          {
            v24 = 0xE300000000000000;
          }

          else
          {
            v24 = 0xE700000000000000;
          }

          if (v6 > 3)
          {
            goto LABEL_46;
          }
        }
      }

      else
      {
        v19 = 0x75636F7470797263;
        if (v54 != 2)
        {
          v19 = 0x797469757165;
        }

        v20 = 0xEE0079636E657272;
        if (v54 != 2)
        {
          v20 = 0xE600000000000000;
        }

        v21 = 0x79636E6572727563;
        if (!v54)
        {
          v21 = 0x6E776F6E6B6E75;
        }

        v22 = 0xE700000000000000;
        if (v54)
        {
          v22 = 0xE800000000000000;
        }

        if (v54 <= 1u)
        {
          v23 = v21;
        }

        else
        {
          v23 = v19;
        }

        if (v54 <= 1u)
        {
          v24 = v22;
        }

        else
        {
          v24 = v20;
        }

        if (v6 > 3)
        {
LABEL_46:
          v26 = 0x75466C617574756DLL;
          if (v6 == 6)
          {
            v26 = 0x7865646E69;
          }

          v27 = 0xEA0000000000646ELL;
          if (v6 == 6)
          {
            v27 = 0xE500000000000000;
          }

          v28 = 0x73657275747566;
          if (v6 == 4)
          {
            v28 = 6714469;
          }

          v29 = 0xE700000000000000;
          if (v6 == 4)
          {
            v29 = 0xE300000000000000;
          }

          if (v6 <= 5)
          {
            v30 = v28;
          }

          else
          {
            v30 = v26;
          }

          if (v6 <= 5)
          {
            v25 = v29;
          }

          else
          {
            v25 = v27;
          }

          if (v23 != v30)
          {
            goto LABEL_76;
          }

          goto LABEL_74;
        }
      }

      if (v6 > 1)
      {
        if (v6 == 2)
        {
          v31 = 0x75636F7470797263;
        }

        else
        {
          v31 = 0x797469757165;
        }

        if (v6 == 2)
        {
          v25 = 0xEE0079636E657272;
        }

        else
        {
          v25 = 0xE600000000000000;
        }

        if (v23 != v31)
        {
          goto LABEL_76;
        }
      }

      else if (v6)
      {
        v25 = 0xE800000000000000;
        if (v23 != 0x79636E6572727563)
        {
          goto LABEL_76;
        }
      }

      else
      {
        v25 = 0xE700000000000000;
        if (v23 != 0x6E776F6E6B6E75)
        {
          goto LABEL_76;
        }
      }

LABEL_74:
      if (v24 == v25)
      {
        sub_1DAA806E4(&v50, v49);

        v7 = v42;
        v3 = v2 + 64;
        goto LABEL_77;
      }

LABEL_76:
      v32 = sub_1DACBA174();
      sub_1DAA806E4(&v50, v49);

      v7 = v42;
      v3 = v2 + 64;
      if ((v32 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_77:
      if ((*(&v54 + 1) != v43 || v55 != v41) && (sub_1DACBA174() & 1) == 0 || (*(&v55 + 1) != v40 || v56 != v39) && (sub_1DACBA174() & 1) == 0)
      {
        goto LABEL_4;
      }

      if (v57)
      {
        if (!v38 || (*(&v56 + 1) != v36 || v57 != v38) && (sub_1DACBA174() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v38)
      {
        goto LABEL_4;
      }

      if (!v58)
      {
        if (!v37)
        {
          goto LABEL_99;
        }

LABEL_4:
        sub_1DAA9B1C8(&v50);
        goto LABEL_5;
      }

      if (!v37)
      {
        goto LABEL_4;
      }

      if (*(&v57 + 1) == v35 && v58 == v37)
      {
LABEL_99:
        sub_1DAA9B1C8(&v50);
        return v5;
      }

      v33 = sub_1DACBA174();
      sub_1DAA9B1C8(&v50);
      if (v33)
      {
        return v5;
      }

LABEL_5:
      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1DAB09F70(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE600000000000000;
          v8 = 0x737961776C61;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0xE500000000000000;
          v8 = 0x726576656ELL;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xEA00000000007372;
            if (v8 != 0x756F487265746661)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0x756F487265746661;
        v7 = 0xEA00000000007372;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x737961776C61;
      }

      else
      {
        v10 = 0x726576656ELL;
      }

      if (v9 == 1)
      {
        v11 = 0xE600000000000000;
      }

      else
      {
        v11 = 0xE500000000000000;
      }

      if (v8 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_1DACBA174();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1DAB0A100(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1DACB9324();
      v9 = v8;
      if (v7 == sub_1DACB9324() && v9 == v10)
      {
        break;
      }

      v12 = sub_1DACBA174();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1DAB0A204(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1DACB7AB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_1DAB0A9D4(&qword_1EE1252B0);
      v16 = sub_1DACB9264();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1DAB0A3B0(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_1DACB9DF4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = sub_1DACB9264();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1DAB0A548()
{
  result = qword_1EE120140;
  if (!qword_1EE120140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE120140);
  }

  return result;
}

unint64_t sub_1DAB0A5A0()
{
  result = qword_1EE1201B8;
  if (!qword_1EE1201B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1201B8);
  }

  return result;
}

unint64_t sub_1DAB0A61C()
{
  result = qword_1ECBE6EB0;
  if (!qword_1ECBE6EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6EB0);
  }

  return result;
}

unint64_t sub_1DAB0A670(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

unint64_t sub_1DAB0A69C()
{
  v1 = *(v0 + 40);
  sub_1DACBA284();
  v2 = sub_1DACBA2C4();

  return sub_1DAB0A670(v2);
}

uint64_t sub_1DAB0A6E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65676E6168637865 && a2 == 0xE800000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D614E74726F6873 && a2 == 0xE900000000000065 || (sub_1DACBA174() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4E746361706D6F63 && a2 == 0xEB00000000656D61 || (sub_1DACBA174() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x726F74636573 && a2 == 0xE600000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7972747375646E69 && a2 == 0xE800000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1DAB0A9D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DACB7AB4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAB0AAC8()
{
  result = qword_1EE123DC0[0];
  if (!qword_1EE123DC0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EE123DC0);
  }

  return result;
}

CGColorSpace *sub_1DAB0AB1C()
{
  v1 = v0;
  result = CGImageGetColorSpace(v0);
  if (result)
  {
    v3 = result;
    v4 = [objc_allocWithZone(MEMORY[0x1E695F620]) initWithOptions_];
    v5 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
    v6 = *MEMORY[0x1E695F910];
    sub_1DAB689D4(MEMORY[0x1E69E7CC0]);
    type metadata accessor for CIImageRepresentationOption(0);
    sub_1DAB0BF58(&qword_1EE11D070, 255, type metadata accessor for CIImageRepresentationOption);
    v7 = sub_1DACB9114();

    v8 = [v4 PNGRepresentationOfImage:v5 format:v6 colorSpace:v3 options:v7];

    if (v8)
    {
      v9 = sub_1DACB7B64();

      return v9;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1DAB0AC98(void *a1, uint64_t a2, unint64_t a3)
{
  sub_1DAB0C068(0, &qword_1EE11CF60, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v15[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB0BFC0();
  sub_1DACBA304();
  v16 = a2;
  v17 = a3;
  v15[15] = 0;
  sub_1DAB0B080(a2, a3);
  sub_1DAB0C0CC();
  sub_1DACBA0E4();
  sub_1DAA563C0(v16, v17);
  if (!v3)
  {
    LOBYTE(v16) = 1;
    sub_1DACBA0B4();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1DAB0AE58()
{
  if (*v0)
  {
    result = 0x656C616373;
  }

  else
  {
    result = 1635017060;
  }

  *v0;
  return result;
}

uint64_t sub_1DAB0AE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();

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

uint64_t sub_1DAB0AF60(uint64_t a1)
{
  v2 = sub_1DAB0BFC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB0AF9C(uint64_t a1)
{
  v2 = sub_1DAB0BFC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DAB0AFD8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_1DAB0B6EC(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

uint64_t sub_1DAB0B080(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }

    sub_1DACB71F4();
  }

  return sub_1DACB71F4();
}

uint64_t sub_1DAB0B0EC@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_1DAB0B120@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  return sub_1DAB0B080(a1, a2);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DAB0B1B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1DAB0B20C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1DAB0B26C(double a1, double a2, double a3)
{
  v3 = ceil(a1 * a3);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = ceil(a2 * a3);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v4 < 9.22337204e18)
  {
    return v3;
  }

LABEL_13:
  __break(1u);
  return result;
}

int64_t sub_1DAB0B30C(CGDataProvider *a1, double a2)
{
  result = CGPDFDocumentCreateWithProvider(a1);
  if (result)
  {
    v4 = result;
    v5 = CGPDFDocumentGetPage(result, 1uLL);
    if (!v5)
    {
LABEL_13:

      return 0;
    }

    v6 = v5;
    BoxRect = CGPDFPageGetBoxRect(v5, kCGPDFMediaBox);
    x = BoxRect.origin.x;
    y = BoxRect.origin.y;
    width = BoxRect.size.width;
    height = BoxRect.size.height;
    result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    if (!result)
    {
LABEL_18:
      __break(1u);
      return result;
    }

    v11 = result;
    result = CGColorSpaceGetNumberOfComponents(result);
    v12 = result + 1;
    if (__OFADD__(result, 1))
    {
      __break(1u);
    }

    else
    {
      result = sub_1DAB0B26C(width, height, a2);
      v13 = result * v12;
      if ((result * v12) >> 64 == (result * v12) >> 63)
      {
        v14 = __OFADD__(v13, 64);
        v15 = v13 + 64;
        if (!v14)
        {
          v17 = v15 - 1;
          v16 = v15 < 1;
          v18 = v15 + 62;
          if (v16)
          {
            v19 = v18;
          }

          else
          {
            v19 = v17;
          }

          v20 = sub_1DAB0B26C(width, height, a2);
          sub_1DAB0B26C(width, height, a2);
          v22 = __CGBitmapContextCreate(v20, v21, v19 & 0xFFFFFFFFFFFFFFC0, v11);
          if (v22)
          {
            v23 = v22;
            CGContextScaleCTM(v23, a2, a2);
            CGContextSetGrayFillColor(v23, 1.0, 0.0);
            v26.origin.x = x;
            v26.origin.y = y;
            v26.size.width = width;
            v26.size.height = height;
            CGContextFillRect(v23, v26);
            CGContextDrawPDFPage(v23, v6);
            Image = CGBitmapContextCreateImage(v23);

            return Image;
          }

          goto LABEL_13;
        }

        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  return result;
}

double sub_1DAB0B4B0(uint64_t a1, unint64_t a2, double a3)
{
  if (qword_1EE11D360 != -1)
  {
    swift_once();
  }

  v6 = sub_1DACB8C94();
  __swift_project_value_buffer(v6, qword_1EE11D368);
  v7 = sub_1DACB8C74();
  v8 = sub_1DACB9914();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1DAA3F000, v7, v8, "Rasterizing attribution source logo", v9, 2u);
    MEMORY[0x1E1278C00](v9, -1, -1);
  }

  v10 = sub_1DACB7B44();
  v11 = CGDataProviderCreateWithCFData(v10);

  if (v11)
  {
    v12 = CGImageCreateWithPNGDataProvider(v11, 0, 0, kCGRenderingIntentDefault);
    if (v12 || (v12 = CGImageCreateWithJPEGDataProvider(v11, 0, 0, kCGRenderingIntentDefault)) != 0)
    {

      a3 = 1.0;
    }

    else
    {
      v15 = sub_1DAB0B30C(v11, a3);
      if (!v15 || (sub_1DAB0AB1C(), v16 >> 60 == 15))
      {
        sub_1DAB0BF04();
        swift_allocError();
        *v17 = 1;
        swift_willThrow();
        sub_1DAA563C0(a1, a2);

        return a3;
      }

      sub_1DAA563C0(a1, a2);
      v11 = v15;
    }
  }

  else
  {
    sub_1DAB0BF04();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    sub_1DAA563C0(a1, a2);
  }

  return a3;
}

double sub_1DAB0B6EC(uint64_t *a1)
{
  sub_1DAB0C068(0, &qword_1EE11CFC8, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB0BFC0();
  sub_1DACBA2F4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v16 = 0;
    sub_1DAB0C014();
    sub_1DACB9FE4();
    v12 = v15[0];
    v13 = v15[1];
    LOBYTE(v15[0]) = 1;
    sub_1DACB9FC4();
    v2 = v14;
    (*(v6 + 8))(v9, v5);
    sub_1DAB0B080(v12, v13);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1DAA563C0(v12, v13);
  }

  return v2;
}

uint64_t sub_1DAB0B90C(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 48) = a2;
  *(v3 + 40) = a3;
  *(v3 + 32) = a1;
  v4 = sub_1DACB8204();
  *(v3 + 56) = v4;
  v5 = *(v4 - 8);
  *(v3 + 64) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  v7 = sub_1DACB7AB4();
  *(v3 + 80) = v7;
  v8 = *(v7 - 8);
  *(v3 + 88) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  v10 = *(*(sub_1DACB74D4() - 8) + 64) + 15;
  *(v3 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAB0BA5C, 0, 0);
}

uint64_t sub_1DAB0BA5C()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v12 = v0[7];
  v8 = v0[4];
  sub_1DAB0BE74();
  (*(v4 + 16))(v1, v8, v3);
  sub_1DACB7484();
  (*(v6 + 16))(v5, v7, v12);
  v0[14] = sub_1DACB8504();
  v9 = *(MEMORY[0x1E69D6520] + 4);
  v13 = (*MEMORY[0x1E69D6520] + MEMORY[0x1E69D6520]);
  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = sub_1DAB0BBB0;

  return v13(v0 + 2);
}

uint64_t sub_1DAB0BBB0()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1DAB0BDEC;
  }

  else
  {
    v3 = sub_1DAB0BCC4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAB0BCC4()
{
  v1 = *(v0 + 128);
  v4 = sub_1DAB0B4B0(*(v0 + 16), *(v0 + 24), *(v0 + 40));
  v5 = *(v0 + 112);
  if (v1)
  {

    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = *(v0 + 72);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 96);
    v12 = *(v0 + 104);
    v13 = *(v0 + 72);
    v14 = v2;
    v15 = v3;
    v16 = v4;

    v17 = *(v0 + 8);
    v18.n128_f64[0] = v16;

    return v17(v14, v15, v18);
  }
}

uint64_t sub_1DAB0BDEC()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 72);

  v5 = *(v0 + 8);

  return v5();
}

void sub_1DAB0BE74()
{
  if (!qword_1EE11FFB0)
  {
    type metadata accessor for SDSLogoDeserializer();
    sub_1DAB0BF58(qword_1EE1218E0, v0, type metadata accessor for SDSLogoDeserializer);
    v1 = sub_1DACB8514();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11FFB0);
    }
  }
}

unint64_t sub_1DAB0BF04()
{
  result = qword_1ECBE6EB8;
  if (!qword_1ECBE6EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6EB8);
  }

  return result;
}

uint64_t sub_1DAB0BF58(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAB0BFC0()
{
  result = qword_1EE123230;
  if (!qword_1EE123230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123230);
  }

  return result;
}

unint64_t sub_1DAB0C014()
{
  result = qword_1EE123A60;
  if (!qword_1EE123A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123A60);
  }

  return result;
}

void sub_1DAB0C068(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAB0BFC0();
    v7 = a3(a1, &type metadata for DownloadedImage.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1DAB0C0CC()
{
  result = qword_1EE125298;
  if (!qword_1EE125298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125298);
  }

  return result;
}

unint64_t sub_1DAB0C144()
{
  result = qword_1ECBE6EC0;
  if (!qword_1ECBE6EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6EC0);
  }

  return result;
}

unint64_t sub_1DAB0C19C()
{
  result = qword_1ECBE6EC8;
  if (!qword_1ECBE6EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6EC8);
  }

  return result;
}

unint64_t sub_1DAB0C1F4()
{
  result = qword_1EE123220;
  if (!qword_1EE123220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123220);
  }

  return result;
}

unint64_t sub_1DAB0C24C()
{
  result = qword_1EE123228;
  if (!qword_1EE123228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123228);
  }

  return result;
}

uint64_t sub_1DAB0C2A4()
{
  sub_1DACBA284();
  sub_1DACB9404();
  return sub_1DACBA2C4();
}

uint64_t sub_1DAB0C310()
{
  sub_1DACBA284();
  sub_1DACB9404();
  return sub_1DACBA2C4();
}

uint64_t sub_1DAB0C360@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DACB9F04();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1DAB0C3E8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1DACB9F04();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1DAB0C440(uint64_t a1)
{
  v2 = sub_1DAB0D174();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB0C47C(uint64_t a1)
{
  v2 = sub_1DAB0D174();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB0C4C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = result;
  v7 = *(*v3 + 16);
  v8 = *v3 + 40;
  v9 = v7 + 1;
  while (1)
  {
    if (!--v9)
    {
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      return result;
    }

    v11 = *(v8 - 8);
    v10 = *v8;
    v12 = *(v8 + 8);
    v15 = *(v8 + 16);
    v13 = *(v8 + 32);
    if (v11 == v5 && v10 == a2)
    {
      break;
    }

    v8 += 48;
    result = sub_1DACBA174();
    if (result)
    {
      goto LABEL_11;
    }
  }

  v11 = v5;
LABEL_11:
  *a3 = v11;
  *(a3 + 8) = v10;
  *(a3 + 16) = v12;
  *(a3 + 24) = v15;
  *(a3 + 40) = v13;
  sub_1DACB71E4();

  return sub_1DACB71E4();
}

uint64_t sub_1DAB0C5E0()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB0C6AC()
{
  *v0;
  *v0;
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DAB0C764()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB0C82C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAB0D8A0();
  *a2 = result;
  return result;
}

void sub_1DAB0C85C(uint64_t *a1@<X8>)
{
  v2 = 0xED00004449797469;
  v3 = 0x746E456B636F7473;
  v4 = 0xEA00000000006563;
  v5 = 0x6E6174726F706D69;
  if (*v1 != 2)
  {
    v5 = 0x726F697270;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6C6F626D7973;
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

uint64_t sub_1DAB0C8E4()
{
  v1 = 0x746E456B636F7473;
  v2 = 0x6E6174726F706D69;
  if (*v0 != 2)
  {
    v2 = 0x726F697270;
  }

  if (*v0)
  {
    v1 = 0x6C6F626D7973;
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

uint64_t sub_1DAB0C968@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAB0D8A0();
  *a1 = result;
  return result;
}

uint64_t sub_1DAB0C990(uint64_t a1)
{
  v2 = sub_1DAB0CD40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB0C9CC(uint64_t a1)
{
  v2 = sub_1DAB0CD40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB0CA08()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB0CA38()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB0CA78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v26 = a2;
  sub_1DAB0D464(0, &qword_1EE11F630, sub_1DAB0CD40, &type metadata for HeadlineMetadata.StockEntityMetadata.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB0CD40();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v6;
  v12 = v26;
  v30 = 0;
  v13 = sub_1DACB9FA4();
  v25 = v14;
  v29 = 1;
  v23 = sub_1DACB9F34();
  v24 = v15;
  v28 = 2;
  sub_1DACB9FC4();
  v17 = v16;
  v27 = 3;
  sub_1DACB9FC4();
  v20 = v19;
  (*(v11 + 8))(v9, v5);
  v22 = v24;
  v21 = v25;
  *v12 = v13;
  v12[1] = v21;
  v12[2] = v23;
  v12[3] = v22;
  v12[4] = v17;
  v12[5] = v20;
  sub_1DACB71E4();
  sub_1DACB71E4();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DAB0CD40()
{
  result = qword_1EE122B78;
  if (!qword_1EE122B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122B78);
  }

  return result;
}

uint64_t sub_1DAB0CD94(void *a1)
{
  sub_1DAB0D464(0, &qword_1ECBE6ED0, sub_1DAB0CD40, &type metadata for HeadlineMetadata.StockEntityMetadata.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v17 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v17[1] = v1[3];
  v17[2] = v11;
  v13 = v1[4];
  v12 = v1[5];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB0CD40();
  sub_1DACBA304();
  v21 = 0;
  v15 = v17[3];
  sub_1DACBA094();
  if (!v15)
  {
    v20 = 1;
    sub_1DACBA024();
    v19 = 2;
    sub_1DACBA0B4();
    v18 = 3;
    sub_1DACBA0B4();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1DAB0CFAC(void *a1)
{
  sub_1DAB0D464(0, &qword_1ECBE6ED8, sub_1DAB0D174, &type metadata for HeadlineMetadata.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB0D174();
  sub_1DACB71E4();
  sub_1DACBA304();
  v12[3] = v9;
  sub_1DAB0D1C8();
  sub_1DAB0D4CC(&qword_1ECBE6EE0, sub_1DAB0D218);
  sub_1DACBA0E4();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1DAB0D174()
{
  result = qword_1EE122B58;
  if (!qword_1EE122B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122B58);
  }

  return result;
}

void sub_1DAB0D1C8()
{
  if (!qword_1EE11FB48)
  {
    v0 = sub_1DACB9724();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FB48);
    }
  }
}

unint64_t sub_1DAB0D218()
{
  result = qword_1ECBE6EE8;
  if (!qword_1ECBE6EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6EE8);
  }

  return result;
}

uint64_t sub_1DAB0D26C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v14 = a2;
  sub_1DAB0D464(0, &qword_1EE11F628, sub_1DAB0D174, &type metadata for HeadlineMetadata.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB0D174();
  sub_1DACBA2F4();
  if (!v2)
  {
    v11 = v14;
    sub_1DAB0D1C8();
    sub_1DAB0D4CC(&qword_1EE11FB40, sub_1DAB0D538);
    sub_1DACB9FE4();
    (*(v6 + 8))(v9, v5);
    *v11 = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1DAB0D464(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1DAB0D4CC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1DAB0D1C8();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAB0D538()
{
  result = qword_1EE122B60;
  if (!qword_1EE122B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122B60);
  }

  return result;
}

uint64_t sub_1DAB0D5CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1DAB0D614(uint64_t result, int a2, int a3)
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

unint64_t sub_1DAB0D694()
{
  result = qword_1ECBE6EF0;
  if (!qword_1ECBE6EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6EF0);
  }

  return result;
}

unint64_t sub_1DAB0D6EC()
{
  result = qword_1ECBE6EF8;
  if (!qword_1ECBE6EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6EF8);
  }

  return result;
}

unint64_t sub_1DAB0D744()
{
  result = qword_1EE122B48;
  if (!qword_1EE122B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122B48);
  }

  return result;
}

unint64_t sub_1DAB0D79C()
{
  result = qword_1EE122B50;
  if (!qword_1EE122B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122B50);
  }

  return result;
}

unint64_t sub_1DAB0D7F4()
{
  result = qword_1EE122B68;
  if (!qword_1EE122B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122B68);
  }

  return result;
}

unint64_t sub_1DAB0D84C()
{
  result = qword_1EE122B70;
  if (!qword_1EE122B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122B70);
  }

  return result;
}

uint64_t sub_1DAB0D8A0()
{
  v0 = sub_1DACB9F04();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DAB0D8EC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6959A48]) init];
  v1 = [v0 aa_primaryAppleAccount];

  if (v1)
  {
    v2 = [v1 sc_isEnabledForStocksDataclass];
    sub_1DACB9094();
    if (v2)
    {
      v3 = sub_1DAB956F8();
      v4 = sub_1DACB9074();
    }

    else
    {
      v4 = sub_1DACB9084();
    }

    return v4;
  }

  else
  {
    sub_1DACB9094();
    return sub_1DACB9084();
  }
}

unint64_t sub_1DAB0D9E8()
{
  result = qword_1ECBE6F00;
  if (!qword_1ECBE6F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6F00);
  }

  return result;
}

uint64_t sub_1DAB0DA50()
{
  v0 = CACurrentMediaTime();
  type metadata accessor for ForYouConfigRecord(0);
  sub_1DACB8BB4();
  *(swift_allocObject() + 16) = v0;
  v1 = sub_1DACB89D4();
  sub_1DACB8A64();

  v2 = sub_1DACB89D4();
  sub_1DACB8AA4();

  sub_1DACB8A14();

  v3 = sub_1DACB89D4();
  sub_1DACB8B14();

  type metadata accessor for AppConfiguration(0);
  sub_1DACB8BB4();
  sub_1DACB71F4();
  v4 = sub_1DACB89D4();
  sub_1DACB8A54();

  v5 = sub_1DACB89D4();
  sub_1DACB8A64();

  v6 = sub_1DACB89D4();
  sub_1DACB8AA4();

  sub_1DACB8A14();

  v7 = sub_1DACB89D4();
  sub_1DACB8B14();

  v8 = sub_1DACB89D4();
  v9 = sub_1DACB89C4();

  return v9;
}

uint64_t sub_1DAB0DD10(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  if (v2 >> 60 == 15)
  {
    v3 = a1[1];
    if (v3 >> 60 == 15)
    {
      sub_1DAB0EB70();
      swift_allocError();
      *v4 = 0;
      v4[1] = 0;
      return swift_willThrow();
    }

    sub_1DAB0B080(*a1, v3);
  }

  sub_1DAB0ECA4(0, &qword_1EE11D448, MEMORY[0x1E6969080], MEMORY[0x1E69D6B18]);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1DAB0EBC4(v1, v2);
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB0DE0C(void *a1)
{
  sub_1DAA41DCC();
  v2 = sub_1DACB9AD4();
  sub_1DACB9914();
  sub_1DACB8C64();

  v3 = a1[5];
  v4 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v3);
  return (*(v4 + 8))(v3, v4);
}

uint64_t sub_1DAB0DEBC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v7 = sub_1DACB9364();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA41D64();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DACC1D40;
  v13 = CACurrentMediaTime();
  v14 = MEMORY[0x1E69E6438];
  *(v12 + 56) = MEMORY[0x1E69E63B0];
  *(v12 + 64) = v14;
  *(v12 + 32) = (v13 - a3) * 1000.0;
  v15 = *a1;
  v16 = a1[1];
  *(v12 + 96) = MEMORY[0x1E69E6158];
  *(v12 + 104) = sub_1DAA443C8();
  *(v12 + 72) = v15;
  *(v12 + 80) = v16;
  sub_1DAA41DCC();
  sub_1DACB71E4();
  v17 = sub_1DACB9AD4();
  sub_1DACB9914();
  sub_1DACB8C64();

  v18 = (a1 + *(type metadata accessor for ForYouConfigRecord(0) + 28));
  v20 = *v18;
  v19 = v18[1];
  v21 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v21 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
    sub_1DACB9904();
    v29 = sub_1DACB9AD4();
    sub_1DACB8C64();

    sub_1DAB0EB70();
    swift_allocError();
    *v30 = xmmword_1DACC57B0;
    return swift_willThrow();
  }

  v31[1] = v3;
  v22 = a2;
  sub_1DACB9354();
  v23 = sub_1DACB9334();
  v25 = v24;
  result = (*(v8 + 8))(v11, v7);
  if (v25 >> 60 == 15)
  {
    sub_1DACB9904();
    v27 = sub_1DACB9AD4();
    sub_1DACB8C64();

    sub_1DAB0EB70();
    swift_allocError();
    *v28 = v20;
    v28[1] = v19;
    sub_1DACB71E4();
    return swift_willThrow();
  }

  *v22 = v23;
  v22[1] = v25;
  return result;
}

void sub_1DAB0E1C0()
{
  sub_1DACB9904();
  sub_1DAA41D64();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DACC1D20;
  sub_1DAA4436C(0, &qword_1EE123B10);
  sub_1DACB9DD4();
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1DAA443C8();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_1DAA41DCC();
  v1 = sub_1DACB9AD4();
  sub_1DACB8C64();
}

uint64_t sub_1DAB0E2C4(uint64_t a1, void *a2)
{
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE11D528 != -1)
  {
    swift_once();
  }

  [objc_opt_self() enabledForCurrentLevel_];
  v4 = sub_1DACB8004();

  if (v4)
  {
    v5 = CACurrentMediaTime();
    sub_1DAA41DCC();
    v6 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();

    v7 = a2[10];
    v8 = a2[11];
    __swift_project_boxed_opaque_existential_1(a2 + 7, v7);
    v9 = *__swift_project_boxed_opaque_existential_1(a2 + 12, a2[15]);
    v10 = sub_1DABBCF20(0xD000000000000018, 0x80000001DACE48B0, 0xD000000000000018, 0x80000001DACE48D0, 0, 0);
    (*(v8 + 8))(v10, v7, v8);

    *(swift_allocObject() + 16) = v5;
    v11 = sub_1DACB89D4();
    v12 = sub_1DACB8A54();

    return v12;
  }

  else
  {
    sub_1DAA41DCC();
    v14 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();

    sub_1DAB0EB70();
    swift_allocError();
    *v15 = xmmword_1DACC57C0;
    return swift_willThrow();
  }
}

uint64_t sub_1DAB0E54C(uint64_t *a1, double a2)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  sub_1DAA41D64();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DACC1D20;
  v8 = CACurrentMediaTime();
  v9 = MEMORY[0x1E69E6438];
  *(v7 + 56) = MEMORY[0x1E69E63B0];
  *(v7 + 64) = v9;
  *(v7 + 32) = (v8 - a2) * 1000.0;
  sub_1DAA41DCC();
  v10 = sub_1DACB9AD4();
  sub_1DACB9914();
  sub_1DACB8C64();

  sub_1DAB0ECA4(0, &qword_1EE1240A8, &type metadata for RemoteConfigurationResult, MEMORY[0x1E69D6B18]);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_1DAB0B080(v3, v4);
  sub_1DACB71E4();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB0E6AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return sub_1DAB0B080(v3, v2);
}

void sub_1DAB0E6E0()
{
  sub_1DAA41D64();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DACC1D20;
  sub_1DAA4436C(0, &qword_1EE123B10);
  sub_1DACB9DD4();
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1DAA443C8();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_1DAA41DCC();
  v1 = sub_1DACB9AD4();
  sub_1DACB9914();
  sub_1DACB8C64();
}

uint64_t sub_1DAB0E7E0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v1 = v0[17];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAB0E85C()
{
  v1 = *v0;
  sub_1DAB0EAE8();
  sub_1DACB8BB4();
  v2 = sub_1DACB89D4();
  v3 = sub_1DACB8A54();

  return v3;
}

void *sub_1DAB0E8F0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v32 = a7;
  v33 = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v31);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a2, a7);
  v29 = a8;
  v30 = a10;
  v18 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a8 - 8) + 32))(v18, a3, a8);
  v19 = swift_allocObject();
  v20 = v29;
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = *v24;
  v19[15] = type metadata accessor for RemoteConfigurationSettingsFactory();
  v19[16] = &off_1F56896D8;
  v19[12] = v26;
  sub_1DAA4D460(a1, (v19 + 2));
  sub_1DAA4D460(&v31, (v19 + 7));
  v19[17] = a4;
  sub_1DAA4D460(a5, (v19 + 18));
  __swift_destroy_boxed_opaque_existential_1(v28);
  return v19;
}

void sub_1DAB0EAE8()
{
  if (!qword_1EE11F110)
  {
    sub_1DAB0ECA4(255, &qword_1EE11F118, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11F110);
    }
  }
}

unint64_t sub_1DAB0EB70()
{
  result = qword_1EE11E100;
  if (!qword_1EE11E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E100);
  }

  return result;
}

uint64_t sub_1DAB0EBC4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DAB0B080(a1, a2);
  }

  return a1;
}

uint64_t sub_1DAB0EC10()
{
  v1 = v0[21];
  v2 = v0[22];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v1);
  return (*(v2 + 40))(v1, v2);
}

void sub_1DAB0ECA4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t get_enum_tag_for_layout_string_10StocksCore23ForYouFeedConfigServiceC6ErrorsO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DAB0ED0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DAB0ED64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_1DAB0EDDC()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1DAB0EE18()
{
  result = qword_1ECBE6F78;
  if (!qword_1ECBE6F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6F78);
  }

  return result;
}

uint64_t sub_1DAB0EE6C(uint64_t a1)
{
  v1[9] = a1;
  v2 = sub_1DACB78E4();
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();
  v5 = *(*(sub_1DACB7E44() - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v6 = sub_1DACB92E4();
  v1[14] = v6;
  v7 = *(v6 - 8);
  v1[15] = v7;
  v8 = *(v7 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v9 = *(*(sub_1DACB7904() - 8) + 64) + 15;
  v1[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAB0EFEC, 0, 0);
}

uint64_t sub_1DAB0EFEC()
{
  v1 = v0[9];
  sub_1DACB6D24();
  v3 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_1DAB0F0B0;

  return sub_1DAC95D1C(v3, v2);
}

uint64_t sub_1DAB0F0B0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  v7 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v5 = sub_1DAB0F7B8;
  }

  else
  {
    v5 = sub_1DAB0F1C4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DAB0F1C4()
{
  v1 = v0[20];
  result = __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = *(v1 + 16);
  if (!v3)
  {
    v56 = MEMORY[0x1E69E7CC0];
    goto LABEL_20;
  }

  v4 = 0;
  v70 = -v3;
  v5 = v0[20] + 73;
  v56 = MEMORY[0x1E69E7CC0];
  v61 = v5;
  do
  {
    v6 = (v5 + 48 * v4++);
    while (1)
    {
      if ((v4 - 1) >= *(v1 + 16))
      {
        __break(1u);
        return result;
      }

      v68 = *(v6 - 41);
      v7 = *(v6 - 33);
      v8 = *(v6 - 25);
      v9 = *(v6 - 17);
      v10 = *(v6 - 9);
      v66 = *(v6 - 1);
      v63 = *v6;
      if (v9 == sub_1DACB9324() && v10 == v11)
      {
        goto LABEL_4;
      }

      v13 = sub_1DACBA174();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();

      if ((v13 & 1) == 0)
      {
        break;
      }

LABEL_4:

      ++v4;
      v6 += 48;
      if (v70 + v4 == 1)
      {
        goto LABEL_20;
      }
    }

    v14 = v56;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1DAB25C88(0, *(v56 + 16) + 1, 1);
      v14 = v56;
    }

    v16 = *(v14 + 16);
    v15 = *(v14 + 24);
    if (v16 >= v15 >> 1)
    {
      result = sub_1DAB25C88((v15 > 1), v16 + 1, 1);
      v14 = v56;
    }

    *(v14 + 16) = v16 + 1;
    v56 = v14;
    v17 = v14 + 48 * v16;
    *(v17 + 32) = v68;
    *(v17 + 40) = v7;
    *(v17 + 48) = v8;
    *(v17 + 56) = v9;
    *(v17 + 64) = v10;
    *(v17 + 72) = v66;
    *(v17 + 73) = v63;
    v5 = v61;
  }

  while (v70 + v4);
LABEL_20:
  v18 = v0[20];

  v19 = *(v56 + 16);
  if (v19)
  {
    v20 = v0[15];
    v21 = v0[11];
    v71 = MEMORY[0x1E69E7CC0];
    sub_1DAB25C68(0, v19, 0);
    sub_1DAA9A574();
    v22 = v71;
    v60 = (v21 + 104);
    v57 = (v20 + 8);
    v58 = (v20 + 16);
    v23 = (v56 + 64);
    v59 = *MEMORY[0x1E6968DF0];
    while (1)
    {
      v67 = v19;
      v69 = v22;
      v25 = v0[17];
      v24 = v0[18];
      v26 = v0[12];
      v27 = v0[13];
      v28 = v0[10];
      v62 = *(v23 - 4);
      v64 = *(v23 - 3);
      v30 = *(v23 - 2);
      v29 = *(v23 - 1);
      v31 = *v23;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_1DACB9284();
      sub_1DACB7DF4();
      (*v60)(v26, v59, v28);
      sub_1DACB7914();
      v32 = sub_1DACB6F34();
      if (v29 == sub_1DACB9324() && v31 == v33)
      {
        break;
      }

      v34 = sub_1DACBA174();
      sub_1DACB71E4();

      v35 = v62;
      v36 = v64;
      if (v34)
      {
        goto LABEL_26;
      }

LABEL_29:

      v0[7] = v35;
      v0[8] = v36;
      sub_1DACB6EE4();

      v22 = v69;
      v48 = *(v69 + 16);
      v47 = *(v69 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_1DAB25C68((v47 > 1), v48 + 1, 1);
        v22 = v69;
      }

      *(v22 + 16) = v48 + 1;
      v49 = (v22 + 24 * v48);
      v49[4] = v29;
      v49[5] = v31;
      v49[6] = v32;
      v23 += 6;
      v19 = v67 - 1;
      if (v67 == 1)
      {

        goto LABEL_34;
      }
    }

    sub_1DACB71E4();

LABEL_26:
    v65 = v32;
    v37 = v29;
    v39 = v0[16];
    v38 = v0[17];
    v40 = v0[14];
    sub_1DACB9284();
    (*v58)(v39, v38, v40);
    if (qword_1EE123DD8 != -1)
    {
      swift_once();
    }

    v41 = v0[16];
    v42 = v0[17];
    v44 = v0[13];
    v43 = v0[14];
    v45 = qword_1EE13E470;
    sub_1DACB7DF4();
    v35 = sub_1DACB9384();
    v36 = v46;
    (*v57)(v42, v43);

    v29 = v37;
    v32 = v65;
    goto LABEL_29;
  }

  v22 = MEMORY[0x1E69E7CC0];
LABEL_34:
  v51 = v0[17];
  v50 = v0[18];
  v52 = v0[16];
  v54 = v0[12];
  v53 = v0[13];

  v55 = v0[1];

  return v55(v22);
}

uint64_t sub_1DAB0F7B8()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v5 = v0[12];
  v4 = v0[13];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v6 = v0[1];
  v7 = v0[21];

  return v6();
}

uint64_t sub_1DAB0F860(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1DAAFF1F4;

  return sub_1DAB0EE6C(v3);
}

uint64_t sub_1DAB0F8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x1E695A460] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DAA94754;

  return MEMORY[0x1EEDB3B80](a1, a2, a3);
}

uint64_t sub_1DAB0F9BC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1DAB0FA18(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v41 = MEMORY[0x1E69E7CC0];
    sub_1DACB9D64();
    v4 = v1 + 64;
    v5 = -1 << *(v1 + 32);
    result = sub_1DACB9BC4();
    if (result < 0 || result >= 1 << *(v1 + 32))
    {
LABEL_20:
      __break(1u);
      return v41;
    }

    else
    {
      v6 = *(v1 + 36);
      v30 = v1 + 72;
      v31 = v2;
      v7 = 1;
      v33 = v1 + 64;
      v34 = v1;
      v32 = v6;
      while ((*(v4 + 8 * (result >> 6)) & (1 << result)) != 0)
      {
        if (v6 != *(v1 + 36))
        {
          goto LABEL_24;
        }

        v36 = 1 << result;
        v37 = result >> 6;
        v35 = v7;
        v8 = *(v1 + 56) + 136 * result;
        v39[0] = *v8;
        v9 = *(v8 + 64);
        v11 = *(v8 + 16);
        v10 = *(v8 + 32);
        v39[3] = *(v8 + 48);
        v39[4] = v9;
        v39[1] = v11;
        v39[2] = v10;
        v13 = *(v8 + 96);
        v12 = *(v8 + 112);
        v14 = *(v8 + 80);
        v40 = *(v8 + 128);
        v39[6] = v13;
        v39[7] = v12;
        v39[5] = v14;
        v42 = result;
        v15 = objc_allocWithZone(SCWWatchedStock);
        sub_1DAA806E4(v39, v38);
        v16 = sub_1DACB92F4();
        v17 = sub_1DACB92F4();
        v18 = sub_1DACB92F4();
        v19 = sub_1DACB92F4();
        v20 = sub_1DACB92F4();
        [v15 initWithName:v16 shortName:v17 compactName:v18 symbol:v19 exchange:v20];

        v1 = v34;
        sub_1DAA9B1C8(v39);
        sub_1DACB9D34();
        v21 = *(v41 + 16);
        sub_1DACB9D74();
        sub_1DACB9D84();
        sub_1DACB9D44();
        result = v42;
        v22 = 1 << *(v34 + 32);
        if (v42 >= v22)
        {
          goto LABEL_25;
        }

        v4 = v33;
        v23 = *(v33 + 8 * v37);
        if ((v23 & v36) == 0)
        {
          goto LABEL_26;
        }

        v6 = v32;
        if (v32 != *(v34 + 36))
        {
          goto LABEL_27;
        }

        v24 = v23 & (-2 << (v42 & 0x3F));
        if (v24)
        {
          result = __clz(__rbit64(v24)) | v42 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v25 = v37 << 6;
          v26 = v37 + 1;
          v27 = (v30 + 8 * v37);
          while (v26 < (v22 + 63) >> 6)
          {
            v29 = *v27++;
            v28 = v29;
            v25 += 64;
            ++v26;
            if (v29)
            {
              sub_1DAAA2C74(v42, v32, 0);
              result = __clz(__rbit64(v28)) + v25;
              goto LABEL_17;
            }
          }

          sub_1DAAA2C74(v42, v32, 0);
          result = v22;
        }

LABEL_17:
        if (v35 == v31)
        {
          return v41;
        }

        if ((result & 0x8000000000000000) == 0)
        {
          v7 = v35 + 1;
          if (result < 1 << *(v34 + 32))
          {
            continue;
          }
        }

        goto LABEL_20;
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }
  }

  return result;
}

void sub_1DAB0FD38(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  sub_1DACB88F4();
  v6 = [objc_allocWithZone(SCWWatchlistManager) initWithDatabase:v7 metadataProvider:a1 defaultsProvider:a2];

  *a3 = v6;
}

uint64_t sub_1DAB0FDC4()
{
  sub_1DAB1BCC8((v0 + 3));
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v1 = v0[9];

  v2 = v0[10];

  return swift_deallocClassInstance();
}

void sub_1DAB0FE6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DAB0FED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a5 + 80);
  v13 = swift_allocObject();
  v14 = *(a6 + 64);
  *(v13 + 104) = *(a6 + 80);
  v15 = *(a6 + 112);
  *(v13 + 120) = *(a6 + 96);
  *(v13 + 136) = v15;
  v16 = *a6;
  *(v13 + 40) = *(a6 + 16);
  v17 = *(a6 + 48);
  *(v13 + 56) = *(a6 + 32);
  *(v13 + 72) = v17;
  *(v13 + 88) = v14;
  *(v13 + 16) = a5;
  v18 = *(a6 + 128);
  *(v13 + 24) = v16;
  *(v13 + 152) = v18;
  *(v13 + 160) = a3;
  *(v13 + 168) = a4;
  *(v13 + 176) = a1;
  *(v13 + 184) = a2;
  sub_1DACB71F4();
  sub_1DAA806E4(a6, v20);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB0FFCC(id *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v41 = *a1;
  v11 = a2[7];
  v12 = a2[8];
  __swift_project_boxed_opaque_existential_1(a2 + 4, v11);
  v13 = *(a3 + 112);
  v43[6] = *(a3 + 96);
  v43[7] = v13;
  v44 = *(a3 + 128);
  v14 = *(a3 + 48);
  v43[2] = *(a3 + 32);
  v43[3] = v14;
  v15 = *(a3 + 80);
  v43[4] = *(a3 + 64);
  v43[5] = v15;
  v16 = *(a3 + 16);
  v43[0] = *a3;
  v43[1] = v16;
  (*(v12 + 16))(v43, v11, v12);

  v17 = objc_allocWithZone(SCWWatchedStock);
  v18 = *(a3 + 32);
  v19 = *(a3 + 40);
  v20 = sub_1DACB92F4();
  v21 = *(a3 + 72);
  v22 = *(a3 + 80);
  v23 = sub_1DACB92F4();
  v24 = *(a3 + 88);
  v25 = *(a3 + 96);
  v26 = sub_1DACB92F4();
  v27 = *(a3 + 16);
  v28 = *(a3 + 24);
  v29 = sub_1DACB92F4();
  v30 = *(a3 + 48);
  v31 = *(a3 + 56);
  v32 = sub_1DACB92F4();
  v33 = [v17 initWithName:v20 shortName:v23 compactName:v26 symbol:v29 exchange:v32];

  v34 = swift_allocObject();
  *(v34 + 16) = a4;
  *(v34 + 24) = a5;
  *(v34 + 32) = a6;
  *(v34 + 40) = a7;
  v35 = *(a3 + 112);
  *(v34 + 144) = *(a3 + 96);
  *(v34 + 160) = v35;
  *(v34 + 176) = *(a3 + 128);
  v36 = *(a3 + 48);
  *(v34 + 80) = *(a3 + 32);
  *(v34 + 96) = v36;
  v37 = *(a3 + 80);
  *(v34 + 112) = *(a3 + 64);
  *(v34 + 128) = v37;
  v38 = *(a3 + 16);
  *(v34 + 48) = *a3;
  *(v34 + 64) = v38;
  aBlock[4] = sub_1DAB1AA50;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAB10208;
  aBlock[3] = &block_descriptor_256;
  v39 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DAA806E4(a3, v43);

  [v41 addStock:v33 completion:v39];
  _Block_release(v39);
}

void sub_1DAB10208(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_1DACB71F4();
  v5 = a2;
  v4(a2);
}

uint64_t sub_1DAB10274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = *(a5 + 80);
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = sub_1DAB1BE44;
  v16[7] = v14;
  sub_1DACB71F4();
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB10368(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *a1;
  v14 = sub_1DACB92F4();
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v15[6] = a2;
  v15[7] = a3;
  v17[4] = sub_1DAB1A9B0;
  v17[5] = v15;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1DAB10208;
  v17[3] = &block_descriptor_247;
  v16 = _Block_copy(v17);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71E4();

  [v13 removeSymbol:v14 completion:v16];
  _Block_release(v16);
}

uint64_t sub_1DAB1049C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = *(a1 + 112);
  v30[7] = *(a1 + 96);
  v30[8] = v6;
  v31 = *(a1 + 128);
  v7 = *(a1 + 48);
  v30[3] = *(a1 + 32);
  v30[4] = v7;
  v8 = *(a1 + 80);
  v30[5] = *(a1 + 64);
  v30[6] = v8;
  v9 = *(a1 + 16);
  v30[1] = *a1;
  v30[2] = v9;
  v10 = a3[7];
  v38 = a3[6];
  v39 = v10;
  v40 = *(a3 + 16);
  v11 = a3[3];
  v34 = a3[2];
  v35 = v11;
  v12 = a3[5];
  v36 = a3[4];
  v37 = v12;
  v13 = a3[1];
  v32 = *a3;
  v33 = v13;
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  sub_1DAA41D64();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DACC2610;
  v50 = *(a1 + 16);
  v15 = MEMORY[0x1E69E6158];
  *(v14 + 56) = MEMORY[0x1E69E6158];
  v16 = sub_1DAA443C8();
  *(v14 + 32) = *(a1 + 16);
  v17 = MEMORY[0x1E69E6870];
  *(v14 + 96) = MEMORY[0x1E69E6810];
  *(v14 + 104) = v17;
  *(v14 + 64) = v16;
  *(v14 + 72) = a2;
  v18 = a3[7];
  v47 = a3[6];
  v48 = v18;
  v49 = *(a3 + 16);
  v19 = a3[3];
  v43 = a3[2];
  v44 = v19;
  v20 = a3[5];
  v45 = a3[4];
  v46 = v20;
  v21 = a3[1];
  v41 = *a3;
  v42 = v21;
  if (get_enum_tag_for_layout_string_10StocksCore24SubscriptionButtonConfigVSg_0(&v41) == 1)
  {
    v22 = (v14 + 112);
    *(v14 + 136) = v15;
    *(v14 + 144) = v16;
LABEL_7:
    *v22 = 7104878;
    v24 = 0xE300000000000000;
    goto LABEL_8;
  }

  v23 = v42;
  v22 = (v14 + 112);
  *(v14 + 136) = v15;
  *(v14 + 144) = v16;
  v24 = sub_1DACB71E4();
  if (!v24)
  {
    goto LABEL_7;
  }

  *v22 = v23;
LABEL_8:
  *(v14 + 120) = v24;
  sub_1DAAA1344(&v50, v30);
  sub_1DACB9914();
  sub_1DACB8C64();

  MEMORY[0x1EEE9AC00](v25);
  sub_1DAA61900(0, &qword_1ECBE9AC0, &type metadata for Stock, MEMORY[0x1E69D6B18]);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAB1071C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a5 + 80);
  v14 = swift_allocObject();
  v15 = *(a6 + 112);
  *(v14 + 112) = *(a6 + 96);
  *(v14 + 128) = v15;
  v16 = *(a6 + 48);
  *(v14 + 48) = *(a6 + 32);
  *(v14 + 64) = v16;
  v17 = *(a6 + 80);
  *(v14 + 80) = *(a6 + 64);
  *(v14 + 96) = v17;
  v18 = *(a6 + 16);
  *(v14 + 16) = *a6;
  *(v14 + 32) = v18;
  v19 = *(a7 + 64);
  *(v14 + 232) = *(a7 + 80);
  v20 = *(a7 + 112);
  *(v14 + 248) = *(a7 + 96);
  *(v14 + 264) = v20;
  v21 = *a7;
  *(v14 + 168) = *(a7 + 16);
  v22 = *(a7 + 48);
  *(v14 + 184) = *(a7 + 32);
  *(v14 + 200) = v22;
  *(v14 + 216) = v19;
  *(v14 + 144) = *(a6 + 128);
  v23 = *(a7 + 128);
  *(v14 + 152) = v21;
  *(v14 + 280) = v23;
  *(v14 + 288) = a3;
  *(v14 + 296) = a4;
  *(v14 + 304) = a1;
  *(v14 + 312) = a2;
  sub_1DAA806E4(a6, v25);
  sub_1DAB1A034(a7, v25, &qword_1EE1201A8, &type metadata for Stock, MEMORY[0x1E69E6720]);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB10868(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *a1;
  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  v16 = sub_1DACB92F4();
  v17 = *(a3 + 112);
  v30[6] = *(a3 + 96);
  v30[7] = v17;
  v31 = *(a3 + 128);
  v18 = *(a3 + 48);
  v30[2] = *(a3 + 32);
  v30[3] = v18;
  v19 = *(a3 + 80);
  v30[4] = *(a3 + 64);
  v30[5] = v19;
  v20 = *(a3 + 16);
  v30[0] = *a3;
  v30[1] = v20;
  if (get_enum_tag_for_layout_string_10StocksCore24SubscriptionButtonConfigVSg_0(v30) == 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = sub_1DACB92F4();
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  *(v22 + 32) = a6;
  *(v22 + 40) = a7;
  v23 = *(a2 + 112);
  *(v22 + 144) = *(a2 + 96);
  *(v22 + 160) = v23;
  *(v22 + 176) = *(a2 + 128);
  v24 = *(a2 + 48);
  *(v22 + 80) = *(a2 + 32);
  *(v22 + 96) = v24;
  v25 = *(a2 + 80);
  *(v22 + 112) = *(a2 + 64);
  *(v22 + 128) = v25;
  v26 = *(a2 + 16);
  *(v22 + 48) = *a2;
  *(v22 + 64) = v26;
  aBlock[4] = sub_1DAB1BE40;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAB10208;
  aBlock[3] = &block_descriptor_234;
  v27 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DAA806E4(a2, v28);

  [v13 reorderSymbol:v16 afterSymbol:v21 completion:v27];
  _Block_release(v27);
}

void sub_1DAB10A20(void *a1, void (*a2)(void *), uint64_t a3, void (*a4)(_OWORD *), uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v8 = a1;
    a2(a1);
  }

  else
  {
    v9 = *(a6 + 112);
    v13[6] = *(a6 + 96);
    v13[7] = v9;
    v14 = *(a6 + 128);
    v10 = *(a6 + 48);
    v13[2] = *(a6 + 32);
    v13[3] = v10;
    v11 = *(a6 + 80);
    v13[4] = *(a6 + 64);
    v13[5] = v11;
    v12 = *(a6 + 16);
    v13[0] = *a6;
    v13[1] = v12;
    a4(v13);
  }
}

uint64_t sub_1DAB10ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  sub_1DAA41D64();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DACC1D40;
  v9 = MEMORY[0x1E69E6158];
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1DAA443C8();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 64) = v10;
  *(v8 + 72) = a3;
  *(v8 + 80) = a4;
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB9914();
  sub_1DACB8C64();

  MEMORY[0x1EEE9AC00](v11);
  sub_1DAA61900(0, &qword_1EE11D3F0, v9, MEMORY[0x1E69D6B18]);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAB10C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = *(a5 + 80);
  v18 = swift_allocObject();
  v18[2] = a6;
  v18[3] = a7;
  v18[4] = a8;
  v18[5] = a9;
  v18[6] = a3;
  v18[7] = a4;
  v18[8] = sub_1DAB1BE44;
  v18[9] = v16;
  sub_1DACB71F4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB10D68(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = *a1;
  v15 = sub_1DACB92F4();
  v16 = sub_1DACB92F4();
  v17 = swift_allocObject();
  v17[2] = a6;
  v17[3] = a7;
  v17[4] = a8;
  v17[5] = a9;
  v17[6] = a4;
  v17[7] = a5;
  v19[4] = sub_1DAB1BE3C;
  v19[5] = v17;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1DAB10208;
  v19[3] = &block_descriptor_212;
  v18 = _Block_copy(v19);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71E4();

  [v14 replaceSymbol:v15 withSymbol:v16 completion:v18];
  _Block_release(v18);
}

uint64_t sub_1DAB10EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + 80);
  v12 = swift_allocObject();
  v12[2] = a5;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = sub_1DAB1BD8C;
  v12[6] = v10;
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB10FA0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a6;
  v14[4] = sub_1DAB1A718;
  v14[5] = v12;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1DAB11714;
  v14[3] = &block_descriptor_199;
  v13 = _Block_copy(v14);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v10 fetchStocksWithCompletion_];
  _Block_release(v13);
}

void sub_1DAB110D4(unint64_t a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5, void (*a6)(char *))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v14 = sub_1DACB8214();
    sub_1DAB1A1F8();
    v15 = swift_allocError();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69D64A0], v14);
    (a4)(v15);
    goto LABEL_7;
  }

  v11 = Strong;
  if (!a2)
  {
    if (a1)
    {
      if (qword_1EE121838 != -1)
      {
        swift_once();
      }

      sub_1DAA41D64();
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1DACC1D40;
      v39 = a6;
      if (a1 >> 62)
      {
        v36 = v17;
        v18 = sub_1DACB9E14();
        v17 = v36;
      }

      else
      {
        v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v19 = MEMORY[0x1E69E65A8];
      *(v17 + 56) = MEMORY[0x1E69E6530];
      *(v17 + 64) = v19;
      v38 = v17;
      *(v17 + 32) = v18;
      if (v18)
      {
        v37 = v11;
        v40 = MEMORY[0x1E69E7CC0];
        sub_1DAA5859C(0, v18 & ~(v18 >> 63), 0);
        if (v18 < 0)
        {
          __break(1u);
          return;
        }

        v20 = 0;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x1E12777A0](v20, a1);
          }

          else
          {
            v21 = *(a1 + 8 * v20 + 32);
          }

          v22 = v21;
          v23 = [v21 symbol];
          v24 = sub_1DACB9324();
          v26 = v25;

          v28 = *(v40 + 16);
          v27 = *(v40 + 24);
          if (v28 >= v27 >> 1)
          {
            sub_1DAA5859C((v27 > 1), v28 + 1, 1);
          }

          ++v20;
          *(v40 + 16) = v28 + 1;
          v29 = v40 + 16 * v28;
          *(v29 + 32) = v24;
          *(v29 + 40) = v26;
        }

        while (v18 != v20);
        v11 = v37;
      }

      v30 = MEMORY[0x1E69E6158];
      sub_1DAA61900(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1DAA61850(&qword_1EE123E90);
      v31 = sub_1DACB9214();
      v33 = v32;

      v38[12] = v30;
      v38[13] = sub_1DAA443C8();
      v38[9] = v31;
      v38[10] = v33;
      sub_1DACB9914();
      sub_1DACB8C64();

      v34 = *(v11 + 72);
      sub_1DACB71F4();
      v35 = sub_1DAB115B4(a1);

      v39(v35);

      return;
    }

    sub_1DAB19F50();
    v15 = swift_allocError();
    a4();

LABEL_7:

    return;
  }

  v12 = a2;
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  sub_1DACB9904();
  sub_1DAA41D64();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DACC1D20;
  sub_1DAA4436C(0, &qword_1EE123B10);
  sub_1DACB9DD4();
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1DAA443C8();
  *(v13 + 32) = 0;
  *(v13 + 40) = 0xE000000000000000;
  sub_1DACB8C64();

  (a4)(a2);
}

char *sub_1DAB115B4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1DACB9E14();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
LABEL_12:
    v15 = sub_1DAB19694(v3);

    return v15;
  }

  result = sub_1DAA5859C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v16;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1E12777A0](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = [v6 symbol];
      v9 = sub_1DACB9324();
      v11 = v10;

      v13 = *(v16 + 16);
      v12 = *(v16 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1DAA5859C((v12 > 1), v13 + 1, 1);
      }

      ++v5;
      *(v16 + 16) = v13 + 1;
      v14 = v16 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
    }

    while (v2 != v5);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_1DAB11728(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *a1;
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v14[6] = a5;
  v14[7] = a6;
  v14[8] = a7;
  v17[4] = sub_1DAB1A678;
  v17[5] = v14;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1DAB11EFC;
  v17[3] = &block_descriptor_179;
  v15 = _Block_copy(v17);
  v16 = v13;
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v16 legacyWatchlistSortState_];
  _Block_release(v15);
}

void sub_1DAB11850(uint64_t a1, uint64_t a2, id a3, void *a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a8;
  v11 = a7;
  v12 = a4;
  if (a3)
  {
    v16 = a3;
    if (qword_1EE121838 != -1)
    {
      swift_once();
    }

    sub_1DACB9904();
    sub_1DAA41D64();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1DACC1D20;
    aBlock = 0;
    v30 = 0xE000000000000000;
    sub_1DAA4436C(0, &qword_1EE123B10);
    sub_1DACB9DD4();
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = sub_1DAA443C8();
    *(v17 + 32) = 0;
    *(v17 + 40) = 0xE000000000000000;
    sub_1DACB8C64();

    v10 = a8;
    v12 = a4;
    v11 = a7;
  }

  if (a2 && (sub_1DACB71E4(), sub_1DABF75BC(a1, a2, &aBlock), v18 = aBlock, aBlock < 0xFEu))
  {
    v19 = sub_1DACB92F4();
    v22 = v18 >> 5;
    if (v18 >> 5 <= 2 || v22 == 3 || v22 == 4)
    {
      v20 = sub_1DACB9844();
      v21 = sub_1DACB9844();
      goto LABEL_13;
    }
  }

  else
  {
    v19 = sub_1DACB92F4();
  }

  v20 = sub_1DACB9844();
  v21 = 0;
LABEL_13:
  v23 = sub_1DACB9844();
  v24 = swift_allocObject();
  v24[2] = v11;
  v24[3] = v10;
  v24[4] = a9;
  v24[5] = a10;
  v33 = sub_1DAB1A6AC;
  v34 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1DAB11E70;
  v32 = &block_descriptor_185;
  v25 = _Block_copy(&aBlock);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v12 migrateToDefaultWatchlist:v19 sortState:v20 sortOrderState:v21 displayState:v23 completion:v25];

  _Block_release(v25);
}

void sub_1DAB11B6C(void *a1, id a2, void (*a3)(void), uint64_t a4, void (*a5)(id *))
{
  if (a2)
  {
    v7 = a2;
    if (qword_1EE121838 != -1)
    {
      swift_once();
    }

    sub_1DACB9904();
    sub_1DAA41D64();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1DACC1D20;
    v19 = a2;
    sub_1DAA4436C(0, &qword_1EE123B10);
    sub_1DACB9DD4();
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = sub_1DAA443C8();
    *(v8 + 32) = 0;
    *(v8 + 40) = 0xE000000000000000;
    sub_1DACB8C64();

    (a3)(a2);
  }

  else if (a1)
  {
    v10 = qword_1EE121838;
    v11 = a1;
    if (v10 != -1)
    {
      swift_once();
    }

    sub_1DAA41D64();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1DACC1D20;
    v13 = [v11 description];
    v14 = sub_1DACB9324();
    v16 = v15;

    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = sub_1DAA443C8();
    *(v12 + 32) = v14;
    *(v12 + 40) = v16;
    sub_1DACB9914();
    sub_1DACB8C64();

    v17 = v11;
    sub_1DABE64D0(v17, &v24);
    v19 = v24;
    v20 = v25;
    v21 = v26;
    v22 = v27;
    v23 = v28;
    a5(&v19);
  }

  else
  {
    sub_1DAB19F50();
    v18 = swift_allocError();
    a3();
  }
}

void sub_1DAB11E70(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_1DACB71F4();
  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1DAB11EFC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_1DACB9324();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  sub_1DACB71F4();
  v9 = a3;
  v5(v6, v8, a3);
}

uint64_t sub_1DAB11F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a5 + 80);
  v14 = swift_allocObject();
  v14[2] = a6;
  v14[3] = a7;
  v14[4] = a3;
  v14[5] = a4;
  v14[6] = a1;
  v14[7] = a2;
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB12048(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a4;
  v29 = a6;
  v12 = sub_1DACB7D04();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a1;
  sub_1DACB6D04();
  v17 = sub_1DACB7CE4();
  v19 = v18;
  (*(v13 + 8))(v16, v12);
  v20 = sub_1DACB92F4();
  v21 = sub_1DACB92F4();
  v22 = sub_1DACB9844();
  v23 = sub_1DACB9844();
  v24 = swift_allocObject();
  v25 = v29;
  v24[2] = v28;
  v24[3] = a5;
  v24[4] = v25;
  v24[5] = a7;
  v24[6] = a2;
  v24[7] = a3;
  v24[8] = v17;
  v24[9] = v19;
  aBlock[4] = sub_1DAB1A5E8;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAB10208;
  aBlock[3] = &block_descriptor_170;
  v26 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71E4();

  [v30 addWatchlist:v20 identifier:v21 sortState:v22 sortOrderState:0 displayState:v23 completion:v26];

  _Block_release(v26);
}

void sub_1DAB1227C(void *a1, void (*a2)(void *), uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    v11 = a1;
    if (qword_1EE121838 != -1)
    {
      swift_once();
    }

    sub_1DACB9904();
    sub_1DAA41D64();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1DACC1D20;
    sub_1DAA4436C(0, &qword_1EE123B10);
    sub_1DACB9DD4();
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = sub_1DAA443C8();
    *(v12 + 32) = 0;
    *(v12 + 40) = 0xE000000000000000;
    sub_1DACB8C64();

    a2(a1);
  }

  else
  {
    v14[0] = a6;
    v14[1] = a7;
    v14[2] = MEMORY[0x1E69E7CC0];
    v14[3] = a8;
    v14[4] = a9;
    v15 = 160;
    sub_1DACB71E4();
    sub_1DACB71E4();
    a4(v14);
  }
}

void sub_1DAB1243C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = sub_1DACB92F4();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = a5;
  *(v15 + 40) = a6;
  v16 = *(a2 + 16);
  *(v15 + 48) = *a2;
  *(v15 + 64) = v16;
  *(v15 + 74) = *(a2 + 26);
  aBlock[4] = sub_1DAB1A57C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAB10208;
  aBlock[3] = &block_descriptor_161;
  v17 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DAA8DB84(a2, &v18);

  [v11 removeWatchlist:v14 completion:v17];
  _Block_release(v17);
}

void sub_1DAB12578(void *a1, void (*a2)(void *), uint64_t a3, void (*a4)(__int128 *), uint64_t a5, __int128 *a6)
{
  if (a1)
  {
    v8 = a1;
    if (qword_1EE121838 != -1)
    {
      swift_once();
    }

    sub_1DACB9904();
    sub_1DAA41D64();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1DACC1D20;
    *&v12 = 0;
    *(&v12 + 1) = 0xE000000000000000;
    sub_1DAA4436C(0, &qword_1EE123B10);
    sub_1DACB9DD4();
    v10 = v12;
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = sub_1DAA443C8();
    *(v9 + 32) = v10;
    sub_1DACB8C64();

    a2(a1);
  }

  else
  {
    v11 = a6[1];
    v12 = *a6;
    v13[0] = v11;
    *(v13 + 10) = *(a6 + 26);
    a4(&v12);
  }
}

uint64_t sub_1DAB126F4(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[1];
  v16 = *a1;
  v17[0] = v6;
  *(v17 + 10) = *(a1 + 26);
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  sub_1DAA41D64();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DACC1D40;
  v18 = *a1;
  v8 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1DAA443C8();
  *(v7 + 32) = *a1;
  *(v7 + 96) = v8;
  *(v7 + 104) = v9;
  *(v7 + 64) = v9;
  *(v7 + 72) = a2;
  *(v7 + 80) = a3;
  sub_1DAAA1344(&v18, v15);
  sub_1DACB71E4();
  sub_1DACB9914();
  sub_1DACB8C64();

  MEMORY[0x1EEE9AC00](v10);
  sub_1DAA61900(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAB128A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a5 + 80);
  v16 = swift_allocObject();
  v17 = a6[1];
  *(v16 + 16) = *a6;
  *(v16 + 32) = v17;
  *(v16 + 42) = *(a6 + 26);
  *(v16 + 64) = a7;
  *(v16 + 72) = a8;
  *(v16 + 80) = a3;
  *(v16 + 88) = a4;
  *(v16 + 96) = a1;
  *(v16 + 104) = a2;
  sub_1DAA8DB84(a6, &v19);
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB12988(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *a1;
  v16 = *(a2 + 24);
  v17 = *(a2 + 32);
  v18 = sub_1DACB92F4();
  v19 = sub_1DACB92F4();
  v20 = swift_allocObject();
  *(v20 + 16) = a5;
  *(v20 + 24) = a6;
  *(v20 + 32) = a7;
  *(v20 + 40) = a8;
  *(v20 + 48) = a3;
  *(v20 + 56) = a4;
  v21 = *(a2 + 16);
  *(v20 + 64) = *a2;
  *(v20 + 80) = v21;
  *(v20 + 90) = *(a2 + 26);
  aBlock[4] = sub_1DAB1A464;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAB10208;
  aBlock[3] = &block_descriptor_152;
  v22 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71E4();
  sub_1DAA8DB84(a2, &v23);

  [v15 renameWatchlist:v18 newName:v19 completion:v22];
  _Block_release(v22);
}

void sub_1DAB12AF8(void *a1, void (*a2)(void *), uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v10 = a1;
    if (qword_1EE121838 != -1)
    {
      swift_once();
    }

    sub_1DACB9904();
    sub_1DAA41D64();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1DACC1D20;
    *&v18 = a1;
    sub_1DAA4436C(0, &qword_1EE123B10);
    sub_1DACB9DD4();
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = sub_1DAA443C8();
    *(v11 + 32) = 0;
    *(v11 + 40) = 0xE000000000000000;
    sub_1DACB8C64();

    a2(a1);
  }

  else
  {
    v19 = *(a8 + 16);
    v18 = *(a8 + 24);
    v13 = *(a8 + 40);
    v15[0] = a6;
    v15[1] = a7;
    v15[2] = v19;
    v16 = v18;
    v17 = v13;
    sub_1DAB1A034(&v19, v14, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAAA1344(&v18, v14);
    sub_1DACB71E4();
    a4(v15);
  }
}

uint64_t sub_1DAB12CF8(__int128 *a1, char *a2)
{
  v16 = *a1;
  *v17 = a1[1];
  *&v17[10] = *(a1 + 26);
  v2 = *a2;
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  sub_1DAA41D64();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DACC1D40;
  v4 = sub_1DABF79D8();
  v6 = v5;
  v7 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v8 = sub_1DAA443C8();
  *(v3 + 64) = v8;
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  v9 = sub_1DABF79D8();
  *(v3 + 96) = v7;
  *(v3 + 104) = v8;
  *(v3 + 72) = v9;
  *(v3 + 80) = v10;
  sub_1DACB9914();
  sub_1DACB8C64();

  MEMORY[0x1EEE9AC00](v11);
  sub_1DAA61900(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

void sub_1DAB12EB8(id *a1, unsigned __int8 a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = *a1;
  v12 = a2 >> 5;
  if (v12 > 4)
  {
    v13 = sub_1DACB9844();
    v15 = 0;
    v14 = 0;
  }

  else
  {
    v13 = sub_1DACB9844();
    v14 = sub_1DACB9844();
    if (a2 > 0x5Fu)
    {
      v15 = 0;
    }

    else
    {
      v15 = sub_1DACB9844();
    }
  }

  sub_1DAA420F4(0, &unk_1EE11F928, off_1E85E20E8);
  v16 = a3[1];
  aBlock = *a3;
  *v24 = v16;
  *&v24[10] = *(a3 + 26);
  sub_1DAA8DB84(a3, v25);
  v17 = sub_1DAB130EC(&aBlock);
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  *(v18 + 32) = a6;
  *(v18 + 40) = a7;
  v19 = a3[1];
  *(v18 + 48) = *a3;
  *(v18 + 64) = v19;
  *(v18 + 74) = *(a3 + 26);
  *(v18 + 90) = a2;
  *&v24[16] = sub_1DAB1A410;
  *&v24[24] = v18;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *v24 = sub_1DAB10208;
  *&v24[8] = &block_descriptor_143;
  v20 = _Block_copy(&aBlock);
  sub_1DAA8DB84(a3, v25);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v22 updateSortState:v13 newSortOrderState:v14 newDisplayState:v15 watchlist:v17 completion:v20];
  _Block_release(v20);
}

id sub_1DAB130EC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = *(a1 + 40);
  v7 = *(a1 + 41);
  v8 = sub_1DACB92F4();
  v9 = sub_1DACB92F4();
  v10 = sub_1DACB9634();
  v11 = v6 >> 5;
  if (v6 >> 5 <= 2 || v11 == 3 || v11 == 4)
  {
    v12 = sub_1DACB9844();
    v13 = sub_1DACB9844();
  }

  else
  {
    v12 = sub_1DACB9844();
    v13 = 0;
  }

  v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v15 = sub_1DACB9844();
  v16 = [v14 initWithIdentifier:v8 name:v9 symbols:v10 sortState:v12 sortOrderState:v13 displayState:v15];

  return v16;
}

void sub_1DAB13260(void *a1, void (*a2)(void *), uint64_t a3, void (*a4)(__int128 *), uint64_t a5, __int128 *a6, unsigned __int8 a7)
{
  if (a1)
  {
    v9 = a1;
    if (qword_1EE121838 != -1)
    {
      swift_once();
    }

    sub_1DACB9904();
    sub_1DAA41D64();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1DACC1D20;
    *&v21 = a1;
    sub_1DAA4436C(0, &qword_1EE123B10);
    sub_1DACB9DD4();
    *(v10 + 56) = MEMORY[0x1E69E6158];
    *(v10 + 64) = sub_1DAA443C8();
    *(v10 + 32) = 0;
    *(v10 + 40) = 0xE000000000000000;
    sub_1DACB8C64();

    a2(a1);
  }

  else
  {
    v12 = a7 >> 5;
    if (a7 >= 0x60u)
    {
      v12 = *(a6 + 41);
    }

    v21 = *a6;
    v20 = *(a6 + 2);
    v19 = *(a6 + 24);
    v14 = v21;
    v15 = v20;
    v16 = v19;
    v17 = a7;
    v18 = v12;
    sub_1DAAA1344(&v21, v13);
    sub_1DAB1A034(&v20, v13, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAAA1344(&v19, v13);
    a4(&v14);
  }
}

uint64_t sub_1DAB13480(__int128 *a1, char *a2)
{
  v16 = *a1;
  *v17 = a1[1];
  *&v17[10] = *(a1 + 26);
  v2 = *a2;
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  sub_1DAA41D64();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DACC1D40;
  v4 = sub_1DAC92D38();
  v6 = v5;
  v7 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v8 = sub_1DAA443C8();
  *(v3 + 64) = v8;
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  v9 = sub_1DAC92D38();
  *(v3 + 96) = v7;
  *(v3 + 104) = v8;
  *(v3 + 72) = v9;
  *(v3 + 80) = v10;
  sub_1DACB9914();
  sub_1DACB8C64();

  MEMORY[0x1EEE9AC00](v11);
  sub_1DAA61900(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAB13640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, _OWORD *a7)
{
  v13 = *(a5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a6;
  v15 = a7[1];
  *(v14 + 24) = *a7;
  *(v14 + 40) = v15;
  *(v14 + 50) = *(a7 + 26);
  *(v14 + 72) = a3;
  *(v14 + 80) = a4;
  *(v14 + 88) = a1;
  *(v14 + 96) = a2;
  sub_1DAA8DB84(a7, &v17);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB13708(void **a1, char a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *a1;
  v14 = sub_1DACB9844();
  sub_1DAA420F4(0, &unk_1EE11F928, off_1E85E20E8);
  v15 = a3[1];
  v20 = *a3;
  *v21 = v15;
  *&v21[10] = *(a3 + 26);
  sub_1DAA8DB84(a3, v22);
  v16 = sub_1DAB130EC(&v20);
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  *(v17 + 32) = a6;
  *(v17 + 40) = a7;
  v18 = a3[1];
  *(v17 + 48) = *a3;
  *(v17 + 64) = v18;
  *(v17 + 74) = *(a3 + 26);
  *(v17 + 90) = a2;
  *&v21[16] = sub_1DAB1A324;
  *&v21[24] = v17;
  *&v20 = MEMORY[0x1E69E9820];
  *(&v20 + 1) = 1107296256;
  *v21 = sub_1DAB10208;
  *&v21[8] = &block_descriptor_134;
  v19 = _Block_copy(&v20);
  sub_1DAA8DB84(a3, v22);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v13 updateDisplayState:v14 watchlist:v16 completion:v19];
  _Block_release(v19);
}

void sub_1DAB138A0(void *a1, void (*a2)(void *), uint64_t a3, void (*a4)(__int128 *), uint64_t a5, __int128 *a6, char a7)
{
  if (a1)
  {
    v9 = a1;
    if (qword_1EE121838 != -1)
    {
      swift_once();
    }

    sub_1DACB9904();
    sub_1DAA41D64();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1DACC1D20;
    *&v21 = a1;
    sub_1DAA4436C(0, &qword_1EE123B10);
    sub_1DACB9DD4();
    *(v10 + 56) = MEMORY[0x1E69E6158];
    *(v10 + 64) = sub_1DAA443C8();
    *(v10 + 32) = 0;
    *(v10 + 40) = 0xE000000000000000;
    sub_1DACB8C64();

    a2(a1);
  }

  else
  {
    v21 = *a6;
    v20 = *(a6 + 2);
    v19 = *(a6 + 24);
    v12 = *(a6 + 40);
    v14 = v21;
    v15 = v20;
    v16 = v19;
    v17 = v12;
    v18 = a7;
    sub_1DAAA1344(&v21, v13);
    sub_1DAB1A034(&v20, v13, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAAA1344(&v19, v13);
    a4(&v14);
  }
}

void sub_1DAB13AB0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v12[4] = sub_1DAB1A2B8;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1DAB140E0;
  v12[3] = &block_descriptor_125;
  v11 = _Block_copy(v12);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v9 fetchAllWatchlistsWithCompletion_];
  _Block_release(v11);
}

void sub_1DAB13BB0(unint64_t a1, id a2, void (*a3)(void), uint64_t a4, void (*a5)(void *))
{
  if (a2)
  {
    v7 = a2;
    if (qword_1EE121838 != -1)
    {
      swift_once();
    }

    sub_1DACB9904();
    sub_1DAA41D64();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1DACC1D20;
    v55 = a2;
    sub_1DAA4436C(0, &qword_1EE123B10);
    sub_1DACB9DD4();
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = sub_1DAA443C8();
    *(v8 + 32) = 0;
    *(v8 + 40) = 0xE000000000000000;
    sub_1DACB8C64();

    (a3)(a2);

    return;
  }

  if (a1)
  {
    v9 = a1;
    if (qword_1EE121838 != -1)
    {
      swift_once();
    }

    sub_1DAA41D64();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1DACC1D40;
    if (v9 >> 62)
    {
      v11 = sub_1DACB9E14();
    }

    else
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = MEMORY[0x1E69E65A8];
    *(v10 + 56) = MEMORY[0x1E69E6530];
    *(v10 + 64) = v12;
    *(v10 + 32) = v11;
    v13 = MEMORY[0x1E69E7CC0];
    v14 = v11 & ~(v11 >> 63);
    v48 = v11;
    if (v11)
    {
      v49 = MEMORY[0x1E69E7CC0];
      v43 = v11 & ~(v11 >> 63);
      sub_1DAA5859C(0, v14, 0);
      if (v48 < 0)
      {
        __break(1u);
        goto LABEL_35;
      }

      v15 = 0;
      v13 = v49;
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1E12777A0](v15, v9);
        }

        else
        {
          v16 = *(v9 + 8 * v15 + 32);
        }

        v17 = v16;
        v18 = [v16 name];
        v19 = sub_1DACB9324();
        v21 = v20;

        v49 = v13;
        v23 = *(v13 + 16);
        v22 = *(v13 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1DAA5859C((v22 > 1), v23 + 1, 1);
          v13 = v49;
        }

        ++v15;
        *(v13 + 16) = v23 + 1;
        v24 = v13 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v21;
      }

      while (v48 != v15);
      v14 = v43;
    }

    v49 = v13;
    v25 = MEMORY[0x1E69E6158];
    sub_1DAA61900(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA61850(&qword_1EE123E90);
    v26 = sub_1DACB9214();
    v28 = v27;

    *(v10 + 96) = v25;
    *(v10 + 104) = sub_1DAA443C8();
    *(v10 + 72) = v26;
    *(v10 + 80) = v28;
    sub_1DACB9914();
    sub_1DACB8C64();

    v29 = MEMORY[0x1E69E7CC0];
    if (!v48)
    {
LABEL_29:
      a5(v29);

      return;
    }

    v55 = MEMORY[0x1E69E7CC0];
    sub_1DAB25C88(0, v14, 0);
    v30 = v48;
    if ((v48 & 0x8000000000000000) == 0)
    {
      v31 = 0;
      v29 = v55;
      v46 = v9 & 0xC000000000000001;
      v47 = v9;
      do
      {
        if (v46)
        {
          v32 = MEMORY[0x1E12777A0](v31, v9);
        }

        else
        {
          v32 = *(v9 + 8 * v31 + 32);
        }

        sub_1DABE64D0(v32, &v49);
        v33 = v49;
        v34 = v50;
        v35 = v51;
        v36 = v52;
        v37 = v53;
        v38 = v54;
        v55 = v29;
        v40 = v29[2];
        v39 = v29[3];
        if (v40 >= v39 >> 1)
        {
          v44 = v50;
          sub_1DAB25C88((v39 > 1), v40 + 1, 1);
          v34 = v44;
          v30 = v48;
          v29 = v55;
        }

        v29[2] = v40 + 1;
        v41 = &v29[6 * v40];
        v41[4] = v33;
        ++v31;
        *(v41 + 5) = v34;
        v41[7] = v35;
        v41[8] = v36;
        *(v41 + 72) = v37;
        *(v41 + 73) = v38;
        v9 = v47;
      }

      while (v30 != v31);
      goto LABEL_29;
    }

LABEL_35:
    __break(1u);
    return;
  }

  sub_1DAB19F50();
  v42 = swift_allocError();
  a3();
}

uint64_t sub_1DAB140F4(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t *a5)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {
    sub_1DAA420F4(0, a4, a5);
    v6 = sub_1DACB9644();
  }

  sub_1DACB71F4();
  v9 = a3;
  v8(v6, a3);
}

uint64_t sub_1DAB14190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = *(a5 + 80);
  v14 = swift_allocObject();
  v15 = a6[1];
  *(v14 + 16) = *a6;
  *(v14 + 32) = v15;
  *(v14 + 42) = *(a6 + 26);
  *(v14 + 64) = a5;
  *(v14 + 72) = a3;
  *(v14 + 80) = a4;
  *(v14 + 88) = sub_1DAA73914;
  *(v14 + 96) = v12;
  sub_1DACB71F4();
  sub_1DAA8DB84(a6, &v17);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB14290(void **a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a1;
  sub_1DAA420F4(0, &unk_1EE11F928, off_1E85E20E8);
  v13 = a2[1];
  v19 = *a2;
  *v20 = v13;
  *&v20[10] = *(a2 + 26);
  sub_1DAA8DB84(a2, v21);
  v14 = sub_1DAB130EC(&v19);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v17 = a2[1];
  *(v16 + 40) = *a2;
  *(v16 + 16) = v15;
  *(v16 + 24) = a4;
  *(v16 + 32) = a5;
  *(v16 + 56) = v17;
  *(v16 + 66) = *(a2 + 26);
  *(v16 + 88) = a6;
  *(v16 + 96) = a7;
  *&v20[16] = sub_1DAB1A1E4;
  *&v20[24] = v16;
  *&v19 = MEMORY[0x1E69E9820];
  *(&v19 + 1) = 1107296256;
  *v20 = sub_1DAB11714;
  *&v20[8] = &block_descriptor_113;
  v18 = _Block_copy(&v19);
  sub_1DAA8DB84(a2, v21);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v12 fetchStocksFromWatchlist:v14 completion:v18];
  _Block_release(v18);
}

void sub_1DAB1443C(unint64_t a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t *a6, void (*a7)(char *))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v16 = sub_1DACB8214();
    sub_1DAB1A1F8();
    v17 = swift_allocError();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69D64A0], v16);
    (a4)(v17);
    goto LABEL_7;
  }

  v13 = Strong;
  if (!a2)
  {
    if (a1)
    {
      if (qword_1EE121838 != -1)
      {
        swift_once();
      }

      v45 = v13;
      sub_1DAA41D64();
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1DACC2610;
      if (a1 >> 62)
      {
        v20 = sub_1DACB9E14();
      }

      else
      {
        v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v44 = a7;
      v21 = MEMORY[0x1E69E65A8];
      *(v19 + 56) = MEMORY[0x1E69E6530];
      *(v19 + 64) = v21;
      *(v19 + 32) = v20;
      v22 = *a6;
      v23 = a6[1];
      v24 = MEMORY[0x1E69E6158];
      *(v19 + 96) = MEMORY[0x1E69E6158];
      v25 = sub_1DAA443C8();
      v26 = v25;
      *(v19 + 104) = v25;
      *(v19 + 72) = v22;
      *(v19 + 80) = v23;
      v43 = v19;
      if (v20)
      {
        v42 = v25;
        v46 = MEMORY[0x1E69E7CC0];
        sub_1DACB71E4();
        sub_1DAA5859C(0, v20 & ~(v20 >> 63), 0);
        if (v20 < 0)
        {
          __break(1u);
          return;
        }

        v27 = 0;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v28 = MEMORY[0x1E12777A0](v27, a1);
          }

          else
          {
            v28 = *(a1 + 8 * v27 + 32);
          }

          v29 = v28;
          v30 = [v28 symbol];
          v31 = sub_1DACB9324();
          v33 = v32;

          v35 = *(v46 + 16);
          v34 = *(v46 + 24);
          if (v35 >= v34 >> 1)
          {
            sub_1DAA5859C((v34 > 1), v35 + 1, 1);
          }

          ++v27;
          *(v46 + 16) = v35 + 1;
          v36 = v46 + 16 * v35;
          *(v36 + 32) = v31;
          *(v36 + 40) = v33;
        }

        while (v20 != v27);
        v24 = MEMORY[0x1E69E6158];
        v26 = v42;
      }

      else
      {
        sub_1DACB71E4();
      }

      sub_1DAA61900(0, &qword_1EE123EA0, v24, MEMORY[0x1E69E62F8]);
      sub_1DAA61850(&qword_1EE123E90);
      v37 = sub_1DACB9214();
      v39 = v38;

      v43[17] = v24;
      v43[18] = v26;
      v43[14] = v37;
      v43[15] = v39;
      sub_1DACB9914();
      sub_1DACB8C64();

      v40 = *(v45 + 72);
      sub_1DACB71F4();
      v41 = sub_1DAB115B4(a1);

      v44(v41);

      return;
    }

    sub_1DAB19F50();
    v17 = swift_allocError();
    a4();

LABEL_7:

    return;
  }

  v14 = a2;
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  sub_1DACB9904();
  sub_1DAA41D64();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1DACC1D20;
  sub_1DAA4436C(0, &qword_1EE123B10);
  sub_1DACB9DD4();
  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = sub_1DAA443C8();
  *(v15 + 32) = 0;
  *(v15 + 40) = 0xE000000000000000;
  sub_1DACB8C64();

  (a4)(a2);
}

uint64_t sub_1DAB14960(__int128 *a1, __int128 *a2)
{
  v4 = a1[7];
  v25 = a1[6];
  v26 = v4;
  v27 = *(a1 + 16);
  v5 = a1[3];
  v21 = a1[2];
  v22 = v5;
  v6 = a1[5];
  v23 = a1[4];
  v24 = v6;
  v7 = *a1;
  v20 = a1[1];
  v19 = v7;
  v8 = a2[1];
  v28 = *a2;
  v29[0] = v8;
  *(v29 + 10) = *(a2 + 26);
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  sub_1DAA41D64();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DACC1D40;
  v31 = a1[1];
  v10 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1DAA443C8();
  *(v9 + 64) = v11;
  *(v9 + 32) = a1[1];
  v30 = *a2;
  v12 = v30;
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 72) = v12;
  sub_1DAAA1344(&v31, v18);
  sub_1DAAA1344(&v30, v18);
  sub_1DACB9914();
  sub_1DACB8C64();

  MEMORY[0x1EEE9AC00](v13);
  sub_1DAA61900(0, &qword_1EE11FDF0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAB14B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = *(a5 + 80);
  v16 = swift_allocObject();
  v17 = *(a6 + 64);
  *(v16 + 104) = *(a6 + 80);
  v18 = *(a6 + 112);
  *(v16 + 120) = *(a6 + 96);
  *(v16 + 136) = v18;
  v19 = *a6;
  *(v16 + 40) = *(a6 + 16);
  v20 = *(a6 + 48);
  *(v16 + 56) = *(a6 + 32);
  *(v16 + 72) = v20;
  *(v16 + 16) = a5;
  *(v16 + 152) = *(a6 + 128);
  *(v16 + 88) = v17;
  *(v16 + 24) = v19;
  v21 = a7[1];
  *(v16 + 160) = *a7;
  *(v16 + 176) = v21;
  *(v16 + 186) = *(a7 + 26);
  *(v16 + 208) = a3;
  *(v16 + 216) = a4;
  *(v16 + 224) = sub_1DAA98760;
  *(v16 + 232) = v14;
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DAA806E4(a6, v23);
  sub_1DAA8DB84(a7, v23);
  sub_1DACB71F4();
  sub_1DACB88E4();
}
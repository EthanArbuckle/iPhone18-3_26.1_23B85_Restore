uint64_t sub_1DAEBA530(void **__dst, void **a2, id *a3, void **__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    v14 = __src;
    if (__src != a2 || &a2[v11] <= __src)
    {
      v22 = a2;
      memmove(__src, a2, 8 * v11);
      a2 = v22;
    }

    v21 = a2;
    v36 = &v14[v11];
    if (v9 >= 8 && a2 > v5)
    {
      sub_1DAED21EC();
      v34 = v5;
LABEL_27:
      v35 = v21;
      v23 = v21 - 1;
      --v4;
      v24 = v36;
      do
      {
        v25 = v14;
        v26 = (v4 + 1);
        v27 = *--v24;
        v28 = v23;
        v29 = *v23;
        v30 = v27;
        v31 = v29;
        v32 = sub_1DAED21CC();

        if (v32)
        {
          if (v26 != v35)
          {
            *v4 = *v28;
          }

          v14 = v25;
          if (v36 <= v25 || (v21 = v28, v28 <= v34))
          {
            v21 = v28;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v26 != v36)
        {
          *v4 = *v24;
        }

        --v4;
        v36 = v24;
        v14 = v25;
        v23 = v28;
      }

      while (v24 > v25);
      v36 = v24;
      v21 = v35;
    }
  }

  else
  {
    v12 = a2;
    if (__src != __dst || &__dst[v8] <= __src)
    {
      v13 = __src;
      memmove(__src, __dst, 8 * v8);
      __src = v13;
    }

    v36 = &__src[v8];
    v14 = __src;
    if (v6 >= 8 && v12 < v4)
    {
      sub_1DAED21EC();
      while (1)
      {
        v15 = *v14;
        v16 = *v12;
        v17 = v15;
        v18 = sub_1DAED21CC();

        if ((v18 & 1) == 0)
        {
          break;
        }

        v19 = v12;
        v20 = v5 == v12++;
        if (!v20)
        {
          goto LABEL_17;
        }

LABEL_18:
        ++v5;
        if (v14 >= v36 || v12 >= v4)
        {
          goto LABEL_20;
        }
      }

      v19 = v14;
      v20 = v5 == v14++;
      if (v20)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v5 = *v19;
      goto LABEL_18;
    }

LABEL_20:
    v21 = v5;
  }

LABEL_38:
  if (v21 != v14 || v21 >= (v14 + ((v36 - v14 + (v36 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v21, v14, 8 * ((v36 - v14) / 8));
  }

  return 1;
}

void *sub_1DAEBA7F4(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    v23 = v7;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v7 = 0;
    goto LABEL_32;
  }

  sub_1DAED242C();
  sub_1DAD674D4(0, &qword_1EE005530, 0x1E6994358);
  sub_1DAE8A564(&unk_1EE005520, &qword_1EE005530, 0x1E6994358);
  result = sub_1DAED1F9C();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  v23 = v7;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v7 = 0;
    goto LABEL_32;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v7 = 0;
  v22 = v9;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_1DAED24BC())
      {
        goto LABEL_30;
      }

      sub_1DAD674D4(0, &qword_1EE005530, 0x1E6994358);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v13 == a3)
    {
      v7 = a3;
      goto LABEL_30;
    }

    ++a2;
    v7 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v12 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v12;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
LABEL_32:
  *v23 = v4;
  v23[1] = v8;
  v23[2] = v9;
  v23[3] = v10;
  v23[4] = v11;
  return v7;
}

uint64_t sub_1DAEBAA34(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 64;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v10 = v20 & *(v4 + 64);
    v22 = v9;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v15 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = sub_1DAED266C();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = result | 0x8000000000000000;
  v22 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v15 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v23 = a3;
  a3 = 0;
  v11 = 0;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!sub_1DAED271C())
      {
        goto LABEL_31;
      }

      sub_1DAED21EC();
      swift_dynamicCast();
      result = v24;
      v15 = v11;
      if (!v24)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v14 = v11;
    if (!v10)
    {
      break;
    }

    v15 = v11;
LABEL_13:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v23;
    if (v13 == v23)
    {
LABEL_31:
      v15 = v11;
      goto LABEL_32;
    }

    ++a2;
    a3 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v12)
    {
      break;
    }

    v10 = *(v8 + 8 * v15);
    ++v14;
    if (v10)
    {
      v11 = v15;
      goto LABEL_13;
    }
  }

  v10 = 0;
  if (v12 <= v11 + 1)
  {
    v21 = v11 + 1;
  }

  else
  {
    v21 = v12;
  }

  v15 = v21 - 1;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v22;
  v7[3] = v15;
  v7[4] = v10;
  return a3;
}

uint64_t sub_1DAEBAC68()
{
  v1 = *(sub_1DAECF8EC() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(*(v0 + 16) + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__calloutQueue_systemEnvironmentDidChangePublisher);
  return sub_1DAECEE6C();
}

uint64_t objectdestroy_92Tm()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DAEBB034()
{
  v1 = *(sub_1DAED10DC() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1DAEB5A98(v2, v3, v4);
}

void sub_1DAEBB098()
{
  v1 = *(sub_1DAECE3DC() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + v3);
  v7 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  sub_1DAEB54E0(v4, v5, v0 + v2, v6, v8, v9);
}

uint64_t sub_1DAEBB138()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_1DAEBB1B8()
{
  result = qword_1ECC0A9E8;
  if (!qword_1ECC0A9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0A9E8);
  }

  return result;
}

uint64_t sub_1DAEBB27C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E80, &qword_1DAED68D0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v62 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v52 - v7;
  v63 = sub_1DAED17EC();
  v9 = *(v63 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v63);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v52 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v60 = &v52 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v59 = &v52 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v66 = &v52 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v68 = &v52 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v52 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v52 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v52 - v31;
  v33 = sub_1DAECE7FC();
  v64 = v32;
  sub_1DAEBB768(v33, v32);
  v34 = sub_1DAED19EC();
  v35 = *(v34 - 8);
  v36 = *(v35 + 56);
  v57 = v35 + 56;
  v58 = v36;
  v36(v8, 1, 1, v34);
  v37 = sub_1DAECE80C();
  v67 = v9;
  if (v37)
  {
    v38 = v37;
    sub_1DAECEAEC();
    v39 = sub_1DAECEAAC();
    v53 = v30;
    sub_1DAEBB768(v39, v30);
    v40 = sub_1DAECEABC();
    v61 = v27;
    sub_1DAEBB768(v40, v27);
    v41 = sub_1DAECEACC();
    sub_1DAEBB768(v41, v68);
    v42 = sub_1DAECEADC();
    sub_1DAEBB768(v42, v66);
    v55 = v34;
    v56 = a1;
    v43 = *(v9 + 16);
    v52 = v16;
    v54 = v8;
    v44 = v62;
    v45 = v63;
    v43(v59, v30, v63);
    v43(v60, v61, v45);
    v43(v16, v68, v45);
    v46 = v66;
    v43(v13, v66, v45);
    sub_1DAED19CC();

    v47 = *(v67 + 8);
    v47(v46, v45);
    v47(v68, v45);
    v47(v61, v45);
    v30 = v53;
    v47(v53, v45);
    a1 = v56;
    v48 = v54;
    sub_1DAD64398(v54, &unk_1ECC09E80, &qword_1DAED68D0);
    v58(v44, 0, 1, v55);
    sub_1DAEBBBDC(v44, v48);
    v49 = v44;
  }

  else
  {
    v43 = *(v9 + 16);
    v48 = v8;
    v49 = v62;
    v45 = v63;
  }

  v50 = v64;
  v43(v30, v64, v45);
  sub_1DAD6495C(v48, v49, &unk_1ECC09E80, &qword_1DAED68D0);
  sub_1DAED1A8C();

  sub_1DAD64398(v48, &unk_1ECC09E80, &qword_1DAED68D0);
  return (*(v67 + 8))(v50, v45);
}

uint64_t sub_1DAEBB768@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A9F0, qword_1DAEDF280);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v60 - v9;
  v10 = sub_1DAED184C();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v60 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = (&v60 - v20);
  MEMORY[0x1EEE9AC00](v19);
  v23 = (&v60 - v22);
  v24 = sub_1DAECE86C();
  v25 = sub_1DAECEA5C();
  v64 = v8;
  v65 = a2;
  if (v25 == 1)
  {
    sub_1DAECEA6C();
    v32 = v31;

    *v23 = v32;
  }

  else
  {
    if (!v25)
    {
      sub_1DAECEA7C();
      v27 = v26;
      sub_1DAECEA6C();
      v29 = v28;

      *v23 = v27;
      v23[1] = v29;
      v30 = MEMORY[0x1E6985940];
      goto LABEL_7;
    }

    *v23 = 0;
  }

  v30 = MEMORY[0x1E6985938];
LABEL_7:
  v33 = v11[13];
  v33(v23, *v30, v10);
  v34 = sub_1DAECE87C();
  v35 = sub_1DAECEA5C();
  if (v35 == 1)
  {
    sub_1DAECEA6C();
    v42 = v41;

    *v21 = v42;
  }

  else
  {
    if (!v35)
    {
      sub_1DAECEA7C();
      v37 = v36;
      sub_1DAECEA6C();
      v39 = v38;

      *v21 = v37;
      v21[1] = v39;
      v40 = MEMORY[0x1E6985940];
      goto LABEL_13;
    }

    *v21 = 0;
  }

  v40 = MEMORY[0x1E6985938];
LABEL_13:
  v33(v21, *v40, v10);
  sub_1DAECE8BC();
  sub_1DAECE88C();
  sub_1DAECE8AC();
  v66 = a1;
  v43 = sub_1DAECE8CC();
  if (v43)
  {
    v44 = v43;
    [v43 integerValue];

    sub_1DAECFACC();
  }

  else
  {
    v45 = sub_1DAECFADC();
    (*(*(v45 - 8) + 56))(v67, 1, 1, v45);
  }

  v46 = v64;
  v47 = sub_1DAECE89C();
  if (v47)
  {
    sub_1DAECE74C();
    v63 = v48;
    sub_1DAECE76C();
    v62 = v49;
    sub_1DAECE75C();
    v60 = v50;
    sub_1DAECE77C();
    v61 = v51;

    *&v52 = v63;
    *(&v52 + 1) = v62;
    *&v53 = v60;
    *(&v53 + 1) = v61;
  }

  else
  {
    v52 = 0uLL;
    v53 = 0uLL;
  }

  v68 = v52;
  v69 = v53;
  v70 = v47 == 0;
  v54 = v11[2];
  v54(v18, v23, v10);
  v54(v15, v21, v10);
  v55 = v23;
  v56 = v21;
  v57 = v67;
  sub_1DAD6495C(v67, v46, &qword_1ECC0A9F0, qword_1DAEDF280);
  sub_1DAED17BC();

  sub_1DAD64398(v57, &qword_1ECC0A9F0, qword_1DAEDF280);
  v58 = v11[1];
  v58(v56, v10);
  return (v58)(v55, v10);
}

uint64_t sub_1DAEBBBDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E80, &qword_1DAED68D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAEBBC4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAECF64C();
  *a1 = result;
  return result;
}

uint64_t sub_1DAEBBC78(uint64_t *a1)
{
  v1 = *a1;

  return sub_1DAECF65C();
}

uint64_t sub_1DAEBBCA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAECF6FC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DAEBBD14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF56C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DAEBBD6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF4EC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DAEBBDC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF50C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DAEBBE1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF52C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DAEBBEE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A9F8, &qword_1DAEDF478);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1DAD6495C(a1, &v6 - v4, &qword_1ECC0A9F8, &qword_1DAEDF478);
  return sub_1DAECF45C();
}

uint64_t sub_1DAEBBFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_1DAEBC0B0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v47 = a3;
  v5 = sub_1DAED157C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v37[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09C58, &qword_1DAEDF470);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v37[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07DF0, &qword_1DAED5870);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v46 = &v37[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v37[-v19];
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v37[-v21];
  v45 = a1;
  sub_1DAD6495C(a1, &v37[-v21], &qword_1ECC07DF0, &qword_1DAED5870);
  v23 = a2[3];
  v24 = a2[4];
  v40 = __swift_project_boxed_opaque_existential_1(a2, v23);
  v43 = v24;
  v44 = v23;
  sub_1DAED19FC();
  v41 = *(v6 + 56);
  v42 = v6 + 56;
  v41(v20, 0, 1, v5);
  v25 = *(v10 + 56);
  sub_1DAD6495C(v22, v13, &qword_1ECC07DF0, &qword_1DAED5870);
  sub_1DAD6495C(v20, &v13[v25], &qword_1ECC07DF0, &qword_1DAED5870);
  v26 = v6;
  v27 = *(v6 + 48);
  if (v27(v13, 1, v5) == 1)
  {
    sub_1DAD64398(v20, &qword_1ECC07DF0, &qword_1DAED5870);
    sub_1DAD64398(v22, &qword_1ECC07DF0, &qword_1DAED5870);
    v28 = v27(&v13[v25], 1, v5);
    v29 = v5;
    if (v28 == 1)
    {
      result = sub_1DAD64398(v13, &qword_1ECC07DF0, &qword_1DAED5870);
LABEL_9:
      v32 = 0;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_1DAD6495C(v13, v46, &qword_1ECC07DF0, &qword_1DAED5870);
  if (v27(&v13[v25], 1, v5) == 1)
  {
    sub_1DAD64398(v20, &qword_1ECC07DF0, &qword_1DAED5870);
    sub_1DAD64398(v22, &qword_1ECC07DF0, &qword_1DAED5870);
    (*(v6 + 8))(v46, v5);
    v29 = v5;
LABEL_6:
    sub_1DAD64398(v13, &qword_1ECC09C58, &qword_1DAEDF470);
    goto LABEL_7;
  }

  v33 = &v13[v25];
  v34 = v39;
  (*(v6 + 32))(v39, v33, v5);
  sub_1DAD9017C(&qword_1EE00AB28, MEMORY[0x1E6985700]);
  v35 = v46;
  v38 = sub_1DAED1CAC();
  v36 = *(v26 + 8);
  v36(v34, v5);
  sub_1DAD64398(v20, &qword_1ECC07DF0, &qword_1DAED5870);
  sub_1DAD64398(v22, &qword_1ECC07DF0, &qword_1DAED5870);
  v36(v35, v5);
  result = sub_1DAD64398(v13, &qword_1ECC07DF0, &qword_1DAED5870);
  v29 = v5;
  if (v38)
  {
    goto LABEL_9;
  }

LABEL_7:
  v31 = v45;
  sub_1DAD64398(v45, &qword_1ECC07DF0, &qword_1DAED5870);
  sub_1DAED19FC();
  v32 = 1;
  result = v41(v31, 0, 1, v29);
LABEL_10:
  *v47 = v32;
  return result;
}

id sub_1DAEBC784(void *a1)
{
  v14[10] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0AA00, &qword_1DAEDF4C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DAED6200;
  v4 = *MEMORY[0x1E696A3A0];
  *(inited + 32) = *MEMORY[0x1E696A3A0];
  type metadata accessor for FileProtectionType(0);
  *(inited + 64) = v5;
  *(inited + 40) = a1;
  v6 = v4;
  v7 = a1;
  sub_1DADDCCE0(inited);
  swift_setDeallocating();
  sub_1DAEBC928(inited + 32);
  type metadata accessor for FileAttributeKey(0);
  sub_1DAEBC990();
  v8 = sub_1DAED1C0C();

  sub_1DAECDBCC();
  v9 = sub_1DAED1CBC();

  v14[0] = 0;
  v10 = [v1 setAttributes:v8 ofItemAtPath:v9 error:v14];

  if (v10)
  {
    result = v14[0];
  }

  else
  {
    v12 = v14[0];
    sub_1DAECDB1C();

    swift_willThrow();
    result = swift_willThrow();
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DAEBC928(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08100, &qword_1DAEDF4D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DAEBC990()
{
  result = qword_1EE005608;
  if (!qword_1EE005608)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005608);
  }

  return result;
}

uint64_t sub_1DAEBCA08(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DAECE69C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InProcessWidgetInstance();
  sub_1DADB7FE4(&qword_1ECC08AC8, type metadata accessor for InProcessWidgetInstance);
  sub_1DAECEE4C();
  sub_1DAECEEBC();

  v9 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__effectiveConfiguration;
  swift_beginAccess();
  (*(v5 + 24))(v2 + v9, a1, v4);
  swift_endAccess();
  v10 = (*(v5 + 16))(v8, v2 + v9, v4);
  v11 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__liveWidgetEntryViewModel);
  if (v11)
  {
    MEMORY[0x1EEE9AC00](v10);
    *(&v14 - 4) = v11;
    *(&v14 - 3) = v8;
    *(&v14 - 2) = v2;

    sub_1DAEA1A98(sub_1DAEC600C);
    sub_1DAEC3F88();
  }

  v12 = *(v5 + 8);
  v12(a1, v4);
  return (v12)(v8, v4);
}

uint64_t sub_1DAEBCC2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__effectiveConfiguration;
  swift_beginAccess();
  v5 = sub_1DAECE69C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1DAEBCCB8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1DAECE69C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  v13 = *(v5 + 16);
  v13(&v18 - v11, a1, v4, v10);
  v14 = *a2;
  (v13)(v8, v12, v4);
  v15 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__requestedConfiguration;
  swift_beginAccess();
  (*(v5 + 24))(v14 + v15, v8, v4);
  swift_endAccess();
  sub_1DAEC31B0();
  v16 = *(v5 + 8);
  v16(v8, v4);
  return (v16)(v12, v4);
}

uint64_t sub_1DAEBCE64@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  v7 = a2(0);
  return (*(*(v7 - 8) + 16))(a3, v3 + v6, v7);
}

uint64_t sub_1DAEBCEF0(uint64_t a1)
{
  v3 = sub_1DAECE69C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, a1, v3, v6);
  v9 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__requestedConfiguration;
  swift_beginAccess();
  (*(v4 + 24))(v1 + v9, v8, v3);
  swift_endAccess();
  sub_1DAEC31B0();
  v10 = *(v4 + 8);
  v10(a1, v3);
  return (v10)(v8, v3);
}

void (*sub_1DAEBD034(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = sub_1DAECE69C();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[11] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[14] = v10;
  v12 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__effectiveConfiguration;
  swift_beginAccess();
  v13 = *(v8 + 16);
  v5[15] = v13;
  v5[16] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v11, v1 + v12, v6);
  return sub_1DAEBD1A8;
}

void sub_1DAEBD1A8(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 128);
  (*(*a1 + 120))(*(*a1 + 104), *(v3 + 112), *(v3 + 80));
  if (a2)
  {
    v5 = *(v3 + 128);
    v7 = *(v3 + 104);
    v6 = *(v3 + 112);
    v9 = *(v3 + 88);
    v8 = *(v3 + 96);
    v10 = *(v3 + 72);
    v11 = *(v3 + 80);
    (*(v3 + 120))(v8, v7, v11);
    v12 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__requestedConfiguration;
    swift_beginAccess();
    (*(v9 + 24))(v10 + v12, v8, v11);
    swift_endAccess();
    sub_1DAEC31B0();
    v13 = *(v9 + 8);
    v13(v8, v11);
  }

  else
  {
    v7 = *(v3 + 104);
    v6 = *(v3 + 112);
    v14 = *(v3 + 88);
    v8 = *(v3 + 96);
    v15 = *(v3 + 72);
    v11 = *(v3 + 80);
    v16 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__requestedConfiguration;
    swift_beginAccess();
    (*(v14 + 24))(v15 + v16, v7, v11);
    swift_endAccess();
    sub_1DAEC31B0();
    v13 = *(v14 + 8);
  }

  v13(v7, v11);
  v13(v6, v11);
  free(v6);
  free(v7);
  free(v8);

  free(v3);
}

BOOL sub_1DAEBD328()
{
  v1 = v0;
  v2 = sub_1DAECE69C();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  v10 = sub_1DAECE4EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__renderSession);
  if (v15)
  {
    v16 = *(v15 + 56);
    if (v16)
    {
      v17 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__identity;
      swift_beginAccess();
      (*(v11 + 16))(v14, v1 + v17, v10);
      v18 = v16;
      v19 = sub_1DAECE4BC();
      (*(v11 + 8))(v14, v10);
      v20 = [v19 family];

      if ([v18 wantsMaterialBackgroundForFamily_])
      {
        v30 = v18;
        v21 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__effectiveConfiguration;
        swift_beginAccess();
        v22 = v3[2];
        v22(v9, v1 + v21, v2);
        v23 = sub_1DAECE59C();
        v24 = v3[1];
        v24(v9, v2);
        v25 = [v23 backgroundViewPolicy];

        if (!v25)
        {

          return 1;
        }

        v22(v6, v1 + v21, v2);
        v26 = sub_1DAECE5AC();
        v24(v6, v2);
        if (v26)
        {
          v27 = [v26 filterStyle];

          return v27 == 7;
        }
      }

      else
      {
      }
    }
  }

  return 0;
}

uint64_t sub_1DAEBD648@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_launchRequestHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1DAE53930;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1DADCA8EC(v4);
}

uint64_t sub_1DAEBD6E8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1DAE5DE98;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_launchRequestHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1DADCA8EC(v3);
  return sub_1DAD660D8(v8);
}

uint64_t sub_1DAEBD850@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_interactionErrorHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1DAEC6108;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1DADCA8EC(v4);
}

uint64_t sub_1DAEBD8F0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1DAEA323C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_interactionErrorHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1DADCA8EC(v3);
  return sub_1DAD660D8(v8);
}

uint64_t sub_1DAEBDA58@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_remoteContentDidBecomeStale);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1DAD93D0C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1DADCA8EC(v4);
}

uint64_t sub_1DAEBDAF8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1DAEC60E0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_remoteContentDidBecomeStale);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1DADCA8EC(v3);
  return sub_1DAD660D8(v8);
}

uint64_t sub_1DAEBDBE0(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_1DAEBDC68(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t sub_1DAEBDD2C()
{
  result = *(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__liveWidgetEntryViewModel);
  if (result)
  {
  }

  __break(1u);
  return result;
}

uint64_t InProcessWidgetInstance.__allocating_init(identity:configuration:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  InProcessWidgetInstance.init(identity:configuration:)(a1, a2);
  return v7;
}

unint64_t InProcessWidgetInstance.init(identity:configuration:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v45 = a2;
  v5 = sub_1DAED10DC();
  v42 = *(v5 - 8);
  v43 = v5;
  v6 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E7CD0];
  *(v2 + 16) = MEMORY[0x1E69E7CD0];
  v10 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__contentDidChangePublisher;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_1DAECEE7C();
  v41 = v10;
  *(v2 + v10) = v14;
  v15 = (v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_launchRequestHandler);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_interactionErrorHandler);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_remoteContentDidBecomeStale);
  *v17 = 0;
  v17[1] = 0;
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__liveWidgetEntryViewModel) = 0;
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__activeRequesters) = v9;
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__visibilityPreferences) = MEMORY[0x1E69E7CC8];
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__renderSession) = 0;
  v18 = (v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__visibilityController);
  *v18 = 0;
  v18[1] = 0;
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__invalidated) = 0;
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__stalenessObserver) = 0;
  if (qword_1EE00B438 != -1)
  {
    swift_once();
  }

  v19 = qword_1EE011BD8;
  v20 = (v3 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__services);
  v20[3] = type metadata accessor for ServiceFacade();
  v20[4] = &off_1F56B0688;
  *v20 = v19;
  v21 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__identity;
  v44 = sub_1DAECE4EC();
  v22 = *(v44 - 8);
  (*(v22 + 16))(v3 + v21, a1, v44);
  v23 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__requestedConfiguration;
  v24 = sub_1DAECE69C();
  v25 = *(v24 - 8);
  v40 = a1;
  v26 = *(v25 + 16);
  v27 = v3 + v23;
  v28 = v45;
  v26(v27, v45, v24);
  v26(v3 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__effectiveConfiguration, v28, v24);

  sub_1DAED10CC();
  (*(v42 + 32))(v3 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__environmentModifiers, v8, v43);
  v46 = *(v3 + v41);
  sub_1DAD64B94(&qword_1EE00ABD0, &qword_1ECC08D10, &unk_1DAEDD1E0);
  *(v3 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_contentDidChangePublisher) = sub_1DAECEF6C();
  v29 = (v3 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__instanceID);
  *v29 = 0x6C616974696E69;
  v29[1] = 0xE700000000000000;
  v46 = v3;
  v30 = sub_1DAED29CC();
  v32 = v31;
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1DAED256C();

  v46 = 0xD000000000000024;
  v47 = 0x80000001DAEE68E0;
  v33 = v40;
  v34 = sub_1DAECE49C();
  if (v35)
  {
    v36 = v35;
  }

  else
  {
    v34 = 7104878;
    v36 = 0xE300000000000000;
  }

  MEMORY[0x1E127DA50](v34, v36);

  MEMORY[0x1E127DA50](14906, 0xE200000000000000);
  MEMORY[0x1E127DA50](v30, v32);

  v37 = v47;
  v38 = v29[1];
  *v29 = v46;
  v29[1] = v37;

  sub_1DAEC083C();

  (*(v25 + 8))(v45, v24);
  (*(v22 + 8))(v33, v44);
  return v3;
}

unint64_t InProcessWidgetInstance.__allocating_init(forXcodePreviewsWithIdentity:configuration:environmentProvider:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v32 = a2;
  v33 = a1;
  v6 = sub_1DAECE69C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DAECE4EC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v16, a1, v11, v14);
  (*(v7 + 16))(v10, a2, v6);
  sub_1DAD648F8(a3, v34);
  v17 = type metadata accessor for ServiceFacade();
  swift_allocObject();
  v18 = sub_1DAD64C94(1, v34);
  v34[3] = v17;
  v34[4] = &off_1F56B0688;
  v34[0] = v18;
  v19 = type metadata accessor for InProcessWidgetInstance();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v34, v17);
  v24 = *(*(v17 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = (&v31 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27, v25);
  v29 = sub_1DAEC55FC(v16, v10, *v27, v22);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  (*(v7 + 8))(v32, v6);
  (*(v12 + 8))(v33, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  return v29;
}

uint64_t sub_1DAEBE4E8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC083A0, &unk_1DAED6758);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  v8 = sub_1DAECE47C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__renderSession))
  {
    type metadata accessor for LaunchRequestBuilder();

    sub_1DAE50D14(v14, a1, v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {

      return sub_1DAD64398(v7, &qword_1ECC083A0, &unk_1DAED6758);
    }

    else
    {
      (*(v9 + 32))(v13, v7, v8);
      v15 = v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_launchRequestHandler;
      swift_beginAccess();
      v16 = *v15;
      if (*v15)
      {
        v17 = *(v15 + 8);

        v16(v13);

        sub_1DAD660D8(v16);
        return (*(v9 + 8))(v13, v8);
      }

      else
      {
        (*(v9 + 8))(v13, v8);
      }
    }
  }

  return result;
}

uint64_t sub_1DAEBE720(void *a1)
{
  swift_beginAccess();
  v2 = a1;
  sub_1DAECE4CC();
  swift_endAccess();
  sub_1DAEC083C();

  type metadata accessor for InProcessWidgetInstance();
  sub_1DADB7FE4(&qword_1ECC08AC8, type metadata accessor for InProcessWidgetInstance);
  sub_1DAECEE4C();
  sub_1DAECEEBC();
}

void sub_1DAEBE7F0()
{
  if ((*(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__invalidated) & 1) == 0)
  {
    v1 = v0;
    *(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__invalidated) = 1;
    v2 = (v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__visibilityController);
    if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__visibilityController))
    {
      swift_unknownObjectRetain();
      sub_1DAE0CC08();
      swift_unknownObjectRelease();
      v3 = *v2;
    }

    *v2 = 0;
    v2[1] = 0;
    swift_unknownObjectRelease();
    if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__liveWidgetEntryViewModel))
    {
      v4 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__liveWidgetEntryViewModel);

      sub_1DAEA1304();
    }

    swift_beginAccess();
    v5 = *(v0 + 16);
    if ((v5 & 0xC000000000000001) != 0)
    {
      if (v5 < 0)
      {
        v6 = *(v0 + 16);
      }

      v7 = *(v1 + 16);

      swift_unknownObjectRetain();
      sub_1DAED242C();
      sub_1DAECEE3C();
      sub_1DADB7FE4(&qword_1EE005C50, MEMORY[0x1E695BF10]);
      sub_1DAED1F9C();
      v9 = v27;
      v8 = v28;
      v10 = v29;
      v11 = v30;
      v12 = v31;
    }

    else
    {
      v13 = -1 << *(v5 + 32);
      v8 = v5 + 56;
      v10 = ~v13;
      v14 = -v13;
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      else
      {
        v15 = -1;
      }

      v12 = v15 & *(v5 + 56);
      v16 = *(v1 + 16);
      swift_bridgeObjectRetain_n();
      v11 = 0;
      v9 = v5;
    }

    v17 = (v10 + 64) >> 6;
    if (v9 < 0)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v18 = v11;
      v19 = v12;
      v20 = v11;
      if (!v12)
      {
        break;
      }

LABEL_19:
      v21 = (v19 - 1) & v19;
      v22 = *(*(v9 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));

      if (!v22)
      {
LABEL_25:
        sub_1DAD70B20();

        v23 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__renderSession;
        if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__renderSession))
        {
          v24 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__renderSession);

          sub_1DADD52BC();

          v25 = *(v1 + v23);
        }

        *(v1 + v23) = 0;

        return;
      }

      while (1)
      {
        sub_1DAECEE2C();

        v11 = v20;
        v12 = v21;
        if ((v9 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_21:
        if (sub_1DAED24BC())
        {
          sub_1DAECEE3C();
          swift_dynamicCast();
          v20 = v11;
          v21 = v12;
          if (v26)
          {
            continue;
          }
        }

        goto LABEL_25;
      }
    }

    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        goto LABEL_25;
      }

      v19 = *(v8 + 8 * v20);
      ++v18;
      if (v19)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1DAEBEACC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DAECE69C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DAECE4EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__identity;
  swift_beginAccess();
  (*(v10 + 16))(v13, v2 + v14, v9);
  (*(v5 + 16))(v8, a1, v4);
  v15 = type metadata accessor for InProcessWidgetInstance();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  InProcessWidgetInstance.init(identity:configuration:)(v13, v8);
  v19 = (v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_launchRequestHandler);
  swift_beginAccess();
  v21 = *v19;
  v20 = v19[1];
  v22 = (v18 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_launchRequestHandler);
  swift_beginAccess();
  v23 = *v22;
  v24 = v22[1];
  *v22 = v21;
  v22[1] = v20;
  sub_1DADCA8EC(v21);
  sub_1DAD660D8(v23);
  v25 = (v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_interactionErrorHandler);
  swift_beginAccess();
  v27 = *v25;
  v26 = v25[1];
  v28 = (v18 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_interactionErrorHandler);
  swift_beginAccess();
  v29 = *v28;
  v30 = v28[1];
  *v28 = v27;
  v28[1] = v26;
  sub_1DADCA8EC(v27);
  sub_1DAD660D8(v29);
  v31 = (v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_remoteContentDidBecomeStale);
  swift_beginAccess();
  v33 = *v31;
  v32 = v31[1];
  v34 = (v18 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_remoteContentDidBecomeStale);
  swift_beginAccess();
  v35 = *v34;
  v36 = v34[1];
  *v34 = v33;
  v34[1] = v32;
  sub_1DADCA8EC(v33);
  sub_1DAD660D8(v35);
  return v18;
}

uint64_t sub_1DAEBEDA4()
{
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__renderSession))
  {

    sub_1DADC551C(0);
  }

  return result;
}

uint64_t sub_1DAEBEE00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0AA78, &unk_1DAEDF4E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v25 - v5;
  v7 = sub_1DAED0DDC();
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DAECE4EC();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x1EEE9AC00](v11);
  v28 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  sub_1DAD648F8(v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__services, v34);
  v18 = *__swift_project_boxed_opaque_existential_1(v34, v34[3]);
  swift_beginAccess();
  result = sub_1DAD6495C(v18 + 16, v32, &qword_1ECC08380, &unk_1DAED6590);
  if (v33)
  {
    v27 = *(*__swift_project_boxed_opaque_existential_1(v32, v33) + 56);
    v20 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__identity;
    swift_beginAccess();
    v26 = v12[2];
    v26(v17, v2 + v20, v11);

    sub_1DAECE4BC();
    sub_1DAECE4DC();
    sub_1DAECE4AC();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09F70, &qword_1DAEDF4F0);
    (*(*(v21 - 8) + 56))(v6, 0, 1, v21);
    sub_1DAED0D9C();
    v22 = v12[1];
    v22(v17, v11);
    v23 = v28;
    v26(v28, v2 + v20, v11);
    v24 = sub_1DAECE48C();
    v22(v23, v11);
    sub_1DAE95F58(v24, v31);

    (*(v29 + 8))(v10, v30);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    return __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DAEBF184(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DAECE4EC();
  v73 = *(v6 - 8);
  v7 = v73[8];
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  if ((*(v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__invalidated) & 1) == 0)
  {
    v10 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__activeRequesters;
    swift_beginAccess();
    v11 = *(*(v2 + v10) + 16);
    swift_beginAccess();

    sub_1DAE87D3C(&v74, a1, a2);
    swift_endAccess();

    if (qword_1EE005E38 != -1)
    {
      swift_once();
    }

    v12 = sub_1DAECEDEC();
    v13 = __swift_project_value_buffer(v12, qword_1EE011730);
    swift_retain_n();

    v14 = sub_1DAECEDCC();
    v15 = sub_1DAED203C();

    LODWORD(v72) = v15;
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v70 = v13;
      v68 = v10;
      v17 = v16;
      v64 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v75[0] = v69;
      *v17 = 136447234;
      v74 = v3;
      v18 = sub_1DAED1D4C();
      v20 = sub_1DAD6482C(v18, v19, v75);
      v66 = a2;
      v21 = v20;

      *(v17 + 4) = v21;
      *(v17 + 12) = 2114;
      v67 = v14;
      v22 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__identity;
      swift_beginAccess();
      v63 = v73[2];
      v63(v9, v3 + v22, v6);
      v23 = sub_1DAECE4BC();
      v65 = a1;
      v24 = v23;
      v71 = v11;
      v25 = v73[1];
      v25(v9, v6);
      v26 = [v24 extensionIdentity];

      *(v17 + 14) = v26;
      v27 = v64;
      *v64 = v26;
      *(v17 + 22) = 2082;
      v63(v9, v3 + v22, v6);
      v28 = sub_1DAECE4BC();
      v25(v9, v6);
      v29 = v71;
      [v28 family];

      v30 = sub_1DAED206C();
      v32 = sub_1DAD6482C(v30, v31, v75);

      *(v17 + 24) = v32;
      *(v17 + 32) = 2050;
      v33 = *(*(v3 + v68) + 16);

      *(v17 + 34) = v33;

      *(v17 + 42) = 2082;
      *(v17 + 44) = sub_1DAD6482C(v65, v66, v75);
      v34 = v67;
      _os_log_impl(&dword_1DAD61000, v67, v72, "%{public}s-%{public}@-%{public}s: increment activation count to: %{public}ld for viewID: %{public}s", v17, 0x34u);
      sub_1DAD64398(v27, &qword_1ECC07CF0, &qword_1DAED57A0);
      MEMORY[0x1E127F100](v27, -1, -1);
      v35 = v69;
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v35, -1, -1);
      MEMORY[0x1E127F100](v17, -1, -1);

      if (v29)
      {
        return;
      }
    }

    else
    {

      if (v11)
      {
        return;
      }
    }

    v36 = sub_1DAECEDCC();
    v37 = sub_1DAED203C();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      LODWORD(v71) = v37;
      v39 = v38;
      v69 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v75[0] = v72;
      *v39 = 136446722;
      v74 = v3;
      v40 = sub_1DAED1D4C();
      v70 = v36;
      v42 = sub_1DAD6482C(v40, v41, v75);

      v68 = v39;
      *(v39 + 4) = v42;
      *(v39 + 12) = 2114;
      v43 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__identity;
      swift_beginAccess();
      v44 = v73;
      v45 = v9;
      v46 = v73[2];
      v46(v9, v3 + v43, v6);
      v47 = sub_1DAECE4BC();
      v48 = v44[1];
      v48(v9, v6);
      v49 = [v47 extensionIdentity];

      v50 = v68;
      v51 = v69;
      *(v68 + 14) = v49;
      *v51 = v49;
      *(v50 + 22) = 2082;
      v52 = v50;
      v46(v9, v3 + v43, v6);
      v53 = sub_1DAECE4BC();
      v48(v45, v6);
      [v53 family];

      v54 = sub_1DAED206C();
      v56 = sub_1DAD6482C(v54, v55, v75);

      *(v52 + 24) = v56;
      v57 = v70;
      _os_log_impl(&dword_1DAD61000, v70, v71, "%{public}s-%{public}@-%{public}s: activating", v52, 0x20u);
      sub_1DAD64398(v51, &qword_1ECC07CF0, &qword_1DAED57A0);
      MEMORY[0x1E127F100](v51, -1, -1);
      v58 = v72;
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v58, -1, -1);
      MEMORY[0x1E127F100](v52, -1, -1);
    }

    else
    {
    }

    sub_1DAEC3D84();
    sub_1DAEC3F88();
    if (*(v3 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__renderSession))
    {
      v59 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__renderSession);

      sub_1DAD9AB3C();
    }

    v60 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__liveWidgetEntryViewModel);
    if (v60)
    {
      v61 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isForeground;
      swift_beginAccess();
      v62 = *(v60 + v61);
      *(v60 + v61) = 1;

      sub_1DAD9B9DC(v62);
    }
  }
}

void sub_1DAEBF8E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DAECE4EC();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  if ((*(v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__invalidated) & 1) == 0)
  {
    v11 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__activeRequesters;
    swift_beginAccess();
    sub_1DAEC4F74(a1, a2);
    swift_endAccess();

    if (qword_1EE005E38 != -1)
    {
      swift_once();
    }

    v12 = sub_1DAECEDEC();
    v13 = __swift_project_value_buffer(v12, qword_1EE011730);
    swift_retain_n();

    v14 = sub_1DAECEDCC();
    v15 = sub_1DAED203C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v65 = v13;
      v63 = v14;
      v17 = v16;
      v67 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v70[0] = v64;
      *v17 = 136447234;
      v69 = v3;
      v18 = sub_1DAED1D4C();
      v20 = sub_1DAD6482C(v18, v19, v70);
      v68 = v3;
      v21 = v20;

      *(v17 + 4) = v21;
      *(v17 + 12) = 2114;
      v62 = v15;
      v22 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__identity;
      swift_beginAccess();
      v61 = a1;
      v59 = v7[2];
      v59(v10, &v68[v22], v6);
      v23 = v10;
      v24 = sub_1DAECE4BC();
      v66 = v11;
      v25 = v24;
      v60 = a2;
      v26 = v7[1];
      v26(v23, v6);
      v27 = [v25 extensionIdentity];

      *(v17 + 14) = v27;
      *v67 = v27;
      *(v17 + 22) = 2082;
      v59(v23, &v68[v22], v6);
      v28 = sub_1DAECE4BC();
      v26(v23, v6);
      v10 = v23;
      [v28 family];

      v11 = v66;
      v29 = sub_1DAED206C();
      v31 = sub_1DAD6482C(v29, v30, v70);

      *(v17 + 24) = v31;
      v3 = v68;
      *(v17 + 32) = 2050;
      v32 = *(*(v3 + v11) + 16);

      *(v17 + 34) = v32;

      *(v17 + 42) = 2082;
      *(v17 + 44) = sub_1DAD6482C(v61, v60, v70);
      v33 = v63;
      _os_log_impl(&dword_1DAD61000, v63, v62, "%{public}s-%{public}@-%{public}s: decrement activation count to: %{public}ld for viewID: %{public}s", v17, 0x34u);
      v34 = v67;
      sub_1DAD64398(v67, &qword_1ECC07CF0, &qword_1DAED57A0);
      MEMORY[0x1E127F100](v34, -1, -1);
      v35 = v64;
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v35, -1, -1);
      MEMORY[0x1E127F100](v17, -1, -1);
    }

    else
    {
    }

    if (!*(*(v3 + v11) + 16))
    {

      v36 = sub_1DAECEDCC();
      v37 = sub_1DAED203C();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v70[0] = v67;
        *v38 = 136446722;
        v69 = v3;
        v39 = sub_1DAED1D4C();
        LODWORD(v66) = v37;
        v41 = sub_1DAD6482C(v39, v40, v70);

        v64 = v38;
        *(v38 + 4) = v41;
        *(v38 + 12) = 2114;
        v42 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__identity;
        swift_beginAccess();
        v65 = v36;
        v43 = v7[2];
        v43(v10, v3 + v42, v6);
        v44 = sub_1DAECE4BC();
        v45 = v7[1];
        v45(v10, v6);
        v46 = [v44 extensionIdentity];

        v47 = v64;
        *(v64 + 14) = v46;
        *v68 = v46;
        *(v47 + 22) = 2082;
        v48 = v47;
        v43(v10, v3 + v42, v6);
        v49 = sub_1DAECE4BC();
        v45(v10, v6);
        [v49 family];

        v50 = sub_1DAED206C();
        v52 = sub_1DAD6482C(v50, v51, v70);

        *(v48 + 24) = v52;
        v53 = v65;
        _os_log_impl(&dword_1DAD61000, v65, v66, "%{public}s-%{public}@-%{public}s: deactivating", v48, 0x20u);
        v54 = v68;
        sub_1DAD64398(v68, &qword_1ECC07CF0, &qword_1DAED57A0);
        MEMORY[0x1E127F100](v54, -1, -1);
        v55 = v67;
        swift_arrayDestroy();
        MEMORY[0x1E127F100](v55, -1, -1);
        MEMORY[0x1E127F100](v48, -1, -1);
      }

      else
      {
      }

      v56 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__liveWidgetEntryViewModel);
      if (v56)
      {
        v57 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isForeground;
        swift_beginAccess();
        v58 = *(v56 + v57);
        *(v56 + v57) = 0;

        sub_1DAD9B9DC(v58);
      }
    }
  }
}

void sub_1DAEBFFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1DAECE55C();
  v84 = *(v8 - 8);
  v9 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DAECE4EC();
  v13 = *(v12 - 8);
  v81 = v12;
  v82 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v80 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v83 = &v70 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v85 = &v70 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08108, &unk_1DAEDF840);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v70 - v27;
  BSDispatchQueueAssertMain();
  if ((*(v4 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__invalidated) & 1) == 0)
  {
    v79 = v8;
    sub_1DAD6495C(a3, v28, &qword_1ECC07CD0, &qword_1DAED6560);
    (*(v18 + 56))(v28, 0, 1, v17);
    swift_beginAccess();

    sub_1DADD8188(v28, a1, a2);
    swift_endAccess();
    sub_1DAEC2C18();
    v29 = a2;
    if (qword_1EE005E38 != -1)
    {
      swift_once();
    }

    v30 = sub_1DAECEDEC();
    __swift_project_value_buffer(v30, qword_1EE011730);
    v31 = v85;
    sub_1DAD6495C(a3, v85, &qword_1ECC07CD0, &qword_1DAED6560);

    v32 = sub_1DAECEDCC();
    v33 = sub_1DAED203C();

    if (os_log_type_enabled(v32, v33))
    {
      v75 = v33;
      v76 = v32;
      v77 = v11;
      v34 = v4;
      v35 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v86[0] = v74;
      v86[1] = v34;
      *v35 = 136447490;
      v36 = sub_1DAED1D4C();
      v38 = sub_1DAD6482C(v36, v37, v86);

      *(v35 + 4) = v38;
      *(v35 + 12) = 2114;
      v72 = a1;
      v73 = v29;
      v39 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__identity;
      swift_beginAccess();
      v41 = v81;
      v40 = v82;
      v71 = *(v82 + 16);
      v71(v16, v34 + v39, v81);
      v42 = sub_1DAECE4BC();
      v43 = *(v40 + 8);
      v43(v16, v41);
      v44 = [v42 extensionIdentity];

      *(v35 + 14) = v44;
      *v78 = v44;
      *(v35 + 22) = 2082;
      v82 = v34;
      v71(v16, v34 + v39, v41);
      v45 = v84;
      v46 = v79;
      v47 = sub_1DAECE4BC();
      v43(v16, v41);
      v48 = v35;
      [v47 family];

      v49 = sub_1DAED206C();
      v51 = sub_1DAD6482C(v49, v50, v86);

      *(v35 + 24) = v51;
      *(v35 + 32) = 2082;
      *(v35 + 34) = sub_1DAD6482C(v72, v73, v86);
      *(v35 + 42) = 2082;
      v52 = v83;
      sub_1DAD6495C(v85, v83, &qword_1ECC07CD0, &qword_1DAED6560);
      v53 = *(v45 + 48);
      if (v53(v52, 1, v46) == 1)
      {
        sub_1DAD64398(v52, &qword_1ECC07CD0, &qword_1DAED6560);
        v54 = 0x6973697620746F4ELL;
        v55 = 0x6973697620746F4ELL;
        v56 = 0xEB00000000656C62;
        v57 = 0xEB00000000656C62;
        v58 = v77;
      }

      else
      {
        v55 = sub_1DAECE50C();
        v57 = v59;
        (*(v45 + 8))(v52, v46);
        v58 = v77;
        v56 = 0xEB00000000656C62;
        v54 = 0x6973697620746F4ELL;
      }

      sub_1DAD64398(v85, &qword_1ECC07CD0, &qword_1DAED6560);
      v60 = sub_1DAD6482C(v55, v57, v86);

      *(v48 + 44) = v60;
      *(v48 + 52) = 2082;
      v61 = *(v82 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__visibilityController);
      if (v61)
      {
        v62 = OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__visibility;
        swift_beginAccess();
        v63 = v61 + v62;
        v64 = v80;
        sub_1DAD6495C(v63, v80, &qword_1ECC07CD0, &qword_1DAED6560);
        if (v53(v64, 1, v46))
        {
          sub_1DAD64398(v64, &qword_1ECC07CD0, &qword_1DAED6560);
        }

        else
        {
          (*(v45 + 16))(v58, v64, v46);
          sub_1DAD64398(v64, &qword_1ECC07CD0, &qword_1DAED6560);
          v54 = sub_1DAECE50C();
          v56 = v65;
          (*(v45 + 8))(v58, v46);
        }
      }

      v66 = sub_1DAD6482C(v54, v56, v86);

      *(v48 + 54) = v66;
      v67 = v76;
      _os_log_impl(&dword_1DAD61000, v76, v75, "%{public}s-%{public}@-%{public}s: update visibility preference for viewModel: %{public}s to: %{public}s, and overall visibility is: %{public}s", v48, 0x3Eu);
      v68 = v78;
      sub_1DAD64398(v78, &qword_1ECC07CF0, &qword_1DAED57A0);
      MEMORY[0x1E127F100](v68, -1, -1);
      v69 = v74;
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v69, -1, -1);
      MEMORY[0x1E127F100](v48, -1, -1);
    }

    else
    {

      sub_1DAD64398(v31, &qword_1ECC07CD0, &qword_1DAED6560);
    }
  }
}

uint64_t sub_1DAEC083C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v222 = &v211 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC083E0, &qword_1DAED7CC0);
  v224 = *(v5 - 8);
  v225 = v5;
  v6 = *(v224 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v223 = &v211 - v7;
  v241 = sub_1DAECEDEC();
  v8 = *(v241 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v241);
  v11 = &v211 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09F70, &qword_1DAEDF4F0);
  v220 = *(v12 - 8);
  v221 = v12;
  v13 = *(v220 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v219 = &v211 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08358, &qword_1DAED6568);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v211 - v17;
  v19 = sub_1DAED10DC();
  v233 = *(v19 - 8);
  v234 = v19;
  v20 = *(v233 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v232 = &v211 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1DAECE4EC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 8);
  MEMORY[0x1EEE9AC00](v22);
  v218 = &v211 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v217 = &v211 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v235 = &v211 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v239 = &v211 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v238 = &v211 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v237 = &v211 - v35;
  v214 = (v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__visibilityController);
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__visibilityController))
  {
    v36 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__visibilityController);
    swift_unknownObjectRetain();
    sub_1DAE0CC08();
    swift_unknownObjectRelease();
  }

  v37 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__liveWidgetEntryViewModel;
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__liveWidgetEntryViewModel))
  {
    v38 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__liveWidgetEntryViewModel);

    sub_1DAEA1304();
  }

  v240 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__renderSession;
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__renderSession))
  {
    v39 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__renderSession);

    sub_1DADD52BC();
  }

  v245 = v23;
  v242 = v22;
  v243 = v37;
  v227 = v18;
  v215 = v8;
  v216 = v11;
  swift_beginAccess();
  v244 = v0;
  v40 = *(v0 + 16);
  if ((v40 & 0xC000000000000001) != 0)
  {
    if (v40 < 0)
    {
      v41 = *(v0 + 16);
    }

    v42 = *(v1 + 16);

    swift_unknownObjectRetain();
    sub_1DAED242C();
    v37 = sub_1DAECEE3C();
    sub_1DADB7FE4(&qword_1EE005C50, MEMORY[0x1E695BF10]);
    sub_1DAED1F9C();
    v43 = v262;
    v44 = v263;
    v45 = v264;
    v46 = v265;
    v47 = v266;
  }

  else
  {
    v48 = -1 << *(v40 + 32);
    v44 = v40 + 56;
    v45 = ~v48;
    v49 = -v48;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    else
    {
      v50 = -1;
    }

    v47 = (v50 & *(v40 + 56));
    v51 = *(v1 + 16);
    swift_bridgeObjectRetain_n();
    v46 = 0;
    v43 = v40;
  }

  v236 = v45;
  v52 = ((v45 + 64) >> 6);
  if (v43 < 0)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v53 = v46;
    v54 = v47;
    v55 = v46;
    if (!v47)
    {
      break;
    }

LABEL_20:
    v37 = ((v54 - 1) & v54);
    v56 = *(*(v43 + 48) + ((v55 << 9) | (8 * __clz(__rbit64(v54)))));

    if (!v56)
    {
LABEL_26:
      sub_1DAD70B20();

      v58 = v244;
      v59 = *(v244 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__instanceID + 8);
      v236 = *(v244 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__instanceID);
      v60 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__identity;
      swift_beginAccess();
      v61 = v245;
      v62 = v245 + 16;
      v63 = *(v245 + 2);
      v64 = v237;
      v65 = v242;
      v63(v237, v58 + v60, v242);

      v230 = sub_1DAECE4BC();
      v66 = *(v61 + 1);
      v66(v64, v65);
      v67 = v238;
      v63(v238, v58 + v60, v65);
      v229 = sub_1DAECE4DC();
      v66(v67, v65);
      v231 = v60;
      v68 = v239;
      v63(v239, v58 + v60, v65);
      v69 = sub_1DAECE48C();
      v245 = v61 + 8;
      v66(v68, v65);
      v70 = (v58 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__services);
      sub_1DAD648F8(v70, &v258);
      v71 = *__swift_project_boxed_opaque_existential_1(&v258, v260);
      swift_beginAccess();
      result = sub_1DAD6495C(v71 + 16, v256, &qword_1ECC08380, &unk_1DAED6590);
      if (v257)
      {
        v228 = v69;
        v237 = v66;
        v238 = v63;
        v239 = v62;
        v73 = __swift_project_boxed_opaque_existential_1(v256, v257);
        sub_1DAD648F8(*v73 + 16, v255);
        sub_1DAD648F8(v70, v253);
        v74 = *__swift_project_boxed_opaque_existential_1(v253, v254);
        swift_beginAccess();
        result = sub_1DAD6495C(v74 + 16, v251, &qword_1ECC08380, &unk_1DAED6590);
        if (v252)
        {
          v75 = *(*__swift_project_boxed_opaque_existential_1(v251, v252) + 56);
          v76 = __swift_project_boxed_opaque_existential_1(v70, v70[3]);
          sub_1DAD648F8(*v76 + 144, v250);
          v77 = v70[3];
          v226 = v70;
          v78 = __swift_project_boxed_opaque_existential_1(v70, v77);
          sub_1DAD648F8(*v78 + 104, v249);
          v79 = type metadata accessor for WidgetRendererSession();
          v80 = *(v79 + 48);
          v81 = *(v79 + 52);
          v46 = swift_allocObject();
          *(v46 + 56) = 0;
          v82 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_taskPriority;
          v83 = *MEMORY[0x1E6993F90];
          v84 = sub_1DAECE20C();
          (*(*(v84 - 8) + 104))(v46 + v82, v83, v84);
          v85 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_visibility;
          v86 = sub_1DAECE55C();
          v87 = *(v86 - 8);
          v212 = *(v87 + 56);
          v213 = v86;
          v211 = v87 + 56;
          v212(v46 + v85, 1, 1);
          *(v46 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__invalidated) = 0;
          v88 = v46 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__catastrophicReloadReason;
          *v88 = 0;
          *(v88 + 8) = 1;
          v89 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__catastrophicReloadReasonDate;
          v90 = sub_1DAECDCEC();
          (*(*(v90 - 8) + 56))(v46 + v89, 1, 1, v90);
          *(v46 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__cancellables) = MEMORY[0x1E69E7CD0];
          *(v46 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__started) = 0;
          v91 = (v46 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
          *v91 = 0;
          v91[1] = 0xE000000000000000;
          v92 = objc_allocWithZone(WRWidgetRendererSessionKey);

          v93 = v230;
          v94 = v229;
          v95 = v236;
          v96 = sub_1DAED1CBC();
          v97 = [v92 initWithIdentifier:v96 widget:v93 metrics:v94];

          *(v46 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__sessionID) = v97;
          v37 = &unk_1EE008000;
          sub_1DAD648F8(v255, v46 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__client);
          *(v46 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__archiveService) = v75;
          sub_1DAD648F8(v250, v46 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__keybagStateProvider);
          sub_1DAD648F8(v249, v46 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__dataProtectionMonitor);
          *(v46 + 16) = v95;
          *(v46 + 24) = v59;
          *(v46 + 32) = v93;
          *(v46 + 40) = v94;
          v98 = *(v46 + 56);
          *(v46 + 48) = v228;
          *(v46 + 56) = 0;

          v236 = v93;
          v230 = v94;

          v99 = v232;
          sub_1DAED10CC();
          (*(v233 + 32))(v46 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_environmentModifiers, v99, v234);
          v100 = sub_1DAD7D2C8(v46);
          v52 = (v46 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
          v101 = *(v46 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);
          *v52 = v100;
          v52[1] = v102;

          if (qword_1EE005E88 == -1)
          {
            goto LABEL_29;
          }

          goto LABEL_54;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      return result;
    }

    while (1)
    {
      sub_1DAECEE2C();

      v46 = v55;
      v47 = v37;
      if ((v43 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_22:
      v57 = sub_1DAED24BC();
      if (v57)
      {
        v256[0] = v57;
        sub_1DAECEE3C();
        swift_dynamicCast();
        v55 = v46;
        v37 = v47;
        if (v258)
        {
          continue;
        }
      }

      goto LABEL_26;
    }
  }

  while (1)
  {
    v55 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      break;
    }

    if (v55 >= v52)
    {
      goto LABEL_26;
    }

    v54 = *(v44 + 8 * v55);
    ++v53;
    if (v54)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_54:
  swift_once();
LABEL_29:
  __swift_project_value_buffer(v241, qword_1EE0117D8);

  v103 = sub_1DAECEDCC();
  v104 = sub_1DAED203C();

  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    *&v246 = v106;
    *v105 = 136446210;
    v107 = *v52;
    v108 = v52[1];

    v109 = sub_1DAD6482C(v107, v108, &v246);

    *(v105 + 4) = v109;
    _os_log_impl(&dword_1DAD61000, v103, v104, "[%{public}s] Created", v105, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v106);
    v110 = v106;
    v37 = &unk_1EE008000;
    MEMORY[0x1E127F100](v110, -1, -1);
    MEMORY[0x1E127F100](v105, -1, -1);
  }

  v111 = (v46 + v37[35]);
  sub_1DAD648F8(v111, &v246);
  v112 = v248;
  __swift_project_boxed_opaque_existential_1(&v246, *(&v247 + 1));
  v113 = *(v112 + 64);
  v114 = *(v46 + 32);
  v115 = v113();

  v116 = *(v46 + 56);
  *(v46 + 56) = v115;

  __swift_destroy_boxed_opaque_existential_1Tm(&v246);
  v118 = v111[3];
  v117 = v111[4];
  v119 = __swift_project_boxed_opaque_existential_1(v111, v118);
  v120 = *(v118 - 8);
  v121 = *(v120 + 64);
  v122 = MEMORY[0x1EEE9AC00](v119);
  v124 = &v211 - v123;
  (*(v120 + 16))(&v211 - v123, v122);
  v125 = (*(v117 + 48))(v118, v117);
  (*(v120 + 8))(v124, v118);
  *&v246 = v125;
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08388, &qword_1DAEDDF20);
  sub_1DAD64B94(&qword_1EE005CA0, &qword_1ECC08388, &qword_1DAEDDF20);
  sub_1DAECF00C();

  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v249);
  __swift_destroy_boxed_opaque_existential_1Tm(v250);
  __swift_destroy_boxed_opaque_existential_1Tm(v255);
  __swift_destroy_boxed_opaque_existential_1Tm(v251);
  __swift_destroy_boxed_opaque_existential_1Tm(v253);
  __swift_destroy_boxed_opaque_existential_1Tm(v256);
  __swift_destroy_boxed_opaque_existential_1Tm(&v258);
  v126 = v244;
  v127 = v240;
  v128 = *(v244 + v240);
  *(v244 + v240) = v46;

  v129 = sub_1DAD8E484();
  type metadata accessor for InProcessWidgetInstance();
  sub_1DADB7FE4(&qword_1ECC08AC8, type metadata accessor for InProcessWidgetInstance);
  swift_retain_n();
  sub_1DAECEE4C();
  sub_1DAECEEBC();

  v130 = *(v243 + v126);
  *(v243 + v126) = v129;

  v131 = swift_allocObject();
  swift_weakInit();
  v132 = swift_allocObject();
  *(v132 + 16) = v131;
  *(v132 + 24) = v46;
  swift_getKeyPath();
  swift_getKeyPath();
  v133 = swift_allocObject();
  *(v133 + 16) = sub_1DAEC6134;
  *(v133 + 24) = v132;
  v258 = sub_1DADE630C;
  v259 = v133;

  v234 = v132;

  sub_1DAECEF4C();
  v134 = swift_allocObject();
  swift_weakInit();
  v135 = swift_allocObject();
  swift_weakInit();
  v136 = swift_allocObject();
  v136[2] = v135;
  v136[3] = sub_1DAEC613C;
  v136[4] = v134;
  swift_getKeyPath();
  swift_getKeyPath();
  v137 = swift_allocObject();
  *(v137 + 16) = sub_1DADE631C;
  *(v137 + 24) = v136;
  v258 = sub_1DADE6328;
  v259 = v137;

  sub_1DAECEF4C();
  v138 = v231;
  v139 = v235;
  v140 = v242;
  (v238)(v235, v126 + v231, v242);
  v141 = sub_1DAECE48C();
  (v237)(v139, v140);
  v236 = v129;
  if (v141)
  {

    v142 = v129;
    v143 = *(v126 + v127);
    if (!v143)
    {
      goto LABEL_46;
    }

LABEL_44:
    v188 = (v126 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_remoteContentDidBecomeStale);
    swift_beginAccess();
    v189 = *v188;
    if (*v188)
    {
      v190 = v188[1];
      type metadata accessor for StalenessObserver();
      swift_allocObject();

      sub_1DADCA8EC(v189);

      sub_1DADCA8EC(v189);
      v191 = sub_1DADF42C0(v143, v189, v190);
      v192 = *(v126 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__stalenessObserver);
      *(v126 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__stalenessObserver) = v191;

      sub_1DADF445C();

      sub_1DAD660D8(v189);
    }

    goto LABEL_46;
  }

  v235 = type metadata accessor for InProcessRenderStatisticsProvider();
  v233 = swift_allocObject();
  sub_1DAD648F8(v226, &v258);
  v144 = *__swift_project_boxed_opaque_existential_1(&v258, v260);
  swift_beginAccess();
  result = sub_1DAD6495C(v144 + 16, v256, &qword_1ECC08380, &unk_1DAED6590);
  if (!v257)
  {
    goto LABEL_57;
  }

  v145 = __swift_project_boxed_opaque_existential_1(v256, v257);
  sub_1DAD648F8(*v145 + 64, v255);
  v146 = v217;
  v147 = v238;
  (v238)(v217, v126 + v138, v140);
  v232 = sub_1DAECE49C();
  v230 = v148;
  v149 = v237;
  (v237)(v146, v140);
  v150 = v218;
  v147(v218, v126 + v138, v140);
  v151 = v219;
  sub_1DAECE4AC();
  v149(v150, v140);
  v152 = v227;
  v153 = v221;
  sub_1DAECE33C();
  (*(v220 + 8))(v151, v153);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08378, &qword_1DAEDA7F0);
  v155 = *(*(v154 - 8) + 56);
  v155(v152, 0, 1, v154);
  sub_1DAD648F8(v226, v253);
  v156 = *__swift_project_boxed_opaque_existential_1(v253, v254);
  swift_beginAccess();
  result = sub_1DAD6495C(v156 + 16, v251, &qword_1ECC08380, &unk_1DAED6590);
  if (!v252)
  {
    goto LABEL_58;
  }

  v157 = *(*__swift_project_boxed_opaque_existential_1(v251, v252) + 104);
  v250[3] = v235;
  v250[4] = &off_1F56B3458;
  v250[0] = v233;
  v249[3] = sub_1DAED12AC();
  v249[4] = sub_1DADB7FE4(&qword_1EE005768, MEMORY[0x1E6993EF8]);
  v249[0] = v157;
  v158 = type metadata accessor for WidgetMetricsAggregator();
  v159 = *(v158 + 48);
  v160 = *(v158 + 52);
  v161 = swift_allocObject();
  swift_weakInit();
  *(v161 + 64) = 0;
  *(v161 + 72) = 0;
  v155(v161 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configurationHostIdentifier, 1, 1, v154);
  *(v161 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configurationModelSubscriber) = 0;
  *(v161 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configuration) = 0;
  v162 = v161 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__powerlogService;
  *(v162 + 32) = 0;
  *v162 = 0u;
  *(v162 + 16) = 0u;
  v163 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__powerlogWidgetViewIdentity;
  v164 = sub_1DAED12CC();
  (*(*(v164 - 8) + 56))(v161 + v163, 1, 1, v164);
  *(v161 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetViewEntry) = 0;
  v165 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetWidgetViewIdentity;
  v166 = sub_1DAED11EC();
  (*(*(v166 - 8) + 56))(v161 + v165, 1, 1, v166);
  *(v161 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator_hasBeenVisiblySettledForCurrentVisibilitySession) = 0;
  (v212)(v161 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator_visibility, 1, 1, v213);
  sub_1DAD648F8(v250, v161 + 16);
  v167 = v230;
  *(v161 + 64) = v232;
  *(v161 + 72) = v167;
  v168 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configurationHostIdentifier;
  swift_beginAccess();
  swift_retain_n();

  sub_1DAD901C4(v152, v161 + v168, &qword_1ECC08358, &qword_1DAED6568);
  swift_endAccess();
  sub_1DAD648F8(v255, v161 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configurationModel);
  sub_1DAD648F8(v249, &v246);
  v169 = v161 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__powerlogService;
  swift_beginAccess();
  v170 = *(&v247 + 1);
  if (*(v169 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v169);
  }

  v126 = v244;
  v172 = v215;
  v171 = v216;
  if (v170)
  {
    sub_1DAD657D8(&v246, v169);
  }

  else
  {
    v173 = v247;
    *v169 = v246;
    *(v169 + 16) = v173;
    *(v169 + 32) = v248;
  }

  v142 = v236;
  swift_endAccess();
  v174 = sub_1DAED120C();
  v175 = sub_1DAED11FC();
  v176 = MEMORY[0x1E6993EE0];
  v177 = (v161 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetViewRecorder);
  v177[3] = v174;
  v177[4] = v176;
  *v177 = v175;
  swift_weakAssign();

  sub_1DADB2FF8(v161);

  sub_1DAD64398(v227, &qword_1ECC08358, &qword_1DAED6568);
  __swift_destroy_boxed_opaque_existential_1Tm(v255);
  __swift_destroy_boxed_opaque_existential_1Tm(v249);
  __swift_destroy_boxed_opaque_existential_1Tm(v250);
  __swift_destroy_boxed_opaque_existential_1Tm(v251);
  __swift_destroy_boxed_opaque_existential_1Tm(v253);
  __swift_destroy_boxed_opaque_existential_1Tm(v256);
  __swift_destroy_boxed_opaque_existential_1Tm(&v258);
  v178 = qword_1EE005E38;

  v179 = v240;
  if (v178 != -1)
  {
    swift_once();
  }

  v180 = v241;
  v181 = __swift_project_value_buffer(v241, qword_1EE011730);
  (*(v172 + 16))(v171, v181, v180);
  v182 = type metadata accessor for VisibilityPolicyController();
  v183 = *(v182 + 48);
  v184 = *(v182 + 52);
  swift_allocObject();
  v185 = sub_1DADB3BFC(v46, v142, v161, v171);

  v186 = v214;
  v187 = *v214;
  *v214 = v185;
  v186[1] = &off_1F56B2178;
  swift_unknownObjectRelease();
  v143 = *(v126 + v179);
  if (v143)
  {
    goto LABEL_44;
  }

LABEL_46:
  sub_1DAEC31B0();
  sub_1DAEC3D84();
  sub_1DAEC2C18();
  v193 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__activeRequesters;
  swift_beginAccess();
  if (*(*(v126 + v193) + 16))
  {
    sub_1DAD9AB3C();
    v194 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isForeground;
    swift_beginAccess();
    v195 = v142[v194];
    v142[v194] = 1;
    sub_1DAD9B9DC(v195);
  }

  v196 = *(v243 + v126);
  if (!v196)
  {
    goto LABEL_51;
  }

  sub_1DAD648F8(v196 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, &v258);
  v197 = v260;
  v198 = v261;
  __swift_project_boxed_opaque_existential_1(&v258, v260);
  v199 = *(v198 + 16);

  v200 = v199(v197, v198);
  v201 = sub_1DAED0C0C();
  v245 = v201;

  __swift_destroy_boxed_opaque_existential_1Tm(&v258);
  v258 = v201;
  sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
  v202 = sub_1DAED20EC();
  v251[0] = v202;
  v203 = sub_1DAED20AC();
  v204 = v222;
  (*(*(v203 - 8) + 56))(v222, 1, 1, v203);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DB0, &unk_1DAED5850);
  sub_1DAD64B94(&unk_1EE00ABF0, &unk_1ECC07DB0, &unk_1DAED5850);
  sub_1DAD88828();
  v205 = v223;
  v206 = v244;
  sub_1DAECEFBC();
  sub_1DAD64398(v204, &unk_1ECC07D20, &unk_1DAED57D0);

  v207 = swift_allocObject();
  swift_weakInit();
  v208 = swift_allocObject();
  *(v208 + 16) = sub_1DAEC6144;
  *(v208 + 24) = v207;
  sub_1DAD64B94(&qword_1EE005D10, &qword_1ECC083E0, &qword_1DAED7CC0);
  v209 = v225;
  sub_1DAECF00C();

  (*(v224 + 8))(v205, v209);
  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  v210 = *(v243 + v206);
  if (v210)
  {
    v258 = *(v210 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntryDidChangePublisher);
    swift_allocObject();
    swift_weakInit();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC083D0, qword_1DAED6780);
    sub_1DAD64B94(&qword_1EE005C88, &unk_1ECC083D0, qword_1DAED6780);
    sub_1DAECF00C();

    swift_beginAccess();
    sub_1DAECEE0C();
    swift_endAccess();
  }

  else
  {
LABEL_51:
  }

  return v46;
}

uint64_t sub_1DAEC2508(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC083A0, &unk_1DAED6758);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v18[-v5];
  v7 = sub_1DAECE47C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    if (*(result + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__renderSession))
    {
      type metadata accessor for LaunchRequestBuilder();

      sub_1DAE50D14(v14, a2, v6);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {

        sub_1DAD64398(v6, &qword_1ECC083A0, &unk_1DAED6758);
      }

      else
      {
        (*(v8 + 32))(v11, v6, v7);
        v15 = v13 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_launchRequestHandler;
        swift_beginAccess();
        v16 = *v15;
        if (*v15)
        {
          v17 = *(v15 + 8);

          v16(v11);

          sub_1DAD660D8(v16);
        }

        else
        {
        }

        (*(v8 + 8))(v11, v7);
      }
    }

    sub_1DADD4E5C(1);
  }

  return result;
}

uint64_t sub_1DAEC276C()
{
  v0 = sub_1DAECE3DC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE005E38 != -1)
  {
    swift_once();
  }

  v5 = sub_1DAECEDEC();
  __swift_project_value_buffer(v5, qword_1EE011730);
  v6 = sub_1DAECEDCC();
  v7 = sub_1DAED200C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1DAD61000, v6, v7, "Received interaction event with LinkAction; executing...", v8, 2u);
    MEMORY[0x1E127F100](v8, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = *(result + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__renderSession);

    if (v10)
    {
      (*(v1 + 104))(v4, *MEMORY[0x1E6994178], v0);
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong && (v12 = (Strong + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_interactionErrorHandler), swift_beginAccess(), v13 = *v12, v14 = v12[1], sub_1DADCA8EC(*v12), , v13))
      {
        v15 = swift_allocObject();
        *(v15 + 16) = v13;
        *(v15 + 24) = v14;
        v16 = sub_1DAEC6154;
      }

      else
      {
        v16 = nullsub_1;
        v15 = 0;
      }

      v17 = swift_allocObject();
      *(v17 + 16) = v16;
      *(v17 + 24) = v15;
      sub_1DADD50B0();

      return (*(v1 + 8))(v4, v0);
    }
  }

  return result;
}

uint64_t sub_1DAEC2A74()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1DAEC31B0();
  }

  return result;
}

uint64_t sub_1DAEC2ACC(uint64_t *a1)
{
  v1 = *a1;
  BSDispatchQueueAssertMain();
  if (sub_1DADC1344(3, v1) || (result = sub_1DADC1344(4, v1), (result & 1) != 0))
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = *(Strong + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__contentDidChangePublisher);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
      sub_1DAD64B94(&qword_1EE00ABD8, &qword_1ECC08D10, &unk_1DAEDD1E0);
      sub_1DAECEEEC();
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v5 = *(result + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__stalenessObserver);

      if (v5)
      {
        sub_1DADF445C();
      }
    }
  }

  return result;
}

uint64_t sub_1DAEC2C18()
{
  v63 = sub_1DAECE55C();
  v1 = *(v63 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0AAA0, &unk_1DAEDF6B0);
  v4 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v64 = (&v45 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  v57 = *(v6 - 8);
  v7 = *(v57 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v46 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v53 = &v45 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v56 = &v45 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = *(v1 + 56);
  v14 = v1 + 56;
  v60 = &v45 - v16;
  v49 = v15;
  v15();
  v17 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__visibilityPreferences;
  swift_beginAccess();
  v18 = *(v0 + v17);
  v19 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 64);
  v23 = (v20 + 63) >> 6;
  v61 = (v14 - 8);
  v47 = v0;
  v48 = (v14 - 40);
  v50 = v14;
  v51 = (v14 - 48);
  v52 = (v14 - 24);
  v59 = v18;
  result = swift_bridgeObjectRetain_n();
  v25 = 0;
  v55 = v19;
  while (v22)
  {
LABEL_11:
    v27 = __clz(__rbit64(v22)) | (v25 << 6);
    v28 = (*(v59 + 48) + 16 * v27);
    v29 = *v28;
    v30 = v28[1];
    v31 = *(v58 + 48);
    v32 = v64;
    sub_1DAD6495C(*(v59 + 56) + *(v57 + 72) * v27, v64 + v31, &qword_1ECC07CD0, &qword_1DAED6560);
    *v32 = v29;
    v32[1] = v30;
    v33 = v56;
    sub_1DAD6495C(v32 + v31, v56, &qword_1ECC07CD0, &qword_1DAED6560);
    v34 = *v61;
    v35 = v63;
    if ((*v61)(v33, 1, v63) == 1)
    {

      sub_1DAD64398(v33, &qword_1ECC07CD0, &qword_1DAED6560);
      v19 = v55;
    }

    else
    {
      (*v52)(v62, v33, v35);
      v36 = v53;
      sub_1DAD6495C(v60, v53, &qword_1ECC07CD0, &qword_1DAED6560);
      v54 = v34;
      v37 = v34(v36, 1, v35);
      v38 = v62;

      sub_1DAD64398(v36, &qword_1ECC07CD0, &qword_1DAED6560);
      v39 = v37 == 1;
      v40 = v63;
      if (v39)
      {
        v41 = v60;
        sub_1DAD64398(v60, &qword_1ECC07CD0, &qword_1DAED6560);
        (*v48)(v41, v38, v40);
        (v49)(v41, 0, 1, v40);
      }

      v42 = sub_1DAECE53C();
      v19 = v55;
      if ((v42 & 1) != 0 && !v54(v60, 1, v40))
      {
        sub_1DAECE54C();
      }

      (*v51)(v62, v40);
    }

    v22 &= v22 - 1;
    result = sub_1DAD64398(v64, &qword_1ECC0AAA0, &unk_1DAEDF6B0);
  }

  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      return result;
    }

    if (v26 >= v23)
    {
      break;
    }

    v22 = *(v19 + 8 * v26);
    ++v25;
    if (v22)
    {
      v25 = v26;
      goto LABEL_11;
    }
  }

  v43 = v60;
  if (*(v47 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__visibilityController))
  {
    v44 = v46;
    sub_1DAD6495C(v60, v46, &qword_1ECC07CD0, &qword_1DAED6560);
    swift_unknownObjectRetain();
    sub_1DAD6D8C0(v44);
    swift_unknownObjectRelease();
    sub_1DAD64398(v44, &qword_1ECC07CD0, &qword_1DAED6560);
  }

  return sub_1DAD64398(v43, &qword_1ECC07CD0, &qword_1DAED6560);
}

uint64_t sub_1DAEC31B0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  v8 = sub_1DAECE69C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  v16 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__requestedConfiguration;
  swift_beginAccess();
  v30 = *(v9 + 16);
  v30(v15, v1 + v16, v8);
  v17 = sub_1DAECE5AC();
  if (v17)
  {
    v18 = v17;
    v19 = [v17 filterStyle];

    if (v19 == 7)
    {
      v20 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__renderSession);
      if (v20)
      {
        v21 = *(v20 + 56);
        if (v21)
        {
          if ([v21 preferredBackgroundStyle] == 2)
          {
            goto LABEL_8;
          }
        }
      }
    }
  }

  v22 = sub_1DAECE5AC();
  if (v22 && (v23 = v22, v24 = [v22 wantsGlassMaterial], v23, v24))
  {
LABEL_8:
    v25 = *MEMORY[0x1E697DBA8];
    v26 = sub_1DAECF0AC();
    v27 = *(v26 - 8);
    (*(v27 + 104))(v7, v25, v26);
    (*(v27 + 56))(v7, 0, 1, v26);
  }

  else
  {
    sub_1DAECE5FC();
  }

  sub_1DAD6495C(v7, v31, &qword_1ECC08370, &unk_1DAED6580);
  sub_1DAECE63C();
  v30(v12, v15, v8);
  sub_1DAEBCA08(v12);
  sub_1DAD64398(v7, &qword_1ECC08370, &unk_1DAED6580);
  return (*(v9 + 8))(v15, v8);
}

void sub_1DAEC34F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08368, &unk_1DAEDE2B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v56 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v54 - v14;
  v16 = sub_1DAECE5CC();
  v17 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_displayProperties;
  swift_beginAccess();
  v18 = *(a1 + v17);
  *(a1 + v17) = v16;
  v19 = v16;
  sub_1DAD996A0(v18);

  LOBYTE(v16) = sub_1DAECE64C();
  v20 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_canAppearInSecureEnvironment;
  swift_beginAccess();
  v21 = *(a1 + v20);
  *(a1 + v20) = v16 & 1;
  sub_1DAD95310(v21);
  sub_1DAECE62C();
  v22 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_preferredColorScheme;
  swift_beginAccess();
  sub_1DAD6495C(a1 + v22, v12, &qword_1ECC08370, &unk_1DAED6580);
  swift_beginAccess();
  sub_1DAD901C4(v15, a1 + v22, &qword_1ECC08370, &unk_1DAED6580);
  swift_endAccess();
  sub_1DAD99B74(v12);
  sub_1DAD64398(v12, &qword_1ECC08370, &unk_1DAED6580);
  sub_1DAD64398(v15, &qword_1ECC08370, &unk_1DAED6580);
  v23 = sub_1DAECE5AC();
  v24 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_tintParameters;
  swift_beginAccess();
  v25 = *(a1 + v24);
  *(a1 + v24) = v23;
  v26 = v23;
  sub_1DAD95C3C(v25);

  v27 = sub_1DAECE5EC();
  v28 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inlineTextParameters;
  swift_beginAccess();
  v29 = *(a1 + v28);
  *(a1 + v28) = v27;
  v30 = v27;
  sub_1DAD95EE8(v29);

  LOBYTE(v27) = sub_1DAECE58C();
  v31 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_showsWidgetLabel;
  swift_beginAccess();
  v32 = *(a1 + v31);
  *(a1 + v31) = v27 & 1;
  sub_1DAD9A040(v32);
  LOBYTE(v27) = sub_1DAECE67C();
  v33 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersUnredactedContentInLowLuminanceEnvironment;
  swift_beginAccess();
  v34 = *(a1 + v33);
  *(a1 + v33) = v27 & 1;
  sub_1DAD95AA0(v34);
  LOBYTE(v27) = sub_1DAECE60C();
  v35 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_supportsLowLuminance;
  swift_beginAccess();
  v36 = *(a1 + v35);
  *(a1 + v35) = v27 & 1;
  sub_1DAD956A0(v36);
  v37 = sub_1DAECE59C();
  v38 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
  swift_beginAccess();
  v39 = *(a1 + v38);
  *(a1 + v38) = v37;
  v40 = v37;
  sub_1DAD9A058();

  LOBYTE(v37) = sub_1DAECE61C();
  swift_getKeyPath();
  swift_getKeyPath();
  v59 = v37 & 1;

  sub_1DAECEF4C();
  LOBYTE(v37) = sub_1DAECE5BC();
  v41 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_wantsContentPaused;
  swift_beginAccess();
  v42 = *(a1 + v41);
  *(a1 + v41) = v37 & 1;
  BSDispatchQueueAssertMain();
  if (v42 != *(a1 + v41))
  {
    v43 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_allowContentPaused;
    swift_beginAccess();
    sub_1DAE9C79C(*(a1 + v43) & v42 & 1);
  }

  sub_1DAECE68C();
  v44 = v55;
  sub_1DAED170C();
  v45 = sub_1DAED16FC();
  (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
  v46 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_proximity;
  swift_beginAccess();
  v47 = v56;
  sub_1DAD6495C(a1 + v46, v56, &qword_1ECC08368, &unk_1DAEDE2B0);
  swift_beginAccess();
  sub_1DAD901C4(v44, a1 + v46, &qword_1ECC08368, &unk_1DAEDE2B0);
  swift_endAccess();
  sub_1DAD9A254(v47);
  sub_1DAD64398(v47, &qword_1ECC08368, &unk_1DAEDE2B0);
  sub_1DAD64398(v44, &qword_1ECC08368, &unk_1DAEDE2B0);
  LOBYTE(v46) = sub_1DAECE5DC();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v58[0]) = v46 & 1;

  sub_1DAECEF4C();
  swift_getKeyPath();
  swift_getKeyPath();
  v48 = swift_allocObject();
  v49 = v57;
  *(v48 + 16) = sub_1DAEC6018;
  *(v48 + 24) = v49;
  v58[0] = sub_1DAEC6020;
  v58[1] = v48;

  swift_retain_n();
  sub_1DAECEF4C();
  BSDispatchQueueAssertMain();

  v50 = sub_1DAECEDCC();
  v51 = sub_1DAED200C();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v58[0] = v53;
    *v52 = 136446210;
    *(v52 + 4) = sub_1DAD6482C(*(a1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(a1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), v58);
    _os_log_impl(&dword_1DAD61000, v50, v51, "[%{public}s] backgroundViewBuilder changed", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    MEMORY[0x1E127F100](v53, -1, -1);
    MEMORY[0x1E127F100](v52, -1, -1);
  }
}

uint64_t sub_1DAEC3C98()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0AAA8, &qword_1DAEDF798);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v8 - v2);
  if (!sub_1DAEBD328())
  {
    return 0;
  }

  v4 = sub_1DAED064C();
  v5 = v3 + *(v0 + 36);
  sub_1DAED08EC();
  v6 = sub_1DAED004C();
  v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0AAB0, &qword_1DAEDF7A0) + 36)] = v6;
  *v3 = v4;
  sub_1DAEC6028();
  return sub_1DAED087C();
}

uint64_t sub_1DAEC3D84()
{
  v1 = sub_1DAECE20C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v16 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__renderSession);
  if (v10)
  {
    v11 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__activeRequesters;
    swift_beginAccess();
    if (*(*(v0 + v11) + 16))
    {
      v12 = MEMORY[0x1E6993FA0];
    }

    else
    {
      v12 = MEMORY[0x1E6993F90];
    }

    (*(v2 + 104))(v9, *v12, v1);
    v13 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_taskPriority;
    swift_beginAccess();
    (*(v2 + 16))(v6, v10 + v13, v1);
    swift_beginAccess();
    v14 = *(v2 + 24);

    v14(v10 + v13, v9, v1);
    swift_endAccess();
    sub_1DAD7D4B8();

    v15 = *(v2 + 8);
    v15(v6, v1);
    return (v15)(v9, v1);
  }

  return result;
}

uint64_t sub_1DAEC3F88()
{
  v1 = sub_1DAED167C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DAECF0AC();
  v69 = *(v5 - 8);
  v70 = v5;
  v6 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v68 = &v58 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0AA98, &qword_1DAEDF698);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v58 - v13;
  v15 = sub_1DAECE69C();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x1EEE9AC00](v15);
  v71 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v58 - v20;
  v22 = sub_1DAED10DC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v58 - v28;
  result = BSDispatchQueueAssertMain();
  if ((*(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__invalidated) & 1) == 0)
  {
    v61 = v4;
    v67 = v27;
    v64 = v29;
    v31 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__effectiveConfiguration;
    swift_beginAccess();
    v32 = v0;
    v62 = v16[2];
    v62(v21, v0 + v31, v15);
    sub_1DAECE65C();
    v33 = v16[1];
    v63 = v16 + 1;
    v33(v21, v15);
    v34 = (*(v23 + 48))(v14, 1, v22);
    v65 = v32;
    if (v34 == 1)
    {
      v59 = v33;
      sub_1DAD64398(v14, &qword_1ECC0AA98, &qword_1DAEDF698);
      v60 = v15;
      v62(v71, v32 + v31, v15);
      v35 = v64;
      sub_1DAED10CC();
      sub_1DAECE64C();
      sub_1DAED104C();
      v36 = v68;
      sub_1DAECE62C();
      v38 = v69;
      v37 = v70;
      if ((*(v69 + 48))(v36, 1, v70) == 1)
      {
        sub_1DAD64398(v36, &qword_1ECC08370, &unk_1DAED6580);
        v39 = v22;
        v40 = v71;
      }

      else
      {
        v42 = v66;
        (*(v38 + 32))(v66, v36, v37);
        v43 = (*(v38 + 88))(v42, v37);
        v39 = v22;
        if (v43 == *MEMORY[0x1E697DBB8])
        {
          v40 = v71;
        }

        else
        {
          v40 = v71;
          if (v43 != *MEMORY[0x1E697DBA8])
          {
            (*(v38 + 8))(v42, v37);
          }
        }
      }

      sub_1DAED107C();
      sub_1DAECE58C();
      sub_1DAED105C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC083A8, &unk_1DAEDF6A0);
      v44 = *(sub_1DAED15DC() - 8);
      v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v71 = *(v44 + 72);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1DAED6200;
      sub_1DAECE59C();
      sub_1DAED15EC();
      v47 = sub_1DAECE59C();
      v48 = [v47 renderingMode];

      if (v48)
      {

        v70 = v39;
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_1DAED64C0;
        sub_1DAECE59C();
        sub_1DAED15EC();
        sub_1DAED166C();
        v49 = sub_1DAECE59C();
        [v49 backgroundViewPolicy];

        v39 = v70;
        sub_1DAED15BC();
      }

      v41 = v67;
      sub_1DAD7F350(v46);

      sub_1DAED108C();
      sub_1DAECE60C();
      sub_1DAED10AC();
      sub_1DAECE58C();
      sub_1DAED105C();
      sub_1DAECE68C();
      sub_1DAED21FC();
      sub_1DAED106C();
      v50 = sub_1DAECE5CC();
      if (v50)
      {
        v51 = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1DAED64D0;
        *(inited + 32) = v51;
        v53 = v51;
        sub_1DAD7FA70(inited);
        swift_setDeallocating();
        v54 = *(inited + 16);
        swift_arrayDestroy();
        sub_1DAED10BC();

        v41 = v67;
      }

      v59(v40, v60);
    }

    else
    {
      v35 = v64;
      (*(v23 + 32))(v64, v14, v22);
      v39 = v22;
      v41 = v67;
    }

    v55 = *(v23 + 16);
    v55(v41, v35, v39);
    v56 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__environmentModifiers;
    v57 = v65;
    swift_beginAccess();
    (*(v23 + 40))(v57 + v56, v41, v39);
    swift_endAccess();
    if (*(v57 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__renderSession))
    {
      v55(v41, v35, v39);

      sub_1DAD8E294(v41);
    }

    return (*(v23 + 8))(v35, v39);
  }

  return result;
}

uint64_t InProcessWidgetInstance.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__identity;
  v3 = sub_1DAECE4EC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__requestedConfiguration;
  v5 = sub_1DAECE69C();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__effectiveConfiguration, v5);
  v7 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__contentDidChangePublisher);

  v8 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_contentDidChangePublisher);

  v9 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_launchRequestHandler + 8);
  sub_1DAD660D8(*(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_launchRequestHandler));
  v10 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_interactionErrorHandler + 8);
  sub_1DAD660D8(*(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_interactionErrorHandler));
  v11 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_remoteContentDidBecomeStale + 8);
  sub_1DAD660D8(*(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_remoteContentDidBecomeStale));
  v12 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__liveWidgetEntryViewModel);

  v13 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__instanceID + 8);

  v14 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__activeRequesters);

  v15 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__visibilityPreferences);

  v16 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__renderSession);

  v17 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__environmentModifiers;
  v18 = sub_1DAED10DC();
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__visibilityController);
  swift_unknownObjectRelease();
  v20 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__stalenessObserver);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__services));
  return v0;
}

uint64_t InProcessWidgetInstance.__deallocating_deinit()
{
  InProcessWidgetInstance.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAEC4AA0@<X0>(uint64_t *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v7 = *a1;
  swift_beginAccess();
  v8 = a2(0);
  return (*(*(v8 - 8) + 16))(a3, v6 + v7, v8);
}

uint64_t sub_1DAEC4B30(uint64_t a1)
{
  v3 = sub_1DAECE69C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  (*(v4 + 16))(v8, a1, v3, v6);
  v10 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__requestedConfiguration;
  swift_beginAccess();
  (*(v4 + 24))(v9 + v10, v8, v3);
  swift_endAccess();
  sub_1DAEC31B0();
  v11 = *(v4 + 8);
  v11(a1, v3);
  return (v11)(v8, v3);
}

void (*sub_1DAEC4C78(uint64_t **a1))(void *a1)
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
  v3[4] = sub_1DAEBD034(v3);
  return sub_1DAE08444;
}

uint64_t sub_1DAEC4CEC()
{
  v1 = (*v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_launchRequestHandler);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_1DADCA8EC(v3);
  return v3;
}

uint64_t sub_1DAEC4D4C(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_launchRequestHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1DAD660D8(v6);
}

uint64_t (*sub_1DAEC4DB0())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t sub_1DAEC4E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for InProcessWidgetInstance();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  result = InProcessWidgetInstance.init(identity:configuration:)(a1, a2);
  *a3 = v9;
  return result;
}

uint64_t sub_1DAEC4E94@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for InProcessWidgetInstance();
  result = sub_1DAECEE4C();
  *a1 = result;
  return result;
}

uint64_t sub_1DAEC4ED4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDF3DB0](a1, WitnessTable);
}

uint64_t type metadata accessor for InProcessWidgetInstance()
{
  result = qword_1ECC0AA88;
  if (!qword_1ECC0AA88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAEC4F74(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1DAED294C();
  sub_1DAED1D9C();
  v7 = sub_1DAED297C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1DAED289C() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1DAE89404();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_1DAEC5438(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_1DAEC50EC()
{
  v1 = *v0;

  v2 = sub_1DAED247C();
  v3 = swift_unknownObjectRetain();
  v4 = sub_1DAE880D4(v3, v2);
  v12 = v4;
  v5 = *(v4 + 40);
  sub_1DAECEE3C();
  sub_1DADB7FE4(&qword_1EE005C50, MEMORY[0x1E695BF10]);

  v6 = sub_1DAED1C5C();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_1DADB7FE4(&qword_1EE005C48, MEMORY[0x1E695BF10]);
    while (1)
    {
      v13 = *(*(v4 + 48) + 8 * v8);
      if (sub_1DAED1CAC())
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v10 = *(*(v4 + 48) + 8 * v8);
  sub_1DADB802C(v8);
  result = sub_1DAED1CAC();
  if (result)
  {
    *v0 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAEC52C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), unint64_t *a4, uint64_t *a5)
{
  v9 = v5;
  v10 = *v5;

  v11 = sub_1DAED247C();
  v12 = swift_unknownObjectRetain();
  v13 = a3(v12, v11);
  v23 = v13;
  v14 = *(v13 + 40);

  v15 = sub_1DAED227C();
  v16 = -1 << *(v13 + 32);
  v17 = v15 & ~v16;
  if ((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    sub_1DAD674D4(0, a4, a5);
    while (1)
    {
      v19 = *(*(v13 + 48) + 8 * v17);
      v20 = sub_1DAED228C();

      if (v20)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v21 = *(*(v13 + 48) + 8 * v17);
  sub_1DADC7428(v17);
  result = sub_1DAED228C();
  if (result)
  {
    *v9 = v23;
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1DAEC5438(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1DAED23EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1DAED294C();

        sub_1DAED1D9C();
        v15 = sub_1DAED297C();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1DAEC55FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v43 = a2;
  v40 = a1;
  v41 = sub_1DAED10DC();
  v7 = *(v41 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46[3] = type metadata accessor for ServiceFacade();
  v46[4] = &off_1F56B0688;
  v46[0] = a3;
  v11 = MEMORY[0x1E69E7CD0];
  *(a4 + 16) = MEMORY[0x1E69E7CD0];
  v12 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__contentDidChangePublisher;
  v39 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__contentDidChangePublisher;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(a4 + v12) = sub_1DAECEE7C();
  v16 = (a4 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_launchRequestHandler);
  *v16 = 0;
  v16[1] = 0;
  v17 = (a4 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_interactionErrorHandler);
  *v17 = 0;
  v17[1] = 0;
  v18 = (a4 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_remoteContentDidBecomeStale);
  *v18 = 0;
  v18[1] = 0;
  *(a4 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__liveWidgetEntryViewModel) = 0;
  *(a4 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__activeRequesters) = v11;
  *(a4 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__visibilityPreferences) = MEMORY[0x1E69E7CC8];
  *(a4 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__renderSession) = 0;
  v19 = (a4 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__visibilityController);
  *v19 = 0;
  v19[1] = 0;
  *(a4 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__invalidated) = 0;
  *(a4 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__stalenessObserver) = 0;
  sub_1DAD648F8(v46, a4 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__services);
  v20 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__identity;
  v42 = sub_1DAECE4EC();
  v21 = *(v42 - 8);
  (*(v21 + 16))(a4 + v20, a1, v42);
  v22 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__requestedConfiguration;
  v23 = sub_1DAECE69C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 16);
  v26 = a4 + v22;
  v27 = v43;
  v25(v26, v43, v23);
  v25(a4 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__effectiveConfiguration, v27, v23);
  sub_1DAED10CC();
  (*(v7 + 32))(a4 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__environmentModifiers, v10, v41);
  v44 = *(a4 + v39);
  sub_1DAD64B94(&qword_1EE00ABD0, &qword_1ECC08D10, &unk_1DAEDD1E0);
  *(a4 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_contentDidChangePublisher) = sub_1DAECEF6C();
  v28 = (a4 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__instanceID);
  *v28 = 0x6C616974696E69;
  v28[1] = 0xE700000000000000;
  v44 = a4;
  v29 = sub_1DAED29CC();
  v31 = v30;
  v44 = 0;
  v45 = 0xE000000000000000;
  sub_1DAED256C();

  v44 = 0xD000000000000024;
  v45 = 0x80000001DAEE68E0;
  v32 = v40;
  v33 = sub_1DAECE49C();
  if (v34)
  {
    v35 = v34;
  }

  else
  {
    v33 = 7104878;
    v35 = 0xE300000000000000;
  }

  MEMORY[0x1E127DA50](v33, v35);

  MEMORY[0x1E127DA50](14906, 0xE200000000000000);
  MEMORY[0x1E127DA50](v29, v31);

  v36 = v45;
  v37 = v28[1];
  *v28 = v44;
  v28[1] = v36;

  sub_1DAEC083C();

  (*(v24 + 8))(v43, v23);
  (*(v21 + 8))(v32, v42);
  __swift_destroy_boxed_opaque_existential_1Tm(v46);
  return a4;
}

uint64_t sub_1DAEC5AA8()
{
  result = sub_1DAECE4EC();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_1DAECE69C();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_1DAED10DC();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

unint64_t sub_1DAEC6028()
{
  result = qword_1ECC0AAB8;
  if (!qword_1ECC0AAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0AAA8, &qword_1DAEDF798);
    sub_1DAD64B94(&qword_1ECC0AAC0, &qword_1ECC0AAB0, &qword_1DAEDF7A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0AAB8);
  }

  return result;
}

uint64_t sub_1DAEC60E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1DAEC6108(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1DAEC6134(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1DAEC2508(a1, a2);
}

uint64_t sub_1DAEC6158()
{
  v1 = v0;
  sub_1DAD648F8(v0 + 16, v5);
  v2 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3 = *(v2 + 8);
  sub_1DAED144C();
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 56));
  return swift_deallocClassInstance();
}

uint64_t sub_1DAEC61DC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1DAED19AC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t getEnumTagSinglePayload for FeatureFlags.Widgets(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureFlags.Widgets(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DAEC639C()
{
  result = qword_1ECC0AAC8;
  if (!qword_1ECC0AAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0AAC8);
  }

  return result;
}

uint64_t ActivityContentDidChangeEvent.activityKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DAED0B1C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ActivityContentDidChangeEvent.activityKey.setter(uint64_t a1)
{
  v3 = sub_1DAED0B1C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t type metadata accessor for ActivityContentDidChangeEvent()
{
  result = qword_1EE00AE70;
  if (!qword_1EE00AE70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActivityContentDidChangeEvent.isFailed.setter(char a1)
{
  result = type metadata accessor for ActivityContentDidChangeEvent();
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t ActivityContentDidChangeEvent.init(activityKey:isFailed:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1DAED0B1C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for ActivityContentDidChangeEvent();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t static ActivityContentDidChangeEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1DAED0B0C())
  {
    v4 = type metadata accessor for ActivityContentDidChangeEvent();
    v5 = *(a1 + *(v4 + 20)) ^ *(a2 + *(v4 + 20)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1DAEC6698()
{
  if (*v0)
  {
    result = 0x64656C6961467369;
  }

  else
  {
    result = 0x7974697669746361;
  }

  *v0;
  return result;
}

uint64_t sub_1DAEC66DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7974697669746361 && a2 == 0xEB0000000079654BLL;
  if (v6 || (sub_1DAED289C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64656C6961467369 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DAED289C();

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

uint64_t sub_1DAEC67BC(uint64_t a1)
{
  v2 = sub_1DAEC69D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAEC67F8(uint64_t a1)
{
  v2 = sub_1DAEC69D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityContentDidChangeEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0AAD0, &qword_1DAEDF980);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAEC69D8();
  sub_1DAED29BC();
  v13[15] = 0;
  sub_1DAED0B1C();
  sub_1DAEC6D58(&qword_1EE0057F8);
  sub_1DAED284C();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for ActivityContentDidChangeEvent() + 20));
    v13[14] = 1;
    sub_1DAED282C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1DAEC69D8()
{
  result = qword_1EE00AE90[0];
  if (!qword_1EE00AE90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE00AE90);
  }

  return result;
}

uint64_t ActivityContentDidChangeEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v24 = sub_1DAED0B1C();
  v22 = *(v24 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0AAD8, &qword_1DAEDF988);
  v23 = *(v25 - 8);
  v7 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v20 - v8;
  v10 = type metadata accessor for ActivityContentDidChangeEvent();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAEC69D8();
  sub_1DAED29AC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v20 = v13;
  v15 = v22;
  v27 = 0;
  sub_1DAEC6D58(&qword_1EE0057F0);
  v16 = v24;
  sub_1DAED280C();
  v17 = v20;
  (*(v15 + 32))(v20, v6, v16);
  v26 = 1;
  v18 = sub_1DAED27EC();
  (*(v23 + 8))(v9, v25);
  *(v17 + *(v10 + 20)) = v18 & 1;
  sub_1DAE16C40(v17, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1DAE16BC4(v17);
}

uint64_t sub_1DAEC6D58(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DAED0B1C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAEC6D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1DAED0B0C())
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1DAEC6E4C()
{
  result = sub_1DAED0B1C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1DAEC6ED4()
{
  result = qword_1ECC0AAE0;
  if (!qword_1ECC0AAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0AAE0);
  }

  return result;
}

unint64_t sub_1DAEC6F2C()
{
  result = qword_1EE00AE80;
  if (!qword_1EE00AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00AE80);
  }

  return result;
}

unint64_t sub_1DAEC6F84()
{
  result = qword_1EE00AE88;
  if (!qword_1EE00AE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00AE88);
  }

  return result;
}

void sub_1DAEC6FD8()
{
  v1 = v0;
  sub_1DAED087C();
  v2 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v3 = *(v1 + v2);

  sub_1DAECFABC();

  v4 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);
  sub_1DAEA1304();
}

uint64_t sub_1DAEC707C()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_isContentTransparent;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1DAEC70C4(char a1)
{
  v3 = a1 & 1;
  v4 = sub_1DAECFBAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_isContentTransparent;
  swift_beginAccess();
  v10 = *(v1 + v9);
  *(v1 + v9) = a1;
  if (v10 != v3)
  {
    v11 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
    if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController__renderEngine))
    {
      swift_beginAccess();
      v12 = *(v1 + v11);
      (*(v5 + 104))(v8, *MEMORY[0x1E697FFA0], v4);
      v13 = v12;
      v14 = sub_1DAECFA7C();
      sub_1DAECFC6C();
      v14(v15, 0);
    }

    else
    {
      swift_beginAccess();
      v13 = *(v1 + v11);
      sub_1DADB25F8(1, (a1 & 1) == 0);
    }
  }
}

void (*sub_1DAEC7280(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x98uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 104) = v1;
  v6 = sub_1DAECFBAC();
  *(v5 + 112) = v6;
  v7 = *(v6 - 8);
  *(v5 + 120) = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v9 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_isContentTransparent;
  *(v5 + 128) = v8;
  *(v5 + 136) = v9;
  swift_beginAccess();
  *(v5 + 144) = *(v1 + v9);
  return sub_1DAEC737C;
}

void sub_1DAEC737C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 144);
  v4 = v2[13];
  if (a2)
  {
    v5 = v2[16];
    sub_1DAEC70C4(v3);
  }

  else
  {
    v6 = v2[17];
    v7 = *(v4 + v6);
    *(v4 + v6) = v3;
    if (v3 != v7)
    {
      v8 = v2[13];
      v9 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
      if (*(v8 + OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController__renderEngine))
      {
        v11 = v2[15];
        v10 = v2[16];
        v12 = v2[14];
        swift_beginAccess();
        v13 = *(v8 + v9);
        (*(v11 + 104))(v10, *MEMORY[0x1E697FFA0], v12);
        v14 = v13;
        v15 = sub_1DAECFA7C();
        sub_1DAECFC6C();
        v15(v2, 0);
      }

      else
      {
        v16 = v3;
        swift_beginAccess();
        v14 = *(v8 + v9);
        sub_1DADB25F8(1, v16 ^ 1);
      }
    }

    v5 = v2[16];
  }

  free(v5);

  free(v2);
}

uint64_t sub_1DAEC74D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__rootViewModel);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  return v3;
}

void (*sub_1DAEC7554(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__rootViewModel);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  *(a1 + 8) = *(a1 + 9);
  return sub_1DAEC75F4;
}

uint64_t sub_1DAEC761C()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_hasAnimatableContent;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1DAEC7660(char a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_hasAnimatableContent;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_1DADB4204(*(v1 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__isSnapshotting));
  sub_1DAEC7848();
}

void (*sub_1DAEC76C4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1DAEC7728;
}

void sub_1DAEC7728(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1DADB4204(*(*(a1 + 24) + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__isSnapshotting));
    sub_1DAEC7848();
  }
}

uint64_t sub_1DAEC776C()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_areAnimationsPaused;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_1DAEC77B0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1DAEC7814;
}

void sub_1DAEC7814(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_1DAEC7848();
  }
}

void sub_1DAEC7848()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_hasAnimatableContent;
  swift_beginAccess();
  if (v0[v1] == 1)
  {
    if (v0[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__cachedAnimationsDisabledPreference])
    {
      v2 = 1;
    }

    else
    {
      v3 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_areAnimationsPaused;
      swift_beginAccess();
      v2 = v0[v3];
    }

    v4 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_areAnimationsPaused;
    v5 = swift_beginAccess();
    if (v2 != v0[v4])
    {
      v0[v4] = v2;
      v6 = v0;
      sub_1DAEC7848(v5);
      v7 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
      swift_beginAccess();
      v6[v4];
      v8 = *&v6[v7];
      v9 = sub_1DAECFA7C();
      sub_1DAECFBDC();
      v9(v28, 0);

      v10 = [v6 view];
      if (v10)
      {
        v11 = v10;
        [v10 setNeedsLayout];

        if (qword_1EE00BE80 != -1)
        {
          swift_once();
        }

        v12 = sub_1DAECEDEC();
        __swift_project_value_buffer(v12, qword_1EE011C08);
        v13 = v6;
        v14 = sub_1DAECEDCC();
        v15 = sub_1DAED203C();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v28[0] = v17;
          *v16 = 136446722;
          v18 = [v13 description];
          v19 = sub_1DAED1CEC();
          v21 = v20;

          v22 = sub_1DAD6482C(v19, v21, v28);

          *(v16 + 4) = v22;
          *(v16 + 12) = 2082;
          v23 = [*&v13[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_widget] _loggingIdentifierWithMetrics_];
          v24 = sub_1DAED1CEC();
          v26 = v25;

          v27 = sub_1DAD6482C(v24, v26, v28);

          *(v16 + 14) = v27;
          *(v16 + 22) = 1026;
          *(v16 + 24) = v2;
          _os_log_impl(&dword_1DAD61000, v14, v15, "%{public}s - %{public}s - DisabledAnimations = %{BOOL,public}d", v16, 0x1Cu);
          swift_arrayDestroy();
          MEMORY[0x1E127F100](v17, -1, -1);
          MEMORY[0x1E127F100](v16, -1, -1);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1DAEC7BC4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _RootContentView();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v20 - v12);
  v14 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__rootViewModel);

  a1(v15);
  sub_1DAEC7FC8(v9, a3, v13);
  swift_getWitnessTable();
  v16 = sub_1DAED087C();
  v17 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v18 = *(v4 + v17);
  v20 = v16;
  v19 = v18;

  sub_1DAECFABC();
}

uint64_t sub_1DAEC7D60()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_isForeground;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DAEC7DA4(char a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_isForeground;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return sub_1DADC68E4(v4);
}

void (*sub_1DAEC7DFC(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_isForeground;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1DAEC7E90;
}

void sub_1DAEC7E90(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  sub_1DADC68E4(v5);

  free(v1);
}

uint64_t sub_1DAEC7F00(uint64_t a1)
{
  v2 = sub_1DAECF32C();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1DAECF47C();
}

uint64_t sub_1DAEC7FC8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  type metadata accessor for _RootContentViewModel();
  sub_1DAD730A4(&qword_1EE006B90, type metadata accessor for _RootContentViewModel);
  *a3 = sub_1DAECF21C();
  a3[1] = v6;
  v7 = type metadata accessor for _RootContentView();
  v8 = *(*(a2 - 8) + 32);
  v9 = a3 + *(v7 + 36);

  return v8(v9, a1, a2);
}

uint64_t sub_1DAEC80D8()
{
  v1 = OBJC_IVAR____TtC14WidgetRendererP33_C0CA493AD0C736F6E6331C8B29E2CCA421_RootContentViewModel__isHidden;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC14WidgetRendererP33_C0CA493AD0C736F6E6331C8B29E2CCA421_RootContentViewModel__isSnapshotting, v2);
  v4 = *(*v0 + 12);
  v5 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAEC81F0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__rootViewModel);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  *a2 = v5;
  return result;
}

void sub_1DAEC827C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_hasAnimatableContent;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_1DADB4204(*(v3 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__isSnapshotting));
  sub_1DAEC7848();
}

void sub_1DAEC8330(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    *(Strong + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__cachedAnimationsDisabledPreference) = v1;
    sub_1DAEC7848();
  }
}

void sub_1DAEC839C(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_areAnimationsPaused;
    swift_beginAccess();
    v3[v4] = v1;
    sub_1DAEC7848();
  }
}

void sub_1DAEC841C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
    v5 = Strong;
    swift_beginAccess();
    v6 = *&v5[v4];

    v7 = sub_1DAECFA7C();
    sub_1DAECFBCC();
    v7(&v8, 0);
  }
}

id LiveWidgetContentViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void LiveWidgetContentViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__isSnapshotting) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_hasAnimatableContent) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_animationsPausedCancellable) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__animationsDisabledPreferenceObserver) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__cachedAnimationsDisabledPreference) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__renderingScaleObserver) = 0;
  sub_1DAED273C();
  __break(1u);
}

uint64_t sub_1DAEC8678()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);

  v2 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_animationsPausedCancellable);

  v3 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__animationsDisabledPreferenceObserver);

  v4 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__rootViewModel);

  v5 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__renderingScaleObserver);
}

id LiveWidgetContentViewController.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__animationsDisabledPreferenceObserver;
  if (*&v0[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__animationsDisabledPreferenceObserver])
  {

    sub_1DAECEE2C();

    v2 = *&v0[v1];
  }

  *&v0[v1] = 0;

  v4.receiver = v0;
  v4.super_class = type metadata accessor for LiveWidgetContentViewController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1DAEC886C(char a1, SEL *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for LiveWidgetContentViewController();
  objc_msgSendSuper2(&v7, *a2, a1 & 1);
  v5 = *&v2[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__rootViewModel];
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1DAECEF4C();
}

uint64_t sub_1DAEC8CE8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1DAEC8E6C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t SnapshotRequest.init(key:attributes:contentIdentifier:protectionLevel:signpostID:layer:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v40 = a7;
  v42 = a4;
  v43 = a6;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08330, &unk_1DAED6540);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v37 - v17;
  v19 = sub_1DAECED2C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1;
  *a9 = a1;
  *(a9 + 1) = a2;
  v24 = v42;
  *(a9 + 2) = a3;
  *(a9 + 3) = v24;
  v41 = a8;
  v39 = type metadata accessor for SnapshotRequest();
  v25 = *(v39 + 36);
  v26 = sub_1DAED18CC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 16);
  v42 = a5;
  v28(&a9[v25], a5, v26);
  v29 = v43;
  sub_1DAEC93D4(v43, v18);
  v30 = *(v20 + 48);
  if (v30(v18, 1, v19) != 1)
  {
    sub_1DAEC9444(v29);
    (*(v27 + 8))(v42, v26);
    (*(v20 + 32))(v23, v18, v19);
LABEL_8:
    v36 = v39;
    (*(v20 + 32))(&a9[*(v39 + 40)], v23, v19);
    return (*(*(v41 - 8) + 32))(&a9[*(v36 + 44)], v40);
  }

  v37 = v23;
  sub_1DAED298C();
  v31 = v38;
  sub_1DAED229C();

  v32 = sub_1DAED296C();
  v33 = v42;
  if ((v32 & 0x8000000000000000) == 0)
  {
LABEL_5:
    v23 = v37;
    sub_1DAECED3C();
    sub_1DAEC9444(v43);
    (*(v27 + 8))(v33, v26);
    if (v30(v18, 1, v19) != 1)
    {
      sub_1DAEC9444(v18);
    }

    goto LABEL_8;
  }

  v34 = __OFSUB__(0, v32);
  result = -v32;
  if (!v34)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAEC93D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08330, &unk_1DAED6540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAEC9444(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08330, &unk_1DAED6540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAEC94AC(uint64_t (*a1)(void))
{
  v2 = *(v1 + 24);
  if (v2 && (v3 = *(v1 + 16), v4 = a1(), v5))
  {
    if (v4 == v3 && v5 == v2)
    {

      v8 = 0;
    }

    else
    {
      v7 = sub_1DAED289C();

      v8 = v7 ^ 1;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t SnapshotRequest.contentIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SnapshotRequest.contentIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SnapshotRequest.protectionLevel.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1DAED18CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SnapshotRequest.protectionLevel.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_1DAED18CC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*SnapshotRequest.protectionLevel.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t SnapshotRequest.signpostID.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1DAECED2C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SnapshotRequest.signpostID.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_1DAECED2C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*SnapshotRequest.signpostID.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t (*SnapshotRequest.layer.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 44);
  return result;
}

id SnapshotRequest.id.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t sub_1DAEC996C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1DAED18CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(sub_1DAECED2C() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v8 <= v11)
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = v8;
  }

  v13 = *(*(a3 + 16) - 8);
  v14 = *(v13 + 84);
  v15 = *(v7 + 80);
  v16 = *(v7 + 64);
  v17 = *(v9 + 80);
  v18 = *(v9 + 64);
  v19 = *(v13 + 80);
  if (v12 <= v14)
  {
    v20 = *(v13 + 84);
  }

  else
  {
    v20 = v12;
  }

  if (v20 <= 0x7FFFFFFF)
  {
    v21 = 0x7FFFFFFF;
  }

  else
  {
    v21 = v20;
  }

  if (!a2)
  {
    return 0;
  }

  v22 = v18 + v19;
  if (a2 <= v21)
  {
    goto LABEL_34;
  }

  v23 = ((v22 + ((v16 + v17 + ((v15 + 32) & ~v15)) & ~v17)) & ~v19) + *(v13 + 64);
  v24 = 8 * v23;
  if (v23 <= 3)
  {
    v27 = ((a2 - v21 + ~(-1 << v24)) >> v24) + 1;
    if (HIWORD(v27))
    {
      v25 = *(a1 + v23);
      if (!v25)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v27 > 0xFF)
    {
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v27 < 2)
    {
LABEL_34:
      if ((v20 & 0x80000000) != 0)
      {
        if (v8 == v21)
        {
          v32 = *(v7 + 48);

          return v32((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v15 + 16) & ~v15, v8, v6);
        }

        else
        {
          v33 = (((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v15 + 16) & ~v15) + v16 + v17) & ~v17;
          if (v11 == v21)
          {
            v34 = *(v10 + 48);

            return v34(v33);
          }

          else
          {
            v35 = *(v13 + 48);

            return v35((v22 + v33) & ~v19, v14);
          }
        }
      }

      else
      {
        v31 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v31) = -1;
        }

        return (v31 + 1);
      }
    }
  }

  v25 = *(a1 + v23);
  if (!*(a1 + v23))
  {
    goto LABEL_34;
  }

LABEL_21:
  v28 = (v25 - 1) << v24;
  if (v23 > 3)
  {
    v28 = 0;
  }

  if (v23)
  {
    if (v23 <= 3)
    {
      v29 = ((v22 + ((v16 + v17 + ((v15 + 32) & ~v15)) & ~v17)) & ~v19) + *(v13 + 64);
    }

    else
    {
      v29 = 4;
    }

    if (v29 > 2)
    {
      if (v29 == 3)
      {
        v30 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v30 = *a1;
      }
    }

    else if (v29 == 1)
    {
      v30 = *a1;
    }

    else
    {
      v30 = *a1;
    }
  }

  else
  {
    v30 = 0;
  }

  return v21 + (v30 | v28) + 1;
}

void sub_1DAEC9CFC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1DAED18CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(sub_1DAECED2C() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = *(a4 + 16);
  v15 = *(v14 - 8);
  if (v10 <= v13)
  {
    v16 = *(v11 + 84);
  }

  else
  {
    v16 = v10;
  }

  v17 = *(*(a4 + 16) - 8);
  v18 = *(v15 + 84);
  v19 = *(v9 + 80);
  v20 = *(v9 + 64);
  v21 = *(v11 + 80);
  v22 = *(v11 + 64);
  v23 = *(v15 + 80);
  v24 = *(v15 + 64);
  if (v16 <= v18)
  {
    v25 = *(v15 + 84);
  }

  else
  {
    v25 = v16;
  }

  if (v25 <= 0x7FFFFFFF)
  {
    v26 = 0x7FFFFFFF;
  }

  else
  {
    v26 = v25;
  }

  v27 = ((v22 + v23 + ((v20 + v21 + ((v19 + 32) & ~v19)) & ~v21)) & ~v23) + v24;
  if (a3 <= v26)
  {
    v28 = 0;
  }

  else if (v27 <= 3)
  {
    v31 = ((a3 - v26 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
    if (HIWORD(v31))
    {
      v28 = 4;
    }

    else
    {
      if (v31 < 0x100)
      {
        v32 = 1;
      }

      else
      {
        v32 = 2;
      }

      if (v31 >= 2)
      {
        v28 = v32;
      }

      else
      {
        v28 = 0;
      }
    }
  }

  else
  {
    v28 = 1;
  }

  if (v26 < a2)
  {
    v29 = ~v26 + a2;
    if (v27 < 4)
    {
      v30 = (v29 >> (8 * v27)) + 1;
      if (v27)
      {
        v33 = v29 & ~(-1 << (8 * v27));
        bzero(a1, ((v22 + v23 + ((v20 + v21 + ((v19 + 32) & ~v19)) & ~v21)) & ~v23) + v24);
        if (v27 != 3)
        {
          if (v27 == 2)
          {
            *a1 = v33;
            if (v28 > 1)
            {
LABEL_56:
              if (v28 == 2)
              {
                *&a1[v27] = v30;
              }

              else
              {
                *&a1[v27] = v30;
              }

              return;
            }
          }

          else
          {
            *a1 = v29;
            if (v28 > 1)
            {
              goto LABEL_56;
            }
          }

          goto LABEL_53;
        }

        *a1 = v33;
        a1[2] = BYTE2(v33);
      }

      if (v28 > 1)
      {
        goto LABEL_56;
      }
    }

    else
    {
      bzero(a1, ((v22 + v23 + ((v20 + v21 + ((v19 + 32) & ~v19)) & ~v21)) & ~v23) + v24);
      *a1 = v29;
      v30 = 1;
      if (v28 > 1)
      {
        goto LABEL_56;
      }
    }

LABEL_53:
    if (v28)
    {
      a1[v27] = v30;
    }

    return;
  }

  if (v28 > 1)
  {
    if (v28 != 2)
    {
      *&a1[v27] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v27] = 0;
  }

  else if (v28)
  {
    a1[v27] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v25 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v34 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v34 = (a2 - 1);
    }

    *a1 = v34;
    return;
  }

  if (v10 == v26)
  {
    v35 = *(v9 + 56);
    v36 = (((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v19 + 16) & ~v19;
    v37 = a2;
    v38 = v10;
    v14 = v8;
LABEL_61:

    v35(v36, v37, v38, v14);
    return;
  }

  v39 = (((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v19 + 16) & ~v19) + v20 + v21) & ~v21;
  if (v13 != v26)
  {
    v35 = *(v15 + 56);
    v36 = (v22 + v23 + v39) & ~v23;
    v37 = a2;
    v38 = v18;
    goto LABEL_61;
  }

  v40 = *(v12 + 56);

  v40(v39, a2);
}

unint64_t sub_1DAECA0E8()
{
  result = qword_1EE005640;
  if (!qword_1EE005640)
  {
    sub_1DAD674D4(255, &unk_1EE005648, 0x1E69943E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005640);
  }

  return result;
}

Swift::Void __swiftcall _UIHostingViewable.setNeedsSynchronousUpdate()()
{
  v0 = _UIHostingViewable.rbLayer.getter();
  if (v0)
  {
    v1 = v0;
    [v0 setNeedsSynchronousUpdate_];
  }
}

Swift::Void __swiftcall _UIHostingViewable.configureRenderBox(async:isOpaque:minAnimationInterval:)(Swift::Bool async, Swift::Bool isOpaque, Swift::Double minAnimationInterval)
{
  v68 = v4;
  v6 = v3;
  v65 = async;
  v66 = isOpaque;
  v7 = sub_1DAECFBAC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1DAECFC7C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v63 = v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v61 - v17;
  v67 = sub_1DAECFC4C();
  v19 = *(v67 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v64 = v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v61 - v23;
  v62 = objc_opt_self();
  if ([v62 isSupported])
  {
    v61[2] = v5;
    v61[1] = v6;
    sub_1DAECF9CC();
    sub_1DAECFC5C();
    (*(v13 + 8))(v18, v12);
    if ((*(v8 + 88))(v11, v7) == *MEMORY[0x1E697FF98])
    {
      (*(v8 + 96))(v11, v7);
      v25 = *v11;
      v26 = swift_projectBox();
      v27 = v19;
      v28 = v67;
      (*(v19 + 16))(v24, v26, v67);

      v29 = sub_1DAECFBFC();
      v30 = sub_1DAECFC1C();
      (*(v19 + 8))(v24, v28);
      v31 = v66;
      v32 = v29 ^ v65;
      v33 = v65;
      if (v32 & 1) != 0 || ((v30 ^ v66))
      {
        goto LABEL_15;
      }
    }

    else
    {
      (*(v8 + 8))(v11, v7);
      v28 = v67;
      v27 = v19;
      v33 = v65;
      v31 = v66;
      if (v65 || v66)
      {
LABEL_15:
        v38 = v64;
        sub_1DAECFC3C();
        sub_1DAECFC0C();
        sub_1DAECFC2C();
        if (qword_1EE00BE80 != -1)
        {
          swift_once();
        }

        v39 = sub_1DAECEDEC();
        __swift_project_value_buffer(v39, qword_1EE011C08);
        v40 = sub_1DAECEDCC();
        v41 = sub_1DAED200C();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = v33;
          v44 = v42;
          *v42 = 67240448;
          *(v42 + 4) = v43;
          *(v42 + 8) = 1026;
          *(v42 + 10) = v31;
          _os_log_impl(&dword_1DAD61000, v40, v41, "RenderBox hosting configured - async? %{BOOL,public}d, opaque: %{BOOL,public}d", v42, 0xEu);
          MEMORY[0x1E127F100](v44, -1, -1);
        }

        [v62 setAllowsRenderingInBackground_];
        v45 = [objc_opt_self() standardUserDefaults];
        v46 = sub_1DAED1CBC();
        v47 = [v45 objectForKey_];

        if (v47)
        {
          sub_1DAED238C();
          swift_unknownObjectRelease();
        }

        else
        {
          v74 = 0u;
          v75 = 0u;
        }

        aBlock = v74;
        v71 = v75;
        if (*(&v75 + 1))
        {
          sub_1DAD674D4(0, &qword_1EE005470, 0x1E696AD98);
          if (swift_dynamicCast())
          {
            v48 = v69;
            [v69 intValue];

            LOBYTE(aBlock) = 0;
            sub_1DAECFBEC();
          }
        }

        else
        {
          sub_1DAE2695C(&aBlock);
        }

        sub_1DAECFBBC();
        sub_1DAECF9DC();
        v49 = sub_1DAECF9BC();
        sub_1DAECFBDC();
        v49(&aBlock, 0);
        if (sub_1DAECF9AC())
        {
          objc_opt_self();
          v50 = swift_dynamicCastObjCClass();
          if (v50)
          {
            v51 = v50;
            [v50 setNeedsSynchronousUpdate_];
            [v51 setNeedsDisplay];
            v52 = [v51 statisticsHandler];
            if (v52)
            {
              v53 = v52;
              swift_unknownObjectRelease();
              _Block_release(v53);
            }

            else
            {
              v57 = sub_1DAECEDCC();
              v58 = sub_1DAED200C();
              if (os_log_type_enabled(v57, v58))
              {
                v59 = swift_slowAlloc();
                *v59 = 0;
                _os_log_impl(&dword_1DAD61000, v57, v58, "Attaching layer statistics handler", v59, 2u);
                MEMORY[0x1E127F100](v59, -1, -1);
              }

              [v51 resetStatistics:11 alpha:0.0];
              v72 = nullsub_1;
              v73 = 0;
              *&aBlock = MEMORY[0x1E69E9820];
              *(&aBlock + 1) = 1107296256;
              *&v71 = sub_1DADB7C8C;
              *(&v71 + 1) = &block_descriptor_22;
              v60 = _Block_copy(&aBlock);
              [v51 setStatisticsHandler_];
              _Block_release(v60);
              swift_unknownObjectRelease();
            }

LABEL_34:
            (*(v27 + 8))(v38, v28);
            return;
          }

          swift_unknownObjectRelease();
        }

        v54 = sub_1DAECEDCC();
        v55 = sub_1DAED203C();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&dword_1DAD61000, v54, v55, "RenderBox unable to attach layer statistics", v56, 2u);
          MEMORY[0x1E127F100](v56, -1, -1);
        }

        goto LABEL_34;
      }
    }
  }

  else
  {
    if (qword_1EE00BE80 != -1)
    {
      swift_once();
    }

    v34 = sub_1DAECEDEC();
    __swift_project_value_buffer(v34, qword_1EE011C08);
    v68 = sub_1DAECEDCC();
    v35 = sub_1DAED203C();
    if (os_log_type_enabled(v68, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 67240192;
      _os_log_impl(&dword_1DAD61000, v68, v35, "RenderBox hosting disabled (isSupported=%{BOOL,public}d)", v36, 8u);
      MEMORY[0x1E127F100](v36, -1, -1);
    }

    v37 = v68;
  }
}

uint64_t _UIHostingViewable.rbLayer.getter()
{
  result = sub_1DAECF9AC();
  if (result)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DAECAB50()
{
  v0 = sub_1DAECFC7C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1DAECF9CC();
  sub_1DAECFBDC();
  (*(v1 + 16))(v4, v7, v0);
  sub_1DAECF9DC();
  return (*(v1 + 8))(v7, v0);
}

void __swiftcall _UIHostingViewable.consumeRenderStatistics()(WidgetRenderer::WidgetContentRenderStatistics_optional *__return_ptr retstr)
{
  if (!sub_1DAECF9AC())
  {
    goto LABEL_18;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 statistics];
    type metadata accessor for RBDrawableStatisticsKey(0);
    sub_1DAD8E95C(&qword_1EE005568, type metadata accessor for RBDrawableStatisticsKey);
    v5 = sub_1DAED1C1C();

    if (!*(v5 + 16))
    {
      goto LABEL_16;
    }

    v6 = sub_1DAECB138(*MEMORY[0x1E69C7178]);
    if ((v7 & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_1DAD642F8(*(v5 + 56) + 32 * v6, v21);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_17;
    }

    v8 = [v3 statistics];
    v9 = sub_1DAED1C1C();

    if (!*(v9 + 16))
    {
      goto LABEL_16;
    }

    v10 = sub_1DAECB138(*MEMORY[0x1E69C7180]);
    if ((v11 & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_1DAD642F8(*(v9 + 56) + 32 * v10, v21);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_17;
    }

    v12 = [v3 statistics];
    v13 = sub_1DAED1C1C();

    if (!*(v13 + 16) || (v14 = sub_1DAECB138(*MEMORY[0x1E69C7170]), (v15 & 1) == 0))
    {
LABEL_16:

      goto LABEL_17;
    }

    sub_1DAD642F8(*(v13 + 56) + 32 * v14, v21);

    if (swift_dynamicCast())
    {
      v16 = [v3 statistics];
      v17 = sub_1DAED1C1C();

      if (*(v17 + 16))
      {
        v18 = sub_1DAECB138(*MEMORY[0x1E69C7168]);
        if (v19)
        {
          sub_1DAD642F8(*(v17 + 56) + 32 * v18, v21);

          if (swift_dynamicCast())
          {
            [v3 resetStatistics:11 alpha:0.0];
            swift_unknownObjectRelease();
            retstr->value.totalRenderTime = v20;
            retstr->value.totalSubmitTime = v20;
            *&retstr->value.totalFramesRendered = v20;
            *&retstr->value.totalFramesSubmitted = v20;
            retstr->is_nil = 0;
            return;
          }

          goto LABEL_17;
        }
      }

      goto LABEL_16;
    }
  }

LABEL_17:
  swift_unknownObjectRelease();
LABEL_18:
  *&retstr->value.totalRenderTime = 0u;
  *&retstr->value.totalFramesRendered = 0u;
  retstr->is_nil = 1;
}

uint64_t sub_1DAECB034@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_1DAECB064(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

unint64_t sub_1DAECB0A8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  sub_1DAE95128(&qword_1EE00AB58);
  v5 = sub_1DAED1C5C();

  return sub_1DAECB414(a1, v5);
}

unint64_t sub_1DAECB138(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1DAED1CEC();
  sub_1DAED294C();
  sub_1DAED1D9C();
  v4 = sub_1DAED297C();

  return sub_1DAECB6D4(a1, v4);
}

unint64_t sub_1DAECB1C8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1DAED294C();
  type metadata accessor for CFString(0);
  sub_1DAD8E95C(&qword_1ECC0AB70, type metadata accessor for CFString);
  sub_1DAECE3FC();
  v4 = sub_1DAED297C();

  return sub_1DAECB5C8(a1, v4);
}

unint64_t sub_1DAECB27C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1DAECFB8C();
  v5 = MEMORY[0x1E697FD80];
  sub_1DAD8E95C(&qword_1EE005910, MEMORY[0x1E697FD80]);
  v6 = sub_1DAED1C5C();
  return sub_1DAD80410(a1, v6, MEMORY[0x1E697FD80], &qword_1EE005908, v5, MEMORY[0x1E697FD90]);
}

unint64_t sub_1DAECB350(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1DAED294C();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  sub_1DAED1D9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  sub_1DAE95128(&qword_1EE00AB58);
  sub_1DAED1C6C();
  v6 = sub_1DAED297C();

  return sub_1DAECB7D8(a1, v6);
}

unint64_t sub_1DAECB414(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
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
      sub_1DAE95128(&qword_1EE0057B0);
      v16 = sub_1DAED1CAC();
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

unint64_t sub_1DAECB5C8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1DAD8E95C(&qword_1ECC0AB70, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1DAECE3EC();

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

unint64_t sub_1DAECB6D4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1DAED1CEC();
      v9 = v8;
      if (v7 == sub_1DAED1CEC() && v9 == v10)
      {
        break;
      }

      v12 = sub_1DAED289C();

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

unint64_t sub_1DAECB7D8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for ActivityRendererSessionKey();
    sub_1DAD8E95C(&qword_1EE00BB18, type metadata accessor for ActivityRendererSessionKey);
    do
    {
      v7 = *(*(v2 + 48) + 8 * v4);
      if (sub_1DAED1CAC())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1DAECB8D8()
{
  BSDispatchQueueAssertMain();
  v1 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = sub_1DAECD9DC();
  v4 = [v2 _timelinesForDateInterval_];

  sub_1DAECBEF0();
  v5 = sub_1DAED1E7C();

  return v5;
}

uint64_t sub_1DAECB988()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  sub_1DAECFAAC();

  return v4;
}

void sub_1DAECB9E4()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v2 = *(v0 + v1);

  sub_1DAECFABC();
}

void (*sub_1DAECBA5C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  sub_1DAECFAAC();

  *(v4 + 24) = *(v4 + 32);
  return sub_1DAECBB08;
}

void sub_1DAECBB08(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 24);
  v4 = *(*(*a1 + 40) + *(*a1 + 48));
  *(*a1 + 32) = *v3;
  if (a2)
  {
    swift_retain_n();
    v5 = v4;
    sub_1DAECFABC();

    v6 = *v3;
  }

  else
  {
    v7 = v4;

    sub_1DAECFABC();
  }

  free(v2);
}

uint64_t sub_1DAECBBC4()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  type metadata accessor for SecureHostingController();
  sub_1DAECD780(qword_1EE00AFA0, type metadata accessor for SecureHostingController);
  v3 = v2;
  v4 = sub_1DAECF9AC();

  if (v4)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

void *sub_1DAECBCAC()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShape;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1DAECBCF8(void *a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShape;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_1DAECCA24(v4);
}

void (*sub_1DAECBD64(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShape;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1DAECBE00;
}

void sub_1DAECBE00(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v8 = *(v7 + v6);
  *(v7 + v6) = *v5;
  v9 = v4;
  v10 = v9;
  v11 = v3[4];
  if (a2)
  {
    v12 = v9;
    sub_1DAECCA24(v8);

    v8 = *v5;
  }

  else
  {
    sub_1DAECCA24(v8);
  }

  free(v3);
}

id sub_1DAECBE9C()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

unint64_t sub_1DAECBEF0()
{
  result = qword_1ECC09EA0;
  if (!qword_1ECC09EA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECC09EA0);
  }

  return result;
}

void sub_1DAECBF3C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1DAECBFF4()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  type metadata accessor for SecureHostingController();
  sub_1DAECD780(qword_1EE00AFA0, type metadata accessor for SecureHostingController);
  v3 = v2;
  if (!sub_1DAECF9AC())
  {
    goto LABEL_4;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    [v4 setNeedsSynchronousUpdate_];
    swift_unknownObjectRelease();
LABEL_4:

    return;
  }

  swift_unknownObjectRelease();
}

void sub_1DAECC0E8(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  sub_1DAECC280(a1);
}

uint64_t sub_1DAECC14C()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_isContentTransparent;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DAECC190(char a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_isContentTransparent;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1DAECC280@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for SecureHostingController();
  sub_1DAECD780(qword_1EE00AFA0, type metadata accessor for SecureHostingController);
  if (!sub_1DAECF9AC())
  {
    goto LABEL_18;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 statistics];
    type metadata accessor for RBDrawableStatisticsKey(0);
    sub_1DAECD780(&qword_1EE005568, type metadata accessor for RBDrawableStatisticsKey);
    v5 = sub_1DAED1C1C();

    if (!*(v5 + 16))
    {
      goto LABEL_16;
    }

    v6 = sub_1DAECB8D4(*MEMORY[0x1E69C7178]);
    if ((v7 & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_1DAD642F8(*(v5 + 56) + 32 * v6, v22);

    if (!swift_dynamicCast())
    {
      goto LABEL_17;
    }

    v8 = [v3 statistics];
    v9 = sub_1DAED1C1C();

    if (!*(v9 + 16))
    {
      goto LABEL_16;
    }

    v10 = sub_1DAECB8D4(*MEMORY[0x1E69C7180]);
    if ((v11 & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_1DAD642F8(*(v9 + 56) + 32 * v10, v22);

    if (!swift_dynamicCast())
    {
      goto LABEL_17;
    }

    v12 = [v3 statistics];
    v13 = sub_1DAED1C1C();

    if (!*(v13 + 16) || (v14 = sub_1DAECB8D4(*MEMORY[0x1E69C7170]), (v15 & 1) == 0))
    {
LABEL_16:

      goto LABEL_17;
    }

    sub_1DAD642F8(*(v13 + 56) + 32 * v14, v22);

    if (swift_dynamicCast())
    {
      v16 = [v3 statistics];
      v17 = sub_1DAED1C1C();

      if (*(v17 + 16))
      {
        v18 = sub_1DAECB8D4(*MEMORY[0x1E69C7168]);
        if (v19)
        {
          sub_1DAD642F8(*(v17 + 56) + 32 * v18, v22);

          if (swift_dynamicCast())
          {
            [v3 resetStatistics:11 alpha:0.0];
            swift_unknownObjectRelease();
            *a1 = v21;
            *(a1 + 8) = v21;
            *(a1 + 16) = v21;
            *(a1 + 24) = v21;
            *(a1 + 32) = 0;
            return result;
          }

          goto LABEL_17;
        }
      }

      goto LABEL_16;
    }
  }

LABEL_17:
  swift_unknownObjectRelease();
LABEL_18:
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

void *SecureHostingController.__allocating_init(coder:rootView:)()
{
  v1 = objc_allocWithZone(v0);

  v2 = sub_1DAECFA8C();
  v3 = v2;

  if (v2)
  {
  }

  return v2;
}

void *SecureHostingController.init(coder:rootView:)()
{

  v0 = sub_1DAECFA8C();
  v1 = v0;

  if (v0)
  {
  }

  return v0;
}

id SecureHostingController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SecureHostingController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1DAECC780(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for SecureHostingController();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_1DAECC818(uint64_t *a1)
{
  v1 = *a1;
  v2 = objc_allocWithZone(type metadata accessor for SecureHostingController());
  return sub_1DAECFA9C();
}

void *sub_1DAECC85C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = objc_allocWithZone(type metadata accessor for SecureHostingController());

  v4 = sub_1DAECFA8C();
  v5 = v4;

  if (v4)
  {
  }

  return v4;
}

void sub_1DAECC8D8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  sub_1DAECFAAC();

  *a2 = v6;
}

void sub_1DAECC948(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);

  sub_1DAECFABC();
}

void sub_1DAECC9BC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShape;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
  sub_1DAECCA24(v5);
}

void sub_1DAECCA24(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShape;
  swift_beginAccess();
  v5 = *&v2[v4];
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

LABEL_6:
    if (v2[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController__renderEngine] != 1)
    {
      return;
    }

    v8 = *&v2[v4];
    if (v8)
    {
      v9 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShapeMaskLayer;
      if (*&v2[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShapeMaskLayer])
      {
        v10 = v8;
LABEL_15:
        sub_1DAECE1DC();
        sub_1DAECE1AC();
        v36 = sub_1DAECE02C();

        if ((v36 & 1) == 0)
        {
          goto LABEL_20;
        }

        v37 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShapeDebugOverlay;
        if (*&v2[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShapeDebugOverlay])
        {
          goto LABEL_20;
        }

        v38 = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
        v39 = [v2 view];
        if (v39)
        {
          v40 = v39;
          v41 = [v39 layer];

          [v41 bounds];
          v43 = v42;
          v45 = v44;
          v47 = v46;
          v49 = v48;

          [v38 setFrame_];
          v50 = objc_opt_self();
          v51 = [v50 redColor];
          v52 = [v51 CGColor];

          [v38 setStrokeColor_];
          [v38 setLineWidth_];
          v53 = [v50 magentaColor];
          v54 = [v53 colorWithAlphaComponent_];

          v55 = [v54 CGColor];
          [v38 setFillColor_];

          v56 = [v2 view];
          if (v56)
          {
            v57 = v56;
            v58 = [v56 layer];

            [v58 addSublayer_];
            v59 = *&v2[v37];
            *&v2[v37] = v38;

LABEL_20:
            v60 = *&v2[v9];
            if (v60)
            {
              [v60 setPath_];
            }

            v61 = *&v2[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShapeDebugOverlay];
            if (v61)
            {
              v62 = v61;
              [v62 setPath_];
            }

            goto LABEL_24;
          }

LABEL_30:
          __break(1u);
          return;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v15 = objc_allocWithZone(MEMORY[0x1E69794A0]);
      v16 = v8;
      v17 = [v15 init];
      v18 = [v2 view];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 layer];

        [v20 bounds];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;

        [v17 setFrame_];
        v29 = [objc_opt_self() whiteColor];
        v30 = [v29 CGColor];

        [v17 setFillColor_];
        v31 = *&v2[v9];
        *&v2[v9] = v17;
        v32 = v17;

        v33 = [v2 view];
        if (v33)
        {
          v34 = v33;
          v35 = [v33 layer];

          [v35 setMask_];
          goto LABEL_15;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    else
    {
      v11 = [v2 view];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 layer];

        [v13 setMask_];
        v14 = *&v2[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShapeMaskLayer];
        *&v2[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShapeMaskLayer] = 0;

        v8 = *&v2[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShapeDebugOverlay];
        *&v2[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShapeDebugOverlay] = 0;
LABEL_24:

        return;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_28;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for CGPath(0);
  sub_1DAECD780(&qword_1ECC0ABB0, type metadata accessor for CGPath);
  v6 = v5;
  v7 = sub_1DAECE3EC();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }
}

void sub_1DAECCFB4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id BaseWidgetContentViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void BaseWidgetContentViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShape) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_isContentTransparent) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShapeMaskLayer) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShapeDebugOverlay) = 0;
  sub_1DAED273C();
  __break(1u);
}

id BaseWidgetContentViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1DAED1CBC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_1DAECD260(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1DAECD304(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  sub_1DAECC280(a1);
}

unint64_t sub_1DAECD72C()
{
  result = qword_1ECC0ABA8;
  if (!qword_1ECC0ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0ABA8);
  }

  return result;
}

uint64_t sub_1DAECD780(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t RendererServices.hashValue.getter()
{
  v1 = *v0;
  sub_1DAED294C();
  MEMORY[0x1E127E5D0](v1);
  return sub_1DAED297C();
}

unint64_t sub_1DAECD874()
{
  result = qword_1ECC0ABB8;
  if (!qword_1ECC0ABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0ABB8);
  }

  return result;
}

uint64_t sub_1DAECD96C()
{
  MEMORY[0x1E127F100](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}
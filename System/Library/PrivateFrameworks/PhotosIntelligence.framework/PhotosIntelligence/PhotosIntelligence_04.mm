uint64_t sub_1C6FBF7E8(char *a1, char *a2, uint64_t a3, char *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v9 = v8;
  v10 = a2;
  v11 = a1;
  v12 = (a2 - a1) / 16;
  v14 = (a3 - a2) / 16;
  v58 = a7;
  if (v12 >= v14)
  {
    sub_1C6F9EE08(a2, (a3 - a2) / 16, a4);
    v15 = a4;
    v49 = &a4[16 * v14];
    v27 = a3;
LABEL_15:
    v28 = 0;
    v47 = v10 - 2;
    for (__dst = v10; ; v10 = __dst)
    {
      v16 = &v49[v28];
      if (&v49[v28] <= v15 || v10 <= v11)
      {
LABEL_29:
        v40 = (v16 - v15) / 16;
        if (v10 != v15 || v10 >= &v15[2 * v40])
        {
          memmove(v10, v15, 16 * v40);
        }

        return 1;
      }

      v30 = v9;
      v31 = v27;
      v32 = *(v16 - 2);
      v33 = *(v16 - 1);
      v34 = v16 - 16;
      v56 = v32;
      v57 = v33;
      v35 = *(v10 - 1);
      v54 = *(v10 - 2);
      v55 = v35;
      sub_1C75504FC();
      sub_1C75504FC();
      v36 = sub_1C6FBBCB0(&v56, &v54, a5, a6, v58, a8);
      if (v30)
      {
        break;
      }

      v37 = v36;

      v38 = (v31 + v28);
      v39 = (v31 + v28 - 16);
      if (v37)
      {
        v49 += v28;
        v27 = v31 + v28 - 16;
        v15 = a4;
        v9 = 0;
        v10 = v47;
        if (v38 != __dst)
        {
          *v39 = *v47;
          v10 = v47;
          v27 = v39;
        }

        goto LABEL_15;
      }

      v27 = v31;
      v26 = &v49[v28] == (v31 + v28);
      v15 = a4;
      v9 = 0;
      if (!v26)
      {
        *v39 = *v34;
      }

      v28 -= 16;
    }

    v44 = (v49 - a4 + v28) / 16;
    v45 = __dst < a4 || __dst >= &a4[16 * v44];
    if (v45 || __dst != a4)
    {
      memmove(__dst, a4, 16 * v44);
    }
  }

  else
  {
    sub_1C6F9EE08(a1, (a2 - a1) / 16, a4);
    v15 = a4;
    v16 = &a4[16 * v12];
    v17 = a3;
    while (1)
    {
      if (v15 >= v16 || v10 >= v17)
      {
        v10 = v11;
        goto LABEL_29;
      }

      v19 = v16;
      v20 = v10[1];
      v56 = *v10;
      v57 = v20;
      v21 = v15[1];
      v22 = v15;
      v54 = *v15;
      v55 = v21;
      sub_1C75504FC();
      sub_1C75504FC();
      v23 = sub_1C6FBBCB0(&v56, &v54, a5, a6, v58, a8);
      if (v8)
      {
        break;
      }

      v24 = v23;

      if (v24)
      {
        v25 = v10;
        v26 = v11 == v10;
        v10 += 2;
        v15 = v22;
      }

      else
      {
        v25 = v22;
        v15 = v22 + 2;
        v26 = v11 == v22;
      }

      v17 = a3;
      if (!v26)
      {
        *v11 = *v25;
      }

      v11 += 2;
      v16 = v19;
    }

    v42 = (v19 - v22) / 16;
    v43 = v11 < v22 || v11 >= &v22[2 * v42];
    if (v43 || v11 != v22)
    {
      memmove(v11, v22, 16 * v42);
    }
  }

  return 1;
}

uint64_t sub_1C6FBFB5C(char *a1, char *a2, unint64_t a3, char *a4, void *a5, uint64_t a6)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = a1;
  v11 = (a2 - a1) / 16;
  v12 = (a3 - a2) / 16;
  v52 = a6;
  if (v11 >= v12)
  {
    sub_1C6F9EE08(a2, (a3 - a2) / 16, a4);
    v46 = &v7[2 * v12];
    __src = v7;
LABEL_15:
    v23 = 0;
    v43 = v9 - 2;
    while (1)
    {
      i = &v46[v23 / 8];
      if (&v46[v23 / 8] <= v7 || v9 <= a1)
      {
LABEL_29:
        v33 = (i - v7) / 16;
        if (v9 < v7 || v9 >= &v7[2 * v33])
        {
          memmove(v9, v7, 16 * v33);
          goto LABEL_55;
        }

        if (v9 != v7)
        {
          v35 = 16 * v33;
          v36 = v9;
          goto LABEL_51;
        }

        goto LABEL_55;
      }

      v25 = v8;
      v26 = *(i - 2);
      v28 = *(i - 1);
      v27 = i - 2;
      v50 = v26;
      v51 = v28;
      v29 = *(v9 - 1);
      v48 = *(v9 - 2);
      v49 = v29;
      sub_1C75504FC();
      sub_1C75504FC();
      v30 = sub_1C6FBBB34(&v50, &v48, a5, v52);
      if (v6)
      {
        break;
      }

      v31 = v30;

      v32 = (v25 + v23 - 16);
      if (v31)
      {
        v46 = (v46 + v23);
        v8 = v25 + v23 - 16;
        v22 = v25 + v23 == v9;
        v7 = __src;
        v9 -= 2;
        if (!v22)
        {
          *v32 = *v43;
          v9 = v43;
          v8 = v32;
        }

        goto LABEL_15;
      }

      v8 = v25;
      if (&v46[v23 / 8] != (v25 + v23))
      {
        *v32 = *v27;
      }

      v23 -= 16;
      v7 = __src;
    }

    v39 = __src;
    v40 = (v46 - __src + v23) / 16;
    if (v9 < __src || v9 >= &__src[2 * v40])
    {
      v35 = 16 * v40;
      v36 = v9;
      goto LABEL_54;
    }

    if (v9 != __src)
    {
      v35 = 16 * v40;
      v36 = v9;
      goto LABEL_54;
    }
  }

  else
  {
    sub_1C6F9EE08(a1, (a2 - a1) / 16, a4);
    for (i = &v7[2 * v11]; ; i = v15)
    {
      if (v7 >= i || v9 >= v8)
      {
        v9 = v10;
        goto LABEL_29;
      }

      v15 = i;
      v16 = v8;
      v17 = v9[1];
      v50 = *v9;
      v51 = v17;
      v18 = v7[1];
      v48 = *v7;
      v49 = v18;
      sub_1C75504FC();
      sub_1C75504FC();
      v19 = sub_1C6FBBB34(&v50, &v48, a5, v52);
      if (v6)
      {
        break;
      }

      v20 = v19;

      if (v20)
      {
        v21 = v9;
        v22 = v10 == v9;
        v9 += 2;
      }

      else
      {
        v21 = v7;
        v22 = v10 == v7;
        v7 += 2;
      }

      v8 = v16;
      if (!v22)
      {
        *v10 = *v21;
      }

      v10 += 2;
    }

    v37 = (v15 - v7) / 16;
    if (v10 < v7 || v10 >= &v7[2 * v37])
    {
      v35 = 16 * v37;
      v36 = v10;
      v39 = v7;
LABEL_54:
      memmove(v36, v39, v35);
      goto LABEL_55;
    }

    if (v10 != v7)
    {
      v35 = 16 * v37;
      v36 = v10;
LABEL_51:
      v39 = v7;
      goto LABEL_54;
    }
  }

LABEL_55:

  return 1;
}

uint64_t sub_1C6FBFEB4(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 128;
  v9 = (a3 - a2) / 128;
  if (v8 < v9)
  {
    sub_1C741E300(a1, (a2 - a1) / 128, a4);
    v10 = (v4 + (v8 << 7));
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_73;
      }

      memcpy(__dst, v6, sizeof(__dst));
      memcpy(v49, v4, 0x80uLL);
      if (__dst[14] & 1) != 0 || (v49[14])
      {
        sub_1C6FBC6B8();
        swift_allocError();
        *v33 = 2;
        swift_willThrow();
        v34 = &v10[-v4] / 128;
        v35 = v7 < v4 || v7 >= v4 + (v34 << 7);
        if (v35 || v7 != v4)
        {
          v36 = v34 << 7;
          v37 = v7;
          goto LABEL_81;
        }

        return 1;
      }

      v12 = __dst[13];
      v13 = v49[13];
      sub_1C6FB7BB8(__dst, v47);
      sub_1C6FB7BB8(v49, v47);
      sub_1C6FBC70C(v12);
      sub_1C6FBC70C(v13);
      v14 = [v12 count];
      v15 = [v13 count];
      if (v14 == v15)
      {
        v16 = v49[0] == __dst[0] && v49[1] == __dst[1];
        if (v16)
        {
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C6FBC718(v13);
          sub_1C6FBC718(v12);

          sub_1C6FBC664(v49);
          sub_1C6FBC664(__dst);
LABEL_21:
          v18 = v4;
          v16 = v7 == v4;
          v4 += 128;
          if (v16)
          {
            goto LABEL_23;
          }

LABEL_22:
          memmove(v7, v18, 0x80uLL);
          goto LABEL_23;
        }

        LODWORD(v50) = sub_1C7551DBC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C6FBC718(v13);
        sub_1C6FBC718(v12);

        sub_1C6FBC664(v49);
        sub_1C6FBC664(__dst);
        if ((v50 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v17 = v15;
        sub_1C6FBC718(v13);
        sub_1C6FBC718(v12);
        sub_1C6FBC664(v49);
        sub_1C6FBC664(__dst);
        if (v17 >= v14)
        {
          goto LABEL_21;
        }
      }

      v18 = v6;
      v16 = v7 == v6;
      v6 += 128;
      if (!v16)
      {
        goto LABEL_22;
      }

LABEL_23:
      v7 += 128;
    }
  }

  sub_1C741E300(a2, (a3 - a2) / 128, a4);
  v10 = (v4 + (v9 << 7));
  v19 = -v4;
  v44 = v4;
  v43 = -v4;
LABEL_25:
  __src = v6 - 128;
  v20 = &v10[v19];
  v21 = v5;
  while (1)
  {
    if (v10 <= v4 || v6 <= a1)
    {
LABEL_73:
      v39 = &v10[-v4] / 128;
      if (v6 < v4 || v6 >= v4 + (v39 << 7))
      {
        memmove(v6, v4, v39 << 7);
        return 1;
      }

      if (v6 == v4)
      {
        return 1;
      }

      goto LABEL_80;
    }

    memcpy(__dst, v10 - 128, sizeof(__dst));
    memcpy(v49, __src, 0x80uLL);
    if (__dst[14] & 1) != 0 || (v49[14])
    {
      break;
    }

    v50 = v20;
    v23 = __dst[13];
    v24 = v49[13];
    sub_1C6FB7BB8(__dst, v47);
    sub_1C6FB7BB8(v49, v47);
    sub_1C6FBC70C(v23);
    sub_1C6FBC70C(v24);
    v25 = [v23 count];
    v26 = [v24 count];
    if (v25 == v26)
    {
      if (v49[0] == __dst[0] && v49[1] == __dst[1])
      {
        v28 = 0;
      }

      else
      {
        v28 = sub_1C7551DBC();
      }

      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C6FBC718(v24);
      sub_1C6FBC718(v23);

      sub_1C6FBC664(v49);
      sub_1C6FBC664(__dst);
      v5 = v21 - 128;
      v4 = v44;
      if (v28)
      {
LABEL_52:
        v32 = v21 < v6 || v5 >= v6;
        if (!v32 && v21 == v6)
        {
          v6 -= 128;
        }

        else
        {
          v6 -= 128;
          memmove(v5, __src, 0x80uLL);
        }

        v19 = v43;
        goto LABEL_25;
      }
    }

    else
    {
      v29 = v26;
      sub_1C6FBC718(v24);
      sub_1C6FBC718(v23);
      sub_1C6FBC664(v49);
      sub_1C6FBC664(__dst);
      v5 = v21 - 128;
      if (v29 < v25)
      {
        goto LABEL_52;
      }
    }

    if (v21 < v10 || v5 >= v10)
    {
      memmove(v5, v10 - 128, 0x80uLL);
      v31 = v50;
    }

    else
    {
      v31 = v50;
      if (v10 != v21)
      {
        memmove(v5, v10 - 128, 0x80uLL);
      }
    }

    v20 = v31 - 128;
    v21 = v5;
    v10 -= 128;
  }

  sub_1C6FBC6B8();
  swift_allocError();
  *v38 = 2;
  swift_willThrow();
  v39 = v20 / 128;
  v40 = v6 < v4 || v6 >= v4 + ((v20 / 128) << 7);
  if (!v40 && v6 == v4)
  {
    return 1;
  }

LABEL_80:
  v36 = v39 << 7;
  v37 = v6;
LABEL_81:
  memmove(v37, v4, v36);
  return 1;
}

uint64_t sub_1C6FC0464(uint64_t result)
{
  v1 = *(result + 112) & 1 | 0x8000000000000000;
  *(result + 32) &= 3uLL;
  *(result + 112) = v1;
  return result;
}

uint64_t sub_1C6FC0484(uint64_t result)
{
  v1 = *(result + 112) & 1;
  *(result + 32) &= 3uLL;
  *(result + 112) = v1;
  return result;
}

uint64_t sub_1C6FC04A0(uint64_t result)
{
  v1 = *(result + 112) & 1 | 0x4000000000000000;
  *(result + 32) &= 3uLL;
  *(result + 112) = v1;
  return result;
}

unint64_t sub_1C6FC04C0()
{
  result = qword_1EDD06A58;
  if (!qword_1EDD06A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC215150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06A58);
  }

  return result;
}

uint64_t sub_1C6FC0524(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215148);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6FC0594(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215148);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1C6FC0604(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1C6FC0678(void *a1)
{
  v2 = sub_1C754DC0C();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 count];
  v8 = v7;
  if (v7)
  {
    if (v7 < 1)
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v9[2] = v8;
      v9[3] = 2 * ((v10 - 32) / 32);
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9[3];

  result = sub_1C755114C();
  if (v8 < 0)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return result;
  }

  v13 = v11 >> 1;
  v14 = v9 + 4;
  v29 = v3;
  if (v8)
  {
    v13 -= v8;
    sub_1C6FC0A40(&qword_1EDD0CBE0, MEMORY[0x1E6968EB0]);
    do
    {
      result = sub_1C755150C();
      if (!v33)
      {
        goto LABEL_38;
      }

      sub_1C6F9ED18(&v32, v14);
      v14 += 2;
    }

    while (--v8);
  }

  sub_1C6FC0A40(&qword_1EDD0CBE0, MEMORY[0x1E6968EB0]);
  while (1)
  {
    sub_1C755150C();
    if (!v31)
    {
      break;
    }

    result = sub_1C6F9ED18(&v30, &v32);
    if (!v13)
    {
      v15 = v9[3];
      if (((v15 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_35;
      }

      v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
      if (v16 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v16;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0);
      v18 = swift_allocObject();
      v19 = (_swift_stdlib_malloc_size(v18) - 32) / 32;
      v18[2] = v17;
      v18[3] = 2 * v19;
      v20 = (v18 + 4);
      v21 = v9[3];
      v22 = v21 >> 1;
      if (v9[2])
      {
        if (v18 != v9 || v20 >= &v9[4 * v22 + 4])
        {
          memmove(v18 + 4, v9 + 4, 32 * v22);
        }

        v9[2] = 0;
      }

      v14 = (v20 + 32 * v22);
      v13 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - (v21 >> 1);

      v9 = v18;
    }

    v24 = __OFSUB__(v13--, 1);
    if (v24)
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    sub_1C6F9ED18(&v32, v14);
    v14 += 2;
  }

  (*(v29 + 8))(v6, v2);
  result = sub_1C6FB5FC8(&v30, &qword_1EC219770);
  v25 = v9[3];
  if (v25 >= 2)
  {
    v26 = v25 >> 1;
    v24 = __OFSUB__(v26, v13);
    v27 = v26 - v13;
    if (v24)
    {
      goto LABEL_37;
    }

    v9[2] = v27;
  }

  return v9;
}

uint64_t sub_1C6FC09E4(uint64_t a1)
{
  v2 = type metadata accessor for PhotoAnalysisPhotoLibraryService(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6FC0A40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_21_7()
{

  return sub_1C6FB7BB8(v0 + 328, v0 + 584);
}

uint64_t OUTLINED_FUNCTION_24_10()
{
  sub_1C6FBC718(v2);
  *(v1 + 104) = v0;
  *(v1 + 112) = 0;
}

uint64_t type metadata accessor for AssetCurationDiagnosticsGenerator()
{
  result = qword_1EDD0D2F0;
  if (!qword_1EDD0D2F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C6FC0B5C()
{
  sub_1C6FC0BE0();
  if (v0 <= 0x3F)
  {
    sub_1C754FF1C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6FC0BE0()
{
  if (!qword_1EDD0D300)
  {
    type metadata accessor for StoryGenerationDiagnosticContext();
    v0 = sub_1C755149C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD0D300);
    }
  }
}

uint64_t sub_1C6FC0C38(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001C75975B0 == a2;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F707365526D6C6CLL && a2 == 0xEB0000000065736ELL;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x80000001C75975D0 == a2;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001FLL && 0x80000001C75975F0 == a2;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000010 && 0x80000001C7597610 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C7551DBC();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C6FC0DE4(char a1)
{
  result = 0x6F707365526D6C6CLL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD00000000000001FLL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_1C6FC0EA4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151C0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - v6;
  memcpy(__dst, v1, 0xA8uLL);
  v8 = v1[21];
  v14 = v1[22];
  v15 = v8;
  v9 = v1[23];
  v12[0] = v1[24];
  v12[1] = v1[25];
  v13 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6FC1764(__dst, v18);
  sub_1C6FC17C0();
  sub_1C755200C();
  memcpy(v18, __dst, sizeof(v18));
  v21 = 0;
  sub_1C6FC1814();
  sub_1C7551D2C();
  if (v2)
  {
    memcpy(v17, v18, sizeof(v17));
    sub_1C6FC1868(v17);
  }

  else
  {
    v10 = v14;
    memcpy(v17, v18, sizeof(v17));
    sub_1C6FC1868(v17);
    v16 = v15;
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C6FC18BC();
    OUTLINED_FUNCTION_0_1();
    v16 = v10;
    v20 = 2;
    OUTLINED_FUNCTION_0_1();
    v16 = v13;
    v20 = 3;
    OUTLINED_FUNCTION_0_1();
    LOBYTE(v16) = 4;
    sub_1C7551C7C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1C6FC1114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6FC0C38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6FC113C(uint64_t a1)
{
  v2 = sub_1C6FC17C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FC1178(uint64_t a1)
{
  v2 = sub_1C6FC17C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C6FC11CC(void *a1)
{
  v4 = a1[2];
  v3 = a1[3];
  if (PFOSVariantHasInternalDiagnostics())
  {
    if (*v1)
    {
      sub_1C754DBCC();
      swift_allocObject();

      sub_1C754DBBC();
      sub_1C754DB9C();
      v13 = v4;
      v14 = v3;
      memcpy(v15, a1 + 4, sizeof(v15));
      sub_1C6FC1584();
      v7 = sub_1C754DBAC();
      v9 = v8;
      strcpy(v12, "AssetCuration-");
      v12[15] = -18;
      sub_1C6FB5E8C();
      v10 = sub_1C755155C();
      MEMORY[0x1CCA5CD70](v10);

      MEMORY[0x1CCA5CD70](1819113518, 0xE400000000000000);
      sub_1C7161C08();

      sub_1C6FC1640(v7, v9);
    }

    else
    {
      type metadata accessor for AssetCurationDiagnosticsGenerator();
      oslog = sub_1C754FEEC();
      v5 = sub_1C755117C();
      if (os_log_type_enabled(oslog, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_1C6F5C000, oslog, v5, "storyGenerationDiagnosticContext is nil, skip saving diagnostic files", v6, 2u);
        OUTLINED_FUNCTION_109();
      }
    }
  }
}

unint64_t sub_1C6FC1584()
{
  result = qword_1EDD06FD8;
  if (!qword_1EDD06FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06FD8);
  }

  return result;
}

uint64_t sub_1C6FC15D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6FC1640(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1C6FC16A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 208))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C6FC16E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C6FC17C0()
{
  result = qword_1EDD06FF0;
  if (!qword_1EDD06FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06FF0);
  }

  return result;
}

unint64_t sub_1C6FC1814()
{
  result = qword_1EDD0A658;
  if (!qword_1EDD0A658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0A658);
  }

  return result;
}

unint64_t sub_1C6FC18BC()
{
  result = qword_1EDD0CF60;
  if (!qword_1EDD0CF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC217A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0CF60);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetCurationDiagnosticsRepresentation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C6FC1A18()
{
  result = qword_1EC2151C8;
  if (!qword_1EC2151C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2151C8);
  }

  return result;
}

unint64_t sub_1C6FC1A70()
{
  result = qword_1EDD06FE0;
  if (!qword_1EDD06FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06FE0);
  }

  return result;
}

unint64_t sub_1C6FC1AC8()
{
  result = qword_1EDD06FE8;
  if (!qword_1EDD06FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06FE8);
  }

  return result;
}

uint64_t sub_1C6FC1B1C(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = 0;
  v5 = *(a2 + 16);
  v6 = a2 + 40;
  v28 = a2 + 40;
LABEL_2:
  while (2)
  {
    v7 = (v6 + 16 * v4);
    for (i = v4; ; ++i)
    {
      if (v5 == i)
      {
        return a1;
      }

      if (i >= v5)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_22;
      }

      v10 = *(v7 - 1);
      v9 = *v7;
      swift_beginAccess();
      v11 = *a3;
      v12 = *(*a3 + 16);
      swift_bridgeObjectRetain_n();
      if (v12)
      {
        v13 = sub_1C6F78124(v10, v9);
        if (v14)
        {
          break;
        }
      }

      swift_endAccess();
      sub_1C6F78124(v10, v9);
      if (v15)
      {
        swift_isUniquelyReferenced_nonNull_native();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151D8);
        sub_1C7551A2C();

        sub_1C7551A4C();

        swift_bridgeObjectRelease_n();
        v6 = v28;
        goto LABEL_2;
      }

      swift_bridgeObjectRelease_n();
      v7 += 2;
    }

    v16 = *(*(v11 + 56) + 8 * v13);
    swift_endAccess();
    sub_1C75504FC();
    swift_isUniquelyReferenced_nonNull_native();
    v29 = a1;
    v17 = sub_1C6F78124(v10, v9);
    if (__OFADD__(a1[2], (v18 & 1) == 0))
    {
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      break;
    }

    v19 = v17;
    v20 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151D8);
    if ((sub_1C7551A2C() & 1) == 0)
    {
      goto LABEL_15;
    }

    v21 = sub_1C6F78124(v10, v9);
    if ((v20 & 1) == (v22 & 1))
    {
      v19 = v21;
LABEL_15:
      if (v20)
      {
        *(v29[7] + 8 * v19) = v16;
        swift_bridgeObjectRelease_n();
        a1 = v29;
LABEL_19:

        v6 = v28;
        continue;
      }

      v29[(v19 >> 6) + 8] |= 1 << v19;
      v23 = (v29[6] + 16 * v19);
      *v23 = v10;
      v23[1] = v9;
      *(v29[7] + 8 * v19) = v16;
      v24 = v29[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (!v25)
      {
        a1 = v29;
        v29[2] = v26;
        goto LABEL_19;
      }

      goto LABEL_24;
    }

    break;
  }

  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C6FC1DFC(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = 0;
  v6 = *(a2 + 16);
  v7 = a2 + 40;
  v30 = a2 + 40;
LABEL_2:
  v8 = (v7 + 16 * v5);
  for (i = v5; ; ++i)
  {
    if (v6 == i)
    {
      return a1;
    }

    if (i >= v6)
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v5 = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_24;
    }

    v11 = *(v8 - 1);
    v10 = *v8;
    swift_beginAccess();
    v12 = *a3;
    v13 = *(*a3 + 16);
    sub_1C75504FC();
    if (v13)
    {
      v14 = sub_1C6F78124(v11, v10);
      if (v15)
      {
        break;
      }
    }

    swift_endAccess();
    sub_1C6F78124(v11, v10);
    if (v16)
    {
      swift_isUniquelyReferenced_nonNull_native();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DE0);
      sub_1C7551A2C();

      sub_1C7551A4C();
LABEL_18:

LABEL_19:
      v7 = v30;
      goto LABEL_2;
    }

    v8 += 2;
  }

  v17 = *(*(v12 + 56) + 8 * v14);
  swift_endAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v18 = sub_1C6F78124(v11, v10);
  if (__OFADD__(a1[2], (v19 & 1) == 0))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v20 = v18;
  v29 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DE0);
  if ((sub_1C7551A2C() & 1) == 0)
  {
    v23 = v29;
LABEL_16:
    if (v23)
    {
      *(a1[7] + 8 * v20) = v17;
      goto LABEL_18;
    }

    a1[(v20 >> 6) + 8] |= 1 << v20;
    v24 = (a1[6] + 16 * v20);
    *v24 = v11;
    v24[1] = v10;
    *(a1[7] + 8 * v20) = v17;
    v25 = a1[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (!v26)
    {
      a1[2] = v27;
      goto LABEL_19;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = sub_1C6F78124(v11, v10);
  v23 = v29;
  if ((v29 & 1) == (v22 & 1))
  {
    v20 = v21;
    goto LABEL_16;
  }

LABEL_27:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C6FC20AC()
{
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](0);
  return sub_1C7551FAC();
}

uint64_t sub_1C6FC20F4()
{
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](0);
  return sub_1C7551FAC();
}

uint64_t static AssetCollectionSummarizer.summarize(_:in:maximumNumberOfAssets:progressReporter:)(uint64_t a1, id a2, uint64_t a3, unint64_t a4)
{
  v6 = [a2 librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C755BAA0;
  *(v7 + 32) = sub_1C755068C();
  *(v7 + 40) = v8;
  *(v7 + 48) = sub_1C755068C();
  *(v7 + 56) = v9;
  *(v7 + 64) = sub_1C755068C();
  *(v7 + 72) = v10;
  sub_1C6FCA0EC(v7, v6);
  [v6 setChunkSizeForFetch_];
  [v6 setCacheSizeForFetch_];
  v11 = objc_opt_self();
  v12 = v6;
  v58 = a1;
  v13 = OUTLINED_FUNCTION_41_3();
  v15 = sub_1C6FCA158(v13, v14, v11);

  if (!v15)
  {
    sub_1C6FCA1C0();
    swift_allocError();
    swift_willThrow();

    sub_1C754F2FC();
    OUTLINED_FUNCTION_12();
    (*(v56 + 8))(a4);
    return a4;
  }

  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E7CC8];
  v65 = v16;
  *(v16 + 16) = MEMORY[0x1E69E7CC8];
  v64 = swift_allocObject();
  *(v64 + 16) = v17;
  v18 = [v15 count];
  if ((v18 & 0x8000000000000000) != 0)
  {
    goto LABEL_42;
  }

  v19 = v18;
  if (v18)
  {
    v20 = 0;
    v60 = v12;
    v61 = a4;
    v59 = v15;
    v62 = v18;
    do
    {
      v21 = objc_autoreleasePoolPush();
      v22 = [v15 objectAtIndexedSubscript_];
      v23 = sub_1C6FCA214(v22);
      if (v24)
      {
        v25 = v23;
        v26 = v24;
        v66 = v21;
        sub_1C73C6BB8();
        if (v27)
        {
          v63 = v27;
          [v22 curationScore];
          v29 = v28;
          swift_isUniquelyReferenced_nonNull_native();
          v30 = *(v65 + 16);
          *(v65 + 16) = 0x8000000000000000;
          v31 = OUTLINED_FUNCTION_55_0();
          sub_1C6F78124(v31, v32);
          if (__OFADD__(v30[2], (v33 & 1) == 0))
          {
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }

          OUTLINED_FUNCTION_61_4();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DE0);
          if (sub_1C7551A2C())
          {
            v34 = OUTLINED_FUNCTION_55_0();
            sub_1C6F78124(v34, v35);
            OUTLINED_FUNCTION_11_6();
            if (!v37)
            {
              goto LABEL_47;
            }

            a4 = v36;
          }

          if (v15)
          {
            *(v30[7] + 8 * a4) = v29;
          }

          else
          {
            OUTLINED_FUNCTION_57_1(&v30[a4 >> 6]);
            v38 = (v30[6] + 16 * a4);
            *v38 = v25;
            v38[1] = v26;
            *(v30[7] + 8 * a4) = v29;
            v39 = v30[2];
            v40 = __OFADD__(v39, 1);
            v41 = v39 + 1;
            if (v40)
            {
              goto LABEL_40;
            }

            v30[2] = v41;
            sub_1C75504FC();
          }

          *(v65 + 16) = v30;

          v42 = v64;
          v43 = *(v64 + 16);
          swift_isUniquelyReferenced_nonNull_native();
          *(v64 + 16) = 0x8000000000000000;
          v44 = OUTLINED_FUNCTION_55_0();
          sub_1C6F78124(v44, v45);
          if (__OFADD__(v43[2], (v46 & 1) == 0))
          {
            goto LABEL_39;
          }

          OUTLINED_FUNCTION_61_4();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151D8);
          if (sub_1C7551A2C())
          {
            v47 = OUTLINED_FUNCTION_55_0();
            sub_1C6F78124(v47, v48);
            OUTLINED_FUNCTION_11_6();
            v19 = v62;
            if (!v37)
            {
              goto LABEL_47;
            }

            v42 = v49;
          }

          else
          {
            v19 = v62;
          }

          if (v15)
          {
            *(v43[7] + 8 * v42) = v63;
          }

          else
          {
            OUTLINED_FUNCTION_57_1(&v43[v42 >> 6]);
            v50 = (v43[6] + 16 * v42);
            *v50 = v25;
            v50[1] = v26;
            *(v43[7] + 8 * v42) = v51;
            v52 = v43[2];
            v40 = __OFADD__(v52, 1);
            v53 = v52 + 1;
            if (v40)
            {
              goto LABEL_41;
            }

            v43[2] = v53;
          }

          *(v64 + 16) = v43;

          v12 = v60;
          a4 = v61;
          v15 = v59;
        }

        else
        {
        }

        v21 = v66;
      }

      else
      {
      }

      ++v20;
      objc_autoreleasePoolPop(v21);
    }

    while (v19 != v20);
  }

  type metadata accessor for CLIPBasedAssetSummarizer();
  swift_allocObject();
  swift_retain_n();
  swift_retain_n();
  CLIPBasedAssetSummarizer.init(vectorFetchingBlock:scoreFetchingBlock:)(sub_1C6FCA284, v64, sub_1C6FCA28C, v65);
  v54 = sqrt(*(v58 + 16));
  v55 = v54 + v54;
  if (v55 == INFINITY)
  {
    goto LABEL_43;
  }

  if (v55 <= -9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v55 >= 9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (!__OFSUB__(v55, 1))
  {
    a4 = sub_1C754F0BC();

    return a4;
  }

LABEL_46:
  __break(1u);
LABEL_47:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

unint64_t sub_1C6FC27A8()
{
  OUTLINED_FUNCTION_13_7();
  sub_1C75505AC();
  sub_1C6FF7814();
  type metadata accessor for Hastings.Feature();
  sub_1C754F58C();
  sub_1C6FCAAD8(&qword_1EC215238, MEMORY[0x1E69C1928]);
  sub_1C755059C();
  sub_1C7551FAC();
  v0 = OUTLINED_FUNCTION_34_3();

  return sub_1C6FC35FC(v0, v1);
}

void sub_1C6FC286C()
{
  OUTLINED_FUNCTION_32_3();
  sub_1C754F58C();
  sub_1C6FCAAD8(&qword_1EC215238, MEMORY[0x1E69C1928]);
  OUTLINED_FUNCTION_64();
  sub_1C755058C();
  OUTLINED_FUNCTION_37_6();
  sub_1C6FC490C();
}

unint64_t sub_1C6FC296C()
{
  OUTLINED_FUNCTION_31_5();
  sub_1C72DE544();
  v0 = OUTLINED_FUNCTION_63_2();

  return sub_1C6FC3A20(v0, v1);
}

void sub_1C6FC29A4()
{
  OUTLINED_FUNCTION_10_8();
  sub_1C75513DC();
  OUTLINED_FUNCTION_37_6();
  sub_1C6FC3FB0();
}

void sub_1C6FC29E8()
{
  OUTLINED_FUNCTION_10_8();
  sub_1C75513DC();
  OUTLINED_FUNCTION_37_6();
  sub_1C6FC3FB0();
}

void sub_1C6FC2A2C()
{
  OUTLINED_FUNCTION_10_8();
  sub_1C75513DC();
  OUTLINED_FUNCTION_37_6();
  sub_1C6FC3FB0();
}

uint64_t sub_1C6FC2A70()
{
  OUTLINED_FUNCTION_13_7();
  v1 = *(v0 + 80);
  sub_1C75505AC();
  sub_1C7041CDC(v5, v1);
  sub_1C7551FAC();
  v2 = OUTLINED_FUNCTION_34_3();

  return sub_1C6FC4068(v2, v3);
}

unint64_t sub_1C6FC2AD8()
{
  sub_1C7551F3C();
  sub_1C75505AC();
  sub_1C7551FAC();
  v0 = OUTLINED_FUNCTION_34_3();

  return sub_1C6FC4548(v0, v1);
}

unint64_t sub_1C6FC2B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_42_4();
  sub_1C75505AC();
  sub_1C7551FAC();
  v5 = OUTLINED_FUNCTION_45();

  return sub_1C6FC46FC(v5, v6, v7, a4, v8);
}

unint64_t sub_1C6FC2BC8()
{
  OUTLINED_FUNCTION_10_8();
  v1 = sub_1C755174C();

  return sub_1C6FC4848(v0, v1);
}

void sub_1C6FC2C04()
{
  sub_1C754E82C();
  sub_1C6FCAAD8(&qword_1EC215358, MEMORY[0x1E698A848]);
  sub_1C755058C();
  sub_1C6FC490C();
}

unint64_t sub_1C6FC2CD8()
{
  OUTLINED_FUNCTION_31_5();
  sub_1C72DF230();
  v0 = OUTLINED_FUNCTION_63_2();

  return sub_1C6FC4A84(v0, v1);
}

void sub_1C6FC2D10()
{
  OUTLINED_FUNCTION_32_3();
  sub_1C754DFFC();
  sub_1C6FCAAD8(&qword_1EDD0CBA8, MEMORY[0x1E69695A8]);
  OUTLINED_FUNCTION_64();
  sub_1C755058C();
  OUTLINED_FUNCTION_37_6();
  sub_1C6FC490C();
}

void sub_1C6FC2DD0()
{
  OUTLINED_FUNCTION_10_8();
  sub_1C75513DC();
  OUTLINED_FUNCTION_37_6();
  sub_1C6FC3FB0();
}

uint64_t sub_1C6FC2E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_42_4();
  sub_1C75505AC();
  sub_1C70413CC(v11, a3);
  sub_1C70906F0();
  sub_1C7551FAC();
  v6 = OUTLINED_FUNCTION_45();

  return sub_1C6FC4F08(v6, v7, v8, a4, v9);
}

unint64_t sub_1C6FC2EAC()
{
  OUTLINED_FUNCTION_13_7();
  type metadata accessor for CFString(0);
  sub_1C6FCAAD8(&qword_1EC215330, type metadata accessor for CFString);
  sub_1C754E5CC();
  sub_1C7551FAC();
  v0 = OUTLINED_FUNCTION_34_3();

  return sub_1C6FC525C(v0, v1);
}

unint64_t sub_1C6FC2F4C()
{
  OUTLINED_FUNCTION_32_3();
  sub_1C7551A1C();
  v1 = sub_1C755058C();

  return sub_1C6FC5360(v0, v1);
}

uint64_t sub_1C6FC2FA4()
{
  OUTLINED_FUNCTION_13_7();
  GlobalTrait.hash(into:)();
  sub_1C7551FAC();
  v0 = OUTLINED_FUNCTION_34_3();

  return sub_1C6FC54E4(v0, v1);
}

unint64_t sub_1C6FC2FFC()
{
  OUTLINED_FUNCTION_13_7();
  MEMORY[0x1CCA5E460](v0);
  sub_1C7551FAC();
  v1 = OUTLINED_FUNCTION_34_3();

  return sub_1C6FC4EA8(v1, v2);
}

unint64_t sub_1C6FC3054()
{
  OUTLINED_FUNCTION_13_7();
  v1 = *(v0 + 48);
  sub_1C75505AC();
  sub_1C75505AC();
  sub_1C75513FC();
  sub_1C75513FC();
  sub_1C7090D88(v5, v1);
  sub_1C7551FAC();
  v2 = OUTLINED_FUNCTION_34_3();

  return sub_1C6FC5838(v2, v3);
}

unint64_t sub_1C6FC30F8()
{
  OUTLINED_FUNCTION_31_5();
  sub_1C72DF4C0();
  v0 = OUTLINED_FUNCTION_63_2();

  return sub_1C6FC5A28(v0, v1);
}

void sub_1C6FC3170()
{
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_42_4();
  sub_1C75505AC();
  sub_1C7551FAC();
  sub_1C6FC5B88();
}

unint64_t sub_1C6FC31EC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_42_4();
  MEMORY[0x1CCA5E460](a1);
  MEMORY[0x1CCA5E460](a2);
  v4 = sub_1C7551FAC();

  return sub_1C6FC5CD4(a1, a2, v4);
}

unint64_t sub_1C6FC3264()
{
  OUTLINED_FUNCTION_31_5();
  sub_1C72DF388();
  v0 = OUTLINED_FUNCTION_63_2();

  return sub_1C6FC5D4C(v0, v1);
}

void sub_1C6FC32C8()
{
  OUTLINED_FUNCTION_10_8();
  sub_1C75513DC();
  OUTLINED_FUNCTION_37_6();
  sub_1C6FC3FB0();
}

unint64_t sub_1C6FC330C()
{
  OUTLINED_FUNCTION_13_7();
  sub_1C7043F64(v4, v0);
  sub_1C7551FAC();
  v1 = OUTLINED_FUNCTION_34_3();

  return sub_1C6FC64B0(v1, v2);
}

unint64_t sub_1C6FC3364(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_42_4();
  MEMORY[0x1CCA5E460](a1);
  v2 = sub_1C7551FAC();
  return sub_1C6FC6548(a1, v2);
}

void sub_1C6FC33F4()
{
  sub_1C755068C();
  sub_1C7551F3C();
  sub_1C75505AC();
  sub_1C7551FAC();

  sub_1C6FC6828();
}

void sub_1C6FC3484()
{
  OUTLINED_FUNCTION_10_8();
  sub_1C75513DC();
  OUTLINED_FUNCTION_37_6();
  sub_1C6FC3FB0();
}

uint64_t sub_1C6FC3520(uint64_t a1, void (*a2)(_BYTE *, uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_42_4();
  a2(v8, a1);
  v5 = sub_1C7551FAC();

  return a3(a1, v5);
}

unint64_t sub_1C6FC3598(unsigned __int16 a1)
{
  OUTLINED_FUNCTION_42_4();
  sub_1C7551F6C();
  v2 = sub_1C7551FAC();

  return sub_1C6FC6CDC(a1, v2);
}

unint64_t sub_1C6FC35FC(uint64_t *a1, uint64_t a2)
{
  v24 = type metadata accessor for Hastings.Feature();
  MEMORY[0x1EEE9AC00](v24);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v2 + 64;
  v28 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = *a1;
    v11 = a1[1];
    v12 = *(v5 + 72);
    v25 = ~v8;
    v26 = v12;
    while (1)
    {
      sub_1C6FCAB20();
      v13 = *v7 == v10 && *(v7 + 1) == v11;
      if (!v13 && (sub_1C7551DBC() & 1) == 0)
      {
        break;
      }

      v14 = 0xE900000000000072;
      v15 = 0x6574636172616843;
      switch(v7[16])
      {
        case 1:
          v14 = 0xE800000000000000;
          v15 = 0x6E6F697461636F4CLL;
          break;
        case 2:
          v14 = 0xE500000000000000;
          v15 = 0x746E657645;
          break;
        case 3:
          v14 = 0xE400000000000000;
          v15 = 1885958740;
          break;
        case 4:
          v14 = 0xE500000000000000;
          v15 = 0x7972657551;
          break;
        case 5:
          v15 = 0x6B61657262656954;
          v14 = 0xEA00000000007265;
          break;
        default:
          break;
      }

      v16 = 0x6574636172616843;
      v17 = 0xE900000000000072;
      switch(*(a1 + 16))
      {
        case 1:
          v17 = 0xE800000000000000;
          v16 = 0x6E6F697461636F4CLL;
          break;
        case 2:
          v17 = 0xE500000000000000;
          v16 = 0x746E657645;
          break;
        case 3:
          v17 = 0xE400000000000000;
          v16 = 1885958740;
          break;
        case 4:
          v17 = 0xE500000000000000;
          v16 = 0x7972657551;
          break;
        case 5:
          v16 = 0x6B61657262656954;
          v17 = 0xEA00000000007265;
          break;
        default:
          break;
      }

      if (v15 == v16 && v14 == v17)
      {
      }

      else
      {
        v19 = sub_1C7551DBC();

        if ((v19 & 1) == 0)
        {
          break;
        }
      }

      sub_1C754F58C();
      sub_1C6FCAAD8(&qword_1EC2147A0, MEMORY[0x1E69C1928]);
      sub_1C7550A5C();
      sub_1C7550A5C();
      if (v31 == v29 && v32 == v30)
      {

        sub_1C6FCAB78(v7, type metadata accessor for Hastings.Feature);
        return v9;
      }

      v21 = sub_1C7551DBC();

      sub_1C6FCAB78(v7, type metadata accessor for Hastings.Feature);
      if (v21)
      {
        return v9;
      }

LABEL_32:
      v9 = (v9 + 1) & v25;
      if (((*(v27 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        return v9;
      }
    }

    sub_1C6FCAB78(v7, type metadata accessor for Hastings.Feature);
    goto LABEL_32;
  }

  return v9;
}

unint64_t sub_1C6FC3A20(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEF62303365736142;
      v8 = 0x6B6361626C6C6166;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000016;
          v7 = 0x80000001C75965E0;
          break;
        case 2:
          v8 = 0xD000000000000018;
          v7 = 0x80000001C7596600;
          break;
        case 3:
          v8 = 0xD000000000000017;
          v7 = 0x80000001C7596620;
          break;
        case 4:
          v8 = 0xD00000000000001DLL;
          v7 = 0x80000001C7596640;
          break;
        case 5:
          v8 = 0xD000000000000011;
          v7 = 0x80000001C7596660;
          break;
        case 6:
          v8 = 0xD000000000000018;
          v7 = 0x80000001C7596680;
          break;
        case 7:
          v8 = 0xD00000000000001FLL;
          v7 = 0x80000001C75966A0;
          break;
        case 8:
          v8 = 0xD00000000000001ALL;
          v7 = 0x80000001C75966C0;
          break;
        case 9:
          v8 = 0xD000000000000019;
          v7 = 0x80000001C75966E0;
          break;
        case 0xA:
          v8 = 0xD000000000000011;
          v7 = 0x80000001C7596700;
          break;
        case 0xB:
          v8 = 0xD000000000000018;
          v7 = 0x80000001C7596720;
          break;
        case 0xC:
          v8 = 0xD00000000000001FLL;
          v7 = 0x80000001C7596740;
          break;
        case 0xD:
          v8 = 0xD00000000000001ALL;
          v7 = 0x80000001C7596760;
          break;
        case 0xE:
          v8 = 0xD000000000000019;
          v7 = 0x80000001C7596780;
          break;
        case 0xF:
          v8 = 0xD000000000000018;
          v7 = 0x80000001C75967A0;
          break;
        case 0x10:
          v8 = 0xD00000000000001FLL;
          v7 = 0x80000001C75967C0;
          break;
        case 0x11:
          v8 = 0xD000000000000019;
          v7 = 0x80000001C75967E0;
          break;
        case 0x12:
          v8 = 0xD000000000000012;
          v7 = 0x80000001C7596800;
          break;
        case 0x13:
          v8 = 0xD000000000000021;
          v7 = 0x80000001C7596820;
          break;
        default:
          break;
      }

      v9 = 0x6B6361626C6C6166;
      v10 = 0xEF62303365736142;
      switch(a1)
      {
        case 1:
          v9 = 0xD000000000000016;
          v10 = 0x80000001C75965E0;
          break;
        case 2:
          v9 = 0xD000000000000018;
          v10 = 0x80000001C7596600;
          break;
        case 3:
          v9 = 0xD000000000000017;
          v10 = 0x80000001C7596620;
          break;
        case 4:
          v9 = 0xD00000000000001DLL;
          v10 = 0x80000001C7596640;
          break;
        case 5:
          v9 = 0xD000000000000011;
          v10 = 0x80000001C7596660;
          break;
        case 6:
          v9 = 0xD000000000000018;
          v10 = 0x80000001C7596680;
          break;
        case 7:
          v9 = 0xD00000000000001FLL;
          v10 = 0x80000001C75966A0;
          break;
        case 8:
          v9 = 0xD00000000000001ALL;
          v10 = 0x80000001C75966C0;
          break;
        case 9:
          v9 = 0xD000000000000019;
          v10 = 0x80000001C75966E0;
          break;
        case 10:
          v9 = 0xD000000000000011;
          v10 = 0x80000001C7596700;
          break;
        case 11:
          v9 = 0xD000000000000018;
          v10 = 0x80000001C7596720;
          break;
        case 12:
          v9 = 0xD00000000000001FLL;
          v10 = 0x80000001C7596740;
          break;
        case 13:
          v9 = 0xD00000000000001ALL;
          v10 = 0x80000001C7596760;
          break;
        case 14:
          v9 = 0xD000000000000019;
          v10 = 0x80000001C7596780;
          break;
        case 15:
          v9 = 0xD000000000000018;
          v10 = 0x80000001C75967A0;
          break;
        case 16:
          v9 = 0xD00000000000001FLL;
          v10 = 0x80000001C75967C0;
          break;
        case 17:
          v9 = 0xD000000000000019;
          v10 = 0x80000001C75967E0;
          break;
        case 18:
          v9 = 0xD000000000000012;
          v10 = 0x80000001C7596800;
          break;
        case 19:
          v9 = 0xD000000000000021;
          v10 = 0x80000001C7596820;
          break;
        default:
          break;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = sub_1C7551DBC();

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

void sub_1C6FC3FB0()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = v0;
  v4 = v0 + 64;
  OUTLINED_FUNCTION_30_4();
  v6 = ~v5;
  for (i = v7 & ~v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    sub_1C6F65BE8(0, v2);
    v9 = *(*(v3 + 48) + 8 * i);
    v10 = sub_1C75513EC();

    if (v10)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C6FC4068(uint64_t a1, uint64_t a2)
{
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v52 = *(TokenSuggestion - 8);
  MEMORY[0x1EEE9AC00](TokenSuggestion - 8);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v40 - v8;
  v9 = v2 + 64;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return v11;
  }

  v53 = ~v10;
  v12 = *(a1 + 40);
  v45 = *(a1 + 48);
  v46 = v12;
  v13 = *(a1 + 56);
  v14 = *(a1 + 24);
  v64 = *(a1 + 16);
  v15 = *(a1 + 64);
  v48 = *(a1 + 80);
  v44 = v13;
  v43 = v13 ^ 1;
  v62 = v15;
  v42 = (v15 + 40);
  v41 = v2;
  v40 = v2 + 64;
  while (1)
  {
    v16 = *(v2 + 48) + 120 * v11;
    v18 = *(v16 + 8);
    result = *(v16 + 16);
    v19 = *(v16 + 24);
    v20 = *(v16 + 48);
    v54 = *(v16 + 40);
    v55 = v20;
    v61 = *(v16 + 56);
    v21 = *(v16 + 64);
    v59 = *(v16 + 72);
    v60 = v18;
    v65 = *(v16 + 80);
    v22 = *(v16 + 96);
    v57 = *(v16 + 104);
    v58 = v22;
    v56 = *(v16 + 112);
    if (result != v64 || v19 != v14)
    {
      v24 = v21;
      result = sub_1C7551DBC();
      v21 = v24;
      if ((result & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    if (!v21)
    {
      if (v62)
      {
        goto LABEL_46;
      }

      goto LABEL_25;
    }

    if (!v62)
    {
      goto LABEL_46;
    }

    v25 = *(v21 + 16);
    if (v25 != *(v62 + 16))
    {
      goto LABEL_46;
    }

    if (v25 && v21 != v62)
    {
      break;
    }

LABEL_25:
    v31 = *(v65 + 16);
    if (v31 == *(v48 + 16))
    {
      if (v31 && v65 != v48)
      {
        v32 = v21;
        v33 = (*(v52 + 80) + 32) & ~*(v52 + 80);
        v50 = v65 + v33;
        v49 = v48 + v33;
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        v47 = v32;
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        result = sub_1C75504FC();
        v34 = 0;
        while (v34 < *(v65 + 16))
        {
          result = sub_1C6FCAB20();
          if (v31 == v34)
          {
            goto LABEL_50;
          }

          v35 = v51;
          sub_1C6FCAB20();
          v36 = v63;
          v37 = static QueryTokenSuggestion.== infix(_:_:)(v63, v35);
          sub_1C6FCAB78(v35, type metadata accessor for QueryTokenSuggestion);
          result = sub_1C6FCAB78(v36, type metadata accessor for QueryTokenSuggestion);
          if ((v37 & 1) == 0)
          {

            v2 = v41;
            v9 = v40;
            goto LABEL_46;
          }

          if (v31 == ++v34)
          {

            v2 = v41;
            v9 = v40;
            goto LABEL_34;
          }
        }

        goto LABEL_49;
      }

LABEL_34:
      if (v61)
      {
        if (v44)
        {
          return v11;
        }
      }

      else
      {
        v38 = v43;
        if (v54 != v46)
        {
          v38 = 0;
        }

        if (v38 == 1 && v55 == v45)
        {
          return v11;
        }
      }
    }

LABEL_46:
    v11 = (v11 + 1) & v53;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return v11;
    }
  }

  v27 = (v21 + 40);
  v28 = v42;
  while (v25)
  {
    result = *(v27 - 1);
    if (result != *(v28 - 1) || *v27 != *v28)
    {
      v30 = v21;
      result = sub_1C7551DBC();
      v21 = v30;
      if ((result & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    v27 += 2;
    v28 += 2;
    if (!--v25)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

unint64_t sub_1C6FC4548(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = *a1;
    v6 = a1[1];
    do
    {
      v8 = (*(v23 + 48) + 48 * v4);
      v9 = v8[2];
      v10 = v8[3];
      v11 = v8[4];
      v12 = v8[5];
      v13 = *v8 == v5 && v8[1] == v6;
      if (v13 || (sub_1C7551DBC() & 1) != 0)
      {
        v14 = a1[2];
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C7036A90(v9, v14);
        if (v15 & 1) != 0 && (sub_1C7036A90(v10, a1[3]), (v16) && (sub_1C7036A90(v11, a1[4]), (v17))
        {
          sub_1C7036A90(v12, a1[5]);
          v19 = v18;

          if (v19)
          {
            return v4;
          }
        }

        else
        {
        }
      }

      v4 = (v4 + 1) & v21;
    }

    while (((*(v22 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1C6FC46FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v10 = ~v6;
    do
    {
      v11 = (*(v5 + 48) + 32 * v7);
      v12 = v11[2];
      v13 = v11[3];
      v14 = *v11 == a1 && v11[1] == a2;
      if (v14 || (sub_1C7551DBC() & 1) != 0)
      {
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C7036A90(v12, a3);
        if (v15)
        {
          sub_1C7036A90(v13, a4);
          v17 = v16;

          if (v17)
          {
            return v7;
          }
        }

        else
        {
        }
      }

      v7 = (v7 + 1) & v10;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_1C6FC4848(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1C6FCA584(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1CCA5DC70](v8, a1);
    sub_1C6FCA5E0(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

void sub_1C6FC490C()
{
  OUTLINED_FUNCTION_33();
  v21 = v1;
  v22 = v2;
  v20 = v3;
  v5 = v4;
  v18 = v6;
  v8 = v7(0);
  OUTLINED_FUNCTION_29();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  v23 = v0 + 64;
  v19 = v0;
  OUTLINED_FUNCTION_30_4();
  v15 = ~v14;
  for (i = v5 & ~v14; ((1 << i) & *(v23 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v15)
  {
    (*(v10 + 16))(v13, *(v19 + 48) + *(v10 + 72) * i, v8);
    sub_1C6FCAAD8(v20, v21);
    v17 = sub_1C755063C();
    (*(v10 + 8))(v13, v8);
    if (v17)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_25_0();
}

unint64_t sub_1C6FC4A84(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEC00000065636E61;
      v8 = 0x746E696175716361;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE700000000000000;
          v9 = 0x6568746F7262;
          goto LABEL_7;
        case 2:
          v7 = 0xE500000000000000;
          v8 = 0x646C696863;
          break;
        case 3:
          v8 = 0xD000000000000015;
          v7 = 0x80000001C7596B70;
          break;
        case 4:
          v7 = 0xE800000000000000;
          v11 = 0x6B726F776F63;
          goto LABEL_18;
        case 5:
          v7 = 0xE800000000000000;
          v11 = 0x746867756164;
LABEL_18:
          v8 = v11 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
          break;
        case 6:
          v8 = 0xD000000000000013;
          v7 = 0x80000001C7596BA0;
          break;
        case 7:
          v7 = 0xE600000000000000;
          v8 = 0x796C696D6166;
          break;
        case 8:
          v7 = 0xE600000000000000;
          v10 = 1752457574;
          goto LABEL_23;
        case 9:
          v7 = 0xE600000000000000;
          v8 = 0x646E65697266;
          break;
        case 0xA:
          v8 = 0xD000000000000010;
          v7 = 0x80000001C7596BD0;
          break;
        case 0xB:
          v7 = 0xE200000000000000;
          v8 = 25965;
          break;
        case 0xC:
          v8 = 0x726568746F6DLL;
          v7 = 0xE600000000000000;
          break;
        case 0xD:
          v7 = 0xE600000000000000;
          v8 = 0x746E65726170;
          break;
        case 0xE:
          v7 = 0xE700000000000000;
          v9 = 0x656E74726170;
LABEL_7:
          v8 = v9 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
          break;
        case 0xF:
          v7 = 0xE300000000000000;
          v8 = 7237491;
          break;
        case 0x10:
          v7 = 0xE600000000000000;
          v10 = 1953720691;
LABEL_23:
          v8 = v10 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          break;
        case 0x11:
          v7 = 0xE300000000000000;
          v8 = 7367030;
          break;
        default:
          break;
      }

      v12 = 0x746E696175716361;
      v13 = 0xEC00000065636E61;
      switch(a1)
      {
        case 1:
          v13 = 0xE700000000000000;
          v14 = 0x6568746F7262;
          goto LABEL_28;
        case 2:
          v13 = 0xE500000000000000;
          v12 = 0x646C696863;
          break;
        case 3:
          v12 = 0xD000000000000015;
          v13 = 0x80000001C7596B70;
          break;
        case 4:
          v13 = 0xE800000000000000;
          v16 = 0x6B726F776F63;
          goto LABEL_39;
        case 5:
          v13 = 0xE800000000000000;
          v16 = 0x746867756164;
LABEL_39:
          v12 = v16 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
          break;
        case 6:
          v12 = 0xD000000000000013;
          v13 = 0x80000001C7596BA0;
          break;
        case 7:
          v13 = 0xE600000000000000;
          v12 = 0x796C696D6166;
          break;
        case 8:
          v13 = 0xE600000000000000;
          v15 = 1752457574;
          goto LABEL_44;
        case 9:
          v13 = 0xE600000000000000;
          v12 = 0x646E65697266;
          break;
        case 10:
          v12 = 0xD000000000000010;
          v13 = 0x80000001C7596BD0;
          break;
        case 11:
          v13 = 0xE200000000000000;
          v12 = 25965;
          break;
        case 12:
          v12 = 0x726568746F6DLL;
          v13 = 0xE600000000000000;
          break;
        case 13:
          v13 = 0xE600000000000000;
          v12 = 0x746E65726170;
          break;
        case 14:
          v13 = 0xE700000000000000;
          v14 = 0x656E74726170;
LABEL_28:
          v12 = v14 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
          break;
        case 15:
          v13 = 0xE300000000000000;
          v12 = 7237491;
          break;
        case 16:
          v13 = 0xE600000000000000;
          v15 = 1953720691;
LABEL_44:
          v12 = v15 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          break;
        case 17:
          v13 = 0xE300000000000000;
          v12 = 7367030;
          break;
        default:
          break;
      }

      if (v8 == v12 && v7 == v13)
      {
        break;
      }

      v18 = sub_1C7551DBC();

      if ((v18 & 1) == 0)
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

unint64_t sub_1C6FC4EA8(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

uint64_t sub_1C6FC4F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v10 = type metadata accessor for Hastings.Asset(0);
  v39 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v30 - v14);
  v16 = -1 << *(v5 + 32);
  v17 = a5 & ~v16;
  v37 = v5 + 64;
  if (((*(v5 + 64 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
  {
    return v17;
  }

  v36 = ~v16;
  v33 = v5;
  v34 = a3;
  v31 = a1;
  v32 = a2;
  while (1)
  {
    v18 = (*(v5 + 48) + 32 * v17);
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[2];
    v38 = v18[3];
    v22 = v19 == a1 && v20 == a2;
    if (v22 || (sub_1C7551DBC() & 1) != 0)
    {
      v23 = *(v21 + 16);
      if (v23 == *(a3 + 16))
      {
        break;
      }
    }

LABEL_25:
    v17 = (v17 + 1) & v36;
    if (((*(v37 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      return v17;
    }
  }

  v35 = v20;
  if (!v23)
  {
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
LABEL_24:
    sub_1C708BC78();
    v29 = v28;

    v5 = v33;
    a3 = v34;
    a1 = v31;
    a2 = v32;
    if (v29)
    {
      return v17;
    }

    goto LABEL_25;
  }

  sub_1C75504FC();
  sub_1C75504FC();
  result = sub_1C75504FC();
  if (v21 == a3)
  {
    goto LABEL_24;
  }

  v25 = 0;
  while (v25 < *(v21 + 16))
  {
    result = sub_1C6FCAB20();
    if (v23 == v25)
    {
      goto LABEL_29;
    }

    sub_1C6FCAB20();
    if (*v15 == *v12 && v15[1] == v12[1])
    {
      sub_1C6FCAB78(v12, type metadata accessor for Hastings.Asset);
      result = sub_1C6FCAB78(v15, type metadata accessor for Hastings.Asset);
    }

    else
    {
      v27 = sub_1C7551DBC();
      sub_1C6FCAB78(v12, type metadata accessor for Hastings.Asset);
      result = sub_1C6FCAB78(v15, type metadata accessor for Hastings.Asset);
      if ((v27 & 1) == 0)
      {

        v5 = v33;
        a3 = v34;
        a1 = v31;
        a2 = v32;
        goto LABEL_25;
      }
    }

    if (v23 == ++v25)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_1C6FC525C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    v7 = *(*(v3 + 48) + 8 * i);
    type metadata accessor for CFString(0);
    sub_1C6FCAAD8(&qword_1EC215330, type metadata accessor for CFString);
    v8 = v7;
    v9 = sub_1C754E5BC();

    if (v9)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1C6FC5360(uint64_t a1, uint64_t a2)
{
  v13[1] = a1;
  v4 = sub_1C7551A1C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2;
  v15 = v2 + 64;
  v9 = ~(-1 << *(v2 + 32));
  for (i = a2 & v9; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v9)
  {
    (*(v5 + 16))(v8, *(v14 + 48) + *(v5 + 72) * i, v4, v6);
    v11 = sub_1C755063C();
    (*(v5 + 8))(v8, v4);
    if (v11)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1C6FC54E4(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for GlobalTrait();
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = v2 + 64;
  v45 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return v11;
  }

  v12 = *a1;
  v13 = a1[1];
  v14 = *(v6 + 72);
  v43 = ~v10;
  v44 = v14;
  while (1)
  {
    sub_1C6FCAB20();
    v15 = *v8 == v12 && v8[1] == v13;
    if (!v15 && (sub_1C7551DBC() & 1) == 0)
    {
      goto LABEL_62;
    }

    v16 = v8[2] == a1[2] && v8[3] == a1[3];
    if (!v16 && (sub_1C7551DBC() & 1) == 0)
    {
      goto LABEL_62;
    }

    result = sub_1C754DFAC();
    if ((result & 1) == 0)
    {
      goto LABEL_62;
    }

    if (*(v8 + v5[7]) != *(a1 + v5[7]))
    {
      goto LABEL_62;
    }

    v18 = v5[8];
    v19 = *(v8 + v18);
    v20 = *(a1 + v18);
    v21 = *(v19 + 16);
    if (v21 != *(v20 + 16))
    {
      goto LABEL_62;
    }

    if (v21)
    {
      v22 = v19 == v20;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = (v19 + 40);
      v24 = (v20 + 40);
      while (v21)
      {
        result = *(v23 - 1);
        if (result != *(v24 - 1) || *v23 != *v24)
        {
          result = sub_1C7551DBC();
          if ((result & 1) == 0)
          {
            goto LABEL_62;
          }
        }

        v23 += 2;
        v24 += 2;
        if (!--v21)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
      goto LABEL_66;
    }

LABEL_28:
    v26 = v5[9];
    v27 = *(v8 + v26);
    v28 = *(a1 + v26);
    if (v27)
    {
      if (!v28)
      {
        goto LABEL_62;
      }

      v29 = *(v27 + 16);
      if (v29 != *(v28 + 16))
      {
        goto LABEL_62;
      }

      if (v29)
      {
        v30 = v27 == v28;
      }

      else
      {
        v30 = 1;
      }

      if (!v30)
      {
        v31 = (v27 + 40);
        v32 = (v28 + 40);
        while (v29)
        {
          result = *(v31 - 1);
          if (result != *(v32 - 1) || *v31 != *v32)
          {
            result = sub_1C7551DBC();
            if ((result & 1) == 0)
            {
              goto LABEL_62;
            }
          }

          v31 += 2;
          v32 += 2;
          if (!--v29)
          {
            goto LABEL_45;
          }
        }

LABEL_66:
        __break(1u);
        goto LABEL_67;
      }
    }

    else if (v28)
    {
      goto LABEL_62;
    }

LABEL_45:
    v34 = v5[10];
    v35 = *(v8 + v34);
    v36 = *(a1 + v34);
    if (v35)
    {
      break;
    }

    if (!v36)
    {
      goto LABEL_64;
    }

LABEL_62:
    sub_1C6FCAB78(v8, type metadata accessor for GlobalTrait);
    v11 = (v11 + 1) & v43;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return v11;
    }
  }

  if (!v36)
  {
    goto LABEL_62;
  }

  v37 = *(v35 + 16);
  if (v37 != *(v36 + 16))
  {
    goto LABEL_62;
  }

  if (v37)
  {
    v38 = v35 == v36;
  }

  else
  {
    v38 = 1;
  }

  if (v38)
  {
LABEL_64:
    sub_1C6FCAB78(v8, type metadata accessor for GlobalTrait);
    return v11;
  }

  v39 = (v35 + 40);
  v40 = (v36 + 40);
  while (v37)
  {
    result = *(v39 - 1);
    if (result != *(v40 - 1) || *v39 != *v40)
    {
      result = sub_1C7551DBC();
      if ((result & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    v39 += 2;
    v40 += 2;
    if (!--v37)
    {
      goto LABEL_64;
    }
  }

LABEL_67:
  __break(1u);
  return result;
}

unint64_t sub_1C6FC5838(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v22 = ~v3;
    v5 = *a1;
    v6 = a1[1];
    v7 = a1[3];
    v25 = a1[2];
    v21 = a1[6];
    do
    {
      v8 = (*(v24 + 48) + 56 * v4);
      v9 = v8[2];
      v10 = v8[3];
      v11 = v8[4];
      v12 = v8[5];
      v13 = v8[6];
      v14 = *v8 == v5 && v8[1] == v6;
      if (v14 || (sub_1C7551DBC() & 1) != 0)
      {
        v15 = v9 == v25 && v10 == v7;
        if (v15 || (sub_1C7551DBC() & 1) != 0)
        {
          sub_1C6F65BE8(0, &qword_1EDD10100);
          sub_1C75504FC();
          sub_1C75504FC();
          v16 = v11;
          v17 = v12;
          sub_1C75504FC();
          if (sub_1C75513EC() & 1) != 0 && (sub_1C75513EC())
          {
            sub_1C708C5DC(v13, v21);
            v19 = v18;

            if (v19)
            {
              return v4;
            }
          }

          else
          {
          }
        }
      }

      v4 = (v4 + 1) & v22;
    }

    while (((*(v23 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1C6FC5A28(char a1, uint64_t a2)
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
          v7 = 0xE400000000000000;
          v8 = 1702125924;
        }

        else
        {
          v7 = 0xE500000000000000;
          v8 = 0x746E657665;
        }
      }

      else
      {
        v7 = 0xE400000000000000;
        v8 = 1701736302;
      }

      if (a1)
      {
        v9 = a1 == 1 ? 1702125924 : 0x746E657665;
        v10 = a1 == 1 ? 0xE400000000000000 : 0xE500000000000000;
      }

      else
      {
        v10 = 0xE400000000000000;
        v9 = 1701736302;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = sub_1C7551DBC();

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

void sub_1C6FC5B88()
{
  OUTLINED_FUNCTION_33();
  v16 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v15 - v8);
  OUTLINED_FUNCTION_30_4();
  v11 = ~v10;
  for (i = v3 & ~v10; ((1 << i) & *(v0 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v11)
  {
    sub_1C6FCAB20();
    if (*v9 == *v5 && v9[1] == v5[1])
    {
      sub_1C6FCAB78(v9, v16);
      break;
    }

    v14 = sub_1C7551DBC();
    sub_1C6FCAB78(v9, v16);
    if (v14)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_25_0();
}

unint64_t sub_1C6FC5CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C6FC5D4C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE400000000000000;
      v8 = 1701736302;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE600000000000000;
          v9 = 1936876912;
          goto LABEL_21;
        case 2:
          v8 = 0x67416E6F73726570;
          v11 = 0x6570795465;
          goto LABEL_12;
        case 3:
          v8 = 1702125924;
          break;
        case 4:
          v7 = 0xE900000000000079;
          v8 = 0x6144664F74726170;
          break;
        case 5:
          v7 = 0xEA00000000006B65;
          v8 = 0x6557664F74726170;
          break;
        case 6:
          v7 = 0xE600000000000000;
          v9 = 1935762803;
LABEL_21:
          v8 = v9 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
          break;
        case 7:
          v7 = 0xE800000000000000;
          v10 = 1633906540;
          goto LABEL_16;
        case 8:
          v8 = 0x4C636972656E6567;
          v7 = 0xEF6E6F697461636FLL;
          break;
        case 9:
          v8 = 1952540791;
          break;
        case 0xA:
          v8 = 0x764563696C627570;
          v7 = 0xEB00000000746E65;
          break;
        case 0xB:
          v8 = 0x6C616E6F73726570;
          v11 = 0x746E657645;
LABEL_12:
          v7 = v11 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 0xC:
          v8 = 0x746954636973756DLL;
          v7 = 0xEA0000000000656CLL;
          break;
        case 0xD:
          v7 = 0xEB00000000747369;
          v8 = 0x747241636973756DLL;
          break;
        case 0xE:
          v7 = 0xEA00000000006572;
          v8 = 0x6E6547636973756DLL;
          break;
        case 0xF:
          v8 = 1685024621;
          break;
        case 0x10:
          v7 = 0xE800000000000000;
          v10 = 1634891108;
LABEL_16:
          v8 = v10 | 0x6E6F697400000000;
          break;
        case 0x11:
          v7 = 0xE600000000000000;
          v8 = 0x706972547369;
          break;
        case 0x12:
          v8 = 0x6D69546C6C417369;
          v7 = 0xE900000000000065;
          break;
        case 0x13:
          v7 = 0xE900000000000072;
          v8 = 0x6564724F74726F73;
          break;
        default:
          break;
      }

      v12 = 0xE400000000000000;
      v13 = 1701736302;
      switch(a1)
      {
        case 1:
          v12 = 0xE600000000000000;
          v14 = 1936876912;
          goto LABEL_44;
        case 2:
          v13 = 0x67416E6F73726570;
          v16 = 0x6570795465;
          goto LABEL_35;
        case 3:
          v13 = 1702125924;
          break;
        case 4:
          v12 = 0xE900000000000079;
          v13 = 0x6144664F74726170;
          break;
        case 5:
          v12 = 0xEA00000000006B65;
          v13 = 0x6557664F74726170;
          break;
        case 6:
          v12 = 0xE600000000000000;
          v14 = 1935762803;
LABEL_44:
          v13 = v14 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
          break;
        case 7:
          v12 = 0xE800000000000000;
          v15 = 1633906540;
          goto LABEL_39;
        case 8:
          v13 = 0x4C636972656E6567;
          v12 = 0xEF6E6F697461636FLL;
          break;
        case 9:
          v13 = 1952540791;
          break;
        case 10:
          v13 = 0x764563696C627570;
          v12 = 0xEB00000000746E65;
          break;
        case 11:
          v13 = 0x6C616E6F73726570;
          v16 = 0x746E657645;
LABEL_35:
          v12 = v16 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 12:
          v13 = 0x746954636973756DLL;
          v12 = 0xEA0000000000656CLL;
          break;
        case 13:
          v12 = 0xEB00000000747369;
          v13 = 0x747241636973756DLL;
          break;
        case 14:
          v12 = 0xEA00000000006572;
          v13 = 0x6E6547636973756DLL;
          break;
        case 15:
          v13 = 1685024621;
          break;
        case 16:
          v12 = 0xE800000000000000;
          v15 = 1634891108;
LABEL_39:
          v13 = v15 | 0x6E6F697400000000;
          break;
        case 17:
          v12 = 0xE600000000000000;
          v13 = 0x706972547369;
          break;
        case 18:
          v13 = 0x6D69546C6C417369;
          v12 = 0xE900000000000065;
          break;
        case 19:
          v12 = 0xE900000000000072;
          v13 = 0x6564724F74726F73;
          break;
        default:
          break;
      }

      if (v8 == v13 && v7 == v12)
      {
        break;
      }

      v18 = sub_1C7551DBC();

      if ((v18 & 1) == 0)
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

unint64_t sub_1C6FC6228(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEE0064696C61766ELL;
      v8 = 0x4973497465737361;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000016;
          v7 = 0x80000001C7595980;
          break;
        case 2:
          v8 = 0x726F6353706F7263;
          v7 = 0xEF776F4C6F6F5465;
          break;
        case 3:
          v8 = 0x6E756F4365636166;
          v7 = 0xE900000000000074;
          break;
        case 4:
          v8 = 0xD000000000000011;
          v7 = 0x80000001C75959C0;
          break;
        case 5:
          v8 = 0xD000000000000019;
          v7 = 0x80000001C75959E0;
          break;
        default:
          break;
      }

      v9 = 0x4973497465737361;
      v10 = 0xEE0064696C61766ELL;
      switch(a1)
      {
        case 1:
          v9 = 0xD000000000000016;
          v10 = 0x80000001C7595980;
          break;
        case 2:
          v9 = 0x726F6353706F7263;
          v10 = 0xEF776F4C6F6F5465;
          break;
        case 3:
          v9 = 0x6E756F4365636166;
          v10 = 0xE900000000000074;
          break;
        case 4:
          v9 = 0xD000000000000011;
          v10 = 0x80000001C75959C0;
          break;
        case 5:
          v9 = 0xD000000000000019;
          v10 = 0x80000001C75959E0;
          break;
        default:
          break;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = sub_1C7551DBC();

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

unint64_t sub_1C6FC64B0(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_1C6FC6548(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_1C6FC65A8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEF776F4C6F6F5465;
      v8 = 0x726F6353706F7263;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000016;
          v7 = 0x80000001C7596170;
          break;
        case 2:
          break;
        case 3:
          v8 = 0x6E756F4365636166;
          v7 = 0xE900000000000074;
          break;
        case 4:
          v8 = 0xD000000000000011;
          v7 = 0x80000001C75959C0;
          break;
        case 5:
          v8 = 0x736E6961746E6F63;
          v7 = 0xEC00000074786554;
          break;
        default:
          v8 = 0xD00000000000002ALL;
          v7 = 0x80000001C7596140;
          break;
      }

      v9 = 0x726F6353706F7263;
      v10 = 0xEF776F4C6F6F5465;
      switch(a1)
      {
        case 1:
          v9 = 0xD000000000000016;
          v10 = 0x80000001C7596170;
          break;
        case 2:
          break;
        case 3:
          v9 = 0x6E756F4365636166;
          v10 = 0xE900000000000074;
          break;
        case 4:
          v9 = 0xD000000000000011;
          v10 = 0x80000001C75959C0;
          break;
        case 5:
          v9 = 0x736E6961746E6F63;
          v10 = 0xEC00000074786554;
          break;
        default:
          v9 = 0xD00000000000002ALL;
          v10 = 0x80000001C7596140;
          break;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = sub_1C7551DBC();

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

void sub_1C6FC6828()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_30_4();
  v2 = ~v1;
  for (i = v3 & ~v1; ((1 << i) & *(v0 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v2)
  {
    v5 = sub_1C755068C();
    v7 = v6;
    if (v5 == sub_1C755068C() && v7 == v8)
    {

      break;
    }

    v10 = sub_1C7551DBC();

    if (v10)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_25_0();
}

unint64_t sub_1C6FC6908(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE900000000000072;
      v8 = 0x6574636172616843;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE800000000000000;
          v8 = 0x6E6F697461636F4CLL;
          break;
        case 2:
          v7 = 0xE500000000000000;
          v8 = 0x746E657645;
          break;
        case 3:
          v7 = 0xE400000000000000;
          v8 = 1885958740;
          break;
        case 4:
          v7 = 0xE500000000000000;
          v8 = 0x7972657551;
          break;
        case 5:
          v8 = 0x6B61657262656954;
          v7 = 0xEA00000000007265;
          break;
        default:
          break;
      }

      v9 = 0x6574636172616843;
      v10 = 0xE900000000000072;
      switch(a1)
      {
        case 1:
          v10 = 0xE800000000000000;
          v9 = 0x6E6F697461636F4CLL;
          break;
        case 2:
          v10 = 0xE500000000000000;
          v9 = 0x746E657645;
          break;
        case 3:
          v10 = 0xE400000000000000;
          v9 = 1885958740;
          break;
        case 4:
          v10 = 0xE500000000000000;
          v9 = 0x7972657551;
          break;
        case 5:
          v9 = 0x6B61657262656954;
          v10 = 0xEA00000000007265;
          break;
        default:
          break;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = sub_1C7551DBC();

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

unint64_t sub_1C6FC6B2C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE600000000000000;
      v8 = 0x6E6F73726570;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE500000000000000;
          v8 = 0x646C696863;
          break;
        case 2:
          v7 = 0xE400000000000000;
          v8 = 2036490594;
          break;
        case 3:
          v7 = 0xE500000000000000;
          v8 = 0x726568746FLL;
          break;
        default:
          break;
      }

      v9 = 0xE600000000000000;
      v10 = 0x6E6F73726570;
      switch(a1)
      {
        case 1:
          v9 = 0xE500000000000000;
          v10 = 0x646C696863;
          break;
        case 2:
          v9 = 0xE400000000000000;
          v10 = 2036490594;
          break;
        case 3:
          v9 = 0xE500000000000000;
          v10 = 0x726568746FLL;
          break;
        default:
          break;
      }

      if (v8 == v10 && v7 == v9)
      {
        break;
      }

      v12 = sub_1C7551DBC();

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

unint64_t sub_1C6FC6CDC(unsigned __int16 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

void sub_1C6FC6D3C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_2_3(a1, a2, a3, a4, a5);
  *(v8 + 8 * v5) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_39_4(v6, v11);
  }
}

unint64_t sub_1C6FC6D6C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

void sub_1C6FC6DB8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_3_7(a1, a2, a3, a4);
  v6 = (v5[6] + 16 * v4);
  *v6 = v7;
  v6[1] = v8;
  *(v5[7] + 8 * v4) = v9;
  v10 = v5[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_22_5(v5, v12);
  }
}

void sub_1C6FC6DF4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_3_7(a1, a2, a3, a4);
  *(*(v5 + 48) + 8 * v4) = v6;
  OUTLINED_FUNCTION_70_2(v4, v8, v7, v5);
  if (v11)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_22_5(v9, v10);
  }
}

void sub_1C6FC6E30(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_3_7(a1, a2, a3, a4);
  v6 = (*(v5 + 48) + 48 * v4);
  v8 = v7[1];
  *v6 = *v7;
  v6[1] = v8;
  v6[2] = v7[2];
  OUTLINED_FUNCTION_70_2(v4, v10, v9, v5);
  if (v13)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_22_5(v11, v12);
  }
}

unint64_t sub_1C6FC6E80(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 32 * result);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  v8 = (a7[7] + 48 * result);
  v9 = a6[1];
  *v8 = *a6;
  v8[1] = v9;
  v8[2] = a6[2];
  v10 = a7[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v12;
  }

  return result;
}

void sub_1C6FC6EE0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_2_3(a1, a2, a3, a4, a5);
  sub_1C6F9ED18(v8, (v7 + 32 * v6));
  OUTLINED_FUNCTION_54_3();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v9;
  }
}

unint64_t sub_1C6FC6F20(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1C6FC6F68(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = OUTLINED_FUNCTION_19_6(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * result);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

void sub_1C6FC6FB4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_2_3(a1, a2, a3, a4, a5);
  v8 = v7 + 40 * v5;
  v10 = *(v9 + 16);
  *v8 = *v9;
  *(v8 + 16) = v10;
  *(v8 + 32) = *(v9 + 32);
  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_39_4(v6, v13);
  }
}

void sub_1C6FC6FF4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_2_3(a1, a2, a3, a4, a5);
  v8 = v7 + 56 * v5;
  v10 = *(v9 + 16);
  *v8 = *v9;
  *(v8 + 16) = v10;
  *(v8 + 32) = *(v9 + 32);
  *(v8 + 48) = *(v9 + 48);
  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_39_4(v6, v13);
  }
}

uint64_t sub_1C6FC703C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_19_6(a1, a3 + 8 * (a1 >> 6));
  *(v4[6] + 8 * result) = v5;
  *(v4[7] + 4 * result) = v6;
  v7 = v4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v4[2] = v9;
  }

  return result;
}

uint64_t sub_1C6FC7080(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = OUTLINED_FUNCTION_19_6(a1, a7 + 8 * (a1 >> 6));
  v9 = (v8[6] + 32 * result);
  *v9 = v10;
  v9[1] = v11;
  v9[2] = v12;
  v9[3] = v13;
  *(v8[7] + 8 * result) = v14;
  v15 = v8[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v8[2] = v17;
  }

  return result;
}

void sub_1C6FC70F8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_3_7(a1, a2, a3, a4);
  v6 = (v5[6] + 16 * v4);
  *v6 = v7;
  v6[1] = v8;
  *(v5[7] + 4 * v4) = v9;
  v10 = v5[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_22_5(v5, v12);
  }
}

_OWORD *sub_1C6FC7134(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1C6F9ED18(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_1C6FC719C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, double a6)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v6 = (a5[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = a5[7] + 16 * result;
  *v7 = a6;
  *(v7 + 8) = a4;
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void sub_1C6FC71EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, unint64_t))
{
  OUTLINED_FUNCTION_38_2();
  v11 = v10;
  OUTLINED_FUNCTION_3_7(v10, v12, v13, v14);
  v16 = *(v15 + 48);
  v17(0);
  OUTLINED_FUNCTION_12();
  (*(v18 + 32))(v16 + *(v18 + 72) * v11, v7);
  a6(v6, *(a4 + 56) + 32 * v11);
  OUTLINED_FUNCTION_54_3();
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v19;
  }
}

void sub_1C6FC7290(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = OUTLINED_FUNCTION_3_7(a1, a2, a3, a4);
  memcpy((*(v8 + 48) + 120 * v7), v9, 0x78uLL);
  *(*(a4 + 56) + 8 * a1) = a3;
  OUTLINED_FUNCTION_54_3();
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v10;
  }
}

void sub_1C6FC72F0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_3_7(a1, a2, a3, a4);
  *(*(v6 + 48) + v5) = v7;
  v8 = type metadata accessor for PromptSuggestionPersistedBundle(0);
  OUTLINED_FUNCTION_76(v8);
  sub_1C6FCA634();
  OUTLINED_FUNCTION_54_3();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v9;
  }
}

void sub_1C6FC7378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_38_2();
  v7 = v6;
  OUTLINED_FUNCTION_3_7(v6, v8, v9, v10);
  v12 = v11(0);
  OUTLINED_FUNCTION_76(v12);
  sub_1C6FCA634();
  *(*(a4 + 56) + 8 * v7) = v4;
  OUTLINED_FUNCTION_54_3();
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v13;
  }
}

uint64_t sub_1C6FC7400(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_19_6(a1, a3 + 8 * (a1 >> 6));
  *(v4[6] + 8 * result) = v5;
  *(v4[7] + 8 * result) = v6;
  v7 = v4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v4[2] = v9;
  }

  return result;
}

unint64_t sub_1C6FC7444(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1C6FC7488(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1C6FC74D0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (a1 >> 6) + 64) |= 1 << a1;
  type metadata accessor for PromptSuggestion(0);
  result = sub_1C6FCA634();
  v10 = (*(a5 + 56) + 16 * a1);
  *v10 = a3;
  v10[1] = a4;
  v11 = *(a5 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v13;
  }

  return result;
}

unint64_t sub_1C6FC758C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 40 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1C6FC75E8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (a1 >> 6) + 64) |= 1 << a1;
  v6 = (*(a5 + 48) + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  type metadata accessor for PromptSuggestion(0);
  result = sub_1C6FCA634();
  v8 = *(a5 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v10;
  }

  return result;
}

uint64_t sub_1C6FC7694(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = OUTLINED_FUNCTION_19_6(a1, a8 + 8 * (a1 >> 6));
  v10 = (v9[6] + 16 * result);
  *v10 = v11;
  v10[1] = v12;
  v13 = v9[7] + 32 * result;
  *v13 = v14;
  *(v13 + 8) = v15;
  *(v13 + 16) = v16;
  *(v13 + 24) = v17 & 1;
  v18 = v9[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    v9[2] = v20;
  }

  return result;
}

uint64_t sub_1C6FC76EC(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1C6F699F8(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void sub_1C6FC775C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_3_7(a1, a2, a3, a4);
  *(*(v5 + 48) + v4) = v6;
  OUTLINED_FUNCTION_70_2(v4, v8, v7, v5);
  if (v11)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_22_5(v9, v10);
  }
}

void sub_1C6FC7798(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_3_7(a1, a2, a3, a4);
  *(*(v5 + 48) + 2 * v4) = v6;
  OUTLINED_FUNCTION_70_2(v4, v8, v7, v5);
  if (v11)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_22_5(v9, v10);
  }
}

void sub_1C6FC77D4()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_1_13();
  v7 = OUTLINED_FUNCTION_4_3(v5, v6);
  sub_1C6F78124(v7, v8);
  OUTLINED_FUNCTION_0_2();
  if (v9)
  {
    __break(1u);
LABEL_12:
    sub_1C7551E4C();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A8);
  if (OUTLINED_FUNCTION_6_14())
  {
    v10 = OUTLINED_FUNCTION_23_6();
    sub_1C6F78124(v10, v0);
    OUTLINED_FUNCTION_5_1();
    if (!v12)
    {
      goto LABEL_12;
    }

    v4 = v11;
  }

  if (v3)
  {
    *(*(*v2 + 56) + 8 * v4) = v1;
    OUTLINED_FUNCTION_135_0();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_15_10();
    sub_1C6FC6D3C(v13, v14, v15, v1, v16);
    OUTLINED_FUNCTION_135_0();

    sub_1C75504FC();
  }
}

uint64_t sub_1C6FC78A4()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1C6F78124(v3, v1);
  OUTLINED_FUNCTION_0_2();
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215248);
  OUTLINED_FUNCTION_16_5();
  if (sub_1C7551A2C())
  {
    sub_1C6F78124(v4, v2);
    OUTLINED_FUNCTION_8_5();
    if (!v15)
    {
      goto LABEL_14;
    }

    v12 = v14;
  }

  v16 = *v0;
  if (v13)
  {
    v17 = (v16[7] + 16 * v12);
    *v17 = v8;
    v17[1] = v6;
    OUTLINED_FUNCTION_25_0();

    return sub_1C6FC1640(v18, v19);
  }

  else
  {
    sub_1C6FC6D6C(v12, v4, v2, v8, v6, v16);
    OUTLINED_FUNCTION_25_0();

    return sub_1C75504FC();
  }
}

void sub_1C6FC79C4()
{
  OUTLINED_FUNCTION_18_2();
  v3 = v2;
  sub_1C6F78124(v4, v5);
  OUTLINED_FUNCTION_0_2();
  if (v8)
  {
    __break(1u);
LABEL_12:
    sub_1C7551E4C();
    __break(1u);
    return;
  }

  v9 = v6;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DE0);
  OUTLINED_FUNCTION_12_8();
  if (sub_1C7551A2C())
  {
    v11 = OUTLINED_FUNCTION_62_5();
    sub_1C6F78124(v11, v0);
    OUTLINED_FUNCTION_11_6();
    if (!v13)
    {
      goto LABEL_12;
    }

    v9 = v12;
  }

  if (v10)
  {
    *(*(*v1 + 56) + 8 * v9) = v3;
    OUTLINED_FUNCTION_51_5();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_28_2();
    sub_1C6FC6DB8(v14, v15, v16, v17);
    OUTLINED_FUNCTION_51_5();

    sub_1C75504FC();
  }
}

id sub_1C6FC7AC8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_44_4(a1, a2);
  sub_1C6FC2A2C();
  OUTLINED_FUNCTION_0_2();
  if (v6)
  {
    __break(1u);
LABEL_14:
    sub_1C6F65BE8(0, &qword_1EDD0CE30);
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_61_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215308);
  if (OUTLINED_FUNCTION_27_5())
  {
    sub_1C6FC2A2C();
    OUTLINED_FUNCTION_11_6();
    if (!v8)
    {
      goto LABEL_14;
    }

    v4 = v7;
  }

  v9 = *v3;
  if (v5)
  {
    *(*(v9 + 56) + 8 * v4) = v2;
  }

  else
  {
    sub_1C6FC6DF4(v4, v11, v2, v9);

    return v11;
  }
}

uint64_t sub_1C6FC7BC8()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = OUTLINED_FUNCTION_4_3(v9, v7);
  sub_1C6FC2B48(v11, v12, v13, v14);
  OUTLINED_FUNCTION_0_2();
  if (v17)
  {
    __break(1u);
LABEL_14:
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

  v18 = v15;
  v19 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215260);
  OUTLINED_FUNCTION_50_2();
  if (sub_1C7551A2C())
  {
    v20 = OUTLINED_FUNCTION_45();
    sub_1C6FC2B48(v20, v21, v22, v2);
    OUTLINED_FUNCTION_20_8();
    if (!v24)
    {
      goto LABEL_14;
    }

    v18 = v23;
  }

  v25 = *v0;
  if (v19)
  {
    v26 = (v25[7] + 48 * v18);
    v27 = v10[1];
    *v26 = *v10;
    v26[1] = v27;
    v26[2] = v10[2];

    OUTLINED_FUNCTION_25_0();
  }

  else
  {
    sub_1C6FC6E80(v18, v8, v6, v4, v2, v10, v25);
    sub_1C75504FC();
    sub_1C75504FC();
    OUTLINED_FUNCTION_25_0();

    return sub_1C75504FC();
  }
}

_OWORD *sub_1C6FC7D4C()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_38_2();
  v6 = v5;
  v8 = OUTLINED_FUNCTION_4_3(v5, v7);
  sub_1C6F78124(v8, v9);
  OUTLINED_FUNCTION_0_2();
  if (v10)
  {
    __break(1u);
LABEL_14:
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACB0);
  if (OUTLINED_FUNCTION_6_14())
  {
    v11 = OUTLINED_FUNCTION_23_6();
    sub_1C6F78124(v11, v0);
    OUTLINED_FUNCTION_5_1();
    if (!v13)
    {
      goto LABEL_14;
    }

    v4 = v12;
  }

  if (v3)
  {
    OUTLINED_FUNCTION_26_2();
    OUTLINED_FUNCTION_135_0();

    return sub_1C6F9ED18(v14, v15);
  }

  else
  {
    sub_1C6FC6EE0(v4, v1, v0, v6, *v2);
    OUTLINED_FUNCTION_135_0();

    return sub_1C75504FC();
  }
}

void sub_1C6FC7E54()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_49_5();
  sub_1C754E82C();
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_48_4();
  sub_1C6FC2C04();
  OUTLINED_FUNCTION_0_2();
  if (v2)
  {
    __break(1u);
LABEL_10:
    sub_1C7551E4C();
    __break(1u);
    return;
  }

  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215350);
  if (OUTLINED_FUNCTION_6_14())
  {
    OUTLINED_FUNCTION_56_5();
    sub_1C6FC2C04();
    if ((v3 & 1) != (v4 & 1))
    {
      goto LABEL_10;
    }
  }

  if (v3)
  {
    OUTLINED_FUNCTION_26_2();
    OUTLINED_FUNCTION_25_0();

    sub_1C6F9ED18(v5, v6);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_65_1();
    v10 = v9(v8);
    OUTLINED_FUNCTION_69_6(v10, v11, v12, v13, MEMORY[0x1E698A848], sub_1C6F9ED18);
    OUTLINED_FUNCTION_25_0();
  }
}

void sub_1C6FC7FC8()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_21_8();
  v4 = v3;
  v6 = v5;
  v8 = OUTLINED_FUNCTION_4_3(v5, v7);
  sub_1C6F78124(v8, v9);
  OUTLINED_FUNCTION_0_2();
  if (v10)
  {
    __break(1u);
LABEL_12:
    sub_1C7551E4C();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215208);
  if (OUTLINED_FUNCTION_6_14())
  {
    v11 = OUTLINED_FUNCTION_23_6();
    sub_1C6F78124(v11, v4);
    OUTLINED_FUNCTION_5_1();
    if (!v13)
    {
      goto LABEL_12;
    }

    v2 = v12;
  }

  if (v1)
  {
    *(*(*v0 + 56) + v2) = v6;
    OUTLINED_FUNCTION_135_0();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_15_10();
    sub_1C6FC6F20(v14, v15, v16, v6, v17);
    OUTLINED_FUNCTION_135_0();

    sub_1C75504FC();
  }
}

uint64_t sub_1C6FC80A4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_40_8(v1, v2, v3, v4);
  OUTLINED_FUNCTION_0_2();
  if (v6)
  {
    __break(1u);
LABEL_13:
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215328);
  OUTLINED_FUNCTION_16_5();
  v8 = sub_1C7551A2C();
  if (v8)
  {
    v13 = OUTLINED_FUNCTION_41_3();
    sub_1C6F78124(v13, v14);
    OUTLINED_FUNCTION_8_5();
    if (!v15)
    {
      goto LABEL_13;
    }
  }

  if (v7)
  {
    OUTLINED_FUNCTION_68_2(v8, v9, v10, v11, v12, *v0);
    OUTLINED_FUNCTION_25_0();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_58_2();
    sub_1C6FC6F68(v18, v19, v20, v21, v22, v23);
    OUTLINED_FUNCTION_25_0();

    return sub_1C75504FC();
  }
}

void sub_1C6FC8180()
{
  OUTLINED_FUNCTION_134();
  v4 = v3;
  OUTLINED_FUNCTION_38_2();
  v6 = v5;
  v7 = *(v5 + 24);
  __swift_mutable_project_boxed_opaque_existential_0(v5, v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  v11 = v10 - v9;
  (*(v12 + 16))(v10 - v9);
  sub_1C6FCA740(v11, v2, v1, v4, v0, v7);
  __swift_destroy_boxed_opaque_existential_1(v6);
  OUTLINED_FUNCTION_135_0();
}

uint64_t sub_1C6FC8278()
{
  OUTLINED_FUNCTION_33();
  v5 = v4;
  OUTLINED_FUNCTION_1_13();
  v8 = OUTLINED_FUNCTION_4_3(v6, v7);
  sub_1C6F78124(v8, v9);
  OUTLINED_FUNCTION_0_2();
  if (v10)
  {
    __break(1u);
LABEL_13:
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5);
  v11 = OUTLINED_FUNCTION_6_14();
  if (v11)
  {
    v15 = OUTLINED_FUNCTION_23_6();
    sub_1C6F78124(v15, v0);
    OUTLINED_FUNCTION_5_1();
    if (!v16)
    {
      goto LABEL_13;
    }
  }

  if (v3)
  {
    OUTLINED_FUNCTION_46_3(v11, v12, v13, v14, *v2);
    OUTLINED_FUNCTION_25_0();
  }

  else
  {
    v19 = OUTLINED_FUNCTION_15_10();
    sub_1C6FC6D3C(v19, v20, v21, v1, v22);
    OUTLINED_FUNCTION_25_0();

    return sub_1C75504FC();
  }
}

uint64_t sub_1C6FC8354()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_1_13();
  v5 = OUTLINED_FUNCTION_4_3(v3, v4);
  sub_1C6F78124(v5, v6);
  OUTLINED_FUNCTION_0_2();
  if (v7)
  {
    __break(1u);
LABEL_13:
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_43_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215250);
  if (OUTLINED_FUNCTION_6_14())
  {
    v8 = OUTLINED_FUNCTION_23_6();
    sub_1C6F78124(v8, v0);
    OUTLINED_FUNCTION_8_5();
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  if (v2)
  {
    OUTLINED_FUNCTION_135_0();

    return sub_1C6FCA404(v10, v11);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_35_0();
    sub_1C6FC6FB4(v14, v15, v0, v1, v16);
    OUTLINED_FUNCTION_135_0();

    return sub_1C75504FC();
  }
}

uint64_t sub_1C6FC8440()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_1_13();
  v5 = OUTLINED_FUNCTION_4_3(v3, v4);
  sub_1C6F78124(v5, v6);
  OUTLINED_FUNCTION_0_2();
  if (v7)
  {
    __break(1u);
LABEL_13:
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_43_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215218);
  if (OUTLINED_FUNCTION_6_14())
  {
    v8 = OUTLINED_FUNCTION_23_6();
    sub_1C6F78124(v8, v0);
    OUTLINED_FUNCTION_8_5();
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  if (v2)
  {
    OUTLINED_FUNCTION_135_0();

    return sub_1C6FCA3A8(v10, v11);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_35_0();
    sub_1C6FC6FF4(v14, v15, v0, v1, v16);
    OUTLINED_FUNCTION_135_0();

    return sub_1C75504FC();
  }
}

uint64_t sub_1C6FC852C(uint64_t a1, float a2)
{
  sub_1C6F86DB0(a1);
  OUTLINED_FUNCTION_0_2();
  if (v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152B0);
  result = OUTLINED_FUNCTION_27_5();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_1C6F86DB0(a1);
  if ((v9 & 1) != (v11 & 1))
  {
LABEL_11:
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

  v8 = result;
LABEL_5:
  if (v9)
  {
    *(*(*v2 + 56) + 4 * v8) = a2;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_41_3();

    return sub_1C6FC703C(v12, v13, v14);
  }

  return result;
}

uint64_t sub_1C6FC8618()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = OUTLINED_FUNCTION_4_3(v9, v7);
  sub_1C6FC2E14(v11, v12, v13, v14);
  OUTLINED_FUNCTION_0_2();
  if (v17)
  {
    __break(1u);
LABEL_14:
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

  v18 = v15;
  v19 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215348);
  OUTLINED_FUNCTION_50_2();
  if (sub_1C7551A2C())
  {
    v20 = OUTLINED_FUNCTION_17_7();
    sub_1C6FC2E14(v20, v21, v22, v23);
    OUTLINED_FUNCTION_20_8();
    if (!v25)
    {
      goto LABEL_14;
    }

    v18 = v24;
  }

  v26 = *v0;
  if (v19)
  {
    *(*(v26 + 56) + 8 * v18) = v10;
    OUTLINED_FUNCTION_25_0();
  }

  else
  {
    sub_1C6FC7080(v18, v8, v6, v4, v2, v10, v26);
    sub_1C75504FC();
    sub_1C75504FC();
    OUTLINED_FUNCTION_25_0();

    return sub_1C75504FC();
  }
}

void sub_1C6FC875C()
{
  OUTLINED_FUNCTION_18_2();
  v3 = v2;
  sub_1C6F78124(v4, v5);
  OUTLINED_FUNCTION_0_2();
  if (v8)
  {
    __break(1u);
LABEL_12:
    sub_1C7551E4C();
    __break(1u);
    return;
  }

  v9 = v6;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215340);
  OUTLINED_FUNCTION_12_8();
  if (sub_1C7551A2C())
  {
    v11 = OUTLINED_FUNCTION_62_5();
    sub_1C6F78124(v11, v0);
    OUTLINED_FUNCTION_11_6();
    if (!v13)
    {
      goto LABEL_12;
    }

    v9 = v12;
  }

  if (v10)
  {
    *(*(*v1 + 56) + 4 * v9) = v3;
    OUTLINED_FUNCTION_51_5();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_28_2();
    sub_1C6FC70F8(v14, v15, v16, v17);
    OUTLINED_FUNCTION_51_5();

    sub_1C75504FC();
  }
}

void sub_1C6FC8860()
{
  OUTLINED_FUNCTION_33();
  v5 = v4;
  OUTLINED_FUNCTION_1_13();
  v8 = OUTLINED_FUNCTION_4_3(v6, v7);
  sub_1C6F78124(v8, v9);
  OUTLINED_FUNCTION_0_2();
  if (v10)
  {
    __break(1u);
LABEL_13:
    sub_1C7551E4C();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5);
  v11 = OUTLINED_FUNCTION_6_14();
  if (v11)
  {
    v15 = OUTLINED_FUNCTION_23_6();
    sub_1C6F78124(v15, v0);
    OUTLINED_FUNCTION_5_1();
    if (!v16)
    {
      goto LABEL_13;
    }
  }

  if (v3)
  {
    OUTLINED_FUNCTION_46_3(v11, v12, v13, v14, *v2);
    OUTLINED_FUNCTION_25_0();
  }

  else
  {
    v19 = OUTLINED_FUNCTION_15_10();
    sub_1C6FC6D3C(v19, v20, v21, v1, v22);
    OUTLINED_FUNCTION_25_0();

    sub_1C75504FC();
  }
}

_OWORD *sub_1C6FC8950(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_44_4(a1, a2);
  sub_1C6FC33F4();
  OUTLINED_FUNCTION_0_2();
  if (v6)
  {
    __break(1u);
LABEL_14:
    type metadata accessor for MXISerializeOption(0);
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_61_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215338);
  if (OUTLINED_FUNCTION_27_5())
  {
    sub_1C6FC33F4();
    OUTLINED_FUNCTION_11_6();
    if (!v8)
    {
      goto LABEL_14;
    }

    v4 = v7;
  }

  if (v5)
  {
    v9 = OUTLINED_FUNCTION_26_2();

    return sub_1C6F9ED18(v9, v10);
  }

  else
  {
    sub_1C6FC7134(v4, v12, v2, *v3);

    return v12;
  }
}

uint64_t sub_1C6FC8A54()
{
  OUTLINED_FUNCTION_1_13();
  v6 = v5;
  v9 = OUTLINED_FUNCTION_4_3(v7, v8);
  sub_1C6F78124(v9, v10);
  OUTLINED_FUNCTION_0_2();
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215320);
  if (OUTLINED_FUNCTION_6_14())
  {
    v12 = OUTLINED_FUNCTION_23_6();
    sub_1C6F78124(v12, v0);
    OUTLINED_FUNCTION_5_1();
    if (!v14)
    {
      goto LABEL_14;
    }

    v4 = v13;
  }

  if (v3)
  {
    v15 = (*(*v2 + 56) + 16 * v4);
    *v15 = v6;
    *(v15 + 1) = v1;
    OUTLINED_FUNCTION_51_5();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_15_10();
    sub_1C6FC719C(v18, v19, v20, v1, v21, v6);
    OUTLINED_FUNCTION_51_5();

    return sub_1C75504FC();
  }
}

void sub_1C6FC8B58()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_49_5();
  sub_1C7551A1C();
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_48_4();
  sub_1C6FC2F4C();
  OUTLINED_FUNCTION_0_2();
  if (v2)
  {
    __break(1u);
LABEL_10:
    sub_1C7551E4C();
    __break(1u);
    return;
  }

  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2197E0);
  if (OUTLINED_FUNCTION_6_14())
  {
    OUTLINED_FUNCTION_56_5();
    sub_1C6FC2F4C();
    if ((v3 & 1) != (v4 & 1))
    {
      goto LABEL_10;
    }
  }

  if (v3)
  {
    OUTLINED_FUNCTION_26_2();
    OUTLINED_FUNCTION_25_0();

    sub_1C6F9ED18(v5, v6);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_65_1();
    v10 = v9(v8);
    OUTLINED_FUNCTION_69_6(v10, v11, v12, v13, MEMORY[0x1E69E6D30], sub_1C6FCABEC);
    OUTLINED_FUNCTION_25_0();
  }
}

uint64_t sub_1C6FC8CE0()
{
  OUTLINED_FUNCTION_18_2();
  sub_1C6FC2A70();
  OUTLINED_FUNCTION_0_2();
  if (v5)
  {
    __break(1u);
LABEL_12:
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

  v6 = v3;
  v7 = v4;
  v8 = OUTLINED_FUNCTION_55_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8);
  OUTLINED_FUNCTION_12_8();
  if (sub_1C7551A2C())
  {
    sub_1C6FC2A70();
    OUTLINED_FUNCTION_5_1();
    if (!v10)
    {
      goto LABEL_12;
    }

    v6 = v9;
  }

  if (v7)
  {
    *(*(*v2 + 56) + 8 * v6) = v1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_41_3();
    sub_1C6FC7290(v12, v13, v1, v14);
    return sub_1C6FCA6E4(v0, v15);
  }
}

void sub_1C6FC8E00()
{
  OUTLINED_FUNCTION_134();
  v1 = v0;
  sub_1C6FC3364(v0);
  OUTLINED_FUNCTION_0_2();
  if (v3)
  {
    __break(1u);
LABEL_11:
    sub_1C7551E4C();
    __break(1u);
    return;
  }

  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152F8);
  OUTLINED_FUNCTION_12_8();
  if (sub_1C7551A2C())
  {
    sub_1C6FC3364(v1);
    OUTLINED_FUNCTION_5_1();
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  if (v4)
  {
    v6 = type metadata accessor for PromptSuggestionPersistedBundle(0);
    OUTLINED_FUNCTION_76(v6);
    sub_1C6FCA68C();
    OUTLINED_FUNCTION_135_0();
  }

  else
  {
    OUTLINED_FUNCTION_135_0();

    sub_1C6FC72F0(v7, v8, v9, v10);
  }
}

void sub_1C6FC8F1C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_49_5();
  type metadata accessor for GlobalTrait();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_67_1();
  sub_1C6FC2FA4();
  OUTLINED_FUNCTION_0_2();
  if (v5)
  {
    __break(1u);
LABEL_12:
    sub_1C7551E4C();
    __break(1u);
    return;
  }

  v6 = v3;
  v7 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219EB0);
  OUTLINED_FUNCTION_16_5();
  if (sub_1C7551A2C())
  {
    OUTLINED_FUNCTION_56_5();
    sub_1C6FC2FA4();
    OUTLINED_FUNCTION_20_8();
    if (!v9)
    {
      goto LABEL_12;
    }

    v6 = v8;
  }

  v10 = *v1;
  if (v7)
  {
    *(*(v10 + 56) + 8 * v6) = v0;
    OUTLINED_FUNCTION_25_0();
  }

  else
  {
    OUTLINED_FUNCTION_64();
    sub_1C6FCAB20();
    v12 = OUTLINED_FUNCTION_35_0();
    sub_1C6FC7378(v12, v13, v0, v10);
    OUTLINED_FUNCTION_25_0();
  }
}

uint64_t sub_1C6FC908C(double a1)
{
  sub_1C6FC2FFC();
  OUTLINED_FUNCTION_0_2();
  if (v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = v3;
  v7 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152D8);
  result = OUTLINED_FUNCTION_27_5();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_1C6FC2FFC();
  if ((v7 & 1) != (v9 & 1))
  {
LABEL_11:
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

  v6 = result;
LABEL_5:
  if (v7)
  {
    *(*(*v1 + 56) + 8 * v6) = a1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_41_3();

    return sub_1C6FC7400(v10, v11, v12);
  }

  return result;
}

uint64_t sub_1C6FC91A0()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_18_2();
  sub_1C6FC330C();
  OUTLINED_FUNCTION_0_2();
  if (v4)
  {
    __break(1u);
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152E8);
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

  v5 = v2;
  v6 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152E0);
  OUTLINED_FUNCTION_12_8();
  if (sub_1C7551A2C())
  {
    sub_1C6FC330C();
    OUTLINED_FUNCTION_5_1();
    if (!v8)
    {
      goto LABEL_14;
    }

    v5 = v7;
  }

  if (v6)
  {
    *(*(*v1 + 56) + 8 * v5) = v0;
    OUTLINED_FUNCTION_135_0();
  }

  else
  {
    v11 = OUTLINED_FUNCTION_41_3();
    sub_1C6FC7444(v11, v12, v0, v13);
    OUTLINED_FUNCTION_135_0();

    return sub_1C75504FC();
  }
}

unint64_t sub_1C6FC92A0()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_21_8();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1C6FC3364(v3);
  OUTLINED_FUNCTION_0_2();
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152F0);
  if (OUTLINED_FUNCTION_6_14())
  {
    sub_1C6FC3364(v4);
    OUTLINED_FUNCTION_5_1();
    if (!v11)
    {
      goto LABEL_14;
    }

    v2 = v10;
  }

  if (v1)
  {
    v12 = (*(*v0 + 56) + 16 * v2);
    *v12 = v8;
    v12[1] = v6;

    OUTLINED_FUNCTION_135_0();
  }

  else
  {
    OUTLINED_FUNCTION_135_0();

    return sub_1C6FC7488(v15, v16, v17, v18, v19);
  }
}

unint64_t sub_1C6FC93A0()
{
  OUTLINED_FUNCTION_134();
  v4 = OUTLINED_FUNCTION_9_5(v2, v3);
  sub_1C6F86DB0(v4);
  OUTLINED_FUNCTION_0_2();
  if (v7)
  {
    __break(1u);
LABEL_14:
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152C0);
  OUTLINED_FUNCTION_12_8();
  if (sub_1C7551A2C())
  {
    v10 = OUTLINED_FUNCTION_62_5();
    sub_1C6F86DB0(v10);
    OUTLINED_FUNCTION_11_6();
    if (!v12)
    {
      goto LABEL_14;
    }

    v8 = v11;
  }

  if (v9)
  {
    *(*(*v1 + 56) + 8 * v8) = v0;
    OUTLINED_FUNCTION_135_0();
  }

  else
  {
    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_135_0();

    return sub_1C6FC7444(v15, v16, v17, v18);
  }
}

void sub_1C6FC949C()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v16 = v3;
  type metadata accessor for Hastings.Feature();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_67_1();
  sub_1C6FC27A8();
  OUTLINED_FUNCTION_0_2();
  if (v7)
  {
    __break(1u);
LABEL_12:
    sub_1C7551E4C();
    __break(1u);
    return;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_16_5();
  if (sub_1C7551A2C())
  {
    OUTLINED_FUNCTION_56_5();
    sub_1C6FC27A8();
    OUTLINED_FUNCTION_20_8();
    if (!v11)
    {
      goto LABEL_12;
    }

    v8 = v10;
  }

  v12 = *v0;
  if (v9)
  {
    *(*(v12 + 56) + 8 * v8) = v16;
    OUTLINED_FUNCTION_25_0();
  }

  else
  {
    OUTLINED_FUNCTION_64();
    sub_1C6FCAB20();
    v14 = OUTLINED_FUNCTION_35_0();
    sub_1C6FC7378(v14, v15, v16, v12);
    OUTLINED_FUNCTION_25_0();
  }
}

void sub_1C6FC9608()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  type metadata accessor for PromptSuggestion(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_24_11();
  sub_1C6FC3170();
  OUTLINED_FUNCTION_0_2();
  if (v9)
  {
    __break(1u);
LABEL_12:
    sub_1C7551E4C();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219740);
  OUTLINED_FUNCTION_50_2();
  if (sub_1C7551A2C())
  {
    OUTLINED_FUNCTION_24_11();
    sub_1C6FC3170();
    OUTLINED_FUNCTION_20_8();
    if (!v13)
    {
      goto LABEL_12;
    }

    v10 = v12;
  }

  v14 = *v0;
  if (v11)
  {
    v15 = (*(v14 + 56) + 16 * v10);
    *v15 = v5;
    v15[1] = v3;
    OUTLINED_FUNCTION_25_0();
  }

  else
  {
    sub_1C6FCAB20();
    sub_1C6FC74D0(v10, v1, v5, v3, v14);
    OUTLINED_FUNCTION_25_0();
  }
}

uint64_t sub_1C6FC97FC()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_38_2();
  v5 = v4;
  v7 = OUTLINED_FUNCTION_4_3(v4, v6);
  sub_1C6F78124(v7, v8);
  OUTLINED_FUNCTION_0_2();
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_43_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215288);
  if (OUTLINED_FUNCTION_6_14())
  {
    v10 = OUTLINED_FUNCTION_23_6();
    sub_1C6F78124(v10, v0);
    OUTLINED_FUNCTION_8_5();
    if (!v12)
    {
      goto LABEL_14;
    }

    v2 = v11;
  }

  if (v3)
  {
    v13 = *(*v1 + 56) + 40 * v2;
    *(v13 + 32) = *(v5 + 32);
    v14 = *(v5 + 16);
    *v13 = *v5;
    *(v13 + 16) = v14;

    OUTLINED_FUNCTION_135_0();
  }

  else
  {
    v17 = OUTLINED_FUNCTION_17_7();
    sub_1C6FC758C(v17, v18, v19, v20, v21);
    OUTLINED_FUNCTION_135_0();

    return sub_1C75504FC();
  }
}

void sub_1C6FC9914()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_38_2();
  v4 = OUTLINED_FUNCTION_4_3(v2, v3);
  sub_1C6F78124(v4, v5);
  OUTLINED_FUNCTION_0_2();
  if (v6)
  {
    __break(1u);
LABEL_11:
    sub_1C7551E4C();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_43_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152D0);
  if (OUTLINED_FUNCTION_6_14())
  {
    v7 = OUTLINED_FUNCTION_23_6();
    sub_1C6F78124(v7, v0);
    OUTLINED_FUNCTION_8_5();
    if (!v8)
    {
      goto LABEL_11;
    }
  }

  if (v1)
  {
    v9 = type metadata accessor for PromptSuggestion(0);
    OUTLINED_FUNCTION_76(v9);
    sub_1C6FCA68C();
    OUTLINED_FUNCTION_135_0();
  }

  else
  {
    v10 = OUTLINED_FUNCTION_17_7();
    sub_1C6FC75E8(v10, v11, v12, v13, v14);
    OUTLINED_FUNCTION_135_0();

    sub_1C75504FC();
  }
}

void sub_1C6FC9A1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  sub_1C6F78124(a5, a6);
  OUTLINED_FUNCTION_0_2();
  if (v14)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v12;
  v16 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215268);
  if ((sub_1C7551A2C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = sub_1C6F78124(a5, a6);
  if ((v16 & 1) != (v18 & 1))
  {
LABEL_13:
    sub_1C7551E4C();
    __break(1u);
    return;
  }

  v15 = v17;
LABEL_5:
  v19 = *v6;
  if (v16)
  {
    v20 = *(v19 + 56) + 32 * v15;
    *v20 = a1;
    *(v20 + 8) = a2;
    *(v20 + 16) = a3;
    *(v20 + 24) = a4 & 1;
    OUTLINED_FUNCTION_52_1();

    sub_1C6FCA52C(v21, v22, v23, v24);
  }

  else
  {
    sub_1C6FC7694(v15, a5, a6, a1, a2, a3, a4 & 1, v19);
    OUTLINED_FUNCTION_52_1();

    sub_1C75504FC();
  }
}

uint64_t sub_1C6FC9B94()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_1_13();
  v6 = OUTLINED_FUNCTION_4_3(v4, v5);
  sub_1C6F78124(v6, v7);
  OUTLINED_FUNCTION_0_2();
  if (v8)
  {
    __break(1u);
LABEL_13:
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151F0);
  v9 = OUTLINED_FUNCTION_6_14();
  if (v9)
  {
    v13 = OUTLINED_FUNCTION_23_6();
    sub_1C6F78124(v13, v0);
    OUTLINED_FUNCTION_5_1();
    if (!v14)
    {
      goto LABEL_13;
    }
  }

  if (v3)
  {
    OUTLINED_FUNCTION_46_3(v9, v10, v11, v12, *v2);
    OUTLINED_FUNCTION_135_0();
  }

  else
  {
    v17 = OUTLINED_FUNCTION_15_10();
    sub_1C6FC6D3C(v17, v18, v19, v1, v20);
    OUTLINED_FUNCTION_135_0();

    return sub_1C75504FC();
  }
}

uint64_t sub_1C6FC9C84()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_38_2();
  v4 = OUTLINED_FUNCTION_4_3(v2, v3);
  sub_1C6F78124(v4, v5);
  OUTLINED_FUNCTION_0_2();
  if (v6)
  {
    __break(1u);
LABEL_13:
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_43_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219730);
  if (OUTLINED_FUNCTION_6_14())
  {
    v7 = OUTLINED_FUNCTION_23_6();
    sub_1C6F78124(v7, v0);
    OUTLINED_FUNCTION_8_5();
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_26_2();
    OUTLINED_FUNCTION_135_0();

    return sub_1C6F699F8(v9, v10);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_17_7();
    sub_1C6FC76EC(v13, v14, v15, v16, v17);
    OUTLINED_FUNCTION_135_0();

    return sub_1C75504FC();
  }
}

uint64_t sub_1C6FC9D70(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_5(a1, a2);
  sub_1C6FC2AD8();
  OUTLINED_FUNCTION_0_2();
  if (v7)
  {
    __break(1u);
LABEL_12:
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215258);
  OUTLINED_FUNCTION_12_8();
  if (sub_1C7551A2C())
  {
    OUTLINED_FUNCTION_56_5();
    sub_1C6FC2AD8();
    OUTLINED_FUNCTION_5_1();
    if (!v11)
    {
      goto LABEL_12;
    }

    v8 = v10;
  }

  v12 = *v3;
  if (v9)
  {
    *(*(v12 + 56) + 8 * v8) = v2;
  }

  else
  {
    v21 = *a2;
    v14 = *(a2 + 16);
    v19 = *(a2 + 24);
    v20 = v14;
    v15 = *(a2 + 32);
    v17 = *(a2 + 40);
    v18 = v15;
    sub_1C6FC6E30(v8, a2, v2, v12);
    sub_1C6FCA460(&v21, v16);
    sub_1C6FCA4BC(&v20, v16);
    sub_1C6FCA4BC(&v19, v16);
    sub_1C6FCA4BC(&v18, v16);
    return sub_1C6FCA4BC(&v17, v16);
  }
}

void sub_1C6FC9EF0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t *a5)
{
  v11 = OUTLINED_FUNCTION_9_5(a1, a2);
  v12(v11);
  OUTLINED_FUNCTION_0_2();
  if (v13)
  {
    __break(1u);
LABEL_12:
    sub_1C7551E4C();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_43_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  OUTLINED_FUNCTION_16_5();
  if (sub_1C7551A2C())
  {
    v14 = OUTLINED_FUNCTION_62_5();
    a4(v14);
    OUTLINED_FUNCTION_8_5();
    if (!v16)
    {
      goto LABEL_12;
    }

    v7 = v15;
  }

  if (v8)
  {
    *(*(*v6 + 56) + 8 * v7) = v5;
    OUTLINED_FUNCTION_52_1();
  }

  else
  {
    v19 = OUTLINED_FUNCTION_28_2();
    sub_1C6FC6DF4(v19, v20, v21, v22);
    OUTLINED_FUNCTION_52_1();
  }
}

uint64_t sub_1C6FCA010()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_40_8(v1, v2, v3, v4);
  OUTLINED_FUNCTION_0_2();
  if (v6)
  {
    __break(1u);
LABEL_13:
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215210);
  OUTLINED_FUNCTION_16_5();
  v8 = sub_1C7551A2C();
  if (v8)
  {
    v13 = OUTLINED_FUNCTION_41_3();
    sub_1C6F78124(v13, v14);
    OUTLINED_FUNCTION_8_5();
    if (!v15)
    {
      goto LABEL_13;
    }
  }

  if (v7)
  {
    OUTLINED_FUNCTION_68_2(v8, v9, v10, v11, v12, *v0);
    OUTLINED_FUNCTION_25_0();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_58_2();
    sub_1C6FC6D6C(v18, v19, v20, v21, v22, v23);
    OUTLINED_FUNCTION_25_0();

    return sub_1C75504FC();
  }
}

void sub_1C6FCA0EC(uint64_t a1, void *a2)
{
  v3 = sub_1C7550B3C();

  [a2 setFetchPropertySets_];
}

id sub_1C6FCA158(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1C7550B3C();
  v6 = [a3 fetchAssetsWithUUIDs:v5 options:a2];

  return v6;
}

unint64_t sub_1C6FCA1C0()
{
  result = qword_1EC2151D0;
  if (!qword_1EC2151D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2151D0);
  }

  return result;
}

uint64_t sub_1C6FCA214(void *a1)
{
  v2 = [a1 uuid];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C755068C();

  return v3;
}

_BYTE *sub_1C6FCA2A4(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C6FCA354()
{
  result = qword_1EC2151E0;
  if (!qword_1EC2151E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2151E0);
  }

  return result;
}

uint64_t sub_1C6FCA4BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C6FCA52C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_1C6FCA634()
{
  v2 = OUTLINED_FUNCTION_47_0();
  v3(v2);
  OUTLINED_FUNCTION_12();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1C6FCA68C()
{
  v2 = OUTLINED_FUNCTION_47_0();
  v3(v2);
  OUTLINED_FUNCTION_12();
  (*(v4 + 40))(v0, v1);
  return v0;
}

_OWORD *sub_1C6FCA740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v28 = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v27);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a1, a6);
  v12 = *a5;
  v13 = sub_1C6F78124(a2, a3);
  if (__OFADD__(v12[2], (v14 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = v13;
  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2197F0);
  if ((sub_1C7551A2C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = sub_1C6F78124(a2, a3);
  if ((v16 & 1) != (v18 & 1))
  {
LABEL_10:
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

  v15 = v17;
LABEL_5:
  v19 = *a5;
  if (v16)
  {
    v20 = (v19[7] + 32 * v15);
    __swift_destroy_boxed_opaque_existential_1(v20);
    return sub_1C6F9ED18(v27, v20);
  }

  else
  {
    v22 = __swift_mutable_project_boxed_opaque_existential_0(v27, v28);
    v23 = MEMORY[0x1EEE9AC00](v22);
    v25 = v27 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v25, v23);
    sub_1C6FCAA04(v15, a2, a3, v25, v19, a6);
    __swift_destroy_boxed_opaque_existential_1(v27);
    return sub_1C75504FC();
  }
}

uint64_t __swift_mutable_project_boxed_opaque_existential_0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

_OWORD *sub_1C6FCAA04(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v19 = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v18);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v13 = (a5[6] + 16 * a1);
  *v13 = a2;
  v13[1] = a3;
  result = sub_1C6F9ED18(&v18, (a5[7] + 32 * a1));
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

uint64_t sub_1C6FCAAD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6FCAB20()
{
  v2 = OUTLINED_FUNCTION_47_0();
  v3(v2);
  OUTLINED_FUNCTION_12();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1C6FCAB78(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t OUTLINED_FUNCTION_40_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C6F78124(a3, a4);
}

uint64_t OUTLINED_FUNCTION_42_4()
{

  return sub_1C7551F3C();
}

uint64_t OUTLINED_FUNCTION_68_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = (*(a6 + 56) + 16 * v8);
  result = v9[1];
  *v9 = v7;
  v9[1] = v6;
  return result;
}

void OUTLINED_FUNCTION_69_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, unint64_t))
{

  sub_1C6FC71EC(v9, v8, v6, v7, a5, a6);
}

PhotosIntelligence::EmbeddingSearchThresholdingModels::ThresholdDomain_optional __swiftcall EmbeddingSearchThresholdingModels.ThresholdDomain.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t EmbeddingSearchThresholdingModels.ThresholdDomain.rawValue.getter()
{
  result = 0xD000000000000018;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C6FCAE4C@<X0>(unint64_t *a1@<X8>)
{
  result = EmbeddingSearchThresholdingModels.ThresholdDomain.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C6FCAE84()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD07600);
  __swift_project_value_buffer(v0, qword_1EDD07600);
  return sub_1C754FEFC();
}

void static EmbeddingSearchThresholdingModels.thresholdingModel(for:)(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *(a2 + 24) = &type metadata for EmbeddingSearchThresholdingModels.VersionHandlingEmbeddingSearchThresholdModel;
  *(a2 + 32) = &off_1F46ACFD0;
  v4 = [objc_opt_self() currentUnifiedEmbeddingVersion];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
  }

  else
  {
    v6 = 0;
  }

  *a2 = v3;
  *(a2 + 8) = v6;
  *(a2 + 16) = v5 == 0;
}

void sub_1C6FCAFA0(void *a1)
{
  v4 = *v1;
  v5 = *v1;
  swift_getObjectType();
  v6 = [a1 calibrationVersion];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 unsignedIntegerValue];
    if (qword_1EDD075F8 != -1)
    {
      swift_once();
    }

    v9 = sub_1C754FF1C();
    __swift_project_value_buffer(v9, qword_1EDD07600);
    v10 = sub_1C754FEEC();
    v11 = sub_1C755118C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = v8;
      _os_log_impl(&dword_1C6F5C000, v10, v11, "Calibration version from text embedding result = %lu.", v12, 0xCu);
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
    }

    switch(v8)
    {
      case 1uLL:
      case 2uLL:
        LOBYTE(v24[0]) = v5;
        sub_1C6FCB6A4();

        return;
      case 3uLL:
        v19 = qword_1C755D140;
        goto LABEL_21;
      case 4uLL:
        v19 = &unk_1C755D110;
        goto LABEL_21;
      case 5uLL:
        v19 = qword_1C755D170;
        goto LABEL_21;
      case 6uLL:
        v20 = sub_1C754FEEC();
        v21 = sub_1C755119C();
        if (!os_log_type_enabled(v20, v21))
        {
          goto LABEL_25;
        }

        v22 = swift_slowAlloc();
        *v22 = 134217984;
        *(v22 + 4) = 6;
        v23 = "This is an unsupported configuration for embedding search in Photos. MAD provided calibration version %lu.";
        goto LABEL_24;
      case 7uLL:
        v19 = qword_1C755D1A0;
        goto LABEL_21;
      case 8uLL:
      case 9uLL:
        v19 = qword_1C755D1D0;
LABEL_21:
        PNTextEmbeddingResult.calibratedScoreForImageSearch(with:)(*&v19[v4]);

        return;
      default:
        v20 = sub_1C754FEEC();
        v21 = sub_1C755119C();
        if (!os_log_type_enabled(v20, v21))
        {
          goto LABEL_25;
        }

        v22 = swift_slowAlloc();
        *v22 = 134217984;
        *(v22 + 4) = v8;
        v23 = "This is an unsupported configuration for embedding search. MAD provided calibration version %lu.";
LABEL_24:
        _os_log_impl(&dword_1C6F5C000, v20, v21, v23, v22, 0xCu);
        MEMORY[0x1CCA5F8E0](v22, -1, -1);
LABEL_25:

        sub_1C6FCB970();
        swift_allocError();
        swift_willThrow();

        break;
    }
  }

  else
  {
    if (qword_1EDD075F8 != -1)
    {
      swift_once();
    }

    v13 = sub_1C754FF1C();
    __swift_project_value_buffer(v13, qword_1EDD07600);
    v14 = sub_1C754FEEC();
    v15 = sub_1C755119C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1C6F5C000, v14, v15, "Missing calibration version. Falling back to using the embedding model version to find the correct thresholds.", v16, 2u);
      MEMORY[0x1CCA5F8E0](v16, -1, -1);
    }

    sub_1C6FCB40C(v24);
    if (!v2)
    {
      v17 = v25;
      v18 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      (*(v18 + 8))(a1, v17, v18);
      __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }
}

void sub_1C6FCB40C(uint64_t a1@<X8>)
{
  if (v1[16])
  {
    if (qword_1EDD075F8 != -1)
    {
      swift_once();
    }

    v2 = sub_1C754FF1C();
    __swift_project_value_buffer(v2, qword_1EDD07600);
    v3 = sub_1C754FEEC();
    v4 = sub_1C755119C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "This is an unsupported configuration for embedding search. Unable to verify embedding model version.";
      v7 = v4;
      v8 = v3;
      v9 = v5;
      v10 = 2;
LABEL_6:
      _os_log_impl(&dword_1C6F5C000, v8, v7, v6, v9, v10);
      MEMORY[0x1CCA5F8E0](v5, -1, -1);
    }

LABEL_7:

    sub_1C6FCB970();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v11 = *(v1 + 1);
    v12 = *v1;
    switch(v11)
    {
      case 3:
        *(a1 + 24) = &type metadata for EmbeddingSearchThresholdingModels.EmbeddingSearchThresholdingModel_MD3;
        *(a1 + 32) = &off_1F46AD108;
        *a1 = v12;
        return;
      case 4:
        v13 = qword_1C755D140[v12];
        v14 = &type metadata for EmbeddingSearchThresholdingModels.EmbeddingSearchThresholdingModel_MD4V1;
        v15 = &off_1F46AD120;
        goto LABEL_14;
      case 5:
        v13 = qword_1C755D170[v12];
        v14 = &type metadata for EmbeddingSearchThresholdingModels.EmbeddingSearchThresholdingModel_MD5V2;
        v15 = &off_1F46AD138;
        goto LABEL_14;
      case 6:
      case 7:
        v13 = qword_1C755D1A0[v12];
        v14 = &type metadata for EmbeddingSearchThresholdingModels.EmbeddingSearchThresholdingModel_MD6V1;
        v15 = &off_1F46AD150;
        goto LABEL_14;
      case 8:
        v13 = qword_1C755D1D0[v12];
        v14 = &type metadata for EmbeddingSearchThresholdingModels.EmbeddingSearchThresholdingModel_MD7V1;
        v15 = &off_1F46AD168;
LABEL_14:
        *(a1 + 24) = v14;
        *(a1 + 32) = v15;
        *a1 = v13;
        break;
      default:
        if (qword_1EDD075F8 != -1)
        {
          swift_once();
        }

        v16 = sub_1C754FF1C();
        __swift_project_value_buffer(v16, qword_1EDD07600);
        v3 = sub_1C754FEEC();
        v17 = sub_1C755119C();
        if (!os_log_type_enabled(v3, v17))
        {
          goto LABEL_7;
        }

        v5 = swift_slowAlloc();
        *v5 = 134217984;
        *(v5 + 4) = v11;
        v6 = "This is an unsupported configuration for embedding search. Embedding model version %ld not supported.";
        v7 = v17;
        v8 = v3;
        v9 = v5;
        v10 = 12;
        goto LABEL_6;
    }
  }
}

void sub_1C6FCB6A4()
{
  switch(*v0)
  {
    case 4:
    case 5:
      v1 = [objc_opt_self() textEmbeddingSPIVersion];
      if (!v1)
      {
        goto LABEL_6;
      }

      v2 = v1;
      v3 = [v1 integerValue];

      if (v3 == 1)
      {
        swift_getObjectType();
        v4 = 0.4;
      }

      else
      {
        if (v3)
        {
LABEL_6:
          sub_1C6FCB970();
          swift_allocError();
          swift_willThrow();
          return;
        }

        swift_getObjectType();
        v4 = 3.75;
      }

      PNTextEmbeddingResult.calibratedScoreForImageSearch(with:)(v4);
      return;
    default:
      return;
  }
}

double sub_1C6FCB7B0()
{
  sub_1C6FCB40C(v5);
  if (!v0)
  {
    v2 = v6;
    v3 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v1 = (*(v3 + 16))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return v1;
}

uint64_t EmbeddingSearchThresholdingModels.EmbeddingSearchThresholdingModelConstant.baseThresholdForQueryCalibration.getter()
{
  sub_1C6FCB970();
  swift_allocError();
  return swift_willThrow();
}

unint64_t sub_1C6FCB970()
{
  result = qword_1EC215368;
  if (!qword_1EC215368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215368);
  }

  return result;
}

void EmbeddingSearchThresholdingModels.EmbeddingSearchThresholdingModelCustomBase.threshold(textEmbeddingResult:)()
{
  v1 = *v0;
  swift_getObjectType();
  PNTextEmbeddingResult.calibratedScoreForImageSearch(with:)(v1);
}

unint64_t sub_1C6FCBA4C()
{
  result = qword_1EC215370;
  if (!qword_1EC215370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215370);
  }

  return result;
}

unint64_t sub_1C6FCBAA4()
{
  result = qword_1EC215378;
  if (!qword_1EC215378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215378);
  }

  return result;
}

_BYTE *sub_1C6FCBBE4(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for EmbeddingSearchThresholdingModels.VersionHandlingEmbeddingSearchThresholdModel(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && a1[17])
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 6;
      v2 = v3 - 6;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for EmbeddingSearchThresholdingModels.VersionHandlingEmbeddingSearchThresholdModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

unint64_t sub_1C6FCBD38()
{
  result = qword_1EC215388;
  if (!qword_1EC215388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215388);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleMusicEligibilityState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1C6FCBE14(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C6FCBF60(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001C7597D40 == a2;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6F5365666173 && a2 == 0xEE00746E756F4373)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C6FCC040(char a1)
{
  if (a1)
  {
    return 0x676E6F5365666173;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1C6FCC088(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65746164696C6176 && a2 == 0xEF73746573734164;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001C7597C40 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001C7597C60 == a2;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x80000001C7597C80 == a2;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x80000001C7597CA0 == a2;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000016 && 0x80000001C7597CC0 == a2;
            if (v10 || (sub_1C7551DBC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000019 && 0x80000001C7597CE0 == a2;
              if (v11 || (sub_1C7551DBC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000010 && 0x80000001C7597D00 == a2;
                if (v12 || (sub_1C7551DBC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x79726F7473 && a2 == 0xE500000000000000;
                  if (v13 || (sub_1C7551DBC() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6C616E6F73726570 && a2 == 0xEE00737469617254;
                    if (v14 || (sub_1C7551DBC() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x72546C61626F6C67 && a2 == 0xEC00000073746961;
                      if (v15 || (sub_1C7551DBC() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x73754D656C707061 && a2 == 0xEF73676E6F536369;
                        if (v16 || (sub_1C7551DBC() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0xD000000000000011 && 0x80000001C7597D20 == a2)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_1C7551DBC();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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
      }
    }
  }
}

unint64_t sub_1C6FCC484(char a1)
{
  result = 0x65746164696C6176;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0xD000000000000019;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x79726F7473;
      break;
    case 9:
      result = 0x6C616E6F73726570;
      break;
    case 10:
      result = 0x72546C61626F6C67;
      break;
    case 11:
      result = 0x73754D656C707061;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C6FCC63C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001C7597D80 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C6FCC6D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001C7597D80 == a2;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001C7597DA0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1C6FCC7AC(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1C6FCC7E4()
{
  OUTLINED_FUNCTION_115();
  v2 = v1 == 0x7265746C69666E75 && v0 == 0xEF746E756F436465;
  if (v2 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x64657265746C6966 && v0 == 0xED0000746E756F43)
  {

    return 1;
  }

  else
  {
    v5 = sub_1C7551DBC();

    if (v5)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C6FCC8B8(char a1)
{
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](a1 & 1);
  return sub_1C7551FAC();
}

uint64_t sub_1C6FCC900(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x4D6572756C696166 && a2 == 0xEE00656761737365)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C6FCC9A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7367616C66 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C6FCCA2C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001C7597D60 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C6FCCAC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696A6F6D45736168 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x80000001C7597DE0 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000010 && 0x80000001C7597E00 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C7551DBC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C6FCCBF0(char a1)
{
  if (!a1)
  {
    return 0x696A6F6D45736168;
  }

  if (a1 == 1)
  {
    return 0xD000000000000016;
  }

  return 0xD000000000000010;
}

uint64_t sub_1C6FCCC54(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ELL && 0x80000001C7597DC0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C6FCCCF0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7265626269477369 && a2 == 0xEB00000000687369)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C6FCCD8C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x64656D6565447369 && a2 == 0xEC00000065666153)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C6FCCE28(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001C7597E20 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C6FCCECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6FCBF60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6FCCEF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C6FCC038();
  *a1 = result;
  return result;
}

uint64_t sub_1C6FCCF1C(uint64_t a1)
{
  v2 = sub_1C6FCE56C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FCCF58(uint64_t a1)
{
  v2 = sub_1C6FCE56C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6FCCF9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6FCC088(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6FCCFC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C6FCC47C();
  *a1 = result;
  return result;
}

uint64_t sub_1C6FCCFEC(uint64_t a1)
{
  v2 = sub_1C6FCE4C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FCD028(uint64_t a1)
{
  v2 = sub_1C6FCE4C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6FCD068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6FCC63C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C6FCD0B0@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_10_6();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C6FCD0DC(uint64_t a1)
{
  v2 = sub_1C6FCE80C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FCD118(uint64_t a1)
{
  v2 = sub_1C6FCE80C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6FCD154(uint64_t a1)
{
  v2 = sub_1C6FCE5C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FCD190(uint64_t a1)
{
  v2 = sub_1C6FCE5C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6FCD1D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6FCC6D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6FCD1FC(uint64_t a1)
{
  v2 = sub_1C6FCE764();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FCD238(uint64_t a1)
{
  v2 = sub_1C6FCE764();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6FCD274(uint64_t a1)
{
  v2 = sub_1C6FCE614();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FCD2B0(uint64_t a1)
{
  v2 = sub_1C6FCE614();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6FCD2F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6FCC900(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C6FCD31C(uint64_t a1)
{
  v2 = sub_1C6FCE518();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FCD358(uint64_t a1)
{
  v2 = sub_1C6FCE518();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6FCD398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6FCC9A4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C6FCD3C4(uint64_t a1)
{
  v2 = sub_1C6FCE6BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FCD400(uint64_t a1)
{
  v2 = sub_1C6FCE6BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6FCD440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6FCCA2C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C6FCD46C(uint64_t a1)
{
  v2 = sub_1C6FCE668();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FCD4A8(uint64_t a1)
{
  v2 = sub_1C6FCE668();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6FCD4EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6FCCAC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6FCD514@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C6FCCBE8();
  *a1 = result;
  return result;
}

uint64_t sub_1C6FCD53C(uint64_t a1)
{
  v2 = sub_1C6FCE9B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FCD578(uint64_t a1)
{
  v2 = sub_1C6FCE9B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6FCD5B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6FCCC54(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C6FCD5E4(uint64_t a1)
{
  v2 = sub_1C6FCE8B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FCD620(uint64_t a1)
{
  v2 = sub_1C6FCE8B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6FCD660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6FCCCF0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C6FCD68C(uint64_t a1)
{
  v2 = sub_1C6FCE860();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FCD6C8(uint64_t a1)
{
  v2 = sub_1C6FCE860();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6FCD708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6FCCD8C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C6FCD734(uint64_t a1)
{
  v2 = sub_1C6FCE95C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FCD770(uint64_t a1)
{
  v2 = sub_1C6FCE95C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6FCD7B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6FCCE28(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C6FCD7DC(uint64_t a1)
{
  v2 = sub_1C6FCEA04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FCD818(uint64_t a1)
{
  v2 = sub_1C6FCEA04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SafetyControllerDiagnosticReport.SafetyCheck.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v22;
  a20 = v23;
  v115 = v21;
  v25 = v24;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215390);
  OUTLINED_FUNCTION_3_0();
  v98[10] = v26;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_36();
  v109 = v28;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215398);
  OUTLINED_FUNCTION_3_0();
  v98[11] = v29;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_36();
  v108 = v31;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2153A0);
  OUTLINED_FUNCTION_3_0();
  v98[9] = v32;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_36();
  v106 = v34;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2153A8);
  OUTLINED_FUNCTION_3_0();
  v98[8] = v35;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_36();
  v104 = v37;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2153B0);
  OUTLINED_FUNCTION_3_0();
  v98[7] = v38;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_36();
  v100 = v40;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2153B8);
  OUTLINED_FUNCTION_3_0();
  v98[6] = v41;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_36();
  v99 = v43;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2153C0);
  OUTLINED_FUNCTION_3_0();
  v98[5] = v44;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_108_0(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2153C8);
  OUTLINED_FUNCTION_2_4(v47, &a17);
  v98[4] = v48;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_108_0(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2153D0);
  OUTLINED_FUNCTION_2_4(v51, &a15);
  v98[3] = v52;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_108_0(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2153D8);
  OUTLINED_FUNCTION_2_4(v55, &a14);
  v98[2] = v56;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_108_0(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2153E0);
  OUTLINED_FUNCTION_2_4(v59, &a10);
  v98[0] = v60;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v61);
  v63 = v98 - v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2153E8);
  OUTLINED_FUNCTION_2_4(v64, &a11);
  v98[1] = v65;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v66);
  v68 = v98 - v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2153F0);
  OUTLINED_FUNCTION_3_0();
  v98[12] = v70;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v71);
  v73 = v98 - v72;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2153F8);
  OUTLINED_FUNCTION_3_0();
  v113 = v74;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v75);
  v77 = v98 - v76;
  v78 = v20[1];
  v114 = *v20;
  v112 = v78;
  v79 = *(v20 + 16);
  v80 = v25;
  v82 = v25[3];
  v81 = v25[4];
  __swift_project_boxed_opaque_existential_1(v80, v82);
  sub_1C6FCE4C4();
  v116 = v77;
  sub_1C755200C();
  switch(v79)
  {
    case 1:
      LOBYTE(v118) = 1;
      sub_1C6FCE9B0();
      OUTLINED_FUNCTION_91_1();
      LOBYTE(v118) = 0;
      v94 = v115;
      v95 = v98[14];
      sub_1C7551CDC();
      if (!v94)
      {
        LOBYTE(v118) = 1;
        OUTLINED_FUNCTION_122_0();
        OUTLINED_FUNCTION_102_2();
        OUTLINED_FUNCTION_122_0();
      }

      OUTLINED_FUNCTION_15_11();
      v91 = v68;
      v92 = v95;
      goto LABEL_18;
    case 2:
      OUTLINED_FUNCTION_102_2();
      sub_1C6FCE95C();
      OUTLINED_FUNCTION_18_3();
      v88 = v98[13];
      sub_1C7551CDC();
      OUTLINED_FUNCTION_26_3();
      v90 = v63;
      goto LABEL_28;
    case 3:
      LOBYTE(v118) = 3;
      sub_1C6FCE8B4();
      OUTLINED_FUNCTION_91_1();
      v118 = v114;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215418);
      sub_1C6FD4524(&qword_1EDD0CEF8, sub_1C6FCE908);
      sub_1C7551D2C();
      OUTLINED_FUNCTION_26_3();
      v91 = OUTLINED_FUNCTION_66_4();
LABEL_18:
      v93(v91, v92);
      (*(v113 + 8))(v82, v73);
      goto LABEL_31;
    case 4:
      LOBYTE(v118) = 4;
      sub_1C6FCE860();
      v87 = v98[16];
      OUTLINED_FUNCTION_13_8();
      v88 = v98[18];
      OUTLINED_FUNCTION_47_6();
      sub_1C7551CDC();
      goto LABEL_27;
    case 5:
      LOBYTE(v118) = 5;
      sub_1C6FCE80C();
      v87 = v98[19];
      OUTLINED_FUNCTION_13_8();
      LOBYTE(v118) = v114;
      sub_1C6FCE7B8();
      v88 = v98[20];
      OUTLINED_FUNCTION_47_6();
      sub_1C7551D2C();
      goto LABEL_27;
    case 6:
      LOBYTE(v118) = 6;
      sub_1C6FCE764();
      OUTLINED_FUNCTION_18_3();
      LOBYTE(v118) = v114;
      HIBYTE(a10) = 0;
      sub_1C6FCE7B8();
      v96 = v115;
      sub_1C7551D2C();
      if (!v96)
      {
        LOBYTE(v118) = 1;
        sub_1C7551CDC();
      }

      OUTLINED_FUNCTION_26_3();
      v90 = OUTLINED_FUNCTION_66_4();
      goto LABEL_29;
    case 7:
      LOBYTE(v118) = 7;
      sub_1C6FCE6BC();
      v87 = v99;
      OUTLINED_FUNCTION_13_8();
      v118 = v114;
      v119 = v112 & 0x101;
      sub_1C6FCE710();
      v88 = v102;
      OUTLINED_FUNCTION_47_6();
      sub_1C7551D2C();
      goto LABEL_27;
    case 8:
      LOBYTE(v118) = 8;
      sub_1C6FCE668();
      v87 = v100;
      OUTLINED_FUNCTION_13_8();
      v88 = v103;
      OUTLINED_FUNCTION_47_6();
      sub_1C7551CDC();
      goto LABEL_27;
    case 9:
      LOBYTE(v118) = 9;
      sub_1C6FCE614();
      v87 = v104;
      OUTLINED_FUNCTION_13_8();
      OUTLINED_FUNCTION_74_0();
      v88 = v105;
      OUTLINED_FUNCTION_47_6();
      sub_1C7551D0C();
      if (!v21)
      {
        OUTLINED_FUNCTION_37_7();
      }

      goto LABEL_27;
    case 10:
      LOBYTE(v118) = 10;
      sub_1C6FCE5C0();
      v87 = v106;
      OUTLINED_FUNCTION_13_8();
      OUTLINED_FUNCTION_74_0();
      v88 = v107;
      OUTLINED_FUNCTION_47_6();
      sub_1C7551D0C();
      if (!v21)
      {
        OUTLINED_FUNCTION_37_7();
      }

      goto LABEL_27;
    case 11:
      LOBYTE(v118) = 11;
      sub_1C6FCE56C();
      v87 = v108;
      OUTLINED_FUNCTION_13_8();
      OUTLINED_FUNCTION_74_0();
      v88 = v110;
      OUTLINED_FUNCTION_47_6();
      sub_1C7551D0C();
      if (!v21)
      {
        OUTLINED_FUNCTION_37_7();
      }

      goto LABEL_27;
    case 12:
      LOBYTE(v118) = 12;
      sub_1C6FCE518();
      v87 = v109;
      OUTLINED_FUNCTION_13_8();
      v88 = v111;
      sub_1C7551C7C();
LABEL_27:
      OUTLINED_FUNCTION_26_3();
      v90 = v87;
LABEL_28:
      v97 = v88;
LABEL_29:
      v89(v90, v97);
      v85 = *(v113 + 8);
      v86 = v73;
      break;
    default:
      LOBYTE(v118) = 0;
      sub_1C6FCEA04();
      v83 = v116;
      v81 = v117;
      sub_1C7551C6C();
      sub_1C7551D0C();
      OUTLINED_FUNCTION_26_3();
      v84(v73, v69);
      v85 = *(v113 + 8);
      v86 = v83;
      break;
  }

  v85(v86, v81);
LABEL_31:
  OUTLINED_FUNCTION_125();
}

unint64_t sub_1C6FCE4C4()
{
  result = qword_1EDD0D3E0;
  if (!qword_1EDD0D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D3E0);
  }

  return result;
}

unint64_t sub_1C6FCE518()
{
  result = qword_1EC215400;
  if (!qword_1EC215400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215400);
  }

  return result;
}

unint64_t sub_1C6FCE56C()
{
  result = qword_1EC215408;
  if (!qword_1EC215408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215408);
  }

  return result;
}

unint64_t sub_1C6FCE5C0()
{
  result = qword_1EDD077E8;
  if (!qword_1EDD077E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD077E8);
  }

  return result;
}

unint64_t sub_1C6FCE614()
{
  result = qword_1EDD077E0;
  if (!qword_1EDD077E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD077E0);
  }

  return result;
}

unint64_t sub_1C6FCE668()
{
  result = qword_1EDD077F0;
  if (!qword_1EDD077F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD077F0);
  }

  return result;
}

unint64_t sub_1C6FCE6BC()
{
  result = qword_1EDD077D0;
  if (!qword_1EDD077D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD077D0);
  }

  return result;
}

unint64_t sub_1C6FCE710()
{
  result = qword_1EDD094F0;
  if (!qword_1EDD094F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD094F0);
  }

  return result;
}

unint64_t sub_1C6FCE764()
{
  result = qword_1EDD077C0;
  if (!qword_1EDD077C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD077C0);
  }

  return result;
}

unint64_t sub_1C6FCE7B8()
{
  result = qword_1EDD0C060;
  if (!qword_1EDD0C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0C060);
  }

  return result;
}

unint64_t sub_1C6FCE80C()
{
  result = qword_1EC215410;
  if (!qword_1EC215410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215410);
  }

  return result;
}

unint64_t sub_1C6FCE860()
{
  result = qword_1EDD077C8;
  if (!qword_1EDD077C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD077C8);
  }

  return result;
}

unint64_t sub_1C6FCE8B4()
{
  result = qword_1EDD0D340;
  if (!qword_1EDD0D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D340);
  }

  return result;
}

unint64_t sub_1C6FCE908()
{
  result = qword_1EDD0F488[0];
  if (!qword_1EDD0F488[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD0F488);
  }

  return result;
}

unint64_t sub_1C6FCE95C()
{
  result = qword_1EDD0D408;
  if (!qword_1EDD0D408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D408);
  }

  return result;
}

unint64_t sub_1C6FCE9B0()
{
  result = qword_1EDD0D358;
  if (!qword_1EDD0D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D358);
  }

  return result;
}

unint64_t sub_1C6FCEA04()
{
  result = qword_1EDD077D8;
  if (!qword_1EDD077D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD077D8);
  }

  return result;
}

void SafetyControllerDiagnosticReport.SafetyCheck.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v21;
  a20 = v22;
  v214 = v20;
  v24 = v23;
  v209 = v25;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215420);
  OUTLINED_FUNCTION_3_0();
  v197 = v26;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_36();
  v207 = v28;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215428);
  OUTLINED_FUNCTION_3_0();
  v198 = v29;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_36();
  v208 = v31;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215430);
  OUTLINED_FUNCTION_3_0();
  v195 = v32;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_36();
  v206 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215438);
  OUTLINED_FUNCTION_2_4(v35, &a16);
  v194 = v36;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_36();
  v212 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215440);
  OUTLINED_FUNCTION_2_4(v39, &a15);
  v191 = v40;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_36();
  v205 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215448);
  OUTLINED_FUNCTION_2_4(v43, &a10);
  v189 = v44;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_36();
  v204 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215450);
  OUTLINED_FUNCTION_2_4(v47, &a13);
  v190 = v48;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_36();
  v211 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215458);
  OUTLINED_FUNCTION_2_4(v51, &a9);
  v186 = v52;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_36();
  v210 = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215460);
  OUTLINED_FUNCTION_2_4(v55, v216);
  v183 = v56;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_36();
  v203 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215468);
  OUTLINED_FUNCTION_2_4(v59, &v215);
  v182 = v60;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_36();
  v202 = v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215470);
  OUTLINED_FUNCTION_2_4(v63, &v210);
  v179 = v64;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_36();
  v201 = v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215478);
  OUTLINED_FUNCTION_2_4(v67, &v212);
  v181 = v68;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v172 - v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215480);
  OUTLINED_FUNCTION_3_0();
  v178 = v73;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v172 - v75;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215488);
  OUTLINED_FUNCTION_3_0();
  v79 = v78;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v172 - v81;
  v213 = v24;
  v83 = OUTLINED_FUNCTION_82();
  __swift_project_boxed_opaque_existential_1(v83, v84);
  sub_1C6FCE4C4();
  v85 = v214;
  sub_1C7551FFC();
  if (v85)
  {
    goto LABEL_8;
  }

  v175 = v76;
  v174 = v72;
  v176 = v71;
  v86 = v210;
  v87 = v211;
  v88 = v212;
  v177 = v79;
  v214 = v82;
  v89 = sub_1C7551C5C();
  sub_1C6FD4444(v89, 0);
  if (v92 == v93 >> 1)
  {
LABEL_7:
    v101 = sub_1C75518EC();
    swift_allocError();
    v103 = v102;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490);
    *v103 = &type metadata for SafetyControllerDiagnosticReport.SafetyCheck;
    sub_1C7551B5C();
    sub_1C75518DC();
    (*(*(v101 - 8) + 104))(v103, *MEMORY[0x1E69E6AF8], v101);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_15_11();
    v104 = OUTLINED_FUNCTION_82();
    v105(v104);
LABEL_8:
    v87 = v213;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v87);
    OUTLINED_FUNCTION_125();
    return;
  }

  v172 = 0;
  if (v92 < (v93 >> 1))
  {
    v94 = v77;
    v173 = *(v91 + v92);
    v95 = sub_1C6FD47F4(v92 + 1, v93 >> 1, v90, v91, v92, v93);
    v97 = v96;
    v99 = v98;
    swift_unknownObjectRelease();
    if (v97 == v99 >> 1)
    {
      v100 = v172;
      switch(v173)
      {
        case 1:
          LOBYTE(v215) = 1;
          sub_1C6FCE9B0();
          OUTLINED_FUNCTION_10_9();
          OUTLINED_FUNCTION_93_1();
          OUTLINED_FUNCTION_42_5();
          LOBYTE(v215) = 0;
          OUTLINED_FUNCTION_105_1();
          v118 = sub_1C7551BCC();
          LOBYTE(v215) = 1;
          v119 = sub_1C7551BCC();
          OUTLINED_FUNCTION_102_2();
          LODWORD(v212) = sub_1C7551BCC();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_26_3();
          v167 = OUTLINED_FUNCTION_111();
          v168(v167);
          v169 = OUTLINED_FUNCTION_9_6();
          v170(v169, v77);
          v211 = 0;
          v171 = 256;
          if ((v119 & 1) == 0)
          {
            v171 = 0;
          }

          v161 = v171 & 0xFFFFFFFFFFFFFFFELL | v118 & 1;
          v162 = 0x10000;
          if ((v212 & 1) == 0)
          {
            v162 = 0;
          }

          goto LABEL_53;
        case 2:
          OUTLINED_FUNCTION_102_2();
          sub_1C6FCE95C();
          OUTLINED_FUNCTION_10_9();
          v113 = v214;
          sub_1C7551B4C();
          OUTLINED_FUNCTION_42_5();
          if (v100)
          {
            OUTLINED_FUNCTION_15_11();
            v115 = v113;
            goto LABEL_30;
          }

          v124 = v180;
          OUTLINED_FUNCTION_71_1();
          sub_1C7551BCC();
          OUTLINED_FUNCTION_30_5();
          v130 = v133;
          swift_unknownObjectRelease();
          v134 = OUTLINED_FUNCTION_9_6();
          v135(v134, v124);
          (*(v113 + 1))(v214, v94);
LABEL_39:
          v211 = 0;
          v100 = v130 & 1;
          goto LABEL_48;
        case 3:
          LOBYTE(v215) = 3;
          sub_1C6FCE8B4();
          OUTLINED_FUNCTION_7_3();
          OUTLINED_FUNCTION_42_5();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215418);
          sub_1C6FD4524(&qword_1EC2154A8, sub_1C6FD4598);
          v116 = v184;
          OUTLINED_FUNCTION_71_1();
          sub_1C7551C1C();
          OUTLINED_FUNCTION_30_5();
          swift_unknownObjectRelease();
          v136 = OUTLINED_FUNCTION_9_6();
          v137(v136, v116);
          v138 = OUTLINED_FUNCTION_41_3();
          v139(v138);
          v211 = 0;
          v100 = v215;
          goto LABEL_48;
        case 4:
          LOBYTE(v215) = 4;
          sub_1C6FCE860();
          OUTLINED_FUNCTION_7_3();
          OUTLINED_FUNCTION_42_5();
          v108 = v185;
          OUTLINED_FUNCTION_71_1();
          sub_1C7551BCC();
          OUTLINED_FUNCTION_30_5();
          v130 = v129;
          swift_unknownObjectRelease();
          goto LABEL_38;
        case 5:
          LOBYTE(v215) = 5;
          sub_1C6FCE80C();
          OUTLINED_FUNCTION_10_9();
          v120 = v214;
          sub_1C7551B4C();
          OUTLINED_FUNCTION_42_5();
          if (!v100)
          {
            sub_1C6FD44D0();
            v121 = v187;
            OUTLINED_FUNCTION_71_1();
            sub_1C7551C1C();
            OUTLINED_FUNCTION_30_5();
            swift_unknownObjectRelease();
            v149 = OUTLINED_FUNCTION_9_6();
            v150(v149, v121);
            v151 = OUTLINED_FUNCTION_41_3();
            v152(v151);
            v211 = 0;
            v100 = v215;
            goto LABEL_48;
          }

          OUTLINED_FUNCTION_15_11();
          v115 = v120;
LABEL_30:
          v114(v115, v77);
          swift_unknownObjectRelease();
          goto LABEL_9;
        case 6:
          LOBYTE(v215) = 6;
          sub_1C6FCE764();
          OUTLINED_FUNCTION_10_9();
          OUTLINED_FUNCTION_93_1();
          OUTLINED_FUNCTION_42_5();
          HIBYTE(a10) = 0;
          sub_1C6FD44D0();
          sub_1C7551C1C();
          OUTLINED_FUNCTION_44_5();
          v126 = *(v125 - 256);
          if (v99)
          {
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_26_3();
            v127 = OUTLINED_FUNCTION_82();
            v128(v127);
            (*(v126 + 8))(v88, v77);
            goto LABEL_9;
          }

          v212 = v215;
          HIBYTE(a10) = 1;
          v158 = sub_1C7551BCC();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_26_3();
          v159 = OUTLINED_FUNCTION_82();
          v160(v159);
          (*(v126 + 8))(v88, v94);
          v211 = 0;
          v161 = 256;
          if ((v158 & 1) == 0)
          {
            v161 = 0;
          }

          v162 = v212;
LABEL_53:
          v100 = v161 | v162;
          goto LABEL_48;
        case 7:
          LOBYTE(v215) = 7;
          sub_1C6FCE6BC();
          OUTLINED_FUNCTION_7_3();
          OUTLINED_FUNCTION_42_5();
          sub_1C6FD447C();
          v117 = v188;
          OUTLINED_FUNCTION_71_1();
          sub_1C7551C1C();
          OUTLINED_FUNCTION_30_5();
          swift_unknownObjectRelease();
          v140 = OUTLINED_FUNCTION_9_6();
          v141(v140, v117);
          v142 = OUTLINED_FUNCTION_41_3();
          v143(v142);
          v100 = v215;
          v144 = 256;
          if (!v216[1])
          {
            v144 = 0;
          }

          v211 = v144 | v216[0];
          goto LABEL_48;
        case 8:
          LOBYTE(v215) = 8;
          sub_1C6FCE668();
          OUTLINED_FUNCTION_7_3();
          OUTLINED_FUNCTION_42_5();
          v108 = v192;
          OUTLINED_FUNCTION_71_1();
          sub_1C7551BCC();
          OUTLINED_FUNCTION_30_5();
          v130 = v153;
          swift_unknownObjectRelease();
LABEL_38:
          v154 = OUTLINED_FUNCTION_9_6();
          v155(v154, v108);
          (*(v95 + 8))(v86, v94);
          goto LABEL_39;
        case 9:
          LOBYTE(v215) = 9;
          sub_1C6FCE614();
          OUTLINED_FUNCTION_7_3();
          OUTLINED_FUNCTION_42_5();
          OUTLINED_FUNCTION_75_3();
          v106 = v193;
          OUTLINED_FUNCTION_70_3();
          sub_1C7551BFC();
          OUTLINED_FUNCTION_44_5();
          OUTLINED_FUNCTION_39_5();
          v211 = sub_1C7551BFC();
          if (v99)
          {
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_26_3();
            v112 = v212;
            goto LABEL_27;
          }

          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_26_3();
          v157 = v212;
          goto LABEL_47;
        case 10:
          LOBYTE(v215) = 10;
          sub_1C6FCE5C0();
          OUTLINED_FUNCTION_7_3();
          OUTLINED_FUNCTION_42_5();
          OUTLINED_FUNCTION_75_3();
          v106 = v196;
          OUTLINED_FUNCTION_70_3();
          sub_1C7551BFC();
          OUTLINED_FUNCTION_44_5();
          OUTLINED_FUNCTION_39_5();
          v211 = sub_1C7551BFC();
          if (v99)
          {
            swift_unknownObjectRelease();
            v107 = v195;
            goto LABEL_26;
          }

          swift_unknownObjectRelease();
          v132 = v195;
          goto LABEL_46;
        case 11:
          LOBYTE(v215) = 11;
          sub_1C6FCE56C();
          OUTLINED_FUNCTION_7_3();
          OUTLINED_FUNCTION_42_5();
          OUTLINED_FUNCTION_75_3();
          v106 = v200;
          OUTLINED_FUNCTION_70_3();
          sub_1C7551BFC();
          OUTLINED_FUNCTION_44_5();
          OUTLINED_FUNCTION_39_5();
          v211 = sub_1C7551BFC();
          if (v99)
          {
            swift_unknownObjectRelease();
            v107 = v198;
LABEL_26:
            v111 = *(v107 + 8);
            v112 = v95;
LABEL_27:
            v111(v112, v106);
            v122 = OUTLINED_FUNCTION_41_3();
            v123(v122);
          }

          else
          {
            swift_unknownObjectRelease();
            v132 = v198;
LABEL_46:
            v156 = *(v132 + 8);
            v157 = v95;
LABEL_47:
            v156(v157, v106);
            v163 = OUTLINED_FUNCTION_41_3();
            v164(v163);
LABEL_48:
            v165 = v209;
            v166 = v211;
            *v209 = v100;
            v165[1] = v166;
            *(v165 + 16) = v173;
          }

          break;
        case 12:
          LOBYTE(v215) = 12;
          sub_1C6FCE518();
          v109 = v207;
          OUTLINED_FUNCTION_7_3();
          OUTLINED_FUNCTION_42_5();
          v95 = v109;
          v106 = v199;
          OUTLINED_FUNCTION_70_3();
          sub_1C7551B6C();
          v211 = v110;
          OUTLINED_FUNCTION_44_5();
          v100 = v131;
          swift_unknownObjectRelease();
          v132 = v197;
          goto LABEL_46;
        default:
          LOBYTE(v215) = 0;
          sub_1C6FCEA04();
          OUTLINED_FUNCTION_10_9();
          OUTLINED_FUNCTION_93_1();
          OUTLINED_FUNCTION_105_1();
          v100 = sub_1C7551BFC();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_26_3();
          v145 = OUTLINED_FUNCTION_103();
          v146(v145);
          v147 = OUTLINED_FUNCTION_9_6();
          v148(v147, v77);
          v211 = 0;
          v87 = v213;
          goto LABEL_48;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1C6FCFD98(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001C7597BA0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C6FCFE38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6FCFD98(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C6FCFE64(uint64_t a1)
{
  v2 = sub_1C6FD45EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FCFEA0(uint64_t a1)
{
  v2 = sub_1C6FD45EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SafetyControllerDiagnosticReport.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2154B8);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v0);
  v1 = OUTLINED_FUNCTION_98_1();
  __swift_project_boxed_opaque_existential_1(v1, v2);
  sub_1C6FD45EC();
  sub_1C75504FC();
  sub_1C755200C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2154C0);
  sub_1C6FD4640(&qword_1EDD06AD8, sub_1C6FD46B4);
  sub_1C7551D2C();

  v3 = OUTLINED_FUNCTION_41_3();
  v4(v3);
  OUTLINED_FUNCTION_125();
}

void SafetyControllerDiagnosticReport.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2154C8);
  OUTLINED_FUNCTION_3_0();
  v29 = v28;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_1C6FD45EC();
  sub_1C7551FFC();
  if (!v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2154C0);
    sub_1C6FD4640(&qword_1EC2154D0, sub_1C6FD4708);
    sub_1C7551C1C();
    (*(v29 + 8))(v32, v27);
    *v26 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  OUTLINED_FUNCTION_125();
}

void *SafetyError.SafetyValidationFailureInfo.error.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

Swift::String __swiftcall SafetyError.errorDescription(verbose:)(Swift::Bool verbose)
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  type metadata accessor for SafetyError.SafetyValidationFailureInfo(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_78();
  v6 = v4 - v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v32 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - v14;
  type metadata accessor for SafetyError(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_14_0();
  v19 = (v18 - v17);
  OUTLINED_FUNCTION_45_4();
  OUTLINED_FUNCTION_98_1();
  sub_1C6FD4C38();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_6_15();
      sub_1C6FD8020();
      if (v2)
      {
        v34 = 0;
        v35 = 0xE000000000000000;
        OUTLINED_FUNCTION_50_3();
        sub_1C75519EC();
      }

      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_86_2(v27);
      MEMORY[0x1CCA5CD70]();

      OUTLINED_FUNCTION_5_11();
      v24 = v13;
      goto LABEL_20;
    case 2u:
      OUTLINED_FUNCTION_6_15();
      sub_1C6FD8020();
      if (v2)
      {
        v34 = 0;
        v35 = 0xE000000000000000;
        OUTLINED_FUNCTION_50_3();
        sub_1C75519EC();
      }

      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_86_2(v22);
      MEMORY[0x1CCA5CD70]();

      OUTLINED_FUNCTION_5_11();
      v24 = v10;
      goto LABEL_20;
    case 3u:
      OUTLINED_FUNCTION_6_15();
      sub_1C6FD8020();
      if (v2)
      {
        v34 = 0;
        v35 = 0xE000000000000000;
        OUTLINED_FUNCTION_50_3();
        sub_1C75519EC();
      }

      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_86_2(v25);
      MEMORY[0x1CCA5CD70]();

      OUTLINED_FUNCTION_5_11();
      v24 = v6;
      goto LABEL_20;
    case 4u:
      if (v2)
      {
        v20 = *v19;
        v34 = 0;
        v35 = 0xE000000000000000;
        OUTLINED_FUNCTION_50_3();
        LOBYTE(v33) = v20;
        sub_1C75519EC();
      }

      goto LABEL_22;
    case 5u:
      v21 = *v19;
      if (v2)
      {
        v34 = 0;
        v35 = 0xE000000000000000;
        OUTLINED_FUNCTION_50_3();
        v33 = v21;
        sub_1C75519EC();
      }

LABEL_22:
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_86_2(v28);
      MEMORY[0x1CCA5CD70]();

      break;
    case 6u:
      break;
    default:
      OUTLINED_FUNCTION_6_15();
      sub_1C6FD8020();
      if (v2)
      {
        v34 = 0;
        v35 = 0xE000000000000000;
        OUTLINED_FUNCTION_50_3();
        sub_1C75519EC();
      }

      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_86_2(v26);
      MEMORY[0x1CCA5CD70]();

      OUTLINED_FUNCTION_5_11();
      v24 = v15;
LABEL_20:
      sub_1C6FD479C(v24, v23);
      break;
  }

  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_25_0();
  result._object = v30;
  result._countAndFlagsBits = v29;
  return result;
}
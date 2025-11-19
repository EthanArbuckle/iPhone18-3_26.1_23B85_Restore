BOOL (*sub_1DAC79718())(__int128 *)
{
  sub_1DAAD4C70(v0, v4);
  v1 = swift_allocObject();
  v2 = v4[1];
  *(v1 + 16) = v4[0];
  *(v1 + 32) = v2;
  *(v1 + 48) = v4[2];
  *(v1 + 64) = v5;
  return sub_1DAC79B44;
}

BOOL sub_1DAC797E4(uint64_t a1, uint64_t a2)
{
  sub_1DAAD4C70(a1, v13);
  sub_1DAAD4C70(a2, &v17);
  if (v16 > 4u)
  {
    if (v16 > 6u)
    {
      if (v16 != 7)
      {
        if (v16 == 9)
        {
          v5 = vorrq_s8(v14, v15);
          v6 = *&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)) | v13[1];
          if (v13[0] != 3 || v6)
          {
            if (v13[0] != 4)
            {
              goto LABEL_33;
            }

            v9 = !v6 && v21 == 9;
            if (!v9 || v17 != 4)
            {
              goto LABEL_33;
            }
          }

          else if (v21 != 9 || v17 != 3)
          {
            goto LABEL_33;
          }

          v10 = vorrq_s8(v19, v20);
          if (!(*&vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL)) | v18))
          {
            v3 = 1;
            goto LABEL_34;
          }
        }

LABEL_33:
        sub_1DAAD4D7C(&v17);
        v3 = 0;
        goto LABEL_34;
      }

      sub_1DAAD4C70(v13, &v11);
      v4 = v11;
      if (v21 != 7)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v16 == 5)
      {
        sub_1DAAD4C70(v13, &v11);
        if (v21 != 5)
        {
          goto LABEL_33;
        }

LABEL_26:
        v3 = *&v11 == *&v17;
        goto LABEL_34;
      }

      if (v16 != 6)
      {
        goto LABEL_33;
      }

      sub_1DAAD4C70(v13, &v11);
      v4 = v11;
      if (v21 != 6)
      {
        goto LABEL_32;
      }
    }

    v7 = sub_1DAC37150(v4, v17);
    goto LABEL_31;
  }

  if (v16 > 2u)
  {
    if (v16 != 3)
    {
      if (v16 != 4)
      {
        goto LABEL_33;
      }

      sub_1DAAD4C70(v13, &v11);
      if (v21 != 4)
      {
        goto LABEL_33;
      }

      goto LABEL_26;
    }

    sub_1DAAD4C70(v13, &v11);
    if (v21 == 3)
    {
      v7 = sub_1DAA51414(v11, v17);
LABEL_31:
      v3 = v7;

      goto LABEL_34;
    }

LABEL_32:

    goto LABEL_33;
  }

  if (!v16)
  {
    sub_1DAAD4C70(v13, &v11);
    swift_unknownObjectRelease();
    if (!v21)
    {
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(&v18);
      __swift_destroy_boxed_opaque_existential_1(v12);
      v3 = 1;
      goto LABEL_34;
    }

    __swift_destroy_boxed_opaque_existential_1(v12);
    goto LABEL_33;
  }

  if (v16 != 2 || v21 != 2)
  {
    goto LABEL_33;
  }

  sub_1DAAD4D7C(&v17);
  v3 = 1;
LABEL_34:
  sub_1DAAD4D7C(v13);
  return v3;
}

uint64_t sub_1DAC79A80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 49))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xA)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DAC79ABC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 247;
    if (a3 >= 0xF7)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DAC79B0C(uint64_t result, unsigned int a2)
{
  if (a2 > 8)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 9;
    LOBYTE(a2) = 9;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_1DAC79B48()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAC79B80@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  return result;
}

void *sub_1DAC79BE4()
{
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

uint64_t sub_1DAC79C34@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>, double a13@<D5>, double a14@<D6>, double a15@<D7>, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *a7 = result;
  *(a7 + 8) = a8;
  *(a7 + 16) = a9;
  *(a7 + 24) = a10;
  *(a7 + 32) = a11;
  *(a7 + 40) = a2;
  *(a7 + 48) = a12;
  *(a7 + 56) = a13;
  *(a7 + 64) = a14;
  *(a7 + 72) = a15;
  *(a7 + 80) = a16;
  *(a7 + 88) = a3;
  *(a7 + 96) = a4;
  *(a7 + 104) = a5;
  *(a7 + 112) = a6;
  *(a7 + 120) = a17;
  *(a7 + 128) = a18;
  return result;
}

int8x16_t sub_1DAC79C6C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  v8 = *(a1 + 112);
  *a4 = a2;
  *(a4 + 8) = *(a1 + 8);
  *(a4 + 24) = round(v4 * 10000.0) / 10000.0;
  *(a4 + 32) = v5;
  *(a4 + 40) = v6;
  v9 = *(a1 + 96);
  *(a4 + 48) = *(a1 + 40);
  *(a4 + 64) = v9;
  *(a4 + 80) = v8;
  *(a4 + 88) = a3;
  *(a4 + 96) = v7;
  v10 = *(a1 + 64);
  *(a4 + 104) = *(a1 + 80);
  result = vextq_s8(v10, v10, 8uLL);
  *(a4 + 120) = result;
  return result;
}

uint64_t sub_1DAC79D0C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE11EA20 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = xmmword_1EE11EA78;
  v11[6] = xmmword_1EE11EA88;
  v11[7] = xmmword_1EE11EA98;
  v2 = xmmword_1EE11EA38;
  v3 = xmmword_1EE11EA48;
  v11[2] = xmmword_1EE11EA48;
  v11[3] = xmmword_1EE11EA58;
  v4 = xmmword_1EE11EA58;
  v5 = xmmword_1EE11EA68;
  v11[4] = xmmword_1EE11EA68;
  v11[5] = xmmword_1EE11EA78;
  v6 = xmmword_1EE11EA28;
  v11[0] = xmmword_1EE11EA28;
  v11[1] = xmmword_1EE11EA38;
  v7 = xmmword_1EE11EA98;
  *(a1 + 96) = xmmword_1EE11EA88;
  *(a1 + 112) = v7;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 80) = v1;
  v12 = qword_1EE11EAA8;
  *(a1 + 128) = qword_1EE11EAA8;
  *a1 = v6;
  *(a1 + 16) = v2;
  return sub_1DAAA5860(v11, v10);
}

uint64_t sub_1DAC79DDC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1DAC79E24(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DAC79EA4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAC79ED4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioUpsellConfig() + 20);

  return sub_1DAA4DC58(v3, a1);
}

uint64_t sub_1DAC79F60@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, char a5@<W4>, void *a6@<X8>)
{
  sub_1DAA5311C(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v21 - v14;
  if (!a2)
  {
    a1 = 0;
    a2 = 0xE000000000000000;
  }

  sub_1DAA4DC58(a3, &v21 - v14);
  if (a5)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = a4;
  }

  v17 = sub_1DACB9F04();

  if (v17 == 2)
  {
    v18 = 2;
  }

  else
  {
    v18 = v17 == 1;
  }

  sub_1DAA4DDD0(a3);
  *a6 = a1;
  a6[1] = a2;
  v19 = type metadata accessor for AudioUpsellConfig();
  result = sub_1DAB4CCC4(v15, a6 + v19[5]);
  *(a6 + v19[6]) = v16;
  *(a6 + v19[7]) = v18;
  return result;
}

uint64_t sub_1DAC7A0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>, double a6@<D0>)
{
  *a5 = a1;
  a5[1] = a2;
  v10 = type metadata accessor for AudioUpsellConfig();
  result = sub_1DAB4CCC4(a3, a5 + v10[5]);
  *(a5 + v10[6]) = a6;
  *(a5 + v10[7]) = a4;
  return result;
}

uint64_t sub_1DAC7A148(char a1)
{
  if (!a1)
  {
    return 0x6E696E6E69676562;
  }

  if (a1 == 1)
  {
    return 0x656C6464696DLL;
  }

  return 6581861;
}

uint64_t sub_1DAC7A198(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x656C6464696DLL;
  if (v2 != 1)
  {
    v4 = 6581861;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E696E6E69676562;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000067;
  }

  v7 = 0xE600000000000000;
  v8 = 0x656C6464696DLL;
  if (*a2 != 1)
  {
    v8 = 6581861;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E696E6E69676562;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000067;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DACBA174();
  }

  return v11 & 1;
}

uint64_t sub_1DAC7A284()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC7A320()
{
  *v0;
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DAC7A3A8()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC7A440@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAC7B934();
  *a2 = result;
  return result;
}

void sub_1DAC7A470(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000067;
  v4 = 0xE600000000000000;
  v5 = 0x656C6464696DLL;
  if (v2 != 1)
  {
    v5 = 6581861;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E696E6E69676562;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DAC7A4C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  sub_1DAA5311C(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v73 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v74 = &v64 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v64 - v9;
  sub_1DAC7BA38(0, &qword_1ECBE98E8, MEMORY[0x1E69E6F48]);
  v12 = v11;
  v75 = *(v11 - 8);
  v13 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v64 - v14;
  v16 = type metadata accessor for AudioUpsellConfig();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC7B980();
  v21 = v76;
  sub_1DACBA2F4();
  if (v21)
  {
    v43 = a1;
  }

  else
  {
    v70 = v19;
    v71 = v16;
    v76 = v10;
    v82 = MEMORY[0x1E69E7CC0];
    v81 = 0;
    sub_1DACB9F84();
    v22 = v80;
    v69 = v79;
    if (v80)
    {
      v23 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      swift_beginAccess();
      v23 = sub_1DAA9A3B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1DAA9A3B0((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[16 * v25];
      *(v26 + 4) = 0x696669746E656469;
      *(v26 + 5) = 0xEA00000000007265;
      v82 = v23;
      swift_endAccess();
    }

    LOBYTE(v79) = 1;
    v27 = sub_1DACB7AB4();
    sub_1DAC7BDC4(&qword_1EE1252A8, MEMORY[0x1E6968FB0]);
    v28 = v74;
    sub_1DACB9F84();
    v29 = (*(*(v27 - 8) + 48))(v28, 1, v27);
    v68 = v22;
    if (v29 == 1)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1DAA9A3B0(0, *(v23 + 2) + 1, 1, v23);
      }

      v31 = *(v23 + 2);
      v30 = *(v23 + 3);
      if (v31 >= v30 >> 1)
      {
        v23 = sub_1DAA9A3B0((v30 > 1), v31 + 1, 1, v23);
      }

      *(v23 + 2) = v31 + 1;
      v32 = &v23[16 * v31];
      *(v32 + 4) = 7107189;
      *(v32 + 5) = 0xE300000000000000;
      v82 = v23;
      swift_endAccess();
    }

    sub_1DAB4CCC4(v74, v76);
    v81 = 2;
    sub_1DACB9F84();
    v33 = v79;
    v34 = v80;
    if (v80)
    {
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v71;
      v37 = v68;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v23 = sub_1DAA9A3B0(0, *(v23 + 2) + 1, 1, v23);
      }

      v38 = v23;
      v39 = *(v23 + 2);
      v40 = v38;
      v41 = *(v38 + 3);
      if (v39 >= v41 >> 1)
      {
        v40 = sub_1DAA9A3B0((v41 > 1), v39 + 1, 1, v40);
      }

      *(v40 + 2) = v39 + 1;
      v42 = &v40[16 * v39];
      v23 = v40;
      *(v42 + 4) = 0x6E6F697461727564;
      *(v42 + 5) = 0xE800000000000000;
      v82 = v40;
      swift_endAccess();
    }

    else
    {
      v36 = v71;
      v37 = v68;
    }

    LOBYTE(v79) = 3;
    sub_1DACB9F84();
    v66 = v12;
    v67 = v15;
    v65 = a1;
    v74 = 0;
    if (v78)
    {
      v71 = v77;
      v45 = v23;
      v46 = v73;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1DAA9A3B0(0, *(v23 + 2) + 1, 1, v23);
      }

      v46 = v73;
      v48 = *(v23 + 2);
      v47 = *(v23 + 3);
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        v63 = sub_1DAA9A3B0((v47 > 1), v48 + 1, 1, v23);
        v49 = v48 + 1;
        v23 = v63;
      }

      v71 = 0;
      v45 = v23;
      *(v23 + 2) = v49;
      v50 = &v23[16 * v48];
      strcpy(v50 + 32, "playPosition");
      v50[45] = 0;
      *(v50 + 23) = -5120;
    }

    v51 = v69;
    if (!v37)
    {
      v51 = 0.0;
    }

    v73 = *&v51;
    if (v37)
    {
      v52 = v37;
    }

    else
    {
      v52 = 0xE000000000000000;
    }

    v53 = v76;
    sub_1DAA4DC58(v76, v46);
    if (v34)
    {
      v33 = 0.0;
    }

    v54 = sub_1DACB9F04();

    if (v54 == 2)
    {
      v55 = 2;
    }

    else
    {
      v55 = v54 == 1;
    }

    sub_1DAA4DDD0(v53);
    v56 = v70;
    *v70 = v73;
    *(v56 + 8) = v52;
    sub_1DAB4CCC4(v46, v56 + v36[5]);
    *(v56 + v36[6]) = v33;
    *(v56 + v36[7]) = v55;
    if (*(v45 + 2))
    {
      sub_1DAA5311C(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_1DACC1D20;
      sub_1DAA613E8();
      *(v57 + 56) = v58;
      *(v57 + 64) = sub_1DAC7BDC4(&qword_1EE123E80, sub_1DAA613E8);
      *(v57 + 32) = v45;
      sub_1DAA41DCC();
      sub_1DACB71E4();
      v59 = sub_1DACB9AD4();
      sub_1DACB9914();
      sub_1DACB8C64();
    }

    else
    {
      sub_1DAA41DCC();
      v59 = sub_1DACB9AD4();
      sub_1DACB9914();
      sub_1DACB8C64();
    }

    v60 = v72;
    v61 = v75;
    v62 = v66;

    (*(v61 + 8))(v67, v62);

    sub_1DAC7B9D4(v56, v60);
    v43 = v65;
  }

  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t sub_1DAC7AE1C(void *a1)
{
  v3 = v1;
  sub_1DAC7BA38(0, &qword_1ECBE98F8, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC7B980();
  sub_1DACBA304();
  v12 = *v3;
  v13 = v3[1];
  v18[15] = 0;
  sub_1DACBA094();
  if (v2)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v14 = type metadata accessor for AudioUpsellConfig();
  v15 = v14[5];
  v18[14] = 1;
  sub_1DAA5311C(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  sub_1DAC7BA9C();
  sub_1DACBA0E4();
  v16 = *(v3 + v14[6]);
  v18[13] = 2;
  sub_1DACBA0B4();
  *(v3 + v14[7]);
  v18[12] = 3;
  sub_1DACBA094();
  (*(v7 + 8))(v10, v6);
}

uint64_t sub_1DAC7B0C0()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC7B188()
{
  *v0;
  *v0;
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DAC7B23C()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC7B300@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAC7BD1C();
  *a2 = result;
  return result;
}

void sub_1DAC7B330(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = 0xE800000000000000;
  v5 = 0x6E6F697461727564;
  if (*v1 != 2)
  {
    v5 = 0x69736F5079616C70;
    v4 = 0xEC0000006E6F6974;
  }

  if (*v1)
  {
    v3 = 7107189;
    v2 = 0xE300000000000000;
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

uint64_t sub_1DAC7B3B4()
{
  v1 = 0x696669746E656469;
  v2 = 0x6E6F697461727564;
  if (*v0 != 2)
  {
    v2 = 0x69736F5079616C70;
  }

  if (*v0)
  {
    v1 = 7107189;
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

uint64_t sub_1DAC7B434@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAC7BD1C();
  *a1 = result;
  return result;
}

uint64_t sub_1DAC7B45C(uint64_t a1)
{
  v2 = sub_1DAC7B980();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC7B498(uint64_t a1)
{
  v2 = sub_1DAC7B980();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC7B50C(void *a1, void *a2)
{
  v4 = sub_1DACB7AB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5311C(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v34 - v11;
  sub_1DAA52DE4();
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1DACBA174() & 1) == 0)
  {
    goto LABEL_16;
  }

  v35 = v8;
  v18 = type metadata accessor for AudioUpsellConfig();
  v19 = v18[5];
  v20 = *(v14 + 48);
  sub_1DAA4DC58(a1 + v19, v17);
  sub_1DAA4DC58(a2 + v19, &v17[v20]);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) != 1)
  {
    sub_1DAA4DC58(v17, v12);
    if (v21(&v17[v20], 1, v4) != 1)
    {
      v22 = v35;
      (*(v5 + 32))(v35, &v17[v20], v4);
      sub_1DAC7BDC4(&qword_1EE1252B0, MEMORY[0x1E6968FB0]);
      v23 = sub_1DACB9264();
      v24 = *(v5 + 8);
      v24(v22, v4);
      v24(v12, v4);
      sub_1DAA4DDD0(v17);
      if ((v23 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }

    (*(v5 + 8))(v12, v4);
LABEL_9:
    sub_1DAC7BD68(v17);
    goto LABEL_16;
  }

  if (v21(&v17[v20], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_1DAA4DDD0(v17);
LABEL_11:
  if (*(a1 + v18[6]) == *(a2 + v18[6]))
  {
    v25 = 0xE900000000000067;
    v26 = 0x6E696E6E69676562;
    v27 = v18[7];
    v28 = *(a1 + v27);
    v29 = *(a2 + v27);
    if (v28)
    {
      if (v28 == 1)
      {
        v30 = 0xE600000000000000;
        v31 = 0x656C6464696DLL;
        if (!v29)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v30 = 0xE300000000000000;
        v31 = 6581861;
        if (!v29)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      v31 = 0x6E696E6E69676562;
      v30 = 0xE900000000000067;
      if (!v29)
      {
        goto LABEL_23;
      }
    }

    if (v29 != 1)
    {
      v25 = 0xE300000000000000;
      if (v31 != 6581861)
      {
        goto LABEL_28;
      }

      goto LABEL_26;
    }

    v25 = 0xE600000000000000;
    v26 = 0x656C6464696DLL;
LABEL_23:
    if (v31 != v26)
    {
      goto LABEL_28;
    }

LABEL_26:
    if (v30 == v25)
    {

      v32 = 1;
      return v32 & 1;
    }

LABEL_28:
    v32 = sub_1DACBA174();

    return v32 & 1;
  }

LABEL_16:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_1DAC7B934()
{
  v0 = sub_1DACB9F04();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1DAC7B980()
{
  result = qword_1ECBE98F0;
  if (!qword_1ECBE98F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE98F0);
  }

  return result;
}

uint64_t sub_1DAC7B9D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioUpsellConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1DAC7BA38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAC7B980();
    v7 = a3(a1, &type metadata for AudioUpsellConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1DAC7BA9C()
{
  result = qword_1ECBE9900;
  if (!qword_1ECBE9900)
  {
    sub_1DAA5311C(255, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    sub_1DAC7BDC4(&qword_1EE1252B8, MEMORY[0x1E6968FB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9900);
  }

  return result;
}

unint64_t sub_1DAC7BB78()
{
  result = qword_1ECBE9908;
  if (!qword_1ECBE9908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9908);
  }

  return result;
}

unint64_t sub_1DAC7BC18()
{
  result = qword_1ECBE9910;
  if (!qword_1ECBE9910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9910);
  }

  return result;
}

unint64_t sub_1DAC7BC70()
{
  result = qword_1ECBE9918;
  if (!qword_1ECBE9918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9918);
  }

  return result;
}

unint64_t sub_1DAC7BCC8()
{
  result = qword_1ECBE9920;
  if (!qword_1ECBE9920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9920);
  }

  return result;
}

uint64_t sub_1DAC7BD1C()
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

uint64_t sub_1DAC7BD68(uint64_t a1)
{
  sub_1DAA52DE4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAC7BDC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAC7BE0C(uint64_t a1)
{
  v3 = sub_1DACB7DC4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v16[1] = v1;
    v17 = MEMORY[0x1E69E7CC0];
    sub_1DAB25F08(0, v8, 0);
    v9 = v17;
    v10 = (a1 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      sub_1DACB71E4();
      sub_1DACB7DD4();
      v17 = v9;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1DAB25F08(v13 > 1, v14 + 1, 1);
        v9 = v17;
      }

      *(v9 + 16) = v14 + 1;
      (*(v4 + 32))(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14, v7, v3);
      v10 += 2;
      --v8;
    }

    while (v8);
  }

  return v9;
}

double sub_1DAC7BFA8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1DAB09820(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_1DAA7C694(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1DAC7C00C@<X0>(char a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1DAA4691C(0, &qword_1EE11FF70, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v13[-v9];
  v13[15] = a1;
  v11 = sub_1DACB88D4();
  sub_1DAC8ED5C(0, &qword_1EE123CD0, sub_1DAC8AC48, &type metadata for AppConfiguration.CodingKeys, MEMORY[0x1E69E6F48]);
  sub_1DAA4680C(&qword_1EE1240E0, MEMORY[0x1E69D6A58]);
  sub_1DACB9F84();
  if (!v3)
  {
    if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
    {
      sub_1DAC8AA30(a1, a2);
    }

    sub_1DAC8AB40(v10, a3);
  }
}

uint64_t sub_1DAC7C1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, char a27, char a28, double a29, char a30, char a31, char a32, uint64_t a33, char a34, uint64_t a35, char a36, uint64_t a37, char a38, uint64_t a39, char a40, double a41, char a42, uint64_t a43, char a44, double a45, char a46, uint64_t a47, uint64_t a48, double a49, char a50, double a51, char a52, double a53, char a54, double a55, char a56, double a57, char a58, uint64_t a59, char a60, uint64_t a61, char a62, uint64_t a63)
{
  v78 = MEMORY[0x1EEE9AC00](a1);
  v444 = v79;
  v439 = v80;
  v441 = v81;
  v435 = v82;
  v437 = v83;
  v433 = v84;
  v399 = v85;
  v397 = v78;
  v87 = v86;
  v88 = STACK[0x2B50];
  v89 = STACK[0x2B48];
  v586 = *(STACK[0x2B20] + 8);
  v384 = *STACK[0x2B20];
  v385 = *(STACK[0x2B20] + 16);
  v90 = *(STACK[0x2B20] + 24);
  v391 = *STACK[0x2B28];
  v415 = *(STACK[0x2B28] + 8);
  v387 = *(STACK[0x2B28] + 16);
  v390 = *(STACK[0x2B28] + 24);
  v392 = *(STACK[0x2B28] + 32);
  v386 = *(STACK[0x2B28] + 40);
  v388 = *(STACK[0x2B28] + 48);
  v393 = *(STACK[0x2B28] + 56);
  v389 = *(STACK[0x2B28] + 64);
  v416 = *STACK[0x2B30];
  v417 = *(STACK[0x2B30] + 8);
  v91.i32[1] = HIDWORD(*(STACK[0x2B30] + 8));
  v91.i32[0] = *(STACK[0x2B48] + 16);
  v516 = vmovl_u8(v91).u64[0];
  v92 = *(STACK[0x2B48] + 352);
  v680 = *(STACK[0x2B48] + 336);
  v681 = v92;
  v583 = *(v89 + 376);
  v682 = *(v89 + 368);
  v93 = *(v89 + 288);
  v676 = *(v89 + 272);
  v677 = v93;
  v94 = *(v89 + 320);
  v678 = *(v89 + 304);
  v679 = v94;
  v95 = *(v89 + 224);
  v672 = *(v89 + 208);
  v673 = v95;
  v96 = *(v89 + 256);
  v674 = *(v89 + 240);
  v675 = v96;
  v671[0] = *(v89 + 385);
  *(v671 + 3) = *(v89 + 388);
  v670[0] = *(v89 + 401);
  *(v670 + 3) = *(v89 + 404);
  v668 = *(v89 + 482);
  v669 = *(v89 + 486);
  v421 = *v88;
  v383 = *(v88 + 16);
  v685[0] = *(v88 + 17);
  *(v685 + 3) = *(v88 + 20);
  v382 = *(v88 + 24);
  v97 = *(v88 + 32);
  v684[0] = *(v88 + 33);
  *(v684 + 3) = *(v88 + 36);
  v98 = *(v88 + 40);
  *(v683 + 3) = *(v88 + 52);
  v683[0] = *(v88 + 49);
  v379 = *(v88 + 48);
  v377 = *(v88 + 56);
  v378 = v98;
  v380 = *(v88 + 64);
  v381 = v97;
  v422 = *STACK[0x2B58];
  v519 = *(STACK[0x2B58] + 8);
  v100 = *(STACK[0x2B58] + 16);
  v99 = *(STACK[0x2B58] + 24);
  v424 = *(STACK[0x2B58] + 32);
  v423 = *(STACK[0x2B58] + 40);
  v101 = *(STACK[0x2B58] + 48);
  v102 = *(STACK[0x2B58] + 56);
  v426 = *(STACK[0x2B58] + 64);
  v425 = *(STACK[0x2B58] + 72);
  v529 = *(STACK[0x2B58] + 80);
  v527 = *(STACK[0x2B58] + 88);
  v525 = *(STACK[0x2B58] + 96);
  v523 = *(STACK[0x2B58] + 104);
  v103 = *(STACK[0x2B58] + 120);
  v532 = *(STACK[0x2B58] + 112);
  v104 = *(STACK[0x2B58] + 128);
  v429 = *(STACK[0x2B58] + 136);
  v427 = *(STACK[0x2B58] + 144);
  v431 = *(STACK[0x2B58] + 152);
  v420 = *(STACK[0x2B58] + 160);
  v413 = STACK[0x2B10];
  v412 = STACK[0x2B18];
  v411 = STACK[0x2B00];
  v410 = STACK[0x2B08];
  v409 = STACK[0x2AF0];
  v408 = STACK[0x2AF8];
  v407 = STACK[0x2AE0];
  v406 = STACK[0x2AE8];
  v405 = STACK[0x2AD0];
  v404 = STACK[0x2AD8];
  v403 = LOBYTE(STACK[0x2AC9]);
  v402 = LOBYTE(STACK[0x2AC8]);
  v401 = STACK[0x2AB8];
  v400 = STACK[0x2AC0];
  v398 = STACK[0x2AB0];
  v396 = LOBYTE(STACK[0x2AA1]);
  v395 = STACK[0x2AA0];
  v394 = STACK[0x2A90];
  v105 = STACK[0x2DF0];
  v106 = STACK[0x2D78];
  v462 = *v89;
  v459 = *(v89 + 8);
  v414 = *(v89 + 20);
  v454 = *(v89 + 24);
  v495 = *(v89 + 32);
  v452 = *(v89 + 40);
  v556 = *(v89 + 48);
  v553 = *(v89 + 56);
  v538 = *(v89 + 64);
  v535 = *(v89 + 72);
  v419 = *(v89 + 80);
  v484 = *(v89 + 88);
  v474 = *(v89 + 96);
  v471 = *(v89 + 104);
  v465 = *(v89 + 112);
  v559 = *(v89 + 120);
  v501 = *(v89 + 128);
  v507 = *(v89 + 136);
  v418 = *(v89 + 144);
  v468 = *(v89 + 152);
  v550 = *(v89 + 160);
  v547 = *(v89 + 168);
  v544 = *(v89 + 176);
  v504 = *(v89 + 184);
  v498 = *(v89 + 192);
  v541 = *(v89 + 200);
  v450 = *(v89 + 384);
  v513 = *(v89 + 392);
  v446 = *(v89 + 400);
  v580 = *(v89 + 408);
  v577 = *(v89 + 416);
  v574 = *(v89 + 424);
  v492 = *(v89 + 432);
  v571 = *(v89 + 440);
  v568 = *(v89 + 448);
  v510 = *(v89 + 456);
  v565 = *(v89 + 464);
  v562 = *(v89 + 472);
  v480 = *(v89 + 480);
  v477 = *(v89 + 481);
  v488 = *(v89 + 488);
  v456 = *(v89 + 496);
  v448 = *(v89 + 504);
  memcpy(v686, STACK[0x2B60], 0x8DCuLL);
  v107 = v444;
  v443 = v106[1];
  v445 = *v106;
  *v87 = v397 & 1;
  v108 = v399;
  v109 = MEMORY[0x1E69E7CC0];
  if (!v399)
  {
    v108 = MEMORY[0x1E69E7CC0];
  }

  v110 = v433;
  if (!v433)
  {
    v110 = MEMORY[0x1E69E7CC0];
  }

  *(v87 + 8) = v108;
  *(v87 + 16) = v110;
  v111 = 3;
  v112 = v437;
  if (v435)
  {
    v112 = 3;
  }

  v113 = v441;
  if (v439)
  {
    v113 = 1;
  }

  *(v87 + 24) = v112;
  *(v87 + 32) = v113;
  v114 = 0x40F5180000000000;
  if (a17)
  {
    v107 = 86400.0;
  }

  v115 = 0x410FA40000000000;
  if ((a19 & 1) == 0)
  {
    v115 = a18;
  }

  v116 = 100;
  if (a21)
  {
    a20 = 100;
  }

  if ((a23 & 1) == 0)
  {
    v116 = a22;
  }

  *(v87 + 56) = a20;
  *(v87 + 64) = v116;
  if (a25)
  {
    a24 = 1;
  }

  if (a26)
  {
    v119 = a26;
  }

  else
  {
    v119 = v109;
  }

  *(v87 + 72) = a24;
  *(v87 + 80) = v119;
  *(v87 + 88) = (a27 == 2) | a27 & 1;
  *(v87 + 89) = (a28 == 2) | a28 & 1;
  if (a30)
  {
    a29 = 0.001;
  }

  *(v87 + 104) = (a31 == 2) | a31 & 1;
  *(v87 + 105) = (a32 == 2) | a32 & 1;
  if (a34)
  {
    a33 = 3;
  }

  if ((a36 & 1) == 0)
  {
    v111 = a35;
  }

  *(v87 + 112) = a33;
  *(v87 + 120) = v111;
  if (a38)
  {
    v122 = 86400.0;
  }

  else
  {
    v122 = *&a37;
  }

  if (a40)
  {
    v123 = 60.0;
  }

  else
  {
    v123 = *&a39;
  }

  if (a42)
  {
    a41 = 300.0;
  }

  v125 = 10.0;
  if ((a44 & 1) == 0)
  {
    v125 = *&a43;
  }

  if (a46)
  {
    a45 = 1200.0;
  }

  v127 = 0xD00000000000002CLL;
  if (a48)
  {
    v127 = a47;
  }

  v128 = 0x80000001DACEDBE0;
  if (a48)
  {
    v128 = a48;
  }

  *(v87 + 168) = v127;
  *(v87 + 176) = v128;
  if (a50)
  {
    a49 = 600.0;
  }

  if (a52)
  {
    a51 = 600.0;
  }

  v131 = 0x4122750000000000;
  if (a54)
  {
    a53 = 604800.0;
  }

  if (a56)
  {
    a55 = 604800.0;
  }

  if (a58)
  {
    a57 = 604800.0;
  }

  if ((a60 & 1) == 0)
  {
    v131 = a59;
  }

  v135 = 0x40BC200000000000;
  if ((a62 & 1) == 0)
  {
    v135 = a61;
  }

  v136 = 0x405E000000000000;
  if ((a64 & 1) == 0)
  {
    v136 = a63;
  }

  *(v87 + 248) = (a65 == 2) | a65 & 1;
  *(v87 + 249) = a66 & 1;
  *(v87 + 250) = a67 & 1;
  v137 = 12;
  if (a69)
  {
    a68 = 12;
  }

  *(v87 + 40) = v107;
  *(v87 + 48) = v115;
  *(v87 + 96) = a29;
  *(v87 + 128) = v122;
  *(v87 + 136) = v123;
  *(v87 + 144) = a41;
  *(v87 + 152) = v125;
  *(v87 + 160) = a45;
  *(v87 + 184) = a49;
  *(v87 + 192) = a51;
  *(v87 + 200) = a53;
  *(v87 + 208) = a55;
  if ((a71 & 1) == 0)
  {
    v137 = a70;
  }

  *(v87 + 256) = a68;
  *(v87 + 264) = v137;
  v440 = *v105;
  v442 = *(v105 + 8);
  *(v87 + 216) = a57;
  *(v87 + 224) = v131;
  v139 = 0x40CC200000000000;
  v438 = *(v105 + 16);
  v436 = *(v105 + 24);
  v434 = *(v105 + 32);
  *(v87 + 232) = v135;
  *(v87 + 240) = v136;
  if (a73)
  {
    a72 = 14400.0;
  }

  if (a75)
  {
    a74 = 14400.0;
  }

  *(v87 + 272) = a72;
  *(v87 + 280) = a74;
  if (a77)
  {
    a76 = 600.0;
  }

  if (a79)
  {
    a78 = 60.0;
  }

  *(v87 + 288) = a76;
  *(v87 + 296) = a78;
  if ((a81 & 1) == 0)
  {
    v139 = a80;
  }

  if (a83)
  {
    a82 = 600.0;
  }

  *(v87 + 304) = v139;
  *(v87 + 312) = a82;
  if (a85)
  {
    a84 = 60.0;
  }

  *(v87 + 320) = a84;
  v146 = 2;
  if ((v394 & 1) == 0)
  {
    v146 = a86;
  }

  *(v87 + 328) = v146;
  v147 = *&STACK[0x2A98];
  if (v395)
  {
    v147 = 1.5;
  }

  *(v87 + 336) = v147;
  *(v87 + 344) = (v396 == 2) | v396 & 1;
  if ((v398 & 1) == 0)
  {
    v114 = STACK[0x2AA8];
  }

  v149 = v400;
  v148 = v401;
  if (!v400)
  {
    v148 = 0x34343334312D5357;
    v149 = 0xEC0000006E652D31;
  }

  *(v87 + 1384) = v148;
  *(v87 + 1392) = v149;
  v150 = v586;
  *(v87 + 1400) = (v402 == 2) | v402 & 1;
  *(v87 + 1401) = (v403 == 2) | v403 & 1;
  v151 = 0xFFFFFFFFLL;
  if ((v404 & 1) == 0)
  {
    v151 = v405;
  }

  *(v87 + 1408) = v151;
  v152 = qword_1F567D1D0;
  if ((v406 & 1) == 0)
  {
    v152 = v407;
  }

  *(v87 + 1416) = v152;
  v153 = 0x34343334312D5359;
  if (v408)
  {
    v153 = v409;
    v154 = v408;
  }

  else
  {
    v154 = 0xEC0000006E652D31;
  }

  *(v87 + 1424) = v153;
  *(v87 + 1432) = v154;
  v155 = v411;
  if (!v410)
  {
    v155 = 0;
  }

  v156 = 0xE000000000000000;
  if (v410)
  {
    v156 = v410;
  }

  *(v87 + 1440) = v155;
  *(v87 + 1448) = v156;
  v157 = 500000;
  if ((v412 & 1) == 0)
  {
    v157 = v413;
  }

  *(v87 + 1456) = v157;
  *(v87 + 352) = v114;
  if (v586)
  {
    v159 = v384;
    v158 = v385;
  }

  else
  {
    v150 = 0x80000001DACE6EB0;
    v158 = MEMORY[0x1E69E7CC0];
    v90 = 0x40D5180000000000;
    v159 = 0xD000000000000017;
  }

  v160 = STACK[0x2B40];
  v161 = STACK[0x2B38];
  *(v87 + 1464) = v159;
  *(v87 + 1472) = v150;
  *(v87 + 1480) = v158;
  *(v87 + 1488) = v90;
  v162 = v415;
  if (v415)
  {
    v164 = v392;
    v163 = v393;
    v165 = v390;
    v166 = v391;
    v167 = v388;
    v168 = v389;
    v169 = v386;
    v170 = v387;
  }

  else
  {
    v163 = 0;
    v162 = 0x80000001DACEDC10;
    v164 = 0x80000001DACEDC40;
    v166 = 0xD00000000000002FLL;
    v165 = 0xD00000000000005ELL;
    v168 = 0xE000000000000000;
    v167 = 0xE200000000000000;
    v170 = MEMORY[0x1E69E7CC0];
    v169 = 23899;
  }

  *v648 = v671[0];
  *v651 = v670[0];
  v663 = v668;
  *(v87 + 1496) = v166;
  *(v87 + 1504) = v162;
  *(v87 + 1512) = v170;
  *(v87 + 1520) = v165;
  *(v87 + 1528) = v164;
  *(v87 + 1536) = v169;
  *(v87 + 1544) = v167;
  *(v87 + 1552) = v163;
  *(v87 + 1560) = v168;
  v171 = v416 != 2;
  *(v87 + 1568) = v171 & v416;
  v172 = vdup_n_s32(v171);
  if (!v161)
  {
    v161 = MEMORY[0x1E69E7CC0];
  }

  if (!v160)
  {
    v160 = MEMORY[0x1E69E7CC0];
  }

  *(v87 + 400) = v161;
  *(v87 + 408) = v160;
  v610 = v414;
  *v613 = *(v89 + 33);
  *&v613[3] = *(v89 + 36);
  v645 = v682;
  *&v648[3] = *(v671 + 3);
  *&v651[3] = *(v670 + 3);
  v664 = v669;
  v173.i64[0] = v172.u32[0];
  v173.i64[1] = v172.u32[1];
  __asm { FMOV            V1.2D, #1.0 }

  v179 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v173, 0x3FuLL)), v417, _Q1);
  *(v87 + 1576) = v179;
  v608[0] = v462;
  v608[1] = v459;
  v609 = vuzp1_s8(v516, *v179.i8).u32[0];
  v611 = v454;
  v612 = v495;
  v614 = v452;
  v615 = v556;
  v616 = v553;
  v617 = v538;
  v618 = v535;
  v619 = v419;
  v620 = v484;
  v621 = v474;
  v622 = v471;
  v623 = v465;
  v624 = v559;
  v625 = v501;
  v626 = v507;
  v627 = v418;
  v628 = v468;
  v629 = v550;
  v630 = v547;
  v631 = v544;
  v632 = v504;
  v633 = v498;
  v634 = v541;
  v643 = v680;
  v644 = v681;
  v639 = v676;
  v640 = v677;
  v642 = v679;
  v641 = v678;
  v635 = v672;
  v636 = v673;
  v638 = v675;
  v637 = v674;
  v646 = v583;
  v647 = v450;
  v649 = v513;
  v650 = v446;
  v652 = v580;
  v653 = v577;
  v654 = v574;
  v655 = v492;
  v656 = v571;
  v657 = v568;
  v658 = v510;
  v659 = v565;
  v660 = v562;
  v661 = v480;
  v662 = v477;
  v665 = v488;
  v666 = v456;
  v667 = v448;
  if (sub_1DAC8AA18(v608) == 1)
  {
    sub_1DAA4BB18(v589);
    if (qword_1EE1242B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v180 = qword_1EE1242C0;
    v181 = qword_1EE1242C8;
    sub_1DACB71E4();
    v556 = sub_1DAA4BBA0(v180, v181);
    v553 = v182;

    v183 = qword_1EE1242C0;
    v184 = qword_1EE1242C8;
    sub_1DACB71E4();
    v538 = sub_1DAA4C06C(v183, v184);
    v535 = v185;

    v186 = qword_1EE1242C0;
    v187 = qword_1EE1242C8;
    sub_1DACB71E4();
    v188 = sub_1DAA4C248(v186, v187);
    v190 = v189;

    v191 = qword_1EE1242C0;
    v192 = qword_1EE1242C8;
    sub_1DACB71E4();
    v193 = sub_1DAA4C424(v191, v192);
    v195 = v194;

    v196 = qword_1EE1242C0;
    v197 = qword_1EE1242C8;
    sub_1DACB71E4();
    v198 = sub_1DAA4C600(v196, v197);
    v559 = v199;

    v200 = 0;
    v201 = 0;
    v202 = 0;
    v203 = 0;
    v204 = 0;
    v205 = 0;
    v206 = 0;
    v550 = 0;
    v547 = 0;
    v544 = 0;
    v207 = 0;
    v208 = 0;
    v541 = 0;
    v583 = 0;
    v209 = 0;
    v580 = 0;
    v577 = 0;
    v574 = 0;
    v571 = 0;
    v568 = 0;
    v210 = 0;
    v565 = 0;
    v562 = 0;
    v211 = 0;
    v212 = 0;
    v605 = v589[8];
    v606 = v589[9];
    v607 = *&v589[10];
    v601 = v589[4];
    v602 = v589[5];
    v603 = v589[6];
    v604 = v589[7];
    v597 = v589[0];
    v598 = v589[1];
    v213 = 0xE000000000000000;
    v214 = 1;
    v215 = 25;
    v599 = v589[2];
    v600 = v589[3];
    v216 = 172800;
    v217 = 604800;
    v218 = 0x10000;
    v219 = 1;
    v220 = 1;
    v221 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v605 = v680;
    v606 = v681;
    v607 = v682;
    v601 = v676;
    v602 = v677;
    v603 = v678;
    v604 = v679;
    v597 = v672;
    v598 = v673;
    v599 = v674;
    v600 = v675;
    v218 = *&v516 & 0xFF01FF01FF01FF01;
    v188 = v419;
    v210 = v510;
    v206 = v507;
    v207 = v504;
    v205 = v501;
    v208 = v498;
    v203 = v495;
    v213 = v492;
    v215 = v488;
    v190 = v484;
    v211 = v480;
    v212 = v477;
    v193 = v474;
    v195 = v471;
    v217 = v418;
    v216 = v468;
    v198 = v465;
    v200 = v462;
    v201 = v459;
    v221 = v456;
    v202 = v454;
    v204 = v452;
    v214 = v450;
    v220 = v448;
    v219 = v446;
    v209 = v513;
  }

  *(v87 + 416) = v200;
  *(v87 + 424) = v201;
  *(v87 + 440) = v202;
  *(v87 + 456) = v204;
  *(v87 + 464) = v556;
  *(v87 + 472) = v553;
  *(v87 + 480) = v538;
  *(v87 + 488) = v535;
  *(v87 + 496) = v188;
  *(v87 + 504) = v190;
  *(v87 + 512) = v193;
  *(v87 + 520) = v195;
  *(v87 + 528) = v198;
  v596 = v214 & 1;
  v557 = STACK[0x2C70];
  v595 = v219 & 1;
  v554 = STACK[0x2BB0];
  *(v87 + 448) = v203 & 1;
  v539 = STACK[0x2BA0];
  *(v87 + 536) = v559;
  v560 = STACK[0x2B90];
  *(v87 + 544) = v205;
  v536 = STACK[0x2B80];
  *(v87 + 432) = vuzp1_s8(v218, v218).u32[0];
  *(v87 + 552) = v206;
  *(v87 + 560) = v217;
  *(v87 + 568) = v216;
  *(v87 + 576) = v550;
  *(v87 + 584) = v547;
  *(v87 + 592) = v544;
  *(v87 + 600) = v207;
  *(v87 + 608) = v208;
  *(v87 + 616) = v541;
  v222 = v606;
  *(v87 + 752) = v605;
  *(v87 + 768) = v222;
  *(v87 + 784) = v607;
  v223 = v602;
  *(v87 + 688) = v601;
  *(v87 + 704) = v223;
  v224 = v604;
  *(v87 + 720) = v603;
  *(v87 + 736) = v224;
  v225 = v598;
  *(v87 + 624) = v597;
  *(v87 + 640) = v225;
  v226 = v600;
  *(v87 + 656) = v599;
  *(v87 + 672) = v226;
  *(v87 + 792) = v583;
  *(v87 + 800) = v596;
  *(v87 + 808) = v209;
  *(v87 + 816) = v595;
  *(v87 + 824) = v580;
  *(v87 + 832) = v577;
  *(v87 + 840) = v574;
  *(v87 + 848) = v213;
  *(v87 + 856) = v571;
  *(v87 + 864) = v568;
  *(v87 + 872) = v210;
  *(v87 + 880) = v565;
  *(v87 + 888) = v562;
  *(v87 + 896) = v211 & 1;
  *(v87 + 897) = v212 & 1;
  *(v87 + 904) = v215;
  *(v87 + 912) = v221;
  v227 = v421;
  *(v87 + 920) = v220 & 1;
  if (v421 == 1)
  {
    v228 = 0;
    v229 = 0;
    v230 = 0;
    v231 = 0;
    v232 = 0;
    LOBYTE(v589[0]) = 0;
    v588[0] = 0;
    LOBYTE(v590[0]) = 0;
    LOBYTE(v594[0]) = 0;
    v233 = 86400;
    v234 = 1;
    v227 = xmmword_1DACD4110;
  }

  else
  {
    v594[0] = v685[0];
    *(v594 + 3) = *(v685 + 3);
    v593[0] = v684[0];
    *(v593 + 3) = *(v684 + 3);
    v592[0] = v683[0];
    *(v592 + 3) = *(v683 + 3);
    v228 = v383;
    v229 = v382;
    v232 = v380;
    v230 = v381;
    v231 = v379;
    v233 = v377;
    v234 = v378;
  }

  v584 = STACK[0x2CB8];
  v578 = STACK[0x2CA9];
  v572 = STACK[0x2CA8];
  v575 = STACK[0x2CA0];
  v569 = STACK[0x2C98];
  v566 = STACK[0x2C90];
  v563 = STACK[0x2C88];
  v551 = STACK[0x2C80];
  v548 = STACK[0x2C78];
  v542 = STACK[0x2C68];
  v545 = STACK[0x2C60];
  v514 = STACK[0x2C58];
  v517 = STACK[0x2C50];
  v508 = STACK[0x2C48];
  v511 = STACK[0x2C40];
  v502 = STACK[0x2C38];
  v505 = STACK[0x2C30];
  v499 = STACK[0x2C28];
  v475 = STACK[0x2C20];
  v496 = STACK[0x2C18];
  *(v87 + 948) = *(v594 + 3);
  *(v87 + 945) = v594[0];
  *(v87 + 964) = *(v593 + 3);
  *(v87 + 961) = v593[0];
  *(v87 + 980) = *(v592 + 3);
  *(v87 + 977) = v592[0];
  v493 = STACK[0x2C10];
  v489 = STACK[0x2C08];
  *(v87 + 944) = v228;
  v485 = STACK[0x2C00];
  *(v87 + 952) = v229;
  v478 = STACK[0x2BF8];
  *(v87 + 960) = v230;
  v481 = STACK[0x2BF0];
  *(v87 + 968) = v234;
  v469 = STACK[0x2BE8];
  *(v87 + 976) = v231;
  v472 = STACK[0x2BE0];
  *(v87 + 984) = v233;
  v466 = STACK[0x2BD8];
  *(v87 + 992) = v232;
  v463 = STACK[0x2BD0];
  v591 = v420;
  v235 = STACK[0x2BC8];
  v457 = STACK[0x2BC0];
  *(v87 + 928) = v227;
  *v590 = v422;
  *&v590[1] = v519;
  *&v590[2] = v100;
  *&v590[3] = v99;
  *&v590[4] = v424;
  *&v590[5] = v423;
  *&v590[6] = v101;
  *&v590[7] = v102;
  *&v590[8] = v426;
  *&v590[9] = v425;
  *&v590[10] = v529;
  *&v590[11] = v527;
  *&v590[12] = v525;
  *&v590[13] = v523;
  *&v590[14] = v532;
  *&v590[15] = v103;
  *&v590[16] = v104;
  *&v590[17] = v429;
  *&v590[18] = v427;
  *&v590[19] = v431;
  v236 = STACK[0x2BB8];
  v237 = STACK[0x2BA8];
  v238 = STACK[0x2B98];
  v239 = STACK[0x2B88];
  v240 = STACK[0x2B78];
  v241 = STACK[0x2B70];
  v242 = STACK[0x2B68];
  v243 = sub_1DAC8AB08(v590);
  v244 = 0.05;
  v245 = 0.01;
  v246 = 0.1;
  if (v243 == 1)
  {
    v247 = 0.05;
  }

  else
  {
    v247 = v422;
  }

  v248 = 0.12;
  *(v87 + 1000) = v247;
  v249 = v519;
  if (v243 == 1)
  {
    v249 = 0.3;
  }

  *(v87 + 1008) = v249;
  v250 = v100;
  if (v243 == 1)
  {
    v250 = 1.0;
  }

  *(v87 + 1016) = v250;
  v251 = v99;
  if (v243 == 1)
  {
    v251 = 0.0;
    v252 = 0.0;
  }

  else
  {
    v252 = v424;
  }

  if (v243 == 1)
  {
    v253 = 0.0;
  }

  else
  {
    v253 = v423;
  }

  *(v87 + 1024) = v251;
  if (v243 != 1)
  {
    v244 = v101;
    v245 = v102;
  }

  *(v87 + 1032) = v252;
  if (v243 == 1)
  {
    v254 = 0.1;
  }

  else
  {
    v254 = v426;
  }

  if (v243 != 1)
  {
    v248 = v425;
  }

  *(v87 + 1040) = v253;
  *(v87 + 1048) = v244;
  v255 = v529;
  if (v243 == 1)
  {
    v255 = 0.15;
  }

  v256 = v527;
  if (v243 == 1)
  {
    v256 = 0.3;
  }

  *(v87 + 1056) = v245;
  v257 = v525;
  if (v243 == 1)
  {
    v257 = 1.0;
  }

  v258 = v523;
  if (v243 == 1)
  {
    v258 = 0.0;
  }

  *(v87 + 1064) = v254;
  v259 = v532;
  if (v243 == 1)
  {
    v259 = 0.3;
  }

  v260 = v103;
  if (v243 == 1)
  {
    v260 = 0.2;
  }

  *(v87 + 1072) = v248;
  v261 = v104;
  if (v243 == 1)
  {
    v261 = 0.5;
  }

  *(v87 + 1080) = v255;
  if (v243 == 1)
  {
    v262 = 0.5;
  }

  else
  {
    v262 = v429;
  }

  if (v243 != 1)
  {
    v246 = v427;
  }

  *(v87 + 1088) = v256;
  if (v243 == 1)
  {
    v263 = 0.0;
  }

  else
  {
    v263 = v431;
  }

  *(v87 + 1096) = v257;
  *(v87 + 1104) = v258;
  *(v87 + 1112) = v259;
  *(v87 + 1120) = v260;
  *(v87 + 1128) = v261;
  *(v87 + 1136) = v262;
  *(v87 + 1144) = v246;
  *(v87 + 1152) = v263;
  memcpy(v589, v686, 0x8DCuLL);
  if (sub_1DAC8AB24(v589) == 1)
  {
    sub_1DAA4C870(v588);
    memcpy(__dst, v588, 0x46BuLL);
    v264 = &__dst[1136];
    v265 = v588;
    v266 = 1131;
  }

  else
  {
    v264 = __dst;
    v265 = v686;
    v266 = 2267;
  }

  memcpy(v264, v265, v266);
  v581 = STACK[0x2E68];
  v533 = STACK[0x2D30];
  v530 = STACK[0x2D20];
  v520 = STACK[0x2CD8];
  v267 = STACK[0x2CC8];
  v460 = STACK[0x2CC0];
  memcpy((v87 + 1592), __dst, 0x8DBuLL);
  v268 = *&v560;
  v269 = *&v539;
  *(v87 + 3944) = v475;
  v270 = *&v554;
  v271 = *&v557;
  *(v87 + 3859) = v242 & 1;
  if (v240)
  {
    v272 = 1;
  }

  else
  {
    v272 = v241;
  }

  *(v87 + 360) = v272;
  if (v239)
  {
    v273 = 2592000.0;
  }

  else
  {
    v273 = *&v536;
  }

  if (v238)
  {
    v268 = 2592000.0;
  }

  if (v237)
  {
    v269 = 3.0;
  }

  if (v236)
  {
    v270 = 2.0;
  }

  v274 = 32123;
  if (v235)
  {
    v274 = v457;
  }

  v275 = 0xE200000000000000;
  if (v235)
  {
    v275 = v235;
  }

  *(v87 + 368) = v273;
  *(v87 + 376) = v268;
  *(v87 + 384) = v269;
  *(v87 + 392) = v270;
  *(v87 + 1160) = v274;
  *(v87 + 1168) = v275;
  v276 = 0x3FD0000000000000;
  if ((v466 & 1) == 0)
  {
    v276 = v463;
  }

  *(v87 + 3864) = v276;
  *(v87 + 3872) = 0;
  v277 = 2;
  if ((v469 & 1) == 0)
  {
    v277 = v472;
  }

  *(v87 + 3880) = v277;
  *(v87 + 3888) = 0;
  v278 = 2592000;
  if ((v478 & 1) == 0)
  {
    v278 = v481;
  }

  *(v87 + 3896) = v278;
  *(v87 + 3904) = 0;
  v279 = 0x3FF0000000000000;
  v280 = v485;
  if (v489)
  {
    v280 = 0x3FF0000000000000;
  }

  *(v87 + 3912) = v280;
  *(v87 + 3920) = 0;
  if ((v496 & 1) == 0)
  {
    v279 = v493;
  }

  *(v87 + 3928) = v279;
  *(v87 + 3936) = 0;
  *(v87 + 3952) = v499 & 1;
  v281 = 600;
  if ((v502 & 1) == 0)
  {
    v281 = v505;
  }

  *(v87 + 1272) = v281;
  v282 = 7200;
  if ((v508 & 1) == 0)
  {
    v282 = v511;
  }

  *(v87 + 1280) = v282;
  v283 = 300;
  if ((v514 & 1) == 0)
  {
    v283 = v517;
  }

  *(v87 + 1288) = v283;
  v284 = 180;
  if ((v542 & 1) == 0)
  {
    v284 = v545;
  }

  *(v87 + 1296) = v284;
  if (v548)
  {
    v271 = 3.0;
  }

  *(v87 + 1304) = v271;
  v285 = 0x80000001DACEDCA0;
  v286 = 0xD00000000000001CLL;
  if (v563)
  {
    v286 = v551;
    v285 = v563;
  }

  *(v87 + 1312) = v286;
  *(v87 + 1320) = v285;
  v287 = 0x80000001DACEDCC0;
  v288 = 0xD00000000000002BLL;
  if (v569)
  {
    v288 = v566;
    v287 = v569;
  }

  *(v87 + 1328) = v288;
  *(v87 + 1336) = v287;
  v289 = v575;
  if (v572)
  {
    v289 = 0;
  }

  *(v87 + 1344) = v289;
  *(v87 + 1176) = v578 & 1;
  if (v584)
  {
    [objc_opt_self() fc_timeIntervalOneDay];
  }

  else
  {
    v290 = STACK[0x2CB0];
  }

  v585 = STACK[0x2F00];
  v579 = STACK[0x2ED8];
  v576 = STACK[0x2EA8];
  v573 = STACK[0x2EA0];
  v570 = STACK[0x2E98];
  v567 = STACK[0x2E90];
  v564 = STACK[0x2E88];
  v561 = STACK[0x2E80];
  v558 = STACK[0x2E78];
  v555 = STACK[0x2E71];
  v552 = STACK[0x2E70];
  v549 = STACK[0x2E60];
  v546 = STACK[0x2E58];
  v543 = STACK[0x2E50];
  v540 = STACK[0x2E48];
  v537 = STACK[0x2E40];
  v528 = STACK[0x2E38];
  v526 = STACK[0x2E30];
  v524 = STACK[0x2E28];
  v518 = STACK[0x2E20];
  v515 = STACK[0x2E18];
  v512 = STACK[0x2E10];
  v509 = STACK[0x2E08];
  v506 = STACK[0x2E00];
  v503 = STACK[0x2DF8];
  v497 = STACK[0x2DE8];
  v500 = STACK[0x2DE0];
  v494 = STACK[0x2DD8];
  v479 = STACK[0x2DD0];
  v291 = v460;
  if (v267)
  {
    v291 = 0;
  }

  *(v87 + 3968) = v291;
  v476 = STACK[0x2DC8];
  *(v87 + 3960) = v290;
  v473 = STACK[0x2DC0];
  v470 = STACK[0x2DB8];
  v467 = STACK[0x2DB0];
  v292 = STACK[0x2DA8];
  v293 = STACK[0x2DA0];
  v294 = STACK[0x2D98];
  v295 = STACK[0x2D90];
  v296 = STACK[0x2D88];
  v297 = STACK[0x2D80];
  v298 = STACK[0x2D70];
  v299 = STACK[0x2D68];
  v300 = STACK[0x2D60];
  v301 = STACK[0x2D58];
  v302 = STACK[0x2D50];
  v303 = STACK[0x2D48];
  v304 = STACK[0x2D40];
  v305 = STACK[0x2D38];
  v306 = STACK[0x2D28];
  v307 = STACK[0x2D18];
  v308 = STACK[0x2D10];
  v309 = STACK[0x2D08];
  v310 = STACK[0x2D00];
  v311 = STACK[0x2CF9];
  v312 = STACK[0x2CF8];
  v313 = STACK[0x2CF0];
  v314 = STACK[0x2CE8];
  v315 = STACK[0x2CE0];
  if (v520)
  {
    v521 = STACK[0x2D70];
    v490 = STACK[0x2DA8];
    v486 = STACK[0x2D98];
    v482 = STACK[0x2DA0];
    v464 = STACK[0x2D90];
    v461 = STACK[0x2D88];
    v458 = STACK[0x2D80];
    v455 = STACK[0x2D68];
    v447 = STACK[0x2D08];
    v430 = STACK[0x2D60];
    v316 = STACK[0x2D58];
    v428 = STACK[0x2D50];
    v432 = STACK[0x2CF8];
    v317 = STACK[0x2D48];
    v451 = STACK[0x2D10];
    v318 = STACK[0x2D40];
    v449 = STACK[0x2D00];
    v319 = STACK[0x2D38];
    v453 = STACK[0x2D18];
    v320 = STACK[0x2D28];
    v321 = STACK[0x2CE0];
    [objc_opt_self() fc_timeIntervalOneDay];
    v315 = v321;
    v306 = v320;
    v307 = v453;
    v305 = v319;
    v310 = v449;
    v304 = v318;
    v308 = v451;
    v303 = v317;
    v312 = v432;
    v302 = v428;
    v301 = v316;
    v300 = v430;
    v309 = v447;
    v298 = v521;
    v299 = v455;
    v297 = v458;
    v296 = v461;
    v295 = v464;
    v293 = v482;
    v294 = v486;
    v292 = v490;
    v323 = v322 * 15.0;
  }

  else
  {
    v323 = *&STACK[0x2CD0];
  }

  v324 = 0xFFFFFFFFLL;
  if ((v314 & 1) == 0)
  {
    v324 = v315;
  }

  *(v87 + 1184) = v324;
  v325 = MEMORY[0x1E69E7CC0];
  if (v313)
  {
    v326 = v313;
  }

  else
  {
    v326 = MEMORY[0x1E69E7CC0];
  }

  *(v87 + 1192) = v326;
  v327 = v312 & 1;
  v328 = v325;
  *(v87 + 3984) = v327;
  *(v87 + 3985) = (v311 == 2) | v311 & 1;
  if (v309)
  {
    v329 = 0;
  }

  else
  {
    v329 = v310;
  }

  *(v87 + 3992) = v329;
  if (v307)
  {
    v330 = 0xFFFFFFFFLL;
  }

  else
  {
    v330 = v308;
  }

  *(v87 + 1200) = v330;
  v331 = *&v530;
  if (v306)
  {
    v331 = -600.0;
  }

  v332 = 600.0;
  if ((v305 & 1) == 0)
  {
    v332 = *&v533;
  }

  if (v304)
  {
    v333 = v304;
  }

  else
  {
    v333 = v325;
  }

  *(v87 + 1224) = v333;
  if (v303)
  {
    v334 = v303;
  }

  else
  {
    v334 = v325;
  }

  *(v87 + 1232) = v334;
  *(v87 + 3976) = v323;
  if (v302)
  {
    v335 = v302;
  }

  else
  {
    v335 = v325;
  }

  *(v87 + 1240) = v335;
  v336 = STACK[0x2EF8];
  *(v87 + 4000) = v301;
  v337 = STACK[0x2EF0];
  *(v87 + 4008) = v300 & 1;
  v338 = STACK[0x2EE9];
  v339 = 5;
  if ((v298 & 1) == 0)
  {
    v339 = v299;
  }

  v534 = STACK[0x2EE8];
  *(v87 + 4016) = v339;
  v531 = STACK[0x2EE0];
  if (v297)
  {
    v340 = v297;
  }

  else
  {
    v340 = v325;
  }

  *(v87 + 1248) = v340;
  v522 = STACK[0x2ED0];
  if (v296)
  {
    v341 = v296;
  }

  else
  {
    v341 = v325;
  }

  *(v87 + 1256) = v341;
  v491 = STACK[0x2EC8];
  if (v295)
  {
    v342 = v295;
  }

  else
  {
    v342 = v325;
  }

  *(v87 + 1264) = v342;
  v343 = STACK[0x2EC0];
  v344 = 1296000;
  if ((v293 & 1) == 0)
  {
    v344 = v294;
  }

  v487 = STACK[0x2EB8];
  *(v87 + 1352) = v344;
  if (v292)
  {
    v345 = v292;
  }

  else
  {
    v345 = &unk_1F567D1D8;
  }

  v483 = STACK[0x2EB0];
  *(v87 + 1208) = v331;
  *(v87 + 1216) = v332;
  *(v87 + 4024) = v445;
  *(v87 + 4040) = v443;
  v346 = sub_1DAA5518C(v345);

  *(v87 + 1360) = v346;
  v347 = v467;
  if (v470)
  {
    v347 = 0;
  }

  *(v87 + 1368) = v347;
  v348 = v473;
  if (v476)
  {
    v348 = 0;
  }

  *(v87 + 1376) = v348;
  if (v494)
  {
    v349 = 0;
  }

  else
  {
    v349 = v479;
  }

  v350 = type metadata accessor for AppConfiguration(0);
  v351 = *&v581;
  *(v87 + v350[135]) = v349;
  v352 = v500;
  if (v497)
  {
    v352 = 0;
  }

  *(v87 + 4056) = v352;
  *(v87 + 4064) = 0;
  v353 = 0x7FEFFFFFFFFFFFFFLL;
  if (!v434)
  {
    v353 = v440;
  }

  v354 = 0x7FFFFFFFFFFFFFFFLL;
  v355 = v442;
  if (v434)
  {
    v355 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v356 = v438;
  if (v434)
  {
    v356 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v354 = v436;
  }

  *(v87 + 4072) = v353;
  *(v87 + 4080) = v355;
  *(v87 + 4088) = v356;
  *(v87 + 4096) = v354;
  *(v87 + 4104) = 0;
  *(v87 + 4112) = v503;
  *(v87 + 4120) = v506;
  v357 = v509;
  if (!v512)
  {
    v357 = 0;
  }

  v358 = 0xE000000000000000;
  if (v512)
  {
    v358 = v512;
  }

  *(v87 + 4128) = v357;
  *(v87 + 4136) = v358;
  v359 = v515;
  if (v518)
  {
    v359 = 0;
  }

  *(v87 + 4144) = v359;
  *(v87 + 4152) = 0;
  v360 = v524;
  if (v526)
  {
    v360 = 0;
  }

  *(v87 + 4160) = v360;
  *(v87 + 4168) = 0;
  *(v87 + 4176) = v528;
  *(v87 + 4184) = v537;
  v361 = v540;
  if (v543)
  {
    v361 = 0;
  }

  *(v87 + 4192) = v361;
  *(v87 + 4200) = 0;
  v362 = v546;
  if (v549)
  {
    v362 = 1;
  }

  *(v87 + 4208) = v362;
  if (v552)
  {
    v351 = 7776000.0;
  }

  *(v87 + 4224) = (v555 == 2) | v555 & 1;
  v363 = v558;
  if (v561)
  {
    v363 = 0;
  }

  *(v87 + 4232) = v363;
  v364 = v564;
  if (v567)
  {
    v364 = 0xFFFFFFFFLL;
  }

  *(v87 + 4248) = v364;
  v365 = v570;
  if (v573)
  {
    v365 = 0xFFFFFFFFLL;
  }

  *(v87 + 4256) = v365;
  *(v87 + 4216) = v351;
  v366 = v576;
  if (!v576)
  {
    sub_1DAA4691C(0, &qword_1EE123B78, MEMORY[0x1E6969680], MEMORY[0x1E69E6F90]);
    v367 = *(sub_1DACB7DC4() - 8);
    v582 = v338;
    v368 = v336;
    v369 = v337;
    v370 = *(v367 + 72);
    v371 = (*(v367 + 80) + 32) & ~*(v367 + 80);
    v366 = swift_allocObject();
    *(v366 + 16) = xmmword_1DACC1D40;
    sub_1DACB7DB4();
    v337 = v369;
    v336 = v368;
    v338 = v582;
    sub_1DACB7DB4();
  }

  v372 = sub_1DAA4CB70(v366);

  *(v87 + 4264) = v372;
  v373 = v483;
  if (v487)
  {
    v373 = 0;
  }

  *(v87 + 4272) = v373;
  if (v343)
  {
    v374 = v343;
  }

  else
  {
    v374 = v328;
  }

  *(v87 + 4240) = v374;
  *(v87 + 4280) = v491 & 1;
  *(v87 + 4288) = v522;
  sub_1DAC8AB40(v579, v87 + v350[134]);
  *(v87 + v350[136]) = v531;
  *(v87 + v350[137]) = (v534 == 2) | v534 & 1;
  *(v87 + v350[138]) = v338 & 1;
  v375 = v87 + v350[139];
  *v375 = v337;
  *(v375 + 8) = v336 & 1;
  return sub_1DAC8AB40(v585, v87 + v350[140]);
}

uint64_t sub_1DAC7E3A0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAC7E4C8@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 416), 0x1F9uLL);
  memcpy(a1, (v1 + 416), 0x1F9uLL);
  return sub_1DAA4F398(__dst, v4);
}

uint64_t sub_1DAC7E51C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 976);
  v9 = *(v1 + 960);
  v10 = v2;
  v11 = *(v1 + 992);
  v3 = v11;
  v4 = *(v1 + 944);
  v8[0] = *(v1 + 928);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1DAA4F3F4(v8, v7);
}

__n128 sub_1DAC7E568@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1112);
  *(a1 + 96) = *(v1 + 1096);
  *(a1 + 112) = v2;
  v3 = *(v1 + 1144);
  *(a1 + 128) = *(v1 + 1128);
  *(a1 + 144) = v3;
  v4 = *(v1 + 1048);
  *(a1 + 32) = *(v1 + 1032);
  *(a1 + 48) = v4;
  v5 = *(v1 + 1080);
  *(a1 + 64) = *(v1 + 1064);
  *(a1 + 80) = v5;
  result = *(v1 + 1000);
  v7 = *(v1 + 1016);
  *a1 = result;
  *(a1 + 16) = v7;
  return result;
}

uint64_t sub_1DAC7E598()
{
  v1 = *(v0 + 1160);
  v2 = *(v0 + 1168);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAC7E654()
{
  v1 = *(v0 + 1312);
  v2 = *(v0 + 1320);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAC7E688()
{
  v1 = *(v0 + 1328);
  v2 = *(v0 + 1336);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAC7E6E4()
{
  v1 = *(v0 + 1384);
  v2 = *(v0 + 1392);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAC7E738()
{
  result = *(v0 + 4056);
  v2 = *(v0 + 4064);
  return result;
}

__n128 sub_1DAC7E744@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4104);
  result = *(v1 + 4072);
  v4 = *(v1 + 4088);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t AppConfiguration.userConcernConfigurationResourceId.getter()
{
  v1 = *(v0 + 4112);
  v2 = *(v0 + 4120);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAC7E790()
{
  v1 = *(v0 + 4128);
  v2 = *(v0 + 4136);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAC7E7C4()
{
  result = *(v0 + 4144);
  v2 = *(v0 + 4152);
  return result;
}

uint64_t sub_1DAC7E7D4()
{
  result = *(v0 + 4160);
  v2 = *(v0 + 4168);
  return result;
}

uint64_t sub_1DAC7E7E4()
{
  v1 = *(v0 + 4176);
  v2 = *(v0 + 4184);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAC7E818()
{
  result = *(v0 + 4192);
  v2 = *(v0 + 4200);
  return result;
}

uint64_t sub_1DAC7E8AC()
{
  v1 = *(v0 + *(type metadata accessor for AppConfiguration(0) + 544));

  return sub_1DACB71E4();
}

uint64_t sub_1DAC7E928()
{
  v1 = (v0 + *(type metadata accessor for AppConfiguration(0) + 556));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_1DAC7E9A8(uint64_t a1)
{
  v470 = v1;
  v2 = MEMORY[0x1EEE9AC00](a1);
  v383 = v3;
  v4 = MEMORY[0x1E69E6720];
  sub_1DAA4691C(0, &qword_1EE11FF70, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v381 = v163 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v382 = v163 - v9;
  sub_1DAA4691C(0, &qword_1EE124F88, type metadata accessor for LanguageConfig, v4);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v380 = v163 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v379 = v163 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v378 = v163 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v377 = v163 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v376 = v163 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v375 = v163 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v374 = v163 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v373 = v163 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v372 = v163 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v371 = v163 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v370 = v163 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v369 = v163 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v368 = v163 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v384 = v163 - v38;
  v39 = MEMORY[0x1E69E6F48];
  sub_1DAC8ED5C(0, &qword_1EE123CC8, sub_1DAC8ABF4, &type metadata for LocalizationKeys, MEMORY[0x1E69E6F48]);
  v386 = v40;
  v385 = *(v40 - 8);
  v41 = *(v385 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v388 = v163 - v42;
  sub_1DAC8ED5C(0, &qword_1EE123CD0, sub_1DAC8AC48, &type metadata for AppConfiguration.CodingKeys, v39);
  v44 = v43;
  v387 = *(v43 - 8);
  v45 = *(v387 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v47 = v163 - v46;
  v48 = type metadata accessor for AppConfiguration(0);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v51 = v163 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v2;
  v54 = *(v2 + 24);
  v53 = *(v2 + 32);
  v55 = v52;
  __swift_project_boxed_opaque_existential_1(v52, v54);
  sub_1DAC8AC48();
  v56 = v470;
  sub_1DACBA2F4();
  if (v56)
  {
    v57 = v55;
    return __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v470 = v51;
  v366 = v47;
  v367 = v44;
  v58 = swift_allocObject();
  *(v58 + 16) = MEMORY[0x1E69E7CC0];
  swift_retain_n();
  v59 = v55[4];
  __swift_project_boxed_opaque_existential_1(v55, v55[3]);
  sub_1DAC8ABF4();
  swift_retain_n();
  sub_1DACBA2F4();
  sub_1DAA4691C(0, &qword_1EE123F78, type metadata accessor for LanguageConfig, MEMORY[0x1E69E62F8]);
  LOBYTE(v410[0]) = 0;
  sub_1DAC8AC9C();
  sub_1DACB9F84();
  v363 = (v58 + 16);
  v364 = v58;
  v365 = v55;
  if (*v411)
  {
    v60 = *v411;
  }

  else
  {
    v60 = MEMORY[0x1E69E7CC0];
  }

  v411[0] = 1;
  v61 = sub_1DACB9F34();
  v63 = v62;
  v64 = sub_1DACB7D64();
  sub_1DAC85EC0(v60, v64, v61, v63, v384);

  v411[0] = 0;
  v65 = sub_1DACB9F44();
  if (v65 == 2)
  {
    v66 = v365[4];
    __swift_project_boxed_opaque_existential_1(v365, v365[3]);
    v67 = sub_1DACBA2E4();
    if (qword_1EE123D90 != -1)
    {
      swift_once();
    }

    v68 = sub_1DACB9DF4();
    v69 = __swift_project_value_buffer(v68, qword_1EE123D98);
    sub_1DAC7BFA8(v69, v67, v411);

    if (*&v411[24])
    {
      if (swift_dynamicCast())
      {
        v65 = v469;
        goto LABEL_15;
      }
    }

    else
    {
      sub_1DAC8AD74(v411, &qword_1EE11F460, MEMORY[0x1E69E7CA0] + 8);
    }

    v65 = 2;
  }

  v469 = v65;
LABEL_15:
  sub_1DAA46070(0, &qword_1EE123E50, MEMORY[0x1E69E7360], MEMORY[0x1E69E62F8]);
  v411[0] = 1;
  sub_1DAC8ADE4();
  sub_1DACB9F84();
  if (v410[0])
  {
    v362 = v410[0];
    v468 = v410[0];
  }

  else
  {
    v361 = v65;
    v70 = v365[4];
    __swift_project_boxed_opaque_existential_1(v365, v365[3]);
    v71 = sub_1DACBA2E4();
    if (qword_1EE123D68 != -1)
    {
      swift_once();
    }

    v72 = sub_1DACB9DF4();
    v73 = __swift_project_value_buffer(v72, qword_1EE123D70);
    sub_1DAC7BFA8(v73, v71, v411);

    if (*&v411[24])
    {
      v74 = swift_dynamicCast();
      v65 = v361;
      if (v74)
      {
        v75 = v468;
      }

      else
      {
        v75 = 0;
        v468 = 0;
      }

      v362 = v75;
    }

    else
    {
      sub_1DAC8AD74(v411, &qword_1EE11F460, MEMORY[0x1E69E7CA0] + 8);
      v362 = 0;
      v468 = 0;
      v65 = v361;
    }
  }

  sub_1DAA46070(0, &qword_1EE123E68, MEMORY[0x1E69E72F0], MEMORY[0x1E69E62F8]);
  v411[0] = 2;
  sub_1DAC8AE78();
  sub_1DACB9F84();
  v361 = v65;
  if (v410[0])
  {
    v360 = v410[0];
    v467 = v410[0];
LABEL_29:
    v77 = v364;
    goto LABEL_38;
  }

  v78 = v365[4];
  __swift_project_boxed_opaque_existential_1(v365, v365[3]);
  v79 = sub_1DACBA2E4();
  if (qword_1EE123D40 != -1)
  {
    swift_once();
  }

  v80 = sub_1DACB9DF4();
  v81 = __swift_project_value_buffer(v80, qword_1EE123D48);
  sub_1DAC7BFA8(v81, v79, v411);

  if (!*&v411[24])
  {
    sub_1DAC8AD74(v411, &qword_1EE11F460, MEMORY[0x1E69E7CA0] + 8);
    v360 = 0;
    v467 = 0;
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    v82 = v467;
  }

  else
  {
    v82 = 0;
    v467 = 0;
  }

  v77 = v364;
  v360 = v82;
LABEL_38:
  LOBYTE(v410[0]) = 3;
  sub_1DACB9F84();
  v359 = *v411;
  v358 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(3, v77);
  }

  LOBYTE(v410[0]) = 4;
  sub_1DACB9F84();
  v357 = *v411;
  v356 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(4, v77);
  }

  LOBYTE(v410[0]) = 5;
  sub_1DACB9F84();
  v83 = v362;
  v355 = *v411;
  v84 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(5, v364);
  }

  LOBYTE(v410[0]) = 6;
  sub_1DACB9F84();
  v354 = *v411;
  v85 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(6, v364);
  }

  LOBYTE(v410[0]) = 7;
  sub_1DACB9F84();
  v353 = *v411;
  v86 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(7, v364);
  }

  LOBYTE(v410[0]) = 8;
  sub_1DACB9F84();
  v352 = *v411;
  v351 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(8, v364);
  }

  LOBYTE(v410[0]) = 9;
  sub_1DACB9F84();
  v349 = *v411;
  v348 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(9, v364);
  }

  LOBYTE(v410[0]) = 10;
  sub_1DAA46070(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v88 = v87;
  v89 = sub_1DAB588C4();
  v350 = v88;
  v347 = v89;
  sub_1DACB9F84();
  v346 = *v411;
  if (!*v411)
  {
    sub_1DAC8AA30(10, v364);
  }

  v411[0] = 11;
  sub_1DACB9F84();
  v345 = LOBYTE(v410[0]);
  if (LOBYTE(v410[0]) == 2)
  {
    sub_1DAC8AA30(11, v364);
  }

  v411[0] = 12;
  sub_1DACB9F84();
  v344 = LOBYTE(v410[0]);
  if (LOBYTE(v410[0]) == 2)
  {
    sub_1DAC8AA30(12, v364);
  }

  LOBYTE(v410[0]) = 13;
  sub_1DACB9F84();
  v343 = *v411;
  v342 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(13, v364);
  }

  v411[0] = 14;
  sub_1DACB9F84();
  v341 = LOBYTE(v410[0]);
  if (LOBYTE(v410[0]) == 2)
  {
    sub_1DAC8AA30(14, v364);
  }

  v411[0] = 15;
  sub_1DACB9F84();
  v340 = LOBYTE(v410[0]);
  if (LOBYTE(v410[0]) == 2)
  {
    sub_1DAC8AA30(15, v364);
  }

  LOBYTE(v410[0]) = 16;
  sub_1DACB9F84();
  v339 = *v411;
  v338 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(16, v364);
  }

  LOBYTE(v410[0]) = 17;
  sub_1DACB9F84();
  v337 = *v411;
  v336 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(17, v364);
  }

  LOBYTE(v410[0]) = 18;
  sub_1DACB9F84();
  v335 = *v411;
  v334 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(18, v364);
  }

  LOBYTE(v410[0]) = 19;
  sub_1DACB9F84();
  v333 = *v411;
  v332 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(19, v364);
  }

  LOBYTE(v410[0]) = 20;
  sub_1DACB9F84();
  v331 = *v411;
  v330 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(20, v364);
  }

  LOBYTE(v410[0]) = 21;
  sub_1DACB9F84();
  v329 = *v411;
  v328 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(21, v364);
  }

  LOBYTE(v410[0]) = 22;
  sub_1DACB9F84();
  v327 = *v411;
  v326 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(22, v364);
  }

  LOBYTE(v410[0]) = 23;
  sub_1DACB9F84();
  v324 = *v411;
  v325 = *&v411[8];
  if (!*&v411[8])
  {
    sub_1DAC8AA30(23, v364);
  }

  LOBYTE(v410[0]) = 24;
  sub_1DACB9F84();
  v323 = *v411;
  v322 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(24, v364);
  }

  LOBYTE(v410[0]) = 25;
  sub_1DACB9F84();
  v321 = *v411;
  v320 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(25, v364);
  }

  LOBYTE(v410[0]) = 26;
  sub_1DACB9F84();
  v319 = *v411;
  v318 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(26, v364);
  }

  LOBYTE(v410[0]) = 27;
  sub_1DACB9F84();
  v317 = *v411;
  v316 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(27, v364);
  }

  LOBYTE(v410[0]) = 28;
  sub_1DACB9F84();
  v315 = *v411;
  v314 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(28, v364);
  }

  LOBYTE(v410[0]) = 29;
  sub_1DACB9F84();
  v313 = *v411;
  v312 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(29, v364);
  }

  LOBYTE(v410[0]) = 30;
  sub_1DACB9F84();
  v303 = *v411;
  v302 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(30, v364);
  }

  LOBYTE(v410[0]) = 31;
  sub_1DACB9F84();
  v297 = *v411;
  v296 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(31, v364);
  }

  v411[0] = 32;
  sub_1DACB9F84();
  v294 = LOBYTE(v410[0]);
  if (LOBYTE(v410[0]) == 2)
  {
    sub_1DAC8AA30(32, v364);
  }

  v411[0] = 33;
  sub_1DACB9F84();
  v238 = LOBYTE(v410[0]);
  if (LOBYTE(v410[0]) == 2)
  {
    sub_1DAC8AA30(33, v364);
  }

  v411[0] = 34;
  sub_1DACB9F84();
  v237 = LOBYTE(v410[0]);
  if (LOBYTE(v410[0]) == 2)
  {
    sub_1DAC8AA30(34, v364);
  }

  LOBYTE(v410[0]) = 35;
  sub_1DACB9F84();
  v236 = *v411;
  v235 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(35, v364);
  }

  LOBYTE(v410[0]) = 36;
  sub_1DACB9F84();
  v234 = *v411;
  v233 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(36, v364);
  }

  LOBYTE(v410[0]) = 37;
  sub_1DACB9F84();
  v232 = *v411;
  v231 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(37, v364);
  }

  LOBYTE(v410[0]) = 38;
  sub_1DACB9F84();
  v230 = *v411;
  v229 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(38, v364);
  }

  LOBYTE(v410[0]) = 39;
  sub_1DACB9F84();
  v228 = *v411;
  v227 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(39, v364);
  }

  LOBYTE(v410[0]) = 40;
  sub_1DACB9F84();
  v226 = *v411;
  v225 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(40, v364);
  }

  LOBYTE(v410[0]) = 41;
  sub_1DACB9F84();
  v224 = *v411;
  v223 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(41, v364);
  }

  LOBYTE(v410[0]) = 42;
  sub_1DACB9F84();
  v222 = *v411;
  v221 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(42, v364);
  }

  LOBYTE(v410[0]) = 43;
  sub_1DACB9F84();
  v220 = *v411;
  v219 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(43, v364);
  }

  LOBYTE(v410[0]) = 44;
  sub_1DACB9F84();
  v218 = *v411;
  v217 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(44, v364);
  }

  LOBYTE(v410[0]) = 45;
  sub_1DACB9F84();
  v216 = *v411;
  v215 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(45, v364);
  }

  v411[0] = 46;
  sub_1DACB9F84();
  v214 = LOBYTE(v410[0]);
  if (LOBYTE(v410[0]) == 2)
  {
    sub_1DAC8AA30(46, v364);
  }

  LOBYTE(v410[0]) = 47;
  sub_1DACB9F84();
  v213 = *v411;
  v212 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(47, v364);
  }

  v90 = v368;
  sub_1DAA540A0(v384, v368, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  v91 = type metadata accessor for LanguageConfig(0);
  v92 = *(v91 - 8);
  v93 = *(v92 + 48);
  v300 = v91;
  v299 = v93;
  v298 = v92 + 48;
  if ((v93)(v90, 1) == 1)
  {
    sub_1DAA54120(v368, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  }

  else
  {
    v94 = v368;
    v95 = *(v368 + 24);
    v268 = *(v368 + 16);
    sub_1DACB71E4();
    sub_1DAC8EE90(v94, type metadata accessor for LanguageConfig);
    v368 = v95;
    if (v95)
    {
      goto LABEL_134;
    }
  }

  LOBYTE(v410[0]) = 83;
  sub_1DACB9F84();
  v268 = *v411;
  v368 = *&v411[8];
  if (!*&v411[8])
  {
    sub_1DAC8AA30(83, v364);
  }

LABEL_134:
  v411[0] = 84;
  sub_1DACB9F84();
  v211 = LOBYTE(v410[0]);
  if (LOBYTE(v410[0]) == 2)
  {
    sub_1DAC8AA30(84, v364);
  }

  v411[0] = 85;
  sub_1DACB9F84();
  v210 = LOBYTE(v410[0]);
  if (LOBYTE(v410[0]) == 2)
  {
    sub_1DAC8AA30(85, v364);
  }

  LOBYTE(v410[0]) = 86;
  sub_1DACB9F84();
  v209 = *v411;
  v208 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(86, v364);
  }

  LOBYTE(v410[0]) = 87;
  sub_1DACB9F84();
  v207 = *v411;
  v206 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(87, v364);
  }

  v96 = v369;
  sub_1DAA540A0(v384, v369, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  if (v299(v96, 1, v300) == 1)
  {
    sub_1DAA54120(v369, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  }

  else
  {
    v97 = v369;
    v98 = *(v369 + 40);
    v267 = *(v369 + 32);
    sub_1DACB71E4();
    sub_1DAC8EE90(v97, type metadata accessor for LanguageConfig);
    v369 = v98;
    if (v98)
    {
      goto LABEL_148;
    }
  }

  LOBYTE(v410[0]) = 88;
  sub_1DACB9F84();
  v267 = *v411;
  v369 = *&v411[8];
  if (!*&v411[8])
  {
    sub_1DAC8AA30(88, v364);
  }

LABEL_148:
  LOBYTE(v410[0]) = 89;
  sub_1DACB9F84();
  v205 = *v411;
  v311 = *&v411[8];
  if (!*&v411[8])
  {
    sub_1DAC8AA30(89, v364);
  }

  LOBYTE(v410[0]) = 90;
  sub_1DACB9F84();
  *&v301 = 0;
  v204 = *v411;
  v203 = v411[8];
  if (v411[8])
  {
    sub_1DAC8AA30(90, v364);
  }

  v99 = v370;
  sub_1DAA540A0(v384, v370, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  if (v299(v99, 1, v300) == 1)
  {
    sub_1DAA54120(v370, &qword_1EE124F88, type metadata accessor for LanguageConfig);
    v100 = 0;
    v310 = 0;
  }

  else
  {
    v101 = v370;
    v102 = *(v370 + 112);
    v309 = *(v370 + 96);
    v103 = *(&v309 + 1);
    v100 = v309;
    v308 = v102;
    v310 = *(&v102 + 1);
    sub_1DAC8B694(v309, *(&v309 + 1));
    sub_1DAC8EE90(v101, type metadata accessor for LanguageConfig);
    if (v103)
    {
      goto LABEL_160;
    }
  }

  LOBYTE(v410[0]) = 91;
  sub_1DAC8AF0C();
  v104 = v301;
  sub_1DACB9F84();
  *&v301 = v104;
  if (v104)
  {

    sub_1DAA54120(v384, &qword_1EE124F88, type metadata accessor for LanguageConfig);
    (*(v385 + 8))(v388, v386);
    (*(v387 + 8))(v366, v367);
    sub_1DAC8AF60(v100, 0);

LABEL_395:

    v57 = v365;
    return __swift_destroy_boxed_opaque_existential_1(v57);
  }

  if (!*&v411[8])
  {
    sub_1DAC8AA30(91, v364);
  }

  sub_1DAC8AF60(v100, 0);
  v309 = *v411;
  v308 = *&v411[16];
LABEL_160:
  v465 = v309;
  v466 = v308;
  v464 = 92;
  sub_1DAC8AFA4();
  v105 = v301;
  sub_1DACB9F84();
  if (v105)
  {

    sub_1DAC8AF60(v465, *(&v465 + 1));
    sub_1DAA54120(v384, &qword_1EE124F88, type metadata accessor for LanguageConfig);
    (*(v385 + 8))(v388, v386);
    (*(v387 + 8))(v366, v367);

    v57 = v365;
    return __swift_destroy_boxed_opaque_existential_1(v57);
  }

  if (!*(&v459 + 1))
  {
    sub_1DAC8AA30(92, v364);
  }

  v455 = v460;
  v456 = v461;
  v457 = v462;
  v458 = v463;
  v454 = v459;
  LOBYTE(v409[0]) = 93;
  sub_1DAC8AFF8();
  sub_1DACB9F84();
  v106 = v410[0];
  if (LOBYTE(v410[0]) == 2)
  {
    sub_1DAC8AA30(93, v364);
    v106 = v410[0];
  }

  v452 = v106;
  v453 = *&v410[1];
  LOBYTE(v409[0]) = 53;
  sub_1DAA46070(0, &qword_1EE123EF0, &type metadata for ExternalAnalyticsConfiguration, MEMORY[0x1E69E62F8]);
  sub_1DAC8B04C();
  sub_1DACB9F84();
  v370 = v410[0];
  if (!v410[0])
  {
    sub_1DAC8AA30(53, v364);
  }

  v451 = 54;
  sub_1DAA46070(0, &qword_1EE123F50, &type metadata for EndpointConfiguration, MEMORY[0x1E69E62F8]);
  sub_1DAC8B13C();
  sub_1DACB9F84();
  v310 = v450;
  if (!v450)
  {
    sub_1DAC8AA30(54, v364);
  }

  v107 = v371;
  sub_1DAA540A0(v384, v371, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  if (v299(v107, 1, v300) == 1)
  {
    sub_1DAA54120(v371, &qword_1EE124F88, type metadata accessor for LanguageConfig);
    sub_1DAC8B22C(v411);
    v108 = v411;
  }

  else
  {
    v109 = v371;
    memcpy(v410, (v371 + 128), 0x1F9uLL);
    sub_1DAC8B614(v410, v409, &qword_1EE124790, &type metadata for PaidBundleConfiguration);
    sub_1DAC8EE90(v109, type metadata accessor for LanguageConfig);
    memcpy(v411, v410, 0x1F9uLL);
    if (sub_1DAC8AA18(v411) != 1)
    {
      v110 = v410;
      goto LABEL_179;
    }

    v108 = v410;
  }

  memcpy(v448, v108, 0x1F9uLL);
  LOBYTE(v409[0]) = 55;
  sub_1DAC8B27C();
  sub_1DACB9F84();
  memcpy(v410, v411, 0x1F9uLL);
  if (sub_1DAC8AA18(v410) == 1)
  {
    sub_1DAC8AA30(55, v364);
  }

  sub_1DAC8AD74(v448, &qword_1EE124790, &type metadata for PaidBundleConfiguration);
  v110 = v411;
LABEL_179:
  memcpy(v449, v110, sizeof(v449));
  memcpy(v443, v449, sizeof(v443));
  v111 = v372;
  sub_1DAA540A0(v384, v372, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  if (v299(v111, 1, v300) == 1)
  {
    sub_1DAA54120(v372, &qword_1EE124F88, type metadata accessor for LanguageConfig);
    *&v444[0] = 1;
    *(v444 + 8) = 0u;
    *(&v444[1] + 8) = 0u;
    *(&v444[2] + 8) = 0u;
    *(&v444[3] + 1) = 0u;
  }

  else
  {
    v112 = v372;
    v113 = *(v372 + 640);
    *&v411[16] = *(v372 + 656);
    v114 = *(v372 + 688);
    *&v411[32] = *(v372 + 672);
    *&v411[48] = v114;
    v411[64] = *(v372 + 704);
    *v411 = v113;
    sub_1DAC8B614(v411, v410, qword_1EE1206F8, &type metadata for PaidBundleViaOfferConfiguration);
    sub_1DAC8EE90(v112, type metadata accessor for LanguageConfig);
    if (*v411 != 1)
    {
      v115 = *&v411[16];
      v445 = *&v411[32];
      v446 = *&v411[48];
      v447 = v411[64];
      v116 = *v411;
      goto LABEL_188;
    }

    v444[2] = *&v411[32];
    v444[3] = *&v411[48];
    LOBYTE(v444[4]) = v411[64];
    v444[0] = *v411;
    v444[1] = *&v411[16];
  }

  LOBYTE(v403[0]) = 56;
  sub_1DAC8B2D0();
  sub_1DACB9F84();
  if (*&v409[0] == 1)
  {
    sub_1DAC8AA30(56, v364);
  }

  sub_1DAC8AD74(v444, qword_1EE1206F8, &type metadata for PaidBundleViaOfferConfiguration);
  v445 = v409[2];
  v446 = v409[3];
  v447 = v409[4];
  v116 = v409[0];
  v115 = v409[1];
LABEL_188:
  v444[5] = v116;
  v444[6] = v115;
  v440 = v445;
  v441 = v446;
  v442 = v447;
  v438 = v116;
  v439 = v115;
  v437 = 57;
  sub_1DAC8B324();
  sub_1DACB9F84();
  v424[8] = v434;
  v424[9] = v435;
  v425 = v436;
  v424[4] = v430;
  v424[5] = v431;
  v424[6] = v432;
  v424[7] = v433;
  v424[0] = v426;
  v424[1] = v427;
  v424[2] = v428;
  v424[3] = v429;
  if (sub_1DAC8AB08(v424) == 1)
  {
    sub_1DAC8AA30(57, v364);
  }

  v420 = v433;
  v421 = v434;
  v422 = v435;
  v416 = v429;
  v417 = v430;
  v418 = v431;
  v419 = v432;
  v413 = v426;
  v414 = v427;
  v423 = v436;
  v415 = v428;
  v412 = 94;
  sub_1DAC8B378();
  sub_1DACB9F84();
  memcpy(v410, v411, 0x8DCuLL);
  if (sub_1DAC8AB24(v410) == 1)
  {
    sub_1DAC8AA30(94, v364);
  }

  memcpy(v409, v411, 0x8DCuLL);
  LOBYTE(v392) = 95;
  sub_1DACB9F84();
  v202 = v395;
  if (v395 == 2)
  {
    sub_1DAC8AA30(95, v364);
  }

  LOBYTE(v395) = 48;
  sub_1DACB9F84();
  v201 = v392;
  v200 = BYTE8(v392);
  if (BYTE8(v392))
  {
    sub_1DAC8AA30(48, v364);
  }

  LOBYTE(v395) = 49;
  sub_1DACB9F84();
  v199 = v392;
  v198 = BYTE8(v392);
  if (BYTE8(v392))
  {
    sub_1DAC8AA30(49, v364);
  }

  LOBYTE(v395) = 50;
  sub_1DACB9F84();
  v197 = v392;
  v196 = BYTE8(v392);
  if (BYTE8(v392))
  {
    sub_1DAC8AA30(50, v364);
  }

  LOBYTE(v395) = 51;
  sub_1DACB9F84();
  v195 = v392;
  v194 = BYTE8(v392);
  if (BYTE8(v392))
  {
    sub_1DAC8AA30(51, v364);
  }

  LOBYTE(v395) = 52;
  sub_1DACB9F84();
  v193 = v392;
  v192 = BYTE8(v392);
  if (BYTE8(v392))
  {
    sub_1DAC8AA30(52, v364);
  }

  v117 = v373;
  sub_1DAA540A0(v384, v373, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  if (v299(v117, 1, v300) == 1)
  {
    sub_1DAA54120(v373, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  }

  else
  {
    v118 = v373;
    v266 = *(v373 + 712);
    v119 = *(v373 + 720);
    sub_1DACB71E4();
    sub_1DAC8EE90(v118, type metadata accessor for LanguageConfig);
    v373 = v119;
    if (v119)
    {
      goto LABEL_210;
    }
  }

  LOBYTE(v395) = 58;
  sub_1DACB9F84();
  v373 = *(&v392 + 1);
  v266 = v392;
  if (!*(&v392 + 1))
  {
    sub_1DAC8AA30(58, v364);
  }

LABEL_210:
  LOBYTE(v404) = 96;
  sub_1DACB9F84();
  v265 = v403[0];
  if (v403[1])
  {
    sub_1DAC8AA30(96, v364);
    v293 = 1;
  }

  else
  {
    v293 = 0;
  }

  LOBYTE(v404) = 97;
  sub_1DACB9F84();
  v264 = v403[0];
  if (v403[1])
  {
    sub_1DAC8AA30(97, v364);
    v292 = 1;
  }

  else
  {
    v292 = 0;
  }

  LOBYTE(v404) = 98;
  sub_1DACB9F84();
  v263 = v403[0];
  if (v403[1])
  {
    sub_1DAC8AA30(98, v364);
    v291 = 1;
  }

  else
  {
    v291 = 0;
  }

  LOBYTE(v404) = 99;
  sub_1DACB9F84();
  v262 = v403[0];
  if (v403[1])
  {
    sub_1DAC8AA30(99, v364);
    v290 = 1;
  }

  else
  {
    v290 = 0;
  }

  LOBYTE(v404) = 100;
  sub_1DACB9F84();
  v261 = v403[0];
  if (v403[1])
  {
    sub_1DAC8AA30(100, v364);
    v289 = 1;
  }

  else
  {
    v289 = 0;
  }

  LOBYTE(v404) = 101;
  sub_1DACB9F84();
  v260 = v403[0];
  if (v403[1])
  {
    sub_1DAC8AA30(101, v364);
    v288 = 1;
  }

  else
  {
    v288 = 0;
  }

  LOBYTE(v404) = 71;
  sub_1DACB9F84();
  v259 = v403[0];
  if (v403[1])
  {
    sub_1DAC8AA30(71, v364);
    v287 = 1;
  }

  else
  {
    v287 = 0;
  }

  LOBYTE(v404) = 72;
  sub_1DACB9F84();
  v258 = v403[0];
  if (v403[1])
  {
    sub_1DAC8AA30(72, v364);
    v286 = 1;
  }

  else
  {
    v286 = 0;
  }

  LOBYTE(v404) = 73;
  sub_1DACB9F84();
  v257 = v403[0];
  if (v403[1])
  {
    sub_1DAC8AA30(73, v364);
    v285 = 1;
  }

  else
  {
    v285 = 0;
  }

  LOBYTE(v404) = 74;
  sub_1DACB9F84();
  v256 = v403[0];
  if (v403[1])
  {
    sub_1DAC8AA30(74, v364);
    v284 = 1;
  }

  else
  {
    v284 = 0;
  }

  LOBYTE(v404) = 75;
  sub_1DACB9F84();
  v255 = v403[0];
  if (v403[1])
  {
    sub_1DAC8AA30(75, v364);
    v283 = 1;
  }

  else
  {
    v283 = 0;
  }

  v120 = v374;
  sub_1DAA540A0(v384, v374, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  if (v299(v120, 1, v300) == 1)
  {
    sub_1DAA54120(v374, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  }

  else
  {
    v121 = v374;
    v122 = *(v374 + 56);
    v254 = *(v374 + 48);
    sub_1DACB71E4();
    sub_1DAC8EE90(v121, type metadata accessor for LanguageConfig);
    v374 = v122;
    if (v122)
    {
      goto LABEL_249;
    }
  }

  LOBYTE(v395) = 76;
  sub_1DACB9F84();
  v374 = *(&v392 + 1);
  v254 = v392;
  if (!*(&v392 + 1))
  {
    sub_1DAC8AA30(76, v364);
  }

LABEL_249:
  v123 = v375;
  sub_1DAA540A0(v384, v375, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  if (v299(v123, 1, v300) == 1)
  {
    sub_1DAA54120(v375, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  }

  else
  {
    v124 = v375;
    v125 = *(v375 + 72);
    v253 = *(v375 + 64);
    sub_1DACB71E4();
    sub_1DAC8EE90(v124, type metadata accessor for LanguageConfig);
    v375 = v125;
    if (v125)
    {
      goto LABEL_255;
    }
  }

  LOBYTE(v395) = 77;
  sub_1DACB9F84();
  v375 = *(&v392 + 1);
  v253 = v392;
  if (!*(&v392 + 1))
  {
    sub_1DAC8AA30(77, v364);
  }

LABEL_255:
  LOBYTE(v395) = 78;
  sub_1DACB9F84();
  v191 = v392;
  v190 = BYTE8(v392);
  if (BYTE8(v392))
  {
    sub_1DAC8AA30(78, v364);
  }

  LOBYTE(v403[0]) = 59;
  sub_1DACB9F84();
  v282 = v404;
  if (v404 == 2)
  {
    sub_1DAC8AA30(59, v364);
    v282 = 2;
  }

  LOBYTE(v395) = 102;
  sub_1DACB9F84();
  v189 = v392;
  v188 = BYTE8(v392);
  if (BYTE8(v392))
  {
    sub_1DAC8AA30(102, v364);
  }

  LOBYTE(v404) = 103;
  sub_1DACB9F84();
  v252 = v403[0];
  if (v403[1])
  {
    sub_1DAC8AA30(103, v364);
    v281 = 1;
  }

  else
  {
    v281 = 0;
  }

  LOBYTE(v395) = 104;
  sub_1DACB9F84();
  v187 = v392;
  v186 = BYTE8(v392);
  if (BYTE8(v392))
  {
    sub_1DAC8AA30(104, v364);
  }

  LOBYTE(v404) = 60;
  sub_1DACB9F84();
  v251 = v403[0];
  if (v403[1])
  {
    sub_1DAC8AA30(60, v364);
    v280 = 1;
  }

  else
  {
    v280 = 0;
  }

  LOBYTE(v404) = 61;
  sub_1DAA46070(0, &qword_1EE123FB8, &type metadata for StocksKitClientConfig, MEMORY[0x1E69E62F8]);
  sub_1DAC8B3CC();
  sub_1DACB9F84();
  v372 = v403[0];
  if (!v403[0])
  {
    sub_1DAC8AA30(61, v364);
    v372 = 0;
  }

  LOBYTE(v403[0]) = 105;
  sub_1DACB9F84();
  v279 = v404;
  if (v404 == 2)
  {
    sub_1DAC8AA30(105, v364);
    v279 = 2;
  }

  LOBYTE(v403[0]) = 106;
  sub_1DACB9F84();
  v278 = v404;
  if (v404 == 2)
  {
    sub_1DAC8AA30(106, v364);
    v278 = 2;
  }

  LOBYTE(v404) = 107;
  sub_1DACB9F84();
  v250 = v403[0];
  if (v403[1])
  {
    sub_1DAC8AA30(107, v364);
    v277 = 1;
  }

  else
  {
    v277 = 0;
  }

  LOBYTE(v404) = 62;
  sub_1DACB9F84();
  v249 = v403[0];
  if (v403[1])
  {
    sub_1DAC8AA30(62, v364);
    v276 = 1;
  }

  else
  {
    v276 = 0;
  }

  LOBYTE(v404) = 63;
  sub_1DACB9F84();
  v248 = v403[0];
  if (v403[1])
  {
    sub_1DAC8AA30(63, v364);
    v275 = 1;
  }

  else
  {
    v275 = 0;
  }

  LOBYTE(v404) = 64;
  sub_1DACB9F84();
  v247 = v403[0];
  if (v403[1])
  {
    sub_1DAC8AA30(64, v364);
    v274 = 1;
  }

  else
  {
    v274 = 0;
  }

  LOBYTE(v395) = 65;
  sub_1DACB9F84();
  v371 = v392;
  if (!v392)
  {
    sub_1DAC8AA30(65, v364);
  }

  LOBYTE(v395) = 66;
  sub_1DACB9F84();
  *&v309 = v392;
  if (!v392)
  {
    sub_1DAC8AA30(66, v364);
  }

  LOBYTE(v395) = 67;
  sub_1DACB9F84();
  *&v308 = v392;
  if (!v392)
  {
    sub_1DAC8AA30(67, v364);
  }

  LOBYTE(v395) = 108;
  sub_1DACB9F84();
  v185 = v392;
  v184 = BYTE8(v392);
  if (BYTE8(v392))
  {
    sub_1DAC8AA30(108, v364);
  }

  LOBYTE(v395) = 109;
  sub_1DACB9F84();
  v183 = v392;
  v182 = BYTE8(v392);
  if (BYTE8(v392))
  {
    sub_1DAC8AA30(109, v364);
  }

  LOBYTE(v395) = 110;
  sub_1DAC8B4BC();
  sub_1DACB9F84();
  v126 = *(&v392 + 1);
  if (*(&v392 + 1) == 1)
  {
    sub_1DAC8AA30(110, v364);
    v126 = *(&v392 + 1);
  }

  v395 = v392;
  v396 = v126;
  v397 = v393;
  LOBYTE(v389) = 68;
  sub_1DACB9F84();
  v307 = v392;
  if (!v392)
  {
    sub_1DAC8AA30(68, v364);
  }

  LOBYTE(v389) = 69;
  sub_1DACB9F84();
  v305 = v392;
  if (!v392)
  {
    sub_1DAC8AA30(69, v364);
  }

  LOBYTE(v389) = 70;
  sub_1DACB9F84();
  v304 = v392;
  if (!v392)
  {
    sub_1DAC8AA30(70, v364);
  }

  LOBYTE(v404) = 79;
  sub_1DACB9F84();
  v246 = v403[0];
  if (v403[1])
  {
    sub_1DAC8AA30(79, v364);
    v273 = 1;
  }

  else
  {
    v273 = 0;
  }

  LOBYTE(v404) = 80;
  sub_1DACB9F84();
  v306 = v403[0];
  if (!v403[0])
  {
    sub_1DAC8AA30(80, v364);
    v306 = 0;
  }

  LOBYTE(v404) = 81;
  sub_1DACB9F84();
  v245 = v403[0];
  if (v403[1])
  {
    sub_1DAC8AA30(81, v364);
    v272 = 1;
  }

  else
  {
    v272 = 0;
  }

  LOBYTE(v404) = 82;
  sub_1DACB9F84();
  v244 = v403[0];
  if (v403[1])
  {
    sub_1DAC8AA30(82, v364);
    v271 = 1;
  }

  else
  {
    v271 = 0;
  }

  LOBYTE(v404) = -125;
  sub_1DACB9F84();
  v243 = v403[0];
  if (v403[1])
  {
    sub_1DAC8AA30(131, v364);
    v270 = 1;
  }

  else
  {
    v270 = 0;
  }

  LOBYTE(v404) = 111;
  sub_1DACB9F84();
  v242 = v403[0];
  if (v403[1])
  {
    sub_1DAC8AA30(111, v364);
    v269 = 1;
  }

  else
  {
    v269 = 0;
  }

  v127 = v376;
  sub_1DAA540A0(v384, v376, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  if (v299(v127, 1, v300) == 1)
  {
    sub_1DAA54120(v376, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  }

  else
  {
    v128 = *(v376 + 744);
    v301 = *(v376 + 728);
    v295 = v128;
    v129 = *(v376 + 760);
    sub_1DAC8EE90(v376, type metadata accessor for LanguageConfig);
    if (v129 != 1)
    {
      v130 = 0;
      goto LABEL_331;
    }
  }

  LOBYTE(v389) = 112;
  sub_1DAC8B510();
  sub_1DACB9F84();
  if (v394)
  {
    sub_1DAC8AA30(112, v364);
    v130 = v394;
  }

  else
  {
    v130 = 0;
  }

  v301 = v392;
  v295 = v393;
LABEL_331:
  v392 = v301;
  v393 = v295;
  v394 = v130;
  v131 = v377;
  sub_1DAA540A0(v384, v377, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  if (v299(v131, 1, v300) == 1)
  {
    sub_1DAA54120(v377, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  }

  else
  {
    v132 = v377;
    v241 = *(v377 + 768);
    v133 = *(v377 + 776);
    sub_1DACB71E4();
    sub_1DAC8EE90(v132, type metadata accessor for LanguageConfig);
    v377 = v133;
    if (v133)
    {
      goto LABEL_337;
    }
  }

  v391 = 113;
  sub_1DACB9F84();
  v241 = v389;
  v377 = v390;
  if (!v390)
  {
    sub_1DAC8AA30(113, v364);
  }

LABEL_337:
  v134 = v378;
  sub_1DAA540A0(v384, v378, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  if (v299(v134, 1, v300) == 1)
  {
    sub_1DAA54120(v378, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  }

  else
  {
    v135 = v378;
    v240 = *(v378 + 784);
    v136 = *(v378 + 792);
    sub_1DACB71E4();
    sub_1DAC8EE90(v135, type metadata accessor for LanguageConfig);
    v378 = v136;
    if (v136)
    {
      goto LABEL_343;
    }
  }

  v391 = 114;
  sub_1DACB9F84();
  v240 = v389;
  v378 = v390;
  if (!v390)
  {
    sub_1DAC8AA30(114, v364);
  }

LABEL_343:
  v391 = 115;
  sub_1DACB9F84();
  v181 = v389;
  v180 = v390;
  if (v390)
  {
    sub_1DAC8AA30(115, v364);
  }

  v391 = 116;
  sub_1DACB9F84();
  v179 = v389;
  v178 = v390;
  if (v390)
  {
    sub_1DAC8AA30(116, v364);
  }

  v137 = v379;
  sub_1DAA540A0(v384, v379, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  if (v299(v137, 1, v300) == 1)
  {
    sub_1DAA54120(v379, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  }

  else
  {
    v138 = v379;
    v139 = *(v379 + 88);
    v239 = *(v379 + 80);
    sub_1DACB71E4();
    sub_1DAC8EE90(v138, type metadata accessor for LanguageConfig);
    v379 = v139;
    if (v139)
    {
      goto LABEL_353;
    }
  }

  v391 = 117;
  sub_1DACB9F84();
  v239 = v389;
  v379 = v390;
  if (!v390)
  {
    sub_1DAC8AA30(117, v364);
  }

LABEL_353:
  v391 = 118;
  sub_1DACB9F84();
  v177 = v389;
  v176 = v390;
  if (v390)
  {
    sub_1DAC8AA30(118, v364);
  }

  v391 = 119;
  sub_1DACB9F84();
  v175 = v389;
  v174 = v390;
  if (v390)
  {
    sub_1DAC8AA30(119, v364);
  }

  v391 = 120;
  sub_1DACB9F84();
  v173 = v389;
  v172 = v390;
  if (v390)
  {
    sub_1DAC8AA30(120, v364);
  }

  LOBYTE(v389) = 121;
  sub_1DACB9F84();
  v171 = v391;
  if (v391 == 2)
  {
    sub_1DAC8AA30(121, v364);
  }

  v391 = 122;
  sub_1DACB9F84();
  v170 = v389;
  v169 = v390;
  if (v390)
  {
    sub_1DAC8AA30(122, v364);
  }

  v391 = 124;
  sub_1DACB9F84();
  v168 = v389;
  v167 = v390;
  if (v390)
  {
    sub_1DAC8AA30(124, v364);
  }

  v391 = 125;
  sub_1DACB71F4();
  sub_1DACB9F84();
  v166 = v389;
  v165 = v390;
  if (v390)
  {
    sub_1DAC8AA30(125, v364);
  }

  v391 = 126;
  sub_1DACB71F4();
  sub_1DACB9F84();
  v140 = v389;
  if (v389)
  {

    v376 = sub_1DAC7BE0C(v140);
  }

  else
  {
    sub_1DAC8AA30(126, v364);

    v376 = 0;
  }

  v391 = 127;
  sub_1DACB71F4();
  sub_1DACB9F84();
  v164 = v389;
  v163[1] = v390;
  if (v390)
  {
    sub_1DAC8AA30(127, v364);
  }

  v391 = 123;
  sub_1DACB71F4();
  sub_1DACB9F84();
  v347 = v389;
  if (!v389)
  {
    sub_1DAC8AA30(123, v364);
  }

  LOBYTE(v389) = 0x80;
  sub_1DACB71F4();
  sub_1DACB9F84();
  *&v301 = 0;
  v163[0] = v391;
  if (v391 == 2)
  {
    sub_1DAC8AA30(128, v364);
  }

  v391 = -127;
  sub_1DAA46980();
  sub_1DAC8B564();
  sub_1DACB71F4();
  v141 = v301;
  sub_1DACB9F84();
  *&v301 = v141;
  if (v141)
  {

    sub_1DAA53C6C(v395, v396);
    v400 = v440;
    v401 = v441;
    v402 = v442;
    v399 = v439;
    v398 = v438;
    sub_1DAC8AD74(&v398, qword_1EE1206F8, &type metadata for PaidBundleViaOfferConfiguration);
    memcpy(v403, v443, 0x1F9uLL);
    sub_1DAC8AD74(v403, &qword_1EE124790, &type metadata for PaidBundleConfiguration);
    v406 = v456;
    v407 = v457;
    v408 = v458;
    v404 = v454;
    v405 = v455;
    sub_1DAC8AD74(&v404, &qword_1EE127030, &type metadata for NewsUIConfiguration);
    sub_1DAC8AF60(v465, *(&v465 + 1));
    sub_1DAA54120(v384, &qword_1EE124F88, type metadata accessor for LanguageConfig);
    (*(v385 + 8))(v388, v386);
    (*(v387 + 8))(v366, v367);
    goto LABEL_395;
  }

  *&v295 = v389;
  if (!v389)
  {
    sub_1DAC8AA30(129, v364);
  }

  v142 = v380;
  sub_1DAA540A0(v384, v380, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  if (v299(v142, 1, v300) == 1)
  {
    sub_1DAA54120(v380, &qword_1EE124F88, type metadata accessor for LanguageConfig);
    v143 = sub_1DACB88D4();
    (*(*(v143 - 8) + 56))(v382, 1, 1, v143);
  }

  else
  {
    v144 = v380;
    sub_1DAA540A0(v380 + *(v300 + 68), v382, &qword_1EE11FF70, MEMORY[0x1E69D6A58]);
    sub_1DAC8EE90(v144, type metadata accessor for LanguageConfig);
  }

  v391 = -124;
  sub_1DACB71F4();
  v145 = v301;
  sub_1DACB9F84();
  if (v145)
  {

    sub_1DAA54120(v382, &qword_1EE11FF70, MEMORY[0x1E69D6A58]);
    sub_1DAA53C6C(v395, v396);
    v400 = v440;
    v401 = v441;
    v402 = v442;
    v399 = v439;
    v398 = v438;
    sub_1DAC8AD74(&v398, qword_1EE1206F8, &type metadata for PaidBundleViaOfferConfiguration);
    memcpy(v403, v443, 0x1F9uLL);
    sub_1DAC8AD74(v403, &qword_1EE124790, &type metadata for PaidBundleConfiguration);
    v406 = v456;
    v407 = v457;
    v408 = v458;
    v404 = v454;
    v405 = v455;
    sub_1DAC8AD74(&v404, &qword_1EE127030, &type metadata for NewsUIConfiguration);
    sub_1DAC8AF60(v465, *(&v465 + 1));
    sub_1DAA54120(v384, &qword_1EE124F88, type metadata accessor for LanguageConfig);
    (*(v385 + 8))(v388, v386);
    (*(v387 + 8))(v366, v367);
    goto LABEL_395;
  }

  v380 = v389;
  if (!v389)
  {
    sub_1DAC8AA30(132, v364);
  }

  LOBYTE(v389) = -123;
  sub_1DACB71F4();
  sub_1DACB9F84();
  LODWORD(v300) = v391;
  if (v391 == 2)
  {
    sub_1DAC8AA30(133, v364);
  }

  LOBYTE(v389) = -122;
  sub_1DACB71F4();
  sub_1DACB9F84();
  if (v391 == 2)
  {
    sub_1DAC8AA30(134, v364);
  }

  v391 = -121;
  sub_1DACB71F4();
  sub_1DACB9F84();
  *&v301 = 0;
  v299 = v389;
  if (v390)
  {
    sub_1DAC8AA30(135, v364);
  }

  v146 = v364;

  sub_1DACB71F4();
  v147 = v301;
  sub_1DAC7C00C(136, v146, v381);
  if (v147)
  {

    sub_1DAA54120(v382, &qword_1EE11FF70, MEMORY[0x1E69D6A58]);
    sub_1DAA53C6C(v395, v396);
    v400 = v440;
    v401 = v441;
    v402 = v442;
    v399 = v439;
    v398 = v438;
    sub_1DAC8AD74(&v398, qword_1EE1206F8, &type metadata for PaidBundleViaOfferConfiguration);
    memcpy(v403, v443, 0x1F9uLL);
    sub_1DAC8AD74(v403, &qword_1EE124790, &type metadata for PaidBundleConfiguration);
    v406 = v456;
    v407 = v457;
    v408 = v458;
    v404 = v454;
    v405 = v455;
    sub_1DAC8AD74(&v404, &qword_1EE127030, &type metadata for NewsUIConfiguration);
    sub_1DAC8AF60(v465, *(&v465 + 1));
    sub_1DAA54120(v384, &qword_1EE124F88, type metadata accessor for LanguageConfig);
    (*(v385 + 8))(v388, v386);
    (*(v387 + 8))(v366, v367);
    goto LABEL_395;
  }

  sub_1DAC7C1DC(v361, v83, v360, v359, v358, v357, v356, v355, v148, v149, v150, v151, v152, v153, v154, v155, v84, v354, v85, v353, v86, v352, v351, v349, v348, v346, v345, v344, v343, v342, v341, v340, v339, v338, v337, v336, v335, v334, v333, v332, v331, v330, v329, v328, v327, v326, v324, v325, v323, v322, v321, v320, v319, v318, v317, v316, v315, v314, v313, v312, v303, v302, v297);
  v156 = v363;
  swift_beginAccess();
  v157 = *v156;
  if (sub_1DAAF6904(v157))
  {
    sub_1DAA4691C(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
    v158 = swift_allocObject();
    v159 = sub_1DAAF690C(v158, 1);
    v161 = v160;
    v160[3] = v350;
    v160[4] = sub_1DAAF691C();
    *v161 = v157;
    nullsub_1(v159);
    sub_1DAA41DCC();
    sub_1DACB71E4();
  }

  else
  {
    sub_1DAAD4598(0);
    sub_1DAA41DCC();
  }

  v162 = sub_1DACB9AD4();
  sub_1DACB9914();
  sub_1DACB8C64();

  sub_1DAA54120(v384, &qword_1EE124F88, type metadata accessor for LanguageConfig);
  (*(v385 + 8))(v388, v386);
  (*(v387 + 8))(v366, v367);

  sub_1DAC8EDC4(v470, v383, type metadata accessor for AppConfiguration);
  return __swift_destroy_boxed_opaque_existential_1(v365);
}

uint64_t sub_1DAC85EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v70 = a3;
  v71 = a4;
  v68 = a2;
  v74 = a5;
  v73 = type metadata accessor for LanguageConfig(0);
  v6 = *(*(v73 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v73);
  v69 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v65 = &v64 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v64 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v16 = (&v64 - v14);
  v17 = *(a1 + 16);
  v72 = v15;
  v66 = a1;
  v67 = v17;
  if (!v17)
  {
    v20 = MEMORY[0x1E69E7CC8];
LABEL_17:
    v40 = *(v68 + 16);
    if (v40)
    {
      v41 = (v68 + 40);
      v43 = v71;
      v42 = v72;
      v45 = v69;
      v44 = v70;
      do
      {
        v46 = *(v41 - 1);
        v47 = *v41;
        v48 = sub_1DACB93A4();
        if (v20[2])
        {
          v50 = sub_1DAA4BF3C(v48, v49);
          v52 = v51;

          if (v52)
          {
            v53 = v20[7] + *(v42 + 72) * v50;
            v54 = v65;
            sub_1DAC8ECF8(v53, v65);

            v55 = v54;
            v56 = v74;
            sub_1DAC8EDC4(v55, v74, type metadata accessor for LanguageConfig);
            v57 = 0;
            v58 = v73;
            return (*(v42 + 56))(v56, v57, 1, v58);
          }
        }

        else
        {
        }

        v41 += 2;
        --v40;
      }

      while (v40);
    }

    else
    {

      v43 = v71;
      v42 = v72;
      v45 = v69;
      v44 = v70;
    }

    v58 = v73;
    v59 = v67;
    if (v67)
    {
      v60 = v66 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
      v61 = *(v42 + 72);
      v75 = v60;
      do
      {
        sub_1DAC8ECF8(v60, v45);
        if (v43)
        {
          v78 = v44;
          v79 = v43;
          v62 = v45[1];
          v76 = *v45;
          v77 = v62;
          sub_1DAA642D8();
          if (!sub_1DACB9B54())
          {
            v56 = v74;
            sub_1DAC8EDC4(v45, v74, type metadata accessor for LanguageConfig);
            goto LABEL_33;
          }
        }

        sub_1DAC8EE90(v45, type metadata accessor for LanguageConfig);
        v60 += v61;
        --v59;
      }

      while (v59);
      v56 = v74;
      sub_1DAC8ECF8(v75, v74);
LABEL_33:
      v57 = 0;
    }

    else
    {
      v57 = 1;
      v56 = v74;
    }

    return (*(v42 + 56))(v56, v57, 1, v58);
  }

  v18 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v19 = *(v15 + 72);
  v20 = MEMORY[0x1E69E7CC8];
  v75 = (&v64 - v14);
  while (1)
  {
    sub_1DAC8ECF8(v18, v16);
    v21 = *v16;
    v22 = v16[1];
    v23 = sub_1DACB93A4();
    v25 = v24;
    v26 = v13;
    sub_1DAC8ECF8(v16, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = v20;
    v29 = sub_1DAA4BF3C(v23, v25);
    v30 = v20[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      break;
    }

    v33 = v28;
    if (v20[3] >= v32)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v13 = v26;
        if (v28)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1DAB67D04();
        v13 = v26;
        if (v33)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1DAB64054(v32, isUniquelyReferenced_nonNull_native);
      v34 = sub_1DAA4BF3C(v23, v25);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_38;
      }

      v29 = v34;
      v13 = v26;
      if (v33)
      {
LABEL_3:

        v20 = v78;
        sub_1DAC8EE2C(v13, v78[7] + v29 * v19);
        goto LABEL_4;
      }
    }

    v20 = v78;
    v78[(v29 >> 6) + 8] |= 1 << v29;
    v36 = (v20[6] + 16 * v29);
    *v36 = v23;
    v36[1] = v25;
    sub_1DAC8EDC4(v13, v20[7] + v29 * v19, type metadata accessor for LanguageConfig);
    v37 = v20[2];
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      goto LABEL_37;
    }

    v20[2] = v39;
LABEL_4:
    v16 = v75;
    sub_1DAC8EE90(v75, type metadata accessor for LanguageConfig);
    v18 += v19;
    if (!--v17)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_1DACBA1F4();
  __break(1u);
  return result;
}

unint64_t sub_1DAC86388(char a1)
{
  result = 0x61626C6C61467369;
  switch(a1)
  {
    case 1:
      return 0x6E656D7461657274;
    case 2:
      return 0x53746E656D676573;
    case 3:
    case 4:
    case 6:
    case 29:
    case 44:
    case 52:
    case 63:
    case 64:
      return 0xD000000000000019;
    case 5:
    case 26:
    case 28:
    case 51:
    case 83:
    case 112:
      return 0xD000000000000015;
    case 7:
    case 11:
    case 30:
    case 81:
    case 86:
    case -125:
      return 0xD000000000000021;
    case 8:
    case 18:
    case 45:
    case 84:
    case 90:
    case 98:
    case -128:
    case -120:
      return 0xD00000000000001FLL;
    case 9:
    case 19:
    case 22:
    case 34:
    case 72:
    case 95:
    case 117:
      return 0xD000000000000023;
    case 10:
    case 15:
    case 53:
    case 99:
    case 110:
      return 0xD000000000000017;
    case 12:
    case 21:
    case 24:
    case 67:
    case 70:
    case 71:
    case 78:
    case 79:
      return 0xD000000000000024;
    case 13:
    case 42:
    case 43:
    case 48:
    case 109:
      v3 = 11;
      goto LABEL_51;
    case 14:
    case 55:
    case 91:
      return 0xD000000000000010;
    case 16:
    case 27:
    case 62:
    case 74:
    case 111:
    case -122:
      return 0xD00000000000001BLL;
    case 17:
    case 33:
    case 47:
    case 60:
    case 120:
    case 123:
    case 127:
      return 0xD00000000000001DLL;
    case 20:
    case 37:
      v3 = 5;
      goto LABEL_51;
    case 23:
      return 0xD000000000000012;
    case 25:
      return 0xD000000000000028;
    case 31:
      return 0xD000000000000020;
    case 32:
    case 73:
    case 75:
    case 89:
    case 116:
    case 118:
    case 125:
      return 0xD00000000000001ELL;
    case 35:
    case 36:
    case 94:
    case 108:
    case -121:
      return 0xD00000000000001CLL;
    case 38:
      return 0xD00000000000002ELL;
    case 39:
    case 40:
      v3 = 9;
      goto LABEL_51;
    case 41:
      return 0xD000000000000030;
    case 46:
      v3 = 10;
      goto LABEL_51;
    case 49:
      v3 = 19;
LABEL_51:
      result = v3 | 0xD000000000000020;
      break;
    case 50:
    case 65:
    case 68:
    case 113:
    case 124:
      result = 0xD000000000000022;
      break;
    case 54:
      result = 0x746E696F70646E65;
      break;
    case 56:
    case 59:
    case 80:
    case 121:
      result = 0xD000000000000018;
      break;
    case 57:
    case 106:
      result = 0xD000000000000014;
      break;
    case 58:
    case 76:
    case 114:
    case 119:
      result = 0xD00000000000001ALL;
      break;
    case 61:
      result = 0xD000000000000016;
      break;
    case 66:
      result = 0xD000000000000020;
      break;
    case 69:
      result = 0xD000000000000020;
      break;
    case 77:
      result = 0xD000000000000020;
      break;
    case 82:
      result = 0xD000000000000020;
      break;
    case 85:
    case 87:
    case 102:
    case 122:
    case -126:
      result = 0xD000000000000026;
      break;
    case 88:
      result = 0x6F43756F59726F66;
      break;
    case 92:
      result = 0x6F4349557377656ELL;
      break;
    case 93:
      result = 0x69666E6F43644169;
      break;
    case 96:
      result = 0xD000000000000020;
      break;
    case 97:
    case 103:
    case 115:
      result = 0xD000000000000027;
      break;
    case 100:
      result = 0xD000000000000011;
      break;
    case 101:
    case 107:
      result = 0xD000000000000013;
      break;
    case 104:
      result = 0xD00000000000002CLL;
      break;
    case 105:
      result = 0x506C6C4165646968;
      break;
    case 126:
      result = 0xD000000000000020;
      break;
    case -127:
      result = 0xD000000000000020;
      break;
    case -124:
      result = 0x43656C6369747261;
      break;
    case -123:
      result = 0xD000000000000020;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DAC86D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAC8C3F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAC86DB4(uint64_t a1)
{
  v2 = sub_1DAC8AC48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC86DF0(uint64_t a1)
{
  v2 = sub_1DAC8AC48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC86E2C(uint64_t a1)
{
  v213 = v2;
  v3 = v1;
  v4 = MEMORY[0x1EEE9AC00](a1);
  sub_1DAC8ED5C(0, &qword_1EE123C10, sub_1DAC8AC48, &type metadata for AppConfiguration.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = v174 - v9;
  v11 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1DAC8AC48();
  sub_1DACBA304();
  v12 = *v3;
  LOBYTE(v177[0]) = 0;
  v13 = v213;
  sub_1DACBA0A4();
  if (v13)
  {
    return (*(v7 + 8))(v10, v6);
  }

  *&v177[0] = v3[1];
  v211[0] = 1;
  sub_1DAA46070(0, &qword_1EE123E50, MEMORY[0x1E69E7360], MEMORY[0x1E69E62F8]);
  sub_1DAC8B6D8();
  sub_1DACBA0E4();
  *&v177[0] = v3[2];
  v211[0] = 2;
  sub_1DAA46070(0, &qword_1EE123E68, MEMORY[0x1E69E72F0], MEMORY[0x1E69E62F8]);
  sub_1DAC8B76C();
  sub_1DACBA0E4();
  v14 = v3[3];
  LOBYTE(v177[0]) = 3;
  sub_1DACBA0C4();
  v15 = v3[4];
  LOBYTE(v177[0]) = 4;
  sub_1DACBA0C4();
  v16 = v3[5];
  LOBYTE(v177[0]) = 5;
  sub_1DACBA0B4();
  v17 = v3[6];
  LOBYTE(v177[0]) = 6;
  sub_1DACBA0B4();
  v18 = v3[7];
  LOBYTE(v177[0]) = 7;
  sub_1DACBA0C4();
  v19 = v3[8];
  LOBYTE(v177[0]) = 8;
  sub_1DACBA0C4();
  v20 = v3[9];
  LOBYTE(v177[0]) = 9;
  sub_1DACBA0C4();
  v213 = v3;
  *&v177[0] = v3[10];
  v211[0] = 10;
  sub_1DAA46070(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1DAC8B800();
  v21 = v10;
  sub_1DACBA0E4();
  v22 = *(v213 + 88);
  LOBYTE(v177[0]) = 11;
  sub_1DACBA0A4();
  v23 = *(v213 + 89);
  LOBYTE(v177[0]) = 12;
  sub_1DACBA0A4();
  v24 = v213[12];
  LOBYTE(v177[0]) = 13;
  sub_1DACBA0B4();
  v25 = *(v213 + 104);
  LOBYTE(v177[0]) = 14;
  sub_1DACBA0A4();
  v26 = *(v213 + 105);
  LOBYTE(v177[0]) = 15;
  sub_1DACBA0A4();
  v27 = v213[14];
  LOBYTE(v177[0]) = 16;
  sub_1DACBA0C4();
  v28 = v213[15];
  LOBYTE(v177[0]) = 17;
  sub_1DACBA0C4();
  v29 = v213[16];
  LOBYTE(v177[0]) = 18;
  sub_1DACBA0B4();
  v30 = v213[17];
  LOBYTE(v177[0]) = 19;
  sub_1DACBA0B4();
  v31 = v213[18];
  LOBYTE(v177[0]) = 20;
  sub_1DACBA0B4();
  v32 = v213[19];
  LOBYTE(v177[0]) = 21;
  sub_1DACBA0B4();
  v33 = v213[20];
  LOBYTE(v177[0]) = 22;
  sub_1DACBA0B4();
  v34 = v213[21];
  v35 = v213[22];
  LOBYTE(v177[0]) = 23;
  sub_1DACBA094();
  v36 = v213[23];
  LOBYTE(v177[0]) = 24;
  sub_1DACBA0B4();
  v37 = v213[24];
  LOBYTE(v177[0]) = 25;
  sub_1DACBA0B4();
  v38 = v213[25];
  LOBYTE(v177[0]) = 26;
  sub_1DACBA0B4();
  v39 = v213[26];
  LOBYTE(v177[0]) = 27;
  sub_1DACBA0B4();
  v40 = v213[27];
  LOBYTE(v177[0]) = 28;
  sub_1DACBA0B4();
  v41 = v213[28];
  LOBYTE(v177[0]) = 29;
  sub_1DACBA0B4();
  v42 = v213[29];
  LOBYTE(v177[0]) = 30;
  sub_1DACBA0B4();
  v43 = v213[30];
  LOBYTE(v177[0]) = 31;
  sub_1DACBA0B4();
  v44 = *(v213 + 248);
  LOBYTE(v177[0]) = 32;
  sub_1DACBA0A4();
  v45 = *(v213 + 249);
  LOBYTE(v177[0]) = 33;
  sub_1DACBA0A4();
  v46 = *(v213 + 250);
  LOBYTE(v177[0]) = 34;
  sub_1DACBA0A4();
  v47 = v213[32];
  LOBYTE(v177[0]) = 35;
  sub_1DACBA0C4();
  v48 = v213[33];
  LOBYTE(v177[0]) = 36;
  sub_1DACBA0C4();
  v50 = v213[34];
  LOBYTE(v177[0]) = 37;
  sub_1DACBA0B4();
  v51 = v213[35];
  LOBYTE(v177[0]) = 38;
  sub_1DACBA0B4();
  v52 = v213[36];
  LOBYTE(v177[0]) = 39;
  sub_1DACBA0B4();
  v53 = v213[37];
  LOBYTE(v177[0]) = 40;
  sub_1DACBA0B4();
  v54 = v213[38];
  LOBYTE(v177[0]) = 41;
  sub_1DACBA0B4();
  v55 = v213[39];
  LOBYTE(v177[0]) = 42;
  sub_1DACBA0B4();
  v56 = v213[40];
  LOBYTE(v177[0]) = 43;
  sub_1DACBA0B4();
  v57 = v213[41];
  LOBYTE(v177[0]) = 44;
  sub_1DACBA0C4();
  v58 = v213[42];
  LOBYTE(v177[0]) = 45;
  sub_1DACBA0B4();
  v175 = (v213 + 43);
  v59 = *(v213 + 344);
  LOBYTE(v177[0]) = 46;
  sub_1DACBA0A4();
  v60 = v213[44];
  LOBYTE(v177[0]) = 47;
  sub_1DACBA0B4();
  v61 = v213[45];
  LOBYTE(v177[0]) = 48;
  sub_1DACBA0C4();
  v62 = v213[46];
  LOBYTE(v177[0]) = 49;
  sub_1DACBA0B4();
  v63 = v213[47];
  LOBYTE(v177[0]) = 50;
  sub_1DACBA0B4();
  v64 = v213[48];
  LOBYTE(v177[0]) = 51;
  sub_1DACBA0B4();
  v65 = v213[49];
  LOBYTE(v177[0]) = 52;
  sub_1DACBA0B4();
  *&v177[0] = v213[50];
  v211[0] = 53;
  sub_1DAA46070(0, &qword_1EE123EF0, &type metadata for ExternalAnalyticsConfiguration, MEMORY[0x1E69E62F8]);
  sub_1DAC8B894();
  sub_1DACBA0E4();
  v212 = v213[51];
  v211[511] = 54;
  sub_1DAA46070(0, &qword_1EE123F50, &type metadata for EndpointConfiguration, MEMORY[0x1E69E62F8]);
  sub_1DAC8B984();
  sub_1DACBA0E4();
  memcpy(v211, v213 + 52, 0x1F9uLL);
  memcpy(v210, v213 + 52, sizeof(v210));
  v209 = 55;
  sub_1DAA4F398(v211, v177);
  sub_1DAA955A0();
  sub_1DACBA0E4();
  memcpy(v204, v210, 0x1F9uLL);
  sub_1DAA531E4(v204);
  v66 = *(v213 + 59);
  v67 = *(v213 + 61);
  v206 = *(v213 + 60);
  v207 = v67;
  v68 = *(v213 + 59);
  v205[0] = *(v213 + 58);
  v205[1] = v68;
  v69 = *(v213 + 61);
  v201 = v206;
  v202 = v69;
  v208 = *(v213 + 992);
  v203 = *(v213 + 992);
  v199 = v205[0];
  v200 = v66;
  v198 = 56;
  sub_1DAA4F3F4(v205, v177);
  sub_1DAB6A5A4();
  sub_1DACBA0E4();
  v196[2] = v201;
  v196[3] = v202;
  v197 = v203;
  v196[0] = v199;
  v196[1] = v200;
  sub_1DAA5337C(v196);
  v70 = *(v213 + 139);
  v177[6] = *(v213 + 137);
  v177[7] = v70;
  v71 = *(v213 + 143);
  v177[8] = *(v213 + 141);
  v177[9] = v71;
  v72 = *(v213 + 131);
  v177[2] = *(v213 + 129);
  v177[3] = v72;
  v73 = *(v213 + 135);
  v177[4] = *(v213 + 133);
  v177[5] = v73;
  v74 = *(v213 + 127);
  v177[0] = *(v213 + 125);
  v177[1] = v74;
  LOBYTE(v189[0]) = 57;
  sub_1DAC8BA74();
  sub_1DACBA0E4();
  v75 = v213[145];
  v76 = v213[146];
  LOBYTE(v177[0]) = 58;
  sub_1DACBA094();
  v77 = *(v175 + 832);
  LOBYTE(v177[0]) = 59;
  sub_1DACBA0A4();
  v78 = v213[148];
  LOBYTE(v177[0]) = 60;
  sub_1DACBA0D4();
  *&v177[0] = v213[149];
  LOBYTE(v189[0]) = 61;
  sub_1DAA46070(0, &qword_1EE123FB8, &type metadata for StocksKitClientConfig, MEMORY[0x1E69E62F8]);
  sub_1DAC8BAC8();
  sub_1DACBA0E4();
  v79 = v213[150];
  LOBYTE(v177[0]) = 62;
  sub_1DACBA0D4();
  v80 = v213[151];
  LOBYTE(v177[0]) = 63;
  sub_1DACBA0B4();
  v81 = v213[152];
  LOBYTE(v177[0]) = 64;
  sub_1DACBA0B4();
  *&v177[0] = v213[153];
  LOBYTE(v189[0]) = 65;
  sub_1DACBA0E4();
  *&v177[0] = v213[154];
  LOBYTE(v189[0]) = 66;
  sub_1DACBA0E4();
  *&v177[0] = v213[155];
  LOBYTE(v189[0]) = 67;
  sub_1DACBA0E4();
  *&v177[0] = v213[156];
  LOBYTE(v189[0]) = 68;
  sub_1DACBA0E4();
  *&v177[0] = v213[157];
  LOBYTE(v189[0]) = 69;
  sub_1DACBA0E4();
  *&v177[0] = v213[158];
  LOBYTE(v189[0]) = 70;
  sub_1DACBA0E4();
  v82 = v213[159];
  LOBYTE(v177[0]) = 71;
  sub_1DACBA0D4();
  v83 = v213[160];
  LOBYTE(v177[0]) = 72;
  sub_1DACBA0D4();
  v84 = v213[161];
  LOBYTE(v177[0]) = 73;
  sub_1DACBA0D4();
  v85 = v213[162];
  LOBYTE(v177[0]) = 74;
  sub_1DACBA0D4();
  v86 = v213[163];
  LOBYTE(v177[0]) = 75;
  sub_1DACBA0B4();
  v87 = v213[164];
  v88 = v213[165];
  LOBYTE(v177[0]) = 76;
  sub_1DACBA094();
  v89 = v213[166];
  v90 = v213[167];
  LOBYTE(v177[0]) = 77;
  sub_1DACBA094();
  v91 = v213[168];
  LOBYTE(v177[0]) = 78;
  sub_1DACBA0D4();
  v92 = v213[169];
  LOBYTE(v177[0]) = 79;
  sub_1DACBA0D4();
  *&v177[0] = v213[170];
  LOBYTE(v189[0]) = 80;
  sub_1DAA46720();
  sub_1DAC8BBB8();
  sub_1DACBA0E4();
  v93 = v213[171];
  LOBYTE(v177[0]) = 81;
  sub_1DACBA0D4();
  v94 = v213[172];
  LOBYTE(v177[0]) = 82;
  sub_1DACBA0D4();
  v95 = v213[173];
  v96 = v213[174];
  LOBYTE(v177[0]) = 83;
  sub_1DACBA094();
  v97 = *(v175 + 1056);
  LOBYTE(v177[0]) = 84;
  sub_1DACBA0A4();
  v98 = *(v175 + 1057);
  LOBYTE(v177[0]) = 85;
  sub_1DACBA0A4();
  v99 = v213[176];
  LOBYTE(v177[0]) = 86;
  sub_1DACBA0D4();
  v100 = v213[177];
  LOBYTE(v177[0]) = 87;
  sub_1DACBA0D4();
  v101 = v213[178];
  v102 = v213[179];
  LOBYTE(v177[0]) = 88;
  sub_1DACBA094();
  v103 = v213[180];
  v104 = v213[181];
  LOBYTE(v177[0]) = 89;
  sub_1DACBA094();
  v105 = v213[182];
  LOBYTE(v177[0]) = 90;
  sub_1DACBA0C4();
  v106 = v213[184];
  v107 = v213[185];
  v108 = v213[186];
  v192 = v213[183];
  v193 = v106;
  v194 = v107;
  v195 = v108;
  v191 = 91;
  sub_1DAC8BC28();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACBA0E4();

  v109 = *(v213 + 187);
  v189[1] = *(v213 + 189);
  v110 = *(v213 + 189);
  v189[2] = *(v213 + 191);
  v111 = *(v213 + 191);
  v189[3] = *(v213 + 193);
  v189[0] = *(v213 + 187);
  v185 = v110;
  v186 = v111;
  v187 = *(v213 + 193);
  v190 = v213[195];
  v188 = v213[195];
  v184 = v109;
  v183 = 92;
  sub_1DAA4F450(v189, v177);
  sub_1DAC8BC7C();
  sub_1DACBA0E4();
  v181[1] = v185;
  v181[2] = v186;
  v181[3] = v187;
  v182 = v188;
  v181[0] = v184;
  sub_1DAA53A2C(v181);
  v179 = *(v175 + 1224);
  v180 = *(v175 + 1232);
  v178 = 93;
  sub_1DAC8BCD0();
  sub_1DACBA0E4();
  memcpy(v177, v213 + 199, 0x8DBuLL);
  v176 = 94;
  sub_1DAA55138();
  sub_1DACBA0E4();
  v112 = *(v175 + 3515);
  LOBYTE(v177[0]) = 95;
  sub_1DACBA0A4();
  v113 = v213[483];
  v114 = *(v175 + 3528);
  LOBYTE(v177[0]) = 96;
  sub_1DACBA044();
  v115 = v213[485];
  v116 = *(v175 + 3544);
  LOBYTE(v177[0]) = 97;
  sub_1DACBA054();
  v117 = v213[487];
  v118 = *(v175 + 3560);
  LOBYTE(v177[0]) = 98;
  sub_1DACBA054();
  v119 = v213[489];
  v120 = *(v175 + 3576);
  LOBYTE(v177[0]) = 99;
  sub_1DACBA044();
  v121 = v213[491];
  v122 = *(v175 + 3592);
  LOBYTE(v177[0]) = 100;
  sub_1DACBA044();
  v123 = v213[493];
  v124 = *(v175 + 3608);
  LOBYTE(v177[0]) = 101;
  sub_1DACBA064();
  v125 = v213[495];
  LOBYTE(v177[0]) = 102;
  sub_1DACBA0B4();
  v126 = v213[496];
  LOBYTE(v177[0]) = 103;
  sub_1DACBA0D4();
  v127 = v213[497];
  LOBYTE(v177[0]) = 104;
  sub_1DACBA0B4();
  v128 = *(v175 + 3640);
  LOBYTE(v177[0]) = 105;
  sub_1DACBA0A4();
  v129 = *(v175 + 3641);
  LOBYTE(v177[0]) = 106;
  sub_1DACBA0A4();
  v130 = v213[499];
  LOBYTE(v177[0]) = 107;
  sub_1DACBA0D4();
  v131 = v213[500];
  v132 = *(v175 + 3664);
  LOBYTE(v177[0]) = 108;
  sub_1DACBA064();
  v133 = v213[502];
  LOBYTE(v177[0]) = 109;
  sub_1DACBA0F4();
  v134 = v213[504];
  v135 = v213[505];
  v136 = v213[506];
  *&v177[0] = v213[503];
  *(&v177[0] + 1) = v134;
  *&v177[1] = v135;
  *(&v177[1] + 1) = v136;
  v176 = 110;
  sub_1DAA53C24(*&v177[0], v134);
  sub_1DAC8BD24();
  sub_1DACBA074();
  sub_1DAA53C6C(*&v177[0], *(&v177[0] + 1));
  v137 = v213[507];
  v138 = *(v175 + 3720);
  LOBYTE(v177[0]) = 111;
  sub_1DACBA064();
  v139 = *(v175 + 3760);
  v140 = *(v175 + 3744);
  v177[0] = *(v175 + 3728);
  v177[1] = v140;
  LOBYTE(v177[2]) = v139;
  v176 = 112;
  sub_1DAC8BD78();
  sub_1DACBA074();
  v141 = v213[514];
  v142 = v213[515];
  LOBYTE(v177[0]) = 113;
  sub_1DACBA024();
  v143 = v213[516];
  v144 = v213[517];
  LOBYTE(v177[0]) = 114;
  sub_1DACBA024();
  v145 = v213[518];
  v146 = *(v175 + 3808);
  LOBYTE(v177[0]) = 115;
  sub_1DACBA064();
  v147 = v213[520];
  v148 = *(v175 + 3824);
  LOBYTE(v177[0]) = 116;
  sub_1DACBA064();
  v149 = v213[522];
  v150 = v213[523];
  LOBYTE(v177[0]) = 117;
  sub_1DACBA024();
  v151 = v213[524];
  v152 = *(v175 + 3856);
  LOBYTE(v177[0]) = 118;
  sub_1DACBA064();
  v153 = v213[526];
  LOBYTE(v177[0]) = 119;
  sub_1DACBA0D4();
  v154 = v213[527];
  LOBYTE(v177[0]) = 120;
  sub_1DACBA0B4();
  v155 = *(v175 + 3880);
  LOBYTE(v177[0]) = 121;
  sub_1DACBA0A4();
  v156 = v213[529];
  LOBYTE(v177[0]) = 122;
  sub_1DACBA0D4();
  *&v177[0] = v213[530];
  v176 = 123;
  sub_1DACBA0E4();
  v157 = v213[531];
  LOBYTE(v177[0]) = 124;
  sub_1DACBA0D4();
  v158 = v213[532];
  LOBYTE(v177[0]) = 125;
  sub_1DACBA0D4();
  *&v177[0] = v213[533];
  v176 = 126;
  sub_1DAA46778();
  sub_1DAC8BDCC();
  sub_1DACBA0E4();
  v159 = v213[534];
  LOBYTE(v177[0]) = 127;
  sub_1DACBA0D4();
  v160 = *(v175 + 3936);
  LOBYTE(v177[0]) = 0x80;
  sub_1DACBA0A4();
  *&v177[0] = v213[536];
  v176 = -127;
  sub_1DAA46980();
  v162 = v161;
  sub_1DAB68654();
  v174[0] = v162;
  sub_1DACBA074();
  v163 = type metadata accessor for AppConfiguration(0);
  v164 = v163[134];
  LOBYTE(v177[0]) = -126;
  v165 = sub_1DACB88D4();
  v166 = sub_1DAA4680C(&qword_1EE1240E8, MEMORY[0x1E69D6A58]);
  v174[1] = v165;
  v175 = v166;
  sub_1DACBA074();
  v167 = *(v213 + v163[135]);
  LOBYTE(v177[0]) = -125;
  sub_1DACBA0D4();
  *&v177[0] = *(v213 + v163[136]);
  v176 = -124;
  sub_1DACBA074();
  v168 = *(v213 + v163[137]);
  LOBYTE(v177[0]) = -123;
  sub_1DACBA0A4();
  v169 = *(v213 + v163[138]);
  LOBYTE(v177[0]) = -122;
  sub_1DACBA0A4();
  v170 = v213 + v163[139];
  v171 = *v170;
  v172 = v170[8];
  LOBYTE(v177[0]) = -121;
  sub_1DACBA054();
  v173 = v163[140];
  LOBYTE(v177[0]) = -120;
  sub_1DACBA074();
  return (*(v7 + 8))(v21, 0);
}

uint64_t sub_1DAC88E4C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0x65676175676E616CLL;
  }

  if (v3)
  {
    v5 = 0xEF736769666E6F43;
  }

  else
  {
    v5 = 0x80000001DACE2D60;
  }

  if (*a2)
  {
    v6 = 0xD000000000000013;
  }

  else
  {
    v6 = 0x65676175676E616CLL;
  }

  if (*a2)
  {
    v7 = 0x80000001DACE2D60;
  }

  else
  {
    v7 = 0xEF736769666E6F43;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();
  }

  return v9 & 1;
}

uint64_t sub_1DAC88F04()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC88F98()
{
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DAC89018()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC890A8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DACB9F04();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1DAC89108(unint64_t *a1@<X8>)
{
  v2 = 0x80000001DACE2D60;
  v3 = 0x65676175676E616CLL;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xEF736769666E6F43;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_1DAC89158()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0x65676175676E616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_1DAC891A4@<X0>(char *a1@<X8>)
{
  v2 = sub_1DACB9F04();

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

uint64_t sub_1DAC89208(uint64_t a1)
{
  v2 = sub_1DAC8ABF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC89244(uint64_t a1)
{
  v2 = sub_1DAC8ABF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DAC89280(char a1)
{
  result = 0x65676175676E616CLL;
  switch(a1)
  {
    case 1:
    case 10:
      v3 = 5;
      goto LABEL_13;
    case 2:
      result = 0x6F43756F59726F66;
      break;
    case 3:
      result = 0xD000000000000021;
      break;
    case 4:
      result = 0xD000000000000027;
      break;
    case 5:
      result = 0xD000000000000023;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD00000000000001FLL;
      break;
    case 9:
    case 12:
      v3 = 10;
LABEL_13:
      result = v3 | 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000022;
      break;
    case 13:
      result = 0x666E6F4369626174;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DAC8942C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1DAC89280(*a1);
  v5 = v4;
  if (v3 == sub_1DAC89280(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DACBA174();
  }

  return v8 & 1;
}

uint64_t sub_1DAC894B4()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DAC89280(v1);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC89518()
{
  sub_1DAC89280(*v0);
  sub_1DACB9404();
}

uint64_t sub_1DAC8956C()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DAC89280(v1);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC895CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAC8F148();
  *a2 = result;
  return result;
}

unint64_t sub_1DAC895FC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DAC89280(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DAC89644@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAC8F148();
  *a1 = result;
  return result;
}

uint64_t sub_1DAC89678(uint64_t a1)
{
  v2 = sub_1DAC8ECA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC896B4(uint64_t a1)
{
  v2 = sub_1DAC8ECA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC896F0(void *a1)
{
  v2 = v1;
  sub_1DAC8ED5C(0, &qword_1ECBE9938, sub_1DAC8ECA4, &type metadata for LanguageConfig.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v43[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC8ECA4();
  sub_1DACBA304();
  v11 = *v2;
  v12 = v2[1];
  v61[0] = 0;
  v13 = v66;
  sub_1DACBA094();
  if (v13)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v15 = v6;
  v16 = v2[2];
  v17 = v2[3];
  v61[0] = 1;
  sub_1DACBA024();
  v18 = v2[4];
  v19 = v2[5];
  v61[0] = 2;
  sub_1DACBA024();
  v20 = v2[6];
  v21 = v2[7];
  v61[0] = 3;
  sub_1DACBA024();
  v22 = v2[8];
  v23 = v2[9];
  v61[0] = 4;
  sub_1DACBA024();
  v24 = v2[10];
  v25 = v2[11];
  v61[0] = 5;
  sub_1DACBA024();
  v26 = v2[13];
  v27 = v2[14];
  v28 = v2[15];
  v62 = v2[12];
  v63 = v26;
  v64 = v27;
  v65 = v28;
  v61[511] = 6;
  sub_1DAC8B694(v62, v26);
  sub_1DAC8BC28();
  v29 = v5;
  sub_1DACBA074();
  sub_1DAC8AF60(v62, v63);
  memcpy(v61, v2 + 16, 0x1F9uLL);
  memcpy(v60, v2 + 16, sizeof(v60));
  v59[511] = 7;
  sub_1DAC8B614(v61, v59, &qword_1EE124790, &type metadata for PaidBundleConfiguration);
  sub_1DAA955A0();
  sub_1DACBA074();
  memcpy(v59, v60, 0x1F9uLL);
  sub_1DAC8AD74(v59, &qword_1EE124790, &type metadata for PaidBundleConfiguration);
  v30 = *(v2 + 41);
  v31 = *(v2 + 43);
  v56 = *(v2 + 42);
  v57 = v31;
  v32 = *(v2 + 41);
  v55[0] = *(v2 + 40);
  v55[1] = v32;
  v33 = *(v2 + 43);
  v52 = v56;
  v53 = v33;
  v58 = *(v2 + 704);
  v54 = *(v2 + 704);
  v50 = v55[0];
  v51 = v30;
  v49 = 8;
  sub_1DAC8B614(v55, v47, qword_1EE1206F8, &type metadata for PaidBundleViaOfferConfiguration);
  sub_1DAB6A5A4();
  sub_1DACBA074();
  v47[2] = v52;
  v47[3] = v53;
  v48 = v54;
  v47[0] = v50;
  v47[1] = v51;
  sub_1DAC8AD74(v47, qword_1EE1206F8, &type metadata for PaidBundleViaOfferConfiguration);
  v34 = v2[89];
  v35 = v2[90];
  LOBYTE(v44) = 9;
  sub_1DACBA024();
  v36 = *(v2 + 760);
  v37 = *(v2 + 93);
  v44 = *(v2 + 91);
  v45 = v37;
  v46 = v36;
  v43[15] = 10;
  sub_1DAC8BD78();
  sub_1DACBA074();
  v38 = v2[96];
  v39 = v2[97];
  LOBYTE(v44) = 11;
  sub_1DACBA024();
  v40 = v2[98];
  v41 = v2[99];
  LOBYTE(v44) = 12;
  sub_1DACBA024();
  v42 = *(type metadata accessor for LanguageConfig(0) + 68);
  LOBYTE(v44) = 13;
  sub_1DACB88D4();
  sub_1DAA4680C(&qword_1EE1240E8, MEMORY[0x1E69D6A58]);
  sub_1DACBA074();
  return (*(v15 + 8))(v9, v29);
}

uint64_t sub_1DAC89CF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  sub_1DAA4691C(0, &qword_1EE11FF70, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v47 = v43 - v5;
  sub_1DAC8ED5C(0, &qword_1EE123CE8, sub_1DAC8ECA4, &type metadata for LanguageConfig.CodingKeys, MEMORY[0x1E69E6F48]);
  v48 = *(v6 - 8);
  v49 = v6;
  v7 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v43 - v8;
  v10 = type metadata accessor for LanguageConfig(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC8ECA4();
  v50 = v9;
  v15 = v63;
  sub_1DACBA2F4();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v44 = v10;
  v45 = a1;
  v16 = v48;
  v63 = v13;
  LOBYTE(v62[0]) = 0;
  v17 = sub_1DACB9FA4();
  v18 = v63;
  *v63 = v17;
  *(v18 + 1) = v19;
  LOBYTE(v62[0]) = 1;
  *(v18 + 2) = sub_1DACB9F34();
  *(v18 + 3) = v20;
  LOBYTE(v62[0]) = 2;
  v43[1] = 0;
  *(v18 + 4) = sub_1DACB9F34();
  *(v18 + 5) = v21;
  LOBYTE(v62[0]) = 3;
  *(v18 + 6) = sub_1DACB9F34();
  *(v18 + 7) = v22;
  LOBYTE(v62[0]) = 4;
  *(v18 + 8) = sub_1DACB9F34();
  *(v18 + 9) = v23;
  LOBYTE(v62[0]) = 5;
  *(v18 + 10) = sub_1DACB9F34();
  *(v18 + 11) = v24;
  LOBYTE(v56) = 6;
  sub_1DAC8AF0C();
  sub_1DACB9F84();
  v25 = v62[1];
  *(v18 + 6) = v62[0];
  *(v18 + 7) = v25;
  v61 = 7;
  sub_1DAC8B27C();
  sub_1DACB9F84();
  memcpy(v18 + 128, v62, 0x1F9uLL);
  v55 = 8;
  sub_1DAC8B2D0();
  sub_1DACB9F84();
  v26 = v59;
  v27 = v63;
  *(v63 + 42) = v58;
  *(v27 + 43) = v26;
  v27[704] = v60;
  v28 = v57;
  *(v27 + 40) = v56;
  *(v27 + 41) = v28;
  LOBYTE(v52) = 9;
  v29 = sub_1DACB9F34();
  v30 = v63;
  *(v63 + 89) = v29;
  *(v30 + 90) = v31;
  v51 = 10;
  sub_1DAC8B510();
  sub_1DACB9F84();
  v32 = v63 + 728;
  v33 = v54;
  v34 = v53;
  *(v63 + 728) = v52;
  *(v32 + 1) = v34;
  v32[32] = v33;
  LOBYTE(v52) = 11;
  v35 = sub_1DACB9F34();
  v36 = v63;
  *(v63 + 96) = v35;
  *(v36 + 97) = v37;
  LOBYTE(v52) = 12;
  v38 = sub_1DACB9F34();
  v39 = v63;
  *(v63 + 98) = v38;
  *(v39 + 99) = v40;
  sub_1DACB88D4();
  LOBYTE(v52) = 13;
  sub_1DAA4680C(&qword_1EE1240E0, MEMORY[0x1E69D6A58]);
  sub_1DACB9F84();
  (*(v16 + 8))(v50, v49);
  v41 = v63;
  sub_1DAC8AB40(v47, &v63[*(v44 + 68)]);
  sub_1DAC8ECF8(v41, v46);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return sub_1DAC8EE90(v41, type metadata accessor for LanguageConfig);
}

uint64_t sub_1DAC8A80C(uint64_t a1, uint64_t *a2)
{
  sub_1DAA4691C(0, &qword_1EE123D38, MEMORY[0x1E69E6D30], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  v7 = sub_1DACB9DF4();
  __swift_allocate_value_buffer(v7, a2);
  v8 = __swift_project_value_buffer(v7, a2);
  sub_1DACB9DE4();
  v9 = *(v7 - 8);
  result = (*(v9 + 48))(v6, 1, v7);
  if (result != 1)
  {
    return (*(v9 + 32))(v8, v6, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAC8A980@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1DACB9DF4();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1DAC8AA18(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DAC8AA30(char a1, uint64_t a2)
{
  v3 = sub_1DAC86388(a1);
  v5 = v4;
  swift_beginAccess();
  v6 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1DAA9A3B0(0, *(v6 + 2) + 1, 1, v6);
    *(a2 + 16) = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1DAA9A3B0((v8 > 1), v9 + 1, 1, v6);
  }

  *(v6 + 2) = v9 + 1;
  v10 = &v6[16 * v9];
  *(v10 + 4) = v3;
  *(v10 + 5) = v5;
  *(a2 + 16) = v6;
  return swift_endAccess();
}

uint64_t sub_1DAC8AB08(uint64_t a1)
{
  if (*(a1 + 160))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DAC8AB24(uint64_t a1)
{
  if (*(a1 + 2267))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DAC8AB40(uint64_t a1, uint64_t a2)
{
  sub_1DAA4691C(0, &qword_1EE11FF70, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DAC8ABF4()
{
  result = qword_1EE124DF8;
  if (!qword_1EE124DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124DF8);
  }

  return result;
}

unint64_t sub_1DAC8AC48()
{
  result = qword_1EE124E48;
  if (!qword_1EE124E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124E48);
  }

  return result;
}

unint64_t sub_1DAC8AC9C()
{
  result = qword_1EE123F70;
  if (!qword_1EE123F70)
  {
    sub_1DAA4691C(255, &qword_1EE123F78, type metadata accessor for LanguageConfig, MEMORY[0x1E69E62F8]);
    sub_1DAA4680C(&qword_1EE124F90, type metadata accessor for LanguageConfig);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123F70);
  }

  return result;
}

uint64_t sub_1DAC8AD74(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1DAA46070(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1DAC8ADE4()
{
  result = qword_1EE123E40;
  if (!qword_1EE123E40)
  {
    sub_1DAA46070(255, &qword_1EE123E50, MEMORY[0x1E69E7360], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123E40);
  }

  return result;
}

unint64_t sub_1DAC8AE78()
{
  result = qword_1EE123E58;
  if (!qword_1EE123E58)
  {
    sub_1DAA46070(255, &qword_1EE123E68, MEMORY[0x1E69E72F0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123E58);
  }

  return result;
}

unint64_t sub_1DAC8AF0C()
{
  result = qword_1EE1246B0;
  if (!qword_1EE1246B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1246B0);
  }

  return result;
}

uint64_t sub_1DAC8AF60(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1DAC8AFA4()
{
  result = qword_1EE124CA0;
  if (!qword_1EE124CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124CA0);
  }

  return result;
}

unint64_t sub_1DAC8AFF8()
{
  result = qword_1EE124EB0;
  if (!qword_1EE124EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124EB0);
  }

  return result;
}

unint64_t sub_1DAC8B04C()
{
  result = qword_1EE123EE0;
  if (!qword_1EE123EE0)
  {
    sub_1DAA46070(255, &qword_1EE123EF0, &type metadata for ExternalAnalyticsConfiguration, MEMORY[0x1E69E62F8]);
    sub_1DAC8B0E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123EE0);
  }

  return result;
}

unint64_t sub_1DAC8B0E8()
{
  result = qword_1EE124400;
  if (!qword_1EE124400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124400);
  }

  return result;
}

unint64_t sub_1DAC8B13C()
{
  result = qword_1EE123F40;
  if (!qword_1EE123F40)
  {
    sub_1DAA46070(255, &qword_1EE123F50, &type metadata for EndpointConfiguration, MEMORY[0x1E69E62F8]);
    sub_1DAC8B1D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123F40);
  }

  return result;
}

unint64_t sub_1DAC8B1D8()
{
  result = qword_1EE1248F0;
  if (!qword_1EE1248F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1248F0);
  }

  return result;
}

double sub_1DAC8B22C(_OWORD *a1)
{
  result = 0.0;
  a1[29] = 0u;
  a1[30] = 0u;
  a1[27] = 0u;
  a1[28] = 0u;
  a1[25] = 0u;
  a1[26] = 0u;
  a1[23] = 0u;
  a1[24] = 0u;
  a1[21] = 0u;
  a1[22] = 0u;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  *(a1 + 489) = 0u;
  return result;
}

unint64_t sub_1DAC8B27C()
{
  result = qword_1EE124798;
  if (!qword_1EE124798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124798);
  }

  return result;
}

unint64_t sub_1DAC8B2D0()
{
  result = qword_1EE1243D8;
  if (!qword_1EE1243D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1243D8);
  }

  return result;
}

unint64_t sub_1DAC8B324()
{
  result = qword_1EE124548;
  if (!qword_1EE124548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124548);
  }

  return result;
}

unint64_t sub_1DAC8B378()
{
  result = qword_1EE1244F8;
  if (!qword_1EE1244F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1244F8);
  }

  return result;
}

unint64_t sub_1DAC8B3CC()
{
  result = qword_1EE123FA8;
  if (!qword_1EE123FA8)
  {
    sub_1DAA46070(255, &qword_1EE123FB8, &type metadata for StocksKitClientConfig, MEMORY[0x1E69E62F8]);
    sub_1DAC8B468();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123FA8);
  }

  return result;
}

unint64_t sub_1DAC8B468()
{
  result = qword_1EE125250;
  if (!qword_1EE125250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125250);
  }

  return result;
}

unint64_t sub_1DAC8B4BC()
{
  result = qword_1EE1247F0;
  if (!qword_1EE1247F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1247F0);
  }

  return result;
}

unint64_t sub_1DAC8B510()
{
  result = qword_1EE124520;
  if (!qword_1EE124520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124520);
  }

  return result;
}

unint64_t sub_1DAC8B564()
{
  result = qword_1EE123FD8;
  if (!qword_1EE123FD8)
  {
    sub_1DAA46980();
    sub_1DAA4680C(&qword_1EE1240E0, MEMORY[0x1E69D6A58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123FD8);
  }

  return result;
}

uint64_t sub_1DAC8B614(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1DAA46070(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DAC8B694(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1DACB71E4();

    return sub_1DACB71E4();
  }

  return result;
}

unint64_t sub_1DAC8B6D8()
{
  result = qword_1EE123E48;
  if (!qword_1EE123E48)
  {
    sub_1DAA46070(255, &qword_1EE123E50, MEMORY[0x1E69E7360], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123E48);
  }

  return result;
}

unint64_t sub_1DAC8B76C()
{
  result = qword_1EE123E60;
  if (!qword_1EE123E60)
  {
    sub_1DAA46070(255, &qword_1EE123E68, MEMORY[0x1E69E72F0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123E60);
  }

  return result;
}

unint64_t sub_1DAC8B800()
{
  result = qword_1EE123E98;
  if (!qword_1EE123E98)
  {
    sub_1DAA46070(255, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123E98);
  }

  return result;
}

unint64_t sub_1DAC8B894()
{
  result = qword_1EE123EE8;
  if (!qword_1EE123EE8)
  {
    sub_1DAA46070(255, &qword_1EE123EF0, &type metadata for ExternalAnalyticsConfiguration, MEMORY[0x1E69E62F8]);
    sub_1DAC8B930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123EE8);
  }

  return result;
}

unint64_t sub_1DAC8B930()
{
  result = qword_1EE124408;
  if (!qword_1EE124408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124408);
  }

  return result;
}

unint64_t sub_1DAC8B984()
{
  result = qword_1EE123F48;
  if (!qword_1EE123F48)
  {
    sub_1DAA46070(255, &qword_1EE123F50, &type metadata for EndpointConfiguration, MEMORY[0x1E69E62F8]);
    sub_1DAC8BA20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123F48);
  }

  return result;
}

unint64_t sub_1DAC8BA20()
{
  result = qword_1EE1248F8[0];
  if (!qword_1EE1248F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1248F8);
  }

  return result;
}

unint64_t sub_1DAC8BA74()
{
  result = qword_1EE124550;
  if (!qword_1EE124550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124550);
  }

  return result;
}

unint64_t sub_1DAC8BAC8()
{
  result = qword_1EE123FB0;
  if (!qword_1EE123FB0)
  {
    sub_1DAA46070(255, &qword_1EE123FB8, &type metadata for StocksKitClientConfig, MEMORY[0x1E69E62F8]);
    sub_1DAC8BB64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123FB0);
  }

  return result;
}

unint64_t sub_1DAC8BB64()
{
  result = qword_1EE125258;
  if (!qword_1EE125258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125258);
  }

  return result;
}

unint64_t sub_1DAC8BBB8()
{
  result = qword_1EE123E20;
  if (!qword_1EE123E20)
  {
    sub_1DAA46720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123E20);
  }

  return result;
}

unint64_t sub_1DAC8BC28()
{
  result = qword_1EE1246B8;
  if (!qword_1EE1246B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1246B8);
  }

  return result;
}

unint64_t sub_1DAC8BC7C()
{
  result = qword_1EE124CA8;
  if (!qword_1EE124CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124CA8);
  }

  return result;
}

unint64_t sub_1DAC8BCD0()
{
  result = qword_1EE124EB8;
  if (!qword_1EE124EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124EB8);
  }

  return result;
}

unint64_t sub_1DAC8BD24()
{
  result = qword_1EE1247F8;
  if (!qword_1EE1247F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1247F8);
  }

  return result;
}

unint64_t sub_1DAC8BD78()
{
  result = qword_1EE124528;
  if (!qword_1EE124528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124528);
  }

  return result;
}

unint64_t sub_1DAC8BDCC()
{
  result = qword_1EE123E30;
  if (!qword_1EE123E30)
  {
    sub_1DAA46778();
    sub_1DAA4680C(&qword_1EE125278, MEMORY[0x1E6969680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123E30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x78)
  {
    goto LABEL_17;
  }

  if (a2 + 136 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 136) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 136;
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

      return (*a1 | (v4 << 8)) - 136;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 136;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x89;
  v8 = v6 - 137;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 136 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 136) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x78)
  {
    v4 = 0;
  }

  if (a2 > 0x77)
  {
    v5 = ((a2 - 120) >> 8) + 1;
    *result = a2 - 120;
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
    *result = a2 - 120;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1DAC8BFFC()
{
  sub_1DAA46070(319, &qword_1EE123FD0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1DAA46070(319, qword_1EE120FA8, &type metadata for TopStoriesConfiguration, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1DAA46070(319, &qword_1EE124790, &type metadata for PaidBundleConfiguration, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1DAA46070(319, qword_1EE1206F8, &type metadata for PaidBundleViaOfferConfiguration, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1DAA46070(319, qword_1EE1208F8, &type metadata for AppReviewPromptConfiguration, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1DAA4691C(319, &qword_1EE11FF70, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DAC8C1E8()
{
  result = qword_1ECBE9928;
  if (!qword_1ECBE9928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9928);
  }

  return result;
}

unint64_t sub_1DAC8C240()
{
  result = qword_1ECBE9930;
  if (!qword_1ECBE9930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9930);
  }

  return result;
}

unint64_t sub_1DAC8C298()
{
  result = qword_1EE124E38;
  if (!qword_1EE124E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124E38);
  }

  return result;
}

unint64_t sub_1DAC8C2F0()
{
  result = qword_1EE124E40;
  if (!qword_1EE124E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124E40);
  }

  return result;
}

unint64_t sub_1DAC8C348()
{
  result = qword_1EE124E00;
  if (!qword_1EE124E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124E00);
  }

  return result;
}

unint64_t sub_1DAC8C3A0()
{
  result = qword_1EE124E08;
  if (!qword_1EE124E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124E08);
  }

  return result;
}

uint64_t sub_1DAC8C3F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61626C6C61467369 && a2 == 0xEA00000000006B63;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656D7461657274 && a2 == 0xEC00000073444974 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x53746E656D676573 && a2 == 0xED00007344497465 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001DACF1140 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001DACF1160 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DACF1180 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001DACF11A0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001DACF11C0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001DACF11F0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001DACF1210 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001DACF1240 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001DACF1260 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001DACF1290 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000002BLL && 0x80000001DACF12C0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DACF12F0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001DACF1310 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001DACF1330 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001DACF1350 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001DACF1370 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001DACF1390 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000025 && 0x80000001DACF13C0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001DACF13F0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001DACF1420 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DACF1450 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001DACF1470 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000028 && 0x80000001DACF14A0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DACF14D0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001DACF14F0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DACF1510 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001DACF1530 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001DACE9D80 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001DACF1550 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001DACF1580 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001DACF15A0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001DACF15C0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001DACF15F0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001DACF1610 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0xD000000000000025 && 0x80000001DACF1630 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0xD00000000000002ELL && 0x80000001DACF1660 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0xD000000000000029 && 0x80000001DACF1690 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0xD000000000000029 && 0x80000001DACF16C0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 40;
  }

  else if (a1 == 0xD000000000000030 && 0x80000001DACF16F0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0xD00000000000002BLL && 0x80000001DACF1730 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0xD00000000000002BLL && 0x80000001DACF1760 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 43;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001DACE8950 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 44;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001DACE8970 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 45;
  }

  else if (a1 == 0xD00000000000002ALL && 0x80000001DACE89A0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 46;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001DACF1790 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 47;
  }

  else if (a1 == 0xD00000000000002BLL && 0x80000001DACF17B0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 48;
  }

  else if (a1 == 0xD000000000000033 && 0x80000001DACF17E0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 49;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001DACF1820 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 50;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DACE89D0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 51;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001DACE89F0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 52;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001DACF1850 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 53;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xEF736769666E6F43 || (sub_1DACBA174() & 1) != 0)
  {

    return 54;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DACE2E60 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 55;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001DACE9720 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 56;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DACF1870 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 57;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001DACE2EA0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 58;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001DACF1890 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 59;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001DACF18B0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 60;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001DACF18D0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 61;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001DACF18F0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 62;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001DACF1910 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 63;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001DACF1930 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 64;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001DACF1950 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 65;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001DACF1980 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 66;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001DACF19B0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 67;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001DACF19E0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 68;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001DACF1A10 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 69;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001DACF1A40 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 70;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001DACF1A70 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 71;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001DACF1AA0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 72;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001DACF1AD0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 73;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001DACF1AF0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 74;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001DACF1B10 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 75;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001DACF1B30 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 76;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001DACF1B50 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 77;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001DACF1B80 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 78;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001DACF1BB0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 79;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001DACF1BE0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 80;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001DACF1C00 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 81;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001DACF1C30 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 82;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DACF1C60 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 83;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001DACF1C80 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 84;
  }

  else if (a1 == 0xD000000000000026 && 0x80000001DACF1CA0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 85;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001DACF1CD0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 86;
  }

  else if (a1 == 0xD000000000000026 && 0x80000001DACF1D00 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 87;
  }

  else if (a1 == 0x6F43756F59726F66 && a2 == 0xEE0044496769666ELL || (sub_1DACBA174() & 1) != 0)
  {

    return 88;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001DACE8900 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 89;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001DACE8920 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 90;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DACE2E40 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 91;
  }

  else if (a1 == 0x6F4349557377656ELL && a2 == 0xEC0000006769666ELL || (sub_1DACBA174() & 1) != 0)
  {

    return 92;
  }

  else if (a1 == 0x69666E6F43644169 && a2 == 0xE900000000000067 || (sub_1DACBA174() & 1) != 0)
  {

    return 93;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001DACE8A70 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 94;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001DACF1D30 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 95;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001DACE8F90 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 96;
  }

  else if (a1 == 0xD000000000000027 && 0x80000001DACF1D60 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 97;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001DACE8FF0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 98;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001DACE9010 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 99;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DACF1D90 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 100;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001DACF1DB0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 101;
  }

  else if (a1 == 0xD000000000000026 && 0x80000001DACF1DD0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 102;
  }

  else if (a1 == 0xD000000000000027 && 0x80000001DACE97D0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 103;
  }

  else if (a1 == 0xD00000000000002CLL && 0x80000001DACF1E00 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 104;
  }

  else if (a1 == 0x506C6C4165646968 && a2 == 0xEF736C6C61777961 || (sub_1DACBA174() & 1) != 0)
  {

    return 105;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DACE9880 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 106;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001DACE98C0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 107;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001DACF1E30 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 108;
  }

  else if (a1 == 0xD00000000000002BLL && 0x80000001DACE9130 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 109;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001DACE90E0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 110;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001DACF1E50 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 111;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DACE2EC0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 112;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001DACE2EE0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 113;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001DACE2F10 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 114;
  }

  else if (a1 == 0xD000000000000027 && 0x80000001DACF1E70 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 115;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001DACF1EA0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 116;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001DACE2E10 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 117;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001DACF1EC0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 118;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001DACF1EE0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 119;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001DACF1F00 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 120;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001DACF1F20 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 121;
  }

  else if (a1 == 0xD000000000000026 && 0x80000001DACF1F40 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 122;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001DACF1F70 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 123;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001DACF1F90 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 124;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001DACF1FC0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 125;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001DACF1FE0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 126;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001DACF2010 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 127;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001DACF2030 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 128;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001DACE9770 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 129;
  }

  else if (a1 == 0xD000000000000026 && 0x80000001DACF2050 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 130;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001DACF2080 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 131;
  }

  else if (a1 == 0x43656C6369747261 && a2 == 0xED00006769666E6FLL || (sub_1DACBA174() & 1) != 0)
  {

    return 132;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001DACF20B0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 133;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001DACF20E0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 134;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001DACF2100 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 135;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001DACF2120 == a2)
  {

    return 136;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 4294967176;
    }

    else
    {
      return 4294967177;
    }
  }
}

unint64_t sub_1DAC8ECA4()
{
  result = qword_1EE124FA8;
  if (!qword_1EE124FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124FA8);
  }

  return result;
}

uint64_t sub_1DAC8ECF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguageConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DAC8ED5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1DAC8EDC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAC8EE2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguageConfig(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAC8EE90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for LanguageConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LanguageConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DAC8F044()
{
  result = qword_1ECBE9940[0];
  if (!qword_1ECBE9940[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECBE9940);
  }

  return result;
}

unint64_t sub_1DAC8F09C()
{
  result = qword_1EE124F98;
  if (!qword_1EE124F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124F98);
  }

  return result;
}

unint64_t sub_1DAC8F0F4()
{
  result = qword_1EE124FA0;
  if (!qword_1EE124FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124FA0);
  }

  return result;
}

uint64_t sub_1DAC8F148()
{
  v0 = sub_1DACB9F04();

  if (v0 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DAC8F194(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for YahooBaseResponse.Query();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DAC8F204(uint64_t *a1, unsigned int a2, uint64_t a3)
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 8) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void sub_1DAC8F34C(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((v9 + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(a1 + v10) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v10) = 0;
      }

      else if (v14)
      {
        *(a1 + v10) = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        if ((v6 & 0x80000000) != 0)
        {
          v20 = ((a1 + v8 + 8) & ~v8);
          if (v6 >= a2)
          {
            v24 = *(v5 + 56);
            v25 = (a1 + v8 + 8) & ~v8;

            v24(v25);
          }

          else
          {
            if (v9 <= 3)
            {
              v21 = ~(-1 << (8 * v9));
            }

            else
            {
              v21 = -1;
            }

            if (v9)
            {
              v22 = v21 & (~v6 + a2);
              if (v9 <= 3)
              {
                v23 = v9;
              }

              else
              {
                v23 = 4;
              }

              bzero(v20, v9);
              if (v23 > 2)
              {
                if (v23 == 3)
                {
                  *v20 = v22;
                  v20[2] = BYTE2(v22);
                }

                else
                {
                  *v20 = v22;
                }
              }

              else if (v23 == 1)
              {
                *v20 = v22;
              }

              else
              {
                *v20 = v22;
              }
            }
          }
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v19 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v19 = a2 - 1;
          }

          *a1 = v19;
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }
  }

  if (((v9 + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v7 + a2;
    v18 = a1;
    bzero(a1, v10);
    a1 = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(a1 + v10) = v16;
    }

    else
    {
      *(a1 + v10) = v16;
    }
  }

  else if (v14)
  {
    *(a1 + v10) = v16;
  }
}

void sub_1DAC8F5D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for YahooBaseResponse.QueryResults();
  if (v3 <= 0x3F)
  {
    sub_1DAB33850();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1DAC8F670(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = type metadata accessor for YahooBaseResponse.Item();
  v5 = v4;
  result = sub_1DACB9724();
  if (v7 <= 0x3F)
  {
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DAC8F718(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
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

void sub_1DAC8F89C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = *(*(*(a4 + 16) - 8) + 64);
  v11 = ((v9 + 8) & ~v9) + v10;
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v11 <= 3)
    {
      v17 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    if (v11 < 4)
    {
      v16 = (v15 >> (8 * v11)) + 1;
      if (v11)
      {
        v19 = v15 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v19;
            if (v14 > 1)
            {
LABEL_58:
              if (v14 == 2)
              {
                *&a1[v11] = v16;
              }

              else
              {
                *&a1[v11] = v16;
              }

              return;
            }
          }

          else
          {
            *a1 = v15;
            if (v14 > 1)
            {
              goto LABEL_58;
            }
          }

          goto LABEL_55;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v14 > 1)
      {
        goto LABEL_58;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_58;
      }
    }

LABEL_55:
    if (v14)
    {
      a1[v11] = v16;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v11] = 0;
LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!v14)
  {
    goto LABEL_30;
  }

  a1[v11] = 0;
  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v21 = (&a1[v9 + 8] & ~v9);
    if (v7 >= a2)
    {
      v25 = *(v6 + 56);

      v25(v21);
    }

    else
    {
      if (v10 <= 3)
      {
        v22 = ~(-1 << (8 * v10));
      }

      else
      {
        v22 = -1;
      }

      if (v10)
      {
        v23 = v22 & (~v7 + a2);
        if (v10 <= 3)
        {
          v24 = v10;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v10);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *a1 = v20;
  }
}

uint64_t sub_1DAC8FB8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DAC8FBFC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}
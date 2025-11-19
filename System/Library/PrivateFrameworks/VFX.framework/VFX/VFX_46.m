uint64_t sub_1AF4922F8()
{
  if (qword_1EB636D80 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB6C2DB8;
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);

  v4 = sub_1AF428E18(v3, v2, sub_1AF56F254);

  sub_1AF48F810(v4, sub_1AF56E184);
  if (!(v1 >> 62))
  {
    v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_11:

    return 0;
  }

  v5 = sub_1AFDFE108();
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_5:
  sub_1AFDFE008();
  v6 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1B2719C70](v6, v1);
    }

    else
    {
      v7 = *(v1 + 8 * v6 + 32);
    }

    v8 = sub_1AFDFCE58();

    if (v8)
    {
      break;
    }

    if (v5 == ++v6)
    {
      goto LABEL_11;
    }
  }

  return v7;
}

uint64_t sub_1AF4924C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(*(a3 + 8) + 24))(a2);
  v4 = v3;
  if (!(v3 >> 62))
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_9:

    return 0;
  }

  v5 = sub_1AFDFE108();
  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_3:
  sub_1AFDFE008();
  v6 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1B2719C70](v6, v4);
    }

    else
    {
      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = sub_1AFDFCE58();

    if (v8)
    {
      break;
    }

    if (v5 == ++v6)
    {
      goto LABEL_9;
    }
  }

  return v7;
}

uint64_t sub_1AF492698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 8);
  sub_1AF6461F4(v12, v11);
  v13 = sub_1AF64622C(a3, a4, a1, v11);
  (*(v7 + 8))(v9, a1);
  if (v13)
  {
    return v13;
  }

  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_1AFDFE218();

  strcpy(v16, "new property ");
  HIWORD(v16[1]) = -4864;
  MEMORY[0x1B2718AE0](a3, a4);
  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2A110);
  v15 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v15);

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF492864(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t *a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _OWORD *a15, __int16 a16, uint64_t a17)
{
  v21 = swift_allocObject();
  v22 = a15[1];
  v21[14] = *a15;
  v21[15] = v22;
  v21[16] = a15[2];
  return sub_1AF6AC9EC(a1, a2, a3, a4 & 1, a5, a6 & 1, a7, a8 & 1, a9, a10, a11, a12, a13, a14, a16, a17);
}

uint64_t sub_1AF492940()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return sub_1AF487074(v1, v2);
}

uint64_t sub_1AF492990()
{
  v0 = sub_1AF6ACB94();
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  sub_1AF487074(v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF492A10(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EB6337D0 != -1)
  {
    v18 = a1;
    v19 = a2;
    swift_once();
    a1 = v18;
    a2 = v19;
  }

  v6 = qword_1EB6C2A80;
  if (!(qword_1EB6C2A80 >> 62))
  {
    v7 = *((qword_1EB6C2A80 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_5;
    }

    return 0;
  }

  v20 = a1;
  v21 = a2;
  v22 = sub_1AFDFE108();
  a2 = v21;
  v7 = v22;
  a1 = v20;
  if (!v7)
  {
    return 0;
  }

LABEL_5:
  v8 = 0;
  v9 = a1 >> 16;
  v10 = a2 >> 16;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1B2719C70](v8, v6);
    }

    else
    {
      v11 = *(v6 + 8 * v8 + 32);
    }

    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    v14 = (v13 & 0x2000000000000000) != 0 ? HIBYTE(v13) & 0xF : v12 & 0xFFFFFFFFFFFFLL;
    v15 = v12 == a3 && v13 == a4;
    v16 = v15 && v9 == 0;
    v17 = v16 && v14 == v10;
    if (v17 || (sub_1AFDFE9E8() & 1) != 0)
    {
      break;
    }

    ++v8;

    if (v7 == v8)
    {
      return 0;
    }
  }

  return v11;
}

uint64_t sub_1AF492B88(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AFC6ABC8();
  v9 = v8;
  if (!(v8 >> 62))
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_25:

    return 0;
  }

  v10 = sub_1AFDFE108();
  if (!v10)
  {
    goto LABEL_25;
  }

LABEL_3:
  v11 = 0;
  v12 = a1 >> 16;
  v13 = a2 >> 16;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1B2719C70](v11, v9);
    }

    else
    {
      v14 = *(v9 + 8 * v11 + 32);
    }

    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    v17 = (v16 & 0x2000000000000000) != 0 ? HIBYTE(v16) & 0xF : v15 & 0xFFFFFFFFFFFFLL;
    v18 = v15 == a3 && v16 == a4;
    v19 = v18 && v12 == 0;
    v20 = v19 && v17 == v13;
    if (v20 || (sub_1AFDFE9E8() & 1) != 0)
    {
      break;
    }

    ++v11;

    if (v10 == v11)
    {
      goto LABEL_25;
    }
  }

  return v14;
}

uint64_t sub_1AF492CC4(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  v10 = sub_1AF4A91F8(a1, a6 & 0x101);
  v11 = v10;
  if (!(v10 >> 62))
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_25:

    return 0;
  }

  v12 = sub_1AFDFE108();
  if (!v12)
  {
    goto LABEL_25;
  }

LABEL_3:
  v13 = 0;
  v14 = a1 >> 16;
  v15 = a2 >> 16;
  while (1)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1B2719C70](v13, v11);
    }

    else
    {
      v16 = *(v11 + 8 * v13 + 32);
    }

    v17 = *(v16 + 16);
    v18 = *(v16 + 24);
    v19 = (v18 & 0x2000000000000000) != 0 ? HIBYTE(v18) & 0xF : v17 & 0xFFFFFFFFFFFFLL;
    v20 = v17 == a3 && v18 == a4;
    v21 = v20 && v14 == 0;
    v22 = v21 && v19 == v15;
    if (v22 || (sub_1AFDFE9E8() & 1) != 0)
    {
      break;
    }

    ++v13;

    if (v12 == v13)
    {
      goto LABEL_25;
    }
  }

  return v16;
}

uint64_t sub_1AF492E08(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EB6373B8 != -1)
  {
    swift_once();
  }

  v8 = qword_1EB6C3698;

  v9 = sub_1AFC6E244();
  sub_1AF48F810(v9, sub_1AF56E184);
  v10 = v8;
  if (!(v8 >> 62))
  {
    v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_5;
    }

LABEL_27:

    return 0;
  }

  v11 = sub_1AFDFE108();
  if (!v11)
  {
    goto LABEL_27;
  }

LABEL_5:
  v12 = 0;
  v13 = a1 >> 16;
  v14 = a2 >> 16;
  while (1)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1B2719C70](v12, v10);
    }

    else
    {
      v15 = *(v10 + 8 * v12 + 32);
    }

    v16 = *(v15 + 16);
    v17 = *(v15 + 24);
    v18 = (v17 & 0x2000000000000000) != 0 ? HIBYTE(v17) & 0xF : v16 & 0xFFFFFFFFFFFFLL;
    v19 = v16 == a3 && v17 == a4;
    v20 = v19 && v13 == 0;
    v21 = v20 && v18 == v14;
    if (v21 || (sub_1AFDFE9E8() & 1) != 0)
    {
      break;
    }

    ++v12;

    if (v11 == v12)
    {
      goto LABEL_27;
    }
  }

  return v15;
}

uint64_t sub_1AF492FA4(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AFC69AF0();
  v9 = v8;
  if (!(v8 >> 62))
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_25:

    return 0;
  }

  v10 = sub_1AFDFE108();
  if (!v10)
  {
    goto LABEL_25;
  }

LABEL_3:
  v11 = 0;
  v12 = a1 >> 16;
  v13 = a2 >> 16;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1B2719C70](v11, v9);
    }

    else
    {
      v14 = *(v9 + 8 * v11 + 32);
    }

    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    v17 = (v16 & 0x2000000000000000) != 0 ? HIBYTE(v16) & 0xF : v15 & 0xFFFFFFFFFFFFLL;
    v18 = v15 == a3 && v16 == a4;
    v19 = v18 && v12 == 0;
    v20 = v19 && v17 == v13;
    if (v20 || (sub_1AFDFE9E8() & 1) != 0)
    {
      break;
    }

    ++v11;

    if (v10 == v11)
    {
      goto LABEL_25;
    }
  }

  return v14;
}

uint64_t sub_1AF4930E0(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EB636D90 != -1)
  {
    v18 = a1;
    v19 = a2;
    swift_once();
    a1 = v18;
    a2 = v19;
  }

  v6 = qword_1EB6C2DC8;
  if (!(qword_1EB6C2DC8 >> 62))
  {
    v7 = *((qword_1EB6C2DC8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_5;
    }

    return 0;
  }

  v20 = a1;
  v21 = a2;
  v22 = sub_1AFDFE108();
  a2 = v21;
  v7 = v22;
  a1 = v20;
  if (!v7)
  {
    return 0;
  }

LABEL_5:
  v8 = 0;
  v9 = a1 >> 16;
  v10 = a2 >> 16;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1B2719C70](v8, v6);
    }

    else
    {
      v11 = *(v6 + 8 * v8 + 32);
    }

    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    v14 = (v13 & 0x2000000000000000) != 0 ? HIBYTE(v13) & 0xF : v12 & 0xFFFFFFFFFFFFLL;
    v15 = v12 == a3 && v13 == a4;
    v16 = v15 && v9 == 0;
    v17 = v16 && v14 == v10;
    if (v17 || (sub_1AFDFE9E8() & 1) != 0)
    {
      break;
    }

    ++v8;

    if (v7 == v8)
    {
      return 0;
    }
  }

  return v11;
}

uint64_t sub_1AF493258(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (*a5 != -1)
  {
    v20 = a1;
    v21 = a2;
    v22 = a6;
    swift_once();
    a6 = v22;
    a1 = v20;
    a2 = v21;
  }

  v8 = *a6;
  if (!(*a6 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_5;
    }

    return 0;
  }

  v23 = a1;
  v24 = a2;
  v25 = sub_1AFDFE108();
  a2 = v24;
  v9 = v25;
  a1 = v23;
  if (!v9)
  {
    return 0;
  }

LABEL_5:
  v10 = 0;
  v11 = a1 >> 16;
  v12 = a2 >> 16;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1B2719C70](v10, v8);
    }

    else
    {
      v13 = *(v8 + 8 * v10 + 32);
    }

    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    v16 = (v15 & 0x2000000000000000) != 0 ? HIBYTE(v15) & 0xF : v14 & 0xFFFFFFFFFFFFLL;
    v17 = v14 == a3 && v15 == a4;
    v18 = v17 && v11 == 0;
    v19 = v18 && v16 == v12;
    if (v19 || (sub_1AFDFE9E8() & 1) != 0)
    {
      break;
    }

    ++v10;

    if (v9 == v10)
    {
      return 0;
    }
  }

  return v13;
}

uint64_t sub_1AF4933BC(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = (*(*(a6 + 8) + 24))(a5);
  v11 = v10;
  if (!(v10 >> 62))
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_25:

    return 0;
  }

  v12 = sub_1AFDFE108();
  if (!v12)
  {
    goto LABEL_25;
  }

LABEL_3:
  v13 = 0;
  v14 = a1 >> 16;
  v15 = a2 >> 16;
  while (1)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1B2719C70](v13, v11);
    }

    else
    {
      v16 = *(v11 + 8 * v13 + 32);
    }

    v17 = *(v16 + 16);
    v18 = *(v16 + 24);
    v19 = (v18 & 0x2000000000000000) != 0 ? HIBYTE(v18) & 0xF : v17 & 0xFFFFFFFFFFFFLL;
    v20 = v17 == a3 && v18 == a4;
    v21 = v20 && v14 == 0;
    v22 = v21 && v19 == v15;
    if (v22 || (sub_1AFDFE9E8() & 1) != 0)
    {
      break;
    }

    ++v13;

    if (v12 == v13)
    {
      goto LABEL_25;
    }
  }

  return v16;
}

BOOL sub_1AF493510(uint64_t a1, uint64_t a2, ValueMetadata *a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1AF64622C(a1, a2, a4, *(a5 + 8));
  if (!v6)
  {
    return 0;
  }

  v7 = *(v6 + 40);

  if (v7 == a3)
  {
    return 1;
  }

  if (v7 != &type metadata for Entity)
  {
    return a3 == (MEMORY[0x1E69E7CA0] + 8);
  }

  v9 = sub_1AF871890();
  result = 1;
  if (!v9 && a3 != (MEMORY[0x1E69E7CA0] + 8))
  {
    return 0;
  }

  return result;
}

void *sub_1AF4935B8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  type metadata accessor for EntityGetSet();
  v8 = sub_1AF6ACCE0(a2, *(a4 + 16));
  v9 = swift_allocObject();
  v10 = *(v7 + *MEMORY[0x1E69E6CE8]);
  v9[2] = v10;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = v8;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = v8;
  v12 = sub_1AF6ACDEC(sub_1AF51E360, v9, sub_1AF51E36C, v11, v8[6]);

  return v12;
}

uint64_t sub_1AF4936CC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  (*(a1 + 32))(v7);
  sub_1AF5A9240(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  v5 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v5 ^ 1u, 1, a2);
}

uint64_t sub_1AF493790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13[3] = a6;
  v11 = sub_1AF585714(v13);
  (*(*(a6 - 8) + 16))(v11, a3, a6);
  (*(a4 + 16))(a1, a2, v13);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v13);
}

uint64_t sub_1AF493834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int16 a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = MEMORY[0x1E69E7CA0];
  sub_1AF584E94(a2, &v43, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1AF5A9240);
  if (*(&v44 + 1))
  {
    sub_1AF449D40(&v43, v47);
    v21 = type metadata accessor for BindingPropertyDescription();
    MEMORY[0x1EEE9AC00](v21, v22);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v24);
    v25 = swift_getKeyPath();
    swift_bridgeObjectRetain_n();
    v26 = sub_1AF4935B8(a17, v25, a17, a18);

    sub_1AF0D5A54(v47, v46);

    swift_dynamicCast();
    v27 = *(a18 + 16);
    v28 = swift_allocObject();
    v29 = v44;
    v28[14] = v43;
    v28[15] = v29;
    v28[16] = v45;
    v30 = sub_1AF6AC9EC(a3, a4, a5, a6 & 1, a7, a8 & 1, a9, a10 & 1, KeyPath, v26, a11, a12, a13, a14, a15, v27);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v47);
    return v30;
  }

  else
  {
    sub_1AF5857CC(&v43, &qword_1ED726850, v20 + 8, MEMORY[0x1E69E6720], sub_1AF5A9240);
    v32 = type metadata accessor for PropertyDescription();
    MEMORY[0x1EEE9AC00](v32, v33);
    v34 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v34, v35);
    v36 = swift_getKeyPath();
    swift_bridgeObjectRetain_n();
    v37 = sub_1AF4935B8(a17, v36, a17, a18);

    v38 = *(a18 + 16);

    return sub_1AF6ACE48(a3, a4, a5, a6 & 1, a7, a8 & 1, a9, a10 & 1, v34, v37, a11, a12, a13, a14, a15, v38);
  }
}

uint64_t sub_1AF493C30(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v3 == *a1 && v4 == a1[1])
  {
    return 1;
  }

  else
  {
    return sub_1AFDFEE28();
  }
}

uint64_t sub_1AF493CA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 24);
  v5 = *(a3 + a4 - 8);
  v6 = *a3;
  v7 = a3[1];
  sub_1AF0D5A54(a1, v10);
  v8 = *(v5 + 32);

  return v8(v10, v6, v7, v4, v5);
}

uint64_t sub_1AF493D58()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6530];
  sub_1AF5A9240(0, &qword_1ED722B68, MEMORY[0x1E69E6530], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF57937C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5793C0;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 216) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v4 + 160) = v5;
  *(v4 + 16) = 0x726564726FLL;
  *(v4 + 24) = 0xE500000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = -1027080192;
  *(v4 + 188) = 0;
  *(v4 + 192) = 1120403456;
  *(v4 + 196) = 0;
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
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v2)
  {
    *(v4 + 160) = (*(v7 + 8))(v2, v7);
  }

  *(v4 + 64) = sub_1AF57941C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0xD000000000000011;
  *(v4 + 176) = 0x80000001AFF29C80;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2CC8 = v0;
  return result;
}

uint64_t sub_1AF4940AC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  sub_1AF5795B0();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  v4 = MEMORY[0x1E69E7668];
  *(v3 + 72) = MEMORY[0x1E69E7668];
  *(v3 + 48) = 0;
  sub_1AF5A9240(0, &qword_1ED725C68, v4, type metadata accessor for EntityGetSet);
  v5 = swift_allocObject();
  v5[4] = sub_1AF57961C;
  v5[5] = KeyPath;
  v5[2] = sub_1AF579650;
  v5[3] = KeyPath;
  v5[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v6 = swift_allocObject();
  *(v6 + 112) = 1;
  *(v6 + 136) = 0;
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 120) = 0;
  *(v6 + 128) = 0;
  *(v6 + 160) = v7;
  *(v6 + 168) = 0;
  *(v6 + 216) = 0;
  *(v6 + 176) = 0;
  *(v6 + 16) = 0x65756C6176;
  *(v6 + 24) = 0xE500000000000000;
  *(v6 + 32) = KeyPath;
  *(v6 + 40) = v4;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 58) = 0;
  *(v6 + 184) = 0;
  *(v6 + 188) = 1;
  *(v6 + 192) = 0;
  *(v6 + 196) = 1;
  *(v6 + 200) = 0x1000100000000;
  *(v6 + 208) = 1;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 96) = v2;
  *(v6 + 104) = 0;
  *(v6 + 144) = xmmword_1AFE22A20;
  *(v6 + 80) = v5;
  *(v6 + 88) = &off_1F2535378;
  *(v6 + 210) = 0;
  v8 = *(v3 + 16);
  swift_retain_n();

  if (v8)
  {
    goto LABEL_7;
  }

  v9 = MEMORY[0x1E69E7668];
  v10 = swift_conformsToProtocol2();
  if (v10)
  {
    v9 = (*(v10 + 8))(MEMORY[0x1E69E7668], v10);
  }

  v11 = swift_conformsToProtocol2();
  if (v11 && v9)
  {
    v3 = (*(v11 + 8))(v9, v11);
LABEL_7:

    *(v6 + 160) = v3;

    goto LABEL_8;
  }

LABEL_8:
  *(v6 + 64) = sub_1AF5796C0;
  *(v6 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v6 + 168) = 0;
  *(v6 + 176) = 0;

  *(v6 + 216) = 0;
  *(v0 + 32) = v6;
  v12 = swift_getKeyPath();
  v13 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v14 = swift_allocObject();
  v14[4] = sub_1AF579700;
  v14[5] = v12;
  v14[2] = sub_1AF57972C;
  v14[3] = v12;
  v14[6] = v12;
  v15 = swift_allocObject();
  *(v15 + 112) = 1;
  *(v15 + 128) = 0;
  *(v15 + 136) = 0;
  *(v15 + 120) = 0;
  *(v15 + 216) = 0;
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;
  *(v15 + 160) = v7;
  *(v15 + 16) = 0x7A696D6F646E6172;
  *(v15 + 24) = 0xE900000000000065;
  *(v15 + 32) = v12;
  *(v15 + 40) = v13;
  *(v15 + 48) = 4;
  *(v15 + 56) = 0;
  *(v15 + 58) = 32;
  *(v15 + 184) = 0;
  *(v15 + 188) = 1;
  *(v15 + 192) = 0;
  *(v15 + 196) = 1;
  *(v15 + 200) = 0x1000100000000;
  *(v15 + 208) = 1;
  *(v15 + 64) = 0;
  *(v15 + 72) = 0;
  *(v15 + 96) = 0;
  *(v15 + 104) = 0;
  *(v15 + 144) = xmmword_1AFE22A20;
  *(v15 + 80) = v14;
  *(v15 + 88) = &off_1F2535378;
  *(v15 + 210) = 32;
  v16 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v16)
  {
    v13 = (*(v16 + 8))();
  }

  v17 = swift_conformsToProtocol2();
  if (v17 && v13)
  {
    *(v15 + 160) = (*(v17 + 8))(v13, v17);
  }

  *(v15 + 64) = sub_1AF579788;
  *(v15 + 72) = v12;
  sub_1AF0FB8EC(0);
  *(v15 + 168) = 0xD000000000000027;
  *(v15 + 176) = 0x80000001AFF29CA0;

  *(v15 + 216) = 0;
  *(v0 + 40) = v15;
  qword_1EB6C2A50 = v0;
  return result;
}

uint64_t sub_1AF494694()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  sub_1AF5795B0();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  *(v2 + 72) = MEMORY[0x1E69E63B0];
  *(v2 + 48) = 0x3FD3333333333333;
  v3 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF5798C0;
  v4[5] = KeyPath;
  v4[2] = sub_1AF5798F4;
  v4[3] = KeyPath;
  v4[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v5 = swift_allocObject();
  *(v5 + 112) = 1;
  *(v5 + 128) = 0;
  *(v5 + 136) = 0;
  *(v5 + 120) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(v5 + 216) = 0;
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;
  *(v5 + 160) = v6;
  *(v5 + 16) = 0x637261655378616DLL;
  *(v5 + 24) = 0xEF73756964615268;
  *(v5 + 32) = KeyPath;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 58) = 0;
  *(v5 + 184) = 1008981770;
  *(v5 + 188) = 0;
  *(v5 + 192) = 0;
  *(v5 + 196) = 1;
  *(v5 + 200) = 0x1000100000000;
  *(v5 + 208) = 1;
  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 144) = xmmword_1AFE22A20;
  *(v5 + 80) = v4;
  *(v5 + 88) = &off_1F2535378;
  *(v5 + 210) = 0;
  v7 = *(v2 + 16);
  swift_retain_n();
  if (v7)
  {
    goto LABEL_7;
  }

  v8 = MEMORY[0x1E69E6448];
  v9 = swift_conformsToProtocol2();
  if (v9)
  {
    v8 = (*(v9 + 8))(MEMORY[0x1E69E6448], v9);
  }

  v10 = swift_conformsToProtocol2();
  if (v10 && v8)
  {
    v2 = (*(v10 + 8))(v8, v10);
LABEL_7:
    *(v5 + 160) = v2;
  }

  *(v5 + 64) = sub_1AF579950;
  *(v5 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v5 + 168) = 0xD00000000000008DLL;
  *(v5 + 176) = 0x80000001AFF29CD0;

  *(v5 + 216) = 0;
  *(v0 + 32) = v5;
  v11 = swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AFE431C0;
  *(v12 + 32) = 0;
  *(v12 + 40) = 0xE000000000000000;
  *(v12 + 72) = MEMORY[0x1E69E6530];
  *(v12 + 48) = 25;
  v13 = MEMORY[0x1E69E6810];
  sub_1AF5A9240(0, &unk_1EB639F10, MEMORY[0x1E69E6810], type metadata accessor for EntityGetSet);
  v14 = swift_allocObject();
  v14[4] = sub_1AF579990;
  v14[5] = v11;
  v14[2] = sub_1AF5799C4;
  v14[3] = v11;
  v14[6] = v11;
  v15 = swift_allocObject();
  *(v15 + 112) = 1;
  *(v15 + 128) = 0;
  *(v15 + 136) = 0;
  *(v15 + 120) = 0;
  *(v15 + 216) = 0;
  *(v15 + 176) = 0;
  *(v15 + 160) = MEMORY[0x1E69E7CC0];
  *(v15 + 168) = 0;
  *(v15 + 16) = 0xD000000000000013;
  *(v15 + 24) = 0x80000001AFF22D00;
  *(v15 + 32) = v11;
  *(v15 + 40) = v13;
  *(v15 + 48) = 8;
  *(v15 + 56) = 0;
  *(v15 + 58) = 0;
  *(v15 + 184) = 1065353216;
  *(v15 + 188) = 0;
  *(v15 + 192) = 0;
  *(v15 + 196) = 1;
  *(v15 + 200) = 0x1000100000000;
  *(v15 + 208) = 1;
  *(v15 + 96) = 0;
  *(v15 + 104) = 0;
  *(v15 + 64) = 0;
  *(v15 + 72) = 0;
  *(v15 + 144) = xmmword_1AFE22A20;
  *(v15 + 80) = v14;
  *(v15 + 88) = &off_1F2535378;
  *(v15 + 210) = 0;
  v16 = *(v12 + 16);
  swift_retain_n();
  if (v16)
  {
LABEL_14:
    *(v15 + 160) = v12;

    goto LABEL_15;
  }

  v17 = MEMORY[0x1E69E6810];
  v18 = swift_conformsToProtocol2();
  if (v18)
  {
    v17 = (*(v18 + 8))(MEMORY[0x1E69E6810], v18);
  }

  v19 = swift_conformsToProtocol2();
  if (v19 && v17)
  {
    v12 = (*(v19 + 8))(v17, v19);
    goto LABEL_14;
  }

LABEL_15:
  *(v15 + 64) = sub_1AF579A20;
  *(v15 + 72) = v11;
  sub_1AF0FB8EC(0);
  *(v15 + 168) = 0xD000000000000065;
  *(v15 + 176) = 0x80000001AFF29D60;

  *(v15 + 216) = 0;
  *(v0 + 40) = v15;
  v20 = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1AFE431C0;
  *(v21 + 32) = 0;
  *(v21 + 40) = 0xE000000000000000;
  sub_1AF583D60(0, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
  v23 = v22;
  *(v21 + 72) = v22;
  v24 = swift_allocObject();
  *(v21 + 48) = v24;
  *(v24 + 16) = xmmword_1AFE55100;
  sub_1AF579ADC();
  v25 = swift_allocObject();
  v25[4] = sub_1AF579A60;
  v25[5] = v20;
  v25[2] = sub_1AF579A78;
  v25[3] = v20;
  v25[6] = v20;
  v26 = swift_allocObject();
  *(v26 + 112) = 1;
  *(v26 + 128) = 0;
  *(v26 + 136) = 0;
  *(v26 + 120) = 0;
  *(v26 + 216) = 0;
  *(v26 + 176) = 0;
  *(v26 + 160) = MEMORY[0x1E69E7CC0];
  *(v26 + 168) = 0;
  *(v26 + 16) = 0xD000000000000011;
  *(v26 + 24) = 0x80000001AFF29DD0;
  *(v26 + 32) = v20;
  *(v26 + 40) = v23;
  *(v26 + 48) = 0;
  *(v26 + 56) = 1;
  *(v26 + 58) = 0;
  *(v26 + 184) = 0;
  *(v26 + 188) = 1;
  *(v26 + 192) = 0;
  *(v26 + 196) = 1;
  *(v26 + 200) = 0x1000100000000;
  *(v26 + 208) = 1;
  *(v26 + 96) = 0;
  *(v26 + 104) = 0;
  *(v26 + 64) = 0;
  *(v26 + 72) = 0;
  *(v26 + 144) = xmmword_1AFE22A20;
  *(v26 + 80) = v25;
  *(v26 + 88) = &off_1F2535378;
  *(v26 + 210) = 0;
  v27 = *(v21 + 16);
  swift_retain_n();
  if (v27)
  {
    *(v26 + 160) = v21;
LABEL_23:

    goto LABEL_24;
  }

  v28 = swift_conformsToProtocol2();
  if (v28 && v23)
  {
    v23 = (*(v28 + 8))(v23, v28);
  }

  v29 = swift_conformsToProtocol2();
  if (v29 && v23)
  {
    *(v26 + 160) = (*(v29 + 8))(v23, v29);
    goto LABEL_23;
  }

LABEL_24:
  v30 = *(v26 + 64);
  *(v26 + 64) = sub_1AF579B6C;
  *(v26 + 72) = v20;
  sub_1AF0FB8EC(v30);
  *(v26 + 168) = 0xD000000000000088;
  *(v26 + 176) = 0x80000001AFF29DF0;

  *(v26 + 216) = 0;

  *(v0 + 48) = v26;
  v31 = swift_getKeyPath();
  v32 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v33 = swift_allocObject();
  v33[4] = sub_1AF579BB0;
  v33[5] = v31;
  v33[2] = sub_1AF579BDC;
  v33[3] = v31;
  v33[6] = v31;
  v34 = swift_allocObject();
  *(v34 + 112) = 1;
  *(v34 + 128) = 0;
  *(v34 + 136) = 0;
  *(v34 + 120) = 0;
  *(v34 + 216) = 0;
  *(v34 + 176) = 0;
  *(v34 + 160) = MEMORY[0x1E69E7CC0];
  *(v34 + 168) = 0;
  *(v34 + 16) = 0x64697247776F6873;
  *(v34 + 24) = 0xE800000000000000;
  *(v34 + 32) = v31;
  *(v34 + 40) = v32;
  *(v34 + 48) = 32;
  *(v34 + 56) = 0;
  *(v34 + 58) = 32;
  *(v34 + 184) = 0;
  *(v34 + 188) = 1;
  *(v34 + 192) = 0;
  *(v34 + 196) = 1;
  *(v34 + 200) = 0x1000100000000;
  *(v34 + 208) = 1;
  *(v34 + 64) = 0;
  *(v34 + 72) = 0;
  *(v34 + 96) = 0;
  *(v34 + 104) = 0;
  *(v34 + 144) = xmmword_1AFE22A20;
  *(v34 + 80) = v33;
  *(v34 + 88) = &off_1F2535378;
  *(v34 + 210) = 32;
  v35 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v35)
  {
    v32 = (*(v35 + 8))();
  }

  v36 = swift_conformsToProtocol2();
  if (v36 && v32)
  {
    *(v34 + 160) = (*(v36 + 8))(v32, v36);
  }

  *(v34 + 64) = sub_1AF579C38;
  *(v34 + 72) = v31;
  sub_1AF0FB8EC(0);
  *(v34 + 168) = 0xD0000000000000A2;
  *(v34 + 176) = 0x80000001AFF29E80;

  *(v34 + 216) = 0;
  *(v0 + 56) = v34;
  qword_1EB6C2CD0 = v0;
  return result;
}

uint64_t sub_1AF495180()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55110;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5AA090;
  v3[5] = KeyPath;
  v3[2] = sub_1AF57A078;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 216) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v4 + 160) = v5;
  strcpy((v4 + 16), "Updates On GPU");
  *(v4 + 31) = -18;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 61;
  *(v4 + 56) = 0;
  *(v4 + 58) = 4128;
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
  *(v4 + 144) = xmmword_1AFE55120;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 4128;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6)
  {
    v7 = (*(v6 + 8))();
  }

  else
  {
    v7 = v2;
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v7)
  {
    *(v4 + 160) = (*(v8 + 8))(v7, v8);
  }

  v9 = *(v4 + 64);
  *(v4 + 64) = sub_1AF57A0D4;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(v9);
  *(v4 + 168) = 0xD000000000000036;
  *(v4 + 176) = 0x80000001AFF29F30;

  *(v4 + 216) = 0;

  *(v0 + 32) = v4;
  v10 = swift_getKeyPath();
  v11 = swift_allocObject();
  v11[4] = sub_1AF5AA090;
  v11[5] = v10;
  v11[2] = sub_1AF5A9A48;
  v11[3] = v10;
  v11[6] = v10;
  v12 = swift_allocObject();
  *(v12 + 112) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 0;
  *(v12 + 120) = 0;
  *(v12 + 168) = 0;
  *(v12 + 160) = MEMORY[0x1E69E7CC0];
  *(v12 + 210) = 0;
  *(v12 + 216) = 0;
  *(v12 + 176) = 0;
  *(v12 + 16) = 0x206E6F20736E7552;
  *(v12 + 24) = 0xEB00000000555047;
  *(v12 + 32) = v10;
  *(v12 + 40) = v2;
  *(v12 + 48) = 61;
  *(v12 + 56) = 0;
  *(v12 + 58) = 4;
  *(v12 + 184) = 0;
  *(v12 + 188) = 1;
  *(v12 + 192) = 0;
  *(v12 + 196) = 1;
  *(v12 + 200) = 0x1000100000000;
  *(v12 + 208) = 1;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  *(v12 + 96) = 0;
  *(v12 + 104) = 0;
  *(v12 + 144) = xmmword_1AFE55120;
  *(v12 + 80) = v11;
  *(v12 + 88) = &off_1F2535378;
  *(v12 + 210) = 4;
  swift_retain_n();
  if (v6)
  {
    v13 = (*(v6 + 8))();
  }

  else
  {
    v13 = v2;
  }

  v92 = v6;
  v14 = swift_conformsToProtocol2();
  if (v14 && v13)
  {
    *(v12 + 160) = (*(v14 + 8))(v13, v14);
  }

  v15 = *(v12 + 64);
  *(v12 + 64) = sub_1AF5A95A8;
  *(v12 + 72) = v10;
  sub_1AF0FB8EC(v15);
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;

  *(v12 + 216) = 0;

  *(v0 + 40) = v12;
  *(v0 + 48) = sub_1AF577370(1087, 1684366675, 0xE400000000000000, &type metadata for Seed, &off_1F2563DE0, 0x65756C6176, 0xE500000000000000);
  *(v0 + 56) = sub_1AF577370(1087, 0xD000000000000014, 0x80000001AFF29F70, &type metadata for Seed, &off_1F2563DE0, 0x7A696D6F646E6172, 0xE900000000000065);
  v16 = swift_getKeyPath();
  v17 = swift_getKeyPath();
  v18 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v19 = swift_allocObject();
  v19[4] = sub_1AF57A114;
  v19[5] = v17;
  v19[2] = sub_1AF57A148;
  v19[3] = v17;
  v19[6] = v17;
  v20 = swift_allocObject();
  *(v20 + 112) = 1;
  *(v20 + 128) = 0;
  *(v20 + 136) = 0;
  *(v20 + 120) = 0;
  *(v20 + 168) = 0;
  *(v20 + 160) = MEMORY[0x1E69E7CC0];
  *(v20 + 210) = 0;
  *(v20 + 216) = 0;
  *(v20 + 176) = 0;
  *(v20 + 16) = 0x6974616C756D6973;
  *(v20 + 24) = 0xEF7865646E496E6FLL;
  *(v20 + 32) = v17;
  *(v20 + 40) = v18;
  *(v20 + 48) = 0;
  *(v20 + 56) = 1;
  *(v20 + 58) = 0;
  *(v20 + 184) = 0;
  *(v20 + 188) = 1;
  *(v20 + 192) = 0;
  *(v20 + 196) = 1;
  *(v20 + 200) = 0x1000100000000;
  *(v20 + 208) = 1;
  *(v20 + 64) = 0;
  *(v20 + 72) = 0;
  *(v20 + 96) = 0;
  *(v20 + 104) = 0;
  *(v20 + 144) = xmmword_1AFE22A20;
  *(v20 + 80) = v19;
  *(v20 + 88) = &off_1F2535378;
  *(v20 + 210) = 0;
  v21 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v21)
  {
    v18 = (*(v21 + 8))();
  }

  v22 = swift_conformsToProtocol2();
  if (v22 && v18)
  {
    *(v20 + 160) = (*(v22 + 8))(v18, v22);
  }

  v23 = *(v20 + 64);
  *(v20 + 64) = sub_1AF57A1A4;
  *(v20 + 72) = v17;
  sub_1AF0FB8EC(v23);
  *(v20 + 168) = 0;
  *(v20 + 176) = 0;

  *(v20 + 216) = 0;

  v24 = &type metadata for EmitterDescription.PhysicsSimulation;
  sub_1AF5A9240(0, &qword_1EB632548, &type metadata for EmitterDescription.PhysicsSimulation, type metadata accessor for EntityGetSet);
  v25 = swift_allocObject();
  v25[4] = sub_1AF57A1E4;
  v25[5] = v16;
  v25[2] = sub_1AF57A210;
  v25[3] = v16;
  v25[6] = v16;
  v26 = swift_allocObject();
  *(v26 + 112) = 1;
  *(v26 + 128) = 0;
  *(v26 + 136) = 0;
  *(v26 + 120) = 0;
  *(v26 + 168) = 0;
  *(v26 + 160) = MEMORY[0x1E69E7CC0];
  *(v26 + 210) = 0;
  *(v26 + 216) = 0;
  *(v26 + 176) = 0;
  *(v26 + 16) = 0x73636973796850;
  *(v26 + 24) = 0xE700000000000000;
  *(v26 + 32) = v16;
  *(v26 + 40) = &type metadata for EmitterDescription.PhysicsSimulation;
  *(v26 + 48) = 92;
  *(v26 + 56) = 0;
  *(v26 + 58) = 32;
  *(v26 + 184) = 0;
  *(v26 + 188) = 1;
  *(v26 + 192) = 0;
  *(v26 + 196) = 1;
  *(v26 + 200) = 0x1000100000000;
  *(v26 + 208) = 1;
  *(v26 + 64) = 0;
  *(v26 + 72) = 0;
  *(v26 + 96) = 0;
  *(v26 + 104) = 0;
  *(v26 + 144) = xmmword_1AFE22A20;
  *(v26 + 80) = v25;
  *(v26 + 88) = &off_1F2535378;
  *(v26 + 210) = 32;
  v27 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v27)
  {
    v24 = (*(v27 + 8))();
  }

  v28 = swift_conformsToProtocol2();
  if (v28 && v24)
  {
    *(v26 + 160) = (*(v28 + 8))(v24, v28);
  }

  v29 = *(v26 + 64);
  *(v26 + 64) = sub_1AF57A26C;
  *(v26 + 72) = v16;
  sub_1AF0FB8EC(v29);
  *(v26 + 168) = 0;
  *(v26 + 176) = 0;

  *(v26 + 216) = v20;

  *(v0 + 64) = v26;
  v30 = swift_getKeyPath();
  v31 = swift_allocObject();
  v31[4] = sub_1AF5AA090;
  v31[5] = v30;
  v31[2] = sub_1AF5A9A48;
  v31[3] = v30;
  v31[6] = v30;
  v32 = swift_allocObject();
  *(v32 + 112) = 1;
  *(v32 + 128) = 0;
  *(v32 + 136) = 0;
  *(v32 + 120) = 0;
  *(v32 + 160) = MEMORY[0x1E69E7CC0];
  *(v32 + 168) = 0;
  *(v32 + 210) = 0;
  *(v32 + 216) = 0;
  *(v32 + 176) = 0;
  *(v32 + 16) = 0x6C61636F4C7369;
  *(v32 + 24) = 0xE700000000000000;
  *(v32 + 32) = v30;
  v33 = MEMORY[0x1E69E6370];
  *(v32 + 40) = MEMORY[0x1E69E6370];
  *(v32 + 48) = 72;
  *(v32 + 56) = 0;
  *(v32 + 58) = 0;
  *(v32 + 184) = 0;
  *(v32 + 188) = 1;
  *(v32 + 192) = 0;
  *(v32 + 196) = 1;
  *(v32 + 200) = 0x1000100000000;
  *(v32 + 208) = 1;
  *(v32 + 64) = 0;
  *(v32 + 72) = 0;
  *(v32 + 96) = 0;
  *(v32 + 104) = 0;
  *(v32 + 144) = xmmword_1AFE22A20;
  *(v32 + 80) = v31;
  *(v32 + 88) = &off_1F2535378;
  *(v32 + 210) = 0;
  swift_retain_n();
  if (v92)
  {
    v34 = (*(v92 + 8))();
  }

  else
  {
    v34 = v33;
  }

  v35 = swift_conformsToProtocol2();
  if (v35 && v34)
  {
    *(v32 + 160) = (*(v35 + 8))(v34, v35);
  }

  v36 = *(v32 + 64);
  *(v32 + 64) = sub_1AF5A95A8;
  *(v32 + 72) = v30;
  sub_1AF0FB8EC(v36);
  *(v32 + 168) = 0;
  *(v32 + 176) = 0;

  *(v32 + 216) = 0;

  *(v0 + 72) = v32;
  v37 = swift_getKeyPath();
  v38 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v39 = swift_allocObject();
  v39[4] = sub_1AF57A2AC;
  v39[5] = v37;
  v39[2] = sub_1AF57A2E0;
  v39[3] = v37;
  v39[6] = v37;
  v40 = swift_allocObject();
  *(v40 + 112) = 1;
  *(v40 + 128) = 0;
  *(v40 + 136) = 0;
  *(v40 + 120) = 0;
  *(v40 + 168) = 0;
  *(v40 + 160) = MEMORY[0x1E69E7CC0];
  *(v40 + 210) = 0;
  *(v40 + 216) = 0;
  *(v40 + 176) = 0;
  strcpy((v40 + 16), "WarmupDuration");
  *(v40 + 31) = -18;
  *(v40 + 32) = v37;
  *(v40 + 40) = v38;
  *(v40 + 48) = 64;
  *(v40 + 56) = 0;
  *(v40 + 58) = 32;
  *(v40 + 184) = 0;
  *(v40 + 188) = 1;
  *(v40 + 192) = 0;
  *(v40 + 196) = 1;
  *(v40 + 200) = 0x1000100000000;
  *(v40 + 208) = 1;
  *(v40 + 64) = 0;
  *(v40 + 72) = 0;
  *(v40 + 96) = 0;
  *(v40 + 104) = 0;
  *(v40 + 144) = xmmword_1AFE22A20;
  *(v40 + 80) = v39;
  *(v40 + 88) = &off_1F2535378;
  *(v40 + 210) = 32;
  v41 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v41)
  {
    v42 = (*(v41 + 8))();
  }

  else
  {
    v42 = v38;
  }

  v43 = swift_conformsToProtocol2();
  if (v43 && v42)
  {
    *(v40 + 160) = (*(v43 + 8))(v42, v43);
  }

  v44 = *(v40 + 64);
  *(v40 + 64) = sub_1AF57A33C;
  *(v40 + 72) = v37;
  sub_1AF0FB8EC(v44);
  *(v40 + 168) = 0;
  *(v40 + 176) = 0;

  *(v40 + 216) = 0;

  *(v0 + 80) = v40;
  v45 = swift_getKeyPath();
  v46 = swift_allocObject();
  v46[4] = sub_1AF5A93C0;
  v46[5] = v45;
  v46[2] = sub_1AF5A9A4C;
  v46[3] = v45;
  v46[6] = v45;
  v47 = swift_allocObject();
  *(v47 + 112) = 1;
  *(v47 + 128) = 0;
  *(v47 + 136) = 0;
  *(v47 + 120) = 0;
  *(v47 + 160) = MEMORY[0x1E69E7CC0];
  *(v47 + 168) = 0;
  *(v47 + 216) = 0;
  *(v47 + 176) = 0;
  strcpy((v47 + 16), "SimulationRate");
  *(v47 + 31) = -18;
  *(v47 + 32) = v45;
  *(v47 + 40) = v38;
  *(v47 + 48) = 68;
  *(v47 + 56) = 0;
  *(v47 + 58) = 0;
  *(v47 + 184) = 0;
  *(v47 + 188) = 1;
  *(v47 + 192) = 0;
  *(v47 + 196) = 1;
  *(v47 + 200) = 0x1000100000000;
  *(v47 + 208) = 1;
  *(v47 + 64) = 0;
  *(v47 + 72) = 0;
  *(v47 + 96) = 0;
  *(v47 + 104) = 0;
  *(v47 + 144) = xmmword_1AFE22A20;
  *(v47 + 80) = v46;
  *(v47 + 88) = &off_1F2535378;
  *(v47 + 210) = 0;
  swift_retain_n();
  if (v41)
  {
    v38 = (*(v41 + 8))();
  }

  v48 = swift_conformsToProtocol2();
  if (v48 && v38)
  {
    *(v47 + 160) = (*(v48 + 8))(v38, v48);
  }

  *(v47 + 64) = sub_1AF5A95AC;
  *(v47 + 72) = v45;
  sub_1AF0FB8EC(0);
  *(v47 + 168) = 0;
  *(v47 + 176) = 0;

  *(v47 + 216) = 0;
  *(v0 + 88) = v47;
  v49 = swift_getKeyPath();
  sub_1AF5795B0();
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1AFE431C0;
  *(v50 + 32) = 0;
  *(v50 + 40) = 0xE000000000000000;
  v51 = MEMORY[0x1E69E6530];
  *(v50 + 72) = MEMORY[0x1E69E6530];
  *(v50 + 48) = 10;
  sub_1AF57A3F8();
  v52 = swift_allocObject();
  v52[4] = sub_1AF57A37C;
  v52[5] = v49;
  v52[2] = sub_1AF57A394;
  v52[3] = v49;
  v52[6] = v49;
  v53 = swift_allocObject();
  *(v53 + 104) = 0;
  *(v53 + 112) = 1;
  *(v53 + 128) = 0;
  *(v53 + 136) = 0;
  *(v53 + 120) = 0;
  *(v53 + 160) = MEMORY[0x1E69E7CC0];
  *(v53 + 216) = 0;
  sub_1AF5A9240(0, &unk_1ED72F970, v51, MEMORY[0x1E69E6720]);
  *(v53 + 168) = 0;
  *(v53 + 176) = 0;
  *(v53 + 16) = 0xD000000000000010;
  *(v53 + 24) = 0x80000001AFF29F90;
  *(v53 + 32) = v49;
  *(v53 + 40) = v54;
  *(v53 + 48) = 32;
  *(v53 + 56) = 0;
  *(v53 + 58) = 32;
  *(v53 + 184) = 0;
  *(v53 + 188) = 1;
  *(v53 + 192) = 0;
  *(v53 + 196) = 1;
  *(v53 + 200) = 0x1000100000000;
  *(v53 + 208) = 1;
  *(v53 + 64) = 0;
  *(v53 + 72) = 0;
  *(v53 + 96) = 0;
  *(v53 + 144) = xmmword_1AFE22A20;
  *(v53 + 80) = v52;
  *(v53 + 88) = &off_1F2535378;
  *(v53 + 210) = 32;
  v55 = *(v50 + 16);
  swift_retain_n();
  if (!v55)
  {

    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1AFE431C0;
    *(v50 + 32) = 48;
    *(v50 + 40) = 0xE100000000000000;
    *(v50 + 72) = v51;
    *(v50 + 48) = 0;
  }

  *(v53 + 160) = v50;
  v56 = MEMORY[0x1E69E7CC0];

  *(v53 + 64) = sub_1AF57A474;
  *(v53 + 72) = v49;
  sub_1AF0FB8EC(0);
  *(v53 + 168) = 0;
  *(v53 + 176) = 0;

  *(v53 + 216) = 0;
  *(v0 + 96) = v53;
  v57 = swift_getKeyPath();
  v58 = swift_allocObject();
  v58[4] = sub_1AF5AA090;
  v58[5] = v57;
  v58[2] = sub_1AF5A9A48;
  v58[3] = v57;
  v58[6] = v57;
  v59 = swift_allocObject();
  *(v59 + 112) = 1;
  *(v59 + 128) = 0;
  *(v59 + 136) = 0;
  *(v59 + 120) = 0;
  *(v59 + 160) = v56;
  *(v59 + 168) = 0;
  *(v59 + 216) = 0;
  *(v59 + 176) = 0;
  *(v59 + 16) = 0x6E756F426576694CLL;
  *(v59 + 24) = 0xEF786F42676E6964;
  *(v59 + 32) = v57;
  v60 = MEMORY[0x1E69E6370];
  *(v59 + 40) = MEMORY[0x1E69E6370];
  *(v59 + 48) = 58;
  *(v59 + 56) = 0;
  *(v59 + 58) = 32;
  *(v59 + 184) = 0;
  *(v59 + 188) = 1;
  *(v59 + 192) = 0;
  *(v59 + 196) = 1;
  *(v59 + 200) = 0x1000100000000;
  *(v59 + 208) = 1;
  *(v59 + 64) = 0;
  *(v59 + 72) = 0;
  *(v59 + 96) = 0;
  *(v59 + 104) = 0;
  *(v59 + 144) = xmmword_1AFE22A20;
  *(v59 + 80) = v58;
  *(v59 + 88) = &off_1F2535378;
  *(v59 + 210) = 32;
  swift_retain_n();
  if (v92)
  {
    v61 = (*(v92 + 8))();
  }

  else
  {
    v61 = v60;
  }

  v62 = swift_conformsToProtocol2();
  if (v62 && v61)
  {
    *(v59 + 160) = (*(v62 + 8))(v61, v62);
  }

  *(v59 + 64) = sub_1AF5A95A8;
  *(v59 + 72) = v57;
  sub_1AF0FB8EC(0);
  *(v59 + 168) = 0;
  *(v59 + 176) = 0;

  *(v59 + 216) = 0;
  *(v0 + 104) = v59;
  v63 = swift_getKeyPath();
  v64 = swift_allocObject();
  v64[4] = sub_1AF5AA090;
  v64[5] = v63;
  v64[2] = sub_1AF5A9A48;
  v64[3] = v63;
  v64[6] = v63;
  v65 = swift_allocObject();
  *(v65 + 112) = 1;
  *(v65 + 128) = 0;
  *(v65 + 136) = 0;
  *(v65 + 120) = 0;
  *(v65 + 160) = MEMORY[0x1E69E7CC0];
  *(v65 + 168) = 0;
  *(v65 + 216) = 0;
  *(v65 + 176) = 0;
  *(v65 + 16) = 0xD000000000000011;
  *(v65 + 24) = 0x80000001AFF29FB0;
  *(v65 + 32) = v63;
  *(v65 + 40) = v60;
  *(v65 + 48) = 59;
  *(v65 + 56) = 0;
  *(v65 + 58) = 32;
  *(v65 + 184) = 0;
  *(v65 + 188) = 1;
  *(v65 + 192) = 0;
  *(v65 + 196) = 1;
  *(v65 + 200) = 0x1000100000000;
  *(v65 + 208) = 1;
  *(v65 + 64) = 0;
  *(v65 + 72) = 0;
  *(v65 + 96) = 0;
  *(v65 + 104) = 0;
  *(v65 + 144) = xmmword_1AFE22A20;
  *(v65 + 80) = v64;
  *(v65 + 88) = &off_1F2535378;
  *(v65 + 210) = 32;
  swift_retain_n();
  if (v92)
  {
    v66 = (*(v92 + 8))();
  }

  else
  {
    v66 = v60;
  }

  v67 = swift_conformsToProtocol2();
  if (v67 && v66)
  {
    *(v65 + 160) = (*(v67 + 8))(v66, v67);
  }

  *(v65 + 64) = sub_1AF5A95A8;
  *(v65 + 72) = v63;
  sub_1AF0FB8EC(0);
  *(v65 + 168) = 0;
  *(v65 + 176) = 0;

  *(v65 + 216) = 0;
  *(v0 + 112) = v65;
  v68 = swift_getKeyPath();
  v69 = swift_allocObject();
  v69[4] = sub_1AF5AA090;
  v69[5] = v68;
  v69[2] = sub_1AF5A9A48;
  v69[3] = v68;
  v69[6] = v68;
  v70 = swift_allocObject();
  *(v70 + 112) = 1;
  *(v70 + 128) = 0;
  *(v70 + 136) = 0;
  *(v70 + 120) = 0;
  *(v70 + 160) = MEMORY[0x1E69E7CC0];
  *(v70 + 168) = 0;
  *(v70 + 216) = 0;
  *(v70 + 176) = 0;
  *(v70 + 16) = 0x6E756F42776F6853;
  *(v70 + 24) = 0xEF786F42676E6964;
  *(v70 + 32) = v68;
  *(v70 + 40) = v60;
  *(v70 + 48) = 60;
  *(v70 + 56) = 0;
  *(v70 + 58) = 32;
  *(v70 + 184) = 0;
  *(v70 + 188) = 1;
  *(v70 + 192) = 0;
  *(v70 + 196) = 1;
  *(v70 + 200) = 0x1000100000000;
  *(v70 + 208) = 1;
  *(v70 + 64) = 0;
  *(v70 + 72) = 0;
  *(v70 + 96) = 0;
  *(v70 + 104) = 0;
  *(v70 + 144) = xmmword_1AFE22A20;
  *(v70 + 80) = v69;
  *(v70 + 88) = &off_1F2535378;
  *(v70 + 210) = 32;
  swift_retain_n();
  if (v92)
  {
    v71 = (*(v92 + 8))();
  }

  else
  {
    v71 = v60;
  }

  v72 = swift_conformsToProtocol2();
  if (v72 && v71)
  {
    *(v70 + 160) = (*(v72 + 8))(v71, v72);
  }

  *(v70 + 64) = sub_1AF5A95A8;
  *(v70 + 72) = v68;
  sub_1AF0FB8EC(0);
  *(v70 + 168) = 0;
  *(v70 + 176) = 0;

  *(v70 + 216) = 0;
  *(v0 + 120) = v70;
  v73 = swift_getKeyPath();
  v74 = swift_allocObject();
  *(v74 + 216) = 0;
  *(v74 + 80) = 0;
  *(v74 + 88) = 0;
  *(v74 + 128) = 0;
  *(v74 + 136) = 0;
  *(v74 + 120) = 0;
  v75 = MEMORY[0x1E69E73E0];
  *(v74 + 16) = 0xD000000000000011;
  *(v74 + 24) = 0x80000001AFF239E0;
  *(v74 + 32) = v73;
  *(v74 + 40) = v75;
  *(v74 + 48) = 0;
  *(v74 + 56) = 1;
  *(v74 + 58) = 4;
  *(v74 + 184) = 0;
  *(v74 + 188) = 1;
  *(v74 + 192) = 0;
  *(v74 + 196) = 1;
  *(v74 + 200) = 0x1000100000000;
  *(v74 + 208) = 1;
  *(v74 + 64) = 0;
  *(v74 + 72) = 0;
  *(v74 + 210) = 4;
  *(v74 + 144) = xmmword_1AFE22A20;
  *(v74 + 168) = 0;
  *(v74 + 176) = 0;
  v76 = MEMORY[0x1E69E7CC0];
  *(v74 + 160) = MEMORY[0x1E69E7CC0];
  *(v74 + 96) = 0;
  *(v74 + 104) = 3013;
  *(v74 + 112) = 0;
  *(v0 + 128) = v74;
  *(v0 + 136) = sub_1AF577370(3013, 0xD000000000000017, 0x80000001AFF23A00, &type metadata for NeighborGrid, &off_1F2563D40, 0x637261655378616DLL, 0xEF73756964615268);
  v77 = swift_getKeyPath();
  v78 = swift_allocObject();
  v78[4] = sub_1AF5AA090;
  v78[5] = v77;
  v78[2] = sub_1AF5A9A48;
  v78[3] = v77;
  v78[6] = v77;
  v79 = swift_allocObject();
  *(v79 + 112) = 1;
  *(v79 + 128) = 0;
  *(v79 + 136) = 0;
  *(v79 + 120) = 0;
  *(v79 + 160) = v76;
  *(v79 + 168) = 0;
  *(v79 + 216) = 0;
  *(v79 + 176) = 0;
  *(v79 + 16) = 0xD000000000000016;
  *(v79 + 24) = 0x80000001AFF29FD0;
  *(v79 + 32) = v77;
  *(v79 + 40) = v60;
  *(v79 + 48) = 56;
  *(v79 + 56) = 0;
  *(v79 + 58) = 32;
  *(v79 + 184) = 0;
  *(v79 + 188) = 1;
  *(v79 + 192) = 0;
  *(v79 + 196) = 1;
  *(v79 + 200) = 0x1000100000000;
  *(v79 + 208) = 1;
  *(v79 + 64) = 0;
  *(v79 + 72) = 0;
  *(v79 + 96) = 0;
  *(v79 + 104) = 0;
  *(v79 + 144) = xmmword_1AFE22A20;
  *(v79 + 80) = v78;
  *(v79 + 88) = &off_1F2535378;
  *(v79 + 210) = 32;
  swift_retain_n();
  if (v92)
  {
    v80 = (*(v92 + 8))();
  }

  else
  {
    v80 = v60;
  }

  v81 = swift_conformsToProtocol2();
  if (v81 && v80)
  {
    *(v79 + 160) = (*(v81 + 8))(v80, v81);
  }

  *(v79 + 64) = sub_1AF5A95A8;
  *(v79 + 72) = v77;
  sub_1AF0FB8EC(0);
  *(v79 + 168) = 0;
  *(v79 + 176) = 0;

  *(v79 + 216) = 0;
  *(v0 + 144) = v79;
  v82 = swift_getKeyPath();
  v83 = swift_allocObject();
  v83[4] = sub_1AF5AA090;
  v83[5] = v82;
  v83[2] = sub_1AF5A9A48;
  v83[3] = v82;
  v83[6] = v82;
  v84 = swift_allocObject();
  *(v84 + 112) = 1;
  *(v84 + 128) = 0;
  *(v84 + 136) = 0;
  *(v84 + 120) = 0;
  *(v84 + 216) = 0;
  *(v84 + 176) = 0;
  *(v84 + 160) = MEMORY[0x1E69E7CC0];
  *(v84 + 168) = 0;
  *(v84 + 16) = 0xD000000000000014;
  *(v84 + 24) = 0x80000001AFF29FF0;
  *(v84 + 32) = v82;
  *(v84 + 40) = v60;
  *(v84 + 48) = 57;
  *(v84 + 56) = 0;
  *(v84 + 58) = 32;
  *(v84 + 184) = 0;
  *(v84 + 188) = 1;
  *(v84 + 192) = 0;
  *(v84 + 196) = 1;
  *(v84 + 200) = 0x1000100000000;
  *(v84 + 208) = 1;
  *(v84 + 64) = 0;
  *(v84 + 72) = 0;
  *(v84 + 96) = 0;
  *(v84 + 104) = 0;
  *(v84 + 144) = xmmword_1AFE22A20;
  *(v84 + 80) = v83;
  *(v84 + 88) = &off_1F2535378;
  *(v84 + 210) = 32;
  swift_retain_n();
  if (v92)
  {
    v85 = (*(v92 + 8))();
  }

  else
  {
    v85 = v60;
  }

  v86 = swift_conformsToProtocol2();
  if (v86 && v85)
  {
    *(v84 + 160) = (*(v86 + 8))(v85, v86);
  }

  *(v84 + 64) = sub_1AF5A95A8;
  *(v84 + 72) = v82;
  sub_1AF0FB8EC(0);
  *(v84 + 168) = 0xD000000000000045;
  *(v84 + 176) = 0x80000001AFF2A010;

  *(v84 + 216) = 0;
  *(v0 + 152) = v84;
  v87 = swift_getKeyPath();
  v88 = swift_allocObject();
  v88[4] = sub_1AF5AA090;
  v88[5] = v87;
  v88[2] = sub_1AF5A9A48;
  v88[3] = v87;
  v88[6] = v87;
  v89 = swift_allocObject();
  *(v89 + 112) = 1;
  *(v89 + 128) = 0;
  *(v89 + 136) = 0;
  *(v89 + 120) = 0;
  *(v89 + 216) = 0;
  *(v89 + 176) = 0;
  *(v89 + 160) = MEMORY[0x1E69E7CC0];
  *(v89 + 168) = 0;
  *(v89 + 16) = 0x6E7568436F6E6F4DLL;
  *(v89 + 24) = 0xE90000000000006BLL;
  *(v89 + 32) = v87;
  *(v89 + 40) = v60;
  *(v89 + 48) = 73;
  *(v89 + 56) = 0;
  *(v89 + 58) = 32;
  *(v89 + 184) = 0;
  *(v89 + 188) = 1;
  *(v89 + 192) = 0;
  *(v89 + 196) = 1;
  *(v89 + 200) = 0x1000100000000;
  *(v89 + 208) = 1;
  *(v89 + 64) = 0;
  *(v89 + 72) = 0;
  *(v89 + 96) = 0;
  *(v89 + 104) = 0;
  *(v89 + 144) = xmmword_1AFE22A20;
  *(v89 + 80) = v88;
  *(v89 + 88) = &off_1F2535378;
  *(v89 + 210) = 32;
  swift_retain_n();
  if (v92)
  {
    v60 = (*(v92 + 8))();
  }

  v90 = swift_conformsToProtocol2();
  if (v90 && v60)
  {
    *(v89 + 160) = (*(v90 + 8))(v60, v90);
  }

  *(v89 + 64) = sub_1AF5A95A8;
  *(v89 + 72) = v87;
  sub_1AF0FB8EC(0);
  *(v89 + 168) = 0xD000000000000034;
  *(v89 + 176) = 0x80000001AFF2A060;

  *(v89 + 216) = 0;
  *(v0 + 160) = v89;
  qword_1EB6C2778 = v0;
  return result;
}

uint64_t sub_1AF496E1C()
{
  if (qword_1EB631B50 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AF496F0C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55130;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for AABB;
  sub_1AF5A9240(0, &qword_1EB632F68, &type metadata for AABB, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF57A920;
  v3[5] = KeyPath;
  v3[2] = sub_1AF57A974;
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
  *(v4 + 16) = 0x65756C6176;
  *(v4 + 24) = 0xE500000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for AABB;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 4;
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
  *(v4 + 210) = 4;
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

  *(v4 + 64) = sub_1AF57A9D8;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v7 = swift_getKeyPath();
  sub_1AF57AAE8();
  v8 = swift_allocObject();
  v8[4] = sub_1AF57AA18;
  v8[5] = v7;
  v8[2] = sub_1AF57AA84;
  v8[3] = v7;
  v8[6] = v7;
  v9 = swift_allocObject();
  *(v9 + 104) = 0;
  *(v9 + 112) = 1;
  *(v9 + 128) = 0;
  *(v9 + 136) = 0;
  *(v9 + 120) = 0;
  *(v9 + 160) = MEMORY[0x1E69E7CC0];
  *(v9 + 216) = 0;
  sub_1AF583D60(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v11 = v10;
  *(v9 + 168) = 0;
  *(v9 + 176) = 0;
  *(v9 + 16) = 7235949;
  *(v9 + 24) = 0xE300000000000000;
  *(v9 + 32) = v7;
  *(v9 + 40) = v10;
  *(v9 + 48) = 0;
  *(v9 + 56) = 1;
  *(v9 + 58) = 0;
  *(v9 + 184) = 0;
  *(v9 + 188) = 1;
  *(v9 + 192) = 0;
  *(v9 + 196) = 1;
  *(v9 + 200) = 0x1000100000000;
  *(v9 + 208) = 1;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  *(v9 + 96) = 0;
  *(v9 + 144) = xmmword_1AFE55140;
  *(v9 + 80) = v8;
  *(v9 + 88) = &off_1F2535378;
  *(v9 + 210) = 0;
  v12 = swift_conformsToProtocol2();
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  swift_retain_n();
  v14 = v11;
  if (v13)
  {
    v14 = (*(v12 + 8))(v13, v12);
  }

  v15 = swift_conformsToProtocol2();
  if (v15 && v14)
  {
    *(v9 + 160) = (*(v15 + 8))(v14, v15);
  }

  v16 = *(v9 + 64);
  *(v9 + 64) = sub_1AF57AB78;
  *(v9 + 72) = v7;
  sub_1AF0FB8EC(v16);
  *(v9 + 168) = 0;
  *(v9 + 176) = 0;

  *(v9 + 216) = 0;

  *(v0 + 40) = v9;
  v17 = swift_getKeyPath();
  v18 = swift_allocObject();
  v18[4] = sub_1AF5A95B4;
  v18[5] = v17;
  v18[2] = sub_1AF5A9A54;
  v18[3] = v17;
  v18[6] = v17;
  v19 = swift_allocObject();
  *(v19 + 112) = 1;
  *(v19 + 128) = 0;
  *(v19 + 136) = 0;
  *(v19 + 120) = 0;
  *(v19 + 160) = MEMORY[0x1E69E7CC0];
  *(v19 + 168) = 0;
  *(v19 + 216) = 0;
  *(v19 + 176) = 0;
  *(v19 + 16) = 7889261;
  *(v19 + 24) = 0xE300000000000000;
  *(v19 + 32) = v17;
  *(v19 + 40) = v11;
  *(v19 + 48) = 0;
  *(v19 + 56) = 1;
  *(v19 + 58) = 0;
  *(v19 + 184) = 0;
  *(v19 + 188) = 1;
  *(v19 + 192) = 0;
  *(v19 + 196) = 1;
  *(v19 + 200) = 0x1000100000000;
  *(v19 + 208) = 1;
  *(v19 + 64) = 0;
  *(v19 + 72) = 0;
  *(v19 + 96) = 0;
  *(v19 + 104) = 0;
  *(v19 + 144) = xmmword_1AFE55140;
  *(v19 + 80) = v18;
  *(v19 + 88) = &off_1F2535378;
  *(v19 + 210) = 0;
  swift_retain_n();
  if (v13)
  {
    v11 = (*(v12 + 8))(v13, v12);
  }

  v20 = swift_conformsToProtocol2();
  if (v20 && v11)
  {
    *(v19 + 160) = (*(v20 + 8))(v11, v20);
  }

  v21 = *(v19 + 64);
  *(v19 + 64) = sub_1AF5A95B8;
  *(v19 + 72) = v17;
  sub_1AF0FB8EC(v21);
  *(v19 + 168) = 0;
  *(v19 + 176) = 0;

  *(v19 + 216) = 0;

  *(v0 + 48) = v19;
  qword_1EB6C28C8 = v0;
  return result;
}

void sub_1AF49759C(float32x4_t *a1, float32x4_t *a2)
{
  v6 = *a1;
  *v3.i64 = sub_1AF57AC1C(*a2, a2[1]);
  *v4.i64 = sub_1AF57ABF4(v6, v3);
  *a2 = v4;
  a2[1] = v5;
}

void sub_1AF497610(float32x4_t *a1, float32x4_t *a2)
{
  v6 = *a1;
  *v3.i64 = sub_1AF57ABEC(*a2, a2[1]);
  *v4.i64 = sub_1AF57ABF4(v3, v6);
  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_1AF497708()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55130;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for AABB;
  sub_1AF5A9240(0, &qword_1EB632F68, &type metadata for AABB, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF57AE0C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF57AE60;
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
  *(v4 + 16) = 0x65756C6176;
  *(v4 + 24) = 0xE500000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for AABB;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 4;
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
  *(v4 + 210) = 4;
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

  *(v4 + 64) = sub_1AF57AEC4;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v7 = swift_getKeyPath();
  sub_1AF57AAE8();
  v8 = swift_allocObject();
  v8[4] = sub_1AF57AF04;
  v8[5] = v7;
  v8[2] = sub_1AF57AF2C;
  v8[3] = v7;
  v8[6] = v7;
  v9 = swift_allocObject();
  *(v9 + 104) = 0;
  *(v9 + 112) = 1;
  *(v9 + 128) = 0;
  *(v9 + 136) = 0;
  *(v9 + 120) = 0;
  *(v9 + 160) = MEMORY[0x1E69E7CC0];
  *(v9 + 216) = 0;
  sub_1AF583D60(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v11 = v10;
  *(v9 + 168) = 0;
  *(v9 + 176) = 0;
  *(v9 + 16) = 7235949;
  *(v9 + 24) = 0xE300000000000000;
  *(v9 + 32) = v7;
  *(v9 + 40) = v10;
  *(v9 + 48) = 0;
  *(v9 + 56) = 1;
  *(v9 + 58) = 0;
  *(v9 + 184) = 0;
  *(v9 + 188) = 1;
  *(v9 + 192) = 0;
  *(v9 + 196) = 1;
  *(v9 + 200) = 0x1000100000000;
  *(v9 + 208) = 1;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  *(v9 + 96) = 0;
  *(v9 + 144) = xmmword_1AFE55140;
  *(v9 + 80) = v8;
  *(v9 + 88) = &off_1F2535378;
  *(v9 + 210) = 0;
  v12 = swift_conformsToProtocol2();
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  swift_retain_n();
  v14 = v11;
  if (v13)
  {
    v14 = (*(v12 + 8))(v13, v12);
  }

  v15 = swift_conformsToProtocol2();
  if (v15 && v14)
  {
    *(v9 + 160) = (*(v15 + 8))(v14, v15);
  }

  v16 = *(v9 + 64);
  *(v9 + 64) = sub_1AF57AF90;
  *(v9 + 72) = v7;
  sub_1AF0FB8EC(v16);
  *(v9 + 168) = 0;
  *(v9 + 176) = 0;

  *(v9 + 216) = 0;

  *(v0 + 40) = v9;
  v17 = swift_getKeyPath();
  v18 = swift_allocObject();
  v18[4] = sub_1AF5A95BC;
  v18[5] = v17;
  v18[2] = sub_1AF5A9A58;
  v18[3] = v17;
  v18[6] = v17;
  v19 = swift_allocObject();
  *(v19 + 112) = 1;
  *(v19 + 128) = 0;
  *(v19 + 136) = 0;
  *(v19 + 120) = 0;
  *(v19 + 160) = MEMORY[0x1E69E7CC0];
  *(v19 + 168) = 0;
  *(v19 + 216) = 0;
  *(v19 + 176) = 0;
  *(v19 + 16) = 7889261;
  *(v19 + 24) = 0xE300000000000000;
  *(v19 + 32) = v17;
  *(v19 + 40) = v11;
  *(v19 + 48) = 0;
  *(v19 + 56) = 1;
  *(v19 + 58) = 0;
  *(v19 + 184) = 0;
  *(v19 + 188) = 1;
  *(v19 + 192) = 0;
  *(v19 + 196) = 1;
  *(v19 + 200) = 0x1000100000000;
  *(v19 + 208) = 1;
  *(v19 + 64) = 0;
  *(v19 + 72) = 0;
  *(v19 + 96) = 0;
  *(v19 + 104) = 0;
  *(v19 + 144) = xmmword_1AFE55140;
  *(v19 + 80) = v18;
  *(v19 + 88) = &off_1F2535378;
  *(v19 + 210) = 0;
  swift_retain_n();
  if (v13)
  {
    v11 = (*(v12 + 8))(v13, v12);
  }

  v20 = swift_conformsToProtocol2();
  if (v20 && v11)
  {
    *(v19 + 160) = (*(v20 + 8))(v11, v20);
  }

  v21 = *(v19 + 64);
  *(v19 + 64) = sub_1AF5A95C0;
  *(v19 + 72) = v17;
  sub_1AF0FB8EC(v21);
  *(v19 + 168) = 0;
  *(v19 + 176) = 0;

  *(v19 + 216) = 0;

  *(v0 + 48) = v19;
  qword_1EB6C2CD8 = v0;
  return result;
}

uint64_t sub_1AF497E1C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  sub_1AF51B13C(0, &qword_1ED722B60, type metadata accessor for simd_float4x4, type metadata accessor for EntityGetSet);
  v1 = swift_allocObject();
  v1[4] = sub_1AF57B114;
  v1[5] = KeyPath;
  v1[2] = sub_1AF57B170;
  v1[3] = KeyPath;
  v1[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v2 = swift_allocObject();
  *(v2 + 104) = 0;
  *(v2 + 112) = 1;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 120) = 0;
  *(v2 + 160) = MEMORY[0x1E69E7CC0];
  *(v2 + 216) = 0;
  type metadata accessor for simd_float4x4(0);
  v4 = v3;
  *(v2 + 168) = 0;
  *(v2 + 176) = 0;
  *(v2 + 16) = 0x65756C6176;
  *(v2 + 24) = 0xE500000000000000;
  *(v2 + 32) = KeyPath;
  *(v2 + 40) = v3;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 58) = 24;
  *(v2 + 184) = 0;
  *(v2 + 188) = 1;
  *(v2 + 192) = 0;
  *(v2 + 196) = 1;
  *(v2 + 200) = 0x1000100000000;
  *(v2 + 208) = 1;
  *(v2 + 96) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 144) = xmmword_1AFE22A20;
  *(v2 + 80) = v1;
  *(v2 + 88) = &off_1F2535378;
  *(v2 + 210) = 24;
  v5 = swift_conformsToProtocol2();
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  swift_retain_n();
  v7 = v4;
  if (v6)
  {
    v7 = (*(v5 + 8))(v6, v5);
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v7)
  {
    *(v2 + 160) = (*(v8 + 8))(v7, v8);
  }

  v9 = *(v2 + 64);
  *(v2 + 64) = sub_1AF57B1A8;
  *(v2 + 72) = KeyPath;
  sub_1AF0FB8EC(v9);
  *(v2 + 168) = 0;
  *(v2 + 176) = 0;

  *(v2 + 216) = 0;

  *(v16 + 32) = v2;
  v10 = swift_getKeyPath();
  v11 = swift_allocObject();
  v11[4] = sub_1AF5AA410;
  v11[5] = v10;
  v11[2] = sub_1AF5AA434;
  v11[3] = v10;
  v11[6] = v10;
  v12 = swift_allocObject();
  *(v12 + 112) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 0;
  *(v12 + 120) = 0;
  *(v12 + 160) = MEMORY[0x1E69E7CC0];
  *(v12 + 168) = 0;
  *(v12 + 216) = 0;
  *(v12 + 176) = 0;
  *(v12 + 16) = 0x65737265766E69;
  *(v12 + 24) = 0xE700000000000000;
  *(v12 + 32) = v10;
  *(v12 + 40) = v4;
  *(v12 + 48) = 0;
  *(v12 + 56) = 1;
  *(v12 + 58) = 152;
  *(v12 + 184) = 0;
  *(v12 + 188) = 1;
  *(v12 + 192) = 0;
  *(v12 + 196) = 1;
  *(v12 + 200) = 0x1000100000000;
  *(v12 + 208) = 1;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  *(v12 + 96) = 0;
  *(v12 + 104) = 0;
  *(v12 + 144) = xmmword_1AFE22A20;
  *(v12 + 80) = v11;
  *(v12 + 88) = &off_1F2535378;
  *(v12 + 210) = 152;
  swift_retain_n();
  if (v6)
  {
    v4 = (*(v5 + 8))(v6, v5);
  }

  v13 = swift_conformsToProtocol2();
  if (v13 && v4)
  {
    *(v12 + 160) = (*(v13 + 8))(v4, v13);
  }

  v14 = *(v12 + 64);
  *(v12 + 64) = sub_1AF5A95C4;
  *(v12 + 72) = v10;
  sub_1AF0FB8EC(v14);
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;

  *(v12 + 216) = 0;

  *(v16 + 40) = v12;
  qword_1EB6C2808 = v16;
  return result;
}

uint64_t sub_1AF498360()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  sub_1AF57AAE8();
  v2 = swift_allocObject();
  v2[4] = sub_1AF57B2BC;
  v2[5] = KeyPath;
  v2[2] = sub_1AF57B2D4;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 160) = MEMORY[0x1E69E7CC0];
  *(v3 + 216) = 0;
  sub_1AF583D60(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v6 = v5;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x6E6F697469736F70;
  *(v3 + 24) = 0xE800000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v5;
  *(v3 + 48) = 0;
  *(v3 + 56) = 1;
  *(v3 + 58) = 16;
  *(v3 + 184) = 0;
  *(v3 + 188) = 1;
  *(v3 + 192) = 0;
  *(v3 + 196) = 1;
  *(v3 + 200) = 0x1000100000000;
  *(v3 + 208) = 1;
  *(v3 + 96) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 144) = xmmword_1AFE55140;
  *(v3 + 80) = v2;
  *(v3 + 88) = &off_1F2535378;
  *(v3 + 210) = 16;
  v7 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v7 && v6)
  {
    v6 = (*(v7 + 8))(v6, v7);
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v6)
  {
    *(v3 + 160) = (*(v8 + 8))(v6, v8);
  }

  v9 = *(v3 + 64);
  *(v3 + 64) = sub_1AF57B338;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v9);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  v10 = swift_getKeyPath();
  sub_1AF51B13C(0, &qword_1ED722B60, type metadata accessor for simd_float4x4, type metadata accessor for EntityGetSet);
  v11 = swift_allocObject();
  v11[4] = sub_1AF57B37C;
  v11[5] = v10;
  v11[2] = sub_1AF57B3D8;
  v11[3] = v10;
  v11[6] = v10;
  v12 = swift_allocObject();
  *(v12 + 104) = 0;
  *(v12 + 112) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 0;
  *(v12 + 120) = 0;
  *(v12 + 160) = v4;
  *(v12 + 216) = 0;
  type metadata accessor for simd_float4x4(0);
  v14 = v13;
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;
  *(v12 + 16) = 0x65756C6176;
  *(v12 + 24) = 0xE500000000000000;
  *(v12 + 32) = v10;
  *(v12 + 40) = v13;
  *(v12 + 48) = 0;
  *(v12 + 56) = 0;
  *(v12 + 58) = 16;
  *(v12 + 184) = 0;
  *(v12 + 188) = 1;
  *(v12 + 192) = 0;
  *(v12 + 196) = 1;
  *(v12 + 200) = 0x1000100000000;
  *(v12 + 208) = 1;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  *(v12 + 88) = &off_1F2535378;
  *(v12 + 96) = 0;
  *(v12 + 144) = xmmword_1AFE22A20;
  *(v12 + 80) = v11;
  *(v12 + 210) = 16;
  v15 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v15 && v14)
  {
    v14 = (*(v15 + 8))(v14, v15);
  }

  v16 = swift_conformsToProtocol2();
  if (v16 && v14)
  {
    *(v12 + 160) = (*(v16 + 8))(v14, v16);
  }

  v17 = *(v12 + 64);
  *(v12 + 64) = sub_1AF57B410;
  *(v12 + 72) = v10;
  sub_1AF0FB8EC(v17);
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;

  *(v12 + 216) = 0;

  *(v0 + 40) = v12;
  qword_1EB6C2730 = v0;
  return result;
}

uint64_t sub_1AF4988BC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF57AAE8();
  v2 = swift_allocObject();
  v2[4] = sub_1AF57B504;
  v2[5] = KeyPath;
  v2[2] = sub_1AF57B52C;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  *(v3 + 160) = MEMORY[0x1E69E7CC0];
  *(v3 + 216) = 0;
  sub_1AF583D60(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v5 = v4;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x6E6F697469736F70;
  *(v3 + 24) = 0xE800000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 1;
  *(v3 + 58) = 1;
  *(v3 + 184) = 0;
  *(v3 + 188) = 1;
  *(v3 + 192) = 0;
  *(v3 + 196) = 1;
  *(v3 + 200) = 0x1000100000000;
  *(v3 + 208) = 1;
  *(v3 + 96) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 144) = xmmword_1AFE55140;
  *(v3 + 80) = v2;
  *(v3 + 88) = &off_1F2535378;
  *(v3 + 210) = 1;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6 && v5)
  {
    v5 = (*(v6 + 8))(v5, v6);
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v5)
  {
    *(v3 + 160) = (*(v7 + 8))(v5, v7);
  }

  v8 = *(v3 + 64);
  *(v3 + 64) = sub_1AF57B590;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  qword_1ED73B600 = v0;
  return result;
}

uint64_t sub_1AF498C70()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF57AAE8();
  v2 = swift_allocObject();
  v2[4] = sub_1AF57B674;
  v2[5] = KeyPath;
  v2[2] = sub_1AF57B69C;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  *(v3 + 160) = MEMORY[0x1E69E7CC0];
  *(v3 + 216) = 0;
  sub_1AF583D60(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v5 = v4;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x6C616D726F6ELL;
  *(v3 + 24) = 0xE600000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 1;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 1;
  *(v3 + 192) = 0;
  *(v3 + 196) = 1;
  *(v3 + 200) = 0x1000100000000;
  *(v3 + 208) = 1;
  *(v3 + 96) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 144) = xmmword_1AFE22A20;
  *(v3 + 80) = v2;
  *(v3 + 88) = &off_1F2535378;
  *(v3 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6 && v5)
  {
    v5 = (*(v6 + 8))(v5, v6);
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v5)
  {
    *(v3 + 160) = (*(v7 + 8))(v5, v7);
  }

  v8 = *(v3 + 64);
  *(v3 + 64) = sub_1AF57B700;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  qword_1EB6C2CE0 = v0;
  return result;
}

uint64_t sub_1AF498FC0()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55130;
  KeyPath = swift_getKeyPath();
  sub_1AF5795B0();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  *(v2 + 32) = 0x797469746E656469;
  *(v2 + 40) = 0xE800000000000000;
  type metadata accessor for simd_quatf(0);
  v4 = v3;
  *(v2 + 72) = v3;
  v5 = swift_allocObject();
  *(v2 + 48) = v5;
  *(v5 + 16) = xmmword_1AFE201A0;
  sub_1AF51B13C(0, &unk_1ED725C88, type metadata accessor for simd_quatf, type metadata accessor for EntityGetSet);
  v6 = swift_allocObject();
  v6[4] = sub_1AF57B7E4;
  v6[5] = KeyPath;
  v6[2] = sub_1AF57B7FC;
  v6[3] = KeyPath;
  v6[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v7 = swift_allocObject();
  *(v7 + 112) = 1;
  *(v7 + 136) = 0;
  v8 = MEMORY[0x1E69E7CC0];
  *(v7 + 120) = 0;
  *(v7 + 128) = 0;
  *(v7 + 160) = v8;
  *(v7 + 168) = 0;
  *(v7 + 216) = 0;
  *(v7 + 176) = 0;
  *(v7 + 16) = 0x7461746E6569726FLL;
  *(v7 + 24) = 0xEB000000006E6F69;
  *(v7 + 32) = KeyPath;
  *(v7 + 40) = v4;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 58) = 0;
  *(v7 + 184) = 0;
  *(v7 + 188) = 1;
  *(v7 + 192) = 0;
  *(v7 + 196) = 1;
  *(v7 + 200) = 0x1000100000000;
  *(v7 + 208) = 1;
  *(v7 + 96) = 0;
  *(v7 + 104) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 144) = xmmword_1AFE55150;
  *(v7 + 80) = v6;
  *(v7 + 88) = &off_1F2535378;
  *(v7 + 210) = 0;
  v9 = *(v2 + 16);
  swift_retain_n();
  if (v9)
  {
    *(v7 + 160) = v2;
LABEL_9:

    goto LABEL_10;
  }

  v10 = swift_conformsToProtocol2();
  if (v10 && v4)
  {
    v4 = (*(v10 + 8))(v4, v10);
  }

  v11 = swift_conformsToProtocol2();
  if (v11 && v4)
  {
    *(v7 + 160) = (*(v11 + 8))(v4, v11);
    goto LABEL_9;
  }

LABEL_10:
  v12 = *(v7 + 64);
  *(v7 + 64) = sub_1AF57B830;
  *(v7 + 72) = KeyPath;
  sub_1AF0FB8EC(v12);
  *(v7 + 168) = 0;
  *(v7 + 176) = 0;

  *(v7 + 216) = 0;

  *(v0 + 32) = v7;
  v13 = swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AFE431C0;
  *(v14 + 32) = 0x797469746E656469;
  *(v14 + 40) = 0xE800000000000000;
  sub_1AF583D60(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v16 = v15;
  *(v14 + 72) = v15;
  v17 = swift_allocObject();
  *(v14 + 48) = v17;
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  sub_1AF57AAE8();
  v18 = swift_allocObject();
  v18[4] = sub_1AF57B87C;
  v18[5] = v13;
  v18[2] = sub_1AF57B8B4;
  v18[3] = v13;
  v18[6] = v13;
  v19 = swift_allocObject();
  *(v19 + 112) = 1;
  *(v19 + 128) = 0;
  *(v19 + 136) = 0;
  *(v19 + 120) = 0;
  v20 = MEMORY[0x1E69E7CC0];
  *(v19 + 160) = MEMORY[0x1E69E7CC0];
  *(v19 + 168) = 0;
  *(v19 + 216) = 0;
  *(v19 + 176) = 0;
  *(v19 + 16) = 0x72656C7565;
  *(v19 + 24) = 0xE500000000000000;
  *(v19 + 32) = v13;
  *(v19 + 40) = v16;
  *(v19 + 48) = 0;
  *(v19 + 56) = 1;
  *(v19 + 58) = 4;
  *(v19 + 184) = 0;
  *(v19 + 188) = 1;
  *(v19 + 192) = 0;
  *(v19 + 196) = 1;
  *(v19 + 200) = 0x1000100000000;
  *(v19 + 208) = 1;
  *(v19 + 64) = 0;
  *(v19 + 72) = 0;
  *(v19 + 96) = 0;
  *(v19 + 104) = 0;
  *(v19 + 144) = xmmword_1AFE55150;
  *(v19 + 80) = v18;
  *(v19 + 88) = &off_1F2535378;
  *(v19 + 210) = 4;
  v21 = *(v14 + 16);
  swift_retain_n();
  if (v21)
  {
    *(v19 + 160) = v14;
LABEL_18:

    goto LABEL_19;
  }

  v22 = swift_conformsToProtocol2();
  if (v22 && v16)
  {
    v16 = (*(v22 + 8))(v16, v22);
  }

  v23 = swift_conformsToProtocol2();
  if (v23 && v16)
  {
    *(v19 + 160) = (*(v23 + 8))(v16, v23);
    goto LABEL_18;
  }

LABEL_19:
  v24 = *(v19 + 64);
  *(v19 + 64) = sub_1AF57B918;
  *(v19 + 72) = v13;
  sub_1AF0FB8EC(v24);
  *(v19 + 168) = 0;
  *(v19 + 176) = 0;

  *(v19 + 216) = 0;

  *(v0 + 40) = v19;
  v25 = swift_getKeyPath();
  sub_1AF57B9C0();
  v26 = swift_allocObject();
  v26[4] = sub_1AF5A95D4;
  v26[5] = v25;
  v26[2] = sub_1AF57B95C;
  v26[3] = v25;
  v26[6] = v25;
  v27 = swift_allocObject();
  *(v27 + 104) = 0;
  *(v27 + 112) = 1;
  *(v27 + 128) = 0;
  *(v27 + 136) = 0;
  *(v27 + 120) = 0;
  *(v27 + 160) = v20;
  *(v27 + 216) = 0;
  sub_1AF583D60(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  v29 = v28;
  *(v27 + 168) = 0;
  *(v27 + 176) = 0;
  *(v27 + 16) = 0x696E726574617571;
  *(v27 + 24) = 0xEA00000000006E6FLL;
  *(v27 + 32) = v25;
  *(v27 + 40) = v28;
  *(v27 + 48) = 0;
  *(v27 + 56) = 1;
  *(v27 + 58) = 4;
  *(v27 + 184) = 0;
  *(v27 + 188) = 1;
  *(v27 + 192) = 0;
  *(v27 + 196) = 1;
  *(v27 + 200) = 0x1000100000000;
  *(v27 + 208) = 1;
  *(v27 + 64) = 0;
  *(v27 + 72) = 0;
  *(v27 + 88) = &off_1F2535378;
  *(v27 + 96) = 0;
  *(v27 + 144) = xmmword_1AFE55150;
  *(v27 + 80) = v26;
  *(v27 + 210) = 4;
  v30 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v30 && v29)
  {
    v29 = (*(v30 + 8))(v29, v30);
  }

  v31 = swift_conformsToProtocol2();
  if (v31 && v29)
  {
    *(v27 + 160) = (*(v31 + 8))(v29, v31);
  }

  v32 = *(v27 + 64);
  *(v27 + 64) = sub_1AF57BA50;
  *(v27 + 72) = v25;
  sub_1AF0FB8EC(v32);
  *(v27 + 168) = 0;
  *(v27 + 176) = 0;

  *(v27 + 216) = 0;

  *(v0 + 48) = v27;
  qword_1ED73B5B8 = v0;
  return result;
}

__n128 sub_1AF4997F8@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_1AF499804(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1AF4998C4()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF57BE88;
  v3[5] = KeyPath;
  v3[2] = sub_1AF57BECC;
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
  *(v4 + 16) = 0x746E65726170;
  *(v4 + 24) = 0xE600000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for Entity;
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

  *(v4 + 64) = sub_1AF57BF28;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2CE8 = v0;
  return result;
}

uint64_t sub_1AF499BF8()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF57C034();
  v2 = swift_allocObject();
  v2[4] = sub_1AF57BFC8;
  v2[5] = KeyPath;
  v2[2] = sub_1AF57C004;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  *(v3 + 160) = MEMORY[0x1E69E7CC0];
  *(v3 + 216) = 0;
  sub_1AF5A9240(0, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
  v5 = v4;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x6E6572646C696863;
  *(v3 + 24) = 0xE800000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 1;
  *(v3 + 192) = 0;
  *(v3 + 196) = 1;
  *(v3 + 200) = 0x1000100000000;
  *(v3 + 208) = 1;
  *(v3 + 96) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 144) = xmmword_1AFE22A20;
  *(v3 + 80) = v2;
  *(v3 + 88) = &off_1F2535378;
  *(v3 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6 && v5)
  {
    v5 = (*(v6 + 8))(v5, v6);
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v5)
  {
    *(v3 + 160) = (*(v7 + 8))(v5, v7);
  }

  v8 = *(v3 + 64);
  *(v3 + 64) = sub_1AF57C0B0;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  qword_1EB6C2CF0 = v0;
  return result;
}

uint64_t sub_1AF499F3C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF57C2F0;
  v3[5] = KeyPath;
  v3[2] = sub_1AF57C334;
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
  *(v4 + 16) = 0x746567726174;
  *(v4 + 24) = 0xE600000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for Entity;
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

  *(v4 + 64) = sub_1AF57C390;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2CF8 = v0;
  return result;
}

uint64_t sub_1AF49A268()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF57C430;
  v3[5] = KeyPath;
  v3[2] = sub_1AF57C474;
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
  *(v4 + 16) = 0x726F74636166;
  *(v4 + 24) = 0xE600000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
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

  *(v4 + 64) = sub_1AF57C4D0;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2D00 = v0;
  return result;
}

uint64_t sub_1AF49A5A0()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E72F0];
  sub_1AF5A9240(0, &qword_1EB63A0D0, MEMORY[0x1E69E72F0], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF57C570;
  v3[5] = KeyPath;
  v3[2] = sub_1AF57C5B4;
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
  *(v4 + 16) = 0x726564726FLL;
  *(v4 + 24) = 0xE500000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
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

  *(v4 + 64) = sub_1AF57C624;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2D08 = v0;
  return result;
}

uint64_t sub_1AF49A8DC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF57C6F8;
  v3[5] = KeyPath;
  v3[2] = sub_1AF57C73C;
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
  *(v4 + 16) = 0x656C616373;
  *(v4 + 24) = 0xE500000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
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

  *(v4 + 64) = sub_1AF57C798;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1ED73B360 = v0;
  return result;
}

uint64_t sub_1AF49AC0C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF57C8C8();
  v2 = swift_allocObject();
  v2[4] = sub_1AF57C838;
  v2[5] = KeyPath;
  v2[2] = sub_1AF57C86C;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  *(v3 + 160) = MEMORY[0x1E69E7CC0];
  *(v3 + 216) = 0;
  sub_1AF583D60(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  v5 = v4;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x656C616373;
  *(v3 + 24) = 0xE500000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 1;
  *(v3 + 192) = 0;
  *(v3 + 196) = 1;
  *(v3 + 200) = 0x1000100000000;
  *(v3 + 208) = 1;
  *(v3 + 96) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 144) = xmmword_1AFE22A20;
  *(v3 + 80) = v2;
  *(v3 + 88) = &off_1F2535378;
  *(v3 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6 && v5)
  {
    v5 = (*(v6 + 8))(v5, v6);
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v5)
  {
    *(v3 + 160) = (*(v7 + 8))(v5, v7);
  }

  v8 = *(v3 + 64);
  *(v3 + 64) = sub_1AF57C958;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  qword_1ED73B3E8 = v0;
  return result;
}

uint64_t sub_1AF49AF60()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF57AAE8();
  v2 = swift_allocObject();
  v2[4] = sub_1AF57CB04;
  v2[5] = KeyPath;
  v2[2] = sub_1AF57CB2C;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  *(v3 + 160) = MEMORY[0x1E69E7CC0];
  *(v3 + 216) = 0;
  sub_1AF583D60(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v5 = v4;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x656C616373;
  *(v3 + 24) = 0xE500000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 1;
  *(v3 + 192) = 0;
  *(v3 + 196) = 1;
  *(v3 + 200) = 0x1000100000000;
  *(v3 + 208) = 1;
  *(v3 + 96) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 144) = xmmword_1AFE22A20;
  *(v3 + 80) = v2;
  *(v3 + 88) = &off_1F2535378;
  *(v3 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6 && v5)
  {
    v5 = (*(v6 + 8))(v5, v6);
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v5)
  {
    *(v3 + 160) = (*(v7 + 8))(v5, v7);
  }

  v8 = *(v3 + 64);
  *(v3 + 64) = sub_1AF57CB90;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  qword_1ED73B358 = v0;
  return result;
}

uint64_t sub_1AF49B2B4()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF57AAE8();
  v2 = swift_allocObject();
  v2[4] = sub_1AF57CC74;
  v2[5] = KeyPath;
  v2[2] = sub_1AF57CC9C;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  *(v3 + 160) = MEMORY[0x1E69E7CC0];
  *(v3 + 216) = 0;
  sub_1AF583D60(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v5 = v4;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x656C616373;
  *(v3 + 24) = 0xE500000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 1;
  *(v3 + 192) = 0;
  *(v3 + 196) = 1;
  *(v3 + 200) = 0x1000100000000;
  *(v3 + 208) = 1;
  *(v3 + 96) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 144) = xmmword_1AFE22A20;
  *(v3 + 80) = v2;
  *(v3 + 88) = &off_1F2535378;
  *(v3 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6 && v5)
  {
    v5 = (*(v6 + 8))(v5, v6);
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v5)
  {
    *(v3 + 160) = (*(v7 + 8))(v5, v7);
  }

  v8 = *(v3 + 64);
  *(v3 + 64) = sub_1AF57CD00;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  qword_1EB6C2D10 = v0;
  return result;
}

uint64_t sub_1AF49B604()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF57AAE8();
  v2 = swift_allocObject();
  v2[4] = sub_1AF57CDE4;
  v2[5] = KeyPath;
  v2[2] = sub_1AF57CE0C;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  *(v3 + 160) = MEMORY[0x1E69E7CC0];
  *(v3 + 216) = 0;
  sub_1AF583D60(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v5 = v4;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x797469636F6C6576;
  *(v3 + 24) = 0xE800000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 1;
  *(v3 + 58) = 2;
  *(v3 + 184) = 0;
  *(v3 + 188) = 1;
  *(v3 + 192) = 0;
  *(v3 + 196) = 1;
  *(v3 + 200) = 0x1000100000000;
  *(v3 + 208) = 1;
  *(v3 + 96) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 144) = xmmword_1AFE22A20;
  *(v3 + 80) = v2;
  *(v3 + 88) = &off_1F2535378;
  *(v3 + 210) = 2;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6 && v5)
  {
    v5 = (*(v6 + 8))(v5, v6);
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v5)
  {
    *(v3 + 160) = (*(v7 + 8))(v5, v7);
  }

  v8 = *(v3 + 64);
  *(v3 + 64) = sub_1AF57CE70;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  qword_1ED73B350 = v0;
  return result;
}

uint64_t sub_1AF49B960()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF57B9C0();
  v2 = swift_allocObject();
  v2[4] = sub_1AF57CF54;
  v2[5] = KeyPath;
  v2[2] = sub_1AF57CF7C;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  *(v3 + 160) = MEMORY[0x1E69E7CC0];
  *(v3 + 216) = 0;
  sub_1AF583D60(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  v5 = v4;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x5672616C75676E61;
  *(v3 + 24) = 0xEF797469636F6C65;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 1;
  *(v3 + 192) = 0;
  *(v3 + 196) = 1;
  *(v3 + 200) = 0x1000100000000;
  *(v3 + 208) = 1;
  *(v3 + 96) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 144) = xmmword_1AFE55150;
  *(v3 + 80) = v2;
  *(v3 + 88) = &off_1F2535378;
  *(v3 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6 && v5)
  {
    v5 = (*(v6 + 8))(v5, v6);
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v5)
  {
    *(v3 + 160) = (*(v7 + 8))(v5, v7);
  }

  v8 = *(v3 + 64);
  *(v3 + 64) = sub_1AF57CFE0;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  qword_1EB6C2B10 = v0;
  return result;
}

uint64_t sub_1AF49BCEC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF57D0C4;
  v4[5] = v2;
  v4[2] = sub_1AF57D108;
  v4[3] = v2;
  v4[6] = v2;
  type metadata accessor for PropertyDescription();
  v5 = swift_allocObject();
  *(v5 + 112) = 1;
  *(v5 + 128) = 0;
  *(v5 + 136) = 0;
  *(v5 + 120) = 0;
  *(v5 + 160) = MEMORY[0x1E69E7CC0];
  *(v5 + 168) = 0;
  *(v5 + 216) = 0;
  *(v5 + 176) = 0;
  *(v5 + 16) = 0x646E496563617073;
  *(v5 + 24) = 0xEA00000000007865;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0;
  *(v5 + 56) = 1;
  *(v5 + 58) = 0;
  *(v5 + 184) = 0;
  *(v5 + 188) = 1;
  *(v5 + 192) = 0;
  *(v5 + 196) = 1;
  *(v5 + 200) = 0x1000100000000;
  *(v5 + 208) = 1;
  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 144) = xmmword_1AFE22A20;
  *(v5 + 80) = v4;
  *(v5 + 88) = &off_1F2535378;
  *(v5 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6)
  {
    v3 = (*(v6 + 8))();
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v3)
  {
    *(v5 + 160) = (*(v7 + 8))(v3, v7);
  }

  *(v5 + 64) = sub_1AF57D164;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  v8 = &type metadata for EntitySpace;
  sub_1AF5A9240(0, &qword_1EB63A130, &type metadata for EntitySpace, type metadata accessor for EntityGetSet);
  v9 = swift_allocObject();
  v9[4] = sub_1AF57D1A4;
  v9[5] = KeyPath;
  v9[2] = sub_1AF57D1D0;
  v9[3] = KeyPath;
  v9[6] = KeyPath;
  v10 = swift_allocObject();
  *(v10 + 112) = 1;
  *(v10 + 128) = 0;
  *(v10 + 136) = 0;
  *(v10 + 120) = 0;
  *(v10 + 160) = MEMORY[0x1E69E7CC0];
  *(v10 + 168) = 0;
  *(v10 + 216) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 0x6563617073;
  *(v10 + 24) = 0xE500000000000000;
  *(v10 + 32) = KeyPath;
  *(v10 + 40) = &type metadata for EntitySpace;
  *(v10 + 48) = 0;
  *(v10 + 56) = 0;
  *(v10 + 58) = 0;
  *(v10 + 184) = 0;
  *(v10 + 188) = 1;
  *(v10 + 192) = 0;
  *(v10 + 196) = 1;
  *(v10 + 200) = 0x1000100000000;
  *(v10 + 208) = 1;
  *(v10 + 96) = 0;
  *(v10 + 104) = 0;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;
  *(v10 + 144) = xmmword_1AFE22A20;
  *(v10 + 80) = v9;
  *(v10 + 88) = &off_1F2535378;
  *(v10 + 210) = 0;
  v11 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v11)
  {
    v8 = (*(v11 + 8))();
  }

  v12 = swift_conformsToProtocol2();
  if (v12 && v8)
  {
    *(v10 + 160) = (*(v12 + 8))(v8, v12);
  }

  *(v10 + 64) = sub_1AF57D22C;
  *(v10 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = v5;
  *(v0 + 32) = v10;
  qword_1EB6C2D18 = v0;
  return result;
}

uint64_t sub_1AF49C230()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6158];
  sub_1AF5A9240(0, &qword_1EB634358, MEMORY[0x1E69E6158], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF57D360;
  v3[5] = KeyPath;
  v3[2] = sub_1AF57D39C;
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
  *(v4 + 16) = 1701667182;
  *(v4 + 24) = 0xE400000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 32;
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
  *(v4 + 210) = 32;
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

  *(v4 + 64) = sub_1AF57D3CC;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2D20 = v0;
  return result;
}

uint64_t sub_1AF49C558()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF57B9C0();
  v2 = swift_allocObject();
  v2[4] = sub_1AF57D4C0;
  v2[5] = KeyPath;
  v2[2] = sub_1AF57D4E8;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  *(v3 + 160) = MEMORY[0x1E69E7CC0];
  *(v3 + 216) = 0;
  sub_1AF583D60(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  v5 = v4;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x726F6C6F63;
  *(v3 + 24) = 0xE500000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 1;
  *(v3 + 192) = 0;
  *(v3 + 196) = 1;
  *(v3 + 200) = 0x1000100000000;
  *(v3 + 208) = 1;
  *(v3 + 96) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 144) = xmmword_1AFE55160;
  *(v3 + 80) = v2;
  *(v3 + 88) = &off_1F2535378;
  *(v3 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6 && v5)
  {
    v5 = (*(v6 + 8))(v5, v6);
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v5)
  {
    *(v3 + 160) = (*(v7 + 8))(v5, v7);
  }

  v8 = *(v3 + 64);
  *(v3 + 64) = sub_1AF57D54C;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  qword_1ED73B3F8 = v0;
  return result;
}

uint64_t sub_1AF49C8A8()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF57D630;
  v3[5] = KeyPath;
  v3[2] = sub_1AF57D674;
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
  *(v4 + 16) = 0x73656E6867756F72;
  *(v4 + 24) = 0xE900000000000073;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 0;
  *(v4 + 192) = 1065353216;
  *(v4 + 196) = 0;
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

  *(v4 + 64) = sub_1AF57D6D0;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2AE8 = v0;
  return result;
}

uint64_t sub_1AF49CBE8()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF57D770;
  v3[5] = KeyPath;
  v3[2] = sub_1AF57D7B4;
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
  *(v4 + 16) = 0x73656E6C6174656DLL;
  *(v4 + 24) = 0xE900000000000073;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 0;
  *(v4 + 192) = 1065353216;
  *(v4 + 196) = 0;
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

  *(v4 + 64) = sub_1AF57D810;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2AF0 = v0;
  return result;
}

uint64_t sub_1AF49CF28()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF57D8B0;
  v3[5] = KeyPath;
  v3[2] = sub_1AF57D8F4;
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
  *(v4 + 16) = 0x6E6F697373696D65;
  *(v4 + 24) = 0xE800000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 0;
  *(v4 + 192) = 1065353216;
  *(v4 + 196) = 0;
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

  *(v4 + 64) = sub_1AF57D950;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2B08 = v0;
  return result;
}

uint64_t sub_1AF49D260()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF57D9F0;
  v3[5] = KeyPath;
  v3[2] = sub_1AF57DA34;
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
  *(v4 + 16) = 0x656C676E61;
  *(v4 + 24) = 0xE500000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
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

  *(v4 + 64) = sub_1AF57DA90;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2B20 = v0;
  return result;
}

uint64_t sub_1AF49D58C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF57DB30;
  v3[5] = KeyPath;
  v3[2] = sub_1AF57DB74;
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
  strcpy((v4 + 16), "angleVelocity");
  *(v4 + 30) = -4864;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
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

  *(v4 + 64) = sub_1AF57DBD0;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2AC0 = v0;
  return result;
}

uint64_t sub_1AF49D8D8()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF57DC70;
  v3[5] = KeyPath;
  v3[2] = sub_1AF57DCB4;
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
  strcpy((v4 + 16), "textureFrame");
  *(v4 + 29) = 0;
  *(v4 + 30) = -5120;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
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

  *(v4 + 64) = sub_1AF57DD10;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1ED73B368 = v0;
  return result;
}

uint64_t sub_1AF49DC1C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E7668];
  sub_1AF5A9240(0, &qword_1ED725C68, MEMORY[0x1E69E7668], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF57DDB0;
  v3[5] = KeyPath;
  v3[2] = sub_1AF57DDF4;
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
  *(v4 + 16) = 25705;
  *(v4 + 24) = 0xE200000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
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

  *(v4 + 64) = sub_1AF57DE64;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1ED73B5C8 = v0;
  return result;
}

uint64_t sub_1AF49DF48()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF57DF4C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF57DF90;
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
  *(v4 + 16) = 1936941421;
  *(v4 + 24) = 0xE400000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
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

  *(v4 + 64) = sub_1AF57DFEC;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2AA0 = v0;
  return result;
}

uint64_t sub_1AF49E26C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF57AAE8();
  v2 = swift_allocObject();
  v2[4] = sub_1AF57E08C;
  v2[5] = KeyPath;
  v2[2] = sub_1AF57E0B4;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  *(v3 + 160) = MEMORY[0x1E69E7CC0];
  *(v3 + 216) = 0;
  sub_1AF583D60(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v5 = v4;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  strcpy((v3 + 16), "linearFactor");
  *(v3 + 29) = 0;
  *(v3 + 30) = -5120;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 1;
  *(v3 + 192) = 0;
  *(v3 + 196) = 1;
  *(v3 + 200) = 0x1000100000000;
  *(v3 + 208) = 1;
  *(v3 + 96) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 144) = xmmword_1AFE22A20;
  *(v3 + 80) = v2;
  *(v3 + 88) = &off_1F2535378;
  *(v3 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6 && v5)
  {
    v5 = (*(v6 + 8))(v5, v6);
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v5)
  {
    *(v3 + 160) = (*(v7 + 8))(v5, v7);
  }

  v8 = *(v3 + 64);
  *(v3 + 64) = sub_1AF57E118;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  qword_1EB6C2D28 = v0;
  return result;
}

uint64_t sub_1AF49E5D4()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF57AAE8();
  v2 = swift_allocObject();
  v2[4] = sub_1AF57E1FC;
  v2[5] = KeyPath;
  v2[2] = sub_1AF57E224;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  *(v3 + 160) = MEMORY[0x1E69E7CC0];
  *(v3 + 216) = 0;
  sub_1AF583D60(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v5 = v4;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  strcpy((v3 + 16), "angularFactor");
  *(v3 + 30) = -4864;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 1;
  *(v3 + 192) = 0;
  *(v3 + 196) = 1;
  *(v3 + 200) = 0x1000100000000;
  *(v3 + 208) = 1;
  *(v3 + 96) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 144) = xmmword_1AFE22A20;
  *(v3 + 80) = v2;
  *(v3 + 88) = &off_1F2535378;
  *(v3 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6 && v5)
  {
    v5 = (*(v6 + 8))(v5, v6);
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v5)
  {
    *(v3 + 160) = (*(v7 + 8))(v5, v7);
  }

  v8 = *(v3 + 64);
  *(v3 + 64) = sub_1AF57E288;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  qword_1EB6C2D30 = v0;
  return result;
}

uint64_t sub_1AF49E944()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF57E36C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF57E3B0;
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
  strcpy((v4 + 16), "normalizedAge");
  *(v4 + 30) = -4864;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
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

  *(v4 + 64) = sub_1AF57E40C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1ED73B390 = v0;
  return result;
}

uint64_t sub_1AF49EC7C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF57E4AC;
  v3[5] = KeyPath;
  v3[2] = sub_1AF57E4F0;
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
  *(v4 + 16) = 0x656D69746566696CLL;
  *(v4 + 24) = 0xE800000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 128;
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
  *(v4 + 210) = 128;
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

  *(v4 + 64) = sub_1AF57E54C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1ED73B370 = v0;
  return result;
}

uint64_t sub_1AF49EFB4()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF57AAE8();
  v2 = swift_allocObject();
  v2[4] = sub_1AF57E5EC;
  v2[5] = KeyPath;
  v2[2] = sub_1AF57E614;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  *(v3 + 160) = MEMORY[0x1E69E7CC0];
  *(v3 + 216) = 0;
  sub_1AF583D60(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v5 = v4;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x746567726174;
  *(v3 + 24) = 0xE600000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 1;
  *(v3 + 192) = 0;
  *(v3 + 196) = 1;
  *(v3 + 200) = 0x1000100000000;
  *(v3 + 208) = 1;
  *(v3 + 96) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 144) = xmmword_1AFE22A20;
  *(v3 + 80) = v2;
  *(v3 + 88) = &off_1F2535378;
  *(v3 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6 && v5)
  {
    v5 = (*(v6 + 8))(v5, v6);
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v5)
  {
    *(v3 + 160) = (*(v7 + 8))(v5, v7);
  }

  v8 = *(v3 + 64);
  *(v3 + 64) = sub_1AF57E678;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  qword_1ED73B380 = v0;
  return result;
}

uint64_t sub_1AF49F304()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF57B9C0();
  v2 = swift_allocObject();
  v2[4] = sub_1AF57E75C;
  v2[5] = KeyPath;
  v2[2] = sub_1AF57E784;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  *(v3 + 160) = MEMORY[0x1E69E7CC0];
  *(v3 + 216) = 0;
  sub_1AF583D60(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  v5 = v4;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x6174614472657375;
  *(v3 + 24) = 0xE900000000000031;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 1;
  *(v3 + 192) = 0;
  *(v3 + 196) = 1;
  *(v3 + 200) = 0x1000100000000;
  *(v3 + 208) = 1;
  *(v3 + 96) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 144) = xmmword_1AFE22A20;
  *(v3 + 80) = v2;
  *(v3 + 88) = &off_1F2535378;
  *(v3 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6 && v5)
  {
    v5 = (*(v6 + 8))(v5, v6);
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v5)
  {
    *(v3 + 160) = (*(v7 + 8))(v5, v7);
  }

  v8 = *(v3 + 64);
  *(v3 + 64) = sub_1AF57E7E8;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  qword_1ED73B398 = v0;
  return result;
}

uint64_t sub_1AF49F664()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF57B9C0();
  v2 = swift_allocObject();
  v2[4] = sub_1AF57E8CC;
  v2[5] = KeyPath;
  v2[2] = sub_1AF57E8F4;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  *(v3 + 160) = MEMORY[0x1E69E7CC0];
  *(v3 + 216) = 0;
  sub_1AF583D60(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  v5 = v4;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x6174614472657375;
  *(v3 + 24) = 0xE900000000000032;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 1;
  *(v3 + 192) = 0;
  *(v3 + 196) = 1;
  *(v3 + 200) = 0x1000100000000;
  *(v3 + 208) = 1;
  *(v3 + 96) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 144) = xmmword_1AFE22A20;
  *(v3 + 80) = v2;
  *(v3 + 88) = &off_1F2535378;
  *(v3 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6 && v5)
  {
    v5 = (*(v6 + 8))(v5, v6);
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v5)
  {
    *(v3 + 160) = (*(v7 + 8))(v5, v7);
  }

  v8 = *(v3 + 64);
  *(v3 + 64) = sub_1AF57E958;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  qword_1ED73B348 = v0;
  return result;
}

uint64_t sub_1AF49F9C4()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF57B9C0();
  v2 = swift_allocObject();
  v2[4] = sub_1AF57EA3C;
  v2[5] = KeyPath;
  v2[2] = sub_1AF57EA64;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  *(v3 + 160) = MEMORY[0x1E69E7CC0];
  *(v3 + 216) = 0;
  sub_1AF583D60(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  v5 = v4;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x6174614472657375;
  *(v3 + 24) = 0xE900000000000033;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 1;
  *(v3 + 192) = 0;
  *(v3 + 196) = 1;
  *(v3 + 200) = 0x1000100000000;
  *(v3 + 208) = 1;
  *(v3 + 96) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 144) = xmmword_1AFE22A20;
  *(v3 + 80) = v2;
  *(v3 + 88) = &off_1F2535378;
  *(v3 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6 && v5)
  {
    v5 = (*(v6 + 8))(v5, v6);
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v5)
  {
    *(v3 + 160) = (*(v7 + 8))(v5, v7);
  }

  v8 = *(v3 + 64);
  *(v3 + 64) = sub_1AF57EAC8;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  qword_1ED73B340 = v0;
  return result;
}

uint64_t sub_1AF49FD24()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF57B9C0();
  v2 = swift_allocObject();
  v2[4] = sub_1AF57EBAC;
  v2[5] = KeyPath;
  v2[2] = sub_1AF57EBD4;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  *(v3 + 160) = MEMORY[0x1E69E7CC0];
  *(v3 + 216) = 0;
  sub_1AF583D60(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  v5 = v4;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x6174614472657375;
  *(v3 + 24) = 0xE900000000000034;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 1;
  *(v3 + 192) = 0;
  *(v3 + 196) = 1;
  *(v3 + 200) = 0x1000100000000;
  *(v3 + 208) = 1;
  *(v3 + 96) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 144) = xmmword_1AFE22A20;
  *(v3 + 80) = v2;
  *(v3 + 88) = &off_1F2535378;
  *(v3 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6 && v5)
  {
    v5 = (*(v6 + 8))(v5, v6);
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v5)
  {
    *(v3 + 160) = (*(v7 + 8))(v5, v7);
  }

  v8 = *(v3 + 64);
  *(v3 + 64) = sub_1AF57EC38;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  qword_1EB6C2A98 = v0;
  return result;
}

uint64_t sub_1AF4A0084()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF57ED1C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF57ED60;
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
  strcpy((v4 + 16), "neighborCount");
  *(v4 + 30) = -4864;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
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

  *(v4 + 64) = sub_1AF57EDBC;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2B28 = v0;
  return result;
}

uint64_t sub_1AF4A03D0()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF57AAE8();
  v2 = swift_allocObject();
  v2[4] = sub_1AF57EE5C;
  v2[5] = KeyPath;
  v2[2] = sub_1AF57EE74;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  *(v3 + 160) = MEMORY[0x1E69E7CC0];
  *(v3 + 216) = 0;
  sub_1AF583D60(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v5 = v4;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x746F766970;
  *(v3 + 24) = 0xE500000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 1;
  *(v3 + 58) = 128;
  *(v3 + 184) = 0;
  *(v3 + 188) = 1;
  *(v3 + 192) = 0;
  *(v3 + 196) = 1;
  *(v3 + 200) = 0x1000100000000;
  *(v3 + 208) = 1;
  *(v3 + 96) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 144) = xmmword_1AFE22A20;
  *(v3 + 80) = v2;
  *(v3 + 88) = &off_1F2535378;
  *(v3 + 210) = 128;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6 && v5)
  {
    v5 = (*(v6 + 8))(v5, v6);
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v5)
  {
    *(v3 + 160) = (*(v7 + 8))(v5, v7);
  }

  v8 = *(v3 + 64);
  *(v3 + 64) = sub_1AF57EED8;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  qword_1EB6C2B18 = v0;
  return result;
}

uint64_t sub_1AF4A0724()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  type metadata accessor for PropertyDescription();
  v2 = swift_allocObject();
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 1;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 120) = 0;
  *(v2 + 216) = 0;
  *(v2 + 16) = 0x44496E77617073;
  *(v2 + 24) = 0xE700000000000000;
  v3 = MEMORY[0x1E69E6530];
  *(v2 + 32) = KeyPath;
  *(v2 + 40) = v3;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 58) = 0;
  *(v2 + 184) = 0;
  *(v2 + 188) = 1;
  *(v2 + 192) = 0;
  *(v2 + 196) = 1;
  *(v2 + 200) = 0x1000100000000;
  *(v2 + 208) = 1;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 210) = 0;
  *(v2 + 144) = xmmword_1AFE22A20;
  *(v2 + 168) = 0;
  *(v2 + 176) = 0;

  *(v2 + 160) = MEMORY[0x1E69E7CC0];

  *(v0 + 32) = v2;
  qword_1EB6C28F8 = v0;
  return result;
}

uint64_t sub_1AF4A0940()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55130;
  KeyPath = swift_getKeyPath();
  sub_1AF51B13C(0, &qword_1ED722B60, type metadata accessor for simd_float4x4, type metadata accessor for EntityGetSet);
  v2 = swift_allocObject();
  v2[4] = sub_1AF57F038;
  v2[5] = KeyPath;
  v2[2] = sub_1AF57F094;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  *(v3 + 160) = MEMORY[0x1E69E7CC0];
  *(v3 + 216) = 0;
  type metadata accessor for simd_float4x4(0);
  v5 = v4;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x65756C6176;
  *(v3 + 24) = 0xE500000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 8;
  *(v3 + 184) = 0;
  *(v3 + 188) = 1;
  *(v3 + 192) = 0;
  *(v3 + 196) = 1;
  *(v3 + 200) = 0x1000100000000;
  *(v3 + 208) = 1;
  *(v3 + 96) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 144) = xmmword_1AFE22A20;
  *(v3 + 80) = v2;
  *(v3 + 88) = &off_1F2535378;
  *(v3 + 210) = 8;
  v6 = swift_conformsToProtocol2();
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  swift_retain_n();
  v8 = v5;
  if (v7)
  {
    v8 = (*(v6 + 8))(v7, v6);
  }

  v9 = swift_conformsToProtocol2();
  if (v9 && v8)
  {
    *(v3 + 160) = (*(v9 + 8))(v8, v9);
  }

  v10 = *(v3 + 64);
  *(v3 + 64) = sub_1AF57F0CC;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v10);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  *(v0 + 40) = sub_1AF577370(1058, 0x78697274616DLL, 0xE600000000000000, &type metadata for ProjectionMatrix, &off_1F2511D20, 0x65756C6176, 0xE500000000000000);
  v11 = swift_getKeyPath();
  v12 = swift_allocObject();
  v12[4] = sub_1AF5AA418;
  v12[5] = v11;
  v12[2] = sub_1AF5AA43C;
  v12[3] = v11;
  v12[6] = v11;
  v13 = swift_allocObject();
  *(v13 + 112) = 1;
  *(v13 + 128) = 0;
  *(v13 + 136) = 0;
  *(v13 + 120) = 0;
  *(v13 + 160) = MEMORY[0x1E69E7CC0];
  *(v13 + 168) = 0;
  *(v13 + 216) = 0;
  *(v13 + 176) = 0;
  *(v13 + 16) = 0x65737265766E69;
  *(v13 + 24) = 0xE700000000000000;
  *(v13 + 32) = v11;
  *(v13 + 40) = v5;
  *(v13 + 48) = 0;
  *(v13 + 56) = 1;
  *(v13 + 58) = 152;
  *(v13 + 184) = 0;
  *(v13 + 188) = 1;
  *(v13 + 192) = 0;
  *(v13 + 196) = 1;
  *(v13 + 200) = 0x1000100000000;
  *(v13 + 208) = 1;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
  *(v13 + 96) = 0;
  *(v13 + 104) = 0;
  *(v13 + 144) = xmmword_1AFE22A20;
  *(v13 + 80) = v12;
  *(v13 + 88) = &off_1F2535378;
  *(v13 + 210) = 152;
  swift_retain_n();
  if (v7)
  {
    v5 = (*(v6 + 8))(v7, v6);
  }

  v14 = swift_conformsToProtocol2();
  if (v14 && v5)
  {
    *(v13 + 160) = (*(v14 + 8))(v5, v14);
  }

  v15 = *(v13 + 64);
  *(v13 + 64) = sub_1AF5A9618;
  *(v13 + 72) = v11;
  sub_1AF0FB8EC(v15);
  *(v13 + 168) = 0;
  *(v13 + 176) = 0;

  *(v13 + 216) = 0;

  *(v0 + 48) = v13;
  qword_1EB6C2930 = v0;
  return result;
}

uint64_t sub_1AF4A0EB0()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55170;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF57F194;
  v3[5] = KeyPath;
  v3[2] = sub_1AF57F1C8;
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
  *(v4 + 16) = 0x6E654C6C61636F46;
  *(v4 + 24) = 0xEB00000000687467;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 1008981770;
  *(v4 + 188) = 0;
  *(v4 + 192) = 1148846080;
  *(v4 + 196) = 0;
  *(v4 + 200) = 0x100003DCCCCCDLL;
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
    v6 = (*(v5 + 8))();
  }

  else
  {
    v6 = v2;
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v6)
  {
    *(v4 + 160) = (*(v7 + 8))(v6, v7);
  }

  v8 = *(v4 + 64);
  *(v4 + 64) = sub_1AF57F224;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(v8);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  *(v0 + 32) = v4;
  v9 = swift_getKeyPath();
  v10 = swift_allocObject();
  v10[4] = sub_1AF5A93FC;
  v10[5] = v9;
  v10[2] = sub_1AF5A9AF4;
  v10[3] = v9;
  v10[6] = v9;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 168) = 0;
  *(v11 + 160) = MEMORY[0x1E69E7CC0];
  *(v11 + 210) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  strcpy((v11 + 16), "FocusDistance");
  *(v11 + 30) = -4864;
  *(v11 + 32) = v9;
  *(v11 + 40) = v2;
  *(v11 + 48) = 8;
  *(v11 + 56) = 0;
  *(v11 + 58) = 0;
  *(v11 + 184) = 1008981770;
  *(v11 + 188) = 0;
  *(v11 + 192) = 0;
  *(v11 + 196) = 1;
  *(v11 + 200) = 1036831949;
  *(v11 + 204) = 0x10000;
  *(v11 + 208) = 1;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 144) = xmmword_1AFE22A20;
  *(v11 + 80) = v10;
  *(v11 + 88) = &off_1F2535378;
  *(v11 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v12 = (*(v5 + 8))();
  }

  else
  {
    v12 = v2;
  }

  v13 = swift_conformsToProtocol2();
  if (v13 && v12)
  {
    *(v11 + 160) = (*(v13 + 8))(v12, v13);
  }

  v14 = *(v11 + 64);
  *(v11 + 64) = sub_1AF5A961C;
  *(v11 + 72) = v9;
  sub_1AF0FB8EC(v14);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;

  *(v0 + 40) = v11;
  v15 = swift_getKeyPath();
  v16 = swift_allocObject();
  v16[4] = sub_1AF5A93FC;
  v16[5] = v15;
  v16[2] = sub_1AF5A9AF4;
  v16[3] = v15;
  v16[6] = v15;
  v17 = swift_allocObject();
  *(v17 + 112) = 1;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 120) = 0;
  *(v17 + 160) = MEMORY[0x1E69E7CC0];
  *(v17 + 168) = 0;
  *(v17 + 216) = 0;
  *(v17 + 176) = 0;
  *(v17 + 16) = 0x6953726F736E6553;
  *(v17 + 24) = 0xEA0000000000657ALL;
  *(v17 + 32) = v15;
  *(v17 + 40) = v2;
  *(v17 + 48) = 0;
  *(v17 + 56) = 1;
  *(v17 + 58) = 0;
  *(v17 + 184) = 1008981770;
  *(v17 + 188) = 0;
  *(v17 + 192) = 1148846080;
  *(v17 + 196) = 0;
  *(v17 + 200) = 1008981770;
  *(v17 + 204) = 0x10000;
  *(v17 + 208) = 1;
  *(v17 + 64) = 0;
  *(v17 + 72) = 0;
  *(v17 + 96) = 0;
  *(v17 + 104) = 0;
  *(v17 + 144) = xmmword_1AFE22A20;
  *(v17 + 80) = v16;
  *(v17 + 88) = &off_1F2535378;
  *(v17 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v18 = (*(v5 + 8))();
  }

  else
  {
    v18 = v2;
  }

  v19 = swift_conformsToProtocol2();
  if (v19 && v18)
  {
    *(v17 + 160) = (*(v19 + 8))(v18, v19);
  }

  *(v17 + 64) = sub_1AF5A961C;
  *(v17 + 72) = v15;
  sub_1AF0FB8EC(0);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;
  *(v0 + 48) = v17;
  v20 = swift_getKeyPath();
  v21 = swift_allocObject();
  v21[4] = sub_1AF5A93FC;
  v21[5] = v20;
  v21[2] = sub_1AF5A9AF4;
  v21[3] = v20;
  v21[6] = v20;
  v22 = swift_allocObject();
  *(v22 + 112) = 1;
  *(v22 + 128) = 0;
  *(v22 + 136) = 0;
  *(v22 + 120) = 0;
  *(v22 + 168) = 0;
  *(v22 + 160) = MEMORY[0x1E69E7CC0];
  *(v22 + 216) = 0;
  *(v22 + 176) = 0;
  *(v22 + 16) = 0x706F745346;
  *(v22 + 24) = 0xE500000000000000;
  *(v22 + 32) = v20;
  *(v22 + 40) = v2;
  *(v22 + 48) = 16;
  *(v22 + 56) = 0;
  *(v22 + 58) = 0;
  *(v22 + 184) = 0;
  *(v22 + 188) = 0;
  *(v22 + 192) = 1120403456;
  *(v22 + 196) = 0;
  *(v22 + 200) = 1008981770;
  *(v22 + 204) = 0x10000;
  *(v22 + 208) = 1;
  *(v22 + 64) = 0;
  *(v22 + 72) = 0;
  *(v22 + 96) = 0;
  *(v22 + 104) = 0;
  *(v22 + 144) = xmmword_1AFE22A20;
  *(v22 + 80) = v21;
  *(v22 + 88) = &off_1F2535378;
  *(v22 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v23 = (*(v5 + 8))();
  }

  else
  {
    v23 = v2;
  }

  v24 = swift_conformsToProtocol2();
  if (v24 && v23)
  {
    *(v22 + 160) = (*(v24 + 8))(v23, v24);
  }

  *(v22 + 64) = sub_1AF5A961C;
  *(v22 + 72) = v20;
  sub_1AF0FB8EC(0);
  *(v22 + 168) = 0;
  *(v22 + 176) = 0;

  *(v22 + 216) = 0;
  *(v0 + 56) = v22;
  v25 = swift_getKeyPath();
  v26 = swift_allocObject();
  v26[4] = sub_1AF5A93FC;
  v26[5] = v25;
  v26[2] = sub_1AF5A9AF4;
  v26[3] = v25;
  v26[6] = v25;
  v27 = swift_allocObject();
  *(v27 + 112) = 1;
  *(v27 + 128) = 0;
  *(v27 + 136) = 0;
  *(v27 + 120) = 0;
  *(v27 + 168) = 0;
  *(v27 + 160) = MEMORY[0x1E69E7CC0];
  *(v27 + 216) = 0;
  *(v27 + 176) = 0;
  *(v27 + 16) = 0x657275736F707845;
  *(v27 + 24) = 0xE800000000000000;
  *(v27 + 32) = v25;
  *(v27 + 40) = v2;
  *(v27 + 48) = 20;
  *(v27 + 56) = 0;
  *(v27 + 58) = 0;
  *(v27 + 184) = 0;
  *(v27 + 188) = 0;
  *(v27 + 192) = 1120403456;
  *(v27 + 196) = 0;
  *(v27 + 200) = 1008981770;
  *(v27 + 204) = 0x10000;
  *(v27 + 208) = 1;
  *(v27 + 64) = 0;
  *(v27 + 72) = 0;
  *(v27 + 96) = 0;
  *(v27 + 104) = 0;
  *(v27 + 144) = xmmword_1AFE22A20;
  *(v27 + 80) = v26;
  *(v27 + 88) = &off_1F2535378;
  *(v27 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v28 = (*(v5 + 8))();
  }

  else
  {
    v28 = v2;
  }

  v29 = swift_conformsToProtocol2();
  if (v29 && v28)
  {
    *(v27 + 160) = (*(v29 + 8))(v28, v29);
  }

  *(v27 + 64) = sub_1AF5A961C;
  *(v27 + 72) = v25;
  sub_1AF0FB8EC(0);
  *(v27 + 168) = 0;
  *(v27 + 176) = 0;

  *(v27 + 216) = 0;
  *(v0 + 64) = v27;
  v30 = swift_getKeyPath();
  v31 = swift_allocObject();
  v31[4] = sub_1AF5A93FC;
  v31[5] = v30;
  v31[2] = sub_1AF5A9AF4;
  v31[3] = v30;
  v31[6] = v30;
  v32 = swift_allocObject();
  *(v32 + 112) = 1;
  *(v32 + 128) = 0;
  *(v32 + 136) = 0;
  *(v32 + 120) = 0;
  *(v32 + 160) = MEMORY[0x1E69E7CC0];
  *(v32 + 168) = 0;
  *(v32 + 216) = 0;
  *(v32 + 176) = 0;
  *(v32 + 16) = 0x6572757472657041;
  *(v32 + 24) = 0xE800000000000000;
  *(v32 + 32) = v30;
  *(v32 + 40) = v2;
  *(v32 + 48) = 0;
  *(v32 + 56) = 1;
  *(v32 + 58) = 0;
  *(v32 + 184) = 0;
  *(v32 + 188) = 0;
  *(v32 + 192) = 1120403456;
  *(v32 + 196) = 0;
  *(v32 + 200) = 1008981770;
  *(v32 + 204) = 0x10000;
  *(v32 + 208) = 1;
  *(v32 + 64) = 0;
  *(v32 + 72) = 0;
  *(v32 + 96) = 0;
  *(v32 + 104) = 0;
  *(v32 + 144) = xmmword_1AFE22A20;
  *(v32 + 80) = v31;
  *(v32 + 88) = &off_1F2535378;
  *(v32 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v2 = (*(v5 + 8))();
  }

  v33 = swift_conformsToProtocol2();
  if (v33 && v2)
  {
    *(v32 + 160) = (*(v33 + 8))(v2, v33);
  }

  *(v32 + 64) = sub_1AF5A961C;
  *(v32 + 72) = v30;
  sub_1AF0FB8EC(0);
  *(v32 + 168) = 0;
  *(v32 + 176) = 0;

  *(v32 + 216) = 0;
  *(v0 + 72) = v32;
  v34 = swift_getKeyPath();
  sub_1AF57F2F4();
  v35 = swift_allocObject();
  v35[4] = sub_1AF57F264;
  v35[5] = v34;
  v35[2] = sub_1AF57F298;
  v35[3] = v34;
  v35[6] = v34;
  v36 = swift_allocObject();
  *(v36 + 104) = 0;
  *(v36 + 112) = 1;
  *(v36 + 128) = 0;
  *(v36 + 136) = 0;
  *(v36 + 120) = 0;
  *(v36 + 160) = MEMORY[0x1E69E7CC0];
  *(v36 + 216) = 0;
  sub_1AF589E74(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  v38 = v37;
  *(v36 + 168) = 0;
  *(v36 + 176) = 0;
  *(v36 + 16) = 0x65676E61525ALL;
  *(v36 + 24) = 0xE600000000000000;
  *(v36 + 32) = v34;
  *(v36 + 40) = v37;
  *(v36 + 48) = 24;
  *(v36 + 56) = 0;
  *(v36 + 58) = 0;
  *(v36 + 184) = 981668463;
  *(v36 + 188) = 0;
  *(v36 + 192) = 0;
  *(v36 + 196) = 1;
  *(v36 + 200) = 1008981770;
  *(v36 + 204) = 50397184;
  *(v36 + 208) = 0;
  *(v36 + 64) = 0;
  *(v36 + 72) = 0;
  *(v36 + 96) = 0;
  *(v36 + 144) = xmmword_1AFE22A20;
  *(v36 + 80) = v35;
  *(v36 + 88) = &off_1F2535378;
  *(v36 + 210) = 0;
  v39 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v39 && v38)
  {
    v38 = (*(v39 + 8))(v38, v39);
  }

  v40 = swift_conformsToProtocol2();
  if (v40 && v38)
  {
    *(v36 + 160) = (*(v40 + 8))(v38, v40);
  }

  v41 = *(v36 + 64);
  *(v36 + 64) = sub_1AF57F378;
  *(v36 + 72) = v34;
  sub_1AF0FB8EC(v41);
  *(v36 + 168) = 0;
  *(v36 + 176) = 0;

  *(v36 + 216) = 0;

  *(v0 + 80) = v36;
  v42 = swift_getKeyPath();
  v43 = swift_getKeyPath();
  v44 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v45 = swift_allocObject();
  v45[4] = sub_1AF57F264;
  v45[5] = v43;
  v45[2] = sub_1AF57F3BC;
  v45[3] = v43;
  v45[6] = v43;
  v46 = swift_allocObject();
  *(v46 + 112) = 1;
  *(v46 + 128) = 0;
  *(v46 + 136) = 0;
  *(v46 + 120) = 0;
  *(v46 + 160) = MEMORY[0x1E69E7CC0];
  *(v46 + 168) = 0;
  *(v46 + 216) = 0;
  *(v46 + 176) = 0;
  *(v46 + 16) = 0xD000000000000018;
  *(v46 + 24) = 0x80000001AFF2A1B0;
  *(v46 + 32) = v43;
  *(v46 + 40) = v44;
  *(v46 + 48) = 0;
  *(v46 + 56) = 1;
  *(v46 + 58) = 0;
  *(v46 + 184) = 0;
  *(v46 + 188) = 1;
  *(v46 + 192) = 0;
  *(v46 + 196) = 1;
  *(v46 + 200) = 0x1000100000000;
  *(v46 + 208) = 1;
  *(v46 + 64) = 0;
  *(v46 + 72) = 0;
  *(v46 + 96) = 0;
  *(v46 + 104) = 0;
  *(v46 + 144) = xmmword_1AFE22A20;
  *(v46 + 80) = v45;
  *(v46 + 88) = &off_1F2535378;
  *(v46 + 210) = 0;
  v47 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v47)
  {
    v44 = (*(v47 + 8))();
  }

  v48 = swift_conformsToProtocol2();
  if (v48 && v44)
  {
    *(v46 + 160) = (*(v48 + 8))(v44, v48);
  }

  *(v46 + 64) = sub_1AF57F418;
  *(v46 + 72) = v43;
  sub_1AF0FB8EC(0);
  *(v46 + 168) = 0;
  *(v46 + 176) = 0;

  *(v46 + 216) = 0;
  v49 = &type metadata for ProjectionDirection;
  sub_1AF5A9240(0, &qword_1EB632F90, &type metadata for ProjectionDirection, type metadata accessor for EntityGetSet);
  v50 = swift_allocObject();
  v50[4] = sub_1AF57F458;
  v50[5] = v42;
  v50[2] = sub_1AF57F484;
  v50[3] = v42;
  v50[6] = v42;
  v51 = swift_allocObject();
  *(v51 + 112) = 1;
  *(v51 + 128) = 0;
  *(v51 + 136) = 0;
  *(v51 + 120) = 0;
  *(v51 + 160) = MEMORY[0x1E69E7CC0];
  *(v51 + 168) = 0;
  *(v51 + 216) = 0;
  *(v51 + 176) = 0;
  *(v51 + 16) = 0xD000000000000013;
  *(v51 + 24) = 0x80000001AFF23760;
  *(v51 + 32) = v42;
  *(v51 + 40) = &type metadata for ProjectionDirection;
  *(v51 + 48) = 33;
  *(v51 + 56) = 0;
  *(v51 + 58) = 0;
  *(v51 + 184) = 0;
  *(v51 + 188) = 1;
  *(v51 + 192) = 0;
  *(v51 + 196) = 1;
  *(v51 + 200) = 0x1000100000000;
  *(v51 + 208) = 1;
  *(v51 + 64) = 0;
  *(v51 + 72) = 0;
  *(v51 + 96) = 0;
  *(v51 + 104) = 0;
  *(v51 + 144) = xmmword_1AFE22A20;
  *(v51 + 80) = v50;
  *(v51 + 88) = &off_1F2535378;
  *(v51 + 210) = 0;
  v52 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v52)
  {
    v49 = (*(v52 + 8))();
  }

  v53 = swift_conformsToProtocol2();
  if (v53 && v49)
  {
    *(v51 + 160) = (*(v53 + 8))(v49, v53);
  }

  *(v51 + 64) = sub_1AF57F4E0;
  *(v51 + 72) = v42;
  sub_1AF0FB8EC(0);
  *(v51 + 168) = 0;
  *(v51 + 176) = 0;

  *(v51 + 216) = v46;
  *(v0 + 88) = v51;
  v54 = swift_getKeyPath();
  sub_1AF57C8C8();
  v55 = swift_allocObject();
  v55[4] = sub_1AF57F264;
  v55[5] = v54;
  v55[2] = sub_1AF57F520;
  v55[3] = v54;
  v55[6] = v54;
  v56 = swift_allocObject();
  *(v56 + 104) = 0;
  *(v56 + 112) = 1;
  *(v56 + 128) = 0;
  *(v56 + 136) = 0;
  *(v56 + 120) = 0;
  *(v56 + 160) = MEMORY[0x1E69E7CC0];
  *(v56 + 216) = 0;
  sub_1AF583D60(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  v58 = v57;
  *(v56 + 168) = 0;
  *(v56 + 176) = 0;
  *(v56 + 16) = 0x7366664F6D6C6966;
  *(v56 + 24) = 0xEA00000000007465;
  *(v56 + 32) = v54;
  *(v56 + 40) = v57;
  *(v56 + 48) = 40;
  *(v56 + 56) = 0;
  *(v56 + 58) = 0;
  *(v56 + 184) = 0;
  *(v56 + 188) = 1;
  *(v56 + 192) = 0;
  *(v56 + 196) = 1;
  *(v56 + 200) = 0x1000100000000;
  *(v56 + 208) = 1;
  *(v56 + 64) = 0;
  *(v56 + 72) = 0;
  *(v56 + 96) = 0;
  *(v56 + 144) = xmmword_1AFE22A20;
  *(v56 + 80) = v55;
  *(v56 + 88) = &off_1F2535378;
  *(v56 + 210) = 0;
  v59 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v59 && v58)
  {
    v58 = (*(v59 + 8))(v58, v59);
  }

  v60 = swift_conformsToProtocol2();
  if (v60 && v58)
  {
    *(v56 + 160) = (*(v60 + 8))(v58, v60);
  }

  v61 = *(v56 + 64);
  *(v56 + 64) = sub_1AF57F57C;
  *(v56 + 72) = v54;
  sub_1AF0FB8EC(v61);
  *(v56 + 168) = 0;
  *(v56 + 176) = 0;

  *(v56 + 216) = 0;

  *(v0 + 96) = v56;
  qword_1EB6C2918 = v0;
  return result;
}

uint64_t sub_1AF4A2308()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55130;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF57F964;
  v4[5] = v2;
  v4[2] = sub_1AF57F998;
  v4[3] = v2;
  v4[6] = v2;
  type metadata accessor for PropertyDescription();
  v5 = swift_allocObject();
  *(v5 + 112) = 1;
  *(v5 + 136) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(v5 + 120) = 0;
  *(v5 + 128) = 0;
  *(v5 + 160) = v6;
  *(v5 + 168) = 0;
  *(v5 + 216) = 0;
  *(v5 + 176) = 0;
  *(v5 + 16) = 0xD000000000000018;
  *(v5 + 24) = 0x80000001AFF2A1B0;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0;
  *(v5 + 56) = 1;
  *(v5 + 58) = 0;
  *(v5 + 184) = 0;
  *(v5 + 188) = 1;
  *(v5 + 192) = 0;
  *(v5 + 196) = 1;
  *(v5 + 200) = 0x1000100000000;
  *(v5 + 208) = 1;
  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 144) = xmmword_1AFE22A20;
  *(v5 + 80) = v4;
  *(v5 + 88) = &off_1F2535378;
  *(v5 + 210) = 0;
  v7 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v7)
  {
    v3 = (*(v7 + 8))();
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v3)
  {
    *(v5 + 160) = (*(v8 + 8))(v3, v8);
  }

  *(v5 + 64) = sub_1AF57F9F4;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  v9 = &type metadata for ProjectionDirection;
  sub_1AF5A9240(0, &qword_1EB632F90, &type metadata for ProjectionDirection, type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF57FA34;
  v10[5] = KeyPath;
  v10[2] = sub_1AF57FA60;
  v10[3] = KeyPath;
  v10[6] = KeyPath;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = MEMORY[0x1E69E7CC0];
  *(v11 + 168) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  *(v11 + 16) = 0xD000000000000013;
  *(v11 + 24) = 0x80000001AFF23760;
  *(v11 + 32) = KeyPath;
  *(v11 + 40) = &type metadata for ProjectionDirection;
  *(v11 + 48) = 4;
  *(v11 + 56) = 0;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0;
  *(v11 + 188) = 1;
  *(v11 + 192) = 0;
  *(v11 + 196) = 1;
  *(v11 + 200) = 0x1000100000000;
  *(v11 + 208) = 1;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 144) = xmmword_1AFE22A20;
  *(v11 + 80) = v10;
  *(v11 + 88) = &off_1F2535378;
  *(v11 + 210) = 0;
  v12 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v12)
  {
    v9 = (*(v12 + 8))();
  }

  v13 = swift_conformsToProtocol2();
  if (v13 && v9)
  {
    *(v11 + 160) = (*(v13 + 8))(v9, v13);
  }

  *(v11 + 64) = sub_1AF57FABC;
  *(v11 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = v5;
  *(v0 + 32) = v11;
  v14 = swift_getKeyPath();
  v15 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v16 = swift_allocObject();
  v16[4] = sub_1AF57FAFC;
  v16[5] = v14;
  v16[2] = sub_1AF57FB30;
  v16[3] = v14;
  v16[6] = v14;
  v17 = swift_allocObject();
  *(v17 + 112) = 1;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 120) = 0;
  *(v17 + 160) = MEMORY[0x1E69E7CC0];
  *(v17 + 168) = 0;
  *(v17 + 216) = 0;
  *(v17 + 176) = 0;
  *(v17 + 16) = 0x656C616373;
  *(v17 + 24) = 0xE500000000000000;
  *(v17 + 32) = v14;
  *(v17 + 40) = v15;
  *(v17 + 48) = 0;
  *(v17 + 56) = 0;
  *(v17 + 58) = 0;
  *(v17 + 184) = 0;
  *(v17 + 188) = 1;
  *(v17 + 192) = 0;
  *(v17 + 196) = 1;
  *(v17 + 200) = 0x1000100000000;
  *(v17 + 208) = 1;
  *(v17 + 64) = 0;
  *(v17 + 72) = 0;
  *(v17 + 96) = 0;
  *(v17 + 104) = 0;
  *(v17 + 144) = xmmword_1AFE22A20;
  *(v17 + 80) = v16;
  *(v17 + 88) = &off_1F2535378;
  *(v17 + 210) = 0;
  v18 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v18)
  {
    v15 = (*(v18 + 8))();
  }

  v19 = swift_conformsToProtocol2();
  if (v19 && v15)
  {
    *(v17 + 160) = (*(v19 + 8))(v15, v19);
  }

  *(v17 + 64) = sub_1AF57FB8C;
  *(v17 + 72) = v14;
  sub_1AF0FB8EC(0);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;
  *(v0 + 40) = v17;
  v20 = swift_getKeyPath();
  sub_1AF57F2F4();
  v21 = swift_allocObject();
  v21[4] = sub_1AF57F964;
  v21[5] = v20;
  v21[2] = sub_1AF57FBCC;
  v21[3] = v20;
  v21[6] = v20;
  v22 = swift_allocObject();
  *(v22 + 104) = 0;
  *(v22 + 112) = 1;
  *(v22 + 128) = 0;
  *(v22 + 136) = 0;
  *(v22 + 120) = 0;
  *(v22 + 160) = MEMORY[0x1E69E7CC0];
  *(v22 + 216) = 0;
  sub_1AF589E74(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  v24 = v23;
  *(v22 + 168) = 0;
  *(v22 + 176) = 0;
  *(v22 + 16) = 0x65676E61527ALL;
  *(v22 + 24) = 0xE600000000000000;
  *(v22 + 32) = v20;
  *(v22 + 40) = v23;
  *(v22 + 48) = 8;
  *(v22 + 56) = 0;
  *(v22 + 58) = 0;
  *(v22 + 184) = 0;
  *(v22 + 188) = 1;
  *(v22 + 192) = 0;
  *(v22 + 196) = 1;
  *(v22 + 200) = 0x1000100000000;
  *(v22 + 208) = 1;
  *(v22 + 64) = 0;
  *(v22 + 72) = 0;
  *(v22 + 96) = 0;
  *(v22 + 144) = xmmword_1AFE22A20;
  *(v22 + 80) = v21;
  *(v22 + 88) = &off_1F2535378;
  *(v22 + 210) = 0;
  v25 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v25 && v24)
  {
    v24 = (*(v25 + 8))(v24, v25);
  }

  v26 = swift_conformsToProtocol2();
  if (v26 && v24)
  {
    *(v22 + 160) = (*(v26 + 8))(v24, v26);
  }

  v27 = *(v22 + 64);
  *(v22 + 64) = sub_1AF57FC28;
  *(v22 + 72) = v20;
  sub_1AF0FB8EC(v27);
  *(v22 + 168) = 0;
  *(v22 + 176) = 0;

  *(v22 + 216) = 0;

  *(v0 + 48) = v22;
  qword_1EB6C2D38 = v0;
  return result;
}

uint64_t sub_1AF4A2C40()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF57FE20;
  v3[5] = KeyPath;
  v3[2] = sub_1AF57FE64;
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
  *(v4 + 16) = 0x696F507375636F66;
  *(v4 + 24) = 0xEA0000000000746ELL;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x100003C23D70ALL;
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
    v6 = (*(v5 + 8))();
  }

  else
  {
    v6 = v2;
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v6)
  {
    *(v4 + 160) = (*(v7 + 8))(v6, v7);
  }

  *(v4 + 64) = sub_1AF57FEC0;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5A9404;
  v9[5] = v8;
  v9[2] = sub_1AF5A9B08;
  v9[3] = v8;
  v9[6] = v8;
  v10 = swift_allocObject();
  *(v10 + 112) = 1;
  *(v10 + 128) = 0;
  *(v10 + 136) = 0;
  *(v10 + 120) = 0;
  *(v10 + 160) = MEMORY[0x1E69E7CC0];
  *(v10 + 168) = 0;
  *(v10 + 216) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 0x6163537375636F66;
  *(v10 + 24) = 0xEA0000000000656CLL;
  *(v10 + 32) = v8;
  *(v10 + 40) = v2;
  *(v10 + 48) = 4;
  *(v10 + 56) = 0;
  *(v10 + 58) = 0;
  *(v10 + 184) = 0;
  *(v10 + 188) = 0;
  *(v10 + 192) = 1120403456;
  *(v10 + 196) = 0;
  *(v10 + 200) = 1008981770;
  *(v10 + 204) = 0x10000;
  *(v10 + 208) = 1;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;
  *(v10 + 96) = 0;
  *(v10 + 104) = 0;
  *(v10 + 144) = xmmword_1AFE22A20;
  *(v10 + 80) = v9;
  *(v10 + 88) = &off_1F2535378;
  *(v10 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v2 = (*(v5 + 8))();
  }

  v11 = swift_conformsToProtocol2();
  if (v11 && v2)
  {
    *(v10 + 160) = (*(v11 + 8))(v2, v11);
  }

  *(v10 + 64) = sub_1AF5A9620;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  qword_1EB6C2D40 = v0;
  return result;
}

uint64_t sub_1AF4A3178()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55180;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF57FF60;
  v3[5] = KeyPath;
  v3[2] = sub_1AF57FF94;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 168) = 0;
  *(v4 + 216) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x7469736E65746E69;
  *(v4 + 24) = 0xE900000000000079;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 0;
  *(v4 + 192) = 1120403456;
  *(v4 + 196) = 0;
  *(v4 + 200) = 0x100003C23D70ALL;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6)
  {
    v7 = (*(v6 + 8))();
  }

  else
  {
    v7 = v2;
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v7)
  {
    *(v4 + 160) = (*(v8 + 8))(v7, v8);
  }

  *(v4 + 64) = sub_1AF57FFF0;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v9 = swift_getKeyPath();
  v10 = MEMORY[0x1E69E6530];
  sub_1AF5A9240(0, &qword_1ED722B68, MEMORY[0x1E69E6530], type metadata accessor for EntityGetSet);
  v11 = swift_allocObject();
  v11[4] = sub_1AF580030;
  v11[5] = v9;
  v11[2] = sub_1AF580064;
  v11[3] = v9;
  v11[6] = v9;
  v12 = swift_allocObject();
  *(v12 + 112) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 0;
  *(v12 + 120) = 0;
  *(v12 + 160) = v5;
  *(v12 + 168) = 0;
  *(v12 + 216) = 0;
  *(v12 + 176) = 0;
  strcpy((v12 + 16), "maxIteration");
  *(v12 + 29) = 0;
  *(v12 + 30) = -5120;
  *(v12 + 32) = v9;
  *(v12 + 40) = v10;
  *(v12 + 48) = 8;
  *(v12 + 56) = 0;
  *(v12 + 58) = 0;
  *(v12 + 184) = 0;
  *(v12 + 188) = 0;
  *(v12 + 192) = 1120403456;
  *(v12 + 196) = 0;
  *(v12 + 200) = 0x100003F800000;
  *(v12 + 208) = 1;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  *(v12 + 96) = 0;
  *(v12 + 104) = 0;
  *(v12 + 144) = xmmword_1AFE22A20;
  *(v12 + 80) = v11;
  *(v12 + 88) = &off_1F2535378;
  *(v12 + 210) = 0;
  v13 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v13)
  {
    v10 = (*(v13 + 8))();
  }

  v14 = swift_conformsToProtocol2();
  if (v14 && v10)
  {
    *(v12 + 160) = (*(v14 + 8))(v10, v14);
  }

  *(v12 + 64) = sub_1AF5800C0;
  *(v12 + 72) = v9;
  sub_1AF0FB8EC(0);
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;

  *(v12 + 216) = 0;
  *(v0 + 40) = v12;
  v15 = swift_getKeyPath();
  v16 = swift_allocObject();
  v16[4] = sub_1AF5A9408;
  v16[5] = v15;
  v16[2] = sub_1AF5A9B0C;
  v16[3] = v15;
  v16[6] = v15;
  v17 = swift_allocObject();
  *(v17 + 112) = 1;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 120) = 0;
  *(v17 + 160) = v5;
  *(v17 + 168) = 0;
  *(v17 + 216) = 0;
  *(v17 + 176) = 0;
  *(v17 + 16) = 0x6C6F687365726874;
  *(v17 + 24) = 0xE900000000000064;
  *(v17 + 32) = v15;
  *(v17 + 40) = v2;
  *(v17 + 48) = 16;
  *(v17 + 56) = 0;
  *(v17 + 58) = 0;
  *(v17 + 184) = 0;
  *(v17 + 188) = 0;
  *(v17 + 192) = 1120403456;
  *(v17 + 196) = 0;
  *(v17 + 200) = 1008981770;
  *(v17 + 204) = 0x10000;
  *(v17 + 208) = 1;
  *(v17 + 64) = 0;
  *(v17 + 72) = 0;
  *(v17 + 96) = 0;
  *(v17 + 104) = 0;
  *(v17 + 144) = xmmword_1AFE22A20;
  *(v17 + 80) = v16;
  *(v17 + 88) = &off_1F2535378;
  *(v17 + 210) = 0;
  swift_retain_n();
  if (v6)
  {
    v18 = (*(v6 + 8))();
  }

  else
  {
    v18 = v2;
  }

  v19 = swift_conformsToProtocol2();
  if (v19 && v18)
  {
    *(v17 + 160) = (*(v19 + 8))(v18, v19);
  }

  *(v17 + 64) = sub_1AF5A9624;
  *(v17 + 72) = v15;
  sub_1AF0FB8EC(0);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;
  *(v0 + 48) = v17;
  v20 = swift_getKeyPath();
  v21 = swift_allocObject();
  v21[4] = sub_1AF5A9408;
  v21[5] = v20;
  v21[2] = sub_1AF5A9B0C;
  v21[3] = v20;
  v21[6] = v20;
  v22 = swift_allocObject();
  *(v22 + 112) = 1;
  *(v22 + 128) = 0;
  *(v22 + 136) = 0;
  *(v22 + 120) = 0;
  *(v22 + 160) = MEMORY[0x1E69E7CC0];
  *(v22 + 168) = 0;
  *(v22 + 216) = 0;
  *(v22 + 176) = 0;
  *(v22 + 16) = 0xD000000000000013;
  *(v22 + 24) = 0x80000001AFF22B30;
  *(v22 + 32) = v20;
  *(v22 + 40) = v2;
  *(v22 + 48) = 20;
  *(v22 + 56) = 0;
  *(v22 + 58) = 0;
  *(v22 + 184) = 0;
  *(v22 + 188) = 0;
  *(v22 + 192) = 1092616192;
  *(v22 + 196) = 0;
  *(v22 + 200) = 1008981770;
  *(v22 + 204) = 0x10000;
  *(v22 + 208) = 1;
  *(v22 + 64) = 0;
  *(v22 + 72) = 0;
  *(v22 + 96) = 0;
  *(v22 + 104) = 0;
  *(v22 + 144) = xmmword_1AFE22A20;
  *(v22 + 80) = v21;
  *(v22 + 88) = &off_1F2535378;
  *(v22 + 210) = 0;
  swift_retain_n();
  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v23 = swift_conformsToProtocol2();
  if (v23 && v2)
  {
    *(v22 + 160) = (*(v23 + 8))(v2, v23);
  }

  *(v22 + 64) = sub_1AF5A9624;
  *(v22 + 72) = v20;
  sub_1AF0FB8EC(0);
  *(v22 + 168) = 0;
  *(v22 + 176) = 0;

  *(v22 + 216) = 0;
  *(v0 + 56) = v22;
  v24 = swift_getKeyPath();
  sub_1AF57B9C0();
  v25 = swift_allocObject();
  v25[4] = sub_1AF580100;
  v25[5] = v24;
  v25[2] = sub_1AF580118;
  v25[3] = v24;
  v25[6] = v24;
  v26 = swift_allocObject();
  *(v26 + 104) = 0;
  *(v26 + 112) = 1;
  *(v26 + 128) = 0;
  *(v26 + 136) = 0;
  *(v26 + 120) = 0;
  *(v26 + 160) = MEMORY[0x1E69E7CC0];
  *(v26 + 216) = 0;
  v27 = MEMORY[0x1E69E6448];
  sub_1AF583D60(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  v29 = v28;
  *(v26 + 168) = 0;
  *(v26 + 176) = 0;
  *(v26 + 16) = 0x6C6946726F6C6F63;
  *(v26 + 24) = 0xEB00000000726574;
  *(v26 + 32) = v24;
  *(v26 + 40) = v28;
  *(v26 + 48) = 32;
  *(v26 + 56) = 0;
  *(v26 + 58) = 0;
  *(v26 + 184) = 0;
  *(v26 + 188) = 1;
  *(v26 + 192) = 0;
  *(v26 + 196) = 1;
  *(v26 + 200) = 0x1000100000000;
  *(v26 + 208) = 1;
  *(v26 + 64) = 0;
  *(v26 + 72) = 0;
  *(v26 + 96) = 0;
  *(v26 + 144) = xmmword_1AFE55160;
  *(v26 + 80) = v25;
  *(v26 + 88) = &off_1F2535378;
  *(v26 + 210) = 0;
  v30 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v30 && v29)
  {
    v29 = (*(v30 + 8))(v29, v30);
  }

  v31 = swift_conformsToProtocol2();
  v32 = MEMORY[0x1E69E7CC0];
  if (v31 && v29)
  {
    *(v26 + 160) = (*(v31 + 8))(v29, v31);
  }

  v33 = *(v26 + 64);
  *(v26 + 64) = sub_1AF58017C;
  *(v26 + 72) = v24;
  sub_1AF0FB8EC(v33);
  *(v26 + 168) = 0;
  *(v26 + 176) = 0;

  *(v26 + 216) = 0;

  *(v0 + 64) = v26;
  v34 = swift_getKeyPath();
  v35 = swift_allocObject();
  v35[4] = sub_1AF5A9408;
  v35[5] = v34;
  v35[2] = sub_1AF5A9B0C;
  v35[3] = v34;
  v35[6] = v34;
  v36 = swift_allocObject();
  *(v36 + 112) = 1;
  *(v36 + 128) = 0;
  *(v36 + 136) = 0;
  *(v36 + 120) = 0;
  *(v36 + 168) = 0;
  *(v36 + 160) = v32;
  *(v36 + 216) = 0;
  *(v36 + 176) = 0;
  *(v36 + 16) = 0x74736172746E6F63;
  *(v36 + 24) = 0xE800000000000000;
  *(v36 + 32) = v34;
  *(v36 + 40) = v27;
  *(v36 + 48) = 48;
  *(v36 + 56) = 0;
  *(v36 + 58) = 0;
  *(v36 + 184) = 0;
  *(v36 + 188) = 0;
  *(v36 + 192) = 0x40000000;
  *(v36 + 196) = 0;
  *(v36 + 200) = 1008981770;
  *(v36 + 204) = 0x10000;
  *(v36 + 208) = 1;
  *(v36 + 64) = 0;
  *(v36 + 72) = 0;
  *(v36 + 96) = 0;
  *(v36 + 104) = 0;
  *(v36 + 144) = xmmword_1AFE22A20;
  *(v36 + 80) = v35;
  *(v36 + 88) = &off_1F2535378;
  *(v36 + 210) = 0;
  swift_retain_n();
  if (v6)
  {
    v37 = (*(v6 + 8))();
  }

  else
  {
    v37 = v27;
  }

  v38 = swift_conformsToProtocol2();
  if (v38 && v37)
  {
    *(v36 + 160) = (*(v38 + 8))(v37, v38);
  }

  *(v36 + 64) = sub_1AF5A9624;
  *(v36 + 72) = v34;
  sub_1AF0FB8EC(0);
  *(v36 + 168) = 0;
  *(v36 + 176) = 0;

  *(v36 + 216) = 0;
  *(v0 + 72) = v36;
  v39 = swift_getKeyPath();
  v40 = swift_allocObject();
  v40[4] = sub_1AF5A9408;
  v40[5] = v39;
  v40[2] = sub_1AF5A9B0C;
  v40[3] = v39;
  v40[6] = v39;
  v41 = swift_allocObject();
  *(v41 + 112) = 1;
  *(v41 + 128) = 0;
  *(v41 + 136) = 0;
  *(v41 + 120) = 0;
  *(v41 + 168) = 0;
  *(v41 + 160) = v32;
  *(v41 + 216) = 0;
  *(v41 + 176) = 0;
  *(v41 + 16) = 0x6974617275746173;
  *(v41 + 24) = 0xEA00000000006E6FLL;
  *(v41 + 32) = v39;
  *(v41 + 40) = v27;
  *(v41 + 48) = 52;
  *(v41 + 56) = 0;
  *(v41 + 58) = 0;
  *(v41 + 184) = 0;
  *(v41 + 188) = 0;
  *(v41 + 192) = 0x40000000;
  *(v41 + 196) = 0;
  *(v41 + 200) = 1008981770;
  *(v41 + 204) = 0x10000;
  *(v41 + 208) = 1;
  *(v41 + 64) = 0;
  *(v41 + 72) = 0;
  *(v41 + 96) = 0;
  *(v41 + 104) = 0;
  *(v41 + 144) = xmmword_1AFE22A20;
  *(v41 + 80) = v40;
  *(v41 + 88) = &off_1F2535378;
  *(v41 + 210) = 0;
  swift_retain_n();
  if (v6)
  {
    v27 = (*(v6 + 8))();
  }

  v42 = swift_conformsToProtocol2();
  if (v42 && v27)
  {
    *(v41 + 160) = (*(v42 + 8))(v27, v42);
  }

  *(v41 + 64) = sub_1AF5A9624;
  *(v41 + 72) = v39;
  sub_1AF0FB8EC(0);
  *(v41 + 168) = 0;
  *(v41 + 176) = 0;

  *(v41 + 216) = 0;
  *(v0 + 80) = v41;
  v43 = swift_getKeyPath();
  v44 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v45 = swift_allocObject();
  v45[4] = sub_1AF5801C0;
  v45[5] = v43;
  v45[2] = sub_1AF5801EC;
  v45[3] = v43;
  v45[6] = v43;
  v46 = swift_allocObject();
  *(v46 + 112) = 1;
  *(v46 + 128) = 0;
  *(v46 + 136) = 0;
  *(v46 + 120) = 0;
  *(v46 + 216) = 0;
  *(v46 + 168) = 0;
  *(v46 + 176) = 0;
  *(v46 + 160) = v32;
  strcpy((v46 + 16), "useHighQuality");
  *(v46 + 31) = -18;
  *(v46 + 32) = v43;
  *(v46 + 40) = v44;
  *(v46 + 48) = 56;
  *(v46 + 56) = 0;
  *(v46 + 58) = 0;
  *(v46 + 184) = 0;
  *(v46 + 188) = 1;
  *(v46 + 192) = 0;
  *(v46 + 196) = 1;
  *(v46 + 200) = 0x1000100000000;
  *(v46 + 208) = 1;
  *(v46 + 64) = 0;
  *(v46 + 72) = 0;
  *(v46 + 96) = 0;
  *(v46 + 104) = 0;
  *(v46 + 144) = xmmword_1AFE55120;
  *(v46 + 80) = v45;
  *(v46 + 88) = &off_1F2535378;
  *(v46 + 210) = 0;
  v47 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v47)
  {
    v44 = (*(v47 + 8))();
  }

  v48 = swift_conformsToProtocol2();
  if (v48 && v44)
  {
    *(v46 + 160) = (*(v48 + 8))(v44, v48);
  }

  *(v46 + 64) = sub_1AF580248;
  *(v46 + 72) = v43;
  sub_1AF0FB8EC(0);
  *(v46 + 168) = 0xD00000000000001ELL;
  *(v46 + 176) = 0x80000001AFF2A1D0;

  *(v46 + 216) = 0;
  *(v0 + 88) = v46;
  qword_1EB6C29C0 = v0;
  return result;
}

uint64_t sub_1AF4A41DC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55130;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF58047C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5804B0;
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
  *(v4 + 16) = 0x737569646172;
  *(v4 + 24) = 0xE600000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 0;
  *(v4 + 192) = 1101004800;
  *(v4 + 196) = 0;
  *(v4 + 200) = 0x100003C23D70ALL;
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

  *(v4 + 64) = sub_1AF58050C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v7 = swift_getKeyPath();
  v8 = swift_getKeyPath();
  v9 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF5AA2D8;
  v10[5] = v8;
  v10[2] = sub_1AF58054C;
  v10[3] = v8;
  v10[6] = v8;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = MEMORY[0x1E69E7CC0];
  *(v11 + 168) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  *(v11 + 16) = 0xD000000000000012;
  *(v11 + 24) = 0x80000001AFF2A1F0;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = 0;
  *(v11 + 56) = 1;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0;
  *(v11 + 188) = 1;
  *(v11 + 192) = 0;
  *(v11 + 196) = 1;
  *(v11 + 200) = 0x1000100000000;
  *(v11 + 208) = 1;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 144) = xmmword_1AFE22A20;
  *(v11 + 80) = v10;
  *(v11 + 88) = &off_1F2535378;
  *(v11 + 210) = 0;
  v12 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v12)
  {
    v9 = (*(v12 + 8))();
  }

  v13 = swift_conformsToProtocol2();
  if (v13 && v9)
  {
    *(v11 + 160) = (*(v13 + 8))(v9, v13);
  }

  *(v11 + 64) = sub_1AF5805A8;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  v14 = &type metadata for LensBlurQuality;
  sub_1AF5A9240(0, &qword_1EB63A2B8, &type metadata for LensBlurQuality, type metadata accessor for EntityGetSet);
  v15 = swift_allocObject();
  v15[4] = sub_1AF5805E8;
  v15[5] = v7;
  v15[2] = sub_1AF580614;
  v15[3] = v7;
  v15[6] = v7;
  v16 = swift_allocObject();
  *(v16 + 112) = 1;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 120) = 0;
  *(v16 + 160) = MEMORY[0x1E69E7CC0];
  *(v16 + 168) = 0;
  *(v16 + 216) = 0;
  *(v16 + 176) = 0;
  strcpy((v16 + 16), "filterQuality");
  *(v16 + 30) = -4864;
  *(v16 + 32) = v7;
  *(v16 + 40) = &type metadata for LensBlurQuality;
  *(v16 + 48) = 4;
  *(v16 + 56) = 0;
  *(v16 + 58) = 0;
  *(v16 + 184) = 0;
  *(v16 + 188) = 1;
  *(v16 + 192) = 0;
  *(v16 + 196) = 1;
  *(v16 + 200) = 0x1000100000000;
  *(v16 + 208) = 1;
  *(v16 + 64) = 0;
  *(v16 + 72) = 0;
  *(v16 + 96) = 0;
  *(v16 + 104) = 0;
  *(v16 + 144) = xmmword_1AFE22A20;
  *(v16 + 80) = v15;
  *(v16 + 88) = &off_1F2535378;
  *(v16 + 210) = 0;
  v17 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v17)
  {
    v14 = (*(v17 + 8))();
  }

  v18 = swift_conformsToProtocol2();
  if (v18 && v14)
  {
    *(v16 + 160) = (*(v18 + 8))(v14, v18);
  }

  *(v16 + 64) = sub_1AF580670;
  *(v16 + 72) = v7;
  sub_1AF0FB8EC(0);
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;

  *(v16 + 216) = v11;
  *(v0 + 40) = v16;
  v19 = swift_getKeyPath();
  v20 = MEMORY[0x1E69E6530];
  sub_1AF5A9240(0, &qword_1ED722B68, MEMORY[0x1E69E6530], type metadata accessor for EntityGetSet);
  v21 = swift_allocObject();
  v21[4] = sub_1AF5806B0;
  v21[5] = v19;
  v21[2] = sub_1AF5806E4;
  v21[3] = v19;
  v21[6] = v19;
  v22 = swift_allocObject();
  *(v22 + 112) = 1;
  *(v22 + 128) = 0;
  *(v22 + 136) = 0;
  *(v22 + 120) = 0;
  *(v22 + 168) = 0;
  *(v22 + 160) = MEMORY[0x1E69E7CC0];
  *(v22 + 216) = 0;
  *(v22 + 176) = 0;
  *(v22 + 16) = 0x656E72654B78616DLL;
  *(v22 + 24) = 0xEF7375696461526CLL;
  *(v22 + 32) = v19;
  *(v22 + 40) = v20;
  *(v22 + 48) = 8;
  *(v22 + 56) = 0;
  *(v22 + 58) = 0;
  *(v22 + 184) = 1090519040;
  *(v22 + 188) = 0;
  *(v22 + 192) = 1115422720;
  *(v22 + 196) = 0;
  *(v22 + 200) = 0x100003F800000;
  *(v22 + 208) = 1;
  *(v22 + 64) = 0;
  *(v22 + 72) = 0;
  *(v22 + 96) = 0;
  *(v22 + 104) = 0;
  *(v22 + 144) = xmmword_1AFE22A20;
  *(v22 + 80) = v21;
  *(v22 + 88) = &off_1F2535378;
  *(v22 + 210) = 0;
  v23 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v23)
  {
    v20 = (*(v23 + 8))();
  }

  v24 = swift_conformsToProtocol2();
  if (v24 && v20)
  {
    *(v22 + 160) = (*(v24 + 8))(v20, v24);
  }

  *(v22 + 64) = sub_1AF580740;
  *(v22 + 72) = v19;
  sub_1AF0FB8EC(0);
  *(v22 + 168) = 0;
  *(v22 + 176) = 0;

  *(v22 + 216) = 0;
  *(v0 + 48) = v22;
  qword_1EB6C2D48 = v0;
  return result;
}

unint64_t sub_1AF4A4A6C(unint64_t result)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *(v1 + 4) = v2;
  return result;
}

uint64_t sub_1AF4A4B30()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF580930;
  v4[5] = v2;
  v4[2] = sub_1AF580974;
  v4[3] = v2;
  v4[6] = v2;
  type metadata accessor for PropertyDescription();
  v5 = swift_allocObject();
  *(v5 + 112) = 1;
  *(v5 + 136) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(v5 + 120) = 0;
  *(v5 + 128) = 0;
  *(v5 + 160) = v6;
  *(v5 + 168) = 0;
  *(v5 + 216) = 0;
  *(v5 + 176) = 0;
  strcpy((v5 + 16), "operatorIndex");
  *(v5 + 30) = -4864;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0;
  *(v5 + 56) = 1;
  *(v5 + 58) = 0;
  *(v5 + 184) = 0;
  *(v5 + 188) = 1;
  *(v5 + 192) = 0;
  *(v5 + 196) = 1;
  *(v5 + 200) = 0x1000100000000;
  *(v5 + 208) = 1;
  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 144) = xmmword_1AFE22A20;
  *(v5 + 80) = v4;
  *(v5 + 88) = &off_1F2535378;
  *(v5 + 210) = 0;
  v7 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v7)
  {
    v3 = (*(v7 + 8))();
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v3)
  {
    *(v5 + 160) = (*(v8 + 8))(v3, v8);
  }

  *(v5 + 64) = sub_1AF5809D0;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  v9 = &type metadata for ToneMappingOperator;
  sub_1AF5A9240(0, &qword_1EB63A2F0, &type metadata for ToneMappingOperator, type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF580A10;
  v10[5] = KeyPath;
  v10[2] = sub_1AF580A3C;
  v10[3] = KeyPath;
  v10[6] = KeyPath;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = MEMORY[0x1E69E7CC0];
  *(v11 + 168) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  *(v11 + 16) = 0x726F74617265706FLL;
  *(v11 + 24) = 0xE800000000000000;
  *(v11 + 32) = KeyPath;
  *(v11 + 40) = &type metadata for ToneMappingOperator;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0;
  *(v11 + 188) = 1;
  *(v11 + 192) = 0;
  *(v11 + 196) = 1;
  *(v11 + 200) = 0x1000100000000;
  *(v11 + 208) = 1;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 144) = xmmword_1AFE22A20;
  *(v11 + 80) = v10;
  *(v11 + 88) = &off_1F2535378;
  *(v11 + 210) = 0;
  v12 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v12)
  {
    v9 = (*(v12 + 8))();
  }

  v13 = swift_conformsToProtocol2();
  if (v13 && v9)
  {
    *(v11 + 160) = (*(v13 + 8))(v9, v13);
  }

  *(v11 + 64) = sub_1AF580A98;
  *(v11 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = v5;
  *(v0 + 32) = v11;
  qword_1EB6C2D50 = v0;
  return result;
}

uint64_t sub_1AF4A5074()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF580BC8;
  v3[5] = KeyPath;
  v3[2] = sub_1AF580C0C;
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
  *(v4 + 16) = 0x7469736E65746E69;
  *(v4 + 24) = 0xE900000000000079;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 0;
  *(v4 + 192) = 1065353216;
  *(v4 + 196) = 0;
  *(v4 + 200) = 0x100003C23D70ALL;
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
    v6 = (*(v5 + 8))();
  }

  else
  {
    v6 = v2;
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v6)
  {
    *(v4 + 160) = (*(v7 + 8))(v6, v7);
  }

  *(v4 + 64) = sub_1AF580C68;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5A9410;
  v9[5] = v8;
  v9[2] = sub_1AF5A9B34;
  v9[3] = v8;
  v9[6] = v8;
  v10 = swift_allocObject();
  *(v10 + 112) = 1;
  *(v10 + 128) = 0;
  *(v10 + 136) = 0;
  *(v10 + 120) = 0;
  *(v10 + 168) = 0;
  *(v10 + 160) = MEMORY[0x1E69E7CC0];
  *(v10 + 216) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 0x6870726F6D616E61;
  *(v10 + 24) = 0xEA00000000006369;
  *(v10 + 32) = v8;
  *(v10 + 40) = v2;
  *(v10 + 48) = 4;
  *(v10 + 56) = 0;
  *(v10 + 58) = 0;
  *(v10 + 184) = 0;
  *(v10 + 188) = 0;
  *(v10 + 192) = 1065353216;
  *(v10 + 196) = 0;
  *(v10 + 200) = 1008981770;
  *(v10 + 204) = 0x10000;
  *(v10 + 208) = 1;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;
  *(v10 + 96) = 0;
  *(v10 + 104) = 0;
  *(v10 + 144) = xmmword_1AFE22A20;
  *(v10 + 80) = v9;
  *(v10 + 88) = &off_1F2535378;
  *(v10 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v11 = (*(v5 + 8))();
  }

  else
  {
    v11 = v2;
  }

  v12 = swift_conformsToProtocol2();
  if (v12 && v11)
  {
    *(v10 + 160) = (*(v12 + 8))(v11, v12);
  }

  *(v10 + 64) = sub_1AF5A962C;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  v13 = swift_getKeyPath();
  v14 = swift_allocObject();
  v14[4] = sub_1AF5A9410;
  v14[5] = v13;
  v14[2] = sub_1AF5A9B34;
  v14[3] = v13;
  v14[6] = v13;
  v15 = swift_allocObject();
  *(v15 + 112) = 1;
  *(v15 + 128) = 0;
  *(v15 + 136) = 0;
  *(v15 + 120) = 0;
  *(v15 + 168) = 0;
  *(v15 + 160) = MEMORY[0x1E69E7CC0];
  *(v15 + 216) = 0;
  *(v15 + 176) = 0;
  *(v15 + 16) = 0x7373656E74666F73;
  *(v15 + 24) = 0xE800000000000000;
  *(v15 + 32) = v13;
  *(v15 + 40) = v2;
  *(v15 + 48) = 8;
  *(v15 + 56) = 0;
  *(v15 + 58) = 0;
  *(v15 + 184) = 0;
  *(v15 + 188) = 0;
  *(v15 + 192) = 1065353216;
  *(v15 + 196) = 0;
  *(v15 + 200) = 1008981770;
  *(v15 + 204) = 0x10000;
  *(v15 + 208) = 1;
  *(v15 + 64) = 0;
  *(v15 + 72) = 0;
  *(v15 + 96) = 0;
  *(v15 + 104) = 0;
  *(v15 + 144) = xmmword_1AFE22A20;
  *(v15 + 80) = v14;
  *(v15 + 88) = &off_1F2535378;
  *(v15 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v16 = (*(v5 + 8))();
  }

  else
  {
    v16 = v2;
  }

  v17 = swift_conformsToProtocol2();
  if (v17 && v16)
  {
    *(v15 + 160) = (*(v17 + 8))(v16, v17);
  }

  *(v15 + 64) = sub_1AF5A962C;
  *(v15 + 72) = v13;
  sub_1AF0FB8EC(0);
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;

  *(v15 + 216) = 0;
  *(v0 + 48) = v15;
  v18 = swift_getKeyPath();
  v19 = swift_allocObject();
  v19[4] = sub_1AF5A9410;
  v19[5] = v18;
  v19[2] = sub_1AF5A9B34;
  v19[3] = v18;
  v19[6] = v18;
  v20 = swift_allocObject();
  *(v20 + 112) = 1;
  *(v20 + 128) = 0;
  *(v20 + 136) = 0;
  *(v20 + 120) = 0;
  *(v20 + 160) = MEMORY[0x1E69E7CC0];
  *(v20 + 168) = 0;
  *(v20 + 216) = 0;
  *(v20 + 176) = 0;
  *(v20 + 16) = 0x737569646172;
  *(v20 + 24) = 0xE600000000000000;
  *(v20 + 32) = v18;
  *(v20 + 40) = v2;
  *(v20 + 48) = 12;
  *(v20 + 56) = 0;
  *(v20 + 58) = 0;
  *(v20 + 184) = 0;
  *(v20 + 188) = 1;
  *(v20 + 192) = 0;
  *(v20 + 196) = 1;
  *(v20 + 200) = 0x1000100000000;
  *(v20 + 208) = 1;
  *(v20 + 64) = 0;
  *(v20 + 72) = 0;
  *(v20 + 96) = 0;
  *(v20 + 104) = 0;
  *(v20 + 144) = xmmword_1AFE22A20;
  *(v20 + 80) = v19;
  *(v20 + 88) = &off_1F2535378;
  *(v20 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v2 = (*(v5 + 8))();
  }

  v21 = swift_conformsToProtocol2();
  if (v21 && v2)
  {
    *(v20 + 160) = (*(v21 + 8))(v2, v21);
  }

  *(v20 + 64) = sub_1AF5A962C;
  *(v20 + 72) = v18;
  sub_1AF0FB8EC(0);
  *(v20 + 168) = 0;
  *(v20 + 176) = 0;

  *(v20 + 216) = 0;
  *(v0 + 56) = v20;
  qword_1EB6C2D58 = v0;
  return result;
}

uint64_t sub_1AF4A5910()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55190;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF580D08;
  v3[5] = KeyPath;
  v3[2] = sub_1AF580D3C;
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
  *(v4 + 16) = 0x657275736F707865;
  *(v4 + 24) = 0xE800000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = -1063256064;
  *(v4 + 188) = 0;
  *(v4 + 192) = 1084227584;
  *(v4 + 196) = 0;
  *(v4 + 200) = 0x100003C23D70ALL;
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
    v6 = (*(v5 + 8))();
  }

  else
  {
    v6 = v2;
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v6)
  {
    *(v4 + 160) = (*(v7 + 8))(v6, v7);
  }

  v8 = *(v4 + 64);
  *(v4 + 64) = sub_1AF580D98;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(v8);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  *(v0 + 32) = v4;
  v9 = swift_getKeyPath();
  v10 = swift_allocObject();
  v10[4] = sub_1AF5A9414;
  v10[5] = v9;
  v10[2] = sub_1AF5A9B38;
  v10[3] = v9;
  v10[6] = v9;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = MEMORY[0x1E69E7CC0];
  *(v11 + 168) = 0;
  *(v11 + 210) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  *(v11 + 16) = 0x74617265706D6574;
  *(v11 + 24) = 0xEB00000000657275;
  *(v11 + 32) = v9;
  *(v11 + 40) = v2;
  *(v11 + 48) = 4;
  *(v11 + 56) = 0;
  *(v11 + 58) = 0;
  *(v11 + 184) = -1082130432;
  *(v11 + 188) = 0;
  *(v11 + 192) = 1065353216;
  *(v11 + 196) = 0;
  *(v11 + 200) = 1008981770;
  *(v11 + 204) = 0x10000;
  *(v11 + 208) = 1;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 144) = xmmword_1AFE22A20;
  *(v11 + 80) = v10;
  *(v11 + 88) = &off_1F2535378;
  *(v11 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v12 = (*(v5 + 8))();
  }

  else
  {
    v12 = v2;
  }

  v13 = swift_conformsToProtocol2();
  if (v13 && v12)
  {
    *(v11 + 160) = (*(v13 + 8))(v12, v13);
  }

  v14 = *(v11 + 64);
  *(v11 + 64) = sub_1AF5A9630;
  *(v11 + 72) = v9;
  sub_1AF0FB8EC(v14);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;

  *(v0 + 40) = v11;
  v15 = swift_getKeyPath();
  v16 = swift_allocObject();
  v16[4] = sub_1AF5A9414;
  v16[5] = v15;
  v16[2] = sub_1AF5A9B38;
  v16[3] = v15;
  v16[6] = v15;
  v17 = swift_allocObject();
  *(v17 + 112) = 1;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 120) = 0;
  *(v17 + 160) = MEMORY[0x1E69E7CC0];
  *(v17 + 168) = 0;
  *(v17 + 210) = 0;
  *(v17 + 216) = 0;
  *(v17 + 176) = 0;
  *(v17 + 16) = 1953393012;
  *(v17 + 24) = 0xE400000000000000;
  *(v17 + 32) = v15;
  *(v17 + 40) = v2;
  *(v17 + 48) = 8;
  *(v17 + 56) = 0;
  *(v17 + 58) = 0;
  *(v17 + 184) = -1082130432;
  *(v17 + 188) = 0;
  *(v17 + 192) = 1065353216;
  *(v17 + 196) = 0;
  *(v17 + 200) = 1008981770;
  *(v17 + 204) = 0x10000;
  *(v17 + 208) = 1;
  *(v17 + 64) = 0;
  *(v17 + 72) = 0;
  *(v17 + 96) = 0;
  *(v17 + 104) = 0;
  *(v17 + 144) = xmmword_1AFE22A20;
  *(v17 + 80) = v16;
  *(v17 + 88) = &off_1F2535378;
  *(v17 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v2 = (*(v5 + 8))();
  }

  v18 = swift_conformsToProtocol2();
  if (v18 && v2)
  {
    *(v17 + 160) = (*(v18 + 8))(v2, v18);
  }

  v19 = *(v17 + 64);
  *(v17 + 64) = sub_1AF5A9630;
  *(v17 + 72) = v15;
  sub_1AF0FB8EC(v19);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;

  *(v0 + 48) = v17;
  v20 = swift_getKeyPath();
  sub_1AF57B9C0();
  v21 = swift_allocObject();
  v21[4] = sub_1AF580DD8;
  v21[5] = v20;
  v21[2] = sub_1AF580DF0;
  v21[3] = v20;
  v21[6] = v20;
  v22 = swift_allocObject();
  *(v22 + 104) = 0;
  *(v22 + 112) = 1;
  *(v22 + 128) = 0;
  *(v22 + 136) = 0;
  *(v22 + 120) = 0;
  *(v22 + 160) = MEMORY[0x1E69E7CC0];
  *(v22 + 216) = 0;
  v23 = MEMORY[0x1E69E6448];
  sub_1AF583D60(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  v25 = v24;
  *(v22 + 168) = 0;
  *(v22 + 176) = 0;
  *(v22 + 16) = 0x6F6C6F437466696CLL;
  *(v22 + 24) = 0xE900000000000072;
  *(v22 + 32) = v20;
  *(v22 + 40) = v24;
  *(v22 + 48) = 16;
  *(v22 + 56) = 0;
  *(v22 + 58) = 0;
  *(v22 + 184) = 0;
  *(v22 + 188) = 1;
  *(v22 + 192) = 0;
  *(v22 + 196) = 1;
  *(v22 + 200) = 0x1000100000000;
  *(v22 + 208) = 1;
  *(v22 + 64) = 0;
  *(v22 + 72) = 0;
  *(v22 + 96) = 0;
  *(v22 + 144) = xmmword_1AFE55160;
  *(v22 + 80) = v21;
  *(v22 + 88) = &off_1F2535378;
  *(v22 + 210) = 0;
  v26 = swift_conformsToProtocol2();
  if (v26)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  swift_retain_n();
  v28 = v25;
  if (v27)
  {
    v28 = (*(v26 + 8))(v27, v26);
  }

  v29 = swift_conformsToProtocol2();
  if (v29 && v28)
  {
    *(v22 + 160) = (*(v29 + 8))(v28, v29);
  }

  v30 = *(v22 + 64);
  *(v22 + 64) = sub_1AF580E54;
  *(v22 + 72) = v20;
  sub_1AF0FB8EC(v30);
  *(v22 + 168) = 0;
  *(v22 + 176) = 0;

  *(v22 + 216) = 0;

  *(v0 + 56) = v22;
  v31 = swift_getKeyPath();
  v32 = swift_allocObject();
  v32[4] = sub_1AF5A9414;
  v32[5] = v31;
  v32[2] = sub_1AF5A9B38;
  v32[3] = v31;
  v32[6] = v31;
  v33 = swift_allocObject();
  *(v33 + 112) = 1;
  *(v33 + 128) = 0;
  *(v33 + 136) = 0;
  *(v33 + 120) = 0;
  *(v33 + 160) = MEMORY[0x1E69E7CC0];
  *(v33 + 168) = 0;
  *(v33 + 216) = 0;
  *(v33 + 176) = 0;
  *(v33 + 16) = 0x7366664F7466696CLL;
  *(v33 + 24) = 0xEA00000000007465;
  *(v33 + 32) = v31;
  *(v33 + 40) = v23;
  *(v33 + 48) = 32;
  *(v33 + 56) = 0;
  *(v33 + 58) = 0;
  *(v33 + 184) = -1082130432;
  *(v33 + 188) = 0;
  *(v33 + 192) = 1065353216;
  *(v33 + 196) = 0;
  *(v33 + 200) = 0x100003A83126FLL;
  *(v33 + 208) = 1;
  *(v33 + 64) = 0;
  *(v33 + 72) = 0;
  *(v33 + 96) = 0;
  *(v33 + 104) = 0;
  *(v33 + 144) = xmmword_1AFE22A20;
  *(v33 + 80) = v32;
  *(v33 + 88) = &off_1F2535378;
  *(v33 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v34 = (*(v5 + 8))();
  }

  else
  {
    v34 = v23;
  }

  v35 = swift_conformsToProtocol2();
  if (v35 && v34)
  {
    *(v33 + 160) = (*(v35 + 8))(v34, v35);
  }

  *(v33 + 64) = sub_1AF5A9630;
  *(v33 + 72) = v31;
  sub_1AF0FB8EC(0);
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;

  *(v33 + 216) = 0;
  *(v0 + 64) = v33;
  v36 = swift_getKeyPath();
  v37 = swift_allocObject();
  v37[4] = sub_1AF5A9634;
  v37[5] = v36;
  v37[2] = sub_1AF5A9B3C;
  v37[3] = v36;
  v37[6] = v36;
  v38 = swift_allocObject();
  *(v38 + 112) = 1;
  *(v38 + 128) = 0;
  *(v38 + 136) = 0;
  *(v38 + 120) = 0;
  *(v38 + 160) = MEMORY[0x1E69E7CC0];
  *(v38 + 168) = 0;
  *(v38 + 216) = 0;
  *(v38 + 176) = 0;
  *(v38 + 16) = 0x6C6F43616D6D6167;
  *(v38 + 24) = 0xEA0000000000726FLL;
  *(v38 + 32) = v36;
  *(v38 + 40) = v25;
  *(v38 + 48) = 48;
  *(v38 + 56) = 0;
  *(v38 + 58) = 0;
  *(v38 + 184) = 0;
  *(v38 + 188) = 1;
  *(v38 + 192) = 0;
  *(v38 + 196) = 1;
  *(v38 + 200) = 0x1000100000000;
  *(v38 + 208) = 1;
  *(v38 + 64) = 0;
  *(v38 + 72) = 0;
  *(v38 + 96) = 0;
  *(v38 + 104) = 0;
  *(v38 + 144) = xmmword_1AFE55160;
  *(v38 + 80) = v37;
  *(v38 + 88) = &off_1F2535378;
  *(v38 + 210) = 0;
  swift_retain_n();
  v39 = v25;
  if (v27)
  {
    v39 = (*(v26 + 8))(v27);
  }

  v40 = swift_conformsToProtocol2();
  if (v40 && v39)
  {
    *(v38 + 160) = (*(v40 + 8))(v39, v40);
  }

  v41 = *(v38 + 64);
  *(v38 + 64) = sub_1AF5A9638;
  *(v38 + 72) = v36;
  sub_1AF0FB8EC(v41);
  *(v38 + 168) = 0;
  *(v38 + 176) = 0;

  *(v38 + 216) = 0;

  *(v0 + 72) = v38;
  v42 = swift_getKeyPath();
  v43 = swift_allocObject();
  v43[4] = sub_1AF5A9414;
  v43[5] = v42;
  v43[2] = sub_1AF5A9B38;
  v43[3] = v42;
  v43[6] = v42;
  v44 = swift_allocObject();
  *(v44 + 112) = 1;
  *(v44 + 128) = 0;
  *(v44 + 136) = 0;
  *(v44 + 120) = 0;
  *(v44 + 168) = 0;
  *(v44 + 160) = MEMORY[0x1E69E7CC0];
  *(v44 + 216) = 0;
  *(v44 + 176) = 0;
  *(v44 + 16) = 0x66664F616D6D6167;
  *(v44 + 24) = 0xEB00000000746573;
  *(v44 + 32) = v42;
  *(v44 + 40) = v23;
  *(v44 + 48) = 64;
  *(v44 + 56) = 0;
  *(v44 + 58) = 0;
  *(v44 + 184) = -1082130432;
  *(v44 + 188) = 0;
  *(v44 + 192) = 1065353216;
  *(v44 + 196) = 0;
  *(v44 + 200) = 981668463;
  *(v44 + 204) = 0x10000;
  *(v44 + 208) = 1;
  *(v44 + 64) = 0;
  *(v44 + 72) = 0;
  *(v44 + 96) = 0;
  *(v44 + 104) = 0;
  *(v44 + 144) = xmmword_1AFE22A20;
  *(v44 + 80) = v43;
  *(v44 + 88) = &off_1F2535378;
  *(v44 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v45 = (*(v5 + 8))();
  }

  else
  {
    v45 = v23;
  }

  v46 = swift_conformsToProtocol2();
  if (v46 && v45)
  {
    *(v44 + 160) = (*(v46 + 8))(v45, v46);
  }

  *(v44 + 64) = sub_1AF5A9630;
  *(v44 + 72) = v42;
  sub_1AF0FB8EC(0);
  *(v44 + 168) = 0;
  *(v44 + 176) = 0;

  *(v44 + 216) = 0;
  *(v0 + 80) = v44;
  v47 = swift_getKeyPath();
  v48 = swift_allocObject();
  v48[4] = sub_1AF5A9634;
  v48[5] = v47;
  v48[2] = sub_1AF5A9B3C;
  v48[3] = v47;
  v48[6] = v47;
  v49 = swift_allocObject();
  *(v49 + 112) = 1;
  *(v49 + 128) = 0;
  *(v49 + 136) = 0;
  *(v49 + 120) = 0;
  *(v49 + 160) = MEMORY[0x1E69E7CC0];
  *(v49 + 168) = 0;
  *(v49 + 216) = 0;
  *(v49 + 176) = 0;
  *(v49 + 16) = 0x6F6C6F436E696167;
  *(v49 + 24) = 0xE900000000000072;
  *(v49 + 32) = v47;
  *(v49 + 40) = v25;
  *(v49 + 48) = 80;
  *(v49 + 56) = 0;
  *(v49 + 58) = 0;
  *(v49 + 184) = 0;
  *(v49 + 188) = 1;
  *(v49 + 192) = 0;
  *(v49 + 196) = 1;
  *(v49 + 200) = 0x1000100000000;
  *(v49 + 208) = 1;
  *(v49 + 64) = 0;
  *(v49 + 72) = 0;
  *(v49 + 96) = 0;
  *(v49 + 104) = 0;
  *(v49 + 144) = xmmword_1AFE55160;
  *(v49 + 80) = v48;
  *(v49 + 88) = &off_1F2535378;
  *(v49 + 210) = 0;
  swift_retain_n();
  if (v27)
  {
    v25 = (*(v26 + 8))(v27);
  }

  v50 = swift_conformsToProtocol2();
  if (v50 && v25)
  {
    *(v49 + 160) = (*(v50 + 8))(v25, v50);
  }

  v51 = *(v49 + 64);
  *(v49 + 64) = sub_1AF5A9638;
  *(v49 + 72) = v47;
  sub_1AF0FB8EC(v51);
  *(v49 + 168) = 0;
  *(v49 + 176) = 0;

  *(v49 + 216) = 0;

  *(v0 + 88) = v49;
  v52 = swift_getKeyPath();
  v53 = swift_allocObject();
  v53[4] = sub_1AF5A9414;
  v53[5] = v52;
  v53[2] = sub_1AF5A9B38;
  v53[3] = v52;
  v53[6] = v52;
  v54 = swift_allocObject();
  *(v54 + 112) = 1;
  *(v54 + 128) = 0;
  *(v54 + 136) = 0;
  *(v54 + 120) = 0;
  *(v54 + 160) = MEMORY[0x1E69E7CC0];
  *(v54 + 168) = 0;
  *(v54 + 216) = 0;
  *(v54 + 176) = 0;
  *(v54 + 16) = 0x7366664F6E696167;
  *(v54 + 24) = 0xEA00000000007465;
  *(v54 + 32) = v52;
  *(v54 + 40) = v23;
  *(v54 + 48) = 96;
  *(v54 + 56) = 0;
  *(v54 + 58) = 0;
  *(v54 + 184) = -1082130432;
  *(v54 + 188) = 0;
  *(v54 + 192) = 1065353216;
  *(v54 + 196) = 0;
  *(v54 + 200) = 981668463;
  *(v54 + 204) = 0x10000;
  *(v54 + 208) = 1;
  *(v54 + 64) = 0;
  *(v54 + 72) = 0;
  *(v54 + 96) = 0;
  *(v54 + 104) = 0;
  *(v54 + 144) = xmmword_1AFE22A20;
  *(v54 + 80) = v53;
  *(v54 + 88) = &off_1F2535378;
  *(v54 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v55 = (*(v5 + 8))();
  }

  else
  {
    v55 = v23;
  }

  v56 = swift_conformsToProtocol2();
  if (v56 && v55)
  {
    *(v54 + 160) = (*(v56 + 8))(v55, v56);
  }

  *(v54 + 64) = sub_1AF5A9630;
  *(v54 + 72) = v52;
  sub_1AF0FB8EC(0);
  *(v54 + 168) = 0;
  *(v54 + 176) = 0;

  *(v54 + 216) = 0;
  *(v0 + 96) = v54;
  v57 = swift_getKeyPath();
  v58 = swift_allocObject();
  v58[4] = sub_1AF5A9414;
  v58[5] = v57;
  v58[2] = sub_1AF5A9B38;
  v58[3] = v57;
  v58[6] = v57;
  v59 = swift_allocObject();
  *(v59 + 112) = 1;
  *(v59 + 128) = 0;
  *(v59 + 136) = 0;
  *(v59 + 120) = 0;
  *(v59 + 168) = 0;
  *(v59 + 160) = MEMORY[0x1E69E7CC0];
  *(v59 + 216) = 0;
  *(v59 + 176) = 0;
  *(v59 + 16) = 0x74736172746E6F63;
  *(v59 + 24) = 0xE800000000000000;
  *(v59 + 32) = v57;
  *(v59 + 40) = v23;
  *(v59 + 48) = 100;
  *(v59 + 56) = 0;
  *(v59 + 58) = 0;
  *(v59 + 184) = 0;
  *(v59 + 188) = 0;
  *(v59 + 192) = 0x40000000;
  *(v59 + 196) = 0;
  *(v59 + 200) = 1008981770;
  *(v59 + 204) = 0x10000;
  *(v59 + 208) = 1;
  *(v59 + 64) = 0;
  *(v59 + 72) = 0;
  *(v59 + 96) = 0;
  *(v59 + 104) = 0;
  *(v59 + 144) = xmmword_1AFE22A20;
  *(v59 + 80) = v58;
  *(v59 + 88) = &off_1F2535378;
  *(v59 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v60 = (*(v5 + 8))();
  }

  else
  {
    v60 = v23;
  }

  v61 = swift_conformsToProtocol2();
  if (v61 && v60)
  {
    *(v59 + 160) = (*(v61 + 8))(v60, v61);
  }

  *(v59 + 64) = sub_1AF5A9630;
  *(v59 + 72) = v57;
  sub_1AF0FB8EC(0);
  *(v59 + 168) = 0;
  *(v59 + 176) = 0;

  *(v59 + 216) = 0;
  *(v0 + 104) = v59;
  v62 = swift_getKeyPath();
  v63 = swift_allocObject();
  v63[4] = sub_1AF5A9414;
  v63[5] = v62;
  v63[2] = sub_1AF5A9B38;
  v63[3] = v62;
  v63[6] = v62;
  v64 = swift_allocObject();
  *(v64 + 112) = 1;
  *(v64 + 128) = 0;
  *(v64 + 136) = 0;
  *(v64 + 120) = 0;
  *(v64 + 168) = 0;
  *(v64 + 160) = MEMORY[0x1E69E7CC0];
  *(v64 + 216) = 0;
  *(v64 + 176) = 0;
  *(v64 + 16) = 0x6974617275746173;
  *(v64 + 24) = 0xEA00000000006E6FLL;
  *(v64 + 32) = v62;
  *(v64 + 40) = v23;
  *(v64 + 48) = 104;
  *(v64 + 56) = 0;
  *(v64 + 58) = 0;
  *(v64 + 184) = 0;
  *(v64 + 188) = 0;
  *(v64 + 192) = 0x40000000;
  *(v64 + 196) = 0;
  *(v64 + 200) = 1008981770;
  *(v64 + 204) = 0x10000;
  *(v64 + 208) = 1;
  *(v64 + 64) = 0;
  *(v64 + 72) = 0;
  *(v64 + 96) = 0;
  *(v64 + 104) = 0;
  *(v64 + 144) = xmmword_1AFE22A20;
  *(v64 + 80) = v63;
  *(v64 + 88) = &off_1F2535378;
  *(v64 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v23 = (*(v5 + 8))();
  }

  v65 = swift_conformsToProtocol2();
  if (v65 && v23)
  {
    *(v64 + 160) = (*(v65 + 8))(v23, v65);
  }

  *(v64 + 64) = sub_1AF5A9630;
  *(v64 + 72) = v62;
  sub_1AF0FB8EC(0);
  *(v64 + 168) = 0;
  *(v64 + 176) = 0;

  *(v64 + 216) = 0;
  *(v0 + 112) = v64;
  qword_1EB6C2D60 = v0;
  return result;
}

uint64_t sub_1AF4A6DF8()
{
  if (qword_1EB636D20 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AF4A6EE8()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  sub_1AF51B13C(0, &unk_1EB632510, type metadata accessor for MTLPixelFormat, type metadata accessor for EntityGetSet);
  v2 = swift_allocObject();
  v2[4] = sub_1AF580F98;
  v2[5] = KeyPath;
  v2[2] = sub_1AF580FCC;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  *(v3 + 160) = MEMORY[0x1E69E7CC0];
  *(v3 + 216) = 0;
  type metadata accessor for MTLPixelFormat(0);
  v5 = v4;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x74616D726F66;
  *(v3 + 24) = 0xE600000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 1;
  *(v3 + 192) = 0;
  *(v3 + 196) = 1;
  *(v3 + 200) = 0x1000100000000;
  *(v3 + 208) = 1;
  *(v3 + 96) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 144) = xmmword_1AFE22A20;
  *(v3 + 80) = v2;
  *(v3 + 88) = &off_1F2535378;
  *(v3 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6 && v5)
  {
    v5 = (*(v6 + 8))(v5, v6);
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v5)
  {
    *(v3 + 160) = (*(v7 + 8))(v5, v7);
  }

  v8 = *(v3 + 64);
  *(v3 + 64) = sub_1AF581028;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  v9 = swift_getKeyPath();
  v10 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v11 = swift_allocObject();
  v11[4] = sub_1AF581074;
  v11[5] = v9;
  v11[2] = sub_1AF5810A8;
  v11[3] = v9;
  v11[6] = v9;
  v12 = swift_allocObject();
  *(v12 + 112) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 0;
  *(v12 + 120) = 0;
  *(v12 + 168) = 0;
  *(v12 + 160) = MEMORY[0x1E69E7CC0];
  *(v12 + 216) = 0;
  *(v12 + 176) = 0;
  *(v12 + 16) = 0x615265757161706FLL;
  *(v12 + 24) = 0xEB000000006F6974;
  *(v12 + 32) = v9;
  *(v12 + 40) = v10;
  *(v12 + 48) = 8;
  *(v12 + 56) = 0;
  *(v12 + 58) = 0;
  *(v12 + 184) = 1040187392;
  *(v12 + 188) = 0;
  *(v12 + 192) = 1065353216;
  *(v12 + 196) = 0;
  *(v12 + 200) = 0x100003E000000;
  *(v12 + 208) = 1;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  *(v12 + 96) = 0;
  *(v12 + 104) = 0;
  *(v12 + 144) = xmmword_1AFE22A20;
  *(v12 + 80) = v11;
  *(v12 + 88) = &off_1F2535378;
  *(v12 + 210) = 0;
  v13 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v13)
  {
    v14 = (*(v13 + 8))();
  }

  else
  {
    v14 = v10;
  }

  v15 = swift_conformsToProtocol2();
  if (v15 && v14)
  {
    *(v12 + 160) = (*(v15 + 8))(v14, v15);
  }

  *(v12 + 64) = sub_1AF581104;
  *(v12 + 72) = v9;
  sub_1AF0FB8EC(0);
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;

  *(v12 + 216) = 0;
  *(v0 + 40) = v12;
  v16 = swift_getKeyPath();
  v17 = swift_allocObject();
  v17[4] = sub_1AF5A9418;
  v17[5] = v16;
  v17[2] = sub_1AF5A9B40;
  v17[3] = v16;
  v17[6] = v16;
  v18 = swift_allocObject();
  *(v18 + 112) = 1;
  *(v18 + 128) = 0;
  *(v18 + 136) = 0;
  *(v18 + 120) = 0;
  *(v18 + 160) = MEMORY[0x1E69E7CC0];
  *(v18 + 168) = 0;
  *(v18 + 216) = 0;
  *(v18 + 176) = 0;
  *(v18 + 16) = 0xD000000000000010;
  *(v18 + 24) = 0x80000001AFF29660;
  *(v18 + 32) = v16;
  *(v18 + 40) = v10;
  *(v18 + 48) = 12;
  *(v18 + 56) = 0;
  *(v18 + 58) = 0;
  *(v18 + 184) = 1040187392;
  *(v18 + 188) = 0;
  *(v18 + 192) = 1065353216;
  *(v18 + 196) = 0;
  *(v18 + 200) = 0x100003E000000;
  *(v18 + 208) = 1;
  *(v18 + 64) = 0;
  *(v18 + 72) = 0;
  *(v18 + 96) = 0;
  *(v18 + 104) = 0;
  *(v18 + 144) = xmmword_1AFE22A20;
  *(v18 + 80) = v17;
  *(v18 + 88) = &off_1F2535378;
  *(v18 + 210) = 0;
  swift_retain_n();
  if (v13)
  {
    v10 = (*(v13 + 8))();
  }

  v19 = swift_conformsToProtocol2();
  if (v19 && v10)
  {
    *(v18 + 160) = (*(v19 + 8))(v10, v19);
  }

  *(v18 + 64) = sub_1AF5A963C;
  *(v18 + 72) = v16;
  sub_1AF0FB8EC(0);
  *(v18 + 168) = 0;
  *(v18 + 176) = 0;

  *(v18 + 216) = 0;
  *(v0 + 48) = v18;
  v20 = swift_getKeyPath();
  sub_1AF51B13C(0, &qword_1EB63A338, type metadata accessor for CGSize, type metadata accessor for EntityGetSet);
  v21 = swift_allocObject();
  v21[4] = sub_1AF581144;
  v21[5] = v20;
  v21[2] = sub_1AF58115C;
  v21[3] = v20;
  v21[6] = v20;
  v22 = swift_allocObject();
  *(v22 + 104) = 0;
  *(v22 + 112) = 1;
  *(v22 + 128) = 0;
  *(v22 + 136) = 0;
  *(v22 + 120) = 0;
  *(v22 + 160) = MEMORY[0x1E69E7CC0];
  *(v22 + 216) = 0;
  type metadata accessor for CGSize(0);
  v24 = v23;
  *(v22 + 168) = 0;
  *(v22 + 176) = 0;
  *(v22 + 16) = 0x6F69736E656D6964;
  *(v22 + 24) = 0xEA0000000000736ELL;
  *(v22 + 32) = v20;
  *(v22 + 40) = v23;
  *(v22 + 48) = 16;
  *(v22 + 56) = 0;
  *(v22 + 58) = 0;
  *(v22 + 184) = 0;
  *(v22 + 188) = 1;
  *(v22 + 192) = 0;
  *(v22 + 196) = 1;
  *(v22 + 200) = 0x1000100000000;
  *(v22 + 208) = 1;
  *(v22 + 64) = 0;
  *(v22 + 72) = 0;
  *(v22 + 96) = 0;
  *(v22 + 144) = xmmword_1AFE22A20;
  *(v22 + 80) = v21;
  *(v22 + 88) = &off_1F2535378;
  *(v22 + 210) = 0;
  v25 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v25 && v24)
  {
    v24 = (*(v25 + 8))(v24, v25);
  }

  v26 = swift_conformsToProtocol2();
  if (v26 && v24)
  {
    *(v22 + 160) = (*(v26 + 8))(v24, v26);
  }

  v27 = *(v22 + 64);
  *(v22 + 64) = sub_1AF581168;
  *(v22 + 72) = v20;
  sub_1AF0FB8EC(v27);
  *(v22 + 168) = 0;
  *(v22 + 176) = 0;

  *(v22 + 216) = 0;

  *(v0 + 56) = v22;
  qword_1EB6C2D68 = v0;
  return result;
}

uint64_t sub_1AF4A7820()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551A0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5812E4;
  v3[5] = KeyPath;
  v3[2] = sub_1AF581318;
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
  *(v4 + 16) = 0x65727574786574;
  *(v4 + 24) = 0xE700000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for Entity;
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
  *(v4 + 144) = xmmword_1AFE551B0;
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

  *(v4 + 64) = sub_1AF581374;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v7 = swift_getKeyPath();
  v8 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v9 = swift_allocObject();
  v9[4] = sub_1AF5813B4;
  v9[5] = v7;
  v9[2] = sub_1AF5813E8;
  v9[3] = v7;
  v9[6] = v7;
  v10 = swift_allocObject();
  *(v10 + 112) = 1;
  *(v10 + 128) = 0;
  *(v10 + 136) = 0;
  *(v10 + 120) = 0;
  *(v10 + 160) = MEMORY[0x1E69E7CC0];
  *(v10 + 168) = 0;
  *(v10 + 216) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 0x7469736E65746E69;
  *(v10 + 24) = 0xE900000000000079;
  *(v10 + 32) = v7;
  *(v10 + 40) = v8;
  *(v10 + 48) = 8;
  *(v10 + 56) = 0;
  *(v10 + 58) = 0;
  *(v10 + 184) = 0;
  *(v10 + 188) = 0;
  *(v10 + 192) = 1092616192;
  *(v10 + 196) = 0;
  *(v10 + 200) = 0x100003C23D70ALL;
  *(v10 + 208) = 1;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;
  *(v10 + 96) = 0;
  *(v10 + 104) = 0;
  *(v10 + 144) = xmmword_1AFE22A20;
  *(v10 + 80) = v9;
  *(v10 + 88) = &off_1F2535378;
  *(v10 + 210) = 0;
  v11 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v11)
  {
    v12 = (*(v11 + 8))();
  }

  else
  {
    v12 = v8;
  }

  v13 = swift_conformsToProtocol2();
  if (v13 && v12)
  {
    *(v10 + 160) = (*(v13 + 8))(v12, v13);
  }

  *(v10 + 64) = sub_1AF581444;
  *(v10 + 72) = v7;
  sub_1AF0FB8EC(0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  v14 = swift_getKeyPath();
  v15 = swift_allocObject();
  v15[4] = sub_1AF5A941C;
  v15[5] = v14;
  v15[2] = sub_1AF5A9B48;
  v15[3] = v14;
  v15[6] = v14;
  v16 = swift_allocObject();
  *(v16 + 112) = 1;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 120) = 0;
  *(v16 + 216) = 0;
  *(v16 + 176) = 0;
  *(v16 + 160) = MEMORY[0x1E69E7CC0];
  *(v16 + 168) = 0;
  *(v16 + 16) = 0x6576654C72756C62;
  *(v16 + 24) = 0xE90000000000006CLL;
  *(v16 + 32) = v14;
  *(v16 + 40) = v8;
  *(v16 + 48) = 12;
  *(v16 + 56) = 0;
  *(v16 + 58) = 0;
  *(v16 + 184) = 0;
  *(v16 + 188) = 0;
  *(v16 + 192) = 1094713344;
  *(v16 + 196) = 0;
  *(v16 + 200) = 0x100003DCCCCCDLL;
  *(v16 + 208) = 1;
  *(v16 + 64) = 0;
  *(v16 + 72) = 0;
  *(v16 + 96) = 0;
  *(v16 + 104) = 0;
  *(v16 + 144) = xmmword_1AFE22A20;
  *(v16 + 80) = v15;
  *(v16 + 88) = &off_1F2535378;
  *(v16 + 210) = 0;
  swift_retain_n();
  if (v11)
  {
    v17 = (*(v11 + 8))();
  }

  else
  {
    v17 = v8;
  }

  v18 = swift_conformsToProtocol2();
  if (v18 && v17)
  {
    *(v16 + 160) = (*(v18 + 8))(v17, v18);
  }

  *(v16 + 64) = sub_1AF5A9644;
  *(v16 + 72) = v14;
  sub_1AF0FB8EC(0);
  *(v16 + 168) = 0xD000000000000037;
  *(v16 + 176) = 0x80000001AFF2A210;

  *(v16 + 216) = 0;
  *(v0 + 48) = v16;
  v19 = swift_getKeyPath();
  v20 = swift_getKeyPath();
  v21 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v22 = swift_allocObject();
  v22[4] = sub_1AF5812E4;
  v22[5] = v20;
  v22[2] = sub_1AF581484;
  v22[3] = v20;
  v22[6] = v20;
  v23 = swift_allocObject();
  *(v23 + 112) = 1;
  *(v23 + 128) = 0;
  *(v23 + 136) = 0;
  *(v23 + 120) = 0;
  *(v23 + 160) = MEMORY[0x1E69E7CC0];
  *(v23 + 168) = 0;
  *(v23 + 216) = 0;
  *(v23 + 176) = 0;
  strcpy((v23 + 16), "blendModeIndex");
  *(v23 + 31) = -18;
  *(v23 + 32) = v20;
  *(v23 + 40) = v21;
  *(v23 + 48) = 0;
  *(v23 + 56) = 1;
  *(v23 + 58) = 0;
  *(v23 + 184) = 0;
  *(v23 + 188) = 1;
  *(v23 + 192) = 0;
  *(v23 + 196) = 1;
  *(v23 + 200) = 0x1000100000000;
  *(v23 + 208) = 1;
  *(v23 + 64) = 0;
  *(v23 + 72) = 0;
  *(v23 + 96) = 0;
  *(v23 + 104) = 0;
  *(v23 + 144) = xmmword_1AFE22A20;
  *(v23 + 80) = v22;
  *(v23 + 88) = &off_1F2535378;
  *(v23 + 210) = 0;
  v24 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v24)
  {
    v21 = (*(v24 + 8))();
  }

  v25 = swift_conformsToProtocol2();
  if (v25 && v21)
  {
    *(v23 + 160) = (*(v25 + 8))(v21, v25);
  }

  *(v23 + 64) = sub_1AF5814E0;
  *(v23 + 72) = v20;
  sub_1AF0FB8EC(0);
  *(v23 + 168) = 0;
  *(v23 + 176) = 0;

  *(v23 + 216) = 0;
  v26 = &type metadata for BlendMode;
  sub_1AF5A9240(0, &unk_1EB633878, &type metadata for BlendMode, type metadata accessor for EntityGetSet);
  v27 = swift_allocObject();
  v27[4] = sub_1AF581520;
  v27[5] = v19;
  v27[2] = sub_1AF58155C;
  v27[3] = v19;
  v27[6] = v19;
  v28 = swift_allocObject();
  *(v28 + 112) = 1;
  *(v28 + 128) = 0;
  *(v28 + 136) = 0;
  *(v28 + 120) = 0;
  *(v28 + 160) = MEMORY[0x1E69E7CC0];
  *(v28 + 168) = 0;
  *(v28 + 216) = 0;
  *(v28 + 176) = 0;
  *(v28 + 16) = 0x646F4D646E656C62;
  *(v28 + 24) = 0xE900000000000065;
  *(v28 + 32) = v19;
  *(v28 + 40) = &type metadata for BlendMode;
  *(v28 + 48) = 16;
  *(v28 + 56) = 0;
  *(v28 + 58) = 0;
  *(v28 + 184) = 0;
  *(v28 + 188) = 1;
  *(v28 + 192) = 0;
  *(v28 + 196) = 1;
  *(v28 + 200) = 0x1000100000000;
  *(v28 + 208) = 1;
  *(v28 + 64) = 0;
  *(v28 + 72) = 0;
  *(v28 + 96) = 0;
  *(v28 + 104) = 0;
  *(v28 + 144) = xmmword_1AFE22A20;
  *(v28 + 80) = v27;
  *(v28 + 88) = &off_1F2535378;
  *(v28 + 210) = 0;
  v29 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v29)
  {
    v26 = (*(v29 + 8))();
  }

  v30 = swift_conformsToProtocol2();
  if (v30 && v26)
  {
    *(v28 + 160) = (*(v30 + 8))(v26, v30);
  }

  *(v28 + 64) = sub_1AF58159C;
  *(v28 + 72) = v19;
  sub_1AF0FB8EC(0);
  *(v28 + 168) = 0;
  *(v28 + 176) = 0;

  *(v28 + 216) = v23;
  *(v0 + 56) = v28;
  *(v0 + 64) = sub_1AF577370(2047, 0x6F7475436B73616DLL, 0xEA00000000006666, &type metadata for Skybox, &off_1F2530420, 0x66666F747563, 0xE600000000000000);
  v31 = swift_getKeyPath();
  v32 = swift_allocObject();
  v32[4] = sub_1AF5A941C;
  v32[5] = v31;
  v32[2] = sub_1AF5A9B48;
  v32[3] = v31;
  v32[6] = v31;
  v33 = swift_allocObject();
  *(v33 + 112) = 1;
  *(v33 + 128) = 0;
  *(v33 + 136) = 0;
  *(v33 + 120) = 0;
  *(v33 + 160) = MEMORY[0x1E69E7CC0];
  *(v33 + 168) = 0;
  *(v33 + 216) = 0;
  *(v33 + 176) = 0;
  *(v33 + 16) = 0x66666F747563;
  *(v33 + 24) = 0xE600000000000000;
  *(v33 + 32) = v31;
  *(v33 + 40) = v8;
  *(v33 + 48) = 24;
  *(v33 + 56) = 0;
  *(v33 + 58) = 0;
  *(v33 + 184) = 0;
  *(v33 + 188) = 1;
  *(v33 + 192) = 0;
  *(v33 + 196) = 1;
  *(v33 + 200) = 0x1000100000000;
  *(v33 + 208) = 1;
  *(v33 + 64) = 0;
  *(v33 + 72) = 0;
  *(v33 + 96) = 0;
  *(v33 + 104) = 0;
  *(v33 + 144) = xmmword_1AFE22A20;
  *(v33 + 80) = v32;
  *(v33 + 88) = &off_1F2535378;
  *(v33 + 210) = 0;
  swift_retain_n();
  if (v11)
  {
    v8 = (*(v11 + 8))();
  }

  v34 = swift_conformsToProtocol2();
  if (v34 && v8)
  {
    *(v33 + 160) = (*(v34 + 8))(v8, v34);
  }

  *(v33 + 64) = sub_1AF5A9644;
  *(v33 + 72) = v31;
  sub_1AF0FB8EC(0);
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;

  *(v33 + 216) = 0;
  *(v0 + 72) = v33;
  v35 = swift_getKeyPath();
  v36 = &type metadata for ImageResizingMode;
  sub_1AF5A9240(0, &unk_1EB632560, &type metadata for ImageResizingMode, type metadata accessor for EntityGetSet);
  v37 = swift_allocObject();
  v37[4] = sub_1AF5815DC;
  v37[5] = v35;
  v37[2] = sub_1AF581608;
  v37[3] = v35;
  v37[6] = v35;
  v38 = swift_allocObject();
  *(v38 + 112) = 1;
  *(v38 + 128) = 0;
  *(v38 + 136) = 0;
  *(v38 + 120) = 0;
  *(v38 + 216) = 0;
  *(v38 + 176) = 0;
  *(v38 + 160) = MEMORY[0x1E69E7CC0];
  *(v38 + 168) = 0;
  strcpy((v38 + 16), "resizingMode");
  *(v38 + 29) = 0;
  *(v38 + 30) = -5120;
  *(v38 + 32) = v35;
  *(v38 + 40) = &type metadata for ImageResizingMode;
  *(v38 + 48) = 28;
  *(v38 + 56) = 0;
  *(v38 + 58) = 0;
  *(v38 + 184) = 0;
  *(v38 + 188) = 1;
  *(v38 + 192) = 0;
  *(v38 + 196) = 1;
  *(v38 + 200) = 0x1000100000000;
  *(v38 + 208) = 1;
  *(v38 + 64) = 0;
  *(v38 + 72) = 0;
  *(v38 + 96) = 0;
  *(v38 + 104) = 0;
  *(v38 + 144) = xmmword_1AFE22A20;
  *(v38 + 80) = v37;
  *(v38 + 88) = &off_1F2535378;
  *(v38 + 210) = 0;
  v39 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v39)
  {
    v36 = (*(v39 + 8))();
  }

  v40 = swift_conformsToProtocol2();
  if (v40 && v36)
  {
    *(v38 + 160) = (*(v40 + 8))(v36, v40);
  }

  *(v38 + 64) = sub_1AF581664;
  *(v38 + 72) = v35;
  sub_1AF0FB8EC(0);
  *(v38 + 168) = 0xD00000000000001BLL;
  *(v38 + 176) = 0x80000001AFF2A250;

  *(v38 + 216) = 0;
  *(v0 + 80) = v38;
  qword_1EB6C26F8 = v0;
  return result;
}

uint64_t sub_1AF4A8664()
{
  if (*(v0 + 20))
  {
    return *(v0 + 16);
  }

  else
  {
    return 3;
  }
}

uint64_t sub_1AF4A867C(uint64_t result)
{
  if (result == 3)
  {
    if (*(v1 + 20))
    {
      *(v1 + 16) = 1056964608;
      *(v1 + 20) = 0;
    }
  }

  else
  {
    if (result == 2)
    {
      *(v1 + 16) = 2;
    }

    else
    {
      *(v1 + 16) = result == 1;
    }

    *(v1 + 20) = 1;
  }

  return result;
}

uint64_t sub_1AF4A86F4()
{
  if (qword_1EB631290 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AF4A87FC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5818F4;
  v3[5] = KeyPath;
  v3[2] = sub_1AF581938;
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
  *(v4 + 16) = 0x7469736E65746E69;
  *(v4 + 24) = 0xE900000000000079;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 0;
  *(v4 + 192) = 1092616192;
  *(v4 + 196) = 0;
  *(v4 + 200) = 0x100003C23D70ALL;
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

  *(v4 + 64) = sub_1AF581994;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2D70 = v0;
  return result;
}

uint64_t sub_1AF4A8B78()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for ColorRamp;
  sub_1AF5A9240(0, &qword_1ED722B88, &type metadata for ColorRamp, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF581A34;
  v3[5] = KeyPath;
  v3[2] = sub_1AF581A4C;
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
  *(v4 + 16) = 0x65756C6176;
  *(v4 + 24) = 0xE500000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for ColorRamp;
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

  *(v4 + 64) = sub_1AF581A7C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2AE0 = v0;
  return result;
}

uint64_t sub_1AF4A8EB4()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF581BEC();
  v2 = swift_allocObject();
  v2[4] = sub_1AF581B94;
  v2[5] = KeyPath;
  v2[2] = sub_1AF581BBC;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  *(v3 + 160) = MEMORY[0x1E69E7CC0];
  *(v3 + 216) = 0;
  sub_1AF589E74(0, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
  v5 = v4;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x65756C6176;
  *(v3 + 24) = 0xE500000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 1;
  *(v3 + 192) = 0;
  *(v3 + 196) = 1;
  *(v3 + 200) = 0x1000100000000;
  *(v3 + 208) = 1;
  *(v3 + 96) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 144) = xmmword_1AFE22A20;
  *(v3 + 80) = v2;
  *(v3 + 88) = &off_1F2535378;
  *(v3 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6 && v5)
  {
    v5 = (*(v6 + 8))(v5, v6);
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v5)
  {
    *(v3 + 160) = (*(v7 + 8))(v5, v7);
  }

  v8 = *(v3 + 64);
  *(v3 + 64) = sub_1AF581C70;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  qword_1EB6C2A88 = v0;
  return result;
}
uint64_t sub_1E4A251B0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E4A251D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E4A251F0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1E4A2523C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1E4AAA8A0();
  *a1 = result;
  a1[1] = v5;
  return result;
}

void *sub_1E4A25288@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_1E4A252B4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_1E4A25364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4AAA030();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E4A25420(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E4AAA030();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E4A254D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6F0, qword_1E4AAED40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E4A255A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6F0, qword_1E4AAED40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E4A25678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6F0, qword_1E4AAED40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E4A25740(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6F0, qword_1E4AAED40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E4A2582C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6F0, qword_1E4AAED40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E4A258F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6F0, qword_1E4AAED40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E4A259B8()
{
  v1 = type metadata accessor for WKFlatWallpaperPoster();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E2C0, &qword_1E4AB01A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1E4AAA1C0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v5 + *(v1 + 20);
  sub_1E4A50630(*v8, *(v8 + 1), *(v8 + 2), *(v8 + 3), *(v8 + 4), *(v8 + 5), *(v8 + 6), *(v8 + 7), *(v8 + 8), *(v8 + 9), *(v8 + 10), *(v8 + 11), *(v8 + 12), *(v8 + 13), *(v8 + 14), *(v8 + 15), *(v8 + 16), *(v8 + 17), v8[144]);
  v9 = *(v5 + *(v1 + 24));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E4A25BD8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_1E4A25C34()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_1E4A25C90@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

unint64_t sub_1E4A25D00@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E4A90298(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

uint64_t sub_1E4A25D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 144);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6F0, qword_1E4AAED40);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E4AA9FE0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1E4A25E58(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 144) = -a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6F0, qword_1E4AAED40);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E4AA9FE0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1E4A25F84()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E4A25FBC()
{
  v1 = *(type metadata accessor for WKPosterDynamicRotationState() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = sub_1E4AAA030();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E4A26098(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E678, qword_1E4AB1DF0);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1E4A2614C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E678, qword_1E4AB1DF0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E4A261F8()
{
  sub_1E4A50630(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160));
  v1 = *(v0 + 192);

  return MEMORY[0x1EEE6BDD0](v0, 264, 15);
}

uint64_t sub_1E4A26300()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E4A26344(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1E4A755DC(v4);
}

uint64_t sub_1E4A26378()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E4A263C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4AAA030();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E4A2642C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4AAA030();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E4A2649C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  result = WKWallpaperAdjustmentTraitOffset.screenScaleMode.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1E4A264D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return WKWallpaperAdjustmentTraitOffset.screenScaleMode.setter(v1, v2);
}

uint64_t sub_1E4A26524()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_1E4A265D0(float64x2_t *a1, uint64_t *a2)
{
  v2 = a1[5];
  v3 = a1[7];
  v19 = a1[6];
  v20 = v3;
  v4 = a1[7];
  v21 = a1[8];
  v5 = a1[1];
  v6 = a1[3];
  v15 = a1[2];
  v16 = v6;
  v7 = a1[3];
  v8 = a1[5];
  v17 = a1[4];
  v18 = v8;
  v9 = a1[1];
  v14[0] = *a1;
  v14[1] = v9;
  v13[6] = v19;
  v13[7] = v4;
  v13[8] = a1[8];
  v13[2] = v15;
  v13[3] = v7;
  v13[4] = v17;
  v13[5] = v2;
  v10 = *a2;
  v13[0] = v14[0];
  v13[1] = v5;
  sub_1E4A49D24(v14, &v12);
  return sub_1E4A74D30(v13);
}

uint64_t sub_1E4A2665C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E4A266A4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1E4A26710(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;

  return sub_1E4A74BA0(&v4);
}

uint64_t sub_1E4A26780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6F0, qword_1E4AAED40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E4A26848(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6F0, qword_1E4AAED40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E4A26910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 144);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1E4AA9FE0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E4A269B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 144) = -a2;
  }

  else
  {
    v7 = sub_1E4AA9FE0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

double sub_1E4A26ABC@<D0>(_OWORD *a1@<X8>)
{
  sub_1E4A6FB3C();
  sub_1E4AAA330();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1E4A26B0C(__int128 *a1)
{
  v2 = *a1;
  sub_1E4A6FB3C();
  return sub_1E4AAA340();
}

uint64_t sub_1E4A26B58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EC60, &qword_1E4AB4600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E4A26BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6F0, qword_1E4AAED40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E4A26C8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6F0, qword_1E4AAED40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E4A26D58@<X0>(void *a1@<X8>)
{
  result = sub_1E4AAA2E0();
  *a1 = v3;
  return result;
}

__n128 sub_1E4A26D84@<Q0>(_OWORD *a1@<X8>)
{
  sub_1E4A53380();
  sub_1E4AAA330();
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v11;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  result = v4;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E4A26DF8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_1E4A26E30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E4AAA2F0();
  *a1 = result;
  return result;
}

uint64_t sub_1E4A26E5C(uint64_t *a1)
{
  v1 = *a1;

  return sub_1E4AAA300();
}

uint64_t sub_1E4A26F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6F0, qword_1E4AAED40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E4A26FF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6F0, qword_1E4AAED40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E4A270C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6F0, qword_1E4AAED40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E4A27190(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6F0, qword_1E4AAED40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E4A27260()
{
  sub_1E4AA650C(*(v0 + 16), *(v0 + 24));
  sub_1E4A50630(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176));
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  sub_1E4AA6518();

  return MEMORY[0x1EEE6BDD0](v0, 201, 15);
}

uint64_t sub_1E4A2732C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1E4A27344(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1E4A2EB8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void sub_1E4A2F7B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E4A31194(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id WKLogicalScreenClassString()
{
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v0 _referenceBounds];
  v2 = v1;
  v4 = v3;

  v5 = [MEMORY[0x1E69DC938] currentDevice];
  v6 = [v5 sf_deviceSupportsDisplayZoom];

  if (v6)
  {
    v2 = WKStandardDisplayModeScreenSize();
    v4 = v7;
  }

  v8 = MGCopyAnswer();
  v9 = MEMORY[0x1E696AEC0];
  v10 = MEMORY[0x1E696AD98];
  v11 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v11 scale];
  v12 = [v10 numberWithDouble:?];
  v13 = [v8 lowercaseString];
  v14 = [v9 stringWithFormat:@"%.0fw-%.0fh@%@x~%@", *&v2, v4, v12, v13];

  return v14;
}

double WKStandardDisplayModeScreenSize()
{
  if (WKStandardDisplayModeScreenSize_onceToken != -1)
  {
    WKStandardDisplayModeScreenSize_cold_1();
  }

  return *&WKStandardDisplayModeScreenSize_standardDisplayModeScreenSize_0;
}

uint64_t WKSupportsLiveWallpapers()
{
  if (MGGetBoolAnswer())
  {
    return 1;
  }

  v1 = [MEMORY[0x1E69DC938] currentDevice];
  v2 = [v1 sf_isiPad];

  if (v2)
  {
    return 0;
  }

  return MGGetBoolAnswer();
}

void __WKStandardDisplayModeScreenSize_block_invoke()
{
  v19 = MGCopyAnswer();
  v0 = [v19 objectForKeyedSubscript:@"default"];
  if ([v0 count] == 4)
  {
    v1 = [v0 objectAtIndexedSubscript:1];
    [v1 floatValue];
    v3 = v2;
    v4 = v2;

    v5 = [v0 objectAtIndexedSubscript:3];
    [v5 floatValue];
    v7 = v6;
    v8 = v6;

    v9 = [MEMORY[0x1E69DC938] currentDevice];
    v10 = [v9 sf_isiPad];
    v11 = v3 > v7;

    if ((v10 & v11) != 0)
    {
      *&v12 = v4;
    }

    else
    {
      *&v12 = v8;
    }

    if ((v10 & v11) != 0)
    {
      *&v13 = v8;
    }

    else
    {
      *&v13 = v4;
    }

    WKStandardDisplayModeScreenSize_standardDisplayModeScreenSize_0 = v13;
    WKStandardDisplayModeScreenSize_standardDisplayModeScreenSize_1 = v12;
  }

  else
  {
    v13 = WKStandardDisplayModeScreenSize_standardDisplayModeScreenSize_0;
    v12 = WKStandardDisplayModeScreenSize_standardDisplayModeScreenSize_1;
  }

  if (*&v13 == *MEMORY[0x1E695F060] && *&v12 == *(MEMORY[0x1E695F060] + 8))
  {
    v15 = [MEMORY[0x1E69DCEB0] mainScreen];
    v16 = [v15 fixedCoordinateSpace];
    [v16 bounds];
    WKStandardDisplayModeScreenSize_standardDisplayModeScreenSize_0 = v17;
    WKStandardDisplayModeScreenSize_standardDisplayModeScreenSize_1 = v18;
  }
}

id WKWallpapersBaseURL()
{
  if (WKWallpapersBaseURL_onceToken != -1)
  {
    WKWallpapersBaseURL_cold_1();
  }

  v1 = WKWallpapersBaseURL_baseURL;

  return v1;
}

void __WKWallpapersBaseURL_block_invoke()
{
  v3 = v0 = @"/Library/Wallpaper";
  v1 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];
  v2 = WKWallpapersBaseURL_baseURL;
  WKWallpapersBaseURL_baseURL = v1;
}

id WKAppleInternalWallpapersBaseURL()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 sf_isInternalInstall];

  if (v1)
  {
    if (WKAppleInternalWallpapersBaseURL_onceToken != -1)
    {
      WKAppleInternalWallpapersBaseURL_cold_1();
    }

    v2 = WKAppleInternalWallpapersBaseURL_baseURL;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __WKAppleInternalWallpapersBaseURL_block_invoke()
{
  v3 = v0 = @"/AppleInternal/Library/Wallpaper";
  v1 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];
  v2 = WKAppleInternalWallpapersBaseURL_baseURL;
  WKAppleInternalWallpapersBaseURL_baseURL = v1;
}

double WKRotationDegreesForInterfaceOrientation(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      return 0.0;
    case 3:
      return 90.0;
    case 4:
      return -90.0;
  }

  result = 180.0;
  if (a1 != 2)
  {
    return 0.0;
  }

  return result;
}

double WKRotationRadiansForInterfaceOrientation(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      return 0.0;
    case 3:
      return 1.57079633;
    case 4:
      return -1.57079633;
  }

  result = 3.14159265;
  if (a1 != 2)
  {
    return 0.0;
  }

  return result;
}

__CFString *WKStringForInterfaceOrientation(uint64_t a1)
{
  v1 = @"UIInterfaceOrientationLandscapeRight";
  v2 = @"UIInterfaceOrientationLandscapeLeft";
  v3 = @"UIInterfaceOrientationPortraitUpsideDown";
  if (a1 != 2)
  {
    v3 = 0;
  }

  if (a1 != 4)
  {
    v2 = v3;
  }

  if (a1 != 3)
  {
    v1 = v2;
  }

  if (a1 == 1)
  {
    return @"UIInterfaceOrientationPortrait";
  }

  else
  {
    return v1;
  }
}

void WKSetApplicationSpecificInformation(void *a1)
{
  v3 = a1;
  v1 = strdup([v3 UTF8String]);
  v2 = qword_1EE0441D0;
  qword_1EE0441D0 = v1;
  if (v2)
  {
    free(v2);
  }
}

double WKPosterCanvasSize()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v0 userInterfaceIdiom])
  {
    v1 = 119.0;
  }

  else
  {
    v1 = 64.0;
  }

  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  v3 = [v2 fixedCoordinateSpace];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v16.origin.x = v5;
  v16.origin.y = v7;
  v16.size.width = v9;
  v16.size.height = v11;
  Height = CGRectGetHeight(v16);
  v13 = Height * Height;
  v17.origin.x = v5;
  v17.origin.y = v7;
  v17.size.width = v9;
  v17.size.height = v11;
  Width = CGRectGetWidth(v17);
  return round(sqrt(v13 + Width * Width)) + v1 * 2.0;
}

__CFString *WKCurrentScreenScaleMode()
{
  v0 = WKStandardDisplayModeScreenSize();
  v2 = v1;
  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  v4 = [v3 fixedCoordinateSpace];
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  v9 = [MEMORY[0x1E69DC938] currentDevice];
  if (![v9 sf_deviceSupportsDisplayZoom])
  {

    return @"screenScaleModeStandard";
  }

  if (v0 == v6 && v2 == v8)
  {
    return @"screenScaleModeStandard";
  }

  if (v8 < v2 && v6 < v0)
  {
    return @"screenScaleModeZoomed";
  }

  else
  {
    return @"screenScaleModeMoreSpace";
  }
}

void sub_1E4A35194(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t WKWallpaperTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Still"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"Live"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Thumbnail"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"LayeredThumbnail"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"LayeredStill"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"LayeredStripe"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"Bokeh"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"LayeredAnimation"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"ParameterizedCA"])
  {
    v2 = 8;
  }

  else
  {
    v3 = MEMORY[0x1E695DF30];
    v4 = *MEMORY[0x1E695D940];
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: Unable to resolve wallpaper type from string: '%@'", "WKWallpaperType WKWallpaperTypeFromString(NSString *__strong _Nonnull)", v1];
    v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];

    [v6 raise];
    v2 = -1;
  }

  return v2;
}

__CFString *WKStringFromWallpaperType(unint64_t a1)
{
  if (a1 < 9)
  {
    return off_1E8766E18[a1];
  }

  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D940];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  v6 = [v4 stringWithFormat:@"%s: Unknown wallpaper type value: '%@'", "NSString * _Nonnull WKStringFromWallpaperType(WKWallpaperType)", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];

  [v7 raise];
  return 0;
}

__CFString *WKStringFromWallpaperBackingType(uint64_t a1)
{
  if (!a1)
  {
    return @"File";
  }

  if (a1 == 1)
  {
    return @"Value";
  }

  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D940];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  v6 = [v4 stringWithFormat:@"%s: Invalid backing type value: '%@'", "NSString * _Nonnull WKStringFromWallpaperBackingType(WKWallpaperBackingType)", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];

  [v7 raise];
  return 0;
}

id WK_LocalizedString(void *a1)
{
  v1 = a1;
  v2 = WKBundleForWallpaperKitFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:0];

  return v3;
}

id WKBundleForWallpaperKitFramework()
{
  if (WKBundleForWallpaperKitFramework_onceToken != -1)
  {
    WKBundleForWallpaperKitFramework_cold_1();
  }

  v1 = WKBundleForWallpaperKitFramework__wallpaperKitFrameworkBundle;

  return v1;
}

uint64_t __WKBundleForWallpaperKitFramework_block_invoke()
{
  WKBundleForWallpaperKitFramework__wallpaperKitFrameworkBundle = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

  return MEMORY[0x1EEE66BB8]();
}

void sub_1E4A36C00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E4A37C0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a2 + 4) = a3;
  *(a2 + 12) = 2114;
  *(a2 + 14) = result;
  return result;
}

void OUTLINED_FUNCTION_1_0(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

void WKRectApplyScale(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  memset(&v10, 0, sizeof(v10));
  CGAffineTransformMakeScale(&v10, a5, a5);
  v9 = v10;
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectApplyAffineTransform(v11, &v9);
}

uint64_t WKSizeGreaterThanOrEqualToSize(double a1, double a2, double a3, double a4)
{
  v4 = vabdd_f64(a1, a3);
  if (a1 <= a3 && v4 >= 2.22044605e-16)
  {
    return 0;
  }

  v6 = vabdd_f64(a2, a4) < 2.22044605e-16;
  return a2 > a4 || v6;
}

void sub_1E4A391B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E4A3C434(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E4A3F234(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E4A41308(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E4A41D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak((v24 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E4A42C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, char a18)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a18, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1E4A42E14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E4A438E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E4A43CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E4A43FDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *OUTLINED_FUNCTION_1_1(void *result)
{
  result[13] = 1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  result[7] = 0x3FF0000000000000;
  return result;
}

id WKLogForCategory(unint64_t a1)
{
  if (a1 >= 0xA)
  {
    WKLogForCategory_cold_2();
  }

  if (WKLogForCategory_loggingToken != -1)
  {
    WKLogForCategory_cold_1();
  }

  v2 = WKLogForCategory_logObjects[a1];

  return v2;
}

uint64_t __WKLogForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.WallpaperKit", "Base");
  v1 = WKLogForCategory_logObjects[0];
  WKLogForCategory_logObjects[0] = v0;

  v2 = os_log_create("com.apple.WallpaperKit", "Import");
  v3 = qword_1EE048AB0;
  qword_1EE048AB0 = v2;

  v4 = os_log_create("com.apple.WallpaperKit", "DefaultWallpaper");
  v5 = qword_1EE048AB8;
  qword_1EE048AB8 = v4;

  v6 = os_log_create("com.apple.WallpaperKit", "Processing");
  v7 = qword_1EE048AC0;
  qword_1EE048AC0 = v6;

  v8 = os_log_create("com.apple.WallpaperKit", "Collections");
  v9 = qword_1EE048AC8;
  qword_1EE048AC8 = v8;

  v10 = os_log_create("com.apple.WallpaperKit", "PerformanceSignposts");
  v11 = qword_1EE048AD0;
  qword_1EE048AD0 = v10;

  v12 = os_log_create("com.apple.WallpaperKit", "Migration");
  v13 = qword_1EE048AD8;
  qword_1EE048AD8 = v12;

  v14 = os_log_create("com.apple.WallpaperKit", "SystemShellWallpaperManager");
  v15 = qword_1EE048AE0;
  qword_1EE048AE0 = v14;

  v16 = os_log_create("com.apple.WallpaperKit", "WallpaperManager");
  v17 = qword_1EE048AE8;
  qword_1EE048AE8 = v16;

  qword_1EE048AF0 = os_log_create("com.apple.WallpaperKit", "PhotoLibraryManager");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1E4A452FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t WKBokehWallpaper.wallpaperValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) wallpaperValue];
  type metadata accessor for WKBokehWallpaperInput.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  *(a1 + 8) = 3;
  return result;
}

uint64_t WKBokehWallpaper.thumbnailImageURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) thumbnailImageURL];
  if (v3)
  {
    v4 = v3;
    sub_1E4AA9FC0();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1E4AA9FE0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

id WKBokehWallpaper.thumbnailImage.getter()
{
  v1 = [*(*v0 + 16) thumbnailImage];

  return v1;
}

uint64_t WKBokehWallpaper.init(identifier:name:backgroundColors:bubbleColors:bubbleCount:bubbleScale:parallaxMultiplier:thumbnailSeed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = objc_allocWithZone(WKBokehWallpaper);
  v13 = sub_1E4AAA870();

  sub_1E4A459A0();
  v14 = sub_1E4AAA940();

  v15 = sub_1E4AAA940();

  v16 = [v12 initWithIdentifier:a1 name:v13 backgroundColors:v14 bubbleColors:v15 bubbleCount:a2 bubbleScale:a3 parallaxMultiplier:a5 thumbnailSeed:a6];

  type metadata accessor for WKBokehWallpaper.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v16;
  *a4 = result;
  return result;
}

unint64_t sub_1E4A459A0()
{
  result = qword_1EE042130;
  if (!qword_1EE042130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE042130);
  }

  return result;
}

Swift::OpaquePointer_optional __swiftcall WKBokehWallpaper.propertyListRepresentation()()
{
  v1 = [*(*v0 + 16) propertyListRepresentation];
  if (v1)
  {
    v3 = v1;
    v4 = sub_1E4AAA810();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  result.value._rawValue = v5;
  result.is_nil = v2;
  return result;
}

id WKBokehWallpaper.copyWallpaperContents(to:)()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = *(*v0 + 16);
  v2 = sub_1E4AA9FA0();
  v7[0] = 0;
  v3 = [v1 copyWallpaperContentsToDestinationDirectoryURL:v2 error:v7];

  if (v3)
  {
    result = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_1E4AA9F60();

    result = swift_willThrow();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E4A45B5C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E4A45B94@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) wallpaperValue];
  type metadata accessor for WKBokehWallpaperInput.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  *(a1 + 8) = 3;
  return result;
}

uint64_t sub_1E4A45CA4()
{
  v1 = [*(*v0 + 16) propertyListRepresentation];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4AAA810();

  return v3;
}

uint64_t sub_1E4A45D30@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) thumbnailImageURL];
  if (v3)
  {
    v4 = v3;
    sub_1E4AA9FC0();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1E4AA9FE0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

id sub_1E4A45DD8()
{
  v1 = [*(*v0 + 16) thumbnailImage];

  return v1;
}

id sub_1E4A45E14@<X0>(void *a1@<X8>)
{
  result = [*(*v1 + 16) identifier];
  *a1 = result;
  return result;
}

uint64_t WKBokehWallpaper.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKBokehWallpaper.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

uint64_t sub_1E4A45F5C()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

uint64_t sub_1E4A45FBC()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t sub_1E4A4600C()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

uint64_t sub_1E4A46074(SEL *a1)
{
  v2 = [*(*v1 + 16) *a1];
  v3 = sub_1E4AAA8A0();

  return v3;
}

unint64_t sub_1E4A460D0(uint64_t a1)
{
  result = sub_1E4A460F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4A460F8()
{
  result = qword_1EE043290[0];
  if (!qword_1EE043290[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE043290);
  }

  return result;
}

uint64_t sub_1E4A46168(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*(*v3 + 16) *a3];
  v5 = sub_1E4AAA8A0();

  return v5;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for WKBokehWallpaper(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for WKBokehWallpaper(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E4A46318(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for WKPosterEnvironmentSnapshot(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy32_16(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1E4A4642C(uint64_t a1)
{
  v2 = sub_1E4A46C2C(&qword_1ECF8DF30, type metadata accessor for WKWallpaperKitError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1E4A46498(uint64_t a1)
{
  v2 = sub_1E4A46C2C(&qword_1ECF8DF30, type metadata accessor for WKWallpaperKitError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1E4A46508(uint64_t a1)
{
  v2 = sub_1E4A46C2C(&qword_1ECF8DF68, type metadata accessor for WKWallpaperKitError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1E4A4657C(uint64_t a1, id *a2)
{
  result = sub_1E4AAA880();
  *a2 = 0;
  return result;
}

uint64_t sub_1E4A465F4(uint64_t a1, id *a2)
{
  v3 = sub_1E4AAA890();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1E4A46674@<X0>(uint64_t *a1@<X8>)
{
  sub_1E4AAA8A0();
  v2 = sub_1E4AAA870();

  *a1 = v2;
  return result;
}

uint64_t sub_1E4A466B8()
{
  v1 = *v0;
  sub_1E4AAAE00();
  MEMORY[0x1E691F1E0](v1);
  return sub_1E4AAAE40();
}

uint64_t sub_1E4A4672C()
{
  v1 = *v0;
  sub_1E4AAAE00();
  MEMORY[0x1E691F1E0](v1);
  return sub_1E4AAAE40();
}

uint64_t sub_1E4A46780(uint64_t a1)
{
  v2 = sub_1E4A46C2C(&qword_1ECF8DF68, type metadata accessor for WKWallpaperKitError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1E4A467EC(uint64_t a1)
{
  v2 = sub_1E4A46C2C(&qword_1ECF8DF68, type metadata accessor for WKWallpaperKitError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1E4A46858(void *a1, uint64_t a2)
{
  v4 = sub_1E4A46C2C(&qword_1ECF8DF68, type metadata accessor for WKWallpaperKitError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1E4A4690C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4A46C2C(&qword_1ECF8DF68, type metadata accessor for WKWallpaperKitError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1E4A46988()
{
  v2 = *v0;
  sub_1E4AAAE00();
  sub_1E4AAA840();
  return sub_1E4AAAE40();
}

uint64_t sub_1E4A469E8(uint64_t a1)
{
  v2 = sub_1E4A46C2C(&qword_1ECF8DF70, type metadata accessor for WKWallpaperLocation);
  v3 = sub_1E4A46C2C(&unk_1ECF8DF78, type metadata accessor for WKWallpaperLocation);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1E4A46AA4(uint64_t a1)
{
  v2 = sub_1E4A46C2C(&qword_1EE042190, type metadata accessor for WKWallpaperAppearance);
  v3 = sub_1E4A46C2C(&qword_1ECF8DF88, type metadata accessor for WKWallpaperAppearance);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1E4A46B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4A46C2C(&qword_1ECF8DF68, type metadata accessor for WKWallpaperKitError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1E4A46C2C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E4A46FEC()
{
  result = qword_1ECF8DF58;
  if (!qword_1ECF8DF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8DF58);
  }

  return result;
}

uint64_t sub_1E4A470D0(uint64_t a1)
{
  v2 = sub_1E4A46C2C(&qword_1ECF8E050, type metadata accessor for WKWallpaperRepresentingLogicalScreenClass);
  v3 = sub_1E4A46C2C(&qword_1ECF8E058, type metadata accessor for WKWallpaperRepresentingLogicalScreenClass);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1E4A4718C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1E4AAA870();

  *a2 = v5;
  return result;
}

uint64_t sub_1E4A471D4(uint64_t a1)
{
  v2 = sub_1E4A46C2C(&qword_1ECF8E040, type metadata accessor for WKWallpaperKitDataKey);
  v3 = sub_1E4A46C2C(&qword_1ECF8E048, type metadata accessor for WKWallpaperKitDataKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

void sub_1E4A472CC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1E4A473A8()
{
  v1 = *v0;
  v2 = sub_1E4AAA8A0();
  v3 = MEMORY[0x1E691ECE0](v2);

  return v3;
}

uint64_t sub_1E4A473E4()
{
  v1 = *v0;
  sub_1E4AAA8A0();
  sub_1E4AAA8C0();
}

uint64_t sub_1E4A47438()
{
  v1 = *v0;
  sub_1E4AAA8A0();
  sub_1E4AAAE00();
  sub_1E4AAA8C0();
  v2 = sub_1E4AAAE40();

  return v2;
}

uint64_t sub_1E4A474AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1E4AAA8A0();
  v6 = v5;
  if (v4 == sub_1E4AAA8A0() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E4AAADA0();
  }

  return v9 & 1;
}

uint64_t sub_1E4A476B4()
{
  v1 = [v0 elements];
  if (!v1)
  {
    goto LABEL_30;
  }

  v2 = v1;
  v3 = sub_1E4AAA950();

  v4 = *(v3 + 16);
  if (!v4)
  {

    v5 = 0;
    v8 = MEMORY[0x1E69E7CC8];
LABEL_25:
    sub_1E4A27344(v5);
    return v8;
  }

  v5 = 0;
  v6 = 0;
  v7 = v3 + 32;
  v8 = MEMORY[0x1E69E7CC8];
  v28 = *(v3 + 16);
  v29 = v3;
  while (v6 < *(v3 + 16))
  {
    sub_1E4A479C0(v7, &v31);
    sub_1E4A47A2C(0, &qword_1EE0421E8, 0x1E69794F0);
    if (swift_dynamicCast())
    {
      v12 = [v30 target];
      if (!v12)
      {
        goto LABEL_29;
      }

      v13 = v12;
      sub_1E4A27344(v5);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v8;
      v16 = sub_1E4A8F224(v13);
      v17 = v8[2];
      v18 = (v15 & 1) == 0;
      v19 = v17 + v18;
      if (__OFADD__(v17, v18))
      {
        goto LABEL_27;
      }

      v20 = v15;
      if (v8[3] >= v19)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v8 = v31;
          if ((v15 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        else
        {
          sub_1E4A6782C();
          v8 = v31;
          if ((v20 & 1) == 0)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
        sub_1E4A6570C(v19, isUniquelyReferenced_nonNull_native);
        sub_1E4A47A2C(0, &qword_1EE042150, 0x1E6979398);
        v21 = sub_1E4A8F224(v13);
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_31;
        }

        v16 = v21;
        v8 = v31;
        if ((v20 & 1) == 0)
        {
LABEL_18:
          v8[(v16 >> 6) + 8] |= 1 << v16;
          *(v8[6] + 8 * v16) = v13;
          *(v8[7] + 8 * v16) = MEMORY[0x1E69E7CC0];
          v23 = v8[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_28;
          }

          v8[2] = v25;
          v9 = v13;
        }
      }

      v10 = (v8[7] + 8 * v16);
      v11 = v30;
      MEMORY[0x1E691ED00]();
      if (*((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v26 = *((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1E4AAA960();
      }

      sub_1E4AAA970();

      v5 = sub_1E4A47A1C;
      v4 = v28;
      v3 = v29;
    }

    ++v6;
    v7 += 32;
    if (v4 == v6)
    {

      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_1E4AAADB0();
  __break(1u);
  return result;
}

uint64_t sub_1E4A479C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1E4A47A2C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1E4A47AF8@<X0>(SEL *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [*(*v2 + 16) *a1];
  if (v4)
  {
    v5 = v4;
    sub_1E4AA9FC0();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_1E4AA9FE0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

uint64_t WKLayeredStillWallpaperInput.init(backgroundThumbnailImageURL:foregroundThumbnailImageURL:floatingThumbnailImageURL:backgroundFullSizeImageURL:foregroundFullSizeImageURL:floatingFullSizeImageURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v55 = a6;
  v56 = a5;
  v54 = a7;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40) - 8) + 64);
  v12 = (MEMORY[0x1EEE9AC00])();
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v47 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v47 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v47 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v47 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v47 - v27;
  v53 = a1;
  sub_1E4A48054(a1, &v47 - v27);
  v52 = a2;
  sub_1E4A48054(a2, v26);
  v51 = a3;
  sub_1E4A48054(a3, v23);
  v50 = a4;
  v48 = v20;
  sub_1E4A48054(a4, v20);
  v29 = v17;
  sub_1E4A48054(v56, v17);
  v49 = v14;
  sub_1E4A48054(v55, v14);
  v30 = sub_1E4AA9FE0();
  v31 = *(v30 - 8);
  v32 = *(v31 + 48);
  v33 = 0;
  if (v32(v28, 1, v30) != 1)
  {
    v33 = sub_1E4AA9FA0();
    (*(v31 + 8))(v28, v30);
  }

  if (v32(v26, 1, v30) == 1)
  {
    v47 = 0;
  }

  else
  {
    v47 = sub_1E4AA9FA0();
    (*(v31 + 8))(v26, v30);
  }

  v34 = v29;
  v35 = v32(v23, 1, v30);
  v36 = v48;
  if (v35 == 1)
  {
    v37 = 0;
  }

  else
  {
    v37 = sub_1E4AA9FA0();
    (*(v31 + 8))(v23, v30);
  }

  if (v32(v36, 1, v30) == 1)
  {
    v38 = 0;
  }

  else
  {
    v38 = sub_1E4AA9FA0();
    (*(v31 + 8))(v36, v30);
  }

  v39 = v33;
  if (v32(v34, 1, v30) == 1)
  {
    v40 = 0;
  }

  else
  {
    v40 = sub_1E4AA9FA0();
    (*(v31 + 8))(v34, v30);
  }

  v41 = v49;
  if (v32(v49, 1, v30) == 1)
  {
    v42 = 0;
  }

  else
  {
    v42 = sub_1E4AA9FA0();
    (*(v31 + 8))(v41, v30);
  }

  v43 = objc_allocWithZone(WKLayeredStillWallpaperInput);
  v44 = v47;
  v45 = [v43 initWithBackgroundThumbnailImageURL:v39 foregroundThumbnailImageURL:v47 floatingThumbnailImageURL:v37 backgroundFullSizeImageURL:v38 foregroundFullSizeImageURL:v40 floatingFullSizeImageURL:v42];

  sub_1E4A480C4(v55);
  sub_1E4A480C4(v56);
  sub_1E4A480C4(v50);
  sub_1E4A480C4(v51);
  sub_1E4A480C4(v52);
  sub_1E4A480C4(v53);
  type metadata accessor for WKLayeredStillWallpaperInput.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v45;
  *v54 = result;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E4A48054(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4A480C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WKLayeredStillWallpaperInput.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKLayeredStillWallpaperInput.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

uint64_t WKLayeredStillWallpaperInput.description.getter()
{
  v1 = [*(*v0 + 16) description];
  v2 = sub_1E4AAA8A0();

  return v2;
}

unint64_t sub_1E4A48290()
{
  result = qword_1ECF8E1E0;
  if (!qword_1ECF8E1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E1E0);
  }

  return result;
}

uint64_t sub_1E4A482E4()
{
  v1 = [*(*v0 + 16) description];
  v2 = sub_1E4AAA8A0();

  return v2;
}

uint64_t type metadata accessor for WKPosterDynamicRotationAnimationState()
{
  result = qword_1EE042638;
  if (!qword_1EE042638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4A483C4()
{
  sub_1E4AAA030();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UIInterfaceOrientation(319);
    if (v1 <= 0x3F)
    {
      sub_1E4A48474();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1E4A48474()
{
  result = qword_1EE0421A0;
  if (!qword_1EE0421A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0421A0);
  }

  return result;
}

_BYTE *WKPosterUnlockState.init(screenState:progress:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = *result;
  *(a2 + 8) = a3;
  return result;
}

double sub_1E4A48550@<D0>(void *a1@<X0>, _BYTE *a2@<X1>, double *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a3;
    v7 = a4;
    swift_once();
    a2 = v5;
    a4 = v7;
    a3 = v6;
  }

  result = *a3;
  *a4 = *a2;
  *(a4 + 8) = result;
  return result;
}

uint64_t WKPosterUnlockState.ScreenState.description.getter()
{
  v1 = 0x64656B636F6C6E75;
  if (*v0 != 1)
  {
    v1 = 0x697469736E617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656B636F6CLL;
  }
}

uint64_t sub_1E4A486B0()
{
  v1 = 0x64656B636F6C6E75;
  if (*v0 != 1)
  {
    v1 = 0x697469736E617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656B636F6CLL;
  }
}

unint64_t WKPosterUnlockState.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1E4AAABC0();

  v3 = 0xE800000000000000;
  v4 = 0x64656B636F6C6E75;
  if (v1 != 1)
  {
    v4 = 0x697469736E617274;
    v3 = 0xED0000676E696E6FLL;
  }

  if (v1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x64656B636F6CLL;
  }

  if (v1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  MEMORY[0x1E691ECA0](v5, v6);

  MEMORY[0x1E691ECA0](0x6572676F7270202CLL, 0xEC000000203A7373);
  v7 = sub_1E4AAA990();
  MEMORY[0x1E691ECA0](v7);

  MEMORY[0x1E691ECA0](125, 0xE100000000000000);
  return 0xD000000000000023;
}

uint64_t WKPosterUnlockState.ScreenState.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  MEMORY[0x1E691F1E0](v1);
  return sub_1E4AAAE40();
}

uint64_t sub_1E4A488BC()
{
  v1 = *v0;
  sub_1E4AAAE00();
  MEMORY[0x1E691F1E0](v1);
  return sub_1E4AAAE40();
}

uint64_t sub_1E4A48904()
{
  v1 = *v0;
  sub_1E4AAAE00();
  MEMORY[0x1E691F1E0](v1);
  return sub_1E4AAAE40();
}

uint64_t WKPosterUnlockState.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1E691F1E0](*v0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x1E691F200](*&v2);
}

uint64_t WKPosterUnlockState.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E4AAAE00();
  MEMORY[0x1E691F1E0](v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x1E691F200](*&v3);
  return sub_1E4AAAE40();
}

uint64_t sub_1E4A48A04()
{
  v1 = v0[1];
  MEMORY[0x1E691F1E0](*v0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x1E691F200](*&v2);
}

uint64_t sub_1E4A48A50()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E4AAAE00();
  MEMORY[0x1E691F1E0](v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x1E691F200](*&v3);
  return sub_1E4AAAE40();
}

unint64_t sub_1E4A48ABC()
{
  result = qword_1ECF8E1F8;
  if (!qword_1ECF8E1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E1F8);
  }

  return result;
}

unint64_t sub_1E4A48B14()
{
  result = qword_1ECF8E200;
  if (!qword_1ECF8E200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E200);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WKPosterUnlockState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for WKPosterUnlockState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WKPosterUnlockState.ScreenState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WKPosterUnlockState.ScreenState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for WKStripesWallpaperPosterOverlay()
{
  result = qword_1EE044118;
  if (!qword_1EE044118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4A48DD8()
{
  sub_1E4A48E74();
  if (v0 <= 0x3F)
  {
    sub_1E4A48ECC();
    if (v1 <= 0x3F)
    {
      sub_1E4A48F1C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E4A48E74()
{
  if (!qword_1EE042448)
  {
    sub_1E4AAA1C0();
    v0 = sub_1E4AAA1D0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE042448);
    }
  }
}

void sub_1E4A48ECC()
{
  if (!qword_1EE042460)
  {
    v0 = sub_1E4AAA1D0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE042460);
    }
  }
}

unint64_t sub_1E4A48F1C()
{
  result = qword_1EE042D08[0];
  if (!qword_1EE042D08[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EE042D08);
  }

  return result;
}

uint64_t sub_1E4A48F9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E230, &qword_1E4AAEE48);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E4AAED30;
  if (qword_1EE042AA8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE048BD0;
  *(v0 + 32) = sub_1E4AAA5C0();
  if (qword_1EE042A80 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE048BB8;
  *(v0 + 40) = sub_1E4AAA5C0();
  if (qword_1EE042A98 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE048BC8;
  *(v0 + 48) = sub_1E4AAA5C0();
  if (qword_1EE042AC0 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE048BE0;
  *(v0 + 56) = sub_1E4AAA5C0();
  if (qword_1EE042A88 != -1)
  {
    swift_once();
  }

  v5 = qword_1EE048BC0;
  *(v0 + 64) = sub_1E4AAA5C0();
  if (qword_1EE042AB0 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE048BD8;
  result = sub_1E4AAA5C0();
  *(v0 + 72) = result;
  off_1EE043128 = v0;
  return result;
}

uint64_t sub_1E4A49188@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E208, &qword_1E4AAEDD0);
  v10 = *(v2 - 8);
  v3 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v10 - v4);
  sub_1E4A49404(&v11);
  if (v11)
  {
    *v5 = sub_1E4AAA6F0();
    v5[1] = v6;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E210, &unk_1E4AAEDD8) + 44);
    if (qword_1EE043120 != -1)
    {
      swift_once();
    }

    v11 = off_1EE043128;
    swift_getKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E218, &qword_1E4AAEE00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E220, &qword_1E4AAEE08);
    sub_1E4A49E30(&qword_1EE042210, &qword_1ECF8E218, &qword_1E4AAEE00);
    sub_1E4A49A4C();
    sub_1E4A49AA0();
    sub_1E4AAA6C0();
    sub_1E4A49BAC(v5, a1);
    return (*(v10 + 56))(a1, 0, 1, v2);
  }

  else
  {
    v9 = *(v10 + 56);

    return v9(a1, 1, 1, v2);
  }
}

uint64_t sub_1E4A49404@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1E4AAA1C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1E4AAA320();
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WKStripesWallpaperPosterOverlay();
  v13 = (v1 + *(v12 + 24));
  v14 = v13[3];
  v15 = v13[4];
  v41 = __swift_project_boxed_opaque_existential_1(v13, v14);
  v16 = v1 + *(v12 + 20);
  v17 = *(v16 + 112);
  v18 = *(v16 + 80);
  v78 = *(v16 + 96);
  v79 = v17;
  v19 = *(v16 + 112);
  v80 = *(v16 + 128);
  v20 = *(v16 + 48);
  v21 = *(v16 + 16);
  v74 = *(v16 + 32);
  v75 = v20;
  v22 = *(v16 + 48);
  v23 = *(v16 + 80);
  v76 = *(v16 + 64);
  v77 = v23;
  v24 = *(v16 + 16);
  v72 = *v16;
  v73 = v24;
  v82[6] = v78;
  v82[7] = v19;
  v82[8] = *(v16 + 128);
  v82[2] = v74;
  v82[3] = v22;
  v82[4] = v76;
  v82[5] = v18;
  v81 = *(v16 + 144);
  v83 = *(v16 + 144);
  v82[0] = v72;
  v82[1] = v21;
  if (sub_1E4A49C60(v82) == 1)
  {
    nullsub_1(v82);
    v49 = v78;
    v50 = v79;
    v51 = v80;
    v52 = v81;
    v45 = v74;
    v46 = v75;
    v47 = v76;
    v48 = v77;
    v43 = v72;
    v44 = v73;
    v25 = nullsub_1(&v43);
    v63 = *v25;
    v26 = v25[1];
    v27 = v25[2];
    v28 = v25[4];
    v66 = v25[3];
    v67 = v28;
    v64 = v26;
    v65 = v27;
    v29 = v25[5];
    v30 = v25[6];
    v31 = v25[8];
    v70 = v25[7];
    v71 = v31;
    v68 = v29;
    v69 = v30;
    v62 = v81;
    v60 = v79;
    v61 = v80;
    v58 = v77;
    v59 = v78;
    v56 = v75;
    v57 = v76;
    v54 = v73;
    v55 = v74;
    v53 = v72;
    v32 = nullsub_1(&v53);
    sub_1E4A49D24(v32, &v42);
  }

  else
  {
    nullsub_1(v82);
    v49 = v78;
    v50 = v79;
    v51 = v80;
    v52 = v81;
    v45 = v74;
    v46 = v75;
    v47 = v76;
    v48 = v77;
    v43 = v72;
    v44 = v73;
    v38[1] = *nullsub_1(&v43);
    v38[2] = v1;
    v53 = v72;
    v54 = v73;
    v57 = v76;
    v58 = v77;
    v55 = v74;
    v56 = v75;
    v62 = v81;
    v60 = v79;
    v61 = v80;
    v59 = v78;
    v33 = *nullsub_1(&v53);

    sub_1E4AAAA10();
    v34 = v14;
    v35 = v4;
    v36 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    v4 = v35;
    v14 = v34;
    sub_1E4AAA310();
    swift_getAtKeyPath();
    sub_1E4A49C68(&v72);
    (*(v39 + 8))(v11, v40);
  }

  v49 = v69;
  v50 = v70;
  v51 = v71;
  v45 = v65;
  v46 = v66;
  v47 = v67;
  v48 = v68;
  v43 = v63;
  v44 = v64;
  sub_1E4A96CDC(v7);
  sub_1E4A7D600(&v43, v7, v14, v15, a1);
  (*(v4 + 8))(v7, v3);
  v59 = v49;
  v60 = v50;
  v61 = v51;
  v55 = v45;
  v56 = v46;
  v57 = v47;
  v58 = v48;
  v53 = v43;
  v54 = v44;
  return sub_1E4A49CD0(&v53);
}

uint64_t sub_1E4A49840@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a1;
  if (qword_1EE043120 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v8 = off_1EE043128;
    v9 = *(off_1EE043128 + 2);
    if (!v9)
    {
      break;
    }

    v3 = 0;
    v4 = off_1EE043128 + 32;
    while (v3 < v8[2])
    {
      v10 = *&v4[8 * v3];

      v11 = sub_1E4AAA5D0();

      if (v11)
      {
        goto LABEL_8;
      }

      if (v9 == ++v3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_15:
    swift_once();
  }

LABEL_7:
  __break(1u);
LABEL_8:
  v12 = v8[2];
  if (v12)
  {
    v13 = *&v4[8 * v12 - 8];

    v14 = sub_1E4AAA5D0();
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a2 + 16);
  [v15 stripeAngleDegrees];
  v17 = v16;
  [v15 firstStripeOffsetScaleFactor];
  v19 = v18;
  [v15 stripeHeightFactor];
  v21 = v20;
  KeyPath = swift_getKeyPath();
  *a3 = v3;
  *(a3 + 8) = v14 & 1;
  *(a3 + 16) = v17;
  *(a3 + 24) = v19;
  *(a3 + 32) = v21;
  *(a3 + 40) = KeyPath;
  *(a3 + 48) = v7;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1E4A49A4C()
{
  result = qword_1EE042288;
  if (!qword_1EE042288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042288);
  }

  return result;
}

unint64_t sub_1E4A49AA0()
{
  result = qword_1EE042418;
  if (!qword_1EE042418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E220, &qword_1E4AAEE08);
    sub_1E4A49B58();
    sub_1E4A49E30(&qword_1EE043998, &qword_1ECF8E228, &qword_1E4AAEE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042418);
  }

  return result;
}

unint64_t sub_1E4A49B58()
{
  result = qword_1EE043018;
  if (!qword_1EE043018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043018);
  }

  return result;
}

uint64_t sub_1E4A49BAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E208, &qword_1E4AAEDD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1E4A49C68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E700, &qword_1E4AAEE50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E4A49D80()
{
  result = qword_1EE042238;
  if (!qword_1EE042238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E238, &qword_1E4AAEE58);
    sub_1E4A49E30(&qword_1EE042240, &qword_1ECF8E208, &qword_1E4AAEDD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042238);
  }

  return result;
}

uint64_t sub_1E4A49E30(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy48_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1E4A49E8C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E4A49EAC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

void sub_1E4A49EF4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E270, &qword_1E4AAEF10);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v84 = &v73[-v3];
  v83 = type metadata accessor for WKParameterizedCAWallpaperParallaxParameter(0);
  v4 = *(v83 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v73[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E278, &qword_1E4AAEF18);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v87 = &v73[-v9];
  v86 = type metadata accessor for WKParameterizedCAWallpaperStateParameter(0);
  v10 = *(v86 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v81 = &v73[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1ECF8DD18 != -1)
  {
    swift_once();
  }

  v13 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v13, qword_1ECF92348);
  v14 = v0;
  v15 = sub_1E4AAA0C0();
  v16 = sub_1E4AAA9F0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134218240;
    v18 = &v14[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_state];
    *(v17 + 4) = *&v14[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_state];
    *(v17 + 12) = 2048;
    *(v17 + 14) = v18[1];
    _os_log_impl(&dword_1E4A23000, v15, v16, "updateWithCurrentWallpaperState unlock: %f wake: %f", v17, 0x16u);
    MEMORY[0x1E691FE80](v17, -1, -1);
  }

  v19 = *&v14[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_parameters];
  if (v19)
  {
    v88 = v4;
    v20 = objc_opt_self();

    v21 = [v20 disableActions];
    [v20 begin];
    [v20 setDisableActions_];
    v22 = *&v14[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_state + 16];
    v23 = *&v14[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_state + 24];
    v24 = *&v14[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_state + 32];
    v25 = *&v14[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_state + 40];
    v80 = &v14[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_state];
    v94 = v24;
    v95 = v25;
    v93.f64[0] = v22;
    v93.f64[1] = v23;
    v91 = 0;
    v92 = 0x3FF0000000000000;
    v90 = 0uLL;
    v26 = SPRotation3DEqualToRotation(&v93, &v90);
    *&v27 = 0;
    if ((v26 & 1) == 0)
    {
      v28 = sub_1E4AAAA60();
      v90.f64[0] = v22;
      v90.f64[1] = v23;
      v91 = v24;
      v92 = v25;
      SPRotation3DGetEulerAngles(v97, &v90, v28, &v93);
      *(&v27 + 1) = *&v93.f64[1];
      *&v27 = vcvt_f32_f64(v93);
    }

    v29 = *(v19 + 16);
    if (v29)
    {
      v74 = v21;
      v76 = v20;
      v30 = v14[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_layerLevel];
      v89 = OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_floating;
      v75 = v19;
      v31 = v19 + 32;
      v85 = (v10 + 56);
      v78 = (v88 + 56);
      v88 = OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_background;
      v77 = v27;
      v79 = v14;
      while (1)
      {
        sub_1E4A4D9A0(v31, &v93);
        if (v30 == 2)
        {
          v44 = v95;
          v45 = v96;
          __swift_project_boxed_opaque_existential_1(&v93, v95);
          if (((*(v45 + 48))(v44, v45) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        else if (!v30)
        {
          v42 = v95;
          v43 = v96;
          __swift_project_boxed_opaque_existential_1(&v93, v95);
          if ((*(v43 + 48))(v42, v43))
          {
            goto LABEL_12;
          }
        }

        v46 = v95;
        v47 = v96;
        __swift_project_boxed_opaque_existential_1(&v93, v95);
        v48 = (*(v47 + 48))(v46, v47);
        v49 = v89;
        if ((v48 & 1) == 0)
        {
          v49 = v88;
        }

        v50 = *&v14[v49];
        if (!v50)
        {
          goto LABEL_12;
        }

        v51 = v95;
        v52 = v96;
        __swift_project_boxed_opaque_existential_1(&v93, v95);
        v53 = *(v52 + 24);
        v54 = v50;
        v55 = v53(v51, v52);
        sub_1E4A4D0D0(v55, v56);
        v58 = v57;

        if (!v58)
        {
          goto LABEL_12;
        }

        sub_1E4A4D9A0(&v93, &v90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E280, &qword_1E4AAEF20);
        v60 = v86;
        v59 = v87;
        v61 = swift_dynamicCast();
        v62 = *v85;
        if (v61)
        {
          v62(v59, 0, 1, v60);
          v32 = v81;
          sub_1E4A4DA04(v59, v81, type metadata accessor for WKParameterizedCAWallpaperStateParameter);
          v33 = *&v32[v60[11]];
          v34 = *&v32[v60[12]];
          v35 = (v34 + (v80[1] * ((v33 + (*v80 * (*&v32[v60[10]] - v33))) - v34)));
          v36 = sub_1E4AAA980();
          v37 = v95;
          v38 = v96;
          __swift_project_boxed_opaque_existential_1(&v93, v95);
          (*(v38 + 16))(v37, v38);
          v39 = sub_1E4AAA870();

          [v58 setValue:v36 forKeyPath:v39];

          v40 = v32;
          v14 = v79;
          v41 = type metadata accessor for WKParameterizedCAWallpaperStateParameter;
        }

        else
        {
          v62(v59, 1, 1, v60);
          sub_1E4A4DC88(v59, &qword_1ECF8E278, &qword_1E4AAEF18);
          sub_1E4A4D9A0(&v93, &v90);
          v63 = v84;
          v64 = v83;
          if ((swift_dynamicCast() & 1) == 0)
          {

            (*v78)(v63, 1, 1, v64);
            sub_1E4A4DC88(v63, &qword_1ECF8E270, &qword_1E4AAEF10);
            goto LABEL_12;
          }

          (*v78)(v63, 0, 1, v64);
          v65 = v63;
          v66 = v82;
          sub_1E4A4DA04(v65, v82, type metadata accessor for WKParameterizedCAWallpaperParallaxParameter);
          if (v66[v64[10]] == 1)
          {
            swift_bridgeObjectRelease_n();
          }

          else
          {
            sub_1E4AAADA0();

            sub_1E4AAADA0();
          }

          v67 = v82;
          v68 = *&v82[v64[12]] - *&v82[v64[11]];
          v69 = sub_1E4AAA980();
          v70 = v95;
          v71 = v96;
          __swift_project_boxed_opaque_existential_1(&v93, v95);
          (*(v71 + 16))(v70, v71);
          v72 = sub_1E4AAA870();

          [v58 setValue:v69 forKeyPath:v72];

          v41 = type metadata accessor for WKParameterizedCAWallpaperParallaxParameter;
          v40 = v67;
        }

        sub_1E4A4DA6C(v40, v41);
LABEL_12:
        __swift_destroy_boxed_opaque_existential_1Tm(&v93);
        v31 += 40;
        if (!--v29)
        {

          v20 = v76;
          v21 = v74;
          goto LABEL_31;
        }
      }
    }

LABEL_31:
    [v20 commit];
    [v20 setDisableActions_];
  }
}

id sub_1E4A4A868(char a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_state];
  *v6 = 0x3F80000000000000;
  v6[4] = 0;
  v6[5] = 0x3FF0000000000000;
  v6[2] = 0;
  v6[3] = 0;
  *&v2[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_hostingLayer] = 0;
  *&v2[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_background] = 0;
  *&v2[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_floating] = 0;
  *&v2[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_parameters] = 0;
  v2[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_layerLevel] = a1;
  v10.receiver = v2;
  v10.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1E4A4A97C(a2);

  v8 = sub_1E4AA9FE0();
  (*(*(v8 - 8) + 8))(a2, v8);
  return v7;
}

void sub_1E4A4A97C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E4AA9FE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4A47A2C(0, &qword_1EE042120, 0x1E6979400);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *MEMORY[0x1E6979EF8];
  v10 = sub_1E4AAA8A0();
  v73 = sub_1E4A4B308(v8, v10, v11, 0);
  v12 = [v73 rootLayer];
  v13 = &unk_1ECF8E000;
  if (!v12)
  {
LABEL_23:
    if (qword_1ECF8DD18 == -1)
    {
LABEL_24:
      v35 = sub_1E4AAA0E0();
      __swift_project_value_buffer(v35, qword_1ECF92348);
      v36 = sub_1E4AAA0C0();
      v37 = sub_1E4AAAA00();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_1E4A23000, v36, v37, "Failed to read parameters from CA file", v38, 2u);
        MEMORY[0x1E691FE80](v38, -1, -1);
      }

      v39 = *(v13 + 77);
      v40 = *&v2[v39];
      *&v2[v39] = 0;

      return;
    }

LABEL_53:
    swift_once();
    goto LABEL_24;
  }

  v14 = v12;
  v15 = [v12 style];
  if (!v15 || (v16 = v15, v17 = sub_1E4AAA810(), v16, sub_1E4A4B4D0(v17), v19 = v18, , !v19))
  {

    goto LABEL_23;
  }

  v20 = *&v2[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_parameters];
  *&v2[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_parameters] = v19;

  v21 = v2[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_layerLevel];
  v22 = [v14 sublayers];
  v23 = v22;
  if (v21)
  {
    if (v22)
    {
      sub_1E4A47A2C(0, &qword_1EE042150, 0x1E6979398);
      v24 = sub_1E4AAA950();

      v69 = v2;
      v70 = v14;
      if (v24 >> 62)
      {
LABEL_56:
        v2 = sub_1E4AAAC80();
        if (v2)
        {
LABEL_8:
          v25 = 0;
          v72 = v24 & 0xC000000000000001;
          while (1)
          {
            if (v72)
            {
              v26 = MEMORY[0x1E691EFA0](v25, v24);
            }

            else
            {
              if (v25 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_52;
              }

              v26 = *(v24 + 8 * v25 + 32);
            }

            v27 = v26;
            v13 = (v25 + 1);
            if (__OFADD__(v25, 1))
            {
              break;
            }

            v28 = [v26 name];
            if (v28)
            {
              v29 = v28;
              v30 = sub_1E4AAA8A0();
              v32 = v31;

              if (v30 == 0x474E4954414F4C46 && v32 == 0xE800000000000000)
              {

LABEL_45:

                v51 = &OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_floating;
                v2 = v69;
                goto LABEL_48;
              }

              v34 = sub_1E4AAADA0();

              if (v34)
              {
                goto LABEL_45;
              }
            }

            ++v25;
            if (v13 == v2)
            {
              goto LABEL_57;
            }
          }

          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }
      }

      else
      {
        v2 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v2)
        {
          goto LABEL_8;
        }
      }

LABEL_57:

      v14 = v70;
    }

    if (qword_1ECF8DD18 != -1)
    {
      swift_once();
    }

    v62 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v62, qword_1ECF92348);
    v63 = sub_1E4AAA0C0();
    v64 = sub_1E4AAAA00();
    if (!os_log_type_enabled(v63, v64))
    {
LABEL_69:

      return;
    }

    v65 = swift_slowAlloc();
    *v65 = 0;
    v66 = "Could not find floating layer";
LABEL_68:
    _os_log_impl(&dword_1E4A23000, v63, v64, v66, v65, 2u);
    MEMORY[0x1E691FE80](v65, -1, -1);
    goto LABEL_69;
  }

  if (!v22)
  {
LABEL_64:
    if (qword_1ECF8DD18 != -1)
    {
      swift_once();
    }

    v67 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v67, qword_1ECF92348);
    v63 = sub_1E4AAA0C0();
    v64 = sub_1E4AAAA00();
    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_69;
    }

    v65 = swift_slowAlloc();
    *v65 = 0;
    v66 = "Could not find background layer";
    goto LABEL_68;
  }

  sub_1E4A47A2C(0, &qword_1EE042150, 0x1E6979398);
  v24 = sub_1E4AAA950();

  v70 = v14;
  if (v24 >> 62)
  {
    v41 = sub_1E4AAAC80();
    if (v41)
    {
      goto LABEL_30;
    }

    goto LABEL_63;
  }

  v41 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v41)
  {
LABEL_63:

    v14 = v70;
    goto LABEL_64;
  }

LABEL_30:
  v42 = 0;
  v71 = v24 & 0xFFFFFFFFFFFFFF8;
  v72 = v24 & 0xC000000000000001;
  while (1)
  {
    if (v72)
    {
      v43 = MEMORY[0x1E691EFA0](v42, v24);
    }

    else
    {
      if (v42 >= *(v71 + 16))
      {
        goto LABEL_55;
      }

      v43 = *(v24 + 8 * v42 + 32);
    }

    v27 = v43;
    v13 = (v42 + 1);
    if (__OFADD__(v42, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v44 = [v43 name];
    if (!v44)
    {
      goto LABEL_31;
    }

    v45 = v44;
    v46 = sub_1E4AAA8A0();
    v48 = v47;

    if (v46 == 0x554F52474B434142 && v48 == 0xEA0000000000444ELL)
    {
      break;
    }

    v50 = sub_1E4AAADA0();

    if (v50)
    {
      goto LABEL_47;
    }

LABEL_31:

    ++v42;
    if (v13 == v41)
    {
      goto LABEL_63;
    }
  }

LABEL_47:

  v51 = &OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_background;
LABEL_48:
  v52 = *v51;
  v53 = *&v2[v52];
  *&v2[v52] = v27;

  v54 = [objc_allocWithZone(MEMORY[0x1E6979530]) init];
  v55 = OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_hostingLayer;
  v56 = *&v2[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_hostingLayer];
  *&v2[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_hostingLayer] = v54;

  v57 = *&v2[v55];
  v58 = v70;
  if (v57)
  {
    v59 = v57;
    [v58 bounds];
    [v59 setBounds_];
  }

  v60 = [v2 layer];
  v61 = v73;
  [v60 setGeometryFlipped_];

  [v2 layoutIfNeeded];
  sub_1E4A49EF4();
}

id sub_1E4A4B308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1E4AA9FA0();
  v7 = sub_1E4AAA870();

  if (a4)
  {
    v8 = sub_1E4AAA800();
  }

  else
  {
    v8 = 0;
  }

  v18[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v6 type:v7 options:v8 error:v18];

  v10 = v18[0];
  if (v9)
  {
    v11 = sub_1E4AA9FE0();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v18[0];
    sub_1E4AA9F60();

    swift_willThrow();
    v15 = sub_1E4AA9FE0();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_1E4A4B4D0(uint64_t a1)
{
  v2 = type metadata accessor for WKParameterizedCAWallpaperParallaxParameter(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v151 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v151 - v7;
  v9 = type metadata accessor for WKParameterizedCAWallpaperStateParameter(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v151 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v151 - v14;
  v16 = sub_1E4A4D38C(a1);
  if (!v16)
  {
    if (qword_1ECF8DD18 != -1)
    {
      swift_once();
    }

    v76 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v76, qword_1ECF92348);
    v72 = sub_1E4AAA0C0();
    v73 = sub_1E4AAAA00();
    if (!os_log_type_enabled(v72, v73))
    {
      goto LABEL_70;
    }

    v74 = swift_slowAlloc();
    *v74 = 0;
    v75 = "Couldn't convert parameters to dictionary";
    goto LABEL_69;
  }

  v17 = v16;
  if (!*(v16 + 16) || (v18 = sub_1E4A55B0C(0xD000000000000017, 0x80000001E4AB8830), (v19 & 1) == 0) || (sub_1E4A479C0(*(v17 + 56) + 32 * v18, &v168), v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E288, &qword_1E4AAEF28), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_1ECF8DD18 == -1)
    {
LABEL_63:
      v71 = sub_1E4AAA0E0();
      __swift_project_value_buffer(v71, qword_1ECF92348);
      v72 = sub_1E4AAA0C0();
      v73 = sub_1E4AAAA00();
      if (!os_log_type_enabled(v72, v73))
      {
LABEL_70:

        return;
      }

      v74 = swift_slowAlloc();
      *v74 = 0;
      v75 = "Couldn't convert wallpaper elements to array";
LABEL_69:
      _os_log_impl(&dword_1E4A23000, v72, v73, v75, v74, 2u);
      MEMORY[0x1E691FE80](v74, -1, -1);
      goto LABEL_70;
    }

LABEL_150:
    swift_once();
    goto LABEL_63;
  }

  v164 = v2;
  v165 = v20;
  v162 = v8;
  v163 = v6;
  v22 = v171;
  v23 = *(*&v171 + 16);
  if (!v23)
  {
    v166 = MEMORY[0x1E69E7CC0];
    goto LABEL_72;
  }

  v160 = v9;
  v24 = 0;
  *&v159 = v23 - 1;
  v166 = MEMORY[0x1E69E7CC0];
  *&v21 = 134217984;
  v167 = v21;
  do
  {
    v25 = v24;
    while (1)
    {
      if (v25 >= *(*&v22 + 16))
      {
        __break(1u);
        goto LABEL_150;
      }

      v26 = *(*&v22 + 32 + 8 * v25);
      if (*(v26 + 16))
      {
        break;
      }

LABEL_24:
      if (qword_1ECF8DD18 != -1)
      {
        swift_once();
      }

      v36 = sub_1E4AAA0E0();
      __swift_project_value_buffer(v36, qword_1ECF92348);
      v37 = sub_1E4AAA0C0();
      v38 = sub_1E4AAAA00();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = v167;
        *(v39 + 4) = v25;
        _os_log_impl(&dword_1E4A23000, v37, v38, "missing required parameters (keyPath, layerName, view) for entry %ld in wallpaperPropertyGroups", v39, 0xCu);
        MEMORY[0x1E691FE80](v39, -1, -1);
      }

      ++v25;

      if (v23 == v25)
      {
        goto LABEL_72;
      }
    }

    v27 = *(*&v22 + 32 + 8 * v25);

    v28 = sub_1E4A55B0C(0x6874615079656BLL, 0xE700000000000000);
    if ((v29 & 1) == 0)
    {
      goto LABEL_23;
    }

    sub_1E4A479C0(*(v26 + 56) + 32 * v28, &v168);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_23;
    }

    v30 = v172;
    if (!*(v26 + 16) || (v31 = v171, v32 = sub_1E4A55B0C(0x6D614E726579616CLL, 0xE900000000000065), (v33 & 1) == 0) || (sub_1E4A479C0(*(v26 + 56) + 32 * v32, &v168), (swift_dynamicCast() & 1) == 0))
    {
LABEL_22:

LABEL_23:

      goto LABEL_24;
    }

    if (!*(v26 + 16) || (v158 = *&v171, *&v161 = v172, v34 = sub_1E4A55B0C(2003134838, 0xE400000000000000), (v35 & 1) == 0) || (sub_1E4A479C0(*(v26 + 56) + 32 * v34, &v168), (swift_dynamicCast() & 1) == 0))
    {

      goto LABEL_22;
    }

    v156 = v171;
    v157 = v172;
    v40 = 0.0;
    v41 = 0.0;
    if (*(v26 + 16))
    {
      v42 = sub_1E4A55B0C(0x656D6F685F76, 0xE600000000000000);
      if (v43)
      {
        sub_1E4A479C0(*(v26 + 56) + 32 * v42, &v168);
        if (swift_dynamicCast())
        {
          v41 = v171;
        }
      }
    }

    if (*(v26 + 16))
    {
      v44 = sub_1E4A55B0C(0x6B636F6C5F76, 0xE600000000000000);
      if (v45)
      {
        sub_1E4A479C0(*(v26 + 56) + 32 * v44, &v168);
        if (swift_dynamicCast())
        {
          v40 = v171;
        }
      }
    }

    v46 = 0.0;
    if (*(v26 + 16))
    {
      v47 = sub_1E4A55B0C(0x7065656C735F76, 0xE700000000000000);
      if (v48)
      {
        sub_1E4A479C0(*(v26 + 56) + 32 * v47, &v168);
        if (swift_dynamicCast())
        {
          v46 = v171;
        }
      }
    }

    if (*(v26 + 16) && (v49 = sub_1E4A55B0C(0x656C746974, 0xE500000000000000), (v50 & 1) != 0) && (sub_1E4A479C0(*(v26 + 56) + 32 * v49, &v168), (swift_dynamicCast() & 1) != 0))
    {
      v51 = v172;
      v155 = *&v171;
    }

    else
    {
      v155 = 0;
      *&v51 = -2.68156159e154;
    }

    v154 = *&v51;
    if (!*(v26 + 16) || (v52 = sub_1E4A55B0C(1702129518, 0xE400000000000000), (v53 & 1) == 0))
    {

LABEL_50:
      v153 = 0.0;
      *&v54 = -2.68156159e154;
      goto LABEL_51;
    }

    sub_1E4A479C0(*(v26 + 56) + 32 * v52, &v168);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_50;
    }

    v54 = v172;
    v153 = v171;
LABEL_51:
    v152 = *&v54;
    v156 = COERCE_DOUBLE(sub_1E4AAA8B0());
    v56 = v55;

    if (v156 == 1.69375774e190 && v56 == 0xE800000000000000)
    {

      LODWORD(v157) = 1;
    }

    else
    {
      LODWORD(v157) = sub_1E4AAADA0();
    }

    v57 = v155;
    sub_1E4AAA020();
    v58 = v160;
    v59 = &v15[v160[5]];
    *v59 = v31;
    *(v59 + 1) = v30;
    v60 = &v15[v58[6]];
    v61 = v161;
    *v60 = v158;
    v60[1] = v61;
    v62 = &v15[v58[7]];
    v63 = v154;
    *v62 = v57;
    *(v62 + 1) = v63;
    v64 = &v15[v58[8]];
    v65 = v152;
    *v64 = v153;
    *(v64 + 1) = v65;
    *&v15[v58[10]] = v41;
    *&v15[v58[11]] = v40;
    *&v15[v58[12]] = v46;
    v15[v58[9]] = v157 & 1;
    sub_1E4A4DB7C(v15, v13, type metadata accessor for WKParameterizedCAWallpaperStateParameter);
    v66 = v166;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = sub_1E4A72D50(0, v66[2] + 1, 1, v66);
    }

    v68 = v66[2];
    v67 = v66[3];
    *&v161 = v68 + 1;
    if (v68 >= v67 >> 1)
    {
      v166 = sub_1E4A72D50((v67 > 1), v68 + 1, 1, v66);
    }

    else
    {
      v166 = v66;
    }

    v24 = (v25 + 1);
    v158 = type metadata accessor for WKParameterizedCAWallpaperStateParameter;
    sub_1E4A4DA6C(v15, type metadata accessor for WKParameterizedCAWallpaperStateParameter);
    v169 = v160;
    v170 = sub_1E4A4DBE4(&qword_1ECF8E290, type metadata accessor for WKParameterizedCAWallpaperStateParameter);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v168);
    sub_1E4A4DB7C(v13, boxed_opaque_existential_1, type metadata accessor for WKParameterizedCAWallpaperStateParameter);
    v70 = v166;
    v166[2] = v161;
    sub_1E4A2732C(&v168, &v70[5 * v68 + 4]);
    sub_1E4A4DA6C(v13, v158);
  }

  while (*&v159 != v25);
LABEL_72:

  if (!*(v17 + 16))
  {
    goto LABEL_147;
  }

  v77 = sub_1E4A55B0C(0xD000000000000017, 0x80000001E4AB8850);
  if ((v78 & 1) == 0)
  {
    goto LABEL_147;
  }

  sub_1E4A479C0(*(v17 + 56) + 32 * v77, &v168);

  if (swift_dynamicCast())
  {
    v80 = v171;
    v81 = *(*&v171 + 16);
    if (!v81)
    {
      goto LABEL_147;
    }

    v82 = 0;
    v83 = 0x6874615079656BLL;
    v160 = (v81 - 1);
    *&v79 = 134217984;
    v167 = v79;
    *&v79 = 134218498;
    v161 = v79;
    while (1)
    {
      v84 = v82;
      while (1)
      {
        if (v84 >= *(*&v80 + 16))
        {
          __break(1u);
          return;
        }

        v85 = *(*&v80 + 32 + 8 * v84);
        if (!*(v85 + 16))
        {
          goto LABEL_107;
        }

        v86 = *(*&v80 + 32 + 8 * v84);

        v87 = sub_1E4A55B0C(v83, 0xE700000000000000);
        if ((v88 & 1) == 0 || (sub_1E4A479C0(*(v85 + 56) + 32 * v87, &v168), (swift_dynamicCast() & 1) == 0))
        {

          goto LABEL_107;
        }

        v89 = v83;
        v90 = v172;
        if (!*(v85 + 16))
        {
          goto LABEL_106;
        }

        v91 = v171;
        v92 = sub_1E4A55B0C(0x6D614E726579616CLL, 0xE900000000000065);
        if ((v93 & 1) == 0)
        {
          goto LABEL_106;
        }

        sub_1E4A479C0(*(v85 + 56) + 32 * v92, &v168);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_106;
        }

        if (!*(v85 + 16) || (v159 = v171, v165 = v172, v94 = sub_1E4A55B0C(2003134838, 0xE400000000000000), (v95 & 1) == 0) || (sub_1E4A479C0(*(v85 + 56) + 32 * v94, &v168), (swift_dynamicCast() & 1) == 0))
        {

LABEL_106:

          v83 = v89;
LABEL_107:
          if (qword_1ECF8DD18 != -1)
          {
            swift_once();
          }

          v109 = sub_1E4AAA0E0();
          __swift_project_value_buffer(v109, qword_1ECF92348);
          v110 = sub_1E4AAA0C0();
          v111 = sub_1E4AAAA00();
          if (os_log_type_enabled(v110, v111))
          {
            v112 = swift_slowAlloc();
            *v112 = v167;
            *(v112 + 4) = v84;
            _os_log_impl(&dword_1E4A23000, v110, v111, "missing a required parameter (keyPath, layerName, view) for entry %ld in wallpaperParallaxGroups", v112, 0xCu);
            MEMORY[0x1E691FE80](v112, -1, -1);
          }

          goto LABEL_112;
        }

        v96 = *(v85 + 16);
        v158 = *&v91;
        if (v96)
        {
          v157 = v172;
          v97 = *&v171;
          v98 = sub_1E4A55B0C(1936291937, 0xE400000000000000);
          if (v99)
          {
            v155 = v97;
            sub_1E4A479C0(*(v85 + 56) + 32 * v98, &v168);
            if (swift_dynamicCast())
            {
              break;
            }
          }
        }

        if (qword_1ECF8DD18 != -1)
        {
          swift_once();
        }

        v113 = sub_1E4AAA0E0();
        __swift_project_value_buffer(v113, qword_1ECF92348);

        *&v114 = COERCE_DOUBLE(sub_1E4AAA0C0());
        v115 = sub_1E4AAAA00();

        LODWORD(v157) = v115;
        if (!os_log_type_enabled(v114, v115))
        {
          goto LABEL_119;
        }

        v116 = swift_slowAlloc();
        v156 = *&v114;
        v117 = v116;
        v118 = swift_slowAlloc();
        *&v168 = v118;
        *v117 = v161;
        *(v117 + 4) = v84;
        *(v117 + 12) = 2082;
        v159 = COERCE_DOUBLE(sub_1E4A85938(*&v159, v165, &v168));

        *(v117 + 14) = v159;
        *(v117 + 22) = 2082;
        v119 = sub_1E4A85938(v158, v90, &v168);

        *(v117 + 24) = v119;
        *&v114 = v156;
        _os_log_impl(&dword_1E4A23000, *&v156, v157, "missing “axis” parameter for entry %ld (“%{public}s” %{public}s) in wallpaperParallaxGroups", v117, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E691FE80](v118, -1, -1);
        MEMORY[0x1E691FE80](v117, -1, -1);
LABEL_120:

        v83 = v89;
LABEL_112:
        v84 = (v84 + 1);
        if (v81 == v84)
        {
          goto LABEL_147;
        }
      }

      v154 = *&v172;
      *&v100 = COERCE_DOUBLE(sub_1E4AAA8B0());
      v156 = *&v101;

      v154 = *&v100;
      if (v100 == 121 && v156 == -1.7573882e159 || (v102 = v154, (sub_1E4AAADA0() & 1) != 0) || *&v102 == 0x6863746970 && v156 == -3.24180904e178)
      {

        v103 = 1;
        if (!*(v85 + 16))
        {
          goto LABEL_122;
        }
      }

      else
      {
        v103 = sub_1E4AAADA0();

        if (!*(v85 + 16))
        {
          goto LABEL_122;
        }
      }

      v104 = sub_1E4A55B0C(0x6F546E694D70616DLL, 0xE800000000000000);
      if ((v105 & 1) == 0 || (sub_1E4A479C0(*(v85 + 56) + 32 * v104, &v168), (swift_dynamicCast() & 1) == 0) || !*(v85 + 16) || (v106 = v171, v107 = sub_1E4A55B0C(0x6F5478614D70616DLL, 0xE800000000000000), (v108 & 1) == 0) || (sub_1E4A479C0(*(v85 + 56) + 32 * v107, &v168), (swift_dynamicCast() & 1) == 0))
      {
LABEL_122:

        if (qword_1ECF8DD18 != -1)
        {
          swift_once();
        }

        v120 = sub_1E4AAA0E0();
        __swift_project_value_buffer(v120, qword_1ECF92348);

        v157 = sub_1E4AAA0C0();
        v121 = sub_1E4AAAA00();

        LODWORD(v156) = v121;
        v114 = v157;
        if (os_log_type_enabled(v157, v121))
        {
          v122 = swift_slowAlloc();
          v155 = swift_slowAlloc();
          *&v168 = v155;
          *v122 = v161;
          *(v122 + 4) = v84;
          *(v122 + 12) = 2082;
          v159 = COERCE_DOUBLE(sub_1E4A85938(*&v159, v165, &v168));

          *(v122 + 14) = v159;
          *(v122 + 22) = 2082;
          v123 = sub_1E4A85938(v158, v90, &v168);

          *(v122 + 24) = v123;
          v114 = v157;
          _os_log_impl(&dword_1E4A23000, v157, LOBYTE(v156), "missing “mapMinTo” or “mapMaxTo” parameter for entry %ld (“%{public}s” %{public}s) in wallpaperParallaxGroups", v122, 0x20u);
          v124 = v155;
          swift_arrayDestroy();
          MEMORY[0x1E691FE80](v124, -1, -1);
          MEMORY[0x1E691FE80](v122, -1, -1);
          goto LABEL_120;
        }

LABEL_119:

        goto LABEL_120;
      }

      v125 = v171;
      if (*(v85 + 16) && (v126 = sub_1E4A55B0C(0x656C746974, 0xE500000000000000), (v127 & 1) != 0) && (sub_1E4A479C0(*(v85 + 56) + 32 * v126, &v168), (swift_dynamicCast() & 1) != 0))
      {
        v128 = v172;
        v154 = v171;
      }

      else
      {
        v154 = 0.0;
        *&v128 = -2.68156159e154;
      }

      v153 = *&v128;
      if (!*(v85 + 16) || (v129 = sub_1E4A55B0C(1702129518, 0xE400000000000000), (v130 & 1) == 0))
      {

LABEL_137:
        v152 = 0.0;
        v131 = 0xE000000000000000;
        goto LABEL_138;
      }

      sub_1E4A479C0(*(v85 + 56) + 32 * v129, &v168);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_137;
      }

      v131 = v172;
      v152 = v171;
LABEL_138:
      v151 = v131;
      v132 = sub_1E4AAA8B0();
      v156 = *&v133;

      if (v132 == 0x676E6974616F6C66 && v156 == -9.12488124e192)
      {

        v134 = 1;
      }

      else
      {
        v134 = sub_1E4AAADA0();
      }

      v135 = v106;
      v136 = v125;
      v137 = v162;
      sub_1E4AAA020();
      v138 = v164;
      v139 = (v137 + v164[5]);
      *v139 = v158;
      v139[1] = v90;
      v140 = (v137 + v138[6]);
      v141 = v165;
      *v140 = v159;
      *(v140 + 1) = v141;
      v142 = (v137 + v138[7]);
      v143 = v153;
      *v142 = v154;
      v142[1] = v143;
      v144 = (v137 + v138[8]);
      v145 = v151;
      *v144 = v152;
      *(v144 + 1) = v145;
      *(v137 + v138[9]) = v134 & 1;
      *(v137 + v138[11]) = v135;
      *(v137 + v138[12]) = v136;
      *(v137 + v138[10]) = v103 & 1;
      sub_1E4A4DB7C(v137, v163, type metadata accessor for WKParameterizedCAWallpaperParallaxParameter);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v166 = sub_1E4A72D50(0, v166[2] + 1, 1, v166);
      }

      v147 = v166[2];
      v146 = v166[3];
      v165 = v147 + 1;
      if (v147 >= v146 >> 1)
      {
        v166 = sub_1E4A72D50((v146 > 1), v165, 1, v166);
      }

      v82 = (v84 + 1);
      v159 = COERCE_DOUBLE(type metadata accessor for WKParameterizedCAWallpaperParallaxParameter);
      sub_1E4A4DA6C(v162, type metadata accessor for WKParameterizedCAWallpaperParallaxParameter);
      v169 = v164;
      v170 = sub_1E4A4DBE4(&qword_1ECF8E298, type metadata accessor for WKParameterizedCAWallpaperParallaxParameter);
      v148 = __swift_allocate_boxed_opaque_existential_1(&v168);
      v149 = v163;
      sub_1E4A4DB7C(v163, v148, type metadata accessor for WKParameterizedCAWallpaperParallaxParameter);
      v150 = v166;
      v166[2] = v165;
      sub_1E4A2732C(&v168, &v150[5 * v147 + 4]);
      sub_1E4A4DA6C(v149, *&v159);
      v83 = v89;
      if (v160 == v84)
      {
LABEL_147:

        return;
      }
    }
  }
}

void sub_1E4A4CC14()
{
  v42.receiver = v0;
  v42.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v42, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_hostingLayer];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 layer];
    [v0 bounds];
    [v3 setBounds_];

    v4 = [v0 layer];
    [v4 setAnchorPoint_];

    v5 = [v0 layer];
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v43.origin.x = v7;
    v43.origin.y = v9;
    v43.size.width = v11;
    v43.size.height = v13;
    v14 = CGRectGetWidth(v43) * 0.5;
    v15 = [v0 layer];
    [v15 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v44.origin.x = v17;
    v44.origin.y = v19;
    v44.size.width = v21;
    v44.size.height = v23;
    [v2 setPosition:v14, CGRectGetHeight(v44) * 0.5];
    [v2 bounds];
    v25 = v24;
    v27 = v26;
    [v0 bounds];
    v28 = CGRectGetWidth(v45) / v25;
    [v0 bounds];
    Height = CGRectGetHeight(v46);
    CATransform3DMakeScale(&v41, v28, Height / v27, 1.0);
    [v2 setTransform:&v41];
    v30 = [v0 layer];
    [v30 addSublayer_];

    if (v0[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_layerLevel])
    {
      v31 = *&v0[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_floating];
      if (!v31)
      {
        if (qword_1ECF8DD18 != -1)
        {
          swift_once();
        }

        v32 = sub_1E4AAA0E0();
        __swift_project_value_buffer(v32, qword_1ECF92348);
        v33 = sub_1E4AAA0C0();
        v34 = sub_1E4AAAA00();
        if (!os_log_type_enabled(v33, v34))
        {
          goto LABEL_19;
        }

        v35 = swift_slowAlloc();
        *v35 = 0;
        v36 = "No floating layer to add.";
        goto LABEL_18;
      }
    }

    else
    {
      v31 = *&v0[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_background];
      if (!v31)
      {
        if (qword_1ECF8DD18 != -1)
        {
          swift_once();
        }

        v40 = sub_1E4AAA0E0();
        __swift_project_value_buffer(v40, qword_1ECF92348);
        v33 = sub_1E4AAA0C0();
        v34 = sub_1E4AAAA00();
        if (!os_log_type_enabled(v33, v34))
        {
          goto LABEL_19;
        }

        v35 = swift_slowAlloc();
        *v35 = 0;
        v36 = "No background layer to add.";
LABEL_18:
        _os_log_impl(&dword_1E4A23000, v33, v34, v36, v35, 2u);
        MEMORY[0x1E691FE80](v35, -1, -1);
        goto LABEL_19;
      }
    }

    v33 = v31;
    [v2 addSublayer:v33];
LABEL_19:

    goto LABEL_20;
  }

  if (qword_1ECF8DD18 != -1)
  {
    swift_once();
  }

  v37 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v37, qword_1ECF92348);
  v2 = sub_1E4AAA0C0();
  v38 = sub_1E4AAAA00();
  if (os_log_type_enabled(v2, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_1E4A23000, v2, v38, "No hosting layer to lay out", v39, 2u);
    MEMORY[0x1E691FE80](v39, -1, -1);
  }

LABEL_20:
}

void sub_1E4A4D0D0(uint64_t a1, uint64_t a2)
{
  v5 = [v2 sublayers];
  if (v5)
  {
    v6 = v5;
    sub_1E4A47A2C(0, &qword_1EE042150, 0x1E6979398);
    v7 = sub_1E4AAA950();

    if (!(v7 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
LABEL_3:
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_4;
      }

LABEL_24:

      return;
    }
  }

  v8 = sub_1E4AAAC80();
  if (!v8)
  {
    goto LABEL_24;
  }

LABEL_4:
  v9 = 0;
  while (1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1E691EFA0](v9, v7);
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v10 = *(v7 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    v13 = [v10 name];
    if (v13)
    {
      v14 = v13;
      v15 = sub_1E4AAA8A0();
      v17 = v16;

      if (v15 == a1 && v17 == a2)
      {

        goto LABEL_24;
      }

      v19 = sub_1E4AAADA0();

      if (v19)
      {
        goto LABEL_24;
      }
    }

    v20 = sub_1E4A4D0D0(a1, a2);

    if (!v20)
    {
      ++v9;
      if (v12 != v8)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

id sub_1E4A4D2C4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E4A4D38C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E2A0, &qword_1E4AAEF30);
    v2 = sub_1E4AAAD00();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_1E4A4DC2C(*(a1 + 48) + 40 * v14, v29);
        sub_1E4A479C0(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_1E4A4DC2C(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_1E4A479C0(v27 + 8, v22);
        sub_1E4A4DC88(v26, &qword_1ECF8E2A8, qword_1E4AAEF38);
        v23 = v20;
        sub_1E4A4DCE8(v22, v24);
        v15 = v23;
        sub_1E4A4DCE8(v24, v25);
        sub_1E4A4DCE8(v25, &v23);
        result = sub_1E4A55B0C(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1Tm(v12);
          result = sub_1E4A4DCE8(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_1E4A4DCE8(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_1E4A4DC88(v26, &qword_1ECF8E2A8, qword_1E4AAEF38);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_1E4A4D6A0()
{
  v1 = (v0 + OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_state);
  *v1 = 0x3F80000000000000;
  v1[4] = 0;
  v1[5] = 0x3FF0000000000000;
  v1[2] = 0;
  v1[3] = 0;
  *(v0 + OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_hostingLayer) = 0;
  *(v0 + OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_background) = 0;
  *(v0 + OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_floating) = 0;
  *(v0 + OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_parameters) = 0;
  sub_1E4AAACB0();
  __break(1u);
}

void sub_1E4A4D750()
{
  v1 = (v0 + OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_state);
  *v1 = 0x3F80000000000000;
  v1[4] = 0;
  v1[5] = 0x3FF0000000000000;
  v1[2] = 0;
  v1[3] = 0;
  *(v0 + OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_hostingLayer) = 0;
  *(v0 + OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_background) = 0;
  *(v0 + OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_floating) = 0;
  *(v0 + OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_parameters) = 0;
  sub_1E4AAACB0();
  __break(1u);
}

unint64_t SPRotation3DEqualToRotation(float64x2_t *a1, float64x2_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = vandq_s8(vceqq_f64(*a1, *a2), vceqq_f64(v2, v3));
  if ((vandq_s8(v4, vdupq_laneq_s64(v4, 1)).u64[0] & 0x8000000000000000) != 0)
  {
    return 1;
  }

  v5 = vandq_s8(vceqq_f64(*a1, vnegq_f64(*a2)), vceqq_f64(v2, vnegq_f64(v3)));
  return vandq_s8(v5, vdupq_laneq_s64(v5, 1)).u64[0] >> 63;
}

void SPRotation3DGetEulerAngles(SPRotation3D a1@<0:Q0, 16:Q1>, uint64_t a2@<X0>, int a3@<W1>, uint64_t a4@<X8>)
{
  _Q1 = *a2;
  if (a3 == 2)
  {
    v7 = *a2;
    _Q1.i64[0] = *(a2 + 16);
  }

  else if (a3 == 1)
  {
    v7 = vextq_s8(_Q1, *(a2 + 16), 8uLL);
  }

  else
  {
    v7 = 0uLL;
    _Q1.i64[0] = 0;
  }

  v8 = *(a2 + 24);
  v27 = v7;
  _D9 = v7.f64[1];
  _V4.D[1] = v8;
  v26 = *(a2 + 32);
  __asm { FMLA            D0, D1, V4.D[1] }

  v28 = *_Q1.i64;
  *&v16 = atan2(_D0 + _D0, (vmulq_f64(v7, v7).f64[0] + *_Q1.i64 * *_Q1.i64) * -2.0 + 1.0);
  v25 = v16;
  v17 = v8 * v27.f64[0] - _D9 * v28 + v8 * v27.f64[0] - _D9 * v28;
  if (v17 > 1.0)
  {
    v17 = 1.0;
  }

  if (v17 < -1.0)
  {
    v17 = -1.0;
  }

  v24 = asin(v17);
  _V2.D[1] = v27.f64[1];
  _V4.D[1] = v26;
  __asm { FMLA            D0, D9, V4.D[1] }

  *&_D0 = _D0 + _D0;
  __asm { FMLA            D1, D9, V2.D[1] }

  *&_D1 = _D1 * -2.0 + 1.0;
  *&v22 = atan2f(*&_D0, *&_D1);
  if (a3 == 2)
  {
    *v23.i64 = v24;
    v23.i64[1] = v22;
    v22 = v25;
  }

  else if (a3 == 1)
  {
    v23.i64[0] = v25;
    *&v23.i64[1] = v24;
  }

  else
  {
    v23 = vdupq_n_s64(0x7FF8000000000000uLL);
    *&v22 = 0x7FF8000000000000;
  }

  *a4 = v23;
  *(a4 + 16) = v22;
  *(a4 + 32) = a3;
}

uint64_t sub_1E4A4D9A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1E4A4DA04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4A4DA6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1E4A4DB7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4A4DBE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4A4DC88(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_1E4A4DCE8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t type metadata accessor for WKAdaptiveStripeWallpaperFloatingLayer()
{
  result = qword_1EE043688;
  if (!qword_1EE043688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4A4DD6C()
{
  sub_1E4A4DE48(319, &qword_1EE042448, MEMORY[0x1E697DBD0]);
  if (v0 <= 0x3F)
  {
    sub_1E4A48ECC();
    if (v1 <= 0x3F)
    {
      sub_1E4A4DE48(319, &unk_1EE042450, type metadata accessor for WKWallpaperPosterLayerViewModel);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E4A4DE48(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4AAA1D0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 sub_1E4A4DEB8@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4AAA320();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = (v2 + *(type metadata accessor for WKAdaptiveStripeWallpaperFloatingLayer() + 24));
  if (*(v9 + 8) == 1)
  {
    v68 = *v9;
  }

  else
  {

    sub_1E4AAAA10();
    v10 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    sub_1E4AAA310();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
  }

  v11 = sub_1E4A7440C();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  if ((v17 & 1) != 0 || (sub_1E4A4E210(&v52), (v18 = v52) == 0))
  {
    sub_1E4A4E5F8(&v53);
  }

  else
  {
    *&v28[0] = swift_getKeyPath();
    sub_1E4A4E620(v28);
    v36 = v28[6];
    v37 = v28[7];
    v38 = v28[8];
    LOBYTE(v39) = v29;
    v32 = v28[2];
    v33 = v28[3];
    v34 = v28[4];
    v35 = v28[5];
    v30 = v28[0];
    v31 = v28[1];

    WKPosterCanvasSize();
    WKPosterCanvasSize();
    sub_1E4AAA6F0();
    sub_1E4AAA230();

    *&v27[7] = v69;
    *&v27[23] = v70;
    *&v27[39] = v71;
    v46 = v36;
    v47 = v37;
    v48 = v38;
    v42 = v32;
    v43 = v33;
    v44 = v34;
    v45 = v35;
    v40 = v30;
    v41 = v31;
    *(v51 + 9) = *v27;
    *&v49 = v39;
    *(&v49 + 1) = v11;
    *&v50 = v13;
    *(&v50 + 1) = v15;
    *&v51[0] = v18;
    BYTE8(v51[0]) = 1;
    *(&v51[1] + 9) = *&v27[16];
    *(&v51[2] + 9) = *&v27[32];
    *(&v51[3] + 1) = *(&v71 + 1);
    nullsub_1(&v40);
    v65 = v51[1];
    v66 = v51[2];
    v67 = v51[3];
    v61 = v48;
    v62 = v49;
    v63 = v50;
    v64 = v51[0];
    v57 = v44;
    v58 = v45;
    v59 = v46;
    v60 = v47;
    v53 = v40;
    v54 = v41;
    v55 = v42;
    v56 = v43;
  }

  v19 = v66;
  *(a1 + 192) = v65;
  *(a1 + 208) = v19;
  *(a1 + 224) = v67;
  v20 = v62;
  *(a1 + 128) = v61;
  *(a1 + 144) = v20;
  v21 = v64;
  *(a1 + 160) = v63;
  *(a1 + 176) = v21;
  v22 = v58;
  *(a1 + 64) = v57;
  *(a1 + 80) = v22;
  v23 = v60;
  *(a1 + 96) = v59;
  *(a1 + 112) = v23;
  v24 = v54;
  *a1 = v53;
  *(a1 + 16) = v24;
  result = v56;
  *(a1 + 32) = v55;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1E4A4E210@<X0>(id **a1@<X8>)
{
  v39 = a1;
  v38 = sub_1E4AAA1C0();
  v2 = *(v38 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E4AAA320();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WKAdaptiveStripeWallpaperFloatingLayer();
  v12 = *(v11 + 28);
  v13 = (v1 + *(v11 + 20));
  v14 = v13[7];
  v15 = v13[5];
  v76 = v13[6];
  v77 = v14;
  v16 = v13[7];
  v78 = v13[8];
  v17 = v13[3];
  v18 = v13[1];
  v72 = v13[2];
  v73 = v17;
  v19 = v13[3];
  v20 = v13[5];
  v74 = v13[4];
  v75 = v20;
  v21 = v13[1];
  v70 = *v13;
  v71 = v21;
  v80[6] = v76;
  v80[7] = v16;
  v80[8] = v13[8];
  v80[2] = v72;
  v80[3] = v19;
  v80[4] = v74;
  v80[5] = v15;
  v22 = *(v1 + v12);
  v79 = *(v13 + 144);
  v81 = *(v13 + 144);
  v80[0] = v70;
  v80[1] = v18;
  if (sub_1E4A49C60(v80) == 1)
  {
    nullsub_1(v80);
    v47 = v76;
    v48 = v77;
    v49 = v78;
    v50 = v79;
    v43 = v72;
    v44 = v73;
    v45 = v74;
    v46 = v75;
    v41 = v70;
    v42 = v71;
    v23 = nullsub_1(&v41);
    v61 = *v23;
    v24 = v23[1];
    v25 = v23[2];
    v26 = v23[4];
    v64 = v23[3];
    v65 = v26;
    v62 = v24;
    v63 = v25;
    v27 = v23[5];
    v28 = v23[6];
    v29 = v23[8];
    v68 = v23[7];
    v69 = v29;
    v66 = v27;
    v67 = v28;
    v60 = v79;
    v58 = v77;
    v59 = v78;
    v56 = v75;
    v57 = v76;
    v54 = v73;
    v55 = v74;
    v52 = v71;
    v53 = v72;
    v51 = v70;
    v30 = nullsub_1(&v51);
    sub_1E4A49D24(v30, &v40);
  }

  else
  {
    nullsub_1(v80);
    v47 = v76;
    v48 = v77;
    v49 = v78;
    v50 = v79;
    v43 = v72;
    v44 = v73;
    v45 = v74;
    v46 = v75;
    v41 = v70;
    v42 = v71;
    v36 = *nullsub_1(&v41);
    v51 = v70;
    v52 = v71;
    v55 = v74;
    v56 = v75;
    v53 = v72;
    v54 = v73;
    v60 = v79;
    v58 = v77;
    v59 = v78;
    v57 = v76;
    v31 = *nullsub_1(&v51);

    sub_1E4AAAA10();
    v32 = sub_1E4AAA4E0();
    v37 = v5;
    v33 = v22;
    v34 = v32;
    sub_1E4AAA0B0();

    v22 = v33;
    sub_1E4AAA310();
    swift_getAtKeyPath();
    sub_1E4A49C68(&v70);
    v5 = v37;
    (*(v7 + 8))(v10, v6);
  }

  v57 = v67;
  v58 = v68;
  v59 = v69;
  v53 = v63;
  v54 = v64;
  v55 = v65;
  v56 = v66;
  v51 = v61;
  v52 = v62;
  sub_1E4A96CDC(v5);
  sub_1E4A95D1C(&v51, v5, v22, v39);
  sub_1E4A49CD0(&v51);
  return (*(v2 + 8))(v5, v38);
}

double sub_1E4A4E5F8(_OWORD *a1)
{
  result = 0.0;
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
  return result;
}

unint64_t sub_1E4A4E628()
{
  result = qword_1EE042408;
  if (!qword_1EE042408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E2B0, &unk_1E4AB5120);
    sub_1E4A4E6AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042408);
  }

  return result;
}

unint64_t sub_1E4A4E6AC()
{
  result = qword_1EE042410;
  if (!qword_1EE042410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E2B8, &qword_1E4AAF000);
    sub_1E4A4E738();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042410);
  }

  return result;
}

unint64_t sub_1E4A4E738()
{
  result = qword_1EE043008;
  if (!qword_1EE043008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043008);
  }

  return result;
}

__n128 __swift_memcpy176_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_1E4A4E7E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 168);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4A4E828(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
      *(result + 176) = 1;
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
      *(result + 168) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E4A4E8C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4AAA320();
  v47 = *(v3 - 8);
  v4 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WKAnimationPackageLayer(0);
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v44 - v16;
  v18 = sub_1E4AA9FE0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v51 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *v1;
  v48 = *(v1 + 8);
  if (![*(*(v1 + 168) + 16) valueBasedWallpaperForLocation:@"WKWallpaperLocationCoverSheet" andAppearance:@"default"])
  {
    goto LABEL_6;
  }

  v45 = v3;
  v50 = v7;
  v22 = v6;
  v23 = a1;
  sub_1E4A57768(&v52);
  swift_unknownObjectRelease();
  v24 = *(&v53 + 1);
  v25 = v54;
  __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
  (*(v25 + 24))(&v62, v24, v25);
  v26 = v62;
  v27 = v63;
  __swift_destroy_boxed_opaque_existential_1Tm(&v52);
  if (v27 != 5)
  {
    sub_1E4A4EF3C(v26, v27);
    a1 = v23;
    v6 = v22;
    v7 = v50;
LABEL_6:
    (*(v19 + 56))(v17, 1, 1, v18);
LABEL_7:
    sub_1E4A480C4(v17);
    return (*(v7 + 56))(a1, 1, 1, v6);
  }

  v28 = [v26[2] foregroundAnimationFileURL];
  if (v28)
  {
    v29 = v28;
    sub_1E4AA9FC0();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  a1 = v23;
  v6 = v22;
  (*(v19 + 56))(v15, v30, 1, v18);
  sub_1E4A4EF94(v15, v17);
  sub_1E4A4EF3C(v26, 5u);
  v32 = (*(v19 + 48))(v17, 1, v18);
  v7 = v50;
  v33 = v45;
  if (v32 == 1)
  {
    goto LABEL_7;
  }

  v34 = v51;
  (*(v19 + 32))(v51, v17, v18);
  (*(v19 + 16))(&v10[v6[7]], v34, v18);
  if (v48)
  {
    v35 = v49;
    v62 = v49;
  }

  else
  {

    sub_1E4AAAA10();
    v36 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    v37 = v46;
    sub_1E4AAA310();
    swift_getAtKeyPath();

    (*(v47 + 8))(v37, v33);
    v35 = v62;
  }

  swift_getKeyPath();
  *&v52 = v35;
  sub_1E4A4F11C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
  sub_1E4AAA060();

  (*(v19 + 8))(v51, v18);
  v38 = v35[22];

  *&v52 = swift_getKeyPath();
  sub_1E4A4E620(&v52);
  v39 = v59;
  *(v10 + 6) = v58;
  *(v10 + 7) = v39;
  *(v10 + 8) = v60;
  v10[144] = v61;
  v40 = v55;
  *(v10 + 2) = v54;
  *(v10 + 3) = v40;
  v41 = v57;
  *(v10 + 4) = v56;
  *(v10 + 5) = v41;
  v42 = v53;
  *v10 = v52;
  *(v10 + 1) = v42;
  v43 = v6[5];
  *&v10[v43] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E2C0, &qword_1E4AB01A0);
  swift_storeEnumTagMultiPayload();
  v10[v6[6]] = 1;
  *&v10[v6[8]] = v38;
  sub_1E4A4F004(v10, a1);
  return (*(v7 + 56))(a1, 0, 1, v6);
}

void sub_1E4A4EF3C(id a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    goto LABEL_6;
  }

  if (a2 <= 4u)
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
      }

      return;
    }

LABEL_6:

    return;
  }

  if (a2 == 5 || a2 == 6)
  {
    goto LABEL_6;
  }
}

uint64_t sub_1E4A4EF94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4A4F004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WKAnimationPackageLayer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E4A4F068()
{
  result = qword_1EE042DA0[0];
  if (!qword_1EE042DA0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E2C8, &unk_1E4AAF1B0);
    sub_1E4A4F11C(&qword_1EE042E00, type metadata accessor for WKAnimationPackageLayer);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE042DA0);
  }

  return result;
}

uint64_t sub_1E4A4F11C(unint64_t *a1, void (*a2)(uint64_t))
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

void WKLiveWallpaper.fullsizeImageURL.getter()
{
  v1 = [*(*v0 + 16) fullsizeImageURL];
  sub_1E4AA9FC0();
}

id WKLiveWallpaper.thumbnailImage.getter()
{
  v1 = [*(*v0 + 16) thumbnailImage];

  return v1;
}

uint64_t WKLiveWallpaper.init(identifier:name:thumbnailImageURL:fullsizeImageURL:videoAssetURL:stillTimeInVideo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>, double a8@<D0>)
{
  v33 = a6;
  v34 = a3;
  v35 = a5;
  v36 = a4;
  v32[1] = a2;
  v37 = a1;
  v38 = a7;
  v12 = sub_1E4AA9FE0();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v32 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = v32 - v21;
  v23 = v13[2];
  v23(v32 - v21, a4, v12);
  v23(v20, a5, v12);
  v23(v17, a6, v12);
  v24 = objc_allocWithZone(WKLiveWallpaper);
  v25 = sub_1E4AAA870();

  v26 = sub_1E4AA9FA0();
  v27 = sub_1E4AA9FA0();
  v28 = sub_1E4AA9FA0();
  v29 = [v24 initWithIdentifier:v37 name:v25 type:0 thumbnailImageURL:v26 fullsizeImageURL:v27 videoAssetURL:v28 stillTimeInVideo:a8];

  v30 = v13[1];
  v30(v33, v12);
  v30(v35, v12);
  v30(v36, v12);
  v30(v17, v12);
  v30(v20, v12);
  v30(v22, v12);
  type metadata accessor for WKLiveWallpaper.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v29;
  *v38 = result;
  return result;
}

Swift::OpaquePointer_optional __swiftcall WKLiveWallpaper.propertyListRepresentation()()
{
  v1 = [*(*v0 + 16) propertyListRepresentation];
  if (v1)
  {
    v3 = v1;
    v4 = sub_1E4AAA810();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  result.value._rawValue = v5;
  result.is_nil = v2;
  return result;
}

id WKLiveWallpaper.copyWallpaperContents(to:)()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = *(*v0 + 16);
  v2 = sub_1E4AA9FA0();
  v7[0] = 0;
  v3 = [v1 copyWallpaperContentsToDestinationDirectoryURL:v2 error:v7];

  if (v3)
  {
    result = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_1E4AA9F60();

    result = swift_willThrow();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t WKLiveWallpaper.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKLiveWallpaper.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

void sub_1E4A4F7D4()
{
  v1 = [*(*v0 + 16) fullsizeImageURL];
  sub_1E4AA9FC0();
}

unint64_t sub_1E4A4F85C()
{
  result = qword_1ECF8E2D0;
  if (!qword_1ECF8E2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E2D0);
  }

  return result;
}

uint64_t sub_1E4A4F8D4@<X0>(SEL *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = [*(*v2 + 16) *a1];
  if (v4)
  {
    v5 = v4;
    sub_1E4AA9FC0();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_1E4AA9FE0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

uint64_t type metadata accessor for WKFlatWallpaperPoster()
{
  result = qword_1EE0433C8;
  if (!qword_1EE0433C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4A4FA00()
{
  sub_1E4A48E74();
  if (v0 <= 0x3F)
  {
    sub_1E4A48ECC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 sub_1E4A4FAA8@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for WKFlatWallpaperPoster();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1E4A505CC(v1, v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1E4A50670(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_1E4AAA6F0();
  sub_1E4AAA2B0();
  *a1 = sub_1E4A506D4;
  *(a1 + 8) = v7;
  v8 = v11[5];
  *(a1 + 80) = v11[4];
  *(a1 + 96) = v8;
  *(a1 + 112) = v11[6];
  v9 = v11[1];
  *(a1 + 16) = v11[0];
  *(a1 + 32) = v9;
  result = v11[3];
  *(a1 + 48) = v11[2];
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1E4A4FC10@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for WKFlatWallpaperPoster() + 24));
  v4 = type metadata accessor for WKWallpaperPreviewImage();
  v5 = (a2 + v4[6]);
  v5[3] = &type metadata for WKWallpaperBundle;
  v5[4] = sub_1E4A50754();
  *v5 = v3;
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E2C0, &qword_1E4AB01A0);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v4[5];
  *v6 = swift_getKeyPath();
  *(v6 + 1) = 0;
  v6[16] = 0;
  *(a2 + v4[7]) = 2;

  sub_1E4AAA250();
  v9 = sub_1E4A4FD3C(v7, v8);
  v11 = v10;
  sub_1E4AAA740();
  v13 = v12;
  v15 = v14;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E2D8, &unk_1E4AAF408);
  v17 = (a2 + *(result + 36));
  *v17 = v9;
  *(v17 + 1) = v11;
  *(v17 + 2) = v13;
  *(v17 + 3) = v15;
  return result;
}

double sub_1E4A4FD3C(double a1, double a2)
{
  v5 = WKStandardDisplayModeScreenSize();
  if (v5 > v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = [objc_opt_self() currentDevice];
  v9 = [v8 userInterfaceIdiom];

  v10 = 156.0;
  if (!v9)
  {
    v10 = 52.0;
  }

  v11 = v7 + v10;
  v12 = 238.0;
  if (!v9)
  {
    v12 = 128.0;
  }

  v13 = v7 + v12;
  if (v11 > v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = v13;
  }

  if (a2 >= a1)
  {
    v15 = a1;
  }

  else
  {
    v15 = a2;
  }

  v16 = WKStandardDisplayModeScreenSize();
  v17 = type metadata accessor for WKFlatWallpaperPoster();
  v18 = sub_1E4A4FEAC(*(v2 + *(v17 + 24)));
  v19 = 1.0;
  if (v18)
  {
    v20 = v18;
    [v18 size];
    v22 = v21;
    v24 = v23;

    if (v14 != v22 || v14 != v24)
    {
      if (v22 == v24)
      {
        return v15 / v16 * (v14 / v22);
      }

      else if (v22 / v24 != v14 / v14)
      {
        if (a1 / v22 >= a2 / v24)
        {
          v26 = a1;
        }

        else
        {
          v26 = v22 * (a2 / v24);
        }

        return v26 / v22;
      }
    }
  }

  return v19;
}

uint64_t sub_1E4A4FEAC(uint64_t a1)
{
  v2 = sub_1E4AA9FE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v53 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v53 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v53 - v18;
  v20 = *(a1 + 16);
  v21 = [v20 wallpaperBackingTypeForLocation_];
  result = 0;
  if (!v21)
  {
    v56 = v11;
    v58 = v14;
    v62 = MEMORY[0x1E69E7CC8];
    if ([v20 fileBasedWallpaperForLocation:@"WKWallpaperLocationCoverSheet" andAppearance:@"default"])
    {
      sub_1E4A5749C(v59);
      swift_unknownObjectRelease();
      v23 = v3;
      v24 = v6;
      v26 = v60;
      v25 = v61;
      __swift_project_boxed_opaque_existential_1(v59, v60);
      v27 = v26;
      v6 = v24;
      v3 = v23;
      (*(v25 + 16))(v27, v25);
      v55 = *(v23 + 56);
      v55(v19, 0, 1, v2);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
    }

    else
    {
      v55 = *(v3 + 56);
      v55(v19, 1, 1, v2);
    }

    v57 = v19;
    sub_1E4A48054(v19, v17);
    v54 = *(v3 + 48);
    if (v54(v17, 1, v2) == 1)
    {
      v28 = 0;
    }

    else
    {
      (*(v3 + 32))(v6, v17, v2);
      v29 = objc_opt_self();
      v30 = sub_1E4AA9FA0();
      v28 = [v29 wk:v30 imageWithContentsOfURL:?];

      (*(v3 + 8))(v6, v2);
    }

    v31 = v6;
    if (qword_1EE0421D0 != -1)
    {
      swift_once();
    }

    v32 = qword_1EE048B18;
    if (v28)
    {
      v33 = v28;
      if (MEMORY[0x1E69E7CC8] >> 62)
      {
        result = sub_1E4AAAC80();
        if (__OFADD__(result, 1))
        {
          goto LABEL_37;
        }

        v34 = sub_1E4A950AC(MEMORY[0x1E69E7CC8], result + 1);
      }

      else
      {
        v34 = v62;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59[0] = v34;
      sub_1E4A95590(v33, v32, isUniquelyReferenced_nonNull_native);
      v62 = v59[0];
    }

    else
    {
    }

    v36 = [v20 fileBasedWallpaperForLocation:@"WKWallpaperLocationCoverSheet" andAppearance:@"dark"];
    v37 = v58;
    v38 = v31;
    if (v36)
    {
      sub_1E4A5749C(v59);
      swift_unknownObjectRelease();
      v39 = v60;
      v40 = v61;
      __swift_project_boxed_opaque_existential_1(v59, v60);
      (*(v40 + 16))(v39, v40);
      v55(v37, 0, 1, v2);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
    }

    else
    {
      v55(v58, 1, 1, v2);
    }

    v41 = v56;
    sub_1E4A48054(v37, v56);
    if (v54(v41, 1, v2) == 1)
    {
      v42 = 0;
    }

    else
    {
      (*(v3 + 32))(v38, v41, v2);
      v43 = objc_opt_self();
      v44 = sub_1E4AA9FA0();
      v42 = [v43 wk:v44 imageWithContentsOfURL:?];

      (*(v3 + 8))(v38, v2);
    }

    v45 = v57;
    if (qword_1EE0421D8 != -1)
    {
      swift_once();
    }

    v46 = qword_1EE048B20;
    if (!v42)
    {

      v48 = 0;
LABEL_34:
      v50 = objc_opt_self();
      sub_1E4A47A2C(0, &unk_1EE0421C0, 0x1E69DD1B8);
      sub_1E4A47A2C(0, &unk_1EE043980, 0x1E69DCAB8);
      sub_1E4A507A8();
      v51 = sub_1E4AAA800();

      v52 = [v50 wk:v51 dynamicImageWithTraitCollectionToImageMap:v28 baseImage:?];

      sub_1E4A480C4(v37);
      sub_1E4A480C4(v45);
      return v52;
    }

    v47 = v62;
    if ((v62 & 0xC000000000000001) == 0)
    {
      v48 = v42;
      goto LABEL_33;
    }

    if (v62 >= 0)
    {
      v47 = v62 & 0xFFFFFFFFFFFFFF8;
    }

    v48 = v42;
    result = sub_1E4AAAC80();
    if (!__OFADD__(result, 1))
    {
      v47 = sub_1E4A950AC(v47, result + 1);
LABEL_33:
      v49 = swift_isUniquelyReferenced_nonNull_native();
      v59[0] = v47;
      sub_1E4A95590(v48, v46, v49);
      v62 = v59[0];
      goto LABEL_34;
    }

    __break(1u);
LABEL_37:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4A505CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WKFlatWallpaperPoster();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4A50630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a19)
  {
  }
}

uint64_t sub_1E4A50670(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WKFlatWallpaperPoster();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4A506D4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for WKFlatWallpaperPoster() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E4A4FC10(v4, a1);
}

unint64_t sub_1E4A50754()
{
  result = qword_1EE043FA0;
  if (!qword_1EE043FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043FA0);
  }

  return result;
}

unint64_t sub_1E4A507A8()
{
  result = qword_1EE0421B0;
  if (!qword_1EE0421B0)
  {
    sub_1E4A47A2C(255, &unk_1EE0421C0, 0x1E69DD1B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0421B0);
  }

  return result;
}

unint64_t sub_1E4A50810()
{
  result = qword_1ECF8E2E0;
  if (!qword_1ECF8E2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E2E8, &qword_1E4AAF418);
    sub_1E4A5089C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E2E0);
  }

  return result;
}

unint64_t sub_1E4A5089C()
{
  result = qword_1ECF8E2F0;
  if (!qword_1ECF8E2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E2F8, &qword_1E4AAF420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E2F0);
  }

  return result;
}

uint64_t sub_1E4A5092C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for WKParameterizedCAWallpaperView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - v13;
  v15 = sub_1E4AA9FE0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![*(*(v1 + 168) + 16) valueBasedWallpaperForLocation:@"WKWallpaperLocationCoverSheet" andAppearance:@"default"])
  {
    goto LABEL_6;
  }

  v33 = a1;
  v34 = v3;
  sub_1E4A57768(&v35);
  swift_unknownObjectRelease();
  v20 = *(&v36 + 1);
  v21 = v37;
  __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
  (*(v21 + 24))(&v45, v20, v21);
  v22 = v45;
  v23 = v46;
  __swift_destroy_boxed_opaque_existential_1Tm(&v35);
  if (v23 != 6)
  {
    sub_1E4A4EF3C(v22, v23);
    v3 = v34;
    a1 = v33;
LABEL_6:
    (*(v16 + 56))(v14, 1, 1, v15);
    goto LABEL_7;
  }

  v24 = [v22[2] fileURL];
  if (v24)
  {
    v25 = v24;
    sub_1E4AA9FC0();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v3 = v34;
  a1 = v33;
  (*(v16 + 56))(v12, v26, 1, v15);
  sub_1E4A4EF94(v12, v14);
  sub_1E4A4EF3C(v22, 6u);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    v28 = *(v16 + 32);
    v28(v19, v14, v15);
    v28(&v7[*(v3 + 24)], v19, v15);
    *&v35 = swift_getKeyPath();
    sub_1E4A4E620(&v35);
    v29 = v42;
    *(v7 + 6) = v41;
    *(v7 + 7) = v29;
    *(v7 + 8) = v43;
    v7[144] = v44;
    v30 = v38;
    *(v7 + 2) = v37;
    *(v7 + 3) = v30;
    v31 = v40;
    *(v7 + 4) = v39;
    *(v7 + 5) = v31;
    v32 = v36;
    *v7 = v35;
    *(v7 + 1) = v32;
    v7[145] = 0;
    sub_1E4A50D2C(v7, a1);
    return (*(v4 + 56))(a1, 0, 1, v3);
  }

LABEL_7:
  sub_1E4A480C4(v14);
  return (*(v4 + 56))(a1, 1, 1, v3);
}

uint64_t sub_1E4A50D2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WKParameterizedCAWallpaperView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E4A50D90()
{
  result = qword_1ECF8E300;
  if (!qword_1ECF8E300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E308, &qword_1E4AAF570);
    sub_1E4A50E14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E300);
  }

  return result;
}

unint64_t sub_1E4A50E14()
{
  result = qword_1ECF8E310;
  if (!qword_1ECF8E310)
  {
    type metadata accessor for WKParameterizedCAWallpaperView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E310);
  }

  return result;
}

uint64_t sub_1E4A50E98@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = type metadata accessor for WKParameterizedCAWallpaperView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  v14 = sub_1E4AA9FE0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![*(*(v1 + 168) + 16) valueBasedWallpaperForLocation:@"WKWallpaperLocationCoverSheet" andAppearance:@"default"])
  {
    goto LABEL_6;
  }

  v33 = v2;
  sub_1E4A57768(&v35);
  swift_unknownObjectRelease();
  v19 = *(&v36 + 1);
  v20 = v37;
  __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
  (*(v20 + 24))(&v45, v19, v20);
  v21 = v45;
  v22 = v46;
  __swift_destroy_boxed_opaque_existential_1Tm(&v35);
  if (v22 != 6)
  {
    sub_1E4A4EF3C(v21, v22);
    v2 = v33;
LABEL_6:
    (*(v15 + 56))(v13, 1, 1, v14);
    goto LABEL_7;
  }

  v23 = [v21[2] fileURL];
  if (v23)
  {
    v24 = v23;
    sub_1E4AA9FC0();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v2 = v33;
  (*(v15 + 56))(v11, v25, 1, v14);
  sub_1E4A4EF94(v11, v13);
  sub_1E4A4EF3C(v21, 6u);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    v27 = *(v15 + 32);
    v27(v18, v13, v14);
    v27(&v6[*(v2 + 24)], v18, v14);
    *&v35 = swift_getKeyPath();
    sub_1E4A4E620(&v35);
    v28 = v42;
    *(v6 + 6) = v41;
    *(v6 + 7) = v28;
    *(v6 + 8) = v43;
    v6[144] = v44;
    v29 = v38;
    *(v6 + 2) = v37;
    *(v6 + 3) = v29;
    v30 = v40;
    *(v6 + 4) = v39;
    *(v6 + 5) = v30;
    v31 = v36;
    *v6 = v35;
    *(v6 + 1) = v31;
    v6[145] = 1;
    v32 = v34;
    sub_1E4A50D2C(v6, v34);
    return (*(v3 + 56))(v32, 0, 1, v2);
  }

LABEL_7:
  sub_1E4A480C4(v13);
  return (*(v3 + 56))(v34, 1, 1, v2);
}

double sub_1E4A51294@<D0>(_OWORD *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a2;
  HIDWORD(v58) = a2 & 0xFFFFFF00;
  v6 = sub_1E4AAA320();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4A51B08(a1, v3 & 0xFF01, v124);
  v60 = v124[1];
  v61 = v124[0];
  v59 = v124[2];
  v62 = v10;
  v63 = v7;
  v64 = v6;
  if (v3)
  {
    v123 = a1;

    v11 = a1;
  }

  else
  {

    sub_1E4AAAA10();
    v12 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    sub_1E4AAA310();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v6);
    v11 = v123;
  }

  swift_getKeyPath();
  v101 = v11;
  v65 = sub_1E4A52BC8();
  sub_1E4AAA060();

  v13 = *(v11 + 22);

  sub_1E4AAA740();
  v15 = v14;
  v17 = v16;
  sub_1E4A51F38(a1, BYTE4(v58) | v3 & 1);
  v19 = v18;
  v21 = v20;
  KeyPath = swift_getKeyPath();
  if (v3)
  {
    v122 = a1;

    v23 = a1;
  }

  else
  {

    sub_1E4AAAA10();
    v24 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    v25 = v62;
    sub_1E4AAA310();
    swift_getAtKeyPath();

    (*(v63 + 8))(v25, v64);
    v23 = v122;
  }

  swift_getKeyPath();
  v101 = v23;
  sub_1E4AAA060();

  v26 = v23[8];
  v96 = v23[7];
  v97 = v26;
  v27 = v23[10];
  v98 = v23[9];
  v99 = v27;
  v28 = v23[3];
  v29 = v23[5];
  v30 = v23[6];
  v93 = v23[4];
  v94 = v29;
  v95 = v30;
  v31 = v23[2];
  v92 = v28;
  v91 = v31;
  sub_1E4A49D24(&v91, &v101);

  *&v78[8] = v91;
  *&v78[72] = v95;
  *&v78[56] = v94;
  *&v78[40] = v93;
  *&v78[24] = v92;
  *&v78[136] = v99;
  *&v78[120] = v98;
  *&v78[104] = v97;
  *&v78[88] = v96;
  *&v100[0] = KeyPath;
  *(&v100[9] + 1) = *(&v99 + 1);
  *(&v100[7] + 8) = *&v78[112];
  *(&v100[6] + 8) = *&v78[96];
  *(&v100[3] + 8) = *&v78[48];
  *(&v100[2] + 8) = *&v78[32];
  *(&v100[8] + 8) = *&v78[128];
  *(&v100[4] + 8) = *&v78[64];
  *(&v100[5] + 8) = *&v78[80];
  *(v100 + 8) = *v78;
  *(&v100[1] + 8) = *&v78[16];
  v118 = v100[6];
  v119 = v100[7];
  v120 = v100[8];
  v121 = v100[9];
  v114 = v100[2];
  v115 = v100[3];
  v116 = v100[4];
  v117 = v100[5];
  v112 = v100[0];
  v113 = v100[1];
  v108 = *&v78[96];
  v109 = *&v78[112];
  v110 = *&v78[128];
  v104 = *&v78[32];
  v105 = *&v78[48];
  v106 = *&v78[64];
  v107 = *&v78[80];
  v102 = *v78;
  v101 = KeyPath;
  v111 = *(&v99 + 1);
  v103 = *&v78[16];
  sub_1E4A52D40(v100, &v81, &qword_1ECF8E328, &qword_1E4AAF830);
  sub_1E4A4DC88(&v101, &qword_1ECF8E328, &qword_1E4AAF830);

  v32 = a1;
  v33 = v64;
  if ((v3 & 1) == 0)
  {
    sub_1E4AAAA10();
    v34 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    v35 = v62;
    sub_1E4AAA310();
    swift_getAtKeyPath();

    (*(v63 + 8))(v35, v33);
    v32 = v81;
  }

  swift_getKeyPath();
  *&v81 = v32;
  sub_1E4AAA060();

  v36 = *(v32 + 12);

  if (v3)
  {
    v80 = a1;
  }

  else
  {

    sub_1E4AAAA10();
    v37 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    v38 = v62;
    sub_1E4AAA310();
    swift_getAtKeyPath();

    (*(v63 + 8))(v38, v33);
    a1 = v80;
  }

  swift_getKeyPath();
  *&v81 = a1;
  sub_1E4AAA060();

  v39 = a1[8];
  v73 = a1[7];
  v74 = v39;
  v40 = a1[10];
  v75 = a1[9];
  v76 = v40;
  v41 = a1[3];
  v42 = a1[5];
  v43 = a1[6];
  v70 = a1[4];
  v71 = v42;
  v72 = v43;
  v68 = a1[2];
  v69 = v41;
  sub_1E4A49D24(&v68, &v81);

  *&v67[8] = v68;
  *&v67[72] = v72;
  *&v67[56] = v71;
  *&v67[40] = v70;
  *&v67[24] = v69;
  *&v67[136] = v76;
  *&v67[120] = v75;
  *&v67[104] = v74;
  *&v67[88] = v73;
  *&v77[0] = v36;
  *(&v77[9] + 1) = *(&v76 + 1);
  *(&v77[7] + 8) = *&v67[112];
  *(&v77[6] + 8) = *&v67[96];
  *(&v77[3] + 8) = *&v67[48];
  *(&v77[2] + 8) = *&v67[32];
  *(&v77[8] + 8) = *&v67[128];
  *(&v77[4] + 8) = *&v67[64];
  *(&v77[5] + 8) = *&v67[80];
  *(v77 + 8) = *v67;
  *(&v77[1] + 8) = *&v67[16];
  v87 = v77[6];
  v88 = v77[7];
  v89 = v77[8];
  v90 = v77[9];
  v83 = v77[2];
  v84 = v77[3];
  v85 = v77[4];
  v86 = v77[5];
  v81 = v77[0];
  v82 = v77[1];
  *&v78[104] = *&v67[96];
  *&v78[120] = *&v67[112];
  *&v78[136] = *&v67[128];
  *&v78[40] = *&v67[32];
  *&v78[56] = *&v67[48];
  *&v78[72] = *&v67[64];
  *&v78[88] = *&v67[80];
  *&v78[8] = *v67;
  *v78 = v36;
  v79 = *(&v76 + 1);
  *&v78[24] = *&v67[16];
  sub_1E4A52D40(v77, &v66, &qword_1ECF8E330, &qword_1E4AAF838);
  sub_1E4A4DC88(v78, &qword_1ECF8E330, &qword_1E4AAF838);
  v44 = sub_1E4AAA290();
  v45 = sub_1E4AAA4F0();
  v46 = v60;
  *a3 = v61;
  *(a3 + 8) = v46;
  *(a3 + 16) = v59;
  *(a3 + 24) = v13;
  *(a3 + 32) = v15;
  *(a3 + 40) = v17;
  *(a3 + 48) = v19;
  *(a3 + 56) = v21;
  v47 = v119;
  *(a3 + 160) = v118;
  *(a3 + 176) = v47;
  v48 = v121;
  *(a3 + 192) = v120;
  *(a3 + 208) = v48;
  v49 = v115;
  *(a3 + 96) = v114;
  *(a3 + 112) = v49;
  v50 = v117;
  *(a3 + 128) = v116;
  *(a3 + 144) = v50;
  v51 = v113;
  *(a3 + 64) = v112;
  *(a3 + 80) = v51;
  v52 = v88;
  *(a3 + 320) = v87;
  *(a3 + 336) = v52;
  v53 = v90;
  *(a3 + 352) = v89;
  *(a3 + 368) = v53;
  v54 = v84;
  *(a3 + 256) = v83;
  *(a3 + 272) = v54;
  v55 = v86;
  *(a3 + 288) = v85;
  *(a3 + 304) = v55;
  result = *&v81;
  v57 = v82;
  *(a3 + 224) = v81;
  *(a3 + 240) = v57;
  *(a3 + 384) = v44;
  *(a3 + 392) = v45;
  return result;
}

uint64_t sub_1E4A51B08@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, void *a3@<X8>)
{
  v6 = sub_1E4AAA320();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  v11 = a1;
  if ((a2 & 1) == 0)
  {
    sub_1E4AAAA10();
    v12 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    sub_1E4AAA310();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v6);
    v11 = v19;
  }

  swift_getKeyPath();
  v19 = v11;
  sub_1E4A52BC8();
  sub_1E4AAA060();

  v13 = *(v11 + 16);

  if (v13)
  {
    result = sub_1E4A51CF4(a2 & 0xFF01, v13, &v19);
    v15 = v19;
    v16 = 256;
    if (!v21)
    {
      v16 = 0;
    }

    v17 = v16 | v20;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  *a3 = v15;
  a3[1] = v17;
  a3[2] = v13;
  return result;
}

uint64_t sub_1E4A51CF4@<X0>(__int16 a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (HIBYTE(a1))
  {
    if (HIBYTE(a1) != 1)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E338, &qword_1E4AAF868);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E340, &qword_1E4AAF870);
      sub_1E4A52DA8();
      sub_1E4A49E30(&qword_1EE042438, &qword_1ECF8E340, &qword_1E4AAF870);
      goto LABEL_7;
    }

    v5 = a2;
    v6 = 1;
  }

  else
  {
    v5 = a2;
    v6 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E348, &qword_1E4AAF878);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E350, &qword_1E4AAF880);
  sub_1E4A49E30(&qword_1EE042430, &qword_1ECF8E348, &qword_1E4AAF878);
  sub_1E4A49E30(&qword_1EE042428, &qword_1ECF8E350, &qword_1E4AAF880);
  sub_1E4AAA430();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E338, &qword_1E4AAF868);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E340, &qword_1E4AAF870);
  sub_1E4A52DA8();
  sub_1E4A49E30(&qword_1EE042438, &qword_1ECF8E340, &qword_1E4AAF870);
LABEL_7:
  result = sub_1E4AAA430();
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 9) = v7;
  return result;
}

uint64_t sub_1E4A51F38(uint64_t a1, char a2)
{
  v4 = sub_1E4AAA320();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  v9 = a1;
  if ((a2 & 1) == 0)
  {
    sub_1E4AAAA10();
    v10 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    sub_1E4AAA310();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    v9 = v21;
  }

  swift_getKeyPath();
  v21 = v9;
  sub_1E4A52BC8();
  sub_1E4AAA060();

  v11 = *(v9 + 16);

  if (v11)
  {
    v13 = [*(v11 + 16) adjustmentTraits];
    v14 = [v13 offset];

    v15 = a1;
    if ((a2 & 1) == 0)
    {
      sub_1E4AAAA10();
      v16 = sub_1E4AAA4E0();
      sub_1E4AAA0B0();

      sub_1E4AAA310();
      swift_getAtKeyPath();

      (*(v5 + 8))(v8, v4);
      v15 = v21;
    }

    v20 = v5;
    swift_getKeyPath();
    v21 = v15;
    sub_1E4AAA060();

    v17 = *(v15 + 104);

    [v14 offsetForCurrentScreenScaleModeWithInterfaceOrientation_];

    if ((a2 & 1) == 0)
    {
      sub_1E4AAAA10();
      v18 = sub_1E4AAA4E0();
      sub_1E4AAA0B0();

      sub_1E4AAA310();
      swift_getAtKeyPath();

      (*(v20 + 8))(v8, v4);
      a1 = v21;
    }

    swift_getKeyPath();
    v21 = a1;
    sub_1E4AAA060();

    v19 = *(a1 + 104);
  }

  return result;
}

void sub_1E4A52360()
{
  if (qword_1EE0424A8 != -1)
  {
    swift_once();
  }

  v0 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v0, qword_1EE048B58);
  oslog = sub_1E4AAA0C0();
  v1 = sub_1E4AAAA20();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136446466;
    *(v2 + 4) = sub_1E4A85938(0xD00000000000001BLL, 0x80000001E4AB88B0, &v5);
    *(v2 + 12) = 2082;
    *(v2 + 14) = sub_1E4A85938(0xD000000000000049, 0x80000001E4AB88D0, &v5);
    _os_log_impl(&dword_1E4A23000, oslog, v1, "…Complete (%{public}s.%{public}s)", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v3, -1, -1);
    MEMORY[0x1E691FE80](v2, -1, -1);
  }
}

void sub_1E4A524E8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v48 = a4;
  v45 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E318, &qword_1E4AAF6C0);
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v46 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v47 = &v42 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v42 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v55 = &v42 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v54 = &v42 - v18;
  if (qword_1EE0424A8 != -1)
  {
    swift_once();
  }

  v19 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v19, qword_1EE048B58);
  v20 = sub_1E4AAA0C0();
  v21 = sub_1E4AAAA20();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = a2;
    v24 = swift_slowAlloc();
    v56 = v24;
    *v22 = 136446466;
    *(v22 + 4) = sub_1E4A85938(0xD00000000000001BLL, 0x80000001E4AB88B0, &v56);
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_1E4A85938(0xD000000000000049, 0x80000001E4AB88D0, &v56);
    _os_log_impl(&dword_1E4A23000, v20, v21, "Start (%{public}s.%{public}s)…", v22, 0x16u);
    swift_arrayDestroy();
    v25 = v24;
    a2 = v23;
    MEMORY[0x1E691FE80](v25, -1, -1);
    MEMORY[0x1E691FE80](v22, -1, -1);
  }

  v26 = [objc_opt_self() blackColor];
  [a2 setBackgroundColor_];

  type metadata accessor for WKWallpaperPosterLayerViewModel();
  v49 = sub_1E4A52BC8();
  v56 = sub_1E4AAA1E0();
  v57 = v27 & 1;
  v58 = 0;
  v28 = sub_1E4A52C20();
  v52 = a1;
  v53 = v28;
  sub_1E4AAA560();

  v29 = v7[2];
  v30 = v55;
  v29();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E320, &qword_1E4AAF6C8);
  v31 = v30;
  (v29)(v15, v30, v6);
  v32 = sub_1E4AAA270();
  [v32 _setSafeAreaInsetsFrozen_];
  v50 = v7[1];
  v50(v31, v6);
  v44 = v32;
  [a2 addSubview_];
  [a2 bounds];
  [v32 setFrame_];
  [v32 setAutoresizingMask_];
  v56 = sub_1E4AAA1E0();
  v57 = v33 & 1;
  v58 = 1;
  sub_1E4AAA560();

  v43 = v29;
  (v29)(v15, v31, v6);
  v34 = v47;
  (v29)(v47, v15, v6);
  v35 = sub_1E4AAA270();
  [v35 _setSafeAreaInsetsFrozen_];
  v50(v15, v6);
  v36 = v45;
  [v45 addSubview_];
  [v36 bounds];
  [v35 setFrame_];
  [v35 setAutoresizingMask_];
  v56 = sub_1E4AAA1E0();
  v57 = v37 & 1;
  v58 = 2;
  sub_1E4AAA560();

  v38 = v43;
  (v43)(v34, v15, v6);
  (v38)(v46, v34, v6);
  v39 = sub_1E4AAA270();
  [v39 _setSafeAreaInsetsFrozen_];
  v40 = v50;
  v50(v34, v6);
  v41 = v48;
  [v48 addSubview_];
  [v41 bounds];
  [v39 setFrame_];
  [v39 setAutoresizingMask_];

  v40(v15, v6);
  v40(v55, v6);
  v40(v54, v6);
  sub_1E4A52360();
}

unint64_t sub_1E4A52BC8()
{
  result = qword_1EE042900;
  if (!qword_1EE042900)
  {
    type metadata accessor for WKWallpaperPosterLayerViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042900);
  }

  return result;
}

unint64_t sub_1E4A52C20()
{
  result = qword_1EE043000;
  if (!qword_1EE043000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043000);
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1E4A52C88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E4A52CD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E4A52D40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1E4A52DA8()
{
  result = qword_1EE0422E8;
  if (!qword_1EE0422E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E338, &qword_1E4AAF868);
    sub_1E4A49E30(&qword_1EE042430, &qword_1ECF8E348, &qword_1E4AAF878);
    sub_1E4A49E30(&qword_1EE042428, &qword_1ECF8E350, &qword_1E4AAF880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0422E8);
  }

  return result;
}

unint64_t sub_1E4A52E98()
{
  result = qword_1EE042360;
  if (!qword_1EE042360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E358, &qword_1E4AAF890);
    sub_1E4A52F24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042360);
  }

  return result;
}

unint64_t sub_1E4A52F24()
{
  result = qword_1EE042368;
  if (!qword_1EE042368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E360, &qword_1E4AAF898);
    sub_1E4A52FDC();
    sub_1E4A49E30(&qword_1EE042350, &qword_1ECF8E330, &qword_1E4AAF838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042368);
  }

  return result;
}

unint64_t sub_1E4A52FDC()
{
  result = qword_1EE042380;
  if (!qword_1EE042380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E368, &qword_1E4AAF8A0);
    sub_1E4A53094();
    sub_1E4A49E30(&qword_1EE0422A0, &qword_1ECF8E328, &qword_1E4AAF830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042380);
  }

  return result;
}

unint64_t sub_1E4A53094()
{
  result = qword_1EE042398;
  if (!qword_1EE042398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E370, &qword_1E4AAF8A8);
    sub_1E4A53120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042398);
  }

  return result;
}

unint64_t sub_1E4A53120()
{
  result = qword_1EE0423B8;
  if (!qword_1EE0423B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E378, &qword_1E4AAF8B0);
    sub_1E4A531AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0423B8);
  }

  return result;
}

unint64_t sub_1E4A531AC()
{
  result = qword_1EE042270;
  if (!qword_1EE042270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E380, &qword_1E4AAF8B8);
    sub_1E4A53230();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042270);
  }

  return result;
}

unint64_t sub_1E4A53230()
{
  result = qword_1EE042250;
  if (!qword_1EE042250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E388, &qword_1E4AAF8C0);
    sub_1E4A49E30(&qword_1EE042258, &qword_1ECF8E390, qword_1E4AAF8C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042250);
  }

  return result;
}

unint64_t sub_1E4A532E4()
{
  result = qword_1ECF8E398;
  if (!qword_1ECF8E398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E398);
  }

  return result;
}

uint64_t sub_1E4A53338()
{
  sub_1E4A53380();

  return sub_1E4AAA330();
}

unint64_t sub_1E4A53380()
{
  result = qword_1EE0433E0;
  if (!qword_1EE0433E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0433E0);
  }

  return result;
}

__n128 sub_1E4A533E4()
{
  if (qword_1EE043068 != -1)
  {
    swift_once();
  }

  v0 = byte_1EE043070;
  v1 = qword_1EE043078;
  if (qword_1EE043040 != -1)
  {
    swift_once();
  }

  v2 = byte_1EE043048;
  v3 = qword_1EE043050;
  v4 = *MEMORY[0x1E6979EB8];
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 functionWithName_];

  v8 = sub_1E4AAA720();
  LOBYTE(xmmword_1EE048C10) = 0;
  BYTE8(xmmword_1EE048C10) = v0;
  *&xmmword_1EE048C20 = v1;
  BYTE8(xmmword_1EE048C20) = v2;
  *&xmmword_1EE048C30 = v3;
  BYTE8(xmmword_1EE048C30) = 1;
  *&xmmword_1EE048C40 = 0;
  *(&xmmword_1EE048C40 + 1) = v7;
  *&xmmword_1EE048C50 = v8;
  *(&xmmword_1EE048C50 + 1) = 1;
  xmmword_1EE048C60 = 0uLL;
  __asm { FMOV            V0.2D, #1.0 }

  xmmword_1EE048C70 = result;
  *&xmmword_1EE048C90 = 0;
  *(&xmmword_1EE048C90 + 1) = 0x3FF0000000000000;
  xmmword_1EE048C80 = 0uLL;
  return result;
}

uint64_t sub_1E4A53524@<X0>(__int128 *a1@<X8>)
{
  if (qword_1EE0433E8 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = xmmword_1EE048C60;
  v11[6] = xmmword_1EE048C70;
  v11[7] = xmmword_1EE048C80;
  v2 = xmmword_1EE048C80;
  v11[8] = xmmword_1EE048C90;
  v3 = xmmword_1EE048C20;
  v4 = xmmword_1EE048C30;
  v11[2] = xmmword_1EE048C30;
  v11[3] = xmmword_1EE048C40;
  v5 = xmmword_1EE048C40;
  v6 = xmmword_1EE048C50;
  v11[4] = xmmword_1EE048C50;
  v11[5] = xmmword_1EE048C60;
  v7 = xmmword_1EE048C10;
  v11[0] = xmmword_1EE048C10;
  v11[1] = xmmword_1EE048C20;
  a1[6] = xmmword_1EE048C70;
  a1[7] = v2;
  a1[8] = xmmword_1EE048C90;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v1;
  *a1 = v7;
  a1[1] = v3;
  return sub_1E4A49D24(v11, &v10);
}

uint64_t sub_1E4A535E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1E4A53648();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1E4A53648()
{
  result = qword_1EE042A70;
  if (!qword_1EE042A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042A70);
  }

  return result;
}

uint64_t sub_1E4A536B4(SEL *a1)
{
  v2 = [*(*v1 + 16) *a1];
  sub_1E4A459A0();
  v3 = sub_1E4AAA950();

  return v3;
}

uint64_t WKBokehWallpaperInput.init(backgroundColors:bubbleColors:bubbleCount:bubbleScale:parallaxMultiplier:thumbnailSeed:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = objc_allocWithZone(WKBokehWallpaperInput);
  sub_1E4A459A0();
  v11 = sub_1E4AAA940();

  v12 = sub_1E4AAA940();

  v13 = [v10 initWithBackgroundColors:v11 bubbleColors:v12 bubbleCount:a1 bubbleScale:a2 parallaxMultiplier:a4 thumbnailSeed:a5];

  type metadata accessor for WKBokehWallpaperInput.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v13;
  *a3 = result;
  return result;
}

uint64_t WKBokehWallpaperInput.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKBokehWallpaperInput.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

uint64_t WKBokehWallpaperInput.description.getter()
{
  v1 = [*(*v0 + 16) description];
  v2 = sub_1E4AAA8A0();

  return v2;
}

unint64_t sub_1E4A539B4()
{
  result = qword_1ECF8E3A0;
  if (!qword_1ECF8E3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E3A0);
  }

  return result;
}

uint64_t sub_1E4A53A18(unsigned __int8 a1)
{
  if (a1 <= 7u)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E9A0, &qword_1E4AB3700);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1E4AAFAF0;
    *(v1 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    v2 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
LABEL_3:
    v3 = v2;
    result = v1;
    *(v1 + 40) = v3;
    return result;
  }

  if (a1 <= 0xAu)
  {
    if (a1 == 8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E9A0, &qword_1E4AB3700);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1E4AAFAF0;
      *(v1 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.403921569 green:0.780392157 blue:0.941176471 alpha:1.0];
      v2 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.184313725 green:0.509803922 blue:0.729411765 alpha:1.0];
    }

    else if (a1 == 9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E9A0, &qword_1E4AB3700);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1E4AAFAF0;
      *(v1 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.62745098 green:0.839215686 blue:0.309803922 alpha:1.0];
      v2 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.388235294 green:0.650980392 blue:0.156862745 alpha:1.0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E9A0, &qword_1E4AB3700);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1E4AAFAF0;
      *(v1 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.839215686 blue:0.309803922 alpha:1.0];
      v2 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.980392157 green:0.745098039 blue:0.145098039 alpha:1.0];
    }

    goto LABEL_3;
  }

  if (a1 <= 0xCu)
  {
    if (a1 == 11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E9A0, &qword_1E4AB3700);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1E4AAFAF0;
      *(v1 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.360784314 blue:0.380392157 alpha:1.0];
      v2 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.878431373 green:0.219607843 blue:0.262745098 alpha:1.0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E9A0, &qword_1E4AB3700);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1E4AAFAF0;
      *(v1 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.658823529 green:0.654901961 blue:0.635294118 alpha:1.0];
      v2 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.380392157 green:0.37254902 blue:0.349019608 alpha:1.0];
    }

    goto LABEL_3;
  }

  if (a1 == 13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E9A0, &qword_1E4AB3700);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1E4AAFAE0;
    *(v5 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.243137255 green:0.501960784 blue:0.698039216 alpha:1.0];
    *(v5 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.305882353 green:0.576470588 blue:0.760784314 alpha:1.0];
    *(v5 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.384313725 green:0.647058824 blue:0.8 alpha:1.0];
    *(v5 + 56) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.435294118 green:0.705882353 blue:0.839215686 alpha:1.0];
    *(v5 + 64) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.482352941 green:0.745098039 blue:0.858823529 alpha:1.0];
    *(v5 + 72) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.521568627 green:0.752941176 blue:0.870588235 alpha:1.0];
    *(v5 + 80) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.541176471 green:0.749019608 blue:0.870588235 alpha:1.0];
    *(v5 + 88) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.560784314 green:0.717647059 blue:0.858823529 alpha:1.0];
    *(v5 + 96) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.576470588 green:0.670588235 blue:0.850980392 alpha:1.0];
    *(v5 + 104) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.541176471 green:0.607843137 blue:0.831372549 alpha:1.0];
    *(v5 + 112) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.478431373 green:0.525490196 blue:0.768627451 alpha:1.0];
    *(v5 + 120) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.37254902 green:0.415686275 blue:0.678431373 alpha:1.0];
    *(v5 + 128) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.258823529 green:0.305882353 blue:0.549019608 alpha:1.0];
    v6 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.121568627 green:0.180392157 blue:0.380392157 alpha:1.0];
    result = v5;
    *(v5 + 136) = v6;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E9A0, &qword_1E4AB3700);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1E4AAFAD0;
    *(v7 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.415686275 green:0.501960784 blue:0.560784314 alpha:1.0];
    *(v7 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.51372549 green:0.584313725 blue:0.619607843 alpha:1.0];
    *(v7 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.552941176 green:0.631372549 blue:0.658823529 alpha:1.0];
    *(v7 + 56) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.552941176 green:0.62745098 blue:0.650980392 alpha:1.0];
    *(v7 + 64) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.478431373 green:0.568627451 blue:0.6 alpha:1.0];
    v8 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.321568627 green:0.447058824 blue:0.501960784 alpha:1.0];
    result = v7;
    *(v7 + 72) = v8;
  }

  return result;
}

uint64_t sub_1E4A541E0(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E9A0, &qword_1E4AB3700);
  switch(a1)
  {
    case 1:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1E4AAFAD0;
      *(v4 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.156862745 green:0.662745098 blue:1.0 alpha:1.0];
      *(v4 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.619607843 green:0.196078431 blue:0.650980392 alpha:1.0];
      *(v4 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.858823529 green:0.0352941176 blue:0.22745098 alpha:1.0];
      *(v4 + 56) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.466666667 blue:0.0 alpha:1.0];
      *(v4 + 64) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.450980392 green:1.0 blue:0.450980392 alpha:1.0];
      v6 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v7 = 0.882352941;
      goto LABEL_15;
    case 2:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1E4AAFAD0;
      *(v4 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.858823529 green:0.0352941176 blue:0.22745098 alpha:1.0];
      *(v4 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.917647059 green:0.0 blue:0.243137255 alpha:1.0];
      *(v4 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.949019608 green:0.101960784 blue:0.274509804 alpha:1.0];
      *(v4 + 56) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.188235294 blue:0.270588235 alpha:1.0];
      *(v4 + 64) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.858823529 green:0.0 blue:0.145098039 alpha:1.0];
      v5 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.925490196 green:0.0823529412 blue:0.203921569 alpha:1.0];
      goto LABEL_20;
    case 3:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1E4AAFAD0;
      *(v4 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.850980392 blue:0.0 alpha:1.0];
      *(v4 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.866666667 blue:0.0 alpha:1.0];
      *(v4 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.850980392 blue:0.0 alpha:1.0];
      *(v4 + 56) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.854901961 blue:0.2 alpha:1.0];
      *(v4 + 64) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.878431373 blue:0.101960784 alpha:1.0];
      v5 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.894117647 blue:0.2 alpha:1.0];
      goto LABEL_20;
    case 4:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1E4AAFAD0;
      *(v4 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.349019608 green:1.0 blue:0.458823529 alpha:0.898039216];
      *(v4 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.4 green:1.0 blue:0.478431373 alpha:0.898039216];
      *(v4 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.349019608 green:1.0 blue:0.501960784 alpha:0.898039216];
      *(v4 + 56) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.301960784 green:1.0 blue:0.356862745 alpha:0.898039216];
      *(v4 + 64) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.450980392 green:1.0 blue:0.450980392 alpha:0.898039216];
      v5 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.301960784 green:1.0 blue:0.415686275 alpha:0.898039216];
      goto LABEL_20;
    case 5:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1E4AAFAD0;
      *(v4 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.619607843 green:0.196078431 blue:0.650980392 alpha:0.898039216];
      *(v4 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.639215686 green:0.168627451 blue:0.678431373 alpha:0.898039216];
      *(v4 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.68627451 green:0.11372549 blue:0.749019608 alpha:0.898039216];
      *(v4 + 56) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.607843137 green:0.0823529412 blue:0.701960784 alpha:0.898039216];
      *(v4 + 64) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.631372549 green:0.105882353 blue:0.698039216 alpha:0.898039216];
      v5 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.623529412 green:0.0980392157 blue:0.650980392 alpha:0.898039216];
      goto LABEL_20;
    case 6:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1E4AAFAD0;
      *(v4 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.431372549 blue:0.0 alpha:1.0];
      *(v4 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.482352941 blue:0.0 alpha:1.0];
      *(v4 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.501960784 blue:0.0 alpha:1.0];
      *(v4 + 56) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.450980392 blue:0.0 alpha:1.0];
      *(v4 + 64) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.466666667 blue:0.0 alpha:1.0];
      v6 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v7 = 0.517647059;
LABEL_15:
      v8 = 1.0;
      v9 = 0.0;
      v10 = 1.0;
      goto LABEL_19;
    case 7:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1E4AAFAD0;
      *(v4 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.156862745 green:0.662745098 blue:1.0 alpha:0.898039216];
      *(v4 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0784313725 green:0.709803922 blue:1.0 alpha:0.898039216];
      *(v4 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0980392157 green:0.639215686 blue:1.0 alpha:0.898039216];
      *(v4 + 56) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.603921569 blue:0.929411765 alpha:0.898039216];
      *(v4 + 64) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.149019608 green:0.701960784 blue:1.0 alpha:0.898039216];
      v5 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.584313725 blue:0.949019608 alpha:0.898039216];
      goto LABEL_20;
    case 8:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1E4AAFAD0;
      *(v4 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.749019608 green:1.0 blue:0.980392157 alpha:1.0];
      *(v4 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.8 green:1.0 blue:0.984313725 alpha:1.0];
      *(v4 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.749019608 green:1.0 blue:0.980392157 alpha:1.0];
      *(v4 + 56) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.698039216 green:1.0 blue:0.976470588 alpha:1.0];
      *(v4 + 64) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.749019608 green:1.0 blue:0.980392157 alpha:1.0];
      v6 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v7 = 1.0;
      v10 = 1.0;
      v8 = 0.749019608;
      v9 = 0.980392157;
LABEL_19:
      v5 = [v6 initWithRed:v8 green:v7 blue:v9 alpha:v10];
      goto LABEL_20;
    case 9:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1E4AAFAD0;
      *(v4 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.850980392 green:1.0 blue:0.549019608 alpha:0.498039216];
      *(v4 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.866666667 green:1.0 blue:0.6 alpha:0.498039216];
      *(v4 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.831372549 green:1.0 blue:0.501960784 alpha:0.498039216];
      *(v4 + 56) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.850980392 green:1.0 blue:0.549019608 alpha:0.498039216];
      *(v4 + 64) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.858823529 green:1.0 blue:0.501960784 alpha:0.498039216];
      v5 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.831372549 green:1.0 blue:0.501960784 alpha:0.498039216];
      goto LABEL_20;
    case 10:
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1E4AAFB00;
      v3 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.988235294 blue:0.901960784 alpha:0.498039216];
      goto LABEL_17;
    case 11:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1E4AAFAD0;
      *(v4 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.901960784 blue:0.917647059 alpha:0.498039216];
      *(v4 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.901960784 blue:0.917647059 alpha:0.498039216];
      *(v4 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:1.0 blue:1.0 alpha:0.498039216];
      *(v4 + 56) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.901960784 blue:0.917647059 alpha:0.498039216];
      *(v4 + 64) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.8 blue:0.866666667 alpha:0.498039216];
      v5 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.8 blue:0.866666667 alpha:0.498039216];
      goto LABEL_20;
    case 12:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1E4AAFAD0;
      *(v4 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.949019608 green:0.925490196 blue:0.854901961 alpha:0.498039216];
      *(v4 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.949019608 green:0.929411765 blue:0.874509804 alpha:0.498039216];
      *(v4 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.949019608 green:0.925490196 blue:0.854901961 alpha:0.498039216];
      *(v4 + 56) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.980392157 blue:0.921568627 alpha:0.498039216];
      *(v4 + 64) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.949019608 green:0.925490196 blue:0.854901961 alpha:0.498039216];
      v5 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.968627451 blue:0.878431373 alpha:0.498039216];
      goto LABEL_20;
    case 13:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1E4AAFAD0;
      *(v4 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.549019608 green:0.811764706 blue:1.0 alpha:1.0];
      *(v4 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.733333333 green:0.733333333 blue:0.949019608 alpha:1.0];
      *(v4 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.698039216 green:0.823529412 blue:1.0 alpha:1.0];
      *(v4 + 56) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:0.941176471 blue:1.0 alpha:1.0];
      *(v4 + 64) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.6 green:0.721568627 blue:1.0 alpha:1.0];
      v5 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.549019608 green:1.0 blue:1.0 alpha:1.0];
      goto LABEL_20;
    case 14:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1E4AAFAD0;
      *(v4 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.698039216 green:0.909803922 blue:1.0 alpha:1.0];
      *(v4 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.749019608 green:0.925490196 blue:1.0 alpha:1.0];
      *(v4 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.698039216 green:0.909803922 blue:1.0 alpha:1.0];
      *(v4 + 56) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:0.894117647 blue:1.0 alpha:1.0];
      *(v4 + 64) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:0.894117647 blue:1.0 alpha:1.0];
      v5 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.749019608 green:0.925490196 blue:1.0 alpha:1.0];
LABEL_20:
      v13 = v5;
      result = v4;
      *(v4 + 72) = v13;
      break;
    default:
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1E4AAFB00;
      v3 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:1.0 blue:1.0 alpha:0.498039216];
LABEL_17:
      v11 = v3;
      result = v2;
      *(v2 + 32) = v11;
      break;
  }

  return result;
}

uint64_t sub_1E4A55254()
{
  sub_1E4A5575C();
  if (sub_1E4AAAB10())
  {
    if (sub_1E4AAAB10())
    {

      return 1;
    }

    if (sub_1E4AAAB10())
    {

      return 4;
    }

    if (sub_1E4AAAB10())
    {

      return 3;
    }

    if (sub_1E4AAAB10())
    {

      return 6;
    }

    if ((sub_1E4AAAB10() & 1) == 0)
    {
      if (sub_1E4AAAB10())
      {

        return 5;
      }

      else
      {
        v2 = sub_1E4AAAB10();

        if (v2)
        {
          return 7;
        }

        else
        {
          return 0;
        }
      }
    }

LABEL_25:

    return 2;
  }

  if (sub_1E4AAAB10())
  {

    return 14;
  }

  if ((sub_1E4AAAB10() & 1) != 0 && (sub_1E4AAAB10() & 1) == 0)
  {

    return 13;
  }

  if (sub_1E4AAAB10())
  {

    return 8;
  }

  if (sub_1E4AAAB10())
  {

    return 9;
  }

  if (sub_1E4AAAB10())
  {

    return 10;
  }

  if (sub_1E4AAAB10())
  {
    goto LABEL_25;
  }

  if (sub_1E4AAAB10())
  {
    v1 = sub_1E4AAAB10();

    if (v1)
    {
      return 0;
    }

    else
    {
      return 12;
    }
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1E4A5575C()
{
  result = qword_1EE042220;
  if (!qword_1EE042220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042220);
  }

  return result;
}

Swift::OpaquePointer_optional __swiftcall WKWallpaper.propertyListRepresentation()()
{
  v0 = 0;
  result.value._rawValue = v0;
  return result;
}

uint64_t WKWallpaper.copyWallpaperContents(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 64))(a2, a3);
  if ((result & 1) == 0)
  {
    type metadata accessor for WKWallpaperKitError(0);
    sub_1E4A55FB0(MEMORY[0x1E69E7CC0]);
    sub_1E4A560C0();
    sub_1E4AA9F50();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1E4A55888(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v2, a1);
  if (swift_dynamicCast() || swift_dynamicCast() || swift_dynamicCast() || swift_dynamicCast() || swift_dynamicCast() || swift_dynamicCast() || swift_dynamicCast())
  {
    v8 = *(v11 + 16);

    (*(v4 + 8))(v7, a1);
    return v8;
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
    sub_1E4AAABC0();

    v11 = 0xD000000000000018;
    v12 = 0x80000001E4AB89A0;
    swift_getDynamicType();
    v10 = sub_1E4AAAE90();
    MEMORY[0x1E691ECA0](v10);

    result = sub_1E4AAACB0();
    __break(1u);
  }

  return result;
}

unint64_t sub_1E4A55B0C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1E4AAAE00();
  sub_1E4AAA8C0();
  v6 = sub_1E4AAAE40();

  return sub_1E4A55B84(a1, a2, v6);
}

unint64_t sub_1E4A55B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1E4AAADA0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id _s12WallpaperKit16WKWallpaperValueO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 <= 2)
  {
    if (*(a1 + 8))
    {
      if (v3 == 1)
      {
        if (v5 == 1)
        {
          v13 = v2[2];
          v14 = v4[2];
          sub_1E4A562F4(*a2, 1u);
          sub_1E4A562F4(v2, 1u);
          v8 = v13;
          v9 = v14;
          v10 = [v8 isEqual_];
          sub_1E4A4EF3C(v2, 1u);
          v11 = v4;
          v12 = 1;
          goto LABEL_21;
        }
      }

      else if (v5 == 2)
      {
        v19 = v2[2];
        v20 = v4[2];
        sub_1E4A562F4(*a2, 2u);
        sub_1E4A562F4(v2, 2u);
        v8 = v19;
        v9 = v20;
        v10 = [v8 isEqual_];
        sub_1E4A4EF3C(v2, 2u);
        v11 = v4;
        v12 = 2;
        goto LABEL_21;
      }
    }

    else if (!*(a2 + 8))
    {
      v17 = v2[2];
      v18 = v4[2];
      sub_1E4A562F4(*a2, 0);
      sub_1E4A562F4(v2, 0);
      v8 = v17;
      v9 = v18;
      v10 = [v8 isEqual_];
      sub_1E4A4EF3C(v2, 0);
      v11 = v4;
      v12 = 0;
      goto LABEL_21;
    }
  }

  else if (*(a1 + 8) > 4u)
  {
    if (v3 == 5)
    {
      if (v5 == 5)
      {
        v15 = v2[2];
        v16 = v4[2];
        sub_1E4A562F4(*a2, 5u);
        sub_1E4A562F4(v2, 5u);
        v8 = v15;
        v9 = v16;
        v10 = [v8 isEqual_];
        sub_1E4A4EF3C(v2, 5u);
        v11 = v4;
        v12 = 5;
        goto LABEL_21;
      }
    }

    else if (v5 == 6)
    {
      v23 = v2[2];
      v24 = v4[2];
      sub_1E4A562F4(*a2, 6u);
      sub_1E4A562F4(v2, 6u);
      v8 = v23;
      v9 = v24;
      v10 = [v8 isEqual_];
      sub_1E4A4EF3C(v2, 6u);
      v11 = v4;
      v12 = 6;
      goto LABEL_21;
    }
  }

  else if (v3 == 3)
  {
    if (v5 == 3)
    {
      v6 = v2[2];
      v7 = v4[2];
      sub_1E4A562F4(*a2, 3u);
      sub_1E4A562F4(v2, 3u);
      v8 = v6;
      v9 = v7;
      v10 = [v8 isEqual_];
      sub_1E4A4EF3C(v2, 3u);
      v11 = v4;
      v12 = 3;
LABEL_21:
      sub_1E4A4EF3C(v11, v12);

      return v10;
    }
  }

  else if (v5 == 4)
  {
    sub_1E4A5634C();
    sub_1E4A562F4(v4, 4u);
    sub_1E4A562F4(v2, 4u);
    v21 = sub_1E4AAAAD0();
    sub_1E4A4EF3C(v2, 4u);
    sub_1E4A4EF3C(v4, 4u);
    return (v21 & 1);
  }

  sub_1E4A562F4(*a2, *(a2 + 8));
  sub_1E4A562F4(v2, v3);
  sub_1E4A4EF3C(v2, v3);
  sub_1E4A4EF3C(v4, v5);
  return 0;
}

unint64_t sub_1E4A55FB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E2A0, &qword_1E4AAEF30);
    v3 = sub_1E4AAAD00();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E4A56398(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1E4A55B0C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1E4A4DCE8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E4A560C0()
{
  result = qword_1ECF8DF68;
  if (!qword_1ECF8DF68)
  {
    type metadata accessor for WKWallpaperKitError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8DF68);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1E4A5623C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 9))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 8);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E4A56284(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 8) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

id sub_1E4A562F4(id result, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }

  if (a2 <= 4u)
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        return result;
      }

      return result;
    }
  }

  if (a2 == 5 || a2 == 6)
  {
  }

  return result;
}

unint64_t sub_1E4A5634C()
{
  result = qword_1EE042128;
  if (!qword_1EE042128)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE042128);
  }

  return result;
}

uint64_t sub_1E4A56398(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E3A8, &qword_1E4AAFFF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4A56434@<X0>(uint64_t a1@<X8>)
{
  v48 = sub_1E4AAA320();
  v47 = *(v48 - 8);
  v3 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v46 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E3B0, &unk_1E4AB0110);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v46 - v15;
  v17 = sub_1E4AA9FE0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v50 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v1;
  v49 = *(v1 + 8);
  if (![*(v1[21] + 16) valueBasedWallpaperForLocation:@"WKWallpaperLocationCoverSheet" andAppearance:@"default"])
  {
    goto LABEL_6;
  }

  v51 = v5;
  v52 = a1;
  sub_1E4A57768(&v54);
  swift_unknownObjectRelease();
  v22 = *(&v55 + 1);
  v23 = v56;
  __swift_project_boxed_opaque_existential_1(&v54, *(&v55 + 1));
  (*(v23 + 24))(&v64, v22, v23);
  v24 = v64;
  v25 = v65;
  __swift_destroy_boxed_opaque_existential_1Tm(&v54);
  if (v25 != 5)
  {
    sub_1E4A4EF3C(v24, v25);
    a1 = v52;
    v5 = v51;
LABEL_6:
    (*(v18 + 56))(v16, 1, 1, v17);
LABEL_7:
    sub_1E4A480C4(v16);
    return (*(v6 + 56))(a1, 1, 1, v5);
  }

  v26 = [v24[2] floatingAnimationFileURL];
  if (v26)
  {
    v27 = v26;
    sub_1E4AA9FC0();

    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  a1 = v52;
  v5 = v51;
  (*(v18 + 56))(v14, v28, 1, v17);
  sub_1E4A56BAC(v14, v16, &qword_1ECF8E7C0, &qword_1E4AAEA40);
  sub_1E4A4EF3C(v24, 5u);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    goto LABEL_7;
  }

  v30 = v50;
  (*(v18 + 32))(v50, v16, v17);
  v31 = type metadata accessor for WKAnimationPackageLayer(0);
  (*(v18 + 16))(&v9[v31[7]], v30, v17);
  if (v49)
  {
    v64 = v21;

    v32 = v21;
  }

  else
  {

    sub_1E4AAAA10();
    v33 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    v34 = v46;
    sub_1E4AAA310();
    swift_getAtKeyPath();

    (*(v47 + 8))(v34, v48);
    v32 = v64;
  }

  swift_getKeyPath();
  *&v54 = v32;
  sub_1E4A52BC8();
  sub_1E4AAA060();

  v35 = v32[22];

  *&v54 = swift_getKeyPath();
  sub_1E4A4E620(&v54);
  v36 = v61;
  *(v9 + 6) = v60;
  *(v9 + 7) = v36;
  *(v9 + 8) = v62;
  v9[144] = v63;
  v37 = v57;
  *(v9 + 2) = v56;
  *(v9 + 3) = v37;
  v38 = v59;
  *(v9 + 4) = v58;
  *(v9 + 5) = v38;
  v39 = v55;
  *v9 = v54;
  *(v9 + 1) = v39;
  v40 = v31[5];
  *&v9[v40] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E2C0, &qword_1E4AB01A0);
  swift_storeEnumTagMultiPayload();
  v9[v31[6]] = 2;
  *&v9[v31[8]] = v35;

  if ((v49 & 1) == 0)
  {
    sub_1E4AAAA10();
    v41 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    v42 = v46;
    sub_1E4AAA310();
    swift_getAtKeyPath();

    (*(v47 + 8))(v42, v48);
    v21 = v53;
  }

  swift_getKeyPath();
  v53 = v21;
  sub_1E4AAA060();

  (*(v18 + 8))(v50, v17);
  v43 = *(v21 + 192);

  v44 = v51;
  *&v9[*(v51 + 52)] = v43;
  v45 = v52;
  sub_1E4A56BAC(v9, v52, &qword_1ECF8E3B0, &unk_1E4AB0110);
  return (*(v6 + 56))(v45, 0, 1, v44);
}

uint64_t sub_1E4A56BAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1E4A56C14()
{
  result = qword_1EE042260;
  if (!qword_1EE042260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E3B8, &unk_1E4AB01D0);
    sub_1E4A56C98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042260);
  }

  return result;
}

unint64_t sub_1E4A56C98()
{
  result = qword_1EE042268;
  if (!qword_1EE042268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E3B0, &unk_1E4AB0110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042268);
  }

  return result;
}

uint64_t WKWallpaperBundle.adjustmentTraits.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + 16) adjustmentTraits];
  type metadata accessor for WKWallpaperAdjustmentTraits.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  return result;
}

float WKWallpaperBundle.contentVersion.getter()
{
  v1 = [*(*v0 + 16) contentVersion];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

uint64_t WKWallpaperBundle.family.getter()
{
  v1 = [*(*v0 + 16) family];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4AAA8A0();

  return v3;
}

uint64_t WKWallpaperBundle.preferredProminentColors.getter()
{
  v1 = [*(*v0 + 16) preferredProminentColors];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for WKWallpaperAppearance(0);
  sub_1E4A47A2C(0, &qword_1EE042130, 0x1E69DC888);
  sub_1E4A58928(&qword_1EE042190, type metadata accessor for WKWallpaperAppearance);
  v3 = sub_1E4AAA810();

  return v3;
}

id WKWallpaperBundle.logicalScreenClass.getter()
{
  v1 = [*(*v0 + 16) logicalScreenClass];

  return v1;
}

uint64_t WKWallpaperBundle.maximumAdaptiveTimeMultiplier.getter()
{
  v1 = *v0;
  [*(*v0 + 16) maximumAdaptiveTimeMultiplier];
  if (v2 == 2.22507386e-308)
  {
    return 0;
  }

  [*(v1 + 16) maximumAdaptiveTimeMultiplier];
  return v4;
}

uint64_t WKWallpaperBundle.preferredTitleColors.getter()
{
  v1 = [*(*v0 + 16) preferredTitleColors];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1E4A47A2C(0, &unk_1ECF8E3C0, 0x1E69C52D8);
  v3 = sub_1E4AAA950();

  return v3;
}

uint64_t sub_1E4A571B0@<X0>(uint64_t *a1@<X8>)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    a1[3] = &type metadata for WKLayeredStripeWallpaper;
    a1[4] = &protocol witness table for WKLayeredStripeWallpaper;
    type metadata accessor for WKLayeredStripeWallpaper.ImplementationWrapper();
  }

  else
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v3 = v4;
      a1[3] = &type metadata for WKLayeredStillWallpaper;
      a1[4] = &protocol witness table for WKLayeredStillWallpaper;
      type metadata accessor for WKLayeredStillWallpaper.ImplementationWrapper();
    }

    else
    {
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        v3 = v5;
        a1[3] = &type metadata for WKLayeredAnimationWallpaper;
        a1[4] = &protocol witness table for WKLayeredAnimationWallpaper;
        type metadata accessor for WKLayeredAnimationWallpaper.ImplementationWrapper();
      }

      else
      {
        objc_opt_self();
        v6 = swift_dynamicCastObjCClass();
        if (v6)
        {
          v3 = v6;
          a1[3] = &type metadata for WKLayeredThumbnailWallpaper;
          a1[4] = &protocol witness table for WKLayeredThumbnailWallpaper;
          type metadata accessor for WKLayeredThumbnailWallpaper.ImplementationWrapper();
        }

        else
        {
          objc_opt_self();
          v7 = swift_dynamicCastObjCClass();
          if (v7)
          {
            v3 = v7;
            a1[3] = &type metadata for WKBokehWallpaper;
            a1[4] = &protocol witness table for WKBokehWallpaper;
            type metadata accessor for WKBokehWallpaper.ImplementationWrapper();
          }

          else
          {
            objc_opt_self();
            v8 = swift_dynamicCastObjCClass();
            if (v8)
            {
              v3 = v8;
              a1[3] = &type metadata for WKThumbnailWallpaper;
              a1[4] = &protocol witness table for WKThumbnailWallpaper;
              type metadata accessor for WKThumbnailWallpaper.ImplementationWrapper();
            }

            else
            {
              objc_opt_self();
              v9 = swift_dynamicCastObjCClass();
              if (!v9)
              {
                sub_1E4AAABC0();

                swift_getObjectType();
                v12 = sub_1E4AAAE90();
                MEMORY[0x1E691ECA0](v12);

                result = sub_1E4AAACB0();
                __break(1u);
                return result;
              }

              v3 = v9;
              a1[3] = &type metadata for WKParameterizedCAWallpaper;
              a1[4] = &protocol witness table for WKParameterizedCAWallpaper;
              type metadata accessor for WKParameterizedCAWallpaper.ImplementationWrapper();
            }
          }
        }
      }
    }
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  *a1 = v10;

  return swift_unknownObjectRetain();
}

uint64_t sub_1E4A5749C@<X0>(uint64_t *a1@<X8>)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    a1[3] = &type metadata for WKLiveWallpaper;
    a1[4] = &protocol witness table for WKLiveWallpaper;
    type metadata accessor for WKLiveWallpaper.ImplementationWrapper();
  }

  else
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {
      sub_1E4AAABC0();

      swift_getObjectType();
      v7 = sub_1E4AAAE90();
      MEMORY[0x1E691ECA0](v7);

      result = sub_1E4AAACB0();
      __break(1u);
      return result;
    }

    v3 = v4;
    a1[3] = &type metadata for WKStillWallpaper;
    a1[4] = &protocol witness table for WKStillWallpaper;
    type metadata accessor for WKStillWallpaper.ImplementationWrapper();
  }

  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *a1 = v5;

  return swift_unknownObjectRetain();
}

double sub_1E4A57628@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, SEL *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  if ([*(*v5 + 16) *a3])
  {
    a4();

    swift_unknownObjectRelease();
  }

  else
  {
    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

double sub_1E4A576DC@<D0>(uint64_t a1@<X0>, SEL *a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  if ([*(*v4 + 16) *a2])
  {
    a3();

    swift_unknownObjectRelease();
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1E4A57768@<X0>(uint64_t *a1@<X8>)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    a1[3] = &type metadata for WKLayeredStripeWallpaper;
    a1[4] = sub_1E4A58CFC();
    type metadata accessor for WKLayeredStripeWallpaper.ImplementationWrapper();
  }

  else
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v3 = v4;
      a1[3] = &type metadata for WKLayeredStillWallpaper;
      a1[4] = sub_1E4A58CA8();
      type metadata accessor for WKLayeredStillWallpaper.ImplementationWrapper();
    }

    else
    {
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        v3 = v5;
        a1[3] = &type metadata for WKBokehWallpaper;
        a1[4] = sub_1E4A58C54();
        type metadata accessor for WKBokehWallpaper.ImplementationWrapper();
      }

      else
      {
        objc_opt_self();
        v6 = swift_dynamicCastObjCClass();
        if (v6)
        {
          v3 = v6;
          a1[3] = &type metadata for WKLayeredThumbnailWallpaper;
          a1[4] = sub_1E4A58C00();
          type metadata accessor for WKLayeredThumbnailWallpaper.ImplementationWrapper();
        }

        else
        {
          objc_opt_self();
          v7 = swift_dynamicCastObjCClass();
          if (v7)
          {
            v3 = v7;
            a1[3] = &type metadata for WKLayeredAnimationWallpaper;
            a1[4] = sub_1E4A58BAC();
            type metadata accessor for WKLayeredAnimationWallpaper.ImplementationWrapper();
          }

          else
          {
            objc_opt_self();
            v8 = swift_dynamicCastObjCClass();
            if (!v8)
            {
              sub_1E4AAABC0();

              swift_getObjectType();
              v11 = sub_1E4AAAE90();
              MEMORY[0x1E691ECA0](v11);

              result = sub_1E4AAACB0();
              __break(1u);
              return result;
            }

            v3 = v8;
            a1[3] = &type metadata for WKParameterizedCAWallpaper;
            a1[4] = sub_1E4A58B58();
            type metadata accessor for WKParameterizedCAWallpaper.ImplementationWrapper();
          }
        }
      }
    }
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *a1 = v9;

  return swift_unknownObjectRetain();
}

void WKWallpaperBundle.copyWallpaperRepresenting(to:)()
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = *(*v0 + 16);
  v2 = sub_1E4AA9FA0();
  v8[0] = 0;
  v3 = [v1 copyWallpaperRepresentingToDestinationDirectoryURL:v2 error:v8];

  v4 = v8[0];
  if (v3)
  {
    sub_1E4AA9FC0();
    v5 = v4;
  }

  else
  {
    v6 = v8[0];
    sub_1E4AA9F60();

    swift_willThrow();
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t WKWallpaperBundle.thumbnailImageURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) thumbnailImageURL];
  if (v3)
  {
    v4 = v3;
    sub_1E4AA9FC0();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1E4AA9FE0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

id WKWallpaperBundle.thumbnailImage.getter()
{
  v1 = [*(*v0 + 16) thumbnailImage];

  return v1;
}

void WKWallpaperBundle.bundleURL.getter()
{
  v1 = [*(*v0 + 16) bundleURL];
  sub_1E4AA9FC0();
}

uint64_t WKWallpaperBundle.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1E4AA9FE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = objc_allocWithZone(WKWallpaperBundle);
  v10 = sub_1E4AA9FA0();
  v11 = [v9 initWithURL_];

  v12 = *(v5 + 8);
  v12(a1, v4);
  v12(v8, v4);
  if (v11)
  {
    type metadata accessor for WKWallpaperBundle.ImplementationWrapper();
    result = swift_allocObject();
    *(result + 16) = v11;
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t WKWallpaperBundle.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKWallpaperBundle.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

float sub_1E4A57E94()
{
  v1 = [*(*v0 + 16) contentVersion];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

id sub_1E4A57F4C()
{
  v1 = [*(*v0 + 16) logicalScreenClass];

  return v1;
}

uint64_t sub_1E4A58000@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + 16) adjustmentTraits];
  type metadata accessor for WKWallpaperAdjustmentTraits.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1E4A5805C()
{
  v1 = [*(*v0 + 16) preferredTitleColors];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1E4A47A2C(0, &unk_1ECF8E3C0, 0x1E69C52D8);
  v3 = sub_1E4AAA950();

  return v3;
}

double sub_1E4A5818C@<D0>(uint64_t a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  if ([*(*v4 + 16) *a2])
  {
    a3();

    swift_unknownObjectRelease();
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

double sub_1E4A58238@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, SEL *a3@<X4>, void (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  if ([*(*v5 + 16) *a3])
  {
    a4();

    swift_unknownObjectRelease();
  }

  else
  {
    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

uint64_t static WKWallpaperBundle.createWallpaperBundle(in:version:identifier:name:family:wantsDeviceMotion:isOffloaded:logicalScreenClass:thumbnailImageURL:adjustmentTraits:preferredProminentColors:preferredTitleColors:assetMapping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t *a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v78 = a8;
  v71 = a7;
  v70[1] = a6;
  v70[4] = a5;
  v70[3] = a4;
  v79 = a2;
  v80 = a3;
  v70[2] = a1;
  v81 = a9;
  v75 = a15;
  v72 = a12;
  v77 = a11;
  v76 = a10;
  v74 = a14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v82 = v70 - v18;
  v73 = *a13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E3D0, &qword_1E4AB01E0);
  result = sub_1E4AAACD0();
  v20 = 0;
  v21 = *(a16 + 64);
  v83 = a16 + 64;
  v86 = result;
  v87 = a16;
  v22 = 1 << *(a16 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & v21;
  v25 = (v22 + 63) >> 6;
  v84 = v25;
  v85 = result + 64;
  if (v24)
  {
    while (1)
    {
      v26 = __clz(__rbit64(v24));
      v88 = (v24 - 1) & v24;
LABEL_11:
      v29 = v26 | (v20 << 6);
      v30 = *(v87 + 56);
      v31 = *(*(v87 + 48) + 8 * v29);
      v90 = v29;
      v32 = *(v30 + 8 * v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E3D8, &qword_1E4AB01E8);
      v33 = sub_1E4AAACD0();
      v34 = v33;
      v35 = v32 + 64;
      v36 = 1 << *(v32 + 32);
      v37 = v36 < 64 ? ~(-1 << v36) : -1;
      v38 = v37 & *(v32 + 64);
      v39 = (v36 + 63) >> 6;
      v91 = v33 + 64;
      v89 = v31;
      v93 = v32;

      v40 = 0;
      v92 = v34;
      if (v38)
      {
        break;
      }

LABEL_16:
      v42 = v40;
      while (1)
      {
        v40 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          __break(1u);
          goto LABEL_46;
        }

        if (v40 >= v39)
        {
          break;
        }

        v43 = *(v35 + 8 * v40);
        ++v42;
        if (v43)
        {
          v41 = __clz(__rbit64(v43));
          v38 = (v43 - 1) & v43;
          goto LABEL_21;
        }
      }

      v52 = v90;
      v53 = v86;
      *(v85 + ((v90 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v90;
      *(v53[6] + 8 * v52) = v89;
      *(v53[7] + 8 * v52) = v34;
      v54 = v53[2];
      v50 = __OFADD__(v54, 1);
      v55 = v54 + 1;
      if (v50)
      {
        goto LABEL_48;
      }

      v53[2] = v55;
      v25 = v84;
      v24 = v88;
      if (!v88)
      {
        goto LABEL_6;
      }
    }

    while (1)
    {
      v41 = __clz(__rbit64(v38));
      v38 &= v38 - 1;
LABEL_21:
      v44 = v41 | (v40 << 6);
      v45 = *(*(v93 + 48) + 8 * v44);
      sub_1E4A4D9A0(*(v93 + 56) + 40 * v44, v94);
      v46 = v95;
      __swift_project_boxed_opaque_existential_1(v94, v95);
      v47 = v45;
      v48 = sub_1E4A55888(v46);
      result = __swift_destroy_boxed_opaque_existential_1Tm(v94);
      v34 = v92;
      *(v91 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
      *(v34[6] + 8 * v44) = v47;
      *(v34[7] + 8 * v44) = v48;
      v49 = v34[2];
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        break;
      }

      v34[2] = v51;
      if (!v38)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_6:
    v27 = v20;
    while (1)
    {
      v20 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v20 >= v25)
      {
        v93 = sub_1E4AA9FA0();
        v56 = sub_1E4AAA870();
        if (v71)
        {
          v57 = sub_1E4AAA870();
        }

        else
        {
          v57 = 0;
        }

        v58 = v82;
        sub_1E4A48054(v72, v82);
        v59 = sub_1E4AA9FE0();
        v60 = *(v59 - 8);
        v61 = 0;
        if ((*(v60 + 48))(v58, 1, v59) != 1)
        {
          v61 = sub_1E4AA9FA0();
          (*(v60 + 8))(v58, v59);
        }

        if (v73)
        {
          v62 = *(v73 + 16);
        }

        else
        {
          v62 = 0;
        }

        if (v74)
        {
          v63 = sub_1E4AAA800();
        }

        else
        {
          v63 = 0;
        }

        if (v75)
        {
          v64 = sub_1E4AAA940();
        }

        else
        {
          v64 = 0;
        }

        v65 = objc_opt_self();
        type metadata accessor for WKWallpaperLocation(0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E3E0, &qword_1E4AB01F0);
        sub_1E4A58928(&qword_1ECF8DF70, type metadata accessor for WKWallpaperLocation);
        v66 = sub_1E4AAA800();

        LOBYTE(v69) = v76 & 1;
        v67 = v93;
        v68 = [v65 _createWallpaperBundleInDirectory_version_identifier_name_family_wantsDeviceMotion_isOffloaded_logicalScreenClass_thumbnailImageURL_adjustmentTraits_preferredProminentColors_preferredTitleColors_assetMapping_];

        if (v68)
        {
          type metadata accessor for WKWallpaperBundle.ImplementationWrapper();
          result = swift_allocObject();
          *(result + 16) = v68;
        }

        else
        {
          result = 0;
        }

        *v81 = result;
        return result;
      }

      v28 = *(v83 + 8 * v20);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v88 = (v28 - 1) & v28;
        goto LABEL_11;
      }
    }

LABEL_46:
    __break(1u);
  }

  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}
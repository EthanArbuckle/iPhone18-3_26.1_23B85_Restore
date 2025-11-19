uint64_t sub_22F344D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F3466EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22F344DB4(uint64_t a1)
{
  v2 = sub_22F345EA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F344DF0(uint64_t a1)
{
  v2 = sub_22F345EA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioAnalysis.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3AE8, &qword_22F7872E0);
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v9 = *v2;
  v8 = v2[1];
  v23 = *(v2 + 4);
  v10 = *(v2 + 20);
  v30 = *(v2 + 21);
  v11 = v2[3];
  v20 = v2[4];
  v21 = v11;
  v19 = *(v2 + 44);
  v18 = *(v2 + 10);
  v22 = *(v2 + 45);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F345EA8();
  sub_22F742210();
  *&v26 = v9;
  *(&v26 + 1) = v8;
  BYTE4(v27) = v10;
  LODWORD(v27) = v23;
  BYTE5(v27) = v30;
  v31 = 0;
  sub_22F345EFC();
  v13 = v25;
  sub_22F741F70();
  if (v13)
  {
    return (*(v24 + 8))(v7, v4);
  }

  v15 = v24;
  *&v26 = v21;
  *(&v26 + 1) = v20;
  BYTE4(v27) = (v18 | (v19 << 32)) >> 32;
  LODWORD(v27) = v18;
  BYTE5(v27) = v22;
  v31 = 1;
  sub_22F741F70();
  v16 = *(v2 + 6);
  v28 = *(v2 + 5);
  v29[0] = v16;
  *(v29 + 15) = *(v2 + 111);
  v17 = *(v2 + 4);
  v26 = *(v2 + 3);
  v27 = v17;
  v31 = 2;
  sub_22F345F50();
  sub_22F741F70();
  return (*(v15 + 8))(v7, v4);
}

uint64_t AudioAnalysis.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40) | (*(v1 + 44) << 32);
  v8 = *(v1 + 45);
  v20 = *(v1 + 56);
  v21 = *(v1 + 48);
  v17 = *(v1 + 68);
  v9 = *(v1 + 64);
  v24 = *(v1 + 72);
  v23 = *(v1 + 80);
  v16 = *(v1 + 92);
  v10 = *(v1 + 88);
  v18 = *(v1 + 69);
  v19 = *(v1 + 93);
  v25 = *(v1 + 104);
  v26 = *(v1 + 96);
  v11 = *(v1 + 116);
  v12 = *(v1 + 112);
  v22 = *(v1 + 117);
  v13 = *(v1 + 16) | (*(v1 + 20) << 32) | (*(v1 + 21) << 40);
  v14 = *(v1 + 118);
  sub_22F345A78(a1, v3, v4, v13);
  sub_22F345A78(a1, v5, v6, v7 | (v8 << 40));
  if (v14)
  {
    return sub_22F742190();
  }

  sub_22F742190();
  sub_22F345A78(a1, v21, v20, (v9 | (v17 << 32)) & 0xFFFFFFFFFFLL | ((v18 & 1) << 40));
  sub_22F345A78(a1, v24, v23, (v10 | (v16 << 32)) & 0xFFFFFFFFFFLL | ((v19 & 1) << 40));
  return sub_22F345A78(a1, v26, v25, (v12 | (v11 << 32)) & 0xFFFFFFFFFFLL | ((v22 & 1) << 40));
}

uint64_t AudioAnalysis.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16) | (*(v0 + 20) << 32);
  v4 = *(v0 + 21);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 40) | (*(v0 + 44) << 32);
  v8 = *(v0 + 45);
  v19 = *(v0 + 56);
  v20 = *(v0 + 48);
  v16 = *(v0 + 68);
  v13 = *(v0 + 64);
  v22 = *(v0 + 80);
  v23 = *(v0 + 72);
  v15 = *(v0 + 92);
  v9 = *(v0 + 88);
  v17 = *(v0 + 69);
  v18 = *(v0 + 93);
  v24 = *(v0 + 104);
  v25 = *(v0 + 96);
  v14 = *(v0 + 116);
  v12 = *(v0 + 112);
  v21 = *(v0 + 117);
  v10 = *(v0 + 118);
  sub_22F742170();
  sub_22F345A78(v26, v1, v2, v3 | (v4 << 40));
  sub_22F345A78(v26, v6, v5, v7 | (v8 << 40));
  sub_22F742190();
  if ((v10 & 1) == 0)
  {
    sub_22F345A78(v26, v20, v19, (v13 | (v16 << 32)) & 0xFFFFFFFFFFLL | ((v17 & 1) << 40));
    sub_22F345A78(v26, v23, v22, (v9 | (v15 << 32)) & 0xFFFFFFFFFFLL | ((v18 & 1) << 40));
    sub_22F345A78(v26, v25, v24, (v12 | (v14 << 32)) & 0xFFFFFFFFFFLL | ((v21 & 1) << 40));
  }

  return sub_22F7421D0();
}

uint64_t AudioAnalysis.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3B08, &qword_22F7872E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F345EA8();
  sub_22F742200();
  if (!v2)
  {
    v33 = 0;
    sub_22F345FA4();
    sub_22F741EA0();
    v37 = v29;
    v27 = BYTE4(v30);
    v28 = *(&v29 + 1);
    v11 = v30;
    v36 = BYTE5(v30);
    v33 = 1;
    sub_22F741EA0();
    v26 = v11;
    v25 = *(&v29 + 1);
    v13 = v29;
    v24 = BYTE4(v30);
    v14 = v30;
    v35 = BYTE5(v30);
    v33 = 2;
    sub_22F345FF8();
    sub_22F741EA0();
    (*(v6 + 8))(v9, v5);
    *&v34[50] = *v32;
    *&v34[65] = *&v32[15];
    *&v34[34] = v31;
    *&v34[18] = v30;
    *&v34[2] = v29;
    v15 = *&v34[48];
    *(a2 + 78) = *&v34[32];
    v16 = *v34;
    *(a2 + 62) = *&v34[16];
    *(a2 + 94) = v15;
    *(a2 + 103) = *&v34[57];
    v17 = v26 | (v27 << 32);
    v18 = v14 | (v24 << 32);
    v19 = v36;
    v20 = v35;
    v21 = v28;
    *a2 = v37;
    *(a2 + 8) = v21;
    *(a2 + 16) = v17;
    *(a2 + 20) = BYTE4(v17);
    *(a2 + 21) = v19;
    v22 = v25;
    *(a2 + 24) = v13;
    *(a2 + 32) = v22;
    *(a2 + 40) = v18;
    *(a2 + 44) = BYTE4(v18);
    *(a2 + 45) = v20;
    *(a2 + 46) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F345700(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40) | (*(v1 + 44) << 32);
  v8 = *(v1 + 45);
  v20 = *(v1 + 56);
  v21 = *(v1 + 48);
  v17 = *(v1 + 68);
  v9 = *(v1 + 64);
  v24 = *(v1 + 72);
  v23 = *(v1 + 80);
  v16 = *(v1 + 92);
  v10 = *(v1 + 88);
  v18 = *(v1 + 69);
  v19 = *(v1 + 93);
  v25 = *(v1 + 104);
  v26 = *(v1 + 96);
  v11 = *(v1 + 116);
  v12 = *(v1 + 112);
  v22 = *(v1 + 117);
  v13 = *(v1 + 16) | (*(v1 + 20) << 32) | (*(v1 + 21) << 40);
  v14 = *(v1 + 118);
  sub_22F345A78(a1, v3, v4, v13);
  sub_22F345A78(a1, v5, v6, v7 | (v8 << 40));
  if (v14)
  {
    return sub_22F742190();
  }

  sub_22F742190();
  sub_22F345A78(a1, v21, v20, (v9 | (v17 << 32)) & 0xFFFFFFFFFFLL | ((v18 & 1) << 40));
  sub_22F345A78(a1, v24, v23, (v10 | (v16 << 32)) & 0xFFFFFFFFFFLL | ((v19 & 1) << 40));
  return sub_22F345A78(a1, v26, v25, (v12 | (v11 << 32)) & 0xFFFFFFFFFFLL | ((v22 & 1) << 40));
}

uint64_t sub_22F345890()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16) | (*(v0 + 20) << 32);
  v4 = *(v0 + 21);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 40) | (*(v0 + 44) << 32);
  v8 = *(v0 + 45);
  v19 = *(v0 + 56);
  v20 = *(v0 + 48);
  v16 = *(v0 + 68);
  v13 = *(v0 + 64);
  v22 = *(v0 + 80);
  v23 = *(v0 + 72);
  v15 = *(v0 + 92);
  v9 = *(v0 + 88);
  v17 = *(v0 + 69);
  v18 = *(v0 + 93);
  v24 = *(v0 + 104);
  v25 = *(v0 + 96);
  v14 = *(v0 + 116);
  v12 = *(v0 + 112);
  v21 = *(v0 + 117);
  v10 = *(v0 + 118);
  sub_22F742170();
  sub_22F345A78(v26, v1, v2, v3 | (v4 << 40));
  sub_22F345A78(v26, v6, v5, v7 | (v8 << 40));
  sub_22F742190();
  if ((v10 & 1) == 0)
  {
    sub_22F345A78(v26, v20, v19, (v13 | (v16 << 32)) & 0xFFFFFFFFFFLL | ((v17 & 1) << 40));
    sub_22F345A78(v26, v23, v22, (v9 | (v15 << 32)) & 0xFFFFFFFFFFLL | ((v18 & 1) << 40));
    sub_22F345A78(v26, v25, v24, (v12 | (v14 << 32)) & 0xFFFFFFFFFFLL | ((v21 & 1) << 40));
  }

  return sub_22F7421D0();
}

uint64_t sub_22F345A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 & 0x10000000000) != 0)
  {
    return sub_22F742190();
  }

  sub_22F742190();
  if ((a2 & 0x100000000) == 0)
  {
    sub_22F742190();
    sub_22F7421B0();
    if ((a3 & 0x100000000) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_22F742190();
    sub_22F7421B0();
    if ((a4 & 0x100000000) != 0)
    {
      return sub_22F742190();
    }

    goto LABEL_8;
  }

  sub_22F742190();
  if ((a3 & 0x100000000) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_22F742190();
  if ((a4 & 0x100000000) != 0)
  {
    return sub_22F742190();
  }

LABEL_8:
  sub_22F742190();
  return sub_22F7421B0();
}

unint64_t sub_22F345B3C()
{
  result = qword_27DAB3A98;
  if (!qword_27DAB3A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3A98);
  }

  return result;
}

unint64_t sub_22F345B90()
{
  result = qword_27DAB3AB0;
  if (!qword_27DAB3AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3AB0);
  }

  return result;
}

unint64_t sub_22F345BE4()
{
  result = qword_27DAB3AC8;
  if (!qword_27DAB3AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3AC8);
  }

  return result;
}

unint64_t sub_22F345C38()
{
  result = qword_27DAB3AD0;
  if (!qword_27DAB3AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3AD0);
  }

  return result;
}

unint64_t sub_22F345C8C()
{
  result = qword_27DAB3AE0;
  if (!qword_27DAB3AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3AE0);
  }

  return result;
}

uint64_t _s11PhotosGraph13AudioAnalysisV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 118);
  v4 = a2[3];
  v3 = a2[4];
  v5 = *(a2 + 118);
  if (*(a1 + 21))
  {
    if ((*(a2 + 21) & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    if (*(a2 + 21))
    {
      goto LABEL_39;
    }

    v8 = *a2;
    v7 = a2[1];
    if (*(a1 + 4))
    {
      if ((v8 & 0x100000000) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v6 = 0;
      if ((v8 & 0x100000000) != 0 || *a1 != *&v8)
      {
        return v6 & 1;
      }
    }

    if (*(a1 + 12))
    {
      if ((v7 & 0x100000000) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v6 = 0;
      if ((v7 & 0x100000000) != 0 || *(a1 + 8) != *&v7)
      {
        return v6 & 1;
      }
    }

    v9 = *(a2 + 4) | (*(a2 + 20) << 32);
    if (*(a1 + 20))
    {
      if ((v9 & 0x100000000) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v6 = 0;
      if ((v9 & 0x100000000) != 0)
      {
        return v6 & 1;
      }

      *(a2 + 20);
      if (*(a1 + 16) != *(a2 + 4))
      {
        return v6 & 1;
      }
    }
  }

  if (*(a1 + 45))
  {
    if ((*(a2 + 45) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_5;
  }

  if (*(a2 + 45))
  {
    goto LABEL_39;
  }

  if (*(a1 + 28))
  {
    if ((v4 & 0x100000000) == 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v6 = 0;
    if ((v4 & 0x100000000) != 0 || *(a1 + 24) != *&v4)
    {
      return v6 & 1;
    }
  }

  if (*(a1 + 36))
  {
    if ((v3 & 0x100000000) == 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v6 = 0;
    if ((v3 & 0x100000000) != 0 || *(a1 + 32) != *&v3)
    {
      return v6 & 1;
    }
  }

  v14 = *(a2 + 10) | (*(a2 + 44) << 32);
  if (*(a1 + 44))
  {
    if ((v14 & 0x100000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_5;
  }

  v6 = 0;
  if ((v14 & 0x100000000) == 0)
  {
    *(a2 + 44);
    if (*(a1 + 40) == *(a2 + 10))
    {
LABEL_5:
      if (*(a1 + 118))
      {
        v6 = *(a2 + 118);
        return v6 & 1;
      }

      v10 = *(a1 + 96);
      v18[2] = *(a1 + 80);
      *v19 = v10;
      *&v19[14] = *(a1 + 110);
      v11 = *(a1 + 64);
      v18[0] = *(a1 + 48);
      v18[1] = v11;
      v20 = v2;
      if ((v5 & 1) == 0)
      {
        v12 = *(a2 + 6);
        v16[2] = *(a2 + 5);
        v17[0] = v12;
        *(v17 + 14) = *(a2 + 110);
        v13 = *(a2 + 4);
        v16[0] = *(a2 + 3);
        v16[1] = v13;
        v6 = _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV0hI10AttributesV0hi10TimeSeriesL0V2eeoiySbAM_AMtFZ_0(v18, v16);
        return v6 & 1;
      }

LABEL_39:
      v6 = 0;
    }
  }

  return v6 & 1;
}

unint64_t sub_22F345EA8()
{
  result = qword_27DAB3AF0;
  if (!qword_27DAB3AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3AF0);
  }

  return result;
}

unint64_t sub_22F345EFC()
{
  result = qword_27DAB3AF8;
  if (!qword_27DAB3AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3AF8);
  }

  return result;
}

unint64_t sub_22F345F50()
{
  result = qword_27DAB3B00;
  if (!qword_27DAB3B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B00);
  }

  return result;
}

unint64_t sub_22F345FA4()
{
  result = qword_27DAB3B10;
  if (!qword_27DAB3B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B10);
  }

  return result;
}

unint64_t sub_22F345FF8()
{
  result = qword_27DAB3B18;
  if (!qword_27DAB3B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B18);
  }

  return result;
}

unint64_t sub_22F346050()
{
  result = qword_27DAB3B20;
  if (!qword_27DAB3B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B20);
  }

  return result;
}

unint64_t sub_22F3460A8()
{
  result = qword_27DAB3B28;
  if (!qword_27DAB3B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B28);
  }

  return result;
}

unint64_t sub_22F346100()
{
  result = qword_27DAB3B30;
  if (!qword_27DAB3B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B30);
  }

  return result;
}

unint64_t sub_22F346158()
{
  result = qword_27DAB3B38;
  if (!qword_27DAB3B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B38);
  }

  return result;
}

__n128 __swift_memcpy119_4(uint64_t a1, __int128 *a2)
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
  *(a1 + 111) = *(a2 + 111);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_22F3461D8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 119))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22F3461F8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 118) = 0;
    *(result + 116) = 0;
    *(result + 112) = 0;
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

  *(result + 119) = v3;
  return result;
}

unint64_t sub_22F3462D0()
{
  result = qword_27DAB3B40;
  if (!qword_27DAB3B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B40);
  }

  return result;
}

unint64_t sub_22F346328()
{
  result = qword_27DAB3B48;
  if (!qword_27DAB3B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B48);
  }

  return result;
}

unint64_t sub_22F346380()
{
  result = qword_27DAB3B50;
  if (!qword_27DAB3B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B50);
  }

  return result;
}

unint64_t sub_22F3463D8()
{
  result = qword_27DAB3B58;
  if (!qword_27DAB3B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B58);
  }

  return result;
}

unint64_t sub_22F346430()
{
  result = qword_27DAB3B60;
  if (!qword_27DAB3B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B60);
  }

  return result;
}

unint64_t sub_22F346488()
{
  result = qword_27DAB3B68;
  if (!qword_27DAB3B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B68);
  }

  return result;
}

unint64_t sub_22F3464E0()
{
  result = qword_27DAB3B70;
  if (!qword_27DAB3B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B70);
  }

  return result;
}

unint64_t sub_22F346538()
{
  result = qword_27DAB3B78;
  if (!qword_27DAB3B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B78);
  }

  return result;
}

unint64_t sub_22F346590()
{
  result = qword_27DAB3B80;
  if (!qword_27DAB3B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B80);
  }

  return result;
}

unint64_t sub_22F3465E8()
{
  result = qword_27DAB3B88;
  if (!qword_27DAB3B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B88);
  }

  return result;
}

unint64_t sub_22F346640()
{
  result = qword_27DAB3B90;
  if (!qword_27DAB3B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B90);
  }

  return result;
}

unint64_t sub_22F346698()
{
  result = qword_27DAB3B98;
  if (!qword_27DAB3B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3B98);
  }

  return result;
}

uint64_t sub_22F3466EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x796772656E65 && a2 == 0xE600000000000000;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636E656C6176 && a2 == 0xE700000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7373656E64756F6CLL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_22F742040();

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

uint64_t static CollectionCuration.rewrite(curation:keySongAdamID:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v10 = a1[4];
  v9 = a1[5];
  v11 = *(type metadata accessor for CollectionCuration() + 28);

  sub_22F73F680();
  *a4 = v8;
  a4[1] = v7;
  a4[2] = a2;
  a4[3] = a3;
  a4[4] = v10;
  a4[5] = v9;
}

uint64_t CollectionCuration.init(collectionId:keySongAdamID:keySongFlexUID:curationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  *(a8 + 4) = a5;
  *(a8 + 5) = a6;
  v10 = *(type metadata accessor for CollectionCuration() + 28);
  v11 = sub_22F73F690();
  v12 = *(*(v11 - 8) + 32);

  return v12(&a8[v10], a7, v11);
}

uint64_t type metadata accessor for CollectionCuration()
{
  result = qword_27DAB3BA8;
  if (!qword_27DAB3BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static CollectionCuration.rewrite(curation:keySongFlexUID:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v10 = a1[2];
  v9 = a1[3];
  v11 = *(type metadata accessor for CollectionCuration() + 28);

  sub_22F73F680();
  *a4 = v8;
  a4[1] = v7;
  a4[2] = v10;
  a4[3] = v9;
  a4[4] = a2;
  a4[5] = a3;
}

uint64_t CollectionCuration.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22F740D60();
  if (!v0[3])
  {
    sub_22F742190();
    if (v0[5])
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_22F742190();
    goto LABEL_6;
  }

  v3 = v0[2];
  sub_22F742190();
  sub_22F740D60();
  if (!v0[5])
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = v0[4];
  sub_22F742190();
  sub_22F740D60();
LABEL_6:
  v5 = *(type metadata accessor for CollectionCuration() + 28);
  sub_22F73F690();
  sub_22F347044(&qword_2810AC710, MEMORY[0x277CC9578]);
  return sub_22F740D50();
}

uint64_t CollectionCuration.hashValue.getter()
{
  sub_22F742170();
  v1 = *v0;
  v2 = v0[1];
  sub_22F740D60();
  if (!v0[3])
  {
    sub_22F742190();
    if (v0[5])
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_22F742190();
    goto LABEL_6;
  }

  v3 = v0[2];
  sub_22F742190();
  sub_22F740D60();
  if (!v0[5])
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = v0[4];
  sub_22F742190();
  sub_22F740D60();
LABEL_6:
  v5 = *(type metadata accessor for CollectionCuration() + 28);
  sub_22F73F690();
  sub_22F347044(&qword_2810AC710, MEMORY[0x277CC9578]);
  sub_22F740D50();
  return sub_22F7421D0();
}

uint64_t sub_22F346C3C(uint64_t a1, uint64_t a2)
{
  sub_22F742170();
  v4 = *v2;
  v5 = v2[1];
  sub_22F740D60();
  if (!v2[3])
  {
    sub_22F742190();
    if (v2[5])
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_22F742190();
    goto LABEL_6;
  }

  v6 = v2[2];
  sub_22F742190();
  sub_22F740D60();
  if (!v2[5])
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = v2[4];
  sub_22F742190();
  sub_22F740D60();
LABEL_6:
  v8 = *(a2 + 28);
  sub_22F73F690();
  sub_22F347044(&qword_2810AC710, MEMORY[0x277CC9578]);
  sub_22F740D50();
  return sub_22F7421D0();
}

uint64_t CollectionCuration.description.getter()
{
  sub_22F741B00();
  MEMORY[0x231900B10](0x697463656C6C6F63, 0xEE00203A64496E6FLL);
  MEMORY[0x231900B10](*v0, v0[1]);
  MEMORY[0x231900B10](0xD000000000000011, 0x800000022F79B7C0);
  v2 = v0[2];
  v1 = v0[3];
  if (v1)
  {
    v3 = v0[2];
  }

  else
  {
    v3 = 0;
  }

  if (v1)
  {
    v4 = v0[3];
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  MEMORY[0x231900B10](v3, v4);

  MEMORY[0x231900B10](0xD000000000000012, 0x800000022F79B7E0);
  v6 = v0[4];
  v5 = v0[5];
  if (v5)
  {
    v7 = v0[4];
  }

  else
  {
    v7 = 0;
  }

  if (v5)
  {
    v8 = v0[5];
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  MEMORY[0x231900B10](v7, v8);

  MEMORY[0x231900B10](8236, 0xE200000000000000);
  v9 = *(type metadata accessor for CollectionCuration() + 28);
  sub_22F73F690();
  sub_22F347044(&qword_2810AC6F8, MEMORY[0x277CC9578]);
  v10 = sub_22F742010();
  MEMORY[0x231900B10](v10);

  return 0;
}

uint64_t _s11PhotosGraph18CollectionCurationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_22F742040() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_22F742040() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = a2[5];
  if (v8)
  {
    if (v9 && (a1[4] == a2[4] && v8 == v9 || (sub_22F742040() & 1) != 0))
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

LABEL_20:
  v10 = *(type metadata accessor for CollectionCuration() + 28);

  return sub_22F73F630();
}

uint64_t sub_22F347044(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22F3470B4()
{
  sub_22F1F208C();
  if (v0 <= 0x3F)
  {
    sub_22F73F690();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22F347148(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_triggerResults;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_22F3471B0()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_triggerResults;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_22F3471F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_triggerResults;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_22F3472B0()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_supportsFutureLookup;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22F3472F4(char a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_supportsFutureLookup;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_22F3473A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_futureLookupResults;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_22F34740C()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_futureLookupResults;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_22F347454(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_futureLookupResults;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t *sub_22F34750C(char *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_22F740460();
  v71 = *(v7 - 8);
  v72 = v7;
  v8 = *(v71 + 64);
  MEMORY[0x28223BE20](v7);
  v70 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22F740560();
  v66 = *(v10 - 8);
  v67 = v10;
  v11 = *(v66 + 64);
  MEMORY[0x28223BE20](v10);
  v69 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v63 - v15;
  v17 = sub_22F73F690();
  v74 = *(v17 - 8);
  v75 = v17;
  v18 = *(v74 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v73 = &v63 - v22;
  v23 = *a1;
  sub_22F740B80();
  *(v3 + OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_supportsFutureLookup) = 0;
  *(v3 + OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_futureLookupResults) = 0;
  *(v3 + 16) = 2 - v23;
  v68 = OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_triggerResults;
  *(v3 + OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_triggerResults) = MEMORY[0x277D84F90];
  v25 = a2[3];
  v24 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v25);
  v26 = (*(v24 + 16))(v25, v24);
  if (v26)
  {
    v27 = v26;
    v65 = v6;
    v28 = a2[3];
    v29 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v28);
    v30 = (*(v29 + 24))(v28, v29);
    sub_22F29A0E8(v16);

    if ((*(v74 + 48))(v16, 1, v75) == 1)
    {
      sub_22F15FCF0(v16);
      v31 = sub_22F740B70();
      v32 = sub_22F7415E0();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_22F0FC000, v31, v32, "Unable to get first date in library", v33, 2u);
        MEMORY[0x2319033A0](v33, -1, -1);
      }
    }

    else
    {
      v64 = v27;
      v41 = v73;
      v42 = v74;
      v43 = v75;
      (*(v74 + 32))(v73, v16, v75);
      LOBYTE(v76) = v23;
      v44 = a2[3];
      v45 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v44);
      (*(v45 + 8))(v44, v45);
      v46 = HistoricalInterval.annualDateIntervals(startDate:currentDate:)(v41, v20);
      v74 = *(v42 + 8);
      v47 = (v74)(v20, v43);
      MEMORY[0x28223BE20](v47);
      v48 = v64;
      *(&v63 - 2) = v46;
      *(&v63 - 1) = v48;
      v49 = v48;
      sub_22F2A1FCC(sub_22F348128, (&v63 - 4));

      v50 = a2[3];
      v51 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v50);
      (*(v51 + 24))(v50, v51);
      (*(v66 + 104))(v69, *MEMORY[0x277D3C570], v67);
      v52 = sub_22F740570();
      v53 = *(v52 + 48);
      v54 = *(v52 + 52);
      swift_allocObject();
      sub_22F740550();
      sub_22F73FE90();
      v55 = sub_22F7404F0();

      v57 = v70;
      v56 = v71;
      v58 = v72;
      (*(v71 + 104))(v70, *MEMORY[0x277D3C448], v72);
      v59 = static CollectionTrigger.generateTriggerResults(from:type:)(v55, v57);

      (*(v56 + 8))(v57, v58);
      (v74)(v73, v75);
      v60 = v68;
      swift_beginAccess();
      v61 = *(v3 + v60);
      *(v3 + v60) = v59;
    }
  }

  else
  {
    v34 = sub_22F740B70();
    v35 = sub_22F7415C0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v76 = v37;
      *v36 = 136315138;
      v38 = sub_22F742240();
      v40 = sub_22F145F20(v38, v39, &v76);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_22F0FC000, v34, v35, "GraphWorkingContext not available. Skipping %s trigger", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x2319033A0](v37, -1, -1);
      MEMORY[0x2319033A0](v36, -1, -1);
    }
  }

  __swift_destroy_boxed_opaque_existential_0(a2);
  return v3;
}

uint64_t HistoricalTrips.deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_logger;
  v2 = sub_22F740B90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_triggerResults);

  v4 = *(v0 + OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_futureLookupResults);

  return v0;
}

uint64_t HistoricalTrips.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_logger;
  v2 = sub_22F740B90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_triggerResults);

  v4 = *(v0 + OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_futureLookupResults);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22F347D70()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_triggerResults;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_22F347DBC()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_supportsFutureLookup;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_22F347E04()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_futureLookupResults;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t type metadata accessor for HistoricalTrips()
{
  result = qword_27DAB3BB8;
  if (!qword_27DAB3BB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F347EA4()
{
  result = sub_22F740B90();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t ScoredGraphEntityPhotoKitPersister.init(with:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(type metadata accessor for ScoredGraphEntityPhotoKitPersister() + 20);
  if (qword_2810A9400 != -1)
  {
    swift_once();
  }

  v5 = sub_22F740B90();
  v6 = __swift_project_value_buffer(v5, qword_2810B4CE0);
  result = (*(*(v5 - 8) + 16))(&a2[v4], v6, v5);
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for ScoredGraphEntityPhotoKitPersister()
{
  result = qword_2810AC4F0;
  if (!qword_2810AC4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ScoredGraphEntityPhotoKitPersister.persist(scoredEntities:progressReporter:)(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (qword_2810A9AD0 != -1)
  {
    swift_once();
  }

  v5 = qword_2810B4DF0;
  *&v6 = CACurrentMediaTime();
  sub_22F1B560C("ScoredGraphEntityPhotoKitPersister.persist", 42, 2u, v6, 0, v5, v16);
  v7 = *v2;
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v15[4] = sub_22F348724;
  v15[5] = v8;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_22F33A524;
  v15[3] = &block_descriptor_34;
  v9 = _Block_copy(v15);

  v10 = a2;

  v15[0] = 0;
  LODWORD(v7) = [v7 performCancellableChangesAndWait:v9 error:v15];
  _Block_release(v9);
  if (v7)
  {
    v11 = v15[0];
    sub_22F7416A0();
  }

  else
  {
    v12 = v15[0];
    sub_22F73F370();

    swift_willThrow();
  }

  sub_22F1B2BBC(0);

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22F348428(uint64_t a1, uint64_t a2)
{
  v12 = [objc_opt_self() creationRequestForNewSearchRankings];
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a2 + 32);
    do
    {
      v7 = v5[1];
      v14[0] = *v5;
      v14[1] = v7;
      v8 = v5[3];
      v15 = v5[2];
      v16 = v8;
      ++v4;
      v17[0] = v14[0];
      v17[1] = v7;
      v18 = v15;
      v19 = v8;
      sub_22F3229A4(v14, v13);
      sub_22F741680();
      v9 = qword_22F787C38[SLOBYTE(v17[0])];
      v10 = sub_22F740DF0();
      if (v18)
      {

        v11 = sub_22F740DF0();

        if (!*(&v19 + 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v11 = 0;
        if (!*(&v19 + 1))
        {
LABEL_9:
          v6 = 0;
          goto LABEL_4;
        }
      }

      v6 = sub_22F740DF0();

LABEL_4:

      sub_22F322A00(v17);
      v5 += 4;
    }

    while (v3 != v4);
  }
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22F34876C()
{
  result = sub_22F3487F0();
  if (v1 <= 0x3F)
  {
    result = sub_22F740B90();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22F3487F0()
{
  result = qword_2810A9198;
  if (!qword_2810A9198)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810A9198);
  }

  return result;
}

unint64_t static ImportantEntitiesPetProcessor.processUserPets(inGraph:parameters:progressBlock:reportToCoreAnalytics:withProcessInferredPetNodeClosure:)(void *a1, _OWORD *a2, void (*a3)(double), uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v13 = a2[1];
  v21[0] = *a2;
  v21[1] = v13;
  v21[2] = a2[2];
  v14 = type metadata accessor for ImportantEntitiesPetContainer();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = a1;

  sub_22F349914(v18, a3, a4, a6, a7);
  v19 = sub_22F24B998(v17, v21, a3, a4, a5);

  return v19;
}

uint64_t type metadata accessor for ImportantEntitiesPetContainer()
{
  result = qword_2810AA108;
  if (!qword_2810AA108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double static ImportantEntitiesPetProcessor.defaultParameters()@<D0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  [v2 usersPetsInferenceRecencyThresholdFromLatestMomentDateYears];
  v4 = v3 * 31557600.0;
  [v2 usersPetsInferenceMinimumLifespanYears];
  *a1 = v4;
  *(a1 + 8) = v5 * 31557600.0;
  *(a1 + 16) = 10;
  result = 0.05;
  *(a1 + 24) = xmmword_22F787CC0;
  *(a1 + 40) = 0;
  return result;
}

void sub_22F3489DC(void *a1, void (*a2)(double), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = [a1 meNode];
  if (!v8)
  {
    v16 = sub_22F740B70();
    v17 = sub_22F7415E0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22F0FC000, v16, v17, "Error! Could not find a me node in the graph.", v18, 2u);
      MEMORY[0x2319033A0](v18, -1, -1);
    }

    *swift_slowAlloc() = 0;
    a2(1.0);
    return;
  }

  v9 = v8;
  v10 = [v8 collection];
  v11 = [v10 homeNodes];

  v12 = v11;
  v13 = sub_22F740B70();
  v14 = sub_22F7415D0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = [v12 count];

    _os_log_impl(&dword_22F0FC000, v13, v14, "Found %ld home nodes connected to the me node.", v15, 0xCu);
    MEMORY[0x2319033A0](v15, -1, -1);
  }

  else
  {

    v13 = v12;
  }

  v19 = [v12 addressNodes];
  v20 = [v19 momentNodes];

  v21 = v20;
  v22 = sub_22F740B70();
  v23 = sub_22F7415D0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    *(v24 + 4) = [v21 count];

    _os_log_impl(&dword_22F0FC000, v22, v23, "Found %ld moments at the me node's home address.", v24, 0xCu);
    MEMORY[0x2319033A0](v24, -1, -1);
  }

  else
  {

    v22 = v21;
  }

  v25 = swift_allocObject();
  *(v25 + 16) = a5;
  *(v25 + 24) = a6;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_22F34AD48;
  *(v26 + 24) = v25;
  v53 = sub_22F2D4D54;
  v54 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v50 = 1107296256;
  v51 = sub_22F107E24;
  v52 = &block_descriptor_76;
  v27 = _Block_copy(&aBlock);

  [v21 enumerateUsingBlock:v27];
  _Block_release(v27);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v28 = [a1 largeFrequentLocationNodes];
  sub_22F120634(0, &qword_2810A8FE0, off_27887AD90);
  sub_22F34ACCC();
  v29 = sub_22F741420();

  if ((v29 & 0xC000000000000001) != 0)
  {
    v30 = sub_22F741A00();
  }

  else
  {
    v30 = *(v29 + 16);
  }

  if (v30 < 1)
  {

    return;
  }

  v31 = [a1 largeFrequentLocationNodes];
  v32 = sub_22F741420();

  sub_22F10A0A8(v32);

  v33 = objc_allocWithZone(PGGraphFrequentLocationNodeCollection);
  v34 = sub_22F741410();

  v35 = [v33 initWithSet:v34 graph:a1];

  v36 = [v35 addressNodes];
  v37 = [v36 momentNodes];

  v38 = v35;
  v39 = v37;
  v40 = sub_22F740B70();
  v41 = sub_22F7415D0();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 134218240;
    *(v42 + 4) = [v38 count];

    *(v42 + 12) = 2048;
    *(v42 + 14) = [v39 count];

    _os_log_impl(&dword_22F0FC000, v40, v41, "Found %ld large frequent locations and %ld moments at large frequent locations.", v42, 0x16u);
    MEMORY[0x2319033A0](v42, -1, -1);
  }

  else
  {

    v40 = v39;
  }

  v43 = swift_allocObject();
  *(v43 + 16) = a5;
  *(v43 + 24) = a6;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_22F34AD48;
  *(v44 + 24) = v43;
  v53 = sub_22F2D4D54;
  v54 = v44;
  aBlock = MEMORY[0x277D85DD0];
  v50 = 1107296256;
  v51 = sub_22F107E24;
  v52 = &block_descriptor_87;
  v45 = _Block_copy(&aBlock);

  [v39 enumerateUsingBlock:v45];

  _Block_release(v45);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_23;
  }
}

void sub_22F349118(void *a1, void (*a2)(double), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = [a1 meNode];
  if (!v8)
  {
    v16 = sub_22F740B70();
    v17 = sub_22F7415E0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22F0FC000, v16, v17, "Error! Could not find a me node in the graph.", v18, 2u);
      MEMORY[0x2319033A0](v18, -1, -1);
    }

    *swift_slowAlloc() = 0;
    a2(1.0);
    return;
  }

  v9 = v8;
  v10 = [v8 collection];
  v11 = [v10 homeNodes];

  v12 = v11;
  v13 = sub_22F740B70();
  v14 = sub_22F7415D0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = [v12 count];

    _os_log_impl(&dword_22F0FC000, v13, v14, "Found %ld home nodes connected to the me node.", v15, 0xCu);
    MEMORY[0x2319033A0](v15, -1, -1);
  }

  else
  {

    v13 = v12;
  }

  v19 = [v12 addressNodes];
  v20 = [v19 momentNodes];

  v21 = v20;
  v22 = sub_22F740B70();
  v23 = sub_22F7415D0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    *(v24 + 4) = [v21 count];

    _os_log_impl(&dword_22F0FC000, v22, v23, "Found %ld moments at the me node's home address.", v24, 0xCu);
    MEMORY[0x2319033A0](v24, -1, -1);
  }

  else
  {

    v22 = v21;
  }

  v25 = swift_allocObject();
  *(v25 + 16) = a5;
  *(v25 + 24) = a6;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_22F34ACC4;
  *(v26 + 24) = v25;
  v53 = sub_22F2D4D54;
  v54 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v50 = 1107296256;
  v51 = sub_22F107E24;
  v52 = &block_descriptor_55;
  v27 = _Block_copy(&aBlock);

  [v21 enumerateUsingBlock:v27];
  _Block_release(v27);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v28 = [a1 largeFrequentLocationNodes];
  sub_22F120634(0, &qword_2810A8FE0, off_27887AD90);
  sub_22F34ACCC();
  v29 = sub_22F741420();

  if ((v29 & 0xC000000000000001) != 0)
  {
    v30 = sub_22F741A00();
  }

  else
  {
    v30 = *(v29 + 16);
  }

  if (v30 < 1)
  {

    return;
  }

  v31 = [a1 largeFrequentLocationNodes];
  v32 = sub_22F741420();

  sub_22F10A0A8(v32);

  v33 = objc_allocWithZone(PGGraphFrequentLocationNodeCollection);
  v34 = sub_22F741410();

  v35 = [v33 initWithSet:v34 graph:a1];

  v36 = [v35 addressNodes];
  v37 = [v36 momentNodes];

  v38 = v35;
  v39 = v37;
  v40 = sub_22F740B70();
  v41 = sub_22F7415D0();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 134218240;
    *(v42 + 4) = [v38 count];

    *(v42 + 12) = 2048;
    *(v42 + 14) = [v39 count];

    _os_log_impl(&dword_22F0FC000, v40, v41, "Found %ld large frequent locations and %ld moments at large frequent locations.", v42, 0x16u);
    MEMORY[0x2319033A0](v42, -1, -1);
  }

  else
  {

    v40 = v39;
  }

  v43 = swift_allocObject();
  *(v43 + 16) = a5;
  *(v43 + 24) = a6;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_22F34ACC4;
  *(v44 + 24) = v43;
  v53 = sub_22F2D4D54;
  v54 = v44;
  aBlock = MEMORY[0x277D85DD0];
  v50 = 1107296256;
  v51 = sub_22F107E24;
  v52 = &block_descriptor_65_0;
  v45 = _Block_copy(&aBlock);

  [v39 enumerateUsingBlock:v45];

  _Block_release(v45);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_23;
  }
}

uint64_t sub_22F349894()
{
  v0 = sub_22F740B90();
  __swift_allocate_value_buffer(v0, qword_2810B4EB0);
  __swift_project_value_buffer(v0, qword_2810B4EB0);
  return sub_22F740B80();
}

uint64_t sub_22F349914(void *a1, void (*a2)(double), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v48 = a2;
  v49 = a3;
  v10 = sub_22F73F690();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x277D84F90];
  v6[2] = a1;
  v6[3] = v15;
  v16 = a1;
  v17 = sub_22F14E72C(v15);
  v6[5] = v15;
  v18 = v6 + 5;
  v6[4] = v17;
  v19 = (v6 + OBJC_IVAR____TtC11PhotosGraph29ImportantEntitiesPetContainer_processInferredPetNode);
  *v19 = a4;
  v19[1] = a5;
  v50 = a5;

  sub_22F73F650();
  v20 = OBJC_IVAR____TtC11PhotosGraph29ImportantEntitiesPetContainer_latestMomentDatetime;
  (*(v11 + 32))(v6 + OBJC_IVAR____TtC11PhotosGraph29ImportantEntitiesPetContainer_latestMomentDatetime, v14, v10);
  v21 = v16;
  v22 = [v16 momentNodesSortedByDate];
  sub_22F120634(0, &qword_2810A90E0, off_27887B100);
  v23 = sub_22F741180();

  if (!(v23 >> 62))
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_3;
    }

LABEL_20:

    if (qword_2810AA120 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_28;
  }

  v24 = sub_22F741A00();
  if (!v24)
  {
    goto LABEL_20;
  }

LABEL_3:
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
    goto LABEL_25;
  }

  if ((v23 & 0xC000000000000001) != 0)
  {
LABEL_25:
    v27 = MEMORY[0x2319016F0](v26, v23);
    goto LABEL_8;
  }

  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v26 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
LABEL_21:
    v44 = sub_22F740B90();
    __swift_project_value_buffer(v44, qword_2810B4EB0);
    v28 = sub_22F740B70();
    v45 = sub_22F7415E0();
    if (os_log_type_enabled(v28, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_22F0FC000, v28, v45, "Couldn't find latest moment in the graph!", v46, 2u);
      MEMORY[0x2319033A0](v46, -1, -1);
    }

    goto LABEL_23;
  }

  v27 = *(v23 + 8 * v26 + 32);
LABEL_8:
  v28 = v27;

  v29 = [v28 universalEndDate];
  sub_22F73F640();

  swift_beginAccess();
  (*(v11 + 40))(v6 + v20, v14, v10);
  swift_endAccess();
  v30 = swift_slowAlloc();
  *v30 = 0;
  v32 = v48;
  v31 = v49;
  v48(0.0);
  if (*v30)
  {
    goto LABEL_23;
  }

  if (qword_2810AA120 != -1)
  {
    swift_once();
  }

  v33 = sub_22F740B90();
  v34 = __swift_project_value_buffer(v33, qword_2810B4EB0);
  sub_22F349118(v21, v32, v31, v34, sub_22F34AC94, v6);

  v35 = sub_22F740B70();
  v36 = sub_22F7415D0();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134217984;
    swift_beginAccess();
    v38 = *v18;
    if (*v18 >> 62)
    {
      if (v38 < 0)
      {
        v47 = *v18;
      }

      v39 = sub_22F741A00();
    }

    else
    {
      v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v37 + 4) = v39;

    _os_log_impl(&dword_22F0FC000, v35, v36, "Found %ld moments at the me node's home address and frequent locations.", v37, 0xCu);
    MEMORY[0x2319033A0](v37, -1, -1);
  }

  else
  {
  }

  (v32)(v30, 0.5);
  if (*v30)
  {
    goto LABEL_23;
  }

  sub_22F120634(0, &unk_2810A9010, off_27887B270);
  v40 = [swift_getObjCClassFromMetadata() nodesInGraph_];
  v41 = swift_allocObject();
  *(v41 + 16) = sub_22F34AC9C;
  *(v41 + 24) = v6;
  aBlock[4] = sub_22F1DAF34;
  aBlock[5] = v41;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F322D74;
  aBlock[3] = &block_descriptor_35;
  v42 = _Block_copy(aBlock);

  [v40 enumerateUsingBlock:v42];
  _Block_release(v42);
  LOBYTE(v42) = swift_isEscapingClosureAtFileLocation();

  if ((v42 & 1) == 0)
  {
    (v32)(v30, 1.0);

    v28 = v40;
LABEL_23:

    return v6;
  }

  __break(1u);
  return result;
}

void sub_22F349F40(void *a1, uint64_t a2)
{
  v4 = [a1 bestAddressNode];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for ImportantEntitiesGraphInferenceMoment();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = v5;
    swift_beginAccess();
    v7 = v5;
    v8 = a1;

    MEMORY[0x231900D00](v9);
    if (*((*(a2 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v13 = *((*(a2 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22F7411C0();
    }

    sub_22F741220();
    swift_endAccess();
  }

  else
  {
    if (qword_2810AA120 != -1)
    {
      swift_once();
    }

    v10 = sub_22F740B90();
    __swift_project_value_buffer(v10, qword_2810B4EB0);
    oslog = sub_22F740B70();
    v11 = sub_22F7415E0();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22F0FC000, oslog, v11, "Couldn't find best address node for moment node!", v12, 2u);
      MEMORY[0x2319033A0](v12, -1, -1);
    }
  }
}

uint64_t sub_22F34A11C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 localIdentifier];
  v6 = sub_22F740E20();
  v8 = v7;

  type metadata accessor for ImportantEntitiesPetProcessorEntity();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = v6;
  v9[4] = v8;
  swift_beginAccess();
  v10 = a1;

  MEMORY[0x231900D00](v11);
  if (*((*(a3 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v33 = *((*(a3 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22F7411C0();
  }

  sub_22F741220();
  swift_endAccess();
  v12 = [v10 collection];
  v13 = [v12 momentNodes];

  v36 = MEMORY[0x277D84F90];
  v14 = swift_allocObject();
  *(v14 + 16) = &v36;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_22F34ACBC;
  *(v15 + 24) = v14;
  aBlock[4] = sub_22F250854;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F107E24;
  aBlock[3] = &block_descriptor_45;
  v16 = _Block_copy(aBlock);

  [v13 enumerateUsingBlock_];
  _Block_release(v16);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    v17 = v9[3];
    v18 = v9[4];

    v20 = sub_22F151C88(v19);

    swift_beginAccess();
    v21 = *(a3 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(a3 + 32);
    *(a3 + 32) = 0x8000000000000000;
    sub_22F131768(v20, v17, v18, isUniquelyReferenced_nonNull_native);

    *(a3 + 32) = v34;
    swift_endAccess();
    if (qword_2810AA120 == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  v23 = sub_22F740B90();
  __swift_project_value_buffer(v23, qword_2810B4EB0);

  v24 = sub_22F740B70();
  v25 = sub_22F7415D0();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v34 = v27;
    *v26 = 136315394;
    v28 = v9[3];
    v29 = v9[4];

    v30 = sub_22F145F20(v28, v29, &v34);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2048;
    swift_beginAccess();
    if (v36 >> 62)
    {
      v31 = sub_22F741A00();
    }

    else
    {
      v31 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 14) = v31;
    _os_log_impl(&dword_22F0FC000, v24, v25, "Pet entity %s has %ld moments.", v26, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x2319033A0](v27, -1, -1);
    MEMORY[0x2319033A0](v26, -1, -1);
  }
}

uint64_t sub_22F34A590(void *a1, uint64_t a2, void *a3)
{
  v5 = [a1 bestAddressNode];
  type metadata accessor for ImportantEntitiesGraphInferenceMoment();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v5;
  MEMORY[0x231900D00](a1);
  if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v8 = *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22F7411C0();
  }

  return sub_22F741220();
}

unint64_t sub_22F34A638(unint64_t result, uint64_t (*a2)(double))
{
  v3 = v2;
  v4 = result;
  v5 = result >> 62;
  if (result >> 62)
  {
LABEL_20:
    result = sub_22F741A00();
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return result;
    }
  }

  v7 = swift_slowAlloc();
  *v7 = 0;
  result = a2(0.0);
  if ((*v7 & 1) == 0)
  {
    v8 = v6;
    if (v5)
    {
      v9 = sub_22F741A00();
    }

    else
    {
      v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = 0;
    v5 = v3 + OBJC_IVAR____TtC11PhotosGraph29ImportantEntitiesPetContainer_processInferredPetNode;
    v11 = 0.0;
    v12 = 1.0 / v8;
    do
    {
      if (v9 == v10)
      {
        return (a2)(v7, 1.0);
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x2319016F0](v10, v4);
        if (__OFADD__(v10, 1))
        {
LABEL_16:
          __break(1u);
          return (a2)(v7, 1.0);
        }
      }

      else
      {
        if (v10 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_20;
        }

        v3 = *(v4 + 8 * v10 + 32);

        if (__OFADD__(v10, 1))
        {
          goto LABEL_16;
        }
      }

      v14 = *v5;
      v13 = *(v5 + 8);
      v15 = *(v3 + 16);
      v14();

      v11 = v12 + v11;
      (a2)(v7, v11);
      LOBYTE(v13) = *v7;

      ++v10;
    }

    while ((v13 & 1) == 0);
  }

  return result;
}

uint64_t sub_22F34A7F0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = OBJC_IVAR____TtC11PhotosGraph29ImportantEntitiesPetContainer_latestMomentDatetime;
  v5 = sub_22F73F690();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtC11PhotosGraph29ImportantEntitiesPetContainer_processInferredPetNode + 8);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22F34A8C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11PhotosGraph29ImportantEntitiesPetContainer_latestMomentDatetime;
  swift_beginAccess();
  v5 = sub_22F73F690();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

id ImportantEntitiesPetProcessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ImportantEntitiesPetProcessor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImportantEntitiesPetProcessor();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ImportantEntitiesPetProcessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImportantEntitiesPetProcessor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s11PhotosGraph29ImportantEntitiesPetProcessorC15processUserPets02inB013progressBlock019withProcessInferredE11NodeClosureySo7PGGraphC_ySd_Spy10ObjectiveC8ObjCBoolVGSgtXEySo0reP0CctFZ_0(void *a1, void (*a2)(double), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_opt_self();
  [v10 usersPetsInferenceRecencyThresholdFromLatestMomentDateYears];
  v12 = v11 * 31557600.0;
  [v10 usersPetsInferenceMinimumLifespanYears];
  *v20 = v12;
  *&v20[1] = v13 * 31557600.0;
  v20[2] = 10;
  v21 = xmmword_22F787CC0;
  v22 = 0;
  v14 = type metadata accessor for ImportantEntitiesPetContainer();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = a1;

  sub_22F349914(v18, a2, a3, a4, a5);
  sub_22F24B998(v17, v20, a2, a3, 1);
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22F34ACCC()
{
  result = qword_2810A8FD0;
  if (!qword_2810A8FD0)
  {
    sub_22F120634(255, &qword_2810A8FE0, off_27887AD90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A8FD0);
  }

  return result;
}

CLLocation __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CLLocation.init(geohash:)(Swift::String geohash)
{
  object = geohash._object;
  countAndFlagsBits = geohash._countAndFlagsBits;
  type metadata accessor for Geohash();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  sub_22F34B9D8(countAndFlagsBits, object);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  if (!v1)
  {
    object = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithLatitude:(v6 + v8) * 0.5 longitude:(v10 + v12) * 0.5];
  }

  swift_setDeallocating();
  v13 = *(inited + 16);

  v14 = *(inited + 24);

  v16 = object;
  result._internal = v15;
  result.super.isa = v16;
  return result;
}

Swift::String __swiftcall CLLocation.geohash(length:)(Swift::Int length)
{
  type metadata accessor for Geohash();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  [v1 coordinate];
  v5 = v4;
  [v1 coordinate];
  v7 = sub_22F34AF8C(length, v5, v6);
  v9 = v8;
  swift_setDeallocating();
  v10 = *(inited + 16);

  v11 = *(inited + 24);

  v12 = v7;
  v13 = v9;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

uint64_t Geohash.Error.hashValue.getter()
{
  sub_22F742170();
  MEMORY[0x231901D30](0);
  return sub_22F7421D0();
}

uint64_t sub_22F34AF8C(uint64_t result, double a2, double a3)
{
  v3 = ceil(result * 5.0 * 0.5);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v4 = v3;
  if (v3 < 0)
  {
LABEL_123:
    __break(1u);
    return result;
  }

  v5 = result;
  v118 = v3;
  if (!v4)
  {
    v6 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  result = sub_22F741200();
  v6 = result;
  *(result + 16) = v4;
  v7 = (result + 32);
  if (v4 < 4)
  {
    v8 = 0;
    v9 = a2;
LABEL_12:
    v13 = v4 - v8;
    do
    {
      *v7++ = v9;
      --v13;
    }

    while (v13);
    goto LABEL_14;
  }

  v8 = v4 & 0x7FFFFFFFFFFFFFFCLL;
  v7 += v4 & 0x7FFFFFFFFFFFFFFCLL;
  v9 = a2;
  v10 = vdupq_lane_s64(*&a2, 0);
  v11 = (result + 48);
  v12 = v4 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v11[-1] = v10;
    *v11 = v10;
    v11 += 2;
    v12 -= 4;
  }

  while (v12);
  if (v8 != v4)
  {
    goto LABEL_12;
  }

LABEL_14:
  v112 = v5;
  v14 = *(v6 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = MEMORY[0x277D84F90];
    v17 = 90.0;
    v18 = -90.0;
    do
    {
      v19 = v17;
      v20 = v16;
      v21 = v15;
      while (1)
      {
        if (v21 >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_110;
        }

        v15 = v21 + 1;
        v22 = *(v6 + 32 + 8 * v21);
        v17 = (v19 + v18) * 0.5;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = v20;
        if (v22 < v17)
        {
          break;
        }

        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = sub_22F13E1A8(0, *(v20 + 2) + 1, 1, v20);
        }

        v26 = *(v24 + 2);
        v25 = *(v24 + 3);
        if (v26 >= v25 >> 1)
        {
          v24 = sub_22F13E1A8((v25 > 1), v26 + 1, 1, v24);
        }

        *(v24 + 2) = v26 + 1;
        v27 = &v24[16 * v26];
        *(v27 + 4) = 49;
        *(v27 + 5) = 0xE100000000000000;
        v28 = v24;

        v16 = v28;
        v18 = (v19 + v18) * 0.5;
        v20 = v28;
        ++v21;
        if (v14 == v15)
        {
          goto LABEL_32;
        }
      }

      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = sub_22F13E1A8(0, *(v20 + 2) + 1, 1, v20);
      }

      v30 = *(v24 + 2);
      v29 = *(v24 + 3);
      if (v30 >= v29 >> 1)
      {
        v24 = sub_22F13E1A8((v29 > 1), v30 + 1, 1, v24);
      }

      *(v24 + 2) = v30 + 1;
      v31 = &v24[16 * v30];
      *(v31 + 4) = 48;
      *(v31 + 5) = 0xE100000000000000;
      v32 = v24;

      v16 = v32;
    }

    while (v14 - 1 != v21);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

LABEL_32:
  v116 = v16;

  if (!v118)
  {
    v33 = MEMORY[0x277D84F90];
    goto LABEL_41;
  }

  result = sub_22F741200();
  v33 = result;
  *(result + 16) = v118;
  v34 = (result + 32);
  if (v118 < 4)
  {
    v35 = 0;
    v36 = a3;
LABEL_39:
    v40 = v118 - v35;
    do
    {
      *v34++ = v36;
      --v40;
    }

    while (v40);
    goto LABEL_41;
  }

  v35 = v118 & 0x7FFFFFFFFFFFFFFCLL;
  v34 += v118 & 0x7FFFFFFFFFFFFFFCLL;
  v36 = a3;
  v37 = vdupq_lane_s64(*&a3, 0);
  v38 = (result + 48);
  v39 = v118 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v38[-1] = v37;
    *v38 = v37;
    v38 += 2;
    v39 -= 4;
  }

  while (v39);
  if (v35 != v118)
  {
    goto LABEL_39;
  }

LABEL_41:
  v41 = *(v33 + 16);
  if (v41)
  {
    v42 = 0;
    v43 = MEMORY[0x277D84F90];
    v44 = 180.0;
    v45 = -180.0;
LABEL_43:
    v46 = v44;
    v47 = v43;
    v48 = v42;
    while (v48 < *(v33 + 16))
    {
      v42 = v48 + 1;
      v49 = *(v33 + 32 + 8 * v48);
      v44 = (v46 + v45) * 0.5;

      v50 = swift_isUniquelyReferenced_nonNull_native();
      v43 = v47;
      if (v49 < v44)
      {
        if ((v50 & 1) == 0)
        {
          v43 = sub_22F13E1A8(0, *(v47 + 2) + 1, 1, v47);
        }

        v55 = *(v43 + 2);
        v54 = *(v43 + 3);
        if (v55 >= v54 >> 1)
        {
          v43 = sub_22F13E1A8((v54 > 1), v55 + 1, 1, v43);
        }

        *(v43 + 2) = v55 + 1;
        v56 = &v43[16 * v55];
        *(v56 + 4) = 48;
        *(v56 + 5) = 0xE100000000000000;

        if (v41 - 1 != v48)
        {
          goto LABEL_43;
        }

        goto LABEL_59;
      }

      if ((v50 & 1) == 0)
      {
        v43 = sub_22F13E1A8(0, *(v47 + 2) + 1, 1, v47);
      }

      v52 = *(v43 + 2);
      v51 = *(v43 + 3);
      if (v52 >= v51 >> 1)
      {
        v43 = sub_22F13E1A8((v51 > 1), v52 + 1, 1, v43);
      }

      *(v43 + 2) = v52 + 1;
      v53 = &v43[16 * v52];
      *(v53 + 4) = 49;
      *(v53 + 5) = 0xE100000000000000;

      v45 = (v46 + v45) * 0.5;
      v47 = v43;
      ++v48;
      if (v41 == v42)
      {
        goto LABEL_59;
      }
    }

LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v43 = MEMORY[0x277D84F90];
LABEL_59:

  v114 = *(v43 + 2);
  if (v114)
  {
    v57 = 0;
    v58 = v116 + 40;
    v59 = v43 + 40;
    v60 = MEMORY[0x277D84F90];
    while (v57 < *(v43 + 2))
    {
      v61 = *(v59 - 1);
      v62 = *v59;
      v119 = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
      result = swift_initStackObject();
      *(result + 16) = xmmword_22F770DF0;
      *(result + 32) = v61;
      *(result + 40) = v62;
      if (v57 >= *(v116 + 2))
      {
        goto LABEL_112;
      }

      v63 = v43;
      v64 = v58;
      v65 = *(v58 - 1);
      v66 = *v58;
      *(result + 48) = v65;
      *(result + 56) = v66;
      v67 = *(v60 + 16);
      v68 = v67 + 2;
      if (__OFADD__(v67, 2))
      {
        goto LABEL_113;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v69 = *(v60 + 24) >> 1, v69 < v68))
      {
        if (v67 <= v68)
        {
          v70 = v67 + 2;
        }

        else
        {
          v70 = v67;
        }

        result = sub_22F13E1A8(result, v70, 1, v60);
        v60 = result;
        v69 = *(result + 24) >> 1;
      }

      v43 = v63;
      if (v69 - *(v60 + 16) < 2)
      {
        goto LABEL_114;
      }

      swift_arrayInitWithCopy();

      v71 = *(v60 + 16);
      v72 = __OFADD__(v71, 2);
      v73 = v71 + 2;
      if (v72)
      {
        goto LABEL_115;
      }

      ++v57;
      *(v60 + 16) = v73;
      v58 = v64 + 2;
      v59 = v119 + 2;
      if (v114 == v57)
      {
        goto LABEL_75;
      }
    }

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
    goto LABEL_116;
  }

  v60 = MEMORY[0x277D84F90];
LABEL_75:

  v117 = *(v60 + 16);
  if (v117)
  {
    v74 = 0;
    v75 = 0;
    v76 = (v60 + 40);
    v77 = MEMORY[0x277D84F90];
    while (v75 < *(v60 + 16))
    {
      v120 = *(v76 - 1);
      v122 = *v76;
      swift_bridgeObjectRetain_n();

      result = sub_22F741040();
      v79 = result;
      v81 = v80;
      if (v74 + 5 * (v75 / 5))
      {
        if (!*(v77 + 16))
        {
          goto LABEL_118;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        v82 = v77;
        if (result)
        {
          v83 = *(v77 + 16);
          if (!v83)
          {
            goto LABEL_119;
          }
        }

        else
        {
          result = sub_22F2F2C80(v77);
          v82 = result;
          v83 = *(result + 16);
          if (!v83)
          {
            goto LABEL_119;
          }
        }

        v84 = v83 - 1;
        v85 = &v82[16 * v84];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        *(v82 + 2) = v84;
        v121 = v87;
        v123 = v86;
        MEMORY[0x231900B10](v79, v81);

        v89 = *(v82 + 2);
        v88 = *(v82 + 3);
        if (v89 >= v88 >> 1)
        {
          v82 = sub_22F13E1A8((v88 > 1), v89 + 1, 1, v82);
        }

        *(v82 + 2) = v89 + 1;
        v78 = &v82[16 * v89];
        *(v78 + 4) = v121;
        *(v78 + 5) = v123;
        v77 = v82;
      }

      else
      {
        v90 = v77;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = sub_22F13E1A8(0, *(v77 + 16) + 1, 1, v77);
        }

        v92 = *(v90 + 2);
        v91 = *(v90 + 3);
        if (v92 >= v91 >> 1)
        {
          v90 = sub_22F13E1A8((v91 > 1), v92 + 1, 1, v90);
        }

        *(v90 + 2) = v92 + 1;
        v93 = &v90[16 * v92];
        *(v93 + 4) = v79;
        *(v93 + 5) = v81;
        v77 = v90;
      }

      ++v75;
      --v74;
      v76 += 2;
      if (v117 == v75)
      {
        goto LABEL_94;
      }
    }

LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v77 = MEMORY[0x277D84F90];
LABEL_94:

  v94 = *(v77 + 16);
  if (v94)
  {
    v95 = 0;
    v96 = v77 + 40;
    v97 = MEMORY[0x277D84F90];
LABEL_96:
    v98 = (v96 + 16 * v95);
    v99 = v95;
    while (v99 < *(v77 + 16))
    {
      v100 = *(v98 - 1);
      v101 = *v98;

      v102 = sub_22F34C238();
      if (*(v102 + 16))
      {
        v103 = sub_22F1229E8(v100, v101);
        if (v104)
        {
          v105 = (*(v102 + 56) + 16 * v103);
          v107 = *v105;
          v106 = v105[1];

          result = swift_isUniquelyReferenced_nonNull_native();
          v108 = v77;
          if ((result & 1) == 0)
          {
            result = sub_22F13E2DC(0, *(v97 + 16) + 1, 1, v97);
            v97 = result;
          }

          v110 = *(v97 + 16);
          v109 = *(v97 + 24);
          if (v110 >= v109 >> 1)
          {
            result = sub_22F13E2DC((v109 > 1), v110 + 1, 1, v97);
            v97 = result;
          }

          v95 = v99 + 1;
          *(v97 + 16) = v110 + 1;
          v111 = v97 + 16 * v110;
          *(v111 + 32) = v107;
          *(v111 + 40) = v106;
          v77 = v108;
          if (v94 - 1 != v99)
          {
            goto LABEL_96;
          }

          goto LABEL_108;
        }
      }

      ++v99;

      v98 += 2;
      if (v94 == v99)
      {
        goto LABEL_108;
      }
    }

    goto LABEL_117;
  }

  v97 = MEMORY[0x277D84F90];
LABEL_108:

  sub_22F39A078(v112, v97);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3BC8, &qword_22F787DC0);
  sub_22F16BC6C(&unk_2810A8CF0, &qword_27DAB3BC8, &qword_22F787DC0);
  return sub_22F741030();
}

uint64_t sub_22F34B9D8(uint64_t a1, unint64_t a2)
{
  result = sub_22F740F10();
  if (result)
  {
    v6 = result;
    v7 = sub_22F34C770(result, 0);

    v8 = sub_22F34C6A8(&v39, v7 + 4, v6, a1, a2);

    if (v8 == v6)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = MEMORY[0x277D84F90];
LABEL_5:
  v9 = 0xE000000000000000;
  v39 = 0;
  v40 = 0xE000000000000000;
  v10 = v7[2];
  if (v10)
  {
    v43 = v2;
    v11 = 0;
    v12 = v7 + 5;
    while (v11 < v7[2])
    {
      v14 = *(v12 - 1);
      v13 = *v12;

      v15 = sub_22F34BE38();
      if (*(v15 + 16))
      {
        v16 = sub_22F122C24(v14, v13);
        if (v17)
        {
          v18 = (*(v15 + 56) + 16 * v16);
          v19 = *v18;
          v20 = v18[1];

          MEMORY[0x231900B10](v19, v20);
        }
      }

      ++v11;

      v12 += 2;
      if (v10 == v11)
      {
        v21 = v39;
        v9 = v40;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

  v21 = 0;
LABEL_14:

  if (0xCCCCCCCCCCCCCCCDLL * sub_22F740F10() + 0x1999999999999999 > 0x3333333333333332)
  {

    sub_22F34C7F4();
    swift_allocError();
    return swift_willThrow();
  }

  v22 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v22 = v21 & 0xFFFFFFFFFFFFLL;
  }

  v39 = v21;
  v40 = v9;
  v41 = 0;
  v42 = v22;

  result = sub_22F740F80();
  if (v23)
  {
    v24 = v23;
    v25 = 0;
    while (!__OFADD__(v25, 1))
    {
      MEMORY[0x231900B00](result, v24);

      result = sub_22F740F80();
      v24 = v26;
      ++v25;
      if (!v26)
      {
        goto LABEL_22;
      }
    }

LABEL_40:
    __break(1u);
    return result;
  }

LABEL_22:

  v39 = 0;
  v40 = 0xE000000000000000;
  v41 = 0;
  v42 = 0;

  v27 = sub_22F740F80();
  if (v28)
  {
    v29 = -90.0;
    v30 = 90.0;
    do
    {
      v32 = (v29 + v30) * 0.5;
      if (v27 == 49 && v28 == 0xE100000000000000)
      {
      }

      else
      {
        v31 = sub_22F742040();

        if ((v31 & 1) == 0)
        {
          v30 = (v29 + v30) * 0.5;
          v32 = v29;
        }
      }

      v27 = sub_22F740F80();
      v29 = v32;
    }

    while (v28);
  }

  v39 = 0;
  v40 = 0xE000000000000000;
  v41 = 0;
  v42 = 0;

  v33 = sub_22F740F80();
  if (v34)
  {
    v35 = -180.0;
    v36 = 180.0;
    do
    {
      v38 = (v35 + v36) * 0.5;
      if (v33 == 49 && v34 == 0xE100000000000000)
      {
      }

      else
      {
        v37 = sub_22F742040();

        if ((v37 & 1) == 0)
        {
          v36 = (v35 + v36) * 0.5;
          v38 = v35;
        }
      }

      v33 = sub_22F740F80();
      v35 = v38;
    }

    while (v34);
  }
}

uint64_t sub_22F34BE38()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = sub_22F34BE94();
    v2 = *(v0 + 16);
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_22F34BE94()
{
  v0 = sub_22F740F80();
  if (!v1)
  {
    v5 = MEMORY[0x277D84F98];
LABEL_29:

    return v5;
  }

  v2 = v0;
  v3 = v1;
  v4 = 0;
  v5 = MEMORY[0x277D84F98];
  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    sub_22F34C924();
    v11 = sub_22F741010();
    v13 = v12;
    v14 = sub_22F740F10();
    if ((5 - v14 % 5) >= 5)
    {
      v15 = -(v14 % 5);
    }

    else
    {
      v15 = 5 - v14 % 5;
    }

    v40 = v10;
    if (v15)
    {
      v16 = sub_22F741200();
      *(v16 + 16) = v15;
      v17 = (v16 + 32);
      if (v15 < 4)
      {
        v18 = 0;
LABEL_16:
        v21 = v15 - v18;
        do
        {
          *v17 = 48;
          v17[1] = 0xE100000000000000;
          v17 += 2;
          --v21;
        }

        while (v21);
        goto LABEL_18;
      }

      v18 = v15 & 0xFFFFFFFFFFFFFFFCLL;
      v17 += 2 * (v15 & 0xFFFFFFFFFFFFFFFCLL);
      v19 = (v16 + 64);
      v20 = v15 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        *(v19 - 2) = xmmword_22F787DB0;
        *(v19 - 1) = xmmword_22F787DB0;
        *v19 = xmmword_22F787DB0;
        v19[1] = xmmword_22F787DB0;
        v19 += 4;
        v20 -= 4;
      }

      while (v20);
      if (v15 != v18)
      {
        goto LABEL_16;
      }
    }

LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    sub_22F16BC6C(&qword_2810A92E0, &qword_27DAB0E90, &qword_22F7714A0);
    v22 = sub_22F740DA0();
    v24 = v23;

    MEMORY[0x231900B10](v11, v13);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = sub_22F122C24(v2, v3);
    v28 = v5[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_31;
    }

    v32 = v27;
    if (v5[3] < v31)
    {
      sub_22F12CDFC(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_22F122C24(v2, v3);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_33;
      }

LABEL_23:
      if (v32)
      {
        goto LABEL_3;
      }

      goto LABEL_24;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_23;
    }

    v38 = v26;
    sub_22F138464();
    v26 = v38;
    if (v32)
    {
LABEL_3:
      v6 = v26;

      v7 = (v5[7] + 16 * v6);
      v8 = v7[1];
      *v7 = v22;
      v7[1] = v24;

      goto LABEL_4;
    }

LABEL_24:
    v5[(v26 >> 6) + 8] |= 1 << v26;
    v34 = (v5[6] + 16 * v26);
    *v34 = v2;
    v34[1] = v3;
    v35 = (v5[7] + 16 * v26);
    *v35 = v22;
    v35[1] = v24;

    v36 = v5[2];
    v30 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v30)
    {
      goto LABEL_32;
    }

    v5[2] = v37;
LABEL_4:
    v2 = sub_22F740F80();
    v3 = v9;
    v4 = v40;
    if (!v9)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

uint64_t sub_22F34C238()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = sub_22F34C294();
    v2 = *(v0 + 24);
    *(v0 + 24) = v1;
  }

  return v1;
}

uint64_t sub_22F34C294()
{
  v0 = sub_22F740F80();
  if (!v1)
  {
    v5 = MEMORY[0x277D84F98];
LABEL_29:

    return v5;
  }

  v2 = v0;
  v3 = v1;
  v4 = 0;
  v5 = MEMORY[0x277D84F98];
  while (!__OFADD__(v4, 1))
  {
    v41 = v4 + 1;
    sub_22F34C924();
    v10 = sub_22F741010();
    v12 = v11;
    v13 = sub_22F740F10();
    if ((5 - v13 % 5) >= 5)
    {
      v14 = -(v13 % 5);
    }

    else
    {
      v14 = 5 - v13 % 5;
    }

    v42 = v2;
    if (v14)
    {
      v15 = sub_22F741200();
      *(v15 + 16) = v14;
      v16 = (v15 + 32);
      if (v14 < 4)
      {
        v17 = 0;
LABEL_16:
        v20 = v14 - v17;
        do
        {
          *v16 = 48;
          v16[1] = 0xE100000000000000;
          v16 += 2;
          --v20;
        }

        while (v20);
        goto LABEL_18;
      }

      v17 = v14 & 0xFFFFFFFFFFFFFFFCLL;
      v16 += 2 * (v14 & 0xFFFFFFFFFFFFFFFCLL);
      v18 = (v15 + 64);
      v19 = v14 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        *(v18 - 2) = xmmword_22F787DB0;
        *(v18 - 1) = xmmword_22F787DB0;
        *v18 = xmmword_22F787DB0;
        v18[1] = xmmword_22F787DB0;
        v18 += 4;
        v19 -= 4;
      }

      while (v19);
      if (v14 != v17)
      {
        goto LABEL_16;
      }
    }

LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    sub_22F16BC6C(&qword_2810A92E0, &qword_27DAB0E90, &qword_22F7714A0);
    v21 = sub_22F740DA0();
    v23 = v22;

    MEMORY[0x231900B10](v10, v12);

    v24 = v23;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = sub_22F1229E8(v21, v24);
    v28 = v5[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_31;
    }

    v32 = v27;
    if (v5[3] < v31)
    {
      sub_22F12CB3C(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_22F1229E8(v21, v24);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_33;
      }

LABEL_23:
      v34 = v42;
      if (v32)
      {
        goto LABEL_3;
      }

      goto LABEL_24;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_23;
    }

    v39 = v26;
    sub_22F1382EC();
    v26 = v39;
    v34 = v42;
    if (v32)
    {
LABEL_3:
      v6 = v26;

      v7 = (v5[7] + 16 * v6);
      v8 = v7[1];
      *v7 = v34;
      v7[1] = v3;

      goto LABEL_4;
    }

LABEL_24:
    v5[(v26 >> 6) + 8] |= 1 << v26;
    v35 = (v5[6] + 16 * v26);
    *v35 = v21;
    v35[1] = v24;
    v36 = (v5[7] + 16 * v26);
    *v36 = v34;
    v36[1] = v3;

    v37 = v5[2];
    v30 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v30)
    {
      goto LABEL_32;
    }

    v5[2] = v38;
LABEL_4:
    v2 = sub_22F740F80();
    v3 = v9;
    v4 = v41;
    if (!v9)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

uint64_t Geohash.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t Geohash.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_22F34C6A8(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v14 = a4;
  v15 = a5;
  *&v16 = 0;
  *(&v16 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_16:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = sub_22F740F80();
      if (!v12)
      {
        a4 = v14;
        a5 = v15;
        v8 = v10 - 1;
        goto LABEL_15;
      }

      *v9 = v11;
      v9[1] = v12;
      if (v8 == v10)
      {
        break;
      }

      v9 += 2;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a4 = v14;
    a5 = v15;
LABEL_15:
    v7 = v16;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_22F34C770(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0D80, &qword_22F771120);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_22F34C7F4()
{
  result = qword_27DAB3BD0;
  if (!qword_27DAB3BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3BD0);
  }

  return result;
}

unint64_t sub_22F34C84C()
{
  result = qword_27DAB3BD8;
  if (!qword_27DAB3BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3BD8);
  }

  return result;
}

unint64_t sub_22F34C924()
{
  result = qword_2810A93B8;
  if (!qword_2810A93B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A93B8);
  }

  return result;
}

uint64_t sub_22F34C978(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v42[1] = a4;
  v42[0] = type metadata accessor for Song();
  v46 = *(v42[0] - 8);
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v42[0]);
  v48 = (v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v45 = v42 - v10;
  if (qword_2810A9BE0 != -1)
  {
LABEL_31:
    swift_once();
  }

  v11 = qword_2810B4E98;
  *&v12 = CACurrentMediaTime();
  sub_22F1B560C("Topic Ranker", 12, 2u, v12, 0, v11, v49);
  v13 = *(a3 + OBJC_IVAR___PGMusicCuratorContext_configuration + 332);
  v14 = *(a2 + OBJC_IVAR___PGMusicCurationFeatures_maestroSongScoresBySongID);
  v15 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 56);
  v19 = (v16 + 63) >> 6;

  v20 = 0;
  a2 = MEMORY[0x277D84F98];
  v43 = a1 + 56;
  v44 = a1;
  while (v18)
  {
    v21 = v20;
LABEL_12:
    v22 = *(a1 + 48);
    a1 = v45;
    v47 = *(v46 + 72);
    sub_22F15CAA0(v22 + v47 * (__clz(__rbit64(v18)) | (v21 << 6)), v45);
    sub_22F15CAA0(a1, v48);
    v24 = *a1;
    v23 = *(a1 + 8);

    sub_22F15CBD8(a1);
    if (*(v14 + 16))
    {
      v25 = sub_22F1229E8(v24, v23);
      a1 = v26;

      v27 = v13;
      if (a1)
      {
        v27 = *(*(v14 + 56) + 4 * v25);
      }
    }

    else
    {

      v27 = v13;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = a2;
    a3 = a2;
    v30 = sub_22F122A14(v48);
    v31 = a2[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v34 = v29;
    if (a2[3] >= v33)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        a3 = &v50;
        sub_22F134678();
      }
    }

    else
    {
      sub_22F125F5C(v33, isUniquelyReferenced_nonNull_native);
      a3 = v50;
      v35 = sub_22F122A14(v48);
      if ((v34 & 1) != (v36 & 1))
      {
        result = sub_22F7420C0();
        __break(1u);
        return result;
      }

      v30 = v35;
    }

    v18 &= v18 - 1;
    a2 = v50;
    if (v34)
    {
      *(v50[7] + 4 * v30) = v27;
      sub_22F15CBD8(v48);
    }

    else
    {
      v50[(v30 >> 6) + 8] |= 1 << v30;
      a1 = v48;
      sub_22F15CAA0(v48, a2[6] + v30 * v47);
      *(a2[7] + 4 * v30) = v27;
      sub_22F15CBD8(a1);
      v37 = a2[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_30;
      }

      a2[2] = v39;
    }

    v20 = v21;
    v15 = v43;
    a1 = v44;
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v21 >= v19)
    {
      break;
    }

    v18 = *(v15 + 8 * v21);
    ++v20;
    if (v18)
    {
      goto LABEL_12;
    }
  }

  sub_22F1B2BBC(0);
  v40 = v42[2];
  sub_22F7416A0();

  if (v40)
  {
  }

  return a2;
}

unint64_t sub_22F34CE98(unint64_t a1, id *a2, unint64_t a3, uint64_t a4)
{
  v6 = v4;
  if (qword_2810A9BD0 != -1)
  {
LABEL_35:
    swift_once();
  }

  sub_22F1B560C("MusicCurator - extractMusicCurationFeaturesForAssets", 52, 2u, 0, 1, qword_2810B4E90, v55);
  if (a1 >> 62)
  {
    if (!sub_22F741A00())
    {
      goto LABEL_37;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_37;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x2319016F0](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_40;
    }

    v11 = *(a1 + 32);
  }

  v12 = v11;
  v5 = [v11 photoLibrary];

  if (!v5)
  {
LABEL_37:
    sub_22F34D5BC();
    swift_allocError();
    *v30 = 0;
    swift_willThrow();
LABEL_58:
    sub_22F1B2BBC(0);

    return a1;
  }

  v53 = a2;
  v13 = [v5 librarySpecificFetchOptions];
  [v13 setWantsIncrementalChangeDetails_];
  v14 = objc_opt_self();
  sub_22F120634(0, &qword_2810A8EE0, 0x277CD97A8);
  a2 = sub_22F741160();
  v15 = [v14 fetchAssetCollectionsContainingAssets:a2 withType:3 options:v13];

  v16 = [v15 fetchedObjects];
  if (!v16)
  {
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v25 = sub_22F740B90();
    __swift_project_value_buffer(v25, qword_2810B4D90);
    v26 = sub_22F740B70();
    v27 = sub_22F7415E0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_22F0FC000, v26, v27, "[MemoriesMusic] [FeatureExtraction] Extracted moments backing asset collection: NO", v28, 2u);
      MEMORY[0x2319033A0](v28, -1, -1);
    }

    sub_22F34D5BC();
    swift_allocError();
    *v29 = a1;
    swift_willThrow();

    goto LABEL_58;
  }

  v48 = a3;
  v49 = v6;
  v50 = v13;
  sub_22F120634(0, &unk_2810A90C0, 0x277CD97B8);
  a3 = sub_22F741180();

  a4 = a3 & 0xFFFFFFFFFFFFFF8;
  if (!(a3 >> 62))
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v51 = v5;
    v52 = a1;
    if (v6)
    {
      goto LABEL_11;
    }

LABEL_41:
    v54 = MEMORY[0x277D84F90];
    goto LABEL_42;
  }

LABEL_40:
  v6 = sub_22F741A00();
  v51 = v5;
  v52 = a1;
  if (!v6)
  {
    goto LABEL_41;
  }

LABEL_11:
  a1 = 0;
  v54 = MEMORY[0x277D84F90];
  do
  {
    v5 = a1;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x2319016F0](v5, a3);
        a1 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v5 >= *(a4 + 16))
        {
          goto LABEL_34;
        }

        v17 = *(a3 + 8 * v5 + 32);
        a1 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }
      }

      a2 = v17;
      v18 = [a2 uuid];
      if (v18)
      {
        break;
      }

      ++v5;
      if (a1 == v6)
      {
        goto LABEL_42;
      }
    }

    v19 = v18;
    v20 = sub_22F740E20();
    v47 = v21;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v54 = sub_22F13E1A8(0, *(v54 + 2) + 1, 1, v54);
    }

    v23 = *(v54 + 2);
    v22 = *(v54 + 3);
    a2 = (v23 + 1);
    if (v23 >= v22 >> 1)
    {
      v54 = sub_22F13E1A8((v22 > 1), v23 + 1, 1, v54);
    }

    *(v54 + 2) = a2;
    v24 = &v54[16 * v23];
    *(v24 + 4) = v20;
    *(v24 + 5) = v47;
  }

  while (a1 != v6);
LABEL_42:
  a1 = v53;
  if (v53)
  {
    v31 = objc_opt_self();
    v32 = v53;
    a1 = v54;
    v33 = sub_22F741160();

    v34 = [v31 momentNodesForArrayOfUUIDs:v33 inGraph:v32];
  }

  else
  {

    v34 = 0;
  }

  if (qword_2810A9460 != -1)
  {
    swift_once();
  }

  v35 = sub_22F740B90();
  __swift_project_value_buffer(v35, qword_2810B4D90);
  v36 = v34;
  v37 = sub_22F740B70();
  v38 = sub_22F7415C0();

  if (os_log_type_enabled(v37, v38))
  {
    a1 = v36;
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v56 = v40;
    *v39 = 136315138;
    if (v34)
    {
      v41 = 5457241;
    }

    else
    {
      v41 = 20302;
    }

    if (v34)
    {
      v42 = 0xE300000000000000;
    }

    else
    {
      v42 = 0xE200000000000000;
    }

    v43 = sub_22F145F20(v41, v42, &v56);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_22F0FC000, v37, v38, "[MemoriesMusic] [FeatureExtraction] Extracted moment nodes for moments: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x2319033A0](v40, -1, -1);
    v44 = v39;
    v36 = a1;
    MEMORY[0x2319033A0](v44, -1, -1);
  }

  v45 = sub_22F3EC34C(0, 0, 0, v34, v53, a3, v52, v48);
  if (v49)
  {

    goto LABEL_58;
  }

  a1 = v45;

  sub_22F7416A0();

  sub_22F1B2BBC(0);

  return a1;
}

unint64_t sub_22F34D5BC()
{
  result = qword_27DAB3BE0;
  if (!qword_27DAB3BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3BE0);
  }

  return result;
}

uint64_t sub_22F34D610(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22F34D660(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_22F34D6B4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

id MusicForArtistElector.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicForArtistElector.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MusicForArtistElector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F34D844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_2810A9B20 != -1)
  {
    swift_once();
  }

  sub_22F1B560C("Music For Artist Elector", 24, 2u, 0, 1, qword_2810B4E20, v19);
  if (*(a1 + OBJC_IVAR___PGMusicCurationFeatures_performerIdentifiers))
  {
    v8 = *(a1 + OBJC_IVAR___PGMusicCurationFeatures_performerIdentifiers);
  }

  else
  {
    v8 = MEMORY[0x277D84FA0];
  }

  v9 = *(v8 + 16);
  if (!v9)
  {
    v15 = *(a1 + OBJC_IVAR___PGMusicCurationFeatures_performerIdentifiers);

    v10 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v21 = v3;
  v10 = sub_22F10B348(v9, 0);
  v11 = sub_22F11A438(v17, v10 + 4, v9, v8);

  result = sub_22F1534EC();
  if (v11 == v9)
  {
    v4 = v21;
    if (v10[2])
    {
LABEL_9:
      v13 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_cache);
      v17[0] = 0;
      v17[1] = 0;
      LOWORD(v18) = 1;
      v14 = MusicCache.read(songSourceIdentifiers:readOptions:progressReporter:)(v10, v17);
      if (v4)
      {

        a3 = v20;

LABEL_16:

        return a3;
      }

      v16 = v14;

      sub_22F7416A0();
      sub_22F1B2BBC(0);
      a3 = sub_22F151734(v16);

      goto LABEL_17;
    }

LABEL_12:

    sub_22F7416A0();
    if (v4)
    {

      goto LABEL_16;
    }

    sub_22F1B2BBC(1);
    a3 = MEMORY[0x277D84FA0];
LABEL_17:

    return a3;
  }

  __break(1u);
  return result;
}

uint64_t MomentBasedEventLabelWriter.performWrite(clustersWithScoredLabels:progressReporter:)(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  if (qword_27DAAFD90 != -1)
  {
LABEL_48:
    swift_once();
  }

  v6 = qword_27DAD0E80;
  *&v7 = CACurrentMediaTime();
  sub_22F1B560C("WriteLabels", 11, 2u, v7, 0, v6, v66);
  v8 = v4[4];
  v9 = v4[5];
  __swift_project_boxed_opaque_existential_1(v4 + 1, v8);
  v10 = v9[2](v8, v9);
  if (!*(v10 + 16))
  {

LABEL_43:
    v52 = 0;
    goto LABEL_46;
  }

  v65[9] = MEMORY[0x277D84FA0];
  v59 = *(a1 + 16);
  v62 = v4;
  if (v59)
  {
    v11 = v3;
    v12 = (a1 + 40);
    v13 = *(a1 + 16);
    do
    {
      v14 = *(v12 - 1);
      v15 = *v12;

      sub_22F10BBDC(v65, v14, v15);

      v12 += 3;
      --v13;
    }

    while (v13);
    v3 = v11;
  }

  v16 = objc_opt_self();
  v17 = sub_22F741410();

  v57 = *v62;
  v18 = [*v62 graph];
  v19 = [v16 momentNodesForUUIDs:v17 inGraph:v18];

  v54 = v19;
  v20 = [v19 momentNodeByMomentUUID];
  sub_22F2E57E8();
  v21 = sub_22F740CA0();

  v22 = v59;
  if (!v59)
  {
    v4 = v3;
LABEL_40:

    sub_22F7416A0();
    if (v4)
    {
      v50 = 0;
      v51 = v54;
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  v23 = 0;
  v58 = a1 + 32;
  v24 = v10 + 56;
  v4 = v3;
  v55 = v21;
  while (1)
  {
    v25 = v23++;
    if (!*(v21 + 16))
    {
      goto LABEL_10;
    }

    v61 = v23;
    v26 = (v58 + 24 * v25);
    v27 = v26[1];
    v28 = v26[2];
    v29 = *v26;
    swift_bridgeObjectRetain_n();

    v30 = sub_22F1229E8(v29, v27);
    a1 = v31;

    if (a1)
    {
      break;
    }

    v22 = v59;
    v23 = v61;
LABEL_10:
    if (v23 == v22)
    {
      goto LABEL_40;
    }
  }

  v60 = *(*(v21 + 56) + 8 * v30);

  v32 = v28;
  v64 = *(v28 + 16);
  if (v64)
  {
    v56 = v4;
    v3 = 0;
    v63 = v32 + 4;
    while (1)
    {
      if (v3 >= v32[2])
      {
        __break(1u);
        goto LABEL_48;
      }

      v33 = &v63[2 * v3];
      v34 = v33[1];
      ++v3;
      *v33;
      v35 = sub_22F740E20();
      v37 = v36;
      if (*(v10 + 16))
      {
        break;
      }

LABEL_16:
      if (v3 == v64)
      {

        v4 = v56;
        goto LABEL_36;
      }
    }

    v38 = v35;
    v4 = v32;
    v39 = *(v10 + 40);
    sub_22F742170();
    sub_22F740D60();
    v40 = sub_22F7421D0();
    v41 = -1 << *(v10 + 32);
    v42 = v40 & ~v41;
    if ((*(v24 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
    {
      a1 = ~v41;
      while (1)
      {
        v43 = (*(v10 + 48) + 16 * v42);
        v44 = *v43 == v38 && v43[1] == v37;
        if (v44 || (sub_22F742040() & 1) != 0)
        {
          break;
        }

        v42 = (v42 + 1) & a1;
        if (((*(v24 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      a1 = v62[4];
      v45 = v62[5];
      __swift_project_boxed_opaque_existential_1(v62 + 1, a1);
      v46 = v45[3](v38, v37, a1, v45);
      if (v46)
      {
        if (*&v46[OBJC_IVAR___PGMeaningThresholds_highRecallThreshold] <= v34)
        {
          v47 = *&v46[OBJC_IVAR___PGMeaningThresholds_highPrecisionThreshold] <= v34;
          v48 = v46;
          a1 = v60;
          v49 = sub_22F740DF0();

          [v57 addMeaningToMeaningfulEventNode:a1 meaningLabel:v49 meaningConfidence:v47 meaningIsHighPrecision:0 isV1Algorithm:v34];

          goto LABEL_33;
        }
      }
    }

LABEL_27:

LABEL_33:
    v32 = v4;
    goto LABEL_16;
  }

LABEL_36:
  v23 = v61;
  v22 = v59;
  sub_22F741680();
  if (!v4)
  {

    v21 = v55;
    goto LABEL_10;
  }

  v50 = 1;
  v51 = v60;
LABEL_45:

  v52 = v50;
LABEL_46:
  sub_22F1B2BBC(v52);
}

PGGraphMeaningNodeCollection __swiftcall MomentBasedEventLabelWriter.meaningNodes(for:confidenceThreshold:)(Swift::OpaquePointer a1, Swift::Double confidenceThreshold)
{
  v4 = objc_opt_self();
  v5 = [*v2 graph];
  v6 = [v4 meaningEdgesWithConfidenceThreshold:v5 inGraph:confidenceThreshold];

  v8 = sub_22F1515F8(v7);

  v9 = [v6 meaningNodes];
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_22F34E7D8;
  *(v11 + 24) = v10;
  v17[4] = sub_22F34E7F8;
  v17[5] = v11;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_22F34E4FC;
  v17[3] = &block_descriptor_36;
  v12 = _Block_copy(v17);

  v13 = [v9 filteredCollectionUsingBlock_];

  _Block_release(v12);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v14 = v13;
  }

  result.super.super.super._elementIdentifiers = v16;
  result.super.super.super._graphReference = v15;
  result.super.super.super.super.isa = v14;
  return result;
}

uint64_t sub_22F34E4FC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  LOBYTE(v2) = v3();

  return v2 & 1;
}

PGGraphMeaningNodeCollection __swiftcall MomentBasedEventLabelWriter.alternativeMeaningNodes(for:confidenceThreshold:)(Swift::OpaquePointer a1, Swift::Double confidenceThreshold)
{
  v4 = objc_opt_self();
  v5 = [*v2 graph];
  v6 = [v4 meaningEdgesWithConfidenceThreshold:v5 inGraph:confidenceThreshold];

  v8 = sub_22F1515F8(v7);

  v9 = [v6 meaningNodes];
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_22F34E858;
  *(v11 + 24) = v10;
  v17[4] = sub_22F34E854;
  v17[5] = v11;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_22F34E4FC;
  v17[3] = &block_descriptor_13_2;
  v12 = _Block_copy(v17);

  v13 = [v9 filteredCollectionUsingBlock_];

  _Block_release(v12);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v14 = v13;
  }

  result.super.super.super._elementIdentifiers = v16;
  result.super.super.super._graphReference = v15;
  result.super.super.super.super.isa = v14;
  return result;
}

BOOL sub_22F34E73C(void *a1, uint64_t a2)
{
  v3 = [a1 labels];
  v4 = sub_22F741420();

  LOBYTE(a2) = sub_22F3F2848(a2, v4);

  return (a2 & 1) == 0;
}

uint64_t sub_22F34E7F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id FeatureExtractorAssetAverage.__allocating_init(with:skipAssetsWithErrors:)(uint64_t a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___PGFeatureExtractorAssetAverage_featureExtractor] = a1;
  v5[OBJC_IVAR___PGFeatureExtractorAssetAverage_skipAssetsWithErrors] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id FeatureExtractorAssetAverage.init(with:skipAssetsWithErrors:)(uint64_t a1, char a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___PGFeatureExtractorAssetAverage_featureExtractor] = a1;
  v2[OBJC_IVAR___PGFeatureExtractorAssetAverage_skipAssetsWithErrors] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

char *FeatureExtractorAssetAverage.floatVector(withEntity:)(void *a1)
{
  v60[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + OBJC_IVAR___PGFeatureExtractorAssetAverage_featureExtractor);
  v4 = [v3 featureLength];
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_56;
  }

  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = v4;
    v7 = sub_22F741200();
    *(v7 + 16) = v6;
    v58 = v7;
    bzero((v7 + 32), 4 * v6);
  }

  else
  {
    v58 = MEMORY[0x277D84F90];
  }

  v8 = [a1 count];
  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_57:
    __break(1u);
  }

  v9 = v8;
  if (v8)
  {
    v10 = 0;
    v11 = 0;
    v53 = a1;
    v54 = OBJC_IVAR___PGFeatureExtractorAssetAverage_skipAssetsWithErrors;
    v12 = &selRef_numberOfCoworkerCalendarSignalRegistrations;
    v13 = &selRef_appleMusicID;
    v51 = v8;
    v52 = v3;
    do
    {
      v14 = [a1 v12[94]];
      v60[0] = 0;
      v59 = [v3 v13[45]];

      if (v60[0])
      {
        if (*(v55 + v54) != 1)
        {
          v46 = v60[0];

          swift_willThrow();

          goto LABEL_48;
        }
      }

      else
      {
        v15 = __OFADD__(v10, 1);
        v16 = v10 + 1;
        if (v15)
        {
          goto LABEL_55;
        }

        v56 = v11;
        v57 = v16;
        v17 = [v59 wrapper];
        v18 = [v17 array];

        v19 = sub_22F741180();
        if (*(v19 + 16) >= *(v58 + 2))
        {
          v20 = *(v58 + 2);
        }

        else
        {
          v20 = *(v19 + 16);
        }

        v60[0] = v5;
        sub_22F1464F4(0, v20, 0);
        v21 = v60[0];
        if (v20)
        {
          v22 = 0;
          v23 = *(v58 + 2);
          v24 = v58;
          while (v23 != v22)
          {
            if (v22 >= *(v24 + 2))
            {
              goto LABEL_50;
            }

            v25 = *(v19 + 16);
            if (v22 == v25)
            {
              goto LABEL_51;
            }

            if (v22 >= v25)
            {
              goto LABEL_52;
            }

            v26 = v58[v22 + 8];
            v27 = *(v19 + 32 + 4 * v22);
            v60[0] = v21;
            v29 = v21[2];
            v28 = v21[3];
            if (v29 >= v28 >> 1)
            {
              sub_22F1464F4((v28 > 1), v29 + 1, 1);
              v24 = v58;
              v21 = v60[0];
            }

            ++v22;
            v21[2] = v29 + 1;
            *(v21 + v29 + 8) = v26 + v27;
            if (v20 == v22)
            {
              goto LABEL_28;
            }
          }

          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        v24 = v58;
LABEL_28:
        v30 = *(v24 + 2);
        if (v20 != v30)
        {
          v31 = v24 + 8;
          while (v20 < v30)
          {
            v32 = *(v19 + 16);
            if (v20 == v32)
            {
              goto LABEL_8;
            }

            if (v20 >= v32)
            {
              goto LABEL_54;
            }

            v33 = v31[v20];
            v34 = *(v19 + 32 + 4 * v20);
            v60[0] = v21;
            v36 = v21[2];
            v35 = v21[3];
            if (v36 >= v35 >> 1)
            {
              sub_22F1464F4((v35 > 1), v36 + 1, 1);
              v24 = v58;
              v21 = v60[0];
            }

            ++v20;
            v21[2] = v36 + 1;
            *(v21 + v36 + 8) = v33 + v34;
            v30 = *(v24 + 2);
            if (v20 == v30)
            {
              goto LABEL_8;
            }
          }

LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

LABEL_8:

        v58 = v21;
        v3 = v52;
        a1 = v53;
        v5 = MEMORY[0x277D84F90];
        v11 = v56;
        v10 = v57;
        v9 = v51;
        v12 = &selRef_numberOfCoworkerCalendarSignalRegistrations;
        v13 = &selRef_appleMusicID;
      }

      ++v11;
    }

    while (v11 != v9);
    if (!v10)
    {
      goto LABEL_44;
    }

    v37 = *(v58 + 2);
    if (v37)
    {
      v60[0] = v5;
      sub_22F1464F4(0, v37, 0);
      v38 = v58;
      v39 = v10;
      v40 = v60[0];
      v41 = *(v60[0] + 2);
      v42 = 8;
      do
      {
        v43 = v38[v42];
        v60[0] = v40;
        v44 = v40[3];
        if (v41 >= v44 >> 1)
        {
          sub_22F1464F4((v44 > 1), v41 + 1, 1);
          v38 = v58;
          v40 = v60[0];
        }

        v40[2] = v41 + 1;
        *(v40 + v41 + 8) = v43 / v39;
        ++v42;
        ++v41;
        --v37;
      }

      while (v37);
    }

    else
    {

      v40 = MEMORY[0x277D84F90];
    }

    v47 = objc_allocWithZone(sub_22F73FBE0());
    v48 = MEMORY[0x2318FF780](v40);
    v9 = [objc_allocWithZone(MEMORY[0x277D22C40]) initWithWrapper_];
  }

  else
  {
LABEL_44:

    sub_22F34F3B0();
    swift_allocError();
    *v45 = 0;
    swift_willThrow();
  }

LABEL_48:
  v49 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t FeatureExtractorAssetAverage.featureNames.getter()
{
  v1 = [*(v0 + OBJC_IVAR___PGFeatureExtractorAssetAverage_featureExtractor) featureNames];
  v2 = sub_22F741180();

  v3 = *(v2 + 16);
  if (v3)
  {
    v15 = MEMORY[0x277D84F90];
    sub_22F146454(0, v3, 0);
    v4 = v15;
    v5 = (v2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v13 = sub_22F740E20();
      v14 = v8;

      MEMORY[0x231900B10](95, 0xE100000000000000);
      MEMORY[0x231900B10](v6, v7);

      v10 = *(v15 + 16);
      v9 = *(v15 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_22F146454((v9 > 1), v10 + 1, 1);
      }

      *(v15 + 16) = v10 + 1;
      v11 = v15 + 16 * v10;
      *(v11 + 32) = v13;
      *(v11 + 40) = v14;
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t FeatureExtractorAssetAverage.name.getter()
{
  v1 = [*(v0 + OBJC_IVAR___PGFeatureExtractorAssetAverage_featureExtractor) name];
  v2 = sub_22F740E20();
  v4 = v3;

  v6 = sub_22F740E20();
  MEMORY[0x231900B10](95, 0xE100000000000000);
  MEMORY[0x231900B10](v2, v4);

  return v6;
}

id FeatureExtractorAssetAverage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeatureExtractorAssetAverage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22F34F3B0()
{
  result = qword_27DAB3BF8;
  if (!qword_27DAB3BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3BF8);
  }

  return result;
}

unint64_t sub_22F34F468()
{
  result = qword_27DAB3C00;
  if (!qword_27DAB3C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3C00);
  }

  return result;
}

uint64_t PGManagerWorkingContext.read<A>(block:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v23 = a4;
  v24 = sub_22F741860();
  v9 = *(v24 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v24);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v23 - v15;
  v17 = *(a3 - 8);
  (*(v17 + 56))(&v23 - v15, 1, 1, a3, v14);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = v16;
  v18[4] = a1;
  v18[5] = a2;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_22F350034;
  *(v19 + 24) = v18;
  aBlock[4] = sub_22F350040;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F22F7B0;
  aBlock[3] = &block_descriptor_37;
  v20 = _Block_copy(aBlock);

  [v5 performSynchronousConcurrentGraphReadUsingBlock_];
  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    isEscapingClosureAtFileLocation = v24;
    (*(v9 + 16))(v12, v16, v24);
    if ((*(v17 + 48))(v12, 1, a3) != 1)
    {
      (*(v17 + 32))(v23, v12, a3);
      (*(v9 + 8))(v16, isEscapingClosureAtFileLocation);
    }
  }

  (*(v9 + 8))(v12, isEscapingClosureAtFileLocation);
  result = sub_22F741D40();
  __break(1u);
  return result;
}

{
  v32 = a2;
  v28 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1518, &qword_22F77A7E0);
  v6 = sub_22F7421E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = sub_22F741860();
  v30 = *(v13 - 8);
  v14 = *(v30 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v28 - v19;
  (*(v7 + 56))(&v28 - v19, 1, 1, v6, v18);
  v21 = swift_allocObject();
  v29 = a3;
  v21[2] = a3;
  v21[3] = v20;
  v22 = v32;
  v21[4] = a1;
  v21[5] = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_22F350080;
  *(v23 + 24) = v21;
  aBlock[4] = sub_22F350094;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F22F7B0;
  aBlock[3] = &block_descriptor_13_3;
  v24 = _Block_copy(aBlock);

  [aBlock[7] performSynchronousConcurrentGraphReadUsingBlock_];
  _Block_release(v24);
  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if (v24)
  {
    __break(1u);
    goto LABEL_8;
  }

  v23 = v30;
  (*(v30 + 16))(v16, v20, v13);
  if ((*(v7 + 48))(v16, 1, v6) == 1)
  {
LABEL_8:
    (*(v23 + 8))(v16, v13);
    result = sub_22F741D40();
    __break(1u);
    return result;
  }

  (*(v7 + 32))(v12, v16, v6);
  v25 = v31;
  (*(v7 + 16))(v31, v12, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *v25;
    swift_willThrow();
    (*(v7 + 8))(v12, v6);
    (*(v23 + 8))(v20, v13);
  }

  else
  {
    (*(v7 + 8))(v12, v6);
    (*(*(v29 - 8) + 32))(v28, v25);
    (*(v23 + 8))(v20, v13);
  }
}

uint64_t sub_22F34FCC4(void *a1, uint64_t a2, void (*a3)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1518, &qword_22F77A7E0);
  v6 = sub_22F7421E0();
  v7 = sub_22F741860();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  *&v10 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v12 = &v15 - v11;
  v13 = [a1 graph];
  a3();

  swift_storeEnumTagMultiPayload();
  (*(*(v6 - 8) + 56))(v12, 0, 1, v6);
  return (*(v8 + 40))(a2, v12, v7);
}

uint64_t sub_22F34FEF0(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v9 = sub_22F741860();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  *&v12 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v14 = &v17 - v13;
  v15 = [a1 graph];
  a3();

  (*(*(a5 - 8) + 56))(v14, 0, 1, a5);
  return (*(v10 + 40))(a2, v14, v9);
}

uint64_t sub_22F350040()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F350080(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  return sub_22F34FCC4(a1, *(v1 + 24), *(v1 + 32));
}

id EventLabelingConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t EventLabelingConfiguration.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_22F73FA60();
  v43[3] = v3;
  v43[4] = sub_22F350D8C();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
  (*(*(v3 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D3A810], v3);
  LOBYTE(v3) = sub_22F73FA20();
  __swift_destroy_boxed_opaque_existential_0(v43);
  if ((v3 & 1) == 0 || !PFOSVariantHasInternalDiagnostics())
  {
LABEL_13:
    *&v1[OBJC_IVAR___PGEventLabelingConfiguration_thresholdsByMeaningLabel] = sub_22F150240(MEMORY[0x277D84F90]);
    *&v1[OBJC_IVAR___PGEventLabelingConfiguration_meaningLabels] = MEMORY[0x277D84FA0];
    *&v1[OBJC_IVAR___PGEventLabelingConfiguration_modelVersion] = 0;
LABEL_14:
    v42.receiver = v1;
    v42.super_class = ObjectType;
    return objc_msgSendSuper2(&v42, sel_init, v36);
  }

  v5 = sub_22F350DE4();
  if (!*(v5 + 16))
  {
    goto LABEL_12;
  }

  v6 = sub_22F1229E8(0x7374757074756FLL, 0xE700000000000000);
  if ((v7 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_22F13A100(*(v5 + 56) + 32 * v6, v43);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3C20, &qword_22F7880E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v8 = v41;
  v9 = sub_22F350DE4();
  if (!*(v9 + 16) || (v10 = sub_22F1229E8(0x6E6F6973726576, 0xE700000000000000), (v11 & 1) == 0))
  {

    goto LABEL_12;
  }

  sub_22F13A100(*(v9 + 56) + 32 * v10, v43);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  v13 = 0;
  v36 = v41;
  v41 = MEMORY[0x277D84FA0];
  v14 = v8 + 64;
  v15 = 1 << *(v8 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v8 + 64);
  v18 = (v15 + 63) >> 6;
  v39 = MEMORY[0x277D84F98];
  v37 = v8;
  while (v17)
  {
LABEL_24:
    v26 = __clz(__rbit64(v17)) | (v13 << 6);
    v27 = *(v8 + 56);
    v28 = (*(v8 + 48) + 16 * v26);
    v29 = *v28;
    v30 = *(v27 + 8 * v26);
    v31 = *(v30 + 16);
    v38 = v28[1];

    if (v31)
    {
      v32 = sub_22F1229E8(0xD000000000000013, 0x800000022F79BB30);
      v20 = 1.0;
      v19 = 1.0;
      if (v33)
      {
        v19 = *(*(v30 + 56) + 8 * v32);
      }

      if (*(v30 + 16))
      {
        v34 = sub_22F1229E8(0xD000000000000016, 0x800000022F79BB50);
        if (v35)
        {
          v20 = *(*(v30 + 56) + 8 * v34);
        }
      }
    }

    else
    {
      v19 = 1.0;
      v20 = 1.0;
    }

    v17 &= v17 - 1;

    v21 = type metadata accessor for MeaningThresholds();
    v22 = objc_allocWithZone(v21);
    *&v22[OBJC_IVAR___PGMeaningThresholds_highRecallThreshold] = v19;
    *&v22[OBJC_IVAR___PGMeaningThresholds_highPrecisionThreshold] = v20;
    v40.receiver = v22;
    v40.super_class = v21;
    v23 = objc_msgSendSuper2(&v40, sel_init);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43[0] = v39;
    sub_22F132E7C(v23, v29, v38, isUniquelyReferenced_nonNull_native);
    v39 = v43[0];
    sub_22F10BBDC(v43, v29, v38);

    v8 = v37;
  }

  while (1)
  {
    v25 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v25 >= v18)
    {

      *&v1[OBJC_IVAR___PGEventLabelingConfiguration_thresholdsByMeaningLabel] = v39;
      *&v1[OBJC_IVAR___PGEventLabelingConfiguration_meaningLabels] = v41;
      *&v1[OBJC_IVAR___PGEventLabelingConfiguration_modelVersion] = v36;
      goto LABEL_14;
    }

    v17 = *(v14 + 8 * v25);
    ++v13;
    if (v17)
    {
      v13 = v25;
      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

uint64_t static EventLabelingConfiguration.isEventLabelingEnabled.getter()
{
  v0 = sub_22F73FA60();
  v3[3] = v0;
  v3[4] = sub_22F350D8C();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D3A810], v0);
  LOBYTE(v0) = sub_22F73FA20();
  __swift_destroy_boxed_opaque_existential_0(v3);
  if (v0)
  {
    return PFOSVariantHasInternalDiagnostics();
  }

  else
  {
    return 0;
  }
}

void *EventLabelingConfiguration.thresholds(by:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___PGEventLabelingConfiguration_thresholdsByMeaningLabel);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_22F1229E8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(v3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

Swift::Bool __swiftcall EventLabelingConfiguration.useEventLabelingToInfer(meaningLabel:)(Swift::String meaningLabel)
{
  object = meaningLabel._object;
  countAndFlagsBits = meaningLabel._countAndFlagsBits;
  v4 = sub_22F73FA60();
  v8[3] = v4;
  v8[4] = sub_22F350D8C();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(v4 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D3A810], v4);
  LOBYTE(v4) = sub_22F73FA20();
  __swift_destroy_boxed_opaque_existential_0(v8);
  if (v4)
  {
    HasInternalDiagnostics = PFOSVariantHasInternalDiagnostics();
    if (HasInternalDiagnostics)
    {
      LOBYTE(HasInternalDiagnostics) = sub_22F15E910(countAndFlagsBits, object, *(v1 + OBJC_IVAR___PGEventLabelingConfiguration_meaningLabels));
    }
  }

  else
  {
    LOBYTE(HasInternalDiagnostics) = 0;
  }

  return HasInternalDiagnostics & 1;
}

id EventLabelingConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s11PhotosGraph26EventLabelingConfigurationC10bundlePathSSSgvgZ_0()
{
  v23[1] = *MEMORY[0x277D85DE8];
  v0 = sub_22F73F470();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v22[-v7];
  MEMORY[0x28223BE20](v6);
  v10 = &v22[-v9];
  v11 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v23[0] = 0;
  v12 = [v11 URLForDirectory:5 inDomain:8 appropriateForURL:0 create:0 error:v23];
  v13 = v23[0];
  if (v12)
  {
    v14 = v12;
    sub_22F73F430();
    v15 = v13;

    (*(v1 + 32))(v10, v8, v0);
    sub_22F73F410();
    v16 = sub_22F73F450();

    v17 = *(v1 + 8);
    v17(v5, v0);
    v17(v10, v0);
  }

  else
  {
    v18 = v23[0];
    v19 = sub_22F73F370();

    swift_willThrow();
    v16 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v16;
}

unint64_t sub_22F350D8C()
{
  result = qword_2810A9510;
  if (!qword_2810A9510)
  {
    sub_22F73FA60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9510);
  }

  return result;
}

unint64_t sub_22F350DE4()
{
  v32[4] = *MEMORY[0x277D85DE8];
  v0 = sub_22F73F470();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v31 - v6;
  _s11PhotosGraph26EventLabelingConfigurationC10bundlePathSSSgvgZ_0();
  if (v8)
  {
    v9 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
    v10 = sub_22F740DF0();

    v11 = [v9 initWithPath_];

    if (v11)
    {
      v12 = sub_22F740DF0();
      v13 = sub_22F740DF0();
      v14 = [v11 URLForResource:v12 withExtension:v13];

      if (v14)
      {
        sub_22F73F430();

        (*(v1 + 32))(v7, v4, v0);
        v22 = sub_22F73F480();
        v24 = v23;
        v25 = objc_opt_self();
        v26 = sub_22F73F4F0();
        v32[0] = 0;
        v27 = [v25 propertyListWithData:v26 options:0 format:0 error:v32];

        if (v27)
        {
          v28 = v32[0];
          sub_22F741920();

          sub_22F133BF0(v22, v24);
          swift_unknownObjectRelease();
          (*(v1 + 8))(v7, v0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
          if (swift_dynamicCast())
          {
            result = v31[1];
            goto LABEL_11;
          }
        }

        else
        {
          v29 = v32[0];
          v30 = sub_22F73F370();

          swift_willThrow();
          sub_22F133BF0(v22, v24);

          (*(v1 + 8))(v7, v0);
        }
      }

      else
      {
      }
    }
  }

  if (qword_2810A93F0 != -1)
  {
    swift_once();
  }

  v15 = sub_22F740B90();
  __swift_project_value_buffer(v15, qword_2810B4CB0);
  v16 = sub_22F740B70();
  v17 = sub_22F7415E0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v32[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_22F145F20(0x62614C746E657645, 0xEF3256676E696C65, v32);
    _os_log_impl(&dword_22F0FC000, v16, v17, "[EventLabelingConfiguration] Unable to get the plist data from %s.plist", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x2319033A0](v19, -1, -1);
    MEMORY[0x2319033A0](v18, -1, -1);
  }

  result = sub_22F14EA28(MEMORY[0x277D84F90]);
LABEL_11:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22F3512A0()
{
  v0 = sub_22F73F9B0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v5, qword_2810AAD90);
  v6 = __swift_project_value_buffer(v0, qword_2810AAD90);
  v7 = [objc_opt_self() currentCalendar];
  sub_22F73F900();

  return (*(v1 + 32))(v6, v4, v0);
}

NSObject *static MusicForTimeElector.electMusic(for:context:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a2;
  v6 = sub_22F73F690();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v50 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v50 - v18;
  if (qword_2810A9B40 != -1)
  {
    swift_once();
  }

  sub_22F1B560C("Music For Time Elector", 22, 2u, 0, 1, qword_2810B4E38, v61);
  v20 = *(a1 + OBJC_IVAR___PGMusicCurationFeatures_eventCollectionDuration + 8);
  v59 = a3;
  if (v20 == 1)
  {
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v21 = sub_22F740B90();
    __swift_project_value_buffer(v21, qword_2810B4D90);
    v13 = sub_22F740B70();
    v22 = sub_22F7415C0();
    v23 = os_log_type_enabled(v13, v22);
    v24 = v60;
    if (v23)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_22F0FC000, v13, v22, "[MemoriesMusic] Moment collection duration failed to extract properly: defaulting to value of a year in the MusicForTimeElector to force yearly summary.", v25, 2u);
      MEMORY[0x2319033A0](v25, -1, -1);
    }

    v26 = sub_22F7416B0();
    v28 = v27;
    v29 = 31557600.0;
  }

  else
  {
    v57 = v7;
    v29 = *(a1 + OBJC_IVAR___PGMusicCurationFeatures_eventCollectionDuration);
    v26 = sub_22F7416B0();
    v58 = v30;
    if (v29 <= 2629800.0)
    {
      v56 = v6;
      v32 = sub_22F7416B0();
      v34 = v33;
      sub_22F351CC4(v19, v16, a1, v32);
      if (v3)
      {

        goto LABEL_22;
      }

      v50 = a1;
      v51 = v26;
      v53 = v32;
      v54 = v34;
      if (qword_2810AAD88 != -1)
      {
        swift_once();
      }

      v35 = sub_22F73F9B0();
      v52 = __swift_project_value_buffer(v35, qword_2810AAD90);
      sub_22F73F5A0();
      sub_22F73F800();
      v36 = v56;
      v37 = v57;
      v38 = (v57 + 1);
      v39 = v57[1];
      v55 = v39;
      v39(v10, v56);
      v39(v19, v36);
      v40 = v37[4];
      v57 = v37 + 4;
      v40(v19, v13, v36);
      sub_22F73F5A0();
      sub_22F73F800();
      v41 = v55;
      v55(v10, v36);
      v52 = v38;
      v41(v16, v36);
      v40(v16, v13, v36);
      v24 = v60;
      v42 = v54;
      v43 = sub_22F35275C(v19, v16, v60, v54);
      v44 = sub_22F352BC0(v43, v19, v16);
      v45 = v53;
      v26 = v51;
      v57 = v44;

      v47 = v55;
      v46 = v56;
      v55(v16, v56);
      v47(v19, v46);
      v31 = v57;
      v28 = v58;
      a1 = v50;
      if (!v57[2])
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }

    v24 = v60;
    v28 = v58;
  }

  v31 = sub_22F351A54(a1, v24);
  if (v3)
  {

LABEL_22:

    return v13;
  }

  if (!*(v31 + 16))
  {
LABEL_14:
    if (v29 <= 2629800.0)
    {

      v31 = sub_22F351A54(a1, v24);
    }
  }

LABEL_21:
  v48 = v31;
  sub_22F1B2BBC(0);
  sub_22F7416A0();
  v13 = sub_22F151734(v48);

  return v13;
}

uint64_t sub_22F351A54(uint64_t a1, uint64_t a2)
{
  v4 = sub_22F73F690();
  v21 = *(v4 - 8);
  v5 = *(v21 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v22[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22[-1] - v9;
  v11 = sub_22F7416B0();
  v13 = v12;
  v14 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_musicBag);
  v15 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_cache);
  v16 = v24;
  sub_22F351CC4(v10, v7, a1, v11);
  if (v16)
  {
  }

  else
  {
    v17 = v21;
    v18 = sub_22F352468(v10, v7, v14);
    v24 = v10;
    v22[0] = 0;
    v22[1] = 0;
    v23 = 1;
    v14 = MusicCache.read(songSourceIdentifiers:readOptions:progressReporter:)(v18, v22);

    v20 = *(v17 + 8);
    v20(v7, v4);
    v20(v24, v4);
  }

  return v14;
}

uint64_t sub_22F351CC4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v75 = a4;
  v70 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v77 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v80 = &v69 - v12;
  v82 = sub_22F73F690();
  v13 = *(v82 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v82);
  v74 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v73 = &v69 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v69 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v69 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v69 - v25;
  sub_22F73F570();
  result = sub_22F73F550();
  v28 = 0;
  v29 = *(a3 + OBJC_IVAR___PGMusicCurationFeatures_curatorEvents);
  v71 = v29 + 32;
  v88 = (v13 + 48);
  v84 = v29;
  v83 = *(v29 + 16);
  v81 = (v13 + 32);
  v30 = (v13 + 8);
  v72 = (v13 + 16);
  v76 = v23;
  v79 = v26;
  v78 = a2;
  v93 = v20;
  while (1)
  {
    v31 = 0uLL;
    v32 = v83;
    v33 = 0uLL;
    v34 = 0uLL;
    if (v28 == v83)
    {
      goto LABEL_5;
    }

    if (v28 >= *(v84 + 16))
    {
      break;
    }

    v32 = v28 + 1;
    *&v89 = v28;
    sub_22F15C30C(v71 + 40 * v28, &v89 + 8);
    v31 = v89;
    v33 = v90;
    v34 = v91;
LABEL_5:
    v92[0] = v31;
    v92[1] = v33;
    v92[2] = v34;
    if (!v34)
    {
      return (*v81)(v70, v26, v82);
    }

    v87 = v31;
    v86 = v32;
    sub_22F162700((v92 + 8), &v89);
    v35 = *(&v90 + 1);
    v36 = v91;
    __swift_project_boxed_opaque_existential_1(&v89, *(&v90 + 1));
    v37 = v35;
    v38 = v80;
    (*(v36 + 8))(v37, v36);
    v39 = *v88;
    v40 = v82;
    if ((*v88)(v38, 1, v82) == 1)
    {
      sub_22F15FCF0(v38);
      v55 = *(&v90 + 1);
      v56 = v91;
      __swift_project_boxed_opaque_existential_1(&v89, *(&v90 + 1));
      v57 = (*(v56 + 32))(v55, v56);
      v59 = v58;
      sub_22F353048();
      swift_allocError();
      *v60 = v57;
      *(v60 + 8) = v59;
      *(v60 + 16) = 0;
      swift_willThrow();
      v61 = *v30;
      (*v30)(v78, v40);
      goto LABEL_19;
    }

    v85 = v5;
    v41 = *v81;
    (*v81)(v23, v38, v40);
    v42 = *(&v90 + 1);
    v43 = v91;
    __swift_project_boxed_opaque_existential_1(&v89, *(&v90 + 1));
    v44 = v42;
    v45 = v77;
    (*(v43 + 16))(v44, v43);
    if (v39(v45, 1, v40) == 1)
    {
      sub_22F15FCF0(v45);
      v62 = *(&v90 + 1);
      v63 = v91;
      __swift_project_boxed_opaque_existential_1(&v89, *(&v90 + 1));
      v64 = (*(v63 + 32))(v62, v63);
      v66 = v65;
      sub_22F353048();
      swift_allocError();
      *v67 = v64;
      *(v67 + 8) = v66;
      *(v67 + 16) = 1;
      swift_willThrow();
      v61 = *v30;
      (*v30)(v23, v40);
      v61(v78, v40);
LABEL_19:
      v68 = v79;
LABEL_21:
      v61(v68, v40);
      return __swift_destroy_boxed_opaque_existential_0(&v89);
    }

    v41(v93, v45, v40);
    sub_22F173D18();
    v26 = v79;
    v46 = sub_22F740DB0();
    v47 = v78;
    if (v46)
    {
      (*v30)(v26, v40);
      v48 = v73;
      (*v72)(v73, v23, v40);
    }

    else
    {
      v48 = v73;
      v41(v73, v26, v40);
    }

    v49 = v74;
    v41(v26, v48, v40);
    v50 = v40;
    v51 = v93;
    if (sub_22F740DC0())
    {
      (*v30)(v47, v50);
      (*v72)(v49, v51, v50);
    }

    else
    {
      v41(v49, v47, v50);
    }

    v40 = v50;
    v41(v47, v49, v50);
    v52 = v85;
    v53 = *(v84 + 16);
    sub_22F741680();
    v5 = v52;
    if (v52)
    {
      v61 = *v30;
      (*v30)(v93, v50);
      v61(v76, v50);
      v61(v47, v50);
      v68 = v26;
      goto LABEL_21;
    }

    v54 = *v30;
    (*v30)(v93, v50);
    v23 = v76;
    v54(v76, v50);
    result = __swift_destroy_boxed_opaque_existential_0(&v89);
    v28 = v86;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F352468(uint64_t a1, char *a2, uint64_t a3)
{
  v23 = a3;
  v27 = a2;
  v3 = sub_22F73F990();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22F73F9B0();
  v24 = *(v8 - 8);
  v25 = v8;
  v9 = *(v24 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F73F970();
  v12 = *MEMORY[0x277CC9988];
  v26 = v4[13];
  v26(v7, v12, v3);
  v13 = sub_22F73F9A0();
  v14 = v4[1];
  v14(v7, v3);
  v26(v7, v12, v3);
  v27 = v11;
  v15 = sub_22F73F9A0();
  result = (v14)(v7, v3);
  if (v15 < v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v18 = v15 + 1;
  if (!__OFADD__(v15, 1))
  {
    v17 = MEMORY[0x277D84F90];
    if (v13 < v18)
    {
      while (1)
      {
        v19 = MusicBag.yearlySummaryIdentifier(for:)(v13);
        if (v20)
        {
          break;
        }

        if (v19.value._object)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_22F13E1A8(0, *(v17 + 2) + 1, 1, v17);
          }

          v22 = *(v17 + 2);
          v21 = *(v17 + 3);
          if (v22 >= v21 >> 1)
          {
            v17 = sub_22F13E1A8((v21 > 1), v22 + 1, 1, v17);
          }

          *(v17 + 2) = v22 + 1;
          *&v17[16 * v22 + 32] = v19;
        }

        if (v18 == ++v13)
        {
          goto LABEL_14;
        }
      }

      (*(v24 + 8))(v27, v25);

      return v17;
    }

LABEL_14:
    (*(v24 + 8))(v27, v25);
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F35275C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v7 = sub_22F740AD0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(a3 + OBJC_IVAR___PGMusicCuratorContext_cache);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22F771EB0;
  v13 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v14 = sub_22F740DF0();
  v15 = [v13 initWithKey:v14 ascending:0];

  *(v12 + 32) = v15;
  started = _s11PhotosGraph26MusicForTimeBackfillCacherC5dates12forStartDate03endK0Say10Foundation0K0VGAI_AItFZ_0(a1, a2);
  sub_22F25F004();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22F7727B0;
  v18 = MEMORY[0x277D837D0];
  *(v17 + 56) = MEMORY[0x277D837D0];
  v19 = sub_22F153470();
  *(v17 + 32) = 0x696669746E656469;
  *(v17 + 40) = 0xEA00000000007265;
  *(v17 + 96) = v18;
  *(v17 + 104) = v19;
  *(v17 + 64) = v19;
  strcpy((v17 + 72), "MusicForTime");
  *(v17 + 85) = 0;
  *(v17 + 86) = -5120;
  *(v17 + 136) = v18;
  *(v17 + 144) = v19;
  *(v17 + 112) = 1702125924;
  *(v17 + 120) = 0xE400000000000000;
  v20 = sub_22F161070(started);

  *(v17 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DB8, &unk_22F7771C0);
  *(v17 + 184) = sub_22F352FE4();
  *(v17 + 152) = v20;
  v21 = sub_22F741560();
  v34 = v21;
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v22 = *(v8 + 8);
  v33[1] = v8 + 8;
  v22(v11, v7);
  v23 = sub_22F7416B0();
  v36 = v7;
  v25 = v24;
  v38 = MEMORY[0x277D84F90];
  v26 = *(v35 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  MEMORY[0x28223BE20](v23);
  v33[-10] = v21;
  v33[-9] = v27;
  v33[-8] = v28;
  v33[-7] = v25;
  v33[-6] = 0;
  v33[-5] = &v38;
  v33[-4] = v12;
  v33[-3] = 6000;
  LOWORD(v33[-2]) = 256;
  v29 = v37;
  sub_22F7417A0();
  if (v29)
  {

    v30 = v34;
  }

  else
  {
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();

    v32 = v34;

    v22(v11, v36);
    return v38;
  }
}

void *sub_22F352BC0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v41 = a2;
  v43 = sub_22F73F690();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v43);
  v40 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v36 = type metadata accessor for Song();
  v10 = *(v36 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v36);
  v31 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  if (qword_2810A9168 != -1)
  {
LABEL_24:
    swift_once();
  }

  v35 = a1[2];
  if (v35)
  {
    v16 = 0;
    v42 = qword_2810A9170;
    v30 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v34 = a1 + v30;
    v37 = v10[9];
    v17 = (v4 + 32);
    v18 = (v4 + 8);
    v32 = MEMORY[0x277D84F90];
    v33 = v15;
    while (1)
    {
      sub_22F15CAA0(&v34[v37 * v16], v15);
      v4 = *&v15[*(v36 + 68)];
      if (!v4)
      {
        sub_22F15CBD8(v15);
        goto LABEL_5;
      }

      v38 = v16;
      v15 = *(v4 + 16);
      if (!v15)
      {
LABEL_4:
        v15 = v33;
        sub_22F15CBD8(v33);
        v16 = v38;
        goto LABEL_5;
      }

      v19 = 0;
      a1 = (v4 + 40);
      while (1)
      {
        if (v19 >= *(v4 + 16))
        {
          __break(1u);
          goto LABEL_24;
        }

        v20 = *(a1 - 1);
        v21 = *a1;

        v22 = sub_22F740DF0();

        v10 = [v42 dateFromString_];

        if (v10)
        {
          break;
        }

LABEL_10:
        ++v19;
        a1 += 10;
        if (v15 == v19)
        {
          goto LABEL_4;
        }
      }

      v23 = v40;
      sub_22F73F640();

      (*v17)(v9, v23, v43);
      if (sub_22F73F660() == -1 || sub_22F73F660() == 1)
      {
        break;
      }

      v15 = v33;
      sub_22F15CAA0(v33, v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_22F13E558(0, v32[2] + 1, 1, v32);
      }

      v16 = v38;
      v25 = v32[2];
      v24 = v32[3];
      v10 = (v25 + 1);
      if (v25 >= v24 >> 1)
      {
        v32 = sub_22F13E558(v24 > 1, v25 + 1, 1, v32);
      }

      (*v18)(v9, v43);
      sub_22F15CBD8(v15);
      v26 = v31;
      v27 = v32;
      v32[2] = v10;
      sub_22F15CB04(v26, v27 + v30 + v25 * v37);
LABEL_5:
      if (++v16 == v35)
      {
        return v32;
      }
    }

    (*v18)(v9, v43);
    goto LABEL_10;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_22F352FE4()
{
  result = qword_2810A92A0;
  if (!qword_2810A92A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1DB8, &unk_22F7771C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A92A0);
  }

  return result;
}

unint64_t sub_22F353048()
{
  result = qword_27DAB3C28;
  if (!qword_27DAB3C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3C28);
  }

  return result;
}

uint64_t sub_22F3530B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph11RecentTrips_triggerResults;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_22F353120()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph11RecentTrips_triggerResults;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_22F353168(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph11RecentTrips_triggerResults;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_22F353220()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph11RecentTrips_supportsFutureLookup;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22F353264(char a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph11RecentTrips_supportsFutureLookup;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_22F353314(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph11RecentTrips_futureLookupResults;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_22F35337C()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph11RecentTrips_futureLookupResults;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_22F3533C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph11RecentTrips_futureLookupResults;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t *sub_22F35347C(char *a1, uint64_t *a2)
{
  v3 = v2;
  v80 = *v3;
  v6 = sub_22F740460();
  v78 = *(v6 - 8);
  v79 = v6;
  v7 = *(v78 + 64);
  MEMORY[0x28223BE20](v6);
  v77 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22F740560();
  v74 = *(v9 - 8);
  v75 = v9;
  v10 = *(v74 + 64);
  MEMORY[0x28223BE20](v9);
  v76 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22F73F990();
  v71 = *(v12 - 8);
  v72 = v12;
  v13 = *(v71 + 64);
  MEMORY[0x28223BE20](v12);
  v70 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22F73F9B0();
  v83 = *(v15 - 8);
  v84 = v15;
  v16 = *(v83 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22F73F690();
  v81 = *(v19 - 8);
  v82 = v19;
  v20 = *(v81 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v70 - v25;
  v27 = sub_22F73F090();
  v28 = *(v27 - 8);
  v86 = v27;
  v87 = v28;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v85 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *a1;
  *(v3 + 16) = 1;
  sub_22F740B80();
  *(v3 + OBJC_IVAR____TtC11PhotosGraph11RecentTrips_supportsFutureLookup) = 0;
  *(v3 + OBJC_IVAR____TtC11PhotosGraph11RecentTrips_futureLookupResults) = 0;
  v73 = OBJC_IVAR____TtC11PhotosGraph11RecentTrips_triggerResults;
  *(v3 + OBJC_IVAR____TtC11PhotosGraph11RecentTrips_triggerResults) = MEMORY[0x277D84F90];
  v32 = a2[3];
  v33 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v32);
  v34 = (*(v33 + 16))(v32, v33);
  if (v34)
  {
    v35 = v34;
    v36 = a2[3];
    v37 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v36);
    (*(v37 + 8))(v36, v37);
    sub_22F73F970();
    if (v31)
    {
      sub_22F73F890();
    }

    else
    {
      v46 = v70;
      v45 = v71;
      v47 = v72;
      (*(v71 + 104))(v70, *MEMORY[0x277CC9940], v72);
      sub_22F73F8C0();
      (*(v45 + 8))(v46, v47);
    }

    (*(v83 + 8))(v18, v84);
    (*(v81 + 8))(v22, v82);
    v49 = v86;
    v48 = v87;
    if ((*(v87 + 48))(v26, 1, v86) == 1)
    {

      sub_22F1EDFCC(v26);
    }

    else
    {
      v50 = v85;
      (*(v48 + 32))(v85, v26, v49);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E68, &qword_22F771210);
      v51 = *(v48 + 72);
      v52 = v48;
      v53 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_22F771340;
      v55 = (*(v52 + 16))(v54 + v53, v50, v49);
      MEMORY[0x28223BE20](v55);
      *(&v70 - 2) = v54;
      *(&v70 - 1) = v35;
      v56 = v35;
      sub_22F2A1FCC(sub_22F348128, (&v70 - 4));

      v57 = a2[3];
      v58 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v57);
      (*(v58 + 24))(v57, v58);
      (*(v74 + 104))(v76, *MEMORY[0x277D3C570], v75);
      v59 = sub_22F740570();
      v60 = *(v59 + 48);
      v61 = *(v59 + 52);
      swift_allocObject();
      sub_22F740550();
      sub_22F73FE90();
      v62 = sub_22F7404F0();

      v64 = v77;
      v63 = v78;
      v65 = v79;
      (*(v78 + 104))(v77, *MEMORY[0x277D3C448], v79);
      v66 = static CollectionTrigger.generateTriggerResults(from:type:)(v62, v64);

      (*(v63 + 8))(v64, v65);
      (*(v87 + 8))(v85, v49);
      v67 = v73;
      swift_beginAccess();
      v68 = *(v3 + v67);
      *(v3 + v67) = v66;
    }
  }

  else
  {
    v38 = sub_22F740B70();
    v39 = sub_22F7415C0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v88 = v41;
      *v40 = 136315138;
      v42 = sub_22F742240();
      v44 = sub_22F145F20(v42, v43, &v88);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_22F0FC000, v38, v39, "GraphWorkingContext not available. Skipping %s trigger", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x2319033A0](v41, -1, -1);
      MEMORY[0x2319033A0](v40, -1, -1);
    }
  }

  __swift_destroy_boxed_opaque_existential_0(a2);
  return v3;
}

uint64_t RecentTrips.deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph11RecentTrips_logger;
  v2 = sub_22F740B90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11PhotosGraph11RecentTrips_triggerResults);

  v4 = *(v0 + OBJC_IVAR____TtC11PhotosGraph11RecentTrips_futureLookupResults);

  return v0;
}

uint64_t RecentTrips.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph11RecentTrips_logger;
  v2 = sub_22F740B90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11PhotosGraph11RecentTrips_triggerResults);

  v4 = *(v0 + OBJC_IVAR____TtC11PhotosGraph11RecentTrips_futureLookupResults);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22F353E54()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11PhotosGraph11RecentTrips_triggerResults;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_22F353EA0()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11PhotosGraph11RecentTrips_supportsFutureLookup;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_22F353EE8()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11PhotosGraph11RecentTrips_futureLookupResults;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t type metadata accessor for RecentTrips()
{
  result = qword_27DAB3C30;
  if (!qword_27DAB3C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F353F88()
{
  result = sub_22F740B90();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22F35420C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v102[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C90, &unk_22F785B70);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v102[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v102[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v102[-v19];
  v21 = [v4 adamID];
  if (!v21)
  {
    sub_22F355188();
    swift_allocError();
    *v28 = 0;
    return swift_willThrow();
  }

  v114 = a1;
  v22 = v21;
  v113 = sub_22F740E20();
  v115 = v23;

  v24 = [v4 duration];
  v117 = v3;
  v112 = v24;
  if (v24)
  {
    v25 = v24;
    [v24 doubleValue];
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  v30 = sub_22F73F7C0();
  v31 = *(*(v30 - 8) + 56);
  v31(v20, 1, 1, v30);
  v32 = [v4 audioLocaleIdentifier];
  v116 = v4;
  v118 = v20;
  if (v32)
  {
    v33 = v32;
    sub_22F740E20();
    v111 = v31;

    v4 = v116;
    v34 = v118;
    sub_22F73F6E0();
    sub_22F2C0884(v34);
    v111(v18, 0, 1, v30);
    sub_22F1207AC(v18, v34, &qword_27DAB0C90, &unk_22F785B70);
  }

  v35 = [v4 genreNamesAsData];
  if (v35)
  {
    v36 = v35;
    v37 = sub_22F73F510();
    v39 = v38;

    v40 = sub_22F73F310();
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    swift_allocObject();
    sub_22F73F300();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    sub_22F1BA494(&qword_2810A92D8);
    v43 = v117;
    sub_22F73F2F0();
    v44 = v43;
    if (v43)
    {
      sub_22F2C0884(v118);

      sub_22F133BF0(v37, v39);
    }

    sub_22F133BF0(v37, v39);

    v110 = v119;
    v4 = v116;
  }

  else
  {
    v110 = 0;
    v44 = v117;
  }

  v45 = [v4 title];
  if (v45)
  {
    v46 = v45;
    v47 = sub_22F740E20();
    v108 = v48;
    v109 = v47;
  }

  else
  {
    v108 = 0;
    v109 = 0;
  }

  v49 = [v4 artist];
  if (v49)
  {
    v50 = v49;
    v51 = sub_22F740E20();
    v106 = v52;
    v107 = v51;
  }

  else
  {
    v106 = 0;
    v107 = 0;
  }

  v53 = [v4 album];
  if (v53)
  {
    v54 = v53;
    v55 = sub_22F740E20();
    v104 = v56;
    v105 = v55;
  }

  else
  {
    v104 = 0;
    v105 = 0;
  }

  v117 = v44;
  v57 = [v4 isExplicit];
  if (v57)
  {
    v58 = v57;
    v103 = [v57 BOOLValue];
  }

  else
  {
    v103 = 2;
  }

  v59 = v118;
  v60 = [v4 preferenceScore];
  v61 = v60;
  if (v60)
  {
    [v60 floatValue];
    v63 = v62;
  }

  else
  {
    v63 = 0;
  }

  sub_22F13BA9C(v59, v15, &qword_27DAB0C90, &unk_22F785B70);
  v64 = [v4 lastRefreshAttemptDate];
  if (v64)
  {
    v65 = v64;
    sub_22F73F640();

    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = sub_22F73F690();
  (*(*(v67 - 8) + 56))(v10, v66, 1, v67);
  v68 = [v4 arousal];
  v69 = v68;
  v70 = 0;
  v71 = 0;
  if (v68)
  {
    [v68 floatValue];
    v71 = v72;
  }

  v111 = v10;
  v73 = [v4 valence];
  v74 = v73;
  if (v73)
  {
    [v73 floatValue];
    v70 = v75;
  }

  v76 = v15;
  v77 = [v116 unitagMemoryAppropriateScore];
  v78 = v77;
  v79 = 0;
  v80 = 0;
  if (v77)
  {
    [v77 floatValue];
    v80 = v81;
  }

  v82 = [v116 unitagMemoryNotAppropriateScore];
  v83 = v82;
  if (v82)
  {
    [v82 floatValue];
    v79 = v84;
  }

  v85 = v83 == 0;
  v86 = v78 == 0;
  v87 = v69 == 0;
  v88 = v112 == 0;
  sub_22F2C0884(v118);
  v89 = v115;
  *a2 = v113;
  *(a2 + 8) = v89;
  v90 = v108;
  *(a2 + 16) = v109;
  *(a2 + 24) = v90;
  v91 = v106;
  *(a2 + 32) = v107;
  *(a2 + 40) = v91;
  v92 = v104;
  *(a2 + 48) = v105;
  *(a2 + 56) = v92;
  *(a2 + 64) = v110;
  *(a2 + 72) = v103;
  *(a2 + 80) = v27;
  *(a2 + 88) = v88;
  *(a2 + 92) = v63;
  *(a2 + 96) = v61 == 0;
  v93 = type metadata accessor for Song();
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0u;
  sub_22F1207AC(v76, a2 + v93[15], &qword_27DAB0C90, &unk_22F785B70);
  v94 = a2 + v93[26];
  *v94 = 1;
  *(v94 + 8) = 0u;
  *(v94 + 24) = 0u;
  *(v94 + 37) = 0;
  sub_22F1207AC(v111, a2 + v93[16], &qword_27DAB0920, &qword_22F770B20);
  *(a2 + v93[17]) = v114;
  v95 = a2 + v93[18];
  *v95 = v71;
  *(v95 + 4) = v87;
  v96 = a2 + v93[19];
  *v96 = v70;
  *(v96 + 4) = v74 == 0;
  v97 = a2 + v93[20];
  *v97 = v80;
  *(v97 + 4) = v86;
  v98 = a2 + v93[21];
  *v98 = v79;
  *(v98 + 4) = v85;
  v99 = a2 + v93[22];
  *v99 = 0;
  *(v99 + 4) = 1;
  v100 = a2 + v93[23];
  *v100 = 0;
  *(v100 + 4) = 1;
  *(a2 + v93[24]) = 0;
  v101 = (a2 + v93[25]);
  *v101 = 0;
  v101[1] = 0;
}

void sub_22F354A34(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v60 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C90, &unk_22F785B70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v60 - v11;
  v13 = [v1 adamID];
  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = v13;
  v15 = sub_22F740E20();
  v17 = v16;

  if (v15 == *a1 && v17 == *(a1 + 8))
  {
  }

  else
  {
    v19 = sub_22F742040();

    if ((v19 & 1) == 0)
    {
LABEL_7:
      sub_22F355188();
      swift_allocError();
      *v20 = 1;
      swift_willThrow();
      return;
    }
  }

  if (*(a1 + 24))
  {
    v21 = *(a1 + 16);
    v22 = sub_22F740DF0();
  }

  else
  {
    v22 = 0;
  }

  [v3 setTitle_];

  if (*(a1 + 40))
  {
    v23 = *(a1 + 32);
    v24 = sub_22F740DF0();
  }

  else
  {
    v24 = 0;
  }

  [v3 setArtist_];

  if (*(a1 + 56))
  {
    v25 = *(a1 + 48);
    v26 = sub_22F740DF0();
  }

  else
  {
    v26 = 0;
  }

  [v3 setAlbum_];

  v27 = *(a1 + 64);
  if (v27)
  {
    v28 = sub_22F73F350();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    sub_22F73F340();
    v60[1] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    sub_22F1BA494(&qword_2810A92E8);
    v31 = sub_22F73F330();
    v33 = v32;

    if (v2)
    {
      return;
    }

    v34 = sub_22F73F4F0();
    sub_22F133BF0(v31, v33);
  }

  else
  {
    v34 = 0;
  }

  [v3 setGenreNamesAsData_];

  if (*(a1 + 72) == 2)
  {
    v35 = 0;
  }

  else
  {
    v35 = sub_22F7412C0();
  }

  [v3 setIsExplicit_];

  if (*(a1 + 88))
  {
    v36 = 0;
  }

  else
  {
    v37 = *(a1 + 80);
    v36 = sub_22F741350();
  }

  [v3 setDuration_];

  if (*(a1 + 96))
  {
    v38 = 0;
  }

  else
  {
    v39 = *(a1 + 92);
    v38 = sub_22F7413C0();
  }

  [v3 setPreferenceScore_];

  v40 = type metadata accessor for Song();
  v41 = 0;
  v42 = (a1 + v40[20]);
  if ((v42[1] & 1) == 0)
  {
    v43 = *v42;
    v41 = sub_22F7413C0();
  }

  [v3 setUnitagMemoryAppropriateScore_];

  v44 = (a1 + v40[21]);
  if (v44[1])
  {
    v45 = 0;
  }

  else
  {
    v46 = *v44;
    v45 = sub_22F7413C0();
  }

  [v3 setUnitagMemoryNotAppropriateScore_];

  sub_22F13BA9C(a1 + v40[15], v12, &qword_27DAB0C90, &unk_22F785B70);
  v47 = sub_22F73F7C0();
  v48 = *(v47 - 8);
  if ((*(v48 + 48))(v12, 1, v47) == 1)
  {
    sub_22F2C0884(v12);
    v49 = 0;
  }

  else
  {
    sub_22F73F6F0();
    (*(v48 + 8))(v12, v47);
    v49 = sub_22F740DF0();
  }

  [v3 setAudioLocaleIdentifier_];

  sub_22F13BA9C(a1 + v40[16], v8, &qword_27DAB0920, &qword_22F770B20);
  v50 = sub_22F73F690();
  v51 = *(v50 - 8);
  v52 = 0;
  if ((*(v51 + 48))(v8, 1, v50) != 1)
  {
    v52 = sub_22F73F5B0();
    (*(v51 + 8))(v8, v50);
  }

  [v3 setLastRefreshAttemptDate_];

  v53 = (a1 + v40[18]);
  if (v53[1])
  {
    v54 = 0;
  }

  else
  {
    v55 = *v53;
    v54 = sub_22F7413C0();
  }

  [v3 setArousal_];

  v56 = (a1 + v40[19]);
  if (v56[1])
  {
    v57 = 0;
  }

  else
  {
    v58 = *v56;
    v57 = sub_22F7413C0();
  }

  [v3 setValence_];

  sub_22F170D8C();
  v59 = sub_22F7417E0();
  [v3 setClearedForPhotosMemoriesExport_];
}

id sub_22F3550F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SongEntry();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F355150()
{
  v0 = *aSong_1;

  return v0;
}

unint64_t sub_22F355188()
{
  result = qword_27DAB3C50;
  if (!qword_27DAB3C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3C50);
  }

  return result;
}

id sub_22F3551DC(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v59 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C90, &unk_22F785B70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v59 - v11;
  v13 = objc_opt_self();

  v14 = sub_22F740DF0();

  v15 = [v13 entityForName:v14 inManagedObjectContext:a1];

  if (v15)
  {
    v13 = [objc_allocWithZone(type metadata accessor for SongEntry()) initWithEntity:v15 insertIntoManagedObjectContext:a1];

    v16 = *a2;
    v17 = a2[1];
    v18 = sub_22F740DF0();
    [v13 setAdamID_];

    if (a2[3])
    {
      v19 = a2[2];
      v20 = sub_22F740DF0();
    }

    else
    {
      v20 = 0;
    }

    [v13 setTitle_];

    if (a2[5])
    {
      v21 = a2[4];
      v22 = sub_22F740DF0();
    }

    else
    {
      v22 = 0;
    }

    [v13 setArtist_];

    if (a2[7])
    {
      v23 = a2[6];
      v24 = sub_22F740DF0();
    }

    else
    {
      v24 = 0;
    }

    [v13 setAlbum_];

    v25 = a2[8];
    if (v25)
    {
      v26 = sub_22F73F350();
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      sub_22F73F340();
      v59[1] = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
      sub_22F1BA494(&qword_2810A92E8);
      v29 = sub_22F73F330();
      v31 = v30;

      if (v2)
      {

        return v13;
      }

      v32 = sub_22F73F4F0();
      sub_22F133BF0(v29, v31);
    }

    else
    {
      v32 = 0;
    }

    [v13 setGenreNamesAsData_];

    if (*(a2 + 72) == 2)
    {
      v33 = 0;
    }

    else
    {
      v33 = sub_22F7412C0();
    }

    [v13 setIsExplicit_];

    if (a2[11])
    {
      v34 = 0;
    }

    else
    {
      v35 = a2[10];
      v34 = sub_22F741350();
    }

    [v13 setDuration_];

    if (a2[12])
    {
      v36 = 0;
    }

    else
    {
      v37 = *(a2 + 23);
      v36 = sub_22F7413C0();
    }

    [v13 setPreferenceScore_];

    v38 = type metadata accessor for Song();
    sub_22F13BA9C(a2 + v38[15], v12, &qword_27DAB0C90, &unk_22F785B70);
    v39 = sub_22F73F7C0();
    v40 = *(v39 - 8);
    if ((*(v40 + 48))(v12, 1, v39) == 1)
    {
      sub_22F2C0884(v12);
      v41 = 0;
    }

    else
    {
      sub_22F73F6F0();
      (*(v40 + 8))(v12, v39);
      v41 = sub_22F740DF0();
    }

    [v13 setAudioLocaleIdentifier_];

    sub_22F13BA9C(a2 + v38[16], v8, &qword_27DAB0920, &qword_22F770B20);
    v42 = sub_22F73F690();
    v43 = *(v42 - 8);
    v44 = 0;
    if ((*(v43 + 48))(v8, 1, v42) != 1)
    {
      v44 = sub_22F73F5B0();
      (*(v43 + 8))(v8, v42);
    }

    [v13 setLastRefreshAttemptDate_];

    v45 = (a2 + v38[18]);
    if (v45[1])
    {
      v46 = 0;
    }

    else
    {
      v47 = *v45;
      v46 = sub_22F7413C0();
    }

    [v13 setArousal_];

    v48 = (a2 + v38[19]);
    if (v48[1])
    {
      v49 = 0;
    }

    else
    {
      v50 = *v48;
      v49 = sub_22F7413C0();
    }

    [v13 setValence_];

    v51 = (a2 + v38[20]);
    if (v51[1])
    {
      v52 = 0;
    }

    else
    {
      v53 = *v51;
      v52 = sub_22F7413C0();
    }

    [v13 setUnitagMemoryAppropriateScore_];

    v54 = (a2 + v38[21]);
    if (v54[1])
    {
      v55 = 0;
    }

    else
    {
      v56 = *v54;
      v55 = sub_22F7413C0();
    }

    [v13 setUnitagMemoryNotAppropriateScore_];

    sub_22F170D8C();
    v57 = sub_22F7417E0();
    [v13 setClearedForPhotosMemoriesExport_];
  }

  else
  {
    sub_22F162D98();
    swift_allocError();
    swift_willThrow();
  }

  return v13;
}

unint64_t sub_22F3558AC()
{
  result = qword_27DAB3C58;
  if (!qword_27DAB3C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3C58);
  }

  return result;
}

double sub_22F355900()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3C60, &qword_22F788398);
  v0 = swift_allocObject();
  *&result = 6;
  *(v0 + 16) = xmmword_22F777170;
  *(v0 + 32) = &type metadata for NegativeUserFeedbackMusicFilter;
  *(v0 + 40) = &off_2843EE2D8;
  *(v0 + 48) = &type metadata for ExplicitMusicFilter;
  *(v0 + 56) = &off_2843E9058;
  *(v0 + 64) = &type metadata for BlocklistMusicFilter;
  *(v0 + 72) = &off_2843EF8B0;
  *(v0 + 80) = &type metadata for DurationMusicFilter;
  *(v0 + 88) = &off_2843EA1F0;
  *(v0 + 96) = &type metadata for RecentlyUsedFilter;
  *(v0 + 104) = &off_2843E2A30;
  *(v0 + 112) = &type metadata for GenreMusicFilter;
  *(v0 + 120) = &off_2843E2A60;
  return result;
}

void sub_22F3559B8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t)@<X4>, uint64_t *a5@<X8>)
{
  v10 = *a1;
  sub_22F7416F0();
  v11 = a4(v10, a2, a3);
  if (v5)
  {
  }

  else
  {
    v18 = v11;
    v17 = a4(a1[1], a2, a3);
    v16 = a4(a1[2], a2, a3);
    v12 = a4(a1[3], a2, a3);
    v13 = a4(a1[4], a2, a3);
    v15 = a4(a1[5], a2, a3);
    v14 = a4(a1[6], a2, a3);

    *a5 = v18;
    a5[1] = v17;
    a5[2] = v16;
    a5[3] = v12;
    a5[4] = v13;
    a5[5] = v15;
    a5[6] = v14;
  }
}

id static MusicCurator.curateMusic(for:context:progressReporter:)(char *a1, char *a2)
{
  v5 = OBJC_IVAR___PGMusicCuratorContext_musicCurationOverrideDictionary;
  swift_beginAccess();
  if (*&a2[v5])
  {

    v7 = sub_22F357A90(v6);
  }

  else
  {
    v68 = a1;
    if (qword_2810A9BD0 != -1)
    {
      swift_once();
    }

    v8 = qword_2810B4E90;
    *&v9 = CACurrentMediaTime();
    sub_22F1B560C("Music Curation", 14, 2u, v9, 0, v8, v78);
    sub_22F741700();
    v10 = *__src;
    v11 = *&__src[16];
    v72 = *&__src[8];
    v71 = *&__src[32];
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v12 = sub_22F740B90();
    __swift_project_value_buffer(v12, qword_2810B4D90);
    v13 = a2;
    v14 = sub_22F740B70();
    v15 = sub_22F7415C0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&dword_22F0FC000, v14, v15, "[MemoriesMusic] Music curation context:\n%@", v16, 0xCu);
      sub_22F120ADC(v17, &qword_27DAB07D0, &qword_22F779400);
      MEMORY[0x2319033A0](v17, -1, -1);
      MEMORY[0x2319033A0](v16, -1, -1);
    }

    *&v19 = CACurrentMediaTime();
    sub_22F1B560C("Music Curation - Election", 25, 2u, v19, 0, v8, v79);
    sub_22F7416F0();
    v7 = *&__src[8];
    v99 = *&__src[32];
    v20 = sub_22F7416D0();
    v22 = v21;
    v24 = v23;
    v25 = sub_22F15D3D0(v13);
    if (v2)
    {
    }

    else
    {
      v64 = v10;
      v65 = v25;
      v26 = sub_22F15D508(v13, v22);
      v58 = sub_22F15D53C(v13, v24);
      v28 = sub_22F3EF030(v68, v13, *&__src[8]);
      v56 = static MusicForTimeElector.electMusic(for:context:progressReporter:)(v68, v13, *&__src[16]);
      v54 = sub_22F254FB4(v68, v13, *&__src[24]);
      v52 = sub_22F34D844(v68, v13, v99);
      sub_22F7416A0();
      sub_22F1B2BBC(0);

      *&v74 = v65;
      *(&v74 + 1) = v26;
      *&v75 = v58;
      *(&v75 + 1) = v28;
      *&v76 = v56;
      *(&v76 + 1) = v54;
      v77 = v52;
      sub_22F355900();
      v99 = v29;
      sub_22F1ACF28(&v74, v13, v29, __src);

      v74 = *__src;
      v75 = *&__src[16];
      v76 = *&__src[32];
      v77 = *&__src[48];
      v99 = v13;
      sub_22F35C2A4(&v74, v13, v11, __src);

      v97[0] = *__src;
      v97[1] = *&__src[16];
      v97[2] = *&__src[32];
      v98 = *&__src[48];
      *&v30 = CACurrentMediaTime();
      sub_22F1B560C("Music Curation - Ranking", 24, 2u, v30, 0, v8, v80);
      sub_22F741710();
      v31 = *__src;
      v32 = *&__src[16];
      v69 = *&__src[40];
      v70 = *&__src[32];
      v67 = *&__src[48];
      sub_22F3559B8(v97, v68, v99, sub_22F1E2264, v81);
      v66 = v81[0];
      v62 = v81[2];
      v63 = v81[1];
      v33 = v82;
      sub_22F3559B8(v97, v68, v99, sub_22F34C978, v83);
      v60 = v83[1];
      v61 = v83[0];
      v59 = v83[2];
      v34 = v84;
      sub_22F3559B8(v97, v68, v99, sub_22F203290, v85);
      v55 = v85[0];
      v51 = v85[2];
      v53 = v85[1];
      v57 = v86;
      sub_22F3559B8(v97, v68, v99, sub_22F3925BC, v87);
      v48 = v87[1];
      v49 = v87[0];
      v47 = v87[2];
      v50 = v88;
      sub_22F3559B8(v97, v68, v99, sub_22F26E730, v89);
      v44 = v89[1];
      v45 = v89[0];
      v43 = v89[2];
      v46 = v90;
      sub_22F357480(v97, v99, sub_22F2BC97C, v91);
      v41 = v91[1];
      v42 = v91[0];
      v40 = v91[2];
      v35 = v92;
      sub_22F357480(v97, v99, sub_22F16F69C, v93);
      v38 = v93[1];
      v39 = v93[0];
      v37 = v93[2];
      v36 = v94;
      sub_22F1B2BBC(0);
      sub_22F7416A0();
      sub_22F3573D8(v97);

      *__src = v66;
      *&__src[16] = v63;
      *&__src[32] = v62;
      *&__src[48] = v33;
      *&__src[56] = v61;
      *&__src[72] = v60;
      *&__src[88] = v59;
      *&__src[104] = v34;
      *&__src[112] = v55;
      *&__src[128] = v53;
      *&__src[144] = v51;
      *&__src[168] = v49;
      *&__src[184] = v48;
      *&__src[200] = v47;
      *&__src[160] = v57;
      *&__src[216] = v50;
      *&__src[224] = v45;
      *&__src[240] = v44;
      *&__src[256] = v43;
      *&__src[280] = v42;
      *&__src[296] = v41;
      *&__src[312] = v40;
      *&__src[272] = v46;
      *&__src[328] = v35;
      *&__src[336] = v39;
      *&__src[352] = v38;
      *&__src[368] = v37;
      *&__src[384] = v36;
      memcpy(__dst, __src, sizeof(__dst));
      sub_22F25C054(__dst, v99, v71, v95);
      sub_22F25DEEC(__src);
      v7 = sub_22F2B5C8C(v95, v68, v99, *(&v71 + 1));
      sub_22F35775C(v95);
      sub_22F1B2BBC(0);
      sub_22F7416A0();
    }
  }

  return v7;
}

id MusicCurator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicCurator.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MusicCurator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22F357480(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X3>, uint64_t *a4@<X8>)
{
  v8 = *a1;
  sub_22F7416F0();
  v9 = a3(v8, a2);
  if (v4)
  {
  }

  else
  {
    v16 = v9;
    v15 = a3(a1[1], a2);
    v14 = a3(a1[2], a2);
    v10 = a3(a1[3], a2);
    v11 = (a3)(a1[4]);
    v13 = a3(a1[5], a2);
    v12 = a3(a1[6], a2);

    *a4 = v16;
    a4[1] = v15;
    a4[2] = v14;
    a4[3] = v10;
    a4[4] = v11;
    a4[5] = v13;
    a4[6] = v12;
  }
}

void *sub_22F3577B0(uint64_t a1)
{
  v2 = type metadata accessor for Song();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *(a1 + 16);
  if (!v7)
  {
    return MEMORY[0x277D84F90];
  }

  v29 = sub_22F73F7C0();
  v8 = *(v29 - 8);
  v9 = *(v8 + 56);
  v27[1] = v8 + 56;
  v28 = v9;
  v10 = (a1 + 40);
  v11 = MEMORY[0x277D84F90];
  do
  {
    v12 = *(v10 - 1);
    v13 = *v10;
    v28(&v6[v2[15]], 1, 1, v29);
    v14 = v2[16];
    v15 = sub_22F73F690();
    (*(*(v15 - 8) + 56))(&v6[v14], 1, 1, v15);
    *v6 = v12;
    *(v6 + 1) = v13;
    *(v6 + 1) = 0u;
    *(v6 + 2) = 0u;
    *(v6 + 3) = 0u;
    *(v6 + 8) = 0;
    v6[72] = 2;
    *(v6 + 10) = 0;
    v6[88] = 1;
    *(v6 + 23) = 0;
    v6[96] = 1;
    *(v6 + 104) = 0u;
    *(v6 + 120) = 0u;
    *(v6 + 136) = 0u;
    v16 = &v6[v2[26]];
    *v16 = 1;
    *(v16 + 24) = 0u;
    *(v16 + 37) = 0;
    *(v16 + 8) = 0u;
    *&v6[v2[17]] = 0;
    v17 = &v6[v2[18]];
    *v17 = 0;
    v17[4] = 1;
    v18 = &v6[v2[19]];
    *v18 = 0;
    v18[4] = 1;
    v19 = &v6[v2[20]];
    *v19 = 0;
    v19[4] = 1;
    v20 = &v6[v2[21]];
    *v20 = 0;
    v20[4] = 1;
    v21 = &v6[v2[22]];
    *v21 = 0;
    v21[4] = 1;
    v22 = &v6[v2[23]];
    *v22 = 0;
    v22[4] = 1;
    v6[v2[24]] = 2;
    v23 = &v6[v2[25]];
    *v23 = 0;
    *(v23 + 1) = 0;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_22F13E558(0, v11[2] + 1, 1, v11);
    }

    v25 = v11[2];
    v24 = v11[3];
    if (v25 >= v24 >> 1)
    {
      v11 = sub_22F13E558(v24 > 1, v25 + 1, 1, v11);
    }

    v11[2] = v25 + 1;
    sub_22F15CB04(v6, v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v25);
    v10 += 2;
    --v7;
  }

  while (v7);
  return v11;
}

id sub_22F357A90(uint64_t a1)
{
  if (*(a1 + 16) && (v2 = sub_22F1229E8(0xD000000000000014, 0x800000022F799190), (v3 & 1) != 0))
  {
    sub_22F13A100(*(a1 + 56) + 32 * v2, v39);
  }

  else
  {
    memset(v39, 0, sizeof(v39));
  }

  sub_22F1BCD04(v39, &v37);
  if (*(&v38 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    if (swift_dynamicCast())
    {
      v4 = v35;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    sub_22F120ADC(&v37, &qword_27DAB0C28, &qword_22F778980);
    v4 = 0;
  }

  v5 = sub_22F3577B0(v4);

  if (*(a1 + 16) && (v6 = sub_22F1229E8(0x726F46636973756DLL, 0xEB00000000756F59), (v7 & 1) != 0))
  {
    sub_22F13A100(*(a1 + 56) + 32 * v6, &v37);
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  sub_22F1BCD04(&v37, &v35);
  if (*(&v36 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    if (swift_dynamicCast())
    {
      v8 = v33;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    sub_22F120ADC(&v35, &qword_27DAB0C28, &qword_22F778980);
    v8 = 0;
  }

  v9 = sub_22F3577B0(v8);

  if (*(a1 + 16) && (v10 = sub_22F1229E8(0xD000000000000010, 0x800000022F7991C0), (v11 & 1) != 0))
  {
    sub_22F13A100(*(a1 + 56) + 32 * v10, &v35);
  }

  else
  {
    v36 = 0u;
    v35 = 0u;
  }

  sub_22F1BCD04(&v35, &v33);
  if (*(&v34 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    if (swift_dynamicCast())
    {
      v12 = v31;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    sub_22F120ADC(&v33, &qword_27DAB0C28, &qword_22F778980);
    v12 = 0;
  }

  v13 = sub_22F3577B0(v12);

  if (*(a1 + 16) && (v14 = sub_22F1229E8(0x726F46636973756DLL, 0xEC000000656D6954), (v15 & 1) != 0))
  {
    sub_22F13A100(*(a1 + 56) + 32 * v14, &v33);
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  sub_22F1BCD04(&v33, &v31);
  if (*(&v32 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    if (swift_dynamicCast())
    {
      v16 = v30[0];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    sub_22F120ADC(&v31, &qword_27DAB0C28, &qword_22F778980);
    v16 = 0;
  }

  v17 = sub_22F3577B0(v16);

  if (*(a1 + 16) && (v18 = sub_22F1229E8(0xD000000000000011, 0x800000022F7924F0), (v19 & 1) != 0))
  {
    sub_22F13A100(*(a1 + 56) + 32 * v18, &v31);
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  sub_22F1BCD04(&v31, v30);
  if (v30[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    if (swift_dynamicCast())
    {
      v20 = v28;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    sub_22F120ADC(v30, &qword_27DAB0C28, &qword_22F778980);
    v20 = 0;
  }

  v21 = sub_22F3577B0(v20);

  v22 = type metadata accessor for MusicCuration();
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR___PGMusicCuration_curatorVersion] = 2;
  *&v23[OBJC_IVAR___PGMusicCuration_bestMusicSuggestions] = v5;
  *&v23[OBJC_IVAR___PGMusicCuration_musicForYou] = v9;
  *&v23[OBJC_IVAR___PGMusicCuration_musicForLocation] = v13;
  *&v23[OBJC_IVAR___PGMusicCuration_musicForTime] = v17;
  *&v23[OBJC_IVAR___PGMusicCuration_musicForPerformer] = v21;
  v24 = &v23[OBJC_IVAR___PGMusicCuration_musicCurationInfo];
  v25 = MEMORY[0x277D84F90];
  *v24 = MEMORY[0x277D84F90];
  *(v24 + 1) = 0;
  *(v24 + 2) = 0;
  *&v23[OBJC_IVAR___PGMusicCuration_musicCurationDebugInfo] = v25;
  v29.receiver = v23;
  v29.super_class = v22;
  v26 = objc_msgSendSuper2(&v29, sel_init);
  sub_22F120ADC(&v31, &qword_27DAB0C28, &qword_22F778980);
  sub_22F120ADC(&v33, &qword_27DAB0C28, &qword_22F778980);
  sub_22F120ADC(&v35, &qword_27DAB0C28, &qword_22F778980);
  sub_22F120ADC(&v37, &qword_27DAB0C28, &qword_22F778980);
  sub_22F120ADC(v39, &qword_27DAB0C28, &qword_22F778980);
  return v26;
}

id _s11PhotosGraph12MusicCuratorC13emptyCurationAA0cF0CyFZ_0()
{
  v0 = type metadata accessor for MusicCuration();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR___PGMusicCuration_curatorVersion] = 2;
  v2 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR___PGMusicCuration_bestMusicSuggestions] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR___PGMusicCuration_musicForYou] = v2;
  *&v1[OBJC_IVAR___PGMusicCuration_musicForLocation] = v2;
  *&v1[OBJC_IVAR___PGMusicCuration_musicForTime] = v2;
  *&v1[OBJC_IVAR___PGMusicCuration_musicForPerformer] = v2;
  v3 = &v1[OBJC_IVAR___PGMusicCuration_musicCurationInfo];
  *v3 = v2;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *&v1[OBJC_IVAR___PGMusicCuration_musicCurationDebugInfo] = v2;
  v5.receiver = v1;
  v5.super_class = v0;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_22F358104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22F73F690();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  sub_22F73F640();
  v13(a2, v11, a4);
  return (*(v8 + 8))(v11, v7);
}

void sub_22F358208(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10E0, &unk_22F771530) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22F3F65D0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_22F35878C(v5);
  *a1 = v3;
}

uint64_t sub_22F3582BC(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22F3F65F8(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_22F3588D0(v5);
  *a1 = v2;
  return result;
}

uint64_t MomentSampler.SamplingStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  return sub_22F7421D0();
}

uint64_t sub_22F3583B0(uint64_t a1, void *a2, _BYTE *a3)
{
  if (*a3)
  {
    if (*a3 == 1)
    {

      return sub_22F35A52C(a1, a2);
    }

    else
    {
      v7 = a1 / 2;
      v9 = sub_22F35A52C(a1 / 2, a2);
      v10 = [a2 collectionBySubtracting_];
      swift_beginAccess();
      v11 = sub_22F35AA00(v7, v10);
      swift_endAccess();
      v12 = [v9 collectionByFormingUnionWith_];

      return v12;
    }
  }

  else
  {
    swift_beginAccess();
    v6 = sub_22F35AA00(a1, a2);
    swift_endAccess();
    return v6;
  }
}

uint64_t sub_22F358504(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v8 = sub_22F73F690();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a2, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  return sub_22F121FF8(v7, a1);
}

unint64_t sub_22F35860C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{

  v9 = *a5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *a5;
  *a5 = 0x8000000000000000;
  result = sub_22F1319BC(a2, a3, a1, isUniquelyReferenced_nonNull_native);
  *a5 = v12;
  return result;
}

uint64_t MomentSampler.deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph13MomentSampler_rng;
  v2 = sub_22F740840();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MomentSampler.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph13MomentSampler_rng;
  v2 = sub_22F740840();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_22F35878C(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22F742000();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10E0, &unk_22F771530);
        v6 = sub_22F741200();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10E0, &unk_22F771530) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22F358CC4(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22F3589D8(0, v2, 1, a1);
  }
}

uint64_t sub_22F3588D0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22F742000();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10D0, &unk_22F771520);
        v5 = sub_22F741200();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22F359530(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22F358BE4(0, v2, 1, a1);
  }

  return result;
}

void sub_22F3589D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10E0, &unk_22F771530);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  MEMORY[0x28223BE20](v15);
  v18 = &v28 - v17;
  v30 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v35 = v19;
    v29 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v33 = v21;
    v34 = a3;
    v31 = v24;
    v32 = v23;
    while (1)
    {
      sub_22F35AFCC(v24, v18);
      sub_22F35AFCC(v21, v14);
      v25 = *(v8 + 48);
      v26 = sub_22F73F5D0();
      sub_22F35B0AC(v14);
      sub_22F35B0AC(v18);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v21 = v33 + v29;
        v23 = v32 - 1;
        v24 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      sub_22F35B03C(v24, v11);
      swift_arrayInitWithTakeFrontToBack();
      sub_22F35B03C(v11, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22F358BE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
LABEL_5:
    v9 = v6 + 24 * v4;
    result = *(v9 + 8);
    v10 = *(v9 + 16);
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 + 8) && v10 == *(v12 + 16);
      if (v13 || (result = sub_22F742040(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 24;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *(v12 + 32);
      v10 = *(v12 + 40);
      v15 = *(v12 + 16);
      v14 = *(v12 + 24);
      *(v12 + 24) = *v12;
      *(v12 + 40) = v15;
      *v12 = v14;
      *(v12 + 8) = result;
      *(v12 + 16) = v10;
      v12 -= 24;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22F358CC4(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v106 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10E0, &unk_22F771530);
  v114 = *(v9 - 8);
  v10 = *(v114 + 64);
  MEMORY[0x28223BE20](v9);
  v108 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v117 = &v103 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v103 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v103 - v18;
  v116 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_97:
    v5 = *v106;
    if (!*v106)
    {
      goto LABEL_136;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v98 = a4;
LABEL_100:
      v119 = v98;
      a4 = *(v98 + 2);
      if (a4 >= 2)
      {
        while (*v116)
        {
          v99 = *&v98[16 * a4];
          v100 = v98;
          v101 = *&v98[16 * a4 + 24];
          sub_22F359B30(*v116 + *(v114 + 72) * v99, *v116 + *(v114 + 72) * *&v98[16 * a4 + 16], *v116 + *(v114 + 72) * v101, v5);
          if (v6)
          {
            goto LABEL_108;
          }

          if (v101 < v99)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v100 = sub_22F3F5F98(v100);
          }

          if (a4 - 2 >= *(v100 + 2))
          {
            goto LABEL_124;
          }

          v102 = &v100[16 * a4];
          *v102 = v99;
          *(v102 + 1) = v101;
          v119 = v100;
          sub_22F3F5F0C(a4 - 1);
          v98 = v119;
          a4 = *(v119 + 2);
          if (a4 <= 1)
          {
            goto LABEL_108;
          }
        }

        goto LABEL_134;
      }

LABEL_108:

      return;
    }

LABEL_130:
    v98 = sub_22F3F5F98(a4);
    goto LABEL_100;
  }

  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  v105 = a4;
  v118 = v9;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v109 = v22;
    if (v24 >= v20)
    {
      v20 = v24;
    }

    else
    {
      v25 = *v116;
      v26 = v23;
      v27 = *(v114 + 72);
      v5 = *v116 + v27 * v24;
      sub_22F35AFCC(v5, v19);
      sub_22F35AFCC(v25 + v27 * v26, v16);
      v28 = *(v9 + 48);
      LODWORD(v113) = sub_22F73F5D0();
      sub_22F35B0AC(v16);
      sub_22F35B0AC(v19);
      v104 = v26;
      v29 = v26 + 2;
      v115 = v27;
      v30 = v25 + v27 * v29;
      v31 = v113;
      while (v20 != v29)
      {
        sub_22F35AFCC(v30, v19);
        sub_22F35AFCC(v5, v16);
        v32 = *(v118 + 48);
        v33 = sub_22F73F5D0() & 1;
        sub_22F35B0AC(v16);
        sub_22F35B0AC(v19);
        ++v29;
        v30 += v115;
        v5 += v115;
        if ((v31 & 1) != v33)
        {
          v34 = v31;
          v20 = v29 - 1;
          goto LABEL_11;
        }
      }

      v34 = v31;
LABEL_11:
      v23 = v104;
      a4 = v105;
      v9 = v118;
      if (v34)
      {
        if (v20 < v104)
        {
          goto LABEL_127;
        }

        if (v104 < v20)
        {
          v103 = v6;
          v35 = v115 * (v20 - 1);
          v36 = v20 * v115;
          v113 = v20;
          v37 = v20;
          v38 = v104;
          v39 = v104 * v115;
          do
          {
            if (v38 != --v37)
            {
              v40 = *v116;
              if (!*v116)
              {
                goto LABEL_133;
              }

              v5 = v40 + v39;
              sub_22F35B03C(v40 + v39, v108);
              if (v39 < v35 || v5 >= v40 + v36)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v39 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_22F35B03C(v108, v40 + v35);
            }

            ++v38;
            v35 -= v115;
            v36 -= v115;
            v39 += v115;
          }

          while (v38 < v37);
          v6 = v103;
          v23 = v104;
          a4 = v105;
          v9 = v118;
          v20 = v113;
        }
      }
    }

    v41 = v116[1];
    if (v20 >= v41)
    {
      goto LABEL_34;
    }

    if (__OFSUB__(v20, v23))
    {
      goto LABEL_126;
    }

    if (v20 - v23 >= a4)
    {
LABEL_34:
      v43 = v20;
      if (v20 < v23)
      {
        goto LABEL_125;
      }

      goto LABEL_35;
    }

    if (__OFADD__(v23, a4))
    {
      goto LABEL_128;
    }

    if ((v23 + a4) >= v41)
    {
      v42 = v116[1];
    }

    else
    {
      v42 = v23 + a4;
    }

    if (v42 < v23)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v20 == v42)
    {
      goto LABEL_34;
    }

    v103 = v6;
    v104 = v23;
    a4 = *v116;
    v88 = *(v114 + 72);
    v89 = *v116 + v88 * (v20 - 1);
    v90 = v20;
    v91 = -v88;
    v92 = v23 - v90;
    v113 = v90;
    v107 = v88;
    v5 = a4 + v90 * v88;
    v110 = v42;
LABEL_87:
    v111 = v5;
    v112 = v92;
    v115 = v89;
    v93 = v89;
LABEL_88:
    sub_22F35AFCC(v5, v19);
    sub_22F35AFCC(v93, v16);
    v94 = *(v9 + 48);
    v95 = sub_22F73F5D0();
    sub_22F35B0AC(v16);
    sub_22F35B0AC(v19);
    if (v95)
    {
      break;
    }

    v9 = v118;
LABEL_86:
    v89 = v115 + v107;
    v92 = v112 - 1;
    v43 = v110;
    v5 = v111 + v107;
    if (++v113 != v110)
    {
      goto LABEL_87;
    }

    v6 = v103;
    v23 = v104;
    if (v110 < v104)
    {
      goto LABEL_125;
    }

LABEL_35:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v22 = v109;
    }

    else
    {
      v22 = sub_22F13D970(0, *(v109 + 2) + 1, 1, v109);
    }

    a4 = *(v22 + 2);
    v44 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v44 >> 1)
    {
      v22 = sub_22F13D970((v44 > 1), a4 + 1, 1, v22);
    }

    *(v22 + 2) = v5;
    v45 = &v22[16 * a4];
    *(v45 + 4) = v23;
    *(v45 + 5) = v43;
    v46 = *v106;
    if (!*v106)
    {
      goto LABEL_135;
    }

    v110 = v43;
    if (a4)
    {
      while (2)
      {
        v47 = v5 - 1;
        if (v5 >= 4)
        {
          v52 = &v22[16 * v5 + 32];
          v53 = *(v52 - 64);
          v54 = *(v52 - 56);
          v58 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          if (v58)
          {
            goto LABEL_112;
          }

          v57 = *(v52 - 48);
          v56 = *(v52 - 40);
          v58 = __OFSUB__(v56, v57);
          v50 = v56 - v57;
          v51 = v58;
          if (v58)
          {
            goto LABEL_113;
          }

          v59 = &v22[16 * v5];
          v61 = *v59;
          v60 = *(v59 + 1);
          v58 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v58)
          {
            goto LABEL_115;
          }

          v58 = __OFADD__(v50, v62);
          v63 = v50 + v62;
          if (v58)
          {
            goto LABEL_118;
          }

          if (v63 >= v55)
          {
            v81 = &v22[16 * v47 + 32];
            v83 = *v81;
            v82 = *(v81 + 1);
            v58 = __OFSUB__(v82, v83);
            v84 = v82 - v83;
            if (v58)
            {
              goto LABEL_122;
            }

            if (v50 < v84)
            {
              v47 = v5 - 2;
            }
          }

          else
          {
LABEL_54:
            if (v51)
            {
              goto LABEL_114;
            }

            v64 = &v22[16 * v5];
            v66 = *v64;
            v65 = *(v64 + 1);
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_117;
            }

            v70 = &v22[16 * v47 + 32];
            v72 = *v70;
            v71 = *(v70 + 1);
            v58 = __OFSUB__(v71, v72);
            v73 = v71 - v72;
            if (v58)
            {
              goto LABEL_120;
            }

            if (__OFADD__(v68, v73))
            {
              goto LABEL_121;
            }

            if (v68 + v73 < v50)
            {
              goto LABEL_68;
            }

            if (v50 < v73)
            {
              v47 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v48 = *(v22 + 4);
            v49 = *(v22 + 5);
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
            goto LABEL_54;
          }

          v74 = &v22[16 * v5];
          v76 = *v74;
          v75 = *(v74 + 1);
          v58 = __OFSUB__(v75, v76);
          v68 = v75 - v76;
          v69 = v58;
LABEL_68:
          if (v69)
          {
            goto LABEL_116;
          }

          v77 = &v22[16 * v47];
          v79 = *(v77 + 4);
          v78 = *(v77 + 5);
          v58 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v58)
          {
            goto LABEL_119;
          }

          if (v80 < v68)
          {
            break;
          }
        }

        a4 = v47 - 1;
        if (v47 - 1 >= v5)
        {
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
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*v116)
        {
          goto LABEL_132;
        }

        v85 = v22;
        v86 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v47 + 40];
        sub_22F359B30(*v116 + *(v114 + 72) * v86, *v116 + *(v114 + 72) * *&v22[16 * v47 + 32], *v116 + *(v114 + 72) * v5, v46);
        if (v6)
        {
          goto LABEL_108;
        }

        if (v5 < v86)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_22F3F5F98(v85);
        }

        if (a4 >= *(v85 + 2))
        {
          goto LABEL_111;
        }

        v87 = &v85[16 * a4];
        *(v87 + 4) = v86;
        *(v87 + 5) = v5;
        v119 = v85;
        sub_22F3F5F0C(v47);
        v22 = v119;
        v5 = *(v119 + 2);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v20 = v116[1];
    v21 = v110;
    a4 = v105;
    v9 = v118;
    if (v110 >= v20)
    {
      goto LABEL_97;
    }
  }

  if (a4)
  {
    v96 = v117;
    sub_22F35B03C(v5, v117);
    v9 = v118;
    swift_arrayInitWithTakeFrontToBack();
    sub_22F35B03C(v96, v93);
    v93 += v91;
    v5 += v91;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_86;
    }

    goto LABEL_88;
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

uint64_t sub_22F359530(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v98 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_105:
    v98 = *v98;
    if (!v98)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_22F3F5F98(v8);
      v8 = result;
    }

    v89 = v8 + 16;
    v90 = *(v8 + 2);
    if (v90 >= 2)
    {
      while (1)
      {
        v91 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v92 = &v8[16 * v90];
        v5 = *v92;
        v93 = &v89[2 * v90];
        v94 = v93[1];
        sub_22F359FC4((v91 + 24 * *v92), (v91 + 24 * *v93), v91 + 24 * v94, v98);
        if (v4)
        {
        }

        if (v94 < v5)
        {
          goto LABEL_129;
        }

        if (v90 - 2 >= *v89)
        {
          goto LABEL_130;
        }

        *v92 = v5;
        *(v92 + 1) = v94;
        v95 = *v89 - v90;
        if (*v89 < v90)
        {
          goto LABEL_131;
        }

        v90 = *v89 - 1;
        result = memmove(v93, v93 + 2, 16 * v95);
        *v89 = v90;
        v5 = a3;
        if (v90 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = *v5 + 24 * v7;
      result = *(v11 + 8);
      v12 = *(v11 + 16);
      v13 = *v5 + 24 * v9;
      if (result == *(v13 + 8) && v12 == *(v13 + 16))
      {
        v15 = 0;
      }

      else
      {
        result = sub_22F742040();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 24 * v9 + 64);
        do
        {
          result = *(v16 - 1);
          if (result == *(v16 - 4) && *v16 == *(v16 - 3))
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_22F742040();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          v16 += 3;
          ++v7;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v18 = 0;
          v19 = 24 * v7;
          v20 = 24 * v9;
          v21 = v9;
          do
          {
            if (v21 != v7 + v18 - 1)
            {
              v27 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v22 = (v27 + v20);
              v23 = v27 + v19;
              v24 = *(v22 + 2);
              v25 = *v22;
              v26 = *(v23 - 8);
              *v22 = *(v23 - 24);
              *(v22 + 2) = v26;
              *(v23 - 24) = v25;
              *(v23 - 8) = v24;
            }

            ++v21;
            --v18;
            v19 -= 24;
            v20 += 24;
          }

          while (v21 < v7 + v18);
        }
      }
    }

    v28 = v5[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v28)
        {
          v29 = v5[1];
        }

        else
        {
          v29 = v9 + a4;
        }

        if (v29 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v29)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22F13D970(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v43 = *(v8 + 2);
    v42 = *(v8 + 3);
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = sub_22F13D970((v42 > 1), v43 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v44;
    v45 = &v8[16 * v43];
    *(v45 + 4) = v9;
    *(v45 + 5) = v7;
    v46 = *v98;
    if (!*v98)
    {
      goto LABEL_142;
    }

    if (v43)
    {
      while (1)
      {
        v47 = v44 - 1;
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v48 = *(v8 + 4);
          v49 = *(v8 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_74:
          if (v51)
          {
            goto LABEL_120;
          }

          v64 = &v8[16 * v44];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_123;
          }

          v70 = &v8[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_127;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v44 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v74 = &v8[16 * v44];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_88:
        if (v69)
        {
          goto LABEL_122;
        }

        v77 = &v8[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_125;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_95:
        v85 = v47 - 1;
        if (v47 - 1 >= v44)
        {
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
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v86 = *&v8[16 * v85 + 32];
        v87 = *&v8[16 * v47 + 40];
        sub_22F359FC4((*v5 + 24 * v86), (*v5 + 24 * *&v8[16 * v47 + 32]), *v5 + 24 * v87, v46);
        if (v4)
        {
        }

        if (v87 < v86)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22F3F5F98(v8);
        }

        if (v85 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v88 = &v8[16 * v85];
        *(v88 + 4) = v86;
        *(v88 + 5) = v87;
        result = sub_22F3F5F0C(v47);
        v44 = *(v8 + 2);
        if (v44 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v8[16 * v44 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_118;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_119;
      }

      v59 = &v8[16 * v44];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_121;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_124;
      }

      if (v63 >= v55)
      {
        v81 = &v8[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_128;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v30 = *v5;
  v31 = *v5 + 24 * v7 - 24;
  v96 = v9;
  v32 = v9 - v7;
LABEL_43:
  v33 = v30 + 24 * v7;
  v34 = *(v33 + 8);
  v35 = *(v33 + 16);
  v36 = v32;
  v37 = v31;
  while (1)
  {
    v38 = v34 == *(v37 + 8) && v35 == *(v37 + 16);
    if (v38 || (result = sub_22F742040(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v31 += 24;
      --v32;
      if (v7 != v29)
      {
        goto LABEL_43;
      }

      v7 = v29;
      v5 = a3;
      v9 = v96;
      goto LABEL_54;
    }

    if (!v30)
    {
      break;
    }

    v34 = *(v37 + 32);
    v35 = *(v37 + 40);
    v40 = *(v37 + 16);
    v39 = *(v37 + 24);
    *(v37 + 24) = *v37;
    *(v37 + 40) = v40;
    *v37 = v39;
    *(v37 + 8) = v34;
    *(v37 + 16) = v35;
    v37 -= 24;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}
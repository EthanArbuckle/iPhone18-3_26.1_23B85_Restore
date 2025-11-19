uint64_t sub_26D390CB4()
{
  v1 = sub_26D3A0018();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v35 - v8;
  v10 = sub_26D3A0E98();
  MEMORY[0x28223BE20](v10, v11);
  if (qword_2804FAD40 != -1)
  {
    swift_once();
  }

  if (byte_2804FFF98 == 1)
  {
    sub_26D3A0E88();
    return sub_26D3A00D8();
  }

  v13 = *(v0 + 16);
  v14 = *(v0 + 24);
  if ((sub_26D33CD0C(v13, v14) - 2) < 3u)
  {
    v15 = *(v0 + 2);
    if ((v15 & 1) == 0)
    {
      sub_26D33CD0C(v13, v14);
    }

    type metadata accessor for TFComponentBackground(0);
    sub_26D33D8A4(v9);
    (*(v2 + 104))(v6, *MEMORY[0x277CDF3C0], v1);
    v31 = sub_26D3A0008();
    v32 = *(v2 + 8);
    v32(v6, v1);
    v32(v9, v1);
    if (v31)
    {
      sub_26D3A0C78();
      v33 = sub_26D3A0C68();

      v36 = v33;
    }

    else
    {
      v34 = 0.85;
      if (v15)
      {
        v34 = 0.7;
      }

      *&v36 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCCC0);
      sub_26D3484AC(&qword_2804FCCC8, &qword_2804FCCC0);
    }

    return sub_26D3A00D8();
  }

  v16 = v0 + *(type metadata accessor for TFComponentBackground(0) + 56);
  v17 = *v16;
  v18 = *(v16 + 8);
  v19 = sub_26D33D0B8(*v16, v18);
  v20 = objc_opt_self();
  v21 = &selRef_secondarySystemFillColor;
  if ((v19 & 1) == 0)
  {
    v21 = &selRef_tertiarySystemFillColor;
  }

  v22 = [v20 *v21];
  v23 = sub_26D33D0B8(v17, v18);
  v24 = objc_opt_self();
  v25 = &selRef_quaternarySystemFillColor;
  if (v23)
  {
    v25 = &selRef_tertiarySystemFillColor;
  }

  v26 = [v24 *v25];
  v27 = v26;
  if (*(v0 + 2))
  {
    v28 = v26;
  }

  else
  {
    v28 = v22;
  }

  v29 = v28;
  v36 = sub_26D3A0C18();
  v30 = sub_26D3A00D8();

  return v30;
}

uint64_t sub_26D3910F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC3D8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804FC3E0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_26D391240(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC3D8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804FC3E0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_26D39139C()
{
  sub_26D393364(319, &qword_2804FC400, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_26D393364(319, &qword_2804FC408, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_26D393314(319, &qword_2804FC410, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_26D393314(319, &qword_2804FC418, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_26D393314(319, &unk_2804FC420, &type metadata for TFUIConfig, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_26D391568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_26D3A0648();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_26D391634(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_26D3A0648();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26D3916F8()
{
  sub_26D393314(319, &qword_2804FC440, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_26D3A0648();
    if (v1 <= 0x3F)
    {
      sub_26D393314(319, &unk_2804FC420, &type metadata for TFUIConfig, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_26D391E78(319, &qword_2804FC448, qword_2804FC450, "\nT", MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26D391848(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_26D391890(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_26D3918E4()
{
  type metadata accessor for TFButton.Sizing();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_26D391E28();
      if (v2 <= 0x3F)
      {
        sub_26D391E78(319, &qword_2804FC4E8, &qword_2804FC4F0, &unk_26D3A4FE0, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_26D391E78(319, &qword_2804FC4F8, qword_2804FC500, &unk_26D3A4FE8, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_26D393314(319, &unk_2804FC420, &type metadata for TFUIConfig, MEMORY[0x277CDF468]);
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

uint64_t sub_26D391A5C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((((((v8 + ((v6 + 4) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v10 = (a2 - v7 + 255) >> 8;
  if (v9 <= 3)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 2;
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
      v14 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *&a1[v9];
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = a1[v9]) == 0)
  {
LABEL_28:
    v18 = &a1[v6 + 4] & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v16 = (v14 - 1) << (8 * v9);
  if (v9 <= 3)
  {
    v17 = *a1;
  }

  else
  {
    v16 = 0;
    v17 = *a1;
  }

  return v7 + (v17 | v16) + 1;
}

void sub_26D391BE4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v11 = ((((((((v10 + ((v9 + 4) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v15 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = (a3 - v8 + 255) >> 8;
    if (v11 <= 3)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v11] = 0;
      }

      else if (v15)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      v18 = &a1[v9 + 4] & ~v9;
      if (v7 < 0x7FFFFFFF)
      {
        v20 = ((v10 + v18) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v20 = a2 & 0x7FFFFFFF;
          v20[1] = 0;
        }

        else
        {
          *v20 = a2 - 1;
        }
      }

      else
      {
        v19 = *(v6 + 56);

        v19(v18);
      }

      return;
    }
  }

  v16 = ~v8 + a2;
  bzero(a1, ((((((((v10 + ((v9 + 4) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v11 <= 3)
  {
    v17 = (v16 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v11 <= 3)
  {
    *a1 = v16;
    if (v15 > 1)
    {
LABEL_27:
      if (v15 == 2)
      {
        *&a1[v11] = v17;
      }

      else
      {
        *&a1[v11] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v15 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v15)
  {
    a1[v11] = v17;
  }
}

unint64_t sub_26D391E28()
{
  result = qword_2804FC4E0;
  if (!qword_2804FC4E0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2804FC4E0);
  }

  return result;
}

void sub_26D391E78(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_26D391EE4(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_26D391F74(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26D392038(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_26D392094(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_26D39210C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26D3A0648();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26D3921CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_26D3A0648();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26D392290()
{
  sub_26D393314(319, &qword_2804FC440, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_26D393314(319, qword_2804FC5A0, MEMORY[0x277CDF6A8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_26D3A0648();
      if (v2 <= 0x3F)
      {
        sub_26D391E78(319, &qword_2804FC448, qword_2804FC450, "\nT", MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_26D393314(319, &qword_2804FC410, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26D39241C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_26D393314(319, &unk_2804FC630, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_26D393314(319, &qword_2804FC418, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_26D393314(319, &unk_2804FC420, &type metadata for TFUIConfig, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_26D393314(319, &qword_2804FC410, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_26D39257C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
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

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }

LABEL_24:
    v15 = (v13 - 1) << (8 * v8);
    if (v8 <= 3)
    {
      v16 = *a1;
    }

    else
    {
      v15 = 0;
      v16 = *a1;
    }

    return v7 + (v16 | v15) + 1;
  }

  if (v12)
  {
    v13 = a1[v8];
    if (a1[v8])
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  if (v5 >= 0x7FFFFFFE)
  {
    return (*(v4 + 48))();
  }

  v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  v18 = v17 - 1;
  if (v18 < 0)
  {
    v18 = -1;
  }

  return (v18 + 1);
}

void sub_26D3926E4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
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

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFE)
      {
        v18 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v18 = a2 - 0x7FFFFFFF;
          v18[1] = 0;
        }

        else
        {
          v18[1] = a2;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_26D392904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26D3A0648();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_26D3929DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26D3A0648();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

void sub_26D392ABC()
{
  sub_26D393314(319, &qword_2804FC440, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_26D3A0648();
    if (v1 <= 0x3F)
    {
      sub_26D393314(319, qword_2804FC650, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_26D393314(319, &unk_2804FC420, &type metadata for TFUIConfig, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26D392BF0()
{
  sub_26D393314(319, &qword_2804FC6E0, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_26D393364(319, &qword_2804FC6E8, MEMORY[0x277CDD750], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_26D393314(319, &qword_2804FC418, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_26D393314(319, &unk_2804FC420, &type metadata for TFUIConfig, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_26D393314(319, &qword_2804FC410, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_26D393314(319, &unk_2804FC630, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_26D392DE0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_26D3A0078() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 80);
  v13 = *(v10 + 80);
  if (v9 <= v11)
  {
    v14 = *(v10 + 84);
  }

  else
  {
    v14 = v9;
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  if (v8)
  {
    v15 = *(v6 + 64);
  }

  else
  {
    v15 = *(v6 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(v10 + 64) + 55;
  if (v14 < a2)
  {
    v17 = ((v16 + ((v15 + ((v12 + 12) & ~v12) + v13) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 16;
    v18 = v17 & 0xFFFFFFF8;
    if ((v17 & 0xFFFFFFF8) != 0)
    {
      v19 = 2;
    }

    else
    {
      v19 = a2 - v14 + 1;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = *(a1 + v17);
        if (v22)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v22 = *(a1 + v17);
        if (v22)
        {
          goto LABEL_28;
        }
      }
    }

    else if (v21)
    {
      v22 = *(a1 + v17);
      if (v22)
      {
LABEL_28:
        v23 = v22 - 1;
        if (v18)
        {
          v23 = 0;
          LODWORD(v18) = *a1;
        }

        v24 = v14 + (v18 | v23);
        return (v24 + 1);
      }
    }
  }

  if (v9 == v14)
  {
    if (v8 < 2)
    {
      return 0;
    }

    v28 = (*(v7 + 48))((a1 + v12 + 12) & ~v12);
    if (v28 >= 2)
    {
      return v28 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v26 = (((a1 + v12 + 12) & ~v12) + v15 + v13) & ~v13;
    if (v11 != v14)
    {
      v29 = *(((v16 + v26) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v29 >= 0xFFFFFFFF)
      {
        LODWORD(v29) = -1;
      }

      v24 = v29 - 1;
      if (v24 < 0)
      {
        v24 = -1;
      }

      return (v24 + 1);
    }

    v27 = *(v10 + 48);

    return v27(v26, v11);
  }
}

void sub_26D393044(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_26D3A0078() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  v11 = *(*(a4 + 16) - 8);
  if (v10)
  {
    v12 = v10 - 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(*(a4 + 16) - 8);
  v14 = *(v11 + 84);
  v15 = *(v8 + 80);
  v16 = *(v8 + 64);
  v17 = *(v11 + 80);
  v18 = *(v11 + 64);
  if (v12 <= v14)
  {
    v19 = *(v11 + 84);
  }

  else
  {
    v19 = v12;
  }

  if (v19 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  if (v10)
  {
    v20 = v16;
  }

  else
  {
    v20 = v16 + 1;
  }

  v21 = v18 + 55;
  v22 = ((v21 + ((v20 + ((v15 + 12) & ~v15) + v17) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v21 + ((v20 + ((v15 + 12) & ~v15) + v17) & ~v17)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v23 = a3 - v19 + 1;
  }

  else
  {
    v23 = 2;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v19 < a3)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (a2 > v19)
  {
    if (((v21 + ((v20 + ((v15 + 12) & ~v15) + v17) & ~v17)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v27 = a2 - v19;
    }

    else
    {
      v27 = 1;
    }

    if (((v21 + ((v20 + ((v15 + 12) & ~v15) + v17) & ~v17)) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v28 = ~v19 + a2;
      bzero(a1, ((v21 + ((v20 + ((v15 + 12) & ~v15) + v17) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v28;
    }

    if (v26 > 1)
    {
      if (v26 == 2)
      {
        *(a1 + v22) = v27;
      }

      else
      {
        *(a1 + v22) = v27;
      }
    }

    else if (v26)
    {
      *(a1 + v22) = v27;
    }

    return;
  }

  if (v26 > 1)
  {
    if (v26 != 2)
    {
      *(a1 + v22) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }

    *(a1 + v22) = 0;
  }

  else if (v26)
  {
    *(a1 + v22) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_44;
  }

  if (!a2)
  {
    return;
  }

LABEL_44:
  if (v12 == v19)
  {
    v29 = *(v9 + 56);

    v29((a1 + v15 + 12) & ~v15, (a2 + 1));
  }

  else
  {
    v30 = (((a1 + v15 + 12) & ~v15) + v20 + v17) & ~v17;
    if (v14 == v19)
    {
      v31 = *(v13 + 56);

      v31(v30, a2, v14);
    }

    else
    {
      v32 = ((v21 + v30) & 0xFFFFFFFFFFFFFFF8);
      if (a2 > 0x7FFFFFFE)
      {
        *v32 = (a2 - 0x7FFFFFFF);
        v32[1] = 0;
      }

      else
      {
        v32[1] = a2;
      }
    }
  }
}

void sub_26D393314(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_26D393364(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26D393574()
{
  result = qword_2804FC710;
  if (!qword_2804FC710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC710);
  }

  return result;
}

unint64_t sub_26D3935C8()
{
  result = qword_2804FC730;
  if (!qword_2804FC730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC730);
  }

  return result;
}

uint64_t sub_26D39361C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26D39367C()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for TFComponent();
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = v0 + v4;
  v7 = v2[12];
  v8 = sub_26D3A0078();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v4 + v7, 1, v8))
  {
    (*(v9 + 8))(v6 + v7, v8);
  }

  (*(*(v1 - 8) + 8))(v6 + v2[13], v1);
  sub_26D34684C(*(v6 + v2[14]), *(v6 + v2[14] + 8));
  sub_26D34684C(*(v6 + v2[15]), *(v6 + v2[15] + 8));
  sub_26D34684C(*(v6 + v2[16]), *(v6 + v2[16] + 8));

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26D393830()
{
  type metadata accessor for TFComponent();

  return sub_26D3858CC();
}

unint64_t sub_26D3938BC()
{
  result = qword_2804FC758;
  if (!qword_2804FC758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC758);
  }

  return result;
}

unint64_t sub_26D393910()
{
  result = qword_2804FC760;
  if (!qword_2804FC760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC760);
  }

  return result;
}

unint64_t sub_26D393970()
{
  result = qword_2804FC7B0;
  if (!qword_2804FC7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC7B0);
  }

  return result;
}

uint64_t objectdestroy_78Tm()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for TFButton();
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v2 - 8) + 64);
  (*(*(v1 - 8) + 8))(v0 + v5 + *(v2 + 48), v1);

  sub_26D34684C(*(v0 + v5 + *(v3 + 72)), *(v0 + v5 + *(v3 + 72) + 8));

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

unint64_t sub_26D393BC0()
{
  result = qword_2804FC7C8;
  if (!qword_2804FC7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC768);
    sub_26D39361C(&qword_2804FC7D0, type metadata accessor for TFSymbol);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC7C8);
  }

  return result;
}

uint64_t sub_26D393C84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_26D393CF8()
{
  result = qword_2804FC858;
  if (!qword_2804FC858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC850);
    sub_26D39361C(&qword_2804FC860, type metadata accessor for TFLabel);
    sub_26D3484AC(&qword_2804FC868, &qword_2804FC870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC858);
  }

  return result;
}

unint64_t sub_26D393DE0()
{
  result = qword_2804FC8A8;
  if (!qword_2804FC8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC838);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC840);
    sub_26D3A0288();
    sub_26D3484AC(&unk_2804FC8B0, &qword_2804FC840);
    sub_26D39361C(&qword_2804FBA08, MEMORY[0x277CDDBD0]);
    swift_getOpaqueTypeConformance2();
    sub_26D393F2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC8A8);
  }

  return result;
}

unint64_t sub_26D393F2C()
{
  result = qword_2804FC8C0;
  if (!qword_2804FC8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC820);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC810);
    sub_26D3A0738();
    sub_26D394074();
    sub_26D39361C(&qword_2804FC7B8, MEMORY[0x277CDDFF8]);
    swift_getOpaqueTypeConformance2();
    sub_26D39361C(&qword_2804FC8E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC8C0);
  }

  return result;
}

unint64_t sub_26D394074()
{
  result = qword_2804FC8C8;
  if (!qword_2804FC8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC810);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC800);
    sub_26D39416C();
    swift_getOpaqueTypeConformance2();
    sub_26D39361C(&qword_2804FC8E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC8C8);
  }

  return result;
}

unint64_t sub_26D39416C()
{
  result = qword_2804FC8D0;
  if (!qword_2804FC8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC800);
    sub_26D394224();
    sub_26D3484AC(&qword_2804FC868, &qword_2804FC870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC8D0);
  }

  return result;
}

unint64_t sub_26D394224()
{
  result = qword_2804FC8D8;
  if (!qword_2804FC8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC7F8);
    sub_26D39361C(&qword_2804FC860, type metadata accessor for TFLabel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC8D8);
  }

  return result;
}

unint64_t sub_26D3942E0()
{
  result = qword_2804FC8E8;
  if (!qword_2804FC8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC7F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC7E0);
    sub_26D3484AC(&qword_2804FC878, &qword_2804FC7E0);
    sub_26D393970();
    swift_getOpaqueTypeConformance2();
    sub_26D39361C(&qword_2804FC8E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC8E8);
  }

  return result;
}

uint64_t objectdestroy_92Tm()
{
  v1 = (type metadata accessor for TFToggle(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_26D3A0648();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  sub_26D34684C(*(v0 + v3 + v1[11]), *(v0 + v3 + v1[11] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26D3945D4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26D39460C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26D3A0418();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26D394664@<X0>(_BYTE *a1@<X8>)
{
  sub_26D394738();
  result = sub_26D3A0518();
  *a1 = v3;
  return result;
}

uint64_t sub_26D394700@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26D3A0448();
  *a1 = result & 1;
  return result;
}

unint64_t sub_26D394738()
{
  result = qword_2804FC8F8;
  if (!qword_2804FC8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC8F8);
  }

  return result;
}

uint64_t sub_26D39478C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26D394820@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26D3A0448();
  *a1 = result & 1;
  return result;
}

unint64_t sub_26D394878()
{
  result = qword_2804FC928;
  if (!qword_2804FC928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC910);
    sub_26D394904();
    sub_26D37E938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC928);
  }

  return result;
}

unint64_t sub_26D394904()
{
  result = qword_2804FC930;
  if (!qword_2804FC930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC908);
    sub_26D394990();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC930);
  }

  return result;
}

unint64_t sub_26D394990()
{
  result = qword_2804FC938;
  if (!qword_2804FC938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC900);
    sub_26D3484AC(&qword_2804FC940, &qword_2804FC948);
    sub_26D3484AC(&unk_2804FC950, &qword_2804FB0D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC938);
  }

  return result;
}

uint64_t sub_26D394A74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCA28);
  MEMORY[0x28223BE20](v2 - 8, v3);
  sub_26D34856C(a1, &v6 - v4, &qword_2804FCA28);
  return sub_26D3A0408();
}

uint64_t sub_26D394B1C(uint64_t a1)
{
  v2 = sub_26D3A0988();
  MEMORY[0x28223BE20](v2, v3);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_26D3A0338();
}

uint64_t sub_26D394BE4@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x26D6BCCB0]();
  *a1 = result;
  return result;
}

uint64_t sub_26D394C3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC920);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26D394CB8()
{
  result = qword_2804FC988;
  if (!qword_2804FC988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC988);
  }

  return result;
}

uint64_t sub_26D394D0C()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for TFMenuLabel() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*v2 + 64);
  v6 = v0 + v4;
  (*(*(v1 - 8) + 8))(v0 + v4, v1);

  sub_26D34684C(*(v6 + v2[12]), *(v6 + v2[12] + 8));
  sub_26D34684C(*(v6 + v2[13]), *(v6 + v2[13] + 8));
  sub_26D34684C(*(v6 + v2[14]), *(v6 + v2[14] + 8));

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26D394E68(uint64_t (*a1)(void, uint64_t, uint64_t), uint64_t (*a2)(uint64_t, uint64_t, uint64_t, __n128, __n128, __n128, __n128), double a3, double a4, double a5, double a6)
{
  v11 = *(v6 + 16);
  v12 = *(v6 + 24);
  v13 = *(a1(0, v11, v12) - 8);
  v14 = v6 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v15.n128_f64[0] = a3;
  v16.n128_f64[0] = a4;
  v17.n128_f64[0] = a5;
  v18.n128_f64[0] = a6;

  return a2(v14, v11, v12, v15, v16, v17, v18);
}

unint64_t sub_26D394F38()
{
  result = qword_2804FC9A0;
  if (!qword_2804FC9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC968);
    sub_26D394FBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC9A0);
  }

  return result;
}

unint64_t sub_26D394FBC()
{
  result = qword_2804FC9A8;
  if (!qword_2804FC9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC998);
    sub_26D39361C(&qword_2804FC7D0, type metadata accessor for TFSymbol);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC9A8);
  }

  return result;
}

unint64_t sub_26D395078()
{
  result = qword_2804FC9B0;
  if (!qword_2804FC9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_2804FC450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC9B0);
  }

  return result;
}

unint64_t sub_26D3950F8()
{
  result = qword_2804FC9B8;
  if (!qword_2804FC9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC9B8);
  }

  return result;
}

unint64_t sub_26D39514C()
{
  result = qword_2804FC9C0;
  if (!qword_2804FC9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC9C0);
  }

  return result;
}

uint64_t sub_26D3951D0(char a1, uint64_t a2, char a3)
{
  if (a1)
  {
    if (qword_2804FAD40 != -1)
    {
      swift_once();
    }

    if (byte_2804FFF98 == 1)
    {
      sub_26D3A0C38();
    }

    else
    {
      sub_26D3A0C58();
    }

    sub_26D33D0B8(a2, a3 & 1);
    sub_26D3A0C68();
  }

  else
  {
    sub_26D3A0798();
    sub_26D33D0B8(a2, a3 & 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCA30);
    sub_26D3484AC(&qword_2804FCA38, &qword_2804FCA30);
  }

  return sub_26D3A00D8();
}

unint64_t sub_26D395358()
{
  result = qword_2804FCAA8;
  if (!qword_2804FCAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FCAA0);
    sub_26D3484AC(&qword_2804FCAB0, &qword_2804FCA98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCAA8);
  }

  return result;
}

unint64_t sub_26D395410()
{
  result = qword_2804FCAB8;
  if (!qword_2804FCAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FCA88);
    sub_26D39361C(&qword_2804FC7D0, type metadata accessor for TFSymbol);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCAB8);
  }

  return result;
}

uint64_t sub_26D3954E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26D395548(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI7BindingVySbGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26D3955D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_26D39562C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
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

uint64_t sub_26D3956B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_26D395700(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26D395764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC3D8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26D395834(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC3D8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26D3958E4()
{
  sub_26D393314(319, &unk_2804FC420, &type metadata for TFUIConfig, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_26D393364(319, &qword_2804FC400, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_26D393314(319, &qword_2804FC410, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26D395A28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_26D395A84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_26D395AE4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC700);
  sub_26D3A0248();
  sub_26D3A0728();
  sub_26D3A0248();
  sub_26D3A0248();
  sub_26D3484AC(&qword_2804FC708, &qword_2804FC700);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26D393574();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26D3A0DB8();
  sub_26D3A0248();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC6F8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26D3484AC(&qword_2804FC718, &qword_2804FC6F8);
  swift_getOpaqueTypeMetadata2();
  sub_26D3A0248();
  sub_26D3A0728();
  sub_26D3A0248();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC720);
  sub_26D3A0248();
  sub_26D3A0248();
  sub_26D3A0078();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26D3484AC(&qword_2804FC728, &qword_2804FC720);
  swift_getWitnessTable();
  sub_26D3935C8();
  swift_getWitnessTable();
  sub_26D39361C(&qword_2804FC738, MEMORY[0x277CDD750]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC740);
  sub_26D3A0248();
  swift_getOpaqueTypeConformance2();
  sub_26D3484AC(&qword_2804FC748, &qword_2804FC740);
  return swift_getWitnessTable();
}

uint64_t sub_26D395F98()
{
  sub_26D3A0248();
  sub_26D3A0728();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC768);
  swift_getTupleTypeMetadata2();
  sub_26D3A0EE8();
  swift_getWitnessTable();
  sub_26D3A0DB8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2804FC770);
  sub_26D3A0248();
  sub_26D3A0248();
  sub_26D3A0248();
  sub_26D3A0248();
  type metadata accessor for TFFrameTracker(255);
  sub_26D3A0248();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC1C0);
  sub_26D3A0248();
  sub_26D3A0248();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC780);
  sub_26D3A0248();
  swift_getWitnessTable();
  sub_26D3484AC(&qword_2804FC788, &unk_2804FC770);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26D37E938();
  swift_getWitnessTable();
  sub_26D39361C(&qword_2804FC1B8, type metadata accessor for TFFrameTracker);
  swift_getWitnessTable();
  sub_26D3484AC(&qword_2804FC7A0, &qword_2804FC1C0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26D3484AC(&qword_2804FC7A8, &qword_2804FC780);
  swift_getWitnessTable();
  sub_26D3A0D98();
  swift_getWitnessTable();
  sub_26D393970();
  swift_getOpaqueTypeMetadata2();
  sub_26D3A0738();
  swift_getOpaqueTypeConformance2();
  sub_26D39361C(&qword_2804FC7B8, MEMORY[0x277CDDFF8]);
  swift_getOpaqueTypeMetadata2();
  sub_26D3A0248();
  swift_getOpaqueTypeConformance2();
  sub_26D393574();
  return swift_getWitnessTable();
}

unint64_t sub_26D396484()
{
  result = qword_2804FCAE8;
  if (!qword_2804FCAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC7D8);
    sub_26D396510();
    sub_26D393574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCAE8);
  }

  return result;
}

unint64_t sub_26D396510()
{
  result = qword_2804FCAF0;
  if (!qword_2804FCAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FCAF8);
    sub_26D393DE0();
    sub_26D3942E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCAF0);
  }

  return result;
}

unint64_t sub_26D3965A0()
{
  result = qword_2804FCB00;
  if (!qword_2804FCB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC960);
    sub_26D39662C();
    sub_26D393574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCB00);
  }

  return result;
}

unint64_t sub_26D39662C()
{
  result = qword_2804FCB08;
  if (!qword_2804FCB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC920);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC910);
    sub_26D3A0738();
    sub_26D394878();
    sub_26D39361C(&qword_2804FC7B8, MEMORY[0x277CDDFF8]);
    swift_getOpaqueTypeConformance2();
    sub_26D3484AC(&qword_2804FCB10, &qword_2804FCB18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCB08);
  }

  return result;
}

uint64_t sub_26D396770()
{
  sub_26D3A0248();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC968);
  swift_getTupleTypeMetadata2();
  sub_26D3A0EE8();
  swift_getWitnessTable();
  sub_26D3A0DB8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2804FC970);
  sub_26D3A0248();
  sub_26D3A0248();
  sub_26D3A0248();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBF40);
  sub_26D3A0248();
  sub_26D3A0248();
  type metadata accessor for TFFrameTracker(255);
  sub_26D3A0248();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC1C0);
  sub_26D3A0248();
  sub_26D3A0248();
  swift_getWitnessTable();
  sub_26D3484AC(&qword_2804FC980, &unk_2804FC970);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26D3484AC(&qword_2804FC990, &qword_2804FBF40);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26D39361C(&qword_2804FC1B8, type metadata accessor for TFFrameTracker);
  swift_getWitnessTable();
  sub_26D3484AC(&qword_2804FC7A0, &qword_2804FC1C0);
  swift_getWitnessTable();
  sub_26D393574();
  return swift_getWitnessTable();
}

unint64_t sub_26D396AEC()
{
  result = qword_2804FCB20;
  if (!qword_2804FCB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FCB28);
    sub_26D396BA4();
    sub_26D3484AC(&qword_2804FCB50, &qword_2804FCB58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCB20);
  }

  return result;
}

unint64_t sub_26D396BA4()
{
  result = qword_2804FCB30;
  if (!qword_2804FCB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FCB38);
    sub_26D396C5C();
    sub_26D3484AC(&qword_2804FC990, &qword_2804FBF40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCB30);
  }

  return result;
}

unint64_t sub_26D396C5C()
{
  result = qword_2804FCB40;
  if (!qword_2804FCB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FCB48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCB40);
  }

  return result;
}

unint64_t sub_26D396CE4()
{
  result = qword_2804FCB60;
  if (!qword_2804FCB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC9E8);
    sub_26D3484AC(&qword_2804FCB68, &qword_2804FC9F0);
    sub_26D3484AC(&qword_2804FC868, &qword_2804FC870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCB60);
  }

  return result;
}

unint64_t sub_26D396DCC()
{
  result = qword_2804FCB70;
  if (!qword_2804FCB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC9F8);
    sub_26D396E58();
    sub_26D393574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCB70);
  }

  return result;
}

unint64_t sub_26D396E58()
{
  result = qword_2804FCB78;
  if (!qword_2804FCB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FCA20);
    sub_26D396EE4();
    sub_26D37E938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCB78);
  }

  return result;
}

unint64_t sub_26D396EE4()
{
  result = qword_2804FCB80;
  if (!qword_2804FCB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FCA10);
    sub_26D396F9C();
    sub_26D3484AC(&qword_2804FC990, &qword_2804FBF40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCB80);
  }

  return result;
}

unint64_t sub_26D396F9C()
{
  result = qword_2804FCB88;
  if (!qword_2804FCB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FCA08);
    sub_26D397028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCB88);
  }

  return result;
}

unint64_t sub_26D397028()
{
  result = qword_2804FCB90;
  if (!qword_2804FCB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FCA00);
    sub_26D3970E0();
    sub_26D3484AC(&qword_2804FCBD8, &qword_2804FCA18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCB90);
  }

  return result;
}

unint64_t sub_26D3970E0()
{
  result = qword_2804FCB98;
  if (!qword_2804FCB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FCBA0);
    sub_26D397198();
    sub_26D3484AC(&qword_2804FC788, &unk_2804FC770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCB98);
  }

  return result;
}

unint64_t sub_26D397198()
{
  result = qword_2804FCBA8;
  if (!qword_2804FCBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FCBB0);
    sub_26D3484AC(&qword_2804FCBB8, &unk_2804FCBC0);
    sub_26D3484AC(&qword_2804FBED8, &qword_2804FCBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCBA8);
  }

  return result;
}

unint64_t sub_26D397280()
{
  result = qword_2804FCBE0;
  if (!qword_2804FCBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FCA68);
    sub_26D39730C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCBE0);
  }

  return result;
}

unint64_t sub_26D39730C()
{
  result = qword_2804FCBE8;
  if (!qword_2804FCBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2804FCA50);
    sub_26D3973C4();
    sub_26D3484AC(&qword_2804FCC10, &qword_2804FCA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCBE8);
  }

  return result;
}

unint64_t sub_26D3973C4()
{
  result = qword_2804FCBF0;
  if (!qword_2804FCBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FCBF8);
    sub_26D3484AC(&qword_2804FCC00, &qword_2804FCC08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCBF0);
  }

  return result;
}

unint64_t sub_26D397480()
{
  result = qword_2804FCC18;
  if (!qword_2804FCC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FCA70);
    sub_26D39750C();
    sub_26D393574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCC18);
  }

  return result;
}

unint64_t sub_26D39750C()
{
  result = qword_2804FCC20;
  if (!qword_2804FCC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FCA80);
    sub_26D397598();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCC20);
  }

  return result;
}

unint64_t sub_26D397598()
{
  result = qword_2804FCC28;
  if (!qword_2804FCC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FCA78);
    sub_26D39761C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCC28);
  }

  return result;
}

unint64_t sub_26D39761C()
{
  result = qword_2804FCC30;
  if (!qword_2804FCC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FCC38);
    sub_26D395358();
    sub_26D395410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCC30);
  }

  return result;
}

unint64_t sub_26D397714()
{
  result = qword_2804FCC50;
  if (!qword_2804FCC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCC50);
  }

  return result;
}

unint64_t sub_26D397794()
{
  result = qword_2804FCC58;
  if (!qword_2804FCC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCC58);
  }

  return result;
}

unint64_t sub_26D3977EC()
{
  result = qword_2804FCC60;
  if (!qword_2804FCC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCC60);
  }

  return result;
}

uint64_t sub_26D39785C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_26D3978A0()
{
  result = qword_2804FCC98;
  if (!qword_2804FCC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCC98);
  }

  return result;
}

unint64_t sub_26D3978F4()
{
  result = qword_2804FCCA0;
  if (!qword_2804FCCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCCA0);
  }

  return result;
}

unint64_t sub_26D39794C()
{
  result = qword_2804FCCD0;
  if (!qword_2804FCCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FCC78);
    sub_26D397A04();
    sub_26D3484AC(&unk_2804FC950, &qword_2804FB0D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCCD0);
  }

  return result;
}

unint64_t sub_26D397A04()
{
  result = qword_2804FCCD8;
  if (!qword_2804FCCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FCC70);
    sub_26D3484AC(&qword_2804FCCE0, &qword_2804FCC68);
    sub_26D3935C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCCD8);
  }

  return result;
}

unint64_t sub_26D397AC0()
{
  result = qword_2804FCCE8;
  if (!qword_2804FCCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FCC90);
    sub_26D397B4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCCE8);
  }

  return result;
}

unint64_t sub_26D397B4C()
{
  result = qword_2804FCCF0;
  if (!qword_2804FCCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FCC88);
    sub_26D397BD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCCF0);
  }

  return result;
}

unint64_t sub_26D397BD8()
{
  result = qword_2804FCCF8;
  if (!qword_2804FCCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FCC80);
    sub_26D39361C(&qword_2804FCD00, MEMORY[0x277CDE278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCCF8);
  }

  return result;
}

unint64_t sub_26D397C98()
{
  result = qword_2804FCD08;
  if (!qword_2804FCD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FCD10);
    sub_26D397D50();
    sub_26D3484AC(&unk_2804FCD40, &qword_2804FCCA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCD08);
  }

  return result;
}

unint64_t sub_26D397D50()
{
  result = qword_2804FCD18;
  if (!qword_2804FCD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FCD20);
    sub_26D397E08();
    sub_26D3484AC(&qword_2804FCD30, &qword_2804FCD38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCD18);
  }

  return result;
}

unint64_t sub_26D397E08()
{
  result = qword_2804FCD28;
  if (!qword_2804FCD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCD28);
  }

  return result;
}

id sub_26D397E88()
{
  sub_26D399808();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2804FFCE8 = result;
  return result;
}

void sub_26D397EE0()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFCF0 = v5;
  *algn_2804FFCF8 = v7;
}

void sub_26D397FF8()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFD00 = v5;
  *algn_2804FFD08 = v7;
}

void sub_26D39810C()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFD10 = v5;
  *algn_2804FFD18 = v7;
}

void sub_26D398224()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFD20 = v5;
  *algn_2804FFD28 = v7;
}

void sub_26D398340()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFD30 = v5;
  *algn_2804FFD38 = v7;
}

void sub_26D39845C()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFD40 = v5;
  *algn_2804FFD48 = v7;
}

void sub_26D398574()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFD50 = v5;
  *algn_2804FFD58 = v7;
}

void sub_26D39868C()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFD60 = v5;
  *algn_2804FFD68 = v7;
}

void sub_26D3987A4()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFD70 = v5;
  *algn_2804FFD78 = v7;
}

void sub_26D3988BC()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFD80 = v5;
  *algn_2804FFD88 = v7;
}

void sub_26D3989D4()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFD90 = v5;
  *algn_2804FFD98 = v7;
}

void sub_26D398AEC()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFDA0 = v5;
  *algn_2804FFDA8 = v7;
}

void sub_26D398BF8()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFDB0 = v5;
  *algn_2804FFDB8 = v7;
}

void sub_26D398D0C()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFDC0 = v5;
  *algn_2804FFDC8 = v7;
}

void sub_26D398E28()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFDD0 = v5;
  *algn_2804FFDD8 = v7;
}

void sub_26D398F44()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFDE0 = v5;
  *algn_2804FFDE8 = v7;
}

void sub_26D39905C()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFDF0 = v5;
  *algn_2804FFDF8 = v7;
}

void sub_26D399168()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFE00 = v5;
  *algn_2804FFE08 = v7;
}

void sub_26D399284()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFE10 = v5;
  *algn_2804FFE18 = v7;
}

void sub_26D39939C()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFE20 = v5;
  *algn_2804FFE28 = v7;
}

void sub_26D3994B8()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFE30 = v5;
  *algn_2804FFE38 = v7;
}

void sub_26D3995D4()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFE40 = v5;
  *algn_2804FFE48 = v7;
}

void sub_26D3996F0()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFE50 = v5;
  *algn_2804FFE58 = v7;
}

unint64_t sub_26D399808()
{
  result = qword_2804FCD50;
  if (!qword_2804FCD50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804FCD50);
  }

  return result;
}

void sub_26D399854()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFE60 = v5;
  *algn_2804FFE68 = v7;
}

void sub_26D39996C()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFE70 = v5;
  *algn_2804FFE78 = v7;
}

void sub_26D399A84()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFE80 = v5;
  *algn_2804FFE88 = v7;
}

void sub_26D399BA0()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFE90 = v5;
  *algn_2804FFE98 = v7;
}

void sub_26D399CBC()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFEA0 = v5;
  *algn_2804FFEA8 = v7;
}

void sub_26D399DD8()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFEB0 = v5;
  *algn_2804FFEB8 = v7;
}

void sub_26D399EE4()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFEC0 = v5;
  *algn_2804FFEC8 = v7;
}

void sub_26D399FEC()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFED0 = v5;
  *algn_2804FFED8 = v7;
}

void sub_26D39A0F8()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFEE0 = v5;
  *algn_2804FFEE8 = v7;
}

void sub_26D39A200()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFEF0 = v5;
  *algn_2804FFEF8 = v7;
}

void sub_26D39A308()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFF00 = v5;
  *algn_2804FFF08 = v7;
}

void sub_26D39A420()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFF10 = v5;
  *algn_2804FFF18 = v7;
}

void sub_26D39A538()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFF20 = v5;
  *algn_2804FFF28 = v7;
}

void sub_26D39A650()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFF30 = v5;
  *algn_2804FFF38 = v7;
}

void sub_26D39A764()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFF40 = v5;
  *algn_2804FFF48 = v7;
}

void sub_26D39A87C()
{
  if (qword_2804FABD8 != -1)
  {
    swift_once();
  }

  v0 = qword_2804FFCE8;
  v1 = sub_26D3A0F68();
  v2 = sub_26D3A0F68();
  v3 = sub_26D3A0F68();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_26D3A0F98();
  v7 = v6;

  qword_2804FFF50 = v5;
  *algn_2804FFF58 = v7;
}

uint64_t sub_26D39A994()
{
  v0 = sub_26D39FE48();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D39FE28();
  v5 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v6 = sub_26D39FE38();
  v7 = [v5 initWithURL_];

  result = (*(v1 + 8))(v4, v0);
  qword_2804FCD58 = v7;
  return result;
}

id sub_26D39AAB0()
{
  ObjectType = swift_getObjectType();
  v2 = sub_26D39FF08();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TFTypographySettingsContentViewController__typographyPanel;
  *&v0[OBJC_IVAR____TFTypographySettingsContentViewController__typographyPanel] = 0;
  *&v0[OBJC_IVAR____TFTypographySettingsContentViewController_delegate] = 0;
  *&v0[OBJC_IVAR____TFTypographySettingsContentViewController__delegate] = 0;
  if (qword_2804FAD18 != -1)
  {
    swift_once();
  }

  if (qword_2804FCD58)
  {
    v8 = qword_2804FCD58;
    v9 = sub_26D3A0F68();
    v10 = [v8 classNamed_];

    if (v10)
    {
      swift_getObjCClassMetadata();
      v18 = &unk_287EDCB20;
      if (swift_dynamicCastTypeToObjCProtocolConditional())
      {
        sub_26D345E5C(0, &qword_2804FCD50);
        if (swift_dynamicCastMetatype())
        {
          v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          v12 = *&v0[v7];
          *&v0[v7] = v11;
          v13 = v11;

          v17.receiver = v0;
          v17.super_class = ObjectType;
          v14 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, 0, 0);
          [v13 setDelegate_];
          sub_26D39ADE8();

          return v14;
        }
      }
    }
  }

  v20.receiver = v0;
  v20.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, 0, 0);
  sub_26D39ADE8();
  sub_26D39FEF8();
  if (qword_2804FAC90 != -1)
  {
    swift_once();
  }

  sub_26D39FEE8();
  v19[3] = v2;
  v19[4] = MEMORY[0x277D74D18];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(v3 + 16))(boxed_opaque_existential_1, v6, v2);
  sub_26D3A1178();
  (*(v3 + 8))(v6, v2);

  return v14;
}

void sub_26D39ADE8()
{
  v1 = v0;
  sub_26D345E5C(0, &qword_2804FCD78);
  v2 = sub_26D3A1168();
  [v2 setTarget_];
  [v2 setAction_];
  if (qword_2804FABE8 != -1)
  {
    swift_once();
  }

  v3 = sub_26D3A0F68();
  [v1 setTitle_];

  v4 = [v1 navigationItem];
  [v4 setRightBarButtonItem_];
}

Swift::Void __swiftcall _TFTypographySettingsContentViewController.loadView()()
{
  v1 = *&v0[OBJC_IVAR____TFTypographySettingsContentViewController__typographyPanel];
  if (!v1)
  {
    v52.receiver = v0;
    v52.super_class = swift_getObjectType();
    objc_msgSendSuper2(&v52, sel_loadView);
    return;
  }

  v2 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v49 = v1;
  v3 = [v2 init];
  [v0 setView_];

  v4 = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  v5 = [v0 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_21;
  }

  v6 = v5;
  v51 = v4;
  [v6 addSubview_];

  [v51 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
  }

  else
  {
    v7 = [objc_opt_self() currentDevice];
    v8 = [v7 userInterfaceIdiom];

    if (v8 != 6)
    {
      v9 = [v51 topAnchor];

      v13 = [v0 view];
      if (!v13)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v14 = v13;
      v11 = [v13 safeAreaLayoutGuide];

      v12 = [v11 topAnchor];
      goto LABEL_11;
    }
  }

  v9 = [v51 topAnchor];

  v10 = [v0 view];
  if (!v10)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = v10;
  v12 = [v10 topAnchor];
LABEL_11:
  v15 = v12;

  v16 = [v9 constraintEqualToAnchor_];
  [v16 setActive_];

  v17 = [v51 leadingAnchor];
  v18 = [v0 view];
  if (!v18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v19 = v18;
  v20 = [v18 leadingAnchor];

  v21 = [v17 constraintEqualToAnchor_];
  [v21 setActive_];

  v22 = [v51 trailingAnchor];
  v23 = [v0 view];
  if (!v23)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v24 = v23;
  v25 = [v23 trailingAnchor];

  v26 = [v22 constraintEqualToAnchor_];
  [v26 setActive_];

  v27 = [v51 bottomAnchor];
  v28 = [v0 view];
  if (!v28)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v29 = v28;
  v30 = [v28 bottomAnchor];

  v31 = [v27 constraintEqualToAnchor_];
  [v31 setActive_];

  v32 = [v49 view];
  if (v32)
  {
    v50 = v32;
    [v49 willMoveToParentViewController_];
    [v51 addSubview_];
    [v50 setTranslatesAutoresizingMaskIntoConstraints_];
    v33 = [v50 topAnchor];
    v34 = [v51 topAnchor];

    v35 = [v33 constraintEqualToAnchor_];
    [v35 setActive_];

    v36 = [v50 leadingAnchor];
    v37 = [v51 leadingAnchor];

    v38 = [v36 constraintEqualToAnchor_];
    [v38 setActive_];

    v39 = [v50 trailingAnchor];
    v40 = [v51 trailingAnchor];

    v41 = [v39 constraintEqualToAnchor_];
    [v41 setActive_];

    v42 = [v50 bottomAnchor];
    v43 = [v51 bottomAnchor];

    v44 = [v42 constraintEqualToAnchor_];
    [v44 setActive_];

    v45 = [v50 widthAnchor];
    v46 = [v51 widthAnchor];

    v47 = [v45 constraintEqualToAnchor_];
    [v47 setActive_];

    [v0 addChildViewController_];
    [v49 didMoveToParentViewController_];

    v48 = v50;
  }

  else
  {

    v48 = v51;
  }
}

Swift::Void __swiftcall _TFTypographySettingsContentViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewWillAppear_, a1);
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = [v1 view];
  v6 = v5;
  if (v4 == 6)
  {
    if (v5)
    {
      v7 = [v5 superview];

      if (!v7)
      {
        return;
      }

      v8 = &selRef_clearColor;
      goto LABEL_8;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  v7 = [v5 superview];

  if (!v7)
  {
    return;
  }

  v8 = &selRef_systemGroupedBackgroundColor;
LABEL_8:
  v9 = [objc_opt_self() *v8];
  [v7 setBackgroundColor_];
}

Swift::Void __swiftcall _TFTypographySettingsContentViewController.setSelectedFont(_:)(UIFont a1)
{
  v3 = *(v1 + OBJC_IVAR____TFTypographySettingsContentViewController__typographyPanel);
  if (v3)
  {
    [v3 setSelectedFont_];
  }
}

Swift::Void __swiftcall _TFTypographySettingsContentViewController.typographyPanelDidUpdate(font:)(UIFont_optional font)
{
  isa = font.value.super.isa;
  v3 = OBJC_IVAR____TFTypographySettingsContentViewController__delegate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    [v4 _typographySettingsViewControllerDidUpdateFont_];
  }
}

uint64_t _TFTypographySettingsContentViewController._delegate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TFTypographySettingsContentViewController__delegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

id _TFTypographySettingsContentViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_26D3A0F68();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id _TFTypographySettingsContentViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
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

uint64_t getEnumTagSinglePayload for TFUIConfig(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TFUIConfig(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26D39C004()
{
  result = qword_2804FCD90;
  if (!qword_2804FCD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCD90);
  }

  return result;
}

double sub_26D39C058(char a1, char a2, unsigned __int8 a3)
{
  if (a3 == 2 || a3 == 4)
  {
    v5 = [objc_opt_self() mainScreen];
    [v5 _referenceBounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v43.origin.x = v7;
    v43.origin.y = v9;
    v43.size.width = v11;
    v43.size.height = v13;
    if ((CGRectGetHeight(v43) <= 667.0) | a2 & 1)
    {
      v14 = 10.0;
    }

    else
    {
      v14 = 11.0;
    }

    if (qword_2804FAD48 != -1)
    {
      swift_once();
    }

    if (byte_2804FFF99 == 1)
    {
      _UISolariumEnabled();
      if (byte_2804FFF99 == 1)
      {
        _UISolariumEnabled();
        if (byte_2804FFF99 == 1)
        {
          goto LABEL_62;
        }
      }
    }

    return v14;
  }

  if (a3 != 3)
  {
    v15 = qword_2804FAD48;
    if (a1)
    {
      v14 = 0.0;
    }

    else
    {
      if (qword_2804FAD48 != -1)
      {
        v41 = a3;
        swift_once();
        a3 = v41;
      }

      if (byte_2804FFF99 != 1)
      {
        return 16.0;
      }

      v35 = a3;
      v36 = _UISolariumEnabled();
      a3 = v35;
      if (v36)
      {
        v14 = 10.0;
      }

      else
      {
        v14 = 8.0;
      }

      v15 = qword_2804FAD48;
    }

    if (a3 != 1)
    {
      if (v15 == -1)
      {
        if ((byte_2804FFF99 & 1) == 0)
        {
          return v14;
        }
      }

      else
      {
        v42 = a3;
        swift_once();
        a3 = v42;
        if ((byte_2804FFF99 & 1) == 0)
        {
          return v14;
        }
      }

      v37 = a3;
      _UISolariumEnabled();
      a3 = v37;
      v15 = qword_2804FAD48;
    }

    if (v15 == -1)
    {
      if (byte_2804FFF99)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v40 = a3;
      swift_once();
      a3 = v40;
      if (byte_2804FFF99)
      {
LABEL_54:
        v38 = a3;
        _UISolariumEnabled();
        if (v38 == 1)
        {
          return v14;
        }

LABEL_68:
        if (byte_2804FFF99 != 1)
        {
          return v14;
        }

        goto LABEL_62;
      }
    }

    if (a3 == 1)
    {
      return v14;
    }

    goto LABEL_68;
  }

  if (qword_2804FAD40 != -1)
  {
    swift_once();
  }

  if (byte_2804FFF98 == 1)
  {
    if (qword_2804FAD48 != -1)
    {
      swift_once();
    }

    if (byte_2804FFF99 == 1)
    {
      if (_UISolariumEnabled())
      {
        v14 = 10.0;
      }

      else
      {
        v14 = 8.0;
      }

      if (byte_2804FFF99 == 1)
      {
        _UISolariumEnabled();
        if (byte_2804FFF99 == 1)
        {
          _UISolariumEnabled();
          if (byte_2804FFF99 == 1)
          {
LABEL_62:
            _UISolariumEnabled();
          }
        }
      }
    }

    else
    {
      return 16.0;
    }
  }

  else
  {
    v16 = objc_opt_self();
    v17 = [v16 mainScreen];
    [v17 _referenceBounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v44.origin.x = v19;
    v44.origin.y = v21;
    v44.size.width = v23;
    v44.size.height = v25;
    if ((CGRectGetHeight(v44) <= 667.0) | a2 & 1)
    {
      v14 = 7.0;
    }

    else
    {
      v14 = 10.0;
    }

    if ((a2 & 1) == 0)
    {
      if (qword_2804FAD48 != -1)
      {
        swift_once();
      }

      if (byte_2804FFF99 == 1)
      {
        _UISolariumEnabled();
      }
    }

    v26 = [v16 mainScreen];
    [v26 _referenceBounds];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v45.origin.x = v28;
    v45.origin.y = v30;
    v45.size.width = v32;
    v45.size.height = v34;
    CGRectGetHeight(v45);
    if ((a2 & 1) == 0)
    {
      if (qword_2804FAD48 != -1)
      {
        swift_once();
      }

      if (byte_2804FFF99 == 1)
      {
        goto LABEL_62;
      }
    }
  }

  return v14;
}

double sub_26D39C698(char a1, unsigned __int8 a2)
{
  v2 = 8.0;
  if (a2 <= 1u)
  {
    if (!a2)
    {
      if (qword_2804FAD40 != -1)
      {
        swift_once();
      }

      v2 = 16.0;
      if ((byte_2804FFF98 & 1) == 0)
      {
        if (qword_2804FAD48 != -1)
        {
          swift_once();
        }

        v2 = 14.0;
        if (byte_2804FFF99 == 1)
        {
          v13 = _UISolariumEnabled() == 0;
          v14 = 8.0;
          v15 = 10.0;
LABEL_10:
          if (v13)
          {
            return v14;
          }

          else
          {
            return v15;
          }
        }
      }
    }
  }

  else
  {
    if (a2 != 3)
    {
      v16 = [objc_opt_self() mainScreen];
      [v16 _referenceBounds];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      v27.origin.x = v18;
      v27.origin.y = v20;
      v27.size.width = v22;
      v27.size.height = v24;
      if (CGRectGetHeight(v27) <= 667.0)
      {
        return v2;
      }

      v13 = (a1 & 1) == 0;
      v14 = 12.0;
      v15 = 8.0;
      goto LABEL_10;
    }

    if (qword_2804FAD40 != -1)
    {
      swift_once();
    }

    v2 = 16.0;
    if ((byte_2804FFF98 & 1) == 0)
    {
      v4 = [objc_opt_self() mainScreen];
      [v4 _referenceBounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      v26.origin.x = v6;
      v26.origin.y = v8;
      v26.size.width = v10;
      v26.size.height = v12;
      v2 = 6.0;
      if (CGRectGetHeight(v26) > 667.0)
      {
        v13 = (a1 & 1) == 0;
        v14 = 8.0;
        v15 = 6.0;
        goto LABEL_10;
      }
    }
  }

  return v2;
}

uint64_t sub_26D39C8D0()
{
  sub_26D33F558();
  sub_26D3A0518();
  return v1;
}

void sub_26D39C90C(unsigned __int8 a1)
{
  if (qword_2804FAD48 != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  if (byte_2804FFF99 == 1)
  {
    goto LABEL_4;
  }

  if (a1 <= 1u)
  {
    if (!a1)
    {
      if (qword_2804FAD40 != -1)
      {
        swift_once();
      }

      if ((byte_2804FFF98 & 1) == 0 && byte_2804FFF99 == 1)
      {
LABEL_4:
        _UISolariumEnabled();
      }
    }
  }

  else if (a1 == 3)
  {
    if (qword_2804FAD40 != -1)
    {
      swift_once();
    }
  }

  else
  {
    v1 = [objc_opt_self() mainScreen];
    [v1 _referenceBounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;

    v11.origin.x = v3;
    v11.origin.y = v5;
    v11.size.width = v7;
    v11.size.height = v9;
    CGRectGetHeight(v11);
  }
}

uint64_t sub_26D39CB14()
{
  sub_26D346F10();
  sub_26D3A0518();
  return v1;
}

double sub_26D39CB94(void (*a1)(void))
{
  a1();
  sub_26D3A0518();
  return v2;
}

void sub_26D39CBFC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  if (*(a2 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_isInPopoverPresentation))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a2 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_hasParentViewController) ^ 1;
  }

  v6 = *(a2 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_useReducedMetrics);
  v7 = sub_26D3A0F98();
  v9 = v8;
  if (v7 == sub_26D3A0F98() && v9 == v10)
  {

    goto LABEL_14;
  }

  v12 = sub_26D3A1518();

  if (v12)
  {
LABEL_14:
    sub_26D39E14C(v6, a3);
    return;
  }

  if ((a3 - 2) >= 3u)
  {
    goto LABEL_15;
  }

  if ((v13 & 1) == 0)
  {
    sub_26D39C058(v5 & 1, v6, a3);
    sub_26D39E14C(v6, a3);
    sub_26D39C698(v6, a3);
    return;
  }

  if ((v6 & 1) == 0)
  {
LABEL_15:
    sub_26D39D4C4(a3);
  }
}

void sub_26D39CDDC(char a1, unsigned __int8 a2)
{
  if (a2 == 2 || a2 == 4)
  {
    if (a1)
    {
      return;
    }

    goto LABEL_7;
  }

  if (a2 != 3)
  {
    if (qword_2804FAD40 != -1)
    {
      v14 = a2;
      swift_once();
      a2 = v14;
    }

    if (byte_2804FFF98)
    {
LABEL_21:
      if (a2 > 2u)
      {
        if (a2 != 3)
        {
          v5 = [objc_opt_self() mainScreen];
          [v5 _referenceBounds];
          v7 = v6;
          v9 = v8;
          v11 = v10;
          v13 = v12;

          v17.origin.x = v7;
          v17.origin.y = v9;
          v17.size.width = v11;
          v17.size.height = v13;
          CGRectGetHeight(v17);
        }

        return;
      }

      if (a2 || (byte_2804FFF98 & 1) != 0)
      {
        return;
      }

      if (qword_2804FAD48 != -1)
      {
        swift_once();
      }

      if (byte_2804FFF99 != 1)
      {
        return;
      }

LABEL_7:
      _UISolariumEnabled();
      return;
    }

LABEL_16:
    if (qword_2804FAD48 != -1)
    {
      v16 = a2;
      swift_once();
      a2 = v16;
    }

    if (byte_2804FFF99)
    {
      goto LABEL_7;
    }

    v3 = a2;
    v4 = _UISolariumEnabled();
    a2 = v3;
    if (!v4)
    {
      if (byte_2804FFF99 != 1)
      {
        return;
      }

      goto LABEL_7;
    }

    goto LABEL_21;
  }

  if (qword_2804FAD40 != -1)
  {
    v15 = a2;
    swift_once();
    a2 = v15;
  }

  if ((byte_2804FFF98 & 1) == 0)
  {
    goto LABEL_16;
  }
}

uint64_t sub_26D39D0C0()
{
  v1 = [v0 familyName];
  sub_26D3A0F98();

  LOBYTE(v1) = sub_26D3A1008();

  if ((v1 & 1) == 0)
  {
    v2 = [v0 familyName];
    v3 = sub_26D3A0F98();
    v5 = v4;

    v6 = objc_opt_self();
    [v6 systemFontSize];
    v7 = [v6 systemFontOfSize_];
    v8 = [v7 familyName];

    v9 = sub_26D3A0F98();
    v11 = v10;

    if (v3 == v9 && v5 == v11)
    {
    }

    else
    {
      v13 = sub_26D3A1518();

      if ((v13 & 1) == 0)
      {
        v14 = CTFontCopyName(v0, *MEMORY[0x277CC48C0]);
        if (!v14)
        {
          v14 = [v0 familyName];
        }

        v15 = v14;
        v16 = sub_26D3A0F98();

        return v16;
      }
    }
  }

  if (qword_2804FABE0 != -1)
  {
    swift_once();
  }

  v16 = qword_2804FFCF0;

  return v16;
}

uint64_t sub_26D39D2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20[1] = a6;
  v11 = type metadata accessor for TFFrameTracker(255);
  v12 = sub_26D3A0248();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = v20 - v15;
  MEMORY[0x26D6BD3E0](a1, a4, v11, a5);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = sub_26D39F130(&qword_2804FC1B8, type metadata accessor for TFFrameTracker);
  v20[2] = a5;
  v20[3] = v18;

  swift_getWitnessTable();
  sub_26D39F178();
  sub_26D39F130(&qword_2804FCDB0, type metadata accessor for CGRect);
  sub_26D3A0B08();

  return (*(v13 + 8))(v16, v12);
}

void sub_26D39D4C4(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (!a1)
    {
      if (qword_2804FAD40 != -1)
      {
        swift_once();
      }

      if ((byte_2804FFF98 & 1) == 0)
      {
        if (qword_2804FAD48 != -1)
        {
          swift_once();
        }

        if (byte_2804FFF99 == 1)
        {
          _UISolariumEnabled();
        }
      }
    }
  }

  else if (a1 == 3)
  {
    if (qword_2804FAD40 != -1)
    {
      swift_once();
    }
  }

  else
  {
    v1 = [objc_opt_self() mainScreen];
    [v1 _referenceBounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;

    v10.origin.x = v3;
    v10.origin.y = v5;
    v10.size.width = v7;
    v10.size.height = v9;
    CGRectGetHeight(v10);
  }
}

uint64_t sub_26D39D694@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCDF0);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v30 - v10;
  v12 = sub_26D3A01E8();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v30 - v19;
  if ((v3 - 2) < 3)
  {
    v21 = v13[13];
    v21(&v30 - v19, *MEMORY[0x277CDF9E0], v12);
    v21(v17, *MEMORY[0x277CDFA10], v12);
    sub_26D39F130(&qword_2804FCDF8, MEMORY[0x277CDFA28]);
    if (sub_26D3A0F58())
    {
      v22 = v13[4];
      v22(v11, v20, v12);
      v22(&v11[*(v4 + 48)], v17, v12);
      sub_26D34856C(v11, v8, &qword_2804FCDF0);
      v23 = *(v4 + 48);
      v22(a2, v8, v12);
      v24 = v13[1];
      v24(&v8[v23], v12);
      sub_26D39F75C(v11, v8);
      v25 = *(v4 + 48);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC6F8);
      v22((a2 + *(v26 + 36)), &v8[v25], v12);
      return (v24)(v8, v12);
    }

    __break(1u);
    goto LABEL_7;
  }

  if (qword_2804FAD38 != -1)
  {
LABEL_7:
    swift_once();
  }

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC6F8);
  v29 = __swift_project_value_buffer(v28, qword_2804FFF80);
  return sub_26D34856C(v29, a2, &qword_2804FC6F8);
}

uint64_t sub_26D39D9FC(void (*a1)(void))
{
  a1();
  sub_26D3A0518();
  return v2;
}

void sub_26D39DA44()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_26D3A0F98();
    v4 = v3;

    qword_2804FCD80 = v2;
    *algn_2804FCD88 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26D39DAD0()
{
  if (qword_2804FAD20 != -1)
  {
    swift_once();
  }

  sub_26D3A0FC8();
  has_internal_content = os_variant_has_internal_content();

  byte_2804FFF60 = has_internal_content;
  return result;
}

uint64_t sub_26D39DB4C()
{
  v0 = sub_26D39FED8();
  __swift_allocate_value_buffer(v0, qword_2804FFF68);
  __swift_project_value_buffer(v0, qword_2804FFF68);
  if (qword_2804FAD20 != -1)
  {
    swift_once();
  }

  return sub_26D39FEC8();
}

uint64_t sub_26D39DC08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCDF0);
  v2 = MEMORY[0x28223BE20](v0, v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v25 - v6;
  v8 = sub_26D3A01E8();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v25 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC6F8);
  __swift_allocate_value_buffer(v17, qword_2804FFF80);
  v28 = __swift_project_value_buffer(v17, qword_2804FFF80);
  v18 = v9[13];
  v18(v16, *MEMORY[0x277CDF9E0], v8);
  v18(v13, *MEMORY[0x277CDFA00], v8);
  sub_26D39F130(&qword_2804FCDF8, MEMORY[0x277CDFA28]);
  result = sub_26D3A0F58();
  if (result)
  {
    v20 = v9[2];
    v20(v7, v16, v8);
    v20(&v7[*(v0 + 48)], v13, v8);
    sub_26D34856C(v7, v4, &qword_2804FCDF0);
    v21 = *(v0 + 48);
    v26 = v13;
    v27 = v16;
    v25 = v0;
    v22 = v9[4];
    v23 = v28;
    v22(v28, v4, v8);
    v24 = v9[1];
    v24(&v4[v21], v8);
    sub_26D39F75C(v7, v4);
    v22(v23 + *(v17 + 36), &v4[*(v25 + 48)], v8);
    v24(v26, v8);
    v24(v27, v8);
    return (v24)(v4, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_26D39DF3C(uint64_t a1, unsigned __int8 a2)
{
  if (a1 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a1;
  }

  v4 = v3;
  sub_26D39C90C(a2);
  v6 = v4 + -1.0;
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v10 = 10.0;
      goto LABEL_22;
    }

    if (a2 == 3)
    {
      if (qword_2804FAD40 != -1)
      {
        v20 = v5;
        swift_once();
        v5 = v20;
      }

      v7 = byte_2804FFF98 == 0;
      v8 = 10.0;
      v9 = 16.0;
      goto LABEL_10;
    }

    v18 = 10.0;
LABEL_31:
    v13 = v6 * v18;
    *&v17 = 40.0;
    goto LABEL_32;
  }

  if (a2)
  {
    v18 = 8.0;
    goto LABEL_31;
  }

  if (qword_2804FAD40 != -1)
  {
    v21 = v5;
    swift_once();
    v5 = v21;
  }

  v10 = 16.0;
  if ((byte_2804FFF98 & 1) == 0)
  {
    if (qword_2804FAD48 != -1)
    {
      v22 = v5;
      swift_once();
      v5 = v22;
    }

    v10 = 14.0;
    if (byte_2804FFF99 == 1)
    {
      v11 = v5;
      v12 = _UISolariumEnabled();
      v5 = v11;
      v7 = v12 == 0;
      v8 = 8.0;
      v9 = 10.0;
LABEL_10:
      if (v7)
      {
        v10 = v8;
      }

      else
      {
        v10 = v9;
      }
    }
  }

LABEL_22:
  if (qword_2804FAD48 != -1)
  {
    v23 = v5;
    swift_once();
    v5 = v23;
  }

  v13 = v6 * v10;
  if ((byte_2804FFF99 & 1) == 0)
  {
    *&v17 = 32.0;
LABEL_32:
    v16 = *&v17;
    return v16 + v5 * v4 + v13;
  }

  v14 = v5;
  v15 = _UISolariumEnabled();
  v5 = v14;
  v16 = 16.0;
  if (v15)
  {
    v16 = 20.0;
  }

  return v16 + v5 * v4 + v13;
}

void sub_26D39E14C(uint64_t a1, unsigned __int8 a2)
{
  if (qword_2804FAD40 != -1)
  {
    v11 = a2;
    swift_once();
    a2 = v11;
  }

  if (byte_2804FFF98 == 1)
  {
    if (a2 <= 1u || a2 == 3)
    {
      return;
    }

LABEL_8:
    v2 = [objc_opt_self() mainScreen];
    [v2 _referenceBounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v12.origin.x = v4;
    v12.origin.y = v6;
    v12.size.width = v8;
    v12.size.height = v10;
    CGRectGetHeight(v12);
    return;
  }

  if (a2 - 2 < 3)
  {
    goto LABEL_8;
  }

  if (!a2)
  {
    if (qword_2804FAD48 != -1)
    {
      swift_once();
    }

    if (byte_2804FFF99 == 1)
    {
      _UISolariumEnabled();
    }
  }
}

void sub_26D39E3B0()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_2804FFF98 = v1 == 6;
}

void sub_26D39E414()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_2804FFF99 = v1 == 5;
}

uint64_t sub_26D39E48C()
{
  v1 = *v0;
  sub_26D3A1568();
  MEMORY[0x26D6BDD90](v1);
  return sub_26D3A1588();
}

uint64_t sub_26D39E500()
{
  v1 = *v0;
  sub_26D3A1568();
  MEMORY[0x26D6BDD90](v1);
  return sub_26D3A1588();
}

double sub_26D39E544@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_26D39E558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1, a2 - 8);
  sub_26D39F9C0(v7, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_26D39FAF0(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = sub_26D3A0EA8();
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCE48);
  (*(*(v13 - 8) + 16))(a3, a1, v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCE50);
  v15 = (a3 + *(result + 36));
  *v15 = sub_26D39FB54;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v12;
  return result;
}

uint64_t sub_26D39E6F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCE40);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCE28);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v23 - v10;
  v12 = sub_26D39E98C();
  if (v12)
  {
    v13 = v12;
    v14 = sub_26D3A0948();
    KeyPath = swift_getKeyPath();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCE38);
    (*(*(v16 - 8) + 16))(v11, a2, v16);
    v17 = &v11[*(v8 + 36)];
    *v17 = KeyPath;
    v17[1] = v14;
    sub_26D34856C(v11, v7, &qword_2804FCE28);
    swift_storeEnumTagMultiPayload();
    sub_26D39F8D4();
    sub_26D3A0718();
  }

  else
  {
    v18 = *(a1 + 8);
    v19 = swift_getKeyPath();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCE38);
    (*(*(v20 - 8) + 16))(v11, a2, v20);
    v21 = &v11[*(v8 + 36)];
    *v21 = v19;
    v21[1] = v18;
    sub_26D34856C(v11, v7, &qword_2804FCE28);
    swift_storeEnumTagMultiPayload();
    sub_26D39F8D4();

    sub_26D3A0718();
  }

  return sub_26D3481A4(v11, &qword_2804FCE28);
}

id sub_26D39E98C()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0;
  }

  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 defaultMetrics];
  v5 = *(v0 + 16);
  v6 = [v4 scaledFontForFont:v3 maximumPointSize:v5];

  if ((*(v0 + 32) & 1) == 0)
  {
    v7 = *(v0 + 24);
    v8 = [v2 defaultMetrics];
    [v8 scaledValueForValue_];
    v10 = v9;

    if (v5 < v10)
    {
      v11 = [v2 defaultMetrics];
      [v3 pointSize];
      v13 = [v3 fontWithSize_];
      v14 = [v11 scaledFontForFont_];

      v3 = v6;
      v6 = v14;
    }
  }

  return v6;
}

uint64_t sub_26D39EAF8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCE00);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v9 - v5;
  sub_26D39E6F0(v1, a1);
  if (qword_2804FAD38 != -1)
  {
    swift_once();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC6F8);
  __swift_project_value_buffer(v7, qword_2804FFF80);
  sub_26D39F7CC();
  sub_26D3484AC(&qword_2804FC718, &qword_2804FC6F8);
  sub_26D3A0AC8();
  return sub_26D3481A4(v6, &qword_2804FCE00);
}

id sub_26D39EC68(int a1)
{
  v3 = [v1 fontDescriptor];
  v4 = [v11 fontDescriptor];
  v5 = [v4 symbolicTraits];

  if ((a1 & ~v5) != 0)
  {
    v6 = v5 | a1;
  }

  else
  {
    v6 = v5 & ~a1;
  }

  v7 = [v3 fontDescriptorWithSymbolicTraits_];

  if (v7)
  {
    [v11 pointSize];
    v9 = [objc_opt_self() fontWithDescriptor:v7 size:v8];

    return v9;
  }

  else
  {

    return v11;
  }
}

uint64_t sub_26D39EDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26D39EFEC();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_26D39EE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26D39EF98();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_26D39EE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26D39C004();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_26D39EF98()
{
  result = qword_2804FCD98;
  if (!qword_2804FCD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCD98);
  }

  return result;
}

unint64_t sub_26D39EFEC()
{
  result = qword_2804FCDA0;
  if (!qword_2804FCDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB7D8);
    sub_26D39F130(&qword_2804FAD50, type metadata accessor for ComponentSize);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCDA0);
  }

  return result;
}

uint64_t sub_26D39F0C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26D39F130(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26D39F178()
{
  result = qword_2804FCDA8;
  if (!qword_2804FCDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCDA8);
  }

  return result;
}

uint64_t sub_26D39F1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCDB8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26D39F2C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCDB8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26D39F390()
{
  sub_26D39F540(319, &qword_2804FCDD0, sub_26D39F4A4, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_26D39F4F0();
    if (v1 <= 0x3F)
    {
      sub_26D39F540(319, &qword_2804FCDD8, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_26D39F4A4()
{
  result = qword_2804FAED0;
  if (!qword_2804FAED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804FAED0);
  }

  return result;
}

void sub_26D39F4F0()
{
  if (!qword_2804FC6E0)
  {
    v0 = sub_26D3A1368();
    if (!v1)
    {
      atomic_store(v0, &qword_2804FC6E0);
    }
  }
}

void sub_26D39F540(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26D39F5C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26D3A01D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26D39F648(uint64_t a1, uint64_t a2)
{
  v4 = sub_26D3A01D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26D39F6B8()
{
  result = sub_26D3A01D8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26D39F75C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCDF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26D39F7CC()
{
  result = qword_2804FCE08;
  if (!qword_2804FCE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FCE00);
    sub_26D39F850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCE08);
  }

  return result;
}

unint64_t sub_26D39F850()
{
  result = qword_2804FCE10;
  if (!qword_2804FCE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FCE18);
    sub_26D39F8D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCE10);
  }

  return result;
}

unint64_t sub_26D39F8D4()
{
  result = qword_2804FCE20;
  if (!qword_2804FCE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FCE28);
    sub_26D3484AC(&qword_2804FCE30, &qword_2804FCE38);
    sub_26D3484AC(&qword_2804FBED8, &qword_2804FCBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCE20);
  }

  return result;
}

uint64_t sub_26D39F9C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TFFrameTracker(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D39FA24()
{
  v1 = *(type metadata accessor for TFFrameTracker(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_26D3A01D8();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26D39FAF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TFFrameTracker(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D39FB54@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TFFrameTracker(0);
  v2 = sub_26D3A0C48();
  result = sub_26D3A0148();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  return result;
}

uint64_t sub_26D39FBF0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FCE00);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC6F8);
  sub_26D39F7CC();
  sub_26D3484AC(&qword_2804FC718, &qword_2804FC6F8);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_26D39FCB8()
{
  result = qword_2804FCE58;
  if (!qword_2804FCE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FCE50);
    sub_26D3484AC(&qword_2804FCE60, &qword_2804FCE48);
    sub_26D3484AC(&qword_2804FCE68, &unk_2804FCE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCE58);
  }

  return result;
}
uint64_t sub_2659CBAB0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_265A1EBA0();
  *a1 = result;
  a1[1] = v5;
  return result;
}

__n128 sub_2659CBB60(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_2659CBB74()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2659CBBAC()
{
  v1 = *(v0 + 4);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 7);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2659CBC7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_2659D22AC();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2659CBCA8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_unknownObjectRetain();
  return sub_2659D235C();
}

uint64_t sub_2659CBCF0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2659CBD34@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  result = (*(*(v3 + 8) + 56))(v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

__n128 sub_2659CBD98(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_2659CBE34()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2659CBE84()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2659CBEC0(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_265A1E6C0();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B6F0, &qword_265A21110);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = sub_265A1E770();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_2659CC038(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_265A1E6C0();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B6F0, &qword_265A21110);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = sub_265A1E770();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_2659CC1C0()
{
  v1 = *(v0 + 64);
  if (v1 != 255)
  {
    sub_2659E07BC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_2659CC21C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_2659CC264()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2659CC314()
{
  v1 = *(v0 + 64);
  if (v1 != 255)
  {
    sub_2659E07BC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_2659CC360()
{
  v1 = *(v0 + 64);
  if (v1 != 255)
  {
    sub_2659E07BC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_2659CC3F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_265A1E770();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2659CC49C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_265A1E770();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2659CC540@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_2659CC8F4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2659CC9C0(uint64_t a1, id *a2)
{
  result = sub_265A1EB80();
  *a2 = 0;
  return result;
}

uint64_t sub_2659CCA38(uint64_t a1, id *a2)
{
  v3 = sub_265A1EB90();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2659CCAB8@<X0>(uint64_t *a1@<X8>)
{
  sub_265A1EBA0();
  v2 = sub_265A1EB70();

  *a1 = v2;
  return result;
}

uint64_t sub_2659CCAFC(uint64_t a1)
{
  v2 = sub_2659CCC48(&qword_28002B030, type metadata accessor for FileProtectionType);
  v3 = sub_2659CCC48(&qword_28002B038, type metadata accessor for FileProtectionType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2659CCC48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2659CCC90(uint64_t a1)
{
  v2 = sub_2659CCC48(&qword_28156A860, type metadata accessor for LNActionTypeSpecificMetadataKey);
  v3 = sub_2659CCC48(&unk_28002B128, type metadata accessor for LNActionTypeSpecificMetadataKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2659CCD4C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_265A1EB70();

  *a2 = v5;
  return result;
}

uint64_t sub_2659CCD94(uint64_t a1)
{
  v2 = sub_2659CCC48(&qword_28156A830, type metadata accessor for LNSystemEntityProtocolIdentifier);
  v3 = sub_2659CCC48(&qword_28002B138, type metadata accessor for LNSystemEntityProtocolIdentifier);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2659CCE50()
{
  v1 = *v0;
  v2 = sub_265A1EBA0();
  v3 = MEMORY[0x266765260](v2);

  return v3;
}

uint64_t sub_2659CCE8C()
{
  v1 = *v0;
  sub_265A1EBA0();
  sub_265A1EBF0();
}

uint64_t sub_2659CCEE0()
{
  v1 = *v0;
  sub_265A1EBA0();
  sub_265A1F3D0();
  sub_265A1EBF0();
  v2 = sub_265A1F400();

  return v2;
}

uint64_t sub_2659CCF54(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_265A1EBA0();
  v6 = v5;
  if (v4 == sub_265A1EBA0() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_265A1F340();
  }

  return v9 & 1;
}

void sub_2659CD04C(uint64_t a1, unint64_t *a2)
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

void SettingsIconRepresentation.iconType.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 24);
  *(a1 + 24) = v5;
  sub_2659CD28C(v2, v3, v4, v5);
}

void sub_2659CD28C(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 == 2)
  {

    v5 = a3;
  }

  else if (a4 <= 1u)
  {
  }
}

__n128 SettingsIconRepresentation.iconType.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  sub_2659CD354(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  result = v5;
  *v1 = v5;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

void sub_2659CD354(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 == 2)
  {
  }

  else if (a4 <= 1u)
  {
  }
}

void static SettingsIconRepresentation.empty.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 3;
}

uint64_t static SettingsIconRepresentation.bundleIcon(bundleIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
}

uint64_t static SettingsIconRepresentation.utType(typeIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
}

id static SettingsIconRepresentation.namedImage(name:bundle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = 2;

  return a3;
}

uint64_t _s12SettingsHost0A18IconRepresentationV0C4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (v5 <= 1)
  {
    if (!*(a1 + 24))
    {
      if (!*(a2 + 24))
      {
        v10 = *a1;
        if (v3 != v7 || v2 != v6)
        {
          v12 = sub_265A1F340();
          sub_2659CD28C(v7, v6, v8, 0);
          sub_2659CD28C(v3, v2, v4, 0);
          sub_2659CD354(v3, v2, v4, 0);
          v13 = v7;
          v14 = v6;
          v15 = v8;
          v16 = 0;
LABEL_23:
          sub_2659CD354(v13, v14, v15, v16);
          return v12 & 1;
        }

        sub_2659CD28C(v10, v2, v8, 0);
        sub_2659CD28C(v3, v2, v4, 0);
        sub_2659CD354(v3, v2, v4, 0);
        v27 = v3;
        v28 = v2;
        v29 = v8;
        v30 = 0;
        goto LABEL_33;
      }

      goto LABEL_28;
    }

    if (v9 == 1)
    {
      v19 = *a1;
      if (v3 != v7 || v2 != v6)
      {
        v12 = sub_265A1F340();
        sub_2659CD28C(v7, v6, v8, 1u);
        sub_2659CD28C(v3, v2, v4, 1u);
        sub_2659CD354(v3, v2, v4, 1u);
        v13 = v7;
        v14 = v6;
        v15 = v8;
        v16 = 1;
        goto LABEL_23;
      }

      sub_2659CD28C(v19, v2, v8, 1u);
      sub_2659CD28C(v3, v2, v4, 1u);
      sub_2659CD354(v3, v2, v4, 1u);
      v27 = v3;
      v28 = v2;
      v29 = v8;
      v30 = 1;
      goto LABEL_33;
    }

LABEL_28:
    sub_2659CD28C(*a2, *(a2 + 8), v8, v9);
    sub_2659CD28C(v3, v2, v4, v5);
    sub_2659CD354(v3, v2, v4, v5);
    v23 = v7;
    v24 = v6;
    v25 = v8;
    v26 = v9;
LABEL_29:
    sub_2659CD354(v23, v24, v25, v26);
    return 0;
  }

  if (v5 == 2)
  {
    if (v9 == 2)
    {
      v17 = v3 == v7 && v2 == v6;
      if (v17 || (v18 = *a1, (sub_265A1F340() & 1) != 0))
      {
        sub_2659CDC8C();
        sub_2659CD28C(v7, v6, v8, 2u);
        sub_2659CD28C(v3, v2, v4, 2u);
        v12 = sub_265A1EF90();
        sub_2659CD354(v3, v2, v4, 2u);
        v13 = v7;
        v14 = v6;
        v15 = v8;
        v16 = 2;
        goto LABEL_23;
      }

      sub_2659CD28C(v7, v6, v8, 2u);
      sub_2659CD28C(v3, v2, v4, 2u);
      sub_2659CD354(v3, v2, v4, 2u);
      v23 = v7;
      v24 = v6;
      v25 = v8;
      v26 = 2;
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (v9 != 3 || (v6 | v7 | v8) != 0)
  {
    goto LABEL_28;
  }

  sub_2659CD354(*a1, v2, v4, 3u);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 3;
LABEL_33:
  sub_2659CD354(v27, v28, v29, v30);
  return 1;
}

BOOL _s12SettingsHost0A18IconRepresentationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v26[0] = v3;
  v26[1] = v2;
  v26[2] = v4;
  v27 = v5;
  v28 = v6;
  v29 = v7;
  v30 = v8;
  v31 = v9;
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v9 != 3 || v7 | v6 | v8)
      {
        v10 = v7;
        goto LABEL_22;
      }

LABEL_29:
      sub_2659CDBDC(v26);
      return 1;
    }

    if (v9 == 2)
    {
      v11 = v8;
      v12 = v6;
      if (v3 == v6 && v2 == v7 || (sub_265A1F340() & 1) != 0)
      {
        sub_2659CDC8C();
        sub_2659CD28C(v12, v7, v11, 2u);
        sub_2659CD28C(v3, v2, v4, 2u);
        v13 = sub_265A1EF90();
        sub_2659CDBDC(v26);
        return (v13 & 1) != 0;
      }

      v6 = v12;
      v18 = v7;
      v8 = v11;
      LOBYTE(v9) = 2;
    }

    else
    {
      v18 = v7;
    }

    sub_2659CD28C(v6, v18, v8, v9);
    v6 = v3;
    v10 = v2;
    v8 = v4;
    LOBYTE(v9) = 2;
    goto LABEL_22;
  }

  if (!v5)
  {
    if (v9)
    {
      sub_2659CD28C(v6, v7, v8, v9);
      v6 = v3;
      v10 = v2;
      v8 = v4;
      LOBYTE(v9) = 0;
LABEL_22:
      sub_2659CD28C(v6, v10, v8, v9);
      sub_2659CDBDC(v26);
      return 0;
    }

    if (v3 == v6 && v2 == v7)
    {
      sub_2659CD28C(v3, v2, v8, 0);
      v14 = v3;
      v15 = v2;
      v16 = v4;
      v17 = 0;
      goto LABEL_28;
    }

    v23 = v6;
    v24 = v8;
    v25 = sub_265A1F340();
    sub_2659CD28C(v23, v7, v24, 0);
    sub_2659CD28C(v3, v2, v4, 0);
    sub_2659CDBDC(v26);
    return (v25 & 1) != 0;
  }

  if (v9 != 1)
  {
    sub_2659CD28C(v6, v7, v8, v9);
    v6 = v3;
    v10 = v2;
    v8 = v4;
    LOBYTE(v9) = 1;
    goto LABEL_22;
  }

  if (v3 == v6 && v2 == v7)
  {
    sub_2659CD28C(v3, v2, v8, 1u);
    v14 = v3;
    v15 = v2;
    v16 = v4;
    v17 = 1;
LABEL_28:
    sub_2659CD28C(v14, v15, v16, v17);
    goto LABEL_29;
  }

  v20 = v6;
  v21 = v8;
  v22 = sub_265A1F340();
  sub_2659CD28C(v20, v7, v21, 1u);
  sub_2659CD28C(v3, v2, v4, 1u);
  sub_2659CDBDC(v26);
  result = 1;
  if ((v22 & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12SettingsHost0A18IconRepresentationV0C4TypeO(uint64_t a1)
{
  if ((*(a1 + 24) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2659CDB20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2659CDB68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_2659CDBB0(uint64_t result, unsigned int a2)
{
  v2 = a2 - 3;
  if (a2 >= 3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_2659CDBDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28002B200, &unk_265A204C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

unint64_t sub_2659CDC8C()
{
  result = qword_28156A800;
  if (!qword_28156A800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28156A800);
  }

  return result;
}

uint64_t (*SettingsListItemModel.type.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t (*SettingsListItemModel.traits.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 48);
  return result;
}

__n128 SettingsListItemModel.init(id:type:traits:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a3;
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v8 = type metadata accessor for SettingsListItemModel();
  v9 = a5 + *(v8 + 44);
  v10 = *(a2 + 48);
  *(v9 + 32) = *(a2 + 32);
  *(v9 + 48) = v10;
  *(v9 + 64) = *(a2 + 64);
  *(v9 + 80) = *(a2 + 80);
  result = *a2;
  v12 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 16) = v12;
  *(a5 + *(v8 + 48)) = v7;
  return result;
}

BOOL static SettingsListItemModel.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 8);
  if (sub_265A1EB60() & 1) != 0 && (v8 = type metadata accessor for SettingsListItemModel(), (static SettingsListItemViewType.== infix(_:_:)(a1 + *(v8 + 44), a2 + *(v8 + 44))))
  {
    return *(a1 + *(v8 + 48)) == *(a2 + *(v8 + 48));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2659CE034(uint64_t a1)
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

uint64_t sub_2659CE0BC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFD)
  {
    v7 = 253;
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

  v8 = ((v6 + 95) & 0xFFFFFFFFFFFFFFF8) + 8;
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
      if (v14)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xFD)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 80);
    if (v17 >= 3)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v13)
  {
    goto LABEL_28;
  }

  v14 = *(a1 + v8);
  if (!v14)
  {
    goto LABEL_28;
  }

LABEL_24:
  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double sub_2659CE1F0(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 95) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 95) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
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

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 95) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 95) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 95) & 0xFFFFFFFFFFFFFFF8) + 8);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0xFD)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (a2 > 0xFD)
    {
      *(v19 + 80) = 0;
      result = 0.0;
      *(v19 + 48) = 0u;
      *(v19 + 64) = 0u;
      *(v19 + 16) = 0u;
      *(v19 + 32) = 0u;
      *v19 = 0u;
      *v19 = a2 - 254;
    }

    else
    {
      *(v19 + 80) = -a2;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

uint64_t SettingsListItemSortOrder.SortType.hashValue.getter()
{
  v1 = *v0;
  sub_265A1F3D0();
  MEMORY[0x2667659F0](v1);
  return sub_265A1F400();
}

uint64_t _s12SettingsHost0A26SearchIndexingRequestIssueV0F4TypeO21LinkServicesOperationO9hashValueSivg_0()
{
  v1 = *v0;
  sub_265A1F3D0();
  MEMORY[0x2667659F0](v1);
  return sub_265A1F400();
}

uint64_t sub_2659CE514()
{
  v1 = *v0;
  sub_265A1F3D0();
  MEMORY[0x2667659F0](v1);
  return sub_265A1F400();
}

unint64_t sub_2659CE55C()
{
  result = qword_28002B288;
  if (!qword_28002B288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B288);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SettingsSearchItemIcon.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SettingsSearchItemIcon.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2659CE7AC()
{
  result = qword_28002B290;
  if (!qword_28002B290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B290);
  }

  return result;
}

unint64_t sub_2659CE804()
{
  result = qword_28002B298;
  if (!qword_28002B298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B298);
  }

  return result;
}

unint64_t sub_2659CE868()
{
  result = qword_28002B2A0;
  if (!qword_28002B2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B2A0);
  }

  return result;
}

unint64_t sub_2659CE8C0()
{
  result = qword_28002B2A8;
  if (!qword_28002B2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B2A8);
  }

  return result;
}

BOOL sub_2659CE958(void *a1, uint64_t *a2)
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

void *sub_2659CE988@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_2659CE9B4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_2659CEA8C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for SettingsListItemTraitSet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SettingsListItemTraitSet(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t static SettingsListItemViewType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_2659CDD7C(a1, v40);
  sub_2659CDD7C(a2, &v42);
  if (v41)
  {
    if (v41 == 1)
    {
      sub_2659CDD7C(v40, &v35);
      v32 = v37;
      v33 = v38;
      v34 = v39;
      v30 = v35;
      v31 = v36;
      if (v47 == 1)
      {
        v27 = v44;
        v28 = v45;
        v29 = v46;
        v25 = v42;
        v26 = v43;
        v22 = v37;
        v23 = v38;
        v24 = v39;
        v20 = v35;
        v21 = v36;
        v19[2] = v44;
        v19[3] = v45;
        v19[4] = v46;
        v19[0] = v42;
        v19[1] = v43;
        v3 = _s12SettingsHost0A14ListLabelModelV2eeoiySbAC_ACtFZ_0(&v20, v19);
        sub_2659CF1F4(&v25);
        sub_2659CF1F4(&v30);
LABEL_13:
        sub_2659CF1C4(v40);
        return v3 & 1;
      }

      sub_2659CF1F4(&v30);
    }

    else
    {
      sub_2659CDD7C(v40, &v35);
      if (v47 == 2)
      {
        sub_2659CEEDC(&v35, &v30);
        sub_2659CEEDC(&v42, &v25);
        v4 = *(&v31 + 1);
        v5 = v32;
        v6 = __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
        v7 = *(&v26 + 1);
        v8 = v27;
        v9 = __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
        *(&v21 + 1) = v7;
        *&v22 = *(v8 + 8);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
        (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v9, v7);
        v11 = *(v5 + 8);
        v3 = sub_2659CEF9C(v6, &v20, v4);
        __swift_destroy_boxed_opaque_existential_1(&v20);
        __swift_destroy_boxed_opaque_existential_1(&v25);
        __swift_destroy_boxed_opaque_existential_1(&v30);
        goto LABEL_13;
      }

      __swift_destroy_boxed_opaque_existential_1(&v35);
    }
  }

  else
  {
    sub_2659CDD7C(v40, &v35);
    if (!v47)
    {
      v12 = v42;
      v13 = v43;
      v14 = BYTE8(v43);
      v30 = v35;
      *&v31 = v36;
      BYTE8(v31) = BYTE8(v36);
      v32 = v37;
      *&v33 = v38;
      v25 = v42;
      *&v26 = v43;
      BYTE8(v26) = BYTE8(v43);
      v27 = v44;
      *&v28 = v45;
      v17 = v35;
      v18 = BYTE8(v36);
      v15 = v36;
      v3 = _s12SettingsHost0A15ListToggleModelV2eeoiySbAC_ACtFZ_0(&v30, &v25);
      sub_2659CD354(v12, *(&v12 + 1), v13, v14);

      sub_2659CD354(v17, *(&v17 + 1), v15, v18);

      goto LABEL_13;
    }

    sub_2659CD354(v35, *(&v35 + 1), v36, BYTE8(v36));
  }

  sub_2659CEE74(v40);
  v3 = 0;
  return v3 & 1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2659CEE74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B2B0, &qword_265A20850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2659CEEDC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2659CEF9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_265A1EFB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v20[-v9 - 8];
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_2659CF370(a2, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B2B8, &qword_265A20A58);
  v15 = swift_dynamicCast();
  v16 = *(v11 + 56);
  if (v15)
  {
    v16(v10, 0, 1, a3);
    (*(v11 + 32))(v14, v10, a3);
    v17 = sub_265A1EB60();
    (*(v11 + 8))(v14, a3);
  }

  else
  {
    v16(v10, 1, 1, a3);
    (*(v6 + 8))(v10, v5);
    v17 = 0;
  }

  return v17 & 1;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2659CF27C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 81))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 80);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2659CF2B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_2659CF30C(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 80) = a2;
  return result;
}

uint64_t sub_2659CF370(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void SettingsListLabelModel.icon.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 24);
  *(a1 + 24) = v5;
  sub_2659CD28C(v2, v3, v4, v5);
}

__n128 SettingsListLabelModel.icon.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  sub_2659CD354(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  result = v5;
  *v1 = v5;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t SettingsListLabelModel.text.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SettingsListLabelModel.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t SettingsListLabelModel.secondaryText.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t SettingsListLabelModel.secondaryText.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

__n128 SettingsListLabelModel.init(icon:text:secondaryText:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, __n128 *a6@<X8>)
{
  v6 = a1[1].n128_u64[0];
  v7 = a1[1].n128_u8[8];
  a6[4].n128_u8[0] = 0;
  a6[4].n128_u64[1] = 0;
  result = *a1;
  *a6 = *a1;
  a6[1].n128_u64[0] = v6;
  a6[1].n128_u8[8] = v7;
  a6[2].n128_u64[0] = a2;
  a6[2].n128_u64[1] = a3;
  a6[3].n128_u64[0] = a4;
  a6[3].n128_u64[1] = a5;
  return result;
}

uint64_t SettingsListLabelModel.badgeNumber(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v10 = v2[2];
  v11 = v3;
  v12 = v2[4];
  v4 = v2[1];
  v9[0] = *v2;
  v5 = v9[0];
  v9[1] = v4;
  *(a2 + 32) = v10;
  *(a2 + 48) = v3;
  v6 = *(v2 + 8);
  *a2 = v5;
  *(a2 + 16) = v4;
  *(a2 + 64) = v6;
  *(a2 + 72) = a1;
  return sub_2659CF658(v9, &v8);
}

uint64_t SettingsListLabelModel.prefersVerticallyStackedTextAndSecondaryText(_:)@<X0>(char a1@<W0>, _OWORD *a2@<X8>)
{
  v4 = v2[3];
  v11 = v2[2];
  v3 = v11;
  v12 = v4;
  v13 = v2[4];
  v5 = v13;
  v6 = v2[1];
  v10[0] = *v2;
  v7 = v10[0];
  v10[1] = v6;
  a2[3] = v4;
  a2[4] = v5;
  a2[1] = v6;
  a2[2] = v3;
  *a2 = v7;
  *(a2 + 64) = a1;
  return sub_2659CF658(v10, &v9);
}

BOOL _s12SettingsHost0A14ListLabelModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v22 = *(a1 + 64);
  v18 = *(a1 + 72);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *(a2 + 56);
  v19 = *(a2 + 48);
  v20 = *(a1 + 48);
  v21 = *(a2 + 64);
  v17 = *(a2 + 72);
  v13 = *(a1 + 24);
  v14 = *(a2 + 24);
  v27 = *a1;
  v28 = v2;
  v29 = v3;
  v30 = v13;
  v23 = v7;
  v24 = v8;
  v25 = v9;
  v26 = v14;
  sub_2659CD28C(v27, v2, v3, v13);
  sub_2659CD28C(v7, v8, v9, v14);
  LOBYTE(v9) = _s12SettingsHost0A18IconRepresentationV2eeoiySbAC_ACtFZ_0(&v27, &v23);
  sub_2659CD354(v23, v24, v25, v26);
  sub_2659CD354(v27, v28, v29, v30);
  if ((v9 & 1) == 0 || (v4 != v10 || v5 != v11) && (sub_265A1F340() & 1) == 0)
  {
    return 0;
  }

  if (!v6)
  {
    result = 0;
    if (v12)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (!v12)
  {
    return 0;
  }

  if (v20 == v19 && v6 == v12)
  {
    if (v22 != v21)
    {
      return 0;
    }

    return v18 == v17;
  }

  v16 = sub_265A1F340();
  result = 0;
  if (v16)
  {
LABEL_15:
    if (((v22 ^ v21) & 1) == 0)
    {
      return v18 == v17;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_2659CF89C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2659CF8E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void SettingsListToggleModel.icon.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 24);
  *(a1 + 24) = v5;
  sub_2659CD28C(v2, v3, v4, v5);
}

__n128 SettingsListToggleModel.icon.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  sub_2659CD354(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  result = v5;
  *v1 = v5;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t SettingsListToggleModel.text.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SettingsListToggleModel.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t SettingsListToggleModel.state.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

__n128 SettingsListToggleModel.init(icon:text:state:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, __n128 *a5@<X8>)
{
  v5 = a1[1].n128_u64[0];
  v6 = a1[1].n128_u8[8];
  result = *a1;
  *a5 = *a1;
  a5[1].n128_u64[0] = v5;
  a5[1].n128_u8[8] = v6;
  a5[2].n128_u64[0] = a2;
  a5[2].n128_u64[1] = a3;
  a5[3].n128_u64[0] = a4;
  return result;
}

uint64_t SettingsListToggleModel.ToggleState.isOn.getter()
{
  swift_getKeyPath();
  sub_2659D01B0();
  sub_265A1E850();

  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_2659CFB78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2659D01B0();
  sub_265A1E850();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t SettingsListToggleModel.ToggleState.isOn.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2659D01B0();
    sub_265A1E840();
  }

  return result;
}

void (*SettingsListToggleModel.ToggleState.isOn.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtCV12SettingsHost23SettingsListToggleModel11ToggleState___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_2659D01B0();
  sub_265A1E850();

  *v4 = v1;
  swift_getKeyPath();
  sub_265A1E870();

  swift_beginAccess();
  return sub_2659CFE30;
}

void sub_2659CFE30(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  v2 = v1[4];
  v3 = v1[5];
  *v1 = v1[3];
  swift_getKeyPath();
  sub_265A1E860();

  free(v1);
}

uint64_t SettingsListToggleModel.ToggleState.setIsOn.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t SettingsListToggleModel.ToggleState.__allocating_init(isOn:setIsOn:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  sub_265A1E880();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  return v9;
}

uint64_t SettingsListToggleModel.ToggleState.init(isOn:setIsOn:)(char a1, uint64_t a2, uint64_t a3)
{
  sub_265A1E880();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

uint64_t SettingsListToggleModel.ToggleState.deinit()
{
  v1 = *(v0 + 32);

  v2 = OBJC_IVAR____TtCV12SettingsHost23SettingsListToggleModel11ToggleState___observationRegistrar;
  v3 = sub_265A1E890();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t SettingsListToggleModel.ToggleState.__deallocating_deinit()
{
  v1 = *(v0 + 4);

  v2 = OBJC_IVAR____TtCV12SettingsHost23SettingsListToggleModel11ToggleState___observationRegistrar;
  v3 = sub_265A1E890();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

BOOL _s12SettingsHost0A15ListToggleModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *(a2 + 48);
  v13 = *(a1 + 24);
  v14 = *(a2 + 24);
  v20 = *a1;
  v21 = v2;
  v22 = v3;
  v23 = v13;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v14;
  sub_2659CD28C(v20, v2, v3, v13);
  sub_2659CD28C(v7, v8, v9, v14);
  LOBYTE(v7) = _s12SettingsHost0A18IconRepresentationV2eeoiySbAC_ACtFZ_0(&v20, &v16);
  sub_2659CD354(v16, v17, v18, v19);
  sub_2659CD354(v20, v21, v22, v23);
  return (v7 & 1) != 0 && (v4 == v10 && v5 == v11 || (sub_265A1F340() & 1) != 0) && v6 == v12;
}

unint64_t sub_2659D01B0()
{
  result = qword_28002B2C8;
  if (!qword_28002B2C8)
  {
    type metadata accessor for SettingsListToggleModel.ToggleState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B2C8);
  }

  return result;
}

uint64_t type metadata accessor for SettingsListToggleModel.ToggleState()
{
  result = qword_28002B2D0;
  if (!qword_28002B2D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2659D0254()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2659D02C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2659D030C(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_2659D0370()
{
  result = sub_265A1E890();
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

uint64_t SettingsListContentSnapshot.sections.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SettingsListContentSnapshot.init(sections:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v56 = a7;
  v13 = type metadata accessor for SettingsListItemModel();
  v14 = sub_265A1EFB0();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v75 = &v54 - v17;
  v72 = *(a3 - 8);
  v18 = *(v72 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v74 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v13 - 8);
  v55 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v54 - v22;
  v80 = a2;
  v81 = a3;
  v82 = a4;
  v83 = a5;
  v84 = a6;
  v24 = type metadata accessor for SettingsListSectionModel();
  v25 = sub_265A1EFB0();
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v63 = &v54 - v28;
  v29 = *(a2 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v27);
  v62 = &v54 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *(v24 - 8);
  v54 = *(v66 + 64);
  MEMORY[0x28223BE20](v31);
  v70 = &v54 - v33;

  v64 = a2;
  v65 = a4;
  v80 = sub_265A1EAB0();
  v76 = a3;
  v77 = a6;
  v79 = sub_265A1EAB0();
  if (!sub_265A1ED40())
  {
    goto LABEL_20;
  }

  v34 = 0;
  v61 = *(v24 + 60);
  v69 = (v66 + 16);
  v60 = (v29 + 16);
  v59 = (v66 + 56);
  v58 = (v66 + 8);
  v72 += 16;
  v73 = (v21 + 16);
  v71 = (v21 + 32);
  v68 = v24;
  v57 = a1;
  while (1)
  {
    v36 = v24;
    v37 = sub_265A1ED10();
    sub_265A1ECE0();
    if (v37)
    {
      v38 = *(v66 + 16);
      v38(v70, (a1 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v34), v36);
      v39 = __OFADD__(v34, 1);
      v40 = v34 + 1;
      if (v39)
      {
        goto LABEL_19;
      }
    }

    else
    {
      result = sub_265A1F0D0();
      if (v54 != 8)
      {
        goto LABEL_23;
      }

      v78 = result;
      v38 = *v69;
      (*v69)(v70, &v78, v36);
      swift_unknownObjectRelease();
      v39 = __OFADD__(v34, 1);
      v40 = v34 + 1;
      if (v39)
      {
LABEL_19:
        __break(1u);
LABEL_20:

        v52 = v79;
        v51 = v80;
        v53 = v56;
        *v56 = a1;
        v53[1] = v51;
        v53[2] = v52;
        return result;
      }
    }

    v67 = v40;
    v41 = v70;
    (*v60)(v62, v70, v64);
    v42 = v63;
    v43 = v68;
    v38(v63, v41, v68);
    (*v59)(v42, 0, 1, v43);
    sub_265A1EB00();
    sub_265A1EB30();
    v44 = *&v41[v61];
    v45 = *v58;

    v45(v41, v43);
    if (sub_265A1ED40())
    {
      break;
    }

LABEL_3:

    a1 = v57;
    v24 = v68;
    v35 = sub_265A1ED40();
    v34 = v67;
    if (v67 == v35)
    {
      goto LABEL_20;
    }
  }

  v46 = 0;
  while (1)
  {
    v47 = sub_265A1ED10();
    sub_265A1ECE0();
    if ((v47 & 1) == 0)
    {
      break;
    }

    result = (*(v21 + 16))(v23, v44 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v46, v13);
    v49 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      goto LABEL_21;
    }

LABEL_10:
    (*v72)(v74, v23, v76);
    v50 = v75;
    (*v71)(v75, v23, v13);
    (*(v21 + 56))(v50, 0, 1, v13);
    sub_265A1EB00();
    sub_265A1EB30();
    ++v46;
    if (v49 == sub_265A1ED40())
    {
      goto LABEL_3;
    }
  }

  result = sub_265A1F0D0();
  if (v55 != 8)
  {
    goto LABEL_22;
  }

  v78 = result;
  (*v73)(v23, &v78, v13);
  result = swift_unknownObjectRelease();
  v49 = v46 + 1;
  if (!__OFADD__(v46, 1))
  {
    goto LABEL_10;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t SettingsListContentSnapshot.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  v5 = *(a2 + 32);
  v6 = *(a2 + 16);
  v7 = *(a2 + 48);
  type metadata accessor for SettingsListSectionModel();
  return sub_265A1EB20();
}

uint64_t SettingsListContentSnapshot.subscript.getter(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = a2[3];
  v5 = a2[5];
  v6 = a2[6];
  type metadata accessor for SettingsListItemModel();

  return sub_265A1EB20();
}

uint64_t static SettingsListContentSnapshot.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v8 = a1[2];
  v9 = a1[1];
  v3 = *a2;
  v4 = a2[1];
  v7 = a2[2];
  type metadata accessor for SettingsListSectionModel();
  swift_getWitnessTable();
  if (sub_265A1ED60() & 1) != 0 && (sub_265A1EB10())
  {
    type metadata accessor for SettingsListItemModel();
    swift_getWitnessTable();
    v5 = sub_265A1EB10();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_2659D0E00(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  v7 = a3[6];
  return static SettingsListContentSnapshot.== infix(_:_:)(a1, a2);
}

uint64_t sub_2659D0E14()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2659D0E70(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2659D0EB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2659D0F34(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 24);
  v7 = sub_265A1EFB0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(v11 + 16))(&v14 - v9, a1);
  v12 = *a2;
  return sub_2659D10A4(v10);
}

uint64_t sub_2659D1004@<X0>(uint64_t a1@<X8>)
{
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 96);
  KeyPath = swift_getKeyPath();
  sub_2659D2650(KeyPath);

  return sub_2659D21C0(a1);
}

uint64_t sub_2659D10A4(uint64_t a1)
{
  v2 = v1;
  v42 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28002B360, &qword_265A21C00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v44 = v40 - v6;
  v7 = *(v42 + 80);
  v8 = sub_265A1EFB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v40 - v15;
  v17 = *(v7 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v43 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v40 - v20;
  (*(v9 + 16))(v16, a1, v8);
  if ((*(v17 + 48))(v16, 1, v7) == 1)
  {
    v22 = *(v9 + 8);
    v22(v16, v8);
    sub_2659D258C();
    return (v22)(a1, v8);
  }

  v24 = *(v17 + 32);
  v40[1] = v17 + 32;
  v41 = a1;
  v40[0] = v24;
  v24(v21, v16, v7);
  if (sub_2659D22AC())
  {
    v26 = v25;
    ObjectType = swift_getObjectType();
    LOBYTE(v26) = (*(v26 + 32))(v2, v21, ObjectType, v26);
    swift_unknownObjectRelease();
    if ((v26 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (sub_2659D22AC())
  {
    v29 = v28;
    v30 = swift_getObjectType();
    LOBYTE(v29) = (*(v29 + 40))(v2, v21, v30, v29);
    swift_unknownObjectRelease();
    if ((v29 & 1) == 0)
    {
      v32 = sub_265A1EE00();
      (*(*(v32 - 8) + 56))(v44, 1, 1, v32);
      v33 = swift_allocObject();
      swift_weakInit();
      (*(v17 + 16))(v43, v21, v7);
      sub_265A1EDD0();

      v34 = sub_265A1EDC0();
      v35 = (*(v17 + 80) + 64) & ~*(v17 + 80);
      v36 = swift_allocObject();
      v37 = MEMORY[0x277D85700];
      v36[2] = v34;
      v36[3] = v37;
      v36[4] = v7;
      v39 = v42;
      v38 = v43;
      v36[5] = *(v42 + 88);
      v36[6] = *(v39 + 96);
      v36[7] = v33;
      (v40[0])(v36 + v35, v38, v7);

      sub_2659D1A38(0, 0, v44, &unk_265A20E68, v36);

LABEL_9:
      (*(v9 + 8))(v41, v8);
      return (*(v17 + 8))(v21, v7);
    }
  }

  (*(v17 + 16))(v13, v21, v7);
  (*(v17 + 56))(v13, 0, 1, v7);
  sub_2659D258C();
  v31 = *(v9 + 8);
  v31(v41, v8);
  v31(v13, v8);
  return (*(v17 + 8))(v21, v7);
}

uint64_t sub_2659D15D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_265A1EDD0();
  v5[7] = sub_265A1EDC0();
  v7 = sub_265A1ED70();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x2822009F8](sub_2659D166C, v7, v6);
}

uint64_t sub_2659D166C()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_2659D22AC();
    v0[11] = v4;
    if (v4)
    {
      v6 = v5;
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 48);
      v16 = (v8 + *v8);
      v9 = v8[1];
      v10 = swift_task_alloc();
      v0[12] = v10;
      *v10 = v0;
      v10[1] = sub_2659D1828;
      v11 = v0[6];

      return v16(v3, v11, ObjectType, v6);
    }

    v14 = v0[7];
  }

  else
  {
    v13 = v0[7];
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_2659D1828()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_2659D19B0;
  }

  else
  {
    v7 = v2[11];
    swift_unknownObjectRelease();
    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_2659D1944;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2659D1944()
{
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2659D19B0()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[7];

  swift_unknownObjectRelease();

  v5 = v0[1];

  return v5();
}

uint64_t sub_2659D1A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28002B360, &qword_265A21C00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2659D302C(a3, v27 - v11);
  v13 = sub_265A1EE00();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2659D309C(v12);
  }

  else
  {
    sub_265A1EDF0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_265A1ED70();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_265A1EBD0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_2659D309C(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2659D309C(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void (*sub_2659D1CF8(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v7 = sub_265A1EFB0();
  v5[1] = v7;
  v8 = *(v7 - 8);
  v5[2] = v8;
  v9 = *(v8 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v8 + 64));
    v10 = malloc(v9);
  }

  v5[4] = v10;
  sub_2659D1004(v10);
  return sub_2659D1E14;
}

void sub_2659D1E14(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = *v2;
    (*(v6 + 16))((*a1)[3], v4, v5);
    sub_2659D10A4(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = *v2;
    sub_2659D10A4((*a1)[4]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_2659D1EC8(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_265A1EFB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  result = sub_2659D22AC();
  if (result)
  {
    v11 = v10;
    ObjectType = swift_getObjectType();
    v13 = *(*v1 + 104);
    swift_beginAccess();
    (*(v5 + 16))(v8, v1 + v13, v4);
    (*(v11 + 56))(v1, v8, a1, ObjectType, v11);
    swift_unknownObjectRelease();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_2659D2044(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_265A1EFB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  result = sub_2659D22AC();
  if (result)
  {
    v11 = v10;
    ObjectType = swift_getObjectType();
    v13 = *(*v1 + 104);
    swift_beginAccess();
    (*(v5 + 16))(v8, v1 + v13, v4);
    (*(v11 + 64))(v1, a1, v8, ObjectType, v11);
    swift_unknownObjectRelease();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_2659D21C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = sub_265A1EFB0();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t sub_2659D226C()
{
  v1 = v0 + *(*v0 + 112);
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_2659D22AC()
{
  v5 = *(*v0 + 80);
  v6 = *(*v0 + 96);
  KeyPath = swift_getKeyPath();
  sub_2659D2650(KeyPath);

  v2 = v0 + *(*v0 + 112);
  result = swift_unknownObjectWeakLoadStrong();
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_2659D235C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectRelease();
  v6 = *(v2 + 80);
  v7 = *(v1 + 96);
  KeyPath = swift_getKeyPath();
  sub_2659D2900(KeyPath);

  return swift_unknownObjectRelease();
}

uint64_t SettingsListSelectionState.__allocating_init(delegate:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  SettingsListSelectionState.init(delegate:)();
  return v3;
}

uint64_t SettingsListSelectionState.init(delegate:)()
{
  (*(*(*(*v0 + 80) - 8) + 56))(v0 + *(*v0 + 104), 1, 1);
  *(v0 + *(*v0 + 112) + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = v0 + *(*v0 + 120);
  sub_265A1E880();
  sub_2659D235C();
  return v0;
}

uint64_t sub_2659D258C()
{
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 96);
  KeyPath = swift_getKeyPath();
  sub_2659D2900(KeyPath);
}

uint64_t sub_2659D2650(void *a1)
{
  v2 = *(*v1 + 120);
  v3 = *(*a1 + *MEMORY[0x277D84DE8]);
  swift_getWitnessTable();
  return sub_265A1E850();
}

uint64_t sub_2659D26FC(uint64_t a1)
{
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = (*(*(v1[4] - 8) + 80) + 64) & ~*(*(v1[4] - 8) + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2659D280C;

  return sub_2659D15D4(a1, v8, v9, v6, v1 + v7);
}

uint64_t sub_2659D280C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2659D2900(void *a1)
{
  v2 = *(*v1 + 120);
  v3 = *(*a1 + *MEMORY[0x277D84DE8]);
  swift_getWitnessTable();
  return sub_265A1E840();
}

uint64_t SettingsListSelectionState.deinit()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 80);
  v3 = sub_265A1EFB0();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  sub_2659D2AD0(v0 + *(*v0 + 112));
  v4 = *(*v0 + 120);
  v5 = sub_265A1E890();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t SettingsListSelectionState.__deallocating_deinit()
{
  SettingsListSelectionState.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2659D2B54(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_265A1EFB0();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = sub_265A1E890();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of SettingsListSelectionStateDelegate.settingsListSelectionState(_:performActionForItemWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2659D280C;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_2659D2E80()
{
  v1 = v0[3];
  *(v0[2] + *(*v0[2] + 112) + 8) = v0[4];
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_2659D2EBC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = sub_265A1EFB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = *(v3 + 104);
  swift_beginAccess();
  (*(v6 + 16))(v9, v1 + v10, v5);
  sub_2659D1EC8(a1);
  swift_beginAccess();
  (*(v6 + 24))(v1 + v10, a1, v5);
  swift_endAccess();
  sub_2659D2044(v9);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2659D302C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28002B360, &qword_265A21C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2659D309C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28002B360, &qword_265A21C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2659D3104(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2659D31EC;

  return sub_2659F17DC(a1, v5);
}

uint64_t sub_2659D31BC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_2659D2EBC(v1);
}

uint64_t ComposableSettingsListSectionProvider.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t ComposableSettingsListSectionProvider.id.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t (*ComposableSettingsListSectionProvider.id.modify())()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t ComposableSettingsListSectionProvider.performanceDescription.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v27.i8[-v8];
  v42 = 0;
  v43 = 0xE000000000000000;
  sub_265A1F0A0();
  v44 = v42;
  v45 = v43;
  v10 = *v1;
  v11 = sub_265A1F450();
  MEMORY[0x266765220](v11);

  MEMORY[0x266765220](0x203A6469207B20, 0xE700000000000000);
  v12 = *(*v1 + 128);
  swift_beginAccess();
  (*(v6 + 16))(v9, v2 + v12, v5);
  sub_265A1F330();
  (*(v6 + 8))(v9, v5);
  v13 = MEMORY[0x266765220](0xD000000000000016, 0x8000000265A23550);
  v41 = *(v2 + *(*v2 + 136));
  v14 = v3[13];
  v13.i64[0] = v5;
  v37 = v3[14];
  v15 = v37;
  v38 = v3[15];
  v16 = v38;
  v27 = *(v4 + 11);
  v17 = *(v4 + 6);
  v35 = vzip1q_s64(v13, v27);
  v36 = v17;
  KeyPath = swift_getKeyPath();
  v29 = v5;
  v30 = v27;
  v31 = v14;
  v32 = v15;
  v33 = v16;
  v34 = KeyPath;

  v39 = v5;
  v40 = v27;
  swift_getExtendedExistentialTypeMetadata();
  v19 = sub_265A1ED50();
  WitnessTable = swift_getWitnessTable();
  v22 = sub_2659D37A4(sub_2659D3778, v28, v19, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v21);

  v39 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_28002B3E8, &unk_265A21020);
  sub_2659D3BC4();
  v23 = sub_265A1EB50();
  v25 = v24;

  MEMORY[0x266765220](v23, v25);

  MEMORY[0x266765220](2099272992, 0xE400000000000000);
  return v44;
}

uint64_t sub_2659D37A4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_265A1EE30();
  if (!v26)
  {
    return sub_265A1ED00();
  }

  v48 = v26;
  v52 = sub_265A1F190();
  v39 = sub_265A1F1A0();
  sub_265A1F140();
  result = sub_265A1EE20();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_265A1EE70();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_265A1F180();
      result = sub_265A1EE40();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2659D3BC4()
{
  result = qword_28156A910;
  if (!qword_28156A910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_28002B3E8, &unk_265A21020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156A910);
  }

  return result;
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

uint64_t ComposableSettingsListSectionProvider.__allocating_init(id:_:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = (*(*(*(*v7 + 80) - 8) + 16))(v7 + *(*v7 + 128), a1);
  *(v7 + *(*v7 + 136)) = a2(v8);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v7;
}

uint64_t ComposableSettingsListSectionProvider.init(id:_:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = *v2;
  v5 = sub_2659D4BB0(a1, a2);
  (*(*(*(v4 + 80) - 8) + 8))(a1);
  return v5;
}

Swift::Void __swiftcall ComposableSettingsListSectionProvider.performDeferredSetupForProvider()()
{
  v1 = *v0;
  v2 = *(v0 + *(*v0 + 136));
  v3 = *(*v0 + 96);

  v8 = *(v1 + 80);
  v9 = v3;
  swift_getExtendedExistentialTypeMetadata();
  if (sub_265A1ED40())
  {
    v4 = 0;
    v5 = v2 + 32;
    while (1)
    {
      v6 = sub_265A1ED10();
      sub_265A1ECE0();
      if ((v6 & 1) == 0)
      {
        break;
      }

      sub_2659CF370(v5, &v8);
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_8;
      }

      __swift_project_boxed_opaque_existential_1(&v8, v10);
      SettingsListSectionModelProviding.signpostedPerformDeferredSetupForProvider()();
      __swift_destroy_boxed_opaque_existential_1(&v8);
      ++v4;
      v5 += 40;
      if (v7 == sub_265A1ED40())
      {
        goto LABEL_6;
      }
    }

    sub_265A1F0D0();
    __break(1u);
LABEL_8:
    __break(1u);
  }

  else
  {
LABEL_6:
  }
}

uint64_t ComposableSettingsListSectionProvider.produceListSectionModel(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a1;
  v97 = a2;
  v3 = *v2;
  v4 = *(*v2 + 80);
  v91 = *(v4 - 8);
  v5 = *(v91 + 64);
  MEMORY[0x28223BE20](a1);
  v93 = v85 - v6;
  v7 = v3[11];
  *&v8 = v4;
  *(&v8 + 1) = v7;
  v10 = *(v9 + 104);
  v11 = v3[15];
  v95 = v10;
  v119 = v8;
  v120 = v10;
  v96 = v11;
  v121 = v11;
  v12 = type metadata accessor for SettingsListSectionModel();
  v108 = sub_265A1EFB0();
  v98 = *(v108 - 8);
  v13 = *(v98 + 64);
  v14 = MEMORY[0x28223BE20](v108);
  v16 = v85 - v15;
  v115 = *(v12 - 8);
  v17 = *(v115 + 64);
  MEMORY[0x28223BE20](v14);
  v109 = v85 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B6F0, &qword_265A21110);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v90 = v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v89 = v85 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v88 = v85 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v94 = v85 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v107 = v85 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v106 = v85 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = v85 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = v85 - v36;
  v38 = v3;
  v39 = *(v2 + v3[17]);
  v118 = v39;
  v92 = v2;
  v40 = v38[12];
  *&v119 = v4;
  *(&v119 + 1) = v7;
  *&v120 = v40;
  swift_getExtendedExistentialTypeMetadata();
  sub_265A1ED50();
  swift_getWitnessTable();
  if (sub_265A1EE60())
  {
    return (*(v115 + 56))(v97, 1, 1, v12);
  }

  v86 = v4;
  v85[2] = v7;
  v85[1] = *(&v95 + 1);
  v103 = type metadata accessor for SettingsListItemModel();
  v118 = sub_265A1ED00();
  v42 = sub_265A1E6C0();
  v43 = *(v42 - 8);
  v44 = *(v43 + 56);
  v105 = v37;
  v44(v37, 1, 1, v42);
  v104 = v35;
  v112 = v42;
  v44(v35, 1, 1, v42);

  v45 = sub_265A1ED40();
  v116 = v12;
  v87 = v43;
  if (v45)
  {
    v46 = 0;
    v113 = 0;
    v47 = v39 + 32;
    v111 = (v115 + 48);
    v100 = (v115 + 32);
    v110 = (v43 + 48);
    v99 = (v115 + 8);
    v98 += 8;
    v48 = v109;
    v102 = v16;
    v101 = v39;
    while (1)
    {
      v51 = sub_265A1ED10();
      sub_265A1ECE0();
      if ((v51 & 1) == 0)
      {
        break;
      }

      result = sub_2659CF370(v47, &v119);
      v52 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        goto LABEL_26;
      }

      v53 = *(&v120 + 1);
      v54 = v121;
      __swift_project_boxed_opaque_existential_1(&v119, *(&v120 + 1));
      v55 = v54;
      v12 = v116;
      SettingsListSectionModelProviding.signpostedProduceListSectionModel(context:)(v114, v53, v55);
      __swift_destroy_boxed_opaque_existential_1(&v119);
      if ((*v111)(v16, 1, v12) == 1)
      {
        (*v98)(v16, v108);
      }

      else
      {
        v56 = v104;
        v57 = v106;
        (*v100)(v48, v16, v12);
        v58 = v105;
        sub_2659D4C60(v105, v57);
        v59 = *v110;
        if ((*v110)(v57, 1, v112) == 1)
        {
          sub_2659D4CD0(v58);
          sub_2659D4CD0(v57);
          v60 = v48;
          v61 = v12;
          sub_2659D4C60(&v60[*(v12 + 68)], v58);
        }

        else
        {
          v61 = v12;
          sub_2659D4CD0(v57);
        }

        v62 = v56;
        v63 = v56;
        v64 = v107;
        sub_2659D4C60(v63, v107);
        if (v59(v64, 1, v112) == 1)
        {
          sub_2659D4CD0(v62);
          sub_2659D4CD0(v64);
          v65 = v109;
          sub_2659D4C60(&v109[*(v61 + 72)], v62);
          v16 = v102;
        }

        else
        {
          sub_2659D4CD0(v64);
          v16 = v102;
          v65 = v109;
        }

        v117 = *&v65[*(v61 + 60)];
        sub_265A1ED50();

        swift_getWitnessTable();
        v12 = v116;
        sub_265A1ED30();
        v66 = *&v65[*(v12 + 64)];
        (*v99)(v65, v12);
        v113 |= v66;
        v48 = v65;
      }

      ++v46;
      v47 += 40;
      v49 = v52 == sub_265A1ED40();
      v50 = v115;
      if (v49)
      {
        goto LABEL_18;
      }
    }

    result = sub_265A1F0D0();
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    v113 = 0;
    v50 = v115;
LABEL_18:

    v67 = v105;
    v68 = v94;
    sub_2659D4C60(v105, v94);
    v69 = *(v87 + 48);
    v70 = v112;
    v71 = v69(v68, 1, v112);
    sub_2659D4CD0(v68);
    v72 = v104;
    v73 = v113;
    if (v71 != 1)
    {
      goto LABEL_23;
    }

    v74 = v88;
    sub_2659D4C60(v104, v88);
    v75 = v69(v74, 1, v70);
    sub_2659D4CD0(v74);
    if (v75 != 1)
    {
      goto LABEL_23;
    }

    *&v119 = v118;
    sub_265A1ED50();
    swift_getWitnessTable();
    v12 = v116;
    if ((sub_265A1EE60() & 1) != 0 && !v73)
    {
      sub_2659D4CD0(v72);
      sub_2659D4CD0(v67);

      return (*(v50 + 56))(v97, 1, 1, v12);
    }

    else
    {
LABEL_23:
      v76 = v92;
      v77 = *(*v92 + 128);
      swift_beginAccess();
      v78 = v93;
      v79 = v50;
      v80 = v86;
      (*(v91 + 16))(v93, v76 + v77, v86);
      v81 = v118;
      v117 = v73;
      v82 = v89;
      sub_2659D4C60(v67, v89);
      v83 = v90;
      sub_2659D4C60(v72, v90);
      v84 = v97;
      SettingsListSectionModel.init(id:items:traits:headerText:footerText:)(v78, v81, &v117, v82, v83, v80, v97);
      sub_2659D4CD0(v72);
      sub_2659D4CD0(v67);
      return (*(v79 + 56))(v84, 0, 1, v12);
    }
  }

  return result;
}

uint64_t ComposableSettingsListSectionProvider.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 128));
  v1 = *(v0 + *(*v0 + 136));

  return v0;
}

uint64_t ComposableSettingsListSectionProvider.__deallocating_deinit()
{
  ComposableSettingsListSectionProvider.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2659D4BB0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = (*(*(*(*v2 + 80) - 8) + 16))(v2 + *(*v2 + 128), a1);
  *(v2 + *(*v2 + 136)) = a2(v4);
  return v2;
}

uint64_t sub_2659D4C60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B6F0, &qword_265A21110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2659D4CD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B6F0, &qword_265A21110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2659D4D38(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2659D4D8C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t StaticSettingsListSectionProvider.__allocating_init(id:sortOrder:_:)(uint64_t a1, _BYTE *a2, uint64_t (*a3)(uint64_t))
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  LOBYTE(a2) = *a2;
  v10 = (*(*(*(*v9 + 80) - 8) + 16))(v9 + *(*v9 + 128), a1);
  *(v9 + *(*v9 + 136)) = a2;
  *(v9 + *(*v9 + 144)) = a3(v10);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v9;
}

uint64_t StaticSettingsListSectionProvider.init(id:sortOrder:_:)(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  v6 = sub_2659D5830(a1, a2, a3);
  (*(*(*(v5 + 80) - 8) + 8))(a1);
  return v6;
}

Swift::Void __swiftcall StaticSettingsListSectionProvider.performDeferredSetupForProvider()()
{
  v1 = *v0;
  v2 = *(v0 + *(*v0 + 144));

  *v7 = *(v1 + 88);
  swift_getExtendedExistentialTypeMetadata();
  if (sub_265A1ED40())
  {
    v3 = 0;
    v4 = v2 + 32;
    while (1)
    {
      v5 = sub_265A1ED10();
      sub_265A1ECE0();
      if ((v5 & 1) == 0)
      {
        break;
      }

      sub_2659CF370(v4, v7);
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_8;
      }

      __swift_project_boxed_opaque_existential_1(v7, v8);
      SettingsListItemModelProviding.signpostedPerformDeferredSetupForProvider()();
      __swift_destroy_boxed_opaque_existential_1(v7);
      ++v3;
      v4 += 40;
      if (v6 == sub_265A1ED40())
      {
        goto LABEL_6;
      }
    }

    sub_265A1F0D0();
    __break(1u);
LABEL_8:
    __break(1u);
  }

  else
  {
LABEL_6:
  }
}

uint64_t StaticSettingsListSectionProvider.produceListSectionModel(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B6F0, &qword_265A21110);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v41 = v34 - v11;
  v12 = *(v4 + 80);
  v39 = *(v12 - 8);
  v13 = *(v39 + 64);
  MEMORY[0x28223BE20](v10);
  v40 = v34 - v14;
  v15 = *(v2 + *(v4 + 144));
  v46 = v15;
  v16 = *(v4 + 88);
  v17 = *(v4 + 96);
  v42 = v16;
  v43 = v17;
  swift_getExtendedExistentialTypeMetadata();
  sub_265A1ED50();
  swift_getWitnessTable();
  v18 = sub_265A1EE60();
  if (v18)
  {
    v19 = *(v4 + 120);
    v42 = v12;
    v43 = v16;
    v44 = *(v4 + 104);
    v45 = v19;
    v20 = type metadata accessor for SettingsListSectionModel();
    v21 = 1;
  }

  else
  {
    v34[1] = v34;
    v42 = v15;
    MEMORY[0x28223BE20](v18);
    v37 = a2;
    v34[-8] = v12;
    v34[-7] = v16;
    v22 = *(v4 + 104);
    v35 = v9;
    v36 = v22;
    v23 = *(v4 + 112);
    v24 = *(v4 + 120);
    v34[-6] = v17;
    v34[-5] = v22;
    v34[-4] = v23;
    v34[-3] = v24;
    v32 = v38;
    type metadata accessor for SettingsListItemModel();

    swift_getWitnessTable();
    v38 = sub_265A1EC80();

    v25 = v40;
    (*(v39 + 16))(v40, v2 + *(*v2 + 128), v12);
    v42 = 0;
    v26 = sub_265A1E6C0();
    v27 = *(*(v26 - 8) + 56);
    v28 = v41;
    v27(v41, 1, 1, v26);
    v29 = v35;
    v27(v35, 1, 1, v26);
    a2 = v37;
    v32 = v23;
    v33 = v24;
    v30 = v36;
    SettingsListSectionModel.init(id:items:traits:headerText:footerText:)(v25, v38, &v42, v28, v29, v12, v37);
    v42 = v12;
    v43 = v16;
    *&v44 = v30;
    *(&v44 + 1) = v23;
    v45 = v24;
    v20 = type metadata accessor for SettingsListSectionModel();
    v21 = 0;
  }

  return (*(*(v20 - 8) + 56))(a2, v21, 1);
}

uint64_t sub_2659D5608(void *a1, uint64_t a2)
{
  sub_265A1EDD0();
  sub_265A1EDC0();
  sub_265A1ED70();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  SettingsListItemModelProviding.signpostedProduceListItemModel(context:)(a2, v4, v5);
}

uint64_t StaticSettingsListSectionProvider.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 128));
  v1 = *(v0 + *(*v0 + 144));

  return v0;
}

uint64_t StaticSettingsListSectionProvider.__deallocating_deinit()
{
  StaticSettingsListSectionProvider.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2659D5830(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t))
{
  v5 = *a2;
  v6 = (*(*(*(*v3 + 80) - 8) + 16))(v3 + *(*v3 + 128), a1);
  *(v3 + *(*v3 + 136)) = v5;
  *(v3 + *(*v3 + 144)) = a3(v6);
  return v3;
}

uint64_t sub_2659D5900(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  return sub_2659D5608(a1, v1[8]);
}

uint64_t sub_2659D5928(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2659D5964(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t SettingsListContentSnapshotProviding.performanceDescription.getter()
{
  swift_getDynamicType();

  return sub_265A1F450();
}

Swift::Void __swiftcall SettingsListContentSnapshotProviding.signpostedPerformDeferredSetupForProvider()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = sub_265A1EA30();
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v6);
  v61 = &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_265A1E9F0();
  v63 = *(v9 - 8);
  v64 = v9;
  v10 = *(v63 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v62 = &v54[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v54[-v14];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v54[-v17];
  v19 = *(v5 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  v22 = &v54[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28002B000 != -1)
  {
    swift_once();
  }

  v23 = sub_265A1EA20();
  v24 = __swift_project_value_buffer(v23, qword_28002E888);
  (*(v19 + 16))(v22, v3, v5);
  sub_265A1E9E0();
  v60 = v24;
  v25 = sub_265A1EA10();
  v26 = sub_265A1EF50();
  if (sub_265A1EFA0())
  {
    v27 = swift_slowAlloc();
    v57 = v3;
    v28 = v27;
    v29 = swift_slowAlloc();
    v56 = v15;
    v30 = v29;
    v65 = v29;
    *v28 = 136315138;
    v31 = (*(v4 + 56))(v5, v4);
    v55 = v26;
    v32 = v4;
    v34 = v33;
    (*(v19 + 8))(v22, v5);
    v35 = sub_2659D9320(v31, v34, &v65);
    v4 = v32;

    *(v28 + 4) = v35;
    v36 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v25, v55, v36, "SettingsListContentSnapshotProviding.performDeferredSetupForProvider()", "Snapshot Provider: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    v37 = v30;
    v15 = v56;
    MEMORY[0x266766110](v37, -1, -1);
    MEMORY[0x266766110](v28, -1, -1);
  }

  else
  {

    (*(v19 + 8))(v22, v5);
  }

  v38 = v63;
  v39 = v64;
  (*(v63 + 16))(v15, v18, v64);
  v40 = sub_265A1EA60();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  sub_265A1EA50();
  v43 = *(v38 + 8);
  v43(v18, v39);
  (*(v4 + 64))(v5, v4);
  v44 = sub_265A1EA10();
  v45 = v62;
  sub_265A1EA40();
  v46 = sub_265A1EF40();
  v47 = sub_265A1EFA0();
  v48 = v61;
  if (v47)
  {

    sub_265A1EA70();

    v50 = v58;
    v49 = v59;
    if ((*(v58 + 88))(v48, v59) == *MEMORY[0x277D85B00])
    {
      v51 = "[Error] Interval already ended";
    }

    else
    {
      (*(v50 + 8))(v48, v49);
      v51 = "";
    }

    v52 = swift_slowAlloc();
    *v52 = 0;
    v53 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v44, v46, v53, "SettingsListContentSnapshotProviding.performDeferredSetupForProvider()", v51, v52, 2u);
    MEMORY[0x266766110](v52, -1, -1);
  }

  v43(v45, v39);
}

uint64_t SettingsListContentSnapshotProviding.signpostedProduceListContentSnapshot(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_265A1E9F0();
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = *(v44 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v43 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v15 = *(a2 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28002B000 != -1)
  {
    swift_once();
  }

  v19 = sub_265A1EA20();
  __swift_project_value_buffer(v19, qword_28002E888);
  (*(v15 + 16))(v18, v3, a2);
  sub_265A1E9E0();
  v20 = sub_265A1EA10();
  v41 = sub_265A1EF50();
  if (sub_265A1EFA0())
  {
    v21 = swift_slowAlloc();
    v40 = a1;
    v22 = v21;
    v23 = swift_slowAlloc();
    v42 = v14;
    v24 = v23;
    v46 = v23;
    *v22 = 136315138;
    v25 = (*(a3 + 56))(a2, a3);
    v39 = v4;
    v26 = a3;
    v28 = v27;
    (*(v15 + 8))(v18, a2);
    v29 = sub_2659D9320(v25, v28, &v46);
    a3 = v26;

    *(v22 + 4) = v29;
    v30 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v20, v41, v30, "SettingsListContentSnapshotProviding.produceListContentSnapshot(context:)", "Snapshot Provider: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v31 = v24;
    v14 = v42;
    MEMORY[0x266766110](v31, -1, -1);
    v32 = v22;
    a1 = v40;
    MEMORY[0x266766110](v32, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v18, a2);
  }

  v33 = v44;
  v34 = v45;
  (*(v44 + 16))(v43, v14, v45);
  v35 = sub_265A1EA60();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  sub_265A1EA50();
  (*(v33 + 8))(v14, v34);
  (*(a3 + 72))(a1, a2, a3);
  sub_2659D63B8();
}

uint64_t sub_2659D63B8()
{
  v0 = sub_265A1EA30();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_265A1E9F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28002B000 != -1)
  {
    swift_once();
  }

  v10 = sub_265A1EA20();
  __swift_project_value_buffer(v10, qword_28002E888);
  v11 = sub_265A1EA10();
  sub_265A1EA40();
  v12 = sub_265A1EF40();
  if (sub_265A1EFA0())
  {

    sub_265A1EA70();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v11, v12, v15, "SettingsListContentSnapshotProviding.produceListContentSnapshot(context:)", v13, v14, 2u);
    MEMORY[0x266766110](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

Swift::Void __swiftcall SettingsListItemModelProviding.signpostedPerformDeferredSetupForProvider()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = sub_265A1EA30();
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v6);
  v61 = &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_265A1E9F0();
  v63 = *(v9 - 8);
  v64 = v9;
  v10 = *(v63 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v62 = &v54[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v54[-v14];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v54[-v17];
  v19 = *(v5 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  v22 = &v54[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28002B000 != -1)
  {
    swift_once();
  }

  v23 = sub_265A1EA20();
  v24 = __swift_project_value_buffer(v23, qword_28002E888);
  (*(v19 + 16))(v22, v3, v5);
  sub_265A1E9E0();
  v60 = v24;
  v25 = sub_265A1EA10();
  v26 = sub_265A1EF50();
  if (sub_265A1EFA0())
  {
    v27 = swift_slowAlloc();
    v57 = v3;
    v28 = v27;
    v29 = swift_slowAlloc();
    v56 = v15;
    v30 = v29;
    v65 = v29;
    *v28 = 136315138;
    v31 = (*(v4 + 48))(v5, v4);
    v55 = v26;
    v32 = v4;
    v34 = v33;
    (*(v19 + 8))(v22, v5);
    v35 = sub_2659D9320(v31, v34, &v65);
    v4 = v32;

    *(v28 + 4) = v35;
    v36 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v25, v55, v36, "SettingsListItemModelProviding.performDeferredSetupForProvider()", "Item Provider: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    v37 = v30;
    v15 = v56;
    MEMORY[0x266766110](v37, -1, -1);
    MEMORY[0x266766110](v28, -1, -1);
  }

  else
  {

    (*(v19 + 8))(v22, v5);
  }

  v38 = v63;
  v39 = v64;
  (*(v63 + 16))(v15, v18, v64);
  v40 = sub_265A1EA60();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  sub_265A1EA50();
  v43 = *(v38 + 8);
  v43(v18, v39);
  (*(v4 + 56))(v5, v4);
  v44 = sub_265A1EA10();
  v45 = v62;
  sub_265A1EA40();
  v46 = sub_265A1EF40();
  v47 = sub_265A1EFA0();
  v48 = v61;
  if (v47)
  {

    sub_265A1EA70();

    v50 = v58;
    v49 = v59;
    if ((*(v58 + 88))(v48, v59) == *MEMORY[0x277D85B00])
    {
      v51 = "[Error] Interval already ended";
    }

    else
    {
      (*(v50 + 8))(v48, v49);
      v51 = "";
    }

    v52 = swift_slowAlloc();
    *v52 = 0;
    v53 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v44, v46, v53, "SettingsListItemModelProviding.performDeferredSetupForProvider()", v51, v52, 2u);
    MEMORY[0x266766110](v52, -1, -1);
  }

  v43(v45, v39);
}

uint64_t SettingsListItemModelProviding.signpostedProduceListItemModel(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_265A1E9F0();
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = *(v44 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v43 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v15 = *(a2 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28002B000 != -1)
  {
    swift_once();
  }

  v19 = sub_265A1EA20();
  __swift_project_value_buffer(v19, qword_28002E888);
  (*(v15 + 16))(v18, v3, a2);
  sub_265A1E9E0();
  v20 = sub_265A1EA10();
  v41 = sub_265A1EF50();
  if (sub_265A1EFA0())
  {
    v21 = swift_slowAlloc();
    v40 = a1;
    v22 = v21;
    v23 = swift_slowAlloc();
    v42 = v14;
    v24 = v23;
    v46 = v23;
    *v22 = 136315138;
    v25 = (*(a3 + 48))(a2, a3);
    v39 = v4;
    v26 = a3;
    v28 = v27;
    (*(v15 + 8))(v18, a2);
    v29 = sub_2659D9320(v25, v28, &v46);
    a3 = v26;

    *(v22 + 4) = v29;
    v30 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v20, v41, v30, "SettingsListItemModelProviding.produceListItemModel(context:)", "Item Provider: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v31 = v24;
    v14 = v42;
    MEMORY[0x266766110](v31, -1, -1);
    v32 = v22;
    a1 = v40;
    MEMORY[0x266766110](v32, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v18, a2);
  }

  v33 = v44;
  v34 = v45;
  (*(v44 + 16))(v43, v14, v45);
  v35 = sub_265A1EA60();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  sub_265A1EA50();
  (*(v33 + 8))(v14, v34);
  (*(a3 + 64))(a1, a2, a3);
  sub_2659D7180();
}

uint64_t SettingsListItemModelProviding.performanceDescription.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = v11 - v7;
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  swift_getDynamicType();
  v9 = sub_265A1F450();
  MEMORY[0x266765220](v9);

  MEMORY[0x266765220](0x203A6469207B20, 0xE700000000000000);
  (*(a2 + 40))(a1, a2);
  sub_265A1F330();
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  MEMORY[0x266765220](32032, 0xE200000000000000);
  return v11[0];
}

uint64_t sub_2659D7180()
{
  v0 = sub_265A1EA30();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_265A1E9F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28002B000 != -1)
  {
    swift_once();
  }

  v10 = sub_265A1EA20();
  __swift_project_value_buffer(v10, qword_28002E888);
  v11 = sub_265A1EA10();
  sub_265A1EA40();
  v12 = sub_265A1EF40();
  if (sub_265A1EFA0())
  {

    sub_265A1EA70();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v11, v12, v15, "SettingsListItemModelProviding.produceListItemModel(context:)", v13, v14, 2u);
    MEMORY[0x266766110](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SettingsListSectionCollectionModelProviding.performanceDescription.getter()
{
  swift_getDynamicType();

  return sub_265A1F450();
}

Swift::Void __swiftcall SettingsListSectionCollectionModelProviding.signpostedPerformDeferredSetupForProvider()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = sub_265A1EA30();
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v6);
  v61 = &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_265A1E9F0();
  v63 = *(v9 - 8);
  v64 = v9;
  v10 = *(v63 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v62 = &v54[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v54[-v14];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v54[-v17];
  v19 = *(v5 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  v22 = &v54[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28002B000 != -1)
  {
    swift_once();
  }

  v23 = sub_265A1EA20();
  v24 = __swift_project_value_buffer(v23, qword_28002E888);
  (*(v19 + 16))(v22, v3, v5);
  sub_265A1E9E0();
  v60 = v24;
  v25 = sub_265A1EA10();
  v26 = sub_265A1EF50();
  if (sub_265A1EFA0())
  {
    v27 = swift_slowAlloc();
    v57 = v3;
    v28 = v27;
    v29 = swift_slowAlloc();
    v56 = v15;
    v30 = v29;
    v65 = v29;
    *v28 = 136315138;
    v31 = (*(v4 + 56))(v5, v4);
    v55 = v26;
    v32 = v4;
    v34 = v33;
    (*(v19 + 8))(v22, v5);
    v35 = sub_2659D9320(v31, v34, &v65);
    v4 = v32;

    *(v28 + 4) = v35;
    v36 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v25, v55, v36, "SettingsListSectionCollectionModelProviding.performDeferredSetupForProvider()", "Section Collection Provider: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    v37 = v30;
    v15 = v56;
    MEMORY[0x266766110](v37, -1, -1);
    MEMORY[0x266766110](v28, -1, -1);
  }

  else
  {

    (*(v19 + 8))(v22, v5);
  }

  v38 = v63;
  v39 = v64;
  (*(v63 + 16))(v15, v18, v64);
  v40 = sub_265A1EA60();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  sub_265A1EA50();
  v43 = *(v38 + 8);
  v43(v18, v39);
  (*(v4 + 64))(v5, v4);
  v44 = sub_265A1EA10();
  v45 = v62;
  sub_265A1EA40();
  v46 = sub_265A1EF40();
  v47 = sub_265A1EFA0();
  v48 = v61;
  if (v47)
  {

    sub_265A1EA70();

    v50 = v58;
    v49 = v59;
    if ((*(v58 + 88))(v48, v59) == *MEMORY[0x277D85B00])
    {
      v51 = "[Error] Interval already ended";
    }

    else
    {
      (*(v50 + 8))(v48, v49);
      v51 = "";
    }

    v52 = swift_slowAlloc();
    *v52 = 0;
    v53 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v44, v46, v53, "SettingsListSectionCollectionModelProviding.performDeferredSetupForProvider()", v51, v52, 2u);
    MEMORY[0x266766110](v52, -1, -1);
  }

  v43(v45, v39);
}

uint64_t SettingsListSectionCollectionModelProviding.signpostedProduceListSectionCollectionModel(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_265A1E9F0();
  v44 = *(v8 - 8);
  v9 = *(v44 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v43 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v39 - v13;
  v15 = *(a2 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28002B000 != -1)
  {
    swift_once();
  }

  v19 = sub_265A1EA20();
  __swift_project_value_buffer(v19, qword_28002E888);
  (*(v15 + 16))(v18, v3, a2);
  sub_265A1E9E0();
  v20 = sub_265A1EA10();
  v41 = sub_265A1EF50();
  if (sub_265A1EFA0())
  {
    v21 = swift_slowAlloc();
    v40 = a1;
    v22 = v21;
    v23 = swift_slowAlloc();
    v42 = v14;
    v24 = v23;
    v45 = v23;
    *v22 = 136315138;
    v25 = (*(a3 + 56))(a2, a3);
    v39[1] = v4;
    v26 = a3;
    v28 = v27;
    (*(v15 + 8))(v18, a2);
    v29 = sub_2659D9320(v25, v28, &v45);
    a3 = v26;

    *(v22 + 4) = v29;
    v30 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v20, v41, v30, "SettingsListSectionCollectionModelProviding.produceListSectionCollectionModel(context:)", "Section Collection Provider: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v31 = v24;
    v14 = v42;
    MEMORY[0x266766110](v31, -1, -1);
    v32 = v22;
    a1 = v40;
    MEMORY[0x266766110](v32, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v18, a2);
  }

  v33 = v44;
  (*(v44 + 16))(v43, v14, v8);
  v34 = sub_265A1EA60();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  sub_265A1EA50();
  (*(v33 + 8))(v14, v8);
  v37 = (*(a3 + 72))(a1, a2, a3);
  sub_2659D7DE8();

  return v37;
}

uint64_t sub_2659D7DE8()
{
  v0 = sub_265A1EA30();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_265A1E9F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28002B000 != -1)
  {
    swift_once();
  }

  v10 = sub_265A1EA20();
  __swift_project_value_buffer(v10, qword_28002E888);
  v11 = sub_265A1EA10();
  sub_265A1EA40();
  v12 = sub_265A1EF40();
  if (sub_265A1EFA0())
  {

    sub_265A1EA70();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v11, v12, v15, "SettingsListSectionCollectionModelProviding.produceListSectionCollectionModel(context:)", v13, v14, 2u);
    MEMORY[0x266766110](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

Swift::Void __swiftcall SettingsListSectionModelProviding.signpostedPerformDeferredSetupForProvider()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = sub_265A1EA30();
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = *(v59 + 64);
  MEMORY[0x28223BE20](v6);
  v62 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_265A1E9F0();
  v64 = *(v9 - 8);
  v10 = *(v64 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v63 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v54 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v54 - v17;
  v19 = *(v5 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28002B000 != -1)
  {
    swift_once();
  }

  v23 = sub_265A1EA20();
  v24 = __swift_project_value_buffer(v23, qword_28002E888);
  (*(v19 + 16))(v22, v3, v5);
  sub_265A1E9E0();
  v61 = v24;
  v25 = sub_265A1EA10();
  v58 = sub_265A1EF50();
  if (sub_265A1EFA0())
  {
    v26 = swift_slowAlloc();
    v56 = v15;
    v27 = v26;
    v28 = swift_slowAlloc();
    v57 = v9;
    v55 = v28;
    v65 = v28;
    *v27 = 136315138;
    v29 = (*(*(v4 + 8) + 56))(v5);
    v31 = v30;
    (*(v19 + 8))(v22, v5);
    v32 = v4;
    v33 = sub_2659D9320(v29, v31, &v65);

    *(v27 + 4) = v33;
    v34 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v25, v58, v34, "SettingsListSectionModelProviding.performDeferredSetupForProvider()", "Section Provider: %s", v27, 0xCu);
    v35 = v55;
    __swift_destroy_boxed_opaque_existential_1(v55);
    v36 = v35;
    v9 = v57;
    MEMORY[0x266766110](v36, -1, -1);
    v37 = v27;
    v15 = v56;
    MEMORY[0x266766110](v37, -1, -1);
  }

  else
  {

    (*(v19 + 8))(v22, v5);
    v32 = v4;
  }

  v38 = v64;
  (*(v64 + 16))(v15, v18, v9);
  v39 = sub_265A1EA60();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  sub_265A1EA50();
  v42 = *(v38 + 8);
  v42(v18, v9);
  (*(*(v32 + 8) + 64))(v5);
  v43 = sub_265A1EA10();
  v44 = v63;
  sub_265A1EA40();
  v45 = sub_265A1EF40();
  v46 = sub_265A1EFA0();
  v47 = v62;
  if (v46)
  {
    v48 = v9;

    sub_265A1EA70();

    v50 = v59;
    v49 = v60;
    if ((*(v59 + 88))(v47, v60) == *MEMORY[0x277D85B00])
    {
      v51 = "[Error] Interval already ended";
    }

    else
    {
      (*(v50 + 8))(v47, v49);
      v51 = "";
    }

    v52 = swift_slowAlloc();
    *v52 = 0;
    v53 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v43, v45, v53, "SettingsListSectionModelProviding.performDeferredSetupForProvider()", v51, v52, 2u);
    MEMORY[0x266766110](v52, -1, -1);
    v9 = v48;
  }

  v42(v44, v9);
}

uint64_t SettingsListSectionModelProviding.signpostedProduceListSectionModel(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_265A1E9F0();
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = *(v44 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v43 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v15 = *(a2 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28002B000 != -1)
  {
    swift_once();
  }

  v19 = sub_265A1EA20();
  __swift_project_value_buffer(v19, qword_28002E888);
  (*(v15 + 16))(v18, v3, a2);
  sub_265A1E9E0();
  v20 = sub_265A1EA10();
  v41 = sub_265A1EF50();
  if (sub_265A1EFA0())
  {
    v21 = swift_slowAlloc();
    v40 = a1;
    v22 = v21;
    v23 = swift_slowAlloc();
    v42 = v14;
    v24 = v23;
    v46 = v23;
    *v22 = 136315138;
    v25 = (*(*(a3 + 8) + 56))(a2);
    v39 = v4;
    v26 = a3;
    v28 = v27;
    (*(v15 + 8))(v18, a2);
    v29 = sub_2659D9320(v25, v28, &v46);
    a3 = v26;

    *(v22 + 4) = v29;
    v30 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v20, v41, v30, "SettingsListSectionModelProviding.produceListSectionModel(context:)", "Section Provider: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v31 = v24;
    v14 = v42;
    MEMORY[0x266766110](v31, -1, -1);
    v32 = v22;
    a1 = v40;
    MEMORY[0x266766110](v32, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v18, a2);
  }

  v33 = v44;
  v34 = v45;
  (*(v44 + 16))(v43, v14, v45);
  v35 = sub_265A1EA60();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  sub_265A1EA50();
  (*(v33 + 8))(v14, v34);
  (*(a3 + 24))(a1, a2, a3);
  sub_2659D8F80();
}

uint64_t sub_2659D8A10(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return SettingsListSectionModelProviding.produceListSectionCollectionModel(context:)(a1, a2, WitnessTable);
}

uint64_t SettingsListSectionModelProviding.produceListSectionCollectionModel(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  v25[1] = swift_getAssociatedTypeWitness();
  v25[2] = swift_getAssociatedTypeWitness();
  v25[3] = swift_getAssociatedConformanceWitness();
  v25[4] = swift_getAssociatedConformanceWitness();
  v25[5] = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for SettingsListSectionModel();
  v8 = sub_265A1EFB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v25 - v12;
  v14 = *(v7 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = v25 - v16;
  (*(a3 + 24))(a1, a2, a3);
  if ((*(v14 + 48))(v13, 1, v7) == 1)
  {
    (*(v9 + 8))(v13, v8);
    return sub_265A1ED00();
  }

  else
  {
    v20 = *(v14 + 32);
    v19 = v14 + 32;
    v20(v17, v13, v7);
    sub_265A1F320();
    v21 = *(v19 + 40);
    v22 = *(v19 + 48);
    swift_allocObject();
    v23 = sub_265A1ECD0();
    v20(v24, v17, v7);
    sub_265A1ED50();
    return v23;
  }
}

uint64_t sub_2659D8D50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return SettingsListSectionModelProviding.performanceDescription.getter(a1, WitnessTable);
}

uint64_t SettingsListSectionModelProviding.performanceDescription.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = v12 - v8;
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  swift_getDynamicType();
  v10 = sub_265A1F450();
  MEMORY[0x266765220](v10);

  MEMORY[0x266765220](0x203A6469207B20, 0xE700000000000000);
  (*(a2 + 16))(a1, a2);
  sub_265A1F330();
  (*(v6 + 8))(v9, AssociatedTypeWitness);
  MEMORY[0x266765220](32032, 0xE200000000000000);
  return v12[0];
}

uint64_t sub_2659D8F20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return SettingsListSectionModelProviding.produceListSectionCollectionModel(context:)(a1, a2, WitnessTable);
}

uint64_t sub_2659D8F80()
{
  v0 = sub_265A1EA30();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_265A1E9F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28002B000 != -1)
  {
    swift_once();
  }

  v10 = sub_265A1EA20();
  __swift_project_value_buffer(v10, qword_28002E888);
  v11 = sub_265A1EA10();
  sub_265A1EA40();
  v12 = sub_265A1EF40();
  if (sub_265A1EFA0())
  {

    sub_265A1EA70();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v11, v12, v15, "SettingsListSectionModelProviding.produceListSectionModel(context:)", v13, v14, 2u);
    MEMORY[0x266766110](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2659D9238@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2659D9248(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2659D92C4(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_2659D9320(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_2659D9320(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2659D93EC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2659D9900(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2659D93EC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2659D94F8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_265A1F110();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2659D94F8(uint64_t a1, unint64_t a2)
{
  v4 = sub_2659D9544(a1, a2);
  sub_2659D9674(&unk_28774DA20);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2659D9544(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2659D9760(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_265A1F110();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_265A1EC30();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2659D9760(v10, 0);
        result = sub_265A1F090();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2659D9674(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2659D97D4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2659D9760(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B4F0, &unk_265A21378);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2659D97D4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B4F0, &unk_265A21378);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_2659D98C8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_2659D9900(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t SettingsListSectionModel.init(id:items:traits:headerText:footerText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a3;
  v11 = type metadata accessor for SettingsListSectionModel();
  v12 = v11[17];
  v13 = sub_265A1E6C0();
  v14 = *(*(v13 - 8) + 56);
  v14(a7 + v12, 1, 1, v13);
  v15 = v11[18];
  v14(a7 + v15, 1, 1, v13);
  (*(*(a6 - 8) + 32))(a7, a1, a6);
  *(a7 + v11[15]) = a2;
  *(a7 + v11[16]) = v10;
  sub_2659D9AD0(a4, a7 + v12);
  return sub_2659D9AD0(a5, a7 + v15);
}

uint64_t sub_2659D9AD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B6F0, &qword_265A21110);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SettingsListSectionModel.items.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 60);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*SettingsListSectionModel.items.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 60);
  return result;
}

uint64_t (*SettingsListSectionModel.traits.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 64);
  return result;
}

uint64_t (*SettingsListSectionModel.headerText.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 68);
  return result;
}

uint64_t (*SettingsListSectionModel.footerText.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 72);
  return result;
}

BOOL static SettingsListSectionModel.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_265A1E6C0();
  v60 = *(v14 - 8);
  v61 = v14;
  v15 = *(v60 + 64);
  MEMORY[0x28223BE20](v14);
  v58 = &v53[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B6F0, &qword_265A21110);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v57 = &v53[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v22 = &v53[-v21];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B4F8, &qword_265A21388);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v59 = &v53[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v25);
  v28 = &v53[-v27];
  v29 = *(a5 + 8);
  if ((sub_265A1EB60() & 1) == 0)
  {
    return 0;
  }

  v56 = v23;
  v62 = a3;
  v63 = a4;
  v64 = a5;
  v65 = a6;
  v66 = a7;
  v30 = type metadata accessor for SettingsListSectionModel();
  v31 = v30[15];
  v32 = *(a1 + v31);
  v33 = *(a2 + v31);
  type metadata accessor for SettingsListItemModel();
  swift_getWitnessTable();
  if ((sub_265A1ED60() & 1) == 0 || *(a1 + v30[16]) != *(a2 + v30[16]))
  {
    return 0;
  }

  v55 = v30;
  v34 = v30[17];
  v35 = *(v56 + 48);
  sub_2659D4C60(a1 + v34, v28);
  sub_2659D4C60(a2 + v34, &v28[v35]);
  v36 = v61;
  v37 = *(v60 + 48);
  if (v37(v28, 1, v61) != 1)
  {
    sub_2659D4C60(v28, v22);
    if (v37(&v28[v35], 1, v36) != 1)
    {
      v39 = v60;
      v40 = &v28[v35];
      v41 = v58;
      (*(v60 + 32))(v58, v40, v36);
      sub_2659DA2D0();
      v54 = sub_265A1EB60();
      v42 = *(v39 + 8);
      v42(v41, v61);
      v42(v22, v61);
      v36 = v61;
      sub_2659DA270(v28, &qword_28002B6F0, &qword_265A21110);
      if ((v54 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    (*(v60 + 8))(v22, v36);
LABEL_9:
    v38 = v28;
LABEL_17:
    sub_2659DA270(v38, &qword_28002B4F8, &qword_265A21388);
    return 0;
  }

  if (v37(&v28[v35], 1, v36) != 1)
  {
    goto LABEL_9;
  }

  sub_2659DA270(v28, &qword_28002B6F0, &qword_265A21110);
LABEL_11:
  v43 = v55[18];
  v44 = *(v56 + 48);
  v45 = a1 + v43;
  v46 = v59;
  sub_2659D4C60(v45, v59);
  sub_2659D4C60(a2 + v43, &v46[v44]);
  if (v37(v46, 1, v36) == 1)
  {
    if (v37(&v46[v44], 1, v36) == 1)
    {
      sub_2659DA270(v46, &qword_28002B6F0, &qword_265A21110);
      return 1;
    }

    goto LABEL_16;
  }

  v47 = v57;
  sub_2659D4C60(v46, v57);
  if (v37(&v46[v44], 1, v36) == 1)
  {
    (*(v60 + 8))(v47, v36);
LABEL_16:
    v38 = v46;
    goto LABEL_17;
  }

  v49 = v60;
  v50 = v58;
  (*(v60 + 32))(v58, &v46[v44], v36);
  sub_2659DA2D0();
  v51 = sub_265A1EB60();
  v52 = *(v49 + 8);
  v52(v50, v36);
  v52(v47, v36);
  sub_2659DA270(v46, &qword_28002B6F0, &qword_265A21110);
  return (v51 & 1) != 0;
}

uint64_t sub_2659DA270(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2659DA2D0()
{
  result = qword_28002B500[0];
  if (!qword_28002B500[0])
  {
    sub_265A1E6C0();
    result = swift_getWitnessTable();
    atomic_store(result, qword_28002B500);
  }

  return result;
}

void sub_2659DA344(void *a1)
{
  v2 = a1[2];
  swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = a1[3];
    v5 = a1[5];
    v6 = a1[6];
    type metadata accessor for SettingsListItemModel();
    sub_265A1ED50();
    if (v7 <= 0x3F)
    {
      sub_2659DAA2C();
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2659DA400(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_265A1E6C0();
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if (v7 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v7;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v6 + 64);
  v16 = *(v9 + 80);
  if (v11)
  {
    v17 = *(*(v8 - 8) + 64);
  }

  else
  {
    v17 = *(*(v8 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v16 + 8;
  if (a2 <= v14)
  {
    goto LABEL_35;
  }

  v19 = ((v17 + v16 + ((v18 + ((((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v16)) & ~v16) + v17;
  v20 = 8 * v19;
  if (v19 > 3)
  {
    goto LABEL_15;
  }

  v22 = ((a2 - v14 + ~(-1 << v20)) >> v20) + 1;
  if (HIWORD(v22))
  {
    v21 = *(a1 + v19);
    if (v21)
    {
      goto LABEL_22;
    }

LABEL_35:
    if (v7 == v14)
    {
      v26 = *(v6 + 48);

      return v26(a1, v7, v5);
    }

    v28 = ((a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v13 & 0x80000000) == 0)
    {
      v29 = *v28;
      if (*v28 >= 0xFFFFFFFF)
      {
        LODWORD(v29) = -1;
      }

      return (v29 + 1);
    }

    if (v11 >= 2)
    {
      v30 = (*(v10 + 48))((v18 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v16);
      if (v30 >= 2)
      {
        return v30 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  if (v22 > 0xFF)
  {
    v21 = *(a1 + v19);
    if (*(a1 + v19))
    {
      goto LABEL_22;
    }

    goto LABEL_35;
  }

  if (v22 < 2)
  {
    goto LABEL_35;
  }

LABEL_15:
  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_35;
  }

LABEL_22:
  v23 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v23 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v24 = v19;
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v25 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v25 = *a1;
      }
    }

    else if (v24 == 1)
    {
      v25 = *a1;
    }

    else
    {
      v25 = *a1;
    }
  }

  else
  {
    v25 = 0;
  }

  return v14 + (v25 | v23) + 1;
}

void sub_2659DA6C0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v27 = *(v7 - 8);
  v8 = *(v27 + 84);
  v9 = 0;
  v10 = *(sub_265A1E6C0() - 8);
  v11 = *(v10 + 84);
  v12 = *(v27 + 64);
  if (v11)
  {
    v13 = v11 - 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  if (v8 > v13)
  {
    v13 = v8;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v13;
  }

  if (!v11)
  {
    ++v15;
  }

  v17 = ((v15 + v14 + ((v14 + 8 + ((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v14)) & ~v14) + v15;
  if (a3 <= v16)
  {
    goto LABEL_25;
  }

  if (v17 <= 3)
  {
    v18 = ((a3 - v16 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v18))
    {
      v9 = 4;
      if (v16 < a2)
      {
        goto LABEL_26;
      }

LABEL_14:
      if (v9 > 1)
      {
        if (v9 != 2)
        {
          *&a1[v17] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *&a1[v17] = 0;
      }

      else if (v9)
      {
        a1[v17] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v8 == v16)
      {
        v22 = *(v27 + 56);

        v22(a1, a2, v8, v7);
      }

      else
      {
        v24 = (&a1[v12 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((v13 & 0x80000000) != 0)
        {
          if (v11 >= 2)
          {
            v26 = *(v10 + 56);

            v26((v14 + 8 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v14, (a2 + 1));
          }
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v25 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v25 = (a2 - 1);
          }

          *v24 = v25;
        }
      }

      return;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    if (v18 >= 2)
    {
      v9 = v19;
    }

    else
    {
      v9 = 0;
    }

LABEL_25:
    if (v16 < a2)
    {
      goto LABEL_26;
    }

    goto LABEL_14;
  }

  v9 = 1;
  if (v16 >= a2)
  {
    goto LABEL_14;
  }

LABEL_26:
  v20 = ~v16 + a2;
  if (v17 < 4)
  {
    v21 = (v20 >> (8 * v17)) + 1;
    if (v17)
    {
      v23 = v20 & ~(-1 << (8 * v17));
      bzero(a1, v17);
      if (v17 != 3)
      {
        if (v17 == 2)
        {
          *a1 = v23;
          if (v9 <= 1)
          {
            goto LABEL_56;
          }
        }

        else
        {
          *a1 = v20;
          if (v9 <= 1)
          {
            goto LABEL_56;
          }
        }

LABEL_28:
        if (v9 == 2)
        {
          *&a1[v17] = v21;
        }

        else
        {
          *&a1[v17] = v21;
        }

        return;
      }

      *a1 = v23;
      a1[2] = BYTE2(v23);
    }

    if (v9 <= 1)
    {
      goto LABEL_56;
    }

    goto LABEL_28;
  }

  bzero(a1, v17);
  *a1 = v20;
  v21 = 1;
  if (v9 > 1)
  {
    goto LABEL_28;
  }

LABEL_56:
  if (v9)
  {
    a1[v17] = v21;
  }
}

void sub_2659DAA2C()
{
  if (!qword_28156B040)
  {
    sub_265A1E6C0();
    v0 = sub_265A1EFB0();
    if (!v1)
    {
      atomic_store(v0, &qword_28156B040);
    }
  }
}

uint64_t sub_2659DAA88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

unint64_t sub_2659DAB28()
{
  result = qword_28002B588;
  if (!qword_28002B588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B588);
  }

  return result;
}

unint64_t sub_2659DAB80()
{
  result = qword_28002B590;
  if (!qword_28002B590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B590);
  }

  return result;
}

unint64_t sub_2659DABD8()
{
  result = qword_28002B598;
  if (!qword_28002B598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B598);
  }

  return result;
}

unint64_t sub_2659DAC30()
{
  result = qword_28002B5A0[0];
  if (!qword_28002B5A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28002B5A0);
  }

  return result;
}

uint64_t MatchPattern.embed.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MatchPattern.extract.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MatchPattern.init(embed:extract:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t MatchPattern.appending<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(uint64_t a1)@<X8>)
{
  v8 = *a1;
  v20 = *a1;
  v9 = a1[2];
  v22 = a1[1];
  v23 = a1[3];
  v10 = *v4;
  v18 = *v4;
  v21 = v4[1];
  v11 = v4[2];
  v12 = v4[3];
  v13 = swift_allocObject();
  v15 = *(a2 + 16);
  v14 = *(a2 + 24);
  *(v13 + 2) = v15;
  *(v13 + 3) = v14;
  *(v13 + 4) = a3;
  *(v13 + 5) = v10;
  *(v13 + 6) = v21;
  *(v13 + 7) = v11;
  *(v13 + 8) = v12;
  *(v13 + 9) = v8;
  *(v13 + 10) = v22;
  *(v13 + 11) = v9;
  *(v13 + 12) = v23;
  v16 = swift_allocObject();
  *(v16 + 2) = v15;
  *(v16 + 3) = v14;
  *(v16 + 4) = a3;
  *(v16 + 5) = v18;
  *(v16 + 6) = v21;
  *(v16 + 7) = v11;
  *(v16 + 8) = v12;
  *(v16 + 9) = v20;
  *(v16 + 10) = v22;
  *(v16 + 11) = v9;
  *(v16 + 12) = v23;
  *a4 = sub_2659DAF44;
  a4[1] = v13;
  a4[2] = sub_2659DB0F4;
  a4[3] = v16;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  return swift_retain_n();
}

uint64_t sub_2659DAE54(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *(a11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20]();
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17(v14);
  a2(v16);
  return (*(v12 + 8))(v16, a11);
}

uint64_t sub_2659DAF5C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X3>, uint64_t a3@<X7>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a3;
  v18 = a4;
  v10 = sub_265A1EFB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  a2(a1);
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = v17;
  v24 = a5;
  sub_2659DB154(sub_2659DB644, v19, MEMORY[0x277D84A98], a8, v15, v18);
  return (*(v11 + 8))(v14, v10);
}

uint64_t objectdestroyTm()
{
  v1 = v0[6];

  v2 = v0[8];

  v3 = v0[10];

  v4 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2659DB154@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v30 = a5;
  v31 = a2;
  v32 = a1;
  v29 = *(a3 - 8);
  v10 = *(v29 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v26);
  if ((*(v16 + 48))(v24, 1, v15) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v16 + 32))(v20, v24, v15);
  v32(v20, v13);
  result = (*(v16 + 8))(v20, v15);
  if (v6)
  {
    return (*(v29 + 32))(v30, v13, a3);
  }

  return result;
}

uint64_t static MatchPattern<>.const(_:matches:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)()@<X8>)
{
  v12 = swift_allocObject();
  *(v12 + 2) = a5;
  *(v12 + 3) = a1;
  *(v12 + 4) = a2;
  v13 = swift_allocObject();
  *(v13 + 2) = a5;
  *(v13 + 3) = a3;
  *(v13 + 4) = a4;
  *a6 = sub_2659DB4C8;
  a6[1] = v12;
  a6[2] = sub_2659DB4F0;
  a6[3] = v13;
}

uint64_t sub_2659DB4C8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_2659DB4F0@<X0>(BOOL *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  result = v3();
  *a1 = (result & 1) == 0;
  return result;
}

uint64_t sub_2659DB55C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2659DB5A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2659DB5EC(uint64_t result, int a2, int a3)
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

uint64_t sub_2659DB644()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

uint64_t Array.map<A>(_:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2;
  v9[2] = a3;
  v9[3] = a4;
  v10 = *a1;
  v5 = sub_265A1ED50();
  WitnessTable = swift_getWitnessTable();
  return sub_2659D37A4(sub_2659DB720, v9, v5, a4, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v7);
}

uint64_t sub_2659DB720()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t Array.first<A, B>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  *&v17 = a4;
  v19 = a5;
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  *&v23 = v10;
  v18 = sub_265A1EFB0();
  type metadata accessor for Transforming();
  v11 = sub_265A1ED50();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x2667652A0](&v28, v11, WitnessTable);
  v27 = v28;
  (*(v8 + 16))(v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v13 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a2;
  *(v14 + 3) = a3;
  *(v14 + 4) = v17;
  (*(v8 + 32))(&v14[v13], v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  sub_265A1F0B0();
  swift_getWitnessTable();
  sub_265A1F220();

  v17 = v29;
  v16[1] = v30;
  v23 = v29;
  v24 = v30;
  v16[0] = v31;
  v25 = v31;
  v26 = v32;
  sub_265A1F1B0();
  swift_getWitnessTable();
  sub_265A1F1D0();
  swift_getWitnessTable();
  sub_265A1F1B0();
  v22 = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_265A1EE50();
}

uint64_t ArraySlice.map<A>(_:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v12[2] = a6;
  v12[3] = a7;
  v13 = *a1;
  v8 = sub_265A1F010();
  WitnessTable = swift_getWitnessTable();
  return sub_2659D37A4(sub_2659DC438, v12, v8, a7, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v10);
}

uint64_t ArraySlice.first<A, B>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v20 = a1;
  v21 = a4;
  v23 = a5;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  *&v39 = v9;
  *(&v39 + 1) = v10;
  *&v40 = v11;
  *(&v40 + 1) = v12;
  v22 = sub_265A1EFB0();
  type metadata accessor for Transforming();
  v13 = sub_265A1F010();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x2667652A0](&v27, v13, WitnessTable);
  v19 = v27;
  v32 = v27;
  v33 = v28;
  (*(v7 + 16))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v20, a2);
  v15 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = v21;
  (*(v7 + 32))(&v16[v15], &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  sub_265A1F0B0();
  swift_getWitnessTable();
  sub_265A1F220();
  swift_unknownObjectRelease();

  v41 = v36;
  v42 = v37;
  v43 = v38;
  v39 = v34;
  v40 = v35;
  v29 = v36;
  v30 = v37;
  v31 = v38;
  v27 = v34;
  v28 = v35;
  sub_265A1F1B0();
  swift_getWitnessTable();
  sub_265A1F1D0();
  swift_getWitnessTable();
  v17 = sub_265A1F1B0();
  v26 = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_265A1EE50();
  return (*(*(v17 - 8) + 8))(&v39, v17);
}

uint64_t ContiguousArray.map<A>(_:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2;
  v9[2] = a3;
  v9[3] = a4;
  v10 = *a1;
  v5 = sub_265A1F1A0();
  WitnessTable = swift_getWitnessTable();
  return sub_2659D37A4(sub_2659DC438, v9, v5, a4, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v7);
}

uint64_t ContiguousArray.first<A, B>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  *&v17 = a4;
  v19 = a5;
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  *&v23 = v10;
  v18 = sub_265A1EFB0();
  type metadata accessor for Transforming();
  v11 = sub_265A1F1A0();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x2667652A0](&v28, v11, WitnessTable);
  v27 = v28;
  (*(v8 + 16))(v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v13 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a2;
  *(v14 + 3) = a3;
  *(v14 + 4) = v17;
  (*(v8 + 32))(&v14[v13], v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  sub_265A1F0B0();
  swift_getWitnessTable();
  sub_265A1F220();

  v17 = v29;
  v16[1] = v30;
  v23 = v29;
  v24 = v30;
  v16[0] = v31;
  v25 = v31;
  v26 = v32;
  sub_265A1F1B0();
  swift_getWitnessTable();
  sub_265A1F1D0();
  swift_getWitnessTable();
  sub_265A1F1B0();
  v22 = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_265A1EE50();
}

uint64_t objectdestroyTm_0()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t Transforming.transform.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Transforming.init(transform:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t Transforming.pullback<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)(uint64_t a1)@<X8>)
{
  v12 = *v5;
  v11 = v5[1];
  v13 = swift_allocObject();
  *(v13 + 16) = *(a3 + 16);
  *(v13 + 32) = a4;
  *(v13 + 40) = v12;
  *(v13 + 48) = v11;
  *(v13 + 56) = a1;
  *(v13 + 64) = a2;
  *a5 = sub_2659DC620;
  a5[1] = v13;
}

uint64_t sub_2659DC530(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a6 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13(v10);
  a2(v12);
  return (*(v8 + 8))(v12, a6);
}

uint64_t Transforming.map<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)(uint64_t a1)@<X8>)
{
  v12 = *v5;
  v11 = v5[1];
  v13 = swift_allocObject();
  *(v13 + 16) = *(a3 + 16);
  *(v13 + 32) = a4;
  *(v13 + 40) = a1;
  *(v13 + 48) = a2;
  *(v13 + 56) = v12;
  *(v13 + 64) = v11;
  *a5 = sub_2659DC80C;
  a5[1] = v13;
}

uint64_t sub_2659DC6DC(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a7 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14(v11);
  a2(v13);
  return (*(v9 + 8))(v13, a7);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t Transforming<>.nonIdentity.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v8 = *v3;
  v7 = v3[1];
  v9 = swift_allocObject();
  *(v9 + 2) = *(a1 + 16);
  *(v9 + 3) = a2;
  *(v9 + 4) = v8;
  *(v9 + 5) = v7;
  sub_265A1EFB0();
  *a3 = sub_2659DCA10;
  a3[1] = v9;
}

uint64_t sub_2659DC8D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10(v7);
  if (sub_265A1EB60())
  {
    (*(v5 + 8))(v9, a2);
    v11 = 1;
  }

  else
  {
    (*(v5 + 32))(a3, v9, a2);
    v11 = 0;
  }

  return (*(v5 + 56))(a3, v11, 1, a2);
}

uint64_t sub_2659DCA10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  return sub_2659DC8D0(a1, v2[2], a2);
}

uint64_t sub_2659DCA1C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2659DCA64(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2659DCAAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2659DCB00()
{
  if (qword_28156A8B0 != -1)
  {
    swift_once();
  }

  if ([v0 valueForCustomKey_])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B628, qword_265A21738);
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  v2 = [v0 thumbnailBundleID];
  if (!v2)
  {
    v2 = [v0 thumbnailContentType];
    if (!v2)
    {
      return 1;
    }
  }

  return 0;
}

id sub_2659DCBF8(uint64_t a1)
{
  v2 = sub_265A1E9C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_265A1E9A0();
  v8 = sub_265A1E990();
  (*(v3 + 8))(v6, v2);
  v9 = [v7 initWithContentType_];

  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = v9;
  v13 = sub_265A1EB70();
  [v12 setIdentifier_];

  v14 = type metadata accessor for SettingsSearchIndexableItem();
  v15 = *(v14 + 44);
  v16 = sub_265A1E710();
  [v12 setURL_];

  sub_265A1CC44(v28);
  if (v28[1])
  {
    v17 = sub_265A1EB70();
  }

  else
  {
    v17 = 0;
  }

  [v12 setRelatedAppBundleIdentifier_];

  sub_265A1CD90(v28);
  v18 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  [v12 setRankingHint_];

  v19 = a1 + *(v14 + 48);
  v20 = *(v19 + 17);
  v21 = *v19;
  v22 = *(v19 + 8);
  v23 = v12;
  v24 = sub_265A1EB70();
  v25 = &selRef_setThumbnailBundleID_;
  if (!v20)
  {
    v25 = &selRef_setThumbnailContentType_;
  }

  [v23 *v25];

  v26 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  if (qword_28156A8B0 != -1)
  {
    swift_once();
  }

  [v23 setValue:v26 forCustomKey:qword_28156A8C0];

  sub_2659DCF64(a1);
  return v23;
}

void sub_2659DCEDC()
{
  v0 = objc_allocWithZone(MEMORY[0x277CC33B0]);
  v1 = sub_265A1EB70();
  v2 = [v0 initWithKeyName:v1 searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  if (v2)
  {
    qword_28156A8C0 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2659DCF64(uint64_t a1)
{
  v2 = type metadata accessor for SettingsSearchIndexableItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for InternalSettingsSearchIndexerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InternalSettingsSearchIndexerError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2659DD114()
{
  result = qword_28002B630;
  if (!qword_28002B630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B630);
  }

  return result;
}

uint64_t SettingsSearchIndexableItem.appIntentIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SettingsSearchIndexableItem.appIntentIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SettingsSearchIndexableItem.appValueTypeIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SettingsSearchIndexableItem.appValueTypeIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SettingsSearchIndexableItem.appValueItemIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SettingsSearchIndexableItem.appValueItemIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t SettingsSearchIndexableItem.localizedTitle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SettingsSearchIndexableItem() + 28);
  v4 = sub_265A1E6C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SettingsSearchIndexableItem()
{
  result = qword_28156AAB0;
  if (!qword_28156AAB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SettingsSearchIndexableItem.localizedTitle.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SettingsSearchIndexableItem() + 28);
  v4 = sub_265A1E6C0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SettingsSearchIndexableItem.localizedSubtitle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SettingsSearchIndexableItem() + 32);

  return sub_2659D4C60(v3, a1);
}

uint64_t SettingsSearchIndexableItem.localizedSubtitle.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SettingsSearchIndexableItem() + 32);

  return sub_2659D9AD0(a1, v3);
}

uint64_t SettingsSearchIndexableItem.localizedKeywords.getter()
{
  v1 = *(v0 + *(type metadata accessor for SettingsSearchIndexableItem() + 36));
}

uint64_t SettingsSearchIndexableItem.localizedKeywords.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SettingsSearchIndexableItem() + 36);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SettingsSearchIndexableItem.localizedDescriptionText.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SettingsSearchIndexableItem() + 40);

  return sub_2659D4C60(v3, a1);
}

uint64_t SettingsSearchIndexableItem.localizedDescriptionText.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SettingsSearchIndexableItem() + 40);

  return sub_2659D9AD0(a1, v3);
}

uint64_t SettingsSearchIndexableItem.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SettingsSearchIndexableItem() + 44);
  v4 = sub_265A1E770();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SettingsSearchIndexableItem.url.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SettingsSearchIndexableItem() + 44);
  v4 = sub_265A1E770();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SettingsSearchIndexableItem.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SettingsSearchIndexableItem() + 48));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 16);
  LOBYTE(v3) = *(v3 + 17);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 17) = v3;
}

uint64_t SettingsSearchIndexableItem.icon.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = v1 + *(type metadata accessor for SettingsSearchIndexableItem() + 48);
  v7 = *(v6 + 8);

  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  *(v6 + 17) = v5;
  return result;
}

uint64_t SettingsSearchIndexableItem.searchDomainIdentifier.getter()
{
  v2 = *v0;
  v3 = v0[1];

  MEMORY[0x266765220](46, 0xE100000000000000);
  MEMORY[0x266765220](v0[2], v0[3]);
  return v2;
}

uint64_t SettingsSearchIndexableItem.searchItemIdentifier.getter()
{
  v1 = v0;
  v3 = *v0;
  v4 = v0[1];

  MEMORY[0x266765220](46, 0xE100000000000000);
  MEMORY[0x266765220](v1[2], v1[3]);
  MEMORY[0x266765220](46, 0xE100000000000000);
  MEMORY[0x266765220](v1[4], v1[5]);
  return v3;
}

void sub_2659DDA28()
{
  sub_265A1E6C0();
  if (v0 <= 0x3F)
  {
    sub_2659DDB38(319, &qword_28156B040, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2659DDB38(319, &qword_28156A918, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_265A1E770();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2659DDB38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_265A1E6C0();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_2659DDBB0(void **a1@<X0>, void *a2@<X8>)
{
  sub_2659DDD04(a1, &v13);
  v4 = v13;
  v5 = a1[1];
  v13 = *a1;
  v6 = v13;
  v14 = v5;

  MEMORY[0x266765220](46, 0xE100000000000000);
  v7 = a1[2];
  v8 = a1[3];
  MEMORY[0x266765220](v7, v8);
  MEMORY[0x266765220](46, 0xE100000000000000);
  MEMORY[0x266765220](a1[4], a1[5]);
  v13 = v6;
  v14 = v5;

  MEMORY[0x266765220](46, 0xE100000000000000);
  MEMORY[0x266765220](v7, v8);
  v9 = objc_allocWithZone(MEMORY[0x277CC34B0]);
  v10 = sub_265A1EB70();

  v11 = sub_265A1EB70();

  v12 = [v9 initWithUniqueIdentifier:v10 domainIdentifier:v11 attributeSet:v4];

  *a2 = v12;
}

void sub_2659DDD04(uint64_t a1@<X0>, void *a2@<X8>)
{
  v61 = a2;
  v3 = sub_265A1E6C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v67 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B6F0, &qword_265A21110);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v60 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v54 - v11;
  v13 = type metadata accessor for SettingsSearchIndexableItem();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2659DE424();
  sub_2659DE470(a1, v16);
  v17 = sub_2659DCBF8(v16);
  sub_265A1DAB0(a1 + *(v13 + 28), &v69);
  sub_2659DE4D4(v69);
  v18 = objc_allocWithZone(MEMORY[0x277CC3440]);
  v19 = sub_265A1EAC0();
  v20 = [v18 initWithLocalizedStrings_];

  [v17 setTitle_];
  v62 = v13;
  sub_2659D4C60(a1 + *(v13 + 32), v12);
  v58 = *(v4 + 48);
  v59 = v4 + 48;
  v21 = 0;
  if (v58(v12, 1, v3) != 1)
  {
    v22 = a1;
    v23 = v67;
    (*(v4 + 32))(v67, v12, v3);
    sub_265A1DAB0(v23, &v69);
    sub_2659DE4D4(v69);
    v24 = objc_allocWithZone(MEMORY[0x277CC3440]);
    v25 = sub_265A1EAC0();
    v26 = [v24 initWithLocalizedStrings_];

    sub_265A1EBA0();
    v27 = v23;
    a1 = v22;
    (*(v4 + 8))(v27, v3);
    v21 = sub_265A1EB70();
  }

  [v17 setSubtitle_];

  v28 = *(a1 + *(v62 + 36));
  v29 = *(v28 + 16);
  if (v29)
  {
    v55 = a1;
    v57 = v17;
    v69 = MEMORY[0x277D84F90];
    sub_265A1D2E4(0, v29, 0);
    v30 = v69;
    v56 = v4;
    v32 = *(v4 + 16);
    v31 = v4 + 16;
    v33 = v28 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
    v64 = *(v31 + 56);
    v65 = v32;
    v66 = v31;
    v63 = (v31 - 8);
    do
    {
      v34 = v67;
      v65(v67, v33, v3);
      sub_265A1DAB0(v34, &v68);
      sub_2659DE4D4(v68);
      v35 = objc_allocWithZone(MEMORY[0x277CC3440]);
      v36 = sub_265A1EAC0();
      v37 = v3;
      v38 = [v35 initWithLocalizedStrings_];

      v39 = sub_265A1EBA0();
      v41 = v40;

      v3 = v37;
      (*v63)(v34, v37);
      v69 = v30;
      v43 = *(v30 + 16);
      v42 = *(v30 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_265A1D2E4((v42 > 1), v43 + 1, 1);
        v30 = v69;
      }

      *(v30 + 16) = v43 + 1;
      v44 = v30 + 16 * v43;
      *(v44 + 32) = v39;
      *(v44 + 40) = v41;
      v33 += v64;
      --v29;
    }

    while (v29);
    v4 = v56;
    v17 = v57;
    a1 = v55;
  }

  v45 = sub_265A1ECB0();

  [v17 setKeywords_];

  v46 = v60;
  sub_2659D4C60(a1 + *(v62 + 40), v60);
  if (v58(v46, 1, v3) == 1)
  {
    v47 = 0;
  }

  else
  {
    v48 = v67;
    (*(v4 + 32))(v67, v46, v3);
    sub_265A1DAB0(v48, &v69);
    sub_2659DE4D4(v69);
    v49 = objc_allocWithZone(MEMORY[0x277CC3440]);
    v50 = sub_265A1EAC0();
    v51 = [v49 initWithLocalizedStrings_];

    sub_265A1EBA0();
    (*(v4 + 8))(v48, v3);
    v47 = sub_265A1EB70();
  }

  [v17 setTextContent_];

  v52 = [v17 subtitle];
  [v17 setContentDescription_];

  v53 = [v17 title];
  [v17 setSubject_];

  *v61 = v17;
}

unint64_t sub_2659DE424()
{
  result = qword_28156A868;
  if (!qword_28156A868)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28156A868);
  }

  return result;
}

uint64_t sub_2659DE470(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsSearchIndexableItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2659DE4D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B638, ">@");
    v2 = sub_265A1F210();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v35[0] = *v14;
    *(&v35[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_2659DE79C(&v30, v34);
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_2659DE79C(v34, v35);
    v19 = *(v2 + 40);
    result = sub_265A1F040();
    v20 = -1 << *(v2 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v7 + 8 * (v21 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      while (++v22 != v24 || (v23 & 1) == 0)
      {
        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *(v7 + 8 * v22);
        if (v26 != -1)
        {
          v10 = __clz(__rbit64(~v26)) + (v22 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v21) & ~*(v7 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v27;
    *(v11 + 16) = v28;
    *(v11 + 32) = v29;
    result = sub_2659DE79C(v35, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

_OWORD *sub_2659DE79C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2659DE7AC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2659E0698(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2659DE8A4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2659E0AC0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t SettingsSearchIndexableItemsFetchRequest.__allocating_init(appIntentIdentifier:appValueIdentifier:attributionBundleIdentifiers:)(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  SettingsSearchIndexableItemsFetchRequest.init(appIntentIdentifier:appValueIdentifier:attributionBundleIdentifiers:)(a1, a2, a3, a4, a5);
  return v10;
}

unint64_t SettingsSearchIndexableItemsFetchRequest.init(appIntentIdentifier:appValueIdentifier:attributionBundleIdentifiers:)(unint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v7 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    goto LABEL_10;
  }

  if (*(a5 + 16))
  {
    v5[2] = result;
    v5[3] = a2;
    v5[4] = a3;
    v5[5] = a4;
    v5[6] = a5;
    return v5;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t SettingsSearchIndexableItemsFetchRequest.fetch()(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = v1;
  return MEMORY[0x2822009F8](sub_2659DEA78, 0, 0);
}

uint64_t sub_2659DEA78()
{
  v158 = v0;
  v3 = v0;
  v4 = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  *(v0 + 128) = v4;
  v139 = v4;
  v5 = sub_265A11204();
  v143 = v0;
  v20 = 0;
  v21 = 0;
  v151 = *(v0 + 120);
  v22 = v5 + 64;
  v23 = -1 << *(v5 + 32);
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & *(v5 + 64);
  v26 = (63 - v23) >> 6;
  v27 = 0x279BB1000;
  v136 = v26;
  v137 = v5 + 64;
  v138 = v5;
LABEL_15:
  if (v25)
  {
    v142 = v20;
    v28 = v21;
    goto LABEL_21;
  }

  while (1)
  {
    v28 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      goto LABEL_107;
    }

    if (v28 >= v26)
    {
      break;
    }

    v25 = *(v22 + 8 * v28);
    ++v21;
    if (v25)
    {
      v142 = v20;
LABEL_21:
      v140 = (v25 - 1) & v25;
      v29 = __clz(__rbit64(v25)) | (v28 << 6);
      v30 = *(v5 + 56);
      v31 = (*(v5 + 48) + 16 * v29);
      v32 = v31[1];
      v135 = *v31;
      v33 = *(v30 + 8 * v29);
      v34 = v33 + 64;
      v35 = -1 << *(v33 + 32);
      if (-v35 < 64)
      {
        v36 = ~(-1 << -v35);
      }

      else
      {
        v36 = -1;
      }

      v37 = v36 & *(v33 + 64);
      v38 = (63 - v35) >> 6;
      v141 = v32;

      *&v148 = v33;

      v39 = 0;
      v144 = v38;
LABEL_25:
      v40 = v39;
      if (!v37)
      {
        do
        {
LABEL_29:
          v39 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:

            v134 = MEMORY[0x277D84F90];
            v70 = 1;
            v3 = v143;
            v20 = v1;
            goto LABEL_66;
          }

          if (v39 >= v38)
          {

            v21 = v28;
            v20 = v142;
            v3 = v143;
            v22 = v137;
            v5 = v138;
            v26 = v136;
            v25 = v140;
            goto LABEL_15;
          }

          v37 = *(v34 + 8 * v39);
          ++v40;
        }

        while (!v37);
        goto LABEL_32;
      }

      while (1)
      {
        v39 = v40;
LABEL_32:
        v41 = __clz(__rbit64(v37));
        v37 &= v37 - 1;
        v42 = *(*(v148 + 56) + ((v39 << 9) | (8 * v41)));
        v43 = [v42 *(v27 + 2720)];
        v44 = sub_265A1EBA0();
        v46 = v45;

        v47 = v44;
        v48 = v151[2];
        v1 = v151[3];
        if (v47 == v48 && v46 == v1)
        {
        }

        else
        {
          v50 = v151[2];
          v51 = v151[3];
          v52 = sub_265A1F340();

          if ((v52 & 1) == 0)
          {

            v40 = v39;
            v38 = v144;
            if (!v37)
            {
              goto LABEL_29;
            }

            continue;
          }
        }

        *&v145 = swift_allocObject();
        *(v145 + 16) = 2;
        v53 = sub_2659F8854();
        if (v54 == -1)
        {

          Current = CFAbsoluteTimeGetCurrent();
          v134 = sub_2659E0698(0, 1, 1, MEMORY[0x277D84F90]);
          v68 = *(v134 + 2);
          v67 = *(v134 + 3);
          if (v68 >= v67 >> 1)
          {
            v134 = sub_2659E0698((v67 > 1), v68 + 1, 1, v134);
          }

          v20 = v142;
          v3 = v143;

          *(v134 + 2) = v68 + 1;
          v69 = &v134[120 * v68];
          v69[32] = 2;
          *(v69 + 5) = v48;
          *(v69 + 6) = v1;
          *(v69 + 56) = 0u;
          *(v69 + 72) = 0u;
          v69[88] = 0;
          *(v69 + 6) = xmmword_265A218B0;
          *(v69 + 7) = 0u;
          *(v69 + 8) = 0u;
          *(v69 + 18) = Current;

          if (v142)
          {
            goto LABEL_65;
          }

LABEL_2:
          v6 = *(v3 + 120);
          v7 = *(v6 + 16);
          v8 = *(v6 + 24);
          swift_bridgeObjectRetain_n();
          v9 = CFAbsoluteTimeGetCurrent();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v134 = sub_2659E0698(0, *(v134 + 2) + 1, 1, v134);
          }

          v11 = *(v134 + 2);
          v10 = *(v134 + 3);
          if (v11 >= v10 >> 1)
          {
            v134 = sub_2659E0698((v10 > 1), v11 + 1, 1, v134);
          }

          v13 = *(v3 + 112);
          v12 = *(v3 + 120);
          *(v134 + 2) = v11 + 1;
          v14 = &v134[120 * v11];
          v14[32] = 2;
          *(v14 + 33) = *v152;
          *(v14 + 9) = *&v152[3];
          *(v14 + 5) = v7;
          *(v14 + 6) = v8;
          *(v14 + 56) = 0u;
          *(v14 + 72) = 0u;
          v14[88] = 0;
          v15 = *(&v153 + 3);
          *(v14 + 89) = v153;
          *(v14 + 23) = v15;
          *(v14 + 7) = 0u;
          *(v14 + 8) = 0u;
          *(v14 + 6) = xmmword_265A218F0;
          *(v14 + 18) = v9;
          v16 = *(v12 + 32);
          v17 = *(v12 + 40);

          *v13 = v7;
          v13[1] = v8;
          v13[2] = v16;
          v13[3] = v17;
          v13[4] = MEMORY[0x277D84F90];
          v13[5] = v134;
          goto LABEL_7;
        }

        v55 = v53;
        v56 = v54;
        v57 = [v53 *(v27 + 2720)];
        v58 = sub_265A1EBA0();
        v1 = v59;

        v61 = v58 == v151[4] && v1 == v151[5];
        if (v56)
        {
          if (v61)
          {

LABEL_55:
            v64 = *(v143 + 120);

            v65 = v42;
            v1 = sub_2659DFD54(v145, v65, v135, v141, v64);

            sub_2659E0894(v55, v56);
            if (v1)
            {

              v133 = swift_allocObject();
              *(v133 + 16) = 0u;
              *(v133 + 32) = 0u;
              *(v133 + 48) = 0u;
              *(v133 + 64) = -1;
              v134 = MEMORY[0x277D84F90];
              v3 = v143;
              v20 = v65;
              goto LABEL_71;
            }

            goto LABEL_59;
          }

          v62 = sub_265A1F340();

          if (v62)
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v61)
          {

LABEL_58:
            v66 = *(v143 + 120);

            v1 = v42;
            LOBYTE(v66) = sub_2659DFD54(v145, v1, v135, v141, v66);

            sub_2659E0894(v55, v56);
            if (v66)
            {
              goto LABEL_108;
            }

LABEL_59:

            v142 = v42;
            v27 = 0x279BB1000;
            v38 = v144;
            goto LABEL_25;
          }

          v63 = sub_265A1F340();

          if (v63)
          {
            goto LABEL_58;
          }
        }

        sub_2659E0894(v55, v56);

        v40 = v39;
        v27 = 0x279BB1000uLL;
        v38 = v144;
        if (!v37)
        {
          goto LABEL_29;
        }
      }
    }
  }

  v134 = MEMORY[0x277D84F90];
  if (!v20)
  {
    goto LABEL_2;
  }

LABEL_65:
  v70 = 0;
LABEL_66:
  v71 = swift_allocObject();
  v133 = v71;
  *(v71 + 16) = 0u;
  *(v71 + 32) = 0u;
  *(v71 + 48) = 0u;
  *(v71 + 64) = -1;
  if ((v70 & 1) == 0)
  {
    sub_2659DFFCC(v20, v71, &v153);
    v145 = v154;
    v148 = v153;
    v73 = v155;
    v72 = v156;
    LOBYTE(v74) = v157;
    Current = CFAbsoluteTimeGetCurrent();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_68;
    }

    goto LABEL_113;
  }

  while (1)
  {
LABEL_71:
    *(v3 + 136) = v20;
    *(v3 + 144) = v133;
    v74 = 0x279BB1000uLL;
    v79 = [v20 parameters];
    sub_2659E0848();
    v80 = sub_265A1ECC0();

    if (v80 >> 62)
    {
      v81 = sub_265A1F1E0();
    }

    else
    {
      v81 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v81 != 1)
    {
      v82 = v20;
      sub_2659DFFCC(v20, v133, &v153);
      v145 = v154;
      v148 = v153;
      v83 = v155;
      v84 = v156;
      v85 = v157;
      Current = CFAbsoluteTimeGetCurrent();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v134 = sub_2659E0698(0, *(v134 + 2) + 1, 1, v134);
      }

      v87 = *(v134 + 2);
      v86 = *(v134 + 3);
      if (v87 >= v86 >> 1)
      {
        v134 = sub_2659E0698((v86 > 1), v87 + 1, 1, v134);
      }

      *(v134 + 2) = v87 + 1;
      v88 = &v134[120 * v87];
      v88[32] = 2;
      *(v88 + 56) = v145;
      *(v88 + 40) = v148;
      *(v88 + 9) = v83;
      *(v88 + 10) = v84;
      v88[88] = v85;
      *(v88 + 6) = xmmword_265A218D0;
      *(v88 + 7) = 0u;
      *(v88 + 8) = 0u;
      *(v88 + 18) = Current;
      v3 = v143;
      v20 = v82;
      v74 = 0x279BB1000uLL;
    }

    *(v3 + 152) = v134;
    v89 = [v20 parameters];
    v90 = sub_265A1ECC0();

    if (v90 >> 62)
    {
      v91 = sub_265A1F1E0();
    }

    else
    {
      v91 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v91 != 1)
    {
      goto LABEL_91;
    }

    v72 = [v20 parameters];
    v73 = sub_265A1ECC0();

    if ((v73 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v92 = *(v73 + 32);
      goto LABEL_85;
    }

    __break(1u);
LABEL_113:
    v134 = sub_2659E0698(0, *(v134 + 2) + 1, 1, v134);
LABEL_68:
    v76 = *(v134 + 2);
    v75 = *(v134 + 3);
    if (v76 >= v75 >> 1)
    {
      v134 = sub_2659E0698((v75 > 1), v76 + 1, 1, v134);
    }

    *(v134 + 2) = v76 + 1;
    v77 = &v134[120 * v76];
    v77[32] = 2;
    *(v77 + 33) = *v152;
    *(v77 + 9) = *&v152[3];
    *(v77 + 56) = v145;
    *(v77 + 40) = v148;
    *(v77 + 9) = v73;
    *(v77 + 10) = v72;
    v77[88] = v74;
    v78 = v153;
    *(v77 + 23) = *(&v153 + 3);
    *(v77 + 89) = v78;
    *(v77 + 7) = 0u;
    *(v77 + 8) = 0u;
    *(v77 + 6) = xmmword_265A218C0;
    *(v77 + 18) = Current;
  }

  v92 = MEMORY[0x2667656F0](0, v73);
LABEL_85:
  v93 = v92;

  v94 = [v93 isOptional];

  if (v94)
  {
    sub_2659DFFCC(v20, v133, &v153);
    v146 = v154;
    v149 = v153;
    v96 = v155;
    v95 = v156;
    v97 = v157;
    v98 = CFAbsoluteTimeGetCurrent();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v134 = sub_2659E0698(0, *(v134 + 2) + 1, 1, v134);
    }

    v100 = *(v134 + 2);
    v99 = *(v134 + 3);
    if (v100 >= v99 >> 1)
    {
      v134 = sub_2659E0698((v99 > 1), v100 + 1, 1, v134);
    }

    *(v134 + 2) = v100 + 1;
    v101 = &v134[120 * v100];
    v101[32] = 2;
    *(v101 + 56) = v146;
    *(v101 + 40) = v149;
    *(v101 + 9) = v96;
    *(v101 + 10) = v95;
    v101[88] = v97;
    *(v101 + 6) = xmmword_265A218E0;
    *(v101 + 7) = 0u;
    *(v101 + 8) = 0u;
    *(v101 + 18) = v98;
    goto LABEL_97;
  }

LABEL_91:
  if (v81 != 1)
  {
LABEL_97:
    v109 = *(v3 + 112);
    v111 = v151[2];
    v110 = v151[3];
    v113 = v151[4];
    v112 = v151[5];

    *v109 = v111;
    v109[1] = v110;
    v109[2] = v113;
    v109[3] = v112;
    v109[4] = MEMORY[0x277D84F90];
    v109[5] = v134;
    goto LABEL_7;
  }

  *(v3 + 160) = sub_2659F8854();
  *(v3 + 200) = v102;
  if (v102 == -1)
  {
    sub_2659DFFCC(v20, v133, &v153);
    v147 = v154;
    v150 = v153;
    v115 = v155;
    v114 = v156;
    v116 = v157;
    v117 = CFAbsoluteTimeGetCurrent();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v134 = sub_2659E0698(0, *(v134 + 2) + 1, 1, v134);
    }

    v119 = *(v134 + 2);
    v118 = *(v134 + 3);
    v120 = v20;
    if (v119 >= v118 >> 1)
    {
      v134 = sub_2659E0698((v118 > 1), v119 + 1, 1, v134);
    }

    v121 = *(v3 + 112);
    *(v134 + 2) = v119 + 1;
    v122 = &v134[120 * v119];
    v122[32] = 2;
    *(v122 + 56) = v147;
    *(v122 + 40) = v150;
    *(v122 + 9) = v115;
    *(v122 + 10) = v114;
    v122[88] = v116;
    *(v122 + 6) = xmmword_265A218B0;
    *(v122 + 7) = 0u;
    *(v122 + 8) = 0u;
    *(v122 + 18) = v117;
    v123 = v151[2];
    v124 = v151[3];
    v125 = v151[4];
    v126 = v151[5];

    *v121 = v123;
    v121[1] = v124;
    v121[2] = v125;
    v121[3] = v126;
    v121[4] = MEMORY[0x277D84F90];
    v121[5] = v134;
LABEL_7:
    v18 = *(v3 + 8);

    return v18();
  }

  else if (v102)
  {
    v103 = [v20 identifier];
    v104 = sub_265A1EBA0();
    v106 = v105;

    *(v3 + 184) = v106;
    v107 = swift_task_alloc();
    *(v3 + 192) = v107;
    *v107 = v3;
    v107[1] = sub_2659DFB6C;
    v108 = MEMORY[0x277D84F90];

    return sub_265A0D044(v3 + 16, v104, v106, v108);
  }

  else
  {
    v127 = [v20 identifier];
    v128 = sub_265A1EBA0();
    v130 = v129;

    *(v3 + 168) = v130;
    v131 = swift_task_alloc();
    *(v3 + 176) = v131;
    *v131 = v3;
    v131[1] = sub_2659DF988;
    v132 = MEMORY[0x277D84F90];

    return sub_2659F96BC(v3 + 64, v128, v130, v132);
  }
}

uint64_t sub_2659DF988()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2659DFAA0, 0, 0);
}

uint64_t sub_2659DFAA0()
{
  sub_2659E0894(*(v0 + 160), *(v0 + 200));
  v1 = *(v0 + 80);
  v8 = *(v0 + 88);
  v9 = *(v0 + 64);
  v2 = *(v0 + 144);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 112);
  v10 = *(v0 + 152);
  sub_2659DE7AC(*(v0 + 104));

  *v5 = v9;
  *(v5 + 16) = v1;
  *(v5 + 24) = v8;
  *(v5 + 40) = v10;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2659DFB6C()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2659DFC84, 0, 0);
}

uint64_t sub_2659DFC84()
{
  sub_2659E0894(*(v0 + 160), *(v0 + 200));
  v1 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = *(v0 + 16);
  v2 = *(v0 + 144);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 112);
  v10 = *(v0 + 152);
  sub_2659DE7AC(*(v0 + 56));

  *v5 = v9;
  *(v5 + 16) = v1;
  *(v5 + 24) = v8;
  *(v5 + 40) = v10;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2659DFD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + 16);
  v6 = *(a1 + 16);
  if (v6 == 2)
  {
    v8 = sub_2659F83CC(a3, a4);
    LOBYTE(a5) = sub_2659DFDE4(*(a5 + 48), v8);

    LOBYTE(v6) = a5 ^ 1;
    swift_beginAccess();
    *v5 = (a5 ^ 1) & 1;
  }

  return v6 & 1;
}

uint64_t sub_2659DFDE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v26 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      v19 = *(v6 + 40);
      sub_265A1F3D0();

      sub_265A1EBF0();
      v20 = sub_265A1F400();
      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      if ((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = (*(v6 + 48) + 16 * v22);
          v25 = *v24 == v18 && v24[1] == v17;
          if (v25 || (sub_265A1F340() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v26;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2659DFFCC@<X0>(id a1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = a2 + 16;
  v10 = v8 + 16;
  v9 = *(v8 + 16);
  v11 = *(v8 + 24);
  v12 = *(v8 + 32);
  v13 = *(v8 + 40);
  v14 = v6;
  v15 = v7;
  v16 = v9;
  v17 = v11;
  v18 = *(v8 + 48);
  v19 = v12;
  v20 = v13;
  v21 = *(v8 + 48);
  if (v18 == 255)
  {
    v34 = v7;
    v35 = v6;
    v32 = *(v8 + 24);
    v33 = *(v8 + 16);
    v22 = [a1 identifier];
    v14 = sub_265A1EBA0();
    v15 = v23;

    swift_beginAccess();
    v24 = *(a2 + 16);
    v25 = *(a2 + 24);
    v30 = *(a2 + 40);
    v31 = *(a2 + 32);
    v28 = *(a2 + 56);
    v29 = *(a2 + 48);
    *(a2 + 16) = v14;
    *(a2 + 24) = v15;
    *v10 = 0u;
    *(v10 + 16) = 0u;
    v26 = *(a2 + 64);
    *(v10 + 32) = 0;

    sub_2659E0A0C(v24, v25, v31, v30, v29, v28, v26);
    v11 = v32;
    v9 = v33;
    v7 = v34;
    v6 = v35;
    v16 = 0;
    v17 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
  }

  *a3 = v14;
  *(a3 + 8) = v15;
  *(a3 + 16) = v16;
  *(a3 + 24) = v17;
  *(a3 + 32) = v19;
  *(a3 + 40) = v20;
  *(a3 + 48) = v21;
  return sub_2659E0A20(v6, v7, v9, v11, v12, v13, v18);
}

void sub_2659E014C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  v2 = sub_265A11204();
  v53 = v1;
  v3 = 0;
  v4 = v2 + 64;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v2 + 64);
  v8 = (63 - v5) >> 6;
  v54 = MEMORY[0x277D84F90];
  v55 = v8;
  v56 = v2 + 64;
  v57 = v2;
  v59 = v0;
LABEL_6:
  if (v7)
  {
    v9 = v3;
LABEL_11:
    v58 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v9 << 6);
    v11 = *(v2 + 56);
    v12 = (*(v2 + 48) + 16 * v10);
    v13 = v12[1];
    v60 = *v12;
    v14 = *(v11 + 8 * v10);
    v15 = v14 + 64;
    v16 = -1 << *(v14 + 32);
    if (-v16 < 64)
    {
      v17 = ~(-1 << -v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v14 + 64);
    v19 = (63 - v16) >> 6;
    v61 = v13;

    v62 = v14;

    v20 = 0;
    if (!v18)
    {
      goto LABEL_17;
    }

    do
    {
LABEL_21:
      while (1)
      {
        v22 = *(v0 + 16);
        v23 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v24 = *(*(v62 + 56) + ((v20 << 9) | (8 * v23)));
        v25 = sub_2659F83CC(v60, v61);
        LOBYTE(v22) = sub_2659DFDE4(v22, v25);

        if ((v22 & 1) == 0)
        {
          v26 = [v24 parameters];
          sub_2659E0848();
          v27 = sub_265A1ECC0();

          v28 = v27 >> 62 ? sub_265A1F1E0() : *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (v28 == 1)
          {
            v29 = [v24 parameters];
            v30 = sub_265A1ECC0();

            if ((v30 & 0xC000000000000001) != 0)
            {
              v31 = MEMORY[0x2667656F0](0, v30);
            }

            else
            {
              if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_43;
              }

              v31 = *(v30 + 32);
            }

            v32 = v31;

            v33 = [v32 isOptional];

            if (!v33)
            {
              v34 = sub_2659F8854();
              if (v35 != -1)
              {
                break;
              }
            }
          }
        }

        v0 = v59;
        if (!v18)
        {
          goto LABEL_17;
        }
      }

      v52 = v35;
      v36 = v34;
      v37 = [v24 identifier];
      v38 = sub_265A1EBA0();
      v49 = v39;
      v50 = v38;

      v51 = v36;
      v40 = [v36 identifier];
      v48 = sub_265A1EBA0();
      v42 = v41;

      v43 = v54;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_2659E08B0(0, *(v54 + 2) + 1, 1, v54);
      }

      v45 = *(v43 + 2);
      v44 = *(v43 + 3);
      if (v45 >= v44 >> 1)
      {
        v43 = sub_2659E08B0((v44 > 1), v45 + 1, 1, v43);
      }

      sub_2659E0894(v51, v52);
      *(v43 + 2) = v45 + 1;
      v54 = v43;
      v46 = &v43[32 * v45];
      *(v46 + 4) = v50;
      *(v46 + 5) = v49;
      *(v46 + 6) = v48;
      *(v46 + 7) = v42;
      v0 = v59;
    }

    while (v18);
LABEL_17:
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v19)
      {

        v3 = v9;
        v4 = v56;
        v2 = v57;
        v8 = v55;
        v7 = v58;
        goto LABEL_6;
      }

      v18 = *(v15 + 8 * v21);
      ++v20;
      if (v18)
      {
        v20 = v21;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v9 >= v8)
      {

        v47 = *(v0 + 8);

        v47(v54);
        return;
      }

      v7 = *(v4 + 8 * v9);
      ++v3;
      if (v7)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
}

void *SettingsSearchIndexableItemsFetchRequest.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return v0;
}

uint64_t SettingsSearchIndexableItemsFetchRequest.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

char *sub_2659E0698(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B650, &unk_265A21990);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2659E07BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  result = a2;
  if (a7 > 1u)
  {
    if (a7 != 4)
    {
      if (a7 == 3)
      {
LABEL_8:

        goto LABEL_9;
      }

      if (a7 != 2)
      {
        return result;
      }
    }

    goto LABEL_8;
  }

  if (a7)
  {
    if (a7 != 1)
    {
      return result;
    }

    goto LABEL_8;
  }

LABEL_9:
}

unint64_t sub_2659E0848()
{
  result = qword_28156A898;
  if (!qword_28156A898)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28156A898);
  }

  return result;
}

void sub_2659E0894(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

char *sub_2659E08B0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B648, &qword_265A21988);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2659E0A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 != 0xFF)
  {
    return sub_2659E07BC(a1, a2, a3, a4, a5, a6, a7);
  }

  return a1;
}

uint64_t sub_2659E0A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 != 0xFF)
  {
    return sub_2659E0A34(a1, a2, a3, a4, a5, a6, a7);
  }

  return a1;
}

uint64_t sub_2659E0A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  result = a2;
  if (a7 > 1u)
  {
    if (a7 != 4)
    {
      if (a7 == 3)
      {
LABEL_8:

        goto LABEL_9;
      }

      if (a7 != 2)
      {
        return result;
      }
    }

    goto LABEL_8;
  }

  if (a7)
  {
    if (a7 != 1)
    {
      return result;
    }

    goto LABEL_8;
  }

LABEL_9:
}

char *sub_2659E0AC0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B658, &qword_265A21AB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2659E0BF4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}
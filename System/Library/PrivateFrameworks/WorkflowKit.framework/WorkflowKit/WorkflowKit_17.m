uint64_t sub_1CA40FA14()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1CA40FA50()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1CA40FA8C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1CA40FACC(uint64_t result, int a2, int a3)
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

uint64_t sub_1CA40FB34(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    type metadata accessor for DrawerSearchIndex.SearchResult.Match();
    swift_getWitnessTable();
    v3 = sub_1CA94C958();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1CA40FC08(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1CA40FD54(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1CA40FF50(uint64_t a1, uint64_t a2)
{
  sub_1CA410C44(a1, a2, v2);
  v4 = MEMORY[0x1E69E7CC0];
  sub_1CA94CB98();
  return v4;
}

BOOL sub_1CA410000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5)
  {
    return a3 == a6;
  }

  v9 = sub_1CA94D7F8();
  result = 0;
  if (v9)
  {
    return a3 == a6;
  }

  return result;
}

uint64_t sub_1CA410084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CA94D918();
  sub_1CA410054(v7, a1, a2, a3);
  return sub_1CA94D968();
}

uint64_t sub_1CA4100E4(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v4 = *(swift_getAssociatedConformanceWitness() + 8);
  if ((sub_1CA94C358() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for DrawerSearchIndex.SearchResult.Match();
  if ((OUTLINED_FUNCTION_2_30(v5[9]) & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_2_30(v5[10]) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_28(v5[11]);
  if (!v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_28(v5[12]);
  if (!v6)
  {
    return 0;
  }

  v7 = v5[13];
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v10[1];
  if (v9)
  {
    if (v11 && sub_1CA410000(*v8, v9, v8[2], *v10, v11, v10[2]))
    {
      return 1;
    }
  }

  else if (!v11)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1CA410204(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1CA94C298();
  OUTLINED_FUNCTION_3_26(*(a2 + 36));
  OUTLINED_FUNCTION_4_29();
  OUTLINED_FUNCTION_3_26(*(a2 + 40));
  OUTLINED_FUNCTION_4_29();
  v6 = *(v2 + *(a2 + 44));
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x1CCAA27B0](*&v6);
  v7 = *(v2 + *(a2 + 48));
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  MEMORY[0x1CCAA27B0](*&v7);
  v8 = (v2 + *(a2 + 52));
  v10 = *v8;
  v11 = *(v8 + 2);
  type metadata accessor for DrawerSearchIndex.SearchResult.Match.FuzzyMatch();
  sub_1CA94D098();
  swift_getWitnessTable();
  return sub_1CA94D0A8();
}

uint64_t sub_1CA41037C(uint64_t a1)
{
  sub_1CA94D918();
  sub_1CA410204(v3, a1);
  return sub_1CA94D968();
}

uint64_t sub_1CA4103DC()
{
  sub_1CA94D918();
  sub_1CA410054(v2, *v0, v0[1], v0[2]);
  return sub_1CA94D968();
}

uint64_t sub_1CA41045C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_1CA4100E4(a1, a2);
}

BOOL sub_1CA410468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(type metadata accessor for DrawerSearchIndex.SearchResult() + 36);
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v10 < v9)
  {
    return 1;
  }

  if (v9 < v10)
  {
    return 0;
  }

  v12 = *(a4 + 40);
  v12(a3, a4);
  v12(a3, a4);
  sub_1CA27BAF0();
  v13 = sub_1CA94D1F8();

  return v13 == -1;
}

BOOL sub_1CA410574()
{
  v0 = type metadata accessor for DrawerSearchIndex.SearchResult();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v1 + 32);
  v4 = v3(v2, v1);
  v6 = v5;
  v8 = v4 == v3(v2, v1) && v6 == v7;
  if (v8)
  {
  }

  else
  {
    v9 = sub_1CA94D7F8();

    result = 0;
    if ((v9 & 1) == 0)
    {
      return result;
    }
  }

  OUTLINED_FUNCTION_1_28(*(v0 + 36));
  return v8;
}

uint64_t sub_1CA410674@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CA40FFF8(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

BOOL sub_1CA4106B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_1CA410574();
}

uint64_t sub_1CA410714(uint64_t a1)
{
  v2 = v1;
  sub_1CA94D408();
  v4 = (*(*(a1 + 24) + 32))(*(a1 + 16), *(a1 + 24));
  MEMORY[0x1CCAA1300](v4);

  MEMORY[0x1CCAA1300](32, 0xE100000000000000);
  v5 = *(a1 + 36);
  swift_getAssociatedTypeWitness();
  sub_1CA94D7B8();
  MEMORY[0x1CCAA1300](10272, 0xE200000000000000);
  v6 = MEMORY[0x1CCAA1280](*(v2 + *(a1 + 52)), *(v2 + *(a1 + 52) + 8), *(v2 + *(a1 + 52) + 16), *(v2 + *(a1 + 52) + 24));
  MEMORY[0x1CCAA1300](v6);

  MEMORY[0x1CCAA1300](0x67696577202D2029, 0xEC000000203A7468);
  v7 = *(v2 + *(a1 + 40));
  sub_1CA94C8D8();
  MEMORY[0x1CCAA1300](0x3A797A7A7566202CLL, 0xE900000000000020);
  if (*(v2 + *(a1 + 44)))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(v2 + *(a1 + 44)))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1CCAA1300](v8, v9);

  return 0;
}

uint64_t sub_1CA4108CC(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v4 = *(swift_getAssociatedConformanceWitness() + 8);
  if ((sub_1CA94C358() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for DrawerSearchIndex.SearchResultSetItemMatch() + 36);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = *(a1 + v5 + 16);
  v9 = *(a1 + v5 + 24);
  v10 = (a2 + v5);
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];

  return sub_1CA410BD0(v6, v7, v8, v9, v11, v12, v13, v14);
}

uint64_t sub_1CA4109B8(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1CA94C298();
  v6 = (v2 + *(a2 + 36));
  v8 = *v6;
  v9 = *(v6 + 2);
  v10 = *(v6 + 3);
  return sub_1CA94C298();
}

uint64_t sub_1CA410A88(uint64_t a1)
{
  sub_1CA94D918();
  sub_1CA4109B8(v3, a1);
  return sub_1CA94D968();
}

uint64_t sub_1CA410AF4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  sub_1CA94D918();
  a4(v7, a2);
  return sub_1CA94D968();
}

uint64_t sub_1CA410B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_1CA4108CC(a1, a2);
}

uint64_t sub_1CA410B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = sub_1CA94C588();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_1CA69ADF8();
  v12 = *(*a4 + 16);
  sub_1CA69B00C(v12);
  v13 = *a4;
  *(v13 + 16) = v12 + 1;
  v14 = (v13 + 32 * v12);
  v14[4] = v5;
  v14[5] = v7;
  v14[6] = v9;
  v14[7] = v11;
  return 1;
}

uint64_t sub_1CA410BD0(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == a7 && a4 == a8 && a1 >> 16 == a5 >> 16 && a2 >> 16 == a6 >> 16)
  {
    return 1;
  }

  else
  {
    return sub_1CA94D788() & 1;
  }
}

void sub_1CA410C44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1CA94C368();
  [a3 setString_];
}

uint64_t sub_1CA410C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  return sub_1CA410B54(a1, a2, a3, *(v3 + 16));
}

uint64_t sub_1CA410CA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CA410D30(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  result = swift_getAssociatedTypeWitness();
  v9 = *(*(result - 8) + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(*(result - 8) + 84);
  }

  v11 = *(*(result - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v10 >= a2)
  {
LABEL_26:
    if (v9 < 0x7FFFFFFF)
    {
      v19 = *(((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {

      return __swift_getEnumTagSinglePayload(a1, v9, result);
    }
  }

  else
  {
    v12 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
    v13 = v12 & 0xFFFFFFF8;
    if ((v12 & 0xFFFFFFF8) != 0)
    {
      v14 = 2;
    }

    else
    {
      v14 = a2 - v10 + 1;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    switch(v16)
    {
      case 1:
        v17 = *(a1 + v12);
        if (!v17)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v17 = *(a1 + v12);
        if (!v17)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v17 = *(a1 + v12);
        if (!v17)
        {
          goto LABEL_26;
        }

LABEL_22:
        v18 = v17 - 1;
        if (v13)
        {
          v18 = 0;
          LODWORD(v13) = *a1;
        }

        result = v10 + (v13 | v18) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1CA410EC0(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  v13 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (((v12 + 7) & 0xFFFFFFF8) == 0xFFFFFFE0)
  {
    v14 = a3 - v11 + 1;
  }

  else
  {
    v14 = 2;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v11 < a3)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (a2 <= v11)
  {
    switch(v17)
    {
      case 1:
        *(a1 + v13) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *(a1 + v13) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *(a1 + v13) = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v10 < 0x7FFFFFFF)
          {
            v20 = ((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v20[2] = 0;
              v20[3] = 0;
              *v20 = a2 & 0x7FFFFFFF;
              v20[1] = 0;
            }

            else
            {
              v20[3] = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v10, AssociatedTypeWitness);
          }
        }

        break;
    }
  }

  else
  {
    if (((v12 + 7) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v18 = a2 - v11;
    }

    else
    {
      v18 = 1;
    }

    if (((v12 + 7) & 0xFFFFFFF8) != 0xFFFFFFE0)
    {
      v19 = ~v11 + a2;
      bzero(a1, v13);
      *a1 = v19;
    }

    switch(v17)
    {
      case 1:
        *(a1 + v13) = v18;
        break;
      case 2:
        *(a1 + v13) = v18;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *(a1 + v13) = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1CA4110D0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    type metadata accessor for DrawerSearchIndex.SearchResultSetItemMatch();
    type metadata accessor for DrawerSearchIndex.SearchResult.Match();
    swift_getWitnessTable();
    v3 = sub_1CA94C248();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1CA4111C0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1CA4112FC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
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

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1CA4114E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    v3 = type metadata accessor for IndexableDrawerProperty.IndexMode();
    if (v6 <= 0x3F)
    {
      v3 = sub_1CA4118EC();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v3;
}

uint64_t sub_1CA4115B0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 55) & 0xFFFFFFFFFFFFFFF8) + 16;
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

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1CA4116EC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 55) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 55) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
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

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v17 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v17[1] = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 55) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 55) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 55) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1CA4118EC()
{
  result = qword_1EC4416F0;
  if (!qword_1EC4416F0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EC4416F0);
  }

  return result;
}

uint64_t sub_1CA411934()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1CA41197C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CA4119BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1CA411A0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v6 <= 0x3F)
    {
      AssociatedTypeWitness = sub_1CA4118EC();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_1CA411AF0(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  result = swift_getAssociatedTypeWitness();
  v9 = *(result - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  v12 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v13 = result;
  v14 = *(v6 + 64) + v12;
  v15 = *(*(result - 8) + 64) + 23;
  if (v11 >= a2)
  {
LABEL_27:
    if (v7 == v11)
    {
      v24 = a1;
      v10 = v7;
      v13 = v5;
    }

    else
    {
      v24 = (a1 + v14) & ~v12;
      if (v10 != v11)
      {
        v25 = *((v15 + v24) & 0xFFFFFFFFFFFFFFF8);
        if (v25 >= 0xFFFFFFFF)
        {
          LODWORD(v25) = -1;
        }

        return (v25 + 1);
      }
    }

    return __swift_getEnumTagSinglePayload(v24, v10, v13);
  }

  v16 = ((((v15 + (v14 & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 32;
  v17 = v16 & 0xFFFFFFF8;
  if ((v16 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = a2 - v11 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  switch(v20)
  {
    case 1:
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    case 2:
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    case 3:
      __break(1u);
      return result;
    case 4:
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_27;
      }

LABEL_24:
      v22 = v21 - 1;
      if (v17)
      {
        v22 = 0;
        v23 = *a1;
      }

      else
      {
        v23 = 0;
      }

      result = v11 + (v23 | v22) + 1;
      break;
    default:
      goto LABEL_27;
  }

  return result;
}

void sub_1CA411D24(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = *(v11 + 80);
  v15 = *(v8 + 64) + v14;
  v16 = *(*(AssociatedTypeWitness - 8) + 64) + 23;
  v17 = ((((v16 + (v15 & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v13 >= a3)
  {
    v20 = 0;
  }

  else
  {
    if (((((v16 + (v15 & ~v14)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v18 = a3 - v13 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }
  }

  if (a2 <= v13)
  {
    v23 = ~v14;
    switch(v20)
    {
      case 1:
        *(a1 + v17) = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 2:
        *(a1 + v17) = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 3:
LABEL_48:
        __break(1u);
        return;
      case 4:
        *(a1 + v17) = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (!a2)
        {
          return;
        }

LABEL_34:
        if (v9 == v13)
        {
          v24 = a1;
          v25 = a2;
          v12 = v9;
          AssociatedTypeWitness = v7;
        }

        else
        {
          v24 = (a1 + v15) & v23;
          if (v12 != v13)
          {
            v26 = ((v16 + v24) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v27 = a2 & 0x7FFFFFFF;
              v26[1] = 0;
            }

            else
            {
              v27 = (a2 - 1);
            }

            *v26 = v27;
            return;
          }

          v25 = a2;
        }

        __swift_storeEnumTagSinglePayload(v24, v25, v12, AssociatedTypeWitness);
        break;
    }
  }

  else
  {
    if (((((v16 + (v15 & ~v14)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v21 = a2 - v13;
    }

    else
    {
      v21 = 1;
    }

    if (((((v16 + (v15 & ~v14)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFE0)
    {
      v22 = ~v13 + a2;
      bzero(a1, v17);
      *a1 = v22;
    }

    switch(v20)
    {
      case 1:
        *(a1 + v17) = v21;
        break;
      case 2:
        *(a1 + v17) = v21;
        break;
      case 3:
        goto LABEL_48;
      case 4:
        *(a1 + v17) = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t getEnumTagSinglePayload for IndexableDrawerPropertyFilterContext(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IndexableDrawerPropertyFilterContext(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1CA412038(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CA412054(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_1CA412088(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4455C0, &unk_1CA987658);
  v30 = sub_1CA94C1E8();
  v14 = sub_1CA94C468();
  v15 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
    goto LABEL_29;
  }

  v7 = a5 + 1;
  if (__OFADD__(a5, 1))
  {
    goto LABEL_30;
  }

  if (__OFADD__(a3, 1))
  {
    goto LABEL_31;
  }

  if ((v7 * v15) >> 64 != (v7 * v15) >> 63)
  {
    goto LABEL_32;
  }

  v16 = sub_1CA4F0818((a3 + 1), v7 * v15);
  v29 = v16;
  if (v15 < 0)
  {
    goto LABEL_33;
  }

  v6 = v16;
  if (!v15)
  {
    goto LABEL_16;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_35;
  }

  while (1)
  {
    if (v15 > *(v6 + 16))
    {
      __break(1u);
      goto LABEL_37;
    }

    v17 = 0;
    v18 = xmmword_1CA986F60;
    v19 = vdupq_n_s64(v15 - 1);
    v20 = vdupq_n_s64(2uLL);
    do
    {
      v21 = vmovn_s64(vcgeq_u64(v19, v18));
      v22 = v6 + 8 * v17;
      if (v21.i8[0])
      {
        *(v22 + 32) = v17;
      }

      if (v21.i8[4])
      {
        *(v22 + 40) = v17 + 1;
      }

      v17 += 2;
      v18 = vaddq_s64(v18, v20);
    }

    while (((v15 + 1) & 0xFFFFFFFFFFFFFFFELL) != v17);
    v29 = v6;
LABEL_16:
    if (v7 >= 1)
    {
      break;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    sub_1CA42B27C(v6);
    v6 = v27;
  }

  if (v7 != 1)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_19:
      v23 = 1;
      v24 = a5;
      while (1)
      {
        v25 = v23 * v15;
        if ((v23 * v15) >> 64 != (v23 * v15) >> 63)
        {
          break;
        }

        if ((v25 & 0x8000000000000000) != 0)
        {
          goto LABEL_27;
        }

        if (v25 >= *(v6 + 16))
        {
          goto LABEL_28;
        }

        *(v6 + 32 + 8 * v25) = v23++;
        if (!--v24)
        {
          v29 = v6;
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
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_37:
    sub_1CA42B27C(v6);
    v6 = v28;
    goto LABEL_19;
  }

LABEL_25:
  sub_1CA4122BC(a4, a1, a2, a3, &v30, &v29, 1, v15, 0, 0xE000000000000000, a4, a5, a6);

  return v30;
}

uint64_t sub_1CA4122BC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v84 = a8;
  v82 = a7;
  v88 = a6;
  v78 = a5;
  v92 = a2;
  v93 = a3;
  swift_beginAccess();
  v79 = *(a1 + 16);
  v15 = v79;
  if (v79 >> 62)
  {
    goto LABEL_92;
  }

  result = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v17 = v84;
    if (!result)
    {
      return result;
    }

    v77 = result;
    v91 = a13;
    v72 = a12;
    v71 = a11;
    v75 = v15 + 32;
    v18 = v84 - 1;
    v19 = __OFSUB__(v84, 1);
    v87 = v19;
    v74 = a10;
    v73 = a9;
    sub_1CA94C218();
    v20 = v15 & 0xC000000000000001;
    v21 = 0;
    v81 = &a4[v82];
    v86 = a4;
    v76 = v15 & 0xC000000000000001;
    v85 = v18;
LABEL_8:
    v22 = v20;
    sub_1CA275D70(v21, v20 == 0, v15);
    if (v22)
    {
      v83 = MEMORY[0x1CCAA22D0](v21, v15);
    }

    else
    {
      v83 = *(v75 + 8 * v21);
    }

    v23 = __OFADD__(v21, 1);
    v24 = v21 + 1;
    if (!v23)
    {
      break;
    }

LABEL_91:
    __break(1u);
LABEL_92:
    result = sub_1CA94D328();
    v15 = v79;
  }

  v80 = v24;
  v25 = *(v83 + 32);
  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = *(v83 + 24) & 0xFFFFFFFFFFFFLL;
  }

  v102 = *(v83 + 24);
  v103 = v25;
  v104 = 0;
  v105 = v26;
  sub_1CA94C218();
  v27 = v81;
  v28 = v82;
  while (1)
  {
    v29 = v27 >= v18 ? v18 : v27;
    v94 = v29;
    v96 = sub_1CA94C4B8();
    v97 = v30;
    if (!v30)
    {
      break;
    }

    v31 = v17 * v28;
    if ((v17 * v28) >> 64 != (v17 * v28) >> 63)
    {
      goto LABEL_80;
    }

    v95 = v31 - v17;
    if (__OFSUB__(v31, v17))
    {
      goto LABEL_81;
    }

    if ((v31 & 0x8000000000000000) != 0)
    {
      goto LABEL_82;
    }

    v90 = v27;
    v32 = *v88;
    if (v31 >= *(*v88 + 16))
    {
      goto LABEL_83;
    }

    v33 = v28 - a4;
    if (__OFSUB__(v28, a4))
    {
      goto LABEL_84;
    }

    v23 = __OFSUB__(v33, 1);
    v34 = v33 - 1;
    if (v23)
    {
      goto LABEL_85;
    }

    if (v87)
    {
      goto LABEL_86;
    }

    v35 = &a4[v28];
    if (__OFADD__(v28, a4))
    {
      goto LABEL_87;
    }

    v89 = v28;
    v36 = v34 & ~(v34 >> 63);
    if (v35 >= v18)
    {
      v37 = v18;
    }

    else
    {
      v37 = v35;
    }

    if (v37 < v36)
    {
      goto LABEL_88;
    }

    v38 = *(v32 + 8 * v31 + 32);
    if (v36 != v37)
    {
      if (v36 < v37)
      {
        while (1)
        {
          sub_1CA94C488();
          v39 = sub_1CA94C568();
          v100 = v96;
          v101 = v97;
          v98 = v39;
          v99 = v40;
          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445488, &qword_1CA987590);
          v42 = (*(*(v41 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x1EEE9AC00](v41 - 8);
          a4 = &v70 - v43;
          v44 = sub_1CA948E58();
          __swift_storeEnumTagSinglePayload(a4, 1, 1, v44);
          sub_1CA27BAF0();
          sub_1CA94C218();
          v45 = sub_1CA94D228();
          sub_1CA27080C(a4, &unk_1EC445488, &qword_1CA987590);

          v46 = v95 + v36;
          if (__OFADD__(v95, v36))
          {
            break;
          }

          if ((v46 & 0x8000000000000000) != 0)
          {
            goto LABEL_71;
          }

          v47 = *(v32 + 16);
          if (v46 >= v47)
          {
            goto LABEL_72;
          }

          v48 = v45 != 0;
          v49 = v32 + 32;
          v50 = *(v32 + 32 + 8 * v46);
          v23 = __OFADD__(v50, v48);
          v51 = v50 + v48;
          if (v23)
          {
            goto LABEL_73;
          }

          v52 = v46 + 1;
          if (v52 >= v47)
          {
            goto LABEL_74;
          }

          v53 = *(v49 + 8 * v52);
          v23 = __OFADD__(v53, 1);
          v54 = v53 + 1;
          if (v23)
          {
            goto LABEL_75;
          }

          v55 = v31 + v36;
          if (__OFADD__(v31, v36))
          {
            goto LABEL_76;
          }

          if (v55 >= v47)
          {
            goto LABEL_77;
          }

          v56 = *(v49 + 8 * v55);
          v23 = __OFADD__(v56, 1);
          v57 = v56 + 1;
          if (v23)
          {
            goto LABEL_78;
          }

          if (v54 < v51)
          {
            v51 = v54;
          }

          if (v57 >= v51)
          {
            v58 = v51;
          }

          else
          {
            v58 = v57;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1CA42B27C(v32);
            v32 = v59;
          }

          if (v55 + 1 >= *(v32 + 16))
          {
            goto LABEL_79;
          }

          ++v36;
          *(v32 + 8 * (v55 + 1) + 32) = v58;
          if (v58 < v38)
          {
            v38 = v58;
          }

          if (v94 == v36)
          {

            *v88 = v32;
            v17 = v84;
            goto LABEL_55;
          }
        }

        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
      }

      __break(1u);
      goto LABEL_91;
    }

LABEL_55:
    a4 = v86;
    if (v38 > v86)
    {

      v18 = v85;
      goto LABEL_67;
    }

    v27 = v90 + 1;
    v28 = v89 + 1;
    v18 = v85;
    if (__OFADD__(v89, 1))
    {
      goto LABEL_89;
    }
  }

  v60 = v28 * v17;
  if ((v28 * v17) >> 64 != (v28 * v17) >> 63)
  {
    __break(1u);
    goto LABEL_94;
  }

  v23 = __OFSUB__(v60, 1);
  v61 = v60 - 1;
  if (v23)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  if ((v61 & 0x8000000000000000) != 0)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if (v61 >= *(*v88 + 16))
  {
LABEL_96:
    __break(1u);
    return result;
  }

  if (*(*v88 + 8 * v61 + 32) <= a4)
  {
    v62 = *(v83 + 24);
    v63 = *(v83 + 32);
    v102 = v73;
    v103 = v74;
    sub_1CA94C218();
    MEMORY[0x1CCAA1300](v62, v63);

    v64 = v28;
    v65 = v78;
    v66 = *v78;
    swift_isUniquelyReferenced_nonNull_native();
    v102 = *v65;
    sub_1CA3229F4();

    *v65 = v102;
    v28 = v64;
  }

  v67 = v83;
  v68 = *(v83 + 24);
  v69 = *(v83 + 32);
  v102 = v73;
  v103 = v74;
  sub_1CA94C218();
  MEMORY[0x1CCAA1300](v68, v69);
  sub_1CA4122BC(v67, v92, v93, a4, v78, v88, v28, v84, v102, v103, v71, v72, v91);

LABEL_67:
  v21 = v80;
  v17 = v84;
  v15 = v79;
  v20 = v76;
  if (v80 != v77)
  {
    goto LABEL_8;
  }
}

uint64_t sub_1CA4129A4@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  v74 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445470, &qword_1CA9824D8);
  v90 = *(v3 - 8);
  v91 = v3;
  v4 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v73 - v5;
  v7 = type metadata accessor for DrawerSearchIndexItem(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v92 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445478, &qword_1CA987580);
  i = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC0];
  i[2] = MEMORY[0x1E69E7CC0];
  i[3] = 0;
  i[4] = 0xE000000000000000;
  i[5] = v12;
  v98 = i;
  v96 = xmmword_1CA986F70;
  v99 = xmmword_1CA986F70;
  v80 = sub_1CA94C1E8();
  v77 = *(a1 + 16);
  if (v77)
  {
    v13 = 0;
    v78 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v76 = a1;
    v75 = v8;
    while (1)
    {
      if (v13 >= *(a1 + 16))
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        result = sub_1CA94D878();
        __break(1u);
        return result;
      }

      v14 = *(v8 + 72);
      v79 = v13;
      sub_1CA42B9A4(v78 + v14 * v13, v92);
      v15 = sub_1CA429A28();
      v85 = *(v15 + 16);
      if (v85)
      {
        break;
      }

      v17 = 0.0;
LABEL_17:
      v54 = sub_1CA42928C();
      v56 = v55;
      v57 = v80;
      swift_isUniquelyReferenced_nonNull_native();
      v97 = v57;
      v58 = sub_1CA271BF8();
      if (__OFADD__(*(v57 + 16), (v59 & 1) == 0))
      {
        goto LABEL_32;
      }

      v60 = v58;
      v61 = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445480, &qword_1CA987588);
      if (sub_1CA94D588())
      {
        v62 = sub_1CA271BF8();
        if ((v61 & 1) != (v63 & 1))
        {
          goto LABEL_34;
        }

        v60 = v62;
      }

      a1 = v76;
      if (v61)
      {

        v80 = v97;
        *(v97[7] + 8 * v60) = v17;
        sub_1CA42B9FC();
      }

      else
      {
        v64 = v97;
        v97[(v60 >> 6) + 8] |= 1 << v60;
        v65 = (v64[6] + 16 * v60);
        *v65 = v54;
        v65[1] = v56;
        *(v64[7] + 8 * v60) = v17;
        sub_1CA42B9FC();
        v66 = v64[2];
        v67 = __OFADD__(v66, 1);
        v68 = v66 + 1;
        if (v67)
        {
          goto LABEL_33;
        }

        v80 = v64;
        v64[2] = v68;
      }

      v13 = v79 + 1;
      v8 = v75;
      if (v79 + 1 == v77)
      {

        i = v98;
        v70 = v99;
        goto LABEL_29;
      }
    }

    v16 = 0;
    v84 = v15 + 32;
    v17 = 0.0;
    v83 = v15;
    while (1)
    {
      if (v16 >= *(v15 + 16))
      {
        __break(1u);
        goto LABEL_31;
      }

      v86 = v16;
      v18 = (v84 + 72 * v16);
      v19 = *v18;
      v21 = *(v18 + 1);
      v20 = *(v18 + 2);
      v22 = v18[24];
      v23 = *(v18 + 4);
      v25 = *(v18 + 7);
      v24 = *(v18 + 8);
      if (v18[48])
      {
        break;
      }

      v42 = *(v18 + 4);
      v43 = *(v18 + 2);
      swift_bridgeObjectRetain_n();

      v44 = sub_1CA413170(v21, v20);
      sub_1CA42B9A4(v92, v6);
      v45 = sub_1CA94D118();
      v46 = v91;
      v6[v91[9]] = v19;
      *&v6[v46[10]] = v23;
      v6[v46[11]] = v22;
      v47 = &v6[v46[12]];
      *v47 = v25;
      *(v47 + 1) = v24;
      v48 = &v6[v46[13]];
      *v48 = v45;
      v48[1] = v49;
      v48[2] = v50;
      v48[3] = v51;
      swift_beginAccess();
      sub_1CA69AE10();
      v52 = *(*(v44 + 40) + 16);
      sub_1CA69B024(v52);
      v53 = *(v44 + 40);
      *(v53 + 16) = v52 + 1;
      sub_1CA2D9CD4(v6, v53 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v52, &qword_1EC445470, &qword_1CA9824D8);
      *(v44 + 40) = v53;
      swift_endAccess();

      v17 = v17 + v23;
LABEL_14:
      v16 = v86 + 1;
      v15 = v83;
      if (v86 + 1 == v85)
      {

        goto LABEL_17;
      }
    }

    v87 = *(v18 + 7);
    v88 = v22;
    v89 = v19;
    v26 = *(v18 + 5);
    sub_1CA94C218();

    v93 = v26;
    v94 = v23;
    sub_1CA435BB4(*&v23, v26, 1);
    v82 = v20;
    v27 = sub_1CA40FF50(v21, v20);
    v28 = 0;
    v95 = *(v27 + 16);
    *&v96 = v27;
    for (i = (v27 + 56); ; i += 4)
    {
      if (v95 == v28)
      {

        sub_1CA435BC4(*&v94, v93, 1);
        goto LABEL_14;
      }

      if (v28 >= *(v96 + 16))
      {
        break;
      }

      v29 = v28 + 1;
      v30 = *(i - 1);
      v31 = *i;
      v33 = *(i - 3);
      v32 = *(i - 2);
      sub_1CA94C218();
      v34 = (*&v94)(v28);
      v35 = sub_1CA413B9C(v33, v32, v30, v31);
      sub_1CA42B9A4(v92, v6);
      v36 = v91;
      v37 = v88;
      v6[v91[9]] = v89;
      *&v6[v36[10]] = v34;
      v6[v36[11]] = v37;
      v38 = &v6[v36[12]];
      *v38 = v87;
      *(v38 + 1) = v24;
      v39 = &v6[v36[13]];
      *v39 = v33;
      v39[1] = v32;
      v39[2] = v30;
      v39[3] = v31;
      swift_beginAccess();

      sub_1CA69AE10();
      v40 = *(*(v35 + 40) + 16);
      sub_1CA69B024(v40);
      v41 = *(v35 + 40);
      *(v41 + 16) = v40 + 1;
      sub_1CA2D9CD4(v6, v41 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v40, &qword_1EC445470, &qword_1CA9824D8);
      *(v35 + 40) = v41;
      swift_endAccess();

      v17 = v17 + v34;
      v28 = v29;
    }

    __break(1u);
  }

  v70 = v96;
LABEL_29:
  v71 = v74;
  *v74 = i;
  *(v71 + 1) = v70;
  v72 = v80;
  v71[3] = v81;
  v71[4] = v72;
  return result;
}

uint64_t sub_1CA413170(unint64_t a1, unint64_t a2)
{
  v5 = v2[1];
  v6 = sub_1CA94C468();
  if (v6 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v2[1] = v7;
  v111 = a1;
  v112 = a2;
  sub_1CA94C218();
  v8 = sub_1CA94D138();
  v10 = v9;
  v12 = v11;
  v97 = v13;
  v14 = *v2;

  v87 = v2;
LABEL_5:
  v89 = v10 >> 14;
  if (v10 >> 14 == v8 >> 14)
  {
  }

  else
  {
    swift_beginAccess();
    if (sub_1CA25B410(v14[2]) && (v15 = v14[2], (v91 = sub_1CA25B410(v15)) != 0))
    {
      v88 = v14;
      v16 = v2[2];
      v96 = v15 & 0xC000000000000001;
      v90 = v15 & 0xFFFFFFFFFFFFFF8;
      result = sub_1CA94C218();
      v18 = 0;
      v100 = v8;
      v99 = v10;
      v108 = v12;
      v95 = v15;
      v106 = v16;
      while (1)
      {
        if (v96)
        {
          result = MEMORY[0x1CCAA22D0](v18, v15);
        }

        else
        {
          if (v18 >= *(v90 + 16))
          {
            goto LABEL_37;
          }

          v19 = *(v15 + 8 * v18 + 32);
        }

        v20 = v97;
        if (__OFADD__(v18, 1))
        {
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          return result;
        }

        v101 = v18 + 1;
        v102 = v18;
        v111 = v8;
        v112 = v10;
        v113 = v12;
        v114 = v97;
        v105 = result;
        v21 = *(result + 32);
        v109 = *(result + 24);
        v110 = v21;
        sub_1CA435BD4();
        v22 = sub_1CA27BAF0();
        v23 = sub_1CA94D188();
        v25 = v23;
        v26 = v24;
        v27 = HIBYTE(v24) & 0xF;
        if ((v24 & 0x2000000000000000) == 0)
        {
          v27 = v23 & 0xFFFFFFFFFFFFLL;
        }

        v107 = v22;
        v103 = v27;
        if (v27)
        {
          v111 = v8;
          v112 = v10;
          v113 = v108;
          v114 = v20;
          v98 = v23;
          v109 = v23;
          v110 = v24;
          v28 = v24;
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445488, &qword_1CA987590);
          v30 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x1EEE9AC00](v29 - 8);
          v32 = &v87 - v31;
          v33 = sub_1CA948E58();
          __swift_storeEnumTagSinglePayload(v32, 1, 1, v33);
          sub_1CA94C218();
          sub_1CA94D218();
          v35 = v34;
          v37 = v36;
          sub_1CA27080C(v32, &unk_1EC445488, &qword_1CA987590);

          if (v37)
          {
            sub_1CA94C218();
            v94 = v100;
            v93 = v99;
            v92 = v108;
            v104 = v20;
          }

          else
          {
            if (v89 < v35 >> 14)
            {
              goto LABEL_38;
            }

            sub_1CA94C218();
            v94 = sub_1CA94D128();
            v93 = v38;
            v92 = v39;
            v104 = v40;
          }

          v26 = v28;
          v25 = v98;
        }

        else
        {
          sub_1CA94C218();
          v94 = v8;
          v93 = v10;
          v92 = v108;
          v104 = v20;
        }

        v41 = v25;
        v111 = v25;
        v112 = v26;
        v42 = v26;
        v43 = v105[4];
        v14 = v105;
        v109 = v105[3];
        v110 = v43;
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445488, &qword_1CA987590);
        v45 = *(*(v44 - 8) + 64);
        MEMORY[0x1EEE9AC00](v44 - 8);
        v47 = &v87 - v46;
        v48 = sub_1CA948E58();
        __swift_storeEnumTagSinglePayload(v47, 1, 1, v48);
        sub_1CA94C218();
        v49 = sub_1CA94D228();
        sub_1CA27080C(v47, &unk_1EC445488, &qword_1CA987590);

        if (!v49)
        {

          v8 = v94;
          v10 = v93;
          v12 = v92;
          v97 = v104;
          v2 = v87;
          goto LABEL_5;
        }

        v51 = v14;
        v52 = v42;
        v53 = v41;
        if (v103)
        {
          v54 = v14[4];
          v111 = v14[3];
          v112 = v54;
          v109 = v41;
          v110 = v52;
          MEMORY[0x1EEE9AC00](v50);
          v55 = &v87 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
          __swift_storeEnumTagSinglePayload(v55, 1, 1, v48);
          sub_1CA94C218();
          sub_1CA94D218();
          v57 = v56;
          v59 = v58;
          sub_1CA27080C(v55, &unk_1EC445488, &qword_1CA987590);

          if ((v59 & 1) == 0)
          {
            break;
          }
        }

        v18 = v102 + 1;
        v8 = v100;
        v10 = v99;
        v12 = v108;
        v15 = v95;
        if (v101 == v91)
        {

          v14 = v88;
          goto LABEL_29;
        }
      }

      v65 = v14[3];
      v66 = v14[4];
      sub_1CA94C218();
      v67 = sub_1CA42AAA4(v57, v65, v66);
      v68 = MEMORY[0x1CCAA1280](v67);
      v70 = v69;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445478, &qword_1CA987580);
      v71 = swift_allocObject();
      v72 = MEMORY[0x1E69E7CC0];
      v71[2] = MEMORY[0x1E69E7CC0];
      v73 = v71 + 2;
      v71[3] = v68;
      v71[4] = v70;
      v71[5] = v72;
      v74 = v71 + 5;
      swift_beginAccess();
      v75 = v14[2];
      swift_beginAccess();
      v76 = *v73;
      *v73 = v75;
      sub_1CA94C218();

      swift_beginAccess();
      v77 = v14[5];
      swift_beginAccess();
      v78 = *v74;
      *v74 = v77;
      sub_1CA94C218();

      v79 = v14[4];
      v14[3] = v53;
      v14[4] = v52;

      v80 = v14[2];
      v14[2] = v72;

      v81 = v14[5];
      v14[5] = v72;

      swift_beginAccess();

      MEMORY[0x1CCAA1490](v82);
      sub_1CA69B4CC(*((v14[2] & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1CA94C6E8();
      swift_endAccess();
      if (!((v93 ^ v94) >> 14))
      {

        goto LABEL_32;
      }

      v83 = MEMORY[0x1CCAA1280]();
      v85 = v84;

      v14 = swift_allocObject();
      v14[2] = v72;
      v14[3] = v83;
      v14[4] = v85;
      v14[5] = v72;
      swift_beginAccess();

      MEMORY[0x1CCAA1490](v86);
      sub_1CA69B4CC(*((v51[2] & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1CA94C6E8();
      swift_endAccess();
    }

    else
    {
LABEL_29:
      v60 = MEMORY[0x1CCAA1280](v8, v10, v12, v97);
      v62 = v61;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445478, &qword_1CA987580);
      v51 = swift_allocObject();
      v63 = MEMORY[0x1E69E7CC0];
      v51[2] = MEMORY[0x1E69E7CC0];
      v51[3] = v60;
      v51[4] = v62;
      v51[5] = v63;
      swift_beginAccess();

      MEMORY[0x1CCAA1490](v64);
      sub_1CA69B4CC(*((v14[2] & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1CA94C6E8();
      swift_endAccess();
LABEL_32:

      return v51;
    }
  }

  return v14;
}

uint64_t sub_1CA413B9C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[1];
  v10 = sub_1CA94D0F8();
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v4[1] = v11;
  v118 = a1;
  v119 = a2;
  v120 = a3;
  v121 = a4;
  sub_1CA435C28();
  sub_1CA94C218();
  v12 = sub_1CA94D138();
  v14 = v13;
  v16 = v15;
  v104 = v17;
  v18 = *v4;

  v94 = v4;
LABEL_5:
  v96 = v14 >> 14;
  if (v14 >> 14 == v12 >> 14)
  {
  }

  else
  {
    swift_beginAccess();
    if (sub_1CA25B410(v18[2]) && (v19 = v18[2], (v98 = sub_1CA25B410(v19)) != 0))
    {
      v95 = v18;
      v20 = v4[2];
      v103 = v19 & 0xC000000000000001;
      v97 = v19 & 0xFFFFFFFFFFFFFF8;
      result = sub_1CA94C218();
      v22 = 0;
      v108 = v12;
      v107 = v14;
      v106 = v16;
      v102 = v19;
      v113 = v20;
      while (1)
      {
        if (v103)
        {
          result = MEMORY[0x1CCAA22D0](v22, v19);
          v115 = result;
        }

        else
        {
          if (v22 >= *(v97 + 16))
          {
            goto LABEL_36;
          }

          v115 = *(v19 + 8 * v22 + 32);
        }

        v23 = v104;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          return result;
        }

        v109 = v22 + 1;
        v110 = v22;
        v118 = v12;
        v119 = v14;
        v120 = v16;
        v121 = v104;
        v24 = v115[4];
        v116 = v115[3];
        v117 = v24;
        sub_1CA435BD4();
        v25 = sub_1CA27BAF0();
        v26 = sub_1CA94D188();
        v28 = v26;
        v29 = v27;
        v30 = HIBYTE(v27) & 0xF;
        if ((v27 & 0x2000000000000000) == 0)
        {
          v30 = v26 & 0xFFFFFFFFFFFFLL;
        }

        v114 = v25;
        v111 = v30;
        if (v30)
        {
          v118 = v12;
          v119 = v14;
          v120 = v16;
          v121 = v23;
          v105 = v26;
          v116 = v26;
          v117 = v27;
          v31 = v27;
          v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445488, &qword_1CA987590);
          v33 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x1EEE9AC00](v32 - 8);
          v35 = &v94 - v34;
          v36 = sub_1CA948E58();
          __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
          sub_1CA94C218();
          sub_1CA94D218();
          v38 = v37;
          v40 = v39;
          sub_1CA27080C(v35, &unk_1EC445488, &qword_1CA987590);

          if (v40)
          {
            sub_1CA94C218();
            v101 = v108;
            v100 = v107;
            v99 = v16;
            v112 = v23;
          }

          else
          {
            if (v96 < v38 >> 14)
            {
              goto LABEL_37;
            }

            sub_1CA94C218();
            v101 = sub_1CA94D128();
            v100 = v41;
            v99 = v42;
            v112 = v43;
          }

          v29 = v31;
          v28 = v105;
        }

        else
        {
          sub_1CA94C218();
          v101 = v12;
          v100 = v14;
          v99 = v16;
          v112 = v23;
        }

        v44 = v28;
        v118 = v28;
        v119 = v29;
        v45 = v29;
        v46 = v115[4];
        v18 = v115;
        v116 = v115[3];
        v117 = v46;
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445488, &qword_1CA987590);
        v48 = *(*(v47 - 8) + 64);
        MEMORY[0x1EEE9AC00](v47 - 8);
        v50 = &v94 - v49;
        v51 = sub_1CA948E58();
        __swift_storeEnumTagSinglePayload(v50, 1, 1, v51);
        sub_1CA94C218();
        v52 = sub_1CA94D228();
        sub_1CA27080C(v50, &unk_1EC445488, &qword_1CA987590);

        if (!v52)
        {

          v12 = v101;
          v14 = v100;
          v16 = v99;
          v104 = v112;
          v4 = v94;
          goto LABEL_5;
        }

        v54 = v45;
        v55 = v44;
        if (v111)
        {
          v56 = v115[4];
          v118 = v18[3];
          v119 = v56;
          v116 = v44;
          v117 = v54;
          MEMORY[0x1EEE9AC00](v53);
          v57 = &v94 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
          __swift_storeEnumTagSinglePayload(v57, 1, 1, v51);
          sub_1CA94C218();
          sub_1CA94D218();
          v59 = v58;
          v61 = v60;
          sub_1CA27080C(v57, &unk_1EC445488, &qword_1CA987590);
          v62 = v115;

          if ((v61 & 1) == 0)
          {
            break;
          }
        }

        v22 = v110 + 1;
        v12 = v108;
        v14 = v107;
        v16 = v106;
        v19 = v102;
        if (v109 == v98)
        {

          v18 = v95;
          goto LABEL_29;
        }
      }

      v69 = v62;
      v70 = v62[3];
      v71 = v62[4];
      sub_1CA94C218();
      v72 = sub_1CA42AAA4(v59, v70, v71);
      v73 = MEMORY[0x1CCAA1280](v72);
      v75 = v74;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445478, &qword_1CA987580);
      v76 = swift_allocObject();
      v77 = v55;
      v78 = MEMORY[0x1E69E7CC0];
      v76[2] = MEMORY[0x1E69E7CC0];
      v79 = v76 + 2;
      v76[3] = v73;
      v76[4] = v75;
      v76[5] = v78;
      v80 = v76 + 5;
      swift_beginAccess();
      v81 = v69[2];
      swift_beginAccess();
      v82 = *v79;
      *v79 = v81;
      sub_1CA94C218();

      swift_beginAccess();
      v83 = v69[5];
      swift_beginAccess();
      v84 = *v80;
      *v80 = v83;
      sub_1CA94C218();

      v85 = v69[4];
      v69[3] = v77;
      v69[4] = v54;

      v86 = v69[2];
      v69[2] = v78;

      v87 = v69[5];
      v69[5] = v78;

      swift_beginAccess();

      MEMORY[0x1CCAA1490](v88);
      sub_1CA69B4CC(*((v69[2] & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1CA94C6E8();
      swift_endAccess();
      if ((v100 ^ v101) >> 14)
      {
        v89 = MEMORY[0x1CCAA1280]();
        v91 = v90;

        v18 = swift_allocObject();
        v18[2] = v78;
        v18[3] = v89;
        v18[4] = v91;
        v18[5] = v78;
        v92 = v115;
        swift_beginAccess();

        MEMORY[0x1CCAA1490](v93);
        sub_1CA69B4CC(*((v92[2] & 0xFFFFFFFFFFFFFF8) + 0x10));
        sub_1CA94C6E8();
        swift_endAccess();
      }

      else
      {

        return v115;
      }
    }

    else
    {
LABEL_29:
      v63 = MEMORY[0x1CCAA1280](v12, v14, v16, v104);
      v65 = v64;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445478, &qword_1CA987580);
      v66 = swift_allocObject();
      v67 = MEMORY[0x1E69E7CC0];
      v66[2] = MEMORY[0x1E69E7CC0];
      v66[3] = v63;
      v66[4] = v65;
      v66[5] = v67;
      swift_beginAccess();

      MEMORY[0x1CCAA1490](v68);
      sub_1CA69B4CC(*((v18[2] & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1CA94C6E8();
      swift_endAccess();

      return v66;
    }
  }

  return v18;
}

uint64_t sub_1CA4145F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445578, &unk_1CA987618);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v46 - v8;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4440B0, &unk_1CA981B10);
  v49 = *(v55 - 8);
  v10 = *(v49 + 64);
  v11 = MEMORY[0x1EEE9AC00](v55);
  v51 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v46 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445580, &unk_1CA983450);
  v54 = *(v14 - 8);
  v15 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v46 - v16;
  v57 = a1;
  v58 = a2;
  v18 = sub_1CA948868();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948858();
  sub_1CA27BAF0();
  v23 = sub_1CA94D1A8();
  v25 = v24;
  (*(v19 + 8))(v22, v18);
  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    v52 = MEMORY[0x1E69E7CC0];
    v57 = sub_1CA94C1E8();
    v27 = sub_1CA414BBC(v23, v25);
    sub_1CA414CD8(v27);

    v28 = sub_1CA41522C(v23, v25);
    sub_1CA414CD8(v28);

    v53 = v3;
    v29 = sub_1CA4153F8(v23, v25);

    sub_1CA41617C(v29);

    v30 = v57;
    v31 = v57 + 64;
    v32 = 1 << *(v57 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(v57 + 64);
    v35 = (v32 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v36 = 0;
    while (1)
    {
      v37 = v36;
      if (!v34)
      {
        break;
      }

LABEL_11:
      sub_1CA2D9D20(*(v30 + 56) + *(v54 + 72) * (__clz(__rbit64(v34)) | (v36 << 6)), v17, &qword_1EC445580, &unk_1CA983450);
      sub_1CA416788(v17, v53, v9);
      v34 &= v34 - 1;
      sub_1CA27080C(v17, &qword_1EC445580, &unk_1CA983450);
      if (__swift_getEnumTagSinglePayload(v9, 1, v55) == 1)
      {
        sub_1CA27080C(v9, &qword_1EC445578, &unk_1CA987618);
      }

      else
      {
        sub_1CA2D9CD4(v9, v50, &unk_1EC4440B0, &unk_1CA981B10);
        sub_1CA2D9CD4(v50, v51, &unk_1EC4440B0, &unk_1CA981B10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = *(v52 + 16);
          sub_1CA2E62D0();
          v52 = v43;
        }

        v38 = *(v52 + 16);
        v39 = v38 + 1;
        if (v38 >= *(v52 + 24) >> 1)
        {
          v47 = *(v52 + 16);
          v48 = v38 + 1;
          sub_1CA2E62D0();
          v38 = v47;
          v39 = v48;
          v52 = v44;
        }

        v40 = v51;
        v41 = v52;
        *(v52 + 16) = v39;
        sub_1CA2D9CD4(v40, v41 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v38, &unk_1EC4440B0, &unk_1CA981B10);
      }
    }

    while (1)
    {
      v36 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v36 >= v35)
      {

        swift_bridgeObjectRelease_n();
        v56 = v52;
        sub_1CA94C218();
        sub_1CA425150(&v56);

        return v56;
      }

      v34 = *(v31 + 8 * v36);
      ++v37;
      if (v34)
      {
        goto LABEL_11;
      }
    }

    __break(1u);

    sub_1CA27080C(v17, &qword_1EC445580, &unk_1CA983450);

    __break(1u);

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1CA414BBC(uint64_t a1, unint64_t a2)
{
  v3 = sub_1CA417124(a1, a2, *v2, *(v2 + 8), *(v2 + 16));
  if (v4)
  {
    v6 = v3;
    v7 = v4;
    v8 = v5;
    sub_1CA94C218();
    v9 = sub_1CA94D118();
    v13 = sub_1CA4178E4(v8, v9, v10, v11, v12, 0, 1, v6, v7);

    return v13;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445580, &unk_1CA983450);

    return sub_1CA94C1E8();
  }
}

uint64_t sub_1CA414CD8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445580, &unk_1CA983450);
  v76 = *(v4 - 8);
  v5 = *(v76 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v67 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v73 = &v63 - v9;
  v68 = v10;
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v63 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445590, &qword_1CA987630);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v71 = (&v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v69 = (&v63 - v16);
  v17 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a1 + 64);
  v70 = (v18 + 63) >> 6;
  v65 = a1;
  sub_1CA94C218();
  v77 = 0;
  v21 = 0;
  v22 = 0;
  v66 = a1 + 64;
  v64 = v2;
  while (1)
  {
    v74 = v21;
    if (!v20)
    {
      break;
    }

    v23 = v77;
    v24 = v22;
LABEL_11:
    v77 = v23;
    v26 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v27 = v26 | (v24 << 6);
    v28 = (*(v65 + 48) + 16 * v27);
    v30 = *v28;
    v29 = v28[1];
    v31 = v72;
    sub_1CA2D9D20(*(v65 + 56) + *(v76 + 72) * v27, v72, &qword_1EC445580, &unk_1CA983450);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445598, &qword_1CA987638);
    v33 = *(v32 + 48);
    v34 = v71;
    *v71 = v30;
    v34[1] = v29;
    v35 = v31;
    v25 = v34;
    sub_1CA2D9CD4(v35, v34 + v33, &qword_1EC445580, &unk_1CA983450);
    __swift_storeEnumTagSinglePayload(v25, 0, 1, v32);
    sub_1CA94C218();
    v2 = v64;
LABEL_12:
    v36 = v25;
    v37 = v69;
    sub_1CA2D9CD4(v36, v69, &qword_1EC445590, &qword_1CA987630);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445598, &qword_1CA987638);
    if (__swift_getEnumTagSinglePayload(v37, 1, v38) == 1)
    {

      return sub_1CA293254(v77);
    }

    v40 = *v37;
    v39 = v37[1];
    v41 = v37 + *(v38 + 48);
    v42 = v73;
    sub_1CA2D9CD4(v41, v73, &qword_1EC445580, &unk_1CA983450);
    v43 = v42;
    v44 = v67;
    sub_1CA2D9D20(v43, v67, &qword_1EC445580, &unk_1CA983450);
    v45 = (*(v76 + 80) + 16) & ~*(v76 + 80);
    v75 = swift_allocObject();
    sub_1CA2D9CD4(v44, v75 + v45, &qword_1EC445580, &unk_1CA983450);
    sub_1CA293254(v77);
    v46 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v78 = *v2;
    v47 = v78;
    v48 = v40;
    v49 = v39;
    v50 = sub_1CA271BF8();
    if (__OFADD__(*(v47 + 16), (v51 & 1) == 0))
    {
      goto LABEL_23;
    }

    v52 = v50;
    v53 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4455A0, &unk_1CA987640);
    v54 = sub_1CA94D588();
    v55 = v78;
    if (v54)
    {
      v56 = sub_1CA271BF8();
      if ((v53 & 1) != (v57 & 1))
      {
        goto LABEL_24;
      }

      v52 = v56;
    }

    *v2 = v55;
    if ((v53 & 1) == 0)
    {
      v58 = v72;
      sub_1CA435F8C(v72);
      sub_1CA32317C(v52, v48, v49, v58, v55);
      sub_1CA94C218();
    }

    v59 = *(v55 + 56) + *(v76 + 72) * v52;
    v60 = v73;
    sub_1CA418718(v73);

    sub_1CA27080C(v60, &qword_1EC445580, &unk_1CA983450);
    v77 = sub_1CA435F8C;
    v21 = v75;
    v17 = v66;
  }

  v25 = v71;
  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v70)
    {
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445598, &qword_1CA987638);
      __swift_storeEnumTagSinglePayload(v25, 1, 1, v61);
      v20 = 0;
      goto LABEL_12;
    }

    v20 = *(v17 + 8 * v24);
    ++v22;
    if (v20)
    {
      v23 = v77;
      v22 = v24;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1CA94D878();
  __break(1u);
  return result;
}

uint64_t sub_1CA41522C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(v2 + 24);
  result = sub_1CA40FF50(a1, a2);
  v6 = 0;
  v7 = 0;
  v19 = *(result + 16);
  v20 = result;
  v8 = (result + 56);
  while (v19 != v7)
  {
    if (v7 >= *(v20 + 16))
    {
      __break(1u);
      return result;
    }

    v21 = v6;
    v9 = *(v8 - 3);
    v10 = *(v8 - 2);
    v12 = *(v8 - 1);
    v11 = *v8;
    v13 = *v3;
    v14 = *(v3 + 8);
    v15 = *(v3 + 16);
    sub_1CA94C218();
    v16 = sub_1CA416950(v9, v10, v12, v11, v13, v14, v15);
    if (!v17)
    {

      goto LABEL_11;
    }

    v6 = sub_1CA4178E4(v18, v9, v10, v12, v11, v7, 0, v16, v17);

    if (v21)
    {
      sub_1CA4181EC(v6);

      v6 = v21;
    }

    v8 += 4;
    ++v7;
  }

  if (v6)
  {
    return v6;
  }

LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445580, &unk_1CA983450);

  return sub_1CA94C1E8();
}

uint64_t sub_1CA4153F8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445580, &unk_1CA983450);
  v130 = *(v5 - 8);
  v6 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v122 = &v117 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v124 = &v117 - v10;
  v11 = sub_1CA94B1C8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v123 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v119 = &v117 - v16;
  v17 = type metadata accessor for DrawerAction(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for DrawerSearchIndexItem(0);
  v21 = *(*(v131 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v131);
  v150 = &v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v117 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445470, &qword_1CA9824D8);
  v27 = *(v26 - 8);
  v148 = v26;
  v149 = v27;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v143 = &v117 - v29;
  v145 = v5;
  v155 = sub_1CA94C1E8();
  v151 = a2;
  v30 = round(sub_1CA94C468() * 0.2);
  if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v30 > -9.22337204e18)
  {
    if (v30 >= 9.22337204e18)
    {
      goto LABEL_62;
    }

    v31 = v30;
    if (v30 > 5)
    {
      v31 = 6;
    }

    else if (v31 < 1)
    {
      return v155;
    }

    v120 = v20;
    v121 = v17;
    v138 = v11;
    v32 = sub_1CA412088(a1, v151, v31, *v2, v2[1], v2[2]);
    v33 = 0;
    v34 = v32 + 64;
    v35 = 1 << *(v32 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(v32 + 64);
    v144 = (v35 + 63) >> 6;
    v125 = (v12 + 8);
    v126 = (v12 + 32);
    v129 = (v158 + 1);
    v146 = v32;
    v147 = a1;
LABEL_11:
    if (v37)
    {
      goto LABEL_16;
    }

    while (1)
    {
      v38 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v38 >= v144)
      {

        return v155;
      }

      v37 = *(v34 + 8 * v38);
      ++v33;
      if (v37)
      {
        v33 = v38;
LABEL_16:
        v39 = __clz(__rbit64(v37));
        v37 &= v37 - 1;
        v40 = v39 | (v33 << 6);
        v41 = (*(v32 + 56) + 16 * v40);
        v42 = v41[1];
        if (v42)
        {
          v43 = (*(v32 + 48) + 16 * v40);
          v44 = v43[1];
          v153 = *v43;
          v45 = *v41;
          v156 = v44;
          sub_1CA94C218();

          v46 = sub_1CA94C468();
          v47 = sub_1CA94C468();
          v154 = v42;
          v48 = __OFADD__(v47, v42);
          v49 = v47 + v42;
          if (v48)
          {
            goto LABEL_57;
          }

          swift_beginAccess();
          v50 = *(v45 + 40);
          if (!*(v50 + 16))
          {

            v32 = v146;
            goto LABEL_11;
          }

          v139 = *(v50 + 16);
          v51 = v46 * 0.4 / v49;
          v141 = v50 + ((*(v149 + 80) + 32) & ~*(v149 + 80));
          v142 = v50;
          sub_1CA94C218();
          v52 = 0;
          v53 = v143;
          v117 = v25;
          v118 = v34;
          v140 = v45;
          while (2)
          {
            if (v52 >= *(v142 + 16))
            {
              goto LABEL_58;
            }

            v54 = *(v149 + 72);
            v152 = v52;
            sub_1CA2D9D20(v141 + v54 * v52, v53, &qword_1EC445470, &qword_1CA9824D8);
            if (*(v53 + v148[11]) == 1)
            {
              v55 = (v53 + v148[13]);
              v56 = *v55;
              v57 = v55[1];
              v58 = v55[2];
              v59 = v55[3];
              v60 = *(v53 + v148[10]);
              v132 = *(v53 + v148[9]);
              LOBYTE(v159[0]) = v132;
              v159[1] = v56;
              v159[2] = v57;
              v159[3] = v58;
              v159[4] = v59;
              v134 = v57;
              v135 = v56;
              v159[5] = v56;
              v159[6] = v57;
              v133 = v58;
              v159[7] = v58;
              v159[8] = v59;
              *&v159[9] = v51;
              v159[10] = v60;
              v159[11] = v153;
              v159[12] = v156;
              v159[13] = v154;
              sub_1CA42B9A4(v53, v25);
              EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
              v136 = v59;
              if (EnumCaseMultiPayload == 1)
              {
                v62 = v123;
                v63 = v138;
                (*v126)(v123, v25, v138);
                swift_bridgeObjectRetain_n();
                sub_1CA94C218();
                v64 = sub_1CA94B0F8();
                v66 = v65;
                (*v125)(v62, v63);
              }

              else
              {
                v70 = *&v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445408, &unk_1CA986FF0) + 48)];
                swift_bridgeObjectRetain_n();
                sub_1CA94C218();

                v71 = v120;
                sub_1CA42BA50(v25, v120);
                v72 = v121;
                v73 = v124;
                sub_1CA2D9D20(v71 + *(v121 + 24), v124, &qword_1EC4445D0, &qword_1CA983080);
                if (__swift_getEnumTagSinglePayload(v73, 1, v138) == 1)
                {
                  sub_1CA27080C(v73, &qword_1EC4445D0, &qword_1CA983080);
                  v74 = (v71 + *(v72 + 28));
                  v64 = *v74;
                  v66 = v74[1];
                  sub_1CA94C218();
                }

                else
                {
                  v75 = v119;
                  v76 = v138;
                  (*v126)(v119, v73, v138);
                  v158[0] = sub_1CA94B0F8();
                  v158[1] = v77;
                  MEMORY[0x1CCAA1300](45, 0xE100000000000000);
                  MEMORY[0x1CCAA1300](*(v71 + *(v72 + 28)), *(v71 + *(v72 + 28) + 8));
                  v64 = v158[0];
                  v66 = v158[1];
                  v78 = v75;
                  v53 = v143;
                  (*v125)(v78, v76);
                }

                sub_1CA42B9FC();
              }

              sub_1CA42B9A4(v53, v150);
              v79 = v155;
              swift_isUniquelyReferenced_nonNull_native();
              v158[0] = v79;
              v137 = v64;
              v80 = v66;
              v81 = sub_1CA271BF8();
              if (__OFADD__(*(v79 + 16), (v82 & 1) == 0))
              {
                goto LABEL_59;
              }

              v83 = v81;
              v84 = v82;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4455A0, &unk_1CA987640);
              if (sub_1CA94D588())
              {
                v85 = sub_1CA271BF8();
                if ((v84 & 1) != (v86 & 1))
                {
                  goto LABEL_66;
                }

                v83 = v85;
              }

              v87 = v158[0];
              v155 = v158[0];
              if (v84)
              {
                v88 = *(v130 + 72) * v83;
              }

              else
              {
                v89 = v122;
                sub_1CA42B9A4(v150, v122);
                v90 = *(v145 + 36);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443D0, &qword_1CA983478);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4440C0, &qword_1CA983470);
                sub_1CA276B98(&unk_1EC4455B0, &qword_1EC4443D0, &qword_1CA983478);
                *(v89 + v90) = sub_1CA94C1E8();
                v87 = v155;
                *(v155 + 8 * (v83 >> 6) + 64) |= 1 << v83;
                v91 = (v87[6] + 16 * v83);
                *v91 = v137;
                v91[1] = v80;
                v66 = v80;
                v88 = *(v130 + 72) * v83;
                sub_1CA2D9CD4(v89, v87[7] + v88, &qword_1EC445580, &unk_1CA983450);
                v92 = v87[2];
                v48 = __OFADD__(v92, 1);
                v93 = v92 + 1;
                if (v48)
                {
                  goto LABEL_64;
                }

                v87[2] = v93;
                sub_1CA94C218();
              }

              v94 = v87[7] + v88;
              v160[0] = v159[0];
              *&v160[8] = *&v159[1];
              *&v160[24] = v159[3];
              v161 = v159[4];
              v95 = *(v145 + 36);
              v96 = *(v94 + v95);
              v97 = *(v96 + 16);
              v137 = v159[4];
              sub_1CA94C218();
              v34 = v118;
              if (v97)
              {
                v98 = sub_1CA321028(v160);
                if ((v99 & 1) != 0 && *&v159[9] < *(*(v96 + 56) + 112 * v98 + 72))
                {

                  v25 = v117;
                  goto LABEL_51;
                }
              }

              v128 = v66;
              sub_1CA2D9D20(v159, v158, &qword_1EC4440C0, &qword_1CA983470);
              v100 = *(v94 + v95);
              swift_isUniquelyReferenced_nonNull_native();
              v157 = *(v94 + v95);
              v101 = v157;
              v127 = v94;
              v102 = v95;
              *(v94 + v95) = 0x8000000000000000;
              v103 = sub_1CA321028(v160);
              if (__OFADD__(v101[2], (v104 & 1) == 0))
              {
                goto LABEL_63;
              }

              v105 = v103;
              v106 = v104;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443C8, &qword_1CA987650);
              if (sub_1CA94D588())
              {
                v107 = sub_1CA321028(v160);
                v25 = v117;
                if ((v106 & 1) != (v108 & 1))
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443D0, &qword_1CA983478);
                  goto LABEL_68;
                }

                v105 = v107;
                if ((v106 & 1) == 0)
                {
LABEL_46:
                  v109 = v157;
                  v157[(v105 >> 6) + 8] |= 1 << v105;
                  v110 = v109[6] + 40 * v105;
                  v111 = *&v160[16];
                  *v110 = *v160;
                  *(v110 + 16) = v111;
                  *(v110 + 32) = v161;
                  memcpy((v109[7] + 112 * v105), v159, 0x70uLL);
                  v112 = v109[2];
                  v48 = __OFADD__(v112, 1);
                  v113 = v112 + 1;
                  if (v48)
                  {
                    goto LABEL_65;
                  }

                  v109[2] = v113;
                  sub_1CA94C218();
                  goto LABEL_50;
                }
              }

              else
              {
                v25 = v117;
                if ((v106 & 1) == 0)
                {
                  goto LABEL_46;
                }
              }

              v109 = v157;
              v114 = (v157[7] + 112 * v105);
              memcpy(v158, v114, sizeof(v158));
              memcpy(v114, v159, 0x70uLL);
              sub_1CA27080C(v158, &qword_1EC4440C0, &qword_1CA983470);
LABEL_50:
              *(v127 + v102) = v109;

LABEL_51:
              v53 = v143;
              sub_1CA27080C(v143, &qword_1EC445470, &qword_1CA9824D8);
              sub_1CA42B9FC();
              LOBYTE(v158[0]) = v132;
              v115 = v129;
              *v129 = v157;
              *(v115 + 3) = *(&v157 + 3);
              v158[1] = v135;
              v158[2] = v134;
              v158[3] = v133;
              v158[4] = v136;
              v158[5] = v135;
              v158[6] = v134;
              v158[7] = v133;
              v158[8] = v136;
              *&v158[9] = v51;
              v158[10] = v60;
              v158[11] = v153;
              v158[12] = v156;
              v158[13] = v154;
              v67 = v158;
              v68 = &qword_1EC4440C0;
              v69 = &qword_1CA983470;
            }

            else
            {
              v67 = v53;
              v68 = &qword_1EC445470;
              v69 = &qword_1CA9824D8;
            }

            sub_1CA27080C(v67, v68, v69);
            v52 = v152 + 1;
            if (v139 == v152 + 1)
            {

              v32 = v146;
              goto LABEL_11;
            }

            continue;
          }
        }

        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  sub_1CA42B9FC();
LABEL_68:
  result = sub_1CA94D878();
  __break(1u);
  return result;
}

uint64_t sub_1CA41617C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445588, &qword_1CA987628);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v68 = &v62 - v4;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445580, &unk_1CA983450);
  v5 = *(v67 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v67);
  v70 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v74 = &v62 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v62 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445590, &qword_1CA987630);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v62 - v17);
  v19 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a1 + 64);
  v23 = (v20 + 63) >> 6;
  v63 = a1;
  sub_1CA94C218();
  v24 = v23;
  v25 = 0;
  v71 = v16;
  v72 = v18;
  v64 = v23;
  v65 = v19;
  v66 = v5;
  if (v22)
  {
    while (1)
    {
      v26 = v25;
LABEL_9:
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v28 = v27 | (v26 << 6);
      v29 = v62;
      v30 = (*(v63 + 48) + 16 * v28);
      v32 = *v30;
      v31 = v30[1];
      sub_1CA2D9D20(*(v63 + 56) + *(v5 + 72) * v28, v62, &qword_1EC445580, &unk_1CA983450);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445598, &qword_1CA987638);
      v34 = *(v33 + 48);
      v35 = v71;
      *v71 = v32;
      *(v35 + 1) = v31;
      v16 = v35;
      sub_1CA2D9CD4(v29, &v35[v34], &qword_1EC445580, &unk_1CA983450);
      __swift_storeEnumTagSinglePayload(v16, 0, 1, v33);
      sub_1CA94C218();
      v18 = v72;
LABEL_10:
      sub_1CA2D9CD4(v16, v18, &qword_1EC445590, &qword_1CA987630);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445598, &qword_1CA987638);
      if (__swift_getEnumTagSinglePayload(v18, 1, v36) == 1)
      {
      }

      v38 = *v18;
      v37 = v18[1];
      sub_1CA2D9CD4(v18 + *(v36 + 48), v74, &qword_1EC445580, &unk_1CA983450);
      v39 = *v73;
      if (*(*v73 + 16) && (v40 = sub_1CA271BF8(), (v41 & 1) != 0))
      {
        v5 = v66;
        v42 = *(v39 + 56) + *(v66 + 72) * v40;
        v43 = v68;
        sub_1CA2D9D20(v42, v68, &qword_1EC445580, &unk_1CA983450);
        __swift_storeEnumTagSinglePayload(v43, 0, 1, v67);
        sub_1CA27080C(v74, &qword_1EC445580, &unk_1CA983450);

        sub_1CA27080C(v43, &qword_1EC445588, &qword_1CA987628);
      }

      else
      {
        v44 = v68;
        __swift_storeEnumTagSinglePayload(v68, 1, 1, v67);
        sub_1CA27080C(v44, &qword_1EC445588, &qword_1CA987628);
        sub_1CA2D9D20(v74, v70, &qword_1EC445580, &unk_1CA983450);
        v45 = v73;
        v46 = *v73;
        swift_isUniquelyReferenced_nonNull_native();
        v47 = *v45;
        v75 = v47;
        v69 = v38;
        v48 = sub_1CA271BF8();
        if (__OFADD__(v47[2], (v49 & 1) == 0))
        {
          goto LABEL_28;
        }

        v50 = v48;
        v51 = v49;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4455A0, &unk_1CA987640);
        if (sub_1CA94D588())
        {
          v52 = sub_1CA271BF8();
          if ((v51 & 1) != (v53 & 1))
          {
            goto LABEL_30;
          }

          v50 = v52;
        }

        v5 = v66;
        if (v51)
        {

          v54 = v75;
          sub_1CA435F40(v70, v75[7] + *(v5 + 72) * v50, &qword_1EC445580, &unk_1CA983450);
          sub_1CA27080C(v74, &qword_1EC445580, &unk_1CA983450);
          v18 = v72;
        }

        else
        {
          v54 = v75;
          v75[(v50 >> 6) + 8] |= 1 << v50;
          v55 = (v54[6] + 16 * v50);
          v56 = v70;
          *v55 = v69;
          v55[1] = v37;
          sub_1CA2D9CD4(v56, v54[7] + *(v5 + 72) * v50, &qword_1EC445580, &unk_1CA983450);
          sub_1CA27080C(v74, &qword_1EC445580, &unk_1CA983450);
          v57 = v54[2];
          v58 = __OFADD__(v57, 1);
          v59 = v57 + 1;
          v18 = v72;
          if (v58)
          {
            goto LABEL_29;
          }

          v54[2] = v59;
        }

        *v73 = v54;
        v16 = v71;
      }

      v24 = v64;
      v19 = v65;
      if (!v22)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v24)
      {
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445598, &qword_1CA987638);
        __swift_storeEnumTagSinglePayload(v16, 1, 1, v60);
        v22 = 0;
        goto LABEL_10;
      }

      v22 = *(v19 + 8 * v26);
      ++v25;
      if (v22)
      {
        v25 = v26;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    result = sub_1CA94D878();
    __break(1u);
  }

  return result;
}

void sub_1CA416788(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 32);
  v6 = sub_1CA42928C();
  v8 = sub_1CA311A0C(v6, v7, v5);
  v10 = v9;

  if (v10)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4440B0, &unk_1CA981B10);
    v12 = a3;
    v13 = 1;
LABEL_14:
    __swift_storeEnumTagSinglePayload(v12, v13, 1, v11);
  }

  else
  {
    v14 = *&v8;
    v15 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445580, &unk_1CA983450) + 36));
    v16 = sub_1CA94C218();
    sub_1CA2E3190(v16);
    v18 = 0;
    v19 = 1 << *(v17 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v17 + 56);
    for (i = 0.0; v21; i = i + *(v25 + 72) * *(v25 + 80) / v14)
    {
      v23 = v18;
LABEL_11:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v25 = *(v17 + 48) + 112 * (v24 | (v23 << 6));
    }

    while (1)
    {
      v23 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v23 >= ((v19 + 63) >> 6))
      {

        sub_1CA42B9A4(a1, a3);
        v26 = sub_1CA94C218();
        sub_1CA2E3190(v26);
        v28 = v27;
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4440B0, &unk_1CA981B10);
        *(a3 + *(v11 + 36)) = i;
        *(a3 + *(v11 + 40)) = v28;
        v12 = a3;
        v13 = 0;
        goto LABEL_14;
      }

      v21 = *(v17 + 56 + 8 * v23);
      ++v18;
      if (v21)
      {
        v18 = v23;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

unint64_t sub_1CA416950(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (!((a2 ^ a1) >> 14))
  {

    return 0;
  }

  v78 = a7;
  v92 = 0;
  v93 = 0xE000000000000000;
  v88 = a1;
  v89 = a2;
  v90 = a3;
  v91 = a4;
  v9 = sub_1CA435C28();
  sub_1CA94C218();
  v69[0] = v9;
  v10 = sub_1CA94D138();
  v12 = v11;
  v14 = v13;
  v16 = v15;

LABEL_4:
  swift_beginAccess();
  v69[1] = a5;
  v17 = a5[2];
  v72 = sub_1CA25B410(v17);
  v71 = v17 & 0xC000000000000001;
  v70 = v17 & 0xFFFFFFFFFFFFFF8;
  v73 = v17;
  result = sub_1CA94C218();
  v18 = 0;
  v85 = v16;
  v76 = v12;
  v77 = v10;
  for (i = v14; ; v14 = i)
  {
    if (v72 == v18)
    {

LABEL_33:

      return 0;
    }

    if (v71)
    {
      result = MEMORY[0x1CCAA22D0](v18, v73);
      v19 = result;
    }

    else
    {
      if (v18 >= *(v70 + 16))
      {
        goto LABEL_36;
      }

      v19 = *(v73 + 8 * v18 + 32);
    }

    if (__OFADD__(v18, 1))
    {
      break;
    }

    v79 = v18;
    v88 = v10;
    v89 = v12;
    v90 = v14;
    v91 = v16;
    v20 = v19[4];
    v86 = v19[3];
    v87 = v20;
    v83 = v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445488, &qword_1CA987590);
    v84 = v69;
    v82 = *(*(v21 - 8) + 64);
    MEMORY[0x1EEE9AC00](v21 - 8);
    v22 = v14;
    v80 = v23;
    v24 = v69 - v23;
    v81 = sub_1CA948E58();
    __swift_storeEnumTagSinglePayload(v24, 1, 1, v81);
    v25 = sub_1CA435BD4();
    sub_1CA27BAF0();
    sub_1CA94C218();
    sub_1CA94C218();
    v26 = sub_1CA94D228();
    v27 = v24;
    v28 = v85;
    sub_1CA27080C(v27, &unk_1EC445488, &qword_1CA987590);

    if (!v26)
    {

      return v92;
    }

    v88 = v10;
    v89 = v12;
    v90 = v22;
    v91 = v28;
    v29 = v19[4];
    v86 = v19[3];
    v87 = v29;
    v74 = v25;
    v30 = sub_1CA94D188();
    v32 = v31;
    v83 = v69;
    v84 = v19;
    v88 = v30;
    v89 = v31;
    v33 = v19[4];
    v86 = v19[3];
    v87 = v33;
    v34 = v82;
    MEMORY[0x1EEE9AC00](v30);
    v35 = v69 - v80;
    __swift_storeEnumTagSinglePayload(v69 - v80, 1, 1, v81);
    sub_1CA94C218();
    v36 = sub_1CA94D228();
    sub_1CA27080C(v35, &unk_1EC445488, &qword_1CA987590);

    if (!v36)
    {

      sub_1CA94C218();
      sub_1CA94C468();

      v57 = v76;
      v56 = v77;
      result = sub_1CA94D0D8();
      v58 = result >> 14;
      if (result >> 14 < v56 >> 14)
      {
        goto LABEL_37;
      }

      v59 = sub_1CA94D128();
      v61 = v60;
      v63 = v62;
      v65 = v64;

      v88 = v59;
      v89 = v61;
      v90 = v63;
      v91 = v65;
      sub_1CA94C498();

      if (v58 <= v57 >> 14)
      {
        v10 = sub_1CA94D128();
        v12 = v66;
        v14 = v67;
        v16 = v68;

        a5 = v84;
        goto LABEL_4;
      }

      goto LABEL_38;
    }

    v38 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v38 = v30 & 0xFFFFFFFFFFFFLL;
    }

    if (!v38)
    {
LABEL_21:

      goto LABEL_24;
    }

    v86 = v30;
    v87 = v32;
    v88 = v77;
    v89 = v76;
    v90 = i;
    v91 = v85;
    MEMORY[0x1EEE9AC00](v37);
    v39 = v69 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    __swift_storeEnumTagSinglePayload(v39, 1, 1, v40);
    sub_1CA94C218();
    v41 = sub_1CA94D228();
    sub_1CA27080C(v39, &unk_1EC445488, &qword_1CA987590);

    if (!v41)
    {

      return v92;
    }

    v42 = sub_1CA94C568();
    v44 = v43;
    v45 = v84[3];
    v46 = v84[4];
    sub_1CA94C218();
    v47 = sub_1CA94C568();
    v49 = v48;

    if (v42 == v47 && v44 == v49)
    {
    }

    else
    {
      v51 = sub_1CA94D7F8();

      if ((v51 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v52 = sub_1CA94C468();

    v53 = v84[3];
    v54 = v84[4];
    sub_1CA94C218();
    v55 = sub_1CA94C468();

    if (v52 < v55)
    {

      goto LABEL_33;
    }

LABEL_24:
    v18 = v79 + 1;
    v16 = v85;
    v12 = v76;
    v10 = v77;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1CA417124(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    return 0;
  }

  v73 = a5;
  v88 = 0;
  v89 = 0xE000000000000000;
  v84 = a1;
  v85 = a2;
  sub_1CA94C218();
  v7 = sub_1CA94D138();
  v9 = v8;
  v11 = v10;
  v13 = v12;

LABEL_5:
  swift_beginAccess();
  v65[1] = a3;
  v14 = a3[2];
  v69 = sub_1CA25B410(v14);
  v68 = v14 & 0xC000000000000001;
  v67 = v14 & 0xFFFFFFFFFFFFFF8;
  v70 = v14;
  result = sub_1CA94C218();
  v16 = 0;
  v72 = v7;
  v79 = v11;
  v80 = v9;
  v66 = v13;
  while (1)
  {
    if (v69 == v16)
    {

LABEL_35:

      return 0;
    }

    if (v68)
    {
      result = MEMORY[0x1CCAA22D0](v16, v70);
      v17 = result;
    }

    else
    {
      if (v16 >= *(v67 + 16))
      {
        goto LABEL_38;
      }

      v17 = *(v70 + 8 * v16 + 32);
    }

    if (__OFADD__(v16, 1))
    {
      break;
    }

    v74 = v16;
    v84 = v7;
    v85 = v9;
    v86 = v11;
    v87 = v13;
    v18 = v17[4];
    v19 = v13;
    v82 = v17[3];
    v83 = v18;
    v77 = v18;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445488, &qword_1CA987590);
    v78 = v65;
    v81 = *(*(v20 - 8) + 64);
    MEMORY[0x1EEE9AC00](v20 - 8);
    v75 = v21;
    v22 = v65 - v21;
    v76 = sub_1CA948E58();
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v76);
    v23 = sub_1CA435BD4();
    sub_1CA27BAF0();
    sub_1CA94C218();
    sub_1CA94C218();
    v24 = sub_1CA94D228();
    sub_1CA27080C(v22, &unk_1EC445488, &qword_1CA987590);

    if (!v24)
    {

      return v88;
    }

    v84 = v7;
    v85 = v80;
    v86 = v79;
    v87 = v19;
    v25 = v17[4];
    v82 = v17[3];
    v83 = v25;
    v71 = v23;
    v26 = sub_1CA94D188();
    v28 = v27;
    v77 = v65;
    v78 = v17;
    v84 = v26;
    v85 = v27;
    v29 = v17[4];
    v82 = v17[3];
    v83 = v29;
    MEMORY[0x1EEE9AC00](v26);
    v30 = v65 - v75;
    __swift_storeEnumTagSinglePayload(v65 - v75, 1, 1, v76);
    sub_1CA94C218();
    v31 = sub_1CA94D228();
    sub_1CA27080C(v30, &unk_1EC445488, &qword_1CA987590);

    if (!v31)
    {

      sub_1CA94C218();
      sub_1CA94C468();

      v52 = v72;
      result = sub_1CA94D0D8();
      v53 = result >> 14;
      if (result >> 14 < v52 >> 14)
      {
        goto LABEL_39;
      }

      v54 = sub_1CA94D128();
      v56 = v55;
      v58 = v57;
      v60 = v59;

      v84 = v54;
      v85 = v56;
      v61 = v80;
      v86 = v58;
      v87 = v60;
      sub_1CA435C28();
      sub_1CA94C498();

      if (v53 <= v61 >> 14)
      {
        v7 = sub_1CA94D128();
        v9 = v62;
        v11 = v63;
        v13 = v64;

        a3 = v78;
        goto LABEL_5;
      }

      goto LABEL_40;
    }

    v33 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v33 = v26 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v66;
    if (!v33)
    {
LABEL_22:

      v7 = v72;
      v11 = v79;
      goto LABEL_25;
    }

    v82 = v26;
    v83 = v28;
    v84 = v72;
    v85 = v80;
    v86 = v79;
    v87 = v66;
    MEMORY[0x1EEE9AC00](v32);
    v35 = v65 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
    sub_1CA94C218();
    v37 = sub_1CA94D228();
    sub_1CA27080C(v35, &unk_1EC445488, &qword_1CA987590);

    if (!v37)
    {

      return v88;
    }

    v38 = sub_1CA94C568();
    v40 = v39;
    v41 = v78[3];
    v42 = v78[4];
    sub_1CA94C218();
    v43 = sub_1CA94C568();
    v45 = v44;

    if (v38 == v43 && v40 == v45)
    {
    }

    else
    {
      v47 = sub_1CA94D7F8();

      if ((v47 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v48 = sub_1CA94C468();

    v49 = v78[3];
    v50 = v78[4];
    sub_1CA94C218();
    v51 = sub_1CA94C468();

    v7 = v72;
    v11 = v79;
    if (v48 < v51)
    {

      goto LABEL_35;
    }

LABEL_25:
    v16 = v74 + 1;
    v9 = v80;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1CA4178E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, unint64_t a9)
{
  v118 = a7;
  v117 = a6;
  v106 = a5;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445580, &unk_1CA983450);
  v95 = *(v14 - 8);
  v15 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v92 = v90 - v16;
  v17 = type metadata accessor for DrawerSearchIndexItem(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v107 = v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445470, &qword_1CA9824D8);
  v111 = *(v97 - 8);
  v20 = v111[8];
  MEMORY[0x1EEE9AC00](v97);
  v96 = v90 - v21;
  v22 = a1[3];
  v23 = a1[4];
  v138 = a8;
  v139 = a9;
  sub_1CA94C218();
  MEMORY[0x1CCAA1300](v22, v23);
  v112 = v138;
  v113 = v139;
  v24 = sub_1CA94C468();
  v114 = a2;
  v115 = a3;
  v116 = a4;
  v25 = sub_1CA94D0F8();
  v93 = v14;
  v137 = sub_1CA94C1E8();
  swift_beginAccess();
  v91 = a1;
  v26 = a1[5];
  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = v25 / v24;
    v29 = v26 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
    v30 = v111[9];
    v94 = (&v119 + 1);
    v90[1] = v26;
    sub_1CA94C218();
    v31 = v96;
    v32 = v97;
    v105 = v30;
    while (1)
    {
      sub_1CA2D9D20(v29, v31, &qword_1EC445470, &qword_1CA9824D8);
      v33 = v31 + v32[12];
      v34 = *(v33 + 8);
      if ((*v33)(v117, v118 & 1, v28))
      {
        v35 = (v31 + v32[13]);
        v37 = *v35;
        v36 = v35[1];
        v38 = v35[2];
        v39 = v35[3];
        v119 = *v35;
        v120 = v36;
        v109 = v38;
        v110 = v36;
        v121 = v38;
        v122 = v39;
        v133 = v114;
        v134 = v115;
        v135 = v116;
        v136 = v106;
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445488, &qword_1CA987590);
        v111 = v90;
        v41 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x1EEE9AC00](v40 - 8);
        v43 = v90 - v42;
        v44 = sub_1CA948E58();
        __swift_storeEnumTagSinglePayload(v43, 1, 1, v44);
        sub_1CA435BD4();
        sub_1CA94C218();
        sub_1CA94D218();
        v46 = v45;
        v48 = v47;
        sub_1CA27080C(v43, &unk_1EC445488, &qword_1CA987590);
        v108 = v39;

        if (v48)
        {
          sub_1CA27080C(v31, &qword_1EC445470, &qword_1CA9824D8);
          v30 = v105;
        }

        else
        {
          if (v46 >> 14 < v37 >> 14)
          {
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            sub_1CA42B9FC();
            result = sub_1CA94D878();
            __break(1u);
            return result;
          }

          v49 = v37;
          v103 = v29;
          v99 = v27;
          v50 = *(v31 + v32[9]);
          v51 = v108;
          swift_bridgeObjectRetain_n();
          v52 = v109;
          v53 = v110;
          v54 = sub_1CA94D128();
          v104 = v55;
          v111 = v56;
          v57 = v32;
          v59 = v58;

          v60 = *(v31 + v57[10]);
          v101 = v50;
          LOBYTE(v138) = v50;
          v102 = v49;
          v139 = v49;
          v140 = v53;
          v141 = v52;
          v142 = v51;
          v100 = v54;
          v143 = v54;
          v61 = v104;
          v144 = v104;
          v145 = v111;
          v98 = v59;
          v146 = v59;
          v147 = v28;
          v148 = v60;
          v150 = 0;
          v151 = 0;
          v149 = 0;
          v62 = sub_1CA42928C();
          v64 = v63;
          sub_1CA42B9A4(v31, v107);
          v65 = v137;
          swift_isUniquelyReferenced_nonNull_native();
          v119 = v65;
          v66 = sub_1CA271BF8();
          if (__OFADD__(*(v65 + 16), (v67 & 1) == 0))
          {
            goto LABEL_30;
          }

          v68 = v66;
          v69 = v67;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4455A0, &unk_1CA987640);
          if (sub_1CA94D588())
          {
            v70 = sub_1CA271BF8();
            v29 = v103;
            if ((v69 & 1) != (v71 & 1))
            {
              goto LABEL_33;
            }

            v68 = v70;
          }

          else
          {
            v29 = v103;
          }

          v72 = v119;
          v137 = v119;
          if (v69)
          {
            v73 = *(v95 + 72) * v68;
          }

          else
          {
            v74 = v92;
            sub_1CA42B9A4(v107, v92);
            v103 = *(v93 + 36);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443D0, &qword_1CA983478);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4440C0, &qword_1CA983470);
            sub_1CA276B98(&unk_1EC4455B0, &qword_1EC4443D0, &qword_1CA983478);
            *(v74 + v103) = sub_1CA94C1E8();
            v72[(v68 >> 6) + 8] |= 1 << v68;
            v75 = (v72[6] + 16 * v68);
            *v75 = v62;
            v75[1] = v64;
            v73 = *(v95 + 72) * v68;
            sub_1CA2D9CD4(v74, v72[7] + v73, &qword_1EC445580, &unk_1CA983450);
            v76 = v72[2];
            v77 = __OFADD__(v76, 1);
            v78 = v76 + 1;
            if (v77)
            {
              goto LABEL_31;
            }

            v72[2] = v78;
            sub_1CA94C218();
          }

          v79 = v72[7] + v73;
          sub_1CA4185F4(&v138);

          sub_1CA42B9FC();
          LOBYTE(v119) = v101;
          v80 = v94;
          *v94 = v133;
          *(v80 + 3) = *(&v133 + 3);
          v120 = v102;
          v121 = v110;
          v122 = v109;
          v123 = v108;
          v124 = v100;
          v125 = v61;
          v126 = v111;
          v127 = v98;
          v128 = v28;
          v129 = v60;
          v131 = 0;
          v132 = 0;
          v130 = 0;
          sub_1CA27080C(&v119, &qword_1EC4440C0, &qword_1CA983470);
          v31 = v96;
          sub_1CA27080C(v96, &qword_1EC445470, &qword_1CA9824D8);
          v32 = v97;
          v30 = v105;
          v27 = v99;
        }
      }

      else
      {
        sub_1CA27080C(v31, &qword_1EC445470, &qword_1CA9824D8);
      }

      v29 += v30;
      if (!--v27)
      {

        break;
      }
    }
  }

  v81 = v91;
  swift_beginAccess();
  v82 = v81[2];
  v83 = sub_1CA25B410(v82);
  if (v83)
  {
    v84 = v83;
    if (v83 < 1)
    {
      goto LABEL_32;
    }

    sub_1CA94C218();
    v85 = 0;
    v86 = v106;
    do
    {
      if ((v82 & 0xC000000000000001) != 0)
      {
        v87 = MEMORY[0x1CCAA22D0](v85, v82);
      }

      else
      {
        v87 = *(v82 + 8 * v85 + 32);
      }

      ++v85;
      v88 = sub_1CA4178E4(v87, v114, v115, v116, v86, v117, v118 & 1, v112, v113);
      sub_1CA414CD8(v88);
    }

    while (v84 != v85);
  }

  return v137;
}

uint64_t sub_1CA4181EC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445580, &unk_1CA983450);
  v52 = *(v3 - 8);
  v4 = *(v52 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v45 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v44 = &v43 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v43 = &v43 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v51 = &v43 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - v13;
  v47 = v1;
  v15 = *v1;
  v16 = sub_1CA94C218();
  sub_1CA2E3304(v16);
  v17 = sub_1CA94C218();
  v53 = a1;
  sub_1CA2E3304(v17);
  v18 = sub_1CA6151F8();

  result = sub_1CA94C1E8();
  v48 = result;
  v49 = v18;
  v20 = 0;
  v21 = v18 + 56;
  v22 = 1 << *(v18 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v18 + 56);
  v25 = (v22 + 63) >> 6;
  v50 = v15;
  while (v24)
  {
    v26 = v24;
LABEL_10:
    v24 = (v26 - 1) & v26;
    if (*(v15 + 16))
    {
      v28 = (*(v18 + 48) + ((v20 << 10) | (16 * __clz(__rbit64(v26)))));
      v30 = *v28;
      v29 = v28[1];
      sub_1CA94C218();
      v31 = sub_1CA271BF8();
      if (v32)
      {
        v33 = *(v15 + 56);
        v46 = *(v52 + 72);
        v34 = v14;
        v35 = v51;
        sub_1CA2D9D20(v33 + v46 * v31, v51, &qword_1EC445580, &unk_1CA983450);
        v36 = v35;
        v14 = v34;
        sub_1CA2D9CD4(v36, v34, &qword_1EC445580, &unk_1CA983450);
        if (*(v53 + 16) && (v37 = sub_1CA271BF8(), (v38 & 1) != 0))
        {
          v40 = v44;
          sub_1CA2D9D20(*(v53 + 56) + v37 * v46, v44, &qword_1EC445580, &unk_1CA983450);
          v41 = v43;
          sub_1CA2D9CD4(v40, v43, &qword_1EC445580, &unk_1CA983450);
          sub_1CA418718(v41);
          sub_1CA2D9D20(v14, v45, &qword_1EC445580, &unk_1CA983450);
          v42 = v48;
          swift_isUniquelyReferenced_nonNull_native();
          v54 = v42;
          sub_1CA3227D4();

          v48 = v54;
          sub_1CA27080C(v41, &qword_1EC445580, &unk_1CA983450);
          v39 = v14;
        }

        else
        {

          v39 = v34;
        }

        result = sub_1CA27080C(v39, &qword_1EC445580, &unk_1CA983450);
        v18 = v49;
        v15 = v50;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v27 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v27 >= v25)
    {

      *v47 = v48;
      return result;
    }

    v26 = *(v21 + 8 * v27);
    ++v20;
    if (v26)
    {
      v20 = v27;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA4185F4(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v14[0] = *a1;
  v15 = *(a1 + 8);
  v16 = v4;
  v17 = v5;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445580, &unk_1CA983450) + 36);
  v7 = *(v1 + v6);
  v8 = *(v7 + 16);
  sub_1CA94C218();
  if (v8 && (v9 = sub_1CA321028(v14), (v10 & 1) != 0) && *(a1 + 72) < *(*(v7 + 56) + 112 * v9 + 72))
  {
  }

  else
  {
    sub_1CA2D9D20(a1, v13, &qword_1EC4440C0, &qword_1CA983470);
    v12 = *(v2 + v6);
    swift_isUniquelyReferenced_nonNull_native();
    v13[0] = *(v2 + v6);
    sub_1CA3228F4();

    *(v2 + v6) = v13[0];
  }

  return result;
}

uint64_t sub_1CA418718(uint64_t a1)
{
  v2 = v1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445580, &unk_1CA983450);
  v4 = *(a1 + *(v36 + 36));
  v5 = sub_1CA94C218();
  sub_1CA2E3190(v5);
  v7 = 0;
  v8 = v6 + 56;
  v37 = v6;
  v9 = 1 << *(v6 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v6 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = &qword_1EC4440C0;
  v35 = v2;
  while (v11)
  {
LABEL_9:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    memcpy(__dst, (*(v37 + 48) + 112 * (v15 | (v7 << 6))), sizeof(__dst));
    v42[0] = __dst[0];
    *&v42[8] = *&__dst[1];
    *&v42[24] = __dst[3];
    v43 = __dst[4];
    v38 = *(v36 + 36);
    v16 = *(v2 + v38);
    if (!*(v16 + 16))
    {
      sub_1CA2D9D20(__dst, v40, v13, &qword_1CA983470);
      sub_1CA94C218();
      goto LABEL_14;
    }

    sub_1CA2D9D20(__dst, v40, v13, &qword_1CA983470);
    sub_1CA94C218();
    v17 = sub_1CA321028(v42);
    if ((v18 & 1) != 0 && *&__dst[9] < *(*(v16 + 56) + 112 * v17 + 72))
    {
      sub_1CA27080C(__dst, v13, &qword_1CA983470);
    }

    else
    {
LABEL_14:
      v19 = v13;
      sub_1CA2D9D20(__dst, v40, v13, &qword_1CA983470);
      v20 = *(v2 + v38);
      swift_isUniquelyReferenced_nonNull_native();
      v39 = *(v2 + v38);
      v21 = sub_1CA321028(v42);
      if (__OFADD__(v39[2], (v22 & 1) == 0))
      {
        goto LABEL_25;
      }

      v23 = v21;
      v24 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443C8, &qword_1CA987650);
      if (sub_1CA94D588())
      {
        v25 = sub_1CA321028(v42);
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_27;
        }

        v23 = v25;
      }

      if (v24)
      {
        v27 = v39;
        v28 = (v39[7] + 112 * v23);
        memcpy(v40, v28, sizeof(v40));
        memcpy(v28, __dst, 0x70uLL);
        v13 = v19;
        sub_1CA27080C(v40, v19, &qword_1CA983470);
        sub_1CA27080C(__dst, v19, &qword_1CA983470);
      }

      else
      {
        v27 = v39;
        v39[(v23 >> 6) + 8] |= 1 << v23;
        v29 = v39[6] + 40 * v23;
        v30 = *&v42[16];
        *v29 = *v42;
        *(v29 + 16) = v30;
        *(v29 + 32) = v43;
        memcpy((v39[7] + 112 * v23), __dst, 0x70uLL);
        v13 = v19;
        sub_1CA27080C(__dst, v19, &qword_1CA983470);
        v31 = v39[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_26;
        }

        v39[2] = v33;
      }

      *(v35 + v38) = v27;
      v2 = v35;
    }
  }

  while (1)
  {
    v14 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v14 >= v12)
    {
    }

    v11 = *(v8 + 8 * v14);
    ++v7;
    if (v11)
    {
      v7 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443D0, &qword_1CA983478);
  result = sub_1CA94D878();
  __break(1u);
  return result;
}

uint64_t sub_1CA418AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CA42B9A4(a1, a2);
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445580, &unk_1CA983450) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443D0, &qword_1CA983478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4440C0, &qword_1CA983470);
  sub_1CA276B98(&unk_1EC4455B0, &qword_1EC4443D0, &qword_1CA983478);
  result = sub_1CA94C1E8();
  *(a2 + v3) = result;
  return result;
}

uint64_t WFContentCategory.symbolName.getter()
{
  v0 = *MEMORY[0x1E6996FE0];
  v1 = sub_1CA94C3A8();
  v3 = v2;
  v4 = sub_1CA94C3A8();
  v6 = v5;
  v7 = v1 == v4 && v3 == v5;
  if (v7)
  {
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_104();
  v8 = sub_1CA94D7F8();

  if ((v8 & 1) == 0)
  {
    v9 = *MEMORY[0x1E6996FB8];
    sub_1CA94C3A8();
    OUTLINED_FUNCTION_53_7();
    OUTLINED_FUNCTION_95_4();
    if (v7 && v6 == v10)
    {
      goto LABEL_52;
    }

    OUTLINED_FUNCTION_13_16();
    OUTLINED_FUNCTION_114_2();

    if ((v3 & 1) == 0)
    {
      v12 = *MEMORY[0x1E6996FC0];
      sub_1CA94C3A8();
      if (v6 == OUTLINED_FUNCTION_108_2() && v13 == 0xEB00000000747069)
      {
      }

      else
      {
        OUTLINED_FUNCTION_86_1();
        v15 = sub_1CA94D7F8();

        if ((v15 & 1) == 0)
        {
          v16 = *MEMORY[0x1E6997120];
          sub_1CA94C3A8();
          OUTLINED_FUNCTION_53_7();
          OUTLINED_FUNCTION_95_4();
          if (v7 && v15 == v17)
          {

            return OUTLINED_FUNCTION_20_0();
          }

          OUTLINED_FUNCTION_13_16();
          OUTLINED_FUNCTION_114_2();

          if ((v3 & 1) == 0)
          {
            v19 = *MEMORY[0x1E6996FD8];
            v20 = sub_1CA94C3A8();
            v22 = v21;
            v23 = sub_1CA94C3A8();
            v25 = v24;
            if (v20 == v23 && v22 == v24)
            {
              goto LABEL_52;
            }

            OUTLINED_FUNCTION_104();
            v27 = sub_1CA94D7F8();

            if ((v27 & 1) == 0)
            {
              v28 = *MEMORY[0x1E6996FE8];
              sub_1CA94C3A8();
              if (v25 == OUTLINED_FUNCTION_108_2() && v29 == 0xEA00000000006574)
              {

                return OUTLINED_FUNCTION_20_0();
              }

              OUTLINED_FUNCTION_86_1();
              v31 = sub_1CA94D7F8();

              if ((v31 & 1) == 0)
              {
                v32 = *MEMORY[0x1E6996FC8];
                sub_1CA94C3A8();
                OUTLINED_FUNCTION_53_7();
                OUTLINED_FUNCTION_95_4();
                if (v7 && v31 == v33)
                {

                  return OUTLINED_FUNCTION_20_0();
                }

                OUTLINED_FUNCTION_13_16();
                OUTLINED_FUNCTION_114_2();

                if ((v22 & 1) == 0)
                {
                  v35 = *MEMORY[0x1E6996FD0];
                  sub_1CA94C3A8();
                  OUTLINED_FUNCTION_53_7();
                  OUTLINED_FUNCTION_95_4();
                  if (v7 && v31 == v36)
                  {
                    goto LABEL_52;
                  }

                  OUTLINED_FUNCTION_13_16();
                  OUTLINED_FUNCTION_114_2();

                  if ((v22 & 1) == 0)
                  {
                    v38 = *MEMORY[0x1E6996FF0];
                    sub_1CA94C3A8();
                    OUTLINED_FUNCTION_53_7();
                    OUTLINED_FUNCTION_95_4();
                    if (v7 && v31 == v39)
                    {

                      return OUTLINED_FUNCTION_20_0();
                    }

                    OUTLINED_FUNCTION_13_16();
                    OUTLINED_FUNCTION_114_2();

                    if ((v22 & 1) == 0)
                    {
                      v41 = *MEMORY[0x1E6996FB0];
                      sub_1CA94C3A8();
                      if (v31 == OUTLINED_FUNCTION_108_2() && v42 == 0xEA00000000006574)
                      {

                        return OUTLINED_FUNCTION_20_0();
                      }

                      OUTLINED_FUNCTION_86_1();
                      v44 = sub_1CA94D7F8();

                      if ((v44 & 1) == 0)
                      {
                        sub_1CA94D5F8();
                        __break(1u);
LABEL_52:

                        return OUTLINED_FUNCTION_20_0();
                      }
                    }
                  }
                }
              }
            }
          }

          return OUTLINED_FUNCTION_20_0();
        }
      }

      v46 = [objc_opt_self() currentDevice];
      v47 = [v46 symbolName];

      sub_1CA94C3A8();
    }
  }

  return OUTLINED_FUNCTION_20_0();
}

void sub_1CA419064(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  sub_1CA94C218();
  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(a1 + 56) + ((v8 << 9) | (8 * v9)));
    v11 = sub_1CA94C218();
    sub_1CA342A00(v11);
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      v12 = sub_1CA94C218();
      sub_1CA342A00(v12);
      return;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1CA41916C@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v129 = a4;
  v128 = a3;
  v144 = a2;
  v127 = a5;
  v6 = sub_1CA94B1C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v135 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v143 = &v126 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v142 = &v126 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v126 - v15;
  v17 = type metadata accessor for DrawerAction(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v137 = &v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v154 = &v126 - v22;
  v134 = v23;
  v138 = sub_1CA94C1E8();
  v146 = sub_1CA94C1E8();
  v24 = sub_1CA94C1E8();
  v145 = sub_1CA94C1E8();
  v25 = *(a1 + 16);
  v151 = v6;
  v133 = v25;
  if (v25)
  {
    v26 = 0;
    v27 = 0;
    v132 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v157 = v7 + 16;
    v140 = (v7 + 32);
    v141 = (v7 + 8);
    v139 = (v7 + 40);
    v150 = v7;
    v131 = a1;
    v158 = v16;
    v130 = v18;
    while (1)
    {
      if (v27 >= *(a1 + 16))
      {
        goto LABEL_73;
      }

      v28 = *(v18 + 72);
      v136 = v27;
      v29 = v154;
      sub_1CA42B9A4(v132 + v28 * v27, v154);
      v30 = (v29 + *(v134 + 28));
      a1 = *v30;
      v31 = v30[1];
      sub_1CA42B9A4(v29, v137);
      sub_1CA94C218();
      v32 = v138;
      swift_isUniquelyReferenced_nonNull_native();
      *&v159 = v32;
      v152 = a1;
      v153 = v31;
      v33 = sub_1CA271BF8();
      if (__OFADD__(*(v32 + 16), (v34 & 1) == 0))
      {
        break;
      }

      a1 = v33;
      v35 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4454B8, &qword_1CA9875D0);
      if (sub_1CA94D588())
      {
        v36 = sub_1CA271BF8();
        if ((v35 & 1) != (v37 & 1))
        {
          goto LABEL_76;
        }

        a1 = v36;
      }

      v38 = v159;
      v138 = v159;
      if (v35)
      {
        sub_1CA42B920(v137, *(v159 + 56) + a1 * v28);
      }

      else
      {
        *(v159 + 8 * (a1 >> 6) + 64) |= 1 << a1;
        v39 = (*(v38 + 48) + 16 * a1);
        v40 = v153;
        *v39 = v152;
        v39[1] = v40;
        sub_1CA42BA50(v137, *(v38 + 56) + a1 * v28);
        v41 = *(v138 + 16);
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          goto LABEL_75;
        }

        *(v138 + 16) = v43;
      }

      sub_1CA40AE90();
      v45 = v158;
      v149 = *(v44 + 16);
      if (v149)
      {
        v46 = 0;
        v47 = *(v7 + 80);
        v147 = v44;
        v148 = v44 + ((v47 + 32) & ~v47);
        do
        {
          if (v46 >= *(v44 + 16))
          {
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
            goto LABEL_74;
          }

          v48 = *(v7 + 72);
          v155 = v46;
          v156 = v48;
          v49 = *(v7 + 16);
          v49(v45, v148 + v48 * v46, v6);
          v50 = sub_1CA94B0F8();
          v52 = v51;
          sub_1CA40A918();
          a1 = v53;
          v55 = v54;
          sub_1CA293254(v26);
          swift_isUniquelyReferenced_nonNull_native();
          *&v159 = v24;
          v56 = sub_1CA271BF8();
          if (__OFADD__(v24[2], (v57 & 1) == 0))
          {
            goto LABEL_66;
          }

          v58 = v56;
          v59 = v57;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4454C0, &qword_1CA9875D8);
          if (sub_1CA94D588())
          {
            v60 = sub_1CA271BF8();
            if ((v59 & 1) != (v61 & 1))
            {
              goto LABEL_76;
            }

            v58 = v60;
          }

          v24 = v159;
          if (v59)
          {
          }

          else
          {
            sub_1CA419F0C(&v159);
            v24[(v58 >> 6) + 8] |= 1 << v58;
            v62 = (v24[6] + 16 * v58);
            *v62 = v50;
            v62[1] = v52;
            *(v24[7] + 16 * v58) = v159;
            v63 = v24[2];
            v42 = __OFADD__(v63, 1);
            v64 = v63 + 1;
            if (v42)
            {
              goto LABEL_68;
            }

            v24[2] = v64;
          }

          v65 = (v24[7] + 16 * v58);
          if (v55)
          {
            sub_1CA94C218();
            v66 = *v65;
            swift_isUniquelyReferenced_nonNull_native();
            *&v159 = *v65;
            v67 = v159;
            *v65 = 0x8000000000000000;
            v68 = sub_1CA271BF8();
            if (__OFADD__(*(v67 + 16), (v69 & 1) == 0))
            {
              goto LABEL_67;
            }

            v70 = v68;
            v71 = v69;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4454D0, &qword_1CA9875E8);
            v72 = sub_1CA94D588();
            v73 = v159;
            if (v72)
            {
              v74 = sub_1CA271BF8();
              if ((v71 & 1) != (v75 & 1))
              {
                goto LABEL_76;
              }

              v70 = v74;
            }

            *v65 = v73;
            if (v71)
            {
            }

            else
            {
              sub_1CA323E18(v70, a1, v55, MEMORY[0x1E69E7CD0], v73);
            }

            v6 = v151;
            v77 = *(v73 + 56) + 8 * v70;
            v78 = v153;
            sub_1CA94C218();
            sub_1CA368948(&v159, v152, v78);
          }

          else
          {
            v76 = v153;
            sub_1CA94C218();
            sub_1CA368948(&v159, v152, v76);

            v6 = v151;
          }

          v79 = v158;
          v80 = sub_1CA94B0F8();
          a1 = v81;
          sub_1CA25B3D0(0, &qword_1EC441980, 0x1E69635F8);
          if (sub_1CA419F6C(v80, a1, v144 & 1))
          {
            v49(v142, v79, v6);
            v82 = v146;
            swift_isUniquelyReferenced_nonNull_native();
            *&v159 = v82;
            v83 = sub_1CA271BF8();
            if (__OFADD__(*(v82 + 16), (v84 & 1) == 0))
            {
              goto LABEL_69;
            }

            v85 = v83;
            v86 = v84;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4454C8, &qword_1CA9875E0);
            if (sub_1CA94D588())
            {
              v87 = sub_1CA271BF8();
              v7 = v150;
              if ((v86 & 1) != (v88 & 1))
              {
                goto LABEL_76;
              }

              v85 = v87;
              if (v86)
              {
LABEL_48:

                v146 = v159;
                (*v139)(*(v159 + 56) + v85 * v156, v142, v6);
LABEL_51:
                v45 = v158;
                (*v141)(v158, v6);
                goto LABEL_52;
              }
            }

            else
            {
              v7 = v150;
              if (v86)
              {
                goto LABEL_48;
              }
            }

            v89 = v159;
            *(v159 + 8 * (v85 >> 6) + 64) |= 1 << v85;
            v90 = (v89[6] + 16 * v85);
            *v90 = v80;
            v90[1] = a1;
            (*v140)(v89[7] + v85 * v156, v142, v6);
            v45 = v158;
            (*v141)(v158, v6);
            v91 = v89[2];
            v42 = __OFADD__(v91, 1);
            v92 = v91 + 1;
            if (v42)
            {
              goto LABEL_71;
            }

            v93 = v89;
            v146 = v89;
          }

          else
          {
            v49(v143, v79, v6);
            v94 = v145;
            swift_isUniquelyReferenced_nonNull_native();
            *&v159 = v94;
            v95 = sub_1CA271BF8();
            if (__OFADD__(*(v94 + 16), (v96 & 1) == 0))
            {
              goto LABEL_70;
            }

            v97 = v95;
            v98 = v96;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4454C8, &qword_1CA9875E0);
            if (sub_1CA94D588())
            {
              v99 = sub_1CA271BF8();
              v7 = v150;
              if ((v98 & 1) != (v100 & 1))
              {
                goto LABEL_76;
              }

              v97 = v99;
              if (v98)
              {
LABEL_50:

                v145 = v159;
                (*v139)(*(v159 + 56) + v97 * v156, v143, v6);
                goto LABEL_51;
              }
            }

            else
            {
              v7 = v150;
              if (v98)
              {
                goto LABEL_50;
              }
            }

            v101 = v159;
            *(v159 + 8 * (v97 >> 6) + 64) |= 1 << v97;
            v102 = (v101[6] + 16 * v97);
            *v102 = v80;
            v102[1] = a1;
            (*v140)(v101[7] + v97 * v156, v143, v6);
            v45 = v158;
            (*v141)(v158, v6);
            v103 = v101[2];
            v42 = __OFADD__(v103, 1);
            v92 = v103 + 1;
            if (v42)
            {
              goto LABEL_72;
            }

            v93 = v101;
            v145 = v101;
          }

          v93[2] = v92;
LABEL_52:
          v44 = v147;
          v46 = v155 + 1;
          v26 = sub_1CA419F0C;
        }

        while (v149 != v155 + 1);
      }

      v27 = v136 + 1;

      sub_1CA42B9FC();
      a1 = v131;
      v18 = v130;
      if (v27 == v133)
      {

        goto LABEL_56;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    sub_1CA94D878();
    __break(1u);
  }

  else
  {

    v26 = 0;
LABEL_56:
    v104 = v146;
    swift_bridgeObjectRetain_n();
    sub_1CA94C218();
    sub_1CA94C218();
    *&v159 = sub_1CA42ADF0(v104);
    a1 = 0;
    sub_1CA424EEC();

    v105 = v159;
    v106 = *(v159 + 16);
    if (v106)
    {
      v155 = 0;
      *&v159 = MEMORY[0x1E69E7CC0];
      sub_1CA271524();
      v107 = v159;
      v109 = *(v7 + 16);
      v108 = v7 + 16;
      v110 = *(v108 + 64);
      v154 = v105;
      v111 = v105 + ((v110 + 32) & ~v110);
      v157 = *(v108 + 56);
      v158 = v109;
      v156 = (v108 - 8);
      v150 = v108;
      do
      {
        v112 = v135;
        v158(v135, v111, v6);
        v113 = sub_1CA94B0F8();
        v114 = v6;
        v116 = v115;
        (*v156)(v112, v114);
        *&v159 = v107;
        v117 = *(v107 + 16);
        if (v117 >= *(v107 + 24) >> 1)
        {
          sub_1CA271524();
          v107 = v159;
        }

        *(v107 + 16) = v117 + 1;
        v118 = v107 + 16 * v117;
        *(v118 + 32) = v113;
        *(v118 + 40) = v116;
        v111 += v157;
        --v106;
        v6 = v151;
      }

      while (v106);

      a1 = v155;
    }

    else
    {

      v107 = MEMORY[0x1E69E7CC0];
    }

    v119 = sub_1CA94C218();
    *&v159 = sub_1CA42ADF0(v119);
    sub_1CA424EEC();
    if (!a1)
    {
      v120 = v146;

      v121 = v138;

      swift_bridgeObjectRelease_n();
      result = sub_1CA293254(v26);
      v123 = v159;
      v124 = v127;
      *v127 = v121;
      v124[1] = v120;
      v124[2] = v24;
      v124[3] = v107;
      v125 = v128;
      v124[4] = v123;
      v124[5] = v125;
      v124[6] = v129;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA419F0C@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443DF8, &unk_1CA9875F0);
  result = sub_1CA94C1E8();
  v3 = MEMORY[0x1E69E7CD0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_1CA419F6C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1CA949F78();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = objc_allocWithZone(MEMORY[0x1E69635F8]);
  sub_1CA94C218();
  v9 = sub_1CA275C94(a1, a2, 0);
  v10 = v9;
  if (a3)
  {
    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

  v12 = [v9 wf:v11 isAvailableInContext:?];

  return v12;
}

uint64_t UnavailableAction.reason.getter()
{
  v1 = (v0 + *(type metadata accessor for UnavailableAction(0) + 20));
  v2 = *v1;
  v3 = v1[1];
  sub_1CA94C218();
  return OUTLINED_FUNCTION_23();
}

void *sub_1CA41A250()
{
  type metadata accessor for ActionDrawerDataSource();
  swift_allocObject();
  result = sub_1CA41A8A0();
  qword_1EC442580 = result;
  return result;
}

uint64_t static ActionDrawerDataSource.shared.getter()
{
  if (qword_1EC442578 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1CA41A2E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  sub_1CA94C218();
  return sub_1CA41A3F0(v2, v3);
}

uint64_t sub_1CA41A328(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v6 = *(v2 + 24);
  if (!v6)
  {
    if (!a2)
    {
      return result;
    }

    return sub_1CA41BDA0(&unk_1F49F9810);
  }

  if (!a2)
  {
    return sub_1CA41BDA0(&unk_1F49F9810);
  }

  result = *(v2 + 16);
  if (result != a1 || v6 != a2)
  {
    result = sub_1CA94D7F8();
    if ((result & 1) == 0)
    {
      return sub_1CA41BDA0(&unk_1F49F9810);
    }
  }

  return result;
}

uint64_t sub_1CA41A3B4()
{
  OUTLINED_FUNCTION_52_6();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1CA94C218();
  return OUTLINED_FUNCTION_23();
}

uint64_t sub_1CA41A3F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  sub_1CA41A328(v5, v6);
}

uint64_t sub_1CA41A450(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  v4 = *(v1 + 24);
  v3[3] = *(v1 + 16);
  v3[4] = v4;
  sub_1CA94C218();
  return OUTLINED_FUNCTION_20_0();
}

void sub_1CA41A4CC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v6 = *(*a1 + 32);
    sub_1CA94C218();
    sub_1CA41A3F0(v3, v5);
    v7 = v2[4];
  }

  else
  {
    sub_1CA41A3F0(*(*a1 + 24), v5);
  }

  free(v2);
}

void sub_1CA41A544()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_119_2();
  OUTLINED_FUNCTION_3_27();
  sub_1CA42ABDC(v1);
  if (v0)
  {
    sub_1CA94C218();
  }

  OUTLINED_FUNCTION_3_27();
  sub_1CA42AC68(v2);
  OUTLINED_FUNCTION_36();
}

void sub_1CA41A5B8()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_119_2();
  OUTLINED_FUNCTION_3_27();
  sub_1CA42ABDC(v1);
  if (v0)
  {
    sub_1CA94C218();
  }

  OUTLINED_FUNCTION_3_27();
  sub_1CA42AC68(v2);
  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA41A62C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1CA94C218();
  return sub_1CA41A684(v4);
}

uint64_t sub_1CA41A658()
{
  OUTLINED_FUNCTION_52_6();
  v1 = *(v0 + 152);
  return sub_1CA94C218();
}

uint64_t sub_1CA41A684(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 152);
  *(v1 + 152) = a1;
}

uint64_t sub_1CA41A6CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1CA94C218();
  return sub_1CA41A838(v4);
}

uint64_t sub_1CA41A6F8()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 160);
  }

  else
  {
    v1 = sub_1CA41A740();
    *(v0 + 160) = v1;
    sub_1CA94C218();
  }

  sub_1CA94C218();
  return v1;
}

uint64_t sub_1CA41A740()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4455C8, &qword_1CA987678);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CA981300;
  v1 = *MEMORY[0x1E6996FE0];
  v2 = *MEMORY[0x1E6996FB8];
  *(v0 + 32) = *MEMORY[0x1E6996FE0];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E6996FC0];
  v4 = *MEMORY[0x1E6996FD0];
  *(v0 + 48) = *MEMORY[0x1E6996FC0];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x1E6996FD8];
  v6 = *MEMORY[0x1E6996FE8];
  *(v0 + 64) = *MEMORY[0x1E6996FD8];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x1E6996FC8];
  v8 = *MEMORY[0x1E6996FF0];
  *(v0 + 80) = *MEMORY[0x1E6996FC8];
  *(v0 + 88) = v8;
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  return v0;
}

uint64_t sub_1CA41A838(uint64_t a1)
{
  v2 = *(v1 + 160);
  *(v1 + 160) = a1;
}

uint64_t (*sub_1CA41A848(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1CA41A6F8();
  return sub_1CA41A890;
}

uint64_t sub_1CA41A890(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 160);
  *(v1 + 160) = v2;
}

void *sub_1CA41A8A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4455D0, &qword_1CA987680);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v74 - v3;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  v5 = MEMORY[0x1E69E7CC0];
  *(v0 + 128) = MEMORY[0x1E69E7CC0];
  if (sub_1CA25B410(v5))
  {
    sub_1CA2E8B78(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CD0];
  }

  *(v0 + 136) = v6;
  v94 = v0 + 136;
  type metadata accessor for ActionDrawerDataLoader();
  swift_allocObject();
  v7 = v0;
  v8 = sub_1CA4243F4();
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  *(v0 + 144) = v8;
  v9 = [objc_opt_self() lockedAppBundleIdentifiers];
  v10 = sub_1CA94C8F8();

  v7[21] = v10;
  v7[22] = 0;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4455D8, &qword_1CA987688);
  v78 = &v74;
  v97 = *(v93 - 8);
  v87 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v88 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v74 - v88;
  v13 = sub_1CA94CE78();
  v14 = *(v13 - 8);
  v86 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v85 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v74 - v85;
  v81 = objc_opt_self();
  v17 = [v81 defaultCenter];
  v18 = sub_1CA94CDF8();
  sub_1CA94CE88();

  v92 = sub_1CA25B3D0(0, &qword_1EDB9FAD0, 0x1E69E9610);
  v19 = sub_1CA94CD48();
  v98 = v19;
  v84 = sub_1CA94CD28();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v84);
  v83 = sub_1CA4360F0(&qword_1EDB9F728, MEMORY[0x1EEE78DA8]);
  v96 = sub_1CA27C530();
  v80 = v13;
  sub_1CA94A0E8();
  sub_1CA27080C(v4, &qword_1EC4455D0, &qword_1CA987680);

  v82 = *(v14 + 8);
  v91 = v14 + 8;
  v82(v16, v13);
  swift_allocObject();
  swift_weakInit();
  v95 = sub_1CA276B98(&qword_1EC441D78, &qword_1EC4455D8, &qword_1CA987688);

  v20 = v93;
  sub_1CA94A108();

  v21 = *(v97 + 8);
  v97 += 8;
  v90 = v21;
  v21(v12, v20);
  swift_beginAccess();
  sub_1CA949F88();
  swift_endAccess();

  sub_1CA41BDA0(&unk_1F49F97E8);
  v22 = WFGetFavoritedActionIDs();
  v23 = sub_1CA94C658();

  v24 = v7[16];
  v7[16] = v23;
  v89 = v7;

  v77 = &v74;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = v88;
  v76 = &v74;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v74 - v85;
  v78 = objc_opt_self();
  v29 = [v78 defaultCenter];
  sub_1CA94CE88();

  v30 = sub_1CA94CD48();
  v98 = v30;
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v84);
  v31 = v80;
  sub_1CA94A0E8();
  sub_1CA27080C(v4, &qword_1EC4455D0, &qword_1CA987680);

  v32 = v31;
  v33 = v82;
  v82(v28, v32);
  swift_allocObject();
  swift_weakInit();
  v34 = v93;
  sub_1CA94A108();

  v90(&v74 - v27, v34);
  swift_beginAccess();
  sub_1CA949F88();
  swift_endAccess();

  v76 = &v74;
  v36 = MEMORY[0x1EEE9AC00](v35);
  v37 = &v74 - v27;
  v75 = &v74;
  MEMORY[0x1EEE9AC00](v36);
  v38 = v85;
  v39 = [v81 defaultCenter];
  v77 = *MEMORY[0x1E69ACB40];
  sub_1CA94CE88();

  v40 = sub_1CA94CD48();
  v98 = v40;
  v41 = v84;
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v84);
  v42 = v80;
  v79 = v4;
  sub_1CA94A0E8();
  sub_1CA27080C(v4, &qword_1EC4455D0, &qword_1CA987680);

  v33(&v74 - v38, v42);
  swift_allocObject();
  swift_weakInit();
  v43 = v93;
  sub_1CA94A108();

  v90(v37, v43);
  swift_beginAccess();
  sub_1CA949F88();
  swift_endAccess();

  v76 = &v74;
  v45 = MEMORY[0x1EEE9AC00](v44);
  v46 = &v74 - v88;
  v75 = &v74;
  MEMORY[0x1EEE9AC00](v45);
  v47 = [v81 defaultCenter];
  sub_1CA94CE88();

  v48 = sub_1CA94CD48();
  v98 = v48;
  v49 = v79;
  __swift_storeEnumTagSinglePayload(v79, 1, 1, v41);
  sub_1CA94A0E8();
  sub_1CA27080C(v49, &qword_1EC4455D0, &qword_1CA987680);

  v50 = &v74 - v38;
  v51 = v42;
  v52 = v82;
  v82(v50, v42);
  swift_allocObject();
  swift_weakInit();
  v53 = v93;
  sub_1CA94A108();

  v54 = v90;
  v90(v46, v53);
  swift_beginAccess();
  sub_1CA949F88();
  swift_endAccess();

  v81 = &v74;
  v56 = MEMORY[0x1EEE9AC00](v55);
  v57 = &v74 - v88;
  v77 = &v74;
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v74 - v85;
  v59 = v78;
  v60 = [v78 defaultCenter];
  v61 = sub_1CA94C368();
  sub_1CA94CE88();

  v62 = sub_1CA94CD48();
  v98 = v62;
  v63 = v79;
  __swift_storeEnumTagSinglePayload(v79, 1, 1, v84);
  sub_1CA94A0E8();
  sub_1CA27080C(v63, &qword_1EC4455D0, &qword_1CA987680);

  v52(v58, v51);
  swift_allocObject();
  swift_weakInit();
  v64 = v93;
  sub_1CA94A108();

  v54(v57, v64);
  swift_beginAccess();
  sub_1CA949F88();
  swift_endAccess();

  v81 = &v74;
  v66 = MEMORY[0x1EEE9AC00](v65);
  v67 = &v74 - v88;
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v74 - v85;
  v69 = [v59 defaultCenter];
  v70 = sub_1CA94C368();
  sub_1CA94CE88();

  v71 = sub_1CA94CD48();
  v98 = v71;
  __swift_storeEnumTagSinglePayload(v63, 1, 1, v84);
  sub_1CA94A0E8();
  sub_1CA27080C(v63, &qword_1EC4455D0, &qword_1CA987680);

  v82(v68, v51);
  swift_allocObject();
  v72 = v89;
  swift_weakInit();

  sub_1CA94A108();

  v90(v67, v64);
  swift_beginAccess();
  sub_1CA949F88();
  swift_endAccess();

  return v72;
}

uint64_t sub_1CA41B704()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = WFGetFavoritedActionIDs();
    v3 = sub_1CA94C658();

    if (sub_1CA2B6DAC(*(v1 + 128), v3))
    {
    }

    else
    {
      *(v1 + 128) = v3;

      type metadata accessor for ActionDrawerDataSource();
      sub_1CA435D64(&qword_1EC442570, v4, type metadata accessor for ActionDrawerDataSource);
      sub_1CA949FE8();
      sub_1CA94A048();
    }
  }

  return result;
}

uint64_t sub_1CA41B814()
{
  OUTLINED_FUNCTION_52_6();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = OUTLINED_FUNCTION_87();
    sub_1CA41BDA0(v1);
  }

  return result;
}

uint64_t sub_1CA41B864()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [objc_opt_self() lockedAppBundleIdentifiers];
    v3 = sub_1CA94C8F8();

    v4 = *(v1 + 168);
    v5 = sub_1CA94C218();
    v6 = sub_1CA636B30(v5, v3);

    if (v6)
    {
    }

    else
    {
      v7 = *(v1 + 168);
      *(v1 + 168) = v3;

      sub_1CA41BDA0(&unk_1F49F98D8);
    }
  }

  return result;
}

id sub_1CA41B950()
{
  v0 = [objc_opt_self() systemShortcutsUserDefaults];
  v1 = [v0 BOOLForKey_];

  return v1;
}

uint64_t sub_1CA41B9B4(char a1)
{
  v2 = [objc_opt_self() systemShortcutsUserDefaults];
  [v2 setBool:a1 & 1 forKey:@"WFDrawerShowInternalApps"];

  return sub_1CA41BDA0(&unk_1F49F9900);
}

uint64_t (*sub_1CA41BA38(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1CA41B950() & 1;
  return sub_1CA41BA84;
}

uint64_t sub_1CA41BAAC()
{
  OUTLINED_FUNCTION_0();
  v1[2] = v0;
  sub_1CA94C838();
  v1[3] = sub_1CA94C828();
  OUTLINED_FUNCTION_87();
  v3 = sub_1CA94C7C8();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1CA41BB3C, v3, v2);
}

uint64_t sub_1CA41BB3C()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0[2] + 176);
  v0[6] = v1;
  if (v1)
  {
    v2 = *(MEMORY[0x1E69E86C0] + 4);

    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_1CA41BC28;

    return MEMORY[0x1EEE6DA40]();
  }

  else
  {
    v4 = v0[3];

    OUTLINED_FUNCTION_5();

    return v5();
  }
}

uint64_t sub_1CA41BC28()
{
  OUTLINED_FUNCTION_0();
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_13();
  *v4 = v3;

  v5 = *(v1 + 40);
  v6 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1CA41BD3C, v6, v5);
}

uint64_t sub_1CA41BD3C()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA41BDA0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  v5 = OUTLINED_FUNCTION_18_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  if (*(v1 + 176))
  {

    sub_1CA94C878();
  }

  sub_1CA94C858();
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  sub_1CA94C838();
  OUTLINED_FUNCTION_87();

  sub_1CA94C218();
  v12 = sub_1CA94C828();
  OUTLINED_FUNCTION_123();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v2;
  v13[5] = a1;
  v15 = sub_1CA30C708();
  v16 = *(v2 + 176);
  *(v2 + 176) = v15;
}

uint64_t sub_1CA41BEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  sub_1CA94C838();
  v5[23] = sub_1CA94C828();
  v7 = sub_1CA94C7C8();
  v5[24] = v7;
  v5[25] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1CA41BF78, v7, v6);
}

uint64_t sub_1CA41BF78()
{
  v1 = v0[21];
  v2 = *(v1 + 144);
  v3 = sub_1CA41B950();
  swift_beginAccess();
  v4 = *(v1 + 24) != 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_77();
  v0[26] = v5;
  *v5 = v6;
  v5[1] = sub_1CA41C04C;
  v7 = v0[22];

  return sub_1CA41C790((v0 + 2), v7, v3 & 1u | (v4 << 8));
}

uint64_t sub_1CA41C04C()
{
  OUTLINED_FUNCTION_0();
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *v0;
  OUTLINED_FUNCTION_13();
  *v4 = v3;

  v5 = *(v1 + 200);
  v6 = *(v1 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1CA41C160, v6, v5);
}

uint64_t sub_1CA41C160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138_3();
  v17 = v16[23];

  if (sub_1CA94C8A8())
  {
    sub_1CA4360C0((v16 + 2));
  }

  else
  {
    v18 = v16[21];
    type metadata accessor for ActionDrawerDataSource();
    sub_1CA435D64(&qword_1EC442570, v19, type metadata accessor for ActionDrawerDataSource);
    OUTLINED_FUNCTION_5_3();
    sub_1CA949FE8();
    sub_1CA94A048();

    v20 = v16[3];
    v21 = v16[4];
    v22 = v16[5];
    v23 = v16[6];
    v24 = v16[7];
    v25 = v16[8];
    v26 = v18[4];
    v27 = v18[5];
    a12 = v18[7];
    a13 = v18[6];
    a10 = v18[9];
    a11 = v18[8];
    a9 = v18[10];
    v18[4] = v16[2];
    v18[5] = v20;
    v18[6] = v21;
    v18[7] = v22;
    v18[8] = v23;
    v18[9] = v24;
    v18[10] = v25;
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA42AC68(v26);
    v28 = v16[9];
    swift_beginAccess();
    v29 = v18[19];
    v18[19] = v28;
    sub_1CA94C218();

    v30 = v16[10];
    v31 = v16[11];
    v33 = v16[12];
    v32 = v16[13];
    v34 = v16[14];

    v35 = v32;
    sub_1CA94C218();
    sub_1CA4360C0((v16 + 2));
    v36 = v18[11];
    v37 = v18[12];
    v38 = v18[13];
    v39 = v18[14];
    v40 = v18[15];
    v18[11] = v30;
    v18[12] = v31;
    v18[13] = v33;
    v18[14] = v35;
    v18[15] = v34;
    sub_1CA42ACF4(v36, v37, v38, v39);
  }

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_99();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t ActionDrawerDataSource.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  sub_1CA42AC68(*(v0 + 32));
  v8 = *(v0 + 120);
  sub_1CA42ACF4(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  v9 = *(v0 + 128);

  v10 = *(v0 + 136);

  v11 = *(v0 + 144);

  v12 = *(v0 + 152);

  v13 = *(v0 + 160);

  v14 = *(v0 + 168);

  v15 = *(v0 + 176);

  return v0;
}

uint64_t ActionDrawerDataSource.__deallocating_deinit()
{
  ActionDrawerDataSource.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 184, 7);
}

uint64_t sub_1CA41C414@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ActionDrawerDataSource();
  result = sub_1CA949FE8();
  *a1 = result;
  return result;
}

uint64_t sub_1CA41C450()
{
  if (*(v0 + 184))
  {
    v1 = *(v0 + 184);
  }

  else
  {
    v1 = sub_1CA41C4AC();
    v2 = *(v0 + 184);
    *(v0 + 184) = v1;
    sub_1CA94C218();
  }

  sub_1CA94C218();
  return v1;
}

uint64_t sub_1CA41C4AC()
{
  v0 = [objc_opt_self() sharedRegistry];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981350;
  *(inited + 32) = 0xD000000000000022;
  *(inited + 40) = 0x80000001CA996170;
  *(inited + 48) = 0xD00000000000001FLL;
  *(inited + 56) = 0x80000001CA9961A0;
  *(inited + 64) = 0xD000000000000020;
  *(inited + 72) = 0x80000001CA9940C0;
  *(inited + 80) = 0xD00000000000001FLL;
  *(inited + 88) = 0x80000001CA9940A0;
  v17 = MEMORY[0x1E69E7CC0];
  sub_1CA94D508();
  v2 = *(inited + 32);
  v3 = *(inited + 40);
  sub_1CA94C218();
  v4 = sub_1CA94C368();
  v5 = [v0 createActionWithIdentifier:v4 serializedParameters:0];

  sub_1CA94D4D8();
  v6 = *(v17 + 16);
  sub_1CA94D518();
  sub_1CA94D528();
  sub_1CA94D4E8();
  v7 = sub_1CA94C368();
  v8 = [v0 createActionWithIdentifier:v7 serializedParameters:0];

  sub_1CA94D4D8();
  v9 = *(v17 + 16);
  sub_1CA94D518();
  sub_1CA94D528();
  sub_1CA94D4E8();
  v10 = sub_1CA94C368();
  v11 = [v0 createActionWithIdentifier:v10 serializedParameters:0];

  sub_1CA94D4D8();
  v12 = *(v17 + 16);
  sub_1CA94D518();
  sub_1CA94D528();
  sub_1CA94D4E8();
  v13 = sub_1CA94C368();
  v14 = [v0 createActionWithIdentifier:v13 serializedParameters:0];

  sub_1CA94D4D8();
  v15 = *(v17 + 16);
  sub_1CA94D518();
  sub_1CA94D528();
  sub_1CA94D4E8();

  swift_setDeallocating();
  sub_1CA32E2F8();
  return v17;
}

uint64_t sub_1CA41C790(uint64_t a1, uint64_t a2, __int16 a3)
{
  *(v4 + 176) = a2;
  *(v4 + 184) = v3;
  *(v4 + 208) = a3;
  *(v4 + 168) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1CA41C7B8, v3, 0);
}

uint64_t sub_1CA41C7B8()
{
  v1 = *(v0 + 184);
  v2 = v1[14];
  v3 = v1[15];
  v4 = v1[16];
  v5 = v1[17];
  v6 = v1[18];
  v7 = v1[19];
  v8 = v1[20];
  *(v0 + 192) = v1[21];
  if (!v2 || sub_1CA6030F4(0, *(v0 + 176)))
  {
    v9 = *(v0 + 208);
    sub_1CA94C218();
    swift_task_alloc();
    OUTLINED_FUNCTION_77();
    *(v0 + 200) = v10;
    *v10 = v11;
    v10[1] = sub_1CA41C9BC;
    v12 = *(v0 + 184);

    return sub_1CA41CBDC(v0 + 72, v9 & 0x101);
  }

  sub_1CA94C218();
  v14 = OUTLINED_FUNCTION_20_0();
  sub_1CA42ABDC(v14);
  v15 = *(v0 + 192);
  v22 = v3;
  if (!v15)
  {
    goto LABEL_9;
  }

  if (sub_1CA6030F4(1, *(v0 + 176)))
  {

LABEL_9:
    v16 = *(v0 + 184);
    v15 = sub_1CA420914();
  }

  sub_1CA94C218();
  v17 = *(v0 + 184);
  v18 = *(v0 + 168);
  *(v0 + 16) = v2;
  *(v0 + 24) = v22;
  *(v0 + 32) = v4;
  *(v0 + 40) = v5;
  *(v0 + 48) = v6;
  *(v0 + 56) = v7;
  *(v0 + 64) = v8;
  sub_1CA422C38((v0 + 16), v15, (v0 + 128));
  OUTLINED_FUNCTION_136_3();

  *v18 = v2;
  *(v18 + 8) = v22;
  *(v18 + 16) = v4;
  *(v18 + 24) = v5;
  *(v18 + 32) = v6;
  *(v18 + 40) = v7;
  *(v18 + 48) = v8;
  *(v18 + 56) = v15;
  *(v18 + 64) = v21;
  *(v18 + 80) = v17;
  *(v18 + 88) = v20;
  OUTLINED_FUNCTION_5();

  return v19();
}

uint64_t sub_1CA41C9BC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v2 = *(v1 + 200);
  v3 = *(v1 + 184);
  v4 = *v0;
  OUTLINED_FUNCTION_13();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_78_3();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1CA41CAB4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 112);
  v15 = *(v0 + 120);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 192);
  if (v7)
  {
    if (!sub_1CA6030F4(1, *(v0 + 176)))
    {
      goto LABEL_5;
    }
  }

  v8 = *(v0 + 184);
  v7 = sub_1CA420914();
LABEL_5:
  sub_1CA94C218();
  v9 = *(v0 + 184);
  v10 = *(v0 + 168);
  *(v0 + 16) = v1;
  *(v0 + 24) = v6;
  *(v0 + 32) = v5;
  *(v0 + 40) = v4;
  *(v0 + 48) = v3;
  *(v0 + 56) = v2;
  *(v0 + 64) = v15;
  sub_1CA422C38((v0 + 16), v7, (v0 + 128));
  OUTLINED_FUNCTION_136_3();

  *v10 = v1;
  *(v10 + 8) = v6;
  *(v10 + 16) = v5;
  *(v10 + 24) = v4;
  *(v10 + 32) = v3;
  *(v10 + 40) = v2;
  *(v10 + 48) = v15;
  *(v10 + 56) = v7;
  *(v10 + 64) = v14;
  *(v10 + 80) = v9;
  *(v10 + 88) = v13;
  OUTLINED_FUNCTION_5();

  return v11();
}

uint64_t sub_1CA41CBDC(uint64_t a1, __int16 a2)
{
  *(v3 + 508) = a2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v2;
  v4 = sub_1CA949F78();
  *(v3 + 184) = v4;
  v5 = *(v4 - 8);
  *(v3 + 192) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 200) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444CC0, &unk_1CA9867F0);
  *(v3 + 208) = v7;
  v8 = *(v7 - 8);
  *(v3 + 216) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 224) = swift_task_alloc();
  v10 = sub_1CA94A408();
  *(v3 + 232) = v10;
  v11 = *(v10 - 8);
  *(v3 + 240) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4454B0, &unk_1CA983070) - 8) + 64) + 15;
  *(v3 + 264) = swift_task_alloc();
  v14 = sub_1CA94A288();
  *(v3 + 272) = v14;
  v15 = *(v14 - 8);
  *(v3 + 280) = v15;
  v16 = *(v15 + 64) + 15;
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  v17 = type metadata accessor for DrawerAction(0);
  *(v3 + 304) = v17;
  v18 = *(v17 - 8);
  *(v3 + 312) = v18;
  v19 = *(v18 + 64) + 15;
  *(v3 + 320) = swift_task_alloc();
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080) - 8) + 64) + 15;
  *(v3 + 344) = swift_task_alloc();
  v21 = type metadata accessor for UnavailableAction(0);
  *(v3 + 352) = v21;
  v22 = *(v21 - 8);
  *(v3 + 360) = v22;
  v23 = *(v22 + 64) + 15;
  *(v3 + 368) = swift_task_alloc();
  v24 = sub_1CA94A4E8();
  *(v3 + 376) = v24;
  v25 = *(v24 - 8);
  *(v3 + 384) = v25;
  v26 = *(v25 + 64) + 15;
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 400) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA41CF80, v2, 0);
}

uint64_t sub_1CA41CF80()
{
  sub_1CA94A828();
  *(v0 + 408) = sub_1CA94A7D8();
  v3 = sub_1CA94A678();
  *(v0 + 416) = v3;
  *(v0 + 424) = 0;
  v24 = *(v3 + 16);
  *(v0 + 432) = v24;
  if (!v24)
  {

    v38 = *(v0 + 176);
    v171 = sub_1CA41C450();
    result = sub_1CA25B410(v171);
    v168 = result;
    if (result)
    {
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      v39 = 0;
      v40 = *(v0 + 304);
      v165 = *(v0 + 312);
      v41 = MEMORY[0x1E69E7CC0];
      do
      {
        if ((v171 & 0xC000000000000001) != 0)
        {
          v42 = MEMORY[0x1CCAA22D0](v39, v171);
        }

        else
        {
          v42 = *(v171 + 8 * v39 + 32);
        }

        v43 = v42;
        v44 = *(v0 + 328);
        v45 = v40[6];
        v46 = sub_1CA94B1C8();
        OUTLINED_FUNCTION_46();
        __swift_storeEnumTagSinglePayload(v47, v48, v49, v46);
        *v44 = v43;
        type metadata accessor for DrawerAction.DrawerActionStorage(0);
        swift_storeEnumTagMultiPayload();
        v50 = v43;
        sub_1CA27080C(v44 + v45, &qword_1EC4445D0, &qword_1CA983080);
        OUTLINED_FUNCTION_46();
        __swift_storeEnumTagSinglePayload(v51, v52, v53, v46);
        *(v44 + v40[5]) = 0;
        v54 = [v50 identifier];
        sub_1CA94C3A8();
        OUTLINED_FUNCTION_194();

        v55 = (v44 + v40[7]);
        *v55 = v1;
        v55[1] = v2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = *(v41 + 16);
          OUTLINED_FUNCTION_21();
          sub_1CA2E5CDC();
          v41 = v63;
        }

        v57 = *(v41 + 16);
        v56 = *(v41 + 24);
        if (v57 >= v56 >> 1)
        {
          OUTLINED_FUNCTION_64(v56);
          OUTLINED_FUNCTION_160();
          sub_1CA2E5CDC();
          v41 = v64;
        }

        ++v39;
        v1 = *(v0 + 328);

        *(v41 + 16) = v57 + 1;
        v58 = *(v165 + 80);
        OUTLINED_FUNCTION_68_0();
        v60 = *(v59 + 72);
        OUTLINED_FUNCTION_0_31();
        sub_1CA42BA50(v1, v61);
      }

      while (v168 != v39);
    }

    else
    {
      v41 = MEMORY[0x1E69E7CC0];
    }

    v143 = v0 + 72;
    v144 = v41;

    if (qword_1EC442D40 != -1)
    {
      goto LABEL_42;
    }

    while (1)
    {
      v140 = *(v0 + 304);
      v141 = *(v0 + 312);
      v65 = *(v0 + 280);
      v66 = *(v0 + 240);
      v67 = *(v0 + 216);
      OUTLINED_FUNCTION_50_3(qword_1EC445100);
      v70 = v69 & v68;
      v72 = (63 - v71) >> 6;
      v150 = *MEMORY[0x1E69DA9C0];
      OUTLINED_FUNCTION_63_5();
      v138 = v73;
      v139 = v74;
      v142 = (v75 + 8);
      v172 = v0;
      v0 = *(v0 + 424);
      v156 = v76;
      sub_1CA94C218();
      v77 = 0;
      v145 = MEMORY[0x1E69E7CC0];
      v152 = v72;
      v154 = v41;
      if (!v70)
      {
        goto LABEL_25;
      }

      while (2)
      {
        v169 = v0;
LABEL_29:
        v166 = *(v172 + 408);
        v79 = *(v172 + 256);
        v163 = *(v172 + 264);
        v80 = *(v172 + 248);
        v81 = *(v172 + 224);
        v160 = *(v172 + 232);
        v82 = *(v172 + 208);
        v70 &= v70 - 1;
        v83 = *(v156 + 48);
        OUTLINED_FUNCTION_94_2();
        v85 = *v84;
        v86 = v84[1];
        sub_1CA94C218();
        sub_1CA94A3E8();
        swift_getKeyPath();
        v87 = swift_allocObject();
        *(v87 + 16) = v85;
        *(v87 + 24) = v86;
        *v81 = v87;
        (*v148)(v81, v150, v82);
        OUTLINED_FUNCTION_34_10();
        sub_1CA435D64(&qword_1EC441D50, 255, v88);
        OUTLINED_FUNCTION_33_9();
        sub_1CA276B98(&qword_1EDB9F7C0, &unk_1EC444CC0, &unk_1CA9867F0);
        sub_1CA94A838();

        v89 = *v147;
        v90 = OUTLINED_FUNCTION_126();
        v91(v90);
        v92 = v160;
        v161 = *v146;
        (*v146)(v80, v92);
        v158 = sub_1CA948E58();
        OUTLINED_FUNCTION_1_0(v158);
        v94 = v93;
        v96 = *(v95 + 64) + 15;
        v97 = swift_task_alloc();
        sub_1CA948D98();
        sub_1CA94A6E8();
        v99 = *(v172 + 264);
        v98 = *(v172 + 272);
        v100 = *(v172 + 256);
        v101 = *(v172 + 232);
        if (v169)
        {

          (*(v94 + 8))(v97, v158);
          v102 = OUTLINED_FUNCTION_72_0();
          v161(v102);

          OUTLINED_FUNCTION_46();
          __swift_storeEnumTagSinglePayload(v103, v104, v105, v98);
        }

        else
        {
          (*(v94 + 8))(v97, v158);
          v106 = OUTLINED_FUNCTION_72_0();
          v161(v106);

          v107 = OUTLINED_FUNCTION_201_0();
          if (__swift_getEnumTagSinglePayload(v107, v108, v98) != 1)
          {
            v109 = *(v172 + 344);
            v110 = *(v172 + 320);
            v111 = *(v172 + 288);
            v112 = *(v172 + 272);
            (*v139)(*(v172 + 296), *(v172 + 264), v112);
            v113 = *v138;
            v114 = OUTLINED_FUNCTION_35();
            v113(v114);
            v115 = v140[6];
            sub_1CA94B1C8();
            OUTLINED_FUNCTION_46();
            __swift_storeEnumTagSinglePayload(v116, v117, v118, v119);
            v120 = OUTLINED_FUNCTION_134();
            v113(v120);
            type metadata accessor for DrawerAction.DrawerActionStorage(0);
            OUTLINED_FUNCTION_186_0();
            swift_storeEnumTagMultiPayload();
            sub_1CA94A228();
            sub_1CA435F40(v109, v110 + v115, &qword_1EC4445D0, &qword_1CA983080);
            *(v110 + v140[5]) = 0;
            v121 = sub_1CA94A248();
            v123 = v122;
            v124 = *v142;
            (*v142)(v111, v112);
            v125 = (v110 + v140[7]);
            *v125 = v121;
            v125[1] = v123;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v133 = *(v145 + 16);
              OUTLINED_FUNCTION_21();
              sub_1CA2E5CDC();
              v145 = v134;
            }

            v127 = *(v145 + 16);
            v126 = *(v145 + 24);
            if (v127 >= v126 >> 1)
            {
              OUTLINED_FUNCTION_18(v126);
              sub_1CA2E5CDC();
              v145 = v135;
            }

            v128 = *(v172 + 320);
            v124(*(v172 + 296), *(v172 + 272));
            *(v145 + 16) = v127 + 1;
            v129 = *(v141 + 80);
            OUTLINED_FUNCTION_68_0();
            v131 = *(v130 + 72);
            OUTLINED_FUNCTION_0_31();
            sub_1CA42BA50(v128, v132);
            goto LABEL_33;
          }
        }

        sub_1CA27080C(*(v172 + 264), &qword_1EC4454B0, &unk_1CA983070);
LABEL_33:
        v0 = 0;
        v72 = v152;
        v41 = v154;
        if (v70)
        {
          continue;
        }

        break;
      }

LABEL_25:
      while (1)
      {
        v78 = v77 + 1;
        if (__OFADD__(v77, 1))
        {
          break;
        }

        if (v78 >= v72)
        {
          v136 = *(v172 + 408);
          v137 = *(v172 + 508);

          sub_1CA41916C(v144, v137 & 1, MEMORY[0x1E69E7CC0], v145, v143);

          v5 = *(v172 + 392);
          v4 = *(v172 + 400);
          v6 = *(v172 + 368);
          v8 = *(v172 + 336);
          v7 = *(v172 + 344);
          v10 = *(v172 + 320);
          v9 = *(v172 + 328);
          v11 = *(v172 + 296);
          v149 = *(v172 + 288);
          v151 = *(v172 + 264);
          v153 = *(v172 + 256);
          v155 = *(v172 + 248);
          v157 = *(v172 + 224);
          v12 = *(v172 + 168);
          v167 = *(v172 + 200);
          v170 = *(v143 + 48);
          v164 = *v143;
          v159 = *(v143 + 32);
          v162 = *(v143 + 16);

          OUTLINED_FUNCTION_120_3(v13, v14, v15, v16, v17, v18, v19, v20, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v151, v153, v155, v157, v21, v159);
          *(v12 + 48) = v170;
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_87_3();

          __asm { BRAA            X1, X16 }
        }

        v70 = *(v41 + 8 * v78);
        ++v77;
        if (v70)
        {
          v169 = v0;
          v77 = v78;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_42:
      OUTLINED_FUNCTION_39_5();
    }
  }

  v25 = *(v0 + 376);
  v26 = *(v0 + 384);
  v27 = *(v26 + 16);
  v26 += 16;
  v28 = *(v0 + 508);
  v29 = *(v26 + 64);
  *(v0 + 504) = v29;
  v30 = (v29 + 32) & ~v29;
  *(v0 + 440) = *(v26 + 56);
  *(v0 + 448) = v27;
  v31 = MEMORY[0x1E69E7CC0];
  *(v0 + 456) = 0;
  *(v0 + 464) = v31;
  v32 = *(v0 + 400);
  *(v0 + 472) = v31;
  *(v0 + 480) = v26 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v27(v32, v3 + v30, v25);
  v33 = swift_task_alloc();
  *(v0 + 488) = v33;
  *v33 = v0;
  OUTLINED_FUNCTION_20_14(v33);
  OUTLINED_FUNCTION_87_3();

  return sub_1CA41E650(v34, v35);
}

uint64_t sub_1CA41D9A8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v2 = v1;
  v1[16] = v0;
  v1[17] = v3;
  v1[18] = v4;
  v6 = *(v5 + 488);
  v7 = *(v5 + 176);
  v8 = *v0;
  OUTLINED_FUNCTION_13();
  *v9 = v8;
  *(v11 + 496) = v10;

  v12 = OUTLINED_FUNCTION_78_3();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1CA41DAA8()
{
  v1 = v0[62];
  if (v1 != 4)
  {
    v231 = v0[17];
    v31 = v0[60];
    v238 = v0[59];
    v32 = v0[56];
    v34 = v0[49];
    v33 = v0[50];
    v35 = v0[47];
    v227 = v0[48];
    v36 = v0[46];
    v37 = v0[43];
    v234 = v0[44];
    v38 = v0[38];
    v39 = OUTLINED_FUNCTION_99_3();
    v32(v39);
    v40 = v38[6];
    sub_1CA94B1C8();
    OUTLINED_FUNCTION_46();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
    v45 = OUTLINED_FUNCTION_134();
    v32(v45);
    type metadata accessor for DrawerAction.DrawerActionStorage(0);
    OUTLINED_FUNCTION_186_0();
    swift_storeEnumTagMultiPayload();
    sub_1CA94A488();
    sub_1CA435F40(v37, v36 + v40, &qword_1EC4445D0, &qword_1CA983080);
    *(v36 + v38[5]) = 0;
    sub_1CA94A498();
    OUTLINED_FUNCTION_194();
    v46 = *(v227 + 8);
    v47 = OUTLINED_FUNCTION_61();
    v46(v47);
    v48 = (v36 + v38[7]);
    *v48 = v37;
    v48[1] = v31;
    v0[19] = v231;
    v0[20] = v1;
    v49 = sub_1CA94C408();
    v50 = (v36 + *(v234 + 20));
    *v50 = v49;
    v50[1] = v51;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v0[59];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v202 = *(v30 + 16);
      OUTLINED_FUNCTION_21();
      sub_1CA2E5DA4();
      v30 = v203;
    }

    v54 = *(v30 + 16);
    v53 = *(v30 + 24);
    if (v54 >= v53 >> 1)
    {
      OUTLINED_FUNCTION_18(v53);
      sub_1CA2E5DA4();
      v30 = v204;
    }

    v55 = v0[46];
    v56 = v0[45];
    (v46)(v0[50], v0[47]);
    *(v30 + 16) = v54 + 1;
    v57 = *(v56 + 80);
    OUTLINED_FUNCTION_68_0();
    sub_1CA42BA50(v55, v30 + v58 + *(v56 + 72) * v54);
    v22 = v0[58];
    goto LABEL_11;
  }

  v2 = v0[60];
  v237 = v0[58];
  v3 = v0[56];
  v5 = v0[49];
  v4 = v0[50];
  v6 = v0[47];
  v7 = v0[48];
  v8 = v0[42];
  v9 = v0[43];
  v10 = v0[38];
  v11 = OUTLINED_FUNCTION_99_3();
  v3(v11);
  v12 = v10[6];
  sub_1CA94B1C8();
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  v17 = OUTLINED_FUNCTION_134();
  v3(v17);
  type metadata accessor for DrawerAction.DrawerActionStorage(0);
  OUTLINED_FUNCTION_186_0();
  swift_storeEnumTagMultiPayload();
  sub_1CA94A488();
  sub_1CA435F40(v9, v8 + v12, &qword_1EC4445D0, &qword_1CA983080);
  *(v8 + v10[5]) = 0;
  sub_1CA94A498();
  OUTLINED_FUNCTION_194();
  v18 = *(v7 + 8);
  v19 = OUTLINED_FUNCTION_61();
  (v18)(v19);
  v20 = (v8 + v10[7]);
  *v20 = v9;
  v20[1] = v2;
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v22 = v0[58];
  if ((v21 & 1) == 0)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v24 = *(v22 + 16);
    v23 = *(v22 + 24);
    if (v24 >= v23 >> 1)
    {
      OUTLINED_FUNCTION_18(v23);
      sub_1CA2E5CDC();
      v22 = v201;
    }

    v25 = v0[42];
    v26 = v0[39];
    (v18)(v0[50], v0[47]);
    *(v22 + 16) = v24 + 1;
    v27 = *(v26 + 80);
    OUTLINED_FUNCTION_68_0();
    v28 = *(v26 + 72);
    OUTLINED_FUNCTION_0_31();
    sub_1CA42BA50(v25, v29);
    v30 = v0[59];
LABEL_11:
    v59 = v0[57] + 1;
    if (v59 != v0[54])
    {
      break;
    }

    v60 = v0[52];

    v61 = v0[22];
    v239 = sub_1CA41C450();
    result = sub_1CA25B410(v239);
    v211 = v30;
    v243 = v0;
    if (result)
    {
      v63 = result;
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      v64 = 0;
      v65 = v0;
      v66 = v0[39];
      v61 = v65[38];
      do
      {
        v67 = v22;
        if ((v239 & 0xC000000000000001) != 0)
        {
          v68 = MEMORY[0x1CCAA22D0](v64, v239);
        }

        else
        {
          v68 = *(v239 + 8 * v64 + 32);
        }

        v69 = v68;
        v70 = v243[41];
        v71 = v61[6];
        v72 = sub_1CA94B1C8();
        OUTLINED_FUNCTION_46();
        __swift_storeEnumTagSinglePayload(v73, v74, v75, v72);
        *v70 = v69;
        type metadata accessor for DrawerAction.DrawerActionStorage(0);
        swift_storeEnumTagMultiPayload();
        v76 = v69;
        sub_1CA27080C(v70 + v71, &qword_1EC4445D0, &qword_1CA983080);
        OUTLINED_FUNCTION_46();
        __swift_storeEnumTagSinglePayload(v77, v78, v79, v72);
        *(v70 + v61[5]) = 0;
        v80 = [v76 identifier];
        v81 = sub_1CA94C3A8();
        v83 = v82;

        v84 = (v70 + v61[7]);
        *v84 = v81;
        v84[1] = v83;
        v22 = v67;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = *(v67 + 16);
          OUTLINED_FUNCTION_21();
          sub_1CA2E5CDC();
          v22 = v92;
        }

        v86 = *(v22 + 16);
        v85 = *(v22 + 24);
        if (v86 >= v85 >> 1)
        {
          OUTLINED_FUNCTION_17_1(v85);
          sub_1CA2E5CDC();
          v22 = v93;
        }

        ++v64;
        v87 = v243[41];

        *(v22 + 16) = v86 + 1;
        v88 = *(v66 + 80);
        OUTLINED_FUNCTION_68_0();
        v89 = *(v66 + 72);
        OUTLINED_FUNCTION_0_31();
        sub_1CA42BA50(v87, v90);
      }

      while (v63 != v64);
    }

    if (qword_1EC442D40 != -1)
    {
      OUTLINED_FUNCTION_39_5();
    }

    v0 = v243;
    v208 = v243[38];
    v209 = v243[39];
    v104 = v243[35];
    v105 = v243[30];
    v106 = v243[27];
    OUTLINED_FUNCTION_50_3(qword_1EC445100);
    v18 = v108 & v107;
    v110 = (63 - v109) >> 6;
    HIDWORD(v216) = *MEMORY[0x1E69DA9C0];
    OUTLINED_FUNCTION_63_5();
    v206 = v111;
    v207 = v112;
    v210 = (v113 + 8);
    v114 = v243[53];
    v223 = v115;
    sub_1CA94C218();
    v116 = 0;
    v212 = MEMORY[0x1E69E7CC0];
    v219 = v61;
    v221 = v22;
    for (i = v110; v18; v61 = v219)
    {
      v240 = v114;
LABEL_35:
      v235 = v0[51];
      v118 = v0[32];
      v232 = v0[33];
      v119 = v0[31];
      v120 = v0[28];
      v228 = v0[29];
      v121 = v0[26];
      v18 &= v18 - 1;
      v122 = *(v223 + 48);
      OUTLINED_FUNCTION_94_2();
      v124 = *v123;
      v125 = v123[1];
      sub_1CA94C218();
      sub_1CA94A3E8();
      swift_getKeyPath();
      v126 = swift_allocObject();
      *(v126 + 16) = v124;
      *(v126 + 24) = v125;
      *v120 = v126;
      v127 = OUTLINED_FUNCTION_125_2();
      v128(v127, HIDWORD(v216), v121);
      OUTLINED_FUNCTION_34_10();
      sub_1CA435D64(&qword_1EC441D50, 255, v129);
      OUTLINED_FUNCTION_33_9();
      sub_1CA276B98(&qword_1EDB9F7C0, &unk_1EC444CC0, &unk_1CA9867F0);
      sub_1CA94A838();

      v130 = OUTLINED_FUNCTION_125_2();
      v131(v130, v121);
      v132 = v228;
      v229 = *v213;
      (*v213)(v119, v132);
      v225 = sub_1CA948E58();
      OUTLINED_FUNCTION_1_0(v225);
      v134 = v133;
      v136 = *(v135 + 64) + 15;
      v137 = swift_task_alloc();
      sub_1CA948D98();
      sub_1CA94A6E8();
      v139 = v0[33];
      v138 = v0[34];
      v140 = v0[32];
      v141 = v0[29];
      if (v240)
      {

        (*(v134 + 8))(v137, v225);
        v142 = OUTLINED_FUNCTION_162();
        v229(v142);

        OUTLINED_FUNCTION_46();
        __swift_storeEnumTagSinglePayload(v143, v144, v145, v138);
      }

      else
      {
        (*(v134 + 8))(v137, v225);
        v146 = OUTLINED_FUNCTION_162();
        v229(v146);

        v147 = OUTLINED_FUNCTION_201_0();
        if (__swift_getEnumTagSinglePayload(v147, v148, v138) != 1)
        {
          v0 = v243;
          v241 = v243[43];
          v149 = v243[40];
          v150 = v243[36];
          v151 = v243[37];
          v152 = v243[33];
          v153 = v243[34];
          v154 = OUTLINED_FUNCTION_125_2();
          v155(v154);
          v156 = *v206;
          (*v206)(v150, v151, v153);
          v157 = v208[6];
          sub_1CA94B1C8();
          OUTLINED_FUNCTION_46();
          __swift_storeEnumTagSinglePayload(v158, v159, v160, v161);
          v162 = OUTLINED_FUNCTION_23();
          v156(v162);
          type metadata accessor for DrawerAction.DrawerActionStorage(0);
          swift_storeEnumTagMultiPayload();
          sub_1CA94A228();
          sub_1CA435F40(v241, v149 + v157, &qword_1EC4445D0, &qword_1CA983080);
          *(v149 + v208[5]) = 0;
          sub_1CA94A248();
          OUTLINED_FUNCTION_194();
          v163 = *v210;
          v164 = OUTLINED_FUNCTION_52_0();
          v163(v164);
          v165 = (v149 + v208[7]);
          *v165 = v241;
          v165[1] = v157;
          v22 = v221;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v173 = *(v212 + 16);
            OUTLINED_FUNCTION_21();
            sub_1CA2E5CDC();
            v212 = v174;
          }

          v167 = *(v212 + 16);
          v166 = *(v212 + 24);
          if (v167 >= v166 >> 1)
          {
            OUTLINED_FUNCTION_18(v166);
            sub_1CA2E5CDC();
            v212 = v175;
          }

          v168 = v243[40];
          (v163)(v243[37], v243[34]);
          *(v212 + 16) = v167 + 1;
          v169 = *(v209 + 80);
          OUTLINED_FUNCTION_68_0();
          v171 = *(v170 + 72);
          OUTLINED_FUNCTION_0_31();
          sub_1CA42BA50(v168, v172);
          v114 = 0;
          goto LABEL_39;
        }
      }

      v0 = v243;
      sub_1CA27080C(v243[33], &qword_1EC4454B0, &unk_1CA983070);
      v114 = 0;
      v22 = v221;
LABEL_39:
      v110 = i;
    }

    while (1)
    {
      v117 = v116 + 1;
      if (__OFADD__(v116, 1))
      {
        break;
      }

      if (v117 >= v110)
      {
        v176 = v0[51];
        v177 = *(v0 + 254);

        sub_1CA41916C(v22, v177 & 1, v211, v212, v0 + 9);

        v179 = v0[49];
        v178 = v0[50];
        v180 = v0[46];
        v182 = v0[42];
        v181 = v0[43];
        v184 = v0[40];
        v183 = v0[41];
        v186 = v0[36];
        v185 = v0[37];
        v218 = v0[33];
        v220 = v0[32];
        v222 = v0[31];
        v224 = v0[28];
        v187 = v0[21];
        v236 = v0[25];
        v242 = v0[15];
        v233 = *(v0 + 9);
        v226 = *(v0 + 13);
        v230 = *(v0 + 11);

        OUTLINED_FUNCTION_120_3(v188, v189, v190, v191, v192, v193, v194, v195, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v218, v220, v222, v224, v196, v226);
        *(v187 + 48) = v242;
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_87_3();

        __asm { BRAA            X1, X16 }
      }

      v18 = *&v61[2 * v117];
      ++v116;
      if (v18)
      {
        v240 = v114;
        v116 = v117;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_50:
    v199 = *(v22 + 16);
    OUTLINED_FUNCTION_21();
    sub_1CA2E5CDC();
    v22 = v200;
  }

  v0[57] = v59;
  v0[58] = v22;
  v94 = v0[56];
  v95 = v0[50];
  v96 = v0[47];
  v97 = *(v0 + 254);
  v98 = v0[52] + ((*(v0 + 504) + 32) & ~*(v0 + 504)) + v0[55] * v59;
  v99 = (v0[48] + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v0[59] = v30;
  v0[60] = v99;
  v94(v95, v98, v96);
  v100 = swift_task_alloc();
  v0[61] = v100;
  *v100 = v0;
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_87_3();

  return sub_1CA41E650(v101, v102);
}

uint64_t sub_1CA41E650(uint64_t a1, __int16 a2)
{
  *(v3 + 468) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_1CA94B6B8();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();
  v7 = sub_1CA94B018();
  *(v3 + 72) = v7;
  v8 = *(v7 - 8);
  *(v3 + 80) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  v10 = sub_1CA94B058();
  *(v3 + 104) = v10;
  v11 = *(v10 - 8);
  *(v3 + 112) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080) - 8) + 64) + 15;
  *(v3 + 152) = swift_task_alloc();
  v14 = sub_1CA94B1C8();
  *(v3 + 160) = v14;
  v15 = *(v14 - 8);
  *(v3 + 168) = v15;
  v16 = *(v15 + 64) + 15;
  *(v3 + 176) = swift_task_alloc();
  v17 = sub_1CA94A4E8();
  *(v3 + 184) = v17;
  v18 = *(v17 - 8);
  *(v3 + 192) = v18;
  v19 = *(v18 + 64) + 15;
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  v20 = sub_1CA949F78();
  *(v3 + 248) = v20;
  v21 = *(v20 - 8);
  *(v3 + 256) = v21;
  v22 = *(v21 + 64) + 15;
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 304) = swift_task_alloc();
  v23 = sub_1CA94A628();
  *(v3 + 312) = v23;
  v24 = *(v23 - 8);
  *(v3 + 320) = v24;
  v25 = *(v24 + 64) + 15;
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA41EA40, v2, 0);
}

uint64_t sub_1CA41EA40()
{
  v287 = v0;
  if ((*(v0 + 468) & 0x100) != 0)
  {
    OUTLINED_FUNCTION_140_2();
    sub_1CA94A618();
    OUTLINED_FUNCTION_32_8();
    sub_1CA435D64(v3, 255, v4);
    v5 = OUTLINED_FUNCTION_142_2();
    v6 = *(v1 + 8);
    v1 += 8;
    v7 = OUTLINED_FUNCTION_69_0();
    v6(v7);
    v8 = OUTLINED_FUNCTION_107_0();
    v6(v8);
    if ((v5 & 1) == 0)
    {
      v50 = *(v0 + 304);
      v51 = *(v0 + 240);
      v52 = *(v0 + 184);
      v53 = *(v0 + 192);
      v54 = *(v0 + 16);
      v55 = *MEMORY[0x1E69E10A0];
      sub_1CA949C58();
      v56 = OUTLINED_FUNCTION_43_8();
      v57(v56);
      v23 = sub_1CA949F68();
      v58 = sub_1CA94CBF8();
      v59 = OUTLINED_FUNCTION_107_2(v58);
      v60 = *(v0 + 304);
      v62 = *(v0 + 248);
      v61 = *(v0 + 256);
      v63 = *(v0 + 240);
      v65 = *(v0 + 184);
      v64 = *(v0 + 192);
      if (v59)
      {
        OUTLINED_FUNCTION_150_0();
        v66 = OUTLINED_FUNCTION_67_4();
        OUTLINED_FUNCTION_80_3(v66);
        *v62 = 136315138;
        sub_1CA94A498();
        v67 = OUTLINED_FUNCTION_14_19();
        v68(v67);
        OUTLINED_FUNCTION_105_3();
        OUTLINED_FUNCTION_87();

        *(v62 + 4) = v63;
        OUTLINED_FUNCTION_41_7(&dword_1CA256000, v69, v70, "Not showing tool %s in the drawer because it's not resident compatible");
        __swift_destroy_boxed_opaque_existential_0(v2);
        OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_26();

        (*(v61 + 8))();
        goto LABEL_53;
      }

      goto LABEL_64;
    }
  }

  OUTLINED_FUNCTION_140_2();
  sub_1CA94A608();
  OUTLINED_FUNCTION_32_8();
  sub_1CA435D64(v9, 255, v10);
  v11 = OUTLINED_FUNCTION_142_2();
  v12 = *(v1 + 8);
  v13 = OUTLINED_FUNCTION_69_0();
  v12(v13);
  v14 = OUTLINED_FUNCTION_107_0();
  v12(v14);
  if (v11)
  {
    v15 = *(v0 + 296);
    v16 = *(v0 + 232);
    v17 = *(v0 + 184);
    v18 = *(v0 + 192);
    v19 = *(v0 + 16);
    v20 = *MEMORY[0x1E69E10A0];
    sub_1CA949C58();
    v21 = OUTLINED_FUNCTION_43_8();
    v22(v21);
    v23 = sub_1CA949F68();
    v24 = sub_1CA94CBF8();
    v25 = OUTLINED_FUNCTION_107_2(v24);
    v26 = *(v0 + 296);
    v28 = *(v0 + 248);
    v27 = *(v0 + 256);
    v29 = *(v0 + 232);
    v31 = *(v0 + 184);
    v30 = *(v0 + 192);
    if (v25)
    {
      OUTLINED_FUNCTION_150_0();
      v32 = OUTLINED_FUNCTION_67_4();
      OUTLINED_FUNCTION_80_3(v32);
      *v28 = 136315138;
      sub_1CA94A498();
      v33 = OUTLINED_FUNCTION_14_19();
      v34(v33);
      OUTLINED_FUNCTION_105_3();
      OUTLINED_FUNCTION_87();

      *(v28 + 4) = v29;
      OUTLINED_FUNCTION_41_7(&dword_1CA256000, v35, v36, "Not showing tool %s in the drawer because it's discontinued");
      __swift_destroy_boxed_opaque_existential_0(v2);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();

      (*(v27 + 8))();
      goto LABEL_53;
    }

LABEL_64:

    v236 = OUTLINED_FUNCTION_17_8();
    v237(v236);
    v238 = OUTLINED_FUNCTION_79_3();
    v240(v238, v239);
    goto LABEL_53;
  }

  v38 = *(v0 + 168);
  v37 = *(v0 + 176);
  v39 = *(v0 + 160);
  v40 = *(v0 + 16);
  sub_1CA94A458();
  v41 = sub_1CA94B0F8();
  v43 = v42;
  v44 = *(v38 + 8);
  v45 = OUTLINED_FUNCTION_69_0();
  v44(v45);
  v46 = *MEMORY[0x1E69E0FB0];
  if (v41 == sub_1CA94C3A8() && v43 == v47)
  {
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v49 = sub_1CA94D7F8();

    if ((v49 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v72 = *(v0 + 152);
  v71 = *(v0 + 160);
  v73 = *(v0 + 16);
  sub_1CA94A488();
  v74 = OUTLINED_FUNCTION_201_0();
  if (__swift_getEnumTagSinglePayload(v74, v75, v71) == 1)
  {
    sub_1CA27080C(*(v0 + 152), &qword_1EC4445D0, &qword_1CA983080);
  }

  else
  {
    v77 = *(v0 + 152);
    v76 = *(v0 + 160);
    sub_1CA94B0F8();
    (v44)(v77, v76);
    if (sub_1CA94C528())
    {
    }

    else
    {
      sub_1CA25B3D0(0, &qword_1EC441980, 0x1E69635F8);
      v78 = OUTLINED_FUNCTION_3_3();
      v80 = sub_1CA4205FC(v78, v79);

      if (!v80)
      {
        v215 = *(v0 + 288);
        v216 = *(v0 + 224);
        v217 = *(v0 + 184);
        v218 = *(v0 + 192);
        v219 = *(v0 + 16);
        v220 = *MEMORY[0x1E69E10A0];
        sub_1CA949C58();
        v221 = OUTLINED_FUNCTION_43_8();
        v222(v221);
        v23 = sub_1CA949F68();
        v223 = sub_1CA94CBF8();
        v224 = OUTLINED_FUNCTION_107_2(v223);
        v225 = *(v0 + 288);
        v227 = *(v0 + 248);
        v226 = *(v0 + 256);
        v228 = *(v0 + 224);
        v230 = *(v0 + 184);
        v229 = *(v0 + 192);
        if (v224)
        {
          OUTLINED_FUNCTION_150_0();
          v231 = OUTLINED_FUNCTION_67_4();
          OUTLINED_FUNCTION_80_3(v231);
          *v227 = 136315138;
          sub_1CA94A498();
          v232 = OUTLINED_FUNCTION_14_19();
          v233(v232);
          OUTLINED_FUNCTION_105_3();
          OUTLINED_FUNCTION_87();

          *(v227 + 4) = v228;
          OUTLINED_FUNCTION_41_7(&dword_1CA256000, v234, v235, "Not showing tool %s in the drawer because the app is not installed");
          __swift_destroy_boxed_opaque_existential_0(v2);
          OUTLINED_FUNCTION_26();
          OUTLINED_FUNCTION_26();

          (*(v226 + 8))();
          goto LABEL_53;
        }

        goto LABEL_64;
      }
    }
  }

LABEL_22:
  v81 = *(v0 + 16);
  v82 = sub_1CA94A438();
  *(v0 + 344) = v82;
  v83 = *(v82 + 16);
  *(v0 + 352) = v83;
  if (!v83)
  {
    v85 = MEMORY[0x1E69E7CC0];
    goto LABEL_46;
  }

  v84 = 0;
  *(v0 + 424) = *(*(v0 + 112) + 80);
  *(v0 + 428) = *MEMORY[0x1E69DB220];
  *(v0 + 432) = *MEMORY[0x1E69DB218];
  *(v0 + 436) = *MEMORY[0x1E69DB208];
  *(v0 + 440) = *MEMORY[0x1E69DB200];
  *(v0 + 444) = *MEMORY[0x1E69DB1F8];
  *(v0 + 448) = *MEMORY[0x1E69DB1D8];
  *(v0 + 452) = *MEMORY[0x1E69DB1D0];
  *(v0 + 456) = *MEMORY[0x1E69DB1E0];
  *(v0 + 460) = *MEMORY[0x1E69DB1E8];
  *(v0 + 464) = *MEMORY[0x1E69DB1F0];
  v85 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    *(v0 + 368) = v85;
    *(v0 + 376) = v85;
    OUTLINED_FUNCTION_118_2(v84);
    if (v87)
    {
      break;
    }

    v88 = *(v0 + 428);
    v89 = *(v0 + 424);
    v91 = *(v0 + 136);
    v90 = *(v0 + 144);
    v92 = *(v0 + 112);
    v94 = v92 + 16;
    v93 = *(v92 + 16);
    OUTLINED_FUNCTION_55_4(v86);
    *(v0 + 384) = v93;
    *(v0 + 392) = v95;
    v96 = OUTLINED_FUNCTION_99_3();
    (v93)(v96);
    v97 = OUTLINED_FUNCTION_134();
    (v93)(v97);
    v99 = *(v92 + 88);
    v98 = (v92 + 88);
    v100 = OUTLINED_FUNCTION_69_0();
    v102 = v101(v100);
    if (v102 == v88)
    {
      v103 = OUTLINED_FUNCTION_54_3();
      v104(v103);
      v105 = v85[4];
      v106 = OUTLINED_FUNCTION_134();
      (v105)(v106);
      v107 = OUTLINED_FUNCTION_116_2();
      v108(v107);
      v109 = v98;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v157 = v98[2];
        OUTLINED_FUNCTION_21();
        sub_1CA2E5C14();
        v109 = v158;
      }

      v111 = v109[2];
      v110 = v109[3];
      v284 = v111 + 1;
      if (v111 >= v110 >> 1)
      {
        OUTLINED_FUNCTION_64(v110);
        OUTLINED_FUNCTION_160();
        sub_1CA2E5C14();
        v109 = v159;
      }

      v112 = OUTLINED_FUNCTION_69_5();
      v113(v112);
      v114 = v85[1];
      v115 = OUTLINED_FUNCTION_69_0();
      v116(v115);
      v85 = v109;
      v109[2] = v284;
      v117 = *(v105 + 72);
      OUTLINED_FUNCTION_68_0();
      v119 = OUTLINED_FUNCTION_73_5(v118);
      v120(v119);
    }

    else
    {
      if (v102 == *(v0 + 432) || v102 == *(v0 + 436))
      {
        v204 = OUTLINED_FUNCTION_72_3();
        v205(v204);
        v206 = *(MEMORY[0x1E69DB210] + 4);
        v207 = swift_task_alloc();
        *(v0 + 416) = v207;
        *v207 = v0;
        OUTLINED_FUNCTION_25_8(v207);
        OUTLINED_FUNCTION_51_0();

        return MEMORY[0x1EEE4B148]();
      }

      v285 = v85;
      v122 = *(v0 + 136);
      v123 = *(v0 + 104);
      v124 = *(v0 + 112);
      if (v102 == *(v0 + 440))
      {
        LODWORD(v284) = *(v0 + 444);
        v126 = *(v0 + 88);
        v125 = *(v0 + 96);
        v128 = *(v0 + 72);
        v127 = *(v0 + 80);
        v129 = *(v124 + 96);
        v130 = OUTLINED_FUNCTION_52_0();
        v131(v130);
        v132 = v127[4];
        v133 = OUTLINED_FUNCTION_129();
        v134(v133);
        v135 = v127[2];
        v136 = OUTLINED_FUNCTION_104();
        v137(v136);
        v139 = v127[11];
        v138 = v127 + 11;
        v140 = OUTLINED_FUNCTION_126();
        v142 = v141(v140);
        if (v142 != v284)
        {
          OUTLINED_FUNCTION_77_4(v142);
          if ((v144 & 1) == 0 && v143 != *(v0 + 464))
          {
            v241 = *(v0 + 72);
            OUTLINED_FUNCTION_51_0();

            return sub_1CA94D7E8();
          }

          v145 = *(v0 + 96);
          type metadata accessor for ActionAvailabilityRequestResolver();
          v146 = OUTLINED_FUNCTION_5_3();
          if ((static ActionAvailabilityRequestResolver.isActionAvailable(for:)(v146) & 1) == 0)
          {
            OUTLINED_FUNCTION_57_4();
            v244 = *(v0 + 104);
            v245 = *(v0 + 16);

            v246 = *MEMORY[0x1E69E10A0];
            sub_1CA949C58();
            v248 = v138[2];
            v247 = v138 + 2;
            v248(v123, v245, v125);
            (v93)(v128, v284, v244);
            v249 = sub_1CA949F68();
            v283 = sub_1CA94CBF8();
            os_log_type_enabled(v249, v283);
            OUTLINED_FUNCTION_56_4();
            if (v250)
            {
              OUTLINED_FUNCTION_30_2();
              v286 = OUTLINED_FUNCTION_138_0();
              *v93 = 136315394;
              v282 = v245;
              v251 = sub_1CA94A498();
              v253 = v252;
              v254 = *(v94 + 8);
              v255 = OUTLINED_FUNCTION_61();
              v256(v255);
              v257 = sub_1CA26B54C(v251, v253, &v286);

              OUTLINED_FUNCTION_81_3();
              OUTLINED_FUNCTION_8_12();
              sub_1CA435D64(v258, 255, v259);
              OUTLINED_FUNCTION_139_3();
              v260 = OUTLINED_FUNCTION_102_1();
              v253(v260);
              v261 = OUTLINED_FUNCTION_61();
              sub_1CA26B54C(v261, v262, v263);
              OUTLINED_FUNCTION_139();

              *(v93 + 14) = v257;
              OUTLINED_FUNCTION_40_5();
              _os_log_impl(v264, v265, v266, v267, v93, 0x16u);
              OUTLINED_FUNCTION_141_2();
              OUTLINED_FUNCTION_26();
              OUTLINED_FUNCTION_26();

              v269 = v247[1];
              v268 = v247 + 1;
              v269(v93, v282);
            }

            else
            {

              v253 = *(v244 + 8);
              (v253)(v284, v123);
              v270 = *(v94 + 8);
              v271 = OUTLINED_FUNCTION_61();
              v272(v271);
              v273 = v247[1];
              v268 = v247 + 1;
              v274 = OUTLINED_FUNCTION_72_0();
              v276(v274, v275);
            }

            OUTLINED_FUNCTION_111_3();
            v277 = v268[1];
            v278 = OUTLINED_FUNCTION_70();
            v279(v278);
            v280 = OUTLINED_FUNCTION_52_0();
            v253(v280);

            goto LABEL_53;
          }
        }

        v147 = *(v0 + 144);
        v149 = *(v0 + 104);
        v148 = *(v0 + 112);
        v150 = OUTLINED_FUNCTION_85_4();
        v151(v150);
        v152 = *(v148 + 8);
        v153 = OUTLINED_FUNCTION_52_0();
        v154(v153);
      }

      else
      {
        v155 = *(v124 + 8);
        (v155)(*(v0 + 144), *(v0 + 104));
        v156 = OUTLINED_FUNCTION_52_0();
        v155(v156);
      }

      v85 = v285;
    }

    v84 = *(v0 + 360) + 1;
    if (v84 == *(v0 + 352))
    {
      v160 = *(v0 + 344);
LABEL_46:

      v161 = v85[2];
      if (v161)
      {
        v162 = *(v0 + 40);
        sub_1CA94C218();
        v163 = 0;
        while (v161 != v163)
        {
          if (v163 >= v85[2])
          {
            goto LABEL_73;
          }

          v164 = *(v0 + 48);
          v165 = *(v0 + 32);
          v166 = *(v162 + 80);
          OUTLINED_FUNCTION_68_0();
          (*(v162 + 16))(v164, v85 + v167 + *(v162 + 72) * v163++, v165);
          v168 = sub_1CA94B678();
          v169 = *(v162 + 8);
          v170 = OUTLINED_FUNCTION_52_0();
          v171(v170);
          if (v168)
          {
            swift_bridgeObjectRelease_n();
            goto LABEL_53;
          }
        }

        v175 = *(v0 + 264);
        v176 = v85;
        v177 = *(v0 + 192);
        v178 = *(v0 + 200);
        v179 = *(v0 + 184);
        v180 = *(v0 + 16);

        v181 = *MEMORY[0x1E69E10A0];
        sub_1CA949C58();
        v182 = OUTLINED_FUNCTION_115_2();
        v183(v182);
        v184 = sub_1CA949F68();
        v185 = sub_1CA94CBF8();
        v186 = os_log_type_enabled(v184, v185);
        v188 = *(v0 + 256);
        v187 = *(v0 + 264);
        v189 = *(v0 + 248);
        v191 = *(v0 + 192);
        v190 = *(v0 + 200);
        v192 = *(v0 + 184);
        if (v186)
        {
          v281 = *(v0 + 32);
          OUTLINED_FUNCTION_30_2();
          v286 = OUTLINED_FUNCTION_138_0();
          *v176 = 136315394;
          sub_1CA94A498();
          v193 = *(v191 + 8);
          v194 = OUTLINED_FUNCTION_52_0();
          v195(v194);
          v196 = OUTLINED_FUNCTION_120();
          sub_1CA26B54C(v196, v197, v198);

          OUTLINED_FUNCTION_81_3();
          v199 = sub_1CA94C218();
          MEMORY[0x1CCAA14D0](v199, v281);

          v200 = OUTLINED_FUNCTION_52_0();
          v203 = sub_1CA26B54C(v200, v201, v202);

          *(v176 + 14) = v203;
          _os_log_impl(&dword_1CA256000, v184, v185, "Not showing tool %s in the drawer due to unsatisifed platform availability: %s", v176, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_26();
          OUTLINED_FUNCTION_26();

          (*(v188 + 8))(v187, v189);
        }

        else
        {

          v209 = *(v191 + 8);
          v210 = OUTLINED_FUNCTION_52_0();
          v211(v210);
          v212 = *(v188 + 8);
          v213 = OUTLINED_FUNCTION_107_0();
          v214(v213);
        }
      }

LABEL_53:
      OUTLINED_FUNCTION_19_10();

      v172 = *(v0 + 8);
      OUTLINED_FUNCTION_51_0();

      __asm { BRAA            X3, X16 }
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
  return MEMORY[0x1EEE4B148]();
}

uint64_t sub_1CA41F944()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v2 = v1;
  v4 = *(v3 + 416);
  v5 = *(v3 + 24);
  v6 = *v0;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  *(v9 + 470) = v8;

  v10 = OUTLINED_FUNCTION_78_3();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1CA41FA40()
{
  v242 = v0;
  if ((*(v0 + 470) & 1) == 0)
  {
    v84 = *(v0 + 384);
    v238 = *(v0 + 392);
    v85 = *(v0 + 344);
    v86 = *(v0 + 280);
    v87 = *(v0 + 216);
    v88 = *(v0 + 184);
    v89 = *(v0 + 192);
    v90 = *(v0 + 144);
    v91 = *(v0 + 128);
    v92 = *(v0 + 104);
    v93 = *(v0 + 16);

    v94 = *MEMORY[0x1E69E10A0];
    sub_1CA949C58();
    (*(v89 + 16))(v87, v93, v88);
    v95 = OUTLINED_FUNCTION_104();
    v84(v95);
    v96 = sub_1CA949F68();
    v232 = sub_1CA94CBF8();
    v97 = os_log_type_enabled(v96, v232);
    v236 = *(v0 + 400);
    v239 = *(v0 + 408);
    v98 = *(v0 + 280);
    v100 = *(v0 + 248);
    v99 = *(v0 + 256);
    v101 = *(v0 + 216);
    v102 = *(v0 + 184);
    v103 = *(v0 + 192);
    v104 = *(v0 + 128);
    v105 = *(v0 + 104);
    if (v97)
    {
      v229 = *(v0 + 248);
      v106 = OUTLINED_FUNCTION_30_2();
      v241 = swift_slowAlloc();
      *v106 = 136315394;
      v227 = v98;
      v107 = sub_1CA94A498();
      v109 = v108;
      v110 = *(v103 + 8);
      v111 = OUTLINED_FUNCTION_3_3();
      v112(v111);
      sub_1CA26B54C(v107, v109, &v241);
      OUTLINED_FUNCTION_101_3();

      *(v106 + 4) = v101;
      *(v106 + 12) = 2080;
      OUTLINED_FUNCTION_8_12();
      sub_1CA435D64(v113, 255, v114);
      v115 = sub_1CA94D798();
      v236(v104, v105);
      v116 = OUTLINED_FUNCTION_3_3();
      sub_1CA26B54C(v116, v117, v118);
      OUTLINED_FUNCTION_87();

      *(v106 + 14) = v115;
      OUTLINED_FUNCTION_40_5();
      _os_log_impl(v119, v120, v121, v122, v106, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();

      (*(v99 + 8))(v227, v229);
    }

    else
    {

      v236(v104, v105);
      v123 = *(v103 + 8);
      v124 = OUTLINED_FUNCTION_3_3();
      v125(v124);
      (*(v99 + 8))(v98, v100);
    }

    v127 = *(v0 + 400);
    v126 = *(v0 + 408);
    v128 = *(v0 + 376);
    v129 = *(v0 + 144);
    v130 = *(v0 + 104);
    sub_1CA94B028();
    v131 = OUTLINED_FUNCTION_52_0();
    v127(v131);
LABEL_28:

LABEL_39:
    OUTLINED_FUNCTION_19_10();

    v152 = *(v0 + 8);
    OUTLINED_FUNCTION_51_0();

    __asm { BRAA            X3, X16 }
  }

  v1 = *(v0 + 408);
  (*(v0 + 400))(*(v0 + 144), *(v0 + 104));
  v3 = *(v0 + 368);
  v2 = *(v0 + 376);
  while (1)
  {
    v4 = *(v0 + 360) + 1;
    if (v4 == *(v0 + 352))
    {
      v132 = *(v0 + 344);

      v133 = v2[2];
      if (v133)
      {
        v134 = *(v0 + 40);
        sub_1CA94C218();
        v135 = 0;
        do
        {
          if (v133 == v135)
          {
            v155 = *(v0 + 264);
            v156 = *(v0 + 192);
            v157 = *(v0 + 200);
            v158 = *(v0 + 184);
            v159 = *(v0 + 16);

            v160 = *MEMORY[0x1E69E10A0];
            sub_1CA949C58();
            (*(v156 + 16))(v157, v159, v158);
            v161 = sub_1CA949F68();
            v162 = sub_1CA94CBF8();
            v163 = os_log_type_enabled(v161, v162);
            v165 = *(v0 + 256);
            v164 = *(v0 + 264);
            v166 = *(v0 + 248);
            v168 = *(v0 + 192);
            v167 = *(v0 + 200);
            v169 = *(v0 + 184);
            if (v163)
            {
              v226 = *(v0 + 32);
              v240 = *(v0 + 264);
              v170 = OUTLINED_FUNCTION_30_2();
              v241 = swift_slowAlloc();
              *v170 = 136315394;
              v230 = v166;
              v171 = sub_1CA94A498();
              v233 = v162;
              v173 = v172;
              v174 = *(v168 + 8);
              v175 = OUTLINED_FUNCTION_61();
              v176(v175);
              v177 = sub_1CA26B54C(v171, v173, &v241);

              *(v170 + 4) = v177;
              *(v170 + 12) = 2080;
              v178 = sub_1CA94C218();
              v179 = MEMORY[0x1CCAA14D0](v178, v226);

              v180 = OUTLINED_FUNCTION_61();
              sub_1CA26B54C(v180, v181, v182);
              OUTLINED_FUNCTION_139();

              *(v170 + 14) = v179;
              _os_log_impl(&dword_1CA256000, v161, v233, "Not showing tool %s in the drawer due to unsatisifed platform availability: %s", v170, 0x16u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_26();
              OUTLINED_FUNCTION_26();

              (*(v165 + 8))(v240, v230);
            }

            else
            {

              v212 = *(v168 + 8);
              v213 = OUTLINED_FUNCTION_61();
              v214(v213);
              (*(v165 + 8))(v164, v166);
            }

            goto LABEL_39;
          }

          if (v135 >= v2[2])
          {
            goto LABEL_53;
          }

          v136 = *(v0 + 48);
          v137 = *(v0 + 32);
          v138 = *(v134 + 80);
          OUTLINED_FUNCTION_68_0();
          v139 = *(v134 + 72);
          v140 = *(v134 + 16);
          v141 = OUTLINED_FUNCTION_99_3();
          v142(v141);
          ++v135;
          v143 = sub_1CA94B678();
          v144 = *(v134 + 8);
          v145 = OUTLINED_FUNCTION_61();
          v146(v145);
        }

        while ((v143 & 1) == 0);
        swift_bridgeObjectRelease_n();
      }

      else
      {
      }

      goto LABEL_39;
    }

    *(v0 + 368) = v3;
    *(v0 + 376) = v2;
    OUTLINED_FUNCTION_118_2(v4);
    if (v6)
    {
      break;
    }

    v7 = *(v0 + 428);
    v8 = *(v0 + 424);
    v10 = *(v0 + 136);
    v9 = *(v0 + 144);
    v11 = *(v0 + 112);
    v13 = v11 + 16;
    v12 = *(v11 + 16);
    OUTLINED_FUNCTION_55_4(v5);
    *(v0 + 384) = v12;
    *(v0 + 392) = v14;
    v12(v9);
    v15 = OUTLINED_FUNCTION_129();
    v12(v15);
    v17 = *(v11 + 88);
    v16 = (v11 + 88);
    v18 = OUTLINED_FUNCTION_70();
    v20 = v19(v18);
    if (v20 == v7)
    {
      v63 = OUTLINED_FUNCTION_54_3();
      v64(v63);
      v65 = v2[4];
      v66 = OUTLINED_FUNCTION_134();
      (v65)(v66);
      v67 = OUTLINED_FUNCTION_116_2();
      v68(v67);
      v69 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v81 = v16[2];
        OUTLINED_FUNCTION_21();
        sub_1CA2E5C14();
        v69 = v82;
      }

      v71 = v69[2];
      v70 = v69[3];
      if (v71 >= v70 >> 1)
      {
        OUTLINED_FUNCTION_64(v70);
        OUTLINED_FUNCTION_160();
        sub_1CA2E5C14();
        v69 = v83;
      }

      v72 = OUTLINED_FUNCTION_69_5();
      v73(v72);
      v74 = v2[1];
      v75 = OUTLINED_FUNCTION_69_0();
      v76(v75);
      v2 = v69;
      v69[2] = v71 + 1;
      v77 = *(v65 + 72);
      OUTLINED_FUNCTION_68_0();
      v79 = OUTLINED_FUNCTION_73_5(v78);
      v80(v79);
      v3 = v69;
    }

    else
    {
      if (v20 == *(v0 + 432) || v20 == *(v0 + 436))
      {
        v147 = OUTLINED_FUNCTION_72_3();
        v148(v147);
        v149 = *(MEMORY[0x1E69DB210] + 4);
        v150 = swift_task_alloc();
        *(v0 + 416) = v150;
        *v150 = v0;
        OUTLINED_FUNCTION_25_8();
        OUTLINED_FUNCTION_51_0();

        return MEMORY[0x1EEE4B148]();
      }

      v237 = v2;
      v22 = *(v0 + 136);
      v24 = *(v0 + 104);
      v23 = *(v0 + 112);
      if (v20 != *(v0 + 440))
      {
        v49 = *(v23 + 8);
        (v49)(*(v0 + 144), *(v0 + 104));
        v50 = OUTLINED_FUNCTION_61();
        v49(v50);
        goto LABEL_18;
      }

      v235 = v3;
      v231 = *(v0 + 444);
      v26 = *(v0 + 88);
      v25 = *(v0 + 96);
      v28 = *(v0 + 72);
      v27 = *(v0 + 80);
      v30 = *(v23 + 96);
      v29 = v23 + 96;
      v31 = OUTLINED_FUNCTION_61();
      v32(v31);
      v33 = *(v27 + 32);
      v34 = OUTLINED_FUNCTION_97_4();
      v35(v34);
      (*(v27 + 16))(v26, v25, v28);
      v37 = *(v27 + 88);
      v36 = v27 + 88;
      v38 = OUTLINED_FUNCTION_162();
      v40 = v39(v38);
      if (v40 == v231)
      {
        v41 = *(v0 + 144);
        v43 = *(v0 + 104);
        v42 = *(v0 + 112);
        v44 = OUTLINED_FUNCTION_85_4();
        v45(v44);
        v46 = *(v42 + 8);
        v47 = OUTLINED_FUNCTION_61();
        v48(v47);
        v3 = v235;
        v2 = v237;
      }

      else
      {
        OUTLINED_FUNCTION_77_4(v40);
        v3 = v235;
        if ((v52 & 1) == 0 && v51 != *(v0 + 464))
        {
          v183 = *(v0 + 72);
          OUTLINED_FUNCTION_51_0();

          return sub_1CA94D7E8();
        }

        v53 = *(v0 + 96);
        type metadata accessor for ActionAvailabilityRequestResolver();
        v54 = OUTLINED_FUNCTION_5_3();
        if ((static ActionAvailabilityRequestResolver.isActionAvailable(for:)(v54) & 1) == 0)
        {
          OUTLINED_FUNCTION_57_4();
          v186 = *(v0 + 104);
          v187 = *(v0 + 16);

          v188 = *MEMORY[0x1E69E10A0];
          sub_1CA949C58();
          v189 = OUTLINED_FUNCTION_115_2();
          v190(v189);
          (v12)(v26, v235, v186);
          v191 = sub_1CA949F68();
          v234 = sub_1CA94CBF8();
          os_log_type_enabled(v191, v234);
          OUTLINED_FUNCTION_56_4();
          if (v192)
          {
            OUTLINED_FUNCTION_30_2();
            v241 = OUTLINED_FUNCTION_138_0();
            *v186 = 136315394;
            v228 = v12;
            v193 = sub_1CA94A498();
            v195 = v194;
            v196 = *(v13 + 8);
            v197 = OUTLINED_FUNCTION_61();
            v198(v197);
            v199 = sub_1CA26B54C(v193, v195, &v241);

            OUTLINED_FUNCTION_81_3();
            OUTLINED_FUNCTION_8_12();
            sub_1CA435D64(v200, 255, v201);
            OUTLINED_FUNCTION_139_3();
            v202 = OUTLINED_FUNCTION_102_1();
            v195(v202);
            v203 = OUTLINED_FUNCTION_61();
            sub_1CA26B54C(v203, v204, v205);
            OUTLINED_FUNCTION_139();

            *(v186 + 14) = v199;
            OUTLINED_FUNCTION_40_5();
            _os_log_impl(v206, v207, v208, v209, v186, 0x16u);
            OUTLINED_FUNCTION_141_2();
            OUTLINED_FUNCTION_26();
            OUTLINED_FUNCTION_26();

            v211 = *(v36 + 8);
            v210 = v36 + 8;
            v211(v186, v228);
          }

          else
          {

            v195 = *(v187 + 8);
            (v195)(v235, v29);
            v215 = *(v13 + 8);
            v216 = OUTLINED_FUNCTION_61();
            v217(v216);
            v218 = *(v36 + 8);
            v210 = v36 + 8;
            v219 = OUTLINED_FUNCTION_72_0();
            v221(v219, v220);
          }

          OUTLINED_FUNCTION_111_3();
          v222 = *(v210 + 8);
          v223 = OUTLINED_FUNCTION_70();
          v224(v223);
          v225 = OUTLINED_FUNCTION_52_0();
          v195(v225);
          goto LABEL_28;
        }

        v55 = *(v0 + 144);
        v57 = *(v0 + 104);
        v56 = *(v0 + 112);
        v58 = OUTLINED_FUNCTION_85_4();
        v59(v58);
        v60 = *(v56 + 8);
        v61 = OUTLINED_FUNCTION_61();
        v62(v61);
LABEL_18:
        v2 = v237;
      }
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
  return MEMORY[0x1EEE4B148]();
}

BOOL sub_1CA4205FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA949F78();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = objc_allocWithZone(MEMORY[0x1E69635F8]);
  sub_1CA94C218();
  v7 = sub_1CA275C94(a1, a2, 0);
  v8 = [v7 applicationState];
  v9 = [v8 isInstalled];

  return (v9 & 1) != 0;
}

uint64_t sub_1CA420914()
{
  v1 = v0;
  v278[4] = *MEMORY[0x1E69E9840];
  v2 = sub_1CA949F78();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v229 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CA948E58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v229 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948DE8();
  v12 = sub_1CA948D48();
  v14 = v13;
  (*(v8 + 8))(v11, v7);
  v253 = v1;
  v15 = *(v1 + 176);
  v246 = v12;
  v16 = sub_1CA94C368();
  v278[0] = 0;
  v247 = v15;
  v17 = [v15 autoShortcutsForLocaleIdentifier:v16 error:v278];

  v18 = v278[0];
  if (!v17)
  {
    v217 = v278[0];

    v218 = sub_1CA948AD8();

    swift_willThrow();
    v219 = *MEMORY[0x1E69E10A0];
    sub_1CA949C58();
    v220 = v218;
    v221 = sub_1CA949F68();
    v222 = sub_1CA94CC18();

    if (os_log_type_enabled(v221, v222))
    {
      v223 = swift_slowAlloc();
      v224 = swift_slowAlloc();
      *v223 = 138412290;
      v225 = v218;
      v226 = _swift_stdlib_bridgeErrorToNSError();
      *(v223 + 4) = v226;
      *v224 = v226;
      _os_log_impl(&dword_1CA256000, v221, v222, "Failed to load auto shortcuts: %@", v223, 0xCu);
      sub_1CA27080C(v224, &qword_1EC444AE0, &qword_1CA985B70);
      MEMORY[0x1CCAA4BF0](v224, -1, -1);
      MEMORY[0x1CCAA4BF0](v223, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445458, &unk_1CA987488);
    v216 = sub_1CA94C1E8();

    goto LABEL_148;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4454A8, &unk_1CA98E820);
  v19 = sub_1CA94C1C8();
  v20 = v18;

  v256 = [objc_allocWithZone(MEMORY[0x1E69ACF58]) initWithOptions_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445458, &unk_1CA987488);
  v252 = sub_1CA94C1E8();
  v250 = [objc_allocWithZone(MEMORY[0x1E69E0988]) init];
  v251 = 0;
  v21 = 0;
  v254 = 0;
  v22 = v19 + 64;
  v23 = 1 << *(v19 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v19 + 64);
  v26 = (v23 + 63) >> 6;
  v27 = *MEMORY[0x1E69E0F18];
  v28 = @"IdentifierOverrideKey";
  v29 = 0x1E69E0000uLL;
  v30 = &_OBJC_LABEL_PROTOCOL___WFActionParameterInputProvider;
  v31 = 0x1FC831000;
  v32 = &qword_1EDB9FB10;
  v33 = v14;
  do
  {
LABEL_5:
    if (v25)
    {
      goto LABEL_10;
    }

    do
    {
      v34 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
        goto LABEL_154;
      }

      if (v34 >= v26)
      {

        v213 = sub_1CA422474();
        v214 = v252;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v278[0] = v214;
        sub_1CA42B3E0(v213, sub_1CA435DA8, 0, isUniquelyReferenced_nonNull_native, v278);

        sub_1CA293254(v251);
        v216 = v278[0];
LABEL_148:
        v227 = *MEMORY[0x1E69E9840];
        return v216;
      }

      v25 = *(v22 + 8 * v34);
      ++v21;
    }

    while (!v25);
    v21 = v34;
LABEL_10:
    v35 = __clz(__rbit64(v25)) | (v21 << 6);
    v36 = (*(v19 + 48) + 16 * v35);
    v37 = *v36;
    v38 = v36[1];
    v39 = *(*(v19 + 56) + 8 * v35);
    if (v39 >> 62)
    {
      v234 = v19;
      v248 = v39;
      v203 = v22;
      v204 = v21;
      v205 = v26;
      v206 = v27;
      v207 = v28;
      v208 = v29;
      v209 = v25;
      v210 = v31;
      v211 = v32;
      v261 = v38;
      v260 = v37;
      v212 = sub_1CA94D328();
      v37 = v260;
      v38 = v261;
      v32 = v211;
      v31 = v210;
      v25 = v209;
      v29 = v208;
      v28 = v207;
      v27 = v206;
      v26 = v205;
      v21 = v204;
      v22 = v203;
      v39 = v248;
      v40 = v212;
      v19 = v234;
      v30 = &_OBJC_LABEL_PROTOCOL___WFActionParameterInputProvider;
    }

    else
    {
      v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 &= v25 - 1;
  }

  while (!v40);
  v260 = v37;
  v230 = v25;
  v238 = v28;
  v241 = v27;
  v231 = v26;
  v232 = v21;
  v233 = v22;
  v234 = v19;
  v41 = *(v29 + 2456);
  v42 = v38;
  v257 = v40;
  v258 = objc_opt_self();
  v259 = v39 & 0xC000000000000001;
  v245 = v39 & 0xFFFFFFFFFFFFFF8;
  v244 = v39 + 32;
  v261 = v42;
  sub_1CA94C218();
  sub_1CA94C218();
  v43 = 0;
  v249 = v33;
  v248 = v39;
  while (1)
  {
    if (v259)
    {
      v44 = MEMORY[0x1CCAA22D0](v43, v39);
    }

    else
    {
      if (v43 >= *(v245 + 16))
      {
        goto LABEL_153;
      }

      v44 = *(v244 + 8 * v43);
    }

    v45 = v44;
    v46 = __OFADD__(v43, 1);
    v47 = v43 + 1;
    if (v46)
    {
      goto LABEL_152;
    }

    v265 = v47;
    if (([v258 v30[181]] & 1) == 0)
    {
      break;
    }

LABEL_141:
    v43 = v265;
    if (v265 == v257)
    {

      v19 = v234;
      v22 = v233;
      v21 = v232;
      v26 = v231;
      v27 = v241;
      v28 = v238;
      v29 = 0x1E69E0000;
      v25 = v230;
      v31 = 0x1FC831000;
      v32 = &qword_1EDB9FB10;
      goto LABEL_5;
    }
  }

  v48 = sub_1CA94C368();
  v49 = [v45 actionIdentifier];
  if (!v49)
  {
    sub_1CA94C3A8();
    v49 = sub_1CA94C368();
  }

  v50 = WFShortcutsActionIdentifierFromLinkAppAndActionIdentifier(v48, v49);

  if (v50)
  {
    v255 = sub_1CA94C3A8();
    v263 = v51;
  }

  else
  {
    v255 = 0;
    v263 = 0;
  }

  v52 = sub_1CA94C368();
  v53 = [v45 actionIdentifier];
  if (!v53)
  {
    sub_1CA94C3A8();
    v53 = sub_1CA94C368();
  }

  v278[0] = 0;
  v54 = [v256 actionForBundleIdentifier:v52 andActionIdentifier:v53 error:v278];

  v264 = v54;
  if (!v54)
  {
    v64 = v278[0];
    v65 = sub_1CA948AD8();

    swift_willThrow();
    v254 = 0;

    if (v263)
    {

LABEL_140:
      v33 = v249;
      v30 = &_OBJC_LABEL_PROTOCOL___WFActionParameterInputProvider;
      v39 = v248;
      goto LABEL_141;
    }

    goto LABEL_38;
  }

  v55 = v278[0];
  if (!v263)
  {
LABEL_38:
    v33 = v249;
    v30 = &_OBJC_LABEL_PROTOCOL___WFActionParameterInputProvider;
    v39 = v248;

    goto LABEL_141;
  }

  sub_1CA94C3A8();
  v56 = v264;
  v57 = sub_1CA94C528();

  v262 = v56;
  if (v57)
  {
    v58 = [v56 shortcutsActionMetadata];
    if (v58)
    {
      v59 = v58;
      v60 = [v58 dictionaryRepresentation];

      type metadata accessor for Key(0);
      sub_1CA435D64(&qword_1EDB9FB10, 255, type metadata accessor for Key);
      v61 = sub_1CA94C1C8();

      if (*(v61 + 16) && (v62 = sub_1CA323E24(v238), (v63 & 1) != 0))
      {
        sub_1CA25B374(*(v61 + 56) + 32 * v62, v278);

        if (swift_dynamicCast())
        {

          v255 = v276;
          v263 = v277;
        }
      }

      else
      {
      }
    }
  }

  sub_1CA2746C8(v45);
  if (!v66)
  {
    v67 = [v45 bundleIdentifier];
    sub_1CA94C3A8();
  }

  v68 = objc_opt_self();
  v69 = sub_1CA94C368();

  v70 = [v68 applicationWithBundleIdentifier_];

  v71 = [v70 isLocked];
  if (v71)
  {

LABEL_139:

    v202 = v262;
    goto LABEL_140;
  }

  v72 = WFPrimaryPhrasesForAutoShortcut();
  sub_1CA25B3D0(0, &qword_1EDB9F6D0, 0x1E69ACDA8);
  v73 = sub_1CA94C658();

  v74 = sub_1CA25B410(v73);
  v75 = 0;
  v271 = v73 & 0xC000000000000001;
  v272 = v73;
  v266 = (v73 & 0xFFFFFFFFFFFFFF8);
  v269 = MEMORY[0x1E69E7CC0];
  v270 = v74;
  v267 = v45;
  while (v74 != v75)
  {
    if (v271)
    {
      v76 = MEMORY[0x1CCAA22D0](v75, v272);
    }

    else
    {
      if (v75 >= v266[2])
      {
        goto LABEL_151;
      }

      v76 = *(v272 + 8 * v75 + 32);
    }

    v77 = v76;
    if (__OFADD__(v75, 1))
    {
      goto LABEL_150;
    }

    v78 = sub_1CA948D28();
    v275 = &v229;
    v268 = *(v78 - 8);
    v79 = v268[8];
    MEMORY[0x1EEE9AC00](v78);
    v274 = &v229 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
    v273 = &v229;
    v82 = *(*(v81 - 8) + 64);
    v83 = MEMORY[0x1EEE9AC00](v81 - 8);
    v84 = (v82 + 15) & 0xFFFFFFFFFFFFFFF0;
    v85 = &v229 - v84;
    MEMORY[0x1EEE9AC00](v83);
    v86 = v77;
    v87 = [v86 parameterIdentifier];
    if (MEMORY[0x1EEE9AC00](v87))
    {
      sub_1CA948CF8();

      v88 = 0;
    }

    else
    {
      v88 = 1;
    }

    __swift_storeEnumTagSinglePayload(&v229 - v84, v88, 1, v78);
    sub_1CA2D9CD4(&v229 - v84, &v229 - v84, &qword_1EC443BC8, &qword_1CA9834A0);
    sub_1CA2D9CD4(&v229 - v84, v85, &qword_1EC443BC8, &qword_1CA9834A0);

    if (__swift_getEnumTagSinglePayload(v85, 1, v78) == 1)
    {
      sub_1CA27080C(v85, &qword_1EC443BC8, &qword_1CA9834A0);
      v45 = v267;
    }

    else
    {
      v89 = v268;
      v90 = v268[4];
      v90(v274, v85, v78);
      v91 = swift_isUniquelyReferenced_nonNull_native();
      v45 = v267;
      if ((v91 & 1) == 0)
      {
        v94 = *(v269 + 2);
        sub_1CA2E5E9C();
        v269 = v95;
      }

      v92 = *(v269 + 2);
      if (v92 >= *(v269 + 3) >> 1)
      {
        sub_1CA2E5E9C();
        v269 = v96;
      }

      v93 = v269;
      *(v269 + 2) = v92 + 1;
      v90(&v93[((*(v89 + 80) + 32) & ~*(v89 + 80)) + v89[9] * v92], v274, v78);
    }

    v74 = v270;
    ++v75;
  }

  v97 = sub_1CA948D28();
  v98 = sub_1CA94C648();

  v278[0] = 0;
  v99 = [v247 propertiesForIdentifiers:v98 error:v278];

  v100 = v278[0];
  if (v99)
  {
    sub_1CA25B3D0(0, &qword_1EDB9FB20, 0x1E69AC950);
    sub_1CA4360F0(&qword_1EDB9FA28, MEMORY[0x1EEE78900]);
    v274 = sub_1CA94C1C8();
    v101 = v100;
  }

  else
  {
    v102 = v278[0];
    v103 = sub_1CA948AD8();

    swift_willThrow();
    sub_1CA25B3D0(0, &qword_1EDB9FB20, 0x1E69AC950);
    sub_1CA4360F0(&qword_1EDB9FA28, MEMORY[0x1EEE78900]);
    v274 = sub_1CA94C1E8();
    v254 = 0;
  }

  sub_1CA2746C8(v45);
  if (!v104)
  {
    v105 = [v45 bundleIdentifier];
    sub_1CA94C3A8();
  }

  v106 = sub_1CA94C368();

  v278[0] = 0;
  v107 = [v250 colorsForBundleIdentifier:v106 error:v278];

  if (!v107)
  {
    v112 = v278[0];
    v113 = sub_1CA948AD8();

    swift_willThrow();
    v254 = 0;
LABEL_73:
    v114 = objc_opt_self();
    v269 = [v114 whiteColor];
    [v45 shortcutTileColor];
    v115 = [v114 colorWithPaletteColor_];
    v110 = [v115 paletteGradient];

    v268 = [objc_allocWithZone(MEMORY[0x1E69E0B50]) initWithGradient_];
    goto LABEL_76;
  }

  v108 = v278[0];
  v109 = [v107 backgroundGradient];
  if (!v109)
  {

    goto LABEL_73;
  }

  v110 = v109;
  if ([v107 isDefaultTintColor])
  {
    v111 = [objc_opt_self() whiteColor];
  }

  else
  {
    v111 = [v107 tintColor];
  }

  v269 = v111;
  v268 = [objc_allocWithZone(MEMORY[0x1E69E0B50]) initWithGradient_];

LABEL_76:
  v116 = v270;

  if (v116)
  {
    v117 = v274;
    if (v116 >= 1)
    {
      v118 = 0;
      v273 = v97;
      v119 = v97 - 8;
      v242 = MEMORY[0x1E69E7CC0];
      v275 = MEMORY[0x1E69E7CC0];
      v120 = v270;
      v240 = v97 - 8;
      while (1)
      {
        if (v271)
        {
          v121 = MEMORY[0x1CCAA22D0](v118, v272);
        }

        else
        {
          v121 = *(v272 + 8 * v118 + 32);
        }

        v122 = v121;
        v123 = *v119;
        v124 = *(*v119 + 64);
        v125 = MEMORY[0x1EEE9AC00](v121);
        v127 = &v229 - v126;
        v128 = [v125 parameterIdentifier];
        if (!v128)
        {
          goto LABEL_95;
        }

        v129 = v128;
        sub_1CA948CF8();

        if (!*(v117 + 2) || (sub_1CA320F94(), v117 = v274, (v131 & 1) == 0))
        {
          (*(v123 + 8))(v127, v273);
          goto LABEL_95;
        }

        v132 = *(*(v274 + 7) + 8 * v130);
        v133 = [v132 value];
        if (!v133)
        {
          break;
        }

        v134 = v133;
        v266 = &v229;
        v135 = [v133 displayRepresentation];

        if (!v135)
        {
          (*(v123 + 8))(v127, v273);

          v120 = v270;
          goto LABEL_95;
        }

        v243 = v135;
        v136 = [v135 image];
        if (!v136)
        {
          v239 = sub_1CA25B3D0(0, &unk_1EDB9F6C0, 0x1E69AC870);
          v137 = [v45 systemImageName];
          sub_1CA94C3A8();

          v136 = sub_1CA5B88D0();
          if (!v136)
          {
            (*(v123 + 8))(v127, v273);

            v45 = v267;
            v117 = v274;
            goto LABEL_110;
          }

          v45 = v267;
          v117 = v274;
        }

        v138 = v136;
        v139 = [v136 contextualActionIcon];
        if (!v139)
        {
          (*(v123 + 8))(v127, v273);

          goto LABEL_114;
        }

        v140 = v139;
        v239 = v138;
        v141 = [v139 wfIcon];

        if (!v141)
        {
          (*(v123 + 8))(v127, v273);

LABEL_114:
          v120 = v270;
          v119 = v240;
LABEL_95:
          v148 = sub_1CA5BE580(v45);
          if (v149)
          {
            v150 = v148;
            v151 = v149;
            v152 = v45;
            v153 = [v45 systemImageName];
            v154 = sub_1CA94C3A8();
            v156 = v155;

            v157 = HIBYTE(v156) & 0xF;
            if ((v156 & 0x2000000000000000) == 0)
            {
              v157 = v154 & 0xFFFFFFFFFFFFLL;
            }

            if (v157)
            {
              v158 = [v45 systemImageName];
              v159 = sub_1CA94C3A8();
              v161 = v160;

              v162 = objc_allocWithZone(MEMORY[0x1E69E0D70]);
              v163 = v269;
              v164 = sub_1CA42AB48(v159, v161, v163, v268);
              v165 = v262;
              v166 = v152;
              v167 = v122;
              v168 = v164;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v120 = v270;
                v169 = v275;
              }

              else
              {
                v185 = v275[2];
                sub_1CA2E5E6C();
                v169 = v186;
                v120 = v270;
              }

              v170 = *(v169 + 16);
              if (v170 >= *(v169 + 24) >> 1)
              {
                sub_1CA2E5E6C();
                v275 = v187;
              }

              else
              {
                v275 = v169;
              }

              v171 = v275;
              v275[2] = v170 + 1;
              v172 = v171 + 56 * v170;
              *(v172 + 32) = v150;
              *(v172 + 40) = v151;
              v45 = v267;
              *(v172 + 48) = v168;
              *(v172 + 56) = v45;
              v173 = v264;
              *(v172 + 64) = v122;
              *(v172 + 72) = v173;
              *(v172 + 80) = 1;
            }

            else
            {

              v120 = v270;
            }

            v117 = v274;
          }

          else
          {
          }

          goto LABEL_107;
        }

        v142 = [v243 title];
        v143 = sub_1CA94C368();
        v144 = [v142 localizedStringForLocaleIdentifier_];

        v237 = sub_1CA94C3A8();
        v236 = v145;

        objc_opt_self();
        v146 = swift_dynamicCastObjCClass();
        v235 = v141;
        if (v146)
        {
          v147 = [v146 iconWithSymbolColor:v269 background:v268];
        }

        else
        {
          v147 = v141;
        }

        v174 = v147;
        v175 = v267;
        v176 = v262;
        v177 = v174;
        v178 = v175;
        v179 = v122;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v188 = *(v242 + 16);
          sub_1CA2E5E6C();
          v242 = v189;
        }

        v180 = *(v242 + 16);
        if (v180 >= *(v242 + 24) >> 1)
        {
          sub_1CA2E5E6C();
          v242 = v190;
        }

        (*(v123 + 8))(v127, v273);
        v181 = v242;
        *(v242 + 16) = v180 + 1;
        v182 = v181 + 56 * v180;
        v183 = v236;
        *(v182 + 32) = v237;
        *(v182 + 40) = v183;
        v45 = v267;
        *(v182 + 48) = v177;
        *(v182 + 56) = v45;
        v184 = v264;
        *(v182 + 64) = v122;
        *(v182 + 72) = v184;
        *(v182 + 80) = 1;
        v117 = v274;
        v120 = v270;
        v119 = v240;
LABEL_107:
        if (v120 == ++v118)
        {
          goto LABEL_125;
        }
      }

      (*(v123 + 8))(v127, v273);

LABEL_110:
      v120 = v270;
      goto LABEL_95;
    }

LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
  }

  v242 = MEMORY[0x1E69E7CC0];
  v275 = MEMORY[0x1E69E7CC0];
LABEL_125:

  v278[0] = MEMORY[0x1E69E7CC0];
  if (v275[2] < 2)
  {
  }

  else
  {
    sub_1CA2B7EA0(v275);
  }

  sub_1CA2B7EA0(v242);
  v191 = v278[0];
  if (!*(v278[0] + 2))
  {

    v45 = v269;
LABEL_138:

    goto LABEL_139;
  }

  sub_1CA293254(v251);
  v192 = v252;
  swift_isUniquelyReferenced_nonNull_native();
  v276 = v192;
  v193 = sub_1CA271BF8();
  if (__OFADD__(*(v192 + 16), (v194 & 1) == 0))
  {
    goto LABEL_155;
  }

  v195 = v193;
  v196 = v194;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445498, &qword_1CA987598);
  v197 = sub_1CA94D588();
  v198 = v276;
  if ((v197 & 1) == 0)
  {
LABEL_133:
    if (v196)
    {
    }

    else
    {
      sub_1CA323E18(v195, v255, v263, MEMORY[0x1E69E7CC0], v198);
    }

    v252 = v198;
    v201 = *(v198 + 56) + 8 * v195;
    sub_1CA2B7EA0(v191);

    v251 = sub_1CA436660;
    goto LABEL_138;
  }

  v199 = sub_1CA271BF8();
  if ((v196 & 1) == (v200 & 1))
  {
    v195 = v199;
    goto LABEL_133;
  }

  result = sub_1CA94D878();
  __break(1u);
  return result;
}
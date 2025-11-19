void sub_1A97FCD50(_BYTE *a1, int a2, int a3, void *a4)
{
  v5 = a4[5];
  v6 = a4[2];
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = a4[6];
  v10 = a4[3];
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v11 + 84) > v8)
  {
    v8 = *(v11 + 84);
  }

  v12 = a4[7];
  v13 = a4[4];
  v14 = 0;
  v15 = *(swift_getAssociatedTypeWitness() - 8);
  v16 = *(v15 + 80);
  v17 = *(v15 + 84);
  v18 = v17 - 1;
  if (!v17)
  {
    v18 = 0;
  }

  v19 = (v18 | v8) == 0;
  v20 = v17 == 0;
  v21 = (((*(v7 + 64) + *(v11 + 80)) & ~*(v11 + 80)) + *(v11 + 64) + *(v15 + 80)) & ~*(v15 + 80);
  v22 = *(v15 + 64);
  v23 = ((*(v11 + 80) | *(v7 + 80)) | v16) & 0xF8 | 7u;
  v24 = (v23 + 8) & ~v23;
  if (v20)
  {
    ++v19;
  }

  v25 = v19 + v22 + v21;
  if (v25 <= 8)
  {
    v25 = 8;
  }

  v26 = v25 + v24 + 1;
  if (a3 < 0)
  {
    if (v26 <= 3)
    {
      v28 = (a3 - 0x7FFFFFFF + ~(-1 << (8 * v26))) >> (8 * v26);
      if (v28 > 0xFFFE)
      {
        v14 = 4;
      }

      else
      {
        if (v28 < 0xFF)
        {
          v29 = 1;
        }

        else
        {
          v29 = 2;
        }

        if (v28)
        {
          v14 = v29;
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

    v27 = a2;
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_33:
    v30 = v27 & 0x7FFFFFFF;
    if (v26 >= 4)
    {
      bzero(a1, v26);
      *a1 = v30;
      v31 = 1;
      if (v14 > 1)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    }

    v31 = (v30 >> (8 * v26)) + 1;
    if (v26)
    {
      v32 = v27 & ~(-1 << (8 * v26));
      bzero(a1, v26);
      if (v26 != 3)
      {
        if (v26 == 2)
        {
          *a1 = v32;
          if (v14 > 1)
          {
LABEL_46:
            if (v14 == 2)
            {
              *&a1[v26] = v31;
            }

            else
            {
              *&a1[v26] = v31;
            }

            return;
          }
        }

        else
        {
          *a1 = v27;
          if (v14 > 1)
          {
            goto LABEL_46;
          }
        }

LABEL_43:
        if (v14)
        {
          a1[v26] = v31;
        }

        return;
      }

      *a1 = v32;
      a1[2] = BYTE2(v32);
    }

    if (v14 > 1)
    {
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  v27 = a2;
  if (a2 < 0)
  {
    goto LABEL_33;
  }

LABEL_11:
  if (v14 <= 1)
  {
    if (v14)
    {
      a1[v26] = 0;
      if (!v27)
      {
        return;
      }

      goto LABEL_20;
    }

LABEL_19:
    if (!v27)
    {
      return;
    }

    goto LABEL_20;
  }

  if (v14 == 2)
  {
    *&a1[v26] = 0;
    goto LABEL_19;
  }

  *&a1[v26] = 0;
  if (v27)
  {
LABEL_20:
    *a1 = (v27 - 1);
  }
}

uint64_t sub_1A97FD0C0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A97FD108(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 32))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = (((*(a1 + 16) >> 50) >> 13) | (2 * ((*(a1 + 16) >> 50) & 0x1C00 | ((*(a1 + 16) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A97FD184(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x3FFF;
    *(result + 8) = 0;
    if (a3 >= 0x3FFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1FFF | ((-a2 & 0x3FFF) << 13);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
      *(result + 16) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
      *(result + 24) = 0;
    }
  }

  return result;
}

void *sub_1A97FD208(void *result, uint64_t a2)
{
  v2 = result[2] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  result[2] = v2;
  return result;
}

void sub_1A97FD240(void *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  sub_1A99770A0();
  swift_getTupleTypeMetadata3();
  if (v5 <= 0x3F)
  {
    sub_1A97FDC60();
    if (v6 <= 0x3F)
    {
      v7 = a1[5];
      swift_getAssociatedTypeWitness();
      v8 = a1[6];
      swift_getAssociatedTypeWitness();
      v9 = a1[7];
      swift_getAssociatedTypeWitness();
      sub_1A99770A0();
      swift_getTupleTypeMetadata3();
      sub_1A99770A0();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
      sub_1A9977A20();
      sub_1A9976CE0();
      v11 = v10;
      swift_getTupleTypeMetadata2();
      if (v12 <= 0x3F && v11 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A97FD418(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = *(a3[4] - 8);
  v41 = (((*(*(a3[2] - 8) + 64) + *(*(a3[3] - 8) + 80)) & ~*(*(a3[3] - 8) + 80)) + *(*(a3[3] - 8) + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v38 = *(v4 + 84);
  v40 = *(v4 + 64);
  v5 = a3[5];
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v37 = *(v6 + 80);
  v7 = a3[6];
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 80);
  v10 = a3[7];
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = v11;
  v13 = *(v6 + 84);
  if (*(v8 + 84) > v13)
  {
    v13 = *(v8 + 84);
  }

  v16 = v11 + 80;
  v14 = *(v11 + 80);
  v15 = *(v16 + 4);
  v17 = v15 - 1;
  if (!v15)
  {
    v17 = 0;
  }

  v18 = v15 == 0;
  v19 = *(v12 + 64);
  if (v18)
  {
    ++v19;
  }

  v20 = v14;
  v21 = ((v9 | v37) | v14) & 0xF8 | 7u;
  v22 = (v21 + 8) & ~v21;
  v23 = v17 | v13;
  v24 = v40;
  if (!v38)
  {
    v24 = v40 + 1;
  }

  v18 = v23 == 0;
  v25 = v24 + v41;
  if (v18)
  {
    ++v19;
  }

  v26 = v19 + ((*(v8 + 64) + v20 + ((*(v6 + 64) + v9) & ~v9)) & ~v20);
  if (v26 <= 8)
  {
    v26 = 8;
  }

  v27 = v26 + v22;
  if (v25 <= v27 + 1)
  {
    v25 = v27 + 1;
  }

  if (v25 <= 8)
  {
    v28 = 8;
  }

  else
  {
    v28 = v25;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_40;
  }

  v29 = v28 + 1;
  v30 = 8 * (v28 + 1);
  if ((v28 + 1) <= 3)
  {
    v33 = ((a2 + ~(-1 << v30) - 252) >> v30) + 1;
    if (HIWORD(v33))
    {
      v31 = *(a1 + v29);
      if (!v31)
      {
        goto LABEL_40;
      }

      goto LABEL_29;
    }

    if (v33 > 0xFF)
    {
      v31 = *(a1 + v29);
      if (!*(a1 + v29))
      {
        goto LABEL_40;
      }

      goto LABEL_29;
    }

    if (v33 < 2)
    {
LABEL_40:
      v35 = *(a1 + v28);
      if (v35 >= 4)
      {
        return (v35 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v31 = *(a1 + v29);
  if (!*(a1 + v29))
  {
    goto LABEL_40;
  }

LABEL_29:
  v34 = (v31 - 1) << v30;
  if (v29 > 3)
  {
    v34 = 0;
  }

  if (v29)
  {
    if (v29 > 3)
    {
      LODWORD(v29) = 4;
    }

    if (v29 > 2)
    {
      if (v29 == 3)
      {
        LODWORD(v29) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v29) = *a1;
      }
    }

    else if (v29 == 1)
    {
      LODWORD(v29) = *a1;
    }

    else
    {
      LODWORD(v29) = *a1;
    }
  }

  return (v29 | v34) + 253;
}

void sub_1A97FD800(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = a4[5];
  v6 = *(a4[4] - 8);
  v40 = (((*(*(a4[2] - 8) + 64) + *(*(a4[3] - 8) + 80)) & ~*(*(a4[3] - 8) + 80)) + *(*(a4[3] - 8) + 64) + *(v6 + 80)) & ~*(v6 + 80);
  v37 = *(v6 + 84);
  v39 = *(v6 + 64);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v36 = *(v7 + 80);
  v8 = a4[6];
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 80);
  v11 = a4[7];
  v12 = 0;
  v13 = *(swift_getAssociatedTypeWitness() - 8);
  v14 = v13;
  v15 = *(v7 + 84);
  if (*(v9 + 84) > v15)
  {
    v15 = *(v9 + 84);
  }

  v18 = v13 + 80;
  v16 = *(v13 + 80);
  v17 = *(v18 + 4);
  v19 = v17 - 1;
  if (!v17)
  {
    v19 = 0;
  }

  v20 = v17 == 0;
  v21 = *(v14 + 64);
  if (v20)
  {
    ++v21;
  }

  v22 = v16;
  v23 = ((v10 | v36) | v16) & 0xF8 | 7u;
  v24 = (v23 + 8) & ~v23;
  v25 = v19 | v15;
  v26 = v39;
  if (!v37)
  {
    v26 = v39 + 1;
  }

  v20 = v25 == 0;
  v27 = v26 + v40;
  if (v20)
  {
    ++v21;
  }

  v28 = v21 + ((*(v9 + 64) + v22 + ((*(v7 + 64) + v10) & ~v10)) & ~v22);
  if (v28 <= 8)
  {
    v28 = 8;
  }

  v29 = v28 + v24;
  if (v27 <= v29 + 1)
  {
    v27 = v29 + 1;
  }

  if (v27 <= 8)
  {
    v27 = 8;
  }

  v30 = v27 + 1;
  if (a3 >= 0xFD)
  {
    if (v30 <= 3)
    {
      v31 = ((a3 + ~(-1 << (8 * v30)) - 252) >> (8 * v30)) + 1;
      if (HIWORD(v31))
      {
        v12 = 4;
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
          v12 = v32;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  if (a2 > 0xFC)
  {
    v33 = a2 - 253;
    if (v30 >= 4)
    {
      bzero(a1, v27 + 1);
      *a1 = v33;
      v34 = 1;
      if (v12 > 1)
      {
        goto LABEL_52;
      }

      goto LABEL_49;
    }

    v34 = (v33 >> (8 * v30)) + 1;
    if (v27 != -1)
    {
      v35 = v33 & ~(-1 << (8 * v30));
      bzero(a1, v30);
      if (v30 != 3)
      {
        if (v30 == 2)
        {
          *a1 = v35;
          if (v12 > 1)
          {
LABEL_52:
            if (v12 == 2)
            {
              *&a1[v30] = v34;
            }

            else
            {
              *&a1[v30] = v34;
            }

            return;
          }
        }

        else
        {
          *a1 = a2 + 3;
          if (v12 > 1)
          {
            goto LABEL_52;
          }
        }

LABEL_49:
        if (v12)
        {
          a1[v30] = v34;
        }

        return;
      }

      *a1 = v35;
      a1[2] = BYTE2(v35);
    }

    if (v12 > 1)
    {
      goto LABEL_52;
    }

    goto LABEL_49;
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      a1[v30] = 0;
      if (!a2)
      {
        return;
      }

LABEL_39:
      a1[v27] = -a2;
      return;
    }

LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (v12 == 2)
  {
    *&a1[v30] = 0;
    goto LABEL_38;
  }

  *&a1[v30] = 0;
  if (a2)
  {
    goto LABEL_39;
  }
}

void sub_1A97FDC60()
{
  if (!qword_1EB3AB6B0)
  {
    sub_1A97FDCC4(0, &qword_1EB3AB6A8, MEMORY[0x1E69E62F8]);
    if (!v1)
    {
      atomic_store(v0, &qword_1EB3AB6B0);
    }
  }
}

void sub_1A97FDCC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B2930, qword_1A9995E18);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A97FDD30()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A97FDD6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 24))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A97FDDC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1A97FDE38()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t combineLatest<A, B, C, D, E, F>(_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16)
{
  v68 = a6;
  v59 = a2;
  v60 = a3;
  v70 = a8;
  v69 = a13;
  v67 = a14;
  v66 = a15;
  v64 = a5;
  v65 = a16;
  v57 = a11;
  v62 = a4;
  v63 = a12;
  v61 = *(a12 - 8);
  v17 = *(v61 + 64);
  v55 = a10;
  v18 = MEMORY[0x1EEE9AC00](a1);
  v58 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v18);
  v56 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v23);
  v30 = &v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a9 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x1EEE9AC00](v28);
  v35 = &v53 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v36;
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v39 = MEMORY[0x1EEE9AC00](v33);
  v41 = &v53 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v42;
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v45 = &v53 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v46 + 16))(v45);
  (*(v37 + 16))(v41, v59, a7);
  (*(v31 + 16))(v35, v60, a9);
  v47 = v55;
  (*(v26 + 16))(v30, v62, v55);
  v48 = v56;
  v49 = v57;
  (*(v21 + 16))(v56, v64, v57);
  v50 = v58;
  v51 = v63;
  (*(v61 + 16))(v58, v68, v63);
  return sub_1A97FE2CC(v45, v41, v35, v30, v48, v50, v54, v53, v70, a9, v47, v49, v51);
}

uint64_t sub_1A97FE2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  v16 = type metadata accessor for AsyncCombineLatest6Sequence();
  (*(*(a8 - 8) + 32))(a9 + v16[29], a2, a8);
  (*(*(a10 - 8) + 32))(a9 + v16[30], a3, a10);
  (*(*(a11 - 8) + 32))(a9 + v16[31], a4, a11);
  (*(*(a12 - 8) + 32))(a9 + v16[32], a5, a12);
  return (*(*(a13 - 8) + 32))(a9 + v16[33], a6, a13);
}

uint64_t AsyncCombineLatest6Sequence.Iterator.next()(uint64_t a1, void *a2)
{
  v2[30] = a1;
  v28 = a2[8];
  v27 = a2[2];
  v2[31] = swift_getAssociatedTypeWitness();
  v25 = a2[3];
  v26 = a2[9];
  v2[32] = swift_getAssociatedTypeWitness();
  v23 = a2[4];
  v24 = a2[10];
  v2[33] = swift_getAssociatedTypeWitness();
  v2[34] = swift_getTupleTypeMetadata3();
  v21 = a2[5];
  v22 = a2[11];
  v2[35] = swift_getAssociatedTypeWitness();
  v4 = a2[12];
  v5 = a2[6];
  v2[36] = swift_getAssociatedTypeWitness();
  v6 = a2[13];
  v7 = a2[7];
  v2[37] = swift_getAssociatedTypeWitness();
  v2[38] = swift_getTupleTypeMetadata3();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v2[39] = TupleTypeMetadata2;
  v9 = sub_1A99770A0();
  v2[40] = v9;
  v10 = *(v9 - 8);
  v2[41] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v2[42] = v12;
  v13 = *(TupleTypeMetadata2 - 8);
  v2[43] = v13;
  v14 = *(v13 + 64) + 15;
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v15 = swift_task_alloc();
  v2[2] = v27;
  v2[51] = v15;
  v2[3] = v25;
  v2[4] = v23;
  v2[5] = v28;
  v2[6] = v26;
  v2[7] = v24;
  v16 = type metadata accessor for AsyncCombineLatest3Sequence();
  v2[8] = v21;
  v2[9] = v5;
  v2[10] = v7;
  v2[11] = v22;
  v2[12] = v4;
  v2[13] = v6;
  v17 = type metadata accessor for AsyncCombineLatest3Sequence();
  WitnessTable = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v2[26] = v16;
  v2[27] = v17;
  v2[28] = WitnessTable;
  v2[29] = v19;
  type metadata accessor for AsyncCombineLatest2Sequence.Iterator();
  *v15 = v2;
  v15[1] = sub_1A97FE874;

  return AsyncCombineLatest2Sequence.Iterator.next()(v12);
}

uint64_t sub_1A97FE874()
{
  v2 = *(*v1 + 408);
  v5 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v3 = sub_1A97FF338;
  }

  else
  {
    v3 = sub_1A97FE988;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A97FE988()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = *(v0 + 312);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 296);
    v5 = *(v0 + 264);
    v6 = *(v0 + 240);
    v7 = *(v0 + 248);
    v82 = v7;
    v84 = *(v0 + 280);
    (*(*(v0 + 328) + 8))(v1, *(v0 + 320));
    *(v0 + 112) = v82;
    *(v0 + 128) = v5;
    *(v0 + 136) = v84;
    *(v0 + 152) = v4;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    (*(*(TupleTypeMetadata - 8) + 56))(v6, 1, 1, TupleTypeMetadata);
  }

  else
  {
    v56 = *(v0 + 400);
    v70 = *(v0 + 384);
    v71 = *(v0 + 392);
    v68 = *(v0 + 368);
    v69 = *(v0 + 376);
    v67 = *(v0 + 360);
    v72 = *(v0 + 352);
    v9 = *(v0 + 296);
    v32 = *(v0 + 304);
    v83 = v9;
    v11 = *(v0 + 280);
    v10 = *(v0 + 288);
    v12 = v2;
    v85 = v2;
    v14 = *(v0 + 264);
    v13 = *(v0 + 272);
    v16 = *(v0 + 248);
    v15 = *(v0 + 256);
    v80 = v15;
    v33 = *(v0 + 240);
    v73 = *(v12 + 32);
    v73();
    *(v0 + 160) = v16;
    *(v0 + 168) = v15;
    *(v0 + 176) = v14;
    *(v0 + 184) = v11;
    *(v0 + 192) = v10;
    *(v0 + 200) = v9;
    v59 = swift_getTupleTypeMetadata();
    v74 = v59[12];
    v76 = v59[16];
    v61 = v59[20];
    v63 = v59[24];
    v65 = v59[28];
    v17 = *(v85 + 16);
    v17(v71, v56, v3);
    v54 = *(v13 + 64);
    v55 = *(v13 + 48);
    v52 = v71 + *(v3 + 48);
    v53 = *(v32 + 48);
    v51 = *(v32 + 64);
    v86 = *(v16 - 8);
    (*(v86 + 32))(v33, v71);
    v17(v70, v56, v3);
    v48 = v70 + *(v3 + 48);
    v49 = *(v32 + 48);
    v50 = *(v13 + 64);
    v47 = *(v32 + 64);
    v81 = *(v15 - 8);
    (*(v81 + 32))(v33 + v74, v70 + *(v13 + 48));
    v17(v69, v56, v3);
    v44 = v69 + *(v3 + 48);
    v45 = *(v32 + 48);
    v46 = *(v13 + 48);
    v43 = *(v32 + 64);
    v75 = *(v14 - 8);
    (*(v75 + 32))(v33 + v76, v69 + *(v13 + 64));
    v17(v68, v56, v3);
    v41 = *(v13 + 64);
    v42 = *(v13 + 48);
    v40 = *(v32 + 48);
    v38 = v68 + *(v3 + 48);
    v39 = *(v32 + 64);
    v77 = *(v11 - 8);
    (*(v77 + 32))(v33 + v61);
    v17(v67, v56, v3);
    v36 = *(v13 + 64);
    v37 = *(v13 + 48);
    v34 = v67 + *(v3 + 48);
    v35 = *(v32 + 64);
    v18 = *(v10 - 8);
    (*(v18 + 32))(v33 + v63, v34 + *(v32 + 48), v10);
    (v73)(v72, v56, v3);
    v57 = *(v13 + 48);
    v78 = *(v13 + 64);
    v19 = v72 + *(v3 + 48);
    v20 = *(v32 + 48);
    v21 = *(v83 - 8);
    (*(v21 + 32))(v33 + v65, v19 + *(v32 + 64));
    (*(*(v59 - 1) + 56))(v33, 0, 1);
    v66 = *(v18 + 8);
    v66(v19 + v20, v10);
    v62 = *(v77 + 8);
    v62(v19, v11);
    v64 = *(v75 + 8);
    v64(v72 + v78, v14);
    v79 = *(v81 + 8);
    v79(v72 + v57, v80);
    v58 = *(v86 + 8);
    v58(v72, v16);
    v60 = *(v21 + 8);
    v60(v34 + v35, v83);
    v62(v34, v11);
    v64(v67 + v36, v14);
    v79(v67 + v37, v80);
    v58(v67, v16);
    v60(v38 + v39, v83);
    v66(v38 + v40, v10);
    v64(v68 + v41, v14);
    v79(v68 + v42, v80);
    v58(v68, v16);
    v60(v44 + v43, v83);
    v66(v44 + v45, v10);
    v62(v44, v11);
    v79(v69 + v46, v80);
    v58(v69, v16);
    v60(v48 + v47, v83);
    v66(v48 + v49, v10);
    v62(v48, v11);
    v64(v70 + v50, v14);
    v58(v70, v16);
    v60(v52 + v51, v83);
    v66(v52 + v53, v10);
    v62(v52, v11);
    v64(v71 + v54, v14);
    v79(v71 + v55, v80);
  }

  v23 = *(v0 + 392);
  v22 = *(v0 + 400);
  v25 = *(v0 + 376);
  v24 = *(v0 + 384);
  v27 = *(v0 + 360);
  v26 = *(v0 + 368);
  v28 = *(v0 + 352);
  v29 = *(v0 + 336);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1A97FF338()
{
  v2 = v0[49];
  v1 = v0[50];
  v4 = v0[47];
  v3 = v0[48];
  v6 = v0[45];
  v5 = v0[46];
  v7 = v0[44];
  v8 = v0[42];

  v9 = v0[1];
  v10 = v0[52];

  return v9();
}

uint64_t sub_1A97FF3FC(uint64_t a1, void *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A97B2638;

  return AsyncCombineLatest6Sequence.Iterator.next()(a1, a2);
}

uint64_t sub_1A97FF4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v12 = *(a5 + 64);
  v13 = *(a5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[3] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v6[4] = v15;
  v16 = *(v15 + 64) + 15;
  v6[5] = swift_task_alloc();
  v17 = *(MEMORY[0x1E69E85D8] + 4);
  v18 = swift_task_alloc();
  v6[6] = v18;
  *v18 = v6;
  v18[1] = sub_1A97FF5F8;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6);
}

uint64_t sub_1A97FF5F8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
    (*(v2[4] + 32))(v2[2], v2[5], v2[3]);
  }

  else
  {
    v6 = v2[5];
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t AsyncCombineLatest6Sequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v45 = a2;
  v5 = *(a1 + 16);
  v43 = *(a1 + 24);
  v44 = v5;
  v6 = *(a1 + 32);
  v7 = *(a1 + 72);
  v41 = *(a1 + 64);
  v42 = v6;
  v40 = v7;
  v34 = *(a1 + 80);
  v46 = v5;
  v47 = v43;
  v48 = v6;
  v49 = v41;
  v50 = v7;
  v51 = v34;
  v8 = type metadata accessor for AsyncCombineLatest3Sequence();
  v9 = *(a1 + 40);
  v38 = *(a1 + 48);
  v39 = v9;
  v10 = *(a1 + 56);
  v11 = *(a1 + 96);
  v36 = *(a1 + 88);
  v37 = v10;
  v35 = v11;
  v33 = *(a1 + 104);
  v50 = v11;
  v51 = v33;
  v12 = type metadata accessor for AsyncCombineLatest3Sequence();
  WitnessTable = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  v46 = v8;
  v47 = v12;
  v48 = WitnessTable;
  v49 = v31;
  v30 = type metadata accessor for AsyncCombineLatest2Sequence();
  v13 = *(v30 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v30);
  v17 = &v29 - v16;
  v18 = *(v12 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v15);
  v22 = &v29 - v21;
  v23 = *(v8 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v26 = &v29 - v25;
  combineLatest<A, B, C>(_:_:_:)(v3, v3 + *(a1 + 116), v3 + *(a1 + 120), v44, v43, v42, v41, v40, &v29 - v25);
  combineLatest<A, B, C>(_:_:_:)(v3 + *(a1 + 124), v3 + *(a1 + 128), v3 + *(a1 + 132), v39, v38, v37, v36, v35, v22);
  combineLatest<A, B>(_:_:)(v26, v22, v8, v12, v17);
  v27 = v30;
  AsyncCombineLatest2Sequence.makeAsyncIterator()(v30, &v46);
  (*(v13 + 8))(v17, v27);
  (*(v18 + 8))(v22, v12);
  result = (*(v23 + 8))(v26, v8);
  *v45 = v46;
  return result;
}

uint64_t sub_1A97FFA64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  v3 = *(a2 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1A97FFB24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  AsyncCombineLatest6Sequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_1A97FFB8C(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v7 = a1[4];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        v9 = a1[5];
        result = swift_checkMetadataState();
        if (v10 <= 0x3F)
        {
          v11 = a1[6];
          result = swift_checkMetadataState();
          if (v12 <= 0x3F)
          {
            v13 = a1[7];
            result = swift_checkMetadataState();
            if (v14 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1A97FFC88(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v61 = a3[3];
  v62 = v4;
  v5 = *(v4 + 84);
  v6 = *(v61 - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = *(v4 + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = a3[5];
  v59 = v9;
  v60 = a3[4];
  v10 = *(v60 - 8);
  v11 = *(v10 + 84);
  if (v11 > v8)
  {
    v8 = *(v10 + 84);
  }

  v12 = *(v9 - 8);
  v13 = *(v12 + 84);
  v15 = a3[6];
  v14 = a3[7];
  v57 = v14;
  v58 = v15;
  v16 = *(v15 - 8);
  if (v13 <= v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = *(v15 - 8);
  v19 = *(v16 + 84);
  if (v19 <= v17)
  {
    v20 = v17;
  }

  else
  {
    v20 = *(v16 + 84);
  }

  v21 = *(v14 - 8);
  v22 = *(v21 + 84);
  v23 = *(v4 + 64);
  v24 = *(v6 + 80);
  v25 = *(*(v61 - 8) + 64);
  v26 = *(v10 + 80);
  v27 = *(*(v60 - 8) + 64);
  v28 = *(v12 + 80);
  v29 = *(*(v9 - 8) + 64);
  v30 = *(v16 + 80);
  v31 = *(v16 + 64);
  v32 = *(v21 + 80);
  v33 = *(v21 + 64);
  if (v22 <= v20)
  {
    v34 = v20;
  }

  else
  {
    v34 = *(v21 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v35 = *(*(v60 - 8) + 64);
  v36 = v23 + v24;
  v37 = v29 + v30;
  v38 = v31 + v32;
  v39 = a2 - v34;
  if (a2 > v34)
  {
    v40 = (v38 + ((v37 + ((v27 + v28 + ((v25 + v26 + (v36 & ~v24)) & ~v26)) & ~v28)) & ~v30)) & ~v32;
    v41 = v40 + v33;
    v42 = 8 * (v40 + v33);
    if (v41 <= 3)
    {
      v44 = ((v39 + ~(-1 << v42)) >> v42) + 1;
      if (HIWORD(v44))
      {
        v43 = *(a1 + v41);
        if (!v43)
        {
          goto LABEL_38;
        }

        goto LABEL_25;
      }

      if (v44 > 0xFF)
      {
        v43 = *(a1 + v41);
        if (!*(a1 + v41))
        {
          goto LABEL_38;
        }

        goto LABEL_25;
      }

      if (v44 < 2)
      {
LABEL_38:
        if (v34)
        {
          goto LABEL_39;
        }

        return 0;
      }
    }

    v43 = *(a1 + v41);
    if (!*(a1 + v41))
    {
      goto LABEL_38;
    }

LABEL_25:
    v45 = (v43 - 1) << v42;
    if (v41 > 3)
    {
      v45 = 0;
    }

    if (v41)
    {
      if (v41 <= 3)
      {
        v46 = v41;
      }

      else
      {
        v46 = 4;
      }

      if (v46 > 2)
      {
        if (v46 == 3)
        {
          v47 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v47 = *a1;
        }
      }

      else if (v46 == 1)
      {
        v47 = *a1;
      }

      else
      {
        v47 = *a1;
      }
    }

    else
    {
      v47 = 0;
    }

    return v34 + (v47 | v45) + 1;
  }

LABEL_39:
  if (v5 == v34)
  {
    v48 = *(v62 + 48);

    return v48(a1);
  }

  v50 = (a1 + v36) & ~v24;
  if (v7 == v34)
  {
    v51 = *(v6 + 48);
    v52 = (a1 + v36) & ~v24;
    v53 = *(v6 + 84);
    v54 = v61;

    return v51(v52, v53, v54);
  }

  if (v11 == v34)
  {
    v51 = *(v10 + 48);
    v52 = (v50 + v25 + v26) & ~v26;
    v53 = *(v10 + 84);
    v54 = v60;

    return v51(v52, v53, v54);
  }

  v52 = (((v50 + v25 + v26) & ~v26) + v27 + v28) & ~v28;
  if (v13 == v34)
  {
    v51 = *(v12 + 48);
    v53 = *(v12 + 84);
    v54 = v59;

    return v51(v52, v53, v54);
  }

  v52 = (v37 + v52) & ~v30;
  if (v19 == v34)
  {
    v51 = *(v18 + 48);
    v53 = v19;
    v54 = v58;

    return v51(v52, v53, v54);
  }

  v55 = *(v21 + 48);
  v56 = (v38 + v52) & ~v32;

  return v55(v56, v22, v57);
}

unsigned int *sub_1A98001EC(unsigned int *result, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = *(a4[2] - 8);
  v55 = v6;
  v7 = *(v6 + 84);
  v8 = *(a4[3] - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = a4[5];
  v53 = a4[4];
  v13 = *(v53 - 8);
  v54 = *(v13 + 84);
  if (v54 > v11)
  {
    v11 = *(v13 + 84);
  }

  v51 = a4[5];
  v14 = *(v12 - 8);
  v52 = *(v14 + 84);
  if (v52 <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = *(v14 + 84);
  }

  v50 = a4[6];
  v16 = *(v50 - 8);
  v17 = *(v16 + 84);
  if (v17 <= v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = *(v16 + 84);
  }

  v19 = *(a4[7] - 8);
  v20 = *(v6 + 64);
  v21 = *(v8 + 80);
  v22 = *(v8 + 64);
  v23 = *(v13 + 80);
  v24 = *(*(v53 - 8) + 64);
  v25 = *(v14 + 80);
  v26 = *(*(v12 - 8) + 64);
  v27 = *(v16 + 80);
  v28 = *(*(v50 - 8) + 64);
  v29 = *(v19 + 80);
  v30 = v26 + v27;
  v31 = v28 + v29;
  v32 = ((v28 + v29 + ((v26 + v27 + ((v24 + v25 + ((v22 + v23 + ((v20 + v21) & ~v21)) & ~v23)) & ~v25)) & ~v27)) & ~v29) + *(v19 + 64);
  if (*(v19 + 84) <= v18)
  {
    v33 = v18;
  }

  else
  {
    v33 = *(v19 + 84);
  }

  if (a3 <= v33)
  {
    v34 = 0;
  }

  else if (v32 <= 3)
  {
    v38 = ((a3 - v33 + ~(-1 << (8 * v32))) >> (8 * v32)) + 1;
    if (HIWORD(v38))
    {
      v34 = 4;
    }

    else
    {
      if (v38 < 0x100)
      {
        v39 = 1;
      }

      else
      {
        v39 = 2;
      }

      if (v38 >= 2)
      {
        v34 = v39;
      }

      else
      {
        v34 = 0;
      }
    }
  }

  else
  {
    v34 = 1;
  }

  if (v33 < a2)
  {
    v35 = ~v33 + a2;
    if (v32 >= 4)
    {
      v36 = result;
      bzero(result, v32);
      result = v36;
      *v36 = v35;
      v37 = 1;
      if (v34 > 1)
      {
        goto LABEL_22;
      }

      goto LABEL_59;
    }

    v37 = (v35 >> (8 * v32)) + 1;
    if (v32)
    {
      v40 = v35 & ~(-1 << (8 * v32));
      v41 = result;
      bzero(result, v32);
      result = v41;
      if (v32 != 3)
      {
        if (v32 == 2)
        {
          *v41 = v40;
          if (v34 > 1)
          {
            goto LABEL_22;
          }
        }

        else
        {
          *v41 = v35;
          if (v34 > 1)
          {
LABEL_22:
            if (v34 == 2)
            {
              *(result + v32) = v37;
            }

            else
            {
              *(result + v32) = v37;
            }

            return result;
          }
        }

LABEL_59:
        if (v34)
        {
          *(result + v32) = v37;
        }

        return result;
      }

      *v41 = v40;
      *(v41 + 2) = BYTE2(v40);
    }

    if (v34 > 1)
    {
      goto LABEL_22;
    }

    goto LABEL_59;
  }

  if (v34 > 1)
  {
    if (v34 != 2)
    {
      *(result + v32) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_43;
    }

    *(result + v32) = 0;
  }

  else if (v34)
  {
    *(result + v32) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_43;
  }

  if (!a2)
  {
    return result;
  }

LABEL_43:
  if (v7 == v33)
  {
    v42 = v55;
LABEL_45:
    v43 = *(v42 + 56);
LABEL_48:

    return v43();
  }

  v44 = (result + v20 + v21) & ~v21;
  if (v10 == v33)
  {
    v43 = *(v9 + 56);
    goto LABEL_48;
  }

  v45 = (v44 + v22 + v23) & ~v23;
  if (v54 == v33)
  {
    v42 = v13;
    goto LABEL_45;
  }

  v46 = (v45 + v24 + v25) & ~v25;
  if (v52 == v33)
  {
    v47 = *(v14 + 56);

    return v47(v46);
  }

  v46 = (v30 + v46) & ~v27;
  if (v17 == v33)
  {
    v47 = *(v16 + 56);

    return v47(v46);
  }

  v48 = *(v19 + 56);
  v49 = (v31 + v46) & ~v29;

  return v48(v49);
}

uint64_t sub_1A980077C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

BOOL static SFNearbySharingInteractionViewState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 7)
  {
    return v3 == 7;
  }

  if (v2 == 6)
  {
    return v3 == 6;
  }

  if ((v3 & 0xFE) == 6)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t sub_1A98008D0()
{
  v1 = 0x7661776B636F6873;
  if (*v0 != 1)
  {
    v1 = 0x50746E65746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701602409;
  }
}

uint64_t sub_1A9800934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A9801CF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A980095C(uint64_t a1)
{
  v2 = sub_1A9800F20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9800998(uint64_t a1)
{
  v2 = sub_1A9800F20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98009D4(uint64_t a1)
{
  v2 = sub_1A9800F74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9800A10(uint64_t a1)
{
  v2 = sub_1A9800F74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9800A4C(uint64_t a1)
{
  v2 = sub_1A9801070();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9800A88(uint64_t a1)
{
  v2 = sub_1A9801070();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9800AC4(uint64_t a1)
{
  v2 = sub_1A9800FC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9800B00(uint64_t a1)
{
  v2 = sub_1A9800FC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFNearbySharingInteractionViewState.encode(to:)(void *a1)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2360, &qword_1A99962C0);
  v28 = *(v30 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v26 = &v22 - v4;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2368, &qword_1A99962C8);
  v27 = *(v29 - 8);
  v5 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v25 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2370, &qword_1A99962D0);
  v23 = *(v7 - 8);
  v24 = v7;
  v8 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2378, &qword_1A99962D8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - v14;
  v16 = *v1;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9800F20();
  sub_1A9977AA0();
  if (v16 == 7)
  {
    v34 = 2;
    sub_1A9800F74();
    v18 = v26;
    sub_1A9977640();
    (*(v28 + 8))(v18, v30);
    return (*(v12 + 8))(v15, v11);
  }

  if (v16 == 6)
  {
    v31 = 0;
    sub_1A9801070();
    sub_1A9977640();
    (*(v23 + 8))(v10, v24);
    return (*(v12 + 8))(v15, v11);
  }

  v33 = 1;
  sub_1A9800FC8();
  v20 = v25;
  sub_1A9977640();
  v32 = v16;
  sub_1A980101C();
  v21 = v29;
  sub_1A99776E0();
  (*(v27 + 8))(v20, v21);
  return (*(v12 + 8))(v15, v11);
}

unint64_t sub_1A9800F20()
{
  result = qword_1EB3B2380;
  if (!qword_1EB3B2380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2380);
  }

  return result;
}

unint64_t sub_1A9800F74()
{
  result = qword_1EB3B2388;
  if (!qword_1EB3B2388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2388);
  }

  return result;
}

unint64_t sub_1A9800FC8()
{
  result = qword_1EB3B2390;
  if (!qword_1EB3B2390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2390);
  }

  return result;
}

unint64_t sub_1A980101C()
{
  result = qword_1EB3B2398;
  if (!qword_1EB3B2398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2398);
  }

  return result;
}

unint64_t sub_1A9801070()
{
  result = qword_1EB3B23A0;
  if (!qword_1EB3B23A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B23A0);
  }

  return result;
}

uint64_t SFNearbySharingInteractionViewState.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v52 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B23A8, &qword_1A99962E0);
  v51 = *(v46 - 8);
  v3 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v50 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B23B0, &qword_1A99962E8);
  v6 = *(v5 - 8);
  v48 = v5;
  v49 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B23B8, &qword_1A99962F0);
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B23C0, &unk_1A99962F8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v43 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1A9800F20();
  v21 = v53;
  sub_1A9977A70();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v54);
  }

  v44 = v10;
  v45 = 0;
  v23 = v50;
  v22 = v51;
  v53 = v15;
  v24 = v52;
  v25 = v18;
  v26 = sub_1A9977620();
  v27 = (2 * *(v26 + 16)) | 1;
  v55 = v26;
  v56 = v26 + 32;
  v57 = 0;
  v58 = v27;
  v28 = sub_1A97B297C();
  if (v28 == 3 || v57 != v58 >> 1)
  {
    v31 = sub_1A9977300();
    swift_allocError();
    v33 = v32;
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630) + 48);
    *v33 = &type metadata for SFNearbySharingInteractionViewState;
    v35 = v25;
    sub_1A9977540();
    sub_1A99772F0();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
    swift_willThrow();
    goto LABEL_9;
  }

  if (!v28)
  {
    v59 = 0;
    sub_1A9801070();
    v35 = v18;
    v37 = v45;
    sub_1A9977530();
    if (!v37)
    {
      (*(v47 + 8))(v13, v44);
      (*(v53 + 8))(v18, v14);
      swift_unknownObjectRelease();
      v38 = 6;
      goto LABEL_17;
    }

LABEL_9:
    (*(v53 + 8))(v35, v14);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v54);
  }

  if (v28 != 1)
  {
    v59 = 2;
    sub_1A9800F74();
    v35 = v18;
    v39 = v45;
    sub_1A9977530();
    v40 = v53;
    if (v39)
    {
      goto LABEL_9;
    }

    (*(v22 + 8))(v23, v46);
    (*(v40 + 8))(v18, v14);
    swift_unknownObjectRelease();
    v38 = 7;
LABEL_17:
    v41 = v24;
    goto LABEL_18;
  }

  v59 = 1;
  sub_1A9800FC8();
  v29 = v45;
  sub_1A9977530();
  v30 = v53;
  if (v29)
  {
    (*(v53 + 8))(v18, v14);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v54);
  }

  v41 = v24;
  sub_1A98016E4();
  v42 = v48;
  sub_1A99775F0();
  (*(v49 + 8))(v9, v42);
  (*(v30 + 8))(v18, v14);
  swift_unknownObjectRelease();
  v38 = v59;
LABEL_18:
  *v41 = v38;
  return __swift_destroy_boxed_opaque_existential_0Tm(v54);
}

unint64_t sub_1A98016E4()
{
  result = qword_1EB3B23C8;
  if (!qword_1EB3B23C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B23C8);
  }

  return result;
}

BOOL sub_1A9801768(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 7)
  {
    return v3 == 7;
  }

  if (v2 == 6)
  {
    return v3 == 6;
  }

  if ((v3 & 0xFE) == 6)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t getEnumTagSinglePayload for SFNearbySharingInteractionViewState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_20;
  }

  v2 = a2 + 7;
  if (a2 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 7;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 7;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 6)
  {
    v8 = v7 - 5;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SFNearbySharingInteractionViewState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 7;
  if (a3 + 7 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF9)
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1A9801914(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 6)
  {
    return v1 - 5;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1A9801928(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 5;
  }

  return result;
}

unint64_t sub_1A980198C()
{
  result = qword_1EB3B23D0;
  if (!qword_1EB3B23D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B23D0);
  }

  return result;
}

unint64_t sub_1A98019E4()
{
  result = qword_1EB3B23D8;
  if (!qword_1EB3B23D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B23D8);
  }

  return result;
}

unint64_t sub_1A9801A3C()
{
  result = qword_1EB3B23E0;
  if (!qword_1EB3B23E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B23E0);
  }

  return result;
}

unint64_t sub_1A9801A94()
{
  result = qword_1EB3B23E8;
  if (!qword_1EB3B23E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B23E8);
  }

  return result;
}

unint64_t sub_1A9801AEC()
{
  result = qword_1EB3B23F0;
  if (!qword_1EB3B23F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B23F0);
  }

  return result;
}

unint64_t sub_1A9801B44()
{
  result = qword_1EB3B23F8;
  if (!qword_1EB3B23F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B23F8);
  }

  return result;
}

unint64_t sub_1A9801B9C()
{
  result = qword_1EB3B2400;
  if (!qword_1EB3B2400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2400);
  }

  return result;
}

unint64_t sub_1A9801BF4()
{
  result = qword_1EB3B2408;
  if (!qword_1EB3B2408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2408);
  }

  return result;
}

unint64_t sub_1A9801C4C()
{
  result = qword_1EB3B2410;
  if (!qword_1EB3B2410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2410);
  }

  return result;
}

unint64_t sub_1A9801CA4()
{
  result = qword_1EB3B2418;
  if (!qword_1EB3B2418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2418);
  }

  return result;
}

uint64_t sub_1A9801CF8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701602409 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7661776B636F6873 && a2 == 0xE900000000000065 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x50746E65746E6F63 && a2 == 0xEE00776569766572)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t SFAirDropNoticeNotificationsOptions.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1A9977510();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1A9801E94()
{
  sub_1A9977980();
  sub_1A99768D0();
  return sub_1A99779B0();
}

uint64_t sub_1A9801F08()
{
  sub_1A9977980();
  sub_1A99768D0();
  return sub_1A99779B0();
}

uint64_t sub_1A9801F5C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1A9977510();

  *a2 = v5 != 0;
  return result;
}

uint64_t SFAirDropNoticeLaunchOptions.transferID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1A9802078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726566736E617274 && a2 == 0xEA00000000004449)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A99777E0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A9802108(uint64_t a1)
{
  v2 = sub_1A98022BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9802144(uint64_t a1)
{
  v2 = sub_1A98022BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropNoticeLaunchOptions.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2420, &qword_1A9996790);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98022BC();
  sub_1A9977AA0();
  sub_1A9977690();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1A98022BC()
{
  result = qword_1EB3B2428;
  if (!qword_1EB3B2428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2428);
  }

  return result;
}

uint64_t SFAirDropNoticeLaunchOptions.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2430, &qword_1A9996798);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98022BC();
  sub_1A9977A70();
  if (!v2)
  {
    v11 = sub_1A99775A0();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1A980249C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2420, &qword_1A9996790);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98022BC();
  sub_1A9977AA0();
  sub_1A9977690();
  return (*(v4 + 8))(v7, v3);
}

Sharing::SFAirDropLaunchSettings_optional __swiftcall SFAirDropLaunchSettings.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x302010004uLL >> (8 * rawValue);
  if (rawValue >= 5)
  {
    LOBYTE(v2) = 4;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1A980260C()
{
  v1 = *v0;
  sub_1A9977980();
  MEMORY[0x1AC58A630](v1 + 1);
  return sub_1A99779B0();
}

uint64_t sub_1A9802684()
{
  v1 = *v0;
  sub_1A9977980();
  MEMORY[0x1AC58A630](v1 + 1);
  return sub_1A99779B0();
}

uint64_t SFAirDropNoticeFailure.hashValue.getter()
{
  sub_1A9977980();
  MEMORY[0x1AC58A630](0);
  return sub_1A99779B0();
}

unint64_t sub_1A9802774()
{
  result = qword_1EB3B2438;
  if (!qword_1EB3B2438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2438);
  }

  return result;
}

unint64_t sub_1A98027CC()
{
  result = qword_1EB3B2440;
  if (!qword_1EB3B2440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2440);
  }

  return result;
}

unint64_t sub_1A9802824()
{
  result = qword_1EB3B2448;
  if (!qword_1EB3B2448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2448);
  }

  return result;
}

unint64_t sub_1A98028DC()
{
  result = qword_1EB3B2450;
  if (!qword_1EB3B2450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2450);
  }

  return result;
}

unint64_t sub_1A9802934()
{
  result = qword_1EB3B2458;
  if (!qword_1EB3B2458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2458);
  }

  return result;
}

unint64_t sub_1A980298C()
{
  result = qword_1EB3B2460;
  if (!qword_1EB3B2460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2460);
  }

  return result;
}

uint64_t SFXPCResilientAsyncSequence.init(name:log:body:shouldRetry:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  v14 = type metadata accessor for SFXPCResilientAsyncSequence();
  v15 = v14[11];
  v16 = sub_1A99764A0();
  result = (*(*(v16 - 8) + 32))(&a8[v15], a3, v16);
  v18 = &a8[v14[12]];
  *v18 = a4;
  *(v18 + 1) = a5;
  v19 = &a8[v14[13]];
  *v19 = a6;
  *(v19 + 1) = a7;
  return result;
}

uint64_t sub_1A9802AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  v17 = swift_allocObject();
  sub_1A9802B3C(a1, a2, a3, a4, a5, a6, a7);
  return v17;
}

uint64_t sub_1A9802B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_defaultActor_initialize();
  v15 = (v7 + qword_1EB3EAF70);
  *v15 = 0;
  v15[1] = 0;
  *(v7 + 112) = a1;
  *(v7 + 120) = a2;
  v16 = qword_1EB3EAF60;
  v17 = sub_1A99764A0();
  (*(*(v17 - 8) + 32))(v7 + v16, a3, v17);
  v18 = (v7 + qword_1EB3EAF58);
  *v18 = a4;
  v18[1] = a5;
  v19 = (v7 + qword_1EB3EAF68);
  *v19 = a6;
  v19[1] = a7;
  return v7;
}

uint64_t SFXPCResilientAsyncSequence.AsyncIterator.next()(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v2[23] = *v1;
  v3 = sub_1A99773D0();
  v2[24] = v3;
  v4 = *(v3 - 8);
  v2[25] = v4;
  v5 = *(v4 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v6 = sub_1A99773E0();
  v2[28] = v6;
  v7 = *(v6 - 8);
  v2[29] = v7;
  v8 = *(v7 + 64) + 15;
  v2[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A9802D60, v1, 0);
}

uint64_t sub_1A9802D60()
{
  v1 = v0[22];
  v2 = v0[23];
  v0[31] = *(v1 + 112);
  v3 = qword_1EB3EAF70;
  v0[32] = *(v1 + 120);
  v0[33] = v3;
  v4 = (v1 + v3);
  v5 = qword_1EB3EAF58;
  v6 = qword_1EB3EAF60;
  v0[34] = qword_1EB3EAF58;
  v0[35] = v6;
  if (*v4)
  {
    v7 = v4[1];
    v0[5] = *v4;
    v0[6] = v7;

    v8 = swift_task_alloc();
    v0[36] = v8;
    v0[37] = v2[10];
    v0[38] = v2[11];
    v0[39] = v2[12];
    type metadata accessor for SFXPCAsyncSequence.AsyncIterator();
    *v8 = v0;
    v8[1] = sub_1A9802F44;
    v9 = v0[21];

    return SFXPCAsyncSequence.AsyncIterator.next()(v9);
  }

  else
  {
    v11 = v1 + v5;
    v12 = *(v1 + v5);
    v13 = *(v11 + 8);
    v16 = (v12 + *v12);
    v14 = v12[1];
    v15 = swift_task_alloc();
    v0[41] = v15;
    *v15 = v0;
    v15[1] = sub_1A98035AC;

    return v16(v0 + 7);
  }
}

uint64_t sub_1A9802F44()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 320) = v0;

  v5 = *(v2 + 176);
  if (v0)
  {
    v6 = sub_1A98039E8;
  }

  else
  {
    v6 = sub_1A9803070;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A9803070()
{
  v17 = v0;
  if ((*(*(v0[37] - 8) + 48))(v0[21], 1) == 1)
  {
    v1 = v0[35];
    v2 = v0[32];
    v3 = v0[22];

    v4 = sub_1A9976480();
    v5 = sub_1A9976F70();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[31];
      v6 = v0[32];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1A97AF148(v7, v6, &v16);
      _os_log_impl(&dword_1A9662000, v4, v5, "XPCResilientAsyncSequence[%s] END. Inner sequence finished", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x1AC58D2C0](v9, -1, -1);
      MEMORY[0x1AC58D2C0](v8, -1, -1);
    }
  }

  v10 = v0[6];

  v11 = v0[30];
  v12 = v0[26];
  v13 = v0[27];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1A980321C()
{
  v41 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 280);
  v3 = *(v0 + 256);
  v4 = *(v0 + 176);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);

  v7 = v1;
  v8 = sub_1A9976480();
  v9 = sub_1A9976F90();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 320);
    v12 = *(v0 + 248);
    v11 = *(v0 + 256);
    v13 = swift_slowAlloc();
    v38 = v6;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v40 = v15;
    *v13 = 136315394;
    *(v13 + 4) = sub_1A97AF148(v12, v11, &v40);
    *(v13 + 12) = 2112;
    v16 = v10;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v17;
    *v14 = v17;
    _os_log_impl(&dword_1A9662000, v8, v9, "XPCResilientAsyncSequence[%s] CONTINUE. Recreated sequence after error {error: %@}", v13, 0x16u);
    sub_1A97B06FC(v14, &unk_1EB3B2A50, &unk_1A9999420);
    v18 = v14;
    v6 = v38;
    MEMORY[0x1AC58D2C0](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x1AC58D2C0](v15, -1, -1);
    MEMORY[0x1AC58D2C0](v13, -1, -1);
  }

  v19 = *(v0 + 312);
  v20 = *(v0 + 320);
  v21 = *(v0 + 296);
  v22 = *(v0 + 304);
  v23 = (*(v0 + 176) + *(v0 + 264));
  *(v0 + 152) = v6;
  *(v0 + 160) = v5;
  type metadata accessor for SFXPCAsyncSequence();
  SFXPCAsyncSequence.makeAsyncIterator()();

  v24 = *(v0 + 48);

  v25 = *v23;
  v26 = v23[1];
  *v23 = *(v0 + 136);
  sub_1A967C46C(v25);
  v27 = *(v0 + 176);
  v28 = (v27 + *(v0 + 264));
  if (*v28)
  {
    v29 = *(v0 + 184);
    v30 = v28[1];
    *(v0 + 40) = *v28;
    *(v0 + 48) = v30;

    v31 = swift_task_alloc();
    *(v0 + 288) = v31;
    *(v0 + 296) = v29[10];
    *(v0 + 304) = v29[11];
    *(v0 + 312) = v29[12];
    type metadata accessor for SFXPCAsyncSequence.AsyncIterator();
    *v31 = v0;
    v31[1] = sub_1A9802F44;
    v32 = *(v0 + 168);

    return SFXPCAsyncSequence.AsyncIterator.next()(v32);
  }

  else
  {
    v34 = (v27 + *(v0 + 272));
    v35 = v34[1];
    v39 = (*v34 + **v34);
    v36 = (*v34)[1];
    v37 = swift_task_alloc();
    *(v0 + 328) = v37;
    *v37 = v0;
    v37[1] = sub_1A98035AC;

    return v39(v0 + 56);
  }
}

uint64_t sub_1A98035AC()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 336) = v0;

  v5 = *(v2 + 176);
  if (v0)
  {
    v6 = sub_1A980479C;
  }

  else
  {
    v6 = sub_1A98036D8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A98036D8()
{
  v32 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 280);
  v3 = *(v0 + 256);
  v4 = *(v0 + 176);
  v5 = *(v0 + 64);

  v6 = sub_1A9976480();
  v7 = sub_1A9976F90();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 248);
    v8 = *(v0 + 256);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v31 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1A97AF148(v9, v8, &v31);
    _os_log_impl(&dword_1A9662000, v6, v7, "XPCResilientAsyncSequence[%s] START. Created initial sequence.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x1AC58D2C0](v11, -1, -1);
    MEMORY[0x1AC58D2C0](v10, -1, -1);
  }

  v12 = *(v0 + 184);
  v13 = (*(v0 + 176) + *(v0 + 264));
  *(v0 + 88) = v1;
  *(v0 + 96) = v5;
  v14 = v12[10];
  v15 = v12[11];
  v16 = v12[12];
  type metadata accessor for SFXPCAsyncSequence();
  SFXPCAsyncSequence.makeAsyncIterator()();

  v17 = *v13;
  v18 = v13[1];
  *v13 = *(v0 + 72);
  sub_1A967C46C(v17);
  v19 = *(v0 + 176);
  v20 = (v19 + *(v0 + 264));
  if (*v20)
  {
    v21 = *(v0 + 184);
    v22 = v20[1];
    *(v0 + 40) = *v20;
    *(v0 + 48) = v22;

    v23 = swift_task_alloc();
    *(v0 + 288) = v23;
    *(v0 + 296) = v21[10];
    *(v0 + 304) = v21[11];
    *(v0 + 312) = v21[12];
    type metadata accessor for SFXPCAsyncSequence.AsyncIterator();
    *v23 = v0;
    v23[1] = sub_1A9802F44;
    v24 = *(v0 + 168);

    return SFXPCAsyncSequence.AsyncIterator.next()(v24);
  }

  else
  {
    v26 = (v19 + *(v0 + 272));
    v27 = v26[1];
    v30 = (*v26 + **v26);
    v28 = (*v26)[1];
    v29 = swift_task_alloc();
    *(v0 + 328) = v29;
    *v29 = v0;
    v29[1] = sub_1A98035AC;

    return v30(v0 + 56);
  }
}

uint64_t sub_1A98039E8()
{
  v38 = v0;
  v1 = *(v0 + 176);
  v2 = sub_1A9804998(*(v0 + 320));
  v3 = *(v0 + 320);
  v4 = *(v0 + 280);
  v5 = *(v0 + 256);
  v6 = *(v0 + 176);

  v7 = v3;
  v8 = sub_1A9976480();
  v9 = sub_1A9976F70();
  if (v2)
  {

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 320);
      v12 = *(v0 + 248);
      v11 = *(v0 + 256);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v37[0] = v15;
      *v13 = 136315394;
      *(v13 + 4) = sub_1A97AF148(v12, v11, v37);
      *(v13 + 12) = 2112;
      v16 = v10;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v17;
      *v14 = v17;
      _os_log_impl(&dword_1A9662000, v8, v9, "XPCResilientAsyncSequence[%s] RETRY. Recreating sequence {error: %@}", v13, 0x16u);
      sub_1A97B06FC(v14, &unk_1EB3B2A50, &unk_1A9999420);
      MEMORY[0x1AC58D2C0](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x1AC58D2C0](v15, -1, -1);
      MEMORY[0x1AC58D2C0](v13, -1, -1);
    }

    v18 = *(v0 + 240);
    sub_1A99778B0();
    *(v0 + 104) = xmmword_1A9996BB0;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;

    return MEMORY[0x1EEE6DFA0](sub_1A9803D80, 0, 0);
  }

  else
  {

    if (os_log_type_enabled(v8, v9))
    {
      v19 = *(v0 + 320);
      v21 = *(v0 + 248);
      v20 = *(v0 + 256);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v37[0] = v24;
      *v22 = 136315394;
      v25 = sub_1A97AF148(v21, v20, v37);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2112;
      v26 = v19;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v27;
      *v23 = v27;
      _os_log_impl(&dword_1A9662000, v8, v9, "XPCResilientAsyncSequence[%s] FAILED. Non retryable error {error: %@}", v22, 0x16u);
      sub_1A97B06FC(v23, &unk_1EB3B2A50, &unk_1A9999420);
      MEMORY[0x1AC58D2C0](v23, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x1AC58D2C0](v24, -1, -1);
      MEMORY[0x1AC58D2C0](v22, -1, -1);
    }

    else
    {
      v28 = *(v0 + 256);
    }

    v29 = *(v0 + 320);
    swift_willThrow();
    v30 = *(v0 + 48);

    v31 = *(v0 + 320);
    v32 = *(v0 + 240);
    v34 = *(v0 + 208);
    v33 = *(v0 + 216);

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_1A9803D80()
{
  v1 = v0[30];
  v3 = v0[27];
  v2 = v0[28];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[24];
  v7 = sub_1A98052D0(&qword_1EB3AB608, MEMORY[0x1E69E8820]);
  sub_1A9977890();
  sub_1A98052D0(&unk_1EB3AB610, MEMORY[0x1E69E87E8]);
  sub_1A99773F0();
  v8 = *(v5 + 8);
  v0[43] = v8;
  v0[44] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = *(MEMORY[0x1E69E8938] + 4);
  v10 = swift_task_alloc();
  v0[45] = v10;
  *v10 = v0;
  v10[1] = sub_1A9803F04;
  v11 = v0[30];
  v13 = v0[27];
  v12 = v0[28];

  return MEMORY[0x1EEE6DE58](v13, v0 + 2, v12, v7);
}

uint64_t sub_1A9803F04()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v16 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v4 = *(v2 + 352);
    (*(v2 + 344))(*(v2 + 216), *(v2 + 192));
    v5 = sub_1A9804290;
    v6 = 0;
  }

  else
  {
    v8 = *(v2 + 344);
    v7 = *(v2 + 352);
    v10 = *(v2 + 232);
    v9 = *(v2 + 240);
    v11 = *(v2 + 216);
    v12 = *(v2 + 224);
    v13 = *(v2 + 192);
    v14 = *(v2 + 176);
    v8(v11, v13);
    (*(v10 + 8))(v9, v12);
    v5 = sub_1A9804068;
    v6 = v14;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1A9804068()
{
  v1 = (v0[22] + v0[34]);
  v2 = v1[1];
  v6 = (*v1 + **v1);
  v3 = (*v1)[1];
  v4 = swift_task_alloc();
  v0[47] = v4;
  *v4 = v0;
  v4[1] = sub_1A9804164;

  return v6(v0 + 15);
}

uint64_t sub_1A9804164()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  *(*v1 + 384) = v0;

  v5 = *(v2 + 176);
  if (v0)
  {
    v6 = sub_1A9804554;
  }

  else
  {
    v6 = sub_1A980321C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A9804290()
{
  v1 = v0[22];
  (*(v0[29] + 8))(v0[30], v0[28]);

  return MEMORY[0x1EEE6DFA0](sub_1A980430C, v1, 0);
}

uint64_t sub_1A980430C()
{
  v31 = v0;
  v1 = v0[46];
  v2 = v0[40];
  v3 = v0[35];
  v4 = v0[32];
  v5 = v0[22];

  v6 = v2;
  v7 = v1;
  v8 = sub_1A9976480();
  v9 = sub_1A9976F70();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[40];
    v12 = v0[31];
    v11 = v0[32];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30 = v15;
    *v13 = 136315650;
    v16 = sub_1A97AF148(v12, v11, &v30);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2112;
    v17 = v1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v18;
    *v14 = v18;
    *(v13 + 22) = 2112;
    v19 = v10;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v20;
    v14[1] = v20;
    _os_log_impl(&dword_1A9662000, v8, v9, "XPCResilientAsyncSequence[%s] FAILED. Unable to recreate sequence. Throwing iterationError {error: %@, iterationError: %@}", v13, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A50, &unk_1A9999420);
    swift_arrayDestroy();
    MEMORY[0x1AC58D2C0](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x1AC58D2C0](v15, -1, -1);
    MEMORY[0x1AC58D2C0](v13, -1, -1);
  }

  else
  {
    v21 = v0[32];
  }

  v22 = v0[40];
  swift_willThrow();

  v23 = v0[6];

  v24 = v0[40];
  v25 = v0[30];
  v27 = v0[26];
  v26 = v0[27];

  v28 = v0[1];

  return v28();
}

uint64_t sub_1A9804554()
{
  v31 = v0;
  v1 = v0[48];
  v2 = v0[40];
  v3 = v0[35];
  v4 = v0[32];
  v5 = v0[22];

  v6 = v2;
  v7 = v1;
  v8 = sub_1A9976480();
  v9 = sub_1A9976F70();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[40];
    v12 = v0[31];
    v11 = v0[32];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30 = v15;
    *v13 = 136315650;
    v16 = sub_1A97AF148(v12, v11, &v30);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2112;
    v17 = v1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v18;
    *v14 = v18;
    *(v13 + 22) = 2112;
    v19 = v10;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v20;
    v14[1] = v20;
    _os_log_impl(&dword_1A9662000, v8, v9, "XPCResilientAsyncSequence[%s] FAILED. Unable to recreate sequence. Throwing iterationError {error: %@, iterationError: %@}", v13, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A50, &unk_1A9999420);
    swift_arrayDestroy();
    MEMORY[0x1AC58D2C0](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x1AC58D2C0](v15, -1, -1);
    MEMORY[0x1AC58D2C0](v13, -1, -1);
  }

  else
  {
    v21 = v0[32];
  }

  v22 = v0[40];
  swift_willThrow();

  v23 = v0[6];

  v24 = v0[40];
  v25 = v0[30];
  v27 = v0[26];
  v26 = v0[27];

  v28 = v0[1];

  return v28();
}

uint64_t sub_1A980479C()
{
  v26 = v0;
  v1 = v0[42];
  v2 = v0[35];
  v3 = v0[32];
  v4 = v0[22];

  v5 = v1;
  v6 = sub_1A9976480();
  v7 = sub_1A9976F70();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[42];
    v10 = v0[31];
    v9 = v0[32];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v11 = 136315394;
    v14 = sub_1A97AF148(v10, v9, &v25);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2112;
    v15 = v8;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v16;
    *v12 = v16;
    _os_log_impl(&dword_1A9662000, v6, v7, "XPCResilientAsyncSequence[%s] FAILED. Failed to create initial sequence.  {error: %@}", v11, 0x16u);
    sub_1A97B06FC(v12, &unk_1EB3B2A50, &unk_1A9999420);
    MEMORY[0x1AC58D2C0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x1AC58D2C0](v13, -1, -1);
    MEMORY[0x1AC58D2C0](v11, -1, -1);
  }

  else
  {
    v17 = v0[32];
  }

  v18 = v0[42];
  swift_willThrow();
  v19 = v0[42];
  v20 = v0[30];
  v22 = v0[26];
  v21 = v0[27];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1A9804998(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2470, &qword_1A9996D58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v37[-v6];
  v8 = sub_1A9975DF0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v37[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = a1;
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v14 = swift_dynamicCast();
  v15 = *(v9 + 56);
  if (v14)
  {
    v15(v7, 0, 1, v8);
    (*(v9 + 32))(v12, v7, v8);
    LODWORD(v16) = sub_1A9975DE0();
    v17 = a1;

    v18 = sub_1A9976480();
    v19 = sub_1A9976F90();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v38 = v16;
      v16 = v20;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v22;
      *v16 = 136315650;
      *(v16 + 4) = sub_1A97AF148(*(v2 + 112), *(v2 + 120), &v39);
      *(v16 + 12) = 1024;
      v23 = v38;
      *(v16 + 14) = v38 & 1;
      *(v16 + 18) = 2112;
      v24 = a1;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 20) = v25;
      *v21 = v25;
      _os_log_impl(&dword_1A9662000, v18, v19, "XPCResilientAsyncSequence[%s] Evaluated Cocoa Error {isXPCConnectionError: %{BOOL}d, error: %@}", v16, 0x1Cu);
      sub_1A97B06FC(v21, &unk_1EB3B2A50, &unk_1A9999420);
      MEMORY[0x1AC58D2C0](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x1AC58D2C0](v22, -1, -1);
      MEMORY[0x1AC58D2C0](v16, -1, -1);

      (*(v9 + 8))(v12, v8);
      LOBYTE(v16) = v23;
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }
  }

  else
  {
    v15(v7, 1, 1, v8);
    sub_1A97B06FC(v7, &qword_1EB3B2470, &qword_1A9996D58);
    v26 = *(v1 + qword_1EB3EAF68);
    if (v26)
    {
      v27 = *(v1 + qword_1EB3EAF68 + 8);

      LOBYTE(v16) = v26(a1);
      v28 = a1;

      v29 = sub_1A9976480();
      v30 = sub_1A9976F90();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = v16;
        v16 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v39 = v33;
        *v16 = 136315650;
        *(v16 + 4) = sub_1A97AF148(*(v2 + 112), *(v2 + 120), &v39);
        *(v16 + 12) = 1024;
        *(v16 + 14) = v31 & 1;
        *(v16 + 18) = 2112;
        v34 = a1;
        v35 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 20) = v35;
        *v32 = v35;
        _os_log_impl(&dword_1A9662000, v29, v30, "XPCResilientAsyncSequence[%s] Evaluated shouldRetryBlock {shouldRetry: %{BOOL}d, error: %@}", v16, 0x1Cu);
        sub_1A97B06FC(v32, &unk_1EB3B2A50, &unk_1A9999420);
        MEMORY[0x1AC58D2C0](v32, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v33);
        MEMORY[0x1AC58D2C0](v33, -1, -1);
        MEMORY[0x1AC58D2C0](v16, -1, -1);
        sub_1A967C46C(v26);

        LOBYTE(v16) = v31;
      }

      else
      {
        sub_1A967C46C(v26);
      }
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  return v16 & 1;
}

uint64_t SFXPCResilientAsyncSequence.AsyncIterator.deinit()
{
  v1 = *(v0 + 120);

  v2 = qword_1EB3EAF60;
  v3 = sub_1A99764A0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + qword_1EB3EAF58 + 8);

  v5 = *(v0 + qword_1EB3EAF68 + 8);
  sub_1A967C46C(*(v0 + qword_1EB3EAF68));
  v6 = *(v0 + qword_1EB3EAF70 + 8);
  sub_1A967C46C(*(v0 + qword_1EB3EAF70));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t SFXPCResilientAsyncSequence.AsyncIterator.__deallocating_deinit()
{
  SFXPCResilientAsyncSequence.AsyncIterator.deinit();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1A9804FA0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A97B2638;

  return SFXPCResilientAsyncSequence.AsyncIterator.next()(a1);
}

uint64_t SFXPCResilientAsyncSequence.makeAsyncIterator()(uint64_t a1)
{
  v3 = sub_1A99764A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = type metadata accessor for SFXPCResilientAsyncSequence.AsyncIterator();
  v12 = *v1;
  v13 = v1[1];
  (*(v4 + 16))(v7, v1 + *(a1 + 44), v3);
  v14 = *(a1 + 52);
  v15 = (v1 + *(a1 + 48));
  v16 = *v15;
  v17 = v15[1];
  v18 = v1 + v14;
  v19 = *(v1 + v14);
  v20 = *(v18 + 1);

  sub_1A967C510(v19);
  v21 = *(v11 + 48);
  v22 = *(v11 + 52);
  v23 = swift_allocObject();
  sub_1A9802B3C(v12, v13, v7, v16, v17, v19, v20);
  return v23;
}

uint64_t sub_1A9805194@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = SFXPCResilientAsyncSequence.makeAsyncIterator()(a1);
  result = (*(*(a1 - 8) + 8))(v2, a1);
  *a2 = v5;
  return result;
}

uint64_t sub_1A98051FC(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_1A980525C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1A98052D0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A980534C()
{
  sub_1A99764A0();
  if (v0 <= 0x3F)
  {
    sub_1A97C0020();
    if (v1 <= 0x3F)
    {
      sub_1A9805420();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A9805420()
{
  if (!qword_1EB3AB5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2468, qword_1A9996CD0);
    v0 = sub_1A99770A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB3AB5E0);
    }
  }
}

uint64_t sub_1A9805484()
{
  result = sub_1A99764A0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A980555C()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3B2478);
  v1 = __swift_project_value_buffer(v0, qword_1EB3B2478);
  if (qword_1EB3ACCA8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EB3ACCB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t SFAirDropSend.ItemMetadata.fileName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SFAirDropSend.ItemMetadata.fileType.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SFAirDropSend.ItemMetadata.fileSubType.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SFAirDropSend.ItemMetadata.fileBOMPath.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t SFAirDropSend.ItemMetadata.description.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t SFAirDropSend.ItemMetadata.previewImageData.getter()
{
  v1 = *(v0 + 96);
  sub_1A97C1554(v1, *(v0 + 104));
  return v1;
}

__n128 SFAirDropSend.ItemMetadata.init(fileName:fileType:fileSubType:fileSize:fileBOMPath:fileIsDirectory:description:previewImageData:wasString:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, unint64_t a10, unsigned __int8 a11, __n128 a12, unint64_t a13, unint64_t a14, unsigned __int8 a15)
{
  result = a12;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4].n128_u64[0] = a10;
  a9[4].n128_u8[8] = a11;
  a9[5] = a12;
  a9[6].n128_u64[0] = a13;
  a9[6].n128_u64[1] = a14;
  a9[7].n128_u8[0] = a15;
  return result;
}

uint64_t sub_1A98057A0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x656D614E656C6966;
    v6 = 0x54627553656C6966;
    if (a1 != 2)
    {
      v6 = 0x657A6953656C6966;
    }

    if (a1)
    {
      v5 = 0x65707954656C6966;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7470697263736564;
    v2 = 0xD000000000000010;
    if (a1 != 7)
    {
      v2 = 0x6E69727453736177;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x504D4F42656C6966;
    if (a1 != 4)
    {
      v3 = 0x69447349656C6966;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1A98058EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A980BBA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A9805920(uint64_t a1)
{
  v2 = sub_1A980B824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A980595C(uint64_t a1)
{
  v2 = sub_1A980B824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropSend.ItemMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2490, &qword_1A9996D70);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v33 = v1[3];
  v34 = v10;
  v11 = v1[4];
  v31 = v1[5];
  v32 = v11;
  v12 = v1[6];
  v29 = v1[7];
  v30 = v12;
  v13 = v1[8];
  v38 = *(v1 + 72);
  v14 = v1[10];
  v27 = v1[11];
  v28 = v13;
  v15 = v1[13];
  v24 = v1[12];
  v25 = v15;
  v26 = v14;
  v16 = *(v1 + 112);
  v17 = a1[3];
  v18 = a1[4];
  v19 = a1;
  v21 = v20;
  __swift_project_boxed_opaque_existential_1(v19, v17);
  sub_1A980B824();
  sub_1A9977AA0();
  LOBYTE(v36) = 0;
  v22 = v35;
  sub_1A9977690();
  if (!v22)
  {
    LOBYTE(v36) = 1;
    sub_1A9977650();
    LOBYTE(v36) = 2;
    sub_1A9977650();
    LOBYTE(v36) = 3;
    sub_1A99776C0();
    LOBYTE(v36) = 4;
    sub_1A9977650();
    LOBYTE(v36) = 5;
    sub_1A99776A0();
    LOBYTE(v36) = 6;
    sub_1A9977650();
    v36 = v24;
    v37 = v25;
    v39 = 7;
    sub_1A97C1554(v24, v25);
    sub_1A97B4370();
    sub_1A9977680();
    sub_1A97D8688(v36, v37);
    LOBYTE(v36) = 8;
    sub_1A99776A0();
  }

  return (*(v4 + 8))(v7, v21);
}

uint64_t SFAirDropSend.ItemMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24A0, &qword_1A9996D78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v33 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A980B824();
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v53) = 0;
  v12 = sub_1A99775A0();
  v14 = v13;
  LOBYTE(v53) = 1;
  v15 = sub_1A9977550();
  v44 = v16;
  v42 = v15;
  LOBYTE(v53) = 2;
  v41 = sub_1A9977550();
  v43 = v17;
  LOBYTE(v53) = 3;
  v40 = sub_1A99775D0();
  LOBYTE(v53) = 4;
  v18 = sub_1A9977550();
  v38 = v19;
  LOBYTE(v53) = 5;
  v67 = sub_1A99775B0();
  LOBYTE(v53) = 6;
  v20 = sub_1A9977550();
  v39 = 0;
  *(&v37 + 1) = v21;
  *&v37 = v20;
  LOBYTE(v45) = 7;
  sub_1A97B446C();
  v22 = v39;
  sub_1A9977590();
  if (v22)
  {
    v39 = v22;
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v36 = v53;
    v35 = v54;
    v68 = 8;
    v34 = sub_1A99775B0();
    v39 = 0;
    v67 &= 1u;
    v23 = v67;
    (*(v6 + 8))(v9, v5);
    *&v45 = v12;
    *(&v45 + 1) = v14;
    *&v46 = v42;
    v24 = v44;
    *(&v46 + 1) = v44;
    *&v47 = v41;
    v25 = v43;
    *(&v47 + 1) = v43;
    *&v48 = v40;
    v33 = v18;
    *(&v48 + 1) = v18;
    v26 = v38;
    *&v49 = v38;
    BYTE8(v49) = v23;
    v27 = v37;
    v50 = v37;
    *&v51 = v36;
    *(&v51 + 1) = v35;
    v28 = v34 & 1;
    v52 = v34 & 1;
    *(a2 + 112) = v34 & 1;
    v29 = v50;
    *(a2 + 64) = v49;
    *(a2 + 80) = v29;
    *(a2 + 96) = v51;
    v30 = v45;
    v31 = v46;
    v32 = v48;
    *(a2 + 32) = v47;
    *(a2 + 48) = v32;
    *a2 = v30;
    *(a2 + 16) = v31;
    sub_1A980B878(&v45, &v53);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v53 = v12;
    v54 = v14;
    v55 = v42;
    v56 = v24;
    v57 = v41;
    v58 = v25;
    v59 = v40;
    v60 = v33;
    v61 = v26;
    v62 = v67;
    v63 = __PAIR128__(*(&v37 + 1), v27);
    v64 = v36;
    v65 = v35;
    v66 = v28;
    return sub_1A980B8B0(&v53);
  }
}

uint64_t SFAirDropSend.Item.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SFAirDropSend.Item() + 20));
  v4 = v3[6];
  v5 = v3[4];
  v20 = v3[5];
  v21 = v4;
  v6 = v3[2];
  v8 = *v3;
  v16 = v3[1];
  v7 = v16;
  v17 = v6;
  v9 = v3[4];
  v11 = v3[2];
  v18 = v3[3];
  v10 = v18;
  v19 = v9;
  v15 = *v3;
  v12 = v3[6];
  *(a1 + 80) = v20;
  *(a1 + 96) = v12;
  *(a1 + 48) = v10;
  *(a1 + 64) = v5;
  *(a1 + 16) = v7;
  *(a1 + 32) = v11;
  v22 = *(v3 + 112);
  *(a1 + 112) = *(v3 + 112);
  *a1 = v8;
  return sub_1A980B878(&v15, v14);
}

__n128 SFAirDropSend.Item.init(url:metadata:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A980C870(a1, a3, type metadata accessor for SFSecurityScopedURL);
  v5 = a3 + *(type metadata accessor for SFAirDropSend.Item() + 20);
  v6 = *(a2 + 80);
  *(v5 + 64) = *(a2 + 64);
  *(v5 + 80) = v6;
  *(v5 + 96) = *(a2 + 96);
  *(v5 + 112) = *(a2 + 112);
  v7 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v7;
  result = *(a2 + 32);
  v9 = *(a2 + 48);
  *(v5 + 32) = result;
  *(v5 + 48) = v9;
  return result;
}

uint64_t sub_1A9806418()
{
  if (*v0)
  {
    result = 0x617461646174656DLL;
  }

  else
  {
    result = 7107189;
  }

  *v0;
  return result;
}

uint64_t sub_1A980644C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A9806528(uint64_t a1)
{
  v2 = sub_1A980B92C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9806564(uint64_t a1)
{
  v2 = sub_1A980B92C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropSend.Item.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24A8, &qword_1A9996D80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A980B92C();
  sub_1A9977AA0();
  v37 = 0;
  type metadata accessor for SFSecurityScopedURL(0);
  sub_1A980CB08(&qword_1EB3B24B8, type metadata accessor for SFSecurityScopedURL);
  sub_1A99776E0();
  if (!v2)
  {
    v12 = v3 + *(type metadata accessor for SFAirDropSend.Item() + 20);
    v13 = *(v12 + 80);
    v14 = *(v12 + 48);
    v32 = *(v12 + 64);
    v33 = v13;
    v15 = *(v12 + 80);
    v34 = *(v12 + 96);
    v16 = *(v12 + 16);
    v17 = *(v12 + 48);
    v30 = *(v12 + 32);
    v31 = v17;
    v18 = *(v12 + 16);
    v29[0] = *v12;
    v29[1] = v18;
    v25 = v32;
    v26 = v15;
    v27 = *(v12 + 96);
    v21 = v29[0];
    v22 = v16;
    v35 = *(v12 + 112);
    v28 = *(v12 + 112);
    v23 = v30;
    v24 = v14;
    v36 = 1;
    sub_1A980B878(v29, v19);
    sub_1A980B980();
    sub_1A99776E0();
    v19[4] = v25;
    v19[5] = v26;
    v19[6] = v27;
    v20 = v28;
    v19[0] = v21;
    v19[1] = v22;
    v19[2] = v23;
    v19[3] = v24;
    sub_1A980B8B0(v19);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SFAirDropSend.Item.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = type metadata accessor for SFSecurityScopedURL(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24C8, &qword_1A9996D88);
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  v11 = type metadata accessor for SFAirDropSend.Item();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A980B92C();
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v16 = v26;
  v17 = v14;
  LOBYTE(v29) = 0;
  sub_1A980CB08(&qword_1EB3B24D0, type metadata accessor for SFSecurityScopedURL);
  v18 = v27;
  sub_1A99775F0();
  sub_1A980C870(v28, v17, type metadata accessor for SFSecurityScopedURL);
  v37 = 1;
  sub_1A980B9D4();
  sub_1A99775F0();
  (*(v16 + 8))(v10, v18);
  v19 = v17 + *(v11 + 20);
  v20 = v34;
  *(v19 + 64) = v33;
  *(v19 + 80) = v20;
  *(v19 + 96) = v35;
  *(v19 + 112) = v36;
  v21 = v30;
  *v19 = v29;
  *(v19 + 16) = v21;
  v22 = v32;
  *(v19 + 32) = v31;
  *(v19 + 48) = v22;
  sub_1A980BA28(v17, v25, type metadata accessor for SFAirDropSend.Item);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_1A980BA90(v17, type metadata accessor for SFAirDropSend.Item);
}

uint64_t SFAirDropSend.ItemPromise.loadHandler.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1A967C510(v1);
  return v1;
}

uint64_t SFAirDropSend.ItemPromise.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v4 = *(v1 + 120);
  v16 = *(v1 + 104);
  v3 = v16;
  v17 = v4;
  v18 = *(v1 + 136);
  v5 = v18;
  v11 = *(v1 + 24);
  v7 = *(v1 + 56);
  v12 = *(v1 + 40);
  v6 = v12;
  v13 = v7;
  v14 = *(v1 + 72);
  v8 = v14;
  v15 = v2;
  *a1 = v11;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  return sub_1A980B878(&v11, v10);
}

__n128 SFAirDropSend.ItemPromise.init(task:metadata:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 80);
  *(a3 + 88) = *(a2 + 64);
  *(a3 + 104) = v3;
  *(a3 + 120) = *(a2 + 96);
  v4 = *(a2 + 16);
  *(a3 + 24) = *a2;
  *(a3 + 40) = v4;
  result = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a3 + 56) = result;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = a1;
  *(a3 + 136) = *(a2 + 112);
  *(a3 + 72) = v6;
  return result;
}

__n128 SFAirDropSend.ItemPromise.init(loadHandler:metadata:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 + 80);
  *(a4 + 88) = *(a3 + 64);
  *(a4 + 104) = v4;
  *(a4 + 120) = *(a3 + 96);
  v5 = *(a3 + 16);
  *(a4 + 24) = *a3;
  *(a4 + 40) = v5;
  result = *(a3 + 32);
  v7 = *(a3 + 48);
  *(a4 + 56) = result;
  *a4 = 0;
  *(a4 + 8) = a1;
  *(a4 + 16) = a2;
  *(a4 + 136) = *(a3 + 112);
  *(a4 + 72) = v7;
  return result;
}

uint64_t static SFAirDropSend.convertItemPromises(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;

  sub_1A99762B0();
  v5 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E0, &qword_1A999FE90) + 68));
  *v5 = &unk_1A9996D98;
  v5[1] = v4;
  v6 = *(a2 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v42 = MEMORY[0x1E69E7CC0];
    sub_1A97BDC04(0, v6, 0);
    v7 = v42;
    v8 = (a2 + 32);
    do
    {
      *&v41[9] = *(v8 + 121);
      v9 = v8[7];
      v40 = v8[6];
      *v41 = v9;
      v10 = v8[5];
      v38 = v8[4];
      v39 = v10;
      v11 = v8[3];
      v36 = v8[2];
      v37 = v11;
      v12 = v8[1];
      v35[0] = *v8;
      v35[1] = v12;
      v33 = v41[24];
      v13 = *&v41[8];
      v14 = *&v41[16];
      v15 = *v41;
      v32 = *(&v40 + 1);
      v31 = v40;
      v16 = *(&v39 + 1);
      v17 = v38;
      v30 = v39;
      v18 = v37;
      v19 = v36;
      v29 = *(&v37 + 1);
      v28 = *(&v12 + 1);
      sub_1A980C124(v35, v34);

      v27 = _s7Sharing13SFAirDropSendO4ItemV26compressedPreviewImageData4data10Foundation0I0VSgAK_tFZ_0(v13, v14);
      v21 = v20;
      sub_1A980C15C(v35);
      v42 = v7;
      v23 = *(v7 + 16);
      v22 = *(v7 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1A97BDC04((v22 > 1), v23 + 1, 1);
        v7 = v42;
      }

      *(v7 + 16) = v23 + 1;
      v24 = v7 + 120 * v23;
      *(v24 + 32) = v28;
      *(v24 + 40) = v19;
      *(v24 + 56) = v18;
      *(v24 + 64) = v29;
      *(v24 + 72) = v17;
      *(v24 + 88) = v30;
      *(v24 + 96) = v16;
      *(v24 + 104) = v31;
      v25 = *(v34 + 3);
      *(v24 + 105) = v34[0];
      *(v24 + 108) = v25;
      *(v24 + 112) = v32;
      *(v24 + 120) = v15;
      *(v24 + 128) = v27;
      *(v24 + 136) = v21;
      *(v24 + 144) = v33;
      v8 += 9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1A9806F14(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a3;
  v5 = type metadata accessor for SFAirDropSend.Item();
  *(v3 + 40) = v5;
  v6 = *(v5 - 8);
  *(v3 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  v8 = *(type metadata accessor for SFSecurityScopedURL(0) - 8);
  *(v3 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1A9807038, 0, 0);
}

uint64_t sub_1A9807038()
{
  v8 = *(v0 + 80);
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *(v2 + 16) = v8;
  *(v2 + 32) = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E8, &qword_1A9996DB8);
  v4 = *(MEMORY[0x1E69E88A0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_1A980714C;
  v6 = *(v0 + 40);

  return MEMORY[0x1EEE6DD58](v0 + 16, v6, v3, 0, 0, &unk_1A9997308, v2, v6);
}

uint64_t sub_1A980714C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_1A980743C;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_1A9807268;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A9807268()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 64);
    v4 = *(v0 + 48);
    v18 = MEMORY[0x1E69E7CC0];
    sub_1A97BDBC0(0, v2, 0);
    v5 = v18;
    v6 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v7 = *(v4 + 72);
    do
    {
      v8 = *(v0 + 72);
      v9 = *(v0 + 56);
      sub_1A980BA28(v6, v9, type metadata accessor for SFAirDropSend.Item);
      sub_1A980BA28(v9, v8, type metadata accessor for SFSecurityScopedURL);
      sub_1A980BA90(v9, type metadata accessor for SFAirDropSend.Item);
      v11 = *(v18 + 16);
      v10 = *(v18 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1A97BDBC0(v10 > 1, v11 + 1, 1);
      }

      v12 = *(v0 + 72);
      *(v18 + 16) = v11 + 1;
      sub_1A980C870(v12, v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, type metadata accessor for SFSecurityScopedURL);
      v6 += v7;
      --v2;
    }

    while (v2);
  }

  else
  {
    v13 = *(v0 + 16);

    v5 = MEMORY[0x1E69E7CC0];
  }

  v14 = *(v0 + 72);
  v15 = *(v0 + 56);
  **(v0 + 24) = v5;

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1A980743C()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[14];

  return v4();
}

uint64_t static SFAirDropSend.loadItemPromises(_:customPayload:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A98074DC, 0, 0);
}

uint64_t sub_1A98074DC()
{
  v8 = *(v0 + 32);
  v1 = *(v0 + 24);
  v2 = type metadata accessor for SFAirDropSend.Item();
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = v8;
  *(v3 + 32) = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E8, &qword_1A9996DB8);
  v5 = *(MEMORY[0x1E69E88A0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_1A98075FC;

  return MEMORY[0x1EEE6DD58](v0 + 16, v2, v4, 0, 0, &unk_1A9996DB0, v3, v2);
}

uint64_t sub_1A98075FC()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1A9807734;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1A9807718;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A9807734()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_1A980779C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[330] = a5;
  v5[329] = a4;
  v5[328] = a3;
  v5[327] = a2;
  v5[326] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2530, &qword_1A99972D8) - 8) + 64) + 15;
  v5[331] = swift_task_alloc();
  v7 = type metadata accessor for SFAirDropSend.Item();
  v5[332] = v7;
  v8 = *(v7 - 8);
  v5[333] = v8;
  v9 = *(v8 + 64) + 15;
  v5[334] = swift_task_alloc();
  v5[335] = swift_task_alloc();
  v5[336] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00) - 8) + 64) + 15;
  v5[337] = swift_task_alloc();
  v5[338] = swift_task_alloc();
  v5[339] = swift_task_alloc();
  v5[340] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A9807918, 0, 0);
}

uint64_t sub_1A9807918()
{
  v1 = *(v0 + 2640);
  v2 = *(v1 + 16);
  if (!v2)
  {
    if (qword_1EB3B0AE8 != -1)
    {
      swift_once();
    }

    v20 = sub_1A99764A0();
    __swift_project_value_buffer(v20, qword_1EB3B2478);
    v21 = sub_1A9976480();
    v22 = sub_1A9976F70();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1A9662000, v21, v22, "No item promises provided", v23, 2u);
      MEMORY[0x1AC58D2C0](v23, -1, -1);
    }

    type metadata accessor for SFAirDropSend.Failure();
    sub_1A980CB08(&qword_1EB3B1F28, type metadata accessor for SFAirDropSend.Failure);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_11;
  }

  if (v2 == 1)
  {
    *(v0 + 304) = *(v1 + 32);
    v3 = *(v1 + 48);
    v4 = *(v1 + 64);
    v5 = *(v1 + 96);
    *(v0 + 352) = *(v1 + 80);
    *(v0 + 368) = v5;
    *(v0 + 320) = v3;
    *(v0 + 336) = v4;
    v6 = *(v1 + 112);
    v7 = *(v1 + 128);
    v8 = *(v1 + 144);
    *(v0 + 425) = *(v1 + 153);
    *(v0 + 400) = v7;
    *(v0 + 416) = v8;
    *(v0 + 384) = v6;
    *(v0 + 448) = *(v1 + 32);
    v9 = *(v1 + 48);
    v10 = *(v1 + 64);
    v11 = *(v1 + 96);
    *(v0 + 496) = *(v1 + 80);
    *(v0 + 512) = v11;
    *(v0 + 464) = v9;
    *(v0 + 480) = v10;
    v12 = *(v1 + 112);
    v13 = *(v1 + 128);
    v14 = *(v1 + 144);
    *(v0 + 569) = *(v1 + 153);
    *(v0 + 544) = v13;
    *(v0 + 560) = v14;
    *(v0 + 528) = v12;
    sub_1A980C124(v0 + 304, v0 + 592);
    v15 = swift_task_alloc();
    *(v0 + 2760) = v15;
    *v15 = v0;
    v15[1] = sub_1A9809014;
    v16 = *(v0 + 2672);
    v17 = *(v0 + 2632);
    v18 = *(v0 + 2624);

    return sub_1A9809B44(v16, (v0 + 448), v18, v17);
  }

  v33 = 0;
  v34 = (v0 + 160);
  v35 = (v1 + 32);
  v137 = *(v1 + 16);
  v138 = (v0 + 160);
  do
  {
    *(v0 + 1024) = *v35;
    v36 = v35[1];
    v37 = v35[2];
    v38 = v35[4];
    *(v0 + 1072) = v35[3];
    *(v0 + 1088) = v38;
    *(v0 + 1040) = v36;
    *(v0 + 1056) = v37;
    v39 = v35[5];
    v40 = v35[6];
    v41 = v35[7];
    *(v0 + 1145) = *(v35 + 121);
    *(v0 + 1120) = v40;
    *(v0 + 1136) = v41;
    *(v0 + 1104) = v39;
    *(v0 + 16) = *v35;
    v42 = v35[1];
    v43 = v35[2];
    v44 = v35[4];
    *(v0 + 64) = v35[3];
    *(v0 + 80) = v44;
    *(v0 + 32) = v42;
    *(v0 + 48) = v43;
    v45 = v35[5];
    v46 = v35[6];
    v47 = v35[7];
    *(v0 + 137) = *(v35 + 121);
    *(v0 + 112) = v46;
    *(v0 + 128) = v47;
    *(v0 + 96) = v45;
    if (v33 >= 5)
    {
      sub_1A980C124(v0 + 1024, v0 + 1168);
      sub_1A980C15C(v0 + 16);
    }

    else
    {
      v48 = *(v0 + 2720);
      v139 = *(v0 + 2632);
      v140 = *(v0 + 2712);
      v49 = *(v0 + 2624);
      v50 = sub_1A9976C00();
      v51 = *(v50 - 8);
      (*(v51 + 56))(v48, 1, 1, v50);
      v52 = swift_allocObject();
      *(v52 + 16) = 0u;
      v141 = (v52 + 16);
      *(v52 + 32) = v49;
      *(v52 + 40) = v139;
      v53 = *(v0 + 128);
      *(v52 + 144) = *(v0 + 112);
      *(v52 + 160) = v53;
      *(v52 + 169) = *(v0 + 137);
      v54 = *(v0 + 64);
      *(v52 + 80) = *(v0 + 48);
      *(v52 + 96) = v54;
      v55 = *(v0 + 96);
      *(v52 + 112) = *(v0 + 80);
      *(v52 + 128) = v55;
      v56 = *(v0 + 32);
      *(v52 + 48) = *(v0 + 16);
      *(v52 + 64) = v56;
      sub_1A97C13A4(v48, v140, &qword_1EB3B29C0, &qword_1A9991A00);
      v57 = (*(v51 + 48))(v140, 1, v50);
      v58 = *(v0 + 2712);
      v59 = *(v0 + 2632);
      v60 = *(v0 + 2624);
      if (v57 == 1)
      {
        sub_1A980C124(v0 + 1024, v0 + 1312);
        sub_1A97C1554(v60, v59);
        sub_1A980C124(v0 + 16, v0 + 1456);
        sub_1A97B06FC(v58, &qword_1EB3B29C0, &qword_1A9991A00);
      }

      else
      {
        sub_1A980C124(v0 + 1024, v0 + 1600);
        sub_1A97C1554(v60, v59);
        sub_1A980C124(v0 + 16, v0 + 1744);
        sub_1A9976BF0();
        (*(v51 + 8))(v58, v50);
      }

      if (*v141)
      {
        v61 = *(v52 + 24);
        v62 = *v141;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v63 = sub_1A9976B80();
        v65 = v64;
        swift_unknownObjectRelease();
      }

      else
      {
        v63 = 0;
        v65 = 0;
      }

      v66 = **(v0 + 2616);

      if (v65 | v63)
      {
        v67 = v0 + 2464;
        *(v0 + 2464) = 0;
        *(v0 + 2472) = 0;
        *(v0 + 2480) = v63;
        *(v0 + 2488) = v65;
      }

      else
      {
        v67 = 0;
      }

      v68 = *(v0 + 2720);
      v69 = *(v0 + 2656);
      *(v0 + 2560) = 1;
      *(v0 + 2568) = v67;
      *(v0 + 2576) = v66;
      swift_task_create();

      sub_1A980C15C(v0 + 16);
      sub_1A97B06FC(v68, &qword_1EB3B29C0, &qword_1A9991A00);
      v2 = v137;
      v34 = (v0 + 160);
    }

    ++v33;
    v35 += 9;
  }

  while (v2 != v33);
  v70 = MEMORY[0x1E69E7CC0];
  if (v2 <= 5)
  {
    v74 = 0;
    v72 = MEMORY[0x1E69E7CC0] + 32;
    v73 = 1;
    v71 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v71 = *(v0 + 2640);
    v72 = v71 + 32;
    v73 = (2 * v2) | 1;

    v74 = 5;
  }

  v75 = *(v0 + 2656);
  v76 = *(v0 + 2616);
  *(v0 + 2496) = v71;
  *(v0 + 2504) = v72;
  *(v0 + 2512) = v74;
  *(v0 + 2520) = v73;
  v77 = *v76;
  *(v0 + 2728) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  if (sub_1A9976D00())
  {
    if (*(v70 + 16))
    {
      v78 = *(v0 + 2608);
      swift_unknownObjectRelease();
      *v78 = v70;
      v79 = *(v0 + 2720);
      v80 = *(v0 + 2712);
      v81 = *(v0 + 2704);
      v82 = *(v0 + 2696);
      v83 = *(v0 + 2688);
      v84 = *(v0 + 2680);
      v85 = *(v0 + 2672);
      v86 = *(v0 + 2648);

      v32 = *(v0 + 8);
      goto LABEL_32;
    }

    if (qword_1EB3B0AE8 == -1)
    {
      goto LABEL_43;
    }

    goto LABEL_72;
  }

  *(v0 + 2736) = v70;
  v87 = *(v0 + 2512);
  v88 = *(v0 + 2520);
  v89 = v88 >> 1;
  if (v87 == v88 >> 1)
  {
    goto LABEL_64;
  }

  v90 = v89 - v87;
  if (__OFSUB__(v89, v87))
  {
    __break(1u);
    goto LABEL_69;
  }

  if (v90 < 1)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v142 = v77;
  if (v89 <= v87)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v91 = *(v0 + 2504);
  v92 = (v91 + 144 * (v89 - 1));
  *v34 = *v92;
  v93 = v92[1];
  v94 = v92[2];
  v95 = v92[4];
  v34[3] = v92[3];
  v34[4] = v95;
  v34[1] = v93;
  v34[2] = v94;
  v96 = v92[5];
  v97 = v92[6];
  v98 = v92[7];
  *(v34 + 121) = *(v92 + 121);
  v34[6] = v97;
  v34[7] = v98;
  v34[5] = v96;
  if (!__OFSUB__(v89, v89 - 1))
  {
    if ((v88 & 1) == 0)
    {
      sub_1A980C124(v34, v0 + 2320);
      goto LABEL_54;
    }

    sub_1A980C124(v34, v0 + 1888);
    isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
    *(v0 + 2496) = v71;
    if ((isUniquelyReferenced_nonNull & 1) == 0)
    {
      goto LABEL_54;
    }

    sub_1A9977800();
    swift_unknownObjectRetain();
    v104 = swift_dynamicCastClass();
    if (!v104)
    {
      swift_unknownObjectRelease();
      v104 = MEMORY[0x1E69E7CC0];
    }

    v105 = *(v104 + 16);
    if (v91 + 144 * v87 + 144 * v90 == v104 + 144 * v105 + 32)
    {
      v111 = *(v104 + 24);

      v112 = (v111 >> 1) - v105;
      v113 = __OFADD__(v90, v112);
      v110 = v90 + v112;
      if (v113)
      {
        goto LABEL_74;
      }
    }

    else
    {

      v110 = v89 - v87;
    }

    if (!__OFADD__(v90, -1))
    {
      if (v110 >= v90 - 1)
      {
        sub_1A980CB50(v89 - 1, v89, 0);
        goto LABEL_55;
      }

LABEL_54:
      sub_1A980ADE0((v89 - 1), v89, 0);
LABEL_55:
      v114 = *(v0 + 2704);
      v115 = *(v0 + 2696);
      v116 = *(v0 + 2632);
      v117 = *(v0 + 2624);
      v71 = *(v0 + 2496);
      v118 = sub_1A9976C00();
      v119 = *(v118 - 8);
      (*(v119 + 56))(v114, 1, 1, v118);
      v120 = swift_allocObject();
      *(v120 + 16) = 0;
      *(v120 + 24) = 0;
      *(v120 + 32) = v117;
      *(v120 + 40) = v116;
      v121 = *(v0 + 272);
      *(v120 + 144) = *(v0 + 256);
      *(v120 + 160) = v121;
      *(v120 + 169) = *(v0 + 281);
      v122 = *(v0 + 208);
      *(v120 + 80) = *(v0 + 192);
      *(v120 + 96) = v122;
      v123 = *(v0 + 240);
      *(v120 + 112) = *(v0 + 224);
      *(v120 + 128) = v123;
      v124 = *(v0 + 176);
      *(v120 + 48) = *v138;
      *(v120 + 64) = v124;
      sub_1A97C13A4(v114, v115, &qword_1EB3B29C0, &qword_1A9991A00);
      LODWORD(v115) = (*(v119 + 48))(v115, 1, v118);
      sub_1A97C1554(v117, v116);
      v125 = *(v0 + 2696);
      if (v115 == 1)
      {
        sub_1A980C124(v138, v0 + 2032);
        sub_1A97B06FC(v125, &qword_1EB3B29C0, &qword_1A9991A00);
        v126 = 0;
        v127 = 0;
        v128 = v0 + 160;
        v129 = (v0 + 2528);
      }

      else
      {
        sub_1A980C124(v138, v0 + 2176);
        sub_1A9976BF0();
        (*(v119 + 8))(v125, v118);
        v128 = v0 + 160;
        v129 = (v0 + 2528);
        if (*(v120 + 16))
        {
          v130 = *(v120 + 24);
          swift_getObjectType();
          swift_unknownObjectRetain();
          v126 = sub_1A9976B80();
          v127 = v131;
          swift_unknownObjectRelease();
        }

        else
        {
          v126 = 0;
          v127 = 0;
        }
      }

      if (v127 | v126)
      {
        *v129 = 0;
        v129[1] = 0;
        *(v0 + 2544) = v126;
        *(v0 + 2552) = v127;
      }

      else
      {
        v129 = 0;
      }

      v132 = *(v0 + 2704);
      v133 = *(v0 + 2656);
      *(v0 + 2584) = 1;
      *(v0 + 2592) = v129;
      *(v0 + 2600) = v142;
      swift_task_create();

      sub_1A980C15C(v128);
      sub_1A97B06FC(v132, &qword_1EB3B29C0, &qword_1A9991A00);
LABEL_64:
      *(v0 + 2744) = v71;
      v134 = *(MEMORY[0x1E69E8708] + 4);
      v135 = swift_task_alloc();
      *(v0 + 2752) = v135;
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2538, &qword_1A9997300);
      *v135 = v0;
      v135[1] = sub_1A9808670;
      v106 = *(v0 + 2648);
      v136 = *(v0 + 2616);
      v107 = 0;
      v108 = 0;

      return MEMORY[0x1EEE6DAC8](v106, v107, v108, v109);
    }

    __break(1u);
LABEL_74:
    __break(1u);
    return MEMORY[0x1EEE6DAC8](v106, v107, v108, v109);
  }

LABEL_71:
  __break(1u);
  __break(1u);
LABEL_72:
  swift_once();
LABEL_43:
  v99 = sub_1A99764A0();
  __swift_project_value_buffer(v99, qword_1EB3B2478);
  v100 = sub_1A9976480();
  v101 = sub_1A9976F70();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    *v102 = 0;
    _os_log_impl(&dword_1A9662000, v100, v101, "Failed to load any items", v102, 2u);
    MEMORY[0x1AC58D2C0](v102, -1, -1);
  }

  type metadata accessor for SFAirDropSend.Failure();
  sub_1A980CB08(&qword_1EB3B1F28, type metadata accessor for SFAirDropSend.Failure);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  swift_unknownObjectRelease();
LABEL_11:
  v24 = *(v0 + 2720);
  v25 = *(v0 + 2712);
  v26 = *(v0 + 2704);
  v27 = *(v0 + 2696);
  v28 = *(v0 + 2688);
  v29 = *(v0 + 2680);
  v30 = *(v0 + 2672);
  v31 = *(v0 + 2648);

  v32 = *(v0 + 8);
LABEL_32:

  return v32();
}

uint64_t sub_1A9808670()
{
  v2 = *(*v1 + 2752);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_1A98093B4;
  }

  else
  {
    v3 = sub_1A9808788;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A9808788()
{
  v1 = *(v0 + 2648);
  if ((*(*(v0 + 2664) + 48))(v1, 1, *(v0 + 2656)) == 1)
  {
    sub_1A97B06FC(v1, &qword_1EB3B2530, &qword_1A99972D8);
    v2 = *(v0 + 2736);
  }

  else
  {
    v3 = *(v0 + 2736);
    v4 = *(v0 + 2688);
    v5 = *(v0 + 2680);
    sub_1A980C870(v1, v4, type metadata accessor for SFAirDropSend.Item);
    sub_1A980BA28(v4, v5, type metadata accessor for SFAirDropSend.Item);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v2 = *(v0 + 2736);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2 = sub_1A97AEA84(0, v2[2] + 1, 1, *(v0 + 2736));
    }

    v8 = v2[2];
    v7 = v2[3];
    if (v8 >= v7 >> 1)
    {
      v2 = sub_1A97AEA84(v7 > 1, v8 + 1, 1, v2);
    }

    v9 = *(v0 + 2680);
    v10 = *(v0 + 2664);
    sub_1A980BA90(*(v0 + 2688), type metadata accessor for SFAirDropSend.Item);
    v2[2] = v8 + 1;
    sub_1A980C870(v9, v2 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8, type metadata accessor for SFAirDropSend.Item);
  }

  v11 = *(v0 + 2728);
  v12 = *(v0 + 2656);
  v13 = **(v0 + 2616);
  v14 = sub_1A9976D00();
  v15 = *(v0 + 2744);
  if ((v14 & 1) == 0)
  {
    *(v0 + 2736) = v2;
    v27 = *(v0 + 2512);
    v28 = *(v0 + 2520);
    v29 = v28 >> 1;
    if (v27 == v28 >> 1)
    {
      goto LABEL_43;
    }

    v30 = v29 - v27;
    if (__OFSUB__(v29, v27))
    {
      __break(1u);
    }

    else if (v30 >= 1)
    {
      if (v29 > v27)
      {
        v88 = v13;
        v31 = *(v0 + 2504);
        v32 = (v31 + 144 * (v29 - 1));
        *(v0 + 160) = *v32;
        v33 = v32[1];
        v34 = v32[2];
        v35 = v32[4];
        *(v0 + 208) = v32[3];
        *(v0 + 224) = v35;
        *(v0 + 176) = v33;
        *(v0 + 192) = v34;
        v36 = v32[5];
        v37 = v32[6];
        v38 = v32[7];
        *(v0 + 281) = *(v32 + 121);
        *(v0 + 256) = v37;
        *(v0 + 272) = v38;
        *(v0 + 240) = v36;
        if (!__OFSUB__(v29, v29 - 1))
        {
          if ((v28 & 1) == 0)
          {
            sub_1A980C124(v0 + 160, v0 + 2320);
            goto LABEL_33;
          }

          sub_1A980C124(v0 + 160, v0 + 1888);
          isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
          *(v0 + 2496) = v15;
          if ((isUniquelyReferenced_nonNull & 1) == 0)
          {
            goto LABEL_33;
          }

          sub_1A9977800();
          swift_unknownObjectRetain();
          v53 = swift_dynamicCastClass();
          if (!v53)
          {
            swift_unknownObjectRelease();
            v53 = MEMORY[0x1E69E7CC0];
          }

          v54 = *(v53 + 16);
          if (v31 + 144 * v27 + 144 * v30 == v53 + 144 * v54 + 32)
          {
            v60 = *(v53 + 24);

            v61 = (v60 >> 1) - v54;
            v62 = __OFADD__(v30, v61);
            v59 = v30 + v61;
            if (v62)
            {
              goto LABEL_53;
            }
          }

          else
          {

            v59 = v29 - v27;
          }

          if (!__OFADD__(v30, -1))
          {
            if (v59 >= v30 - 1)
            {
              sub_1A980CB50(v29 - 1, v29, 0);
              goto LABEL_34;
            }

LABEL_33:
            sub_1A980ADE0((v29 - 1), v29, 0);
LABEL_34:
            v63 = *(v0 + 2704);
            v64 = *(v0 + 2696);
            v65 = *(v0 + 2632);
            v66 = *(v0 + 2624);
            v87 = *(v0 + 2496);
            v67 = sub_1A9976C00();
            v68 = *(v67 - 8);
            (*(v68 + 56))(v63, 1, 1, v67);
            v69 = swift_allocObject();
            *(v69 + 16) = 0;
            v70 = (v69 + 16);
            *(v69 + 24) = 0;
            *(v69 + 32) = v66;
            *(v69 + 40) = v65;
            v71 = *(v0 + 272);
            *(v69 + 144) = *(v0 + 256);
            *(v69 + 160) = v71;
            *(v69 + 169) = *(v0 + 281);
            v72 = *(v0 + 208);
            *(v69 + 80) = *(v0 + 192);
            *(v69 + 96) = v72;
            v73 = *(v0 + 240);
            *(v69 + 112) = *(v0 + 224);
            *(v69 + 128) = v73;
            v74 = *(v0 + 176);
            *(v69 + 48) = *(v0 + 160);
            *(v69 + 64) = v74;
            sub_1A97C13A4(v63, v64, &qword_1EB3B29C0, &qword_1A9991A00);
            LODWORD(v64) = (*(v68 + 48))(v64, 1, v67);
            sub_1A97C1554(v66, v65);
            v75 = *(v0 + 2696);
            if (v64 == 1)
            {
              sub_1A980C124(v0 + 160, v0 + 2032);
              sub_1A97B06FC(v75, &qword_1EB3B29C0, &qword_1A9991A00);
              v76 = 0;
              v77 = 0;
            }

            else
            {
              sub_1A980C124(v0 + 160, v0 + 2176);
              sub_1A9976BF0();
              (*(v68 + 8))(v75, v67);
              if (*v70)
              {
                v78 = *(v69 + 24);
                v79 = *v70;
                swift_getObjectType();
                swift_unknownObjectRetain();
                v76 = sub_1A9976B80();
                v77 = v80;
                swift_unknownObjectRelease();
              }

              else
              {
                v76 = 0;
                v77 = 0;
              }
            }

            if (v77 | v76)
            {
              v81 = v0 + 2528;
              *(v0 + 2528) = 0;
              *(v0 + 2536) = 0;
              *(v0 + 2544) = v76;
              *(v0 + 2552) = v77;
            }

            else
            {
              v81 = 0;
            }

            v82 = *(v0 + 2704);
            v83 = *(v0 + 2656);
            *(v0 + 2584) = 1;
            *(v0 + 2592) = v81;
            v15 = v87;
            *(v0 + 2600) = v88;
            swift_task_create();

            sub_1A980C15C(v0 + 160);
            sub_1A97B06FC(v82, &qword_1EB3B29C0, &qword_1A9991A00);
LABEL_43:
            *(v0 + 2744) = v15;
            v84 = *(MEMORY[0x1E69E8708] + 4);
            v85 = swift_task_alloc();
            *(v0 + 2752) = v85;
            v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2538, &qword_1A9997300);
            *v85 = v0;
            v85[1] = sub_1A9808670;
            v55 = *(v0 + 2648);
            v86 = *(v0 + 2616);
            v56 = 0;
            v57 = 0;

            return MEMORY[0x1EEE6DAC8](v55, v56, v57, v58);
          }

          __break(1u);
LABEL_53:
          __break(1u);
          return MEMORY[0x1EEE6DAC8](v55, v56, v57, v58);
        }

LABEL_50:
        __break(1u);
        __break(1u);
        goto LABEL_51;
      }

LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    __break(1u);
    goto LABEL_49;
  }

  if (!v2[2])
  {

    if (qword_1EB3B0AE8 == -1)
    {
LABEL_19:
      v39 = sub_1A99764A0();
      __swift_project_value_buffer(v39, qword_1EB3B2478);
      v40 = sub_1A9976480();
      v41 = sub_1A9976F70();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_1A9662000, v40, v41, "Failed to load any items", v42, 2u);
        MEMORY[0x1AC58D2C0](v42, -1, -1);
      }

      type metadata accessor for SFAirDropSend.Failure();
      sub_1A980CB08(&qword_1EB3B1F28, type metadata accessor for SFAirDropSend.Failure);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      swift_unknownObjectRelease();
      v43 = *(v0 + 2720);
      v44 = *(v0 + 2712);
      v45 = *(v0 + 2704);
      v46 = *(v0 + 2696);
      v47 = *(v0 + 2688);
      v48 = *(v0 + 2680);
      v49 = *(v0 + 2672);
      v50 = *(v0 + 2648);

      v26 = *(v0 + 8);
      goto LABEL_22;
    }

LABEL_51:
    swift_once();
    goto LABEL_19;
  }

  v16 = *(v0 + 2608);
  v17 = *(v0 + 2744);
  swift_unknownObjectRelease();
  *v16 = v2;
  v18 = *(v0 + 2720);
  v19 = *(v0 + 2712);
  v20 = *(v0 + 2704);
  v21 = *(v0 + 2696);
  v22 = *(v0 + 2688);
  v23 = *(v0 + 2680);
  v24 = *(v0 + 2672);
  v25 = *(v0 + 2648);

  v26 = *(v0 + 8);
LABEL_22:

  return v26();
}

uint64_t sub_1A9809014()
{
  v2 = *v1;
  v3 = (*v1 + 448);
  v4 = *(*v1 + 2760);
  v19 = *v1;
  *(*v1 + 2768) = v0;

  if (v0)
  {
    v2[46] = *v3;
    v5 = v3[1];
    v6 = v3[2];
    v7 = v3[4];
    v2[49] = v3[3];
    v2[50] = v7;
    v2[47] = v5;
    v2[48] = v6;
    v8 = v3[5];
    v9 = v3[6];
    v10 = v3[7];
    *(v2 + 857) = *(v3 + 121);
    v2[52] = v9;
    v2[53] = v10;
    v2[51] = v8;
    sub_1A980C15C((v2 + 46));
    v11 = sub_1A98092E4;
  }

  else
  {
    v2[55] = *v3;
    v12 = v3[1];
    v13 = v3[2];
    v14 = v3[4];
    v2[58] = v3[3];
    v2[59] = v14;
    v2[56] = v12;
    v2[57] = v13;
    v15 = v3[5];
    v16 = v3[6];
    v17 = v3[7];
    *(v2 + 1001) = *(v3 + 121);
    v2[61] = v16;
    v2[62] = v17;
    v2[60] = v15;
    sub_1A980C15C((v2 + 55));
    v11 = sub_1A98091A4;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1A98091A4()
{
  v1 = v0[334];
  v2 = v0[333];
  v3 = v0[326];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B11A0, &qword_1A99919E8);
  v4 = *(v2 + 72);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A9996D60;
  sub_1A980C870(v1, v6 + v5, type metadata accessor for SFAirDropSend.Item);
  *v3 = v6;
  v7 = v0[340];
  v8 = v0[339];
  v9 = v0[338];
  v10 = v0[337];
  v11 = v0[336];
  v12 = v0[335];
  v13 = v0[334];
  v14 = v0[331];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1A98092E4()
{
  v1 = v0[346];
  v2 = v0[340];
  v3 = v0[339];
  v4 = v0[338];
  v5 = v0[337];
  v6 = v0[336];
  v7 = v0[335];
  v8 = v0[334];
  v9 = v0[331];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1A98093B4()
{
  (*(*(v0 + 2664) + 56))(*(v0 + 2648), 1, 1, *(v0 + 2656));
  sub_1A97B06FC(*(v0 + 2648), &qword_1EB3B2530, &qword_1A99972D8);
  v1 = *(v0 + 2736);
  v2 = *(v0 + 2728);
  v3 = *(v0 + 2656);
  v4 = **(v0 + 2616);
  v5 = sub_1A9976D00();
  v6 = *(v0 + 2744);
  if ((v5 & 1) == 0)
  {
    *(v0 + 2736) = v1;
    v18 = *(v0 + 2512);
    v19 = *(v0 + 2520);
    v20 = v19 >> 1;
    if (v18 == v19 >> 1)
    {
      goto LABEL_36;
    }

    v21 = v20 - v18;
    if (__OFSUB__(v20, v18))
    {
      __break(1u);
    }

    else if (v21 >= 1)
    {
      if (v20 > v18)
      {
        v79 = v4;
        v22 = *(v0 + 2504);
        v23 = (v22 + 144 * (v20 - 1));
        *(v0 + 160) = *v23;
        v24 = v23[1];
        v25 = v23[2];
        v26 = v23[4];
        *(v0 + 208) = v23[3];
        *(v0 + 224) = v26;
        *(v0 + 176) = v24;
        *(v0 + 192) = v25;
        v27 = v23[5];
        v28 = v23[6];
        v29 = v23[7];
        *(v0 + 281) = *(v23 + 121);
        *(v0 + 256) = v28;
        *(v0 + 272) = v29;
        *(v0 + 240) = v27;
        if (!__OFSUB__(v20, v20 - 1))
        {
          if ((v19 & 1) == 0)
          {
            sub_1A980C124(v0 + 160, v0 + 2320);
            goto LABEL_26;
          }

          sub_1A980C124(v0 + 160, v0 + 1888);
          isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
          *(v0 + 2496) = v6;
          if ((isUniquelyReferenced_nonNull & 1) == 0)
          {
            goto LABEL_26;
          }

          sub_1A9977800();
          swift_unknownObjectRetain();
          v44 = swift_dynamicCastClass();
          if (!v44)
          {
            swift_unknownObjectRelease();
            v44 = MEMORY[0x1E69E7CC0];
          }

          v45 = *(v44 + 16);
          if (v22 + 144 * v18 + 144 * v21 == v44 + 144 * v45 + 32)
          {
            v51 = *(v44 + 24);

            v52 = (v51 >> 1) - v45;
            v53 = __OFADD__(v21, v52);
            v50 = v21 + v52;
            if (v53)
            {
              goto LABEL_46;
            }
          }

          else
          {

            v50 = v20 - v18;
          }

          if (!__OFADD__(v21, -1))
          {
            if (v50 >= v21 - 1)
            {
              sub_1A980CB50(v20 - 1, v20, 0);
              goto LABEL_27;
            }

LABEL_26:
            sub_1A980ADE0((v20 - 1), v20, 0);
LABEL_27:
            v54 = *(v0 + 2704);
            v55 = *(v0 + 2696);
            v56 = *(v0 + 2632);
            v57 = *(v0 + 2624);
            v78 = *(v0 + 2496);
            v58 = sub_1A9976C00();
            v59 = *(v58 - 8);
            (*(v59 + 56))(v54, 1, 1, v58);
            v60 = swift_allocObject();
            *(v60 + 16) = 0;
            v61 = (v60 + 16);
            *(v60 + 24) = 0;
            *(v60 + 32) = v57;
            *(v60 + 40) = v56;
            v62 = *(v0 + 272);
            *(v60 + 144) = *(v0 + 256);
            *(v60 + 160) = v62;
            *(v60 + 169) = *(v0 + 281);
            v63 = *(v0 + 208);
            *(v60 + 80) = *(v0 + 192);
            *(v60 + 96) = v63;
            v64 = *(v0 + 240);
            *(v60 + 112) = *(v0 + 224);
            *(v60 + 128) = v64;
            v65 = *(v0 + 176);
            *(v60 + 48) = *(v0 + 160);
            *(v60 + 64) = v65;
            sub_1A97C13A4(v54, v55, &qword_1EB3B29C0, &qword_1A9991A00);
            LODWORD(v55) = (*(v59 + 48))(v55, 1, v58);
            sub_1A97C1554(v57, v56);
            v66 = *(v0 + 2696);
            if (v55 == 1)
            {
              sub_1A980C124(v0 + 160, v0 + 2032);
              sub_1A97B06FC(v66, &qword_1EB3B29C0, &qword_1A9991A00);
              v67 = 0;
              v68 = 0;
            }

            else
            {
              sub_1A980C124(v0 + 160, v0 + 2176);
              sub_1A9976BF0();
              (*(v59 + 8))(v66, v58);
              if (*v61)
              {
                v69 = *(v60 + 24);
                v70 = *v61;
                swift_getObjectType();
                swift_unknownObjectRetain();
                v67 = sub_1A9976B80();
                v68 = v71;
                swift_unknownObjectRelease();
              }

              else
              {
                v67 = 0;
                v68 = 0;
              }
            }

            if (v68 | v67)
            {
              v72 = v0 + 2528;
              *(v0 + 2528) = 0;
              *(v0 + 2536) = 0;
              *(v0 + 2544) = v67;
              *(v0 + 2552) = v68;
            }

            else
            {
              v72 = 0;
            }

            v73 = *(v0 + 2704);
            v74 = *(v0 + 2656);
            *(v0 + 2584) = 1;
            *(v0 + 2592) = v72;
            v6 = v78;
            *(v0 + 2600) = v79;
            swift_task_create();

            sub_1A980C15C(v0 + 160);
            sub_1A97B06FC(v73, &qword_1EB3B29C0, &qword_1A9991A00);
LABEL_36:
            *(v0 + 2744) = v6;
            v75 = *(MEMORY[0x1E69E8708] + 4);
            v76 = swift_task_alloc();
            *(v0 + 2752) = v76;
            v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2538, &qword_1A9997300);
            *v76 = v0;
            v76[1] = sub_1A9808670;
            v46 = *(v0 + 2648);
            v77 = *(v0 + 2616);
            v47 = 0;
            v48 = 0;

            return MEMORY[0x1EEE6DAC8](v46, v47, v48, v49);
          }

          __break(1u);
LABEL_46:
          __break(1u);
          return MEMORY[0x1EEE6DAC8](v46, v47, v48, v49);
        }

LABEL_43:
        __break(1u);
        __break(1u);
        goto LABEL_44;
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    __break(1u);
    goto LABEL_42;
  }

  if (!*(v1 + 16))
  {

    if (qword_1EB3B0AE8 == -1)
    {
LABEL_12:
      v30 = sub_1A99764A0();
      __swift_project_value_buffer(v30, qword_1EB3B2478);
      v31 = sub_1A9976480();
      v32 = sub_1A9976F70();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1A9662000, v31, v32, "Failed to load any items", v33, 2u);
        MEMORY[0x1AC58D2C0](v33, -1, -1);
      }

      type metadata accessor for SFAirDropSend.Failure();
      sub_1A980CB08(&qword_1EB3B1F28, type metadata accessor for SFAirDropSend.Failure);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      swift_unknownObjectRelease();
      v34 = *(v0 + 2720);
      v35 = *(v0 + 2712);
      v36 = *(v0 + 2704);
      v37 = *(v0 + 2696);
      v38 = *(v0 + 2688);
      v39 = *(v0 + 2680);
      v40 = *(v0 + 2672);
      v41 = *(v0 + 2648);

      v17 = *(v0 + 8);
      goto LABEL_15;
    }

LABEL_44:
    swift_once();
    goto LABEL_12;
  }

  v7 = *(v0 + 2608);
  v8 = *(v0 + 2744);
  swift_unknownObjectRelease();
  *v7 = v1;
  v9 = *(v0 + 2720);
  v10 = *(v0 + 2712);
  v11 = *(v0 + 2704);
  v12 = *(v0 + 2696);
  v13 = *(v0 + 2688);
  v14 = *(v0 + 2680);
  v15 = *(v0 + 2672);
  v16 = *(v0 + 2648);

  v17 = *(v0 + 8);
LABEL_15:

  return v17();
}

uint64_t sub_1A9809B44(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 312) = a3;
  *(v4 + 320) = a4;
  *(v4 + 304) = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2530, &qword_1A99972D8) - 8) + 64) + 15;
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();
  v7 = a2[7];
  *(v4 + 112) = a2[6];
  *(v4 + 128) = v7;
  *(v4 + 137) = *(a2 + 121);
  v8 = a2[3];
  *(v4 + 48) = a2[2];
  *(v4 + 64) = v8;
  v9 = a2[5];
  *(v4 + 80) = a2[4];
  *(v4 + 96) = v9;
  v10 = a2[1];
  *(v4 + 16) = *a2;
  *(v4 + 32) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1A9809C34, 0, 0);
}

uint64_t sub_1A9809C34()
{
  v43 = v0;
  v1 = v0[44];
  v2 = type metadata accessor for SFAirDropSend.Item();
  v0[45] = v2;
  v3 = *(v2 - 8);
  v0[46] = v3;
  v5 = v3 + 56;
  v4 = *(v3 + 56);
  v0[47] = v4;
  v0[48] = v5 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  v6 = v0[2];
  v0[49] = v6;
  if (v6)
  {
    v7 = *(MEMORY[0x1E69E86A8] + 4);

    v8 = swift_task_alloc();
    v0[50] = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    *v8 = v0;
    v8[1] = sub_1A980A180;
    v10 = v0[43];
    v11 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v10, v6, v2, v9, v11);
  }

  else
  {
    v13 = v0[3];
    v12 = v0[4];
    v0[52] = v13;
    v0[53] = v12;
    if (v13)
    {

      v41 = (v13 + *v13);
      v14 = v13[1];
      v15 = swift_task_alloc();
      v0[54] = v15;
      *v15 = v0;
      v15[1] = sub_1A980A5FC;
      v16 = v0[42];
      v17 = v0[39];
      v18 = v0[40];

      return v41(v16, v17, v18);
    }

    else
    {
      v19 = v0[45];
      v20 = v0[46];
      v21 = v0[41];
      sub_1A97C13A4(v0[44], v21, &qword_1EB3B2530, &qword_1A99972D8);
      if ((*(v20 + 48))(v21, 1, v19) == 1)
      {
        sub_1A97B06FC(v0[41], &qword_1EB3B2530, &qword_1A99972D8);
        if (qword_1EB3B0AE8 != -1)
        {
          swift_once();
        }

        v22 = sub_1A99764A0();
        __swift_project_value_buffer(v22, qword_1EB3B2478);
        sub_1A980C124((v0 + 2), (v0 + 20));
        v23 = sub_1A9976480();
        v24 = sub_1A9976F70();
        sub_1A980C15C((v0 + 2));
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v42 = v26;
          *v25 = 136315138;
          v27 = v0[5];
          v28 = v0[6];

          v29 = sub_1A97AF148(v27, v28, &v42);

          *(v25 + 4) = v29;
          _os_log_impl(&dword_1A9662000, v23, v24, "Failed to load item promise %s", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v26);
          MEMORY[0x1AC58D2C0](v26, -1, -1);
          MEMORY[0x1AC58D2C0](v25, -1, -1);
        }

        v30 = v0[44];
        type metadata accessor for SFAirDropSend.Failure();
        sub_1A980CB08(&qword_1EB3B1F28, type metadata accessor for SFAirDropSend.Failure);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_1A97B06FC(v30, &qword_1EB3B2530, &qword_1A99972D8);
        v32 = v0[43];
        v31 = v0[44];
        v34 = v0[41];
        v33 = v0[42];

        v35 = v0[1];
      }

      else
      {
        v36 = v0[43];
        v38 = v0[41];
        v37 = v0[42];
        v39 = v0[38];
        sub_1A97B06FC(v0[44], &qword_1EB3B2530, &qword_1A99972D8);
        sub_1A980C870(v38, v39, type metadata accessor for SFAirDropSend.Item);

        v35 = v0[1];
      }

      return v35();
    }
  }
}

uint64_t sub_1A980A180()
{
  v2 = *(*v1 + 400);
  v5 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = sub_1A980AA60;
  }

  else
  {
    v3 = sub_1A980A294;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A980A294()
{
  v30 = v0;
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[47];
  v4 = v0[44];
  v5 = v0[45];
  v6 = v0[43];

  sub_1A97B06FC(v4, &qword_1EB3B2530, &qword_1A99972D8);
  v3(v6, 0, 1, v5);
  sub_1A980CCC8(v0[43], v0[44]);
  v7 = v0[45];
  v8 = v0[46];
  v9 = v0[41];
  sub_1A97C13A4(v0[44], v9, &qword_1EB3B2530, &qword_1A99972D8);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    sub_1A97B06FC(v0[41], &qword_1EB3B2530, &qword_1A99972D8);
    if (qword_1EB3B0AE8 != -1)
    {
      swift_once();
    }

    v10 = sub_1A99764A0();
    __swift_project_value_buffer(v10, qword_1EB3B2478);
    sub_1A980C124((v0 + 2), (v0 + 20));
    v11 = sub_1A9976480();
    v12 = sub_1A9976F70();
    sub_1A980C15C((v0 + 2));
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v29 = v14;
      *v13 = 136315138;
      v15 = v0[5];
      v16 = v0[6];

      v17 = sub_1A97AF148(v15, v16, &v29);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1A9662000, v11, v12, "Failed to load item promise %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x1AC58D2C0](v14, -1, -1);
      MEMORY[0x1AC58D2C0](v13, -1, -1);
    }

    v18 = v0[44];
    type metadata accessor for SFAirDropSend.Failure();
    sub_1A980CB08(&qword_1EB3B1F28, type metadata accessor for SFAirDropSend.Failure);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1A97B06FC(v18, &qword_1EB3B2530, &qword_1A99972D8);
    v20 = v0[43];
    v19 = v0[44];
    v22 = v0[41];
    v21 = v0[42];

    v23 = v0[1];
  }

  else
  {
    v24 = v0[43];
    v26 = v0[41];
    v25 = v0[42];
    v27 = v0[38];
    sub_1A97B06FC(v0[44], &qword_1EB3B2530, &qword_1A99972D8);
    sub_1A980C870(v26, v27, type metadata accessor for SFAirDropSend.Item);

    v23 = v0[1];
  }

  return v23();
}

uint64_t sub_1A980A5FC()
{
  v2 = *(*v1 + 432);
  v5 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v3 = sub_1A980AB0C;
  }

  else
  {
    v3 = sub_1A980A710;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A980A710()
{
  v26 = v0;
  v1 = v0[53];
  v2 = v0[44];
  sub_1A967C46C(v0[52]);
  sub_1A97B06FC(v2, &qword_1EB3B2530, &qword_1A99972D8);
  sub_1A980CCC8(v0[42], v0[44]);
  v3 = v0[45];
  v4 = v0[46];
  v5 = v0[41];
  sub_1A97C13A4(v0[44], v5, &qword_1EB3B2530, &qword_1A99972D8);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_1A97B06FC(v0[41], &qword_1EB3B2530, &qword_1A99972D8);
    if (qword_1EB3B0AE8 != -1)
    {
      swift_once();
    }

    v6 = sub_1A99764A0();
    __swift_project_value_buffer(v6, qword_1EB3B2478);
    sub_1A980C124((v0 + 2), (v0 + 20));
    v7 = sub_1A9976480();
    v8 = sub_1A9976F70();
    sub_1A980C15C((v0 + 2));
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v25 = v10;
      *v9 = 136315138;
      v11 = v0[5];
      v12 = v0[6];

      v13 = sub_1A97AF148(v11, v12, &v25);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1A9662000, v7, v8, "Failed to load item promise %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x1AC58D2C0](v10, -1, -1);
      MEMORY[0x1AC58D2C0](v9, -1, -1);
    }

    v14 = v0[44];
    type metadata accessor for SFAirDropSend.Failure();
    sub_1A980CB08(&qword_1EB3B1F28, type metadata accessor for SFAirDropSend.Failure);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1A97B06FC(v14, &qword_1EB3B2530, &qword_1A99972D8);
    v16 = v0[43];
    v15 = v0[44];
    v18 = v0[41];
    v17 = v0[42];

    v19 = v0[1];
  }

  else
  {
    v20 = v0[43];
    v22 = v0[41];
    v21 = v0[42];
    v23 = v0[38];
    sub_1A97B06FC(v0[44], &qword_1EB3B2530, &qword_1A99972D8);
    sub_1A980C870(v22, v23, type metadata accessor for SFAirDropSend.Item);

    v19 = v0[1];
  }

  return v19();
}

uint64_t sub_1A980AA60()
{
  v1 = v0[49];
  v2 = v0[44];

  sub_1A97B06FC(v2, &qword_1EB3B2530, &qword_1A99972D8);
  v3 = v0[51];
  v5 = v0[43];
  v4 = v0[44];
  v7 = v0[41];
  v6 = v0[42];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1A980AB0C()
{
  v1 = v0[53];
  v2 = v0[44];
  sub_1A967C46C(v0[52]);
  sub_1A97B06FC(v2, &qword_1EB3B2530, &qword_1A99972D8);
  v3 = v0[55];
  v5 = v0[43];
  v4 = v0[44];
  v7 = v0[41];
  v6 = v0[42];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1A980ABB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6)
{
  v10 = a6[7];
  *(v6 + 112) = a6[6];
  *(v6 + 128) = v10;
  *(v6 + 137) = *(a6 + 121);
  v11 = a6[3];
  *(v6 + 48) = a6[2];
  *(v6 + 64) = v11;
  v12 = a6[5];
  *(v6 + 80) = a6[4];
  *(v6 + 96) = v12;
  v13 = a6[1];
  *(v6 + 16) = *a6;
  *(v6 + 32) = v13;
  v14 = swift_task_alloc();
  *(v6 + 160) = v14;
  *v14 = v6;
  v14[1] = sub_1A980AC94;

  return sub_1A9809B44(a1, (v6 + 16), a4, a5);
}

uint64_t sub_1A980AC94()
{
  v2 = *(*v1 + 160);
  v3 = *v1;
  *(v3 + 168) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A980ADC8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

void *sub_1A980ADE0(void *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = __OFSUB__(a3, v4);
  v7 = a3 - v4;
  if (v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = v3[2];
  v8 = v3[3];
  v10 = (v8 >> 1) - v9;
  if (__OFSUB__(v8 >> 1, v9))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = result;
  result = (v10 + v7);
  if (__OFADD__(v10, v7))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1A980AEC4(result, v10 + v7, *v3, v3[1], v3[2], v8);
  v13 = result;
  if (!__OFSUB__(v11, v9))
  {
    MEMORY[0x1EEE9AC00](result);
    sub_1A980B090(&v13, v12, a3, sub_1A980CCB4);
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_1A980AEC4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v6)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_1A9977800();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v11 + 16);
  v13 = a4 + 144 * a5 + 144 * v8;
  if (v13 == v11 + 144 * v12 + 32)
  {
    v15 = *(v11 + 24);

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v6)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x1E69E7CC0];
    }

    v18 = *(v17 + 16);
    if (v13 == v17 + 144 * v18 + 32)
    {
      v20 = *(v17 + 24);

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x1E69E7CC0];
  }

  v19 = *(v17 + 16);
  if (v13 == v17 + 144 * v19 + 32)
  {
    v23 = *(v17 + 24);

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return sub_1A986BF0C(v6, v25);
}

uint64_t sub_1A980B090(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
    goto LABEL_32;
  }

  v9 = *result;
  v10 = *(*result + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v13 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v14 = v7 - a2;
  if (__OFSUB__(v7, a2))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v11 = __OFSUB__(v14, v13);
  v15 = v14 - v13;
  if (v11)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v16 = v4;
  v42 = v15;
  v18 = (v9 + 32);
  v19 = 144 * a2;
  v20 = v9 + 32 + 144 * a2;
  v40 = v13;
  v41 = (v20 + 144 * a3);
  result = sub_1A980B380(v7);
  v44 = v9 + 32;
  if (result)
  {
    v21 = result;
    v37 = v7;
    v38 = a4;
    v39 = v9;
    v22 = v4[2];
    v23 = (v4[1] + 144 * v22);
    v24 = &v23[v19];
    v25 = result + 32;
    swift_arrayDestroy();
    if (v18 != v23 || v18 >= v24)
    {
      memmove(v18, v23, v19);
    }

    swift_arrayDestroy();
    v38(v20, a3);
    v26 = &v24[144 * v42];
    if (v41 != v26 || v41 >= &v26[144 * v40])
    {
      memmove(v41, v26, 144 * v40);
    }

    v28 = ((v25 + 144 * *(v21 + 16) - &v23[144 * v37]) * 0xE38E38E38E38E39) >> 64;
    swift_arrayDestroy();
    *(v21 + 16) = 0;

    v9 = v39;
  }

  else
  {
    v22 = v4[2];
    v29 = v22 + a2;
    if (__OFADD__(v22, a2))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v30 = a2;
    if (v29 < v22)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v29, v22))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v31 = v16[1];
    swift_arrayInitWithCopy();
    result = (a4)(v44 + 144 * v30, a3);
    v32 = v29 + v42;
    if (__OFADD__(v29, v42))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v33 = v16[3] >> 1;
    if (v33 < v32)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (__OFSUB__(v33, v32))
    {
LABEL_45:
      __break(1u);
      return result;
    }

    swift_arrayInitWithCopy();
  }

  v34 = *v16;
  result = swift_unknownObjectRelease();
  if (__OFSUB__(0, v22))
  {
    goto LABEL_36;
  }

  v35 = *(v9 + 16);
  v11 = __OFADD__(v22, v35);
  v36 = v22 + v35;
  if (v11)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v36 < v22)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v36 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *v16 = v9;
  v16[1] = v44 - 144 * v22;
  v16[2] = v22;
  v16[3] = (2 * v36) | 1;
}

uint64_t sub_1A980B380(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v7 = v1[2];
  v6 = v1[3];
  v8 = (v6 >> 1) - v7;
  if (__OFSUB__(v6 >> 1, v7))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = *v1;
  v10 = v1[1];
  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_1A9977800();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v11 + 16);
  if (v10 + 144 * v7 + 144 * v8 != v11 + 144 * v12 + 32)
  {

LABEL_8:
    v13 = v8;
    goto LABEL_10;
  }

  v14 = *(v11 + 24);

  v15 = (v14 >> 1) - v12;
  v16 = __OFADD__(v8, v15);
  v13 = v8 + v15;
  if (v16)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  if (v13 < a1)
  {
    return 0;
  }

  sub_1A9977800();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x1E69E7CC0];
  }

  v17 = (v10 + 144 * v7 - result - 32) / 144;
  v16 = __OFADD__(v8, v17);
  v6 = v8 + v17;
  if (v16)
  {
    goto LABEL_18;
  }

  v5 = *(result + 16);
  if (v6 < v5)
  {
LABEL_19:
    v18 = result;
    sub_1A98296F0(v6, v5, 0);
    return v18;
  }

  return result;
}

uint64_t _s7Sharing13SFAirDropSendO12ItemMetadataV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v31 = *(a1 + 48);
  v26 = *(a1 + 56);
  v30 = *(a1 + 64);
  v28 = *(a1 + 72);
  v19 = *(a1 + 80);
  v24 = *(a1 + 88);
  v21 = *(a1 + 96);
  v22 = *(a1 + 104);
  v17 = *(a1 + 112);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v10 = *(a2 + 48);
  v25 = *(a2 + 56);
  v29 = *(a2 + 64);
  v27 = *(a2 + 72);
  v18 = *(a2 + 80);
  v23 = *(a2 + 88);
  v11 = *(a2 + 104);
  v20 = *(a2 + 96);
  v16 = *(a2 + 112);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1A99777E0() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v7 || (v2 != v6 || v3 != v7) && (sub_1A99777E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (!v5)
  {
    result = 0;
    if (v8)
    {
      return result;
    }

    goto LABEL_20;
  }

  if (!v8)
  {
    return 0;
  }

  if (v4 != v9 || v5 != v8)
  {
    v13 = sub_1A99777E0();
    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }

LABEL_20:
    if (v31 != v10)
    {
      return result;
    }

    goto LABEL_21;
  }

  if (v31 != v10)
  {
    return 0;
  }

LABEL_21:
  if (v30)
  {
    if (!v29)
    {
      return 0;
    }

    if (v26 == v25 && v30 == v29)
    {
      if (v28 != v27)
      {
        return 0;
      }

      goto LABEL_31;
    }

    v14 = sub_1A99777E0();
    result = 0;
    if ((v14 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (v29)
    {
      return result;
    }
  }

  if ((v28 ^ v27))
  {
    return result;
  }

LABEL_31:
  if (v24)
  {
    if (!v23 || (v19 != v18 || v24 != v23) && (sub_1A99777E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  if (v22 >> 60 == 15)
  {
    if (v11 >> 60 == 15)
    {
      sub_1A97C1554(v21, v22);
      sub_1A97C1554(v20, v11);
      sub_1A97D8688(v21, v22);
      return v17 ^ v16 ^ 1u;
    }

    goto LABEL_42;
  }

  if (v11 >> 60 == 15)
  {
LABEL_42:
    sub_1A97C1554(v21, v22);
    sub_1A97C1554(v20, v11);
    sub_1A97D8688(v21, v22);
    sub_1A97D8688(v20, v11);
    return 0;
  }

  sub_1A97C1554(v21, v22);
  sub_1A97C1554(v20, v11);
  v15 = sub_1A993184C(v21, v22, v20, v11);
  sub_1A97D8688(v20, v11);
  sub_1A97D8688(v21, v22);
  if (v15)
  {
    return v17 ^ v16 ^ 1u;
  }

  return 0;
}

unint64_t sub_1A980B824()
{
  result = qword_1EB3B2498;
  if (!qword_1EB3B2498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2498);
  }

  return result;
}

uint64_t type metadata accessor for SFAirDropSend.Item()
{
  result = qword_1EB3B24F0;
  if (!qword_1EB3B24F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A980B92C()
{
  result = qword_1EB3B24B0;
  if (!qword_1EB3B24B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B24B0);
  }

  return result;
}

unint64_t sub_1A980B980()
{
  result = qword_1EB3B24C0;
  if (!qword_1EB3B24C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B24C0);
  }

  return result;
}

unint64_t sub_1A980B9D4()
{
  result = qword_1EB3B24D8;
  if (!qword_1EB3B24D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B24D8);
  }

  return result;
}

uint64_t sub_1A980BA28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A980BA90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A980BAF0(uint64_t a1, _OWORD *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A97B2988;

  return sub_1A9806F14(a1, a2, v6);
}

uint64_t sub_1A980BBA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65707954656C6966 && a2 == 0xE800000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x54627553656C6966 && a2 == 0xEB00000000657079 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657A6953656C6966 && a2 == 0xE800000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x504D4F42656C6966 && a2 == 0xEB00000000687461 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69447349656C6966 && a2 == 0xEF79726F74636572 || (sub_1A99777E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1A99777E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A99E43A0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E69727453736177 && a2 == 0xE900000000000067)
  {

    return 8;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t _s7Sharing13SFAirDropSendO4ItemV26compressedPreviewImageData4data10Foundation0I0VSgAK_tFZ_0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    v4 = objc_allocWithZone(MEMORY[0x1E695F658]);
    sub_1A97B40FC(a1, a2);
    sub_1A97B40FC(a1, a2);
    v5 = sub_1A9976060();
    v6 = [v4 initWithData_];

    sub_1A97D8688(a1, a2);
    if (v6)
    {
      v7 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
      [v6 extent];
      v8 = [v7 createCGImage:v6 fromRect:?];

      if (v8)
      {
        v9 = SFResizedCGImage(v8, 0x100000);
        if (v9)
        {
          v10 = v9;
          v11 = sub_1A9976070();

          sub_1A97D8688(a1, a2);
          return v11;
        }
      }

      else
      {
        v8 = v6;
      }
    }

    v12 = sub_1A9976060();
    v13 = SFCreateCGImageFromData(v12);

    if (v13 && (v14 = SFResizedCGImage(v13, 0x100000), v13, v14))
    {
      v15 = sub_1A9976070();

      sub_1A97D8688(a1, a2);
      return v15;
    }

    else
    {
      if (qword_1EB3B0AE8 != -1)
      {
        swift_once();
      }

      v16 = sub_1A99764A0();
      __swift_project_value_buffer(v16, qword_1EB3B2478);
      v17 = sub_1A9976480();
      v18 = sub_1A9976F70();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_1A9662000, v17, v18, "Unable to parse itemPreview data", v19, 2u);
        MEMORY[0x1AC58D2C0](v19, -1, -1);
      }

      sub_1A97D8688(a1, a2);

      return 0;
    }
  }

  return a1;
}

uint64_t sub_1A980C18C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1A97B2988;

  return sub_1A980779C(a1, a2, v6, v7, v8);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1A980C2A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_1A980C2EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A980C384()
{
  result = type metadata accessor for SFSecurityScopedURL(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg7Sharing13SFAirDropSendO4ItemVSgs5Error_pIegHgrzo_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1A980C444(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A980C48C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s12ItemMetadataV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s12ItemMetadataV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A980C664()
{
  result = qword_1EB3B2500;
  if (!qword_1EB3B2500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2500);
  }

  return result;
}

unint64_t sub_1A980C6BC()
{
  result = qword_1EB3B2508;
  if (!qword_1EB3B2508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2508);
  }

  return result;
}

unint64_t sub_1A980C714()
{
  result = qword_1EB3B2510;
  if (!qword_1EB3B2510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2510);
  }

  return result;
}

unint64_t sub_1A980C76C()
{
  result = qword_1EB3B2518;
  if (!qword_1EB3B2518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2518);
  }

  return result;
}

unint64_t sub_1A980C7C4()
{
  result = qword_1EB3B2520;
  if (!qword_1EB3B2520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2520);
  }

  return result;
}

unint64_t sub_1A980C81C()
{
  result = qword_1EB3B2528;
  if (!qword_1EB3B2528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2528);
  }

  return result;
}

uint64_t sub_1A980C870(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A980C8D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A97B2988;

  return sub_1A980ABB8(a1, v4, v5, v6, v7, (v1 + 48));
}

uint64_t objectdestroy_29Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];
  if (v2 >> 60 != 15)
  {
    sub_1A97B43C4(v0[4], v2);
  }

  v3 = v0[6];

  if (v0[7])
  {
    v4 = v0[8];
  }

  v5 = v0[10];

  v6 = v0[12];

  v7 = v0[14];

  v8 = v0[17];

  v9 = v0[20];

  v10 = v0[22];
  if (v10 >> 60 != 15)
  {
    sub_1A97B43C4(v0[21], v10);
  }

  return swift_deallocObject();
}

uint64_t sub_1A980CA44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A97B2638;

  return sub_1A980ABB8(a1, v4, v5, v6, v7, (v1 + 48));
}

uint64_t sub_1A980CB08(unint64_t *a1, void (*a2)(uint64_t))
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

int64_t sub_1A980CB50(int64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = v3;
  v9 = v3[2];
  v8 = v3[3];
  if (__OFSUB__(v8 >> 1, v9))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = result;
  v12 = *v7;
  sub_1A9977800();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  v13 = result;
  if (!result)
  {
    result = swift_unknownObjectRelease();
    v13 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 - v9;
  if (__OFSUB__(v11, v9))
  {
    goto LABEL_18;
  }

  v15 = (v7[1] + 144 * v9 - v13 - 32) / 144;
  result = v14 + v15;
  if (__OFADD__(v14, v15))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = a2 - v9;
  if (__OFSUB__(a2, v9))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v16 + v15;
  if (__OFADD__(v16, v15))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v17 < result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_1A98296F0(result, v17, a3);

  v18 = v8 >> 1;
  if (__OFADD__(v9, (v8 >> 1) - v9))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v19 = __OFADD__(v18, v6);
  v20 = v18 + v6;
  if (v19)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((v20 & 0x8000000000000000) == 0)
  {
    v7[3] = v8 & 1 | (2 * v20);
    return result;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_1A980CCB4(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_1A980CCC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2530, &qword_1A99972D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SFAirDropReceive.AcceptContext.customPayload.getter()
{
  v1 = *(v0 + 8);
  sub_1A97C1554(v1, *(v0 + 16));
  return v1;
}

uint64_t SFAirDropReceive.AcceptContext.customPayload.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1A97D8688(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t SFAirDropReceive.AcceptContext.init(shouldExtractMedia:customPayload:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  result = sub_1A97D8688(0, 0xF000000000000000);
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

unint64_t sub_1A980CE14()
{
  if (*v0)
  {
    result = 0x61506D6F74737563;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_1A980CE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001A99E43E0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x61506D6F74737563 && a2 == 0xED000064616F6C79)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A99777E0();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1A980CF50(uint64_t a1)
{
  v2 = sub_1A980EBE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A980CF8C(uint64_t a1)
{
  v2 = sub_1A980EBE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropReceive.AcceptContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2540, &qword_1A9997310);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 2);
  v13[0] = *(v1 + 1);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A980EBE8();
  sub_1A9977AA0();
  LOBYTE(v14) = 0;
  v11 = v13[1];
  sub_1A99776A0();
  if (!v11)
  {
    v14 = v13[0];
    v15 = v9;
    v16 = 1;
    sub_1A97C1554(v13[0], v9);
    sub_1A97B4370();
    sub_1A9977680();
    sub_1A97D8688(v14, v15);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t SFAirDropReceive.AcceptContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2550, &qword_1A9997318);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A980EBE8();
  sub_1A9977A70();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v15 = 0;
    v16 = 0xF000000000000000;
  }

  else
  {
    LOBYTE(v17[0]) = 0;
    v11 = sub_1A99775B0();
    v18 = 1;
    sub_1A97B446C();
    sub_1A9977590();
    (*(v6 + 8))(v9, v5);
    v13 = v17[0];
    v14 = v17[1];
    sub_1A97D8688(0, 0xF000000000000000);
    *a2 = v11 & 1;
    *(a2 + 8) = v13;
    *(a2 + 16) = v14;
    sub_1A97C1554(v13, v14);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v15 = v13;
    v16 = v14;
  }

  return sub_1A97D8688(v15, v16);
}

uint64_t SFAirDropReceive.AskResponse.description.getter()
{
  v1 = type metadata accessor for SFAirDropReceive.AskResponse();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A980EC88(v0, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1BA8, &qword_1A9997320);
  v6 = (*(*(v5 - 8) + 48))(v4, 3, v5);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      return 0x726F727265;
    }

    else
    {
      return 0x707954646578696DLL;
    }
  }

  else if (v6)
  {
    return 0x656E696C636564;
  }

  else
  {
    sub_1A97D8688(*&v4[*(v5 + 48) + 8], *&v4[*(v5 + 48) + 16]);
    sub_1A980FC8C(v4, type metadata accessor for SFAirDropReceive.ItemDestination);
    return 0x747065636361;
  }
}

uint64_t sub_1A980D4E8()
{
  if (*v0)
  {
    result = 0x6F43747065636361;
  }

  else
  {
    result = 0x74616E6974736564;
  }

  *v0;
  return result;
}

uint64_t sub_1A980D538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F43747065636361 && a2 == 0xED0000747865746ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A980D620(uint64_t a1)
{
  v2 = sub_1A980F1FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A980D65C(uint64_t a1)
{
  v2 = sub_1A980F1FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A980D698()
{
  v1 = 0x747065636361;
  v2 = 0x726F727265;
  if (*v0 != 2)
  {
    v2 = 0x707954646578696DLL;
  }

  if (*v0)
  {
    v1 = 0x656E696C636564;
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

uint64_t sub_1A980D710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A980FAC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A980D738(uint64_t a1)
{
  v2 = sub_1A980F0AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A980D774(uint64_t a1)
{
  v2 = sub_1A980F0AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A980D7B0(uint64_t a1)
{
  v2 = sub_1A980F1A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A980D7EC(uint64_t a1)
{
  v2 = sub_1A980F1A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A980D828(uint64_t a1)
{
  v2 = sub_1A980F154();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A980D864(uint64_t a1)
{
  v2 = sub_1A980F154();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A980D8A0(uint64_t a1)
{
  v2 = sub_1A980F100();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A980D8DC(uint64_t a1)
{
  v2 = sub_1A980F100();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropReceive.AskResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2558, &qword_1A9997328);
  v51 = *(v2 - 8);
  v52 = v2;
  v3 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v48 = &v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2560, &qword_1A9997330);
  v46 = *(v5 - 8);
  v47 = v5;
  v6 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2568, &qword_1A9997338);
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2570, &qword_1A9997340);
  v53 = *(v12 - 8);
  v54 = v12;
  v13 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v50 = &v42 - v14;
  v15 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v49 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SFAirDropReceive.AskResponse();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2578, &qword_1A9997348);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v42 - v25;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A980F0AC();
  sub_1A9977AA0();
  sub_1A980EC88(v55, v21);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1BA8, &qword_1A9997320);
  v29 = (*(*(v28 - 8) + 48))(v21, 3, v28);
  if (v29 > 1)
  {
    if (v29 == 2)
    {
      v57 = 2;
      sub_1A980F154();
      v37 = v45;
      sub_1A9977640();
      v39 = v46;
      v38 = v47;
    }

    else
    {
      v57 = 3;
      sub_1A980F100();
      v37 = v48;
      sub_1A9977640();
      v39 = v51;
      v38 = v52;
    }

    (*(v39 + 8))(v37, v38);
    return (*(v23 + 8))(v26, v22);
  }

  if (v29)
  {
    v57 = 1;
    sub_1A980F1A8();
    sub_1A9977640();
    (*(v43 + 8))(v11, v44);
    return (*(v23 + 8))(v26, v22);
  }

  v30 = &v21[*(v28 + 48)];
  LODWORD(v52) = *v30;
  v31 = *(v30 + 1);
  v55 = *(v30 + 2);
  v32 = v49;
  sub_1A980F2A4(v21, v49, type metadata accessor for SFAirDropReceive.ItemDestination);
  v57 = 0;
  sub_1A980F1FC();
  v33 = v50;
  sub_1A9977640();
  v57 = 0;
  sub_1A980F30C(&qword_1EB3AC5A0);
  v34 = v54;
  v35 = v56;
  sub_1A99776E0();
  if (v35)
  {
    sub_1A97D8688(v31, v55);
    (*(v53 + 8))(v33, v34);
    sub_1A980FC8C(v32, type metadata accessor for SFAirDropReceive.ItemDestination);
    return (*(v23 + 8))(v26, v22);
  }

  else
  {
    v57 = v52;
    v40 = v31;
    v58 = v31;
    v41 = v55;
    v59 = v55;
    v60 = 1;
    sub_1A980F250();
    sub_1A99776E0();
    (*(v53 + 8))(v33, v34);
    sub_1A980FC8C(v32, type metadata accessor for SFAirDropReceive.ItemDestination);
    (*(v23 + 8))(v26, v22);
    return sub_1A97D8688(v40, v41);
  }
}

uint64_t SFAirDropReceive.AskResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B25B0, &qword_1A9997350);
  v64 = *(v71 - 8);
  v3 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B25B8, &qword_1A9997358);
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v69 = &v58 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B25C0, &qword_1A9997360);
  v60 = *(v8 - 8);
  v61 = v8;
  v9 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v58 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B25C8, &qword_1A9997368);
  v12 = *(v11 - 8);
  v65 = v11;
  v66 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v58 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B25D0, &unk_1A9997370);
  v72 = *(v16 - 8);
  v17 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v58 - v18;
  v20 = type metadata accessor for SFAirDropReceive.AskResponse();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v58 - v25;
  v27 = a1[3];
  v28 = a1[4];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_1A980F0AC();
  v29 = v73;
  sub_1A9977A70();
  if (!v29)
  {
    v73 = v20;
    v58 = v24;
    v59 = v26;
    v30 = v69;
    v31 = v70;
    v32 = v71;
    v33 = sub_1A9977620();
    v34 = (2 * *(v33 + 16)) | 1;
    v75 = v33;
    v76 = v33 + 32;
    v77 = 0;
    v78 = v34;
    v35 = sub_1A97B2974();
    v36 = v19;
    if (v35 == 4 || v77 != v78 >> 1)
    {
      v42 = sub_1A9977300();
      swift_allocError();
      v44 = v43;
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630) + 48);
      *v44 = v73;
      sub_1A9977540();
      sub_1A99772F0();
      (*(*(v42 - 8) + 104))(v44, *MEMORY[0x1E69E6AF8], v42);
      swift_willThrow();
      (*(v72 + 8))(v19, v16);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v35 > 1u)
      {
        v47 = v72;
        if (v35 == 2)
        {
          v79 = 2;
          sub_1A980F154();
          sub_1A9977530();
          (*(v62 + 8))(v30, v63);
          (*(v47 + 8))(v19, v16);
          swift_unknownObjectRelease();
          v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1BA8, &qword_1A9997320);
          v57 = v59;
          (*(*(v48 - 8) + 56))(v59, 2, 3, v48);
        }

        else
        {
          v79 = 3;
          sub_1A980F100();
          sub_1A9977530();
          (*(v64 + 8))(v31, v32);
          (*(v47 + 8))(v19, v16);
          swift_unknownObjectRelease();
          v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1BA8, &qword_1A9997320);
          v57 = v59;
          (*(*(v51 - 8) + 56))(v59, 3, 3, v51);
        }

        v37 = v68;
      }

      else
      {
        v37 = v68;
        v38 = v72;
        if (v35)
        {
          v79 = 1;
          sub_1A980F1A8();
          v49 = v67;
          sub_1A9977530();
          (*(v60 + 8))(v49, v61);
          (*(v38 + 8))(v36, v16);
          swift_unknownObjectRelease();
          v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1BA8, &qword_1A9997320);
          v57 = v59;
          (*(*(v50 - 8) + 56))(v59, 1, 3, v50);
        }

        else
        {
          v79 = 0;
          sub_1A980F1FC();
          v39 = v15;
          sub_1A9977530();
          type metadata accessor for SFAirDropReceive.ItemDestination();
          v79 = 0;
          sub_1A980F30C(&qword_1EB3AC590);
          v40 = v58;
          v41 = v65;
          sub_1A99775F0();
          v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1BA8, &qword_1A9997320);
          v73 = v16;
          v53 = v41;
          v54 = v52;
          v55 = v39;
          v56 = *(v52 + 48);
          v79 = 1;
          sub_1A980F350();
          sub_1A99775F0();
          (*(v66 + 8))(v55, v53);
          (*(v38 + 8))(v36, v73);
          swift_unknownObjectRelease();
          (*(*(v54 - 8) + 56))(v40, 0, 3, v54);
          v57 = v59;
          sub_1A980F2A4(v40, v59, type metadata accessor for SFAirDropReceive.AskResponse);
        }
      }

      sub_1A980F2A4(v57, v37, type metadata accessor for SFAirDropReceive.AskResponse);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v74);
}

uint64_t sub_1A980E978(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A980EC88(v1, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1BA8, &qword_1A9997320);
  v6 = (*(*(v5 - 8) + 48))(v4, 3, v5);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      return 0x726F727265;
    }

    else
    {
      return 0x707954646578696DLL;
    }
  }

  else if (v6)
  {
    return 0x656E696C636564;
  }

  else
  {
    sub_1A97D8688(*&v4[*(v5 + 48) + 8], *&v4[*(v5 + 48) + 16]);
    sub_1A980FC8C(v4, type metadata accessor for SFAirDropReceive.ItemDestination);
    return 0x747065636361;
  }
}

BOOL _s7Sharing16SFAirDropReceiveO13AcceptContextV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  v6 = *(a2 + 1);
  v5 = *(a2 + 2);
  if (v3 >> 60 != 15)
  {
    if (v5 >> 60 != 15)
    {
      sub_1A97C1554(*(a1 + 1), v3);
      sub_1A97C1554(v6, v5);
      v7 = sub_1A993184C(v4, v3, v6, v5);
      sub_1A97D8688(v6, v5);
      sub_1A97D8688(v4, v3);
      return (v7 & 1) != 0;
    }

LABEL_7:
    sub_1A97C1554(*(a1 + 1), v3);
    sub_1A97C1554(v6, v5);
    sub_1A97D8688(v4, v3);
    sub_1A97D8688(v6, v5);
    return 0;
  }

  if (v5 >> 60 != 15)
  {
    goto LABEL_7;
  }

  sub_1A97C1554(*(a1 + 1), v3);
  sub_1A97C1554(v6, v5);
  sub_1A97D8688(v4, v3);
  return 1;
}

unint64_t sub_1A980EBE8()
{
  result = qword_1EB3B2548;
  if (!qword_1EB3B2548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2548);
  }

  return result;
}

uint64_t type metadata accessor for SFAirDropReceive.AskResponse()
{
  result = qword_1EB3AC5E8;
  if (!qword_1EB3AC5E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A980EC88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropReceive.AskResponse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL _s7Sharing16SFAirDropReceiveO11AskResponseO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SFAirDropReceive.AskResponse();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2658, &unk_1A9997AF0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v33 - v15;
  v17 = &v33 + *(v14 + 56) - v15;
  sub_1A980EC88(a1, &v33 - v15);
  sub_1A980EC88(a2, v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1BA8, &qword_1A9997320);
  v19 = *(*(v18 - 8) + 48);
  v20 = v19(v16, 3, v18);
  if (v20 > 1)
  {
    if (v20 == 2)
    {
      if (v19(v17, 3, v18) != 2)
      {
        goto LABEL_11;
      }
    }

    else if (v19(v17, 3, v18) != 3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (!v20)
    {
      sub_1A980EC88(v16, v11);
      v21 = *(v18 + 48);
      v36 = v11[v21];
      v22 = *&v11[v21 + 8];
      v23 = *&v11[v21 + 16];
      if (!v19(v17, 3, v18))
      {
        v34 = v22;
        v35 = v23;
        v26 = &v17[v21];
        v27 = v17[v21];
        v29 = *(v26 + 1);
        v28 = *(v26 + 2);
        sub_1A980F2A4(v17, v7, type metadata accessor for SFAirDropReceive.ItemDestination);
        v30 = _s7Sharing16SFAirDropReceiveO15ItemDestinationO2eeoiySbAE_AEtFZ_0(v11, v7);
        sub_1A980FC8C(v11, type metadata accessor for SFAirDropReceive.ItemDestination);
        if (v30)
        {
          v40[0] = v36;
          v32 = v34;
          v31 = v35;
          v41 = v34;
          v42 = v35;
          v37[0] = v27;
          v38 = v29;
          v39 = v28;
          v24 = _s7Sharing16SFAirDropReceiveO13AcceptContextV2eeoiySbAE_AEtFZ_0(v40, v37);
          sub_1A980FC8C(v7, type metadata accessor for SFAirDropReceive.ItemDestination);
          sub_1A97D8688(v29, v28);
          sub_1A97D8688(v32, v31);
          sub_1A980FC8C(v16, type metadata accessor for SFAirDropReceive.AskResponse);
          return v24;
        }

        sub_1A980FC8C(v7, type metadata accessor for SFAirDropReceive.ItemDestination);
        sub_1A97D8688(v29, v28);
        sub_1A97D8688(v34, v35);
        sub_1A980FC8C(v16, type metadata accessor for SFAirDropReceive.AskResponse);
        return 0;
      }

      sub_1A97D8688(v22, v23);
      sub_1A980FC8C(v11, type metadata accessor for SFAirDropReceive.ItemDestination);
LABEL_11:
      sub_1A980FC24(v16);
      return 0;
    }

    if (v19(v17, 3, v18) != 1)
    {
      goto LABEL_11;
    }
  }

  sub_1A980FC8C(v16, type metadata accessor for SFAirDropReceive.AskResponse);
  return 1;
}

unint64_t sub_1A980F0AC()
{
  result = qword_1EB3B2580;
  if (!qword_1EB3B2580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2580);
  }

  return result;
}

unint64_t sub_1A980F100()
{
  result = qword_1EB3B2588;
  if (!qword_1EB3B2588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2588);
  }

  return result;
}

unint64_t sub_1A980F154()
{
  result = qword_1EB3B2590;
  if (!qword_1EB3B2590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2590);
  }

  return result;
}

unint64_t sub_1A980F1A8()
{
  result = qword_1EB3B2598;
  if (!qword_1EB3B2598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2598);
  }

  return result;
}

unint64_t sub_1A980F1FC()
{
  result = qword_1EB3B25A0;
  if (!qword_1EB3B25A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B25A0);
  }

  return result;
}

unint64_t sub_1A980F250()
{
  result = qword_1EB3B25A8;
  if (!qword_1EB3B25A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B25A8);
  }

  return result;
}

uint64_t sub_1A980F2A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A980F30C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SFAirDropReceive.ItemDestination();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A980F350()
{
  result = qword_1EB3B25D8;
  if (!qword_1EB3B25D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B25D8);
  }

  return result;
}

uint64_t sub_1A980F3A4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1A980F3F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1A980F474()
{
  sub_1A980F4CC();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1A980F4CC()
{
  if (!qword_1EB3AC5D0)
  {
    type metadata accessor for SFAirDropReceive.ItemDestination();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB3AC5D0);
    }
  }
}

unint64_t sub_1A980F59C()
{
  result = qword_1EB3B25E0;
  if (!qword_1EB3B25E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B25E0);
  }

  return result;
}

unint64_t sub_1A980F5F4()
{
  result = qword_1EB3B25E8;
  if (!qword_1EB3B25E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B25E8);
  }

  return result;
}

unint64_t sub_1A980F64C()
{
  result = qword_1EB3B25F0;
  if (!qword_1EB3B25F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B25F0);
  }

  return result;
}

unint64_t sub_1A980F6A4()
{
  result = qword_1EB3B25F8;
  if (!qword_1EB3B25F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B25F8);
  }

  return result;
}

unint64_t sub_1A980F6FC()
{
  result = qword_1EB3B2600;
  if (!qword_1EB3B2600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2600);
  }

  return result;
}

unint64_t sub_1A980F754()
{
  result = qword_1EB3B2608;
  if (!qword_1EB3B2608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2608);
  }

  return result;
}

unint64_t sub_1A980F7AC()
{
  result = qword_1EB3B2610;
  if (!qword_1EB3B2610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2610);
  }

  return result;
}

unint64_t sub_1A980F804()
{
  result = qword_1EB3B2618;
  if (!qword_1EB3B2618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2618);
  }

  return result;
}

unint64_t sub_1A980F85C()
{
  result = qword_1EB3B2620;
  if (!qword_1EB3B2620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2620);
  }

  return result;
}

unint64_t sub_1A980F8B4()
{
  result = qword_1EB3B2628;
  if (!qword_1EB3B2628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2628);
  }

  return result;
}

unint64_t sub_1A980F90C()
{
  result = qword_1EB3B2630;
  if (!qword_1EB3B2630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2630);
  }

  return result;
}

unint64_t sub_1A980F964()
{
  result = qword_1EB3B2638;
  if (!qword_1EB3B2638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2638);
  }

  return result;
}

unint64_t sub_1A980F9BC()
{
  result = qword_1EB3B2640;
  if (!qword_1EB3B2640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2640);
  }

  return result;
}

unint64_t sub_1A980FA14()
{
  result = qword_1EB3B2648;
  if (!qword_1EB3B2648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2648);
  }

  return result;
}

unint64_t sub_1A980FA6C()
{
  result = qword_1EB3B2650;
  if (!qword_1EB3B2650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2650);
  }

  return result;
}

uint64_t sub_1A980FAC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x747065636361 && a2 == 0xE600000000000000;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E696C636564 && a2 == 0xE700000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x707954646578696DLL && a2 == 0xEA00000000007365)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1A980FC24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2658, &unk_1A9997AF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A980FC8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SFTempPairingStateUpdate.nearbyDeviceNames.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t SFTempPairingStateUpdate.connectedDeviceNames.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t SFTempPairingStateUpdate.sharingName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SFTempPairingStateUpdate.sharingName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void SFTempPairingStateUpdate.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = v1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
}

unint64_t sub_1A980FE9C()
{
  v1 = *v0;
  v2 = 0x697463656E6E6F63;
  if (v1 != 3)
  {
    v2 = 0x4E676E6972616873;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000014;
  }

  v3 = 0xD000000000000013;
  if (*v0)
  {
    v3 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A980FF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A9811070(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A980FF8C(uint64_t a1)
{
  v2 = sub_1A9810290();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A980FFC8(uint64_t a1)
{
  v2 = sub_1A9810290();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFTempPairingStateUpdate.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2660, &unk_1A9997B00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - v7;
  v9 = *v1;
  v10 = v1[1];
  v19 = v1[2];
  v20 = v10;
  v11 = v1[3];
  v17[0] = v1[4];
  v17[1] = v1[5];
  v18 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9810290();
  v13 = v4;
  sub_1A9977AA0();
  LOBYTE(v22) = 0;
  sub_1A99776A0();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v15 = v18;
  v14 = v19;
  v22 = v20;
  v21 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
  sub_1A97AFAF4(&qword_1EB3AB6F0);
  sub_1A99776E0();
  v22 = v14;
  v21 = 2;
  sub_1A99776E0();
  v22 = v15;
  v21 = 3;
  sub_1A98102E4();
  sub_1A99776E0();
  LOBYTE(v22) = 4;
  sub_1A9977690();
  return (*(v5 + 8))(v8, v13);
}

unint64_t sub_1A9810290()
{
  result = qword_1EB3ACAA8;
  if (!qword_1EB3ACAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ACAA8);
  }

  return result;
}

unint64_t sub_1A98102E4()
{
  result = qword_1EB3ABD00[0];
  if (!qword_1EB3ABD00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3ABD00);
  }

  return result;
}

uint64_t SFTempPairingStateUpdate.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2668, &qword_1A9997B10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9810290();
  sub_1A9977A70();
  if (!v2)
  {
    LOBYTE(v24) = 0;
    v11 = sub_1A99775B0();
    v21 = a2;
    v22 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
    v23 = 1;
    sub_1A97AFAF4(&unk_1EB3AB6C0);
    sub_1A99775F0();
    v13 = v24;
    v23 = 2;
    sub_1A99775F0();
    v14 = v24;
    v23 = 3;
    sub_1A9810684();
    sub_1A99775F0();
    v20 = v24;
    LOBYTE(v24) = 4;
    v15 = sub_1A99775A0();
    v17 = v16;
    v22 &= 1u;
    (*(v6 + 8))(v9, v5);
    v18 = v21;
    *v21 = v22;
    v18[1] = v13;
    v18[2] = v14;
    v18[3] = v20;
    v18[4] = v15;
    v18[5] = v17;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t sub_1A9810684()
{
  result = qword_1EB3ABCF8;
  if (!qword_1EB3ABCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ABCF8);
  }

  return result;
}

uint64_t sub_1A981075C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001A99E4460 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1A99777E0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1A98107F0(uint64_t a1)
{
  v2 = sub_1A98109A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A981082C(uint64_t a1)
{
  v2 = sub_1A98109A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFTempPairingSenderStateUpdate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2670, &qword_1A9997B18);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98109A0();
  sub_1A9977AA0();
  sub_1A99776C0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1A98109A0()
{
  result = qword_1EB3B2678;
  if (!qword_1EB3B2678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2678);
  }

  return result;
}

uint64_t SFTempPairingSenderStateUpdate.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2680, &qword_1A9997B20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98109A0();
  sub_1A9977A70();
  if (!v2)
  {
    v11 = sub_1A99775D0();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1A9810B60(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2670, &qword_1A9997B18);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98109A0();
  sub_1A9977AA0();
  sub_1A99776C0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t getEnumTagSinglePayload for SFTempPairingSenderStateUpdate(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SFTempPairingSenderStateUpdate(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SFTempPairingStateUpdate.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SFTempPairingStateUpdate.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1A9810E64()
{
  result = qword_1EB3B2688;
  if (!qword_1EB3B2688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2688);
  }

  return result;
}

unint64_t sub_1A9810EBC()
{
  result = qword_1EB3B2690;
  if (!qword_1EB3B2690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2690);
  }

  return result;
}

unint64_t sub_1A9810F14()
{
  result = qword_1EB3B2698;
  if (!qword_1EB3B2698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2698);
  }

  return result;
}

unint64_t sub_1A9810F6C()
{
  result = qword_1EB3B26A0;
  if (!qword_1EB3B26A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B26A0);
  }

  return result;
}

unint64_t sub_1A9810FC4()
{
  result = qword_1EB3ACA98;
  if (!qword_1EB3ACA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ACA98);
  }

  return result;
}
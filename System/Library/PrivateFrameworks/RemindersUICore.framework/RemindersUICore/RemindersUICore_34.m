uint64_t sub_21D3F4840(uint64_t a1, void *a2, uint64_t a3)
{
  v49 = a3;
  v5 = *(*(*(*a2 + 88) + 8) + 8);
  v6 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = sub_21DBFBA8C();
  v31 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v30 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v44 = swift_getAssociatedTypeWitness();
  v9 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v11 = &v30 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v13);
  v43 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v30 - v17;
  v35 = a2;
  v42 = a2[2];
  v50 = v42;
  v19 = *(v5 + 24);
  v45 = v6;
  v46 = a1;
  v48 = v5;
  result = v19(a1, v6, v5, v16);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v21 = result;
    if (result)
    {
      v22 = 0;
      v40 = *(v48 + 32);
      v41 = v48 + 32;
      v38 = *(AssociatedConformanceWitness + 24);
      v39 = AssociatedConformanceWitness + 24;
      v23 = v35[3];
      v24 = (v12 + 16);
      v36 = (v9 + 8);
      v37 = v23;
      v25 = (v12 + 8);
      v32 = (v12 + 56);
      ++v31;
      do
      {
        v50 = v42;
        v40(v22, v46, v45, v48);
        v26 = *v24;
        (*v24)(v43, v18, AssociatedTypeWitness);
        swift_beginAccess();
        sub_21DBFA74C();
        sub_21DBFA6FC();
        swift_endAccess();
        v38(AssociatedTypeWitness, AssociatedConformanceWitness);
        v27 = v44;
        swift_getAssociatedConformanceWitness();
        v28 = sub_21DBFAB6C();
        (*v36)(v11, v27);
        if (v28)
        {
          v29 = v33;
          v26(v33, v18, AssociatedTypeWitness);
          (*v32)(v29, 0, 1, AssociatedTypeWitness);
          sub_21D3F4840(v29, v35, v49);
          (*v31)(v29, v34);
        }

        ++v22;
        result = (*v25)(v18, AssociatedTypeWitness);
      }

      while (v21 != v22);
    }
  }

  return result;
}

uint64_t sub_21D3F4CE8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a1;
  v25 = a3;
  v4 = *(*(*a2 + 88) + 8);
  v5 = *(v4 + 8);
  v6 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = v5;
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for TTRDerivedTreeLocation();
  v22 = sub_21DBFBA8C();
  v9 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v11 = &v21 - v10;
  v12 = *(v8 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - v14;
  v16 = a2[2];
  TTRTreeStorageTreeDeriving.derivedTreeLocation(for:)(v24, v6, v4, v11);
  if ((*(v12 + 48))(v11, 1, v8) == 1)
  {
    (*(v9 + 8))(v11, v22);
    return (*(*(AssociatedTypeWitness - 8) + 56))(v25, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v18 = v25;
    (*(v12 + 32))(v15, v11, v8);
    v19 = *&v15[*(v8 + 36)];
    v26 = v16;
    result = (*(v23 + 24))(v15, v6);
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else if (v19 == result - 1)
    {
      v20 = sub_21DBFBA8C();
      return (*(*(v20 - 8) + 32))(v18, v15, v20);
    }

    else
    {
      (*(v12 + 8))(v15, v8);
      return (*(*(AssociatedTypeWitness - 8) + 56))(v18, 1, 1, AssociatedTypeWitness);
    }
  }

  return result;
}

uint64_t sub_21D3F501C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a1;
  v60 = a3;
  v90 = *a2;
  v91 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = &v58 - v5;
  v7 = sub_21DBFBA8C();
  v87 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v65 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v79 = &v58 - v10;
  MEMORY[0x28223BE20](v11);
  v80 = &v58 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for TTRDerivedTreeLocation();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v64 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v86 = &v58 - v17;
  v18 = sub_21DBFBA8C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v62 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v68 = &v58 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v58 - v24;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v58 - v28;
  (*(v14 + 16))(&v58 - v28, v92, v13, v27);
  v75 = *(v14 + 56);
  v76 = v14 + 56;
  v75(v29, 0, 1, v13);
  v30 = *(v19 + 16);
  v82 = v29;
  v92 = v18;
  v77 = v30;
  v78 = v19 + 16;
  v30(v25, v29, v18);
  v31 = *(v14 + 48);
  v83 = v25;
  v88 = v31;
  v89 = v14 + 48;
  v32 = v31(v25, 1, v13);
  v59 = v4;
  if (v32 != 1)
  {
    v35 = *(v14 + 32);
    v34 = v14 + 32;
    v85 = v35;
    v73 = (v4 + 48);
    v70 = (v87 + 8);
    v84 = (v87 + 16);
    v67 = (v4 + 32);
    v72 = (v34 - 24);
    v66 = (v4 + 8);
    v74 = (v19 + 8);
    v61 = (v19 + 32);
    v36 = v80;
    v37 = v86;
    v38 = v83;
    v69 = v7;
    v71 = v34;
    while (1)
    {
      v41 = v6;
      v85(v37, v38, v13);
      v42 = v90;
      WitnessTable = swift_getWitnessTable();
      TTRTreeStorageTreeDeriving.item(at:)(v37, v42, WitnessTable, v36);
      v44 = *v73;
      if ((*v73)(v36, 1, AssociatedTypeWitness) != 1)
      {
        (*v72)(v37, v13);
        (*v74)(v82, v92);
        v55 = v60;
        (*v67)(v60, v36, AssociatedTypeWitness);
        v56 = 0;
        return (*(v59 + 56))(v55, v56, 1, AssociatedTypeWitness);
      }

      v87 = *v70;
      (v87)(v36, v7);
      v45 = v79;
      v81 = *v84;
      v81(v79, v37, v7);
      if (v44(v45, 1, AssociatedTypeWitness) == 1)
      {
        break;
      }

      v6 = v41;
      (*v67)(v41, v45, AssociatedTypeWitness);
      v46 = v68;
      TTRTreeStorageTreeDeriving.derivedTreeLocation(for:)(v41, v90, WitnessTable, v68);
      if (v88(v46, 1, v13) == 1)
      {
        (*v66)(v41, AssociatedTypeWitness);
        (*v72)(v86, v13);
        v33 = *v74;
        v40 = v82;
        v47 = v92;
        (*v74)(v82, v92);
        v33(v46, v47);
        v7 = v69;
        goto LABEL_5;
      }

      v48 = v64;
      v85(v64, v46, v13);
      v49 = v65;
      result = (v81)(v65, v48, v69);
      v51 = *&v48[*(v13 + 36)];
      if (__OFADD__(v51, 1))
      {
        __break(1u);
        return result;
      }

      v52 = v62;
      TTRDerivedTreeLocation.init(parent:index:)(v49, v51 + 1, AssociatedTypeWitness, AssociatedConformanceWitness, v62);
      v53 = *v72;
      (*v72)(v48, v13);
      (*v66)(v6, AssociatedTypeWitness);
      v37 = v86;
      v53(v86, v13);
      v33 = *v74;
      v40 = v82;
      v54 = v92;
      (*v74)(v82, v92);
      v75(v52, 0, 1, v13);
      (*v61)(v40, v52, v54);
      v7 = v69;
      v36 = v80;
LABEL_6:
      v38 = v83;
      v77(v83, v40, v92);
      if (v88(v38, 1, v13) == 1)
      {
        goto LABEL_14;
      }
    }

    (*v72)(v37, v13);
    v33 = *v74;
    v39 = v82;
    (*v74)(v82, v92);
    (v87)(v45, v7);
    v6 = v41;
    v40 = v39;
LABEL_5:
    v36 = v80;
    v75(v40, 1, 1, v13);
    v37 = v86;
    goto LABEL_6;
  }

  v33 = *(v19 + 8);
LABEL_14:
  v55 = v60;
  v57 = v92;
  v33(v82, v92);
  v33(v83, v57);
  v56 = 1;
  return (*(v59 + 56))(v55, v56, 1, AssociatedTypeWitness);
}

uint64_t TTRTreeStorageWithFlattenedChildren.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t TTRTreeStorageWithFlattenedChildren.__deallocating_deinit()
{
  TTRTreeStorageWithFlattenedChildren.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21D3F5B68(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21D3F5BA4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21D3F5C7C()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = sub_21DBFBA8C();
    if (v2 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

void *sub_21D3F5D60(void *a1, unsigned __int16 *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v7 <= v6)
  {
    v8 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v5 + 80);
  if (v9 > 7 || (*(v5 + 80) & 0x100000) != 0 || v8 + 1 > 0x18)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v9 + 16) & ~v9));

    return a1;
  }

  v13 = AssociatedTypeWitness;
  v14 = *(a2 + v8);
  v15 = v14 - 3;
  if (v14 >= 3)
  {
    if (v8 <= 3)
    {
      v16 = v8;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v17 = *a2;
      }

      else if (v16 == 3)
      {
        v17 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v17 = *a2;
      }

LABEL_28:
      v18 = (v17 | (v15 << (8 * v8))) + 3;
      v14 = v17 + 3;
      if (v8 < 4)
      {
        v14 = v18;
      }

      goto LABEL_30;
    }

    if (v16)
    {
      v17 = *a2;
      goto LABEL_28;
    }
  }

LABEL_30:
  if (v14 == 2)
  {
    if ((*(v5 + 48))(a2, 1, AssociatedTypeWitness))
    {
      memcpy(a1, a2, v7);
    }

    else
    {
      (*(v5 + 16))(a1, a2, v13);
      (*(v5 + 56))(a1, 0, 1, v13);
    }

    v19 = 2;
    goto LABEL_38;
  }

  if (v14 == 1)
  {
    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
    v19 = 1;
LABEL_38:
    *(a1 + v8) = v19;
    return a1;
  }

  (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
  *(a1 + v8) = 0;
  return a1;
}

uint64_t sub_21D3F5F9C(unsigned __int8 *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 64);
  if (*(v3 + 84))
  {
    v5 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v5 = v4 + 1;
  }

  if (v5 > v4)
  {
    v4 = v5;
  }

  v6 = a1[v4];
  v7 = v6 - 3;
  if (v6 >= 3)
  {
    if (v4 <= 3)
    {
      v8 = v4;
    }

    else
    {
      v8 = 4;
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_20;
      }

      v9 = *a1;
    }

    else if (v8 == 2)
    {
      v9 = *a1;
    }

    else if (v8 == 3)
    {
      v9 = *a1 | (a1[2] << 16);
    }

    else
    {
      v9 = *a1;
    }

    v10 = (v9 | (v7 << (8 * v4))) + 3;
    v6 = v9 + 3;
    if (v4 < 4)
    {
      v6 = v10;
    }
  }

LABEL_20:
  if (v6 < 2 || (v13 = *(AssociatedTypeWitness - 8), result = (*(v3 + 48))(a1, 1, AssociatedTypeWitness), v3 = v13, !result))
  {
    v12 = *(v3 + 8);

    return v12(a1, AssociatedTypeWitness);
  }

  return result;
}

void *sub_21D3F6120(void *a1, unsigned __int8 *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v7 <= v6)
  {
    v8 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v8 = v7;
  }

  v9 = a2[v8];
  v10 = v9 - 3;
  if (v9 >= 3)
  {
    if (v8 <= 3)
    {
      v11 = v8;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_21;
      }

      v12 = *a2;
    }

    else if (v11 == 2)
    {
      v12 = *a2;
    }

    else if (v11 == 3)
    {
      v12 = *a2 | (a2[2] << 16);
    }

    else
    {
      v12 = *a2;
    }

    v13 = (v12 | (v10 << (8 * v8))) + 3;
    v9 = v12 + 3;
    if (v8 < 4)
    {
      v9 = v13;
    }
  }

LABEL_21:
  if (v9 == 2)
  {
    if ((*(v5 + 48))(a2, 1, AssociatedTypeWitness))
    {
      memcpy(a1, a2, v7);
    }

    else
    {
      (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
      (*(v5 + 56))(a1, 0, 1, AssociatedTypeWitness);
    }

    v14 = 2;
  }

  else if (v9 == 1)
  {
    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
    v14 = 1;
  }

  else
  {
    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
    v14 = 0;
  }

  *(a1 + v8) = v14;
  return a1;
}

unsigned __int8 *sub_21D3F6324(unsigned __int8 *a1, unsigned __int16 *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v7 <= v6)
  {
    v8 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v8 = v7;
  }

  v9 = a1[v8];
  v10 = v9 - 3;
  if (v9 >= 3)
  {
    if (v8 <= 3)
    {
      v11 = v8;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_22;
      }

      v12 = *a1;
    }

    else if (v11 == 2)
    {
      v12 = *a1;
    }

    else if (v11 == 3)
    {
      v12 = *a1 | (a1[2] << 16);
    }

    else
    {
      v12 = *a1;
    }

    v13 = (v12 | (v10 << (8 * v8))) + 3;
    v9 = v12 + 3;
    if (v8 < 4)
    {
      v9 = v13;
    }
  }

LABEL_22:
  if (v9 < 2 || !(*(v5 + 48))(a1, 1, AssociatedTypeWitness))
  {
    (*(v5 + 8))(a1, AssociatedTypeWitness);
  }

  v14 = *(a2 + v8);
  v15 = v14 - 3;
  if (v14 < 3)
  {
    goto LABEL_39;
  }

  if (v8 <= 3)
  {
    v16 = v8;
  }

  else
  {
    v16 = 4;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *a2;
    }

    else if (v16 == 3)
    {
      v17 = *a2 | (*(a2 + 2) << 16);
    }

    else
    {
      v17 = *a2;
    }

LABEL_37:
    v18 = (v17 | (v15 << (8 * v8))) + 3;
    v14 = v17 + 3;
    if (v8 < 4)
    {
      v14 = v18;
    }

    goto LABEL_39;
  }

  if (v16)
  {
    v17 = *a2;
    goto LABEL_37;
  }

LABEL_39:
  if (v14 == 2)
  {
    if ((*(v5 + 48))(a2, 1, AssociatedTypeWitness))
    {
      memcpy(a1, a2, v7);
    }

    else
    {
      (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
      (*(v5 + 56))(a1, 0, 1, AssociatedTypeWitness);
    }

    v19 = 2;
  }

  else if (v14 == 1)
  {
    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
    v19 = 1;
  }

  else
  {
    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
    v19 = 0;
  }

  a1[v8] = v19;
  return a1;
}

void *sub_21D3F65EC(void *a1, unsigned __int8 *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v7 <= v6)
  {
    v8 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v8 = v7;
  }

  v9 = a2[v8];
  v10 = v9 - 3;
  if (v9 >= 3)
  {
    if (v8 <= 3)
    {
      v11 = v8;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_21;
      }

      v12 = *a2;
    }

    else if (v11 == 2)
    {
      v12 = *a2;
    }

    else if (v11 == 3)
    {
      v12 = *a2 | (a2[2] << 16);
    }

    else
    {
      v12 = *a2;
    }

    v13 = (v12 | (v10 << (8 * v8))) + 3;
    v9 = v12 + 3;
    if (v8 < 4)
    {
      v9 = v13;
    }
  }

LABEL_21:
  if (v9 == 2)
  {
    if ((*(v5 + 48))(a2, 1, AssociatedTypeWitness))
    {
      memcpy(a1, a2, v7);
    }

    else
    {
      (*(v5 + 32))(a1, a2, AssociatedTypeWitness);
      (*(v5 + 56))(a1, 0, 1, AssociatedTypeWitness);
    }

    v14 = 2;
  }

  else if (v9 == 1)
  {
    (*(v5 + 32))(a1, a2, AssociatedTypeWitness);
    v14 = 1;
  }

  else
  {
    (*(v5 + 32))(a1, a2, AssociatedTypeWitness);
    v14 = 0;
  }

  *(a1 + v8) = v14;
  return a1;
}

unsigned __int8 *sub_21D3F67F0(unsigned __int8 *a1, unsigned __int16 *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v7 <= v6)
  {
    v8 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v8 = v7;
  }

  v9 = a1[v8];
  v10 = v9 - 3;
  if (v9 >= 3)
  {
    if (v8 <= 3)
    {
      v11 = v8;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_22;
      }

      v12 = *a1;
    }

    else if (v11 == 2)
    {
      v12 = *a1;
    }

    else if (v11 == 3)
    {
      v12 = *a1 | (a1[2] << 16);
    }

    else
    {
      v12 = *a1;
    }

    v13 = (v12 | (v10 << (8 * v8))) + 3;
    v9 = v12 + 3;
    if (v8 < 4)
    {
      v9 = v13;
    }
  }

LABEL_22:
  if (v9 < 2 || !(*(v5 + 48))(a1, 1, AssociatedTypeWitness))
  {
    (*(v5 + 8))(a1, AssociatedTypeWitness);
  }

  v14 = *(a2 + v8);
  v15 = v14 - 3;
  if (v14 < 3)
  {
    goto LABEL_39;
  }

  if (v8 <= 3)
  {
    v16 = v8;
  }

  else
  {
    v16 = 4;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *a2;
    }

    else if (v16 == 3)
    {
      v17 = *a2 | (*(a2 + 2) << 16);
    }

    else
    {
      v17 = *a2;
    }

LABEL_37:
    v18 = (v17 | (v15 << (8 * v8))) + 3;
    v14 = v17 + 3;
    if (v8 < 4)
    {
      v14 = v18;
    }

    goto LABEL_39;
  }

  if (v16)
  {
    v17 = *a2;
    goto LABEL_37;
  }

LABEL_39:
  if (v14 == 2)
  {
    if ((*(v5 + 48))(a2, 1, AssociatedTypeWitness))
    {
      memcpy(a1, a2, v7);
    }

    else
    {
      (*(v5 + 32))(a1, a2, AssociatedTypeWitness);
      (*(v5 + 56))(a1, 0, 1, AssociatedTypeWitness);
    }

    v19 = 2;
  }

  else if (v14 == 1)
  {
    (*(v5 + 32))(a1, a2, AssociatedTypeWitness);
    v19 = 1;
  }

  else
  {
    (*(v5 + 32))(a1, a2, AssociatedTypeWitness);
    v19 = 0;
  }

  a1[v8] = v19;
  return a1;
}

uint64_t sub_21D3F6AB8(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 64);
  if (*(v4 + 84))
  {
    v6 = v5;
  }

  else
  {
    v6 = v5 + 1;
  }

  if (v6 <= v5)
  {
    v6 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_28;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 253) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v11 < 2)
    {
LABEL_28:
      v13 = *(a1 + v6);
      if (v13 >= 3)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_28;
  }

LABEL_17:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return (v7 | v12) + 254;
}

void sub_21D3F6C44(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 64);
  if (*(v6 + 84))
  {
    v8 = v7;
  }

  else
  {
    v8 = v7 + 1;
  }

  if (v8 > v7)
  {
    v7 = v8;
  }

  v9 = v7 + 1;
  if (a3 < 0xFE)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 253) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFD)
  {
    v11 = a2 - 254;
    if (v9 >= 4)
    {
      bzero(a1, v7 + 1);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (v7 != -1)
    {
      v15 = v11 & ~(-1 << (8 * v9));
      bzero(a1, v9);
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          *a1 = v15;
          if (v10 > 1)
          {
LABEL_42:
            if (v10 == 2)
            {
              *&a1[v9] = v12;
            }

            else
            {
              *&a1[v9] = v12;
            }

            return;
          }
        }

        else
        {
          *a1 = v11;
          if (v10 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }

      *a1 = v15;
      a1[2] = BYTE2(v15);
    }

    if (v10 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v7] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_27;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

uint64_t sub_21D3F6E58(unsigned __int8 *a1)
{
  v2 = *(swift_getAssociatedTypeWitness() - 8);
  v3 = *(v2 + 64);
  if (*(v2 + 84))
  {
    v4 = v3;
  }

  else
  {
    v4 = v3 + 1;
  }

  if (v4 > v3)
  {
    v3 = v4;
  }

  result = a1[v3];
  if (result >= 3)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        return result;
      }

      v7 = *a1;
    }

    else if (v6 == 2)
    {
      v7 = *a1;
    }

    else if (v6 == 3)
    {
      v7 = *a1 | (a1[2] << 16);
    }

    else
    {
      v7 = *a1;
    }

    v8 = (v7 | ((result - 3) << (8 * v3))) + 3;
    v9 = v7 + 3;
    if (v3 >= 4)
    {
      return v9;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

void sub_21D3F6F64(_BYTE *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 64);
  if (*(v4 + 84))
  {
    v6 = v5;
  }

  else
  {
    v6 = v5 + 1;
  }

  if (v6 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (a2 <= 2)
  {
    a1[v7] = a2;
    return;
  }

  v8 = a2 - 3;
  if (v7 < 4)
  {
    a1[v7] = (v8 >> (8 * v7)) + 3;
    if (!v7)
    {
      return;
    }

    v8 &= ~(-1 << (8 * v7));
  }

  else
  {
    a1[v7] = 3;
  }

  if (v7 >= 4)
  {
    v9 = 4;
  }

  else
  {
    v9 = v7;
  }

  bzero(a1, v7);
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      *a1 = v8;
      a1[2] = BYTE2(v8);
    }

    else
    {
      *a1 = v8;
    }
  }

  else if (v9 == 1)
  {
    *a1 = v8;
  }

  else
  {
    *a1 = v8;
  }
}

Swift::String __swiftcall String.encodingHTMLEntities()()
{
  sub_21D176F0C();
  sub_21DBFBB5C();
  swift_beginAccess();
  sub_21DBFBB5C();

  sub_21DBFBB5C();

  sub_21DBFBB5C();

  v0 = sub_21DBFBB5C();
  v2 = v1;

  v3 = v0;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

void sub_21D3F7300(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_21DBFBD7C();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223D44740](v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v9 = v8;
    v13 = v8;
    v10 = a1(&v13);

    if (v3 || (v10 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

unint64_t sub_21D3F7414(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  v7 = 4 * v5;
  v8 = 15;
  while (1)
  {
    v13[0] = sub_21DBFA3CC();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }

    v8 = sub_21DBFA29C();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_21D3F756C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

__C::_NSRange_optional __swiftcall String.nsRange(of:)(Swift::String of)
{
  v1 = sub_21DBFA12C();
  v2 = sub_21DBFA12C();
  v3 = [v1 rangeOfString_];
  v5 = v4;

  v6 = sub_21DBF4B4C();
  v7 = v3 == v6;
  v8 = v3 == v6;
  if (v3 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v3;
  }

  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v5;
  }

  result.value.length = v10;
  result.value.location = v9;
  result.is_nil = v8;
  return result;
}

Swift::String __swiftcall String.substring(with:)(__C::_NSRange with)
{
  length = with.length;
  location = with.location;
  v3 = sub_21DBFA12C();
  v4 = [v3 substringWithRange_];

  v5 = sub_21DBFA16C();
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

Swift::String __swiftcall String.droppingHashtagTokenPrefix()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_21DBF4CAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21DBF4C1C();
  v18 = v7;
  v8 = sub_21D3F7414(sub_21D3F98C8, v17, v3, v2);
  if (v9)
  {
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  else
  {
    v12 = sub_21D3F7BA8(v8, v3, v2);
    v10 = MEMORY[0x223D429B0](v12);
    v11 = v13;
  }

  (*(v5 + 8))(v7, v4);
  v14 = v10;
  v15 = v11;
  result._object = v15;
  result._countAndFlagsBits = v14;
  return result;
}

uint64_t sub_21D3F78B8()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5C118);
  v1 = __swift_project_value_buffer(v0, qword_27CE5C118);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t String.ttr_replacingCharacters(in:with:)()
{
  sub_21D176F0C();
  sub_21DBFBB0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
  v0 = sub_21DBFA07C();

  return v0;
}

Swift::String __swiftcall String.dropPrefix(_:)(Swift::String a1)
{
  v3 = v2;
  v4 = v1;
  v5 = sub_21DBFA39C();
  sub_21DBF8E0C();
  if (v5)
  {
    v6 = sub_21DBFA28C();
    v7 = sub_21D3F969C(v6, v4, v3);
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v4 = MEMORY[0x223D429B0](v7, v9, v11, v13);
    v3 = v14;
  }

  v15 = v4;
  v16 = v3;
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

uint64_t String.trimmingLeadingCharacters(in:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v10[2] = a1;
  v5 = sub_21D3F7414(sub_21D3F974C, v10, a2, a3);
  if (v6)
  {
    return 0;
  }

  v8 = sub_21D3F7BA8(v5, a2, a3);
  v9 = MEMORY[0x223D429B0](v8);

  return v9;
}

unint64_t sub_21D3F7BA8(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_21DBFA3FC();
  }

  __break(1u);
  return result;
}

uint64_t String.trimmingTrailingCharacters(in:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7[2] = a1;
  sub_21D3F7D48(sub_21D3F98C8, v7, a2, a3);
  if (v3)
  {
    return 0;
  }

  sub_21DBFA29C();
  v5 = sub_21DBFA3FC();
  v6 = MEMORY[0x223D429B0](v5);

  return v6;
}

uint64_t sub_21D3F7CA4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  result = *(a3 + 16);
  v6 = (a3 + 16 * result + 24);
  do
  {
    v7 = result;
    if (!result)
    {
      break;
    }

    v8 = *v6;
    v10[0] = *(v6 - 1);
    v10[1] = v8;
    sub_21DBF8E0C();
    v9 = a1(v10);

    if (v3)
    {
      break;
    }

    v6 -= 2;
    result = v7 - 1;
  }

  while ((v9 & 1) == 0);
  return result;
}

unint64_t sub_21D3F7D48(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_21DBFA2AC();
    v13[0] = sub_21DBFA3CC();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

__C::_NSRange_optional __swiftcall String.rangeOfCharacterComposedSequence(before:)(Swift::Int before)
{
  if (before < 1 || MEMORY[0x223D42B30]() <= before)
  {
    goto LABEL_7;
  }

  v2 = sub_21DBFA12C();
  v3 = [v2 rangeOfComposedCharacterSequenceAtIndex_];
  if (!v3)
  {

LABEL_7:
    v3 = 0;
    v4 = 0;
    LOBYTE(v5) = 1;
    goto LABEL_9;
  }

  v5 = v3 - 1;
  if (__OFSUB__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    v6 = [v2 rangeOfComposedCharacterSequenceAtIndex_];
    v8 = v7;

    v4 = v8;
    v3 = v6;
    LOBYTE(v5) = 0;
  }

LABEL_9:
  result.is_nil = v5;
  result.value.length = v4;
  result.value.location = v3;
  return result;
}

__C::_NSRange_optional __swiftcall String.rangeOfCharacterComposedSequence(after:)(Swift::Int after)
{
  if (after < 0)
  {
    goto LABEL_7;
  }

  v3 = v2;
  v4 = v1;
  v6 = MEMORY[0x223D42B30]();
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v6 - 1 <= after)
  {
    goto LABEL_7;
  }

  v9 = sub_21DBFA12C();
  v10 = [v9 rangeOfComposedCharacterSequenceAtIndex_];
  v12 = &v10[v11];
  if (&v10[v11] >= MEMORY[0x223D42B30](v4, v3))
  {

LABEL_7:
    v6 = 0;
    v7 = 0;
    v8 = 1;
    goto LABEL_9;
  }

  v13 = [v9 rangeOfComposedCharacterSequenceAtIndex_];
  v15 = v14;

  v7 = v15;
  v6 = v13;
  v8 = 0;
LABEL_9:
  result.value.length = v7;
  result.value.location = v6;
  result.is_nil = v8;
  return result;
}

__C::_NSRange_optional __swiftcall String.rangeOfNewlineCharacter(atOrBefore:)(Swift::Int atOrBefore)
{
  v3 = v2;
  v4 = v1;
  v32 = sub_21DBF4CAC();
  v6 = *(v32 - 8);
  v7 = MEMORY[0x28223BE20](v32);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (atOrBefore < 0 || MEMORY[0x223D42B30](v4, v3, v7) <= atOrBefore)
  {
LABEL_23:
    v13 = 0;
LABEL_24:
    v14 = 0;
    LOBYTE(v28) = 1;
LABEL_25:
    v26 = v13;
    v27 = v14;
    goto LABEL_27;
  }

  v10 = sub_21DBFA12C();
  v11 = [v10 rangeOfComposedCharacterSequenceAtIndex_];
  if (v11 < 0)
  {
LABEL_22:

    goto LABEL_23;
  }

  v13 = v11;
  v14 = v12;
  v15 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v15 = v4;
  }

  v30[1] = (v15 << 16) | 7;
  v31 = (v6 + 8);
  while (1)
  {
    v16 = v10;
    v17 = [v10 substringWithRange_];
    v18 = sub_21DBFA16C();
    v20 = v19;

    v33 = v18;
    v34 = v20;
    sub_21DBF4C8C();
    sub_21D176F0C();
    v21 = sub_21DBFBB3C();
    v23 = v22;
    (*v31)(v9, v32);

    v24 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v24 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (!v24)
    {

      LOBYTE(v28) = 0;
      goto LABEL_25;
    }

    if (!v13)
    {

      goto LABEL_24;
    }

    v10 = v16;
    if ((v3 & 0x1000000000000000) != 0)
    {
      if (v13 >= sub_21DBFA35C())
      {
        goto LABEL_22;
      }
    }

    else if (v13 >= sub_21DBFA36C())
    {
      goto LABEL_22;
    }

    v25 = sub_21DBFA12C();
    v26 = [v25 rangeOfComposedCharacterSequenceAtIndex_];
    if (!v26)
    {

      goto LABEL_22;
    }

    v28 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      break;
    }

    v13 = [v25 rangeOfComposedCharacterSequenceAtIndex_];
    v14 = v29;

    if (v13 < 0)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_27:
  result.is_nil = v28;
  result.value.length = v27;
  result.value.location = v26;
  return result;
}

__C::_NSRange_optional __swiftcall String.rangeOfNewlineCharacter(before:)(Swift::Int before)
{
  if (before < 1 || MEMORY[0x223D42B30]() <= before)
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v2 = sub_21DBFA12C();
    v11 = String.rangeOfCharacterComposedSequence(before:)([v2 rangeOfComposedCharacterSequenceAtIndex_]);
    if (!v11.is_nil)
    {
      v12 = String.rangeOfNewlineCharacter(atOrBefore:)(v11.value.location);
      location = v12.value.location;
      length = v12.value.length;
      is_nil = v12.is_nil;

      v5 = length;
      v6 = location;
      goto LABEL_7;
    }

    v3 = v11.value.location;
    v4 = v11.value.length;

    v5 = v4;
    v6 = v3;
  }

  is_nil = 1;
LABEL_7:
  v8 = is_nil;
  result.value.length = v5;
  result.value.location = v6;
  result.is_nil = v8;
  return result;
}

__C::_NSRange_optional __swiftcall String.rangeOfNewlineCharacter(after:exclusiveEndIndextoSearch:)(Swift::Int after, Swift::Int_optional exclusiveEndIndextoSearch)
{
  v4 = v3;
  v5 = v2;
  is_nil = exclusiveEndIndextoSearch.is_nil;
  value = exclusiveEndIndextoSearch.value;
  v9 = sub_21DBF4CAC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (after < 0)
  {
    goto LABEL_6;
  }

  v14 = MEMORY[0x223D42B30](v5, v4, v11);
  if (__OFSUB__(v14, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v14 - 1 <= after)
  {
LABEL_6:
    v14 = 0;
    v15 = 0;
    v20 = 1;
  }

  else
  {
    v17 = sub_21DBFA12C();
    v26 = String.rangeOfCharacterComposedSequence(after:)([v17 rangeOfComposedCharacterSequenceAtIndex_]);
    location = v26.value.location;
    if (v26.is_nil)
    {
      length = v26.value.length;

      v15 = length;
      v20 = 1;
      v14 = location;
    }

    else
    {
      sub_21DBF4C8C();
      v21 = String.rangeOfCharacter(inCharacterSet:atOrAfter:exclusiveEndIndextoSearch:)(v13, location, value, is_nil, v5, v4);
      v23 = v22;
      v20 = v24;

      (*(v10 + 8))(v13, v9);
      v15 = v23;
      v14 = v21;
    }
  }

  v16 = v20 & 1;
LABEL_10:
  result.value.length = v15;
  result.value.location = v14;
  result.is_nil = v16;
  return result;
}

__C::_NSRange_optional __swiftcall String.rangeOfNewlineCharacter(atOrAfter:exclusiveEndIndextoSearch:)(Swift::Int atOrAfter, Swift::Int_optional exclusiveEndIndextoSearch)
{
  v4 = sub_21D3F876C(atOrAfter, exclusiveEndIndextoSearch.value, exclusiveEndIndextoSearch.is_nil, v2, v3, MEMORY[0x277CC8840]);
  result.value.length = v5;
  result.value.location = v4;
  result.is_nil = v6;
  return result;
}

uint64_t String.rangeOfCharacter(inCharacterSet:atOrAfter:exclusiveEndIndextoSearch:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    result = MEMORY[0x223D42B30](a5, a6);
    if (__OFSUB__(result, 1))
    {
      __break(1u);
      return result;
    }

    if (result - 1 >= a2)
    {
      if (a4)
      {
        v12 = MEMORY[0x223D42B30](a5, a6);
      }

      else
      {
        if (a2 > a3)
        {
          a3 = a2;
        }

        v13 = MEMORY[0x223D42B30](a5, a6);
        if (v13 >= a3)
        {
          v12 = a3;
        }

        else
        {
          v12 = v13;
        }
      }

      v14 = sub_21DBFA12C();
      v15 = [v14 rangeOfComposedCharacterSequenceAtIndex_];
      if (v15 < v12)
      {
        v17 = v15;
        v18 = v16;
        v33 = v12;
        while (1)
        {
          v19 = [v14 substringWithRange_];
          sub_21DBFA16C();

          sub_21D176F0C();
          v20 = sub_21DBFBB3C();
          v22 = v21;

          v23 = HIBYTE(v22) & 0xF;
          if ((v22 & 0x2000000000000000) == 0)
          {
            v23 = v20 & 0xFFFFFFFFFFFFLL;
          }

          if (!v23)
          {
            goto LABEL_29;
          }

          if (v17 < 0)
          {
            goto LABEL_31;
          }

          if ((a6 & 0x1000000000000000) != 0)
          {
            v32 = sub_21DBFA35C();
            v25 = v32 - 1;
            if (__OFSUB__(v32, 1))
            {
LABEL_28:
              __break(1u);
LABEL_29:

              return v17;
            }
          }

          else
          {
            v24 = sub_21DBFA36C();
            v25 = v24 - 1;
            if (__OFSUB__(v24, 1))
            {
              goto LABEL_28;
            }
          }

          if (v17 >= v25)
          {
            goto LABEL_31;
          }

          v26 = sub_21DBFA12C();
          v27 = [v26 rangeOfComposedCharacterSequenceAtIndex_];
          v29 = v28;
          v30 = (a6 & 0x1000000000000000) != 0 ? sub_21DBFA35C() : sub_21DBFA36C();
          if (v27 + v29 >= v30)
          {
            break;
          }

          v17 = [v26 rangeOfComposedCharacterSequenceAtIndex_];
          v18 = v31;

          if (v17 >= v33)
          {
            goto LABEL_31;
          }
        }
      }

LABEL_31:
    }
  }

  return 0;
}

__C::_NSRange_optional __swiftcall String.rangeOfWhitespaceCharacter(atOrAfter:exclusiveEndIndextoSearch:)(Swift::Int atOrAfter, Swift::Int_optional exclusiveEndIndextoSearch)
{
  v4 = sub_21D3F876C(atOrAfter, exclusiveEndIndextoSearch.value, exclusiveEndIndextoSearch.is_nil, v2, v3, MEMORY[0x277CC8818]);
  result.value.length = v5;
  result.value.location = v4;
  result.is_nil = v6;
  return result;
}

__C::_NSRange_optional __swiftcall String.rangeOfPunctuationCharacter(atOrAfter:exclusiveEndIndextoSearch:)(Swift::Int atOrAfter, Swift::Int_optional exclusiveEndIndextoSearch)
{
  v4 = sub_21D3F876C(atOrAfter, exclusiveEndIndextoSearch.value, exclusiveEndIndextoSearch.is_nil, v2, v3, MEMORY[0x277CC8830]);
  result.value.length = v5;
  result.value.location = v4;
  result.is_nil = v6;
  return result;
}

uint64_t sub_21D3F876C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void (*a6)(__n128))
{
  v12 = sub_21DBF4CAC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  a6(v14);
  v17 = String.rangeOfCharacter(inCharacterSet:atOrAfter:exclusiveEndIndextoSearch:)(v16, a1, a2, a3 & 1, a4, a5);
  (*(v13 + 8))(v16, v12);
  return v17;
}

BOOL String.isOneNewlineCharacterComposedSequence.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_21DBF4CAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    return 0;
  }

  v10 = v6;
  v11 = sub_21DBFA12C();
  v12 = [v11 rangeOfComposedCharacterSequenceAtIndex_];
  v14 = v13;
  v15 = MEMORY[0x223D42B30](a1, a2);
  if (v12 || v15 != v14)
  {

    return 0;
  }

  v21[0] = a1;
  v21[1] = a2;
  sub_21DBF4C8C();
  sub_21D176F0C();
  v16 = sub_21DBFBB3C();
  v18 = v17;

  (*(v5 + 8))(v8, v10);

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  return v19 == 0;
}

uint64_t String.matchesOfLinksAndPhoneNumbers()(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF4CAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D0C410 != -1)
  {
    swift_once();
  }

  if (!qword_280D0C418)
  {
    return MEMORY[0x277D84F90];
  }

  v17[0] = a1;
  v17[1] = a2;
  v8 = qword_280D0C418;
  sub_21DBF4C5C();
  sub_21D176F0C();
  v9 = sub_21DBFBB3C();
  v11 = v10;
  (*(v5 + 8))(v7, v4);

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v13 = sub_21DBFA12C();
    v14 = [v8 matchesInString:v13 options:0 range:{0, MEMORY[0x223D42B30](a1, a2)}];

    sub_21D3F9788();
    v15 = sub_21DBFA5EC();
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  return v15;
}

uint64_t String.safeNameForHashtag(locale:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21DBF4CAC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v22[-v10];
  MEMORY[0x28223BE20](v12);
  v14 = &v22[-v13];
  sub_21DBF4C5C();
  sub_21DBF4C1C();
  sub_21DBF4C6C();
  v15 = *(v6 + 8);
  v15(v8, v5);
  v15(v11, v5);
  v24 = a2;
  v25 = a3;
  sub_21D176F0C();
  v16 = sub_21DBFBB3C();
  v18 = v17;
  sub_21DBF4C2C();
  v23 = v11;
  v19 = sub_21D17408C(sub_21D3F97D4, v22, v16, v18);

  v24 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A38);
  sub_21D0D0F1C(&qword_27CE58A40, &qword_27CE58A38);
  v20 = sub_21DBFA3DC();
  v15(v14, v5);
  v15(v11, v5);
  return v20;
}

uint64_t sub_21D3F8E60(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF4CAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[0] = a1;
  v10[1] = a2;
  sub_21DBF4C5C();
  sub_21D176F0C();
  v8 = sub_21DBFBB3C();
  (*(v5 + 8))(v7, v4);
  return v8;
}

Swift::Bool __swiftcall String.utTypeConformsTo(_:)(Swift::String a1)
{
  v3 = v2;
  v4 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v27 - v11;
  v13 = sub_21DBF843C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v27 - v18;
  v27[4] = v4;
  v27[5] = v3;
  v27[1] = countAndFlagsBits;
  v27[2] = countAndFlagsBits;
  v27[3] = object;
  sub_21D176F0C();
  if (sub_21DBFBB7C())
  {
    sub_21DBF8E0C();
    sub_21DBF844C();
    v20 = v14[6];
    if (v20(v12, 1, v13) == 1)
    {
      v21 = v12;
    }

    else
    {
      v23 = v12;
      v24 = v14[4];
      v24(v19, v23, v13);
      sub_21DBF8E0C();
      sub_21DBF844C();
      if (v20(v9, 1, v13) != 1)
      {
        v24(v16, v9, v13);
        v22 = sub_21DBF841C();
        v25 = v14[1];
        v25(v16, v13);
        v25(v19, v13);
        return v22 & 1;
      }

      (v14[1])(v19, v13);
      v21 = v9;
    }

    sub_21D3F983C(v21);
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  return v22 & 1;
}

Swift::String_optional __swiftcall String.replaceFirstSpaceToNonBreaking()()
{
  sub_21D176F0C();
  sub_21DBFBB8C();
  v0 = sub_21DBFBB5C();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

id sub_21D3F92FC()
{
  result = sub_21D3F931C();
  qword_280D0C418 = result;
  return result;
}

id sub_21D3F931C()
{
  v14[1] = *MEMORY[0x277D85DE8];
  v14[0] = 0;
  v0 = [objc_allocWithZone(MEMORY[0x277CCA948]) initWithTypes:2080 error:v14];
  v1 = v14[0];
  if (!v0)
  {
    v2 = v1;
    v3 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_27CE56728 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE5C118);
    v5 = v3;
    v6 = sub_21DBF84AC();
    v7 = sub_21DBFAEBC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14[0] = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = sub_21DBFC75C();
      v12 = sub_21D0CDFB4(v10, v11, v14);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_21D0C9000, v6, v7, "Failed to create linksAndPhoneNumbersDetector {error: %s}", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x223D46520](v9, -1, -1);
      MEMORY[0x223D46520](v8, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v0;
}

uint64_t String.removingCharacters(notContainedIn:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21DBF4CAC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = a2;
  v12[1] = a3;
  sub_21DBF4C7C();
  sub_21D176F0C();
  v9 = sub_21DBFBB0C();
  (*(v6 + 8))(v8, v5);
  v12[0] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
  v10 = sub_21DBFA07C();

  return v10;
}

unint64_t sub_21D3F969C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_21DBFA2BC();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_21DBFA3FC();
}

unint64_t sub_21D3F9788()
{
  result = qword_280D0C278;
  if (!qword_280D0C278)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D0C278);
  }

  return result;
}

uint64_t sub_21D3F97D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21DBF4BFC();
  if (result)
  {
    result = sub_21DBF8E0C();
  }

  else
  {
    v3 = 0xE100000000000000;
    v4 = 45;
  }

  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t sub_21D3F983C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TTRReminderCellHashtagInteractor.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRReminderCellHashtagInteractor.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24989C;
}

uint64_t TTRReminderCellHashtagInteractor.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t TTRReminderCellHashtagInteractor.init()()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t TTRReminderCellHashtagInteractor.fetchAllHashtagLabels(store:)()
{
  v0 = sub_21DBF6AAC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF6AFC();
  (*(v1 + 104))(v3, *MEMORY[0x277D45320], v0);
  v4 = sub_21DBF6A8C();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t TTRReminderCellHashtagInteractor.__deallocating_deinit()
{
  sub_21D157444(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_21D3F9BE4()
{
  v0 = sub_21DBF6AAC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF6AFC();
  (*(v1 + 104))(v3, *MEMORY[0x277D45320], v0);
  v4 = sub_21DBF6A8C();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t TTRUndoableEditing.registerUndo(handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21D3FA910(&v10);
  v9 = v10;
  TTRUndoableEditing.registerUndo(forEditing:handler:)(&v9, a1, a2, a3, a4);
}

uint64_t TTRUndoableEditing.undoManager.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 72))(v5);
  v2 = v6;
  if (v6)
  {
    v3 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v2 = (*(v3 + 8))(v2, v3);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
    sub_21D0CF7E0(v5, &unk_27CE60D80);
  }

  return v2;
}

uint64_t TTRUndoableEditing.registerUndo(forEditing:handler:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v85 = a2;
  v86 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v89 = *(AssociatedTypeWitness - 8);
  v9 = *(v89 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v87 = v75 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = v75 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v75 - v17;
  v84 = *a1;
  sub_21DBFBF0C();
  (*(a5 + 72))(&v91, a4, a5);
  if (v92)
  {
    sub_21D0D15E0(&v91, v93);
    if (qword_280D17EC8 != -1)
    {
      swift_once();
    }

    v19 = sub_21DBF84BC();
    __swift_project_value_buffer(v19, qword_280D0F210);
    v20 = v89;
    v22 = v89 + 16;
    v21 = *(v89 + 16);
    v88 = v18;
    v83 = v21;
    v21(v15, v18, AssociatedTypeWitness);
    v23 = sub_21DBF84AC();
    v24 = sub_21DBFAE9C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v80 = v22;
      v26 = v25;
      v78 = swift_slowAlloc();
      v90 = a4;
      *&v91 = v78;
      *v26 = 136315394;
      swift_getMetatypeMetadata();
      v27 = sub_21DBFA1AC();
      LODWORD(v77) = v24;
      v28 = v20;
      v30 = sub_21D0CDFB4(v27, v29, &v91);
      v79 = a4;
      v31 = AssociatedTypeWitness;
      v32 = v30;

      *(v26 + 4) = v32;
      *(v26 + 12) = 2080;
      v83(v87, v15, v31);
      v33 = sub_21DBFA1AC();
      v35 = v34;
      v36 = *(v28 + 8);
      v81 = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v37 = v15;
      v38 = v31;
      a4 = v79;
      v82 = v36;
      v36(v37, v38);
      v39 = sub_21D0CDFB4(v33, v35, &v91);

      *(v26 + 14) = v39;
      _os_log_impl(&dword_21D0C9000, v23, v77, "%s: registering undo {id: %s}", v26, 0x16u);
      v40 = v78;
      swift_arrayDestroy();
      MEMORY[0x223D46520](v40, -1, -1);
      MEMORY[0x223D46520](v26, -1, -1);
    }

    else
    {

      v60 = *(v20 + 8);
      v81 = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v82 = v60;
      v60(v15, AssociatedTypeWitness);
      v38 = AssociatedTypeWitness;
    }

    v75[1] = (*(*(a5 + 8) + 16))(a4);
    v77 = (*(a5 + 64))(a4, a5);
    v76 = (*(*(a5 + 16) + 16))(a4);
    v75[0] = swift_getDynamicType();
    v79 = v94;
    v80 = v95;
    v78 = __swift_project_boxed_opaque_existential_1(v93, v94);
    *&v91 = v84;
    v61 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v62 = v87;
    v83(v87, v88, v38);
    v63 = v89;
    v64 = (*(v89 + 80) + 48) & ~*(v89 + 80);
    v65 = v38;
    v66 = (v64 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
    v67 = (v64 + v9 + 23) & 0xFFFFFFFFFFFFFFF8;
    v68 = swift_allocObject();
    *(v68 + 2) = a4;
    *(v68 + 3) = a5;
    *(v68 + 4) = v75[0];
    *(v68 + 5) = v61;
    (*(v63 + 32))(&v68[v64], v62, v65);
    v69 = &v68[v66];
    v70 = v77;
    *v69 = v77;
    v69[8] = v76 & 1;
    v71 = &v68[v67];
    v72 = v86;
    *v71 = v85;
    *(v71 + 1) = v72;

    v73 = v70;

    TTRUndoContext.registerUndo(forEditing:action:)(&v91, sub_21D3FC41C, v68, v79, v80);
    swift_unknownObjectRelease();

    v82(v88, v65);

    return __swift_destroy_boxed_opaque_existential_0(v93);
  }

  else
  {
    sub_21D0CF7E0(&v91, &unk_27CE60D80);
    if (qword_280D17EC8 != -1)
    {
      swift_once();
    }

    v41 = sub_21DBF84BC();
    __swift_project_value_buffer(v41, qword_280D0F210);
    v42 = v89;
    v43 = *(v89 + 16);
    v43(v10, v18, AssociatedTypeWitness);
    v44 = sub_21DBF84AC();
    v45 = v18;
    v46 = sub_21DBFAE9C();
    v47 = AssociatedTypeWitness;
    if (os_log_type_enabled(v44, v46))
    {
      v48 = swift_slowAlloc();
      v88 = v45;
      v49 = v48;
      v86 = swift_slowAlloc();
      v93[0] = v86;
      *v49 = 136315394;
      *&v91 = a4;
      swift_getMetatypeMetadata();
      v50 = sub_21DBFA1AC();
      v52 = sub_21D0CDFB4(v50, v51, v93);

      *(v49 + 4) = v52;
      *(v49 + 12) = 2080;
      v43(v87, v10, AssociatedTypeWitness);
      v53 = sub_21DBFA1AC();
      v55 = v54;
      v56 = *(v42 + 8);
      v56(v10, v47);
      v57 = sub_21D0CDFB4(v53, v55, v93);

      *(v49 + 14) = v57;
      _os_log_impl(&dword_21D0C9000, v44, v46, "%s: undo registration not supported {id: %s}", v49, 0x16u);
      v58 = v86;
      swift_arrayDestroy();
      MEMORY[0x223D46520](v58, -1, -1);
      MEMORY[0x223D46520](v49, -1, -1);

      return (v56)(v88, v47);
    }

    else
    {

      v74 = *(v42 + 8);
      v74(v10, AssociatedTypeWitness);
      return (v74)(v45, AssociatedTypeWitness);
    }
  }
}

uint64_t sub_21D3FA6E8()
{
  sub_21D1826C4(*v0 + 24, v4);
  v1 = v5;
  if (v5)
  {
    v2 = v6;
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v1 = (*(v2 + 8))(v1, v2);
    __swift_destroy_boxed_opaque_existential_0(v4);
  }

  else
  {
    sub_21D0CF7E0(v4, &unk_27CE60D80);
  }

  return v1;
}

uint64_t TTRUndoableEditing.init(changeItem:undoManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = a1;
    v6 = a4;
    v7 = a3;
    v8 = type metadata accessor for TTRBasicUndoContext();
    v9 = swift_allocObject();
    a3 = v7;
    a4 = v6;
    v10 = v9;
    a1 = v5;
    *(v10 + 16) = a2;
    v11 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v10 = 0;
    v8 = 0;
    v11 = 0;
    v13[1] = 0;
    v13[2] = 0;
  }

  v13[0] = v10;
  v13[3] = v8;
  v13[4] = v11;
  return (*(a4 + 80))(a1, v13, a3);
}

uint64_t sub_21D3FA848()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F210);
  v1 = __swift_project_value_buffer(v0, qword_280D0F210);
  if (qword_280D17A58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21AB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D3FA910@<X0>(uint64_t *a1@<X8>)
{
  v7[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0(v7);
  sub_21DBFBF0C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MetatypeMetadata = swift_getMetatypeMetadata();
  *&v5 = AssociatedTypeWitness;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21DC08D00;
  sub_21D0CEB98(v7, v3 + 32);
  sub_21D0CF2E8(&v5, (v3 + 64));
  result = __swift_destroy_boxed_opaque_existential_0(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_21D3FAA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = sub_21D3FAAD4(Strong, a4, a5, a1, a6, a7, a8, a9, a10);
  swift_unknownObjectRelease();
  return v17;
}

uint64_t sub_21D3FAAD4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v29 = a1;
  v31 = a3;
  v32 = a7;
  v30 = a6;
  v33 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = v28 - v15;
  sub_21D0D32E4(a4, v34);
  (*(v13 + 16))(v16, a2, AssociatedTypeWitness);
  v17 = (*(v13 + 80) + 80) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = a8;
  *(v20 + 3) = a9;
  sub_21D0D15E0(v34, (v20 + 32));
  *(v20 + 9) = v28[1];
  (*(v13 + 32))(&v20[v17], v16, AssociatedTypeWitness);
  v21 = &v20[v18];
  v22 = v29;
  v23 = v32;
  *v21 = v30;
  *(v21 + 1) = v23;
  *&v20[v19] = v22;
  v24 = &v20[(v19 + 15) & 0xFFFFFFFFFFFFFFF8];
  v25 = v31;
  *v24 = v31;
  v24[8] = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59260);
  swift_allocObject();
  swift_unknownObjectRetain();
  v26 = v25;

  return sub_21DBF911C();
}

uint64_t static TTRUndoableEditing.reapplyActions(in:overridingTargetWith:sourceChangeItemID:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a1;
  v25 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_21DBFBA8C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v24 - v16;
  (*(v10 + 16))(v12, a3, v9, v15);
  v18 = *(v13 + 48);
  if (v18(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(a5 + 56))(v25, a4, a5);
    if (v18(v12, 1, AssociatedTypeWitness) != 1)
    {
      (*(v10 + 8))(v12, v9);
    }
  }

  else
  {
    (*(v13 + 32))(v17, v12, AssociatedTypeWitness);
  }

  v26[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
  (*(v13 + 16))(boxed_opaque_existential_0, v17, AssociatedTypeWitness);
  v20 = v24;
  v21 = [v24 canUndo];
  if ((v21 & 1) != 0 || (v21 = [v20 canRedo], v21))
  {
    MEMORY[0x28223BE20](v21);
    *(&v24 - 4) = v20;
    *(&v24 - 3) = v26;
    *(&v24 - 2) = v25;
    v22 = sub_21D3FC320(sub_21D3FC4F8);
  }

  else
  {
    v22 = 0;
  }

  (*(v13 + 8))(v17, AssociatedTypeWitness);
  __swift_destroy_boxed_opaque_existential_0(v26);
  return v22 & 1;
}

void TTRUndoableEditing.performWithUndoRegistrationDisabled(_:)(void (*a1)(id), uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 72))(v9, a3, a4);
  v5 = v10;
  if (v10)
  {
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v7 = (*(v6 + 8))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0(v9);
    a1([v7 disableUndoRegistration]);
    [v7 enableUndoRegistration];
  }

  else
  {
    v8 = sub_21D0CF7E0(v9, &unk_27CE60D80);
    a1(v8);
  }
}

void sub_21D3FB0E8(void (*a1)(uint64_t *), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  v54 = a8;
  v61 = a6;
  v62 = a7;
  v60 = a5;
  v63 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = *(AssociatedTypeWitness - 8);
  v57 = AssociatedTypeWitness;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v55 = &v46[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v53 = &v46[-v18];
  v19 = swift_allocObject();
  v59 = a1;
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v20 = a3[3];
  v21 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v20);
  v22 = *(v21 + 8);
  v58 = a2;

  v23 = v22(v20, v21);
  v24 = NSUndoManager.associatedSaveRequest.getter();
  if (v24)
  {
    v25 = v24;

    sub_21D3FB940(v60, v25, a3, v61, v62, a11, a12);
    v65 = 0;
    v66 = 0;
    v59(&v65);

    return;
  }

  v51 = a3;
  v26 = v60;
  v27 = v54;
  v52 = a11;
  if (!v54)
  {
    goto LABEL_6;
  }

  v67 = v54;
  swift_unknownObjectRetain();
  if (NSUndoManager.unitTest_ignoresInMemoryChangeItems.getter())
  {
    swift_unknownObjectRelease();
LABEL_6:
    sub_21D0D32E4(v51, &v65);
    v28 = swift_allocObject();
    *(v28 + 16) = sub_21D1D1AB4;
    *(v28 + 24) = v19;
    sub_21D3FC090(v26, a9, &v65, a10 & 1, v61, v62, sub_21D3FC6A8, v28, a11, a12);
    sub_21D0CF7E0(&v65, &unk_27CE60D80);

    return;
  }

  v29 = sub_21D3FBB38(v23, &v67, a11, a12);
  if (v29)
  {
    v30 = qword_280D17EC8;
    swift_unknownObjectRetain();
    if (v30 != -1)
    {
      swift_once();
    }

    v31 = sub_21DBF84BC();
    __swift_project_value_buffer(v31, qword_280D0F210);
    swift_unknownObjectRetain();
    v32 = sub_21DBF84AC();
    v33 = sub_21DBFAE9C();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v50 = v34;
      v49 = swift_slowAlloc();
      v65 = v49;
      *v34 = 136315394;
      v64 = swift_getAssociatedTypeWitness();
      swift_getMetatypeMetadata();
      v35 = sub_21DBFA1AC();
      v48 = v32;
      v37 = sub_21D0CDFB4(v35, v36, &v65);
      v47 = v33;
      v38 = v37;

      v39 = v50;
      *(v50 + 1) = v38;
      *(v39 + 6) = 2080;
      (*(a12 + 56))(v29, a11, a12);
      v40 = sub_21DBFA1AC();
      v42 = sub_21D0CDFB4(v40, v41, &v65);

      v43 = v50;
      *(v50 + 14) = v42;
      v44 = v48;
      _os_log_impl(&dword_21D0C9000, v48, v47, "Performing undo action on an overridden target {type: %s, id: %s}", v43, 0x16u);
      v45 = v49;
      swift_arrayDestroy();
      MEMORY[0x223D46520](v45, -1, -1);
      MEMORY[0x223D46520](v50, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v27 = v29;
  }

  sub_21D3FBEFC(v27, v51, v61, v62, a11, a12);
  v65 = 0;
  v66 = 0;
  v59(&v65);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

void sub_21D3FB940(uint64_t a1, void *a2, uint64_t a3, void (*a4)(_BYTE *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a4;
  v28 = a5;
  v26 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v23 - v15;
  v17 = *(a7 + 40);
  v25 = a1;
  v18 = a1;
  v19 = a2;
  v20 = v17(v18, a2, a6, a7, v14);
  if (v20)
  {
    v21 = v20;
LABEL_3:
    swift_unknownObjectRetain();
    sub_21D3FBEFC(v21, v26, v27, v28, a6, a7);
    swift_unknownObjectRelease_n();
    return;
  }

  v23 = AssociatedTypeWitness;
  v24 = v13;
  v22 = [a2 store];
  (*(a7 + 32))(v25, v22, a6, a7);

  if (!v7)
  {
    v21 = (*(a7 + 48))(v16, v19, a6, a7);
    (*(v24 + 8))(v16, v23);
    swift_unknownObjectRetain();
    goto LABEL_3;
  }
}

uint64_t sub_21D3FBB38(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v27 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_21DBFBA8C();
  v26 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  sub_21DBBFDD8(&v29);
  if (!*(&v30 + 1))
  {
    sub_21D0CF7E0(&v29, &qword_27CE59278);
    return 0;
  }

  v32[0] = v29;
  v32[1] = v30;
  v33 = v31;
  if (v31 == *a2 || (v24 = a2, v25 = v11, *&v29 = v31, swift_getAssociatedTypeWitness(), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
  {
    sub_21D1D1AD4(v32);
    return 0;
  }

  v18 = v28;
  sub_21D0CEB98(v32, &v29);
  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_unknownObjectRelease();
    (*(v25 + 56))(v10, 1, 1, AssociatedTypeWitness);
    sub_21D1D1AD4(v32);
    (*(v26 + 8))(v10, v8);
    return 0;
  }

  v19 = v25;
  (*(v25 + 56))(v10, 0, 1, AssociatedTypeWitness);
  (*(v19 + 32))(v17, v10, AssociatedTypeWitness);
  v26 = *(a4 + 56);
  v20 = swift_unknownObjectRetain();
  (v26)(v20, a3, a4);
  swift_unknownObjectRelease();
  swift_getAssociatedConformanceWitness();
  v21 = sub_21DBFA10C();
  v22 = *(v19 + 8);
  v22(v14, AssociatedTypeWitness);
  v22(v17, AssociatedTypeWitness);
  sub_21D1D1AD4(v32);
  if ((v21 & 1) == 0)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return v18;
}

uint64_t sub_21D3FBEFC(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_21D0D32E4(v12, v17);
  v13 = *(a6 + 80);
  v14 = swift_unknownObjectRetain();
  v13(v14, v17, a5, a6);
  a3(v11);
  return (*(v9 + 8))(v11, a5);
}

void sub_21D3FC02C(void *a1, void (*a2)(void *, _BOOL8))
{
  v4 = a1 != 0;
  v5 = a1;
  a2(a1, v4);

  sub_21D1D1F18(a1, v4);
}

uint64_t sub_21D3FC090(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void (*a5)(char *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v34 = a8;
  v32 = a6;
  v33 = a7;
  v31 = a5;
  v30 = a4;
  v29 = a3;
  v13 = *(a10 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = &v26 - v16;
  result = (*(a10 + 32))(a1, a2, a9, a10, v15);
  if (!v10)
  {
    v19 = v28;
    v20 = v29;
    v26 = v13;
    v27 = 0;
    if (v30)
    {
      sub_21D23CE60(AssociatedTypeWitness, AssociatedTypeWitness);
      swift_allocObject();
      v21 = sub_21DBFA60C();
      (*(v19 + 16))(v22, v17, AssociatedTypeWitness);
      sub_21D23C8B4();
      v23 = v27;
      static TTROneshotEditing.unitTest_oneshotEditWithSyncSave(_:store:listIDsForOrderMutationPreparation:undoContext:editBlock:)(v21, a2, 0, v20, v31, v32, a9, v26);
      v24 = v33;
      if (v23)
      {

        v25 = v23;
        v24(v23);

        return (*(v19 + 8))(v17, AssociatedTypeWitness);
      }

      else
      {
        (*(v19 + 8))(v17, AssociatedTypeWitness);
      }
    }

    else
    {
      static TTROneshotEditing.oneshotEdit(_:undoContext:editBlock:completionBlock:)(v17, v29, v31, v32, v33, v34, a9, v26);
      return (*(v19 + 8))(v17, AssociatedTypeWitness);
    }
  }

  return result;
}

uint64_t sub_21D3FC320(void (*a1)(uint64_t *__return_ptr))
{
  v2 = v1;
  if (__OFADD__(sub_21DBC127C(), 1))
  {
    __break(1u);
  }

  else if (qword_27CE57620 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v4 = qword_27CE678A8;
  v5 = sub_21DBFABEC();
  objc_setAssociatedObject(v2, v4, v5, 1);

  a1(&v10);
  v6 = sub_21DBC127C();
  v7 = __OFSUB__(v6, 1);
  result = v6 - 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v9 = sub_21DBFABEC();
    objc_setAssociatedObject(v2, v4, v9, 1);

    return v10;
  }

  return result;
}

uint64_t sub_21D3FC41C(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  return sub_21D3FAA14(a1, v1[4], v1[5], v1 + v6, *(v1 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), v3, v4);
}

uint64_t dispatch thunk of static TTRUndoableEditing.changeItem(with:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 40))();
}

{
  return (*(a4 + 48))();
}

void sub_21D3FC5A4(void (*a1)(uint64_t *), uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (*(v7 + 80) + 80) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_21D3FB0E8(a1, a2, v2 + 4, v2[9], v2 + v8, *(v2 + v9), *(v2 + v9 + 8), *(v2 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v5, v6);
}

void sub_21D3FC6A8(void *a1)
{
  v3 = *(v1 + 16);
  v4 = a1 != 0;
  v5 = a1;
  v3(a1, v4);

  sub_21D1D1F18(a1, v4);
}

uint64_t sub_21D3FC70C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21D82E454(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_21D3FDEF4(v5);
  *a1 = v2;
  return result;
}

__n128 TTREarlyAlertUtils.EarlyAlertOptions.matchingPreset.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 24);
  result = *(v1 + 8);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 TTREarlyAlertUtils.EarlyAlertOptions.customPreset.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[3].n128_u8[0];
  result = v1[2];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t static TTREarlyAlertUtils.earlyAlertOptions(for:isAllDay:)@<X0>(int64x2_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1].u8[0];
  if (a2)
  {
    if (qword_27CE56730 != -1)
    {
      v29 = *a1;
      swift_once();
      v5 = v29;
    }

    v7 = &off_27CE5C130;
  }

  else
  {
    if (qword_27CE56738 != -1)
    {
      v30 = *a1;
      swift_once();
      v5 = v30;
    }

    v7 = &qword_27CE5C138;
  }

  v8 = *v7;
  if (*&v5 == 0)
  {
    if ((v6 & 1) == 0)
    {
      result = sub_21DBF8E0C();
      v10 = 0;
      v11 = 0uLL;
      if (a2)
      {
LABEL_11:
        if (qword_27CE56740 != -1)
        {
          v31 = v11;
          result = swift_once();
          v11 = v31;
        }

        v12 = &xmmword_27CE5C140;
LABEL_30:
        v13 = *v12;
        v14 = *(v12 + 16);
        goto LABEL_31;
      }

LABEL_27:
      if (qword_27CE56748 != -1)
      {
        v32 = v11;
        result = swift_once();
        v11 = v32;
      }

      v12 = &xmmword_27CE5C158;
      goto LABEL_30;
    }
  }

  else if (!v6)
  {
    v15 = *(v8 + 2);
    v28 = v5;
    if (v15)
    {
      v16 = (v8 + 48);
      v17 = *(v8 + 2);
      while (1)
      {
        v18 = vmovn_s64(vceqq_s64(v16[-1], v5));
        if (v18.i32[1] & v18.i32[0])
        {
          break;
        }

        v16 = (v16 + 24);
        if (!--v17)
        {
          goto LABEL_20;
        }
      }

      v10 = v16->i8[0];
      result = sub_21DBF8E0C();
      v11 = v28;
      if (a2)
      {
        goto LABEL_11;
      }
    }

    else
    {
LABEL_20:
      sub_21DBF8E0C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_21D21329C(0, v15 + 1, 1, v8);
      }

      v19 = *(v8 + 2);
      v20 = *(v8 + 3);
      v21 = v19 + 1;
      v22 = v28;
      if (v19 >= v20 >> 1)
      {
        v24 = v8;
        v25 = *(v8 + 2);
        v26 = sub_21D21329C((v20 > 1), v19 + 1, 1, v24);
        v22 = v28;
        v19 = v25;
        v8 = v26;
      }

      *(v8 + 2) = v21;
      v23 = &v8[24 * v19];
      *(v23 + 2) = v22;
      v23[48] = 0;
      v33 = v8;
      sub_21DBF8E0C();
      v10 = 0;
      sub_21D3FC70C(&v33);

      v8 = v33;
      v11 = v28;
      if (a2)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_27;
  }

  v27 = v5;
  result = sub_21DBF8E0C();
  v13 = v27;
  v14 = 1;
  v10 = 1;
  v11 = v27;
LABEL_31:
  *a3 = v8;
  *(a3 + 8) = v11;
  *(a3 + 24) = v10;
  *(a3 + 32) = v13;
  *(a3 + 48) = v14;
  return result;
}

uint64_t static TTREarlyAlertUtils.isPassedDate(with:from:relativeTo:)(uint64_t *a1, void *a2)
{
  v4 = sub_21DBF563C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  if (a2)
  {
    v9 = *a1;
    if (*a1)
    {
      v10 = a1[1];
      v11 = a2;
      sub_21D3FCBA0(v10, v9, v11, v7);
      v8 = sub_21DBF55DC();

      (*(v5 + 8))(v7, v4);
    }
  }

  return v8 & 1;
}

uint64_t sub_21D3FCBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a1;
  v51 = a2;
  v52 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v8 - 8);
  v48 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v49 = v44 - v11;
  v12 = sub_21DBF509C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v44 - v17;
  v19 = sub_21DBF563C();
  v20 = *(v19 - 8);
  *&v21 = MEMORY[0x28223BE20](v19).n128_u64[0];
  v23 = v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [a3 date];
  sub_21DBF55FC();

  if ([a3 isAllDay])
  {
    v25 = [objc_opt_self() daemonUserDefaults];
    v26 = [v25 todayNotificationFireTime];

    if (v26)
    {
      sub_21DBF4EFC();

      (*(v13 + 32))(v18, v15, v12);
      v27 = sub_21DBF4F5C();
      if (v28 & 1) != 0 || (v29 = v27, v30 = sub_21DBF4FCC(), (v31))
      {
        (*(v13 + 8))(v18, v12);
      }

      else
      {
        v47 = v30;
        v37 = sub_21DBF5A2C();
        v38 = *(v37 - 8);
        v45 = *(v38 + 56);
        v46 = v37;
        v44[1] = v38 + 56;
        v45(v7, 1, 1);
        v39 = v48;
        Date.rem_dateByAdding(hours:inCalendar:)(v29, v7, v48);
        v40 = v39;
        sub_21D0CF7E0(v7, &qword_27CE5A8B0);
        v41 = *(v20 + 48);
        if (v41(v40, 1, v19) == 1)
        {
          (*(v13 + 8))(v18, v12);
          sub_21D0CF7E0(v40, &qword_27CE58D68);
          v42 = v49;
          (*(v20 + 56))(v49, 1, 1, v19);
        }

        else
        {
          (v45)(v7, 1, 1, v46);
          v46 = v41;
          v42 = v49;
          Date.rem_dateByAdding(minutes:inCalendar:)(v47, v7, v49);
          sub_21D0CF7E0(v7, &qword_27CE5A8B0);
          (*(v13 + 8))(v18, v12);
          v43 = *(v20 + 8);
          v43(v40, v19);
          if (v46(v42, 1, v19) != 1)
          {
            v43(v23, v19);
            (*(v20 + 32))(v23, v42, v19);
            goto LABEL_6;
          }
        }

        sub_21D0CF7E0(v42, &qword_27CE58D68);
      }
    }
  }

LABEL_6:
  v32 = objc_allocWithZone(MEMORY[0x277D44610]);
  v33 = [v32 initWithUnit:v50 count:v51];
  v34 = sub_21DBF55BC();
  v35 = [v33 addedTo_];

  sub_21DBF55FC();
  return (*(v20 + 8))(v23, v19);
}

uint64_t static TTREarlyAlertUtils.isPassedDate(with:from:relativeTo:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_21DBF563C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D3FD2D8(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_21D0CF7E0(v4, &qword_27CE58D68);
    v9 = 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v9 = sub_21DBF55DC();
    (*(v6 + 8))(v8, v5);
  }

  return v9 & 1;
}

uint64_t sub_21D3FD2D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v40 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v6 - 8);
  v44 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v45 = v40 - v9;
  v10 = sub_21DBF509C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v40 - v15;
  v17 = sub_21DBF563C();
  v18 = *(v17 - 8);
  *&v19 = MEMORY[0x28223BE20](v17).n128_u64[0];
  v21 = v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [a1 date];
  sub_21DBF55FC();

  if ([a1 isAllDay])
  {
    v23 = [objc_opt_self() daemonUserDefaults];
    v24 = [v23 todayNotificationFireTime];

    if (v24)
    {
      sub_21DBF4EFC();

      (*(v11 + 32))(v16, v13, v10);
      v25 = sub_21DBF4F5C();
      if (v26 & 1) != 0 || (v27 = v25, v28 = sub_21DBF4FCC(), (v29))
      {
        (*(v11 + 8))(v16, v10);
      }

      else
      {
        v43 = v28;
        v32 = sub_21DBF5A2C();
        v33 = *(v32 - 8);
        v41 = *(v33 + 56);
        v42 = v32;
        v40[1] = v33 + 56;
        v41(v5, 1, 1);
        v34 = v44;
        Date.rem_dateByAdding(hours:inCalendar:)(v27, v5, v44);
        sub_21D0CF7E0(v5, &qword_27CE5A8B0);
        v35 = *(v18 + 48);
        if (v35(v34, 1, v17) == 1)
        {
          (*(v11 + 8))(v16, v10);
          sub_21D0CF7E0(v34, &qword_27CE58D68);
          v36 = v45;
          (*(v18 + 56))(v45, 1, 1, v17);
        }

        else
        {
          (v41)(v5, 1, 1, v42);
          v37 = v43;
          v43 = v35;
          Date.rem_dateByAdding(minutes:inCalendar:)(v37, v5, v45);
          v38 = v5;
          v36 = v45;
          sub_21D0CF7E0(v38, &qword_27CE5A8B0);
          (*(v11 + 8))(v16, v10);
          v39 = *(v18 + 8);
          v39(v34, v17);
          if (v43(v36, 1, v17) != 1)
          {
            v39(v21, v17);
            (*(v18 + 32))(v21, v36, v17);
            goto LABEL_6;
          }
        }

        sub_21D0CF7E0(v36, &qword_27CE58D68);
      }
    }
  }

LABEL_6:
  v30 = v46;
  sub_21DBF559C();
  (*(v18 + 8))(v21, v17);
  return (*(v18 + 56))(v30, 0, 1, v17);
}

void static TTREarlyAlertUtils.earlyAlert(from:includeLastUncommittedChange:)(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = [a1 fetchedCurrentDueDateDeltaAlert];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 dueDateDelta];
    v8 = [v7 isEmpty];

    if (!v8)
    {
      goto LABEL_8;
    }
  }

  if ((a2 & 1) == 0)
  {
    goto LABEL_12;
  }

  v9 = sub_21D3FD98C();
  if (!v9)
  {
    goto LABEL_12;
  }

  v6 = v9;
  v10 = [v9 dueDateDelta];
  v11 = [v10 isEmpty];

  if (v11)
  {

LABEL_12:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    return;
  }

LABEL_8:
  v12 = [v6 dueDateDelta];

  if (!v12)
  {
    goto LABEL_12;
  }

  sub_21D3FDA74(v12, a3);
}

unint64_t sub_21D3FD98C()
{
  result = [v0 dueDateDeltaAlertsToUpsert];
  if (!result)
  {
    return result;
  }

  v2 = result;
  sub_21D3FEBDC();
  v3 = sub_21DBFA5EC();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_11:

    return 0;
  }

  v4 = sub_21DBFBD7C();
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_4:
  v5 = __OFSUB__(v4, 1);
  result = v4 - 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_14:
    v6 = MEMORY[0x223D44740](result, v3);
    goto LABEL_9;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v3 + 8 * result + 32);
LABEL_9:
    v7 = v6;

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_21D3FDA74@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = [a1 isEmpty];
  if (result)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    v15 = a2;
    if (qword_27CE56730 != -1)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v5 = off_27CE5C130;
      v6 = qword_27CE56738;
      sub_21DBF8E0C();
      if (v6 != -1)
      {
        swift_once();
      }

      v7 = sub_21DBF8E0C();
      sub_21D562AA4(v7);
      v8 = *(v5 + 2);
      if (!v8)
      {
        break;
      }

      v9 = 0;
      v10 = v5 + 48;
      while (v9 < *(v5 + 2))
      {
        v11 = *(v10 - 2);
        v12 = *(v10 - 1);
        v13 = *v10;
        if (v12 == [a1 unit] && v11 == objc_msgSend(a1, sel_count))
        {

          *v15 = v11;
          *(v15 + 8) = v12;
          *(v15 + 16) = v13;
          return result;
        }

        ++v9;
        v10 += 24;
        if (v8 == v9)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_15:
      swift_once();
    }

LABEL_13:

    v14 = [a1 count];
    result = [a1 unit];
    *v15 = v14;
    *(v15 + 8) = result;
    *(v15 + 16) = 1;
  }

  return result;
}

void static TTREarlyAlertUtils.earlyAlert(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 dueDateDeltaAlertContext];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 fetchedCurrentDueDateDeltaAlert];

    if (v5)
    {
      v6 = [v5 dueDateDelta];
      v7 = [v6 isEmpty];

      if ((v7 & 1) == 0)
      {
        v9 = [v5 dueDateDelta];
        sub_21D3FDA74(v9, &v10);

        v8 = v11;
        *a2 = v10;
        goto LABEL_6;
      }
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  v8 = 2;
LABEL_6:
  *(a2 + 16) = v8;
}

double sub_21D3FDD14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58910);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21DC0B380;
  *(v0 + 32) = xmmword_21DC15890;
  *(v0 + 48) = 0;
  *(v0 + 56) = xmmword_21DC158A0;
  *(v0 + 72) = 0;
  *(v0 + 80) = xmmword_21DC158B0;
  *(v0 + 96) = 0;
  *(v0 + 104) = xmmword_21DC158C0;
  *(v0 + 120) = 0;
  *(v0 + 128) = xmmword_21DC158D0;
  *(v0 + 144) = 0;
  *(v0 + 152) = xmmword_21DC158E0;
  *(v0 + 168) = 0;
  result = NAN;
  *(v0 + 176) = xmmword_21DC158F0;
  *(v0 + 192) = 0;
  off_27CE5C130 = v0;
  return result;
}

double sub_21D3FDDC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58910);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21DC15900;
  *(v0 + 32) = xmmword_21DC15910;
  *(v0 + 48) = 0;
  *(v0 + 56) = xmmword_21DC15920;
  *(v0 + 72) = 0;
  *(v0 + 80) = xmmword_21DC15930;
  *(v0 + 96) = 0;
  *(v0 + 104) = xmmword_21DC15940;
  *(v0 + 120) = 0;
  *(v0 + 128) = xmmword_21DC15950;
  *(v0 + 144) = 0;
  *(v0 + 152) = xmmword_21DC15890;
  *(v0 + 168) = 0;
  *(v0 + 176) = xmmword_21DC158A0;
  *(v0 + 192) = 0;
  *(v0 + 200) = xmmword_21DC158B0;
  *(v0 + 216) = 0;
  result = NAN;
  *(v0 + 224) = xmmword_21DC158D0;
  *(v0 + 240) = 0;
  qword_27CE5C138 = v0;
  return result;
}

double sub_21D3FDE9C()
{
  result = NAN;
  xmmword_27CE5C140 = xmmword_21DC15890;
  byte_27CE5C150 = 1;
  return result;
}

double sub_21D3FDEBC()
{
  result = NAN;
  xmmword_27CE5C158 = xmmword_21DC15940;
  byte_27CE5C168 = 1;
  return result;
}

uint64_t sub_21D3FDEF4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21DBFC59C();
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
        v5 = sub_21DBFA69C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_21D3FE084(v7, v8, a1, v4);
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
    return sub_21D3FDFEC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21D3FDFEC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3 - 24;
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    while (1)
    {
      v9 = *(v8 + 32);
      v10 = *(v8 + 8);
      if (v9 >= v10 && (v9 != v10 || *v8 >= *(v8 + 24)))
      {
LABEL_4:
        ++a3;
        v5 += 24;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v12 = *(v8 + 40);
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      *(v8 + 24) = *v8;
      *(v8 + 40) = v14;
      *v8 = v13;
      *(v8 + 8) = v9;
      *(v8 + 16) = v12;
      v8 -= 24;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21D3FE084(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v98 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_109:
    v98 = *v98;
    if (!v98)
    {
      goto LABEL_147;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_111;
  }

  v6 = a4;
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 >= v5)
    {
      ++v7;
      goto LABEL_34;
    }

    v11 = (*a3 + 24 * v10);
    v12 = v11[1];
    v13 = (*a3 + 24 * v7);
    v14 = v13[1];
    if (v12 >= v14)
    {
      v16 = *v13;
      v17 = *v11;
      v15 = v12 == v14 && v16 < v17;
    }

    else
    {
      v15 = 1;
    }

    v7 += 2;
    if (v9 + 2 < v5)
    {
      v10 = v5 - 1;
      v19 = (*a3 + 24 * v9 + 56);
      do
      {
        v20 = *(v19 - 3);
        if (*v19 < v20)
        {
          if (!v15)
          {
            goto LABEL_34;
          }
        }

        else if (*v19 == v20)
        {
          if (((v15 ^ (*(v19 - 4) >= *(v19 - 1))) & 1) == 0)
          {
            v10 = v7 - 1;
            if (!v15)
            {
              goto LABEL_34;
            }

LABEL_26:
            if (v7 >= v9)
            {
              if (v9 <= v10)
              {
                v21 = 0;
                v22 = 24 * v7;
                v23 = 24 * v9;
                v24 = v9;
                do
                {
                  if (v24 != v7 + v21 - 1)
                  {
                    v25 = *a3;
                    if (!*a3)
                    {
                      goto LABEL_144;
                    }

                    v26 = (v25 + v23);
                    v27 = v25 + v22;
                    v28 = *(v26 + 16);
                    v29 = *v26;
                    v30 = *(v27 - 8);
                    *v26 = *(v27 - 24);
                    *(v26 + 2) = v30;
                    *(v27 - 24) = v29;
                    *(v27 - 8) = v28;
                  }

                  ++v24;
                  --v21;
                  v22 -= 24;
                  v23 += 24;
                }

                while (v24 < v7 + v21);
                v5 = a3[1];
              }

              goto LABEL_34;
            }

LABEL_140:
            __break(1u);
LABEL_141:
            result = sub_21D82E300(v8);
            v8 = result;
LABEL_111:
            v90 = v8 + 16;
            v91 = *(v8 + 2);
            if (v91 >= 2)
            {
              while (*a3)
              {
                v92 = &v8[16 * v91];
                v93 = *v92;
                v94 = &v90[2 * v91];
                v95 = v94[1];
                sub_21D3FE6B0((*a3 + 24 * *v92), (*a3 + 24 * *v94), *a3 + 24 * v95, v98);
                if (v4)
                {
                }

                if (v95 < v93)
                {
                  goto LABEL_133;
                }

                if (v91 - 2 >= *v90)
                {
                  goto LABEL_134;
                }

                *v92 = v93;
                *(v92 + 1) = v95;
                v96 = *v90 - v91;
                if (*v90 < v91)
                {
                  goto LABEL_135;
                }

                v91 = *v90 - 1;
                result = memmove(v94, v94 + 2, 16 * v96);
                *v90 = v91;
                if (v91 <= 1)
                {
                }
              }

              goto LABEL_145;
            }
          }
        }

        else if (v15)
        {
          v10 = v7 - 1;
          goto LABEL_26;
        }

        v19 += 3;
        ++v7;
      }

      while (v5 != v7);
      v7 = v5;
    }

    if (v15)
    {
      goto LABEL_26;
    }

LABEL_34:
    if (v7 < v5)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_137;
      }

      if (v7 - v9 < v6)
      {
        if (__OFADD__(v9, v6))
        {
          goto LABEL_138;
        }

        if (v9 + v6 < v5)
        {
          v5 = v9 + v6;
        }

        if (v5 < v9)
        {
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (v7 != v5)
        {
          break;
        }
      }
    }

LABEL_56:
    if (v7 < v9)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21D210B90(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v44 = *(v8 + 2);
    v43 = *(v8 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      result = sub_21D210B90((v43 > 1), v44 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v45;
    v46 = &v8[16 * v44];
    *(v46 + 4) = v9;
    *(v46 + 5) = v7;
    v47 = *v98;
    if (!*v98)
    {
      goto LABEL_146;
    }

    if (v44)
    {
      while (1)
      {
        v48 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v49 = *(v8 + 4);
          v50 = *(v8 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_76:
          if (v52)
          {
            goto LABEL_124;
          }

          v65 = &v8[16 * v45];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_127;
          }

          v71 = &v8[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_131;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v45 - 2;
            }

            goto LABEL_97;
          }

          goto LABEL_90;
        }

        v75 = &v8[16 * v45];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_90:
        if (v70)
        {
          goto LABEL_126;
        }

        v78 = &v8[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_129;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_97:
        v86 = v48 - 1;
        if (v48 - 1 >= v45)
        {
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
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*a3)
        {
          goto LABEL_143;
        }

        v87 = *&v8[16 * v86 + 32];
        v88 = *&v8[16 * v48 + 40];
        sub_21D3FE6B0((*a3 + 24 * v87), (*a3 + 24 * *&v8[16 * v48 + 32]), *a3 + 24 * v88, v47);
        if (v4)
        {
        }

        if (v88 < v87)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_21D82E300(v8);
        }

        if (v86 >= *(v8 + 2))
        {
          goto LABEL_121;
        }

        v89 = &v8[16 * v86];
        *(v89 + 4) = v87;
        *(v89 + 5) = v88;
        result = sub_21D82E274(v48);
        v45 = *(v8 + 2);
        if (v45 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v8[16 * v45 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_122;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_123;
      }

      v60 = &v8[16 * v45];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_125;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_128;
      }

      if (v64 >= v56)
      {
        v82 = &v8[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_132;
        }

        if (v51 < v85)
        {
          v48 = v45 - 2;
        }

        goto LABEL_97;
      }

      goto LABEL_76;
    }

LABEL_3:
    v5 = a3[1];
    v6 = a4;
    if (v7 >= v5)
    {
      goto LABEL_109;
    }
  }

  v31 = *a3;
  v32 = *a3 + 24 * v7 - 24;
  v33 = v9 - v7;
LABEL_44:
  v34 = v33;
  v35 = v32;
  while (1)
  {
    v36 = *(v35 + 32);
    v37 = *(v35 + 8);
    if (v36 >= v37 && (v36 != v37 || *v35 >= *(v35 + 24)))
    {
LABEL_43:
      ++v7;
      v32 += 24;
      --v33;
      if (v7 != v5)
      {
        goto LABEL_44;
      }

      v7 = v5;
      goto LABEL_56;
    }

    if (!v31)
    {
      break;
    }

    v39 = *(v35 + 40);
    v41 = *(v35 + 16);
    v40 = *(v35 + 24);
    *(v35 + 24) = *v35;
    *(v35 + 40) = v41;
    *v35 = v40;
    *(v35 + 8) = v36;
    *(v35 + 16) = v39;
    v35 -= 24;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_21D3FE6B0(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    v12 = 24 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v17 = *(v6 + 1);
      v18 = *(v4 + 1);
      if (v17 >= v18 && (v17 != v18 || *v4 >= *v6))
      {
        break;
      }

      v14 = v6;
      v15 = v7 == v6;
      v6 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v4;
    v15 = v7 == v4;
    v4 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v16;
    goto LABEL_9;
  }

  v20 = 24 * v11;
  if (a4 != __src || &__src[v20] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v13 = &v4[v20];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_24:
    v21 = v6 - 24;
    v5 -= 24;
    do
    {
      v22 = (v5 + 24);
      v23 = *(v13 - 2);
      v24 = *(v6 - 2);
      if (v23 < v24 || ((v25 = v13 - 24, v23 == v24) ? (v26 = *v21 < *(v13 - 3)) : (v26 = 0), v26))
      {
        if (v22 != v6)
        {
          v28 = *v21;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v28;
        }

        if (v13 <= v4 || (v6 -= 24, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if (v22 != v13)
      {
        v27 = *v25;
        *(v5 + 16) = *(v13 - 1);
        *v5 = v27;
      }

      v5 -= 24;
      v13 -= 24;
    }

    while (v25 > v4);
    v13 = v25;
  }

LABEL_39:
  v29 = 24 * ((v13 - v4) / 24);
  if (v6 != v4 || v6 >= &v4[v29])
  {
    memmove(v6, v4, v29);
  }

  return 1;
}

BOOL _s15RemindersUICore18TTREarlyAlertUtilsC05EarlyD7OptionsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v15 = *(a1 + 40);
  v14 = *(a1 + 48);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v12 = sub_21D1D7718(*a1, *a2);
  result = 0;
  if ((v12 & 1) != 0 && v2 == v6)
  {
    result = 0;
    if (v3 == v7 && ((v4 ^ v8) & 1) == 0)
    {
      return v5 == v10 && v15 == v9 && v14 == v11;
    }
  }

  return result;
}

uint64_t initializeWithCopy for TTREarlyAlertUtils.EarlyAlertOptions(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTREarlyAlertUtils.EarlyAlertOptions(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t assignWithTake for TTREarlyAlertUtils.EarlyAlertOptions(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTREarlyAlertUtils.EarlyAlertOptions(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for TTREarlyAlertUtils.EarlyAlertOptions(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21D3FEBDC()
{
  result = qword_27CE59818;
  if (!qword_27CE59818)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE59818);
  }

  return result;
}

id static CLLocationManager.ttr_makeLocationManager(authorizationSource:delegate:callbackQueue:)(uint64_t a1, id a2, uint64_t a3)
{
  if (*(a1 + 8))
  {
    v5 = objc_allocWithZone(MEMORY[0x277CBFC10]);
    v6 = sub_21DBFA12C();
    a2 = [v5 initWithEffectiveBundleIdentifier:v6 delegate:a2 onQueue:a3];

    result = a2;
    if (a2)
    {
      return result;
    }

    __break(1u);
  }

  v8 = [objc_allocWithZone(MEMORY[0x277CBFC10]) init];
  [v8 setDelegate_];
  return v8;
}

double TTRIInsetTextField.horizontalInset.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore18TTRIInsetTextField_horizontalInset;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TTRIInsetTextField.horizontalInset.setter(double a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore18TTRIInsetTextField_horizontalInset;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double TTRIInsetTextField.verticalInset.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore18TTRIInsetTextField_verticalInset;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TTRIInsetTextField.verticalInset.setter(double a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore18TTRIInsetTextField_verticalInset;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

__C::CGRect __swiftcall TTRIInsetTextField.textRect(forBounds:)(__C::CGRect forBounds)
{
  sub_21D3FF044(&selRef_textRectForBounds_, forBounds.origin.x, forBounds.origin.y, forBounds.size.width, forBounds.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

__C::CGRect __swiftcall TTRIInsetTextField.editingRect(forBounds:)(__C::CGRect forBounds)
{
  sub_21D3FF044(&selRef_editingRectForBounds_, forBounds.origin.x, forBounds.origin.y, forBounds.size.width, forBounds.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

__C::CGRect __swiftcall TTRIInsetTextField.placeholderRect(forBounds:)(__C::CGRect forBounds)
{
  sub_21D3FF044(&selRef_placeholderRectForBounds_, forBounds.origin.x, forBounds.origin.y, forBounds.size.width, forBounds.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

void sub_21D3FF044(SEL *a1, double a2, double a3, double a4, double a5)
{
  v22.receiver = v5;
  v22.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v22, *a1, a2, a3, a4, a5);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = OBJC_IVAR____TtC15RemindersUICore18TTRIInsetTextField_horizontalInset;
  swift_beginAccess();
  v20 = *&v5[v19];
  v21 = OBJC_IVAR____TtC15RemindersUICore18TTRIInsetTextField_verticalInset;
  swift_beginAccess();
  v23.origin.x = v12;
  v23.origin.y = v14;
  v23.size.width = v16;
  v23.size.height = v18;
  CGRectInset(v23, v20, *&v5[v21]);
}

double sub_21D3FF130(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, const char **a7)
{
  v27.receiver = a1;
  v27.super_class = swift_getObjectType();
  v12 = *a7;
  v13 = v27.receiver;
  objc_msgSendSuper2(&v27, v12, a2, a3, a4, a5);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = OBJC_IVAR____TtC15RemindersUICore18TTRIInsetTextField_horizontalInset;
  swift_beginAccess();
  v23 = *&v13[v22];
  v24 = OBJC_IVAR____TtC15RemindersUICore18TTRIInsetTextField_verticalInset;
  swift_beginAccess();
  v28.origin.x = v15;
  v28.origin.y = v17;
  v28.size.width = v19;
  v28.size.height = v21;
  *&v25 = CGRectInset(v28, v23, *&v13[v24]);

  return v25;
}

__C::CGRect __swiftcall TTRIInsetTextField.clearButtonRect(forBounds:)(__C::CGRect forBounds)
{
  height = forBounds.size.height;
  width = forBounds.size.width;
  y = forBounds.origin.y;
  x = forBounds.origin.x;
  v18.receiver = v1;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, sel_clearButtonRectForBounds_, x, y, width, height);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  MaxX = CGRectGetMaxX(v19);
  v13 = OBJC_IVAR____TtC15RemindersUICore18TTRIInsetTextField_horizontalInset;
  swift_beginAccess();
  v14 = MaxX - (v9 + *&v1[v13]);
  v15 = v7;
  v16 = v9;
  v17 = v11;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

id TTRIInsetTextField.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TTRIInsetTextField.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC15RemindersUICore18TTRIInsetTextField_horizontalInset] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore18TTRIInsetTextField_verticalInset] = 0;
  v11.receiver = v4;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
}

id TTRIInsetTextField.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TTRIInsetTextField.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC15RemindersUICore18TTRIInsetTextField_horizontalInset] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore18TTRIInsetTextField_verticalInset] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id TTRIInsetTextField.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static Optional<A>.contentsEqual(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v29 = &v28 - v10;
  v11 = sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = MEMORY[0x28223BE20](TupleTypeMetadata2 - 8);
  v15 = &v28 - v14;
  v17 = *(v16 + 56);
  v18 = *(v11 - 8);
  v19 = *(v18 + 16);
  v19(&v28 - v14, a1, v11, v13);
  (v19)(&v15[v17], a2, v11);
  v20 = v7[6];
  LODWORD(a2) = v20(v15, 1, a3);
  v21 = v20(&v15[v17], 1, a3);
  if (a2 != 1)
  {
    if (v21 != 1)
    {
      v23 = v7[4];
      v24 = v29;
      v23(v29, v15, a3);
      v25 = v30;
      v23(v30, &v15[v17], a3);
      v22 = (*(v31 + 8))(v24, v25, a3);
      v26 = v7[1];
      v26(v25, a3);
      v26(v24, a3);
      return v22 & 1;
    }

    (v7[1])(v15, a3);
    goto LABEL_7;
  }

  if (v21 != 1)
  {
    (*(v18 + 8))(&v15[v17], v11);
LABEL_7:
    v22 = 0;
    return v22 & 1;
  }

  v22 = 1;
  return v22 & 1;
}

uint64_t Collection<>.diffableDiff(withNewerVersion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = swift_allocObject();
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
  v4[5] = AssociatedTypeWitness;
  sub_21DBFAC5C();
}

uint64_t sub_21D3FFAF0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v6 = *(v5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return v6(a1, a2, AssociatedTypeWitness, v5) & 1;
}

uint64_t sub_21D3FFB70(uint64_t a1, uint64_t a2)
{
  v5 = *(*(v2 + 32) + 8);
  v6 = *(v5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return v6(a1, a2, AssociatedTypeWitness, v5) & 1;
}

uint64_t *sub_21D3FFC1C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && *(*(*(a3 + 16) - 8) + 64) <= 0x18uLL && (*(v4 + 80) & 0x100000) == 0)
  {
    (*(v4 + 16))(a1);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 + 16) & ~v5));
  }

  return v3;
}

uint64_t getEnumTagSinglePayload for TTRIReminderCellQuickBarLocationViewModel(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TTRIReminderCellQuickBarLocationViewModel(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21D3FFE80()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t sub_21D3FFEB0()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5C180);
  v1 = __swift_project_value_buffer(v0, qword_27CE5C180);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *TTRTemplatesListInteractorType.template(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 24))(a2, a3);
  if (v3)
  {
    v4 = v3;
    v5 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
    {
      v7 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x223D44740](v7, v4);
        }

        else
        {
          if (v7 >= *(v5 + 16))
          {
            goto LABEL_15;
          }

          v8 = *(v4 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        sub_21D0D8CF0(0, &qword_280D17680);
        v11 = [v9 objectID];
        v12 = sub_21DBFB63C();

        if (v12)
        {

          return v9;
        }

        ++v7;
        if (v10 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }

  return 0;
}

uint64_t TTRTemplatesListInteractor.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRTemplatesListInteractor.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24989C;
}

id TTRTemplatesListInteractor.store.getter()
{
  v1 = [*(v0 + 40) store];

  return v1;
}

void *TTRTemplatesListInteractor.__allocating_init(account:undoManager:committer:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  v6[3] = 0;
  swift_unknownObjectWeakInit();
  v6[4] = 0;
  type metadata accessor for TTRRemoveTemplateLowLevelInteractorCapability();
  v6[12] = swift_allocObject();
  v6[13] = 0;
  v6[5] = a1;
  v6[6] = a2;
  sub_21D0D15E0(a3, (v6 + 7));
  return v6;
}

void *TTRTemplatesListInteractor.init(account:undoManager:committer:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3[3] = 0;
  swift_unknownObjectWeakInit();
  v3[4] = 0;
  type metadata accessor for TTRRemoveTemplateLowLevelInteractorCapability();
  v3[12] = swift_allocObject();
  v3[13] = 0;
  v3[5] = a1;
  v3[6] = a2;
  sub_21D0D15E0(a3, (v3 + 7));
  return v3;
}

Swift::Void __swiftcall TTRTemplatesListInteractor.start()()
{
  v1 = sub_21DBFB11C();
  v45 = *(v1 - 8);
  v46 = v1;
  MEMORY[0x28223BE20](v1);
  v44 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21DBFB0BC();
  MEMORY[0x28223BE20](v3);
  v4 = sub_21DBF9D5C();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = *(v0 + 40);
  type metadata accessor for TTRTemplatesListMonitorableDataView();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v43 = v6;
  v41 = sub_21D0D8CF0(0, &qword_280D1B900);
  v7 = v5;

  v8 = sub_21DBFB12C();
  sub_21DBF60DC();
  v42 = sub_21DBF60BC();
  v9 = sub_21DBF60AC();
  v40 = *MEMORY[0x277D76648];
  v10 = v40;
  v39 = *MEMORY[0x277D76768];
  v11 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C198);
  v12 = swift_allocObject();
  *(v12 + 32) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  *(v12 + 40) = v8;
  *(v12 + 48) = v9;
  v13 = MEMORY[0x277D84F90];
  *(v12 + 16) = MEMORY[0x277D84F90];
  v14 = v13;
  *(v12 + 24) = 0;
  swift_beginAccess();
  *(v12 + 32) = v14;
  v15 = v10;
  v16 = v11;
  v38 = v8;
  v37 = v9;
  sub_21DBF9D4C();
  v48 = v14;
  sub_21D0D92F8(&qword_280D17808, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F00);
  sub_21D0D9418(&qword_280D178C0, &unk_27CE60F00);
  sub_21DBFBCBC();
  (*(v45 + 104))(v44, *MEMORY[0x277D85260], v46);
  v17 = sub_21DBFB14C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1A0);
  v18 = swift_allocObject();
  *(v18 + 72) = 0u;
  *(v18 + 88) = 0u;
  *(v18 + 104) = 0;
  *(v18 + 108) = -1;
  *(v18 + 120) = 0;
  *(v18 + 128) = 1;
  v19 = swift_slowAlloc();
  *(v18 + 152) = v19;
  *(v18 + 160) = 0;
  v20 = v42;
  v21 = v43;
  *(v18 + 16) = v17;
  *(v18 + 24) = v20;
  v22 = v38;
  *(v18 + 32) = v37;
  *(v18 + 40) = v21;
  *(v18 + 136) = v14;
  *(v18 + 144) = 0;
  *v19 = 0;

  v23 = v39;
  *(v18 + 48) = v40;
  *(v18 + 56) = v23;
  *(v18 + 64) = 1;
  *(v12 + 56) = v18;
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v26 = v47;
  swift_weakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = v24;
  *(v27 + 24) = v25;
  v28 = *(v18 + 72);
  *(v18 + 72) = sub_21D402C38;
  *(v18 + 80) = v27;

  sub_21D0D0E88(v28);

  v29 = *(v12 + 56);
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = *(v29 + 88);
  *(v29 + 88) = sub_21D42CF0C;
  *(v29 + 96) = v30;

  sub_21D0D0E88(v31);

  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  *(v34 + 24) = v33;
  v35 = *(v12 + 64);
  *(v12 + 64) = sub_21D42CF14;
  *(v12 + 72) = v34;

  sub_21D0D0E88(v35);

  *(v26 + 104) = v12;

  sub_21D400FD8(1, &unk_282EBC470, sub_21D43DE2C, &block_descriptor_1624);
}

uint64_t TTRTemplatesListMonitorableDataView.__allocating_init(account:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_21D400BB4(char a1)
{
  v3 = sub_21DBF9D2C();
  v23 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21DBF9D5C();
  v6 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF9D8C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v1 + 56);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9, v11);
  v15 = v14;
  LOBYTE(v14) = sub_21DBF9DAC();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v17 = *(*(v1 + 72) + 16);
    v18 = swift_allocObject();
    *(v18 + 16) = v1;
    *(v18 + 24) = a1 & 1;
    aBlock[4] = sub_21D43A1B0;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_466;
    v19 = _Block_copy(aBlock);
    v20 = v17;

    sub_21DBF9D4C();
    v24 = MEMORY[0x277D84F90];
    sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v8, v5, v19);
    _Block_release(v19);

    (*(v23 + 8))(v5, v3);
    (*(v6 + 8))(v8, v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D400FD8(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v24 = a1;
  v5 = sub_21DBF9D2C();
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = sub_21DBF9D5C();
  v8 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_21DBF9D8C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v23[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(v4 + 40);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11, v13);
  v17 = v16;
  LOBYTE(v16) = sub_21DBF9DAC();
  result = (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v19 = *(*(v4 + 56) + 16);
    v20 = swift_allocObject();
    *(v20 + 16) = v4;
    *(v20 + 24) = v24 & 1;
    aBlock[4] = v25;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = v26;
    v21 = _Block_copy(aBlock);
    v22 = v19;

    sub_21DBF9D4C();
    v29 = MEMORY[0x277D84F90];
    sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v10, v7, v21);
    _Block_release(v21);

    (*(v28 + 8))(v7, v5);
    (*(v8 + 8))(v10, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void TTRTemplatesListInteractor.rename(_:to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[10];
  v8 = v3[11];
  __swift_project_boxed_opaque_existential_1(v3 + 7, v7);
  v9 = type metadata accessor for TTRTemplateEditor();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21DC09CF0;
  *(v10 + 32) = a1;
  v11 = v3[5];
  v12 = a1;
  v13 = [v11 store];
  v14 = v3[6];
  v16 = a2;
  v17 = a3;
  TTRInteractorEditsCommitting.oneshotEdit<A>(using:items:store:undoManager:editBlock:completionBlock:)(v9, v10, v13, v14, sub_21D42CF2C, v15, 0, 0, v7, v9, v8, &protocol witness table for TTRTemplateEditor);
}

uint64_t sub_21D4014EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = [*(*a1 + 16) name];
  v7 = sub_21DBFA16C();
  v9 = v8;

  v10 = v7 == a2 && v9 == a3;
  if (v10 || (sub_21DBFC64C() & 1) != 0)
  {
  }

  else
  {
    v12 = *(v5 + 16);
    v13 = sub_21DBFA12C();
    [v12 setName_];

    v14 = swift_allocObject();
    *(v14 + 16) = v7;
    *(v14 + 24) = v9;
    sub_21D182D68(sub_21D43DE24, v14);
  }
}

id TTRTemplatesListInteractor.changeItem(for:)(uint64_t a1)
{
  v3 = [*(v1 + 40) store];
  v4 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];

  [v4 setSaveIsNoopIfNoChangedKeys_];
  v5 = [v4 updateTemplate_];

  return v5;
}

void TTRTemplatesListInteractor.setTemplateOrdering(_:)()
{
  swift_beginAccess();
  if (v0[4])
  {
    v9 = v0[4];
    sub_21DBF8E0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1A8);
    sub_21D0D8CF0(0, &qword_280D17880);
    sub_21D0D9418(&qword_27CE5C1B0, &qword_27CE5C1A8);
    sub_21D183A0C();
    sub_21DBFA45C();

    sub_21D0D8CF0(0, &qword_27CE59830);
    v1 = sub_21DBFB20C();
    v2 = v0[10];
    v3 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v2);
    v4 = type metadata accessor for TTRAccountEditor();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_21DC09CF0;
    v6 = v0[5];
    *(v5 + 32) = v6;
    v7 = [v6 store];
    MEMORY[0x28223BE20](v7);
    v8[2] = v1;
    TTRInteractorEditsCommitting.oneshotEdit<A>(using:items:store:undoManager:editBlock:completionBlock:)(v4, v5, v7, 0, sub_21D42CF34, v8, 0, 0, v2, v4, v3, &protocol witness table for TTRAccountEditor);
  }
}

id sub_21D4018E4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 objectID];
  *a2 = result;
  return result;
}

uint64_t TTRTemplatesListInteractor.removeTemplate(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_21DBFA84C();
  v3[5] = sub_21DBFA83C();
  v5 = sub_21DBFA7CC();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_21D4019BC, v5, v4);
}

uint64_t sub_21D4019BC()
{
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_21D389F88;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return TTRRemoveTemplateLowLevelInteractorCapability.removeTemplate(_:fetchAccount:)(v4, v2, &unk_21DC15B48, v3);
}

uint64_t sub_21D401A74(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_21DBFA84C();
  *(v1 + 24) = sub_21DBFA83C();
  v3 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D401B0C, v3, v2);
}

uint64_t sub_21D401B0C()
{
  v1 = *(v0 + 16);

  v4 = *(v0 + 8);
  v2 = *(v1 + 40);

  return v4(v2);
}

uint64_t TTRTemplatesListInteractor.createList(from:name:storingUndoStepsIn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[8] = sub_21DBFA84C();
  v5[9] = sub_21DBFA83C();
  v7 = sub_21DBFA7CC();
  v5[10] = v7;
  v5[11] = v6;

  return MEMORY[0x2822009F8](sub_21D401C24, v7, v6);
}

uint64_t sub_21D401C24()
{
  v1 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 24);
  v2 = sub_21DBFA83C();
  *(v0 + 96) = v2;
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *(v3 + 16) = vextq_s8(v8, v8, 8uLL);
  *(v3 + 32) = v9;
  *(v3 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  v5 = sub_21D0D8CF0(0, &qword_280D17880);
  *v4 = v0;
  v4[1] = sub_21D401D68;
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v0 + 16, v2, v6, 0xD000000000000029, 0x800000021DC5BCA0, sub_21D42CFF0, v3, v5);
}

uint64_t sub_21D401D68()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_21D401EF4;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_21D401E8C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21D401E8C()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21D401EF4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_21D401F6C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a5;
  v23 = a6;
  v26 = a3;
  v24 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3E8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = a2[10];
  v21 = a2[11];
  v25 = __swift_project_boxed_opaque_existential_1(a2 + 7, v13);
  v20 = type metadata accessor for TTRAccountEditor();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21DC09CF0;
  v15 = a2[5];
  *(v14 + 32) = v15;
  v16 = [v15 store];
  v28 = v12 + 16;
  v29 = a4;
  v30 = v22;
  v31 = v23;
  (*(v9 + 16))(v11, v24, v8);
  v17 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  (*(v9 + 32))(v18 + v17, v11, v8);

  TTRInteractorEditsCommitting.oneshotEdit<A>(using:items:store:undoManager:editBlock:completionBlock:)(v20, v14, v16, v26, sub_21D43DD98, v27, sub_21D43DDA4, v18, v13, v20, v21, &protocol witness table for TTRAccountEditor);
}

void sub_21D4021D8(uint64_t a1, void **a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = TTRAccountEditor.addAndSaveNewList(using:name:)(a3, a4, a5);
  swift_beginAccess();
  v7 = *a2;
  *a2 = v6;
}

uint64_t sub_21D402238(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3E8);
    return sub_21DBFA7EC();
  }

  else
  {
    if (a1)
    {
      v7 = a1;
    }

    else
    {
      [objc_opt_self() unexpectedError];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3E8);
    return sub_21DBFA7DC();
  }
}

Swift::Void __swiftcall TTRTemplatesListInteractor.registerUndo(listDetailUndoManager:)(NSUndoManager *listDetailUndoManager)
{
  v6 = [*(v1 + 40) store];
  if ([(NSUndoManager *)listDetailUndoManager canUndo])
  {
    v3 = swift_allocObject();
    *(v3 + 16) = listDetailUndoManager;
    *(v3 + 24) = v6;
    sub_21D0D8CF0(0, &unk_280D17840);
    v4 = listDetailUndoManager;
    v5 = v6;
    sub_21DBFAE8C();
  }
}

uint64_t TTRTemplatesListInteractor.deinit()
{
  sub_21D157444(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  return v0;
}

uint64_t TTRTemplatesListInteractor.__deallocating_deinit()
{
  sub_21D157444(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  return swift_deallocClassInstance();
}

id sub_21D4024E4()
{
  v1 = [*(v0 + 40) store];

  return v1;
}

id sub_21D402558(uint64_t a1)
{
  v3 = [*(v1 + 40) store];
  v4 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];

  [v4 setSaveIsNoopIfNoChangedKeys_];
  v5 = [v4 updateTemplate_];

  return v5;
}

uint64_t sub_21D402600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21D203124;

  return TTRTemplatesListInteractor.createList(from:name:storingUndoStepsIn:)(a1, a2, a3, a4);
}

uint64_t sub_21D4026EC(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  sub_21DBFA84C();
  v3[5] = sub_21DBFA83C();
  v5 = sub_21DBFA7CC();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_21D40278C, v5, v4);
}

uint64_t sub_21D40278C()
{
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_21D402844;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return TTRRemoveTemplateLowLevelInteractorCapability.removeTemplate(_:fetchAccount:)(v4, v2, &unk_21DC15D20, v3);
}

uint64_t sub_21D402844()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_21D22D670, v3, v2);
}

uint64_t TTRTemplatesListMonitorableDataView.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_21D402A00(void *a1)
{
  result = sub_21D42D364();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_21D402C78()
{
  v0 = sub_21DBF9D2C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D5C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v17 = *(v9 + 56);
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      *(v12 + 24) = v9;
      aBlock[4] = nullsub_1;
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0D74FC;
      aBlock[3] = &block_descriptor_530;
      v16 = _Block_copy(aBlock);

      sub_21DBF9D4C();
      v18 = MEMORY[0x277D84F90];
      v14[1] = sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
      v15 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
      sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
      sub_21DBFBCBC();
      v13 = v16;
      MEMORY[0x223D438F0](0, v7, v3, v16);
      _Block_release(v13);

      (*(v1 + 8))(v3, v0);
      (*(v5 + 8))(v7, v15);
    }
  }

  return result;
}

uint64_t sub_21D403018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_21DBF9D2C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF9D5C();
  v24 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      v23 = *(v15 + 40);
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      *(v18 + 24) = v15;
      aBlock[4] = a4;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0D74FC;
      aBlock[3] = a5;
      v22 = _Block_copy(aBlock);

      sub_21DBF9D4C();
      v25 = MEMORY[0x277D84F90];
      sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
      v21 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
      sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
      sub_21DBFBCBC();
      v19 = v22;
      MEMORY[0x223D438F0](0, v13, v10, v22);
      _Block_release(v19);

      (*(v8 + 8))(v10, v7);
      (*(v24 + 8))(v13, v21);
    }
  }

  return result;
}

uint64_t sub_21D403388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_21DBF9D2C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF9D5C();
  v24 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      v23 = *(v15 + *(*v15 + 112));
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      *(v18 + 24) = v15;
      aBlock[4] = a4;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0D74FC;
      aBlock[3] = a5;
      v22 = _Block_copy(aBlock);

      sub_21DBF9D4C();
      v25 = MEMORY[0x277D84F90];
      sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
      v21 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
      sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
      sub_21DBFBCBC();
      v19 = v22;
      MEMORY[0x223D438F0](0, v13, v10, v22);
      _Block_release(v19);

      (*(v8 + 8))(v10, v7);
      (*(v24 + 8))(v13, v21);
    }
  }

  return result;
}

uint64_t sub_21D4036BC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v5 + 8) + 24))(ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21D403734(int a1)
{
  v18 = a1;
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  v8 = *MEMORY[0x277D85200];
  v9 = *(v3 + 104);
  v9(v6, v8, v2, v4);
  v10 = v7;
  v11 = sub_21DBF9DAC();
  v12 = *(v3 + 8);
  v12(v6, v2);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + 104))
  {
    return;
  }

  *(v1 + 104) = 1;
  *v6 = v10;
  (v9)(v6, v8, v2);
  v13 = v10;
  v14 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v14 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_21D0D96F4(&unk_282EBC948, sub_21D43E208, &block_descriptor_1768);
  sub_21D0D3810(&unk_282EBC948, sub_21D43E1D0, &block_descriptor_1757);
  sub_21D40EB68();
  *(v1 + 128) = 1;
  *v6 = v13;
  (v9)(v6, v8, v2);
  v15 = v13;
  v16 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v16 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return;
  }

  *(v1 + 128) = 1;
  if (*(v1 + 104) == 1)
  {
    sub_21D40656C(v18 & 1);
    *(v1 + 128) = 0;
  }
}

void sub_21D403980(int a1)
{
  v18 = a1;
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  v8 = *MEMORY[0x277D85200];
  v9 = *(v3 + 104);
  v9(v6, v8, v2, v4);
  v10 = v7;
  v11 = sub_21DBF9DAC();
  v12 = *(v3 + 8);
  v12(v6, v2);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + 104))
  {
    return;
  }

  *(v1 + 104) = 1;
  *v6 = v10;
  (v9)(v6, v8, v2);
  v13 = v10;
  v14 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v14 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_21D0D96F4(&unk_282EB8280, sub_21D439D3C, &block_descriptor_265);
  sub_21D0D3810(&unk_282EB8280, sub_21D439D04, &block_descriptor_254);
  sub_21D40EE74();
  *(v1 + 128) = 1;
  *v6 = v13;
  (v9)(v6, v8, v2);
  v15 = v13;
  v16 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v16 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return;
  }

  *(v1 + 128) = 1;
  if (*(v1 + 104) == 1)
  {
    sub_21D406C40(v18 & 1);
    *(v1 + 128) = 0;
  }
}

void sub_21D403BCC(int a1)
{
  v18 = a1;
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  v8 = *MEMORY[0x277D85200];
  v9 = *(v3 + 104);
  v9(v6, v8, v2, v4);
  v10 = v7;
  v11 = sub_21DBF9DAC();
  v12 = *(v3 + 8);
  v12(v6, v2);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + 104))
  {
    return;
  }

  *(v1 + 104) = 1;
  *v6 = v10;
  (v9)(v6, v8, v2);
  v13 = v10;
  v14 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v14 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_21D0D96F4(&unk_282EB8A50, sub_21D43A07C, &block_descriptor_431);
  sub_21D0D3810(&unk_282EB8A50, sub_21D43A044, &block_descriptor_420);
  sub_21D40F180();
  *(v1 + 128) = 1;
  *v6 = v13;
  (v9)(v6, v8, v2);
  v15 = v13;
  v16 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v16 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return;
  }

  *(v1 + 128) = 1;
  if (*(v1 + 104) == 1)
  {
    sub_21D407314(v18 & 1);
    *(v1 + 128) = 0;
  }
}

void sub_21D403E18(int a1)
{
  v18 = a1;
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  v8 = *MEMORY[0x277D85200];
  v9 = *(v3 + 104);
  v9(v6, v8, v2, v4);
  v10 = v7;
  v11 = sub_21DBF9DAC();
  v12 = *(v3 + 8);
  v12(v6, v2);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + 104))
  {
    return;
  }

  *(v1 + 104) = 1;
  *v6 = v10;
  (v9)(v6, v8, v2);
  v13 = v10;
  v14 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v14 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_21D0D96F4(&unk_282EB9220, sub_21D43A424, &block_descriptor_597);
  sub_21D0D3810(&unk_282EB9220, sub_21D43A3EC, &block_descriptor_586);
  sub_21D40F48C();
  *(v1 + 128) = 1;
  *v6 = v13;
  (v9)(v6, v8, v2);
  v15 = v13;
  v16 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v16 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return;
  }

  *(v1 + 128) = 1;
  if (*(v1 + 104) == 1)
  {
    sub_21D4079E8(v18 & 1);
    *(v1 + 128) = 0;
  }
}

void sub_21D404064(int a1)
{
  v18 = a1;
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  v8 = *MEMORY[0x277D85200];
  v9 = *(v3 + 104);
  v9(v6, v8, v2, v4);
  v10 = v7;
  v11 = sub_21DBF9DAC();
  v12 = *(v3 + 8);
  v12(v6, v2);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + 104))
  {
    return;
  }

  *(v1 + 104) = 1;
  *v6 = v10;
  (v9)(v6, v8, v2);
  v13 = v10;
  v14 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v14 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_21D0D96F4(&unk_282EBAD78, sub_21D43D4D4, &block_descriptor_1178);
  sub_21D0D3810(&unk_282EBAD78, sub_21D43D49C, &block_descriptor_1167);
  sub_21D40F798();
  *(v1 + 128) = 1;
  *v6 = v13;
  (v9)(v6, v8, v2);
  v15 = v13;
  v16 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v16 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return;
  }

  *(v1 + 128) = 1;
  if (*(v1 + 104) == 1)
  {
    sub_21D4080BC(v18 & 1);
    *(v1 + 128) = 0;
  }
}

void sub_21D4042B0(int a1)
{
  v18 = a1;
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  v8 = *MEMORY[0x277D85200];
  v9 = *(v3 + 104);
  v9(v6, v8, v2, v4);
  v10 = v7;
  v11 = sub_21DBF9DAC();
  v12 = *(v3 + 8);
  v12(v6, v2);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + 104))
  {
    return;
  }

  *(v1 + 104) = 1;
  *v6 = v10;
  (v9)(v6, v8, v2);
  v13 = v10;
  v14 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v14 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_21D0D96F4(&unk_282EB8668, sub_21D439EDC, &block_descriptor_348);
  sub_21D0D3810(&unk_282EB8668, sub_21D439EA4, &block_descriptor_337);
  sub_21D40FAA4();
  *(v1 + 128) = 1;
  *v6 = v13;
  (v9)(v6, v8, v2);
  v15 = v13;
  v16 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v16 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return;
  }

  *(v1 + 128) = 1;
  if (*(v1 + 104) == 1)
  {
    sub_21D408790(v18 & 1);
    *(v1 + 128) = 0;
  }
}

void sub_21D4044FC(int a1)
{
  v18 = a1;
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  v8 = *MEMORY[0x277D85200];
  v9 = *(v3 + 104);
  v9(v6, v8, v2, v4);
  v10 = v7;
  v11 = sub_21DBF9DAC();
  v12 = *(v3 + 8);
  v12(v6, v2);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + 104))
  {
    return;
  }

  *(v1 + 104) = 1;
  *v6 = v10;
  (v9)(v6, v8, v2);
  v13 = v10;
  v14 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v14 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_21D0D96F4(&unk_282EB9DD8, sub_21D43CF6C, &block_descriptor_846);
  sub_21D0D3810(&unk_282EB9DD8, sub_21D43CF34, &block_descriptor_835);
  sub_21D40FDB0();
  *(v1 + 128) = 1;
  *v6 = v13;
  (v9)(v6, v8, v2);
  v15 = v13;
  v16 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v16 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return;
  }

  *(v1 + 128) = 1;
  if (*(v1 + 104) == 1)
  {
    sub_21D408E64(v18 & 1);
    *(v1 + 128) = 0;
  }
}

void sub_21D404748(int a1)
{
  v18 = a1;
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  v8 = *MEMORY[0x277D85200];
  v9 = *(v3 + 104);
  v9(v6, v8, v2, v4);
  v10 = v7;
  v11 = sub_21DBF9DAC();
  v12 = *(v3 + 8);
  v12(v6, v2);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + 104))
  {
    return;
  }

  *(v1 + 104) = 1;
  *v6 = v10;
  (v9)(v6, v8, v2);
  v13 = v10;
  v14 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v14 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_21D0D96F4(&unk_282EBA5A8, sub_21D43D2AC, &block_descriptor_1012);
  sub_21D0D3810(&unk_282EBA5A8, sub_21D43D274, &block_descriptor_1001);
  sub_21D4100BC();
  *(v1 + 128) = 1;
  *v6 = v13;
  (v9)(v6, v8, v2);
  v15 = v13;
  v16 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v16 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return;
  }

  *(v1 + 128) = 1;
  if (*(v1 + 104) == 1)
  {
    sub_21D409538(v18 & 1);
    *(v1 + 128) = 0;
  }
}

void sub_21D404994(int a1)
{
  v18 = a1;
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  v8 = *MEMORY[0x277D85200];
  v9 = *(v3 + 104);
  v9(v6, v8, v2, v4);
  v10 = v7;
  v11 = sub_21DBF9DAC();
  v12 = *(v3 + 8);
  v12(v6, v2);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + 104))
  {
    return;
  }

  *(v1 + 104) = 1;
  *v6 = v10;
  (v9)(v6, v8, v2);
  v13 = v10;
  v14 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v14 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_21D0D96F4(&unk_282EBB160, sub_21D43D674, &block_descriptor_1261);
  sub_21D0D3810(&unk_282EBB160, sub_21D43D63C, &block_descriptor_1250);
  sub_21D4103C8();
  *(v1 + 128) = 1;
  *v6 = v13;
  (v9)(v6, v8, v2);
  v15 = v13;
  v16 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v16 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return;
  }

  *(v1 + 128) = 1;
  if (*(v1 + 104) == 1)
  {
    sub_21D409C0C(v18 & 1);
    *(v1 + 128) = 0;
  }
}

void sub_21D404BE0(int a1)
{
  v18 = a1;
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  v8 = *MEMORY[0x277D85200];
  v9 = *(v3 + 104);
  v9(v6, v8, v2, v4);
  v10 = v7;
  v11 = sub_21DBF9DAC();
  v12 = *(v3 + 8);
  v12(v6, v2);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + 104))
  {
    return;
  }

  *(v1 + 104) = 1;
  *v6 = v10;
  (v9)(v6, v8, v2);
  v13 = v10;
  v14 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v14 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_21D0D96F4(&unk_282EB9608, sub_21D43A5C4, &block_descriptor_680);
  sub_21D0D3810(&unk_282EB9608, sub_21D43A58C, &block_descriptor_669);
  sub_21D4106D4();
  *(v1 + 128) = 1;
  *v6 = v13;
  (v9)(v6, v8, v2);
  v15 = v13;
  v16 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v16 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return;
  }

  *(v1 + 128) = 1;
  if (*(v1 + 104) == 1)
  {
    sub_21D40A2E0(v18 & 1);
    *(v1 + 128) = 0;
  }
}

void sub_21D404E2C(int a1)
{
  v18 = a1;
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  v8 = *MEMORY[0x277D85200];
  v9 = *(v3 + 104);
  v9(v6, v8, v2, v4);
  v10 = v7;
  v11 = sub_21DBF9DAC();
  v12 = *(v3 + 8);
  v12(v6, v2);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + 104))
  {
    return;
  }

  *(v1 + 104) = 1;
  *v6 = v10;
  (v9)(v6, v8, v2);
  v13 = v10;
  v14 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v14 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_21D0D96F4(&unk_282EBBD18, sub_21D43DB48, &block_descriptor_1510);
  sub_21D0D3810(&unk_282EBBD18, sub_21D43DB10, &block_descriptor_1499);
  sub_21D4109E0();
  *(v1 + 128) = 1;
  *v6 = v13;
  (v9)(v6, v8, v2);
  v15 = v13;
  v16 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v16 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return;
  }

  *(v1 + 128) = 1;
  if (*(v1 + 104) == 1)
  {
    sub_21D40A9B4(v18 & 1);
    *(v1 + 128) = 0;
  }
}

void sub_21D405078(int a1)
{
  v18 = a1;
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  v8 = *MEMORY[0x277D85200];
  v9 = *(v3 + 104);
  v9(v6, v8, v2, v4);
  v10 = v7;
  v11 = sub_21DBF9DAC();
  v12 = *(v3 + 8);
  v12(v6, v2);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + 104))
  {
    return;
  }

  *(v1 + 104) = 1;
  *v6 = v10;
  (v9)(v6, v8, v2);
  v13 = v10;
  v14 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v14 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_21D0D96F4(&unk_282EB7AB0, sub_21D436DE4, &block_descriptor_94);
  sub_21D0D3810(&unk_282EB7AB0, sub_21D436DAC, &block_descriptor_83_1);
  sub_21D410CEC();
  *(v1 + 128) = 1;
  *v6 = v13;
  (v9)(v6, v8, v2);
  v15 = v13;
  v16 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v16 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return;
  }

  *(v1 + 128) = 1;
  if (*(v1 + 104) == 1)
  {
    sub_21D40B088(v18 & 1);
    *(v1 + 128) = 0;
  }
}

void sub_21D4052C4(int a1)
{
  v18 = a1;
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  v8 = *MEMORY[0x277D85200];
  v9 = *(v3 + 104);
  v9(v6, v8, v2, v4);
  v10 = v7;
  v11 = sub_21DBF9DAC();
  v12 = *(v3 + 8);
  v12(v6, v2);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + 104))
  {
    return;
  }

  *(v1 + 104) = 1;
  *v6 = v10;
  (v9)(v6, v8, v2);
  v13 = v10;
  v14 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v14 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_21D0D96F4(&unk_282EBB548, sub_21D43D814, &block_descriptor_1344);
  sub_21D0D3810(&unk_282EBB548, sub_21D43D7DC, &block_descriptor_1333);
  sub_21D410FF8();
  *(v1 + 128) = 1;
  *v6 = v13;
  (v9)(v6, v8, v2);
  v15 = v13;
  v16 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v16 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return;
  }

  *(v1 + 128) = 1;
  if (*(v1 + 104) == 1)
  {
    sub_21D40B75C(v18 & 1);
    *(v1 + 128) = 0;
  }
}

void sub_21D405510(int a1)
{
  v18 = a1;
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  v8 = *MEMORY[0x277D85200];
  v9 = *(v3 + 104);
  v9(v6, v8, v2, v4);
  v10 = v7;
  v11 = sub_21DBF9DAC();
  v12 = *(v3 + 8);
  v12(v6, v2);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + 104))
  {
    return;
  }

  *(v1 + 104) = 1;
  *v6 = v10;
  (v9)(v6, v8, v2);
  v13 = v10;
  v14 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v14 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_21D0D96F4(&unk_282EBC560, sub_21D43E044, &block_descriptor_1685);
  sub_21D0D3810(&unk_282EBC560, sub_21D43DFFC, &block_descriptor_1674);
  sub_21D411304();
  *(v1 + 128) = 1;
  *v6 = v13;
  (v9)(v6, v8, v2);
  v15 = v13;
  v16 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v16 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return;
  }

  *(v1 + 128) = 1;
  if (*(v1 + 104) == 1)
  {
    sub_21D40D170(v18 & 1, &unk_282EBC4C0, sub_21D43DEC4, &block_descriptor_1631);
    *(v1 + 128) = 0;
  }
}

void sub_21D405780(int a1)
{
  v18 = a1;
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  v8 = *MEMORY[0x277D85200];
  v9 = *(v3 + 104);
  v9(v6, v8, v2, v4);
  v10 = v7;
  v11 = sub_21DBF9DAC();
  v12 = *(v3 + 8);
  v12(v6, v2);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + 104))
  {
    return;
  }

  *(v1 + 104) = 1;
  *v6 = v10;
  (v9)(v6, v8, v2);
  v13 = v10;
  v14 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v14 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_21D0D96F4(&unk_282EB8E38, sub_21D43A2A8, &block_descriptor_514);
  sub_21D0D3810(&unk_282EB8E38, sub_21D43A270, &block_descriptor_503);
  sub_21D411610();
  *(v1 + 128) = 1;
  *v6 = v13;
  (v9)(v6, v8, v2);
  v15 = v13;
  v16 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v16 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return;
  }

  *(v1 + 128) = 1;
  if (*(v1 + 104) == 1)
  {
    sub_21D40BE30(v18 & 1);
    *(v1 + 128) = 0;
  }
}

void sub_21D4059CC(int a1)
{
  v18 = a1;
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  v8 = *MEMORY[0x277D85200];
  v9 = *(v3 + 104);
  v9(v6, v8, v2, v4);
  v10 = v7;
  v11 = sub_21DBF9DAC();
  v12 = *(v3 + 8);
  v12(v6, v2);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + 104))
  {
    return;
  }

  *(v1 + 104) = 1;
  *v6 = v10;
  (v9)(v6, v8, v2);
  v13 = v10;
  v14 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v14 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_21D0D96F4(&unk_282EB7E98, sub_21D439B0C, &block_descriptor_177);
  sub_21D0D3810(&unk_282EB7E98, sub_21D439AD4, &block_descriptor_166);
  sub_21D41191C();
  *(v1 + 128) = 1;
  *v6 = v13;
  (v9)(v6, v8, v2);
  v15 = v13;
  v16 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v16 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return;
  }

  *(v1 + 128) = 1;
  if (*(v1 + 104) == 1)
  {
    sub_21D40C3C8(v18 & 1);
    *(v1 + 128) = 0;
  }
}

void sub_21D405C18(int a1)
{
  v18 = a1;
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  v8 = *MEMORY[0x277D85200];
  v9 = *(v3 + 104);
  v9(v6, v8, v2, v4);
  v10 = v7;
  v11 = sub_21DBF9DAC();
  v12 = *(v3 + 8);
  v12(v6, v2);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + 104))
  {
    return;
  }

  *(v1 + 104) = 1;
  *v6 = v10;
  (v9)(v6, v8, v2);
  v13 = v10;
  v14 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v14 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_21D0D96F4(&unk_282EBC100, sub_21D43DD50, &block_descriptor_1593);
  sub_21D0D3810(&unk_282EBC100, sub_21D43DD18, &block_descriptor_1582);
  sub_21D411C28();
  *(v1 + 128) = 1;
  *v6 = v13;
  (v9)(v6, v8, v2);
  v15 = v13;
  v16 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v16 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return;
  }

  *(v1 + 128) = 1;
  if (*(v1 + 104) == 1)
  {
    sub_21D40CA9C(v18 & 1);
    *(v1 + 128) = 0;
  }
}

void sub_21D405E64(int a1)
{
  v18 = a1;
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  v8 = *MEMORY[0x277D85200];
  v9 = *(v3 + 104);
  v9(v6, v8, v2, v4);
  v10 = v7;
  v11 = sub_21DBF9DAC();
  v12 = *(v3 + 8);
  v12(v6, v2);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + 104))
  {
    return;
  }

  *(v1 + 104) = 1;
  *v6 = v10;
  (v9)(v6, v8, v2);
  v13 = v10;
  v14 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v14 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_21D0D96F4(&unk_282EBB930, sub_21D43D9CC, &block_descriptor_1427);
  sub_21D0D3810(&unk_282EBB930, sub_21D43D984, &block_descriptor_1416);
  sub_21D411F34();
  *(v1 + 128) = 1;
  *v6 = v13;
  (v9)(v6, v8, v2);
  v15 = v13;
  v16 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v16 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return;
  }

  *(v1 + 128) = 1;
  if (*(v1 + 104) == 1)
  {
    sub_21D40D170(v18 & 1, &unk_282EBB890, sub_21D43D8AC, &block_descriptor_1373);
    *(v1 + 128) = 0;
  }
}

void sub_21D4060D4(int a1)
{
  v18 = a1;
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  v8 = *MEMORY[0x277D85200];
  v9 = *(v3 + 104);
  v9(v6, v8, v2, v4);
  v10 = v7;
  v11 = sub_21DBF9DAC();
  v12 = *(v3 + 8);
  v12(v6, v2);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + 104))
  {
    return;
  }

  *(v1 + 104) = 1;
  *v6 = v10;
  (v9)(v6, v8, v2);
  v13 = v10;
  v14 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v14 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_21D0D96F4(&unk_282EBA1C0, sub_21D43D10C, &block_descriptor_929);
  sub_21D0D3810(&unk_282EBA1C0, sub_21D43D0D4, &block_descriptor_918);
  sub_21D412240();
  *(v1 + 128) = 1;
  *v6 = v13;
  (v9)(v6, v8, v2);
  v15 = v13;
  v16 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v16 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return;
  }

  *(v1 + 128) = 1;
  if (*(v1 + 104) == 1)
  {
    sub_21D40DDC0(v18 & 1);
    *(v1 + 128) = 0;
  }
}

void sub_21D406320(int a1)
{
  v18 = a1;
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  v8 = *MEMORY[0x277D85200];
  v9 = *(v3 + 104);
  v9(v6, v8, v2, v4);
  v10 = v7;
  v11 = sub_21DBF9DAC();
  v12 = *(v3 + 8);
  v12(v6, v2);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + 104))
  {
    return;
  }

  *(v1 + 104) = 1;
  *v6 = v10;
  (v9)(v6, v8, v2);
  v13 = v10;
  v14 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v14 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_21D0D96F4(&unk_282EB99F0, sub_21D43CDCC, &block_descriptor_763);
  sub_21D0D3810(&unk_282EB99F0, sub_21D43CD94, &block_descriptor_752);
  sub_21D41254C();
  *(v1 + 128) = 1;
  *v6 = v13;
  (v9)(v6, v8, v2);
  v15 = v13;
  v16 = sub_21DBF9DAC();
  v12(v6, v2);
  if ((v16 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return;
  }

  *(v1 + 128) = 1;
  if (*(v1 + 104) == 1)
  {
    sub_21D40E494(v18 & 1);
    *(v1 + 128) = 0;
  }
}

void sub_21D40656C(int a1)
{
  v2 = v1;
  v48 = *v1;
  v53 = sub_21DBF9D2C();
  v4 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = sub_21DBF9D5C();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585D0);
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v42[-v11];
  v13 = sub_21DBF9D8C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = v2[2];
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13, v15);
  v19 = v18;
  LOBYTE(v18) = sub_21DBF9DAC();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v46 = v4;
  v20 = *(*v2 + 208);
  swift_beginAccess();
  v54 = v12;
  sub_21D0D3954(v2 + v20, v12, &qword_27CE585D0);
  swift_beginAccess();
  v21 = v2[5];
  v22 = 3;
  if (a1)
  {
    v22 = 4;
  }

  v23 = v2[v22];
  v24 = swift_allocObject();
  *(v24 + 16) = 1;
  if ((a1 & 1) == 0)
  {
    v26 = *(v2 + *(*v2 + 216));

    v27 = v23;
    os_unfair_lock_lock(v26);
    v28 = *(*v2 + 224);
    v29 = *(v2 + v28);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (!v30)
    {
      *(v24 + 16) = v31;
      *(v2 + v28) = v31;
      os_unfair_lock_unlock(v26);
      if (*(v24 + 16) > 1)
      {
        sub_21D0CF7E0(v54, &qword_27CE585D0);

        return;
      }

      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return;
  }

  v25 = v23;
LABEL_9:
  v44 = v21;
  v43 = a1;
  v45 = v23;
  v32 = v2[9];
  if (v32)
  {

    v32(v33);
    sub_21D0D0E88(v32);
  }

  sub_21D0D3954(v54, v9, &qword_27CE585D0);
  v34 = (*(v47 + 80) + 40) & ~*(v47 + 80);
  v35 = (v8 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = v24;
  *(v36 + 24) = v43 & 1;
  *(v36 + 32) = v44;
  sub_21D0D523C(v9, v36 + v34, &qword_27CE585D0);
  *(v36 + v35) = v2;
  *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v48;
  aBlock[4] = sub_21D43E08C;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_1708;
  v37 = _Block_copy(aBlock);

  v38 = v49;
  sub_21DBF9D4C();
  v55 = MEMORY[0x277D84F90];
  sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
  v39 = v51;
  v40 = v53;
  sub_21DBFBCBC();
  v41 = v45;
  MEMORY[0x223D438F0](0, v38, v39, v37);

  _Block_release(v37);

  (*(v46 + 8))(v39, v40);
  (*(v50 + 8))(v38, v52);
  sub_21D0CF7E0(v54, &qword_27CE585D0);
}

void sub_21D406C40(int a1)
{
  v2 = v1;
  v48 = *v1;
  v53 = sub_21DBF9D2C();
  v4 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = sub_21DBF9D5C();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C208);
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v42[-v11];
  v13 = sub_21DBF9D8C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = v2[2];
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13, v15);
  v19 = v18;
  LOBYTE(v18) = sub_21DBF9DAC();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v46 = v4;
  v20 = *(*v2 + 208);
  swift_beginAccess();
  v54 = v12;
  sub_21D0D3954(v2 + v20, v12, &qword_27CE5C208);
  swift_beginAccess();
  v21 = v2[5];
  v22 = 3;
  if (a1)
  {
    v22 = 4;
  }

  v23 = v2[v22];
  v24 = swift_allocObject();
  *(v24 + 16) = 1;
  if ((a1 & 1) == 0)
  {
    v26 = *(v2 + *(*v2 + 216));

    v27 = v23;
    os_unfair_lock_lock(v26);
    v28 = *(*v2 + 224);
    v29 = *(v2 + v28);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (!v30)
    {
      *(v24 + 16) = v31;
      *(v2 + v28) = v31;
      os_unfair_lock_unlock(v26);
      if (*(v24 + 16) > 1)
      {
        sub_21D0CF7E0(v54, &qword_27CE5C208);

        return;
      }

      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return;
  }

  v25 = v23;
LABEL_9:
  v44 = v21;
  v43 = a1;
  v45 = v23;
  v32 = v2[9];
  if (v32)
  {

    v32(v33);
    sub_21D0D0E88(v32);
  }

  sub_21D0D3954(v54, v9, &qword_27CE5C208);
  v34 = (*(v47 + 80) + 40) & ~*(v47 + 80);
  v35 = (v8 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = v24;
  *(v36 + 24) = v43 & 1;
  *(v36 + 32) = v44;
  sub_21D0D523C(v9, v36 + v34, &qword_27CE5C208);
  *(v36 + v35) = v2;
  *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v48;
  aBlock[4] = sub_21D439C08;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_205;
  v37 = _Block_copy(aBlock);

  v38 = v49;
  sub_21DBF9D4C();
  v55 = MEMORY[0x277D84F90];
  sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
  v39 = v51;
  v40 = v53;
  sub_21DBFBCBC();
  v41 = v45;
  MEMORY[0x223D438F0](0, v38, v39, v37);

  _Block_release(v37);

  (*(v46 + 8))(v39, v40);
  (*(v50 + 8))(v38, v52);
  sub_21D0CF7E0(v54, &qword_27CE5C208);
}

void sub_21D407314(int a1)
{
  v2 = v1;
  v48 = *v1;
  v53 = sub_21DBF9D2C();
  v4 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = sub_21DBF9D5C();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C250);
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v42[-v11];
  v13 = sub_21DBF9D8C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = v2[2];
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13, v15);
  v19 = v18;
  LOBYTE(v18) = sub_21DBF9DAC();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v46 = v4;
  v20 = *(*v2 + 208);
  swift_beginAccess();
  v54 = v12;
  sub_21D0D3954(v2 + v20, v12, &qword_27CE5C250);
  swift_beginAccess();
  v21 = v2[5];
  v22 = 3;
  if (a1)
  {
    v22 = 4;
  }

  v23 = v2[v22];
  v24 = swift_allocObject();
  *(v24 + 16) = 1;
  if ((a1 & 1) == 0)
  {
    v26 = *(v2 + *(*v2 + 216));

    v27 = v23;
    os_unfair_lock_lock(v26);
    v28 = *(*v2 + 224);
    v29 = *(v2 + v28);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (!v30)
    {
      *(v24 + 16) = v31;
      *(v2 + v28) = v31;
      os_unfair_lock_unlock(v26);
      if (*(v24 + 16) > 1)
      {
        sub_21D0CF7E0(v54, &qword_27CE5C250);

        return;
      }

      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return;
  }

  v25 = v23;
LABEL_9:
  v44 = v21;
  v43 = a1;
  v45 = v23;
  v32 = v2[9];
  if (v32)
  {

    v32(v33);
    sub_21D0D0E88(v32);
  }

  sub_21D0D3954(v54, v9, &qword_27CE5C250);
  v34 = (*(v47 + 80) + 40) & ~*(v47 + 80);
  v35 = (v8 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = v24;
  *(v36 + 24) = v43 & 1;
  *(v36 + 32) = v44;
  sub_21D0D523C(v9, v36 + v34, &qword_27CE5C250);
  *(v36 + v35) = v2;
  *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v48;
  aBlock[4] = sub_21D439F60;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_377;
  v37 = _Block_copy(aBlock);

  v38 = v49;
  sub_21DBF9D4C();
  v55 = MEMORY[0x277D84F90];
  sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
  v39 = v51;
  v40 = v53;
  sub_21DBFBCBC();
  v41 = v45;
  MEMORY[0x223D438F0](0, v38, v39, v37);

  _Block_release(v37);

  (*(v46 + 8))(v39, v40);
  (*(v50 + 8))(v38, v52);
  sub_21D0CF7E0(v54, &qword_27CE5C250);
}

void sub_21D4079E8(int a1)
{
  v2 = v1;
  v48 = *v1;
  v53 = sub_21DBF9D2C();
  v4 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = sub_21DBF9D5C();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C268);
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v42[-v11];
  v13 = sub_21DBF9D8C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = v2[2];
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13, v15);
  v19 = v18;
  LOBYTE(v18) = sub_21DBF9DAC();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v46 = v4;
  v20 = *(*v2 + 208);
  swift_beginAccess();
  v54 = v12;
  sub_21D0D3954(v2 + v20, v12, &qword_27CE5C268);
  swift_beginAccess();
  v21 = v2[5];
  v22 = 3;
  if (a1)
  {
    v22 = 4;
  }

  v23 = v2[v22];
  v24 = swift_allocObject();
  *(v24 + 16) = 1;
  if ((a1 & 1) == 0)
  {
    v26 = *(v2 + *(*v2 + 216));

    v27 = v23;
    os_unfair_lock_lock(v26);
    v28 = *(*v2 + 224);
    v29 = *(v2 + v28);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (!v30)
    {
      *(v24 + 16) = v31;
      *(v2 + v28) = v31;
      os_unfair_lock_unlock(v26);
      if (*(v24 + 16) > 1)
      {
        sub_21D0CF7E0(v54, &qword_27CE5C268);

        return;
      }

      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return;
  }

  v25 = v23;
LABEL_9:
  v44 = v21;
  v43 = a1;
  v45 = v23;
  v32 = v2[9];
  if (v32)
  {

    v32(v33);
    sub_21D0D0E88(v32);
  }

  sub_21D0D3954(v54, v9, &qword_27CE5C268);
  v34 = (*(v47 + 80) + 40) & ~*(v47 + 80);
  v35 = (v8 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = v24;
  *(v36 + 24) = v43 & 1;
  *(v36 + 32) = v44;
  sub_21D0D523C(v9, v36 + v34, &qword_27CE5C268);
  *(v36 + v35) = v2;
  *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v48;
  aBlock[4] = sub_21D43A2F0;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_537;
  v37 = _Block_copy(aBlock);

  v38 = v49;
  sub_21DBF9D4C();
  v55 = MEMORY[0x277D84F90];
  sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
  v39 = v51;
  v40 = v53;
  sub_21DBFBCBC();
  v41 = v45;
  MEMORY[0x223D438F0](0, v38, v39, v37);

  _Block_release(v37);

  (*(v46 + 8))(v39, v40);
  (*(v50 + 8))(v38, v52);
  sub_21D0CF7E0(v54, &qword_27CE5C268);
}

void sub_21D4080BC(int a1)
{
  v2 = v1;
  v48 = *v1;
  v53 = sub_21DBF9D2C();
  v4 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = sub_21DBF9D5C();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C340);
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v42[-v11];
  v13 = sub_21DBF9D8C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = v2[2];
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13, v15);
  v19 = v18;
  LOBYTE(v18) = sub_21DBF9DAC();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v46 = v4;
  v20 = *(*v2 + 208);
  swift_beginAccess();
  v54 = v12;
  sub_21D0D3954(v2 + v20, v12, &qword_27CE5C340);
  swift_beginAccess();
  v21 = v2[5];
  v22 = 3;
  if (a1)
  {
    v22 = 4;
  }

  v23 = v2[v22];
  v24 = swift_allocObject();
  *(v24 + 16) = 1;
  if ((a1 & 1) == 0)
  {
    v26 = *(v2 + *(*v2 + 216));

    v27 = v23;
    os_unfair_lock_lock(v26);
    v28 = *(*v2 + 224);
    v29 = *(v2 + v28);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (!v30)
    {
      *(v24 + 16) = v31;
      *(v2 + v28) = v31;
      os_unfair_lock_unlock(v26);
      if (*(v24 + 16) > 1)
      {
        sub_21D0CF7E0(v54, &qword_27CE5C340);

        return;
      }

      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return;
  }

  v25 = v23;
LABEL_9:
  v44 = v21;
  v43 = a1;
  v45 = v23;
  v32 = v2[9];
  if (v32)
  {

    v32(v33);
    sub_21D0D0E88(v32);
  }

  sub_21D0D3954(v54, v9, &qword_27CE5C340);
  v34 = (*(v47 + 80) + 40) & ~*(v47 + 80);
  v35 = (v8 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = v24;
  *(v36 + 24) = v43 & 1;
  *(v36 + 32) = v44;
  sub_21D0D523C(v9, v36 + v34, &qword_27CE5C340);
  *(v36 + v35) = v2;
  *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v48;
  aBlock[4] = sub_21D43D3A0;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_1118;
  v37 = _Block_copy(aBlock);

  v38 = v49;
  sub_21DBF9D4C();
  v55 = MEMORY[0x277D84F90];
  sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
  v39 = v51;
  v40 = v53;
  sub_21DBFBCBC();
  v41 = v45;
  MEMORY[0x223D438F0](0, v38, v39, v37);

  _Block_release(v37);

  (*(v46 + 8))(v39, v40);
  (*(v50 + 8))(v38, v52);
  sub_21D0CF7E0(v54, &qword_27CE5C340);
}

void sub_21D408790(int a1)
{
  v2 = v1;
  v48 = *v1;
  v53 = sub_21DBF9D2C();
  v4 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = sub_21DBF9D5C();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C220);
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v42[-v11];
  v13 = sub_21DBF9D8C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = v2[2];
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13, v15);
  v19 = v18;
  LOBYTE(v18) = sub_21DBF9DAC();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v46 = v4;
  v20 = *(*v2 + 208);
  swift_beginAccess();
  v54 = v12;
  sub_21D0D3954(v2 + v20, v12, &qword_27CE5C220);
  swift_beginAccess();
  v21 = v2[5];
  v22 = 3;
  if (a1)
  {
    v22 = 4;
  }

  v23 = v2[v22];
  v24 = swift_allocObject();
  *(v24 + 16) = 1;
  if ((a1 & 1) == 0)
  {
    v26 = *(v2 + *(*v2 + 216));

    v27 = v23;
    os_unfair_lock_lock(v26);
    v28 = *(*v2 + 224);
    v29 = *(v2 + v28);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (!v30)
    {
      *(v24 + 16) = v31;
      *(v2 + v28) = v31;
      os_unfair_lock_unlock(v26);
      if (*(v24 + 16) > 1)
      {
        sub_21D0CF7E0(v54, &qword_27CE5C220);

        return;
      }

      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return;
  }

  v25 = v23;
LABEL_9:
  v44 = v21;
  v43 = a1;
  v45 = v23;
  v32 = v2[9];
  if (v32)
  {

    v32(v33);
    sub_21D0D0E88(v32);
  }

  sub_21D0D3954(v54, v9, &qword_27CE5C220);
  v34 = (*(v47 + 80) + 40) & ~*(v47 + 80);
  v35 = (v8 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = v24;
  *(v36 + 24) = v43 & 1;
  *(v36 + 32) = v44;
  sub_21D0D523C(v9, v36 + v34, &qword_27CE5C220);
  *(v36 + v35) = v2;
  *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v48;
  aBlock[4] = sub_21D439DA8;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_288;
  v37 = _Block_copy(aBlock);

  v38 = v49;
  sub_21DBF9D4C();
  v55 = MEMORY[0x277D84F90];
  sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
  v39 = v51;
  v40 = v53;
  sub_21DBFBCBC();
  v41 = v45;
  MEMORY[0x223D438F0](0, v38, v39, v37);

  _Block_release(v37);

  (*(v46 + 8))(v39, v40);
  (*(v50 + 8))(v38, v52);
  sub_21D0CF7E0(v54, &qword_27CE5C220);
}

void sub_21D408E64(int a1)
{
  v2 = v1;
  v48 = *v1;
  v53 = sub_21DBF9D2C();
  v4 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = sub_21DBF9D5C();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2C0);
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v42[-v11];
  v13 = sub_21DBF9D8C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = v2[2];
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13, v15);
  v19 = v18;
  LOBYTE(v18) = sub_21DBF9DAC();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v46 = v4;
  v20 = *(*v2 + 208);
  swift_beginAccess();
  v54 = v12;
  sub_21D0D3954(v2 + v20, v12, &qword_27CE5C2C0);
  swift_beginAccess();
  v21 = v2[5];
  v22 = 3;
  if (a1)
  {
    v22 = 4;
  }

  v23 = v2[v22];
  v24 = swift_allocObject();
  *(v24 + 16) = 1;
  if ((a1 & 1) == 0)
  {
    v26 = *(v2 + *(*v2 + 216));

    v27 = v23;
    os_unfair_lock_lock(v26);
    v28 = *(*v2 + 224);
    v29 = *(v2 + v28);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (!v30)
    {
      *(v24 + 16) = v31;
      *(v2 + v28) = v31;
      os_unfair_lock_unlock(v26);
      if (*(v24 + 16) > 1)
      {
        sub_21D0CF7E0(v54, &qword_27CE5C2C0);

        return;
      }

      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return;
  }

  v25 = v23;
LABEL_9:
  v44 = v21;
  v43 = a1;
  v45 = v23;
  v32 = v2[9];
  if (v32)
  {

    v32(v33);
    sub_21D0D0E88(v32);
  }

  sub_21D0D3954(v54, v9, &qword_27CE5C2C0);
  v34 = (*(v47 + 80) + 40) & ~*(v47 + 80);
  v35 = (v8 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = v24;
  *(v36 + 24) = v43 & 1;
  *(v36 + 32) = v44;
  sub_21D0D523C(v9, v36 + v34, &qword_27CE5C2C0);
  *(v36 + v35) = v2;
  *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v48;
  aBlock[4] = sub_21D43CE38;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_786;
  v37 = _Block_copy(aBlock);

  v38 = v49;
  sub_21DBF9D4C();
  v55 = MEMORY[0x277D84F90];
  sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
  v39 = v51;
  v40 = v53;
  sub_21DBFBCBC();
  v41 = v45;
  MEMORY[0x223D438F0](0, v38, v39, v37);

  _Block_release(v37);

  (*(v46 + 8))(v39, v40);
  (*(v50 + 8))(v38, v52);
  sub_21D0CF7E0(v54, &qword_27CE5C2C0);
}

void sub_21D409538(int a1)
{
  v2 = v1;
  v48 = *v1;
  v53 = sub_21DBF9D2C();
  v4 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = sub_21DBF9D5C();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C310);
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v42[-v11];
  v13 = sub_21DBF9D8C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = v2[2];
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13, v15);
  v19 = v18;
  LOBYTE(v18) = sub_21DBF9DAC();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v46 = v4;
  v20 = *(*v2 + 208);
  swift_beginAccess();
  v54 = v12;
  sub_21D0D3954(v2 + v20, v12, &qword_27CE5C310);
  swift_beginAccess();
  v21 = v2[5];
  v22 = 3;
  if (a1)
  {
    v22 = 4;
  }

  v23 = v2[v22];
  v24 = swift_allocObject();
  *(v24 + 16) = 1;
  if ((a1 & 1) == 0)
  {
    v26 = *(v2 + *(*v2 + 216));

    v27 = v23;
    os_unfair_lock_lock(v26);
    v28 = *(*v2 + 224);
    v29 = *(v2 + v28);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (!v30)
    {
      *(v24 + 16) = v31;
      *(v2 + v28) = v31;
      os_unfair_lock_unlock(v26);
      if (*(v24 + 16) > 1)
      {
        sub_21D0CF7E0(v54, &qword_27CE5C310);

        return;
      }

      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return;
  }

  v25 = v23;
LABEL_9:
  v44 = v21;
  v43 = a1;
  v45 = v23;
  v32 = v2[9];
  if (v32)
  {

    v32(v33);
    sub_21D0D0E88(v32);
  }

  sub_21D0D3954(v54, v9, &qword_27CE5C310);
  v34 = (*(v47 + 80) + 40) & ~*(v47 + 80);
  v35 = (v8 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = v24;
  *(v36 + 24) = v43 & 1;
  *(v36 + 32) = v44;
  sub_21D0D523C(v9, v36 + v34, &qword_27CE5C310);
  *(v36 + v35) = v2;
  *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v48;
  aBlock[4] = sub_21D43D178;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_952;
  v37 = _Block_copy(aBlock);

  v38 = v49;
  sub_21DBF9D4C();
  v55 = MEMORY[0x277D84F90];
  sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
  v39 = v51;
  v40 = v53;
  sub_21DBFBCBC();
  v41 = v45;
  MEMORY[0x223D438F0](0, v38, v39, v37);

  _Block_release(v37);

  (*(v46 + 8))(v39, v40);
  (*(v50 + 8))(v38, v52);
  sub_21D0CF7E0(v54, &qword_27CE5C310);
}

void sub_21D409C0C(int a1)
{
  v2 = v1;
  v48 = *v1;
  v53 = sub_21DBF9D2C();
  v4 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = sub_21DBF9D5C();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C370);
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v42[-v11];
  v13 = sub_21DBF9D8C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = v2[2];
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13, v15);
  v19 = v18;
  LOBYTE(v18) = sub_21DBF9DAC();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v46 = v4;
  v20 = *(*v2 + 208);
  swift_beginAccess();
  v54 = v12;
  sub_21D0D3954(v2 + v20, v12, &qword_27CE5C370);
  swift_beginAccess();
  v21 = v2[5];
  v22 = 3;
  if (a1)
  {
    v22 = 4;
  }

  v23 = v2[v22];
  v24 = swift_allocObject();
  *(v24 + 16) = 1;
  if ((a1 & 1) == 0)
  {
    v26 = *(v2 + *(*v2 + 216));

    v27 = v23;
    os_unfair_lock_lock(v26);
    v28 = *(*v2 + 224);
    v29 = *(v2 + v28);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (!v30)
    {
      *(v24 + 16) = v31;
      *(v2 + v28) = v31;
      os_unfair_lock_unlock(v26);
      if (*(v24 + 16) > 1)
      {
        sub_21D0CF7E0(v54, &qword_27CE5C370);

        return;
      }

      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return;
  }

  v25 = v23;
LABEL_9:
  v44 = v21;
  v43 = a1;
  v45 = v23;
  v32 = v2[9];
  if (v32)
  {

    v32(v33);
    sub_21D0D0E88(v32);
  }

  sub_21D0D3954(v54, v9, &qword_27CE5C370);
  v34 = (*(v47 + 80) + 40) & ~*(v47 + 80);
  v35 = (v8 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = v24;
  *(v36 + 24) = v43 & 1;
  *(v36 + 32) = v44;
  sub_21D0D523C(v9, v36 + v34, &qword_27CE5C370);
  *(v36 + v35) = v2;
  *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v48;
  aBlock[4] = sub_21D43D558;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_1207;
  v37 = _Block_copy(aBlock);

  v38 = v49;
  sub_21DBF9D4C();
  v55 = MEMORY[0x277D84F90];
  sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
  v39 = v51;
  v40 = v53;
  sub_21DBFBCBC();
  v41 = v45;
  MEMORY[0x223D438F0](0, v38, v39, v37);

  _Block_release(v37);

  (*(v46 + 8))(v39, v40);
  (*(v50 + 8))(v38, v52);
  sub_21D0CF7E0(v54, &qword_27CE5C370);
}

void sub_21D40A2E0(int a1)
{
  v2 = v1;
  v48 = *v1;
  v53 = sub_21DBF9D2C();
  v4 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = sub_21DBF9D5C();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C280);
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v42[-v11];
  v13 = sub_21DBF9D8C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = v2[2];
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13, v15);
  v19 = v18;
  LOBYTE(v18) = sub_21DBF9DAC();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v46 = v4;
  v20 = *(*v2 + 208);
  swift_beginAccess();
  v54 = v12;
  sub_21D0D3954(v2 + v20, v12, &qword_27CE5C280);
  swift_beginAccess();
  v21 = v2[5];
  v22 = 3;
  if (a1)
  {
    v22 = 4;
  }

  v23 = v2[v22];
  v24 = swift_allocObject();
  *(v24 + 16) = 1;
  if ((a1 & 1) == 0)
  {
    v26 = *(v2 + *(*v2 + 216));

    v27 = v23;
    os_unfair_lock_lock(v26);
    v28 = *(*v2 + 224);
    v29 = *(v2 + v28);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (!v30)
    {
      *(v24 + 16) = v31;
      *(v2 + v28) = v31;
      os_unfair_lock_unlock(v26);
      if (*(v24 + 16) > 1)
      {
        sub_21D0CF7E0(v54, &qword_27CE5C280);

        return;
      }

      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return;
  }

  v25 = v23;
LABEL_9:
  v44 = v21;
  v43 = a1;
  v45 = v23;
  v32 = v2[9];
  if (v32)
  {

    v32(v33);
    sub_21D0D0E88(v32);
  }

  sub_21D0D3954(v54, v9, &qword_27CE5C280);
  v34 = (*(v47 + 80) + 40) & ~*(v47 + 80);
  v35 = (v8 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = v24;
  *(v36 + 24) = v43 & 1;
  *(v36 + 32) = v44;
  sub_21D0D523C(v9, v36 + v34, &qword_27CE5C280);
  *(v36 + v35) = v2;
  *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v48;
  aBlock[4] = sub_21D43A4A8;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_626;
  v37 = _Block_copy(aBlock);

  v38 = v49;
  sub_21DBF9D4C();
  v55 = MEMORY[0x277D84F90];
  sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
  v39 = v51;
  v40 = v53;
  sub_21DBFBCBC();
  v41 = v45;
  MEMORY[0x223D438F0](0, v38, v39, v37);

  _Block_release(v37);

  (*(v46 + 8))(v39, v40);
  (*(v50 + 8))(v38, v52);
  sub_21D0CF7E0(v54, &qword_27CE5C280);
}

void sub_21D40A9B4(int a1)
{
  v2 = v1;
  v48 = *v1;
  v53 = sub_21DBF9D2C();
  v4 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = sub_21DBF9D5C();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3A0);
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v42[-v11];
  v13 = sub_21DBF9D8C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = v2[2];
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13, v15);
  v19 = v18;
  LOBYTE(v18) = sub_21DBF9DAC();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v46 = v4;
  v20 = *(*v2 + 208);
  swift_beginAccess();
  v54 = v12;
  sub_21D0D3954(v2 + v20, v12, &qword_27CE5C3A0);
  swift_beginAccess();
  v21 = v2[5];
  v22 = 3;
  if (a1)
  {
    v22 = 4;
  }

  v23 = v2[v22];
  v24 = swift_allocObject();
  *(v24 + 16) = 1;
  if ((a1 & 1) == 0)
  {
    v26 = *(v2 + *(*v2 + 216));

    v27 = v23;
    os_unfair_lock_lock(v26);
    v28 = *(*v2 + 224);
    v29 = *(v2 + v28);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (!v30)
    {
      *(v24 + 16) = v31;
      *(v2 + v28) = v31;
      os_unfair_lock_unlock(v26);
      if (*(v24 + 16) > 1)
      {
        sub_21D0CF7E0(v54, &qword_27CE5C3A0);

        return;
      }

      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return;
  }

  v25 = v23;
LABEL_9:
  v44 = v21;
  v43 = a1;
  v45 = v23;
  v32 = v2[9];
  if (v32)
  {

    v32(v33);
    sub_21D0D0E88(v32);
  }

  sub_21D0D3954(v54, v9, &qword_27CE5C3A0);
  v34 = (*(v47 + 80) + 40) & ~*(v47 + 80);
  v35 = (v8 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = v24;
  *(v36 + 24) = v43 & 1;
  *(v36 + 32) = v44;
  sub_21D0D523C(v9, v36 + v34, &qword_27CE5C3A0);
  *(v36 + v35) = v2;
  *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v48;
  aBlock[4] = sub_21D43DA14;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_1450;
  v37 = _Block_copy(aBlock);

  v38 = v49;
  sub_21DBF9D4C();
  v55 = MEMORY[0x277D84F90];
  sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
  v39 = v51;
  v40 = v53;
  sub_21DBFBCBC();
  v41 = v45;
  MEMORY[0x223D438F0](0, v38, v39, v37);

  _Block_release(v37);

  (*(v46 + 8))(v39, v40);
  (*(v50 + 8))(v38, v52);
  sub_21D0CF7E0(v54, &qword_27CE5C3A0);
}

void sub_21D40B088(int a1)
{
  v2 = v1;
  v48 = *v1;
  v53 = sub_21DBF9D2C();
  v4 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = sub_21DBF9D5C();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1B8);
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v42[-v11];
  v13 = sub_21DBF9D8C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = v2[2];
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13, v15);
  v19 = v18;
  LOBYTE(v18) = sub_21DBF9DAC();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v46 = v4;
  v20 = *(*v2 + 208);
  swift_beginAccess();
  v54 = v12;
  sub_21D0D3954(v2 + v20, v12, &qword_27CE5C1B8);
  swift_beginAccess();
  v21 = v2[5];
  v22 = 3;
  if (a1)
  {
    v22 = 4;
  }

  v23 = v2[v22];
  v24 = swift_allocObject();
  *(v24 + 16) = 1;
  if ((a1 & 1) == 0)
  {
    v26 = *(v2 + *(*v2 + 216));

    v27 = v23;
    os_unfair_lock_lock(v26);
    v28 = *(*v2 + 224);
    v29 = *(v2 + v28);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (!v30)
    {
      *(v24 + 16) = v31;
      *(v2 + v28) = v31;
      os_unfair_lock_unlock(v26);
      if (*(v24 + 16) > 1)
      {
        sub_21D0CF7E0(v54, &qword_27CE5C1B8);

        return;
      }

      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return;
  }

  v25 = v23;
LABEL_9:
  v44 = v21;
  v43 = a1;
  v45 = v23;
  v32 = v2[9];
  if (v32)
  {

    v32(v33);
    sub_21D0D0E88(v32);
  }

  sub_21D0D3954(v54, v9, &qword_27CE5C1B8);
  v34 = (*(v47 + 80) + 40) & ~*(v47 + 80);
  v35 = (v8 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = v24;
  *(v36 + 24) = v43 & 1;
  *(v36 + 32) = v44;
  sub_21D0D523C(v9, v36 + v34, &qword_27CE5C1B8);
  *(v36 + v35) = v2;
  *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v48;
  aBlock[4] = sub_21D42D75C;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_39;
  v37 = _Block_copy(aBlock);

  v38 = v49;
  sub_21DBF9D4C();
  v55 = MEMORY[0x277D84F90];
  sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
  v39 = v51;
  v40 = v53;
  sub_21DBFBCBC();
  v41 = v45;
  MEMORY[0x223D438F0](0, v38, v39, v37);

  _Block_release(v37);

  (*(v46 + 8))(v39, v40);
  (*(v50 + 8))(v38, v52);
  sub_21D0CF7E0(v54, &qword_27CE5C1B8);
}

void sub_21D40B75C(int a1)
{
  v2 = v1;
  v48 = *v1;
  v53 = sub_21DBF9D2C();
  v4 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = sub_21DBF9D5C();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C298);
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v42[-v11];
  v13 = sub_21DBF9D8C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = v2[2];
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13, v15);
  v19 = v18;
  LOBYTE(v18) = sub_21DBF9DAC();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v46 = v4;
  v20 = *(*v2 + 208);
  swift_beginAccess();
  v54 = v12;
  sub_21D0D3954(v2 + v20, v12, &qword_27CE5C298);
  swift_beginAccess();
  v21 = v2[5];
  v22 = 3;
  if (a1)
  {
    v22 = 4;
  }

  v23 = v2[v22];
  v24 = swift_allocObject();
  *(v24 + 16) = 1;
  if ((a1 & 1) == 0)
  {
    v26 = *(v2 + *(*v2 + 216));

    v27 = v23;
    os_unfair_lock_lock(v26);
    v28 = *(*v2 + 224);
    v29 = *(v2 + v28);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (!v30)
    {
      *(v24 + 16) = v31;
      *(v2 + v28) = v31;
      os_unfair_lock_unlock(v26);
      if (*(v24 + 16) > 1)
      {
        sub_21D0CF7E0(v54, &qword_27CE5C298);

        return;
      }

      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return;
  }

  v25 = v23;
LABEL_9:
  v44 = v21;
  v43 = a1;
  v45 = v23;
  v32 = v2[9];
  if (v32)
  {

    v32(v33);
    sub_21D0D0E88(v32);
  }

  sub_21D0D3954(v54, v9, &qword_27CE5C298);
  v34 = (*(v47 + 80) + 40) & ~*(v47 + 80);
  v35 = (v8 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = v24;
  *(v36 + 24) = v43 & 1;
  *(v36 + 32) = v44;
  sub_21D0D523C(v9, v36 + v34, &qword_27CE5C298);
  *(v36 + v35) = v2;
  *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v48;
  aBlock[4] = sub_21D43D6E0;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_1284;
  v37 = _Block_copy(aBlock);

  v38 = v49;
  sub_21DBF9D4C();
  v55 = MEMORY[0x277D84F90];
  sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
  v39 = v51;
  v40 = v53;
  sub_21DBFBCBC();
  v41 = v45;
  MEMORY[0x223D438F0](0, v38, v39, v37);

  _Block_release(v37);

  (*(v46 + 8))(v39, v40);
  (*(v50 + 8))(v38, v52);
  sub_21D0CF7E0(v54, &qword_27CE5C298);
}

void sub_21D40BE30(int a1)
{
  v2 = v1;
  v46 = *v1;
  v48 = sub_21DBF9D2C();
  v4 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D5C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v47 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF9D8C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = v2[2];
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x277D85200], v10, v12);
  v16 = v15;
  LOBYTE(v15) = sub_21DBF9DAC();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v42 = v8;
  v43 = v6;
  v44 = v7;
  v45 = v4;
  swift_beginAccess();
  v18 = v2[17];
  v17 = v2[18];
  v19 = *(v2 + 152);
  swift_beginAccess();
  v20 = v2[5];
  v41 = a1;
  v21 = a1 & 1;
  v22 = 3;
  if (a1)
  {
    v22 = 4;
  }

  v23 = v2[v22];
  v24 = swift_allocObject();
  *(v24 + 16) = 1;
  if (!v21)
  {
    v26 = v2[20];
    sub_21D43A0E8(v18, v17, v19);

    v27 = v23;
    os_unfair_lock_lock(v26);
    v28 = v2[21];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (!v29)
    {
      *(v24 + 16) = v30;
      v2[21] = v30;
      os_unfair_lock_unlock(v26);
      if (*(v24 + 16) > 1)
      {

        sub_21D43A134(v18, v17, v19);

        return;
      }

      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return;
  }

  sub_21D43A0E8(v18, v17, v19);

  v25 = v23;
LABEL_9:
  v40 = v23;
  v31 = v2[9];
  if (v31)
  {

    v31(v32);
    sub_21D0D0E88(v31);
  }

  v51 = v19;
  v33 = swift_allocObject();
  *(v33 + 16) = v24;
  *(v33 + 24) = v41 & 1;
  *(v33 + 32) = v20;
  *(v33 + 40) = v18;
  *(v33 + 48) = v17;
  *(v33 + 56) = v51;
  v34 = v46;
  *(v33 + 64) = v2;
  *(v33 + 72) = v34;
  aBlock[4] = sub_21D43A180;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_454;
  v35 = _Block_copy(aBlock);
  sub_21D43A0E8(v18, v17, v19);

  LODWORD(v46) = v19;
  v36 = v47;
  sub_21DBF9D4C();
  v49 = MEMORY[0x277D84F90];
  sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
  v37 = v43;
  v38 = v48;
  sub_21DBFBCBC();
  v39 = v40;
  MEMORY[0x223D438F0](0, v36, v37, v35);

  _Block_release(v35);
  sub_21D43A134(v18, v17, v46);

  (*(v45 + 8))(v37, v38);
  (*(v42 + 8))(v36, v44);
}

void sub_21D40C3C8(int a1)
{
  v2 = v1;
  v48 = *v1;
  v53 = sub_21DBF9D2C();
  v4 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = sub_21DBF9D5C();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1D8);
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v42[-v11];
  v13 = sub_21DBF9D8C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = v2[2];
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13, v15);
  v19 = v18;
  LOBYTE(v18) = sub_21DBF9DAC();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v46 = v4;
  v20 = *(*v2 + 208);
  swift_beginAccess();
  v54 = v12;
  sub_21D0D3954(v2 + v20, v12, &qword_27CE5C1D8);
  swift_beginAccess();
  v21 = v2[5];
  v22 = 3;
  if (a1)
  {
    v22 = 4;
  }

  v23 = v2[v22];
  v24 = swift_allocObject();
  *(v24 + 16) = 1;
  if ((a1 & 1) == 0)
  {
    v26 = *(v2 + *(*v2 + 216));

    v27 = v23;
    os_unfair_lock_lock(v26);
    v28 = *(*v2 + 224);
    v29 = *(v2 + v28);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (!v30)
    {
      *(v24 + 16) = v31;
      *(v2 + v28) = v31;
      os_unfair_lock_unlock(v26);
      if (*(v24 + 16) > 1)
      {
        sub_21D0CF7E0(v54, &qword_27CE5C1D8);

        return;
      }

      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return;
  }

  v25 = v23;
LABEL_9:
  v44 = v21;
  v43 = a1;
  v45 = v23;
  v32 = v2[9];
  if (v32)
  {

    v32(v33);
    sub_21D0D0E88(v32);
  }

  sub_21D0D3954(v54, v9, &qword_27CE5C1D8);
  v34 = (*(v47 + 80) + 40) & ~*(v47 + 80);
  v35 = (v8 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = v24;
  *(v36 + 24) = v43 & 1;
  *(v36 + 32) = v44;
  sub_21D0D523C(v9, v36 + v34, &qword_27CE5C1D8);
  *(v36 + v35) = v2;
  *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v48;
  aBlock[4] = sub_21D436E50;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_117;
  v37 = _Block_copy(aBlock);

  v38 = v49;
  sub_21DBF9D4C();
  v55 = MEMORY[0x277D84F90];
  sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
  v39 = v51;
  v40 = v53;
  sub_21DBFBCBC();
  v41 = v45;
  MEMORY[0x223D438F0](0, v38, v39, v37);

  _Block_release(v37);

  (*(v46 + 8))(v39, v40);
  (*(v50 + 8))(v38, v52);
  sub_21D0CF7E0(v54, &qword_27CE5C1D8);
}
uint64_t ArtworkCrop.cropCodeString.getter()
{
  result = 25186;
  switch(*v0)
  {
    case 1:
      result = 29299;
      break;
    case 2:
      result = 29555;
      break;
    case 3:
      result = 28006;
      break;
    case 4:
      result = 28262;
      break;
    case 5:
      result = 28518;
      break;
    case 6:
      result = 24934;
      break;
    case 7:
      result = 30309;
      break;
    case 8:
      result = 30053;
      break;
    case 9:
      result = 29797;
      break;
    case 0xA:
      result = 0x4D7370552E545053;
      break;
    case 0xB:
      result = 0x577370552E545053;
      break;
    case 0xC:
      result = 0x547370552E545053;
      break;
    case 0xD:
      result = 0x3042454C532E4553;
      break;
    case 0xE:
      result = 0x544C424C532E4253;
      break;
    case 0xF:
      result = 0x5452424C532E4253;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D8DB0D00(unint64_t a1, unint64_t *a2, uint64_t a3, void (**a4)(char *, void *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v60[0] = a3;
  v60[1] = a4;
  v50 = a4;
  v51 = a6;
  v60[2] = a5;
  v60[3] = a6;
  v60[4] = a7;
  type metadata accessor for InMemoryAssetCache.Record();
  v56 = AssociatedTypeWitness;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v55 = *(TupleTypeMetadata2 - 8);
  v16 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v45 - v24;
  v57 = a2;
  v26 = *a2;
  v27 = *a2 == a1;
  if (*a2 < a1)
  {
    return v26 >= a1;
  }

  v54 = *a2;
  if (v27)
  {
    sub_1D8E63A60(v57);
LABEL_20:
    v26 = v54;
    return v26 >= a1;
  }

  v46 = v23;
  v28 = v57[2];
  v52 = v57 + 2;
  v53 = a1;
  v60[0] = v28;
  v29 = sub_1D91780DC();
  WitnessTable = swift_getWitnessTable();
  v30 = MEMORY[0x1DA729A30](&v59, v29, WitnessTable);
  v49 = &v45;
  v48 = v59;
  v58 = v59;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v50;
  v31 = v51;
  *(&v45 - 6) = a3;
  *(&v45 - 5) = v32;
  *(&v45 - 4) = a5;
  *(&v45 - 3) = v31;
  *(&v45 - 2) = a7;
  v51 = v29;
  sub_1D917948C();
  swift_getWitnessTable();
  v33 = sub_1D91784AC();

  if (!sub_1D91786AC())
  {
LABEL_19:

    a1 = v53;
    goto LABEL_20;
  }

  v34 = 0;
  v49 = (v56 - 8);
  v50 = (v55 + 16);
  v48 = (v55 + 32);
  while (1)
  {
    v35 = sub_1D917868C();
    sub_1D917862C();
    if (v35)
    {
      (*(v55 + 16))(v25, v33 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v34, TupleTypeMetadata2);
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      result = sub_1D91794BC();
      if (v46 != 8)
      {
        goto LABEL_24;
      }

      v60[0] = result;
      (*v50)(v25, v60, TupleTypeMetadata2);
      swift_unknownObjectRelease();
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
LABEL_17:
        __break(1u);
LABEL_18:
        (*(v55 + 8))(v21, TupleTypeMetadata2);
        goto LABEL_19;
      }
    }

    v37 = *(TupleTypeMetadata2 + 48);
    v38 = *&v25[v37];
    v39 = *(v56 - 8);
    result = (*(v39 + 32))(v21, v25);
    *&v21[v37] = v38;
    v41 = v57[1];
    if (__CFADD__(v41, v53))
    {
      break;
    }

    if (v54 >= v41 + v53)
    {
      goto LABEL_18;
    }

    sub_1D917807C();

    (*v48)(v18, v21, TupleTypeMetadata2);
    v42 = *&v18[*(TupleTypeMetadata2 + 48)];
    v43 = *(v42 + *(*v42 + 128));

    if (v41 < v43)
    {
      goto LABEL_23;
    }

    v44 = v56;
    v57[1] = v41 - v43;
    (*(v39 + 8))(v18, v44);
    ++v34;
    if (v36 == sub_1D91786AC())
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1D8DB1210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a2;
  v45 = sub_1D9176E3C();
  v42 = *(v45 - 8);
  v13 = v42;
  v14 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v44 = &v41 - v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = a3;
  v50 = a4;
  v51 = a5;
  v52 = a6;
  v53 = a7;
  type metadata accessor for InMemoryAssetCache.Record();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = *(TupleTypeMetadata2 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v41 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v41 - v24;
  v43 = &v41 - v24;
  v26 = *(v19 + 16);
  v26(&v41 - v24, a1, TupleTypeMetadata2, v23);
  v27 = *&v25[*(TupleTypeMetadata2 + 48)];
  v28 = *(*v27 + 136);
  swift_beginAccess();
  v29 = *(v13 + 16);
  v31 = v44;
  v30 = v45;
  v29(v44, v27 + v28, v45);

  v32 = v41;
  (v26)(v41, v48, TupleTypeMetadata2);
  v33 = *&v32[*(TupleTypeMetadata2 + 48)];
  v34 = v32;
  v35 = *(*v33 + 136);
  swift_beginAccess();
  v36 = v47;
  v29(v47, v33 + v35, v30);

  LOBYTE(v33) = sub_1D9176DAC();
  v37 = *(v42 + 8);
  v37(v36, v30);
  v37(v31, v30);
  v38 = AssociatedTypeWitness;
  v39 = *(*(AssociatedTypeWitness - 8) + 8);
  v39(v34, AssociatedTypeWitness);
  v39(v43, v38);
  return v33 & 1;
}

uint64_t sub_1D8DB1604(uint64_t a1)
{
  v2 = v1;
  v26 = a1;
  v3 = *v1;
  v25 = sub_1D917752C();
  v4 = *(v25 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + v3[21]);
  v28 = v3[10];
  v29 = v3[11];
  v30 = v3[12];
  v31 = v3[13];
  v33 = v28;
  v34 = v29;
  v35 = v30;
  v36 = v31;
  type metadata accessor for EmitLifecycle.LifecycleEmitting.Metadata();
  sub_1D8D056BC(sub_1D8F2B068, v27, v8);
  v9 = (v2 + *(*v2 + 128));
  v10 = v9[3];
  v11 = v9[4];
  v24 = __swift_project_boxed_opaque_existential_1(v9, v10);
  v12 = v2 + *(*v2 + 136);
  v13 = *v12;
  v22 = *(v12 + 1);
  v23 = v13;
  HIDWORD(v21) = v12[16];
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_1D917946C();
  v14 = (v2 + *(*v2 + 144));
  v16 = *v14;
  v15 = v14[1];

  v33 = v16;
  v34 = v15;
  MEMORY[0x1DA7298F0](0xD000000000000011, 0x80000001D91CD440);
  sub_1D8DB1938(v7);
  v17 = sub_1D917750C();
  (*(v4 + 8))(v7, v25);
  v32 = v17;
  v18 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v18);

  MEMORY[0x1DA7298F0](41, 0xE100000000000000);
  (*(v11 + 16))(v23, v22, HIDWORD(v21), v33, v34, v10, v11);

  v19 = v2 + *(*v2 + 120);
  return sub_1D91777AC();
}

uint64_t sub_1D8DB1938@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EDCDE880;
  swift_beginAccess();
  v4 = sub_1D917752C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1D8DB19C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(*v5 + 16);
  if (v6)
  {
    v11 = result;
    v12 = *v5 + 32;
    do
    {
      sub_1D8CFD9D8(v12, v15);
      v13 = v16;
      v14 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      (*(v14 + 16))(v11, a2, a3, a4, a5, v13, v14);
      result = __swift_destroy_boxed_opaque_existential_1Tm(v15);
      v12 += 40;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t SignpostTrace.emit(event:context:)(uint64_t **a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  v10 = sub_1D917734C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v29 - v16);
  v18 = 0;
  if (a5)
  {
    v19 = type metadata accessor for SignpostTrace(0);
    (*(v11 + 16))(v17, v5 + *(v19 + 20), v10);

    v14 = sub_1D917737C();
    v20 = sub_1D9178F6C();
    result = sub_1D917918C();
    if ((result & 1) == 0)
    {
LABEL_10:

      return (*(v11 + 8))(v17, v10);
    }

    if ((a3 & 1) == 0)
    {
      v5 = a4;

      if (!a1)
      {
        __break(1u);
        goto LABEL_6;
      }

LABEL_15:
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v29 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1D8CFA924(v5, a5, &v29);
      v26 = sub_1D917732C();
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v14, v20, v26, a1, "%s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1DA72CB90](v25, -1, -1);
      MEMORY[0x1DA72CB90](v24, -1, -1);

      return (*(v11 + 8))(v17, v10);
    }

    if (a1 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xFFFFF800) == 0xD800)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if (a1 >> 16 <= 0x10)
      {
        v5 = a4;

        a1 = &v29;
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_6:
  v22 = type metadata accessor for SignpostTrace(v18);
  (*(v11 + 16))(v14, v5 + *(v22 + 20), v10);
  v17 = sub_1D917737C();
  v23 = sub_1D9178F6C();
  result = sub_1D917918C();
  if (result)
  {
    if ((a3 & 1) == 0)
    {
      if (!a1)
      {
        __break(1u);
        goto LABEL_10;
      }

      goto LABEL_21;
    }

    if (!(a1 >> 32))
    {
      if ((a1 & 0xFFFFF800) == 0xD800)
      {
LABEL_29:
        __break(1u);
        return result;
      }

      if (a1 >> 16 <= 0x10)
      {
        a1 = &v30;
LABEL_21:
        v27 = swift_slowAlloc();
        *v27 = 0;
        v28 = sub_1D917732C();
        _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v17, v23, v28, a1, "", v27, 2u);
        MEMORY[0x1DA72CB90](v27, -1, -1);
        goto LABEL_22;
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_22:

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1D8DB1DE0()
{
  v1 = v0;
  v2 = *v0;
  v3 = *v0;
  v4 = *(v0 + *(*v0 + 168));
  v5 = *(v2 + 104);
  v9 = *(v2 + 80);
  v10 = *(v3 + 88);
  v11 = v5;
  type metadata accessor for EmitLifecycle.LifecycleEmitting.Metadata();
  OSAllocatedUnfairLock.current.getter(v4, &v9);
  v6 = *(v1 + *(*v1 + 176));
  os_unfair_lock_lock(v6 + 24);
  sub_1D8DB26D0(&v6[4]);
  os_unfair_lock_unlock(v6 + 24);

  v7 = v1 + *(*v1 + 120);
  return sub_1D917778C();
}

double sub_1D8DB1F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(&v55 + 1) = a5;
  v56 = a6;
  v54 = *a3;
  *&v55 = a4;
  v9 = sub_1D917752C();
  v51 = *(v9 - 8);
  v52 = v9;
  v10 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v44[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = v54[12];
  v14 = v54[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = v13;
  swift_getAssociatedConformanceWitness();
  v16 = sub_1D91777CC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v44[-v20];
  (*(v17 + 16))(&v44[-v20], a2, v16, v19);
  if ((*(*(AssociatedTypeWitness - 8) + 48))(v21, 1, AssociatedTypeWitness) == 1)
  {
    sub_1D8D088B4(a1 + 40, &v59, &unk_1ECAB6E00, &qword_1D91952E0);
    if (v61)
    {
      sub_1D8D6BCE0(&v59, &v62);
      v22 = v65;
      v23 = v66;
      __swift_project_boxed_opaque_existential_1(&v62, v65);
      (*(v23 + 8))(0x53534543435553, 0xE700000000000000, v22, v23);
      __swift_destroy_boxed_opaque_existential_1Tm(&v62);
    }

    else
    {
      sub_1D8D08A50(&v59, &unk_1ECAB6E00, &qword_1D91952E0);
      v26 = (a3 + *(*a3 + 128));
      v27 = v26[3];
      v28 = v26[4];
      __swift_project_boxed_opaque_existential_1(v26, v27);
      v29 = a3 + *(*a3 + 136);
      v30 = *v29;
      v49 = *(v29 + 8);
      v50 = v30;
      LODWORD(v48) = *(v29 + 16);
      v62 = 0;
      v63 = 0xE000000000000000;
      sub_1D917946C();
      v57 = v62;
      v58 = v63;
      MEMORY[0x1DA7298F0](*(a3 + *(*a3 + 144)), *(a3 + *(*a3 + 144) + 8));
      MEMORY[0x1DA7298F0](0x2053534543435553, 0xE900000000000028);
      sub_1D8DB1938(v12);
      v31 = sub_1D917750C();
      (*(v51 + 8))(v12, v52);
      v62 = v31;
      v32 = sub_1D9179A4C();
      MEMORY[0x1DA7298F0](v32);

      MEMORY[0x1DA7298F0](545005609, 0xE400000000000000);
      v59 = v55;
      v60 = v56;
      v33 = v54[11];
      v34 = v54[13];
      v62 = v14;
      v63 = v33;
      v64 = v53;
      v65 = v34;
      type metadata accessor for EmitLifecycle.LifecycleEmitting.Metadata();
      swift_getWitnessTable();
      sub_1D9179A9C();
      (*(v28 + 16))(v50, v49, v48, v57, v58, v27, v28);
    }
  }

  else
  {
    sub_1D8D088B4(a1 + 40, &v59, &unk_1ECAB6E00, &qword_1D91952E0);
    if (v61)
    {
      sub_1D8D6BCE0(&v59, &v62);
      v24 = v65;
      v25 = v66;
      __swift_project_boxed_opaque_existential_1(&v62, v65);
      (*(v25 + 8))(0x4552554C494146, 0xE700000000000000, v24, v25);
      __swift_destroy_boxed_opaque_existential_1Tm(&v62);
    }

    else
    {
      sub_1D8D08A50(&v59, &unk_1ECAB6E00, &qword_1D91952E0);
      v35 = (a3 + *(*a3 + 128));
      v36 = v35[4];
      v50 = v35[3];
      v48 = v36;
      v49 = __swift_project_boxed_opaque_existential_1(v35, v50);
      v37 = (a3 + *(*a3 + 136));
      v38 = v37[1];
      v47 = *v37;
      v46 = v38;
      v45 = *(v37 + 16);
      v62 = 0;
      v63 = 0xE000000000000000;
      sub_1D917946C();
      v57 = v62;
      v58 = v63;
      MEMORY[0x1DA7298F0](*(a3 + *(*a3 + 144)), *(a3 + *(*a3 + 144) + 8));
      MEMORY[0x1DA7298F0](0x204552554C494146, 0xE900000000000028);
      sub_1D8DB1938(v12);
      v39 = sub_1D917750C();
      (*(v51 + 8))(v12, v52);
      v62 = v39;
      v40 = sub_1D9179A4C();
      MEMORY[0x1DA7298F0](v40);

      MEMORY[0x1DA7298F0](545005609, 0xE400000000000000);
      v59 = v55;
      v60 = v56;
      v41 = v54[11];
      v42 = v54[13];
      v62 = v14;
      v63 = v41;
      v64 = v53;
      v65 = v42;
      type metadata accessor for EmitLifecycle.LifecycleEmitting.Metadata();
      swift_getWitnessTable();
      sub_1D9179A9C();
      (*(v48 + 16))(v47, v46, v45, v57, v58, v50);
    }

    (*(v17 + 8))(v21, v16);
  }

  sub_1D8D08A50(a1 + 40, &unk_1ECAB6E00, &qword_1D91952E0);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  sub_1D8D08A50(a1, qword_1ECAB6CD0, &unk_1D9195040);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_1D8DB26F4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v0[5];
  v6 = v0 + ((*(v4 + 80) + 48) & ~*(v4 + 80));

  return sub_1D8DB2794(v5, v6, v1, v2, v3);
}

uint64_t sub_1D8DB2794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v17[-v14];
  (*(v11 + 16))(&v17[-v14], a2, AssociatedTypeWitness, v13);
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = v15;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D917781C();
  sub_1D91780DC();
  sub_1D8D056BC(sub_1D8DB2A80, v17, a1);
  return (*(v11 + 8))(v15, AssociatedTypeWitness);
}

uint64_t sub_1D8DB296C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D917781C();
  sub_1D91780DC();
  sub_1D917807C();
}

uint64_t sub_1D8DB2A80()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  return sub_1D8DB296C();
}

BOOL sub_1D8DB2AA4(_BOOL8 result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  if (v2 != v3 || result == a2 || v2 == 0)
  {
    return v2 == v3;
  }

  v6 = v2 - 1;
  if (v2 < v2 - 1)
  {
    v6 = *(result + 16);
  }

  if (v6 > 1)
  {
    v7 = v6 & 0x7FFFFFFFFFFFFFFELL;
    v8 = v7;
    do
    {
      v8 -= 2;
    }

    while (v8);
  }

  else
  {
    v7 = 0;
  }

  v9 = v2 - v7;
  while (v9)
  {
    if (!--v9)
    {
      return v2 == v3;
    }
  }

  __break(1u);
  return result;
}

void sub_1D8DB2B0C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1D917820C();
  }

  v2 = objc_allocWithZone(MEMORY[0x1E698CAC8]);
  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v4 = [v2 initWithBundleIdentifier_];

  qword_1EDCD2AB8 = v4;
}

void RepublishingValueSubject.send(completion:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 96);
  v6 = sub_1D91777CC();
  v7 = sub_1D91791BC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v21 - v10;
  v12 = v1[2];
  os_unfair_lock_lock(v12 + 4);
  if (*(v1 + 24) == 1)
  {
    *(v1 + 24) = 0;
    v13 = *(v6 - 8);
    v21[0] = v3;
    v14 = v13;
    (*(v13 + 16))(v11, a1, v6);
    (*(v14 + 56))(v11, 0, 1, v6);
    v15 = *(*v1 + 120);
    swift_beginAccess();
    (*(v8 + 40))(v1 + v15, v11, v7);
    swift_endAccess();
    v16 = v1 + *(*v1 + 128);
    swift_beginAccess();
    v17 = *v16;
    v18 = *(v16 + 8);
    swift_beginAccess();
    sub_1D8D546A0(v17, v18);
    v19 = *(v21[0] + 80);
    type metadata accessor for ConduitList();
    sub_1D8DB2F24();
    swift_endAccess();
    os_unfair_lock_unlock(v12 + 4);
    MEMORY[0x1EEE9AC00](v20);
    v21[-2] = a1;
    sub_1D8D546BC(sub_1D8DB2F70, &v21[-4], v17, v18);
    sub_1D8D54860(v17, v18);
  }

  else
  {

    os_unfair_lock_unlock(v12 + 4);
  }
}

uint64_t sub_1D8DB2F24()
{
  result = sub_1D8D54860(*v0, *(v0 + 8));
  *v0 = 0;
  *(v0 + 8) = 2;
  return result;
}

void sub_1D8DB2FC4(uint64_t a1)
{
  v34 = a1;
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 176);
  v33 = *(*v1 + 184);
  swift_getAssociatedConformanceWitness();
  v30 = sub_1D91777CC();
  v5 = sub_1D91791BC();
  v31 = *(v5 - 8);
  v32 = v5;
  v6 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v29 = &v29 - v7;
  v8 = sub_1D91791BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  v16 = *(v4 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v29 - v19;
  v21 = *&v1[*(v2 + 216)];
  os_unfair_lock_lock(v21 + 4);
  v22 = *(*v1 + 200);
  swift_beginAccess();
  (*(v9 + 16))(v15, &v1[v22], v8);
  if ((*(v16 + 48))(v15, 1, v4) == 1)
  {
    (*(v9 + 8))(v15, v8);
    os_unfair_lock_unlock(v21 + 4);
  }

  else
  {
    (*(v16 + 32))(v20, v15, v4);
    if (v1[*(*v1 + 240)] == 1)
    {
      (*(v16 + 56))(v12, 1, 1, v4);
      swift_beginAccess();
      (*(v9 + 40))(&v1[v22], v12, v8);
      swift_endAccess();
      v23 = *(v1 + 2);
      *(v1 + 2) = 0;
      os_unfair_lock_unlock(v21 + 4);
      if (v23)
      {

        sub_1D8DB34BC(v1);
      }

      v24 = *&v1[*(*v1 + 224)];
      os_unfair_recursive_lock_lock_with_options();
      sub_1D917778C();
      os_unfair_recursive_lock_unlock();
    }

    else
    {
      v26 = v29;
      v25 = v30;
      v27 = *(v30 - 8);
      (*(v27 + 16))(v29, v34, v30);
      (*(v27 + 56))(v26, 0, 1, v25);
      v28 = *(*v1 + 248);
      swift_beginAccess();
      (*(v31 + 40))(&v1[v28], v26, v32);
      swift_endAccess();
      os_unfair_lock_unlock(v21 + 4);
    }

    (*(v16 + 8))(v20, v4);
  }
}

void sub_1D8DB34BC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  os_unfair_lock_lock(v4 + 4);
  if (*(v1 + 24) == 1)
  {
    v5 = *(*v1 + 128);
    swift_beginAccess();
    v6 = v3[10];
    v7 = v3[11];
    v8 = v3[12];
    v9 = type metadata accessor for ConduitList();
    sub_1D8F34DFC(a1, v9);
    swift_endAccess();
    os_unfair_lock_unlock(v4 + 4);
  }

  else
  {

    os_unfair_lock_unlock(v4 + 4);
  }
}

uint64_t sub_1D8DB35B8()
{
  v10 = sub_1D9178E0C();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9178D8C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1D9177E9C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9[1] = sub_1D8CFD888();
  sub_1D9177E4C();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBD60(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  result = sub_1D9178E4C();
  qword_1ECAB1908 = result;
  return result;
}

void sub_1D8DB3838()
{
  v1 = *v0;
  v2 = v0[2];
  os_unfair_lock_lock(v2 + 4);
  v3 = *(*v0 + 168);
  swift_beginAccess();
  sub_1D8D73ABC(v0 + v3, v7);
  if (v8 >= 2)
  {
    sub_1D8D740C4(v7);
    memset(v7, 0, sizeof(v7));
    v8 = xmmword_1D918BEE0;
    swift_beginAccess();
    sub_1D8D74118(v7, v0 + v3);
    swift_endAccess();
    os_unfair_lock_unlock(v2 + 4);
    v4 = *(v1 + 96);
    v5 = *(v1 + 120);
    v6 = v0 + *(*v0 + 136);
    sub_1D917778C();
  }

  else
  {
    sub_1D8D740C4(v7);
    os_unfair_lock_unlock(v2 + 4);
  }
}

uint64_t sub_1D8DB399C()
{
  v0 = *sub_1D8DB3A44();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

id sub_1D8DB39F0()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager_identifierPromise;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

char *sub_1D8DB3A44()
{
  v1 = *v0;
  MEMORY[0x1DA72CB90](*(v0 + *(*v0 + 224)), -1, -1);
  v2 = sub_1D8D698B4();
  v3 = *(v2 + 2);

  v4 = *(*v2 + 200);
  v5 = v1[22];
  v6 = sub_1D91791BC();
  (*(*(v6 - 8) + 8))(&v2[v4], v6);
  v7 = *&v2[*(*v2 + 216)];

  v8 = *(*v2 + 248);
  v9 = v1[21];
  v10 = v1[23];
  swift_getAssociatedConformanceWitness();
  sub_1D91777CC();
  v11 = sub_1D91791BC();
  (*(*(v11 - 8) + 8))(&v2[v8], v11);
  return v2;
}

uint64_t sub_1D8DB3BD0()
{
  v0 = *sub_1D8DB3C2C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

char *sub_1D8DB3C2C()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  (*(*(v1[12] - 8) + 8))(&v0[*(*v0 + 136)]);
  v3 = *(*v0 + 160);
  v4 = v1[10];
  v5 = sub_1D91791BC();
  (*(*(v5 - 8) + 8))(&v0[v3], v5);
  sub_1D8D740C4(&v0[*(*v0 + 168)]);
  v6 = *(*v0 + 184);
  v7 = v1[14];
  v8 = v1[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&v0[v6], AssociatedTypeWitness);
  (*(*(v8 - 8) + 8))(&v0[*(*v0 + 192)], v8);
  return v0;
}

uint64_t *EmitLifecycle.LifecycleEmitting.deinit()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 176);
  v4 = *(v0 + v3);

  os_unfair_lock_lock(v4 + 24);
  sub_1D8D088B4(&v4[14], &v13, &unk_1ECAB6E00, &qword_1D91952E0);
  if (v14)
  {
    sub_1D8D6BCE0(&v13, v15);
    v5 = v16;
    v6 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (*(v6 + 8))(0x434F4C4C414544, 0xE700000000000000, v5, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  else
  {
    sub_1D8D08A50(&v13, &unk_1ECAB6E00, &qword_1D91952E0);
  }

  os_unfair_lock_unlock(v4 + 24);

  v7 = qword_1EDCDE880;
  v8 = sub_1D917752C();
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  (*(*(*(v2 + 88) - 8) + 8))(v1 + *(*v1 + 120));
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + *(*v1 + 128)));
  v9 = *(v1 + *(*v1 + 144) + 8);

  v10 = *(v1 + *(*v1 + 168));

  v11 = *(v1 + v3);

  return v1;
}

uint64_t NSManagedObjectContext.fetchListAndPublish<A, B>(entityName:predicate:sortDescriptors:limit:receiveOn:transform:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1D9177A2C();
  v17 = swift_allocObject();
  v17[2] = a9;
  v17[3] = a10;
  v17[4] = v10;
  v17[5] = a1;
  v17[6] = a2;
  v17[7] = a3;
  v17[8] = a4;
  v17[9] = a5;
  v17[10] = a7;
  v17[11] = a8;
  v17[12] = a6;
  v18 = v10;

  v19 = a3;

  v20 = a6;
  return sub_1D9177A3C();
}

uint64_t sub_1D8DB411C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);

  v3 = *(v0 + 88);

  return swift_deallocObject();
}

uint64_t EmitLifecycle.LifecycleEmitting.__deallocating_deinit()
{
  EmitLifecycle.LifecycleEmitting.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t RepublishingValueSubject.__deallocating_deinit()
{
  RepublishingValueSubject.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

char *RepublishingValueSubject.deinit()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 144);
  swift_beginAccess();
  v4 = *&v0[v3];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    v7 = *&v0[v3];

    do
    {
      sub_1D8CFD9D8(v6, v17);
      v8 = v17[4];
      __swift_project_boxed_opaque_existential_1(v17, v17[3]);
      v9 = *(v8 + 8);
      sub_1D91777BC();
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  v10 = *(v1 + 2);

  v11 = *(*v1 + 120);
  v12 = v2[11];
  v13 = v2[12];
  sub_1D91777CC();
  v14 = sub_1D91791BC();
  (*(*(v14 - 8) + 8))(&v1[v11], v14);
  sub_1D8D54860(*&v1[*(*v1 + 128)], v1[*(*v1 + 128) + 8]);
  (*(*(v2[10] - 8) + 8))(&v1[*(*v1 + 136)]);
  v15 = *&v1[v3];

  return v1;
}

void sub_1D8DB443C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v18 = swift_allocObject();
  v18[2] = a12;
  v18[3] = a13;
  v18[4] = a4;
  v18[5] = a5;
  v18[6] = a6;
  v18[7] = a7;
  v18[8] = a8;
  v18[9] = a3;
  v18[10] = a9;
  v18[11] = a10;
  v18[12] = a11;
  v18[13] = a1;
  v18[14] = a2;
  aBlock[4] = sub_1D8FC31CC;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_18_1;
  v19 = _Block_copy(aBlock);

  v20 = a6;

  v21 = a3;

  v22 = a11;

  [v21 performBlock_];
  _Block_release(v19);
}

uint64_t sub_1D8DB45A0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 88);

  v4 = *(v0 + 112);

  return swift_deallocObject();
}

uint64_t Publishers.PFCombineLatest5.init(_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  (*(*(a6 - 8) + 32))(a9, a1, a6);
  v17 = type metadata accessor for Publishers.PFCombineLatest5();
  (*(*(a7 - 8) + 32))(a9 + v17[25], a2, a7);
  (*(*(a8 - 8) + 32))(a9 + v17[26], a3, a8);
  (*(*(a10 - 8) + 32))(a9 + v17[27], a4, a10);
  return (*(*(a11 - 8) + 32))(a9 + v17[28], a5, a11);
}

uint64_t EyebrowBuilder.__allocating_init(episode:style:explicitSymbol:hostingViewHasLimitedSpace:)(uint64_t *a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
{
  v11 = type metadata accessor for EyebrowBuilder.ListContext(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a2) = *a2;
  sub_1D8CFD9D8(a1, v21);
  swift_storeEnumTagMultiPayload();
  HIBYTE(v20) = a2;
  v15 = v22;
  v16 = v23;
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
  v18 = sub_1D8DB48F4(v17, v14, &v20 + 7, a3, a4, 1, a5, 0, v5, v15, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  return v18;
}

uint64_t sub_1D8DB48F4(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v26 = a7;
  v27 = a8;
  HIDWORD(v25) = a6;
  v16 = *(a10 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](a9);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  (*(v16 + 16))(v19, a1, a10);
  return sub_1D8D41A30(v19, a2, a3, a4, a5, SBYTE4(v25), v26, v27, v23, a10, a11);
}

uint64_t sub_1D8DB4A24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  v3 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t Publishers.PFCombineLatest5.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v86 = a3;
  v87 = a4;
  v88 = a1;
  v96 = *(a2 + 32);
  AssociatedTypeWitness = v96;
  v101 = *(a2 + 72);
  v93 = v101;
  v94 = *(a2 + 16);
  v65[1] = *(&v94 + 1);
  v72 = v94;
  v98 = v94;
  v95 = *(a2 + 56);
  v77 = v95;
  v100 = v95;
  v74 = *(&v95 + 1);
  v97 = sub_1D917753C();
  v5 = *(a2 + 40);
  v90 = *(a2 + 48);
  v91 = MEMORY[0x1E695BC70];
  WitnessTable = swift_getWitnessTable();
  v6 = *(a2 + 80);
  v101 = *(a2 + 88);
  v79 = v6;
  v76 = v101;
  v92 = sub_1D917753C();
  *&v98 = swift_getAssociatedTypeWitness();
  v7 = *(&v94 + 1);
  *(&v98 + 1) = swift_getAssociatedTypeWitness();
  v8 = v96;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70 = v5;
  *&v100 = swift_getAssociatedTypeWitness();
  *(&v100 + 1) = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v9 = v92;
  v81 = swift_getWitnessTable();
  v83 = sub_1D917768C();
  v84 = *(v83 - 8);
  v10 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v78 = v65 - v11;
  v73 = *(v90 - 8);
  v12 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v71 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = *(v5 - 8);
  v15 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v68 = v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *(v9 - 8);
  v18 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v91 = v65 - v20;
  v21 = *(v8 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v67 = v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v7;
  v26 = *(v7 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v65 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v72;
  v32 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v35 = v65 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = *(v97 - 8);
  v36 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v39 = v65 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v40);
  v43 = v65 - v42;
  v45 = v80;
  (*(v44 + 16))(v35, v80, v31, v41);
  (*(v26 + 16))(v30, v45 + *(a2 + 100), v25);
  (*(v21 + 16))(v67, v45 + *(a2 + 104), v96);
  v66 = v43;
  sub_1D917754C();
  (*(v89 + 16))(v39, v43, v97);
  v46 = v70;
  (*(v69 + 16))(v68, v45 + *(a2 + 108), v70);
  v47 = v45 + *(a2 + 112);
  v48 = v90;
  (*(v73 + 16))(v71, v47, v90);
  v49 = v76;
  v50 = v46;
  v51 = v79;
  sub_1D917754C();
  v52 = swift_allocObject();
  v53 = v96;
  *&v54 = v96;
  *(&v54 + 1) = v50;
  *(v52 + 32) = v54;
  *(v52 + 16) = v94;
  v56 = v86;
  v55 = v87;
  *(v52 + 48) = v48;
  *(v52 + 56) = v56;
  v57 = v93;
  *&v54 = v93;
  *(&v54 + 1) = v51;
  *(v52 + 80) = v54;
  *(v52 + 64) = v95;
  *(v52 + 96) = v49;
  *(v52 + 104) = v55;
  v58 = swift_allocObject();
  v59 = v95;
  *(v58 + 16) = v94;
  *(v58 + 32) = v53;
  *(v58 + 40) = v50;
  *(v58 + 48) = v48;
  *(v58 + 56) = v56;
  *(v58 + 64) = v59;
  *(v58 + 80) = v57;
  *(v58 + 88) = v51;
  *(v58 + 96) = v49;
  *(v58 + 104) = v55;
  *(v58 + 112) = sub_1D8F2C7C8;
  *(v58 + 120) = v52;
  v60 = v78;
  v62 = v91;
  v61 = v92;
  sub_1D9177B9C();

  v63 = v83;
  sub_1D917767C();
  (*(v84 + 8))(v60, v63);
  (*(v75 + 8))(v62, v61);
  return (*(v89 + 8))(v66, v97);
}

uint64_t sub_1D8DB5348()
{
  v1 = *(v0 + 120);

  return swift_deallocObject();
}

__n128 __swift_memcpy35_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D8DB5394(uint64_t result, int a2, int a3)
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

uint64_t sub_1D8DB53D0(uint64_t *a1, int a2)
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

_DWORD *sub_1D8DB5418(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 16;
  if ((v8 & 0xFFFFFFF8) == 0xFFFFFFF0)
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
    if ((v8 & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if ((v8 & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, (v8 & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
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
  if (v6 < 0xFE)
  {
    *(result + v8) = a2 + 1;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t EyebrowBuilder.subscriptionBadge.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_1D8DB5634()
{
  v1 = v0[5];
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 96);
  type metadata accessor for EpisodeStateMachine();
  sub_1D9178E2C();
  return v6;
}

uint64_t sub_1D8DB5710@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v78 = a5;
  v9 = *a1;
  v10 = *(*a1 + 80);
  v81 = sub_1D91791BC();
  v71 = *(v81 - 8);
  v11 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v13 = &v62 - v12;
  v74 = *(v10 - 8);
  v14 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v72 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v77 = &v62 - v18;
  v76 = sub_1D917734C();
  v79 = *(v76 - 8);
  v19 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v21 = a1[3];
  v22 = a2;
  v83 = a2;
  v88 = a2;
  v89 = a3;
  v73 = a4;
  LOBYTE(a2) = a4 & 1;
  v90 = a4 & 1;

  v23 = a3;
  sub_1D8DB5EC8(v22, a3, a2);
  v24 = *(v9 + 88);
  v25 = *(v9 + 96);
  v82 = v10;
  v26 = type metadata accessor for EpisodeStateMachine();
  v27 = sub_1D8D1EEC4();
  sub_1D91780FC();
  v28 = v23;
  v29 = v83;

  result = sub_1D8DB5FC8(v29, v28, a2);
  v31 = v84;
  if (!v84)
  {
    v68 = v25;
    v69 = v24;
    v66 = v27;
    v67 = v26;
    v80 = v28;
    v70 = a1;
    sub_1D9178F5C();
    if (qword_1EDCD0728 != -1)
    {
      goto LABEL_18;
    }

    while (1)
    {
      swift_beginAccess();
      v32 = v70;
      v33 = *(v70 + qword_1EDCD3490);
      v34 = *(v70 + qword_1EDCD3490 + 8);
      v35 = *(v70 + qword_1EDCD3490 + 16);
      v36 = qword_1EDCD0730;
      v37 = v75;
      sub_1D8DB5FD8(v75);
      v65 = v33;
      v64 = v34;
      v63 = v35;
      sub_1D91772FC();

      v38 = *(v79 + 8);
      v79 += 8;
      v62 = v38;
      v38(v37, v76);
      v39 = v82;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v41 = v77;
      (*(AssociatedConformanceWitness + 16))(v39, AssociatedConformanceWitness);
      v42 = v32[2];
      type metadata accessor for AnyEpisodeStateDataSource();

      if (!sub_1D91786AC())
      {
        break;
      }

      v43 = 0;
      v44 = v73 & 1;
      v45 = (v74 + 48);
      v46 = (v71 + 8);
      while (1)
      {
        v47 = sub_1D917868C();
        sub_1D917862C();
        if (v47)
        {
          v48 = *(v42 + 8 * v43 + 32);
        }

        else
        {
          sub_1D91794BC();
        }

        v49 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          break;
        }

        sub_1D8DB6238(v83, v80, v44);

        if ((*v45)(v13, 1, v82) != 1)
        {
          v50 = v74;
          v41 = v77;
          v39 = v82;
          (*(v74 + 8))(v77, v82);

          (*(v50 + 32))(v41, v13, v39);
          v51 = v70;
          v52 = v73;
          goto LABEL_15;
        }

        (*v46)(v13, v81);
        ++v43;
        if (v49 == sub_1D91786AC())
        {
          v39 = v82;
          v41 = v77;
          v52 = v73;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_18:
      swift_once();
    }

    v52 = v73;
    v44 = v73 & 1;
LABEL_14:

    v51 = v70;
    v50 = v74;
LABEL_15:
    v53 = v72;
    (*(v50 + 16))(v72, v41, v39);
    v54 = v51[4];
    v55 = v50;
    v56 = v52 & 1;
    v57 = v83;
    v58 = v53;
    v59 = v80;
    sub_1D8DB5EC8(v83, v80, v52 & 1);

    v31 = EpisodeStateMachine.__allocating_init(identifier:initialState:rules:)(v57, v59, v44, v58, v54);
    v91 = v31;
    v85 = v57;
    v86 = v59;
    v87 = v56;
    swift_beginAccess();
    sub_1D8DB5EC8(v57, v59, v56);
    sub_1D91780DC();

    sub_1D917810C();
    swift_endAccess();
    sub_1D9178F4C();
    v60 = qword_1EDCD0730;
    v61 = v75;
    sub_1D8DB5FD8(v75);
    sub_1D91772FC();

    v62(v61, v76);
    result = (*(v55 + 8))(v77, v82);
  }

  *v78 = v31;
  return result;
}

uint64_t sub_1D8DB5EC8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1D8DB5ED8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1D9179DBC();
  if (v3 == 1)
  {
    MEMORY[0x1DA72B390](1);
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    MEMORY[0x1DA72B3C0](v1);
  }

  return sub_1D9179E1C();
}

uint64_t sub_1D8DB5F68(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(a2 + 16);
  if (*(a1 + 16) != 1)
  {
    return (v3 == v4) & ~v5;
  }

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = a1[1];
  if (v3 == v4 && v6 == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D9179ACC();
  }
}

uint64_t sub_1D8DB5FC8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1D8DB5FD8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6DE0, &qword_1D9195250);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14[-v8];
  v10 = qword_1EDCD3488;
  swift_beginAccess();
  sub_1D8D25D6C(v1 + v10, v9);
  v11 = sub_1D917734C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1D8D25DDC(v9);
  sub_1D90FE554();
  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  sub_1D8D25E44(v6, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_1D8DB61B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6E00, &qword_1D91952E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8DB6238(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  return v4(a1, a2, a3 & 1);
}

uint64_t sub_1D8DB6264(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a6 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_projectBox();
  swift_beginAccess();
  (*(v12 + 16))(v15, v16, a6);
  (*(a7 + 56))(a1, a2, a3 & 1, a6, a7);
  return (*(v12 + 8))(v15, a6);
}

void sub_1D8DB63D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v8 = [objc_opt_self() keyWithName:v7 crossDeviceSync:a4 & 1];

  *a5 = v8;
}

void sub_1D8DB6448()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D8DB649C();
  }
}

uint64_t sub_1D8DB649C()
{
  v1 = sub_1D9177E0C();
  v14 = *(v1 - 8);
  v2 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9177E9C();
  v5 = *(v13 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR___MTDeviceCapacityMonitor_diskAccessQueue);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1D916002C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_29_1;
  v10 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBFA0(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v8, v4, v10);
  _Block_release(v10);
  (*(v14 + 8))(v4, v1);
  (*(v5 + 8))(v8, v13);
}

void EpisodeStateRepository.enqueueEpisodeStateFetch(for:)(unint64_t a1, uint64_t a2, char a3)
{
  v7 = sub_1D917744C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 32);
  v13 = *(v3 + 40);
  v14 = *(v3 + 48);
  if (v14 == 255)
  {
    goto LABEL_15;
  }

  if ((v14 & 1) == 0)
  {
    if ((a3 & 1) == 0 && v12 == a1)
    {
      goto LABEL_10;
    }

LABEL_15:
    *(v3 + 32) = a1;
    *(v3 + 40) = a2;
    v29 = a3 & 1;
    *(v3 + 48) = a3 & 1;
    sub_1D8DB6BF0(v12, v13, v14);
    sub_1D8DB5EC8(a1, a2, a3 & 1);
    v30 = sub_1D8DB6C3C(a1, a2, a3 & 1);
    v31 = *(v3 + 16);
    v32 = swift_allocObject();
    swift_weakInit();
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    *(v33 + 24) = a1;
    *(v33 + 32) = a2;
    *(v33 + 40) = v29;
    *(v33 + 48) = v30;
    aBlock[4] = sub_1D910A6E8;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_12_1;
    v34 = _Block_copy(aBlock);
    sub_1D8DB5EC8(a1, a2, v29);
    v35 = v30;

    [v31 performBlock_];
    _Block_release(v34);

    return;
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v12 != a1 || v13 != a2)
  {
    v15 = *(v3 + 32);
    v16 = *(v3 + 40);
    v17 = *(v3 + 48);
    v18 = sub_1D9179ACC();
    LOBYTE(v14) = v17;
    v13 = v16;
    v19 = v18;
    v12 = v15;
    if ((v19 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

LABEL_10:
  if (qword_1ECAAFC40 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v7, qword_1ECAAFC48);
  swift_beginAccess();
  (*(v8 + 16))(v11, v20, v7);
  v21 = a3 & 1;
  sub_1D8DB5EC8(a1, a2, a3 & 1);
  v22 = sub_1D917741C();
  v23 = sub_1D9178CDC();
  sub_1D8DB5FC8(a1, a2, v21);
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v38 = v25;
    *v24 = 136380675;
    v36[0] = a1;
    v36[1] = a2;
    v37 = v21;
    sub_1D8DB5EC8(a1, a2, v21);
    v26 = sub_1D917826C();
    v28 = sub_1D8CFA924(v26, v27, &v38);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_1D8CEC000, v22, v23, "Skip refetch for id: %{private}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x1DA72CB90](v25, -1, -1);
    MEMORY[0x1DA72CB90](v24, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D8DB6B6C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DB6BA4()
{
  v1 = *(v0 + 16);

  sub_1D8DB5FC8(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1D8DB6BF0(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D8DB5FC8(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_1D8DB6C3C(unint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = objc_opt_self();
    v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v5 = [v3 predicateForEpisodeUuid_];

LABEL_5:
    v6 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
    v7 = v5;
    v8 = [v6 initWithEntityName_];
    [v8 setPredicate_];

    return v8;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v5 = [objc_opt_self() predicateForEpisodeStoreTrackId_];
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8DB6D60()
{
  v10 = sub_1D9178E0C();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9178D8C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1D9177E9C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9[1] = sub_1D8CFD888();
  sub_1D9177E4C();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1D8D0EF30(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  result = sub_1D9178E4C();
  qword_1ECAAFDB8 = result;
  return result;
}

uint64_t StorageAnalyticsResponder.init(mediaSpaceCalculator:analyticsChannel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C38, qword_1D918C960);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  a3[2] = result;
  return result;
}

uint64_t EpisodeStateMachine.__allocating_init(identifier:initialState:rules:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  EpisodeStateMachine.init(identifier:initialState:rules:)(a1, a2, a3 & 1, a4, a5);
  return v13;
}

Swift::Void __swiftcall StorageAnalyticsResponder.beginObserving()()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  os_unfair_lock_lock((v2 + 24));
  sub_1D8DB742C((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

uint64_t sub_1D8DB70EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6A48, &qword_1D9194350);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  result = *a1;
  if (*a1)
  {

    swift_beginAccess();
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB69D8, &unk_1D91BCBC0);
    sub_1D9177AAC();
    swift_endAccess();
    *(swift_allocObject() + 16) = a3;
    sub_1D915122C();
    v11 = sub_1D9177D9C();

    result = (*(v6 + 8))(v9, v5);
    *a1 = v11;
  }

  return result;
}

uint64_t sub_1D8DB7284()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t EpisodeStateMachine.init(identifier:initialState:rules:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = *(*v5 + 120);
  v12 = *(*v5 + 80);
  v13 = *(*v5 + 88);
  v14 = *(*v5 + 96);
  type metadata accessor for StateMachineChangeObserverAction();
  *(v5 + v11) = sub_1D917866C();
  v15 = *(*v5 + 136);
  *(v5 + v15) = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3 & 1;
  (*(*(v12 - 8) + 32))(v5 + *(*v5 + 112), a4, v12);
  *(v5 + *(*v5 + 128)) = a5;
  return v5;
}

uint64_t sub_1D8DB7470()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 96);
  v4 = type metadata accessor for EpisodeStateMachine();
  return Lockable.locked<A>(perform:)(sub_1D8DB801C, v0, v4, v1, &protocol witness table for EpisodeStateMachine<A, B>);
}

uint64_t AutoDownloadProcessorDataSource.init(context:accountDataSource:workQueue:capacityMonitor:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  strcpy((v5 + 16), "AutoDownload");
  *(v5 + 29) = 0;
  *(v5 + 30) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D9189060;
  *(v10 + 32) = sub_1D917820C();
  *(v10 + 40) = v11;
  *(v10 + 48) = sub_1D917820C();
  *(v10 + 56) = v12;
  *(v10 + 64) = sub_1D917820C();
  *(v10 + 72) = v13;
  *(v5 + 48) = v10;
  *(v5 + 56) = 0;
  *(v5 + 96) = 1;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  *(v5 + 64) = a3;
  *(v5 + 72) = a4;
  *(v5 + 80) = 2;
  *(v5 + 88) = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = v5;
  v15 = a3;
  swift_retain_n();
  v16 = v15;
  v17 = a1;
  swift_unknownObjectRetain();
  v18 = a4;
  sub_1D8DB77B0(v18, v16, v5);
  v19 = *&v18[OBJC_IVAR___MTDeviceCapacityMonitor__capacityChangeObservers];

  os_unfair_lock_lock(v19 + 6);
  sub_1D8D48B78();
  os_unfair_lock_unlock(v19 + 6);

  swift_unknownObjectRelease();

  *(v5 + 88) = 0;
  *(v5 + 96) = 0;
  return v5;
}

uint64_t sub_1D8DB7770()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DB77B0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1D9177E0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9177E9C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  if (*(a1 + OBJC_IVAR___MTDeviceCapacityMonitor_vfsSource))
  {
    v17 = OBJC_IVAR___MTDeviceCapacityMonitor____capacityLevel;
    swift_beginAccess();
    v18 = *(a1 + v17);
    v19 = a2;

    os_unfair_lock_lock((v18 + 24));
    v20 = *(v18 + 16);
    os_unfair_lock_unlock((v18 + 24));

    sub_1D8DB7CDC(v20, v19, a3);
  }

  else
  {
    v32 = *(a1 + OBJC_IVAR___MTDeviceCapacityMonitor_diskAccessQueue);
    v21 = swift_allocObject();
    v31 = v6;
    v22 = v21;
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    v30 = v22;
    v23[2] = v22;
    v23[3] = sub_1D8E6EDA4;
    v23[4] = v16;
    aBlock[4] = sub_1D9160118;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_70_3;
    v29 = _Block_copy(aBlock);
    v24 = a2;

    sub_1D9177E4C();
    v33 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBFA0(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    v28 = v11;
    sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    v25 = v31;
    sub_1D91792CC();
    v26 = v29;
    MEMORY[0x1DA72A400](0, v15, v10, v29);
    _Block_release(v26);
    (*(v7 + 8))(v10, v25);
    (*(v12 + 8))(v15, v28);
  }
}

uint64_t sub_1D8DB7B8C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DB7BD0()
{
  v1 = *v0;
  sub_1D8DB7FB4();

  return swift_unknownObjectRetain();
}

uint64_t Lockable.locked<A>(perform:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 8);
  [v8(a3 a5)];
  v9 = swift_unknownObjectRelease();
  a1(v9);
  [v8(a3 a5)];
  return swift_unknownObjectRelease();
}

uint64_t sub_1D8DB7CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v5 = sub_1D9177E0C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D9177E9C();
  v10 = *(v18 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a1;
  aBlock[4] = sub_1D8E6EFE8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_26_0;
  v15 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1D8D123F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v18);
}

uint64_t sub_1D8DB7F7C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DB7FB4()
{
  v1 = *(*v0 + 136);
  swift_beginAccess();
  return *(v0 + v1);
}

void *sub_1D8DB8044(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1D8DB8144@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1D8DB81F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v5 = v4[10];
  v6 = v4[11];
  v7 = v4[12];
  v8 = type metadata accessor for EpisodeStateMachine();
  return Lockable.locked<A>(perform:)(sub_1D8DB83B8, v10, v8, MEMORY[0x1E69E7CA8] + 8, &protocol witness table for EpisodeStateMachine<A, B>);
}

void *AutoDownloadProcessorDownloader.init(reachability:context:capacityMonitor:downloader:analyticsChannel:workQueue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = [objc_opt_self() standardUserDefaults];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4EA0, &qword_1D918DB70);
  result = swift_allocObject();
  result[2] = 0xD000000000000035;
  result[3] = 0x80000001D91CAD10;
  result[4] = 209715200;
  result[5] = v14;
  result[6] = &type metadata for Int64Transform;
  result[7] = &off_1F5485EB0;
  a7[5] = a6;
  a7[6] = result;
  *a7 = a3;
  a7[1] = a1;
  a7[2] = a4;
  a7[3] = a2;
  a7[4] = a5;
  return result;
}

uint64_t DebouncedEpisodeAndShowProcessor.init(interval:dataSource:storage:delegate:workQueue:inverseBatchSize:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v38 = a5;
  v8 = a1[3];
  v36 = a1[4];
  v37 = a4;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v8);
  v10 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  v15 = a2[3];
  v35 = a2[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a2, v15);
  v17 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v23 = a3[3];
  v22 = a3[4];
  v24 = __swift_mutable_project_boxed_opaque_existential_1(a3, v23);
  v25 = *(*(v23 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v34 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v28, v26);
  v33 = v22;
  v30 = v37;
  v31 = sub_1D8DB866C(v13, v20, v28, v37, v38, v39, v15, v8, v23, v35, v36, v33);

  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v31;
}

uint64_t sub_1D8DB866C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v57 = a3;
  v58 = a5;
  v56 = sub_1D9178E0C();
  v55 = *(v56 - 8);
  v18 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1D9178D8C();
  v20 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D9177E9C();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v51 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63[3] = a8;
  v63[4] = a11;
  v50 = a11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v63);
  v26 = *(*(a8 - 8) + 32);
  v49 = boxed_opaque_existential_0;
  v26(boxed_opaque_existential_0, a1, a8);
  v62[3] = a7;
  v62[4] = a10;
  v27 = __swift_allocate_boxed_opaque_existential_0(v62);
  (*(*(a7 - 8) + 32))(v27, a2, a7);
  v61[3] = a9;
  v61[4] = a12;
  v28 = __swift_allocate_boxed_opaque_existential_0(v61);
  (*(*(a9 - 8) + 32))(v28, v57, a9);
  *(a6 + 152) = 0u;
  *(a6 + 168) = 0u;
  *(a6 + 184) = 0;
  *(a6 + 216) = 0u;
  *(a6 + 232) = 0u;
  *(a6 + 248) = 0;
  *(a6 + 256) = 5;
  *(a6 + 272) = 0;
  *(a6 + 280) = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B30, &unk_1D918E010);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  *(a6 + 192) = sub_1D91778DC();
  v32 = *(v29 + 48);
  v33 = *(v29 + 52);
  swift_allocObject();
  *(a6 + 200) = sub_1D91778DC();
  sub_1D8CFD9D8(v63, a6 + 24);
  sub_1D8CFD9D8(v62, a6 + 64);
  if (a4)
  {
    v34 = a4;
  }

  else
  {
    sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_1D917946C();

    v59 = 0xD00000000000001DLL;
    v60 = 0x80000001D91CA5F0;
    v35 = (*(v50 + 8))(a8);
    MEMORY[0x1DA7298F0](v35);

    sub_1D9177E4C();
    v59 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBBF8(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
    sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
    sub_1D91792CC();
    (*(v55 + 104))(v54, *MEMORY[0x1E69E8090], v56);
    v34 = sub_1D9178E4C();
  }

  *(a6 + 16) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B38, &qword_1D918C0F8);
  v36 = swift_allocObject();
  *(v36 + 20) = 0;
  *(v36 + 16) = 3;
  *(a6 + 264) = v36;
  v37 = objc_opt_self();
  v38 = a4;
  v59 = [v37 falsePredicate];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B40, &qword_1D918C100);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  *(a6 + 208) = sub_1D917795C();
  sub_1D8CFD9D8(v61, a6 + 112);
  *(a6 + 104) = v58;
  v42 = *(a6 + 96);
  __swift_project_boxed_opaque_existential_1((a6 + 64), *(a6 + 88));
  v43 = *(a6 + 48);
  v44 = *(a6 + 56);
  __swift_project_boxed_opaque_existential_1((a6 + 24), v43);
  (*(v44 + 16))(v43, v44);
  (*(v42 + 24))();

  v45 = *(a6 + 96);
  __swift_project_boxed_opaque_existential_1((a6 + 64), *(a6 + 88));
  v46 = *(a6 + 48);
  v47 = *(a6 + 56);
  __swift_project_boxed_opaque_existential_1((a6 + 24), v46);
  (*(v47 + 24))(v46, v47);
  (*(v45 + 32))();

  sub_1D8D01824();
  sub_1D8D0F278();
  __swift_destroy_boxed_opaque_existential_1Tm(v61);
  __swift_destroy_boxed_opaque_existential_1Tm(v62);
  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  return a6;
}

uint64_t sub_1D8DB8CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*a4 + 80);
  v8 = *(*a4 + 88);
  v9 = *(*a4 + 96);

  swift_unknownObjectRetain();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v16 = a2;
  v17 = a3;
  v10 = type metadata accessor for StateMachineChangeObserverAction();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v14, v15, v10);
  v12 = *(*a4 + 120);
  swift_beginAccess();
  sub_1D91786FC();
  sub_1D91786BC();
  swift_endAccess();
  return (*(v11 + 8))(v15, v10);
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

uint64_t sub_1D8DB8E78()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_1D8DB8EAC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 48);
}

uint64_t sub_1D8DB8EF8()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 56);
}

void sub_1D8DB8F74()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1D8DB8FE4();
}

void sub_1D8DB8F7C()
{
  v1 = *(v0 + 264);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if ((v2 & 0xFE) == 2)
  {

    sub_1D8D01ED4();
  }
}

void sub_1D8DB8FE4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR___PFDeferredLaunchTaskCoordinator__deferring))
    {
      *(Strong + OBJC_IVAR___PFDeferredLaunchTaskCoordinator__deferring) = 0;
      v2 = OBJC_IVAR___PFDeferredLaunchTaskCoordinator__tasks;
      swift_beginAccess();
      v23 = *(*&v1[v2] + 16);
      if (qword_1EDCD2400 != -1)
      {
        goto LABEL_21;
      }

      while (1)
      {
        v3 = sub_1D917744C();
        __swift_project_value_buffer(v3, qword_1EDCDE818);
        v4 = sub_1D917741C();
        v5 = sub_1D9178CDC();
        v24 = v1;
        if (os_log_type_enabled(v4, v5))
        {
          v6 = swift_slowAlloc();
          *v6 = 134349056;
          *(v6 + 4) = v23;
          _os_log_impl(&dword_1D8CEC000, v4, v5, "Starting %{public}ld tasks.", v6, 0xCu);
          v7 = v6;
          v1 = v24;
          MEMORY[0x1DA72CB90](v7, -1, -1);
        }

        v8 = *&v1[v2];
        v9 = *(v8 + 16);

        if (!v9)
        {
          break;
        }

        v2 = 0;
        v10 = (v8 + 48);
        while (v2 < *(v8 + 16))
        {
          v12 = *(v10 - 2);
          v11 = *(v10 - 1);
          v13 = *v10;

          v14 = v13;
          v15 = sub_1D917741C();
          v16 = sub_1D9178CDC();
          if (os_log_type_enabled(v15, v16))
          {
            v17 = swift_slowAlloc();
            *v17 = 134349312;
            *(v17 + 4) = v2;
            *(v17 + 12) = 2050;
            *(v17 + 14) = v23;
            _os_log_impl(&dword_1D8CEC000, v15, v16, "Starting %{public}ld of %{public}ld tasks.", v17, 0x16u);
            v18 = v17;
            v1 = v24;
            MEMORY[0x1DA72CB90](v18, -1, -1);
          }

          ++v2;

          sub_1D8DB935C(v12, v11, v14);

          v10 += 3;
          if (v9 == v2)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_21:
        swift_once();
      }

LABEL_17:
    }

    else
    {
      if (qword_1EDCD2400 != -1)
      {
        swift_once();
      }

      v19 = sub_1D917744C();
      __swift_project_value_buffer(v19, qword_1EDCDE818);
      v20 = sub_1D917741C();
      v21 = sub_1D9178CDC();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1D8CEC000, v20, v21, "Tasks have already run. Nothing to do here.", v22, 2u);
        MEMORY[0x1DA72CB90](v22, -1, -1);
      }

      v1 = v20;
    }
  }
}

uint64_t sub_1D8DB935C(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_1D9177E0C();
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D9177E9C();
  v11 = *(v19 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = ObjectType;
  aBlock[4] = sub_1D8DB96C8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_46_0;
  v16 = _Block_copy(aBlock);

  a3;
  sub_1D9177E4C();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD690(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v14, v10, v16);
  _Block_release(v16);
  (*(v20 + 8))(v10, v7);
  (*(v11 + 8))(v14, v19);
}

uint64_t sub_1D8DB9638()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t AssetRemovalProcessorDataSource.init(managedObjectContext:receiverQueue:)(uint64_t a1, uint64_t a2)
{
  strcpy((v2 + 32), "AssetRemoval");
  *(v2 + 45) = 0;
  *(v2 + 46) = -5120;
  *(v2 + 48) = xmmword_1D918BEE0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

void sub_1D8DB96C8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_1D8DB9740(*(v0 + 16));
}

uint64_t AssetRemovalProcessorDelegate.init(episodeAndShowStorage:library:workQueue:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1D8D6BCE0(a1, a4);
  result = sub_1D8D6BCE0(a2, a4 + 40);
  *(a4 + 80) = a3;
  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

void sub_1D8DB9740(void (*a1)(void))
{
  if (qword_1EDCD2400 != -1)
  {
    swift_once();
  }

  v2 = sub_1D917744C();
  __swift_project_value_buffer(v2, qword_1EDCDE818);
  v3 = sub_1D917741C();
  v4 = sub_1D9178CEC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D8CEC000, v3, v4, "Starting task.", v5, 2u);
    MEMORY[0x1DA72CB90](v5, -1, -1);
  }

  a1();
  oslog = sub_1D917741C();
  v6 = sub_1D9178CEC();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D8CEC000, oslog, v6, "Finishing task.", v7, 2u);
    MEMORY[0x1DA72CB90](v7, -1, -1);
  }
}

uint64_t sub_1D8DB98C0()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 40);

  return v1;
}

uint64_t sub_1D8DB9908()
{
  v1 = *(v0 + 48);
  v2 = v1;
  if (v1 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1D918A530;
    *(v2 + 32) = sub_1D917820C();
    *(v2 + 40) = v3;
    *(v2 + 48) = sub_1D917820C();
    *(v2 + 56) = v4;
    *(v0 + 48) = v2;
  }

  sub_1D8DB9ADC(v1);
  return v2;
}

void sub_1D8DB99AC(uint64_t a1, Swift::Int64 a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    v12 = URL.volumeAvailableCapacityForOpportunisticUsage()();
    value = v12.value;
    is_nil = v12.is_nil;
    swift_endAccess();
    if (!is_nil)
    {
      if (a3)
      {
        if (value > 0)
        {
          goto LABEL_5;
        }
      }

      else if (value > a2)
      {
        goto LABEL_5;
      }

      v9 = 2;
      goto LABEL_8;
    }

LABEL_5:
    v9 = 0;
LABEL_8:
    v10 = OBJC_IVAR___MTDeviceCapacityMonitor____capacityLevel;
    swift_beginAccess();
    v11 = *&v6[v10];
    os_unfair_lock_lock((v11 + 24));
    *(v11 + 16) = v9;
    os_unfair_lock_unlock((v11 + 24));
    swift_endAccess();
  }
}

uint64_t sub_1D8DB9ADC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

Swift::Int64_optional __swiftcall URL.volumeAvailableCapacityForOpportunisticUsage()()
{
  v0 = sub_1D8DB9BC0(MEMORY[0x1E695DD58], MEMORY[0x1E69688B8]);
  result.value = v0;
  result.is_nil = v1;
  return result;
}

uint64_t sub_1D8DB9B24()
{
  v1 = *(v0 + 192);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B30, &unk_1D918E010);
  sub_1D8CF48EC(&qword_1EDCD0B48, &qword_1ECAB4B30, &unk_1D918E010);
  sub_1D9177A6C();
}

uint64_t sub_1D8DB9BC0(void **a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_1D917697C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  sub_1D9176B6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6AB8, &qword_1D9194688);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189080;
  *(inited + 32) = v9;
  v11 = v9;
  sub_1D8DB9EE8(inited);
  swift_setDeallocating();
  sub_1D8DBA0E0(inited + 32);
  sub_1D9176ADC();

  v13 = a2(v12);
  (*(v5 + 8))(v8, v4);
  return v13;
}

uint64_t sub_1D8DB9EE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8518, &qword_1D91A1A68);
    v3 = sub_1D917942C();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_1D917820C();
      sub_1D9179DBC();
      v29 = v7;
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      v9 = sub_1D9179E1C();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_1D917820C();
        v20 = v19;
        if (v18 == sub_1D917820C() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_1D9179ACC();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D8DBA0E0(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D8DBA14C()
{
  v1 = *(sub_1D9177EDC() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1D8DBA2B0(v3, v0 + v2);
}

uint64_t Cache.subscript.setter(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1D8D498FC(a1, a2);
  (*(*(*(v5 + 80) - 8) + 8))(a2);
  v6 = *(v5 + 88);
  v7 = sub_1D91791BC();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

void sub_1D8DBA2B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (*(Strong + OBJC_IVAR___PFDeferredLaunchTaskCoordinator__timeoutScheduled) == 1)
    {
      if (qword_1EDCD2400 != -1)
      {
        swift_once();
      }

      v5 = sub_1D917744C();
      __swift_project_value_buffer(v5, qword_1EDCDE818);
      v6 = sub_1D917741C();
      v7 = sub_1D9178CFC();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v10 = v9;
        *v8 = 136446210;
        *(v8 + 4) = sub_1D8CFA924(0xD000000000000020, 0x80000001D91D98C0, &v10);
        _os_log_impl(&dword_1D8CEC000, v6, v7, "%{public}s called twice. Ignoring the second call.", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v9);
        MEMORY[0x1DA72CB90](v9, -1, -1);
        MEMORY[0x1DA72CB90](v8, -1, -1);
      }
    }

    else
    {
      *(Strong + OBJC_IVAR___PFDeferredLaunchTaskCoordinator__timeoutScheduled) = 1;
      sub_1D8DBA4C8(a2);
    }
  }
}

uint64_t CacheDomain.DiskCaches.directory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D9176C2C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1D8DBA4C8(uint64_t a1)
{
  v2 = v1;
  v22 = a1;
  ObjectType = swift_getObjectType();
  v4 = sub_1D9177E0C();
  v21 = *(v4 - 8);
  v5 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9177E9C();
  v19 = *(v8 - 8);
  v20 = v8;
  v9 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + OBJC_IVAR___PFDeferredLaunchTaskCoordinator__adminQueue);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = ObjectType;
  aBlock[4] = sub_1D915D71C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_40_3;
  v15 = _Block_copy(aBlock);
  v16 = v12;

  sub_1D9177E4C();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD690(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A360](v22, v11, v7, v15);
  _Block_release(v15);

  (*(v21 + 8))(v7, v4);
  (*(v19 + 8))(v11, v20);
}

uint64_t sub_1D8DBA7D4()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DBA884()
{
  v1 = v0;
  v2 = sub_1D917744C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCD5AA8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_1EDCD0690);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_1D917741C();
  v9 = sub_1D9178D1C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1D8CEC000, v8, v9, "Force fetching latest channel updates", v10, 2u);
    MEMORY[0x1DA72CB90](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = *(v1 + OBJC_IVAR___MTPurchaseControllerWrapper_purchaseController);
  return sub_1D8DBAA4C(0);
}

uint64_t sub_1D8DBAA4C(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1D9177E0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D9177E9C();
  v9 = *(v18 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x68));
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = a1 & 1;
  *(v13 + 32) = ObjectType;
  aBlock[4] = sub_1D8DBB1A4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_70;
  v14 = _Block_copy(aBlock);
  v15 = v1;
  sub_1D9177E4C();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD720(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v12, v8, v14);
  _Block_release(v14);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v18);
}

uint64_t sub_1D8DBAD54()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DBADF0()
{
  v1 = v0;
  v2 = sub_1D917744C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22[-v8];
  v10 = *(v1 + OBJC_IVAR___MTPurchaseControllerWrapper_purchaseController);
  v11 = *((*MEMORY[0x1E69E7D40] & *v10) + 0xA8);
  swift_beginAccess();
  v12 = *(v10 + v11);

  os_unfair_lock_lock((v12 + 20));
  LODWORD(v11) = *(v12 + 16);
  os_unfair_lock_unlock((v12 + 20));

  if (v11 == 1)
  {
    if (qword_1EDCD5AA8 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v2, qword_1EDCD0690);
    swift_beginAccess();
    (*(v3 + 16))(v9, v13, v2);
    v14 = sub_1D917741C();
    v15 = sub_1D9178D1C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D8CEC000, v14, v15, "receivedEntitlementsNotification = true, force fetching latest channel updates", v16, 2u);
      MEMORY[0x1DA72CB90](v16, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
    return sub_1D8DBA884();
  }

  else
  {
    if (qword_1EDCD5AA8 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v2, qword_1EDCD0690);
    swift_beginAccess();
    (*(v3 + 16))(v6, v18, v2);
    v19 = sub_1D917741C();
    v20 = sub_1D9178D1C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1D8CEC000, v19, v20, "receivedEntitlementsNotification = false, not force fetching latest channel updates", v21, 2u);
      MEMORY[0x1DA72CB90](v21, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t static DownloadEnvironment.live.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1EDCD4208 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1D8DBBEB4(&unk_1EDCD4210, v2);
}

id sub_1D8DBB1B4()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 privateQueueContext];

  v2 = type metadata accessor for CoreDataDownloadPersistence();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v11 = v2;
  v12 = &protocol witness table for CoreDataDownloadPersistence;
  *&v10 = v3;
  v4 = [objc_opt_self() defaultManager];
  v8 = sub_1D8DBBB40();
  v9 = &protocol witness table for NSFileManager;
  *&v7 = v4;
  if (qword_1EDCD0990 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDCD0998;
  sub_1D8D6BCE0(&v10, &unk_1EDCD4210);
  sub_1D8D6BCE0(&v7, &unk_1EDCD4238);
  qword_1EDCD4260 = v6;

  return v6;
}

void sub_1D8DBB318(void *a1, char a2, uint64_t a3)
{
  v6 = sub_1D917744C();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v47 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v47 - v15;
  v17 = [objc_opt_self() ams_sharedAccountStore];
  v18 = [v17 ams_activeiTunesAccount];

  if (v18)
  {

    if (([objc_opt_self() acknowledgementNeededForPrivacyIdentifier_] & 1) == 0)
    {
      if (a2)
      {
        v53 = a1;
        v23 = swift_allocObject();
        v52 = v23;
        *(v23 + 16) = MEMORY[0x1E69E7CC0];
        v24 = v23 + 16;
        if (qword_1EDCD5AA8 != -1)
        {
          swift_once();
        }

        v25 = __swift_project_value_buffer(v6, qword_1EDCD0690);
        swift_beginAccess();
        v26 = v7[2];
        v49 = v7 + 2;
        v50 = v25;
        v48 = v26;
        v26(v14, v25, v6);
        v27 = sub_1D917741C();
        v28 = sub_1D9178D1C();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_1D8CEC000, v27, v28, "Fetching all channels for personalization.", v29, 2u);
          MEMORY[0x1DA72CB90](v29, -1, -1);
        }

        v47 = v7[1];
        v47(v14, v6);
        v30 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
        v31 = [objc_opt_self() predicateWithValue_];
        [v30 setPredicate_];

        v32 = [objc_opt_self() sharedInstance];
        v33 = [v32 privateQueueContext];

        v34 = swift_allocObject();
        v34[2] = v30;
        v34[3] = v24;
        v34[4] = a3;
        v35 = swift_allocObject();
        *(v35 + 16) = sub_1D9076224;
        *(v35 + 24) = v34;
        v58 = sub_1D8D24508;
        v59 = v35;
        aBlock = MEMORY[0x1E69E9820];
        v55 = 1107296256;
        v56 = sub_1D8D24488;
        v57 = &block_descriptor_17_7;
        v36 = _Block_copy(&aBlock);
        v51 = v30;

        [v33 performBlockAndWait_];

        _Block_release(v36);
        LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

        if (v30)
        {
          __break(1u);
        }

        else
        {
          v37 = v53;
          if (*(*v24 + 16))
          {
            v48(v11, v50, v6);
            v38 = sub_1D917741C();
            v39 = sub_1D9178D1C();
            if (os_log_type_enabled(v38, v39))
            {
              v40 = swift_slowAlloc();
              *v40 = 0;
              _os_log_impl(&dword_1D8CEC000, v38, v39, "Retrieving personalized polling interval.", v40, 2u);
              MEMORY[0x1DA72CB90](v40, -1, -1);
            }

            v47(v11, v6);
            v41 = [objc_opt_self() sharedInstance];
            v42 = [v41 personalizedChannelPollingInterval];

            v43 = [v42 asyncValuePromiseOnQueue_];
            v44 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v45 = swift_allocObject();
            *(v45 + 16) = v52;
            *(v45 + 24) = v44;
            v58 = sub_1D9076230;
            v59 = v45;
            aBlock = MEMORY[0x1E69E9820];
            v55 = 1107296256;
            v56 = sub_1D8D5960C;
            v57 = &block_descriptor_24_8;
            v46 = _Block_copy(&aBlock);

            [v43 addFinishBlock_];
            _Block_release(v46);
          }

          else
          {
          }
        }
      }

      else
      {
        sub_1D9071A38();
      }
    }
  }

  else
  {
    if (qword_1EDCD5AA8 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v6, qword_1EDCD0690);
    swift_beginAccess();
    (v7[2])(v16, v19, v6);
    v20 = sub_1D917741C();
    v21 = sub_1D9178D1C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1D8CEC000, v20, v21, "Resetting subscription cache since user is not signed in.", v22, 2u);
      MEMORY[0x1DA72CB90](v22, -1, -1);
    }

    (v7[1])(v16, v6);
    sub_1D8DBBB8C();
  }
}

uint64_t sub_1D8DBBAFC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_1D8DBBB40()
{
  result = qword_1EDCD0A10;
  if (!qword_1EDCD0A10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCD0A10);
  }

  return result;
}

uint64_t sub_1D8DBBB8C()
{
  v1 = sub_1D9177E0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D9177E9C();
  v6 = *(v15 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x68));
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_1D8DBC264;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_60_2;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  sub_1D9177E4C();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD720(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v9, v5, v11);
  _Block_release(v11);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v15);
}

uint64_t sub_1D8DBBE78()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DBBF44(void *a1)
{
  v2 = sub_1D917744C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCD5AA8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_1EDCD0690);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_1D917741C();
  v9 = sub_1D9178D1C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1D8CEC000, v8, v9, "Resetting all subs to not subscribed state", v10, 2u);
    MEMORY[0x1DA72CB90](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  sub_1D8DBC35C(MEMORY[0x1E69E7CC0]);

  *(a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0x90)) = 1;
  return result;
}

id DownloadConsistency.init(issueIdentifier:resolutionStrategy:effectApplicator:downloadEnvironment:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  *&v4[OBJC_IVAR___PFDownloadConsistency_listener] = 0;
  sub_1D8CFD9D8(a1, &v4[OBJC_IVAR___PFDownloadConsistency_identifier]);
  sub_1D8CFD9D8(a2, &v4[OBJC_IVAR___PFDownloadConsistency_resolutionStrategy]);
  sub_1D8CFD9D8(a3, &v4[OBJC_IVAR___PFDownloadConsistency_effectApplicator]);
  sub_1D8DBBEB4(a4, &v4[OBJC_IVAR___PFDownloadConsistency_environment]);
  v11.receiver = v4;
  v11.super_class = type metadata accessor for DownloadConsistency();
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_1D8DBC210(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

uint64_t sub_1D8DBC324()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DBC35C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1D917744C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x1E69E7CD0];
  v24 = v8 + 16;
  v9 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v10 = [objc_opt_self() predicateWithValue_];
  [v9 setPredicate_];

  v11 = [objc_opt_self() sharedInstance];
  v12 = [v11 privateQueueContext];

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = v9;
  v14[5] = v8;
  v14[6] = ObjectType;
  aBlock[4] = sub_1D90762E8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_54_1;
  v15 = _Block_copy(aBlock);

  v16 = v9;

  [v12 performBlockAndWaitWithSave_];
  _Block_release(v15);

  if (qword_1EDCD5AA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_1EDCD0690);
  swift_beginAccess();
  (*(v4 + 16))(v7, v17, v3);
  v18 = sub_1D917741C();
  v19 = sub_1D9178D1C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1D8CEC000, v18, v19, "Finished updating subscriptions.", v20, 2u);
    MEMORY[0x1DA72CB90](v20, -1, -1);
    v21 = v16;
  }

  else
  {
    v21 = v18;
    v18 = v16;
  }

  (*(v4 + 8))(v7, v3);
  swift_beginAccess();
  v22 = *(v8 + 16);

  return v22;
}

uint64_t sub_1D8DBC728()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DBC760()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1D8DBC7B0(uint64_t a1, uint64_t a2)
{
  v76 = a2;
  v75 = a1;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5360, &unk_1D918EDC0);
  v74 = *(v73 - 8);
  v3 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v72 = v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v69 = v53 - v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5368, &qword_1D918EDD0);
  v59 = *(v58 - 8);
  v8 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v56 = v53 - v9;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5370, &qword_1D918EDD8);
  v63 = *(v62 - 8);
  v10 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v57 = v53 - v11;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5378, &qword_1D918EDE0);
  v65 = *(v64 - 8);
  v12 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v60 = v53 - v13;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5380, &qword_1D918EDE8);
  v68 = *(v67 - 8);
  v14 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v61 = v53 - v15;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5388, &unk_1D918EDF0);
  v71 = *(v70 - 8);
  v16 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v66 = v53 - v17;
  v18 = v2 + OBJC_IVAR___PFDownloadConsistency_environment;
  v54 = v2 + OBJC_IVAR___PFDownloadConsistency_environment;
  v19 = OBJC_IVAR___PFDownloadConsistency_identifier;
  swift_beginAccess();
  v55 = v2;
  sub_1D8CFD9D8(v2 + v19, &v77);
  v20 = *(&v78 + 1);
  v21 = v79;
  __swift_project_boxed_opaque_existential_1(&v77, *(&v78 + 1));
  v84 = (*(v21 + 8))(v18, v20, v21);
  sub_1D8CFD9D8(v2 + OBJC_IVAR___PFDownloadConsistency_resolutionStrategy, &v83);
  v22 = swift_allocObject();
  sub_1D8D6BCE0(&v83, v22 + 16);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1D8E84BBC;
  *(v23 + 24) = v22;
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB52E0, &qword_1D918EB70);
  type metadata accessor for DownloadConsistency.IssueResolution(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5200, &qword_1D918EE00);
  v53[1] = MEMORY[0x1E695BED8];
  sub_1D8CF48EC(&qword_1EDCD0BB0, &qword_1ECAB52E0, &qword_1D918EB70);
  sub_1D8CF48EC(&qword_1EDCD0BB8, &qword_1ECAB5200, &qword_1D918EE00);
  v24 = v56;
  sub_1D9177CBC();

  __swift_destroy_boxed_opaque_existential_1Tm(&v77);
  v53[0] = MEMORY[0x1E695BE40];
  sub_1D8CF48EC(&qword_1EDCD0C48, &qword_1ECAB5368, &qword_1D918EDD0);
  v25 = v57;
  v26 = v58;
  sub_1D9177C4C();
  (*(v59 + 8))(v24, v26);
  v27 = v54;
  sub_1D8DBBEB4(v54, &v77);
  v28 = swift_allocObject();
  v29 = v55;
  *(v28 + 16) = v55;
  v30 = v80;
  *(v28 + 56) = v79;
  *(v28 + 72) = v30;
  *(v28 + 88) = v81;
  *(v28 + 104) = v82;
  v31 = v78;
  *(v28 + 24) = v77;
  *(v28 + 40) = v31;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1D8E85684;
  *(v32 + 24) = v28;
  v33 = v29;
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5390, &qword_1D918EE08);
  sub_1D8CF48EC(&qword_1EDCD0C68, &qword_1ECAB5370, &qword_1D918EDD8);
  sub_1D8CF48EC(&qword_1EDCD0B90, &qword_1ECAB5390, &qword_1D918EE08);
  v34 = v60;
  v35 = v62;
  sub_1D9177CAC();

  (*(v63 + 8))(v25, v35);
  sub_1D8CF48EC(&qword_1EDCD0C40, &qword_1ECAB5378, &qword_1D918EDE0);
  v36 = v61;
  v37 = v64;
  sub_1D9177C4C();
  (*(v65 + 8))(v34, v37);
  v38 = *(v27 + 80);
  v39 = sub_1D9178DBC();
  v40 = v69;
  (*(*(v39 - 8) + 56))(v69, 1, 1, v39);
  *&v77 = v38;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1EDCD0C60, &qword_1ECAB5380, &qword_1D918EDE8);
  sub_1D8D02DF0();
  v41 = v72;
  v42 = v67;
  v43 = v36;
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB09C0, &qword_1ECAB5360, &unk_1D918EDC0);
  v44 = v66;
  v45 = v73;
  sub_1D9177CEC();
  (*(v74 + 8))(v41, v45);
  sub_1D8D08A50(v40, &qword_1ECAB4D70, &unk_1D918BCE0);
  (*(v68 + 8))(v43, v42);
  v46 = swift_allocObject();
  v47 = v75;
  v48 = v76;
  *(v46 + 16) = v75;
  *(v46 + 24) = v48;
  sub_1D8D1F93C(v47);
  sub_1D8CF48EC(&unk_1ECAB03D8, &qword_1ECAB5388, &unk_1D918EDF0);
  v49 = v70;
  v50 = sub_1D9177BCC();

  (*(v71 + 8))(v44, v49);
  v51 = *&v33[OBJC_IVAR___PFDownloadConsistency_listener];
  *&v33[OBJC_IVAR___PFDownloadConsistency_listener] = v50;
}

uint64_t sub_1D8DBD2A8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DBD2E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DBD318()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D8DBD368()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t type metadata accessor for DownloadedAssetEffect()
{
  result = qword_1EDCD37D0;
  if (!qword_1EDCD37D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D8DBD4A0()
{
  sub_1D8DBD55C();
  if (v0 <= 0x3F)
  {
    sub_1D8DBD514();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D8DBD514()
{
  if (!qword_1ECAB2CB8)
  {
    v0 = sub_1D9176C2C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECAB2CB8);
    }
  }
}

uint64_t sub_1D8DBD55C()
{
  result = qword_1ECAB0130;
  if (!qword_1ECAB0130)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1ECAB0130);
  }

  return result;
}

uint64_t sub_1D8DBD5D4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v92 = a3;
  v93 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4168, &qword_1D9188BD8);
  v7 = *(v6 - 8);
  v90 = v6;
  v91 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v89 = &v65 - v9;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4170, &unk_1D9188BE0);
  v76 = *(v78 - 8);
  v10 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v12 = &v65 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v65 - v15;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4178, &qword_1D9188BF0);
  v81 = *(v79 - 8);
  v17 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v19 = &v65 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4180, &qword_1D9188BF8);
  v21 = *(v20 - 8);
  v83 = v20;
  v84 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v77 = &v65 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4188, &qword_1D9188C00);
  v25 = *(v24 - 8);
  v85 = v24;
  v86 = v25;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v80 = &v65 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4190, &qword_1D9188C08);
  v29 = *(v28 - 8);
  v87 = v28;
  v88 = v29;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v82 = &v65 - v31;
  v32 = swift_allocObject();
  *(v32 + 16) = a2;
  *(v32 + 24) = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4198, &unk_1D9188C10);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();

  v36 = sub_1D9177A5C();
  v74 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_workQueue);
  v37 = v74;
  v73 = sub_1D9178DBC();
  v38 = *(v73 - 8);
  v72 = *(v38 + 56);
  v75 = v38 + 56;
  v72(v16, 1, 1, v73);
  v94 = v36;
  v95 = v37;
  v39 = sub_1D8CFD888();
  v67 = MEMORY[0x1E695C038];
  sub_1D8CF48EC(&qword_1ECAB0218, &qword_1ECAB4198, &unk_1D9188C10);
  v40 = sub_1D8CFBB20(&qword_1EDCD0980, sub_1D8CFD888);
  v70 = v39;
  v69 = v40;
  sub_1D9177D3C();
  v71 = MEMORY[0x1E695BCB8];
  sub_1D8CF48EC(&qword_1ECAB09E8, &qword_1ECAB4170, &unk_1D9188BE0);
  v41 = v19;
  v42 = v16;
  v68 = v16;
  v43 = v78;
  sub_1D9177CEC();

  (*(v76 + 8))(v12, v43);
  sub_1D8D08A50(v42, &qword_1ECAB4D70, &unk_1D918BCE0);
  v44 = swift_allocObject();
  *(v44 + 16) = sub_1D8E25F8C;
  *(v44 + 24) = a1;
  v66 = a1;

  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41A0, &qword_1D91A8140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41A8, &qword_1D9188C20);
  v78 = MEMORY[0x1E695BE98];
  sub_1D8CF48EC(&qword_1ECAB0410, &qword_1ECAB4178, &qword_1D9188BF0);
  sub_1D8CF48EC(&qword_1ECAB0268, &qword_1ECAB41A8, &qword_1D9188C20);
  v45 = v77;
  v46 = v79;
  sub_1D9177CBC();

  (*(v81 + 8))(v41, v46);
  v47 = swift_allocObject();
  v48 = v66;
  *(v47 + 16) = sub_1D8E25FB8;
  *(v47 + 24) = v48;

  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41B0, &qword_1D9188C28);
  sub_1D8CF48EC(&unk_1ECAB0590, &qword_1ECAB4180, &qword_1D9188BF8);
  sub_1D8CF48EC(&qword_1ECAB0210, &qword_1ECAB41B0, &qword_1D9188C28);
  v49 = v80;
  v50 = v83;
  sub_1D9177CAC();

  (*(v84 + 8))(v45, v50);
  v51 = v68;
  v72(v68, 1, 1, v73);
  v95 = v74;
  sub_1D8CF48EC(&qword_1ECAB0578, &qword_1ECAB4188, &qword_1D9188C00);
  v52 = v89;
  v53 = v85;
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB09A0, &qword_1ECAB4168, &qword_1D9188BD8);
  v54 = v82;
  v55 = v90;
  sub_1D9177CEC();
  (*(v91 + 8))(v52, v55);
  sub_1D8D08A50(v51, &qword_1ECAB4D70, &unk_1D918BCE0);
  (*(v86 + 8))(v49, v53);
  v56 = swift_allocObject();
  v58 = v92;
  v57 = v93;
  *(v56 + 16) = v92;
  *(v56 + 24) = v57;
  v59 = swift_allocObject();
  v59[2] = v48;
  v59[3] = v58;
  v59[4] = v57;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_1D8E25FEC;
  *(v60 + 24) = v59;
  sub_1D8D1F93C(v58);

  sub_1D8D1F93C(v58);
  sub_1D8CF48EC(&qword_1ECAB03C0, &qword_1ECAB4190, &qword_1D9188C08);
  v61 = v87;
  v62 = sub_1D9177BCC();

  (*(v88 + 8))(v54, v61);
  v63 = *(v48 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_syncSession);
  *(v48 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_syncSession) = v62;
}

uint64_t sub_1D8DBE078()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DBE0B0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DBE0F0()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return swift_deallocObject();
}

void sub_1D8DBE194()
{
  type metadata accessor for DownloadConsistency.Issue(319);
  if (v0 <= 0x3F)
  {
    sub_1D8DBE570();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D8DBE23C(uint64_t (*a1)(uint64_t *), uint64_t a2, char a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  if (a3)
  {

    v16 = 0;
    v17 = 0;
    return a1(&v16);
  }

  else
  {
    v14 = sub_1D917886C();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a4;
    v15[5] = sub_1D8D49C40;
    v15[6] = v12;

    sub_1D8E91268(0, 0, v11, &unk_1D9188C48, v15);
  }
}

uint64_t sub_1D8DBE3C4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return swift_deallocObject();
}

void sub_1D8DBE410()
{
  sub_1D8DBE490();
  if (v0 <= 0x3F)
  {
    sub_1D8DBE4FC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D8DBE490()
{
  if (!qword_1ECAB2C60)
  {
    sub_1D9176EAC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECAB2C60);
    }
  }
}

void sub_1D8DBE4FC()
{
  if (!qword_1ECAB2C68)
  {
    sub_1D9176EAC();
    sub_1D9176C2C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECAB2C68);
    }
  }
}

void sub_1D8DBE570()
{
  if (!qword_1ECAAFF48)
  {
    type metadata accessor for DownloadedAssetEffect();
    v0 = sub_1D91786FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECAAFF48);
    }
  }
}

uint64_t sub_1D8DBE5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_1D8DBFCEC;

  return sub_1D8DBFB30();
}

uint64_t sub_1D8DBE65C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D8D58924;

  return sub_1D8DBE5C8(a1, v4, v5, v6, v7, v8);
}

uint64_t CompoundDownloadedAssetIssueIdentifier.startIdentifyingIssues(for:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB52B8, &unk_1D918EB40);
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB52C0, &qword_1D918EB50);
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - v14;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB52C8, &qword_1D918EB58);
  v41 = *(v38 - 8);
  v16 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v34 = &v34 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB52D0, &qword_1D918EB60);
  v19 = *(v18 - 8);
  v39 = v18;
  v40 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v34 - v21;
  *&v42[0] = *v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB52D8, &qword_1D918EB68);
  sub_1D8CF48EC(&qword_1EDCD0A70, &qword_1ECAB52D8, &qword_1D918EB68);
  sub_1D917773C();
  v23 = *(a1 + 80);
  v24 = sub_1D9178DBC();
  (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
  *&v42[0] = v23;
  sub_1D8CFD888();
  sub_1D8CF48EC(&qword_1EDCD0C18, &qword_1ECAB52C0, &qword_1D918EB50);
  sub_1D8D02DF0();
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0990, &qword_1ECAB52B8, &unk_1D918EB40);
  v25 = v36;
  sub_1D9177CEC();
  (*(v37 + 8))(v7, v25);
  sub_1D8D2210C(v11);
  (*(v35 + 8))(v15, v12);
  sub_1D8DBBEB4(a1, v42);
  v26 = swift_allocObject();
  v27 = v42[3];
  *(v26 + 48) = v42[2];
  *(v26 + 64) = v27;
  *(v26 + 80) = v42[4];
  *(v26 + 96) = v43;
  v28 = v42[1];
  *(v26 + 16) = v42[0];
  *(v26 + 32) = v28;
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB52E0, &qword_1D918EB70);
  sub_1D8CF48EC(&qword_1ECAB03B0, &qword_1ECAB52C8, &qword_1D918EB58);
  sub_1D8CF48EC(&qword_1EDCD0BB0, &qword_1ECAB52E0, &qword_1D918EB70);
  v29 = v38;
  v30 = v34;
  sub_1D9177DCC();

  (*(v41 + 8))(v30, v29);
  sub_1D8CF48EC(&qword_1ECAB05E8, &qword_1ECAB52D0, &qword_1D918EB60);
  v31 = v39;
  v32 = sub_1D9177B1C();
  (*(v40 + 8))(v22, v31);
  return v32;
}

uint64_t sub_1D8DBED08()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1D8DBED50(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1D8DBEE54()
{
  v1 = [*(v0 + 160) fetchCategoriesSyncThresholdValue];
  *(v0 + 168) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1D8DBF220;
  v2 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41B8, qword_1D91BEDB0);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D8D5F354;
  *(v0 + 104) = &block_descriptor_0;
  *(v0 + 112) = v2;
  [v1 asyncValueWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D8DBEFF4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D8DBED50;

  return IMURLBag.getCategoriesSyncThreshold()();
}

uint64_t sub_1D8DBF084()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_categoriesSyncThresholdProvider);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_1D8DBF9B4;

  return v8(v2, v3);
}

uint64_t sub_1D8DBF1B4()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D8DBF220()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1D8E26074;
  }

  else
  {
    v3 = sub_1D8DBF1B4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D8DBF330()
{
  v58 = v0;
  v1 = *(v0 + 72);
  v56 = 0.0;
  v57 = 1;
  MEMORY[0x1DA72A000](v1, &v56);
  if (v57)
  {
    if (qword_1ECAB0BF0 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 72);
    v3 = sub_1D917744C();
    __swift_project_value_buffer(v3, qword_1ECAB0BF8);
    v4 = v2;
    v5 = sub_1D917741C();
    v6 = sub_1D9178CFC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 72);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v7;
      *v9 = v7;
      v10 = v7;
      _os_log_impl(&dword_1D8CEC000, v5, v6, "[Categories Sync] Unable to convert threshold bag value to type Double. Threshold bag value: %@", v8, 0xCu);
      sub_1D8D08A50(v9, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v9, -1, -1);
      MEMORY[0x1DA72CB90](v8, -1, -1);
    }

    v11 = 0;
LABEL_21:
    sub_1D8DBFC08();
    swift_allocError();
    *v39 = v11;
    v40 = *(v0 + 72);
    swift_willThrow();

    v42 = *(v0 + 48);
    v41 = *(v0 + 56);
    v43 = *(v0 + 40);

    v44 = *(v0 + 8);
    goto LABEL_22;
  }

  v12 = v56;
  if (v56 < 0.0)
  {
    if (qword_1ECAB0BF0 != -1)
    {
      swift_once();
    }

    v13 = sub_1D917744C();
    __swift_project_value_buffer(v13, qword_1ECAB0BF8);
    v14 = sub_1D917741C();
    v15 = sub_1D9178CFC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D8CEC000, v14, v15, "[Categories Sync] Received a negative threshold value. Not syncing. ", v16, 2u);
      MEMORY[0x1DA72CB90](v16, -1, -1);
    }

    v11 = 3;
    goto LABEL_21;
  }

  if (qword_1ECAB0BF0 != -1)
  {
    swift_once();
  }

  v17 = sub_1D917744C();
  __swift_project_value_buffer(v17, qword_1ECAB0BF8);
  v18 = sub_1D917741C();
  v19 = sub_1D9178D1C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = v12;
    _os_log_impl(&dword_1D8CEC000, v18, v19, "[Categories sync] Got threshold value from the bag: %f", v20, 0xCu);
    MEMORY[0x1DA72CB90](v20, -1, -1);
  }

  v22 = *(v0 + 48);
  v21 = *(v0 + 56);
  v24 = *(v0 + 32);
  v23 = *(v0 + 40);
  v26 = *(v0 + 16);
  v25 = *(v0 + 24);

  sub_1D9176E0C();
  v54 = *(v24 + 16);
  v55 = v26;
  v53 = OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_lastCategoriesSyncDate;
  v54(v23, v26 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_lastCategoriesSyncDate, v25);
  sub_1D9176DBC();
  v27 = *(v24 + 8);
  v27(v23, v25);
  sub_1D8CFBB20(&qword_1EDCD5940, MEMORY[0x1E6969530]);
  v28 = sub_1D917818C();
  v27(v22, v25);
  v27(v21, v25);
  if (v28)
  {
    v29 = *(v0 + 16);

    v30 = sub_1D917741C();
    v31 = sub_1D9178D1C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = *(v0 + 56);
      v33 = *(v0 + 24);
      v34 = swift_slowAlloc();
      *&v52 = COERCE_DOUBLE(swift_slowAlloc());
      v56 = *&v52;
      *v34 = 136315138;
      v54(v32, v55 + v53, v33);
      sub_1D8CFBB20(&qword_1EDCD5930, MEMORY[0x1E6969530]);
      v35 = sub_1D9179A4C();
      v37 = v36;
      v27(v32, v33);
      v38 = sub_1D8CFA924(v35, v37, &v56);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_1D8CEC000, v30, v31, "[Categories Sync] Not syncing because not past threshold -- last synced at: %s.", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x1DA72CB90](v52, -1, -1);
      MEMORY[0x1DA72CB90](v34, -1, -1);
    }

    v11 = 1;
    goto LABEL_21;
  }

  v46 = sub_1D917741C();
  v47 = sub_1D9178D1C();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_1D8CEC000, v46, v47, "[Categories Sync] Past threshold -- Syncing Categories.", v48, 2u);
    MEMORY[0x1DA72CB90](v48, -1, -1);
  }

  v50 = *(v0 + 48);
  v49 = *(v0 + 56);
  v51 = *(v0 + 40);

  v44 = *(v0 + 8);
LABEL_22:

  return v44();
}

uint64_t sub_1D8DBF9B4(uint64_t a1)
{
  v3 = *(*v2 + 64);
  v4 = *v2;
  v4[9] = a1;

  if (v1)
  {
    v6 = v4[6];
    v5 = v4[7];
    v7 = v4[5];

    v8 = v4[1];

    return v8();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D8DBF330, 0, 0);
  }
}

uint64_t sub_1D8DBFB30()
{
  v1[2] = v0;
  v2 = sub_1D9176E3C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8DBF084, 0, 0);
}

unint64_t sub_1D8DBFC08()
{
  result = qword_1ECAB2058;
  if (!qword_1ECAB2058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2058);
  }

  return result;
}

uint64_t sub_1D8DBFC5C()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v1;
  v3(v1, 1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D8DBFCEC()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_1D8DBFC5C;
  }

  else
  {
    v3 = sub_1D8E25278;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1D8DBFE08(void **a1, void (*a2)(void, void *))
{
  v2 = *a1;
  if (*a1)
  {
    v4 = v2;
    if (qword_1ECAB0BF0 != -1)
    {
      swift_once();
    }

    v5 = sub_1D917744C();
    __swift_project_value_buffer(v5, qword_1ECAB0BF8);
    v6 = v2;
    v7 = sub_1D917741C();
    v8 = sub_1D9178CFC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = sub_1D9176A5C();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&dword_1D8CEC000, v7, v8, "[Categories Sync] Sync failed with error: %@", v9, 0xCu);
      sub_1D8D08A50(v10, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v10, -1, -1);
      MEMORY[0x1DA72CB90](v9, -1, -1);
    }

    if (a2)
    {
      v12 = v2;
      a2(0, v2);
    }
  }
}

void sub_1D8DBFFC8()
{
  v0 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  if (v1)
  {
    qword_1ECAAFC80 = v1;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1D8DC03F0()
{
  result = qword_1ECAAFCE8;
  if (!qword_1ECAAFCE8)
  {
    type metadata accessor for MTPodcastEpisodeLimit(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFCE8);
  }

  return result;
}

uint64_t sub_1D8DC04A8(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_1D9179C3C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t sub_1D8DC053C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v6 = sub_1D9179ADC();
  v8 = sub_1D8D3707C(v6, v7);
  v10 = v9;
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v8;
  *(a2 + 8) = v10;
  return result;
}

uint64_t Sequence.uniqued<A>(by:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *a1;
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(v15 + *MEMORY[0x1E69E77B0] + 8);
  v25 = sub_1D917800C();
  (*(v11 + 16))(v14, v5, a2);
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a1;
  v24 = &v25;
  v17 = sub_1D917848C();

  return v17;
}

BOOL sub_1D8DC07EC(void *a1, uint64_t *a2)
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

uint64_t sub_1D8DC0848@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1D917820C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t _s18PodcastsFoundation23RecommendationsMetadataV10CategoriesV8MetadataVwet_0(uint64_t a1, int a2)
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

uint64_t _s18PodcastsFoundation23RecommendationsMetadataV10CategoriesV8MetadataVwst_0(uint64_t result, int a2, int a3)
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

uint64_t sub_1D8DC08BC()
{
  v1 = v0[2];

  if (v0[4])
  {
    v2 = v0[5];
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC0904()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DC093C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DC097C()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DC09C4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1D8DC0A18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DC0A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43E0, &qword_1D9188F48);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D8DC0B8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43E0, &qword_1D9188F48);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

char *sub_1D8DC0CCC(char *a1, int64_t a2, char a3)
{
  result = sub_1D8E33770(a1, a2, a3, *v3, &qword_1ECAB46E8, &unk_1D9192140);
  *v3 = result;
  return result;
}

uint64_t sub_1D8DC0D04()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DC0D3C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_1D8CFEACC(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return swift_deallocObject();
}

uint64_t sub_1D8DC0D98()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC0DD0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DC0E10()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DC0E58()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DC0E98()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4858, &unk_1D918A6E0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for MediaRequest.Params();
  v6 = (v3 + v4 + *(*(v5 - 1) + 80)) & ~*(*(v5 - 1) + 80);
  v7 = *(*(v5 - 1) + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v8 = v0 + v6;
  sub_1D8D85E5C(*(v0 + v6), *(v0 + v6 + 8), *(v0 + v6 + 16), *(v0 + v6 + 24), *(v0 + v6 + 32), *(v0 + v6 + 40));
  v9 = *(v0 + v6 + 48);

  v10 = *(v0 + v6 + 56);

  v11 = *(v0 + v6 + 64);

  v12 = *(v0 + v6 + 72);

  v13 = *(v0 + v6 + 80);

  v14 = *(v0 + v6 + 88);

  v15 = *(v0 + v6 + 96);

  v16 = *(v0 + v6 + 104);

  v17 = *(v0 + v6 + 112);

  v18 = *(v0 + v6 + 120);

  v19 = *(v0 + v6 + 128);

  v20 = *(v0 + v6 + 136);

  v21 = *(v0 + v6 + 144);

  v22 = *(v0 + v6 + 176);

  v23 = *(v0 + v6 + 184);

  v24 = v5[28];
  v25 = sub_1D9176C2C();
  v26 = *(v25 - 8);
  if (!(*(v26 + 48))(v0 + v6 + v24, 1, v25))
  {
    (*(v26 + 8))(v8 + v24, v25);
  }

  v27 = *(v8 + v5[29] + 8);

  v28 = *(v8 + v5[31] + 8);

  v29 = *(v8 + v5[32]);

  v30 = *(v8 + v5[33] + 8);

  v31 = *(v8 + v5[35] + 8);

  return swift_deallocObject();
}

uint64_t sub_1D8DC1124()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DC115C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DC119C()
{
  v1 = type metadata accessor for MediaRequest.Params();
  v2 = *(*(v1 - 1) + 64);
  v3 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v4 = v0 + v3;
  sub_1D8D85E5C(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16), *(v0 + v3 + 24), *(v0 + v3 + 32), *(v0 + v3 + 40));
  v5 = *(v0 + v3 + 48);

  v6 = *(v0 + v3 + 56);

  v7 = *(v0 + v3 + 64);

  v8 = *(v0 + v3 + 72);

  v9 = *(v0 + v3 + 80);

  v10 = *(v0 + v3 + 88);

  v11 = *(v0 + v3 + 96);

  v12 = *(v0 + v3 + 104);

  v13 = *(v0 + v3 + 112);

  v14 = *(v0 + v3 + 120);

  v15 = *(v0 + v3 + 128);

  v16 = *(v0 + v3 + 136);

  v17 = *(v0 + v3 + 144);

  v18 = *(v0 + v3 + 176);

  v19 = *(v0 + v3 + 184);

  v20 = v1[28];
  v21 = sub_1D9176C2C();
  v22 = *(v21 - 8);
  if (!(*(v22 + 48))(v0 + v3 + v20, 1, v21))
  {
    (*(v22 + 8))(v4 + v20, v21);
  }

  v23 = (v2 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (((v23 + 15) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v4 + v1[29] + 8);

  v26 = *(v4 + v1[31] + 8);

  v27 = *(v4 + v1[32]);

  v28 = *(v4 + v1[33] + 8);

  v29 = *(v4 + v1[35] + 8);

  v30 = *(v0 + v23);

  v31 = *(v0 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1D8DC13E0()
{
  v1 = type metadata accessor for MediaRequest.Params();
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80));
  sub_1D8D85E5C(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40));
  v4 = *(v3 + 48);

  v5 = *(v3 + 56);

  v6 = *(v3 + 64);

  v7 = *(v3 + 72);

  v8 = *(v3 + 80);

  v9 = *(v3 + 88);

  v10 = *(v3 + 96);

  v11 = *(v3 + 104);

  v12 = *(v3 + 112);

  v13 = *(v3 + 120);

  v14 = *(v3 + 128);

  v15 = *(v3 + 136);

  v16 = *(v3 + 144);

  v17 = *(v3 + 176);

  v18 = *(v3 + 184);

  v19 = v1[28];
  v20 = sub_1D9176C2C();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v3 + v19, 1, v20))
  {
    (*(v21 + 8))(v3 + v19, v20);
  }

  v22 = *(v3 + v1[29] + 8);

  v23 = *(v3 + v1[31] + 8);

  v24 = *(v3 + v1[32]);

  v25 = *(v3 + v1[33] + 8);

  v26 = *(v3 + v1[35] + 8);

  return swift_deallocObject();
}

uint64_t sub_1D8DC15E4()
{
  v1 = type metadata accessor for MediaRequest.Params();
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 32);

  v6 = v0 + v2;
  sub_1D8D85E5C(*(v0 + v2), *(v0 + v2 + 8), *(v0 + v2 + 16), *(v0 + v2 + 24), *(v0 + v2 + 32), *(v0 + v2 + 40));
  v7 = *(v0 + v2 + 48);

  v8 = *(v0 + v2 + 56);

  v9 = *(v0 + v2 + 64);

  v10 = *(v0 + v2 + 72);

  v11 = *(v0 + v2 + 80);

  v12 = *(v0 + v2 + 88);

  v13 = *(v0 + v2 + 96);

  v14 = *(v0 + v2 + 104);

  v15 = *(v0 + v2 + 112);

  v16 = *(v0 + v2 + 120);

  v17 = *(v0 + v2 + 128);

  v18 = *(v0 + v2 + 136);

  v19 = *(v0 + v2 + 144);

  v20 = *(v0 + v2 + 176);

  v21 = *(v0 + v2 + 184);

  v22 = v1[28];
  v23 = sub_1D9176C2C();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v0 + v2 + v22, 1, v23))
  {
    (*(v24 + 8))(v6 + v22, v23);
  }

  v25 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v6 + v1[29] + 8);

  v27 = *(v6 + v1[31] + 8);

  v28 = *(v6 + v1[32]);

  v29 = *(v6 + v1[33] + 8);

  v30 = *(v6 + v1[35] + 8);

  return swift_deallocObject();
}

__n128 sub_1D8DC181C@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

id sub_1D8DC1830@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showListShowsAllShows];
  *a2 = result;
  return result;
}

void sub_1D8DC187C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  NSUserDefaults.showListSortType.setter();
}

CGColorRef sub_1D8DC18BC@<X0>(uint64_t *a1@<X0>, CGColorRef *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D8E4480C();
  *a2 = result;
  return result;
}

void sub_1D8DC18E8(void **a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR___NMTPodcastsArtworkToken____lazy_storage___backgroundColor);
  *(*a2 + OBJC_IVAR___NMTPodcastsArtworkToken____lazy_storage___backgroundColor) = *a1;
  v4 = v2;

  sub_1D8E44900(v3);
}

uint64_t sub_1D8DC1934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4908, &qword_1D918AFB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D8DC19FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4908, &qword_1D918AFB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D8DC1AF0()
{
  v1 = type metadata accessor for TTMLRequest();
  v2 = (*(*(v1 - 8) + 80) + 80) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(v0 + 2);

  sub_1D8D7567C(*(v0 + 6), *(v0 + 7));
  v9 = *(v0 + 8);

  v10 = *(v0 + 9);

  v11 = &v0[v2];
  if (!(*(v5 + 48))(&v0[v2], 1, v4))
  {
    (*(v5 + 8))(&v0[v2], v4);
  }

  v12 = *&v11[*(v1 + 24) + 8];

  v13 = &v11[*(v1 + 36)];
  if (v13[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  (*(v5 + 8))(&v0[(v2 + v3 + v6) & ~v6], v4);

  return swift_deallocObject();
}

uint64_t sub_1D8DC1CA8()
{
  v1 = type metadata accessor for ShazamSignatureRequest();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(v0 + 16);

  v9 = v0 + v2;
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v10 = *(v9 + *(v1 + 24) + 8);

  v11 = (v9 + *(v1 + 36));
  if (v11[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_1D8DC1E50()
{
  v1 = *(type metadata accessor for ArtworkContent() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(v0 + 16);

  v9 = v0 + v2;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 8))(v9, v4);
  }

  else
  {
    sub_1D8D7567C(*v9, *(v9 + 8));
  }

  v10 = v0 + v3;
  v11 = *(v0 + v3 + 8);

  v12 = *(v0 + v3 + 32);
  if (v12 != 255)
  {
    sub_1D8DADC60(*(v10 + 16), *(v10 + 24), v12);
  }

  v13 = *(v10 + 64);
  if (v13 != 255)
  {
    sub_1D8DADC78(*(v10 + 56), v13);
  }

  v14 = *(v10 + 80);
  if (v14 != 255)
  {
    sub_1D8DADC78(*(v10 + 72), v14);
  }

  v15 = *(v10 + 96);
  if (v15 != 255)
  {
    sub_1D8DADC78(*(v10 + 88), v15);
  }

  v16 = *(v10 + 112);
  if (v16 != 255)
  {
    sub_1D8DADC78(*(v10 + 104), v16);
  }

  v17 = *(v10 + 128);
  if (v17 != 255)
  {
    sub_1D8DADC78(*(v10 + 120), v17);
  }

  v18 = *(v10 + 144);

  v19 = *(v10 + 168);

  v20 = *(v10 + 208);

  if (*(v10 + 248))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v10 + 224));
  }

  (*(v5 + 8))(v0 + ((v3 + v6 + 264) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_1D8DC2084()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  if (v2 != 255)
  {
    sub_1D8DADC60(*(v0 + 32), *(v0 + 40), v2);
  }

  v3 = *(v0 + 80);
  if (v3 != 255)
  {
    sub_1D8DADC78(*(v0 + 72), v3);
  }

  v4 = *(v0 + 96);
  if (v4 != 255)
  {
    sub_1D8DADC78(*(v0 + 88), v4);
  }

  v5 = *(v0 + 112);
  if (v5 != 255)
  {
    sub_1D8DADC78(*(v0 + 104), v5);
  }

  v6 = *(v0 + 128);
  if (v6 != 255)
  {
    sub_1D8DADC78(*(v0 + 120), v6);
  }

  v7 = *(v0 + 144);
  if (v7 != 255)
  {
    sub_1D8DADC78(*(v0 + 136), v7);
  }

  v8 = *(v0 + 160);

  v9 = *(v0 + 184);

  v10 = *(v0 + 224);

  if (*(v0 + 264))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 240));
  }

  v11 = *(v0 + 288);

  v12 = *(v0 + 312);

  v13 = *(v0 + 336);
  if (v13 != 255)
  {
    sub_1D8DADC60(*(v0 + 320), *(v0 + 328), v13);
  }

  v14 = *(v0 + 368);
  if (v14 != 255)
  {
    sub_1D8DADC78(*(v0 + 360), v14);
  }

  v15 = *(v0 + 384);
  if (v15 != 255)
  {
    sub_1D8DADC78(*(v0 + 376), v15);
  }

  v16 = *(v0 + 400);
  if (v16 != 255)
  {
    sub_1D8DADC78(*(v0 + 392), v16);
  }

  v17 = *(v0 + 416);
  if (v17 != 255)
  {
    sub_1D8DADC78(*(v0 + 408), v17);
  }

  v18 = *(v0 + 432);
  if (v18 != 255)
  {
    sub_1D8DADC78(*(v0 + 424), v18);
  }

  v19 = *(v0 + 448);

  v20 = *(v0 + 472);

  v21 = *(v0 + 512);

  if (*(v0 + 552))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 528));
  }

  v22 = *(v0 + 576);

  v23 = *(v0 + 592);

  v24 = *(v0 + 616);
  if (v24 != 255)
  {
    sub_1D8DADC60(*(v0 + 600), *(v0 + 608), v24);
  }

  v25 = *(v0 + 648);
  if (v25 != 255)
  {
    sub_1D8DADC78(*(v0 + 640), v25);
  }

  v26 = *(v0 + 664);
  if (v26 != 255)
  {
    sub_1D8DADC78(*(v0 + 656), v26);
  }

  v27 = *(v0 + 680);
  if (v27 != 255)
  {
    sub_1D8DADC78(*(v0 + 672), v27);
  }

  v28 = *(v0 + 696);
  if (v28 != 255)
  {
    sub_1D8DADC78(*(v0 + 688), v28);
  }

  v29 = *(v0 + 712);
  if (v29 != 255)
  {
    sub_1D8DADC78(*(v0 + 704), v29);
  }

  v30 = *(v0 + 728);

  v31 = *(v0 + 752);

  v32 = *(v0 + 792);

  if (*(v0 + 832))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 808));
  }

  v33 = *(v0 + 856);

  return swift_deallocObject();
}

uint64_t sub_1D8DC22C8()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC2308()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for DiskResizeArtworkProcessingStep();
  v4 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  v6 = v0 + v4;
  v7 = *(v0 + v4 + 8);

  v8 = *(v0 + v4 + 32);
  if (v8 != 255)
  {
    sub_1D8DADC60(*(v6 + 16), *(v6 + 24), v8);
  }

  v9 = *(v6 + 64);
  if (v9 != 255)
  {
    sub_1D8DADC78(*(v6 + 56), v9);
  }

  v10 = *(v6 + 80);
  if (v10 != 255)
  {
    sub_1D8DADC78(*(v6 + 72), v10);
  }

  v11 = *(v6 + 96);
  if (v11 != 255)
  {
    sub_1D8DADC78(*(v6 + 88), v11);
  }

  v12 = *(v6 + 112);
  if (v12 != 255)
  {
    sub_1D8DADC78(*(v6 + 104), v12);
  }

  v13 = *(v6 + 128);
  if (v13 != 255)
  {
    sub_1D8DADC78(*(v6 + 120), v13);
  }

  v14 = *(v6 + 144);

  v15 = *(v6 + 168);

  v16 = *(v6 + 208);

  if (*(v6 + 248))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v6 + 224));
  }

  (*(*(v2 - 8) + 8))(v6 + *(v3 + 36), v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v6 + *(v3 + 52)));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + ((v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1D8DC24D0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for ImageNormalizationProcessingStep();
  v4 = *(*(v3 - 8) + 64);
  v5 = v0 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80));
  v6 = *(v5 + 8);

  v7 = *(v5 + 32);
  if (v7 != 255)
  {
    sub_1D8DADC60(*(v5 + 16), *(v5 + 24), v7);
  }

  v8 = *(v5 + 64);
  if (v8 != 255)
  {
    sub_1D8DADC78(*(v5 + 56), v8);
  }

  v9 = *(v5 + 80);
  if (v9 != 255)
  {
    sub_1D8DADC78(*(v5 + 72), v9);
  }

  v10 = *(v5 + 96);
  if (v10 != 255)
  {
    sub_1D8DADC78(*(v5 + 88), v10);
  }

  v11 = *(v5 + 112);
  if (v11 != 255)
  {
    sub_1D8DADC78(*(v5 + 104), v11);
  }

  v12 = *(v5 + 128);
  if (v12 != 255)
  {
    sub_1D8DADC78(*(v5 + 120), v12);
  }

  v13 = *(v5 + 144);

  v14 = *(v5 + 168);

  v15 = *(v5 + 208);

  if (*(v5 + 248))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v5 + 224));
  }

  (*(*(v2 - 8) + 8))(v5 + *(v3 + 36), v2);

  return swift_deallocObject();
}

uint64_t sub_1D8DC2664()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC269C()
{
  _Block_release(*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1D8DC26E8()
{
  v1 = (type metadata accessor for CachingImageContentProvider() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  v6 = *(v0 + v2);

  v7 = v0 + v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4908, &qword_1D918AFB0) + 60);
  v8 = sub_1D9176C2C();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4938, &qword_1D918B9A0);
  v10 = *(v7 + v9[15]);

  v11 = *(v7 + v9[16]);

  v12 = *(v7 + v9[17]);

  v13 = *(v7 + v9[18]);

  v14 = *(v7 + v9[19]);

  v15 = *(v5 + v1[7] + 8);

  __swift_destroy_boxed_opaque_existential_1Tm((v5 + v1[8]));

  v16 = *(v5 + v1[10]);

  v17 = *(v5 + v1[11]);

  v18 = v0 + v3;
  v19 = *(v0 + v3 + 8);

  v20 = *(v0 + v3 + 32);
  if (v20 != 255)
  {
    sub_1D8DADC60(*(v18 + 16), *(v18 + 24), v20);
  }

  v21 = *(v18 + 64);
  if (v21 != 255)
  {
    sub_1D8DADC78(*(v18 + 56), v21);
  }

  v22 = *(v18 + 80);
  if (v22 != 255)
  {
    sub_1D8DADC78(*(v18 + 72), v22);
  }

  v23 = *(v18 + 96);
  if (v23 != 255)
  {
    sub_1D8DADC78(*(v18 + 88), v23);
  }

  v24 = *(v18 + 112);
  if (v24 != 255)
  {
    sub_1D8DADC78(*(v18 + 104), v24);
  }

  v25 = *(v18 + 128);
  if (v25 != 255)
  {
    sub_1D8DADC78(*(v18 + 120), v25);
  }

  v26 = *(v18 + 144);

  v27 = *(v18 + 168);

  v28 = *(v18 + 208);

  if (*(v18 + 248))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v18 + 224));
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC2948()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC2980(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D9179E9C();

  return swift_getWitnessTable();
}

uint64_t sub_1D8DC2A10()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DC2A58()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DC2AA8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DC2AE0()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DC2B20(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4BA8, &qword_1D918C570);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

char *sub_1D8DC2BAC(char *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = *(a4 + 16);
    v9 = *(a4 + 32);
    v10 = *(a4 + 48);
    v7 = type metadata accessor for CacheDomain.DiskCaches();
    return (*(*(v7 - 8) + 56))(&v5[*(a4 + 60)], a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8DC2C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D9176C2C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 60));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D8DC2D10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D9176C2C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 60)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D8DC2DC8()
{
  v12 = *(v0 + 2);
  v13 = *(v0 + 3);
  v1 = *(v13 - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  v3 = *(v12 - 8);
  v4 = (v2 + *(v1 + 64) + *(v3 + 80)) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = sub_1D9176C2C();
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v11 = *(v7 + 64);
  v9 = *(v0 + 8);

  (*(v1 + 8))(&v0[v2], v13);
  (*(v3 + 8))(&v0[v4], v12);
  (*(v7 + 8))(&v0[v8], v6);

  return swift_deallocObject();
}

uint64_t sub_1D8DC2F94()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 40);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DC3050()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC3090()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1D8DC30C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4D30, &qword_1D918D4E0);
  v3 = *(v2 + 8);
  swift_getAssociatedTypeWitness();
  sub_1D8CF48EC(&qword_1ECAB0918, &qword_1ECAB4D30, &qword_1D918D4E0);
  sub_1D917770C();

  return swift_getWitnessTable();
}

uint64_t sub_1D8DC31A0()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D8DC3220()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DC3258()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

id sub_1D8DC3298@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1D8E6D348(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  *a2 = result;
  return result;
}

uint64_t sub_1D8DC32D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D8DB9908();
  *a2 = result;
  return result;
}

uint64_t sub_1D8DC32FC(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 48);
  *(*a2 + 48) = *a1;

  return sub_1D8E6CA80(v2);
}

uint64_t sub_1D8DC3340@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_1D8DC3390()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1D8DC33D8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DC3418@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D8DC3468@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_1D8DC34B8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1D8DC3508(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D9176C2C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D8DC35B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D9176C2C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8DC3658()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DC3690()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DC3714()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DC374C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DC3798()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  v3 = *(v0 + 48);
  swift_unknownObjectRelease();

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  v6 = *(v0 + 80);

  v7 = *(v0 + 96);

  v8 = *(v0 + 104);

  v9 = *(v0 + 112);

  return swift_deallocObject();
}

uint64_t sub_1D8DC3828()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  v3 = *(v0 + 48);
  swift_unknownObjectRelease();

  v4 = *(v0 + 64);
  swift_unknownObjectRelease();

  v5 = *(v0 + 80);

  return swift_deallocObject();
}

uint64_t sub_1D8DC3898()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DC38D0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DC3934()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC3974()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC39AC()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DC39EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D8DC3A3C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_1D8DC3A8C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DC3AE8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DC3B20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DC3B7C()
{
  v1 = *(type metadata accessor for DownloadConsistency.Issue(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v9 = sub_1D9176EAC();
    (*(*(v9 - 8) + 8))(v0 + v2, v9);
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51D0, &unk_1D918E7C0) + 48);
    v11 = sub_1D9176C2C();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v7 = sub_1D9176EAC();
    (*(*(v7 - 8) + 8))(v0 + v2, v7);
    v8 = *(v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51C8, &unk_1D918E620) + 48) + 8);
  }

  v12 = *(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1D8DC3D48()
{
  v1 = *(type metadata accessor for DownloadConsistency.Issue(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v9 = sub_1D9176EAC();
    (*(*(v9 - 8) + 8))(v0 + v2, v9);
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51D0, &unk_1D918E7C0) + 48);
    v11 = sub_1D9176C2C();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v7 = sub_1D9176EAC();
    (*(*(v7 - 8) + 8))(v0 + v2, v7);
    v8 = *(v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51C8, &unk_1D918E620) + 48) + 8);
  }

  v12 = *(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D8DC3F18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DC3F50()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DC3F9C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1D8DC402C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D8DC407C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DC40B4()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3 + 40));

  return swift_deallocObject();
}

uint64_t sub_1D8DC415C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1D8DC41F0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_1D8DC4248()
{
  if (*v0)
  {
    result = 0x5565646F73697065;
  }

  else
  {
    result = 12383;
  }

  *v0;
  return result;
}

uint64_t sub_1D8DC4294@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___PFDownloadConsistency_identifier;
  swift_beginAccess();
  return sub_1D8CFD9D8(v3 + v4, a2);
}

uint64_t sub_1D8DC42F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DownloadConsistency.Issue(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D8DC43B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DownloadConsistency.Issue(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D8DC4470()
{
  v1 = type metadata accessor for DownloadConsistency.IssueResolution(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);

  v4 = v0 + v2;
  type metadata accessor for DownloadConsistency.Issue(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v8 = sub_1D9176EAC();
    (*(*(v8 - 8) + 8))(v0 + v2, v8);
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51D0, &unk_1D918E7C0) + 48);
    v10 = sub_1D9176C2C();
    (*(*(v10 - 8) + 8))(v4 + v9, v10);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v6 = sub_1D9176EAC();
    (*(*(v6 - 8) + 8))(v0 + v2, v6);
    v7 = *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51C8, &unk_1D918E620) + 48) + 8);
  }

  v11 = *(v4 + *(v1 + 20));

  v12 = v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  __swift_destroy_boxed_opaque_existential_1Tm((v12 + 40));

  return swift_deallocObject();
}

uint64_t sub_1D8DC466C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  sub_1D8E8A1A8(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1D8DC46BC()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DC46F8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DC4738()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DC4774()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DC47D0()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DC480C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DC48AC()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DC48E4()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC492C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DC4964()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC49B4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DC4A00()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DC4A3C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1D8DC4A8C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DC4AC4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DC4B08()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = *(v0 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DC4BD4()
{
  v1 = *(v0 + 24);

  sub_1D8E93630(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1D8DC4C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 32);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D8DC4CE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8DC4D90(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D9176C2C();
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
      v13 = sub_1D9176E3C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D8DC4EB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D9176C2C();
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
      v13 = sub_1D9176E3C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D8DC4FD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9176C2C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D8DC5044(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9176C2C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D8DC50B4()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1D8DC50FC()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DC5144()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DC5184()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DC51BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DC51FC()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC525C()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DC5294()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DC52E4()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  if (v0[4])
  {
    v3 = v0[5];
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC5368()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DC53A0()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC53E8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DC5420()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DC5468()
{
  v1 = *(v0 + 24);

  if (*(v0 + 32))
  {
    v2 = *(v0 + 40);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC54B8()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
    v2 = *(v0 + 48);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC5528()
{
  v1 = *(v0 + 16);

  if (*(v0 + 32))
  {
    v2 = *(v0 + 40);
  }

  v3 = *(v0 + 48);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D8DC5580()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC55C0()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
    v2 = *(v0 + 40);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC5618()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DC5668()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D8DC56C0()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DC56F8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DC5768()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DC57B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DC57F0()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1D8DC5838()
{
  v1 = type metadata accessor for FairPlayMigrationData(0);
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);

  v4 = *(v0 + 24);

  v5 = *(v0 + 40);

  v6 = v0 + v2;
  v7 = *(v0 + v2 + 16);
  if (v7 >> 60 != 15)
  {
    sub_1D8D7567C(*(v6 + 8), v7);
  }

  v8 = *(v6 + 32);

  v9 = *(v1 + 28);
  v10 = sub_1D9176E3C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v6 + v9, 1, v10))
  {
    (*(v11 + 8))(v6 + v9, v10);
  }

  v12 = *(v6 + *(v1 + 32) + 8);

  return swift_deallocObject();
}

uint64_t sub_1D8DC59C4()
{
  v1 = type metadata accessor for FairPlayMigrationData(0);
  v2 = *(*(v1 - 8) + 80);
  v19 = *(*(v1 - 8) + 64);
  v21 = sub_1D9176C2C();
  v3 = *(v21 - 8);
  v4 = *(v3 + 80);
  v18 = *(v3 + 64);
  v5 = sub_1D9176E3C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v20 = *(v6 + 64);
  v8 = *(v0 + 24);

  v9 = (v0 + ((v2 + 32) & ~v2));
  v10 = v9[2];
  if (v10 >> 60 != 15)
  {
    sub_1D8D7567C(v9[1], v10);
  }

  v11 = v9[4];

  v12 = *(v1 + 28);
  if (!(*(v6 + 48))(v9 + v12, 1, v5))
  {
    (*(v6 + 8))(v9 + v12, v5);
  }

  v13 = (v19 + ((v2 + 32) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + v4 + 16) & ~v4;
  v16 = *(v9 + *(v1 + 32) + 8);

  sub_1D8D7567C(*(v0 + v14), *(v0 + v14 + 8));
  (*(v3 + 8))(v0 + v15, v21);
  (*(v6 + 8))(v0 + ((v15 + v18 + v7) & ~v7), v5);

  return swift_deallocObject();
}

uint64_t sub_1D8DC5C4C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1D8DC5C9C()
{
  v1 = (type metadata accessor for FairPlayMigrationData.ValidatedData(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);

  v5 = v0 + v2;

  sub_1D8D7567C(*(v5 + 16), *(v5 + 24));
  v6 = v1[9];
  v7 = sub_1D9176C2C();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = v1[10];
  v9 = sub_1D9176E3C();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v10 = *(v5 + v1[11] + 8);

  v11 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1D8DC5E2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5698, &unk_1D91906A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DC5EC0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5698, &unk_1D91906A8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DC5F98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DC5FE0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1D8DC6030()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DC6068()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DC60A8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DC60E8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1D8DC6138@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_1D8DC6184()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

void sub_1D8DC61C0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  NSUserDefaults.fairPlayVersion.getter(&v4);
  *a2 = v4;
}

void sub_1D8DC61FC(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  NSUserDefaults.fairPlayVersion.setter(&v3);
}

id sub_1D8DC623C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fairPlayMigrationRetryCount];
  *a2 = result;
  return result;
}

uint64_t sub_1D8DC6284()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  v4 = (type metadata accessor for AssetBackgroundSession() - 8);
  v15 = (*(*v4 + 80) + 40) & ~*(*v4 + 80);
  v5 = *(*v4 + 64);
  v17 = sub_1D917653C();
  v6 = *(v17 - 8);
  v7 = (v15 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = (v7 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  v16 = *(v10 + 64);
  (*(*(v1 - 8) + 8))(&v0[v15], v1);

  v12 = *&v0[v15 + v4[14]];

  v13 = *&v0[v15 + v4[15]];

  (*(v6 + 8))(&v0[v7], v17);
  (*(v10 + 8))(&v0[v11], AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1D8DC64C4()
{
  v1 = sub_1D917734C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DC654C()
{
  v1 = *(v0 + 24);
  v16 = *(v0 + 16);
  v2 = *(v16 - 8);
  v18 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v3 = v18 + *(v2 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v14 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v5 = *(v4 + 64);
  v15 = sub_1D9176C2C();
  v6 = *(v15 - 8);
  v7 = (v14 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = sub_1D917734C();
  v10 = *(v9 - 8);
  v11 = (v7 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  v13 = *(v10 + 64);
  (*(v2 + 8))(v0 + v18, v16);
  (*(v4 + 8))(v0 + v14, AssociatedTypeWitness);
  (*(v6 + 8))(v0 + v7, v15);
  (*(v10 + 8))(v0 + v11, v9);

  return swift_deallocObject();
}

uint64_t sub_1D8DC67F0()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  v4 = (type metadata accessor for AssetBackgroundSession() - 8);
  v5 = (*(*v4 + 80) + 40) & ~*(*v4 + 80);
  v6 = *(*v4 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = (v5 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(*(v1 - 8) + 8))(&v0[v5], v1);

  v11 = *&v0[v5 + v4[14]];

  v12 = *&v0[v5 + v4[15]];

  (*(v8 + 8))(&v0[v9], AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1D8DC69B0()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC69EC()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC6A2C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC6A64()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DC6AA4()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DC6ADC()
{
  v1 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1D8DC6B14()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 64);

  v3 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_1D8DC6B74()
{
  v1 = sub_1D9176C2C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 88) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 16);

  v6 = *(v0 + v4 + 24);

  v7 = *(v0 + v4 + 32);

  return swift_deallocObject();
}

__n128 sub_1D8DC6C84(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_1D8DC6C98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DC6CD0()
{
  v1 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1D8DC6D10()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC6D6C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  v4 = *(v0 + v3);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + ((v3 + 39) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1D8DC6E10()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DC6ECC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB5B40, &unk_1D9191168);
  v3 = *(v2 + 8);
  swift_getAssociatedTypeWitness();
  sub_1D8CF48EC(&qword_1ECAB0628, &qword_1ECAB5B40, &unk_1D9191168);
  sub_1D917770C();
  swift_getWitnessTable();
  type metadata accessor for EmitLifecycle();

  return swift_getWitnessTable();
}

uint64_t sub_1D8DC6FD4()
{
  v1 = *(v0 + 16);
  v2 = sub_1D9176C2C();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  (*(v3 + 8))(v0 + v4, v2);

  (*(v6 + 8))(v0 + v7, v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DC70F4()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1D8DC7134()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DC716C()
{
  v1 = *(v0 + 16);
  v2 = sub_1D9176C2C();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v4, v2);

  (*(v6 + 8))(v0 + v7, v1);
  v9 = *(v0 + v8);

  return swift_deallocObject();
}

uint64_t sub_1D8DC72A0()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1D8DC72D8()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1D8DC7330(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D91779BC();

  return swift_getWitnessTable();
}

uint64_t sub_1D8DC73C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D08, &unk_1D9191530);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D8DC7438(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D08, &unk_1D9191530);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D8DC74B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D38, &qword_1D9191600);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D8DC752C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D38, &qword_1D9191600);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D8DC75A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DC75E0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  return swift_deallocObject();
}

uint64_t sub_1D8DC7640()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DC7678(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D9176C2C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D8DC7724(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D9176C2C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8DC77C8()
{
  v1 = type metadata accessor for KCUTranscriptProvider();
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_1D9176EAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v0[4];

  if (v0[9])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);
  }

  v9 = (v2 + 88) & ~v2;
  v10 = (v9 + v3 + v6) & ~v6;
  v11 = (v0 + v9);
  v12 = *(v0 + v9 + 8);

  v13 = v11[3];

  v14 = v1[7];
  v15 = sub_1D9176C2C();
  (*(*(v15 - 8) + 8))(v11 + v14, v15);
  v16 = *(v11 + v1[8] + 8);

  v17 = *(v11 + v1[9] + 8);

  (*(v5 + 8))(v0 + v10, v4);

  return swift_deallocObject();
}

uint64_t sub_1D8DC7994()
{
  v1 = type metadata accessor for MediaRequest.Params();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = (*(*(v1 - 1) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v0 + v2);
  sub_1D8D85E5C(*(v0 + v2), *(v0 + v2 + 8), *(v0 + v2 + 16), *(v0 + v2 + 24), *(v0 + v2 + 32), *(v0 + v2 + 40));
  v5 = *(v4 + 6);

  v6 = *(v4 + 7);

  v7 = *(v4 + 8);

  v8 = *(v4 + 9);

  v9 = *(v4 + 10);

  v10 = *(v4 + 11);

  v11 = *(v4 + 12);

  v12 = *(v4 + 13);

  v13 = *(v4 + 14);

  v14 = *(v4 + 15);

  v15 = *(v4 + 16);

  v16 = *(v4 + 17);

  v17 = *(v4 + 18);

  v18 = *(v4 + 22);

  v19 = *(v4 + 23);

  v20 = v1[28];
  v21 = sub_1D9176C2C();
  v22 = *(v21 - 8);
  if (!(*(v22 + 48))(&v4[v20], 1, v21))
  {
    (*(v22 + 8))(&v4[v20], v21);
  }

  v23 = *&v4[v1[29] + 8];

  v24 = *&v4[v1[31] + 8];

  v25 = *&v4[v1[32]];

  v26 = *&v4[v1[33] + 8];

  v27 = *&v4[v1[35] + 8];

  v28 = *(v0 + v3 + 16);

  if (*(v0 + v3 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3 + 32));
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC7BB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DC7BF0()
{
  v1 = v0[3];

  v2 = v0[6];

  if (v0[11])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC7C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D8DC7D14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D8DC7DE0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  v7 = *(v0 + 120);

  v8 = *(v0 + 136);

  v9 = *(v0 + 152);

  v10 = *(v0 + 168);

  v11 = *(v0 + 184);

  v12 = *(v0 + 200);

  v13 = *(v0 + 216);

  v14 = *(v0 + 232);

  v15 = *(v0 + 248);

  v16 = *(v0 + 264);

  v17 = *(v0 + 280);

  v18 = *(v0 + 296);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 304));

  v19 = *(v0 + 352);

  v20 = *(v0 + 360);

  v21 = *(v0 + 368);

  v22 = *(v0 + 392);

  if (*(v0 + 432))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 408));
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC7EE4()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC7F1C()
{
  sub_1D8D7567C(v0[5], v0[6]);
  v1 = v0[7];

  v2 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_1D8DC7F7C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DC801C()
{
  v1 = sub_1D9176EAC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 376) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 24);

  v6 = *(v0 + 40);

  v7 = *(v0 + 56);

  v8 = *(v0 + 72);

  v9 = *(v0 + 88);

  v10 = *(v0 + 104);

  v11 = *(v0 + 120);

  v12 = *(v0 + 136);

  v13 = *(v0 + 152);

  v14 = *(v0 + 168);

  v15 = *(v0 + 184);

  v16 = *(v0 + 200);

  v17 = *(v0 + 216);

  v18 = *(v0 + 232);

  v19 = *(v0 + 248);

  v20 = *(v0 + 264);

  v21 = *(v0 + 280);

  v22 = *(v0 + 296);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 304));

  v23 = *(v0 + 352);

  v24 = *(v0 + 360);

  v25 = *(v0 + 368);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DC8194()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  if (v2 != 255)
  {
    sub_1D8DADC60(*(v0 + 32), *(v0 + 40), v2);
  }

  v3 = *(v0 + 80);
  if (v3 != 255)
  {
    sub_1D8DADC78(*(v0 + 72), v3);
  }

  v4 = *(v0 + 96);
  if (v4 != 255)
  {
    sub_1D8DADC78(*(v0 + 88), v4);
  }

  v5 = *(v0 + 112);
  if (v5 != 255)
  {
    sub_1D8DADC78(*(v0 + 104), v5);
  }

  v6 = *(v0 + 128);
  if (v6 != 255)
  {
    sub_1D8DADC78(*(v0 + 120), v6);
  }

  v7 = *(v0 + 144);
  if (v7 != 255)
  {
    sub_1D8DADC78(*(v0 + 136), v7);
  }

  v8 = *(v0 + 160);

  v9 = *(v0 + 184);

  v10 = *(v0 + 224);

  if (*(v0 + 264))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 240));
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC826C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  if (v2 != 255)
  {
    sub_1D8DADC60(*(v0 + 32), *(v0 + 40), v2);
  }

  v3 = *(v0 + 80);
  if (v3 != 255)
  {
    sub_1D8DADC78(*(v0 + 72), v3);
  }

  v4 = *(v0 + 96);
  if (v4 != 255)
  {
    sub_1D8DADC78(*(v0 + 88), v4);
  }

  v5 = *(v0 + 112);
  if (v5 != 255)
  {
    sub_1D8DADC78(*(v0 + 104), v5);
  }

  v6 = *(v0 + 128);
  if (v6 != 255)
  {
    sub_1D8DADC78(*(v0 + 120), v6);
  }

  v7 = *(v0 + 144);
  if (v7 != 255)
  {
    sub_1D8DADC78(*(v0 + 136), v7);
  }

  v8 = *(v0 + 160);

  v9 = *(v0 + 184);

  v10 = *(v0 + 224);

  if (*(v0 + 264))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 240));
  }

  v11 = *(v0 + 288);

  v12 = *(v0 + 312);
  if (v12 != 255)
  {
    sub_1D8DADC60(*(v0 + 296), *(v0 + 304), v12);
  }

  v13 = *(v0 + 344);
  if (v13 != 255)
  {
    sub_1D8DADC78(*(v0 + 336), v13);
  }

  v14 = *(v0 + 360);
  if (v14 != 255)
  {
    sub_1D8DADC78(*(v0 + 352), v14);
  }

  v15 = *(v0 + 376);
  if (v15 != 255)
  {
    sub_1D8DADC78(*(v0 + 368), v15);
  }

  v16 = *(v0 + 392);
  if (v16 != 255)
  {
    sub_1D8DADC78(*(v0 + 384), v16);
  }

  v17 = *(v0 + 408);
  if (v17 != 255)
  {
    sub_1D8DADC78(*(v0 + 400), v17);
  }

  v18 = *(v0 + 424);

  v19 = *(v0 + 448);

  v20 = *(v0 + 488);

  if (*(v0 + 528))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 504));
  }

  v21 = *(v0 + 552);

  v22 = *(v0 + 576);
  if (v22 != 255)
  {
    sub_1D8DADC60(*(v0 + 560), *(v0 + 568), v22);
  }

  v23 = *(v0 + 608);
  if (v23 != 255)
  {
    sub_1D8DADC78(*(v0 + 600), v23);
  }

  v24 = *(v0 + 624);
  if (v24 != 255)
  {
    sub_1D8DADC78(*(v0 + 616), v24);
  }

  v25 = *(v0 + 640);
  if (v25 != 255)
  {
    sub_1D8DADC78(*(v0 + 632), v25);
  }

  v26 = *(v0 + 656);
  if (v26 != 255)
  {
    sub_1D8DADC78(*(v0 + 648), v26);
  }

  v27 = *(v0 + 672);
  if (v27 != 255)
  {
    sub_1D8DADC78(*(v0 + 664), v27);
  }

  v28 = *(v0 + 688);

  v29 = *(v0 + 712);

  v30 = *(v0 + 752);

  if (*(v0 + 792))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 768));
  }

  v31 = *(v0 + 824);

  v32 = *(v0 + 848);
  if (v32 != 255)
  {
    sub_1D8DADC60(*(v0 + 832), *(v0 + 840), v32);
  }

  v33 = *(v0 + 880);
  if (v33 != 255)
  {
    sub_1D8DADC78(*(v0 + 872), v33);
  }

  v34 = *(v0 + 896);
  if (v34 != 255)
  {
    sub_1D8DADC78(*(v0 + 888), v34);
  }

  v35 = *(v0 + 912);
  if (v35 != 255)
  {
    sub_1D8DADC78(*(v0 + 904), v35);
  }

  v36 = *(v0 + 928);
  if (v36 != 255)
  {
    sub_1D8DADC78(*(v0 + 920), v36);
  }

  v37 = *(v0 + 944);
  if (v37 != 255)
  {
    sub_1D8DADC78(*(v0 + 936), v37);
  }

  v38 = *(v0 + 960);

  v39 = *(v0 + 984);

  v40 = *(v0 + 1024);

  if (*(v0 + 1064))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1040));
  }

  v41 = *(v0 + 1088);

  v42 = *(v0 + 1104);

  v43 = *(v0 + 1128);
  if (v43 != 255)
  {
    sub_1D8DADC60(*(v0 + 1112), *(v0 + 1120), v43);
  }

  v44 = *(v0 + 1160);
  if (v44 != 255)
  {
    sub_1D8DADC78(*(v0 + 1152), v44);
  }

  v45 = *(v0 + 1176);
  if (v45 != 255)
  {
    sub_1D8DADC78(*(v0 + 1168), v45);
  }

  v46 = *(v0 + 1192);
  if (v46 != 255)
  {
    sub_1D8DADC78(*(v0 + 1184), v46);
  }

  v47 = *(v0 + 1208);
  if (v47 != 255)
  {
    sub_1D8DADC78(*(v0 + 1200), v47);
  }

  v48 = *(v0 + 1224);
  if (v48 != 255)
  {
    sub_1D8DADC78(*(v0 + 1216), v48);
  }

  v49 = *(v0 + 1240);

  v50 = *(v0 + 1264);

  v51 = *(v0 + 1304);

  if (*(v0 + 1344))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1320));
  }

  v52 = *(v0 + 1368);

  v53 = *(v0 + 1384);

  v54 = *(v0 + 1400);

  v55 = *(v0 + 1424);
  if (v55 != 255)
  {
    sub_1D8DADC60(*(v0 + 1408), *(v0 + 1416), v55);
  }

  v56 = *(v0 + 1456);
  if (v56 != 255)
  {
    sub_1D8DADC78(*(v0 + 1448), v56);
  }

  v57 = *(v0 + 1472);
  if (v57 != 255)
  {
    sub_1D8DADC78(*(v0 + 1464), v57);
  }

  v58 = *(v0 + 1488);
  if (v58 != 255)
  {
    sub_1D8DADC78(*(v0 + 1480), v58);
  }

  v59 = *(v0 + 1504);
  if (v59 != 255)
  {
    sub_1D8DADC78(*(v0 + 1496), v59);
  }

  v60 = *(v0 + 1520);
  if (v60 != 255)
  {
    sub_1D8DADC78(*(v0 + 1512), v60);
  }

  v61 = *(v0 + 1536);

  v62 = *(v0 + 1560);

  v63 = *(v0 + 1600);

  if (*(v0 + 1640))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1616));
  }

  v64 = *(v0 + 1664);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1704));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1744));

  return swift_deallocObject();
}

uint64_t sub_1D8DC86D4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  if (v2 != 255)
  {
    sub_1D8DADC60(*(v0 + 32), *(v0 + 40), v2);
  }

  v3 = *(v0 + 80);
  if (v3 != 255)
  {
    sub_1D8DADC78(*(v0 + 72), v3);
  }

  v4 = *(v0 + 96);
  if (v4 != 255)
  {
    sub_1D8DADC78(*(v0 + 88), v4);
  }

  v5 = *(v0 + 112);
  if (v5 != 255)
  {
    sub_1D8DADC78(*(v0 + 104), v5);
  }

  v6 = *(v0 + 128);
  if (v6 != 255)
  {
    sub_1D8DADC78(*(v0 + 120), v6);
  }

  v7 = *(v0 + 144);
  if (v7 != 255)
  {
    sub_1D8DADC78(*(v0 + 136), v7);
  }

  v8 = *(v0 + 160);

  v9 = *(v0 + 184);

  v10 = *(v0 + 224);

  if (*(v0 + 264))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 240));
  }

  v11 = *(v0 + 296);

  v12 = *(v0 + 320);
  if (v12 != 255)
  {
    sub_1D8DADC60(*(v0 + 304), *(v0 + 312), v12);
  }

  v13 = *(v0 + 352);
  if (v13 != 255)
  {
    sub_1D8DADC78(*(v0 + 344), v13);
  }

  v14 = *(v0 + 368);
  if (v14 != 255)
  {
    sub_1D8DADC78(*(v0 + 360), v14);
  }

  v15 = *(v0 + 384);
  if (v15 != 255)
  {
    sub_1D8DADC78(*(v0 + 376), v15);
  }

  v16 = *(v0 + 400);
  if (v16 != 255)
  {
    sub_1D8DADC78(*(v0 + 392), v16);
  }

  v17 = *(v0 + 416);
  if (v17 != 255)
  {
    sub_1D8DADC78(*(v0 + 408), v17);
  }

  v18 = *(v0 + 432);

  v19 = *(v0 + 456);

  v20 = *(v0 + 496);

  if (*(v0 + 536))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 512));
  }

  v21 = *(v0 + 560);

  v22 = *(v0 + 576);

  v23 = *(v0 + 600);
  if (v23 != 255)
  {
    sub_1D8DADC60(*(v0 + 584), *(v0 + 592), v23);
  }

  v24 = *(v0 + 632);
  if (v24 != 255)
  {
    sub_1D8DADC78(*(v0 + 624), v24);
  }

  v25 = *(v0 + 648);
  if (v25 != 255)
  {
    sub_1D8DADC78(*(v0 + 640), v25);
  }

  v26 = *(v0 + 664);
  if (v26 != 255)
  {
    sub_1D8DADC78(*(v0 + 656), v26);
  }

  v27 = *(v0 + 680);
  if (v27 != 255)
  {
    sub_1D8DADC78(*(v0 + 672), v27);
  }

  v28 = *(v0 + 696);
  if (v28 != 255)
  {
    sub_1D8DADC78(*(v0 + 688), v28);
  }

  v29 = *(v0 + 712);

  v30 = *(v0 + 736);

  v31 = *(v0 + 776);

  if (*(v0 + 816))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 792));
  }

  v32 = *(v0 + 840);

  return swift_deallocObject();
}

uint64_t sub_1D8DC894C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D38, &qword_1D9191600);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D08, &unk_1D9191530);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D8DC8A54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D38, &qword_1D9191600);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D08, &unk_1D9191530);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D8DC8BB4()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DC8C64()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64B8, &qword_1D9192760) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_1D917653C();
  v5 = *(v4 - 8);
  v28 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v29 = v4;
  v6 = *(v5 + 64);
  v7 = type metadata accessor for ShazamSignatureRequest();
  v30 = *(*(v7 - 8) + 64);
  v26 = (v28 + v6 + *(*(v7 - 8) + 80)) & ~*(*(v7 - 8) + 80);
  v8 = v0 + v2;
  v9 = *(v0 + v2);

  v10 = v0 + v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D08, &unk_1D9191530) + 60);
  v11 = sub_1D9176C2C();
  v12 = *(v11 - 8);
  v25 = *(v12 + 8);
  v25(v10, v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D30, &unk_1D9191570);
  v14 = *(v10 + v13[15]);

  v15 = *(v10 + v13[16]);

  v16 = *(v10 + v13[17]);

  v17 = *(v10 + v13[18]);

  v18 = *(v10 + v13[19]);

  v19 = *(v8 + v1[14]);

  v20 = *(v8 + v1[15]);

  (*(v5 + 8))(v27 + v28, v29);
  v21 = v27 + v26;
  if (!(*(v12 + 48))(v27 + v26, 1, v11))
  {
    v25(v27 + v26, v11);
  }

  v22 = *(v21 + *(v7 + 24) + 8);

  v23 = (v21 + *(v7 + 36));
  if (v23[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC8F80()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64B8, &qword_1D9192760) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for ShazamSignatureRequest();
  v5 = *(*(v4 - 8) + 80);
  v25 = *(*(v4 - 8) + 64);
  v24 = (v2 + v3 + v5) & ~v5;
  v6 = v0 + v2;
  v7 = *(v0 + v2);

  v8 = v0 + v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D08, &unk_1D9191530) + 60);
  v9 = sub_1D9176C2C();
  v10 = *(v9 - 8);
  v23 = *(v10 + 8);
  v23(v8, v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D30, &unk_1D9191570);
  v12 = *(v8 + v11[15]);

  v13 = *(v8 + v11[16]);

  v14 = *(v8 + v11[17]);

  v15 = *(v8 + v11[18]);

  v16 = *(v8 + v11[19]);

  v17 = *(v6 + v1[14]);

  v18 = *(v6 + v1[15]);

  v19 = v0 + v24;
  if (!(*(v10 + 48))(v0 + v24, 1, v9))
  {
    v23(v0 + v24, v9);
  }

  v20 = *(v19 + *(v4 + 24) + 8);

  v21 = (v19 + *(v4 + 36));
  if (v21[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC9228()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC9260()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC92B8()
{
  v1 = *(type metadata accessor for ShazamSignatureBackgroundSessionDescriptor() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v30 = type metadata accessor for ShazamSignatureRequest();
  v31 = *(*(v30 - 8) + 80);
  v25 = (v2 + v3 + v31) & ~v31;
  v29 = *(*(v30 - 8) + 64);
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v26 = *(v5 + 64);
  v28 = sub_1D917734C();
  v7 = *(v28 - 8);
  v8 = *(v7 + 80);
  v27 = *(v7 + 64);
  v9 = (v0 + v2);
  v10 = *v9;

  v11 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D08, &unk_1D9191530) + 60);
  v12 = *(v5 + 8);
  v12(v11, v4);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D30, &unk_1D9191570);
  v14 = *&v11[v13[15]];

  v15 = *&v11[v13[16]];

  v16 = *&v11[v13[17]];

  v17 = *&v11[v13[18]];

  v18 = *&v11[v13[19]];

  v19 = v0 + v25;
  if (!(*(v5 + 48))(v0 + v25, 1, v4))
  {
    v12((v0 + v25), v4);
  }

  v20 = *(v19 + *(v30 + 24) + 8);

  v21 = (v19 + *(v30 + 36));
  if (v21[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  v22 = (v25 + v29 + v6) & ~v6;
  v23 = (v22 + v26 + v8) & ~v8;
  v12((v0 + v22), v4);
  (*(v7 + 8))(v0 + v23, v28);

  return swift_deallocObject();
}

uint64_t sub_1D8DC95FC()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DC9634()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64C0, &qword_1D9192768) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_1D917653C();
  v5 = *(v4 - 8);
  v28 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v29 = v4;
  v6 = *(v5 + 64);
  v7 = type metadata accessor for TTMLRequest();
  v30 = *(*(v7 - 8) + 64);
  v26 = (v28 + v6 + *(*(v7 - 8) + 80)) & ~*(*(v7 - 8) + 80);
  v8 = v0 + v2;
  v9 = *(v0 + v2);

  v10 = v0 + v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D38, &qword_1D9191600) + 60);
  v11 = sub_1D9176C2C();
  v12 = *(v11 - 8);
  v25 = *(v12 + 8);
  v25(v10, v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D58, &unk_1D9191620);
  v14 = *(v10 + v13[15]);

  v15 = *(v10 + v13[16]);

  v16 = *(v10 + v13[17]);

  v17 = *(v10 + v13[18]);

  v18 = *(v10 + v13[19]);

  v19 = *(v8 + v1[14]);

  v20 = *(v8 + v1[15]);

  (*(v5 + 8))(v27 + v28, v29);
  v21 = v27 + v26;
  if (!(*(v12 + 48))(v27 + v26, 1, v11))
  {
    v25(v27 + v26, v11);
  }

  v22 = *(v21 + *(v7 + 24) + 8);

  v23 = (v21 + *(v7 + 36));
  if (v23[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC9950()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64C0, &qword_1D9192768) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for TTMLRequest();
  v5 = *(*(v4 - 8) + 80);
  v25 = *(*(v4 - 8) + 64);
  v24 = (v2 + v3 + v5) & ~v5;
  v6 = v0 + v2;
  v7 = *(v0 + v2);

  v8 = v0 + v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D38, &qword_1D9191600) + 60);
  v9 = sub_1D9176C2C();
  v10 = *(v9 - 8);
  v23 = *(v10 + 8);
  v23(v8, v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D58, &unk_1D9191620);
  v12 = *(v8 + v11[15]);

  v13 = *(v8 + v11[16]);

  v14 = *(v8 + v11[17]);

  v15 = *(v8 + v11[18]);

  v16 = *(v8 + v11[19]);

  v17 = *(v6 + v1[14]);

  v18 = *(v6 + v1[15]);

  v19 = v0 + v24;
  if (!(*(v10 + 48))(v0 + v24, 1, v9))
  {
    v23(v0 + v24, v9);
  }

  v20 = *(v19 + *(v4 + 24) + 8);

  v21 = (v19 + *(v4 + 36));
  if (v21[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC9BF8()
{
  v1 = *(type metadata accessor for TranscriptsBackgroundSessionDescriptor() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v30 = type metadata accessor for TTMLRequest();
  v31 = *(*(v30 - 8) + 80);
  v25 = (v2 + v3 + v31) & ~v31;
  v29 = *(*(v30 - 8) + 64);
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v26 = *(v5 + 64);
  v28 = sub_1D917734C();
  v7 = *(v28 - 8);
  v8 = *(v7 + 80);
  v27 = *(v7 + 64);
  v9 = (v0 + v2);
  v10 = *v9;

  v11 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D38, &qword_1D9191600) + 60);
  v12 = *(v5 + 8);
  v12(v11, v4);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D58, &unk_1D9191620);
  v14 = *&v11[v13[15]];

  v15 = *&v11[v13[16]];

  v16 = *&v11[v13[17]];

  v17 = *&v11[v13[18]];

  v18 = *&v11[v13[19]];

  v19 = v0 + v25;
  if (!(*(v5 + 48))(v0 + v25, 1, v4))
  {
    v12((v0 + v25), v4);
  }

  v20 = *(v19 + *(v30 + 24) + 8);

  v21 = (v19 + *(v30 + 36));
  if (v21[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  v22 = (v25 + v29 + v6) & ~v6;
  v23 = (v22 + v26 + v8) & ~v8;
  v12((v0 + v22), v4);
  (*(v7 + 8))(v0 + v23, v28);

  return swift_deallocObject();
}

uint64_t sub_1D8DC9F88()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  if (v2 != 255)
  {
    sub_1D8DADC60(*(v0 + 32), *(v0 + 40), v2);
  }

  v3 = *(v0 + 80);
  if (v3 != 255)
  {
    sub_1D8DADC78(*(v0 + 72), v3);
  }

  v4 = *(v0 + 96);
  if (v4 != 255)
  {
    sub_1D8DADC78(*(v0 + 88), v4);
  }

  v5 = *(v0 + 112);
  if (v5 != 255)
  {
    sub_1D8DADC78(*(v0 + 104), v5);
  }

  v6 = *(v0 + 128);
  if (v6 != 255)
  {
    sub_1D8DADC78(*(v0 + 120), v6);
  }

  v7 = *(v0 + 144);
  if (v7 != 255)
  {
    sub_1D8DADC78(*(v0 + 136), v7);
  }

  v8 = *(v0 + 160);

  v9 = *(v0 + 184);

  v10 = *(v0 + 224);

  if (*(v0 + 264))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 240));
  }

  v11 = *(v0 + 280);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 312));

  return swift_deallocObject();
}

uint64_t sub_1D8DCA070()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 64);

  v2 = *(v0 + 88);
  if (v2 != 255)
  {
    sub_1D8DADC60(*(v0 + 72), *(v0 + 80), v2);
  }

  v3 = *(v0 + 120);
  if (v3 != 255)
  {
    sub_1D8DADC78(*(v0 + 112), v3);
  }

  v4 = *(v0 + 136);
  if (v4 != 255)
  {
    sub_1D8DADC78(*(v0 + 128), v4);
  }

  v5 = *(v0 + 152);
  if (v5 != 255)
  {
    sub_1D8DADC78(*(v0 + 144), v5);
  }

  v6 = *(v0 + 168);
  if (v6 != 255)
  {
    sub_1D8DADC78(*(v0 + 160), v6);
  }

  v7 = *(v0 + 184);
  if (v7 != 255)
  {
    sub_1D8DADC78(*(v0 + 176), v7);
  }

  v8 = *(v0 + 200);

  v9 = *(v0 + 224);

  v10 = *(v0 + 264);

  if (*(v0 + 304))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 280));
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DCA150()
{
  v1 = sub_1D9176C2C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  v5 = v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = *(v5 + 8);

  v7 = *(v5 + 32);
  if (v7 != 255)
  {
    sub_1D8DADC60(*(v5 + 16), *(v5 + 24), v7);
  }

  v8 = *(v5 + 64);
  if (v8 != 255)
  {
    sub_1D8DADC78(*(v5 + 56), v8);
  }

  v9 = *(v5 + 80);
  if (v9 != 255)
  {
    sub_1D8DADC78(*(v5 + 72), v9);
  }

  v10 = *(v5 + 96);
  if (v10 != 255)
  {
    sub_1D8DADC78(*(v5 + 88), v10);
  }

  v11 = *(v5 + 112);
  if (v11 != 255)
  {
    sub_1D8DADC78(*(v5 + 104), v11);
  }

  v12 = *(v5 + 128);
  if (v12 != 255)
  {
    sub_1D8DADC78(*(v5 + 120), v12);
  }

  v13 = *(v5 + 144);

  v14 = *(v5 + 168);

  v15 = *(v5 + 208);

  if (*(v5 + 248))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v5 + 224));
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DCA2A0()
{
  v1 = sub_1D9176C2C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  v6 = v0 + v5;
  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + v5 + 32);
  if (v8 != 255)
  {
    sub_1D8DADC60(*(v6 + 16), *(v6 + 24), v8);
  }

  v9 = *(v6 + 64);
  if (v9 != 255)
  {
    sub_1D8DADC78(*(v6 + 56), v9);
  }

  v10 = *(v6 + 80);
  if (v10 != 255)
  {
    sub_1D8DADC78(*(v6 + 72), v10);
  }

  v11 = *(v6 + 96);
  if (v11 != 255)
  {
    sub_1D8DADC78(*(v6 + 88), v11);
  }

  v12 = *(v6 + 112);
  if (v12 != 255)
  {
    sub_1D8DADC78(*(v6 + 104), v12);
  }

  v13 = *(v6 + 128);
  if (v13 != 255)
  {
    sub_1D8DADC78(*(v6 + 120), v13);
  }

  v14 = *(v6 + 144);

  v15 = *(v6 + 168);

  v16 = *(v6 + 208);

  if (*(v6 + 248))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v6 + 224));
  }

  v17 = *(v0 + ((v5 + 271) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1D8DCA400(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64C0, &qword_1D9192768);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64B8, &qword_1D9192760);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1D8DCA53C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64C0, &qword_1D9192768);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64B8, &qword_1D9192760);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D8DCA71C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D8DCA794(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D8DCA810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D8DCA8DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D8DCA9A4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1D8DCABCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D9176E3C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D8DCAC88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D9176E3C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D8DCAD48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DCAD88()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1D8DCADE0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DCAE20()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DCAE6C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DCAEA4()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DCAEDC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1D8DCAF2C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1D8DCAF8C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DCAFCC()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 40);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DCB018()
{
  v1 = *(v0 + 16);

  if (*(v0 + 40))
  {
    v2 = *(v0 + 48);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DCB070()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 40);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DCB0C0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1D8DCB110()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1D8DCB158()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1D8DCB1A0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DCB1E0()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DCB218()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4538, &unk_1D91949B0) - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);

  v5 = *(v0 + 32);

  v6 = v0 + v1[14];
  v7 = sub_1D9176C2C();
  (*(*(v7 - 8) + 8))(v6 + v2, v7);

  v8 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1D8DCB350()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4538, &unk_1D91949B0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + *(v1 + 48);
  v7 = sub_1D9176C2C();
  (*(*(v7 - 8) + 8))(v6 + v3, v7);

  v8 = *(v0 + v5);

  v9 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1D8DCB480()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1D8DCB4C8()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4538, &unk_1D91949B0) - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);

  v5 = *(v0 + 32);

  v6 = v0 + v1[14];
  v7 = sub_1D9176C2C();
  (*(*(v7 - 8) + 8))(v6 + v2, v7);

  v8 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D8DCB600()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4538, &unk_1D91949B0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + *(v1 + 48);
  v7 = sub_1D9176C2C();
  (*(*(v7 - 8) + 8))(v6 + v3, v7);

  v8 = *(v0 + v5);
  swift_unknownObjectRelease();
  v9 = *(v0 + ((v5 + 39) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}
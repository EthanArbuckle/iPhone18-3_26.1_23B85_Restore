uint64_t closure #1 in static vDSP.subtract<A, B, C>(multiplication:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, unint64_t *a13, void (*a14)(char *, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v32 = a4;
  v33 = a5;
  v34 = a2;
  v29 = a9;
  v30 = a1;
  v28 = a10;
  v31 = a14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v20 = &v27 - v19;
  (*(v21 + 16))(&v27 - v19, a3, TupleTypeMetadata2);
  v22 = *(TupleTypeMetadata2 + 48);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(a11);
  v24 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(a13, a11);
  v25 = v33;
  v31(v20, &v20[v22], v32, v30, v33, a6, a7, v23, a8, v29, v28, v24);
  (*(*(a7 - 8) + 8))(&v20[v22], a7);
  (*(*(a6 - 8) + 8))(v20, a6);
  result = (*(a8 + 16))(v25, a8);
  *v34 = result;
  return result;
}

uint64_t static vDSP.subtract<A, B, C, D>(multiplication:_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v29 = a5;
  v30 = a3;
  v33 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v21 = &v29 - v20;
  (*(*(a6 - 8) + 16))(&v29 - v20, a1, a6);
  v31 = TupleTypeMetadata2;
  (*(*(a7 - 8) + 16))(&v21[*(TupleTypeMetadata2 + 48)], v33, a7);
  v22 = *(*(a12 + 8) + 16);
  v32 = a4;
  v33 = a8;
  v23 = v22(a8);
  result = (*(a10 + 16))(a6, a10);
  if (result == v23)
  {
    result = (*(a11 + 16))(a7, a11);
    if (result == v23)
    {
      v25 = MEMORY[0x1EEE9AC00](a13);
      *(&v29 - 12) = v29;
      *(&v29 - 11) = a6;
      v26 = v33;
      *(&v29 - 10) = a7;
      *(&v29 - 9) = v26;
      *(&v29 - 8) = v27;
      *(&v29 - 7) = a10;
      *(&v29 - 6) = a11;
      *(&v29 - 5) = a12;
      v28 = v30;
      *(&v29 - 4) = v21;
      *(&v29 - 3) = v28;
      *(&v29 - 2) = v23;
      (*(a12 + 16))(v25);
      return (*(v19 + 8))(v21, v31);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:_:result:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!a3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!a5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (*a7)
  {
    if ((a8 & 0x8000000000000000) == 0)
    {
      return a9(a3, 1, a5, 1, result, 1);
    }

    __break(1u);
    goto LABEL_8;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t static vDSP.add<A, B>(multiplication:multiplication:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7, float a8)
{
  v27 = a6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v26 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = &v26 - v16;
  v18 = swift_getTupleTypeMetadata2();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v26 - v20;
  (*(*(a3 - 8) + 16))(&v26 - v20, a1, a3);
  *&v21[*(v18 + 48)] = a7;
  (*(*(a4 - 8) + 16))(v17, a2, a4);
  v22 = TupleTypeMetadata2;
  *&v17[*(TupleTypeMetadata2 + 48)] = a8;
  v23 = (*(a5 + 16))(a3, a5);
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = v27;
  v32 = v21;
  v33 = v17;
  v24 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5(v23, partial apply for closure #1 in static vDSP.add<A, B>(multiplication:multiplication:));
  (*(v26 + 8))(v17, v22);
  (*(v19 + 8))(v21, v18);
  return v24;
}

uint64_t closure #1 in static vDSP.add<A, B>(multiplication:multiplication:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a8;
  v29 = a2;
  v25[1] = a3;
  v26 = a4;
  v27 = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = v25 - v14;
  v16 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v25 - v17;
  (*(v19 + 16))(v25 - v17, a3, v16);
  v20 = *&v18[*(v16 + 48)];
  (*(v13 + 16))(v15, v26, TupleTypeMetadata2);
  v21 = *&v15[*(TupleTypeMetadata2 + 48)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrySfGMd);
  v23 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, &_sSrySfGMd);
  static vDSP.add<A, B, C>(multiplication:multiplication:result:)(v18, v15, v27, a5, a6, v22, a7, v28, v20, v21, v23);
  (*(*(a6 - 8) + 8))(v15, a6);
  (*(*(a5 - 8) + 8))(v18, a5);
  result = (*(a7 + 16))(a5, a7);
  *v29 = result;
  return result;
}

{
  v28 = a8;
  v29 = a2;
  v25[1] = a3;
  v26 = a4;
  v27 = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = v25 - v14;
  v16 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v25 - v17;
  (*(v19 + 16))(v25 - v17, a3, v16);
  v20 = *&v18[*(v16 + 48)];
  (*(v13 + 16))(v15, v26, TupleTypeMetadata2);
  v21 = *&v15[*(TupleTypeMetadata2 + 48)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrySdGMd);
  v23 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, &_sSrySdGMd);
  static vDSP.add<A, B, C>(multiplication:multiplication:result:)(v18, v15, v27, a5, a6, v22, a7, v28, v20, v21, v23);
  (*(*(a6 - 8) + 8))(v15, a6);
  (*(*(a5 - 8) + 8))(v18, a5);
  result = (*(a7 + 16))(a5, a7);
  *v29 = result;
  return result;
}

uint64_t static vDSP.add<A, B, C>(multiplication:multiplication:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10, uint64_t a11)
{
  v32 = a2;
  v33 = a8;
  v31 = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v30 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v20 = &v27 - v19;
  v21 = swift_getTupleTypeMetadata2();
  v28 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v27 - v22;
  (*(*(a4 - 8) + 16))(&v27 - v22, v31, a4);
  v29 = v21;
  *&v23[*(v21 + 48)] = a9;
  (*(*(a5 - 8) + 16))(v20, v32, a5);
  v31 = TupleTypeMetadata2;
  v32 = a3;
  *&v20[*(TupleTypeMetadata2 + 48)] = a10;
  v24 = (*(*(a11 + 8) + 16))(a6);
  result = (*(a7 + 16))(a4, a7);
  if (result == v24)
  {
    result = (*(v33 + 16))(a5);
    if (result == v24)
    {
      MEMORY[0x1EEE9AC00](result);
      *(&v27 - 10) = a4;
      *(&v27 - 9) = a5;
      *(&v27 - 8) = v26;
      *(&v27 - 7) = a7;
      *(&v27 - 6) = v33;
      *(&v27 - 5) = a11;
      *(&v27 - 4) = v23;
      *(&v27 - 3) = v20;
      *(&v27 - 2) = v24;
      (*(a11 + 16))(partial apply for closure #1 in static vDSP.add<A, B, C>(multiplication:multiplication:result:));
      (*(v30 + 8))(v20, v31);
      return (*(v28 + 8))(v23, v29);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:multiplication:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v17 = *MEMORY[0x1E69E9840];
  v16 = *(a3 + *(swift_getTupleTypeMetadata2() + 48));
  return closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:multiplication:result:)(&v16, a4, a5, a6, a1, a2, a7, a8);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:multiplication:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = *(a2 + *(swift_getTupleTypeMetadata2() + 48));
  if (!a3)
  {
    goto LABEL_7;
  }

  if (!a5)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  if (!*a7)
  {
    goto LABEL_9;
  }

  if (a8 < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  return MEMORY[0x1B8CB2FE0](a3, 1, a1, a5, 1, &v14);
}

uint64_t static vDSP.add<A, B>(multiplication:multiplication:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v27 = a6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v26 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = &v26 - v16;
  v18 = swift_getTupleTypeMetadata2();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v26 - v20;
  (*(*(a3 - 8) + 16))(&v26 - v20, a1, a3);
  *&v21[*(v18 + 48)] = a7;
  (*(*(a4 - 8) + 16))(v17, a2, a4);
  v22 = TupleTypeMetadata2;
  *&v17[*(TupleTypeMetadata2 + 48)] = a8;
  v23 = (*(a5 + 16))(a3, a5);
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = v27;
  v32 = v21;
  v33 = v17;
  v24 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5(v23, partial apply for closure #1 in static vDSP.add<A, B>(multiplication:multiplication:));
  (*(v26 + 8))(v17, v22);
  (*(v19 + 8))(v21, v18);
  return v24;
}

uint64_t static vDSP.add<A, B, C>(multiplication:multiplication:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11)
{
  v32 = a2;
  v33 = a8;
  v31 = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v30 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v20 = &v27 - v19;
  v21 = swift_getTupleTypeMetadata2();
  v28 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v27 - v22;
  (*(*(a4 - 8) + 16))(&v27 - v22, v31, a4);
  v29 = v21;
  *&v23[*(v21 + 48)] = a9;
  (*(*(a5 - 8) + 16))(v20, v32, a5);
  v31 = TupleTypeMetadata2;
  v32 = a3;
  *&v20[*(TupleTypeMetadata2 + 48)] = a10;
  v24 = (*(*(a11 + 8) + 16))(a6);
  result = (*(a7 + 16))(a4, a7);
  if (result == v24)
  {
    result = (*(v33 + 16))(a5);
    if (result == v24)
    {
      MEMORY[0x1EEE9AC00](result);
      *(&v27 - 10) = a4;
      *(&v27 - 9) = a5;
      *(&v27 - 8) = v26;
      *(&v27 - 7) = a7;
      *(&v27 - 6) = v33;
      *(&v27 - 5) = a11;
      *(&v27 - 4) = v23;
      *(&v27 - 3) = v20;
      *(&v27 - 2) = v24;
      (*(a11 + 16))(partial apply for closure #1 in static vDSP.add<A, B, C>(multiplication:multiplication:result:));
      (*(v30 + 8))(v20, v31);
      return (*(v28 + 8))(v23, v29);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

__n128 closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:multiplication:result:)(const double *a1, uint64_t a2, uint64_t a3, uint64_t a4, const double *a5, uint64_t a6, double **a7, vDSP_Length a8)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = *(a3 + *(swift_getTupleTypeMetadata2() + 48));
  closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:multiplication:result:)(v16, a4, a5, a6, a1, a2, a7, a8);
  return result;
}

void closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:multiplication:result:)(const double *a1, uint64_t a2, const double *a3, uint64_t a4, const double *a5, uint64_t a6, double **a7, vDSP_Length a8)
{
  __D[1] = *MEMORY[0x1E69E9840];
  __D[0] = *(a2 + *(swift_getTupleTypeMetadata2() + 48));
  if (!a3)
  {
    goto LABEL_7;
  }

  if (!a5)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  if (!*a7)
  {
    goto LABEL_9;
  }

  if ((a8 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  vDSP_vsmsmaD(a3, 1, a1, a5, 1, __D, *a7, 1, a8);
}

uint64_t static vDSP.add<A, B, C, D>(multiplication:multiplication:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unint64_t a11, uint64_t a12)
{
  return static vDSP.add<A, B, C, D>(multiplication:multiplication:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, __PAIR128__(a11, a10), a12, partial apply for closure #1 in static vDSP.add<A, B, C, D>(multiplication:multiplication:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vDSP.add<A, B, C, D>(multiplication:multiplication:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, __PAIR128__(a11, a10), a12, partial apply for closure #1 in static vDSP.add<A, B, C, D>(multiplication:multiplication:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vDSP.add<A, B, C, D, E>(multiplication:multiplication:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  return static vDSP.add<A, B, C, D, E>(multiplication:multiplication:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, partial apply for closure #1 in static vDSP.add<A, B, C, D, E>(multiplication:multiplication:result:));
}

{
  return static vDSP.add<A, B, C, D, E>(multiplication:multiplication:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, partial apply for closure #1 in static vDSP.add<A, B, C, D, E>(multiplication:multiplication:result:));
}

uint64_t closure #1 in static vDSP.add<A, B, C, D>(multiplication:multiplication:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t *a12, uint64_t a13, unint64_t *a14, void (*a15)(char *, char *, char *, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, void, uint64_t, uint64_t))
{
  v43 = a3;
  v47 = a15;
  v48 = a2;
  v45 = a9;
  v46 = a1;
  v44 = a10;
  v41 = a7;
  v42 = a11;
  v37 = a6;
  v38 = a12;
  v39 = a4;
  v40 = a14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v21 = &v36 - v20;
  v22 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v36 - v23;
  (*(v25 + 16))(&v36 - v23, a3, v22);
  v26 = *(v22 + 48);
  (*(v19 + 16))(v21, v39, TupleTypeMetadata2);
  v27 = *(TupleTypeMetadata2 + 48);
  v28 = v38;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v38);
  v30 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(v40, v28);
  v31 = v45;
  v35 = v29;
  v32 = v37;
  v33 = v41;
  v47(v24, &v24[v26], v21, &v21[v27], v46, a5, v37, v41, a8, v35, v45, v44, *(&v44 + 1), v42, v30);
  (*(*(a8 - 8) + 8))(&v21[v27], a8);
  (*(*(v33 - 8) + 8))(v21, v33);
  (*(*(v32 - 8) + 8))(&v24[v26], v32);
  (*(*(a5 - 8) + 8))(v24, a5);
  result = (*(v31 + 16))(a5, v31);
  *v48 = result;
  return result;
}

uint64_t static vDSP.multiply<A, B, C>(addition:addition:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  return static vDSP.multiply<A, B, C>(addition:addition:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, partial apply for closure #1 in static vDSP.multiply<A, B, C>(addition:addition:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vDSP.multiply<A, B, C>(addition:addition:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, partial apply for closure #1 in static vDSP.multiply<A, B, C>(addition:addition:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vDSP.multiply<A, B, C, D>(addition:addition:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  return static vDSP.multiply<A, B, C, D>(addition:addition:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, partial apply for closure #1 in static vDSP.multiply<A, B, C, D>(addition:addition:result:));
}

{
  return static vDSP.multiply<A, B, C, D>(addition:addition:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, partial apply for closure #1 in static vDSP.multiply<A, B, C, D>(addition:addition:result:));
}

uint64_t static vDSP.multiply<A, B, C>(addition:addition:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t, uint64_t, char *))
{
  v31 = a4;
  v36 = a11;
  v37 = a12;
  v35 = a10;
  v33 = a8;
  v34 = a9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v32 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v19 = &TupleTypeMetadata2 - v18;
  v20 = swift_getTupleTypeMetadata2();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &TupleTypeMetadata2 - v22;
  (*(*(a5 - 8) + 16))(&TupleTypeMetadata2 - v22, a1, a5);
  (*(*(a6 - 8) + 16))(&v23[*(v20 + 48)], a2, a6);
  v24 = *(*(a7 - 8) + 16);
  v24(v19, a3, a7);
  v25 = TupleTypeMetadata2;
  v24(&v19[*(TupleTypeMetadata2 + 48)], v31, a7);
  v26 = v33;
  v27 = (*(v33 + 16))(a5);
  v39 = a5;
  v40 = a6;
  v41 = a7;
  v42 = v26;
  v43 = v34;
  v44 = v35;
  v45 = v23;
  v46 = v19;
  v28 = v37(v27, v36, v38);
  (*(v32 + 8))(v19, v25);
  (*(v21 + 8))(v23, v20);
  return v28;
}

uint64_t closure #1 in static vDSP.multiply<A, B, C>(addition:addition:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, unint64_t *a13, void (*a14)(char *, char *, char *, char *, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v45 = a2;
  v37 = a4;
  v38 = a8;
  v46 = a5;
  v42 = a9;
  v40 = a3;
  v41 = a10;
  v43 = a14;
  v44 = a1;
  v39 = a13;
  v36[0] = a6;
  v36[1] = a12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v19 = v36 - v18;
  v20 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v36 - v21;
  (*(v23 + 16))(v36 - v21, a3, v20);
  v24 = *(v20 + 48);
  (*(v17 + 16))(v19, v37, TupleTypeMetadata2);
  v25 = *(TupleTypeMetadata2 + 48);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(a11);
  v27 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(v39, a11);
  v28 = &v22[v24];
  v29 = v24;
  v30 = v38;
  v31 = v36[0];
  v43(v22, v28, v19, &v19[v25], v44, v46, v36[0], a7, v26, v38, v42, v41, v27);
  v32 = *(*(a7 - 8) + 8);
  v32(&v19[v25], a7);
  v32(v19, a7);
  (*(*(v31 - 8) + 8))(&v22[v29], v31);
  v33 = v22;
  v34 = v46;
  (*(*(v46 - 8) + 8))(v33);
  result = (*(v30 + 16))(v34, v30);
  *v45 = result;
  return result;
}

uint64_t static vDSP.multiply<A, B, C, D>(addition:addition:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v45 = a13;
  v46 = a5;
  v42 = a3;
  v43 = a10;
  v44 = a9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v41 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v22 = &v36 - v21;
  v23 = swift_getTupleTypeMetadata2();
  v38 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v36 - v24;
  (*(*(a6 - 8) + 16))(&v36 - v24, a1, a6);
  v39 = v23;
  (*(*(a7 - 8) + 16))(&v25[*(v23 + 48)], a2, a7);
  v26 = *(*(a8 - 8) + 16);
  v26(v22, v42, a8);
  v42 = TupleTypeMetadata2;
  v26(&v22[*(TupleTypeMetadata2 + 48)], a4, a8);
  v27 = (*(*(v45 + 8) + 16))(v44);
  v28 = *(v43 + 16);
  v40 = a6;
  result = v28(a6);
  if (result != v27)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = (*(a11 + 16))(a7, a11);
  if (result != v27)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v37 = a7;
  v30 = *(a12 + 16);
  result = v30(a8, a12);
  if (result != v27)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = v30(a8, a12);
  if (result == v27)
  {
    v31 = MEMORY[0x1EEE9AC00](a14);
    v32 = v37;
    *(&v36 - 12) = v40;
    *(&v36 - 11) = v32;
    v34 = v43;
    v33 = v44;
    *(&v36 - 10) = a8;
    *(&v36 - 9) = v33;
    *(&v36 - 8) = v34;
    *(&v36 - 7) = a11;
    v35 = v45;
    *(&v36 - 6) = a12;
    *(&v36 - 5) = v35;
    *(&v36 - 4) = v25;
    *(&v36 - 3) = v22;
    *(&v36 - 2) = v27;
    (*(v35 + 16))(v31);
    (*(v41 + 8))(v22, v42);
    return (*(v38 + 8))(v25, v39);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t static vDSP.subtract<A, B, C, D>(multiplication:multiplication:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  return static vDSP.subtract<A, B, C, D>(multiplication:multiplication:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, partial apply for closure #1 in static vDSP.subtract<A, B, C, D>(multiplication:multiplication:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vDSP.subtract<A, B, C, D>(multiplication:multiplication:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, partial apply for closure #1 in static vDSP.subtract<A, B, C, D>(multiplication:multiplication:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vDSP.subtract<A, B, C, D, E>(multiplication:multiplication:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  return static vDSP.subtract<A, B, C, D, E>(multiplication:multiplication:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, partial apply for closure #1 in static vDSP.subtract<A, B, C, D, E>(multiplication:multiplication:result:));
}

{
  return static vDSP.subtract<A, B, C, D, E>(multiplication:multiplication:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, partial apply for closure #1 in static vDSP.subtract<A, B, C, D, E>(multiplication:multiplication:result:));
}

uint64_t static vDSP.subtract<A, B, C, D>(multiplication:multiplication:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t (*a14)(uint64_t, uint64_t, char *))
{
  v31 = a3;
  v32 = a4;
  v30 = a2;
  v37 = a13;
  v38 = a14;
  v34 = a9;
  v35 = a10;
  v36 = a12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v33 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v20 = &TupleTypeMetadata2 - v19;
  v21 = swift_getTupleTypeMetadata2();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &TupleTypeMetadata2 - v23;
  (*(*(a7 - 8) + 16))(&TupleTypeMetadata2 - v23, a1, a7);
  (*(*(a8 - 8) + 16))(&v24[*(v21 + 48)], v30, a8);
  (*(*(a5 - 8) + 16))(v20, v31, a5);
  v25 = TupleTypeMetadata2;
  (*(*(a6 - 8) + 16))(&v20[*(TupleTypeMetadata2 + 48)], v32, a6);
  v26 = (*(a11 + 16))(a7, a11);
  v40 = a5;
  v41 = a6;
  v42 = a7;
  v43 = a8;
  v44 = v34;
  v45 = v35;
  v46 = a11;
  v47 = v36;
  v48 = v24;
  v49 = v20;
  v27 = v38(v26, v37, v39);
  (*(v33 + 8))(v20, v25);
  (*(v22 + 8))(v24, v21);
  return v27;
}

uint64_t closure #1 in static vDSP.subtract<A, B, C, D>(multiplication:multiplication:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, unint64_t *a15, void (*a16)(char *, char *, char *, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v40 = a8;
  v41 = a5;
  v52 = a1;
  v53 = a2;
  v48 = a3;
  v49 = a10;
  v46 = a12;
  v47 = a11;
  v50 = a9;
  v51 = a16;
  v44 = a4;
  v45 = a15;
  v42 = a14;
  v43 = a13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v22 = &v39 - v21;
  v23 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v39 - v24;
  (*(v26 + 16))(&v39 - v24, a3, v23);
  v27 = *(v23 + 48);
  (*(v20 + 16))(v22, v44, TupleTypeMetadata2);
  v28 = *(TupleTypeMetadata2 + 48);
  v29 = v43;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v43);
  v31 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(v45, v29);
  v32 = v47;
  v33 = v27;
  v34 = &v25[v27];
  v38 = v30;
  v35 = v40;
  v36 = v41;
  v51(v25, v34, v22, &v22[v28], v52, v41, a6, a7, v40, v38, v50, v49, v47, v46, v31);
  (*(*(a6 - 8) + 8))(&v22[v28], a6);
  (*(*(v36 - 8) + 8))(v22, v36);
  (*(*(v35 - 8) + 8))(&v25[v33], v35);
  (*(*(a7 - 8) + 8))(v25, a7);
  result = (*(v32 + 16))(a7, v32);
  *v53 = result;
  return result;
}

uint64_t static vDSP.subtract<A, B, C, D, E>(multiplication:multiplication:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v45 = a3;
  v46 = a4;
  v43 = a1;
  v44 = a2;
  v47 = a10;
  v48 = a5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v42 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v21 = &v38 - v20;
  v22 = swift_getTupleTypeMetadata2();
  v38 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v38 - v23;
  (*(*(a8 - 8) + 16))(&v38 - v23, v43, a8);
  v39 = v22;
  (*(*(a9 - 8) + 16))(&v24[*(v22 + 48)], v44, a9);
  v25 = *(*(a6 - 8) + 16);
  v26 = v45;
  v45 = a6;
  v25(v21, v26, a6);
  v43 = TupleTypeMetadata2;
  v27 = *(*(a7 - 8) + 16);
  v28 = &v21[*(TupleTypeMetadata2 + 48)];
  v29 = v46;
  v46 = a7;
  v27(v28, v29, a7);
  v44 = a15;
  v30 = (*(*(a15 + 8) + 16))(v47);
  v31 = *(a13 + 16);
  v40 = a13;
  v41 = a8;
  result = v31(a8, a13);
  if (result != v30)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = (*(a14 + 16))(a9, a14);
  if (result != v30)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v33 = v45;
  result = (*(a11 + 16))(v45, a11);
  if (result != v30)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = (*(a12 + 16))(v46, a12);
  if (result == v30)
  {
    v34 = MEMORY[0x1EEE9AC00](a16);
    *(&v38 - 14) = v33;
    *(&v38 - 13) = v35;
    v36 = v40;
    *(&v38 - 12) = v41;
    *(&v38 - 11) = a9;
    *(&v38 - 10) = v47;
    *(&v38 - 9) = a11;
    *(&v38 - 8) = a12;
    *(&v38 - 7) = v36;
    v37 = v44;
    *(&v38 - 6) = a14;
    *(&v38 - 5) = v37;
    *(&v38 - 4) = v24;
    *(&v38 - 3) = v21;
    *(&v38 - 2) = v30;
    (*(v37 + 16))(v34);
    (*(v42 + 8))(v21, v43);
    return (*(v38 + 8))(v24, v39);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t static vDSP.multiply<A, B, C, D>(subtraction:subtraction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unint64_t a11, uint64_t a12)
{
  return static vDSP.add<A, B, C, D>(multiplication:multiplication:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, __PAIR128__(a11, a10), a12, partial apply for closure #1 in static vDSP.multiply<A, B, C, D>(subtraction:subtraction:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vDSP.add<A, B, C, D>(multiplication:multiplication:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, __PAIR128__(a11, a10), a12, partial apply for closure #1 in static vDSP.multiply<A, B, C, D>(subtraction:subtraction:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vDSP.multiply<A, B, C, D, E>(subtraction:subtraction:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  return static vDSP.add<A, B, C, D, E>(multiplication:multiplication:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, partial apply for closure #1 in static vDSP.multiply<A, B, C, D, E>(subtraction:subtraction:result:));
}

{
  return static vDSP.add<A, B, C, D, E>(multiplication:multiplication:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, partial apply for closure #1 in static vDSP.multiply<A, B, C, D, E>(subtraction:subtraction:result:));
}

uint64_t static vDSP.multiply<A, B, C, D>(addition:subtraction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unint64_t a11, uint64_t a12)
{
  return static vDSP.add<A, B, C, D>(multiplication:multiplication:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, __PAIR128__(a11, a10), a12, partial apply for closure #1 in static vDSP.multiply<A, B, C, D>(addition:subtraction:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vDSP.add<A, B, C, D>(multiplication:multiplication:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, __PAIR128__(a11, a10), a12, partial apply for closure #1 in static vDSP.multiply<A, B, C, D>(addition:subtraction:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  return static vDSP.add<A, B, C, D, E>(multiplication:multiplication:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, partial apply for closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:));
}

{
  return static vDSP.add<A, B, C, D, E>(multiplication:multiplication:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, partial apply for closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:));
}

uint64_t static vDSP.add<A, B, C, D>(multiplication:multiplication:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(uint64_t, uint64_t, char *))
{
  v32 = a4;
  v31 = a3;
  v30 = a2;
  v36 = a12;
  v37 = a13;
  v35 = a11;
  v34 = a10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v33 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v19 = &v28 - v18;
  v20 = swift_getTupleTypeMetadata2();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v28 - v22;
  (*(*(a5 - 8) + 16))(&v28 - v22, a1, a5);
  (*(*(a6 - 8) + 16))(&v23[*(v20 + 48)], v30, a6);
  (*(*(a7 - 8) + 16))(v19, v31, a7);
  v24 = TupleTypeMetadata2;
  (*(*(a8 - 8) + 16))(&v19[*(TupleTypeMetadata2 + 48)], v32, a8);
  v25 = (*(a9 + 16))(a5, a9);
  v39 = a5;
  v40 = a6;
  v41 = a7;
  v42 = a8;
  v43 = a9;
  v44 = v34;
  v45 = v35;
  v46 = v23;
  v47 = v19;
  v26 = v37(v25, v36, v38);
  (*(v33 + 8))(v19, v24);
  (*(v21 + 8))(v23, v20);
  return v26;
}

uint64_t static vDSP.add<A, B, C, D, E>(multiplication:multiplication:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v45 = a4;
  v46 = a3;
  v43 = a1;
  v44 = a2;
  v47 = a10;
  v48 = a5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v42 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v21 = &v38 - v20;
  v22 = swift_getTupleTypeMetadata2();
  v39 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v38 - v23;
  (*(*(a6 - 8) + 16))(&v38 - v23, v43, a6);
  v40 = v22;
  (*(*(a7 - 8) + 16))(&v24[*(v22 + 48)], v44, a7);
  v25 = *(*(a8 - 8) + 16);
  v26 = v46;
  v46 = a8;
  v25(v21, v26, a8);
  v43 = TupleTypeMetadata2;
  v27 = *(*(a9 - 8) + 16);
  v28 = &v21[*(TupleTypeMetadata2 + 48)];
  v29 = v45;
  v45 = a9;
  v27(v28, v29, a9);
  v44 = a15;
  v30 = (*(*(a15 + 8) + 16))(v47);
  v31 = *(a11 + 16);
  v41 = a11;
  result = v31(a6, a11);
  if (result != v30)
  {
    __break(1u);
    goto LABEL_7;
  }

  v38 = a6;
  result = (*(a12 + 16))(a7, a12);
  if (result != v30)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  result = (*(a13 + 16))(v46, a13);
  if (result != v30)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v33 = v45;
  result = (*(a14 + 16))(v45, a14);
  if (result == v30)
  {
    v34 = MEMORY[0x1EEE9AC00](a16);
    *(&v38 - 14) = v38;
    *(&v38 - 13) = a7;
    v35 = v47;
    *(&v38 - 12) = v46;
    *(&v38 - 11) = v33;
    v36 = v41;
    *(&v38 - 10) = v35;
    *(&v38 - 9) = v36;
    *(&v38 - 8) = a12;
    *(&v38 - 7) = a13;
    v37 = v44;
    *(&v38 - 6) = a14;
    *(&v38 - 5) = v37;
    *(&v38 - 4) = v24;
    *(&v38 - 3) = v21;
    *(&v38 - 2) = v30;
    (*(v37 + 16))(v34);
    (*(v42 + 8))(v21, v43);
    return (*(v39 + 8))(v24, v40);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C, D, E>(multiplication:multiplication:result:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t (*a11)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  if (!a3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!a5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!a7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*a9)
  {
    if ((a10 & 0x8000000000000000) == 0)
    {
      return a11(a3, 1, a5, 1, a7, 1, result, 1, *a9, 1, a10);
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t static vDSP.add<A>(multiplication:_:)(uint64_t a1, uint64_t a2, uint64_t a3, float a4, float a5)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = &v17[-v12];
  (*(*(a2 - 8) + 16))(&v17[-v12], a1, a2);
  *&v13[*(TupleTypeMetadata2 + 48)] = a4;
  v14 = (*(a3 + 16))(a2, a3);
  v18 = a2;
  v19 = a3;
  v20 = v13;
  v21 = a5;
  v15 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5(v14, partial apply for closure #1 in static vDSP.add<A>(multiplication:_:));
  (*(v11 + 8))(v13, TupleTypeMetadata2);
  return v15;
}

uint64_t closure #1 in static vDSP.add<A>(multiplication:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v14 = &v20 - v13;
  (*(v15 + 16))(&v20 - v13, a3, TupleTypeMetadata2);
  v16 = *&v14[*(TupleTypeMetadata2 + 48)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrySfGMd);
  v18 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, &_sSrySfGMd);
  static vDSP.add<A, B>(multiplication:_:result:)(v14, v16, a6, a1, a4, v17, a5, v18);
  (*(*(a4 - 8) + 8))(v14, a4);
  result = (*(a5 + 16))(a4, a5);
  *a2 = result;
  return result;
}

uint64_t static vDSP.add<A, B>(multiplication:_:result:)(uint64_t a1, float a2, float a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v18 = &v22[-v17];
  (*(*(a5 - 8) + 16))(&v22[-v17], a1, a5);
  *&v18[*(TupleTypeMetadata2 + 48)] = a2;
  v19 = (*(*(a8 + 8) + 16))(a6);
  result = (*(a7 + 16))(a5, a7);
  if (result == v19)
  {
    MEMORY[0x1EEE9AC00](result);
    *&v22[-64] = a5;
    *&v22[-56] = v21;
    *&v22[-48] = a7;
    *&v22[-40] = a8;
    *&v22[-32] = v18;
    *&v22[-24] = a3;
    *&v22[-16] = v19;
    (*(a8 + 16))(partial apply for closure #1 in static vDSP.add<A, B>(multiplication:_:result:));
    return (*(v16 + 8))(v18, TupleTypeMetadata2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static vDSP.add<A, B>(multiplication:_:result:)(uint64_t a1, float a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = *(a4 + *(swift_getTupleTypeMetadata2() + 48));
  v12 = a2;
  v13 = v10;
  if (!a1)
  {
    goto LABEL_6;
  }

  if (!*a5)
  {
    goto LABEL_7;
  }

  if (a6 < 0)
  {
    __break(1u);
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);
  }

  return MEMORY[0x1B8CB2FC0](a1, 1, &v13, &v12);
}

uint64_t static vDSP.add<A>(multiplication:_:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = &v17[-v12];
  (*(*(a2 - 8) + 16))(&v17[-v12], a1, a2);
  *&v13[*(TupleTypeMetadata2 + 48)] = a4;
  v14 = (*(a3 + 16))(a2, a3);
  v18 = a2;
  v19 = a3;
  v20 = v13;
  v21 = a5;
  v15 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5(v14, partial apply for closure #1 in static vDSP.add<A>(multiplication:_:));
  (*(v11 + 8))(v13, TupleTypeMetadata2);
  return v15;
}

uint64_t closure #1 in static vDSP.add<A>(multiplication:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v14 = &v20 - v13;
  (*(v15 + 16))(&v20 - v13, a3, TupleTypeMetadata2);
  v16 = *&v14[*(TupleTypeMetadata2 + 48)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrySdGMd);
  v18 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, &_sSrySdGMd);
  static vDSP.add<A, B>(multiplication:_:result:)(v14, v16, a6, a1, a4, v17, a5, v18);
  (*(*(a4 - 8) + 8))(v14, a4);
  result = (*(a5 + 16))(a4, a5);
  *a2 = result;
  return result;
}

uint64_t static vDSP.add<A, B>(multiplication:_:result:)(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v18 = &v22[-v17];
  (*(*(a5 - 8) + 16))(&v22[-v17], a1, a5);
  *&v18[*(TupleTypeMetadata2 + 48)] = a2;
  v19 = (*(*(a8 + 8) + 16))(a6);
  result = (*(a7 + 16))(a5, a7);
  if (result == v19)
  {
    MEMORY[0x1EEE9AC00](result);
    *&v22[-64] = a5;
    *&v22[-56] = v21;
    *&v22[-48] = a7;
    *&v22[-40] = a8;
    *&v22[-32] = v18;
    *&v22[-24] = a3;
    *&v22[-16] = v19;
    (*(a8 + 16))(partial apply for closure #1 in static vDSP.add<A, B>(multiplication:_:result:));
    return (*(v16 + 8))(v18, TupleTypeMetadata2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in static vDSP.add<A, B>(multiplication:_:result:)(const double *a1, double a2, uint64_t a3, uint64_t a4, double **a5, vDSP_Length a6)
{
  __B[1] = *MEMORY[0x1E69E9840];
  v10 = *(a4 + *(swift_getTupleTypeMetadata2() + 48));
  __C = a2;
  __B[0] = v10;
  if (!a1)
  {
    goto LABEL_6;
  }

  if (!*a5)
  {
    goto LABEL_7;
  }

  if ((a6 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);
  }

  vDSP_vsmsaD(a1, 1, __B, &__C, *a5, 1, a6);
}

uint64_t static vDSP.subtract<A, B>(multiplication:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = &v21[-v16];
  (*(*(a4 - 8) + 16))(&v21[-v16], a1, a4);
  *&v17[*(TupleTypeMetadata2 + 48)] = a7;
  v18 = (*(a5 + 16))(a3, a5);
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = v17;
  v27 = a2;
  v19 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5(v18, partial apply for closure #1 in static vDSP.subtract<A, B>(multiplication:_:));
  (*(v15 + 8))(v17, TupleTypeMetadata2);
  return v19;
}

uint64_t closure #1 in static vDSP.subtract<A, B>(multiplication:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a2;
  v23 = a8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v22 - v15;
  (*(v17 + 16))(&v22 - v15, a3, TupleTypeMetadata2);
  v18 = *&v16[*(TupleTypeMetadata2 + 48)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrySfGMd);
  v20 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, &_sSrySfGMd);
  static vDSP.subtract<A, B, C>(multiplication:_:result:)(v16, a4, a1, a5, a6, v19, a7, v23, v18, v20);
  (*(*(a6 - 8) + 8))(v16, a6);
  result = (*(a7 + 16))(a5, a7);
  *v24 = result;
  return result;
}

{
  v24 = a2;
  v23 = a8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v22 - v15;
  (*(v17 + 16))(&v22 - v15, a3, TupleTypeMetadata2);
  v18 = *&v16[*(TupleTypeMetadata2 + 48)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrySdGMd);
  v20 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, &_sSrySdGMd);
  static vDSP.subtract<A, B, C>(multiplication:_:result:)(v16, a4, a1, a5, a6, v19, a7, v23, v18, v20);
  (*(*(a6 - 8) + 8))(v16, a6);
  result = (*(a7 + 16))(a5, a7);
  *v24 = result;
  return result;
}

uint64_t static vDSP.subtract<A, B, C>(multiplication:_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10)
{
  v27 = a4;
  v28 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v20 = &v26 - v19;
  (*(*(a5 - 8) + 16))(&v26 - v19, a1, a5);
  *&v20[*(TupleTypeMetadata2 + 48)] = a9;
  v21 = *(*(a10 + 8) + 16);
  v26 = a3;
  v22 = v21(a6);
  result = (*(a8 + 16))(a5, a8);
  if (result == v22)
  {
    result = (*(a7 + 16))(v27, a7);
    if (result == v22)
    {
      MEMORY[0x1EEE9AC00](result);
      v24 = v28;
      *(&v26 - 10) = v27;
      *(&v26 - 9) = a5;
      *(&v26 - 8) = v25;
      *(&v26 - 7) = a7;
      *(&v26 - 6) = a8;
      *(&v26 - 5) = a10;
      *(&v26 - 4) = v20;
      *(&v26 - 3) = v24;
      *(&v26 - 2) = v22;
      (*(a10 + 16))(partial apply for closure #1 in static vDSP.subtract<A, B, C>(multiplication:_:result:));
      return (*(v18 + 8))(v20, TupleTypeMetadata2);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static vDSP.subtract<A, B>(multiplication:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = &v21[-v16];
  (*(*(a4 - 8) + 16))(&v21[-v16], a1, a4);
  *&v17[*(TupleTypeMetadata2 + 48)] = a7;
  v18 = (*(a5 + 16))(a3, a5);
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = v17;
  v27 = a2;
  v19 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5(v18, partial apply for closure #1 in static vDSP.subtract<A, B>(multiplication:_:));
  (*(v15 + 8))(v17, TupleTypeMetadata2);
  return v19;
}

uint64_t static vDSP.subtract<A, B, C>(multiplication:_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  v27 = a4;
  v28 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v20 = &v26 - v19;
  (*(*(a5 - 8) + 16))(&v26 - v19, a1, a5);
  *&v20[*(TupleTypeMetadata2 + 48)] = a9;
  v21 = *(*(a10 + 8) + 16);
  v26 = a3;
  v22 = v21(a6);
  result = (*(a8 + 16))(a5, a8);
  if (result == v22)
  {
    result = (*(a7 + 16))(v27, a7);
    if (result == v22)
    {
      MEMORY[0x1EEE9AC00](result);
      v24 = v28;
      *(&v26 - 10) = v27;
      *(&v26 - 9) = a5;
      *(&v26 - 8) = v25;
      *(&v26 - 7) = a7;
      *(&v26 - 6) = a8;
      *(&v26 - 5) = a10;
      *(&v26 - 4) = v20;
      *(&v26 - 3) = v24;
      *(&v26 - 2) = v22;
      (*(a10 + 16))(partial apply for closure #1 in static vDSP.subtract<A, B, C>(multiplication:_:result:));
      return (*(v18 + 8))(v20, TupleTypeMetadata2);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C>(multiplication:_:result:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!a3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*a6)
  {
    if ((a7 & 0x8000000000000000) == 0)
    {
      return a8(a3, 1, a5, result, 1);
    }

    __break(1u);
    goto LABEL_7;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t static vDSP.normalize<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static vDSP.normalize<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.normalize<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

{
  return static vDSP.normalize<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.normalize<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

uint64_t closure #1 in static vDSP.normalize<A>(_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrySdGMd);
  v11 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, &_sSrySdGMd);
  v12 = static vDSP.normalize<A, B>(_:result:)(a3, a1, a4, v10, a5, v11);
  result = (*(a5 + 16))(a4, a5, v12);
  *a2 = result;
  return result;
}

{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrySfGMd);
  v11 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, &_sSrySfGMd);
  v12 = static vDSP.normalize<A, B>(_:result:)(a3, a1, a4, v10, a5, v11);
  result = (*(a5 + 16))(a4, a5, v12);
  *a2 = result;
  return result;
}

double static vDSP.normalize<A, B>(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = 0.0;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a2;
  v15 = &v8;
  v16 = &v7;
  v17 = a1;
  (*(a5 + 24))(partial apply for closure #1 in static vDSP.normalize<A, B>(_:result:), v9, MEMORY[0x1E69E7CA8] + 8, a3);
  return v8;
}

void closure #1 in closure #1 in static vDSP.normalize<A, B>(_:result:)(double **a1, const double *a2, uint64_t a3, double *a4, double *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a2)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v9 = *a1;
  if (*a1)
  {
    v13 = (*(a9 + 16))(a7);
    if ((v13 & 0x8000000000000000) == 0)
    {
      vDSP_normalizeD(a2, 1, v9, 1, a4, a5, v13);
      return;
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

double static vDSP.standardDeviation<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = 0.0;
  v5 = 0;
  v7 = a2;
  v8 = a3;
  v9 = &v5;
  v10 = &v4;
  v11 = a1;
  (*(*(a3 + 8) + 24))(partial apply for closure #1 in static vDSP.standardDeviation<A>(_:), v6, MEMORY[0x1E69E7CA8] + 8, a2);
  return v4;
}

void closure #1 in static vDSP.standardDeviation<A>(_:)(const double *a1, uint64_t a2, double *a3, double *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v10 = (*(*(a7 + 8) + 16))(a6);
    if ((v10 & 0x8000000000000000) == 0)
    {
      vDSP_normalizeD(a1, 1, 0, 1, a3, a4, v10);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t static vDSP.normalize<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void *))
{
  v10 = (*(a3 + 16))(a2, a3);
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a1;
  return a5(v10, a4, v12);
}

float static vDSP.normalize<A, B>(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a2;
  v14 = &v7 + 4;
  v15 = &v7;
  v16 = a1;
  (*(a5 + 24))(partial apply for closure #1 in static vDSP.normalize<A, B>(_:result:), v8, MEMORY[0x1E69E7CA8] + 8, a3);
  return *(&v7 + 1);
}

void closure #1 in closure #1 in static vDSP.normalize<A, B>(_:result:)(float **a1, const float *a2, uint64_t a3, float *a4, float *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a2)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v9 = *a1;
  if (*a1)
  {
    v13 = (*(a9 + 16))(a7);
    if ((v13 & 0x8000000000000000) == 0)
    {
      vDSP_normalize(a2, 1, v9, 1, a4, a5, v13);
      return;
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

float static vDSP.standardDeviation<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = 0;
  v6 = a2;
  v7 = a3;
  v8 = &v4 + 4;
  v9 = &v4;
  v10 = a1;
  (*(*(a3 + 8) + 24))(partial apply for closure #1 in static vDSP.standardDeviation<A>(_:), v5, MEMORY[0x1E69E7CA8] + 8, a2);
  return *&v4;
}

void closure #1 in static vDSP.standardDeviation<A>(_:)(const float *a1, uint64_t a2, float *a3, float *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v10 = (*(*(a7 + 8) + 16))(a6);
    if ((v10 & 0x8000000000000000) == 0)
    {
      vDSP_normalize(a1, 1, 0, 1, a3, a4, v10);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t partial apply for closure #1 in static vDSP.add<A, B>(_:_:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.convert<A, B>(power:toDecibels:zeroReference:)(a1, partial apply for closure #1 in closure #1 in static vDSP.add<A, B>(_:_:result:));
}

{
  return partial apply for closure #1 in static vDSP.convert<A, B>(power:toDecibels:zeroReference:)(a1, partial apply for closure #1 in closure #1 in static vDSP.add<A, B>(_:_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.add<A, B>(_:_:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in static vDSP.add<A, B>(_:_:)(a1, a2, v2[6], v2[7], v2[2], v2[3], v2[4], v2[5], &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.add<A, B, C>(_:_:result:));
}

{
  return closure #1 in static vDSP.add<A, B>(_:_:)(a1, a2, v2[6], v2[7], v2[2], v2[3], v2[4], v2[5], &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.add<A, B, C>(_:_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.add<A, B, C>(_:_:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.add<A, B, C>(_:_:result:));
}

{
  return partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.add<A, B, C>(_:_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.subtract<A, B>(_:_:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in static vDSP.subtract<A, B>(_:_:)(a1, a2, v2[6], v2[7], v2[2], v2[3], v2[4], v2[5], &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.subtract<A, B, C>(_:_:result:));
}

{
  return closure #1 in static vDSP.subtract<A, B>(_:_:)(a1, a2, v2[6], v2[7], v2[2], v2[3], v2[4], v2[5], &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.subtract<A, B, C>(_:_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.subtract<A, B, C>(_:_:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.subtract<A, B, C>(_:_:result:));
}

{
  return partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.subtract<A, B, C>(_:_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.multiply<A>(_:_:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in static vDSP.add<A>(_:_:)(a1, a2, *(v2 + 40), *(v2 + 16), *(v2 + 24), static vDSP.multiply<A, B>(_:_:result:), *(v2 + 32));
}

{
  return closure #1 in static vDSP.add<A>(_:_:)(a1, a2, *(v2 + 40), *(v2 + 16), *(v2 + 24), static vDSP.multiply<A, B>(_:_:result:), *(v2 + 32));
}

uint64_t partial apply for closure #1 in static vDSP.multiply<A, B>(_:_:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.convert<A, B>(power:toDecibels:zeroReference:)(a1, partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B>(_:_:result:));
}

{
  return partial apply for closure #1 in static vDSP.convert<A, B>(power:toDecibels:zeroReference:)(a1, partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B>(_:_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.multiply<A, B>(_:_:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in static vDSP.add<A, B>(_:_:)(a1, a2, v2[6], v2[7], v2[2], v2[3], v2[4], v2[5], &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.multiply<A, B, C>(_:_:result:));
}

{
  return closure #1 in static vDSP.add<A, B>(_:_:)(a1, a2, v2[6], v2[7], v2[2], v2[3], v2[4], v2[5], &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.multiply<A, B, C>(_:_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.multiply<A, B, C>(_:_:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C>(_:_:result:));
}

{
  return partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C>(_:_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.divide<A>(_:_:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in static vDSP.divide<A>(_:_:)(a1, a2, v2[4], v2[2], v2[3]);
}

{
  return closure #1 in static vDSP.divide<A>(_:_:)(a1, a2, v2[4], v2[2], v2[3]);
}

{
  return closure #1 in static vDSP.add<A>(_:_:)(a1, a2, *(v2 + 40), *(v2 + 16), *(v2 + 24), static vDSP.divide<A, B>(_:_:result:), *(v2 + 32));
}

{
  return closure #1 in static vDSP.add<A>(_:_:)(a1, a2, *(v2 + 40), *(v2 + 16), *(v2 + 24), static vDSP.divide<A, B>(_:_:result:), *(v2 + 32));
}

uint64_t partial apply for closure #1 in static vDSP.divide<A, B>(_:_:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.convert<A, B>(power:toDecibels:zeroReference:)(a1, partial apply for closure #1 in closure #1 in static vDSP.divide<A, B>(_:_:result:));
}

{
  return partial apply for closure #1 in static vDSP.convert<A, B>(power:toDecibels:zeroReference:)(a1, partial apply for closure #1 in closure #1 in static vDSP.divide<A, B>(_:_:result:));
}

{
  return partial apply for closure #1 in static vDSP.convert<A, B>(power:toDecibels:zeroReference:)(a1, partial apply for closure #1 in closure #1 in static vDSP.divide<A, B>(_:_:result:));
}

{
  return partial apply for closure #1 in static vDSP.convert<A, B>(power:toDecibels:zeroReference:)(a1, partial apply for closure #1 in closure #1 in static vDSP.divide<A, B>(_:_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.divide<A, B>(_:_:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in static vDSP.add<A, B>(_:_:)(a1, a2, v2[6], v2[7], v2[2], v2[3], v2[4], v2[5], &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.divide<A, B, C>(_:_:result:));
}

{
  return closure #1 in static vDSP.add<A, B>(_:_:)(a1, a2, v2[6], v2[7], v2[2], v2[3], v2[4], v2[5], &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.divide<A, B, C>(_:_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.divide<A, B, C>(_:_:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.divide<A, B, C>(_:_:result:));
}

{
  return partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.divide<A, B, C>(_:_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.addSubtract<A, B, C, D>(_:_:addResult:subtractResult:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.addSubtract<A, B, C, D>(_:_:addResult:subtractResult:)(a1, partial apply for closure #1 in closure #1 in static vDSP.addSubtract<A, B, C, D>(_:_:addResult:subtractResult:));
}

{
  return partial apply for closure #1 in static vDSP.addSubtract<A, B, C, D>(_:_:addResult:subtractResult:)(a1, partial apply for closure #1 in closure #1 in static vDSP.addSubtract<A, B, C, D>(_:_:addResult:subtractResult:));
}

uint64_t partial apply for closure #1 in static vDSP.addSubtract<A, B, C, D>(_:_:addResult:subtractResult:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 72);
  v6[1] = *(v2 + 16);
  v7 = v3;
  v8 = *(v2 + 40);
  v9 = *(v2 + 56);
  v10 = v4;
  v11 = *(v2 + 88);
  v12 = a1;
  return (*(v4 + 16))(a2, v6, MEMORY[0x1E69E7CA8] + 8, v8);
}

uint64_t partial apply for closure #1 in static vDSP.multiply<A, B>(addition:_:)(uint64_t a1, uint64_t *a2)
{
  return partial apply for closure #1 in static vDSP.multiply<A, B>(addition:_:)(a1, a2, static vDSP.multiply<A, B, C>(addition:_:result:));
}

{
  return partial apply for closure #1 in static vDSP.multiply<A, B>(addition:_:)(a1, a2, static vDSP.multiply<A, B, C>(addition:_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.multiply<A, B, C>(addition:_:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.multiply<A, B, C>(addition:_:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C>(addition:_:result:));
}

{
  return partial apply for closure #1 in static vDSP.multiply<A, B, C>(addition:_:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C>(addition:_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.multiply<A, B, C>(addition:_:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in static vDSP.multiply<A, B, C>(addition:_:)(a1, a2, v2[8], v2[9], v2[2], v2[3], v2[4], v2[5], v2[6], v2[7], &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.multiply<A, B, C, D>(addition:_:result:));
}

{
  return closure #1 in static vDSP.multiply<A, B, C>(addition:_:)(a1, a2, v2[8], v2[9], v2[2], v2[3], v2[4], v2[5], v2[6], v2[7], &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.multiply<A, B, C, D>(addition:_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.multiply<A, B, C, D>(addition:_:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.multiply<A, B, C, D>(addition:_:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:_:result:));
}

{
  return partial apply for closure #1 in static vDSP.multiply<A, B, C, D>(addition:_:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.multiply<A, B>(subtraction:_:)(uint64_t a1, uint64_t *a2)
{
  return partial apply for closure #1 in static vDSP.multiply<A, B>(addition:_:)(a1, a2, static vDSP.multiply<A, B, C>(subtraction:_:result:));
}

{
  return partial apply for closure #1 in static vDSP.multiply<A, B>(addition:_:)(a1, a2, static vDSP.multiply<A, B, C>(subtraction:_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.multiply<A, B, C>(subtraction:_:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.multiply<A, B, C>(addition:_:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C>(subtraction:_:result:));
}

{
  return partial apply for closure #1 in static vDSP.multiply<A, B, C>(addition:_:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C>(subtraction:_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.multiply<A, B, C>(subtraction:_:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in static vDSP.multiply<A, B, C>(addition:_:)(a1, a2, v2[8], v2[9], v2[2], v2[3], v2[4], v2[5], v2[6], v2[7], &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.multiply<A, B, C, D>(subtraction:_:result:));
}

{
  return closure #1 in static vDSP.multiply<A, B, C>(addition:_:)(a1, a2, v2[8], v2[9], v2[2], v2[3], v2[4], v2[5], v2[6], v2[7], &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.multiply<A, B, C, D>(subtraction:_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.multiply<A, B, C, D>(subtraction:_:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.multiply<A, B, C, D>(addition:_:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(subtraction:_:result:));
}

{
  return partial apply for closure #1 in static vDSP.multiply<A, B, C, D>(addition:_:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(subtraction:_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.add<A, B>(multiplication:_:)(uint64_t a1, uint64_t *a2)
{
  return partial apply for closure #1 in static vDSP.multiply<A, B>(addition:_:)(a1, a2, static vDSP.add<A, B, C>(multiplication:_:result:));
}

{
  return partial apply for closure #1 in static vDSP.multiply<A, B>(addition:_:)(a1, a2, static vDSP.add<A, B, C>(multiplication:_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.multiply<A, B, C>(addition:_:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:));
}

{
  return partial apply for closure #1 in static vDSP.multiply<A, B, C>(addition:_:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:));
}

{
  return partial apply for closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:));
}

{
  return partial apply for closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.multiply<A, B, C>(addition:_:result:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v5 = *(v2 + 56);
  v4 = *(v2 + 64);
  v6 = *(v2 + 72);
  v9 = *(v2 + 16);
  v10 = v3;
  v11 = *(v2 + 40);
  v12 = v5;
  v13 = v4;
  v14 = v6;
  v15 = a1;
  return (*(v11 + 24))(a2, &v8, MEMORY[0x1E69E7CA8] + 8, v9);
}

{
  v3 = *(v2 + 32);
  v5 = *(v2 + 56);
  v4 = *(v2 + 64);
  v6 = *(v2 + 72);
  v9 = *(v2 + 16);
  v10 = v3;
  v11 = *(v2 + 40);
  v12 = v5;
  v13 = v4;
  v14 = v6;
  v15 = a1;
  return (*(v11 + 24))(a2, &v8, MEMORY[0x1E69E7CA8] + 8, v9);
}

uint64_t partial apply for closure #1 in static vDSP.add<A, B>(multiplication:_:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in static vDSP.add<A, B>(multiplication:_:)(a1, a2, closure #1 in static vDSP.add<A, B>(multiplication:_:));
}

{
  return partial apply for closure #1 in static vDSP.add<A, B>(multiplication:_:)(a1, a2, closure #1 in static vDSP.add<A, B>(multiplication:_:));
}

uint64_t partial apply for closure #1 in static vDSP.add<A, B, C>(multiplication:_:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in static vDSP.multiply<A, B, C>(addition:_:)(a1, a2, v2[8], v2[9], v2[2], v2[3], v2[4], v2[5], v2[6], v2[7], &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.add<A, B, C, D>(multiplication:_:result:));
}

{
  return closure #1 in static vDSP.multiply<A, B, C>(addition:_:)(a1, a2, v2[8], v2[9], v2[2], v2[3], v2[4], v2[5], v2[6], v2[7], &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.add<A, B, C, D>(multiplication:_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.add<A, B, C, D>(multiplication:_:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.multiply<A, B, C, D>(addition:_:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.add<A, B, C, D>(multiplication:_:result:));
}

{
  return partial apply for closure #1 in static vDSP.multiply<A, B, C, D>(addition:_:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.add<A, B, C, D>(multiplication:_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.subtract<A, B, C>(multiplication:_:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in static vDSP.subtract<A, B, C>(multiplication:_:)(a1, a2, v2[8], v2[9], v2[2], v2[3], v2[4], v2[5], v2[6], v2[7], &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.subtract<A, B, C, D>(multiplication:_:result:));
}

{
  return closure #1 in static vDSP.subtract<A, B, C>(multiplication:_:)(a1, a2, v2[8], v2[9], v2[2], v2[3], v2[4], v2[5], v2[6], v2[7], &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.subtract<A, B, C, D>(multiplication:_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.subtract<A, B, C, D>(multiplication:_:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.subtract<A, B, C, D>(multiplication:_:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.subtract<A, B, C, D>(multiplication:_:result:));
}

{
  return partial apply for closure #1 in static vDSP.subtract<A, B, C, D>(multiplication:_:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.subtract<A, B, C, D>(multiplication:_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.subtract<A, B, C, D>(multiplication:_:result:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 72);
  v5[2] = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 40);
  v8 = *(v2 + 56);
  v9 = v3;
  v10 = *(v2 + 80);
  v11 = a1;
  return (*(v8 + 24))(a2, v5, MEMORY[0x1E69E7CA8] + 8, v6);
}

uint64_t partial apply for closure #1 in static vDSP.add<A, B>(multiplication:multiplication:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in static vDSP.add<A, B>(multiplication:_:)(a1, a2, closure #1 in static vDSP.add<A, B>(multiplication:multiplication:));
}

{
  return partial apply for closure #1 in static vDSP.add<A, B>(multiplication:_:)(a1, a2, closure #1 in static vDSP.add<A, B>(multiplication:multiplication:));
}

uint64_t partial apply for closure #1 in static vDSP.add<A, B, C>(multiplication:multiplication:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:multiplication:result:));
}

{
  return partial apply for closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:multiplication:result:));
}

uint64_t partial apply for closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 56);
  v7 = *(v2 + 16);
  v8 = v3;
  v9 = *(v2 + 40);
  v10 = v4;
  v11 = vextq_s8(*(v2 + 64), *(v2 + 64), 8uLL);
  v12 = a1;
  return (*(v9 + 24))(a2, &v6, MEMORY[0x1E69E7CA8] + 8, v7);
}

uint64_t partial apply for closure #1 in static vDSP.add<A, B, C, D>(multiplication:multiplication:)(uint64_t a1, uint64_t *a2)
{
  *&v4[16] = v2[8];
  *v4 = *(v2 + 3);
  return closure #1 in static vDSP.add<A, B, C, D>(multiplication:multiplication:)(a1, a2, v2[10], v2[11], v2[2], v2[3], v2[4], v2[5], v2[6], *&v4[8], v2[9], &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.add<A, B, C, D, E>(multiplication:multiplication:result:));
}

{
  *&v4[16] = v2[8];
  *v4 = *(v2 + 3);
  return closure #1 in static vDSP.add<A, B, C, D>(multiplication:multiplication:)(a1, a2, v2[10], v2[11], v2[2], v2[3], v2[4], v2[5], v2[6], *&v4[8], v2[9], &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.add<A, B, C, D, E>(multiplication:multiplication:result:));
}

uint64_t partial apply for closure #1 in static vDSP.add<A, B, C, D, E>(multiplication:multiplication:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.add<A, B, C, D, E>(multiplication:multiplication:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.add<A, B, C, D, E>(multiplication:multiplication:result:));
}

{
  return partial apply for closure #1 in static vDSP.add<A, B, C, D, E>(multiplication:multiplication:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.add<A, B, C, D, E>(multiplication:multiplication:result:));
}

uint64_t partial apply for closure #1 in static vDSP.multiply<A, B, C>(addition:addition:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in static vDSP.multiply<A, B, C>(addition:addition:)(a1, a2, v2[8], v2[9], v2[2], v2[3], v2[4], v2[5], v2[6], v2[7], &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.multiply<A, B, C, D>(addition:addition:result:));
}

{
  return closure #1 in static vDSP.multiply<A, B, C>(addition:addition:)(a1, a2, v2[8], v2[9], v2[2], v2[3], v2[4], v2[5], v2[6], v2[7], &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.multiply<A, B, C, D>(addition:addition:result:));
}

uint64_t partial apply for closure #1 in static vDSP.multiply<A, B, C, D>(addition:addition:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.multiply<A, B, C, D>(addition:_:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:addition:result:));
}

{
  return partial apply for closure #1 in static vDSP.multiply<A, B, C, D>(addition:_:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:addition:result:));
}

uint64_t partial apply for closure #1 in static vDSP.multiply<A, B, C, D>(addition:_:result:)(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v7 = v2[1];
  v8 = v3;
  v4 = v2[4];
  v9 = v2[3];
  v10 = v4;
  v11 = v2[5];
  v12 = a1;
  return (*(v9 + 24))(a2, &v6, MEMORY[0x1E69E7CA8] + 8, v7);
}

uint64_t partial apply for closure #1 in static vDSP.subtract<A, B, C, D>(multiplication:multiplication:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in static vDSP.subtract<A, B, C, D>(multiplication:multiplication:)(a1, a2, v2[10], v2[11], v2[2], v2[3], v2[4], v2[5], v2[6], v2[7], v2[8], v2[9], &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.subtract<A, B, C, D, E>(multiplication:multiplication:result:));
}

{
  return closure #1 in static vDSP.subtract<A, B, C, D>(multiplication:multiplication:)(a1, a2, v2[10], v2[11], v2[2], v2[3], v2[4], v2[5], v2[6], v2[7], v2[8], v2[9], &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.subtract<A, B, C, D, E>(multiplication:multiplication:result:));
}

uint64_t partial apply for closure #1 in static vDSP.subtract<A, B, C, D, E>(multiplication:multiplication:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.subtract<A, B, C, D, E>(multiplication:multiplication:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.subtract<A, B, C, D, E>(multiplication:multiplication:result:));
}

{
  return partial apply for closure #1 in static vDSP.subtract<A, B, C, D, E>(multiplication:multiplication:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.subtract<A, B, C, D, E>(multiplication:multiplication:result:));
}

uint64_t partial apply for closure #1 in static vDSP.subtract<A, B, C, D, E>(multiplication:multiplication:result:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 64);
  v4 = *(v2 + 88);
  v5 = *(v2 + 112);
  v6 = *(v2 + 32);
  v8[1] = *(v2 + 16);
  v8[2] = v6;
  v8[3] = *(v2 + 48);
  v9 = v3;
  v10 = *(v2 + 72);
  v11 = v4;
  v12 = *(v2 + 96);
  v13 = a1;
  v14 = v5;
  return (*(v10 + 24))(a2, v8, MEMORY[0x1E69E7CA8] + 8, v6);
}

uint64_t partial apply for closure #1 in static vDSP.multiply<A, B, C, D>(subtraction:subtraction:)(uint64_t a1, uint64_t *a2)
{
  *&v4[16] = v2[8];
  *v4 = *(v2 + 3);
  return closure #1 in static vDSP.add<A, B, C, D>(multiplication:multiplication:)(a1, a2, v2[10], v2[11], v2[2], v2[3], v2[4], v2[5], v2[6], *&v4[8], v2[9], &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.multiply<A, B, C, D, E>(subtraction:subtraction:result:));
}

{
  *&v4[16] = v2[8];
  *v4 = *(v2 + 3);
  return closure #1 in static vDSP.add<A, B, C, D>(multiplication:multiplication:)(a1, a2, v2[10], v2[11], v2[2], v2[3], v2[4], v2[5], v2[6], *&v4[8], v2[9], &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.multiply<A, B, C, D, E>(subtraction:subtraction:result:));
}

uint64_t partial apply for closure #1 in static vDSP.multiply<A, B, C, D, E>(subtraction:subtraction:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.add<A, B, C, D, E>(multiplication:multiplication:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(subtraction:subtraction:result:));
}

{
  return partial apply for closure #1 in static vDSP.add<A, B, C, D, E>(multiplication:multiplication:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(subtraction:subtraction:result:));
}

uint64_t partial apply for closure #1 in static vDSP.multiply<A, B, C, D>(addition:subtraction:)(uint64_t a1, uint64_t *a2)
{
  *&v4[16] = v2[8];
  *v4 = *(v2 + 3);
  return closure #1 in static vDSP.add<A, B, C, D>(multiplication:multiplication:)(a1, a2, v2[10], v2[11], v2[2], v2[3], v2[4], v2[5], v2[6], *&v4[8], v2[9], &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:));
}

{
  *&v4[16] = v2[8];
  *v4 = *(v2 + 3);
  return closure #1 in static vDSP.add<A, B, C, D>(multiplication:multiplication:)(a1, a2, v2[10], v2[11], v2[2], v2[3], v2[4], v2[5], v2[6], *&v4[8], v2[9], &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:));
}

uint64_t partial apply for closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.add<A, B, C, D, E>(multiplication:multiplication:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:));
}

{
  return partial apply for closure #1 in static vDSP.add<A, B, C, D, E>(multiplication:multiplication:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:));
}

uint64_t partial apply for closure #1 in static vDSP.add<A, B, C, D, E>(multiplication:multiplication:result:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = *(v2 + 88);
  v5 = *(v2 + 112);
  v6 = *(v2 + 32);
  v9 = *(v2 + 16);
  v10 = v6;
  v11 = v3;
  v12 = *(v2 + 56);
  v13 = *(v2 + 72);
  v14 = v4;
  v15 = *(v2 + 96);
  v16 = a1;
  v17 = v5;
  return (*(v12 + 24))(a2, &v8, MEMORY[0x1E69E7CA8] + 8, v9);
}

uint64_t partial apply for closure #1 in static vDSP.add<A>(multiplication:_:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in static vDSP.add<A>(multiplication:_:)(a1, a2, *(v2 + 32), *(v2 + 16), *(v2 + 24), *(v2 + 40));
}

{
  return closure #1 in static vDSP.add<A>(multiplication:_:)(a1, a2, *(v2 + 32), *(v2 + 16), *(v2 + 24), *(v2 + 40));
}

uint64_t partial apply for closure #1 in static vDSP.add<A, B>(multiplication:_:result:)(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 32);
  v7 = *(v1 + 16);
  v8 = v4;
  v9 = v2;
  v10 = v3;
  v11 = a1;
  return (*(v4 + 24))(partial apply for closure #1 in closure #1 in static vDSP.add<A, B>(multiplication:_:result:), &v6, MEMORY[0x1E69E7CA8] + 8, v7);
}

{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 32);
  v7 = *(v1 + 16);
  v8 = v4;
  v9 = v2;
  v10 = v3;
  v11 = a1;
  return (*(v4 + 24))(partial apply for closure #1 in closure #1 in static vDSP.add<A, B>(multiplication:_:result:), &v6, MEMORY[0x1E69E7CA8] + 8, v7);
}

uint64_t partial apply for closure #1 in static vDSP.subtract<A, B>(multiplication:_:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in static vDSP.add<A, B>(multiplication:_:)(a1, a2, closure #1 in static vDSP.subtract<A, B>(multiplication:_:));
}

{
  return partial apply for closure #1 in static vDSP.add<A, B>(multiplication:_:)(a1, a2, closure #1 in static vDSP.subtract<A, B>(multiplication:_:));
}

uint64_t partial apply for closure #1 in static vDSP.subtract<A, B, C>(multiplication:_:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.subtract<A, B, C>(multiplication:_:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.subtract<A, B, C>(multiplication:_:result:));
}

{
  return partial apply for closure #1 in static vDSP.subtract<A, B, C>(multiplication:_:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.subtract<A, B, C>(multiplication:_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.subtract<A, B, C>(multiplication:_:result:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  v6[2] = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v3;
  v4 = *(v2 + 64);
  v9 = *(v2 + 48);
  v10 = v4;
  v11 = a1;
  return (*(v9 + 24))(a2, v6, MEMORY[0x1E69E7CA8] + 8, v7);
}

uint64_t partial apply for closure #1 in static vDSP.normalize<A>(_:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in static vDSP.normalize<A>(_:)(a1, a2, v2[4], v2[2], v2[3]);
}

{
  return closure #1 in static vDSP.normalize<A>(_:)(a1, a2, v2[4], v2[2], v2[3]);
}

uint64_t partial apply for closure #1 in static vDSP.normalize<A, B>(_:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in static vDSP.normalize<A, B>(_:result:)(a1, a2, partial apply for closure #1 in closure #1 in static vDSP.normalize<A, B>(_:result:));
}

{
  return partial apply for closure #1 in static vDSP.normalize<A, B>(_:result:)(a1, a2, partial apply for closure #1 in closure #1 in static vDSP.normalize<A, B>(_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.normalize<A, B>(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 40);
  v5 = *(v3 + 72);
  v7[2] = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = v4;
  v10 = a1;
  v11 = a2;
  v12 = *(v3 + 56);
  v13 = v5;
  return (*(v4 + 16))(a3, v7, MEMORY[0x1E69E7CA8] + 8, v8);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.subtract<A, B, C>(multiplication:_:result:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[5];
  v7 = v2[8];
  v8 = v2[10];
  v9 = v2[11];
  v17 = *(v7 + *(swift_getTupleTypeMetadata2() + 48));
  v12 = a1;
  v13 = a2;
  v14 = &v17;
  v15 = v8;
  v16 = v9;
  return (*(v6 + 24))(partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C>(multiplication:_:result:), v11, MEMORY[0x1E69E7CA8] + 8, v5, v6);
}

{
  v5 = v2[2];
  v6 = v2[5];
  v7 = v2[8];
  v8 = v2[10];
  v9 = v2[11];
  v17 = *(v7 + *(swift_getTupleTypeMetadata2() + 48));
  v12 = a1;
  v13 = a2;
  v14 = &v17;
  v15 = v8;
  v16 = v9;
  return (*(v6 + 24))(partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C>(multiplication:_:result:), v11, MEMORY[0x1E69E7CA8] + 8, v5, v6);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C>(multiplication:_:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C>(multiplication:_:result:)(a1, a2, MEMORY[0x1E6959148]);
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C>(multiplication:_:result:)(a1, a2, MEMORY[0x1E6959140]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:));
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:));
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(a1, a2, MEMORY[0x1E6958E20]);
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(a1, a2, MEMORY[0x1E6958E18]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(subtraction:subtraction:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(subtraction:subtraction:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(subtraction:subtraction:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(subtraction:subtraction:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(subtraction:subtraction:result:));
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(subtraction:subtraction:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(subtraction:subtraction:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(subtraction:subtraction:result:));
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(subtraction:subtraction:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(subtraction:subtraction:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(a1, a2, MEMORY[0x1E6959118]);
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(a1, a2, MEMORY[0x1E6959110]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.subtract<A, B, C, D, E>(multiplication:multiplication:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.subtract<A, B, C, D, E>(multiplication:multiplication:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C, D, E>(multiplication:multiplication:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.subtract<A, B, C, D, E>(multiplication:multiplication:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C, D, E>(multiplication:multiplication:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C, D, E>(multiplication:multiplication:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C, D, E>(multiplication:multiplication:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C, D, E>(multiplication:multiplication:result:));
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C, D, E>(multiplication:multiplication:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C, D, E>(multiplication:multiplication:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C, D, E>(multiplication:multiplication:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C, D, E>(multiplication:multiplication:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C, D, E>(multiplication:multiplication:result:));
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C, D, E>(multiplication:multiplication:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C, D, E>(multiplication:multiplication:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C, D, E>(multiplication:multiplication:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(a1, a2, MEMORY[0x1E6959058]);
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(a1, a2, MEMORY[0x1E6959050]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.subtract<A, B, C, D, E>(multiplication:multiplication:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 32);
  v7 = *(v3 + 72);
  v8 = *(v3 + 104);
  v10 = *(v3 + 112);
  v9 = *(v3 + 120);
  v13 = *(v3 + 40);
  v14 = *(v3 + 16);
  v11 = *(v3 + 40);
  swift_getTupleTypeMetadata2();
  v17 = v14;
  v18 = v6;
  v19 = v13;
  v20 = *(v3 + 56);
  v21 = v7;
  v22 = *(v3 + 80);
  v23 = v8;
  v24 = a1;
  v25 = a2;
  v26 = v10;
  v27 = v9;
  return (*(v22 + 24))(a3, v16, MEMORY[0x1E69E7CA8] + 8, v11);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C, D, E>(multiplication:multiplication:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v6 = *(v3 + 88);
  v5 = *(v3 + 96);
  v7 = *(v3 + 120);
  v8 = *(v3 + 128);
  v9 = *(v3 + 32);
  v12 = *(v3 + 16);
  v13 = v9;
  v14 = v4;
  v15 = *(v3 + 56);
  v16 = *(v3 + 72);
  v17 = v6;
  v18 = v5;
  v19 = *(v3 + 104);
  v20 = a1;
  v21 = a2;
  v22 = v7;
  v23 = v8;
  return (*(v15 + 24))(a3, &v11, MEMORY[0x1E69E7CA8] + 8, v12);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C, D, E>(multiplication:multiplication:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 24);
  v7 = *(v3 + 64);
  v8 = *(v3 + 136);
  v9 = *(v3 + 144);
  swift_getTupleTypeMetadata2();
  v10 = *(v3 + 120);
  v14 = *(v3 + 104);
  v15 = v10;
  v16 = a1;
  v17 = a2;
  v18 = v8;
  v19 = v9;
  return (*(v7 + 24))(a3, v13, MEMORY[0x1E69E7CA8] + 8, v6, v7);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:addition:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:addition:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:addition:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:addition:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:addition:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:addition:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:addition:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:addition:result:));
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:addition:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:addition:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:addition:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:addition:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:addition:result:));
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:addition:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:addition:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:addition:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(a1, a2, MEMORY[0x1E6958DD0]);
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(a1, a2, MEMORY[0x1E6958DC8]);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:addition:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 80);
  v5 = *(v3 + 104);
  v6 = *(v3 + 112);
  v7 = *(v3 + 32);
  v10[1] = *(v3 + 16);
  v10[2] = v7;
  v8 = *(v3 + 64);
  v10[3] = *(v3 + 48);
  v10[4] = v8;
  v11 = v4;
  v12 = *(v3 + 88);
  v13 = a1;
  v14 = a2;
  v15 = v5;
  v16 = v6;
  return (*(v8 + 24))(a3, v10, MEMORY[0x1E69E7CA8] + 8, v7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:addition:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 32);
  v7 = *(v3 + 64);
  v8 = *(v3 + 120);
  v9 = *(v3 + 128);
  swift_getTupleTypeMetadata2();
  v10 = *(v3 + 104);
  v14 = *(v3 + 88);
  v15 = v10;
  v16 = a1;
  v17 = a2;
  v18 = v8;
  v19 = v9;
  return (*(v7 + 24))(a3, v13, MEMORY[0x1E69E7CA8] + 8, v6, v7);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.add<A, B, C, D, E>(multiplication:multiplication:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C, D, E>(multiplication:multiplication:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C, D, E>(multiplication:multiplication:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C, D, E>(multiplication:multiplication:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C, D, E>(multiplication:multiplication:result:));
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C, D, E>(multiplication:multiplication:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C, D, E>(multiplication:multiplication:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C, D, E>(multiplication:multiplication:result:));
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C, D, E>(multiplication:multiplication:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C, D, E>(multiplication:multiplication:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(a1, a2, MEMORY[0x1E6959048]);
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(a1, a2, MEMORY[0x1E6959040]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 56);
  v8 = *(v3 + 104);
  v10 = *(v3 + 112);
  v9 = *(v3 + 120);
  v14 = *(v3 + 24);
  v11 = *(v3 + 24);
  swift_getTupleTypeMetadata2();
  v17 = v6;
  v18 = v14;
  v19 = *(v3 + 40);
  v20 = v7;
  v12 = *(v3 + 80);
  v21 = *(v3 + 64);
  v22 = v12;
  v23 = v8;
  v24 = a1;
  v25 = a2;
  v26 = v10;
  v27 = v9;
  return (*(v21 + 24))(a3, v16, MEMORY[0x1E69E7CA8] + 8, v11);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 64);
  v6 = *(v3 + 88);
  v5 = *(v3 + 96);
  v7 = *(v3 + 120);
  v8 = *(v3 + 128);
  v9 = *(v3 + 32);
  v11[1] = *(v3 + 16);
  v11[2] = v9;
  v11[3] = *(v3 + 48);
  v12 = v4;
  v13 = *(v3 + 72);
  v14 = v6;
  v15 = v5;
  v16 = *(v3 + 104);
  v17 = a1;
  v18 = a2;
  v19 = v7;
  v20 = v8;
  return (*(v13 + 24))(a3, v11, MEMORY[0x1E69E7CA8] + 8, v9);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D, E>(addition:subtraction:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 40);
  v7 = *(v3 + 80);
  v8 = *(v3 + 136);
  v9 = *(v3 + 144);
  swift_getTupleTypeMetadata2();
  v10 = *(v3 + 120);
  v14 = *(v3 + 104);
  v15 = v10;
  v16 = a1;
  v17 = a2;
  v18 = v8;
  v19 = v9;
  return (*(v7 + 24))(a3, v13, MEMORY[0x1E69E7CA8] + 8, v6, v7);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:multiplication:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:multiplication:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:multiplication:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:multiplication:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:multiplication:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:multiplication:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:multiplication:result:)(a1, a2, closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:multiplication:result:));
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:multiplication:result:)(a1, a2, closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:multiplication:result:));
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:multiplication:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 40);
  v5 = *(v3 + 80);
  v8[2] = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = v4;
  v6 = vextq_s8(*(v3 + 64), *(v3 + 64), 8uLL);
  v11 = *(v3 + 48);
  v12 = v6;
  v13 = a1;
  v14 = a2;
  v15 = v5;
  return (*(v11 + 24))(a3, v8, MEMORY[0x1E69E7CA8] + 8, v9);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.subtract<A, B, C, D>(multiplication:_:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.subtract<A, B, C, D>(multiplication:_:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C, D>(multiplication:_:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.subtract<A, B, C, D>(multiplication:_:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C, D>(multiplication:_:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C, D>(multiplication:_:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C, D>(multiplication:_:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C, D>(multiplication:_:result:));
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C, D>(multiplication:_:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C, D>(multiplication:_:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C, D>(multiplication:_:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C, D>(multiplication:_:result:)(a1, a2, MEMORY[0x1E6959078]);
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C, D>(multiplication:_:result:)(a1, a2, MEMORY[0x1E6959070]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.subtract<A, B, C, D>(multiplication:_:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  v8 = *(v3 + 88);
  v10 = *(v3 + 96);
  v9 = *(v3 + 104);
  v15 = *(v3 + 32);
  v11 = *(v3 + 32);
  swift_getTupleTypeMetadata2();
  v12 = *(v3 + 48);
  v13 = *(v3 + 64);
  v20 = v15;
  v21 = v12;
  v18 = v7;
  v19 = v6;
  v22 = v13;
  v23 = v8;
  v24 = a1;
  v25 = a2;
  v26 = v10;
  v27 = v9;
  return (*(v13 + 24))(a3, v17, MEMORY[0x1E69E7CA8] + 8, v11);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C, D>(multiplication:_:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 48);
  v6 = *(v3 + 104);
  v8[1] = *(v3 + 88);
  v9 = a1;
  v10 = a2;
  v11 = v6;
  return (*(v5 + 24))(a3, v8, MEMORY[0x1E69E7CA8] + 8, v4);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.add<A, B, C, D>(multiplication:_:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:addition:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C, D>(multiplication:_:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:addition:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C, D>(multiplication:_:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C, D>(multiplication:_:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C, D>(multiplication:_:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C, D>(multiplication:_:result:));
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C, D>(multiplication:_:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C, D>(multiplication:_:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C, D>(multiplication:_:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C, D>(multiplication:_:result:)(a1, a2, MEMORY[0x1E6959018]);
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C, D>(multiplication:_:result:)(a1, a2, MEMORY[0x1E6959010]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:)(a1, a2, closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:));
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:)(a1, a2, closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:));
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:)(a1, a2, MEMORY[0x1E6959068]);
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:)(a1, a2, MEMORY[0x1E6959060]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 40);
  v5 = *(v3 + 72);
  v6 = *(v3 + 80);
  v7 = *(v3 + 88);
  v9[2] = *(v3 + 16);
  v10 = *(v3 + 24);
  v11 = v4;
  v12 = *(v3 + 48);
  v13 = v5;
  v14 = a1;
  v15 = a2;
  v16 = v6;
  v17 = v7;
  return (*(v12 + 24))(a3, v9, MEMORY[0x1E69E7CA8] + 8, v10);
}

{
  v6 = v3[3];
  v7 = v3[6];
  v8 = v3[9];
  v9 = v3[10];
  v10 = v3[11];
  swift_getTupleTypeMetadata2();
  v14 = v8;
  v15 = a1;
  v16 = a2;
  v17 = v9;
  v18 = v10;
  return (*(v7 + 24))(a3, v13, MEMORY[0x1E69E7CA8] + 8, v6, v7);
}

{
  v6 = *(v3 + 24);
  v7 = *(v3 + 48);
  v8 = *(v3 + 72);
  v9 = *(v3 + 80);
  v10 = *(v3 + 88);
  swift_getTupleTypeMetadata2();
  v14 = v8;
  v15 = a1;
  v16 = a2;
  v17 = v9;
  v18 = v10;
  return (*(v7 + 24))(a3, v13, MEMORY[0x1E69E7CA8] + 8, v6, v7);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(subtraction:_:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:addition:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(subtraction:_:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:addition:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(subtraction:_:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(subtraction:_:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C, D>(multiplication:_:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(subtraction:_:result:));
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C, D>(multiplication:_:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(subtraction:_:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(subtraction:_:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C, D>(multiplication:_:result:)(a1, a2, MEMORY[0x1E6959108]);
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C, D>(multiplication:_:result:)(a1, a2, MEMORY[0x1E6959100]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C>(subtraction:_:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C>(subtraction:_:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C>(subtraction:_:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C>(subtraction:_:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:)(a1, a2, MEMORY[0x1E6959128]);
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:)(a1, a2, MEMORY[0x1E6959120]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:_:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:addition:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:_:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:addition:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:_:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:_:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C, D>(multiplication:_:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:_:result:));
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C, D>(multiplication:_:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:_:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:_:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C, D>(multiplication:_:result:)(a1, a2, MEMORY[0x1E6958E10]);
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C, D>(multiplication:_:result:)(a1, a2, MEMORY[0x1E6958E08]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C, D>(addition:addition:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 72);
  v8 = *(v3 + 88);
  v9 = *(v3 + 96);
  v10 = *(v3 + 104);
  v13 = *(v3 + 24);
  v11 = *(v3 + 24);
  swift_getTupleTypeMetadata2();
  v16 = v6;
  v17 = v13;
  v18 = *(v3 + 40);
  v19 = *(v3 + 56);
  v20 = v7;
  v21 = v8;
  v22 = a1;
  v23 = a2;
  v24 = v9;
  v25 = v10;
  return (*(v19 + 24))(a3, v15, MEMORY[0x1E69E7CA8] + 8, v11);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C, D>(multiplication:_:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 32);
  v5 = *(v3 + 64);
  v6 = *(v3 + 104);
  v8[1] = *(v3 + 88);
  v9 = a1;
  v10 = a2;
  v11 = v6;
  return (*(v5 + 24))(a3, v8, MEMORY[0x1E69E7CA8] + 8, v4);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C>(addition:_:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C>(addition:_:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C>(addition:_:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C>(addition:_:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:)(a1, a2, MEMORY[0x1E6958E30]);
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(multiplication:_:result:)(a1, a2, MEMORY[0x1E6958E28]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.addSubtract<A, B, C, D>(_:_:addResult:subtractResult:)(uint64_t a1)
{
  return partial apply for closure #1 in closure #1 in static vDSP.addSubtract<A, B, C, D>(_:_:addResult:subtractResult:)(a1, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.addSubtract<A, B, C, D>(_:_:addResult:subtractResult:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.addSubtract<A, B, C, D>(_:_:addResult:subtractResult:)(a1, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.addSubtract<A, B, C, D>(_:_:addResult:subtractResult:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.addSubtract<A, B, C, D>(_:_:addResult:subtractResult:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.addSubtract<A, B, C, D>(_:_:addResult:subtractResult:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.addSubtract<A, B, C, D>(_:_:addResult:subtractResult:));
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.addSubtract<A, B, C, D>(_:_:addResult:subtractResult:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.addSubtract<A, B, C, D>(_:_:addResult:subtractResult:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.addSubtract<A, B, C, D>(_:_:addResult:subtractResult:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.addSubtract<A, B, C, D>(_:_:addResult:subtractResult:)(a1, a2, MEMORY[0x1E6958E00]);
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.addSubtract<A, B, C, D>(_:_:addResult:subtractResult:)(a1, a2, MEMORY[0x1E6958DF8]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.addSubtract<A, B, C, D>(_:_:addResult:subtractResult:)(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v7 = v2[1];
  v8 = v3;
  v4 = v2[4];
  v9 = v2[3];
  v10 = v4;
  v11 = *(v2 + 88);
  v12 = a1;
  return (*(v9 + 24))(a2, &v6, MEMORY[0x1E69E7CA8] + 8, v7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.addSubtract<A, B, C, D>(_:_:addResult:subtractResult:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 56);
  v6 = *(v3 + 104);
  v8[2] = a1;
  v8[3] = a2;
  v9 = *(v3 + 88);
  v10 = v6;
  return (*(v5 + 24))(a3, v8, MEMORY[0x1E69E7CA8] + 8, v4);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.divide<A, B, C>(_:_:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.compress<A, B, C>(_:gatingVector:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.divide<A, B, C>(_:_:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.compress<A, B, C>(_:gatingVector:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.divide<A, B, C>(_:_:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.divide<A, B, C>(_:_:result:)(uint64_t a1, uint64_t a2)
{
  return closure #1 in closure #1 in closure #1 in static vDSP.divide<A, B, C>(_:_:result:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), MEMORY[0x1E6958E80]);
}

{
  return closure #1 in closure #1 in closure #1 in static vDSP.divide<A, B, C>(_:_:result:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), MEMORY[0x1E6958E78]);
}

void partial apply for closure #1 in closure #1 in static vDSP.divide<A, B>(_:_:result:)(const float *a1, int a2)
{
  closure #1 in closure #1 in static vDSP.divide<A, B>(_:_:result:)(a1, a2, *(v2 + 24), *(v2 + 32), *(v2 + 16));
}

{
  closure #1 in closure #1 in static vDSP.divide<A, B>(_:_:result:)(a1, a2, *(v2 + 24), *(v2 + 32), *(v2 + 16));
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B, C>(_:_:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.compress<A, B, C>(_:gatingVector:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C>(_:_:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.compress<A, B, C>(_:gatingVector:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C>(_:_:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.multiply<A, B, C>(_:_:result:)(uint64_t a1, uint64_t a2)
{
  return closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(_:_:result:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), MEMORY[0x1E6959088]);
}

{
  return closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(_:_:result:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), MEMORY[0x1E6959080]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.multiply<A, B>(_:_:result:)(uint64_t a1, uint64_t a2)
{
  return closure #1 in closure #1 in static vDSP.add<A, B>(_:_:result:)(a1, a2, *(v2 + 24), *(v2 + 32), MEMORY[0x1E6959158]);
}

{
  return closure #1 in closure #1 in static vDSP.add<A, B>(_:_:result:)(a1, a2, *(v2 + 24), *(v2 + 32), MEMORY[0x1E6959150]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.subtract<A, B, C>(_:_:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.compress<A, B, C>(_:gatingVector:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C>(_:_:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.compress<A, B, C>(_:gatingVector:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C>(_:_:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.subtract<A, B, C>(_:_:result:)(uint64_t a1, uint64_t a2)
{
  return closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(_:_:result:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), MEMORY[0x1E69591A0]);
}

{
  return closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(_:_:result:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), MEMORY[0x1E6959198]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.add<A, B, C>(_:_:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.compress<A, B, C>(_:gatingVector:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(_:_:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.compress<A, B, C>(_:gatingVector:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(_:_:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(_:_:result:)(uint64_t a1, uint64_t a2)
{
  return closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(_:_:result:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), MEMORY[0x1E6958DF0]);
}

{
  return closure #1 in closure #1 in closure #1 in static vDSP.add<A, B, C>(_:_:result:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), MEMORY[0x1E6958DE8]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.add<A, B>(_:_:result:)(uint64_t a1, uint64_t a2)
{
  return closure #1 in closure #1 in static vDSP.add<A, B>(_:_:result:)(a1, a2, *(v2 + 24), *(v2 + 32), MEMORY[0x1E69590F8]);
}

{
  return closure #1 in closure #1 in static vDSP.add<A, B>(_:_:result:)(a1, a2, *(v2 + 24), *(v2 + 32), MEMORY[0x1E69590F0]);
}

uint64_t BNNS.ReductionFunction.bnnsReduceFunction.getter()
{
  if (*(v0 + 4) == 1)
  {
    return dword_1B7E79570[*v0];
  }

  else
  {
    return 8;
  }
}

uint64_t static BNNS.applyReduction(_:input:output:weights:filterParameters:)(int *a1, __int128 *a2, __int128 *a3, __int128 *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v102 = *MEMORY[0x1E69E9840];
  v10 = a3[9];
  v85 = a3[8];
  v86 = v10;
  v87 = a3[10];
  v11 = a3[5];
  v81 = a3[4];
  v82 = v11;
  v12 = a3[6];
  v84 = a3[7];
  v83 = v12;
  v13 = a3[1];
  v77 = *a3;
  v78 = v13;
  v14 = a3[2];
  v80 = a3[3];
  v79 = v14;
  v15 = a2[9];
  v96 = a2[8];
  v97 = v15;
  v98 = a2[10];
  v16 = a2[5];
  v92 = a2[4];
  v93 = v16;
  v17 = a2[6];
  v95 = a2[7];
  v94 = v17;
  v18 = a2[1];
  v88 = *a2;
  v89 = v18;
  v19 = a2[2];
  v91 = a2[3];
  v90 = v19;
  v20 = *a1;
  v21 = *(a1 + 4);
  BNNSNDArrayDescriptor.shape.getter(v99);
  v22 = _s10Accelerate4BNNSO5ShapeOWOg(v99);
  if (v22 > 0x12)
  {
    v23 = 8;
  }

  else
  {
    v23 = qword_1B7E794D8[v22];
  }

  BNNSNDArrayDescriptor.shape.getter(__dst);
  v100[6] = __dst[6];
  v100[7] = __dst[7];
  v101 = __dst[8];
  v100[2] = __dst[2];
  v100[3] = __dst[3];
  v100[4] = __dst[4];
  v100[5] = __dst[5];
  v100[0] = __dst[0];
  v100[1] = __dst[1];
  v24 = _s10Accelerate4BNNSO5ShapeOWOg(v100);
  if (v24 > 0x12)
  {
    v25 = 8;
  }

  else
  {
    v25 = qword_1B7E794D8[v24];
  }

  if (v23 != v25)
  {
    __break(1u);
  }

  if (v21)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = *&v20;
  }

  if (a7 != 1)
  {
    v54 = a5;
    v55 = a6;
    v56 = a7;
    v57 = a8;
    v33 = a4[9];
    v73[8] = a4[8];
    v73[9] = v33;
    v73[10] = a4[10];
    v74 = *(a4 + 176);
    v34 = a4[5];
    v73[4] = a4[4];
    v73[5] = v34;
    v35 = a4[7];
    v73[6] = a4[6];
    v73[7] = v35;
    v36 = a4[1];
    v73[0] = *a4;
    v73[1] = v36;
    v37 = a4[3];
    v73[2] = a4[2];
    v73[3] = v37;
    if (_sSo21BNNSNDArrayDescriptoraSgWOg(v73) == 1)
    {
      v72 = 0u;
      v71 = 0u;
      v70 = 0u;
      v69 = 0u;
      v68 = 0u;
      v67 = 0u;
      v66 = 0u;
      v65 = 0u;
      v64 = 0u;
      v63 = 0u;
      v62 = 0u;
      if (!v21)
      {
LABEL_17:
        v38 = 8;
        goto LABEL_24;
      }
    }

    else
    {
      v46 = a4[9];
      v70 = a4[8];
      v71 = v46;
      v72 = a4[10];
      v47 = a4[5];
      v66 = a4[4];
      v67 = v47;
      v48 = a4[6];
      v69 = a4[7];
      v68 = v48;
      v49 = a4[1];
      v62 = *a4;
      v63 = v49;
      v50 = a4[2];
      v65 = a4[3];
      v64 = v50;
      if (!v21)
      {
        goto LABEL_17;
      }
    }

    v38 = dword_1B7E79570[v20];
LABEL_24:
    __src[8] = v96;
    __src[9] = v97;
    __src[4] = v92;
    __src[5] = v93;
    __src[6] = v94;
    __src[7] = v95;
    __src[0] = v88;
    __src[1] = v89;
    __src[2] = v90;
    __src[3] = v91;
    __src[18] = v84;
    __src[19] = v85;
    __src[20] = v86;
    __src[21] = v87;
    __src[14] = v80;
    __src[15] = v81;
    __src[16] = v82;
    __src[17] = v83;
    __src[10] = v98;
    __src[11] = v77;
    __src[12] = v78;
    __src[13] = v79;
    __src[30] = v70;
    __src[31] = v71;
    __src[32] = v72;
    __src[26] = v66;
    __src[27] = v67;
    __src[28] = v68;
    __src[29] = v69;
    __src[22] = v62;
    __src[23] = v63;
    __src[24] = v64;
    __src[25] = v65;
    memcpy(__dst, __src, sizeof(__dst));
    v60 = v38;
    v61 = v26;
    result = MEMORY[0x1B8CB19B0](__dst, &v54);
    if (result)
    {
      goto LABEL_21;
    }

    return result;
  }

  v27 = a4[9];
  v75[8] = a4[8];
  v75[9] = v27;
  v75[10] = a4[10];
  v76 = *(a4 + 176);
  v28 = a4[5];
  v75[4] = a4[4];
  v75[5] = v28;
  v29 = a4[7];
  v75[6] = a4[6];
  v75[7] = v29;
  v30 = a4[1];
  v75[0] = *a4;
  v75[1] = v30;
  v31 = a4[3];
  v75[2] = a4[2];
  v75[3] = v31;
  if (_sSo21BNNSNDArrayDescriptoraSgWOg(v75) == 1)
  {
    v72 = 0u;
    v71 = 0u;
    v70 = 0u;
    v69 = 0u;
    v68 = 0u;
    v67 = 0u;
    v66 = 0u;
    v65 = 0u;
    v64 = 0u;
    v63 = 0u;
    v62 = 0u;
    if (!v21)
    {
LABEL_14:
      v32 = 8;
      goto LABEL_20;
    }
  }

  else
  {
    v39 = a4[9];
    v70 = a4[8];
    v71 = v39;
    v72 = a4[10];
    v40 = a4[5];
    v66 = a4[4];
    v67 = v40;
    v41 = a4[6];
    v69 = a4[7];
    v68 = v41;
    v42 = a4[1];
    v62 = *a4;
    v63 = v42;
    v43 = a4[2];
    v65 = a4[3];
    v64 = v43;
    if (!v21)
    {
      goto LABEL_14;
    }
  }

  v32 = dword_1B7E79570[v20];
LABEL_20:
  __src[8] = v96;
  __src[9] = v97;
  __src[4] = v92;
  __src[5] = v93;
  __src[6] = v94;
  __src[7] = v95;
  __src[0] = v88;
  __src[1] = v89;
  __src[2] = v90;
  __src[3] = v91;
  __src[18] = v84;
  __src[19] = v85;
  __src[20] = v86;
  __src[21] = v87;
  __src[14] = v80;
  __src[15] = v81;
  __src[16] = v82;
  __src[17] = v83;
  __src[10] = v98;
  __src[11] = v77;
  __src[12] = v78;
  __src[13] = v79;
  __src[30] = v70;
  __src[31] = v71;
  __src[32] = v72;
  __src[26] = v66;
  __src[27] = v67;
  __src[28] = v68;
  __src[29] = v69;
  __src[22] = v62;
  __src[23] = v63;
  __src[24] = v64;
  __src[25] = v65;
  memcpy(__dst, __src, sizeof(__dst));
  v60 = v32;
  v61 = v26;
  result = MEMORY[0x1B8CB19B0](__dst, 0);
  if (result)
  {
LABEL_21:
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v45 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t BNNS.ReductionLayer.__allocating_init(function:input:output:weights:filterParameters:)(int *a1, _OWORD *a2, __int128 *a3, __int128 *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v68 = *MEMORY[0x1E69E9840];
  v15 = *a1;
  v16 = *(a1 + 4);
  if (*(a1 + 4))
  {
    v17 = 0.0;
  }

  else
  {
    v17 = *a1;
  }

  v18 = a4[9];
  v66[8] = a4[8];
  v66[9] = v18;
  v66[10] = a4[10];
  v67 = *(a4 + 176);
  v19 = a4[5];
  v66[4] = a4[4];
  v66[5] = v19;
  v20 = a4[7];
  v66[6] = a4[6];
  v66[7] = v20;
  v21 = a4[1];
  v66[0] = *a4;
  v66[1] = v21;
  v22 = a4[3];
  v66[2] = a4[2];
  v66[3] = v22;
  if (_sSo21BNNSNDArrayDescriptoraSgWOg(v66) == 1)
  {
    v65 = 0u;
    v64 = 0u;
    v63 = 0u;
    v62 = 0u;
    v61 = 0u;
    v60 = 0u;
    v59 = 0u;
    v58 = 0u;
    v57 = 0u;
    v56 = 0u;
    v55 = 0u;
    if (!v16)
    {
LABEL_6:
      v23 = 8;
      goto LABEL_9;
    }
  }

  else
  {
    v24 = a4[9];
    v63 = a4[8];
    v64 = v24;
    v65 = a4[10];
    v25 = a4[5];
    v59 = a4[4];
    v60 = v25;
    v26 = a4[6];
    v62 = a4[7];
    v61 = v26;
    v27 = a4[1];
    v55 = *a4;
    v56 = v27;
    v28 = a4[2];
    v58 = a4[3];
    v57 = v28;
    if (!v16)
    {
      goto LABEL_6;
    }
  }

  v23 = dword_1B7E79570[v15];
LABEL_9:
  v29 = a2[9];
  __src[8] = a2[8];
  __src[9] = v29;
  v30 = a2[5];
  __src[4] = a2[4];
  __src[5] = v30;
  v31 = a2[7];
  __src[6] = a2[6];
  __src[7] = v31;
  v32 = a2[1];
  __src[0] = *a2;
  __src[1] = v32;
  v33 = a2[3];
  __src[2] = a2[2];
  __src[3] = v33;
  v34 = a3[8];
  v35 = a3[9];
  v36 = a3[6];
  __src[18] = a3[7];
  __src[19] = v34;
  v37 = a3[10];
  __src[20] = v35;
  __src[21] = v37;
  v38 = a3[4];
  v39 = a3[5];
  v40 = a3[2];
  __src[14] = a3[3];
  __src[15] = v38;
  v41 = a2[10];
  __src[16] = v39;
  __src[17] = v36;
  v42 = *a3;
  v43 = a3[1];
  __src[10] = v41;
  __src[11] = v42;
  __src[12] = v43;
  __src[13] = v40;
  __src[30] = v63;
  __src[31] = v64;
  __src[32] = v65;
  __src[26] = v59;
  __src[27] = v60;
  __src[28] = v61;
  __src[29] = v62;
  __src[22] = v55;
  __src[23] = v56;
  __src[24] = v57;
  __src[25] = v58;
  memcpy(__dst, __src, sizeof(__dst));
  v53 = v23;
  v54 = v17;
  if (a7 == 1)
  {
    v44 = 0;
  }

  else
  {
    v47 = a5;
    v48 = a6;
    v49 = a7;
    v50 = a8;
    v44 = &v47;
  }

  v45 = MEMORY[0x1B8CB1AE0](__dst, v44);
  type metadata accessor for BNNS.ReductionLayer();
  result = swift_allocObject();
  if (v45)
  {
    *(result + 16) = v45;
  }

  else
  {
    type metadata accessor for BNNS.Layer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t BNNS.ReductionLayer.applyBackward(batchSize:input:output:outputGradient:generatingInputGradient:generatingWeightsGradient:)(size_t a1, uint64_t a2, uint64_t a3, __int128 *a4, _OWORD *a5, uint64_t a6)
{
  v53 = *MEMORY[0x1E69E9840];
  v9 = a4[8];
  v10 = a4[9];
  v11 = a4[6];
  *&out_delta.stride[5] = a4[7];
  *&out_delta.stride[7] = v9;
  v12 = a4[10];
  *&out_delta.data_type = v10;
  *&out_delta.table_data_type = v12;
  v13 = a4[4];
  v14 = a4[5];
  v15 = a4[2];
  *&out_delta.size[5] = a4[3];
  *&out_delta.size[7] = v13;
  *&out_delta.stride[1] = v14;
  *&out_delta.stride[3] = v11;
  v16 = *a4;
  *&out_delta.size[1] = a4[1];
  *&out_delta.size[3] = v15;
  v17 = a5[9];
  *&in_delta.stride[7] = a5[8];
  *&in_delta.data_type = v17;
  *&in_delta.table_data_type = a5[10];
  *&out_delta.flags = v16;
  v18 = a5[5];
  *&in_delta.size[7] = a5[4];
  *&in_delta.stride[1] = v18;
  v19 = a5[7];
  *&in_delta.stride[3] = a5[6];
  *&in_delta.stride[5] = v19;
  v20 = a5[1];
  *&in_delta.flags = *a5;
  *&in_delta.size[1] = v20;
  v21 = a5[3];
  *&in_delta.size[3] = a5[2];
  *&in_delta.size[5] = v21;
  v22 = *(a6 + 144);
  *&v51.stride[7] = *(a6 + 128);
  *&v51.data_type = v22;
  *&v51.table_data_type = *(a6 + 160);
  v52 = *(a6 + 176);
  v23 = *(a6 + 80);
  *&v51.size[7] = *(a6 + 64);
  *&v51.stride[1] = v23;
  v24 = *(a6 + 112);
  *&v51.stride[3] = *(a6 + 96);
  *&v51.stride[5] = v24;
  v25 = *(a6 + 16);
  *&v51.flags = *a6;
  *&v51.size[1] = v25;
  v26 = *(a6 + 48);
  *&v51.size[3] = *(a6 + 32);
  *&v51.size[5] = v26;
  if (_sSo21BNNSNDArrayDescriptoraSgWOg(&v51) == 1)
  {
    v27 = *(v6 + 16);
    v28 = *(a2 + 136);
    BNNSNDArrayDescriptor.shape.getter(&weights_delta);
    v29 = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(v48);
    v30 = BNNS.Shape.batchStride.getter();
    v31 = *(a3 + 136);
    BNNSNDArrayDescriptor.shape.getter(v47);
    v32 = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(v46);
    v41 = BNNS.Shape.batchStride.getter();
    result = BNNSFilterApplyBackwardBatch(v27, a1, v28, v29, &in_delta, v30, v31, v32, &out_delta, v41, 0, 0);
  }

  else
  {
    weights_delta = v51;
    v34 = *(v6 + 16);
    v35 = *(a2 + 136);
    BNNSNDArrayDescriptor.shape.getter(v48);
    v36 = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(v47);
    v37 = BNNS.Shape.batchStride.getter();
    v38 = *(a3 + 136);
    BNNSNDArrayDescriptor.shape.getter(v46);
    v39 = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(v44);
    v42 = BNNS.Shape.batchStride.getter();
    result = BNNSFilterApplyBackwardBatch(v34, a1, v35, v36, &in_delta, v37, v38, v39, &out_delta, v42, &weights_delta, 0);
  }

  if (result)
  {
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v40 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t BNNS.ReductionLayer.__deallocating_deinit()
{
  BNNSFilterDestroy(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of BNNS.ReductionLayer.applyBackward(batchSize:input:output:outputGradient:generatingInputGradient:generatingWeightsGradient:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  v7 = *(a2 + 36);
  v8 = a2[19];
  v9 = *(a2 + 40);
  v10 = a3[17];
  v11 = *(a3 + 36);
  v12 = a3[19];
  v13 = *(a3 + 40);
  v14 = *(a4 + 136);
  v15 = *(a4 + 144);
  v16 = *(a4 + 152);
  v17 = *(a4 + 160);
  v18 = *(a5 + 136);
  v19 = *(a5 + 144);
  v20 = *(a5 + 152);
  v21 = *(a5 + 160);
  v22 = *(a6 + 176);
  v23 = *(*v6 + 112);
  v126 = a2[17];
  v127 = v7;
  v128 = v8;
  v129 = v9;
  v24 = *a2;
  v25 = *(a2 + 1);
  v26 = *(a2 + 3);
  v27 = *(a2 + 5);
  v28 = *(a2 + 7);
  v29 = *(a2 + 9);
  v30 = *(a2 + 13);
  v31 = *(a2 + 15);
  v32 = *(a2 + 164);
  v123 = *(a2 + 11);
  v124 = v30;
  v125 = v31;
  v130 = v32;
  v112 = v10;
  v113 = v11;
  v114 = v12;
  v115 = v13;
  v33 = *a3;
  v34 = *(a3 + 1);
  v35 = *(a3 + 3);
  v36 = *(a3 + 5);
  v37 = *(a3 + 7);
  v38 = *(a3 + 9);
  v39 = *(a3 + 11);
  v40 = *(a3 + 13);
  v41 = *(a3 + 15);
  v42 = *(a3 + 164);
  v118 = v25;
  v119 = v26;
  v120 = v27;
  v121 = v28;
  v122 = v29;
  v109 = v39;
  v110 = v40;
  v111 = v41;
  v116 = v42;
  v98 = v14;
  v99 = v15;
  v100 = v16;
  v101 = v17;
  *&v25 = *a4;
  v43 = *(a4 + 8);
  v44 = *(a4 + 24);
  v45 = *(a4 + 40);
  v46 = *(a4 + 56);
  v47 = *(a4 + 72);
  v48 = *(a4 + 88);
  v49 = *(a4 + 104);
  v50 = *(a4 + 120);
  v51 = *(a4 + 164);
  v104 = v34;
  v105 = v35;
  v106 = v36;
  v107 = v37;
  v108 = v38;
  v95 = v48;
  v96 = v49;
  v97 = v50;
  v102 = v51;
  v84 = v18;
  v85 = v19;
  v86 = v20;
  v87 = v21;
  *&v34 = *a5;
  v52 = *(a5 + 8);
  v53 = *(a5 + 24);
  v54 = *(a5 + 40);
  v55 = *(a5 + 56);
  v56 = *(a5 + 72);
  v57 = *(a5 + 88);
  v58 = *(a5 + 104);
  v59 = *(a5 + 120);
  v60 = *(a5 + 164);
  v90 = v43;
  v91 = v44;
  v92 = v45;
  v93 = v46;
  v94 = v47;
  v76 = v52;
  v77 = v53;
  v78 = v54;
  v79 = v55;
  v80 = v56;
  v81 = v57;
  v82 = v58;
  v83 = v59;
  v88 = v60;
  v61 = *a6;
  v62 = a6[1];
  v63 = a6[2];
  v64 = a6[3];
  v65 = a6[4];
  v66 = a6[5];
  v67 = a6[6];
  v68 = a6[7];
  v69 = a6[8];
  v70 = a6[9];
  v71 = a6[10];
  v74 = v22;
  v117 = v24;
  v103 = v33;
  v89 = v25;
  v75 = v34;
  v73[0] = v61;
  v73[1] = v62;
  v73[2] = v63;
  v73[3] = v64;
  v73[4] = v65;
  v73[5] = v66;
  v73[6] = v67;
  v73[7] = v68;
  v73[8] = v69;
  v73[9] = v70;
  v73[10] = v71;
  return v23(a1, &v117, &v103, &v89, &v75, v73);
}

vImage_Error vImage_Buffer.copy(destinationBuffer:pixelSize:flags:)(vImage_Buffer *dest, size_t pixelSize, vImage_Flags *a3, void *a4, vImagePixelCount a5, vImagePixelCount a6, size_t a7)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((a6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  if (a6)
  {
    v7 = *a3;
    src.data = a4;
    src.height = a5;
    src.width = a6;
    src.rowBytes = a7;
    result = vImageCopyBuffer(&src, dest, pixelSize, v7);
    if (!result)
    {
      return result;
    }

    v9 = result;
    lazy protocol witness table accessor for type vImage.Error and conformance vImage.Error();
    swift_allocError();
    if ((v9 + 21784) >= 0x13)
    {
      v11 = 11;
    }

    else
    {
      v11 = -5 - v9;
    }
  }

  else
  {
    lazy protocol witness table accessor for type vImage.Error and conformance vImage.Error();
    swift_allocError();
    v11 = 8;
  }

  *v10 = v11;
  return swift_willThrow();
}

uint64_t vImage_Buffer.size.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
  return MEMORY[0x1B8CB31D0](v5);
}

uint64_t vImage_Buffer.init(size:bitsPerPixel:)(double a1, double a2)
{
  result = specialized vImage_Buffer.init(size:bitsPerPixel:)(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t vImage_Buffer.init(width:height:bitsPerPixel:)(uint64_t a1, uint64_t a2)
{
  result = specialized vImage_Buffer.init(width:height:bitsPerPixel:)(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t static vImage_Buffer.preferredAlignmentAndRowBytes(width:height:bitsPerPixel:)(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1 < 0 || a2 < 0)
  {
    lazy protocol witness table accessor for type vImage.Error and conformance vImage.Error();
    swift_allocError();
    *v3 = 8;
    return swift_willThrow();
  }

  memset(v9, 0, sizeof(v9));
  result = MEMORY[0x1B8CB31E0](v9);
  if (result < 0)
  {
    v4 = result;
    lazy protocol witness table accessor for type vImage.Error and conformance vImage.Error();
    swift_allocError();
    v6 = v5;
    vImage.Error.init(rawValue:)(v4, &v8);
    v7 = v8;
    if (v8 == 20)
    {
      v7 = 11;
    }

    *v6 = v7;
    return swift_willThrow();
  }

  return result;
}

void vImage_Buffer.init(cgImage:flags:)(CGImage *a1, unsigned int *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  memset(v14, 0, sizeof(v14));
  specialized vImage_CGImageFormat.init(cgImage:)(a1, &v15);
  if (v16 == 1)
  {
    lazy protocol witness table accessor for type vImage.Error and conformance vImage.Error();
    swift_allocError();
    *v4 = 13;
LABEL_7:
    swift_willThrow();

    return;
  }

  v12 = v17;
  v13 = v18;
  v11[0] = v15;
  v11[1] = v16;
  v5 = MEMORY[0x1B8CB3200](v14, v11, 0, a1, v3);
  if (v5)
  {
    v6 = v5;
    lazy protocol witness table accessor for type vImage.Error and conformance vImage.Error();
    swift_allocError();
    v8 = v7;
    vImage.Error.init(rawValue:)(v6, &v10);
    v9 = v10;
    if (v10 == 20)
    {
      v9 = 11;
    }

    *v8 = v9;
    goto LABEL_7;
  }
}

void vImage_Buffer.init(cgImage:format:flags:)(void *a1, uint64_t a2, unsigned int *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *a3;
  memset(v14, 0, sizeof(v14));
  v5 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v5;
  v13 = *(a2 + 32);
  v6 = MEMORY[0x1B8CB3200](v14, v12, 0, a1, v4);
  if (v6)
  {
    v7 = v6;
    lazy protocol witness table accessor for type vImage.Error and conformance vImage.Error();
    swift_allocError();
    v9 = v8;
    vImage.Error.init(rawValue:)(v7, &v11);
    v10 = v11;
    if (v11 == 20)
    {
      v10 = 11;
    }

    *v9 = v10;
    swift_willThrow();
  }

  else
  {
  }
}

void *vImage_Buffer.createCGImage(format:flags:)(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = *MEMORY[0x1E69E9840];
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v6 = *a2;
  v7 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v7;
  v17 = *(a1 + 32);
  v14 = 0;
  v8 = MEMORY[0x1B8CB3670](v15, v16, 0, 0, v6, &v14);
  if (!v8)
  {
    __break(1u);
  }

  v9 = v8;
  v10 = v14;
  if (v14)
  {
    lazy protocol witness table accessor for type vImage.Error and conformance vImage.Error();
    swift_allocError();
    if ((v10 + 21784) >= 0x13)
    {
      v12 = 11;
    }

    else
    {
      v12 = -5 - v10;
    }

    *v11 = v12;
    swift_willThrow();
  }

  return v9;
}

uint64_t specialized vImage_Buffer.init(width:height:bitsPerPixel:)(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1 < 0 || a2 < 0)
  {
    lazy protocol witness table accessor for type vImage.Error and conformance vImage.Error();
    swift_allocError();
    *v4 = 8;
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v2 = MEMORY[0x1B8CB31E0](v10);
    if ((v2 & 0x8000000000000000) == 0)
    {
      return *&v10[0];
    }

    v5 = v2;
    lazy protocol witness table accessor for type vImage.Error and conformance vImage.Error();
    swift_allocError();
    v7 = v6;
    vImage.Error.init(rawValue:)(v5, &v9);
    v8 = v9;
    if (v9 == 20)
    {
      v8 = 11;
    }

    *v7 = v8;
  }

  return swift_willThrow();
}

uint64_t specialized vImage_Buffer.init(size:bitsPerPixel:)(double a1, double a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((_ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZSi_12CoreGraphics7CGFloatVTt1g5(&v10, a1) & 1) == 0 || v11 == 1 || v10 < 1 || (_ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZSi_12CoreGraphics7CGFloatVTt1g5(&v10, a2) & 1) == 0 || v11 == 1 || v10 < 1)
  {
    lazy protocol witness table accessor for type vImage.Error and conformance vImage.Error();
    swift_allocError();
    *v5 = 8;
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v3 = MEMORY[0x1B8CB31E0](v12);
    if ((v3 & 0x8000000000000000) == 0)
    {
      return *&v12[0];
    }

    v6 = v3;
    lazy protocol witness table accessor for type vImage.Error and conformance vImage.Error();
    swift_allocError();
    v8 = v7;
    vImage.Error.init(rawValue:)(v6, &v10);
    v9 = v10;
    if (v10 == 20)
    {
      v9 = 11;
    }

    *v8 = v9;
  }

  return swift_willThrow();
}

Swift::Int vImage_PerpsectiveTransform.Interpolation.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B8CB1810](v1);
  return Hasher._finalize()();
}

void __swiftcall vImage_PerpsectiveTransform.init(source:destination:)(__C::vImage_PerpsectiveTransform_optional *__return_ptr retstr, Swift::tuple_CGPoint_CGPoint_CGPoint_CGPoint *source, Swift::tuple_CGPoint_CGPoint_CGPoint_CGPoint *destination)
{
  v36 = *MEMORY[0x1E69E9840];
  memset(v35, 0, 36);
  v12 = v3;
  v13 = v4;
  *&v35[34] = v12;
  *&v35[35] = v13;
  v14 = v5;
  v15 = v6;
  *&v35[36] = v14;
  *&v35[37] = v15;
  v16 = v7;
  v17 = v8;
  *&v35[38] = v16;
  *&v35[39] = v17;
  v18 = v9;
  v19 = v10;
  *&v35[40] = v18;
  *&v35[41] = v19;
  v20 = v37;
  v21 = v38;
  *&v35[18] = v20;
  *&v35[19] = v21;
  v22 = v39;
  v23 = v40;
  *&v35[20] = v22;
  *&v35[21] = v23;
  v24 = v41;
  v25 = v42;
  *&v35[22] = v24;
  *&v35[23] = v25;
  v26 = v43;
  v27 = v44;
  *&v35[24] = v26;
  *&v35[25] = v27;
  PerspectiveWarp = vImageGetPerspectiveWarp(&v35[34], &v35[18], v35, 0);
  v29.i64[0] = 0;
  v30.i64[0] = PerspectiveWarp;
  v31 = vdupq_lane_s64(vceqq_s64(v30, v29).i64[0], 0);
  v32 = vandq_s8(*&v35[4], v31);
  v33 = vandq_s8(*v35, v31);
  v34 = *&v35[8];
  if (PerspectiveWarp)
  {
    v34 = 0.0;
  }

  *&retstr->value.a = v33;
  *&retstr->value.tx = v32;
  retstr->value.v = v34;
  retstr->is_nil = PerspectiveWarp != 0;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance vImage_PerpsectiveTransform(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return specialized static vImage_PerpsectiveTransform.== infix(_:_:)(v5, v7);
}

vImage_Error vImage.PixelBuffer<>.transform(_:interpolation:backgroundColor:destination:)(vImage_Error result, unsigned __int8 *a2, Pixel_8 a3, uint64_t *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = *v4;
  if (!*(*v4 + 16))
  {
    __break(1u);
LABEL_13:
    __break(1u);
  }

  v6 = *a4;
  if (!*(*a4 + 16))
  {
    goto LABEL_13;
  }

  v7 = *(v5 + 32);
  v8 = *(v6 + 32);
  if (v7)
  {
    if (v8)
    {
      v9 = v7 == v8;
    }

    else
    {
      v9 = 0;
    }

    if (!v9)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (v8)
  {
LABEL_11:
    v10 = *(v5 + 56);
    src.data = v7;
    *&src.height = *(v5 + 40);
    src.rowBytes = v10;
    v11 = *(v6 + 56);
    dest.data = v8;
    *&dest.height = *(v6 + 40);
    dest.rowBytes = v11;
    v12 = *(result + 16);
    *&v13.a = *result;
    *&v13.tx = v12;
    v13.v = *(result + 32);
    return vImagePerspectiveWarp_Planar8(&src, &dest, 0, &v13, *a2, a3, 4u);
  }

  __break(1u);
  return result;
}

uint64_t vImage.PixelBuffer<>.transform(_:interpolation:backgroundColor:destination:)(uint64_t a1, unsigned __int8 *a2, unsigned __int16 a3, uint64_t *a4)
{
  v4 = MEMORY[0x1E69589D0];

  return vImage.PixelBuffer<>.transform(_:interpolation:backgroundColor:destination:)(a1, a2, a3, a4, v4);
}

{
  v4 = MEMORY[0x1E69589D8];

  return vImage.PixelBuffer<>.transform(_:interpolation:backgroundColor:destination:)(a1, a2, a3, a4, v4);
}

uint64_t vImage.PixelBuffer<>.transform(_:interpolation:backgroundColor:destination:)(uint64_t result, unsigned __int8 *a2, unsigned __int16 a3, uint64_t *a4, uint64_t (*a5)(uint64_t *, uint64_t *, void, _OWORD *, void, void, uint64_t))
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = *v5;
  if (!*(*v5 + 16))
  {
    __break(1u);
LABEL_13:
    __break(1u);
  }

  v7 = *a4;
  if (!*(*a4 + 16))
  {
    goto LABEL_13;
  }

  v8 = *(v6 + 32);
  v9 = *(v7 + 32);
  if (v8)
  {
    if (v9)
    {
      v10 = v8 == v9;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (v9)
  {
LABEL_11:
    v11 = *(v6 + 56);
    v19 = v8;
    v20 = *(v6 + 40);
    v21 = v11;
    v12 = *(v7 + 56);
    v16 = v9;
    v17 = *(v7 + 40);
    v18 = v12;
    v13 = *(result + 16);
    v14[0] = *result;
    v14[1] = v13;
    v15 = *(result + 32);
    return a5(&v19, &v16, 0, v14, *a2, a3, 4);
  }

  __break(1u);
  return result;
}

vImage_Error vImage.PixelBuffer<>.transform(_:interpolation:backgroundColor:destination:)(vImage_Error result, unsigned __int8 *a2, uint8_t a3, uint8_t a4, uint8_t a5, uint8_t a6, uint64_t *a7)
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = *v7;
  if (!*(*v7 + 16))
  {
    __break(1u);
LABEL_13:
    __break(1u);
  }

  v9 = *a7;
  if (!*(*a7 + 16))
  {
    goto LABEL_13;
  }

  v10 = *(v8 + 32);
  v11 = *(v9 + 32);
  if (v10)
  {
    if (v11)
    {
      v12 = v10 == v11;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (v11)
  {
LABEL_11:
    v13 = *(v8 + 56);
    *&src.height = *(v8 + 40);
    src.rowBytes = v13;
    v14 = *(v9 + 56);
    dest.data = v11;
    *&dest.height = *(v9 + 40);
    dest.rowBytes = v14;
    src.data = v10;
    v15 = *(result + 16);
    *&v16.a = *result;
    *&v16.tx = v15;
    v16.v = *(result + 32);
    v17[0] = a3;
    v17[1] = a4;
    v17[2] = a5;
    v17[3] = a6;
    return vImagePerspectiveWarp_ARGB8888(&src, &dest, 0, &v16, *a2, v17, 4u);
  }

  __break(1u);
  return result;
}

uint64_t vImage.PixelBuffer<>.transform(_:interpolation:backgroundColor:destination:)(uint64_t a1, unsigned __int8 *a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6, uint64_t *a7)
{
  v7 = MEMORY[0x1E69589C0];

  return vImage.PixelBuffer<>.transform(_:interpolation:backgroundColor:destination:)(a1, a2, a3, a4, a5, a6, a7, v7);
}

{
  v7 = MEMORY[0x1E69589C8];

  return vImage.PixelBuffer<>.transform(_:interpolation:backgroundColor:destination:)(a1, a2, a3, a4, a5, a6, a7, v7);
}

uint64_t vImage.PixelBuffer<>.transform(_:interpolation:backgroundColor:destination:)(uint64_t result, unsigned __int8 *a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6, uint64_t *a7, uint64_t (*a8)(uint64_t *, uint64_t *, void, _OWORD *, void, _WORD *, uint64_t))
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = *v8;
  if (!*(*v8 + 16))
  {
    __break(1u);
LABEL_13:
    __break(1u);
  }

  v10 = *a7;
  if (!*(*a7 + 16))
  {
    goto LABEL_13;
  }

  v11 = *(v9 + 32);
  v12 = *(v10 + 32);
  if (v11)
  {
    if (v12)
    {
      v13 = v11 == v12;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (v12)
  {
LABEL_11:
    v14 = *(v9 + 56);
    v24 = *(v9 + 40);
    v25 = v14;
    v15 = *(v10 + 56);
    v20 = v12;
    v21 = *(v10 + 40);
    v22 = v15;
    v23 = v11;
    v16 = *(result + 16);
    v17[0] = *result;
    v17[1] = v16;
    v18 = *(result + 32);
    v19[0] = a3;
    v19[1] = a4;
    v19[2] = a5;
    v19[3] = a6;
    return a8(&v23, &v20, 0, v17, *a2, v19, 4);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type vImage_PerpsectiveTransform.Interpolation and conformance vImage_PerpsectiveTransform.Interpolation()
{
  result = lazy protocol witness table cache variable for type vImage_PerpsectiveTransform.Interpolation and conformance vImage_PerpsectiveTransform.Interpolation;
  if (!lazy protocol witness table cache variable for type vImage_PerpsectiveTransform.Interpolation and conformance vImage_PerpsectiveTransform.Interpolation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type vImage_PerpsectiveTransform.Interpolation and conformance vImage_PerpsectiveTransform.Interpolation);
  }

  return result;
}

uint64_t vImage.PixelBuffer<>.init(lumaSource:chromaSource:conversionInfo:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  if (!*(*a1 + 16))
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = *(v6 + 48);
  if (v7 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = *(v6 + 40);
  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v4)
  {
    v9 = *a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate6vImageO13BufferWrapperVGMd);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1B7E76D90;
    v11 = specialized vImage_Buffer.init(width:height:bitsPerPixel:)(v7, v4);
    v13 = v12;
    v15 = v14;
    v17 = v16;
    type metadata accessor for vImage.BufferReference();
    v18 = swift_allocObject();
    v18[2] = v11;
    v18[3] = v13;
    v18[4] = v15;
    v18[5] = v17;
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    *(v10 + 48) = v15;
    *(v10 + 56) = v17;
    *(v10 + 64) = v18;
    v21[0] = v6;
    v21[1] = v10;
    v20 = v9;

    vImage.PixelBuffer<>.convert(lumaSource:chromaSource:conversionInfo:)(v21, &v20, a3);

    *a4 = v10;
    return result;
  }

LABEL_11:
  __break(1u);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

vImage_Error vImage.PixelBuffer<>.convert(lumaSource:chromaSource:conversionInfo:)(uint64_t a1, uint64_t *a2, _OWORD *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (!*(*a1 + 16))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4[6];
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = *v3;
  if (!*(*v3 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = v6[6];
  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v7 < v5)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = v4[5];
  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = v6[5];
  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v9 < v8)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = *a2;
  if (!*(*a2 + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v11 = *(v10 + 48);
  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v7 < v11)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v10 + 40);
  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (v9 < v12)
  {
    goto LABEL_27;
  }

  v13 = v6[4];
  v14 = v6[7];
  dest.data = v13;
  dest.height = v9;
  dest.width = v7;
  dest.rowBytes = v14;
  v15 = *(v10 + 56);
  srcCbCr.data = *(v10 + 32);
  srcCbCr.height = v12;
  srcCbCr.width = v11;
  srcCbCr.rowBytes = v15;
  v16 = v4[4];
  v17 = v4[7];
  srcYp.data = v16;
  srcYp.height = v8;
  srcYp.width = v5;
  srcYp.rowBytes = v17;
  v18 = a3[5];
  *&v23.opaque[64] = a3[4];
  *&v23.opaque[80] = v18;
  v19 = a3[7];
  *&v23.opaque[96] = a3[6];
  *&v23.opaque[112] = v19;
  v20 = a3[1];
  *v23.opaque = *a3;
  *&v23.opaque[16] = v20;
  v21 = a3[3];
  *&v23.opaque[32] = a3[2];
  *&v23.opaque[48] = v21;
  return vImageConvert_420Yp8_CbCr8ToARGB8888(&srcYp, &srcCbCr, &dest, &v23, 0, 0xFFu, 0);
}

void vImage.PixelBuffer<>.withCVPixelBuffer(readOnly:body:)(char a1, void (*a2)(void))
{
  pixelBuffer[1] = *MEMORY[0x1E69E9840];
  pixelBuffer[0] = 0;
  v3 = *v2;
  if (!*(*v2 + 16))
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = v3[6];
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v3[5];
  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = v3[4];
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  CVPixelBufferCreateWithBytes(0, v5, v6, 0x42475241u, v7, v3[7], 0, 0, 0, pixelBuffer);
  if (!pixelBuffer[0])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  CVPixelBufferLockBaseAddress(pixelBuffer[0], a1 & 1);
  if (!pixelBuffer[0])
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  v9 = pixelBuffer[0];
  a2();

  if (!pixelBuffer[0])
  {
    goto LABEL_15;
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer[0], a1 & 1);
}

vImage_Error vImage.PixelBuffer<>.rotate(_:backgroundColor:destination:)(vImage_Error result, __int16 a2, uint64_t *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *v3;
  if (!*(*v3 + 16))
  {
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v5 = *a3;
  if (!*(*a3 + 16))
  {
    goto LABEL_28;
  }

  v6 = *result;
  v7 = *(result + 4);
  v8 = *(v4 + 32);
  v9 = *(v5 + 32);
  if (v8)
  {
    if (v9)
    {
      v10 = v8 == v9;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (!v9)
  {
    __break(1u);
    return result;
  }

LABEL_11:
  if ((a2 & 0x100) != 0)
  {
    v11 = 8;
  }

  else
  {
    v11 = 4;
  }

  v12 = *(v4 + 56);
  *&src.height = *(v4 + 40);
  src.rowBytes = v12;
  v13 = *(v5 + 56);
  dest.data = v9;
  *&dest.height = *(v5 + 40);
  dest.rowBytes = v13;
  src.data = v8;
  if (!v7)
  {
    v14 = v6;
    goto LABEL_18;
  }

  if (v7 == 1)
  {
    v14 = (v6 * 3.1416) / 180.0;
LABEL_18:
    if ((a2 & 0x100) != 0)
    {
      v15 = 0;
    }

    else
    {
      v15 = a2;
    }

    return vImageRotate_Planar8(&src, &dest, 0, v14, v15, v11);
  }

  v16 = 0x302010001020300uLL >> (8 * LOBYTE(v6));
  if ((a2 & 0x100) != 0)
  {
    v17 = 0;
  }

  else
  {
    v17 = a2;
  }

  return vImageRotate90_Planar8(&src, &dest, v16 & 3, v17, v11);
}

uint64_t vImage.PixelBuffer<>._rotate<A, B>(_:destination:backgroundColor:nullBackgroundColor:rotateFunc:rotate90Func:useFloat16Accumulator:)(unsigned int *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, void, char *, float), uint64_t a6, uint64_t *a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v31[4] = *MEMORY[0x1E69E9840];
  v25 = *a1;
  v24 = *(a1 + 4);
  v15 = *a2;
  v31[0] = *v12;
  v16 = vImage.PixelBuffer<>.vImageBuffer.getter();
  v30 = v15;
  type metadata accessor for vImage.PixelBuffer();
  v17 = vImage.PixelBuffer<>.vImageBuffer.getter();
  if (!v16)
  {
    if (v17)
    {
      goto LABEL_4;
    }

LABEL_8:
    __break(1u);
  }

  if (v17 && v16 == v17)
  {
    goto LABEL_8;
  }

LABEL_4:
  v18 = (*(*(a12 - 8) + 48))(a3, 1, a12);
  v19 = 4;
  if (v18 == 1)
  {
    v19 = 8;
  }

  v30 = v19;
  v31[0] = vImage.PixelBuffer<>.vImageBuffer.getter();
  v31[1] = v20;
  v31[2] = v21;
  v31[3] = v22;
  return closure #1 in vImage.PixelBuffer<>._rotate<A, B>(_:destination:backgroundColor:nullBackgroundColor:rotateFunc:rotate90Func:useFloat16Accumulator:)(v31, v15, v25 | (v24 << 32), a7, a8, a3, a4, &v30, a9 & 1, a5, a6, *(a10 + 16), a11, a12);
}

uint64_t vImage.PixelBuffer<>.rotate(_:backgroundColor:destination:)(uint64_t result, unint64_t a2, uint64_t *a3)
{
  v5 = result;
  v27 = *MEMORY[0x1E69E9840];
  if ((a2 & 0x100000000) != 0)
  {
    v10 = 0;
  }

  else
  {
    v6 = a2 >> 8;
    v7 = a2 >> 16;
    v8 = a2 >> 24;
    v9 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
    result = swift_allocObject();
    *(result + 16) = xmmword_1B7E770E0;
    *(result + 32) = v9;
    v10 = (result + 32);
    *(result + 33) = v6;
    *(result + 34) = v7;
    *(result + 35) = v8;
  }

  v11 = *v3;
  if (!*(*v3 + 16))
  {
    __break(1u);
LABEL_31:
    __break(1u);
  }

  v12 = *a3;
  if (!*(*a3 + 16))
  {
    goto LABEL_31;
  }

  v13 = *v5;
  v14 = *(v5 + 4);
  v15 = *(v11 + 32);
  v16 = *(v12 + 32);
  if (v15)
  {
    if (v16)
    {
      v17 = v15 == v16;
    }

    else
    {
      v17 = 0;
    }

    if (!v17)
    {
LABEL_14:
      if (v10)
      {
        v18 = 4;
      }

      else
      {
        v18 = 8;
      }

      v19 = *(v11 + 56);
      *&src.height = *(v11 + 40);
      src.rowBytes = v19;
      v20 = *(v12 + 56);
      dest.data = v16;
      *&dest.height = *(v12 + 40);
      dest.rowBytes = v20;
      src.data = v15;
      if (v14)
      {
        if (v14 != 1)
        {
          v23 = 0x302010001020300uLL >> (8 * LOBYTE(v13));
          if (v10)
          {
            v24 = v10;
          }

          else
          {
            v24 = &unk_1F2FD0BF0;
          }

          vImageRotate90_ARGB8888(&src, &dest, v23 & 3, v24, v18);
        }

        v21 = (v13 * 3.1416) / 180.0;
      }

      else
      {
        v21 = v13;
      }

      if (v10)
      {
        v22 = v10;
      }

      else
      {
        v22 = &unk_1F2FD0BF0;
      }

      vImageRotate_ARGB8888(&src, &dest, 0, v21, v22, v18);
    }

    __break(1u);
  }

  if (v16)
  {
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t vImage.PixelBuffer<>.rotate(_:backgroundColor:destination:)(uint64_t result, unint64_t a2, char a3, uint64_t *a4)
{
  v6 = result;
  v28 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v8 = a2 >> 16;
    v9 = HIDWORD(a2);
    v10 = HIWORD(a2);
    v11 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
    result = swift_allocObject();
    *(result + 16) = xmmword_1B7E770E0;
    *(result + 32) = v11;
    v7 = (result + 32);
    *(result + 34) = v8;
    *(result + 36) = v9;
    *(result + 38) = v10;
  }

  v12 = *v4;
  if (!*(*v4 + 16))
  {
    __break(1u);
LABEL_31:
    __break(1u);
  }

  v13 = *a4;
  if (!*(*a4 + 16))
  {
    goto LABEL_31;
  }

  v14 = *v6;
  v15 = *(v6 + 4);
  v16 = *(v12 + 32);
  v17 = *(v13 + 32);
  if (v16)
  {
    if (v17)
    {
      v18 = v16 == v17;
    }

    else
    {
      v18 = 0;
    }

    if (!v18)
    {
LABEL_14:
      if (v7)
      {
        v19 = 4;
      }

      else
      {
        v19 = 8;
      }

      v20 = *(v12 + 56);
      *&src.height = *(v12 + 40);
      src.rowBytes = v20;
      v21 = *(v13 + 56);
      dest.data = v17;
      *&dest.height = *(v13 + 40);
      dest.rowBytes = v21;
      src.data = v16;
      if (v15)
      {
        if (v15 != 1)
        {
          v24 = 0x302010001020300uLL >> (8 * LOBYTE(v14));
          if (v7)
          {
            v25 = v7;
          }

          else
          {
            v25 = &unk_1F2FD0C18;
          }

          vImageRotate90_ARGB16U(&src, &dest, v24 & 3, v25, v19);
        }

        v22 = (v14 * 3.1416) / 180.0;
      }

      else
      {
        v22 = v14;
      }

      if (v7)
      {
        v23 = v7;
      }

      else
      {
        v23 = &unk_1F2FD0C18;
      }

      vImageRotate_ARGB16U(&src, &dest, 0, v22, v23, v19);
    }

    __break(1u);
  }

  if (v17)
  {
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t vImage.PixelBuffer<>.rotate(_:backgroundColor:destination:)(uint64_t result, unint64_t a2, unint64_t a3, char a4, uint64_t *a5)
{
  v7 = result;
  v29 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v8 = 0;
  }

  else
  {
    v9 = HIDWORD(a2);
    v10 = HIDWORD(a3);
    v11 = a2;
    v12 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd);
    result = swift_allocObject();
    *(result + 16) = xmmword_1B7E770E0;
    *(result + 32) = v11;
    v8 = (result + 32);
    *(result + 36) = v9;
    *(result + 40) = v12;
    *(result + 44) = v10;
  }

  v13 = *v5;
  if (!*(*v5 + 16))
  {
    __break(1u);
LABEL_31:
    __break(1u);
  }

  v14 = *a5;
  if (!*(*a5 + 16))
  {
    goto LABEL_31;
  }

  v15 = *v7;
  v16 = *(v7 + 4);
  v17 = *(v13 + 32);
  v18 = *(v14 + 32);
  if (v17)
  {
    if (v18)
    {
      v19 = v17 == v18;
    }

    else
    {
      v19 = 0;
    }

    if (!v19)
    {
LABEL_14:
      if (v8)
      {
        v20 = 4;
      }

      else
      {
        v20 = 8;
      }

      v21 = *(v13 + 56);
      *&src.height = *(v13 + 40);
      src.rowBytes = v21;
      v22 = *(v14 + 56);
      dest.data = v18;
      *&dest.height = *(v14 + 40);
      dest.rowBytes = v22;
      src.data = v17;
      if (v16)
      {
        if (v16 != 1)
        {
          v25 = 0x302010001020300uLL >> (8 * LOBYTE(v15));
          if (v8)
          {
            v26 = v8;
          }

          else
          {
            v26 = &unk_1F2FD0C40;
          }

          vImageRotate90_ARGBFFFF(&src, &dest, v25 & 3, v26, v20);
        }

        v23 = (v15 * 3.1416) / 180.0;
      }

      else
      {
        v23 = v15;
      }

      if (v8)
      {
        v24 = v8;
      }

      else
      {
        v24 = &unk_1F2FD0C40;
      }

      vImageRotate_ARGBFFFF(&src, &dest, 0, v23, v24, v20);
    }

    __break(1u);
  }

  if (v18)
  {
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

vImage_Error vImage.PixelBuffer<>.rotate(_:backgroundColor:destination:)(vImage_Error result, uint64_t a2, uint64_t *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *v3;
  if (!*(*v3 + 16))
  {
    __break(1u);
LABEL_26:
    __break(1u);
  }

  v5 = *a3;
  if (!*(*a3 + 16))
  {
    goto LABEL_26;
  }

  v6 = *result;
  v7 = *(result + 4);
  v8 = *(v4 + 32);
  v9 = *(v5 + 32);
  if (v8)
  {
    if (v9)
    {
      v10 = v8 == v9;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (!v9)
  {
    __break(1u);
    return result;
  }

LABEL_11:
  if ((a2 & 0x100000000) != 0)
  {
    v11 = 8;
  }

  else
  {
    v11 = 4;
  }

  v12 = *(v4 + 56);
  *&src.height = *(v4 + 40);
  src.rowBytes = v12;
  v13 = *(v5 + 56);
  dest.data = v9;
  *&dest.height = *(v5 + 40);
  dest.rowBytes = v13;
  src.data = v8;
  if (!v7)
  {
    v14 = v6;
    goto LABEL_18;
  }

  if (v7 == 1)
  {
    v14 = (v6 * 3.1416) / 180.0;
LABEL_18:
    v15 = *&a2;
    if ((a2 & 0x100000000) != 0)
    {
      v15 = 0.0;
    }

    return vImageRotate_PlanarF(&src, &dest, 0, v14, v15, v11);
  }

  v16 = 0x302010001020300uLL >> (8 * LOBYTE(v6));
  v17 = *&a2;
  if ((a2 & 0x100000000) != 0)
  {
    v17 = 0.0;
  }

  return vImageRotate90_PlanarF(&src, &dest, v16 & 3, v17, v11);
}

vImage_Error vImage.PixelBuffer<>.rotate(_:backgroundColor:useFloat16Accumulator:destination:)(vImage_Error result, int a2, char a3, uint64_t *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = *v4;
  if (!*(*v4 + 16))
  {
    __break(1u);
LABEL_29:
    __break(1u);
  }

  v6 = *a4;
  if (!*(*a4 + 16))
  {
    goto LABEL_29;
  }

  v7 = *result;
  v8 = *(result + 4);
  v9 = *(v5 + 32);
  v10 = *(v6 + 32);
  if (v9)
  {
    if (v10)
    {
      v11 = v9 == v10;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (!v10)
  {
    __break(1u);
    return result;
  }

LABEL_11:
  if ((a2 & 0x10000) != 0)
  {
    v12 = 8;
  }

  else
  {
    v12 = 4;
  }

  v13 = *(v5 + 56);
  *&src.height = *(v5 + 40);
  src.rowBytes = v13;
  v14 = *(v6 + 56);
  dest.data = v10;
  *&dest.height = *(v6 + 40);
  dest.rowBytes = v14;
  src.data = v9;
  if (v8 >= 2)
  {
    v19 = 0x302010001020300uLL >> (8 * LOBYTE(v7));
    if ((a2 & 0x10000) != 0)
    {
      v20 = 0;
    }

    else
    {
      v20 = a2;
    }

    return vImageRotate90_Planar16F(&src, &dest, v19 & 3, v20, v12);
  }

  else
  {
    v15 = 4096;
    if ((a3 & 1) == 0)
    {
      v15 = 0;
    }

    v16 = v12 | v15;
    v17 = v7;
    if (v8)
    {
      v17 = (v7 * 3.1416) / 180.0;
    }

    if ((a2 & 0x10000) != 0)
    {
      v18 = 0;
    }

    else
    {
      v18 = a2;
    }

    return vImageRotate_Planar16F(&src, &dest, 0, v17, v18, v16);
  }
}

uint64_t vImage.PixelBuffer<>.rotate(_:backgroundColor:useFloat16Accumulator:destination:)(uint64_t result, unint64_t a2, char a3, uint64_t *a4)
{
  v8 = result;
  v26 = *MEMORY[0x1E69E9840];
  if ((a2 & 0x100000000) != 0)
  {
    v10 = &unk_1F2FD0C68;
  }

  else
  {
    v9 = a2 >> 16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
    result = swift_allocObject();
    *(result + 16) = xmmword_1B7E77850;
    *(result + 32) = a2;
    v10 = (result + 32);
    *(result + 34) = v9;
  }

  v11 = *v4;
  if (!*(*v4 + 16))
  {
    __break(1u);
LABEL_26:
    __break(1u);
  }

  v12 = *a4;
  if (!*(*a4 + 16))
  {
    goto LABEL_26;
  }

  v13 = *v8;
  v14 = *(v8 + 4);
  v15 = *(v11 + 32);
  v16 = *(v12 + 32);
  if (v15)
  {
    if (v16)
    {
      v17 = v15 == v16;
    }

    else
    {
      v17 = 0;
    }

    if (!v17)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v16)
  {
    __break(1u);
    return result;
  }

LABEL_14:
  if ((a2 & 0x100000000) != 0)
  {
    v18 = 8;
  }

  else
  {
    v18 = 4;
  }

  v19 = *(v11 + 56);
  *&src.height = *(v11 + 40);
  src.rowBytes = v19;
  v20 = *(v12 + 56);
  dest.data = v16;
  *&dest.height = *(v12 + 40);
  dest.rowBytes = v20;
  src.data = v15;
  if (v14 >= 2)
  {
    vImageRotate90_CbCr16F(&src, &dest, (0x302010001020300uLL >> (8 * LOBYTE(v13))) & 3, v10, v18);
  }

  else
  {
    v21 = 4096;
    if ((a3 & 1) == 0)
    {
      v21 = 0;
    }

    v22 = v18 | v21;
    v23 = v13;
    if (v14)
    {
      v23 = (v13 * 3.1416) / 180.0;
    }

    vImageRotate_CbCr16F(&src, &dest, 0, v23, v10, v22);
  }
}

uint64_t vImage.PixelBuffer<>.rotate(_:backgroundColor:useFloat16Accumulator:destination:)(uint64_t result, unint64_t a2, char a3, char a4, uint64_t *a5)
{
  v9 = result;
  v30 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v10 = &unk_1F2FD0C90;
  }

  else
  {
    v11 = a2 >> 16;
    v12 = HIDWORD(a2);
    v13 = HIWORD(a2);
    v14 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
    result = swift_allocObject();
    *(result + 16) = xmmword_1B7E770E0;
    *(result + 32) = v14;
    v10 = (result + 32);
    *(result + 34) = v11;
    *(result + 36) = v12;
    *(result + 38) = v13;
  }

  v15 = *v5;
  if (!*(*v5 + 16))
  {
    __break(1u);
LABEL_26:
    __break(1u);
  }

  v16 = *a5;
  if (!*(*a5 + 16))
  {
    goto LABEL_26;
  }

  v17 = *v9;
  v18 = *(v9 + 4);
  v19 = *(v15 + 32);
  v20 = *(v16 + 32);
  if (v19)
  {
    if (v20)
    {
      v21 = v19 == v20;
    }

    else
    {
      v21 = 0;
    }

    if (!v21)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v20)
  {
    __break(1u);
    return result;
  }

LABEL_14:
  if (a3)
  {
    v22 = 8;
  }

  else
  {
    v22 = 4;
  }

  v23 = *(v15 + 56);
  *&src.height = *(v15 + 40);
  src.rowBytes = v23;
  v24 = *(v16 + 56);
  dest.data = v20;
  *&dest.height = *(v16 + 40);
  dest.rowBytes = v24;
  src.data = v19;
  if (v18 >= 2)
  {
    vImageRotate90_ARGB16F(&src, &dest, (0x302010001020300uLL >> (8 * LOBYTE(v17))) & 3, v10, v22);
  }

  else
  {
    v25 = 4096;
    if ((a4 & 1) == 0)
    {
      v25 = 0;
    }

    v26 = v22 | v25;
    v27 = v17;
    if (v18)
    {
      v27 = (v17 * 3.1416) / 180.0;
    }

    vImageRotate_ARGB16F(&src, &dest, 0, v27, v10, v26);
  }
}

uint64_t closure #1 in vImage.PixelBuffer<>._rotate<A, B>(_:destination:backgroundColor:nullBackgroundColor:rotateFunc:rotate90Func:useFloat16Accumulator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, char a9, void (*a10)(uint64_t, uint64_t, void, char *, float), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v25[4] = *MEMORY[0x1E69E9840];
  type metadata accessor for vImage.PixelBuffer();
  v25[0] = vImage.PixelBuffer<>.vImageBuffer.getter();
  v25[1] = v15;
  v25[2] = v16;
  v25[3] = v17;
  return closure #1 in closure #1 in vImage.PixelBuffer<>._rotate<A, B>(_:destination:backgroundColor:nullBackgroundColor:rotateFunc:rotate90Func:useFloat16Accumulator:)(v25, a3 & 0xFFFFFFFFFFLL, a4, a5, a1, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t closure #1 in closure #1 in vImage.PixelBuffer<>._rotate<A, B>(_:destination:backgroundColor:nullBackgroundColor:rotateFunc:rotate90Func:useFloat16Accumulator:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, char a9, void (*a10)(uint64_t, uint64_t, void, char *, float), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v46 = a6;
  v42 = a3;
  v43 = a7;
  v44 = a1;
  v45 = a5;
  v41[1] = a4;
  v15 = *&a2;
  v16 = BYTE4(a2);
  v17 = type metadata accessor for Optional();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = v41 - v22;
  v24 = *(a14 - 8);
  v25 = MEMORY[0x1EEE9AC00](v21);
  v27 = v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v31 = v41 - v30;
  if (v16 < 2)
  {
    v32 = *a8;
    v33 = 4096;
    if ((a9 & 1) == 0)
    {
      v33 = 0;
    }

    v42 = a8;
    *a8 = v32 | v33;
    if (v16)
    {
      v34 = (v15 * 3.1416) / 180.0;
    }

    else
    {
      v34 = v15;
    }

    v35 = v29;
    v36 = v28;
    (*(v29 + 16))(v20, v46, v28);
    v37 = *(v24 + 48);
    if (v37(v20, 1, a14) == 1)
    {
      (*(v24 + 16))(v27, v43, a14);
      result = v37(v20, 1, a14);
      if (result != 1)
      {
        result = (*(v35 + 8))(v20, v36);
      }
    }

    else
    {
      result = (*(v24 + 32))(v27, v20, a14);
    }

    if ((*v42 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(*v42))
      {
        a10(v45, v44, 0, v27, v34);
        v31 = v27;
        return (*(v24 + 8))(v31, a14);
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v41[0] = v29;
  v39 = v28;
  (*(v29 + 16))(v23, v46, v28);
  v40 = *(v24 + 48);
  if (v40(v23, 1, a14) == 1)
  {
    (*(v24 + 16))(v31, v43, a14);
    result = v40(v23, 1, a14);
    if (result != 1)
    {
      result = (*(v41[0] + 8))(v23, v39);
    }
  }

  else
  {
    result = (*(v24 + 32))(v31, v23, a14);
  }

  if (*a8 < 0)
  {
    goto LABEL_23;
  }

  if (!HIDWORD(*a8))
  {
    (v42)(v45, v44, 0x302010001020300uLL >> (8 * LOBYTE(v15)), v31);
    return (*(v24 + 8))(v31, a14);
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t vImage.PixelBuffer<>.shear(direction:translate:slope:resamplingFilter:backgroundColor:destination:)(uint64_t result, void *a2, unsigned int a3, uint64_t *a4, float a5, float a6)
{
  v10 = result;
  v26 = *MEMORY[0x1E69E9840];
  if ((a3 & 0x10000) != 0)
  {
    v14 = &unk_1F2FD0CB8;
  }

  else
  {
    v11 = a3 >> 8;
    v12 = a6;
    v13 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
    result = swift_allocObject();
    a5 = v13;
    a6 = v12;
    *(result + 16) = xmmword_1B7E77850;
    *(result + 32) = a3;
    v14 = (result + 32);
    *(result + 33) = v11;
  }

  v15 = *v6;
  if (!*(*v6 + 16))
  {
    __break(1u);
LABEL_22:
    __break(1u);
  }

  v16 = *a4;
  if (!*(*a4 + 16))
  {
    goto LABEL_22;
  }

  v17 = *v10;
  v18 = *(v15 + 32);
  v19 = *(v16 + 32);
  if (v18)
  {
    if (v19)
    {
      v20 = v18 == v19;
    }

    else
    {
      v20 = 0;
    }

    if (!v20)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v19)
  {
    __break(1u);
    return result;
  }

LABEL_14:
  v21 = *(v15 + 56);
  *&src.height = *(v15 + 40);
  src.rowBytes = v21;
  v22 = *(v16 + 56);
  dest.data = v19;
  *&dest.height = *(v16 + 40);
  dest.rowBytes = v22;
  src.data = v18;
  if ((a3 & 0x10000) != 0)
  {
    v23 = 8;
  }

  else
  {
    v23 = 4;
  }

  if (v17)
  {
    vImageHorizontalShear_CbCr8(&src, &dest, 0, 0, a5, a6, a2, v14, v23);
  }

  else
  {
    vImageVerticalShear_CbCr8(&src, &dest, 0, 0, a5, a6, a2, v14, v23);
  }
}

uint64_t vImage.PixelBuffer<>._shear<A, B>(direction:translate:slope:resamplingFilter:destination:backgroundColor:nullBackgroundColor:verticalShearFunc:horizontalShearFunc:useFloat16Accumulator:)(char *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, void, void, uint64_t, char *, float, float), uint64_t a7, void (*a8)(uint64_t, uint64_t, void, void, uint64_t, char *, float, float), float a9, float a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v36[4] = *MEMORY[0x1E69E9840];
  v28 = *a1;
  v18 = *a3;
  v36[0] = *v15;
  v19 = vImage.PixelBuffer<>.vImageBuffer.getter();
  v35 = v18;
  type metadata accessor for vImage.PixelBuffer();
  v20 = vImage.PixelBuffer<>.vImageBuffer.getter();
  if (!v19)
  {
    if (v20)
    {
      goto LABEL_4;
    }

LABEL_10:
    __break(1u);
  }

  if (v20 && v19 == v20)
  {
    goto LABEL_10;
  }

LABEL_4:
  v21 = (*(*(a15 - 8) + 48))(a4, 1, a15);
  v22 = 4;
  if (v21 == 1)
  {
    v22 = 8;
  }

  v23 = 4096;
  if ((a12 & 1) == 0)
  {
    v23 = 0;
  }

  v35 = v22 | v23;
  v36[0] = vImage.PixelBuffer<>.vImageBuffer.getter();
  v36[1] = v24;
  v36[2] = v25;
  v36[3] = v26;
  return closure #1 in vImage.PixelBuffer<>._shear<A, B>(direction:translate:slope:resamplingFilter:destination:backgroundColor:nullBackgroundColor:verticalShearFunc:horizontalShearFunc:useFloat16Accumulator:)(v36, a9, a10, v18, v28, a8, a11, a2, a4, a5, &v35, a6, a7, *(a13 + 16), a14, a15);
}

unsigned __int8 *vImage.PixelBuffer<>.shear(direction:translate:slope:resamplingFilter:backgroundColor:destination:)(unsigned __int8 *result, ResamplingFilter filter, int a3, uint64_t *a4, float a5, float a6)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = *v6;
  if (!*(*v6 + 16))
  {
    __break(1u);
LABEL_22:
    __break(1u);
  }

  v8 = *a4;
  if (!*(*a4 + 16))
  {
    goto LABEL_22;
  }

  v9 = *result;
  v10 = *(v7 + 32);
  v11 = *(v8 + 32);
  if (v10)
  {
    if (v11)
    {
      v12 = v10 == v11;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (!v11)
  {
    __break(1u);
    return result;
  }

LABEL_11:
  v13 = *(v7 + 56);
  *&src.height = *(v7 + 40);
  src.rowBytes = v13;
  v14 = *(v8 + 56);
  dest.data = v11;
  *&dest.height = *(v8 + 40);
  dest.rowBytes = v14;
  src.data = v10;
  if ((a3 & 0x10000) != 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = a3;
  }

  if ((a3 & 0x10000) != 0)
  {
    v16 = 8;
  }

  else
  {
    v16 = 4;
  }

  if (v9)
  {
    return vImageHorizontalShear_Planar16U(&src, &dest, 0, 0, a5, a6, filter, v15, v16);
  }

  else
  {
    return vImageVerticalShear_Planar16U(&src, &dest, 0, 0, a5, a6, filter, v15, v16);
  }
}

uint64_t closure #1 in vImage.PixelBuffer<>._shear<A, B>(direction:translate:slope:resamplingFilter:destination:backgroundColor:nullBackgroundColor:verticalShearFunc:horizontalShearFunc:useFloat16Accumulator:)(uint64_t a1, float a2, float a3, uint64_t a4, char a5, void (*a6)(uint64_t, uint64_t, void, void, uint64_t, char *, float, float), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void (*a12)(uint64_t, uint64_t, void, void, uint64_t, char *, float, float), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v29[4] = *MEMORY[0x1E69E9840];
  type metadata accessor for vImage.PixelBuffer();
  v29[0] = vImage.PixelBuffer<>.vImageBuffer.getter();
  v29[1] = v19;
  v29[2] = v20;
  v29[3] = v21;
  return closure #1 in closure #1 in vImage.PixelBuffer<>._shear<A, B>(direction:translate:slope:resamplingFilter:destination:backgroundColor:nullBackgroundColor:verticalShearFunc:horizontalShearFunc:useFloat16Accumulator:)(v29, a5 & 1, a6, a7, a1, a8, a9, a10, a2, a3, a11, a12, a13, a14, a15, a16);
}

uint64_t closure #1 in closure #1 in vImage.PixelBuffer<>._shear<A, B>(direction:translate:slope:resamplingFilter:destination:backgroundColor:nullBackgroundColor:verticalShearFunc:horizontalShearFunc:useFloat16Accumulator:)(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t, void, void, uint64_t, char *, float, float), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10, void *a11, void (*a12)(uint64_t, uint64_t, void, void, uint64_t, char *, float, float), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v46 = a7;
  v41 = a3;
  v42 = a8;
  v44 = a5;
  v45 = a6;
  v40 = a4;
  v43 = a1;
  v47 = a11;
  v19 = type metadata accessor for Optional();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v38 - v24;
  v26 = *(a16 - 8);
  v27 = MEMORY[0x1EEE9AC00](v23);
  v29 = &v38 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v38 - v30;
  v39 = v32;
  v33 = *(v32 + 16);
  v34 = (v26 + 48);
  if (a2)
  {
    v33(v25, v46, v19);
    v35 = *v34;
    if ((*v34)(v25, 1, a16) == 1)
    {
      (*(v26 + 16))(v31, v42, a16);
      result = (v35)(v25, 1, a16);
      if (result != 1)
      {
        result = (*(v39 + 8))(v25, v19);
      }
    }

    else
    {
      result = (*(v26 + 32))(v31, v25, a16);
    }

    if ((*v47 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(*v47))
      {
        v41(v44, v43, 0, 0, v45, v31, a9, a10);
        return (*(v26 + 8))(v31, a16);
      }

      goto LABEL_19;
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v33(v22, v46, v19);
  v37 = *v34;
  if ((*v34)(v22, 1, a16) == 1)
  {
    (*(v26 + 16))(v29, v42, a16);
    result = (v37)(v22, 1, a16);
    if (result != 1)
    {
      result = (*(v39 + 8))(v22, v19);
    }
  }

  else
  {
    result = (*(v26 + 32))(v29, v22, a16);
  }

  if ((*v47 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  if (!HIDWORD(*v47))
  {
    a12(v44, v43, 0, 0, v45, v29, a9, a10);
    v31 = v29;
    return (*(v26 + 8))(v31, a16);
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t vImage.PixelBuffer<>.shear<A>(direction:translate:slope:resamplingFilter:backgroundColor:destination:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v8 = v7;
  v36 = a1;
  v37 = a6;
  v35 = a4;
  v42 = *MEMORY[0x1E69E9840];
  v11 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v13 & 0x100000000) != 0)
  {
    v20 = 0;
  }

  else
  {
    v16 = v13 >> 16;
    v17 = v12;
    v18 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
    v19 = swift_allocObject();
    v12 = v17;
    v20 = v19;
    *(v19 + 16) = xmmword_1B7E77850;
    *(v19 + 32) = v18;
    *(v19 + 34) = v16;
  }

  v21 = *(v11 + 16);
  v21(v15, v12, a7);
  lazy protocol witness table accessor for type Double and conformance Double();
  BinaryFloatingPoint.init<A>(_:)();
  v22 = v39;
  v21(v15, a3, a7);
  result = BinaryFloatingPoint.init<A>(_:)();
  v24 = *v8;
  if (!*(*v8 + 16))
  {
    __break(1u);
LABEL_25:
    __break(1u);
  }

  v25 = *v37;
  if (!*(*v37 + 16))
  {
    goto LABEL_25;
  }

  v26 = v38;
  v27 = *v36;
  v28 = *(v24 + 32);
  v29 = *(v25 + 32);
  if (v28)
  {
    if (v29)
    {
      v30 = v28 == v29;
    }

    else
    {
      v30 = 0;
    }

    if (!v30)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v29)
  {
    __break(1u);
    return result;
  }

LABEL_14:
  v31 = *(v24 + 56);
  *&src.height = *(v24 + 40);
  src.rowBytes = v31;
  v32 = *(v25 + 56);
  dest.data = v29;
  *&dest.height = *(v25 + 40);
  dest.rowBytes = v32;
  src.data = v28;
  if (v20)
  {
    v33 = (v20 + 32);
  }

  else
  {
    v33 = &unk_1F2FD0CE0;
  }

  if (v20)
  {
    v34 = 4;
  }

  else
  {
    v34 = 8;
  }

  if (v27)
  {
    vImageHorizontalShearD_CbCr16U(&src, &dest, 0, 0, v22, v26, v35, v33, v34);
  }

  else
  {
    vImageVerticalShearD_CbCr16U(&src, &dest, 0, 0, v22, v26, v35, v33, v34);
  }
}

{
  v39 = a3;
  v38 = a6;
  v9 = a1;
  v45 = *MEMORY[0x1E69E9840];
  v10 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v12 & 0x100000000) != 0)
  {
    v21 = 0;
  }

  else
  {
    v15 = v12 >> 8;
    v16 = v12 >> 16;
    v36 = v12 >> 24;
    v37 = a4;
    v17 = v11;
    v18 = v9;
    v19 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
    v20 = swift_allocObject();
    v11 = v17;
    v21 = v20;
    *(v20 + 16) = xmmword_1B7E770E0;
    *(v20 + 32) = v19;
    v9 = v18;
    *(v20 + 33) = v15;
    *(v20 + 34) = v16;
    a4 = v37;
    *(v20 + 35) = v36;
  }

  v22 = *(v10 + 16);
  v22(v14, v11, a7);
  lazy protocol witness table accessor for type Double and conformance Double();
  BinaryFloatingPoint.init<A>(_:)();
  v23 = v42;
  v22(v14, v39, a7);
  result = BinaryFloatingPoint.init<A>(_:)();
  v25 = *v40;
  if (!*(*v40 + 16))
  {
    __break(1u);
LABEL_25:
    __break(1u);
  }

  v26 = *v38;
  if (!*(*v38 + 16))
  {
    goto LABEL_25;
  }

  v27 = v41;
  v28 = *v9;
  v29 = *(v25 + 32);
  v30 = *(v26 + 32);
  if (v29)
  {
    if (v30)
    {
      v31 = v29 == v30;
    }

    else
    {
      v31 = 0;
    }

    if (!v31)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v30)
  {
    __break(1u);
    return result;
  }

LABEL_14:
  v32 = *(v25 + 56);
  *&src.height = *(v25 + 40);
  src.rowBytes = v32;
  v33 = *(v26 + 56);
  dest.data = v30;
  *&dest.height = *(v26 + 40);
  dest.rowBytes = v33;
  src.data = v29;
  if (v21)
  {
    v34 = (v21 + 32);
  }

  else
  {
    v34 = &unk_1F2FD0D30;
  }

  if (v21)
  {
    v35 = 4;
  }

  else
  {
    v35 = 8;
  }

  if (v28)
  {
    vImageHorizontalShearD_ARGB8888(&src, &dest, 0, 0, v23, v27, a4, v34, v35);
  }

  else
  {
    vImageVerticalShearD_ARGB8888(&src, &dest, 0, 0, v23, v27, a4, v34, v35);
  }
}

{
  v29 = a1;
  v30 = a6;
  v28 = a4;
  v35 = *MEMORY[0x1E69E9840];
  v11 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 16);
  v14(v13);
  lazy protocol witness table accessor for type Double and conformance Double();
  BinaryFloatingPoint.init<A>(_:)();
  v15 = v32;
  (v14)(v13, a3, a7);
  result = BinaryFloatingPoint.init<A>(_:)();
  v17 = *v7;
  if (!*(*v7 + 16))
  {
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v18 = *v30;
  if (!*(*v30 + 16))
  {
    goto LABEL_18;
  }

  v19 = v31;
  v20 = *v29;
  v21 = *(v17 + 32);
  v22 = *(v18 + 32);
  if (v21)
  {
    if (v22)
    {
      v23 = v21 == v22;
    }

    else
    {
      v23 = 0;
    }

    if (!v23)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (!v22)
  {
    __break(1u);
    return result;
  }

LABEL_11:
  v24 = *(v17 + 56);
  *&src.height = *(v17 + 40);
  src.rowBytes = v24;
  v25 = *(v18 + 56);
  dest.data = v22;
  *&dest.height = *(v18 + 40);
  dest.rowBytes = v25;
  src.data = v21;
  v26 = 0.0;
  if ((a5 & 0x100000000) != 0)
  {
    v27 = 8;
  }

  else
  {
    v26 = *&a5;
    v27 = 4;
  }

  if (v20)
  {
    return vImageHorizontalShearD_PlanarF(&src, &dest, 0, 0, v15, v19, v28, v26, v27);
  }

  else
  {
    return vImageVerticalShearD_PlanarF(&src, &dest, 0, 0, v15, v19, v28, v26, v27);
  }
}

uint64_t vImage.PixelBuffer<>._shearD<A, B>(direction:translate:slope:resamplingFilter:destination:backgroundColor:nullBackgroundColor:verticalShearFunc:horizontalShearFunc:useFloat16Accumulator:)(char *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, void, void, uint64_t, char *, double, double), uint64_t a7, void (*a8)(uint64_t, uint64_t, void, void, uint64_t, char *, double, double), double a9, double a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v36[4] = *MEMORY[0x1E69E9840];
  v28 = *a1;
  v18 = *a3;
  v36[0] = *v15;
  v19 = vImage.PixelBuffer<>.vImageBuffer.getter();
  v35 = v18;
  type metadata accessor for vImage.PixelBuffer();
  v20 = vImage.PixelBuffer<>.vImageBuffer.getter();
  if (!v19)
  {
    if (v20)
    {
      goto LABEL_4;
    }

LABEL_10:
    __break(1u);
  }

  if (v20 && v19 == v20)
  {
    goto LABEL_10;
  }

LABEL_4:
  v21 = (*(*(a15 - 8) + 48))(a4, 1, a15);
  v22 = 4;
  if (v21 == 1)
  {
    v22 = 8;
  }

  v23 = 4096;
  if ((a12 & 1) == 0)
  {
    v23 = 0;
  }

  v35 = v22 | v23;
  v36[0] = vImage.PixelBuffer<>.vImageBuffer.getter();
  v36[1] = v24;
  v36[2] = v25;
  v36[3] = v26;
  return closure #1 in vImage.PixelBuffer<>._shearD<A, B>(direction:translate:slope:resamplingFilter:destination:backgroundColor:nullBackgroundColor:verticalShearFunc:horizontalShearFunc:useFloat16Accumulator:)(v36, a9, a10, v18, v28, a8, a11, a2, a4, a5, &v35, a6, a7, *(a13 + 16), a14, a15);
}

uint64_t vImage.PixelBuffer<>.shear<A>(direction:translate:slope:resamplingFilter:backgroundColor:destination:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4, __int16 a5, uint64_t *a6, uint64_t a7)
{
  v29 = a1;
  v30 = a6;
  v28 = a4;
  v35 = *MEMORY[0x1E69E9840];
  v11 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 16);
  v14(v13);
  lazy protocol witness table accessor for type Double and conformance Double();
  BinaryFloatingPoint.init<A>(_:)();
  v15 = v32;
  (v14)(v13, a3, a7);
  result = BinaryFloatingPoint.init<A>(_:)();
  v17 = *v7;
  if (!*(*v7 + 16))
  {
    __break(1u);
LABEL_21:
    __break(1u);
  }

  v18 = *v30;
  if (!*(*v30 + 16))
  {
    goto LABEL_21;
  }

  v19 = v31;
  v20 = *v29;
  v21 = *(v17 + 32);
  v22 = *(v18 + 32);
  if (v21)
  {
    if (v22)
    {
      v23 = v21 == v22;
    }

    else
    {
      v23 = 0;
    }

    if (!v23)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (!v22)
  {
    __break(1u);
    return result;
  }

LABEL_11:
  v24 = *(v17 + 56);
  *&src.height = *(v17 + 40);
  src.rowBytes = v24;
  v25 = *(v18 + 56);
  dest.data = v22;
  *&dest.height = *(v18 + 40);
  dest.rowBytes = v25;
  src.data = v21;
  if ((a5 & 0x100) != 0)
  {
    v26 = 0;
  }

  else
  {
    v26 = a5;
  }

  if ((a5 & 0x100) != 0)
  {
    v27 = 8;
  }

  else
  {
    v27 = 4;
  }

  if (v20)
  {
    return vImageHorizontalShearD_Planar8(&src, &dest, 0, 0, v15, v19, v28, v26, v27);
  }

  else
  {
    return vImageVerticalShearD_Planar8(&src, &dest, 0, 0, v15, v19, v28, v26, v27);
  }
}

uint64_t vImage.PixelBuffer<>.shear<A>(direction:translate:slope:resamplingFilter:backgroundColor:useFloat16Accumulator:destination:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4, int a5, int a6, uint64_t *a7, uint64_t a8)
{
  v34 = a1;
  v35 = a7;
  v32 = a6;
  v33 = a4;
  v40 = *MEMORY[0x1E69E9840];
  v12 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 16);
  v15(v14);
  lazy protocol witness table accessor for type Double and conformance Double();
  BinaryFloatingPoint.init<A>(_:)();
  v16 = v37;
  (v15)(v14, a3, a8);
  result = BinaryFloatingPoint.init<A>(_:)();
  v18 = *v8;
  if (!*(*v8 + 16))
  {
    __break(1u);
LABEL_24:
    __break(1u);
  }

  v19 = *v35;
  if (!*(*v35 + 16))
  {
    goto LABEL_24;
  }

  v20 = v36;
  v21 = *v34;
  v22 = *(v18 + 32);
  v23 = *(v19 + 32);
  if (v22)
  {
    if (v23)
    {
      v24 = v22 == v23;
    }

    else
    {
      v24 = 0;
    }

    if (!v24)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (!v23)
  {
    __break(1u);
    return result;
  }

LABEL_11:
  if (v32)
  {
    v25 = 4096;
  }

  else
  {
    v25 = 0;
  }

  if ((a5 & 0x10000) != 0)
  {
    v26 = 8;
  }

  else
  {
    v26 = 4;
  }

  v27 = *(v18 + 56);
  *&src.height = *(v18 + 40);
  src.rowBytes = v27;
  v28 = *(v19 + 56);
  dest.data = v23;
  *&dest.height = *(v19 + 40);
  dest.rowBytes = v28;
  src.data = v22;
  if ((a5 & 0x10000) != 0)
  {
    v29 = 0;
  }

  else
  {
    v29 = a5;
  }

  v30 = v26 | v25;
  if (v21)
  {
    return vImageHorizontalShearD_Planar16F(&src, &dest, 0, 0, v16, v20, v33, v29, v30);
  }

  else
  {
    return vImageVerticalShearD_Planar16F(&src, &dest, 0, 0, v16, v20, v33, v29, v30);
  }
}

uint64_t vImage.PixelBuffer<>.shear<A>(direction:translate:slope:resamplingFilter:backgroundColor:useFloat16Accumulator:destination:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6, uint64_t *a7, uint64_t a8)
{
  v9 = v8;
  v40 = a1;
  v41 = a7;
  v38 = a6;
  v39 = a4;
  v46 = *MEMORY[0x1E69E9840];
  v12 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v14 & 0x100000000) != 0)
  {
    v21 = 0;
  }

  else
  {
    v17 = v14 >> 16;
    v18 = v13;
    v19 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
    v20 = swift_allocObject();
    v13 = v18;
    v21 = v20;
    *(v20 + 16) = xmmword_1B7E77850;
    *(v20 + 32) = v19;
    *(v20 + 34) = v17;
  }

  v22 = *(v12 + 16);
  v22(v16, v13, a8);
  lazy protocol witness table accessor for type Double and conformance Double();
  BinaryFloatingPoint.init<A>(_:)();
  v23 = v43;
  v22(v16, a3, a8);
  result = BinaryFloatingPoint.init<A>(_:)();
  v25 = *v9;
  if (!*(*v9 + 16))
  {
    __break(1u);
LABEL_25:
    __break(1u);
  }

  v26 = *v41;
  if (!*(*v41 + 16))
  {
    goto LABEL_25;
  }

  v27 = v42;
  v28 = *v40;
  v29 = *(v25 + 32);
  v30 = *(v26 + 32);
  if (v29)
  {
    if (!v30 || v29 != v30)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (!v30)
  {
    __break(1u);
    return result;
  }

LABEL_11:
  if (v38)
  {
    v31 = 4096;
  }

  else
  {
    v31 = 0;
  }

  if (v21)
  {
    v32 = 4;
  }

  else
  {
    v32 = 8;
  }

  v33 = *(v25 + 56);
  *&src.height = *(v25 + 40);
  src.rowBytes = v33;
  v34 = *(v26 + 56);
  dest.data = v30;
  *&dest.height = *(v26 + 40);
  dest.rowBytes = v34;
  src.data = v29;
  if (v21)
  {
    v35 = (v21 + 32);
  }

  else
  {
    v35 = &unk_1F2FD0D08;
  }

  v36 = v32 | v31;
  if (v28)
  {
    vImageHorizontalShearD_CbCr16F(&src, &dest, 0, 0, v23, v27, v39, v35, v36);
  }

  else
  {
    vImageVerticalShearD_CbCr16F(&src, &dest, 0, 0, v23, v27, v39, v35, v36);
  }
}

uint64_t vImage.PixelBuffer<>.shear<A>(direction:translate:slope:resamplingFilter:backgroundColor:useFloat16Accumulator:destination:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, char a7, uint64_t *a8, uint64_t a9)
{
  v43 = a3;
  v41 = a1;
  v42 = a8;
  v49 = *MEMORY[0x1E69E9840];
  v11 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v18 = v13 >> 16;
    v19 = HIDWORD(v13);
    v39 = HIWORD(v13);
    v40 = a4;
    v20 = v12;
    v21 = a7;
    v22 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
    v23 = swift_allocObject();
    v12 = v20;
    v17 = v23;
    *(v23 + 16) = xmmword_1B7E770E0;
    *(v23 + 32) = v22;
    a7 = v21;
    *(v23 + 34) = v18;
    *(v23 + 36) = v19;
    a4 = v40;
    *(v23 + 38) = v39;
  }

  v24 = *(v11 + 16);
  v24(v15, v12, a9);
  lazy protocol witness table accessor for type Double and conformance Double();
  BinaryFloatingPoint.init<A>(_:)();
  v25 = v46;
  v24(v15, v43, a9);
  result = BinaryFloatingPoint.init<A>(_:)();
  v27 = *v44;
  if (!*(*v44 + 16))
  {
    __break(1u);
LABEL_25:
    __break(1u);
  }

  v28 = *v42;
  if (!*(*v42 + 16))
  {
    goto LABEL_25;
  }

  v29 = v45;
  v30 = *v41;
  v31 = *(v27 + 32);
  v32 = *(v28 + 32);
  if (v31)
  {
    if (!v32 || v31 != v32)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (!v32)
  {
    __break(1u);
    return result;
  }

LABEL_11:
  if (a7)
  {
    v33 = 4096;
  }

  else
  {
    v33 = 0;
  }

  if (v17)
  {
    v34 = 4;
  }

  else
  {
    v34 = 8;
  }

  v35 = *(v27 + 56);
  *&src.height = *(v27 + 40);
  src.rowBytes = v35;
  v36 = *(v28 + 56);
  dest.data = v32;
  *&dest.height = *(v28 + 40);
  dest.rowBytes = v36;
  src.data = v31;
  if (v17)
  {
    v37 = (v17 + 32);
  }

  else
  {
    v37 = &unk_1F2FD0D58;
  }

  v38 = v34 | v33;
  if (v30)
  {
    vImageHorizontalShearD_ARGB16F(&src, &dest, 0, 0, v25, v29, a4, v37, v38);
  }

  else
  {
    vImageVerticalShearD_ARGB16F(&src, &dest, 0, 0, v25, v29, a4, v37, v38);
  }
}

uint64_t vImage.PixelBuffer<>.shear<A>(direction:translate:slope:resamplingFilter:backgroundColor:destination:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  v40 = a3;
  v39 = a7;
  v10 = a1;
  v46 = *MEMORY[0x1E69E9840];
  v11 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v18 = v13 >> 16;
    v19 = HIDWORD(v13);
    v37 = HIWORD(v13);
    v38 = a4;
    v20 = v12;
    v21 = v10;
    v22 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
    v23 = swift_allocObject();
    v12 = v20;
    v17 = v23;
    *(v23 + 16) = xmmword_1B7E770E0;
    *(v23 + 32) = v22;
    v10 = v21;
    *(v23 + 34) = v18;
    *(v23 + 36) = v19;
    a4 = v38;
    *(v23 + 38) = v37;
  }

  v24 = *(v11 + 16);
  v24(v15, v12, a8);
  lazy protocol witness table accessor for type Double and conformance Double();
  BinaryFloatingPoint.init<A>(_:)();
  v25 = v43;
  v24(v15, v40, a8);
  result = BinaryFloatingPoint.init<A>(_:)();
  v27 = *v41;
  if (!*(*v41 + 16))
  {
    __break(1u);
LABEL_22:
    __break(1u);
  }

  v28 = *v39;
  if (!*(*v39 + 16))
  {
    goto LABEL_22;
  }

  v29 = v42;
  v30 = *v10;
  v31 = *(v27 + 32);
  v32 = *(v28 + 32);
  if (v31)
  {
    if (!v32 || v31 != v32)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (!v32)
  {
    __break(1u);
    return result;
  }

LABEL_11:
  v33 = *(v27 + 56);
  *&src.height = *(v27 + 40);
  src.rowBytes = v33;
  v34 = *(v28 + 56);
  dest.data = v32;
  *&dest.height = *(v28 + 40);
  dest.rowBytes = v34;
  src.data = v31;
  if (v17)
  {
    v35 = (v17 + 32);
  }

  else
  {
    v35 = &unk_1F2FD0D80;
  }

  if (v17)
  {
    v36 = 4;
  }

  else
  {
    v36 = 8;
  }

  if (v30)
  {
    vImageHorizontalShearD_ARGB16U(&src, &dest, 0, 0, v25, v29, a4, v35, v36);
  }

  else
  {
    vImageVerticalShearD_ARGB16U(&src, &dest, 0, 0, v25, v29, a4, v35, v36);
  }
}

uint64_t vImage.PixelBuffer<>.shear<A>(direction:translate:slope:resamplingFilter:backgroundColor:destination:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9)
{
  v42 = a3;
  v41 = a8;
  v10 = a1;
  v48 = *MEMORY[0x1E69E9840];
  v11 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v39 = HIDWORD(v13);
    v40 = HIDWORD(v14);
    v19 = v12;
    v20 = a4;
    v21 = v14;
    v22 = v10;
    v23 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd);
    v24 = swift_allocObject();
    v12 = v19;
    v18 = v24;
    *(v24 + 16) = xmmword_1B7E770E0;
    *(v24 + 32) = v23;
    v10 = v22;
    v25 = v40;
    *(v24 + 36) = v39;
    *(v24 + 40) = v21;
    a4 = v20;
    *(v24 + 44) = v25;
  }

  v26 = *(v11 + 16);
  v26(v16, v12, a9);
  lazy protocol witness table accessor for type Double and conformance Double();
  BinaryFloatingPoint.init<A>(_:)();
  v27 = v45;
  v26(v16, v42, a9);
  result = BinaryFloatingPoint.init<A>(_:)();
  v29 = *v43;
  if (!*(*v43 + 16))
  {
    __break(1u);
LABEL_22:
    __break(1u);
  }

  v30 = *v41;
  if (!*(*v41 + 16))
  {
    goto LABEL_22;
  }

  v31 = v44;
  v32 = *v10;
  v33 = *(v29 + 32);
  v34 = *(v30 + 32);
  if (v33)
  {
    if (!v34 || v33 != v34)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (!v34)
  {
    __break(1u);
    return result;
  }

LABEL_11:
  v35 = *(v29 + 56);
  *&src.height = *(v29 + 40);
  src.rowBytes = v35;
  v36 = *(v30 + 56);
  dest.data = v34;
  *&dest.height = *(v30 + 40);
  dest.rowBytes = v36;
  src.data = v33;
  if (v18)
  {
    v37 = (v18 + 32);
  }

  else
  {
    v37 = &unk_1F2FD0DA8;
  }

  if (v18)
  {
    v38 = 4;
  }

  else
  {
    v38 = 8;
  }

  if (v32)
  {
    vImageHorizontalShearD_ARGBFFFF(&src, &dest, 0, 0, v27, v31, a4, v37, v38);
  }

  else
  {
    vImageVerticalShearD_ARGBFFFF(&src, &dest, 0, 0, v27, v31, a4, v37, v38);
  }
}

uint64_t closure #1 in vImage.PixelBuffer<>._shearD<A, B>(direction:translate:slope:resamplingFilter:destination:backgroundColor:nullBackgroundColor:verticalShearFunc:horizontalShearFunc:useFloat16Accumulator:)(uint64_t a1, double a2, double a3, uint64_t a4, char a5, void (*a6)(uint64_t, uint64_t, void, void, uint64_t, char *, double, double), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void (*a12)(uint64_t, uint64_t, void, void, uint64_t, char *, double, double), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v29[4] = *MEMORY[0x1E69E9840];
  type metadata accessor for vImage.PixelBuffer();
  v29[0] = vImage.PixelBuffer<>.vImageBuffer.getter();
  v29[1] = v19;
  v29[2] = v20;
  v29[3] = v21;
  return closure #1 in closure #1 in vImage.PixelBuffer<>._shearD<A, B>(direction:translate:slope:resamplingFilter:destination:backgroundColor:nullBackgroundColor:verticalShearFunc:horizontalShearFunc:useFloat16Accumulator:)(v29, a5 & 1, a6, a7, a1, a8, a9, a10, a2, a3, a11, a12, a13, a14, a15, a16);
}

uint64_t closure #1 in closure #1 in vImage.PixelBuffer<>._shearD<A, B>(direction:translate:slope:resamplingFilter:destination:backgroundColor:nullBackgroundColor:verticalShearFunc:horizontalShearFunc:useFloat16Accumulator:)(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t, void, void, uint64_t, char *, double, double), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, void *a11, void (*a12)(uint64_t, uint64_t, void, void, uint64_t, char *, double, double), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v46 = a7;
  v41 = a3;
  v42 = a8;
  v44 = a5;
  v45 = a6;
  v40 = a4;
  v43 = a1;
  v47 = a11;
  v19 = type metadata accessor for Optional();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v38 - v24;
  v26 = *(a16 - 8);
  v27 = MEMORY[0x1EEE9AC00](v23);
  v29 = &v38 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v38 - v30;
  v39 = v32;
  v33 = *(v32 + 16);
  v34 = (v26 + 48);
  if (a2)
  {
    v33(v25, v46, v19);
    v35 = *v34;
    if ((*v34)(v25, 1, a16) == 1)
    {
      (*(v26 + 16))(v31, v42, a16);
      result = (v35)(v25, 1, a16);
      if (result != 1)
      {
        result = (*(v39 + 8))(v25, v19);
      }
    }

    else
    {
      result = (*(v26 + 32))(v31, v25, a16);
    }

    if ((*v47 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(*v47))
      {
        v41(v44, v43, 0, 0, v45, v31, a9, a10);
        return (*(v26 + 8))(v31, a16);
      }

      goto LABEL_19;
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v33(v22, v46, v19);
  v37 = *v34;
  if ((*v34)(v22, 1, a16) == 1)
  {
    (*(v26 + 16))(v29, v42, a16);
    result = (v37)(v22, 1, a16);
    if (result != 1)
    {
      result = (*(v39 + 8))(v22, v19);
    }
  }

  else
  {
    result = (*(v26 + 32))(v29, v22, a16);
  }

  if ((*v47 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  if (!HIDWORD(*v47))
  {
    a12(v44, v43, 0, 0, v45, v29, a9, a10);
    v31 = v29;
    return (*(v26 + 8))(v31, a16);
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t (*vImage.PixelBuffer<>.reflect(over:destination:)(uint64_t (*result)(uint64_t *, uint64_t *, void), uint64_t *a2))(uint64_t *, uint64_t *, void)
{
  v3 = *v2;
  if (!*(*v2 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v4 = *(v3 + 48);
  if (v4 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = *(v3 + 40);
  if (v5 < 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v4)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v5)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = *a2;
  if (!*(*a2 + 16))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = *(v6 + 48);
  if (v7 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = *(v6 + 40);
  if (v8 < 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v7)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v8)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v4 != v7)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v5 != v8)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  if (*result)
  {
    v9 = @nonobjc vImageHorizontalReflect_Planar8(_:_:_:);
  }

  else
  {
    v9 = @nonobjc vImageVerticalReflect_Planar8(_:_:_:);
  }

  return specialized vImage.PixelBuffer<>._reflect(reflectFunc:destination:)(v9, 0, v6, v3);
}

{
  v3 = *v2;
  if (!*(*v2 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v4 = *(v3 + 48);
  if (v4 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = *(v3 + 40);
  if (v5 < 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v4)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v5)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = *a2;
  if (!*(*a2 + 16))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = *(v6 + 48);
  if (v7 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = *(v6 + 40);
  if (v8 < 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v7)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v8)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v4 != v7)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v5 != v8)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  if (*result)
  {
    v9 = @nonobjc vImageHorizontalReflect_Planar16F(_:_:_:);
  }

  else
  {
    v9 = @nonobjc vImageVerticalReflect_Planar16F(_:_:_:);
  }

  return specialized vImage.PixelBuffer<>._reflect(reflectFunc:destination:)(v9, 0, v6, v3);
}

{
  v3 = *v2;
  if (!*(*v2 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v4 = *(v3 + 48);
  if (v4 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = *(v3 + 40);
  if (v5 < 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v4)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v5)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = *a2;
  if (!*(*a2 + 16))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = *(v6 + 48);
  if (v7 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = *(v6 + 40);
  if (v8 < 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v7)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v8)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v4 != v7)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v5 != v8)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  if (*result)
  {
    v9 = @nonobjc vImageHorizontalReflect_CbCr16F(_:_:_:);
  }

  else
  {
    v9 = @nonobjc vImageVerticalReflect_CbCr16F(_:_:_:);
  }

  return specialized vImage.PixelBuffer<>._reflect(reflectFunc:destination:)(v9, 0, v6, v3);
}

{
  v3 = *v2;
  if (!*(*v2 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v4 = *(v3 + 48);
  if (v4 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = *(v3 + 40);
  if (v5 < 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v4)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v5)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = *a2;
  if (!*(*a2 + 16))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = *(v6 + 48);
  if (v7 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = *(v6 + 40);
  if (v8 < 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v7)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v8)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v4 != v7)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v5 != v8)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  if (*result)
  {
    v9 = @nonobjc vImageHorizontalReflect_ARGB16F(_:_:_:);
  }

  else
  {
    v9 = @nonobjc vImageVerticalReflect_ARGB16F(_:_:_:);
  }

  return specialized vImage.PixelBuffer<>._reflect(reflectFunc:destination:)(v9, 0, v6, v3);
}

{
  v3 = *v2;
  if (!*(*v2 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v4 = *(v3 + 48);
  if (v4 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = *(v3 + 40);
  if (v5 < 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v4)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v5)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = *a2;
  if (!*(*a2 + 16))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = *(v6 + 48);
  if (v7 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = *(v6 + 40);
  if (v8 < 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v7)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v8)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v4 != v7)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v5 != v8)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  if (*result)
  {
    v9 = @nonobjc vImageHorizontalReflect_ARGB8888(_:_:_:);
  }

  else
  {
    v9 = @nonobjc vImageVerticalReflect_ARGB8888(_:_:_:);
  }

  return specialized vImage.PixelBuffer<>._reflect(reflectFunc:destination:)(v9, 0, v6, v3);
}

{
  v3 = *v2;
  if (!*(*v2 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v4 = *(v3 + 48);
  if (v4 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = *(v3 + 40);
  if (v5 < 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v4)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v5)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = *a2;
  if (!*(*a2 + 16))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = *(v6 + 48);
  if (v7 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = *(v6 + 40);
  if (v8 < 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v7)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v8)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v4 != v7)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v5 != v8)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  if (*result)
  {
    v9 = @nonobjc vImageHorizontalReflect_ARGB16U(_:_:_:);
  }

  else
  {
    v9 = @nonobjc vImageVerticalReflect_ARGB16U(_:_:_:);
  }

  return specialized vImage.PixelBuffer<>._reflect(reflectFunc:destination:)(v9, 0, v6, v3);
}

{
  v3 = *v2;
  if (!*(*v2 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v4 = *(v3 + 48);
  if (v4 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = *(v3 + 40);
  if (v5 < 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v4)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v5)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = *a2;
  if (!*(*a2 + 16))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = *(v6 + 48);
  if (v7 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = *(v6 + 40);
  if (v8 < 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v7)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v8)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v4 != v7)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v5 != v8)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  if (*result)
  {
    v9 = @nonobjc vImageHorizontalReflect_PlanarF(_:_:_:);
  }

  else
  {
    v9 = @nonobjc vImageVerticalReflect_PlanarF(_:_:_:);
  }

  return specialized vImage.PixelBuffer<>._reflect(reflectFunc:destination:)(v9, 0, v6, v3);
}

{
  v3 = *v2;
  if (!*(*v2 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v4 = *(v3 + 48);
  if (v4 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = *(v3 + 40);
  if (v5 < 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v4)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v5)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = *a2;
  if (!*(*a2 + 16))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = *(v6 + 48);
  if (v7 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = *(v6 + 40);
  if (v8 < 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v7)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v8)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v4 != v7)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v5 != v8)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  if (*result)
  {
    v9 = @nonobjc vImageHorizontalReflect_ARGBFFFF(_:_:_:);
  }

  else
  {
    v9 = @nonobjc vImageVerticalReflect_ARGBFFFF(_:_:_:);
  }

  return specialized vImage.PixelBuffer<>._reflect(reflectFunc:destination:)(v9, 0, v6, v3);
}

uint64_t (*specialized vImage.PixelBuffer<>._reflect(reflectFunc:destination:)(uint64_t (*result)(uint64_t *, uint64_t *, void), uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *, uint64_t *, void)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!*(a4 + 16))
  {
    __break(1u);
LABEL_10:
    __break(1u);
  }

  if (!*(a3 + 16))
  {
    goto LABEL_10;
  }

  v4 = *(a4 + 32);
  v5 = *(a3 + 32);
  if (v4)
  {
    if (!v5 || v4 != v5)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  if (v5)
  {
LABEL_8:
    v6 = *(a4 + 56);
    v11 = v4;
    v12 = *(a4 + 40);
    v13 = v6;
    v7 = *(a3 + 56);
    v8 = v5;
    v9 = *(a3 + 40);
    v10 = v7;
    return result(&v11, &v8, 0);
  }

  __break(1u);
  return result;
}

uint64_t vImage.PixelBuffer<>._reflect(reflectFunc:destination:)(uint64_t (*a1)(uint64_t, void *, void), uint64_t a2, uint64_t *a3)
{
  v12[4] = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v12[0] = *v3;
  v6 = vImage.PixelBuffer<>.vImageBuffer.getter();
  v7 = vImage.PixelBuffer<>.vImageBuffer.getter();
  if (!v6)
  {
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_6:
    __break(1u);
  }

  if (v7 && v6 == v7)
  {
    goto LABEL_6;
  }

LABEL_4:
  v12[0] = vImage.PixelBuffer<>.vImageBuffer.getter();
  v12[1] = v8;
  v12[2] = v9;
  v12[3] = v10;
  return closure #1 in vImage.PixelBuffer<>._reflect(reflectFunc:destination:)(v12, v5, a1);
}

uint64_t closure #1 in vImage.PixelBuffer<>._reflect(reflectFunc:destination:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void *, void))
{
  v9[4] = *MEMORY[0x1E69E9840];
  type metadata accessor for vImage.PixelBuffer();
  v9[0] = vImage.PixelBuffer<>.vImageBuffer.getter();
  v9[1] = v5;
  v9[2] = v6;
  v9[3] = v7;
  return a3(a1, v9, 0);
}

uint64_t vImage.PixelBuffer<>.scale(destination:)(uint64_t *a1)
{
  v1 = MEMORY[0x1E6958A88];

  return vImage.PixelBuffer<>.scale(destination:)(a1, v1);
}

{
  v1 = MEMORY[0x1E6958A70];

  return vImage.PixelBuffer<>.scale(destination:)(a1, v1);
}

{
  v1 = MEMORY[0x1E6958A50];

  return vImage.PixelBuffer<>.scale(destination:)(a1, v1);
}

{
  v1 = MEMORY[0x1E6958A80];

  return vImage.PixelBuffer<>.scale(destination:)(a1, v1);
}

{
  v1 = MEMORY[0x1E6958A68];

  return vImage.PixelBuffer<>.scale(destination:)(a1, v1);
}

{
  v1 = MEMORY[0x1E6958A48];

  return vImage.PixelBuffer<>.scale(destination:)(a1, v1);
}

{
  v1 = MEMORY[0x1E6958A90];

  return vImage.PixelBuffer<>.scale(destination:)(a1, v1);
}

{
  v1 = MEMORY[0x1E6958A58];

  return vImage.PixelBuffer<>.scale(destination:)(a1, v1);
}

uint64_t vImage.PixelBuffer<>.scale(useFloat16Accumulator:destination:)(char a1, uint64_t *a2)
{
  v2 = MEMORY[0x1E6958A78];

  return vImage.PixelBuffer<>.scale(useFloat16Accumulator:destination:)(a1, a2, v2);
}

{
  v2 = MEMORY[0x1E6958A60];

  return vImage.PixelBuffer<>.scale(useFloat16Accumulator:destination:)(a1, a2, v2);
}

{
  v2 = MEMORY[0x1E6958A40];

  return vImage.PixelBuffer<>.scale(useFloat16Accumulator:destination:)(a1, a2, v2);
}

uint64_t vImage.PixelBuffer<>.scale(useFloat16Accumulator:destination:)(char a1, uint64_t *a2, uint64_t (*a3)(_OWORD *, _OWORD *, void, uint64_t))
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *v3;
  if (!*(*v3 + 16))
  {
    __break(1u);
LABEL_8:
    __break(1u);
  }

  v5 = *(v4 + 48);
  v11[0] = *(v4 + 32);
  v11[1] = v5;
  v6 = *a2;
  if (!*(*a2 + 16))
  {
    goto LABEL_8;
  }

  if (a1)
  {
    v7 = 4096;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v6 + 48);
  v10[0] = *(v6 + 32);
  v10[1] = v8;
  return a3(v11, v10, 0, v7);
}

uint64_t vImage.PixelBuffer<>.scale(destination:)(uint64_t *a1, uint64_t (*a2)(_OWORD *, _OWORD *, void, void))
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *v2;
  if (!*(*v2 + 16))
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v4 = *(v3 + 48);
  v9[0] = *(v3 + 32);
  v9[1] = v4;
  v5 = *a1;
  if (!*(*a1 + 16))
  {
    goto LABEL_5;
  }

  v6 = *(v5 + 48);
  v8[0] = *(v5 + 32);
  v8[1] = v6;
  return a2(v9, v8, 0, 0);
}

uint64_t vImage.PixelBuffer<>.transform(_:backgroundColor:destination:)(_OWORD *a1, __int16 a2, uint64_t *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *a3;
  v5 = *v3;
  v6 = a1[1];
  v12[0] = *a1;
  v12[1] = v6;
  v12[2] = a1[2];
  if (!*(v5 + 16))
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  v7 = *(v5 + 48);
  v14[0] = *(v5 + 32);
  v14[1] = v7;
  if (!*(v4 + 16))
  {
    goto LABEL_11;
  }

  v8 = *(v4 + 48);
  v13[0] = *(v4 + 32);
  v13[1] = v8;
  if ((a2 & 0x100) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  if ((a2 & 0x100) != 0)
  {
    v10 = 8;
  }

  else
  {
    v10 = 4;
  }

  return MEMORY[0x1B8CB3110](v14, v13, 0, v12, v9, v10);
}

uint64_t vImage.PixelBuffer<>._affineWarp<A>(_:destination:backgroundColor:nullBackgroundColor:affineWarpFunc:)(_OWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, void, uint64_t, char *, unint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22[4] = *MEMORY[0x1E69E9840];
  v14 = *a2;
  v15 = a1[1];
  v21[0] = *a1;
  v21[1] = v15;
  v21[2] = a1[2];
  if ((*(*(a8 - 8) + 48))(a3, 1, a8) == 1)
  {
    v16 = 8;
  }

  else
  {
    v16 = 4;
  }

  v22[0] = vImage.PixelBuffer<>.vImageBuffer.getter();
  v22[1] = v17;
  v22[2] = v18;
  v22[3] = v19;
  return closure #1 in vImage.PixelBuffer<>._affineWarp<A>(_:destination:backgroundColor:nullBackgroundColor:affineWarpFunc:)(v22, v14, a5, a6, v21, a3, a4, v16, *(a7 + 16), a8);
}

vImage_Error vImage.PixelBuffer<>.transform(_:backgroundColor:useFloat16Accumulator:destination:)(_OWORD *a1, int a2, char a3, uint64_t *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = *a4;
  v6 = *v4;
  v7 = a1[1];
  *&v14.a = *a1;
  *&v14.c = v7;
  *&v14.tx = a1[2];
  if (!*(v6 + 16))
  {
    __break(1u);
LABEL_14:
    __break(1u);
  }

  v8 = *(v6 + 48);
  *&src.data = *(v6 + 32);
  *&src.width = v8;
  if (!*(v5 + 16))
  {
    goto LABEL_14;
  }

  v9 = *(v5 + 48);
  *&dest.data = *(v5 + 32);
  *&dest.width = v9;
  if ((a2 & 0x10000) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = a2;
  }

  if ((a2 & 0x10000) != 0)
  {
    v11 = 8;
  }

  else
  {
    v11 = 4;
  }

  if (a3)
  {
    v12 = 4096;
  }

  else
  {
    v12 = 0;
  }

  return vImageAffineWarpD_Planar16F(&src, &dest, 0, &v14, v10, v11 | v12);
}

uint64_t vImage.PixelBuffer<>._affineWarpD<A>(_:destination:backgroundColor:nullBackgroundColor:affineWarpFunc:useFloat16Accumulator:)(_OWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, void, uint64_t, char *), uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v26[4] = *MEMORY[0x1E69E9840];
  v15 = *a2;
  v16 = a1[1];
  v25[0] = *a1;
  v25[1] = v16;
  v25[2] = a1[2];
  v17 = (*(*(a9 - 8) + 48))(a3, 1, a9);
  v18 = 4;
  if (v17 == 1)
  {
    v18 = 8;
  }

  v19 = 4096;
  if ((a7 & 1) == 0)
  {
    v19 = 0;
  }

  v24 = v18 | v19;
  v26[0] = vImage.PixelBuffer<>.vImageBuffer.getter();
  v26[1] = v20;
  v26[2] = v21;
  v26[3] = v22;
  return closure #1 in vImage.PixelBuffer<>._affineWarpD<A>(_:destination:backgroundColor:nullBackgroundColor:affineWarpFunc:useFloat16Accumulator:)(v26, v15, a5, a6, v25, a3, a4, &v24, *(a8 + 16), a9);
}

uint64_t vImage.PixelBuffer<>.transform(_:backgroundColor:useFloat16Accumulator:destination:)(_OWORD *a1, unint64_t a2, char a3, uint64_t *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if ((a2 & 0x100000000) != 0)
  {
    v12 = 8;
    v11 = &unk_1F2FD0DD0;
  }

  else
  {
    v8 = a2 >> 16;
    v9 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1B7E77850;
    *(v10 + 32) = v9;
    v11 = (v10 + 32);
    *(v10 + 34) = v8;
    v12 = 4;
  }

  v13 = *a4;
  v14 = *v4;
  v15 = a1[1];
  *&v20.a = *a1;
  *&v20.c = v15;
  *&v20.tx = a1[2];
  if (!*(v14 + 16))
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  v16 = *(v14 + 48);
  *&src.data = *(v14 + 32);
  *&src.width = v16;
  if (!*(v13 + 16))
  {
    goto LABEL_11;
  }

  v17 = *(v13 + 48);
  *&dest.data = *(v13 + 32);
  *&dest.width = v17;
  if (a3)
  {
    v18 = 4096;
  }

  else
  {
    v18 = 0;
  }

  vImageAffineWarpD_CbCr16F(&src, &dest, 0, &v20, v11, v12 | v18);
}

uint64_t vImage.PixelBuffer<>.transform(_:backgroundColor:useFloat16Accumulator:destination:)(_OWORD *a1, unint64_t a2, char a3, char a4, uint64_t *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v9 = 8;
    v10 = &unk_1F2FD0DF8;
  }

  else
  {
    v11 = a2 >> 16;
    v12 = HIDWORD(a2);
    v13 = HIWORD(a2);
    v14 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1B7E770E0;
    *(v15 + 32) = v14;
    v10 = (v15 + 32);
    *(v15 + 34) = v11;
    *(v15 + 36) = v12;
    *(v15 + 38) = v13;
    v9 = 4;
  }

  v16 = *a5;
  v17 = *v5;
  v18 = a1[1];
  *&v23.a = *a1;
  *&v23.c = v18;
  *&v23.tx = a1[2];
  if (!*(v17 + 16))
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  v19 = *(v17 + 48);
  *&src.data = *(v17 + 32);
  *&src.width = v19;
  if (!*(v16 + 16))
  {
    goto LABEL_11;
  }

  v20 = *(v16 + 48);
  *&dest.data = *(v16 + 32);
  *&dest.width = v20;
  if (a4)
  {
    v21 = 4096;
  }

  else
  {
    v21 = 0;
  }

  vImageAffineWarpD_ARGB16F(&src, &dest, 0, &v23, v10, v9 | v21);
}

uint64_t vImage.PixelBuffer<>.transform(_:backgroundColor:destination:)(_OWORD *a1, unint64_t a2, uint64_t *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if ((a2 & 0x100000000) != 0)
  {
    v11 = &unk_1F2FD0E20;
  }

  else
  {
    v7 = a2 >> 8;
    v8 = a2 >> 16;
    v9 = a2 >> 24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1B7E770E0;
    *(v10 + 32) = a2;
    v11 = (v10 + 32);
    *(v10 + 33) = v7;
    *(v10 + 34) = v8;
    *(v10 + 35) = v9;
  }

  v12 = *a3;
  v13 = *v3;
  v14 = a1[1];
  v19[0] = *a1;
  v19[1] = v14;
  v19[2] = a1[2];
  if (!*(v13 + 16))
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  v15 = *(v13 + 48);
  v21[0] = *(v13 + 32);
  v21[1] = v15;
  if (!*(v12 + 16))
  {
    goto LABEL_11;
  }

  v16 = *(v12 + 48);
  v20[0] = *(v12 + 32);
  v20[1] = v16;
  if ((a2 & 0x100000000) != 0)
  {
    v17 = 8;
  }

  else
  {
    v17 = 4;
  }

  MEMORY[0x1B8CB30F0](v21, v20, 0, v19, v11, v17);
}

uint64_t vImage.PixelBuffer<>.transform(_:backgroundColor:destination:)(_OWORD *a1, unint64_t a2, char a3, uint64_t *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v8 = &unk_1F2FD0E48;
  }

  else
  {
    v9 = a2 >> 16;
    v10 = HIDWORD(a2);
    v11 = HIWORD(a2);
    v12 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1B7E770E0;
    *(v13 + 32) = v12;
    v8 = (v13 + 32);
    *(v13 + 34) = v9;
    *(v13 + 36) = v10;
    *(v13 + 38) = v11;
  }

  v14 = *a4;
  v15 = *v4;
  v16 = a1[1];
  v21[0] = *a1;
  v21[1] = v16;
  v21[2] = a1[2];
  if (!*(v15 + 16))
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  v17 = *(v15 + 48);
  v23[0] = *(v15 + 32);
  v23[1] = v17;
  if (!*(v14 + 16))
  {
    goto LABEL_11;
  }

  v18 = *(v14 + 48);
  v22[0] = *(v14 + 32);
  v22[1] = v18;
  if (a3)
  {
    v19 = 8;
  }

  else
  {
    v19 = 4;
  }

  MEMORY[0x1B8CB30E0](v23, v22, 0, v21, v8, v19);
}

uint64_t vImage.PixelBuffer<>.transform(_:backgroundColor:destination:)(_OWORD *a1, uint64_t a2, uint64_t *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *a3;
  v5 = *v3;
  v6 = a1[1];
  v12[0] = *a1;
  v12[1] = v6;
  v12[2] = a1[2];
  if (!*(v5 + 16))
  {
    __break(1u);
LABEL_8:
    __break(1u);
  }

  v7 = *(v5 + 48);
  v14[0] = *(v5 + 32);
  v14[1] = v7;
  if (!*(v4 + 16))
  {
    goto LABEL_8;
  }

  v9 = *(v4 + 32);
  v8 = *(v4 + 48);
  v13[0] = v9;
  v13[1] = v8;
  v9.n128_u32[0] = a2;
  if ((a2 & 0x100000000) != 0)
  {
    v9.n128_f32[0] = 0.0;
    v10 = 8;
  }

  else
  {
    v10 = 4;
  }

  return MEMORY[0x1B8CB3120](v14, v13, 0, v12, v10, v9);
}

uint64_t vImage.PixelBuffer<>.transform(_:backgroundColor:destination:)(_OWORD *a1, unint64_t a2, unint64_t a3, char a4, uint64_t *a5)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v9 = &unk_1F2FD0E70;
  }

  else
  {
    v10 = HIDWORD(a2);
    v11 = HIDWORD(a3);
    v12 = a2;
    v13 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1B7E770E0;
    *(v14 + 32) = v12;
    v9 = (v14 + 32);
    *(v14 + 36) = v10;
    *(v14 + 40) = v13;
    *(v14 + 44) = v11;
  }

  v15 = *a5;
  v16 = *v5;
  v17 = a1[1];
  v22[0] = *a1;
  v22[1] = v17;
  v22[2] = a1[2];
  if (!*(v16 + 16))
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  v18 = *(v16 + 48);
  v24[0] = *(v16 + 32);
  v24[1] = v18;
  if (!*(v15 + 16))
  {
    goto LABEL_11;
  }

  v19 = *(v15 + 48);
  v23[0] = *(v15 + 32);
  v23[1] = v19;
  if (a4)
  {
    v20 = 8;
  }

  else
  {
    v20 = 4;
  }

  MEMORY[0x1B8CB3100](v24, v23, 0, v22, v9, v20);
}

void vImage_AffineTransform_Double.init(a:b:c:d:tx:ty:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
  a1[5] = a7;
}

uint64_t closure #1 in vImage.PixelBuffer<>._affineWarp<A>(_:destination:backgroundColor:nullBackgroundColor:affineWarpFunc:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, void, uint64_t, char *, unint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v21[4] = *MEMORY[0x1E69E9840];
  type metadata accessor for vImage.PixelBuffer();
  v21[0] = vImage.PixelBuffer<>.vImageBuffer.getter();
  v21[1] = v13;
  v21[2] = v14;
  v21[3] = v15;
  return closure #1 in closure #1 in vImage.PixelBuffer<>._affineWarp<A>(_:destination:backgroundColor:nullBackgroundColor:affineWarpFunc:)(v21, a3, a4, a1, a5, a6, a7, a8, a9, a10);
}

uint64_t closure #1 in closure #1 in vImage.PixelBuffer<>._affineWarp<A>(_:destination:backgroundColor:nullBackgroundColor:affineWarpFunc:)(uint64_t a1, void (*a2)(uint64_t, uint64_t, void, uint64_t, char *, unint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v22 = a7;
  v23 = a1;
  v24 = a4;
  v25 = a5;
  v26 = a3;
  v27 = a2;
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v22 - v15;
  v17 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a6, v12);
  v20 = *(v17 + 48);
  if (v20(v16, 1, a10) == 1)
  {
    (*(v17 + 16))(v19, v22, a10);
    result = v20(v16, 1, a10);
    if (result != 1)
    {
      result = (*(v13 + 8))(v16, v12);
    }
  }

  else
  {
    result = (*(v17 + 32))(v19, v16, a10);
  }

  if ((a8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a8))
  {
    v27(v24, v23, 0, v25, v19, a8);
    return (*(v17 + 8))(v19, a10);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in vImage.PixelBuffer<>._affineWarpD<A>(_:destination:backgroundColor:nullBackgroundColor:affineWarpFunc:useFloat16Accumulator:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, void, uint64_t, char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v21[4] = *MEMORY[0x1E69E9840];
  type metadata accessor for vImage.PixelBuffer();
  v21[0] = vImage.PixelBuffer<>.vImageBuffer.getter();
  v21[1] = v13;
  v21[2] = v14;
  v21[3] = v15;
  return closure #1 in closure #1 in vImage.PixelBuffer<>._affineWarpD<A>(_:destination:backgroundColor:nullBackgroundColor:affineWarpFunc:useFloat16Accumulator:)(v21, a3, a4, a1, a5, a6, a7, a8, a9, a10);
}

uint64_t closure #1 in closure #1 in vImage.PixelBuffer<>._affineWarpD<A>(_:destination:backgroundColor:nullBackgroundColor:affineWarpFunc:useFloat16Accumulator:)(uint64_t a1, void (*a2)(uint64_t, uint64_t, void, uint64_t, char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v22 = a7;
  v23 = a1;
  v24 = a4;
  v25 = a5;
  v26 = a3;
  v27 = a2;
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v22 - v15;
  v17 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a6, v12);
  v20 = *(v17 + 48);
  if (v20(v16, 1, a10) == 1)
  {
    (*(v17 + 16))(v19, v22, a10);
    result = v20(v16, 1, a10);
    if (result != 1)
    {
      result = (*(v13 + 8))(v16, v12);
    }
  }

  else
  {
    result = (*(v17 + 32))(v19, v16, a10);
  }

  if ((*a8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(*a8))
  {
    v27(v24, v23, 0, v25, v19);
    return (*(v17 + 8))(v19, a10);
  }

  __break(1u);
  return result;
}

float vImage_AffineTransform.init(a:b:c:d:tx:ty:)@<S0>(float *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  *a1 = v7;
  a1[1] = v8;
  a1[2] = v9;
  a1[3] = v10;
  result = a7;
  a1[4] = v11;
  a1[5] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type vImage.ShearDirection and conformance vImage.ShearDirection()
{
  result = lazy protocol witness table cache variable for type vImage.ShearDirection and conformance vImage.ShearDirection;
  if (!lazy protocol witness table cache variable for type vImage.ShearDirection and conformance vImage.ShearDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type vImage.ShearDirection and conformance vImage.ShearDirection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type vImage.ReflectionAxis and conformance vImage.ReflectionAxis()
{
  result = lazy protocol witness table cache variable for type vImage.ReflectionAxis and conformance vImage.ReflectionAxis;
  if (!lazy protocol witness table cache variable for type vImage.ReflectionAxis and conformance vImage.ReflectionAxis)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type vImage.ReflectionAxis and conformance vImage.ReflectionAxis);
  }

  return result;
}

double BNNS.FusedBinaryArithmeticParameters.layerParameters(inputA:inputB:output:)@<D0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, uint64_t *a4@<X8>)
{
  *&v21[116] = a2[7];
  *&v21[132] = a2[8];
  *&v21[148] = a2[9];
  *&v21[164] = a2[10];
  *&v21[52] = a2[3];
  *&v21[68] = a2[4];
  *&v21[84] = a2[5];
  *&v21[100] = a2[6];
  *&v21[4] = *a2;
  *&v21[20] = a2[1];
  *&v21[36] = a2[2];
  *&v20[116] = a3[7];
  *&v20[132] = a3[8];
  *&v20[148] = a3[9];
  *&v20[164] = a3[10];
  *&v20[52] = a3[3];
  *&v20[68] = a3[4];
  *&v20[84] = a3[5];
  *&v20[100] = a3[6];
  *&v20[4] = *a3;
  *&v20[20] = a3[1];
  v7 = *(v4 + 8);
  v8 = *(v4 + 9);
  v9 = *(v4 + 10);
  *&v20[36] = a3[2];
  v10 = swift_slowAlloc();
  v11 = a1[9];
  *(v10 + 128) = a1[8];
  *(v10 + 144) = v11;
  *(v10 + 160) = a1[10];
  v12 = a1[5];
  *(v10 + 64) = a1[4];
  *(v10 + 80) = v12;
  v13 = a1[7];
  *(v10 + 96) = a1[6];
  *(v10 + 112) = v13;
  v14 = a1[1];
  *v10 = *a1;
  *(v10 + 16) = v14;
  v15 = a1[3];
  *(v10 + 32) = a1[2];
  *(v10 + 48) = v15;
  *(v10 + 324) = *&v21[144];
  *(v10 + 340) = *&v21[160];
  *(v10 + 244) = *&v21[64];
  *(v10 + 260) = *&v21[80];
  *(v10 + 276) = *&v21[96];
  *v4 = v10;
  *(v10 + 176) = v7;
  *(v10 + 356) = *&v21[176];
  *(v10 + 292) = *&v21[112];
  *(v10 + 308) = *&v21[128];
  *(v10 + 180) = *v21;
  *(v10 + 196) = *&v21[16];
  *(v10 + 212) = *&v21[32];
  *(v10 + 228) = *&v21[48];
  *(v10 + 360) = v8;
  *(v10 + 492) = *&v20[128];
  *(v10 + 508) = *&v20[144];
  *(v10 + 524) = *&v20[160];
  *(v10 + 540) = *&v20[176];
  *(v10 + 428) = *&v20[64];
  *(v10 + 444) = *&v20[80];
  *(v10 + 460) = *&v20[96];
  *(v10 + 476) = *&v20[112];
  *(v10 + 364) = *v20;
  *(v10 + 380) = *&v20[16];
  *(v10 + 396) = *&v20[32];
  *(v10 + 412) = *&v20[48];
  *(v10 + 544) = v9;
  v16 = dword_1B7E79894[*(v4 + 11)];
  type metadata accessor for BNNSLayerParametersArithmetic(0);
  a4[3] = v17;
  a4[4] = &protocol witness table for BNNSLayerParametersArithmetic;
  v18 = swift_allocObject();
  *a4 = v18;
  *(v18 + 16) = v16;
  *(v18 + 24) = v10;
  *(v18 + 32) = 0;
  *(v18 + 36) = vneg_f32(0x3F0000003FLL);
  *(v18 + 44) = 1;
  result = 0.0;
  *(v18 + 48) = 0u;
  *(v18 + 64) = 0u;
  return result;
}

char *BNNS.FusedBinaryArithmeticParameters.init(inputADescriptorType:inputBDescriptorType:outputDescriptorType:function:)@<X0>(char *result@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *result;
  v6 = *a2;
  v7 = *a3;
  v8 = *a4;
  *a5 = 0;
  *(a5 + 8) = v5;
  *(a5 + 9) = v6;
  *(a5 + 10) = v7;
  *(a5 + 11) = v8;
  return result;
}

uint64_t BNNS.FusedParametersLayer.__allocating_init(inputA:inputB:output:fusedLayerParameters:filterParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint32_t a5, size_t a6, int (__cdecl *a7)(void **, size_t, size_t), void (__cdecl *a8)(void *))
{
  v50 = *MEMORY[0x1E69E9840];
  if (*(a4 + 16) != 2)
  {
    __break(1u);
    goto LABEL_23;
  }

  outlined init with copy of BNNSGraph.Builder.SliceIndex(a4 + 32, __src);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate22FusableLayerParameters_pMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate40FusableBinaryInputLayerParametersWrapper_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {

    memset(__dst, 0, 40);
    outlined destroy of FusableTernaryInputLayerParametersWrapper?(__dst, &_s10Accelerate40FusableBinaryInputLayerParametersWrapper_pSgMd);
    return 0;
  }

  _s10Accelerate41FusableTernaryInputLayerParametersWrapper_pWOb_0(__dst, v47);
  if (*(a4 + 16) < 2uLL)
  {
LABEL_23:
    __break(1u);
  }

  outlined init with copy of BNNSGraph.Builder.SliceIndex(a4 + 72, __src);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate29FusableLayerParametersWrapper_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(__dst, 0, 40);
    outlined destroy of FusableTernaryInputLayerParametersWrapper?(__dst, &_s10Accelerate29FusableLayerParametersWrapper_pSgMd);
LABEL_19:
    __swift_destroy_boxed_opaque_existential_1(v47);
    return 0;
  }

  _s10Accelerate41FusableTernaryInputLayerParametersWrapper_pWOb_0(__dst, v44);
  v17 = v48;
  v16 = v49;
  __swift_mutable_project_boxed_opaque_existential_1(v47, v48);
  (*(v16 + 8))(v43, a1, a2, a3, v17, v16);
  v18 = v45;
  v19 = v46;
  __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
  (*(v19 + 8))(v42, a3, a3, v18, v19);
  v20 = v45;
  v21 = v46;
  __swift_project_boxed_opaque_existential_1(v44, v45);
  v22 = (*(v21 + 16))(v20, v21);
  if ((v22 - 2) > 3)
  {
LABEL_18:
    __swift_destroy_boxed_opaque_existential_1(v42);
    __swift_destroy_boxed_opaque_existential_1(v43);
    __swift_destroy_boxed_opaque_existential_1(v44);
    goto LABEL_19;
  }

  v23 = v22;
  outlined init with copy of BNNSGraph.Builder.SliceIndex(v43, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate26BNNSFusableLayerParameters_pMd);
  type metadata accessor for BNNSLayerParametersArithmetic(0);
  swift_dynamicCast();
  *v40 = *&v40[9];
  *&v40[2] = *&v40[11];
  *&v40[4] = *&v40[13];
  *&v40[6] = *&v40[15];
  outlined init with copy of BNNSGraph.Builder.SliceIndex(v42, v39);
  type metadata accessor for BNNSLayerParametersNormalization(0);
  swift_dynamicCast();
  memcpy(__dst, __src, 0x468uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySVGMd);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B7E77850;
  *(v24 + 32) = v40;
  v25 = (v24 + 32);
  *(v24 + 40) = __dst;
  if (a7 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14BNNSFilterTypeaGMd);
    v26 = swift_allocObject();
    *(v26 + 32) = 8;
    v27 = (v26 + 32);
    *(v26 + 36) = v23;
    v28 = v25;
    p_filter_params = 0;
  }

  else
  {
    filter_params.flags = a5;
    filter_params.n_threads = a6;
    filter_params.alloc_memory = a7;
    filter_params.free_memory = a8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14BNNSFilterTypeaGMd);
    v30 = swift_allocObject();
    *(v30 + 32) = 8;
    v27 = (v30 + 32);
    *(v30 + 36) = v23;
    p_filter_params = &filter_params;
    v28 = v25;
  }

  FusedLayer = BNNSFilterCreateFusedLayer(2uLL, v27, v28, p_filter_params);
  swift_setDeallocating();
  swift_deallocClassInstance();

  type metadata accessor for BNNS.FusedParametersLayer();
  v32 = swift_allocObject();
  *(v32 + 24) = MEMORY[0x1E69E7CC0];
  if (!FusedLayer)
  {
    type metadata accessor for BNNS.Layer();
    swift_deallocPartialClassInstance();
    goto LABEL_18;
  }

  *(v32 + 16) = FusedLayer;
  v33 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate42FusableLayerParametersWrapperDeallocatable_pSgGMd);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1B7E77850;
  outlined init with copy of BNNSGraph.Builder.SliceIndex(v47, __src);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate42FusableLayerParametersWrapperDeallocatable_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v34 + 64) = 0;
    *(v34 + 32) = 0u;
    *(v34 + 48) = 0u;
  }

  outlined init with copy of BNNSGraph.Builder.SliceIndex(v44, __dst);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v34 + 104) = 0;
    *(v34 + 88) = 0u;
    *(v34 + 72) = 0u;
  }

  __swift_destroy_boxed_opaque_existential_1(v42);
  __swift_destroy_boxed_opaque_existential_1(v43);
  *(v33 + 24) = v34;

  __swift_destroy_boxed_opaque_existential_1(v44);
  __swift_destroy_boxed_opaque_existential_1(v47);
  return v33;
}

uint64_t BNNS.FusedParametersLayer.apply(batchSize:inputA:inputB:output:for:)(size_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = *(a2 + 136);
  if (v6 && (v7 = *(a3 + 136)) != 0 && (v8 = *(a4 + 136)) != 0)
  {
    v21 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySVGMd);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1B7E77850;
    *(v9 + 32) = v6;
    v10 = (v9 + 32);
    *(v9 + 40) = v7;
    v11 = *(v5 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    v12 = swift_allocObject();
    BNNSNDArrayDescriptor.shape.getter(v20);
    *(v12 + 32) = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(v19);
    *(v12 + 40) = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(v20);
    v13 = BNNS.Shape.batchStride.getter();
    v14 = BNNSFusedFilterApplyMultiInputBatch(v11, v21, 2uLL, v10, (v12 + 32), v8, v13, (a5 & 1) == 0);
    swift_setDeallocating();
    swift_deallocClassInstance();

    if (!v14)
    {
      return result;
    }

    v16 = 0;
  }

  else
  {
    v16 = 2;
  }

  lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
  swift_allocError();
  *v17 = v16;
  return swift_willThrow();
}

uint64_t BNNS.FusedParametersLayer.applyBackward(batchSize:inputA:inputB:output:outputGradient:generatingInputAGradient:generatingInputBGradient:generatingParameterGradients:)(size_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, __int128 *a6, _OWORD *a7, uint64_t a8)
{
  v11 = a2;
  v86 = *MEMORY[0x1E69E9840];
  v12 = *(a8 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    *&v74[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v13 = *&v74[0];
    v15 = (a8 + 32);
    do
    {
      v16 = v15[9];
      v83 = v15[8];
      v84 = v16;
      v85 = v15[10];
      v17 = v15[5];
      v79 = v15[4];
      v80 = v17;
      v18 = v15[7];
      v81 = v15[6];
      v82 = v18;
      v19 = v15[1];
      v75 = *v15;
      v76 = v19;
      v20 = v15[3];
      v77 = v15[2];
      v78 = v20;
      v21 = swift_slowAlloc();
      v22 = v84;
      v21[8] = v83;
      v21[9] = v22;
      v21[10] = v85;
      v23 = v80;
      v21[4] = v79;
      v21[5] = v23;
      v24 = v82;
      v21[6] = v81;
      v21[7] = v24;
      v25 = v76;
      *v21 = v75;
      v21[1] = v25;
      v26 = v78;
      v21[2] = v77;
      v21[3] = v26;
      v28 = *(v13 + 2);
      v27 = *(v13 + 3);
      *&v74[0] = v13;
      if (v28 >= v27 >> 1)
      {
        v29 = v21;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
        v21 = v29;
        v13 = *&v74[0];
      }

      *(v13 + 2) = v28 + 1;
      *&v13[8 * v28 + 32] = v21;
      v15 += 11;
      --v12;
    }

    while (v12);
    v11 = a2;
  }

  v30 = a6[9];
  v83 = a6[8];
  v84 = v30;
  v85 = a6[10];
  v31 = a6[5];
  v79 = a6[4];
  v80 = v31;
  v32 = a6[7];
  v81 = a6[6];
  v82 = v32;
  v33 = a6[1];
  v75 = *a6;
  v76 = v33;
  v34 = a6[3];
  v77 = a6[2];
  v78 = v34;
  v35 = a7[9];
  v74[8] = a7[8];
  v74[9] = v35;
  v74[10] = a7[10];
  v36 = a7[5];
  v74[4] = a7[4];
  v74[5] = v36;
  v37 = a7[7];
  v74[6] = a7[6];
  v74[7] = v37;
  v38 = a7[1];
  v74[0] = *a7;
  v74[1] = v38;
  v39 = a7[3];
  v74[2] = a7[2];
  v74[3] = v39;
  v40 = a5[9];
  *&v73.stride[7] = a5[8];
  *&v73.data_type = v40;
  *&v73.table_data_type = a5[10];
  v41 = a5[5];
  *&v73.size[7] = a5[4];
  *&v73.stride[1] = v41;
  v42 = a5[7];
  *&v73.stride[3] = a5[6];
  *&v73.stride[5] = v42;
  v43 = a5[1];
  *&v73.flags = *a5;
  *&v73.size[1] = v43;
  v44 = a5[3];
  *&v73.size[3] = a5[2];
  *&v73.size[5] = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySVSgGMd);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1B7E77850;
  *(v45 + 32) = *(v11 + 136);
  v65 = (v45 + 32);
  *(v45 + 40) = *(a3 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySpySo21BNNSNDArrayDescriptoraGGMd);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1B7E77850;
  *(v46 + 32) = &v75;
  v63 = (v46 + 32);
  *(v46 + 40) = v74;
  v67 = *(v66 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
  v47 = swift_allocObject();
  BNNSNDArrayDescriptor.shape.getter(v72);
  *(v47 + 32) = BNNS.Shape.batchStride.getter();
  v62 = (v47 + 32);
  BNNSNDArrayDescriptor.shape.getter(v71);
  *(v47 + 40) = BNNS.Shape.batchStride.getter();
  v48 = swift_allocObject();
  BNNSNDArrayDescriptor.shape.getter(v72);
  *(v48 + 32) = BNNS.Shape.batchStride.getter();
  BNNSNDArrayDescriptor.shape.getter(v71);
  *(v48 + 40) = BNNS.Shape.batchStride.getter();
  v49 = *(a4 + 136);
  BNNSNDArrayDescriptor.shape.getter(v72);
  out_stride = BNNS.Shape.batchStride.getter();
  BNNSNDArrayDescriptor.shape.getter(v71);
  out_delta_stride = BNNS.Shape.batchStride.getter();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2), 0, v13);
  }

  v52 = (v13 + 32);

  v53 = BNNSFusedFilterApplyBackwardMultiInputBatch(v67, a1, 2uLL, v65, v62, v63, (v48 + 32), v49, out_stride, &v73, out_delta_stride, v13 + 4);

  swift_setDeallocating();
  swift_deallocClassInstance();
  swift_setDeallocating();
  swift_deallocClassInstance();
  swift_setDeallocating();
  swift_deallocClassInstance();
  swift_setDeallocating();
  swift_deallocClassInstance();
  if (v53)
  {
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v54 = 0;
    swift_willThrow();
    for (i = *(v13 + 2); i; --i)
    {
      v57 = *v52++;
      v56 = v57;
      if (v57)
      {
        MEMORY[0x1B8CB2C50](v56, -1, -1);
      }
    }
  }

  else
  {
    for (j = *(v13 + 2); j; --j)
    {
      v61 = *v52++;
      v60 = v61;
      if (v61)
      {
        MEMORY[0x1B8CB2C50](v60, -1, -1);
      }
    }
  }
}

uint64_t dispatch thunk of FusableBinaryInputLayerParametersWrapper.layerParameters(inputA:inputB:output:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[17];
  v6 = *(a1 + 36);
  v7 = a1[19];
  v8 = *(a1 + 40);
  v9 = a2[17];
  v10 = *(a2 + 36);
  v11 = a2[19];
  v12 = *(a2 + 40);
  v13 = a3[17];
  v14 = *(a3 + 36);
  v15 = a3[19];
  v16 = *(a3 + 40);
  v17 = *(a5 + 8);
  v51 = *a1;
  v52 = *(a1 + 1);
  v53 = *(a1 + 3);
  v54 = *(a1 + 5);
  v55 = *(a1 + 7);
  v56 = *(a1 + 9);
  v57 = *(a1 + 11);
  v58 = *(a1 + 13);
  v59 = *(a1 + 15);
  v60 = v5;
  v61 = v6;
  v62 = v7;
  v63 = v8;
  v64 = *(a1 + 164);
  v37 = *a2;
  v38 = *(a2 + 1);
  v39 = *(a2 + 3);
  v40 = *(a2 + 5);
  v41 = *(a2 + 7);
  v42 = *(a2 + 9);
  v43 = *(a2 + 11);
  v44 = *(a2 + 13);
  v45 = *(a2 + 15);
  v46 = v9;
  v47 = v10;
  v48 = v11;
  v49 = v12;
  v50 = *(a2 + 164);
  v23 = *a3;
  v18 = *(a3 + 3);
  v24 = *(a3 + 1);
  v25 = v18;
  v19 = *(a3 + 7);
  v26 = *(a3 + 5);
  v27 = v19;
  v20 = *(a3 + 11);
  v28 = *(a3 + 9);
  v29 = v20;
  v21 = *(a3 + 15);
  v30 = *(a3 + 13);
  v31 = v21;
  v32 = v13;
  v33 = v14;
  v34 = v15;
  v35 = v16;
  v36 = *(a3 + 164);
  return v17(&v51, &v37, &v23);
}

uint64_t *Quadrature.init(integrator:absoluteTolerance:relativeTolerance:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v4 = *(result + 16);
  if (*(result + 16))
  {
    v5 = v4 == 1;
    v6 = 0;
    if (v4 == 1)
    {
      v7 = *result;
    }

    else
    {
      v7 = 0;
    }

    if (v5)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v7 = result[1];
    v8 = 1;
    v6 = *result;
  }

  *a2 = v8;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

double (*Quadrature.absoluteTolerance.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return Quadrature.absoluteTolerance.modify;
}

double Quadrature.absoluteTolerance.modify(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 8) = *a1;
  return result;
}

double (*Quadrature.relativeTolerance.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 16);
  return Quadrature.relativeTolerance.modify;
}

double Quadrature.relativeTolerance.modify(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 16) = *a1;
  return result;
}

uint64_t Quadrature.integrate(over:integrand:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v27 = *MEMORY[0x1E69E9840];
  v11 = *v5;
  v12 = *(v5 + 8);
  v13 = *(v5 + 16);
  v14 = *(v5 + 24);
  v15 = *(v5 + 32);
  status = QUADRATURE_SUCCESS;
  abs_error = 0.0;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<Double>, @unowned UnsafeMutableBufferPointer<Double>) -> ();
  *(v17 + 24) = v16;
  v22[0] = partial apply for thunk for @escaping @callee_guaranteed (@unowned UnsafeBufferPointer<Double>, @unowned UnsafeMutableBufferPointer<Double>) -> ();
  v22[1] = v17;
  __f.fun = @objc closure #1 in closure #1 in closure #1 in Quadrature.integrate(over:integrand:);
  __f.fun_arg = v22;
  options.integrator = v11;
  options.abs_tolerance = v12;
  options.rel_tolerance = v13;
  options.qag_points_per_interval = v14;
  options.max_intervals = v15;

  v18 = quadrature_integrate(&__f, a4, a5, &options, &status, &abs_error, 0, 0);

  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  if (status > QUADRATURE_ALLOC_ERROR)
  {
    switch(status)
    {
      case QUADRATURE_INVALID_ARG_ERROR:
        v21 = xmmword_1B7E79900;
        goto LABEL_14;
      case QUADRATURE_ERROR:
        *a3 = 0;
        *(a3 + 8) = 0;
        goto LABEL_15;
      case QUADRATURE_SUCCESS:
        v20 = abs_error;
        *a3 = v18;
        *(a3 + 8) = v20;
        *(a3 + 16) = 0;
        return result;
    }
  }

  else
  {
    if (status == QUADRATURE_INTEGRATE_BAD_BEHAVIOUR_ERROR)
    {
      v21 = xmmword_1B7E798D0;
      goto LABEL_14;
    }

    if (status == QUADRATURE_INTEGRATE_MAX_EVAL_ERROR)
    {
      v21 = xmmword_1B7E798E0;
      goto LABEL_14;
    }
  }

  v21 = xmmword_1B7E798F0;
LABEL_14:
  *a3 = v21;
LABEL_15:
  *(a3 + 16) = 1;
  return result;
}

{
  v27 = *MEMORY[0x1E69E9840];
  v11 = *v5;
  v12 = *(v5 + 8);
  v13 = *(v5 + 16);
  v14 = *(v5 + 24);
  v15 = *(v5 + 32);
  status = QUADRATURE_SUCCESS;
  abs_error = 0.0;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for thunk for @callee_guaranteed (@unowned Double) -> (@unowned Double);
  *(v17 + 24) = v16;
  v22[0] = partial apply for thunk for @escaping @callee_guaranteed (@unowned Double) -> (@unowned Double);
  v22[1] = v17;
  __f.fun = @objc closure #1 in closure #1 in closure #1 in Quadrature.integrate(over:integrand:);
  __f.fun_arg = v22;
  options.integrator = v11;
  options.abs_tolerance = v12;
  options.rel_tolerance = v13;
  options.qag_points_per_interval = v14;
  options.max_intervals = v15;

  v18 = quadrature_integrate(&__f, a4, a5, &options, &status, &abs_error, 0, 0);

  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  if (status > QUADRATURE_ALLOC_ERROR)
  {
    switch(status)
    {
      case QUADRATURE_INVALID_ARG_ERROR:
        v21 = xmmword_1B7E79900;
        goto LABEL_14;
      case QUADRATURE_ERROR:
        *a3 = 0;
        *(a3 + 8) = 0;
        goto LABEL_15;
      case QUADRATURE_SUCCESS:
        v20 = abs_error;
        *a3 = v18;
        *(a3 + 8) = v20;
        *(a3 + 16) = 0;
        return result;
    }
  }

  else
  {
    if (status == QUADRATURE_INTEGRATE_BAD_BEHAVIOUR_ERROR)
    {
      v21 = xmmword_1B7E798D0;
      goto LABEL_14;
    }

    if (status == QUADRATURE_INTEGRATE_MAX_EVAL_ERROR)
    {
      v21 = xmmword_1B7E798E0;
      goto LABEL_14;
    }
  }

  v21 = xmmword_1B7E798F0;
LABEL_14:
  *a3 = v21;
LABEL_15:
  *(a3 + 16) = 1;
  return result;
}

void (**@objc closure #1 in closure #1 in closure #1 in Quadrature.integrate(over:integrand:)(void (**result)(void *, void *), uint64_t a2, uint64_t a3, uint64_t a4))(void *, void *)
{
  if (result)
  {
    v4 = *result;
    v6[0] = a3;
    v6[1] = a2;
    v5[0] = a4;
    v5[1] = a2;

    v4(v6, v5);
  }

  return result;
}

Accelerate::Quadrature::Error __swiftcall Quadrature.Error.init(quadratureStatus:)(quadrature_status quadratureStatus)
{
  if (quadratureStatus <= -100)
  {
    if (quadratureStatus == QUADRATURE_INTEGRATE_BAD_BEHAVIOUR_ERROR)
    {
      *v1 = 4;
      return quadratureStatus;
    }

    if (quadratureStatus == QUADRATURE_INTEGRATE_MAX_EVAL_ERROR)
    {
      *v1 = 3;
      return quadratureStatus;
    }

LABEL_9:
    *v1 = 2;
    return quadratureStatus;
  }

  if (quadratureStatus == QUADRATURE_INTERNAL_ERROR)
  {
    goto LABEL_9;
  }

  if (quadratureStatus == QUADRATURE_ERROR)
  {
    *v1 = 0;
    return quadratureStatus;
  }

  if (quadratureStatus != QUADRATURE_INVALID_ARG_ERROR)
  {
    goto LABEL_9;
  }

  *v1 = 1;
  return quadratureStatus;
}
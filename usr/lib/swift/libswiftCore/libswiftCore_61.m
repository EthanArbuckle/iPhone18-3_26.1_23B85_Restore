uint64_t SIMD16<>.init<A>(_:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v36 = a4;
  v37 = a6;
  v39 = a1;
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v19 = v18;
  v35 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v18, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v21 = *(AssociatedConformanceWitness + 48);
  v33 = v19;
  v34 = a8;
  v21(v19, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v31 = a7;
  v32 = v22;
  v38 = a3;
  v23 = swift_getAssociatedConformanceWitness(a7, a3, v22, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v24 = 0;
  v25 = *(v23 + 56);
  do
  {
    v26 = swift_checkMetadataState(0, v32);
    v25(v24, v26, v23);
    (*(*(v36 + 16) + 72))(v15, v38, *(v37 + 8));
    (*(AssociatedConformanceWitness + 64))(v17, v24++, v33, AssociatedConformanceWitness);
  }

  while (v24 != 16);
  v28 = type metadata accessor for SIMD16(0, v38, v31, v27);
  return (*(*(v28 - 8) + 8))(v39, v28);
}

{
  v39 = a6;
  v41 = a1;
  v14 = MEMORY[0x1EEE9AC00](a1);
  v36 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v19 = v18;
  v38 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v18, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v21 = *(AssociatedConformanceWitness + 48);
  v37 = a8;
  v35 = v19;
  v21(v19, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v31 = a7;
  v40 = a3;
  v34 = v22;
  v23 = swift_getAssociatedConformanceWitness(a7, a3, v22, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v24 = 0;
  v32 = *(v23 + 56);
  v33 = v23;
  do
  {
    v25 = swift_checkMetadataState(0, v34);
    v26 = v36;
    v32(v24, v25, v33);
    (*(a4 + 80))(v26, v40, v39);
    (*(AssociatedConformanceWitness + 64))(v17, v24++, v35, AssociatedConformanceWitness);
  }

  while (v24 != 16);
  v28 = type metadata accessor for SIMD16(0, v40, v31, v27);
  return (*(*(v28 - 8) + 8))(v41, v28);
}

uint64_t key path getter for SIMD32.subscript(_:) : <A>SIMD32<A>A(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2 >= 0x20)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = *(a2 + a3 - 16);
  v4 = *(a2 + a3 - 8);
  swift_getAssociatedTypeWitness(255, v4, v5, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v7 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v5, v6, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v9 = *(AssociatedConformanceWitness + 56);
  v10 = swift_checkMetadataState(0, v7);
  return v9(v3, v10, AssociatedConformanceWitness);
}

uint64_t key path setter for SIMD32.subscript(_:) : <A>SIMD32<A>A(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v18 - v6;
  v9 = *v8;
  memcpy(&v18 - v6, v10, v11);
  if (v9 >= 0x20)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  swift_getAssociatedTypeWitness(255, v5, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v13 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v4, v12, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v15 = *(AssociatedConformanceWitness + 64);
  v16 = swift_checkMetadataState(0, v13);
  return v15(v7, v9, v16, AssociatedConformanceWitness);
}

uint64_t (*SIMD32.subscript.modify(void *a1, unint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x40, 0x1395uLL);
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = *(a3 + 16);
  v10 = *(*(v9 - 1) + 64);
  v7[2] = v10;
  if (swift_coroFrameAlloc)
  {
    v7[3] = swift_coroFrameAlloc(v10, 0x1395uLL);
    v8[4] = swift_coroFrameAlloc(v10, 0x1395uLL);
    v11 = swift_coroFrameAlloc(v10, 0x1395uLL);
  }

  else
  {
    v7[3] = malloc(v10);
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v8[5] = v11;
  if (a2 >= 0x20)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v12, v9, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, v9, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v8[6] = AssociatedConformanceWitness;
  v16 = *(AssociatedConformanceWitness + 56);
  v17 = swift_checkMetadataState(0, v14);
  v8[7] = v17;
  v16(a2, v17, AssociatedConformanceWitness);
  return SIMD4.subscript.modify;
}

uint64_t SIMD32.init(_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:)(const void *a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7, const void *a8, const void *a9, const void *a10, const void *a11, const void *a12, const void *a13, const void *a14, const void *a15, const void *a16, const void *a17, const void *a18, const void *a19, const void *a20, const void *a21, const void *a22, const void *a23, const void *a24, const void *a25, const void *a26, const void *a27, const void *a28, const void *a29, const void *a30, const void *a31, const void *a32, const char *a33, int **a34)
{
  v54 = a8;
  v52 = a7;
  v50 = a6;
  v49 = a5;
  v48 = a4;
  v76 = a31;
  v77 = a32;
  v75 = a30;
  v72 = a28;
  v73 = a29;
  v70 = a26;
  v71 = a27;
  v68 = a24;
  v69 = a25;
  v66 = a22;
  v67 = a23;
  v64 = a20;
  v65 = a21;
  v62 = a18;
  v63 = a19;
  v60 = a16;
  v61 = a17;
  v59 = a15;
  v37 = *(*(a33 - 1) + 64);
  v57 = a13;
  v58 = a14;
  v56 = a12;
  v55 = a11;
  v53 = a10;
  v51 = a9;
  v38 = MEMORY[0x1EEE9AC00](a1);
  v74 = &v47 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v47 - v39;
  swift_getAssociatedTypeWitness(0, a34, a33, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v42 = v41;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a34, a33, v41, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  (*(AssociatedConformanceWitness + 48))(v42, AssociatedConformanceWitness);
  memcpy(v40, a1, v37);
  v44 = *(AssociatedConformanceWitness + 64);
  v44(v40, 0, v42, AssociatedConformanceWitness);
  memcpy(v40, a2, v37);
  v44(v40, 1, v42, AssociatedConformanceWitness);
  memcpy(v40, a3, v37);
  v44(v40, 2, v42, AssociatedConformanceWitness);
  memcpy(v40, v48, v37);
  v44(v40, 3, v42, AssociatedConformanceWitness);
  memcpy(v40, v49, v37);
  v44(v40, 4, v42, AssociatedConformanceWitness);
  memcpy(v40, v50, v37);
  v44(v40, 5, v42, AssociatedConformanceWitness);
  memcpy(v40, v52, v37);
  v44(v40, 6, v42, AssociatedConformanceWitness);
  memcpy(v40, v54, v37);
  v44(v40, 7, v42, AssociatedConformanceWitness);
  memcpy(v40, v51, v37);
  v44(v40, 8, v42, AssociatedConformanceWitness);
  memcpy(v40, v53, v37);
  v44(v40, 9, v42, AssociatedConformanceWitness);
  memcpy(v40, v55, v37);
  v44(v40, 10, v42, AssociatedConformanceWitness);
  memcpy(v40, v56, v37);
  v44(v40, 11, v42, AssociatedConformanceWitness);
  memcpy(v40, v57, v37);
  v44(v40, 12, v42, AssociatedConformanceWitness);
  memcpy(v40, v58, v37);
  v44(v40, 13, v42, AssociatedConformanceWitness);
  memcpy(v40, v59, v37);
  v44(v40, 14, v42, AssociatedConformanceWitness);
  memcpy(v40, v60, v37);
  v44(v40, 15, v42, AssociatedConformanceWitness);
  memcpy(v40, v61, v37);
  v44(v40, 16, v42, AssociatedConformanceWitness);
  memcpy(v40, v62, v37);
  v44(v40, 17, v42, AssociatedConformanceWitness);
  memcpy(v40, v63, v37);
  v44(v40, 18, v42, AssociatedConformanceWitness);
  memcpy(v40, v64, v37);
  v44(v40, 19, v42, AssociatedConformanceWitness);
  memcpy(v40, v65, v37);
  v44(v40, 20, v42, AssociatedConformanceWitness);
  memcpy(v40, v66, v37);
  v44(v40, 21, v42, AssociatedConformanceWitness);
  memcpy(v40, v67, v37);
  v44(v40, 22, v42, AssociatedConformanceWitness);
  memcpy(v40, v68, v37);
  v44(v40, 23, v42, AssociatedConformanceWitness);
  memcpy(v40, v69, v37);
  v44(v40, 24, v42, AssociatedConformanceWitness);
  memcpy(v40, v70, v37);
  v44(v40, 25, v42, AssociatedConformanceWitness);
  memcpy(v40, v71, v37);
  v44(v40, 26, v42, AssociatedConformanceWitness);
  memcpy(v40, v72, v37);
  v44(v40, 27, v42, AssociatedConformanceWitness);
  memcpy(v40, v73, v37);
  v44(v40, 28, v42, AssociatedConformanceWitness);
  memcpy(v40, v75, v37);
  v44(v40, 29, v42, AssociatedConformanceWitness);
  memcpy(v40, v76, v37);
  v44(v40, 30, v42, AssociatedConformanceWitness);
  v45 = v74;
  memcpy(v74, v77, v37);
  return (v44)(v45, 31, v42, AssociatedConformanceWitness);
}

uint64_t SIMD32.init(lowHalf:highHalf:)(uint64_t a1, uint64_t a2, const char *a3, int **a4)
{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v8, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  (*(AssociatedConformanceWitness + 48))(v9, AssociatedConformanceWitness);
  v12 = type metadata accessor for SIMD32(0, a3, a4, v11);
  specialized SIMD32.lowHalf.setter(a1, v12);
  v14 = type metadata accessor for SIMD16(0, a3, a4, v13);
  v16 = *(*(v14 - 8) + 8);
  (v16)((v14 - 8), a1, v14);
  specialized SIMD32.highHalf.setter(a2, v12);

  return v16(a2, v14);
}

uint64_t SIMD32.lowHalf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 24);
  swift_getAssociatedTypeWitness(0, v7, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v3, v8, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v11 = *(AssociatedConformanceWitness + 48);
  v20 = v9;
  v21 = a2;
  v11(v9, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, v7, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v13 = v12;
  v14 = swift_getAssociatedConformanceWitness(v7, v3, v12, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v15 = 0;
  v16 = *(v14 + 56);
  do
  {
    v17 = swift_checkMetadataState(0, v13);
    v16(v15, v17, v14);
    result = (*(AssociatedConformanceWitness + 64))(v6, v15++, v20, AssociatedConformanceWitness);
  }

  while (v15 != 16);
  return result;
}

void (*SIMD32.lowHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0xC82AuLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD16(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0xC82AuLL);
    v11 = swift_coroFrameAlloc(v10, 0xC82AuLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD32.lowHalf.getter(a2, v11);
  return SIMD32.lowHalf.modify;
}

uint64_t SIMD32.highHalf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 24);
  swift_getAssociatedTypeWitness(0, v7, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v3, v8, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v11 = *(AssociatedConformanceWitness + 48);
  v20 = v9;
  v21 = a2;
  v11(v9, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, v7, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v13 = v12;
  v14 = swift_getAssociatedConformanceWitness(v7, v3, v12, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v15 = 0;
  v16 = *(v14 + 56);
  do
  {
    v17 = swift_checkMetadataState(0, v13);
    v16(v15 + 16, v17, v14);
    result = (*(AssociatedConformanceWitness + 64))(v6, v15++, v20, AssociatedConformanceWitness);
  }

  while (v15 != 16);
  return result;
}

void (*SIMD32.highHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x9739uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD16(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0x9739uLL);
    v11 = swift_coroFrameAlloc(v10, 0x9739uLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD32.highHalf.getter(a2, v11);
  return SIMD32.highHalf.modify;
}

uint64_t SIMD32.evenHalf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 24);
  swift_getAssociatedTypeWitness(0, v7, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v3, v8, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v11 = *(AssociatedConformanceWitness + 48);
  v20 = v9;
  v21 = a2;
  v11(v9, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, v7, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v19 = v12;
  v13 = swift_getAssociatedConformanceWitness(v7, v3, v12, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v14 = 0;
  v15 = 0;
  v16 = *(v13 + 56);
  do
  {
    v17 = swift_checkMetadataState(0, v19);
    v16(v14, v17, v13);
    result = (*(AssociatedConformanceWitness + 64))(v6, v15, v20, AssociatedConformanceWitness);
    v14 += 2;
    ++v15;
  }

  while (v14 != 32);
  return result;
}

void (*SIMD32.evenHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x2693uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD16(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0x2693uLL);
    v11 = swift_coroFrameAlloc(v10, 0x2693uLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD32.evenHalf.getter(a2, v11);
  return SIMD32.evenHalf.modify;
}

uint64_t SIMD32.oddHalf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 24);
  swift_getAssociatedTypeWitness(0, v7, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v3, v8, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v11 = *(AssociatedConformanceWitness + 48);
  v20 = v9;
  v21 = a2;
  v11(v9, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, v7, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v19 = v12;
  v13 = swift_getAssociatedConformanceWitness(v7, v3, v12, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v14 = 0;
  v15 = *(v13 + 56);
  for (i = 1; i != 33; i += 2)
  {
    v17 = swift_checkMetadataState(0, v19);
    v15(i, v17, v13);
    result = (*(AssociatedConformanceWitness + 64))(v6, v14++, v20, AssociatedConformanceWitness);
  }

  return result;
}

void (*SIMD32.oddHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x22E3uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD16(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0x22E3uLL);
    v11 = swift_coroFrameAlloc(v10, 0x22E3uLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD32.oddHalf.getter(a2, v11);
  return SIMD32.oddHalf.modify;
}

uint64_t protocol witness for SIMDStorage.subscript.getter in conformance SIMD32<A>(unint64_t a1, uint64_t a2)
{
  if (a1 >= 0x20)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v2, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v6 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v2, v3, v5, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v10 = *(AssociatedConformanceWitness + 56);
  v8 = swift_checkMetadataState(0, v6);

  return v10(a1, v8, AssociatedConformanceWitness);
}

uint64_t protocol witness for SIMDStorage.subscript.setter in conformance SIMD32<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 0x20)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v3, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v8 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v3, v4, v7, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v12 = *(AssociatedConformanceWitness + 64);
  v10 = swift_checkMetadataState(0, v8);

  return v12(a1, a2, v10, AssociatedConformanceWitness);
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance SIMD32<A>(void *a1, unint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x40, 0x5E14uLL);
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = *(a3 + 16);
  v10 = *(*(v9 - 1) + 64);
  v7[2] = v10;
  if (swift_coroFrameAlloc)
  {
    v7[3] = swift_coroFrameAlloc(v10, 0x5E14uLL);
    v8[4] = swift_coroFrameAlloc(v10, 0x5E14uLL);
    v11 = swift_coroFrameAlloc(v10, 0x5E14uLL);
  }

  else
  {
    v7[3] = malloc(v10);
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v8[5] = v11;
  if (a2 >= 0x20)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v12, v9, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, v9, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v8[6] = AssociatedConformanceWitness;
  v16 = *(AssociatedConformanceWitness + 56);
  v17 = swift_checkMetadataState(0, v14);
  v8[7] = v17;
  v16(a2, v17, AssociatedConformanceWitness);
  return SIMD4.subscript.modify;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SIMD32<A>(uint64_t a1, const char *a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD32<A>, a2, a3);

  return SIMD.hash(into:)(a1, a2, WitnessTable);
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance SIMD32<A>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD32<A>, a1, a3);

  return SIMD.description.getter(a1, WitnessTable);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance SIMD32<A>@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD32<A>, a2, a3);

  return SIMD.init(arrayLiteral:)(a1, a2, WitnessTable, a4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SIMD32<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v3 = *(a3 + 16);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v23 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v22[1] = v22 - v6;
  v7 = 0;
  v8 = 1;
  v9 = v22 - v6;
  do
  {
    if (v8)
    {
      v10 = *(v26 + 24);
      swift_getAssociatedTypeWitness(255, v10, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
      v12 = v11;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v3, v11, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
      v14 = *(AssociatedConformanceWitness + 56);
      v15 = swift_checkMetadataState(0, v12);
      v14(v7, v15, AssociatedConformanceWitness);
      v16 = v23;
      v14(v7, v15, AssociatedConformanceWitness);
      swift_getAssociatedTypeWitness(255, v10, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
      v18 = v17;
      v19 = swift_getAssociatedConformanceWitness(v10, v3, v17, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
      v20 = swift_getAssociatedConformanceWitness(v19, v18, v3, &protocol requirements base descriptor for SIMDStorage, associated conformance descriptor for SIMDStorage.SIMDStorage.Scalar: Hashable);
      v8 = (*(*(v20 + 8) + 8))(v9, v16, v3);
    }

    else
    {
      v8 = 0;
    }

    ++v7;
  }

  while (v7 != 32);
  return v8 & 1;
}

uint64_t SIMD32<>.init<A>(truncatingIfNeeded:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v36 = a4;
  v37 = a6;
  v39 = a1;
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v19 = v18;
  v35 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v18, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v21 = *(AssociatedConformanceWitness + 48);
  v33 = v19;
  v34 = a8;
  v21(v19, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v31 = a7;
  v32 = v22;
  v38 = a3;
  v23 = swift_getAssociatedConformanceWitness(a7, a3, v22, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v24 = 0;
  v25 = *(v23 + 56);
  do
  {
    v26 = swift_checkMetadataState(0, v32);
    v25(v24, v26, v23);
    (*(*(v36 + 8) + 96))(v15, v38, *(v37 + 8));
    (*(AssociatedConformanceWitness + 64))(v17, v24++, v33, AssociatedConformanceWitness);
  }

  while (v24 != 32);
  v28 = type metadata accessor for SIMD32(0, v38, v31, v27);
  return (*(*(v28 - 8) + 8))(v39, v28);
}

uint64_t SIMD32<>.init<A>(clamping:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v36 = a4;
  v37 = a6;
  v39 = a1;
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v19 = v18;
  v35 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v18, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v21 = *(AssociatedConformanceWitness + 48);
  v33 = v19;
  v34 = a8;
  v21(v19, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v31 = a7;
  v32 = v22;
  v38 = a3;
  v23 = swift_getAssociatedConformanceWitness(a7, a3, v22, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v24 = 0;
  v25 = *(v23 + 56);
  do
  {
    v26 = swift_checkMetadataState(0, v32);
    v25(v24, v26, v23);
    (*(*(v36 + 8) + 104))(v15, v38, *(v37 + 8));
    (*(AssociatedConformanceWitness + 64))(v17, v24++, v33, AssociatedConformanceWitness);
  }

  while (v24 != 32);
  v28 = type metadata accessor for SIMD32(0, v38, v31, v27);
  return (*(*(v28 - 8) + 8))(v39, v28);
}

uint64_t SIMD32<>.init<A>(_:rounding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, const char *a4@<X3>, uint64_t a5@<X4>, swift *a6@<X5>, uint64_t a7@<X6>, int **a8@<X7>, uint64_t a9@<X8>)
{
  v46 = a5;
  v47 = a7;
  v44 = a2;
  v49 = a1;
  v14 = MEMORY[0x1EEE9AC00](a1);
  v42 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, v22, v21, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v24 = v23;
  v45 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a6, a3, v23, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v26 = *(AssociatedConformanceWitness + 48);
  v43 = a9;
  v41 = v24;
  v26(v24, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a8, a4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v37 = a8;
  v48 = a4;
  v40 = v27;
  v28 = swift_getAssociatedConformanceWitness(a8, a4, v27, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v29 = 0;
  v38 = *(v28 + 56);
  v39 = v28;
  do
  {
    v30 = swift_checkMetadataState(0, v40);
    v38(v29, v30, v39);
    v31 = v47;
    v32 = v48;
    (*(*(v47 + 16) + 304))(v44, v48);
    (*(*(v46 + 8) + 80))(v18, v32, v31);
    (*(AssociatedConformanceWitness + 64))(v20, v29++, v41, AssociatedConformanceWitness);
  }

  while (v29 != 32);
  v34 = type metadata accessor for SIMD32(0, v48, v37, v33);
  return (*(*(v34 - 8) + 8))(v49, v34);
}

uint64_t SIMD32.debugDescription.getter(uint64_t a1)
{
  v852 = a1;
  v1 = *(a1 + 16);
  v2 = *(*(v1 - 1) + 64);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v820 = (&v812 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = MEMORY[0x1EEE9AC00](v3);
  v828 = (&v812 - v5);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v836 = (&v812 - v7);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v844 = (&v812 - v9);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v851 = &v812 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v819 = (&v812 - v13);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v827 = (&v812 - v15);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v835 = (&v812 - v17);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v843 = (&v812 - v19);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v850 = &v812 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v818 = (&v812 - v23);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v826 = (&v812 - v25);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v834 = (&v812 - v27);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v842 = (&v812 - v29);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v812 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v817 = (&v812 - v34);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v825 = (&v812 - v36);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v833 = (&v812 - v38);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v841 = (&v812 - v40);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v849 = &v812 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v816 = (&v812 - v44);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v824 = (&v812 - v46);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v832 = (&v812 - v48);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v840 = (&v812 - v50);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v848 = &v812 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v815 = (&v812 - v54);
  v55 = MEMORY[0x1EEE9AC00](v53);
  v823 = (&v812 - v56);
  v57 = MEMORY[0x1EEE9AC00](v55);
  v831 = (&v812 - v58);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v839 = (&v812 - v60);
  v61 = MEMORY[0x1EEE9AC00](v59);
  v847 = &v812 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v814 = (&v812 - v64);
  v65 = MEMORY[0x1EEE9AC00](v63);
  v822 = (&v812 - v66);
  v67 = MEMORY[0x1EEE9AC00](v65);
  v830 = (&v812 - v68);
  v69 = MEMORY[0x1EEE9AC00](v67);
  v838 = (&v812 - v70);
  v71 = MEMORY[0x1EEE9AC00](v69);
  v846 = &v812 - v72;
  v73 = MEMORY[0x1EEE9AC00](v71);
  v813 = (&v812 - v74);
  v75 = MEMORY[0x1EEE9AC00](v73);
  v821 = (&v812 - v76);
  v77 = MEMORY[0x1EEE9AC00](v75);
  v829 = (&v812 - v78);
  v79 = MEMORY[0x1EEE9AC00](v77);
  v837 = (&v812 - v80);
  v81 = MEMORY[0x1EEE9AC00](v79);
  v83 = &v812 - v82;
  MEMORY[0x1EEE9AC00](v81);
  v85 = &v812 - v84;
  v86 = _StringGuts.init(_initialCapacity:)(138);
  v88 = v87;
  v859._countAndFlagsBits = v86;
  v859._object = v87;
  v89 = HIBYTE(v87) & 0xF;
  if ((v87 & 0x2000000000000000) == 0)
  {
    v89 = v86 & 0xFFFFFFFFFFFFLL;
  }

  if (v89 || (v86 & ~v87 & 0x2000000000000000) != 0)
  {
    if ((v87 & 0x2000000000000000) != 0 && (v90 = specialized _SmallString.init(_:appending:)(v86, v87, 0x3C3233444D4953uLL, 0xE700000000000000), (v92 & 1) == 0))
    {
      v101 = v90;
      v102 = v91;
      v88;
      0xE700000000000000;
      v859._countAndFlagsBits = v101;
      v859._object = v102;
    }

    else
    {
      0xE700000000000000;
      _StringGuts.append(_:)(0x3C3233444D4953, 0xE700000000000000, 0, 7, v93, v94, v95, v96, v97, v98, v99, v100);
      swift_bridgeObjectRelease_n(0xE700000000000000, 2);
    }
  }

  else
  {
    v859._countAndFlagsBits = 0x3C3233444D4953;
    v859._object = 0xE700000000000000;
    v87;
  }

  TypeName = swift_getTypeName(v1, 0);
  if (v104 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v105 = TypeName;
  v106 = v104;
  if (_allASCII(_:)(TypeName, v104))
  {
    v108 = 1;
LABEL_13:
    if (v106)
    {
      if (v106 > 15)
      {
        v109 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v105, v106, v106, v108 & 1);
        v110 = *(v109 + 24);
        goto LABEL_80;
      }

      v127 = v106 - 8;
      v128 = 8;
      if (v106 < 8)
      {
        v128 = v106;
      }

      if (v106 >= 4)
      {
        v130 = v128 & 0xC;
        v107.i32[0] = *v105;
        v131 = vmovl_u16(*&vmovl_u8(v107));
        v132.i64[0] = v131.u32[0];
        v132.i64[1] = v131.u32[1];
        v133.i64[0] = 255;
        v133.i64[1] = 255;
        v134 = vandq_s8(v132, v133);
        v132.i64[0] = v131.u32[2];
        v132.i64[1] = v131.u32[3];
        v135 = vshlq_u64(vandq_s8(v132, v133), xmmword_18071DBA0);
        v136.i32[1] = 0;
        v137 = vshlq_u64(v134, xmmword_18071DBB0);
        if (v130 != 4)
        {
          v136.i32[0] = *(v105 + 4);
          v138 = vmovl_u16(*&vmovl_u8(v136));
          v139.i64[0] = v138.u32[2];
          v139.i64[1] = v138.u32[3];
          v140 = vandq_s8(v139, v133);
          v139.i64[0] = v138.u32[0];
          v139.i64[1] = v138.u32[1];
          v135 = vorrq_s8(vshlq_u64(v140, xmmword_18071DBD0), v135);
          v137 = vorrq_s8(vshlq_u64(vandq_s8(v139, v133), xmmword_18071DBC0), v137);
        }

        v141 = vorrq_s8(v137, v135);
        v110 = vorr_s8(*v141.i8, *&vextq_s8(v141, v141, 8uLL));
        if (v128 == v130)
        {
          goto LABEL_72;
        }

        v129 = 8 * v130;
      }

      else
      {
        v110 = 0;
        v129 = 0;
        v130 = 0;
      }

      v142 = v128 - v130;
      v143 = (v105 + v130);
      do
      {
        v144 = *v143++;
        v110 |= v144 << (v129 & 0x38);
        v129 += 8;
        --v142;
      }

      while (v142);
LABEL_72:
      if (v106 < 9)
      {
        v145 = 0;
      }

      else
      {
        v145 = 0;
        v146 = 0;
        v147 = (v105 + 8);
        do
        {
          v148 = *v147++;
          v145 |= v148 << v146;
          v146 += 8;
          --v127;
        }

        while (v127);
      }

      v149 = 0xA000000000000000;
      if (((v145 | v110) & 0x8080808080808080) == 0)
      {
        v149 = 0xE000000000000000;
      }

      v109 = v149 | (v106 << 56) | v145;
      goto LABEL_80;
    }

LABEL_59:
    v110 = 0;
    v109 = 0xE000000000000000;
    goto LABEL_80;
  }

  if (!v106)
  {
    goto LABEL_59;
  }

  v111 = 0;
  v112 = (v105 + v106);
  v108 = 1;
  v113 = v105;
  v114 = v105;
  while (1)
  {
    v116 = *v114++;
    v115 = v116;
    if ((v116 & 0x80000000) == 0)
    {
      v117 = 1;
      goto LABEL_20;
    }

    if ((v115 + 11) <= 0xCCu)
    {
      LOBYTE(v853._countAndFlagsBits) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v115);
      goto LABEL_61;
    }

    if (v115 > 0xDFu)
    {
      break;
    }

    if (v114 == v112 || (*v114 & 0xC0) != 0x80)
    {
LABEL_306:
      LOBYTE(v853._countAndFlagsBits) = 4;
      goto LABEL_61;
    }

    v108 = 0;
    v114 = v113 + 2;
    v117 = 2;
LABEL_20:
    v111 += v117;
    v113 = v114;
    if (v114 == v112)
    {
      goto LABEL_13;
    }
  }

  if (v115 == 224)
  {
    if (v114 == v112)
    {
      goto LABEL_306;
    }

    if (v113[1] - 192 < 0xFFFFFFE0)
    {
      goto LABEL_308;
    }

    goto LABEL_44;
  }

  if (v115 <= 0xECu)
  {
    goto LABEL_42;
  }

  if (v115 == 237)
  {
    if (v114 == v112)
    {
      goto LABEL_306;
    }

    v118 = v113[1];
    if (v118 > 0x9F || (v118 & 0xC0) != 0x80)
    {
      LOBYTE(v853._countAndFlagsBits) = 1;
      goto LABEL_61;
    }

    goto LABEL_44;
  }

  if (v115 <= 0xEFu)
  {
LABEL_42:
    if (v114 == v112 || (v113[1] & 0xC0) != 0x80)
    {
      goto LABEL_306;
    }

LABEL_44:
    if (v113 + 2 == v112 || (v113[2] & 0xC0) != 0x80)
    {
      goto LABEL_306;
    }

    v108 = 0;
    v114 = v113 + 3;
    v117 = 3;
    goto LABEL_20;
  }

  if (v115 == 240)
  {
    if (v114 == v112)
    {
      goto LABEL_306;
    }

    if (v113[1] - 192 < 0xFFFFFFD0)
    {
LABEL_308:
      LOBYTE(v853._countAndFlagsBits) = 3;
      goto LABEL_61;
    }

    goto LABEL_54;
  }

  if (v115 <= 0xF3u)
  {
    if (v114 == v112 || (v113[1] & 0xC0) != 0x80)
    {
      goto LABEL_306;
    }

    goto LABEL_54;
  }

  if (v114 == v112)
  {
    goto LABEL_306;
  }

  v119 = v113[1];
  if (v119 <= 0x8F && (v119 & 0xC0) == 0x80)
  {
LABEL_54:
    if (v113 + 2 == v112 || (v113[2] & 0xC0) != 0x80 || v113 + 3 == v112 || (v113[3] & 0xC0) != 0x80)
    {
      goto LABEL_306;
    }

    v108 = 0;
    v114 = v113 + 4;
    v117 = 4;
    goto LABEL_20;
  }

  LOBYTE(v853._countAndFlagsBits) = 2;
LABEL_61:
  swift_willThrowTypedImpl(&v853, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
  v120 = specialized Collection.subscript.getter(v111, v105, v106);
  v124 = findInvalidRange #1 (_:) in validateUTF8(_:)(v120, v121, v122, v123);
  v110 = repairUTF8(_:firstKnownBrokenRange:)(v105, v106, v124, v125);
  v109 = v126;
LABEL_80:
  v150 = v859;
  v151 = (v859._object >> 56) & 0xF;
  if ((v859._object & 0x2000000000000000) == 0)
  {
    v151 = v859._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v151 && (v859._countAndFlagsBits & ~v859._object & 0x2000000000000000) == 0)
  {
    v859._countAndFlagsBits = v110;
    v859._object = v109;
    v150._object;
    goto LABEL_92;
  }

  if ((v859._object & 0x2000000000000000) != 0)
  {
    if ((v109 & 0x2000000000000000) != 0)
    {
      v153 = specialized _SmallString.init(_:appending:)(v859._countAndFlagsBits, v859._object, v110, v109);
      if (v155)
      {
        goto LABEL_90;
      }

      v225 = v153;
      v226 = v154;
      v109;
      v859._object;
      v859._countAndFlagsBits = v225;
      v859._object = v226;
      goto LABEL_92;
    }

LABEL_88:
    v152 = v110 & 0xFFFFFFFFFFFFLL;
    goto LABEL_91;
  }

  if ((v109 & 0x2000000000000000) == 0)
  {
    goto LABEL_88;
  }

LABEL_90:
  v152 = HIBYTE(v109) & 0xF;
LABEL_91:
  v109;
  _StringGuts.append(_:)(v110, v109, 0, v152, v156, v157, v158, v159, v160, v161, v162, v163);
  swift_bridgeObjectRelease_n(v109, 2);
LABEL_92:
  v164 = v859;
  v165 = (v859._object >> 56) & 0xF;
  if ((v859._object & 0x2000000000000000) == 0)
  {
    v165 = v859._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v845 = v32;
  if (v165 || (v859._countAndFlagsBits & ~v859._object & 0x2000000000000000) != 0)
  {
    if ((v859._object & 0x2000000000000000) != 0 && (v166 = specialized _SmallString.init(_:appending:)(v859._countAndFlagsBits, v859._object, 0x283EuLL, 0xE200000000000000), (v168 & 1) == 0))
    {
      v177 = v166;
      v178 = v167;
      0xE200000000000000;
      v859._object;
      v859._countAndFlagsBits = v177;
      v859._object = v178;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(10302, 0xE200000000000000, 0, 2, v169, v170, v171, v172, v173, v174, v175, v176);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v859._countAndFlagsBits = 10302;
    v859._object = 0xE200000000000000;
    v164._object;
  }

  v179 = *(v852 + 3);
  swift_getAssociatedTypeWitness(255, v179, v1, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v181 = v180;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v179, v1, v180, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v183 = *(AssociatedConformanceWitness + 56);
  v184 = swift_checkMetadataState(0, v181);
  v852 = v183;
  v183(0, v184, AssociatedConformanceWitness);
  v854 = v1;
  v185 = __swift_allocate_boxed_opaque_existential_0Tm(&v853);
  memcpy(v185, v85, v2);
  v186 = v854;
  v187 = __swift_project_boxed_opaque_existential_0Tm(&v853, v854);
  DynamicType = swift_getDynamicType(v187, v186, 1);
  LODWORD(v186) = swift_isOptionalType(DynamicType);
  __swift_destroy_boxed_opaque_existential_1Tm(&v853._countAndFlagsBits);
  if (v186)
  {
    memcpy(v83, v85, v2);
    v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v853, v83, v1, v189, 7uLL);
    v190 = v854;
    v191 = v855;
    __swift_project_boxed_opaque_existential_0Tm(&v853, v854);
    v192 = (*(v191 + 8))(v190, v191);
    object = v193;
    v203 = v859;
    v204 = (v859._object >> 56) & 0xF;
    if ((v859._object & 0x2000000000000000) == 0)
    {
      v204 = v859._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    v205 = v846;
    if (v204 || (v859._countAndFlagsBits & ~v859._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v192, v193, v194, v195, v196, v197, v198, v199, v200, v201);
    }

    else
    {
      v859._countAndFlagsBits = v192;
      v859._object = v193;
      object = v203._object;
    }

    object;
    __swift_destroy_boxed_opaque_existential_1Tm(&v853._countAndFlagsBits);
  }

  else
  {
    v206 = v837;
    memcpy(v837, v85, v2);
    v207 = swift_dynamicCast(&v853, v206, v1, &type metadata for String, 6uLL);
    v205 = v846;
    if ((v207 & 1) == 0)
    {
      v219 = v829;
      memcpy(v829, v85, v2);
      v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
      if (swift_dynamicCast(&v856, v219, v1, v220, 6uLL))
      {
        _ss9CodingKey_pWOb_0(&v856, &v853);
        v221 = v854;
        v222 = v855;
        __swift_project_boxed_opaque_existential_0Tm(&v853, v854);
        (*(v222 + 8))(&v859, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v221, v222);
      }

      else
      {
        v858 = 0;
        v856 = 0u;
        v857 = 0u;
        outlined destroy of _HasContiguousBytes?(&v856, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
        v223 = v821;
        memcpy(v821, v85, v2);
        v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
        if (!swift_dynamicCast(&v856, v223, v1, v224, 6uLL))
        {
          v858 = 0;
          v856 = 0u;
          v857 = 0u;
          outlined destroy of _HasContiguousBytes?(&v856, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
          v227 = v813;
          memcpy(v813, v85, v2);
          v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
          if (!swift_dynamicCast(&v856, v227, v1, v228, 6uLL))
          {
            v858 = 0;
            v856 = 0u;
            v857 = 0u;
            outlined destroy of _HasContiguousBytes?(&v856, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
            *(&v857 + 1) = v1;
            v784 = __swift_allocate_boxed_opaque_existential_0Tm(&v856);
            memcpy(v784, v85, v2);
            Mirror.init(reflecting:)(&v856, &v853);
            v785 = v853._object;
            v786 = v855;
            _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v85, &v853, &v859, 0, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
            v786;
            v785;
            goto LABEL_129;
          }
        }

        _ss9CodingKey_pWOb_0(&v856, &v853);
        v229 = v854;
        v230 = v855;
        __swift_project_boxed_opaque_existential_0Tm(&v853, v854);
        v231 = (*(v230 + 8))(v229, v230);
        v241 = v232;
        v242 = v859;
        v243 = (v859._object >> 56) & 0xF;
        if ((v859._object & 0x2000000000000000) == 0)
        {
          v243 = v859._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (v243 || (v859._countAndFlagsBits & ~v859._object & 0x2000000000000000) != 0)
        {
          _StringGuts.append(_:)(v231, v232, v233, v234, v235, v236, v237, v238, v239, v240);
        }

        else
        {
          v859._countAndFlagsBits = v231;
          v859._object = v232;
          v241 = v242._object;
        }

        v241;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v853._countAndFlagsBits);
      goto LABEL_129;
    }

    v216 = v853._object;
    v217 = v859;
    v218 = (v859._object >> 56) & 0xF;
    if ((v859._object & 0x2000000000000000) == 0)
    {
      v218 = v859._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v218 || (v859._countAndFlagsBits & ~v859._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v853._countAndFlagsBits, v853._object, v208, v209, v210, v211, v212, v213, v214, v215);
      v216;
    }

    else
    {
      v859 = v853;
      v217._object;
    }
  }

LABEL_129:
  v244 = v859;
  v245 = (v859._object >> 56) & 0xF;
  if ((v859._object & 0x2000000000000000) == 0)
  {
    v245 = v859._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v245 || (v859._countAndFlagsBits & ~v859._object & 0x2000000000000000) != 0)
  {
    if ((v859._object & 0x2000000000000000) != 0 && (v246 = specialized _SmallString.init(_:appending:)(v859._countAndFlagsBits, v859._object, 0x202CuLL, 0xE200000000000000), (v248 & 1) == 0))
    {
      v257 = v246;
      v258 = v247;
      0xE200000000000000;
      v859._object;
      v859._countAndFlagsBits = v257;
      v859._object = v258;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v249, v250, v251, v252, v253, v254, v255, v256);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v859._countAndFlagsBits = 8236;
    v859._object = 0xE200000000000000;
    v244._object;
  }

  v852(1, v184, AssociatedConformanceWitness);
  v854 = v1;
  v259 = __swift_allocate_boxed_opaque_existential_0Tm(&v853);
  memcpy(v259, v205, v2);
  v260 = v854;
  v261 = __swift_project_boxed_opaque_existential_0Tm(&v853, v854);
  v262 = swift_getDynamicType(v261, v260, 1);
  LODWORD(v260) = swift_isOptionalType(v262);
  __swift_destroy_boxed_opaque_existential_1Tm(&v853._countAndFlagsBits);
  if (v260)
  {
    memcpy(v83, v205, v2);
    v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v853, v83, v1, v263, 7uLL);
    goto LABEL_140;
  }

  v279 = v838;
  memcpy(v838, v205, v2);
  if (swift_dynamicCast(&v853, v279, v1, &type metadata for String, 6uLL))
  {
    v280 = v853._object;
    String.write(_:)(v853);
    v280;
    goto LABEL_150;
  }

  v294 = v830;
  memcpy(v830, v205, v2);
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v856, v294, v1, v295, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v856, &v853);
    v296 = v854;
    v297 = v855;
    __swift_project_boxed_opaque_existential_0Tm(&v853, v854);
    (*(v297 + 8))(&v859, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v296, v297);
LABEL_147:
    __swift_destroy_boxed_opaque_existential_1Tm(&v853._countAndFlagsBits);
    goto LABEL_150;
  }

  v858 = 0;
  v856 = 0u;
  v857 = 0u;
  outlined destroy of _HasContiguousBytes?(&v856, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v720 = v822;
  memcpy(v822, v205, v2);
  v721 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v856, v720, v1, v721, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v856, &v853);
    v722 = v854;
    v723 = v855;
    __swift_project_boxed_opaque_existential_0Tm(&v853, v854);
    v266 = (*(v723 + 8))(v722, v723);
LABEL_141:
    v276 = v267;
    v277 = v859;
    v278 = (v859._object >> 56) & 0xF;
    if ((v859._object & 0x2000000000000000) == 0)
    {
      v278 = v859._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v278 || (v859._countAndFlagsBits & ~v859._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v266, v267, v268, v269, v270, v271, v272, v273, v274, v275);
    }

    else
    {
      v859._countAndFlagsBits = v266;
      v859._object = v267;
      v276 = v277._object;
    }

    v276;
    goto LABEL_147;
  }

  v858 = 0;
  v856 = 0u;
  v857 = 0u;
  outlined destroy of _HasContiguousBytes?(&v856, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v744 = v814;
  memcpy(v814, v205, v2);
  v745 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v856, v744, v1, v745, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v856, &v853);
LABEL_140:
    v264 = v854;
    v265 = v855;
    __swift_project_boxed_opaque_existential_0Tm(&v853, v854);
    v266 = (*(v265 + 8))(v264, v265);
    goto LABEL_141;
  }

  v858 = 0;
  v856 = 0u;
  v857 = 0u;
  outlined destroy of _HasContiguousBytes?(&v856, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v857 + 1) = v1;
  v787 = __swift_allocate_boxed_opaque_existential_0Tm(&v856);
  memcpy(v787, v205, v2);
  Mirror.init(reflecting:)(&v856, &v853);
  v788 = v853._object;
  v789 = v855;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v205, &v853, &v859, 0, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v789;
  v788;
LABEL_150:
  v281 = v859;
  v282 = (v859._object >> 56) & 0xF;
  if ((v859._object & 0x2000000000000000) == 0)
  {
    v282 = v859._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v282 || (v859._countAndFlagsBits & ~v859._object & 0x2000000000000000) != 0)
  {
    if ((v859._object & 0x2000000000000000) != 0 && (v283 = specialized _SmallString.init(_:appending:)(v859._countAndFlagsBits, v859._object, 0x202CuLL, 0xE200000000000000), (v285 & 1) == 0))
    {
      v298 = v283;
      v299 = v284;
      0xE200000000000000;
      v859._object;
      v859._countAndFlagsBits = v298;
      v859._object = v299;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v286, v287, v288, v289, v290, v291, v292, v293);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v859._countAndFlagsBits = 8236;
    v859._object = 0xE200000000000000;
    v281._object;
  }

  v300 = v847;
  v852(2, v184, AssociatedConformanceWitness);
  v854 = v1;
  v301 = __swift_allocate_boxed_opaque_existential_0Tm(&v853);
  memcpy(v301, v300, v2);
  v302 = v854;
  v303 = __swift_project_boxed_opaque_existential_0Tm(&v853, v854);
  v304 = swift_getDynamicType(v303, v302, 1);
  LODWORD(v302) = swift_isOptionalType(v304);
  __swift_destroy_boxed_opaque_existential_1Tm(&v853._countAndFlagsBits);
  if (v302)
  {
    memcpy(v83, v300, v2);
    v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v853, v83, v1, v305, 7uLL);
    goto LABEL_163;
  }

  v321 = v839;
  memcpy(v839, v300, v2);
  if (swift_dynamicCast(&v853, v321, v1, &type metadata for String, 6uLL))
  {
    v322 = v853._object;
    String.write(_:)(v853);
    v322;
    goto LABEL_173;
  }

  v336 = v831;
  memcpy(v831, v300, v2);
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v856, v336, v1, v337, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v856, &v853);
    v338 = v854;
    v339 = v855;
    __swift_project_boxed_opaque_existential_0Tm(&v853, v854);
    (*(v339 + 8))(&v859, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v338, v339);
LABEL_170:
    __swift_destroy_boxed_opaque_existential_1Tm(&v853._countAndFlagsBits);
    goto LABEL_173;
  }

  v858 = 0;
  v856 = 0u;
  v857 = 0u;
  outlined destroy of _HasContiguousBytes?(&v856, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v724 = v823;
  memcpy(v823, v300, v2);
  v725 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v856, v724, v1, v725, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v856, &v853);
    v726 = v854;
    v727 = v855;
    __swift_project_boxed_opaque_existential_0Tm(&v853, v854);
    v308 = (*(v727 + 8))(v726, v727);
LABEL_164:
    v318 = v309;
    v319 = v859;
    v320 = (v859._object >> 56) & 0xF;
    if ((v859._object & 0x2000000000000000) == 0)
    {
      v320 = v859._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v320 || (v859._countAndFlagsBits & ~v859._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v308, v309, v310, v311, v312, v313, v314, v315, v316, v317);
    }

    else
    {
      v859._countAndFlagsBits = v308;
      v859._object = v309;
      v318 = v319._object;
    }

    v318;
    goto LABEL_170;
  }

  v858 = 0;
  v856 = 0u;
  v857 = 0u;
  outlined destroy of _HasContiguousBytes?(&v856, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v746 = v815;
  memcpy(v815, v300, v2);
  v747 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v856, v746, v1, v747, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v856, &v853);
LABEL_163:
    v306 = v854;
    v307 = v855;
    __swift_project_boxed_opaque_existential_0Tm(&v853, v854);
    v308 = (*(v307 + 8))(v306, v307);
    goto LABEL_164;
  }

  v858 = 0;
  v856 = 0u;
  v857 = 0u;
  outlined destroy of _HasContiguousBytes?(&v856, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v857 + 1) = v1;
  v790 = __swift_allocate_boxed_opaque_existential_0Tm(&v856);
  memcpy(v790, v300, v2);
  Mirror.init(reflecting:)(&v856, &v853);
  v791 = v853._object;
  v792 = v300;
  v793 = v855;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v792, &v853, &v859, 0, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v793;
  v791;
LABEL_173:
  v323 = v859;
  v324 = (v859._object >> 56) & 0xF;
  if ((v859._object & 0x2000000000000000) == 0)
  {
    v324 = v859._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v324 || (v859._countAndFlagsBits & ~v859._object & 0x2000000000000000) != 0)
  {
    if ((v859._object & 0x2000000000000000) != 0 && (v325 = specialized _SmallString.init(_:appending:)(v859._countAndFlagsBits, v859._object, 0x202CuLL, 0xE200000000000000), (v327 & 1) == 0))
    {
      v340 = v325;
      v341 = v326;
      0xE200000000000000;
      v859._object;
      v859._countAndFlagsBits = v340;
      v859._object = v341;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v328, v329, v330, v331, v332, v333, v334, v335);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v859._countAndFlagsBits = 8236;
    v859._object = 0xE200000000000000;
    v323._object;
  }

  v342 = v848;
  v852(3, v184, AssociatedConformanceWitness);
  v854 = v1;
  v343 = __swift_allocate_boxed_opaque_existential_0Tm(&v853);
  memcpy(v343, v342, v2);
  v344 = v854;
  v345 = __swift_project_boxed_opaque_existential_0Tm(&v853, v854);
  v346 = swift_getDynamicType(v345, v344, 1);
  LODWORD(v344) = swift_isOptionalType(v346);
  __swift_destroy_boxed_opaque_existential_1Tm(&v853._countAndFlagsBits);
  if (v344)
  {
    memcpy(v83, v342, v2);
    v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v853, v83, v1, v347, 7uLL);
    v348 = v854;
    v349 = v855;
    __swift_project_boxed_opaque_existential_0Tm(&v853, v854);
    v350 = (*(v349 + 8))(v348, v349);
    v360 = v351;
    v361 = v859;
    v362 = (v859._object >> 56) & 0xF;
    if ((v859._object & 0x2000000000000000) == 0)
    {
      v362 = v859._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v362 || (v859._countAndFlagsBits & ~v859._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v350, v351, v352, v353, v354, v355, v356, v357, v358, v359);
    }

    else
    {
      v859._countAndFlagsBits = v350;
      v859._object = v351;
      v360 = v361._object;
    }

    v363 = v360;
LABEL_191:
    v363;
LABEL_192:
    __swift_destroy_boxed_opaque_existential_1Tm(&v853._countAndFlagsBits);
  }

  else
  {
    v364 = v840;
    memcpy(v840, v342, v2);
    if (swift_dynamicCast(&v853, v364, v1, &type metadata for String, 6uLL))
    {
      v365 = v853._object;
      String.write(_:)(v853);
      v365;
    }

    else
    {
      v379 = v832;
      memcpy(v832, v342, v2);
      v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
      if (swift_dynamicCast(&v856, v379, v1, v380, 6uLL))
      {
        _ss9CodingKey_pWOb_0(&v856, &v853);
        v381 = v854;
        v382 = v855;
        __swift_project_boxed_opaque_existential_0Tm(&v853, v854);
        (*(v382 + 8))(&v859, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v381, v382);
        goto LABEL_192;
      }

      v858 = 0;
      v856 = 0u;
      v857 = 0u;
      outlined destroy of _HasContiguousBytes?(&v856, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
      v728 = v824;
      memcpy(v824, v342, v2);
      v729 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
      if (swift_dynamicCast(&v856, v728, v1, v729, 6uLL) || (v858 = 0, v856 = 0u, v857 = 0u, outlined destroy of _HasContiguousBytes?(&v856, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR), v748 = v816, memcpy(v816, v342, v2), v749 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR), swift_dynamicCast(&v856, v748, v1, v749, 6uLL)))
      {
        _ss9CodingKey_pWOb_0(&v856, &v853);
        v750 = v854;
        v751 = v855;
        __swift_project_boxed_opaque_existential_0Tm(&v853, v854);
        v752 = (*(v751 + 8))(v750, v751);
        v754 = v753;
        static String.+= infix(_:_:)(&v859, v752, v753, v755, v756, v757, v758, v759, v760, v761, v762);
        v363 = v754;
        goto LABEL_191;
      }

      v858 = 0;
      v856 = 0u;
      v857 = 0u;
      outlined destroy of _HasContiguousBytes?(&v856, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
      *(&v857 + 1) = v1;
      v794 = __swift_allocate_boxed_opaque_existential_0Tm(&v856);
      memcpy(v794, v342, v2);
      Mirror.init(reflecting:)(&v856, &v853);
      v795 = v853._object;
      v796 = v342;
      v797 = v855;
      _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v796, &v853, &v859, 0, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
      v797;
      v795;
    }
  }

  v366 = v859;
  v367 = (v859._object >> 56) & 0xF;
  if ((v859._object & 0x2000000000000000) == 0)
  {
    v367 = v859._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v367 || (v859._countAndFlagsBits & ~v859._object & 0x2000000000000000) != 0)
  {
    if ((v859._object & 0x2000000000000000) != 0 && (v368 = specialized _SmallString.init(_:appending:)(v859._countAndFlagsBits, v859._object, 0x202CuLL, 0xE200000000000000), (v370 & 1) == 0))
    {
      v383 = v368;
      v384 = v369;
      0xE200000000000000;
      v859._object;
      v859._countAndFlagsBits = v383;
      v859._object = v384;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v371, v372, v373, v374, v375, v376, v377, v378);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v859._countAndFlagsBits = 8236;
    v859._object = 0xE200000000000000;
    v366._object;
  }

  v385 = v849;
  v852(4, v184, AssociatedConformanceWitness);
  v854 = v1;
  v386 = __swift_allocate_boxed_opaque_existential_0Tm(&v853);
  memcpy(v386, v385, v2);
  v387 = v854;
  v388 = __swift_project_boxed_opaque_existential_0Tm(&v853, v854);
  v389 = swift_getDynamicType(v388, v387, 1);
  LODWORD(v387) = swift_isOptionalType(v389);
  __swift_destroy_boxed_opaque_existential_1Tm(&v853._countAndFlagsBits);
  if (v387)
  {
    memcpy(v83, v385, v2);
    v390 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v853, v83, v1, v390, 7uLL);
    v391 = v854;
    v392 = v855;
    __swift_project_boxed_opaque_existential_0Tm(&v853, v854);
    v393 = (*(v392 + 8))(v391, v392);
    v403 = v394;
    v404 = v859;
    v405 = (v859._object >> 56) & 0xF;
    if ((v859._object & 0x2000000000000000) == 0)
    {
      v405 = v859._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v405 || (v859._countAndFlagsBits & ~v859._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v393, v394, v395, v396, v397, v398, v399, v400, v401, v402);
    }

    else
    {
      v859._countAndFlagsBits = v393;
      v859._object = v394;
      v403 = v404._object;
    }

    v406 = v403;
LABEL_213:
    v406;
LABEL_214:
    __swift_destroy_boxed_opaque_existential_1Tm(&v853._countAndFlagsBits);
  }

  else
  {
    v415 = v841;
    memcpy(v841, v385, v2);
    if (swift_dynamicCast(&v853, v415, v1, &type metadata for String, 6uLL))
    {
      v416 = v853._object;
      String.write(_:)(v853);
      v416;
    }

    else
    {
      v704 = v833;
      memcpy(v833, v385, v2);
      v705 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
      if (swift_dynamicCast(&v856, v704, v1, v705, 6uLL))
      {
        _ss9CodingKey_pWOb_0(&v856, &v853);
        v706 = v854;
        v707 = v855;
        __swift_project_boxed_opaque_existential_0Tm(&v853, v854);
        (*(v707 + 8))(&v859, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v706, v707);
        goto LABEL_214;
      }

      v858 = 0;
      v856 = 0u;
      v857 = 0u;
      outlined destroy of _HasContiguousBytes?(&v856, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
      v730 = v825;
      memcpy(v825, v385, v2);
      v731 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
      if (swift_dynamicCast(&v856, v730, v1, v731, 6uLL) || (v858 = 0, v856 = 0u, v857 = 0u, outlined destroy of _HasContiguousBytes?(&v856, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR), v763 = v817, memcpy(v817, v385, v2), v764 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR), swift_dynamicCast(&v856, v763, v1, v764, 6uLL)))
      {
        _ss9CodingKey_pWOb_0(&v856, &v853);
        v765 = v854;
        v766 = v855;
        __swift_project_boxed_opaque_existential_0Tm(&v853, v854);
        v767 = (*(v766 + 8))(v765, v766);
        v769 = v768;
        static String.+= infix(_:_:)(&v859, v767, v768, v770, v771, v772, v773, v774, v775, v776, v777);
        v406 = v769;
        goto LABEL_213;
      }

      v858 = 0;
      v856 = 0u;
      v857 = 0u;
      outlined destroy of _HasContiguousBytes?(&v856, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
      *(&v857 + 1) = v1;
      v798 = __swift_allocate_boxed_opaque_existential_0Tm(&v856);
      memcpy(v798, v385, v2);
      Mirror.init(reflecting:)(&v856, &v853);
      v799 = v853._object;
      v800 = v385;
      v801 = v855;
      _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v800, &v853, &v859, 0, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
      v801;
      v799;
    }
  }

  v417 = v859._object;
  v418 = (v859._object >> 56) & 0xF;
  if ((v859._object & 0x2000000000000000) == 0)
  {
    v418 = v859._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v419 = v845;
  if (v418 || (v859._countAndFlagsBits & ~v859._object & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(0x202CuLL, 0xE200000000000000, v407, v408, v409, v410, v411, v412, v413, v414);
    v417 = 0xE200000000000000;
  }

  else
  {
    v859._countAndFlagsBits = 8236;
    v859._object = 0xE200000000000000;
  }

  v417;
  v852(5, v184, AssociatedConformanceWitness);
  v854 = v1;
  v420 = __swift_allocate_boxed_opaque_existential_0Tm(&v853);
  memcpy(v420, v419, v2);
  v421 = v854;
  v422 = __swift_project_boxed_opaque_existential_0Tm(&v853, v854);
  v423 = swift_getDynamicType(v422, v421, 1);
  LODWORD(v421) = swift_isOptionalType(v423);
  __swift_destroy_boxed_opaque_existential_1Tm(&v853._countAndFlagsBits);
  if (v421)
  {
    memcpy(v83, v419, v2);
    v424 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v853, v83, v1, v424, 7uLL);
    goto LABEL_224;
  }

  v446 = v842;
  memcpy(v842, v419, v2);
  if (swift_dynamicCast(&v853, v446, v1, &type metadata for String, 6uLL))
  {
    v447 = v853._object;
    String.write(_:)(v853);
    v447;
    goto LABEL_229;
  }

  v708 = v834;
  memcpy(v834, v419, v2);
  v709 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v856, v708, v1, v709, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v856, &v853);
    v710 = v854;
    v711 = v855;
    __swift_project_boxed_opaque_existential_0Tm(&v853, v854);
    (*(v711 + 8))(&v859, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v710, v711);
    goto LABEL_226;
  }

  v858 = 0;
  v856 = 0u;
  v857 = 0u;
  outlined destroy of _HasContiguousBytes?(&v856, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v732 = v826;
  memcpy(v826, v419, v2);
  v733 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v856, v732, v1, v733, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v856, &v853);
    v734 = v854;
    v735 = v855;
    __swift_project_boxed_opaque_existential_0Tm(&v853, v854);
    v427 = (*(v735 + 8))(v734, v735);
LABEL_225:
    v437 = v428;
    static String.+= infix(_:_:)(&v859, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436);
    v437;
LABEL_226:
    __swift_destroy_boxed_opaque_existential_1Tm(&v853._countAndFlagsBits);
    goto LABEL_229;
  }

  v858 = 0;
  v856 = 0u;
  v857 = 0u;
  outlined destroy of _HasContiguousBytes?(&v856, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v778 = v818;
  memcpy(v818, v419, v2);
  v779 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v856, v778, v1, v779, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v856, &v853);
LABEL_224:
    v425 = v854;
    v426 = v855;
    __swift_project_boxed_opaque_existential_0Tm(&v853, v854);
    v427 = (*(v426 + 8))(v425, v426);
    goto LABEL_225;
  }

  v858 = 0;
  v856 = 0u;
  v857 = 0u;
  outlined destroy of _HasContiguousBytes?(&v856, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v857 + 1) = v1;
  v802 = __swift_allocate_boxed_opaque_existential_0Tm(&v856);
  memcpy(v802, v419, v2);
  Mirror.init(reflecting:)(&v856, &v853);
  v803 = v853._object;
  v804 = v419;
  v805 = v855;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v804, &v853, &v859, 0, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v805;
  v803;
LABEL_229:
  v448 = v850;
  v449 = v859._object;
  v450 = (v859._object >> 56) & 0xF;
  if ((v859._object & 0x2000000000000000) == 0)
  {
    v450 = v859._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v450 || (v859._countAndFlagsBits & ~v859._object & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(0x202CuLL, 0xE200000000000000, v438, v439, v440, v441, v442, v443, v444, v445);
    v449 = 0xE200000000000000;
  }

  else
  {
    v859._countAndFlagsBits = 8236;
    v859._object = 0xE200000000000000;
  }

  v449;
  v852(6, v184, AssociatedConformanceWitness);
  v854 = v1;
  v451 = __swift_allocate_boxed_opaque_existential_0Tm(&v853);
  memcpy(v451, v448, v2);
  v452 = v854;
  v453 = __swift_project_boxed_opaque_existential_0Tm(&v853, v854);
  v454 = swift_getDynamicType(v453, v452, 1);
  LODWORD(v452) = swift_isOptionalType(v454);
  __swift_destroy_boxed_opaque_existential_1Tm(&v853._countAndFlagsBits);
  if (v452)
  {
    memcpy(v83, v448, v2);
    v455 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v853, v83, v1, v455, 7uLL);
    goto LABEL_236;
  }

  v477 = v843;
  memcpy(v843, v448, v2);
  if (swift_dynamicCast(&v853, v477, v1, &type metadata for String, 6uLL))
  {
    v478 = v853._object;
    String.write(_:)(v853);
    v478;
    goto LABEL_241;
  }

  v712 = v835;
  memcpy(v835, v448, v2);
  v713 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v856, v712, v1, v713, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v856, &v853);
    v714 = v854;
    v715 = v855;
    __swift_project_boxed_opaque_existential_0Tm(&v853, v854);
    (*(v715 + 8))(&v859, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v714, v715);
    goto LABEL_238;
  }

  v858 = 0;
  v856 = 0u;
  v857 = 0u;
  outlined destroy of _HasContiguousBytes?(&v856, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v736 = v827;
  memcpy(v827, v448, v2);
  v737 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v856, v736, v1, v737, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v856, &v853);
    v738 = v854;
    v739 = v855;
    __swift_project_boxed_opaque_existential_0Tm(&v853, v854);
    v458 = (*(v739 + 8))(v738, v739);
LABEL_237:
    v468 = v459;
    static String.+= infix(_:_:)(&v859, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467);
    v468;
LABEL_238:
    __swift_destroy_boxed_opaque_existential_1Tm(&v853._countAndFlagsBits);
    goto LABEL_241;
  }

  v858 = 0;
  v856 = 0u;
  v857 = 0u;
  outlined destroy of _HasContiguousBytes?(&v856, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v780 = v819;
  memcpy(v819, v448, v2);
  v781 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v856, v780, v1, v781, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v856, &v853);
LABEL_236:
    v456 = v854;
    v457 = v855;
    __swift_project_boxed_opaque_existential_0Tm(&v853, v854);
    v458 = (*(v457 + 8))(v456, v457);
    goto LABEL_237;
  }

  v858 = 0;
  v856 = 0u;
  v857 = 0u;
  outlined destroy of _HasContiguousBytes?(&v856, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v857 + 1) = v1;
  v806 = __swift_allocate_boxed_opaque_existential_0Tm(&v856);
  memcpy(v806, v448, v2);
  Mirror.init(reflecting:)(&v856, &v853);
  v807 = v853._object;
  v808 = v855;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v448, &v853, &v859, 0, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v808;
  v807;
LABEL_241:
  v479 = v851;
  v480 = v859._object;
  v481 = (v859._object >> 56) & 0xF;
  if ((v859._object & 0x2000000000000000) == 0)
  {
    v481 = v859._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v481 || (v859._countAndFlagsBits & ~v859._object & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(0x202CuLL, 0xE200000000000000, v469, v470, v471, v472, v473, v474, v475, v476);
    v480 = 0xE200000000000000;
  }

  else
  {
    v859._countAndFlagsBits = 8236;
    v859._object = 0xE200000000000000;
  }

  v480;
  v852(7, v184, AssociatedConformanceWitness);
  v854 = v1;
  v482 = __swift_allocate_boxed_opaque_existential_0Tm(&v853);
  memcpy(v482, v479, v2);
  v483 = v854;
  v484 = __swift_project_boxed_opaque_existential_0Tm(&v853, v854);
  v485 = swift_getDynamicType(v484, v483, 1);
  LODWORD(v483) = swift_isOptionalType(v485);
  __swift_destroy_boxed_opaque_existential_1Tm(&v853._countAndFlagsBits);
  if (v483)
  {
    memcpy(v83, v479, v2);
    v486 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v853, v83, v1, v486, 7uLL);
    goto LABEL_248;
  }

  v508 = v844;
  memcpy(v844, v479, v2);
  if (swift_dynamicCast(&v853, v508, v1, &type metadata for String, 6uLL))
  {
    v509 = v853._object;
    String.write(_:)(v853);
    v509;
  }

  else
  {
    v716 = v836;
    memcpy(v836, v479, v2);
    v717 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
    if (swift_dynamicCast(&v856, v716, v1, v717, 6uLL))
    {
      _ss9CodingKey_pWOb_0(&v856, &v853);
      v718 = v854;
      v719 = v855;
      __swift_project_boxed_opaque_existential_0Tm(&v853, v854);
      (*(v719 + 8))(&v859, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v718, v719);
    }

    else
    {
      v858 = 0;
      v856 = 0u;
      v857 = 0u;
      outlined destroy of _HasContiguousBytes?(&v856, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
      v740 = v828;
      memcpy(v828, v479, v2);
      v741 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
      if (swift_dynamicCast(&v856, v740, v1, v741, 6uLL))
      {
        _ss9CodingKey_pWOb_0(&v856, &v853);
        v742 = v854;
        v743 = v855;
        __swift_project_boxed_opaque_existential_0Tm(&v853, v854);
        v489 = (*(v743 + 8))(v742, v743);
      }

      else
      {
        v858 = 0;
        v856 = 0u;
        v857 = 0u;
        outlined destroy of _HasContiguousBytes?(&v856, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
        v782 = v820;
        memcpy(v820, v479, v2);
        v783 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
        if (!swift_dynamicCast(&v856, v782, v1, v783, 6uLL))
        {
          v858 = 0;
          v856 = 0u;
          v857 = 0u;
          outlined destroy of _HasContiguousBytes?(&v856, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
          *(&v857 + 1) = v1;
          v809 = __swift_allocate_boxed_opaque_existential_0Tm(&v856);
          memcpy(v809, v479, v2);
          Mirror.init(reflecting:)(&v856, &v853);
          v810 = v853._object;
          v811 = v855;
          _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v479, &v853, &v859, 0, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
          v811;
          v810;
          goto LABEL_253;
        }

        _ss9CodingKey_pWOb_0(&v856, &v853);
LABEL_248:
        v487 = v854;
        v488 = v855;
        __swift_project_boxed_opaque_existential_0Tm(&v853, v854);
        v489 = (*(v488 + 8))(v487, v488);
      }

      v499 = v490;
      static String.+= infix(_:_:)(&v859, v489, v490, v491, v492, v493, v494, v495, v496, v497, v498);
      v499;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v853._countAndFlagsBits);
  }

LABEL_253:
  static String.+= infix(_:_:)(&v859, 0x202CuLL, 0xE200000000000000, v500, v501, v502, v503, v504, v505, v506, v507);
  0xE200000000000000;
  v510 = v852;
  v852(8, v184, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v83, &v859, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v859, 0x202CuLL, 0xE200000000000000, v511, v512, v513, v514, v515, v516, v517, v518);
  0xE200000000000000;
  v510(9, v184, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v83, &v859, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v859, 0x202CuLL, 0xE200000000000000, v519, v520, v521, v522, v523, v524, v525, v526);
  0xE200000000000000;
  v510(10, v184, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v83, &v859, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v859, 0x202CuLL, 0xE200000000000000, v527, v528, v529, v530, v531, v532, v533, v534);
  0xE200000000000000;
  v510(11, v184, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v83, &v859, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v859, 0x202CuLL, 0xE200000000000000, v535, v536, v537, v538, v539, v540, v541, v542);
  0xE200000000000000;
  v510(12, v184, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v83, &v859, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v859, 0x202CuLL, 0xE200000000000000, v543, v544, v545, v546, v547, v548, v549, v550);
  0xE200000000000000;
  v510(13, v184, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v83, &v859, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v859, 0x202CuLL, 0xE200000000000000, v551, v552, v553, v554, v555, v556, v557, v558);
  0xE200000000000000;
  v510(14, v184, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v83, &v859, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v859, 0x202CuLL, 0xE200000000000000, v559, v560, v561, v562, v563, v564, v565, v566);
  0xE200000000000000;
  v510(15, v184, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v83, &v859, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v859, 0x202CuLL, 0xE200000000000000, v567, v568, v569, v570, v571, v572, v573, v574);
  0xE200000000000000;
  v510(16, v184, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v83, &v859, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v859, 0x202CuLL, 0xE200000000000000, v575, v576, v577, v578, v579, v580, v581, v582);
  0xE200000000000000;
  v510(17, v184, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v83, &v859, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v859, 0x202CuLL, 0xE200000000000000, v583, v584, v585, v586, v587, v588, v589, v590);
  0xE200000000000000;
  v510(18, v184, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v83, &v859, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v859, 0x202CuLL, 0xE200000000000000, v591, v592, v593, v594, v595, v596, v597, v598);
  0xE200000000000000;
  v510(19, v184, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v83, &v859, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v859, 0x202CuLL, 0xE200000000000000, v599, v600, v601, v602, v603, v604, v605, v606);
  0xE200000000000000;
  v510(20, v184, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v83, &v859, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v859, 0x202CuLL, 0xE200000000000000, v607, v608, v609, v610, v611, v612, v613, v614);
  0xE200000000000000;
  v510(21, v184, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v83, &v859, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v859, 0x202CuLL, 0xE200000000000000, v615, v616, v617, v618, v619, v620, v621, v622);
  0xE200000000000000;
  v510(22, v184, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v83, &v859, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v859, 0x202CuLL, 0xE200000000000000, v623, v624, v625, v626, v627, v628, v629, v630);
  0xE200000000000000;
  v510(23, v184, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v83, &v859, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v859, 0x202CuLL, 0xE200000000000000, v631, v632, v633, v634, v635, v636, v637, v638);
  0xE200000000000000;
  v510(24, v184, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v83, &v859, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v859, 0x202CuLL, 0xE200000000000000, v639, v640, v641, v642, v643, v644, v645, v646);
  0xE200000000000000;
  v510(25, v184, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v83, &v859, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v859, 0x202CuLL, 0xE200000000000000, v647, v648, v649, v650, v651, v652, v653, v654);
  0xE200000000000000;
  v510(26, v184, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v83, &v859, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v859, 0x202CuLL, 0xE200000000000000, v655, v656, v657, v658, v659, v660, v661, v662);
  0xE200000000000000;
  v510(27, v184, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v83, &v859, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v859, 0x202CuLL, 0xE200000000000000, v663, v664, v665, v666, v667, v668, v669, v670);
  0xE200000000000000;
  v510(28, v184, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v83, &v859, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v859, 0x202CuLL, 0xE200000000000000, v671, v672, v673, v674, v675, v676, v677, v678);
  0xE200000000000000;
  v510(29, v184, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v83, &v859, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v859, 0x202CuLL, 0xE200000000000000, v679, v680, v681, v682, v683, v684, v685, v686);
  0xE200000000000000;
  v510(30, v184, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v83, &v859, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v859, 0x202CuLL, 0xE200000000000000, v687, v688, v689, v690, v691, v692, v693, v694);
  0xE200000000000000;
  v510(31, v184, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v83, &v859, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v859, 0x29uLL, 0xE100000000000000, v695, v696, v697, v698, v699, v700, v701, v702);
  0xE100000000000000;
  return v859._countAndFlagsBits;
}

uint64_t SIMD32<>.init<A>(_:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v36 = a4;
  v37 = a6;
  v39 = a1;
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v19 = v18;
  v35 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v18, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v21 = *(AssociatedConformanceWitness + 48);
  v33 = v19;
  v34 = a8;
  v21(v19, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v31 = a7;
  v32 = v22;
  v38 = a3;
  v23 = swift_getAssociatedConformanceWitness(a7, a3, v22, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v24 = 0;
  v25 = *(v23 + 56);
  do
  {
    v26 = swift_checkMetadataState(0, v32);
    v25(v24, v26, v23);
    (*(*(v36 + 16) + 72))(v15, v38, *(v37 + 8));
    (*(AssociatedConformanceWitness + 64))(v17, v24++, v33, AssociatedConformanceWitness);
  }

  while (v24 != 32);
  v28 = type metadata accessor for SIMD32(0, v38, v31, v27);
  return (*(*(v28 - 8) + 8))(v39, v28);
}

{
  v39 = a6;
  v41 = a1;
  v14 = MEMORY[0x1EEE9AC00](a1);
  v36 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v19 = v18;
  v38 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v18, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v21 = *(AssociatedConformanceWitness + 48);
  v37 = a8;
  v35 = v19;
  v21(v19, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v31 = a7;
  v40 = a3;
  v34 = v22;
  v23 = swift_getAssociatedConformanceWitness(a7, a3, v22, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v24 = 0;
  v32 = *(v23 + 56);
  v33 = v23;
  do
  {
    v25 = swift_checkMetadataState(0, v34);
    v26 = v36;
    v32(v24, v25, v33);
    (*(a4 + 80))(v26, v40, v39);
    (*(AssociatedConformanceWitness + 64))(v17, v24++, v35, AssociatedConformanceWitness);
  }

  while (v24 != 32);
  v28 = type metadata accessor for SIMD32(0, v40, v31, v27);
  return (*(*(v28 - 8) + 8))(v41, v28);
}

uint64_t key path getter for SIMD64.subscript(_:) : <A>SIMD64<A>A(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2 >= 0x40)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = *(a2 + a3 - 16);
  v4 = *(a2 + a3 - 8);
  swift_getAssociatedTypeWitness(255, v4, v5, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v7 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v5, v6, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v9 = *(AssociatedConformanceWitness + 56);
  v10 = swift_checkMetadataState(0, v7);
  return v9(v3, v10, AssociatedConformanceWitness);
}

uint64_t key path setter for SIMD64.subscript(_:) : <A>SIMD64<A>A(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v18 - v6;
  v9 = *v8;
  memcpy(&v18 - v6, v10, v11);
  if (v9 >= 0x40)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  swift_getAssociatedTypeWitness(255, v5, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v13 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v4, v12, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v15 = *(AssociatedConformanceWitness + 64);
  v16 = swift_checkMetadataState(0, v13);
  return v15(v7, v9, v16, AssociatedConformanceWitness);
}

uint64_t (*SIMD64.subscript.modify(void *a1, unint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x40, 0x99F5uLL);
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = *(a3 + 16);
  v10 = *(*(v9 - 1) + 64);
  v7[2] = v10;
  if (swift_coroFrameAlloc)
  {
    v7[3] = swift_coroFrameAlloc(v10, 0x99F5uLL);
    v8[4] = swift_coroFrameAlloc(v10, 0x99F5uLL);
    v11 = swift_coroFrameAlloc(v10, 0x99F5uLL);
  }

  else
  {
    v7[3] = malloc(v10);
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v8[5] = v11;
  if (a2 >= 0x40)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v12, v9, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, v9, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v8[6] = AssociatedConformanceWitness;
  v16 = *(AssociatedConformanceWitness + 56);
  v17 = swift_checkMetadataState(0, v14);
  v8[7] = v17;
  v16(a2, v17, AssociatedConformanceWitness);
  return SIMD4.subscript.modify;
}

uint64_t SIMD64.init(_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:)(const void *a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7, const void *a8, const void *a9, const void *a10, const void *a11, const void *a12, const void *a13, const void *a14, const void *a15, const void *a16, const void *a17, const void *a18, const void *a19, const void *a20, const void *a21, const void *a22, const void *a23, const void *a24, const void *a25, const void *a26, const void *a27, const void *a28, const void *a29, const void *a30, const void *a31, const void *a32, const void *a33, const void *a34, const void *a35, const void *a36, const void *a37, const void *a38, const void *a39, const void *a40, const void *a41, const void *a42, const void *a43, const void *a44, const void *a45, const void *a46, const void *a47, const void *a48, const void *a49, const void *a50, const void *a51, const void *a52, const void *a53, const void *a54, const void *a55, const void *a56, const void *a57, const void *a58, const void *a59, const void *a60, const void *a61, const void *a62, const void *a63)
{
  v89 = a8;
  v87 = a7;
  v85 = a6;
  v83 = a5;
  v81 = a4;
  v79 = a3;
  v139 = a63;
  v140 = a64;
  v137 = a61;
  v138 = a62;
  v135 = a59;
  v136 = a60;
  v134 = a58;
  v131 = a56;
  v132 = a57;
  v129 = a54;
  v130 = a55;
  v127 = a52;
  v128 = a53;
  v125 = a50;
  v126 = a51;
  v123 = a48;
  v124 = a49;
  v122 = a47;
  v68 = *(*(a65 - 1) + 64);
  v120 = a45;
  v121 = a46;
  v119 = a44;
  v118 = a43;
  v117 = a42;
  v116 = a41;
  v115 = a40;
  v114 = a39;
  v113 = a38;
  v112 = a37;
  v111 = a36;
  v110 = a35;
  v109 = a34;
  v108 = a33;
  v107 = a32;
  v106 = a31;
  v105 = a30;
  v104 = a29;
  v103 = a28;
  v102 = a27;
  v101 = a26;
  v100 = a25;
  v99 = a24;
  v98 = a23;
  v97 = a22;
  v96 = a21;
  v95 = a20;
  v94 = a19;
  v93 = a18;
  v92 = a17;
  v91 = a16;
  v90 = a15;
  v88 = a14;
  v86 = a13;
  v84 = a12;
  v82 = a11;
  v80 = a10;
  v69 = MEMORY[0x1EEE9AC00](a1);
  v133 = &v78 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v78 - v70;
  swift_getAssociatedTypeWitness(0, a66, a65, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v73 = v72;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a66, a65, v72, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  (*(AssociatedConformanceWitness + 48))(v73, AssociatedConformanceWitness);
  memcpy(v71, a1, v68);
  v75 = *(AssociatedConformanceWitness + 64);
  v75(v71, 0, v73, AssociatedConformanceWitness);
  memcpy(v71, a2, v68);
  v75(v71, 1, v73, AssociatedConformanceWitness);
  memcpy(v71, v79, v68);
  v75(v71, 2, v73, AssociatedConformanceWitness);
  memcpy(v71, v81, v68);
  v75(v71, 3, v73, AssociatedConformanceWitness);
  memcpy(v71, v83, v68);
  v75(v71, 4, v73, AssociatedConformanceWitness);
  memcpy(v71, v85, v68);
  v75(v71, 5, v73, AssociatedConformanceWitness);
  memcpy(v71, v87, v68);
  v75(v71, 6, v73, AssociatedConformanceWitness);
  memcpy(v71, v89, v68);
  v75(v71, 7, v73, AssociatedConformanceWitness);
  memcpy(v71, a9, v68);
  v75(v71, 8, v73, AssociatedConformanceWitness);
  memcpy(v71, v80, v68);
  v75(v71, 9, v73, AssociatedConformanceWitness);
  memcpy(v71, v82, v68);
  v75(v71, 10, v73, AssociatedConformanceWitness);
  memcpy(v71, v84, v68);
  v75(v71, 11, v73, AssociatedConformanceWitness);
  memcpy(v71, v86, v68);
  v75(v71, 12, v73, AssociatedConformanceWitness);
  memcpy(v71, v88, v68);
  v75(v71, 13, v73, AssociatedConformanceWitness);
  memcpy(v71, v90, v68);
  v75(v71, 14, v73, AssociatedConformanceWitness);
  memcpy(v71, v91, v68);
  v75(v71, 15, v73, AssociatedConformanceWitness);
  memcpy(v71, v92, v68);
  v75(v71, 16, v73, AssociatedConformanceWitness);
  memcpy(v71, v93, v68);
  v75(v71, 17, v73, AssociatedConformanceWitness);
  memcpy(v71, v94, v68);
  v75(v71, 18, v73, AssociatedConformanceWitness);
  memcpy(v71, v95, v68);
  v75(v71, 19, v73, AssociatedConformanceWitness);
  memcpy(v71, v96, v68);
  v75(v71, 20, v73, AssociatedConformanceWitness);
  memcpy(v71, v97, v68);
  v75(v71, 21, v73, AssociatedConformanceWitness);
  memcpy(v71, v98, v68);
  v75(v71, 22, v73, AssociatedConformanceWitness);
  memcpy(v71, v99, v68);
  v75(v71, 23, v73, AssociatedConformanceWitness);
  memcpy(v71, v100, v68);
  v75(v71, 24, v73, AssociatedConformanceWitness);
  memcpy(v71, v101, v68);
  v75(v71, 25, v73, AssociatedConformanceWitness);
  memcpy(v71, v102, v68);
  v75(v71, 26, v73, AssociatedConformanceWitness);
  memcpy(v71, v103, v68);
  v75(v71, 27, v73, AssociatedConformanceWitness);
  memcpy(v71, v104, v68);
  v75(v71, 28, v73, AssociatedConformanceWitness);
  memcpy(v71, v105, v68);
  v75(v71, 29, v73, AssociatedConformanceWitness);
  memcpy(v71, v106, v68);
  v75(v71, 30, v73, AssociatedConformanceWitness);
  memcpy(v71, v107, v68);
  v75(v71, 31, v73, AssociatedConformanceWitness);
  memcpy(v71, v108, v68);
  v75(v71, 32, v73, AssociatedConformanceWitness);
  memcpy(v71, v109, v68);
  v75(v71, 33, v73, AssociatedConformanceWitness);
  memcpy(v71, v110, v68);
  v75(v71, 34, v73, AssociatedConformanceWitness);
  memcpy(v71, v111, v68);
  v75(v71, 35, v73, AssociatedConformanceWitness);
  memcpy(v71, v112, v68);
  v75(v71, 36, v73, AssociatedConformanceWitness);
  memcpy(v71, v113, v68);
  v75(v71, 37, v73, AssociatedConformanceWitness);
  memcpy(v71, v114, v68);
  v75(v71, 38, v73, AssociatedConformanceWitness);
  memcpy(v71, v115, v68);
  v75(v71, 39, v73, AssociatedConformanceWitness);
  memcpy(v71, v116, v68);
  v75(v71, 40, v73, AssociatedConformanceWitness);
  memcpy(v71, v117, v68);
  v75(v71, 41, v73, AssociatedConformanceWitness);
  memcpy(v71, v118, v68);
  v75(v71, 42, v73, AssociatedConformanceWitness);
  memcpy(v71, v119, v68);
  v75(v71, 43, v73, AssociatedConformanceWitness);
  memcpy(v71, v120, v68);
  v75(v71, 44, v73, AssociatedConformanceWitness);
  memcpy(v71, v121, v68);
  v75(v71, 45, v73, AssociatedConformanceWitness);
  memcpy(v71, v122, v68);
  v75(v71, 46, v73, AssociatedConformanceWitness);
  memcpy(v71, v123, v68);
  v75(v71, 47, v73, AssociatedConformanceWitness);
  memcpy(v71, v124, v68);
  v75(v71, 48, v73, AssociatedConformanceWitness);
  memcpy(v71, v125, v68);
  v75(v71, 49, v73, AssociatedConformanceWitness);
  memcpy(v71, v126, v68);
  v75(v71, 50, v73, AssociatedConformanceWitness);
  memcpy(v71, v127, v68);
  v75(v71, 51, v73, AssociatedConformanceWitness);
  memcpy(v71, v128, v68);
  v75(v71, 52, v73, AssociatedConformanceWitness);
  memcpy(v71, v129, v68);
  v75(v71, 53, v73, AssociatedConformanceWitness);
  memcpy(v71, v130, v68);
  v75(v71, 54, v73, AssociatedConformanceWitness);
  memcpy(v71, v131, v68);
  v75(v71, 55, v73, AssociatedConformanceWitness);
  memcpy(v71, v132, v68);
  v75(v71, 56, v73, AssociatedConformanceWitness);
  memcpy(v71, v134, v68);
  v75(v71, 57, v73, AssociatedConformanceWitness);
  memcpy(v71, v135, v68);
  v75(v71, 58, v73, AssociatedConformanceWitness);
  memcpy(v71, v136, v68);
  v75(v71, 59, v73, AssociatedConformanceWitness);
  memcpy(v71, v137, v68);
  v75(v71, 60, v73, AssociatedConformanceWitness);
  memcpy(v71, v138, v68);
  v75(v71, 61, v73, AssociatedConformanceWitness);
  memcpy(v71, v139, v68);
  v75(v71, 62, v73, AssociatedConformanceWitness);
  v76 = v133;
  memcpy(v133, v140, v68);
  return (v75)(v76, 63, v73, AssociatedConformanceWitness);
}

uint64_t SIMD64.init(lowHalf:highHalf:)(uint64_t a1, uint64_t a2, const char *a3, int **a4)
{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v8, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  (*(AssociatedConformanceWitness + 48))(v9, AssociatedConformanceWitness);
  v12 = type metadata accessor for SIMD64(0, a3, a4, v11);
  specialized SIMD64.lowHalf.setter(a1, v12);
  v14 = type metadata accessor for SIMD32(0, a3, a4, v13);
  v16 = *(*(v14 - 8) + 8);
  (v16)((v14 - 8), a1, v14);
  specialized SIMD64.highHalf.setter(a2, v12);

  return v16(a2, v14);
}

uint64_t SIMD64.lowHalf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 24);
  swift_getAssociatedTypeWitness(0, v7, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v3, v8, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v11 = *(AssociatedConformanceWitness + 48);
  v20 = v9;
  v21 = a2;
  v11(v9, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, v7, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v13 = v12;
  v14 = swift_getAssociatedConformanceWitness(v7, v3, v12, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v15 = 0;
  v16 = *(v14 + 56);
  do
  {
    v17 = swift_checkMetadataState(0, v13);
    v16(v15, v17, v14);
    result = (*(AssociatedConformanceWitness + 64))(v6, v15++, v20, AssociatedConformanceWitness);
  }

  while (v15 != 32);
  return result;
}

void (*SIMD64.lowHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x596EuLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD32(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0x596EuLL);
    v11 = swift_coroFrameAlloc(v10, 0x596EuLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD64.lowHalf.getter(a2, v11);
  return SIMD64.lowHalf.modify;
}

uint64_t SIMD64.highHalf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 24);
  swift_getAssociatedTypeWitness(0, v7, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v3, v8, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v11 = *(AssociatedConformanceWitness + 48);
  v20 = v9;
  v21 = a2;
  v11(v9, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, v7, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v13 = v12;
  v14 = swift_getAssociatedConformanceWitness(v7, v3, v12, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v15 = 0;
  v16 = *(v14 + 56);
  do
  {
    v17 = swift_checkMetadataState(0, v13);
    v16(v15 + 32, v17, v14);
    result = (*(AssociatedConformanceWitness + 64))(v6, v15++, v20, AssociatedConformanceWitness);
  }

  while (v15 != 32);
  return result;
}

void (*SIMD64.highHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0xE372uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD32(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0xE372uLL);
    v11 = swift_coroFrameAlloc(v10, 0xE372uLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD64.highHalf.getter(a2, v11);
  return SIMD64.highHalf.modify;
}

uint64_t SIMD64.evenHalf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 24);
  swift_getAssociatedTypeWitness(0, v7, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v3, v8, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v11 = *(AssociatedConformanceWitness + 48);
  v20 = v9;
  v21 = a2;
  v11(v9, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, v7, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v19 = v12;
  v13 = swift_getAssociatedConformanceWitness(v7, v3, v12, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v14 = 0;
  v15 = 0;
  v16 = *(v13 + 56);
  do
  {
    v17 = swift_checkMetadataState(0, v19);
    v16(v14, v17, v13);
    result = (*(AssociatedConformanceWitness + 64))(v6, v15, v20, AssociatedConformanceWitness);
    v14 += 2;
    ++v15;
  }

  while (v14 != 64);
  return result;
}

void (*SIMD64.evenHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x7C79uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD32(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0x7C79uLL);
    v11 = swift_coroFrameAlloc(v10, 0x7C79uLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD64.evenHalf.getter(a2, v11);
  return SIMD64.evenHalf.modify;
}

uint64_t SIMD64.oddHalf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 24);
  swift_getAssociatedTypeWitness(0, v7, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v3, v8, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v11 = *(AssociatedConformanceWitness + 48);
  v20 = v9;
  v21 = a2;
  v11(v9, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, v7, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v19 = v12;
  v13 = swift_getAssociatedConformanceWitness(v7, v3, v12, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v14 = 0;
  v15 = *(v13 + 56);
  for (i = 1; i != 65; i += 2)
  {
    v17 = swift_checkMetadataState(0, v19);
    v15(i, v17, v13);
    result = (*(AssociatedConformanceWitness + 64))(v6, v14++, v20, AssociatedConformanceWitness);
  }

  return result;
}

void (*SIMD64.oddHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x2022uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD32(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0x2022uLL);
    v11 = swift_coroFrameAlloc(v10, 0x2022uLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD64.oddHalf.getter(a2, v11);
  return SIMD64.oddHalf.modify;
}

uint64_t protocol witness for SIMDStorage.subscript.getter in conformance SIMD64<A>(unint64_t a1, uint64_t a2)
{
  if (a1 >= 0x40)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v2, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v6 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v2, v3, v5, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v10 = *(AssociatedConformanceWitness + 56);
  v8 = swift_checkMetadataState(0, v6);

  return v10(a1, v8, AssociatedConformanceWitness);
}

uint64_t protocol witness for SIMDStorage.subscript.setter in conformance SIMD64<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 0x40)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v3, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v8 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v3, v4, v7, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v12 = *(AssociatedConformanceWitness + 64);
  v10 = swift_checkMetadataState(0, v8);

  return v12(a1, a2, v10, AssociatedConformanceWitness);
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance SIMD64<A>(void *a1, unint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x40, 0xE77FuLL);
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = *(a3 + 16);
  v10 = *(*(v9 - 1) + 64);
  v7[2] = v10;
  if (swift_coroFrameAlloc)
  {
    v7[3] = swift_coroFrameAlloc(v10, 0xE77FuLL);
    v8[4] = swift_coroFrameAlloc(v10, 0xE77FuLL);
    v11 = swift_coroFrameAlloc(v10, 0xE77FuLL);
  }

  else
  {
    v7[3] = malloc(v10);
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v8[5] = v11;
  if (a2 >= 0x40)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v12, v9, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, v9, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v8[6] = AssociatedConformanceWitness;
  v16 = *(AssociatedConformanceWitness + 56);
  v17 = swift_checkMetadataState(0, v14);
  v8[7] = v17;
  v16(a2, v17, AssociatedConformanceWitness);
  return SIMD4.subscript.modify;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SIMD64<A>(uint64_t a1, const char *a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD64<A>, a2, a3);

  return SIMD.hash(into:)(a1, a2, WitnessTable);
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance SIMD64<A>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD64<A>, a1, a3);

  return SIMD.description.getter(a1, WitnessTable);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance SIMD64<A>@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD64<A>, a2, a3);

  return SIMD.init(arrayLiteral:)(a1, a2, WitnessTable, a4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SIMD64<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v3 = *(a3 + 16);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v23 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v22[1] = v22 - v6;
  v7 = 0;
  v8 = 1;
  v9 = v22 - v6;
  do
  {
    if (v8)
    {
      v10 = *(v26 + 24);
      swift_getAssociatedTypeWitness(255, v10, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
      v12 = v11;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v3, v11, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
      v14 = *(AssociatedConformanceWitness + 56);
      v15 = swift_checkMetadataState(0, v12);
      v14(v7, v15, AssociatedConformanceWitness);
      v16 = v23;
      v14(v7, v15, AssociatedConformanceWitness);
      swift_getAssociatedTypeWitness(255, v10, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
      v18 = v17;
      v19 = swift_getAssociatedConformanceWitness(v10, v3, v17, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
      v20 = swift_getAssociatedConformanceWitness(v19, v18, v3, &protocol requirements base descriptor for SIMDStorage, associated conformance descriptor for SIMDStorage.SIMDStorage.Scalar: Hashable);
      v8 = (*(*(v20 + 8) + 8))(v9, v16, v3);
    }

    else
    {
      v8 = 0;
    }

    ++v7;
  }

  while (v7 != 64);
  return v8 & 1;
}

uint64_t SIMD64<>.init<A>(truncatingIfNeeded:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v36 = a4;
  v37 = a6;
  v39 = a1;
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v19 = v18;
  v35 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v18, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v21 = *(AssociatedConformanceWitness + 48);
  v33 = v19;
  v34 = a8;
  v21(v19, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v31 = a7;
  v32 = v22;
  v38 = a3;
  v23 = swift_getAssociatedConformanceWitness(a7, a3, v22, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v24 = 0;
  v25 = *(v23 + 56);
  do
  {
    v26 = swift_checkMetadataState(0, v32);
    v25(v24, v26, v23);
    (*(*(v36 + 8) + 96))(v15, v38, *(v37 + 8));
    (*(AssociatedConformanceWitness + 64))(v17, v24++, v33, AssociatedConformanceWitness);
  }

  while (v24 != 64);
  v28 = type metadata accessor for SIMD64(0, v38, v31, v27);
  return (*(*(v28 - 8) + 8))(v39, v28);
}

uint64_t SIMD64<>.init<A>(clamping:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v36 = a4;
  v37 = a6;
  v39 = a1;
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v19 = v18;
  v35 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v18, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v21 = *(AssociatedConformanceWitness + 48);
  v33 = v19;
  v34 = a8;
  v21(v19, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v31 = a7;
  v32 = v22;
  v38 = a3;
  v23 = swift_getAssociatedConformanceWitness(a7, a3, v22, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v24 = 0;
  v25 = *(v23 + 56);
  do
  {
    v26 = swift_checkMetadataState(0, v32);
    v25(v24, v26, v23);
    (*(*(v36 + 8) + 104))(v15, v38, *(v37 + 8));
    (*(AssociatedConformanceWitness + 64))(v17, v24++, v33, AssociatedConformanceWitness);
  }

  while (v24 != 64);
  v28 = type metadata accessor for SIMD64(0, v38, v31, v27);
  return (*(*(v28 - 8) + 8))(v39, v28);
}

uint64_t SIMD64<>.init<A>(_:rounding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, const char *a4@<X3>, uint64_t a5@<X4>, swift *a6@<X5>, uint64_t a7@<X6>, int **a8@<X7>, uint64_t a9@<X8>)
{
  v46 = a5;
  v47 = a7;
  v44 = a2;
  v49 = a1;
  v14 = MEMORY[0x1EEE9AC00](a1);
  v42 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, v22, v21, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v24 = v23;
  v45 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a6, a3, v23, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v26 = *(AssociatedConformanceWitness + 48);
  v43 = a9;
  v41 = v24;
  v26(v24, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a8, a4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v37 = a8;
  v48 = a4;
  v40 = v27;
  v28 = swift_getAssociatedConformanceWitness(a8, a4, v27, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v29 = 0;
  v38 = *(v28 + 56);
  v39 = v28;
  do
  {
    v30 = swift_checkMetadataState(0, v40);
    v38(v29, v30, v39);
    v31 = v47;
    v32 = v48;
    (*(*(v47 + 16) + 304))(v44, v48);
    (*(*(v46 + 8) + 80))(v18, v32, v31);
    (*(AssociatedConformanceWitness + 64))(v20, v29++, v41, AssociatedConformanceWitness);
  }

  while (v29 != 64);
  v34 = type metadata accessor for SIMD64(0, v48, v37, v33);
  return (*(*(v34 - 8) + 8))(v49, v34);
}

uint64_t SIMD64.debugDescription.getter(uint64_t a1)
{
  v868 = 0;
  v864 = a1;
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1EEE9AC00](a1);
  countAndFlagsBits = (&v854 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v854 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v860 = (&v854 - v9);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v863 = (&v854 - v11);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v866 = &v854 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v856 = (&v854 - v15);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v857 = (&v854 - v17);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v859 = (&v854 - v19);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v862 = (&v854 - v21);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v854 - v23;
  v867 = v25;
  MEMORY[0x1EEE9AC00](v22);
  v865 = &v854 - v26;
  v27 = _StringGuts.init(_initialCapacity:)(266);
  object = v27;
  v30 = v28;
  v875._countAndFlagsBits = v27;
  v875._object = v28;
  v31 = HIBYTE(v28) & 0xF;
  v32 = v27 & 0xFFFFFFFFFFFFLL;
  if ((v28 & 0x2000000000000000) != 0)
  {
    v33 = HIBYTE(v28) & 0xF;
  }

  else
  {
    v33 = v27 & 0xFFFFFFFFFFFFLL;
  }

  v858 = v7;
  if (v33 || (v27 & ~v28 & 0x2000000000000000) != 0)
  {
    if ((v28 & 0x2000000000000000) != 0 && v31 <= 8)
    {
      v34 = 8 * HIBYTE(v28);
      v35 = (-255 << (v34 & 0x38)) - 1;
      v36 = 83 << (v34 & 0x38);
      if (v31 >= 8)
      {
        v38 = v35 & v28 | v36;
        v37 = 8;
      }

      else
      {
        object = v35 & v27 | v36;
        if (v31 != 7)
        {
          object = ((-255 << ((v34 + 8) & 0x38)) - 1) & object | (73 << ((v34 + 8) & 0x38));
          if (v31 < 6)
          {
            object = ((-255 << ((v34 + 16) & 0x38)) - 1) & object | (77 << ((v34 + 16) & 0x38));
            if (v31 != 5)
            {
              object = ((-255 << ((v34 + 24) & 0x38)) - 1) & object | (68 << ((v34 + 24) & 0x38));
              if (v31 < 4)
              {
                object = ((0xFFFFFF0100000000 << (8 * v31)) - 1) & object | (0x3600000000 << (8 * v31));
                if (v31 != 3)
                {
                  object = ((-255 << ((v34 + 40) & 0x38)) - 1) & object | (52 << ((v34 + 40) & 0x38));
                  if (v31 < 2)
                  {
                    object = ((0xFF01000000000000 << (8 * v31)) - 1) & object | (0x3C000000000000 << (8 * v31));
                    v68 = v28;
                    goto LABEL_38;
                  }

                  v67 = 0;
                  v66 = v28;
LABEL_37:
                  v68 = ((-255 << v67) - 1) & v66 | (60 << v67);
LABEL_38:
                  v28;
                  0xE700000000000000;
                  v69 = 0xA000000000000000;
                  if (!(object & 0x8080808080808080 | v68 & 0x80808080808080))
                  {
                    v69 = 0xE000000000000000;
                  }

                  v875._countAndFlagsBits = object;
                  v875._object = ((v69 & 0xFF00000000000000 | (v31 << 56) | v68 & 0xFFFFFFFFFFFFFFLL) + 0x700000000000000);
                  goto LABEL_43;
                }

                v65 = 0;
                v64 = v28;
LABEL_36:
                v66 = ((-255 << v65) - 1) & v64 | (52 << v65);
                v67 = (v34 + 48) & 0x38;
                goto LABEL_37;
              }

              v63 = 0;
              v62 = v28;
LABEL_35:
              v64 = ((-255 << v63) - 1) & v62 | (54 << v63);
              v65 = (v34 + 40) & 0x38;
              goto LABEL_36;
            }

            v61 = 0;
            v60 = v28;
LABEL_34:
            v62 = ((-255 << v61) - 1) & v60 | (68 << v61);
            v63 = v34 & 0x38 ^ 0x20;
            goto LABEL_35;
          }

          v59 = 0;
          v58 = v28;
LABEL_33:
          v60 = ((-255 << v59) - 1) & v58 | (77 << v59);
          v61 = (v34 + 24) & 0x38;
          goto LABEL_34;
        }

        v37 = 0;
        v38 = v28;
      }

      v58 = ((-255 << v37) - 1) & v38 | (73 << v37);
      v59 = (v34 + 16) & 0x38;
      goto LABEL_33;
    }

    0xE700000000000000;
    if ((v30 & 0x1000000000000000) != 0)
    {
      goto LABEL_274;
    }

    v41 = __OFADD__(v33, 7);
    v42 = v33 + 7;
    if (!v41)
    {
      goto LABEL_13;
    }

LABEL_276:
    __break(1u);
    goto LABEL_277;
  }

  v875._countAndFlagsBits = 0x3C3436444D4953;
  v875._object = 0xE700000000000000;
  v57 = v28;
LABEL_42:
  v57;
  while (1)
  {
LABEL_43:
    TypeName = swift_getTypeName(v1, 0);
    if (v71 < 0)
    {
      goto LABEL_266;
    }

    v72 = TypeName;
    v73 = v71;
    v74 = _allASCII(_:)(TypeName, v71);
    v855 = countAndFlagsBits;
    if (!v74)
    {
      if (!v73)
      {
LABEL_92:
        countAndFlagsBits = 0;
        object = 0xE000000000000000;
        goto LABEL_128;
      }

      v30 = 0;
      v77 = (v72 + v73);
      v76 = 1;
      v78 = v72;
      v79 = v72;
      while (1)
      {
        v81 = *v79++;
        v80 = v81;
        if ((v81 & 0x80000000) == 0)
        {
          v82 = 1;
          goto LABEL_53;
        }

        if ((v80 + 11) <= 0xCCu)
        {
          LOBYTE(v869._countAndFlagsBits) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v80);
          goto LABEL_94;
        }

        if (v80 <= 0xDFu)
        {
          if (v79 == v77 || (*v79 & 0xC0) != 0x80)
          {
LABEL_256:
            v831 = 4;
            goto LABEL_257;
          }

          v76 = 0;
          v79 = v78 + 2;
          v82 = 2;
        }

        else
        {
          if (v80 == 224)
          {
            if (v79 == v77)
            {
              goto LABEL_256;
            }

            if (v78[1] - 192 < 0xFFFFFFE0)
            {
              goto LABEL_265;
            }

            goto LABEL_77;
          }

          if (v80 <= 0xECu)
          {
            goto LABEL_75;
          }

          if (v80 == 237)
          {
            if (v79 == v77)
            {
              goto LABEL_256;
            }

            v83 = v78[1];
            if (v83 > 0x9F || (v83 & 0xC0) != 0x80)
            {
              v831 = 1;
              goto LABEL_257;
            }

            goto LABEL_77;
          }

          if (v80 <= 0xEFu)
          {
LABEL_75:
            if (v79 == v77 || (v78[1] & 0xC0) != 0x80)
            {
              goto LABEL_256;
            }

LABEL_77:
            if (v78 + 2 == v77 || (v78[2] & 0xC0) != 0x80)
            {
              goto LABEL_256;
            }

            v76 = 0;
            v79 = v78 + 3;
            v82 = 3;
            goto LABEL_53;
          }

          if (v80 == 240)
          {
            if (v79 == v77)
            {
              goto LABEL_256;
            }

            if (v78[1] - 192 < 0xFFFFFFD0)
            {
              goto LABEL_265;
            }
          }

          else if (v80 <= 0xF3u)
          {
            if (v79 == v77 || (v78[1] & 0xC0) != 0x80)
            {
              goto LABEL_256;
            }
          }

          else
          {
            if (v79 == v77)
            {
              goto LABEL_256;
            }

            v84 = v78[1];
            if (v84 > 0x8F || (v84 & 0xC0) != 0x80)
            {
              v831 = 2;
LABEL_257:
              while (2)
              {
                LOBYTE(v869._countAndFlagsBits) = v831;
LABEL_94:
                swift_willThrowTypedImpl(&v869, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
                v85 = specialized Collection.subscript.getter(v30, v72, v73);
                v90 = findInvalidRange #1 (_:) in validateUTF8(_:)(v85, v86, v87, v88);
                v869._countAndFlagsBits = 0;
                v869._object = 0xE000000000000000;
                if (!__OFADD__(v73, 15))
                {
                  v32 = v89;
                  v30 = &v869;
                  _StringGuts.reserveCapacity(_:)(v73 + 15);
                  v91 = v90;
                  while (1)
                  {
                    v92 = specialized Collection.subscript.getter(v91, v72, v73);
                    v96 = v869._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
                    if ((v869._object & 0x2000000000000000) != 0)
                    {
                      v96 = (v869._object >> 56) & 0xF;
                    }

                    v41 = __OFADD__(v96, v73);
                    v97 = v96 + v73;
                    if (v41)
                    {
                      break;
                    }

                    v98 = v92;
                    if (__OFADD__(v97, 3))
                    {
                      goto LABEL_263;
                    }

                    v99 = v93;
                    countAndFlagsBits = v94;
                    v100 = v95;
                    _StringGuts.reserveCapacity(_:)(v97 + 3);
                    v101 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v98, v99, *&countAndFlagsBits, v100);
                    v103 = v102;
                    object = v869._object;
                    v30 = v869._object & 0xFFFFFFFFFFFFFFFLL;
                    v31 = (v869._object & 0xFFFFFFFFFFFFFFFLL) + 32;
                    specialized UnsafeMutablePointer.initialize(from:count:)(v101, v102, (v31 + (*((v869._object & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL)));
                    v104 = *((object & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL;
                    v105 = v104 + v103;
                    if (__OFADD__(v104, v103))
                    {
                      goto LABEL_264;
                    }

                    v106 = v105 | 0x3000000000000000;
                    *((object & 0xFFFFFFFFFFFFFFFLL) + 0x18) = v105 | 0x3000000000000000;
                    *((object & 0xFFFFFFFFFFFFFFFLL) + 0x20 + (v105 & 0xFFFFFFFFFFFFLL)) = 0;
                    if ((*((object & 0xFFFFFFFFFFFFFFFLL) + 0x10) & 0x8000000000000000) != 0)
                    {
                      v107 = __StringStorage._breadcrumbsAddress.getter();
                      v108 = *v107;
                      *v107 = 0;
                      v108;
                      v106 = *((object & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                    }

                    v869._countAndFlagsBits = v106;
                    v109 = v868;
                    specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(0xFFFDu, &v869._countAndFlagsBits);
                    v868 = v109;
                    v110 = specialized Collection.subscript.getter(v32, v72, v73);
                    v72 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v110, v111, v112, v113);
                    v73 = v114;
                    if ((validateUTF8(_:)(v72, v114) & 0x8000000000000000) == 0)
                    {
                      __StringStorage.appendInPlace(_:isASCII:)(v72, v73, 0);
                      countAndFlagsBits = *((object & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                      goto LABEL_128;
                    }

                    v32 = v115;
                    if (!v73)
                    {
                      object = v869._object;
                      countAndFlagsBits = v869._countAndFlagsBits;
                      goto LABEL_128;
                    }
                  }

                  __break(1u);
LABEL_263:
                  __break(1u);
LABEL_264:
                  __break(1u);
LABEL_265:
                  v831 = 3;
                  continue;
                }

                break;
              }

              __break(1u);
LABEL_288:
              if ((v30 & 0x1000000000000000) != 0)
              {
                object = _StringGuts._foreignConvertedToSmall()(object, v30);
                v30 = v850;
              }

              else
              {
                if ((object & 0x1000000000000000) != 0)
                {
                  v842 = ((v30 & 0xFFFFFFFFFFFFFFFLL) + 32);
                }

                else
                {
                  v842 = _StringObject.sharedUTF8.getter(object, v30);
                  v32 = v853;
                }

                closure #1 in _StringGuts._convertedToSmall()(v842, v32, &v869, v40);
                if (v868)
                {
                  goto LABEL_311;
                }

                v30 = v869._object;
                object = v869._countAndFlagsBits;
              }

LABEL_22:
              v45 = 0x3C3436444D4953;
              v32 = 0xE700000000000000;
              0xE700000000000000;
              v46._rawBits = 1;
              v47._rawBits = 458753;
              v48._rawBits = _StringGuts.validateScalarRange(_:)(v46, v47, 0x3C3436444D4953uLL, 0xE700000000000000)._rawBits;
              if (v48._rawBits < 0x10000)
              {
                v48._rawBits |= 3;
              }

              if (v48._rawBits >> 16 || (v49._rawBits & 0xFFFFFFFFFFFF0000) != 0x70000)
              {
                v45 = specialized static String._copying(_:)(v48._rawBits, v49._rawBits, 0x3C3436444D4953uLL, 0xE700000000000000);
                v32 = v51;
                0xE700000000000000;
              }

              if ((v32 & 0x2000000000000000) != 0)
              {
                v32;
              }

              else if ((v32 & 0x1000000000000000) != 0)
              {
                v45 = _StringGuts._foreignConvertedToSmall()(v45, v32);
                v852 = v851;
                v32;
                v32 = v852;
              }

              else
              {
                if ((v45 & 0x1000000000000000) != 0)
                {
                  v843 = ((v32 & 0xFFFFFFFFFFFFFFFLL) + 32);
                  v844 = v45 & 0xFFFFFFFFFFFFLL;
                }

                else
                {
                  v843 = _StringObject.sharedUTF8.getter(v45, v32);
                }

                closure #1 in _StringGuts._convertedToSmall()(v843, v844, &v869, v50);
                if (v868)
                {
                  goto LABEL_311;
                }

                v32;
                v32 = v869._object;
                v45 = v869._countAndFlagsBits;
              }

              v52 = specialized _SmallString.init(_:appending:)(object, v30, v45, v32);
              if (v54)
              {
                goto LABEL_301;
              }

              v55 = v52;
              v56 = v53;
              swift_bridgeObjectRelease_n(0xE700000000000000, 2);
              v57 = v875._object;
              v875._countAndFlagsBits = v55;
              v875._object = v56;
              goto LABEL_42;
            }
          }

          if (v78 + 2 == v77 || (v78[2] & 0xC0) != 0x80 || v78 + 3 == v77 || (v78[3] & 0xC0) != 0x80)
          {
            goto LABEL_256;
          }

          v76 = 0;
          v79 = v78 + 4;
          v82 = 4;
        }

LABEL_53:
        v30 += v82;
        v78 = v79;
        if (v79 == v77)
        {
          goto LABEL_46;
        }
      }
    }

    v76 = 1;
LABEL_46:
    if (!v73)
    {
      goto LABEL_92;
    }

    if (v73 > 15)
    {
      object = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v72, v73, v73, v76 & 1);
      countAndFlagsBits = *(object + 24);
      goto LABEL_128;
    }

    v116 = v73 - 8;
    v117 = 8;
    if (v73 < 8)
    {
      v117 = v73;
    }

    if (v73 >= 4)
    {
      v119 = v117 & 0xC;
      v75.i32[0] = *v72;
      v120 = vmovl_u16(*&vmovl_u8(v75));
      v121.i64[0] = v120.u32[0];
      v121.i64[1] = v120.u32[1];
      v122.i64[0] = 255;
      v122.i64[1] = 255;
      v123 = vandq_s8(v121, v122);
      v121.i64[0] = v120.u32[2];
      v121.i64[1] = v120.u32[3];
      v124 = vshlq_u64(vandq_s8(v121, v122), xmmword_18071DBA0);
      v125.i32[1] = 0;
      v126 = vshlq_u64(v123, xmmword_18071DBB0);
      if (v119 != 4)
      {
        v125.i32[0] = *(v72 + 4);
        v127 = vmovl_u16(*&vmovl_u8(v125));
        v128.i64[0] = v127.u32[2];
        v128.i64[1] = v127.u32[3];
        v129 = vandq_s8(v128, v122);
        v128.i64[0] = v127.u32[0];
        v128.i64[1] = v127.u32[1];
        v124 = vorrq_s8(vshlq_u64(v129, xmmword_18071DBD0), v124);
        v126 = vorrq_s8(vshlq_u64(vandq_s8(v128, v122), xmmword_18071DBC0), v126);
      }

      v130 = vorrq_s8(v126, v124);
      countAndFlagsBits = vorr_s8(*v130.i8, *&vextq_s8(v130, v130, 8uLL));
      if (v117 == v119)
      {
        goto LABEL_120;
      }

      v118 = 8 * v119;
    }

    else
    {
      countAndFlagsBits = 0;
      v118 = 0;
      v119 = 0;
    }

    v131 = v117 - v119;
    v132 = (v72 + v119);
    do
    {
      v133 = *v132++;
      *&countAndFlagsBits |= v133 << (v118 & 0x38);
      v118 += 8;
      --v131;
    }

    while (v131);
LABEL_120:
    if (v73 < 9)
    {
      v134 = 0;
    }

    else
    {
      v134 = 0;
      v135 = 0;
      v136 = (v72 + 8);
      do
      {
        v137 = *v136++;
        v134 |= v137 << v135;
        v135 += 8;
        --v116;
      }

      while (v116);
    }

    v138 = 0xA000000000000000;
    if (((v134 | *&countAndFlagsBits) & 0x8080808080808080) == 0)
    {
      v138 = 0xE000000000000000;
    }

    object = v138 | (v73 << 56) | v134;
LABEL_128:
    v7 = v875._object;
    v30 = v875._countAndFlagsBits;
    v139 = (v875._object >> 56) & 0xF;
    v140 = v875._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v875._object & 0x2000000000000000) != 0)
    {
      v140 = (v875._object >> 56) & 0xF;
    }

    if (!v140 && (v875._countAndFlagsBits & ~v875._object & 0x2000000000000000) == 0)
    {
      break;
    }

    v32 = (object & 0x2000000000000000) == 0;
    v141 = HIBYTE(object) & 0xF;
    if ((v875._object & 0x2000000000000000) != 0)
    {
      if ((object & 0x2000000000000000) == 0)
      {
        v854 = HIBYTE(object) & 0xF;
        v31 = *&countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        v32 = 1;
LABEL_137:
        v141 = v31;
        goto LABEL_138;
      }

      v160 = v139 + v141;
      if (v139 + v141 < 0x10)
      {
        if (v141)
        {
          v785 = 0;
          v786 = 0;
          v787 = 8 * v139;
          do
          {
            v788 = object >> (v785 & 0x38);
            if (v786 < 8)
            {
              v788 = *&countAndFlagsBits >> v785;
            }

            v789 = (v788 << (v787 & 0x38)) | ((-255 << (v787 & 0x38)) - 1) & v7;
            v790 = (v788 << v787) | ((-255 << v787) - 1) & v30;
            if (v139 <= 7)
            {
              v30 = v790;
            }

            else
            {
              v7 = v789;
            }

            ++v139;
            v787 += 8;
            v785 += 8;
            ++v786;
          }

          while (8 * v141 != v785);
        }

        object;
        v791 = 0xA000000000000000;
        if (!(v30 & 0x8080808080808080 | v7 & 0x80808080808080))
        {
          v791 = 0xE000000000000000;
        }

        v792 = v791 & 0xFF00000000000000 | (v160 << 56) | v7 & 0xFFFFFFFFFFFFFFLL;
        v875._object;
        v875._countAndFlagsBits = v30;
        v875._object = v792;
        goto LABEL_178;
      }

      v32 = 0;
      v31 = *&countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      v854 = HIBYTE(object) & 0xF;
    }

    else
    {
      v31 = *&countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      v854 = HIBYTE(object) & 0xF;
      if ((object & 0x2000000000000000) == 0)
      {
        goto LABEL_137;
      }
    }

LABEL_138:
    v861 = v141;
    if ((object & 0x1000000000000000) != 0)
    {
      swift_bridgeObjectRetain_n(object, 2);
      v832._rawBits = 1;
      v833._rawBits = (v141 << 16) | 1;
      v834._rawBits = _StringGuts.validateScalarRange(_:)(v832, v833, *&countAndFlagsBits, object)._rawBits;
      if (v834._rawBits < 0x10000)
      {
        v834._rawBits |= 3;
      }

      v141 = String.UTF8View.distance(from:to:)(v834, v835);
      object;
      v7 = v875._object;
      v30 = v875._countAndFlagsBits;
      if ((v875._object & 0x1000000000000000) != 0)
      {
LABEL_271:
        v836 = String.UTF8View._foreignCount()();
        v143 = v836 + v141;
        if (!__OFADD__(v836, v141))
        {
          goto LABEL_144;
        }

        goto LABEL_273;
      }
    }

    else
    {
      object;
      if ((v7 & 0x1000000000000000) != 0)
      {
        goto LABEL_271;
      }
    }

    if ((v7 & 0x2000000000000000) != 0)
    {
      v142 = HIBYTE(v7) & 0xF;
    }

    else
    {
      v142 = v30 & 0xFFFFFFFFFFFFLL;
    }

    v143 = v142 + v141;
    if (!__OFADD__(v142, v141))
    {
LABEL_144:
      if ((v30 & ~v7 & 0x2000000000000000) != 0 && (isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL), v7 = v875._object, v30 = v875._countAndFlagsBits, isUniquelyReferenced_nonNull_native))
      {
        v145 = _StringGuts.nativeUnusedCapacity.getter(v875._countAndFlagsBits, v875._object);
        if (v146)
        {
          goto LABEL_301;
        }

        if (v143 > 15 || (v7 & 0x2000000000000000) == 0 && v145 >= v141)
        {
LABEL_150:
          _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v143, v141);
          if ((object & 0x1000000000000000) != 0)
          {
            _StringGuts._foreignAppendInPlace(_:)(*&countAndFlagsBits, object, 0, v861);
          }

          else
          {
            if (!v32)
            {
              v151 = (object >> 62) & 1;
              v869._countAndFlagsBits = countAndFlagsBits;
              v869._object = (object & 0xFFFFFFFFFFFFFFLL);
              v149 = &v869;
              v150 = v854;
              goto LABEL_176;
            }

            if ((*&countAndFlagsBits & 0x1000000000000000) == 0)
            {
              v845 = _StringObject.sharedUTF8.getter(*&countAndFlagsBits, object);
              if (v846 >= v31)
              {
                goto LABEL_312;
              }

LABEL_266:
              _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v147 = (object & 0xFFFFFFFFFFFFFFFLL) + 32;
            for (i = v31; ; i = v846)
            {
              v149 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v31, v147, i);
              v151 = *&countAndFlagsBits >> 63;
LABEL_176:
              closure #1 in _StringGuts.append(_:)(v149, v150, &v875, v151);
              v167 = v868;
              if (!v868)
              {
                break;
              }

LABEL_310:
              v167;
              __break(1u);
LABEL_311:
              v868;
              __break(1u);
LABEL_312:
              v147 = v845;
            }
          }

          swift_bridgeObjectRelease_n(object, 2);
          goto LABEL_178;
        }
      }

      else if (v143 > 15)
      {
        goto LABEL_150;
      }

      v39 = &v876;
      if ((v7 & 0x2000000000000000) != 0)
      {
        v31 = v861;
        goto LABEL_158;
      }

LABEL_277:
      v31 = *(v39 - 32);
      if ((v7 & 0x1000000000000000) != 0)
      {
        v30 = _StringGuts._foreignConvertedToSmall()(v30, v7);
        v7 = v847;
      }

      else
      {
        if ((v30 & 0x1000000000000000) != 0)
        {
          v838 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v839 = v30 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v838 = _StringObject.sharedUTF8.getter(v30, v7);
        }

        closure #1 in _StringGuts._convertedToSmall()(v838, v839, &v869, v40);
        v167 = v868;
        if (v868)
        {
          goto LABEL_310;
        }

        v7 = v869._object;
        v30 = v869._countAndFlagsBits;
      }

LABEL_158:
      object;
      v152._rawBits = 1;
      v153._rawBits = (v31 << 16) | 1;
      v154._rawBits = _StringGuts.validateScalarRange(_:)(v152, v153, *&countAndFlagsBits, object)._rawBits;
      if (v154._rawBits < 0x10000)
      {
        v154._rawBits |= 3;
      }

      if (v154._rawBits >> 16)
      {
        v157 = 0;
      }

      else
      {
        v157 = v155._rawBits >> 16 == v31;
      }

      if (v157)
      {
        v159 = object;
      }

      else
      {
        countAndFlagsBits = specialized static String._copying(_:)(v154._rawBits, v155._rawBits, *&countAndFlagsBits, object);
        v159 = v158;
        object;
      }

      if ((v159 & 0x2000000000000000) != 0)
      {
        v159;
      }

      else if ((v159 & 0x1000000000000000) != 0)
      {
        countAndFlagsBits = _StringGuts._foreignConvertedToSmall()(*&countAndFlagsBits, v159);
        v849 = v848;
        v159;
        v159 = v849;
      }

      else
      {
        if ((*&countAndFlagsBits & 0x1000000000000000) != 0)
        {
          v840 = ((v159 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v841 = *&countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v840 = _StringObject.sharedUTF8.getter(*&countAndFlagsBits, v159);
        }

        closure #1 in _StringGuts._convertedToSmall()(v840, v841, &v869, v156);
        v167 = v868;
        if (v868)
        {
          goto LABEL_310;
        }

        v159;
        v159 = v869._object;
        countAndFlagsBits = v869._countAndFlagsBits;
      }

      v161 = specialized _SmallString.init(_:appending:)(v30, v7, *&countAndFlagsBits, v159);
      if ((v163 & 1) == 0)
      {
        v164 = v161;
        v165 = v162;
        swift_bridgeObjectRelease_n(object, 2);
        v166 = v875._object;
        v875._countAndFlagsBits = v164;
        v875._object = v165;
        goto LABEL_174;
      }

LABEL_301:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_273:
    __break(1u);
LABEL_274:
    v837 = String.UTF8View._foreignCount()();
    v42 = v837 + 7;
    if (__OFADD__(v837, 7))
    {
      goto LABEL_276;
    }

LABEL_13:
    if ((object & ~v30 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v30 & 0xFFFFFFFFFFFFFFFLL))
    {
      v43 = _StringGuts.nativeUnusedCapacity.getter(object, v30);
      if (v44)
      {
        goto LABEL_301;
      }

      if (v42 <= 15 && ((v30 & 0x2000000000000000) != 0 || v43 <= 6))
      {
LABEL_21:
        if ((v30 & 0x2000000000000000) == 0)
        {
          goto LABEL_288;
        }

        goto LABEL_22;
      }
    }

    else if (v42 <= 15)
    {
      goto LABEL_21;
    }

    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v42, 7);
    v869 = xmmword_18071DFF0;
    closure #1 in _StringGuts.append(_:)(&v869, 7uLL, &v875, 1);
    swift_bridgeObjectRelease_n(0xE700000000000000, 2);
  }

  v875._countAndFlagsBits = countAndFlagsBits;
  v875._object = object;
  v166 = v7;
LABEL_174:
  v166;
LABEL_178:
  v168 = v864;
  v169 = v875._object;
  v170 = (v875._object >> 56) & 0xF;
  if ((v875._object & 0x2000000000000000) == 0)
  {
    v170 = v875._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v170 || (v875._countAndFlagsBits & ~v875._object & 0x2000000000000000) != 0)
  {
    if ((v875._object & 0x2000000000000000) != 0 && (v171 = specialized _SmallString.init(_:appending:)(v875._countAndFlagsBits, v875._object, 0x283EuLL, 0xE200000000000000), (v173 & 1) == 0))
    {
      v182 = v171;
      v183 = v172;
      0xE200000000000000;
      v875._object;
      v875._countAndFlagsBits = v182;
      v875._object = v183;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(10302, 0xE200000000000000, 0, 2, v174, v175, v176, v177, v178, v179, v180, v181);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v875._countAndFlagsBits = 10302;
    v875._object = 0xE200000000000000;
    v169;
  }

  v184 = *(v168 + 24);
  swift_getAssociatedTypeWitness(255, v184, v1, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v186 = v185;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v184, v1, v185, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v188 = *(AssociatedConformanceWitness + 56);
  v189 = swift_checkMetadataState(0, v186);
  v190 = v865;
  v188(0, v189, AssociatedConformanceWitness);
  v870 = v1;
  v191 = __swift_allocate_boxed_opaque_existential_0Tm(&v869);
  v192 = v867;
  memcpy(v191, v190, v867);
  v193 = v870;
  v194 = __swift_project_boxed_opaque_existential_0Tm(&v869, v870);
  DynamicType = swift_getDynamicType(v194, v193, 1);
  LOBYTE(v193) = swift_isOptionalType(DynamicType);
  __swift_destroy_boxed_opaque_existential_1Tm(&v869._countAndFlagsBits);
  if (v193)
  {
    memcpy(v24, v190, v192);
    v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v869, v24, v1, v196, 7uLL);
    v197 = v870;
    v198 = v871;
    __swift_project_boxed_opaque_existential_0Tm(&v869, v870);
    v199 = (*(v198 + 8))(v197, v198);
    v209 = v200;
    v210 = v875._object;
    v211 = (v875._object >> 56) & 0xF;
    if ((v875._object & 0x2000000000000000) == 0)
    {
      v211 = v875._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v211 || (v875._countAndFlagsBits & ~v875._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v199, v200, v201, v202, v203, v204, v205, v206, v207, v208);
    }

    else
    {
      v875._countAndFlagsBits = v199;
      v875._object = v200;
      v209 = v210;
    }

    v212 = v209;
LABEL_194:
    v212;
LABEL_195:
    __swift_destroy_boxed_opaque_existential_1Tm(&v869._countAndFlagsBits);
  }

  else
  {
    v213 = v862;
    memcpy(v862, v190, v192);
    if (swift_dynamicCast(&v869, v213, v1, &type metadata for String, 6uLL))
    {
      v222 = v869._object;
      v223 = v875._object;
      v224 = (v875._object >> 56) & 0xF;
      if ((v875._object & 0x2000000000000000) == 0)
      {
        v224 = v875._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v224 || (v875._countAndFlagsBits & ~v875._object & 0x2000000000000000) != 0)
      {
        _StringGuts.append(_:)(v869._countAndFlagsBits, v869._object, v214, v215, v216, v217, v218, v219, v220, v221);
        v225 = v222;
      }

      else
      {
        v875 = v869;
        v225 = v223;
      }

      v225;
    }

    else
    {
      v239 = v190;
      v240 = v859;
      memcpy(v859, v239, v192);
      v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
      if (swift_dynamicCast(&v872, v240, v1, v241, 6uLL))
      {
        _ss9CodingKey_pWOb_0(&v872, &v869);
        v242 = v870;
        v243 = v871;
        __swift_project_boxed_opaque_existential_0Tm(&v869, v870);
        (*(v243 + 8))(&v875, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v242, v243);
        goto LABEL_195;
      }

      v874 = 0;
      v872 = 0u;
      v873 = 0u;
      outlined destroy of _HasContiguousBytes?(&v872, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
      v781 = v857;
      memcpy(v857, v239, v192);
      v782 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
      if (swift_dynamicCast(&v872, v781, v1, v782, 6uLL) || (v874 = 0, v872 = 0u, v873 = 0u, outlined destroy of _HasContiguousBytes?(&v872, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR), v793 = v856, memcpy(v856, v239, v192), v794 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR), swift_dynamicCast(&v872, v793, v1, v794, 6uLL)))
      {
        _ss9CodingKey_pWOb_0(&v872, &v869);
        v795 = v870;
        v796 = v871;
        __swift_project_boxed_opaque_existential_0Tm(&v869, v870);
        v797 = (*(v796 + 8))(v795, v796);
        v799 = v798;
        static String.+= infix(_:_:)(&v875, v797, v798, v800, v801, v802, v803, v804, v805, v806, v807);
        v212 = v799;
        goto LABEL_194;
      }

      v874 = 0;
      v872 = 0u;
      v873 = 0u;
      outlined destroy of _HasContiguousBytes?(&v872, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
      *(&v873 + 1) = v1;
      v823 = __swift_allocate_boxed_opaque_existential_0Tm(&v872);
      memcpy(v823, v239, v192);
      Mirror.init(reflecting:)(&v872, &v869);
      v824 = v239;
      v825 = v869._object;
      v826 = v871;
      _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v824, &v869, &v875, 0, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
      v826;
      v825;
    }
  }

  v226 = v875._object;
  v227 = (v875._object >> 56) & 0xF;
  if ((v875._object & 0x2000000000000000) == 0)
  {
    v227 = v875._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v227 || (v875._countAndFlagsBits & ~v875._object & 0x2000000000000000) != 0)
  {
    if ((v875._object & 0x2000000000000000) != 0 && (v228 = specialized _SmallString.init(_:appending:)(v875._countAndFlagsBits, v875._object, 0x202CuLL, 0xE200000000000000), (v230 & 1) == 0))
    {
      v244 = v228;
      v245 = v229;
      0xE200000000000000;
      v875._object;
      v875._countAndFlagsBits = v244;
      v875._object = v245;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v231, v232, v233, v234, v235, v236, v237, v238);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v875._countAndFlagsBits = 8236;
    v875._object = 0xE200000000000000;
    v226;
  }

  v246 = v866;
  v188(1, v189, AssociatedConformanceWitness);
  v870 = v1;
  v247 = __swift_allocate_boxed_opaque_existential_0Tm(&v869);
  v248 = v867;
  memcpy(v247, v246, v867);
  v249 = v870;
  v250 = __swift_project_boxed_opaque_existential_0Tm(&v869, v870);
  v251 = swift_getDynamicType(v250, v249, 1);
  LOBYTE(v249) = swift_isOptionalType(v251);
  __swift_destroy_boxed_opaque_existential_1Tm(&v869._countAndFlagsBits);
  if (v249)
  {
    memcpy(v24, v246, v248);
    v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v869, v24, v1, v252, 7uLL);
    v253 = v870;
    v254 = v871;
    __swift_project_boxed_opaque_existential_0Tm(&v869, v870);
    v255 = (*(v254 + 8))(v253, v254);
    v265 = v256;
    v266 = v875._object;
    v267 = (v875._object >> 56) & 0xF;
    if ((v875._object & 0x2000000000000000) == 0)
    {
      v267 = v875._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v267 || (v875._countAndFlagsBits & ~v875._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v255, v256, v257, v258, v259, v260, v261, v262, v263, v264);
    }

    else
    {
      v875._countAndFlagsBits = v255;
      v875._object = v256;
      v265 = v266;
    }

    v268 = v265;
LABEL_221:
    v268;
LABEL_222:
    __swift_destroy_boxed_opaque_existential_1Tm(&v869._countAndFlagsBits);
  }

  else
  {
    v277 = v863;
    memcpy(v863, v246, v248);
    if (swift_dynamicCast(&v869, v277, v1, &type metadata for String, 6uLL))
    {
      v278 = v869._object;
      String.write(_:)(v869);
      v278;
    }

    else
    {
      v776 = v246;
      v777 = v860;
      memcpy(v860, v776, v248);
      v778 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
      if (swift_dynamicCast(&v872, v777, v1, v778, 6uLL))
      {
        _ss9CodingKey_pWOb_0(&v872, &v869);
        v779 = v870;
        v780 = v871;
        __swift_project_boxed_opaque_existential_0Tm(&v869, v870);
        (*(v780 + 8))(&v875, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v779, v780);
        goto LABEL_222;
      }

      v874 = 0;
      v872 = 0u;
      v873 = 0u;
      outlined destroy of _HasContiguousBytes?(&v872, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
      v783 = v858;
      memcpy(v858, v776, v248);
      v784 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
      if (swift_dynamicCast(&v872, v783, v1, v784, 6uLL) || (v874 = 0, v872 = 0u, v873 = 0u, outlined destroy of _HasContiguousBytes?(&v872, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR), v808 = v855, memcpy(v855, v776, v248), v809 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR), swift_dynamicCast(&v872, v808, v1, v809, 6uLL)))
      {
        _ss9CodingKey_pWOb_0(&v872, &v869);
        v810 = v870;
        v811 = v871;
        __swift_project_boxed_opaque_existential_0Tm(&v869, v870);
        v812 = (*(v811 + 8))(v810, v811);
        v814 = v813;
        static String.+= infix(_:_:)(&v875, v812, v813, v815, v816, v817, v818, v819, v820, v821, v822);
        v268 = v814;
        goto LABEL_221;
      }

      v874 = 0;
      v872 = 0u;
      v873 = 0u;
      outlined destroy of _HasContiguousBytes?(&v872, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
      *(&v873 + 1) = v1;
      v827 = __swift_allocate_boxed_opaque_existential_0Tm(&v872);
      memcpy(v827, v776, v248);
      Mirror.init(reflecting:)(&v872, &v869);
      v828 = v776;
      v829 = v869._object;
      v830 = v871;
      _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v828, &v869, &v875, 0, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
      v830;
      v829;
    }
  }

  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v269, v270, v271, v272, v273, v274, v275, v276);
  0xE200000000000000;
  v188(2, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v279, v280, v281, v282, v283, v284, v285, v286);
  0xE200000000000000;
  v188(3, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v287, v288, v289, v290, v291, v292, v293, v294);
  0xE200000000000000;
  v188(4, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v295, v296, v297, v298, v299, v300, v301, v302);
  0xE200000000000000;
  v188(5, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v303, v304, v305, v306, v307, v308, v309, v310);
  0xE200000000000000;
  v188(6, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v311, v312, v313, v314, v315, v316, v317, v318);
  0xE200000000000000;
  v188(7, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v319, v320, v321, v322, v323, v324, v325, v326);
  0xE200000000000000;
  v188(8, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v327, v328, v329, v330, v331, v332, v333, v334);
  0xE200000000000000;
  v188(9, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v335, v336, v337, v338, v339, v340, v341, v342);
  0xE200000000000000;
  v188(10, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v343, v344, v345, v346, v347, v348, v349, v350);
  0xE200000000000000;
  v188(11, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v351, v352, v353, v354, v355, v356, v357, v358);
  0xE200000000000000;
  v188(12, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v359, v360, v361, v362, v363, v364, v365, v366);
  0xE200000000000000;
  v188(13, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v367, v368, v369, v370, v371, v372, v373, v374);
  0xE200000000000000;
  v188(14, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v375, v376, v377, v378, v379, v380, v381, v382);
  0xE200000000000000;
  v188(15, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v383, v384, v385, v386, v387, v388, v389, v390);
  0xE200000000000000;
  v188(16, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v391, v392, v393, v394, v395, v396, v397, v398);
  0xE200000000000000;
  v188(17, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v399, v400, v401, v402, v403, v404, v405, v406);
  0xE200000000000000;
  v188(18, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v407, v408, v409, v410, v411, v412, v413, v414);
  0xE200000000000000;
  v188(19, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v415, v416, v417, v418, v419, v420, v421, v422);
  0xE200000000000000;
  v188(20, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v423, v424, v425, v426, v427, v428, v429, v430);
  0xE200000000000000;
  v188(21, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v431, v432, v433, v434, v435, v436, v437, v438);
  0xE200000000000000;
  v188(22, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v439, v440, v441, v442, v443, v444, v445, v446);
  0xE200000000000000;
  v188(23, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v447, v448, v449, v450, v451, v452, v453, v454);
  0xE200000000000000;
  v188(24, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v455, v456, v457, v458, v459, v460, v461, v462);
  0xE200000000000000;
  v188(25, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v463, v464, v465, v466, v467, v468, v469, v470);
  0xE200000000000000;
  v188(26, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v471, v472, v473, v474, v475, v476, v477, v478);
  0xE200000000000000;
  v188(27, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v479, v480, v481, v482, v483, v484, v485, v486);
  0xE200000000000000;
  v188(28, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v487, v488, v489, v490, v491, v492, v493, v494);
  0xE200000000000000;
  v188(29, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v495, v496, v497, v498, v499, v500, v501, v502);
  0xE200000000000000;
  v188(30, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v503, v504, v505, v506, v507, v508, v509, v510);
  0xE200000000000000;
  v188(31, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v511, v512, v513, v514, v515, v516, v517, v518);
  0xE200000000000000;
  v188(32, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v519, v520, v521, v522, v523, v524, v525, v526);
  0xE200000000000000;
  v188(33, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v527, v528, v529, v530, v531, v532, v533, v534);
  0xE200000000000000;
  v188(34, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v535, v536, v537, v538, v539, v540, v541, v542);
  0xE200000000000000;
  v188(35, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v543, v544, v545, v546, v547, v548, v549, v550);
  0xE200000000000000;
  v188(36, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v551, v552, v553, v554, v555, v556, v557, v558);
  0xE200000000000000;
  v188(37, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v559, v560, v561, v562, v563, v564, v565, v566);
  0xE200000000000000;
  v188(38, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v567, v568, v569, v570, v571, v572, v573, v574);
  0xE200000000000000;
  v188(39, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v575, v576, v577, v578, v579, v580, v581, v582);
  0xE200000000000000;
  v188(40, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v583, v584, v585, v586, v587, v588, v589, v590);
  0xE200000000000000;
  v188(41, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v591, v592, v593, v594, v595, v596, v597, v598);
  0xE200000000000000;
  v188(42, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v599, v600, v601, v602, v603, v604, v605, v606);
  0xE200000000000000;
  v188(43, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v607, v608, v609, v610, v611, v612, v613, v614);
  0xE200000000000000;
  v188(44, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v615, v616, v617, v618, v619, v620, v621, v622);
  0xE200000000000000;
  v188(45, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v623, v624, v625, v626, v627, v628, v629, v630);
  0xE200000000000000;
  v188(46, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v631, v632, v633, v634, v635, v636, v637, v638);
  0xE200000000000000;
  v188(47, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v639, v640, v641, v642, v643, v644, v645, v646);
  0xE200000000000000;
  v188(48, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v647, v648, v649, v650, v651, v652, v653, v654);
  0xE200000000000000;
  v188(49, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v655, v656, v657, v658, v659, v660, v661, v662);
  0xE200000000000000;
  v188(50, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v663, v664, v665, v666, v667, v668, v669, v670);
  0xE200000000000000;
  v188(51, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v671, v672, v673, v674, v675, v676, v677, v678);
  0xE200000000000000;
  v188(52, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v679, v680, v681, v682, v683, v684, v685, v686);
  0xE200000000000000;
  v188(53, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v687, v688, v689, v690, v691, v692, v693, v694);
  0xE200000000000000;
  v188(54, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v695, v696, v697, v698, v699, v700, v701, v702);
  0xE200000000000000;
  v188(55, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v703, v704, v705, v706, v707, v708, v709, v710);
  0xE200000000000000;
  v188(56, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v711, v712, v713, v714, v715, v716, v717, v718);
  0xE200000000000000;
  v188(57, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v719, v720, v721, v722, v723, v724, v725, v726);
  0xE200000000000000;
  v188(58, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v727, v728, v729, v730, v731, v732, v733, v734);
  0xE200000000000000;
  v188(59, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v735, v736, v737, v738, v739, v740, v741, v742);
  0xE200000000000000;
  v188(60, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v743, v744, v745, v746, v747, v748, v749, v750);
  0xE200000000000000;
  v188(61, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v751, v752, v753, v754, v755, v756, v757, v758);
  0xE200000000000000;
  v188(62, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x202CuLL, 0xE200000000000000, v759, v760, v761, v762, v763, v764, v765, v766);
  0xE200000000000000;
  v188(63, v189, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v24, &v875, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v875, 0x29uLL, 0xE100000000000000, v767, v768, v769, v770, v771, v772, v773, v774);
  0xE100000000000000;
  return v875._countAndFlagsBits;
}

uint64_t SIMD64<>.init<A>(_:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v36 = a4;
  v37 = a6;
  v39 = a1;
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v19 = v18;
  v35 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v18, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v21 = *(AssociatedConformanceWitness + 48);
  v33 = v19;
  v34 = a8;
  v21(v19, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v31 = a7;
  v32 = v22;
  v38 = a3;
  v23 = swift_getAssociatedConformanceWitness(a7, a3, v22, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v24 = 0;
  v25 = *(v23 + 56);
  do
  {
    v26 = swift_checkMetadataState(0, v32);
    v25(v24, v26, v23);
    (*(*(v36 + 16) + 72))(v15, v38, *(v37 + 8));
    (*(AssociatedConformanceWitness + 64))(v17, v24++, v33, AssociatedConformanceWitness);
  }

  while (v24 != 64);
  v28 = type metadata accessor for SIMD64(0, v38, v31, v27);
  return (*(*(v28 - 8) + 8))(v39, v28);
}

{
  v39 = a6;
  v41 = a1;
  v14 = MEMORY[0x1EEE9AC00](a1);
  v36 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v19 = v18;
  v38 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v18, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v21 = *(AssociatedConformanceWitness + 48);
  v37 = a8;
  v35 = v19;
  v21(v19, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
  v31 = a7;
  v40 = a3;
  v34 = v22;
  v23 = swift_getAssociatedConformanceWitness(a7, a3, v22, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
  v24 = 0;
  v32 = *(v23 + 56);
  v33 = v23;
  do
  {
    v25 = swift_checkMetadataState(0, v34);
    v26 = v36;
    v32(v24, v25, v33);
    (*(a4 + 80))(v26, v40, v39);
    (*(AssociatedConformanceWitness + 64))(v17, v24++, v35, AssociatedConformanceWitness);
  }

  while (v24 != 64);
  v28 = type metadata accessor for SIMD64(0, v40, v31, v27);
  return (*(*(v28 - 8) + 8))(v41, v28);
}

uint64_t EnumeratedSequence.Iterator._base.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness(0, *(a1 + 24), *(a1 + 16), a2, a3);
  v7 = *(*(v6 - 8) + 16);

  return v7(a4, v4, v6);
}

uint64_t EnumeratedSequence.Iterator._base.setter(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  swift_getAssociatedTypeWitness(0, *(a2 + 24), *(a2 + 16), a3, a4);
  v7 = *(*(v6 - 8) + 40);

  return v7(v4, a1, v6);
}

uint64_t key path getter for SIMD3.subscript(_:) : <A>SIMD3<A>A(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2 >= 3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = *(a2 + a3 - 16);
  v4 = *(a2 + a3 - 8);
  swift_getAssociatedTypeWitness(255, v4, v5, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v7 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v5, v6, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v9 = *(AssociatedConformanceWitness + 56);
  v10 = swift_checkMetadataState(0, v7);
  return v9(v3, v10, AssociatedConformanceWitness);
}

uint64_t key path setter for SIMD3.subscript(_:) : <A>SIMD3<A>A(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v18 - v6;
  v9 = *v8;
  memcpy(&v18 - v6, v10, v11);
  if (v9 >= 3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  swift_getAssociatedTypeWitness(255, v5, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v13 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v4, v12, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v15 = *(AssociatedConformanceWitness + 64);
  v16 = swift_checkMetadataState(0, v13);
  return v15(v7, v9, v16, AssociatedConformanceWitness);
}

uint64_t (*SIMD3.subscript.modify(void *a1, unint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x40, 0xC9DAuLL);
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = *(a3 + 16);
  v10 = *(*(v9 - 1) + 64);
  v7[2] = v10;
  if (swift_coroFrameAlloc)
  {
    v7[3] = swift_coroFrameAlloc(v10, 0xC9DAuLL);
    v8[4] = swift_coroFrameAlloc(v10, 0xC9DAuLL);
    v11 = swift_coroFrameAlloc(v10, 0xC9DAuLL);
  }

  else
  {
    v7[3] = malloc(v10);
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v8[5] = v11;
  if (a2 >= 3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v12, v9, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, v9, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v8[6] = AssociatedConformanceWitness;
  v16 = *(AssociatedConformanceWitness + 56);
  v17 = swift_checkMetadataState(0, v14);
  v8[7] = v17;
  v16(a2, v17, AssociatedConformanceWitness);
  return SIMD4.subscript.modify;
}

void SIMD2.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v6 = (*a1)[4];
  v5 = (*a1)[5];
  v7 = (*a1)[3];
  v8 = **a1;
  if (a2)
  {
    v9 = (*a1)[3];
  }

  else
  {
    v9 = (*a1)[4];
  }

  memcpy(v9, v5, (*a1)[2]);
  (*(v3 + 64))(v9, v8, v4, v3);
  free(v5);
  free(v6);
  free(v7);

  free(v2);
}

uint64_t SIMD3.init(_:_:_:)(const void *a1, const void *a2, const void *a3, const char *a4, int **a5)
{
  v10 = *(*(a4 - 1) + 64);
  MEMORY[0x1EEE9AC00](a1);
  swift_getAssociatedTypeWitness(0, a5, v11, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v13 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a4, v12, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  (*(AssociatedConformanceWitness + 48))(v13, AssociatedConformanceWitness);
  memcpy(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v15 = *(AssociatedConformanceWitness + 64);
  v15(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 0, v13, AssociatedConformanceWitness);
  memcpy(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
  v15(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v13, AssociatedConformanceWitness);
  memcpy(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v10);
  return (v15)(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 2, v13, AssociatedConformanceWitness);
}

uint64_t (*SIMD3.x.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x8EC5uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v2;
  v7 = *(a2 + 16);
  v8 = *(*(v7 - 1) + 64);
  v5[1] = v8;
  if (swift_coroFrameAlloc)
  {
    v5[2] = swift_coroFrameAlloc(v8, 0x8EC5uLL);
    v9 = swift_coroFrameAlloc(v8, 0x8EC5uLL);
  }

  else
  {
    v5[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v6[3] = v9;
  v10 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v10, v7, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v7, v11, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v6[4] = AssociatedConformanceWitness;
  v14 = *(AssociatedConformanceWitness + 56);
  v15 = swift_checkMetadataState(0, v12);
  v6[5] = v15;
  v14(0, v15, AssociatedConformanceWitness);
  return SIMD4.x.modify;
}

uint64_t (*SIMD3.y.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x7154uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v2;
  v7 = *(a2 + 16);
  v8 = *(*(v7 - 1) + 64);
  v5[1] = v8;
  if (swift_coroFrameAlloc)
  {
    v5[2] = swift_coroFrameAlloc(v8, 0x7154uLL);
    v9 = swift_coroFrameAlloc(v8, 0x7154uLL);
  }

  else
  {
    v5[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v6[3] = v9;
  v10 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v10, v7, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v7, v11, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v6[4] = AssociatedConformanceWitness;
  v14 = *(AssociatedConformanceWitness + 56);
  v15 = swift_checkMetadataState(0, v12);
  v6[5] = v15;
  v14(1, v15, AssociatedConformanceWitness);
  return SIMD4.y.modify;
}

uint64_t SIMD2.x.getter(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  swift_getAssociatedTypeWitness(255, v6, v7, &protocol requirements base descriptor for SIMDScalar, a2);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v7, v8, &protocol requirements base descriptor for SIMDScalar, a3);
  v13 = *(AssociatedConformanceWitness + 56);
  v11 = swift_checkMetadataState(0, v9);

  return v13(a4, v11, AssociatedConformanceWitness);
}

uint64_t key path getter for SIMD2.x : <A>SIMD2<A>(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5, uint64_t a6)
{
  v8 = *(a2 + a3 - 16);
  v9 = *(a2 + a3 - 8);
  swift_getAssociatedTypeWitness(255, v9, v8, &protocol requirements base descriptor for SIMDScalar, a4);
  v11 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v9, v8, v10, &protocol requirements base descriptor for SIMDScalar, a5);
  v13 = *(AssociatedConformanceWitness + 56);
  v14 = swift_checkMetadataState(0, v11);
  return v13(a6, v14, AssociatedConformanceWitness);
}

uint64_t key path setter for SIMD2.x : <A>SIMD2<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, _DWORD *a6, uint64_t a7)
{
  v10 = *(a3 + a4 - 16);
  v11 = *(a3 + a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v22 - v12;
  memcpy(&v22 - v12, v14, v15);
  swift_getAssociatedTypeWitness(255, v11, v10, &protocol requirements base descriptor for SIMDScalar, a5);
  v17 = v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v11, v10, v16, &protocol requirements base descriptor for SIMDScalar, a6);
  v19 = *(AssociatedConformanceWitness + 64);
  v20 = swift_checkMetadataState(0, v17);
  return v19(v13, a7, v20, AssociatedConformanceWitness);
}

uint64_t SIMD2.x.setter(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, uint64_t a5)
{
  v9 = *(a2 + 16);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v11, v12, v10);
  v13 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v13, v9, &protocol requirements base descriptor for SIMDScalar, a3);
  v15 = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v13, v9, v14, &protocol requirements base descriptor for SIMDScalar, a4);
  v17 = *(AssociatedConformanceWitness + 64);
  v18 = swift_checkMetadataState(0, v15);
  return v17(v11, a5, v18, AssociatedConformanceWitness);
}

void (*SIMD3.z.modify(void *a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x1296uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v2;
  v7 = *(a2 + 16);
  v8 = *(*(v7 - 1) + 64);
  v5[1] = v8;
  if (swift_coroFrameAlloc)
  {
    v5[2] = swift_coroFrameAlloc(v8, 0x1296uLL);
    v9 = swift_coroFrameAlloc(v8, 0x1296uLL);
  }

  else
  {
    v5[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v6[3] = v9;
  v10 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v10, v7, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v7, v11, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v6[4] = AssociatedConformanceWitness;
  v14 = *(AssociatedConformanceWitness + 56);
  v15 = swift_checkMetadataState(0, v12);
  v6[5] = v15;
  v14(2, v15, AssociatedConformanceWitness);
  return SIMD3.z.modify;
}

void SIMD2.x.modify(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v8 = *(*a1 + 16);
  v7 = *(*a1 + 24);
  memcpy(v8, v7, *(*a1 + 8));
  (*(v6 + 64))(v8, a3, v5, v6);
  free(v7);
  free(v8);

  free(v4);
}

Swift::Int SIMDMask.hashValue.getter(const char *a1, int *a2, uint64_t a3)
{
  v9 = 0u;
  v10 = 0u;
  v6 = 0;
  v7 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v8 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  WitnessTable = swift_getWitnessTable(a2, a1, a3);
  SIMD.hash(into:)(&v6, a1, WitnessTable);
  return Hasher._finalize()();
}

uint64_t protocol witness for SIMDStorage.init() in conformance SIMD2<A>(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness(0, v5, v6, &protocol requirements base descriptor for SIMDScalar, a3);
  v8 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v6, v7, &protocol requirements base descriptor for SIMDScalar, a4);
  return (*(AssociatedConformanceWitness + 48))(v8, AssociatedConformanceWitness);
}

uint64_t protocol witness for SIMDStorage.subscript.getter in conformance SIMD3<A>(unint64_t a1, uint64_t a2)
{
  if (a1 >= 3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v2, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v6 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v2, v3, v5, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v10 = *(AssociatedConformanceWitness + 56);
  v8 = swift_checkMetadataState(0, v6);

  return v10(a1, v8, AssociatedConformanceWitness);
}

uint64_t protocol witness for SIMDStorage.subscript.setter in conformance SIMD3<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v3, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v8 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v3, v4, v7, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v12 = *(AssociatedConformanceWitness + 64);
  v10 = swift_checkMetadataState(0, v8);

  return v12(a1, a2, v10, AssociatedConformanceWitness);
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance SIMD3<A>(void *a1, unint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x40, 0x17EDuLL);
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = *(a3 + 16);
  v10 = *(*(v9 - 1) + 64);
  v7[2] = v10;
  if (swift_coroFrameAlloc)
  {
    v7[3] = swift_coroFrameAlloc(v10, 0x17EDuLL);
    v8[4] = swift_coroFrameAlloc(v10, 0x17EDuLL);
    v11 = swift_coroFrameAlloc(v10, 0x17EDuLL);
  }

  else
  {
    v7[3] = malloc(v10);
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v8[5] = v11;
  if (a2 >= 3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v12, v9, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, v9, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v8[6] = AssociatedConformanceWitness;
  v16 = *(AssociatedConformanceWitness + 56);
  v17 = swift_checkMetadataState(0, v14);
  v8[7] = v17;
  v16(a2, v17, AssociatedConformanceWitness);
  return SIMD4.subscript.modify;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SIMD3<A>(uint64_t a1, const char *a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD3<A>, a2, a3);

  return SIMD.hash(into:)(a1, a2, WitnessTable);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SIMDMask<A>(uint64_t a1, const char *a2, uint64_t a3, int *a4)
{
  specialized Hasher.init(_seed:)(a1, v9);
  WitnessTable = swift_getWitnessTable(a4, a2, v6);
  SIMD.hash(into:)(v9, a2, WitnessTable);
  return Hasher._finalize()();
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance SIMD3<A>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD3<A>, a1, a3);

  return SIMD.description.getter(a1, WitnessTable);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance SIMD3<A>@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD3<A>, a2, a3);

  return SIMD.init(arrayLiteral:)(a1, a2, WitnessTable, a4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SIMD3<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v3 = *(a3 + 16);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v23 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v22[1] = v22 - v6;
  v7 = 0;
  v8 = 1;
  v9 = v22 - v6;
  do
  {
    if (v8)
    {
      v10 = *(v26 + 24);
      swift_getAssociatedTypeWitness(255, v10, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
      v12 = v11;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v3, v11, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
      v14 = *(AssociatedConformanceWitness + 56);
      v15 = swift_checkMetadataState(0, v12);
      v14(v7, v15, AssociatedConformanceWitness);
      v16 = v23;
      v14(v7, v15, AssociatedConformanceWitness);
      swift_getAssociatedTypeWitness(255, v10, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
      v18 = v17;
      v19 = swift_getAssociatedConformanceWitness(v10, v3, v17, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
      v20 = swift_getAssociatedConformanceWitness(v19, v18, v3, &protocol requirements base descriptor for SIMDStorage, associated conformance descriptor for SIMDStorage.SIMDStorage.Scalar: Hashable);
      v8 = (*(*(v20 + 8) + 8))(v9, v16, v3);
    }

    else
    {
      v8 = 0;
    }

    ++v7;
  }

  while (v7 != 3);
  return v8 & 1;
}

uint64_t SIMD3<>.init<A>(truncatingIfNeeded:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, void (*a4)(char *, const char *, uint64_t, const char *, uint64_t)@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v51 = a6;
  v52 = a4;
  v55 = a1;
  v48 = a8;
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v17 = v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v16, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v19 = *(AssociatedConformanceWitness + 48);
  v47 = v17;
  v20 = AssociatedConformanceWitness;
  v19(v17);
  v46 = a7;
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v22 = v21;
  v23 = a7;
  v24 = a3;
  v49 = a3;
  v53 = v22;
  v25 = swift_getAssociatedConformanceWitness(v23, a3, v22, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v54 = v25;
  v26 = *(v25 + 56);
  v27 = swift_checkMetadataState(0, v22);
  v26(0, v27, v25);
  v50 = *(v52 + 1);
  v28 = *(v50 + 96);
  v51 = *(v51 + 8);
  v52 = v28;
  v29 = v45;
  v44 = a2;
  (v28)(v14, v24);
  v30 = v20;
  v42 = *(v20 + 64);
  v43 = v20;
  v31 = v47;
  v42(v29, 0, v47, v30);
  v32 = swift_checkMetadataState(0, v53);
  v26(1, v32, v54);
  v33 = v44;
  v52(v14, v49, v51, v44, v50);
  v34 = v31;
  v35 = v42;
  v36 = v43;
  v42(v29, 1, v34, v43);
  v37 = swift_checkMetadataState(0, v53);
  v26(2, v37, v54);
  v38 = v49;
  v52(v14, v49, v51, v33, v50);
  v35(v29, 2, v47, v36);
  v40 = type metadata accessor for SIMD3(0, v38, v46, v39);
  return (*(*(v40 - 8) + 8))(v55, v40);
}

uint64_t SIMD3<>.init<A>(clamping:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, void (*a4)(char *, const char *, uint64_t, const char *, uint64_t)@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v51 = a6;
  v52 = a4;
  v55 = a1;
  v48 = a8;
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v17 = v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v16, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v19 = *(AssociatedConformanceWitness + 48);
  v47 = v17;
  v20 = AssociatedConformanceWitness;
  v19(v17);
  v46 = a7;
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v22 = v21;
  v23 = a7;
  v24 = a3;
  v49 = a3;
  v53 = v22;
  v25 = swift_getAssociatedConformanceWitness(v23, a3, v22, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v54 = v25;
  v26 = *(v25 + 56);
  v27 = swift_checkMetadataState(0, v22);
  v26(0, v27, v25);
  v50 = *(v52 + 1);
  v28 = *(v50 + 104);
  v51 = *(v51 + 8);
  v52 = v28;
  v29 = v45;
  v44 = a2;
  (v28)(v14, v24);
  v30 = v20;
  v42 = *(v20 + 64);
  v43 = v20;
  v31 = v47;
  v42(v29, 0, v47, v30);
  v32 = swift_checkMetadataState(0, v53);
  v26(1, v32, v54);
  v33 = v44;
  v52(v14, v49, v51, v44, v50);
  v34 = v31;
  v35 = v42;
  v36 = v43;
  v42(v29, 1, v34, v43);
  v37 = swift_checkMetadataState(0, v53);
  v26(2, v37, v54);
  v38 = v49;
  v52(v14, v49, v51, v33, v50);
  v35(v29, 2, v47, v36);
  v40 = type metadata accessor for SIMD3(0, v38, v46, v39);
  return (*(*(v40 - 8) + 8))(v55, v40);
}

uint64_t SIMD3<>.init<A>(_:rounding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, const char *a4@<X3>, uint64_t a5@<X4>, swift *a6@<X5>, uint64_t a7@<X6>, int **a8@<X7>, uint64_t a9@<X8>)
{
  v65 = a7;
  v55 = a5;
  v63 = a2;
  v52 = a9;
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v64 = &v47 - v18;
  v51 = v19;
  MEMORY[0x1EEE9AC00](v17);
  v48 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, v22, v21, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v24 = v23;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a6, a3, v23, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v61 = v24;
  v62 = AssociatedConformanceWitness;
  (*(AssociatedConformanceWitness + 48))(v24, AssociatedConformanceWitness);
  v49 = a8;
  swift_getAssociatedTypeWitness(255, a8, a4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v27 = v26;
  v28 = a4;
  v57 = v26;
  v29 = swift_getAssociatedConformanceWitness(a8, a4, v26, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v30 = *(v29 + 56);
  v59 = v29;
  v60 = v30;
  v31 = swift_checkMetadataState(0, v27);
  v47 = v16;
  v50 = a1;
  v30(0, v31, v29);
  v32 = v64;
  v33 = v65;
  v34 = *(v65 + 16);
  v56 = v34 + 304;
  v58 = *(v34 + 304);
  v58(v63, v28, v34);
  v35 = *(v55 + 8);
  v54 = *(v35 + 80);
  v55 = v35;
  v36 = v48;
  v54(v32, v28, v33);
  v53 = *(v62 + 64);
  (v53)(v36, 0, v61);
  v37 = swift_checkMetadataState(0, v57);
  v60(1, v37, v59);
  v38 = v64;
  v58(v63, v28, v34);
  v39 = v38;
  v40 = v51;
  (v54)(v39, v28, v65, v51, v55);
  v41 = v61;
  v53(v36, 1, v61, v62);
  v42 = swift_checkMetadataState(0, v57);
  v60(2, v42, v59);
  v43 = v64;
  v58(v63, v28, v34);
  (v54)(v43, v28, v65, v40, v55);
  v53(v36, 2, v41, v62);
  v45 = type metadata accessor for SIMD3(0, v28, v49, v44);
  return (*(*(v45 - 8) + 8))(v50, v45);
}

uint64_t SIMD3.debugDescription.getter(uint64_t a1)
{
  v362 = a1;
  v1 = *(a1 + 16);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](a1);
  object = &v348 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v354 = (&v348 - v6);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v357 = (&v348 - v8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v360 = (&v348 - v10);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v348 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v350 = (&v348 - v15);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v353 = (&v348 - v17);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v356 = (&v348 - v19);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v359 = (&v348 - v21);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v364 = &v348 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v349 = (&v348 - v25);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v352 = (&v348 - v27);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v355 = (&v348 - v29);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v358 = (&v348 - v31);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v366 = (&v348 - v33);
  MEMORY[0x1EEE9AC00](v32);
  v363 = &v348 - v34;
  v35 = _StringGuts.init(_initialCapacity:)(21);
  countAndFlagsBits = v35;
  v38 = v36;
  v373 = v35;
  v374 = v36;
  v39 = HIBYTE(v36) & 0xF;
  v40 = v35 & 0xFFFFFFFFFFFFLL;
  if ((v36 & 0x2000000000000000) != 0)
  {
    v41 = HIBYTE(v36) & 0xF;
  }

  else
  {
    v41 = v35 & 0xFFFFFFFFFFFFLL;
  }

  v365 = v13;
  v351 = (&v348 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!v41 && (v35 & ~v36 & 0x2000000000000000) == 0)
  {
    v36;
    v373 = 0x3C33444D4953;
    v374 = 0xE600000000000000;
    goto LABEL_46;
  }

  if ((v36 & 0x2000000000000000) != 0 && v39 <= 9)
  {
    v42 = 8 * HIBYTE(v36);
    v43 = (-255 << (v42 & 0x38)) - 1;
    v44 = 83 << (v42 & 0x38);
    v45 = v39 + 1;
    if (v39 >= 8)
    {
      v47 = v43 & v36 | v44;
      v46 = 8 * (v45 & 7);
    }

    else
    {
      countAndFlagsBits = v43 & v35 | v44;
      if (v39 != 7)
      {
        countAndFlagsBits = ((-255 << (8 * (v45 & 7u))) - 1) & countAndFlagsBits | (73 << (8 * (v45 & 7u)));
        if (v39 < 6)
        {
          countAndFlagsBits = ((-255 << ((v42 + 16) & 0x38)) - 1) & countAndFlagsBits | (77 << ((v42 + 16) & 0x38));
          if (v39 != 5)
          {
            countAndFlagsBits = ((-255 << ((v42 + 24) & 0x38)) - 1) & countAndFlagsBits | (68 << ((v42 + 24) & 0x38));
            if (v39 < 4)
            {
              countAndFlagsBits = ((0xFFFFFF0100000000 << (8 * v39)) - 1) & countAndFlagsBits | (0x3300000000 << (8 * v39));
              if (v39 != 3)
              {
                countAndFlagsBits = ((-255 << ((v42 + 40) & 0x38)) - 1) & countAndFlagsBits | (60 << ((v42 + 40) & 0x38));
                v60 = v36;
                goto LABEL_31;
              }

              v59 = 0;
              v58 = v36;
LABEL_30:
              v60 = ((-255 << v59) - 1) & v58 | (60 << v59);
LABEL_31:
              v36;
              0xE600000000000000;
              v61 = 0xA000000000000000;
              if (!(countAndFlagsBits & 0x8080808080808080 | v60 & 0x80808080808080))
              {
                v61 = 0xE000000000000000;
              }

              v373 = countAndFlagsBits;
              v374 = (v61 & 0xFF00000000000000 | (v39 << 56) | v60 & 0xFFFFFFFFFFFFFFLL) + 0x600000000000000;
              goto LABEL_46;
            }

            v57 = 0;
            v56 = v36;
LABEL_29:
            v58 = ((-255 << v57) - 1) & v56 | (51 << v57);
            v59 = (v42 + 40) & 0x38;
            goto LABEL_30;
          }

          v55 = 0;
          v54 = v36;
LABEL_28:
          v56 = ((-255 << v55) - 1) & v54 | (68 << v55);
          v57 = v42 & 0x38 ^ 0x20;
          goto LABEL_29;
        }

        v53 = 0;
        v52 = v36;
LABEL_27:
        v54 = ((-255 << v53) - 1) & v52 | (77 << v53);
        v55 = (v42 + 24) & 0x38;
        goto LABEL_28;
      }

      v46 = 0;
      v47 = v36;
    }

    v52 = ((-255 << v46) - 1) & v47 | (73 << v46);
    v53 = (v42 + 16) & 0x38;
    goto LABEL_27;
  }

  0xE600000000000000;
  if ((v38 & 0x1000000000000000) != 0)
  {
    v342 = String.UTF8View._foreignCount()();
    v39 = v342 + 6;
    if (!__OFADD__(v342, 6))
    {
      goto LABEL_13;
    }

LABEL_262:
    __break(1u);
    goto LABEL_263;
  }

  v39 = v41 + 6;
  if (__OFADD__(v41, 6))
  {
    goto LABEL_262;
  }

LABEL_13:
  if ((countAndFlagsBits & ~v38 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v38 & 0xFFFFFFFFFFFFFFFLL))
  {
    v49 = _StringGuts.nativeUnusedCapacity.getter(countAndFlagsBits, v38);
    if (v50)
    {
LABEL_270:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v39 > 15)
    {
      goto LABEL_24;
    }

    if ((v38 & 0x2000000000000000) == 0)
    {
      if (v49 < 6)
      {
        goto LABEL_19;
      }

LABEL_24:
      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v39, 6);
      v367 = xmmword_18071E000;
      closure #1 in _StringGuts.append(_:)(&v367, 6uLL, &v373, 1);
      swift_bridgeObjectRelease_n(0xE600000000000000, 2);
      goto LABEL_46;
    }

LABEL_35:
    object = v38;
    goto LABEL_36;
  }

  if (v39 > 15)
  {
    goto LABEL_24;
  }

  if ((v38 & 0x2000000000000000) != 0)
  {
    goto LABEL_35;
  }

LABEL_19:
  if ((v38 & 0x1000000000000000) != 0)
  {
    countAndFlagsBits = _StringGuts._foreignConvertedToSmall()(countAndFlagsBits, v38);
    object = v341;
  }

  else
  {
    if ((countAndFlagsBits & 0x1000000000000000) != 0)
    {
      v51 = ((v38 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v51 = _StringObject.sharedUTF8.getter(countAndFlagsBits, v38);
      v40 = v345;
    }

    closure #1 in _StringGuts._convertedToSmall()(v51, v40, &v367, v48);
    object = v367._object;
    countAndFlagsBits = v367._countAndFlagsBits;
  }

LABEL_36:
  v40 = 0x3C33444D4953;
  v39 = 0xE600000000000000;
  0xE600000000000000;
  v62._rawBits = 1;
  v63._rawBits = 393217;
  v64._rawBits = _StringGuts.validateScalarRange(_:)(v62, v63, 0x3C33444D4953uLL, 0xE600000000000000)._rawBits;
  if (v64._rawBits < 0x10000)
  {
    v64._rawBits |= 3;
  }

  if (v64._rawBits >> 16 || (v65._rawBits & 0xFFFFFFFFFFFF0000) != 0x60000)
  {
    v40 = specialized static String._copying(_:)(v64._rawBits, v65._rawBits, 0x3C33444D4953uLL, 0xE600000000000000);
    v39 = v66;
    0xE600000000000000;
  }

  if ((v39 & 0x2000000000000000) == 0)
  {
    goto LABEL_264;
  }

  v39;
  while (2)
  {
    v67 = specialized _SmallString.init(_:appending:)(countAndFlagsBits, object, v40, v39);
    if (v69)
    {
      goto LABEL_270;
    }

    v70 = v67;
    v40 = v68;
    v38;
    swift_bridgeObjectRelease_n(0xE600000000000000, 2);
    v373 = v70;
    v374 = v40;
LABEL_46:
    v361 = v1;
    TypeName = swift_getTypeName(v1, 0);
    if (v72 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    object = TypeName;
    countAndFlagsBits = v72;
    if (_allASCII(_:)(TypeName, v72))
    {
      v74 = 1;
LABEL_49:
      if (!countAndFlagsBits)
      {
LABEL_95:
        v76 = 0;
        v75 = 0xE000000000000000;
        goto LABEL_115;
      }

      if (countAndFlagsBits > 15)
      {
        v75 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(object, countAndFlagsBits, countAndFlagsBits, v74 & 1);
        v76 = *(v75 + 24);
        goto LABEL_115;
      }

      v115 = countAndFlagsBits - 8;
      v116 = 8;
      if (countAndFlagsBits < 8)
      {
        v116 = countAndFlagsBits;
      }

      if (countAndFlagsBits >= 4)
      {
        v118 = v116 & 0xC;
        v73.i32[0] = *object;
        v302 = vmovl_u16(*&vmovl_u8(v73));
        v303.i64[0] = v302.u32[0];
        v303.i64[1] = v302.u32[1];
        v304.i64[0] = 255;
        v304.i64[1] = 255;
        v305 = vandq_s8(v303, v304);
        v303.i64[0] = v302.u32[2];
        v303.i64[1] = v302.u32[3];
        v306 = vshlq_u64(vandq_s8(v303, v304), xmmword_18071DBA0);
        v307.i32[1] = 0;
        v308 = vshlq_u64(v305, xmmword_18071DBB0);
        if (v118 != 4)
        {
          v307.i32[0] = *(object + 1);
          v309 = vmovl_u16(*&vmovl_u8(v307));
          v310.i64[0] = v309.u32[2];
          v310.i64[1] = v309.u32[3];
          v311 = vandq_s8(v310, v304);
          v310.i64[0] = v309.u32[0];
          v310.i64[1] = v309.u32[1];
          v306 = vorrq_s8(vshlq_u64(v311, xmmword_18071DBD0), v306);
          v308 = vorrq_s8(vshlq_u64(vandq_s8(v310, v304), xmmword_18071DBC0), v308);
        }

        v312 = vorrq_s8(v308, v306);
        v76 = vorr_s8(*v312.i8, *&vextq_s8(v312, v312, 8uLL));
        if (v116 != v118)
        {
          v117 = 8 * v118;
          goto LABEL_222;
        }
      }

      else
      {
        v76 = 0;
        v117 = 0;
        v118 = 0;
LABEL_222:
        v313 = v116 - v118;
        v314 = &object[v118];
        do
        {
          v315 = *v314++;
          v76 |= v315 << (v117 & 0x38);
          v117 += 8;
          --v313;
        }

        while (v313);
      }

      if (countAndFlagsBits < 9)
      {
        v316 = 0;
        v119 = v361;
        v120 = v365;
      }

      else
      {
        v316 = 0;
        v317 = 0;
        v318 = (object + 8);
        v119 = v361;
        v120 = v365;
        do
        {
          v319 = *v318++;
          v316 |= v319 << v317;
          v317 += 8;
          --v115;
        }

        while (v115);
      }

      v320 = 0xA000000000000000;
      if (((v316 | v76) & 0x8080808080808080) == 0)
      {
        v320 = 0xE000000000000000;
      }

      v75 = v320 | (countAndFlagsBits << 56) | v316;
      goto LABEL_116;
    }

    if (!countAndFlagsBits)
    {
      goto LABEL_95;
    }

    v38 = 0;
    v77 = &object[countAndFlagsBits];
    v74 = 1;
    v78 = object;
    v79 = object;
    while (1)
    {
      v81 = *v79++;
      v80 = v81;
      if ((v81 & 0x80000000) == 0)
      {
        v82 = 1;
        goto LABEL_56;
      }

      if ((v80 + 11) <= 0xCCu)
      {
        LOBYTE(v367._countAndFlagsBits) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v80);
        goto LABEL_97;
      }

      if (v80 > 0xDFu)
      {
        break;
      }

      if (v79 == v77 || (*v79 & 0xC0) != 0x80)
      {
LABEL_249:
        v340 = 4;
        goto LABEL_250;
      }

      v74 = 0;
      v79 = v78 + 2;
      v82 = 2;
LABEL_56:
      v38 += v82;
      v78 = v79;
      if (v79 == v77)
      {
        goto LABEL_49;
      }
    }

    if (v80 == 224)
    {
      if (v79 == v77)
      {
        goto LABEL_249;
      }

      if (v78[1] - 192 < 0xFFFFFFE0)
      {
        goto LABEL_257;
      }

      goto LABEL_80;
    }

    if (v80 <= 0xECu)
    {
      goto LABEL_78;
    }

    if (v80 == 237)
    {
      if (v79 == v77)
      {
        goto LABEL_249;
      }

      v83 = v78[1];
      if (v83 > 0x9F || (v83 & 0xC0) != 0x80)
      {
        v340 = 1;
        goto LABEL_250;
      }

      goto LABEL_80;
    }

    if (v80 <= 0xEFu)
    {
LABEL_78:
      if (v79 == v77 || (v78[1] & 0xC0) != 0x80)
      {
        goto LABEL_249;
      }

LABEL_80:
      if (v78 + 2 == v77 || (v78[2] & 0xC0) != 0x80)
      {
        goto LABEL_249;
      }

      v74 = 0;
      v79 = v78 + 3;
      v82 = 3;
      goto LABEL_56;
    }

    if (v80 == 240)
    {
      if (v79 == v77)
      {
        goto LABEL_249;
      }

      if (v78[1] - 192 < 0xFFFFFFD0)
      {
LABEL_257:
        v340 = 3;
        goto LABEL_250;
      }

      goto LABEL_90;
    }

    if (v80 <= 0xF3u)
    {
      if (v79 == v77 || (v78[1] & 0xC0) != 0x80)
      {
        goto LABEL_249;
      }

      goto LABEL_90;
    }

    if (v79 == v77)
    {
      goto LABEL_249;
    }

    v84 = v78[1];
    if (v84 <= 0x8F && (v84 & 0xC0) == 0x80)
    {
LABEL_90:
      if (v78 + 2 == v77 || (v78[2] & 0xC0) != 0x80 || v78 + 3 == v77 || (v78[3] & 0xC0) != 0x80)
      {
        goto LABEL_249;
      }

      v74 = 0;
      v79 = v78 + 4;
      v82 = 4;
      goto LABEL_56;
    }

    v340 = 2;
LABEL_250:
    LOBYTE(v367._countAndFlagsBits) = v340;
LABEL_97:
    swift_willThrowTypedImpl(&v367, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
    v85 = specialized Collection.subscript.getter(v38, object, countAndFlagsBits);
    v90 = findInvalidRange #1 (_:) in validateUTF8(_:)(v85, v86, v87, v88);
    v367._countAndFlagsBits = 0;
    v367._object = 0xE000000000000000;
    if (__OFADD__(countAndFlagsBits, 15))
    {
LABEL_263:
      __break(1u);
LABEL_264:
      if ((v39 & 0x1000000000000000) != 0)
      {
        v40 = _StringGuts._foreignConvertedToSmall()(v40, v39);
        v347 = v346;
        v39;
        v39 = v347;
      }

      else
      {
        if ((v40 & 0x1000000000000000) != 0)
        {
          v343 = ((v39 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v344 = v40 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v343 = _StringObject.sharedUTF8.getter(v40, v39);
        }

        closure #1 in _StringGuts._convertedToSmall()(v343, v344, &v367, v48);
        v39;
        v39 = v367._object;
        v40 = v367._countAndFlagsBits;
      }

      continue;
    }

    break;
  }

  v39 = v89;
  v38 = &v367;
  _StringGuts.reserveCapacity(_:)(countAndFlagsBits + 15);
  v91 = v90;
  while (1)
  {
    v92 = specialized Collection.subscript.getter(v91, object, countAndFlagsBits);
    v96 = v367._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v367._object & 0x2000000000000000) != 0)
    {
      v96 = (v367._object >> 56) & 0xF;
    }

    v97 = __OFADD__(v96, countAndFlagsBits);
    v98 = v96 + countAndFlagsBits;
    if (v97)
    {
      __break(1u);
LABEL_255:
      __break(1u);
LABEL_256:
      __break(1u);
      goto LABEL_257;
    }

    v40 = v92;
    if (__OFADD__(v98, 3))
    {
      goto LABEL_255;
    }

    v1 = v93;
    v99 = v94;
    v100 = v95;
    _StringGuts.reserveCapacity(_:)(v98 + 3);
    v101 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v40, v1, v99, v100);
    v103 = v102;
    v38 = v367._object & 0xFFFFFFFFFFFFFFFLL;
    v40 = (v367._object & 0xFFFFFFFFFFFFFFFLL) + 32;
    specialized UnsafeMutablePointer.initialize(from:count:)(v101, v102, (v40 + (*((v367._object & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL)));
    v104 = *(v38 + 24) & 0xFFFFFFFFFFFFLL;
    v105 = v104 + v103;
    if (__OFADD__(v104, v103))
    {
      goto LABEL_256;
    }

    v106 = v105 | 0x3000000000000000;
    *(v38 + 24) = v105 | 0x3000000000000000;
    *(v40 + (v105 & 0xFFFFFFFFFFFFLL)) = 0;
    if ((*(v38 + 16) & 0x8000000000000000) != 0)
    {
      v107 = __StringStorage._breadcrumbsAddress.getter();
      v108 = *v107;
      *v107 = 0;
      v108;
      v106 = *(v38 + 24);
    }

    v367._countAndFlagsBits = v106;
    specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(0xFFFDu, &v367._countAndFlagsBits);
    v109 = specialized Collection.subscript.getter(v39, object, countAndFlagsBits);
    object = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v109, v110, v111, v112);
    countAndFlagsBits = v113;
    if ((validateUTF8(_:)(object, v113) & 0x8000000000000000) == 0)
    {
      break;
    }

    v39 = v114;
    if (!countAndFlagsBits)
    {
      goto LABEL_114;
    }
  }

  _StringGuts.appendInPlace(_:isASCII:)(object, countAndFlagsBits, 0);
LABEL_114:
  v75 = v367._object;
  v76 = v367._countAndFlagsBits;
LABEL_115:
  v119 = v361;
  v120 = v365;
LABEL_116:
  v121 = v374;
  v122 = HIBYTE(v374) & 0xF;
  if ((v374 & 0x2000000000000000) == 0)
  {
    v122 = v373 & 0xFFFFFFFFFFFFLL;
  }

  if (!v122 && (v373 & ~v374 & 0x2000000000000000) == 0)
  {
    v374;
    v373 = v76;
    v374 = v75;
    goto LABEL_128;
  }

  if ((v374 & 0x2000000000000000) != 0)
  {
    if ((v75 & 0x2000000000000000) != 0)
    {
      v124 = specialized _SmallString.init(_:appending:)(v373, v374, v76, v75);
      if (v126)
      {
        goto LABEL_126;
      }

      v300 = v124;
      v301 = v125;
      v121;
      v75;
      v373 = v300;
      v374 = v301;
      v75 = v301;
      v76 = v300;
      goto LABEL_128;
    }

LABEL_124:
    v123 = v76 & 0xFFFFFFFFFFFFLL;
    goto LABEL_127;
  }

  if ((v75 & 0x2000000000000000) == 0)
  {
    goto LABEL_124;
  }

LABEL_126:
  v123 = HIBYTE(v75) & 0xF;
LABEL_127:
  v75;
  _StringGuts.append(_:)(v76, v75, 0, v123, v127, v128, v129, v130, v131, v132, v133, v134);
  swift_bridgeObjectRelease_n(v75, 2);
  v76 = v373;
  v75 = v374;
LABEL_128:
  v135 = HIBYTE(v75) & 0xF;
  if ((v75 & 0x2000000000000000) == 0)
  {
    v135 = v76 & 0xFFFFFFFFFFFFLL;
  }

  if (v135 || (v76 & ~v75 & 0x2000000000000000) != 0)
  {
    if ((v75 & 0x2000000000000000) != 0 && (v136 = specialized _SmallString.init(_:appending:)(v76, v75, 0x283EuLL, 0xE200000000000000), (v138 & 1) == 0))
    {
      v147 = v136;
      v148 = v137;
      v75;
      0xE200000000000000;
      v373 = v147;
      v374 = v148;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(10302, 0xE200000000000000, 0, 2, v139, v140, v141, v142, v143, v144, v145, v146);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v75;
    v373 = 10302;
    v374 = 0xE200000000000000;
  }

  v149 = *(v362 + 24);
  swift_getAssociatedTypeWitness(255, v149, v119, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v151 = v150;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v149, v119, v150, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v153 = *(AssociatedConformanceWitness + 56);
  v154 = swift_checkMetadataState(0, v151);
  v155 = v363;
  v153(0, v154, AssociatedConformanceWitness);
  v368 = v119;
  v156 = __swift_allocate_boxed_opaque_existential_0Tm(&v367);
  memcpy(v156, v155, v2);
  v157 = v368;
  v158 = __swift_project_boxed_opaque_existential_0Tm(&v367, v368);
  DynamicType = swift_getDynamicType(v158, v157, 1);
  LODWORD(v157) = swift_isOptionalType(DynamicType);
  __swift_destroy_boxed_opaque_existential_1Tm(&v367._countAndFlagsBits);
  if (v157)
  {
    v160 = v366;
    memcpy(v366, v155, v2);
    v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v367, v160, v119, v161, 7uLL);
    goto LABEL_140;
  }

  v176 = v358;
  memcpy(v358, v155, v2);
  if ((swift_dynamicCast(&v367, v176, v119, &type metadata for String, 6uLL) & 1) == 0)
  {
    v200 = v355;
    memcpy(v355, v155, v2);
    v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
    if (swift_dynamicCast(&v370, v200, v119, v201, 6uLL))
    {
      _ss9CodingKey_pWOb_0(&v370, &v367);
      v202 = v368;
      v203 = v369;
      __swift_project_boxed_opaque_existential_0Tm(&v367, v368);
      (*(v203 + 8))(&v373, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v202, v203);
    }

    else
    {
      v372 = 0;
      v370 = 0u;
      v371 = 0u;
      outlined destroy of _HasContiguousBytes?(&v370, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
      v288 = v352;
      memcpy(v352, v155, v2);
      v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
      if (swift_dynamicCast(&v370, v288, v119, v289, 6uLL))
      {
        _ss9CodingKey_pWOb_0(&v370, &v367);
        v290 = v368;
        v291 = v369;
        __swift_project_boxed_opaque_existential_0Tm(&v367, v368);
        v164 = (*(v291 + 8))(v290, v291);
      }

      else
      {
        v372 = 0;
        v370 = 0u;
        v371 = 0u;
        outlined destroy of _HasContiguousBytes?(&v370, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
        v324 = v349;
        memcpy(v349, v155, v2);
        v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
        if (!swift_dynamicCast(&v370, v324, v119, v325, 6uLL))
        {
          v372 = 0;
          v370 = 0u;
          v371 = 0u;
          outlined destroy of _HasContiguousBytes?(&v370, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
          *(&v371 + 1) = v119;
          v331 = __swift_allocate_boxed_opaque_existential_0Tm(&v370);
          memcpy(v331, v155, v2);
          Mirror.init(reflecting:)(&v370, &v367);
          v332 = v367._object;
          v333 = v369;
          _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v155, &v367, &v373, 0, v119, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
          v333;
          v332;
          goto LABEL_153;
        }

        _ss9CodingKey_pWOb_0(&v370, &v367);
LABEL_140:
        v162 = v368;
        v163 = v369;
        __swift_project_boxed_opaque_existential_0Tm(&v367, v368);
        v164 = (*(v163 + 8))(v162, v163);
      }

      v174 = v165;
      v175 = HIBYTE(v374) & 0xF;
      if ((v374 & 0x2000000000000000) == 0)
      {
        v175 = v373 & 0xFFFFFFFFFFFFLL;
      }

      if (v175 || (v373 & ~v374 & 0x2000000000000000) != 0)
      {
        _StringGuts.append(_:)(v164, v165, v166, v167, v168, v169, v170, v171, v172, v173);
        v174;
      }

      else
      {
        v321 = v164;
        v374;
        v373 = v321;
        v374 = v174;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v367._countAndFlagsBits);
    goto LABEL_153;
  }

  v185 = v367._object;
  v186 = HIBYTE(v374) & 0xF;
  if ((v374 & 0x2000000000000000) == 0)
  {
    v186 = v373 & 0xFFFFFFFFFFFFLL;
  }

  if (v186 || (v373 & ~v374 & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(v367._countAndFlagsBits, v367._object, v177, v178, v179, v180, v181, v182, v183, v184);
    v185;
  }

  else
  {
    v330 = v367._countAndFlagsBits;
    v374;
    v373 = v330;
    v374 = v185;
  }

LABEL_153:
  v187 = v374;
  v188 = HIBYTE(v374) & 0xF;
  if ((v374 & 0x2000000000000000) == 0)
  {
    v188 = v373 & 0xFFFFFFFFFFFFLL;
  }

  if (v188 || (v373 & ~v374 & 0x2000000000000000) != 0)
  {
    if ((v374 & 0x2000000000000000) != 0 && (v189 = specialized _SmallString.init(_:appending:)(v373, v374, 0x202CuLL, 0xE200000000000000), (v191 & 1) == 0))
    {
      v204 = v189;
      v205 = v190;
      v187;
      0xE200000000000000;
      v373 = v204;
      v374 = v205;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v192, v193, v194, v195, v196, v197, v198, v199);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v374;
    v373 = 8236;
    v374 = 0xE200000000000000;
  }

  v206 = v364;
  v153(1, v154, AssociatedConformanceWitness);
  v368 = v119;
  v207 = __swift_allocate_boxed_opaque_existential_0Tm(&v367);
  memcpy(v207, v206, v2);
  v208 = v368;
  v209 = __swift_project_boxed_opaque_existential_0Tm(&v367, v368);
  v210 = swift_getDynamicType(v209, v208, 1);
  LODWORD(v208) = swift_isOptionalType(v210);
  __swift_destroy_boxed_opaque_existential_1Tm(&v367._countAndFlagsBits);
  if (v208)
  {
    v211 = v366;
    memcpy(v366, v206, v2);
    v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v367, v211, v119, v212, 7uLL);
    goto LABEL_166;
  }

  v227 = v359;
  memcpy(v359, v206, v2);
  if (swift_dynamicCast(&v367, v227, v119, &type metadata for String, 6uLL))
  {
    v228 = v367._object;
    String.write(_:)(v367);
    v228;
    goto LABEL_175;
  }

  v242 = v356;
  memcpy(v356, v206, v2);
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v370, v242, v119, v243, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v370, &v367);
    v244 = v368;
    v245 = v369;
    __swift_project_boxed_opaque_existential_0Tm(&v367, v368);
    (*(v245 + 8))(&v373, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v244, v245);
LABEL_172:
    __swift_destroy_boxed_opaque_existential_1Tm(&v367._countAndFlagsBits);
    goto LABEL_175;
  }

  v372 = 0;
  v370 = 0u;
  v371 = 0u;
  outlined destroy of _HasContiguousBytes?(&v370, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v292 = v353;
  memcpy(v353, v206, v2);
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v370, v292, v119, v293, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v370, &v367);
    v294 = v368;
    v295 = v369;
    __swift_project_boxed_opaque_existential_0Tm(&v367, v368);
    v215 = (*(v295 + 8))(v294, v295);
LABEL_167:
    v225 = v216;
    v226 = HIBYTE(v374) & 0xF;
    if ((v374 & 0x2000000000000000) == 0)
    {
      v226 = v373 & 0xFFFFFFFFFFFFLL;
    }

    if (v226 || (v373 & ~v374 & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v215, v216, v217, v218, v219, v220, v221, v222, v223, v224);
      v225;
    }

    else
    {
      v322 = v215;
      v374;
      v373 = v322;
      v374 = v225;
    }

    goto LABEL_172;
  }

  v372 = 0;
  v370 = 0u;
  v371 = 0u;
  outlined destroy of _HasContiguousBytes?(&v370, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v326 = v350;
  memcpy(v350, v206, v2);
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v370, v326, v119, v327, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v370, &v367);
LABEL_166:
    v213 = v368;
    v214 = v369;
    __swift_project_boxed_opaque_existential_0Tm(&v367, v368);
    v215 = (*(v214 + 8))(v213, v214);
    goto LABEL_167;
  }

  v372 = 0;
  v370 = 0u;
  v371 = 0u;
  outlined destroy of _HasContiguousBytes?(&v370, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v371 + 1) = v119;
  v334 = __swift_allocate_boxed_opaque_existential_0Tm(&v370);
  memcpy(v334, v206, v2);
  Mirror.init(reflecting:)(&v370, &v367);
  v335 = v367._object;
  v336 = v369;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v206, &v367, &v373, 0, v119, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v336;
  v335;
LABEL_175:
  v229 = v374;
  v230 = HIBYTE(v374) & 0xF;
  if ((v374 & 0x2000000000000000) == 0)
  {
    v230 = v373 & 0xFFFFFFFFFFFFLL;
  }

  if (v230 || (v373 & ~v374 & 0x2000000000000000) != 0)
  {
    if ((v374 & 0x2000000000000000) != 0 && (v231 = specialized _SmallString.init(_:appending:)(v373, v374, 0x202CuLL, 0xE200000000000000), (v233 & 1) == 0))
    {
      v246 = v231;
      v247 = v232;
      v229;
      0xE200000000000000;
      v373 = v246;
      v374 = v247;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v234, v235, v236, v237, v238, v239, v240, v241);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v374;
    v373 = 8236;
    v374 = 0xE200000000000000;
  }

  v153(2, v154, AssociatedConformanceWitness);
  v368 = v119;
  v248 = __swift_allocate_boxed_opaque_existential_0Tm(&v367);
  memcpy(v248, v120, v2);
  v249 = v368;
  v250 = __swift_project_boxed_opaque_existential_0Tm(&v367, v368);
  v251 = swift_getDynamicType(v250, v249, 1);
  LODWORD(v249) = swift_isOptionalType(v251);
  __swift_destroy_boxed_opaque_existential_1Tm(&v367._countAndFlagsBits);
  if (v249)
  {
    v252 = v366;
    memcpy(v366, v120, v2);
    v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v367, v252, v119, v253, 7uLL);
    goto LABEL_188;
  }

  v268 = v360;
  memcpy(v360, v120, v2);
  if (swift_dynamicCast(&v367, v268, v119, &type metadata for String, 6uLL))
  {
    v269 = v367._object;
    String.write(_:)(v367);
    v269;
    goto LABEL_197;
  }

  v283 = v357;
  memcpy(v357, v120, v2);
  v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v370, v283, v119, v284, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v370, &v367);
    v285 = v368;
    v286 = v369;
    __swift_project_boxed_opaque_existential_0Tm(&v367, v368);
    (*(v286 + 8))(&v373, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v285, v286);
LABEL_194:
    __swift_destroy_boxed_opaque_existential_1Tm(&v367._countAndFlagsBits);
    goto LABEL_197;
  }

  v372 = 0;
  v370 = 0u;
  v371 = 0u;
  outlined destroy of _HasContiguousBytes?(&v370, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v296 = v354;
  memcpy(v354, v120, v2);
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v370, v296, v119, v297, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v370, &v367);
    v298 = v368;
    v299 = v369;
    __swift_project_boxed_opaque_existential_0Tm(&v367, v368);
    v256 = (*(v299 + 8))(v298, v299);
LABEL_189:
    v266 = v257;
    v267 = HIBYTE(v374) & 0xF;
    if ((v374 & 0x2000000000000000) == 0)
    {
      v267 = v373 & 0xFFFFFFFFFFFFLL;
    }

    if (v267 || (v373 & ~v374 & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v256, v257, v258, v259, v260, v261, v262, v263, v264, v265);
      v266;
    }

    else
    {
      v323 = v256;
      v374;
      v373 = v323;
      v374 = v266;
    }

    goto LABEL_194;
  }

  v372 = 0;
  v370 = 0u;
  v371 = 0u;
  outlined destroy of _HasContiguousBytes?(&v370, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v328 = v351;
  memcpy(v351, v120, v2);
  v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v370, v328, v119, v329, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v370, &v367);
LABEL_188:
    v254 = v368;
    v255 = v369;
    __swift_project_boxed_opaque_existential_0Tm(&v367, v368);
    v256 = (*(v255 + 8))(v254, v255);
    goto LABEL_189;
  }

  v372 = 0;
  v370 = 0u;
  v371 = 0u;
  outlined destroy of _HasContiguousBytes?(&v370, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v371 + 1) = v119;
  v337 = __swift_allocate_boxed_opaque_existential_0Tm(&v370);
  memcpy(v337, v120, v2);
  Mirror.init(reflecting:)(&v370, &v367);
  v338 = v367._object;
  v339 = v369;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v120, &v367, &v373, 0, v119, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v339;
  v338;
LABEL_197:
  v270 = v374;
  v271 = HIBYTE(v374) & 0xF;
  if ((v374 & 0x2000000000000000) == 0)
  {
    v271 = v373 & 0xFFFFFFFFFFFFLL;
  }

  if (v271 || (v373 & ~v374 & 0x2000000000000000) != 0)
  {
    if ((v374 & 0x2000000000000000) != 0 && (v272 = specialized _SmallString.init(_:appending:)(v373, v374, 0x29uLL, 0xE100000000000000), (v273 & 1) == 0))
    {
      v287 = v272;
      v270;
      0xE100000000000000;
      return v287;
    }

    else
    {
      0xE100000000000000;
      _StringGuts.append(_:)(41, 0xE100000000000000, 0, 1, v274, v275, v276, v277, v278, v279, v280, v281);
      swift_bridgeObjectRelease_n(0xE100000000000000, 2);
      return v373;
    }
  }

  else
  {
    v374;
    return 41;
  }
}

uint64_t SIMD3<>.init<A>(_:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, void (*a4)(char *, const char *, uint64_t, const char *, uint64_t)@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v51 = a6;
  v52 = a4;
  v55 = a1;
  v48 = a8;
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v17 = v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v16, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v19 = *(AssociatedConformanceWitness + 48);
  v47 = v17;
  v20 = AssociatedConformanceWitness;
  v19(v17);
  v46 = a7;
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v22 = v21;
  v23 = a7;
  v24 = a3;
  v49 = a3;
  v53 = v22;
  v25 = swift_getAssociatedConformanceWitness(v23, a3, v22, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v54 = v25;
  v26 = *(v25 + 56);
  v27 = swift_checkMetadataState(0, v22);
  v26(0, v27, v25);
  v50 = *(v52 + 2);
  v28 = *(v50 + 72);
  v51 = *(v51 + 8);
  v52 = v28;
  v29 = v45;
  v44 = a2;
  (v28)(v14, v24);
  v30 = v20;
  v42 = *(v20 + 64);
  v43 = v20;
  v31 = v47;
  v42(v29, 0, v47, v30);
  v32 = swift_checkMetadataState(0, v53);
  v26(1, v32, v54);
  v33 = v44;
  v52(v14, v49, v51, v44, v50);
  v34 = v31;
  v35 = v42;
  v36 = v43;
  v42(v29, 1, v34, v43);
  v37 = swift_checkMetadataState(0, v53);
  v26(2, v37, v54);
  v38 = v49;
  v52(v14, v49, v51, v33, v50);
  v35(v29, 2, v47, v36);
  v40 = type metadata accessor for SIMD3(0, v38, v46, v39);
  return (*(*(v40 - 8) + 8))(v55, v40);
}

uint64_t SIMD3<>.init<A>(_:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v49 = a4;
  v50 = a6;
  v51 = a1;
  v43 = a8;
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v18 = v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v17, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v42 = v18;
  (*(AssociatedConformanceWitness + 48))(v18, AssociatedConformanceWitness);
  v40 = a7;
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v20 = v19;
  v44 = a3;
  v46 = v19;
  v21 = swift_getAssociatedConformanceWitness(a7, a3, v19, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v22 = *(v21 + 56);
  v47 = v21;
  v48 = v22;
  v23 = swift_checkMetadataState(0, v20);
  v22(0, v23, v21);
  v24 = v50;
  v45 = *(v49 + 80);
  v39 = a2;
  v45(v14, a3, v50, a2);
  v25 = v42;
  v38 = *(AssociatedConformanceWitness + 64);
  (v38)(v16, 0, v42);
  v26 = swift_checkMetadataState(0, v46);
  v48(1, v26, v47);
  v27 = v24;
  v28 = v39;
  v29 = v49;
  (v45)(v14, v44, v27, v39, v49);
  v30 = v25;
  v31 = AssociatedConformanceWitness;
  v32 = v38;
  v38(v16, 1, v30, AssociatedConformanceWitness);
  v33 = swift_checkMetadataState(0, v46);
  v48(2, v33, v47);
  v34 = v44;
  (v45)(v14, v44, v50, v28, v29);
  v32(v16, 2, v42, v31);
  v36 = type metadata accessor for SIMD3(0, v34, v40, v35);
  return (*(*(v36 - 8) + 8))(v51, v36);
}

uint64_t (*UInt8.SIMD2Storage.subscript.modify(uint64_t a1, uint64_t a2))()
{
  *a1 = a2;
  *(a1 + 8) = v2;
  v3 = *v2;
  *(a1 + 16) = v3;
  LODWORD(v4) = v3;
  HIDWORD(v4) = v2[1];
  *(a1 + 17) = BYTE4(v4);
  v6 = v4;
  *(a1 + 18) = *(&v6 & 0xFFFFFFFFFFFFFFFBLL | (4 * (a2 & 1)));
  return UInt8.SIMD2Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt8.SIMD2Storage(uint64_t a1, uint64_t a2))()
{
  *a1 = a2;
  *(a1 + 8) = v2;
  v3 = *v2;
  *(a1 + 16) = v3;
  LODWORD(v4) = v3;
  HIDWORD(v4) = v2[1];
  *(a1 + 17) = BYTE4(v4);
  v6 = v4;
  *(a1 + 18) = *(&v6 & 0xFFFFFFFFFFFFFFFBLL | (4 * (a2 & 1)));
  return UInt8.SIMD2Storage.subscript.modify;
}

uint64_t (*UInt8.SIMD4Storage.subscript.modify(uint64_t a1, uint64_t a2, uint8x8_t a3))()
{
  *a1 = a2;
  *(a1 + 8) = v3;
  a3.i32[0] = *v3;
  *(a1 + 16) = *v3;
  v5 = vmovl_u8(a3).u64[0];
  *(a1 + 20) = *(&v5 & 0xFFFFFFFFFFFFFFF9 | (2 * (a2 & 3)));
  return UInt8.SIMD4Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt8.SIMD4Storage(uint64_t a1, uint64_t a2, uint8x8_t a3))()
{
  *a1 = a2;
  *(a1 + 8) = v3;
  a3.i32[0] = *v3;
  *(a1 + 16) = *v3;
  v5 = vmovl_u8(a3).u64[0];
  *(a1 + 20) = *(&v5 & 0xFFFFFFFFFFFFFFF9 | (2 * (a2 & 3)));
  return UInt8.SIMD4Storage.subscript.modify;
}

uint64_t (*UInt8.SIMD8Storage.subscript.modify(uint64_t a1, uint64_t a2))()
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = *v2;
  *(a1 + 24) = *(a1 + 16 + (a2 & 7));
  return UInt8.SIMD8Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt8.SIMD8Storage(uint64_t a1, uint64_t a2))()
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = *v2;
  *(a1 + 24) = *(a1 + 16 + (a2 & 7));
  return UInt8.SIMD8Storage.subscript.modify;
}

uint64_t (*UInt8.SIMD16Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0xD95uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[2] = a2;
  v5[3] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  *(v5 + 32) = *(&v8 | a2 & 0xF);
  return UInt8.SIMD16Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt8.SIMD16Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x7897uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[2] = a2;
  v5[3] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  *(v5 + 32) = *(&v8 | a2 & 0xF);
  return UInt8.SIMD16Storage.subscript.modify;
}

uint64_t (*UInt8.SIMD32Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0x9EBEuLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  *(v5 + 48) = *(v9 + (a2 & 0x1F));
  return UInt8.SIMD32Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt8.SIMD32Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0x2AF8uLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  *(v5 + 48) = *(v9 + (a2 & 0x1F));
  return UInt8.SIMD32Storage.subscript.modify;
}

uint64_t (*UInt8.SIMD64Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0x70B1uLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  *(v5 + 80) = *(v11 + (a2 & 0x3F));
  return UInt8.SIMD64Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt8.SIMD64Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0xB08uLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  *(v5 + 80) = *(v11 + (a2 & 0x3F));
  return UInt8.SIMD64Storage.subscript.modify;
}

uint64_t Int8.SIMD2Storage.subscript.getter(char a1, __int16 a2)
{
  LODWORD(v2) = a2;
  HIDWORD(v2) = HIBYTE(a2);
  v4 = v2;
  return *(&v4 & 0xFFFFFFFFFFFFFFFBLL | (4 * (a1 & 1)));
}

__n128 _ss5UInt8V12SIMD2StorageVyABSicipADTK_0@<Q0>(_BYTE *a1@<X0>, _DWORD *a2@<X1>, _BYTE *a3@<X8>, double a4@<D0>)
{
  LOBYTE(a4) = *a1;
  BYTE4(a4) = a1[1];
  v4 = (&v6 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a2 & 1)));
  v6 = a4;
  *a3 = *v4;
  result.n128_u32[0] = LODWORD(a4);
  result.n128_u8[4] = BYTE4(a4);
  return result;
}

uint64_t (*Int8.SIMD2Storage.subscript.modify(uint64_t a1, uint64_t a2))()
{
  *a1 = a2;
  *(a1 + 8) = v2;
  v3 = *v2;
  *(a1 + 16) = v3;
  LODWORD(v4) = v3;
  HIDWORD(v4) = v2[1];
  *(a1 + 17) = BYTE4(v4);
  v6 = v4;
  *(a1 + 18) = *(&v6 & 0xFFFFFFFFFFFFFFFBLL | (4 * (a2 & 1)));
  return UInt8.SIMD2Storage.subscript.modify;
}

__n128 _ss5UInt8V12SIMD2StorageVs11SIMDStoragessAEPy6ScalarQzSicigTW_0@<Q0>(char a1@<W0>, _BYTE *a2@<X8>, double a3@<D0>)
{
  LOBYTE(a3) = *v3;
  BYTE4(a3) = v3[1];
  v5 = a3;
  *a2 = *(&v5 & 0xFFFFFFFFFFFFFFFBLL | (4 * (a1 & 1)));
  result.n128_u32[0] = LODWORD(a3);
  result.n128_u8[4] = BYTE4(a3);
  return result;
}

double (*protocol witness for SIMDStorage.subscript.modify in conformance Int8.SIMD2Storage(uint64_t a1, uint64_t a2))(uint64_t a1, double a2)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  v3 = *v2;
  *(a1 + 16) = v3;
  LODWORD(v4) = v3;
  HIDWORD(v4) = v2[1];
  *(a1 + 17) = BYTE4(v4);
  v6 = v4;
  *(a1 + 18) = *(&v6 & 0xFFFFFFFFFFFFFFFBLL | (4 * (a2 & 1)));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int8.SIMD2Storage;
}

double protocol witness for SIMDStorage.subscript.modify in conformance Int8.SIMD2Storage(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 16);
  BYTE4(a2) = *(a1 + 17);
  v2 = *(a1 + 8);
  v3 = (&v6 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a1 & 1)));
  v4 = *(a1 + 18);
  v6 = a2;
  *v3 = v4;
  result = v6;
  v2[1] = BYTE4(v6);
  *v2 = LOBYTE(result);
  return result;
}

uint64_t Int8.SIMD4Storage.subscript.getter(char a1, __int32 a2, int8x8_t a3)
{
  a3.i32[0] = a2;
  v4 = vzip1_s8(a3, a3);
  return *(&v4 & 0xFFFFFFFFFFFFFFF9 | (2 * (a1 & 3)));
}

double _ss5UInt8V12SIMD4StorageVyABSicipADTK_0@<D0>(__int32 *a1@<X0>, _DWORD *a2@<X1>, _BYTE *a3@<X8>, uint8x8_t a4@<D0>)
{
  a4.i32[0] = *a1;
  *&result = vmovl_u8(a4).u64[0];
  v5 = (&v6 & 0xFFFFFFFFFFFFFFF9 | (2 * (*a2 & 3)));
  v6 = result;
  *a3 = *v5;
  return result;
}

uint64_t (*Int8.SIMD4Storage.subscript.modify(uint64_t a1, uint64_t a2, uint8x8_t a3))()
{
  *a1 = a2;
  *(a1 + 8) = v3;
  a3.i32[0] = *v3;
  *(a1 + 16) = *v3;
  v5 = vmovl_u8(a3).u64[0];
  *(a1 + 20) = *(&v5 & 0xFFFFFFFFFFFFFFF9 | (2 * (a2 & 3)));
  return UInt8.SIMD4Storage.subscript.modify;
}

double _ss5UInt8V12SIMD4StorageVs11SIMDStoragessAEPy6ScalarQzSicigTW_0@<D0>(char a1@<W0>, _BYTE *a2@<X8>, uint8x8_t a3@<D0>)
{
  a3.i32[0] = *v3;
  *&result = vmovl_u8(a3).u64[0];
  v5 = result;
  *a2 = *(&v5 & 0xFFFFFFFFFFFFFFF9 | (2 * (a1 & 3)));
  return result;
}

int8x8_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int8.SIMD4Storage(uint64_t a1, uint64_t a2, uint8x8_t a3))(uint64_t a1, uint8x8_t a2)
{
  *a1 = a2;
  *(a1 + 8) = v3;
  a3.i32[0] = *v3;
  *(a1 + 16) = *v3;
  v5 = vmovl_u8(a3).u64[0];
  *(a1 + 20) = *(&v5 & 0xFFFFFFFFFFFFFFF9 | (2 * (a2 & 3)));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int8.SIMD4Storage;
}

int8x8_t protocol witness for SIMDStorage.subscript.modify in conformance Int8.SIMD4Storage(uint64_t a1, uint8x8_t a2)
{
  a2.i32[0] = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (&v6 & 0xFFFFFFFFFFFFFFF9 | (2 * (*a1 & 3)));
  v4 = *(a1 + 20);
  v6 = vmovl_u8(a2).u64[0];
  *v3 = v4;
  result = vuzp1_s8(v6, v6);
  *v2 = result.i32[0];
  return result;
}

double _ss5UInt8V12SIMD8StorageVyABSicipADTK_0@<D0>(double *a1@<X0>, _DWORD *a2@<X1>, _BYTE *a3@<X8>)
{
  result = *a1;
  v4 = (&v5 | *a2 & 7);
  v5 = *a1;
  *a3 = *v4;
  return result;
}

uint64_t (*Int8.SIMD8Storage.subscript.modify(uint64_t a1, uint64_t a2))()
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = *v2;
  *(a1 + 24) = *(a1 + 16 + (a2 & 7));
  return UInt8.SIMD8Storage.subscript.modify;
}

double _ss5UInt8V12SIMD8StorageVs11SIMDStoragessAEPxycfCTW_0@<D0>(void *a1@<X8>)
{
  result = 0.0;
  *a1 = 0;
  return result;
}

double _ss5UInt8V12SIMD8StorageVs11SIMDStoragessAEPy6ScalarQzSicigTW_0@<D0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  result = *v2;
  v4 = *v2;
  *a2 = *(&v4 | a1 & 7);
  return result;
}

double (*protocol witness for SIMDStorage.subscript.modify in conformance Int8.SIMD8Storage(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = *v2;
  *(a1 + 24) = *(a1 + 16 + (a2 & 7));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int8.SIMD8Storage;
}

double protocol witness for SIMDStorage.subscript.modify in conformance Int8.SIMD8Storage(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = (&v5 | *a1 & 7);
  v3 = *(a1 + 24);
  v5 = *(a1 + 16);
  *v2 = v3;
  result = v5;
  *v1 = v5;
  return result;
}

__n128 _ss5UInt8V13SIMD16StorageVyABSicipADTK_0@<Q0>(__n128 *a1@<X0>, _DWORD *a2@<X1>, _BYTE *a3@<X8>)
{
  result = *a1;
  v4 = (&v5 | *a2 & 0xF);
  v5 = *a1;
  *a3 = *v4;
  return result;
}

uint64_t (*Int8.SIMD16Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x1BFBuLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[2] = a2;
  v5[3] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  *(v5 + 32) = *(&v8 | a2 & 0xF);
  return UInt8.SIMD16Storage.subscript.modify;
}

double protocol witness for SIMDStorage.init() in conformance Float16.SIMD8Storage@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  return result;
}

__n128 _ss5UInt8V13SIMD16StorageVs11SIMDStoragessAEPy6ScalarQzSicigTW_0@<Q0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  result = *v2;
  *a2 = *(&v4 | a1 & 0xF);
  return result;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int8.SIMD16Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x5E81uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[2] = a2;
  v5[3] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  *(v5 + 32) = *(&v8 | a2 & 0xF);
  return protocol witness for SIMDStorage.subscript.modify in conformance Int8.SIMD16Storage;
}

void UInt8.SIMD16Storage.subscript.modify(void **a1)
{
  v1 = *a1;
  v2 = v1[3];
  v3 = (&v5 | v1[2] & 0xF);
  v4 = *(v1 + 32);
  v5 = *v1;
  *v3 = v4;
  *v2 = v5;
  free(v1);
}

__n128 _ss5UInt8V13SIMD32StorageVyABSicipADTK_0@<Q0>(__n128 *a1@<X0>, _DWORD *a2@<X1>, _BYTE *a3@<X8>)
{
  result = *a1;
  *a3 = *(&v4 + (*a2 & 0x1F));
  return result;
}

uint64_t (*Int8.SIMD32Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0xB7A9uLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  *(v5 + 48) = *(v9 + (a2 & 0x1F));
  return UInt8.SIMD32Storage.subscript.modify;
}

double protocol witness for SIMDStorage.init() in conformance Double.SIMD4Storage@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

__n128 _ss5UInt8V13SIMD32StorageVs11SIMDStoragessAEPy6ScalarQzSicigTW_0@<Q0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  result = *v2;
  *a2 = *(&v4 + (a1 & 0x1F));
  return result;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int8.SIMD32Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0x223AuLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  *(v5 + 48) = *(v9 + (a2 & 0x1F));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int8.SIMD32Storage;
}

void UInt8.SIMD32Storage.subscript.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(v1 + 40);
  *(v4 + (*(v1 + 32) & 0x1F)) = *(v1 + 48);
  v3 = v4[1];
  *v2 = v4[0];
  v2[1] = v3;
  free(v1);
}

void Int8.SIMD64Storage._value.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4[2] = a3;
  v4[3] = a4;
  *v4 = a1;
  v4[1] = a2;
}

uint64_t Int8.SIMD64Storage.subscript.getter(char a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v6[2] = a4;
  v6[3] = a5;
  v6[0] = a2;
  v6[1] = a3;
  return *(v6 + (a1 & 0x3F));
}

__n128 _ss5UInt8V13SIMD64StorageVyABSicipADTK_0@<Q0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, _BYTE *a3@<X8>)
{
  result = *a1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  v6 = *a2 & 0x3F;
  v7[2] = *(a1 + 32);
  v7[3] = v5;
  v7[0] = result;
  v7[1] = v4;
  *a3 = *(v7 + v6);
  return result;
}

uint64_t (*Int8.SIMD64Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0x5261uLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  *(v5 + 80) = *(v11 + (a2 & 0x3F));
  return UInt8.SIMD64Storage.subscript.modify;
}

double protocol witness for SIMDStorage.init() in conformance Double.SIMD8Storage@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

__n128 _ss5UInt8V13SIMD64StorageVs11SIMDStoragessAEPy6ScalarQzSicigTW_0@<Q0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  result = *v2;
  v4 = *(v2 + 16);
  v5 = *(v2 + 48);
  v6[2] = *(v2 + 32);
  v6[3] = v5;
  v6[0] = result;
  v6[1] = v4;
  *a2 = *(v6 + (a1 & 0x3F));
  return result;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int8.SIMD64Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0x8B81uLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  *(v5 + 80) = *(v11 + (a2 & 0x3F));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int8.SIMD64Storage;
}

__n128 UInt8.SIMD64Storage.subscript.modify(void **a1)
{
  v1 = *a1;
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[3];
  v5 = *(v1 + 9);
  v6 = v1[4] & 0x3F;
  v7 = *(v1 + 80);
  v14 = v1[2];
  v15 = v4;
  v12 = v2;
  v13 = v3;
  *(&v12 + v6) = v7;
  v9 = v12;
  v8 = v13;
  v10 = v15;
  v5[2] = v14;
  v5[3] = v10;
  *v5 = v9;
  v5[1] = v8;
  free(v1);
  return result;
}

uint64_t (*UInt16.SIMD2Storage.subscript.modify(uint64_t a1, uint64_t a2))()
{
  *a1 = a2;
  *(a1 + 8) = v2;
  v3 = *v2;
  *(a1 + 16) = v3;
  LODWORD(v4) = v3;
  HIDWORD(v4) = v2[1];
  *(a1 + 18) = WORD2(v4);
  v6 = v4;
  *(a1 + 20) = *(&v6 & 0xFFFFFFFFFFFFFFFBLL | (4 * (a2 & 1)));
  return UInt16.SIMD2Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt16.SIMD2Storage(uint64_t a1, uint64_t a2))()
{
  *a1 = a2;
  *(a1 + 8) = v2;
  v3 = *v2;
  *(a1 + 16) = v3;
  LODWORD(v4) = v3;
  HIDWORD(v4) = v2[1];
  *(a1 + 18) = WORD2(v4);
  v6 = v4;
  *(a1 + 20) = *(&v6 & 0xFFFFFFFFFFFFFFFBLL | (4 * (a2 & 1)));
  return UInt16.SIMD2Storage.subscript.modify;
}

uint64_t (*UInt16.SIMD4Storage.subscript.modify(uint64_t a1, uint64_t a2))()
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = *v2;
  *(a1 + 24) = *(a1 + 16 + 2 * (a2 & 3));
  return UInt16.SIMD4Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt16.SIMD4Storage(uint64_t a1, uint64_t a2))()
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = *v2;
  *(a1 + 24) = *(a1 + 16 + 2 * (a2 & 3));
  return UInt16.SIMD4Storage.subscript.modify;
}

uint64_t (*UInt16.SIMD8Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0xDB8AuLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[2] = a2;
  v5[3] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  *(v5 + 16) = *(&v8 & 0xFFFFFFFFFFFFFFF1 | (2 * (a2 & 7)));
  return UInt16.SIMD8Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt16.SIMD8Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x4066uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[2] = a2;
  v5[3] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  *(v5 + 16) = *(&v8 & 0xFFFFFFFFFFFFFFF1 | (2 * (a2 & 7)));
  return UInt16.SIMD8Storage.subscript.modify;
}

uint64_t (*UInt16.SIMD16Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0xBDD6uLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  *(v5 + 24) = *(v9 + (a2 & 0xF));
  return UInt16.SIMD16Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt16.SIMD16Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0x48uLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  *(v5 + 24) = *(v9 + (a2 & 0xF));
  return UInt16.SIMD16Storage.subscript.modify;
}

uint64_t (*UInt16.SIMD32Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0xB03FuLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  *(v5 + 40) = *(v11 + (a2 & 0x1F));
  return UInt16.SIMD32Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt16.SIMD32Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0x99C4uLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  *(v5 + 40) = *(v11 + (a2 & 0x1F));
  return UInt16.SIMD32Storage.subscript.modify;
}

uint64_t (*UInt16.SIMD64Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x100, 0xB342uLL);
  }

  else
  {
    v5 = malloc(0x100uLL);
  }

  *a1 = v5;
  v5[16] = a2;
  v5[17] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v15[6] = v13;
  v15[7] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[2] = v9;
  v15[3] = v8;
  v15[0] = v7;
  v15[1] = v6;
  *(v5 + 72) = *(v15 + (a2 & 0x3F));
  return UInt16.SIMD64Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt16.SIMD64Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x100, 0x48C0uLL);
  }

  else
  {
    v5 = malloc(0x100uLL);
  }

  *a1 = v5;
  v5[16] = a2;
  v5[17] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v15[6] = v13;
  v15[7] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[2] = v9;
  v15[3] = v8;
  v15[0] = v7;
  v15[1] = v6;
  *(v5 + 72) = *(v15 + (a2 & 0x3F));
  return UInt16.SIMD64Storage.subscript.modify;
}

uint64_t Int16.SIMD2Storage.subscript.getter(char a1, __int32 a2, uint16x4_t a3)
{
  a3.i32[0] = a2;
  v4 = vmovl_u16(a3).u64[0];
  return *(&v4 & 0xFFFFFFFFFFFFFFFBLL | (4 * (a1 & 1)));
}

__n128 _ss6UInt16V12SIMD2StorageVyABSicipADTK_0@<Q0>(_WORD *a1@<X0>, _DWORD *a2@<X1>, _WORD *a3@<X8>, double a4@<D0>)
{
  LOWORD(a4) = *a1;
  WORD2(a4) = a1[1];
  v4 = (&v6 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a2 & 1)));
  v6 = a4;
  *a3 = *v4;
  result.n128_u32[0] = LODWORD(a4);
  result.n128_u16[2] = WORD2(a4);
  return result;
}

uint64_t (*Int16.SIMD2Storage.subscript.modify(uint64_t a1, uint64_t a2))()
{
  *a1 = a2;
  *(a1 + 8) = v2;
  v3 = *v2;
  *(a1 + 16) = v3;
  LODWORD(v4) = v3;
  HIDWORD(v4) = v2[1];
  *(a1 + 18) = WORD2(v4);
  v6 = v4;
  *(a1 + 20) = *(&v6 & 0xFFFFFFFFFFFFFFFBLL | (4 * (a2 & 1)));
  return UInt16.SIMD2Storage.subscript.modify;
}

__n128 _ss6UInt16V12SIMD2StorageVs11SIMDStoragessAEPy6ScalarQzSicigTW_0@<Q0>(char a1@<W0>, _WORD *a2@<X8>, double a3@<D0>)
{
  LOWORD(a3) = *v3;
  WORD2(a3) = v3[1];
  v5 = a3;
  *a2 = *(&v5 & 0xFFFFFFFFFFFFFFFBLL | (4 * (a1 & 1)));
  result.n128_u32[0] = LODWORD(a3);
  result.n128_u16[2] = WORD2(a3);
  return result;
}

double (*protocol witness for SIMDStorage.subscript.modify in conformance Int16.SIMD2Storage(uint64_t a1, uint64_t a2))(uint64_t a1, double a2)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  v3 = *v2;
  *(a1 + 16) = v3;
  LODWORD(v4) = v3;
  HIDWORD(v4) = v2[1];
  *(a1 + 18) = WORD2(v4);
  v6 = v4;
  *(a1 + 20) = *(&v6 & 0xFFFFFFFFFFFFFFFBLL | (4 * (a2 & 1)));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int16.SIMD2Storage;
}

double protocol witness for SIMDStorage.subscript.modify in conformance Int16.SIMD2Storage(uint64_t a1, double a2)
{
  LOWORD(a2) = *(a1 + 16);
  WORD2(a2) = *(a1 + 18);
  v2 = *(a1 + 8);
  v3 = (&v6 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a1 & 1)));
  v4 = *(a1 + 20);
  v6 = a2;
  *v3 = v4;
  result = v6;
  v2[1] = WORD2(v6);
  *v2 = LOWORD(result);
  return result;
}

double _ss6UInt16V12SIMD4StorageVyABSicipADTK_0@<D0>(double *a1@<X0>, _DWORD *a2@<X1>, _WORD *a3@<X8>)
{
  result = *a1;
  v4 = (&v5 & 0xFFFFFFFFFFFFFFF9 | (2 * (*a2 & 3)));
  v5 = *a1;
  *a3 = *v4;
  return result;
}

uint64_t (*Int16.SIMD4Storage.subscript.modify(uint64_t a1, uint64_t a2))()
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = *v2;
  *(a1 + 24) = *(a1 + 16 + 2 * (a2 & 3));
  return UInt16.SIMD4Storage.subscript.modify;
}

double _ss6UInt16V12SIMD4StorageVs11SIMDStoragessAEPy6ScalarQzSicigTW_0@<D0>(char a1@<W0>, _WORD *a2@<X8>)
{
  result = *v2;
  v4 = *v2;
  *a2 = *(&v4 & 0xFFFFFFFFFFFFFFF9 | (2 * (a1 & 3)));
  return result;
}

double (*protocol witness for SIMDStorage.subscript.modify in conformance Int16.SIMD4Storage(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = *v2;
  *(a1 + 24) = *(a1 + 16 + 2 * (a2 & 3));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int16.SIMD4Storage;
}

double protocol witness for SIMDStorage.subscript.modify in conformance Int16.SIMD4Storage(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = (&v5 & 0xFFFFFFFFFFFFFFF9 | (2 * (*a1 & 3)));
  v3 = *(a1 + 24);
  v5 = *(a1 + 16);
  *v2 = v3;
  result = v5;
  *v1 = v5;
  return result;
}

__n128 _ss6UInt16V12SIMD8StorageVyABSicipADTK_0@<Q0>(__n128 *a1@<X0>, _DWORD *a2@<X1>, _WORD *a3@<X8>)
{
  result = *a1;
  v4 = (&v5 & 0xFFFFFFFFFFFFFFF1 | (2 * (*a2 & 7)));
  v5 = *a1;
  *a3 = *v4;
  return result;
}

uint64_t (*Int16.SIMD8Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0xD7D5uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[2] = a2;
  v5[3] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  *(v5 + 16) = *(&v8 & 0xFFFFFFFFFFFFFFF1 | (2 * (a2 & 7)));
  return UInt16.SIMD8Storage.subscript.modify;
}

__n128 _ss6UInt16V12SIMD8StorageVs11SIMDStoragessAEPy6ScalarQzSicigTW_0@<Q0>(char a1@<W0>, _WORD *a2@<X8>)
{
  result = *v2;
  *a2 = *(&v4 & 0xFFFFFFFFFFFFFFF1 | (2 * (a1 & 7)));
  return result;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int16.SIMD8Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x511BuLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[2] = a2;
  v5[3] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  *(v5 + 16) = *(&v8 & 0xFFFFFFFFFFFFFFF1 | (2 * (a2 & 7)));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int16.SIMD8Storage;
}

void UInt16.SIMD8Storage.subscript.modify(void **a1)
{
  v1 = *a1;
  v2 = v1[3];
  v3 = (&v5 & 0xFFFFFFFFFFFFFFF1 | (2 * (v1[2] & 7)));
  v4 = *(v1 + 16);
  v5 = *v1;
  *v3 = v4;
  *v2 = v5;
  free(v1);
}

__n128 _ss6UInt16V13SIMD16StorageVyABSicipADTK_0@<Q0>(__n128 *a1@<X0>, _DWORD *a2@<X1>, _WORD *a3@<X8>)
{
  result = *a1;
  *a3 = *(&v4 + (*a2 & 0xF));
  return result;
}

uint64_t (*Int16.SIMD16Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0x7D3FuLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  *(v5 + 24) = *(v9 + (a2 & 0xF));
  return UInt16.SIMD16Storage.subscript.modify;
}

__n128 _ss6UInt16V13SIMD16StorageVs11SIMDStoragessAEPy6ScalarQzSicigTW_0@<Q0>(char a1@<W0>, _WORD *a2@<X8>)
{
  result = *v2;
  *a2 = *(&v4 + (a1 & 0xF));
  return result;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int16.SIMD16Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0xD1E3uLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  *(v5 + 24) = *(v9 + (a2 & 0xF));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int16.SIMD16Storage;
}

void UInt16.SIMD16Storage.subscript.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(v1 + 40);
  *(v4 + (*(v1 + 32) & 0xF)) = *(v1 + 48);
  v3 = v4[1];
  *v2 = v4[0];
  v2[1] = v3;
  free(v1);
}

void Int16.SIMD32Storage._value.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4[2] = a3;
  v4[3] = a4;
  *v4 = a1;
  v4[1] = a2;
}

uint64_t Int16.SIMD32Storage.subscript.getter(char a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v6[2] = a4;
  v6[3] = a5;
  v6[0] = a2;
  v6[1] = a3;
  return *(v6 + (a1 & 0x1F));
}

__n128 _ss6UInt16V13SIMD32StorageVyABSicipADTK_0@<Q0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, _WORD *a3@<X8>)
{
  result = *a1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  v6 = *a2 & 0x1F;
  v7[2] = *(a1 + 32);
  v7[3] = v5;
  v7[0] = result;
  v7[1] = v4;
  *a3 = *(v7 + v6);
  return result;
}

uint64_t (*Int16.SIMD32Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0x19BEuLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  *(v5 + 40) = *(v11 + (a2 & 0x1F));
  return UInt16.SIMD32Storage.subscript.modify;
}

__n128 _ss6UInt16V13SIMD32StorageVs11SIMDStoragessAEPy6ScalarQzSicigTW_0@<Q0>(char a1@<W0>, _WORD *a2@<X8>)
{
  result = *v2;
  v4 = *(v2 + 16);
  v5 = *(v2 + 48);
  v6[2] = *(v2 + 32);
  v6[3] = v5;
  v6[0] = result;
  v6[1] = v4;
  *a2 = *(v6 + (a1 & 0x1F));
  return result;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int16.SIMD32Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0x25F2uLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  *(v5 + 40) = *(v11 + (a2 & 0x1F));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int16.SIMD32Storage;
}

__n128 UInt16.SIMD32Storage.subscript.modify(void **a1)
{
  v1 = *a1;
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[3];
  v5 = *(v1 + 9);
  v6 = v1[4] & 0x1F;
  v7 = *(v1 + 40);
  v14 = v1[2];
  v15 = v4;
  v12 = v2;
  v13 = v3;
  *(&v12 + v6) = v7;
  v9 = v12;
  v8 = v13;
  v10 = v15;
  v5[2] = v14;
  v5[3] = v10;
  *v5 = v9;
  v5[1] = v8;
  free(v1);
  return result;
}

__n128 Int16.SIMD64Storage._value.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 64);
  v7 = *(v1 + 80);
  v8 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v8;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 Int16.SIMD64Storage._value.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v8 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v8;
  *(v1 + 64) = v6;
  *(v1 + 80) = v7;
  *(v1 + 32) = v4;
  *(v1 + 48) = v5;
  *v1 = result;
  *(v1 + 16) = v3;
  return result;
}

double Int16.SIMD64Storage.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t Int16.SIMD64Storage.subscript.getter(char a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[7];
  v10[6] = v1[6];
  v10[7] = v8;
  v10[4] = v6;
  v10[5] = v7;
  v10[2] = v4;
  v10[3] = v5;
  v10[0] = v2;
  v10[1] = v3;
  return *(v10 + (a1 & 0x3F));
}

__n128 _ss6UInt16V13SIMD64StorageVyABSicipADTK_0@<Q0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, _WORD *a3@<X8>)
{
  result = *a1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v8 = *(a1 + 80);
  v9 = *(a1 + 112);
  v10 = *a2 & 0x3F;
  v11[6] = *(a1 + 96);
  v11[7] = v9;
  v11[4] = v7;
  v11[5] = v8;
  v11[2] = v5;
  v11[3] = v6;
  v11[0] = result;
  v11[1] = v4;
  *a3 = *(v11 + v10);
  return result;
}

uint64_t (*Int16.SIMD64Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x100, 0x521EuLL);
  }

  else
  {
    v5 = malloc(0x100uLL);
  }

  *a1 = v5;
  v5[16] = a2;
  v5[17] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v15[6] = v13;
  v15[7] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[2] = v9;
  v15[3] = v8;
  v15[0] = v7;
  v15[1] = v6;
  *(v5 + 72) = *(v15 + (a2 & 0x3F));
  return UInt16.SIMD64Storage.subscript.modify;
}

double protocol witness for SIMDStorage.init() in conformance Double.SIMD16Storage@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

__n128 _ss6UInt16V13SIMD64StorageVs11SIMDStoragessAEPy6ScalarQzSicigTW_0@<Q0>(char a1@<W0>, _WORD *a2@<X8>)
{
  result = *v2;
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  v6 = *(v2 + 48);
  v7 = *(v2 + 64);
  v8 = *(v2 + 80);
  v9 = *(v2 + 112);
  v10[6] = *(v2 + 96);
  v10[7] = v9;
  v10[4] = v7;
  v10[5] = v8;
  v10[2] = v5;
  v10[3] = v6;
  v10[0] = result;
  v10[1] = v4;
  *a2 = *(v10 + (a1 & 0x3F));
  return result;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int16.SIMD64Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x100, 0x32BDuLL);
  }

  else
  {
    v5 = malloc(0x100uLL);
  }

  *a1 = v5;
  v5[16] = a2;
  v5[17] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v15[6] = v13;
  v15[7] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[2] = v9;
  v15[3] = v8;
  v15[0] = v7;
  v15[1] = v6;
  *(v5 + 72) = *(v15 + (a2 & 0x3F));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int16.SIMD64Storage;
}

__n128 UInt16.SIMD64Storage.subscript.modify(void **a1)
{
  v1 = *a1;
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[7];
  v9 = *(v1 + 17);
  v10 = v1[8] & 0x3F;
  v11 = *(v1 + 72);
  v26 = v1[6];
  v27 = v8;
  v24 = v6;
  v25 = v7;
  v22 = v4;
  v23 = v5;
  v20 = v2;
  v21 = v3;
  *(&v20 + v10) = v11;
  v13 = v20;
  v12 = v21;
  v15 = v22;
  v14 = v23;
  v17 = v24;
  v16 = v25;
  v18 = v27;
  v9[6] = v26;
  v9[7] = v18;
  v9[4] = v17;
  v9[5] = v16;
  v9[2] = v15;
  v9[3] = v14;
  *v9 = v13;
  v9[1] = v12;
  free(v1);
  return result;
}

uint64_t (*UInt32.SIMD2Storage.subscript.modify(uint64_t a1, uint64_t a2))()
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = *v2;
  *(a1 + 24) = *(a1 + 16 + 4 * (a2 & 1));
  return UInt32.SIMD2Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt32.SIMD2Storage(uint64_t a1, uint64_t a2))()
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = *v2;
  *(a1 + 24) = *(a1 + 16 + 4 * (a2 & 1));
  return UInt32.SIMD2Storage.subscript.modify;
}

uint64_t (*UInt32.SIMD4Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x6ED7uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[2] = a2;
  v5[3] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  *(v5 + 8) = *(&v8 & 0xFFFFFFFFFFFFFFF3 | (4 * (a2 & 3)));
  return UInt32.SIMD4Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt32.SIMD4Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x231DuLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[2] = a2;
  v5[3] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  *(v5 + 8) = *(&v8 & 0xFFFFFFFFFFFFFFF3 | (4 * (a2 & 3)));
  return UInt32.SIMD4Storage.subscript.modify;
}

uint64_t (*UInt32.SIMD8Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0xCB13uLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  *(v5 + 12) = *(v9 + (a2 & 7));
  return UInt32.SIMD8Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt32.SIMD8Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0xDA39uLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  *(v5 + 12) = *(v9 + (a2 & 7));
  return UInt32.SIMD8Storage.subscript.modify;
}

uint64_t (*UInt32.SIMD16Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0xA94FuLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  *(v5 + 20) = *(v11 + (a2 & 0xF));
  return UInt32.SIMD16Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt32.SIMD16Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0x4EECuLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  *(v5 + 20) = *(v11 + (a2 & 0xF));
  return UInt32.SIMD16Storage.subscript.modify;
}

uint64_t (*UInt32.SIMD32Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x100, 0x5E4EuLL);
  }

  else
  {
    v5 = malloc(0x100uLL);
  }

  *a1 = v5;
  v5[16] = a2;
  v5[17] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v15[6] = v13;
  v15[7] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[2] = v9;
  v15[3] = v8;
  v15[0] = v7;
  v15[1] = v6;
  *(v5 + 36) = *(v15 + (a2 & 0x1F));
  return UInt32.SIMD32Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt32.SIMD32Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x100, 0x19C5uLL);
  }

  else
  {
    v5 = malloc(0x100uLL);
  }

  *a1 = v5;
  v5[16] = a2;
  v5[17] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v15[6] = v13;
  v15[7] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[2] = v9;
  v15[3] = v8;
  v15[0] = v7;
  v15[1] = v6;
  *(v5 + 36) = *(v15 + (a2 & 0x1F));
  return UInt32.SIMD32Storage.subscript.modify;
}

uint64_t (*UInt32.SIMD64Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x200, 0x471FuLL);
  }

  else
  {
    v5 = malloc(0x200uLL);
  }

  *a1 = v5;
  v5[32] = a2;
  v5[33] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  v15 = v2[8];
  v14 = v2[9];
  v17 = v2[10];
  v16 = v2[11];
  v19 = v2[12];
  v18 = v2[13];
  v21 = v2[14];
  v20 = v2[15];
  *(v5 + 14) = v21;
  *(v5 + 15) = v20;
  *(v5 + 12) = v19;
  *(v5 + 13) = v18;
  *(v5 + 10) = v17;
  *(v5 + 11) = v16;
  *(v5 + 8) = v15;
  *(v5 + 9) = v14;
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v23[14] = v21;
  v23[15] = v20;
  v23[12] = v19;
  v23[13] = v18;
  v23[10] = v17;
  v23[11] = v16;
  v23[8] = v15;
  v23[9] = v14;
  v23[6] = v13;
  v23[7] = v12;
  v23[4] = v11;
  v23[5] = v10;
  v23[2] = v9;
  v23[3] = v8;
  v23[0] = v7;
  v23[1] = v6;
  *(v5 + 68) = *(v23 + (a2 & 0x3F));
  return UInt32.SIMD64Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt32.SIMD64Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x200, 0x4911uLL);
  }

  else
  {
    v5 = malloc(0x200uLL);
  }

  *a1 = v5;
  v5[32] = a2;
  v5[33] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  v15 = v2[8];
  v14 = v2[9];
  v17 = v2[10];
  v16 = v2[11];
  v19 = v2[12];
  v18 = v2[13];
  v21 = v2[14];
  v20 = v2[15];
  *(v5 + 14) = v21;
  *(v5 + 15) = v20;
  *(v5 + 12) = v19;
  *(v5 + 13) = v18;
  *(v5 + 10) = v17;
  *(v5 + 11) = v16;
  *(v5 + 8) = v15;
  *(v5 + 9) = v14;
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v23[14] = v21;
  v23[15] = v20;
  v23[12] = v19;
  v23[13] = v18;
  v23[10] = v17;
  v23[11] = v16;
  v23[8] = v15;
  v23[9] = v14;
  v23[6] = v13;
  v23[7] = v12;
  v23[4] = v11;
  v23[5] = v10;
  v23[2] = v9;
  v23[3] = v8;
  v23[0] = v7;
  v23[1] = v6;
  *(v5 + 68) = *(v23 + (a2 & 0x3F));
  return UInt32.SIMD64Storage.subscript.modify;
}

uint64_t (*Int32.SIMD2Storage.subscript.modify(uint64_t a1, uint64_t a2))()
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = *v2;
  *(a1 + 24) = *(a1 + 16 + 4 * (a2 & 1));
  return UInt32.SIMD2Storage.subscript.modify;
}

double (*protocol witness for SIMDStorage.subscript.modify in conformance Int32.SIMD2Storage(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = *v2;
  *(a1 + 24) = *(a1 + 16 + 4 * (a2 & 1));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int32.SIMD2Storage;
}

double protocol witness for SIMDStorage.subscript.modify in conformance Int32.SIMD2Storage(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = (&v5 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a1 & 1)));
  v3 = *(a1 + 24);
  v5 = *(a1 + 16);
  *v2 = v3;
  result = v5;
  *v1 = v5;
  return result;
}

uint64_t (*Int32.SIMD4Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0xD219uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[2] = a2;
  v5[3] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  *(v5 + 8) = *(&v8 & 0xFFFFFFFFFFFFFFF3 | (4 * (a2 & 3)));
  return UInt32.SIMD4Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int32.SIMD4Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0xE15AuLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[2] = a2;
  v5[3] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  *(v5 + 8) = *(&v8 & 0xFFFFFFFFFFFFFFF3 | (4 * (a2 & 3)));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int32.SIMD4Storage;
}

void UInt32.SIMD4Storage.subscript.modify(void **a1)
{
  v1 = *a1;
  v2 = v1[3];
  v3 = (&v5 & 0xFFFFFFFFFFFFFFF3 | (4 * (v1[2] & 3)));
  v4 = *(v1 + 8);
  v5 = *v1;
  *v3 = v4;
  *v2 = v5;
  free(v1);
}

uint64_t (*Int32.SIMD8Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0xBFF0uLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  *(v5 + 12) = *(v9 + (a2 & 7));
  return UInt32.SIMD8Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int32.SIMD8Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0x379DuLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  *(v5 + 12) = *(v9 + (a2 & 7));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int32.SIMD8Storage;
}

void UInt32.SIMD8Storage.subscript.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(v1 + 40);
  *(v4 + (*(v1 + 32) & 7)) = *(v1 + 48);
  v3 = v4[1];
  *v2 = v4[0];
  v2[1] = v3;
  free(v1);
}

void Int32.SIMD16Storage._value.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4[2] = a3;
  v4[3] = a4;
  *v4 = a1;
  v4[1] = a2;
}

uint64_t Int32.SIMD16Storage.subscript.getter(char a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v6[2] = a4;
  v6[3] = a5;
  v6[0] = a2;
  v6[1] = a3;
  return *(v6 + (a1 & 0xF));
}

uint64_t (*Int32.SIMD16Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0x3C93uLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  *(v5 + 20) = *(v11 + (a2 & 0xF));
  return UInt32.SIMD16Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int32.SIMD16Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0xDC0CuLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  *(v5 + 20) = *(v11 + (a2 & 0xF));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int32.SIMD16Storage;
}

__n128 UInt32.SIMD16Storage.subscript.modify(void **a1)
{
  v1 = *a1;
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[3];
  v5 = *(v1 + 9);
  v6 = v1[4] & 0xF;
  v7 = *(v1 + 20);
  v14 = v1[2];
  v15 = v4;
  v12 = v2;
  v13 = v3;
  *(&v12 + v6) = v7;
  v9 = v12;
  v8 = v13;
  v10 = v15;
  v5[2] = v14;
  v5[3] = v10;
  *v5 = v9;
  v5[1] = v8;
  free(v1);
  return result;
}

__n128 Int32.SIMD32Storage._value.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 64);
  v7 = *(v1 + 80);
  v8 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v8;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 Int32.SIMD32Storage._value.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v8 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v8;
  *(v1 + 64) = v6;
  *(v1 + 80) = v7;
  *(v1 + 32) = v4;
  *(v1 + 48) = v5;
  *v1 = result;
  *(v1 + 16) = v3;
  return result;
}

double Int32.SIMD32Storage.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t (*Int32.SIMD32Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x100, 0x3DB8uLL);
  }

  else
  {
    v5 = malloc(0x100uLL);
  }

  *a1 = v5;
  v5[16] = a2;
  v5[17] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v15[6] = v13;
  v15[7] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[2] = v9;
  v15[3] = v8;
  v15[0] = v7;
  v15[1] = v6;
  *(v5 + 36) = *(v15 + (a2 & 0x1F));
  return UInt32.SIMD32Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int32.SIMD32Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x100, 0x8A2DuLL);
  }

  else
  {
    v5 = malloc(0x100uLL);
  }

  *a1 = v5;
  v5[16] = a2;
  v5[17] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v15[6] = v13;
  v15[7] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[2] = v9;
  v15[3] = v8;
  v15[0] = v7;
  v15[1] = v6;
  *(v5 + 36) = *(v15 + (a2 & 0x1F));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int32.SIMD32Storage;
}

__n128 UInt32.SIMD32Storage.subscript.modify(void **a1)
{
  v1 = *a1;
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[7];
  v9 = *(v1 + 17);
  v10 = v1[8] & 0x1F;
  v11 = *(v1 + 36);
  v26 = v1[6];
  v27 = v8;
  v24 = v6;
  v25 = v7;
  v22 = v4;
  v23 = v5;
  v20 = v2;
  v21 = v3;
  *(&v20 + v10) = v11;
  v13 = v20;
  v12 = v21;
  v15 = v22;
  v14 = v23;
  v17 = v24;
  v16 = v25;
  v18 = v27;
  v9[6] = v26;
  v9[7] = v18;
  v9[4] = v17;
  v9[5] = v16;
  v9[2] = v15;
  v9[3] = v14;
  *v9 = v13;
  v9[1] = v12;
  free(v1);
  return result;
}

__n128 Int32.SIMD64Storage._value.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 64);
  v7 = *(v1 + 80);
  v8 = *(v1 + 96);
  v9 = *(v1 + 112);
  v10 = *(v1 + 128);
  v11 = *(v1 + 144);
  v12 = *(v1 + 160);
  v13 = *(v1 + 176);
  v14 = *(v1 + 192);
  v15 = *(v1 + 208);
  v16 = *(v1 + 240);
  *(a1 + 224) = *(v1 + 224);
  *(a1 + 240) = v16;
  *(a1 + 192) = v14;
  *(a1 + 208) = v15;
  *(a1 + 160) = v12;
  *(a1 + 176) = v13;
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 Int32.SIMD64Storage._value.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v8 = *(a1 + 96);
  v9 = *(a1 + 112);
  v10 = *(a1 + 128);
  v11 = *(a1 + 144);
  v12 = *(a1 + 160);
  v13 = *(a1 + 176);
  v14 = *(a1 + 192);
  v15 = *(a1 + 208);
  v16 = *(a1 + 240);
  *(v1 + 224) = *(a1 + 224);
  *(v1 + 240) = v16;
  *(v1 + 192) = v14;
  *(v1 + 208) = v15;
  *(v1 + 160) = v12;
  *(v1 + 176) = v13;
  *(v1 + 128) = v10;
  *(v1 + 144) = v11;
  *(v1 + 96) = v8;
  *(v1 + 112) = v9;
  *(v1 + 64) = v6;
  *(v1 + 80) = v7;
  *(v1 + 32) = v4;
  *(v1 + 48) = v5;
  *v1 = result;
  *(v1 + 16) = v3;
  return result;
}

double Int32.SIMD64Storage.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t (*Int32.SIMD64Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x200, 0xD510uLL);
  }

  else
  {
    v5 = malloc(0x200uLL);
  }

  *a1 = v5;
  v5[32] = a2;
  v5[33] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  v15 = v2[8];
  v14 = v2[9];
  v17 = v2[10];
  v16 = v2[11];
  v19 = v2[12];
  v18 = v2[13];
  v21 = v2[14];
  v20 = v2[15];
  *(v5 + 14) = v21;
  *(v5 + 15) = v20;
  *(v5 + 12) = v19;
  *(v5 + 13) = v18;
  *(v5 + 10) = v17;
  *(v5 + 11) = v16;
  *(v5 + 8) = v15;
  *(v5 + 9) = v14;
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v23[14] = v21;
  v23[15] = v20;
  v23[12] = v19;
  v23[13] = v18;
  v23[10] = v17;
  v23[11] = v16;
  v23[8] = v15;
  v23[9] = v14;
  v23[6] = v13;
  v23[7] = v12;
  v23[4] = v11;
  v23[5] = v10;
  v23[2] = v9;
  v23[3] = v8;
  v23[0] = v7;
  v23[1] = v6;
  *(v5 + 68) = *(v23 + (a2 & 0x3F));
  return UInt32.SIMD64Storage.subscript.modify;
}

double protocol witness for SIMDStorage.init() in conformance Double.SIMD32Storage@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int32.SIMD64Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x200, 0x6416uLL);
  }

  else
  {
    v5 = malloc(0x200uLL);
  }

  *a1 = v5;
  v5[32] = a2;
  v5[33] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  v15 = v2[8];
  v14 = v2[9];
  v17 = v2[10];
  v16 = v2[11];
  v19 = v2[12];
  v18 = v2[13];
  v21 = v2[14];
  v20 = v2[15];
  *(v5 + 14) = v21;
  *(v5 + 15) = v20;
  *(v5 + 12) = v19;
  *(v5 + 13) = v18;
  *(v5 + 10) = v17;
  *(v5 + 11) = v16;
  *(v5 + 8) = v15;
  *(v5 + 9) = v14;
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v23[14] = v21;
  v23[15] = v20;
  v23[12] = v19;
  v23[13] = v18;
  v23[10] = v17;
  v23[11] = v16;
  v23[8] = v15;
  v23[9] = v14;
  v23[6] = v13;
  v23[7] = v12;
  v23[4] = v11;
  v23[5] = v10;
  v23[2] = v9;
  v23[3] = v8;
  v23[0] = v7;
  v23[1] = v6;
  *(v5 + 68) = *(v23 + (a2 & 0x3F));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int32.SIMD64Storage;
}

void UInt32.SIMD64Storage.subscript.modify(void **a1)
{
  v2 = *a1;
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v12 = v2[9];
  v13 = v2[10];
  v14 = v2[11];
  v15 = v2[12];
  v16 = v2[13];
  v17 = v2[15];
  v18 = *(v2 + 33);
  v19 = v2[16] & 0x3F;
  v20 = *(v2 + 68);
  v50 = v2[14];
  v51 = v17;
  v48 = v15;
  v49 = v16;
  v46 = v13;
  v47 = v14;
  v44 = v11;
  v45 = v12;
  v42 = v9;
  v43 = v10;
  v40 = v7;
  v41 = v8;
  v38 = v5;
  v39 = v6;
  v36 = v3;
  v37 = v4;
  *(&v36 + v19) = v20;
  v22 = v36;
  v21 = v37;
  v24 = v38;
  v23 = v39;
  v26 = v40;
  v25 = v41;
  v28 = v42;
  v27 = v43;
  v30 = v44;
  v29 = v45;
  v32 = v46;
  v31 = v47;
  v34 = v48;
  v33 = v49;
  v35 = v51;
  v18[14] = v50;
  v18[15] = v35;
  v18[12] = v34;
  v18[13] = v33;
  v18[10] = v32;
  v18[11] = v31;
  v18[8] = v30;
  v18[9] = v29;
  v18[6] = v28;
  v18[7] = v27;
  v18[4] = v26;
  v18[5] = v25;
  v18[2] = v24;
  v18[3] = v23;
  *v18 = v22;
  v18[1] = v21;

  free(v2);
}
uint64_t specialized static SIMD<>.random<A>(in:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, swift *a5@<X4>, uint64_t a6@<X8>)
{
  v70 = a2;
  v74 = a5;
  v72 = *(a5 + 1);
  v9 = *(v72 + 3);
  v10 = *(a4 + 48);
  swift_getAssociatedTypeWitness(255, v10, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v12 = v11;
  swift_getAssociatedTypeWitness(0, v9, v11, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v64 = v13;
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v68 = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v78 = v54 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v67 = v54 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v66 = v54 - v21;
  v22 = swift_checkMetadataState(0, v12);
  v23 = *(v22 - 1);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v65 = v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v63 = v54 - v26;
  (*(v10 + 48))(a3, v10);
  v27 = *(v10 + 40);
  v69 = a6;
  v73 = a3;
  v71 = v10;
  result = v27(a3, v10);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v30 = result;
  if (result)
  {
    v31 = v72;
    v32 = type metadata accessor for Range(0, v22, *(*(v72 + 4) + 8), v29);
    v33 = v71;
    v34 = 0;
    v62 = *(swift_getAssociatedConformanceWitness(v71, v73, v22, &protocol requirements base descriptor for SIMDStorage, associated conformance descriptor for SIMDStorage.SIMDStorage.Scalar: Hashable) + 8);
    v60 = *(v62 + 8);
    v61 = v62 + 8;
    v57 = (v74 + 88);
    v56 = (v23 + 16);
    v55 = (v14 + 8);
    v54[2] = v31 + 96;
    v54[1] = v33 + 64;
    v77 = a1;
    v58 = v32;
    v59 = v30;
    do
    {
      if (v60(a1, a1 + *(v32 + 36), v22, v62))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v75 = v34;
      v76 = v34 + 1;
      v35 = v74;
      v36 = v65;
      (*(v74 + 11))(v65, a1, v22, v74);
      v37 = v72;
      v38 = v64;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v72, v22, v64, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
      v40 = v22;
      v41 = *(AssociatedConformanceWitness + 96);
      v42 = v66;
      v41(v36, v40, v37, v38, AssociatedConformanceWitness);
      (*v56)(v36, v77, v40);
      v41(v36, v40, v37, v38, AssociatedConformanceWitness);
      v43 = swift_getAssociatedConformanceWitness(v35, v40, v38, &protocol requirements base descriptor for FixedWidthInteger, associated conformance descriptor for FixedWidthInteger.Numeric.Magnitude: FixedWidthInteger);
      swift_getAssociatedConformanceWitness(v35, v40, v38, &protocol requirements base descriptor for FixedWidthInteger, associated conformance descriptor for FixedWidthInteger.Numeric.Magnitude: UnsignedInteger);
      v44 = v68;
      specialized RandomNumberGenerator.next<A>(upperBound:)(v42, v38, v43, v68);
      v45 = *v55;
      (*v55)(v42, v38);
      v46 = *(v43 + 80);
      v47 = v67;
      v48 = v43;
      a1 = v77;
      v49 = v78;
      v46(v67, v44, v38, v48);
      v45(v44, v38);
      v45(v49, v38);
      v22 = v40;
      v50 = v63;
      v51 = v47;
      v52 = v59;
      (*(v37 + 12))(v51, v38, AssociatedConformanceWitness, v40, v37);
      v53 = v50;
      v32 = v58;
      result = (*(v71 + 8))(v53, v75, v73);
      v34 = v76;
    }

    while (v52 != v76);
  }

  return result;
}

uint64_t static SIMD<>.random<A>(in:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, swift *a7@<X6>, uint64_t a8@<X8>)
{
  v74 = a4;
  v75 = a6;
  v73 = a2;
  v83 = a7;
  v77 = *(a7 + 1);
  v11 = *(v77 + 3);
  v12 = *(a5 + 48);
  swift_getAssociatedTypeWitness(255, v12, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v14 = v13;
  swift_getAssociatedTypeWitness(0, v11, v13, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v66 = v15;
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v71 = v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v70 = v56 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v69 = v56 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v68 = v56 - v23;
  v24 = swift_checkMetadataState(0, v14);
  v25 = *(v24 - 1);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v67 = v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v65 = v56 - v28;
  (*(v12 + 48))(a3, v12);
  v29 = *(v12 + 40);
  v72 = a8;
  v78 = a3;
  v76 = v12;
  result = v29(a3, v12);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v32 = result;
  if (result)
  {
    v33 = v77;
    v34 = type metadata accessor for Range(0, v24, *(*(v77 + 4) + 8), v31);
    v35 = v25;
    v36 = v76;
    v37 = 0;
    v64 = *(swift_getAssociatedConformanceWitness(v76, v78, v24, &protocol requirements base descriptor for SIMDStorage, associated conformance descriptor for SIMDStorage.SIMDStorage.Scalar: Hashable) + 8);
    v62 = *(v64 + 8);
    v63 = v64 + 8;
    v59 = v83 + 88;
    v58 = (v35 + 16);
    v57 = (v16 + 8);
    v56[1] = v33 + 96;
    v56[0] = v36 + 64;
    v82 = a1;
    v61 = v32;
    v60 = v34;
    do
    {
      if (v62(a1, a1 + *(v34 + 36), v24, v64))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v81 = v37 + 1;
      v38 = v67;
      (*(v83 + 11))(v67, a1, v24);
      v39 = v77;
      v40 = v66;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v77, v24, v66, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
      v42 = v24;
      v43 = *(AssociatedConformanceWitness + 96);
      v44 = v68;
      v79 = AssociatedConformanceWitness;
      v43(v38, v42, v39, v40, AssociatedConformanceWitness);
      (*v58)(v38, v82, v42);
      v80 = v37;
      v45 = v70;
      v43(v38, v42, v39, v40, AssociatedConformanceWitness);
      v46 = swift_getAssociatedConformanceWitness(v83, v42, v40, &protocol requirements base descriptor for FixedWidthInteger, associated conformance descriptor for FixedWidthInteger.Numeric.Magnitude: FixedWidthInteger);
      v47 = v71;
      RandomNumberGenerator.next<A>(upperBound:)(v44, v74, v40, v75, v46, v71);
      v48 = *v57;
      (*v57)(v44, v40);
      v49 = *(v46 + 80);
      v50 = v69;
      v51 = v46;
      a1 = v82;
      v49(v69, v47, v40, v51);
      v48(v47, v40);
      v48(v45, v40);
      v24 = v42;
      v52 = v61;
      v53 = *(v39 + 12);
      v54 = v65;
      v55 = v39;
      v34 = v60;
      v53(v50, v40, v79, v24, v55);
      result = (*(v76 + 8))(v54, v80, v78);
      v37 = v81;
    }

    while (v52 != v81);
  }

  return result;
}

uint64_t specialized static SIMD<>.random<A>(in:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, swift *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v11, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  (*(v11 + 48))(a3, v11);
  result = (*(v11 + 40))(a3, v11);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v17 = result;
  v22 = a6;
  v23 = a3;
  if (result)
  {
    v18 = a5;
    v19 = v13;
    v20 = 0;
    do
    {
      v21 = v18;
      specialized static FixedWidthInteger.random<A>(in:using:)(a1, a2, v19, v18, v15);
      result = (*(v11 + 64))(v15, v20, v23, v11);
      v18 = v21;
      ++v20;
    }

    while (v17 != v20);
  }

  return result;
}

uint64_t static SIMD<>.random<A>(in:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, swift *a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a7;
  v29 = a6;
  v13 = *(a5 + 48);
  swift_getAssociatedTypeWitness(0, v13, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - v16;
  (*(v13 + 48))(a3, v13);
  result = (*(v13 + 40))(a3, v13);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v31 = a8;
  v32 = a3;
  v19 = a4;
  v20 = v28;
  v21 = v29;
  v33 = v13;
  if (result)
  {
    v22 = a2;
    v23 = a1;
    v24 = 0;
    v30 = v33 + 64;
    do
    {
      v25 = result;
      v26 = v22;
      v27 = v19;
      static FixedWidthInteger.random<A>(in:using:)(v23, v22, v15, v19, v20, v21, v17);
      (*(v33 + 64))(v17, v24, v32);
      v22 = v26;
      result = v25;
      v19 = v27;
      ++v24;
    }

    while (v25 != v24);
  }

  return result;
}

uint64_t static SIMD<>.random<A>(in:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  return static SIMD<>.random<A>(in:using:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, static BinaryFloatingPoint<>.random<A>(in:using:));
}

{
  return static SIMD<>.random<A>(in:using:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, static BinaryFloatingPoint<>.random<A>(in:using:));
}

uint64_t static SIMD<>.random(in:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  return specialized static SIMD<>.random<A>(in:using:)(a1, a2, a2, a3, a4, a5, specialized static BinaryFloatingPoint<>.random<A>(in:using:), a6);
}

{
  return specialized static SIMD<>.random<A>(in:using:)(a1, a2, a2, a3, a4, a5, specialized static BinaryFloatingPoint<>.random<A>(in:using:), a6);
}

uint64_t specialized static SIMD<>.random<A>(in:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X6>, uint64_t a8@<X8>)
{
  v28 = a7;
  v29 = a6;
  v13 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v13, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - v16;
  (*(v13 + 48))(a3, v13);
  result = (*(v13 + 40))(a3, v13);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v31 = a8;
  v32 = a3;
  v19 = a5;
  v20 = v28;
  v21 = v29;
  v33 = v13;
  if (result)
  {
    v22 = a2;
    v23 = a1;
    v24 = 0;
    v30 = v33 + 64;
    do
    {
      v25 = result;
      v26 = v22;
      v27 = v19;
      v20(v23, v22, v15, v19, v21);
      (*(v33 + 64))(v17, v24, v32);
      v22 = v26;
      result = v25;
      v19 = v27;
      ++v24;
    }

    while (v25 != v24);
  }

  return result;
}

uint64_t static SIMD<>.random<A>(in:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v37 = a7;
  v38 = a8;
  v36 = a6;
  v15 = *(a5 + 48);
  swift_getAssociatedTypeWitness(0, v15, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v35 - v18;
  (*(v15 + 48))(a3, v15);
  v20 = a9;
  result = (*(v15 + 40))(a3, v15);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v22 = v37;
  v23 = v38;
  v24 = v36;
  v42 = v20;
  v43 = a3;
  v44 = v15;
  if (result)
  {
    v25 = a4;
    v26 = v17;
    v27 = v19;
    v28 = 0;
    v40 = a10;
    v41 = result;
    v39 = v44 + 64;
    do
    {
      v29 = a1;
      v30 = v26;
      v31 = v25;
      v32 = v22;
      v33 = a1;
      v34 = v24;
      v40(v29, a2, v26, v25, v22, v24, v23);
      (*(v44 + 64))(v27, v28, v43);
      v26 = v30;
      v22 = v32;
      v25 = v31;
      v24 = v34;
      a1 = v33;
      result = v41;
      ++v28;
    }

    while (v41 != v28);
  }

  return result;
}

uint64_t key path getter for SIMDMask.subscript(_:) : <A>SIMDMask<A>A@<X0>(unint64_t *a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v39 = a3;
  v4 = *(a1 + a2 - 32);
  v5 = *(*(a1 + a2 - 16) + 8);
  v6 = *(*(v5 + 24) + 16);
  v7 = *(*(a1 + a2 - 24) + 48);
  swift_getAssociatedTypeWitness(255, v7, v4, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v37 = v6;
  swift_getAssociatedTypeWitness(0, v6, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - v12;
  v14 = swift_checkMetadataState(0, v9);
  v38 = *(v14 - 1);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = *a1;
  v21 = (*(v7 + 40))(v4, v7);
  if ((v21 & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v20 >= v21)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v7 + 56))(v20, v4, v7);
  v22 = *(v5 + 64);
  if ((v22(v14, v5) & 1) == 0)
  {
    v29 = v22(v14, v5);
    v23 = (*(v5 + 128))(v14, v5);
    if (v29)
    {
      if (v23 > 64)
      {
        goto LABEL_9;
      }

      v34 = v37;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v37, v14, v11, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v11, AssociatedConformanceWitness);
      v34[3](v13, v14, v34);
      LOBYTE(v34) = (*(*(*(v5 + 32) + 8) + 16))(v19, v17, v14);
      v36 = *(v38 + 8);
      v36(v17, v14);
      if (v34)
      {
        result = (v36)(v19, v14);
        LOBYTE(v28) = 1;
        goto LABEL_17;
      }

      v33 = (*(v5 + 120))(v14, v5);
      result = (v36)(v19, v14);
    }

    else
    {
      if (v23 >= 64)
      {
        result = (*(v38 + 8))(v19, v14);
        LOBYTE(v28) = 0;
        goto LABEL_17;
      }

      v33 = (*(v5 + 120))(v14, v5);
      result = (*(v38 + 8))(v19, v14);
    }

    v28 = v33 >> 63;
    goto LABEL_17;
  }

  v23 = (*(v5 + 128))(v14, v5);
  if (v23 >= 64)
  {
LABEL_9:
    v40 = 0;
    v30 = *(v5 + 96);
    v31 = lazy protocol witness table accessor for type Int and conformance Int(v23, v24, v25);
    v30(&v40, &type metadata for Int, v31, v14, v5);
    LOBYTE(v28) = (*(*(*(v5 + 32) + 8) + 16))(v19, v17, v14);
    v32 = *(v38 + 8);
    v32(v17, v14);
    result = (v32)(v19, v14);
    goto LABEL_17;
  }

  v26 = (*(v5 + 120))(v14, v5);
  result = (*(v38 + 8))(v19, v14);
  v28 = v26 >> 63;
LABEL_17:
  *v39 = v28 & 1;
  return result;
}

uint64_t key path setter for SIMDMask.subscript(_:) : <A>SIMDMask<A>A(unsigned __int8 *a1, swift *a2, unint64_t *a3, uint64_t a4)
{
  v7 = *(a3 + a4 - 32);
  v8 = *(*(*(*(a3 + a4 - 16) + 8) + 24) + 16);
  v9 = *(*(a3 + a4 - 24) + 48);
  swift_getAssociatedTypeWitness(255, v9, v7, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v11 = v10;
  v28[0] = v8;
  swift_getAssociatedTypeWitness(0, v8, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v28 - v14;
  v16 = swift_checkMetadataState(0, v11);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v28 - v17;
  v19 = *a3;
  v20 = *a1;
  v21 = *(v9 + 40);
  v28[1] = a2;
  v22 = v21(v7, v9);
  if ((v22 & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v19 >= v22)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v23 = v28[0];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v28[0], v16, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  if (v20)
  {
    v25 = &unk_18071E0B0;
    v26 = 257;
  }

  else
  {
    v25 = &qword_18071E0A8;
    v26 = 256;
  }

  (*(AssociatedConformanceWitness + 8))(v25, v26, v13, AssociatedConformanceWitness);
  (*(v23 + 3))(v15, v16, v23);
  return (*(v9 + 64))(v18, v19, v7, v9);
}

void (*SIMDMask.subscript.modify(void *a1, unint64_t a2, void *a3))(uint64_t a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x80, 0xF7BBuLL);
  }

  else
  {
    v7 = malloc(0x80uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[2] = a2;
  v7[3] = v3;
  v9 = *(a3[4] + 8);
  v10 = *(*(v9 + 24) + 16);
  v7[4] = v10;
  v11 = *(a3[3] + 48);
  v7[5] = v11;
  v12 = a3[2];
  v7[6] = v12;
  swift_getAssociatedTypeWitness(255, v11, v12, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v14 = v13;
  v48 = v10;
  swift_getAssociatedTypeWitness(0, v10, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v16 = v15;
  v8[7] = v15;
  v17 = *(*(v15 - 8) + 64);
  if (swift_coroFrameAlloc)
  {
    v18 = swift_coroFrameAlloc(v17, 0xF7BBuLL);
  }

  else
  {
    v18 = malloc(v17);
  }

  v47 = v18;
  v8[8] = v18;
  v19 = swift_checkMetadataState(0, v14);
  v8[9] = v19;
  v49 = *(v19 - 1);
  v20 = *(v49 + 64);
  if (swift_coroFrameAlloc)
  {
    v8[10] = swift_coroFrameAlloc(v20, 0xF7BBuLL);
    v8[11] = swift_coroFrameAlloc(v20, 0xF7BBuLL);
    v21 = swift_coroFrameAlloc(v20, 0xF7BBuLL);
    v8[12] = v21;
    v22 = swift_coroFrameAlloc(v20, 0xF7BBuLL);
  }

  else
  {
    v8[10] = malloc(v20);
    v8[11] = malloc(v20);
    v21 = malloc(v20);
    v8[12] = v21;
    v22 = malloc(v20);
  }

  v23 = v22;
  v8[13] = v22;
  v24 = *(v11 + 40);
  v8[14] = v24;
  v25 = v24(v12, v11);
  if ((v25 & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v25 <= a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v46 = v21;
  (*(v11 + 56))(a2, v12, v11);
  v26 = *(v9 + 64);
  if (v26(v19, v9))
  {
    v27 = (*(v9 + 128))(v19, v9);
    if (v27 < 64)
    {
LABEL_15:
      v30 = (*(v9 + 120))(v19, v9);
      (*(v49 + 8))(v23, v19);
      v31 = v30 >> 63;
      goto LABEL_21;
    }

    v8[1] = 0;
    v36 = *(v9 + 96);
    v37 = lazy protocol witness table accessor for type Int and conformance Int(v27, v28, v29);
    v39 = v8 + 1;
    v38 = v46;
LABEL_20:
    v36(v39, &type metadata for Int, v37, v19, v9);
    LOBYTE(v31) = (*(*(*(v9 + 32) + 8) + 16))(v23, v38, v19);
    v40 = *(v49 + 8);
    v40(v38, v19);
    v40(v23, v19);
    goto LABEL_21;
  }

  v32 = v26(v19, v9);
  v33 = (*(v9 + 128))(v19, v9);
  if ((v32 & 1) == 0)
  {
    if (v33 >= 64)
    {
      (*(v49 + 8))(v23, v19);
      LOBYTE(v31) = 0;
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  if (v33 > 64)
  {
    *v8 = 0;
    v36 = *(v9 + 96);
    v37 = lazy protocol witness table accessor for type Int and conformance Int(v33, v34, v35);
    v38 = v46;
    v39 = v8;
    goto LABEL_20;
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v48, v19, v16, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v16, AssociatedConformanceWitness);
  (v48[3])(v47, v19, v48);
  v43 = (*(*(*(v9 + 32) + 8) + 16))(v23, v46, v19);
  v44 = *(v49 + 8);
  v44(v46, v19);
  if (v43)
  {
    v44(v23, v19);
    LOBYTE(v31) = 1;
  }

  else
  {
    v45 = (*(v9 + 120))(v19, v9);
    v44(v23, v19);
    v31 = v45 >> 63;
  }

LABEL_21:
  *(v8 + 120) = v31 & 1;
  return SIMDMask.subscript.modify;
}

void SIMDMask.subscript.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 120);
  v5 = (*(*a1 + 112))(*(*a1 + 48));
  if ((a2 & 1) == 0)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      v17 = v3[2];
      if (v5 > v17)
      {
        v28 = v3[12];
        v29 = v3[13];
        v7 = v3[10];
        v16 = v3[11];
        v9 = v3[8];
        v18 = v3[9];
        v19 = v3[7];
        v21 = v3[4];
        v20 = v3[5];
        v27 = v3[6];
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v21, v18, v19, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        if (v4)
        {
          v23 = 257;
        }

        else
        {
          v23 = 256;
        }

        if (v4)
        {
          v24 = &unk_18071E0B0;
        }

        else
        {
          v24 = &qword_18071E0A8;
        }

        (*(AssociatedConformanceWitness + 8))(v24, v23, v19, AssociatedConformanceWitness);
        (*(v21 + 3))(v9, v18, v21);
        (*(v20 + 64))(v16, v17, v27, v20);
        goto LABEL_21;
      }

LABEL_13:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_24:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_24;
  }

  v6 = v3[2];
  if (v5 <= v6)
  {
    goto LABEL_13;
  }

  v28 = v3[12];
  v29 = v3[13];
  v7 = v3[10];
  v9 = v3[8];
  v8 = v3[9];
  v10 = v3[7];
  v25 = v3[6];
  v26 = v3[11];
  v12 = v3[4];
  v11 = v3[5];
  v13 = swift_getAssociatedConformanceWitness(v12, v8, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  if (v4)
  {
    v14 = 257;
  }

  else
  {
    v14 = 256;
  }

  if (v4)
  {
    v15 = &unk_18071E0B0;
  }

  else
  {
    v15 = &qword_18071E0A8;
  }

  (*(v13 + 8))(v15, v14, v10, v13);
  (*(v12 + 3))(v9, v8, v12);
  v16 = v26;
  (*(v11 + 64))(v7, v6, v25, v11);
LABEL_21:
  free(v29);
  free(v28);
  free(v16);
  free(v7);
  free(v9);

  free(v3);
}

uint64_t protocol witness for SIMDStorage.subscript.getter in conformance SIMDMask<A>@<X0>(unint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v38 = a3;
  v4 = *(a2[4] + 8);
  v5 = *(*(v4 + 24) + 16);
  v6 = a2[2];
  v7 = *(a2[3] + 48);
  swift_getAssociatedTypeWitness(255, v7, v6, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v36 = v5;
  swift_getAssociatedTypeWitness(0, v5, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - v12;
  v14 = swift_checkMetadataState(0, v9);
  v37 = *(v14 - 1);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v36 - v18;
  v20 = (*(v7 + 40))(v6, v7);
  if ((v20 & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v20 <= a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v7 + 56))(a1, v6, v7);
  v21 = *(v4 + 64);
  if ((v21(v14, v4) & 1) == 0)
  {
    v28 = v21(v14, v4);
    v22 = (*(v4 + 128))(v14, v4);
    if (v28)
    {
      if (v22 > 64)
      {
        goto LABEL_9;
      }

      v33 = v36;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v36, v14, v11, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v11, AssociatedConformanceWitness);
      v33[3](v13, v14, v33);
      LOBYTE(v33) = (*(*(*(v4 + 32) + 8) + 16))(v19, v17, v14);
      v35 = *(v37 + 8);
      v35(v17, v14);
      if (v33)
      {
        result = (v35)(v19, v14);
        LOBYTE(v27) = 1;
        goto LABEL_17;
      }

      v32 = (*(v4 + 120))(v14, v4);
      result = (v35)(v19, v14);
    }

    else
    {
      if (v22 >= 64)
      {
        result = (*(v37 + 8))(v19, v14);
        LOBYTE(v27) = 0;
        goto LABEL_17;
      }

      v32 = (*(v4 + 120))(v14, v4);
      result = (*(v37 + 8))(v19, v14);
    }

    v27 = v32 >> 63;
    goto LABEL_17;
  }

  v22 = (*(v4 + 128))(v14, v4);
  if (v22 >= 64)
  {
LABEL_9:
    v39 = 0;
    v29 = *(v4 + 96);
    v30 = lazy protocol witness table accessor for type Int and conformance Int(v22, v23, v24);
    v29(&v39, &type metadata for Int, v30, v14, v4);
    LOBYTE(v27) = (*(*(*(v4 + 32) + 8) + 16))(v19, v17, v14);
    v31 = *(v37 + 8);
    v31(v17, v14);
    result = (v31)(v19, v14);
    goto LABEL_17;
  }

  v25 = (*(v4 + 120))(v14, v4);
  result = (*(v37 + 8))(v19, v14);
  v27 = v25 >> 63;
LABEL_17:
  *v38 = v27 & 1;
  return result;
}

uint64_t protocol witness for SIMDStorage.subscript.setter in conformance SIMDMask<A>(unsigned __int8 *a1, unint64_t a2, void *a3)
{
  v6 = *(*(*(a3[4] + 8) + 24) + 16);
  v7 = a3[2];
  v8 = *(a3[3] + 48);
  swift_getAssociatedTypeWitness(255, v8, v7, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  swift_getAssociatedTypeWitness(0, v6, v9, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  v15 = swift_checkMetadataState(0, v10);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  v18 = *a1;
  v19 = *(v8 + 40);
  v26 = v3;
  v20 = v19(v7, v8);
  if ((v20 & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v20 <= a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v15, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  if (v18)
  {
    v22 = &unk_18071E0B0;
    v23 = 257;
  }

  else
  {
    v22 = &qword_18071E0A8;
    v23 = 256;
  }

  (*(AssociatedConformanceWitness + 8))(v22, v23, v12, AssociatedConformanceWitness);
  (*(v6 + 24))(v14, v15, v6);
  return (*(v8 + 64))(v17, a2, v7, v8);
}

void (*protocol witness for SIMDStorage.subscript.modify in conformance SIMDMask<A>(void *a1, unint64_t a2, void *a3))(uint64_t a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x80, 0x47FuLL);
  }

  else
  {
    v7 = malloc(0x80uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[2] = a2;
  v7[3] = v3;
  v9 = *(a3[4] + 8);
  v10 = *(*(v9 + 24) + 16);
  v7[4] = v10;
  v11 = *(a3[3] + 48);
  v7[5] = v11;
  v12 = a3[2];
  v7[6] = v12;
  swift_getAssociatedTypeWitness(255, v11, v12, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v14 = v13;
  v48 = v10;
  swift_getAssociatedTypeWitness(0, v10, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v16 = v15;
  v8[7] = v15;
  v17 = *(*(v15 - 8) + 64);
  if (swift_coroFrameAlloc)
  {
    v18 = swift_coroFrameAlloc(v17, 0x47FuLL);
  }

  else
  {
    v18 = malloc(v17);
  }

  v47 = v18;
  v8[8] = v18;
  v19 = swift_checkMetadataState(0, v14);
  v8[9] = v19;
  v49 = *(v19 - 1);
  v20 = *(v49 + 64);
  if (swift_coroFrameAlloc)
  {
    v8[10] = swift_coroFrameAlloc(v20, 0x47FuLL);
    v8[11] = swift_coroFrameAlloc(v20, 0x47FuLL);
    v21 = swift_coroFrameAlloc(v20, 0x47FuLL);
    v8[12] = v21;
    v22 = swift_coroFrameAlloc(v20, 0x47FuLL);
  }

  else
  {
    v8[10] = malloc(v20);
    v8[11] = malloc(v20);
    v21 = malloc(v20);
    v8[12] = v21;
    v22 = malloc(v20);
  }

  v23 = v22;
  v8[13] = v22;
  v24 = *(v11 + 40);
  v8[14] = v24;
  v25 = v24(v12, v11);
  if ((v25 & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v25 <= a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v46 = v21;
  (*(v11 + 56))(a2, v12, v11);
  v26 = *(v9 + 64);
  if (v26(v19, v9))
  {
    v27 = (*(v9 + 128))(v19, v9);
    if (v27 < 64)
    {
LABEL_15:
      v30 = (*(v9 + 120))(v19, v9);
      (*(v49 + 8))(v23, v19);
      v31 = v30 >> 63;
      goto LABEL_21;
    }

    v8[1] = 0;
    v36 = *(v9 + 96);
    v37 = lazy protocol witness table accessor for type Int and conformance Int(v27, v28, v29);
    v39 = v8 + 1;
    v38 = v46;
LABEL_20:
    v36(v39, &type metadata for Int, v37, v19, v9);
    LOBYTE(v31) = (*(*(*(v9 + 32) + 8) + 16))(v23, v38, v19);
    v40 = *(v49 + 8);
    v40(v38, v19);
    v40(v23, v19);
    goto LABEL_21;
  }

  v32 = v26(v19, v9);
  v33 = (*(v9 + 128))(v19, v9);
  if ((v32 & 1) == 0)
  {
    if (v33 >= 64)
    {
      (*(v49 + 8))(v23, v19);
      LOBYTE(v31) = 0;
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  if (v33 > 64)
  {
    *v8 = 0;
    v36 = *(v9 + 96);
    v37 = lazy protocol witness table accessor for type Int and conformance Int(v33, v34, v35);
    v38 = v46;
    v39 = v8;
    goto LABEL_20;
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v48, v19, v16, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v16, AssociatedConformanceWitness);
  (v48[3])(v47, v19, v48);
  v43 = (*(*(*(v9 + 32) + 8) + 16))(v23, v46, v19);
  v44 = *(v49 + 8);
  v44(v46, v19);
  if (v43)
  {
    v44(v23, v19);
    LOBYTE(v31) = 1;
  }

  else
  {
    v45 = (*(v9 + 120))(v19, v9);
    v44(v23, v19);
    v31 = v45 >> 63;
  }

LABEL_21:
  *(v8 + 120) = v31 & 1;
  return protocol witness for SIMDStorage.subscript.modify in conformance SIMDMask<A>;
}

void protocol witness for SIMDStorage.subscript.modify in conformance SIMDMask<A>(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 120);
  v5 = (*(*a1 + 112))(*(*a1 + 48));
  if ((a2 & 1) == 0)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      v17 = v3[2];
      if (v5 > v17)
      {
        v28 = v3[12];
        v29 = v3[13];
        v7 = v3[10];
        v16 = v3[11];
        v9 = v3[8];
        v18 = v3[9];
        v19 = v3[7];
        v21 = v3[4];
        v20 = v3[5];
        v27 = v3[6];
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v21, v18, v19, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        if (v4)
        {
          v23 = 257;
        }

        else
        {
          v23 = 256;
        }

        if (v4)
        {
          v24 = &unk_18071E0B0;
        }

        else
        {
          v24 = &qword_18071E0A8;
        }

        (*(AssociatedConformanceWitness + 8))(v24, v23, v19, AssociatedConformanceWitness);
        (*(v21 + 3))(v9, v18, v21);
        (*(v20 + 64))(v16, v17, v27, v20);
        goto LABEL_21;
      }

LABEL_13:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_24:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_24;
  }

  v6 = v3[2];
  if (v5 <= v6)
  {
    goto LABEL_13;
  }

  v28 = v3[12];
  v29 = v3[13];
  v7 = v3[10];
  v9 = v3[8];
  v8 = v3[9];
  v10 = v3[7];
  v25 = v3[6];
  v26 = v3[11];
  v12 = v3[4];
  v11 = v3[5];
  v13 = swift_getAssociatedConformanceWitness(v12, v8, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  if (v4)
  {
    v14 = 257;
  }

  else
  {
    v14 = 256;
  }

  if (v4)
  {
    v15 = &unk_18071E0B0;
  }

  else
  {
    v15 = &qword_18071E0A8;
  }

  (*(v13 + 8))(v15, v14, v10, v13);
  (*(v12 + 3))(v9, v8, v12);
  v16 = v26;
  (*(v11 + 64))(v7, v6, v25, v11);
LABEL_21:
  free(v29);
  free(v28);
  free(v16);
  free(v7);
  free(v9);

  free(v3);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SIMDMask<A>(uint64_t a1, const char *a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMDMask<A>, a2, a3);

  return SIMD.hash(into:)(a1, a2, WitnessTable);
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance SIMDMask<A>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMDMask<A>, a1, a3);

  return SIMD.description.getter(a1, WitnessTable);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance SIMDMask<A>@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMDMask<A>, a2, a3);

  return SIMD.init(arrayLiteral:)(a1, a2, WitnessTable, a4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SIMDMask<A>(uint64_t a1, uint64_t a2, void *a3)
{
  v119 = a2;
  v4 = *(a3[4] + 8);
  v5 = *(*(v4 + 24) + 16);
  v6 = a3[2];
  v7 = *(a3[3] + 48);
  swift_getAssociatedTypeWitness(255, v7, v6, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v122 = v5;
  swift_getAssociatedTypeWitness(0, v5, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v116 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v117 = &v99 - v11;
  v12 = swift_checkMetadataState(0, v9);
  v13 = *(v12 - 1);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v118 = &v99 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v99 - v19;
  v120 = *(v7 + 40);
  v121 = a1;
  v21 = v120(v6, v7);
  if (v21 < 0)
  {
LABEL_48:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v22 = v21;
  if (v21)
  {
    v115 = v16;
    v23 = 0;
    v24 = v7 + 56;
    v25 = v4 + 64;
    v26 = v4 + 128;
    v27 = (v13 + 8);
    v28 = v4 + 120;
    v29 = v122 + 24;
    v30 = v4 + 96;
    v31 = v21 - 1;
    v32 = 1;
    while (1)
    {
      if ((v32 & 1) == 0)
      {
        v32 = 0;
        if (v31 == v23)
        {
          return v32 & 1;
        }

        goto LABEL_11;
      }

      v108 = v31;
      v109 = v29;
      v110 = v30;
      v111 = v28;
      v112 = v26;
      v113 = v25;
      v114 = v24;
      v33 = v120(v6, v7);
      if (v33 < 0)
      {
        goto LABEL_48;
      }

      if (v23 >= v33)
      {
        goto LABEL_47;
      }

      v106 = v6;
      v107 = v27;
      v103 = *(v7 + 56);
      v103(v23, v6, v7);
      v34 = v20;
      v35 = *(v4 + 64);
      v36 = v35(v12, v4);
      v104 = v35;
      if (v36)
      {
        v102 = *(v4 + 128);
        v37 = v102(v12, v4);
        v40 = v34;
        if (v37 >= 64)
        {
          v123[0] = 0;
          v51 = *(v4 + 96);
          v52 = lazy protocol witness table accessor for type Int and conformance Int(v37, v38, v39);
          v53 = v118;
          v51(v123, &type metadata for Int, v52, v12, v4);
          v105 = (*(*(*(v4 + 32) + 8) + 16))(v40, v53, v12);
          v54 = v53;
          v42 = *v107;
          (*v107)(v54, v12);
          v42(v40, v12);
        }

        else
        {
          v41 = (*(v4 + 120))(v12, v4);
          v42 = *v107;
          (*v107)(v34, v12);
          v105 = v41 >> 63;
        }

        v47 = v106;
      }

      else
      {
        v43 = v35(v12, v4);
        v102 = *(v4 + 128);
        v44 = v102(v12, v4);
        v40 = v34;
        if (v43)
        {
          v47 = v106;
          if (v44 > 64)
          {
            v123[0] = 0;
            v105 = *(v4 + 96);
            v48 = lazy protocol witness table accessor for type Int and conformance Int(v44, v45, v46);
            v49 = v118;
            (v105)(v123, &type metadata for Int, v48, v12, v4);
            v105 = (*(*(*(v4 + 32) + 8) + 16))(v40, v49, v12);
            v50 = v49;
            v42 = *v107;
            (*v107)(v50, v12);
            v42(v40, v12);
            goto LABEL_25;
          }

          v57 = v122;
          v58 = v116;
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v122, v12, v116, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
          (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v58, AssociatedConformanceWitness);
          v60 = v57;
          v61 = *(v57 + 3);
          v62 = v118;
          v61(v117, v12, v60);
          LOBYTE(v58) = (*(*(*(v4 + 32) + 8) + 16))(v40, v62, v12);
          v101 = *v107;
          v101(v62, v12);
          if (v58)
          {
            v63 = v101;
            v101(v40, v12);
            v42 = v63;
            v56 = 1;
          }

          else
          {
            v105 = (*(v4 + 120))(v12, v4);
            v64 = v101;
            v101(v40, v12);
            v42 = v64;
            v56 = v105 >> 63;
          }
        }

        else
        {
          v47 = v106;
          if (v44 >= 64)
          {
            v42 = *v107;
            (*v107)(v40, v12);
            v105 = 0;
            goto LABEL_25;
          }

          v55 = (*(v4 + 120))(v12, v4);
          v42 = *v107;
          (*v107)(v40, v12);
          v56 = v55 >> 63;
        }

        v105 = v56;
      }

LABEL_25:
      v65 = v120(v47, v7);
      if (v65 < 0)
      {
        goto LABEL_48;
      }

      if (v23 >= v65)
      {
LABEL_47:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v66 = v47;
      v100 = v40;
      v101 = v42;
      v67 = v115;
      v103(v23, v66, v7);
      v68 = v104;
      if ((v104)(v12, v4))
      {
        v69 = v67;
        v70 = v102(v12, v4);
        if (v70 >= 64)
        {
          v123[0] = 0;
          v84 = *(v4 + 96);
          v85 = lazy protocol witness table accessor for type Int and conformance Int(v70, v71, v72);
          v86 = v118;
          v84(v123, &type metadata for Int, v85, v12, v4);
          LOBYTE(v74) = (*(*(*(v4 + 32) + 8) + 16))(v69, v86, v12);
          v87 = v86;
          v27 = v107;
          v88 = v101;
          v101(v87, v12);
          v88(v69, v12);
        }

        else
        {
          v73 = (*(v4 + 120))(v12, v4);
          v27 = v107;
          v101(v67, v12);
          v74 = v73 >> 63;
        }

        v20 = v100;
        goto LABEL_35;
      }

      v75 = v68(v12, v4);
      v76 = v102(v12, v4);
      if ((v75 & 1) == 0)
      {
        v20 = v100;
        if (v76 < 64)
        {
          v89 = v115;
          v90 = (*(v4 + 120))(v12, v4);
          v91 = v89;
          v27 = v107;
          v101(v91, v12);
          v74 = v90 >> 63;
        }

        else
        {
          v27 = v107;
          v101(v115, v12);
          LOBYTE(v74) = 0;
        }

        goto LABEL_35;
      }

      v20 = v100;
      if (v76 > 64)
      {
        v123[0] = 0;
        v79 = *(v4 + 96);
        v80 = lazy protocol witness table accessor for type Int and conformance Int(v76, v77, v78);
        v81 = v118;
        v79(v123, &type metadata for Int, v80, v12, v4);
        LOBYTE(v74) = (*(*(*(v4 + 32) + 8) + 16))(v115, v81, v12);
        v82 = v81;
        v27 = v107;
        v83 = v101;
        v101(v82, v12);
        v83(v115, v12);
LABEL_35:
        v6 = v106;
        goto LABEL_36;
      }

      v92 = v122;
      v93 = v116;
      v94 = swift_getAssociatedConformanceWitness(v122, v12, v116, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      (*(v94 + 8))(&qword_18071E0A8, 256, v93, v94);
      v95 = v118;
      (*(v92 + 3))(v117, v12, v92);
      LOBYTE(v93) = (*(*(*(v4 + 32) + 8) + 16))(v115, v95, v12);
      v96 = v95;
      v27 = v107;
      v101(v96, v12);
      v6 = v106;
      if (v93)
      {
        v101(v115, v12);
        LOBYTE(v74) = 1;
      }

      else
      {
        v97 = v115;
        v104 = (*(v4 + 120))(v12, v4);
        v101(v97, v12);
        v74 = v104 >> 63;
      }

LABEL_36:
      v32 = v105 ^ v74 ^ 1;
      v31 = v108;
      v29 = v109;
      v25 = v113;
      v24 = v114;
      v28 = v111;
      v26 = v112;
      v30 = v110;
      if (v108 == v23)
      {
        return v32 & 1;
      }

LABEL_11:
      if (v22 == ++v23)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }
  }

  v32 = 1;
  return v32 & 1;
}

uint64_t specialized static SIMDMask.random<A>(using:)@<X0>(unint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *(*(*(a3 + 8) + 24) + 16);
  v7 = *(a2 + 48);
  swift_getAssociatedTypeWitness(255, v7, a1, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v37 = v6;
  swift_getAssociatedTypeWitness(0, v6, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v36 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v13 = swift_checkMetadataState(0, v9);
  MEMORY[0x1EEE9AC00](v13);
  v35 = &v29 - v14;
  (*(v7 + 48))(a1, v7);
  v15 = *(v7 + 40);
  result = v15(a1, v7);
  if (result < 0)
  {
    goto LABEL_12;
  }

  v17 = result;
  v34 = v12;
  if (result)
  {
    v18 = 0;
    v32 = v7 + 64;
    v33 = v37 + 24;
    while (1)
    {
      __buf = 0;
      swift_stdlib_random(&__buf, 8uLL);
      v19 = __buf;
      v20 = v15(a1, v7);
      if (v20 < 0)
      {
        break;
      }

      if (v18 >= v20)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v30 = v15;
      v21 = v36;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v37, v13, v36, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v23 = *(AssociatedConformanceWitness + 8);
      v31 = a4;
      v24 = v34;
      if ((v19 & 0x20000) != 0)
      {
        v25 = &qword_18071E0A8;
        v26 = 256;
      }

      else
      {
        v25 = &unk_18071E0B0;
        v26 = 257;
      }

      v23(v25, v26, v21, AssociatedConformanceWitness);
      v27 = v35;
      (*(v37 + 3))(v24, v13);
      v28 = v27;
      a4 = v31;
      result = (*(v7 + 64))(v28, v18++, a1, v7);
      v15 = v30;
      if (v17 == v18)
      {
        return result;
      }
    }

LABEL_12:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t static SIMDMask.random<A>(using:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = a2;
  v12 = *(*(*(a6 + 8) + 24) + 16);
  v13 = *(a4 + 48);
  swift_getAssociatedTypeWitness(255, v13, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v15 = v14;
  v54 = v12;
  swift_getAssociatedTypeWitness(0, v12, v14, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v50 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  v19 = swift_checkMetadataState(0, v15);
  MEMORY[0x1EEE9AC00](v19);
  v49 = &v41 - v20;
  (*(v13 + 48))(v9, v13);
  v52 = *(v13 + 40);
  v53 = a7;
  v51 = v13 + 40;
  result = v52(v9, v13);
  if (result < 0)
  {
    goto LABEL_12;
  }

  v48 = v18;
  if (result)
  {
    v22 = 0;
    v23 = a5 + 8;
    v24 = *(a5 + 8);
    v44 = v13 + 64;
    v45 = v54 + 24;
    v46 = a1;
    v47 = result;
    while (1)
    {
      v25 = a3;
      v26 = a3;
      v27 = a5;
      v28 = v23;
      v29 = v24;
      v30 = v24(v26, a5);
      v31 = v52(v9, v13);
      if (v31 < 0)
      {
        break;
      }

      if (v22 >= v31)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v43 = v19;
      v32 = v50;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v54, v19, v50, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v34 = *(AssociatedConformanceWitness + 8);
      v42 = v9;
      v35 = v48;
      if ((v30 & 0x20000) != 0)
      {
        v36 = &qword_18071E0A8;
        v37 = 256;
      }

      else
      {
        v36 = &unk_18071E0B0;
        v37 = 257;
      }

      v34(v36, v37, v32, AssociatedConformanceWitness);
      v38 = v49;
      v39 = v35;
      v19 = v43;
      (*(v54 + 3))(v39, v43);
      v40 = v38;
      v9 = v42;
      (*(v13 + 64))(v40, v22++, v42, v13);
      result = v47;
      a5 = v27;
      a3 = v25;
      v23 = v28;
      v24 = v29;
      if (v47 == v22)
      {
        return result;
      }
    }

LABEL_12:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t SIMD<>.leadingZeroBitCount.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = a1;
  v9 = *(a2 + 48);
  swift_getAssociatedTypeWitness(0, v9, a1, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  (*(v9 + 48))(v7, v9);
  result = (*(v9 + 40))(v7, v9);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (result)
  {
    v19 = v12;
    v20 = v11;
    v21 = 0;
    v22 = *(v9 + 56);
    v37 = a3 + 152;
    v38 = v22;
    v39 = v9 + 56;
    v40 = result;
    v35 = v9 + 64;
    v36 = (v19 + 8);
    v41 = v9;
    v42 = v15;
    do
    {
      v43 = v21 + 1;
      v38(v21, v7, v9);
      v23 = (*(a3 + 152))(v20, a3);
      v24 = (*v36)(v15, v20);
      v44 = v23;
      v25 = v17;
      v26 = *(a3 + 8);
      v27 = a4;
      v28 = v7;
      v29 = v5;
      v30 = *(v26 + 88);
      v33 = lazy protocol witness table accessor for type Int and conformance Int(v24, v31, v32);
      v34 = v26;
      v17 = v25;
      v30(&v44, &type metadata for Int, v33, v20, v34);
      v5 = v29;
      v7 = v28;
      a4 = v27;
      v9 = v41;
      v15 = v42;
      (*(v41 + 64))(v17, v21, v7, v41);
      result = v40;
      v21 = v43;
    }

    while (v40 != v43);
  }

  return result;
}

uint64_t SIMD<>.trailingZeroBitCount.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 48);
  swift_getAssociatedTypeWitness(0, v7, a1, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v29 - v14;
  (*(v7 + 48))(a1, v7);
  result = (*(v7 + 40))(a1, v7);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v37 = v9;
  if (result)
  {
    v17 = 0;
    v18 = *(v7 + 56);
    v30 = (v10 + 8);
    v31 = v18;
    v32 = v7 + 56;
    v33 = a4;
    v29[1] = v7 + 64;
    v35 = v7;
    v36 = v13;
    v34 = result;
    do
    {
      v38 = v17 + 1;
      v31(v17, a1, v7);
      v19 = a3;
      v20 = *(a3 + 8);
      v21 = v37;
      v22 = (*(v20 + 144))(v37, v20);
      v23 = (*v30)(v13, v21);
      v39 = v22;
      v24 = *(v20 + 88);
      v27 = lazy protocol witness table accessor for type Int and conformance Int(v23, v25, v26);
      v28 = v20;
      a3 = v19;
      v24(&v39, &type metadata for Int, v27, v21, v28);
      v7 = v35;
      v13 = v36;
      (*(v35 + 64))(v15, v17, a1, v35);
      result = v34;
      v17 = v38;
    }

    while (v34 != v38);
  }

  return result;
}

uint64_t SIMD<>.nonzeroBitCount.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = a1;
  v9 = *(a2 + 48);
  swift_getAssociatedTypeWitness(0, v9, a1, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  (*(v9 + 48))(v7, v9);
  result = (*(v9 + 40))(v7, v9);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (result)
  {
    v19 = v12;
    v20 = v11;
    v21 = 0;
    v22 = *(v9 + 56);
    v37 = a3 + 144;
    v38 = v22;
    v39 = v9 + 56;
    v40 = result;
    v35 = v9 + 64;
    v36 = (v19 + 8);
    v41 = v9;
    v42 = v15;
    do
    {
      v43 = v21 + 1;
      v38(v21, v7, v9);
      v23 = (*(a3 + 144))(v20, a3);
      v24 = (*v36)(v15, v20);
      v44 = v23;
      v25 = v17;
      v26 = *(a3 + 8);
      v27 = a4;
      v28 = v7;
      v29 = v5;
      v30 = *(v26 + 88);
      v33 = lazy protocol witness table accessor for type Int and conformance Int(v24, v31, v32);
      v34 = v26;
      v17 = v25;
      v30(&v44, &type metadata for Int, v33, v20, v34);
      v5 = v29;
      v7 = v28;
      a4 = v27;
      v9 = v41;
      v15 = v42;
      (*(v41 + 64))(v17, v21, v7, v41);
      result = v40;
      v21 = v43;
    }

    while (v40 != v43);
  }

  return result;
}

uint64_t static SIMD<>.~ prefix(_:)@<X0>(unint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 48);
  swift_getAssociatedTypeWitness(0, v7, a1, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v25 - v14;
  (*(v7 + 48))(a1, v7);
  result = (*(v7 + 40))(a1, v7);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v30 = v15;
  v31 = a3;
  v29 = v9;
  if (result)
  {
    v17 = a4;
    v18 = 0;
    v19 = *(v7 + 56);
    v26 = (v10 + 8);
    v27 = v19;
    v28 = v7 + 56;
    v25[1] = v7 + 64;
    do
    {
      v20 = result;
      v27(v18, a1, v7);
      v21 = v17;
      v22 = v29;
      v23 = v30;
      (*(*(v31 + 8) + 184))(v13, v29);
      (*v26)(v13, v22);
      v24 = v23;
      v17 = v21;
      (*(v7 + 64))(v24, v18, a1, v7);
      result = v20;
      ++v18;
    }

    while (v20 != v18);
  }

  return result;
}

uint64_t static SIMD<>.& infix(_:_:)@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v38 = a4;
  v5 = a2;
  v8 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v39 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v29 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v29 - v17;
  (*(v8 + 48))(v5, v8);
  result = (*(v8 + 40))(v5, v8);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v36 = a5;
  v37 = a1;
  v34 = v13;
  v35 = v18;
  if (result)
  {
    v20 = 0;
    v21 = *(v8 + 56);
    v30 = (v39 + 8);
    v31 = v21;
    v32 = v8 + 56;
    v33 = result;
    v29[1] = v8 + 64;
    do
    {
      v39 = v20 + 1;
      v22 = v16;
      v23 = v31;
      v31(v20, v5, v8);
      v24 = v34;
      v23(v20, v5, v8);
      v25 = v5;
      v26 = v35;
      (*(*(v38 + 8) + 192))(v22, v24, v10);
      v27 = *v30;
      (*v30)(v24, v10);
      v27(v22, v10);
      v28 = v26;
      v5 = v25;
      (*(v8 + 64))(v28, v20, v25, v8);
      v16 = v22;
      result = v33;
      v20 = v39;
    }

    while (v33 != v39);
  }

  return result;
}

uint64_t static SIMD<>.^ infix(_:_:)@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v38 = a4;
  v5 = a2;
  v8 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v39 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v29 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v29 - v17;
  (*(v8 + 48))(v5, v8);
  result = (*(v8 + 40))(v5, v8);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v36 = a5;
  v37 = a1;
  v34 = v13;
  v35 = v18;
  if (result)
  {
    v20 = 0;
    v21 = *(v8 + 56);
    v30 = (v39 + 8);
    v31 = v21;
    v32 = v8 + 56;
    v33 = result;
    v29[1] = v8 + 64;
    do
    {
      v39 = v20 + 1;
      v22 = v16;
      v23 = v31;
      v31(v20, v5, v8);
      v24 = v34;
      v23(v20, v5, v8);
      v25 = v5;
      v26 = v35;
      (*(*(v38 + 8) + 224))(v22, v24, v10);
      v27 = *v30;
      (*v30)(v24, v10);
      v27(v22, v10);
      v28 = v26;
      v5 = v25;
      (*(v8 + 64))(v28, v20, v25, v8);
      v16 = v22;
      result = v33;
      v20 = v39;
    }

    while (v33 != v39);
  }

  return result;
}

uint64_t static SIMD<>.| infix(_:_:)@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v38 = a4;
  v5 = a2;
  v8 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v39 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v29 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v29 - v17;
  (*(v8 + 48))(v5, v8);
  result = (*(v8 + 40))(v5, v8);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v36 = a5;
  v37 = a1;
  v34 = v13;
  v35 = v18;
  if (result)
  {
    v20 = 0;
    v21 = *(v8 + 56);
    v30 = (v39 + 8);
    v31 = v21;
    v32 = v8 + 56;
    v33 = result;
    v29[1] = v8 + 64;
    do
    {
      v39 = v20 + 1;
      v22 = v16;
      v23 = v31;
      v31(v20, v5, v8);
      v24 = v34;
      v23(v20, v5, v8);
      v25 = v5;
      v26 = v35;
      (*(*(v38 + 8) + 208))(v22, v24, v10);
      v27 = *v30;
      (*v30)(v24, v10);
      v27(v22, v10);
      v28 = v26;
      v5 = v25;
      (*(v8 + 64))(v28, v20, v25, v8);
      v16 = v22;
      result = v33;
      v20 = v39;
    }

    while (v33 != v39);
  }

  return result;
}

uint64_t static SIMD<>.&<< infix(_:_:)@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v36 = a1;
  v8 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v38 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v28 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v28 - v17;
  (*(v8 + 48))(a2, v8);
  result = (*(v8 + 40))(a2, v8);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v37 = a4;
  v34 = v18;
  v35 = a5;
  if (result)
  {
    v20 = a2;
    v21 = 0;
    v22 = *(v8 + 56);
    v30 = v37 + 216;
    v31 = v22;
    v32 = v8 + 56;
    v33 = result;
    v28[1] = v8 + 64;
    v29 = (v38 + 8);
    do
    {
      v38 = v21 + 1;
      v23 = v31;
      v31(v21, v20, v8);
      v23(v21, v20, v8);
      v24 = v20;
      v25 = v34;
      (*(v37 + 216))(v16, v13, v10);
      v26 = *v29;
      (*v29)(v13, v10);
      v26(v16, v10);
      v27 = v25;
      v20 = v24;
      (*(v8 + 64))(v27, v21, v24, v8);
      result = v33;
      v21 = v38;
    }

    while (v33 != v38);
  }

  return result;
}

uint64_t static SIMD<>.&>> infix(_:_:)@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v36 = a1;
  v8 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v38 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v28 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v28 - v17;
  (*(v8 + 48))(a2, v8);
  result = (*(v8 + 40))(a2, v8);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v37 = a4;
  v34 = v18;
  v35 = a5;
  if (result)
  {
    v20 = a2;
    v21 = 0;
    v22 = *(v8 + 56);
    v30 = v37 + 200;
    v31 = v22;
    v32 = v8 + 56;
    v33 = result;
    v28[1] = v8 + 64;
    v29 = (v38 + 8);
    do
    {
      v38 = v21 + 1;
      v23 = v31;
      v31(v21, v20, v8);
      v23(v21, v20, v8);
      v24 = v20;
      v25 = v34;
      (*(v37 + 200))(v16, v13, v10);
      v26 = *v29;
      (*v29)(v13, v10);
      v26(v16, v10);
      v27 = v25;
      v20 = v24;
      (*(v8 + 64))(v27, v21, v24, v8);
      result = v33;
      v21 = v38;
    }

    while (v33 != v38);
  }

  return result;
}

uint64_t static SIMD<>.&+ infix(_:_:)@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v40 = a1;
  v8 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v42 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v31 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - v17;
  (*(v8 + 48))(a2, v8);
  result = (*(v8 + 40))(a2, v8);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v41 = a4;
  v38 = v18;
  v39 = a5;
  v37 = v10;
  if (result)
  {
    v20 = a2;
    v21 = v16;
    v22 = v13;
    v23 = 0;
    v24 = *(v8 + 56);
    v33 = v41 + 80;
    v34 = v24;
    v35 = v8 + 56;
    v36 = result;
    v31 = v8 + 64;
    v32 = (v42 + 8);
    do
    {
      v42 = v23 + 1;
      v25 = v34;
      v34(v23, v20, v8);
      v25(v23, v20, v8);
      v26 = v20;
      v27 = v37;
      v28 = v38;
      (*(v41 + 80))(v38, v22, v37);
      v29 = *v32;
      (*v32)(v22, v27);
      v29(v21, v27);
      v30 = v28;
      v20 = v26;
      (*(v8 + 64))(v30, v23, v26, v8);
      result = v36;
      v23 = v42;
    }

    while (v36 != v42);
  }

  return result;
}

uint64_t static SIMD<>.&* infix(_:_:)@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v40 = a1;
  v8 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v42 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v31 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - v17;
  (*(v8 + 48))(a2, v8);
  result = (*(v8 + 40))(a2, v8);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v41 = a4;
  v38 = v18;
  v39 = a5;
  v37 = v10;
  if (result)
  {
    v20 = a2;
    v21 = v16;
    v22 = v13;
    v23 = 0;
    v24 = *(v8 + 56);
    v33 = v41 + 96;
    v34 = v24;
    v35 = v8 + 56;
    v36 = result;
    v31 = v8 + 64;
    v32 = (v42 + 8);
    do
    {
      v42 = v23 + 1;
      v25 = v34;
      v34(v23, v20, v8);
      v25(v23, v20, v8);
      v26 = v20;
      v27 = v37;
      v28 = v38;
      (*(v41 + 96))(v38, v21, v37);
      v29 = *v32;
      (*v32)(v22, v27);
      v29(v21, v27);
      v30 = v28;
      v20 = v26;
      (*(v8 + 64))(v30, v23, v26, v8);
      result = v36;
      v23 = v42;
    }

    while (v36 != v42);
  }

  return result;
}

uint64_t static SIMD<>./ infix(_:_:)@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v38 = a4;
  v5 = a2;
  v8 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v39 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v29 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v29 - v17;
  (*(v8 + 48))(v5, v8);
  result = (*(v8 + 40))(v5, v8);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v36 = a5;
  v37 = a1;
  v34 = v13;
  v35 = v18;
  if (result)
  {
    v20 = 0;
    v21 = *(v8 + 56);
    v30 = (v39 + 8);
    v31 = v21;
    v32 = v8 + 56;
    v33 = result;
    v29[1] = v8 + 64;
    do
    {
      v39 = v20 + 1;
      v22 = v16;
      v23 = v31;
      v31(v20, v5, v8);
      v24 = v34;
      v23(v20, v5, v8);
      v25 = v5;
      v26 = v35;
      (*(*(v38 + 8) + 152))(v22, v24, v10);
      v27 = *v30;
      (*v30)(v24, v10);
      v27(v22, v10);
      v28 = v26;
      v5 = v25;
      (*(v8 + 64))(v28, v20, v25, v8);
      v16 = v22;
      result = v33;
      v20 = v39;
    }

    while (v33 != v39);
  }

  return result;
}

{
  v36 = a1;
  v8 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v38 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v28 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v28 - v17;
  (*(v8 + 48))(a2, v8);
  result = (*(v8 + 40))(a2, v8);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v37 = a4;
  v34 = v18;
  v35 = a5;
  if (result)
  {
    v20 = a2;
    v21 = 0;
    v22 = *(v8 + 56);
    v30 = v37 + 192;
    v31 = v22;
    v32 = v8 + 56;
    v33 = result;
    v28[1] = v8 + 64;
    v29 = (v38 + 8);
    do
    {
      v38 = v21 + 1;
      v23 = v31;
      v31(v21, v20, v8);
      v23(v21, v20, v8);
      v24 = v20;
      v25 = v34;
      (*(v37 + 192))(v16, v13, v10);
      v26 = *v29;
      (*v29)(v13, v10);
      v26(v16, v10);
      v27 = v25;
      v20 = v24;
      (*(v8 + 64))(v27, v21, v24, v8);
      result = v33;
      v21 = v38;
    }

    while (v33 != v38);
  }

  return result;
}

uint64_t static SIMD<>.% infix(_:_:)@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v38 = a4;
  v5 = a2;
  v8 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v39 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v29 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v29 - v17;
  (*(v8 + 48))(v5, v8);
  result = (*(v8 + 40))(v5, v8);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v36 = a5;
  v37 = a1;
  v34 = v13;
  v35 = v18;
  if (result)
  {
    v20 = 0;
    v21 = *(v8 + 56);
    v30 = (v39 + 8);
    v31 = v21;
    v32 = v8 + 56;
    v33 = result;
    v29[1] = v8 + 64;
    do
    {
      v39 = v20 + 1;
      v22 = v16;
      v23 = v31;
      v31(v20, v5, v8);
      v24 = v34;
      v23(v20, v5, v8);
      v25 = v5;
      v26 = v35;
      (*(*(v38 + 8) + 168))(v22, v24, v10);
      v27 = *v30;
      (*v30)(v24, v10);
      v27(v22, v10);
      v28 = v26;
      v5 = v25;
      (*(v8 + 64))(v28, v20, v25, v8);
      v16 = v22;
      result = v33;
      v20 = v39;
    }

    while (v33 != v39);
  }

  return result;
}

uint64_t static SIMD<>.+ infix(_:_:)@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v38 = a4;
  v5 = a2;
  v8 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v39 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v29 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v29 - v17;
  (*(v8 + 48))(v5, v8);
  result = (*(v8 + 40))(v5, v8);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v36 = a5;
  v37 = a1;
  v34 = v13;
  v35 = v18;
  if (result)
  {
    v20 = 0;
    v21 = *(v8 + 56);
    v30 = (v39 + 8);
    v31 = v21;
    v32 = v8 + 56;
    v33 = result;
    v29[1] = v8 + 64;
    do
    {
      v39 = v20 + 1;
      v22 = v16;
      v23 = v31;
      v31(v20, v5, v8);
      v24 = v34;
      v23(v20, v5, v8);
      v25 = v5;
      v26 = v35;
      (*(*(*(*(v38 + 16) + 8) + 8) + 24))(v22, v24, v10);
      v27 = *v30;
      (*v30)(v24, v10);
      v27(v22, v10);
      v28 = v26;
      v5 = v25;
      (*(v8 + 64))(v28, v20, v25, v8);
      v16 = v22;
      result = v33;
      v20 = v39;
    }

    while (v33 != v39);
  }

  return result;
}

uint64_t static SIMD<>.- infix(_:_:)@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v38 = a4;
  v5 = a2;
  v8 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v39 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v29 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v29 - v17;
  (*(v8 + 48))(v5, v8);
  result = (*(v8 + 40))(v5, v8);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v36 = a5;
  v37 = a1;
  v34 = v13;
  v35 = v18;
  if (result)
  {
    v20 = 0;
    v21 = *(v8 + 56);
    v30 = (v39 + 8);
    v31 = v21;
    v32 = v8 + 56;
    v33 = result;
    v29[1] = v8 + 64;
    do
    {
      v39 = v20 + 1;
      v22 = v16;
      v23 = v31;
      v31(v20, v5, v8);
      v24 = v34;
      v23(v20, v5, v8);
      v25 = v5;
      v26 = v35;
      (*(*(*(*(v38 + 16) + 8) + 8) + 40))(v22, v24, v10);
      v27 = *v30;
      (*v30)(v24, v10);
      v27(v22, v10);
      v28 = v26;
      v5 = v25;
      (*(v8 + 64))(v28, v20, v25, v8);
      v16 = v22;
      result = v33;
      v20 = v39;
    }

    while (v33 != v39);
  }

  return result;
}

uint64_t static SIMD<>.* infix(_:_:)@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v38 = a4;
  v5 = a2;
  v8 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v39 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v29 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v29 - v17;
  (*(v8 + 48))(v5, v8);
  result = (*(v8 + 40))(v5, v8);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v36 = a5;
  v37 = a1;
  v34 = v13;
  v35 = v18;
  if (result)
  {
    v20 = 0;
    v21 = *(v8 + 56);
    v30 = (v39 + 8);
    v31 = v21;
    v32 = v8 + 56;
    v33 = result;
    v29[1] = v8 + 64;
    do
    {
      v39 = v20 + 1;
      v22 = v16;
      v23 = v31;
      v31(v20, v5, v8);
      v24 = v34;
      v23(v20, v5, v8);
      v25 = v5;
      v26 = v35;
      (*(*(*(v38 + 16) + 8) + 64))(v22, v24, v10);
      v27 = *v30;
      (*v30)(v24, v10);
      v27(v22, v10);
      v28 = v26;
      v5 = v25;
      (*(v8 + 64))(v28, v20, v25, v8);
      v16 = v22;
      result = v33;
      v20 = v39;
    }

    while (v33 != v39);
  }

  return result;
}

uint64_t SIMD<>.addingProduct(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a1;
  v48 = a2;
  v49 = a5;
  v6 = a3;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v50 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v39 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v39 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v39 - v20;
  (*(v8 + 48))(v6, v8);
  result = (*(v8 + 40))(v6, v8);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v45 = v13;
  v46 = a6;
  if (result)
  {
    v23 = v10;
    v24 = v16;
    v25 = v21;
    v26 = v19;
    v27 = 0;
    v28 = *(v8 + 56);
    v41 = v49 + 256;
    v42 = v28;
    v43 = v8 + 56;
    v44 = result;
    v39 = v8 + 64;
    v40 = (v50 + 8);
    v51 = v23;
    do
    {
      v50 = v27 + 1;
      v29 = v42;
      v42(v27, v6, v8);
      v29(v27, v6, v8);
      v30 = v6;
      v31 = v25;
      v32 = v26;
      v33 = v24;
      v34 = v8;
      v35 = v45;
      v29(v27, v30, v34);
      (*(v49 + 256))(v33, v35, v51);
      v36 = *v40;
      v37 = v35;
      v8 = v34;
      v24 = v33;
      v26 = v32;
      v25 = v31;
      v6 = v30;
      v38 = v51;
      (*v40)(v37, v51);
      v36(v24, v38);
      v36(v26, v38);
      (*(v8 + 64))(v25, v27, v6, v8);
      result = v44;
      v27 = v50;
    }

    while (v44 != v50);
  }

  return result;
}

{
  v71 = a2;
  v73 = a5;
  v74 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v70 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v61 = &v59 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v60 = &v59 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v63 = &v59 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v62 = *(a3 - 8);
  v20 = MEMORY[0x1EEE9AC00](&v59 - v19);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v59 - v24;
  v76 = v10;
  v26 = v23;
  v28 = v27;
  v67 = *(v10 + 16);
  v67(v23, a1);
  v29 = *(v8 + 48);
  v72 = v8 + 48;
  v69 = v29;
  (v29)(a3, v8);
  v30 = *(v8 + 40);
  v68 = v8 + 40;
  v66 = v30;
  v31 = v30(a3, v8);
  if (v31 < 0)
  {
    goto LABEL_10;
  }

  v75 = v25;
  v77 = v22;
  v78 = a3;
  v32 = v28;
  v33 = v63;
  v34 = v67;
  if (v31)
  {
    v35 = 0;
    do
    {
      v36 = v31;
      v37 = v32;
      v34(v33, v26, v32);
      (*(v8 + 64))(v33, v35, v78, v8);
      v31 = v36;
      v32 = v37;
      ++v35;
    }

    while (v36 != v35);
  }

  v38 = v76 + 8;
  v39 = *(v76 + 8);
  v40 = v32;
  v39(v26, v32);
  v41 = v78;
  (*(v62 + 32))(v75, v77, v78);
  (v69)(v41, v8);
  v42 = v66(v41, v8);
  if (v42 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v43 = v8;
  v76 = v38;
  v45 = v60;
  v44 = v61;
  v72 = v43;
  v46 = v63;
  if (v42)
  {
    v47 = v39;
    v48 = 0;
    v49 = *(v72 + 56);
    v65 = v73 + 256;
    v66 = v49;
    v68 = v72 + 56;
    v69 = v42;
    v64 = v72 + 64;
    v67 = v47;
    do
    {
      v77 = v48 + 1;
      v50 = v72;
      v51 = v66;
      (v66)(v48, v41, v72);
      v51(v48, v41, v50);
      v52 = v46;
      v53 = v45;
      v54 = v44;
      v55 = v70;
      v51(v48, v78, v50);
      (*(v73 + 256))(v54, v55, v40);
      v56 = v55;
      v44 = v54;
      v45 = v53;
      v46 = v52;
      v57 = v67;
      v41 = v78;
      v67(v56, v40);
      v57(v44, v40);
      v57(v45, v40);
      (*(v50 + 64))(v46, v48, v41, v50);
      v48 = v77;
    }

    while (v69 != v77);
  }

  return (*(v62 + 8))(v75, v41);
}

{
  v71 = a1;
  v73 = a5;
  v74 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v70 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v61 = &v59 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v60 = &v59 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v63 = &v59 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v62 = *(a3 - 8);
  v20 = MEMORY[0x1EEE9AC00](&v59 - v19);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v59 - v24;
  v76 = v10;
  v26 = v23;
  v28 = v27;
  v67 = *(v10 + 16);
  v67(v23, a2);
  v29 = *(v8 + 48);
  v72 = v8 + 48;
  v69 = v29;
  (v29)(a3, v8);
  v30 = *(v8 + 40);
  v68 = v8 + 40;
  v66 = v30;
  v31 = v30(a3, v8);
  if (v31 < 0)
  {
    goto LABEL_10;
  }

  v75 = v25;
  v77 = v22;
  v78 = a3;
  v32 = v28;
  v33 = v63;
  v34 = v67;
  if (v31)
  {
    v35 = 0;
    do
    {
      v36 = v31;
      v37 = v32;
      v34(v33, v26, v32);
      (*(v8 + 64))(v33, v35, v78, v8);
      v31 = v36;
      v32 = v37;
      ++v35;
    }

    while (v36 != v35);
  }

  v38 = v76 + 8;
  v39 = *(v76 + 8);
  v40 = v32;
  v39(v26, v32);
  v41 = v78;
  (*(v62 + 32))(v75, v77, v78);
  (v69)(v41, v8);
  v42 = v66(v41, v8);
  if (v42 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v43 = v8;
  v76 = v38;
  v45 = v60;
  v44 = v61;
  v72 = v43;
  v46 = v63;
  if (v42)
  {
    v47 = v39;
    v48 = 0;
    v49 = *(v72 + 56);
    v65 = v73 + 256;
    v66 = v49;
    v68 = v72 + 56;
    v69 = v42;
    v64 = v72 + 64;
    v67 = v47;
    do
    {
      v77 = v48 + 1;
      v50 = v72;
      v51 = v66;
      (v66)(v48, v41, v72);
      v51(v48, v41, v50);
      v52 = v46;
      v53 = v45;
      v54 = v44;
      v55 = v70;
      v51(v48, v78, v50);
      (*(v73 + 256))(v54, v55, v40);
      v56 = v55;
      v44 = v54;
      v45 = v53;
      v46 = v52;
      v57 = v67;
      v41 = v78;
      v67(v56, v40);
      v57(v44, v40);
      v57(v45, v40);
      (*(v50 + 64))(v46, v48, v41, v50);
      v48 = v77;
    }

    while (v69 != v77);
  }

  return (*(v62 + 8))(v75, v41);
}

uint64_t SIMD<>.squareRoot()@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 48);
  swift_getAssociatedTypeWitness(0, v8, a1, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - v15;
  (*(v8 + 48))(a1, v8);
  result = (*(v8 + 40))(a1, v8);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v34 = a4;
  v35 = a3;
  v33 = v10;
  if (result)
  {
    v18 = v4;
    v19 = v14;
    v20 = a1;
    v21 = 0;
    v22 = *(v8 + 56);
    v30 = v35 + 240;
    v31 = v22;
    v32 = v8 + 56;
    v28 = v8 + 64;
    v29 = (v11 + 8);
    do
    {
      v23 = result;
      v24 = v18;
      v31(v21, v20, v8);
      v25 = v16;
      v26 = v33;
      (*(v35 + 240))(v33);
      v27 = v26;
      v16 = v25;
      (*v29)(v19, v27);
      (*(v8 + 64))(v25, v21, v20, v8);
      v18 = v24;
      result = v23;
      ++v21;
    }

    while (v23 != v21);
  }

  return result;
}

uint64_t SIMD<>.rounded(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v10, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v12 = v11;
  v34 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v30 - v16;
  (*(v10 + 48))(a2, v10);
  result = (*(v10 + 40))(a2, v10);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v37 = a1;
  v38 = a4;
  v35 = v12;
  v36 = a5;
  if (result)
  {
    v19 = v5;
    v20 = v17;
    v21 = a2;
    v22 = 0;
    v23 = *(v10 + 56);
    v32 = v38 + 304;
    v33 = v23;
    v24 = (v34 + 8);
    v34 = v10 + 56;
    v30[1] = v10 + 64;
    v31 = v24;
    do
    {
      v25 = result;
      v26 = v19;
      v33(v22, v21, v10);
      v27 = v21;
      v28 = v35;
      (*(v38 + 304))(v37, v35);
      v29 = v28;
      v21 = v27;
      (*v31)(v15, v29);
      (*(v10 + 64))(v20, v22, v27, v10);
      v19 = v26;
      result = v25;
      ++v22;
    }

    while (v25 != v22);
  }

  return result;
}

uint64_t static SIMDMask..! prefix(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v47 = a4;
  v8 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v45 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v39 - v15;
  v17 = *(a2 - 8);
  v18 = MEMORY[0x1EEE9AC00](v14);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = MEMORY[0x1EEE9AC00](&v39 - v21);
  v41 = &v39 - v23;
  v24 = v22;
  (*(v17 + 16))(v22, a1, a2);
  (*(v8 + 48))(a2, v8);
  v25 = (*(v8 + 40))(a2, v8);
  if (v25 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v39 = v17;
  v40 = a5;
  v26 = a2;
  v46 = v16;
  v48 = v20;
  v27 = v24;
  if (v25)
  {
    v28 = 0;
    v29 = *(v8 + 56);
    v43 = (v45 + 8);
    v44 = v29;
    v45 = v8 + 56;
    v42 = v8 + 64;
    do
    {
      v30 = v25;
      v31 = v26;
      v44(v28);
      v32 = v46;
      (*(*(v47 + 8) + 184))(v13, v10);
      (*v43)(v13, v10);
      (*(v8 + 64))(v32, v28, v31, v8);
      v26 = v31;
      v25 = v30;
      ++v28;
    }

    while (v30 != v28);
  }

  v33 = v39;
  v34 = v27;
  v35 = v26;
  (*(v39 + 8))(v34);
  v36 = *(v33 + 32);
  v37 = v41;
  v36(v41, v48, v35);
  return (v36)(v40, v37, v35);
}

uint64_t static SIMDMask..& infix(_:_:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v60 = a5;
  v63 = a2;
  v54 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v58 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v52 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v51 = &v49 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v61 = &v49 - v16;
  v17 = *(a3 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v49 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = MEMORY[0x1EEE9AC00](&v49 - v24);
  v53 = &v49 - v26;
  v27 = *(v17 + 16);
  v64 = v25;
  v27(v25, a1, a3);
  v28 = v23;
  v27(v23, v63, a3);
  v29 = v20;
  (*(v8 + 48))(a3, v8);
  v30 = (*(v8 + 40))(a3, v8);
  if (v30 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v50 = v17;
  v31 = a3;
  v32 = v51;
  v33 = v52;
  v62 = v28;
  v63 = v29;
  if (v30)
  {
    v34 = v8;
    v35 = 0;
    v36 = *(v8 + 56);
    v56 = (v58 + 8);
    v57 = v36;
    v58 = v8 + 56;
    v59 = v30;
    v55 = v8 + 64;
    do
    {
      v37 = v32;
      v38 = v33;
      v39 = v57;
      v57(v35, v31, v34);
      v39(v35, v31, v34);
      v33 = v38;
      v32 = v37;
      v40 = v31;
      v41 = v61;
      (*(*(v60 + 8) + 192))(v37, v33, v10);
      v42 = *v56;
      (*v56)(v33, v10);
      v42(v37, v10);
      v43 = v41;
      v31 = v40;
      (*(v34 + 64))(v43, v35++, v40, v34);
    }

    while (v59 != v35);
  }

  v44 = v50;
  v45 = *(v50 + 8);
  v45(v62, v31);
  v45(v64, v31);
  v46 = *(v44 + 32);
  v47 = v53;
  v46(v53, v63, v31);
  return (v46)(v54, v47, v31);
}

uint64_t static SIMDMask..^ infix(_:_:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v60 = a5;
  v63 = a2;
  v54 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v58 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v52 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v51 = &v49 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v61 = &v49 - v16;
  v17 = *(a3 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v49 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = MEMORY[0x1EEE9AC00](&v49 - v24);
  v53 = &v49 - v26;
  v27 = *(v17 + 16);
  v64 = v25;
  v27(v25, a1, a3);
  v28 = v23;
  v27(v23, v63, a3);
  v29 = v20;
  (*(v8 + 48))(a3, v8);
  v30 = (*(v8 + 40))(a3, v8);
  if (v30 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v50 = v17;
  v31 = a3;
  v32 = v51;
  v33 = v52;
  v62 = v28;
  v63 = v29;
  if (v30)
  {
    v34 = v8;
    v35 = 0;
    v36 = *(v8 + 56);
    v56 = (v58 + 8);
    v57 = v36;
    v58 = v8 + 56;
    v59 = v30;
    v55 = v8 + 64;
    do
    {
      v37 = v32;
      v38 = v33;
      v39 = v57;
      v57(v35, v31, v34);
      v39(v35, v31, v34);
      v33 = v38;
      v32 = v37;
      v40 = v31;
      v41 = v61;
      (*(*(v60 + 8) + 224))(v37, v33, v10);
      v42 = *v56;
      (*v56)(v33, v10);
      v42(v37, v10);
      v43 = v41;
      v31 = v40;
      (*(v34 + 64))(v43, v35++, v40, v34);
    }

    while (v59 != v35);
  }

  v44 = v50;
  v45 = *(v50 + 8);
  v45(v62, v31);
  v45(v64, v31);
  v46 = *(v44 + 32);
  v47 = v53;
  v46(v53, v63, v31);
  return (v46)(v54, v47, v31);
}

uint64_t static SIMDMask..| infix(_:_:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v60 = a5;
  v63 = a2;
  v54 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v58 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v52 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v51 = &v49 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v61 = &v49 - v16;
  v17 = *(a3 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v49 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = MEMORY[0x1EEE9AC00](&v49 - v24);
  v53 = &v49 - v26;
  v27 = *(v17 + 16);
  v64 = v25;
  v27(v25, a1, a3);
  v28 = v23;
  v27(v23, v63, a3);
  v29 = v20;
  (*(v8 + 48))(a3, v8);
  v30 = (*(v8 + 40))(a3, v8);
  if (v30 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v50 = v17;
  v31 = a3;
  v32 = v51;
  v33 = v52;
  v62 = v28;
  v63 = v29;
  if (v30)
  {
    v34 = v8;
    v35 = 0;
    v36 = *(v8 + 56);
    v56 = (v58 + 8);
    v57 = v36;
    v58 = v8 + 56;
    v59 = v30;
    v55 = v8 + 64;
    do
    {
      v37 = v32;
      v38 = v33;
      v39 = v57;
      v57(v35, v31, v34);
      v39(v35, v31, v34);
      v33 = v38;
      v32 = v37;
      v40 = v31;
      v41 = v61;
      (*(*(v60 + 8) + 208))(v37, v33, v10);
      v42 = *v56;
      (*v56)(v33, v10);
      v42(v37, v10);
      v43 = v41;
      v31 = v40;
      (*(v34 + 64))(v43, v35++, v40, v34);
    }

    while (v59 != v35);
  }

  v44 = v50;
  v45 = *(v50 + 8);
  v45(v62, v31);
  v45(v64, v31);
  v46 = *(v44 + 32);
  v47 = v53;
  v46(v53, v63, v31);
  return (v46)(v54, v47, v31);
}

uint64_t static SIMD<>.& infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v62 = a5;
  v63 = a2;
  v65 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v54 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v53 = &v53 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v64 = &v53 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v56 = *(a3 - 8);
  v18 = MEMORY[0x1EEE9AC00](&v53 - v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v55 = &v53 - v22;
  v23 = v21;
  v25 = v24;
  v26 = *(v10 + 16);
  v26(v21, a1);
  v60 = *(v8 + 48);
  v61 = (v8 + 48);
  (v60)(a3, v8);
  v58 = *(v8 + 40);
  v59 = v8 + 40;
  v27 = v58(a3, v8);
  if (v27 < 0)
  {
    goto LABEL_10;
  }

  v66 = a3;
  v67 = v10;
  v28 = v25;
  v29 = v64;
  v68 = v20;
  if (v27)
  {
    v30 = 0;
    do
    {
      v31 = v27;
      v32 = v28;
      (v26)(v29, v23, v28);
      (*(v8 + 64))(v29, v30, v66, v8);
      v27 = v31;
      v28 = v32;
      ++v30;
    }

    while (v31 != v30);
  }

  v33 = *(v67 + 8);
  v34 = v67 + 8;
  v35 = v28;
  v33(v23, v28);
  v36 = v55;
  v37 = v66;
  (*(v56 + 32))(v55, v68, v66);
  (v60)(v37, v8);
  v38 = v37;
  v39 = v58(v37, v8);
  if (v39 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v40 = v35;
  v67 = v34;
  v41 = v38;
  v42 = v53;
  v43 = v54;
  v44 = v36;
  v61 = v33;
  if (v39)
  {
    v45 = 0;
    v58 = *(v8 + 56);
    v59 = v8 + 56;
    v57 = v8 + 64;
    v60 = v39;
    do
    {
      v68 = v45 + 1;
      v46 = v58;
      (v58)(v45, v41, v8);
      v46(v45, v41, v8);
      v47 = v64;
      (*(*(v62 + 8) + 192))(v42, v43, v40);
      v48 = v43;
      v49 = v43;
      v50 = v41;
      v51 = v61;
      v61(v48, v40);
      v51(v42, v40);
      v41 = v50;
      v43 = v49;
      (*(v8 + 64))(v47, v45, v41, v8);
      v45 = v68;
    }

    while (v60 != v68);
  }

  return (*(v56 + 8))(v44, v41);
}

{
  v62 = a5;
  v55 = a1;
  v64 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v54 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v53 = &v53 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v63 = &v53 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v56 = *(a3 - 8);
  v18 = MEMORY[0x1EEE9AC00](&v53 - v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v67 = &v53 - v22;
  v23 = v21;
  v25 = v24;
  v26 = *(v10 + 16);
  v26(v21, a2);
  v60 = *(v8 + 48);
  v61 = (v8 + 48);
  (v60)(a3, v8);
  v58 = *(v8 + 40);
  v59 = v8 + 40;
  v27 = v58(a3, v8);
  if (v27 < 0)
  {
    goto LABEL_10;
  }

  v65 = a3;
  v66 = v10;
  v28 = v25;
  v29 = v63;
  v68 = v20;
  if (v27)
  {
    v30 = 0;
    do
    {
      v31 = v27;
      v32 = v28;
      (v26)(v29, v23, v28);
      (*(v8 + 64))(v29, v30, v65, v8);
      v27 = v31;
      v28 = v32;
      ++v30;
    }

    while (v31 != v30);
  }

  v33 = *(v66 + 8);
  v34 = v66 + 8;
  v35 = v28;
  v33(v23, v28);
  v36 = v65;
  (*(v56 + 32))(v67, v68, v65);
  (v60)(v36, v8);
  v37 = v36;
  v38 = v58(v36, v8);
  if (v38 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v39 = v35;
  v41 = v54;
  v40 = v55;
  v66 = v34;
  v42 = v37;
  v43 = v53;
  v61 = v33;
  if (v38)
  {
    v44 = 0;
    v58 = *(v8 + 56);
    v59 = v8 + 56;
    v57 = v8 + 64;
    v60 = v38;
    do
    {
      v68 = v44 + 1;
      v45 = v40;
      v46 = v58;
      (v58)(v44, v42, v8);
      v46(v44, v42, v8);
      v47 = v63;
      (*(*(v62 + 8) + 192))(v43, v41, v39);
      v48 = v41;
      v49 = v41;
      v50 = v42;
      v51 = v61;
      v61(v48, v39);
      v51(v43, v39);
      v42 = v50;
      v41 = v49;
      (*(v8 + 64))(v47, v44, v42, v8);
      v40 = v45;
      v44 = v68;
    }

    while (v60 != v68);
  }

  return (*(v56 + 8))(v67, v42);
}

uint64_t static SIMD<>.^ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v62 = a5;
  v63 = a2;
  v65 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v54 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v53 = &v53 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v64 = &v53 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v56 = *(a3 - 8);
  v18 = MEMORY[0x1EEE9AC00](&v53 - v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v55 = &v53 - v22;
  v23 = v21;
  v25 = v24;
  v26 = *(v10 + 16);
  v26(v21, a1);
  v60 = *(v8 + 48);
  v61 = (v8 + 48);
  (v60)(a3, v8);
  v58 = *(v8 + 40);
  v59 = v8 + 40;
  v27 = v58(a3, v8);
  if (v27 < 0)
  {
    goto LABEL_10;
  }

  v66 = a3;
  v67 = v10;
  v28 = v25;
  v29 = v64;
  v68 = v20;
  if (v27)
  {
    v30 = 0;
    do
    {
      v31 = v27;
      v32 = v28;
      (v26)(v29, v23, v28);
      (*(v8 + 64))(v29, v30, v66, v8);
      v27 = v31;
      v28 = v32;
      ++v30;
    }

    while (v31 != v30);
  }

  v33 = *(v67 + 8);
  v34 = v67 + 8;
  v35 = v28;
  v33(v23, v28);
  v36 = v55;
  v37 = v66;
  (*(v56 + 32))(v55, v68, v66);
  (v60)(v37, v8);
  v38 = v37;
  v39 = v58(v37, v8);
  if (v39 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v40 = v35;
  v67 = v34;
  v41 = v38;
  v42 = v53;
  v43 = v54;
  v44 = v36;
  v61 = v33;
  if (v39)
  {
    v45 = 0;
    v58 = *(v8 + 56);
    v59 = v8 + 56;
    v57 = v8 + 64;
    v60 = v39;
    do
    {
      v68 = v45 + 1;
      v46 = v58;
      (v58)(v45, v41, v8);
      v46(v45, v41, v8);
      v47 = v64;
      (*(*(v62 + 8) + 224))(v42, v43, v40);
      v48 = v43;
      v49 = v43;
      v50 = v41;
      v51 = v61;
      v61(v48, v40);
      v51(v42, v40);
      v41 = v50;
      v43 = v49;
      (*(v8 + 64))(v47, v45, v41, v8);
      v45 = v68;
    }

    while (v60 != v68);
  }

  return (*(v56 + 8))(v44, v41);
}

{
  v62 = a5;
  v55 = a1;
  v64 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v54 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v53 = &v53 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v63 = &v53 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v56 = *(a3 - 8);
  v18 = MEMORY[0x1EEE9AC00](&v53 - v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v67 = &v53 - v22;
  v23 = v21;
  v25 = v24;
  v26 = *(v10 + 16);
  v26(v21, a2);
  v60 = *(v8 + 48);
  v61 = (v8 + 48);
  (v60)(a3, v8);
  v58 = *(v8 + 40);
  v59 = v8 + 40;
  v27 = v58(a3, v8);
  if (v27 < 0)
  {
    goto LABEL_10;
  }

  v65 = a3;
  v66 = v10;
  v28 = v25;
  v29 = v63;
  v68 = v20;
  if (v27)
  {
    v30 = 0;
    do
    {
      v31 = v27;
      v32 = v28;
      (v26)(v29, v23, v28);
      (*(v8 + 64))(v29, v30, v65, v8);
      v27 = v31;
      v28 = v32;
      ++v30;
    }

    while (v31 != v30);
  }

  v33 = *(v66 + 8);
  v34 = v66 + 8;
  v35 = v28;
  v33(v23, v28);
  v36 = v65;
  (*(v56 + 32))(v67, v68, v65);
  (v60)(v36, v8);
  v37 = v36;
  v38 = v58(v36, v8);
  if (v38 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v39 = v35;
  v41 = v54;
  v40 = v55;
  v66 = v34;
  v42 = v37;
  v43 = v53;
  v61 = v33;
  if (v38)
  {
    v44 = 0;
    v58 = *(v8 + 56);
    v59 = v8 + 56;
    v57 = v8 + 64;
    v60 = v38;
    do
    {
      v68 = v44 + 1;
      v45 = v40;
      v46 = v58;
      (v58)(v44, v42, v8);
      v46(v44, v42, v8);
      v47 = v63;
      (*(*(v62 + 8) + 224))(v43, v41, v39);
      v48 = v41;
      v49 = v41;
      v50 = v42;
      v51 = v61;
      v61(v48, v39);
      v51(v43, v39);
      v42 = v50;
      v41 = v49;
      (*(v8 + 64))(v47, v44, v42, v8);
      v40 = v45;
      v44 = v68;
    }

    while (v60 != v68);
  }

  return (*(v56 + 8))(v67, v42);
}

uint64_t static SIMD<>.| infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v62 = a5;
  v63 = a2;
  v65 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v54 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v53 = &v53 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v64 = &v53 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v56 = *(a3 - 8);
  v18 = MEMORY[0x1EEE9AC00](&v53 - v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v55 = &v53 - v22;
  v23 = v21;
  v25 = v24;
  v26 = *(v10 + 16);
  v26(v21, a1);
  v60 = *(v8 + 48);
  v61 = (v8 + 48);
  (v60)(a3, v8);
  v58 = *(v8 + 40);
  v59 = v8 + 40;
  v27 = v58(a3, v8);
  if (v27 < 0)
  {
    goto LABEL_10;
  }

  v66 = a3;
  v67 = v10;
  v28 = v25;
  v29 = v64;
  v68 = v20;
  if (v27)
  {
    v30 = 0;
    do
    {
      v31 = v27;
      v32 = v28;
      (v26)(v29, v23, v28);
      (*(v8 + 64))(v29, v30, v66, v8);
      v27 = v31;
      v28 = v32;
      ++v30;
    }

    while (v31 != v30);
  }

  v33 = *(v67 + 8);
  v34 = v67 + 8;
  v35 = v28;
  v33(v23, v28);
  v36 = v55;
  v37 = v66;
  (*(v56 + 32))(v55, v68, v66);
  (v60)(v37, v8);
  v38 = v37;
  v39 = v58(v37, v8);
  if (v39 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v40 = v35;
  v67 = v34;
  v41 = v38;
  v42 = v53;
  v43 = v54;
  v44 = v36;
  v61 = v33;
  if (v39)
  {
    v45 = 0;
    v58 = *(v8 + 56);
    v59 = v8 + 56;
    v57 = v8 + 64;
    v60 = v39;
    do
    {
      v68 = v45 + 1;
      v46 = v58;
      (v58)(v45, v41, v8);
      v46(v45, v41, v8);
      v47 = v64;
      (*(*(v62 + 8) + 208))(v42, v43, v40);
      v48 = v43;
      v49 = v43;
      v50 = v41;
      v51 = v61;
      v61(v48, v40);
      v51(v42, v40);
      v41 = v50;
      v43 = v49;
      (*(v8 + 64))(v47, v45, v41, v8);
      v45 = v68;
    }

    while (v60 != v68);
  }

  return (*(v56 + 8))(v44, v41);
}

{
  v62 = a5;
  v55 = a1;
  v64 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v54 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v53 = &v53 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v63 = &v53 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v56 = *(a3 - 8);
  v18 = MEMORY[0x1EEE9AC00](&v53 - v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v67 = &v53 - v22;
  v23 = v21;
  v25 = v24;
  v26 = *(v10 + 16);
  v26(v21, a2);
  v60 = *(v8 + 48);
  v61 = (v8 + 48);
  (v60)(a3, v8);
  v58 = *(v8 + 40);
  v59 = v8 + 40;
  v27 = v58(a3, v8);
  if (v27 < 0)
  {
    goto LABEL_10;
  }

  v65 = a3;
  v66 = v10;
  v28 = v25;
  v29 = v63;
  v68 = v20;
  if (v27)
  {
    v30 = 0;
    do
    {
      v31 = v27;
      v32 = v28;
      (v26)(v29, v23, v28);
      (*(v8 + 64))(v29, v30, v65, v8);
      v27 = v31;
      v28 = v32;
      ++v30;
    }

    while (v31 != v30);
  }

  v33 = *(v66 + 8);
  v34 = v66 + 8;
  v35 = v28;
  v33(v23, v28);
  v36 = v65;
  (*(v56 + 32))(v67, v68, v65);
  (v60)(v36, v8);
  v37 = v36;
  v38 = v58(v36, v8);
  if (v38 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v39 = v35;
  v41 = v54;
  v40 = v55;
  v66 = v34;
  v42 = v37;
  v43 = v53;
  v61 = v33;
  if (v38)
  {
    v44 = 0;
    v58 = *(v8 + 56);
    v59 = v8 + 56;
    v57 = v8 + 64;
    v60 = v38;
    do
    {
      v68 = v44 + 1;
      v45 = v40;
      v46 = v58;
      (v58)(v44, v42, v8);
      v46(v44, v42, v8);
      v47 = v63;
      (*(*(v62 + 8) + 208))(v43, v41, v39);
      v48 = v41;
      v49 = v41;
      v50 = v42;
      v51 = v61;
      v61(v48, v39);
      v51(v43, v39);
      v42 = v50;
      v41 = v49;
      (*(v8 + 64))(v47, v44, v42, v8);
      v40 = v45;
      v44 = v68;
    }

    while (v60 != v68);
  }

  return (*(v56 + 8))(v67, v42);
}

uint64_t static SIMD<>.&<< infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v60 = a2;
  v61 = a5;
  v63 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v52 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v51 = &v51 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v62 = &v51 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v54 = *(a3 - 8);
  v18 = MEMORY[0x1EEE9AC00](&v51 - v17);
  v20 = (&v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x1EEE9AC00](v18);
  v53 = &v51 - v22;
  v24 = v23;
  v25 = v21;
  v55 = *(v23 + 16);
  v55(v21, a1, v10);
  v58 = *(v8 + 48);
  v59 = v8 + 48;
  v58(a3, v8);
  v56 = *(v8 + 40);
  v57 = (v8 + 40);
  v26 = v56(a3, v8);
  if (v26 < 0)
  {
    goto LABEL_10;
  }

  v27 = v10;
  v64 = v20;
  v65 = v24;
  v28 = v62;
  v66 = a3;
  v29 = v55;
  if (v26)
  {
    v30 = 0;
    do
    {
      v31 = v26;
      v32 = v27;
      v29(v28, v25, v27);
      (*(v8 + 64))(v28, v30, v66, v8);
      v26 = v31;
      v27 = v32;
      ++v30;
    }

    while (v31 != v30);
  }

  v33 = *(v65 + 8);
  v34 = v27;
  v35 = v65 + 8;
  v33(v25, v27);
  v36 = v53;
  v37 = v66;
  (*(v54 + 32))(v53, v64, v66);
  v58(v37, v8);
  v38 = v56(v37, v8);
  if (v38 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v39 = v37;
  v64 = v33;
  v65 = v35;
  v41 = v51;
  v40 = v52;
  if (v38)
  {
    v42 = 0;
    v43 = *(v8 + 56);
    v56 = (v61 + 216);
    v57 = v43;
    v58 = (v8 + 56);
    v59 = v38;
    v55 = (v8 + 64);
    do
    {
      v66 = v42 + 1;
      v44 = v57;
      v57(v42, v39, v8);
      v44(v42, v39, v8);
      v45 = v62;
      (*(v61 + 216))(v41, v40, v34);
      v46 = v40;
      v47 = v40;
      v48 = v39;
      v49 = v64;
      v64(v46, v34);
      v49(v41, v34);
      v39 = v48;
      v40 = v47;
      (*(v8 + 64))(v45, v42, v39, v8);
      v42 = v66;
    }

    while (v59 != v66);
  }

  return (*(v54 + 8))(v36, v39);
}

{
  v59 = a5;
  v52 = a1;
  v61 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v51 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v50 = &v50 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v60 = &v50 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v53 = *(a3 - 8);
  v18 = MEMORY[0x1EEE9AC00](&v50 - v17);
  v20 = (&v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x1EEE9AC00](v18);
  v64 = &v50 - v22;
  v24 = v23;
  v25 = v21;
  v54 = *(v23 + 16);
  v54(v21, a2, v10);
  v57 = *(v8 + 48);
  v58 = v8 + 48;
  v57(a3, v8);
  v55 = *(v8 + 40);
  v56 = (v8 + 40);
  v26 = v55(a3, v8);
  if (v26 < 0)
  {
    goto LABEL_10;
  }

  v27 = v10;
  v62 = v20;
  v63 = v24;
  v28 = v60;
  v65 = a3;
  v29 = v54;
  if (v26)
  {
    v30 = 0;
    do
    {
      v31 = v26;
      v32 = v27;
      v29(v28, v25, v27);
      (*(v8 + 64))(v28, v30, v65, v8);
      v26 = v31;
      v27 = v32;
      ++v30;
    }

    while (v31 != v30);
  }

  v33 = *(v63 + 8);
  v34 = v27;
  v35 = v63 + 8;
  v33(v25, v27);
  v36 = v65;
  (*(v53 + 32))(v64, v62, v65);
  v57(v36, v8);
  v37 = v55(v36, v8);
  if (v37 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v38 = v36;
  v39 = v51;
  v62 = v33;
  v63 = v35;
  v40 = v50;
  if (v37)
  {
    v41 = 0;
    v42 = *(v8 + 56);
    v55 = (v59 + 216);
    v56 = v42;
    v57 = (v8 + 56);
    v58 = v37;
    v54 = (v8 + 64);
    do
    {
      v65 = v41 + 1;
      v43 = v56;
      v56(v41, v38, v8);
      v43(v41, v38, v8);
      v44 = v60;
      (*(v59 + 216))(v40, v39, v34);
      v45 = v39;
      v46 = v39;
      v47 = v38;
      v48 = v62;
      v62(v45, v34);
      v48(v40, v34);
      v38 = v47;
      v39 = v46;
      (*(v8 + 64))(v44, v41, v38, v8);
      v41 = v65;
    }

    while (v58 != v65);
  }

  return (*(v53 + 8))(v64, v38);
}

uint64_t static SIMD<>.&>> infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v60 = a2;
  v61 = a5;
  v63 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v52 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v51 = &v51 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v62 = &v51 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v54 = *(a3 - 8);
  v18 = MEMORY[0x1EEE9AC00](&v51 - v17);
  v20 = (&v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x1EEE9AC00](v18);
  v53 = &v51 - v22;
  v24 = v23;
  v25 = v21;
  v55 = *(v23 + 16);
  v55(v21, a1, v10);
  v58 = *(v8 + 48);
  v59 = v8 + 48;
  v58(a3, v8);
  v56 = *(v8 + 40);
  v57 = (v8 + 40);
  v26 = v56(a3, v8);
  if (v26 < 0)
  {
    goto LABEL_10;
  }

  v27 = v10;
  v64 = v20;
  v65 = v24;
  v28 = v62;
  v66 = a3;
  v29 = v55;
  if (v26)
  {
    v30 = 0;
    do
    {
      v31 = v26;
      v32 = v27;
      v29(v28, v25, v27);
      (*(v8 + 64))(v28, v30, v66, v8);
      v26 = v31;
      v27 = v32;
      ++v30;
    }

    while (v31 != v30);
  }

  v33 = *(v65 + 8);
  v34 = v27;
  v35 = v65 + 8;
  v33(v25, v27);
  v36 = v53;
  v37 = v66;
  (*(v54 + 32))(v53, v64, v66);
  v58(v37, v8);
  v38 = v56(v37, v8);
  if (v38 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v39 = v37;
  v64 = v33;
  v65 = v35;
  v41 = v51;
  v40 = v52;
  if (v38)
  {
    v42 = 0;
    v43 = *(v8 + 56);
    v56 = (v61 + 200);
    v57 = v43;
    v58 = (v8 + 56);
    v59 = v38;
    v55 = (v8 + 64);
    do
    {
      v66 = v42 + 1;
      v44 = v57;
      v57(v42, v39, v8);
      v44(v42, v39, v8);
      v45 = v62;
      (*(v61 + 200))(v41, v40, v34);
      v46 = v40;
      v47 = v40;
      v48 = v39;
      v49 = v64;
      v64(v46, v34);
      v49(v41, v34);
      v39 = v48;
      v40 = v47;
      (*(v8 + 64))(v45, v42, v39, v8);
      v42 = v66;
    }

    while (v59 != v66);
  }

  return (*(v54 + 8))(v36, v39);
}

{
  v59 = a5;
  v52 = a1;
  v61 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v51 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v50 = &v50 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v60 = &v50 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v53 = *(a3 - 8);
  v18 = MEMORY[0x1EEE9AC00](&v50 - v17);
  v20 = (&v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x1EEE9AC00](v18);
  v64 = &v50 - v22;
  v24 = v23;
  v25 = v21;
  v54 = *(v23 + 16);
  v54(v21, a2, v10);
  v57 = *(v8 + 48);
  v58 = v8 + 48;
  v57(a3, v8);
  v55 = *(v8 + 40);
  v56 = (v8 + 40);
  v26 = v55(a3, v8);
  if (v26 < 0)
  {
    goto LABEL_10;
  }

  v27 = v10;
  v62 = v20;
  v63 = v24;
  v28 = v60;
  v65 = a3;
  v29 = v54;
  if (v26)
  {
    v30 = 0;
    do
    {
      v31 = v26;
      v32 = v27;
      v29(v28, v25, v27);
      (*(v8 + 64))(v28, v30, v65, v8);
      v26 = v31;
      v27 = v32;
      ++v30;
    }

    while (v31 != v30);
  }

  v33 = *(v63 + 8);
  v34 = v27;
  v35 = v63 + 8;
  v33(v25, v27);
  v36 = v65;
  (*(v53 + 32))(v64, v62, v65);
  v57(v36, v8);
  v37 = v55(v36, v8);
  if (v37 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v38 = v36;
  v39 = v51;
  v62 = v33;
  v63 = v35;
  v40 = v50;
  if (v37)
  {
    v41 = 0;
    v42 = *(v8 + 56);
    v55 = (v59 + 200);
    v56 = v42;
    v57 = (v8 + 56);
    v58 = v37;
    v54 = (v8 + 64);
    do
    {
      v65 = v41 + 1;
      v43 = v56;
      v56(v41, v38, v8);
      v43(v41, v38, v8);
      v44 = v60;
      (*(v59 + 200))(v40, v39, v34);
      v45 = v39;
      v46 = v39;
      v47 = v38;
      v48 = v62;
      v62(v45, v34);
      v48(v40, v34);
      v38 = v47;
      v39 = v46;
      (*(v8 + 64))(v44, v41, v38, v8);
      v41 = v65;
    }

    while (v58 != v65);
  }

  return (*(v53 + 8))(v64, v38);
}

uint64_t static SIMD<>.&+ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v68 = a2;
  v69 = a5;
  v71 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v59 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v57 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v70 = &v57 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v62 = *(a3 - 8);
  v19 = MEMORY[0x1EEE9AC00](&v57 - v18);
  v21 = (&v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x1EEE9AC00](v19);
  v61 = &v57 - v23;
  v25 = v24;
  v26 = *(v24 + 16);
  v63 = v22;
  v60 = v26;
  v26(v22, a1, v10);
  v66 = *(v8 + 48);
  v67 = v8 + 48;
  v66(a3, v8);
  v27 = v21;
  v28 = a3;
  v64 = *(v8 + 40);
  v65 = (v8 + 40);
  v29 = v64(a3, v8);
  if (v29 < 0)
  {
    goto LABEL_10;
  }

  v30 = v29;
  v58 = v15;
  v72 = v27;
  v73 = v25;
  v31 = v10;
  v32 = v70;
  v33 = v63;
  v74 = v28;
  v34 = v60;
  if (v29)
  {
    v35 = 0;
    do
    {
      v34(v32, v33, v10);
      (*(v8 + 64))(v32, v35++, v74, v8);
    }

    while (v30 != v35);
  }

  v36 = *(v73 + 8);
  v37 = v33;
  v38 = v73 + 8;
  v36(v37, v10);
  v39 = v61;
  v40 = v74;
  (*(v62 + 32))(v61, v72, v74);
  v66(v40, v8);
  v41 = v64(v40, v8);
  if (v41 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v42 = v40;
  v72 = v36;
  v73 = v38;
  v44 = v58;
  v43 = v59;
  if (v41)
  {
    v45 = 0;
    v46 = *(v8 + 56);
    v64 = (v69 + 80);
    v65 = v46;
    v66 = (v8 + 56);
    v67 = v41;
    v63 = v8 + 64;
    do
    {
      v74 = v45 + 1;
      v47 = v65;
      v65(v45, v42, v8);
      v47(v45, v42, v8);
      v48 = v42;
      v49 = v70;
      (*(v69 + 80))(v70, v43, v31);
      v50 = v43;
      v51 = v31;
      v52 = v43;
      v53 = v31;
      v54 = v72;
      v72(v50, v51);
      v54(v44, v53);
      v31 = v53;
      v43 = v52;
      v55 = v49;
      v42 = v48;
      (*(v8 + 64))(v55, v45, v48, v8);
      v45 = v74;
    }

    while (v67 != v74);
  }

  return (*(v62 + 8))(v39, v42);
}

{
  v69 = a5;
  v60 = a1;
  v71 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v61 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v58 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v70 = &v58 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v63 = *(a3 - 8);
  v19 = MEMORY[0x1EEE9AC00](&v58 - v18);
  v21 = (&v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x1EEE9AC00](v19);
  v74 = &v58 - v23;
  v25 = v24;
  v26 = *(v24 + 16);
  v64 = v22;
  v62 = v26;
  v26(v22, a2, v10);
  v67 = *(v8 + 48);
  v68 = v8 + 48;
  v67(a3, v8);
  v27 = v21;
  v28 = a3;
  v65 = *(v8 + 40);
  v66 = (v8 + 40);
  v29 = v65(a3, v8);
  if (v29 < 0)
  {
    goto LABEL_10;
  }

  v30 = v29;
  v59 = v15;
  v72 = v27;
  v73 = v25;
  v31 = v10;
  v32 = v70;
  v33 = v64;
  v75 = v28;
  v34 = v62;
  if (v29)
  {
    v35 = 0;
    do
    {
      v34(v32, v33, v10);
      (*(v8 + 64))(v32, v35++, v75, v8);
    }

    while (v30 != v35);
  }

  v36 = *(v73 + 8);
  v37 = v33;
  v38 = v73 + 8;
  v36(v37, v10);
  v39 = v75;
  (*(v63 + 32))(v74, v72, v75);
  v67(v39, v8);
  v40 = v65(v39, v8);
  if (v40 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v41 = v39;
  v42 = v60;
  v43 = v61;
  v72 = v36;
  v73 = v38;
  v44 = v59;
  if (v40)
  {
    v45 = 0;
    v46 = *(v8 + 56);
    v65 = (v69 + 80);
    v66 = v46;
    v67 = (v8 + 56);
    v68 = v40;
    v64 = v8 + 64;
    do
    {
      v75 = v45 + 1;
      v47 = v42;
      v48 = v66;
      v66(v45, v41, v8);
      v48(v45, v41, v8);
      v49 = v41;
      v50 = v70;
      (*(v69 + 80))(v70, v43, v31);
      v51 = v43;
      v52 = v31;
      v53 = v43;
      v54 = v31;
      v55 = v72;
      v72(v51, v52);
      v55(v44, v54);
      v31 = v54;
      v43 = v53;
      v56 = v50;
      v41 = v49;
      (*(v8 + 64))(v56, v45, v49, v8);
      v42 = v47;
      v45 = v75;
    }

    while (v68 != v75);
  }

  return (*(v63 + 8))(v74, v41);
}

uint64_t static SIMD<>.&- infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v68 = a2;
  v69 = a5;
  v71 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v59 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v57 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v70 = &v57 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v62 = *(a3 - 8);
  v19 = MEMORY[0x1EEE9AC00](&v57 - v18);
  v21 = (&v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x1EEE9AC00](v19);
  v61 = &v57 - v23;
  v25 = v24;
  v26 = *(v24 + 16);
  v63 = v22;
  v60 = v26;
  v26(v22, a1, v10);
  v66 = *(v8 + 48);
  v67 = v8 + 48;
  v66(a3, v8);
  v27 = v21;
  v28 = a3;
  v64 = *(v8 + 40);
  v65 = (v8 + 40);
  v29 = v64(a3, v8);
  if (v29 < 0)
  {
    goto LABEL_10;
  }

  v30 = v29;
  v58 = v15;
  v72 = v27;
  v73 = v25;
  v31 = v10;
  v32 = v70;
  v33 = v63;
  v74 = v28;
  v34 = v60;
  if (v29)
  {
    v35 = 0;
    do
    {
      v34(v32, v33, v10);
      (*(v8 + 64))(v32, v35++, v74, v8);
    }

    while (v30 != v35);
  }

  v36 = *(v73 + 8);
  v37 = v33;
  v38 = v73 + 8;
  v36(v37, v10);
  v39 = v61;
  v40 = v74;
  (*(v62 + 32))(v61, v72, v74);
  v66(v40, v8);
  v41 = v64(v40, v8);
  if (v41 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v42 = v40;
  v72 = v36;
  v73 = v38;
  v44 = v58;
  v43 = v59;
  if (v41)
  {
    v45 = 0;
    v46 = *(v8 + 56);
    v64 = (v69 + 88);
    v65 = v46;
    v66 = (v8 + 56);
    v67 = v41;
    v63 = v8 + 64;
    do
    {
      v74 = v45 + 1;
      v47 = v65;
      v65(v45, v42, v8);
      v47(v45, v42, v8);
      v48 = v42;
      v49 = v70;
      (*(v69 + 88))(v70, v43, v31);
      v50 = v43;
      v51 = v31;
      v52 = v43;
      v53 = v31;
      v54 = v72;
      v72(v50, v51);
      v54(v44, v53);
      v31 = v53;
      v43 = v52;
      v55 = v49;
      v42 = v48;
      (*(v8 + 64))(v55, v45, v48, v8);
      v45 = v74;
    }

    while (v67 != v74);
  }

  return (*(v62 + 8))(v39, v42);
}

{
  v69 = a5;
  v60 = a1;
  v71 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v61 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v58 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v70 = &v58 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v63 = *(a3 - 8);
  v19 = MEMORY[0x1EEE9AC00](&v58 - v18);
  v21 = (&v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x1EEE9AC00](v19);
  v74 = &v58 - v23;
  v25 = v24;
  v26 = *(v24 + 16);
  v64 = v22;
  v62 = v26;
  v26(v22, a2, v10);
  v67 = *(v8 + 48);
  v68 = v8 + 48;
  v67(a3, v8);
  v27 = v21;
  v28 = a3;
  v65 = *(v8 + 40);
  v66 = (v8 + 40);
  v29 = v65(a3, v8);
  if (v29 < 0)
  {
    goto LABEL_10;
  }

  v30 = v29;
  v59 = v15;
  v72 = v27;
  v73 = v25;
  v31 = v10;
  v32 = v70;
  v33 = v64;
  v75 = v28;
  v34 = v62;
  if (v29)
  {
    v35 = 0;
    do
    {
      v34(v32, v33, v10);
      (*(v8 + 64))(v32, v35++, v75, v8);
    }

    while (v30 != v35);
  }

  v36 = *(v73 + 8);
  v37 = v33;
  v38 = v73 + 8;
  v36(v37, v10);
  v39 = v75;
  (*(v63 + 32))(v74, v72, v75);
  v67(v39, v8);
  v40 = v65(v39, v8);
  if (v40 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v41 = v39;
  v42 = v60;
  v43 = v61;
  v72 = v36;
  v73 = v38;
  v44 = v59;
  if (v40)
  {
    v45 = 0;
    v46 = *(v8 + 56);
    v65 = (v69 + 88);
    v66 = v46;
    v67 = (v8 + 56);
    v68 = v40;
    v64 = v8 + 64;
    do
    {
      v75 = v45 + 1;
      v47 = v42;
      v48 = v66;
      v66(v45, v41, v8);
      v48(v45, v41, v8);
      v49 = v41;
      v50 = v70;
      (*(v69 + 88))(v70, v43, v31);
      v51 = v43;
      v52 = v31;
      v53 = v43;
      v54 = v31;
      v55 = v72;
      v72(v51, v52);
      v55(v44, v54);
      v31 = v54;
      v43 = v53;
      v56 = v50;
      v41 = v49;
      (*(v8 + 64))(v56, v45, v49, v8);
      v42 = v47;
      v45 = v75;
    }

    while (v68 != v75);
  }

  return (*(v63 + 8))(v74, v41);
}

uint64_t static SIMD<>.&* infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v68 = a2;
  v69 = a5;
  v71 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v59 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v57 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v70 = &v57 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v62 = *(a3 - 8);
  v19 = MEMORY[0x1EEE9AC00](&v57 - v18);
  v21 = (&v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x1EEE9AC00](v19);
  v61 = &v57 - v23;
  v25 = v24;
  v26 = *(v24 + 16);
  v63 = v22;
  v60 = v26;
  v26(v22, a1, v10);
  v66 = *(v8 + 48);
  v67 = v8 + 48;
  v66(a3, v8);
  v27 = v21;
  v28 = a3;
  v64 = *(v8 + 40);
  v65 = (v8 + 40);
  v29 = v64(a3, v8);
  if (v29 < 0)
  {
    goto LABEL_10;
  }

  v30 = v29;
  v58 = v15;
  v72 = v27;
  v73 = v25;
  v31 = v10;
  v32 = v70;
  v33 = v63;
  v74 = v28;
  v34 = v60;
  if (v29)
  {
    v35 = 0;
    do
    {
      v34(v32, v33, v10);
      (*(v8 + 64))(v32, v35++, v74, v8);
    }

    while (v30 != v35);
  }

  v36 = *(v73 + 8);
  v37 = v33;
  v38 = v73 + 8;
  v36(v37, v10);
  v39 = v61;
  v40 = v74;
  (*(v62 + 32))(v61, v72, v74);
  v66(v40, v8);
  v41 = v64(v40, v8);
  if (v41 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v42 = v40;
  v72 = v36;
  v73 = v38;
  v44 = v58;
  v43 = v59;
  if (v41)
  {
    v45 = 0;
    v46 = *(v8 + 56);
    v64 = (v69 + 96);
    v65 = v46;
    v66 = (v8 + 56);
    v67 = v41;
    v63 = v8 + 64;
    do
    {
      v74 = v45 + 1;
      v47 = v65;
      v65(v45, v42, v8);
      v47(v45, v42, v8);
      v48 = v42;
      v49 = v70;
      (*(v69 + 96))(v70, v44, v31);
      v50 = v43;
      v51 = v31;
      v52 = v43;
      v53 = v31;
      v54 = v72;
      v72(v50, v51);
      v54(v44, v53);
      v31 = v53;
      v43 = v52;
      v55 = v49;
      v42 = v48;
      (*(v8 + 64))(v55, v45, v48, v8);
      v45 = v74;
    }

    while (v67 != v74);
  }

  return (*(v62 + 8))(v39, v42);
}

{
  v69 = a5;
  v60 = a1;
  v71 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v61 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v58 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v70 = &v58 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v63 = *(a3 - 8);
  v19 = MEMORY[0x1EEE9AC00](&v58 - v18);
  v21 = (&v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x1EEE9AC00](v19);
  v74 = &v58 - v23;
  v25 = v24;
  v26 = *(v24 + 16);
  v64 = v22;
  v62 = v26;
  v26(v22, a2, v10);
  v67 = *(v8 + 48);
  v68 = v8 + 48;
  v67(a3, v8);
  v27 = v21;
  v28 = a3;
  v65 = *(v8 + 40);
  v66 = (v8 + 40);
  v29 = v65(a3, v8);
  if (v29 < 0)
  {
    goto LABEL_10;
  }

  v30 = v29;
  v59 = v15;
  v72 = v27;
  v73 = v25;
  v31 = v10;
  v32 = v70;
  v33 = v64;
  v75 = v28;
  v34 = v62;
  if (v29)
  {
    v35 = 0;
    do
    {
      v34(v32, v33, v10);
      (*(v8 + 64))(v32, v35++, v75, v8);
    }

    while (v30 != v35);
  }

  v36 = *(v73 + 8);
  v37 = v33;
  v38 = v73 + 8;
  v36(v37, v10);
  v39 = v75;
  (*(v63 + 32))(v74, v72, v75);
  v67(v39, v8);
  v40 = v65(v39, v8);
  if (v40 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v41 = v39;
  v42 = v60;
  v43 = v61;
  v72 = v36;
  v73 = v38;
  v44 = v59;
  if (v40)
  {
    v45 = 0;
    v46 = *(v8 + 56);
    v65 = (v69 + 96);
    v66 = v46;
    v67 = (v8 + 56);
    v68 = v40;
    v64 = v8 + 64;
    do
    {
      v75 = v45 + 1;
      v47 = v42;
      v48 = v66;
      v66(v45, v41, v8);
      v48(v45, v41, v8);
      v49 = v41;
      v50 = v70;
      (*(v69 + 96))(v70, v44, v31);
      v51 = v43;
      v52 = v31;
      v53 = v43;
      v54 = v31;
      v55 = v72;
      v72(v51, v52);
      v55(v44, v54);
      v31 = v54;
      v43 = v53;
      v56 = v50;
      v41 = v49;
      (*(v8 + 64))(v56, v45, v49, v8);
      v42 = v47;
      v45 = v75;
    }

    while (v68 != v75);
  }

  return (*(v63 + 8))(v74, v41);
}

uint64_t static SIMD<>./ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v62 = a5;
  v63 = a2;
  v65 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v54 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v53 = &v53 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v64 = &v53 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v56 = *(a3 - 8);
  v18 = MEMORY[0x1EEE9AC00](&v53 - v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v55 = &v53 - v22;
  v23 = v21;
  v25 = v24;
  v26 = *(v10 + 16);
  v26(v21, a1);
  v60 = *(v8 + 48);
  v61 = (v8 + 48);
  (v60)(a3, v8);
  v58 = *(v8 + 40);
  v59 = v8 + 40;
  v27 = v58(a3, v8);
  if (v27 < 0)
  {
    goto LABEL_10;
  }

  v66 = a3;
  v67 = v10;
  v28 = v25;
  v29 = v64;
  v68 = v20;
  if (v27)
  {
    v30 = 0;
    do
    {
      v31 = v27;
      v32 = v28;
      (v26)(v29, v23, v28);
      (*(v8 + 64))(v29, v30, v66, v8);
      v27 = v31;
      v28 = v32;
      ++v30;
    }

    while (v31 != v30);
  }

  v33 = *(v67 + 8);
  v34 = v67 + 8;
  v35 = v28;
  v33(v23, v28);
  v36 = v55;
  v37 = v66;
  (*(v56 + 32))(v55, v68, v66);
  (v60)(v37, v8);
  v38 = v37;
  v39 = v58(v37, v8);
  if (v39 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v40 = v35;
  v67 = v34;
  v41 = v38;
  v42 = v53;
  v43 = v54;
  v44 = v36;
  v61 = v33;
  if (v39)
  {
    v45 = 0;
    v58 = *(v8 + 56);
    v59 = v8 + 56;
    v57 = v8 + 64;
    v60 = v39;
    do
    {
      v68 = v45 + 1;
      v46 = v58;
      (v58)(v45, v41, v8);
      v46(v45, v41, v8);
      v47 = v64;
      (*(*(v62 + 8) + 152))(v42, v43, v40);
      v48 = v43;
      v49 = v43;
      v50 = v41;
      v51 = v61;
      v61(v48, v40);
      v51(v42, v40);
      v41 = v50;
      v43 = v49;
      (*(v8 + 64))(v47, v45, v41, v8);
      v45 = v68;
    }

    while (v60 != v68);
  }

  return (*(v56 + 8))(v44, v41);
}

{
  v62 = a5;
  v55 = a1;
  v64 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v54 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v53 = &v53 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v63 = &v53 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v56 = *(a3 - 8);
  v18 = MEMORY[0x1EEE9AC00](&v53 - v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v67 = &v53 - v22;
  v23 = v21;
  v25 = v24;
  v26 = *(v10 + 16);
  v26(v21, a2);
  v60 = *(v8 + 48);
  v61 = (v8 + 48);
  (v60)(a3, v8);
  v58 = *(v8 + 40);
  v59 = v8 + 40;
  v27 = v58(a3, v8);
  if (v27 < 0)
  {
    goto LABEL_10;
  }

  v65 = a3;
  v66 = v10;
  v28 = v25;
  v29 = v63;
  v68 = v20;
  if (v27)
  {
    v30 = 0;
    do
    {
      v31 = v27;
      v32 = v28;
      (v26)(v29, v23, v28);
      (*(v8 + 64))(v29, v30, v65, v8);
      v27 = v31;
      v28 = v32;
      ++v30;
    }

    while (v31 != v30);
  }

  v33 = *(v66 + 8);
  v34 = v66 + 8;
  v35 = v28;
  v33(v23, v28);
  v36 = v65;
  (*(v56 + 32))(v67, v68, v65);
  (v60)(v36, v8);
  v37 = v36;
  v38 = v58(v36, v8);
  if (v38 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v39 = v35;
  v41 = v54;
  v40 = v55;
  v66 = v34;
  v42 = v37;
  v43 = v53;
  v61 = v33;
  if (v38)
  {
    v44 = 0;
    v58 = *(v8 + 56);
    v59 = v8 + 56;
    v57 = v8 + 64;
    v60 = v38;
    do
    {
      v68 = v44 + 1;
      v45 = v40;
      v46 = v58;
      (v58)(v44, v42, v8);
      v46(v44, v42, v8);
      v47 = v63;
      (*(*(v62 + 8) + 152))(v43, v41, v39);
      v48 = v41;
      v49 = v41;
      v50 = v42;
      v51 = v61;
      v61(v48, v39);
      v51(v43, v39);
      v42 = v50;
      v41 = v49;
      (*(v8 + 64))(v47, v44, v42, v8);
      v40 = v45;
      v44 = v68;
    }

    while (v60 != v68);
  }

  return (*(v56 + 8))(v67, v42);
}

{
  v60 = a2;
  v61 = a5;
  v63 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v52 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v51 = &v51 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v62 = &v51 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v54 = *(a3 - 8);
  v18 = MEMORY[0x1EEE9AC00](&v51 - v17);
  v20 = (&v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x1EEE9AC00](v18);
  v53 = &v51 - v22;
  v24 = v23;
  v25 = v21;
  v55 = *(v23 + 16);
  v55(v21, a1, v10);
  v58 = *(v8 + 48);
  v59 = v8 + 48;
  v58(a3, v8);
  v56 = *(v8 + 40);
  v57 = (v8 + 40);
  v26 = v56(a3, v8);
  if (v26 < 0)
  {
    goto LABEL_10;
  }

  v27 = v10;
  v64 = v20;
  v65 = v24;
  v28 = v62;
  v66 = a3;
  v29 = v55;
  if (v26)
  {
    v30 = 0;
    do
    {
      v31 = v26;
      v32 = v27;
      v29(v28, v25, v27);
      (*(v8 + 64))(v28, v30, v66, v8);
      v26 = v31;
      v27 = v32;
      ++v30;
    }

    while (v31 != v30);
  }

  v33 = *(v65 + 8);
  v34 = v27;
  v35 = v65 + 8;
  v33(v25, v27);
  v36 = v53;
  v37 = v66;
  (*(v54 + 32))(v53, v64, v66);
  v58(v37, v8);
  v38 = v56(v37, v8);
  if (v38 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v39 = v37;
  v64 = v33;
  v65 = v35;
  v41 = v51;
  v40 = v52;
  if (v38)
  {
    v42 = 0;
    v43 = *(v8 + 56);
    v56 = (v61 + 192);
    v57 = v43;
    v58 = (v8 + 56);
    v59 = v38;
    v55 = (v8 + 64);
    do
    {
      v66 = v42 + 1;
      v44 = v57;
      v57(v42, v39, v8);
      v44(v42, v39, v8);
      v45 = v62;
      (*(v61 + 192))(v41, v40, v34);
      v46 = v40;
      v47 = v40;
      v48 = v39;
      v49 = v64;
      v64(v46, v34);
      v49(v41, v34);
      v39 = v48;
      v40 = v47;
      (*(v8 + 64))(v45, v42, v39, v8);
      v42 = v66;
    }

    while (v59 != v66);
  }

  return (*(v54 + 8))(v36, v39);
}

{
  v59 = a5;
  v52 = a1;
  v61 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v51 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v50 = &v50 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v60 = &v50 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v53 = *(a3 - 8);
  v18 = MEMORY[0x1EEE9AC00](&v50 - v17);
  v20 = (&v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x1EEE9AC00](v18);
  v64 = &v50 - v22;
  v24 = v23;
  v25 = v21;
  v54 = *(v23 + 16);
  v54(v21, a2, v10);
  v57 = *(v8 + 48);
  v58 = v8 + 48;
  v57(a3, v8);
  v55 = *(v8 + 40);
  v56 = (v8 + 40);
  v26 = v55(a3, v8);
  if (v26 < 0)
  {
    goto LABEL_10;
  }

  v27 = v10;
  v62 = v20;
  v63 = v24;
  v28 = v60;
  v65 = a3;
  v29 = v54;
  if (v26)
  {
    v30 = 0;
    do
    {
      v31 = v26;
      v32 = v27;
      v29(v28, v25, v27);
      (*(v8 + 64))(v28, v30, v65, v8);
      v26 = v31;
      v27 = v32;
      ++v30;
    }

    while (v31 != v30);
  }

  v33 = *(v63 + 8);
  v34 = v27;
  v35 = v63 + 8;
  v33(v25, v27);
  v36 = v65;
  (*(v53 + 32))(v64, v62, v65);
  v57(v36, v8);
  v37 = v55(v36, v8);
  if (v37 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v38 = v36;
  v39 = v51;
  v62 = v33;
  v63 = v35;
  v40 = v50;
  if (v37)
  {
    v41 = 0;
    v42 = *(v8 + 56);
    v55 = (v59 + 192);
    v56 = v42;
    v57 = (v8 + 56);
    v58 = v37;
    v54 = (v8 + 64);
    do
    {
      v65 = v41 + 1;
      v43 = v56;
      v56(v41, v38, v8);
      v43(v41, v38, v8);
      v44 = v60;
      (*(v59 + 192))(v40, v39, v34);
      v45 = v39;
      v46 = v39;
      v47 = v38;
      v48 = v62;
      v62(v45, v34);
      v48(v40, v34);
      v38 = v47;
      v39 = v46;
      (*(v8 + 64))(v44, v41, v38, v8);
      v41 = v65;
    }

    while (v58 != v65);
  }

  return (*(v53 + 8))(v64, v38);
}

uint64_t static SIMD<>.% infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v62 = a5;
  v63 = a2;
  v65 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v54 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v53 = &v53 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v64 = &v53 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v56 = *(a3 - 8);
  v18 = MEMORY[0x1EEE9AC00](&v53 - v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v55 = &v53 - v22;
  v23 = v21;
  v25 = v24;
  v26 = *(v10 + 16);
  v26(v21, a1);
  v60 = *(v8 + 48);
  v61 = (v8 + 48);
  (v60)(a3, v8);
  v58 = *(v8 + 40);
  v59 = v8 + 40;
  v27 = v58(a3, v8);
  if (v27 < 0)
  {
    goto LABEL_10;
  }

  v66 = a3;
  v67 = v10;
  v28 = v25;
  v29 = v64;
  v68 = v20;
  if (v27)
  {
    v30 = 0;
    do
    {
      v31 = v27;
      v32 = v28;
      (v26)(v29, v23, v28);
      (*(v8 + 64))(v29, v30, v66, v8);
      v27 = v31;
      v28 = v32;
      ++v30;
    }

    while (v31 != v30);
  }

  v33 = *(v67 + 8);
  v34 = v67 + 8;
  v35 = v28;
  v33(v23, v28);
  v36 = v55;
  v37 = v66;
  (*(v56 + 32))(v55, v68, v66);
  (v60)(v37, v8);
  v38 = v37;
  v39 = v58(v37, v8);
  if (v39 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v40 = v35;
  v67 = v34;
  v41 = v38;
  v42 = v53;
  v43 = v54;
  v44 = v36;
  v61 = v33;
  if (v39)
  {
    v45 = 0;
    v58 = *(v8 + 56);
    v59 = v8 + 56;
    v57 = v8 + 64;
    v60 = v39;
    do
    {
      v68 = v45 + 1;
      v46 = v58;
      (v58)(v45, v41, v8);
      v46(v45, v41, v8);
      v47 = v64;
      (*(*(v62 + 8) + 168))(v42, v43, v40);
      v48 = v43;
      v49 = v43;
      v50 = v41;
      v51 = v61;
      v61(v48, v40);
      v51(v42, v40);
      v41 = v50;
      v43 = v49;
      (*(v8 + 64))(v47, v45, v41, v8);
      v45 = v68;
    }

    while (v60 != v68);
  }

  return (*(v56 + 8))(v44, v41);
}

{
  v62 = a5;
  v55 = a1;
  v64 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v54 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v53 = &v53 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v63 = &v53 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v56 = *(a3 - 8);
  v18 = MEMORY[0x1EEE9AC00](&v53 - v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v67 = &v53 - v22;
  v23 = v21;
  v25 = v24;
  v26 = *(v10 + 16);
  v26(v21, a2);
  v60 = *(v8 + 48);
  v61 = (v8 + 48);
  (v60)(a3, v8);
  v58 = *(v8 + 40);
  v59 = v8 + 40;
  v27 = v58(a3, v8);
  if (v27 < 0)
  {
    goto LABEL_10;
  }

  v65 = a3;
  v66 = v10;
  v28 = v25;
  v29 = v63;
  v68 = v20;
  if (v27)
  {
    v30 = 0;
    do
    {
      v31 = v27;
      v32 = v28;
      (v26)(v29, v23, v28);
      (*(v8 + 64))(v29, v30, v65, v8);
      v27 = v31;
      v28 = v32;
      ++v30;
    }

    while (v31 != v30);
  }

  v33 = *(v66 + 8);
  v34 = v66 + 8;
  v35 = v28;
  v33(v23, v28);
  v36 = v65;
  (*(v56 + 32))(v67, v68, v65);
  (v60)(v36, v8);
  v37 = v36;
  v38 = v58(v36, v8);
  if (v38 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v39 = v35;
  v41 = v54;
  v40 = v55;
  v66 = v34;
  v42 = v37;
  v43 = v53;
  v61 = v33;
  if (v38)
  {
    v44 = 0;
    v58 = *(v8 + 56);
    v59 = v8 + 56;
    v57 = v8 + 64;
    v60 = v38;
    do
    {
      v68 = v44 + 1;
      v45 = v40;
      v46 = v58;
      (v58)(v44, v42, v8);
      v46(v44, v42, v8);
      v47 = v63;
      (*(*(v62 + 8) + 168))(v43, v41, v39);
      v48 = v41;
      v49 = v41;
      v50 = v42;
      v51 = v61;
      v61(v48, v39);
      v51(v43, v39);
      v42 = v50;
      v41 = v49;
      (*(v8 + 64))(v47, v44, v42, v8);
      v40 = v45;
      v44 = v68;
    }

    while (v60 != v68);
  }

  return (*(v56 + 8))(v67, v42);
}

uint64_t static SIMD<>.&= infix(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = a2;
  v48 = a5;
  v5 = a3;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v37 = v8;
  v50 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v35 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v35 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v40 = v21;
  v23 = &v35 - v22;
  v38 = *(v21 + 32);
  v39 = v21 + 32;
  v38();
  (*(v7 + 48))(v5, v7);
  v24 = (*(v7 + 40))(v5, v7);
  if (v24 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v36 = a1;
  v25 = v37;
  v46 = v17;
  v49 = v20;
  v26 = v23;
  if (v24)
  {
    v27 = 0;
    v28 = *(v7 + 56);
    v42 = (v50 + 8);
    v43 = v28;
    v44 = v7 + 56;
    v45 = v24;
    v41 = v7 + 64;
    do
    {
      v50 = v27 + 1;
      v29 = v5;
      v30 = v5;
      v31 = v43;
      v43(v27, v30, v7);
      v31(v27, v29, v7);
      v32 = v46;
      (*(*(v48 + 8) + 192))(v14, v11, v25);
      v33 = *v42;
      (*v42)(v11, v25);
      v33(v14, v25);
      (*(v7 + 64))(v32, v27, v29, v7);
      v5 = v29;
      v27 = v50;
    }

    while (v45 != v50);
  }

  (*(v40 + 8))(v26, v5);
  return (v38)(v36, v49, v5);
}

uint64_t static SIMD<>.^= infix(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = a2;
  v48 = a5;
  v5 = a3;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v37 = v8;
  v50 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v35 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v35 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v40 = v21;
  v23 = &v35 - v22;
  v38 = *(v21 + 32);
  v39 = v21 + 32;
  v38();
  (*(v7 + 48))(v5, v7);
  v24 = (*(v7 + 40))(v5, v7);
  if (v24 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v36 = a1;
  v25 = v37;
  v46 = v17;
  v49 = v20;
  v26 = v23;
  if (v24)
  {
    v27 = 0;
    v28 = *(v7 + 56);
    v42 = (v50 + 8);
    v43 = v28;
    v44 = v7 + 56;
    v45 = v24;
    v41 = v7 + 64;
    do
    {
      v50 = v27 + 1;
      v29 = v5;
      v30 = v5;
      v31 = v43;
      v43(v27, v30, v7);
      v31(v27, v29, v7);
      v32 = v46;
      (*(*(v48 + 8) + 224))(v14, v11, v25);
      v33 = *v42;
      (*v42)(v11, v25);
      v33(v14, v25);
      (*(v7 + 64))(v32, v27, v29, v7);
      v5 = v29;
      v27 = v50;
    }

    while (v45 != v50);
  }

  (*(v40 + 8))(v26, v5);
  return (v38)(v36, v49, v5);
}

uint64_t static SIMD<>.|= infix(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = a2;
  v48 = a5;
  v5 = a3;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v37 = v8;
  v50 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v35 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v35 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v40 = v21;
  v23 = &v35 - v22;
  v38 = *(v21 + 32);
  v39 = v21 + 32;
  v38();
  (*(v7 + 48))(v5, v7);
  v24 = (*(v7 + 40))(v5, v7);
  if (v24 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v36 = a1;
  v25 = v37;
  v46 = v17;
  v49 = v20;
  v26 = v23;
  if (v24)
  {
    v27 = 0;
    v28 = *(v7 + 56);
    v42 = (v50 + 8);
    v43 = v28;
    v44 = v7 + 56;
    v45 = v24;
    v41 = v7 + 64;
    do
    {
      v50 = v27 + 1;
      v29 = v5;
      v30 = v5;
      v31 = v43;
      v43(v27, v30, v7);
      v31(v27, v29, v7);
      v32 = v46;
      (*(*(v48 + 8) + 208))(v14, v11, v25);
      v33 = *v42;
      (*v42)(v11, v25);
      v33(v14, v25);
      (*(v7 + 64))(v32, v27, v29, v7);
      v5 = v29;
      v27 = v50;
    }

    while (v45 != v50);
  }

  (*(v40 + 8))(v26, v5);
  return (v38)(v36, v49, v5);
}

uint64_t static SIMD<>.&<<= infix(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = a2;
  v49 = a5;
  v5 = a3;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v51 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v36 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v36 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v40 = v22;
  v23 = *(v22 + 32);
  v37 = &v36 - v24;
  v38 = v23;
  v39 = v22 + 32;
  v23();
  (*(v7 + 48))(v5, v7);
  v25 = (*(v7 + 40))(v5, v7);
  if (v25 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v36 = a1;
  v47 = v18;
  v50 = v21;
  v26 = v37;
  if (v25)
  {
    v27 = 0;
    v28 = *(v7 + 56);
    v43 = v49 + 216;
    v44 = v28;
    v45 = v7 + 56;
    v46 = v25;
    v41 = v7 + 64;
    v42 = (v51 + 8);
    do
    {
      v51 = v27 + 1;
      v29 = v5;
      v30 = v5;
      v31 = v9;
      v32 = v44;
      v44(v27, v30, v7);
      v32(v27, v29, v7);
      v9 = v31;
      v33 = v47;
      (*(v49 + 216))(v15, v12, v31);
      v34 = *v42;
      (*v42)(v12, v31);
      v34(v15, v31);
      (*(v7 + 64))(v33, v27, v29, v7);
      v5 = v29;
      v27 = v51;
    }

    while (v46 != v51);
  }

  (*(v40 + 8))(v26, v5);
  return (v38)(v36, v50, v5);
}

uint64_t static SIMD<>.&>>= infix(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = a2;
  v49 = a5;
  v5 = a3;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v51 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v36 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v36 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v40 = v22;
  v23 = *(v22 + 32);
  v37 = &v36 - v24;
  v38 = v23;
  v39 = v22 + 32;
  v23();
  (*(v7 + 48))(v5, v7);
  v25 = (*(v7 + 40))(v5, v7);
  if (v25 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v36 = a1;
  v47 = v18;
  v50 = v21;
  v26 = v37;
  if (v25)
  {
    v27 = 0;
    v28 = *(v7 + 56);
    v43 = v49 + 200;
    v44 = v28;
    v45 = v7 + 56;
    v46 = v25;
    v41 = v7 + 64;
    v42 = (v51 + 8);
    do
    {
      v51 = v27 + 1;
      v29 = v5;
      v30 = v5;
      v31 = v9;
      v32 = v44;
      v44(v27, v30, v7);
      v32(v27, v29, v7);
      v9 = v31;
      v33 = v47;
      (*(v49 + 200))(v15, v12, v31);
      v34 = *v42;
      (*v42)(v12, v31);
      v34(v15, v31);
      (*(v7 + 64))(v33, v27, v29, v7);
      v5 = v29;
      v27 = v51;
    }

    while (v46 != v51);
  }

  (*(v40 + 8))(v26, v5);
  return (v38)(v36, v50, v5);
}

uint64_t static SIMD<>.&+= infix(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a5;
  v5 = a3;
  v53 = a2;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v57 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v40 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v40 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v44 = v22;
  v23 = *(v22 + 32);
  v41 = &v40 - v24;
  v42 = v23;
  v43 = v22 + 32;
  v23();
  (*(v7 + 48))(v5, v7);
  v25 = (*(v7 + 40))(v5, v7);
  if (v25 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v40 = a1;
  v51 = v9;
  v52 = v18;
  v54 = v7;
  v56 = v21;
  v26 = v41;
  if (v25)
  {
    v27 = v12;
    v28 = 0;
    v29 = *(v54 + 56);
    v47 = v55 + 80;
    v48 = v29;
    v49 = v54 + 56;
    v50 = v25;
    v45 = v54 + 64;
    v46 = v57 + 8;
    v30 = (v57 + 8);
    do
    {
      v57 = v28 + 1;
      v31 = v15;
      v32 = v5;
      v33 = v5;
      v34 = v54;
      v35 = v48;
      v48(v28, v33, v54);
      v35(v28, v32, v34);
      v36 = v51;
      v37 = v52;
      (*(v55 + 80))(v52, v27, v51);
      v38 = *v30;
      (*v30)(v27, v36);
      v38(v31, v36);
      (*(v34 + 64))(v37, v28, v32, v34);
      v15 = v31;
      v5 = v32;
      v28 = v57;
    }

    while (v50 != v57);
  }

  (*(v44 + 8))(v26, v5);
  return (v42)(v40, v56, v5);
}

uint64_t static SIMD<>.&-= infix(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a5;
  v5 = a3;
  v53 = a2;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v57 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v40 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v40 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v44 = v22;
  v23 = *(v22 + 32);
  v41 = &v40 - v24;
  v42 = v23;
  v43 = v22 + 32;
  v23();
  (*(v7 + 48))(v5, v7);
  v25 = (*(v7 + 40))(v5, v7);
  if (v25 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v40 = a1;
  v51 = v9;
  v52 = v18;
  v54 = v7;
  v56 = v21;
  v26 = v41;
  if (v25)
  {
    v27 = v12;
    v28 = 0;
    v29 = *(v54 + 56);
    v47 = v55 + 88;
    v48 = v29;
    v49 = v54 + 56;
    v50 = v25;
    v45 = v54 + 64;
    v46 = v57 + 8;
    v30 = (v57 + 8);
    do
    {
      v57 = v28 + 1;
      v31 = v15;
      v32 = v5;
      v33 = v5;
      v34 = v54;
      v35 = v48;
      v48(v28, v33, v54);
      v35(v28, v32, v34);
      v36 = v51;
      v37 = v52;
      (*(v55 + 88))(v52, v27, v51);
      v38 = *v30;
      (*v30)(v27, v36);
      v38(v31, v36);
      (*(v34 + 64))(v37, v28, v32, v34);
      v15 = v31;
      v5 = v32;
      v28 = v57;
    }

    while (v50 != v57);
  }

  (*(v44 + 8))(v26, v5);
  return (v42)(v40, v56, v5);
}

uint64_t static SIMD<>.&*= infix(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a5;
  v5 = a3;
  v53 = a2;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v57 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v40 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v40 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v44 = v22;
  v23 = *(v22 + 32);
  v41 = &v40 - v24;
  v42 = v23;
  v43 = v22 + 32;
  v23();
  (*(v7 + 48))(v5, v7);
  v25 = (*(v7 + 40))(v5, v7);
  if (v25 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v40 = a1;
  v51 = v9;
  v52 = v18;
  v54 = v7;
  v56 = v21;
  v26 = v41;
  if (v25)
  {
    v27 = v12;
    v28 = 0;
    v29 = *(v54 + 56);
    v47 = v55 + 96;
    v48 = v29;
    v49 = v54 + 56;
    v50 = v25;
    v45 = v54 + 64;
    v46 = v57 + 8;
    v30 = (v57 + 8);
    do
    {
      v57 = v28 + 1;
      v31 = v5;
      v32 = v15;
      v33 = v5;
      v34 = v54;
      v35 = v48;
      v48(v28, v33, v54);
      v35(v28, v31, v34);
      v36 = v51;
      v37 = v52;
      (*(v55 + 96))(v52, v32, v51);
      v38 = *v30;
      (*v30)(v27, v36);
      v38(v32, v36);
      (*(v34 + 64))(v37, v28, v31, v34);
      v15 = v32;
      v5 = v31;
      v28 = v57;
    }

    while (v50 != v57);
  }

  (*(v44 + 8))(v26, v5);
  return (v42)(v40, v56, v5);
}

uint64_t static SIMD<>./= infix(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = a2;
  v48 = a5;
  v5 = a3;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v37 = v8;
  v50 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v35 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v35 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v40 = v21;
  v23 = &v35 - v22;
  v38 = *(v21 + 32);
  v39 = v21 + 32;
  v38();
  (*(v7 + 48))(v5, v7);
  v24 = (*(v7 + 40))(v5, v7);
  if (v24 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v36 = a1;
  v25 = v37;
  v46 = v17;
  v49 = v20;
  v26 = v23;
  if (v24)
  {
    v27 = 0;
    v28 = *(v7 + 56);
    v42 = (v50 + 8);
    v43 = v28;
    v44 = v7 + 56;
    v45 = v24;
    v41 = v7 + 64;
    do
    {
      v50 = v27 + 1;
      v29 = v5;
      v30 = v5;
      v31 = v43;
      v43(v27, v30, v7);
      v31(v27, v29, v7);
      v32 = v46;
      (*(*(v48 + 8) + 152))(v14, v11, v25);
      v33 = *v42;
      (*v42)(v11, v25);
      v33(v14, v25);
      (*(v7 + 64))(v32, v27, v29, v7);
      v5 = v29;
      v27 = v50;
    }

    while (v45 != v50);
  }

  (*(v40 + 8))(v26, v5);
  return (v38)(v36, v49, v5);
}

{
  v48 = a2;
  v49 = a5;
  v5 = a3;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v51 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v36 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v36 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v40 = v22;
  v23 = *(v22 + 32);
  v37 = &v36 - v24;
  v38 = v23;
  v39 = v22 + 32;
  v23();
  (*(v7 + 48))(v5, v7);
  v25 = (*(v7 + 40))(v5, v7);
  if (v25 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v36 = a1;
  v47 = v18;
  v50 = v21;
  v26 = v37;
  if (v25)
  {
    v27 = 0;
    v28 = *(v7 + 56);
    v43 = v49 + 192;
    v44 = v28;
    v45 = v7 + 56;
    v46 = v25;
    v41 = v7 + 64;
    v42 = (v51 + 8);
    do
    {
      v51 = v27 + 1;
      v29 = v5;
      v30 = v5;
      v31 = v9;
      v32 = v44;
      v44(v27, v30, v7);
      v32(v27, v29, v7);
      v9 = v31;
      v33 = v47;
      (*(v49 + 192))(v15, v12, v31);
      v34 = *v42;
      (*v42)(v12, v31);
      v34(v15, v31);
      (*(v7 + 64))(v33, v27, v29, v7);
      v5 = v29;
      v27 = v51;
    }

    while (v46 != v51);
  }

  (*(v40 + 8))(v26, v5);
  return (v38)(v36, v50, v5);
}

uint64_t static SIMD<>.%= infix(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = a2;
  v48 = a5;
  v5 = a3;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v37 = v8;
  v50 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v35 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v35 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v40 = v21;
  v23 = &v35 - v22;
  v38 = *(v21 + 32);
  v39 = v21 + 32;
  v38();
  (*(v7 + 48))(v5, v7);
  v24 = (*(v7 + 40))(v5, v7);
  if (v24 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v36 = a1;
  v25 = v37;
  v46 = v17;
  v49 = v20;
  v26 = v23;
  if (v24)
  {
    v27 = 0;
    v28 = *(v7 + 56);
    v42 = (v50 + 8);
    v43 = v28;
    v44 = v7 + 56;
    v45 = v24;
    v41 = v7 + 64;
    do
    {
      v50 = v27 + 1;
      v29 = v5;
      v30 = v5;
      v31 = v43;
      v43(v27, v30, v7);
      v31(v27, v29, v7);
      v32 = v46;
      (*(*(v48 + 8) + 168))(v14, v11, v25);
      v33 = *v42;
      (*v42)(v11, v25);
      v33(v14, v25);
      (*(v7 + 64))(v32, v27, v29, v7);
      v5 = v29;
      v27 = v50;
    }

    while (v45 != v50);
  }

  (*(v40 + 8))(v26, v5);
  return (v38)(v36, v49, v5);
}

uint64_t static SIMD<>.&= infix(_:_:)(uint64_t a1, void (*a2)(char *, uint64_t), unint64_t a3, uint64_t a4, uint64_t a5)
{
  v76 = a5;
  v80 = a2;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v65 = &v61 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v78 = &v61 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v61 - v19;
  v21 = *(a3 - 8);
  v22 = MEMORY[0x1EEE9AC00](v18);
  v82 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = (&v61 - v25);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v81 = &v61 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v29 = *(v21 + 32);
  v77 = &v61 - v30;
  v31 = a1;
  v68 = v29;
  v69 = v21 + 32;
  v29();
  v83 = v10;
  v32 = *(v10 + 16);
  v66 = v10 + 16;
  v67 = v20;
  v71 = v9;
  v33 = v32;
  v32(v20, v80, v9);
  v74 = *(v7 + 48);
  v75 = v7 + 48;
  v74(a3, v7);
  v34 = *(v7 + 40);
  v70 = v7;
  v72 = v34;
  v73 = (v7 + 40);
  v35 = v34(a3, v7);
  if (v35 < 0)
  {
    goto LABEL_10;
  }

  v36 = v35;
  v62 = v21;
  v63 = v13;
  v64 = v31;
  v38 = v70;
  v37 = v71;
  v39 = v78;
  v79 = a3;
  v80 = v26;
  v40 = v67;
  if (v35)
  {
    v41 = 0;
    do
    {
      v42 = v40;
      v43 = v37;
      v33(v39, v40, v37);
      (*(v38 + 64))(v39, v41, v79, v38);
      v40 = v42;
      v37 = v43;
      ++v41;
    }

    while (v36 != v41);
  }

  v44 = v79;
  v45 = v83 + 8;
  v46 = *(v83 + 8);
  v46(v40, v37);
  (v68)(v81, v80, v44);
  v74(v44, v38);
  v47 = v38;
  v48 = v44;
  v49 = v72(v44, v47);
  if (v49 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v83 = v45;
  v50 = v63;
  v51 = v65;
  v53 = v70;
  v52 = v71;
  v80 = v46;
  if (v49)
  {
    v54 = 0;
    v73 = *(v70 + 56);
    v74 = (v70 + 56);
    v72 = (v70 + 64);
    v75 = v49;
    do
    {
      v55 = v73;
      v73(v54, v48, v53);
      v55(v54, v48, v53);
      v56 = v78;
      (*(*(v76 + 8) + 192))(v51, v50, v52);
      v57 = v48;
      v58 = v80;
      v80(v50, v52);
      v58(v51, v52);
      v48 = v57;
      (*(v53 + 64))(v56, v54++, v57, v53);
    }

    while (v75 != v54);
  }

  v59 = *(v62 + 8);
  v59(v81, v48);
  v59(v77, v48);
  return (v68)(v64, v82, v48);
}

uint64_t static SIMD<>.^= infix(_:_:)(uint64_t a1, void (*a2)(char *, uint64_t), unint64_t a3, uint64_t a4, uint64_t a5)
{
  v76 = a5;
  v80 = a2;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v65 = &v61 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v78 = &v61 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v61 - v19;
  v21 = *(a3 - 8);
  v22 = MEMORY[0x1EEE9AC00](v18);
  v82 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = (&v61 - v25);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v81 = &v61 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v29 = *(v21 + 32);
  v77 = &v61 - v30;
  v31 = a1;
  v68 = v29;
  v69 = v21 + 32;
  v29();
  v83 = v10;
  v32 = *(v10 + 16);
  v66 = v10 + 16;
  v67 = v20;
  v71 = v9;
  v33 = v32;
  v32(v20, v80, v9);
  v74 = *(v7 + 48);
  v75 = v7 + 48;
  v74(a3, v7);
  v34 = *(v7 + 40);
  v70 = v7;
  v72 = v34;
  v73 = (v7 + 40);
  v35 = v34(a3, v7);
  if (v35 < 0)
  {
    goto LABEL_10;
  }

  v36 = v35;
  v62 = v21;
  v63 = v13;
  v64 = v31;
  v38 = v70;
  v37 = v71;
  v39 = v78;
  v79 = a3;
  v80 = v26;
  v40 = v67;
  if (v35)
  {
    v41 = 0;
    do
    {
      v42 = v40;
      v43 = v37;
      v33(v39, v40, v37);
      (*(v38 + 64))(v39, v41, v79, v38);
      v40 = v42;
      v37 = v43;
      ++v41;
    }

    while (v36 != v41);
  }

  v44 = v79;
  v45 = v83 + 8;
  v46 = *(v83 + 8);
  v46(v40, v37);
  (v68)(v81, v80, v44);
  v74(v44, v38);
  v47 = v38;
  v48 = v44;
  v49 = v72(v44, v47);
  if (v49 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v83 = v45;
  v50 = v63;
  v51 = v65;
  v53 = v70;
  v52 = v71;
  v80 = v46;
  if (v49)
  {
    v54 = 0;
    v73 = *(v70 + 56);
    v74 = (v70 + 56);
    v72 = (v70 + 64);
    v75 = v49;
    do
    {
      v55 = v73;
      v73(v54, v48, v53);
      v55(v54, v48, v53);
      v56 = v78;
      (*(*(v76 + 8) + 224))(v51, v50, v52);
      v57 = v48;
      v58 = v80;
      v80(v50, v52);
      v58(v51, v52);
      v48 = v57;
      (*(v53 + 64))(v56, v54++, v57, v53);
    }

    while (v75 != v54);
  }

  v59 = *(v62 + 8);
  v59(v81, v48);
  v59(v77, v48);
  return (v68)(v64, v82, v48);
}

uint64_t static SIMD<>.|= infix(_:_:)(uint64_t a1, void (*a2)(char *, uint64_t), unint64_t a3, uint64_t a4, uint64_t a5)
{
  v76 = a5;
  v80 = a2;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v65 = &v61 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v78 = &v61 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v61 - v19;
  v21 = *(a3 - 8);
  v22 = MEMORY[0x1EEE9AC00](v18);
  v82 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = (&v61 - v25);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v81 = &v61 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v29 = *(v21 + 32);
  v77 = &v61 - v30;
  v31 = a1;
  v68 = v29;
  v69 = v21 + 32;
  v29();
  v83 = v10;
  v32 = *(v10 + 16);
  v66 = v10 + 16;
  v67 = v20;
  v71 = v9;
  v33 = v32;
  v32(v20, v80, v9);
  v74 = *(v7 + 48);
  v75 = v7 + 48;
  v74(a3, v7);
  v34 = *(v7 + 40);
  v70 = v7;
  v72 = v34;
  v73 = (v7 + 40);
  v35 = v34(a3, v7);
  if (v35 < 0)
  {
    goto LABEL_10;
  }

  v36 = v35;
  v62 = v21;
  v63 = v13;
  v64 = v31;
  v38 = v70;
  v37 = v71;
  v39 = v78;
  v79 = a3;
  v80 = v26;
  v40 = v67;
  if (v35)
  {
    v41 = 0;
    do
    {
      v42 = v40;
      v43 = v37;
      v33(v39, v40, v37);
      (*(v38 + 64))(v39, v41, v79, v38);
      v40 = v42;
      v37 = v43;
      ++v41;
    }

    while (v36 != v41);
  }

  v44 = v79;
  v45 = v83 + 8;
  v46 = *(v83 + 8);
  v46(v40, v37);
  (v68)(v81, v80, v44);
  v74(v44, v38);
  v47 = v38;
  v48 = v44;
  v49 = v72(v44, v47);
  if (v49 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v83 = v45;
  v50 = v63;
  v51 = v65;
  v53 = v70;
  v52 = v71;
  v80 = v46;
  if (v49)
  {
    v54 = 0;
    v73 = *(v70 + 56);
    v74 = (v70 + 56);
    v72 = (v70 + 64);
    v75 = v49;
    do
    {
      v55 = v73;
      v73(v54, v48, v53);
      v55(v54, v48, v53);
      v56 = v78;
      (*(*(v76 + 8) + 208))(v51, v50, v52);
      v57 = v48;
      v58 = v80;
      v80(v50, v52);
      v58(v51, v52);
      v48 = v57;
      (*(v53 + 64))(v56, v54++, v57, v53);
    }

    while (v75 != v54);
  }

  v59 = *(v62 + 8);
  v59(v81, v48);
  v59(v77, v48);
  return (v68)(v64, v82, v48);
}

uint64_t static SIMD<>.&<<= infix(_:_:)(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a5;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v62 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v61 = &v59 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v74 = &v59 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v59 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v79 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = (&v59 - v24);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v78 = &v59 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v60 = v28;
  v29 = *(v28 + 32);
  v73 = &v59 - v30;
  v31 = a1;
  v65 = v29;
  v66 = v28 + 32;
  v29();
  v32 = *(v11 + 16);
  v71 = v20;
  v63 = v32;
  v64 = v11 + 16;
  v32(v20, a2, v10);
  v69 = *(v8 + 48);
  v70 = v8 + 48;
  v69(a3, v8);
  v33 = v25;
  v67 = *(v8 + 40);
  v68 = v8 + 40;
  v34 = v67(a3, v8);
  if (v34 < 0)
  {
    goto LABEL_10;
  }

  v35 = v34;
  v76 = a3;
  v77 = v11;
  v59 = v31;
  v36 = v74;
  v37 = v71;
  v75 = v33;
  v38 = v63;
  if (v34)
  {
    v39 = 0;
    do
    {
      v38(v36, v37, v10);
      (*(v8 + 64))(v36, v39++, v76, v8);
    }

    while (v35 != v39);
  }

  v40 = *(v77 + 8);
  v41 = v77 + 8;
  v40(v37, v10);
  v42 = v76;
  (v65)(v78, v75, v76);
  v69(v42, v8);
  v43 = v42;
  v44 = v67(v42, v8);
  if (v44 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v45 = v10;
  v46 = v8;
  v47 = v43;
  v77 = v41;
  v48 = v61;
  v49 = v62;
  v75 = v40;
  if (v44)
  {
    v50 = v46;
    v51 = 0;
    v52 = *(v46 + 56);
    v68 = v72 + 216;
    v69 = v52;
    v70 = v46 + 56;
    v71 = v44;
    v67 = (v46 + 64);
    do
    {
      v53 = v69;
      (v69)(v51, v47, v50);
      v53(v51, v47, v50);
      v54 = v74;
      (*(v72 + 216))(v48, v49, v45);
      v55 = v47;
      v56 = v75;
      v75(v49, v45);
      v56(v48, v45);
      v47 = v55;
      (*(v50 + 64))(v54, v51++, v55, v50);
    }

    while (v71 != v51);
  }

  v57 = *(v60 + 8);
  v57(v78, v47);
  v57(v73, v47);
  return (v65)(v59, v79, v47);
}

uint64_t static SIMD<>.&>>= infix(_:_:)(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a5;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v62 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v61 = &v59 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v74 = &v59 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v59 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v79 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = (&v59 - v24);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v78 = &v59 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v60 = v28;
  v29 = *(v28 + 32);
  v73 = &v59 - v30;
  v31 = a1;
  v65 = v29;
  v66 = v28 + 32;
  v29();
  v32 = *(v11 + 16);
  v71 = v20;
  v63 = v32;
  v64 = v11 + 16;
  v32(v20, a2, v10);
  v69 = *(v8 + 48);
  v70 = v8 + 48;
  v69(a3, v8);
  v33 = v25;
  v67 = *(v8 + 40);
  v68 = v8 + 40;
  v34 = v67(a3, v8);
  if (v34 < 0)
  {
    goto LABEL_10;
  }

  v35 = v34;
  v76 = a3;
  v77 = v11;
  v59 = v31;
  v36 = v74;
  v37 = v71;
  v75 = v33;
  v38 = v63;
  if (v34)
  {
    v39 = 0;
    do
    {
      v38(v36, v37, v10);
      (*(v8 + 64))(v36, v39++, v76, v8);
    }

    while (v35 != v39);
  }

  v40 = *(v77 + 8);
  v41 = v77 + 8;
  v40(v37, v10);
  v42 = v76;
  (v65)(v78, v75, v76);
  v69(v42, v8);
  v43 = v42;
  v44 = v67(v42, v8);
  if (v44 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v45 = v10;
  v46 = v8;
  v47 = v43;
  v77 = v41;
  v48 = v61;
  v49 = v62;
  v75 = v40;
  if (v44)
  {
    v50 = v46;
    v51 = 0;
    v52 = *(v46 + 56);
    v68 = v72 + 200;
    v69 = v52;
    v70 = v46 + 56;
    v71 = v44;
    v67 = (v46 + 64);
    do
    {
      v53 = v69;
      (v69)(v51, v47, v50);
      v53(v51, v47, v50);
      v54 = v74;
      (*(v72 + 200))(v48, v49, v45);
      v55 = v47;
      v56 = v75;
      v75(v49, v45);
      v56(v48, v45);
      v47 = v55;
      (*(v50 + 64))(v54, v51++, v55, v50);
    }

    while (v71 != v51);
  }

  v57 = *(v60 + 8);
  v57(v78, v47);
  v57(v73, v47);
  return (v65)(v59, v79, v47);
}

uint64_t static SIMD<>.&+= infix(_:_:)(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v75 = a5;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v66 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v65 = &v62 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v77 = &v62 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v62 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v82 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = (&v62 - v24);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v81 = &v62 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v64 = v28;
  v29 = *(v28 + 32);
  v76 = &v62 - v30;
  v31 = a1;
  v68 = v29;
  v69 = v28 + 32;
  v29();
  v32 = v11;
  v33 = v11 + 16;
  v34 = *(v11 + 16);
  v35 = v20;
  v70 = v33;
  v67 = v34;
  v34(v20, a2, v10);
  v73 = *(v8 + 48);
  v74 = v8 + 48;
  v73(a3, v8);
  v36 = v25;
  v37 = v8;
  v71 = *(v8 + 40);
  v72 = (v8 + 40);
  v38 = v71(a3, v8);
  if (v38 < 0)
  {
    goto LABEL_10;
  }

  v39 = v38;
  v79 = a3;
  v80 = v32;
  v40 = v10;
  v63 = v31;
  v41 = v77;
  v78 = v36;
  v42 = v67;
  if (v38)
  {
    v43 = 0;
    do
    {
      v42(v41, v35, v40);
      (*(v37 + 64))(v41, v43++, v79, v37);
    }

    while (v39 != v43);
  }

  v44 = *(v80 + 8);
  v45 = v40;
  v46 = v80 + 8;
  v44(v35, v40);
  v47 = v79;
  (v68)(v81, v78, v79);
  v73(v47, v37);
  v48 = v71(v47, v37);
  if (v48 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v49 = v37;
  v80 = v46;
  v50 = v65;
  v51 = v66;
  v78 = v44;
  if (v48)
  {
    v52 = v45;
    v53 = v49;
    v54 = 0;
    v55 = *(v49 + 56);
    v71 = (v75 + 80);
    v72 = v55;
    v73 = (v49 + 56);
    v74 = v48;
    v70 = v49 + 64;
    do
    {
      v56 = v72;
      v72(v54, v47, v53);
      v56(v54, v47, v53);
      v57 = v77;
      (*(v75 + 80))(v77, v51, v52);
      v58 = v47;
      v59 = v78;
      v78(v51, v52);
      v59(v50, v52);
      v47 = v58;
      (*(v53 + 64))(v57, v54++, v58, v53);
    }

    while (v74 != v54);
  }

  v60 = *(v64 + 8);
  v60(v81, v47);
  v60(v76, v47);
  return (v68)(v63, v82, v47);
}

uint64_t static SIMD<>.&-= infix(_:_:)(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v75 = a5;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v66 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v65 = &v62 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v77 = &v62 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v62 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v82 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = (&v62 - v24);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v81 = &v62 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v64 = v28;
  v29 = *(v28 + 32);
  v76 = &v62 - v30;
  v31 = a1;
  v68 = v29;
  v69 = v28 + 32;
  v29();
  v32 = v11;
  v33 = v11 + 16;
  v34 = *(v11 + 16);
  v35 = v20;
  v70 = v33;
  v67 = v34;
  v34(v20, a2, v10);
  v73 = *(v8 + 48);
  v74 = v8 + 48;
  v73(a3, v8);
  v36 = v25;
  v37 = v8;
  v71 = *(v8 + 40);
  v72 = (v8 + 40);
  v38 = v71(a3, v8);
  if (v38 < 0)
  {
    goto LABEL_10;
  }

  v39 = v38;
  v79 = a3;
  v80 = v32;
  v40 = v10;
  v63 = v31;
  v41 = v77;
  v78 = v36;
  v42 = v67;
  if (v38)
  {
    v43 = 0;
    do
    {
      v42(v41, v35, v40);
      (*(v37 + 64))(v41, v43++, v79, v37);
    }

    while (v39 != v43);
  }

  v44 = *(v80 + 8);
  v45 = v40;
  v46 = v80 + 8;
  v44(v35, v40);
  v47 = v79;
  (v68)(v81, v78, v79);
  v73(v47, v37);
  v48 = v71(v47, v37);
  if (v48 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v49 = v37;
  v80 = v46;
  v50 = v65;
  v51 = v66;
  v78 = v44;
  if (v48)
  {
    v52 = v45;
    v53 = v49;
    v54 = 0;
    v55 = *(v49 + 56);
    v71 = (v75 + 88);
    v72 = v55;
    v73 = (v49 + 56);
    v74 = v48;
    v70 = v49 + 64;
    do
    {
      v56 = v72;
      v72(v54, v47, v53);
      v56(v54, v47, v53);
      v57 = v77;
      (*(v75 + 88))(v77, v51, v52);
      v58 = v47;
      v59 = v78;
      v78(v51, v52);
      v59(v50, v52);
      v47 = v58;
      (*(v53 + 64))(v57, v54++, v58, v53);
    }

    while (v74 != v54);
  }

  v60 = *(v64 + 8);
  v60(v81, v47);
  v60(v76, v47);
  return (v68)(v63, v82, v47);
}

uint64_t static SIMD<>.&*= infix(_:_:)(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v75 = a5;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v66 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v65 = &v62 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v77 = &v62 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v62 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v82 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = (&v62 - v24);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v81 = &v62 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v64 = v28;
  v29 = *(v28 + 32);
  v76 = &v62 - v30;
  v31 = a1;
  v68 = v29;
  v69 = v28 + 32;
  v29();
  v32 = v11;
  v33 = v11 + 16;
  v34 = *(v11 + 16);
  v35 = v20;
  v70 = v33;
  v67 = v34;
  v34(v20, a2, v10);
  v73 = *(v8 + 48);
  v74 = v8 + 48;
  v73(a3, v8);
  v36 = v25;
  v37 = v8;
  v71 = *(v8 + 40);
  v72 = (v8 + 40);
  v38 = v71(a3, v8);
  if (v38 < 0)
  {
    goto LABEL_10;
  }

  v39 = v38;
  v79 = a3;
  v80 = v32;
  v40 = v10;
  v63 = v31;
  v41 = v77;
  v78 = v36;
  v42 = v67;
  if (v38)
  {
    v43 = 0;
    do
    {
      v42(v41, v35, v40);
      (*(v37 + 64))(v41, v43++, v79, v37);
    }

    while (v39 != v43);
  }

  v44 = *(v80 + 8);
  v45 = v40;
  v46 = v80 + 8;
  v44(v35, v40);
  v47 = v79;
  (v68)(v81, v78, v79);
  v73(v47, v37);
  v48 = v71(v47, v37);
  if (v48 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v49 = v37;
  v80 = v46;
  v50 = v65;
  v51 = v66;
  v78 = v44;
  if (v48)
  {
    v52 = v45;
    v53 = v49;
    v54 = 0;
    v55 = *(v49 + 56);
    v71 = (v75 + 96);
    v72 = v55;
    v73 = (v49 + 56);
    v74 = v48;
    v70 = v49 + 64;
    do
    {
      v56 = v72;
      v72(v54, v47, v53);
      v56(v54, v47, v53);
      v57 = v77;
      (*(v75 + 96))(v77, v50, v52);
      v58 = v47;
      v59 = v78;
      v78(v51, v52);
      v59(v50, v52);
      v47 = v58;
      (*(v53 + 64))(v57, v54++, v58, v53);
    }

    while (v74 != v54);
  }

  v60 = *(v64 + 8);
  v60(v81, v47);
  v60(v76, v47);
  return (v68)(v63, v82, v47);
}

uint64_t static SIMD<>./= infix(_:_:)(uint64_t a1, void (*a2)(char *, uint64_t), unint64_t a3, uint64_t a4, uint64_t a5)
{
  v76 = a5;
  v80 = a2;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v65 = &v61 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v78 = &v61 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v61 - v19;
  v21 = *(a3 - 8);
  v22 = MEMORY[0x1EEE9AC00](v18);
  v82 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = (&v61 - v25);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v81 = &v61 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v29 = *(v21 + 32);
  v77 = &v61 - v30;
  v31 = a1;
  v68 = v29;
  v69 = v21 + 32;
  v29();
  v83 = v10;
  v32 = *(v10 + 16);
  v66 = v10 + 16;
  v67 = v20;
  v71 = v9;
  v33 = v32;
  v32(v20, v80, v9);
  v74 = *(v7 + 48);
  v75 = v7 + 48;
  v74(a3, v7);
  v34 = *(v7 + 40);
  v70 = v7;
  v72 = v34;
  v73 = (v7 + 40);
  v35 = v34(a3, v7);
  if (v35 < 0)
  {
    goto LABEL_10;
  }

  v36 = v35;
  v62 = v21;
  v63 = v13;
  v64 = v31;
  v38 = v70;
  v37 = v71;
  v39 = v78;
  v79 = a3;
  v80 = v26;
  v40 = v67;
  if (v35)
  {
    v41 = 0;
    do
    {
      v42 = v40;
      v43 = v37;
      v33(v39, v40, v37);
      (*(v38 + 64))(v39, v41, v79, v38);
      v40 = v42;
      v37 = v43;
      ++v41;
    }

    while (v36 != v41);
  }

  v44 = v79;
  v45 = v83 + 8;
  v46 = *(v83 + 8);
  v46(v40, v37);
  (v68)(v81, v80, v44);
  v74(v44, v38);
  v47 = v38;
  v48 = v44;
  v49 = v72(v44, v47);
  if (v49 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v83 = v45;
  v50 = v63;
  v51 = v65;
  v53 = v70;
  v52 = v71;
  v80 = v46;
  if (v49)
  {
    v54 = 0;
    v73 = *(v70 + 56);
    v74 = (v70 + 56);
    v72 = (v70 + 64);
    v75 = v49;
    do
    {
      v55 = v73;
      v73(v54, v48, v53);
      v55(v54, v48, v53);
      v56 = v78;
      (*(*(v76 + 8) + 152))(v51, v50, v52);
      v57 = v48;
      v58 = v80;
      v80(v50, v52);
      v58(v51, v52);
      v48 = v57;
      (*(v53 + 64))(v56, v54++, v57, v53);
    }

    while (v75 != v54);
  }

  v59 = *(v62 + 8);
  v59(v81, v48);
  v59(v77, v48);
  return (v68)(v64, v82, v48);
}

uint64_t static SIMD<>.%= infix(_:_:)(uint64_t a1, void (*a2)(char *, uint64_t), unint64_t a3, uint64_t a4, uint64_t a5)
{
  v76 = a5;
  v80 = a2;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v65 = &v61 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v78 = &v61 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v61 - v19;
  v21 = *(a3 - 8);
  v22 = MEMORY[0x1EEE9AC00](v18);
  v82 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = (&v61 - v25);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v81 = &v61 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v29 = *(v21 + 32);
  v77 = &v61 - v30;
  v31 = a1;
  v68 = v29;
  v69 = v21 + 32;
  v29();
  v83 = v10;
  v32 = *(v10 + 16);
  v66 = v10 + 16;
  v67 = v20;
  v71 = v9;
  v33 = v32;
  v32(v20, v80, v9);
  v74 = *(v7 + 48);
  v75 = v7 + 48;
  v74(a3, v7);
  v34 = *(v7 + 40);
  v70 = v7;
  v72 = v34;
  v73 = (v7 + 40);
  v35 = v34(a3, v7);
  if (v35 < 0)
  {
    goto LABEL_10;
  }

  v36 = v35;
  v62 = v21;
  v63 = v13;
  v64 = v31;
  v38 = v70;
  v37 = v71;
  v39 = v78;
  v79 = a3;
  v80 = v26;
  v40 = v67;
  if (v35)
  {
    v41 = 0;
    do
    {
      v42 = v40;
      v43 = v37;
      v33(v39, v40, v37);
      (*(v38 + 64))(v39, v41, v79, v38);
      v40 = v42;
      v37 = v43;
      ++v41;
    }

    while (v36 != v41);
  }

  v44 = v79;
  v45 = v83 + 8;
  v46 = *(v83 + 8);
  v46(v40, v37);
  (v68)(v81, v80, v44);
  v74(v44, v38);
  v47 = v38;
  v48 = v44;
  v49 = v72(v44, v47);
  if (v49 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v83 = v45;
  v50 = v63;
  v51 = v65;
  v53 = v70;
  v52 = v71;
  v80 = v46;
  if (v49)
  {
    v54 = 0;
    v73 = *(v70 + 56);
    v74 = (v70 + 56);
    v72 = (v70 + 64);
    v75 = v49;
    do
    {
      v55 = v73;
      v73(v54, v48, v53);
      v55(v54, v48, v53);
      v56 = v78;
      (*(*(v76 + 8) + 168))(v51, v50, v52);
      v57 = v48;
      v58 = v80;
      v80(v50, v52);
      v58(v51, v52);
      v48 = v57;
      (*(v53 + 64))(v56, v54++, v57, v53);
    }

    while (v75 != v54);
  }

  v59 = *(v62 + 8);
  v59(v81, v48);
  v59(v77, v48);
  return (v68)(v64, v82, v48);
}

void static SIMD<>.+ infix(_:_:)()
{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/SIMDVector.swift", 0x16uLL, 2, 0x4BCuLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/SIMDVector.swift", 0x16uLL, 2, 0x4CBuLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/SIMDVector.swift", 0x16uLL, 2, 0x4DAuLL);
}

void static SIMD<>.- infix(_:_:)()
{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/SIMDVector.swift", 0x16uLL, 2, 0x4C1uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/SIMDVector.swift", 0x16uLL, 2, 0x4D0uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/SIMDVector.swift", 0x16uLL, 2, 0x4DFuLL);
}

void static SIMD<>.* infix(_:_:)()
{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/SIMDVector.swift", 0x16uLL, 2, 0x4C6uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/SIMDVector.swift", 0x16uLL, 2, 0x4D5uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/SIMDVector.swift", 0x16uLL, 2, 0x4E4uLL);
}

void static SIMD<>.+= infix(_:_:)()
{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/SIMDVector.swift", 0x16uLL, 2, 0x4E9uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/SIMDVector.swift", 0x16uLL, 2, 0x4F8uLL);
}

void static SIMD<>.-= infix(_:_:)()
{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/SIMDVector.swift", 0x16uLL, 2, 0x4EEuLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/SIMDVector.swift", 0x16uLL, 2, 0x4FDuLL);
}

void static SIMD<>.*= infix(_:_:)()
{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/SIMDVector.swift", 0x16uLL, 2, 0x4F3uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/SIMDVector.swift", 0x16uLL, 2, 0x502uLL);
}

uint64_t static SIMD<>.- prefix(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v83 = a1;
  v86 = a4;
  v77 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v89 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v71 - v8;
  v76 = *(v9 + 48);
  swift_getAssociatedTypeWitness(0, v76, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v11 = v10;
  v12 = *(v10 - 1);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v75 = &v71 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v84 = &v71 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v71 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v71 - v23;
  v74 = *(*(a3 + 16) + 8);
  v25 = *(v74 + 16);
  swift_getAssociatedTypeWitness(0, v25, v11, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v27 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v71 - v28;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v25, v11, v27, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v27, AssociatedConformanceWitness);
  (*(v25 + 24))(v29, v11, v25);
  v88 = v12;
  v31 = *(v12 + 16);
  v78 = v24;
  v79 = v31;
  v32 = v24;
  v33 = v11;
  v34 = v11;
  v35 = v76;
  v80 = (v12 + 16);
  (v31)(v22, v32, v34);
  v36 = v35[6];
  (v36)(a2, v35);
  v81 = v35[5];
  v82 = (v35 + 5);
  v37 = (v81)(a2, v35);
  if (v37 < 0)
  {
    goto LABEL_10;
  }

  v72 = v36;
  v73 = v35 + 6;
  v71 = v15;
  v38 = v33;
  v39 = v84;
  v87 = a2;
  v40 = v22;
  v41 = v79;
  v42 = v35;
  if (v37)
  {
    v43 = 0;
    do
    {
      v44 = v37;
      v45 = v38;
      (v41)(v39, v40, v38);
      (v42[8])(v39, v43, v87, v42);
      v37 = v44;
      v38 = v45;
      ++v43;
    }

    while (v44 != v43);
  }

  v46 = v87;
  v47 = v88 + 8;
  v48 = *(v88 + 8);
  v49 = v40;
  v50 = v38;
  v48(v49, v38);
  v51 = v85;
  (*(v77 + 32))(v85, v89, v46);
  (v72)(v46, v42);
  v52 = v46;
  v53 = (v81)(v46, v42);
  if (v53 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v54 = v53;
  v48(v78, v50);
  v55 = v51;
  v88 = v47;
  v56 = v71;
  v82 = v48;
  v58 = v74;
  v57 = v75;
  if (v54)
  {
    v59 = v42;
    v60 = v50;
    v61 = 0;
    v79 = v59[7];
    v80 = v59 + 7;
    v78 = (v59 + 8);
    v81 = v54;
    do
    {
      v89 = v61 + 1;
      v62 = v57;
      v63 = v79;
      (v79)(v61, v52, v59);
      (v63)(v61, v52, v59);
      v64 = *(*(v58 + 8) + 40);
      v65 = v58;
      v66 = v52;
      v67 = v84;
      v64(v62, v56, v60);
      v68 = v82;
      v82(v56, v60);
      v68(v62, v60);
      v69 = v67;
      v52 = v66;
      v58 = v65;
      (v59[8])(v69, v61, v52, v59);
      v57 = v62;
      v55 = v85;
      v61 = v89;
    }

    while (v81 != v89);
  }

  return (*(v77 + 8))(v55, v52);
}

uint64_t static SIMD<>.- infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v63 = a5;
  v64 = a2;
  v66 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v55 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v54 = &v54 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v65 = &v54 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v57 = *(a3 - 8);
  v18 = MEMORY[0x1EEE9AC00](&v54 - v17);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v56 = &v54 - v22;
  v23 = v21;
  v25 = v24;
  v26 = *(v10 + 16);
  v26(v21, a1);
  v61 = *(v8 + 48);
  v62 = (v8 + 48);
  (v61)(a3, v8);
  v59 = *(v8 + 40);
  v60 = v8 + 40;
  v27 = v59(a3, v8);
  if (v27 < 0)
  {
    goto LABEL_10;
  }

  v67 = a3;
  v68 = v10;
  v28 = v25;
  v29 = v65;
  v69 = v20;
  if (v27)
  {
    v30 = 0;
    do
    {
      v31 = v27;
      v32 = v28;
      (v26)(v29, v23, v28);
      (*(v8 + 64))(v29, v30, v67, v8);
      v27 = v31;
      v28 = v32;
      ++v30;
    }

    while (v31 != v30);
  }

  v33 = *(v68 + 8);
  v34 = v68 + 8;
  v35 = v28;
  v33(v23, v28);
  v36 = v56;
  v37 = v67;
  (*(v57 + 32))(v56, v69, v67);
  (v61)(v37, v8);
  v38 = v37;
  v39 = v59(v37, v8);
  if (v39 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v40 = v35;
  v68 = v34;
  v41 = v38;
  v42 = v54;
  v43 = v55;
  v44 = v8;
  v45 = v36;
  v62 = v33;
  if (v39)
  {
    v46 = 0;
    v59 = *(v44 + 56);
    v60 = v44 + 56;
    v58 = v44 + 64;
    v61 = v39;
    do
    {
      v69 = v46 + 1;
      v47 = v59;
      (v59)(v46, v41, v44);
      v47(v46, v41, v44);
      v48 = v65;
      (*(*(*(*(v63 + 16) + 8) + 8) + 40))(v42, v43, v40);
      v49 = v43;
      v50 = v43;
      v51 = v41;
      v52 = v62;
      v62(v49, v40);
      v52(v42, v40);
      v41 = v51;
      v43 = v50;
      (*(v44 + 64))(v48, v46, v41, v44);
      v46 = v69;
    }

    while (v61 != v69);
  }

  return (*(v57 + 8))(v45, v41);
}

{
  v61 = a5;
  v54 = a1;
  v63 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v53 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v52 = &v52 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v62 = &v52 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v55 = *(a3 - 8);
  v18 = MEMORY[0x1EEE9AC00](&v52 - v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v66 = &v52 - v22;
  v23 = *(v10 + 16);
  v24 = v21;
  v26 = v25;
  v56 = v10 + 16;
  v27 = v23;
  (v23)(v21, a2);
  v59 = *(v8 + 48);
  v60 = (v8 + 48);
  (v59)(a3, v8);
  v57 = *(v8 + 40);
  v58 = (v8 + 40);
  v28 = v57(a3, v8);
  if (v28 < 0)
  {
    goto LABEL_10;
  }

  v64 = a3;
  v65 = v10;
  v29 = v26;
  v30 = v62;
  v67 = v20;
  if (v28)
  {
    v31 = 0;
    do
    {
      v32 = v28;
      v33 = v29;
      v27(v30, v24, v29);
      (*(v8 + 64))(v30, v31, v64, v8);
      v28 = v32;
      v29 = v33;
      ++v31;
    }

    while (v32 != v31);
  }

  v34 = *(v65 + 8);
  v35 = v24;
  v36 = v65 + 8;
  v37 = v29;
  v34(v35, v29);
  v38 = v64;
  (*(v55 + 32))(v66, v67, v64);
  (v59)(v38, v8);
  v39 = v57(v38, v8);
  if (v39 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v40 = v53;
  v65 = v36;
  v41 = v38;
  v42 = v52;
  v60 = v34;
  if (v39)
  {
    v43 = 0;
    v44 = *(v8 + 56);
    v57 = (v8 + 56);
    v58 = v44;
    v56 = v8 + 64;
    v59 = v39;
    do
    {
      v67 = v43 + 1;
      v45 = v58;
      v58(v43, v41, v8);
      v45(v43, v41, v8);
      v46 = v62;
      (*(*(*(*(v61 + 16) + 8) + 8) + 40))(v42, v40, v37);
      v47 = v40;
      v48 = v40;
      v49 = v41;
      v50 = v60;
      v60(v47, v37);
      v50(v42, v37);
      v41 = v49;
      v40 = v48;
      (*(v8 + 64))(v46, v43, v41, v8);
      v43 = v67;
    }

    while (v59 != v67);
  }

  return (*(v55 + 8))(v66, v41);
}

uint64_t static SIMD<>.+ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v63 = a5;
  v64 = a2;
  v66 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v55 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v54 = &v54 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v65 = &v54 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v57 = *(a3 - 8);
  v18 = MEMORY[0x1EEE9AC00](&v54 - v17);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v56 = &v54 - v22;
  v23 = v21;
  v25 = v24;
  v26 = *(v10 + 16);
  v26(v21, a1);
  v61 = *(v8 + 48);
  v62 = (v8 + 48);
  (v61)(a3, v8);
  v59 = *(v8 + 40);
  v60 = v8 + 40;
  v27 = v59(a3, v8);
  if (v27 < 0)
  {
    goto LABEL_10;
  }

  v67 = a3;
  v68 = v10;
  v28 = v25;
  v29 = v65;
  v69 = v20;
  if (v27)
  {
    v30 = 0;
    do
    {
      v31 = v27;
      v32 = v28;
      (v26)(v29, v23, v28);
      (*(v8 + 64))(v29, v30, v67, v8);
      v27 = v31;
      v28 = v32;
      ++v30;
    }

    while (v31 != v30);
  }

  v33 = *(v68 + 8);
  v34 = v68 + 8;
  v35 = v28;
  v33(v23, v28);
  v36 = v56;
  v37 = v67;
  (*(v57 + 32))(v56, v69, v67);
  (v61)(v37, v8);
  v38 = v37;
  v39 = v59(v37, v8);
  if (v39 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v40 = v35;
  v68 = v34;
  v41 = v38;
  v42 = v54;
  v43 = v55;
  v44 = v8;
  v45 = v36;
  v62 = v33;
  if (v39)
  {
    v46 = 0;
    v59 = *(v44 + 56);
    v60 = v44 + 56;
    v58 = v44 + 64;
    v61 = v39;
    do
    {
      v69 = v46 + 1;
      v47 = v59;
      (v59)(v46, v41, v44);
      v47(v46, v41, v44);
      v48 = v65;
      (*(*(*(*(v63 + 16) + 8) + 8) + 24))(v42, v43, v40);
      v49 = v43;
      v50 = v43;
      v51 = v41;
      v52 = v62;
      v62(v49, v40);
      v52(v42, v40);
      v41 = v51;
      v43 = v50;
      (*(v44 + 64))(v48, v46, v41, v44);
      v46 = v69;
    }

    while (v61 != v69);
  }

  return (*(v57 + 8))(v45, v41);
}

{
  v61 = a5;
  v54 = a1;
  v63 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v53 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v52 = &v52 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v62 = &v52 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v55 = *(a3 - 8);
  v18 = MEMORY[0x1EEE9AC00](&v52 - v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v66 = &v52 - v22;
  v23 = *(v10 + 16);
  v24 = v21;
  v26 = v25;
  v56 = v10 + 16;
  v27 = v23;
  (v23)(v21, a2);
  v59 = *(v8 + 48);
  v60 = (v8 + 48);
  (v59)(a3, v8);
  v57 = *(v8 + 40);
  v58 = (v8 + 40);
  v28 = v57(a3, v8);
  if (v28 < 0)
  {
    goto LABEL_10;
  }

  v64 = a3;
  v65 = v10;
  v29 = v26;
  v30 = v62;
  v67 = v20;
  if (v28)
  {
    v31 = 0;
    do
    {
      v32 = v28;
      v33 = v29;
      v27(v30, v24, v29);
      (*(v8 + 64))(v30, v31, v64, v8);
      v28 = v32;
      v29 = v33;
      ++v31;
    }

    while (v32 != v31);
  }

  v34 = *(v65 + 8);
  v35 = v24;
  v36 = v65 + 8;
  v37 = v29;
  v34(v35, v29);
  v38 = v64;
  (*(v55 + 32))(v66, v67, v64);
  (v59)(v38, v8);
  v39 = v57(v38, v8);
  if (v39 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v40 = v53;
  v65 = v36;
  v41 = v38;
  v42 = v52;
  v60 = v34;
  if (v39)
  {
    v43 = 0;
    v44 = *(v8 + 56);
    v57 = (v8 + 56);
    v58 = v44;
    v56 = v8 + 64;
    v59 = v39;
    do
    {
      v67 = v43 + 1;
      v45 = v58;
      v58(v43, v41, v8);
      v45(v43, v41, v8);
      v46 = v62;
      (*(*(*(*(v61 + 16) + 8) + 8) + 24))(v42, v40, v37);
      v47 = v40;
      v48 = v40;
      v49 = v41;
      v50 = v60;
      v60(v47, v37);
      v50(v42, v37);
      v41 = v49;
      v40 = v48;
      (*(v8 + 64))(v46, v43, v41, v8);
      v43 = v67;
    }

    while (v59 != v67);
  }

  return (*(v55 + 8))(v66, v41);
}

uint64_t static SIMD<>.* infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v62 = a5;
  v63 = a2;
  v65 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v54 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v53 = &v53 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v64 = &v53 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v56 = *(a3 - 8);
  v18 = MEMORY[0x1EEE9AC00](&v53 - v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v55 = &v53 - v22;
  v23 = v21;
  v25 = v24;
  v26 = *(v10 + 16);
  v26(v21, a1);
  v60 = *(v8 + 48);
  v61 = (v8 + 48);
  (v60)(a3, v8);
  v58 = *(v8 + 40);
  v59 = v8 + 40;
  v27 = v58(a3, v8);
  if (v27 < 0)
  {
    goto LABEL_10;
  }

  v66 = a3;
  v67 = v10;
  v28 = v25;
  v29 = v64;
  v68 = v20;
  if (v27)
  {
    v30 = 0;
    do
    {
      v31 = v27;
      v32 = v28;
      (v26)(v29, v23, v28);
      (*(v8 + 64))(v29, v30, v66, v8);
      v27 = v31;
      v28 = v32;
      ++v30;
    }

    while (v31 != v30);
  }

  v33 = *(v67 + 8);
  v34 = v67 + 8;
  v35 = v28;
  v33(v23, v28);
  v36 = v55;
  v37 = v66;
  (*(v56 + 32))(v55, v68, v66);
  (v60)(v37, v8);
  v38 = v37;
  v39 = v58(v37, v8);
  if (v39 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v40 = v35;
  v67 = v34;
  v41 = v38;
  v42 = v53;
  v43 = v54;
  v44 = v36;
  v61 = v33;
  if (v39)
  {
    v45 = 0;
    v58 = *(v8 + 56);
    v59 = v8 + 56;
    v57 = v8 + 64;
    v60 = v39;
    do
    {
      v68 = v45 + 1;
      v46 = v58;
      (v58)(v45, v41, v8);
      v46(v45, v41, v8);
      v47 = v64;
      (*(*(*(v62 + 16) + 8) + 64))(v42, v43, v40);
      v48 = v43;
      v49 = v43;
      v50 = v41;
      v51 = v61;
      v61(v48, v40);
      v51(v42, v40);
      v41 = v50;
      v43 = v49;
      (*(v8 + 64))(v47, v45, v41, v8);
      v45 = v68;
    }

    while (v60 != v68);
  }

  return (*(v56 + 8))(v44, v41);
}

{
  v62 = a5;
  v55 = a1;
  v64 = a6;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v54 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v53 = &v53 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v63 = &v53 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v56 = *(a3 - 8);
  v18 = MEMORY[0x1EEE9AC00](&v53 - v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v67 = &v53 - v22;
  v23 = v21;
  v25 = v24;
  v26 = *(v10 + 16);
  v26(v21, a2);
  v60 = *(v8 + 48);
  v61 = (v8 + 48);
  (v60)(a3, v8);
  v58 = *(v8 + 40);
  v59 = v8 + 40;
  v27 = v58(a3, v8);
  if (v27 < 0)
  {
    goto LABEL_10;
  }

  v65 = a3;
  v66 = v10;
  v28 = v25;
  v29 = v63;
  v68 = v20;
  if (v27)
  {
    v30 = 0;
    do
    {
      v31 = v27;
      v32 = v28;
      (v26)(v29, v23, v28);
      (*(v8 + 64))(v29, v30, v65, v8);
      v27 = v31;
      v28 = v32;
      ++v30;
    }

    while (v31 != v30);
  }

  v33 = *(v66 + 8);
  v34 = v66 + 8;
  v35 = v28;
  v33(v23, v28);
  v36 = v65;
  (*(v56 + 32))(v67, v68, v65);
  (v60)(v36, v8);
  v37 = v36;
  v38 = v58(v36, v8);
  if (v38 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v39 = v35;
  v41 = v54;
  v40 = v55;
  v66 = v34;
  v42 = v37;
  v43 = v53;
  v61 = v33;
  if (v38)
  {
    v44 = 0;
    v58 = *(v8 + 56);
    v59 = v8 + 56;
    v57 = v8 + 64;
    v60 = v38;
    do
    {
      v68 = v44 + 1;
      v45 = v40;
      v46 = v58;
      (v58)(v44, v42, v8);
      v46(v44, v42, v8);
      v47 = v63;
      (*(*(*(v62 + 16) + 8) + 64))(v43, v41, v39);
      v48 = v41;
      v49 = v41;
      v50 = v42;
      v51 = v61;
      v61(v48, v39);
      v51(v43, v39);
      v42 = v50;
      v41 = v49;
      (*(v8 + 64))(v47, v44, v42, v8);
      v40 = v45;
      v44 = v68;
    }

    while (v60 != v68);
  }

  return (*(v56 + 8))(v67, v42);
}

uint64_t static SIMD<>.+= infix(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = a2;
  v48 = a5;
  v5 = a3;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v37 = v8;
  v50 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v35 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v35 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v40 = v21;
  v23 = &v35 - v22;
  v38 = *(v21 + 32);
  v39 = v21 + 32;
  v38();
  (*(v7 + 48))(v5, v7);
  v24 = (*(v7 + 40))(v5, v7);
  if (v24 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v36 = a1;
  v25 = v37;
  v46 = v17;
  v49 = v20;
  v26 = v23;
  if (v24)
  {
    v27 = 0;
    v28 = *(v7 + 56);
    v42 = (v50 + 8);
    v43 = v28;
    v44 = v7 + 56;
    v45 = v24;
    v41 = v7 + 64;
    do
    {
      v50 = v27 + 1;
      v29 = v5;
      v30 = v5;
      v31 = v43;
      v43(v27, v30, v7);
      v31(v27, v29, v7);
      v32 = v46;
      (*(*(*(*(v48 + 16) + 8) + 8) + 24))(v14, v11, v25);
      v33 = *v42;
      (*v42)(v11, v25);
      v33(v14, v25);
      (*(v7 + 64))(v32, v27, v29, v7);
      v5 = v29;
      v27 = v50;
    }

    while (v45 != v50);
  }

  (*(v40 + 8))(v26, v5);
  return (v38)(v36, v49, v5);
}

uint64_t static SIMD<>.-= infix(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = a2;
  v48 = a5;
  v5 = a3;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v37 = v8;
  v50 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v35 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v35 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v40 = v21;
  v23 = &v35 - v22;
  v38 = *(v21 + 32);
  v39 = v21 + 32;
  v38();
  (*(v7 + 48))(v5, v7);
  v24 = (*(v7 + 40))(v5, v7);
  if (v24 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v36 = a1;
  v25 = v37;
  v46 = v17;
  v49 = v20;
  v26 = v23;
  if (v24)
  {
    v27 = 0;
    v28 = *(v7 + 56);
    v42 = (v50 + 8);
    v43 = v28;
    v44 = v7 + 56;
    v45 = v24;
    v41 = v7 + 64;
    do
    {
      v50 = v27 + 1;
      v29 = v5;
      v30 = v5;
      v31 = v43;
      v43(v27, v30, v7);
      v31(v27, v29, v7);
      v32 = v46;
      (*(*(*(*(v48 + 16) + 8) + 8) + 40))(v14, v11, v25);
      v33 = *v42;
      (*v42)(v11, v25);
      v33(v14, v25);
      (*(v7 + 64))(v32, v27, v29, v7);
      v5 = v29;
      v27 = v50;
    }

    while (v45 != v50);
  }

  (*(v40 + 8))(v26, v5);
  return (v38)(v36, v49, v5);
}

uint64_t static SIMD<>.*= infix(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = a2;
  v48 = a5;
  v5 = a3;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v37 = v8;
  v50 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v35 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v35 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v40 = v21;
  v23 = &v35 - v22;
  v38 = *(v21 + 32);
  v39 = v21 + 32;
  v38();
  (*(v7 + 48))(v5, v7);
  v24 = (*(v7 + 40))(v5, v7);
  if (v24 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v36 = a1;
  v25 = v37;
  v46 = v17;
  v49 = v20;
  v26 = v23;
  if (v24)
  {
    v27 = 0;
    v28 = *(v7 + 56);
    v42 = (v50 + 8);
    v43 = v28;
    v44 = v7 + 56;
    v45 = v24;
    v41 = v7 + 64;
    do
    {
      v50 = v27 + 1;
      v29 = v5;
      v30 = v5;
      v31 = v43;
      v43(v27, v30, v7);
      v31(v27, v29, v7);
      v32 = v46;
      (*(*(*(v48 + 16) + 8) + 64))(v14, v11, v25);
      v33 = *v42;
      (*v42)(v11, v25);
      v33(v14, v25);
      (*(v7 + 64))(v32, v27, v29, v7);
      v5 = v29;
      v27 = v50;
    }

    while (v45 != v50);
  }

  (*(v40 + 8))(v26, v5);
  return (v38)(v36, v49, v5);
}

uint64_t static SIMD<>.+= infix(_:_:)(uint64_t a1, void (*a2)(char *, uint64_t), unint64_t a3, uint64_t a4, uint64_t a5)
{
  v71 = a5;
  v75 = a2;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v62 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v61 = &v58 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v73 = &v58 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v58 - v18;
  v20 = *(a3 - 8);
  v21 = MEMORY[0x1EEE9AC00](v17);
  v77 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = (&v58 - v24);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v76 = &v58 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v28 = *(v20 + 32);
  v72 = &v58 - v29;
  v30 = a1;
  v64 = v28;
  v65 = v20 + 32;
  v28();
  v78 = v10;
  v31 = *(v10 + 16);
  v63 = v19;
  v66 = v9;
  v32 = v31;
  v31(v19, v75, v9);
  v69 = *(v7 + 48);
  v70 = v7 + 48;
  v69(a3, v7);
  v67 = *(v7 + 40);
  v68 = (v7 + 40);
  v33 = v67(a3, v7);
  if (v33 < 0)
  {
    goto LABEL_10;
  }

  v59 = v20;
  v60 = v30;
  v34 = v66;
  v35 = v7;
  v36 = v73;
  v74 = a3;
  v75 = v25;
  v37 = v63;
  if (v33)
  {
    v38 = 0;
    do
    {
      v39 = v33;
      v40 = v37;
      v41 = v34;
      v32(v36, v37, v34);
      (*(v35 + 64))(v36, v38, v74, v35);
      v37 = v40;
      v34 = v41;
      v33 = v39;
      ++v38;
    }

    while (v39 != v38);
  }

  v42 = v74;
  v43 = v78 + 8;
  v44 = *(v78 + 8);
  v44(v37, v34);
  (v64)(v76, v75, v42);
  v69(v42, v35);
  v45 = v42;
  v46 = v67(v42, v35);
  if (v46 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v47 = v35;
  v78 = v43;
  v49 = v61;
  v48 = v62;
  v50 = v66;
  v75 = v44;
  if (v46)
  {
    v51 = 0;
    v68 = *(v47 + 56);
    v69 = (v47 + 56);
    v67 = (v47 + 64);
    v70 = v46;
    do
    {
      v52 = v68;
      v68(v51, v45, v47);
      v52(v51, v45, v47);
      v53 = v73;
      (*(*(*(*(v71 + 16) + 8) + 8) + 24))(v49, v48, v50);
      v54 = v45;
      v55 = v75;
      v75(v48, v50);
      v55(v49, v50);
      v45 = v54;
      (*(v47 + 64))(v53, v51++, v54, v47);
    }

    while (v70 != v51);
  }

  v56 = *(v59 + 8);
  v56(v76, v45);
  v56(v72, v45);
  return (v64)(v60, v77, v45);
}

uint64_t static SIMD<>.-= infix(_:_:)(uint64_t a1, void (*a2)(char *, uint64_t), unint64_t a3, uint64_t a4, uint64_t a5)
{
  v71 = a5;
  v75 = a2;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v62 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v61 = &v58 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v73 = &v58 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v58 - v18;
  v20 = *(a3 - 8);
  v21 = MEMORY[0x1EEE9AC00](v17);
  v77 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = (&v58 - v24);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v76 = &v58 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v28 = *(v20 + 32);
  v72 = &v58 - v29;
  v30 = a1;
  v64 = v28;
  v65 = v20 + 32;
  v28();
  v78 = v10;
  v31 = *(v10 + 16);
  v63 = v19;
  v66 = v9;
  v32 = v31;
  v31(v19, v75, v9);
  v69 = *(v7 + 48);
  v70 = v7 + 48;
  v69(a3, v7);
  v67 = *(v7 + 40);
  v68 = (v7 + 40);
  v33 = v67(a3, v7);
  if (v33 < 0)
  {
    goto LABEL_10;
  }

  v59 = v20;
  v60 = v30;
  v34 = v66;
  v35 = v7;
  v36 = v73;
  v74 = a3;
  v75 = v25;
  v37 = v63;
  if (v33)
  {
    v38 = 0;
    do
    {
      v39 = v33;
      v40 = v37;
      v41 = v34;
      v32(v36, v37, v34);
      (*(v35 + 64))(v36, v38, v74, v35);
      v37 = v40;
      v34 = v41;
      v33 = v39;
      ++v38;
    }

    while (v39 != v38);
  }

  v42 = v74;
  v43 = v78 + 8;
  v44 = *(v78 + 8);
  v44(v37, v34);
  (v64)(v76, v75, v42);
  v69(v42, v35);
  v45 = v42;
  v46 = v67(v42, v35);
  if (v46 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v47 = v35;
  v78 = v43;
  v49 = v61;
  v48 = v62;
  v50 = v66;
  v75 = v44;
  if (v46)
  {
    v51 = 0;
    v68 = *(v47 + 56);
    v69 = (v47 + 56);
    v67 = (v47 + 64);
    v70 = v46;
    do
    {
      v52 = v68;
      v68(v51, v45, v47);
      v52(v51, v45, v47);
      v53 = v73;
      (*(*(*(*(v71 + 16) + 8) + 8) + 40))(v49, v48, v50);
      v54 = v45;
      v55 = v75;
      v75(v48, v50);
      v55(v49, v50);
      v45 = v54;
      (*(v47 + 64))(v53, v51++, v54, v47);
    }

    while (v70 != v51);
  }

  v56 = *(v59 + 8);
  v56(v76, v45);
  v56(v72, v45);
  return (v64)(v60, v77, v45);
}

uint64_t static SIMD<>.*= infix(_:_:)(uint64_t a1, void (*a2)(char *, uint64_t), unint64_t a3, uint64_t a4, uint64_t a5)
{
  v76 = a5;
  v80 = a2;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v65 = &v61 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v78 = &v61 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v61 - v19;
  v21 = *(a3 - 8);
  v22 = MEMORY[0x1EEE9AC00](v18);
  v82 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = (&v61 - v25);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v81 = &v61 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v29 = *(v21 + 32);
  v77 = &v61 - v30;
  v31 = a1;
  v68 = v29;
  v69 = v21 + 32;
  v29();
  v83 = v10;
  v32 = *(v10 + 16);
  v66 = v10 + 16;
  v67 = v20;
  v71 = v9;
  v33 = v32;
  v32(v20, v80, v9);
  v74 = *(v7 + 48);
  v75 = v7 + 48;
  v74(a3, v7);
  v34 = *(v7 + 40);
  v70 = v7;
  v72 = v34;
  v73 = (v7 + 40);
  v35 = v34(a3, v7);
  if (v35 < 0)
  {
    goto LABEL_10;
  }

  v36 = v35;
  v62 = v21;
  v63 = v13;
  v64 = v31;
  v38 = v70;
  v37 = v71;
  v39 = v78;
  v79 = a3;
  v80 = v26;
  v40 = v67;
  if (v35)
  {
    v41 = 0;
    do
    {
      v42 = v40;
      v43 = v37;
      v33(v39, v40, v37);
      (*(v38 + 64))(v39, v41, v79, v38);
      v40 = v42;
      v37 = v43;
      ++v41;
    }

    while (v36 != v41);
  }

  v44 = v79;
  v45 = v83 + 8;
  v46 = *(v83 + 8);
  v46(v40, v37);
  (v68)(v81, v80, v44);
  v74(v44, v38);
  v47 = v38;
  v48 = v44;
  v49 = v72(v44, v47);
  if (v49 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v83 = v45;
  v50 = v63;
  v51 = v65;
  v53 = v70;
  v52 = v71;
  v80 = v46;
  if (v49)
  {
    v54 = 0;
    v73 = *(v70 + 56);
    v74 = (v70 + 56);
    v72 = (v70 + 64);
    v75 = v49;
    do
    {
      v55 = v73;
      v73(v54, v48, v53);
      v55(v54, v48, v53);
      v56 = v78;
      (*(*(*(v76 + 16) + 8) + 64))(v51, v50, v52);
      v57 = v48;
      v58 = v80;
      v80(v50, v52);
      v58(v51, v52);
      v48 = v57;
      (*(v53 + 64))(v56, v54++, v57, v53);
    }

    while (v75 != v54);
  }

  v59 = *(v62 + 8);
  v59(v81, v48);
  v59(v77, v48);
  return (v68)(v64, v82, v48);
}

uint64_t static SIMD<>./= infix(_:_:)(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a5;
  v8 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v62 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v61 = &v59 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v74 = &v59 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v59 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v79 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = (&v59 - v24);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v78 = &v59 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v60 = v28;
  v29 = *(v28 + 32);
  v73 = &v59 - v30;
  v31 = a1;
  v65 = v29;
  v66 = v28 + 32;
  v29();
  v32 = *(v11 + 16);
  v71 = v20;
  v63 = v32;
  v64 = v11 + 16;
  v32(v20, a2, v10);
  v69 = *(v8 + 48);
  v70 = v8 + 48;
  v69(a3, v8);
  v33 = v25;
  v67 = *(v8 + 40);
  v68 = v8 + 40;
  v34 = v67(a3, v8);
  if (v34 < 0)
  {
    goto LABEL_10;
  }

  v35 = v34;
  v76 = a3;
  v77 = v11;
  v59 = v31;
  v36 = v74;
  v37 = v71;
  v75 = v33;
  v38 = v63;
  if (v34)
  {
    v39 = 0;
    do
    {
      v38(v36, v37, v10);
      (*(v8 + 64))(v36, v39++, v76, v8);
    }

    while (v35 != v39);
  }

  v40 = *(v77 + 8);
  v41 = v77 + 8;
  v40(v37, v10);
  v42 = v76;
  (v65)(v78, v75, v76);
  v69(v42, v8);
  v43 = v42;
  v44 = v67(v42, v8);
  if (v44 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v45 = v10;
  v46 = v8;
  v47 = v43;
  v77 = v41;
  v48 = v61;
  v49 = v62;
  v75 = v40;
  if (v44)
  {
    v50 = v46;
    v51 = 0;
    v52 = *(v46 + 56);
    v68 = v72 + 192;
    v69 = v52;
    v70 = v46 + 56;
    v71 = v44;
    v67 = (v46 + 64);
    do
    {
      v53 = v69;
      (v69)(v51, v47, v50);
      v53(v51, v47, v50);
      v54 = v74;
      (*(v72 + 192))(v48, v49, v45);
      v55 = v47;
      v56 = v75;
      v75(v49, v45);
      v56(v48, v45);
      v47 = v55;
      (*(v50 + 64))(v54, v51++, v55, v50);
    }

    while (v71 != v51);
  }

  v57 = *(v60 + 8);
  v57(v78, v47);
  v57(v73, v47);
  return (v65)(v59, v79, v47);
}

uint64_t SIMD<>.addProduct(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = a5;
  v59 = a1;
  v60 = a2;
  v7 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v7, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v9 = v8;
  v64 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v46 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v50 = &v46 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v47 = &v46 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v51 = v23;
  v25 = &v46 - v24;
  v48 = *(v23 + 32);
  v49 = v23 + 32;
  v48();
  (*(v7 + 48))(a3, v7);
  v26 = v22;
  v27 = (*(v7 + 40))(a3, v7);
  if (v27 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v46 = v5;
  v58 = v12;
  v61 = v7;
  v28 = a3;
  v29 = v50;
  v30 = v47;
  v63 = v26;
  v31 = v25;
  if (v27)
  {
    v32 = v15;
    v33 = 0;
    v34 = *(v61 + 56);
    v54 = v62 + 256;
    v55 = v34;
    v56 = v61 + 56;
    v57 = v27;
    v52 = v61 + 64;
    v53 = (v64 + 8);
    v65 = v9;
    v66 = v31;
    do
    {
      v64 = v33 + 1;
      v35 = v61;
      v36 = v55;
      v55(v33, v28, v61);
      v36(v33, v28, v35);
      v37 = v30;
      v38 = v28;
      v39 = v29;
      v40 = v32;
      v41 = v58;
      v36(v33, v38, v35);
      (*(v62 + 256))(v40, v41, v65);
      v42 = *v53;
      v43 = v41;
      v32 = v40;
      v29 = v39;
      v28 = v38;
      v30 = v37;
      v44 = v65;
      (*v53)(v43, v65);
      v42(v32, v44);
      v42(v29, v44);
      (*(v35 + 64))(v30, v33, v28, v35);
      v31 = v66;
      v33 = v64;
    }

    while (v57 != v64);
  }

  (*(v51 + 8))(v31, v28);
  return (v48)(v46, v63, v28);
}

{
  v6 = v5;
  v74 = a2;
  v75 = a5;
  v9 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v9, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v73 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v64 = &v60 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v63 = &v60 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v77 = &v60 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v60 - v22;
  v24 = *(a3 - 8);
  v25 = MEMORY[0x1EEE9AC00](v21);
  v80 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v60 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v79 = &v60 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v32 = *(v24 + 32);
  v76 = &v60 - v33;
  v66 = v32;
  v67 = v24 + 32;
  v32();
  v81 = v12;
  v34 = *(v12 + 16);
  v65 = v23;
  v70 = v34;
  (v34)(v23, a1, v11);
  v71 = *(v9 + 48);
  v72 = v9 + 48;
  v71(a3, v9);
  v68 = *(v9 + 40);
  v69 = v9 + 40;
  v35 = v68(a3, v9);
  if (v35 < 0)
  {
    goto LABEL_10;
  }

  v61 = v24;
  v62 = v6;
  v82 = a3;
  v36 = v77;
  v37 = v65;
  v78 = v29;
  v38 = v70;
  if (v35)
  {
    v39 = 0;
    do
    {
      v40 = v35;
      v38(v36, v37, v11);
      (*(v9 + 64))(v36, v39, v82, v9);
      v35 = v40;
      ++v39;
    }

    while (v40 != v39);
  }

  v41 = v81 + 8;
  v42 = *(v81 + 8);
  v43 = v11;
  v42(v37, v11);
  v44 = v82;
  (v66)(v79, v78, v82);
  v71(v44, v9);
  v45 = v68(v44, v9);
  if (v45 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v81 = v41;
  v46 = v9;
  v48 = v63;
  v47 = v64;
  if (v45)
  {
    v49 = 0;
    v71 = *(v46 + 56);
    v72 = v46 + 56;
    v68 = (v46 + 64);
    v69 = v75 + 256;
    v78 = v45;
    v70 = v42;
    do
    {
      v82 = v49 + 1;
      v50 = v43;
      v51 = v71;
      (v71)(v49, v44, v46);
      v51(v49, v44, v46);
      v52 = v48;
      v53 = v47;
      v54 = v73;
      v51(v49, v44, v46);
      v43 = v50;
      v55 = v77;
      (*(v75 + 256))(v53, v54, v50);
      v56 = v54;
      v47 = v53;
      v48 = v52;
      v57 = v70;
      v70(v56, v50);
      v57(v47, v50);
      v57(v48, v50);
      (*(v46 + 64))(v55, v49, v44, v46);
      v49 = v82;
    }

    while (v78 != v82);
  }

  v58 = *(v61 + 8);
  v58(v79, v44);
  v58(v76, v44);
  return (v66)(v62, v80, v44);
}

{
  v6 = v5;
  v74 = a1;
  v75 = a5;
  v9 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v9, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v73 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v64 = &v60 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v63 = &v60 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v77 = &v60 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v60 - v22;
  v24 = *(a3 - 8);
  v25 = MEMORY[0x1EEE9AC00](v21);
  v80 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v60 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v79 = &v60 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v32 = *(v24 + 32);
  v76 = &v60 - v33;
  v66 = v32;
  v67 = v24 + 32;
  v32();
  v81 = v12;
  v34 = *(v12 + 16);
  v65 = v23;
  v70 = v34;
  (v34)(v23, a2, v11);
  v71 = *(v9 + 48);
  v72 = v9 + 48;
  v71(a3, v9);
  v68 = *(v9 + 40);
  v69 = v9 + 40;
  v35 = v68(a3, v9);
  if (v35 < 0)
  {
    goto LABEL_10;
  }

  v61 = v24;
  v62 = v6;
  v82 = a3;
  v36 = v77;
  v37 = v65;
  v78 = v29;
  v38 = v70;
  if (v35)
  {
    v39 = 0;
    do
    {
      v40 = v35;
      v38(v36, v37, v11);
      (*(v9 + 64))(v36, v39, v82, v9);
      v35 = v40;
      ++v39;
    }

    while (v40 != v39);
  }

  v41 = v81 + 8;
  v42 = *(v81 + 8);
  v43 = v11;
  v42(v37, v11);
  v44 = v82;
  (v66)(v79, v78, v82);
  v71(v44, v9);
  v45 = v68(v44, v9);
  if (v45 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v81 = v41;
  v46 = v9;
  v48 = v63;
  v47 = v64;
  if (v45)
  {
    v49 = 0;
    v71 = *(v46 + 56);
    v72 = v46 + 56;
    v68 = (v46 + 64);
    v69 = v75 + 256;
    v78 = v45;
    v70 = v42;
    do
    {
      v82 = v49 + 1;
      v50 = v43;
      v51 = v71;
      (v71)(v49, v44, v46);
      v51(v49, v44, v46);
      v52 = v48;
      v53 = v47;
      v54 = v73;
      v51(v49, v44, v46);
      v43 = v50;
      v55 = v77;
      (*(v75 + 256))(v53, v54, v50);
      v56 = v54;
      v47 = v53;
      v48 = v52;
      v57 = v70;
      v70(v56, v50);
      v57(v47, v50);
      v57(v48, v50);
      (*(v46 + 64))(v55, v49, v44, v46);
      v49 = v82;
    }

    while (v78 != v82);
  }

  v58 = *(v61 + 8);
  v58(v79, v44);
  v58(v76, v44);
  return (v66)(v62, v80, v44);
}
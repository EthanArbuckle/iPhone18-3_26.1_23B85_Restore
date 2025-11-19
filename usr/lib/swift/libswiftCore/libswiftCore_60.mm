uint64_t SIMD<>.formSquareRoot()(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v5 = *(a2 + 48);
  swift_getAssociatedTypeWitness(0, v5, a1, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v7 = v6;
  v40 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v31 - v12;
  v14 = *(a1 - 8);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v31 - v18;
  v34 = *(v14 + 32);
  v35 = v14 + 32;
  v34();
  (*(v5 + 48))(a1, v5);
  v20 = (*(v5 + 40))(a1, v5);
  if (v20 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v32 = v14;
  v33 = v3;
  v21 = a1;
  v41 = v7;
  v42 = v13;
  v44 = v17;
  if (v20)
  {
    v22 = v10;
    v23 = v5;
    v24 = 0;
    v25 = *(v5 + 56);
    v26 = v42;
    v38 = v43 + 240;
    v39 = v25;
    v27 = (v40 + 8);
    v40 = v5 + 56;
    v36 = v5 + 64;
    v37 = v27;
    do
    {
      v28 = v20;
      v39(v24, v21, v23);
      v29 = v41;
      (*(v43 + 240))(v41);
      (*v37)(v22, v29);
      (*(v23 + 64))(v26, v24, v21, v23);
      v20 = v28;
      ++v24;
    }

    while (v28 != v24);
  }

  (*(v32 + 8))(v19, v21);
  return (v34)(v33, v44, v21);
}

uint64_t SIMD<>.round(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a1;
  v47 = a4;
  v6 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v6, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v45 = v7;
  v43 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v35 - v12;
  v14 = *(a2 - 8);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v35 - v18;
  v37 = *(v14 + 32);
  v38 = v14 + 32;
  v37();
  (*(v6 + 48))(a2, v6);
  v20 = (*(v6 + 40))(a2, v6);
  if (v20 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v35 = v14;
  v36 = v4;
  v21 = a2;
  v44 = v13;
  v48 = v17;
  v22 = v19;
  if (v20)
  {
    v23 = v10;
    v24 = v6;
    v25 = 0;
    v26 = *(v6 + 56);
    v41 = v47 + 304;
    v42 = v26;
    v27 = v44;
    v28 = (v43 + 8);
    v43 = v6 + 56;
    v39 = v6 + 64;
    v40 = v28;
    do
    {
      v29 = v20;
      v30 = v21;
      v42(v25, v21, v24);
      v31 = v45;
      (*(v47 + 304))(v46, v45);
      (*v40)(v23, v31);
      (*(v24 + 64))(v27, v25, v30, v24);
      v21 = v30;
      v20 = v29;
      ++v25;
    }

    while (v29 != v25);
  }

  v32 = v22;
  v33 = v21;
  (*(v35 + 8))(v32, v21);
  return (v37)(v36, v48, v33);
}

uint64_t static SIMDMask..& infix(_:_:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v99 = a6;
  v9 = a3;
  v91 = a2;
  LODWORD(v97) = a1;
  v85 = a7;
  v93 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v105 = &v79 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v104 = &v79 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v79 - v17;
  v102 = *(v19 + 8);
  v20 = *(*(v102 + 24) + 16);
  v22 = *(v21 + 48);
  swift_getAssociatedTypeWitness(255, v22, v23, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v25 = v24;
  v100 = v20;
  swift_getAssociatedTypeWitness(0, v20, v24, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v96 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v95 = &v79 - v27;
  v28 = swift_checkMetadataState(0, v25);
  v81 = *(v28 - 1);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v79 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v101 = &v79 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v92 = &v79 - v37;
  v106[0] = v9;
  v106[1] = a4;
  v106[2] = a5;
  v106[3] = v99;
  v38 = type metadata accessor for SIMDMask(0, v106);
  v89 = *(v38 - 8);
  v90 = v38;
  v39 = MEMORY[0x1EEE9AC00](v38);
  v41 = &v79 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v88 = &v79 - v42;
  v43 = *(v22 + 48);
  v87 = v22 + 48;
  v86 = v43;
  v43(v9, v22);
  v98 = *(v22 + 40);
  v99 = v22 + 40;
  v44 = v98(v9, v22);
  if (v44 < 0)
  {
    goto LABEL_16;
  }

  v45 = v44;
  v83 = v34;
  v94 = v28;
  v82 = v31;
  v84 = v18;
  v103 = v12;
  if (v44)
  {
    v46 = 0;
    v47 = v22 + 64;
    v48 = v92;
    while (1)
    {
      v49 = v98(v9, v22);
      if (v49 < 0)
      {
        break;
      }

      if (v46 >= v49)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v50 = v96;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v100, v94, v96, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v52 = *(AssociatedConformanceWitness + 8);
      v80 = v47;
      v53 = v95;
      if (v97)
      {
        v54 = &unk_18071E0B0;
        v55 = 257;
      }

      else
      {
        v54 = &qword_18071E0A8;
        v55 = 256;
      }

      v52(v54, v55, v50, AssociatedConformanceWitness);
      (*(v100 + 3))(v53);
      v47 = v80;
      (*(v22 + 64))(v48, v46++, v9, v22);
      if (v45 == v46)
      {
        goto LABEL_10;
      }
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_10:
  v57 = v89;
  v56 = v90;
  v58 = v88;
  (*(v89 + 32))(v88, v41, v90);
  v59 = *(v93 + 16);
  v59(v104, v58, v9);
  v59(v105, v91, v9);
  v86(v9, v22);
  v60 = v98(v9, v22);
  if (v60 < 0)
  {
    goto LABEL_16;
  }

  v61 = v60;
  (*(v57 + 8))(v58, v56);
  v62 = v82;
  v63 = v94;
  v64 = v83;
  if (v61)
  {
    v65 = 0;
    v66 = *(v22 + 56);
    v97 = v102 + 192;
    v98 = v66;
    v99 = v22 + 56;
    v100 = v61;
    v95 = (v22 + 64);
    v96 = (v81 + 8);
    do
    {
      v67 = v64;
      v68 = v62;
      v69 = v98;
      (v98)(v65, v9, v22);
      v69(v65, v9, v22);
      v62 = v68;
      v64 = v67;
      v70 = v9;
      v71 = v101;
      (*(v102 + 192))(v67, v62, v63);
      v72 = *v96;
      (*v96)(v62, v63);
      v72(v67, v63);
      v73 = v71;
      v9 = v70;
      (*(v22 + 64))(v73, v65, v70, v22);
      v65 = (v65 + 1);
    }

    while (v100 != v65);
  }

  v74 = v93;
  v75 = *(v93 + 8);
  v75(v105, v9);
  v75(v104, v9);
  v76 = *(v74 + 32);
  v77 = v84;
  v76(v84, v103, v9);
  return (v76)(v85, v77, v9);
}

uint64_t static SIMDMask..^ infix(_:_:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v99 = a6;
  v9 = a3;
  v91 = a2;
  LODWORD(v97) = a1;
  v85 = a7;
  v93 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v105 = &v79 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v104 = &v79 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v79 - v17;
  v102 = *(v19 + 8);
  v20 = *(*(v102 + 24) + 16);
  v22 = *(v21 + 48);
  swift_getAssociatedTypeWitness(255, v22, v23, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v25 = v24;
  v100 = v20;
  swift_getAssociatedTypeWitness(0, v20, v24, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v96 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v95 = &v79 - v27;
  v28 = swift_checkMetadataState(0, v25);
  v81 = *(v28 - 1);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v79 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v101 = &v79 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v92 = &v79 - v37;
  v106[0] = v9;
  v106[1] = a4;
  v106[2] = a5;
  v106[3] = v99;
  v38 = type metadata accessor for SIMDMask(0, v106);
  v89 = *(v38 - 8);
  v90 = v38;
  v39 = MEMORY[0x1EEE9AC00](v38);
  v41 = &v79 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v88 = &v79 - v42;
  v43 = *(v22 + 48);
  v87 = v22 + 48;
  v86 = v43;
  v43(v9, v22);
  v98 = *(v22 + 40);
  v99 = v22 + 40;
  v44 = v98(v9, v22);
  if (v44 < 0)
  {
    goto LABEL_16;
  }

  v45 = v44;
  v83 = v34;
  v94 = v28;
  v82 = v31;
  v84 = v18;
  v103 = v12;
  if (v44)
  {
    v46 = 0;
    v47 = v22 + 64;
    v48 = v92;
    while (1)
    {
      v49 = v98(v9, v22);
      if (v49 < 0)
      {
        break;
      }

      if (v46 >= v49)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v50 = v96;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v100, v94, v96, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v52 = *(AssociatedConformanceWitness + 8);
      v80 = v47;
      v53 = v95;
      if (v97)
      {
        v54 = &unk_18071E0B0;
        v55 = 257;
      }

      else
      {
        v54 = &qword_18071E0A8;
        v55 = 256;
      }

      v52(v54, v55, v50, AssociatedConformanceWitness);
      (*(v100 + 3))(v53);
      v47 = v80;
      (*(v22 + 64))(v48, v46++, v9, v22);
      if (v45 == v46)
      {
        goto LABEL_10;
      }
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_10:
  v57 = v89;
  v56 = v90;
  v58 = v88;
  (*(v89 + 32))(v88, v41, v90);
  v59 = *(v93 + 16);
  v59(v104, v58, v9);
  v59(v105, v91, v9);
  v86(v9, v22);
  v60 = v98(v9, v22);
  if (v60 < 0)
  {
    goto LABEL_16;
  }

  v61 = v60;
  (*(v57 + 8))(v58, v56);
  v62 = v82;
  v63 = v94;
  v64 = v83;
  if (v61)
  {
    v65 = 0;
    v66 = *(v22 + 56);
    v97 = v102 + 224;
    v98 = v66;
    v99 = v22 + 56;
    v100 = v61;
    v95 = (v22 + 64);
    v96 = (v81 + 8);
    do
    {
      v67 = v64;
      v68 = v62;
      v69 = v98;
      (v98)(v65, v9, v22);
      v69(v65, v9, v22);
      v62 = v68;
      v64 = v67;
      v70 = v9;
      v71 = v101;
      (*(v102 + 224))(v67, v62, v63);
      v72 = *v96;
      (*v96)(v62, v63);
      v72(v67, v63);
      v73 = v71;
      v9 = v70;
      (*(v22 + 64))(v73, v65, v70, v22);
      v65 = (v65 + 1);
    }

    while (v100 != v65);
  }

  v74 = v93;
  v75 = *(v93 + 8);
  v75(v105, v9);
  v75(v104, v9);
  v76 = *(v74 + 32);
  v77 = v84;
  v76(v84, v103, v9);
  return (v76)(v85, v77, v9);
}

uint64_t static SIMDMask..| infix(_:_:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v99 = a6;
  v9 = a3;
  v91 = a2;
  LODWORD(v97) = a1;
  v85 = a7;
  v93 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v105 = &v79 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v104 = &v79 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v79 - v17;
  v102 = *(v19 + 8);
  v20 = *(*(v102 + 24) + 16);
  v22 = *(v21 + 48);
  swift_getAssociatedTypeWitness(255, v22, v23, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v25 = v24;
  v100 = v20;
  swift_getAssociatedTypeWitness(0, v20, v24, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v96 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v95 = &v79 - v27;
  v28 = swift_checkMetadataState(0, v25);
  v81 = *(v28 - 1);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v79 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v101 = &v79 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v92 = &v79 - v37;
  v106[0] = v9;
  v106[1] = a4;
  v106[2] = a5;
  v106[3] = v99;
  v38 = type metadata accessor for SIMDMask(0, v106);
  v89 = *(v38 - 8);
  v90 = v38;
  v39 = MEMORY[0x1EEE9AC00](v38);
  v41 = &v79 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v88 = &v79 - v42;
  v43 = *(v22 + 48);
  v87 = v22 + 48;
  v86 = v43;
  v43(v9, v22);
  v98 = *(v22 + 40);
  v99 = v22 + 40;
  v44 = v98(v9, v22);
  if (v44 < 0)
  {
    goto LABEL_16;
  }

  v45 = v44;
  v83 = v34;
  v94 = v28;
  v82 = v31;
  v84 = v18;
  v103 = v12;
  if (v44)
  {
    v46 = 0;
    v47 = v22 + 64;
    v48 = v92;
    while (1)
    {
      v49 = v98(v9, v22);
      if (v49 < 0)
      {
        break;
      }

      if (v46 >= v49)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v50 = v96;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v100, v94, v96, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v52 = *(AssociatedConformanceWitness + 8);
      v80 = v47;
      v53 = v95;
      if (v97)
      {
        v54 = &unk_18071E0B0;
        v55 = 257;
      }

      else
      {
        v54 = &qword_18071E0A8;
        v55 = 256;
      }

      v52(v54, v55, v50, AssociatedConformanceWitness);
      (*(v100 + 3))(v53);
      v47 = v80;
      (*(v22 + 64))(v48, v46++, v9, v22);
      if (v45 == v46)
      {
        goto LABEL_10;
      }
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_10:
  v57 = v89;
  v56 = v90;
  v58 = v88;
  (*(v89 + 32))(v88, v41, v90);
  v59 = *(v93 + 16);
  v59(v104, v58, v9);
  v59(v105, v91, v9);
  v86(v9, v22);
  v60 = v98(v9, v22);
  if (v60 < 0)
  {
    goto LABEL_16;
  }

  v61 = v60;
  (*(v57 + 8))(v58, v56);
  v62 = v82;
  v63 = v94;
  v64 = v83;
  if (v61)
  {
    v65 = 0;
    v66 = *(v22 + 56);
    v97 = v102 + 208;
    v98 = v66;
    v99 = v22 + 56;
    v100 = v61;
    v95 = (v22 + 64);
    v96 = (v81 + 8);
    do
    {
      v67 = v64;
      v68 = v62;
      v69 = v98;
      (v98)(v65, v9, v22);
      v69(v65, v9, v22);
      v62 = v68;
      v64 = v67;
      v70 = v9;
      v71 = v101;
      (*(v102 + 208))(v67, v62, v63);
      v72 = *v96;
      (*v96)(v62, v63);
      v72(v67, v63);
      v73 = v71;
      v9 = v70;
      (*(v22 + 64))(v73, v65, v70, v22);
      v65 = (v65 + 1);
    }

    while (v100 != v65);
  }

  v74 = v93;
  v75 = *(v93 + 8);
  v75(v105, v9);
  v75(v104, v9);
  v76 = *(v74 + 32);
  v77 = v84;
  v76(v84, v103, v9);
  return (v76)(v85, v77, v9);
}

uint64_t static SIMDMask..& infix(_:_:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v99 = a6;
  v9 = a3;
  LODWORD(v97) = a2;
  v91 = a1;
  v85 = a7;
  v93 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v105 = &v79 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v104 = &v79 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v79 - v17;
  v102 = *(v19 + 8);
  v20 = *(*(v102 + 24) + 16);
  v22 = *(v21 + 48);
  swift_getAssociatedTypeWitness(255, v22, v23, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v25 = v24;
  v100 = v20;
  swift_getAssociatedTypeWitness(0, v20, v24, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v96 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v95 = &v79 - v27;
  v28 = swift_checkMetadataState(0, v25);
  v81 = *(v28 - 1);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v79 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v101 = &v79 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v92 = &v79 - v37;
  v106[0] = v9;
  v106[1] = a4;
  v106[2] = a5;
  v106[3] = v99;
  v38 = type metadata accessor for SIMDMask(0, v106);
  v89 = *(v38 - 8);
  v90 = v38;
  v39 = MEMORY[0x1EEE9AC00](v38);
  v41 = &v79 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v88 = &v79 - v42;
  v43 = *(v22 + 48);
  v87 = v22 + 48;
  v86 = v43;
  v43(v9, v22);
  v98 = *(v22 + 40);
  v99 = v22 + 40;
  v44 = v98(v9, v22);
  if (v44 < 0)
  {
    goto LABEL_16;
  }

  v45 = v44;
  v83 = v34;
  v94 = v28;
  v82 = v31;
  v84 = v18;
  v103 = v12;
  if (v44)
  {
    v46 = 0;
    v47 = v22 + 64;
    v48 = v92;
    while (1)
    {
      v49 = v98(v9, v22);
      if (v49 < 0)
      {
        break;
      }

      if (v46 >= v49)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v50 = v96;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v100, v94, v96, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v52 = *(AssociatedConformanceWitness + 8);
      v80 = v47;
      v53 = v95;
      if (v97)
      {
        v54 = &unk_18071E0B0;
        v55 = 257;
      }

      else
      {
        v54 = &qword_18071E0A8;
        v55 = 256;
      }

      v52(v54, v55, v50, AssociatedConformanceWitness);
      (*(v100 + 3))(v53);
      v47 = v80;
      (*(v22 + 64))(v48, v46++, v9, v22);
      if (v45 == v46)
      {
        goto LABEL_10;
      }
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_10:
  v57 = v89;
  v56 = v90;
  v58 = v88;
  (*(v89 + 32))(v88, v41, v90);
  v59 = *(v93 + 16);
  v59(v104, v91, v9);
  v59(v105, v58, v9);
  v86(v9, v22);
  v60 = v98(v9, v22);
  if (v60 < 0)
  {
    goto LABEL_16;
  }

  v61 = v60;
  (*(v57 + 8))(v58, v56);
  v62 = v82;
  v63 = v94;
  v64 = v83;
  if (v61)
  {
    v65 = 0;
    v66 = *(v22 + 56);
    v97 = v102 + 192;
    v98 = v66;
    v99 = v22 + 56;
    v100 = v61;
    v95 = (v22 + 64);
    v96 = (v81 + 8);
    do
    {
      v67 = v64;
      v68 = v62;
      v69 = v98;
      (v98)(v65, v9, v22);
      v69(v65, v9, v22);
      v62 = v68;
      v64 = v67;
      v70 = v9;
      v71 = v101;
      (*(v102 + 192))(v67, v62, v63);
      v72 = *v96;
      (*v96)(v62, v63);
      v72(v67, v63);
      v73 = v71;
      v9 = v70;
      (*(v22 + 64))(v73, v65, v70, v22);
      v65 = (v65 + 1);
    }

    while (v100 != v65);
  }

  v74 = v93;
  v75 = *(v93 + 8);
  v75(v105, v9);
  v75(v104, v9);
  v76 = *(v74 + 32);
  v77 = v84;
  v76(v84, v103, v9);
  return (v76)(v85, v77, v9);
}

uint64_t static SIMDMask..^ infix(_:_:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v99 = a6;
  v9 = a3;
  LODWORD(v97) = a2;
  v91 = a1;
  v85 = a7;
  v93 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v105 = &v79 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v104 = &v79 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v79 - v17;
  v102 = *(v19 + 8);
  v20 = *(*(v102 + 24) + 16);
  v22 = *(v21 + 48);
  swift_getAssociatedTypeWitness(255, v22, v23, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v25 = v24;
  v100 = v20;
  swift_getAssociatedTypeWitness(0, v20, v24, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v96 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v95 = &v79 - v27;
  v28 = swift_checkMetadataState(0, v25);
  v81 = *(v28 - 1);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v79 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v101 = &v79 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v92 = &v79 - v37;
  v106[0] = v9;
  v106[1] = a4;
  v106[2] = a5;
  v106[3] = v99;
  v38 = type metadata accessor for SIMDMask(0, v106);
  v89 = *(v38 - 8);
  v90 = v38;
  v39 = MEMORY[0x1EEE9AC00](v38);
  v41 = &v79 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v88 = &v79 - v42;
  v43 = *(v22 + 48);
  v87 = v22 + 48;
  v86 = v43;
  v43(v9, v22);
  v98 = *(v22 + 40);
  v99 = v22 + 40;
  v44 = v98(v9, v22);
  if (v44 < 0)
  {
    goto LABEL_16;
  }

  v45 = v44;
  v83 = v34;
  v94 = v28;
  v82 = v31;
  v84 = v18;
  v103 = v12;
  if (v44)
  {
    v46 = 0;
    v47 = v22 + 64;
    v48 = v92;
    while (1)
    {
      v49 = v98(v9, v22);
      if (v49 < 0)
      {
        break;
      }

      if (v46 >= v49)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v50 = v96;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v100, v94, v96, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v52 = *(AssociatedConformanceWitness + 8);
      v80 = v47;
      v53 = v95;
      if (v97)
      {
        v54 = &unk_18071E0B0;
        v55 = 257;
      }

      else
      {
        v54 = &qword_18071E0A8;
        v55 = 256;
      }

      v52(v54, v55, v50, AssociatedConformanceWitness);
      (*(v100 + 3))(v53);
      v47 = v80;
      (*(v22 + 64))(v48, v46++, v9, v22);
      if (v45 == v46)
      {
        goto LABEL_10;
      }
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_10:
  v57 = v89;
  v56 = v90;
  v58 = v88;
  (*(v89 + 32))(v88, v41, v90);
  v59 = *(v93 + 16);
  v59(v104, v91, v9);
  v59(v105, v58, v9);
  v86(v9, v22);
  v60 = v98(v9, v22);
  if (v60 < 0)
  {
    goto LABEL_16;
  }

  v61 = v60;
  (*(v57 + 8))(v58, v56);
  v62 = v82;
  v63 = v94;
  v64 = v83;
  if (v61)
  {
    v65 = 0;
    v66 = *(v22 + 56);
    v97 = v102 + 224;
    v98 = v66;
    v99 = v22 + 56;
    v100 = v61;
    v95 = (v22 + 64);
    v96 = (v81 + 8);
    do
    {
      v67 = v64;
      v68 = v62;
      v69 = v98;
      (v98)(v65, v9, v22);
      v69(v65, v9, v22);
      v62 = v68;
      v64 = v67;
      v70 = v9;
      v71 = v101;
      (*(v102 + 224))(v67, v62, v63);
      v72 = *v96;
      (*v96)(v62, v63);
      v72(v67, v63);
      v73 = v71;
      v9 = v70;
      (*(v22 + 64))(v73, v65, v70, v22);
      v65 = (v65 + 1);
    }

    while (v100 != v65);
  }

  v74 = v93;
  v75 = *(v93 + 8);
  v75(v105, v9);
  v75(v104, v9);
  v76 = *(v74 + 32);
  v77 = v84;
  v76(v84, v103, v9);
  return (v76)(v85, v77, v9);
}

uint64_t static SIMDMask..| infix(_:_:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v99 = a6;
  v9 = a3;
  LODWORD(v97) = a2;
  v91 = a1;
  v85 = a7;
  v93 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v105 = &v79 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v104 = &v79 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v79 - v17;
  v102 = *(v19 + 8);
  v20 = *(*(v102 + 24) + 16);
  v22 = *(v21 + 48);
  swift_getAssociatedTypeWitness(255, v22, v23, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v25 = v24;
  v100 = v20;
  swift_getAssociatedTypeWitness(0, v20, v24, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v96 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v95 = &v79 - v27;
  v28 = swift_checkMetadataState(0, v25);
  v81 = *(v28 - 1);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v79 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v101 = &v79 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v92 = &v79 - v37;
  v106[0] = v9;
  v106[1] = a4;
  v106[2] = a5;
  v106[3] = v99;
  v38 = type metadata accessor for SIMDMask(0, v106);
  v89 = *(v38 - 8);
  v90 = v38;
  v39 = MEMORY[0x1EEE9AC00](v38);
  v41 = &v79 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v88 = &v79 - v42;
  v43 = *(v22 + 48);
  v87 = v22 + 48;
  v86 = v43;
  v43(v9, v22);
  v98 = *(v22 + 40);
  v99 = v22 + 40;
  v44 = v98(v9, v22);
  if (v44 < 0)
  {
    goto LABEL_16;
  }

  v45 = v44;
  v83 = v34;
  v94 = v28;
  v82 = v31;
  v84 = v18;
  v103 = v12;
  if (v44)
  {
    v46 = 0;
    v47 = v22 + 64;
    v48 = v92;
    while (1)
    {
      v49 = v98(v9, v22);
      if (v49 < 0)
      {
        break;
      }

      if (v46 >= v49)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v50 = v96;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v100, v94, v96, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v52 = *(AssociatedConformanceWitness + 8);
      v80 = v47;
      v53 = v95;
      if (v97)
      {
        v54 = &unk_18071E0B0;
        v55 = 257;
      }

      else
      {
        v54 = &qword_18071E0A8;
        v55 = 256;
      }

      v52(v54, v55, v50, AssociatedConformanceWitness);
      (*(v100 + 3))(v53);
      v47 = v80;
      (*(v22 + 64))(v48, v46++, v9, v22);
      if (v45 == v46)
      {
        goto LABEL_10;
      }
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_10:
  v57 = v89;
  v56 = v90;
  v58 = v88;
  (*(v89 + 32))(v88, v41, v90);
  v59 = *(v93 + 16);
  v59(v104, v91, v9);
  v59(v105, v58, v9);
  v86(v9, v22);
  v60 = v98(v9, v22);
  if (v60 < 0)
  {
    goto LABEL_16;
  }

  v61 = v60;
  (*(v57 + 8))(v58, v56);
  v62 = v82;
  v63 = v94;
  v64 = v83;
  if (v61)
  {
    v65 = 0;
    v66 = *(v22 + 56);
    v97 = v102 + 208;
    v98 = v66;
    v99 = v22 + 56;
    v100 = v61;
    v95 = (v22 + 64);
    v96 = (v81 + 8);
    do
    {
      v67 = v64;
      v68 = v62;
      v69 = v98;
      (v98)(v65, v9, v22);
      v69(v65, v9, v22);
      v62 = v68;
      v64 = v67;
      v70 = v9;
      v71 = v101;
      (*(v102 + 208))(v67, v62, v63);
      v72 = *v96;
      (*v96)(v62, v63);
      v72(v67, v63);
      v73 = v71;
      v9 = v70;
      (*(v22 + 64))(v73, v65, v70, v22);
      v65 = (v65 + 1);
    }

    while (v100 != v65);
  }

  v74 = v93;
  v75 = *(v93 + 8);
  v75(v105, v9);
  v75(v104, v9);
  v76 = *(v74 + 32);
  v77 = v84;
  v76(v84, v103, v9);
  return (v76)(v85, v77, v9);
}

uint64_t static SIMDMask..&= infix(_:_:)(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v64 = a6;
  v65 = a2;
  v56 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v56, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v52 = v10;
  v60 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v55 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v54 = &v50 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v63 = &v50 - v16;
  v17 = *(a3 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v50 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = MEMORY[0x1EEE9AC00](&v50 - v24);
  v53 = &v50 - v26;
  v27 = *(v17 + 16);
  v66 = v25;
  v27(v25, a1, a3);
  v67[0] = a3;
  v67[1] = a4;
  v67[2] = a5;
  v67[3] = v64;
  v28 = type metadata accessor for SIMDMask(0, v67);
  (*(*(v28 - 8) + 8))(a1, v28);
  v27(v23, v65, a3);
  v29 = v20;
  v30 = v56;
  (v56[6])(a3, v56);
  v31 = (v30[5])(a3, v30);
  if (v31 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v50 = v17;
  v51 = a1;
  v32 = a3;
  v62 = a5;
  v33 = v54;
  v34 = v55;
  v35 = v52;
  v64 = v23;
  v65 = v29;
  if (v31)
  {
    v36 = 0;
    v37 = v30[7];
    v58 = (v60 + 1);
    v59 = v37;
    v60 = v30 + 7;
    v61 = v31;
    v57 = v30 + 8;
    do
    {
      v38 = v33;
      v39 = v34;
      v40 = v59;
      (v59)(v36, v32, v30);
      (v40)(v36, v32, v30);
      v34 = v39;
      v33 = v38;
      v41 = v32;
      v42 = v63;
      (*(*(v62 + 8) + 192))(v38, v34, v35);
      v43 = *v58;
      (*v58)(v34, v35);
      v43(v38, v35);
      v44 = v42;
      v32 = v41;
      (v30[8])(v44, v36++, v41, v30);
    }

    while (v61 != v36);
  }

  v45 = v50;
  v46 = *(v50 + 8);
  v46(v64, v32);
  v46(v66, v32);
  v47 = *(v45 + 32);
  v48 = v53;
  v47(v53, v65, v32);
  return (v47)(v51, v48, v32);
}

uint64_t static SIMDMask..^= infix(_:_:)(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v64 = a6;
  v65 = a2;
  v56 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v56, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v52 = v10;
  v60 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v55 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v54 = &v50 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v63 = &v50 - v16;
  v17 = *(a3 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v50 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = MEMORY[0x1EEE9AC00](&v50 - v24);
  v53 = &v50 - v26;
  v27 = *(v17 + 16);
  v66 = v25;
  v27(v25, a1, a3);
  v67[0] = a3;
  v67[1] = a4;
  v67[2] = a5;
  v67[3] = v64;
  v28 = type metadata accessor for SIMDMask(0, v67);
  (*(*(v28 - 8) + 8))(a1, v28);
  v27(v23, v65, a3);
  v29 = v20;
  v30 = v56;
  (v56[6])(a3, v56);
  v31 = (v30[5])(a3, v30);
  if (v31 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v50 = v17;
  v51 = a1;
  v32 = a3;
  v62 = a5;
  v33 = v54;
  v34 = v55;
  v35 = v52;
  v64 = v23;
  v65 = v29;
  if (v31)
  {
    v36 = 0;
    v37 = v30[7];
    v58 = (v60 + 1);
    v59 = v37;
    v60 = v30 + 7;
    v61 = v31;
    v57 = v30 + 8;
    do
    {
      v38 = v33;
      v39 = v34;
      v40 = v59;
      (v59)(v36, v32, v30);
      (v40)(v36, v32, v30);
      v34 = v39;
      v33 = v38;
      v41 = v32;
      v42 = v63;
      (*(*(v62 + 8) + 224))(v38, v34, v35);
      v43 = *v58;
      (*v58)(v34, v35);
      v43(v38, v35);
      v44 = v42;
      v32 = v41;
      (v30[8])(v44, v36++, v41, v30);
    }

    while (v61 != v36);
  }

  v45 = v50;
  v46 = *(v50 + 8);
  v46(v64, v32);
  v46(v66, v32);
  v47 = *(v45 + 32);
  v48 = v53;
  v47(v53, v65, v32);
  return (v47)(v51, v48, v32);
}

uint64_t static SIMDMask..|= infix(_:_:)(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v64 = a6;
  v65 = a2;
  v56 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v56, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v52 = v10;
  v60 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v55 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v54 = &v50 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v63 = &v50 - v16;
  v17 = *(a3 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v50 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = MEMORY[0x1EEE9AC00](&v50 - v24);
  v53 = &v50 - v26;
  v27 = *(v17 + 16);
  v66 = v25;
  v27(v25, a1, a3);
  v67[0] = a3;
  v67[1] = a4;
  v67[2] = a5;
  v67[3] = v64;
  v28 = type metadata accessor for SIMDMask(0, v67);
  (*(*(v28 - 8) + 8))(a1, v28);
  v27(v23, v65, a3);
  v29 = v20;
  v30 = v56;
  (v56[6])(a3, v56);
  v31 = (v30[5])(a3, v30);
  if (v31 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v50 = v17;
  v51 = a1;
  v32 = a3;
  v62 = a5;
  v33 = v54;
  v34 = v55;
  v35 = v52;
  v64 = v23;
  v65 = v29;
  if (v31)
  {
    v36 = 0;
    v37 = v30[7];
    v58 = (v60 + 1);
    v59 = v37;
    v60 = v30 + 7;
    v61 = v31;
    v57 = v30 + 8;
    do
    {
      v38 = v33;
      v39 = v34;
      v40 = v59;
      (v59)(v36, v32, v30);
      (v40)(v36, v32, v30);
      v34 = v39;
      v33 = v38;
      v41 = v32;
      v42 = v63;
      (*(*(v62 + 8) + 208))(v38, v34, v35);
      v43 = *v58;
      (*v58)(v34, v35);
      v43(v38, v35);
      v44 = v42;
      v32 = v41;
      (v30[8])(v44, v36++, v41, v30);
    }

    while (v61 != v36);
  }

  v45 = v50;
  v46 = *(v50 + 8);
  v46(v64, v32);
  v46(v66, v32);
  v47 = *(v45 + 32);
  v48 = v53;
  v47(v53, v65, v32);
  return (v47)(v51, v48, v32);
}

uint64_t static SIMDMask..&= infix(_:_:)(uint64_t a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  LODWORD(v101) = a2;
  v11 = *(a5 + 8);
  v12 = *(*(v11 + 24) + 16);
  v13 = *(a4 + 48);
  swift_getAssociatedTypeWitness(255, v13, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v15 = v14;
  v104 = v12;
  swift_getAssociatedTypeWitness(0, v12, v14, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v100 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v99 = &v81 - v17;
  v98 = swift_checkMetadataState(0, v15);
  v85 = *(v98 - 1);
  v18 = MEMORY[0x1EEE9AC00](v98);
  v88 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v81 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v81 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v96 = &v81 - v27;
  v97 = *(v9 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v109 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v108 = &v81 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v107 = &v81 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v89 = &v81 - v34;
  v110[0] = v9;
  v110[1] = a4;
  v110[2] = a5;
  v110[3] = a6;
  v35 = type metadata accessor for SIMDMask(0, v110);
  v36 = *(v35 - 8);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v81 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v37);
  v95 = &v81 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v42 = *(v36 + 32);
  v94 = &v81 - v43;
  v91 = v36 + 32;
  v90 = v42;
  v42();
  v44 = *(v13 + 48);
  v93 = v13 + 48;
  v92 = v44;
  v44(v9, v13);
  v102 = *(v13 + 40);
  v103 = v13 + 40;
  v45 = v102(v9, v13);
  if (v45 < 0)
  {
    goto LABEL_16;
  }

  v87 = a1;
  v105 = v25;
  v106 = v11;
  v86 = v22;
  if (v45)
  {
    v46 = 0;
    v84 = v104 + 24;
    v47 = v13 + 64;
    while (1)
    {
      v48 = v45;
      v49 = v102(v9, v13);
      if (v49 < 0)
      {
        break;
      }

      if (v46 >= v49)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v83 = v36;
      v82 = v35;
      v50 = v100;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v104, v98, v100, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v52 = v47;
      v53 = v99;
      if (v101)
      {
        v54 = &unk_18071E0B0;
        v55 = 257;
      }

      else
      {
        v54 = &qword_18071E0A8;
        v55 = 256;
      }

      (*(AssociatedConformanceWitness + 8))(v54, v55, v50, AssociatedConformanceWitness);
      v56 = v96;
      (*(v104 + 3))(v53);
      v57 = v56;
      v47 = v52;
      (*(v13 + 64))(v57, v46++, v9, v13);
      v45 = v48;
      v35 = v82;
      v36 = v83;
      if (v48 == v46)
      {
        goto LABEL_10;
      }
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_10:
  v58 = v95;
  (v90)(v95, v39, v35);
  v59 = *(v97 + 16);
  v60 = v94;
  v59(v107, v94, v9);
  v59(v108, v58, v9);
  v92(v9, v13);
  v61 = v102(v9, v13);
  if (v61 < 0)
  {
    goto LABEL_16;
  }

  v62 = v61;
  v63 = *(v36 + 8);
  v63(v58, v35);
  v63(v60, v35);
  v64 = v98;
  v65 = v88;
  v66 = v86;
  if (v62)
  {
    v67 = 0;
    v68 = *(v13 + 56);
    v101 = v106 + 192;
    v102 = v68;
    v103 = v13 + 56;
    v104 = v62;
    v99 = (v13 + 64);
    v100 = (v85 + 8);
    do
    {
      v69 = v66;
      v70 = v65;
      v71 = v102;
      (v102)(v67, v9, v13);
      v71(v67, v9, v13);
      v65 = v70;
      v66 = v69;
      v72 = v9;
      v73 = v105;
      (*(v106 + 192))(v69, v65, v64);
      v74 = *v100;
      (*v100)(v65, v64);
      v74(v69, v64);
      v75 = v73;
      v9 = v72;
      (*(v13 + 64))(v75, v67, v72, v13);
      v67 = (v67 + 1);
    }

    while (v104 != v67);
  }

  v76 = v97;
  v77 = *(v97 + 8);
  v77(v108, v9);
  v77(v107, v9);
  v78 = *(v76 + 32);
  v79 = v89;
  v78(v89, v109, v9);
  return (v78)(v87, v79, v9);
}

uint64_t static SIMDMask..^= infix(_:_:)(uint64_t a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  LODWORD(v101) = a2;
  v11 = *(a5 + 8);
  v12 = *(*(v11 + 24) + 16);
  v13 = *(a4 + 48);
  swift_getAssociatedTypeWitness(255, v13, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v15 = v14;
  v104 = v12;
  swift_getAssociatedTypeWitness(0, v12, v14, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v100 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v99 = &v81 - v17;
  v98 = swift_checkMetadataState(0, v15);
  v85 = *(v98 - 1);
  v18 = MEMORY[0x1EEE9AC00](v98);
  v88 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v81 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v81 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v96 = &v81 - v27;
  v97 = *(v9 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v109 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v108 = &v81 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v107 = &v81 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v89 = &v81 - v34;
  v110[0] = v9;
  v110[1] = a4;
  v110[2] = a5;
  v110[3] = a6;
  v35 = type metadata accessor for SIMDMask(0, v110);
  v36 = *(v35 - 8);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v81 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v37);
  v95 = &v81 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v42 = *(v36 + 32);
  v94 = &v81 - v43;
  v91 = v36 + 32;
  v90 = v42;
  v42();
  v44 = *(v13 + 48);
  v93 = v13 + 48;
  v92 = v44;
  v44(v9, v13);
  v102 = *(v13 + 40);
  v103 = v13 + 40;
  v45 = v102(v9, v13);
  if (v45 < 0)
  {
    goto LABEL_16;
  }

  v87 = a1;
  v105 = v25;
  v106 = v11;
  v86 = v22;
  if (v45)
  {
    v46 = 0;
    v84 = v104 + 24;
    v47 = v13 + 64;
    while (1)
    {
      v48 = v45;
      v49 = v102(v9, v13);
      if (v49 < 0)
      {
        break;
      }

      if (v46 >= v49)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v83 = v36;
      v82 = v35;
      v50 = v100;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v104, v98, v100, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v52 = v47;
      v53 = v99;
      if (v101)
      {
        v54 = &unk_18071E0B0;
        v55 = 257;
      }

      else
      {
        v54 = &qword_18071E0A8;
        v55 = 256;
      }

      (*(AssociatedConformanceWitness + 8))(v54, v55, v50, AssociatedConformanceWitness);
      v56 = v96;
      (*(v104 + 3))(v53);
      v57 = v56;
      v47 = v52;
      (*(v13 + 64))(v57, v46++, v9, v13);
      v45 = v48;
      v35 = v82;
      v36 = v83;
      if (v48 == v46)
      {
        goto LABEL_10;
      }
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_10:
  v58 = v95;
  (v90)(v95, v39, v35);
  v59 = *(v97 + 16);
  v60 = v94;
  v59(v107, v94, v9);
  v59(v108, v58, v9);
  v92(v9, v13);
  v61 = v102(v9, v13);
  if (v61 < 0)
  {
    goto LABEL_16;
  }

  v62 = v61;
  v63 = *(v36 + 8);
  v63(v58, v35);
  v63(v60, v35);
  v64 = v98;
  v65 = v88;
  v66 = v86;
  if (v62)
  {
    v67 = 0;
    v68 = *(v13 + 56);
    v101 = v106 + 224;
    v102 = v68;
    v103 = v13 + 56;
    v104 = v62;
    v99 = (v13 + 64);
    v100 = (v85 + 8);
    do
    {
      v69 = v66;
      v70 = v65;
      v71 = v102;
      (v102)(v67, v9, v13);
      v71(v67, v9, v13);
      v65 = v70;
      v66 = v69;
      v72 = v9;
      v73 = v105;
      (*(v106 + 224))(v69, v65, v64);
      v74 = *v100;
      (*v100)(v65, v64);
      v74(v69, v64);
      v75 = v73;
      v9 = v72;
      (*(v13 + 64))(v75, v67, v72, v13);
      v67 = (v67 + 1);
    }

    while (v104 != v67);
  }

  v76 = v97;
  v77 = *(v97 + 8);
  v77(v108, v9);
  v77(v107, v9);
  v78 = *(v76 + 32);
  v79 = v89;
  v78(v89, v109, v9);
  return (v78)(v87, v79, v9);
}

uint64_t static SIMDMask..|= infix(_:_:)(uint64_t a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  LODWORD(v101) = a2;
  v11 = *(a5 + 8);
  v12 = *(*(v11 + 24) + 16);
  v13 = *(a4 + 48);
  swift_getAssociatedTypeWitness(255, v13, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v15 = v14;
  v104 = v12;
  swift_getAssociatedTypeWitness(0, v12, v14, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v100 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v99 = &v81 - v17;
  v98 = swift_checkMetadataState(0, v15);
  v85 = *(v98 - 1);
  v18 = MEMORY[0x1EEE9AC00](v98);
  v88 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v81 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v81 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v96 = &v81 - v27;
  v97 = *(v9 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v109 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v108 = &v81 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v107 = &v81 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v89 = &v81 - v34;
  v110[0] = v9;
  v110[1] = a4;
  v110[2] = a5;
  v110[3] = a6;
  v35 = type metadata accessor for SIMDMask(0, v110);
  v36 = *(v35 - 8);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v81 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v37);
  v95 = &v81 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v42 = *(v36 + 32);
  v94 = &v81 - v43;
  v91 = v36 + 32;
  v90 = v42;
  v42();
  v44 = *(v13 + 48);
  v93 = v13 + 48;
  v92 = v44;
  v44(v9, v13);
  v102 = *(v13 + 40);
  v103 = v13 + 40;
  v45 = v102(v9, v13);
  if (v45 < 0)
  {
    goto LABEL_16;
  }

  v87 = a1;
  v105 = v25;
  v106 = v11;
  v86 = v22;
  if (v45)
  {
    v46 = 0;
    v84 = v104 + 24;
    v47 = v13 + 64;
    while (1)
    {
      v48 = v45;
      v49 = v102(v9, v13);
      if (v49 < 0)
      {
        break;
      }

      if (v46 >= v49)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v83 = v36;
      v82 = v35;
      v50 = v100;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v104, v98, v100, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v52 = v47;
      v53 = v99;
      if (v101)
      {
        v54 = &unk_18071E0B0;
        v55 = 257;
      }

      else
      {
        v54 = &qword_18071E0A8;
        v55 = 256;
      }

      (*(AssociatedConformanceWitness + 8))(v54, v55, v50, AssociatedConformanceWitness);
      v56 = v96;
      (*(v104 + 3))(v53);
      v57 = v56;
      v47 = v52;
      (*(v13 + 64))(v57, v46++, v9, v13);
      v45 = v48;
      v35 = v82;
      v36 = v83;
      if (v48 == v46)
      {
        goto LABEL_10;
      }
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_10:
  v58 = v95;
  (v90)(v95, v39, v35);
  v59 = *(v97 + 16);
  v60 = v94;
  v59(v107, v94, v9);
  v59(v108, v58, v9);
  v92(v9, v13);
  v61 = v102(v9, v13);
  if (v61 < 0)
  {
    goto LABEL_16;
  }

  v62 = v61;
  v63 = *(v36 + 8);
  v63(v58, v35);
  v63(v60, v35);
  v64 = v98;
  v65 = v88;
  v66 = v86;
  if (v62)
  {
    v67 = 0;
    v68 = *(v13 + 56);
    v101 = v106 + 208;
    v102 = v68;
    v103 = v13 + 56;
    v104 = v62;
    v99 = (v13 + 64);
    v100 = (v85 + 8);
    do
    {
      v69 = v66;
      v70 = v65;
      v71 = v102;
      (v102)(v67, v9, v13);
      v71(v67, v9, v13);
      v65 = v70;
      v66 = v69;
      v72 = v9;
      v73 = v105;
      (*(v106 + 208))(v69, v65, v64);
      v74 = *v100;
      (*v100)(v65, v64);
      v74(v69, v64);
      v75 = v73;
      v9 = v72;
      (*(v13 + 64))(v75, v67, v72, v13);
      v67 = (v67 + 1);
    }

    while (v104 != v67);
  }

  v76 = v97;
  v77 = *(v97 + 8);
  v77(v108, v9);
  v77(v107, v9);
  v78 = *(v76 + 32);
  v79 = v89;
  v78(v89, v109, v9);
  return (v78)(v87, v79, v9);
}

uint64_t key path getter for SIMD2.subscript(_:) : <A>SIMD2<A>A(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2 >= 2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = *(a2 + a3 - 16);
  v4 = *(a2 + a3 - 8);
  swift_getAssociatedTypeWitness(255, v4, v5, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v7 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v5, v6, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v9 = *(AssociatedConformanceWitness + 56);
  v10 = swift_checkMetadataState(0, v7);
  return v9(v3, v10, AssociatedConformanceWitness);
}

uint64_t key path setter for SIMD2.subscript(_:) : <A>SIMD2<A>A(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v18 - v6;
  v9 = *v8;
  memcpy(&v18 - v6, v10, v11);
  if (v9 >= 2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  swift_getAssociatedTypeWitness(255, v5, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v13 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v4, v12, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v15 = *(AssociatedConformanceWitness + 64);
  v16 = swift_checkMetadataState(0, v13);
  return v15(v7, v9, v16, AssociatedConformanceWitness);
}

uint64_t (*SIMD2.subscript.modify(void *a1, unint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x40, 0xB1E7uLL);
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
    v7[3] = swift_coroFrameAlloc(v10, 0xB1E7uLL);
    v8[4] = swift_coroFrameAlloc(v10, 0xB1E7uLL);
    v11 = swift_coroFrameAlloc(v10, 0xB1E7uLL);
  }

  else
  {
    v7[3] = malloc(v10);
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v8[5] = v11;
  if (a2 >= 2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v12, v9, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, v9, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v8[6] = AssociatedConformanceWitness;
  v16 = *(AssociatedConformanceWitness + 56);
  v17 = swift_checkMetadataState(0, v14);
  v8[7] = v17;
  v16(a2, v17, AssociatedConformanceWitness);
  return SIMD2.subscript.modify;
}

uint64_t SIMD2.init(_:_:)(const void *a1, const void *a2, const char *a3, swift *a4)
{
  v8 = *(*(a3 - 1) + 64);
  MEMORY[0x1EEE9AC00](a1);
  swift_getAssociatedTypeWitness(0, v10, v9, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v11, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  (*(AssociatedConformanceWitness + 48))(v12, AssociatedConformanceWitness);
  memcpy(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v14 = *(AssociatedConformanceWitness + 64);
  v14(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), 0, v12, AssociatedConformanceWitness);
  memcpy(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  return v14(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v12, AssociatedConformanceWitness);
}

void (*SIMD2.x.modify(void *a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0xF6C1uLL);
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
    v5[2] = swift_coroFrameAlloc(v8, 0xF6C1uLL);
    v9 = swift_coroFrameAlloc(v8, 0xF6C1uLL);
  }

  else
  {
    v5[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v6[3] = v9;
  v10 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v10, v7, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v7, v11, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v6[4] = AssociatedConformanceWitness;
  v14 = *(AssociatedConformanceWitness + 56);
  v15 = swift_checkMetadataState(0, v12);
  v6[5] = v15;
  v14(0, v15, AssociatedConformanceWitness);
  return SIMD2.x.modify;
}

void (*SIMD2.y.modify(void *a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0xF338uLL);
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
    v5[2] = swift_coroFrameAlloc(v8, 0xF338uLL);
    v9 = swift_coroFrameAlloc(v8, 0xF338uLL);
  }

  else
  {
    v5[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v6[3] = v9;
  v10 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v10, v7, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v7, v11, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v6[4] = AssociatedConformanceWitness;
  v14 = *(AssociatedConformanceWitness + 56);
  v15 = swift_checkMetadataState(0, v12);
  v6[5] = v15;
  v14(1, v15, AssociatedConformanceWitness);
  return SIMD2.y.modify;
}

uint64_t protocol witness for SIMDStorage.subscript.getter in conformance SIMD2<A>(unint64_t a1, uint64_t a2)
{
  if (a1 >= 2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v2, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v6 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v2, v3, v5, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v10 = *(AssociatedConformanceWitness + 56);
  v8 = swift_checkMetadataState(0, v6);

  return v10(a1, v8, AssociatedConformanceWitness);
}

uint64_t protocol witness for SIMDStorage.subscript.setter in conformance SIMD2<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v3, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v8 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v3, v4, v7, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v12 = *(AssociatedConformanceWitness + 64);
  v10 = swift_checkMetadataState(0, v8);

  return v12(a1, a2, v10, AssociatedConformanceWitness);
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance SIMD2<A>(void *a1, unint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x40, 0x668CuLL);
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
    v7[3] = swift_coroFrameAlloc(v10, 0x668CuLL);
    v8[4] = swift_coroFrameAlloc(v10, 0x668CuLL);
    v11 = swift_coroFrameAlloc(v10, 0x668CuLL);
  }

  else
  {
    v7[3] = malloc(v10);
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v8[5] = v11;
  if (a2 >= 2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v12, v9, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, v9, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v8[6] = AssociatedConformanceWitness;
  v16 = *(AssociatedConformanceWitness + 56);
  v17 = swift_checkMetadataState(0, v14);
  v8[7] = v17;
  v16(a2, v17, AssociatedConformanceWitness);
  return SIMD2.subscript.modify;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SIMD2<A>(uint64_t a1, const char *a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD2<A>, a2, a3);

  return SIMD.hash(into:)(a1, a2, WitnessTable);
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance SIMD2<A>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD2<A>, a1, a3);

  return SIMD.description.getter(a1, WitnessTable);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance SIMD2<A>@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD2<A>, a2, a3);

  return SIMD.init(arrayLiteral:)(a1, a2, WitnessTable, a4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SIMD2<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32[1] = a2;
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v32 - v8;
  v11 = *(v10 + 24);
  swift_getAssociatedTypeWitness(255, v11, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v13 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v11, v4, v12, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v15 = *(AssociatedConformanceWitness + 56);
  v16 = swift_checkMetadataState(0, v13);
  v32[0] = a1;
  v15(0, v16, AssociatedConformanceWitness);
  v15(0, v16, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, v11, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v18 = v17;
  v19 = swift_getAssociatedConformanceWitness(v11, v4, v17, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v20 = swift_getAssociatedConformanceWitness(v19, v18, v4, &protocol requirements base descriptor for SIMDStorage, associated conformance descriptor for SIMDStorage.SIMDStorage.Scalar: Hashable);
  if ((*(*(v20 + 8) + 8))(v9, v7, v4))
  {
    swift_getAssociatedTypeWitness(255, v11, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
    v22 = v21;
    v23 = swift_getAssociatedConformanceWitness(v11, v4, v21, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
    v24 = *(v23 + 56);
    v25 = swift_checkMetadataState(0, v22);
    v24(1, v25, v23);
    v24(1, v25, v23);
    swift_getAssociatedTypeWitness(255, v11, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
    v27 = v26;
    v28 = swift_getAssociatedConformanceWitness(v11, v4, v26, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
    v29 = swift_getAssociatedConformanceWitness(v28, v27, v4, &protocol requirements base descriptor for SIMDStorage, associated conformance descriptor for SIMDStorage.SIMDStorage.Scalar: Hashable);
    v30 = (*(*(v29 + 8) + 8))(v9, v7, v4);
  }

  else
  {
    v30 = 0;
  }

  return v30 & 1;
}

uint64_t SIMD2<>.init<A>(truncatingIfNeeded:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v43 = a4;
  v44 = a6;
  v39 = a1;
  v47 = a8;
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v15;
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v19 = v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v18, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v46 = v19;
  (*(AssociatedConformanceWitness + 48))(v19, AssociatedConformanceWitness);
  v42 = a7;
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v21 = v20;
  v37 = a3;
  v38 = v20;
  v22 = swift_getAssociatedConformanceWitness(a7, a3, v20, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v40 = *(v22 + 56);
  v23 = v40;
  v24 = swift_checkMetadataState(0, v21);
  v25 = v14;
  v23(0, v24, v22);
  v26 = *(v43 + 8);
  v27 = *(v44 + 8);
  v43 = *(v26 + 96);
  v44 = v27;
  v28 = v14;
  v29 = v41;
  (v43)(v28, a3);
  v36 = *(AssociatedConformanceWitness + 64);
  (v36)(v17, 0, v46);
  v30 = swift_checkMetadataState(0, v38);
  v31 = v39;
  v40(1, v30, v22);
  v32 = v37;
  (v43)(v25, v37, v44, v29, v26);
  v36(v17, 1, v46, AssociatedConformanceWitness);
  v34 = type metadata accessor for SIMD2(0, v32, v42, v33);
  return (*(*(v34 - 8) + 8))(v31, v34);
}

uint64_t SIMD2<>.init<A>(clamping:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v43 = a4;
  v44 = a6;
  v39 = a1;
  v47 = a8;
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v15;
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v19 = v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v18, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v46 = v19;
  (*(AssociatedConformanceWitness + 48))(v19, AssociatedConformanceWitness);
  v42 = a7;
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v21 = v20;
  v37 = a3;
  v38 = v20;
  v22 = swift_getAssociatedConformanceWitness(a7, a3, v20, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v40 = *(v22 + 56);
  v23 = v40;
  v24 = swift_checkMetadataState(0, v21);
  v25 = v14;
  v23(0, v24, v22);
  v26 = *(v43 + 8);
  v27 = *(v44 + 8);
  v43 = *(v26 + 104);
  v44 = v27;
  v28 = v14;
  v29 = v41;
  (v43)(v28, a3);
  v36 = *(AssociatedConformanceWitness + 64);
  (v36)(v17, 0, v46);
  v30 = swift_checkMetadataState(0, v38);
  v31 = v39;
  v40(1, v30, v22);
  v32 = v37;
  (v43)(v25, v37, v44, v29, v26);
  v36(v17, 1, v46, AssociatedConformanceWitness);
  v34 = type metadata accessor for SIMD2(0, v32, v42, v33);
  return (*(*(v34 - 8) + 8))(v31, v34);
}

uint64_t SIMD2<>.init<A>(_:rounding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, const char *a4@<X3>, uint64_t a5@<X4>, swift *a6@<X5>, uint64_t a7@<X6>, int **a8@<X7>, uint64_t a9@<X8>)
{
  v57 = a7;
  v48 = a5;
  v49 = a1;
  v50 = a2;
  v53 = a9;
  v13 = MEMORY[0x1EEE9AC00](a1);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v55 = &v42 - v15;
  v52 = v16;
  MEMORY[0x1EEE9AC00](v14);
  v54 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, v19, v18, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v21 = v20;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a6, a3, v20, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v22 = *(AssociatedConformanceWitness + 48);
  v56 = v21;
  v22(v21, AssociatedConformanceWitness);
  v47 = a8;
  swift_getAssociatedTypeWitness(255, a8, a4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v24 = v23;
  v25 = a8;
  v26 = v24;
  v44 = v24;
  v27 = swift_getAssociatedConformanceWitness(v25, a4, v24, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v28 = *(v27 + 56);
  v45 = v27;
  v46 = v28;
  v29 = swift_checkMetadataState(0, v26);
  v28(0, v29, v27);
  v30 = v57;
  v31 = *(v57 + 16);
  v32 = *(v31 + 304);
  v42 = v31 + 304;
  v43 = v32;
  v33 = v55;
  v32(v50, a4, v31);
  v48 = *(*(v48 + 8) + 80);
  v34 = v54;
  (v48)(v33, a4, v30);
  v35 = *(AssociatedConformanceWitness + 64);
  (v35)(v34, 0, v56);
  v36 = swift_checkMetadataState(0, v44);
  v46(1, v36, v45);
  v37 = v55;
  v43(v50, a4, v31);
  v38 = v54;
  (v48)(v37, a4, v57);
  v35(v38, 1, v56, AssociatedConformanceWitness);
  v40 = type metadata accessor for SIMD2(0, a4, v47, v39);
  return (*(*(v40 - 8) + 8))(v49, v40);
}

uint64_t SIMD2.debugDescription.getter(uint64_t a1)
{
  v1 = 0;
  v331 = a1;
  v336 = *(a1 + 16);
  v2 = MEMORY[0x1EEE9AC00](a1);
  v4 = &v320 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = (&v320 - v6);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v320 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v320 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v334 = &v320 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v322 = (&v320 - v17);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v324 = (&v320 - v19);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v326 = (&v320 - v21);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v329 = (&v320 - v23);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v333 = (&v320 - v25);
  v335 = v26;
  MEMORY[0x1EEE9AC00](v24);
  v332 = &v320 - v27;
  v28 = _StringGuts.init(_initialCapacity:)(17);
  v30 = v28;
  v31 = v29;
  v343 = v28;
  v344 = v29;
  object = HIBYTE(v29) & 0xF;
  v33 = v28 & 0xFFFFFFFFFFFFLL;
  if ((v29 & 0x2000000000000000) != 0)
  {
    v34 = HIBYTE(v29) & 0xF;
  }

  else
  {
    v34 = v28 & 0xFFFFFFFFFFFFLL;
  }

  v323 = v4;
  v325 = v7;
  v327 = v10;
  v330 = v13;
  if (v34 || (v28 & ~v29 & 0x2000000000000000) != 0)
  {
    if ((v29 & 0x2000000000000000) == 0 || object > 9)
    {
      0xE600000000000000;
      if ((v31 & 0x1000000000000000) == 0)
      {
        v42 = __OFADD__(v34, 6);
        countAndFlagsBits = v34 + 6;
        if (!v42)
        {
          goto LABEL_13;
        }

        goto LABEL_288;
      }

      goto LABEL_286;
    }

    v35 = 8 * HIBYTE(v29);
    v36 = (-255 << (v35 & 0x38)) - 1;
    v37 = 83 << (v35 & 0x38);
    v38 = object + 1;
    if (object >= 8)
    {
      v40 = v36 & v29 | v37;
      v39 = 8 * (v38 & 7);
    }

    else
    {
      v30 = v36 & v28 | v37;
      if (object != 7)
      {
        v30 = ((-255 << (8 * (v38 & 7u))) - 1) & v30 | (73 << (8 * (v38 & 7u)));
        if (object < 6)
        {
          v30 = ((-255 << ((v35 + 16) & 0x38)) - 1) & v30 | (77 << ((v35 + 16) & 0x38));
          if (object != 5)
          {
            v30 = ((-255 << ((v35 + 24) & 0x38)) - 1) & v30 | (68 << ((v35 + 24) & 0x38));
            if (object < 4)
            {
              v30 = ((0xFFFFFF0100000000 << (8 * object)) - 1) & v30 | (0x3200000000 << (8 * object));
              if (object != 3)
              {
                v30 = ((-255 << ((v35 + 40) & 0x38)) - 1) & v30 | (60 << ((v35 + 40) & 0x38));
                v33 = v29;
                v4 = 0;
                goto LABEL_33;
              }

              v54 = 0;
              v53 = v29;
LABEL_32:
              v4 = 0;
              v33 = ((-255 << v54) - 1) & v53 | (60 << v54);
LABEL_33:
              v1 = v336;
              v29;
              0xE600000000000000;
              v55 = 0xA000000000000000;
              if (!(v30 & 0x8080808080808080 | v33 & 0x80808080808080))
              {
                v55 = 0xE000000000000000;
              }

              v343 = v30;
              v344 = (v55 & 0xFF00000000000000 | (object << 56) | v33 & 0xFFFFFFFFFFFFFFLL) + 0x600000000000000;
              goto LABEL_49;
            }

            v52 = 0;
            v51 = v29;
LABEL_31:
            v53 = ((-255 << v52) - 1) & v51 | (50 << v52);
            v54 = (v35 + 40) & 0x38;
            goto LABEL_32;
          }

          v50 = 0;
          v49 = v29;
LABEL_30:
          v51 = ((-255 << v50) - 1) & v49 | (68 << v50);
          v52 = v35 & 0x38 ^ 0x20;
          goto LABEL_31;
        }

        v48 = 0;
        v47 = v29;
LABEL_29:
        v49 = ((-255 << v48) - 1) & v47 | (77 << v48);
        v50 = (v35 + 24) & 0x38;
        goto LABEL_30;
      }

      v39 = 0;
      v40 = v29;
    }

    v47 = ((-255 << v39) - 1) & v40 | (73 << v39);
    v48 = (v35 + 16) & 0x38;
    goto LABEL_29;
  }

  v29;
  v343 = 0x3C32444D4953;
  v344 = 0xE600000000000000;
LABEL_48:
  v4 = v1;
  v1 = v336;
LABEL_49:
  TypeName = swift_getTypeName(v1, 0);
  if (v67 < 0)
  {
LABEL_278:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v13 = TypeName;
  v30 = v67;
  if (_allASCII(_:)(TypeName, v67))
  {
    v69 = 1;
LABEL_52:
    if (!v30)
    {
LABEL_98:
      v1 = 0;
      v30 = 0xE000000000000000;
      goto LABEL_133;
    }

    if (v30 > 15)
    {
      v30 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v13, v30, v30, v69 & 1);
      v1 = *(v30 + 24);
      goto LABEL_133;
    }

    v103 = v30 - 8;
    v104 = 8;
    if (v30 < 8)
    {
      v104 = v30;
    }

    if (v30 >= 4)
    {
      v106 = v104 & 0xC;
      v68.i32[0] = *v13;
      v107 = vmovl_u16(*&vmovl_u8(v68));
      v108.i64[0] = v107.u32[0];
      v108.i64[1] = v107.u32[1];
      v109.i64[0] = 255;
      v109.i64[1] = 255;
      v110 = vandq_s8(v108, v109);
      v108.i64[0] = v107.u32[2];
      v108.i64[1] = v107.u32[3];
      v111 = vshlq_u64(vandq_s8(v108, v109), xmmword_18071DBA0);
      v112.i32[1] = 0;
      v113 = vshlq_u64(v110, xmmword_18071DBB0);
      if (v106 != 4)
      {
        v112.i32[0] = *(v13 + 4);
        v114 = vmovl_u16(*&vmovl_u8(v112));
        v115.i64[0] = v114.u32[2];
        v115.i64[1] = v114.u32[3];
        v116 = vandq_s8(v115, v109);
        v115.i64[0] = v114.u32[0];
        v115.i64[1] = v114.u32[1];
        v111 = vorrq_s8(vshlq_u64(v116, xmmword_18071DBD0), v111);
        v113 = vorrq_s8(vshlq_u64(vandq_s8(v115, v109), xmmword_18071DBC0), v113);
      }

      v117 = vorrq_s8(v113, v111);
      v1 = vorr_s8(*v117.i8, *&vextq_s8(v117, v117, 8uLL));
      if (v104 != v106)
      {
        v105 = 8 * v106;
        goto LABEL_123;
      }
    }

    else
    {
      v1 = 0;
      v105 = 0;
      v106 = 0;
LABEL_123:
      v118 = v104 - v106;
      v119 = (v13 + v106);
      do
      {
        v120 = *v119++;
        v1 |= v120 << (v105 & 0x38);
        v105 += 8;
        --v118;
      }

      while (v118);
    }

    if (v30 < 9)
    {
      v121 = 0;
    }

    else
    {
      v121 = 0;
      v122 = 0;
      v123 = (v13 + 8);
      do
      {
        v124 = *v123++;
        v121 |= v124 << v122;
        v122 += 8;
        --v103;
      }

      while (v103);
    }

    v125 = 0xA000000000000000;
    if (((v121 | v1) & 0x8080808080808080) == 0)
    {
      v125 = 0xE000000000000000;
    }

    v30 = v125 | (v30 << 56) | v121;
    goto LABEL_133;
  }

  if (!v30)
  {
    goto LABEL_98;
  }

  v31 = 0;
  v70 = (v13 + v30);
  v69 = 1;
  v71 = v13;
  v72 = v13;
  while (1)
  {
    v74 = *v72++;
    v73 = v74;
    if ((v74 & 0x80000000) == 0)
    {
      v75 = 1;
      goto LABEL_59;
    }

    if ((v73 + 11) <= 0xCCu)
    {
      LOBYTE(v337._countAndFlagsBits) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v73);
      goto LABEL_100;
    }

    if (v73 > 0xDFu)
    {
      break;
    }

    if (v72 == v70 || (*v72 & 0xC0) != 0x80)
    {
LABEL_269:
      v298 = 4;
      goto LABEL_270;
    }

    v69 = 0;
    v72 = v71 + 2;
    v75 = 2;
LABEL_59:
    v31 += v75;
    v71 = v72;
    if (v72 == v70)
    {
      goto LABEL_52;
    }
  }

  if (v73 == 224)
  {
    if (v72 == v70)
    {
      goto LABEL_269;
    }

    if (v71[1] - 192 < 0xFFFFFFE0)
    {
      goto LABEL_277;
    }

    goto LABEL_83;
  }

  if (v73 <= 0xECu)
  {
    goto LABEL_81;
  }

  if (v73 == 237)
  {
    if (v72 == v70)
    {
      goto LABEL_269;
    }

    v76 = v71[1];
    if (v76 > 0x9F || (v76 & 0xC0) != 0x80)
    {
      v298 = 1;
      goto LABEL_270;
    }

    goto LABEL_83;
  }

  if (v73 <= 0xEFu)
  {
LABEL_81:
    if (v72 == v70 || (v71[1] & 0xC0) != 0x80)
    {
      goto LABEL_269;
    }

LABEL_83:
    if (v71 + 2 == v70 || (v71[2] & 0xC0) != 0x80)
    {
      goto LABEL_269;
    }

    v69 = 0;
    v72 = v71 + 3;
    v75 = 3;
    goto LABEL_59;
  }

  if (v73 == 240)
  {
    if (v72 == v70)
    {
      goto LABEL_269;
    }

    if (v71[1] - 192 < 0xFFFFFFD0)
    {
LABEL_277:
      v298 = 3;
      goto LABEL_270;
    }

    goto LABEL_93;
  }

  if (v73 <= 0xF3u)
  {
    if (v72 == v70 || (v71[1] & 0xC0) != 0x80)
    {
      goto LABEL_269;
    }

    goto LABEL_93;
  }

  if (v72 == v70)
  {
    goto LABEL_269;
  }

  v77 = v71[1];
  if (v77 <= 0x8F && (v77 & 0xC0) == 0x80)
  {
LABEL_93:
    if (v71 + 2 == v70 || (v71[2] & 0xC0) != 0x80 || v71 + 3 == v70 || (v71[3] & 0xC0) != 0x80)
    {
      goto LABEL_269;
    }

    v69 = 0;
    v72 = v71 + 4;
    v75 = 4;
    goto LABEL_59;
  }

  v298 = 2;
LABEL_270:
  LOBYTE(v337._countAndFlagsBits) = v298;
LABEL_100:
  swift_willThrowTypedImpl(&v337, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
  v78 = specialized Collection.subscript.getter(v31, v13, v30);
  countAndFlagsBits = findInvalidRange #1 (_:) in validateUTF8(_:)(v78, v79, v80, v81);
  v337._countAndFlagsBits = 0;
  v337._object = 0xE000000000000000;
  if (__OFADD__(v30, 15))
  {
    __break(1u);
    while (1)
    {
      if ((object & 0x1000000000000000) != 0)
      {
        countAndFlagsBits = _StringGuts._foreignConvertedToSmall()(countAndFlagsBits, object);
        v319 = v318;
        object;
        object = v319;
LABEL_45:
        v62 = specialized _SmallString.init(_:appending:)(v30, v33, countAndFlagsBits, object);
        if (v64)
        {
          goto LABEL_309;
        }

        v33 = v62;
        v65 = v63;
        v31;
        swift_bridgeObjectRelease_n(0xE600000000000000, 2);
        v343 = v33;
        v344 = v65;
        goto LABEL_48;
      }

      if ((countAndFlagsBits & 0x1000000000000000) != 0)
      {
        v309 = ((object & 0xFFFFFFFFFFFFFFFLL) + 32);
        v310 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v309 = _StringObject.sharedUTF8.getter(countAndFlagsBits, object);
      }

      closure #1 in _StringGuts._convertedToSmall()(v309, v310, &v337, v60);
      if (!v1)
      {
        object;
        object = v337._object;
        countAndFlagsBits = v337._countAndFlagsBits;
        goto LABEL_45;
      }

      while (2)
      {
        v160 = v1;
LABEL_317:
        v160;
        __break(1u);
LABEL_318:
        v4;
        __break(1u);
LABEL_319:
        v141 = v311;
        v143 = v312;
        v33 = v328;
        v142 = v321;
        while (1)
        {
          v144 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v142, v141, v143);
          closure #1 in _StringGuts.append(_:)(v144, v145, &v343, v1 < 0);
          if (!v33)
          {
            goto LABEL_190;
          }

          v33;
          __break(1u);
LABEL_171:
          v146 = v126 + v33;
          if (v126 + v33 < 0x10)
          {
            if (v33)
            {
              v152 = 0;
              v153 = 0;
              v154 = 8 * v126;
              v155 = 8 * v33;
              v156 = v31;
              do
              {
                v157 = v30 >> (v152 & 0x38);
                if (v153 < 8)
                {
                  v157 = v1 >> v152;
                }

                v158 = (v157 << (v154 & 0x38)) | ((-255 << (v154 & 0x38)) - 1) & v156;
                v159 = (v157 << v154) | ((-255 << v154) - 1) & v13;
                if (v126 <= 7)
                {
                  v13 = v159;
                }

                else
                {
                  v156 = v158;
                }

                ++v126;
                v154 += 8;
                v152 += 8;
                ++v153;
              }

              while (v155 != v152);
            }

            else
            {
              v156 = v31;
            }

            v31;
            v30;
            v161 = 0xA000000000000000;
            if (!(v13 & 0x8080808080808080 | v156 & 0x80808080808080))
            {
              v161 = 0xE000000000000000;
            }

            v343 = v13;
            v344 = v161 & 0xFF00000000000000 | (v146 << 56) | v156 & 0xFFFFFFFFFFFFFFLL;
            goto LABEL_196;
          }

          v4 = 0;
          v127 = v1 & 0xFFFFFFFFFFFFLL;
          v10 = v33;
LABEL_143:
          v321 = v127;
          if ((v30 & 0x1000000000000000) != 0)
          {
            break;
          }

          v30;
          v128 = v10;
          if ((v31 & 0x1000000000000000) != 0)
          {
            goto LABEL_283;
          }

LABEL_145:
          v42 = __OFADD__(countAndFlagsBits, v128);
          countAndFlagsBits += v128;
          if (v42)
          {
            goto LABEL_285;
          }

LABEL_146:
          if ((v13 & ~v31 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v31 & 0xFFFFFFFFFFFFFFFLL))
          {
            v129 = _StringGuts.nativeUnusedCapacity.getter(v13, v31);
            if (v130)
            {
              goto LABEL_309;
            }

            v131 = (v31 >> 61) & 1;
            if (v129 < v128)
            {
              LODWORD(v131) = 1;
            }

            if (countAndFlagsBits <= 15 && v131 != 0)
            {
LABEL_155:
              if ((v31 & 0x2000000000000000) != 0)
              {
                v133 = v31;
                v4 = v328;
                goto LABEL_157;
              }

LABEL_289:
              v4 = v328;
              if ((v31 & 0x1000000000000000) != 0)
              {
                v13 = _StringGuts._foreignConvertedToSmall()(v13, v31);
                v133 = v314;
LABEL_157:
                v30;
                v134._rawBits = 1;
                v135._rawBits = (v10 << 16) | 1;
                v136._rawBits = _StringGuts.validateScalarRange(_:)(v134, v135, v1, v30)._rawBits;
                if (v136._rawBits < 0x10000)
                {
                  v136._rawBits |= 3;
                }

                if (v136._rawBits >> 16)
                {
                  v139 = 0;
                }

                else
                {
                  v139 = v137._rawBits >> 16 == v10;
                }

                if (v139)
                {
                  countAndFlagsBits = v30;
                }

                else
                {
                  v1 = specialized static String._copying(_:)(v136._rawBits, v137._rawBits, v1, v30);
                  countAndFlagsBits = v140;
                  v30;
                }

                if ((countAndFlagsBits & 0x2000000000000000) != 0)
                {
                  countAndFlagsBits;
LABEL_177:
                  v147 = specialized _SmallString.init(_:appending:)(v13, v133, v1, countAndFlagsBits);
                  if ((v149 & 1) == 0)
                  {
                    v150 = v147;
                    v151 = v148;
                    v31;
                    swift_bridgeObjectRelease_n(v30, 2);
                    v343 = v150;
                    v344 = v151;
                    goto LABEL_196;
                  }

LABEL_309:
                  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
                }

                if ((countAndFlagsBits & 0x1000000000000000) != 0)
                {
                  v1 = _StringGuts._foreignConvertedToSmall()(v1, countAndFlagsBits);
                  v316 = v315;
                  countAndFlagsBits;
                  countAndFlagsBits = v316;
                  goto LABEL_177;
                }

                if ((v1 & 0x1000000000000000) != 0)
                {
                  v307 = ((countAndFlagsBits & 0xFFFFFFFFFFFFFFFLL) + 32);
                  v308 = v1 & 0xFFFFFFFFFFFFLL;
                }

                else
                {
                  v307 = _StringObject.sharedUTF8.getter(v1, countAndFlagsBits);
                }

                closure #1 in _StringGuts._convertedToSmall()(v307, v308, &v337, v138);
                if (!v4)
                {
                  countAndFlagsBits;
                  countAndFlagsBits = v337._object;
                  v1 = v337._countAndFlagsBits;
                  goto LABEL_177;
                }
              }

              else
              {
                if ((v13 & 0x1000000000000000) != 0)
                {
                  v306 = ((v31 & 0xFFFFFFFFFFFFFFFLL) + 32);
                }

                else
                {
                  v306 = _StringObject.sharedUTF8.getter(v13, v31);
                  object = v317;
                }

                closure #1 in _StringGuts._convertedToSmall()(v306, object, &v337, v41);
                if (!v4)
                {
                  v133 = v337._object;
                  v13 = v337._countAndFlagsBits;
                  goto LABEL_157;
                }
              }

              goto LABEL_318;
            }
          }

          else if (countAndFlagsBits <= 15)
          {
            goto LABEL_155;
          }

          v31 = &v343;
          _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(countAndFlagsBits, v128);
          if ((v30 & 0x1000000000000000) != 0)
          {
            _StringGuts._foreignAppendInPlace(_:)(v1, v30, 0, v10);
LABEL_190:
            swift_bridgeObjectRelease_n(v30, 2);
            goto LABEL_196;
          }

          if (!v4)
          {
            v337._countAndFlagsBits = v1;
            v337._object = (v30 & 0xFFFFFFFFFFFFFFLL);
            closure #1 in _StringGuts.append(_:)(&v337, v33, &v343, (v30 & 0x4000000000000000) != 0);
            v160 = v328;
            if (!v328)
            {
              goto LABEL_190;
            }

            goto LABEL_317;
          }

          if ((v1 & 0x1000000000000000) == 0)
          {
            v311 = _StringObject.sharedUTF8.getter(v1, v30);
            if (v312 < v321)
            {
              goto LABEL_278;
            }

            goto LABEL_319;
          }

          v141 = (v30 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v142 = v321;
          v143 = v321;
          v33 = v328;
        }

        swift_bridgeObjectRetain_n(v30, 2);
        v300._rawBits = 1;
        v301._rawBits = (v10 << 16) | 1;
        v302._rawBits = _StringGuts.validateScalarRange(_:)(v300, v301, v1, v30)._rawBits;
        if (v302._rawBits < 0x10000)
        {
          v302._rawBits |= 3;
        }

        v128 = String.UTF8View.distance(from:to:)(v302, v303);
        v30;
        if ((v31 & 0x1000000000000000) == 0)
        {
          goto LABEL_145;
        }

LABEL_283:
        v304 = String.UTF8View._foreignCount()();
        countAndFlagsBits = v304 + v128;
        if (!__OFADD__(v304, v128))
        {
          goto LABEL_146;
        }

LABEL_285:
        __break(1u);
LABEL_286:
        v305 = String.UTF8View._foreignCount()();
        countAndFlagsBits = v305 + 6;
        if (__OFADD__(v305, 6))
        {
LABEL_288:
          __break(1u);
          goto LABEL_289;
        }

LABEL_13:
        if ((v30 & ~v31 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v31 & 0xFFFFFFFFFFFFFFFLL))
        {
          v44 = _StringGuts.nativeUnusedCapacity.getter(v30, v31);
          if (v45)
          {
            goto LABEL_309;
          }

          if (countAndFlagsBits > 15)
          {
            goto LABEL_25;
          }

          if ((v31 & 0x2000000000000000) == 0)
          {
            if (v44 < 6)
            {
              goto LABEL_19;
            }

LABEL_25:
            v31 = &v343;
            _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(countAndFlagsBits, 6);
            v337 = xmmword_18071DFD0;
            closure #1 in _StringGuts.append(_:)(&v337, 6uLL, &v343, 1);
            if (!v1)
            {
              swift_bridgeObjectRelease_n(0xE600000000000000, 2);
              goto LABEL_48;
            }

            continue;
          }

LABEL_37:
          v33 = v31;
        }

        else
        {
          if (countAndFlagsBits > 15)
          {
            goto LABEL_25;
          }

          if ((v31 & 0x2000000000000000) != 0)
          {
            goto LABEL_37;
          }

LABEL_19:
          if ((v31 & 0x1000000000000000) == 0)
          {
            if ((v30 & 0x1000000000000000) != 0)
            {
              v46 = ((v31 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v46 = _StringObject.sharedUTF8.getter(v30, v31);
              v33 = v313;
            }

            closure #1 in _StringGuts._convertedToSmall()(v46, v33, &v337, v41);
            if (!v1)
            {
              v33 = v337._object;
              v30 = v337._countAndFlagsBits;
              break;
            }

            continue;
          }

          v30 = _StringGuts._foreignConvertedToSmall()(v30, v31);
          v33 = v299;
        }

        break;
      }

      countAndFlagsBits = 0x3C32444D4953;
      object = 0xE600000000000000;
      0xE600000000000000;
      v56._rawBits = 1;
      v57._rawBits = 393217;
      v58._rawBits = _StringGuts.validateScalarRange(_:)(v56, v57, 0x3C32444D4953uLL, 0xE600000000000000)._rawBits;
      if (v58._rawBits < 0x10000)
      {
        v58._rawBits |= 3;
      }

      if (v58._rawBits >> 16 || (v59._rawBits & 0xFFFFFFFFFFFF0000) != 0x60000)
      {
        countAndFlagsBits = specialized static String._copying(_:)(v58._rawBits, v59._rawBits, 0x3C32444D4953uLL, 0xE600000000000000);
        object = v61;
        0xE600000000000000;
      }

      if ((object & 0x2000000000000000) != 0)
      {
        object;
        goto LABEL_45;
      }
    }
  }

  v33 = v82;
  v31 = &v337;
  _StringGuts.reserveCapacity(_:)(v30 + 15);
  v83 = countAndFlagsBits;
  while (1)
  {
    v84 = specialized Collection.subscript.getter(v83, v13, v30);
    v88 = v337._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v337._object & 0x2000000000000000) != 0)
    {
      v88 = (v337._object >> 56) & 0xF;
    }

    v42 = __OFADD__(v88, v30);
    v89 = v88 + v30;
    if (v42)
    {
      __break(1u);
LABEL_275:
      __break(1u);
LABEL_276:
      __break(1u);
      goto LABEL_277;
    }

    v90 = v84;
    if (__OFADD__(v89, 3))
    {
      goto LABEL_275;
    }

    object = v85;
    v91 = v86;
    v92 = v87;
    _StringGuts.reserveCapacity(_:)(v89 + 3);
    v93 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v90, object, v91, v92);
    v95 = v94;
    v31 = v337._object & 0xFFFFFFFFFFFFFFFLL;
    specialized UnsafeMutablePointer.initialize(from:count:)(v93, v94, ((v337._object & 0xFFFFFFFFFFFFFFFLL) + (*((v337._object & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) + 32));
    v96 = *(v31 + 24) & 0xFFFFFFFFFFFFLL;
    if (__OFADD__(v96, v95))
    {
      goto LABEL_276;
    }

    __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v96 + v95, 0);
    v337._countAndFlagsBits = *(v31 + 24);
    specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(0xFFFDu, &v337._countAndFlagsBits);
    v97 = specialized Collection.subscript.getter(v33, v13, v30);
    v13 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v97, v98, v99, v100);
    v30 = v101;
    if ((validateUTF8(_:)(v13, v101) & 0x8000000000000000) == 0)
    {
      break;
    }

    v33 = v102;
    if (!v30)
    {
      goto LABEL_115;
    }
  }

  _StringGuts.appendInPlace(_:isASCII:)(v13, v30, 0);
LABEL_115:
  v30 = v337._object;
  v1 = v337._countAndFlagsBits;
LABEL_133:
  v13 = v343;
  v31 = v344;
  v126 = HIBYTE(v344) & 0xF;
  object = v343 & 0xFFFFFFFFFFFFLL;
  if ((v344 & 0x2000000000000000) != 0)
  {
    countAndFlagsBits = HIBYTE(v344) & 0xF;
  }

  else
  {
    countAndFlagsBits = v343 & 0xFFFFFFFFFFFFLL;
  }

  if (countAndFlagsBits || (v343 & ~v344 & 0x2000000000000000) != 0)
  {
    v328 = v4;
    v4 = (v30 & 0x2000000000000000) == 0;
    v33 = HIBYTE(v30) & 0xF;
    if ((v344 & 0x2000000000000000) != 0)
    {
      if ((v30 & 0x2000000000000000) != 0)
      {
        goto LABEL_171;
      }

      v127 = v1 & 0xFFFFFFFFFFFFLL;
      v4 = 1;
    }

    else
    {
      v127 = v1 & 0xFFFFFFFFFFFFLL;
      v10 = HIBYTE(v30) & 0xF;
      if ((v30 & 0x2000000000000000) != 0)
      {
        goto LABEL_143;
      }
    }

    v10 = v127;
    goto LABEL_143;
  }

  v344;
  v343 = v1;
  v344 = v30;
LABEL_196:
  v162 = v336;
  v164 = v334;
  v163 = v335;
  v165 = v344;
  v166 = HIBYTE(v344) & 0xF;
  if ((v344 & 0x2000000000000000) == 0)
  {
    v166 = v343 & 0xFFFFFFFFFFFFLL;
  }

  if (v166 || (v343 & ~v344 & 0x2000000000000000) != 0)
  {
    if ((v344 & 0x2000000000000000) != 0 && (v167 = specialized _SmallString.init(_:appending:)(v343, v344, 0x283EuLL, 0xE200000000000000), (v169 & 1) == 0))
    {
      v178 = v167;
      v179 = v168;
      v165;
      0xE200000000000000;
      v343 = v178;
      v344 = v179;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(10302, 0xE200000000000000, 0, 2, v170, v171, v172, v173, v174, v175, v176, v177);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v344;
    v343 = 10302;
    v344 = 0xE200000000000000;
  }

  v180 = *(v331 + 24);
  swift_getAssociatedTypeWitness(255, v180, v162, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v182 = v181;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v180, v162, v181, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v184 = *(AssociatedConformanceWitness + 56);
  v185 = swift_checkMetadataState(0, v182);
  v186 = v332;
  v184(0, v185, AssociatedConformanceWitness);
  v338 = v162;
  v187 = __swift_allocate_boxed_opaque_existential_0Tm(&v337);
  memcpy(v187, v186, v163);
  v188 = v338;
  v189 = __swift_project_boxed_opaque_existential_0Tm(&v337, v338);
  DynamicType = swift_getDynamicType(v189, v188, 1);
  LODWORD(v188) = swift_isOptionalType(DynamicType);
  __swift_destroy_boxed_opaque_existential_1Tm(&v337._countAndFlagsBits);
  if (v188)
  {
    v191 = v333;
    memcpy(v333, v186, v163);
    v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v337, v191, v162, v192, 7uLL);
    goto LABEL_207;
  }

  v207 = v329;
  memcpy(v329, v186, v163);
  if ((swift_dynamicCast(&v337, v207, v162, &type metadata for String, 6uLL) & 1) == 0)
  {
    v231 = v326;
    memcpy(v326, v186, v163);
    v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
    if (swift_dynamicCast(&v340, v231, v162, v232, 6uLL))
    {
      _ss9CodingKey_pWOb_0(&v340, &v337);
      v233 = v338;
      v234 = v339;
      __swift_project_boxed_opaque_existential_0Tm(&v337, v338);
      (*(v234 + 8))(&v343, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v233, v234);
    }

    else
    {
      v342 = 0;
      v340 = 0u;
      v341 = 0u;
      outlined destroy of _HasContiguousBytes?(&v340, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
      v277 = v324;
      memcpy(v324, v186, v163);
      v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
      if (swift_dynamicCast(&v340, v277, v162, v278, 6uLL))
      {
        _ss9CodingKey_pWOb_0(&v340, &v337);
        v279 = v338;
        v280 = v339;
        __swift_project_boxed_opaque_existential_0Tm(&v337, v338);
        v195 = (*(v280 + 8))(v279, v280);
      }

      else
      {
        v342 = 0;
        v340 = 0u;
        v341 = 0u;
        outlined destroy of _HasContiguousBytes?(&v340, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
        v287 = v322;
        memcpy(v322, v186, v163);
        v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
        if (!swift_dynamicCast(&v340, v287, v162, v288, 6uLL))
        {
          v342 = 0;
          v340 = 0u;
          v341 = 0u;
          outlined destroy of _HasContiguousBytes?(&v340, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
          *(&v341 + 1) = v162;
          v292 = __swift_allocate_boxed_opaque_existential_0Tm(&v340);
          memcpy(v292, v186, v163);
          Mirror.init(reflecting:)(&v340, &v337);
          v293 = v337._object;
          v294 = v339;
          _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v186, &v337, &v343, 0, v162, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
          v294;
          v293;
          goto LABEL_220;
        }

        _ss9CodingKey_pWOb_0(&v340, &v337);
LABEL_207:
        v193 = v338;
        v194 = v339;
        __swift_project_boxed_opaque_existential_0Tm(&v337, v338);
        v195 = (*(v194 + 8))(v193, v194);
      }

      v205 = v196;
      v206 = HIBYTE(v344) & 0xF;
      if ((v344 & 0x2000000000000000) == 0)
      {
        v206 = v343 & 0xFFFFFFFFFFFFLL;
      }

      if (v206 || (v343 & ~v344 & 0x2000000000000000) != 0)
      {
        _StringGuts.append(_:)(v195, v196, v197, v198, v199, v200, v201, v202, v203, v204);
        v205;
      }

      else
      {
        v285 = v195;
        v344;
        v343 = v285;
        v344 = v205;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v337._countAndFlagsBits);
    goto LABEL_220;
  }

  v216 = v337._object;
  v217 = HIBYTE(v344) & 0xF;
  if ((v344 & 0x2000000000000000) == 0)
  {
    v217 = v343 & 0xFFFFFFFFFFFFLL;
  }

  if (v217 || (v343 & ~v344 & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(v337._countAndFlagsBits, v337._object, v208, v209, v210, v211, v212, v213, v214, v215);
    v216;
  }

  else
  {
    v291 = v337._countAndFlagsBits;
    v344;
    v343 = v291;
    v344 = v216;
  }

LABEL_220:
  v218 = v344;
  v219 = HIBYTE(v344) & 0xF;
  if ((v344 & 0x2000000000000000) == 0)
  {
    v219 = v343 & 0xFFFFFFFFFFFFLL;
  }

  if (v219 || (v343 & ~v344 & 0x2000000000000000) != 0)
  {
    if ((v344 & 0x2000000000000000) != 0 && (v220 = specialized _SmallString.init(_:appending:)(v343, v344, 0x202CuLL, 0xE200000000000000), (v222 & 1) == 0))
    {
      v235 = v220;
      v236 = v221;
      v218;
      0xE200000000000000;
      v343 = v235;
      v344 = v236;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v223, v224, v225, v226, v227, v228, v229, v230);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v344;
    v343 = 8236;
    v344 = 0xE200000000000000;
  }

  v184(1, v185, AssociatedConformanceWitness);
  v338 = v162;
  v237 = __swift_allocate_boxed_opaque_existential_0Tm(&v337);
  memcpy(v237, v164, v163);
  v238 = v338;
  v239 = __swift_project_boxed_opaque_existential_0Tm(&v337, v338);
  v240 = swift_getDynamicType(v239, v238, 1);
  LODWORD(v238) = swift_isOptionalType(v240);
  __swift_destroy_boxed_opaque_existential_1Tm(&v337._countAndFlagsBits);
  if (v238)
  {
    v241 = v333;
    memcpy(v333, v164, v163);
    v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v337, v241, v162, v242, 7uLL);
    goto LABEL_233;
  }

  v257 = v330;
  memcpy(v330, v164, v163);
  if (swift_dynamicCast(&v337, v257, v162, &type metadata for String, 6uLL))
  {
    v258 = v337._object;
    String.write(_:)(v337);
    v258;
    goto LABEL_242;
  }

  v272 = v327;
  memcpy(v327, v164, v163);
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v340, v272, v162, v273, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v340, &v337);
    v274 = v338;
    v275 = v339;
    __swift_project_boxed_opaque_existential_0Tm(&v337, v338);
    (*(v275 + 8))(&v343, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v274, v275);
LABEL_239:
    __swift_destroy_boxed_opaque_existential_1Tm(&v337._countAndFlagsBits);
    goto LABEL_242;
  }

  v342 = 0;
  v340 = 0u;
  v341 = 0u;
  outlined destroy of _HasContiguousBytes?(&v340, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v281 = v325;
  memcpy(v325, v164, v163);
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v340, v281, v162, v282, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v340, &v337);
    v283 = v338;
    v284 = v339;
    __swift_project_boxed_opaque_existential_0Tm(&v337, v338);
    v245 = (*(v284 + 8))(v283, v284);
LABEL_234:
    v255 = v246;
    v256 = HIBYTE(v344) & 0xF;
    if ((v344 & 0x2000000000000000) == 0)
    {
      v256 = v343 & 0xFFFFFFFFFFFFLL;
    }

    if (v256 || (v343 & ~v344 & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v245, v246, v247, v248, v249, v250, v251, v252, v253, v254);
      v255;
    }

    else
    {
      v286 = v245;
      v344;
      v343 = v286;
      v344 = v255;
    }

    goto LABEL_239;
  }

  v342 = 0;
  v340 = 0u;
  v341 = 0u;
  outlined destroy of _HasContiguousBytes?(&v340, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v289 = v323;
  memcpy(v323, v164, v163);
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v340, v289, v162, v290, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v340, &v337);
LABEL_233:
    v243 = v338;
    v244 = v339;
    __swift_project_boxed_opaque_existential_0Tm(&v337, v338);
    v245 = (*(v244 + 8))(v243, v244);
    goto LABEL_234;
  }

  v342 = 0;
  v340 = 0u;
  v341 = 0u;
  outlined destroy of _HasContiguousBytes?(&v340, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v341 + 1) = v162;
  v295 = __swift_allocate_boxed_opaque_existential_0Tm(&v340);
  memcpy(v295, v164, v163);
  Mirror.init(reflecting:)(&v340, &v337);
  v296 = v337._object;
  v297 = v339;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v164, &v337, &v343, 0, v162, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v297;
  v296;
LABEL_242:
  v259 = v344;
  v260 = HIBYTE(v344) & 0xF;
  if ((v344 & 0x2000000000000000) == 0)
  {
    v260 = v343 & 0xFFFFFFFFFFFFLL;
  }

  if (v260 || (v343 & ~v344 & 0x2000000000000000) != 0)
  {
    if ((v344 & 0x2000000000000000) != 0 && (v261 = specialized _SmallString.init(_:appending:)(v343, v344, 0x29uLL, 0xE100000000000000), (v262 & 1) == 0))
    {
      v276 = v261;
      v259;
      0xE100000000000000;
      return v276;
    }

    else
    {
      0xE100000000000000;
      _StringGuts.append(_:)(41, 0xE100000000000000, 0, 1, v263, v264, v265, v266, v267, v268, v269, v270);
      swift_bridgeObjectRelease_n(0xE100000000000000, 2);
      return v343;
    }
  }

  else
  {
    v344;
    return 41;
  }
}

uint64_t SIMD2<>.init<A>(_:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v43 = a4;
  v44 = a6;
  v39 = a1;
  v47 = a8;
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v15;
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v19 = v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v18, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v46 = v19;
  (*(AssociatedConformanceWitness + 48))(v19, AssociatedConformanceWitness);
  v42 = a7;
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v21 = v20;
  v37 = a3;
  v38 = v20;
  v22 = swift_getAssociatedConformanceWitness(a7, a3, v20, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v40 = *(v22 + 56);
  v23 = v40;
  v24 = swift_checkMetadataState(0, v21);
  v25 = v14;
  v23(0, v24, v22);
  v26 = *(v43 + 16);
  v27 = *(v44 + 8);
  v43 = *(v26 + 72);
  v44 = v27;
  v28 = v14;
  v29 = v41;
  (v43)(v28, a3);
  v36 = *(AssociatedConformanceWitness + 64);
  (v36)(v17, 0, v46);
  v30 = swift_checkMetadataState(0, v38);
  v31 = v39;
  v40(1, v30, v22);
  v32 = v37;
  (v43)(v25, v37, v44, v29, v26);
  v36(v17, 1, v46, AssociatedConformanceWitness);
  v34 = type metadata accessor for SIMD2(0, v32, v42, v33);
  return (*(*(v34 - 8) + 8))(v31, v34);
}

{
  v43 = a4;
  v44 = a6;
  v35 = a1;
  v37 = a8;
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v15;
  MEMORY[0x1EEE9AC00](v12);
  v39 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v18 = v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v17, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v42 = v18;
  (*(AssociatedConformanceWitness + 48))(v18, AssociatedConformanceWitness);
  v19 = a7;
  v38 = a7;
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v21 = v20;
  v33 = a3;
  v22 = swift_getAssociatedConformanceWitness(v19, a3, v20, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v36 = *(v22 + 56);
  v23 = v36;
  v24 = swift_checkMetadataState(0, v21);
  v23(0, v24, v22);
  v34 = *(v43 + 80);
  v25 = v39;
  v34(v14, a3, v44);
  v26 = *(AssociatedConformanceWitness + 64);
  (v26)(v25, 0, v42);
  v27 = swift_checkMetadataState(0, v21);
  v28 = v35;
  v36(1, v27, v22);
  v29 = v33;
  v34(v14, v33, v44);
  v26(v25, 1, v42, AssociatedConformanceWitness);
  v31 = type metadata accessor for SIMD2(0, v29, v38, v30);
  return (*(*(v31 - 8) + 8))(v28, v31);
}

uint64_t key path getter for SIMD4.subscript(_:) : <A>SIMD4<A>A(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2 >= 4)
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

uint64_t key path setter for SIMD4.subscript(_:) : <A>SIMD4<A>A(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v18 - v6;
  v9 = *v8;
  memcpy(&v18 - v6, v10, v11);
  if (v9 >= 4)
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

uint64_t (*SIMD4.subscript.modify(void *a1, unint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x40, 0x9317uLL);
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
    v7[3] = swift_coroFrameAlloc(v10, 0x9317uLL);
    v8[4] = swift_coroFrameAlloc(v10, 0x9317uLL);
    v11 = swift_coroFrameAlloc(v10, 0x9317uLL);
  }

  else
  {
    v7[3] = malloc(v10);
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v8[5] = v11;
  if (a2 >= 4)
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

uint64_t SIMD4.init(_:_:_:_:)(const void *a1, const void *a2, const void *a3, const void *a4, const char *a5, swift *a6)
{
  v19 = a4;
  v11 = *(*(a5 - 1) + 64);
  MEMORY[0x1EEE9AC00](a1);
  swift_getAssociatedTypeWitness(0, v12, a5, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a6, a5, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  (*(AssociatedConformanceWitness + 48))(v14, AssociatedConformanceWitness);
  memcpy(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v16 = *(AssociatedConformanceWitness + 64);
  v16(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 0, v14, AssociatedConformanceWitness);
  memcpy(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11);
  v16(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v14, AssociatedConformanceWitness);
  memcpy(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v11);
  v16(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 2, v14, AssociatedConformanceWitness);
  memcpy(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v11);
  return (v16)(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 3, v14, AssociatedConformanceWitness);
}

uint64_t (*SIMD4.x.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0xDF93uLL);
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
    v5[2] = swift_coroFrameAlloc(v8, 0xDF93uLL);
    v9 = swift_coroFrameAlloc(v8, 0xDF93uLL);
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

uint64_t (*SIMD4.y.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x7F58uLL);
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
    v5[2] = swift_coroFrameAlloc(v8, 0x7F58uLL);
    v9 = swift_coroFrameAlloc(v8, 0x7F58uLL);
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

uint64_t (*SIMD4.z.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0xDD9uLL);
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
    v5[2] = swift_coroFrameAlloc(v8, 0xDD9uLL);
    v9 = swift_coroFrameAlloc(v8, 0xDD9uLL);
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
  return SIMD4.z.modify;
}

void (*SIMD4.w.modify(void *a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x597BuLL);
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
    v5[2] = swift_coroFrameAlloc(v8, 0x597BuLL);
    v9 = swift_coroFrameAlloc(v8, 0x597BuLL);
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
  v14(3, v15, AssociatedConformanceWitness);
  return SIMD4.w.modify;
}

uint64_t SIMD4.init(lowHalf:highHalf:)(uint64_t a1, uint64_t a2, const char *a3, int **a4)
{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v8, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  (*(AssociatedConformanceWitness + 48))(v9, AssociatedConformanceWitness);
  v12 = type metadata accessor for SIMD4(0, a3, a4, v11);
  specialized SIMD4.lowHalf.setter(a1, v12, 0, 1);
  v14 = type metadata accessor for SIMD2(0, a3, a4, v13);
  v16 = *(*(v14 - 8) + 8);
  (v16)((v14 - 8), a1, v14);
  specialized SIMD4.lowHalf.setter(a2, v12, 2, 3);

  return v16(a2, v14);
}

uint64_t SIMD4.lowHalf.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized SIMD4.lowHalf.setter(a1, a2, a3, a4);
  v7 = type metadata accessor for SIMD2(0, *(a2 + 16), *(a2 + 24), v6);
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

void (*SIMD4.lowHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x9195uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD2(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0x9195uLL);
    v11 = swift_coroFrameAlloc(v10, 0x9195uLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD4.lowHalf.getter(a2, v11);
  return SIMD4.lowHalf.modify;
}

void (*SIMD4.highHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x4492uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD2(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0x4492uLL);
    v11 = swift_coroFrameAlloc(v10, 0x4492uLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD4.highHalf.getter(a2, v11);
  return SIMD4.highHalf.modify;
}

void SIMD4.lowHalf.modify(uint64_t **a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v9 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[4], v6, v7);
    specialized SIMD4.lowHalf.setter(v5, v9, a3, a4);
    v12 = *(v8 + 8);
    v12(v5, v7);
    v12(v6, v7);
  }

  else
  {
    specialized SIMD4.lowHalf.setter((*a1)[5], v9, a3, a4);
    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);

  free(v4);
}

void (*SIMD4.evenHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x9242uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD2(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0x9242uLL);
    v11 = swift_coroFrameAlloc(v10, 0x9242uLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD4.evenHalf.getter(a2, v11);
  return SIMD4.evenHalf.modify;
}

uint64_t SIMD4.lowHalf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a2;
  v24 = a3;
  v22 = a4;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 24);
  swift_getAssociatedTypeWitness(0, v8, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v4, v9, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  (*(AssociatedConformanceWitness + 48))(v10, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, v8, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v13 = v12;
  v14 = swift_getAssociatedConformanceWitness(v8, v4, v12, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v21 = *(v14 + 56);
  v15 = v21;
  v16 = swift_checkMetadataState(0, v13);
  v15(v23, v16, v14);
  v17 = *(AssociatedConformanceWitness + 64);
  v17(v7, 0, v10, AssociatedConformanceWitness);
  v18 = swift_checkMetadataState(0, v13);
  v21(v24, v18, v14);
  return v17(v7, 1, v10, AssociatedConformanceWitness);
}

void (*SIMD4.oddHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x3B85uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD2(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0x3B85uLL);
    v11 = swift_coroFrameAlloc(v10, 0x3B85uLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD4.oddHalf.getter(a2, v11);
  return SIMD4.oddHalf.modify;
}

uint64_t protocol witness for SIMDStorage.subscript.getter in conformance SIMD4<A>(unint64_t a1, uint64_t a2)
{
  if (a1 >= 4)
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

uint64_t protocol witness for SIMDStorage.subscript.setter in conformance SIMD4<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 4)
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

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance SIMD4<A>(void *a1, unint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x40, 0x76D3uLL);
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
    v7[3] = swift_coroFrameAlloc(v10, 0x76D3uLL);
    v8[4] = swift_coroFrameAlloc(v10, 0x76D3uLL);
    v11 = swift_coroFrameAlloc(v10, 0x76D3uLL);
  }

  else
  {
    v7[3] = malloc(v10);
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v8[5] = v11;
  if (a2 >= 4)
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

uint64_t protocol witness for Hashable.hash(into:) in conformance SIMD4<A>(uint64_t a1, const char *a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD4<A>, a2, a3);

  return SIMD.hash(into:)(a1, a2, WitnessTable);
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance SIMD4<A>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD4<A>, a1, a3);

  return SIMD.description.getter(a1, WitnessTable);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance SIMD4<A>@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD4<A>, a2, a3);

  return SIMD.init(arrayLiteral:)(a1, a2, WitnessTable, a4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SIMD4<A>(uint64_t a1, uint64_t a2, uint64_t a3)
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

  while (v7 != 4);
  return v8 & 1;
}

uint64_t SIMD4<>.init<A>(truncatingIfNeeded:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v65 = a6;
  v68 = a4;
  v61 = a1;
  v70 = a8;
  v12 = MEMORY[0x1EEE9AC00](a1);
  v69 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v17 = v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v16, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v19 = *(AssociatedConformanceWitness + 48);
  v71 = v17;
  v20 = AssociatedConformanceWitness;
  v19(v17);
  v56 = a7;
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v22 = v21;
  v60 = v21;
  v23 = swift_getAssociatedConformanceWitness(a7, a3, v21, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v62 = *(v23 + 56);
  v24 = v62;
  v63 = v23 + 56;
  v25 = swift_checkMetadataState(0, v22);
  v26 = v69;
  v66 = v23;
  v24(0, v25, v23);
  v27 = *(v68 + 8);
  v58 = a2;
  v59 = v27;
  v67 = *(v27 + 96);
  v68 = v27 + 96;
  v29 = v26;
  v55 = *(v65 + 8);
  v28 = v55;
  v67(v26, a3, v55, a2, v27);
  v57 = v20;
  v64 = *(v20 + 64);
  v65 = v20 + 64;
  v30 = v15;
  v64(v15, 0, v71, v20);
  v31 = v60;
  v32 = swift_checkMetadataState(0, v60);
  v33 = v23;
  v34 = v62;
  v62(1, v32, v33);
  v54 = a3;
  v35 = v28;
  v36 = v59;
  (v67)(v29, a3, v35);
  v37 = v71;
  v38 = v57;
  v64(v30, 1, v71, v57);
  v39 = swift_checkMetadataState(0, v31);
  v40 = v69;
  v34(2, v39, v66);
  v41 = a3;
  v42 = v55;
  v43 = v58;
  v44 = v67;
  v67(v40, v41, v55, v58, v36);
  v45 = v38;
  v46 = v64;
  v64(v30, 2, v37, v45);
  v47 = swift_checkMetadataState(0, v60);
  v48 = v61;
  v62(3, v47, v66);
  v49 = v40;
  v50 = v54;
  v44(v49, v54, v42, v43, v59);
  v46(v30, 3, v71, v57);
  v52 = type metadata accessor for SIMD4(0, v50, v56, v51);
  return (*(*(v52 - 8) + 8))(v48, v52);
}

uint64_t SIMD4<>.init<A>(clamping:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v65 = a6;
  v68 = a4;
  v61 = a1;
  v70 = a8;
  v12 = MEMORY[0x1EEE9AC00](a1);
  v69 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v17 = v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v16, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v19 = *(AssociatedConformanceWitness + 48);
  v71 = v17;
  v20 = AssociatedConformanceWitness;
  v19(v17);
  v56 = a7;
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v22 = v21;
  v60 = v21;
  v23 = swift_getAssociatedConformanceWitness(a7, a3, v21, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v62 = *(v23 + 56);
  v24 = v62;
  v63 = v23 + 56;
  v25 = swift_checkMetadataState(0, v22);
  v26 = v69;
  v66 = v23;
  v24(0, v25, v23);
  v27 = *(v68 + 8);
  v58 = a2;
  v59 = v27;
  v67 = *(v27 + 104);
  v68 = v27 + 104;
  v29 = v26;
  v55 = *(v65 + 8);
  v28 = v55;
  v67(v26, a3, v55, a2, v27);
  v57 = v20;
  v64 = *(v20 + 64);
  v65 = v20 + 64;
  v30 = v15;
  v64(v15, 0, v71, v20);
  v31 = v60;
  v32 = swift_checkMetadataState(0, v60);
  v33 = v23;
  v34 = v62;
  v62(1, v32, v33);
  v54 = a3;
  v35 = v28;
  v36 = v59;
  (v67)(v29, a3, v35);
  v37 = v71;
  v38 = v57;
  v64(v30, 1, v71, v57);
  v39 = swift_checkMetadataState(0, v31);
  v40 = v69;
  v34(2, v39, v66);
  v41 = a3;
  v42 = v55;
  v43 = v58;
  v44 = v67;
  v67(v40, v41, v55, v58, v36);
  v45 = v38;
  v46 = v64;
  v64(v30, 2, v37, v45);
  v47 = swift_checkMetadataState(0, v60);
  v48 = v61;
  v62(3, v47, v66);
  v49 = v40;
  v50 = v54;
  v44(v49, v54, v42, v43, v59);
  v46(v30, 3, v71, v57);
  v52 = type metadata accessor for SIMD4(0, v50, v56, v51);
  return (*(*(v52 - 8) + 8))(v48, v52);
}

uint64_t SIMD4<>.init<A>(_:rounding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, const char *a4@<X3>, uint64_t a5@<X4>, swift *a6@<X5>, uint64_t a7@<X6>, int **a8@<X7>, uint64_t a9@<X8>)
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
  swift_getAssociatedTypeWitness(0, v22, v21, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v24 = v23;
  v45 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a6, a3, v23, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v26 = *(AssociatedConformanceWitness + 48);
  v43 = a9;
  v41 = v24;
  v26(v24, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a8, a4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v37 = a8;
  v48 = a4;
  v40 = v27;
  v28 = swift_getAssociatedConformanceWitness(a8, a4, v27, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
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

  while (v29 != 4);
  v34 = type metadata accessor for SIMD4(0, v48, v37, v33);
  return (*(*(v34 - 8) + 8))(v49, v34);
}

uint64_t SIMD4.debugDescription.getter(uint64_t a1)
{
  v424 = a1;
  v1 = *(a1 + 16);
  v2 = *(*(v1 - 1) + 64);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v415 = (&v407 - v5);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v419 = (&v407 - v7);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v423 = (&v407 - v9);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v428 = &v407 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v410 = (&v407 - v13);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v414 = (&v407 - v15);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v418 = (&v407 - v17);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v422 = (&v407 - v19);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v427 = &v407 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v409 = (&v407 - v23);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v413 = (&v407 - v25);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v417 = (&v407 - v27);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v421 = (&v407 - v29);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v426 = &v407 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v408 = (&v407 - v33);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v412 = (&v407 - v35);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v416 = (&v407 - v37);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v420 = (&v407 - v39);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v429 = (&v407 - v41);
  MEMORY[0x1EEE9AC00](v40);
  v425 = &v407 - v42;
  v43 = _StringGuts.init(_initialCapacity:)(25);
  countAndFlagsBits = v43;
  v46 = v44;
  v436._countAndFlagsBits = v43;
  v436._object = v44;
  v47 = HIBYTE(v44) & 0xF;
  v48 = v43 & 0xFFFFFFFFFFFFLL;
  if ((v44 & 0x2000000000000000) != 0)
  {
    v49 = HIBYTE(v44) & 0xF;
  }

  else
  {
    v49 = v43 & 0xFFFFFFFFFFFFLL;
  }

  v411 = (&v407 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!v49 && (v43 & ~v44 & 0x2000000000000000) == 0)
  {
    v436._countAndFlagsBits = 0x3C34444D4953;
    v436._object = 0xE600000000000000;
    goto LABEL_35;
  }

  if ((v44 & 0x2000000000000000) != 0)
  {
    v50 = specialized _SmallString.init(_:appending:)(v43, v44, 0x3C34444D4953uLL, 0xE600000000000000);
    if ((v70 & 1) == 0)
    {
LABEL_33:
      v72 = v50;
      v73 = v51;
      v46;
      0xE600000000000000;
      v436._countAndFlagsBits = v72;
      v436._object = v73;
      goto LABEL_36;
    }

    v50 = 0xE600000000000000;
    if ((v46 & 0x1000000000000000) == 0)
    {
      LOBYTE(v53) = 1;
      v71 = __OFADD__(v47, 6);
      v54 = v47 + 6;
      if (!v71)
      {
        goto LABEL_9;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }
  }

  else
  {
    v50 = 0xE600000000000000;
    if ((v46 & 0x1000000000000000) == 0)
    {
      LOBYTE(v53) = 1;
      v54 = v48 + 6;
      if (!__OFADD__(v48, 6))
      {
        goto LABEL_9;
      }

      goto LABEL_32;
    }
  }

  v50 = String.UTF8View._foreignCount()();
  LOBYTE(v53) = 0;
  v54 = v50 + 6;
  if (__OFADD__(v50, 6))
  {
    goto LABEL_32;
  }

LABEL_9:
  if ((countAndFlagsBits & ~v46 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v46 & 0xFFFFFFFFFFFFFFFLL))
  {
    v55 = _StringGuts.nativeUnusedCapacity.getter(countAndFlagsBits, v46);
    if (v56)
    {
LABEL_286:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v54 > 15 || (v46 & 0x2000000000000000) == 0 && v55 > 5)
    {
LABEL_15:
      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v54, 6);
      v430 = xmmword_18071DFE0;
      closure #1 in _StringGuts.append(_:)(&v430, 6uLL, &v436, 1);
      swift_bridgeObjectRelease_n(0xE600000000000000, 2);
      goto LABEL_36;
    }
  }

  else if (v54 > 15)
  {
    goto LABEL_15;
  }

  if ((v46 & 0x2000000000000000) != 0)
  {
    object = v46;
    goto LABEL_19;
  }

  while (2)
  {
    if (v53)
    {
      if ((countAndFlagsBits & 0x1000000000000000) != 0)
      {
        v400 = ((v46 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v400 = _StringObject.sharedUTF8.getter(countAndFlagsBits, v46);
        v48 = v406;
      }

      closure #1 in _StringGuts._convertedToSmall()(v400, v48, &v430, v52);
      object = v430._object;
      countAndFlagsBits = v430._countAndFlagsBits;
    }

    else
    {
      countAndFlagsBits = _StringGuts._foreignConvertedToSmall()(countAndFlagsBits, v46);
      object = v403;
    }

LABEL_19:
    v58 = 0x3C34444D4953;
    v48 = 0xE600000000000000;
    0xE600000000000000;
    v59._rawBits = 1;
    v60._rawBits = 393217;
    v61._rawBits = _StringGuts.validateScalarRange(_:)(v59, v60, 0x3C34444D4953uLL, 0xE600000000000000)._rawBits;
    if (v61._rawBits < 0x10000)
    {
      v61._rawBits |= 3;
    }

    if (v61._rawBits >> 16 || (v62._rawBits & 0xFFFFFFFFFFFF0000) != 0x60000)
    {
      v58 = specialized static String._copying(_:)(v61._rawBits, v62._rawBits, 0x3C34444D4953uLL, 0xE600000000000000);
      v48 = v64;
      0xE600000000000000;
    }

    if ((v48 & 0x2000000000000000) != 0)
    {
      v48;
    }

    else if ((v48 & 0x1000000000000000) != 0)
    {
      v58 = _StringGuts._foreignConvertedToSmall()(v58, v48);
      v405 = v404;
      v48;
      v48 = v405;
    }

    else
    {
      if ((v58 & 0x1000000000000000) != 0)
      {
        v401 = ((v48 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v402 = v58 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v401 = _StringObject.sharedUTF8.getter(v58, v48);
      }

      closure #1 in _StringGuts._convertedToSmall()(v401, v402, &v430, v63);
      v48;
      v48 = v430._object;
      v58 = v430._countAndFlagsBits;
    }

    v65 = specialized _SmallString.init(_:appending:)(countAndFlagsBits, object, v58, v48);
    if (v67)
    {
      goto LABEL_286;
    }

    v68 = v65;
    v69 = v66;
    swift_bridgeObjectRelease_n(0xE600000000000000, 2);
    v436._countAndFlagsBits = v68;
    v436._object = v69;
LABEL_35:
    v46;
LABEL_36:
    TypeName = swift_getTypeName(v1, 0);
    if (v75 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    countAndFlagsBits = TypeName;
    v76 = v75;
    if (_allASCII(_:)(TypeName, v75))
    {
      v78 = 1;
LABEL_39:
      if (!v76)
      {
LABEL_85:
        v80 = 0;
        v79 = 0xE000000000000000;
        goto LABEL_119;
      }

      if (v76 > 15)
      {
        v79 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(countAndFlagsBits, v76, v76, v78 & 1);
        v80 = *(v79 + 24);
        goto LABEL_119;
      }

      v118 = v76 - 8;
      v119 = 8;
      if (v76 < 8)
      {
        v119 = v76;
      }

      if (v76 >= 4)
      {
        v121 = v119 & 0xC;
        v77.i32[0] = *countAndFlagsBits;
        v122 = vmovl_u16(*&vmovl_u8(v77));
        v123.i64[0] = v122.u32[0];
        v123.i64[1] = v122.u32[1];
        v124.i64[0] = 255;
        v124.i64[1] = 255;
        v125 = vandq_s8(v123, v124);
        v123.i64[0] = v122.u32[2];
        v123.i64[1] = v122.u32[3];
        v126 = vshlq_u64(vandq_s8(v123, v124), xmmword_18071DBA0);
        v127.i32[1] = 0;
        v128 = vshlq_u64(v125, xmmword_18071DBB0);
        if (v121 != 4)
        {
          v127.i32[0] = *(countAndFlagsBits + 4);
          v129 = vmovl_u16(*&vmovl_u8(v127));
          v130.i64[0] = v129.u32[2];
          v130.i64[1] = v129.u32[3];
          v131 = vandq_s8(v130, v124);
          v130.i64[0] = v129.u32[0];
          v130.i64[1] = v129.u32[1];
          v126 = vorrq_s8(vshlq_u64(v131, xmmword_18071DBD0), v126);
          v128 = vorrq_s8(vshlq_u64(vandq_s8(v130, v124), xmmword_18071DBC0), v128);
        }

        v132 = vorrq_s8(v128, v126);
        v80 = vorr_s8(*v132.i8, *&vextq_s8(v132, v132, 8uLL));
        if (v119 != v121)
        {
          v120 = 8 * v121;
          goto LABEL_109;
        }
      }

      else
      {
        v80 = 0;
        v120 = 0;
        v121 = 0;
LABEL_109:
        v133 = v119 - v121;
        v134 = (countAndFlagsBits + v121);
        do
        {
          v135 = *v134++;
          v80 |= v135 << (v120 & 0x38);
          v120 += 8;
          --v133;
        }

        while (v133);
      }

      if (v76 < 9)
      {
        v136 = 0;
      }

      else
      {
        v136 = 0;
        v137 = 0;
        v138 = (countAndFlagsBits + 8);
        do
        {
          v139 = *v138++;
          v136 |= v139 << v137;
          v137 += 8;
          --v118;
        }

        while (v118);
      }

      v140 = 0xA000000000000000;
      if (((v136 | v80) & 0x8080808080808080) == 0)
      {
        v140 = 0xE000000000000000;
      }

      v79 = v140 | (v76 << 56) | v136;
      goto LABEL_119;
    }

    if (!v76)
    {
      goto LABEL_85;
    }

    v46 = 0;
    v81 = (countAndFlagsBits + v76);
    v78 = 1;
    v82 = countAndFlagsBits;
    v83 = countAndFlagsBits;
    while (1)
    {
      v85 = *v83++;
      v84 = v85;
      if ((v85 & 0x80000000) == 0)
      {
        v86 = 1;
        goto LABEL_46;
      }

      if ((v84 + 11) <= 0xCCu)
      {
        LOBYTE(v430._countAndFlagsBits) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v84);
        goto LABEL_87;
      }

      if (v84 > 0xDFu)
      {
        break;
      }

      if (v83 == v81 || (*v83 & 0xC0) != 0x80)
      {
LABEL_265:
        v399 = 4;
        goto LABEL_266;
      }

      v78 = 0;
      v83 = v82 + 2;
      v86 = 2;
LABEL_46:
      v46 += v86;
      v82 = v83;
      if (v83 == v81)
      {
        goto LABEL_39;
      }
    }

    if (v84 == 224)
    {
      if (v83 == v81)
      {
        goto LABEL_265;
      }

      if (v82[1] - 192 < 0xFFFFFFE0)
      {
        goto LABEL_270;
      }

      goto LABEL_70;
    }

    if (v84 <= 0xECu)
    {
      goto LABEL_68;
    }

    if (v84 == 237)
    {
      if (v83 == v81)
      {
        goto LABEL_265;
      }

      v87 = v82[1];
      if (v87 > 0x9F || (v87 & 0xC0) != 0x80)
      {
        v399 = 1;
        goto LABEL_266;
      }

      goto LABEL_70;
    }

    if (v84 <= 0xEFu)
    {
LABEL_68:
      if (v83 == v81 || (v82[1] & 0xC0) != 0x80)
      {
        goto LABEL_265;
      }

LABEL_70:
      if (v82 + 2 == v81 || (v82[2] & 0xC0) != 0x80)
      {
        goto LABEL_265;
      }

      v78 = 0;
      v83 = v82 + 3;
      v86 = 3;
      goto LABEL_46;
    }

    if (v84 == 240)
    {
      if (v83 == v81)
      {
        goto LABEL_265;
      }

      if (v82[1] - 192 < 0xFFFFFFD0)
      {
LABEL_270:
        v399 = 3;
        goto LABEL_266;
      }

      goto LABEL_80;
    }

    if (v84 <= 0xF3u)
    {
      if (v83 == v81 || (v82[1] & 0xC0) != 0x80)
      {
        goto LABEL_265;
      }

      goto LABEL_80;
    }

    if (v83 == v81)
    {
      goto LABEL_265;
    }

    v88 = v82[1];
    if (v88 <= 0x8F && (v88 & 0xC0) == 0x80)
    {
LABEL_80:
      if (v82 + 2 == v81 || (v82[2] & 0xC0) != 0x80 || v82 + 3 == v81 || (v82[3] & 0xC0) != 0x80)
      {
        goto LABEL_265;
      }

      v78 = 0;
      v83 = v82 + 4;
      v86 = 4;
      goto LABEL_46;
    }

    v399 = 2;
LABEL_266:
    LOBYTE(v430._countAndFlagsBits) = v399;
LABEL_87:
    swift_willThrowTypedImpl(&v430, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
    v89 = specialized Collection.subscript.getter(v46, countAndFlagsBits, v76);
    v53 = findInvalidRange #1 (_:) in validateUTF8(_:)(v89, v90, v91, v92);
    v430._countAndFlagsBits = 0;
    v430._object = 0xE000000000000000;
    if (__OFADD__(v76, 15))
    {
      __break(1u);
      continue;
    }

    break;
  }

  v48 = v93;
  v407 = v2;
  v46 = &v430;
  _StringGuts.reserveCapacity(_:)(v76 + 15);
  v94 = v53;
  while (1)
  {
    v2 = v1;
    v95 = specialized Collection.subscript.getter(v94, countAndFlagsBits, v76);
    v99 = v430._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v430._object & 0x2000000000000000) != 0)
    {
      v99 = (v430._object >> 56) & 0xF;
    }

    v71 = __OFADD__(v99, v76);
    v100 = v99 + v76;
    if (v71)
    {
      __break(1u);
LABEL_268:
      __break(1u);
LABEL_269:
      __break(1u);
      goto LABEL_270;
    }

    v101 = v95;
    if (__OFADD__(v100, 3))
    {
      goto LABEL_268;
    }

    v1 = v96;
    v102 = v97;
    v103 = v98;
    _StringGuts.reserveCapacity(_:)(v100 + 3);
    v104 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v101, v1, v102, v103);
    v106 = v105;
    v46 = v430._object & 0xFFFFFFFFFFFFFFFLL;
    specialized UnsafeMutablePointer.initialize(from:count:)(v104, v105, ((v430._object & 0xFFFFFFFFFFFFFFFLL) + 32 + (*((v430._object & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL)));
    v107 = *(v46 + 24) & 0xFFFFFFFFFFFFLL;
    v108 = v107 + v106;
    if (__OFADD__(v107, v106))
    {
      goto LABEL_269;
    }

    v109 = v108 | 0x3000000000000000;
    *(v46 + 24) = v108 | 0x3000000000000000;
    *(v46 + 32 + (v108 & 0xFFFFFFFFFFFFLL)) = 0;
    if ((*(v46 + 16) & 0x8000000000000000) != 0)
    {
      v110 = __StringStorage._breadcrumbsAddress.getter();
      v111 = *v110;
      *v110 = 0;
      v111;
      v109 = *(v46 + 24);
    }

    v430._countAndFlagsBits = v109;
    specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(0xFFFDu, &v430._countAndFlagsBits);
    v112 = specialized Collection.subscript.getter(v48, countAndFlagsBits, v76);
    countAndFlagsBits = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v112, v113, v114, v115);
    v76 = v116;
    v1 = v2;
    if ((validateUTF8(_:)(countAndFlagsBits, v116) & 0x8000000000000000) == 0)
    {
      break;
    }

    v48 = v117;
    if (!v76)
    {
      goto LABEL_104;
    }
  }

  _StringGuts.appendInPlace(_:isASCII:)(countAndFlagsBits, v76, 0);
LABEL_104:
  v79 = v430._object;
  v80 = v430._countAndFlagsBits;
  v2 = v407;
LABEL_119:
  v141 = v424;
  v142 = v436._object;
  v143 = (v436._object >> 56) & 0xF;
  if ((v436._object & 0x2000000000000000) == 0)
  {
    v143 = v436._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v143 && (v436._countAndFlagsBits & ~v436._object & 0x2000000000000000) == 0)
  {
    v436._countAndFlagsBits = v80;
    v436._object = v79;
    v142;
    goto LABEL_131;
  }

  if ((v436._object & 0x2000000000000000) != 0)
  {
    if ((v79 & 0x2000000000000000) != 0)
    {
      v145 = specialized _SmallString.init(_:appending:)(v436._countAndFlagsBits, v436._object, v80, v79);
      if (v147)
      {
        goto LABEL_129;
      }

      v377 = v145;
      v378 = v146;
      v142;
      v79;
      v436._countAndFlagsBits = v377;
      v436._object = v378;
      goto LABEL_131;
    }

LABEL_127:
    v144 = v80 & 0xFFFFFFFFFFFFLL;
    goto LABEL_130;
  }

  if ((v79 & 0x2000000000000000) == 0)
  {
    goto LABEL_127;
  }

LABEL_129:
  v144 = HIBYTE(v79) & 0xF;
LABEL_130:
  v79;
  _StringGuts.append(_:)(v80, v79, 0, v144, v148, v149, v150, v151, v152, v153, v154, v155);
  swift_bridgeObjectRelease_n(v79, 2);
LABEL_131:
  v156 = v436._object;
  v157 = (v436._object >> 56) & 0xF;
  if ((v436._object & 0x2000000000000000) == 0)
  {
    v157 = v436._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v157 || (v436._countAndFlagsBits & ~v436._object & 0x2000000000000000) != 0)
  {
    if ((v436._object & 0x2000000000000000) != 0 && (v158 = specialized _SmallString.init(_:appending:)(v436._countAndFlagsBits, v436._object, 0x283EuLL, 0xE200000000000000), (v160 & 1) == 0))
    {
      v169 = v158;
      v170 = v159;
      v156;
      0xE200000000000000;
      v436._countAndFlagsBits = v169;
      v436._object = v170;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(10302, 0xE200000000000000, 0, 2, v161, v162, v163, v164, v165, v166, v167, v168);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v436._countAndFlagsBits = 10302;
    v436._object = 0xE200000000000000;
    v156;
  }

  v171 = *(v141 + 24);
  swift_getAssociatedTypeWitness(255, v171, v1, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v173 = v172;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v171, v1, v172, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v175 = *(AssociatedConformanceWitness + 56);
  v176 = swift_checkMetadataState(0, v173);
  v177 = v425;
  v175(0, v176, AssociatedConformanceWitness);
  v431 = v1;
  v178 = __swift_allocate_boxed_opaque_existential_0Tm(&v430);
  memcpy(v178, v177, v2);
  v179 = v431;
  v180 = __swift_project_boxed_opaque_existential_0Tm(&v430, v431);
  DynamicType = swift_getDynamicType(v180, v179, 1);
  LODWORD(v179) = swift_isOptionalType(DynamicType);
  __swift_destroy_boxed_opaque_existential_1Tm(&v430._countAndFlagsBits);
  if (v179)
  {
    v182 = v429;
    memcpy(v429, v177, v2);
    v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v430, v182, v1, v183, 7uLL);
    goto LABEL_143;
  }

  v199 = v420;
  memcpy(v420, v177, v2);
  if ((swift_dynamicCast(&v430, v199, v1, &type metadata for String, 6uLL) & 1) == 0)
  {
    v225 = v416;
    memcpy(v416, v177, v2);
    v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
    if (swift_dynamicCast(&v433, v225, v1, v226, 6uLL))
    {
      _ss9CodingKey_pWOb_0(&v433, &v430);
      v227 = v431;
      v228 = v432;
      __swift_project_boxed_opaque_existential_0Tm(&v430, v431);
      (*(v228 + 8))(&v436, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v227, v228);
    }

    else
    {
      v435 = 0;
      v433 = 0u;
      v434 = 0u;
      outlined destroy of _HasContiguousBytes?(&v433, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
      v361 = v412;
      memcpy(v412, v177, v2);
      v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
      if (swift_dynamicCast(&v433, v361, v1, v362, 6uLL))
      {
        _ss9CodingKey_pWOb_0(&v433, &v430);
        v363 = v431;
        v364 = v432;
        __swift_project_boxed_opaque_existential_0Tm(&v430, v431);
        v186 = (*(v364 + 8))(v363, v364);
      }

      else
      {
        v435 = 0;
        v433 = 0u;
        v434 = 0u;
        outlined destroy of _HasContiguousBytes?(&v433, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
        v379 = v408;
        memcpy(v408, v177, v2);
        v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
        if (!swift_dynamicCast(&v433, v379, v1, v380, 6uLL))
        {
          v435 = 0;
          v433 = 0u;
          v434 = 0u;
          outlined destroy of _HasContiguousBytes?(&v433, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
          *(&v434 + 1) = v1;
          v387 = __swift_allocate_boxed_opaque_existential_0Tm(&v433);
          memcpy(v387, v177, v2);
          Mirror.init(reflecting:)(&v433, &v430);
          v388 = v430._object;
          v389 = v432;
          _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v177, &v430, &v436, 0, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
          v389;
          v388;
          goto LABEL_158;
        }

        _ss9CodingKey_pWOb_0(&v433, &v430);
LABEL_143:
        v184 = v431;
        v185 = v432;
        __swift_project_boxed_opaque_existential_0Tm(&v430, v431);
        v186 = (*(v185 + 8))(v184, v185);
      }

      v196 = v187;
      v197 = v436._object;
      v198 = (v436._object >> 56) & 0xF;
      if ((v436._object & 0x2000000000000000) == 0)
      {
        v198 = v436._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v198 || (v436._countAndFlagsBits & ~v436._object & 0x2000000000000000) != 0)
      {
        _StringGuts.append(_:)(v186, v187, v188, v189, v190, v191, v192, v193, v194, v195);
      }

      else
      {
        v436._countAndFlagsBits = v186;
        v436._object = v187;
        v196 = v197;
      }

      v196;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v430._countAndFlagsBits);
    goto LABEL_158;
  }

  v208 = v430._object;
  v209 = v436._object;
  v210 = (v436._object >> 56) & 0xF;
  if ((v436._object & 0x2000000000000000) == 0)
  {
    v210 = v436._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v210 || (v436._countAndFlagsBits & ~v436._object & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(v430._countAndFlagsBits, v430._object, v200, v201, v202, v203, v204, v205, v206, v207);
    v211 = v208;
  }

  else
  {
    v436 = v430;
    v211 = v209;
  }

  v211;
LABEL_158:
  v212 = v436._object;
  v213 = (v436._object >> 56) & 0xF;
  if ((v436._object & 0x2000000000000000) == 0)
  {
    v213 = v436._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v213 || (v436._countAndFlagsBits & ~v436._object & 0x2000000000000000) != 0)
  {
    if ((v436._object & 0x2000000000000000) != 0 && (v214 = specialized _SmallString.init(_:appending:)(v436._countAndFlagsBits, v436._object, 0x202CuLL, 0xE200000000000000), (v216 & 1) == 0))
    {
      v229 = v214;
      v230 = v215;
      v212;
      0xE200000000000000;
      v436._countAndFlagsBits = v229;
      v436._object = v230;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v217, v218, v219, v220, v221, v222, v223, v224);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v436._countAndFlagsBits = 8236;
    v436._object = 0xE200000000000000;
    v212;
  }

  v231 = v426;
  v175(1, v176, AssociatedConformanceWitness);
  v431 = v1;
  v232 = __swift_allocate_boxed_opaque_existential_0Tm(&v430);
  memcpy(v232, v231, v2);
  v233 = v431;
  v234 = __swift_project_boxed_opaque_existential_0Tm(&v430, v431);
  v235 = swift_getDynamicType(v234, v233, 1);
  LODWORD(v233) = swift_isOptionalType(v235);
  __swift_destroy_boxed_opaque_existential_1Tm(&v430._countAndFlagsBits);
  if (v233)
  {
    v236 = v429;
    memcpy(v429, v231, v2);
    v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v430, v236, v1, v237, 7uLL);
    goto LABEL_171;
  }

  v253 = v421;
  memcpy(v421, v231, v2);
  if (swift_dynamicCast(&v430, v253, v1, &type metadata for String, 6uLL))
  {
    v254 = v430._object;
    String.write(_:)(v430);
    v254;
    goto LABEL_181;
  }

  v268 = v417;
  memcpy(v417, v231, v2);
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v433, v268, v1, v269, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v433, &v430);
    v270 = v431;
    v271 = v432;
    __swift_project_boxed_opaque_existential_0Tm(&v430, v431);
    (*(v271 + 8))(&v436, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v270, v271);
LABEL_178:
    __swift_destroy_boxed_opaque_existential_1Tm(&v430._countAndFlagsBits);
    goto LABEL_181;
  }

  v435 = 0;
  v433 = 0u;
  v434 = 0u;
  outlined destroy of _HasContiguousBytes?(&v433, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v365 = v413;
  memcpy(v413, v231, v2);
  v366 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v433, v365, v1, v366, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v433, &v430);
    v367 = v431;
    v368 = v432;
    __swift_project_boxed_opaque_existential_0Tm(&v430, v431);
    v240 = (*(v368 + 8))(v367, v368);
LABEL_172:
    v250 = v241;
    v251 = v436._object;
    v252 = (v436._object >> 56) & 0xF;
    if ((v436._object & 0x2000000000000000) == 0)
    {
      v252 = v436._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v252 || (v436._countAndFlagsBits & ~v436._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v240, v241, v242, v243, v244, v245, v246, v247, v248, v249);
    }

    else
    {
      v436._countAndFlagsBits = v240;
      v436._object = v241;
      v250 = v251;
    }

    v250;
    goto LABEL_178;
  }

  v435 = 0;
  v433 = 0u;
  v434 = 0u;
  outlined destroy of _HasContiguousBytes?(&v433, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v381 = v409;
  memcpy(v409, v231, v2);
  v382 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v433, v381, v1, v382, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v433, &v430);
LABEL_171:
    v238 = v431;
    v239 = v432;
    __swift_project_boxed_opaque_existential_0Tm(&v430, v431);
    v240 = (*(v239 + 8))(v238, v239);
    goto LABEL_172;
  }

  v435 = 0;
  v433 = 0u;
  v434 = 0u;
  outlined destroy of _HasContiguousBytes?(&v433, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v434 + 1) = v1;
  v390 = __swift_allocate_boxed_opaque_existential_0Tm(&v433);
  memcpy(v390, v231, v2);
  Mirror.init(reflecting:)(&v433, &v430);
  v391 = v430._object;
  v392 = v432;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v231, &v430, &v436, 0, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v392;
  v391;
LABEL_181:
  v255 = v436._object;
  v256 = (v436._object >> 56) & 0xF;
  if ((v436._object & 0x2000000000000000) == 0)
  {
    v256 = v436._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v256 || (v436._countAndFlagsBits & ~v436._object & 0x2000000000000000) != 0)
  {
    if ((v436._object & 0x2000000000000000) != 0 && (v257 = specialized _SmallString.init(_:appending:)(v436._countAndFlagsBits, v436._object, 0x202CuLL, 0xE200000000000000), (v259 & 1) == 0))
    {
      v272 = v257;
      v273 = v258;
      v255;
      0xE200000000000000;
      v436._countAndFlagsBits = v272;
      v436._object = v273;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v260, v261, v262, v263, v264, v265, v266, v267);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v436._countAndFlagsBits = 8236;
    v436._object = 0xE200000000000000;
    v255;
  }

  v274 = v427;
  v175(2, v176, AssociatedConformanceWitness);
  v431 = v1;
  v275 = __swift_allocate_boxed_opaque_existential_0Tm(&v430);
  memcpy(v275, v274, v2);
  v276 = v431;
  v277 = __swift_project_boxed_opaque_existential_0Tm(&v430, v431);
  v278 = swift_getDynamicType(v277, v276, 1);
  LODWORD(v276) = swift_isOptionalType(v278);
  __swift_destroy_boxed_opaque_existential_1Tm(&v430._countAndFlagsBits);
  if (v276)
  {
    v279 = v429;
    memcpy(v429, v274, v2);
    v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v430, v279, v1, v280, 7uLL);
    goto LABEL_194;
  }

  v296 = v422;
  memcpy(v422, v274, v2);
  if (swift_dynamicCast(&v430, v296, v1, &type metadata for String, 6uLL))
  {
    v297 = v430._object;
    String.write(_:)(v430);
    v297;
    goto LABEL_204;
  }

  v311 = v418;
  memcpy(v418, v274, v2);
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v433, v311, v1, v312, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v433, &v430);
    v313 = v431;
    v314 = v432;
    __swift_project_boxed_opaque_existential_0Tm(&v430, v431);
    (*(v314 + 8))(&v436, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v313, v314);
LABEL_201:
    __swift_destroy_boxed_opaque_existential_1Tm(&v430._countAndFlagsBits);
    goto LABEL_204;
  }

  v435 = 0;
  v433 = 0u;
  v434 = 0u;
  outlined destroy of _HasContiguousBytes?(&v433, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v369 = v414;
  memcpy(v414, v274, v2);
  v370 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v433, v369, v1, v370, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v433, &v430);
    v371 = v431;
    v372 = v432;
    __swift_project_boxed_opaque_existential_0Tm(&v430, v431);
    v283 = (*(v372 + 8))(v371, v372);
LABEL_195:
    v293 = v284;
    v294 = v436._object;
    v295 = (v436._object >> 56) & 0xF;
    if ((v436._object & 0x2000000000000000) == 0)
    {
      v295 = v436._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v295 || (v436._countAndFlagsBits & ~v436._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v283, v284, v285, v286, v287, v288, v289, v290, v291, v292);
    }

    else
    {
      v436._countAndFlagsBits = v283;
      v436._object = v284;
      v293 = v294;
    }

    v293;
    goto LABEL_201;
  }

  v435 = 0;
  v433 = 0u;
  v434 = 0u;
  outlined destroy of _HasContiguousBytes?(&v433, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v383 = v410;
  memcpy(v410, v274, v2);
  v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v433, v383, v1, v384, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v433, &v430);
LABEL_194:
    v281 = v431;
    v282 = v432;
    __swift_project_boxed_opaque_existential_0Tm(&v430, v431);
    v283 = (*(v282 + 8))(v281, v282);
    goto LABEL_195;
  }

  v435 = 0;
  v433 = 0u;
  v434 = 0u;
  outlined destroy of _HasContiguousBytes?(&v433, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v434 + 1) = v1;
  v393 = __swift_allocate_boxed_opaque_existential_0Tm(&v433);
  memcpy(v393, v274, v2);
  Mirror.init(reflecting:)(&v433, &v430);
  v394 = v430._object;
  v395 = v432;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v274, &v430, &v436, 0, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v395;
  v394;
LABEL_204:
  v298 = v436._object;
  v299 = (v436._object >> 56) & 0xF;
  if ((v436._object & 0x2000000000000000) == 0)
  {
    v299 = v436._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v299 || (v436._countAndFlagsBits & ~v436._object & 0x2000000000000000) != 0)
  {
    if ((v436._object & 0x2000000000000000) != 0 && (v300 = specialized _SmallString.init(_:appending:)(v436._countAndFlagsBits, v436._object, 0x202CuLL, 0xE200000000000000), (v302 & 1) == 0))
    {
      v315 = v300;
      v316 = v301;
      v298;
      0xE200000000000000;
      v436._countAndFlagsBits = v315;
      v436._object = v316;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v303, v304, v305, v306, v307, v308, v309, v310);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v436._countAndFlagsBits = 8236;
    v436._object = 0xE200000000000000;
    v298;
  }

  v317 = v428;
  v175(3, v176, AssociatedConformanceWitness);
  v431 = v1;
  v318 = __swift_allocate_boxed_opaque_existential_0Tm(&v430);
  memcpy(v318, v317, v2);
  v319 = v431;
  v320 = __swift_project_boxed_opaque_existential_0Tm(&v430, v431);
  v321 = swift_getDynamicType(v320, v319, 1);
  LODWORD(v319) = swift_isOptionalType(v321);
  __swift_destroy_boxed_opaque_existential_1Tm(&v430._countAndFlagsBits);
  if (v319)
  {
    v322 = v429;
    memcpy(v429, v317, v2);
    v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v430, v322, v1, v323, 7uLL);
    goto LABEL_217;
  }

  v339 = v423;
  memcpy(v423, v317, v2);
  if (swift_dynamicCast(&v430, v339, v1, &type metadata for String, 6uLL))
  {
    v340 = v430._object;
    String.write(_:)(v430);
    v340;
    goto LABEL_227;
  }

  v354 = v419;
  memcpy(v419, v317, v2);
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v433, v354, v1, v355, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v433, &v430);
    v356 = v431;
    v357 = v432;
    __swift_project_boxed_opaque_existential_0Tm(&v430, v431);
    (*(v357 + 8))(&v436, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v356, v357);
LABEL_224:
    __swift_destroy_boxed_opaque_existential_1Tm(&v430._countAndFlagsBits);
    goto LABEL_227;
  }

  v435 = 0;
  v433 = 0u;
  v434 = 0u;
  outlined destroy of _HasContiguousBytes?(&v433, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v373 = v415;
  memcpy(v415, v317, v2);
  v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v433, v373, v1, v374, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v433, &v430);
    v375 = v431;
    v376 = v432;
    __swift_project_boxed_opaque_existential_0Tm(&v430, v431);
    v326 = (*(v376 + 8))(v375, v376);
LABEL_218:
    v336 = v327;
    v337 = v436._object;
    v338 = (v436._object >> 56) & 0xF;
    if ((v436._object & 0x2000000000000000) == 0)
    {
      v338 = v436._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v338 || (v436._countAndFlagsBits & ~v436._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v326, v327, v328, v329, v330, v331, v332, v333, v334, v335);
    }

    else
    {
      v436._countAndFlagsBits = v326;
      v436._object = v327;
      v336 = v337;
    }

    v336;
    goto LABEL_224;
  }

  v435 = 0;
  v433 = 0u;
  v434 = 0u;
  outlined destroy of _HasContiguousBytes?(&v433, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v385 = v411;
  memcpy(v411, v317, v2);
  v386 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v433, v385, v1, v386, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v433, &v430);
LABEL_217:
    v324 = v431;
    v325 = v432;
    __swift_project_boxed_opaque_existential_0Tm(&v430, v431);
    v326 = (*(v325 + 8))(v324, v325);
    goto LABEL_218;
  }

  v435 = 0;
  v433 = 0u;
  v434 = 0u;
  outlined destroy of _HasContiguousBytes?(&v433, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v434 + 1) = v1;
  v396 = __swift_allocate_boxed_opaque_existential_0Tm(&v433);
  memcpy(v396, v317, v2);
  Mirror.init(reflecting:)(&v433, &v430);
  v397 = v430._object;
  v398 = v432;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v317, &v430, &v436, 0, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v398;
  v397;
LABEL_227:
  v341 = v436._object;
  v342 = (v436._object >> 56) & 0xF;
  if ((v436._object & 0x2000000000000000) == 0)
  {
    v342 = v436._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v342 || (v436._countAndFlagsBits & ~v436._object & 0x2000000000000000) != 0)
  {
    if ((v436._object & 0x2000000000000000) != 0 && (v343 = specialized _SmallString.init(_:appending:)(v436._countAndFlagsBits, v436._object, 0x29uLL, 0xE100000000000000), (v345 & 1) == 0))
    {
      v358 = v343;
      v359 = v344;
      v341;
      0xE100000000000000;
      v436._countAndFlagsBits = v358;
      v436._object = v359;
    }

    else
    {
      0xE100000000000000;
      _StringGuts.append(_:)(41, 0xE100000000000000, 0, 1, v346, v347, v348, v349, v350, v351, v352, v353);
      swift_bridgeObjectRelease_n(0xE100000000000000, 2);
    }
  }

  else
  {
    v436._countAndFlagsBits = 41;
    v436._object = 0xE100000000000000;
    v341;
  }

  return v436._countAndFlagsBits;
}

uint64_t SIMD4<>.init<A>(_:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v65 = a6;
  v68 = a4;
  v61 = a1;
  v70 = a8;
  v12 = MEMORY[0x1EEE9AC00](a1);
  v69 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v17 = v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v16, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v19 = *(AssociatedConformanceWitness + 48);
  v71 = v17;
  v20 = AssociatedConformanceWitness;
  v19(v17);
  v56 = a7;
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v22 = v21;
  v60 = v21;
  v23 = swift_getAssociatedConformanceWitness(a7, a3, v21, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v62 = *(v23 + 56);
  v24 = v62;
  v63 = v23 + 56;
  v25 = swift_checkMetadataState(0, v22);
  v26 = v69;
  v66 = v23;
  v24(0, v25, v23);
  v27 = *(v68 + 16);
  v58 = a2;
  v59 = v27;
  v67 = *(v27 + 72);
  v68 = v27 + 72;
  v29 = v26;
  v55 = *(v65 + 8);
  v28 = v55;
  v67(v26, a3, v55, a2, v27);
  v57 = v20;
  v64 = *(v20 + 64);
  v65 = v20 + 64;
  v30 = v15;
  v64(v15, 0, v71, v20);
  v31 = v60;
  v32 = swift_checkMetadataState(0, v60);
  v33 = v23;
  v34 = v62;
  v62(1, v32, v33);
  v54 = a3;
  v35 = v28;
  v36 = v59;
  (v67)(v29, a3, v35);
  v37 = v71;
  v38 = v57;
  v64(v30, 1, v71, v57);
  v39 = swift_checkMetadataState(0, v31);
  v40 = v69;
  v34(2, v39, v66);
  v41 = a3;
  v42 = v55;
  v43 = v58;
  v44 = v67;
  v67(v40, v41, v55, v58, v36);
  v45 = v38;
  v46 = v64;
  v64(v30, 2, v37, v45);
  v47 = swift_checkMetadataState(0, v60);
  v48 = v61;
  v62(3, v47, v66);
  v49 = v40;
  v50 = v54;
  v44(v49, v54, v42, v43, v59);
  v46(v30, 3, v71, v57);
  v52 = type metadata accessor for SIMD4(0, v50, v56, v51);
  return (*(*(v52 - 8) + 8))(v48, v52);
}

{
  v63 = a6;
  v64 = a4;
  v56 = a8;
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v16;
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v20 = v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v19, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v62 = v20;
  (*(AssociatedConformanceWitness + 48))(v20, AssociatedConformanceWitness);
  v50 = a7;
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v22 = v21;
  v52 = v21;
  v53 = a3;
  v23 = swift_getAssociatedConformanceWitness(a7, a3, v21, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v54 = *(v23 + 56);
  v24 = v54;
  v55 = v23 + 56;
  v25 = swift_checkMetadataState(0, v22);
  v48 = a1;
  v57 = v23;
  v24(0, v25, v23);
  v26 = v63;
  v58 = *(v64 + 80);
  v59 = v64 + 80;
  v58(v15, a3, v63);
  v27 = v62;
  v49 = *(AssociatedConformanceWitness + 64);
  v51 = AssociatedConformanceWitness + 64;
  (v49)(v18, 0, v62);
  v28 = v52;
  v29 = swift_checkMetadataState(0, v52);
  v47 = v15;
  v30 = v54;
  v54(1, v29, v23);
  v31 = v53;
  v58(v15, v53, v26);
  v32 = v49;
  v49(v18, 1, v27, AssociatedConformanceWitness);
  v33 = swift_checkMetadataState(0, v28);
  v34 = v47;
  v35 = v48;
  v30(2, v33, v57);
  v36 = v34;
  v37 = v34;
  v38 = v31;
  v39 = v60;
  v40 = v58;
  (v58)(v36, v38, v63, v60, v64);
  v41 = AssociatedConformanceWitness;
  v32(v18, 2, v62, AssociatedConformanceWitness);
  v42 = swift_checkMetadataState(0, v52);
  v54(3, v42, v57);
  v43 = v53;
  v40(v37, v53, v63, v39, v64);
  v32(v18, 3, v62, v41);
  v45 = type metadata accessor for SIMD4(0, v43, v50, v44);
  return (*(*(v45 - 8) + 8))(v35, v45);
}

uint64_t key path getter for SIMD8.subscript(_:) : <A>SIMD8<A>A(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2 >= 8)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = *(a2 + a3 - 16);
  v4 = *(a2 + a3 - 8);
  swift_getAssociatedTypeWitness(255, v4, v5, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v7 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v5, v6, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v9 = *(AssociatedConformanceWitness + 56);
  v10 = swift_checkMetadataState(0, v7);
  return v9(v3, v10, AssociatedConformanceWitness);
}

uint64_t key path setter for SIMD8.subscript(_:) : <A>SIMD8<A>A(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v18 - v6;
  v9 = *v8;
  memcpy(&v18 - v6, v10, v11);
  if (v9 >= 8)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  swift_getAssociatedTypeWitness(255, v5, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v13 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v4, v12, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v15 = *(AssociatedConformanceWitness + 64);
  v16 = swift_checkMetadataState(0, v13);
  return v15(v7, v9, v16, AssociatedConformanceWitness);
}

uint64_t (*SIMD8.subscript.modify(void *a1, unint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x40, 0xE4uLL);
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
    v7[3] = swift_coroFrameAlloc(v10, 0xE4uLL);
    v8[4] = swift_coroFrameAlloc(v10, 0xE4uLL);
    v11 = swift_coroFrameAlloc(v10, 0xE4uLL);
  }

  else
  {
    v7[3] = malloc(v10);
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v8[5] = v11;
  if (a2 >= 8)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v12, v9, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, v9, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v8[6] = AssociatedConformanceWitness;
  v16 = *(AssociatedConformanceWitness + 56);
  v17 = swift_checkMetadataState(0, v14);
  v8[7] = v17;
  v16(a2, v17, AssociatedConformanceWitness);
  return SIMD4.subscript.modify;
}

uint64_t SIMD8.init(_:_:_:_:_:_:_:_:)(const void *a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7, const void *a8, const char *a9, int **a10)
{
  v23 = a7;
  v24 = a8;
  v21 = a5;
  v22 = a6;
  v20 = a4;
  v13 = *(*(a9 - 1) + 64);
  MEMORY[0x1EEE9AC00](a1);
  swift_getAssociatedTypeWitness(0, a10, a9, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v15 = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a10, a9, v14, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  (*(AssociatedConformanceWitness + 48))(v15, AssociatedConformanceWitness);
  memcpy(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
  v17 = *(AssociatedConformanceWitness + 64);
  v17(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 0, v15, AssociatedConformanceWitness);
  memcpy(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v13);
  v17(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v15, AssociatedConformanceWitness);
  memcpy(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v13);
  v17(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 2, v15, AssociatedConformanceWitness);
  memcpy(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v13);
  v17(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 3, v15, AssociatedConformanceWitness);
  memcpy(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v13);
  v17(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 4, v15, AssociatedConformanceWitness);
  memcpy(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v13);
  v17(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 5, v15, AssociatedConformanceWitness);
  memcpy(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v13);
  v17(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 6, v15, AssociatedConformanceWitness);
  memcpy(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v13);
  return (v17)(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 7, v15, AssociatedConformanceWitness);
}

uint64_t SIMD8.init(lowHalf:highHalf:)(uint64_t a1, uint64_t a2, const char *a3, int **a4)
{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v8, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  (*(AssociatedConformanceWitness + 48))(v9, AssociatedConformanceWitness);
  v12 = type metadata accessor for SIMD8(0, a3, a4, v11);
  specialized SIMD8.lowHalf.setter(a1, v12, 0, 1, 2, 3);
  v14 = type metadata accessor for SIMD4(0, a3, a4, v13);
  v16 = *(*(v14 - 8) + 8);
  (v16)((v14 - 8), a1, v14);
  specialized SIMD8.lowHalf.setter(a2, v12, 4, 5, 6, 7);

  return v16(a2, v14);
}

uint64_t SIMD8.oddHalf.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  specialized SIMD8.lowHalf.setter(a1, a2, a3, a4, a5, a6);
  v9 = type metadata accessor for SIMD4(0, *(a2 + 16), *(a2 + 24), v8);
  v10 = *(*(v9 - 8) + 8);

  return v10(a1, v9);
}

void (*SIMD8.lowHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x2603uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD4(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0x2603uLL);
    v11 = swift_coroFrameAlloc(v10, 0x2603uLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD8.lowHalf.getter(a2, v11);
  return SIMD8.lowHalf.modify;
}

void SIMD8.oddHalf.modify(uint64_t **a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v9 = (*a1)[2];
  v10 = (*a1)[3];
  v11 = **a1;
  if (a2)
  {
    (*(v10 + 16))((*a1)[4], v8, v9);
    specialized SIMD8.lowHalf.setter(v7, v11, a3, a4, a5, a6);
    v15 = *(v10 + 8);
    v15(v7, v9);
    v15(v8, v9);
  }

  else
  {
    specialized SIMD8.lowHalf.setter((*a1)[5], v11, a3, a4, a5, a6);
    (*(v10 + 8))(v8, v9);
  }

  free(v8);
  free(v7);

  free(v6);
}

void (*SIMD8.highHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0xB26CuLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD4(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0xB26CuLL);
    v11 = swift_coroFrameAlloc(v10, 0xB26CuLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD8.highHalf.getter(a2, v11);
  return SIMD8.highHalf.modify;
}

void (*SIMD8.evenHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0xA9B9uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD4(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0xA9B9uLL);
    v11 = swift_coroFrameAlloc(v10, 0xA9B9uLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD8.evenHalf.getter(a2, v11);
  return SIMD8.evenHalf.modify;
}

uint64_t SIMD8.lowHalf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a4;
  v44 = a5;
  v41 = a6;
  v42 = a3;
  v8 = v6;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 24);
  swift_getAssociatedTypeWitness(0, v13, v9, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v15 = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v13, v9, v14, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v17 = *(AssociatedConformanceWitness + 48);
  v47 = v15;
  v18 = AssociatedConformanceWitness;
  v17(v15);
  swift_getAssociatedTypeWitness(255, v13, v9, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v20 = v19;
  v21 = swift_getAssociatedConformanceWitness(v13, v9, v19, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v22 = *(v21 + 56);
  v45 = v21;
  v46 = v22;
  v23 = swift_checkMetadataState(0, v20);
  v22(a2, v23, v21);
  v38 = *(v18 + 64);
  v39 = v18;
  v24 = v12;
  v25 = v47;
  v38(v12, 0, v47, v18);
  v26 = v20;
  v27 = swift_checkMetadataState(0, v20);
  v40 = v8;
  v28 = v45;
  v46(v42, v27, v45);
  v29 = v25;
  v30 = v38;
  v31 = v39;
  v38(v24, 1, v29, v39);
  v32 = swift_checkMetadataState(0, v20);
  v33 = v28;
  v34 = v46;
  v46(v43, v32, v33);
  v35 = v47;
  v30(v24, 2, v47, v31);
  v36 = swift_checkMetadataState(0, v26);
  v34(v44, v36, v45);
  return (v30)(v24, 3, v35, v31);
}

void (*SIMD8.oddHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0xD816uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD4(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0xD816uLL);
    v11 = swift_coroFrameAlloc(v10, 0xD816uLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD8.oddHalf.getter(a2, v11);
  return SIMD8.oddHalf.modify;
}

uint64_t protocol witness for SIMDStorage.subscript.getter in conformance SIMD8<A>(unint64_t a1, uint64_t a2)
{
  if (a1 >= 8)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v2, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v6 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v2, v3, v5, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v10 = *(AssociatedConformanceWitness + 56);
  v8 = swift_checkMetadataState(0, v6);

  return v10(a1, v8, AssociatedConformanceWitness);
}

uint64_t protocol witness for SIMDStorage.subscript.setter in conformance SIMD8<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 8)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v3, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v8 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v3, v4, v7, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v12 = *(AssociatedConformanceWitness + 64);
  v10 = swift_checkMetadataState(0, v8);

  return v12(a1, a2, v10, AssociatedConformanceWitness);
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance SIMD8<A>(void *a1, unint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x40, 0x53AuLL);
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
    v7[3] = swift_coroFrameAlloc(v10, 0x53AuLL);
    v8[4] = swift_coroFrameAlloc(v10, 0x53AuLL);
    v11 = swift_coroFrameAlloc(v10, 0x53AuLL);
  }

  else
  {
    v7[3] = malloc(v10);
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v8[5] = v11;
  if (a2 >= 8)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v12, v9, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, v9, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v8[6] = AssociatedConformanceWitness;
  v16 = *(AssociatedConformanceWitness + 56);
  v17 = swift_checkMetadataState(0, v14);
  v8[7] = v17;
  v16(a2, v17, AssociatedConformanceWitness);
  return SIMD4.subscript.modify;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SIMD8<A>(uint64_t a1, const char *a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD8<A>, a2, a3);

  return SIMD.hash(into:)(a1, a2, WitnessTable);
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance SIMD8<A>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD8<A>, a1, a3);

  return SIMD.description.getter(a1, WitnessTable);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance SIMD8<A>@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD8<A>, a2, a3);

  return SIMD.init(arrayLiteral:)(a1, a2, WitnessTable, a4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SIMD8<A>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      swift_getAssociatedTypeWitness(255, v10, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
      v12 = v11;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v3, v11, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
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

  while (v7 != 8);
  return v8 & 1;
}

uint64_t SIMD8<>.init<A>(truncatingIfNeeded:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v36 = a4;
  v37 = a6;
  v39 = a1;
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v19 = v18;
  v35 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v18, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v21 = *(AssociatedConformanceWitness + 48);
  v33 = v19;
  v34 = a8;
  v21(v19, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v31 = a7;
  v32 = v22;
  v38 = a3;
  v23 = swift_getAssociatedConformanceWitness(a7, a3, v22, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v24 = 0;
  v25 = *(v23 + 56);
  do
  {
    v26 = swift_checkMetadataState(0, v32);
    v25(v24, v26, v23);
    (*(*(v36 + 8) + 96))(v15, v38, *(v37 + 8));
    (*(AssociatedConformanceWitness + 64))(v17, v24++, v33, AssociatedConformanceWitness);
  }

  while (v24 != 8);
  v28 = type metadata accessor for SIMD8(0, v38, v31, v27);
  return (*(*(v28 - 8) + 8))(v39, v28);
}

uint64_t SIMD8<>.init<A>(clamping:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v36 = a4;
  v37 = a6;
  v39 = a1;
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v19 = v18;
  v35 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v18, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v21 = *(AssociatedConformanceWitness + 48);
  v33 = v19;
  v34 = a8;
  v21(v19, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v31 = a7;
  v32 = v22;
  v38 = a3;
  v23 = swift_getAssociatedConformanceWitness(a7, a3, v22, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v24 = 0;
  v25 = *(v23 + 56);
  do
  {
    v26 = swift_checkMetadataState(0, v32);
    v25(v24, v26, v23);
    (*(*(v36 + 8) + 104))(v15, v38, *(v37 + 8));
    (*(AssociatedConformanceWitness + 64))(v17, v24++, v33, AssociatedConformanceWitness);
  }

  while (v24 != 8);
  v28 = type metadata accessor for SIMD8(0, v38, v31, v27);
  return (*(*(v28 - 8) + 8))(v39, v28);
}

uint64_t SIMD8<>.init<A>(_:rounding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, const char *a4@<X3>, uint64_t a5@<X4>, swift *a6@<X5>, uint64_t a7@<X6>, int **a8@<X7>, uint64_t a9@<X8>)
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
  swift_getAssociatedTypeWitness(0, v22, v21, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v24 = v23;
  v45 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a6, a3, v23, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v26 = *(AssociatedConformanceWitness + 48);
  v43 = a9;
  v41 = v24;
  v26(v24, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a8, a4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v37 = a8;
  v48 = a4;
  v40 = v27;
  v28 = swift_getAssociatedConformanceWitness(a8, a4, v27, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
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

  while (v29 != 8);
  v34 = type metadata accessor for SIMD8(0, v48, v37, v33);
  return (*(*(v34 - 8) + 8))(v49, v34);
}

uint64_t SIMD8.debugDescription.getter(uint64_t a1)
{
  v687 = a1;
  v1 = *(a1 + 16);
  v2 = *(*(v1 - 1) + 64);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v656 = (&v649 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = MEMORY[0x1EEE9AC00](v3);
  v664 = (&v649 - v5);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v672 = (&v649 - v7);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v679 = (&v649 - v9);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v685 = &v649 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v655 = (&v649 - v13);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v663 = (&v649 - v15);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v671 = (&v649 - v17);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v678 = (&v649 - v19);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v684 = &v649 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v654 = (&v649 - v23);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v662 = (&v649 - v25);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v670 = (&v649 - v27);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v677 = (&v649 - v29);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v683 = &v649 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v653 = (&v649 - v33);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v661 = (&v649 - v35);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v669 = (&v649 - v37);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v676 = (&v649 - v39);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v682 = &v649 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v652 = (&v649 - v43);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v660 = (&v649 - v45);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v668 = (&v649 - v47);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v675 = (&v649 - v49);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v681 = &v649 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v54 = (&v649 - v53);
  v55 = MEMORY[0x1EEE9AC00](v52);
  v659 = (&v649 - v56);
  v57 = MEMORY[0x1EEE9AC00](v55);
  v667 = (&v649 - v58);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v674 = (&v649 - v60);
  v61 = MEMORY[0x1EEE9AC00](v59);
  v63 = &v649 - v62;
  v64 = MEMORY[0x1EEE9AC00](v61);
  v651 = (&v649 - v65);
  v66 = MEMORY[0x1EEE9AC00](v64);
  v658 = (&v649 - v67);
  v68 = MEMORY[0x1EEE9AC00](v66);
  v666 = (&v649 - v69);
  v70 = MEMORY[0x1EEE9AC00](v68);
  v673 = (&v649 - v71);
  v72 = MEMORY[0x1EEE9AC00](v70);
  v680 = &v649 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v650 = (&v649 - v75);
  v76 = MEMORY[0x1EEE9AC00](v74);
  v657 = (&v649 - v77);
  v78 = MEMORY[0x1EEE9AC00](v76);
  v665 = (&v649 - v79);
  v80 = MEMORY[0x1EEE9AC00](v78);
  v82 = &v649 - v81;
  v83 = MEMORY[0x1EEE9AC00](v80);
  v686 = (&v649 - v84);
  MEMORY[0x1EEE9AC00](v83);
  v86 = &v649 - v85;
  v87 = _StringGuts.init(_initialCapacity:)(41);
  v89 = v88;
  v694._countAndFlagsBits = v87;
  v694._object = v88;
  v90 = HIBYTE(v88) & 0xF;
  if ((v88 & 0x2000000000000000) == 0)
  {
    v90 = v87 & 0xFFFFFFFFFFFFLL;
  }

  if (v90 || (v87 & ~v88 & 0x2000000000000000) != 0)
  {
    if ((v88 & 0x2000000000000000) != 0 && (v91 = specialized _SmallString.init(_:appending:)(v87, v88, 0x3C38444D4953uLL, 0xE600000000000000), (v93 & 1) == 0))
    {
      v102 = v91;
      v103 = v92;
      v89;
      0xE600000000000000;
      v694._countAndFlagsBits = v102;
      v694._object = v103;
    }

    else
    {
      0xE600000000000000;
      _StringGuts.append(_:)(0x3C38444D4953, 0xE600000000000000, 0, 6, v94, v95, v96, v97, v98, v99, v100, v101);
      swift_bridgeObjectRelease_n(0xE600000000000000, 2);
    }
  }

  else
  {
    v694._countAndFlagsBits = 0x3C38444D4953;
    v694._object = 0xE600000000000000;
    v88;
  }

  TypeName = swift_getTypeName(v1, 0);
  if (v105 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v106 = TypeName;
  v107 = v105;
  if (_allASCII(_:)(TypeName, v105))
  {
    v109 = 1;
LABEL_13:
    if (v107)
    {
      if (v107 > 15)
      {
        v110 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v106, v107, v107, v109 & 1);
        v111 = *(v110 + 24);
        goto LABEL_80;
      }

      v128 = v107 - 8;
      v129 = 8;
      if (v107 < 8)
      {
        v129 = v107;
      }

      if (v107 >= 4)
      {
        v131 = v129 & 0xC;
        v108.i32[0] = *v106;
        v132 = vmovl_u16(*&vmovl_u8(v108));
        v133.i64[0] = v132.u32[0];
        v133.i64[1] = v132.u32[1];
        v134.i64[0] = 255;
        v134.i64[1] = 255;
        v135 = vandq_s8(v133, v134);
        v133.i64[0] = v132.u32[2];
        v133.i64[1] = v132.u32[3];
        v136 = vshlq_u64(vandq_s8(v133, v134), xmmword_18071DBA0);
        v137.i32[1] = 0;
        v138 = vshlq_u64(v135, xmmword_18071DBB0);
        if (v131 != 4)
        {
          v137.i32[0] = *(v106 + 4);
          v139 = vmovl_u16(*&vmovl_u8(v137));
          v140.i64[0] = v139.u32[2];
          v140.i64[1] = v139.u32[3];
          v141 = vandq_s8(v140, v134);
          v140.i64[0] = v139.u32[0];
          v140.i64[1] = v139.u32[1];
          v136 = vorrq_s8(vshlq_u64(v141, xmmword_18071DBD0), v136);
          v138 = vorrq_s8(vshlq_u64(vandq_s8(v140, v134), xmmword_18071DBC0), v138);
        }

        v142 = vorrq_s8(v138, v136);
        v111 = vorr_s8(*v142.i8, *&vextq_s8(v142, v142, 8uLL));
        if (v129 == v131)
        {
          goto LABEL_72;
        }

        v130 = 8 * v131;
      }

      else
      {
        v111 = 0;
        v130 = 0;
        v131 = 0;
      }

      v143 = v129 - v131;
      v144 = (v106 + v131);
      do
      {
        v145 = *v144++;
        v111 |= v145 << (v130 & 0x38);
        v130 += 8;
        --v143;
      }

      while (v143);
LABEL_72:
      if (v107 < 9)
      {
        v146 = 0;
      }

      else
      {
        v146 = 0;
        v147 = 0;
        v148 = (v106 + 8);
        do
        {
          v149 = *v148++;
          v146 |= v149 << v147;
          v147 += 8;
          --v128;
        }

        while (v128);
      }

      v150 = 0xA000000000000000;
      if (((v146 | v111) & 0x8080808080808080) == 0)
      {
        v150 = 0xE000000000000000;
      }

      v110 = v150 | (v107 << 56) | v146;
      goto LABEL_80;
    }

LABEL_59:
    v111 = 0;
    v110 = 0xE000000000000000;
    goto LABEL_80;
  }

  if (!v107)
  {
    goto LABEL_59;
  }

  v112 = 0;
  v113 = (v106 + v107);
  v109 = 1;
  v114 = v106;
  v115 = v106;
  while (1)
  {
    v117 = *v115++;
    v116 = v117;
    if ((v117 & 0x80000000) == 0)
    {
      v118 = 1;
      goto LABEL_20;
    }

    if ((v116 + 11) <= 0xCCu)
    {
      LOBYTE(v688._countAndFlagsBits) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v116);
      goto LABEL_61;
    }

    if (v116 > 0xDFu)
    {
      break;
    }

    if (v115 == v113 || (*v115 & 0xC0) != 0x80)
    {
LABEL_324:
      LOBYTE(v688._countAndFlagsBits) = 4;
      goto LABEL_61;
    }

    v109 = 0;
    v115 = v114 + 2;
    v118 = 2;
LABEL_20:
    v112 += v118;
    v114 = v115;
    if (v115 == v113)
    {
      goto LABEL_13;
    }
  }

  if (v116 == 224)
  {
    if (v115 == v113)
    {
      goto LABEL_324;
    }

    if (v114[1] - 192 < 0xFFFFFFE0)
    {
      goto LABEL_326;
    }

    goto LABEL_44;
  }

  if (v116 <= 0xECu)
  {
    goto LABEL_42;
  }

  if (v116 == 237)
  {
    if (v115 == v113)
    {
      goto LABEL_324;
    }

    v119 = v114[1];
    if (v119 > 0x9F || (v119 & 0xC0) != 0x80)
    {
      LOBYTE(v688._countAndFlagsBits) = 1;
      goto LABEL_61;
    }

    goto LABEL_44;
  }

  if (v116 <= 0xEFu)
  {
LABEL_42:
    if (v115 == v113 || (v114[1] & 0xC0) != 0x80)
    {
      goto LABEL_324;
    }

LABEL_44:
    if (v114 + 2 == v113 || (v114[2] & 0xC0) != 0x80)
    {
      goto LABEL_324;
    }

    v109 = 0;
    v115 = v114 + 3;
    v118 = 3;
    goto LABEL_20;
  }

  if (v116 == 240)
  {
    if (v115 == v113)
    {
      goto LABEL_324;
    }

    if (v114[1] - 192 < 0xFFFFFFD0)
    {
LABEL_326:
      LOBYTE(v688._countAndFlagsBits) = 3;
      goto LABEL_61;
    }

    goto LABEL_54;
  }

  if (v116 <= 0xF3u)
  {
    if (v115 == v113 || (v114[1] & 0xC0) != 0x80)
    {
      goto LABEL_324;
    }

    goto LABEL_54;
  }

  if (v115 == v113)
  {
    goto LABEL_324;
  }

  v120 = v114[1];
  if (v120 <= 0x8F && (v120 & 0xC0) == 0x80)
  {
LABEL_54:
    if (v114 + 2 == v113 || (v114[2] & 0xC0) != 0x80 || v114 + 3 == v113 || (v114[3] & 0xC0) != 0x80)
    {
      goto LABEL_324;
    }

    v109 = 0;
    v115 = v114 + 4;
    v118 = 4;
    goto LABEL_20;
  }

  LOBYTE(v688._countAndFlagsBits) = 2;
LABEL_61:
  swift_willThrowTypedImpl(&v688, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
  v121 = specialized Collection.subscript.getter(v112, v106, v107);
  v125 = findInvalidRange #1 (_:) in validateUTF8(_:)(v121, v122, v123, v124);
  v111 = repairUTF8(_:firstKnownBrokenRange:)(v106, v107, v125, v126);
  v110 = v127;
LABEL_80:
  object = v694._object;
  v152 = (v694._object >> 56) & 0xF;
  if ((v694._object & 0x2000000000000000) == 0)
  {
    v152 = v694._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v152 && (v694._countAndFlagsBits & ~v694._object & 0x2000000000000000) == 0)
  {
    v694._countAndFlagsBits = v111;
    v694._object = v110;
    object;
    goto LABEL_92;
  }

  if ((v694._object & 0x2000000000000000) != 0)
  {
    if ((v110 & 0x2000000000000000) != 0)
    {
      v154 = specialized _SmallString.init(_:appending:)(v694._countAndFlagsBits, v694._object, v111, v110);
      if (v156)
      {
        goto LABEL_90;
      }

      v242 = v154;
      v243 = v155;
      v110;
      v694._object;
      v694._countAndFlagsBits = v242;
      v694._object = v243;
      goto LABEL_92;
    }

LABEL_88:
    v153 = v111 & 0xFFFFFFFFFFFFLL;
    goto LABEL_91;
  }

  if ((v110 & 0x2000000000000000) == 0)
  {
    goto LABEL_88;
  }

LABEL_90:
  v153 = HIBYTE(v110) & 0xF;
LABEL_91:
  v110;
  _StringGuts.append(_:)(v111, v110, 0, v153, v157, v158, v159, v160, v161, v162, v163, v164);
  swift_bridgeObjectRelease_n(v110, 2);
LABEL_92:
  v165 = v694._object;
  v166 = (v694._object >> 56) & 0xF;
  if ((v694._object & 0x2000000000000000) == 0)
  {
    v166 = v694._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v649 = v54;
  if (v166 || (v694._countAndFlagsBits & ~v694._object & 0x2000000000000000) != 0)
  {
    if ((v694._object & 0x2000000000000000) != 0 && (v167 = specialized _SmallString.init(_:appending:)(v694._countAndFlagsBits, v694._object, 0x283EuLL, 0xE200000000000000), (v169 & 1) == 0))
    {
      v179 = v167;
      v180 = v168;
      v170 = v63;
      0xE200000000000000;
      v694._object;
      v694._countAndFlagsBits = v179;
      v694._object = v180;
    }

    else
    {
      v170 = v63;
      0xE200000000000000;
      _StringGuts.append(_:)(10302, 0xE200000000000000, 0, 2, v171, v172, v173, v174, v175, v176, v177, v178);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v170 = v63;
    v694._countAndFlagsBits = 10302;
    v694._object = 0xE200000000000000;
    v165;
  }

  v181 = *(v687 + 3);
  swift_getAssociatedTypeWitness(255, v181, v1, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v183 = v182;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v181, v1, v182, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v185 = *(AssociatedConformanceWitness + 56);
  v186 = swift_checkMetadataState(0, v183);
  v687 = v185;
  v185(0, v186, AssociatedConformanceWitness);
  v689 = v1;
  v187 = __swift_allocate_boxed_opaque_existential_0Tm(&v688);
  memcpy(v187, v86, v2);
  v188 = v689;
  v189 = __swift_project_boxed_opaque_existential_0Tm(&v688, v689);
  DynamicType = swift_getDynamicType(v189, v188, 1);
  LODWORD(v188) = swift_isOptionalType(DynamicType);
  __swift_destroy_boxed_opaque_existential_1Tm(&v688._countAndFlagsBits);
  if (!v188)
  {
    memcpy(v82, v86, v2);
    v208 = v170;
    if (swift_dynamicCast(&v688, v82, v1, &type metadata for String, 6uLL))
    {
      v218 = v688._object;
      v219 = v694._object;
      v220 = (v694._object >> 56) & 0xF;
      if ((v694._object & 0x2000000000000000) == 0)
      {
        v220 = v694._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      v209 = v680;
      if (v220 || (v694._countAndFlagsBits & ~v694._object & 0x2000000000000000) != 0)
      {
        _StringGuts.append(_:)(v688._countAndFlagsBits, v688._object, v210, v211, v212, v213, v214, v215, v216, v217);
        v218;
      }

      else
      {
        v694 = v688;
        v219;
      }

      goto LABEL_134;
    }

    v221 = v665;
    memcpy(v665, v86, v2);
    v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
    v223 = swift_dynamicCast(&v691, v221, v1, v222, 6uLL);
    v209 = v680;
    if (v223)
    {
      _ss9CodingKey_pWOb_0(&v691, &v688);
      v224 = v689;
      v225 = v690;
      __swift_project_boxed_opaque_existential_0Tm(&v688, v689);
      (*(v225 + 8))(&v694, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v224, v225);
      __swift_destroy_boxed_opaque_existential_1Tm(&v688._countAndFlagsBits);
      goto LABEL_134;
    }

    v693 = 0;
    v691 = 0u;
    v692 = 0u;
    outlined destroy of _HasContiguousBytes?(&v691, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
    v226 = v657;
    memcpy(v657, v86, v2);
    v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
    if (swift_dynamicCast(&v691, v226, v1, v227, 6uLL))
    {
      _ss9CodingKey_pWOb_0(&v691, &v688);
      v228 = v689;
      v229 = v690;
      __swift_project_boxed_opaque_existential_0Tm(&v688, v689);
      v230 = (*(v229 + 8))(v228, v229);
      v205 = v239;
      v240 = v694._object;
      v241 = (v694._object >> 56) & 0xF;
      if ((v694._object & 0x2000000000000000) == 0)
      {
        v241 = v694._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (!v241 && (v694._countAndFlagsBits & ~v694._object & 0x2000000000000000) == 0)
      {
        goto LABEL_325;
      }
    }

    else
    {
      v693 = 0;
      v691 = 0u;
      v692 = 0u;
      outlined destroy of _HasContiguousBytes?(&v691, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
      v244 = v650;
      memcpy(v650, v86, v2);
      v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
      if (!swift_dynamicCast(&v691, v244, v1, v245, 6uLL))
      {
        v693 = 0;
        v691 = 0u;
        v692 = 0u;
        outlined destroy of _HasContiguousBytes?(&v691, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
        *(&v692 + 1) = v1;
        v250 = __swift_allocate_boxed_opaque_existential_0Tm(&v691);
        memcpy(v250, v86, v2);
        Mirror.init(reflecting:)(&v691, &v688);
        v251 = v688._object;
        v252 = v690;
        _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v86, &v688, &v694, 0, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
        v252;
        v251;
        goto LABEL_134;
      }

      _ss9CodingKey_pWOb_0(&v691, &v688);
      v246 = v689;
      v247 = v690;
      __swift_project_boxed_opaque_existential_0Tm(&v688, v689);
      v230 = (*(v247 + 8))(v246, v247);
      v205 = v248;
      v240 = v694._object;
      v249 = (v694._object >> 56) & 0xF;
      if ((v694._object & 0x2000000000000000) == 0)
      {
        v249 = v694._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (!v249 && (v694._countAndFlagsBits & ~v694._object & 0x2000000000000000) == 0)
      {
LABEL_325:
        v694._countAndFlagsBits = v230;
        v694._object = v205;
        v205 = v240;
        goto LABEL_109;
      }
    }

    _StringGuts.append(_:)(v230, v205, v231, v232, v233, v234, v235, v236, v237, v238);
    goto LABEL_109;
  }

  v191 = v686;
  memcpy(v686, v86, v2);
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  swift_dynamicCast(&v688, v191, v1, v192, 7uLL);
  v193 = v689;
  v194 = v690;
  __swift_project_boxed_opaque_existential_0Tm(&v688, v689);
  v195 = (*(v194 + 8))(v193, v194);
  v205 = v196;
  v206 = v694._object;
  v207 = (v694._object >> 56) & 0xF;
  if ((v694._object & 0x2000000000000000) == 0)
  {
    v207 = v694._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v208 = v170;
  if (v207 || (v694._countAndFlagsBits & ~v694._object & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(v195, v196, v197, v198, v199, v200, v201, v202, v203, v204);
  }

  else
  {
    v694._countAndFlagsBits = v195;
    v694._object = v196;
    v205 = v206;
  }

  v209 = v680;
LABEL_109:
  v205;
  __swift_destroy_boxed_opaque_existential_1Tm(&v688._countAndFlagsBits);
LABEL_134:
  v253 = v694._object;
  v254 = (v694._object >> 56) & 0xF;
  if ((v694._object & 0x2000000000000000) == 0)
  {
    v254 = v694._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v254 || (v694._countAndFlagsBits & ~v694._object & 0x2000000000000000) != 0)
  {
    if ((v694._object & 0x2000000000000000) != 0 && (v255 = specialized _SmallString.init(_:appending:)(v694._countAndFlagsBits, v694._object, 0x202CuLL, 0xE200000000000000), (v257 & 1) == 0))
    {
      v266 = v255;
      v267 = v256;
      0xE200000000000000;
      v694._object;
      v694._countAndFlagsBits = v266;
      v694._object = v267;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v258, v259, v260, v261, v262, v263, v264, v265);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v694._countAndFlagsBits = 8236;
    v694._object = 0xE200000000000000;
    v253;
  }

  v687(1, v186, AssociatedConformanceWitness);
  v689 = v1;
  v268 = __swift_allocate_boxed_opaque_existential_0Tm(&v688);
  memcpy(v268, v209, v2);
  v269 = v689;
  v270 = __swift_project_boxed_opaque_existential_0Tm(&v688, v689);
  v271 = swift_getDynamicType(v270, v269, 1);
  LODWORD(v269) = swift_isOptionalType(v271);
  __swift_destroy_boxed_opaque_existential_1Tm(&v688._countAndFlagsBits);
  if (v269)
  {
    v272 = v686;
    memcpy(v686, v209, v2);
    v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v688, v272, v1, v273, 7uLL);
    goto LABEL_145;
  }

  v290 = v673;
  memcpy(v673, v209, v2);
  if (swift_dynamicCast(&v688, v290, v1, &type metadata for String, 6uLL))
  {
    v299 = v688._object;
    v300 = v694._object;
    v301 = (v694._object >> 56) & 0xF;
    if ((v694._object & 0x2000000000000000) == 0)
    {
      v301 = v694._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v301 || (v694._countAndFlagsBits & ~v694._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v688._countAndFlagsBits, v688._object, v291, v292, v293, v294, v295, v296, v297, v298);
      v299;
    }

    else
    {
      v694 = v688;
      v300;
    }

LABEL_167:
    v289 = v685;
  }

  else
  {
    v302 = v666;
    memcpy(v666, v209, v2);
    v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
    if (swift_dynamicCast(&v691, v302, v1, v303, 6uLL))
    {
      _ss9CodingKey_pWOb_0(&v691, &v688);
      v304 = v689;
      v305 = v690;
      __swift_project_boxed_opaque_existential_0Tm(&v688, v689);
      (*(v305 + 8))(&v694, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v304, v305);
      __swift_destroy_boxed_opaque_existential_1Tm(&v688._countAndFlagsBits);
      goto LABEL_167;
    }

    v693 = 0;
    v691 = 0u;
    v692 = 0u;
    outlined destroy of _HasContiguousBytes?(&v691, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
    v306 = v658;
    memcpy(v658, v209, v2);
    v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
    if (swift_dynamicCast(&v691, v306, v1, v307, 6uLL))
    {
      _ss9CodingKey_pWOb_0(&v691, &v688);
      v308 = v689;
      v309 = v690;
      __swift_project_boxed_opaque_existential_0Tm(&v688, v689);
      v276 = (*(v309 + 8))(v308, v309);
    }

    else
    {
      v693 = 0;
      v691 = 0u;
      v692 = 0u;
      outlined destroy of _HasContiguousBytes?(&v691, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
      v310 = v651;
      memcpy(v651, v209, v2);
      v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
      if (!swift_dynamicCast(&v691, v310, v1, v311, 6uLL))
      {
        v693 = 0;
        v691 = 0u;
        v692 = 0u;
        outlined destroy of _HasContiguousBytes?(&v691, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
        *(&v692 + 1) = v1;
        v312 = __swift_allocate_boxed_opaque_existential_0Tm(&v691);
        memcpy(v312, v209, v2);
        Mirror.init(reflecting:)(&v691, &v688);
        v313 = v688._object;
        v314 = v690;
        _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v209, &v688, &v694, 0, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
        v314;
        v313;
        goto LABEL_167;
      }

      _ss9CodingKey_pWOb_0(&v691, &v688);
LABEL_145:
      v274 = v689;
      v275 = v690;
      __swift_project_boxed_opaque_existential_0Tm(&v688, v689);
      v276 = (*(v275 + 8))(v274, v275);
    }

    v286 = v277;
    v287 = v694._object;
    v288 = (v694._object >> 56) & 0xF;
    if ((v694._object & 0x2000000000000000) == 0)
    {
      v288 = v694._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v288 || (v694._countAndFlagsBits & ~v694._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v276, v277, v278, v279, v280, v281, v282, v283, v284, v285);
    }

    else
    {
      v694._countAndFlagsBits = v276;
      v694._object = v277;
      v286 = v287;
    }

    v289 = v685;
    v286;
    __swift_destroy_boxed_opaque_existential_1Tm(&v688._countAndFlagsBits);
  }

  v315 = v694._object;
  v316 = (v694._object >> 56) & 0xF;
  if ((v694._object & 0x2000000000000000) == 0)
  {
    v316 = v694._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v316 || (v694._countAndFlagsBits & ~v694._object & 0x2000000000000000) != 0)
  {
    if ((v694._object & 0x2000000000000000) != 0 && (v317 = specialized _SmallString.init(_:appending:)(v694._countAndFlagsBits, v694._object, 0x202CuLL, 0xE200000000000000), (v319 & 1) == 0))
    {
      v328 = v317;
      v329 = v318;
      0xE200000000000000;
      v694._object;
      v694._countAndFlagsBits = v328;
      v694._object = v329;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v320, v321, v322, v323, v324, v325, v326, v327);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v694._countAndFlagsBits = 8236;
    v694._object = 0xE200000000000000;
    v315;
  }

  v687(2, v186, AssociatedConformanceWitness);
  v689 = v1;
  v330 = __swift_allocate_boxed_opaque_existential_0Tm(&v688);
  memcpy(v330, v208, v2);
  v331 = v689;
  v332 = __swift_project_boxed_opaque_existential_0Tm(&v688, v689);
  v333 = swift_getDynamicType(v332, v331, 1);
  LODWORD(v331) = swift_isOptionalType(v333);
  __swift_destroy_boxed_opaque_existential_1Tm(&v688._countAndFlagsBits);
  if (v331)
  {
    v334 = v686;
    memcpy(v686, v208, v2);
    v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v688, v334, v1, v335, 7uLL);
    goto LABEL_179;
  }

  v351 = v674;
  memcpy(v674, v208, v2);
  if (swift_dynamicCast(&v688, v351, v1, &type metadata for String, 6uLL))
  {
    v352 = v688._object;
    String.write(_:)(v688);
    v352;
    goto LABEL_189;
  }

  v366 = v667;
  memcpy(v667, v208, v2);
  v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v691, v366, v1, v367, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v691, &v688);
    v368 = v689;
    v369 = v690;
    __swift_project_boxed_opaque_existential_0Tm(&v688, v689);
    (*(v369 + 8))(&v694, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v368, v369);
LABEL_186:
    __swift_destroy_boxed_opaque_existential_1Tm(&v688._countAndFlagsBits);
    goto LABEL_189;
  }

  v693 = 0;
  v691 = 0u;
  v692 = 0u;
  outlined destroy of _HasContiguousBytes?(&v691, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v568 = v659;
  memcpy(v659, v208, v2);
  v569 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v691, v568, v1, v569, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v691, &v688);
    v570 = v689;
    v571 = v690;
    __swift_project_boxed_opaque_existential_0Tm(&v688, v689);
    v338 = (*(v571 + 8))(v570, v571);
LABEL_180:
    v348 = v339;
    v349 = v694._object;
    v350 = (v694._object >> 56) & 0xF;
    if ((v694._object & 0x2000000000000000) == 0)
    {
      v350 = v694._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v350 || (v694._countAndFlagsBits & ~v694._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v338, v339, v340, v341, v342, v343, v344, v345, v346, v347);
    }

    else
    {
      v694._countAndFlagsBits = v338;
      v694._object = v339;
      v348 = v349;
    }

    v348;
    goto LABEL_186;
  }

  v693 = 0;
  v691 = 0u;
  v692 = 0u;
  outlined destroy of _HasContiguousBytes?(&v691, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v590 = v649;
  memcpy(v649, v208, v2);
  v591 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v691, v590, v1, v591, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v691, &v688);
LABEL_179:
    v336 = v689;
    v337 = v690;
    __swift_project_boxed_opaque_existential_0Tm(&v688, v689);
    v338 = (*(v337 + 8))(v336, v337);
    goto LABEL_180;
  }

  v693 = 0;
  v691 = 0u;
  v692 = 0u;
  outlined destroy of _HasContiguousBytes?(&v691, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v692 + 1) = v1;
  v628 = __swift_allocate_boxed_opaque_existential_0Tm(&v691);
  memcpy(v628, v208, v2);
  Mirror.init(reflecting:)(&v691, &v688);
  v629 = v688._object;
  v630 = v690;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v208, &v688, &v694, 0, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v630;
  v629;
LABEL_189:
  v353 = v694._object;
  v354 = (v694._object >> 56) & 0xF;
  if ((v694._object & 0x2000000000000000) == 0)
  {
    v354 = v694._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v354 || (v694._countAndFlagsBits & ~v694._object & 0x2000000000000000) != 0)
  {
    if ((v694._object & 0x2000000000000000) != 0 && (v355 = specialized _SmallString.init(_:appending:)(v694._countAndFlagsBits, v694._object, 0x202CuLL, 0xE200000000000000), (v357 & 1) == 0))
    {
      v370 = v355;
      v371 = v356;
      0xE200000000000000;
      v694._object;
      v694._countAndFlagsBits = v370;
      v694._object = v371;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v358, v359, v360, v361, v362, v363, v364, v365);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v694._countAndFlagsBits = 8236;
    v694._object = 0xE200000000000000;
    v353;
  }

  v372 = v681;
  v687(3, v186, AssociatedConformanceWitness);
  v689 = v1;
  v373 = __swift_allocate_boxed_opaque_existential_0Tm(&v688);
  memcpy(v373, v372, v2);
  v374 = v689;
  v375 = __swift_project_boxed_opaque_existential_0Tm(&v688, v689);
  v376 = swift_getDynamicType(v375, v374, 1);
  LODWORD(v374) = swift_isOptionalType(v376);
  __swift_destroy_boxed_opaque_existential_1Tm(&v688._countAndFlagsBits);
  if (v374)
  {
    v377 = v686;
    memcpy(v686, v372, v2);
    v378 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v688, v377, v1, v378, 7uLL);
    v379 = v689;
    v380 = v690;
    __swift_project_boxed_opaque_existential_0Tm(&v688, v689);
    v381 = (*(v380 + 8))(v379, v380);
    goto LABEL_202;
  }

  v395 = v675;
  memcpy(v675, v372, v2);
  if (swift_dynamicCast(&v688, v395, v1, &type metadata for String, 6uLL))
  {
    v396 = v688._object;
    String.write(_:)(v688);
    v396;
    goto LABEL_212;
  }

  v410 = v668;
  memcpy(v668, v372, v2);
  v411 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v691, v410, v1, v411, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v691, &v688);
    v412 = v689;
    v413 = v690;
    __swift_project_boxed_opaque_existential_0Tm(&v688, v689);
    (*(v413 + 8))(&v694, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v412, v413);
    goto LABEL_209;
  }

  v693 = 0;
  v691 = 0u;
  v692 = 0u;
  outlined destroy of _HasContiguousBytes?(&v691, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v572 = v660;
  memcpy(v660, v372, v2);
  v573 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v691, v572, v1, v573, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v691, &v688);
    v574 = v689;
    v575 = v690;
    __swift_project_boxed_opaque_existential_0Tm(&v688, v689);
    v381 = (*(v575 + 8))(v574, v575);
LABEL_202:
    v391 = v382;
    v392 = v694._object;
    v393 = (v694._object >> 56) & 0xF;
    if ((v694._object & 0x2000000000000000) == 0)
    {
      v393 = v694._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v393 || (v694._countAndFlagsBits & ~v694._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v381, v382, v383, v384, v385, v386, v387, v388, v389, v390);
    }

    else
    {
      v694._countAndFlagsBits = v381;
      v694._object = v382;
      v391 = v392;
    }

    v394 = v391;
    goto LABEL_208;
  }

  v693 = 0;
  v691 = 0u;
  v692 = 0u;
  outlined destroy of _HasContiguousBytes?(&v691, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v592 = v652;
  memcpy(v652, v372, v2);
  v593 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v691, v592, v1, v593, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v691, &v688);
    v594 = v689;
    v595 = v690;
    __swift_project_boxed_opaque_existential_0Tm(&v688, v689);
    v596 = (*(v595 + 8))(v594, v595);
    v598 = v597;
    static String.+= infix(_:_:)(&v694, v596, v597, v599, v600, v601, v602, v603, v604, v605, v606);
    v394 = v598;
LABEL_208:
    v394;
LABEL_209:
    __swift_destroy_boxed_opaque_existential_1Tm(&v688._countAndFlagsBits);
    goto LABEL_212;
  }

  v693 = 0;
  v691 = 0u;
  v692 = 0u;
  outlined destroy of _HasContiguousBytes?(&v691, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v692 + 1) = v1;
  v631 = __swift_allocate_boxed_opaque_existential_0Tm(&v691);
  memcpy(v631, v372, v2);
  Mirror.init(reflecting:)(&v691, &v688);
  v632 = v688._object;
  v633 = v372;
  v634 = v690;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v633, &v688, &v694, 0, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v634;
  v632;
LABEL_212:
  v397 = v694._object;
  v398 = (v694._object >> 56) & 0xF;
  if ((v694._object & 0x2000000000000000) == 0)
  {
    v398 = v694._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v398 || (v694._countAndFlagsBits & ~v694._object & 0x2000000000000000) != 0)
  {
    if ((v694._object & 0x2000000000000000) != 0 && (v399 = specialized _SmallString.init(_:appending:)(v694._countAndFlagsBits, v694._object, 0x202CuLL, 0xE200000000000000), (v401 & 1) == 0))
    {
      v414 = v399;
      v415 = v400;
      0xE200000000000000;
      v694._object;
      v694._countAndFlagsBits = v414;
      v694._object = v415;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v402, v403, v404, v405, v406, v407, v408, v409);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v694._countAndFlagsBits = 8236;
    v694._object = 0xE200000000000000;
    v397;
  }

  v416 = v682;
  v687(4, v186, AssociatedConformanceWitness);
  v689 = v1;
  v417 = __swift_allocate_boxed_opaque_existential_0Tm(&v688);
  memcpy(v417, v416, v2);
  v418 = v689;
  v419 = __swift_project_boxed_opaque_existential_0Tm(&v688, v689);
  v420 = swift_getDynamicType(v419, v418, 1);
  LODWORD(v418) = swift_isOptionalType(v420);
  __swift_destroy_boxed_opaque_existential_1Tm(&v688._countAndFlagsBits);
  if (v418)
  {
    v421 = v686;
    memcpy(v686, v416, v2);
    v422 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v688, v421, v1, v422, 7uLL);
    v423 = v689;
    v424 = v690;
    __swift_project_boxed_opaque_existential_0Tm(&v688, v689);
    v425 = (*(v424 + 8))(v423, v424);
    v435 = v426;
    v436 = v694._object;
    v437 = (v694._object >> 56) & 0xF;
    if ((v694._object & 0x2000000000000000) == 0)
    {
      v437 = v694._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v437 || (v694._countAndFlagsBits & ~v694._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v425, v426, v427, v428, v429, v430, v431, v432, v433, v434);
    }

    else
    {
      v694._countAndFlagsBits = v425;
      v694._object = v426;
      v435 = v436;
    }

    v438 = v435;
LABEL_230:
    v438;
LABEL_231:
    __swift_destroy_boxed_opaque_existential_1Tm(&v688._countAndFlagsBits);
  }

  else
  {
    v439 = v676;
    memcpy(v676, v416, v2);
    if (swift_dynamicCast(&v688, v439, v1, &type metadata for String, 6uLL))
    {
      v440 = v688._object;
      String.write(_:)(v688);
      v440;
    }

    else
    {
      v454 = v669;
      memcpy(v669, v416, v2);
      v455 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
      if (swift_dynamicCast(&v691, v454, v1, v455, 6uLL))
      {
        _ss9CodingKey_pWOb_0(&v691, &v688);
        v456 = v689;
        v457 = v690;
        __swift_project_boxed_opaque_existential_0Tm(&v688, v689);
        (*(v457 + 8))(&v694, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v456, v457);
        goto LABEL_231;
      }

      v693 = 0;
      v691 = 0u;
      v692 = 0u;
      outlined destroy of _HasContiguousBytes?(&v691, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
      v576 = v661;
      memcpy(v661, v416, v2);
      v577 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
      if (swift_dynamicCast(&v691, v576, v1, v577, 6uLL) || (v693 = 0, v691 = 0u, v692 = 0u, outlined destroy of _HasContiguousBytes?(&v691, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR), v607 = v653, memcpy(v653, v416, v2), v608 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR), swift_dynamicCast(&v691, v607, v1, v608, 6uLL)))
      {
        _ss9CodingKey_pWOb_0(&v691, &v688);
        v609 = v689;
        v610 = v690;
        __swift_project_boxed_opaque_existential_0Tm(&v688, v689);
        v611 = (*(v610 + 8))(v609, v610);
        v613 = v612;
        static String.+= infix(_:_:)(&v694, v611, v612, v614, v615, v616, v617, v618, v619, v620, v621);
        v438 = v613;
        goto LABEL_230;
      }

      v693 = 0;
      v691 = 0u;
      v692 = 0u;
      outlined destroy of _HasContiguousBytes?(&v691, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
      *(&v692 + 1) = v1;
      v635 = __swift_allocate_boxed_opaque_existential_0Tm(&v691);
      memcpy(v635, v416, v2);
      Mirror.init(reflecting:)(&v691, &v688);
      v636 = v688._object;
      v637 = v416;
      v638 = v690;
      _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v637, &v688, &v694, 0, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
      v638;
      v636;
    }
  }

  v441 = v694._object;
  v442 = (v694._object >> 56) & 0xF;
  if ((v694._object & 0x2000000000000000) == 0)
  {
    v442 = v694._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v442 || (v694._countAndFlagsBits & ~v694._object & 0x2000000000000000) != 0)
  {
    if ((v694._object & 0x2000000000000000) != 0 && (v443 = specialized _SmallString.init(_:appending:)(v694._countAndFlagsBits, v694._object, 0x202CuLL, 0xE200000000000000), (v445 & 1) == 0))
    {
      v458 = v443;
      v459 = v444;
      0xE200000000000000;
      v694._object;
      v694._countAndFlagsBits = v458;
      v694._object = v459;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v446, v447, v448, v449, v450, v451, v452, v453);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v694._countAndFlagsBits = 8236;
    v694._object = 0xE200000000000000;
    v441;
  }

  v460 = v683;
  v687(5, v186, AssociatedConformanceWitness);
  v689 = v1;
  v461 = __swift_allocate_boxed_opaque_existential_0Tm(&v688);
  memcpy(v461, v460, v2);
  v462 = v689;
  v463 = __swift_project_boxed_opaque_existential_0Tm(&v688, v689);
  v464 = swift_getDynamicType(v463, v462, 1);
  LODWORD(v462) = swift_isOptionalType(v464);
  __swift_destroy_boxed_opaque_existential_1Tm(&v688._countAndFlagsBits);
  if (v462)
  {
    v465 = v686;
    memcpy(v686, v460, v2);
    v466 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v688, v465, v1, v466, 7uLL);
    goto LABEL_247;
  }

  v488 = v677;
  memcpy(v677, v460, v2);
  if (swift_dynamicCast(&v688, v488, v1, &type metadata for String, 6uLL))
  {
    v489 = v688._object;
    String.write(_:)(v688);
    v489;
    goto LABEL_252;
  }

  v556 = v670;
  memcpy(v670, v460, v2);
  v557 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v691, v556, v1, v557, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v691, &v688);
    v558 = v689;
    v559 = v690;
    __swift_project_boxed_opaque_existential_0Tm(&v688, v689);
    (*(v559 + 8))(&v694, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v558, v559);
    goto LABEL_249;
  }

  v693 = 0;
  v691 = 0u;
  v692 = 0u;
  outlined destroy of _HasContiguousBytes?(&v691, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v578 = v662;
  memcpy(v662, v460, v2);
  v579 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v691, v578, v1, v579, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v691, &v688);
    v580 = v689;
    v581 = v690;
    __swift_project_boxed_opaque_existential_0Tm(&v688, v689);
    v469 = (*(v581 + 8))(v580, v581);
LABEL_248:
    v479 = v470;
    static String.+= infix(_:_:)(&v694, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478);
    v479;
LABEL_249:
    __swift_destroy_boxed_opaque_existential_1Tm(&v688._countAndFlagsBits);
    goto LABEL_252;
  }

  v693 = 0;
  v691 = 0u;
  v692 = 0u;
  outlined destroy of _HasContiguousBytes?(&v691, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v622 = v654;
  memcpy(v654, v460, v2);
  v623 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v691, v622, v1, v623, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v691, &v688);
LABEL_247:
    v467 = v689;
    v468 = v690;
    __swift_project_boxed_opaque_existential_0Tm(&v688, v689);
    v469 = (*(v468 + 8))(v467, v468);
    goto LABEL_248;
  }

  v693 = 0;
  v691 = 0u;
  v692 = 0u;
  outlined destroy of _HasContiguousBytes?(&v691, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v692 + 1) = v1;
  v639 = __swift_allocate_boxed_opaque_existential_0Tm(&v691);
  memcpy(v639, v460, v2);
  Mirror.init(reflecting:)(&v691, &v688);
  v640 = v688._object;
  v641 = v460;
  v642 = v690;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v641, &v688, &v694, 0, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v642;
  v640;
LABEL_252:
  v490 = v684;
  v491 = v694._object;
  v492 = (v694._object >> 56) & 0xF;
  if ((v694._object & 0x2000000000000000) == 0)
  {
    v492 = v694._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v492 || (v694._countAndFlagsBits & ~v694._object & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(0x202CuLL, 0xE200000000000000, v480, v481, v482, v483, v484, v485, v486, v487);
    v491 = 0xE200000000000000;
  }

  else
  {
    v694._countAndFlagsBits = 8236;
    v694._object = 0xE200000000000000;
  }

  v491;
  v687(6, v186, AssociatedConformanceWitness);
  v689 = v1;
  v493 = __swift_allocate_boxed_opaque_existential_0Tm(&v688);
  memcpy(v493, v490, v2);
  v494 = v689;
  v495 = __swift_project_boxed_opaque_existential_0Tm(&v688, v689);
  v496 = swift_getDynamicType(v495, v494, 1);
  LODWORD(v494) = swift_isOptionalType(v496);
  __swift_destroy_boxed_opaque_existential_1Tm(&v688._countAndFlagsBits);
  if (v494)
  {
    v497 = v686;
    memcpy(v686, v490, v2);
    v498 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v688, v497, v1, v498, 7uLL);
    goto LABEL_259;
  }

  v520 = v678;
  memcpy(v678, v490, v2);
  if (swift_dynamicCast(&v688, v520, v1, &type metadata for String, 6uLL))
  {
    v521 = v688._object;
    String.write(_:)(v688);
    v521;
    goto LABEL_264;
  }

  v560 = v671;
  memcpy(v671, v490, v2);
  v561 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v691, v560, v1, v561, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v691, &v688);
    v562 = v689;
    v563 = v690;
    __swift_project_boxed_opaque_existential_0Tm(&v688, v689);
    (*(v563 + 8))(&v694, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v562, v563);
    goto LABEL_261;
  }

  v693 = 0;
  v691 = 0u;
  v692 = 0u;
  outlined destroy of _HasContiguousBytes?(&v691, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v582 = v663;
  memcpy(v663, v490, v2);
  v583 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v691, v582, v1, v583, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v691, &v688);
    v584 = v689;
    v585 = v690;
    __swift_project_boxed_opaque_existential_0Tm(&v688, v689);
    v501 = (*(v585 + 8))(v584, v585);
LABEL_260:
    v511 = v502;
    static String.+= infix(_:_:)(&v694, v501, v502, v503, v504, v505, v506, v507, v508, v509, v510);
    v511;
LABEL_261:
    __swift_destroy_boxed_opaque_existential_1Tm(&v688._countAndFlagsBits);
    goto LABEL_264;
  }

  v693 = 0;
  v691 = 0u;
  v692 = 0u;
  outlined destroy of _HasContiguousBytes?(&v691, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v624 = v655;
  memcpy(v655, v490, v2);
  v625 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v691, v624, v1, v625, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v691, &v688);
LABEL_259:
    v499 = v689;
    v500 = v690;
    __swift_project_boxed_opaque_existential_0Tm(&v688, v689);
    v501 = (*(v500 + 8))(v499, v500);
    goto LABEL_260;
  }

  v693 = 0;
  v691 = 0u;
  v692 = 0u;
  outlined destroy of _HasContiguousBytes?(&v691, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v692 + 1) = v1;
  v643 = __swift_allocate_boxed_opaque_existential_0Tm(&v691);
  memcpy(v643, v490, v2);
  Mirror.init(reflecting:)(&v691, &v688);
  v644 = v688._object;
  v645 = v690;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v490, &v688, &v694, 0, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v645;
  v644;
LABEL_264:
  v522 = v694._object;
  v523 = (v694._object >> 56) & 0xF;
  if ((v694._object & 0x2000000000000000) == 0)
  {
    v523 = v694._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v523 || (v694._countAndFlagsBits & ~v694._object & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(0x202CuLL, 0xE200000000000000, v512, v513, v514, v515, v516, v517, v518, v519);
    v522 = 0xE200000000000000;
  }

  else
  {
    v694._countAndFlagsBits = 8236;
    v694._object = 0xE200000000000000;
  }

  v522;
  v687(7, v186, AssociatedConformanceWitness);
  v689 = v1;
  v524 = __swift_allocate_boxed_opaque_existential_0Tm(&v688);
  memcpy(v524, v289, v2);
  v525 = v689;
  v526 = __swift_project_boxed_opaque_existential_0Tm(&v688, v689);
  v527 = swift_getDynamicType(v526, v525, 1);
  LODWORD(v525) = swift_isOptionalType(v527);
  __swift_destroy_boxed_opaque_existential_1Tm(&v688._countAndFlagsBits);
  if (v525)
  {
    v528 = v686;
    memcpy(v686, v289, v2);
    v529 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v688, v528, v1, v529, 7uLL);
    goto LABEL_271;
  }

  v551 = v679;
  memcpy(v679, v289, v2);
  if (swift_dynamicCast(&v688, v551, v1, &type metadata for String, 6uLL))
  {
    v552 = v688._object;
    String.write(_:)(v688);
    v552;
    goto LABEL_276;
  }

  v564 = v672;
  memcpy(v672, v289, v2);
  v565 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v691, v564, v1, v565, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v691, &v688);
    v566 = v689;
    v567 = v690;
    __swift_project_boxed_opaque_existential_0Tm(&v688, v689);
    (*(v567 + 8))(&v694, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v566, v567);
    goto LABEL_273;
  }

  v693 = 0;
  v691 = 0u;
  v692 = 0u;
  outlined destroy of _HasContiguousBytes?(&v691, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v586 = v664;
  memcpy(v664, v289, v2);
  v587 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v691, v586, v1, v587, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v691, &v688);
    v588 = v689;
    v589 = v690;
    __swift_project_boxed_opaque_existential_0Tm(&v688, v689);
    v532 = (*(v589 + 8))(v588, v589);
LABEL_272:
    v542 = v533;
    static String.+= infix(_:_:)(&v694, v532, v533, v534, v535, v536, v537, v538, v539, v540, v541);
    v542;
LABEL_273:
    __swift_destroy_boxed_opaque_existential_1Tm(&v688._countAndFlagsBits);
    goto LABEL_276;
  }

  v693 = 0;
  v691 = 0u;
  v692 = 0u;
  outlined destroy of _HasContiguousBytes?(&v691, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v626 = v656;
  memcpy(v656, v289, v2);
  v627 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v691, v626, v1, v627, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v691, &v688);
LABEL_271:
    v530 = v689;
    v531 = v690;
    __swift_project_boxed_opaque_existential_0Tm(&v688, v689);
    v532 = (*(v531 + 8))(v530, v531);
    goto LABEL_272;
  }

  v693 = 0;
  v691 = 0u;
  v692 = 0u;
  outlined destroy of _HasContiguousBytes?(&v691, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v692 + 1) = v1;
  v646 = __swift_allocate_boxed_opaque_existential_0Tm(&v691);
  memcpy(v646, v289, v2);
  Mirror.init(reflecting:)(&v691, &v688);
  v647 = v688._object;
  v648 = v690;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v289, &v688, &v694, 0, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v648;
  v647;
LABEL_276:
  v553 = v694._object;
  v554 = (v694._object >> 56) & 0xF;
  if ((v694._object & 0x2000000000000000) == 0)
  {
    v554 = v694._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v554 || (v694._countAndFlagsBits & ~v694._object & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(0x29uLL, 0xE100000000000000, v543, v544, v545, v546, v547, v548, v549, v550);
    v553 = 0xE100000000000000;
  }

  else
  {
    v694._countAndFlagsBits = 41;
    v694._object = 0xE100000000000000;
  }

  v553;
  return v694._countAndFlagsBits;
}

uint64_t SIMD8<>.init<A>(_:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v36 = a4;
  v37 = a6;
  v39 = a1;
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v19 = v18;
  v35 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v18, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v21 = *(AssociatedConformanceWitness + 48);
  v33 = v19;
  v34 = a8;
  v21(v19, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v31 = a7;
  v32 = v22;
  v38 = a3;
  v23 = swift_getAssociatedConformanceWitness(a7, a3, v22, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v24 = 0;
  v25 = *(v23 + 56);
  do
  {
    v26 = swift_checkMetadataState(0, v32);
    v25(v24, v26, v23);
    (*(*(v36 + 16) + 72))(v15, v38, *(v37 + 8));
    (*(AssociatedConformanceWitness + 64))(v17, v24++, v33, AssociatedConformanceWitness);
  }

  while (v24 != 8);
  v28 = type metadata accessor for SIMD8(0, v38, v31, v27);
  return (*(*(v28 - 8) + 8))(v39, v28);
}

{
  v39 = a6;
  v41 = a1;
  v14 = MEMORY[0x1EEE9AC00](a1);
  v36 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v19 = v18;
  v38 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v18, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v21 = *(AssociatedConformanceWitness + 48);
  v37 = a8;
  v35 = v19;
  v21(v19, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v31 = a7;
  v40 = a3;
  v34 = v22;
  v23 = swift_getAssociatedConformanceWitness(a7, a3, v22, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
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

  while (v24 != 8);
  v28 = type metadata accessor for SIMD8(0, v40, v31, v27);
  return (*(*(v28 - 8) + 8))(v41, v28);
}

uint64_t key path getter for SIMD16.subscript(_:) : <A>SIMD16<A>A(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2 >= 0x10)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = *(a2 + a3 - 16);
  v4 = *(a2 + a3 - 8);
  swift_getAssociatedTypeWitness(255, v4, v5, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v7 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v5, v6, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v9 = *(AssociatedConformanceWitness + 56);
  v10 = swift_checkMetadataState(0, v7);
  return v9(v3, v10, AssociatedConformanceWitness);
}

uint64_t key path setter for SIMD16.subscript(_:) : <A>SIMD16<A>A(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v18 - v6;
  v9 = *v8;
  memcpy(&v18 - v6, v10, v11);
  if (v9 >= 0x10)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  swift_getAssociatedTypeWitness(255, v5, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v13 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v4, v12, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v15 = *(AssociatedConformanceWitness + 64);
  v16 = swift_checkMetadataState(0, v13);
  return v15(v7, v9, v16, AssociatedConformanceWitness);
}

uint64_t (*SIMD16.subscript.modify(void *a1, unint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x40, 0x66FCuLL);
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
    v7[3] = swift_coroFrameAlloc(v10, 0x66FCuLL);
    v8[4] = swift_coroFrameAlloc(v10, 0x66FCuLL);
    v11 = swift_coroFrameAlloc(v10, 0x66FCuLL);
  }

  else
  {
    v7[3] = malloc(v10);
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v8[5] = v11;
  if (a2 >= 0x10)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v12, v9, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, v9, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v8[6] = AssociatedConformanceWitness;
  v16 = *(AssociatedConformanceWitness + 56);
  v17 = swift_checkMetadataState(0, v14);
  v8[7] = v17;
  v16(a2, v17, AssociatedConformanceWitness);
  return SIMD4.subscript.modify;
}

uint64_t SIMD16.init(_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:)(const void *a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7, const void *a8, const void *a9, const void *a10, const void *a11, const void *a12, const void *a13, const void *a14, const void *a15, const void *a16, const char *a17, int **a18)
{
  v32 = a8;
  v29 = a6;
  v30 = a7;
  v27 = a4;
  v28 = a5;
  v38 = a15;
  v39 = a16;
  v36 = a13;
  v37 = a14;
  v34 = a11;
  v35 = a12;
  v21 = *(*(a17 - 1) + 64);
  v33 = a10;
  v31 = a9;
  MEMORY[0x1EEE9AC00](a1);
  swift_getAssociatedTypeWitness(0, a18, a17, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v23 = v22;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a18, a17, v22, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  (*(AssociatedConformanceWitness + 48))(v23, AssociatedConformanceWitness);
  memcpy(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v21);
  v25 = *(AssociatedConformanceWitness + 64);
  v25(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), 0, v23, AssociatedConformanceWitness);
  memcpy(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v21);
  v25(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v23, AssociatedConformanceWitness);
  memcpy(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v21);
  v25(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), 2, v23, AssociatedConformanceWitness);
  memcpy(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v21);
  v25(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), 3, v23, AssociatedConformanceWitness);
  memcpy(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v21);
  v25(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), 4, v23, AssociatedConformanceWitness);
  memcpy(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v21);
  v25(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), 5, v23, AssociatedConformanceWitness);
  memcpy(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v21);
  v25(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), 6, v23, AssociatedConformanceWitness);
  memcpy(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v21);
  v25(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), 7, v23, AssociatedConformanceWitness);
  memcpy(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v21);
  v25(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), 8, v23, AssociatedConformanceWitness);
  memcpy(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v21);
  v25(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), 9, v23, AssociatedConformanceWitness);
  memcpy(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v21);
  v25(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), 10, v23, AssociatedConformanceWitness);
  memcpy(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v21);
  v25(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), 11, v23, AssociatedConformanceWitness);
  memcpy(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v21);
  v25(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), 12, v23, AssociatedConformanceWitness);
  memcpy(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v21);
  v25(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), 13, v23, AssociatedConformanceWitness);
  memcpy(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v38, v21);
  v25(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), 14, v23, AssociatedConformanceWitness);
  memcpy(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v39, v21);
  return (v25)(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), 15, v23, AssociatedConformanceWitness);
}

uint64_t SIMD16.init(lowHalf:highHalf:)(uint64_t a1, uint64_t a2, const char *a3, int **a4)
{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v8, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  (*(AssociatedConformanceWitness + 48))(v9, AssociatedConformanceWitness);
  v12 = type metadata accessor for SIMD16(0, a3, a4, v11);
  specialized SIMD16.lowHalf.setter(a1, v12);
  v14 = type metadata accessor for SIMD8(0, a3, a4, v13);
  v16 = *(*(v14 - 8) + 8);
  (v16)((v14 - 8), a1, v14);
  specialized SIMD16.highHalf.setter(a2, v12);

  return v16(a2, v14);
}

uint64_t SIMD64.oddHalf.setter(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(void, void, void))
{
  a3();
  v7 = a4(0, *(a2 + 16), *(a2 + 24));
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

uint64_t SIMD16.lowHalf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 24);
  swift_getAssociatedTypeWitness(0, v7, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v3, v8, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v11 = v9;
  (*(AssociatedConformanceWitness + 48))(v9, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, v7, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v13 = v12;
  v14 = swift_getAssociatedConformanceWitness(v7, v3, v12, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v47 = *(v14 + 56);
  v15 = v47;
  v16 = swift_checkMetadataState(0, v13);
  v15(0, v16, v14);
  v45 = AssociatedConformanceWitness;
  v17 = AssociatedConformanceWitness + 64;
  v41 = *(AssociatedConformanceWitness + 64);
  v41(v6, 0, v11, AssociatedConformanceWitness);
  v18 = swift_checkMetadataState(0, v13);
  v46 = v2;
  v47(1, v18, v14);
  v44 = v11;
  v19 = v11;
  v20 = v45;
  v21 = v41;
  v41(v6, 1, v19, v45);
  v22 = swift_checkMetadataState(0, v13);
  v23 = v47;
  v47(2, v22, v14);
  v42 = v14 + 56;
  v21(v6, 2, v44, v20);
  v40[0] = v13;
  v24 = swift_checkMetadataState(0, v13);
  v43 = v14;
  v23(3, v24, v14);
  v25 = v44;
  v26 = v41;
  v41(v6, 3, v44, v20);
  v40[1] = v17;
  v27 = swift_checkMetadataState(0, v13);
  v23(4, v27, v14);
  v28 = v25;
  v29 = v25;
  v30 = v45;
  v31 = v26;
  v26(v6, 4, v28, v45);
  v32 = v40[0];
  v33 = swift_checkMetadataState(0, v40[0]);
  v34 = v43;
  v35 = v47;
  v47(5, v33, v43);
  v31(v6, 5, v29, v30);
  v36 = swift_checkMetadataState(0, v32);
  v35(6, v36, v34);
  v37 = v45;
  v31(v6, 6, v29, v45);
  v38 = swift_checkMetadataState(0, v32);
  v35(7, v38, v43);
  return (v31)(v6, 7, v29, v37);
}

void (*SIMD16.lowHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x5F85uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD8(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0x5F85uLL);
    v11 = swift_coroFrameAlloc(v10, 0x5F85uLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD16.lowHalf.getter(a2, v11);
  return SIMD16.lowHalf.modify;
}

void SIMD64.oddHalf.modify(uint64_t **a1, char a2, void (*a3)(void *, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v9 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[4], v6, v7);
    a3(v5, v9);
    v10 = *(v8 + 8);
    v10(v5, v7);
    v10(v6, v7);
  }

  else
  {
    a3((*a1)[5], v9);
    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t SIMD16.highHalf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 24);
  swift_getAssociatedTypeWitness(0, v7, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v3, v8, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v11 = *(AssociatedConformanceWitness + 48);
  v20 = v9;
  v21 = a2;
  v11(v9, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, v7, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v13 = v12;
  v14 = swift_getAssociatedConformanceWitness(v7, v3, v12, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v15 = 0;
  v16 = *(v14 + 56);
  do
  {
    v17 = swift_checkMetadataState(0, v13);
    v16(v15 + 8, v17, v14);
    result = (*(AssociatedConformanceWitness + 64))(v6, v15++, v20, AssociatedConformanceWitness);
  }

  while (v15 != 8);
  return result;
}

void (*SIMD16.highHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x668AuLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD8(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0x668AuLL);
    v11 = swift_coroFrameAlloc(v10, 0x668AuLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD16.highHalf.getter(a2, v11);
  return SIMD16.highHalf.modify;
}

uint64_t SIMD16.evenHalf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 24);
  swift_getAssociatedTypeWitness(0, v7, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v3, v8, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v11 = *(AssociatedConformanceWitness + 48);
  v20 = v9;
  v21 = a2;
  v11(v9, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, v7, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v19 = v12;
  v13 = swift_getAssociatedConformanceWitness(v7, v3, v12, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
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

  while (v14 != 16);
  return result;
}

void (*SIMD16.evenHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x1234uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD8(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0x1234uLL);
    v11 = swift_coroFrameAlloc(v10, 0x1234uLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD16.evenHalf.getter(a2, v11);
  return SIMD16.evenHalf.modify;
}

uint64_t SIMD16.oddHalf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 24);
  swift_getAssociatedTypeWitness(0, v7, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v3, v8, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v11 = *(AssociatedConformanceWitness + 48);
  v20 = v9;
  v21 = a2;
  v11(v9, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, v7, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v19 = v12;
  v13 = swift_getAssociatedConformanceWitness(v7, v3, v12, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v14 = 0;
  v15 = *(v13 + 56);
  for (i = 1; i != 17; i += 2)
  {
    v17 = swift_checkMetadataState(0, v19);
    v15(i, v17, v13);
    result = (*(AssociatedConformanceWitness + 64))(v6, v14++, v20, AssociatedConformanceWitness);
  }

  return result;
}

void (*SIMD16.oddHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x39F3uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD8(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0x39F3uLL);
    v11 = swift_coroFrameAlloc(v10, 0x39F3uLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD16.oddHalf.getter(a2, v11);
  return SIMD16.oddHalf.modify;
}

uint64_t protocol witness for SIMDStorage.subscript.getter in conformance SIMD16<A>(unint64_t a1, uint64_t a2)
{
  if (a1 >= 0x10)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v2, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v6 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v2, v3, v5, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v10 = *(AssociatedConformanceWitness + 56);
  v8 = swift_checkMetadataState(0, v6);

  return v10(a1, v8, AssociatedConformanceWitness);
}

uint64_t protocol witness for SIMDStorage.subscript.setter in conformance SIMD16<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 0x10)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v3, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v8 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v3, v4, v7, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v12 = *(AssociatedConformanceWitness + 64);
  v10 = swift_checkMetadataState(0, v8);

  return v12(a1, a2, v10, AssociatedConformanceWitness);
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance SIMD16<A>(void *a1, unint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x40, 0x7D46uLL);
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
    v7[3] = swift_coroFrameAlloc(v10, 0x7D46uLL);
    v8[4] = swift_coroFrameAlloc(v10, 0x7D46uLL);
    v11 = swift_coroFrameAlloc(v10, 0x7D46uLL);
  }

  else
  {
    v7[3] = malloc(v10);
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v8[5] = v11;
  if (a2 >= 0x10)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v12, v9, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, v9, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v8[6] = AssociatedConformanceWitness;
  v16 = *(AssociatedConformanceWitness + 56);
  v17 = swift_checkMetadataState(0, v14);
  v8[7] = v17;
  v16(a2, v17, AssociatedConformanceWitness);
  return SIMD4.subscript.modify;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SIMD16<A>(uint64_t a1, const char *a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD16<A>, a2, a3);

  return SIMD.hash(into:)(a1, a2, WitnessTable);
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance SIMD16<A>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD16<A>, a1, a3);

  return SIMD.description.getter(a1, WitnessTable);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance SIMD16<A>@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD16<A>, a2, a3);

  return SIMD.init(arrayLiteral:)(a1, a2, WitnessTable, a4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SIMD16<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[1] = a1;
  v19[2] = a2;
  v20 = a3;
  v3 = *(a3 + 16);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v19 - v7;
  v9 = 0;
  v10 = 1;
  do
  {
    if (v10)
    {
      v11 = *(v20 + 24);
      swift_getAssociatedTypeWitness(255, v11, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
      v13 = v12;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v11, v3, v12, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
      v15 = *(AssociatedConformanceWitness + 7);
      v16 = swift_checkMetadataState(0, v13);
      v15(v9, v16, AssociatedConformanceWitness);
      v15(v9, v16, AssociatedConformanceWitness);
      v17 = swift_getAssociatedConformanceWitness(AssociatedConformanceWitness, v16, v3, &protocol requirements base descriptor for SIMDStorage, associated conformance descriptor for SIMDStorage.SIMDStorage.Scalar: Hashable);
      v10 = (*(*(v17 + 8) + 8))(v8, v6, v3);
    }

    else
    {
      v10 = 0;
    }

    ++v9;
  }

  while (v9 != 16);
  return v10 & 1;
}

uint64_t SIMD16<>.init<A>(truncatingIfNeeded:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
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
    (*(*(v36 + 8) + 96))(v15, v38, *(v37 + 8));
    (*(AssociatedConformanceWitness + 64))(v17, v24++, v33, AssociatedConformanceWitness);
  }

  while (v24 != 16);
  v28 = type metadata accessor for SIMD16(0, v38, v31, v27);
  return (*(*(v28 - 8) + 8))(v39, v28);
}

uint64_t SIMD16<>.init<A>(clamping:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
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
    (*(*(v36 + 8) + 104))(v15, v38, *(v37 + 8));
    (*(AssociatedConformanceWitness + 64))(v17, v24++, v33, AssociatedConformanceWitness);
  }

  while (v24 != 16);
  v28 = type metadata accessor for SIMD16(0, v38, v31, v27);
  return (*(*(v28 - 8) + 8))(v39, v28);
}

uint64_t SIMD16<>.init<A>(_:rounding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, const char *a4@<X3>, uint64_t a5@<X4>, swift *a6@<X5>, uint64_t a7@<X6>, int **a8@<X7>, uint64_t a9@<X8>)
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
  swift_getAssociatedTypeWitness(0, v22, v21, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v24 = v23;
  v45 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a6, a3, v23, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v26 = *(AssociatedConformanceWitness + 48);
  v43 = a9;
  v41 = v24;
  v26(v24, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a8, a4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v37 = a8;
  v48 = a4;
  v40 = v27;
  v28 = swift_getAssociatedConformanceWitness(a8, a4, v27, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
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

  while (v29 != 16);
  v34 = type metadata accessor for SIMD16(0, v48, v37, v33);
  return (*(*(v34 - 8) + 8))(v49, v34);
}

uint64_t SIMD16.debugDescription.getter(uint64_t a1)
{
  v793 = a1;
  v1 = *(a1 + 16);
  v2 = *(*(v1 - 1) + 64);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = (&v752 - v5);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v782 = (&v752 - v8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v792 = (&v752 - v10);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v802 = &v752 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v762 = (&v752 - v14);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v772 = (&v752 - v16);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v781 = (&v752 - v18);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v791 = (&v752 - v20);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v801 = &v752 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v761 = (&v752 - v24);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v771 = (&v752 - v26);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v780 = (&v752 - v28);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v790 = (&v752 - v30);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v800 = &v752 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v760 = (&v752 - v34);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v770 = (&v752 - v36);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v779 = (&v752 - v38);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v789 = (&v752 - v40);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v799 = &v752 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v759 = (&v752 - v44);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v769 = (&v752 - v46);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v778 = (&v752 - v48);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v788 = (&v752 - v50);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v798 = &v752 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v758 = (&v752 - v54);
  v55 = MEMORY[0x1EEE9AC00](v53);
  v768 = (&v752 - v56);
  v57 = MEMORY[0x1EEE9AC00](v55);
  v777 = (&v752 - v58);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v787 = (&v752 - v60);
  v61 = MEMORY[0x1EEE9AC00](v59);
  v797 = &v752 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v757 = (&v752 - v64);
  v65 = MEMORY[0x1EEE9AC00](v63);
  v767 = (&v752 - v66);
  v67 = MEMORY[0x1EEE9AC00](v65);
  v776 = (&v752 - v68);
  v69 = MEMORY[0x1EEE9AC00](v67);
  v786 = (&v752 - v70);
  v71 = MEMORY[0x1EEE9AC00](v69);
  v796 = &v752 - v72;
  v73 = MEMORY[0x1EEE9AC00](v71);
  v756 = (&v752 - v74);
  v75 = MEMORY[0x1EEE9AC00](v73);
  v766 = (&v752 - v76);
  v77 = MEMORY[0x1EEE9AC00](v75);
  v775 = (&v752 - v78);
  v79 = MEMORY[0x1EEE9AC00](v77);
  v785 = (&v752 - v80);
  v81 = MEMORY[0x1EEE9AC00](v79);
  v795 = &v752 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  v755 = (&v752 - v84);
  v85 = MEMORY[0x1EEE9AC00](v83);
  v765 = (&v752 - v86);
  v87 = MEMORY[0x1EEE9AC00](v85);
  v774 = (&v752 - v88);
  v89 = MEMORY[0x1EEE9AC00](v87);
  v784 = (&v752 - v90);
  v91 = MEMORY[0x1EEE9AC00](v89);
  v794 = &v752 - v92;
  v93 = MEMORY[0x1EEE9AC00](v91);
  v754 = (&v752 - v94);
  v95 = MEMORY[0x1EEE9AC00](v93);
  v764 = (&v752 - v96);
  v97 = MEMORY[0x1EEE9AC00](v95);
  v773 = (&v752 - v98);
  v99 = MEMORY[0x1EEE9AC00](v97);
  v783 = (&v752 - v100);
  v101 = MEMORY[0x1EEE9AC00](v99);
  v103 = &v752 - v102;
  MEMORY[0x1EEE9AC00](v101);
  v105 = &v752 - v104;
  v106 = _StringGuts.init(_initialCapacity:)(74);
  v108 = v107;
  v809._countAndFlagsBits = v106;
  v809._object = v107;
  v109 = HIBYTE(v107) & 0xF;
  if ((v107 & 0x2000000000000000) == 0)
  {
    v109 = v106 & 0xFFFFFFFFFFFFLL;
  }

  if (v109 || (v106 & ~v107 & 0x2000000000000000) != 0)
  {
    if ((v107 & 0x2000000000000000) != 0 && (v110 = specialized _SmallString.init(_:appending:)(v106, v107, 0x3C3631444D4953uLL, 0xE700000000000000), (v112 & 1) == 0))
    {
      v121 = v110;
      v122 = v111;
      v108;
      0xE700000000000000;
      v809._countAndFlagsBits = v121;
      v809._object = v122;
    }

    else
    {
      0xE700000000000000;
      _StringGuts.append(_:)(0x3C3631444D4953, 0xE700000000000000, 0, 7, v113, v114, v115, v116, v117, v118, v119, v120);
      swift_bridgeObjectRelease_n(0xE700000000000000, 2);
    }
  }

  else
  {
    v809._countAndFlagsBits = 0x3C3631444D4953;
    v809._object = 0xE700000000000000;
    v107;
  }

  TypeName = swift_getTypeName(v1, 0);
  if (v124 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v125 = TypeName;
  v126 = v124;
  if (_allASCII(_:)(TypeName, v124))
  {
    v128 = 1;
LABEL_13:
    if (v126)
    {
      if (v126 > 15)
      {
        v129 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v125, v126, v126, v128 & 1);
        v130 = *(v129 + 24);
        goto LABEL_80;
      }

      v147 = v126 - 8;
      v148 = 8;
      if (v126 < 8)
      {
        v148 = v126;
      }

      if (v126 >= 4)
      {
        v150 = v148 & 0xC;
        v127.i32[0] = *v125;
        v151 = vmovl_u16(*&vmovl_u8(v127));
        v152.i64[0] = v151.u32[0];
        v152.i64[1] = v151.u32[1];
        v153.i64[0] = 255;
        v153.i64[1] = 255;
        v154 = vandq_s8(v152, v153);
        v152.i64[0] = v151.u32[2];
        v152.i64[1] = v151.u32[3];
        v155 = vshlq_u64(vandq_s8(v152, v153), xmmword_18071DBA0);
        v156.i32[1] = 0;
        v157 = vshlq_u64(v154, xmmword_18071DBB0);
        if (v150 != 4)
        {
          v156.i32[0] = *(v125 + 4);
          v158 = vmovl_u16(*&vmovl_u8(v156));
          v159.i64[0] = v158.u32[2];
          v159.i64[1] = v158.u32[3];
          v160 = vandq_s8(v159, v153);
          v159.i64[0] = v158.u32[0];
          v159.i64[1] = v158.u32[1];
          v155 = vorrq_s8(vshlq_u64(v160, xmmword_18071DBD0), v155);
          v157 = vorrq_s8(vshlq_u64(vandq_s8(v159, v153), xmmword_18071DBC0), v157);
        }

        v161 = vorrq_s8(v157, v155);
        v130 = vorr_s8(*v161.i8, *&vextq_s8(v161, v161, 8uLL));
        if (v148 == v150)
        {
          goto LABEL_72;
        }

        v149 = 8 * v150;
      }

      else
      {
        v130 = 0;
        v149 = 0;
        v150 = 0;
      }

      v162 = v148 - v150;
      v163 = (v125 + v150);
      do
      {
        v164 = *v163++;
        v130 |= v164 << (v149 & 0x38);
        v149 += 8;
        --v162;
      }

      while (v162);
LABEL_72:
      if (v126 < 9)
      {
        v165 = 0;
      }

      else
      {
        v165 = 0;
        v166 = 0;
        v167 = (v125 + 8);
        do
        {
          v168 = *v167++;
          v165 |= v168 << v166;
          v166 += 8;
          --v147;
        }

        while (v147);
      }

      v169 = 0xA000000000000000;
      if (((v165 | v130) & 0x8080808080808080) == 0)
      {
        v169 = 0xE000000000000000;
      }

      v129 = v169 | (v126 << 56) | v165;
      goto LABEL_80;
    }

LABEL_59:
    v130 = 0;
    v129 = 0xE000000000000000;
    goto LABEL_80;
  }

  if (!v126)
  {
    goto LABEL_59;
  }

  v131 = 0;
  v132 = (v125 + v126);
  v128 = 1;
  v133 = v125;
  v134 = v125;
  while (1)
  {
    v136 = *v134++;
    v135 = v136;
    if ((v136 & 0x80000000) == 0)
    {
      v137 = 1;
      goto LABEL_20;
    }

    if ((v135 + 11) <= 0xCCu)
    {
      LOBYTE(v803._countAndFlagsBits) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v135);
      goto LABEL_61;
    }

    if (v135 > 0xDFu)
    {
      break;
    }

    if (v134 == v132 || (*v134 & 0xC0) != 0x80)
    {
LABEL_339:
      LOBYTE(v803._countAndFlagsBits) = 4;
      goto LABEL_61;
    }

    v128 = 0;
    v134 = v133 + 2;
    v137 = 2;
LABEL_20:
    v131 += v137;
    v133 = v134;
    if (v134 == v132)
    {
      goto LABEL_13;
    }
  }

  if (v135 == 224)
  {
    if (v134 == v132)
    {
      goto LABEL_339;
    }

    if (v133[1] - 192 < 0xFFFFFFE0)
    {
      goto LABEL_340;
    }

    goto LABEL_44;
  }

  if (v135 <= 0xECu)
  {
    goto LABEL_42;
  }

  if (v135 == 237)
  {
    if (v134 == v132)
    {
      goto LABEL_339;
    }

    v138 = v133[1];
    if (v138 > 0x9F || (v138 & 0xC0) != 0x80)
    {
      LOBYTE(v803._countAndFlagsBits) = 1;
      goto LABEL_61;
    }

    goto LABEL_44;
  }

  if (v135 <= 0xEFu)
  {
LABEL_42:
    if (v134 == v132 || (v133[1] & 0xC0) != 0x80)
    {
      goto LABEL_339;
    }

LABEL_44:
    if (v133 + 2 == v132 || (v133[2] & 0xC0) != 0x80)
    {
      goto LABEL_339;
    }

    v128 = 0;
    v134 = v133 + 3;
    v137 = 3;
    goto LABEL_20;
  }

  if (v135 == 240)
  {
    if (v134 == v132)
    {
      goto LABEL_339;
    }

    if (v133[1] - 192 < 0xFFFFFFD0)
    {
LABEL_340:
      LOBYTE(v803._countAndFlagsBits) = 3;
      goto LABEL_61;
    }

    goto LABEL_54;
  }

  if (v135 <= 0xF3u)
  {
    if (v134 == v132 || (v133[1] & 0xC0) != 0x80)
    {
      goto LABEL_339;
    }

    goto LABEL_54;
  }

  if (v134 == v132)
  {
    goto LABEL_339;
  }

  v139 = v133[1];
  if (v139 <= 0x8F && (v139 & 0xC0) == 0x80)
  {
LABEL_54:
    if (v133 + 2 == v132 || (v133[2] & 0xC0) != 0x80 || v133 + 3 == v132 || (v133[3] & 0xC0) != 0x80)
    {
      goto LABEL_339;
    }

    v128 = 0;
    v134 = v133 + 4;
    v137 = 4;
    goto LABEL_20;
  }

  LOBYTE(v803._countAndFlagsBits) = 2;
LABEL_61:
  swift_willThrowTypedImpl(&v803, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
  v140 = specialized Collection.subscript.getter(v131, v125, v126);
  v144 = findInvalidRange #1 (_:) in validateUTF8(_:)(v140, v141, v142, v143);
  v130 = repairUTF8(_:firstKnownBrokenRange:)(v125, v126, v144, v145);
  v129 = v146;
LABEL_80:
  v170 = v809;
  v171 = (v809._object >> 56) & 0xF;
  if ((v809._object & 0x2000000000000000) == 0)
  {
    v171 = v809._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v171 && (v809._countAndFlagsBits & ~v809._object & 0x2000000000000000) == 0)
  {
    v809._countAndFlagsBits = v130;
    v809._object = v129;
    v170._object;
    goto LABEL_92;
  }

  if ((v809._object & 0x2000000000000000) != 0)
  {
    if ((v129 & 0x2000000000000000) != 0)
    {
      v173 = specialized _SmallString.init(_:appending:)(v809._countAndFlagsBits, v809._object, v130, v129);
      if (v175)
      {
        goto LABEL_90;
      }

      v679 = v173;
      v680 = v174;
      v129;
      v809._object;
      v809._countAndFlagsBits = v679;
      v809._object = v680;
      goto LABEL_92;
    }

LABEL_88:
    v172 = v130 & 0xFFFFFFFFFFFFLL;
    goto LABEL_91;
  }

  if ((v129 & 0x2000000000000000) == 0)
  {
    goto LABEL_88;
  }

LABEL_90:
  v172 = HIBYTE(v129) & 0xF;
LABEL_91:
  v129;
  _StringGuts.append(_:)(v130, v129, 0, v172, v176, v177, v178, v179, v180, v181, v182, v183);
  swift_bridgeObjectRelease_n(v129, 2);
LABEL_92:
  v184 = v809;
  v185 = (v809._object >> 56) & 0xF;
  if ((v809._object & 0x2000000000000000) == 0)
  {
    v185 = v809._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v753 = (&v752 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v763 = v6;
  if (v185 || (v809._countAndFlagsBits & ~v809._object & 0x2000000000000000) != 0)
  {
    if ((v809._object & 0x2000000000000000) != 0 && (v186 = specialized _SmallString.init(_:appending:)(v809._countAndFlagsBits, v809._object, 0x283EuLL, 0xE200000000000000), (v188 & 1) == 0))
    {
      v197 = v186;
      v198 = v187;
      0xE200000000000000;
      v809._object;
      v809._countAndFlagsBits = v197;
      v809._object = v198;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(10302, 0xE200000000000000, 0, 2, v189, v190, v191, v192, v193, v194, v195, v196);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v809._countAndFlagsBits = 10302;
    v809._object = 0xE200000000000000;
    v184._object;
  }

  v199 = *(v793 + 24);
  swift_getAssociatedTypeWitness(255, v199, v1, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v201 = v200;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v199, v1, v200, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v203 = *(AssociatedConformanceWitness + 56);
  v204 = swift_checkMetadataState(0, v201);
  v203(0, v204, AssociatedConformanceWitness);
  v804 = v1;
  v205 = __swift_allocate_boxed_opaque_existential_0Tm(&v803);
  memcpy(v205, v105, v2);
  v206 = v804;
  v207 = __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
  DynamicType = swift_getDynamicType(v207, v206, 1);
  LODWORD(v206) = swift_isOptionalType(DynamicType);
  __swift_destroy_boxed_opaque_existential_1Tm(&v803._countAndFlagsBits);
  if (v206)
  {
    memcpy(v103, v105, v2);
    v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v803, v103, v1, v209, 7uLL);
    goto LABEL_104;
  }

  v225 = v783;
  memcpy(v783, v105, v2);
  if ((swift_dynamicCast(&v803, v225, v1, &type metadata for String, 6uLL) & 1) == 0)
  {
    v251 = v773;
    memcpy(v773, v105, v2);
    v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
    if (swift_dynamicCast(&v806, v251, v1, v252, 6uLL))
    {
      _ss9CodingKey_pWOb_0(&v806, &v803);
      v253 = v804;
      v254 = v805;
      __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
      (*(v254 + 8))(&v809, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v253, v254);
    }

    else
    {
      v808 = 0;
      v806 = 0u;
      v807 = 0u;
      outlined destroy of _HasContiguousBytes?(&v806, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
      v641 = v764;
      memcpy(v764, v105, v2);
      v642 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
      if (swift_dynamicCast(&v806, v641, v1, v642, 6uLL))
      {
        _ss9CodingKey_pWOb_0(&v806, &v803);
        v643 = v804;
        v644 = v805;
        __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
        v212 = (*(v644 + 8))(v643, v644);
      }

      else
      {
        v808 = 0;
        v806 = 0u;
        v807 = 0u;
        outlined destroy of _HasContiguousBytes?(&v806, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
        v681 = v754;
        memcpy(v754, v105, v2);
        v682 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
        if (!swift_dynamicCast(&v806, v681, v1, v682, 6uLL))
        {
          v808 = 0;
          v806 = 0u;
          v807 = 0u;
          outlined destroy of _HasContiguousBytes?(&v806, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
          *(&v807 + 1) = v1;
          v714 = __swift_allocate_boxed_opaque_existential_0Tm(&v806);
          memcpy(v714, v105, v2);
          Mirror.init(reflecting:)(&v806, &v803);
          object = v803._object;
          v716 = v805;
          _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v105, &v803, &v809, 0, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
          v716;
          object;
          goto LABEL_119;
        }

        _ss9CodingKey_pWOb_0(&v806, &v803);
LABEL_104:
        v210 = v804;
        v211 = v805;
        __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
        v212 = (*(v211 + 8))(v210, v211);
      }

      v222 = v213;
      v223 = v809;
      v224 = (v809._object >> 56) & 0xF;
      if ((v809._object & 0x2000000000000000) == 0)
      {
        v224 = v809._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v224 || (v809._countAndFlagsBits & ~v809._object & 0x2000000000000000) != 0)
      {
        _StringGuts.append(_:)(v212, v213, v214, v215, v216, v217, v218, v219, v220, v221);
      }

      else
      {
        v809._countAndFlagsBits = v212;
        v809._object = v213;
        v222 = v223._object;
      }

      v222;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v803._countAndFlagsBits);
    goto LABEL_119;
  }

  v234 = v803._object;
  v235 = v809;
  v236 = (v809._object >> 56) & 0xF;
  if ((v809._object & 0x2000000000000000) == 0)
  {
    v236 = v809._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v236 || (v809._countAndFlagsBits & ~v809._object & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(v803._countAndFlagsBits, v803._object, v226, v227, v228, v229, v230, v231, v232, v233);
    v237 = v234;
  }

  else
  {
    v809 = v803;
    v237 = v235._object;
  }

  v237;
LABEL_119:
  v238 = v809;
  v239 = (v809._object >> 56) & 0xF;
  if ((v809._object & 0x2000000000000000) == 0)
  {
    v239 = v809._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v239 || (v809._countAndFlagsBits & ~v809._object & 0x2000000000000000) != 0)
  {
    if ((v809._object & 0x2000000000000000) != 0 && (v240 = specialized _SmallString.init(_:appending:)(v809._countAndFlagsBits, v809._object, 0x202CuLL, 0xE200000000000000), (v242 & 1) == 0))
    {
      v255 = v240;
      v256 = v241;
      0xE200000000000000;
      v809._object;
      v809._countAndFlagsBits = v255;
      v809._object = v256;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v243, v244, v245, v246, v247, v248, v249, v250);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v809._countAndFlagsBits = 8236;
    v809._object = 0xE200000000000000;
    v238._object;
  }

  v257 = v794;
  v203(1, v204, AssociatedConformanceWitness);
  v804 = v1;
  v258 = __swift_allocate_boxed_opaque_existential_0Tm(&v803);
  memcpy(v258, v257, v2);
  v259 = v804;
  v260 = __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
  v261 = swift_getDynamicType(v260, v259, 1);
  LODWORD(v259) = swift_isOptionalType(v261);
  __swift_destroy_boxed_opaque_existential_1Tm(&v803._countAndFlagsBits);
  if (v259)
  {
    memcpy(v103, v257, v2);
    v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v803, v103, v1, v262, 7uLL);
    goto LABEL_132;
  }

  v278 = v784;
  memcpy(v784, v257, v2);
  if (swift_dynamicCast(&v803, v278, v1, &type metadata for String, 6uLL))
  {
    v279 = v803._object;
    String.write(_:)(v803);
    v279;
    goto LABEL_142;
  }

  v293 = v774;
  memcpy(v774, v257, v2);
  v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v806, v293, v1, v294, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v806, &v803);
    v295 = v804;
    v296 = v805;
    __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
    (*(v296 + 8))(&v809, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v295, v296);
LABEL_139:
    __swift_destroy_boxed_opaque_existential_1Tm(&v803._countAndFlagsBits);
    goto LABEL_142;
  }

  v808 = 0;
  v806 = 0u;
  v807 = 0u;
  outlined destroy of _HasContiguousBytes?(&v806, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v645 = v765;
  memcpy(v765, v257, v2);
  v646 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v806, v645, v1, v646, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v806, &v803);
    v647 = v804;
    v648 = v805;
    __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
    v265 = (*(v648 + 8))(v647, v648);
LABEL_133:
    v275 = v266;
    v276 = v809;
    v277 = (v809._object >> 56) & 0xF;
    if ((v809._object & 0x2000000000000000) == 0)
    {
      v277 = v809._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v277 || (v809._countAndFlagsBits & ~v809._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v265, v266, v267, v268, v269, v270, v271, v272, v273, v274);
    }

    else
    {
      v809._countAndFlagsBits = v265;
      v809._object = v266;
      v275 = v276._object;
    }

    v275;
    goto LABEL_139;
  }

  v808 = 0;
  v806 = 0u;
  v807 = 0u;
  outlined destroy of _HasContiguousBytes?(&v806, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v683 = v755;
  memcpy(v755, v257, v2);
  v684 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v806, v683, v1, v684, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v806, &v803);
LABEL_132:
    v263 = v804;
    v264 = v805;
    __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
    v265 = (*(v264 + 8))(v263, v264);
    goto LABEL_133;
  }

  v808 = 0;
  v806 = 0u;
  v807 = 0u;
  outlined destroy of _HasContiguousBytes?(&v806, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v807 + 1) = v1;
  v717 = __swift_allocate_boxed_opaque_existential_0Tm(&v806);
  memcpy(v717, v257, v2);
  Mirror.init(reflecting:)(&v806, &v803);
  v718 = v803._object;
  v719 = v257;
  v720 = v805;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v719, &v803, &v809, 0, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v720;
  v718;
LABEL_142:
  v280 = v809;
  v281 = (v809._object >> 56) & 0xF;
  if ((v809._object & 0x2000000000000000) == 0)
  {
    v281 = v809._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v281 || (v809._countAndFlagsBits & ~v809._object & 0x2000000000000000) != 0)
  {
    if ((v809._object & 0x2000000000000000) != 0 && (v282 = specialized _SmallString.init(_:appending:)(v809._countAndFlagsBits, v809._object, 0x202CuLL, 0xE200000000000000), (v284 & 1) == 0))
    {
      v297 = v282;
      v298 = v283;
      0xE200000000000000;
      v809._object;
      v809._countAndFlagsBits = v297;
      v809._object = v298;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v285, v286, v287, v288, v289, v290, v291, v292);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v809._countAndFlagsBits = 8236;
    v809._object = 0xE200000000000000;
    v280._object;
  }

  v299 = v795;
  v203(2, v204, AssociatedConformanceWitness);
  v804 = v1;
  v300 = __swift_allocate_boxed_opaque_existential_0Tm(&v803);
  memcpy(v300, v299, v2);
  v301 = v804;
  v302 = __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
  v303 = swift_getDynamicType(v302, v301, 1);
  LODWORD(v301) = swift_isOptionalType(v303);
  __swift_destroy_boxed_opaque_existential_1Tm(&v803._countAndFlagsBits);
  if (v301)
  {
    memcpy(v103, v299, v2);
    v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v803, v103, v1, v304, 7uLL);
    goto LABEL_155;
  }

  v320 = v785;
  memcpy(v785, v299, v2);
  if (swift_dynamicCast(&v803, v320, v1, &type metadata for String, 6uLL))
  {
    v321 = v803._object;
    String.write(_:)(v803);
    v321;
    goto LABEL_165;
  }

  v335 = v775;
  memcpy(v775, v299, v2);
  v336 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v806, v335, v1, v336, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v806, &v803);
    v337 = v804;
    v338 = v805;
    __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
    (*(v338 + 8))(&v809, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v337, v338);
LABEL_162:
    __swift_destroy_boxed_opaque_existential_1Tm(&v803._countAndFlagsBits);
    goto LABEL_165;
  }

  v808 = 0;
  v806 = 0u;
  v807 = 0u;
  outlined destroy of _HasContiguousBytes?(&v806, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v649 = v766;
  memcpy(v766, v299, v2);
  v650 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v806, v649, v1, v650, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v806, &v803);
    v651 = v804;
    v652 = v805;
    __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
    v307 = (*(v652 + 8))(v651, v652);
LABEL_156:
    v317 = v308;
    v318 = v809;
    v319 = (v809._object >> 56) & 0xF;
    if ((v809._object & 0x2000000000000000) == 0)
    {
      v319 = v809._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v319 || (v809._countAndFlagsBits & ~v809._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v307, v308, v309, v310, v311, v312, v313, v314, v315, v316);
    }

    else
    {
      v809._countAndFlagsBits = v307;
      v809._object = v308;
      v317 = v318._object;
    }

    v317;
    goto LABEL_162;
  }

  v808 = 0;
  v806 = 0u;
  v807 = 0u;
  outlined destroy of _HasContiguousBytes?(&v806, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v685 = v756;
  memcpy(v756, v299, v2);
  v686 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v806, v685, v1, v686, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v806, &v803);
LABEL_155:
    v305 = v804;
    v306 = v805;
    __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
    v307 = (*(v306 + 8))(v305, v306);
    goto LABEL_156;
  }

  v808 = 0;
  v806 = 0u;
  v807 = 0u;
  outlined destroy of _HasContiguousBytes?(&v806, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v807 + 1) = v1;
  v721 = __swift_allocate_boxed_opaque_existential_0Tm(&v806);
  memcpy(v721, v299, v2);
  Mirror.init(reflecting:)(&v806, &v803);
  v722 = v803._object;
  v723 = v299;
  v724 = v805;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v723, &v803, &v809, 0, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v724;
  v722;
LABEL_165:
  v322 = v809;
  v323 = (v809._object >> 56) & 0xF;
  if ((v809._object & 0x2000000000000000) == 0)
  {
    v323 = v809._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v323 || (v809._countAndFlagsBits & ~v809._object & 0x2000000000000000) != 0)
  {
    if ((v809._object & 0x2000000000000000) != 0 && (v324 = specialized _SmallString.init(_:appending:)(v809._countAndFlagsBits, v809._object, 0x202CuLL, 0xE200000000000000), (v326 & 1) == 0))
    {
      v339 = v324;
      v340 = v325;
      0xE200000000000000;
      v809._object;
      v809._countAndFlagsBits = v339;
      v809._object = v340;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v327, v328, v329, v330, v331, v332, v333, v334);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v809._countAndFlagsBits = 8236;
    v809._object = 0xE200000000000000;
    v322._object;
  }

  v341 = v796;
  v203(3, v204, AssociatedConformanceWitness);
  v804 = v1;
  v342 = __swift_allocate_boxed_opaque_existential_0Tm(&v803);
  memcpy(v342, v341, v2);
  v343 = v804;
  v344 = __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
  v345 = swift_getDynamicType(v344, v343, 1);
  LODWORD(v343) = swift_isOptionalType(v345);
  __swift_destroy_boxed_opaque_existential_1Tm(&v803._countAndFlagsBits);
  if (v343)
  {
    memcpy(v103, v341, v2);
    v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v803, v103, v1, v346, 7uLL);
    v347 = v804;
    v348 = v805;
    __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
    v349 = (*(v348 + 8))(v347, v348);
    v359 = v350;
    v360 = v809;
    v361 = (v809._object >> 56) & 0xF;
    if ((v809._object & 0x2000000000000000) == 0)
    {
      v361 = v809._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v361 || (v809._countAndFlagsBits & ~v809._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v349, v350, v351, v352, v353, v354, v355, v356, v357, v358);
    }

    else
    {
      v809._countAndFlagsBits = v349;
      v809._object = v350;
      v359 = v360._object;
    }

    v362 = v359;
LABEL_183:
    v362;
LABEL_184:
    __swift_destroy_boxed_opaque_existential_1Tm(&v803._countAndFlagsBits);
  }

  else
  {
    v363 = v786;
    memcpy(v786, v341, v2);
    if (swift_dynamicCast(&v803, v363, v1, &type metadata for String, 6uLL))
    {
      v364 = v803._object;
      String.write(_:)(v803);
      v364;
    }

    else
    {
      v378 = v776;
      memcpy(v776, v341, v2);
      v379 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
      if (swift_dynamicCast(&v806, v378, v1, v379, 6uLL))
      {
        _ss9CodingKey_pWOb_0(&v806, &v803);
        v380 = v804;
        v381 = v805;
        __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
        (*(v381 + 8))(&v809, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v380, v381);
        goto LABEL_184;
      }

      v808 = 0;
      v806 = 0u;
      v807 = 0u;
      outlined destroy of _HasContiguousBytes?(&v806, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
      v653 = v767;
      memcpy(v767, v341, v2);
      v654 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
      if (swift_dynamicCast(&v806, v653, v1, v654, 6uLL) || (v808 = 0, v806 = 0u, v807 = 0u, outlined destroy of _HasContiguousBytes?(&v806, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR), v687 = v757, memcpy(v757, v341, v2), v688 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR), swift_dynamicCast(&v806, v687, v1, v688, 6uLL)))
      {
        _ss9CodingKey_pWOb_0(&v806, &v803);
        v689 = v804;
        v690 = v805;
        __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
        v691 = (*(v690 + 8))(v689, v690);
        v693 = v692;
        static String.+= infix(_:_:)(&v809, v691, v692, v694, v695, v696, v697, v698, v699, v700, v701);
        v362 = v693;
        goto LABEL_183;
      }

      v808 = 0;
      v806 = 0u;
      v807 = 0u;
      outlined destroy of _HasContiguousBytes?(&v806, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
      *(&v807 + 1) = v1;
      v725 = __swift_allocate_boxed_opaque_existential_0Tm(&v806);
      memcpy(v725, v341, v2);
      Mirror.init(reflecting:)(&v806, &v803);
      v726 = v803._object;
      v727 = v341;
      v728 = v805;
      _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v727, &v803, &v809, 0, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
      v728;
      v726;
    }
  }

  v365 = v809;
  v366 = (v809._object >> 56) & 0xF;
  if ((v809._object & 0x2000000000000000) == 0)
  {
    v366 = v809._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v366 || (v809._countAndFlagsBits & ~v809._object & 0x2000000000000000) != 0)
  {
    if ((v809._object & 0x2000000000000000) != 0 && (v367 = specialized _SmallString.init(_:appending:)(v809._countAndFlagsBits, v809._object, 0x202CuLL, 0xE200000000000000), (v369 & 1) == 0))
    {
      v382 = v367;
      v383 = v368;
      0xE200000000000000;
      v809._object;
      v809._countAndFlagsBits = v382;
      v809._object = v383;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v370, v371, v372, v373, v374, v375, v376, v377);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v809._countAndFlagsBits = 8236;
    v809._object = 0xE200000000000000;
    v365._object;
  }

  v384 = v797;
  v203(4, v204, AssociatedConformanceWitness);
  v804 = v1;
  v385 = __swift_allocate_boxed_opaque_existential_0Tm(&v803);
  memcpy(v385, v384, v2);
  v386 = v804;
  v387 = __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
  v388 = swift_getDynamicType(v387, v386, 1);
  LODWORD(v386) = swift_isOptionalType(v388);
  __swift_destroy_boxed_opaque_existential_1Tm(&v803._countAndFlagsBits);
  if (v386)
  {
    memcpy(v103, v384, v2);
    v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v803, v103, v1, v389, 7uLL);
    goto LABEL_200;
  }

  v411 = v787;
  memcpy(v787, v384, v2);
  if (swift_dynamicCast(&v803, v411, v1, &type metadata for String, 6uLL))
  {
    v412 = v803._object;
    String.write(_:)(v803);
    v412;
    goto LABEL_205;
  }

  v617 = v777;
  memcpy(v777, v384, v2);
  v618 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v806, v617, v1, v618, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v806, &v803);
    v619 = v804;
    v620 = v805;
    __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
    (*(v620 + 8))(&v809, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v619, v620);
    goto LABEL_202;
  }

  v808 = 0;
  v806 = 0u;
  v807 = 0u;
  outlined destroy of _HasContiguousBytes?(&v806, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v655 = v768;
  memcpy(v768, v384, v2);
  v656 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v806, v655, v1, v656, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v806, &v803);
    v657 = v804;
    v658 = v805;
    __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
    v392 = (*(v658 + 8))(v657, v658);
LABEL_201:
    v402 = v393;
    static String.+= infix(_:_:)(&v809, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401);
    v402;
LABEL_202:
    __swift_destroy_boxed_opaque_existential_1Tm(&v803._countAndFlagsBits);
    goto LABEL_205;
  }

  v808 = 0;
  v806 = 0u;
  v807 = 0u;
  outlined destroy of _HasContiguousBytes?(&v806, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v702 = v758;
  memcpy(v758, v384, v2);
  v703 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v806, v702, v1, v703, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v806, &v803);
LABEL_200:
    v390 = v804;
    v391 = v805;
    __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
    v392 = (*(v391 + 8))(v390, v391);
    goto LABEL_201;
  }

  v808 = 0;
  v806 = 0u;
  v807 = 0u;
  outlined destroy of _HasContiguousBytes?(&v806, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v807 + 1) = v1;
  v729 = __swift_allocate_boxed_opaque_existential_0Tm(&v806);
  memcpy(v729, v384, v2);
  Mirror.init(reflecting:)(&v806, &v803);
  v730 = v803._object;
  v731 = v384;
  v732 = v805;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v731, &v803, &v809, 0, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v732;
  v730;
LABEL_205:
  v413 = v809._object;
  v414 = (v809._object >> 56) & 0xF;
  if ((v809._object & 0x2000000000000000) == 0)
  {
    v414 = v809._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v415 = v798;
  if (v414 || (v809._countAndFlagsBits & ~v809._object & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(0x202CuLL, 0xE200000000000000, v403, v404, v405, v406, v407, v408, v409, v410);
    v413 = 0xE200000000000000;
  }

  else
  {
    v809._countAndFlagsBits = 8236;
    v809._object = 0xE200000000000000;
  }

  v413;
  v203(5, v204, AssociatedConformanceWitness);
  v804 = v1;
  v416 = __swift_allocate_boxed_opaque_existential_0Tm(&v803);
  memcpy(v416, v415, v2);
  v417 = v804;
  v418 = __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
  v419 = swift_getDynamicType(v418, v417, 1);
  LODWORD(v417) = swift_isOptionalType(v419);
  __swift_destroy_boxed_opaque_existential_1Tm(&v803._countAndFlagsBits);
  if (v417)
  {
    memcpy(v103, v415, v2);
    v420 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v803, v103, v1, v420, 7uLL);
    goto LABEL_212;
  }

  v442 = v788;
  memcpy(v788, v415, v2);
  if (swift_dynamicCast(&v803, v442, v1, &type metadata for String, 6uLL))
  {
    v443 = v803._object;
    String.write(_:)(v803);
    v443;
    goto LABEL_217;
  }

  v621 = v778;
  memcpy(v778, v415, v2);
  v622 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v806, v621, v1, v622, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v806, &v803);
    v623 = v804;
    v624 = v805;
    __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
    (*(v624 + 8))(&v809, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v623, v624);
    goto LABEL_214;
  }

  v808 = 0;
  v806 = 0u;
  v807 = 0u;
  outlined destroy of _HasContiguousBytes?(&v806, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v659 = v769;
  memcpy(v769, v415, v2);
  v660 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v806, v659, v1, v660, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v806, &v803);
    v661 = v804;
    v662 = v805;
    __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
    v423 = (*(v662 + 8))(v661, v662);
LABEL_213:
    v433 = v424;
    static String.+= infix(_:_:)(&v809, v423, v424, v425, v426, v427, v428, v429, v430, v431, v432);
    v433;
LABEL_214:
    __swift_destroy_boxed_opaque_existential_1Tm(&v803._countAndFlagsBits);
    goto LABEL_217;
  }

  v808 = 0;
  v806 = 0u;
  v807 = 0u;
  outlined destroy of _HasContiguousBytes?(&v806, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v704 = v759;
  memcpy(v759, v415, v2);
  v705 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v806, v704, v1, v705, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v806, &v803);
LABEL_212:
    v421 = v804;
    v422 = v805;
    __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
    v423 = (*(v422 + 8))(v421, v422);
    goto LABEL_213;
  }

  v808 = 0;
  v806 = 0u;
  v807 = 0u;
  outlined destroy of _HasContiguousBytes?(&v806, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v807 + 1) = v1;
  v733 = __swift_allocate_boxed_opaque_existential_0Tm(&v806);
  memcpy(v733, v415, v2);
  Mirror.init(reflecting:)(&v806, &v803);
  v734 = v803._object;
  v735 = v415;
  v736 = v805;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v735, &v803, &v809, 0, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v736;
  v734;
LABEL_217:
  v444 = v809._object;
  v445 = (v809._object >> 56) & 0xF;
  if ((v809._object & 0x2000000000000000) == 0)
  {
    v445 = v809._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v446 = v799;
  if (v445 || (v809._countAndFlagsBits & ~v809._object & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(0x202CuLL, 0xE200000000000000, v434, v435, v436, v437, v438, v439, v440, v441);
    v444 = 0xE200000000000000;
  }

  else
  {
    v809._countAndFlagsBits = 8236;
    v809._object = 0xE200000000000000;
  }

  v444;
  v203(6, v204, AssociatedConformanceWitness);
  v804 = v1;
  v447 = __swift_allocate_boxed_opaque_existential_0Tm(&v803);
  memcpy(v447, v446, v2);
  v448 = v804;
  v449 = __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
  v450 = swift_getDynamicType(v449, v448, 1);
  LODWORD(v448) = swift_isOptionalType(v450);
  __swift_destroy_boxed_opaque_existential_1Tm(&v803._countAndFlagsBits);
  if (v448)
  {
    memcpy(v103, v446, v2);
    v451 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v803, v103, v1, v451, 7uLL);
    goto LABEL_224;
  }

  v473 = v789;
  memcpy(v789, v446, v2);
  if (swift_dynamicCast(&v803, v473, v1, &type metadata for String, 6uLL))
  {
    v474 = v803._object;
    String.write(_:)(v803);
    v474;
    goto LABEL_229;
  }

  v625 = v779;
  memcpy(v779, v446, v2);
  v626 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v806, v625, v1, v626, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v806, &v803);
    v627 = v804;
    v628 = v805;
    __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
    (*(v628 + 8))(&v809, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v627, v628);
    goto LABEL_226;
  }

  v808 = 0;
  v806 = 0u;
  v807 = 0u;
  outlined destroy of _HasContiguousBytes?(&v806, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v663 = v770;
  memcpy(v770, v446, v2);
  v664 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v806, v663, v1, v664, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v806, &v803);
    v665 = v804;
    v666 = v805;
    __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
    v454 = (*(v666 + 8))(v665, v666);
LABEL_225:
    v464 = v455;
    static String.+= infix(_:_:)(&v809, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463);
    v464;
LABEL_226:
    __swift_destroy_boxed_opaque_existential_1Tm(&v803._countAndFlagsBits);
    goto LABEL_229;
  }

  v808 = 0;
  v806 = 0u;
  v807 = 0u;
  outlined destroy of _HasContiguousBytes?(&v806, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v706 = v760;
  memcpy(v760, v446, v2);
  v707 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v806, v706, v1, v707, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v806, &v803);
LABEL_224:
    v452 = v804;
    v453 = v805;
    __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
    v454 = (*(v453 + 8))(v452, v453);
    goto LABEL_225;
  }

  v808 = 0;
  v806 = 0u;
  v807 = 0u;
  outlined destroy of _HasContiguousBytes?(&v806, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v807 + 1) = v1;
  v737 = __swift_allocate_boxed_opaque_existential_0Tm(&v806);
  memcpy(v737, v446, v2);
  Mirror.init(reflecting:)(&v806, &v803);
  v738 = v803._object;
  v739 = v446;
  v740 = v805;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v739, &v803, &v809, 0, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v740;
  v738;
LABEL_229:
  v475 = v809._object;
  v476 = (v809._object >> 56) & 0xF;
  if ((v809._object & 0x2000000000000000) == 0)
  {
    v476 = v809._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v477 = v800;
  if (v476 || (v809._countAndFlagsBits & ~v809._object & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(0x202CuLL, 0xE200000000000000, v465, v466, v467, v468, v469, v470, v471, v472);
    v475 = 0xE200000000000000;
  }

  else
  {
    v809._countAndFlagsBits = 8236;
    v809._object = 0xE200000000000000;
  }

  v475;
  v203(7, v204, AssociatedConformanceWitness);
  v804 = v1;
  v478 = __swift_allocate_boxed_opaque_existential_0Tm(&v803);
  memcpy(v478, v477, v2);
  v479 = v804;
  v480 = __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
  v481 = swift_getDynamicType(v480, v479, 1);
  LODWORD(v479) = swift_isOptionalType(v481);
  __swift_destroy_boxed_opaque_existential_1Tm(&v803._countAndFlagsBits);
  if (v479)
  {
    memcpy(v103, v477, v2);
    v482 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v803, v103, v1, v482, 7uLL);
    goto LABEL_236;
  }

  v504 = v790;
  memcpy(v790, v477, v2);
  if (swift_dynamicCast(&v803, v504, v1, &type metadata for String, 6uLL))
  {
    v505 = v803._object;
    String.write(_:)(v803);
    v505;
    goto LABEL_241;
  }

  v629 = v780;
  memcpy(v780, v477, v2);
  v630 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v806, v629, v1, v630, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v806, &v803);
    v631 = v804;
    v632 = v805;
    __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
    (*(v632 + 8))(&v809, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v631, v632);
    goto LABEL_238;
  }

  v808 = 0;
  v806 = 0u;
  v807 = 0u;
  outlined destroy of _HasContiguousBytes?(&v806, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v667 = v771;
  memcpy(v771, v477, v2);
  v668 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v806, v667, v1, v668, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v806, &v803);
    v669 = v804;
    v670 = v805;
    __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
    v485 = (*(v670 + 8))(v669, v670);
LABEL_237:
    v495 = v486;
    static String.+= infix(_:_:)(&v809, v485, v486, v487, v488, v489, v490, v491, v492, v493, v494);
    v495;
LABEL_238:
    __swift_destroy_boxed_opaque_existential_1Tm(&v803._countAndFlagsBits);
    goto LABEL_241;
  }

  v808 = 0;
  v806 = 0u;
  v807 = 0u;
  outlined destroy of _HasContiguousBytes?(&v806, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v708 = v761;
  memcpy(v761, v477, v2);
  v709 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v806, v708, v1, v709, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v806, &v803);
LABEL_236:
    v483 = v804;
    v484 = v805;
    __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
    v485 = (*(v484 + 8))(v483, v484);
    goto LABEL_237;
  }

  v808 = 0;
  v806 = 0u;
  v807 = 0u;
  outlined destroy of _HasContiguousBytes?(&v806, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v807 + 1) = v1;
  v741 = __swift_allocate_boxed_opaque_existential_0Tm(&v806);
  memcpy(v741, v477, v2);
  Mirror.init(reflecting:)(&v806, &v803);
  v742 = v803._object;
  v743 = v477;
  v744 = v805;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v743, &v803, &v809, 0, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v744;
  v742;
LABEL_241:
  v506 = v809._object;
  v507 = (v809._object >> 56) & 0xF;
  if ((v809._object & 0x2000000000000000) == 0)
  {
    v507 = v809._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v508 = v801;
  if (v507 || (v809._countAndFlagsBits & ~v809._object & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(0x202CuLL, 0xE200000000000000, v496, v497, v498, v499, v500, v501, v502, v503);
    v506 = 0xE200000000000000;
  }

  else
  {
    v809._countAndFlagsBits = 8236;
    v809._object = 0xE200000000000000;
  }

  v506;
  v203(8, v204, AssociatedConformanceWitness);
  v804 = v1;
  v509 = __swift_allocate_boxed_opaque_existential_0Tm(&v803);
  memcpy(v509, v508, v2);
  v510 = v804;
  v511 = __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
  v512 = swift_getDynamicType(v511, v510, 1);
  LODWORD(v510) = swift_isOptionalType(v512);
  __swift_destroy_boxed_opaque_existential_1Tm(&v803._countAndFlagsBits);
  if (v510)
  {
    memcpy(v103, v508, v2);
    v513 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v803, v103, v1, v513, 7uLL);
    goto LABEL_248;
  }

  v535 = v791;
  memcpy(v791, v508, v2);
  if (swift_dynamicCast(&v803, v535, v1, &type metadata for String, 6uLL))
  {
    v536 = v803._object;
    String.write(_:)(v803);
    v536;
    goto LABEL_253;
  }

  v633 = v781;
  memcpy(v781, v508, v2);
  v634 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v806, v633, v1, v634, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v806, &v803);
    v635 = v804;
    v636 = v805;
    __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
    (*(v636 + 8))(&v809, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v635, v636);
    goto LABEL_250;
  }

  v808 = 0;
  v806 = 0u;
  v807 = 0u;
  outlined destroy of _HasContiguousBytes?(&v806, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v671 = v772;
  memcpy(v772, v508, v2);
  v672 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v806, v671, v1, v672, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v806, &v803);
    v673 = v804;
    v674 = v805;
    __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
    v516 = (*(v674 + 8))(v673, v674);
LABEL_249:
    v526 = v517;
    static String.+= infix(_:_:)(&v809, v516, v517, v518, v519, v520, v521, v522, v523, v524, v525);
    v526;
LABEL_250:
    __swift_destroy_boxed_opaque_existential_1Tm(&v803._countAndFlagsBits);
    goto LABEL_253;
  }

  v808 = 0;
  v806 = 0u;
  v807 = 0u;
  outlined destroy of _HasContiguousBytes?(&v806, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v710 = v762;
  memcpy(v762, v508, v2);
  v711 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v806, v710, v1, v711, 6uLL))
  {
    _ss9CodingKey_pWOb_0(&v806, &v803);
LABEL_248:
    v514 = v804;
    v515 = v805;
    __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
    v516 = (*(v515 + 8))(v514, v515);
    goto LABEL_249;
  }

  v808 = 0;
  v806 = 0u;
  v807 = 0u;
  outlined destroy of _HasContiguousBytes?(&v806, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v807 + 1) = v1;
  v745 = __swift_allocate_boxed_opaque_existential_0Tm(&v806);
  memcpy(v745, v508, v2);
  Mirror.init(reflecting:)(&v806, &v803);
  v746 = v803._object;
  v747 = v508;
  v748 = v805;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v747, &v803, &v809, 0, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v748;
  v746;
LABEL_253:
  v537 = v809._object;
  v538 = (v809._object >> 56) & 0xF;
  if ((v809._object & 0x2000000000000000) == 0)
  {
    v538 = v809._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v539 = v802;
  if (v538 || (v809._countAndFlagsBits & ~v809._object & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(0x202CuLL, 0xE200000000000000, v527, v528, v529, v530, v531, v532, v533, v534);
    v537 = 0xE200000000000000;
  }

  else
  {
    v809._countAndFlagsBits = 8236;
    v809._object = 0xE200000000000000;
  }

  v537;
  v203(9, v204, AssociatedConformanceWitness);
  v804 = v1;
  v540 = __swift_allocate_boxed_opaque_existential_0Tm(&v803);
  memcpy(v540, v539, v2);
  v541 = v804;
  v542 = __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
  v543 = swift_getDynamicType(v542, v541, 1);
  LODWORD(v541) = swift_isOptionalType(v543);
  __swift_destroy_boxed_opaque_existential_1Tm(&v803._countAndFlagsBits);
  if (v541)
  {
    memcpy(v103, v539, v2);
    v544 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v803, v103, v1, v544, 7uLL);
    goto LABEL_260;
  }

  v566 = v792;
  memcpy(v792, v539, v2);
  if (swift_dynamicCast(&v803, v566, v1, &type metadata for String, 6uLL))
  {
    v567 = v803._object;
    String.write(_:)(v803);
    v567;
  }

  else
  {
    v637 = v782;
    memcpy(v782, v539, v2);
    v638 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
    if (swift_dynamicCast(&v806, v637, v1, v638, 6uLL))
    {
      _ss9CodingKey_pWOb_0(&v806, &v803);
      v639 = v804;
      v640 = v805;
      __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
      (*(v640 + 8))(&v809, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v639, v640);
    }

    else
    {
      v808 = 0;
      v806 = 0u;
      v807 = 0u;
      outlined destroy of _HasContiguousBytes?(&v806, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
      v675 = v763;
      memcpy(v763, v539, v2);
      v676 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
      if (swift_dynamicCast(&v806, v675, v1, v676, 6uLL))
      {
        _ss9CodingKey_pWOb_0(&v806, &v803);
        v677 = v804;
        v678 = v805;
        __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
        v547 = (*(v678 + 8))(v677, v678);
      }

      else
      {
        v808 = 0;
        v806 = 0u;
        v807 = 0u;
        outlined destroy of _HasContiguousBytes?(&v806, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
        v712 = v753;
        memcpy(v753, v539, v2);
        v713 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
        if (!swift_dynamicCast(&v806, v712, v1, v713, 6uLL))
        {
          v808 = 0;
          v806 = 0u;
          v807 = 0u;
          outlined destroy of _HasContiguousBytes?(&v806, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
          *(&v807 + 1) = v1;
          v749 = __swift_allocate_boxed_opaque_existential_0Tm(&v806);
          memcpy(v749, v539, v2);
          Mirror.init(reflecting:)(&v806, &v803);
          v750 = v803._object;
          v751 = v805;
          _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v539, &v803, &v809, 0, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
          v751;
          v750;
          goto LABEL_265;
        }

        _ss9CodingKey_pWOb_0(&v806, &v803);
LABEL_260:
        v545 = v804;
        v546 = v805;
        __swift_project_boxed_opaque_existential_0Tm(&v803, v804);
        v547 = (*(v546 + 8))(v545, v546);
      }

      v557 = v548;
      static String.+= infix(_:_:)(&v809, v547, v548, v549, v550, v551, v552, v553, v554, v555, v556);
      v557;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v803._countAndFlagsBits);
  }

LABEL_265:
  static String.+= infix(_:_:)(&v809, 0x202CuLL, 0xE200000000000000, v558, v559, v560, v561, v562, v563, v564, v565);
  0xE200000000000000;
  v203(10, v204, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v103, &v809, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v809, 0x202CuLL, 0xE200000000000000, v568, v569, v570, v571, v572, v573, v574, v575);
  0xE200000000000000;
  v203(11, v204, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v103, &v809, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v809, 0x202CuLL, 0xE200000000000000, v576, v577, v578, v579, v580, v581, v582, v583);
  0xE200000000000000;
  v203(12, v204, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v103, &v809, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v809, 0x202CuLL, 0xE200000000000000, v584, v585, v586, v587, v588, v589, v590, v591);
  0xE200000000000000;
  v203(13, v204, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v103, &v809, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v809, 0x202CuLL, 0xE200000000000000, v592, v593, v594, v595, v596, v597, v598, v599);
  0xE200000000000000;
  v203(14, v204, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v103, &v809, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v809, 0x202CuLL, 0xE200000000000000, v600, v601, v602, v603, v604, v605, v606, v607);
  0xE200000000000000;
  v203(15, v204, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v103, &v809, v1, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v809, 0x29uLL, 0xE100000000000000, v608, v609, v610, v611, v612, v613, v614, v615);
  0xE100000000000000;
  return v809._countAndFlagsBits;
}
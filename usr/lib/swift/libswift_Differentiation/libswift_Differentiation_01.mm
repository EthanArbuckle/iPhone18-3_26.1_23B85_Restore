uint64_t closure #1 in static SIMD<>._jvpDivide(lhs:rhs:)@<X0>(void (**a1)(uint64_t, uint64_t)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X4>, uint64_t a5@<X5>, void (*a6)(char *, char *)@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v93 = a7;
  v73 = a3;
  v74 = a6;
  v83 = a1;
  v84 = a2;
  v85 = a8;
  v9 = *(a5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v78 = *(AssociatedTypeWitness - 8);
  v79 = AssociatedTypeWitness;
  v11 = *(v78 + 64);
  v12 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v12);
  v17 = &v71 - v16;
  v18 = MEMORY[0x2A1C7C4A8](v15);
  v92 = &v71 - v19;
  v80 = *(a4 - 1);
  v20 = v80[8];
  v21 = MEMORY[0x2A1C7C4A8](v18);
  v87 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x2A1C7C4A8](v21);
  v89 = &v71 - v24;
  v25 = MEMORY[0x2A1C7C4A8](v23);
  v86 = &v71 - v26;
  v27 = MEMORY[0x2A1C7C4A8](v25);
  v72 = &v71 - v28;
  v29 = MEMORY[0x2A1C7C4A8](v27);
  v31 = &v71 - v30;
  v32 = MEMORY[0x2A1C7C4A8](v29);
  v77 = &v71 - v33;
  MEMORY[0x2A1C7C4A8](v32);
  v88 = &v71 - v34;
  dispatch thunk of SIMDStorage.init()();
  v35 = a4;
  v36 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v36 < 0)
  {
    goto LABEL_18;
  }

  v90 = v31;
  v37 = v79;
  if (v36)
  {
    v38 = 0;
    v81 = (v78 + 8);
    v82 = v36;
    do
    {
      v91 = v38 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      v39 = *(*(*(v93 + 16) + 16) + 8);
      dispatch thunk of static Numeric.* infix(_:_:)();
      v40 = *v81;
      (*v81)(v14, v37);
      v40(v17, v37);
      dispatch thunk of SIMDStorage.subscript.setter();
      v38 = v91;
    }

    while (v82 != v91);
  }

  v75 = v80[4];
  v76 = v80 + 4;
  v75(v77, v90, a4);
  dispatch thunk of SIMDStorage.init()();
  v41 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v41 < 0)
  {
    goto LABEL_18;
  }

  v91 = v9;
  v42 = v14;
  v43 = v79;
  if (v41)
  {
    v44 = 0;
    v81 = (v78 + 8);
    v82 = v41;
    v45 = (v78 + 8);
    do
    {
      v90 = v44 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      v46 = *(*(*(v93 + 16) + 16) + 8);
      dispatch thunk of static Numeric.* infix(_:_:)();
      v47 = *v45;
      (*v45)(v42, v43);
      v47(v17, v43);
      dispatch thunk of SIMDStorage.subscript.setter();
      v44 = v90;
    }

    while (v82 != v90);
  }

  v81 = v17;
  v82 = v42;
  v48 = v72;
  v75(v72, v86, v35);
  swift_getAssociatedConformanceWitness();
  v49 = v77;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v50 = v80 + 1;
  v51 = v80[1];
  v51(v48, v35);
  v80 = v50;
  v74 = v51;
  v51(v49, v35);
  dispatch thunk of SIMDStorage.init()();
  v77 = v35;
  v52 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v52 < 0)
  {
    goto LABEL_18;
  }

  v54 = v81;
  v53 = v82;
  v55 = v77;
  v56 = v79;
  if (v52)
  {
    v57 = 0;
    v83 = (v78 + 8);
    v86 = v52;
    do
    {
      v90 = v57 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      v58 = *(*(*(v93 + 16) + 16) + 8);
      dispatch thunk of static Numeric.* infix(_:_:)();
      v59 = *v83;
      (*v83)(v53, v56);
      v59(v54, v56);
      dispatch thunk of SIMDStorage.subscript.setter();
      v57 = v90;
    }

    while (v86 != v90);
  }

  v75(v89, v87, v55);
  dispatch thunk of SIMDStorage.init()();
  v60 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v60 < 0)
  {
LABEL_18:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v61 = v81;
    v62 = v82;
    v63 = v77;
    v64 = v79;
    if (v60)
    {
      v65 = 0;
      v66 = (v78 + 8);
      v90 = v60;
      do
      {
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v67 = *(v93 + 16);
        dispatch thunk of static FloatingPoint./ infix(_:_:)();
        v68 = *v66;
        (*v66)(v62, v64);
        v68(v61, v64);
        dispatch thunk of SIMDStorage.subscript.setter();
        ++v65;
      }

      while (v90 != v65);
    }

    v69 = v74;
    v74(v89, v63);
    return v69(v88, v63);
  }

  return result;
}

uint64_t (*static SIMD<>._vjpAdd(lhs:rhs:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v77 = a6;
  v78 = a8;
  v83 = a3;
  v84 = a7;
  v75 = a1;
  v76 = a5;
  v12 = *(a5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v69 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v72 = &v67 - v19;
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v22 = &v67 - v21;
  MEMORY[0x2A1C7C4A8](v20);
  v80 = *(a4 - 8);
  v24 = *(v80 + 64);
  v25 = MEMORY[0x2A1C7C4A8](&v67 - v23);
  v27 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x2A1C7C4A8](v25);
  v30 = &v67 - v29;
  v31 = MEMORY[0x2A1C7C4A8](v28);
  v79 = &v67 - v32;
  v86 = v14;
  v33 = *(v14 + 16);
  v81 = v14 + 16;
  v82 = v31;
  v35 = v34;
  v36 = v33;
  v33(v31, a2);
  dispatch thunk of SIMDStorage.init()();
  v37 = v30;
  v38 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v38 < 0)
  {
    goto LABEL_10;
  }

  v39 = v38;
  v85 = v27;
  v87 = v12;
  v40 = v82;
  if (v38)
  {
    v41 = 0;
    do
    {
      v36(v22, v40, v35);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v41;
    }

    while (v39 != v41);
  }

  v68 = v22;
  v42 = v86 + 8;
  v43 = *(v86 + 8);
  v43(v40, v35);
  v73 = *(v80 + 32);
  v74 = v80 + 32;
  v73(v79, v37, a4);
  dispatch thunk of SIMDStorage.init()();
  v44 = a4;
  v45 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v45 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v70 = a9;
    v71 = a10;
    v86 = v42;
    v46 = v68;
    v47 = v69;
    v48 = v72;
    v49 = v79;
    v82 = v43;
    if (v45)
    {
      v50 = v35;
      v51 = 0;
      v81 = v45;
      do
      {
        v87 = v51 + 1;
        v52 = v48;
        v53 = v49;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v54 = *(*(*(*(v84 + 16) + 16) + 8) + 8);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v55 = v47;
        v56 = v47;
        v57 = v46;
        v58 = v44;
        v59 = v82;
        v82(v55, v50);
        v59(v52, v50);
        v44 = v58;
        v46 = v57;
        v47 = v56;
        dispatch thunk of SIMDStorage.subscript.setter();
        v48 = v52;
        v49 = v53;
        v51 = v87;
      }

      while (v81 != v87);
    }

    (*(v80 + 8))(v49, v44);
    v73(v75, v85, v44);
    v60 = swift_allocObject();
    v61 = v76;
    v62 = v77;
    v60[2] = v44;
    v60[3] = v61;
    v63 = v84;
    v60[4] = v62;
    v60[5] = v63;
    v65 = v70;
    v64 = v71;
    v60[6] = v78;
    v60[7] = v65;
    v60[8] = v64;
    return partial apply for closure #1 in static SIMD<>._vjpAdd(lhs:rhs:);
  }

  return result;
}

{
  v78 = a6;
  v79 = a8;
  v83 = a7;
  v75 = a2;
  v76 = a1;
  v77 = a5;
  v12 = *(a5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v69 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v72 = &v67 - v19;
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v22 = &v67 - v21;
  MEMORY[0x2A1C7C4A8](v20);
  v80 = *(a4 - 8);
  v24 = *(v80 + 64);
  v25 = MEMORY[0x2A1C7C4A8](&v67 - v23);
  v27 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x2A1C7C4A8](v25);
  v30 = &v67 - v29;
  v31 = MEMORY[0x2A1C7C4A8](v28);
  v84 = &v67 - v32;
  v86 = v14;
  v33 = *(v14 + 16);
  v81 = v14 + 16;
  v82 = v31;
  v35 = v34;
  v36 = v33;
  v33(v31, a3);
  dispatch thunk of SIMDStorage.init()();
  v37 = v30;
  v38 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v38 < 0)
  {
    goto LABEL_10;
  }

  v39 = v38;
  v85 = v27;
  v87 = v12;
  v40 = v82;
  if (v38)
  {
    v41 = 0;
    do
    {
      v36(v22, v40, v35);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v41;
    }

    while (v39 != v41);
  }

  v68 = v22;
  v42 = v86 + 8;
  v43 = *(v86 + 8);
  v43(v40, v35);
  v73 = *(v80 + 32);
  v74 = v80 + 32;
  v73(v84, v37, a4);
  dispatch thunk of SIMDStorage.init()();
  v44 = a4;
  v45 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v45 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v70 = a9;
    v71 = a10;
    v46 = v75;
    v86 = v42;
    v47 = v68;
    v48 = v69;
    v49 = v72;
    v82 = v43;
    if (v45)
    {
      v50 = v35;
      v51 = 0;
      v81 = v45;
      do
      {
        v87 = v51 + 1;
        v52 = v49;
        v53 = v46;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v54 = *(*(*(*(v83 + 16) + 16) + 8) + 8);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v55 = v48;
        v56 = v48;
        v57 = v47;
        v58 = v44;
        v59 = v82;
        v82(v55, v50);
        v59(v52, v50);
        v44 = v58;
        v47 = v57;
        v48 = v56;
        dispatch thunk of SIMDStorage.subscript.setter();
        v49 = v52;
        v46 = v53;
        v51 = v87;
      }

      while (v81 != v87);
    }

    (*(v80 + 8))(v84, v44);
    v73(v76, v85, v44);
    v60 = swift_allocObject();
    v61 = v77;
    v62 = v78;
    v60[2] = v44;
    v60[3] = v61;
    v63 = v83;
    v60[4] = v62;
    v60[5] = v63;
    v65 = v70;
    v64 = v71;
    v60[6] = v79;
    v60[7] = v65;
    v60[8] = v64;
    return partial apply for closure #1 in static SIMD<>._vjpAdd(lhs:rhs:);
  }

  return result;
}

uint64_t closure #1 in static SIMD<>._vjpAdd(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  SIMD<>.sum()(AssociatedTypeWitness, a9, *(a10 + 16), a1);
  v14 = *(*(AssociatedTypeWitness - 8) + 16);

  return v14(a2, a3, AssociatedTypeWitness);
}

{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, a3, AssociatedTypeWitness);
  return SIMD<>.sum()(AssociatedTypeWitness, a9, *(a10 + 16), a2);
}

uint64_t SIMD<>.sum()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v12 = v20 - v11;
  v20[0] = *(*(*(a3 + 16) + 8) + 8);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v20[1] = a4;
  dispatch thunk of static SignedNumeric.- prefix(_:)();
  v13 = *(v9 + 8);
  v13(v12, AssociatedTypeWitness);
  result = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (result < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v15 = result;
    if (result)
    {
      v16 = a1;
      v17 = v13;
      result = 0;
      do
      {
        v18 = result + 1;
        v19 = v16;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
        v17(v12, AssociatedTypeWitness);
        v16 = v19;
        result = v18;
      }

      while (v15 != v18);
    }
  }

  return result;
}

uint64_t (*reverse-mode derivative of static SIMD<>.+ infix(_:_:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static SIMD<>._vjpAdd(lhs:rhs:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return partial apply for closure #1 in static SIMD<>._vjpAdd(lhs:rhs:);
}

{
  static SIMD<>._vjpAdd(lhs:rhs:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return partial apply for closure #1 in static SIMD<>._vjpAdd(lhs:rhs:);
}

uint64_t (*static SIMD<>._jvpAdd(lhs:rhs:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10))(uint64_t a1, uint64_t a2)
{
  v77 = a6;
  v78 = a8;
  v83 = a3;
  v84 = a7;
  v75 = a1;
  v76 = a5;
  v12 = *(a5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v69 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v72 = &v67 - v19;
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v22 = &v67 - v21;
  MEMORY[0x2A1C7C4A8](v20);
  v80 = *(a4 - 8);
  v24 = *(v80 + 64);
  v25 = MEMORY[0x2A1C7C4A8](&v67 - v23);
  v27 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x2A1C7C4A8](v25);
  v30 = &v67 - v29;
  v31 = MEMORY[0x2A1C7C4A8](v28);
  v79 = &v67 - v32;
  v86 = v14;
  v33 = *(v14 + 16);
  v81 = v14 + 16;
  v82 = v31;
  v35 = v34;
  v36 = v33;
  v33(v31, a2);
  dispatch thunk of SIMDStorage.init()();
  v37 = v30;
  v38 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v38 < 0)
  {
    goto LABEL_10;
  }

  v39 = v38;
  v85 = v27;
  v87 = v12;
  v40 = v82;
  if (v38)
  {
    v41 = 0;
    do
    {
      v36(v22, v40, v35);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v41;
    }

    while (v39 != v41);
  }

  v68 = v22;
  v42 = v86 + 8;
  v43 = *(v86 + 8);
  v43(v40, v35);
  v73 = *(v80 + 32);
  v74 = v80 + 32;
  v73(v79, v37, a4);
  dispatch thunk of SIMDStorage.init()();
  v44 = a4;
  v45 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v45 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v70 = a9;
    v71 = a10;
    v86 = v42;
    v46 = v68;
    v47 = v69;
    v48 = v72;
    v49 = v79;
    v82 = v43;
    if (v45)
    {
      v50 = v35;
      v51 = 0;
      v81 = v45;
      do
      {
        v87 = v51 + 1;
        v52 = v48;
        v53 = v49;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v54 = *(*(*(*(v84 + 16) + 16) + 8) + 8);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v55 = v47;
        v56 = v47;
        v57 = v46;
        v58 = v44;
        v59 = v82;
        v82(v55, v50);
        v59(v52, v50);
        v44 = v58;
        v46 = v57;
        v47 = v56;
        dispatch thunk of SIMDStorage.subscript.setter();
        v48 = v52;
        v49 = v53;
        v51 = v87;
      }

      while (v81 != v87);
    }

    (*(v80 + 8))(v49, v44);
    v73(v75, v85, v44);
    v60 = swift_allocObject();
    v61 = v76;
    v62 = v77;
    v60[2] = v44;
    v60[3] = v61;
    v63 = v84;
    v60[4] = v62;
    v60[5] = v63;
    v65 = v70;
    v64 = v71;
    v60[6] = v78;
    v60[7] = v65;
    v60[8] = v64;
    return partial apply for closure #1 in static SIMD<>._jvpAdd(lhs:rhs:);
  }

  return result;
}

{
  v78 = a6;
  v79 = a8;
  v83 = a7;
  v75 = a2;
  v76 = a1;
  v77 = a5;
  v12 = *(a5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v69 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v72 = &v67 - v19;
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v22 = &v67 - v21;
  MEMORY[0x2A1C7C4A8](v20);
  v80 = *(a4 - 8);
  v24 = *(v80 + 64);
  v25 = MEMORY[0x2A1C7C4A8](&v67 - v23);
  v27 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x2A1C7C4A8](v25);
  v30 = &v67 - v29;
  v31 = MEMORY[0x2A1C7C4A8](v28);
  v84 = &v67 - v32;
  v86 = v14;
  v33 = *(v14 + 16);
  v81 = v14 + 16;
  v82 = v31;
  v35 = v34;
  v36 = v33;
  v33(v31, a3);
  dispatch thunk of SIMDStorage.init()();
  v37 = v30;
  v38 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v38 < 0)
  {
    goto LABEL_10;
  }

  v39 = v38;
  v85 = v27;
  v87 = v12;
  v40 = v82;
  if (v38)
  {
    v41 = 0;
    do
    {
      v36(v22, v40, v35);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v41;
    }

    while (v39 != v41);
  }

  v68 = v22;
  v42 = v86 + 8;
  v43 = *(v86 + 8);
  v43(v40, v35);
  v73 = *(v80 + 32);
  v74 = v80 + 32;
  v73(v84, v37, a4);
  dispatch thunk of SIMDStorage.init()();
  v44 = a4;
  v45 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v45 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v70 = a9;
    v71 = a10;
    v46 = v75;
    v86 = v42;
    v47 = v68;
    v48 = v69;
    v49 = v72;
    v82 = v43;
    if (v45)
    {
      v50 = v35;
      v51 = 0;
      v81 = v45;
      do
      {
        v87 = v51 + 1;
        v52 = v49;
        v53 = v46;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v54 = *(*(*(*(v83 + 16) + 16) + 8) + 8);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v55 = v48;
        v56 = v48;
        v57 = v47;
        v58 = v44;
        v59 = v82;
        v82(v55, v50);
        v59(v52, v50);
        v44 = v58;
        v47 = v57;
        v48 = v56;
        dispatch thunk of SIMDStorage.subscript.setter();
        v49 = v52;
        v46 = v53;
        v51 = v87;
      }

      while (v81 != v87);
    }

    (*(v80 + 8))(v84, v44);
    v73(v76, v85, v44);
    v60 = swift_allocObject();
    v61 = v77;
    v62 = v78;
    v60[2] = v44;
    v60[3] = v61;
    v63 = v83;
    v60[4] = v62;
    v60[5] = v63;
    v65 = v70;
    v64 = v71;
    v60[6] = v79;
    v60[7] = v65;
    v60[8] = v64;
    return partial apply for closure #1 in static SIMD<>._jvpAdd(lhs:rhs:);
  }

  return result;
}

uint64_t (*forward-mode derivative of static SIMD<>.+ infix(_:_:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10))(uint64_t a1, uint64_t a2)
{
  static SIMD<>._jvpAdd(lhs:rhs:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return partial apply for closure #1 in static SIMD<>._jvpAdd(lhs:rhs:);
}

{
  static SIMD<>._jvpAdd(lhs:rhs:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return partial apply for closure #1 in static SIMD<>._jvpAdd(lhs:rhs:);
}

uint64_t (*static SIMD<>._vjpSubtract(lhs:rhs:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v77 = a6;
  v78 = a8;
  v83 = a3;
  v84 = a7;
  v75 = a1;
  v76 = a5;
  v12 = *(a5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v69 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v72 = &v67 - v19;
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v22 = &v67 - v21;
  MEMORY[0x2A1C7C4A8](v20);
  v80 = *(a4 - 8);
  v24 = *(v80 + 64);
  v25 = MEMORY[0x2A1C7C4A8](&v67 - v23);
  v27 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x2A1C7C4A8](v25);
  v30 = &v67 - v29;
  v31 = MEMORY[0x2A1C7C4A8](v28);
  v79 = &v67 - v32;
  v86 = v14;
  v33 = *(v14 + 16);
  v81 = v14 + 16;
  v82 = v31;
  v35 = v34;
  v36 = v33;
  v33(v31, a2);
  dispatch thunk of SIMDStorage.init()();
  v37 = v30;
  v38 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v38 < 0)
  {
    goto LABEL_10;
  }

  v39 = v38;
  v85 = v27;
  v87 = v12;
  v40 = v82;
  if (v38)
  {
    v41 = 0;
    do
    {
      v36(v22, v40, v35);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v41;
    }

    while (v39 != v41);
  }

  v68 = v22;
  v42 = v86 + 8;
  v43 = *(v86 + 8);
  v43(v40, v35);
  v73 = *(v80 + 32);
  v74 = v80 + 32;
  v73(v79, v37, a4);
  dispatch thunk of SIMDStorage.init()();
  v44 = a4;
  v45 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v45 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v70 = a9;
    v71 = a10;
    v86 = v42;
    v46 = v68;
    v47 = v69;
    v48 = v72;
    v49 = v79;
    v82 = v43;
    if (v45)
    {
      v50 = v35;
      v51 = 0;
      v81 = v45;
      do
      {
        v87 = v51 + 1;
        v52 = v48;
        v53 = v49;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v54 = *(*(*(*(v84 + 16) + 16) + 8) + 8);
        dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
        v55 = v47;
        v56 = v47;
        v57 = v46;
        v58 = v44;
        v59 = v82;
        v82(v55, v50);
        v59(v52, v50);
        v44 = v58;
        v46 = v57;
        v47 = v56;
        dispatch thunk of SIMDStorage.subscript.setter();
        v48 = v52;
        v49 = v53;
        v51 = v87;
      }

      while (v81 != v87);
    }

    (*(v80 + 8))(v49, v44);
    v73(v75, v85, v44);
    v60 = swift_allocObject();
    v61 = v76;
    v62 = v77;
    v60[2] = v44;
    v60[3] = v61;
    v63 = v84;
    v60[4] = v62;
    v60[5] = v63;
    v65 = v70;
    v64 = v71;
    v60[6] = v78;
    v60[7] = v65;
    v60[8] = v64;
    return partial apply for closure #1 in static SIMD<>._vjpSubtract(lhs:rhs:);
  }

  return result;
}

{
  v78 = a6;
  v79 = a8;
  v83 = a7;
  v75 = a2;
  v76 = a1;
  v77 = a5;
  v12 = *(a5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v69 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v72 = &v67 - v19;
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v22 = &v67 - v21;
  MEMORY[0x2A1C7C4A8](v20);
  v80 = *(a4 - 8);
  v24 = *(v80 + 64);
  v25 = MEMORY[0x2A1C7C4A8](&v67 - v23);
  v27 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x2A1C7C4A8](v25);
  v30 = &v67 - v29;
  v31 = MEMORY[0x2A1C7C4A8](v28);
  v84 = &v67 - v32;
  v86 = v14;
  v33 = *(v14 + 16);
  v81 = v14 + 16;
  v82 = v31;
  v35 = v34;
  v36 = v33;
  v33(v31, a3);
  dispatch thunk of SIMDStorage.init()();
  v37 = v30;
  v38 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v38 < 0)
  {
    goto LABEL_10;
  }

  v39 = v38;
  v85 = v27;
  v87 = v12;
  v40 = v82;
  if (v38)
  {
    v41 = 0;
    do
    {
      v36(v22, v40, v35);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v41;
    }

    while (v39 != v41);
  }

  v68 = v22;
  v42 = v86 + 8;
  v43 = *(v86 + 8);
  v43(v40, v35);
  v73 = *(v80 + 32);
  v74 = v80 + 32;
  v73(v84, v37, a4);
  dispatch thunk of SIMDStorage.init()();
  v44 = a4;
  v45 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v45 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v70 = a9;
    v71 = a10;
    v46 = v75;
    v86 = v42;
    v47 = v68;
    v48 = v69;
    v49 = v72;
    v82 = v43;
    if (v45)
    {
      v50 = v35;
      v51 = 0;
      v81 = v45;
      do
      {
        v87 = v51 + 1;
        v52 = v49;
        v53 = v46;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v54 = *(*(*(*(v83 + 16) + 16) + 8) + 8);
        dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
        v55 = v48;
        v56 = v48;
        v57 = v47;
        v58 = v44;
        v59 = v82;
        v82(v55, v50);
        v59(v52, v50);
        v44 = v58;
        v47 = v57;
        v48 = v56;
        dispatch thunk of SIMDStorage.subscript.setter();
        v49 = v52;
        v46 = v53;
        v51 = v87;
      }

      while (v81 != v87);
    }

    (*(v80 + 8))(v84, v44);
    v73(v76, v85, v44);
    v60 = swift_allocObject();
    v61 = v77;
    v62 = v78;
    v60[2] = v44;
    v60[3] = v61;
    v63 = v83;
    v60[4] = v62;
    v60[5] = v63;
    v65 = v70;
    v64 = v71;
    v60[6] = v79;
    v60[7] = v65;
    v60[8] = v64;
    return partial apply for closure #1 in static SIMD<>._vjpSubtract(lhs:rhs:);
  }

  return result;
}

uint64_t closure #1 in static SIMD<>._vjpSubtract(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v73 = a3;
  v74 = a2;
  v75 = a1;
  v71 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v66 = *(AssociatedTypeWitness - 8);
  v13 = *(v66 + 64);
  v14 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v67 = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v76 = v60 - v16;
  v17 = *(a5 + 48);
  v69 = swift_getAssociatedTypeWitness();
  v70 = a8;
  v18 = swift_getAssociatedTypeWitness();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x2A1C7C4A8](v18);
  v64 = v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x2A1C7C4A8](v21);
  v63 = v60 - v24;
  v25 = MEMORY[0x2A1C7C4A8](v23);
  v72 = v60 - v26;
  v27 = MEMORY[0x2A1C7C4A8](v25);
  v29 = v60 - v28;
  MEMORY[0x2A1C7C4A8](v27);
  v31 = v60 - v30;
  v32 = *(a10 + 16);
  v33 = *(*(*(v32 + 16) + 8) + 16);
  v34 = swift_getAssociatedTypeWitness();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v34);
  v36 = v71;
  SIMD<>.sum()(AssociatedTypeWitness, v71, v32, v75);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v75 = v19;
  v37 = *(v19 + 16);
  v61 = v18;
  v62 = v29;
  v68 = v31;
  v38 = v37;
  v60[1] = v19 + 16;
  v37(v29, v31, v18);
  v39 = *(v36 + 48);
  v40 = v67;
  dispatch thunk of SIMDStorage.init()();
  v41 = v40;
  v65 = AssociatedTypeWitness;
  v42 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v42 < 0)
  {
    goto LABEL_10;
  }

  v43 = v42;
  v44 = v65;
  v45 = v72;
  v47 = v61;
  v46 = v62;
  v71 = v39;
  if (v42)
  {
    v48 = 0;
    do
    {
      v38(v45, v46, v47);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v48;
    }

    while (v43 != v48);
  }

  v49 = v75 + 8;
  v50 = *(v75 + 8);
  v50(v46, v47);
  (*(v66 + 32))(v76, v41, v44);
  dispatch thunk of SIMDStorage.init()();
  v51 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v51 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v52 = v51;
    v50(v68, v47);
    v53 = v76;
    v75 = v49;
    v54 = v63;
    v55 = v64;
    v56 = v65;
    v68 = v50;
    if (v52)
    {
      v57 = 0;
      v67 = v52;
      do
      {
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        swift_getAssociatedConformanceWitness();
        dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
        v58 = v68;
        (v68)(v55, v47);
        v58(v54, v47);
        dispatch thunk of SIMDStorage.subscript.setter();
        v53 = v76;
        ++v57;
      }

      while (v67 != v57);
    }

    return (*(v66 + 8))(v53, v56);
  }

  return result;
}

{
  v22[0] = a9;
  v22[1] = a2;
  v12 = *(a5 + 48);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v17 = v22 - v16;
  v18 = swift_getAssociatedTypeWitness();
  (*(*(v18 - 8) + 16))(a1, a3, v18);
  v19 = *(a10 + 16);
  SIMD<>.sum()(v18, v22[0], v19, v17);
  v20 = *(v19 + 16);
  dispatch thunk of static SignedNumeric.- prefix(_:)();
  return (*(v14 + 8))(v17, AssociatedTypeWitness);
}

uint64_t (*reverse-mode derivative of static SIMD<>.- infix(_:_:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static SIMD<>._vjpSubtract(lhs:rhs:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return partial apply for closure #1 in static SIMD<>._vjpSubtract(lhs:rhs:);
}

{
  static SIMD<>._vjpSubtract(lhs:rhs:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return partial apply for closure #1 in static SIMD<>._vjpSubtract(lhs:rhs:);
}

uint64_t (*static SIMD<>._jvpSubtract(lhs:rhs:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10))(uint64_t a1, uint64_t a2)
{
  v77 = a6;
  v78 = a8;
  v83 = a3;
  v84 = a7;
  v75 = a1;
  v76 = a5;
  v12 = *(a5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v69 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v72 = &v67 - v19;
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v22 = &v67 - v21;
  MEMORY[0x2A1C7C4A8](v20);
  v80 = *(a4 - 8);
  v24 = *(v80 + 64);
  v25 = MEMORY[0x2A1C7C4A8](&v67 - v23);
  v27 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x2A1C7C4A8](v25);
  v30 = &v67 - v29;
  v31 = MEMORY[0x2A1C7C4A8](v28);
  v79 = &v67 - v32;
  v86 = v14;
  v33 = *(v14 + 16);
  v81 = v14 + 16;
  v82 = v31;
  v35 = v34;
  v36 = v33;
  v33(v31, a2);
  dispatch thunk of SIMDStorage.init()();
  v37 = v30;
  v38 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v38 < 0)
  {
    goto LABEL_10;
  }

  v39 = v38;
  v85 = v27;
  v87 = v12;
  v40 = v82;
  if (v38)
  {
    v41 = 0;
    do
    {
      v36(v22, v40, v35);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v41;
    }

    while (v39 != v41);
  }

  v68 = v22;
  v42 = v86 + 8;
  v43 = *(v86 + 8);
  v43(v40, v35);
  v73 = *(v80 + 32);
  v74 = v80 + 32;
  v73(v79, v37, a4);
  dispatch thunk of SIMDStorage.init()();
  v44 = a4;
  v45 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v45 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v70 = a9;
    v71 = a10;
    v86 = v42;
    v46 = v68;
    v47 = v69;
    v48 = v72;
    v49 = v79;
    v82 = v43;
    if (v45)
    {
      v50 = v35;
      v51 = 0;
      v81 = v45;
      do
      {
        v87 = v51 + 1;
        v52 = v48;
        v53 = v49;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v54 = *(*(*(*(v84 + 16) + 16) + 8) + 8);
        dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
        v55 = v47;
        v56 = v47;
        v57 = v46;
        v58 = v44;
        v59 = v82;
        v82(v55, v50);
        v59(v52, v50);
        v44 = v58;
        v46 = v57;
        v47 = v56;
        dispatch thunk of SIMDStorage.subscript.setter();
        v48 = v52;
        v49 = v53;
        v51 = v87;
      }

      while (v81 != v87);
    }

    (*(v80 + 8))(v49, v44);
    v73(v75, v85, v44);
    v60 = swift_allocObject();
    v61 = v76;
    v62 = v77;
    v60[2] = v44;
    v60[3] = v61;
    v63 = v84;
    v60[4] = v62;
    v60[5] = v63;
    v65 = v70;
    v64 = v71;
    v60[6] = v78;
    v60[7] = v65;
    v60[8] = v64;
    return partial apply for closure #1 in static SIMD<>._jvpSubtract(lhs:rhs:);
  }

  return result;
}

{
  v78 = a6;
  v79 = a8;
  v83 = a7;
  v75 = a2;
  v76 = a1;
  v77 = a5;
  v12 = *(a5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v69 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v72 = &v67 - v19;
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v22 = &v67 - v21;
  MEMORY[0x2A1C7C4A8](v20);
  v80 = *(a4 - 8);
  v24 = *(v80 + 64);
  v25 = MEMORY[0x2A1C7C4A8](&v67 - v23);
  v27 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x2A1C7C4A8](v25);
  v30 = &v67 - v29;
  v31 = MEMORY[0x2A1C7C4A8](v28);
  v84 = &v67 - v32;
  v86 = v14;
  v33 = *(v14 + 16);
  v81 = v14 + 16;
  v82 = v31;
  v35 = v34;
  v36 = v33;
  v33(v31, a3);
  dispatch thunk of SIMDStorage.init()();
  v37 = v30;
  v38 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v38 < 0)
  {
    goto LABEL_10;
  }

  v39 = v38;
  v85 = v27;
  v87 = v12;
  v40 = v82;
  if (v38)
  {
    v41 = 0;
    do
    {
      v36(v22, v40, v35);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v41;
    }

    while (v39 != v41);
  }

  v68 = v22;
  v42 = v86 + 8;
  v43 = *(v86 + 8);
  v43(v40, v35);
  v73 = *(v80 + 32);
  v74 = v80 + 32;
  v73(v84, v37, a4);
  dispatch thunk of SIMDStorage.init()();
  v44 = a4;
  v45 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v45 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v70 = a9;
    v71 = a10;
    v46 = v75;
    v86 = v42;
    v47 = v68;
    v48 = v69;
    v49 = v72;
    v82 = v43;
    if (v45)
    {
      v50 = v35;
      v51 = 0;
      v81 = v45;
      do
      {
        v87 = v51 + 1;
        v52 = v49;
        v53 = v46;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v54 = *(*(*(*(v83 + 16) + 16) + 8) + 8);
        dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
        v55 = v48;
        v56 = v48;
        v57 = v47;
        v58 = v44;
        v59 = v82;
        v82(v55, v50);
        v59(v52, v50);
        v44 = v58;
        v47 = v57;
        v48 = v56;
        dispatch thunk of SIMDStorage.subscript.setter();
        v49 = v52;
        v46 = v53;
        v51 = v87;
      }

      while (v81 != v87);
    }

    (*(v80 + 8))(v84, v44);
    v73(v76, v85, v44);
    v60 = swift_allocObject();
    v61 = v77;
    v62 = v78;
    v60[2] = v44;
    v60[3] = v61;
    v63 = v83;
    v60[4] = v62;
    v60[5] = v63;
    v65 = v70;
    v64 = v71;
    v60[6] = v79;
    v60[7] = v65;
    v60[8] = v64;
    return partial apply for closure #1 in static SIMD<>._jvpSubtract(lhs:rhs:);
  }

  return result;
}

uint64_t closure #1 in static SIMD<>._jvpAdd(lhs:rhs:)@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X6>, char *a5@<X7>, uint64_t a6@<X8>, uint64_t a7, void (*a8)(char *, char *, uint64_t, uint64_t))
{
  v67 = a5;
  v63 = a2;
  v61 = a1;
  v65 = a6;
  v8 = *(a3 + 48);
  v64 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x2A1C7C4A8](v9);
  v55 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v56 = &v54 - v15;
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v54 = &v54 - v17;
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v54 - v18;
  v20 = swift_getAssociatedTypeWitness();
  v58 = *(v20 - 8);
  v21 = *(v58 + 64);
  v22 = MEMORY[0x2A1C7C4A8](v20);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22);
  v26 = &v54 - v25;
  v66 = v10;
  v27 = (v10 + 16);
  v28 = v19;
  v29 = v61;
  v30 = *(v10 + 16);
  v61 = v27;
  v30(v19, v29, v9);
  v31 = *(v67 + 6);
  dispatch thunk of SIMDStorage.init()();
  v32 = v24;
  v33 = v20;
  v34 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v34 < 0)
  {
    goto LABEL_10;
  }

  v35 = v34;
  v57 = v26;
  v67 = v32;
  v36 = v54;
  if (v34)
  {
    v37 = 0;
    do
    {
      v30(v36, v28, v9);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v37;
    }

    while (v35 != v37);
  }

  v38 = v66 + 8;
  v39 = *(v66 + 8);
  v39(v28, v9);
  (*(v58 + 32))(v57, v67, v33);
  dispatch thunk of SIMDStorage.init()();
  v40 = v33;
  v41 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v41 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v66 = v38;
    v42 = v55;
    v43 = v56;
    v44 = v57;
    v61 = v39;
    if (v41)
    {
      v45 = v36;
      v46 = 0;
      v59 = a8;
      v60 = v41;
      do
      {
        v67 = v46 + 1;
        v47 = v44;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v59(v43, v42, v9, AssociatedConformanceWitness);
        v49 = v40;
        v50 = v45;
        v51 = v31;
        v52 = v61;
        v61(v42, v9);
        v52(v43, v9);
        v31 = v51;
        v45 = v50;
        v40 = v49;
        dispatch thunk of SIMDStorage.subscript.setter();
        v44 = v47;
        v46 = v67;
      }

      while (v60 != v67);
    }

    return (*(v58 + 8))(v44, v40);
  }

  return result;
}

uint64_t (*forward-mode derivative of static SIMD<>.- infix(_:_:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10))(uint64_t a1, uint64_t a2)
{
  static SIMD<>._jvpSubtract(lhs:rhs:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return partial apply for closure #1 in static SIMD<>._jvpSubtract(lhs:rhs:);
}

{
  static SIMD<>._jvpSubtract(lhs:rhs:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return partial apply for closure #1 in static SIMD<>._jvpSubtract(lhs:rhs:);
}

uint64_t closure #1 in static SIMD<>._jvpAdd(lhs:rhs:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X6>, char *a5@<X7>, uint64_t a6@<X8>, uint64_t a7, void (*a8)(char *, char *, uint64_t, uint64_t))
{
  v67 = a5;
  v64 = a6;
  v65 = a2;
  v57 = a1;
  v9 = *(a3 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v63 = a4;
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v10);
  v55 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v56 = &v54 - v16;
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v54 = &v54 - v18;
  MEMORY[0x2A1C7C4A8](v17);
  v20 = &v54 - v19;
  v21 = swift_getAssociatedTypeWitness();
  v58 = *(v21 - 8);
  v22 = *(v58 + 64);
  v23 = MEMORY[0x2A1C7C4A8](v21);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23);
  v27 = &v54 - v26;
  v66 = v11;
  v28 = (v11 + 16);
  v29 = v20;
  v30 = *(v11 + 16);
  v61 = v28;
  v30(v20, v65, v10);
  v31 = *(v67 + 6);
  dispatch thunk of SIMDStorage.init()();
  v32 = v25;
  v33 = v21;
  v34 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v34 < 0)
  {
    goto LABEL_10;
  }

  v35 = v34;
  v65 = v27;
  v67 = v32;
  v36 = v54;
  if (v34)
  {
    v37 = 0;
    do
    {
      v30(v36, v29, v10);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v37;
    }

    while (v35 != v37);
  }

  v38 = v66 + 8;
  v39 = *(v66 + 8);
  v39(v29, v10);
  (*(v58 + 32))(v65, v67, v33);
  dispatch thunk of SIMDStorage.init()();
  v40 = v33;
  v41 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v41 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v43 = v56;
    v42 = v57;
    v66 = v38;
    v44 = v55;
    v61 = v39;
    if (v41)
    {
      v45 = v36;
      v46 = 0;
      v59 = a8;
      v60 = v41;
      do
      {
        v67 = v46 + 1;
        v47 = v42;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v59(v43, v44, v10, AssociatedConformanceWitness);
        v49 = v40;
        v50 = v45;
        v51 = v31;
        v52 = v61;
        v61(v44, v10);
        v52(v43, v10);
        v31 = v51;
        v45 = v50;
        v40 = v49;
        dispatch thunk of SIMDStorage.subscript.setter();
        v42 = v47;
        v46 = v67;
      }

      while (v60 != v67);
    }

    return (*(v58 + 8))(v65, v40);
  }

  return result;
}

uint64_t (*static SIMD<>._vjpMultiply(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v77 = a5;
  v78 = a6;
  v92 = a2;
  v74 = a1;
  v12 = *(a5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  v15 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v71 = v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v70 = v69 - v18;
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v91 = v69 - v20;
  v75 = v21;
  MEMORY[0x2A1C7C4A8](v19);
  v83 = *(a4 - 8);
  v23 = *(v83 + 64);
  v24 = MEMORY[0x2A1C7C4A8](v69 - v22);
  v73 = v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x2A1C7C4A8](v24);
  v90 = v69 - v27;
  v28 = MEMORY[0x2A1C7C4A8](v26);
  v30 = (v69 - v29);
  v72 = v31;
  v32 = MEMORY[0x2A1C7C4A8](v28);
  v89 = v69 - v33;
  v84 = v34;
  v35 = *(v34 + 16);
  v36 = v32;
  v76 = a3;
  v38 = v37;
  v80 = v35;
  v81 = v34 + 16;
  (v35)(v32, a3);
  dispatch thunk of SIMDStorage.init()();
  v82 = a4;
  v39 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v39 < 0)
  {
    goto LABEL_10;
  }

  v40 = v39;
  v87 = v30;
  v88 = a7;
  v79 = a8;
  v41 = v82;
  v42 = v91;
  v43 = v80;
  if (v39)
  {
    v44 = 0;
    do
    {
      v43(v42, v36, v38);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v44;
    }

    while (v40 != v44);
  }

  v45 = v38;
  v46 = v38;
  v47 = *(v84 + 8);
  v86 = v84 + 8;
  v47(v36, v46);
  v48 = *(v83 + 32);
  v69[1] = v83 + 32;
  v69[0] = v48;
  v48(v89, v87, v41);
  dispatch thunk of SIMDStorage.init()();
  v49 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v49 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v50 = v92;
    v51 = v71;
    v52 = v70;
    v53 = v82;
    v87 = v47;
    if (v49)
    {
      v54 = 0;
      v85 = v49;
      do
      {
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v55 = *(*(*(v88 + 16) + 16) + 8);
        dispatch thunk of static Numeric.* infix(_:_:)();
        v56 = v87;
        v87(v51, v45);
        v56(v52, v45);
        dispatch thunk of SIMDStorage.subscript.setter();
        v50 = v92;
        ++v54;
      }

      while (v85 != v54);
    }

    v57 = v83;
    (*(v83 + 8))(v89, v53);
    v58 = v69[0];
    (v69[0])(v74, v90, v53);
    v59 = v91;
    v80(v91, v76, v45);
    v60 = v73;
    (*(v57 + 16))(v73, v50, v53);
    v61 = v84;
    v62 = (*(v84 + 80) + 56) & ~*(v84 + 80);
    v63 = (v75 + *(v57 + 80) + v62) & ~*(v57 + 80);
    v64 = swift_allocObject();
    v65 = v77;
    v66 = v78;
    *(v64 + 2) = v53;
    *(v64 + 3) = v65;
    v67 = v88;
    *(v64 + 4) = v66;
    *(v64 + 5) = v67;
    *(v64 + 6) = v79;
    (*(v61 + 32))(&v64[v62], v59, v45);
    v58(&v64[v63], v60, v53);
    return partial apply for closure #1 in static SIMD<>._vjpMultiply(lhs:rhs:);
  }

  return result;
}

uint64_t closure #1 in static SIMD<>._vjpMultiply(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v81 = a5;
  v78 = a3;
  v70 = a2;
  v68 = a1;
  v71 = a7;
  v11 = *(a7 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v77 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v76 = &v68 - v18;
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v89 = &v68 - v20;
  MEMORY[0x2A1C7C4A8](v19);
  v79 = *(a6 - 8);
  v22 = v79[8];
  v23 = MEMORY[0x2A1C7C4A8](&v68 - v21);
  v84 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x2A1C7C4A8](v23);
  v69 = &v68 - v26;
  v27 = MEMORY[0x2A1C7C4A8](v25);
  v83 = &v68 - v28;
  v29 = MEMORY[0x2A1C7C4A8](v27);
  v31 = &v68 - v30;
  v32 = MEMORY[0x2A1C7C4A8](v29);
  v82 = &v68 - v33;
  v90 = v13;
  v34 = v32;
  v36 = v35;
  v37 = *(v13 + 16);
  v88 = v13 + 16;
  v37(v32, a4);
  dispatch thunk of SIMDStorage.init()();
  v38 = v31;
  v39 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v39 < 0)
  {
    goto LABEL_14;
  }

  v40 = v39;
  v85 = v11;
  v41 = v89;
  if (v39)
  {
    v42 = 0;
    do
    {
      (v37)(v41, v34, v36);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v42;
    }

    while (v40 != v42);
  }

  v43 = *(v90 + 8);
  v72 = v36;
  v90 += 8;
  v87 = v43;
  v43(v34, v36);
  v44 = v79[4];
  v75 = v79 + 4;
  v73 = v44;
  v44(v82, v38, a6);
  dispatch thunk of SIMDStorage.init()();
  v74 = a6;
  v45 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v45 < 0)
  {
    goto LABEL_14;
  }

  v88 = a9;
  v46 = v77;
  v47 = v76;
  v48 = v74;
  v49 = v72;
  if (v45)
  {
    v50 = 0;
    v80 = v45;
    do
    {
      v86 = v50 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      v51 = *(*(*(v88 + 16) + 16) + 8);
      dispatch thunk of static Numeric.* infix(_:_:)();
      v52 = v48;
      v53 = v87;
      v87(v46, v49);
      v53(v47, v49);
      v48 = v52;
      dispatch thunk of SIMDStorage.subscript.setter();
      v50 = v86;
    }

    while (v80 != v86);
  }

  v54 = v79[1];
  v55 = v82;
  ++v79;
  v82 = v54;
  (v54)(v55, v48);
  v73(v68, v83, v48);
  dispatch thunk of SIMDStorage.init()();
  v56 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v56 < 0)
  {
LABEL_14:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v57 = v77;
    v58 = v76;
    v59 = v74;
    v60 = v72;
    if (v56)
    {
      v61 = 0;
      v83 = v56;
      do
      {
        v86 = v61 + 1;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v62 = *(*(*(v88 + 16) + 16) + 8);
        dispatch thunk of static Numeric.* infix(_:_:)();
        v63 = v57;
        v64 = v57;
        v65 = v87;
        v87(v63, v60);
        v65(v58, v60);
        v57 = v64;
        dispatch thunk of SIMDStorage.subscript.setter();
        v61 = v86;
      }

      while (v83 != v86);
    }

    v66 = v69;
    v73(v69, v84, v59);
    SIMD<>.sum()(v59, v71, *(v88 + 16), v70);
    return (v82)(v66, v59);
  }

  return result;
}

uint64_t (*static SIMD<>._jvpMultiply(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(uint64_t a1, uint64_t a2)
{
  v82 = a5;
  v83 = a6;
  v99 = a2;
  v79 = a1;
  v12 = *(a5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  v15 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v76 = v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v75 = v74 - v18;
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v97 = v74 - v20;
  v80 = v21;
  MEMORY[0x2A1C7C4A8](v19);
  v89 = *(a4 - 8);
  v23 = *(v89 + 64);
  v24 = MEMORY[0x2A1C7C4A8](v74 - v22);
  v78 = v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x2A1C7C4A8](v24);
  v96 = v74 - v27;
  v28 = MEMORY[0x2A1C7C4A8](v26);
  v30 = v74 - v29;
  v77 = v31;
  v32 = MEMORY[0x2A1C7C4A8](v28);
  v85 = v74 - v33;
  v90 = v34;
  v35 = *(v34 + 16);
  v36 = v32;
  v81 = a3;
  v38 = v37;
  v86 = v35;
  v87 = v34 + 16;
  (v35)(v32, a3);
  dispatch thunk of SIMDStorage.init()();
  v39 = v30;
  v88 = a4;
  v40 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v40 < 0)
  {
    goto LABEL_10;
  }

  v41 = v40;
  v95 = a7;
  v84 = a8;
  v42 = v97;
  v43 = v88;
  v44 = v86;
  v98 = v39;
  if (v40)
  {
    v45 = 0;
    do
    {
      v44(v42, v36, v38);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v45;
    }

    while (v41 != v45);
  }

  v46 = v36;
  v47 = v38;
  v48 = *(v90 + 8);
  v93 = v90 + 8;
  v48(v46, v38);
  v49 = *(v89 + 32);
  v74[1] = v89 + 32;
  v74[0] = v49;
  v49(v85, v98, v43);
  dispatch thunk of SIMDStorage.init()();
  v50 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v50 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v51 = v99;
    v52 = v76;
    v53 = v75;
    v54 = v88;
    v55 = v96;
    v56 = v85;
    v94 = v47;
    v92 = v48;
    if (v50)
    {
      v57 = 0;
      v91 = v50;
      do
      {
        v98 = v57 + 1;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v58 = v94;
        v59 = *(*(*(v95 + 16) + 16) + 8);
        dispatch thunk of static Numeric.* infix(_:_:)();
        v60 = v92;
        v92(v52, v58);
        v60(v53, v58);
        v55 = v96;
        dispatch thunk of SIMDStorage.subscript.setter();
        v51 = v99;
        v57 = v98;
      }

      while (v91 != v98);
    }

    v61 = v89;
    (*(v89 + 8))(v56, v54);
    v62 = v74[0];
    (v74[0])(v79, v55, v54);
    v63 = v78;
    (*(v61 + 16))(v78, v51, v54);
    v64 = v97;
    v65 = v94;
    v86(v97, v81, v94);
    v66 = (*(v61 + 80) + 56) & ~*(v61 + 80);
    v67 = v90;
    v68 = (v77 + *(v90 + 80) + v66) & ~*(v90 + 80);
    v69 = swift_allocObject();
    v70 = v82;
    v71 = v83;
    *(v69 + 2) = v54;
    *(v69 + 3) = v70;
    v72 = v95;
    *(v69 + 4) = v71;
    *(v69 + 5) = v72;
    *(v69 + 6) = v84;
    v62(&v69[v66], v63, v54);
    (*(v67 + 32))(&v69[v68], v64, v65);
    return partial apply for closure #1 in static SIMD<>._jvpMultiply(lhs:rhs:);
  }

  return result;
}

uint64_t closure #1 in static SIMD<>._jvpMultiply(lhs:rhs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v117 = a8;
  v96 = a7;
  v93 = a4;
  v92 = a3;
  v95 = a1;
  v97 = a9;
  v11 = *(a6 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  v14 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v103 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v102 = &v92 - v17;
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v109 = &v92 - v19;
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v100 = &v92 - v21;
  MEMORY[0x2A1C7C4A8](v20);
  v110 = *(a5 - 8);
  v23 = v110[8];
  v24 = MEMORY[0x2A1C7C4A8](&v92 - v22);
  v115 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x2A1C7C4A8](v24);
  v99 = &v92 - v27;
  v28 = MEMORY[0x2A1C7C4A8](v26);
  v114 = &v92 - v29;
  v30 = MEMORY[0x2A1C7C4A8](v28);
  v94 = &v92 - v31;
  v32 = MEMORY[0x2A1C7C4A8](v30);
  v113 = &v92 - v33;
  v34 = MEMORY[0x2A1C7C4A8](v32);
  v36 = &v92 - v35;
  v37 = MEMORY[0x2A1C7C4A8](v34);
  v112 = &v92 - v38;
  v39 = MEMORY[0x2A1C7C4A8](v37);
  v101 = &v92 - v40;
  v119 = v41;
  v42 = v39;
  v44 = v43;
  v104 = *(v41 + 16);
  v105 = v41 + 16;
  v104(v39, a2);
  dispatch thunk of SIMDStorage.init()();
  v45 = a5;
  v46 = v11;
  v47 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v47 < 0)
  {
    goto LABEL_18;
  }

  v48 = v47;
  v49 = v104;
  v120 = v46;
  v50 = v109;
  if (v47)
  {
    v51 = 0;
    do
    {
      v49(v50, v42, v44);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v51;
    }

    while (v48 != v51);
  }

  v52 = *(v119 + 8);
  v98 = v44;
  v118 = v52;
  v119 += 8;
  v52(v42, v44);
  v107 = v110[4];
  v108 = v110 + 4;
  v107(v112, v36, v45);
  dispatch thunk of SIMDStorage.init()();
  v106 = v45;
  v53 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v53 < 0)
  {
    goto LABEL_18;
  }

  v54 = v102;
  v55 = v103;
  v56 = v120;
  v57 = v106;
  v58 = v109;
  v59 = v98;
  if (v53)
  {
    v60 = 0;
    v111 = v53;
    do
    {
      v116 = v60 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      v61 = *(*(*(v117 + 16) + 16) + 8);
      dispatch thunk of static Numeric.* infix(_:_:)();
      v62 = v58;
      v63 = v57;
      v64 = v56;
      v65 = v118;
      v118(v55, v59);
      v65(v54, v59);
      v56 = v64;
      v57 = v63;
      v58 = v62;
      dispatch thunk of SIMDStorage.subscript.setter();
      v60 = v116;
    }

    while (v111 != v116);
  }

  v66 = v112;
  v112 = v110[1];
  ++v110;
  (v112)(v66, v57);
  v107(v101, v113, v57);
  (v104)(v100, v93, v59);
  dispatch thunk of SIMDStorage.init()();
  v67 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v67 < 0)
  {
    goto LABEL_18;
  }

  v68 = v67;
  v69 = v100;
  v70 = v99;
  v71 = v106;
  v72 = v109;
  v73 = v104;
  if (v67)
  {
    v74 = 0;
    do
    {
      v73(v72, v69, v59);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v74;
    }

    while (v68 != v74);
  }

  v118(v69, v59);
  v107(v114, v70, v71);
  dispatch thunk of SIMDStorage.init()();
  v75 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v75 < 0)
  {
LABEL_18:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v76 = v102;
    v77 = v103;
    v78 = v106;
    v79 = v109;
    v80 = v98;
    if (v75)
    {
      v81 = 0;
      v113 = v75;
      do
      {
        v116 = v81 + 1;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v82 = *(*(*(v117 + 16) + 16) + 8);
        dispatch thunk of static Numeric.* infix(_:_:)();
        v83 = v77;
        v84 = v77;
        v85 = v79;
        v86 = v78;
        v87 = v118;
        v118(v83, v80);
        v87(v76, v80);
        v78 = v86;
        v79 = v85;
        v77 = v84;
        dispatch thunk of SIMDStorage.subscript.setter();
        v81 = v116;
      }

      while (v113 != v116);
    }

    v88 = v112;
    (v112)(v114, v78);
    v89 = v94;
    v107(v94, v115, v78);
    swift_getAssociatedConformanceWitness();
    v90 = v101;
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v88(v89, v78);
    return (v88)(v90, v78);
  }

  return result;
}

uint64_t (*static SIMD<>._vjpDivide(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v77 = a5;
  v78 = a6;
  v92 = a2;
  v74 = a1;
  v12 = *(a5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  v15 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v71 = v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v70 = v69 - v18;
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v91 = v69 - v20;
  v75 = v21;
  MEMORY[0x2A1C7C4A8](v19);
  v83 = *(a4 - 8);
  v23 = *(v83 + 64);
  v24 = MEMORY[0x2A1C7C4A8](v69 - v22);
  v73 = v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x2A1C7C4A8](v24);
  v90 = v69 - v27;
  v28 = MEMORY[0x2A1C7C4A8](v26);
  v30 = (v69 - v29);
  v72 = v31;
  v32 = MEMORY[0x2A1C7C4A8](v28);
  v89 = v69 - v33;
  v84 = v34;
  v35 = *(v34 + 16);
  v36 = v32;
  v76 = a3;
  v38 = v37;
  v80 = v35;
  v81 = v34 + 16;
  (v35)(v32, a3);
  dispatch thunk of SIMDStorage.init()();
  v82 = a4;
  v39 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v39 < 0)
  {
    goto LABEL_10;
  }

  v40 = v39;
  v87 = v30;
  v88 = a7;
  v79 = a8;
  v41 = v82;
  v42 = v91;
  v43 = v80;
  if (v39)
  {
    v44 = 0;
    do
    {
      v43(v42, v36, v38);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v44;
    }

    while (v40 != v44);
  }

  v45 = v38;
  v46 = v38;
  v47 = *(v84 + 8);
  v86 = v84 + 8;
  v47(v36, v46);
  v48 = *(v83 + 32);
  v69[1] = v83 + 32;
  v69[0] = v48;
  v48(v89, v87, v41);
  dispatch thunk of SIMDStorage.init()();
  v49 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v49 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v50 = v92;
    v51 = v71;
    v52 = v70;
    v53 = v82;
    v87 = v47;
    if (v49)
    {
      v54 = 0;
      v85 = v49;
      do
      {
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v55 = *(v88 + 16);
        dispatch thunk of static FloatingPoint./ infix(_:_:)();
        v56 = v87;
        v87(v51, v45);
        v56(v52, v45);
        dispatch thunk of SIMDStorage.subscript.setter();
        v50 = v92;
        ++v54;
      }

      while (v85 != v54);
    }

    v57 = v83;
    (*(v83 + 8))(v89, v53);
    v58 = v69[0];
    (v69[0])(v74, v90, v53);
    v59 = v91;
    v80(v91, v76, v45);
    v60 = v73;
    (*(v57 + 16))(v73, v50, v53);
    v61 = v84;
    v62 = (*(v84 + 80) + 56) & ~*(v84 + 80);
    v63 = (v75 + *(v57 + 80) + v62) & ~*(v57 + 80);
    v64 = swift_allocObject();
    v65 = v77;
    v66 = v78;
    *(v64 + 2) = v53;
    *(v64 + 3) = v65;
    v67 = v88;
    *(v64 + 4) = v66;
    *(v64 + 5) = v67;
    *(v64 + 6) = v79;
    (*(v61 + 32))(&v64[v62], v59, v45);
    v58(&v64[v63], v60, v53);
    return partial apply for closure #1 in static SIMD<>._vjpDivide(lhs:rhs:);
  }

  return result;
}

uint64_t closure #1 in static SIMD<>._vjpDivide(lhs:rhs:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10)
{
  v165 = a5;
  v167 = a3;
  v148 = a2;
  v143 = a1;
  v175 = *(a9 + 16);
  v166 = *(*(v175 + 16) + 8);
  v12 = *(v166 + 16);
  v149 = a7;
  v13 = *(a7 + 48);
  swift_getAssociatedTypeWitness();
  v144 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v140[1] = v140 - v15;
  v16 = swift_checkMetadataState();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v152 = v140 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v155 = v140 - v21;
  v22 = MEMORY[0x2A1C7C4A8](v20);
  v159 = v140 - v23;
  v24 = MEMORY[0x2A1C7C4A8](v22);
  v158 = v140 - v25;
  v26 = MEMORY[0x2A1C7C4A8](v24);
  v28 = v140 - v27;
  v29 = MEMORY[0x2A1C7C4A8](v26);
  v141 = v140 - v30;
  v31 = MEMORY[0x2A1C7C4A8](v29);
  v151 = v140 - v32;
  MEMORY[0x2A1C7C4A8](v31);
  v163 = *(a6 - 8);
  v34 = v163[8];
  v35 = MEMORY[0x2A1C7C4A8](v140 - v33);
  v174 = v140 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x2A1C7C4A8](v35);
  v173 = v140 - v38;
  v39 = MEMORY[0x2A1C7C4A8](v37);
  v145 = v140 - v40;
  v41 = MEMORY[0x2A1C7C4A8](v39);
  v153 = v140 - v42;
  v43 = MEMORY[0x2A1C7C4A8](v41);
  v171 = v140 - v44;
  v45 = MEMORY[0x2A1C7C4A8](v43);
  v150 = v140 - v46;
  v47 = MEMORY[0x2A1C7C4A8](v45);
  v170 = v140 - v48;
  v49 = MEMORY[0x2A1C7C4A8](v47);
  v172 = v140 - v50;
  v51 = MEMORY[0x2A1C7C4A8](v49);
  v154 = v140 - v52;
  v53 = MEMORY[0x2A1C7C4A8](v51);
  v147 = v140 - v54;
  v55 = MEMORY[0x2A1C7C4A8](v53);
  v169 = v140 - v56;
  v57 = MEMORY[0x2A1C7C4A8](v55);
  v59 = v140 - v58;
  v60 = MEMORY[0x2A1C7C4A8](v57);
  v168 = v140 - v61;
  v180 = v62;
  v63 = *(v62 + 16);
  v64 = v60;
  v146 = a4;
  v181 = v65;
  v156 = v62 + 16;
  v157 = v63;
  (v63)(v60, a4);
  dispatch thunk of SIMDStorage.init()();
  v66 = v59;
  v160 = a6;
  v67 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v67 < 0)
  {
    goto LABEL_30;
  }

  v68 = v67;
  v69 = v160;
  v70 = v157;
  if (v67)
  {
    v71 = 0;
    do
    {
      v70(v28, v64, v181);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v71;
    }

    while (v68 != v71);
  }

  v177 = v28;
  v179 = *(v180 + 8);
  v180 += 8;
  v179(v64, v181);
  v161 = v163[4];
  v162 = v163 + 4;
  v161(v168, v66, v69);
  dispatch thunk of SIMDStorage.init()();
  v176 = v13;
  v72 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v72 < 0)
  {
    goto LABEL_30;
  }

  v73 = v179;
  v74 = v159;
  v75 = v158;
  v76 = v160;
  if (v72)
  {
    v77 = 0;
    v164 = v72;
    do
    {
      v178 = v77 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      v78 = v181;
      dispatch thunk of static FloatingPoint./ infix(_:_:)();
      v73(v74, v78);
      v73(v75, v78);
      dispatch thunk of SIMDStorage.subscript.setter();
      v77 = v178;
    }

    while (v164 != v178);
  }

  v79 = v163[1];
  v80 = v168;
  ++v163;
  v168 = v79;
  (v79)(v80, v76);
  v161(v143, v169, v76);
  v81 = v181;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v82 = v151;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v83 = v141;
  v84 = v157;
  v157(v141, v82, v81);
  dispatch thunk of SIMDStorage.init()();
  v85 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v85 < 0)
  {
    goto LABEL_30;
  }

  v86 = v85;
  v87 = v177;
  v88 = v150;
  if (v85)
  {
    v89 = 0;
    do
    {
      v84(v87, v83, v181);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v89;
    }

    while (v86 != v89);
  }

  v90 = v83;
  v91 = v179;
  v179(v90, v181);
  v161(v170, v88, v76);
  dispatch thunk of SIMDStorage.init()();
  v92 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v92 < 0)
  {
    goto LABEL_30;
  }

  v93 = v92;
  v91(v151, v181);
  v94 = v159;
  v95 = v158;
  v96 = v176;
  v97 = v160;
  v98 = v170;
  if (v93)
  {
    v99 = 0;
    v169 = a10;
    v178 = v93;
    v100 = v181;
    do
    {
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      swift_getAssociatedConformanceWitness();
      dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
      v101 = v97;
      v102 = v96;
      v103 = v179;
      v179(v94, v100);
      v103(v95, v100);
      v96 = v102;
      v97 = v101;
      dispatch thunk of SIMDStorage.subscript.setter();
      v98 = v170;
      ++v99;
    }

    while (v178 != v99);
  }

  (v168)(v98, v97);
  v161(v172, v171, v97);
  v104 = v155;
  v105 = v181;
  dispatch thunk of static Numeric.* infix(_:_:)();
  v157(v152, v104, v105);
  v106 = v145;
  dispatch thunk of SIMDStorage.init()();
  v107 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v107 < 0)
  {
    goto LABEL_30;
  }

  v108 = v107;
  v109 = v152;
  v110 = v177;
  v111 = v157;
  if (v107)
  {
    v112 = 0;
    do
    {
      v111(v110, v109, v181);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v112;
    }

    while (v108 != v112);
  }

  v179(v109, v181);
  v161(v153, v106, v97);
  dispatch thunk of SIMDStorage.init()();
  v113 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v113 < 0)
  {
    goto LABEL_30;
  }

  v115 = v175;
  v114 = v176;
  v116 = v153;
  v117 = v159;
  v118 = v158;
  v119 = v160;
  if (v113)
  {
    v120 = 0;
    v171 = v113;
    do
    {
      v178 = v120 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      v121 = v181;
      dispatch thunk of static FloatingPoint./ infix(_:_:)();
      v122 = v117;
      v123 = v117;
      v124 = v115;
      v125 = v114;
      v126 = v116;
      v127 = v179;
      v179(v122, v121);
      v127(v118, v121);
      v116 = v126;
      v114 = v125;
      v115 = v124;
      v117 = v123;
      dispatch thunk of SIMDStorage.subscript.setter();
      v120 = v178;
    }

    while (v171 != v178);
  }

  v128 = v168;
  (v168)(v116, v119);
  v179(v155, v181);
  v128(v172, v119);
  v161(v154, v173, v119);
  dispatch thunk of SIMDStorage.init()();
  v129 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v129 < 0)
  {
LABEL_30:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v130 = v154;
    v131 = v179;
    v132 = v159;
    v133 = v158;
    v134 = v160;
    if (v129)
    {
      v135 = 0;
      v173 = v129;
      do
      {
        v178 = v135 + 1;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v136 = v181;
        dispatch thunk of static Numeric.* infix(_:_:)();
        v131(v132, v136);
        v131(v133, v136);
        dispatch thunk of SIMDStorage.subscript.setter();
        v135 = v178;
      }

      while (v173 != v178);
    }

    v137 = v168;
    (v168)(v130, v134);
    v138 = v147;
    v161(v147, v174, v134);
    SIMD<>.sum()(v134, v149, v175, v148);
    return v137(v138, v134);
  }

  return result;
}

uint64_t (*static SIMD<>._jvpDivide(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(uint64_t a1, uint64_t a2)
{
  v77 = a5;
  v78 = a6;
  v92 = a2;
  v74 = a1;
  v12 = *(a5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  v15 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v71 = v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v70 = v69 - v18;
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v91 = v69 - v20;
  v75 = v21;
  MEMORY[0x2A1C7C4A8](v19);
  v83 = *(a4 - 8);
  v23 = *(v83 + 64);
  v24 = MEMORY[0x2A1C7C4A8](v69 - v22);
  v73 = v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x2A1C7C4A8](v24);
  v90 = v69 - v27;
  v28 = MEMORY[0x2A1C7C4A8](v26);
  v30 = (v69 - v29);
  v72 = v31;
  v32 = MEMORY[0x2A1C7C4A8](v28);
  v89 = v69 - v33;
  v84 = v34;
  v35 = *(v34 + 16);
  v36 = v32;
  v76 = a3;
  v38 = v37;
  v80 = v35;
  v81 = v34 + 16;
  (v35)(v32, a3);
  dispatch thunk of SIMDStorage.init()();
  v82 = a4;
  v39 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v39 < 0)
  {
    goto LABEL_10;
  }

  v40 = v39;
  v87 = v30;
  v88 = a7;
  v79 = a8;
  v41 = v82;
  v42 = v91;
  v43 = v80;
  if (v39)
  {
    v44 = 0;
    do
    {
      v43(v42, v36, v38);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v44;
    }

    while (v40 != v44);
  }

  v45 = v38;
  v46 = v38;
  v47 = *(v84 + 8);
  v86 = v84 + 8;
  v47(v36, v46);
  v48 = *(v83 + 32);
  v69[1] = v83 + 32;
  v69[0] = v48;
  v48(v89, v87, v41);
  dispatch thunk of SIMDStorage.init()();
  v49 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v49 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v50 = v92;
    v51 = v71;
    v52 = v70;
    v53 = v82;
    v87 = v47;
    if (v49)
    {
      v54 = 0;
      v85 = v49;
      do
      {
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v55 = *(v88 + 16);
        dispatch thunk of static FloatingPoint./ infix(_:_:)();
        v56 = v87;
        v87(v51, v45);
        v56(v52, v45);
        dispatch thunk of SIMDStorage.subscript.setter();
        v50 = v92;
        ++v54;
      }

      while (v85 != v54);
    }

    v57 = v83;
    (*(v83 + 8))(v89, v53);
    v58 = v69[0];
    (v69[0])(v74, v90, v53);
    v59 = v91;
    v80(v91, v76, v45);
    v60 = v73;
    (*(v57 + 16))(v73, v50, v53);
    v61 = v84;
    v62 = (*(v84 + 80) + 56) & ~*(v84 + 80);
    v63 = (v75 + *(v57 + 80) + v62) & ~*(v57 + 80);
    v64 = swift_allocObject();
    v65 = v77;
    v66 = v78;
    *(v64 + 2) = v53;
    *(v64 + 3) = v65;
    v67 = v88;
    *(v64 + 4) = v66;
    *(v64 + 5) = v67;
    *(v64 + 6) = v79;
    (*(v61 + 32))(&v64[v62], v59, v45);
    v58(&v64[v63], v60, v53);
    return partial apply for closure #1 in static SIMD<>._jvpDivide(lhs:rhs:);
  }

  return result;
}

uint64_t closure #1 in static SIMD<>._jvpDivide(lhs:rhs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v148 = a8;
  v122 = a7;
  v121 = a4;
  v119 = a2;
  v118 = a1;
  v140 = a9;
  v11 = *(a6 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  v14 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v128 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v130 = &v118 - v17;
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v146 = &v118 - v19;
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v132 = &v118 - v21;
  v22 = MEMORY[0x2A1C7C4A8](v20);
  v151 = &v118 - v23;
  v24 = MEMORY[0x2A1C7C4A8](v22);
  v125 = &v118 - v25;
  MEMORY[0x2A1C7C4A8](v24);
  v138 = *(a5 - 8);
  v27 = v138[8];
  v28 = MEMORY[0x2A1C7C4A8](&v118 - v26);
  v127 = &v118 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x2A1C7C4A8](v28);
  v129 = &v118 - v31;
  v32 = MEMORY[0x2A1C7C4A8](v30);
  v144 = &v118 - v33;
  v34 = MEMORY[0x2A1C7C4A8](v32);
  v124 = &v118 - v35;
  v36 = MEMORY[0x2A1C7C4A8](v34);
  v143 = &v118 - v37;
  v38 = MEMORY[0x2A1C7C4A8](v36);
  v120 = &v118 - v39;
  v40 = MEMORY[0x2A1C7C4A8](v38);
  v142 = &v118 - v41;
  v42 = MEMORY[0x2A1C7C4A8](v40);
  v44 = &v118 - v43;
  v45 = MEMORY[0x2A1C7C4A8](v42);
  v141 = &v118 - v46;
  v47 = MEMORY[0x2A1C7C4A8](v45);
  v126 = &v118 - v48;
  v49 = MEMORY[0x2A1C7C4A8](v47);
  v145 = &v118 - v50;
  v150 = v51;
  v52 = *(v51 + 16);
  v53 = v49;
  v123 = a3;
  v55 = v54;
  v131 = v51 + 16;
  v136 = v52;
  (v52)(v49, a3);
  dispatch thunk of SIMDStorage.init()();
  v56 = v44;
  v57 = a5;
  v152 = v11;
  v58 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v58 < 0)
  {
    goto LABEL_26;
  }

  v59 = v58;
  v60 = v151;
  v61 = v136;
  if (v58)
  {
    v62 = 0;
    do
    {
      v61(v60, v53, v55);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v62;
    }

    while (v59 != v62);
  }

  v63 = *(v150 + 8);
  v137 = v55;
  v149 = v63;
  v150 += 8;
  v63(v53, v55);
  v133 = v138[4];
  v134 = v138 + 4;
  v133(v141, v56, v57);
  dispatch thunk of SIMDStorage.init()();
  v135 = v57;
  v64 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v64 < 0)
  {
    goto LABEL_26;
  }

  v65 = v146;
  v66 = v132;
  v67 = v152;
  v68 = v135;
  v69 = v137;
  if (v64)
  {
    v70 = 0;
    v139 = v64;
    do
    {
      v147 = v70 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      v71 = *(*(*(v148 + 16) + 16) + 8);
      dispatch thunk of static Numeric.* infix(_:_:)();
      v72 = v68;
      v73 = v67;
      v74 = v149;
      v149(v65, v69);
      v74(v66, v69);
      v67 = v73;
      v68 = v72;
      dispatch thunk of SIMDStorage.subscript.setter();
      v70 = v147;
    }

    while (v139 != v147);
  }

  v75 = v138[1];
  v76 = v141;
  ++v138;
  v141 = v75;
  (v75)(v76, v68);
  v133(v126, v142, v68);
  v136(v125, v119, v69);
  dispatch thunk of SIMDStorage.init()();
  v77 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v77 < 0)
  {
    goto LABEL_26;
  }

  v78 = v77;
  v79 = v151;
  v80 = v135;
  v81 = v136;
  v82 = v137;
  v83 = v125;
  v84 = v124;
  if (v77)
  {
    v85 = 0;
    do
    {
      v81(v79, v83, v82);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v85;
    }

    while (v78 != v85);
  }

  v149(v83, v82);
  v133(v143, v84, v80);
  dispatch thunk of SIMDStorage.init()();
  v86 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v86 < 0)
  {
    goto LABEL_26;
  }

  v87 = v146;
  v88 = v132;
  v89 = v135;
  v90 = v137;
  if (v86)
  {
    v91 = 0;
    v142 = v86;
    do
    {
      v147 = v91 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      v92 = *(*(*(v148 + 16) + 16) + 8);
      dispatch thunk of static Numeric.* infix(_:_:)();
      v93 = v90;
      v94 = v90;
      v95 = v149;
      v149(v87, v93);
      v95(v88, v94);
      v90 = v94;
      dispatch thunk of SIMDStorage.subscript.setter();
      v91 = v147;
    }

    while (v142 != v147);
  }

  v96 = v141;
  (v141)(v143, v89);
  v97 = v120;
  v133(v120, v144, v89);
  swift_getAssociatedConformanceWitness();
  v98 = v126;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v96(v97, v89);
  v96(v98, v89);
  v147 = *(v148 + 16);
  v99 = *(*(v147 + 16) + 8);
  v100 = v130;
  dispatch thunk of static Numeric.* infix(_:_:)();
  v136(v128, v100, v90);
  dispatch thunk of SIMDStorage.init()();
  v101 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v101 < 0)
  {
    goto LABEL_26;
  }

  v102 = v101;
  v103 = v128;
  v104 = v127;
  v106 = v136;
  v105 = v137;
  if (v101)
  {
    v107 = 0;
    do
    {
      v106(v151, v103, v105);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v107;
    }

    while (v102 != v107);
  }

  v149(v103, v105);
  v133(v129, v104, v89);
  dispatch thunk of SIMDStorage.init()();
  v108 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v108 < 0)
  {
LABEL_26:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v109 = v129;
    v110 = v146;
    v111 = v135;
    v112 = v137;
    v113 = v132;
    if (v108)
    {
      v114 = 0;
      v144 = v108;
      do
      {
        v148 = v114 + 1;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of static FloatingPoint./ infix(_:_:)();
        v115 = v149;
        v149(v110, v112);
        v115(v113, v112);
        v110 = v146;
        dispatch thunk of SIMDStorage.subscript.setter();
        v114 = v148;
      }

      while (v144 != v148);
    }

    v116 = v141;
    (v141)(v109, v111);
    v149(v130, v112);
    return v116(v145, v111);
  }

  return result;
}

{
  v152 = a8;
  v125 = a7;
  v123 = a4;
  v140 = a2;
  v141 = a3;
  v142 = a9;
  v11 = *(a6 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  v14 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v136 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v135 = &v122 - v17;
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v149 = &v122 - v19;
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v128 = &v122 - v21;
  MEMORY[0x2A1C7C4A8](v20);
  v138 = *(a5 - 8);
  v23 = v138[8];
  v24 = MEMORY[0x2A1C7C4A8](&v122 - v22);
  v145 = &v122 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x2A1C7C4A8](v24);
  v147 = &v122 - v27;
  v28 = MEMORY[0x2A1C7C4A8](v26);
  v144 = &v122 - v29;
  v30 = MEMORY[0x2A1C7C4A8](v28);
  v127 = &v122 - v31;
  v32 = MEMORY[0x2A1C7C4A8](v30);
  v129 = &v122 - v33;
  v34 = MEMORY[0x2A1C7C4A8](v32);
  v124 = &v122 - v35;
  v36 = MEMORY[0x2A1C7C4A8](v34);
  v143 = &v122 - v37;
  v38 = MEMORY[0x2A1C7C4A8](v36);
  v40 = &v122 - v39;
  v41 = MEMORY[0x2A1C7C4A8](v38);
  v126 = &v122 - v42;
  v43 = MEMORY[0x2A1C7C4A8](v41);
  v130 = &v122 - v44;
  v45 = MEMORY[0x2A1C7C4A8](v43);
  v146 = &v122 - v46;
  v153 = v48;
  v154 = v47;
  v49 = *(v48 + 16);
  v50 = v45;
  v132 = v48 + 16;
  v131 = v49;
  (v49)(v45, a1);
  dispatch thunk of SIMDStorage.init()();
  v51 = a5;
  v52 = v11;
  v53 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v53 < 0)
  {
    goto LABEL_26;
  }

  v54 = v53;
  v55 = v131;
  v56 = v149;
  if (v53)
  {
    v57 = 0;
    do
    {
      v55(v56, v50, v154);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v57;
    }

    while (v54 != v57);
  }

  v58 = *(v153 + 8);
  v153 += 8;
  v151 = v58;
  v58(v50, v154);
  v59 = v138[4];
  v134 = v138 + 4;
  v133 = v59;
  v59(v126, v40, v51);
  dispatch thunk of SIMDStorage.init()();
  v137 = v51;
  v148 = v52;
  v60 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v60 < 0)
  {
    goto LABEL_26;
  }

  v61 = v135;
  v62 = v136;
  v63 = v148;
  v64 = v149;
  v65 = v137;
  v66 = v126;
  if (v60)
  {
    v67 = 0;
    v139 = v60;
    do
    {
      v150 = v67 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      v68 = *(*(*(v152 + 16) + 16) + 8);
      v69 = v154;
      dispatch thunk of static Numeric.* infix(_:_:)();
      v70 = v69;
      v71 = v64;
      v72 = v65;
      v73 = v63;
      v74 = v69;
      v75 = v151;
      v151(v62, v70);
      v75(v61, v74);
      v63 = v73;
      v65 = v72;
      v64 = v71;
      dispatch thunk of SIMDStorage.subscript.setter();
      v67 = v150;
    }

    while (v139 != v150);
  }

  v76 = v138[1];
  ++v138;
  v139 = v76;
  (v76)(v66, v65);
  v133(v130, v143, v65);
  v131(v128, v123, v154);
  dispatch thunk of SIMDStorage.init()();
  v77 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v77 < 0)
  {
    goto LABEL_26;
  }

  v78 = v77;
  v79 = v137;
  v80 = v149;
  v81 = v128;
  v82 = v127;
  v83 = v131;
  if (v77)
  {
    v84 = 0;
    do
    {
      v83(v80, v81, v154);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v84;
    }

    while (v78 != v84);
  }

  v151(v81, v154);
  v133(v129, v82, v79);
  dispatch thunk of SIMDStorage.init()();
  v85 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v85 < 0)
  {
    goto LABEL_26;
  }

  v86 = v135;
  v87 = v136;
  v88 = v137;
  v89 = v149;
  v90 = v129;
  if (v85)
  {
    v91 = 0;
    v143 = v85;
    do
    {
      v150 = v91 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      v92 = *(*(*(v152 + 16) + 16) + 8);
      v93 = v154;
      dispatch thunk of static Numeric.* infix(_:_:)();
      v94 = v89;
      v95 = v88;
      v96 = v151;
      v151(v87, v93);
      v96(v86, v93);
      v88 = v95;
      v89 = v94;
      dispatch thunk of SIMDStorage.subscript.setter();
      v91 = v150;
    }

    while (v143 != v150);
  }

  v97 = v139;
  (v139)(v90, v88);
  v98 = v124;
  v133(v124, v144, v88);
  swift_getAssociatedConformanceWitness();
  v99 = v130;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  (v97)(v98, v88);
  (v97)(v99, v88);
  dispatch thunk of SIMDStorage.init()();
  v100 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v100 < 0)
  {
    goto LABEL_26;
  }

  v101 = v135;
  v102 = v136;
  v103 = v148;
  v104 = v137;
  v105 = v151;
  if (v100)
  {
    v106 = 0;
    v144 = v100;
    do
    {
      v150 = v106 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      v107 = *(*(*(v152 + 16) + 16) + 8);
      v108 = v103;
      v109 = v105;
      v110 = v154;
      dispatch thunk of static Numeric.* infix(_:_:)();
      v109(v102, v110);
      v111 = v110;
      v105 = v109;
      v103 = v108;
      v105(v101, v111);
      dispatch thunk of SIMDStorage.subscript.setter();
      v106 = v150;
    }

    while (v144 != v150);
  }

  v133(v147, v145, v104);
  dispatch thunk of SIMDStorage.init()();
  v112 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v112 < 0)
  {
LABEL_26:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v114 = v135;
    v113 = v136;
    v115 = v137;
    v116 = v151;
    if (v112)
    {
      v117 = 0;
      v150 = v112;
      do
      {
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v118 = *(v152 + 16);
        v119 = v154;
        dispatch thunk of static FloatingPoint./ infix(_:_:)();
        v116(v113, v119);
        v116(v114, v119);
        dispatch thunk of SIMDStorage.subscript.setter();
        ++v117;
      }

      while (v150 != v117);
    }

    v120 = v139;
    (v139)(v147, v115);
    return (v120)(v146, v115);
  }

  return result;
}

uint64_t (*static SIMD<>._vjpMultiply(lhs:rhs:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a5;
  v82 = a6;
  v93 = a3;
  v78 = a1;
  v12 = *(a5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  v15 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v75 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v74 = &v71 - v18;
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v96 = &v71 - v20;
  v79 = v21;
  MEMORY[0x2A1C7C4A8](v19);
  v88 = *(a4 - 8);
  v23 = *(v88 + 64);
  v24 = MEMORY[0x2A1C7C4A8](&v71 - v22);
  v77 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x2A1C7C4A8](v24);
  v86 = &v71 - v27;
  v28 = MEMORY[0x2A1C7C4A8](v26);
  v30 = &v71 - v29;
  v76 = v31;
  v32 = MEMORY[0x2A1C7C4A8](v28);
  v95 = &v71 - v33;
  v89 = v34;
  v35 = *(v34 + 16);
  v36 = v32;
  v80 = a2;
  v38 = v37;
  v84 = v35;
  v85 = v34 + 16;
  (v35)(v32, a2);
  dispatch thunk of SIMDStorage.init()();
  v39 = v30;
  v87 = a4;
  v40 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v40 < 0)
  {
    goto LABEL_10;
  }

  v41 = v40;
  v94 = a7;
  v83 = a8;
  v42 = v96;
  v43 = v87;
  v44 = v84;
  v97 = v39;
  if (v40)
  {
    v45 = 0;
    do
    {
      v44(v42, v36, v38);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v45;
    }

    while (v41 != v45);
  }

  v46 = *(v89 + 8);
  v71 = v89 + 8;
  v46(v36, v38);
  v47 = *(v88 + 32);
  v73 = v88 + 32;
  v72 = v47;
  v47(v95, v97, v43);
  dispatch thunk of SIMDStorage.init()();
  v48 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v48 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v49 = v75;
    v50 = v74;
    v51 = v86;
    v52 = v95;
    v91 = v46;
    v92 = v38;
    v53 = v87;
    if (v48)
    {
      v54 = 0;
      v90 = v48;
      do
      {
        v97 = v54 + 1;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v55 = *(*(*(v94 + 16) + 16) + 8);
        v56 = v92;
        dispatch thunk of static Numeric.* infix(_:_:)();
        v57 = v91;
        v91(v49, v56);
        v57(v50, v56);
        dispatch thunk of SIMDStorage.subscript.setter();
        v52 = v95;
        v54 = v97;
      }

      while (v90 != v97);
    }

    v58 = v88;
    (*(v88 + 8))(v52, v53);
    v59 = v72;
    v72(v78, v51, v53);
    v60 = v77;
    (*(v58 + 16))(v77, v93, v53);
    v61 = v96;
    v62 = v92;
    v84(v96, v80, v92);
    v63 = (*(v58 + 80) + 56) & ~*(v58 + 80);
    v64 = v89;
    v65 = (v76 + *(v89 + 80) + v63) & ~*(v89 + 80);
    v66 = swift_allocObject();
    v67 = v81;
    v68 = v82;
    *(v66 + 2) = v53;
    *(v66 + 3) = v67;
    v69 = v94;
    *(v66 + 4) = v68;
    *(v66 + 5) = v69;
    *(v66 + 6) = v83;
    v59(&v66[v63], v60, v53);
    (*(v64 + 32))(&v66[v65], v61, v62);
    return partial apply for closure #1 in static SIMD<>._vjpMultiply(lhs:rhs:);
  }

  return result;
}

uint64_t closure #1 in static SIMD<>._vjpMultiply(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v70 = a7;
  v71 = a5;
  v79 = a4;
  v75 = a3;
  v84 = a2;
  v69 = a1;
  v10 = *(a7 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = *(AssociatedTypeWitness - 8);
  v12 = v87[8];
  v13 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v72 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v73 = &v67 - v16;
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v19 = &v67 - v18;
  v20 = MEMORY[0x2A1C7C4A8](v17);
  v22 = &v67 - v21;
  v76 = *(a6 - 8);
  v23 = *(v76 + 64);
  v24 = MEMORY[0x2A1C7C4A8](v20);
  v85 = (&v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = MEMORY[0x2A1C7C4A8](v24);
  v86 = &v67 - v27;
  v28 = MEMORY[0x2A1C7C4A8](v26);
  v30 = &v67 - v29;
  MEMORY[0x2A1C7C4A8](v28);
  v68 = &v67 - v31;
  dispatch thunk of SIMDStorage.init()();
  v32 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v32 < 0)
  {
    goto LABEL_14;
  }

  v74 = v22;
  v82 = v30;
  v83 = a9;
  v89 = v19;
  v34 = v72;
  v33 = v73;
  v80 = AssociatedTypeWitness;
  v81 = v10;
  v35 = a6;
  if (v32)
  {
    v36 = 0;
    v77 = (v87 + 1);
    v78 = v32;
    do
    {
      v88 = v36 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      v37 = *(*(*(v83 + 16) + 16) + 8);
      v38 = v80;
      dispatch thunk of static Numeric.* infix(_:_:)();
      v39 = *v77;
      (*v77)(v34, v38);
      v39(v33, v38);
      dispatch thunk of SIMDStorage.subscript.setter();
      v36 = v88;
    }

    while (v78 != v88);
  }

  v40 = v76;
  v41 = *(v76 + 32);
  v42 = v68;
  v43 = v82;
  v44 = v35;
  v88 = (v76 + 32);
  v82 = v41;
  (v41)(v68, v43, v35);
  v83 = *(v83 + 16);
  SIMD<>.sum()(v35, v70, v83, v69);
  v45 = *(v40 + 8);
  v76 = v40 + 8;
  v79 = v45;
  v45(v42, v35);
  v46 = v80;
  v47 = v87[2];
  v47(v74, v71, v80);
  dispatch thunk of SIMDStorage.init()();
  v48 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v48 < 0)
  {
    goto LABEL_14;
  }

  v49 = v48;
  v50 = v89;
  v51 = v74;
  if (v48)
  {
    v52 = 0;
    do
    {
      v47(v50, v51, v46);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v52;
    }

    while (v49 != v52);
  }

  v53 = v87 + 1;
  v54 = v87[1];
  v54(v51, v46);
  (v82)(v86, v85, v44);
  dispatch thunk of SIMDStorage.init()();
  v55 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v55 < 0)
  {
LABEL_14:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v56 = v75;
    v87 = v53;
    v58 = v72;
    v57 = v73;
    v85 = v54;
    v59 = v44;
    if (v55)
    {
      v60 = 0;
      v82 = v55;
      do
      {
        v88 = v60 + 1;
        v61 = v56;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v62 = *(*(v83 + 16) + 8);
        dispatch thunk of static Numeric.* infix(_:_:)();
        v63 = v46;
        v64 = v46;
        v65 = v85;
        v85(v58, v63);
        v65(v57, v64);
        v46 = v64;
        dispatch thunk of SIMDStorage.subscript.setter();
        v56 = v61;
        v60 = v88;
      }

      while (v82 != v88);
    }

    return v79(v86, v59);
  }

  return result;
}

uint64_t (*static SIMD<>._jvpMultiply(lhs:rhs:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(uint64_t a1, uint64_t a2)
{
  v85 = a5;
  v86 = a6;
  v96 = a3;
  v82 = a1;
  v12 = *(a5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  v15 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v79 = v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v78 = v75 - v18;
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v100 = v75 - v20;
  v83 = v21;
  MEMORY[0x2A1C7C4A8](v19);
  v91 = *(a4 - 8);
  v23 = *(v91 + 64);
  v24 = MEMORY[0x2A1C7C4A8](v75 - v22);
  v81 = v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x2A1C7C4A8](v24);
  v99 = v75 - v27;
  v28 = MEMORY[0x2A1C7C4A8](v26);
  v30 = v75 - v29;
  v80 = v31;
  v32 = MEMORY[0x2A1C7C4A8](v28);
  v98 = v75 - v33;
  v92 = v34;
  v35 = *(v34 + 16);
  v36 = v32;
  v84 = a2;
  v38 = v37;
  v88 = v35;
  v89 = v34 + 16;
  (v35)(v32, a2);
  dispatch thunk of SIMDStorage.init()();
  v39 = v30;
  v90 = a4;
  v40 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v40 < 0)
  {
    goto LABEL_10;
  }

  v41 = v40;
  v97 = a7;
  v87 = a8;
  v42 = v90;
  v43 = v100;
  v44 = v88;
  v95 = v39;
  if (v40)
  {
    v45 = 0;
    do
    {
      v44(v43, v36, v38);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v45;
    }

    while (v41 != v45);
  }

  v46 = v36;
  v47 = v38;
  v48 = v38;
  v49 = *(v92 + 8);
  v75[1] = v92 + 8;
  v49(v46, v48);
  v50 = *(v91 + 32);
  v77 = v91 + 32;
  v76 = v50;
  v50(v98, v95, v42);
  dispatch thunk of SIMDStorage.init()();
  v51 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v51 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v52 = v79;
    v53 = v78;
    v54 = v98;
    v94 = v49;
    v95 = v47;
    v55 = v90;
    if (v51)
    {
      v56 = 0;
      v93 = v51;
      v57 = v94;
      do
      {
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v58 = *(*(*(v97 + 16) + 16) + 8);
        v59 = v95;
        dispatch thunk of static Numeric.* infix(_:_:)();
        v57(v52, v59);
        v57(v53, v59);
        dispatch thunk of SIMDStorage.subscript.setter();
        v54 = v98;
        ++v56;
      }

      while (v93 != v56);
    }

    v60 = v91;
    (*(v91 + 8))(v54, v55);
    v61 = v55;
    v62 = v55;
    v63 = v76;
    v76(v82, v99, v61);
    v64 = v100;
    v65 = v95;
    v88(v100, v84, v95);
    v66 = v81;
    (*(v60 + 16))(v81, v96, v62);
    v67 = v92;
    v68 = (*(v92 + 80) + 56) & ~*(v92 + 80);
    v69 = (v83 + *(v60 + 80) + v68) & ~*(v60 + 80);
    v70 = swift_allocObject();
    v71 = v85;
    v72 = v86;
    *(v70 + 2) = v62;
    *(v70 + 3) = v71;
    v73 = v97;
    *(v70 + 4) = v72;
    *(v70 + 5) = v73;
    *(v70 + 6) = v87;
    (*(v67 + 32))(&v70[v68], v64, v65);
    v63(&v70[v69], v66, v62);
    return partial apply for closure #1 in static SIMD<>._jvpMultiply(lhs:rhs:);
  }

  return result;
}

uint64_t closure #1 in static SIMD<>._jvpMultiply(lhs:rhs:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v118 = a8;
  v95 = a7;
  v113 = a2;
  v114 = a4;
  v93 = a1;
  v96 = a9;
  v11 = *(a6 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  v14 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v104 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v103 = &v93 - v17;
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v110 = &v93 - v19;
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v100 = &v93 - v21;
  MEMORY[0x2A1C7C4A8](v20);
  v111 = *(a5 - 8);
  v23 = v111[8];
  v24 = MEMORY[0x2A1C7C4A8](&v93 - v22);
  v116 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x2A1C7C4A8](v24);
  v99 = &v93 - v27;
  v28 = MEMORY[0x2A1C7C4A8](v26);
  v101 = &v93 - v29;
  v30 = MEMORY[0x2A1C7C4A8](v28);
  v94 = &v93 - v31;
  v32 = MEMORY[0x2A1C7C4A8](v30);
  v115 = &v93 - v33;
  v34 = MEMORY[0x2A1C7C4A8](v32);
  v36 = &v93 - v35;
  v37 = MEMORY[0x2A1C7C4A8](v34);
  v97 = &v93 - v38;
  v39 = MEMORY[0x2A1C7C4A8](v37);
  v102 = &v93 - v40;
  v120 = v41;
  v42 = v39;
  v44 = v43;
  v105 = *(v41 + 16);
  v106 = v41 + 16;
  v105(v39, a3);
  dispatch thunk of SIMDStorage.init()();
  v45 = a5;
  v46 = v11;
  v47 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v47 < 0)
  {
    goto LABEL_18;
  }

  v48 = v47;
  v49 = v105;
  v121 = v46;
  v50 = v110;
  if (v47)
  {
    v51 = 0;
    do
    {
      v49(v50, v42, v44);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v51;
    }

    while (v48 != v51);
  }

  v52 = *(v120 + 8);
  v98 = v44;
  v119 = v52;
  v120 += 8;
  v52(v42, v44);
  v108 = v111[4];
  v109 = v111 + 4;
  v108(v97, v36, v45);
  dispatch thunk of SIMDStorage.init()();
  v107 = v45;
  v53 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v53 < 0)
  {
    goto LABEL_18;
  }

  v54 = v103;
  v55 = v104;
  v56 = v121;
  v57 = v107;
  v58 = v110;
  v59 = v98;
  v60 = v97;
  if (v53)
  {
    v61 = 0;
    v112 = v53;
    do
    {
      v117 = v61 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      v62 = *(*(*(v118 + 16) + 16) + 8);
      dispatch thunk of static Numeric.* infix(_:_:)();
      v63 = v58;
      v64 = v57;
      v65 = v56;
      v66 = v119;
      v119(v55, v59);
      v66(v54, v59);
      v56 = v65;
      v57 = v64;
      v58 = v63;
      dispatch thunk of SIMDStorage.subscript.setter();
      v61 = v117;
    }

    while (v112 != v117);
  }

  v113 = v111[1];
  ++v111;
  v113(v60, v57);
  v108(v102, v115, v57);
  (v105)(v100, v93, v59);
  dispatch thunk of SIMDStorage.init()();
  v67 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v67 < 0)
  {
    goto LABEL_18;
  }

  v68 = v67;
  v69 = v100;
  v70 = v99;
  v71 = v107;
  v72 = v110;
  v73 = v105;
  if (v67)
  {
    v74 = 0;
    do
    {
      v73(v72, v69, v59);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v74;
    }

    while (v68 != v74);
  }

  v119(v69, v59);
  v108(v101, v70, v71);
  dispatch thunk of SIMDStorage.init()();
  v75 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v75 < 0)
  {
LABEL_18:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v76 = v103;
    v77 = v104;
    v78 = v101;
    v79 = v107;
    v80 = v110;
    v81 = v98;
    if (v75)
    {
      v82 = 0;
      v115 = v75;
      do
      {
        v117 = v82 + 1;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v83 = *(*(*(v118 + 16) + 16) + 8);
        dispatch thunk of static Numeric.* infix(_:_:)();
        v84 = v77;
        v85 = v77;
        v86 = v80;
        v87 = v79;
        v88 = v119;
        v119(v84, v81);
        v88(v76, v81);
        v79 = v87;
        v80 = v86;
        v77 = v85;
        dispatch thunk of SIMDStorage.subscript.setter();
        v82 = v117;
      }

      while (v115 != v117);
    }

    v89 = v113;
    v113(v78, v79);
    v90 = v94;
    v108(v94, v116, v79);
    swift_getAssociatedConformanceWitness();
    v91 = v102;
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v89(v90, v79);
    return (v89)(v91, v79);
  }

  return result;
}

uint64_t (*static SIMD<>._vjpDivide(lhs:rhs:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a5;
  v82 = a6;
  v93 = a3;
  v78 = a1;
  v12 = *(a5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  v15 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v75 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v74 = &v71 - v18;
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v96 = &v71 - v20;
  v79 = v21;
  MEMORY[0x2A1C7C4A8](v19);
  v88 = *(a4 - 8);
  v23 = *(v88 + 64);
  v24 = MEMORY[0x2A1C7C4A8](&v71 - v22);
  v77 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x2A1C7C4A8](v24);
  v86 = &v71 - v27;
  v28 = MEMORY[0x2A1C7C4A8](v26);
  v30 = &v71 - v29;
  v76 = v31;
  v32 = MEMORY[0x2A1C7C4A8](v28);
  v95 = &v71 - v33;
  v89 = v34;
  v35 = *(v34 + 16);
  v36 = v32;
  v80 = a2;
  v38 = v37;
  v84 = v35;
  v85 = v34 + 16;
  (v35)(v32, a2);
  dispatch thunk of SIMDStorage.init()();
  v39 = v30;
  v87 = a4;
  v40 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v40 < 0)
  {
    goto LABEL_10;
  }

  v41 = v40;
  v94 = a7;
  v83 = a8;
  v42 = v96;
  v43 = v87;
  v44 = v84;
  v97 = v39;
  if (v40)
  {
    v45 = 0;
    do
    {
      v44(v42, v36, v38);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v45;
    }

    while (v41 != v45);
  }

  v46 = *(v89 + 8);
  v71 = v89 + 8;
  v46(v36, v38);
  v47 = *(v88 + 32);
  v73 = v88 + 32;
  v72 = v47;
  v47(v95, v97, v43);
  dispatch thunk of SIMDStorage.init()();
  v48 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v48 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v49 = v75;
    v50 = v74;
    v51 = v86;
    v52 = v95;
    v91 = v46;
    v92 = v38;
    v53 = v87;
    if (v48)
    {
      v54 = 0;
      v90 = v48;
      do
      {
        v97 = v54 + 1;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v55 = *(v94 + 16);
        v56 = v92;
        dispatch thunk of static FloatingPoint./ infix(_:_:)();
        v57 = v91;
        v91(v49, v56);
        v57(v50, v56);
        dispatch thunk of SIMDStorage.subscript.setter();
        v52 = v95;
        v54 = v97;
      }

      while (v90 != v97);
    }

    v58 = v88;
    (*(v88 + 8))(v52, v53);
    v59 = v72;
    v72(v78, v51, v53);
    v60 = v77;
    (*(v58 + 16))(v77, v93, v53);
    v61 = v96;
    v62 = v92;
    v84(v96, v80, v92);
    v63 = (*(v58 + 80) + 56) & ~*(v58 + 80);
    v64 = v89;
    v65 = (v76 + *(v89 + 80) + v63) & ~*(v89 + 80);
    v66 = swift_allocObject();
    v67 = v81;
    v68 = v82;
    *(v66 + 2) = v53;
    *(v66 + 3) = v67;
    v69 = v94;
    *(v66 + 4) = v68;
    *(v66 + 5) = v69;
    *(v66 + 6) = v83;
    v59(&v66[v63], v60, v53);
    (*(v64 + 32))(&v66[v65], v61, v62);
    return partial apply for closure #1 in static SIMD<>._vjpDivide(lhs:rhs:);
  }

  return result;
}

uint64_t closure #1 in static SIMD<>._vjpDivide(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void (*a7)(void, void), uint64_t a8, void *a9)
{
  v105 = a5;
  v120 = a4;
  v116 = a2;
  v117 = a3;
  v102 = a1;
  v106 = a7;
  v10 = *(a7 + 6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v124 = *(AssociatedTypeWitness - 8);
  v11 = v124[8];
  v12 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v107 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v16 = &v100 - v15;
  v17 = MEMORY[0x2A1C7C4A8](v14);
  v110 = &v100 - v18;
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v21 = &v100 - v20;
  v22 = MEMORY[0x2A1C7C4A8](v19);
  v111 = &v100 - v23;
  v112 = *(a6 - 8);
  v24 = *(v112 + 64);
  v25 = MEMORY[0x2A1C7C4A8](v22);
  v119 = &v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x2A1C7C4A8](v25);
  v103 = &v100 - v28;
  v29 = MEMORY[0x2A1C7C4A8](v27);
  v122 = &v100 - v30;
  v31 = MEMORY[0x2A1C7C4A8](v29);
  v33 = &v100 - v32;
  v34 = MEMORY[0x2A1C7C4A8](v31);
  v108 = &v100 - v35;
  v36 = MEMORY[0x2A1C7C4A8](v34);
  v123 = &v100 - v37;
  v38 = MEMORY[0x2A1C7C4A8](v36);
  v40 = &v100 - v39;
  MEMORY[0x2A1C7C4A8](v38);
  v101 = &v100 - v41;
  dispatch thunk of SIMDStorage.init()();
  v42 = v40;
  v43 = v10;
  v44 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v44 < 0)
  {
    goto LABEL_22;
  }

  v118 = v33;
  v121 = a9;
  v115 = v42;
  v127 = v21;
  v45 = v16;
  v46 = v110;
  if (v44)
  {
    v47 = 0;
    v113 = (v124 + 1);
    v114 = v44;
    do
    {
      v126 = v47 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      v48 = v121[2];
      v49 = AssociatedTypeWitness;
      dispatch thunk of static FloatingPoint./ infix(_:_:)();
      v50 = *v113;
      (*v113)(v45, v49);
      v50(v46, v49);
      dispatch thunk of SIMDStorage.subscript.setter();
      v47 = v126;
    }

    while (v114 != v126);
  }

  v104 = v45;
  v51 = v112;
  v52 = *(v112 + 32);
  v53 = v101;
  v113 = (v112 + 32);
  v109 = v52;
  v52(v101, v115, a6);
  v54 = v121[2];
  SIMD<>.sum()(a6, v106, v54, v102);
  v55 = *(v51 + 8);
  v112 = v51 + 8;
  v106 = v55;
  v55(v53, a6);
  v102 = v54;
  v105 = *(v54 + 16);
  dispatch thunk of static SignedNumeric.- prefix(_:)();
  dispatch thunk of SIMDStorage.init()();
  v126 = a6;
  v56 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v56 < 0)
  {
    goto LABEL_22;
  }

  v57 = v105;
  v58 = v120;
  v59 = v126;
  v60 = v104;
  v61 = v110;
  if (v56)
  {
    v62 = 0;
    v114 = (v124 + 1);
    v115 = v56;
    do
    {
      v121 = (v62 + 1);
      v63 = v61;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      v64 = *(v57 + 8);
      v65 = v58;
      v66 = v59;
      v67 = v43;
      v68 = v57;
      v69 = AssociatedTypeWitness;
      dispatch thunk of static Numeric.* infix(_:_:)();
      v70 = *v114;
      (*v114)(v60, v69);
      v71 = v69;
      v57 = v68;
      v43 = v67;
      v59 = v66;
      v58 = v65;
      v70(v63, v71);
      dispatch thunk of SIMDStorage.subscript.setter();
      v61 = v63;
      v62 = v121;
    }

    while (v115 != v121);
  }

  v125 = v43;
  v109(v108, v118, v59);
  v72 = v124[2];
  v72(v107, v111, AssociatedTypeWitness);
  dispatch thunk of SIMDStorage.init()();
  v73 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v73 < 0)
  {
    goto LABEL_22;
  }

  v74 = v73;
  v75 = v107;
  v76 = v127;
  v77 = v110;
  v78 = v103;
  if (v73)
  {
    v79 = 0;
    do
    {
      v72(v76, v75, AssociatedTypeWitness);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v79;
    }

    while (v74 != v79);
  }

  v80 = v124[1];
  ++v124;
  v121 = v80;
  (v80)(v75, AssociatedTypeWitness);
  v109(v122, v78, v126);
  dispatch thunk of SIMDStorage.init()();
  v81 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v81 < 0)
  {
    goto LABEL_22;
  }

  v82 = v122;
  v83 = v108;
  v84 = v104;
  v85 = v77;
  if (v81)
  {
    v86 = 0;
    v118 = v81;
    do
    {
      v120 = v86 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      v87 = AssociatedTypeWitness;
      dispatch thunk of static FloatingPoint./ infix(_:_:)();
      v88 = v83;
      v89 = v121;
      (v121)(v84, v87);
      v89(v77, v87);
      v83 = v88;
      dispatch thunk of SIMDStorage.subscript.setter();
      v82 = v122;
      v86 = v120;
    }

    while (v118 != v120);
  }

  v90 = v126;
  v91 = v106;
  v106(v82, v126);
  v91(v83, v90);
  (v121)(v111, AssociatedTypeWitness);
  v109(v123, v119, v90);
  dispatch thunk of SIMDStorage.init()();
  v92 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v92 < 0)
  {
LABEL_22:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v93 = v123;
    v94 = v105;
    if (v92)
    {
      v95 = 0;
      v120 = v92;
      do
      {
        v122 = v95 + 1;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v96 = *(v94 + 8);
        v97 = AssociatedTypeWitness;
        dispatch thunk of static Numeric.* infix(_:_:)();
        v98 = v121;
        (v121)(v84, v97);
        v98(v85, v97);
        dispatch thunk of SIMDStorage.subscript.setter();
        v93 = v123;
        v95 = v122;
      }

      while (v120 != v122);
    }

    return (v106)(v93, v126);
  }

  return result;
}

uint64_t (*static SIMD<>._jvpDivide(lhs:rhs:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(uint64_t a1, uint64_t a2)
{
  v81 = a5;
  v82 = a6;
  v93 = a3;
  v78 = a1;
  v12 = *(a5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  v15 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v75 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v74 = &v71 - v18;
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v96 = &v71 - v20;
  v79 = v21;
  MEMORY[0x2A1C7C4A8](v19);
  v88 = *(a4 - 8);
  v23 = *(v88 + 64);
  v24 = MEMORY[0x2A1C7C4A8](&v71 - v22);
  v77 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x2A1C7C4A8](v24);
  v86 = &v71 - v27;
  v28 = MEMORY[0x2A1C7C4A8](v26);
  v30 = &v71 - v29;
  v76 = v31;
  v32 = MEMORY[0x2A1C7C4A8](v28);
  v95 = &v71 - v33;
  v89 = v34;
  v35 = *(v34 + 16);
  v36 = v32;
  v80 = a2;
  v38 = v37;
  v84 = v35;
  v85 = v34 + 16;
  (v35)(v32, a2);
  dispatch thunk of SIMDStorage.init()();
  v39 = v30;
  v87 = a4;
  v40 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v40 < 0)
  {
    goto LABEL_10;
  }

  v41 = v40;
  v94 = a7;
  v83 = a8;
  v42 = v96;
  v43 = v87;
  v44 = v84;
  v97 = v39;
  if (v40)
  {
    v45 = 0;
    do
    {
      v44(v42, v36, v38);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v45;
    }

    while (v41 != v45);
  }

  v46 = *(v89 + 8);
  v71 = v89 + 8;
  v46(v36, v38);
  v47 = *(v88 + 32);
  v73 = v88 + 32;
  v72 = v47;
  v47(v95, v97, v43);
  dispatch thunk of SIMDStorage.init()();
  v48 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v48 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v49 = v75;
    v50 = v74;
    v51 = v86;
    v52 = v95;
    v91 = v46;
    v92 = v38;
    v53 = v87;
    if (v48)
    {
      v54 = 0;
      v90 = v48;
      do
      {
        v97 = v54 + 1;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v55 = *(v94 + 16);
        v56 = v92;
        dispatch thunk of static FloatingPoint./ infix(_:_:)();
        v57 = v91;
        v91(v49, v56);
        v57(v50, v56);
        dispatch thunk of SIMDStorage.subscript.setter();
        v52 = v95;
        v54 = v97;
      }

      while (v90 != v97);
    }

    v58 = v88;
    (*(v88 + 8))(v52, v53);
    v59 = v72;
    v72(v78, v51, v53);
    v60 = v77;
    (*(v58 + 16))(v77, v93, v53);
    v61 = v96;
    v62 = v92;
    v84(v96, v80, v92);
    v63 = (*(v58 + 80) + 56) & ~*(v58 + 80);
    v64 = v89;
    v65 = (v76 + *(v89 + 80) + v63) & ~*(v89 + 80);
    v66 = swift_allocObject();
    v67 = v81;
    v68 = v82;
    *(v66 + 2) = v53;
    *(v66 + 3) = v67;
    v69 = v94;
    *(v66 + 4) = v68;
    *(v66 + 5) = v69;
    *(v66 + 6) = v83;
    v59(&v66[v63], v60, v53);
    (*(v64 + 32))(&v66[v65], v61, v62);
    return partial apply for closure #1 in static SIMD<>._jvpDivide(lhs:rhs:);
  }

  return result;
}

uint64_t (*static SIMD<>._vjpInit(repeating:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))@<X0>(uint64_t a1@<X8>)
{
  v42 = a6;
  v43 = a7;
  v41 = a5;
  v38 = *(a3 - 8);
  v39 = a1;
  v8 = *(v38 + 64);
  MEMORY[0x2A1C7C4A8](a1);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v11;
  v12 = *(v11 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v36 = &v35 - v19;
  v37 = v14;
  v21 = v20;
  v22 = *(v14 + 16);
  v35 = v14 + 16;
  v22();
  dispatch thunk of SIMDStorage.init()();
  v23 = a3;
  v24 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v24 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v25 = v24;
    v44 = v23;
    v26 = v36;
    if (v24)
    {
      v27 = 0;
      do
      {
        (v22)(v18, v26, v21);
        dispatch thunk of SIMDStorage.subscript.setter();
        ++v27;
      }

      while (v25 != v27);
    }

    (*(v37 + 8))(v26, v21);
    v28 = v44;
    (*(v38 + 32))(v39, v10, v44);
    v29 = swift_allocObject();
    v30 = v40;
    v31 = v41;
    v29[2] = v28;
    v29[3] = v30;
    v33 = v42;
    v32 = v43;
    v29[4] = v31;
    v29[5] = v33;
    v29[6] = v32;
    return partial apply for closure #1 in static SIMD<>._vjpInit(repeating:);
  }

  return result;
}

uint64_t (*reverse-mode derivative of SIMD.init(repeating:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))@<X0>(uint64_t a1@<X8>)
{
  static SIMD<>._vjpInit(repeating:)(a1, a2, a3, a4, a5, a6, a7);
  v9 = *(a4 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  return partial apply for closure #1 in static SIMD<>._vjpInit(repeating:);
}

uint64_t (*static SIMD<>._jvpInit(repeating:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))@<X0>(uint64_t a1@<X8>)
{
  v42 = a6;
  v43 = a7;
  v41 = a5;
  v38 = *(a3 - 8);
  v39 = a1;
  v8 = *(v38 + 64);
  MEMORY[0x2A1C7C4A8](a1);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v11;
  v12 = *(v11 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v36 = &v35 - v19;
  v37 = v14;
  v21 = v20;
  v22 = *(v14 + 16);
  v35 = v14 + 16;
  v22();
  dispatch thunk of SIMDStorage.init()();
  v23 = a3;
  v24 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v24 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v25 = v24;
    v44 = v23;
    v26 = v36;
    if (v24)
    {
      v27 = 0;
      do
      {
        (v22)(v18, v26, v21);
        dispatch thunk of SIMDStorage.subscript.setter();
        ++v27;
      }

      while (v25 != v27);
    }

    (*(v37 + 8))(v26, v21);
    v28 = v44;
    (*(v38 + 32))(v39, v10, v44);
    v29 = swift_allocObject();
    v30 = v40;
    v31 = v41;
    v29[2] = v28;
    v29[3] = v30;
    v33 = v42;
    v32 = v43;
    v29[4] = v31;
    v29[5] = v33;
    v29[6] = v32;
    return partial apply for closure #1 in static SIMD<>._jvpInit(repeating:);
  }

  return result;
}

uint64_t closure #1 in static SIMD<>._jvpInit(repeating:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v24 = v7;
  v12 = *(v7 + 16);
  v14 = &v23 - v13;
  v16 = v15;
  v17 = v12;
  v12();
  dispatch thunk of SIMDStorage.init()();
  v25 = a1;
  v18 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v18 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v26 = a3;
    v19 = v16;
    if (v18)
    {
      v20 = 0;
      do
      {
        v21 = v18;
        (v17)(v11, v14, v19);
        dispatch thunk of SIMDStorage.subscript.setter();
        v18 = v21;
        ++v20;
      }

      while (v21 != v20);
    }

    return (*(v24 + 8))(v14, v19);
  }

  return result;
}

uint64_t (*forward-mode derivative of SIMD.init(repeating:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t a1)
{
  static SIMD<>._jvpInit(repeating:)(a1, a2, a3, a4, a5, a6, a7);
  v14 = v13;
  v15 = *(a4 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = a7;
  v17[7] = partial apply for closure #1 in static SIMD<>._jvpInit(repeating:);
  v17[8] = v14;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.SIMDStorage.Scalar) -> (@out A);
}

Swift::Void __swiftcall Array._checkSubscript_mutating(_:)(Swift::Int a1)
{
  v2 = v1;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  if (a1 < 0)
  {
    goto LABEL_5;
  }

  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v5 = v2;
  }

  if (*(v5 + 16) <= a1)
  {
LABEL_5:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void (*Array.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  v8 = *(a4 - 8);
  v9 = v8;
  a1[1] = a4;
  a1[2] = v8;
  v10 = *(v8 + 64);
  if (MEMORY[0x29EDCA1B0])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(v10);
  }

  v12 = v11;
  a1[3] = v11;
  IsNativeType = Array._hoistableIsNativeTypeChecked()();
  Array._checkSubscript(_:wasNativeTypeChecked:)();
  if (IsNativeType)
  {
    (*(v9 + 16))(v12, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a2, a4);
    return Array.subscript.read;
  }

  v15 = _ArrayBuffer._getElementSlowPath(_:)();
  if (v10 == 8)
  {
    *a1 = v15;
    (*(v9 + 16))(v12, a1, a4);
    swift_unknownObjectRelease();
    return Array.subscript.read;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void Array.subscript.read(void *a1)
{
  v1 = a1[3];
  (*(a1[2] + 8))(v1, a1[1]);

  free(v1);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed [A.Differentiable.TangentVector]<A>.DifferentiableView) -> (@owned [A.Differentiable.TangentVector]<A>.DifferentiableView)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = v1();

  return v3;
}

uint64_t partial apply for closure #1 in Array<A>.DifferentiableView._vjpBase()(uint64_t a1, void (*a2)(uint64_t, void, void))
{
  a2(a1, *(v2 + 16), *(v2 + 24));
}

uint64_t partial apply for implicit closure #3 in static Array<A>.DifferentiableView<>.+ infix(_:_:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  return dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed A) -> (@out A)(uint64_t a1)
{
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed A) -> (@out A)(a1);
}

{
  v3 = v1[2];
  v5 = v1[5];
  v4 = v1[6];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v5(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t partial apply for implicit closure #3 in static Array<A>.DifferentiableView<>.- infix(_:_:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  return dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
}

uint64_t sub_299C2018C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.Differentiable.TangentVector) -> (@owned [A.Differentiable.TangentVector]<A>.DifferentiableView)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t partial apply for differential #1 <A>(_:) in Array<A>._jvpSubscript(index:)(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return differential #1 <A>(_:) in Array<A>._jvpSubscript(index:)(a1, v1[4]);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed [A.Differentiable.TangentVector]<A>.DifferentiableView) -> (@out A.Differentiable.TangentVector)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed [A.Differentiable.TangentVector]<A>.DifferentiableView) -> (@owned [A.Differentiable.TangentVector]<A>.DifferentiableView, @owned [A.Differentiable.TangentVector]<A>.DifferentiableView)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t objectdestroy_81Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed [A.Differentiable.TangentVector]<A>.DifferentiableView, @guaranteed [A.Differentiable.TangentVector]<A>.DifferentiableView) -> (@owned [A.Differentiable.TangentVector]<A>.DifferentiableView)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t partial apply for closure #1 in Array<A>._vjpAppend(_:)(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return closure #1 in Array<A>._vjpAppend(_:)(a1);
}

uint64_t partial apply for autodiff self-reordering reabstraction thunk for @escaping @callee_guaranteed (@inout [A.Differentiable.TangentVector]<A>.DifferentiableView) -> (@out A.Differentiable.TangentVector)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t partial apply for closure #1 in Array<A>._jvpAppend(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return closure #1 in Array<A>._jvpAppend(_:)(a1, a2);
}

uint64_t sub_299C20314()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t partial apply for autodiff self-reordering reabstraction thunk for @escaping @callee_guaranteed (@in A.Differentiable.TangentVector, @inout [A.Differentiable.TangentVector]<A>.DifferentiableView) -> ()(uint64_t a1, uint64_t a2)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v6(a2, a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 8);

  return v9(a1, AssociatedTypeWitness);
}

uint64_t partial apply for closure #1 in static Array<A>._vjpAppend(_:_:)(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return closure #1 in static Array<A>._vjpAppend(_:_:)(a1);
}

uint64_t partial apply for closure #1 in static Array<A>._jvpAppend(_:_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #1 in static Array<A>._jvpAppend(_:_:)();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@inout [A.Differentiable.TangentVector]<A>.DifferentiableView, @guaranteed [A.Differentiable.TangentVector]<A>.DifferentiableView) -> ()()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t specialized Array.init(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = static Array._allocateUninitialized(_:)();
  if (a2 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v8 = v6;
    if (a2)
    {
      v9 = v7;
      v10 = *(a3 - 8);
      v11 = *(v10 + 16);
      v11(v7, a1, a3);
      v12 = a2 - 1;
      if (v12)
      {
        v13 = *(v10 + 72);
        v14 = v9 + v13;
        do
        {
          v11(v14, a1, a3);
          v14 += v13;
          --v12;
        }

        while (v12);
      }
    }

    type metadata accessor for Array();
    return v8;
  }

  return result;
}

uint64_t partial apply for closure #1 in static Array<A>._jvpInit(repeating:count:)(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return specialized Array.init(repeating:count:)(a1, v5, AssociatedTypeWitness);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.Differentiable.TangentVector) -> (@owned [A.Differentiable.TangentVector]<A>.DifferentiableView)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v5();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v7;
}

uint64_t partial apply for thunk for @callee_guaranteed (@in_guaranteed A) -> (@out A1)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

uint64_t sub_299C206A8()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed [A1.Differentiable.TangentVector]<A>.DifferentiableView) -> (@owned [A.Differentiable.TangentVector]<A>.DifferentiableView)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A1.Differentiable.TangentVector) -> (@out A1.Differentiable.TangentVector, @out A.Differentiable.TangentVector)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 56);
  return thunk for @escaping @callee_guaranteed (@in_guaranteed A1.Differentiable.TangentVector) -> (@out A1.Differentiable.TangentVector, @out A.Differentiable.TangentVector)(a1, *(v2 + 48), a2);
}

uint64_t sub_299C20760()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t partial apply for specialized closure #1 in Array<A>._vjpDifferentiableReduce<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  return specialized closure #1 in Array<A>._vjpDifferentiableReduce<A>(_:_:)(a1, a2, v2[6], v2[7]);
}

uint64_t partial apply for autodiff self-reordering reabstraction thunk for @escaping @callee_guaranteed (@in_guaranteed A1.Differentiable.TangentVector) -> (@out A1.Differentiable.TangentVector, @owned [A.Differentiable.TangentVector]<A>.DifferentiableView)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

uint64_t partial apply for specialized closure #1 in Array<A>._jvpDifferentiableReduce<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return specialized closure #1 in Array<A>._jvpDifferentiableReduce<A>(_:_:)(a1, a2, v3[6], a3);
}

uint64_t partial apply for autodiff self-reordering reabstraction thunk for @escaping @callee_guaranteed (@in_guaranteed A1.Differentiable.TangentVector, @guaranteed [A.Differentiable.TangentVector]<A>.DifferentiableView) -> (@out A1.Differentiable.TangentVector)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  return v3(a2, a1);
}

float partial apply for closure #1 in static Float16._vjpMultiply(lhs:rhs:)(__n128 a1, double a2, float a3)
{
  *&a3 = *(v3 + 16) * *a1.n128_u16;
  v4 = *(v3 + 18) * *a1.n128_u16;
  return a3;
}

__int16 partial apply for closure #1 in static Float16._vjpMultiplyAssign(_:_:)@<H0>(short float *a1@<X0>)
{
  *&result = *(v1 + 16) * *a1;
  *a1 = *(v1 + 18) * *a1;
  return result;
}

__int16 partial apply for closure #1 in static Float16._jvpMultiplyAssign(_:_:)@<H0>(short float *a1@<X0>, __n128 a2@<Q0>)
{
  *&result = (*(v2 + 18) * *a2.n128_u16) + (*(v2 + 16) * *a1);
  *a1 = *&result;
  return result;
}

float partial apply for closure #1 in static Float16._vjpDivide(lhs:rhs:)(__n128 a1, double a2, float a3)
{
  v4 = *(v3 + 16);
  *&a3 = *a1.n128_u16 / v4;
  v5 = (-*(v3 + 18) / (v4 * v4)) * *a1.n128_u16;
  return a3;
}

__int16 partial apply for closure #1 in static Float16._vjpDivideAssign(_:_:)@<H0>(short float *a1@<X0>)
{
  v2 = *(v1 + 18);
  *&result = *a1 * (-*(v1 + 16) / (v2 * v2));
  *a1 = *a1 / v2;
  return result;
}

__int16 partial apply for closure #1 in static Float16._jvpDivideAssign(_:_:)@<H0>(short float *a1@<X0>, __n128 a2@<Q0>)
{
  *&result = ((*(v2 + 16) * *a1) - (*(v2 + 18) * *a2.n128_u16)) / (*(v2 + 16) * *(v2 + 16));
  *a1 = *&result;
  return result;
}

float partial apply for closure #1 in static Float._vjpMultiplyAssign(_:_:)(float *a1)
{
  result = *(v1 + 16) * *a1;
  *a1 = *(v1 + 20) * *a1;
  return result;
}

float partial apply for closure #1 in static Float._jvpMultiplyAssign(_:_:)(float *a1, float a2)
{
  result = (*(v2 + 20) * a2) + (*(v2 + 16) * *a1);
  *a1 = result;
  return result;
}

float partial apply for closure #1 in static Float._vjpDivide(lhs:rhs:)(float a1)
{
  v2 = *(v1 + 16);
  v3 = a1 / v2;
  v4 = (-*(v1 + 20) / (v2 * v2)) * a1;
  return v3;
}

float partial apply for closure #1 in static Float._vjpDivideAssign(_:_:)(float *a1)
{
  v2 = *(v1 + 20);
  result = *a1 * (-*(v1 + 16) / (v2 * v2));
  *a1 = *a1 / v2;
  return result;
}

float partial apply for closure #1 in static Float._jvpDivideAssign(_:_:)(float *a1, float a2)
{
  result = ((*(v2 + 16) * *a1) - (*(v2 + 20) * a2)) / (*(v2 + 16) * *(v2 + 16));
  *a1 = result;
  return result;
}

double partial apply for closure #1 in static Double._vjpMultiplyAssign(_:_:)(double *a1)
{
  result = *(v1 + 16) * *a1;
  *a1 = *(v1 + 24) * *a1;
  return result;
}

double partial apply for closure #1 in static Double._jvpMultiplyAssign(_:_:)(double *a1, double a2)
{
  result = *(v2 + 24) * a2 + *(v2 + 16) * *a1;
  *a1 = result;
  return result;
}

double partial apply for closure #1 in static Double._vjpDivide(lhs:rhs:)(double a1)
{
  v2 = *(v1 + 16);
  v3 = a1 / v2;
  v4 = -*(v1 + 24) / (v2 * v2) * a1;
  return v3;
}

double partial apply for closure #1 in static Double._vjpDivideAssign(_:_:)(double *a1)
{
  v2 = *(v1 + 24);
  result = *a1 * (-*(v1 + 16) / (v2 * v2));
  *a1 = *a1 / v2;
  return result;
}

double partial apply for closure #1 in static Double._jvpDivideAssign(_:_:)(double *a1, double a2)
{
  result = (*(v2 + 16) * *a1 - *(v2 + 24) * a2) / (*(v2 + 16) * *(v2 + 16));
  *a1 = result;
  return result;
}

uint64_t sub_299C20B00()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t partial apply for autodiff self-reordering reabstraction thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out A, @out A, @out A)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  return v4(a3, a1, a2);
}

uint64_t partial apply for closure #2 in static FloatingPoint<>._vjpMaximum(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[3];
  v5 = v3[4];
  return closure #2 in static FloatingPoint<>._vjpMinimum(_:_:)(a1, a2, a3, v3[2]);
}

uint64_t partial apply for closure #1 in static FloatingPoint<>._vjpMaximum(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[3];
  v5 = v3[4];
  return closure #1 in static FloatingPoint<>._vjpMinimum(_:_:)(a1, a2, a3, v3[2]);
}

uint64_t partial apply for closure #1 in _jvpFma<A>(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[3];
  v5 = v3[4];
  v6 = *(*(v3[2] - 8) + 80);
  return closure #1 in _jvpFma<A>(_:_:_:)(a1, a2, a3, v3 + ((v6 + 40) & ~v6), v3 + ((*(*(v3[2] - 8) + 64) + v6 + ((v6 + 40) & ~v6)) & ~v6), v3[2]);
}

uint64_t partial apply for closure #1 in FloatingPoint<>._vjpAddingProduct(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, char *, char *))
{
  v6 = *(v5 + 3);
  v7 = *(*(*(v5 + 2) - 8) + 80);
  v9 = *(v5 + 4);
  return a5(a1, a2, a3, a4, &v5[(v7 + 40) & ~v7], &v5[(*(*(*(v5 + 2) - 8) + 64) + v7 + ((v7 + 40) & ~v7)) & ~v7]);
}

uint64_t objectdestroy_325Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return MEMORY[0x2A1C733A0](v0, v7 + v6, v4 | 7);
}

uint64_t objectdestroy_331Tm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

double partial apply for closure #1 in _vjpFma(_:_:_:)(double a1)
{
  result = *(v1 + 16) * a1;
  v4 = *(v1 + 24) * a1;
  return result;
}

float partial apply for closure #1 in _vjpPow(_:_:)(float a1)
{
  v3 = *(v1 + 20);
  v5 = *(v1 + 24);
  if (v3 > 0.0)
  {
    v6 = *(v1 + 20);
  }

  else
  {
    v6 = 1.0;
  }

  v4 = *(v1 + 16);
  v7 = (v4 * a1) * powf(v3, v4 + -1.0);
  logf(v6);
  return v7;
}

float partial apply for closure #1 in _jvpPow(_:_:)(float a1, float a2)
{
  v5 = v2[6];
  if (v2[5] > 0.0)
  {
    v6 = v2[5];
  }

  else
  {
    v6 = 1.0;
  }

  v4 = v2[4];
  v7 = (v4 * a1) * powf(v2[5], v4 + -1.0);
  return v7 + ((v5 * a2) * logf(v6));
}

long double partial apply for closure #1 in _vjpPow(_:_:)(double a1)
{
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  if (v3 > 0.0)
  {
    v6 = *(v1 + 24);
  }

  else
  {
    v6 = 1.0;
  }

  v4 = *(v1 + 16);
  v7 = v4 * a1 * pow(v3, v4 + -1.0);
  log(v6);
  return v7;
}

long double partial apply for closure #1 in _jvpPow(_:_:)(double a1, double a2)
{
  v5 = v2[4];
  if (v2[3] > 0.0)
  {
    v6 = v2[3];
  }

  else
  {
    v6 = 1.0;
  }

  v4 = v2[2];
  v7 = v4 * a1 * pow(v2[3], v4 + -1.0);
  return v7 + v5 * a2 * log(v6);
}

uint64_t sub_299C2170C()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed SIMD2<A>) -> (@out A)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

uint64_t partial apply for closure #1 in static SIMD<>._vjpAdd(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 16);
  (v11)((AssociatedTypeWitness - 8), a1, a3, AssociatedTypeWitness);

  return v11(a2, a3, AssociatedTypeWitness);
}

{
  return partial apply for closure #1 in static SIMD<>._vjpAdd(lhs:rhs:)(a1, a2, a3, closure #1 in static SIMD<>._vjpAdd(lhs:rhs:));
}

{
  return partial apply for closure #1 in static SIMD<>._vjpAdd(lhs:rhs:)(a1, a2, a3, closure #1 in static SIMD<>._vjpAdd(lhs:rhs:));
}

uint64_t partial apply for closure #1 in static SIMD<>._jvpAdd(lhs:rhs:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in static SIMD<>._jvpAdd(lhs:rhs:)(a1, a2, MEMORY[0x29EDC9E50]);
}

{
  return partial apply for closure #1 in static SIMD<>._jvpAdd(lhs:rhs:)(a1, a2, MEMORY[0x29EDC9E50], closure #1 in static SIMD<>._jvpAdd(lhs:rhs:));
}

{
  return partial apply for closure #1 in static SIMD<>._jvpAdd(lhs:rhs:)(a1, a2, MEMORY[0x29EDC9E50], closure #1 in static SIMD<>._jvpAdd(lhs:rhs:));
}

uint64_t partial apply for closure #1 in static SIMD<>._vjpSubtract(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return closure #1 in static SIMD<>._vjpSubtract(lhs:rhs:)(a1, a2, a3, v3[2], v3[3], v3[4], v3[5], v3[6], v3[7]);
}

{
  return partial apply for closure #1 in static SIMD<>._vjpAdd(lhs:rhs:)(a1, a2, a3, closure #1 in static SIMD<>._vjpSubtract(lhs:rhs:));
}

{
  return partial apply for closure #1 in static SIMD<>._vjpAdd(lhs:rhs:)(a1, a2, a3, closure #1 in static SIMD<>._vjpSubtract(lhs:rhs:));
}

uint64_t partial apply for closure #1 in static SIMD<>._jvpSubtract(lhs:rhs:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in static SIMD<>._jvpAdd(lhs:rhs:)(a1, a2, MEMORY[0x29EDC9E58]);
}

{
  return partial apply for closure #1 in static SIMD<>._jvpAdd(lhs:rhs:)(a1, a2, MEMORY[0x29EDC9E58], closure #1 in static SIMD<>._jvpAdd(lhs:rhs:));
}

{
  return partial apply for closure #1 in static SIMD<>._jvpAdd(lhs:rhs:)(a1, a2, MEMORY[0x29EDC9E58], closure #1 in static SIMD<>._jvpAdd(lhs:rhs:));
}

uint64_t partial apply for closure #1 in static SIMD<>._vjpNegate(rhs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  return closure #1 in static SIMD<>._vjpNegate(rhs:)(a1, v2[6], v2[7], a2);
}

uint64_t partial apply for closure #1 in static SIMD<>._vjpMultiply(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return partial apply for closure #1 in static SIMD<>._vjpMultiply(lhs:rhs:)(a1, a2, a3, closure #1 in static SIMD<>._vjpMultiply(lhs:rhs:));
}

{
  return partial apply for closure #1 in static SIMD<>._vjpMultiply(lhs:rhs:)(a1, a2, a3, closure #1 in static SIMD<>._vjpMultiply(lhs:rhs:));
}

{
  return partial apply for closure #1 in static SIMD<>._vjpMultiply(lhs:rhs:)(a1, a2, a3, closure #1 in static SIMD<>._vjpMultiply(lhs:rhs:));
}

uint64_t partial apply for closure #1 in static SIMD<>._jvpMultiply(lhs:rhs:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in static SIMD<>._jvpMultiply(lhs:rhs:)(a1, a2, closure #1 in static SIMD<>._jvpMultiply(lhs:rhs:));
}

{
  return partial apply for closure #1 in static SIMD<>._jvpMultiply(lhs:rhs:)(a1, a2, closure #1 in static SIMD<>._jvpMultiply(lhs:rhs:));
}

{
  return partial apply for closure #1 in static SIMD<>._jvpDivide(lhs:rhs:)(a1, a2, closure #1 in static SIMD<>._jvpMultiply(lhs:rhs:));
}

uint64_t partial apply for closure #1 in static SIMD<>._vjpDivide(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return partial apply for closure #1 in static SIMD<>._vjpMultiply(lhs:rhs:)(a1, a2, a3, closure #1 in static SIMD<>._vjpDivide(lhs:rhs:));
}

{
  return partial apply for closure #1 in static SIMD<>._vjpMultiply(lhs:rhs:)(a1, a2, a3, closure #1 in static SIMD<>._vjpDivide(lhs:rhs:));
}

{
  return partial apply for closure #1 in static SIMD<>._vjpMultiply(lhs:rhs:)(a1, a2, a3, closure #1 in static SIMD<>._vjpDivide(lhs:rhs:));
}

uint64_t partial apply for closure #1 in static SIMD<>._vjpMultiply(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, char *, char *))
{
  v5 = *(v4 + 3);
  v6 = *(v4 + 4);
  v7 = *(*(*(v4 + 2) - 8) + 80);
  v9 = *(v4 + 5);
  return a4(a1, a2, a3, &v4[(v7 + 48) & ~v7], &v4[(*(*(*(v4 + 2) - 8) + 64) + v7 + ((v7 + 48) & ~v7)) & ~v7]);
}

uint64_t objectdestroy_1190Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return MEMORY[0x2A1C733A0](v0, v7 + v6, v4 | 7);
}

uint64_t partial apply for closure #1 in static SIMD<>._jvpDivide(lhs:rhs:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in static SIMD<>._jvpMultiply(lhs:rhs:)(a1, a2, closure #1 in static SIMD<>._jvpDivide(lhs:rhs:));
}

{
  return partial apply for closure #1 in static SIMD<>._jvpDivide(lhs:rhs:)(a1, a2, closure #1 in static SIMD<>._jvpDivide(lhs:rhs:));
}

{
  return partial apply for closure #1 in static SIMD<>._jvpMultiply(lhs:rhs:)(a1, a2, closure #1 in static SIMD<>._jvpDivide(lhs:rhs:));
}

uint64_t partial apply for closure #1 in static SIMD<>._jvpMultiply(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, char *, char *))
{
  v4 = *(v3 + 3);
  v5 = *(v3 + 4);
  v6 = *(v3 + 5);
  v7 = *(*(v3 + 2) - 8);
  v8 = *(v7 + 80);
  return a3(a1, a2, &v3[(v8 + 48) & ~v8], &v3[(*(v7 + 64) + v8 + ((v8 + 48) & ~v8)) & ~v8]);
}

uint64_t partial apply for closure #1 in static SIMD<>._vjpMultiply(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, char *, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *(v4 + 2);
  v10 = *(v4 + 3);
  v11 = *(v4 + 4);
  v12 = *(v4 + 5);
  v13 = *(v4 + 6);
  v14 = *(v10 + 48);
  v15 = *(swift_getAssociatedTypeWitness() - 8);
  v16 = (*(v15 + 80) + 56) & ~*(v15 + 80);
  return a4(a1, a2, a3, &v4[v16], &v4[(v16 + *(v15 + 64) + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80)], v9, v10, v11, v12, v13);
}

{
  v7 = *(v4 + 2);
  v8 = *(v4 + 3);
  v9 = *(v4 + 4);
  v10 = *(v4 + 5);
  v11 = *(v4 + 6);
  v12 = (*(*(v7 - 8) + 80) + 56) & ~*(*(v7 - 8) + 80);
  v13 = v12 + *(*(v7 - 8) + 64);
  v14 = *(v8 + 48);
  v15 = *(swift_getAssociatedTypeWitness() - 8);
  return a4(a1, a2, a3, &v4[v12], &v4[(v13 + *(v15 + 80)) & ~*(v15 + 80)], v7, v8, v9, v10, v11);
}

uint64_t objectdestroy_1226Tm()
{
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 24) + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 56) & ~v5;
  v7 = *(v1 - 8);
  v8 = *(v7 + 80);
  v9 = (v6 + *(v4 + 64) + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v5 | v8;
  (*(v4 + 8))(v0 + v6, AssociatedTypeWitness);
  (*(v7 + 8))(v0 + v9, v1);

  return MEMORY[0x2A1C733A0](v0, v9 + v10, v11 | 7);
}

uint64_t partial apply for closure #1 in static SIMD<>._jvpDivide(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, char *, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(v3 + 2);
  v8 = *(v3 + 3);
  v9 = *(v3 + 4);
  v10 = *(v3 + 5);
  v11 = *(v3 + 6);
  v12 = *(v8 + 48);
  v13 = *(swift_getAssociatedTypeWitness() - 8);
  v14 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  return a3(a1, a2, &v3[v14], &v3[(v14 + *(v13 + 64) + *(*(v7 - 8) + 80)) & ~*(*(v7 - 8) + 80)], v7, v8, v9, v10, v11);
}

uint64_t objectdestroy_1229Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(*(v0 + 24) + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = (v5 + v9) & ~v9;
  v11 = *(v8 + 64);
  v12 = v3 | v9;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v8 + 8))(v0 + v10, AssociatedTypeWitness);

  return MEMORY[0x2A1C733A0](v0, v10 + v11, v12 | 7);
}

uint64_t partial apply for closure #1 in static SIMD<>._jvpMultiply(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, char *, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(v3 + 2);
  v6 = *(v3 + 3);
  v7 = *(v3 + 4);
  v8 = *(v3 + 5);
  v9 = *(v3 + 6);
  v10 = (*(*(v5 - 8) + 80) + 56) & ~*(*(v5 - 8) + 80);
  v11 = v10 + *(*(v5 - 8) + 64);
  v12 = *(v6 + 48);
  v13 = *(swift_getAssociatedTypeWitness() - 8);
  return a3(a1, a2, &v3[v10], &v3[(v11 + *(v13 + 80)) & ~*(v13 + 80)], v5, v6, v7, v8, v9);
}

uint64_t partial apply for closure #1 in static SIMD<>._jvpInit(repeating:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  return closure #1 in static SIMD<>._jvpInit(repeating:)(v1[2], v1[3], a1);
}

uint64_t sub_299C226F4()
{
  v1 = *(v0 + 64);

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.SIMDStorage.Scalar) -> (@out A)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[7];
  v6 = v1[8];
  v5();
  v7 = *(v4 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 8);

  return v9(a1, AssociatedTypeWitness);
}

unint64_t lazy protocol witness table accessor for type AnyDerivative and conformance AnyDerivative()
{
  result = lazy protocol witness table cache variable for type AnyDerivative and conformance AnyDerivative;
  if (!lazy protocol witness table cache variable for type AnyDerivative and conformance AnyDerivative)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyDerivative and conformance AnyDerivative);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyDerivative and conformance AnyDerivative;
  if (!lazy protocol witness table cache variable for type AnyDerivative and conformance AnyDerivative)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyDerivative and conformance AnyDerivative);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyDerivative and conformance AnyDerivative;
  if (!lazy protocol witness table cache variable for type AnyDerivative and conformance AnyDerivative)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyDerivative and conformance AnyDerivative);
  }

  return result;
}

uint64_t associated type witness table accessor for Differentiable.TangentVector : AdditiveArithmetic in [A]<A>.DifferentiableView(uint64_t a1, uint64_t a2)
{
  v5 = a2 + 16;
  v4 = *(a2 + 16);
  v3 = *(v5 + 8);
  v6 = *(a1 + 16);
  swift_getAssociatedConformanceWitness();
  return swift_getWitnessTable();
}

uint64_t associated type witness table accessor for Differentiable.TangentVector : AdditiveArithmetic in <A> [A](uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(a2 + 16);
  v6 = *(a1 + 16);
  swift_getAssociatedConformanceWitness();
  return swift_getWitnessTable();
}

uint64_t associated type witness table accessor for Differentiable.TangentVector : Differentiable in <> SIMD2<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return associated type witness table accessor for Differentiable.TangentVector : Differentiable in <> SIMD2<A>(a1, a2, a3);
}

{
  v4 = vextq_s8(*(a3 - 16), *(a3 - 16), 8uLL);
  v5 = *(a3 - 24);
  return swift_getWitnessTable();
}

__n128 sub_299C22EF8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AnyDerivative(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t initializeWithCopy for AnyDifferentiable(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  *(a1 + 24) = v3;
  (**(v3 - 8))();
  return a1;
}

uint64_t assignWithTake for AnyDerivative(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for AnyDifferentiable(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AnyDifferentiable(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t type metadata completion function for Optional<A>.TangentVector(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  result = type metadata accessor for Optional();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for Optional<A>.TangentVector(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  if (*(v9 + 84))
  {
    v10 = *(v9 + 64);
  }

  else
  {
    v10 = *(v9 + 64) + 1;
  }

  v11 = *(v9 + 80);
  if (v11 > 7 || (*(v9 + 80) & 0x100000) != 0 || v10 > 0x18)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + ((v11 + 16) & ~v11));

    return a1;
  }

  v15 = AssociatedTypeWitness;
  if (!(*(v9 + 48))(a2, 1, AssociatedTypeWitness))
  {
    (*(v9 + 16))(a1, a2, v15);
    (*(v9 + 56))(a1, 0, 1, v15);
    return a1;
  }

  return memcpy(a1, a2, v10);
}

uint64_t destroy for Optional<A>.TangentVector(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  result = (*(v8 + 48))(a1, 1, AssociatedTypeWitness);
  if (!result)
  {
    v7 = *(v8 + 8);

    return v7(a1, AssociatedTypeWitness);
  }

  return result;
}

void *initializeWithCopy for Optional<A>.TangentVector(void *a1, const void *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(a2, 1, AssociatedTypeWitness))
  {
    if (*(v9 + 84))
    {
      v10 = *(v9 + 64);
    }

    else
    {
      v10 = *(v9 + 64) + 1;
    }

    return memcpy(a1, a2, v10);
  }

  else
  {
    (*(v9 + 16))(a1, a2, AssociatedTypeWitness);
    (*(v9 + 56))(a1, 0, 1, AssociatedTypeWitness);
    return a1;
  }
}

void *assignWithCopy for Optional<A>.TangentVector(void *a1, void *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1, 1, AssociatedTypeWitness);
  v12 = v10(a2, 1, AssociatedTypeWitness);
  if (!v11)
  {
    if (v12)
    {
      v16 = *(v9 + 8);
      v15 = v9 + 8;
      v16(a1, AssociatedTypeWitness);
      v13 = *(v15 + 76);
      v14 = *(v15 + 56);
      goto LABEL_6;
    }

    (*(v9 + 24))(a1, a2, AssociatedTypeWitness);
    return a1;
  }

  if (!v12)
  {
    (*(v9 + 16))(a1, a2, AssociatedTypeWitness);
    (*(v9 + 56))(a1, 0, 1, AssociatedTypeWitness);
    return a1;
  }

  v13 = *(v9 + 84);
  v14 = *(v9 + 64);
LABEL_6:
  if (v13)
  {
    v17 = v14;
  }

  else
  {
    v17 = v14 + 1;
  }

  return memcpy(a1, a2, v17);
}

void *initializeWithTake for Optional<A>.TangentVector(void *a1, const void *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(a2, 1, AssociatedTypeWitness))
  {
    if (*(v9 + 84))
    {
      v10 = *(v9 + 64);
    }

    else
    {
      v10 = *(v9 + 64) + 1;
    }

    return memcpy(a1, a2, v10);
  }

  else
  {
    (*(v9 + 32))(a1, a2, AssociatedTypeWitness);
    (*(v9 + 56))(a1, 0, 1, AssociatedTypeWitness);
    return a1;
  }
}

void *assignWithTake for Optional<A>.TangentVector(void *a1, void *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1, 1, AssociatedTypeWitness);
  v12 = v10(a2, 1, AssociatedTypeWitness);
  if (!v11)
  {
    if (v12)
    {
      v16 = *(v9 + 8);
      v15 = v9 + 8;
      v16(a1, AssociatedTypeWitness);
      v13 = *(v15 + 76);
      v14 = *(v15 + 56);
      goto LABEL_6;
    }

    (*(v9 + 40))(a1, a2, AssociatedTypeWitness);
    return a1;
  }

  if (!v12)
  {
    (*(v9 + 32))(a1, a2, AssociatedTypeWitness);
    (*(v9 + 56))(a1, 0, 1, AssociatedTypeWitness);
    return a1;
  }

  v13 = *(v9 + 84);
  v14 = *(v9 + 64);
LABEL_6:
  if (v13)
  {
    v17 = v14;
  }

  else
  {
    v17 = v14 + 1;
  }

  return memcpy(a1, a2, v17);
}

uint64_t getEnumTagSinglePayload for Optional<A>.TangentVector(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v10)
  {
    ++v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v11)
  {
    v13 = 8 * v12;
    if (v12 > 3)
    {
      goto LABEL_8;
    }

    v15 = ((a2 - v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v15))
    {
      v14 = *(a1 + v12);
      if (v14)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v15 <= 0xFF)
      {
        if (v15 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v14 = *(a1 + v12);
        if (!*(a1 + v12))
        {
          goto LABEL_26;
        }

LABEL_15:
        v16 = (v14 - 1) << v13;
        if (v12 > 3)
        {
          v16 = 0;
        }

        if (v12)
        {
          if (v12 > 3)
          {
            LODWORD(v12) = 4;
          }

          if (v12 > 2)
          {
            if (v12 == 3)
            {
              LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v12) = *a1;
            }
          }

          else if (v12 == 1)
          {
            LODWORD(v12) = *a1;
          }

          else
          {
            LODWORD(v12) = *a1;
          }
        }

        return v11 + (v12 | v16) + 1;
      }

      v14 = *(a1 + v12);
      if (*(a1 + v12))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v10 < 2)
  {
    return 0;
  }

  v18 = (*(v9 + 48))(a1);
  if (v18 >= 2)
  {
    return v18 - 1;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for Optional<A>.TangentVector(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = 0;
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  if (v11)
  {
    v13 = *(v10 + 64);
  }

  else
  {
    v12 = 0;
    v13 = *(v10 + 64) + 1;
  }

  if (a3 <= v12)
  {
    goto LABEL_15;
  }

  if (v13 <= 3)
  {
    v14 = ((a3 - v12 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
    if (HIWORD(v14))
    {
      v9 = 4;
      if (v12 >= a2)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v14 >= 2)
    {
      v9 = v15;
    }

    else
    {
      v9 = 0;
    }

LABEL_15:
    if (v12 >= a2)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  v9 = 1;
  if (v12 >= a2)
  {
LABEL_25:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      *&a1[v13] = 0;
    }

    else if (v9)
    {
      a1[v13] = 0;
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
    if (v11 >= 2)
    {
      v19 = *(v10 + 56);

      v19(a1, a2 + 1);
    }

    return;
  }

LABEL_16:
  v16 = ~v12 + a2;
  if (v13 >= 4)
  {
    bzero(a1, v13);
    *a1 = v16;
    v17 = 1;
    if (v9 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v17 = (v16 >> (8 * v13)) + 1;
  if (!v13)
  {
LABEL_39:
    if (v9 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v18 = v16 & ~(-1 << (8 * v13));
  bzero(a1, v13);
  if (v13 == 3)
  {
    *a1 = v18;
    a1[2] = BYTE2(v18);
    goto LABEL_39;
  }

  if (v13 == 2)
  {
    *a1 = v18;
    if (v9 > 1)
    {
LABEL_43:
      if (v9 == 2)
      {
        *&a1[v13] = v17;
      }

      else
      {
        *&a1[v13] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v9 > 1)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v9)
  {
    a1[v13] = v17;
  }
}

uint64_t type metadata completion function for _ConcreteDerivativeBox(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _ConcreteDerivativeBox(uint64_t *a1, uint64_t *a2, uint64_t a3)
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

uint64_t getEnumTagSinglePayload for _ConcreteDerivativeBox(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *storeEnumTagSinglePayload for _ConcreteDerivativeBox(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
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
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t partial apply for implicit closure #1 in closure #1 in static Array<A>._vjpInit(repeating:count:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return implicit closure #1 in closure #1 in static Array<A>._vjpInit(repeating:count:)();
}

unint64_t lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>()
{
  result = lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>;
  if (!lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>)
  {
    swift_getCanonicalSpecializedMetadata();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>);
  }

  return result;
}

uint64_t outlined init with copy of AnyDerivative(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t Array.subscript.getter()
{
  return MEMORY[0x2A1C726F8]();
}

{
  return MEMORY[0x2A1C72700]();
}

uint64_t _assertionFailure(_:_:file:line:flags:)()
{
  return MEMORY[0x2A1C72E20]();
}

{
  return MEMORY[0x2A1C72E28]();
}
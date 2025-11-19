unint64_t lazy protocol witness table accessor for type Fraction and conformance Fraction()
{
  result = lazy protocol witness table cache variable for type Fraction and conformance Fraction;
  if (!lazy protocol witness table cache variable for type Fraction and conformance Fraction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Fraction and conformance Fraction);
  }

  return result;
}

uint64_t static FiniteFieldProtocol.addMod(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v49 = a4;
  v50 = a1;
  swift_getAssociatedTypeWitness();
  v6 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v45 = v6[3];
  v7 = *(v45 + 2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v10);
  v11 = swift_checkMetadataState();
  v48 = *(v11 - 8);
  v12 = *(v48 + 64);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v44 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v46 = &v42 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v42 - v20;
  v22 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v47 = a2;
  if (v22)
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
    {
      v51 = 0;
      lazy protocol witness table accessor for type Int and conformance Int();
      v27 = v21;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v31 = *(v6[2] + 8);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      v30 = v48;
      (*(v48 + 8))(v21, v11);
      if ((v32 & 1) == 0)
      {
        goto LABEL_14;
      }

      return (*(v30 + 16))(v49, v50, v11);
    }

    v23 = dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_13:
    v30 = v48;
    v27 = v21;
    if (v23)
    {
      goto LABEL_14;
    }

    return (*(v30 + 16))(v49, v50, v11);
  }

  v24 = a3;
  v25 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v26 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v25)
  {
    if (v26 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v27 = v21;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v28 = *(v6[4] + 8);
      v29 = dispatch thunk of static Comparable.>= infix(_:_:)();
      v30 = v48;
      (*(v48 + 8))(v21, v11);
      a3 = v24;
      if ((v29 & 1) == 0 || dispatch thunk of BinaryInteger._lowWord.getter())
      {
        goto LABEL_14;
      }

      return (*(v30 + 16))(v49, v50, v11);
    }
  }

  else if (v26 < 64)
  {
    v23 = dispatch thunk of BinaryInteger._lowWord.getter();
    a3 = v24;
    goto LABEL_13;
  }

  v51 = 0;
  lazy protocol witness table accessor for type Int and conformance Int();
  v27 = v21;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v40 = *(v6[2] + 8);
  v41 = dispatch thunk of static Equatable.== infix(_:_:)();
  v30 = v48;
  (*(v48 + 8))(v21, v11);
  a3 = v24;
  if (v41)
  {
    return (*(v30 + 16))(v49, v50, v11);
  }

LABEL_14:
  v33 = v47;
  v43 = *(a3 + 24);
  v43(v47, a3);
  v34 = v46;
  v48 = *(v45 + 1);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v35 = *(v30 + 8);
  v35(v27, v11);
  v36 = *(v6[4] + 8);
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    v45 = v35;
    v37 = v44;
    v43(v33, a3);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v38 = v45;
    v45(v37, v11);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v38(v27, v11);
    return (v38)(v34, v11);
  }

  else
  {
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    return (v35)(v34, v11);
  }
}

uint64_t static FiniteFieldProtocol.subMod(_:_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v21[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness, v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v21 - v13;
  v15 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v16 = *(*(v15 + 32) + 8);
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    (*(a2 + 24))(a1, a2);
    v17 = *(*(v15 + 24) + 8);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v18 = *(v6 + 8);
    v18(v11, AssociatedTypeWitness);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    return (v18)(v14, AssociatedTypeWitness);
  }

  else
  {
    v20 = *(*(v15 + 24) + 8);
    return dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  }
}

uint64_t static FiniteFieldProtocol.inv(_:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v90 = a4;
  swift_getAssociatedTypeWitness();
  v7 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v8 = v7[3];
  v105 = *(v8 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v10);
  v103 = &v88 - v11;
  v12 = swift_checkMetadataState();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v99 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v106 = &v88 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v97 = &v88 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v101 = &v88 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = &v88 - v29;
  v32 = MEMORY[0x28223BE20](v28, v31);
  v88 = &v88 - v33;
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v88 - v35;
  v37 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v100 = a2;
  if (v37)
  {
    v38 = dispatch thunk of BinaryInteger.bitWidth.getter();
    goto LABEL_7;
  }

  LODWORD(AssociatedConformanceWitness) = dispatch thunk of static BinaryInteger.isSigned.getter();
  v38 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if ((AssociatedConformanceWitness & 1) == 0)
  {
LABEL_7:
    if (v38 >= 64)
    {
      goto LABEL_10;
    }

LABEL_8:
    if (!dispatch thunk of BinaryInteger._lowWord.getter())
    {
      do
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_10:
        *&v107 = 0;
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v41 = *(v7[2] + 8);
        v42 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v13 + 8))(v36, v12);
      }

      while ((v42 & 1) != 0);
    }

    goto LABEL_11;
  }

  if (v38 > 64)
  {
    goto LABEL_10;
  }

  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = v30;
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v30 = AssociatedConformanceWitness;
  a2 = v100;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v39 = *(v7[4] + 8);
  v40 = dispatch thunk of static Comparable.>= infix(_:_:)();
  (*(v13 + 8))(v36, v12);
  if (v40)
  {
    goto LABEL_8;
  }

LABEL_11:
  v98 = a1;
  (*(a3 + 24))(a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v43 = *(v8 + 8);
  v44 = v88;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v45 = v13 + 8;
  v46 = *(v13 + 8);
  v46(v30, v12);
  v46(v36, v12);
  v47 = *(v13 + 16);
  v47(v101, v98, v12);
  v48 = v97;
  v98 = v47;
  v47(v97, v44, v12);
  *&v107 = 1;
  v94 = lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  (*(a3 + 64))(v36);
  v46(v36, v12);
  v95 = v13 + 16;
  v96 = a3;
  v92 = v7;
  v93 = a3 + 56;
  v91 = (v13 + 32);
  v49 = v48;
  v89 = v36;
  while (1)
  {
    v57 = v106;
    v58 = v49;
    v98(v106);
    v59 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v60 = v99;
    if (v59)
    {
      break;
    }

    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 128)
    {
      v69 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      static FixedWidthInteger._truncatingInit<A>(_:)(v57, &type metadata for _UInt128, v12, v69, v7, &v107);
      v46(v57, v12);
      v70 = *(&v107 + 1) | v107;
      v63 = v58;
      goto LABEL_25;
    }

    lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
    v107 = 0uLL;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v73 = *(v7[2] + 8);
    v74 = dispatch thunk of static Equatable.== infix(_:_:)();
    v46(v36, v12);
    v46(v57, v12);
    v63 = v58;
    v67 = v101;
    if (v74)
    {
      goto LABEL_44;
    }

LABEL_32:
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    dispatch thunk of static BinaryInteger.& infix(_:_:)();
    v46(v36, v12);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 128)
      {
        goto LABEL_39;
      }

LABEL_42:
      lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      v107 = 0uLL;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v84 = *(v7[2] + 8);
      v85 = v60;
      v86 = dispatch thunk of static Equatable.== infix(_:_:)();
      v46(v36, v12);
      v46(v85, v12);
      v50 = v96;
      v51 = v100;
      v52 = v45;
      v53 = v91;
      if ((v86 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    v78 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v79 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v78 & 1) == 0)
    {
      if (v79 < 128)
      {
LABEL_39:
        v83 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
        static FixedWidthInteger._truncatingInit<A>(_:)(v60, &type metadata for _UInt128, v12, v83, v7, &v107);
        v46(v60, v12);
        v50 = v96;
        v51 = v100;
        v52 = v45;
        v53 = v91;
        if (v107 != 0)
        {
          goto LABEL_13;
        }

        goto LABEL_14;
      }

      goto LABEL_42;
    }

    if (v79 > 128)
    {
      goto LABEL_42;
    }

    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v80 = *(v7[4] + 8);
    v81 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v46(v36, v12);
    if ((v81 & 1) == 0)
    {
      v46(v60, v12);
      v50 = v96;
      v51 = v100;
      v52 = v45;
      v53 = v91;
      v36 = v89;
LABEL_13:
      v54 = v90;
      (*(v50 + 56))(v90, v67, v51, v50);
      v46(v54, v12);
      (*v53)(v54, v36, v12);
      goto LABEL_14;
    }

    v82 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
    static FixedWidthInteger._truncatingInit<A>(_:)(v60, &type metadata for _UInt128, v12, v82, v7, &v107);
    v46(v60, v12);
    v50 = v96;
    v51 = v100;
    v52 = v45;
    v53 = v91;
    v36 = v89;
    if (v107 != 0)
    {
      goto LABEL_13;
    }

LABEL_14:
    (*(v50 + 56))(v67, v67, v51, v50);
    v46(v67, v12);
    v55 = *v53;
    (*v53)(v67, v36, v12);
    *&v107 = 1;
    v56 = v97;
    v7 = v92;
    dispatch thunk of static BinaryInteger.>> infix<A>(_:_:)();
    v46(v56, v12);
    v55(v56, v36, v12);
    v49 = v56;
    v45 = v52;
  }

  v61 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v62 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v63 = v58;
  if (v61)
  {
    if (v62 > 128)
    {
      goto LABEL_29;
    }

    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v64 = *(v7[4] + 8);
    v65 = v106;
    v66 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v46(v36, v12);
    v67 = v101;
    if (v66)
    {
      v68 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      static FixedWidthInteger._truncatingInit<A>(_:)(v65, &type metadata for _UInt128, v12, v68, v7, &v107);
      v46(v65, v12);
      if (v107 == 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v46(v65, v12);
    }

    goto LABEL_32;
  }

  if (v62 < 128)
  {
    v71 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
    v72 = v106;
    static FixedWidthInteger._truncatingInit<A>(_:)(v106, &type metadata for _UInt128, v12, v71, v7, &v107);
    v46(v72, v12);
    v70 = *(&v107 + 1) | v107;
LABEL_25:
    v67 = v101;
    if (!v70)
    {
      goto LABEL_44;
    }

    goto LABEL_32;
  }

LABEL_29:
  lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
  v107 = 0uLL;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v75 = *(v7[2] + 8);
  v76 = v106;
  v77 = dispatch thunk of static Equatable.== infix(_:_:)();
  v46(v36, v12);
  v46(v76, v12);
  v67 = v101;
  if ((v77 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_44:
  v46(v63, v12);
  v46(v67, v12);
  return (v46)(v88, v12);
}

uint64_t static FiniteFieldProtocol.pow(of:raiseTo:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v82 = a2;
  v76 = a1;
  v67 = a5;
  swift_getAssociatedTypeWitness();
  v7 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v81 = *(v7[3] + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v9);
  v79 = &v66 - v10;
  v11 = swift_checkMetadataState();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v15 = MEMORY[0x28223BE20](v11, v14);
  v78 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v66 - v19;
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v66 - v23;
  v26 = MEMORY[0x28223BE20](v22, v25);
  v28 = &v66 - v27;
  MEMORY[0x28223BE20](v26, v29);
  v30 = v12[2];
  v77 = &v66 - v31;
  v30();
  v75 = v30;
  v76 = v12 + 2;
  (v30)(v28, v82, v11);
  *&v83 = 1;
  v72 = lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  v32 = *(a4 + 64);
  v82 = a3;
  v32(v24, a3, a4);
  v35 = v12[1];
  v34 = v12 + 1;
  v33 = v35;
  v35(v24, v11);
  v73 = v20;
  v74 = a4;
  v70 = v28;
  v71 = a4 + 56;
  v68 = v7;
  v69 = (v34 + 3);
  v66 = v24;
  while (1)
  {
    (v75)(v20, v28, v11);
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      break;
    }

    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 128)
    {
      goto LABEL_14;
    }

LABEL_11:
    v48 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
    static FixedWidthInteger._truncatingInit<A>(_:)(v20, &type metadata for _UInt128, v11, v48, v7, &v83);
    v33(v20, v11);
    if (v83 == 0)
    {
      goto LABEL_31;
    }

LABEL_15:
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v51 = v78;
    dispatch thunk of static BinaryInteger.& infix(_:_:)();
    v33(v24, v11);
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      v52 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v53 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v52)
      {
        if (v53 <= 128)
        {
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          v54 = v78;
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v55 = *(v7[4] + 8);
          v56 = dispatch thunk of static Comparable.>= infix(_:_:)();
          v33(v24, v11);
          if ((v56 & 1) == 0)
          {
            v33(v54, v11);
            v36 = v77;
            v37 = v33;
            v38 = v34;
            v39 = v69;
            v24 = v66;
            v40 = v74;
LABEL_3:
            v41 = v67;
            (*(v40 + 56))(v67, v36, v82, v40);
            v42 = v82;
            v37(v41, v11);
            (*v39)(v41, v24, v11);
            goto LABEL_4;
          }

          v57 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
          static FixedWidthInteger._truncatingInit<A>(_:)(v54, &type metadata for _UInt128, v11, v57, v7, &v83);
          v33(v54, v11);
          v58 = *(&v83 + 1) | v83;
          v42 = v82;
          v36 = v77;
          v37 = v33;
          v38 = v34;
          v39 = v69;
          v24 = v66;
          goto LABEL_22;
        }
      }

      else if (v53 < 128)
      {
        v60 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
        static FixedWidthInteger._truncatingInit<A>(_:)(v51, &type metadata for _UInt128, v11, v60, v7, &v83);
        v33(v51, v11);
        v40 = v74;
        v42 = v82;
        v36 = v77;
        v37 = v33;
        v38 = v34;
        v39 = v69;
        if (v83 != 0)
        {
          goto LABEL_3;
        }

        goto LABEL_4;
      }

      lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      v83 = 0uLL;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v63 = *(v7[2] + 8);
      v64 = dispatch thunk of static Equatable.== infix(_:_:)();
      v33(v24, v11);
      v33(v51, v11);
      v40 = v74;
      v42 = v82;
      v36 = v77;
      v37 = v33;
      v38 = v34;
      v39 = v69;
      if ((v64 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 128)
      {
        v59 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
        static FixedWidthInteger._truncatingInit<A>(_:)(v51, &type metadata for _UInt128, v11, v59, v7, &v83);
        v33(v51, v11);
        v58 = *(&v83 + 1) | v83;
        v42 = v82;
        v36 = v77;
        v37 = v33;
        v38 = v34;
        v39 = v69;
LABEL_22:
        v40 = v74;
        if (v58)
        {
          goto LABEL_3;
        }

        goto LABEL_4;
      }

      lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      v83 = 0uLL;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v61 = *(v7[2] + 8);
      v62 = dispatch thunk of static Equatable.== infix(_:_:)();
      v33(v24, v11);
      v33(v51, v11);
      v42 = v82;
      v36 = v77;
      v37 = v33;
      v38 = v34;
      v39 = v69;
      v40 = v74;
      if ((v62 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

LABEL_4:
    (*(v40 + 56))(v36, v36, v42, v40);
    v37(v36, v11);
    v43 = *v39;
    (*v39)(v36, v24, v11);
    *&v83 = 1;
    v28 = v70;
    v7 = v68;
    dispatch thunk of static BinaryInteger.>> infix<A>(_:_:)();
    v37(v28, v11);
    v43(v28, v24, v11);
    v20 = v73;
    v34 = v38;
    v33 = v37;
  }

  v44 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v45 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v44)
  {
    if (v45 > 128)
    {
      goto LABEL_14;
    }

    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v46 = *(v7[4] + 8);
    v47 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v33(v24, v11);
    if ((v47 & 1) == 0)
    {
      v33(v20, v11);
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (v45 < 128)
  {
    goto LABEL_11;
  }

LABEL_14:
  lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
  v83 = 0uLL;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v49 = *(v7[2] + 8);
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();
  v33(v24, v11);
  v33(v20, v11);
  if ((v50 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_31:
  v33(v28, v11);
  return (v33)(v77, v11);
}

uint64_t static FiniteFieldProtocol.bitmask.getter()
{
  swift_getAssociatedTypeWitness();
  v0 = *(swift_getAssociatedConformanceWitness() + 8);
  return dispatch thunk of static FixedWidthInteger.max.getter();
}

unint64_t static FiniteField64.mul(_:_:)(unint64_t a1, unint64_t a2)
{
  result = a2 * a1;
  v4 = (a2 * a1) >> 64;
  v5 = result > 0xFFFFFFFF00000001;
  if (v4)
  {
    v5 = 1;
  }

  if (v5)
  {
    if (v4 && (v4 >= 0xFFFFFFFF00000001 ? (v6 = v4 + 0xFFFFFFFF) : (v6 = v4), v6))
    {
      return __umodti3();
    }

    else if (result >= 0xFFFFFFFF00000001)
    {
      result += 0xFFFFFFFFLL;
    }
  }

  else
  {
    if (result >= 0xFFFFFFFF00000001)
    {
      v7 = 0;
    }

    else
    {
      v7 = result;
    }

    if (v4)
    {
      return 0;
    }

    else
    {
      return v7;
    }
  }

  return result;
}

unint64_t static FiniteField64.intToInternalValue(_:)(unint64_t result)
{
  if (result >= 0xFFFFFFFF00000001)
  {
    result += 0xFFFFFFFFLL;
  }

  return result;
}

unint64_t protocol witness for static FiniteFieldProtocol.mul(_:_:) in conformance FiniteField64@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = *a1;
  result = *a2 * *a1;
  v5 = (*a2 * v3) >> 64;
  v6 = result > 0xFFFFFFFF00000001;
  if (v5)
  {
    v6 = 1;
  }

  if (v6)
  {
    if (v5)
    {
      if (v5 >= 0xFFFFFFFF00000001)
      {
        v7 = v5 + 0xFFFFFFFF;
      }

      else
      {
        v7 = v5;
      }

      if (v7)
      {
        result = __umodti3();
        *a3 = result;
        return result;
      }

      v9 = result + 0xFFFFFFFF;
    }

    else
    {
      v9 = result + 0xFFFFFFFF;
    }

    if (result >= 0xFFFFFFFF00000001)
    {
      result = v9;
    }

    *a3 = result;
  }

  else if (v5)
  {
    *a3 = 0;
  }

  else
  {
    if (result >= 0xFFFFFFFF00000001)
    {
      result = 0;
    }

    *a3 = result;
  }

  return result;
}

uint64_t *protocol witness for static FiniteFieldProtocol.intToInternalValue(_:) in conformance FiniteField64@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *result;
  if (*result >= 0xFFFFFFFF00000001)
  {
    v2 = *result + 0xFFFFFFFFLL;
  }

  *a2 = v2;
  return result;
}

uint64_t static MontgomeryFiniteField.intToInternalValue(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v25 = a3;
  v7 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v11);
  v13 = &v24 - v12;
  v14 = *(v7 + 24);
  v29 = v4;
  v26 = v14;
  v14(a2, v7);
  v15 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v16 = *(v15[4] + 8);
  v28 = a1;
  v17 = dispatch thunk of static Comparable.<= infix(_:_:)();
  v18 = *(v9 + 8);
  v18(v13, AssociatedTypeWitness);
  if (v17)
  {
    v26(a2, v7);
    v19 = v28;
    v20 = dispatch thunk of static Comparable.< infix(_:_:)();
    v18(v13, AssociatedTypeWitness);
    if (v20)
    {
      (*(v25 + 16))(a2);
      (*(v7 + 56))(v19, v13, a2, v7);
      return (v18)(v13, AssociatedTypeWitness);
    }

    else
    {
      v22 = *(v15[3] + 8);
      return dispatch thunk of static AdditiveArithmetic.zero.getter();
    }
  }

  else
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);
    MEMORY[0x2743B25F0](0x2872656765746E49, 0xE800000000000000);
    v23 = v15[1];
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x2743B25F0](0xD00000000000001BLL, 0x8000000270C51FF0);
    v26(a2, v7);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v18(v13, AssociatedTypeWitness);
    MEMORY[0x2743B25F0](41, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t static MontgomeryFiniteField.internalValueToInt(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v8);
  v10 = &v16 - v9;
  v11 = *(*(*(*(swift_getAssociatedConformanceWitness() + 8) + 8) + 24) + 16);
  v12 = swift_getAssociatedTypeWitness();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  (*(v4 + 56))(v16, v10, a2, v4);
  return (*(v6 + 8))(v10, AssociatedTypeWitness);
}

uint64_t static MontgomeryFiniteField32.mul(_:_:)(unsigned int a1, unsigned int a2)
{
  v2 = a2 * a1;
  v3 = 4293918721 * (-1048577 * v2);
  v4 = __CFADD__(v3, v2);
  v5 = v3 + v2;
  if (v4)
  {
    result = (HIDWORD(v5) + 0xFFFFF);
    if (HIDWORD(v5) >= 0xFFF00001)
    {
      __break(1u);
    }
  }

  else if (v5 >= 0xFFF0000100000000)
  {
    return (HIDWORD(v5) + 0xFFFFF);
  }

  else
  {
    return HIDWORD(v5);
  }

  return result;
}

unsigned int *protocol witness for static FiniteFieldProtocol.mul(_:_:) in conformance MontgomeryFiniteField32@<X0>(unsigned int *result@<X0>, unsigned int *a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = *a2 * *result;
  v4 = 4293918721 * (-1048577 * v3);
  v5 = __CFADD__(v4, v3);
  v6 = v4 + v3;
  v7 = HIDWORD(v6);
  if (v5)
  {
    if (HIDWORD(v6) >= 0xFFF00001)
    {
      __break(1u);
    }

    else
    {
      *a3 = HIDWORD(v6) + 0xFFFFF;
    }
  }

  else
  {
    if (v6 >= 0xFFF0000100000000)
    {
      LODWORD(v7) = HIDWORD(v6) + 0xFFFFF;
    }

    *a3 = v7;
  }

  return result;
}

unsigned int *protocol witness for static FiniteFieldProtocol.intToInternalValue(_:) in conformance MontgomeryFiniteField32@<X0>(unsigned int *result@<X0>, _DWORD *a2@<X8>)
{
  v2 = *result;
  if (*result < 0xFFF00002)
  {
    if (v2 == -1048575)
    {
      LODWORD(v3) = 0;
LABEL_11:
      *a2 = v3;
      return result;
    }

    v4 = 266338049 * v2;
    v5 = 4503595066065151 * v2;
    v6 = __CFADD__(v5, v4);
    v7 = v5 + v4;
    v3 = HIDWORD(v7);
    if (v6)
    {
      v7 = 0xFFFFFLL;
      v6 = __CFADD__(v3, 0xFFFFF);
      LODWORD(v3) = v3 + 0xFFFFF;
      if (!v6)
      {
        goto LABEL_11;
      }

      __break(1u);
    }

    if (v7 >= 0xFFF0000100000000)
    {
      LODWORD(v3) = v3 + 0xFFFFF;
    }

    goto LABEL_11;
  }

  _StringGuts.grow(_:)(40);

  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v8);

  MEMORY[0x2743B25F0](0xD00000000000001BLL, 0x8000000270C51FF0);
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v9);

  MEMORY[0x2743B25F0](41, 0xE100000000000000);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

_DWORD *protocol witness for static FiniteFieldProtocol.internalValueToInt(_:) in conformance MontgomeryFiniteField32@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X8>)
{
  if (*result + 4293918721u * (-1048577 * *result) >= 0xFFF0000100000000)
  {
    v2 = 0;
  }

  else
  {
    v2 = (*result + 4293918721u * (-1048577 * *result)) >> 32;
  }

  *a2 = v2;
  return result;
}

unint64_t static MontgomeryFiniteField40.mul(_:_:)(unint64_t a1, unint64_t a2)
{
  v2 = (a2 * a1) >> 64;
  v3 = (0xCFFE47FFFEAFFFFFLL * a2 * a1 * 0xFFFEB00001uLL) >> 64;
  v4 = __CFADD__(-(a2 * a1), a2 * a1);
  v5 = __CFADD__(v3, v2);
  v6 = v3 + v2;
  if (v5)
  {
    v7 = v6 + v4;
    result = v7 - 0xFFFEB00001;
    if (v7 < 0xFFFEB00001)
    {
      return result;
    }

    __break(1u);
    return 0xFFFFFF00014FFFFELL;
  }

  if (v6 == -1)
  {
    if (v4)
    {
      return 0xFFFFFF00014FFFFFLL;
    }

    return 0xFFFFFF00014FFFFELL;
  }

  v9 = v6 + v4;
  if (v9 >= 0xFFFEB00001)
  {
    return v9 - 0xFFFEB00001;
  }

  else
  {
    return v9;
  }
}

void *protocol witness for static FiniteFieldProtocol.mul(_:_:) in conformance MontgomeryFiniteField40@<X0>(void *result@<X0>, void *a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = 0xFFFFFF00014FFFFFLL;
  v4 = (*a2 * *result) >> 64;
  v5 = *a2 * *result;
  v6 = (0xCFFE47FFFEAFFFFFLL * v5 * 0xFFFEB00001uLL) >> 64;
  v7 = __CFADD__(-v5, v5);
  v8 = __CFADD__(v6, v4);
  v9 = v6 + v4;
  if (v8)
  {
    v10 = v9 + v7;
    v3 = v10 - 0xFFFEB00001;
    if (v10 < 0xFFFEB00001)
    {
LABEL_7:
      *a3 = v3;
      return result;
    }

    __break(1u);
LABEL_15:
    *a3 = v3 - 1;
    return result;
  }

  if (v9 == -1)
  {
    if (v7)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v11 = v9 + v7;
  v12 = v11 - 0xFFFEB00001;
  if (v11 < 0xFFFEB00001)
  {
    v12 = v11;
  }

  *a3 = v12;
  return result;
}

unint64_t *protocol witness for static FiniteFieldProtocol.intToInternalValue(_:) in conformance MontgomeryFiniteField40@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X8>)
{
  v2 = *result;
  if (*result > 0xFFFEB00001)
  {
    _StringGuts.grow(_:)(40);

    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v7);

    MEMORY[0x2743B25F0](0xD00000000000001BLL, 0x8000000270C51FF0);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v8);

    MEMORY[0x2743B25F0](41, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    if (*result == 0xFFFEB00001)
    {
      v3 = 0;
    }

    else
    {
      v4 = (v2 * 0x160DCD7524uLL) >> 64;
      v5 = (0x1B8024032F28ADCLL * v2 * 0xFFFEB00001uLL) >> 64;
      v6 = v4 + __CFADD__(0xFFFFFFE9F2328ADCLL * v2, 0x160DCD7524 * v2) + v5;
      if (v6 >= 0xFFFEB00001)
      {
        v3 = v6 - 0xFFFEB00001;
      }

      else
      {
        v3 = v4 + __CFADD__(0xFFFFFFE9F2328ADCLL * v2, 0x160DCD7524 * v2) + v5;
      }
    }

    *a2 = v3;
  }

  return result;
}

void *protocol witness for static FiniteFieldProtocol.internalValueToInt(_:) in conformance MontgomeryFiniteField40@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  if (__CFADD__(-*result, *result))
  {
    v2 = ((0xCFFE47FFFEAFFFFFLL * *result * 0xFFFEB00001uLL) >> 64) + 1;
  }

  else
  {
    v2 = (0xCFFE47FFFEAFFFFFLL * *result * 0xFFFEB00001uLL) >> 64;
  }

  if (v2 >= 0xFFFEB00001)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t static MontgomeryFiniteField64.mul(_:_:)(unint64_t a1, unint64_t a2)
{
  v2 = (a2 * a1) >> 64;
  v3 = (0xFFFFFFFEFFFFFFFFLL * a2 * a1 * 0xFFFFFFFF00000001) >> 64;
  v4 = __CFADD__(-(a2 * a1), a2 * a1);
  v5 = __CFADD__(v3, v2);
  v6 = v3 + v2;
  if (v5)
  {
    v7 = v6 + v4;
  }

  else
  {
    if (v6 != -1)
    {
      v9 = v6 + v4;
      if (v9 >= 0xFFFFFFFF00000001)
      {
        return v9 + 0xFFFFFFFF;
      }

      else
      {
        return v9;
      }
    }

    if (!v4)
    {
      return 4294967294;
    }

    v7 = 0;
  }

  result = v7 + 0xFFFFFFFF;
  if (v7 >= 0xFFFFFFFF00000001)
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for static FiniteFieldProtocol.mul(_:_:) in conformance MontgomeryFiniteField64@<X0>(void *result@<X0>, void *a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = (*a2 * *result) >> 64;
  v4 = *a2 * *result;
  v5 = (0xFFFFFFFEFFFFFFFFLL * v4 * 0xFFFFFFFF00000001) >> 64;
  v6 = __CFADD__(-v4, v4);
  v7 = __CFADD__(v5, v3);
  v8 = v5 + v3;
  if (v7)
  {
    v9 = v8 + v6;
LABEL_7:
    v7 = __CFADD__(v9, 0xFFFFFFFFLL);
    v10 = v9 + 0xFFFFFFFFLL;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      *a3 = v10;
    }

    return result;
  }

  if (v8 == -1)
  {
    if (!v6)
    {
      *a3 = 4294967294;
      return result;
    }

    v9 = 0;
    goto LABEL_7;
  }

  v11 = v8 + v6;
  if (v11 >= 0xFFFFFFFF00000001)
  {
    v11 += 0xFFFFFFFFLL;
  }

  *a3 = v11;
  return result;
}

unint64_t *protocol witness for static FiniteFieldProtocol.intToInternalValue(_:) in conformance MontgomeryFiniteField64@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X8>)
{
  v2 = *result;
  if (*result >= 0xFFFFFFFF00000002)
  {
    _StringGuts.grow(_:)(40);

    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v9);

    MEMORY[0x2743B25F0](0xD00000000000001BLL, 0x8000000270C51FF0);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v10);

    MEMORY[0x2743B25F0](41, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    if (v2 == 0xFFFFFFFF00000001)
    {
      v3 = 0;
    }

    else
    {
      v4 = (v2 * 0xFFFFFFFE00000001) >> 64;
      v5 = (0xFFFFFFFF * v2 * 0xFFFFFFFF00000001) >> 64;
      LODWORD(v3) = __CFADD__(0x1FFFFFFFFLL * v2, 0xFFFFFFFE00000001 * v2);
      v6 = v5 + v4;
      if (__CFADD__(v5, v4))
      {
        v7 = v6 + v3;
        goto LABEL_10;
      }

      while (v6 == -1)
      {
        if ((v3 & 1) == 0)
        {
          v3 = 4294967294;
          goto LABEL_20;
        }

        v7 = 0;
LABEL_10:
        v6 = 0xFFFFFFFFLL;
        v8 = __CFADD__(v7, 0xFFFFFFFFLL);
        v3 = v7 + 0xFFFFFFFFLL;
        if (!v8)
        {
          goto LABEL_20;
        }

        __break(1u);
      }

      v3 = v6 + (v3 & 1);
      if (v3 >= 0xFFFFFFFF00000001)
      {
        v3 += 0xFFFFFFFFLL;
      }
    }

LABEL_20:
    *a2 = v3;
  }

  return result;
}

void *protocol witness for static FiniteFieldProtocol.internalValueToInt(_:) in conformance MontgomeryFiniteField64@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v2 = (0xFFFFFFFEFFFFFFFFLL * *result * 0xFFFFFFFF00000001) >> 64;
  if (!__CFADD__(-*result, *result))
  {
    goto LABEL_5;
  }

  if (v2 <= 0xFFFFFFFEFFFFFFFFLL)
  {
    ++v2;
LABEL_5:
    *a2 = v2;
    return result;
  }

  *a2 = v2 + 0x100000000;
  return result;
}

double one-time initialization function for p()
{
  *&result = 1;
  static MontgomeryFiniteField128.p = xmmword_270C491F0;
  return result;
}

double one-time initialization function for g()
{
  result = -6.64630084e231;
  static MontgomeryFiniteField128.g = xmmword_270C49200;
  return result;
}

double one-time initialization function for roots()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF8_UInt128VGMd, &_ss23_ContiguousArrayStorageCy4VDAF8_UInt128VGMR);
  v0 = swift_allocObject();
  v0[1] = xmmword_270C49210;
  v0[2] = xmmword_270C49220;
  v0[3] = xmmword_270C49230;
  v0[4] = xmmword_270C49240;
  v0[5] = xmmword_270C49250;
  v0[6] = xmmword_270C49260;
  v0[7] = xmmword_270C49270;
  v0[8] = xmmword_270C49280;
  v0[9] = xmmword_270C49290;
  v0[10] = xmmword_270C492A0;
  v0[11] = xmmword_270C492B0;
  v0[12] = xmmword_270C492C0;
  v0[13] = xmmword_270C492D0;
  v0[14] = xmmword_270C492E0;
  v0[15] = xmmword_270C492F0;
  v0[16] = xmmword_270C49300;
  v0[17] = xmmword_270C49310;
  v0[18] = xmmword_270C49320;
  v0[19] = xmmword_270C49330;
  v0[20] = xmmword_270C49340;
  result = -4.77001136e179;
  v0[21] = xmmword_270C49350;
  v0[22] = xmmword_270C49360;
  static MontgomeryFiniteField128.roots = v0;
  return result;
}

uint64_t static MontgomeryFiniteField128.roots.getter()
{
  if (one-time initialization token for roots != -1)
  {
    swift_once();
  }
}

double one-time initialization function for r2()
{
  result = NAN;
  static MontgomeryFiniteField128.r2 = xmmword_270C49370;
  return result;
}

__int128 *MontgomeryFiniteField128.r2.unsafeMutableAddressor()
{
  if (one-time initialization token for r2 != -1)
  {
    swift_once();
  }

  return &static MontgomeryFiniteField128.r2;
}

double static MontgomeryFiniteField128.r2.getter@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for r2 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static MontgomeryFiniteField128.r2;
  *a1 = static MontgomeryFiniteField128.r2;
  return result;
}

_OWORD *static MontgomeryFiniteField128.mul(_:_:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *a1;
  v39 = *a2;
  v40 = v4;
  _UInt128.multipliedFullWidth(by:)(&v36, &v41, &v39);
  v5 = v36;
  v6 = v41;
  v7 = -v41;
  if (one-time initialization token for p != -1)
  {
    swift_once();
  }

  v41 = static MontgomeryFiniteField128.p;
  v40 = v7;
  _UInt128.multipliedFullWidth(by:)(&v36, &v37, &v40);
  v8 = __CFADD__(v37, v6);
  v9 = v38 + *(&v6 + 1);
  if (__CFADD__(v38, *(&v6 + 1)))
  {
    v10 = 1;
LABEL_11:
    v9 += v8 & 1;
    goto LABEL_13;
  }

  if ((v9 == -1) | v8 & 1)
  {
    v10 = (v9 == -1) & v8;
    v8 |= v9 != -1;
    goto LABEL_11;
  }

  v10 = 0;
LABEL_13:
  v11 = v5 + v36;
  v12 = __CFADD__(v5, v36);
  v13 = *(&v5 + 1) + *(&v36 + 1);
  if (__CFADD__(*(&v5 + 1), *(&v36 + 1)))
  {
    if (v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v13 == -1)
    {
      v13 = v12 - 1;
      if ((v10 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

    if (v12)
    {
LABEL_23:
      ++v13;
      if ((v10 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_20:
      v14 = 1;
      goto LABEL_25;
    }
  }

  if (v10)
  {
    goto LABEL_20;
  }

LABEL_24:
  v14 = 0;
LABEL_25:
  v15 = v11 + v14;
  if (__CFADD__(v11, v14))
  {
    v16 = v13 + 1;
  }

  else
  {
    v16 = v13;
  }

  v17 = static MontgomeryFiniteField128.p;
  v39 = static MontgomeryFiniteField128.p;
  v35[0] = -v9;
  v35[1] = 0;
  result = _UInt128.multipliedFullWidth(by:)(&v41, &v40, v35);
  v19 = *(&v41 + 1);
  v20 = __CFADD__(v40, v9);
  v21 = *(&v40 + 1) + v15;
  if (__CFADD__(*(&v40 + 1), v15))
  {
    v21 += v20;
    v22 = v16 + v41;
    v23 = __CFADD__(v16, v41);
    v24 = *(&v41 + 1) + v23;
    v25 = v23 - 1;
    v26 = 1;
    if (*(&v41 + 1) == -1)
    {
      v19 = v25;
    }

    else
    {
      v26 = 1;
      v19 = v24;
    }

    goto LABEL_60;
  }

  if (v21 != -1 && !v20)
  {
    v22 = v16 + v41;
    v29 = __CFADD__(v16, v41);
    if (*(&v41 + 1) == -1)
    {
      v19 = v29 - 1;
    }

    else
    {
      v19 = *(&v41 + 1) + v29;
    }

    goto LABEL_59;
  }

  v27 = v21 == -1 && v20;
  v21 += (v21 != -1) | v20;
  v22 = v16 + v41;
  v28 = __CFADD__(v16, v41);
  if (*(&v41 + 1) == -1)
  {
    v19 = v28 - 1;
    if (v27)
    {
      goto LABEL_58;
    }

    goto LABEL_59;
  }

  if (!v28)
  {
    if (v27)
    {
      goto LABEL_58;
    }

LABEL_59:
    v26 = 0;
    goto LABEL_60;
  }

  v19 = *(&v41 + 1) + 1;
  if (!v27)
  {
    goto LABEL_59;
  }

LABEL_58:
  v26 = 1;
LABEL_60:
  v30 = __CFADD__(v22, v26);
  v31 = v22 + v26;
  v32 = v30;
  if (v19 != v32 << 63 >> 63)
  {
    goto LABEL_67;
  }

  v33 = v21 < v17;
  if (v31 != *(&v17 + 1))
  {
    v33 = v31 < *(&v17 + 1);
  }

  if (!v33)
  {
LABEL_67:
    v30 = v21 >= v17;
    v21 -= v17;
    v34 = !v30;
    v31 = v31 - *(&v17 + 1) - v34;
  }

  *a3 = v21;
  a3[1] = v31;
  return result;
}

double protocol witness for static MontgomeryFiniteField.r2.getter in conformance MontgomeryFiniteField128@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for r2 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static MontgomeryFiniteField128.r2;
  *a1 = static MontgomeryFiniteField128.r2;
  return result;
}

uint64_t protocol witness for static FiniteFieldProtocol.roots.getter in conformance MontgomeryFiniteField128()
{
  if (one-time initialization token for roots != -1)
  {
    swift_once();
  }
}

_OWORD *protocol witness for static FiniteFieldProtocol.mul(_:_:) in conformance MontgomeryFiniteField128@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *a1;
  v37 = *a2;
  v38 = v4;
  _UInt128.multipliedFullWidth(by:)(&v34, &v39, &v37);
  v5 = v34;
  v6 = v39;
  v7 = -v39;
  if (one-time initialization token for p != -1)
  {
    swift_once();
  }

  v39 = static MontgomeryFiniteField128.p;
  v38 = v7;
  _UInt128.multipliedFullWidth(by:)(&v34, &v35, &v38);
  v8 = __CFADD__(v35, v6);
  v9 = v36 + *(&v6 + 1);
  if (__CFADD__(v36, *(&v6 + 1)))
  {
    v10 = 1;
LABEL_11:
    v9 += v8 & 1;
    goto LABEL_13;
  }

  if ((v9 == -1) | v8 & 1)
  {
    v10 = (v9 == -1) & v8;
    v8 |= v9 != -1;
    goto LABEL_11;
  }

  v10 = 0;
LABEL_13:
  v11 = v5 + v34;
  v12 = __CFADD__(v5, v34);
  v13 = *(&v5 + 1) + *(&v34 + 1);
  if (__CFADD__(*(&v5 + 1), *(&v34 + 1)))
  {
    if (v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v13 == -1)
    {
      v13 = v12 - 1;
      if ((v10 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

    if (v12)
    {
LABEL_23:
      ++v13;
      if ((v10 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_20:
      v14 = 1;
      goto LABEL_25;
    }
  }

  if (v10)
  {
    goto LABEL_20;
  }

LABEL_24:
  v14 = 0;
LABEL_25:
  v15 = v11 + v14;
  if (__CFADD__(v11, v14))
  {
    v16 = v13 + 1;
  }

  else
  {
    v16 = v13;
  }

  v17 = static MontgomeryFiniteField128.p;
  v37 = static MontgomeryFiniteField128.p;
  v33[0] = -v9;
  v33[1] = 0;
  result = _UInt128.multipliedFullWidth(by:)(&v39, &v38, v33);
  v19 = *(&v39 + 1);
  v20 = __CFADD__(v38, v9);
  v21 = *(&v38 + 1) + v15;
  if (__CFADD__(*(&v38 + 1), v15))
  {
    v21 += v20;
    v22 = v16 + v39;
    v23 = __CFADD__(v16, v39);
    if (*(&v39 + 1) == -1)
    {
      v19 = v23 - 1;
    }

    else
    {
      v19 = *(&v39 + 1) + v23;
    }

    v24 = 1;
    goto LABEL_61;
  }

  if (v21 != -1 && !v20)
  {
    v22 = v16 + v39;
    v27 = __CFADD__(v16, v39);
    if (*(&v39 + 1) == -1)
    {
      v19 = v27 - 1;
    }

    else
    {
      v19 = *(&v39 + 1) + v27;
    }

    goto LABEL_60;
  }

  v25 = v21 == -1 && v20;
  v21 += (v21 != -1) | v20;
  v22 = v16 + v39;
  v26 = __CFADD__(v16, v39);
  if (*(&v39 + 1) == -1)
  {
    v19 = v26 - 1;
    if (v25)
    {
      goto LABEL_59;
    }

    goto LABEL_60;
  }

  if (!v26)
  {
    if (v25)
    {
      goto LABEL_59;
    }

LABEL_60:
    v24 = 0;
    goto LABEL_61;
  }

  v19 = *(&v39 + 1) + 1;
  if (!v25)
  {
    goto LABEL_60;
  }

LABEL_59:
  v24 = 1;
LABEL_61:
  v28 = __CFADD__(v22, v24);
  v29 = v22 + v24;
  v30 = v28;
  if (v19 != v30 << 63 >> 63)
  {
    goto LABEL_68;
  }

  v31 = v21 < v17;
  if (v29 != *(&v17 + 1))
  {
    v31 = v29 < *(&v17 + 1);
  }

  if (!v31)
  {
LABEL_68:
    v28 = v21 >= v17;
    v21 -= v17;
    v32 = !v28;
    v29 = v29 - *(&v17 + 1) - v32;
  }

  *a3 = v21;
  a3[1] = v29;
  return result;
}

unint64_t *protocol witness for static FiniteFieldProtocol.intToInternalValue(_:) in conformance MontgomeryFiniteField128@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X8>)
{
  v4 = *result;
  v3 = result[1];
  if (one-time initialization token for p != -1)
  {
    result = swift_once();
  }

  v5 = static MontgomeryFiniteField128.p < v4;
  if (*(&static MontgomeryFiniteField128.p + 1) != v3)
  {
    v5 = *(&static MontgomeryFiniteField128.p + 1) < v3;
  }

  if (v5)
  {
    _StringGuts.grow(_:)(40);

    lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v33);

    MEMORY[0x2743B25F0](0xD00000000000001BLL, 0x8000000270C51FF0);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v34);

    MEMORY[0x2743B25F0](41, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (*(&static MontgomeryFiniteField128.p + 1) == v3)
  {
    v6 = v4 < static MontgomeryFiniteField128.p;
  }

  else
  {
    v6 = v3 < *(&static MontgomeryFiniteField128.p + 1);
  }

  if (!v6)
  {
    *a2 = 0;
    a2[1] = 0;
    return result;
  }

  if (one-time initialization token for r2 != -1)
  {
    swift_once();
  }

  v40 = v4;
  v41 = v3;
  v39 = static MontgomeryFiniteField128.r2;
  _UInt128.multipliedFullWidth(by:)(&v36, &v42, &v39);
  v7 = v36;
  v8 = v42;
  v42 = static MontgomeryFiniteField128.p;
  v40 = -v8;
  v41 = 0;
  _UInt128.multipliedFullWidth(by:)(&v36, &v37, &v40);
  v9 = __CFADD__(v37, v8);
  v10 = v38 + *(&v8 + 1);
  if (__CFADD__(v38, *(&v8 + 1)))
  {
    v11 = 1;
LABEL_21:
    v10 += v9 & 1;
    goto LABEL_23;
  }

  if ((v10 == -1) | v9 & 1)
  {
    v11 = (v10 == -1) & v9;
    v9 |= v10 != -1;
    goto LABEL_21;
  }

  v11 = 0;
LABEL_23:
  v12 = v7 + v36;
  v13 = __CFADD__(v7, v36);
  v14 = *(&v7 + 1) + *(&v36 + 1);
  if (__CFADD__(*(&v7 + 1), *(&v36 + 1)))
  {
    if (v13)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (v14 == -1)
    {
      v14 = v13 - 1;
      if ((v11 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_30;
    }

    if (v13)
    {
LABEL_33:
      ++v14;
      if ((v11 & 1) == 0)
      {
        goto LABEL_34;
      }

LABEL_30:
      v15 = 1;
      goto LABEL_35;
    }
  }

  if (v11)
  {
    goto LABEL_30;
  }

LABEL_34:
  v15 = 0;
LABEL_35:
  v16 = v12 + v15;
  if (__CFADD__(v12, v15))
  {
    v17 = v14 + 1;
  }

  else
  {
    v17 = v14;
  }

  v18 = static MontgomeryFiniteField128.p;
  v39 = static MontgomeryFiniteField128.p;
  v35[0] = -v10;
  v35[1] = 0;
  result = _UInt128.multipliedFullWidth(by:)(&v42, &v40, v35);
  v19 = *(&v42 + 1);
  v20 = __CFADD__(v40, v10);
  v21 = v41 + v16;
  if (!__CFADD__(v41, v16))
  {
    if (v21 != -1 && !v20)
    {
      v22 = v17 + v42;
      v27 = __CFADD__(v17, v42);
      if (*(&v42 + 1) == -1)
      {
        v19 = v27 - 1;
      }

      else
      {
        v19 = *(&v42 + 1) + v27;
      }

      goto LABEL_70;
    }

    v25 = v21 == -1 && v20;
    v21 += (v21 != -1) | v20;
    v22 = v17 + v42;
    v26 = __CFADD__(v17, v42);
    if (*(&v42 + 1) == -1)
    {
      v19 = v26 - 1;
      if (v25)
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (v26)
      {
        v19 = *(&v42 + 1) + 1;
        if (!v25)
        {
          goto LABEL_70;
        }

LABEL_69:
        v24 = 1;
        goto LABEL_71;
      }

      if (v25)
      {
        goto LABEL_69;
      }
    }

LABEL_70:
    v24 = 0;
    goto LABEL_71;
  }

  v21 += v20;
  v22 = v17 + v42;
  v23 = __CFADD__(v17, v42);
  if (*(&v42 + 1) == -1)
  {
    v19 = v23 - 1;
  }

  else
  {
    v19 = *(&v42 + 1) + v23;
  }

  v24 = 1;
LABEL_71:
  v28 = __CFADD__(v22, v24);
  v29 = v22 + v24;
  v30 = v28;
  if (v19 != v30 << 63 >> 63)
  {
    goto LABEL_78;
  }

  v31 = v21 < v18;
  if (v29 != *(&v18 + 1))
  {
    v31 = v29 < *(&v18 + 1);
  }

  if (!v31)
  {
LABEL_78:
    v28 = v21 >= v18;
    v21 -= v18;
    v32 = !v28;
    v29 = v29 - *(&v18 + 1) - v32;
  }

  *a2 = v21;
  a2[1] = v29;
  return result;
}

_OWORD *protocol witness for static FiniteFieldProtocol.internalValueToInt(_:) in conformance MontgomeryFiniteField128@<X0>(__int128 *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  v36 = xmmword_270C44F50;
  v37 = v3;
  _UInt128.multipliedFullWidth(by:)(&v33, &v38, &v36);
  v4 = v33;
  v5 = v38;
  v6 = -v38;
  if (one-time initialization token for p != -1)
  {
    swift_once();
  }

  v38 = static MontgomeryFiniteField128.p;
  v37 = v6;
  _UInt128.multipliedFullWidth(by:)(&v33, &v34, &v37);
  v7 = __CFADD__(v34, v5);
  v8 = v35 + *(&v5 + 1);
  if (__CFADD__(v35, *(&v5 + 1)))
  {
    v9 = 1;
LABEL_11:
    v8 += v7 & 1;
    goto LABEL_13;
  }

  if ((v8 == -1) | v7 & 1)
  {
    v9 = (v8 == -1) & v7;
    v7 |= v8 != -1;
    goto LABEL_11;
  }

  v9 = 0;
LABEL_13:
  v10 = v4 + v33;
  v11 = __CFADD__(v4, v33);
  v12 = *(&v4 + 1) + *(&v33 + 1);
  if (__CFADD__(*(&v4 + 1), *(&v33 + 1)))
  {
    if (v11)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v12 == -1)
    {
      v12 = v11 - 1;
      if ((v9 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

    if (v11)
    {
LABEL_23:
      ++v12;
      if ((v9 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_20:
      v13 = 1;
      goto LABEL_25;
    }
  }

  if (v9)
  {
    goto LABEL_20;
  }

LABEL_24:
  v13 = 0;
LABEL_25:
  v14 = v10 + v13;
  if (__CFADD__(v10, v13))
  {
    v15 = v12 + 1;
  }

  else
  {
    v15 = v12;
  }

  v16 = static MontgomeryFiniteField128.p;
  v36 = static MontgomeryFiniteField128.p;
  v32[0] = -v8;
  v32[1] = 0;
  result = _UInt128.multipliedFullWidth(by:)(&v38, &v37, v32);
  v18 = *(&v38 + 1);
  v19 = __CFADD__(v37, v8);
  v20 = *(&v37 + 1) + v14;
  if (__CFADD__(*(&v37 + 1), v14))
  {
    v20 += v19;
    v21 = v15 + v38;
    v22 = __CFADD__(v15, v38);
    if (*(&v38 + 1) == -1)
    {
      v18 = v22 - 1;
    }

    else
    {
      v18 = *(&v38 + 1) + v22;
    }

    v23 = 1;
    goto LABEL_61;
  }

  if (v20 != -1 && !v19)
  {
    v21 = v15 + v38;
    v26 = __CFADD__(v15, v38);
    if (*(&v38 + 1) == -1)
    {
      v18 = v26 - 1;
    }

    else
    {
      v18 = *(&v38 + 1) + v26;
    }

    goto LABEL_60;
  }

  v24 = v20 == -1 && v19;
  v20 += (v20 != -1) | v19;
  v21 = v15 + v38;
  v25 = __CFADD__(v15, v38);
  if (*(&v38 + 1) == -1)
  {
    v18 = v25 - 1;
    if (v24)
    {
      goto LABEL_59;
    }

    goto LABEL_60;
  }

  if (!v25)
  {
    if (v24)
    {
      goto LABEL_59;
    }

LABEL_60:
    v23 = 0;
    goto LABEL_61;
  }

  v18 = *(&v38 + 1) + 1;
  if (!v24)
  {
    goto LABEL_60;
  }

LABEL_59:
  v23 = 1;
LABEL_61:
  v27 = __CFADD__(v21, v23);
  v28 = v21 + v23;
  v29 = v27;
  if (v18 != v29 << 63 >> 63)
  {
    goto LABEL_68;
  }

  v30 = v20 < v16;
  if (v28 != *(&v16 + 1))
  {
    v30 = v28 < *(&v16 + 1);
  }

  if (!v30)
  {
LABEL_68:
    v27 = v20 >= v16;
    v20 -= v16;
    v31 = !v27;
    v28 = v28 - *(&v16 + 1) - v31;
  }

  *a2 = v20;
  a2[1] = v28;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MontgomeryFiniteField32(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MontgomeryFiniteField32 and conformance MontgomeryFiniteField32();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MontgomeryFiniteField40(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MontgomeryFiniteField40 and conformance MontgomeryFiniteField40();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MontgomeryFiniteField64(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MontgomeryFiniteField64 and conformance MontgomeryFiniteField64();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MontgomeryFiniteField128(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MontgomeryFiniteField128 and conformance MontgomeryFiniteField128();
  *(a1 + 8) = result;
  return result;
}

uint64_t *PolynomialEvaluationGadget.init(polynomial:numOfCalls:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *result;
  a3[1] = a2;
  a3[2] = v3;
  *a3 = 1;
  return result;
}

uint64_t PolynomialEvaluationGadget.degree.getter(uint64_t a1)
{
  v7 = *(v1 + 16);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = type metadata accessor for Polynomial();
  return Polynomial.degree.getter(v4, v5);
}

uint64_t PolynomialEvaluationGadget.evaluate<A>(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v22 = a2;
  v23 = a3;
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v9 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v14);
  v16 = &v21 - v15;
  v25 = *(v3 + 16);

  dispatch thunk of Collection.startIndex.getter();
  v17 = dispatch thunk of Collection.subscript.read();
  (*(v5 + 16))(v8);
  v17(v24, 0);
  (*(v12 + 8))(v16, AssociatedTypeWitness);
  v18 = *(v22 + 24);
  v19 = type metadata accessor for Polynomial();
  Polynomial.evaluate(at:)(v8, v19, v23);
  (*(v5 + 8))(v8, v4);
}

uint64_t PolynomialEvaluationGadget.evaluate<A>(at:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v6 = *(*(a2 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v10);
  v12 = &v21[-1] - v11;
  v21[4] = *(v3 + 16);

  dispatch thunk of Collection.startIndex.getter();
  v13 = dispatch thunk of Collection.subscript.read();
  v15 = *v14;

  v13(v21, 0);
  (*(v8 + 8))(v12, AssociatedTypeWitness);
  v21[0] = v15;
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  v18 = type metadata accessor for Polynomial();
  Polynomial.evaluate(at:)(v21, v18, a3);
}

uint64_t type metadata instantiation function for PolynomialEvaluationGadget()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

VDAF::SuperBlockSampler __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SuperBlockSampler.init(blockCount:keptBlockCount:)(Swift::Int blockCount, Swift::Int keptBlockCount)
{
  v4 = blockCount;
  if (blockCount < keptBlockCount || keptBlockCount < 1 || blockCount % keptBlockCount)
  {
    lazy protocol witness table accessor for type SuperBlockSamplerError and conformance SuperBlockSamplerError();
    swift_allocError();
    *v5 = v4;
    v5[1] = keptBlockCount;
    blockCount = swift_willThrow();
  }

  else
  {
    *v2 = blockCount;
    v2[1] = keptBlockCount;
  }

  result.keptBlockCount = keptBlockCount;
  result.blockCount = blockCount;
  return result;
}

unint64_t lazy protocol witness table accessor for type SuperBlockSamplerError and conformance SuperBlockSamplerError()
{
  result = lazy protocol witness table cache variable for type SuperBlockSamplerError and conformance SuperBlockSamplerError;
  if (!lazy protocol witness table cache variable for type SuperBlockSamplerError and conformance SuperBlockSamplerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuperBlockSamplerError and conformance SuperBlockSamplerError);
  }

  return result;
}

void SuperBlockSampler.sample()()
{
  v1 = v0[1];
  if (!v1)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v2 = *v0;
  if (*v0 == 0x8000000000000000 && v1 == -1)
  {
    goto LABEL_31;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v21 = MEMORY[0x277D84F90];
    v4 = v2 / v1;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v5 = 0;
    v6 = v21;
    while (1)
    {
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v8 = v5 * v4;
      if ((v5 * v4) >> 64 != (v5 * v4) >> 63)
      {
        goto LABEL_25;
      }

      v9 = v7 * v4;
      if ((v7 * v4) >> 64 != (v7 * v4) >> 63)
      {
        goto LABEL_26;
      }

      v10 = __OFSUB__(v9, 1);
      v11 = v9 - 1;
      if (v10)
      {
        goto LABEL_27;
      }

      v12 = v11 - v8;
      if (v11 < v8)
      {
        goto LABEL_28;
      }

      if (v12 == -1)
      {
        v20 = 0;
        MEMORY[0x2743B35C0](&v20, 8);
        v17 = v20;
      }

      else
      {
        v13 = v12 + 1;
        v20 = 0;
        MEMORY[0x2743B35C0](&v20, 8);
        v14 = (v20 * (v12 + 1)) >> 64;
        v15 = v20 * (v12 + 1);
        if (v12 >= v15)
        {
          v16 = ~v12 % v13;
          if (v16 > v15)
          {
            do
            {
              v20 = 0;
              MEMORY[0x2743B35C0](&v20, 8);
            }

            while (v16 > v20 * v13);
            v14 = (v20 * v13) >> 64;
          }
        }

        v17 = v14 + v8;
      }

      v21 = v6;
      v19 = *(v6 + 16);
      v18 = *(v6 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v6 = v21;
      }

      *(v6 + 16) = v19 + 1;
      *(v6 + 8 * v19 + 32) = v17;
      v5 = v7;
      if (v7 == v1)
      {
        return;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

unint64_t specialized RandomNumberGenerator.next<A>(upperBound:)(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x2743B35C0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x2743B35C0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PINEPrepareShare.init(verifierShare:wraparoundJointRandPart:verificationJointRandPart:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t PINEPrepareShare.init<A>(from:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v121 = a5;
  v122 = a8;
  v10 = a7;
  v113 = a9;
  v118 = *(a7 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v16 = type metadata accessor for Optional();
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16 - 8, v18);
  v21 = &v102 - v20;
  v22 = *(a6 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19, v24);
  v26 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v27 = 0;
    v27[1] = 0;
    swift_willThrow();
    return (*(v22 + 8))(a1, a6);
  }

  v114 = a6;
  v115 = v22;
  v29 = v10 + 64;
  v30 = a4;
  v112 = *(v10 + 64);
  v31 = v112(a4, v10);
  v32 = a2 * v31;
  if ((a2 * v31) >> 64 != (a2 * v31) >> 63)
  {
    __break(1u);
    goto LABEL_34;
  }

  v33 = *(v122 + 8);
  v30 = v121;
  v110 = v122 + 8;
  v111 = a2;
  v109 = v33;
  v34 = v33();
  if (v34 + 0x4000000000000000 < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v120 = a1;
  v35 = v32 + 2 * v34;
  if (__OFADD__(v32, 2 * v34))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v36 = *(*(a10 + 8) + 8);
  v37 = v114;
  if (dispatch thunk of Collection.count.getter() != v35)
  {
    v123 = 0;
    v124 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);
    v123 = a4;
    v124 = v121;
    v125 = v10;
    v126 = v122;
    type metadata accessor for PINEPrepareShare();
    v66 = _typeName(_:qualified:)();
    v67 = v37;
    v69 = v68;

    v123 = v66;
    v124 = v69;
    MEMORY[0x2743B25F0](0x6572697571657220, 0xEB00000000203A64);
    v127 = v35;
    v70 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v70);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    v71 = v120;
    v127 = dispatch thunk of Collection.count.getter();
    v72 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v72);

    v73 = v123;
    v74 = v124;
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v75 = v73;
    v75[1] = v74;
    swift_willThrow();
    return (*(v115 + 8))(v71, v67);
  }

  (*(v115 + 16))(v26, v120, v37);
  v38 = *(v36 + 8);
  a1 = ArraySlice.init<A>(_:)();
  v40 = v39;
  v42 = v41;
  v108 = v43;
  v32 = v112;
  v44 = v112(a4, v10);
  v30 = v44 * v111;
  if ((v44 * v111) >> 64 != (v44 * v111) >> 63)
  {
    goto LABEL_36;
  }

  v107 = v10;
  v45 = a1;
  v46 = a1;
  v47 = v108;
  v48 = specialized Collection.prefix(_:)(v44 * v111, v46, v40, v42, v108);
  v106 = v49;
  v50 = v40;
  v52 = v51;
  v53 = v42;
  v55 = v54;
  v108 = specialized Collection.dropFirst(_:)(v30, v45, v50, v53, v47);
  v105 = v56;
  v104 = v57;
  v103 = v58;
  v123 = v48;
  v124 = v106;
  v125 = v52;
  v126 = v55;
  v59 = TupleTypeMetadata3;
  v60 = *(TupleTypeMetadata3 + 48);
  v61 = *(TupleTypeMetadata3 + 64);
  (*(*(AssociatedTypeWitness - 8) + 56))(v21, 1, 1);
  *&v21[v60] = v111;
  swift_unknownObjectRetain();
  *&v21[v61] = v112(a4, v107);
  (*(*(v59 - 8) + 56))(v21, 0, 1, v59);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVys5UInt8VGMd, "xq");
  v63 = lazy protocol witness table accessor for type ArraySlice<UInt8> and conformance ArraySlice<A>();
  v64 = v119;
  v65 = Array<A>.init<A>(from:parameter:)(&v123, v21, a4, v62, v118, v63);
  if (v64)
  {
    (*(v115 + 8))(v120, v114);
    return swift_unknownObjectRelease();
  }

  v118 = v65;
  v76 = v109();
  v77 = v108;
  v78 = v105;
  v79 = v104;
  v80 = v103;
  v30 = specialized Collection.prefix(_:)(v76, v108, v105, v104, v103);
  AssociatedTypeWitness = v81;
  v119 = v82;
  v32 = v83;
  v10 = specialized Collection.dropFirst(_:)(v76, v77, v78, v79, v80);
  v29 = v84;
  a1 = v85;
  v21 = v86;
  if (v32)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v89 = swift_dynamicCastClass();
    if (!v89)
    {
      swift_unknownObjectRelease();
      v89 = MEMORY[0x277D84F90];
    }

    v90 = *(v89 + 16);

    if (!__OFSUB__(v32 >> 1, v119))
    {
      if (v90 != (v32 >> 1) - v119)
      {
        goto LABEL_39;
      }

      v88 = swift_dynamicCastClass();
      swift_unknownObjectRelease_n();
      if (v88)
      {
        goto LABEL_21;
      }

      v88 = MEMORY[0x277D84F90];
      goto LABEL_20;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  swift_unknownObjectRetain();
  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v30, AssociatedTypeWitness, v119, v32);
    v88 = v87;
LABEL_20:
    swift_unknownObjectRelease();
LABEL_21:
    v119 = v88;
    v91 = v109();
    v30 = specialized Collection.prefix(_:)(v91, v10, v29, a1, v21);
    v122 = v92;
    v94 = v93;
    v32 = v95;
    v29 = specialized Collection.dropFirst(_:)(v91, v10, v29, a1, v21);
    if ((v32 & 1) == 0)
    {
      swift_unknownObjectRetain();
      v96 = v120;
LABEL_23:
      specialized _copyCollectionToContiguousArray<A>(_:)(v30, v122, v94, v32);
      v98 = v97;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      result = (*(v115 + 8))(v96, v114);
      goto LABEL_31;
    }

    a1 = type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v99 = swift_dynamicCastClass();
    v96 = v120;
    if (!v99)
    {
      swift_unknownObjectRelease();
      v99 = MEMORY[0x277D84F90];
    }

    v10 = *(v99 + 16);

    if (!__OFSUB__(v32 >> 1, v94))
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    swift_unknownObjectRelease_n();
  }

  if (v10 != (v32 >> 1) - v94)
  {
    swift_unknownObjectRelease_n();
    goto LABEL_23;
  }

  v98 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v98)
  {
    swift_unknownObjectRelease();
    v98 = MEMORY[0x277D84F90];
  }

  (*(v115 + 8))(v96, v114);
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
LABEL_31:
  v100 = v113;
  v101 = v119;
  *v113 = v118;
  v100[1] = v101;
  v100[2] = v98;
  return result;
}

uint64_t static PINEPrepareShare.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = *(*(a5 + 8) + 8);
  if ((static Array<A>.== infix(_:_:)() & 1) == 0 || (specialized static Seed.== infix(_:_:)(v6, v9) & 1) == 0)
  {
    return 0;
  }

  return specialized static Seed.== infix(_:_:)(v7, v10);
}

uint64_t PINEPrepareShare.encodedLength.getter(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v13 = *v1;
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  result = Collection<>.encodedLength.getter(v6, WitnessTable, *(*(a1 + 32) + 40));
  v9 = *(v3 + 16);
  v10 = __OFADD__(result, v9);
  v11 = result + v9;
  if (v10)
  {
    __break(1u);
    goto LABEL_5;
  }

  v12 = *(v4 + 16);
  result = v11 + v12;
  if (__OFADD__(v11, v12))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t PINEPrepareShare.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[1];
  v10 = v4[2];
  v15 = *v4;
  v11 = *(a2 + 16);
  v12 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  Collection<>.encode<A>(into:)(a1, v12, a3, WitnessTable, a4, *(*(a2 + 32) + 40));
  Seed.encode<A>(into:)();
  return Seed.encode<A>(into:)();
}

uint64_t type metadata instantiation function for PINEPrepareShare()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Preamble.shard<A>(_:nonce:seedBytes:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v105 = a3;
  v107 = a2;
  v101 = a1;
  v118 = a7;
  v11 = *(*(a7 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for PartialRangeFrom();
  v110 = *(v14 - 8);
  v111 = v14;
  v15 = *(v110 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v109 = v98 - v17;
  v116 = swift_getAssociatedTypeWitness();
  v122 = *(v116 - 8);
  v18 = *(v122 + 64);
  MEMORY[0x28223BE20](v116, v19);
  v115 = v98 - v20;
  v117 = AssociatedConformanceWitness;
  v21 = type metadata accessor for PartialRangeUpTo();
  v113 = *(v21 - 1);
  v114 = v21;
  v22 = *(v113 + 64);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v26 = v98 - v25;
  v123 = AssociatedTypeWitness;
  v124 = *(AssociatedTypeWitness - 8);
  v27 = *(v124 + 64);
  v29 = MEMORY[0x28223BE20](v24, v28);
  v31 = v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v32);
  v119 = v98 - v33;
  v34 = v8[1];
  v103 = *v8;
  v102 = v34;
  v35 = dispatch thunk of Collection.count.getter();
  v36 = a5[4];
  v106 = a5;
  v104 = a5[8];
  v37 = *(v104 + 8);
  v38 = *(v37 + 8);
  v120 = v36;
  v121 = v37;
  result = v38();
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v35 != 2 * result)
  {
    v64 = dispatch thunk of Collection.count.getter();
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v65 + 8) = 0;
    *(v65 + 16) = 0;
    *v65 = v64;
    *(v65 + 24) = 1;
    swift_willThrow();
    return a4;
  }

  dispatch thunk of Collection.startIndex.getter();
  v38();
  v40 = v119;
  v108 = a4;
  dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
  v41 = v123;
  v42 = v124;
  v43 = *(v124 + 8);
  v100 = v124 + 8;
  v99 = v43;
  v43(v31, v123);
  v44 = *(v117 + 8);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    goto LABEL_11;
  }

  v45 = *(v42 + 16);
  v124 = v42 + 16;
  v98[0] = v45;
  v45(v26, v40, v41);
  v98[1] = v44;
  v46 = v114;
  swift_getWitnessTable();
  v47 = v115;
  Collection.subscript.getter();
  (*(v113 + 8))(v26, v46);
  v48 = v116;
  v49 = *(swift_getAssociatedConformanceWitness() + 8);
  v50 = specialized Data.init<A>(_:)(v47, v48, v49);
  v117 = v51;
  v118 = v50;
  v52 = v122 + 8;
  v114 = *(v122 + 8);
  v114(v47, v48);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v122 = v52;
    v53 = v109;
    (v98[0])(v109, v40, v123);
    v54 = v111;
    swift_getWitnessTable();
    Collection.subscript.getter();
    (*(v110 + 8))(v53, v54);
    v55 = specialized Data.init<A>(_:)(v47, v48, v49);
    v57 = v56;
    v114(v47, v48);
    v59 = v117;
    v58 = v118;
    outlined copy of Data._Representation(v118, v117);
    v126 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v58, v59);
    a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    v60 = lazy protocol witness table accessor for type [UInt8] and conformance [A]();
    v62 = v120;
    v61 = v121;
    v63 = v112;
    PreambleInputShare.init<A>(from:)(&v126, v120, a4, v121, v60, v125);
    if (v63)
    {
      v99(v40, v123);
      outlined consume of Data._Representation(v118, v59);
      outlined consume of Data._Representation(v55, v57);
    }

    else
    {
      v66 = v125[0];
      outlined copy of Data._Representation(v55, v57);
      v122 = v55;
      v124 = v57;
      v126 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v55, v57);
      PreambleInputShare.init<A>(from:)(&v126, v62, a4, v61, v60, v125);
      v115 = v125[0];
      v116 = v66;
      LOBYTE(v125[0]) = 0;
      v67 = v106;
      WitnessTable = swift_getWitnessTable();
      v69 = static VDAFProtocol.domainSeparationTag(usage:)(v125, v67, WitnessTable);
      v70 = v67[2];
      v71 = v67[5];
      v72 = v104;
      v73 = DPFGenerator.init(dimensionBitCount:blockSize:domainSeparationTag:)(v103, v102, v69, v70, v62, v71, v104);
      v113 = v74;
      v114 = v73;
      v76 = v75;

      v78 = v62;
      v79 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v77);
      v81 = v80;

      v97 = v72;
      v95 = v70;
      v96 = v78;
      v94 = v76;
      v82 = v117;
      v83 = v118;
      v84 = v122;
      v85 = v124;
      DPFGenerator.generate<A>(for:seedForParty0:seedForParty1:using:)(v107, v118, v117, v122, v124, v79, v81, v114, v125, v113, v94, v95, v96, v67[3], v71, v97, *(v67[6] + 8));

      outlined consume of Data._Representation(v79, v81);
      *v101 = *v125;
      type metadata accessor for PreambleInputShare();
      type metadata accessor for _ContiguousArrayStorage();
      swift_allocObject();
      v86 = static Array._adoptStorage(_:count:)();
      v87 = v115;
      *v88 = v116;
      v88[1] = v87;
      v125[0] = v86;
      v89 = type metadata accessor for Array();
      destructiveProjectEnumData for SeedCtrlUnadjustedError(v89, v90, v91, v92, v93);
      a4 = v125[0];
      outlined consume of Data._Representation(v84, v85);
      outlined consume of Data._Representation(v83, v82);
      v99(v119, v123);
    }

    return a4;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t Preamble.publicShare<A>(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23[1] = a5;
  v24 = a4;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v13 = v5[1];
  v15 = v5[2];
  v17 = *(v16 + 32);
  result = (*(*(*(v16 + 64) + 8) + 8))();
  v19 = 63 - __clz(v13);
  v20 = __OFSUB__(v14, v19);
  v21 = v14 - v19;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    v22 = result;
    (*(v9 + 16))(v12, a1, a3);
    v25[0] = v15;
    v25[1] = v22;
    v25[2] = v13;
    v25[3] = v21;
    v26 = 0;
    return PreamblePublicShare.init<A>(from:parameter:)(v12, v25, *(a2 + 16), a3, *(a2 + 40), v24);
  }

  return result;
}

uint64_t Preamble.inputShare<A>(from:aggregatorID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v9 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1, a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  return PreambleInputShare.init<A>(from:)(v11, *(a2 + 32), a3, *(*(a2 + 64) + 8), a4, a5);
}

void Preamble.prepareInit(verifyKey:aggregatorID:nonce:publicShare:inputShare:parameter:)(void *a1, uint64_t a2, uint64_t a3, Swift::Int a4, uint64_t a5, __int128 *a6, uint64_t *a7, uint64_t a8, void *a9)
{
  v44 = a5;
  v40 = *a6;
  v11 = *a7;
  v13 = *v9;
  v12 = v9[1];
  v14 = v9[2];
  v43[0] = *v9;
  v43[1] = v12;
  v43[2] = v14;
  WitnessTable = swift_getWitnessTable();
  VDAFProtocol.assertValidAggregatorID(_:)(a4);
  if (!v16)
  {
    if (!a4)
    {
      v19 = 0;
      v17 = v12;
      v18 = v13;
      goto LABEL_6;
    }

    if (a4 == 1)
    {
      v17 = v12;
      v18 = v13;
      v19 = 1;
LABEL_6:
      LOBYTE(v41[0]) = v19;
      LOBYTE(v43[0]) = 0;
      v20 = static VDAFProtocol.domainSeparationTag(usage:)(v43, a9, WitnessTable);
      v21 = a9[2];
      v22 = a9[4];
      v23 = a9[5];
      v24 = a9[8];
      DPFEvaluator.init(evaluatorId:dimensionBitCount:keptBlockCount:blockSize:domainSeparationTag:)(v41, v18, v14, v17, v20, v43);

      v26 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v25);
      v28 = v27;

      v30 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v29);
      v32 = v31;

      *v42 = v40;
      v44 = v21;
      v41[0] = v21;
      v41[1] = v22;
      v41[2] = v23;
      v41[3] = v24;
      v33 = type metadata accessor for DPFEvaluator();
      v34 = DPFEvaluator.evaluateAll(seed:nonce:publicShare:)(v26, v28, v30, v32, v42, v33);
      outlined consume of Data._Representation(v30, v32);
      outlined consume of Data._Representation(v26, v28);

      v35 = v34;
      v36 = v44;
      OutputShare.init(_:)(v35, v43);
      PreamblePrepareState.init(outputShare:)(v43, a1);
      PreamblePrepareShare.init()(v36, v23);
      return;
    }

    _StringGuts.grow(_:)(22);

    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v37);

    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v38 = 0xD000000000000014;
    *(v38 + 8) = 0x8000000270C536C0;
    *(v38 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t Preamble.prepareState<A>(from:aggregatorID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v12 + 40);
  v15 = type metadata accessor for PreamblePrepareState();
  (*(v8 + 16))(v11, a1, a4);
  return VDAFDecodable.init<A>(from:)(v11, v15, a4, &protocol witness table for PreamblePrepareState<A>, a5);
}

uint64_t Preamble.prepareMessage<A>(from:aggregatorID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](a1, a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  return PreamblePrepareMessage.init<A>(from:parameter:)(v7, 1, a4);
}

uint64_t Preamble.prepareNext(state:message:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 8) = 1;
}

uint64_t Preamble.init(dimensionBitCount:blockSize:keptBlockCount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 1 || a2 < 1 || ((a2 + 0x7FFFFFFFFFFFFFFFLL) & a2) != 0 || result > 0x3F || 1 << result < a2 || a3 < 1 || (1 << result) / a2 < a3)
  {
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *v4 = 0;
    *(v4 + 24) = 12;
    return swift_willThrow();
  }

  else
  {
    *a4 = result;
    a4[1] = a2;
    a4[2] = a3;
  }

  return result;
}

uint64_t Preamble.prepareShare<A>(from:aggregatorID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v12 + 40);
  v15 = type metadata accessor for PreamblePrepareShare();
  (*(v8 + 16))(v11, a1, a4);
  return VDAFDecodable.init<A>(from:)(v11, v15, a4, &protocol witness table for PreamblePrepareShare<A>, a5);
}

uint64_t Preamble.aggregate<A>(_:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24[2] = a1;
  v24[1] = a6;
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  v17 = *(v16 + 40);
  v18 = *(v17 + 8);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v19 = 1 << v15;
  if (v15 >= 0x40)
  {
    v19 = 0;
  }

  if (v15 <= 0x40)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = specialized Array.init(repeating:count:)(v14, v20, v10);
  (*(v11 + 8))(v14, v10);
  AggregateShare.init(_:)(v21, &v31);
  v24[6] = v10;
  v25 = *(a3 + 24);
  v26 = a4;
  v27 = v17;
  v28 = *(a3 + 48);
  v29 = *(a3 + 64);
  v30 = a5;
  type metadata accessor for AggregateShare();
  v22 = *(*(*(a5 + 8) + 8) + 8);
  return Sequence.reduce<A>(into:_:)();
}

uint64_t closure #2 in Preamble.unshard<A>(_:numOfMeasurements:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v26 = a6;
  v27 = a8;
  v24 = a4;
  v25 = a5;
  v28 = a9;
  v29 = a2;
  v14 = *(a3 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](a1, a2);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v16;
  v21 = *(v20 + 8);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v30 = a3;
  v31 = v24;
  v32 = v25;
  v33 = v26;
  v34 = a7;
  v35 = v27;
  v36 = a10;
  v37 = a11;
  v38 = a12;
  v39 = v19;
  v22 = *(*(*(a12 + 8) + 8) + 8);
  Sequence.reduce<A>(_:_:)();
  return (*(v14 + 8))(v18, a3);
}

uint64_t closure #1 in closure #2 in Preamble.unshard<A>(_:numOfMeasurements:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1, a2);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v23 - v17;
  v20 = *v19;
  Array.subscript.getter();
  (*(v11 + 16))(v15, a1, a4);
  FieldElement.init(other:)(v15, a4, a8);
  v21 = *(a8 + 8);
  dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
  return (*(v11 + 8))(v18, a4);
}

uint64_t closure #3 in Preamble.unshard<A>(_:numOfMeasurements:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v30 = a4;
  v31 = a6;
  v29 = a7;
  v14 = *(a2 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Optional();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v28 - v22;
  (*(v14 + 16))(v17, a1, a2);
  SignedInteger<>.init<A>(fieldElement:)(v17, a3, a2, a5, v30, v23);
  v24 = *(a3 - 8);
  if ((*(v24 + 48))(v23, 1, a3) != 1)
  {
    return (*(v24 + 32))(v29, v23, a3);
  }

  (*(v19 + 8))(v23, v18);
  lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
  v25 = swift_allocError();
  *(v26 + 8) = 0;
  *(v26 + 16) = 0;
  *v26 = 1;
  *(v26 + 24) = 12;
  result = swift_willThrow();
  *a10 = v25;
  return result;
}

uint64_t Preamble.outputShare<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, uint64_t, void, uint64_t, void, uint64_t))
{
  v9 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1, a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  return a5(v11, 1, *(a2 + 16), a3, *(a2 + 40), a4);
}

uint64_t protocol witness for Collector.unshard<A>(_:numOfMeasurements:parameter:) in conformance Preamble<A, B, C>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, uint64_t *a6@<X8>)
{
  result = specialized Preamble.unshard<A>(_:numOfMeasurements:parameter:)(a1, a2, a5, a3, a4);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t closure #2 in Data.init<A>(_:)@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = specialized Data.InlineData.init(_:)(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = type metadata accessor for __DataStorage();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t closure #3 in Data.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  v12 = a5;
  v13 = a3;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(MEMORY[0x277D84B78], partial apply for closure #1 in closure #3 in Data.init<A>(_:), v10, a1, a2, MEMORY[0x277D84B78], MEMORY[0x277D84A98], TupleTypeMetadata2, MEMORY[0x277D84AC0], v9);
}

uint64_t closure #1 in closure #3 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v12 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v8 + 16))(v11, a3, a4);
  result = dispatch thunk of Sequence._copyContents(initializing:)();
  *(a5 + v12) = result;
  return result;
}

uint64_t _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a7 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](a1, a2);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14, v17);
  v24 = v26 - v23;
  if (v19)
  {
    v25 = *(*(v21 - 8) + 72);
    if (v25)
    {
      if (v20 - v19 != 0x8000000000000000 || v25 != -1)
      {
        result = v22(v19, (v20 - v19) / v25, v16);
        if (!v10)
        {
          return result;
        }

        return (*(v12 + 32))(a10, v16, a7);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  result = v22(0, 0, v26 - v23);
  v16 = v24;
  if (v10)
  {
    return (*(v12 + 32))(a10, v16, a7);
  }

  return result;
}

uint64_t specialized Data.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = *MEMORY[0x277D85DE8];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(*(TupleTypeMetadata2 - 8) + 64);
  v10 = MEMORY[0x28223BE20](TupleTypeMetadata2, v9);
  v12 = &v36 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v10, v15);
  v18 = &v36 - v17;
  v19 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v16, v20);
  (*(v22 + 16))(&v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ContiguousBytes(v39, &v41);
    __swift_project_boxed_opaque_existential_1(&v41, v42);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v39[0] = v38;
    __swift_destroy_boxed_opaque_existential_1(&v41);
    goto LABEL_34;
  }

  v40 = 0;
  memset(v39, 0, sizeof(v39));
  outlined destroy of ContiguousBytes?(v39);
  dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
  if (*(&v41 + 1) >> 60 != 15)
  {
    v39[0] = v41;
    goto LABEL_34;
  }

  v37 = v41;
  v23 = dispatch thunk of Sequence.underestimatedCount.getter();
  *&v39[0] = specialized Data.init(count:)(v23);
  *(&v39[0] + 1) = v24;
  MEMORY[0x28223BE20](*&v39[0], v24);
  *(&v36 - 4) = a2;
  *(&v36 - 3) = a3;
  *(&v36 - 2) = a1;
  Data._Representation.withUnsafeMutableBytes<A>(_:)();
  v25 = *&v12[*(TupleTypeMetadata2 + 48)];
  (*(v13 + 32))(v18, v12, AssociatedTypeWitness);
  v26 = *(&v39[0] + 1) >> 62;
  if ((*(&v39[0] + 1) >> 62) <= 1)
  {
    if (v26)
    {
      if (__OFSUB__(DWORD1(v39[0]), v39[0]))
      {
        goto LABEL_38;
      }

      if (v25 == DWORD1(v39[0]) - LODWORD(v39[0]))
      {
        goto LABEL_20;
      }
    }

    else if (v25 == BYTE14(v39[0]))
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  if (v26 == 2)
  {
    v28 = *(*&v39[0] + 16);
    v27 = *(*&v39[0] + 24);
    v29 = __OFSUB__(v27, v28);
    v30 = v27 - v28;
    if (v29)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    if (v25 == v30)
    {
      goto LABEL_20;
    }

LABEL_15:
    if (v26 == 2)
    {
      v31 = *(*&v39[0] + 24);
    }

    else if (v26 == 1)
    {
      v31 = *&v39[0] >> 32;
    }

    else
    {
      v31 = BYTE14(v39[0]);
    }

LABEL_31:
    if (v31 >= v25)
    {
      Data._Representation.replaceSubrange(_:with:count:)();
LABEL_33:
      (*(v13 + 8))(v18, AssociatedTypeWitness);
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  if (v25)
  {
    v31 = 0;
    goto LABEL_31;
  }

LABEL_20:
  swift_getAssociatedConformanceWitness();
  *&v41 = 0;
  *(&v41 + 7) = 0;
  dispatch thunk of IteratorProtocol.next()();
  if (BYTE1(v38) == 1)
  {
    goto LABEL_28;
  }

  LOBYTE(v32) = 0;
  do
  {
    *(&v41 + v32) = v38;
    v32 = v32 + 1;
    if ((v32 >> 8))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v32 == 14)
    {
      *&v38 = v41;
      *(&v38 + 6) = *(&v41 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v32) = 0;
    }

    dispatch thunk of IteratorProtocol.next()();
  }

  while ((BYTE1(v38) & 1) == 0);
  if (v32)
  {
    *&v38 = v41;
    *(&v38 + 6) = *(&v41 + 6);
    Data._Representation.append(contentsOf:)();
    outlined consume of Data._Representation?(v37, *(&v37 + 1));
    goto LABEL_33;
  }

LABEL_28:
  (*(v13 + 8))(v18, AssociatedTypeWitness);
  outlined consume of Data._Representation?(v37, *(&v37 + 1));
LABEL_34:
  v33 = v39[0];
  outlined copy of Data._Representation(*&v39[0], *(&v39[0] + 1));
  outlined consume of Data._Representation(v33, *(&v33 + 1));
  v34 = *MEMORY[0x277D85DE8];
  return v33;
}

uint64_t specialized Preamble.randomSizeForShard.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = (*(*(a7 + 8) + 8))(a3);
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    result *= 2;
  }

  return result;
}

uint64_t specialized Preamble.unshard<A>(_:numOfMeasurements:parameter:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v12 = *v7;
  v13 = *(*(a5 + 8) + 8);
  if (dispatch thunk of Collection.count.getter() != 2)
  {
    a1 = dispatch thunk of Collection.count.getter();
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v38 + 8) = 0;
    *(v38 + 16) = 0;
    *v38 = a1;
    *(v38 + 24) = 0;
LABEL_12:
    swift_willThrow();
    return a1;
  }

  v15 = 1 << v12;
  if (v12 >= 0x40)
  {
    v15 = 0;
  }

  if (v12 <= 0x40)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  MEMORY[0x28223BE20](2, v14);
  v18 = a3[2];
  v17 = a3[3];
  v41 = v18;
  v42 = v17;
  v57 = v17;
  v19 = a3[4];
  v53 = a3[5];
  v54 = v19;
  v43 = v19;
  v44 = a4;
  v20 = a3[6];
  v21 = a3[7];
  v45 = v53;
  v46 = v20;
  v56 = v20;
  v22 = a3[8];
  v23 = v21;
  v47 = v21;
  v48 = v22;
  v55 = v22;
  v49 = a5;
  v50 = v16;
  v24 = *(v13 + 8);
  result = Sequence.allSatisfy(_:)();
  if ((result & 1) == 0)
  {
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v39 + 8) = 0;
    *(v39 + 16) = 0;
    *v39 = 2;
    *(v39 + 24) = 12;
    goto LABEL_12;
  }

  if ((v16 & 0x8000000000000000) == 0)
  {
    v52 = v51;
    v58 = 0;
    v59 = v16;
    MEMORY[0x28223BE20](result, v26);
    v41 = v18;
    v42 = v57;
    v27 = v53;
    v28 = v54;
    v43 = v54;
    v44 = a4;
    v45 = v53;
    v46 = v56;
    v51[0] = v23;
    v47 = v23;
    v48 = v55;
    v49 = a5;
    v50 = a1;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    v30 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    v32 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in Preamble.unshard<A>(_:numOfMeasurements:parameter:), v40, v29, v18, MEMORY[0x277D84A98], v30, MEMORY[0x277D84AC0], v31);
    v51[1] = v6;
    v52 = v51;
    v58 = v32;
    MEMORY[0x28223BE20](v32, v33);
    v34 = v57;
    v41 = v18;
    v42 = v57;
    v43 = v28;
    v44 = a4;
    v45 = v27;
    v46 = v56;
    v47 = v51[0];
    v48 = v55;
    v49 = a5;
    v35 = type metadata accessor for Array();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    WitnessTable = swift_getWitnessTable();
    a1 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in Preamble.unshard<A>(_:numOfMeasurements:parameter:), v40, v35, v34, v36, WitnessTable, MEMORY[0x277D84950], &v60);

    return a1;
  }

  __break(1u);
  return result;
}

unint64_t instantiation function for generic protocol witness table for PreambleError(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
  result = lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
  *(a1 + 16) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_4VDAF13PreambleErrorO(uint64_t a1)
{
  if ((*(a1 + 24) & 0xFu) <= 0xB)
  {
    return *(a1 + 24) & 0xF;
  }

  else
  {
    return (*a1 + 12);
  }
}

uint64_t getEnumTagSinglePayload for PreambleError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 25))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 24);
  if (v3 <= 0xC)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PreambleError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 244;
    if (a3 >= 0xF4)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
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

uint64_t destructiveInjectEnumTag for PreambleError(uint64_t result, unsigned int a2)
{
  v2 = a2 - 12;
  if (a2 >= 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 12;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t type metadata instantiation function for Preamble()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t partial apply for closure #3 in Preamble.unshard<A>(_:numOfMeasurements:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3[4];
  v5 = v3[5];
  return closure #3 in Preamble.unshard<A>(_:numOfMeasurements:parameter:)(a1, v3[2], v3[3], v3[6], v3[7], v3[8], a3, v3[9], v3[10], a2);
}

uint64_t partial apply for closure #1 in closure #2 in Preamble.unshard<A>(_:numOfMeasurements:parameter:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  v4 = *(v2 + 56);
  return closure #1 in closure #2 in Preamble.unshard<A>(_:numOfMeasurements:parameter:)(a1, a2, *(v2 + 88), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48));
}

uint64_t outlined destroy of ContiguousBytes?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pSgMd, &_s10Foundation15ContiguousBytes_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined consume of Data._Representation?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined init with take of ContiguousBytes(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t _s4VDAF17VDAFErrorProtocolPAAE2eeoiySbx_xtFZAA16VDAFCodableErrorO_Tt1B5()
{
  v0 = specialized VDAFErrorProtocol.value.getter();
  v2 = v1;
  v3 = specialized VDAFErrorProtocol.value.getter();
  if (v2)
  {
    if (v4)
    {
      if (v0 == v3 && v2 == v4)
      {

        v5 = 1;
      }

      else
      {
        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    if (!v4)
    {
      v5 = 1;
      return v5 & 1;
    }

    v5 = 0;
  }

  return v5 & 1;
}

uint64_t _s4VDAF17VDAFErrorProtocolPAAE2eeoiySbx_xtFZAA0B0O_Tt1B5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  v11 = specialized VDAFErrorProtocol.value.getter(a1, a2, a3, a7);
  v13 = v12;
  v14 = specialized VDAFErrorProtocol.value.getter(a4, a5, a6, a7);
  if (v13)
  {
    if (v15)
    {
      if (v11 == v14 && v13 == v15)
      {

        v16 = 1;
      }

      else
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    if (!v15)
    {
      v16 = 1;
      return v16 & 1;
    }

    v16 = 0;
  }

  return v16 & 1;
}

uint64_t _s4VDAF17VDAFErrorProtocolPAAE2eeoiySbx_xtFZAA20InnerCorrectionErrorO_Tt1g5()
{
  v0 = specialized VDAFErrorProtocol.value.getter();
  v2 = v1;
  v3 = specialized VDAFErrorProtocol.value.getter();
  if (v2)
  {
    if (v4)
    {
      if (v0 == v3 && v2 == v4)
      {

        v5 = 1;
      }

      else
      {
        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    if (!v4)
    {
      v5 = 1;
      return v5 & 1;
    }

    v5 = 0;
  }

  return v5 & 1;
}

uint64_t _s4VDAF17VDAFErrorProtocolPAAE2eeoiySbx_xtFZAA23CorrectionMissingReasonO_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  v11 = a7();
  v13 = v12;
  v14 = (a7)(a4, a5, a6);
  if (v13)
  {
    if (v15)
    {
      if (v11 == v14 && v13 == v15)
      {

        v16 = 1;
      }

      else
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    if (!v15)
    {
      v16 = 1;
      return v16 & 1;
    }

    v16 = 0;
  }

  return v16 & 1;
}

uint64_t _s4VDAF17VDAFErrorProtocolPAAE2eeoiySbx_xtFZAA23SeedCtrlUnadjustedErrorO_Tt1g5Tm()
{
  v0 = specialized VDAFErrorProtocol.value.getter();
  v2 = v1;
  v3 = specialized VDAFErrorProtocol.value.getter();
  if (v2)
  {
    if (v4)
    {
      if (v0 == v3 && v2 == v4)
      {

        v5 = 1;
      }

      else
      {
        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    if (!v4)
    {
      v5 = 1;
      return v5 & 1;
    }

    v5 = 0;
  }

  return v5 & 1;
}

uint64_t _s4VDAF17VDAFErrorProtocolPAAE2eeoiySbx_xtFZAA13PreambleErrorO_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void))
{
  v13 = specialized VDAFErrorProtocol.value.getter(a1, a2, a3, a4, a9);
  v15 = v14;
  v16 = specialized VDAFErrorProtocol.value.getter(a5, a6, a7, a8, a9);
  if (v15)
  {
    if (v17)
    {
      if (v13 == v16 && v15 == v17)
      {

        v19 = 1;
      }

      else
      {
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    if (!v17)
    {
      v19 = 1;
      return v19 & 1;
    }

    v19 = 0;
  }

  return v19 & 1;
}

uint64_t specialized VDAFErrorProtocol.value.getter()
{

  String.init<A>(describing:)();
  lazy protocol witness table accessor for type String and conformance String();
  v0 = StringProtocol.components<A>(separatedBy:)();

  if (v0[2])
  {
    v1 = v0[4];
    v2 = v0[5];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

{
  String.init<A>(describing:)();
  lazy protocol witness table accessor for type String and conformance String();
  v0 = StringProtocol.components<A>(separatedBy:)();

  if (v0[2])
  {
    v1 = v0[4];
    v2 = v0[5];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

{
  String.init<A>(describing:)();
  lazy protocol witness table accessor for type String and conformance String();
  v0 = StringProtocol.components<A>(separatedBy:)();

  if (v0[2])
  {
    v1 = v0[4];
    v2 = v0[5];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

{
  String.init<A>(describing:)();
  lazy protocol witness table accessor for type String and conformance String();
  v0 = StringProtocol.components<A>(separatedBy:)();

  if (v0[2])
  {
    v1 = v0[4];
    v2 = v0[5];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

{
  String.init<A>(describing:)();
  lazy protocol witness table accessor for type String and conformance String();
  v0 = StringProtocol.components<A>(separatedBy:)();

  if (v0[2])
  {
    v1 = v0[4];
    v2 = v0[5];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t specialized VDAFErrorProtocol.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5();
  String.init<A>(describing:)();
  lazy protocol witness table accessor for type String and conformance String();
  v5 = StringProtocol.components<A>(separatedBy:)();

  if (v5[2])
  {
    v6 = v5[4];
    v7 = v5[5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t specialized VDAFErrorProtocol.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  String.init<A>(describing:)();
  lazy protocol witness table accessor for type String and conformance String();
  v4 = StringProtocol.components<A>(separatedBy:)();

  if (v4[2])
  {
    v5 = v4[4];
    v6 = v4[5];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

VDAF::EvaluatorID_optional __swiftcall EvaluatorID.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

_BYTE *DPFEvaluator.init(evaluatorId:dimensionBitCount:keptBlockCount:blockSize:domainSeparationTag:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = *result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  v6 = 63 - __clz(a4);
  v7 = __OFSUB__(a2, v6);
  v8 = a2 - v6;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(a6 + 32) = v8;
    *(a6 + 40) = a5;
  }

  return result;
}

void *DPFEvaluator.evaluateAll(seed:nonce:publicShare:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6)
{
  v18 = a5[1];
  v10 = *v6;
  v11 = *(v6 + 1);
  v12 = *(v6 + 2);
  v14 = *(v6 + 3);
  v13 = *(v6 + 4);
  v15 = *(v6 + 5);
  v16 = DPFEvaluator.evaluateAllInternal(seed:nonce:innerCorrections:untilLevel:)(a1, a2, a3, a4, *a5, 0, 1uLL);
  if (!v7)
  {
    v13 = DPFEvaluator.evaluateLeaves(inputs:nonce:leafCorrections:)(v16, a3, a4, v18, a6);
  }

  return v13;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance EvaluatorID@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t DPFEvaluator.evaluateAllInternal(seed:nonce:innerCorrections:untilLevel:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = v8;
  v14 = *v7;
  v15 = *(v7 + 2);
  v16 = *(v7 + 4);
  v124 = *(v7 + 5);
  v17 = *_emptyDequeStorage.unsafeMutableAddressor();
  v161 = v17;
  LOBYTE(v153[0]) = v14;

  v125 = v15;
  v18 = specialized static EvaluatorLevelInput.makeRootInput(for:keptBlockCount:seed:)(v153, v15, a1, a2);
  v136 = v19;
  v137 = v20;
  v138 = v21;
  v22 = v17[3];
  v23 = v22 + 1;
  if (__OFADD__(v22, 1))
  {
    goto LABEL_143;
  }

  v24 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (v17[2] < v23 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized Deque._Storage._ensureUnique(isUnique:minimumCapacity:linearGrowth:)(isUniquelyReferenced_nonNull_native, v23, 0);
    v17 = v161;
  }

  specialized closure #1 in Deque.append(_:)(v17 + 2, (v17 + 5), v24, v136, v137, v138);
  if (a7)
  {
    v22 = v16;
  }

  else
  {
    v22 = a6;
  }

  if (v22 > -65 && v22 < 65)
  {
    if ((v22 & 0x8000000000000000) != 0)
    {
      goto LABEL_157;
    }

    if (v22 != 64)
    {
      v27 = 1 << v22;
      goto LABEL_16;
    }
  }

  v26 = v17[3];
  if ((v26 & 0x8000000000000000) == 0)
  {
LABEL_120:

    if (v26)
    {
      a7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(a7 + 16) = v26;
    }

    else
    {
      a7 = MEMORY[0x277D84F90];
    }

    v153[1] = v26;
    v154 = 0;
    v153[0] = a7 + 32;
    specialized closure #1 in closure #1 in Deque._copyToContiguousArray()(v17 + 2, (v17 + 5), v153, &v154);
    v22 = v154;
    if (v26 >= v154)
    {
      *(a7 + 16) = v154;

      outlined consume of Data._Representation(v136, v137);

      return a7;
    }

LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      if (v22 == -64)
      {
LABEL_162:
        v26 = v17[3];
        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_120;
        }

        v27 = 0;
        if (v26 < 1)
        {
          goto LABEL_118;
        }
      }

      else
      {
        v27 = 0;
LABEL_16:
        v26 = v17[3];
        if (v26 >= v27)
        {
LABEL_119:
          if ((v26 & 0x8000000000000000) == 0)
          {
            goto LABEL_120;
          }

          goto LABEL_145;
        }

        if (v26 < 1)
        {
          goto LABEL_118;
        }
      }

LABEL_18:
      v118 = v27;
      while (1)
      {
        v17 = v161;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized Deque._Storage._makeUniqueCopy()();
          v17 = v161;
        }

        v28 = v17[4];
        v22 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        v29 = &v17[4 * v28];
        v31 = v29[5];
        v30 = v29[6];
        v32 = v29[7];
        a7 = v29[8];
        v33 = v17[3];
        if (v22 >= v17[2])
        {
          v22 = 0;
        }

        v17[4] = v22;
        v22 = v33 - 1;
        if (__OFSUB__(v33, 1))
        {
          goto LABEL_147;
        }

        v122 = v17;
        v17[3] = v22;
        outlined copy of Data._Representation(v30, v32);
        v17 = a4;
        outlined copy of Data._Representation(a3, a4);

        specialized SeedCtrlUnadjusted.init(from:doubling:using:for:)(v30, v32, v125, a3, a4, v124, &v155);
        outlined consume of Data._Representation(a3, a4);
        v120 = v30;
        v121 = v32;
        outlined consume of Data._Representation(v30, v32);
        if ((v31 & 0x8000000000000000) != 0)
        {
          goto LABEL_148;
        }

        v22 = *(a5 + 16);
        if (v31 >= v22)
        {
          goto LABEL_149;
        }

        v123 = v31;
        v34 = v155;
        v35 = v156;
        v37 = v157;
        v36 = v158;
        v38 = v159;
        v17 = v160;
        v142 = *(a7 + 16);
        v151 = v155;
        v148 = v158;
        v145 = v157;
        if (v142)
        {
          v152 = v9;
          v39 = (a5 + 32 + 16 * v123);
          v9 = *v39;
          v40 = v39[1];
          v41 = a7 + 32;

          v143 = v35;
          outlined copy of Data._Representation(v34, v35);
          outlined copy of Data._Representation(v37, v36);
          v144 = v9;
          v133 = v40 & 0xC000000000000001;
          v134 = v9 + 4;
          v119 = v40;
          v131 = v40 + 4;
          v132 = v40 & 0xFFFFFFFFFFFFFF8;

          v42 = 0;
          v130 = a7;
          v128 = a7 + 32;
          while (1)
          {
            v22 = *(a7 + 16);
            if (v42 >= v22)
            {
              break;
            }

            if (*(v41 + v42) == 1)
            {
              v139 = v38;
              v146 = v17;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_270C44550;
              *(inited + 32) = v151;
              v17 = (inited + 32);
              *(inited + 40) = v143;
              v22 = v144[2];
              if (v42 >= v22)
              {
                goto LABEL_140;
              }

              v45 = inited;
              v9 = &v134[2 * v42];
              a7 = *v9;
              v46 = v9[1];
              *(inited + 48) = *v9;
              *(inited + 56) = v46;
              outlined copy of Data._Representation(v151, v143);
              outlined copy of Data._Representation(a7, v46);
              Array<A>.xor.getter(v45);
              if (v152)
              {
                outlined consume of Data._Representation(v136, v137);

                outlined destroy of SeedCtrlUnadjusted(&v155);
                outlined consume of Data._Representation(v120, v121);

                swift_bridgeObjectRelease_n();
                outlined consume of Data._Representation(v145, v148);
                outlined consume of Data._Representation(v151, v143);
                swift_setDeallocating();
                swift_arrayDestroy();

                return a7;
              }

              a7 = v47;
              v49 = v48;
              outlined consume of Data._Representation(v151, v143);
              swift_setDeallocating();
              swift_arrayDestroy();
              v50 = swift_initStackObject();
              *(v50 + 16) = xmmword_270C44550;
              *(v50 + 32) = v145;
              v17 = (v50 + 32);
              *(v50 + 40) = v148;
              v22 = v144[2];
              v150 = v42;
              if (v42 >= v22)
              {
                goto LABEL_141;
              }

              v51 = v50;
              v52 = a7;
              v53 = *v9;
              v54 = v9[1];
              *(v50 + 48) = *v9;
              *(v50 + 56) = v54;
              outlined copy of Data._Representation(v145, v148);
              outlined copy of Data._Representation(v53, v54);
              Array<A>.xor.getter(v51);
              v9 = v55;
              a7 = v56;
              outlined consume of Data._Representation(v145, v148);
              swift_setDeallocating();
              swift_arrayDestroy();
              v151 = v52;
              v152 = 0;
              v143 = v49;
              if (v133)
              {
                v58 = MEMORY[0x2743B2D10](v150, v119);
              }

              else
              {
                v22 = *(v132 + 16);
                if (v150 >= v22)
                {
                  goto LABEL_142;
                }

                v57 = v131[v150];
              }

              v135 = a7;
              v145 = v9;
              v149 = v58;
              v59 = *(v58 + 16);
              if (*(v59 + 16) >= *(v38 + 16))
              {
                v60 = *(v38 + 16);
              }

              else
              {
                v60 = *(v59 + 16);
              }

              v153[0] = MEMORY[0x277D84F90];

              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v60, 0);
              v43 = v153[0];
              if (v60)
              {
                a7 = 0;
                v61 = *(v38 + 16);
                v62 = v38 + 32;
                v9 = (v59 + 32);
                v17 = v146;
                v63 = v38;
                v64 = v59;
                while (v61 != a7)
                {
                  v22 = *(v63 + 16);
                  if (a7 >= v22)
                  {
                    goto LABEL_128;
                  }

                  v22 = *(v64 + 16);
                  if (a7 == v22)
                  {
                    goto LABEL_129;
                  }

                  if (a7 >= v22)
                  {
                    goto LABEL_130;
                  }

                  v65 = *(v62 + a7);
                  v66 = *(v9 + a7);
                  v153[0] = v43;
                  v68 = *(v43 + 16);
                  v67 = *(v43 + 24);
                  if (v68 >= v67 >> 1)
                  {
                    v114 = v62;
                    v116 = v64;
                    v69 = v61;
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1);
                    v62 = v114;
                    v64 = v116;
                    v61 = v69;
                    v63 = v139;
                    v17 = v146;
                    v43 = v153[0];
                  }

                  ++a7;
                  v22 = v65 ^ v66;
                  *(v43 + 16) = v68 + 1;
                  *(v43 + v68 + 32) = v65 ^ v66;
                  if (v60 == a7)
                  {
                    goto LABEL_53;
                  }
                }

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
                goto LABEL_135;
              }

              v17 = v146;
              v63 = v38;
              v64 = v59;
LABEL_53:
              v22 = *(v63 + 16);
              if (v60 != v22)
              {
                v9 = (v63 + 32);
                v81 = v64 + 32;
                while (v60 < v22)
                {
                  v22 = *(v64 + 16);
                  if (v60 == v22)
                  {
                    goto LABEL_54;
                  }

                  if (v60 >= v22)
                  {
                    goto LABEL_136;
                  }

                  a7 = *(v9 + v60);
                  v82 = *(v81 + v60);
                  v153[0] = v43;
                  v84 = *(v43 + 16);
                  v83 = *(v43 + 24);
                  if (v84 >= v83 >> 1)
                  {
                    v85 = v64;
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v84 + 1, 1);
                    v64 = v85;
                    v63 = v139;
                    v17 = v146;
                    v43 = v153[0];
                  }

                  ++v60;
                  *(v43 + 16) = v84 + 1;
                  *(v43 + v84 + 32) = a7 ^ v82;
                  v22 = *(v63 + 16);
                  if (v60 == v22)
                  {
                    goto LABEL_54;
                  }
                }

LABEL_135:
                __break(1u);
LABEL_136:
                __break(1u);
                goto LABEL_137;
              }

LABEL_54:

              v70 = *(v149 + 24);
              if (*(v70 + 16) >= v17[2])
              {
                v71 = v17[2];
              }

              else
              {
                v71 = *(v70 + 16);
              }

              v153[0] = MEMORY[0x277D84F90];

              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v71, 0);
              v9 = v153[0];
              if (v71)
              {
                a7 = 0;
                v72 = v17[2];
                v73 = v17 + 4;
                v74 = v70 + 32;
                v75 = v70;
                while (v72 != a7)
                {
                  v22 = v17[2];
                  if (a7 >= v22)
                  {
                    goto LABEL_132;
                  }

                  v22 = *(v75 + 16);
                  if (a7 == v22)
                  {
                    goto LABEL_133;
                  }

                  if (a7 >= v22)
                  {
                    goto LABEL_134;
                  }

                  v76 = *(v73 + a7);
                  v77 = *(v74 + a7);
                  v153[0] = v9;
                  v79 = v9[2];
                  v78 = v9[3];
                  if (v79 >= v78 >> 1)
                  {
                    v140 = v75;
                    v115 = v74;
                    v117 = v72;
                    v80 = v73;
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1);
                    v74 = v115;
                    v72 = v117;
                    v73 = v80;
                    v75 = v140;
                    v17 = v146;
                    v9 = v153[0];
                  }

                  ++a7;
                  v22 = v76 ^ v77;
                  v9[2] = v79 + 1;
                  *(v9 + v79 + 32) = v76 ^ v77;
                  if (v71 == a7)
                  {
                    goto LABEL_76;
                  }
                }

                goto LABEL_131;
              }

              v75 = v70;
LABEL_76:
              v22 = v17[2];
              if (v71 != v22)
              {
                v86 = v17 + 4;
                a7 = v75 + 32;
                while (v71 < v22)
                {
                  v22 = *(v75 + 16);
                  if (v71 == v22)
                  {
                    goto LABEL_77;
                  }

                  if (v71 >= v22)
                  {
                    goto LABEL_138;
                  }

                  v87 = *(v86 + v71);
                  v88 = *(a7 + v71);
                  v153[0] = v9;
                  v90 = v9[2];
                  v89 = v9[3];
                  if (v90 >= v89 >> 1)
                  {
                    v141 = v75;
                    v91 = v86;
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v89 > 1), v90 + 1, 1);
                    v86 = v91;
                    v75 = v141;
                    v17 = v146;
                    v9 = v153[0];
                  }

                  ++v71;
                  v9[2] = v90 + 1;
                  *(v9 + v90 + 32) = v87 ^ v88;
                  v22 = v17[2];
                  if (v71 == v22)
                  {
                    goto LABEL_77;
                  }
                }

LABEL_137:
                __break(1u);
LABEL_138:
                __break(1u);
                break;
              }

LABEL_77:

              v17 = v9;
              v148 = v135;
              v38 = v43;
              a7 = v130;
              v41 = v128;
              v42 = v150;
            }

            else
            {
              v43 = v38;
            }

            if (++v42 == v142)
            {

              v92 = v43;
              v9 = v152;
              v27 = v118;
              v35 = v143;
              goto LABEL_89;
            }
          }

          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        outlined copy of Data._Representation(v155, v156);
        outlined copy of Data._Representation(v37, v36);

        v92 = v38;
LABEL_89:
        v22 = v123;
        v93 = v123 + 1;
        if (__OFADD__(v123, 1))
        {
          goto LABEL_150;
        }

        v22 = v122[3];
        a7 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_151;
        }

        v147 = v17;
        v17 = v161;
        v94 = swift_isUniquelyReferenced_nonNull_native();
        if (v17[2] < a7 || (v94 & 1) == 0)
        {
          specialized Deque._Storage._ensureUnique(isUnique:minimumCapacity:linearGrowth:)(v94, a7, 0);
          v17 = v161;
        }

        v96 = v17[3];
        v95 = v17[4];
        v98 = __OFADD__(v95, v96);
        v22 = v95 + v96;
        if (v98)
        {
          goto LABEL_152;
        }

        if (v96 < 0)
        {
          if ((v22 & 0x8000000000000000) != 0)
          {
            v100 = v17[2];
            v98 = __OFADD__(v22, v100);
            v22 += v100;
            if (v98)
            {
              goto LABEL_160;
            }
          }
        }

        else
        {
          v97 = v17[2];
          v98 = __OFSUB__(v22, v97);
          v99 = v22 - v97;
          if (v99 < 0 == v98)
          {
            v22 = v99;
            if (v98)
            {
              __break(1u);
LABEL_159:
              __break(1u);
LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
              goto LABEL_162;
            }
          }
        }

        v101 = &v17[4 * v22];
        v101[5] = v93;
        v101[6] = v151;
        v101[7] = v35;
        v101[8] = v92;
        v102 = v17[3];
        v98 = __OFADD__(v102, 1);
        v22 = v102 + 1;
        if (v98)
        {
          goto LABEL_153;
        }

        v17[3] = v22;
        a7 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_154;
        }

        outlined copy of Data._Representation(v151, v35);

        v103 = swift_isUniquelyReferenced_nonNull_native();
        if (v17[2] < a7 || (v103 & 1) == 0)
        {
          specialized Deque._Storage._ensureUnique(isUnique:minimumCapacity:linearGrowth:)(v103, a7, 0);
          v17 = v161;
        }

        v105 = v17[3];
        v104 = v17[4];
        v98 = __OFADD__(v104, v105);
        v22 = v104 + v105;
        if (v98)
        {
          goto LABEL_155;
        }

        if (v105 < 0)
        {
          if ((v22 & 0x8000000000000000) != 0)
          {
            v109 = v17[2];
            v98 = __OFADD__(v22, v109);
            v22 += v109;
            if (v98)
            {
              goto LABEL_161;
            }
          }
        }

        else
        {
          v106 = v17[2];
          v107 = __OFSUB__(v22, v106);
          v108 = v22 - v106;
          if (v108 < 0 == v107)
          {
            v22 = v108;
            if (v107)
            {
              goto LABEL_159;
            }
          }
        }

        v110 = &v17[4 * v22];
        a7 = v147;
        v110[5] = v93;
        v110[6] = v145;
        v110[7] = v148;
        v110[8] = v147;
        v111 = v17[3];
        v98 = __OFADD__(v111, 1);
        v22 = v111 + 1;
        if (v98)
        {
          goto LABEL_156;
        }

        v17[3] = v22;
        outlined copy of Data._Representation(v145, v148);

        outlined consume of Data._Representation(v151, v35);

        outlined destroy of SeedCtrlUnadjusted(&v155);
        outlined consume of Data._Representation(v120, v121);

        outlined consume of Data._Representation(v145, v148);

        v26 = v17[3];
        if (v26 >= v27)
        {
          goto LABEL_119;
        }

        if (v26 < 1)
        {
          goto LABEL_118;
        }
      }
    }
  }

  v27 = 0;
  if (v26 >= 1)
  {
    goto LABEL_18;
  }

LABEL_118:
  lazy protocol witness table accessor for type EvaluatorError and conformance EvaluatorError();
  swift_allocError();
  *v112 = 0;
  *(v112 + 8) = 0;
  *(v112 + 16) = -64;
  swift_willThrow();
  outlined consume of Data._Representation(v136, v137);

  return a7;
}

void *DPFEvaluator.evaluateLeaves(inputs:nonce:leafCorrections:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v106 = a3;
  v110 = a2;
  v101 = type metadata accessor for Data.Iterator();
  v9 = *(v101 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v101, v11);
  v100 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a5 + 16);
  v105 = *(v14 - 8);
  v15 = *(v105 + 64);
  v17 = MEMORY[0x28223BE20](v12, v16);
  v125 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v124 = &v89 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v89 - v24;
  MEMORY[0x28223BE20](v23, v26);
  v111 = &v89 - v27;
  v120 = *v5;
  v29 = *(v5 + 16);
  v28 = *(v5 + 24);
  v102 = *(v5 + 40);
  v104 = a5;
  v127 = *(a5 + 32);
  v30 = type metadata accessor for SiblingLeafCorrections();
  v103 = a4;
  v31 = MEMORY[0x2743B2830](a4, v30);
  if (v31 != v29)
  {
    v83 = v31;
    lazy protocol witness table accessor for type EvaluatorError and conformance EvaluatorError();
    swift_allocError();
    *v84 = v29;
    *(v84 + 8) = v83;
    *(v84 + 16) = 2;
    return swift_willThrow();
  }

  v131 = static Array._allocateUninitialized(_:)();
  v32 = *(a1 + 16);
  v119 = v28;
  if ((v32 * v28) >> 64 != (v32 * v28) >> 63)
  {
    goto LABEL_60;
  }

  v122 = type metadata accessor for Array();
  Array.reserveCapacity(_:)(v32 * v28);
  if (!v32)
  {
    return v131;
  }

  v33 = v9;
  v34 = 0;
  v99 = a1 + 32;
  v118 = v105 + 8;
  v35 = v127;
  v98 = v127 + 64;
  v93 = (v33 + 8);
  v97 = v106 >> 62;
  v36 = __OFSUB__(HIDWORD(v110), v110);
  v91 = v36;
  v90 = HIDWORD(v110) - v110;
  v92 = BYTE6(v106);
  v109 = (v105 + 16);
  v116 = (v105 + 32);
  v37 = v119;
  v95 = v29;
  v94 = v32;
  v96 = v14;
  while (1)
  {
    v38 = (v99 + 32 * v34);
    v40 = v38[1];
    v39 = v38[2];
    v41 = v38[3];
    if (*(v41 + 16) != v29)
    {
      v86 = v38[2];
      outlined copy of Data._Representation(v38[1], v86);

      v87 = *(v41 + 16);
      lazy protocol witness table accessor for type EvaluatorError and conformance EvaluatorError();
      swift_allocError();
      *v88 = v29;
      *(v88 + 8) = v87;
      *(v88 + 16) = -126;
      swift_willThrow();
      outlined consume of Data._Representation(v40, v86);
    }

    v108 = v34;
    v128 = *v38;
    v115 = v39;
    outlined copy of Data._Representation(v40, v39);

    v42 = v111;
    v126 = *(v35 + 8);
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    v43 = specialized Array.init(repeating:count:)(v42, v37, v14);
    v113 = v41;
    v44 = v105;
    v117 = *(v105 + 8);
    v117(v42, v14);
    v130 = v43;
    Array._makeMutableAndUnique()();
    v45 = v130;
    if (_swift_isClassOrObjCExistentialType())
    {
      v46 = v45 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v46 = v45;
    }

    v5 = *(v46 + 16);
    if (_swift_isClassOrObjCExistentialType())
    {
      v47 = v45 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v47 = v45;
    }

    v48 = v127;
    v29 = (v47 + ((*(v44 + 80) + 32) & ~*(v44 + 80)));
    v129[0] = v29;
    v129[1] = v5;
    v49 = *(v104 + 24);
    v50 = *(v104 + 40);
    v114 = v40;
    v51 = v112;
    closure #1 in DPFEvaluator.evaluateLeaves(inputs:nonce:leafCorrections:)(v129, v103, v128, v40, v115, v113, v14);
    v112 = v51;
    if (v51)
    {
      goto LABEL_61;
    }

    _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lF(v129, v29, v5);
    v5 = v14;
    v52 = (*(v48 + 64))(v14, v48);
    v53 = v109;
    if ((v52 * v37) >> 64 != (v52 * v37) >> 63)
    {
      break;
    }

    v54 = v115;
    v55 = v115 >> 62;
    v121 = v50;
    v128 = v52 * v37;
    if ((v115 >> 62) > 1)
    {
      v56 = v114;
      if (v55 != 2)
      {
        goto LABEL_32;
      }

      v58 = *(v114 + 16);
      v57 = *(v114 + 24);
      v5 = v57 - v58;
      if (__OFSUB__(v57, v58))
      {
        goto LABEL_57;
      }
    }

    else
    {
      v56 = v114;
      if (!v55)
      {
        v5 = BYTE6(v115);
        if (!BYTE6(v115))
        {
          goto LABEL_32;
        }

        goto LABEL_30;
      }

      if (__OFSUB__(HIDWORD(v114), v114))
      {
        goto LABEL_56;
      }

      v5 = HIDWORD(v114) - v114;
    }

    outlined copy of Data._Representation(v114, v115);
    v56 = v114;
    v54 = v115;
    if (!v5)
    {
LABEL_32:
      outlined consume of Data._Representation(v56, v54);
      v123 = MEMORY[0x277D84F90];
      goto LABEL_33;
    }

LABEL_30:
    v29 = v56;
    v59 = v54;
    v123 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(v5, 0);
    v60 = v49;
    v61 = v100;
    v62 = Data._copyContents(initializing:)();
    v63 = v59;
    v53 = v109;
    outlined consume of Data._Representation(v29, v63);
    v64 = v61;
    v49 = v60;
    v50 = v121;
    (*v93)(v64, v101);
    if (v62 != v5)
    {
      goto LABEL_54;
    }

LABEL_33:
    if (v97 > 1)
    {
      if (v97 != 2)
      {
        goto LABEL_43;
      }

      v66 = *(v110 + 16);
      v65 = *(v110 + 24);
      v5 = v65 - v66;
      if (__OFSUB__(v65, v66))
      {
        goto LABEL_58;
      }
    }

    else
    {
      v5 = v92;
      if (!v97)
      {
        goto LABEL_40;
      }

      v5 = v90;
      if (v91)
      {
        goto LABEL_59;
      }
    }

    outlined copy of Data._Representation(v110, v106);
LABEL_40:
    if (!v5)
    {
LABEL_43:
      outlined consume of Data._Representation(v110, v106);
      v29 = MEMORY[0x277D84F90];
      v73 = v127;
      goto LABEL_44;
    }

    v29 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(v5, 0);
    v67 = v100;
    v68 = v49;
    v69 = v110;
    v70 = v106;
    v107 = Data._copyContents(initializing:)();
    v71 = v69;
    v49 = v68;
    v50 = v121;
    v72 = v70;
    v53 = v109;
    v73 = v127;
    outlined consume of Data._Representation(v71, v72);
    (*v93)(v67, v101);
    if (v107 != v5)
    {
      goto LABEL_55;
    }

LABEL_44:
    v74 = static BatchedExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:generating:)(v123, v102, v29, v128 >> 2, v49, v50);

    v107 = v74;
    v75 = v74;
    v5 = v96;
    v123 = static FieldElement.randomVectorBatched<A>(count:using:)(v37, v75, v96, v49, v73, v50);
    if (v37 < 0)
    {
      goto LABEL_53;
    }

    v76 = v117;
    v14 = v5;
    v77 = v111;
    if (v37)
    {
      v78 = 0;
      v121 = v130;
      do
      {
        Array.subscript.getter();
        v79 = v124;
        Array.subscript.getter();
        v80 = v125;
        v128 = *v53;
        (v128)(v125, v77, v14);
        FieldElement.init(other:)(v80, v14, v127);
        dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
        v76(v79, v14);
        v76(v77, v14);
        if (v120)
        {
          v81 = v124;
          dispatch thunk of static AdditiveArithmetic.zero.getter();
          v82 = v125;
          (v128)(v125, v81, v14);
          FieldElement.init(other:)(v82, v14, v127);
          dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
          v76 = v117;
          v117(v81, v14);
          v76(v25, v14);
          (*v116)(v25, v77, v14);
        }

        ++v78;
        (v128)(v77, v25, v14);
        Array.append(_:)();
        v76(v25, v14);
        v37 = v119;
      }

      while (v119 != v78);
    }

    v34 = v108 + 1;

    swift_unknownObjectRelease();
    outlined consume of Data._Representation(v114, v115);

    v29 = v95;
    v35 = v127;
    if (v34 == v94)
    {
      return v131;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  result = _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lF(v129, v29, v5);
  __break(1u);
  return result;
}

uint64_t closure #1 in DPFEvaluator.evaluateLeaves(inputs:nonce:leafCorrections:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18[2] = a1;
  v19 = *(a7 - 8);
  v7 = *(v19 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v18[3] = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v9;
  *&v28 = v10;
  v24 = v11;
  type metadata accessor for SiblingLeafCorrections();
  v12 = type metadata accessor for Array();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySbGMd, &_sSaySbGMR);
  WitnessTable = swift_getWitnessTable();
  v15 = lazy protocol witness table accessor for type [Bool] and conformance [A]();
  zip<A, B>(_:_:)();
  v28 = v25;
  v29 = v12;
  v30 = v13;
  v31 = WitnessTable;
  v32 = v15;
  type metadata accessor for Zip2Sequence();
  Zip2Sequence.makeIterator()();
  v22 = v13;
  v23 = v12;
  *&v25 = v12;
  *(&v25 + 1) = v13;
  v20 = v15;
  v21 = WitnessTable;
  v26 = WitnessTable;
  v27 = v15;
  type metadata accessor for Zip2Sequence.Iterator();
  Zip2Sequence.Iterator.next()();
  if (v28)
  {
    v16 = BYTE8(v28);
    v33 = v19 + 8;
    do
    {
      if (v16)
      {
        SiblingLeafCorrections.count.getter();
      }

      *&v25 = v23;
      *(&v25 + 1) = v22;
      v26 = v21;
      v27 = v20;
      type metadata accessor for Zip2Sequence.Iterator();
      Zip2Sequence.Iterator.next()();
      v16 = BYTE8(v28);
    }

    while (v28);
  }
}

void *_sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lF(void *result, uint64_t a2, uint64_t a3)
{
  if (*result)
  {
    if (*result == a2)
    {
      if (result[1] == a3)
      {
        v3 = type metadata accessor for Array();
        return destructiveProjectEnumData for SeedCtrlUnadjustedError(v3, v4, v5, v6, v7);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Deque._Storage._ensureUnique(isUnique:minimumCapacity:linearGrowth:)(char a1, Swift::Int to, char a3)
{
  v4 = *v3;
  v5 = (*v3 + 16);
  v6 = *v5;
  if (*v5 >= to)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal12_DequeBufferCy4VDAF19EvaluatorLevelInputVGMd, &_s19CollectionsInternal12_DequeBufferCy4VDAF19EvaluatorLevelInputVGMR);
    v12 = swift_allocObject();
    v15 = *(v4 + 24);
    *(v12 + 16) = v6;
    *(v12 + 24) = v15;
    if (v15 >= 1)
    {
      specialized closure #2 in Deque._UnsafeHandle.copyElements()(v12 + 16, v12 + 40, v5, v4 + 40);
    }
  }

  else
  {
    v9 = a3 & 1;
    v10 = *v3;
    Deque._Storage._growCapacity(to:linearly:)(to, v9);
    if (a1)
    {
      v11 = *(v4 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal12_DequeBufferCy4VDAF19EvaluatorLevelInputVGMd, &_s19CollectionsInternal12_DequeBufferCy4VDAF19EvaluatorLevelInputVGMR);
      v12 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v12);
      v14 = v13 - 40;
      if (v13 < 40)
      {
        v14 = v13 - 9;
      }

      *(v12 + 16) = v14 >> 5;
      *(v12 + 24) = v11;
      *(v12 + 32) = 0;
      if (v11 >= 1)
      {
        specialized closure #2 in Deque._UnsafeHandle.moveElements(minimumCapacity:)(v12 + 16, (v12 + 40), v5, (v4 + 40));
        *(v4 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal12_DequeBufferCy4VDAF19EvaluatorLevelInputVGMd, &_s19CollectionsInternal12_DequeBufferCy4VDAF19EvaluatorLevelInputVGMR);
      v12 = swift_allocObject();
      v16 = _swift_stdlib_malloc_size(v12);
      v17 = v16 - 40;
      if (v16 < 40)
      {
        v17 = v16 - 9;
      }

      v18 = *(v4 + 24);
      *(v12 + 16) = v17 >> 5;
      *(v12 + 24) = v18;
      *(v12 + 32) = 0;
      if (v18 >= 1)
      {
        specialized closure #2 in Deque._UnsafeHandle.copyElements(minimumCapacity:)(v12 + 16, v12 + 40, v5, v4 + 40);
      }
    }
  }

  *v3 = v12;
  return result;
}

void *specialized closure #1 in Deque.append(_:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v7 = result[1];
  v6 = result[2];
  v9 = __OFADD__(v6, v7);
  v8 = v6 + v7;
  if (!v9)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v8, *result);
      if (v8 < *result || (v8 -= *result, !v9))
      {
LABEL_9:
        v10 = (a2 + 32 * v8);
        *v10 = a3;
        v10[1] = a4;
        v10[2] = a5;
        v10[3] = a6;
        v11 = result[1];
        v9 = __OFADD__(v11, 1);
        v12 = v11 + 1;
        if (!v9)
        {
          result[1] = v12;
          outlined copy of Data._Representation(a4, a5);
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v8 < 0)
    {
      v9 = __OFADD__(v8, *result);
      v8 += *result;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t specialized Deque._Storage._makeUniqueCopy()()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal12_DequeBufferCy4VDAF19EvaluatorLevelInputVGMd, &_s19CollectionsInternal12_DequeBufferCy4VDAF19EvaluatorLevelInputVGMR);
  v4 = swift_allocObject();
  v5 = *(v1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  if (v5 >= 1)
  {
    specialized closure #2 in Deque._UnsafeHandle.copyElements()(v4 + 16, v4 + 40, v2, v1 + 40);
  }

  *v0 = v4;
  return result;
}

uint64_t specialized closure #2 in Deque._UnsafeHandle.copyElements()(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 >= v6)
  {
    v9 = 0;
    v7 = 0;
    v10 = a3[1];
    if (v6 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *a3 - v4;
  v9 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v9)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

void specialized closure #2 in Deque._UnsafeHandle.moveElements(minimumCapacity:)(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = &a4[32 * v4];
  if (v12 != __dst || &v12[32 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 32 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = &__dst[32 * v8];
  if (v16 != v11 || v16 >= &v11[32 * v7])
  {

    memmove(v16, v11, 32 * v7);
  }
}

uint64_t specialized closure #2 in Deque._UnsafeHandle.copyElements(minimumCapacity:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = 0;
  v7 = 0;
  v10 = a3[1];
  if (v6 >= 1)
  {
LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v9)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

void *specialized closure #1 in closure #1 in Deque._copyToContiguousArray()(void *result, uint64_t a2, uint64_t *a3, void *a4)
{
  v4 = result[2];
  v5 = *result - v4;
  if (__OFSUB__(*result, v4))
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = result[1];
  if (v5 < v8)
  {
    v10 = v8 - v5;
    if (__OFSUB__(v8, v5))
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v11 = *result - v4;
    v9 = a2;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = result[1];
  }

  v16 = v5 >= v8;
  if (v11 < 0)
  {
    goto LABEL_24;
  }

  if (a2 && v11)
  {
    v12 = *a3;
    result = swift_arrayInitWithCopy();
  }

  v13 = *a4 + v11;
  if (__OFADD__(*a4, v11))
  {
    goto LABEL_25;
  }

  *a4 = v13;
  if (v16)
  {
    return result;
  }

  if (__OFADD__(v11, v10))
  {
    goto LABEL_27;
  }

  if (v11 + v10 < v11)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    __break(1u);
    return result;
  }

  if (*a3)
  {
    result = (*a3 + 32 * v11);
  }

  else
  {
    result = 0;
  }

  if (v9)
  {
    if (v10)
    {
      result = swift_arrayInitWithCopy();
      v13 = *a4;
    }
  }

  v14 = __OFADD__(v13, v10);
  v15 = v13 + v10;
  if (v14)
  {
    goto LABEL_29;
  }

  *a4 = v15;
  return result;
}

unint64_t lazy protocol witness table accessor for type CorrectionMissingReason and conformance CorrectionMissingReason()
{
  result = lazy protocol witness table cache variable for type CorrectionMissingReason and conformance CorrectionMissingReason;
  if (!lazy protocol witness table cache variable for type CorrectionMissingReason and conformance CorrectionMissingReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CorrectionMissingReason and conformance CorrectionMissingReason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CorrectionMissingReason and conformance CorrectionMissingReason;
  if (!lazy protocol witness table cache variable for type CorrectionMissingReason and conformance CorrectionMissingReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CorrectionMissingReason and conformance CorrectionMissingReason);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CorrectionMissingReason(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type EvaluatorID and conformance EvaluatorID()
{
  result = lazy protocol witness table cache variable for type EvaluatorID and conformance EvaluatorID;
  if (!lazy protocol witness table cache variable for type EvaluatorID and conformance EvaluatorID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EvaluatorID and conformance EvaluatorID);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EvaluatorError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3D && *(a1 + 17))
  {
    return (*a1 + 61);
  }

  v3 = (*(a1 + 16) & 0x3C | (*(a1 + 16) >> 6)) ^ 0x3F;
  if (v3 >= 0x3C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for EvaluatorError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *(result + 16) = 0;
    *result = a2 - 61;
    *(result + 8) = 0;
    if (a3 >= 0x3D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t getEnumTag for EvaluatorError(uint64_t a1)
{
  v1 = *(a1 + 16) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t destructiveInjectEnumTag for EvaluatorError(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16) & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = -64;
  }

  return result;
}

uint64_t type metadata instantiation function for DPFEvaluator()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for DPFEvaluator(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for DPFEvaluator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined copy of PreambleError(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 5 <= 6)
  {
  }

  return result;
}

uint64_t outlined copy of Prio3Error(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t outlined copy of FLPTypeError(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t outlined copy of LeafParentError(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 1 <= 3)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Bool] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Bool] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Bool] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySbGMd, &_sSaySbGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Bool] and conformance [A]);
  }

  return result;
}

uint64_t PreamblePublicShare.init(inner:leaf:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

VDAF::PreamblePublicShareDecodableParameter __swiftcall PreamblePublicShareDecodableParameter.init(dimensionBitCount:keptBlockCount:seedSize:blockSize:)(Swift::Int dimensionBitCount, Swift::Int keptBlockCount, Swift::Int seedSize, Swift::Int blockSize)
{
  v5 = 63 - __clz(blockSize);
  v6 = __OFSUB__(dimensionBitCount, v5);
  v7 = dimensionBitCount - v5;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *v4 = keptBlockCount;
    v4[1] = seedSize;
    v4[2] = blockSize;
    v4[3] = v7;
  }

  result.innerLevelCount = blockSize;
  result.blockSize = seedSize;
  result.innerCorrections.seedSize = keptBlockCount;
  result.innerCorrections.keptBlockCount = dimensionBitCount;
  return result;
}

uint64_t PreamblePublicShare.init<A>(from:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a1;
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v14 + 32) == 1)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v20 = 0;
    v20[1] = 0;
    swift_willThrow();
    return (*(v12 + 8))(v11, a4);
  }

  v74 = v6;
  v65 = v15;
  v66 = v16;
  v62 = v17;
  v23 = *v14;
  v22 = *(v14 + 8);
  v24 = *(v14 + 24);
  v64 = *(v14 + 16);
  v75 = v24;
  (*(v12 + 16))(&v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v11, a4);
  v25 = *(*(*(a6 + 8) + 8) + 8);
  v26 = ArraySlice.init<A>(_:)();
  v30 = v22 * v23;
  v73 = v22;
  if ((v22 * v23) >> 64 != (v22 * v23) >> 63)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v23 + 0x4000000000000000 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v31 = 2 * v23 + 7;
  if (__OFADD__(2 * v23, 7))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v31 < 0)
  {
    v31 = 2 * v23 + 14;
  }

  v32 = v31 >> 3;
  v33 = v23 * (v31 >> 3);
  if ((v23 * v32) >> 64 != v33 >> 63)
  {
    goto LABEL_29;
  }

  v34 = v30 + v33;
  if (__OFADD__(v30, v33))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v72 = v11;
  v11 = v75 * v34;
  if ((v75 * v34) >> 64 != (v75 * v34) >> 63)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v35 = v26;
  v36 = v27;
  v37 = v28;
  v38 = v29;
  v71 = v12;
  v67 = a4;
  v39 = v75;
  v40 = specialized Collection.prefix(_:)(v75 * v34, v26, v27, v28, v29);
  v69 = v42;
  v70 = v41;
  v68 = v43;
  v44 = specialized Collection.dropFirst(_:)(v11, v35, v36, v37, v38);
  v11 = v45;
  v8 = v46;
  v63 = v47;
  *&v78 = v23;
  *(&v78 + 1) = v73;
  v79 = 0;
  v80 = v39;
  v81 = v34;
  v82 = 0;
  swift_unknownObjectRetain();
  v48 = v74;
  v49 = _sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA16InnerCorrectionsV_s10ArraySliceVyANGTt1B5(v40, v70, v69, v68, &v78);
  v7 = v48;
  if (v48)
  {
    (*(v71 + 8))(v72, v67);
    return swift_unknownObjectRelease();
  }

  v50 = v44;
  v74 = v23;
  v75 = v49;
  v12 = v71;
  v19 = v63;
  if ((v63 & 1) == 0)
  {
    swift_unknownObjectRetain();
    v51 = v64;
    v23 = v8;
LABEL_15:
    specialized _copyCollectionToContiguousArray<A>(_:)(v50, v11, v23, v19);
    v53 = v52;
    v54 = v72;
    goto LABEL_22;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v55 = swift_dynamicCastClass();
  v23 = v8;
  if (!v55)
  {
    swift_unknownObjectRelease();
    v55 = MEMORY[0x277D84F90];
  }

  v56 = *(v55 + 16);

  v57 = (v19 >> 1) - v8;
  if (__OFSUB__(v19 >> 1, v8))
  {
    goto LABEL_32;
  }

  v8 = v50;
  if (v56 != v57)
  {
LABEL_33:
    swift_unknownObjectRelease();
    v51 = v64;
    v50 = v8;
    goto LABEL_15;
  }

  v53 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v54 = v72;
  v51 = v64;
  if (v53)
  {
    goto LABEL_23;
  }

  v53 = MEMORY[0x277D84F90];
LABEL_22:
  swift_unknownObjectRelease();
LABEL_23:
  v83 = v53;
  v76[0] = v74;
  v76[1] = v51;
  v77 = 0;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v59 = LeafCorrections.init<A>(from:parameter:)(&v83, v76, v65, v58, v66);
  if (v7)
  {
    (*(v12 + 8))(v54, v67);

    return swift_unknownObjectRelease();
  }

  else
  {
    v60 = v59;
    (*(v12 + 8))(v54, v67);
    result = swift_unknownObjectRelease();
    v61 = v62;
    *v62 = v75;
    v61[1] = v60;
  }

  return result;
}

uint64_t PreamblePublicShare.keptBlockCount.getter()
{
  if (*(*v0 + 16))
  {
    return *(*(*v0 + 32) + 16);
  }

  else
  {
    return 1;
  }
}

uint64_t static PreamblePublicShare.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ4VDAF16InnerCorrectionsV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return static LeafCorrections.== infix(_:_:)();
}

uint64_t static LeafCorrections.== infix(_:_:)()
{
  type metadata accessor for SiblingLeafCorrections();
  swift_getWitnessTable();

  return static Array<A>.== infix(_:_:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PreamblePublicShare<A>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return static PreamblePublicShare.== infix(_:_:)(a1, a2);
}

__n128 PreamblePublicShareDecodableParameter.innerCorrections.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

VDAF::InnerCorrectionsDecodableParameter __swiftcall InnerCorrectionsDecodableParameter.init(keptBlockCount:seedSize:)(Swift::Int keptBlockCount, Swift::Int seedSize)
{
  *v2 = keptBlockCount;
  v2[1] = seedSize;
  result.seedSize = seedSize;
  result.keptBlockCount = keptBlockCount;
  return result;
}

uint64_t InnerCorrectionsDecodableParameter.encodedLength.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 * *v0;
  if ((v2 * *v0) >> 64 != v3 >> 63)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v1 + 0x4000000000000000 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = 2 * v1 + 7;
  if (__OFADD__(2 * v1, 7))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v4 < 0)
  {
    v4 = 2 * v1 + 14;
  }

  v5 = v4 >> 3;
  v6 = v1 * (v4 >> 3);
  if ((v1 * v5) >> 64 != v6 >> 63)
  {
    goto LABEL_12;
  }

  result = v3 + v6;
  if (__OFADD__(v3, v6))
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t LeafCorrections.init<A>(from:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v12 + 16) == 1)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v16 = 0;
    v16[1] = 0;
    swift_willThrow();
    (*(v10 + 8))(a1, a4);
    return a5;
  }

  v23 = v13;
  v26 = v5;
  v18 = *v12;
  v17 = v12[1];
  result = (*(a5 + 64))(a3, a5);
  v20 = v17 * result;
  if ((v17 * result) >> 64 == (v17 * result) >> 63)
  {
    (*(v10 + 16))(v15, a1, a4);
    v24[0] = 1;
    v24[1] = v18;
    v24[2] = v20;
    v25 = 0;
    v21 = type metadata accessor for SiblingLeafCorrections();
    a5 = Array<A>.init<A>(from:parameter:)(v15, v24, v21, a4, &protocol witness table for SiblingLeafCorrections<A>, v23);
    (*(v10 + 8))(a1, a4);
    return a5;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for VDAFDecodable.init<A>(from:parameter:) in conformance PreamblePublicShare<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 32);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  v9 = v5;
  return PreamblePublicShare.init<A>(from:parameter:)(a1, v8, *(a5 + 16), a3, *(a5 + 24), a4);
}

uint64_t PreamblePublicShare.encodedLength.getter(uint64_t result)
{
  v2 = result;
  v4 = *v1;
  v3 = v1[1];
  v5 = *(*v1 + 16);
  if (v5)
  {
    v6 = v4[4];
    v7 = v4[5];

    v8 = InnerCorrections.encodedLength.getter(v6, v7);

    v5 = v4[2];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 * v5;
  if ((v8 * v5) >> 64 != (v8 * v5) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  v12 = LeafCorrections.encodedLength.getter();
  v13 = __OFADD__(v9, v12);
  result = v9 + v12;
  if (v13)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t LeafCorrections.encodedLength.getter()
{
  type metadata accessor for SiblingLeafCorrections();
  v0 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  return Collection<>.encodedLength.getter(v0, WitnessTable, &protocol witness table for SiblingLeafCorrections<A>);
}

uint64_t PreamblePublicShare.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[1];
  v13 = *v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay4VDAF16InnerCorrectionsVGMd, &_sSay4VDAF16InnerCorrectionsVGMR);
  v11 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [InnerCorrections] and conformance [A], &_sSay4VDAF16InnerCorrectionsVGMd, &_sSay4VDAF16InnerCorrectionsVGMR);
  Collection<>.encode<A>(into:)(a1, v10, a3, v11, a4, &protocol witness table for InnerCorrections);
  return LeafCorrections.encode<A>(into:)(a1, v9, *(a2 + 16), a3, *(a2 + 24), a4);
}

uint64_t LeafCorrections.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for SiblingLeafCorrections();
  result = MEMORY[0x2743B2830](a2, v10);
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v12 = type metadata accessor for Array();
    WitnessTable = swift_getWitnessTable();
    return Collection<>.encode<A>(into:)(a1, v12, a4, WitnessTable, a6, &protocol witness table for SiblingLeafCorrections<A>);
  }

  return result;
}

uint64_t static InnerCorrections.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ4VDAF8BitMasksC_Tt1g5(a2, a4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance InnerCorrections(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ4VDAF8BitMasksC_Tt1g5(v2, v3);
}

uint64_t InnerCorrections.init<A>(from:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v107 = *MEMORY[0x277D85DE8];
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v8 + 16) == 1)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v12 = 0;
    v12[1] = 0;
LABEL_33:
    swift_willThrow();
    (*(v6 + 8))(a1, v4);
    goto LABEL_34;
  }

  v13 = *v8;
  if (*v8 < 1)
  {
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v61 + 8) = 0;
    *(v61 + 16) = 0;
    *v61 = v13;
    v62 = 2;
LABEL_32:
    *(v61 + 24) = v62;
    goto LABEL_33;
  }

  v14 = *(v8 + 8);
  if (v14 < 1)
  {
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v61 + 8) = 0;
    *(v61 + 16) = 0;
    *v61 = v14;
    v62 = 1;
    goto LABEL_32;
  }

  v15 = v14 * v13;
  if ((v14 * v13) >> 64 != (v14 * v13) >> 63)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v13 + 0x4000000000000000 < 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v16 = 2 * v13 + 7;
  if (__OFADD__(2 * v13, 7))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v17 = v13 * (v16 >> 3);
  if ((v13 * (v16 >> 3)) >> 64 != v17 >> 63)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }

  v90 = v16 >> 3;
  v97 = v13;
  v91 = v3;
  v89 = v13 * (v16 >> 3);
  v18 = v15 + v17;
  if (__OFADD__(v15, v17))
  {
    goto LABEL_50;
  }

  v19 = *(*(v9 + 8) + 8);
  v20 = a1;
  if (v18 != dispatch thunk of Collection.count.getter())
  {
    v101 = 0;
    v102 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    v101 = 0xD000000000000022;
    v102 = 0x8000000270C53020;
    *__dst = v18;
    v65 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v65);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    *__dst = dispatch thunk of Collection.count.getter();
    v66 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v66);

    v67 = v101;
    v68 = v102;
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v69 = v67;
    v69[1] = v68;
    swift_willThrow();
    (*(v6 + 8))(v20, v4);
    goto LABEL_34;
  }

  v83 = v6;
  v21 = *(v6 + 16);
  v82 = a1;
  v21(v11, a1, v4);
  v22 = *(v19 + 8);
  v84 = v4;
  v23 = ArraySlice.init<A>(_:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = specialized Collection.prefix(_:)(v15, v23, v24, v26, v28);
  v94 = v31;
  v96 = v32;
  v34 = v33;
  v88 = specialized Collection.dropFirst(_:)(v15, v23, v25, v27, v29);
  v87 = v35;
  v86 = v36;
  v85 = v37;
  v100 = MEMORY[0x277D84F90];
  swift_unknownObjectRetain();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v97, 0);
  v38 = 0;
  v93 = v34 & 1;
  v4 = v100;
  v95 = v34 >> 1;
  do
  {
    v39 = v38 * v14;
    if ((v38 * v14) >> 64 != (v38 * v14) >> 63)
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v40 = v39 + v14;
    if (__OFADD__(v39, v14))
    {
      goto LABEL_40;
    }

    if (v40 < v39)
    {
      goto LABEL_41;
    }

    if (v39 < v96)
    {
      goto LABEL_42;
    }

    if (v95 < v40)
    {
      goto LABEL_43;
    }

    if (v40 < 0)
    {
      goto LABEL_44;
    }

    v41 = v93 | (2 * v40);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVys5UInt8VGMd, "xq");
    v103 = v42;
    v104 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type ArraySlice<UInt8> and conformance <A> ArraySlice<A>, &_ss10ArraySliceVys5UInt8VGMd, "xq");
    v43 = swift_allocObject();
    v101 = v43;
    v44 = v94;
    v43[2] = v30;
    v43[3] = v44;
    v43[4] = v39;
    v43[5] = v41;
    v45 = __swift_project_boxed_opaque_existential_1(&v101, v42);
    v46 = v45[2];
    v47 = v45[3] >> 1;
    v48 = v47 - v46;
    if (__OFSUB__(v47, v46))
    {
      goto LABEL_45;
    }

    if (v48)
    {
      v49 = v45[1];
      if (v48 <= 14)
      {
        memset(__dst, 0, sizeof(__dst));
        v99 = v47 - v46;
        memcpy(__dst, (v49 + v46), v47 - v46);
        v55 = *__dst;
        v56 = v92 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v99 << 16)) << 32);
        swift_unknownObjectRetain();
        v92 = v56;
      }

      else
      {
        v50 = type metadata accessor for __DataStorage();
        v51 = *(v50 + 48);
        v52 = *(v50 + 52);
        swift_allocObject();
        swift_unknownObjectRetain();
        v53 = __DataStorage.init(bytes:length:)();
        v54 = v53;
        if (v48 >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          v55 = swift_allocObject();
          *(v55 + 16) = 0;
          *(v55 + 24) = v48;
          v56 = v54 | 0x8000000000000000;
        }

        else
        {
          v55 = v48 << 32;
          v56 = v53 | 0x4000000000000000;
        }
      }
    }

    else
    {
      swift_unknownObjectRetain();
      v55 = 0;
      v56 = 0xC000000000000000;
    }

    __swift_destroy_boxed_opaque_existential_1(&v101);
    v100 = v4;
    v58 = *(v4 + 16);
    v57 = *(v4 + 24);
    if (v58 >= v57 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1);
      v4 = v100;
    }

    ++v38;
    *(v4 + 16) = v58 + 1;
    v59 = v4 + 16 * v58;
    *(v59 + 32) = v55;
    *(v59 + 40) = v56;
    v60 = v97;
  }

  while (v97 != v38);
  v70 = v89;
  v71 = v88;
  v72 = v87;
  v73 = v86;
  v74 = v85;
  v75 = specialized Collection.prefix(_:)(v89, v88, v87, v86, v85);
  v95 = v76;
  v96 = v75;
  v94 = v77;
  v79 = v78;
  specialized Collection.dropFirst(_:)(v70, v71, v72, v73, v74);
  v105[0] = v60;
  v105[1] = 0;
  v105[2] = v60;
  v105[3] = v90;
  v106 = 0;
  swift_unknownObjectRetain();
  v80 = v91;
  _sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA8BitMasksC_s10ArraySliceVyANGTt1g5(v96, v95, v94, v79, v105);
  if (v80)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v83 + 8))(v82, v84);
  }

  else
  {
    (*(v83 + 8))(v82, v84);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

LABEL_34:
  v63 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t protocol witness for VDAFDecodable.init<A>(from:parameter:) in conformance InnerCorrections@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = InnerCorrections.init<A>(from:parameter:)(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
  }

  return result;
}

uint64_t InnerCorrections.encodedLength.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v22 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    result = v22;
    v6 = (a1 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6 >> 62;
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v12 = v7 + 16;
          v10 = *(v7 + 16);
          v11 = *(v12 + 8);
          v9 = v11 - v10;
          if (__OFSUB__(v11, v10))
          {
            goto LABEL_25;
          }
        }

        else
        {
          v9 = 0;
        }
      }

      else if (v8)
      {
        v13 = __OFSUB__(HIDWORD(v7), v7);
        v14 = HIDWORD(v7) - v7;
        if (v13)
        {
          goto LABEL_26;
        }

        v9 = v14;
      }

      else
      {
        v9 = BYTE6(*v6);
      }

      v23 = result;
      v16 = *(result + 16);
      v15 = *(result + 24);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        result = v23;
      }

      v6 += 2;
      *(result + 16) = v17;
      *(result + 8 * v16 + 32) = v9;
      --v3;
    }

    while (v3);
    goto LABEL_18;
  }

  result = MEMORY[0x277D84F90];
  v17 = *(MEMORY[0x277D84F90] + 16);
  if (v17)
  {
LABEL_18:
    v18 = 0;
    v19 = 32;
    while (1)
    {
      v20 = *(result + v19);
      v13 = __OFADD__(v18, v20);
      v18 += v20;
      if (v13)
      {
        break;
      }

      v19 += 8;
      if (!--v17)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v18 = 0;
LABEL_21:

  v21 = specialized Collection<>.encodedLength.getter(a2);
  v13 = __OFADD__(v18, v21);
  result = v18 + v21;
  if (v13)
  {
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t InnerCorrections.encode<A>(into:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2[2];
  if (a3 >> 62)
  {
    goto LABEL_50;
  }

  result = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    if (v9)
    {
      v11 = v9 == result;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      __break(1u);
      return result;
    }

    v12 = v9 & ~(v9 >> 63);
    if (!v12)
    {
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v13 = a2[4];
    v14 = a2[5];
    v15 = v14 >> 62;
    if ((v14 >> 62) <= 1)
    {
      break;
    }

LABEL_14:
    if (v15 == 3 || !__OFSUB__(*(v13 + 24), *(v13 + 16)))
    {
      goto LABEL_16;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    if (a3 < 0)
    {
      v30 = a3;
    }

    else
    {
      v30 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v31 = a2;
    result = MEMORY[0x2743B2FD0](v30);
    a2 = v31;
  }

  if (v15 && __OFSUB__(HIDWORD(v13), v13))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_16:
  v16 = (a2 + 4);
  v17 = v9 - 1;
  if (v9 != 1)
  {
    v19 = __OFSUB__(HIDWORD(v13), v13);
    v14 = BYTE6(v14);
    --v12;
    v20 = a2 + 7;
    while (1)
    {
      if (!v12)
      {
        goto LABEL_45;
      }

      v25 = *(v20 - 1);
      v26 = *v20 >> 62;
      if (v26 <= 1)
      {
        break;
      }

      if (v26 == 2)
      {
        v29 = v25 + 16;
        v27 = *(v25 + 16);
        v28 = *(v29 + 8);
        v23 = __OFSUB__(v28, v27);
        v25 = v28 - v27;
        if (v23)
        {
          goto LABEL_47;
        }

LABEL_37:
        if (v15 <= 1)
        {
          goto LABEL_38;
        }

        goto LABEL_42;
      }

      v25 = 0;
      if (v15 <= 1)
      {
LABEL_38:
        v24 = v14;
        if (v15)
        {
          v24 = HIDWORD(v13) - v13;
          if (v19)
          {
            goto LABEL_48;
          }
        }

        goto LABEL_24;
      }

LABEL_42:
      if (v15 == 2)
      {
        v21 = *(v13 + 16);
        v22 = *(v13 + 24);
        v23 = __OFSUB__(v22, v21);
        v24 = v22 - v21;
        if (v23)
        {
          goto LABEL_49;
        }

LABEL_24:
        if (v25 != v24)
        {
          goto LABEL_46;
        }

        goto LABEL_25;
      }

      if (v25)
      {
        __break(1u);
        goto LABEL_45;
      }

LABEL_25:
      --v12;
      v20 += 2;
      if (!--v17)
      {
        goto LABEL_17;
      }
    }

    if (!v26)
    {
      v25 = BYTE6(*v20);
      if (v15 <= 1)
      {
        goto LABEL_38;
      }

      goto LABEL_42;
    }

    v23 = __OFSUB__(HIDWORD(v25), v25);
    LODWORD(v25) = HIDWORD(v25) - v25;
    if (v23)
    {
      goto LABEL_13;
    }

    v25 = v25;
    goto LABEL_37;
  }

  do
  {
LABEL_17:
    v18 = *v16++;
    outlined copy of Data._Representation(v18, *(&v18 + 1));
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of RangeReplaceableCollection.append<A>(contentsOf:)();
    --v9;
  }

  while (v9);
  return BitCorrections.encode<A>(into:)(a1, a3, a4, a5);
}

Swift::Int Side.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x2743B3170](a1 & 1);
  return Hasher._finalize()();
}

uint64_t SiblingLeafCorrections.init<A>(from:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = specialized SiblingLeafCorrections.init<A>(from:parameter:)(a1, a3, a4, a5, a6);
  (*(*(a4 - 8) + 8))(a1, a4);
  return v8;
}

uint64_t protocol witness for VDAFDecodable.init<A>(from:parameter:) in conformance SiblingLeafCorrections<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v9 = specialized SiblingLeafCorrections.init<A>(from:parameter:)(a1, *(a4 + 16), a2, *(a4 + 24), a3);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  if (!v5)
  {
    *a5 = v9;
  }

  return result;
}

uint64_t SiblingLeafCorrections.encodedLength.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  return Collection<>.encodedLength.getter(v4, WitnessTable, *(a3 + 40));
}

uint64_t SiblingLeafCorrections.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = MEMORY[0x2743B2830](a2, a3);
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v11 = type metadata accessor for Array();
    WitnessTable = swift_getWitnessTable();
    return Collection<>.encode<A>(into:)(a1, v11, a4, WitnessTable, a6, *(a5 + 40));
  }

  return result;
}

uint64_t LeafCorrections.valueCorrections.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t LeafCorrections.subscript.getter()
{
  type metadata accessor for SiblingLeafCorrections();
  Array.subscript.getter();
  return v1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LeafCorrections<A>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  return static LeafCorrections.== infix(_:_:)();
}

uint64_t protocol witness for VDAFDecodable.init<A>(from:parameter:) in conformance LeafCorrections<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  result = LeafCorrections.init<A>(from:parameter:)(a1, a2, *(a4 + 16), a3, *(a4 + 24));
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t protocol witness for VDAFEncodable.encodedLength.getter in conformance LeafCorrections<A>(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return LeafCorrections.encodedLength.getter();
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

unint64_t specialized Data.InlineData.init(count:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t specialized SiblingLeafCorrections.init<A>(from:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1, a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  return Array<A>.init<A>(from:)(v11, a2, a3, a4, a5);
}

unint64_t lazy protocol witness table accessor for type Side and conformance Side()
{
  result = lazy protocol witness table cache variable for type Side and conformance Side;
  if (!lazy protocol witness table cache variable for type Side and conformance Side)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Side and conformance Side);
  }

  return result;
}

uint64_t type metadata instantiation function for PreamblePublicShare()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Leaf.init(suffix:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for Leaf();
  v8 = *(*(a3 - 8) + 32);
  v9 = a4 + *(v7 + 28);

  return v8(v9, a2, a3);
}

uint64_t type metadata completion function for Leaf(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for Leaf(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
  }

  v8 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void storeEnumTagSinglePayload for Leaf(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 8) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
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

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 8] & ~v8;

  v18(v19);
}

uint64_t static PreamblePrepareState.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v8 = *a2;
  v9 = v6;

  LOBYTE(a4) = static OutputShare.== infix(_:_:)(&v9, &v8, a3, a4);

  return a4 & 1;
}

uint64_t PreamblePrepareState.init<A>(from:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = *(a4 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a1, v18);
  OutputShare.init<A>(from:parameter:)(v17, 1, a3, a4, a5, a6, &v21);
  result = (*(v14 + 8))(a1, a4);
  if (!v7)
  {
    *a7 = v21;
  }

  return result;
}

uint64_t PreamblePrepareState.encodedLength.getter(uint64_t a1)
{
  v6 = *v1;
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = type metadata accessor for OutputShare();
  return OutputShare.encodedLength.getter(v4);
}

uint64_t PreamblePrepareState.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *v4;
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = type metadata accessor for OutputShare();

  OutputShare.encode<A>(into:)(a1, v10, a3, a4);
}

uint64_t type metadata instantiation function for PreamblePrepareState()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t PreambleInputShare.init<A>(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v21 = *(*(a5 + 8) + 8);
  v10 = dispatch thunk of Collection.count.getter();
  v11 = *(a4 + 8);
  if (v10 == (v11)(a2, a4))
  {
    v12 = specialized Seed.init<A>(from:parameter:)(a1, a3, a5);
    result = (*(*(a3 - 8) + 8))(a1, a3);
    *a6 = v12;
  }

  else
  {
    _StringGuts.grow(_:)(24);
    type metadata accessor for PreambleInputShare();
    v14 = _typeName(_:qualified:)();
    v16 = v15;

    MEMORY[0x2743B25F0](0x6572697571657220, 0xEB00000000203A64);
    v11(a2, a4);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v17);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    dispatch thunk of Collection.count.getter();
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v18);

    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v19 = v14;
    v19[1] = v16;
    swift_willThrow();
    return (*(*(a3 - 8) + 8))(a1, a3);
  }

  return result;
}

uint64_t static PreambleInputShare.== infix(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (!v4 || v2 == v3)
  {
    return 1;
  }

  v5 = (v2 + 32);
  v6 = (v3 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t PreambleInputShare.init<A>(from:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = *(a4 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a1, v18);
  PreambleInputShare.init<A>(from:)(v17, a3, a4, a5, a6, &v21);
  result = (*(v14 + 8))(a1, a4);
  if (!v7)
  {
    *a7 = v21;
  }

  return result;
}

uint64_t type metadata instantiation function for PreambleInputShare()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Array.subscript.getter()
{
  return MEMORY[0x2821FC3A8]();
}

{
  return MEMORY[0x2821FC3C0]();
}

uint64_t dispatch thunk of BinaryInteger.init<A>(_:)()
{
  return MEMORY[0x2821FCD18]();
}

{
  return MEMORY[0x2821FCD20]();
}

uint64_t static FixedWidthInteger.random(in:)()
{
  return MEMORY[0x2821FD5B0]();
}

{
  return MEMORY[0x2821FD5B8]();
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)()
{
  return MEMORY[0x2821FDE60]();
}

{
  return MEMORY[0x2821FDE68]();
}
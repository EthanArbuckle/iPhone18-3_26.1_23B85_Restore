unint64_t Double.description.getter(double a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((~*&a1 & 0x7FF0000000000000) == 0 && (*&a1 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 7233902;
  }

  _float64ToString(_:debug:)(0, v13);
  __src[0] = v13[0];
  __src[1] = v13[1];
  v2 = v14;
  if ((v14 & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!v14)
  {
    return 0;
  }

  if (v14 <= 0xF)
  {
    v6 = v14 - 8;
    v7 = 8;
    if (v14 < 8)
    {
      v7 = v14;
    }

    v8 = v7 - 1;
    if (v14 < v7 - 1)
    {
      v8 = v14;
    }

    if (v7 == v8)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    result = LOBYTE(__src[0]);
    if (v14 != 1)
    {
      result = LOBYTE(__src[0]) | (BYTE1(__src[0]) << 8);
      if (v14 != 2)
      {
        result |= BYTE2(__src[0]) << 16;
        if (v14 != 3)
        {
          result |= BYTE3(__src[0]) << 24;
          if (v14 != 4)
          {
            result |= BYTE4(__src[0]) << 32;
            if (v14 != 5)
            {
              result |= BYTE5(__src[0]) << 40;
              if (v14 != 6)
              {
                result |= BYTE6(__src[0]) << 48;
                if (v14 != 7)
                {
                  result |= BYTE7(__src[0]) << 56;
                }
              }
            }
          }
        }
      }
    }

    if (v14 >= 9)
    {
      v9 = 0;
      v10 = 0;
      v11 = __src + 8;
      do
      {
        v12 = *v11++;
        v9 |= v12 << v10;
        v10 += 8;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v3 = v14 | 0xF000000000000000;
    v4 = _allocateStringStorage(codeUnitCapacity:)(v14);
    *(v4 + 16) = v5;
    *(v4 + 24) = v3;
    if (v5 < 0)
    {
      *__StringStorage._breadcrumbsAddress.getter() = 0;
      v3 = *(v4 + 24);
    }

    *(v4 + 32 + (v3 & 0xFFFFFFFFFFFFLL)) = 0;
    specialized UnsafeMutablePointer.initialize(from:count:)(__src, v2, (v4 + 32));
    return *(v4 + 24);
  }

  return result;
}

unint64_t protocol witness for static DurationProtocol./ infix(_:_:) in conformance Duration@<X0>(Swift::_Int128 dividingBy@<0:X1, 8:X2>, uint64_t *a2@<X0>, uint64_t a3@<X3>, unint64_t *a4@<X8>)
{
  low = dividingBy.low;
  result = _ss8DurationV1doiyA2B_xtSzRzlFZSi_Tt1g5(*a2, a2[1], *(&a3 - 1));
  *a4 = result;
  a4[1] = v7;
  return result;
}

uint64_t _ss16DurationProtocolPsE2deoiyyxz_SitFZs0A0V_Tt1g5(void *a1, Swift::_Int128 dividingBy)
{
  if ((dividingBy.low & 0x8000000000000000) != 0)
  {
    if (dividingBy.low == -1 && a1[1] == 0x8000000000000000 && *a1 == 0)
    {
LABEL_10:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else if (!dividingBy.low)
  {
    goto LABEL_10;
  }

  v4.low = dividingBy.low;
  v4.high = dividingBy.low >> 63;
  *&result = _Int128.quotientAndRemainder(dividingBy:)(v4);
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t static DurationProtocol./= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 32))(v10, a1);
  (*(a4 + 24))(v10, a2, a3, a4);
  return (*(v8 + 8))(v10, a3);
}

{
  return static DurationProtocol./= infix(_:_:)(a1, a2, a3, a4);
}

unint64_t protocol witness for static DurationProtocol.* infix(_:_:) in conformance Duration@<X0>(uint64_t a1@<X0>, int64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = specialized static _Int128.* infix(_:_:)(*a1, *(a1 + 8), a2, a2 >> 63);
  *a3 = result;
  a3[1] = v5;
  return result;
}

unint64_t protocol witness for static DurationProtocol.*= infix(_:_:) in conformance Duration(uint64_t a1, int64_t a2)
{
  result = specialized static _Int128.* infix(_:_:)(*a1, *(a1 + 8), a2, a2 >> 63);
  *a1 = result;
  *(a1 + 8) = v4;
  return result;
}

uint64_t static DurationProtocol.*= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 32))(v10, a1);
  (*(a4 + 40))(v10, a2, a3, a4);
  return (*(v8 + 8))(v10, a3);
}

{
  return static DurationProtocol.*= infix(_:_:)(a1, a2, a3, a4);
}

double protocol witness for static DurationProtocol./ infix(_:_:) in conformance Duration(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  _sSBss17FixedWidthInteger14RawSignificandRpzrlE8_convert4fromx5value_Sb5exacttqd___tSzRd__lFZSd_s7_Int128VTt1g5(&v6, *a1, *(a1 + 8));
  v4 = v6;
  _sSBss17FixedWidthInteger14RawSignificandRpzrlE8_convert4fromx5value_Sb5exacttqd___tSzRd__lFZSd_s7_Int128VTt1g5(&v6, v2, v3);
  return v4 / v6;
}

uint64_t specialized static BinaryFloatingPoint<>.random<A>(in:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v125 = a2;
  v121 = a6;
  v10 = *(a4 + 16);
  v11 = *(v10[2] + 8);
  v120 = *(v11 + 16);
  swift_getAssociatedTypeWitness(0, v120, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v119 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v118 = &v89 - v13;
  v126 = a5;
  v123 = *(a5 + 8);
  v100 = *(v123 + 24);
  v14 = *(v100 + 16);
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v16 = v15;
  v109 = v14;
  swift_getAssociatedTypeWitness(0, v14, v15, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v96 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v95 = &v89 - v18;
  v19 = swift_checkMetadataState(0, v16);
  v99 = *(v19 - 1);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v94 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v98 = &v89 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v97 = &v89 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v108 = &v89 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v122 = &v89 - v29;
  v124 = *(a3 - 1);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v89 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v111 = &v89 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v110 = &v89 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v112 = &v89 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v117 = &v89 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v113 = &v89 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v89 - v43;
  v46 = type metadata accessor for Range(0, a3, *(v10[3] + 8), v45);
  v47 = *(v10[1] + 8);
  v48 = *(v47 + 8);
  v49 = a1 + *(v46 + 36);
  v115 = v47 + 8;
  v116 = v47;
  v114 = v48;
  if (((v48)(a1, v49, a3) & 1) != 0 || (v107 = v32, v50 = *(v46 + 36), v51 = *(v11 + 8), (*(v51 + 40))(a1 + v50, a1, a3, v51), v52 = v10[47], v106 = v10, (v52(a3, v10) & 1) == 0))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v103 = v51;
  v104 = v44;
  v105 = a1;
  v53 = v126;
  v54 = (*(v126 + 56))(v19, v126);
  v55 = *(a4 + 104);
  result = v55(a3, a4);
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v93 = a4;
  v102 = v11;
  v101 = v50;
  if (v54 == result + 1)
  {
    v57 = v122;
    specialized static FixedWidthInteger._random<A>(using:)(v19, v53, v122);
    v58 = v123;
    goto LABEL_9;
  }

  result = v55(a3, a4);
  v59 = result + 1;
  if (__OFADD__(result, 1))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v60 = v109;
  v61 = v96;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v109, v19, v96, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v91 = *(AssociatedConformanceWitness + 8);
  v92 = AssociatedConformanceWitness + 8;
  v62 = v95;
  v91(&qword_1806729C0, 512, v61, AssociatedConformanceWitness);
  v89 = *(v60 + 3);
  v63 = v97;
  v64 = v89(v62, v19, v60);
  v127 = v59;
  v58 = v123;
  v65 = *(v123 + 256);
  v68 = lazy protocol witness table accessor for type Int and conformance Int(v64, v66, v67);
  v65(v63, &v127, &type metadata for Int, v68, v19, v58);
  v69 = *(v99 + 8);
  v69(v63, v19);
  specialized static FixedWidthInteger._random<A>(using:)(v19, v126, v63);
  v91(&qword_1806729C0, 512, v61, AssociatedConformanceWitness);
  v70 = v94;
  v89(v62, v19, v109);
  v71 = v98;
  v72 = v108;
  (*(*(v100 + 8) + 40))(v108, v70, v19);
  v69(v70, v19);
  v69(v72, v19);
  v57 = v122;
  (*(v58 + 192))(v63, v71, v19, v58);
  v69(v71, v19);
  v69(v63, v19);
LABEL_9:
  v73 = v106;
  v74 = v117;
  (v106[9])(v57, v19, v58, a3, v106);
  v75 = v110;
  (v73[18])(a3, v73);
  v76 = v119;
  v77 = v120;
  v78 = swift_getAssociatedConformanceWitness(v120, a3, v119, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v79 = v118;
  (*(v78 + 8))(qword_18071E0B8, 768, v76, v78);
  v80 = v111;
  (v77[3])(v79, a3, v77);
  v81 = v112;
  (v73[24])(v75, v80, a3, v73);
  v82 = *(v124 + 8);
  v82(v80, a3);
  v82(v75, a3);
  v83 = v102;
  v84 = *(v102 + 64);
  v85 = v113;
  v84(v74, v81, a3, v102);
  v82(v81, a3);
  v82(v74, a3);
  v86 = v104;
  v84(v104, v85, a3, v83);
  v82(v85, a3);
  v82(v86, a3);
  v87 = v107;
  v88 = v105;
  (*(v103 + 24))(v74, v105, a3);
  v82(v74, a3);
  if ((v114(v87, v88 + v101, a3, v116) & 1) == 0)
  {
    return (*(v124 + 32))(v121, v87, a3);
  }

  v82(v87, a3);
  return specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v88, v125, a3, v93, v126);
}

{
  v116 = a2;
  v112 = a6;
  v10 = *(a4 + 16);
  v11 = *(v10[2] + 8);
  v106 = *(v11 + 16);
  swift_getAssociatedTypeWitness(0, v106, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v105 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v104 = v86 - v13;
  v118 = *(a5 + 8);
  v97 = v118[3];
  v14 = *(v97 + 16);
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v16 = v15;
  v110 = v14;
  swift_getAssociatedTypeWitness(0, v14, v15, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v96 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v95 = v86 - v18;
  v19 = swift_checkMetadataState(0, v16);
  v117 = *(v19 - 1);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v94 = v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v109 = v86 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v114 = v86 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v115 = v86 - v27;
  v28 = *(a3 - 1);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v100 = v86 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v99 = v86 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v101 = v86 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v103 = v86 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v102 = v86 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v40 = v86 - v39;
  v42 = *(type metadata accessor for ClosedRange(0, a3, *(v10[3] + 8), v41) + 36);
  v107 = v11;
  v43 = *(v11 + 8);
  v44 = *(v43 + 40);
  v98 = v42;
  v113 = a1;
  v44(a1 + v42, a1, a3, v43);
  v45 = v10[47];
  v111 = v40;
  if ((v45(a3, v10) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v108 = v28;
  v93 = v10;
  v46 = (*(a5 + 56))(v19, a5);
  v47 = *(a4 + 104);
  result = v47(a3, a4);
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v92 = v43;
  if (v46 == result + 1)
  {
    v49 = v115;
    specialized static FixedWidthInteger._random<A>(using:)(v19, a5, v115);
    __buf = 0;
    swift_stdlib_random(&__buf, 8uLL);
    v50 = __buf;
    v51 = v114;
    (*(a5 + 64))(v19, a5);
    v52 = v118;
    v53 = (*(*(v118[2] + 8) + 8))(v49, v51, v19);
    v54 = *(v117 + 8);
    v54(v51, v19);
    if (v53 & 1) != 0 && (v50)
    {
      v54(v49, v19);
LABEL_11:
      v71 = v108;
      (*(v108 + 8))(v111, a3);
      return (*(v71 + 16))(v112, v113 + v98, a3);
    }

    goto LABEL_12;
  }

  result = v47(a3, a4);
  v55 = result + 1;
  if (__OFADD__(result, 1))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v56 = v110;
  v57 = v96;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v110, v19, v96, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v91 = a5;
  v90 = a4;
  v88 = AssociatedConformanceWitness;
  v89 = *(AssociatedConformanceWitness + 8);
  v59 = v95;
  v89(&qword_1806729C0, 512, v57, AssociatedConformanceWitness);
  v87 = *(v56 + 3);
  v60 = v114;
  v61 = v87(v59, v19, v56);
  __buf = v55;
  v52 = v118;
  v86[1] = v118 + 32;
  v62 = v118[32];
  v65 = lazy protocol witness table accessor for type Int and conformance Int(v61, v63, v64);
  v62(v60, &__buf, &type metadata for Int, v65, v19, v52);
  v117 = *(v117 + 8);
  (v117)(v60, v19);
  v89(&qword_1806729C0, 512, v57, v88);
  v66 = v94;
  v87(v59, v19, v110);
  v67 = v109;
  (*(*(v97 + 8) + 24))(v109, v66, v19);
  v68 = v66;
  v69 = v117;
  (v117)(v68, v19);
  swift_getAssociatedConformanceWitness(v90, a3, v19, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
  v49 = v115;
  specialized RandomNumberGenerator.next<A>(upperBound:)(v60, v19, v91, v115);
  v69(v60, v19);
  v70 = (*(*(v52[2] + 8) + 8))(v49, v67, v19);
  v69(v67, v19);
  if (v70)
  {
    v69(v49, v19);
    goto LABEL_11;
  }

LABEL_12:
  v72 = v93;
  v73 = v103;
  (v93[9])(v49, v19, v52, a3, v93);
  v74 = v99;
  (v72[18])(a3, v72);
  v75 = v105;
  v76 = v106;
  v77 = swift_getAssociatedConformanceWitness(v106, a3, v105, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v78 = v104;
  (*(v77 + 8))(qword_18071E0B8, 768, v75, v77);
  v79 = v100;
  (v76[3])(v78, a3, v76);
  v80 = v101;
  (v72[24])(v74, v79, a3, v72);
  v81 = *(v108 + 8);
  v81(v79, a3);
  v81(v74, a3);
  v82 = v107;
  v83 = *(v107 + 64);
  v84 = v102;
  v83(v73, v80, a3, v107);
  v81(v80, a3);
  v81(v73, a3);
  v85 = v111;
  v83(v111, v84, a3, v82);
  v81(v84, a3);
  v81(v85, a3);
  (*(v92 + 24))(v73, v113, a3);
  return (v81)(v73, a3);
}

uint64_t static BinaryFloatingPoint<>.random<A>(in:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v134 = a4;
  v135 = a6;
  v133 = a2;
  v13 = *(a5 + 16);
  v14 = *(*(v13 + 16) + 8);
  v127 = *(v14 + 16);
  swift_getAssociatedTypeWitness(0, v127, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v126 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v125 = &v96 - v16;
  v137 = a7;
  v131 = *(a7 + 8);
  v106 = *(v131 + 24);
  v17 = *(v106 + 16);
  v136 = a5;
  swift_getAssociatedTypeWitness(255, a5, a3, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v19 = v18;
  v116 = v17;
  swift_getAssociatedTypeWitness(0, v17, v18, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v104 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v103 = &v96 - v21;
  v22 = swift_checkMetadataState(0, v19);
  v129 = *(v22 - 1);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v102 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v105 = &v96 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v115 = &v96 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v130 = &v96 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v128 = &v96 - v32;
  v132 = *(a3 - 1);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v124 = &v96 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v118 = &v96 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v117 = &v96 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v41 = &v96 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39);
  v123 = &v96 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v119 = &v96 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v96 - v46;
  v49 = type metadata accessor for Range(0, a3, *(*(v13 + 24) + 8), v48);
  v50 = *(*(v13 + 8) + 8);
  v51 = *(v50 + 8);
  v52 = a1 + *(v49 + 36);
  v121 = v50 + 8;
  v122 = v50;
  v120 = v51;
  if (((v51)(a1, v52, a3) & 1) != 0 || (v53 = *(v49 + 36), v54 = *(*(v14 + 8) + 40), v114 = *(v14 + 8), v54(a1 + v53, a1, a3), ((*(v13 + 376))(a3, v13) & 1) == 0))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v110 = v53;
  v111 = v14;
  v112 = a1;
  v113 = a8;
  v55 = (*(v137 + 56))(v22);
  v56 = *(v136 + 104);
  result = v56(a3);
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v109 = v47;
  v108 = v41;
  v107 = v13;
  if (v55 == result + 1)
  {
    v58 = v128;
    static FixedWidthInteger._random<A>(using:)(v133, v22, v134, v137, v135, v128);
    v60 = v130;
    v59 = v131;
    v61 = v129;
    goto LABEL_9;
  }

  result = (v56)(a3, v136);
  if (__OFADD__(result, 1))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v62 = v116;
  v63 = v104;
  v64 = result + 1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v116, v22, v104, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v99 = *(AssociatedConformanceWitness + 8);
  v100 = AssociatedConformanceWitness + 8;
  v65 = v103;
  v99(&qword_1806729C0, 512, v63, AssociatedConformanceWitness);
  v97 = *(v62 + 3);
  v66 = v115;
  v67 = v97(v65, v22, v62);
  v138 = v64;
  v68 = v131;
  v69 = *(v131 + 256);
  v72 = lazy protocol witness table accessor for type Int and conformance Int(v67, v70, v71);
  v69(v66, &v138, &type metadata for Int, v72, v22, v68);
  v61 = v129;
  v101 = *(v129 + 8);
  v101(v66, v22);
  static FixedWidthInteger._random<A>(using:)(v133, v22, v134, v137, v135, v66);
  v99(&qword_1806729C0, 512, v63, AssociatedConformanceWitness);
  v60 = v130;
  v73 = v102;
  v97(v65, v22, v116);
  v74 = v105;
  (*(*(v106 + 8) + 40))(v60, v73, v22);
  v75 = v73;
  v59 = v131;
  v76 = v101;
  v101(v75, v22);
  v76(v60, v22);
  v77 = v128;
  v78 = v115;
  (*(v59 + 192))(v115, v74, v22, v59);
  v79 = v101;
  v101(v74, v22);
  v79(v78, v22);
  v58 = v77;
LABEL_9:
  (*(v61 + 32))(v60, v58, v22);
  v80 = v107;
  v81 = v123;
  (*(v107 + 72))(v60, v22, v59, a3, v107);
  v82 = v117;
  (*(v80 + 144))(a3, v80);
  v84 = v126;
  v83 = v127;
  v85 = swift_getAssociatedConformanceWitness(v127, a3, v126, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v86 = v125;
  (*(v85 + 8))(qword_18071E0B8, 768, v84, v85);
  v87 = v118;
  (v83[3])(v86, a3, v83);
  v88 = v108;
  (*(v80 + 192))(v82, v87, a3, v80);
  v89 = *(v132 + 8);
  v89(v87, a3);
  v89(v82, a3);
  v90 = v111;
  v91 = *(v111 + 64);
  v92 = v119;
  v91(v81, v88, a3, v111);
  v89(v88, a3);
  v89(v81, a3);
  v93 = v109;
  v91(v109, v92, a3, v90);
  v89(v92, a3);
  v89(v93, a3);
  v94 = v124;
  v95 = v112;
  (*(v114 + 24))(v81, v112, a3);
  v89(v81, a3);
  if ((v120(v94, v95 + v110, a3, v122) & 1) == 0)
  {
    return (*(v132 + 32))(v113, v94, a3);
  }

  v89(v94, a3);
  return static BinaryFloatingPoint<>.random<A>(in:using:)(v95, v133, a3, v134, v136, v135, v137);
}

{
  v116 = a2;
  v117 = a6;
  v115 = a4;
  v120 = a1;
  v112 = a8;
  v11 = *(a5 + 16);
  v12 = *(v11[2] + 8);
  v107 = *(v12 + 16);
  swift_getAssociatedTypeWitness(0, v107, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v106 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v105 = &v87 - v14;
  v119 = *(a7 + 8);
  v97 = v119[3];
  v15 = *(v97 + 16);
  swift_getAssociatedTypeWitness(255, a5, a3, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v17 = v16;
  v110 = v15;
  swift_getAssociatedTypeWitness(0, v15, v16, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v96 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v95 = &v87 - v19;
  v20 = swift_checkMetadataState(0, v17);
  v118 = *(v20 - 1);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v94 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v109 = &v87 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v113 = &v87 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v114 = &v87 - v28;
  v29 = *(a3 - 1);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v100 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v99 = &v87 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v101 = &v87 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v104 = &v87 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v103 = &v87 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v87 - v40;
  v43 = type metadata accessor for ClosedRange(0, a3, *(v11[3] + 8), v42);
  v44 = *(v12 + 8);
  v45 = *(v44 + 40);
  v98 = *(v43 + 36);
  v102 = v44;
  v45(v120 + v98, v120, a3);
  v46 = v11[47];
  v111 = v41;
  if ((v46(a3, v11) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v108 = v29;
  v92 = v11;
  v93 = v12;
  v47 = (*(a7 + 56))(v20, a7);
  v48 = *(a5 + 104);
  result = v48(a3, a5);
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v47 != result + 1)
  {
    result = v48(a3, a5);
    v57 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v58 = v110;
      v59 = v96;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v110, v20, v96, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v91 = a7;
      v89 = AssociatedConformanceWitness;
      v90 = *(AssociatedConformanceWitness + 8);
      v61 = v95;
      v90(&qword_1806729C0, 512, v59, AssociatedConformanceWitness);
      v88 = *(v58 + 3);
      v54 = v113;
      v62 = v88(v61, v20, v58);
      v121 = v57;
      v63 = v119;
      v87 = v119 + 32;
      v64 = v119[32];
      v67 = lazy protocol witness table accessor for type Int and conformance Int(v62, v65, v66);
      v64(v54, &v121, &type metadata for Int, v67, v20, v63);
      v68 = *(v118 + 8);
      v68(v54, v20);
      v90(&qword_1806729C0, 512, v59, v89);
      v69 = v94;
      v88(v61, v20, v110);
      v70 = v109;
      (*(*(v97 + 8) + 24))(v109, v69, v20);
      v68(v69, v20);
      v51 = v114;
      RandomNumberGenerator.next<A>(upperBound:)(v54, v115, v20, v117, v91, v114);
      v68(v54, v20);
      v71 = (*(*(v119[2] + 8) + 8))(v51, v70, v20);
      v68(v70, v20);
      if (v71)
      {
        v68(v51, v20);
        goto LABEL_10;
      }

      goto LABEL_11;
    }

LABEL_15:
    __break(1u);
    return result;
  }

  v51 = v114;
  v50 = v115;
  v52 = v117;
  static FixedWidthInteger._random<A>(using:)(v116, v20, v115, a7, v117, v114);
  v53 = (*(v52 + 8))(v50, v52);
  v54 = v113;
  (*(a7 + 64))(v20, a7);
  v55 = (*(*(v119[2] + 8) + 8))(v51, v54, v20);
  v56 = *(v118 + 8);
  v56(v54, v20);
  if (v55 & 1) != 0 && (v53)
  {
    v56(v51, v20);
LABEL_10:
    v72 = v108;
    (*(v108 + 8))(v111, a3);
    return (*(v72 + 16))(v112, v120 + v98, a3);
  }

LABEL_11:
  (*(v118 + 32))(v54, v51, v20);
  v73 = v92;
  v74 = v104;
  (v92[9])(v54, v20, v119, a3, v92);
  v75 = v99;
  (v73[18])(a3, v73);
  v76 = v106;
  v77 = v107;
  v78 = swift_getAssociatedConformanceWitness(v107, a3, v106, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v79 = v105;
  (*(v78 + 8))(qword_18071E0B8, 768, v76, v78);
  v80 = v100;
  (v77[3])(v79, a3, v77);
  v81 = v101;
  (v73[24])(v75, v80, a3, v73);
  v82 = *(v108 + 8);
  v82(v80, a3);
  v82(v75, a3);
  v83 = v93;
  v84 = *(v93 + 64);
  v85 = v103;
  v84(v74, v81, a3, v93);
  v82(v81, a3);
  v82(v74, a3);
  v86 = v111;
  v84(v111, v85, a3, v83);
  v82(v85, a3);
  v82(v86, a3);
  (*(v102 + 24))(v74, v120, a3);
  return (v82)(v74, a3);
}

uint64_t static BinaryFloatingPoint<>.random(in:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  return specialized static BinaryFloatingPoint<>.random<A>(in:using:)(a1, a2, a2, a3, a4, a5);
}

{
  return specialized static BinaryFloatingPoint<>.random<A>(in:using:)(a1, a2, a2, a3, a4, a5);
}

uint64_t Int128._value.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t Int128.init(_builtinIntegerLiteral:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 8 <= 0x80)
  {
    return *a1;
  }

  else
  {
    return 0;
  }
}

uint64_t Int128.init<A>(exactly:)(_BYTE *a1, const char *a2, void *a3)
{
  v48 = *(a3[3] + 16);
  swift_getAssociatedTypeWitness(0, v48, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v7 = v6;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v46[-v9];
  v51 = *(a2 - 1);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v49 = &v46[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v46[-v14];
  v52 = 64;
  v16 = a3[30];
  v19 = lazy protocol witness table accessor for type Int and conformance Int(v13, v17, v18);
  v50 = a1;
  v16(a1, &v52, &type metadata for Int, v19, a2, a3);
  v20 = a3[8];
  v21 = v20(a2, a3);
  v22 = a3[16];
  if ((v21 & 1) == 0 || v22(a2, a3) < 65)
  {
    goto LABEL_14;
  }

  if (v20(a2, a3))
  {
    v23 = v22(a2, a3);
    if (v23 < 64)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v47 = v20(a2, a3);
  v23 = v22(a2, a3);
  if ((v47 & 1) == 0)
  {
    if (v23 >= 64)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v23 > 64)
  {
LABEL_8:
    v52 = 0x8000000000000000;
    v48 = a3[12];
    v26 = lazy protocol witness table accessor for type Int64 and conformance Int64(v23, v24, v25);
    v27 = v49;
    (v48)(&v52, &type metadata for Int64, v26, a2, a3);
    v28 = (*(*(a3[4] + 8) + 16))(v15, v27, a2);
    v29 = *(v51 + 8);
    v29(v49, a2);
    if (v28)
    {
      goto LABEL_18;
    }

LABEL_14:
    if (v22(a2, a3) <= 64 && (v22(a2, a3) != 64 || (v20(a2, a3) & 1) != 0))
    {
      goto LABEL_24;
    }

    v33 = v20(a2, a3);
    v34 = v22(a2, a3);
    if (v33)
    {
      if (v34 >= 65)
      {
        goto LABEL_17;
      }
    }

    else if (v34 >= 64)
    {
LABEL_17:
      v52 = 0x7FFFFFFFFFFFFFFFLL;
      v37 = a3[12];
      v38 = lazy protocol witness table accessor for type Int64 and conformance Int64(v34, v35, v36);
      v39 = v49;
      v37(&v52, &type metadata for Int64, v38, a2, a3);
      v40 = (*(*(a3[4] + 8) + 16))(v39, v15, a2);
      v29 = *(v51 + 8);
      v29(v39, a2);
      if (v40)
      {
        goto LABEL_18;
      }

LABEL_24:
      v42 = a3[15];
      v42(a2, a3);
      v43 = *(v51 + 8);
      v43(v15, a2);
      v44 = v50;
      v41 = (v42)(a2, a3);
      v43(v44, a2);
      return v41;
    }

    (a3[15])(a2, a3);
    goto LABEL_24;
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v48, a2, v7, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v7, AssociatedConformanceWitness);
  v31 = v49;
  (v48[3])(v10, a2);
  v32 = (*(*(a3[4] + 8) + 16))(v15, v31, a2);
  v29 = *(v51 + 8);
  v29(v49, a2);
  if ((v32 & 1) == 0)
  {
LABEL_13:
    (a3[15])(a2, a3);
    goto LABEL_14;
  }

LABEL_18:
  v29(v15, a2);
  v29(v50, a2);
  return 0;
}

uint64_t Int128.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return Int128.init<A>(_:)(a1, a2, a3, specialized Int128.init<A>(_:));
}

{
  return Int128.init<A>(_:)(a1, a2, a3, specialized Int128.init<A>(_:));
}

uint64_t Int128.init<A>(clamping:)(uint64_t a1, const char *a2, void *a3)
{
  v6 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, a2);
  v9 = Int128.init<A>(exactly:)(v8, a2, a3);
  if (v10)
  {
    (*(*(a3[3] + 8) + 16))(a2);
    v11 = (*(*(a3[4] + 8) + 16))(a1, v8, a2);
    v12 = *(v6 + 8);
    v12(a1, a2);
    v12(v8, a2);
    if (v11)
    {
      return 0;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    v14 = v9;
    (*(v6 + 8))(a1, a2);
    return v14;
  }
}

uint64_t UInt128.init<A>(truncatingIfNeeded:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = specialized UInt128.init<A>(truncatingIfNeeded:)(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

uint64_t *protocol witness for _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:) in conformance Int128@<X0>(uint64_t *result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 >> 8 <= 0x80)
  {
    v3 = *result;
    if (a2 >> 8 > 0x40)
    {
      v4 = result[1];
      *a3 = v3;
      a3[1] = v4;
    }

    else
    {
      *a3 = v3;
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

int **Int128.init<A>(exactly:)(char *a1, const char *a2, uint64_t a3)
{
  v77 = *(a3 + 16);
  v6 = *(*(v77 + 2) + 8);
  v65 = *(v6 + 16);
  swift_getAssociatedTypeWitness(0, v65, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v63 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v60 - v8;
  v75 = a3;
  v9 = *(a3 + 8);
  swift_getAssociatedTypeWitness(0, v9, a2, &protocol requirements base descriptor for ExpressibleByFloatLiteral, associated type descriptor for ExpressibleByFloatLiteral.FloatLiteralType);
  v11 = v10;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v60 - v13;
  v76 = *(a2 - 1);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v64 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v73 = &v60 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v60 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v60 - v22;
  v24 = *(v6 + 56);
  v78 = a1;
  v74 = v6;
  v66 = v24;
  (v24)(a2, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v9, a2, v11, &protocol requirements base descriptor for ExpressibleByFloatLiteral, associated conformance descriptor for ExpressibleByFloatLiteral.ExpressibleByFloatLiteral.FloatLiteralType: _ExpressibleByBuiltinFloatLiteral);
  v26 = *(AssociatedConformanceWitness + 8);
  v71 = v11;
  v68 = v26;
  v69 = AssociatedConformanceWitness;
  (v26)(v11, 1.84467441e19);
  v27 = *(v9 + 24);
  v70 = v14;
  v72 = v9;
  v67 = v27;
  v27(v14, a2, v9);
  v28 = *(*(v77 + 3) + 8);
  v60 = *(v28 + 16);
  v61 = v28;
  LOBYTE(a1) = v60(v23, v21, a2);
  v29 = *(v76 + 8);
  v29(v21, a2);
  v29(v23, a2);
  if ((a1 & 1) == 0)
  {
    v35 = v70;
    v68(5.42101086e-20);
    v67(v35, a2, v72);
    v36 = v74 + 64;
    v66 = *(v74 + 64);
    v66(v78, v21, a2);
    v29(v21, a2);
    LOBYTE(v79) = 3;
    v37 = v73;
    (*(v77 + 38))(&v79, a2);
    v29(v23, a2);
    v38 = (*(v76 + 16))(v23, v37, a2);
    v41 = lazy protocol witness table accessor for type Int64 and conformance Int64(v38, v39, v40);
    FixedWidthInteger.init<A>(exactly:)(v23, &type metadata for Int64, a2, v41, v75, &v79);
    if (v80 == 1)
    {
      v29(v78, a2);
      v29(v73, a2);
    }

    else
    {
      v65 = v79;
      v49 = v70;
      v77 = v29;
      v68(1.84467441e19);
      v76 = v36;
      v50 = v64;
      v67(v49, a2, v72);
      v52 = v73;
      v51 = v74;
      (v66)(v50, v73, a2, v74);
      v53 = v77;
      v77(v50, a2);
      v53(v52, a2);
      v54 = *(*(v51 + 8) + 40);
      v55 = v78;
      v54(v78, v21, a2);
      v53(v55, a2);
      v56 = (v53)(v21, a2);
      v59 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v56, v57, v58);
      FixedWidthInteger.init<A>(exactly:)(v23, &type metadata for UInt64, a2, v59, v75, &v79);
      if (v80 != 1)
      {
        return v79;
      }
    }

    return 0;
  }

  v30 = v29;
  v31 = (v66)(a2, v74);
  v34 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v31, v32, v33);
  FixedWidthInteger.init<A>(exactly:)(v23, &type metadata for UInt64, a2, v34, v75, &v79);
  if (v80 == 1)
  {
    v29(v78, a2);
    return 0;
  }

  v42 = v79;
  v43 = v65;
  v44 = v63;
  v45 = swift_getAssociatedConformanceWitness(v65, a2, v63, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v46 = v62;
  (*(v45 + 8))(&qword_18071E0A8, 256, v44, v45);
  (v43[3])(v46, a2, v43);
  v47 = v78;
  LOBYTE(v44) = (v60)(v78, v23, a2, v61);
  v30(v47, a2);
  v30(v23, a2);
  if (v44)
  {
    return -v42;
  }

  else
  {
    return v42;
  }
}

uint64_t Int128.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

uint64_t Int128.multipliedReportingOverflow(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a1 ^ (a2 >> 63)) - (a2 >> 63);
  if ((a4 ^ a2) < 0)
  {
    return -(((a3 ^ (a4 >> 63)) - (a4 >> 63)) * v4);
  }

  else
  {
    return ((a3 ^ (a4 >> 63)) - (a4 >> 63)) * v4;
  }
}

uint64_t UInt128.init(_builtinIntegerLiteral:)(uint64_t a1, unint64_t a2)
{
  result = 0;
  if (a2 >> 9 <= 0x40 && (a2 & 1) == 0)
  {
    return *a1;
  }

  return result;
}

uint64_t Int128.dividedReportingOverflow(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(a1 | a2))
  {
    return a3;
  }

  if ((a1 & a2) == 0xFFFFFFFFFFFFFFFFLL && !(a3 | a4 ^ 0x8000000000000000))
  {
    return 0;
  }

  return __divti3();
}

uint64_t Int128.remainderReportingOverflow(dividingBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(a1 | a2))
  {
    return a3;
  }

  if ((a1 & a2) == 0xFFFFFFFFFFFFFFFFLL && !(a3 | a4 ^ 0x8000000000000000))
  {
    return 0;
  }

  return __modti3();
}

unint64_t static Int128.+ infix(_:_:)(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = __OFADD__(__CFADD__(a1, a3), a2);
  v6 = __PAIR128__(a2, a1) + a3;
  result = a1 + a3;
  if (v4 | __OFADD__(a4, *(&v6 + 1)))
  {
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    __break(1u);
  }

  return result;
}

unint64_t static Int128.- infix(_:_:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a1 >= a3;
  result = a1 - a3;
  if (__OFSUB__(a2, a4, v4))
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance Int128@<X0>(void *result@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = *result + *a2;
  if (__OFADD__(__CFADD__(*result, *a2), result[1]) | __OFADD__(a2[1], *(&v3 + 1)))
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    __break(1u);
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

void *protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance Int128(void *result, unint64_t *a2)
{
  v2 = a2[1];
  v3 = *result + *a2;
  v4 = __OFADD__(__CFADD__(*result, *a2), result[1]) | __OFADD__(v2, *(&v3 + 1));
  v5 = v2 + *(&v3 + 1);
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    __break(1u);
  }

  else
  {
    *result = v3;
    result[1] = v5;
  }

  return result;
}

_OWORD *protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance Int128@<X0>(_OWORD *result@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X8>)
{
  if (__OFSUB__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result - *a2;
  }

  return result;
}

_OWORD *protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance Int128(_OWORD *result, _OWORD *a2)
{
  if (__OFSUB__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *result -= *a2;
  }

  return result;
}

uint64_t static Int128.* infix(_:_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __PAIR128__(a2 ^ (a2 >> 63), result ^ (a2 >> 63)) - __PAIR128__(a2 >> 63, a2 >> 63);
  v5 = __PAIR128__(a4 ^ (a4 >> 63), a3 ^ (a4 >> 63)) - __PAIR128__(a4 >> 63, a4 >> 63);
  if ((__PAIR128__(a2 ^ (a2 >> 63), result ^ (a2 >> 63)) - __PAIR128__(a2 >> 63, a2 >> 63)) >> 64)
  {
    v6 = *(&v5 + 1) == 0;
  }

  else
  {
    v6 = 1;
  }

  v9 = !v6 || (((__PAIR128__(a2 ^ (a2 >> 63), result ^ (a2 >> 63)) - __PAIR128__(a2 >> 63, a2 >> 63)) >> 64) * ((a3 ^ (a4 >> 63)) - (a4 >> 63))) >> 64 != 0 || (((__PAIR128__(a4 ^ (a4 >> 63), a3 ^ (a4 >> 63)) - __PAIR128__(a4 >> 63, a4 >> 63)) >> 64) * ((result ^ (a2 >> 63)) - (a2 >> 63))) >> 64 != 0;
  if (__CFADD__((v4 * v5) >> 64, *(&v5 + 1) * v4 + *(&v4 + 1) * v5))
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  v11 = v4 * v5 != 0;
  if ((a4 ^ a2) >= 0)
  {
    v11 = (((v5 * v4) >> 64) & 0x8000000000000000) != 0;
  }

  if ((v10 & 1) != 0 || v11)
  {
    __break(1u);
  }

  else if ((a4 ^ a2) < 0)
  {
    return -(v4 * v5);
  }

  else
  {
    return v4 * v5;
  }

  return result;
}

uint64_t static Int128.*= infix(_:_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = abs128(*result);
  v4 = __PAIR128__(a3 ^ (a3 >> 63), a2 ^ (a3 >> 63)) - __PAIR128__(a3 >> 63, a3 >> 63);
  if (*(&v3 + 1))
  {
    v5 = *(&v4 + 1) == 0;
  }

  else
  {
    v5 = 1;
  }

  v8 = !v5 || (*(&v3 + 1) * ((a2 ^ (a3 >> 63)) - (a3 >> 63))) >> 64 != 0 || (((__PAIR128__(a3 ^ (a3 >> 63), a2 ^ (a3 >> 63)) - __PAIR128__(a3 >> 63, a3 >> 63)) >> 64) * v3) >> 64 != 0;
  v9 = (v4 * v3) >> 64;
  if (__CFADD__((v3 * v4) >> 64, *(&v4 + 1) * v3 + *(&v3 + 1) * v4))
  {
    v8 = 1;
  }

  v10 = v3 * v4;
  if (((*(result + 8) ^ a3) & 0x8000000000000000) == 0)
  {
    if (v8)
    {
      __break(1u);
      goto LABEL_24;
    }

    if ((v9 & 0x8000000000000000) == 0)
    {
LABEL_22:
      *result = v10;
      *(result + 8) = v9;
      return result;
    }

    __break(1u);
  }

  if (v8)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = v10 == 0;
  v10 = -v10;
  v9 = -(v9 + !v11);
  if (!v10)
  {
    goto LABEL_22;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t static Int128./ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(a3 | a4) || !(a1 | a2 ^ 0x8000000000000000) && (a3 & a4) == 0xFFFFFFFFFFFFFFFFLL)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return __divti3();
}

uint64_t static Int128./= infix(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!(a2 | a3) || (v6 = *a1, v7 = a1[1], (a2 & a3) == 0xFFFFFFFFFFFFFFFFLL) && !(v6 | v7 ^ 0x8000000000000000))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = __divti3();
  *a1 = result;
  a1[1] = v10;
  return result;
}

uint64_t static Int128.% infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(a3 | a4) || !(a1 | a2 ^ 0x8000000000000000) && (a3 & a4) == 0xFFFFFFFFFFFFFFFFLL)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return __modti3();
}

uint64_t static Int128.%= infix(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!(a2 | a3) || (v6 = *a1, v7 = a1[1], (a2 & a3) == 0xFFFFFFFFFFFFFFFFLL) && !(v6 | v7 ^ 0x8000000000000000))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = __modti3();
  *a1 = result;
  a1[1] = v10;
  return result;
}

uint64_t protocol witness for static SignedNumeric.- prefix(_:) in conformance Int128@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = -*result >> 64;
  if (__OFSUB__(0, *(result + 8), *result == 0))
  {
    __break(1u);
  }

  else
  {
    *a2 = -*result;
    a2[1] = v2;
  }

  return result;
}

void protocol witness for SignedNumeric.negate() in conformance Int128()
{
  v1 = -*v0 >> 64;
  if (__OFSUB__(0, *(v0 + 8), *v0 == 0))
  {
    __break(1u);
  }

  else
  {
    *v0 = -*v0;
    *(v0 + 8) = v1;
  }
}

uint64_t protocol witness for static Numeric.* infix(_:_:) in conformance Int128@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = abs128(*result);
  v4 = abs128(*a2);
  if (*(&v3 + 1))
  {
    v5 = *(&v4 + 1) == 0;
  }

  else
  {
    v5 = 1;
  }

  v8 = !v5 || (*(&v3 + 1) * v4) >> 64 != 0 || (*(&v4 + 1) * v3) >> 64 != 0;
  v9 = (v4 * v3) >> 64;
  if (__CFADD__((v3 * v4) >> 64, *(&v4 + 1) * v3 + *(&v3 + 1) * v4))
  {
    v10 = 1;
  }

  else
  {
    v10 = v8;
  }

  v11 = v3 * v4;
  v12 = *(a2 + 8) ^ *(result + 8);
  v13 = v3 < 0;
  if (v12 < 0)
  {
    v13 = v11 != 0;
  }

  if ((v10 & 1) != 0 || v13)
  {
    __break(1u);
  }

  else
  {
    if (v12 < 0)
    {
      v11 = -v11;
      v9 = -(v3 * v4) >> 64;
    }

    *a3 = v11;
    a3[1] = v9;
  }

  return result;
}

uint64_t protocol witness for static Numeric.*= infix(_:_:) in conformance Int128(uint64_t result, uint64_t a2)
{
  v2 = abs128(*result);
  v3 = abs128(*a2);
  if (*(&v2 + 1))
  {
    v4 = *(&v3 + 1) == 0;
  }

  else
  {
    v4 = 1;
  }

  v7 = !v4 || (*(&v2 + 1) * v3) >> 64 != 0 || (*(&v3 + 1) * v2) >> 64 != 0;
  v8 = (v3 * v2) >> 64;
  if (__CFADD__((v2 * v3) >> 64, *(&v3 + 1) * v2 + *(&v2 + 1) * v3))
  {
    v9 = 1;
  }

  else
  {
    v9 = v7;
  }

  v10 = v2 * v3;
  if (((*(result + 8) ^ *(a2 + 8)) & 0x8000000000000000) == 0)
  {
    if (v9)
    {
      __break(1u);
      goto LABEL_24;
    }

    if ((v8 & 0x8000000000000000) == 0)
    {
LABEL_22:
      *result = v10;
      *(result + 8) = v8;
      return result;
    }

    __break(1u);
  }

  if (v9)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = v10 == 0;
  v10 = -v10;
  v8 = -(v8 + !v11);
  if (!v10)
  {
    goto LABEL_22;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *static Int128.&= infix(_:_:)(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1] & a3;
  *result &= a2;
  result[1] = v3;
  return result;
}

void *static Int128.|= infix(_:_:)(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1] | a3;
  *result |= a2;
  result[1] = v3;
  return result;
}

void *static Int128.^= infix(_:_:)(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1] ^ a3;
  *result ^= a2;
  result[1] = v3;
  return result;
}

uint64_t *static Int128.&>>= infix(_:_:)(uint64_t *result, char a2)
{
  v2 = result[1];
  v3 = ((2 * v2) << ~a2) | (*result >> a2);
  v4 = v2 >> a2;
  if ((a2 & 0x40) != 0)
  {
    v3 = v2 >> a2;
  }

  v5 = v2 >> 63;
  if ((a2 & 0x40) == 0)
  {
    v5 = v4;
  }

  *result = v3;
  result[1] = v5;
  return result;
}

void *static Int128.&<<= infix(_:_:)(void *result, char a2)
{
  v2 = (result[1] << a2) | (*result >> 1 >> ~a2);
  v3 = *result << a2;
  if ((a2 & 0x40) != 0)
  {
    v2 = *result << a2;
    v3 = 0;
  }

  *result = v3;
  result[1] = v2;
  return result;
}

unint64_t Int128.trailingZeroBitCount.getter(unint64_t a1, unint64_t a2)
{
  v2 = __clz(__rbit64(a1));
  v3 = __clz(__rbit64(a2)) + 64;
  if (a1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for BinaryInteger.init<A>(_:) in conformance Int128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  return protocol witness for BinaryInteger.init<A>(_:) in conformance Int128(a1, a2, specialized Int128.init<A>(_:), a3);
}

{
  return protocol witness for BinaryInteger.init<A>(_:) in conformance Int128(a1, a2, specialized Int128.init<A>(_:), a3);
}

uint64_t protocol witness for BinaryInteger.init<A>(_:) in conformance Int128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X5>, uint64_t *a4@<X8>)
{
  v7 = a3();
  v9 = v8;
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a4 = v7;
  a4[1] = v9;
  return result;
}

uint64_t protocol witness for BinaryInteger.init<A>(truncatingIfNeeded:) in conformance UInt128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = specialized UInt128.init<A>(truncatingIfNeeded:)(a1, a2, a3);
  v9 = v8;
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a4 = v7;
  a4[1] = v9;
  return result;
}

uint64_t protocol witness for BinaryInteger.init<A>(clamping:) in conformance Int128@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  result = Int128.init<A>(clamping:)(a1, a2, a3);
  *a4 = result;
  a4[1] = v6;
  return result;
}

void _ss7UInt128VSjsSj9magnitude9MagnitudeQzvgTW_0(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

unint64_t _ss7UInt128VSzsSz20trailingZeroBitCountSivgTW_0()
{
  v1 = __clz(__rbit64(*v0));
  v2 = __clz(__rbit64(v0[1])) + 64;
  if (*v0)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static BinaryInteger./ infix(_:_:) in conformance Int128@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*a2 == 0 || (!(*a1 | a1[1] ^ 0x8000000000000000) ? (v4 = (*a2 & *(a2 + 8)) == -1) : (v4 = 0), v4))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = __divti3();
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t protocol witness for static BinaryInteger./= infix(_:_:) in conformance Int128(uint64_t *a1, uint64_t a2)
{
  if (*a2 == 0 || ((*a2 & *(a2 + 8)) == -1 ? (v3 = (*a1 | a1[1] ^ 0x8000000000000000) == 0) : (v3 = 0), v3))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = __divti3();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t protocol witness for static BinaryInteger.% infix(_:_:) in conformance Int128@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*a2 == 0 || (!(*a1 | a1[1] ^ 0x8000000000000000) ? (v4 = (*a2 & *(a2 + 8)) == -1) : (v4 = 0), v4))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = __modti3();
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t protocol witness for static BinaryInteger.%= infix(_:_:) in conformance Int128(uint64_t *a1, uint64_t a2)
{
  if (*a2 == 0 || ((*a2 & *(a2 + 8)) == -1 ? (v3 = (*a1 | a1[1] ^ 0x8000000000000000) == 0) : (v3 = 0), v3))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = __modti3();
  *a1 = result;
  a1[1] = v5;
  return result;
}

void *_ss7UInt128VSzsSz1topyxxFZTW_0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = ~result[1];
  *a2 = ~*result;
  a2[1] = v2;
  return result;
}

void *_ss7UInt128VSzsSz1aoiyxx_xtFZTW_0@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = a2[1] & result[1];
  *a3 = *a2 & *result;
  a3[1] = v3;
  return result;
}

void *_ss7UInt128VSzsSz2aeoiyyxz_xtFZTW_0(void *result, void *a2)
{
  v2 = result[1] & a2[1];
  *result &= *a2;
  result[1] = v2;
  return result;
}

void *_ss7UInt128VSzsSz1ooiyxx_xtFZTW_0@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = a2[1] | result[1];
  *a3 = *a2 | *result;
  a3[1] = v3;
  return result;
}

void *_ss7UInt128VSzsSz2oeoiyyxz_xtFZTW_0(void *result, void *a2)
{
  v2 = result[1] | a2[1];
  *result |= *a2;
  result[1] = v2;
  return result;
}

void *_ss7UInt128VSzsSz1xoiyxx_xtFZTW_0@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = a2[1] ^ result[1];
  *a3 = *a2 ^ *result;
  a3[1] = v3;
  return result;
}

void *_ss7UInt128VSzsSz2xeoiyyxz_xtFZTW_0(void *result, void *a2)
{
  v2 = result[1] ^ a2[1];
  *result ^= *a2;
  result[1] = v2;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>> infix<A>(_:_:) in conformance Int128@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v105 = a5;
  v98 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v98, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v97 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v96 = &v95 - v11;
  v12 = *(a3 - 1);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v103 = &v95 - v16;
  v17 = *a1;
  v101 = a1[1];
  v99 = v17;
  v19 = a4 + 64;
  v18 = *(a4 + 64);
  if (v18(a3, a4))
  {
    v104 = *(a4 + 128);
    v20 = v104(a3, a4);
    if (v20 >= 64)
    {
      v106 = -128;
      v102 = v18;
      v23 = v15;
      v24 = *(a4 + 96);
      v25 = lazy protocol witness table accessor for type Int and conformance Int(v20, v21, v22);
      v100 = a4 + 64;
      v26 = v103;
      v24(&v106, &type metadata for Int, v25, a3, a4);
      v15 = v23;
      v18 = v102;
      v27 = (*(*(*(a4 + 32) + 8) + 16))(a2, v26, a3);
      v28 = v26;
      v19 = v100;
      result = (*(v12 + 8))(v28, a3);
      if (v27)
      {
        goto LABEL_26;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v30 = v18(a3, a4);
    v104 = *(a4 + 128);
    v31 = v104(a3, a4);
    if (v30)
    {
      v102 = v18;
      if (v31 <= 64)
      {
        v61 = v97;
        v60 = v98;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v98, a3, v97, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v63 = v96;
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v61, AssociatedConformanceWitness);
        v64 = v103;
        (v60[3])(v63, a3, v60);
        LOBYTE(v60) = (*(*(*(a4 + 32) + 8) + 16))(a2, v64, a3);
        result = (*(v12 + 8))(v64, a3);
        if (v60)
        {
          goto LABEL_26;
        }

        result = (*(a4 + 120))(a3, a4);
        v18 = v102;
        if (result < -128)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v106 = -128;
        v34 = v15;
        v35 = *(a4 + 96);
        v36 = lazy protocol witness table accessor for type Int and conformance Int(v31, v32, v33);
        v100 = a4 + 64;
        v37 = v103;
        v35(&v106, &type metadata for Int, v36, a3, a4);
        v15 = v34;
        v38 = (*(*(*(a4 + 32) + 8) + 16))(a2, v37, a3);
        v39 = v37;
        v19 = v100;
        result = (*(v12 + 8))(v39, a3);
        v18 = v102;
        if (v38)
        {
          goto LABEL_26;
        }
      }

      goto LABEL_11;
    }

    if (v31 >= 64)
    {
      goto LABEL_11;
    }
  }

  result = (*(a4 + 120))(a3, a4);
  if (result < -128)
  {
    goto LABEL_26;
  }

LABEL_11:
  v40 = v18(a3, a4);
  v95 = a4 + 128;
  v41 = v104(a3, a4);
  if (v40)
  {
    if (v41 > 64)
    {
      goto LABEL_13;
    }

LABEL_16:
    result = (*(a4 + 120))(a3, a4);
    if (result > 128)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (v41 < 64)
  {
    goto LABEL_16;
  }

LABEL_13:
  v106 = 128;
  v102 = v18;
  v44 = v15;
  v45 = *(a4 + 96);
  v46 = lazy protocol witness table accessor for type Int and conformance Int(v41, v42, v43);
  v100 = v19;
  v47 = v103;
  v45(&v106, &type metadata for Int, v46, a3, a4);
  v15 = v44;
  v18 = v102;
  v48 = (*(*(*(a4 + 32) + 8) + 16))(v47, a2, a3);
  v49 = v47;
  v19 = v100;
  result = (*(v12 + 8))(v49, a3);
  if (v48)
  {
    goto LABEL_17;
  }

LABEL_18:
  (*(v12 + 16))(v15, a2, a3);
  if ((v18(a3, a4) & 1) == 0 || v104(a3, a4) < 65)
  {
    goto LABEL_35;
  }

  if ((v18(a3, a4) & 1) == 0)
  {
    v65 = v18(a3, a4);
    v66 = v104(a3, a4);
    if ((v65 & 1) == 0)
    {
      if (v66 >= 64)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    v102 = v18;
    if (v66 <= 64)
    {
      v74 = v97;
      v75 = v98;
      v76 = swift_getAssociatedConformanceWitness(v98, a3, v97, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v77 = v96;
      (*(v76 + 8))(&qword_18071E0A8, 256, v74, v76);
      v78 = v103;
      (v75[3])(v77, a3, v75);
      LOBYTE(v77) = (*(*(*(a4 + 32) + 8) + 16))(v15, v78, a3);
      (*(v12 + 8))(v78, a3);
      v18 = v102;
      if ((v77 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v106 = 0x8000000000000000;
      v69 = v15;
      v70 = *(a4 + 96);
      v71 = lazy protocol witness table accessor for type Int and conformance Int(v66, v67, v68);
      v100 = v19;
      v72 = v103;
      v70(&v106, &type metadata for Int, v71, a3, a4);
      v15 = v69;
      v73 = (*(*(*(a4 + 32) + 8) + 16))(v69, v72, a3);
      (*(v12 + 8))(v72, a3);
      v18 = v102;
      if ((v73 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

LABEL_39:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v52 = v104(a3, a4);
  if (v52 < 64)
  {
LABEL_34:
    (*(a4 + 120))(a3, a4);
    goto LABEL_35;
  }

  v106 = 0x8000000000000000;
  v102 = v18;
  v55 = v15;
  v56 = *(a4 + 96);
  v57 = lazy protocol witness table accessor for type Int and conformance Int(v52, v53, v54);
  v100 = v19;
  v58 = v103;
  v56(&v106, &type metadata for Int, v57, a3, a4);
  v15 = v55;
  v18 = v102;
  v59 = (*(*(*(a4 + 32) + 8) + 16))(v15, v58, a3);
  (*(v12 + 8))(v58, a3);
  if (v59)
  {
    goto LABEL_39;
  }

LABEL_35:
  v79 = v104;
  if (v104(a3, a4) <= 64 && (v79(a3, a4) != 64 || (v18(a3, a4) & 1) != 0))
  {
    goto LABEL_45;
  }

  v80 = v18(a3, a4);
  v81 = v79;
  v82 = v80;
  v83 = v81(a3, a4);
  if (v82)
  {
    if (v83 > 64)
    {
      goto LABEL_38;
    }

LABEL_44:
    (*(a4 + 120))(a3, a4);
    goto LABEL_45;
  }

  if (v83 < 64)
  {
    goto LABEL_44;
  }

LABEL_38:
  v106 = 0x7FFFFFFFFFFFFFFFLL;
  v86 = v15;
  v87 = *(a4 + 96);
  v88 = lazy protocol witness table accessor for type Int and conformance Int(v83, v84, v85);
  v89 = v103;
  v87(&v106, &type metadata for Int, v88, a3, a4);
  v15 = v86;
  v90 = (*(*(*(a4 + 32) + 8) + 16))(v89, v86, a3);
  (*(v12 + 8))(v89, a3);
  if (v90)
  {
    goto LABEL_39;
  }

LABEL_45:
  v91 = (*(a4 + 120))(a3, a4);
  result = (*(v12 + 8))(v15, a3);
  if ((v91 & 0x8000000000000000) == 0)
  {
    if (v91 < 0x80)
    {
      v50 = ((2 * v101) << ~v91) | (v99 >> v91);
      v51 = v101 >> v91;
      v92 = (v91 & 0x40) == 0;
      if ((v91 & 0x40) != 0)
      {
        v50 = v101 >> v91;
      }

      v93 = v101 >> 63;
      goto LABEL_50;
    }

LABEL_17:
    v50 = v101 >> 63;
    v51 = v101 >> 63;
    goto LABEL_52;
  }

  if (v91 <= 0xFFFFFFFFFFFFFF80)
  {
LABEL_26:
    v50 = 0;
    v51 = 0;
    goto LABEL_52;
  }

  v93 = v99 << -v91;
  v92 = (-v91 & 0x40) == 0;
  if ((-v91 & 0x40) != 0)
  {
    v50 = 0;
  }

  else
  {
    v50 = v99 << -v91;
  }

  v51 = (v101 << -v91) | (v99 >> 1 >> (v91 - 1));
LABEL_50:
  if (!v92)
  {
    v51 = v93;
  }

LABEL_52:
  v94 = v105;
  *v105 = v50;
  v94[1] = v51;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>>= infix<A>(_:_:) in conformance Int128(uint64_t *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v109 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v109, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v108 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v107 = v105 - v10;
  v11 = *(a3 - 1);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v111 = v105 - v15;
  v16 = (a4 + 64);
  v112 = *(a4 + 64);
  if (v112(a3, a4))
  {
    v17 = *(a4 + 128);
    v18 = v17(a3, a4);
    if (v18 >= 64)
    {
      v113 = -128;
      v110 = a2;
      v21 = v17;
      v22 = v14;
      v23 = v11;
      v24 = a1;
      v25 = *(a4 + 96);
      v26 = lazy protocol witness table accessor for type Int and conformance Int(v18, v19, v20);
      v106 = (a4 + 64);
      v27 = v111;
      v25(&v113, &type metadata for Int, v26, a3, a4);
      a1 = v24;
      v11 = v23;
      v14 = v22;
      v17 = v21;
      a2 = v110;
      v28 = (*(*(*(a4 + 32) + 8) + 16))(v110, v27, a3);
      v29 = v27;
      v16 = v106;
      result = (*(v11 + 8))(v29, a3);
      if (v28)
      {
        goto LABEL_26;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v31 = v112(a3, a4);
    v17 = *(a4 + 128);
    v32 = v17(a3, a4);
    if (v31)
    {
      v110 = a2;
      v106 = v17;
      if (v32 <= 64)
      {
        v72 = v108;
        v71 = v109;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v109, a3, v108, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v74 = v107;
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v72, AssociatedConformanceWitness);
        v75 = v111;
        (v71[3])(v74, a3, v71);
        a2 = v110;
        LOBYTE(v71) = (*(*(*(a4 + 32) + 8) + 16))(v110, v75, a3);
        result = (*(v11 + 8))(v75, a3);
        if (v71)
        {
          goto LABEL_26;
        }

        result = (*(a4 + 120))(a3, a4);
        v17 = v106;
        if (result < -128)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v113 = -128;
        v35 = v14;
        v36 = v11;
        v37 = a1;
        v38 = *(a4 + 96);
        v39 = lazy protocol witness table accessor for type Int and conformance Int(v32, v33, v34);
        v40 = v111;
        v38(&v113, &type metadata for Int, v39, a3, a4);
        a1 = v37;
        v11 = v36;
        v14 = v35;
        v41 = v110;
        v42 = (*(*(*(a4 + 32) + 8) + 16))(v110, v40, a3);
        v43 = v40;
        v16 = (a4 + 64);
        a2 = v41;
        result = (*(v11 + 8))(v43, a3);
        v17 = v106;
        if (v42)
        {
          goto LABEL_26;
        }
      }

      goto LABEL_11;
    }

    if (v32 >= 64)
    {
      goto LABEL_11;
    }
  }

  result = (*(a4 + 120))(a3, a4);
  if (result < -128)
  {
    goto LABEL_26;
  }

LABEL_11:
  v44 = v112(a3, a4);
  v105[1] = a4 + 128;
  v45 = v17(a3, a4);
  if (v44)
  {
    if (v45 > 64)
    {
      goto LABEL_13;
    }

LABEL_21:
    result = (*(a4 + 120))(a3, a4);
    if (result <= 128)
    {
      goto LABEL_14;
    }

LABEL_22:
    v68 = a1[1];
    goto LABEL_23;
  }

  if (v45 < 64)
  {
    goto LABEL_21;
  }

LABEL_13:
  v113 = 128;
  v110 = a2;
  v48 = v17;
  v49 = v14;
  v50 = v11;
  v51 = a1;
  v52 = *(a4 + 96);
  v53 = lazy protocol witness table accessor for type Int and conformance Int(v45, v46, v47);
  v106 = v16;
  v54 = v111;
  v52(&v113, &type metadata for Int, v53, a3, a4);
  a1 = v51;
  v11 = v50;
  v14 = v49;
  v17 = v48;
  a2 = v110;
  v55 = (*(*(*(a4 + 32) + 8) + 16))(v54, v110, a3);
  v56 = v54;
  v16 = v106;
  result = (*(v11 + 8))(v56, a3);
  if (v55)
  {
    goto LABEL_22;
  }

LABEL_14:
  (*(v11 + 16))(v14, a2, a3);
  if ((v112(a3, a4) & 1) == 0 || v17(a3, a4) < 65)
  {
    goto LABEL_35;
  }

  if ((v112(a3, a4) & 1) == 0)
  {
    v76 = v112(a3, a4);
    v77 = v17(a3, a4);
    if ((v76 & 1) == 0)
    {
      if (v77 >= 64)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    v106 = v17;
    if (v77 <= 64)
    {
      v88 = v108;
      v87 = v109;
      v89 = swift_getAssociatedConformanceWitness(v109, a3, v108, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v90 = v107;
      (*(v89 + 8))(&qword_18071E0A8, 256, v88, v89);
      v91 = v111;
      (v87[3])(v90, a3, v87);
      LOBYTE(v87) = (*(*(*(a4 + 32) + 8) + 16))(v14, v91, a3);
      (*(v11 + 8))(v91, a3);
      v17 = v106;
      if ((v87 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v113 = 0x8000000000000000;
      v80 = v14;
      v81 = v11;
      v82 = a1;
      v83 = *(a4 + 96);
      v84 = lazy protocol witness table accessor for type Int and conformance Int(v77, v78, v79);
      v85 = v111;
      v83(&v113, &type metadata for Int, v84, a3, a4);
      a1 = v82;
      v11 = v81;
      v14 = v80;
      v86 = (*(*(*(a4 + 32) + 8) + 16))(v80, v85, a3);
      (*(v11 + 8))(v85, a3);
      v17 = v106;
      if ((v86 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

LABEL_39:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v57 = v17(a3, a4);
  if (v57 < 64)
  {
LABEL_34:
    (*(a4 + 120))(a3, a4);
    goto LABEL_35;
  }

  v113 = 0x8000000000000000;
  v60 = v17;
  v61 = v14;
  v62 = v11;
  v63 = a1;
  v64 = *(a4 + 96);
  v65 = lazy protocol witness table accessor for type Int and conformance Int(v57, v58, v59);
  v106 = v16;
  v66 = v111;
  v64(&v113, &type metadata for Int, v65, a3, a4);
  a1 = v63;
  v11 = v62;
  v14 = v61;
  v17 = v60;
  v67 = (*(*(*(a4 + 32) + 8) + 16))(v14, v66, a3);
  (*(v11 + 8))(v66, a3);
  if (v67)
  {
    goto LABEL_39;
  }

LABEL_35:
  if (v17(a3, a4) <= 64 && (v17(a3, a4) != 64 || (v112(a3, a4) & 1) != 0))
  {
    goto LABEL_45;
  }

  v92 = v112(a3, a4);
  v93 = v17(a3, a4);
  if (v92)
  {
    if (v93 > 64)
    {
      goto LABEL_38;
    }

LABEL_44:
    (*(a4 + 120))(a3, a4);
    goto LABEL_45;
  }

  if (v93 < 64)
  {
    goto LABEL_44;
  }

LABEL_38:
  v113 = 0x7FFFFFFFFFFFFFFFLL;
  v96 = v14;
  v97 = a1;
  v98 = *(a4 + 96);
  v99 = lazy protocol witness table accessor for type Int and conformance Int(v93, v94, v95);
  v100 = v111;
  v98(&v113, &type metadata for Int, v99, a3, a4);
  a1 = v97;
  v14 = v96;
  v101 = (*(*(*(a4 + 32) + 8) + 16))(v100, v96, a3);
  (*(v11 + 8))(v100, a3);
  if (v101)
  {
    goto LABEL_39;
  }

LABEL_45:
  v102 = (*(a4 + 120))(a3, a4);
  result = (*(v11 + 8))(v14, a3);
  v103 = *a1;
  v68 = a1[1];
  if ((v102 & 0x8000000000000000) == 0)
  {
    if (v102 < 0x80)
    {
      v69 = ((2 * v68) << ~v102) | (v103 >> v102);
      v104 = v68 >> v102;
      if ((v102 & 0x40) != 0)
      {
        v69 = v68 >> v102;
      }

      v70 = v68 >> 63;
      if ((v102 & 0x40) == 0)
      {
        v70 = v104;
      }

      goto LABEL_51;
    }

LABEL_23:
    v69 = v68 >> 63;
    v70 = v68 >> 63;
    goto LABEL_51;
  }

  if (v102 <= 0xFFFFFFFFFFFFFF80)
  {
LABEL_26:
    v69 = 0;
    v70 = 0;
    goto LABEL_51;
  }

  if ((-v102 & 0x40) != 0)
  {
    v69 = 0;
  }

  else
  {
    v69 = v103 << -v102;
  }

  v70 = (v68 << -v102) | (v103 >> 1 >> (v102 - 1));
  if ((-v102 & 0x40) != 0)
  {
    v70 = v103 << -v102;
  }

LABEL_51:
  *a1 = v69;
  a1[1] = v70;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<< infix<A>(_:_:) in conformance Int128@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v107 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v107, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v106 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v105 = &v103 - v12;
  v13 = *(a3 - 1);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v112 = &v103 - v17;
  v18 = *a1;
  v111 = a1[1];
  v108 = v18;
  v20 = a4 + 64;
  v19 = *(a4 + 64);
  if ((v19(a3, a4) & 1) == 0)
  {
    v34 = v19(a3, a4);
    v113 = *(a4 + 128);
    v35 = v113(a3, a4);
    if (v34)
    {
      v104 = a2;
      v110 = v19;
      if (v35 > 64)
      {
        v114 = -128;
        v38 = a5;
        v39 = *(a4 + 96);
        v40 = lazy protocol witness table accessor for type Int and conformance Int(v35, v36, v37);
        v109 = a4 + 64;
        v41 = v112;
        v39(&v114, &type metadata for Int, v40, a3, a4);
        a5 = v38;
        a2 = v104;
        v42 = (*(*(*(a4 + 32) + 8) + 16))(v104, v41, a3);
        v43 = v41;
        v20 = v109;
        result = (*(v13 + 8))(v43, a3);
        v19 = v110;
        if (v42)
        {
          goto LABEL_13;
        }

        goto LABEL_14;
      }

      v45 = v106;
      v44 = v107;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v107, a3, v106, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v47 = v105;
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v45, AssociatedConformanceWitness);
      v48 = v112;
      (v44[3])(v47, a3, v44);
      a2 = v104;
      LOBYTE(v44) = (*(*(*(a4 + 32) + 8) + 16))(v104, v48, a3);
      result = (*(v13 + 8))(v48, a3);
      v19 = v110;
      if (v44)
      {
        goto LABEL_13;
      }
    }

    else if (v35 >= 64)
    {
      goto LABEL_14;
    }

LABEL_12:
    result = (*(a4 + 120))(a3, a4);
    if (result < -128)
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v113 = *(a4 + 128);
  v21 = v113(a3, a4);
  if (v21 < 64)
  {
    goto LABEL_12;
  }

  v114 = -128;
  v110 = v19;
  v24 = v16;
  v25 = v13;
  v26 = a2;
  v27 = a5;
  v28 = *(a4 + 96);
  v29 = lazy protocol witness table accessor for type Int and conformance Int(v21, v22, v23);
  v109 = a4 + 64;
  v30 = v112;
  v28(&v114, &type metadata for Int, v29, a3, a4);
  a5 = v27;
  a2 = v26;
  v13 = v25;
  v16 = v24;
  v19 = v110;
  v31 = (*(*(*(a4 + 32) + 8) + 16))(a2, v30, a3);
  v32 = v30;
  v20 = v109;
  result = (*(v13 + 8))(v32, a3);
  if (v31)
  {
    goto LABEL_13;
  }

LABEL_14:
  v51 = v19(a3, a4);
  v104 = a4 + 128;
  v52 = v113(a3, a4);
  if (v51)
  {
    if (v52 > 64)
    {
      goto LABEL_16;
    }

LABEL_19:
    result = (*(a4 + 120))(a3, a4);
    if (result > 128)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (v52 < 64)
  {
    goto LABEL_19;
  }

LABEL_16:
  v114 = 128;
  v110 = v19;
  v55 = v16;
  v56 = v13;
  v57 = a2;
  v58 = a5;
  v59 = *(a4 + 96);
  v60 = lazy protocol witness table accessor for type Int and conformance Int(v52, v53, v54);
  v109 = v20;
  v61 = v112;
  v59(&v114, &type metadata for Int, v60, a3, a4);
  a5 = v58;
  a2 = v57;
  v13 = v56;
  v16 = v55;
  v19 = v110;
  v62 = (*(*(*(a4 + 32) + 8) + 16))(v61, a2, a3);
  v63 = v61;
  v20 = v109;
  result = (*(v13 + 8))(v63, a3);
  if (v62)
  {
    goto LABEL_20;
  }

LABEL_21:
  (*(v13 + 16))(v16, a2, a3);
  if ((v19(a3, a4) & 1) == 0 || v113(a3, a4) < 65)
  {
    goto LABEL_35;
  }

  if ((v19(a3, a4) & 1) == 0)
  {
    v72 = v19(a3, a4);
    v73 = v113(a3, a4);
    if ((v72 & 1) == 0)
    {
      if (v73 >= 64)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    v110 = v19;
    if (v73 <= 64)
    {
      v81 = v106;
      v82 = v107;
      v83 = swift_getAssociatedConformanceWitness(v107, a3, v106, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v84 = v105;
      (*(v83 + 8))(&qword_18071E0A8, 256, v81, v83);
      v85 = v82;
      v86 = v82[3];
      v87 = v112;
      (v86)(v84, a3, v85);
      LOBYTE(v84) = (*(*(*(a4 + 32) + 8) + 16))(v16, v87, a3);
      (*(v13 + 8))(v87, a3);
      v19 = v110;
      if ((v84 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v114 = 0x8000000000000000;
      v76 = a5;
      v77 = *(a4 + 96);
      v78 = lazy protocol witness table accessor for type Int and conformance Int(v73, v74, v75);
      v109 = v20;
      v79 = v112;
      v77(&v114, &type metadata for Int, v78, a3, a4);
      a5 = v76;
      v80 = (*(*(*(a4 + 32) + 8) + 16))(v16, v79, a3);
      (*(v13 + 8))(v79, a3);
      v19 = v110;
      if ((v80 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

LABEL_39:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v64 = v113(a3, a4);
  if (v64 < 64)
  {
LABEL_34:
    (*(a4 + 120))(a3, a4);
    goto LABEL_35;
  }

  v114 = 0x8000000000000000;
  v110 = v19;
  v67 = a5;
  v68 = *(a4 + 96);
  v69 = lazy protocol witness table accessor for type Int and conformance Int(v64, v65, v66);
  v109 = v20;
  v70 = v112;
  v68(&v114, &type metadata for Int, v69, a3, a4);
  a5 = v67;
  v19 = v110;
  v71 = (*(*(*(a4 + 32) + 8) + 16))(v16, v70, a3);
  (*(v13 + 8))(v70, a3);
  if (v71)
  {
    goto LABEL_39;
  }

LABEL_35:
  v88 = v113;
  if (v113(a3, a4) <= 64 && (v88(a3, a4) != 64 || (v19(a3, a4) & 1) != 0))
  {
    goto LABEL_45;
  }

  v89 = v19(a3, a4);
  v90 = v88;
  v91 = v89;
  v92 = v90(a3, a4);
  if (v91)
  {
    if (v92 > 64)
    {
      goto LABEL_38;
    }

LABEL_44:
    (*(a4 + 120))(a3, a4);
    goto LABEL_45;
  }

  if (v92 < 64)
  {
    goto LABEL_44;
  }

LABEL_38:
  v114 = 0x7FFFFFFFFFFFFFFFLL;
  v95 = v16;
  v96 = v13;
  v97 = a5;
  v98 = *(a4 + 96);
  v99 = lazy protocol witness table accessor for type Int and conformance Int(v92, v93, v94);
  v100 = v112;
  v98(&v114, &type metadata for Int, v99, a3, a4);
  a5 = v97;
  v13 = v96;
  v16 = v95;
  v101 = (*(*(*(a4 + 32) + 8) + 16))(v100, v95, a3);
  (*(v13 + 8))(v100, a3);
  if (v101)
  {
    goto LABEL_39;
  }

LABEL_45:
  v102 = (*(a4 + 120))(a3, a4);
  result = (*(v13 + 8))(v16, a3);
  if ((v102 & 0x8000000000000000) == 0)
  {
    if (v102 < 0x80)
    {
      v50 = (v111 << v102) | (v108 >> 1 >> ~v102);
      v49 = v108 << v102;
      if ((v102 & 0x40) != 0)
      {
        v50 = v108 << v102;
        v49 = 0;
      }

      goto LABEL_49;
    }

LABEL_20:
    v49 = 0;
    v50 = 0;
    goto LABEL_49;
  }

  if (v102 <= 0xFFFFFFFFFFFFFF80)
  {
LABEL_13:
    v49 = v111 >> 63;
    v50 = v111 >> 63;
    goto LABEL_49;
  }

  v50 = v111 >> 63;
  if ((-v102 & 0x40) == 0)
  {
    v50 = v111 >> -v102;
  }

  v49 = ((2 * v111) << (v102 - 1)) | (v108 >> -v102);
  if ((-v102 & 0x40) != 0)
  {
    v49 = v111 >> -v102;
  }

LABEL_49:
  *a5 = v49;
  a5[1] = v50;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<<= infix<A>(_:_:) in conformance Int128(uint64_t *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v109 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v109, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v108 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v107 = v105 - v10;
  v11 = *(a3 - 1);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v111 = v105 - v15;
  v16 = (a4 + 64);
  v112 = *(a4 + 64);
  if ((v112(a3, a4) & 1) == 0)
  {
    v22 = v112(a3, a4);
    v17 = *(a4 + 128);
    v23 = v17(a3, a4);
    if (v22)
    {
      v110 = a2;
      v106 = v17;
      if (v23 > 64)
      {
        v113 = -128;
        v26 = v14;
        v27 = v11;
        v28 = a1;
        v29 = *(a4 + 96);
        v30 = lazy protocol witness table accessor for type Int and conformance Int(v23, v24, v25);
        v31 = v111;
        v29(&v113, &type metadata for Int, v30, a3, a4);
        a1 = v28;
        v11 = v27;
        v14 = v26;
        v32 = v110;
        v33 = (*(*(*(a4 + 32) + 8) + 16))(v110, v31, a3);
        v34 = v31;
        v16 = (a4 + 64);
        a2 = v32;
        result = (*(v11 + 8))(v34, a3);
        v17 = v106;
        if (v33)
        {
          goto LABEL_15;
        }

        goto LABEL_17;
      }

      v45 = v108;
      v44 = v109;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v109, a3, v108, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v47 = v107;
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v45, AssociatedConformanceWitness);
      v48 = v111;
      (v44[3])(v47, a3, v44);
      a2 = v110;
      LOBYTE(v44) = (*(*(*(a4 + 32) + 8) + 16))(v110, v48, a3);
      result = (*(v11 + 8))(v48, a3);
      v17 = v106;
      if (v44)
      {
        goto LABEL_15;
      }
    }

    else if (v23 >= 64)
    {
      goto LABEL_17;
    }

    result = (*(a4 + 120))(a3, a4);
    if (result >= -128)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v17 = *(a4 + 128);
  v18 = v17(a3, a4);
  if (v18 < 64)
  {
    result = (*(a4 + 120))(a3, a4);
    if (result > -129)
    {
      goto LABEL_17;
    }

LABEL_15:
    v49 = a1[1];
    goto LABEL_16;
  }

  v113 = -128;
  v110 = a2;
  v35 = v17;
  v36 = v14;
  v37 = v11;
  v38 = a1;
  v39 = *(a4 + 96);
  v40 = lazy protocol witness table accessor for type Int and conformance Int(v18, v19, v20);
  v106 = (a4 + 64);
  v41 = v111;
  v39(&v113, &type metadata for Int, v40, a3, a4);
  a1 = v38;
  v11 = v37;
  v14 = v36;
  v17 = v35;
  a2 = v110;
  v42 = (*(*(*(a4 + 32) + 8) + 16))(v110, v41, a3);
  v43 = v41;
  v16 = v106;
  result = (*(v11 + 8))(v43, a3);
  if (v42)
  {
    goto LABEL_15;
  }

LABEL_17:
  v52 = v112(a3, a4);
  v105[1] = a4 + 128;
  v53 = v17(a3, a4);
  if (v52)
  {
    if (v53 > 64)
    {
      goto LABEL_19;
    }

LABEL_22:
    result = (*(a4 + 120))(a3, a4);
    if (result > 128)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  if (v53 < 64)
  {
    goto LABEL_22;
  }

LABEL_19:
  v113 = 128;
  v110 = a2;
  v56 = v17;
  v57 = v14;
  v58 = v11;
  v59 = a1;
  v60 = *(a4 + 96);
  v61 = lazy protocol witness table accessor for type Int and conformance Int(v53, v54, v55);
  v106 = v16;
  v62 = v111;
  v60(&v113, &type metadata for Int, v61, a3, a4);
  a1 = v59;
  v11 = v58;
  v14 = v57;
  v17 = v56;
  a2 = v110;
  v63 = (*(*(*(a4 + 32) + 8) + 16))(v62, v110, a3);
  v64 = v62;
  v16 = v106;
  result = (*(v11 + 8))(v64, a3);
  if (v63)
  {
    goto LABEL_23;
  }

LABEL_24:
  (*(v11 + 16))(v14, a2, a3);
  if ((v112(a3, a4) & 1) == 0 || v17(a3, a4) < 65)
  {
    goto LABEL_38;
  }

  if ((v112(a3, a4) & 1) == 0)
  {
    v76 = v112(a3, a4);
    v77 = v17(a3, a4);
    if ((v76 & 1) == 0)
    {
      if (v77 >= 64)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    v106 = v17;
    if (v77 <= 64)
    {
      v88 = v108;
      v87 = v109;
      v89 = swift_getAssociatedConformanceWitness(v109, a3, v108, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v90 = v107;
      (*(v89 + 8))(&qword_18071E0A8, 256, v88, v89);
      v91 = v111;
      (v87[3])(v90, a3, v87);
      LOBYTE(v87) = (*(*(*(a4 + 32) + 8) + 16))(v14, v91, a3);
      (*(v11 + 8))(v91, a3);
      v17 = v106;
      if ((v87 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v113 = 0x8000000000000000;
      v80 = v14;
      v81 = v11;
      v82 = a1;
      v83 = *(a4 + 96);
      v84 = lazy protocol witness table accessor for type Int and conformance Int(v77, v78, v79);
      v85 = v111;
      v83(&v113, &type metadata for Int, v84, a3, a4);
      a1 = v82;
      v11 = v81;
      v14 = v80;
      v86 = (*(*(*(a4 + 32) + 8) + 16))(v80, v85, a3);
      (*(v11 + 8))(v85, a3);
      v17 = v106;
      if ((v86 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

LABEL_42:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v65 = v17(a3, a4);
  if (v65 < 64)
  {
LABEL_37:
    (*(a4 + 120))(a3, a4);
    goto LABEL_38;
  }

  v113 = 0x8000000000000000;
  v68 = v17;
  v69 = v14;
  v70 = v11;
  v71 = a1;
  v72 = *(a4 + 96);
  v73 = lazy protocol witness table accessor for type Int and conformance Int(v65, v66, v67);
  v106 = v16;
  v74 = v111;
  v72(&v113, &type metadata for Int, v73, a3, a4);
  a1 = v71;
  v11 = v70;
  v14 = v69;
  v17 = v68;
  v75 = (*(*(*(a4 + 32) + 8) + 16))(v14, v74, a3);
  (*(v11 + 8))(v74, a3);
  if (v75)
  {
    goto LABEL_42;
  }

LABEL_38:
  if (v17(a3, a4) <= 64 && (v17(a3, a4) != 64 || (v112(a3, a4) & 1) != 0))
  {
    goto LABEL_48;
  }

  v92 = v112(a3, a4);
  v93 = v17(a3, a4);
  if (v92)
  {
    if (v93 > 64)
    {
      goto LABEL_41;
    }

LABEL_47:
    (*(a4 + 120))(a3, a4);
    goto LABEL_48;
  }

  if (v93 < 64)
  {
    goto LABEL_47;
  }

LABEL_41:
  v113 = 0x7FFFFFFFFFFFFFFFLL;
  v96 = v14;
  v97 = a1;
  v98 = *(a4 + 96);
  v99 = lazy protocol witness table accessor for type Int and conformance Int(v93, v94, v95);
  v100 = v111;
  v98(&v113, &type metadata for Int, v99, a3, a4);
  a1 = v97;
  v14 = v96;
  v101 = (*(*(*(a4 + 32) + 8) + 16))(v100, v96, a3);
  (*(v11 + 8))(v100, a3);
  if (v101)
  {
    goto LABEL_42;
  }

LABEL_48:
  v102 = (*(a4 + 120))(a3, a4);
  result = (*(v11 + 8))(v14, a3);
  v103 = *a1;
  v49 = a1[1];
  if ((v102 & 0x8000000000000000) == 0)
  {
    if (v102 < 0x80)
    {
      v51 = (v49 << v102) | (v103 >> 1 >> ~v102);
      v50 = v103 << v102;
      if ((v102 & 0x40) != 0)
      {
        v51 = v103 << v102;
        v50 = 0;
      }

      goto LABEL_52;
    }

LABEL_23:
    v50 = 0;
    v51 = 0;
    goto LABEL_52;
  }

  if (v102 <= 0xFFFFFFFFFFFFFF80)
  {
LABEL_16:
    v50 = v49 >> 63;
    v51 = v50;
    goto LABEL_52;
  }

  v104 = v49 >> -v102;
  v51 = v49 >> 63;
  if ((-v102 & 0x40) == 0)
  {
    v51 = v49 >> -v102;
  }

  v50 = ((2 * v49) << (v102 - 1)) | (v103 >> -v102);
  if ((-v102 & 0x40) != 0)
  {
    v50 = v104;
  }

LABEL_52:
  *a1 = v50;
  a1[1] = v51;
  return result;
}

uint64_t protocol witness for BinaryInteger.quotientAndRemainder(dividingBy:) in conformance Int128(uint64_t *a1, _OWORD *a2, unint64_t *a3)
{
  result = specialized BinaryInteger.quotientAndRemainder(dividingBy:)(a2, *a3, a3[1], *v3, v3[1]);
  *a1 = result;
  a1[1] = v6;
  return result;
}

void protocol witness for BinaryInteger.signum() in conformance Int128(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8) >> 63;
  *a1 = v2 | (*v1 != 0);
  a1[1] = v2;
}

unint64_t *protocol witness for Strideable.distance(to:) in conformance Int128@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = result[1];
  v6 = *v2;
  v5 = v2[1];
  if ((v5 ^ v4) < 0)
  {
    v12 = __PAIR128__(v5 ^ (v5 >> 63), v6 ^ (v5 >> 63)) - __PAIR128__(v5 >> 63, v5 >> 63);
    v14 = (v3 ^ (v4 >> 63)) - (v4 >> 63);
    v13 = (__PAIR128__(v4 ^ (v4 >> 63), v3 ^ (v4 >> 63)) - __PAIR128__(v4 >> 63, v4 >> 63)) >> 64;
    v15 = (__PAIR128__(v5 ^ (v5 >> 63), v6 ^ (v5 >> 63)) - __PAIR128__(v5 >> 63, v5 >> 63) + v14) >> 64;
    v8 = (v6 ^ (v5 >> 63)) - (v5 >> 63) + v14;
    v16 = __CFADD__(__CFADD__(v12, v14), *(&v12 + 1)) | __CFADD__(v13, v15);
    v17 = v13 + v15;
    if (v16)
    {
      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    if ((v18 & 1) == 0)
    {
      if (v17 | (v8 >> 63))
      {
        goto LABEL_18;
      }

      if (v5 >= 0)
      {
        v8 = -v8;
      }

      goto LABEL_15;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = __OFSUB__(__PAIR128__(v4, v3), __PAIR128__(v5, v6));
  v9 = v3 - v6;
  v7 = (__PAIR128__(v4, v3) - __PAIR128__(v5, v6)) >> 64;
  v8 = v3 - v6;
  v11 = v10;
  if (v11)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (__CFADD__(v9, 0x8000000000000000) + v7)
  {
LABEL_18:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_15:
  *a2 = v8;
  return result;
}

uint64_t *protocol witness for Strideable.advanced(by:) in conformance Int128@<X0>(uint64_t *result@<X0>, _OWORD *a2@<X8>)
{
  v3 = *v2 + *result;
  if (__OFADD__(__CFADD__(*v2, *result), v2[1]) | __OFADD__(*result >> 63, *(&v3 + 1)))
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    __break(1u);
  }

  else
  {
    *a2 = v3;
  }

  return result;
}

uint64_t Int128.nonzeroBitCount.getter(uint64_t a1, uint64_t a2)
{
  v2 = vcnt_s8(a2);
  v2.i16[0] = vaddlv_u8(v2);
  v3 = v2.u32[0];
  v4 = vcnt_s8(a1);
  v4.i16[0] = vaddlv_u8(v4);
  return v3 + v4.u32[0];
}

unint64_t Int128.leadingZeroBitCount.getter(unint64_t a1, unint64_t a2)
{
  v2 = __clz(a2);
  v3 = __clz(a1) + 64;
  if (a2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for FixedWidthInteger.addingReportingOverflow(_:) in conformance Int128(_OWORD *a1, void *a2)
{
  v3 = *v2 + *a2;
  if (__OFADD__(__CFADD__(*v2, *a2), v2[1]) | __OFADD__(a2[1], *(&v3 + 1)))
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v3;
  return v4;
}

BOOL protocol witness for FixedWidthInteger.subtractingReportingOverflow(_:) in conformance Int128(_OWORD *a1, _OWORD *a2)
{
  v3 = __OFSUB__(*v2, *a2);
  *a1 = *v2 - *a2;
  return v3;
}

uint64_t protocol witness for FixedWidthInteger.multipliedReportingOverflow(by:) in conformance Int128(uint64_t *a1, uint64_t a2)
{
  v3 = abs128(*v2);
  v4 = abs128(*a2);
  if (*(&v3 + 1))
  {
    v5 = *(&v4 + 1) == 0;
  }

  else
  {
    v5 = 1;
  }

  v8 = !v5 || (*(&v3 + 1) * v4) >> 64 != 0 || (*(&v4 + 1) * v3) >> 64 != 0;
  if (__CFADD__((v3 * v4) >> 64, *(&v4 + 1) * v3 + *(&v3 + 1) * v4))
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = v3 * v4;
  v11 = *(v2 + 8) ^ *(a2 + 8);
  v12 = v3 < 0;
  v13 = -__PAIR128__(v8, v3 * v4) >> 64;
  v14 = v11 < 0;
  if (v11 < 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = (v4 * v3) >> 64;
  }

  if (v14)
  {
    v10 = -v10;
  }

  if (v14)
  {
    v12 = v3 * v4 != 0;
  }

  *a1 = v10;
  a1[1] = v15;
  return v9 | v12;
}

uint64_t protocol witness for FixedWidthInteger.dividedReportingOverflow(by:) in conformance Int128(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *v2;
  v7 = v2[1];
  if (!(v4 | v5))
  {
    goto LABEL_9;
  }

  if ((v4 & v5) == 0xFFFFFFFFFFFFFFFFLL && (v6 | v7 ^ 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = 0x8000000000000000;
LABEL_9:
    v9 = 1;
    goto LABEL_7;
  }

  v6 = __divti3();
  v9 = 0;
LABEL_7:
  *a1 = v6;
  a1[1] = v7;
  return v9;
}

uint64_t protocol witness for FixedWidthInteger.remainderReportingOverflow(dividingBy:) in conformance Int128(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *v2;
  v7 = v2[1];
  if (!(v4 | v5))
  {
    goto LABEL_9;
  }

  if ((v4 & v5) == 0xFFFFFFFFFFFFFFFFLL && (v6 | v7 ^ 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = 0;
LABEL_9:
    v9 = 1;
    goto LABEL_7;
  }

  v6 = __modti3();
  v9 = 0;
LABEL_7:
  *a1 = v6;
  a1[1] = v7;
  return v9;
}

uint64_t protocol witness for FixedWidthInteger.multipliedFullWidth(by:) in conformance Int128(uint64_t *a1, _OWORD *a2, uint64_t a3)
{
  result = specialized FixedWidthInteger.multipliedFullWidth(by:)(a2, *a3, *(a3 + 8), *v3, *(v3 + 8));
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t protocol witness for FixedWidthInteger.dividingFullWidth(_:) in conformance Int128(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  result = specialized SignedInteger<>.dividingFullWidth(_:)(a2, *a3, *(a3 + 8), *a4, a4[1], *v4, v4[1]);
  *a1 = result;
  a1[1] = v7;
  return result;
}

uint64_t protocol witness for FixedWidthInteger.init(_truncatingBits:) in conformance _Int128@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  return result;
}

uint64_t _ss7UInt128Vs17FixedWidthIntegerssACP15nonzeroBitCountSivgTW_0()
{
  v1 = vcnt_s8(v0[1]);
  v1.i16[0] = vaddlv_u8(v1);
  v2 = v1.u32[0];
  v3 = vcnt_s8(*v0);
  v3.i16[0] = vaddlv_u8(v3);
  return v2 + v3.u32[0];
}

unint64_t _ss7UInt128Vs17FixedWidthIntegerssACP19leadingZeroBitCountSivgTW_0()
{
  v1 = v0[1];
  v2 = __clz(v1);
  v3 = __clz(*v0) + 64;
  if (v1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t *_ss7UInt128Vs17FixedWidthIntegerssACP9bigEndianxx_tcfCTW_0@<X0>(unint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = bswap64(*result);
  *a2 = bswap64(result[1]);
  a2[1] = v2;
  return result;
}

void _ss6Int128Vs17FixedWidthIntegerssACP9bigEndianxvgTW_0(void *a1@<X8>)
{
  v2 = bswap64(*v1);
  *a1 = bswap64(v1[1]);
  a1[1] = v2;
}

void *protocol witness for static FixedWidthInteger.&>> infix(_:_:) in conformance Int128@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = result[1];
  v4 = ((2 * v3) << ~*a2) | (*result >> *a2);
  v5 = v3 >> *a2;
  if ((*a2 & 0x40) != 0)
  {
    v4 = v3 >> *a2;
  }

  v6 = v3 >> 63;
  if ((*a2 & 0x40) == 0)
  {
    v6 = v5;
  }

  *a3 = v4;
  a3[1] = v6;
  return result;
}

uint64_t *protocol witness for static FixedWidthInteger.&>>= infix(_:_:) in conformance Int128(uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = v2 >> *a2;
  if ((*a2 & 0x40) != 0)
  {
    v4 = v2 >> *a2;
  }

  else
  {
    v4 = ((2 * v2) << ~*a2) | (*result >> *a2);
  }

  v5 = v2 >> 63;
  if ((*a2 & 0x40) == 0)
  {
    v5 = v3;
  }

  *result = v4;
  result[1] = v5;
  return result;
}

void *_ss7UInt128Vs17FixedWidthIntegerssACP3alloiyxx_xtFZTW_0@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = (result[1] << *a2) | (*result >> 1 >> ~*a2);
  v4 = *result << *a2;
  if ((*a2 & 0x40) != 0)
  {
    v3 = *result << *a2;
    v4 = 0;
  }

  *a3 = v4;
  a3[1] = v3;
  return result;
}

void *_ss7UInt128Vs17FixedWidthIntegerssACP4alleoiyyxz_xtFZTW_0(void *result, void *a2)
{
  v2 = *result << *a2;
  if ((*a2 & 0x40) != 0)
  {
    v3 = *result << *a2;
  }

  else
  {
    v3 = (result[1] << *a2) | (*result >> 1 >> ~*a2);
  }

  if ((*a2 & 0x40) != 0)
  {
    v2 = 0;
  }

  *result = v2;
  result[1] = v3;
  return result;
}

_OWORD *_ss7UInt128Vs17FixedWidthIntegerssACP2amoiyxx_xtFZTW_0@<X0>(_OWORD *result@<X0>, _OWORD *a2@<X1>, void *a3@<X8>)
{
  v3 = (*a2 * *result) >> 64;
  *a3 = *a2 * *result;
  a3[1] = v3;
  return result;
}

void protocol witness for LosslessStringConvertible.init(_:) in conformance Int128(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  v6 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    a2;
    goto LABEL_69;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v58[0] = a1;
      v58[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v16 = specialized closure #1 in FixedWidthInteger.init<A>(_:radix:)(v58, v5, 10);
      v17 = v27;
      v29 = v28 & 1;
LABEL_66:
      v59 = v29;
      goto LABEL_67;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      if ((a1 & 0xFFFFFFFFFFFFLL) != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v56 = _StringObject.sharedUTF8.getter(a1, a2);
      v6 = v57;
      v8 = v56;
      if (v6 > 0)
      {
LABEL_9:
        v9 = *v8;
        if (v9 == 43)
        {
          v30 = specialized Collection.subscript.getter(1, v8, v6);
          v34 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v30, v31, v32, v33);
          if (v35)
          {
            v16 = 0;
            v17 = 0;
            if (v34)
            {
              while (1)
              {
                v36 = *v34 - 48;
                if (v36 >= 0xA)
                {
                  goto LABEL_65;
                }

                v37 = (v16 ^ (v17 >> 63)) - (v17 >> 63);
                v38 = !is_mul_ok((__PAIR128__(v17 ^ (v17 >> 63), v16 ^ (v17 >> 63)) - __PAIR128__(v17 >> 63, v17 >> 63)) >> 64, 0xAuLL);
                v39 = ((__PAIR128__(v17 ^ (v17 >> 63), v16 ^ (v17 >> 63)) - __PAIR128__(v17 >> 63, v17 >> 63)) * 0xA) >> 64;
                v40 = __CFADD__((v37 * 0xAuLL) >> 64, 10 * ((__PAIR128__(v17 ^ (v17 >> 63), v16 ^ (v17 >> 63)) - __PAIR128__(v17 >> 63, v17 >> 63)) >> 64)) || v38;
                v41 = 10 * v37;
                if (v17 < 0)
                {
                  if (v40)
                  {
                    goto LABEL_65;
                  }

                  v25 = v41 == 0;
                  v41 = -10 * v37;
                  v39 = -(v39 + !v25);
                  LOBYTE(v42) = -10 * v37 != 0;
                }

                else
                {
                  if (v40)
                  {
                    goto LABEL_65;
                  }

                  v42 = v39 >> 63;
                }

                v16 = v41 + v36;
                v17 = __CFADD__(v41, v36) + v39;
                v43 = __OFADD__(__CFADD__(v41, v36), v39);
                if ((v42 & 1) != 0 || v43)
                {
                  goto LABEL_65;
                }

                ++v34;
                if (!--v35)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_64;
          }
        }

        else
        {
          if (v9 != 45)
          {
            v16 = 0;
            v17 = 0;
            while (1)
            {
              v44 = *v8 - 48;
              if (v44 >= 0xA)
              {
                goto LABEL_65;
              }

              v45 = (v16 ^ (v17 >> 63)) - (v17 >> 63);
              v46 = !is_mul_ok((__PAIR128__(v17 ^ (v17 >> 63), v16 ^ (v17 >> 63)) - __PAIR128__(v17 >> 63, v17 >> 63)) >> 64, 0xAuLL);
              v47 = ((__PAIR128__(v17 ^ (v17 >> 63), v16 ^ (v17 >> 63)) - __PAIR128__(v17 >> 63, v17 >> 63)) * 0xA) >> 64;
              v48 = __CFADD__((v45 * 0xAuLL) >> 64, 10 * ((__PAIR128__(v17 ^ (v17 >> 63), v16 ^ (v17 >> 63)) - __PAIR128__(v17 >> 63, v17 >> 63)) >> 64)) || v46;
              v49 = 10 * v45;
              if (v17 < 0)
              {
                if (v48)
                {
                  goto LABEL_65;
                }

                v25 = v49 == 0;
                v49 = -10 * v45;
                v47 = -(v47 + !v25);
                LOBYTE(v50) = -10 * v45 != 0;
              }

              else
              {
                if (v48)
                {
                  goto LABEL_65;
                }

                v50 = v47 >> 63;
              }

              v16 = v49 + v44;
              v17 = __CFADD__(v49, v44) + v47;
              v51 = __OFADD__(__CFADD__(v49, v44), v47);
              if ((v50 & 1) != 0 || v51)
              {
                goto LABEL_65;
              }

              ++v8;
              if (!--v6)
              {
                goto LABEL_64;
              }
            }
          }

          v10 = specialized Collection.subscript.getter(1, v8, v6);
          v14 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v10, v11, v12, v13);
          if (v15)
          {
            v16 = 0;
            v17 = 0;
            if (v14)
            {
              while (1)
              {
                v18 = *v14 - 48;
                if (v18 >= 0xA)
                {
                  break;
                }

                v19 = (v16 ^ (v17 >> 63)) - (v17 >> 63);
                v20 = !is_mul_ok((__PAIR128__(v17 ^ (v17 >> 63), v16 ^ (v17 >> 63)) - __PAIR128__(v17 >> 63, v17 >> 63)) >> 64, 0xAuLL);
                v21 = ((__PAIR128__(v17 ^ (v17 >> 63), v16 ^ (v17 >> 63)) - __PAIR128__(v17 >> 63, v17 >> 63)) * 0xA) >> 64;
                v22 = __CFADD__((v19 * 0xAuLL) >> 64, 10 * ((__PAIR128__(v17 ^ (v17 >> 63), v16 ^ (v17 >> 63)) - __PAIR128__(v17 >> 63, v17 >> 63)) >> 64)) || v20;
                v23 = 10 * v19;
                if (v17 < 0)
                {
                  if (v22)
                  {
                    break;
                  }

                  v25 = v23 == 0;
                  v23 = -10 * v19;
                  v21 = -(v21 + !v25);
                  LOBYTE(v24) = -10 * v19 != 0;
                }

                else
                {
                  if (v22)
                  {
                    break;
                  }

                  v24 = v21 >> 63;
                }

                v17 = (__PAIR128__(v21, v23) - v18) >> 64;
                v16 = v23 - v18;
                v26 = __OFSUB__(__PAIR128__(v21, v23), v18);
                if ((v24 & 1) != 0 || v26)
                {
                  break;
                }

                ++v14;
                if (!--v15)
                {
                  goto LABEL_64;
                }
              }

LABEL_65:
              v17 = 0;
              v16 = 0;
              v29 = 1;
              goto LABEL_66;
            }

LABEL_64:
            v59 = 0;
LABEL_67:
            v52 = v59;
            goto LABEL_68;
          }
        }

        v17 = 0;
        v16 = 0;
        v59 = 1;
        goto LABEL_67;
      }
    }

    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v16 = specialized _parseInteger<A, B>(ascii:radix:)(a1, a2, 10);
  v17 = v54;
  v52 = v55;
LABEL_68:
  a2;
  if ((v52 & 1) == 0)
  {
    v53 = 0;
    goto LABEL_71;
  }

LABEL_69:
  v16 = 0;
  v17 = 0;
  v53 = 1;
LABEL_71:
  *a3 = v16;
  *(a3 + 8) = v17;
  *(a3 + 16) = v53;
}

double (*static Mirror._superclassIterator<A>(_:_:)(uint64_t a1, uint64_t a2, void *a3))@<D0>(uint64_t a1@<X8>)
{
  v5 = *(a3 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v8;
  v9 = v8[1];
  isClassType = swift_isClassType(v11);
  v13 = implicit closure #1 in static Mirror._superclassIterator<A>(_:_:);
  if (a3)
  {
    if (isClassType)
    {
      Superclass = _swift_class_getSuperclass(a3);
      v13 = implicit closure #1 in static Mirror._superclassIterator<A>(_:_:);
      if (Superclass)
      {
        v15 = Superclass;
        v13 = implicit closure #1 in static Mirror._superclassIterator<A>(_:_:);
        if (v10)
        {
          if (v10 != 1)
          {
            (*(v5 + 16))(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
            v20 = *(v5 + 80);
            v21 = (v20 + 48) & ~v20;
            v22 = swift_allocObject(&unk_1EEEBE968, (v21 + v6), v20 | 7);
            *(v22 + 2) = a3;
            *(v22 + 3) = v10;
            *(v22 + 4) = v9;
            *(v22 + 5) = v15;
            (*(v5 + 32))(&v22[v21], v7, a3);
            v9;
            return partial apply for closure #2 in static Mirror._superclassIterator<A>(_:_:);
          }
        }

        else
        {
          (*(v5 + 16))(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
          v16 = *(v5 + 80);
          v17 = (v16 + 24) & ~v16;
          v18 = (v6 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
          v19 = swift_allocObject(&unk_1EEEBE990, (v18 + 8), v16 | 7);
          *(v19 + 2) = a3;
          (*(v5 + 32))(&v19[v17], v7, a3);
          *&v19[v18] = v15;
          return partial apply for closure #1 in static Mirror._superclassIterator<A>(_:_:);
        }
      }
    }
  }

  return v13;
}

uint64_t closure #1 in Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  swift_getAssociatedTypeWitness(0, *(a3 + 8), a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v7 = v6;
  a4[5] = v6;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a4 + 2);
  v9 = *(*(v7 - 8) + 16);

  return v9(boxed_opaque_existential_0Tm, a1, v7);
}

uint64_t closure #1 in Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of (String, Any)(a1, v8, &_sSS3key_yp5valuetMd, _sSS3key_yp5valuetMR);
  v4 = v8[1];
  *a2 = v8[0];
  *(a2 + 8) = v4;
  outlined init with copy of (String, Any)(a1, v6, &_sSS3key_yp5valuetMd, _sSS3key_yp5valuetMR);
  v6[1];
  outlined init with take of Any(&v7, (a2 + 16));
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

double implicit closure #1 in static Mirror._superclassIterator<A>(_:_:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *(a1 + 25) = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

atomic_ullong *protocol witness for CustomReflectable.customMirror.getter in conformance Mirror._Dummy@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  v2;

  return v5;
}

uint64_t Mirror.descendant(_:_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = *v3;
  v6 = v3[1];
  v8 = *(v3 + 16);
  v10 = v3[3];
  v9 = v3[4];
  v11 = *(v3 + 40);
  v71 = &type metadata for Mirror._Dummy;
  v12 = swift_allocObject(&unk_1EEEADFE8, 0x39, 7uLL);
  v70[0] = v12;
  v12[2] = v7;
  v12[3] = v6;
  *(v12 + 32) = v8;
  v12[5] = v10;
  v12[6] = v9;
  *(v12 + 56) = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys10MirrorPath_pGMd, _ss23_ContiguousArrayStorageCys10MirrorPath_pGMR);
  inited = swift_initStackObject(v13, v69);
  *(inited + 1) = xmmword_18071DB30;
  outlined init with copy of MirrorPath(a1, (inited + 4));
  *&v61 = inited;
  v6;
  v9;
  v15 = a2;
  specialized Array.append<A>(contentsOf:)(v15, &_ss23_ContiguousArrayStorageCys10MirrorPath_pGMd, _ss23_ContiguousArrayStorageCys10MirrorPath_pGMR, &_ss10MirrorPath_pMd, _ss10MirrorPath_pMR);
  v16 = inited;
  v57 = inited[2];
  if (!v57)
  {
LABEL_31:
    v16;
    outlined init with copy of Any(v70, a3);
    return __swift_destroy_boxed_opaque_existential_1Tm(v70);
  }

  v17 = 0;
  v55 = v61;
  v56 = v61 + 32;
  while (2)
  {
    if (v17 >= *(v16 + 16))
    {
LABEL_34:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    outlined init with copy of MirrorPath(v56 + 40 * v17, v68);
    _ss9CodingKey_pWOb_0(v68, v67);
    outlined init with copy of Any(v70, v66);
    outlined init with copy of Any(v66, v65);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CustomReflectable_pMd, _ss17CustomReflectable_pMR);
    v58 = v17;
    if (swift_dynamicCast(&v61, v65, byte_1EEEAC6F8, v18, 6uLL))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
      _ss9CodingKey_pWOb_0(&v61, v64);
      v20 = *&v64[2];
      v19 = *(&v64[1] + 1);
      __swift_project_boxed_opaque_existential_0Tm(v64, *(&v64[1] + 1));
      (*(v20 + 8))(&v61, v19, v20);
      v21 = *(&v61 + 1);
      v22 = v63;
      __swift_destroy_boxed_opaque_existential_1Tm(v64);
    }

    else
    {
      v63 = 0;
      v61 = 0u;
      v62 = 0u;
      outlined destroy of _HasContiguousBytes?(&v61, &_ss17CustomReflectable_pSgMd, _ss17CustomReflectable_pSgMR);
      memset(v64, 0, 41);
      Mirror.init(internalReflecting:subjectType:customAncestor:)(v66, 0, v64, &v61);
      v21 = *(&v61 + 1);
      v22 = v63;
    }

    v22;
    outlined init with copy of MirrorPath(v67, &v61);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10MirrorPath_pMd, _ss10MirrorPath_pMR);
    if (!swift_dynamicCast(v64, &v61, v23, &type metadata for String, 6uLL))
    {
      outlined init with copy of MirrorPath(v67, &v61);
      if (!swift_dynamicCast(v64, &v61, v23, &type metadata for Int, 6uLL))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v67);
      v38 = *&v64[0];
      v39 = v21[2];
      v40 = v21[3];
      v42 = v21[4];
      v41 = v21[5];
      v43 = *(*v21 + 288);
      swift_unknownObjectRetain(v39);
      swift_unknownObjectRetain(v42);
      v24 = v43(v39, v40, v38, v42, v41);
      v25 = v44;
      swift_unknownObjectRelease(v39);
      swift_unknownObjectRelease(v42);
      if (!v24)
      {
        v24 = v21[4];
        v25 = v21[5];
        swift_unknownObjectRetain(v24);
      }

      goto LABEL_28;
    }

    *&v60 = *(&v64[0] + 1);
    *(&v60 + 1) = *&v64[0];
    v24 = v21[2];
    v25 = v21[3];
    v59 = *(&v64[0] + 1) & 0x6000000000000000;
    swift_unknownObjectRetain(v24);
LABEL_9:
    v26 = *(v25 + 8);
    while (1)
    {
      v28 = v21[4];
      v27 = v21[5];
      ObjectType = swift_getObjectType(v24);
      v30 = v26(ObjectType, v25);
      v31 = swift_getObjectType(v28);
      if (v30 != (*(v27 + 8))(v31, v27))
      {
        goto LABEL_34;
      }

      v32 = swift_getObjectType(v24);
      if ((*(v25 + 24))(v28, v27, v32, v25))
      {
        v60;
        __swift_destroy_boxed_opaque_existential_1Tm(v67);
        swift_unknownObjectRelease(v24);
        v24 = v21[4];
        v25 = v21[5];
        swift_unknownObjectRetain(v24);
        goto LABEL_27;
      }

      (*(*v21 + 256))(&v61, v24, v25);
      if (!*(&v61 + 1))
      {
LABEL_16:
        outlined destroy of _HasContiguousBytes?(&v61, &_sSSSg5label_yp5valuetMd, _sSSSg5label_yp5valuetMR);
        goto LABEL_18;
      }

      if (__PAIR128__(v61, *(&v61 + 1)) == v60)
      {
        break;
      }

      if ((~*(&v61 + 1) & 0x6000000000000000) == 0 && v59 == 0x6000000000000000)
      {
        goto LABEL_16;
      }

      v33 = _stringCompareInternal(_:_:expecting:)(v61, *(&v61 + 1), *(&v60 + 1), v60, 0);
      outlined destroy of _HasContiguousBytes?(&v61, &_sSSSg5label_yp5valuetMd, _sSSSg5label_yp5valuetMR);
      if (v33)
      {
        goto LABEL_26;
      }

LABEL_18:
      isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull(v24);
      v35 = *v21;
      if (!isUniquelyReferenced_nonNull)
      {
        v36 = (*(v35 + 264))(v24, v25);
        v25 = v37;
        swift_unknownObjectRelease(v24);
        v24 = v36;
        goto LABEL_9;
      }

      (*(v35 + 272))(v24, v25);
    }

    outlined destroy of _HasContiguousBytes?(&v61, &_sSSSg5label_yp5valuetMd, _sSSSg5label_yp5valuetMR);
LABEL_26:
    v60;
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
LABEL_27:
    v16 = v55;
LABEL_28:
    v45 = v21[4];
    v46 = v21[5];
    v47 = swift_getObjectType(v24);
    v48 = *(v25 + 8);
    swift_unknownObjectRetain(v24);
    swift_unknownObjectRetain(v45);
    v49 = v48(v47, v25);
    v50 = swift_getObjectType(v45);
    if (v49 != (*(v46 + 8))(v50, v46))
    {
      goto LABEL_34;
    }

    v51 = swift_getObjectType(v24);
    v52 = (*(v25 + 24))(v45, v46, v51, v25);
    swift_unknownObjectRelease(v24);
    swift_unknownObjectRelease(v45);
    if ((v52 & 1) == 0)
    {
      v17 = v58 + 1;
      (*(*v21 + 256))(&v61, v24, v25);
      swift_unknownObjectRelease(v24);
      v21;
      *(&v61 + 1);
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      outlined init with take of Any(&v62, v70);
      if (v58 + 1 == v57)
      {
        goto LABEL_31;
      }

      continue;
    }

    break;
  }

  swift_unknownObjectRelease(v24);
  v21;
  v16;
  *a3 = 0u;
  a3[1] = 0u;
  return __swift_destroy_boxed_opaque_existential_1Tm(v70);
}

uint64_t String.init<A>(describing:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8))(a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

{
  v6[0] = 0;
  v6[1] = 0xE000000000000000;
  (*(a3 + 8))(v6, &type metadata for String, &protocol witness table for String, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6[0];
}

{
  v5 = (*(a3 + 8))(a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

uint64_t Mirror.description.getter()
{
  v2 = *v1;
  v3 = _StringGuts.init(_initialCapacity:)(13);
  v5 = v4;
  v216._countAndFlagsBits = v3;
  v216._object = v4;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Mirror for ", 0xBuLL, 1);
  countAndFlagsBits = v6._countAndFlagsBits;
  object = v6._object;
  v9 = HIBYTE(*&v5) & 0xFLL;
  v10 = v3 & 0xFFFFFFFFFFFFLL;
  if ((*&v5 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(*&v5) & 0xFLL;
  }

  else
  {
    v11 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11 && (v3 & ~*&v5 & 0x2000000000000000) == 0)
  {
    *&v5;
    v216 = v6;
    goto LABEL_86;
  }

  v12 = (v6._object & 0x2000000000000000) == 0;
  v13 = (v6._object >> 56) & 0xF;
  if ((*&v5 & 0x2000000000000000) == 0)
  {
    v212 = v2;
    v14 = v6._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    v15 = (v6._object >> 56) & 0xF;
    if ((v6._object & 0x2000000000000000) != 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    v15 = v14;
    goto LABEL_12;
  }

  if ((v6._object & 0x2000000000000000) == 0)
  {
    v212 = v2;
    v14 = v6._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    v12 = 1;
    goto LABEL_11;
  }

  v0 = v13 + v9;
  if (v13 + v9 < 0x10)
  {
    if (v13)
    {
      v54 = 0;
      v55 = 0;
      v56 = 8 * v9;
      v57 = v5;
      do
      {
        v58 = v6._object >> (v54 & 0x38);
        if (v55 < 8)
        {
          v58 = v6._countAndFlagsBits >> v54;
        }

        v59 = (v58 << (v56 & 0x38)) | ((-255 << (v56 & 0x38)) - 1) & v57;
        v60 = (v58 << v56) | ((-255 << v56) - 1) & v3;
        if (v9 <= 7)
        {
          v3 = v60;
        }

        else
        {
          v57 = v59;
        }

        ++v9;
        v56 += 8;
        v54 += 8;
        ++v55;
      }

      while (8 * v13 != v54);
    }

    else
    {
      v57 = v5;
    }

    *&v5;
    v6._object;
    v61 = 0xA000000000000000;
    if (!(v3 & 0x8080808080808080 | v57 & 0x80808080808080))
    {
      v61 = 0xE000000000000000;
    }

    v216._countAndFlagsBits = v3;
    v216._object = (v61 & 0xFF00000000000000 | (v0 << 56) | v57 & 0xFFFFFFFFFFFFFFLL);
    goto LABEL_86;
  }

  v212 = v2;
  v12 = 0;
  v14 = v6._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  v15 = (v6._object >> 56) & 0xF;
LABEL_12:
  LODWORD(v211) = v12;
  v210 = v14;
  if ((v6._object & 0x1000000000000000) == 0)
  {
    v6._object;
    v17 = v15;
    if ((*&v5 & 0x1000000000000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_274:
    v189 = String.UTF8View._foreignCount()();
    v19 = v189 + *&v17;
    if (!__OFADD__(v189, *&v17))
    {
      goto LABEL_15;
    }

LABEL_276:
    __break(1u);
    goto LABEL_277;
  }

  swift_bridgeObjectRetain_n(v6._object, 2);
  v185._rawBits = 1;
  v186._rawBits = (v15 << 16) | 1;
  v187._rawBits = _StringGuts.validateScalarRange(_:)(v185, v186, v6._countAndFlagsBits, v6._object)._rawBits;
  if (v187._rawBits < 0x10000)
  {
    v187._rawBits |= 3;
  }

  v17 = String.UTF8View.distance(from:to:)(v187, v188);
  v6._object;
  if ((*&v5 & 0x1000000000000000) != 0)
  {
    goto LABEL_274;
  }

LABEL_14:
  v18 = __OFADD__(v11, *&v17);
  v19 = v11 + *&v17;
  if (v18)
  {
    goto LABEL_276;
  }

LABEL_15:
  v20 = v3 & ~*&v5;
  if ((v20 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(*&v5 & 0xFFFFFFFFFFFFFFFLL))
  {
    if (v19 > 15)
    {
      goto LABEL_26;
    }

    if ((*&v5 & 0x2000000000000000) == 0)
    {
LABEL_21:
      if ((*&v5 & 0x1000000000000000) != 0)
      {
        v3 = _StringGuts._foreignConvertedToSmall()(v3, *&v5);
        v24 = v183;
      }

      else
      {
        if ((v3 & 0x1000000000000000) != 0)
        {
          v23 = ((*&v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v23 = _StringObject.sharedUTF8.getter(v3, *&v5);
          v10 = v202;
        }

        closure #1 in _StringGuts._convertedToSmall()(v23, v10, &v214, v16);
        v3 = v214;
        v24 = v215;
      }

      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v21 = _StringGuts.nativeUnusedCapacity.getter(v3, *&v5);
  if (v22)
  {
    goto LABEL_305;
  }

  if (v19 > 15)
  {
    goto LABEL_26;
  }

  if ((*&v5 & 0x2000000000000000) != 0)
  {
LABEL_43:
    v24 = v5;
LABEL_44:
    v6._object;
    v37._rawBits = 1;
    v38._rawBits = (v15 << 16) | 1;
    v39._rawBits = _StringGuts.validateScalarRange(_:)(v37, v38, v6._countAndFlagsBits, v6._object)._rawBits;
    if (v39._rawBits < 0x10000)
    {
      v39._rawBits |= 3;
    }

    if (v39._rawBits >> 16 || v40._rawBits >> 16 != v15)
    {
      countAndFlagsBits = specialized static String._copying(_:)(v39._rawBits, v40._rawBits, v6._countAndFlagsBits, v6._object);
      v42 = v43;
      v6._object;
    }

    else
    {
      v42 = v6._object;
    }

    if ((v42 & 0x2000000000000000) != 0)
    {
      v42;
    }

    else if ((v42 & 0x1000000000000000) != 0)
    {
      countAndFlagsBits = _StringGuts._foreignConvertedToSmall()(*&countAndFlagsBits, v42);
      v205 = v204;
      v42;
      v42 = v205;
    }

    else
    {
      if ((*&countAndFlagsBits & 0x1000000000000000) != 0)
      {
        v191 = ((v42 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v192 = *&countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v191 = _StringObject.sharedUTF8.getter(*&countAndFlagsBits, v42);
      }

      closure #1 in _StringGuts._convertedToSmall()(v191, v192, &v214, v41);
      v42;
      countAndFlagsBits = v214;
      v42 = v215;
    }

    v44 = HIBYTE(v24) & 0xF;
    v45 = HIBYTE(v42) & 0xF;
    v46 = v45 + v44;
    if (v45 + v44 > 0xF)
    {
      goto LABEL_305;
    }

    v6._object;
    if (v45)
    {
      v47 = 0;
      v48 = 0;
      v49 = 8 * v44;
      do
      {
        v50 = v42 >> (v47 & 0x38);
        if (v48 < 8)
        {
          v50 = *&countAndFlagsBits >> v47;
        }

        v51 = (v50 << (v49 & 0x38)) | ((-255 << (v49 & 0x38)) - 1) & v24;
        v52 = (v50 << v49) | ((-255 << v49) - 1) & v3;
        if (v44 <= 7)
        {
          v3 = v52;
        }

        else
        {
          v24 = v51;
        }

        ++v44;
        v49 += 8;
        v47 += 8;
        ++v48;
      }

      while (8 * v45 != v47);
    }

    *&v5;
    v6._object;
    v53 = 0xA000000000000000;
    if (!(v3 & 0x8080808080808080 | v24 & 0x80808080808080))
    {
      v53 = 0xE000000000000000;
    }

    v216._countAndFlagsBits = v3;
    v216._object = (v53 & 0xFF00000000000000 | (v46 << 56) | v24 & 0xFFFFFFFFFFFFFFLL);
    v2 = v212;
    goto LABEL_86;
  }

  if (v21 < *&v17)
  {
    goto LABEL_21;
  }

LABEL_26:
  v0 = v20 & 0x2000000000000000;
  v25 = _StringGuts.nativeUnusedCapacity.getter(v3, *&v5);
  if ((v26 & 1) != 0 || v25 < *&v17)
  {
    if (v0)
    {
      swift_isUniquelyReferenced_nonNull_native(*&v5 & 0xFFFFFFFFFFFFFFFLL);
    }

    v27 = _StringGuts.nativeCapacity.getter(v3, *&v5);
    if (v29)
    {
      v30 = 0;
    }

    else
    {
      v30 = v27;
    }

    if (v30 + 0x4000000000000000 < 0)
    {
      __break(1u);
LABEL_291:
      __break(1u);
      goto LABEL_292;
    }

    v31 = 2 * v30;
    if (v31 > v19)
    {
      v19 = v31;
    }
  }

  else if (v0 && swift_isUniquelyReferenced_nonNull_native(*&v5 & 0xFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_37;
  }

  _StringGuts.grow(_:)(v19);
LABEL_37:
  if ((v6._object & 0x1000000000000000) != 0)
  {
    _StringGuts._foreignAppendInPlace(_:)(v6._countAndFlagsBits, v6._object, 0, v15);
  }

  else
  {
    if (v211)
    {
      v2 = v212;
      if ((v6._countAndFlagsBits & 0x1000000000000000) != 0)
      {
        v32 = (v6._object & 0xFFFFFFFFFFFFFFFLL) + 32;
        v33 = v210;
        v34 = v210;
      }

      else
      {
        v198 = _StringObject.sharedUTF8.getter(v6._countAndFlagsBits, v6._object);
        if (v199 < v210)
        {
          goto LABEL_269;
        }

        v32 = v198;
        v34 = v199;
        v33 = v210;
      }

      v35 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v33, v32, v34);
      closure #1 in _StringGuts.append(_:)(v35, v36, &v216, v6._countAndFlagsBits < 0);
      swift_bridgeObjectRelease_n(v6._object, 2);
      goto LABEL_86;
    }

    v214 = v6._countAndFlagsBits;
    v215 = v6._object & 0xFFFFFFFFFFFFFFLL;
    closure #1 in _StringGuts.append(_:)(&v214, (v6._object >> 56) & 0xF, &v216, (v6._object & 0x4000000000000000) != 0);
  }

  swift_bridgeObjectRelease_n(v6._object, 2);
  v2 = v212;
LABEL_86:
  TypeName = swift_getTypeName(v2, 0);
  if (v63 < 0)
  {
    goto LABEL_269;
  }

  countAndFlagsBits = TypeName;
  v0 = v63;
  object = 0;
  if (_allASCII(_:)(TypeName, v63))
  {
    v65 = 1;
LABEL_89:
    if (v0)
    {
      if (v0 > 15)
      {
        v0 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(*&countAndFlagsBits, v0, v0, v65 & 1);
        v3 = *(v0 + 24);
        goto LABEL_166;
      }

      v98 = v0 - 8;
      v99 = 8;
      if (v0 < 8)
      {
        v99 = v0;
      }

      if (v0 >= 4)
      {
        v101 = v99 & 0xC;
        v64.i32[0] = **&countAndFlagsBits;
        v102 = vmovl_u16(*&vmovl_u8(v64));
        v103.i64[0] = v102.u32[0];
        v103.i64[1] = v102.u32[1];
        v104.i64[0] = 255;
        v104.i64[1] = 255;
        v105 = vandq_s8(v103, v104);
        v103.i64[0] = v102.u32[2];
        v103.i64[1] = v102.u32[3];
        v106 = vshlq_u64(vandq_s8(v103, v104), xmmword_18071DBA0);
        v107.i32[1] = 0;
        v108 = vshlq_u64(v105, xmmword_18071DBB0);
        if (v101 != 4)
        {
          v107.i32[0] = *(*&countAndFlagsBits + 4);
          v109 = vmovl_u16(*&vmovl_u8(v107));
          v110.i64[0] = v109.u32[2];
          v110.i64[1] = v109.u32[3];
          v111 = vandq_s8(v110, v104);
          v110.i64[0] = v109.u32[0];
          v110.i64[1] = v109.u32[1];
          v106 = vorrq_s8(vshlq_u64(v111, xmmword_18071DBD0), v106);
          v108 = vorrq_s8(vshlq_u64(vandq_s8(v110, v104), xmmword_18071DBC0), v108);
        }

        v112 = vorrq_s8(v108, v106);
        v3 = vorr_s8(*v112.i8, *&vextq_s8(v112, v112, 8uLL));
        if (v99 == v101)
        {
          goto LABEL_158;
        }

        v100 = 8 * v101;
      }

      else
      {
        v3 = 0;
        v100 = 0;
        v101 = 0;
      }

      v113 = v99 - v101;
      v114 = (*&countAndFlagsBits + v101);
      do
      {
        v115 = *v114++;
        v3 |= v115 << (v100 & 0x38);
        v100 += 8;
        --v113;
      }

      while (v113);
LABEL_158:
      if (v0 < 9)
      {
        v116 = 0;
      }

      else
      {
        v116 = 0;
        v117 = 0;
        v118 = (*&countAndFlagsBits + 8);
        do
        {
          v119 = *v118++;
          v116 |= v119 << v117;
          v117 += 8;
          --v98;
        }

        while (v98);
      }

      v120 = 0xA000000000000000;
      if (((v116 | v3) & 0x8080808080808080) == 0)
      {
        v120 = 0xE000000000000000;
      }

      v0 = v120 | (v0 << 56) | v116;
      goto LABEL_166;
    }

LABEL_135:
    v3 = 0;
    v0 = 0xE000000000000000;
    goto LABEL_166;
  }

  if (!v0)
  {
    goto LABEL_135;
  }

  v5 = 0;
  v66 = (*&countAndFlagsBits + v0);
  v65 = 1;
  v67 = countAndFlagsBits;
  v68 = countAndFlagsBits;
  while (1)
  {
    v70 = *v68++;
    v69 = v70;
    if ((v70 & 0x80000000) == 0)
    {
      v71 = 1;
      goto LABEL_96;
    }

    if ((v69 + 11) <= 0xCCu)
    {
      v214.i8[0] = _diagnoseInvalidUTF8MultiByteLeading(_:)(v69);
      goto LABEL_137;
    }

    if (v69 > 0xDFu)
    {
      break;
    }

    if (v68 == v66 || (*v68 & 0xC0) != 0x80)
    {
LABEL_262:
      v182 = 4;
      goto LABEL_263;
    }

    v65 = 0;
    v68 = v67 + 2;
    v71 = 2;
LABEL_96:
    *&v5 += v71;
    v67 = v68;
    if (v68 == v66)
    {
      goto LABEL_89;
    }
  }

  if (v69 == 224)
  {
    if (v68 == v66)
    {
      goto LABEL_262;
    }

    if (v67[1] - 192 < 0xFFFFFFE0)
    {
      goto LABEL_268;
    }

LABEL_120:
    if (v67 + 2 == v66 || (v67[2] & 0xC0) != 0x80)
    {
      goto LABEL_262;
    }

    v65 = 0;
    v68 = v67 + 3;
    v71 = 3;
    goto LABEL_96;
  }

  if (v69 <= 0xECu)
  {
    goto LABEL_118;
  }

  if (v69 == 237)
  {
    if (v68 == v66)
    {
      goto LABEL_262;
    }

    v72 = v67[1];
    if (v72 > 0x9F || (v72 & 0xC0) != 0x80)
    {
      v182 = 1;
      goto LABEL_263;
    }

    goto LABEL_120;
  }

  if (v69 <= 0xEFu)
  {
LABEL_118:
    if (v68 == v66 || (v67[1] & 0xC0) != 0x80)
    {
      goto LABEL_262;
    }

    goto LABEL_120;
  }

  if (v69 != 240)
  {
    if (v69 <= 0xF3u)
    {
      if (v68 == v66 || (v67[1] & 0xC0) != 0x80)
      {
        goto LABEL_262;
      }
    }

    else
    {
      if (v68 == v66)
      {
        goto LABEL_262;
      }

      v73 = v67[1];
      if (v73 > 0x8F || (v73 & 0xC0) != 0x80)
      {
        v182 = 2;
        goto LABEL_263;
      }
    }

    goto LABEL_130;
  }

  if (v68 == v66)
  {
    goto LABEL_262;
  }

  if (v67[1] - 192 >= 0xFFFFFFD0)
  {
LABEL_130:
    if (v67 + 2 == v66 || (v67[2] & 0xC0) != 0x80 || v67 + 3 == v66 || (v67[3] & 0xC0) != 0x80)
    {
      goto LABEL_262;
    }

    v65 = 0;
    v68 = v67 + 4;
    v71 = 4;
    goto LABEL_96;
  }

LABEL_268:
  v182 = 3;
LABEL_263:
  v214.i8[0] = v182;
LABEL_137:
  swift_willThrowTypedImpl(&v214, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
  v74 = specialized Collection.subscript.getter(*&v5, *&countAndFlagsBits, v0);
  v17 = findInvalidRange #1 (_:) in validateUTF8(_:)(v74, v75, v76, v77);
  v214 = 0;
  v215 = 0xE000000000000000;
  if (__OFADD__(v0, 15))
  {
    goto LABEL_291;
  }

  v3 = v78;
  v5 = &v214;
  _StringGuts.reserveCapacity(_:)(v0 + 15);
  v79 = v17;
  while (1)
  {
    v80 = specialized Collection.subscript.getter(v79, *&countAndFlagsBits, v0);
    v84 = *&v214 & 0xFFFFFFFFFFFFLL;
    if ((v215 & 0x2000000000000000) != 0)
    {
      v84 = HIBYTE(v215) & 0xF;
    }

    v18 = __OFADD__(v84, v0);
    v85 = v84 + v0;
    if (v18)
    {
      __break(1u);
LABEL_267:
      __break(1u);
      goto LABEL_268;
    }

    v86 = v80;
    if (__OFADD__(v85, 3))
    {
      goto LABEL_267;
    }

    v87 = v81;
    v88 = v82;
    v89 = v83;
    _StringGuts.reserveCapacity(_:)(v85 + 3);
    v90 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v86, v87, v88, v89);
    v5 = (v215 & 0xFFFFFFFFFFFFFFFLL);
    __StringStorage.appendInPlace(_:isASCII:)(v90, v91, 0);
    v214 = *(*&v5 + 24);
    specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(0xFFFDu, &v214);
    v92 = specialized Collection.subscript.getter(v3, *&countAndFlagsBits, v0);
    countAndFlagsBits = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v92, v93, v94, v95);
    v0 = v96;
    if ((validateUTF8(_:)(*&countAndFlagsBits, v96) & 0x8000000000000000) == 0)
    {
      break;
    }

    v3 = v97;
    if (!v0)
    {
      goto LABEL_151;
    }
  }

  _StringGuts.appendInPlace(_:isASCII:)(*&countAndFlagsBits, v0, 0);
LABEL_151:
  v3 = v214;
  v0 = v215;
LABEL_166:
  v122 = v216._countAndFlagsBits;
  v121 = v216._object;
  v123 = (v216._object >> 56) & 0xF;
  v124 = v216._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v216._object & 0x2000000000000000) != 0)
  {
    v125 = (v216._object >> 56) & 0xF;
  }

  else
  {
    v125 = v216._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v125 && (v216._countAndFlagsBits & ~v216._object & 0x2000000000000000) == 0)
  {
    v216._object;
    v216._countAndFlagsBits = v3;
    v216._object = v0;
    goto LABEL_236;
  }

  v126 = HIBYTE(v0) & 0xF;
  if ((v216._object & 0x2000000000000000) == 0)
  {
    v213 = (v0 & 0x2000000000000000) == 0;
    v127 = v3 & 0xFFFFFFFFFFFFLL;
    v128 = HIBYTE(v0) & 0xF;
    if ((v0 & 0x2000000000000000) != 0)
    {
LABEL_177:
      v211 = v127;
      if ((v0 & 0x1000000000000000) == 0)
      {
        goto LABEL_178;
      }

LABEL_207:
      swift_bridgeObjectRetain_n(v0, 2);
      v151._rawBits = 1;
      v152._rawBits = (v128 << 16) | 1;
      v153._rawBits = _StringGuts.validateScalarRange(_:)(v151, v152, v3, v0)._rawBits;
      if (v153._rawBits < 0x10000)
      {
        v153._rawBits |= 3;
      }

      v130 = String.UTF8View.distance(from:to:)(v153, v154);
      v0;
      if ((v121 & 0x1000000000000000) != 0)
      {
        goto LABEL_210;
      }

LABEL_179:
      v18 = __OFADD__(v125, v130);
      v131 = v125 + v130;
      if (!v18)
      {
        goto LABEL_180;
      }

LABEL_212:
      __break(1u);
LABEL_213:
      _StringGuts._foreignAppendInPlace(_:)(v3, v0, 0, v128);
      goto LABEL_231;
    }

LABEL_176:
    v128 = v127;
    goto LABEL_177;
  }

  if ((v0 & 0x2000000000000000) == 0)
  {
    v127 = v3 & 0xFFFFFFFFFFFFLL;
    v213 = 1;
    goto LABEL_176;
  }

  v150 = v123 + v126;
  if (v123 + v126 >= 0x10)
  {
    v213 = 0;
    v128 = HIBYTE(v0) & 0xF;
    v211 = v3 & 0xFFFFFFFFFFFFLL;
    if ((v0 & 0x1000000000000000) != 0)
    {
      goto LABEL_207;
    }

LABEL_178:
    v0;
    v130 = v128;
    if ((v121 & 0x1000000000000000) == 0)
    {
      goto LABEL_179;
    }

LABEL_210:
    v155 = String.UTF8View._foreignCount()();
    v131 = v155 + v130;
    if (__OFADD__(v155, v130))
    {
      goto LABEL_212;
    }

LABEL_180:
    if ((*&v122 & ~v121 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v121 & 0xFFFFFFFFFFFFFFFLL))
    {
      v132 = _StringGuts.nativeUnusedCapacity.getter(*&v122, v121);
      if (v133)
      {
        goto LABEL_305;
      }

      if (v131 > 15)
      {
        goto LABEL_191;
      }

      if ((v121 & 0x2000000000000000) == 0)
      {
        if (v132 < v130)
        {
LABEL_186:
          if ((v121 & 0x1000000000000000) != 0)
          {
            v122 = _StringGuts._foreignConvertedToSmall()(*&v122, v121);
            v135 = v184;
          }

          else
          {
            if ((*&v122 & 0x1000000000000000) != 0)
            {
              v134 = ((v121 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v134 = _StringObject.sharedUTF8.getter(*&v122, v121);
              v124 = v203;
            }

            closure #1 in _StringGuts._convertedToSmall()(v134, v124, &v214, v129);
            v122 = v214;
            v135 = v215;
          }

LABEL_198:
          v0;
          v142._rawBits = 1;
          v143._rawBits = (v128 << 16) | 1;
          v144._rawBits = _StringGuts.validateScalarRange(_:)(v142, v143, v3, v0)._rawBits;
          if (v144._rawBits < 0x10000)
          {
            v144._rawBits |= 3;
          }

          if (v144._rawBits >> 16)
          {
            v147 = 0;
          }

          else
          {
            v147 = v145._rawBits >> 16 == v128;
          }

          if (v147)
          {
            v149 = v0;
          }

          else
          {
            v3 = specialized static String._copying(_:)(v144._rawBits, v145._rawBits, v3, v0);
            v149 = v148;
            v0;
          }

          if ((v149 & 0x2000000000000000) != 0)
          {
            v149;
          }

          else if ((v149 & 0x1000000000000000) != 0)
          {
            v3 = _StringGuts._foreignConvertedToSmall()(v3, v149);
            v207 = v206;
            v149;
            v149 = v207;
          }

          else
          {
            if ((v3 & 0x1000000000000000) != 0)
            {
              v193 = ((v149 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v194 = v3 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v193 = _StringObject.sharedUTF8.getter(v3, v149);
            }

            closure #1 in _StringGuts._convertedToSmall()(v193, v194, &v214, v146);
            v149;
            v3 = v214;
            v149 = v215;
          }

          v156 = specialized _SmallString.init(_:appending:)(*&v122, v135, v3, v149);
          if ((v158 & 1) == 0)
          {
            v159 = v156;
            v160 = v157;
            v121;
            swift_bridgeObjectRelease_n(v0, 2);
            v216._countAndFlagsBits = v159;
            v216._object = v160;
            goto LABEL_236;
          }

          goto LABEL_305;
        }

LABEL_191:
        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v131, v130);
        if ((v0 & 0x1000000000000000) != 0)
        {
          goto LABEL_213;
        }

        if (!v213)
        {
          v141 = (v0 >> 62) & 1;
          v214 = v3;
          v215 = v0 & 0xFFFFFFFFFFFFFFLL;
          v139 = &v214;
          v140 = HIBYTE(v0) & 0xF;
          goto LABEL_230;
        }

        if ((v3 & 0x1000000000000000) != 0)
        {
          v136 = (v0 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v137 = v211;
          v138 = v211;
          goto LABEL_195;
        }

        v200 = _StringObject.sharedUTF8.getter(v3, v0);
        if (v201 >= v211)
        {
          goto LABEL_313;
        }

LABEL_269:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    else
    {
      if (v131 > 15)
      {
        goto LABEL_191;
      }

      if ((v121 & 0x2000000000000000) == 0)
      {
        goto LABEL_186;
      }
    }

    v135 = v121;
    goto LABEL_198;
  }

  if (v126)
  {
    v161 = 0;
    v162 = 0;
    v163 = 8 * v123;
    v164 = v216._object;
    do
    {
      v165 = v0 >> (v161 & 0x38);
      if (v162 < 8)
      {
        v165 = v3 >> v161;
      }

      v166 = (v165 << (v163 & 0x38)) | ((-255 << (v163 & 0x38)) - 1) & v164;
      v167 = (v165 << v163) | ((-255 << v163) - 1) & *&v122;
      if (v123 <= 7)
      {
        v122 = v167;
      }

      else
      {
        v164 = v166;
      }

      ++v123;
      v163 += 8;
      v161 += 8;
      ++v162;
    }

    while (8 * v126 != v161);
  }

  else
  {
    v164 = v216._object;
  }

  v216._object;
  v0;
  v168 = 0xA000000000000000;
  if (!(*&v122 & 0x8080808080808080 | v164 & 0x80808080808080))
  {
    v168 = 0xE000000000000000;
  }

  v216._countAndFlagsBits = v122;
  v216._object = (v168 & 0xFF00000000000000 | (v150 << 56) | v164 & 0xFFFFFFFFFFFFFFLL);
LABEL_236:
  while (2)
  {
    v5 = v216._countAndFlagsBits;
    v0 = v216._object;
    countAndFlagsBits = (v216._countAndFlagsBits & 0xFFFFFFFFFFFFLL);
    if ((v216._object & 0x2000000000000000) != 0)
    {
      v169 = (v216._object >> 56) & 0xF;
    }

    else
    {
      v169 = v216._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v169 || (v216._countAndFlagsBits & ~v216._object & 0x2000000000000000) != 0)
    {
      if ((v216._object & 0x2000000000000000) != 0)
      {
        v216._object;
        0xE000000000000000;
        return v5;
      }

      0xE000000000000000;
      v3 = countAndFlagsBits;
      if ((v0 & 0x1000000000000000) != 0)
      {
LABEL_277:
        v3 = String.UTF8View._foreignCount()();
        if ((*&v5 & 0x2000000000000000) == 0)
        {
          goto LABEL_278;
        }

LABEL_244:
        if (!swift_isUniquelyReferenced_nonNull_native(v0 & 0xFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_278;
        }

        v171 = _StringGuts.nativeUnusedCapacity.getter(*&v5, v0);
        if (v172)
        {
          goto LABEL_305;
        }

        if (v3 <= 15 && (v171 & 0x8000000000000000) != 0)
        {
          goto LABEL_248;
        }

LABEL_279:
        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v3, 0);
        v214 = 0;
        v215 = 0;
        closure #1 in _StringGuts.append(_:)(&v214, 0, &v216, 1);
        if (!object)
        {
          swift_bridgeObjectRelease_n(0xE000000000000000, 2);
          return v216._countAndFlagsBits;
        }
      }

      else
      {
        if ((*&v5 & 0x2000000000000000) != 0)
        {
          goto LABEL_244;
        }

LABEL_278:
        if (v3 > 15)
        {
          goto LABEL_279;
        }

LABEL_248:
        if ((v0 & 0x1000000000000000) != 0)
        {
          v5 = _StringGuts._foreignConvertedToSmall()(*&v5, v0);
          countAndFlagsBits = v174;
LABEL_256:
          0xE000000000000000;
          v175._rawBits = 1;
          v176._rawBits = 1;
          v177._rawBits = _StringGuts.validateScalarRange(_:)(v175, v176, 0, 0xE000000000000000)._rawBits;
          if (v177._rawBits < 0x10000)
          {
            v177._rawBits |= 3;
          }

          v17 = Substring.description.getter(v177._rawBits, v178._rawBits, 0, 0xE000000000000000);
          v3 = v179;
          0xE000000000000000;
          if ((v3 & 0x2000000000000000) != 0)
          {
            v3;
            goto LABEL_260;
          }

LABEL_292:
          if ((v3 & 0x1000000000000000) != 0)
          {
            v17 = _StringGuts._foreignConvertedToSmall()(*&v17, v3);
            v209 = v208;
            v3;
            v3 = v209;
LABEL_260:
            v180 = specialized _SmallString.init(_:appending:)(*&v5, *&countAndFlagsBits, *&v17, v3);
            if ((v181 & 1) == 0)
            {
              v5 = v180;
              v0;
              swift_bridgeObjectRelease_n(0xE000000000000000, 2);
              return v5;
            }

LABEL_305:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          if ((*&v17 & 0x1000000000000000) != 0)
          {
            v195 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v196 = *&v17 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v195 = _StringObject.sharedUTF8.getter(*&v17, v3);
          }

          closure #1 in _StringGuts._convertedToSmall()(v195, v196, &v214, v28);
          if (!object)
          {
            v3;
            v17 = v214;
            v3 = v215;
            goto LABEL_260;
          }
        }

        else
        {
          if ((*&v5 & 0x1000000000000000) != 0)
          {
            v173 = ((v0 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v173 = _StringObject.sharedUTF8.getter(*&v5, v0);
            countAndFlagsBits = v197;
          }

          closure #1 in _StringGuts._convertedToSmall()(v173, *&countAndFlagsBits, &v214, v170);
          if (!object)
          {
            v5 = v214;
            countAndFlagsBits = v215;
            goto LABEL_256;
          }
        }
      }

      do
      {
        object;
        __break(1u);
LABEL_313:
        v136 = v200;
        v138 = v201;
        v137 = v211;
LABEL_195:
        v139 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v137, v136, v138);
        v141 = v3 >> 63;
LABEL_230:
        closure #1 in _StringGuts.append(_:)(v139, v140, &v216, v141);
      }

      while (object);
LABEL_231:
      swift_bridgeObjectRelease_n(v0, 2);
      continue;
    }

    break;
  }

  v216._object;
  return 0;
}

uint64_t Mirror.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *&v24 = *v1;
  *(&v24 + 1) = v3;
  v25 = v4;
  *&v26 = v5;
  *(&v26 + 1) = v6;
  v27 = v7;
  v20 = 0uLL;
  v3;
  v6;
  v8 = static Mirror._superclassIterator<A>(_:_:)(&v24, &v20, &type metadata for Mirror);
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMd, _ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMR);
  v12 = swift_allocObject(v11, 0x48, 7uLL);
  v12[6] = &_swiftEmptyArrayStorage;
  v12[7] = closure #1 in Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:);
  v12[8] = 0;
  v13 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v14 = swift_allocObject(v13, 0x18, 7uLL);
  v14[2] = 0;
  v15 = swift_allocObject(v13, 0x18, 7uLL);
  v15[2] = 0;
  v12[2] = v14;
  v12[3] = &protocol witness table for _IndexBox<A>;
  v12[4] = v15;
  v12[5] = &protocol witness table for _IndexBox<A>;
  v20 = v24;
  v21 = v25;
  v22 = v26;
  v23 = v27;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v19, &v20, &type metadata for Mirror, v16, 6uLL);
  v18 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  *a1 = &type metadata for Mirror;
  *(a1 + 8) = v12;
  *(a1 + 16) = 9;
  *(a1 + 24) = v8;
  *(a1 + 32) = v10;
  *(a1 + 40) = v18;
  return result;
}

char **one-time initialization function for _unsafeArgv()
{
  result = _swift_stdlib_getUnsafeArgvArgc(&static CommandLine._argc);
  static CommandLine._unsafeArgv = result;
  return result;
}

uint64_t static CommandLine._unsafeArgv.setter(uint64_t result, uint64_t a2, void *a3)
{
  if (one-time initialization token for _unsafeArgv != -1)
  {
    v3 = result;
    swift_once(&one-time initialization token for _unsafeArgv, one-time initialization function for _unsafeArgv, a3);
    result = v3;
  }

  static CommandLine._unsafeArgv = result;
  return result;
}

uint64_t (*static CommandLine._unsafeArgv.modify(uint64_t a1, uint64_t a2, void *a3))()
{
  if (one-time initialization token for _unsafeArgv != -1)
  {
    swift_once(&one-time initialization token for _unsafeArgv, one-time initialization function for _unsafeArgv, a3);
  }

  return _swift_displayCrashMessage;
}

uint64_t static CommandLine.argc.getter(uint64_t a1, uint64_t a2, void *a3)
{
  if (one-time initialization token for _unsafeArgv != -1)
  {
    swift_once(&one-time initialization token for _unsafeArgv, one-time initialization function for _unsafeArgv, a3);
  }

  result = 0;
  while (*(static CommandLine._unsafeArgv + 8 * result))
  {
    if (++result == 0x80000000)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

_DWORD *static Int32.+= infix(_:_:)(_DWORD *result, int a2)
{
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *result += a2;
  }

  return result;
}

uint64_t static CommandLine._unsafeArgv.getter(uint64_t a1, uint64_t a2, void *a3)
{
  if (one-time initialization token for _unsafeArgv != -1)
  {
    swift_once(&one-time initialization token for _unsafeArgv, one-time initialization function for _unsafeArgv, a3);
  }

  return static CommandLine._unsafeArgv;
}

__objc2_class **one-time initialization function for _arguments(uint64_t a1, uint64_t a2, void *a3)
{
  if (one-time initialization token for _unsafeArgv != -1)
  {
    swift_once(&one-time initialization token for _unsafeArgv, one-time initialization function for _unsafeArgv, a3);
  }

  v3 = 0;
  while (*(static CommandLine._unsafeArgv + 8 * v3))
  {
    if (++v3 == 0x80000000)
    {
      __break(1u);
      break;
    }
  }

  result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_SSs5NeverOTg549_ss11CommandLineO10_argumentsSaySSGvpZfiSSSiXEfU_Tf1cn_n(0, v3);
  static CommandLine._arguments = result;
  return result;
}

unint64_t static CommandLine.arguments.getter(uint64_t a1, uint64_t a2, void *a3)
{
  if (one-time initialization token for _arguments != -1)
  {
    swift_once(&one-time initialization token for _arguments, one-time initialization function for _arguments, a3);
  }

  v4 = static CommandLine._arguments;

  return v4;
}

unint64_t key path getter for static CommandLine.arguments : CommandLine.Type@<X0>(void *a1@<X2>, void *a2@<X8>)
{
  if (one-time initialization token for _arguments != -1)
  {
    v5 = a2;
    swift_once(&one-time initialization token for _arguments, one-time initialization function for _arguments, a1);
    a2 = v5;
  }

  v3 = static CommandLine._arguments;
  *a2 = static CommandLine._arguments;

  return v3;
}

void key path setter for static CommandLine.arguments : CommandLine.Type(unint64_t *a1)
{
  v1 = *a1;
  v2 = one-time initialization token for _arguments;
  *a1;
  if (v2 != -1)
  {
    swift_once(&one-time initialization token for _arguments, one-time initialization function for _arguments, v3);
  }

  v4 = static CommandLine._arguments;
  static CommandLine._arguments = v1;

  v4;
}

void static CommandLine.arguments.setter(uint64_t a1, uint64_t a2, void *a3)
{
  if (one-time initialization token for _arguments != -1)
  {
    v5 = a1;
    swift_once(&one-time initialization token for _arguments, one-time initialization function for _arguments, a3);
    a1 = v5;
  }

  v4 = static CommandLine._arguments;
  static CommandLine._arguments = a1;

  v4;
}

void (*static CommandLine.arguments.modify(void *a1, uint64_t a2, void *a3))(uint64_t *a1)
{
  if (one-time initialization token for _arguments != -1)
  {
    swift_once(&one-time initialization token for _arguments, one-time initialization function for _arguments, a3);
  }

  v4 = static CommandLine._arguments;
  *a1 = static CommandLine._arguments;
  v4;
  return static CommandLine.arguments.modify;
}

void static CommandLine.arguments.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = static CommandLine._arguments;
  static CommandLine._arguments = v1;
  v2;
}

__objc2_class **_SliceBuffer.nativeBuffer.getter(void *a1)
{
  v2 = type metadata accessor for __ContiguousArrayStorageBase();
  v3 = swift_unknownObjectRetain(a1);
  result = swift_dynamicCastClass(v3, v2);
  if (!result)
  {
    swift_unknownObjectRelease(a1);
    return &_swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t _SliceBuffer.endIndex.setter(uint64_t result)
{
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *(v1 + 24) = *(v1 + 24) & 1 | (2 * result);
  return result;
}

__objc2_class **_SliceBuffer.requestUniqueMutableBackingBuffer(minimumCapacity:)(uint64_t a1, uint64_t a2)
{
  if (!swift_isUniquelyReferenced_nonNull(*v2))
  {
    return 0;
  }

  v6 = v2[2];
  v5 = v2[3];
  v7 = (v5 >> 1) - v6;
  if (__OFSUB__(v5 >> 1, v6))
  {
    __break(1u);
    goto LABEL_27;
  }

  v8 = *v2;
  v9 = v2[1];
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  v10 = type metadata accessor for __ContiguousArrayStorageBase();
  v11 = swift_unknownObjectRetain(v8);
  v12 = swift_dynamicCastClass(v11, v10);
  if (!v12)
  {
    swift_unknownObjectRelease(v8);
    v12 = &_swiftEmptyArrayStorage;
  }

  v13 = *(*(a2 + 16) - 8);
  v14 = v12[2];
  if ((v9 + *(v13 + 72) * v6 + *(v13 + 72) * v7) != (v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v14))
  {
    v12;
LABEL_8:
    v15 = v7;
    goto LABEL_10;
  }

  v16 = v12[3];
  v12;
  v17 = (v16 >> 1) - v14;
  v18 = __OFADD__(v7, v17);
  v15 = v7 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_27;
  }

LABEL_10:
  if (v15 < a1)
  {
    return 0;
  }

  v20 = type metadata accessor for __ContiguousArrayStorageBase();
  v21 = swift_unknownObjectRetain(v8);
  result = swift_dynamicCastClass(v21, v20);
  if (!result)
  {
    swift_unknownObjectRelease(v8);
    result = &_swiftEmptyArrayStorage;
  }

  v40 = result;
  v24 = *(a2 + 16);
  v25 = *(v24 - 8);
  v26 = *(v25 + 72);
  if (!v26 || ((v27 = v9 + v26 * v6 - (result + ((*(v25 + 80) + 32) & ~*(v25 + 80))), v26 == -1) ? (v28 = v27 == 0x8000000000000000) : (v28 = 0), v28))
  {
LABEL_27:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v29 = v27 / v26;
  v30 = v7 + v29;
  if (__OFADD__(v7, v29))
  {
    __break(1u);
    goto LABEL_25;
  }

  a1 = result[2];
  if (v30 < a1)
  {
LABEL_25:
    v31 = type metadata accessor for _ContiguousArrayBuffer(0, v24, v22, v23);
    v34 = type metadata accessor for EmptyCollection(0, v24, v32, v33);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ContiguousArrayBuffer<A>, v31, v35);
    v38 = swift_getWitnessTable(protocol conformance descriptor for EmptyCollection<A>, v34, v37);
    _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v30, a1, 0, v39, v31, v34, WitnessTable, v38);
    return v40;
  }

  return result;
}

char *_SliceBuffer._copyContents(initializing:)@<X0>(char *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t *a7@<X6>, void *a8@<X8>)
{
  if (a2 < 1)
  {
    goto LABEL_15;
  }

  v13 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v13 >= a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = (a6 >> 1) - a5;
  }

  if (!result)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v15 = *(*(a7 - 1) + 72);
  if (v13 < 0 || ((v16 = (a4 + v15 * a5), v16 < &result[v15 * v14]) ? (v17 = &v16[v15 * v14] > result) : (v17 = 0), v17))
  {
LABEL_18:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = swift_arrayInitWithCopy(result, v16, v14, a7);
  v18 = a5 + v14;
  if (!__OFADD__(a5, v14))
  {
    goto LABEL_16;
  }

  __break(1u);
LABEL_15:
  v14 = 0;
  v18 = a5;
LABEL_16:
  *a8 = a3;
  a8[1] = a4;
  a8[2] = a5;
  a8[3] = a6;
  a8[4] = v18;
  a8[5] = v14;
  return result;
}

uint64_t key path getter for _SliceBuffer.count : <A>_SliceBuffer<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = ArraySlice.count.getter(a1, a2, *(a1 + 16), *(a1 + 24));
  *a3 = result;
  return result;
}

__objc2_class **key path setter for _SliceBuffer.count : <A>_SliceBuffer<A>(__objc2_class ***a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  type metadata accessor for _SliceBuffer(0, *(a3 + a4 - 8), a3, a4);
  return _SliceBuffer.count.setter(v4);
}

void (*_SliceBuffer.count.modify(void (**a1)(__objc2_class ****a1, char a2), uint64_t a2))(__objc2_class ****a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    result = swift_coroFrameAlloc(0x28, 0xE364uLL);
  }

  else
  {
    result = malloc(0x28uLL);
  }

  *a1 = result;
  *(result + 1) = a2;
  *(result + 2) = v2;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = __OFSUB__(v7 >> 1, v6);
  v9 = (v7 >> 1) - v6;
  *(result + 3) = v7;
  *(result + 4) = v9;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *result = v9;
    return _SliceBuffer.count.modify;
  }

  return result;
}

void _SliceBuffer.count.modify(__objc2_class ****a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  if ((a2 & 1) == 0)
  {
    v4 = v2[4];
    v5 = (v3 - v4);
    if (__OFSUB__(v3, v4))
    {
      __break(1u);
    }

    else
    {
      if (!v5)
      {
        goto LABEL_10;
      }

      v6 = *v2[2];
      v7 = type metadata accessor for __ContiguousArrayStorageBase();
      v8 = swift_unknownObjectRetain(v6);
      v9 = swift_dynamicCastClass(v8, v7);
      if (!v9)
      {
        swift_unknownObjectRelease(v6);
        v9 = &_swiftEmptyArrayStorage;
      }

      v10 = v9[2];
      v11 = __OFADD__(v10, v5);
      v12 = &v5[v10];
      if (!v11)
      {
        v13 = v2[3];
        v9[2] = v12;
        v9;
        if (!__OFADD__(v5, v13 >> 1))
        {
          _SliceBuffer.endIndex.setter(&v5[v13 >> 1]);
          goto LABEL_10;
        }

LABEL_15:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  _SliceBuffer.count.setter(v3);
LABEL_10:

  free(v2);
}

uint64_t key path setter for _SliceBuffer.subscript(_:) : <A>_SliceBuffer<A>A(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - v6;
  v9 = *v8;
  (*(v10 + 16))(&v15 - v6);
  return _SliceBuffer.subscript.setter(v7, v9, v11, *(a2 + 8), v12, v13, v5);
}

void (*_SliceBuffer.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t a1)
{
  if (swift_coroFrameAlloc)
  {
    v11 = swift_coroFrameAlloc(0x30, 0xB570uLL);
  }

  else
  {
    v11 = malloc(0x30uLL);
  }

  v12 = v11;
  *a1 = v11;
  v11[1] = a4;
  v11[2] = a7;
  *v11 = a2;
  v13 = *(a7 - 8);
  v14 = v13;
  v11[3] = v13;
  v15 = *(v13 + 64);
  if (swift_coroFrameAlloc)
  {
    v16 = swift_coroFrameAlloc(v15, 0xB570uLL);
  }

  else
  {
    v16 = malloc(v15);
  }

  v12[4] = v16;
  v17 = *(v14 + 16);
  v12[5] = *(v14 + 72);
  v17();
  return _SliceBuffer.subscript.modify;
}

void _SliceBuffer.subscript.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*(*a1 + 24) + 40))(*(*a1 + 8) + **a1 * *(*a1 + 40), v2, *(*a1 + 16));
  free(v2);

  free(v1);
}

id key path getter for _SliceBuffer.subscript(_:) : <A>_SliceBuffer<A>A@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = specialized _SliceBuffer.subscript.getter(*a2, a2[1], *a1);
  *a3 = v4;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;

  return swift_unknownObjectRetain(v4);
}

void key path setter for _SliceBuffer.subscript(_:) : <A>_SliceBuffer<A>A(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  type metadata accessor for _SliceBuffer(0, *(a3 + a4 - 8), a3, a4);
  swift_unknownObjectRetain(v4);
  specialized _SliceBuffer.subscript.setter();
}

void (*_SliceBuffer.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(id *a1, char a2)
{
  v5 = specialized _SliceBuffer.subscript.getter(a2, a3, *v3);
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  swift_unknownObjectRetain(v5);
  return _SliceBuffer.subscript.modify;
}

void _ArrayBuffer.subscript.modify(id *a1, char a2, const char *a3, unint64_t a4, unint64_t a5)
{
  if ((a2 & 1) == 0)
  {
    swift_unknownObjectRelease(*a1);
  }

  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0x6C706D6920746F6ELL, 0xEF6465746E656D65, a3, a4, 2, a5);
}

unint64_t key path getter for _SliceBuffer.endIndex : <A>_SliceBuffer<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  result = ArraySlice.endIndex.getter(a1, a2, a3, *(a1 + 24));
  *a4 = result;
  return result;
}

uint64_t (*_SliceBuffer.endIndex.modify(unint64_t *a1, unint64_t a2))(uint64_t *a1, char a2)
{
  v3 = *(v2 + 24);
  a1[2] = v2;
  a1[3] = v3;
  *a1 = v3 >> 1;
  a1[1] = a2;
  return _SliceBuffer.endIndex.modify;
}

uint64_t _SliceBuffer.endIndex.modify(uint64_t *a1, char a2)
{
  result = *a1;
  if (a2)
  {
    return _SliceBuffer.endIndex.setter(result);
  }

  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *(a1[2] + 24) = a1[3] & 1 | (2 * result);
  return result;
}

uint64_t _SliceBuffer.withUnsafeMutableBufferPointer<A>(_:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3[2];
  v5 = v3[3] >> 1;
  if (__OFSUB__(v5, v4))
  {
    __break(1u);
LABEL_5:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v5 - v4 < 0)
  {
    goto LABEL_5;
  }

  return a1(v3[1] + *(*(*(a3 + 16) - 8) + 72) * v4);
}

uint64_t _ss12_SliceBufferV017withUnsafeMutableB7Pointeryqd__qd__SryxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMglrzo_Tpq5(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3[2];
  v5 = v3[3] >> 1;
  if (__OFSUB__(v5, v4))
  {
    __break(1u);
LABEL_5:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v5 - v4 < 0)
  {
    goto LABEL_5;
  }

  return a1(v3[1] + *(*(*(a3 + 16) - 8) + 72) * v4);
}

uint64_t _ss12_SliceBufferV017withUnsafeMutableB7Pointeryqd__qd__SryxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v7[2];
  v17 = v7[3] >> 1;
  if (__OFSUB__(v17, v16))
  {
    __break(1u);
LABEL_7:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v17 - v16 < 0)
  {
    goto LABEL_7;
  }

  result = v13(v7[1] + *(*(*(v12 + 16) - 8) + 72) * v16);
  if (v8)
  {
    return (*(v11 + 32))(a7, v15, a5);
  }

  return result;
}

uint64_t protocol witness for _ArrayBufferProtocol.init(_buffer:shiftedToStartIndex:) in conformance _SliceBuffer<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = _SliceBuffer.init(_buffer:shiftedToStartIndex:)(a1, a2);
  *a3 = result;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;
  return result;
}

uint64_t protocol witness for _ArrayBufferProtocol.withUnsafeBufferPointer<A>(_:) in conformance _SliceBuffer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = a3;
  v9 = a1;
  v10 = a2;
  return _ss12_SliceBufferV010withUnsafeB7Pointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq5(thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<A>) -> (@out A1, @error @owned Error)partial apply, &v6, *v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), v7);
}

uint64_t _ss12_SliceBufferVyxGs06_ArrayB8ProtocolssADP010withUnsafeB7Pointeryqd__qd__SRy7ElementQzGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a4 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _ss12_SliceBufferV010withUnsafeB7Pointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v11, v15, *v6, v6[1], v6[2], v6[3], *(v14 + 16), v17, a4, v16, v13);
  if (v7)
  {
    return (*(v10 + 32))(a6, v13, a4);
  }

  return result;
}

uint64_t protocol witness for _ArrayBufferProtocol.withUnsafeMutableBufferPointer<A>(_:) in conformance _SliceBuffer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = *(a4 + 16);
  v5[3] = a3;
  v5[4] = a1;
  v5[5] = a2;
  return _ss12_SliceBufferV017withUnsafeMutableB7Pointeryqd__qd__SryxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMglrzo_Tpq5(partial apply for thunk for @callee_guaranteed (@unowned UnsafeMutableBufferPointer<A>) -> (@out A1, @error @owned Error), v5, a4);
}

uint64_t _ss12_SliceBufferVyxGs06_ArrayB8ProtocolssADP017withUnsafeMutableB7Pointeryqd__qd__Sry7ElementQzGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a4 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _ss12_SliceBufferV017withUnsafeMutableB7Pointeryqd__qd__SryxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v10, v13, v16, v14, a4, v15, v12);
  if (v6)
  {
    return (*(v9 + 32))(a6, v12, a4);
  }

  return result;
}

void (*protocol witness for _ArrayBufferProtocol.count.modify in conformance _SliceBuffer<A>(void (**a1)(__objc2_class ****a1, char a2), uint64_t a2))(__objc2_class ****a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    result = swift_coroFrameAlloc(0x28, 0x24D6uLL);
  }

  else
  {
    result = malloc(0x28uLL);
  }

  *a1 = result;
  *(result + 1) = v2;
  *(result + 2) = a2;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = __OFSUB__(v7 >> 1, v6);
  v9 = (v7 >> 1) - v6;
  *(result + 3) = v7;
  *(result + 4) = v9;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *result = v9;
    return protocol witness for _ArrayBufferProtocol.count.modify in conformance _SliceBuffer<A>;
  }

  return result;
}

void protocol witness for _ArrayBufferProtocol.count.modify in conformance _SliceBuffer<A>(__objc2_class ****a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  if ((a2 & 1) == 0)
  {
    v4 = v2[4];
    v5 = (v3 - v4);
    if (__OFSUB__(v3, v4))
    {
      __break(1u);
    }

    else
    {
      if (!v5)
      {
        goto LABEL_10;
      }

      v6 = *v2[1];
      v7 = type metadata accessor for __ContiguousArrayStorageBase();
      v8 = swift_unknownObjectRetain(v6);
      v9 = swift_dynamicCastClass(v8, v7);
      if (!v9)
      {
        swift_unknownObjectRelease(v6);
        v9 = &_swiftEmptyArrayStorage;
      }

      v10 = v9[2];
      v11 = __OFADD__(v10, v5);
      v12 = &v5[v10];
      if (!v11)
      {
        v13 = v2[3];
        v9[2] = v12;
        v9;
        if (!__OFADD__(v5, v13 >> 1))
        {
          _SliceBuffer.endIndex.setter(&v5[v13 >> 1]);
          goto LABEL_10;
        }

LABEL_15:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  _SliceBuffer.count.setter(v3);
LABEL_10:

  free(v2);
}

void (*protocol witness for MutableCollection.subscript.modify in conformance _SliceBuffer<A>(void *a1, uint64_t *a2, uint64_t a3))(void **a1)
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x30, 0x5311uLL);
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *(a3 + 16);
  *v7 = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v7[1] = v10;
  v12 = *(v10 + 64);
  if (swift_coroFrameAlloc)
  {
    v13 = swift_coroFrameAlloc(v12, 0x5311uLL);
  }

  else
  {
    v13 = malloc(v12);
  }

  v14 = *a2;
  v8[2] = v13;
  v8[3] = v14;
  v8[4] = *(v3 + 8);
  v15 = *(v11 + 16);
  v8[5] = *(v11 + 72);
  v15();
  return protocol witness for MutableCollection.subscript.modify in conformance _SliceBuffer<A>;
}

void protocol witness for MutableCollection.subscript.modify in conformance _SliceBuffer<A>(void **a1)
{
  v1 = *a1;
  v2 = (*a1)[2];
  (*((*a1)[1] + 40))((*a1)[4] + (*a1)[3] * (*a1)[5], v2, **a1);
  free(v2);

  free(v1);
}

void (*protocol witness for MutableCollection.subscript.modify in conformance _SliceBuffer<A>(void *a1, uint64_t *a2))(id *a1, char a2)
{
  v4 = specialized _SliceBuffer.subscript.getter(*a2, a2[1], *v2);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  swift_unknownObjectRetain(v4);
  return _SliceBuffer.subscript.modify;
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance _SliceBuffer<A>@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _SliceBuffer<A>, a2, a3);

  return RandomAccessCollection<>.index(before:)(a1, a2, WitnessTable, &protocol witness table for Int, a4);
}

uint64_t _ss12_SliceBufferVyxGSlsSl5index_8offsetBy5IndexQzAG_SitFTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _SliceBuffer<A>, a3, a3);

  return RandomAccessCollection<>.index(_:offsetBy:)(a1, a2, a3, WitnessTable, &protocol witness table for Int, a4);
}

uint64_t _ss12_SliceBufferVyxGSlsSl5index_8offsetBy07limitedE05IndexQzSgAH_SiAHtFTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _SliceBuffer<A>, a4, a3);

  return RandomAccessCollection.index(_:offsetBy:limitedBy:)(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t _ss12_SliceBufferVyxGSlsSl8distance4from2toSi5IndexQz_AHtFTW_0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _SliceBuffer<A>, a3, a3);

  return RandomAccessCollection<>.distance(from:to:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t (*protocol witness for Collection.subscript.read in conformance _SliceBuffer<A>(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x28, 0x62CDuLL);
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = _SliceBuffer.subscript.read(v7, *a2, *v3, v3[1], v3[2], v3[3], *(a3 + 16));
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t (*_SliceBuffer.subscript.read(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v8 = *(a7 - 8);
  v9 = v8;
  *a1 = a7;
  a1[1] = v8;
  v10 = *(v8 + 64);
  if (swift_coroFrameAlloc)
  {
    v11 = swift_coroFrameAlloc(v10, 0xEA52uLL);
  }

  else
  {
    v11 = malloc(v10);
  }

  a1[2] = v11;
  (*(v9 + 16))();
  return _ArrayBuffer.subscript.read;
}

id protocol witness for Collection.subscript.getter in conformance _SliceBuffer<A>@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = specialized _SliceBuffer.subscript.getter(*a1, a1[1], *v2);
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;

  return swift_unknownObjectRetain(v4);
}

uint64_t protocol witness for Collection.indices.getter in conformance _SliceBuffer<A>@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _SliceBuffer<A>, a1, a2);

  return RandomAccessCollection<>.indices.getter(a1, WitnessTable, &protocol witness table for Int, a3);
}

uint64_t protocol witness for Collection.index(after:) in conformance _SliceBuffer<A>@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _SliceBuffer<A>, a2, a3);

  return RandomAccessCollection<>.index(after:)(a1, a2, WitnessTable, &protocol witness table for Int, a4);
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance _SliceBuffer<A>(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, unint64_t, unint64_t, _UNKNOWN **))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _SliceBuffer<A>, a2, a3);
  return a4(&v8, a2, WitnessTable, &protocol witness table for Int);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance _SliceBuffer<A>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _SliceBuffer<A>, a1, a3);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

__objc2_class **_SliceBuffer._copyToContiguousArray()(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  if ((a4 & 1) == 0)
  {
    v10 = (a4 >> 1) - a3;
    if (!__OFSUB__(a4 >> 1, a3))
    {
      if (v10 > 0)
      {
LABEL_4:
        v11 = getContiguousArrayStorageType<A>(for:)(a5, a5);
        v12 = *(a5 - 1);
        v13 = *(v12 + 72);
        v14 = *(v12 + 80);
        v15 = swift_allocObject(v11, (((v14 + *(v11 + 48)) & ~v14) + v13 * v10), v14 | *(v11 + 52));
        v16 = _swift_stdlib_malloc_size(v15);
        if (v13)
        {
          v17 = v16 - ((v14 + 32) & ~v14);
          if (v17 != 0x8000000000000000 || v13 != -1)
          {
            v19 = v17 / v13;
            isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a5, a5);
            v15[2] = v10;
            v15[3] = (isClassOrObjCExistentialType | (2 * v19));
            swift_unknownObjectRelease(a1);
LABEL_17:
            UnsafeMutablePointer.initialize(from:count:)((a2 + *(v12 + 72) * a3), v10, v15 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), a5);
            return v15;
          }
        }

LABEL_21:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_16:
      swift_unknownObjectRelease(a1);
      v12 = *(a5 - 1);
      v15 = &_swiftEmptyArrayStorage;
      goto LABEL_17;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v21 = type metadata accessor for __ContiguousArrayStorageBase();
  v22 = swift_unknownObjectRetain(a1);
  v15 = swift_dynamicCastClass(v22, v21);
  if (!v15)
  {
    swift_unknownObjectRelease(a1);
    v15 = &_swiftEmptyArrayStorage;
  }

  v23 = __OFSUB__(a4 >> 1, a3);
  v10 = (a4 >> 1) - a3;
  if (v23)
  {
    goto LABEL_20;
  }

  if (v10 != v15[2])
  {
    v15;
    if (v10 > 0)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  swift_unknownObjectRelease(a1);
  return v15;
}

__n128 protocol witness for Sequence._copyContents(initializing:) in conformance _SliceBuffer<A>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  _SliceBuffer._copyContents(initializing:)(a2, a3, *v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(a4 + 16), v8);
  v6 = v9;
  result = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = result;
  *(a1 + 32) = v6;
  return result;
}

Swift::Int __swiftcall StaticBigInt.signum()()
{
  if (v0)
  {
    return -1;
  }

  else
  {
    return (v0 & 0xFFFFFFFFFFFFFF00) != 256;
  }
}

uint64_t StaticBigInt.subscript.getter(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a1 >> 57 || (a1 << 6) >= (a3 >> 8))
  {
    return -(a3 & 1);
  }

  else
  {
    return *(a2 + 8 * a1);
  }
}

uint64_t StaticBigInt.debugDescription.getter(uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = 7876653;
  }

  else
  {
    v2 = 7876651;
  }

  v3 = ((a2 >> 8) + 2) >> 2;
  v4 = v3 + 3;
  v5 = a2 >> 9;
  if (a2 >> 9 >= 0x19)
  {
    v10 = specialized static String._fromLargeUTF8Repairing(uninitializedCapacity:initializingWith:)(v3 + 3, v3 + 3, a2 & 1, a1, a2);
    v14 = v20;
  }

  else
  {
    v22 = xmmword_18071DD30;
    closure #1 in StaticBigInt.debugDescription.getter(&v22, v4, v4, a2 & 1, a1, a2);
    v6 = 8;
    if (v4 >= 8)
    {
      v7 = 8;
    }

    else
    {
      v7 = v4;
    }

    if (v4 > 8)
    {
      v6 = v4;
    }

    v8 = 0xFFFFFFFFFFFFFFFFLL >> ((56 * v7) & 0x38);
    v9 = 0xFFFFFFFFFFFFFFFFLL >> ((56 * v6) & 0x38);
    if (v5 <= 0xA)
    {
      v9 = 0;
    }

    v10 = v22 & v8;
    v11 = *(&v22 + 1) & v9;
    v12 = ((v11 | v22 & v8) & 0x8080808080808080) == 0;
    v13 = 0xA000000000000000;
    if (v12)
    {
      v13 = 0xE000000000000000;
    }

    v14 = v13 | (v4 << 56) | v11;
    if ((v14 & 0x4000000000000000) == 0)
    {
      *&v22 = v10;
      *(&v22 + 1) = v11 & 0xFFFFFFFFFFFFFFLL;
      closure #2 in String.init(_uninitializedCapacity:initializingUTF8With:)(&v22, HIBYTE(v14) & 0xF, v21);
      v10 = v21[0];
      v14 = v21[1];
    }
  }

  *&v22 = v10;
  *(&v22 + 1) = v14;
  v14;
  v15 = specialized Collection.firstIndex(where:)(v10, v14);
  v17 = v16;
  v14;
  if (v17)
  {
    0xE300000000000000;
    v14;
    return 813183019;
  }

  else
  {
    v19._rawBits = v15;
    specialized String.replaceSubrange<A>(_:with:)(0xFuLL, v19, v2, 0xE300000000000000);
    0xE300000000000000;
    return v22;
  }
}

uint64_t closure #1 in StaticBigInt.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, BOOL a4, uint64_t a5, unint64_t a6)
{
  v8 = specialized Collection.prefix(_:)(a3, a1, a2);
  v10 = v9;
  specialized Slice.initialize<A>(repeating:)(48, v8, v9, v11);
  v29 = a6;
  if (a6 >= 0x100)
  {
    v13 = 0;
    v14 = a6 >> 8;
    v15 = a4;
    do
    {
      v17 = v13 + 32;
      if (__OFADD__(v13, 32))
      {
        if ((v13 & 0xFFFFFFFFFFFFFFC0) < v14)
        {
          v18 = 0x1FFFFFFFFFFFFFFLL;
          v17 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_11:
          v19 = *(a5 + 8 * v18) >> v13;
          if (a4)
          {
            goto LABEL_12;
          }

          goto LABEL_18;
        }

        v17 = 0x7FFFFFFFFFFFFFFFLL;
        if (v29)
        {
LABEL_30:
          v19 = 0xFFFFFFFFFFFFFFFFLL >> v13;
          if (a4)
          {
            goto LABEL_12;
          }

          goto LABEL_18;
        }
      }

      else
      {
        v18 = v13 >> 6;
        if (v13 >> 6 < 0)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        if ((v13 & 0xFFFFFFFFFFFFFFC0) < v14)
        {
          goto LABEL_11;
        }

        if (v29)
        {
          goto LABEL_30;
        }
      }

      LODWORD(v19) = 0;
      if (a4)
      {
LABEL_12:
        v20 = ~v19 == -1;
        if (v15)
        {
          LODWORD(v19) = -v19;
        }

        else
        {
          LODWORD(v19) = ~v19;
        }

        v15 = v15 && v20;
      }

LABEL_18:
      v21 = _uint64ToString(_:radix:uppercase:)(v19, 16, 1);
      if ((v21._object & 0x1000000000000000) != 0)
      {
        v22 = String.UTF8View._foreignCount()();
      }

      else if ((v21._object & 0x2000000000000000) != 0)
      {
        v22 = (v21._object >> 56) & 0xF;
      }

      else
      {
        v22 = v21._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      v23 = specialized BidirectionalCollection.suffix(_:)(v22, v8, v10);
      if (v25)
      {
        v26 = (v25 + v23);
      }

      else
      {
        v26 = 0;
      }

      if (v24 - v23 < 0 || v24 != v23 && !v26)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      specialized UnsafeMutableBufferPointer.update<A>(fromContentsOf:)(v21._countAndFlagsBits, v21._object, v26, v24 - v23);
      v21._object;
      v8 = specialized BidirectionalCollection.dropLast(_:)(8, v8, v10);
      v10 = v16;
      v13 = v17;
    }

    while (v17 < v14);
  }

  return a3;
}

uint64_t specialized Slice.initialize<A>(repeating:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = (a4 + a2);
  }

  else
  {
    v5 = 0;
  }

  v6 = a3 - a2;
  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (!v6)
  {
    if (!v5)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (!v5)
  {
LABEL_12:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_9:

  return specialized UnsafeMutablePointer.initialize(repeating:count:)(result, v6, v5);
}

Swift::tuple_partialValue_UInt32_overflow_Bool __swiftcall UInt32.addingReportingOverflow(_:)(Swift::UInt32 a1)
{
  v2 = v1 + a1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

uint64_t StaticBigInt.customMirror.getter@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[0] = a1;
  v19[1] = a2;
  v17[0] = 0;
  v17[1] = 0;
  v6 = static Mirror._superclassIterator<A>(_:_:)(v19, v17, &type metadata for StaticBigInt);
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss14_CollectionBoxCys15LazyMapSequenceVys05EmptyA0VyytGSSSg5label_yp5valuetGGMd, _ss14_CollectionBoxCys15LazyMapSequenceVys05EmptyA0VyytGSSSg5label_yp5valuetGGMR);
  v10 = swift_allocObject(v9, 0x40, 7uLL);
  v10[6] = specialized closure #1 in Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:);
  v10[7] = 0;
  v11 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v12 = swift_allocObject(v11, 0x18, 7uLL);
  v12[2] = 0;
  v13 = swift_allocObject(v11, 0x18, 7uLL);
  v13[2] = 0;
  v10[2] = v12;
  v10[3] = &protocol witness table for _IndexBox<A>;
  v10[4] = v13;
  v10[5] = &protocol witness table for _IndexBox<A>;
  v18[0] = a1;
  v18[1] = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v17, v18, &type metadata for StaticBigInt, v14, 6uLL);
  v16 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  *a3 = &type metadata for StaticBigInt;
  *(a3 + 8) = v10;
  *(a3 + 16) = 9;
  *(a3 + 24) = v6;
  *(a3 + 32) = v8;
  *(a3 + 40) = v16;
  return result;
}

uint64_t UInt128.init<A>(exactly:)(char *a1, const char *a2, void *a3)
{
  v49 = *(a3[3] + 16);
  swift_getAssociatedTypeWitness(0, v49, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v7 = v6;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v46 - v9;
  v50 = *(a2 - 1);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v46 - v15;
  v51 = 64;
  v17 = a3[30];
  v20 = lazy protocol witness table accessor for type Int and conformance Int(v14, v18, v19);
  v48 = a1;
  v17(a1, &v51, &type metadata for Int, v20, a2, a3);
  v47 = a3[8];
  if (((v47)(a2, a3) & 1) == 0 || (v21 = v49, v22 = swift_getAssociatedConformanceWitness(v49, a2, v7, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral), (*(v22 + 8))(&qword_18071E0A8, 256, v7, v22), (v21[3])(v10, a2, v21), v23 = (*(*(a3[4] + 8) + 16))(v16, v13, a2), v24 = *(v50 + 8), v24(v13, a2), (v23 & 1) == 0))
  {
    v46 = v10;
    v25 = v49;
    v26 = a3[16];
    if (v26(a2, a3) < 64)
    {
      goto LABEL_14;
    }

    v27 = (v47)(a2, a3);
    v47 = v16;
    v28 = v26(a2, a3);
    if (v27)
    {
      v31 = v50;
      if (v28 > 64)
      {
        v51 = -1;
        v32 = a3[12];
        v33 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v28, v29, v30);
        v32(&v51, &type metadata for UInt64, v33, a2, a3);
        v16 = v47;
        v34 = (*(*(a3[4] + 8) + 16))(v13, v47, a2);
        v35 = v31;
        goto LABEL_10;
      }

      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v25, a2, v7, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v40 = v46;
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v7, AssociatedConformanceWitness);
      (v25[3])(v40, a2, v25);
      v16 = v47;
      v41 = (*(*(a3[4] + 8) + 40))(v47, v13, a2);
      (*(v31 + 8))(v13, a2);
      if ((v41 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v16 = v47;
      if (v28 >= 65)
      {
        v51 = -1;
        v36 = a3[12];
        v37 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v28, v29, v30);
        v36(&v51, &type metadata for UInt64, v37, a2, a3);
        v34 = (*(*(a3[4] + 8) + 16))(v13, v16, a2);
        v35 = v50;
LABEL_10:
        v24 = *(v35 + 8);
        v24(v13, a2);
        if (v34)
        {
          goto LABEL_11;
        }

LABEL_14:
        v42 = a3[15];
        v42(a2, a3);
        v43 = *(v50 + 8);
        v43(v16, a2);
        v44 = v48;
        v38 = (v42)(a2, a3);
        v43(v44, a2);
        return v38;
      }
    }

    (a3[15])(a2, a3);
    goto LABEL_14;
  }

  v47 = v16;
LABEL_11:
  v24(v47, a2);
  v24(v48, a2);
  return 0;
}

uint64_t UInt128.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return Int128.init<A>(_:)(a1, a2, a3, specialized UInt128.init<A>(_:));
}

{
  return Int128.init<A>(_:)(a1, a2, a3, specialized UInt128.init<A>(_:));
}

uint64_t UInt128.init<A>(clamping:)(uint64_t a1, const char *a2, void *a3)
{
  v6 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, a2);
  v9 = UInt128.init<A>(exactly:)(v8, a2, a3);
  if (v10)
  {
    (*(*(a3[3] + 8) + 16))(a2);
    v11 = (*(*(a3[4] + 8) + 16))(a1, v8, a2);
    v12 = *(v6 + 8);
    v12(a1, a2);
    v12(v8, a2);
    return (v11 & 1) - 1;
  }

  else
  {
    v14 = v9;
    (*(v6 + 8))(a1, a2);
    return v14;
  }
}

uint64_t *protocol witness for _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:) in conformance UInt128@<X0>(uint64_t *result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = 0;
  if (a2 >> 9 > 0x40 || (a2 & 1) != 0 || (v3 = *result, a2 >> 9 <= 0x20))
  {
    *a3 = v3;
    a3[1] = 0;
  }

  else
  {
    v4 = result[1];
    *a3 = v3;
    a3[1] = v4;
  }

  return result;
}

uint64_t UInt128.init<A>(exactly:)(char *a1, const char *a2, uint64_t a3)
{
  v56 = a1;
  v5 = *(a3 + 8);
  swift_getAssociatedTypeWitness(0, v5, a2, &protocol requirements base descriptor for ExpressibleByFloatLiteral, associated type descriptor for ExpressibleByFloatLiteral.FloatLiteralType);
  v7 = v6;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v42 - v9;
  v11 = *(a2 - 1);
  v12 = MEMORY[0x1EEE9AC00](v8);
  v55 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v42 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v42 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = v42 - v20;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, a2, v7, &protocol requirements base descriptor for ExpressibleByFloatLiteral, associated conformance descriptor for ExpressibleByFloatLiteral.ExpressibleByFloatLiteral.FloatLiteralType: _ExpressibleByBuiltinFloatLiteral);
  v23 = *(AssociatedConformanceWitness + 8);
  v52 = v7;
  v47 = AssociatedConformanceWitness + 8;
  v48 = AssociatedConformanceWitness;
  v46 = v23;
  (v23)(v7, 5.42101086e-20);
  v24 = *(v5 + 24);
  v51 = v10;
  v53 = v5;
  v44 = v24;
  v45 = v5 + 24;
  v24(v10, a2, v5);
  v25 = *(a3 + 16);
  v26 = *(*(v25 + 16) + 8);
  v27 = *(v26 + 64);
  v49 = v26;
  v42[1] = v26 + 64;
  v43 = v27;
  (v27)(v56, v16, a2);
  v28 = *(v11 + 8);
  v50 = v16;
  v28(v16, a2);
  LOBYTE(v57) = 4;
  v29 = *(v25 + 304);
  v30 = v25;
  v31 = a3;
  v29(&v57, a2, v30);
  v28(v19, a2);
  v32 = (*(v11 + 16))(v19, v21, a2);
  v35 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v32, v33, v34);
  v54 = v31;
  FixedWidthInteger.init<A>(exactly:)(v19, &type metadata for UInt64, a2, v35, v31, &v57);
  if (v58 == 1)
  {
    v28(v56, a2);
    v28(v21, a2);
    return 0;
  }

  v42[0] = v57;
  if (v57)
  {
    v36 = v51;
    v46(1.84467441e19);
    v37 = v50;
    v44(v36, a2, v53);
    v38 = v49;
    v43(v37, v21, a2, v49);
    v28(v37, a2);
    v28(v21, a2);
    v40 = v55;
    v39 = v56;
    (*(*(v38 + 8) + 40))(v56, v19, a2);
    v28(v39, a2);
    v28(v19, a2);
  }

  else
  {
    v28(v21, a2);
    v40 = v55;
    (*(v11 + 32))(v55, v56, a2);
  }

  FixedWidthInteger.init<A>(exactly:)(v40, &type metadata for UInt64, a2, v35, v54, &v57);
  if (v58 == 1)
  {
    return 0;
  }

  return v57;
}

Swift::Int Int128.hashValue.getter(Swift::UInt a1, Swift::UInt a2)
{
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Int128()
{
  v2 = *v0;
  v1 = v0[1];
  specialized Hasher.init(_seed:)(0, v4);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Int128(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  specialized Hasher.init(_seed:)(a1, v5);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t UInt128.dividedReportingOverflow(by:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 | a2)
  {
    return __udivti3();
  }

  else
  {
    return a3;
  }
}

uint64_t UInt128.remainderReportingOverflow(dividingBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 | a2)
  {
    return __umodti3();
  }

  else
  {
    return a3;
  }
}

uint64_t static UInt128.+ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __CFADD__(a1, a3);
  result = a1 + a3;
  if (__CFADD__(v4, a2) | __CFADD__(a4, v4 + a2))
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    __break(1u);
  }

  return result;
}

unint64_t static UInt128.- infix(_:_:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a1 >= a3;
  result = a1 - a3;
  if (!__CFSUB__(a2, a4, v4))
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance UInt128@<X0>(void *result@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = *result + *a2;
  if (__CFADD__(__CFADD__(*result, *a2), result[1]) | __CFADD__(a2[1], *(&v3 + 1)))
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    __break(1u);
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

void *protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance UInt128(void *result, unint64_t *a2)
{
  v2 = a2[1];
  v3 = *result + *a2;
  v4 = __CFADD__(__CFADD__(*result, *a2), result[1]) | __CFADD__(v2, *(&v3 + 1));
  v5 = v2 + *(&v3 + 1);
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    __break(1u);
  }

  else
  {
    *result = v3;
    result[1] = v5;
  }

  return result;
}

_OWORD *protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance UInt128@<X0>(_OWORD *result@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X8>)
{
  if (*result < *a2)
  {
    __break(1u);
  }

  else
  {
    *a3 = *result - *a2;
  }

  return result;
}

_OWORD *protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance UInt128(_OWORD *result, _OWORD *a2)
{
  if (*result < *a2)
  {
    __break(1u);
  }

  else
  {
    *result -= *a2;
  }

  return result;
}

unint64_t static UInt128.* infix(_:_:)(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a2)
  {
    v4 = a4 == 0;
  }

  else
  {
    v4 = 1;
  }

  v7 = !v4 || (a2 * a3) >> 64 != 0 || (a4 * result) >> 64 != 0;
  if (__CFADD__((result * a3) >> 64, a4 * result + a2 * a3))
  {
    v7 = 1;
  }

  if (v7)
  {
    __break(1u);
  }

  else
  {
    result *= a3;
  }

  return result;
}

unint64_t *static UInt128.*= infix(_:_:)(unint64_t *result, unint64_t a2, unint64_t a3)
{
  v3 = *result;
  v4 = result[1];
  if (v4)
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v8 = !v5 || (v4 * a2) >> 64 != 0 || (a3 * *result) >> 64 != 0;
  v9 = a3 * v3 + v4 * a2;
  v10 = (v3 * a2) >> 64;
  v11 = __CFADD__(v10, v9);
  v12 = v10 + v9;
  if (v11)
  {
    v8 = 1;
  }

  if (v8)
  {
    __break(1u);
  }

  else
  {
    *result = v3 * a2;
    result[1] = v12;
  }

  return result;
}

uint64_t static UInt128./ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(a3 | a4))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return __udivti3();
}

uint64_t static UInt128./= infix(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!(a2 | a3))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = __udivti3();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t static UInt128.% infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(a3 | a4))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return __umodti3();
}

uint64_t static UInt128.%= infix(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!(a2 | a3))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = __umodti3();
  *a1 = result;
  a1[1] = v5;
  return result;
}

unint64_t *protocol witness for static Numeric.* infix(_:_:) in conformance UInt128@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *result;
  v4 = result[1];
  v5 = *a2;
  v6 = a2[1];
  if (v4)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  v10 = !v7 || (v4 * *a2) >> 64 != 0 || (v6 * *result) >> 64 != 0;
  v11 = v6 * v3 + v4 * v5;
  v12 = (v3 * v5) >> 64;
  v13 = __CFADD__(v12, v11);
  v14 = v12 + v11;
  if (v13)
  {
    v15 = 1;
  }

  else
  {
    v15 = v10;
  }

  if (v15)
  {
    __break(1u);
  }

  else
  {
    *a3 = v3 * v5;
    a3[1] = v14;
  }

  return result;
}

unint64_t *protocol witness for static Numeric.*= infix(_:_:) in conformance UInt128(unint64_t *result, unint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *result;
  v5 = result[1];
  if (v5)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = 1;
  }

  v9 = !v6 || (v5 * *a2) >> 64 != 0 || (v3 * *result) >> 64 != 0;
  v10 = v3 * v4 + v5 * v2;
  v11 = (v4 * v2) >> 64;
  v12 = __CFADD__(v11, v10);
  v13 = v11 + v10;
  if (v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = v9;
  }

  if (v14)
  {
    __break(1u);
  }

  else
  {
    *result = v4 * v2;
    result[1] = v13;
  }

  return result;
}

uint64_t *static UInt128.&>>= infix(_:_:)(uint64_t *result, char a2)
{
  v2 = result[1];
  v3 = ((2 * v2) << ~a2) | (*result >> a2);
  v4 = v2 >> a2;
  if ((a2 & 0x40) != 0)
  {
    v3 = v4;
    v4 = 0;
  }

  *result = v3;
  result[1] = v4;
  return result;
}

uint64_t protocol witness for Numeric.init<A>(exactly:) in conformance Int128@<X0>(uint64_t (*a1)(void)@<X5>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

uint64_t protocol witness for BinaryInteger.init<A>(_:) in conformance UInt128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  return protocol witness for BinaryInteger.init<A>(_:) in conformance Int128(a1, a2, specialized UInt128.init<A>(_:), a3);
}

{
  return protocol witness for BinaryInteger.init<A>(_:) in conformance Int128(a1, a2, specialized UInt128.init<A>(_:), a3);
}

uint64_t protocol witness for BinaryInteger.init<A>(clamping:) in conformance UInt128@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  result = UInt128.init<A>(clamping:)(a1, a2, a3);
  *a4 = result;
  a4[1] = v6;
  return result;
}

uint64_t protocol witness for static BinaryInteger./ infix(_:_:) in conformance UInt128@<X0>(_OWORD *a1@<X1>, uint64_t *a2@<X8>)
{
  if (*a1 == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = __udivti3();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t protocol witness for static BinaryInteger./= infix(_:_:) in conformance UInt128(uint64_t *a1, _OWORD *a2)
{
  if (*a2 == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = __udivti3();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for static BinaryInteger.% infix(_:_:) in conformance UInt128@<X0>(_OWORD *a1@<X1>, uint64_t *a2@<X8>)
{
  if (*a1 == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = __umodti3();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t protocol witness for static BinaryInteger.%= infix(_:_:) in conformance UInt128(uint64_t *a1, _OWORD *a2)
{
  if (*a2 == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = __umodti3();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>> infix<A>(_:_:) in conformance UInt128@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v109 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v109, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v108 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v107 = v105 - v12;
  v13 = *(a3 - 1);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v113 = v105 - v17;
  v18 = a1[1];
  v110 = *a1;
  v111 = v18;
  v19 = (a4 + 64);
  v114 = *(a4 + 64);
  if (v114(a3, a4))
  {
    v20 = *(a4 + 128);
    v21 = v20(a3, a4);
    if (v21 >= 64)
    {
      v115 = -128;
      v112 = a2;
      v24 = v20;
      v25 = v16;
      v26 = v13;
      v27 = a5;
      v28 = *(a4 + 96);
      v29 = lazy protocol witness table accessor for type Int and conformance Int(v21, v22, v23);
      v106 = (a4 + 64);
      v30 = v113;
      v28(&v115, &type metadata for Int, v29, a3, a4);
      a5 = v27;
      v13 = v26;
      v16 = v25;
      v20 = v24;
      a2 = v112;
      v31 = (*(*(*(a4 + 32) + 8) + 16))(v112, v30, a3);
      v32 = v30;
      v19 = v106;
      result = (*(v13 + 8))(v32, a3);
      if (v31)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v34 = v114(a3, a4);
    v20 = *(a4 + 128);
    v35 = v20(a3, a4);
    if (v34)
    {
      v112 = a2;
      v106 = v20;
      if (v35 <= 64)
      {
        v72 = v108;
        v71 = v109;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v109, a3, v108, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v74 = v107;
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v72, AssociatedConformanceWitness);
        v75 = v113;
        (v71[3])(v74, a3, v71);
        a2 = v112;
        LOBYTE(v71) = (*(*(*(a4 + 32) + 8) + 16))(v112, v75, a3);
        result = (*(v13 + 8))(v75, a3);
        if (v71)
        {
          goto LABEL_25;
        }

        result = (*(a4 + 120))(a3, a4);
        v20 = v106;
        if (result < -128)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v115 = -128;
        v38 = v16;
        v39 = v13;
        v40 = a5;
        v41 = *(a4 + 96);
        v42 = lazy protocol witness table accessor for type Int and conformance Int(v35, v36, v37);
        v43 = v113;
        v41(&v115, &type metadata for Int, v42, a3, a4);
        a5 = v40;
        v13 = v39;
        v16 = v38;
        v44 = v112;
        v45 = (*(*(*(a4 + 32) + 8) + 16))(v112, v43, a3);
        v46 = v43;
        v19 = (a4 + 64);
        a2 = v44;
        result = (*(v13 + 8))(v46, a3);
        v20 = v106;
        if (v45)
        {
          goto LABEL_25;
        }
      }

      goto LABEL_11;
    }

    if (v35 >= 64)
    {
      goto LABEL_11;
    }
  }

  result = (*(a4 + 120))(a3, a4);
  if (result < -128)
  {
    goto LABEL_25;
  }

LABEL_11:
  v47 = v114(a3, a4);
  v105[1] = a4 + 128;
  v48 = v20(a3, a4);
  if (v47)
  {
    if (v48 > 64)
    {
      goto LABEL_13;
    }
  }

  else if (v48 >= 64)
  {
LABEL_13:
    v115 = 128;
    v112 = a2;
    v51 = v20;
    v52 = v16;
    v53 = v13;
    v54 = a5;
    v55 = *(a4 + 96);
    v56 = lazy protocol witness table accessor for type Int and conformance Int(v48, v49, v50);
    v106 = v19;
    v57 = v113;
    v55(&v115, &type metadata for Int, v56, a3, a4);
    a5 = v54;
    v13 = v53;
    v16 = v52;
    v20 = v51;
    a2 = v112;
    v58 = (*(*(*(a4 + 32) + 8) + 16))(v57, v112, a3);
    v59 = v57;
    v19 = v106;
    result = (*(v13 + 8))(v59, a3);
    if (v58)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  result = (*(a4 + 120))(a3, a4);
  if (result > 128)
  {
    goto LABEL_25;
  }

LABEL_17:
  (*(v13 + 16))(v16, a2, a3);
  if ((v114(a3, a4) & 1) == 0 || v20(a3, a4) < 65)
  {
    goto LABEL_34;
  }

  if ((v114(a3, a4) & 1) == 0)
  {
    v78 = v114(a3, a4);
    v79 = v20(a3, a4);
    if ((v78 & 1) == 0)
    {
      if (v79 >= 64)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v106 = v20;
    if (v79 <= 64)
    {
      v90 = v108;
      v89 = v109;
      v91 = swift_getAssociatedConformanceWitness(v109, a3, v108, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v92 = v107;
      (*(v91 + 8))(&qword_18071E0A8, 256, v90, v91);
      v93 = v113;
      (v89[3])(v92, a3, v89);
      LOBYTE(v89) = (*(*(*(a4 + 32) + 8) + 16))(v16, v93, a3);
      (*(v13 + 8))(v93, a3);
      v20 = v106;
      if ((v89 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v115 = 0x8000000000000000;
      v82 = v16;
      v83 = v13;
      v84 = a5;
      v85 = *(a4 + 96);
      v86 = lazy protocol witness table accessor for type Int and conformance Int(v79, v80, v81);
      v87 = v113;
      v85(&v115, &type metadata for Int, v86, a3, a4);
      a5 = v84;
      v13 = v83;
      v16 = v82;
      v88 = (*(*(*(a4 + 32) + 8) + 16))(v82, v87, a3);
      (*(v13 + 8))(v87, a3);
      v20 = v106;
      if ((v88 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v60 = v20(a3, a4);
  if (v60 < 64)
  {
LABEL_33:
    (*(a4 + 120))(a3, a4);
    goto LABEL_34;
  }

  v115 = 0x8000000000000000;
  v63 = v20;
  v64 = v16;
  v65 = v13;
  v66 = a5;
  v67 = *(a4 + 96);
  v68 = lazy protocol witness table accessor for type Int and conformance Int(v60, v61, v62);
  v106 = v19;
  v69 = v113;
  v67(&v115, &type metadata for Int, v68, a3, a4);
  a5 = v66;
  v13 = v65;
  v16 = v64;
  v20 = v63;
  v70 = (*(*(*(a4 + 32) + 8) + 16))(v16, v69, a3);
  (*(v13 + 8))(v69, a3);
  if (v70)
  {
    goto LABEL_38;
  }

LABEL_34:
  if (v20(a3, a4) <= 64 && (v20(a3, a4) != 64 || (v114(a3, a4) & 1) != 0))
  {
    goto LABEL_44;
  }

  v94 = v114(a3, a4);
  v95 = v20(a3, a4);
  if (v94)
  {
    if (v95 > 64)
    {
      goto LABEL_37;
    }

LABEL_43:
    (*(a4 + 120))(a3, a4);
    goto LABEL_44;
  }

  if (v95 < 64)
  {
    goto LABEL_43;
  }

LABEL_37:
  v115 = 0x7FFFFFFFFFFFFFFFLL;
  v98 = v16;
  v99 = a5;
  v100 = *(a4 + 96);
  v101 = lazy protocol witness table accessor for type Int and conformance Int(v95, v96, v97);
  v102 = v113;
  v100(&v115, &type metadata for Int, v101, a3, a4);
  a5 = v99;
  v16 = v98;
  v103 = (*(*(*(a4 + 32) + 8) + 16))(v102, v98, a3);
  (*(v13 + 8))(v102, a3);
  if (v103)
  {
    goto LABEL_38;
  }

LABEL_44:
  v104 = (*(a4 + 120))(a3, a4);
  result = (*(v13 + 8))(v16, a3);
  if ((v104 & 0x8000000000000000) == 0)
  {
    if (v104 < 0x80)
    {
      v76 = ((2 * v111) << ~v104) | (v110 >> v104);
      v77 = v111 >> v104;
      if ((v104 & 0x40) != 0)
      {
        v76 = v111 >> v104;
        v77 = 0;
      }

      goto LABEL_48;
    }

LABEL_25:
    v76 = 0;
    v77 = 0;
    goto LABEL_48;
  }

  if (v104 <= 0xFFFFFFFFFFFFFF80)
  {
    goto LABEL_25;
  }

  if ((-v104 & 0x40) != 0)
  {
    v76 = 0;
  }

  else
  {
    v76 = v110 << -v104;
  }

  v77 = (v111 << -v104) | (v110 >> 1 >> (v104 - 1));
  if ((-v104 & 0x40) != 0)
  {
    v77 = v110 << -v104;
  }

LABEL_48:
  *a5 = v76;
  a5[1] = v77;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>>= infix<A>(_:_:) in conformance UInt128(uint64_t *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v108 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v108, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v107 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v106 = v104 - v10;
  v11 = *(a3 - 1);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v110 = v104 - v15;
  v16 = (a4 + 64);
  v111 = *(a4 + 64);
  if (v111(a3, a4))
  {
    v17 = *(a4 + 128);
    v18 = v17(a3, a4);
    if (v18 >= 64)
    {
      v112 = -128;
      v109 = a2;
      v21 = v17;
      v22 = v14;
      v23 = v11;
      v24 = a1;
      v25 = *(a4 + 96);
      v26 = lazy protocol witness table accessor for type Int and conformance Int(v18, v19, v20);
      v105 = (a4 + 64);
      v27 = v110;
      v25(&v112, &type metadata for Int, v26, a3, a4);
      a1 = v24;
      v11 = v23;
      v14 = v22;
      v17 = v21;
      a2 = v109;
      v28 = (*(*(*(a4 + 32) + 8) + 16))(v109, v27, a3);
      v29 = v27;
      v16 = v105;
      result = (*(v11 + 8))(v29, a3);
      if (v28)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v31 = v111(a3, a4);
    v17 = *(a4 + 128);
    v32 = v17(a3, a4);
    if (v31)
    {
      v109 = a2;
      v105 = v17;
      if (v32 <= 64)
      {
        v69 = v107;
        v68 = v108;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v108, a3, v107, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v71 = v106;
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v69, AssociatedConformanceWitness);
        v72 = v110;
        (v68[3])(v71, a3, v68);
        a2 = v109;
        LOBYTE(v68) = (*(*(*(a4 + 32) + 8) + 16))(v109, v72, a3);
        result = (*(v11 + 8))(v72, a3);
        if (v68)
        {
          goto LABEL_25;
        }

        result = (*(a4 + 120))(a3, a4);
        v17 = v105;
        if (result < -128)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v112 = -128;
        v35 = v14;
        v36 = v11;
        v37 = a1;
        v38 = *(a4 + 96);
        v39 = lazy protocol witness table accessor for type Int and conformance Int(v32, v33, v34);
        v40 = v110;
        v38(&v112, &type metadata for Int, v39, a3, a4);
        a1 = v37;
        v11 = v36;
        v14 = v35;
        v41 = v109;
        v42 = (*(*(*(a4 + 32) + 8) + 16))(v109, v40, a3);
        v43 = v40;
        v16 = (a4 + 64);
        a2 = v41;
        result = (*(v11 + 8))(v43, a3);
        v17 = v105;
        if (v42)
        {
          goto LABEL_25;
        }
      }

      goto LABEL_11;
    }

    if (v32 >= 64)
    {
      goto LABEL_11;
    }
  }

  result = (*(a4 + 120))(a3, a4);
  if (result < -128)
  {
    goto LABEL_25;
  }

LABEL_11:
  v44 = v111(a3, a4);
  v104[1] = a4 + 128;
  v45 = v17(a3, a4);
  if (v44)
  {
    if (v45 > 64)
    {
      goto LABEL_13;
    }
  }

  else if (v45 >= 64)
  {
LABEL_13:
    v112 = 128;
    v109 = a2;
    v48 = v17;
    v49 = v14;
    v50 = v11;
    v51 = a1;
    v52 = *(a4 + 96);
    v53 = lazy protocol witness table accessor for type Int and conformance Int(v45, v46, v47);
    v105 = v16;
    v54 = v110;
    v52(&v112, &type metadata for Int, v53, a3, a4);
    a1 = v51;
    v11 = v50;
    v14 = v49;
    v17 = v48;
    a2 = v109;
    v55 = (*(*(*(a4 + 32) + 8) + 16))(v54, v109, a3);
    v56 = v54;
    v16 = v105;
    result = (*(v11 + 8))(v56, a3);
    if (v55)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  result = (*(a4 + 120))(a3, a4);
  if (result > 128)
  {
    goto LABEL_25;
  }

LABEL_17:
  (*(v11 + 16))(v14, a2, a3);
  if ((v111(a3, a4) & 1) == 0 || v17(a3, a4) < 65)
  {
    goto LABEL_34;
  }

  if ((v111(a3, a4) & 1) == 0)
  {
    v75 = v111(a3, a4);
    v76 = v17(a3, a4);
    if ((v75 & 1) == 0)
    {
      if (v76 >= 64)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v105 = v17;
    if (v76 <= 64)
    {
      v87 = v107;
      v86 = v108;
      v88 = swift_getAssociatedConformanceWitness(v108, a3, v107, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v89 = v106;
      (*(v88 + 8))(&qword_18071E0A8, 256, v87, v88);
      v90 = v110;
      (v86[3])(v89, a3, v86);
      LOBYTE(v86) = (*(*(*(a4 + 32) + 8) + 16))(v14, v90, a3);
      (*(v11 + 8))(v90, a3);
      v17 = v105;
      if ((v86 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v112 = 0x8000000000000000;
      v79 = v14;
      v80 = v11;
      v81 = a1;
      v82 = *(a4 + 96);
      v83 = lazy protocol witness table accessor for type Int and conformance Int(v76, v77, v78);
      v84 = v110;
      v82(&v112, &type metadata for Int, v83, a3, a4);
      a1 = v81;
      v11 = v80;
      v14 = v79;
      v85 = (*(*(*(a4 + 32) + 8) + 16))(v79, v84, a3);
      (*(v11 + 8))(v84, a3);
      v17 = v105;
      if ((v85 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v57 = v17(a3, a4);
  if (v57 < 64)
  {
LABEL_33:
    (*(a4 + 120))(a3, a4);
    goto LABEL_34;
  }

  v112 = 0x8000000000000000;
  v60 = v17;
  v61 = v14;
  v62 = v11;
  v63 = a1;
  v64 = *(a4 + 96);
  v65 = lazy protocol witness table accessor for type Int and conformance Int(v57, v58, v59);
  v105 = v16;
  v66 = v110;
  v64(&v112, &type metadata for Int, v65, a3, a4);
  a1 = v63;
  v11 = v62;
  v14 = v61;
  v17 = v60;
  v67 = (*(*(*(a4 + 32) + 8) + 16))(v14, v66, a3);
  (*(v11 + 8))(v66, a3);
  if (v67)
  {
    goto LABEL_38;
  }

LABEL_34:
  if (v17(a3, a4) <= 64 && (v17(a3, a4) != 64 || (v111(a3, a4) & 1) != 0))
  {
    goto LABEL_44;
  }

  v91 = v111(a3, a4);
  v92 = v17(a3, a4);
  if (v91)
  {
    if (v92 > 64)
    {
      goto LABEL_37;
    }

LABEL_43:
    (*(a4 + 120))(a3, a4);
    goto LABEL_44;
  }

  if (v92 < 64)
  {
    goto LABEL_43;
  }

LABEL_37:
  v112 = 0x7FFFFFFFFFFFFFFFLL;
  v95 = v14;
  v96 = a1;
  v97 = *(a4 + 96);
  v98 = lazy protocol witness table accessor for type Int and conformance Int(v92, v93, v94);
  v99 = v110;
  v97(&v112, &type metadata for Int, v98, a3, a4);
  a1 = v96;
  v14 = v95;
  v100 = (*(*(*(a4 + 32) + 8) + 16))(v99, v95, a3);
  (*(v11 + 8))(v99, a3);
  if (v100)
  {
    goto LABEL_38;
  }

LABEL_44:
  v101 = (*(a4 + 120))(a3, a4);
  result = (*(v11 + 8))(v14, a3);
  v103 = *a1;
  v102 = a1[1];
  if ((v101 & 0x8000000000000000) == 0)
  {
    if (v101 < 0x80)
    {
      v73 = ((2 * v102) << ~v101) | (v103 >> v101);
      v74 = v102 >> v101;
      if ((v101 & 0x40) != 0)
      {
        v73 = v74;
        v74 = 0;
      }

      goto LABEL_48;
    }

LABEL_25:
    v73 = 0;
    v74 = 0;
    goto LABEL_48;
  }

  if (v101 < 0xFFFFFFFFFFFFFF81)
  {
    goto LABEL_25;
  }

  if ((-v101 & 0x40) != 0)
  {
    v73 = 0;
  }

  else
  {
    v73 = v103 << -v101;
  }

  v74 = (v102 << -v101) | (v103 >> 1 >> (v101 - 1));
  if ((-v101 & 0x40) != 0)
  {
    v74 = v103 << -v101;
  }

LABEL_48:
  *a1 = v73;
  a1[1] = v74;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<< infix<A>(_:_:) in conformance UInt128@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v109 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v109, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v108 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v107 = v105 - v12;
  v13 = *(a3 - 1);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v113 = v105 - v17;
  v18 = *a1;
  v110 = a1[1];
  v111 = v18;
  v19 = (a4 + 64);
  v114 = *(a4 + 64);
  if (v114(a3, a4))
  {
    v20 = *(a4 + 128);
    v21 = v20(a3, a4);
    if (v21 >= 64)
    {
      v115 = -128;
      v112 = a2;
      v24 = v20;
      v25 = v16;
      v26 = v13;
      v27 = a5;
      v28 = *(a4 + 96);
      v29 = lazy protocol witness table accessor for type Int and conformance Int(v21, v22, v23);
      v106 = (a4 + 64);
      v30 = v113;
      v28(&v115, &type metadata for Int, v29, a3, a4);
      a5 = v27;
      v13 = v26;
      v16 = v25;
      v20 = v24;
      a2 = v112;
      v31 = (*(*(*(a4 + 32) + 8) + 16))(v112, v30, a3);
      v32 = v30;
      v19 = v106;
      result = (*(v13 + 8))(v32, a3);
      if (v31)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v34 = v114(a3, a4);
    v20 = *(a4 + 128);
    v35 = v20(a3, a4);
    if (v34)
    {
      v112 = a2;
      v106 = v20;
      if (v35 <= 64)
      {
        v72 = v108;
        v71 = v109;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v109, a3, v108, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v74 = v107;
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v72, AssociatedConformanceWitness);
        v75 = v113;
        (v71[3])(v74, a3, v71);
        a2 = v112;
        LOBYTE(v71) = (*(*(*(a4 + 32) + 8) + 16))(v112, v75, a3);
        result = (*(v13 + 8))(v75, a3);
        if (v71)
        {
          goto LABEL_25;
        }

        result = (*(a4 + 120))(a3, a4);
        v20 = v106;
        if (result < -128)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v115 = -128;
        v38 = v16;
        v39 = v13;
        v40 = a5;
        v41 = *(a4 + 96);
        v42 = lazy protocol witness table accessor for type Int and conformance Int(v35, v36, v37);
        v43 = v113;
        v41(&v115, &type metadata for Int, v42, a3, a4);
        a5 = v40;
        v13 = v39;
        v16 = v38;
        v44 = v112;
        v45 = (*(*(*(a4 + 32) + 8) + 16))(v112, v43, a3);
        v46 = v43;
        v19 = (a4 + 64);
        a2 = v44;
        result = (*(v13 + 8))(v46, a3);
        v20 = v106;
        if (v45)
        {
          goto LABEL_25;
        }
      }

      goto LABEL_11;
    }

    if (v35 >= 64)
    {
      goto LABEL_11;
    }
  }

  result = (*(a4 + 120))(a3, a4);
  if (result < -128)
  {
    goto LABEL_25;
  }

LABEL_11:
  v47 = v114(a3, a4);
  v105[1] = a4 + 128;
  v48 = v20(a3, a4);
  if (v47)
  {
    if (v48 > 64)
    {
      goto LABEL_13;
    }
  }

  else if (v48 >= 64)
  {
LABEL_13:
    v115 = 128;
    v112 = a2;
    v51 = v20;
    v52 = v16;
    v53 = v13;
    v54 = a5;
    v55 = *(a4 + 96);
    v56 = lazy protocol witness table accessor for type Int and conformance Int(v48, v49, v50);
    v106 = v19;
    v57 = v113;
    v55(&v115, &type metadata for Int, v56, a3, a4);
    a5 = v54;
    v13 = v53;
    v16 = v52;
    v20 = v51;
    a2 = v112;
    v58 = (*(*(*(a4 + 32) + 8) + 16))(v57, v112, a3);
    v59 = v57;
    v19 = v106;
    result = (*(v13 + 8))(v59, a3);
    if (v58)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  result = (*(a4 + 120))(a3, a4);
  if (result > 128)
  {
    goto LABEL_25;
  }

LABEL_17:
  (*(v13 + 16))(v16, a2, a3);
  if ((v114(a3, a4) & 1) == 0 || v20(a3, a4) < 65)
  {
    goto LABEL_34;
  }

  if ((v114(a3, a4) & 1) == 0)
  {
    v78 = v114(a3, a4);
    v79 = v20(a3, a4);
    if ((v78 & 1) == 0)
    {
      if (v79 >= 64)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v106 = v20;
    if (v79 <= 64)
    {
      v90 = v108;
      v89 = v109;
      v91 = swift_getAssociatedConformanceWitness(v109, a3, v108, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v92 = v107;
      (*(v91 + 8))(&qword_18071E0A8, 256, v90, v91);
      v93 = v113;
      (v89[3])(v92, a3, v89);
      LOBYTE(v89) = (*(*(*(a4 + 32) + 8) + 16))(v16, v93, a3);
      (*(v13 + 8))(v93, a3);
      v20 = v106;
      if ((v89 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v115 = 0x8000000000000000;
      v82 = v16;
      v83 = v13;
      v84 = a5;
      v85 = *(a4 + 96);
      v86 = lazy protocol witness table accessor for type Int and conformance Int(v79, v80, v81);
      v87 = v113;
      v85(&v115, &type metadata for Int, v86, a3, a4);
      a5 = v84;
      v13 = v83;
      v16 = v82;
      v88 = (*(*(*(a4 + 32) + 8) + 16))(v82, v87, a3);
      (*(v13 + 8))(v87, a3);
      v20 = v106;
      if ((v88 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v60 = v20(a3, a4);
  if (v60 < 64)
  {
LABEL_33:
    (*(a4 + 120))(a3, a4);
    goto LABEL_34;
  }

  v115 = 0x8000000000000000;
  v63 = v20;
  v64 = v16;
  v65 = v13;
  v66 = a5;
  v67 = *(a4 + 96);
  v68 = lazy protocol witness table accessor for type Int and conformance Int(v60, v61, v62);
  v106 = v19;
  v69 = v113;
  v67(&v115, &type metadata for Int, v68, a3, a4);
  a5 = v66;
  v13 = v65;
  v16 = v64;
  v20 = v63;
  v70 = (*(*(*(a4 + 32) + 8) + 16))(v16, v69, a3);
  (*(v13 + 8))(v69, a3);
  if (v70)
  {
    goto LABEL_38;
  }

LABEL_34:
  if (v20(a3, a4) <= 64 && (v20(a3, a4) != 64 || (v114(a3, a4) & 1) != 0))
  {
    goto LABEL_44;
  }

  v94 = v114(a3, a4);
  v95 = v20(a3, a4);
  if (v94)
  {
    if (v95 > 64)
    {
      goto LABEL_37;
    }

LABEL_43:
    (*(a4 + 120))(a3, a4);
    goto LABEL_44;
  }

  if (v95 < 64)
  {
    goto LABEL_43;
  }

LABEL_37:
  v115 = 0x7FFFFFFFFFFFFFFFLL;
  v98 = v16;
  v99 = a5;
  v100 = *(a4 + 96);
  v101 = lazy protocol witness table accessor for type Int and conformance Int(v95, v96, v97);
  v102 = v113;
  v100(&v115, &type metadata for Int, v101, a3, a4);
  a5 = v99;
  v16 = v98;
  v103 = (*(*(*(a4 + 32) + 8) + 16))(v102, v98, a3);
  (*(v13 + 8))(v102, a3);
  if (v103)
  {
    goto LABEL_38;
  }

LABEL_44:
  v104 = (*(a4 + 120))(a3, a4);
  result = (*(v13 + 8))(v16, a3);
  if ((v104 & 0x8000000000000000) == 0)
  {
    if (v104 <= 0x7F)
    {
      if ((v104 & 0x40) != 0)
      {
        v77 = v111 << v104;
      }

      else
      {
        v77 = (v110 << v104) | (v111 >> 1 >> ~v104);
      }

      if ((v104 & 0x40) != 0)
      {
        v76 = 0;
      }

      else
      {
        v76 = v111 << v104;
      }

      goto LABEL_52;
    }

LABEL_25:
    v76 = 0;
    v77 = 0;
    goto LABEL_52;
  }

  if (v104 <= 0xFFFFFFFFFFFFFF80)
  {
    goto LABEL_25;
  }

  if ((-v104 & 0x40) != 0)
  {
    v77 = 0;
  }

  else
  {
    v77 = v110 >> -v104;
  }

  v76 = ((2 * v110) << (v104 - 1)) | (v111 >> -v104);
  if ((-v104 & 0x40) != 0)
  {
    v76 = v110 >> -v104;
  }

LABEL_52:
  *a5 = v76;
  a5[1] = v77;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<<= infix<A>(_:_:) in conformance UInt128(uint64_t *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v108 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v108, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v107 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v106 = v104 - v10;
  v11 = *(a3 - 1);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v110 = v104 - v15;
  v16 = (a4 + 64);
  v111 = *(a4 + 64);
  if (v111(a3, a4))
  {
    v17 = *(a4 + 128);
    v18 = v17(a3, a4);
    if (v18 >= 64)
    {
      v112 = -128;
      v109 = a2;
      v21 = v17;
      v22 = v14;
      v23 = v11;
      v24 = a1;
      v25 = *(a4 + 96);
      v26 = lazy protocol witness table accessor for type Int and conformance Int(v18, v19, v20);
      v105 = (a4 + 64);
      v27 = v110;
      v25(&v112, &type metadata for Int, v26, a3, a4);
      a1 = v24;
      v11 = v23;
      v14 = v22;
      v17 = v21;
      a2 = v109;
      v28 = (*(*(*(a4 + 32) + 8) + 16))(v109, v27, a3);
      v29 = v27;
      v16 = v105;
      result = (*(v11 + 8))(v29, a3);
      if (v28)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v31 = v111(a3, a4);
    v17 = *(a4 + 128);
    v32 = v17(a3, a4);
    if (v31)
    {
      v109 = a2;
      v105 = v17;
      if (v32 <= 64)
      {
        v69 = v107;
        v68 = v108;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v108, a3, v107, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v71 = v106;
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v69, AssociatedConformanceWitness);
        v72 = v110;
        (v68[3])(v71, a3, v68);
        a2 = v109;
        LOBYTE(v68) = (*(*(*(a4 + 32) + 8) + 16))(v109, v72, a3);
        result = (*(v11 + 8))(v72, a3);
        if (v68)
        {
          goto LABEL_25;
        }

        result = (*(a4 + 120))(a3, a4);
        v17 = v105;
        if (result < -128)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v112 = -128;
        v35 = v14;
        v36 = v11;
        v37 = a1;
        v38 = *(a4 + 96);
        v39 = lazy protocol witness table accessor for type Int and conformance Int(v32, v33, v34);
        v40 = v110;
        v38(&v112, &type metadata for Int, v39, a3, a4);
        a1 = v37;
        v11 = v36;
        v14 = v35;
        v41 = v109;
        v42 = (*(*(*(a4 + 32) + 8) + 16))(v109, v40, a3);
        v43 = v40;
        v16 = (a4 + 64);
        a2 = v41;
        result = (*(v11 + 8))(v43, a3);
        v17 = v105;
        if (v42)
        {
          goto LABEL_25;
        }
      }

      goto LABEL_11;
    }

    if (v32 >= 64)
    {
      goto LABEL_11;
    }
  }

  result = (*(a4 + 120))(a3, a4);
  if (result < -128)
  {
    goto LABEL_25;
  }

LABEL_11:
  v44 = v111(a3, a4);
  v104[1] = a4 + 128;
  v45 = v17(a3, a4);
  if (v44)
  {
    if (v45 > 64)
    {
      goto LABEL_13;
    }
  }

  else if (v45 >= 64)
  {
LABEL_13:
    v112 = 128;
    v109 = a2;
    v48 = v17;
    v49 = v14;
    v50 = v11;
    v51 = a1;
    v52 = *(a4 + 96);
    v53 = lazy protocol witness table accessor for type Int and conformance Int(v45, v46, v47);
    v105 = v16;
    v54 = v110;
    v52(&v112, &type metadata for Int, v53, a3, a4);
    a1 = v51;
    v11 = v50;
    v14 = v49;
    v17 = v48;
    a2 = v109;
    v55 = (*(*(*(a4 + 32) + 8) + 16))(v54, v109, a3);
    v56 = v54;
    v16 = v105;
    result = (*(v11 + 8))(v56, a3);
    if (v55)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  result = (*(a4 + 120))(a3, a4);
  if (result > 128)
  {
    goto LABEL_25;
  }

LABEL_17:
  (*(v11 + 16))(v14, a2, a3);
  if ((v111(a3, a4) & 1) == 0 || v17(a3, a4) < 65)
  {
    goto LABEL_34;
  }

  if ((v111(a3, a4) & 1) == 0)
  {
    v75 = v111(a3, a4);
    v76 = v17(a3, a4);
    if ((v75 & 1) == 0)
    {
      if (v76 >= 64)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v105 = v17;
    if (v76 <= 64)
    {
      v87 = v107;
      v86 = v108;
      v88 = swift_getAssociatedConformanceWitness(v108, a3, v107, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v89 = v106;
      (*(v88 + 8))(&qword_18071E0A8, 256, v87, v88);
      v90 = v110;
      (v86[3])(v89, a3, v86);
      LOBYTE(v86) = (*(*(*(a4 + 32) + 8) + 16))(v14, v90, a3);
      (*(v11 + 8))(v90, a3);
      v17 = v105;
      if ((v86 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v112 = 0x8000000000000000;
      v79 = v14;
      v80 = v11;
      v81 = a1;
      v82 = *(a4 + 96);
      v83 = lazy protocol witness table accessor for type Int and conformance Int(v76, v77, v78);
      v84 = v110;
      v82(&v112, &type metadata for Int, v83, a3, a4);
      a1 = v81;
      v11 = v80;
      v14 = v79;
      v85 = (*(*(*(a4 + 32) + 8) + 16))(v79, v84, a3);
      (*(v11 + 8))(v84, a3);
      v17 = v105;
      if ((v85 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v57 = v17(a3, a4);
  if (v57 < 64)
  {
LABEL_33:
    (*(a4 + 120))(a3, a4);
    goto LABEL_34;
  }

  v112 = 0x8000000000000000;
  v60 = v17;
  v61 = v14;
  v62 = v11;
  v63 = a1;
  v64 = *(a4 + 96);
  v65 = lazy protocol witness table accessor for type Int and conformance Int(v57, v58, v59);
  v105 = v16;
  v66 = v110;
  v64(&v112, &type metadata for Int, v65, a3, a4);
  a1 = v63;
  v11 = v62;
  v14 = v61;
  v17 = v60;
  v67 = (*(*(*(a4 + 32) + 8) + 16))(v14, v66, a3);
  (*(v11 + 8))(v66, a3);
  if (v67)
  {
    goto LABEL_38;
  }

LABEL_34:
  if (v17(a3, a4) <= 64 && (v17(a3, a4) != 64 || (v111(a3, a4) & 1) != 0))
  {
    goto LABEL_44;
  }

  v91 = v111(a3, a4);
  v92 = v17(a3, a4);
  if (v91)
  {
    if (v92 > 64)
    {
      goto LABEL_37;
    }

LABEL_43:
    (*(a4 + 120))(a3, a4);
    goto LABEL_44;
  }

  if (v92 < 64)
  {
    goto LABEL_43;
  }

LABEL_37:
  v112 = 0x7FFFFFFFFFFFFFFFLL;
  v95 = v14;
  v96 = a1;
  v97 = *(a4 + 96);
  v98 = lazy protocol witness table accessor for type Int and conformance Int(v92, v93, v94);
  v99 = v110;
  v97(&v112, &type metadata for Int, v98, a3, a4);
  a1 = v96;
  v14 = v95;
  v100 = (*(*(*(a4 + 32) + 8) + 16))(v99, v95, a3);
  (*(v11 + 8))(v99, a3);
  if (v100)
  {
    goto LABEL_38;
  }

LABEL_44:
  v101 = (*(a4 + 120))(a3, a4);
  result = (*(v11 + 8))(v14, a3);
  v102 = *a1;
  v103 = a1[1];
  if ((v101 & 0x8000000000000000) == 0)
  {
    if (v101 < 0x80)
    {
      v74 = (v103 << v101) | (v102 >> 1 >> ~v101);
      v73 = v102 << v101;
      if ((v101 & 0x40) != 0)
      {
        v74 = v73;
        v73 = 0;
      }

      goto LABEL_48;
    }

LABEL_25:
    v73 = 0;
    v74 = 0;
    goto LABEL_48;
  }

  if (v101 <= 0xFFFFFFFFFFFFFF80)
  {
    goto LABEL_25;
  }

  if ((-v101 & 0x40) != 0)
  {
    v74 = 0;
  }

  else
  {
    v74 = v103 >> -v101;
  }

  v73 = ((2 * v103) << (v101 - 1)) | (v102 >> -v101);
  if ((-v101 & 0x40) != 0)
  {
    v73 = v103 >> -v101;
  }

LABEL_48:
  *a1 = v73;
  a1[1] = v74;
  return result;
}

uint64_t protocol witness for BinaryInteger.quotientAndRemainder(dividingBy:) in conformance UInt128(uint64_t *a1, _OWORD *a2, unint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  if (*a3 == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v10 = v3;
  v8 = *v3;
  v9 = v10[1];
  result = __udivti3();
  *a2 = __PAIR128__(v9, v8) - __PAIR128__(v12, result) * __PAIR128__(v5, v4);
  *a1 = result;
  a1[1] = v12;
  return result;
}

unint64_t *protocol witness for Strideable.distance(to:) in conformance UInt128@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = result[1];
  v6 = *v2;
  v5 = v2[1];
  if (*result >= *v2)
  {
    v7 = v3 >= v6;
    v9 = v3 - v6;
    if (!((v4 - (v5 + !v7)) | (v9 >> 63)))
    {
      goto LABEL_5;
    }

LABEL_6:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = v6 >= v3;
  v8 = v6 - v3;
  if ((v5 - (v4 + !v7)) | (v8 >> 63))
  {
    goto LABEL_6;
  }

  v9 = -v8;
LABEL_5:
  *a2 = v9;
  return result;
}

unint64_t *protocol witness for Strideable.advanced(by:) in conformance UInt128@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result;
  v5 = *v2;
  v4 = v2[1];
  if ((*result & 0x8000000000000000) == 0)
  {
    v6 = __CFADD__(v5, v3);
    v3 += v5;
    v7 = v6;
    v6 = __CFADD__(v6, v4);
    v4 += v7;
    v5 = v6;
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v8 = -v3;
  v6 = v5 >= v8;
  v3 = v5 - v8;
  v9 = v6;
  v6 = v4 >= !v6;
  v4 -= !v9;
  v10 = !v6;
  if ((v10 & 1) == 0)
  {
LABEL_11:
    *a2 = v3;
    a2[1] = v4;
    return result;
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall UInt128.Words.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall UInt128.Words.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t UInt128.Words.subscript.getter(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >= 2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4[0] = a2;
  v4[1] = a3;
  return v4[a1];
}

unint64_t protocol witness for BidirectionalCollection.index(_:offsetBy:) in conformance _Int128.Words@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = specialized RandomAccessCollection<>.index(_:offsetBy:)(*a1, a2);
  *a3 = result;
  return result;
}

unint64_t protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance _Int128.Words@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

void *protocol witness for Collection.subscript.getter in conformance UInt128.Words@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if ((*result & 0x8000000000000000) != 0 || (v3 = result[1], v3 >= 3))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *v2;
  v5 = v2[1];
  *a2 = *result;
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

double protocol witness for Collection.indices.getter in conformance UInt128.Words@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_18071DF80;
  return result;
}

void protocol witness for Sequence.makeIterator() in conformance UInt128.Words(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = 0;
}

uint64_t protocol witness for FixedWidthInteger.addingReportingOverflow(_:) in conformance UInt128(_OWORD *a1, void *a2)
{
  v3 = *v2 + *a2;
  if (__CFADD__(__CFADD__(*v2, *a2), v2[1]) | __CFADD__(a2[1], *(&v3 + 1)))
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v3;
  return v4;
}

BOOL protocol witness for FixedWidthInteger.subtractingReportingOverflow(_:) in conformance UInt128(_OWORD *a1, _OWORD *a2)
{
  v3 = *v2 < *a2;
  *a1 = *v2 - *a2;
  return v3;
}

uint64_t protocol witness for FixedWidthInteger.multipliedReportingOverflow(by:) in conformance UInt128(void *a1, unint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v6 = *v2;
  v5 = v2[1];
  if (v5)
  {
    v7 = v3 == 0;
  }

  else
  {
    v7 = 1;
  }

  v10 = !v7 || (v5 * *a2) >> 64 != 0 || (v3 * *v2) >> 64 != 0;
  v11 = v3 * v6 + v5 * v4;
  v12 = (v6 * v4) >> 64;
  v13 = __CFADD__(v12, v11);
  v14 = v12 + v11;
  if (v13)
  {
    v15 = 1;
  }

  else
  {
    v15 = v10;
  }

  *a1 = v6 * v4;
  a1[1] = v14;
  return v15;
}

BOOL protocol witness for FixedWidthInteger.dividedReportingOverflow(by:) in conformance UInt128(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *v2;
  v7 = v2[1];
  v8 = v4 | v5;
  if (v4 | v5)
  {
    v6 = __udivti3();
  }

  *a1 = v6;
  a1[1] = v7;
  return v8 == 0;
}

BOOL protocol witness for FixedWidthInteger.remainderReportingOverflow(dividingBy:) in conformance UInt128(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *v2;
  v7 = v2[1];
  v8 = v4 | v5;
  if (v4 | v5)
  {
    v6 = __umodti3();
  }

  *a1 = v6;
  a1[1] = v7;
  return v8 == 0;
}

uint64_t protocol witness for FixedWidthInteger.multipliedFullWidth(by:) in conformance UInt128(uint64_t *a1, _OWORD *a2, unint64_t *a3)
{
  result = specialized FixedWidthInteger.multipliedFullWidth(by:)(a2, *a3, a3[1], *v3, v3[1]);
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t protocol witness for FixedWidthInteger.dividingFullWidth(_:) in conformance UInt128(uint64_t *a1, uint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  result = specialized UnsignedInteger<>.dividingFullWidth(_:)(a2, *a3, a3[1], *a4, a4[1], *v4, v4[1]);
  *a1 = result;
  a1[1] = v7;
  return result;
}

void *protocol witness for static FixedWidthInteger.&>> infix(_:_:) in conformance UInt128@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = result[1];
  v4 = ((2 * v3) << ~*a2) | (*result >> *a2);
  v5 = v3 >> *a2;
  if ((*a2 & 0x40) != 0)
  {
    v4 = v5;
    v5 = 0;
  }

  *a3 = v4;
  a3[1] = v5;
  return result;
}

uint64_t *protocol witness for static FixedWidthInteger.&>>= infix(_:_:) in conformance UInt128(uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = (2 * v2) << ~*a2;
  v4 = v2 >> *a2;
  if ((*a2 & 0x40) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3 | (*result >> *a2);
  }

  if ((*a2 & 0x40) != 0)
  {
    v4 = 0;
  }

  *result = v5;
  result[1] = v4;
  return result;
}

void protocol witness for LosslessStringConvertible.init(_:) in conformance UInt128(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  v6 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    a2;
    goto LABEL_51;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v45[0] = a1;
      v45[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v16 = specialized closure #1 in FixedWidthInteger.init<A>(_:radix:)(v45, v5, 10);
      v17 = v22;
      v24 = v23 & 1;
LABEL_48:
      v46 = v24;
      goto LABEL_49;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      if ((a1 & 0xFFFFFFFFFFFFLL) != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v43 = _StringObject.sharedUTF8.getter(a1, a2);
      v6 = v44;
      v8 = v43;
      if (v6 > 0)
      {
LABEL_9:
        v9 = *v8;
        if (v9 == 43)
        {
          v25 = specialized Collection.subscript.getter(1, v8, v6);
          v29 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v25, v26, v27, v28);
          if (v30)
          {
            v16 = 0;
            v17 = 0;
            if (v29)
            {
              while (1)
              {
                v31 = *v29 - 48;
                if (v31 >= 0xA)
                {
                  goto LABEL_47;
                }

                v32 = !is_mul_ok(v17, 0xAuLL);
                v33 = (__PAIR128__(v17, v16) * 0xA) >> 64;
                if (__CFADD__((v16 * 0xAuLL) >> 64, 10 * v17))
                {
                  v32 = 1;
                }

                v21 = __CFADD__(10 * v16, v31);
                v17 = (__PAIR128__(v17, v16) * 0xA + v31) >> 64;
                v16 = 10 * v16 + v31;
                v34 = __CFADD__(v21, v33);
                if (v32 || v34)
                {
                  goto LABEL_47;
                }

                ++v29;
                if (!--v30)
                {
                  goto LABEL_46;
                }
              }
            }

            goto LABEL_46;
          }
        }

        else
        {
          if (v9 != 45)
          {
            v16 = 0;
            v17 = 0;
            while (1)
            {
              v35 = *v8 - 48;
              if (v35 >= 0xA)
              {
                goto LABEL_47;
              }

              v36 = !is_mul_ok(v17, 0xAuLL);
              v37 = (__PAIR128__(v17, v16) * 0xA) >> 64;
              if (__CFADD__((v16 * 0xAuLL) >> 64, 10 * v17))
              {
                v36 = 1;
              }

              v21 = __CFADD__(10 * v16, v35);
              v17 = (__PAIR128__(v17, v16) * 0xA + v35) >> 64;
              v16 = 10 * v16 + v35;
              v38 = __CFADD__(v21, v37);
              if (v36 || v38)
              {
                goto LABEL_47;
              }

              ++v8;
              if (!--v6)
              {
                goto LABEL_46;
              }
            }
          }

          v10 = specialized Collection.subscript.getter(1, v8, v6);
          v14 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v10, v11, v12, v13);
          if (v15)
          {
            v16 = 0;
            v17 = 0;
            if (v14)
            {
              while (1)
              {
                v18 = *v14 - 48;
                if (v18 >= 0xA)
                {
                  break;
                }

                v19 = !is_mul_ok(v17, 0xAuLL);
                v20 = (__PAIR128__(v17, v16) * 0xA) >> 64;
                if (__CFADD__((v16 * 0xAuLL) >> 64, 10 * v17))
                {
                  v19 = 1;
                }

                v21 = 10 * v16 >= v18;
                v17 = (__PAIR128__(v17, v16) * 0xA - v18) >> 64;
                v16 = 10 * v16 - v18;
                if (v19 || v20 < !v21)
                {
                  break;
                }

                ++v14;
                if (!--v15)
                {
                  goto LABEL_46;
                }
              }

LABEL_47:
              v17 = 0;
              v16 = 0;
              v24 = 1;
              goto LABEL_48;
            }

LABEL_46:
            v46 = 0;
LABEL_49:
            v39 = v46;
            goto LABEL_50;
          }
        }

        v17 = 0;
        v16 = 0;
        v46 = 1;
        goto LABEL_49;
      }
    }

    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v16 = specialized _parseInteger<A, B>(ascii:radix:)(a1, a2, 10);
  v17 = v41;
  v39 = v42;
LABEL_50:
  a2;
  if ((v39 & 1) == 0)
  {
    v40 = 0;
    goto LABEL_53;
  }

LABEL_51:
  v16 = 0;
  v17 = 0;
  v40 = 1;
LABEL_53:
  *a3 = v16;
  *(a3 + 8) = v17;
  *(a3 + 16) = v40;
}
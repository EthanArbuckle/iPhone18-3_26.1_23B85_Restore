uint64_t SignedInteger<>.init<A>(exactly:)@<X0>(void *a1@<X0>, unint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, void *a5@<X5>, uint64_t a6@<X8>)
{
  v9 = a2;
  v134 = a6;
  v139 = *(a4 + 8);
  v129 = *(*(v139 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v129, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v128 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v127 = &v121 - v12;
  v126 = *(a5[3] + 16);
  swift_getAssociatedTypeWitness(0, v126, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v125 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v124 = &v121 - v15;
  v137 = *(a3 - 1);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v131 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = *(v9 - 1);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v133 = &v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v130 = &v121 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v121 - v22;
  v135 = a5[8];
  v136 = a5 + 8;
  v24 = v135(a3, a5);
  v140 = a5;
  v27 = a5[16];
  v26 = a5 + 16;
  v25 = v27;
  if (v24)
  {
    v28 = v25(a3, v140);
    if ((*(a4 + 56))(v9, a4) < v28)
    {
      v132 = v25;
      v123 = v26;
      (*(a4 + 72))(v9, a4);
      v29 = v23;
      v30 = v135;
      v31 = v135(a3, v140);
      v32 = v139;
      if ((v31 ^ (*(v139 + 64))(v9, v139)))
      {
        v33 = v140;
        LODWORD(v121) = v30(a3, v140);
        v34 = a1;
        v122 = a3;
        v25 = v132;
        v35 = v132(a3, v33);
        v36 = (*(v32 + 128))(v9, v32);
        if (v121)
        {
          if (v36 < v35)
          {
            v37 = v140;
            v38 = v131;
            a3 = v122;
            (v140[12])(v29, v9, v139, v122, v140);
            v39 = (*(*(v37[4] + 8) + 16))(a1, v38, a3);
            (*(v137 + 8))(v38, a3);
            goto LABEL_15;
          }

          v121 = v29;
          v99 = v125;
          v100 = v126;
          a3 = v122;
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v126, v122, v125, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
          v102 = v124;
          (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v99, AssociatedConformanceWitness);
          v103 = v131;
          (v100[3])(v102, a3, v100);
          v104 = v140;
          v105 = v34;
          LOBYTE(v99) = (*(*(v140[4] + 8) + 16))(v34, v103, a3);
          v106 = v137;
          (*(v137 + 8))(v103, a3);
          v107 = v139;
          if (v99)
          {
            (*(v138 + 8))(v121, v9);
            a1 = v34;
            goto LABEL_45;
          }

          (*(v106 + 16))(v103, v34, a3);
          v119 = v130;
          (*(v107 + 96))(v103, a3, v104, v9, v107);
          v120 = v121;
          v39 = (*(*(*(v107 + 32) + 8) + 16))(v119, v121, v9);
          a1 = v105;
          v43 = *(v138 + 8);
          v43(v119, v9);
          v44 = v120;
          goto LABEL_9;
        }

        if (v35 < v36)
        {
          v45 = v131;
          a3 = v122;
          (*(v137 + 16))(v131, a1, v122);
          v46 = v139;
          v47 = v130;
          (*(v139 + 96))(v45, a3, v140, v9, v139);
          LOBYTE(v45) = (*(*(*(v46 + 32) + 8) + 16))(v47, v29, v9);
          v48 = *(v138 + 8);
          v48(v47, v9);
          v48(v29, v9);
          if (v45)
          {
            goto LABEL_45;
          }

          goto LABEL_16;
        }

        v110 = v128;
        v109 = v129;
        v111 = swift_getAssociatedConformanceWitness(v129, v9, v128, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v112 = v127;
        (*(v111 + 8))(&qword_18071E0A8, 256, v110, v111);
        v113 = v130;
        (v109[3])(v112, v9, v109);
        v114 = v139;
        v115 = (*(*(*(v139 + 32) + 8) + 40))(v29, v113, v9);
        v116 = *(v138 + 8);
        v116(v113, v9);
        if ((v115 & 1) == 0)
        {
          v116(v29, v9);
          a3 = v122;
          v25 = v132;
          v52 = v132(v122, v140);
          goto LABEL_17;
        }

        v117 = v140;
        v50 = v131;
        v118 = v114;
        a3 = v122;
        (v140[12])(v29, v9, v118, v122, v140);
        v51 = v117[4];
      }

      else
      {
        v40 = v132(a3, v140);
        if (v40 < (*(v32 + 128))(v9, v32))
        {
          v41 = v131;
          (*(v137 + 16))(v131, a1, a3);
          v42 = v130;
          (*(v32 + 96))(v41, a3, v140, v9, v32);
          v39 = (*(*(*(v32 + 32) + 8) + 16))(v42, v29, v9);
          v43 = *(v138 + 8);
          v43(v42, v9);
          v44 = v29;
LABEL_9:
          v43(v44, v9);
          goto LABEL_15;
        }

        v49 = v140;
        v50 = v131;
        (v140[12])(v29, v9, v32, a3, v140);
        v51 = v49[4];
      }

      v39 = (*(*(v51 + 8) + 16))(a1, v50, a3);
      (*(v137 + 8))(v50, a3);
LABEL_15:
      v25 = v132;
      if (v39)
      {
        goto LABEL_45;
      }
    }
  }

LABEL_16:
  v52 = v25(a3, v140);
LABEL_17:
  v53 = *(a4 + 56);
  if (v53(v9, a4) >= v52)
  {
    v68 = v25(a3, v140);
    if (v68 != v53(v9, a4) || (v135(a3, v140) & 1) != 0)
    {
      goto LABEL_42;
    }
  }

  v132 = v25;
  v54 = v133;
  (*(a4 + 64))(v9, a4);
  v55 = v139;
  v56 = *(v139 + 64);
  v57 = v56(v9, v139);
  if (((v57 ^ v135(a3, v140)) & 1) == 0)
  {
    v69 = (*(v55 + 128))(v9, v55);
    v70 = v140;
    v71 = v54;
    if (v69 >= v132(a3, v140))
    {
      v78 = v131;
      (*(v137 + 16))(v131, a1, a3);
      v79 = v70;
      v80 = v130;
      (*(v55 + 96))(v78, a3, v79, v9, v55);
      LOBYTE(v78) = (*(*(*(v55 + 32) + 8) + 16))(v71, v80, v9);
      v81 = *(v138 + 8);
      v81(v80, v9);
      v81(v71, v9);
      if ((v78 & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_45;
    }

    v72 = v131;
    (v70[12])(v54, v9, v55, a3, v70);
    v73 = (*(*(v70[4] + 8) + 16))(v72, a1, a3);
    goto LABEL_27;
  }

  v58 = v56(v9, v55);
  v59 = v9;
  v60 = (*(v55 + 128))(v9, v55);
  v61 = v140;
  v62 = v132(a3, v140);
  if ((v58 & 1) == 0)
  {
    v75 = v61;
    v76 = v131;
    if (v60 >= v62)
    {
      v89 = v125;
      v90 = v126;
      v91 = swift_getAssociatedConformanceWitness(v126, a3, v125, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v92 = v124;
      (*(v91 + 8))(&qword_18071E0A8, 256, v89, v91);
      (v90[3])(v92, a3, v90);
      LOBYTE(v89) = (*(*(v61[4] + 8) + 40))(a1, v76, a3);
      v93 = v137;
      (*(v137 + 8))(v76, a3);
      v66 = v133;
      if ((v89 & 1) == 0)
      {
        v9 = v59;
        (*(v138 + 8))(v133, v59);
        goto LABEL_42;
      }

      (*(v93 + 16))(v76, a1, a3);
      v64 = a1;
      v65 = v130;
      v9 = v59;
      (*(v55 + 96))(v76, a3, v140, v59, v55);
      v67 = (*(*(*(v55 + 32) + 8) + 16))(v66, v65, v59);
      goto LABEL_38;
    }

    v77 = v61[12];
    v9 = v59;
    v77(v133, v59, v55, a3, v75);
    v74 = (*(*(v75[4] + 8) + 16))(v76, a1, a3);
    (*(v137 + 8))(v76, a3);
    goto LABEL_30;
  }

  if (v62 >= v60)
  {
    v136 = a1;
    v82 = v128;
    v83 = v129;
    v9 = v59;
    v84 = swift_getAssociatedConformanceWitness(v129, v59, v128, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v85 = v127;
    (*(v84 + 8))(&qword_18071E0A8, 256, v82, v84);
    v86 = v130;
    (v83[3])(v85, v59, v83);
    v87 = v133;
    LOBYTE(v82) = (*(*(*(v55 + 32) + 8) + 16))(v133, v86, v59);
    v88 = *(v138 + 8);
    v88(v86, v59);
    if (v82)
    {
      v88(v87, v59);
      a1 = v136;
      goto LABEL_45;
    }

    v96 = v140;
    v72 = v131;
    (v140[12])(v87, v59, v55, a3, v140);
    a1 = v136;
    v73 = (*(*(v96[4] + 8) + 16))(v72, v136, a3);
LABEL_27:
    v74 = v73;
    (*(v137 + 8))(v72, a3);
LABEL_30:
    if ((v74 & 1) == 0)
    {
      goto LABEL_42;
    }

LABEL_45:
    (*(v137 + 8))(a1, a3);
    v98 = 1;
    v97 = v134;
    return (*(v138 + 56))(v97, v98, 1, v9);
  }

  v63 = v131;
  (*(v137 + 16))(v131, a1, a3);
  v64 = a1;
  v65 = v130;
  v9 = v59;
  (*(v55 + 96))(v63, a3, v140, v59, v55);
  v66 = v133;
  v67 = (*(*(*(v55 + 32) + 8) + 16))(v133, v65, v59);
LABEL_38:
  v94 = v67;
  v95 = *(v138 + 8);
  v95(v65, v59);
  v95(v66, v59);
  a1 = v64;
  if (v94)
  {
    goto LABEL_45;
  }

LABEL_42:
  v97 = v134;
  (*(v139 + 96))(a1, a3, v140, v9);
  v98 = 0;
  return (*(v138 + 56))(v97, v98, 1, v9);
}

uint64_t BinaryInteger.advanced(by:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (*(v10 + 64))(v11, v10);
  if ((v12 & 1) == 0)
  {
    if (a1 < 0)
    {
      v30 = -a1;
      v27 = *(a3 + 88);
      v28 = lazy protocol witness table accessor for type UInt and conformance UInt(v12, v13, v14);
      v27(&v30, &type metadata for UInt, v28, a2, a3);
      (*(*(*(a3 + 24) + 8) + 40))(v3, v9, a2);
      return (*(v7 + 8))(v9, a2);
    }

    v30 = a1;
    v23 = *(a3 + 88);
    v24 = lazy protocol witness table accessor for type UInt and conformance UInt(v12, v13, v14);
    v23(&v30, &type metadata for UInt, v24, a2, a3);
LABEL_8:
    (*(*(*(a3 + 24) + 8) + 24))(v3, v9, a2);
    return (*(v7 + 8))(v9, a2);
  }

  v15 = (*(a3 + 128))(a2, a3);
  if (v15 > 63)
  {
    v30 = a1;
    v25 = *(a3 + 96);
    v26 = lazy protocol witness table accessor for type Int and conformance Int(v15, v16, v17);
    v25(&v30, &type metadata for Int, v26, a2, a3);
    goto LABEL_8;
  }

  result = (*(a3 + 120))(a2, a3);
  if (__OFADD__(result, a1))
  {
    __break(1u);
  }

  else
  {
    v30 = result + a1;
    v21 = *(a3 + 88);
    v22 = lazy protocol witness table accessor for type Int and conformance Int(result, v19, v20);
    return v21(&v30, &type metadata for Int, v22, a2, a3);
  }

  return result;
}

uint64_t specialized FixedWidthInteger.multipliedFullWidth(by:)(_OWORD *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v5 = (a5 * a2) >> 64;
  if (__CFADD__((a4 * a2) >> 64, a5 * a2))
  {
    ++v5;
  }

  if (__CFADD__((__PAIR128__(a5, a4) * a2) >> 64, a4 * a3))
  {
    v6 = ((a4 * a3) >> 64) + 1;
  }

  else
  {
    v6 = (a4 * a3) >> 64;
  }

  *a1 = __PAIR128__(a3, a2) * __PAIR128__(a5, a4);
  return v5 + a5 * a3 + v6;
}

uint64_t FixedWidthInteger.multipliedFullWidth(by:)(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, swift *a5)
{
  v6 = v5;
  v119 = a3;
  v101 = a2;
  v99 = a1;
  v121 = *(a5 + 1);
  swift_getAssociatedTypeWitness(0, v121[3], a4, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v10 = v9;
  v124 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v100 = v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v120 = v95 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v95 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v111 = v95 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v95 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = v95 - v24;
  v112 = v95 - v24;
  v109 = *(a4 - 1);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v97 = v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v110 = v95 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v118 = v95 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v115 = v95 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v125 = v95 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v122 = v95 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = v95 - v39;
  v108 = v95 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v117 = v95 - v41;
  split #1 <A><A1>(_:) in FixedWidthInteger.multipliedFullWidth(by:)(v95 - v41, v25, v6, a4, a4, a5, a5);
  v42 = a5;
  split #1 <A><A1>(_:) in FixedWidthInteger.multipliedFullWidth(by:)(v40, v22, v119, a4, a4, a5, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a4, v10, &protocol requirements base descriptor for FixedWidthInteger, associated conformance descriptor for FixedWidthInteger.Numeric.Magnitude: FixedWidthInteger);
  v43 = *(AssociatedConformanceWitness + 232);
  v98 = v22;
  v44 = v10;
  v43(v25, v22, v10, AssociatedConformanceWitness);
  v45 = *(v124 + 16);
  v95[2] = v124 + 16;
  v96 = v45;
  v46 = v17;
  v45(v17, v22, v44);
  v47 = v121;
  v48 = (v121 + 11);
  v104 = v121[11];
  v49 = v104;
  v119 = swift_getAssociatedConformanceWitness(v121, a4, v44, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
  v50 = v115;
  (v49)(v46, v44, v119, a4, v47);
  v95[1] = v48;
  v51 = *(v42 + 232);
  v106 = v42 + 232;
  v107 = v51;
  v51(v117, v50, a4, v42);
  v52 = *(v109 + 8);
  v52(v50, a4);
  v123 = v46;
  v53 = v120;
  split #1 <A><A1>(_:) in FixedWidthInteger.multipliedFullWidth(by:)(v46, v120, v111, a4, v44, v42, AssociatedConformanceWitness);
  v54 = *(v124 + 8);
  v124 += 8;
  v105 = v54;
  v54(v53, v44);
  v55 = v50;
  v56 = v46;
  v57 = v119;
  v58 = v121;
  (v104)(v56, v44, v119, a4, v121);
  v114 = v42;
  v102 = *(v42 + 80);
  v103 = v42 + 80;
  v59 = v125;
  v102(v122, v55, a4, v42);
  v52(v55, a4);
  v52(v59, a4);
  v60 = v123;
  v116 = v44;
  v96(v123, v112, v44);
  v61 = v118;
  v62 = v44;
  v63 = v104;
  (v104)(v60, v62, v57, a4, v58);
  v64 = v108;
  v65 = v114;
  v107(v61, v108, a4, v114);
  v52(v61, a4);
  v66 = v110;
  v67 = v123;
  split #1 <A><A1>(_:) in FixedWidthInteger.multipliedFullWidth(by:)(v110, v123, v122, a4, a4, v65, v65);
  v52(v66, a4);
  v68 = v116;
  (v63)(v67, v116, v119, a4, v121);
  v69 = v115;
  v70 = v102;
  v102(v125, v61, a4, v65);
  v52(v61, a4);
  v52(v69, a4);
  v71 = v110;
  v107(v117, v64, a4, v65);
  v72 = v97;
  v73 = v123;
  split #1 <A><A1>(_:) in FixedWidthInteger.multipliedFullWidth(by:)(v97, v123, v122, a4, a4, v65, v65);
  v74 = v68;
  v75 = v105;
  v105(v73, v74);
  v70(v118, v72, a4, v65);
  v52(v72, a4);
  v52(v71, a4);
  v76 = v123;
  v77 = v114;
  split #1 <A><A1>(_:) in FixedWidthInteger.multipliedFullWidth(by:)(v71, v123, v125, a4, a4, v114, v114);
  v75(v76, v116);
  v78 = v115;
  v79 = v118;
  v102(v115, v71, a4, v77);
  v52(v71, a4);
  v52(v79, a4);
  (*(v109 + 16))(v99, v78, a4);
  v80 = v125;
  split #1 <A><A1>(_:) in FixedWidthInteger.multipliedFullWidth(by:)(v79, v120, v125, a4, a4, v77, v77);
  v52(v79, a4);
  v81 = (v121[16])(a4);
  v52(v78, a4);
  v52(v80, a4);
  v52(v122, a4);
  v82 = v116;
  v83 = v105;
  v105(v98, v116);
  v52(v108, a4);
  v83(v112, v82);
  v84 = (v52)(v117, a4);
  v126 = v81 / 2;
  v85 = v119;
  v86 = *(v119 + 256);
  v89 = lazy protocol witness table accessor for type Int and conformance Int(v84, v87, v88);
  v90 = v123;
  v91 = v120;
  v86(v120, &v126, &type metadata for Int, v89, v82, v85);
  v83(v91, v82);
  v92 = v100;
  v93 = v111;
  split #1 <A><A1>(_:) in FixedWidthInteger.multipliedFullWidth(by:)(v91, v100, v111, a4, v82, v114, AssociatedConformanceWitness);
  v83(v91, v82);
  v83(v93, v82);
  (*(v85 + 208))(v90, v92, v82, v85);
  v83(v92, v82);
  return (v83)(v90, v82);
}

uint64_t FixedWidthInteger.init(bigEndian:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return FixedWidthInteger.init(bigEndian:)(a1, a2, a3);
}

{
  (*(a3 + 192))(a2, a3);
  v5 = *(*(a2 - 8) + 8);

  return v5(a1, a2);
}

uint64_t static FixedWidthInteger.&>> infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, a1);
  return (*(a4 + 208))(a5, a2, a3, a4);
}

{
  (*(*(a3 - 8) + 16))(a5, a1);
  return (*(a4 + 208))(a5, a2, a3, a4);
}

uint64_t static FixedWidthInteger.&>>= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v19 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v19 - v15;
  (*(v8 + 32))(&v19 - v15, a1);
  (*(v8 + 16))(v11, a2, a3);
  (*(*(a4 + 8) + 96))(v11, a3, *(a4 + 8), a3, *(a4 + 8));
  (*(a4 + 200))(v16, v14, a3, a4);
  v17 = *(v8 + 8);
  v17(v14, a3);
  return (v17)(v16, a3);
}

uint64_t static FixedWidthInteger.&>>= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a6;
  v11 = *(a4 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v12);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v24 - v20;
  (*(v16 + 32))(&v24 - v20, a1);
  (*(v11 + 16))(v14, a2, a4);
  (*(*(a5 + 8) + 96))(v14, a4, v25, a3);
  (*(a5 + 200))(v21, v19, a3, a5);
  v22 = *(v16 + 8);
  v22(v19, a3);
  return (v22)(v21, a3);
}

uint64_t static FixedWidthInteger.&<< infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, a1);
  return (*(a4 + 224))(a5, a2, a3, a4);
}

{
  (*(*(a3 - 8) + 16))(a5, a1);
  return (*(a4 + 224))(a5, a2, a3, a4);
}

uint64_t static FixedWidthInteger.&<<= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v19 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v19 - v15;
  (*(v8 + 32))(&v19 - v15, a1);
  (*(v8 + 16))(v11, a2, a3);
  (*(*(a4 + 8) + 96))(v11, a3, *(a4 + 8), a3, *(a4 + 8));
  (*(a4 + 216))(v16, v14, a3, a4);
  v17 = *(v8 + 8);
  v17(v14, a3);
  return (v17)(v16, a3);
}

uint64_t static FixedWidthInteger.&<<= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a6;
  v11 = *(a4 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v12);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v24 - v20;
  (*(v16 + 32))(&v24 - v20, a1);
  (*(v11 + 16))(v14, a2, a4);
  (*(*(a5 + 8) + 96))(v14, a4, v25, a3);
  (*(a5 + 216))(v21, v19, a3, a5);
  v22 = *(v16 + 8);
  v22(v19, a3);
  return (v22)(v21, a3);
}

uint64_t split #1 <A><A1>(_:) in FixedWidthInteger.multipliedFullWidth(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7)
{
  v61 = a2;
  AssociatedConformanceWitness = a1;
  v10 = *(a7 + 8);
  v11 = *(v10 + 3);
  swift_getAssociatedTypeWitness(255, v11, a5, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v13 = v12;
  v65 = *(swift_getAssociatedConformanceWitness(v11, a5, v12, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Numeric) + 16);
  swift_getAssociatedTypeWitness(0, v65, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v63 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v64 = &v48 - v16;
  v17 = *(a5 - 1);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_checkMetadataState(0, v13);
  v60 = *(v20 - 1);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v57 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v55 = &v48 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v58 = &v48 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v59 = &v48 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v56 = &v48 - v29;
  v54 = a7;
  v30 = (*(a7 + 56))(a5, a7);
  v53 = v30 / 2;
  *v66 = v30 / 2;
  v31 = *(v10 + 30);
  v52 = lazy protocol witness table accessor for type Int and conformance Int(v30, v32, v33);
  v31(a3, v66, &type metadata for Int, v52, a5, v10);
  (*(v17 + 16))(v19, a3, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, a5, v20, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
  v48 = *(AssociatedConformanceWitness + 96);
  v48(v19, a5, v10, v20, AssociatedConformanceWitness);
  v34 = v65;
  v35 = v63;
  v36 = swift_getAssociatedConformanceWitness(v65, v20, v63, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v37 = *(v36 + 8);
  v50 = v36;
  v51 = v37;
  v38 = v64;
  (v37)(&qword_1806729C0, 512, v35, v36);
  v49 = v34[3];
  v39 = v55;
  (v49)(v38, v20, v34);
  *v66 = v53;
  v40 = v57;
  v48(v66, &type metadata for Int, v52, v20, AssociatedConformanceWitness);
  v41 = swift_getAssociatedConformanceWitness(v54, a5, v20, &protocol requirements base descriptor for FixedWidthInteger, associated conformance descriptor for FixedWidthInteger.Numeric.Magnitude: FixedWidthInteger);
  v42 = v58;
  (*(v41 + 216))(v39, v40, v20, v41);
  v43 = *(v60 + 8);
  v43(v40, v20);
  v43(v39, v20);
  v44 = v64;
  v51(&qword_1806729C0, 512);
  (v49)(v44, v20, v65);
  v45 = v59;
  (*(v41 + 88))(v59, v39, v20, v41);
  v43(v39, v20);
  v43(v42, v20);
  v46 = v56;
  (*(AssociatedConformanceWitness + 192))(v56, v45, v20);
  v43(v45, v20);
  return (v43)(v46, v20);
}

uint64_t static FixedWidthInteger.&>> infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v13);
  (*(*(a5 + 8) + 96))(v13, a4, a6, a3);
  (*(a5 + 200))(a1, v17, a3, a5);
  return (*(v15 + 8))(v17, a3);
}

uint64_t specialized RandomNumberGenerator.next<A>(upperBound:)(unint64_t a1)
{
  if (!a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  __buf = 0;
  swift_stdlib_random(&__buf, 8uLL);
  result = (__buf * a1) >> 64;
  if (__buf * a1 < a1)
  {
    v3 = -a1 % a1;
    if (v3 > __buf * a1)
    {
      do
      {
        __buf = 0;
        swift_stdlib_random(&__buf, 8uLL);
      }

      while (v3 > __buf * a1);
      return (__buf * a1) >> 64;
    }
  }

  return result;
}

uint64_t specialized RandomNumberGenerator.next<A>(upperBound:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = *(a3 + 8);
  v7 = v6(a2, a3);
  v8 = v7 * a1;
  result = (v7 * a1) >> 64;
  if (v8 < a1)
  {
    v10 = -a1 % a1;
    if (v10 > v8)
    {
      do
      {
        v11 = v6(a2, a3);
      }

      while (v10 > v11 * a1);
      return (v11 * a1) >> 64;
    }
  }

  return result;
}

uint64_t specialized RandomNumberGenerator.next<A>(upperBound:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v236 = a1;
  v231 = a3;
  v6 = *(a3 + 8);
  v7 = *(v6 + 24);
  swift_getAssociatedTypeWitness(255, v7, a2, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v9 = v8;
  v202 = *(swift_getAssociatedConformanceWitness(v7, a2, v8, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Numeric) + 16);
  swift_getAssociatedTypeWitness(0, v202, v9, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v201 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v200 = v192 - v11;
  v213 = v7;
  v206 = *(v7 + 16);
  swift_getAssociatedTypeWitness(0, v206, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v205 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v204 = v192 - v13;
  v14 = swift_checkMetadataState(0, v9);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v212 = v192 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v227 = v192 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = v192 - v20;
  v199 = v22;
  swift_getTupleTypeMetadata2(0, a2, v22, "high low ", 0);
  v203 = v23;
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v232 = v192 - v26;
  v207 = *(a2 - 1);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = (v192 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = MEMORY[0x1EEE9AC00](v27);
  v239 = v192 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v226 = v192 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v233 = v192 - v34;
  v35 = *(v6 + 64);
  v36 = v35(a2, v6);
  v229 = v6 + 64;
  v198 = a4;
  v192[0] = v24;
  v228 = v35;
  v215 = v29;
  if (v36)
  {
    v230 = *(v6 + 128);
    v37 = v230(a2, v6);
    if (v37 < 64)
    {
      v40 = (*(v6 + 120))(a2, v6);
      v41 = v207;
      if (!v40)
      {
        goto LABEL_58;
      }

      goto LABEL_13;
    }

LABEL_12:
    v240 = 0;
    v49 = *(v6 + 96);
    v50 = lazy protocol witness table accessor for type Int and conformance Int(v37, v38, v39);
    v51 = v15;
    v52 = v233;
    v49(&v240, &type metadata for Int, v50, a2, v6);
    v53 = (*(*(*(v6 + 16) + 8) + 8))(v236, v52, a2);
    v41 = v207;
    v54 = v52;
    v15 = v51;
    v35 = v228;
    (*(v207 + 8))(v54, a2);
    if (v53)
    {
      goto LABEL_58;
    }

    goto LABEL_13;
  }

  v42 = v35(a2, v6);
  v230 = *(v6 + 128);
  v37 = v230(a2, v6);
  if (v42)
  {
    if (v37 > 64)
    {
      goto LABEL_12;
    }

    v43 = v206;
    v44 = v205;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v206, a2, v205, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v46 = v204;
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v44, AssociatedConformanceWitness);
    v47 = v233;
    (v43[3])(v46, a2, v43);
    LOBYTE(v44) = (*(*(*(v6 + 32) + 8) + 32))(v236, v47, a2);
    (*(v207 + 8))(v47, a2);
    if ((v44 & 1) == 0)
    {
      v41 = v207;
      v35 = v228;
      goto LABEL_13;
    }
  }

  else if (v37 >= 64)
  {
    goto LABEL_12;
  }

  v48 = (*(v6 + 120))(a2, v6);
  v41 = v207;
  v35 = v228;
  if (!v48)
  {
LABEL_58:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_13:
  v55 = v226;
  v56 = v231;
  specialized static FixedWidthInteger._random<A>(using:)(a2, v231, v226);
  v57 = *(v203 + 48);
  v58 = *(v56 + 120);
  v59 = v232;
  v217 = v56 + 120;
  v216 = v58;
  v58(v232, &v232[v57], v236, a2, v56);
  v234 = *(v41 + 8);
  v235 = v41 + 8;
  v234(v55, a2);
  v214 = v15;
  v60 = *(v15 + 16);
  v225 = v57;
  v61 = v21;
  v62 = v21;
  v63 = v199;
  v221 = v15 + 16;
  v220 = v60;
  v60(v61, &v59[v57], v199);
  v64 = swift_getAssociatedConformanceWitness(v6, a2, v63, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
  v65 = *(v64 + 64);
  v66 = v6;
  v67 = v65(v63, v64);
  v68 = v35(a2, v66);
  v237 = v64;
  v238 = v66;
  v219 = v64 + 64;
  v218 = v65;
  if (((v67 ^ v68) & 1) == 0)
  {
    v223 = *(v64 + 128);
    v224 = v64 + 128;
    v85 = v223(v63, v64);
    v86 = v236;
    v222 = v66 + 128;
    if (v85 >= v230(a2, v66))
    {
      v93 = v233;
      (*(v207 + 16))(v233, v86, a2);
      v94 = v227;
      (*(v64 + 96))(v93, a2, v66, v63, v64);
      v95 = swift_getAssociatedConformanceWitness(v213, a2, v63, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
      v81 = (*(v95 + 16))(v62, v94, v63, v95);
      v96 = *(v214 + 8);
      v96(v94, v63);
      v96(v62, v63);
      v84 = v234;
    }

    else
    {
      v87 = v233;
      (*(v66 + 96))(v62, v63, v64, a2, v66);
      v81 = (*(*(*(v66 + 32) + 8) + 16))(v87, v86, a2);
      v84 = v234;
      v234(v87, a2);
    }

    v83 = v198;
    v73 = a2;
LABEL_24:
    v89 = v203;
    if ((v81 & 1) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_25;
  }

  v69 = v65(v63, v64);
  v70 = *(v64 + 128);
  v211 = v62;
  v223 = v70;
  v224 = v64 + 128;
  v71 = v70(v63, v64);
  v222 = v66 + 128;
  v72 = v230(a2, v66);
  v73 = a2;
  if (v69)
  {
    v74 = v214;
    if (v72 >= v71)
    {
      v163 = v202;
      v164 = v199;
      v165 = v201;
      v166 = swift_getAssociatedConformanceWitness(v202, v199, v201, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v167 = v200;
      (*(v166 + 8))(&qword_18071E0A8, 256, v165, v166);
      v168 = v227;
      (v163[3])(v167, v164, v163);
      v169 = swift_getAssociatedConformanceWitness(v213, a2, v164, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
      v170 = v211;
      LOBYTE(v165) = (*(v169 + 16))(v211, v168, v164, v169);
      v171 = *(v74 + 8);
      v171(v168, v164);
      if (v165)
      {
        v171(v170, v164);
        v97 = v237;
        v84 = v234;
        goto LABEL_26;
      }

      v189 = v238;
      v190 = v233;
      v191 = v198;
      (*(v238 + 96))(v170, v164, v237, v73, v238);
      v81 = (*(*(*(v189 + 32) + 8) + 16))(v190, v236, v73);
      v84 = v234;
      v234(v190, v73);
      v83 = v191;
    }

    else
    {
      v75 = v233;
      (*(v207 + 16))(v233, v236, a2);
      v76 = v227;
      v77 = a2;
      v78 = v199;
      (*(v237 + 96))(v75, v77, v238, v199);
      v79 = swift_getAssociatedConformanceWitness(v213, v73, v78, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
      v80 = v211;
      v81 = (*(v79 + 16))(v211, v76, v78, v79);
      v82 = *(v74 + 8);
      v82(v76, v78);
      v82(v80, v78);
      v83 = v198;
      v84 = v234;
    }

    goto LABEL_24;
  }

  v84 = v234;
  v88 = v214;
  v89 = v203;
  if (v71 >= v72)
  {
    v172 = v206;
    v173 = v205;
    v174 = swift_getAssociatedConformanceWitness(v206, v73, v205, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v175 = v204;
    (*(v174 + 8))(&qword_18071E0A8, 256, v173, v174);
    v176 = v233;
    (v172[3])(v175, v73, v172);
    v177 = v238;
    v178 = v236;
    LOBYTE(v173) = (*(*(*(v238 + 32) + 8) + 40))(v236, v176, v73);
    v84(v176, v73);
    v179 = v237;
    v180 = v198;
    if ((v173 & 1) == 0)
    {
      (*(v88 + 8))(v211, v199);
      v89 = v203;
      v83 = v180;
      goto LABEL_48;
    }

    (*(v207 + 16))(v176, v178, v73);
    v181 = *(v179 + 96);
    v182 = v179;
    v183 = v227;
    v184 = v199;
    v181(v176, v73, v177, v199, v182);
    v185 = swift_getAssociatedConformanceWitness(v213, v73, v184, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
    v186 = v211;
    v187 = (*(v185 + 16))(v211, v183, v184, v185);
    v188 = *(v88 + 8);
    v188(v183, v184);
    v188(v186, v184);
    v89 = v203;
    v83 = v180;
    v84 = v234;
    if ((v187 & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v90 = v238;
    v91 = v233;
    (*(v238 + 96))(v211, v199, v237, v73, v238);
    v92 = (*(*(*(v90 + 32) + 8) + 16))(v91, v236, v73);
    v84(v91, v73);
    v83 = v198;
    if ((v92 & 1) == 0)
    {
      goto LABEL_48;
    }
  }

LABEL_25:
  v97 = v237;
LABEL_26:
  v98 = v206;
  v99 = v205;
  v100 = swift_getAssociatedConformanceWitness(v206, v73, v205, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v101 = *(v100 + 8);
  v102 = v204;
  v197 = v100;
  v196 = v100 + 8;
  v195 = v101;
  (v101)(&qword_18071E0A8, 256, v99);
  v103 = v98[3];
  v104 = v215;
  v194 = v98 + 3;
  v193 = v103;
  (v103)(v102, v73, v98);
  v105 = v233;
  v106 = v236;
  (*(v231 + 88))(v233, v236, v73);
  v84(v104, v73);
  v107 = v238;
  (*(v238 + 168))(v105, v106, v73, v238);
  v84(v105, v73);
  v210 = (v207 + 16);
  v209 = v97 + 96;
  v211 = (v214 + 8);
  v208 = v107 + 96;
  v192[1] = v202 + 3;
  v215 = (v207 + 40);
  v214 += 40;
  v108 = v212;
  v109 = v232;
  v110 = v225;
  v111 = v73;
  v112 = v228;
  v113 = v199;
  for (i = v97; ; i = v237)
  {
    v220(v108, &v109[v110], v113);
    v125 = v113;
    v126 = v113;
    v127 = v218;
    v128 = v218(v125, i);
    v129 = v108;
    v130 = v238;
    if (((v128 ^ v112(v111, v238)) & 1) == 0)
    {
      v136 = v223(v126, i);
      v137 = v239;
      v113 = v126;
      v73 = v111;
      if (v136 >= v230(v111, v130))
      {
        v115 = v233;
        (*v210)(v233, v137, v73);
        v116 = v227;
        (*(i + 96))(v115, v73, v130, v126, i);
        v117 = swift_getAssociatedConformanceWitness(v213, v73, v126, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        v118 = (*(v117 + 16))(v129, v116, v126, v117);
        v119 = *v211;
        (*v211)(v116, v126);
        v119(v129, v126);
        v108 = v129;
        v120 = v116;
        v121 = v115;
        v122 = v234;
        if ((v118 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v138 = v233;
        (*(v130 + 96))(v129, v126, i, v111, v130);
        v139 = v137;
        v121 = v138;
        v140 = (*(*(*(v130 + 32) + 8) + 16))(v138, v139, v111);
        v122 = v234;
        v234(v138, v111);
        v108 = v129;
        v120 = v227;
        if ((v140 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      goto LABEL_28;
    }

    v131 = v127(v126, i);
    v132 = v223(v126, i);
    v133 = v230(v111, v130);
    v113 = v126;
    v73 = v111;
    if ((v131 & 1) == 0)
    {
      break;
    }

    v120 = v227;
    v134 = v234;
    v135 = v211;
    if (v133 < v132)
    {
      v121 = v233;
      (*v210)(v233, v239, v111);
      (*(v237 + 96))(v121, v111, v238, v113);
      goto LABEL_43;
    }

    v145 = v202;
    v146 = v201;
    v147 = swift_getAssociatedConformanceWitness(v202, v113, v201, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v148 = v200;
    (*(v147 + 8))(&qword_18071E0A8, 256, v146, v147);
    (v145[3])(v148, v113, v145);
    v149 = swift_getAssociatedConformanceWitness(v213, v111, v113, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
    v108 = v212;
    LOBYTE(v146) = (*(v149 + 16))(v212, v120, v113, v149);
    v150 = *v135;
    (*v135)(v120, v113);
    v121 = v233;
    if (v146)
    {
      v150(v108, v113);
      v122 = v234;
    }

    else
    {
      v158 = v238;
      (*(v238 + 96))(v212, v113, v237, v111, v238);
      v159 = *(v158 + 32);
      v108 = v212;
      v160 = (*(*(v159 + 8) + 16))(v121, v239, v111);
      v122 = v234;
      v234(v121, v111);
      if ((v160 & 1) == 0)
      {
LABEL_46:
        v122(v239, v73);
        goto LABEL_47;
      }
    }

LABEL_28:
    v123 = v226;
    v124 = v231;
    specialized static FixedWidthInteger._random<A>(using:)(v73, v231, v226);
    v216(v121, v120, v236, v73, v124);
    v122(v123, v73);
    v109 = v232;
    (*v215)(v232, v121, v73);
    v110 = v225;
    (*v214)(&v109[v225], v120, v113);
    v111 = v73;
    v112 = v228;
  }

  v134 = v234;
  if (v132 < v133)
  {
    v141 = v238;
    v121 = v233;
    v142 = v212;
    (*(v238 + 96))(v212, v126, v237, v111, v238);
    v143 = *(v141 + 32);
    v108 = v142;
    v144 = (*(*(v143 + 8) + 16))(v121, v239, v111);
    v122 = v134;
    v134(v121, v111);
    v120 = v227;
    if ((v144 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_28;
  }

  v151 = v204;
  v195(&qword_18071E0A8, 256);
  v121 = v233;
  (v193)(v151, v111, v206);
  v152 = v238;
  v153 = v239;
  v154 = (*(*(*(v238 + 32) + 8) + 40))(v239, v121, v111);
  v134(v121, v111);
  v120 = v227;
  v135 = v211;
  if (v154)
  {
    (*v210)(v121, v153, v111);
    (*(v237 + 96))(v121, v111, v152, v113);
LABEL_43:
    v155 = swift_getAssociatedConformanceWitness(v213, v111, v113, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
    v108 = v212;
    v156 = (*(v155 + 16))(v212, v120, v113, v155);
    v157 = *v135;
    (*v135)(v120, v113);
    v157(v108, v113);
    v122 = v134;
    if ((v156 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_28;
  }

  (*v211)(v212, v113);
  v134(v153, v111);
LABEL_47:
  v83 = v198;
  v89 = v203;
LABEL_48:
  v161 = v232;
  (*(v207 + 16))(v83, v232, v73);
  return (*(v192[0] + 8))(v161, v89);
}

uint64_t RandomNumberGenerator.next<A>(upperBound:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v203 = a4;
  v202 = a2;
  v172 = a6;
  v209 = a5;
  v8 = *(a5 + 8);
  v9 = *(v8 + 24);
  swift_getAssociatedTypeWitness(255, v9, a3, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v11 = v10;
  v177 = *(swift_getAssociatedConformanceWitness(v9, a3, v10, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Numeric) + 16);
  swift_getAssociatedTypeWitness(0, v177, v11, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v176 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v175 = &v164 - v13;
  v14 = swift_checkMetadataState(0, v11);
  v188 = *(v14 - 1);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v184 = &v164 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v205 = &v164 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v189 = &v164 - v19;
  swift_getTupleTypeMetadata2(0, a3, v14, "high low ", 0);
  v21 = v20;
  v165 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v211 = &v164 - v22;
  v186 = v9;
  v180 = *(v9 + 16);
  swift_getAssociatedTypeWitness(0, v180, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v179 = v23;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v178 = &v164 - v25;
  v26 = *(a3 - 1);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = (&v164 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = MEMORY[0x1EEE9AC00](v27);
  v214 = &v164 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v201 = &v164 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v212 = &v164 - v34;
  v35 = *(v8 + 64);
  v36 = v35(a3, v8);
  v210 = a1;
  v215 = v8;
  v173 = v21;
  v206 = v35;
  v207 = v8 + 64;
  v185 = v29;
  if ((v36 & 1) == 0)
  {
    v43 = v35(a3, v8);
    v208 = *(v8 + 128);
    v44 = v208(a3, v8);
    if (v43)
    {
      v42 = v184;
      if (v44 <= 64)
      {
        v47 = v180;
        v48 = v179;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v180, a3, v179, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v50 = v178;
        (*(AssociatedConformanceWitness + 8))(&unk_18071E0A8, 256, v48, AssociatedConformanceWitness);
        v51 = v212;
        (v47[3])(v50, a3, v47);
        v40 = v210;
        LOBYTE(v48) = (*(*(*(v8 + 32) + 8) + 32))(v210, v51, a3);
        (*(v26 + 8))(v51, a3);
        v21 = v173;
        if ((v48 & 1) == 0 || (*(v8 + 120))(a3, v8))
        {
          goto LABEL_16;
        }

LABEL_11:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    else
    {
      v42 = v184;
      if (v44 < 64)
      {
        v40 = v210;
        v56 = (*(v8 + 120))(a3, v8);
        v21 = v173;
        if (v56)
        {
          goto LABEL_16;
        }

        goto LABEL_11;
      }
    }

    v216 = 0;
    v57 = *(v8 + 96);
    v58 = lazy protocol witness table accessor for type Int and conformance Int(v44, v45, v46);
    v59 = v212;
    v57(&v216, &type metadata for Int, v58, a3, v215);
    v8 = v215;
    v40 = v210;
    v60 = (*(*(*(v215 + 16) + 8) + 8))(v210, v59, a3);
    (*(v26 + 8))(v59, a3);
    v21 = v173;
    if (v60)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  v208 = *(v8 + 128);
  v37 = v208(a3, v8);
  v40 = a1;
  if (v37 >= 64)
  {
    v216 = 0;
    v52 = *(v8 + 96);
    v53 = lazy protocol witness table accessor for type Int and conformance Int(v37, v38, v39);
    v54 = v212;
    v52(&v216, &type metadata for Int, v53, a3, v215);
    v8 = v215;
    v55 = (*(*(*(v215 + 16) + 8) + 8))(a1, v54, a3);
    (*(v26 + 8))(v54, a3);
    v42 = v184;
    if (v55)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v41 = (*(v8 + 120))(a3, v8);
    v42 = v184;
    if (!v41)
    {
      goto LABEL_11;
    }
  }

LABEL_16:
  v61 = v201;
  v62 = v209;
  static FixedWidthInteger._random<A>(using:)(v204, a3, v202, v209, v203, v201);
  v63 = v40;
  v64 = *(v21 + 48);
  v65 = *(v62 + 120);
  v66 = v211;
  v191 = v62 + 120;
  v190 = v65;
  v65(v211, &v211[v64], v63, a3, v62);
  v174 = v26;
  v67 = v8;
  v68 = v26 + 8;
  v187 = *(v26 + 8);
  v187(v61, a3);
  v69 = *(v188 + 16);
  v200 = v64;
  v70 = &v66[v64];
  v71 = v67;
  v195 = v188 + 16;
  v194 = v69;
  v69(v189, v70, v14);
  v72 = swift_getAssociatedConformanceWitness(v67, a3, v14, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
  v73 = *(v72 + 64);
  LODWORD(v62) = v73(v14, v72);
  v74 = v206(a3, v67);
  v213 = v68;
  v199 = v72;
  v193 = v72 + 64;
  v192 = v73;
  if (((v62 ^ v74) & 1) == 0)
  {
    v82 = v189;
    v197 = *(v72 + 128);
    v198 = v72 + 128;
    v83 = v197(v14, v72);
    v84 = v210;
    v196 = v67 + 128;
    v80 = v83 < v208(a3, v67);
    v85 = v212;
    if (v80)
    {
      (*(v67 + 96))(v82, v14, v72, a3, v67);
      v86 = (*(*(*(v67 + 32) + 8) + 16))(v85, v84, a3);
      v187(v85, a3);
      v87 = v172;
      if ((v86 & 1) == 0)
      {
        goto LABEL_61;
      }

      v79 = v71;
      goto LABEL_35;
    }

    (*(v174 + 16))(v212, v84, a3);
    v88 = v205;
    (*(v72 + 96))(v85, a3, v67, v14, v72);
    v89 = swift_getAssociatedConformanceWitness(v186, a3, v14, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
    v90 = (*(v89 + 16))(v82, v88, v14, v89);
    v91 = *(v188 + 8);
    v91(v88, v14);
    v92 = v82;
    goto LABEL_33;
  }

  v75 = v73(v14, v72);
  v197 = *(v72 + 128);
  v198 = v72 + 128;
  v76 = v197(v14, v72);
  v196 = v67 + 128;
  v77 = v208(a3, v67);
  v78 = v212;
  v79 = v67;
  if ((v75 & 1) == 0)
  {
    v80 = v76 < v77;
    v81 = v205;
    if (v80)
    {
      (*(v67 + 96))(v189, v14, v72, a3, v67);
      v90 = (*(*(*(v67 + 32) + 8) + 16))(v78, v210, a3);
      v187(v78, a3);
      goto LABEL_34;
    }

    v101 = v180;
    v102 = v179;
    v103 = swift_getAssociatedConformanceWitness(v180, a3, v179, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v104 = v178;
    (*(v103 + 8))(&unk_18071E0A8, 256, v102, v103);
    v78 = v212;
    (v101[3])(v104, a3, v101);
    v105 = v210;
    v106 = (*(*(*(v79 + 32) + 8) + 40))(v210, v78, a3);
    v187(v78, a3);
    if ((v106 & 1) == 0)
    {
      (*(v188 + 8))(v189, v14);
      goto LABEL_60;
    }

    (*(v174 + 16))(v78, v105, a3);
    goto LABEL_32;
  }

  v80 = v77 < v76;
  v81 = v205;
  if (v80)
  {
    (*(v174 + 16))(v212, v210, a3);
LABEL_32:
    (*(v72 + 96))(v78, a3, v79, v14, v72);
    v107 = swift_getAssociatedConformanceWitness(v186, a3, v14, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
    v108 = v189;
    v90 = (*(v107 + 16))(v189, v81, v14, v107);
    v91 = *(v188 + 8);
    v91(v81, v14);
    v92 = v108;
LABEL_33:
    v91(v92, v14);
    v79 = v215;
    goto LABEL_34;
  }

  v93 = v177;
  v94 = v176;
  v95 = swift_getAssociatedConformanceWitness(v177, v14, v176, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v96 = v175;
  (*(v95 + 8))(&unk_18071E0A8, 256, v94, v95);
  (v93[3])(v96, v14, v93);
  v97 = swift_getAssociatedConformanceWitness(v186, a3, v14, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
  v98 = v189;
  v99 = (*(v97 + 16))(v189, v81, v14, v97);
  v100 = *(v188 + 8);
  v100(v81, v14);
  if ((v99 & 1) == 0)
  {
    v79 = v215;
    (*(v215 + 96))(v98, v14, v72, a3, v215);
    v90 = (*(*(*(v79 + 32) + 8) + 16))(v78, v210, a3);
    v187(v78, a3);
    v42 = v184;
LABEL_34:
    v87 = v172;
    if ((v90 & 1) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_35;
  }

  v100(v98, v14);
  v79 = v215;
  v42 = v184;
LABEL_35:
  v109 = v180;
  v110 = v179;
  v111 = swift_getAssociatedConformanceWitness(v180, a3, v179, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v112 = *(v111 + 8);
  v113 = v178;
  v171 = v111;
  v170 = v111 + 8;
  v169 = v112;
  (v112)(&unk_18071E0A8, 256, v110);
  v114 = v109[3];
  v115 = v185;
  v168 = v109 + 3;
  v167 = v114;
  (v114)(v113, a3, v109);
  v116 = v210;
  v117 = v212;
  (*(v209 + 88))(v212, v210, a3);
  v118 = v115;
  v119 = v187;
  v187(v118, a3);
  (*(v79 + 168))(v117, v116, a3, v79);
  v119(v117, a3);
  v120 = v119;
  v183 = (v174 + 16);
  v121 = v199;
  v182 = v199 + 96;
  v185 = (v188 + 8);
  v181 = v79 + 96;
  v166 = v177 + 3;
  v189 = (v174 + 40);
  v188 += 40;
  v122 = v211;
  v123 = v200;
  while (1)
  {
    v194(v42, &v122[v123], v14);
    v129 = v192;
    v130 = v192(v14, v121);
    v131 = v42;
    v132 = v215;
    if (((v130 ^ v206(a3, v215)) & 1) == 0)
    {
      v139 = v197(v14, v121);
      v140 = v214;
      if (v139 < v208(a3, v132))
      {
        v124 = v212;
        (*(v132 + 96))(v131, v14, v121, a3, v132);
        v125 = (*(*(*(v132 + 32) + 8) + 16))(v124, v140, a3);
        v120 = v187;
        v187(v124, a3);
        v42 = v131;
        v126 = v205;
        if ((v125 & 1) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_37;
      }

      v124 = v212;
      (*v183)(v212, v140, a3);
      v141 = v205;
      (*(v121 + 96))(v124, a3, v132, v14, v121);
      v142 = swift_getAssociatedConformanceWitness(v186, a3, v14, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
      v143 = (*(v142 + 16))(v131, v141, v14, v142);
      v144 = *v185;
      (*v185)(v141, v14);
      v144(v131, v14);
      v42 = v131;
      v126 = v141;
      goto LABEL_51;
    }

    v133 = v129(v14, v121);
    v134 = v197(v14, v121);
    v135 = v208(a3, v132);
    if (v133)
    {
      v126 = v205;
      if (v135 < v134)
      {
        v124 = v212;
        (*v183)(v212, v214, a3);
        (*(v121 + 96))(v124, a3, v215, v14, v121);
        v136 = swift_getAssociatedConformanceWitness(v186, a3, v14, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        v42 = v184;
        v137 = (*(v136 + 16))(v184, v126, v14, v136);
        v138 = *v185;
        (*v185)(v126, v14);
        v138(v42, v14);
        if ((v137 & 1) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_37;
      }

      v149 = v177;
      v150 = v176;
      v151 = swift_getAssociatedConformanceWitness(v177, v14, v176, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v152 = v175;
      (*(v151 + 8))(&unk_18071E0A8, 256, v150, v151);
      (v149[3])(v152, v14, v149);
      v153 = swift_getAssociatedConformanceWitness(v186, a3, v14, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
      v42 = v184;
      LOBYTE(v150) = (*(v153 + 16))(v184, v126, v14, v153);
      v154 = *v185;
      (*v185)(v126, v14);
      if (v150)
      {
        v154(v42, v14);
        v124 = v212;
        v120 = v187;
        goto LABEL_37;
      }

      v161 = v215;
      v124 = v212;
      (*(v215 + 96))(v42, v14, v121, a3, v215);
      v146 = (*(*(*(v161 + 32) + 8) + 16))(v124, v214, a3);
      v147 = v124;
      v148 = a3;
      v120 = v187;
      goto LABEL_54;
    }

    v126 = v205;
    if (v134 >= v135)
    {
      break;
    }

    v145 = v215;
    v124 = v212;
    v42 = v184;
    (*(v215 + 96))(v184, v14, v121, a3, v215);
    v146 = (*(*(*(v145 + 32) + 8) + 16))(v124, v214, a3);
    v147 = v124;
    v148 = a3;
LABEL_54:
    v120(v147, v148);
    if ((v146 & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_37:
    v127 = v201;
    v128 = v209;
    static FixedWidthInteger._random<A>(using:)(v204, a3, v202, v209, v203, v201);
    v190(v124, v126, v210, a3, v128);
    v120(v127, a3);
    v122 = v211;
    (*v189)(v211, v124, a3);
    v123 = v200;
    (*v188)(&v122[v200], v126, v14);
    v121 = v199;
  }

  v155 = v178;
  v169(&unk_18071E0A8, 256);
  v124 = v212;
  (v167)(v155, a3, v180);
  v157 = v214;
  v156 = v215;
  v158 = (*(*(*(v215 + 32) + 8) + 40))(v214, v124, a3);
  v120(v124, a3);
  v42 = v184;
  if (v158)
  {
    (*v183)(v124, v157, a3);
    (*(v121 + 96))(v124, a3, v156, v14, v121);
    v159 = swift_getAssociatedConformanceWitness(v186, a3, v14, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
    v143 = (*(v159 + 16))(v42, v126, v14, v159);
    v160 = *v185;
    (*v185)(v126, v14);
    v160(v42, v14);
LABEL_51:
    v120 = v187;
    if ((v143 & 1) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_37;
  }

  (*v185)(v184, v14);
  v120 = v187;
LABEL_59:
  v120(v214, a3);
LABEL_60:
  v87 = v172;
LABEL_61:
  v162 = v211;
  (*(v174 + 16))(v87, v211, a3);
  return (*(v165 + 8))(v162, v173);
}

uint64_t specialized static FixedWidthInteger.random<A>(in:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, swift *a4@<X3>, uint64_t a5@<X8>)
{
  v58 = a2;
  v59 = a5;
  v8 = *(a4 + 1);
  v57 = *(v8 + 3);
  swift_getAssociatedTypeWitness(255, v57, a3, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v57, a3, v9, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Numeric);
  v50 = *(AssociatedConformanceWitness + 16);
  swift_getAssociatedTypeWitness(0, v50, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v47 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v46 = &v45 - v13;
  v51 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_checkMetadataState(0, v10);
  v17 = *(v16 - 1);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v54 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v52 = &v45 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v45 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v45 - v25;
  type metadata accessor for ClosedRange(0, a3, *(*(v8 + 4) + 8), v27);
  v28 = *(a4 + 11);
  v55 = a1;
  v28(v15, a1, a3, a4);
  v29 = swift_getAssociatedConformanceWitness(v8, a3, v16, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
  v30 = *(v29 + 96);
  v49 = v15;
  v31 = v15;
  v32 = v29;
  v60 = v8;
  v45 = v30;
  v30(v31, a3, v8, v16, v29);
  v56 = a4;
  v33 = swift_getAssociatedConformanceWitness(a4, a3, v16, &protocol requirements base descriptor for FixedWidthInteger, associated conformance descriptor for FixedWidthInteger.Numeric.Magnitude: FixedWidthInteger);
  (*(v33 + 64))(v16, v33);
  v34 = swift_getAssociatedConformanceWitness(v57, a3, v16, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
  LOBYTE(v10) = (*(*(v34 + 8) + 8))(v26, v24, v16);
  v35 = *(v17 + 8);
  v57 = (v17 + 8);
  v35(v24, v16);
  if (v10)
  {
    v35(v26, v16);
    specialized static FixedWidthInteger._random<A>(using:)(v16, v33, v24);
  }

  else
  {
    v48 = v32;
    v36 = v50;
    v37 = v47;
    v38 = swift_getAssociatedConformanceWitness(v50, v16, v47, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v39 = v46;
    (*(v38 + 8))(&qword_1806729C0, 512, v37, v38);
    (v36[3])(v39, v16, v36);
    (*(*(AssociatedConformanceWitness + 8) + 32))(v26, v24, v16);
    v35(v24, v16);
    v40 = v49;
    (*(v51 + 16))(v49, v55, a3);
    v41 = v52;
    v45(v40, a3, v60, v16, v48);
    swift_getAssociatedConformanceWitness(v56, a3, v16, &protocol requirements base descriptor for FixedWidthInteger, associated conformance descriptor for FixedWidthInteger.Numeric.Magnitude: UnsignedInteger);
    v42 = v54;
    specialized RandomNumberGenerator.next<A>(upperBound:)(v26, v16, v33, v54);
    v35(v26, v16);
    (*(v33 + 80))(v24, v42, v16, v33);
    v35(v42, v16);
    v43 = v41;
    v32 = v48;
    v35(v43, v16);
  }

  return (*(v60 + 12))(v24, v16, v32, a3);
}

uint64_t static FixedWidthInteger.random<A>(in:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, swift *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v61 = a2;
  v62 = a6;
  v63 = a7;
  v10 = *(a5 + 1);
  v59 = *(v10 + 3);
  v60 = a4;
  swift_getAssociatedTypeWitness(255, v59, a3, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v59, a3, v11, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Numeric);
  v55 = *(AssociatedConformanceWitness + 16);
  swift_getAssociatedTypeWitness(0, v55, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v51 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v50 = &v47 - v15;
  v53 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_checkMetadataState(0, v12);
  v19 = *(v18 - 1);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v56 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v54 = &v47 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v47 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v47 - v27;
  type metadata accessor for ClosedRange(0, a3, *(*(v10 + 4) + 8), v29);
  v30 = *(a5 + 11);
  v58 = a1;
  v30(v17, a1, a3, a5);
  v31 = swift_getAssociatedConformanceWitness(v10, a3, v18, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
  v32 = *(v31 + 96);
  v52 = v17;
  v33 = v17;
  v34 = v31;
  v64 = v10;
  v48 = v32;
  v32(v33, a3, v10, v18, v31);
  v35 = swift_getAssociatedConformanceWitness(a5, a3, v18, &protocol requirements base descriptor for FixedWidthInteger, associated conformance descriptor for FixedWidthInteger.Numeric.Magnitude: FixedWidthInteger);
  (*(v35 + 64))(v18, v35);
  v36 = swift_getAssociatedConformanceWitness(v59, a3, v18, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
  LOBYTE(v12) = (*(*(v36 + 8) + 8))(v28, v26, v18);
  v37 = *(v19 + 8);
  v59 = (v19 + 8);
  v37(v26, v18);
  if (v12)
  {
    v37(v28, v18);
    static FixedWidthInteger._random<A>(using:)(v61, v18, v60, v35, v62, v26);
  }

  else
  {
    v38 = v55;
    v39 = v51;
    v40 = swift_getAssociatedConformanceWitness(v55, v18, v51, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v41 = *(v40 + 8);
    v49 = v34;
    v42 = v50;
    v41(&qword_1806729C0, 512, v39, v40);
    (v38[3])(v42, v18, v38);
    (*(*(AssociatedConformanceWitness + 8) + 32))(v28, v26, v18);
    v37(v26, v18);
    v43 = v52;
    (*(v53 + 16))(v52, v58, a3);
    v44 = v54;
    v48(v43, a3, v64, v18, v49);
    v45 = v56;
    RandomNumberGenerator.next<A>(upperBound:)(v28, v60, v18, v62, v35, v56);
    v37(v28, v18);
    (*(v35 + 80))(v26, v45, v18, v35);
    v37(v45, v18);
    v37(v44, v18);
    v34 = v49;
  }

  return (*(v64 + 12))(v26, v18, v34, a3);
}

uint64_t static FixedWidthInteger._nonMaskingRightShiftGeneric<A>(_:_:)(uint64_t a1, void (*a2)(char *, const char *), const char *a3, void (*a4)(char *, const char *), uint64_t a5, uint64_t a6)
{
  v163 = a1;
  v164 = a2;
  v165 = *(a5 + 8);
  v10 = *(*(v165 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v10, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v160 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v156 = v148 - v13;
  v170 = *(a3 - 1);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v161 = v148 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v158 = v148 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v162 = v148 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v166 = v148 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = v148 - v22;
  v152 = *(*(a6 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v152, a4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v25 = v24;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v151 = v148 - v27;
  v157 = *(a4 - 1);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v153 = v148 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v154 = v148 - v30;
  v31 = *(a5 + 56);
  v168 = a5 + 56;
  v169 = a5;
  v167 = v31;
  v32 = v31(a3, a5);
  v33 = -v32;
  if (__OFSUB__(0, v32))
  {
    __break(1u);
LABEL_64:
    a4(v162, a3);
    v136 = v167(a3, v169);
    if (!__OFSUB__(0, v136))
    {
      v137 = v169;
      if (-v136 < v23)
      {
        v138 = (a4)(v25, a3);
        v171[0] = -v23;
        v139 = v165;
        v140 = *(v165 + 96);
        v143 = lazy protocol witness table accessor for type Int and conformance Int(v138, v141, v142);
        v144 = v158;
        v140(v171, &type metadata for Int, v143, a3, v139);
        v132 = v155;
        v145 = v166;
        (*(v137 + 216))(v166, v144, a3, v137);
        a4(v144, a3);
        a4(v145, a3);
        goto LABEL_61;
      }

      goto LABEL_72;
    }

LABEL_71:
    __break(1u);
LABEL_72:
    a4(v166, a3);
    v132 = v155;
    v146 = v155;
    v147 = v25;
    goto LABEL_68;
  }

  v155 = v23;
  v35 = (a6 + 64);
  v34 = *(a6 + 64);
  v36 = v34(a4, a6);
  v159 = v10;
  v149 = v25;
  if (v36)
  {
    v37 = *(a6 + 128);
    v38 = v37(a4, a6);
    if (v38 < 64)
    {
      goto LABEL_11;
    }

LABEL_16:
    v171[0] = v33;
    v51 = *(a6 + 96);
    v52 = lazy protocol witness table accessor for type Int and conformance Int(v38, v39, v40);
    v150 = (a6 + 64);
    v25 = v37;
    v53 = v34;
    v54 = v154;
    v51(v171, &type metadata for Int, v52, a4, a6);
    v55 = (*(*(*(a6 + 32) + 8) + 16))(v164, v54, a4);
    v56 = v54;
    v34 = v53;
    v37 = v25;
    v35 = v150;
    (*(v157 + 8))(v56, a4);
    if ((v55 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v41 = v34(a4, a6);
  v37 = *(a6 + 128);
  v38 = v37(a4, a6);
  if ((v41 & 1) == 0)
  {
    if (v38 < 64)
    {
      goto LABEL_11;
    }

    if (v33 < 1)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v150 = v37;
  v148[0] = v34;
  if (v38 > 64)
  {
    v171[0] = v33;
    v42 = *(a6 + 96);
    v43 = lazy protocol witness table accessor for type Int and conformance Int(v38, v39, v40);
    v44 = v154;
    v42(v171, &type metadata for Int, v43, a4, a6);
    v45 = (*(*(*(a6 + 32) + 8) + 16))(v164, v44, a4);
    (*(v157 + 8))(v44, a4);
    v34 = v148[0];
    v37 = v150;
    if ((v45 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v46 = v152;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v152, a4, v25, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v48 = v151;
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v25, AssociatedConformanceWitness);
  v49 = v154;
  (v46[3])(v48, a4, v46);
  v50 = (*(*(*(a6 + 32) + 8) + 16))(v164, v49, a4);
  (*(v157 + 8))(v49, a4);
  v34 = v148[0];
  v37 = v150;
  if (v50)
  {
    goto LABEL_17;
  }

LABEL_11:
  if ((*(a6 + 120))(a4, a6) >= v33)
  {
LABEL_19:
    v59 = v167(a3, v169);
    v60 = v34(a4, a6);
    v61 = v37(a4, a6);
    v148[1] = a6 + 128;
    if (v60)
    {
      if (v61 > 64)
      {
        v171[0] = v59;
        v64 = *(a6 + 96);
        v65 = lazy protocol witness table accessor for type Int and conformance Int(v61, v62, v63);
        v150 = v35;
        v66 = v37;
        v67 = v34;
        v68 = v154;
        v64(v171, &type metadata for Int, v65, a4, a6);
        v69 = v164;
        v70 = (*(*(*(a6 + 32) + 8) + 16))(v68, v164, a4);
        goto LABEL_27;
      }
    }

    else if (v61 > 63)
    {
      v69 = v164;
      if ((v59 & 0x8000000000000000) == 0)
      {
        v171[0] = v59;
        v71 = *(a6 + 96);
        v72 = lazy protocol witness table accessor for type Int and conformance Int(v61, v62, v63);
        v150 = v35;
        v66 = v37;
        v67 = v34;
        v68 = v154;
        v71(v171, &type metadata for Int, v72, a4, a6);
        v70 = (*(*(*(a6 + 32) + 8) + 16))(v68, v69, a4);
LABEL_27:
        v73 = v70;
        v74 = v68;
        v34 = v67;
        v37 = v66;
        (*(v157 + 8))(v74, a4);
        if (v73)
        {
          goto LABEL_28;
        }

LABEL_29:
        v75 = v153;
        (*(v157 + 16))(v153, v69, a4);
        if ((v34(a4, a6) & 1) == 0 || v37(a4, a6) < 65)
        {
          goto LABEL_43;
        }

        if (v34(a4, a6))
        {
          v76 = v37(a4, a6);
          if (v76 >= 64)
          {
            v171[0] = 0x8000000000000000;
            v79 = *(a6 + 96);
            v80 = lazy protocol witness table accessor for type Int and conformance Int(v76, v77, v78);
            v81 = v37;
            v82 = v34;
            v83 = v154;
            v79(v171, &type metadata for Int, v80, a4, a6);
            v75 = v153;
            v84 = (*(*(*(a6 + 32) + 8) + 16))(v153, v83, a4);
            v85 = v83;
            v34 = v82;
            v37 = v81;
            (*(v157 + 8))(v85, a4);
            if (v84)
            {
              goto LABEL_47;
            }

LABEL_43:
            v99 = v34;
            v100 = v37(a4, a6);
            v58 = v159;
            if (v100 <= 64 && (v37(a4, a6) != 64 || (v99(a4, a6) & 1) != 0))
            {
              goto LABEL_53;
            }

            v101 = v99(a4, a6);
            v102 = v37(a4, a6);
            if (v101)
            {
              if (v102 >= 65)
              {
                goto LABEL_46;
              }
            }

            else if (v102 >= 64)
            {
LABEL_46:
              v171[0] = 0x7FFFFFFFFFFFFFFFLL;
              v105 = *(a6 + 96);
              v106 = lazy protocol witness table accessor for type Int and conformance Int(v102, v103, v104);
              v107 = v154;
              v105(v171, &type metadata for Int, v106, a4, a6);
              v108 = (*(*(*(a6 + 32) + 8) + 16))(v107, v75, a4);
              (*(v157 + 8))(v107, a4);
              if (v108)
              {
                goto LABEL_47;
              }

              goto LABEL_53;
            }

            (*(a6 + 120))(a4, a6);
LABEL_53:
            v23 = (*(a6 + 120))(a4, a6);
            (*(v157 + 8))(v75, a4);
            goto LABEL_54;
          }

LABEL_42:
          (*(a6 + 120))(a4, a6);
          goto LABEL_43;
        }

        v86 = v34(a4, a6);
        v87 = v37(a4, a6);
        if ((v86 & 1) == 0)
        {
          if (v87 >= 64)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        }

        v90 = v152;
        v150 = v37;
        v148[0] = v34;
        if (v87 <= 64)
        {
          v95 = v149;
          v96 = swift_getAssociatedConformanceWitness(v152, a4, v149, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
          v97 = v151;
          (*(v96 + 8))(&qword_18071E0A8, 256, v95, v96);
          v98 = v154;
          (v90[3])(v97, a4, v90);
          LOBYTE(v95) = (*(*(*(a6 + 32) + 8) + 16))(v75, v98, a4);
          (*(v157 + 8))(v98, a4);
          v34 = v148[0];
          v37 = v150;
          if ((v95 & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v171[0] = 0x8000000000000000;
          v91 = *(a6 + 96);
          v92 = lazy protocol witness table accessor for type Int and conformance Int(v87, v88, v89);
          v93 = v154;
          v91(v171, &type metadata for Int, v92, a4, a6);
          v75 = v153;
          v94 = (*(*(*(a6 + 32) + 8) + 16))(v153, v93, a4);
          (*(v157 + 8))(v93, a4);
          v34 = v148[0];
          v37 = v150;
          if ((v94 & 1) == 0)
          {
            goto LABEL_43;
          }
        }

LABEL_47:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_28:
      v23 = v167(a3, v169);
      v58 = v159;
      goto LABEL_54;
    }

    v69 = v164;
    if (v59 >= (*(a6 + 120))(a4, a6))
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_17:
  v57 = v167(a3, v169);
  v23 = -v57;
  if (__OFSUB__(0, v57))
  {
    __break(1u);
    goto LABEL_70;
  }

  v58 = v159;
LABEL_54:
  a4 = *(v170 + 32);
  (a4)(v166, v163, a3);
  v109 = (*(v165 + 64))(a3);
  v110 = v160;
  v25 = v161;
  v164 = a4;
  if (v109)
  {
    v111 = v167(a3, v169);
    if (!__OFSUB__(v111, 1))
    {
      v171[0] = v111 - 1;
      v114 = v165;
      v115 = *(v165 + 96);
      v116 = lazy protocol witness table accessor for type Int and conformance Int(v111, v112, v113);
      v117 = v158;
      v58 = v159;
      v118 = v114;
      v119 = v169;
      v120 = v170;
      v115(v171, &type metadata for Int, v116, a3, v118);
      (*(v119 + 200))(v166, v117, a3, v119);
      v121 = v117;
      v110 = v160;
      v25 = v161;
      (*(v120 + 8))(v121, a3);
      v122 = swift_getAssociatedConformanceWitness(v58, a3, v110, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v123 = v156;
      goto LABEL_58;
    }

LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v122 = swift_getAssociatedConformanceWitness(v58, a3, v160, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v123 = v156;
  (*(v122 + 8))(&qword_18071E0A8, 256, v110, v122);
  (*(v58 + 3))(v123, a3, v58);
LABEL_58:
  (*(v122 + 8))(&qword_18071E0A8, 256, v110, v122);
  (*(v58 + 3))(v123, a3, v58);
  a4 = *(v170 + 8);
  v170 += 8;
  if (v23 < 0)
  {
    goto LABEL_64;
  }

  a4(v25, a3);
  if (v23 >= v167(a3, v169))
  {
    a4(v166, a3);
    v132 = v155;
    v146 = v155;
    v147 = v162;
LABEL_68:
    v134 = v164;
    (v164)(v146, v147, a3);
    return v134(v163, v132, a3);
  }

  v124 = (a4)(v162, a3);
  v171[0] = v23;
  v125 = v169;
  v126 = v165;
  v127 = *(v165 + 96);
  v130 = lazy protocol witness table accessor for type Int and conformance Int(v124, v128, v129);
  v131 = v158;
  v127(v171, &type metadata for Int, v130, a3, v126);
  v132 = v155;
  v133 = v166;
  (*(v125 + 200))(v166, v131, a3, v125);
  a4(v131, a3);
  a4(v133, a3);
LABEL_61:
  v134 = v164;
  return v134(v163, v132, a3);
}

uint64_t static FixedWidthInteger.>>= infix<A>(_:_:)(const char *a1, char *a2, const char *a3, unint64_t a4, uint64_t (*a5)(const char *, char *), char *a6)
{
  v6 = a6;
  v8 = a4;
  v151 = a1;
  v139 = *(*(a6 + 3) + 16);
  swift_getAssociatedTypeWitness(0, v139, a4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v138 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v137 = &v135 - v12;
  v152 = *(a5 + 1);
  v13 = *(*(v152 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v13, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v149 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v143 = &v135 - v16;
  v156 = *(a3 - 1);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v148 = &v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v146 = &v135 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v150 = &v135 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v153 = &v135 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v135 - v26;
  v144 = *(v8 - 1);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v140 = &v135 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v141 = &v135 - v30;
  v154 = *(a5 + 7);
  v155 = (a5 + 56);
  v31 = v154(a3, a5);
  v32 = -v31;
  if (__OFSUB__(0, v31))
  {
    __break(1u);
    goto LABEL_63;
  }

  v145 = a5;
  v142 = v27;
  v27 = (v6 + 64);
  v33 = *(v6 + 8);
  v34 = v33(v8, v6);
  v147 = v13;
  if (v34)
  {
    a5 = *(v6 + 16);
    v35 = a5(v8, v6);
    if (v35 < 64)
    {
LABEL_14:
      if ((*(v6 + 15))(v8, v6) >= v32)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

LABEL_11:
    v157[0] = v32;
    v43 = *(v6 + 12);
    v44 = lazy protocol witness table accessor for type Int and conformance Int(v35, v36, v37);
    v136 = (v6 + 64);
    v45 = v33;
    v46 = v141;
    v43(v157, &type metadata for Int, v44, v8, v6);
    v47 = (*(*(*(v6 + 4) + 8) + 16))(a2, v46, v8);
    v48 = v46;
    v33 = v45;
    v27 = v136;
    (*(v144 + 1))(v48, v8);
    if ((v47 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v38 = v33(v8, v6);
  a5 = *(v6 + 16);
  v35 = a5(v8, v6);
  if ((v38 & 1) == 0)
  {
    if (v35 < 64)
    {
      goto LABEL_14;
    }

    if (v32 <= 0)
    {
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  v136 = v33;
  if (v35 > 64)
  {
    v157[0] = v32;
    v39 = *(v6 + 12);
    v40 = lazy protocol witness table accessor for type Int and conformance Int(v35, v36, v37);
    v41 = v141;
    v39(v157, &type metadata for Int, v40, v8, v6);
    v42 = (*(*(*(v6 + 4) + 8) + 16))(a2, v41, v8);
    (*(v144 + 1))(v41, v8);
    v33 = v136;
    if ((v42 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v49 = v138;
  v50 = v139;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v139, v8, v138, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v52 = *(AssociatedConformanceWitness + 8);
  v135 = a2;
  v53 = v137;
  v52(&qword_18071E0A8, 256, v49, AssociatedConformanceWitness);
  v54 = v141;
  v55 = v53;
  a2 = v135;
  (v50[3])(v55, v8, v50);
  LOBYTE(v49) = (*(*(*(v6 + 4) + 8) + 16))(a2, v54, v8);
  (*(v144 + 1))(v54, v8);
  v33 = v136;
  if ((v49 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  a5 = v145;
  v56 = v154(a3, v145);
  v27 = -v56;
  if (!__OFSUB__(0, v56))
  {
    goto LABEL_27;
  }

  __break(1u);
LABEL_18:
  v57 = v154(a3, v145);
  v58 = v33(v8, v6);
  v135 = v6 + 128;
  v59 = a5(v8, v6);
  if ((v58 & 1) == 0)
  {
    if (v59 >= 64)
    {
      if ((v57 & 0x8000000000000000) == 0)
      {
        goto LABEL_25;
      }

LABEL_26:
      a5 = v145;
      v27 = v154(a3, v145);
LABEL_27:
      v8 = v151;
      v68 = v147;
      v69 = v149;
      goto LABEL_53;
    }

LABEL_22:
    if (v57 >= (*(v6 + 15))(v8, v6))
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if (v59 <= 64)
  {
    goto LABEL_22;
  }

LABEL_25:
  v157[0] = v57;
  v62 = *(v6 + 12);
  v63 = lazy protocol witness table accessor for type Int and conformance Int(v59, v60, v61);
  v136 = v27;
  v64 = v33;
  v65 = v141;
  v62(v157, &type metadata for Int, v63, v8, v6);
  v66 = (*(*(*(v6 + 4) + 8) + 16))(v65, a2, v8);
  v67 = v65;
  v33 = v64;
  v27 = v136;
  (*(v144 + 1))(v67, v8);
  if (v66)
  {
    goto LABEL_26;
  }

LABEL_28:
  v70 = v140;
  (*(v144 + 2))(v140, a2, v8);
  if ((v33(v8, v6) & 1) == 0 || a5(v8, v6) < 65)
  {
    goto LABEL_42;
  }

  if ((v33(v8, v6) & 1) == 0)
  {
    v80 = v33(v8, v6);
    v81 = a5(v8, v6);
    if ((v80 & 1) == 0)
    {
      v70 = v140;
      if (v81 >= 64)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    v136 = a5;
    v84 = v33;
    if (v81 <= 64)
    {
      v89 = v138;
      v90 = v139;
      v91 = swift_getAssociatedConformanceWitness(v139, v8, v138, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v92 = v137;
      (*(v91 + 8))(&qword_18071E0A8, 256, v89, v91);
      v93 = v141;
      (v90[3])(v92, v8, v90);
      v70 = v140;
      LOBYTE(v89) = (*(*(*(v6 + 4) + 8) + 16))(v140, v93, v8);
      (*(v144 + 1))(v93, v8);
      v33 = v84;
      a5 = v136;
      if ((v89 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v157[0] = 0x8000000000000000;
      v85 = *(v6 + 12);
      v86 = lazy protocol witness table accessor for type Int and conformance Int(v81, v82, v83);
      v87 = v141;
      v85(v157, &type metadata for Int, v86, v8, v6);
      v70 = v140;
      v88 = (*(*(*(v6 + 4) + 8) + 16))(v140, v87, v8);
      (*(v144 + 1))(v87, v8);
      v33 = v84;
      a5 = v136;
      if ((v88 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

LABEL_46:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v71 = a5(v8, v6);
  if (v71 < 64)
  {
LABEL_41:
    (*(v6 + 15))(v8, v6);
    goto LABEL_42;
  }

  v157[0] = 0x8000000000000000;
  v74 = *(v6 + 12);
  v75 = lazy protocol witness table accessor for type Int and conformance Int(v71, v72, v73);
  v136 = v27;
  v76 = v33;
  v77 = v141;
  v74(v157, &type metadata for Int, v75, v8, v6);
  v70 = v140;
  v78 = (*(*(*(v6 + 4) + 8) + 16))(v140, v77, v8);
  v79 = v77;
  v33 = v76;
  (*(v144 + 1))(v79, v8);
  if (v78)
  {
    goto LABEL_46;
  }

LABEL_42:
  v94 = a5(v8, v6);
  v68 = v147;
  v69 = v149;
  if (v94 <= 64 && (a5(v8, v6) != 64 || (v33(v8, v6) & 1) != 0))
  {
    goto LABEL_52;
  }

  v95 = v33(v8, v6);
  v96 = a5(v8, v6);
  if (v95)
  {
    if (v96 >= 65)
    {
      goto LABEL_45;
    }

LABEL_51:
    v70 = v140;
    (*(v6 + 15))(v8, v6);
    goto LABEL_52;
  }

  if (v96 < 64)
  {
    goto LABEL_51;
  }

LABEL_45:
  v157[0] = 0x7FFFFFFFFFFFFFFFLL;
  v99 = *(v6 + 12);
  v100 = lazy protocol witness table accessor for type Int and conformance Int(v96, v97, v98);
  v101 = v141;
  v99(v157, &type metadata for Int, v100, v8, v6);
  v70 = v140;
  v102 = (*(*(*(v6 + 4) + 8) + 16))(v101, v140, v8);
  (*(v144 + 1))(v101, v8);
  if (v102)
  {
    goto LABEL_46;
  }

LABEL_52:
  v27 = (*(v6 + 15))(v8, v6);
  (*(v144 + 1))(v70, v8);
  a5 = v145;
  v8 = v151;
LABEL_53:
  v103 = *(v156 + 32);
  v103(v153, v8, a3);
  v104 = (*(v152 + 64))(a3);
  v6 = v148;
  v144 = v103;
  if (v104)
  {
    v105 = v154(a3, a5);
    if (__OFSUB__(v105, 1))
    {
      __break(1u);
      goto LABEL_69;
    }

    v157[0] = v105 - 1;
    v108 = v152;
    v109 = *(v152 + 96);
    v110 = lazy protocol witness table accessor for type Int and conformance Int(v105, v106, v107);
    v111 = v146;
    v112 = v108;
    v69 = v149;
    v109(v157, &type metadata for Int, v110, a3, v112);
    v6 = v148;
    (*(a5 + 25))(v153, v111, a3, a5);
    v68 = v147;
    (*(v156 + 8))(v111, a3);
    v113 = swift_getAssociatedConformanceWitness(v68, a3, v69, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v114 = v143;
  }

  else
  {
    v113 = swift_getAssociatedConformanceWitness(v68, a3, v69, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v114 = v143;
    (*(v113 + 8))(&qword_18071E0A8, 256, v69, v113);
    (*(v68 + 3))(v114, a3, v68);
  }

  (*(v113 + 8))(&qword_18071E0A8, 256, v69, v113);
  (*(v68 + 3))(v114, a3, v68);
  v8 = *(v156 + 8);
  v156 += 8;
  if (v27 < 0)
  {
LABEL_63:
    (v8)(v150, a3);
    v126 = v154(a3, a5);
    if (!__OFSUB__(0, v126))
    {
      if (-v126 < v27)
      {
        v127 = (v8)(v6, a3);
        v157[0] = -v27;
        v128 = v152;
        v129 = *(v152 + 96);
        v132 = lazy protocol witness table accessor for type Int and conformance Int(v127, v130, v131);
        v121 = v146;
        v129(v157, &type metadata for Int, v132, a3, v128);
        v122 = v142;
        v123 = v153;
        (*(a5 + 27))(v153, v121, a3, a5);
        goto LABEL_60;
      }

      goto LABEL_70;
    }

LABEL_69:
    __break(1u);
LABEL_70:
    (v8)(v153, a3);
    v122 = v142;
    v133 = v142;
    v134 = v6;
    goto LABEL_67;
  }

  (v8)(v6, a3);
  if (v27 >= v154(a3, a5))
  {
    (v8)(v153, a3);
    v122 = v142;
    v133 = v142;
    v134 = v150;
LABEL_67:
    v124 = v144;
    v144(v133, v134, a3);
    return v124(v151, v122, a3);
  }

  v115 = (v8)(v150, a3);
  v157[0] = v27;
  v116 = v152;
  v117 = *(v152 + 96);
  v120 = lazy protocol witness table accessor for type Int and conformance Int(v115, v118, v119);
  v121 = v146;
  v117(v157, &type metadata for Int, v120, a3, v116);
  v122 = v142;
  v123 = v153;
  (*(a5 + 25))(v153, v121, a3, a5);
LABEL_60:
  (v8)(v121, a3);
  (v8)(v123, a3);
  v124 = v144;
  return v124(v151, v122, a3);
}

uint64_t static FixedWidthInteger._nonMaskingRightShift(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v47 = a2;
  v49 = a1;
  v45 = a5;
  v7 = *(a4 + 8);
  v8 = *(*(v7 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v10 = v9;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v44 - v12;
  v48 = *(a3 - 1);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v44 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v44 - v20;
  v22 = (*(v7 + 64))(a3, v7);
  v46 = v16;
  v50 = v21;
  if (v22)
  {
    v44 = v19;
    v23 = (*(a4 + 56))(a3, a4);
    if (__OFSUB__(v23, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    v51 = v23 - 1;
    v26 = *(v7 + 96);
    v27 = lazy protocol witness table accessor for type Int and conformance Int(v23, v24, v25);
    v19 = v44;
    v26(&v51, &type metadata for Int, v27, a3, v7);
    (*(a4 + 200))(v49, v19, a3, a4);
    v28 = v48;
    (*(v48 + 8))(v19, a3);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, a3, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, a3, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v10, AssociatedConformanceWitness);
    (*(v8 + 24))(v13, a3, v8);
    v28 = v48;
  }

  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v10, AssociatedConformanceWitness);
  v16 = v46;
  (*(v8 + 24))(v13, a3, v8);
  v30 = *(v28 + 8);
  v31 = v47;
  if (v47 < 0)
  {
    v30(v50, a3);
    v38 = (*(a4 + 56))(a3, a4);
    if (!__OFSUB__(0, v38))
    {
      if (-v38 < v31)
      {
        v39 = (v30)(v16, a3);
        v51 = -v31;
        v40 = *(v7 + 96);
        v43 = lazy protocol witness table accessor for type Int and conformance Int(v39, v41, v42);
        v40(&v51, &type metadata for Int, v43, a3, v7);
        (*(a4 + 216))(v49, v19, a3, a4);
        return (v30)(v19, a3);
      }

      return (*(v48 + 32))(v45, v16, a3);
    }

LABEL_16:
    __break(1u);
    return (*(v48 + 32))(v45, v16, a3);
  }

  v30(v16, a3);
  if ((*(a4 + 56))(a3, a4) > v31)
  {
    v32 = (v30)(v50, a3);
    v51 = v31;
    v33 = *(v7 + 96);
    v36 = lazy protocol witness table accessor for type Int and conformance Int(v32, v34, v35);
    v33(&v51, &type metadata for Int, v36, a3, v7);
    (*(a4 + 200))(v49, v19, a3, a4);
    return (v30)(v19, a3);
  }

  return (*(v48 + 32))(v45, v50, a3);
}

uint64_t static FixedWidthInteger._nonMaskingLeftShiftGeneric<A>(_:_:)(uint64_t a1, uint64_t a2, const char *a3, void (*a4)(char *, const char *), uint64_t a5, uint64_t a6)
{
  v11 = *(a5 + 8);
  v150 = a1;
  v151 = v11;
  v12 = *(*(v11 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v12, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v147 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v146 = &v133 - v15;
  v156 = *(a3 - 1);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v149 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v144 = &v133 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v148 = &v133 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v152 = &v133 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v133 - v24;
  v138 = *(*(a6 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v138, a4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v137 = v26;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v136 = &v133 - v28;
  v143 = *(a4 - 1);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v139 = &v133 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v140 = &v133 - v31;
  v32 = *(a5 + 56);
  v154 = a5 + 56;
  v155 = a5;
  v153 = v32;
  v33 = v32(a3, a5);
  v34 = -v33;
  if (__OFSUB__(0, v33))
  {
    __break(1u);
LABEL_60:
    a4(v149, a3);
    v121 = v153(a3, v155);
    if (!__OFSUB__(0, v121))
    {
      v122 = v155;
      if (-v121 < v25)
      {
        v123 = (a4)(v148, a3);
        v157[0] = -v25;
        v124 = v151;
        v125 = *(v151 + 96);
        v128 = lazy protocol witness table accessor for type Int and conformance Int(v123, v126, v127);
        v129 = v144;
        v125(v157, &type metadata for Int, v128, a3, v124);
        v117 = v141;
        v130 = v152;
        (*(v122 + 200))(v152, v129, a3, v122);
        a4(v129, a3);
        a4(v130, a3);
        goto LABEL_57;
      }

      goto LABEL_68;
    }

LABEL_67:
    __break(1u);
LABEL_68:
    a4(v152, a3);
    v117 = v141;
    v131 = v141;
    v132 = v148;
    goto LABEL_64;
  }

  v141 = v25;
  v35 = *(a6 + 64);
  v36 = v35(a4, a6);
  v145 = v12;
  if (v36)
  {
    v142 = *(a6 + 128);
    v37 = v142(a4, a6);
    if (v37 < 64)
    {
LABEL_14:
      if ((*(a6 + 120))(a4, a6) < v34)
      {
        goto LABEL_15;
      }

LABEL_17:
      v61 = v153(a3, v155);
      v62 = v35(a4, a6);
      v63 = v142(a4, a6);
      v135 = v35;
      if (v62)
      {
        if (v63 > 64)
        {
LABEL_24:
          v157[0] = v61;
          v66 = *(a6 + 96);
          v67 = lazy protocol witness table accessor for type Int and conformance Int(v63, v64, v65);
          v68 = v140;
          v66(v157, &type metadata for Int, v67, a4, a6);
          v69 = (*(*(*(a6 + 32) + 8) + 16))(v68, a2, a4);
          (*(v143 + 1))(v68, a4);
          if (v69)
          {
            goto LABEL_25;
          }

LABEL_26:
          v70 = v139;
          (*(v143 + 2))(v139, a2, a4);
          if ((v135(a4, a6) & 1) != 0 && v142(a4, a6) >= 65)
          {
            v71 = v135;
            if (v135(a4, a6))
            {
              v72 = v142(a4, a6);
              if (v72 < 64)
              {
                goto LABEL_38;
              }
            }

            else
            {
              v75 = v71(a4, a6);
              v72 = v142(a4, a6);
              if ((v75 & 1) == 0)
              {
                if (v72 >= 64)
                {
                  goto LABEL_39;
                }

                goto LABEL_38;
              }

              if (v72 <= 64)
              {
                v80 = v137;
                v81 = v138;
                AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v138, a4, v137, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
                v83 = v136;
                (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v80, AssociatedConformanceWitness);
                v84 = v140;
                (v81[3])(v83, a4, v81);
                LOBYTE(v80) = (*(*(*(a6 + 32) + 8) + 16))(v70, v84, a4);
                (*(v143 + 1))(v84, a4);
                if ((v80 & 1) == 0)
                {
LABEL_38:
                  (*(a6 + 120))(a4, a6);
                  goto LABEL_39;
                }

LABEL_43:
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }
            }

            v157[0] = 0x8000000000000000;
            v76 = *(a6 + 96);
            v77 = lazy protocol witness table accessor for type Int and conformance Int(v72, v73, v74);
            v78 = v140;
            v76(v157, &type metadata for Int, v77, a4, a6);
            v79 = (*(*(*(a6 + 32) + 8) + 16))(v70, v78, a4);
            (*(v143 + 1))(v78, a4);
            if (v79)
            {
              goto LABEL_43;
            }
          }

LABEL_39:
          v85 = v142(a4, a6);
          v60 = v145;
          if (v85 <= 64 && (v142(a4, a6) != 64 || (v135(a4, a6) & 1) != 0))
          {
            goto LABEL_49;
          }

          v86 = v135(a4, a6);
          v87 = v142(a4, a6);
          if (v86)
          {
            if (v87 >= 65)
            {
              goto LABEL_42;
            }
          }

          else if (v87 >= 64)
          {
LABEL_42:
            v157[0] = 0x7FFFFFFFFFFFFFFFLL;
            v90 = *(a6 + 96);
            v91 = lazy protocol witness table accessor for type Int and conformance Int(v87, v88, v89);
            v92 = v140;
            v90(v157, &type metadata for Int, v91, a4, a6);
            v93 = (*(*(*(a6 + 32) + 8) + 16))(v92, v70, a4);
            (*(v143 + 1))(v92, a4);
            if (v93)
            {
              goto LABEL_43;
            }

LABEL_49:
            v25 = (*(a6 + 120))(a4, a6);
            (*(v143 + 1))(v70, a4);
            goto LABEL_50;
          }

          (*(a6 + 120))(a4, a6);
          goto LABEL_49;
        }
      }

      else if (v63 > 63)
      {
        if ((v61 & 0x8000000000000000) == 0)
        {
          goto LABEL_24;
        }

LABEL_25:
        v25 = v153(a3, v155);
        v60 = v145;
        goto LABEL_50;
      }

      if (v61 >= (*(a6 + 120))(a4, a6))
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    goto LABEL_10;
  }

  v40 = v35(a4, a6);
  v142 = *(a6 + 128);
  v37 = v142(a4, a6);
  if ((v40 & 1) == 0)
  {
    if (v37 < 64)
    {
      goto LABEL_14;
    }

    if (v34 < 1)
    {
      goto LABEL_17;
    }

LABEL_10:
    v157[0] = v34;
    v48 = *(a6 + 96);
    v49 = lazy protocol witness table accessor for type Int and conformance Int(v37, v38, v39);
    v50 = a2;
    v51 = v35;
    v52 = v140;
    v48(v157, &type metadata for Int, v49, a4, a6);
    v46 = (*(*(*(a6 + 32) + 8) + 16))(v50, v52, a4);
    v53 = v52;
    v35 = v51;
    a2 = v50;
    (*(v143 + 1))(v53, a4);
LABEL_11:
    if ((v46 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v134 = a2;
  if (v37 > 64)
  {
    v157[0] = v34;
    v41 = *(a6 + 96);
    v42 = lazy protocol witness table accessor for type Int and conformance Int(v37, v38, v39);
    v43 = v35;
    v44 = v140;
    v41(v157, &type metadata for Int, v42, a4, a6);
    v45 = v134;
    v46 = (*(*(*(a6 + 32) + 8) + 16))(v134, v44, a4);
    v47 = v44;
    v35 = v43;
    a2 = v45;
    (*(v143 + 1))(v47, a4);
    goto LABEL_11;
  }

  v54 = v137;
  v55 = v138;
  v56 = swift_getAssociatedConformanceWitness(v138, a4, v137, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v57 = v136;
  (*(v56 + 8))(&qword_18071E0A8, 256, v54, v56);
  v58 = v140;
  (v55[3])(v57, a4, v55);
  a2 = v134;
  LOBYTE(v54) = (*(*(*(a6 + 32) + 8) + 16))(v134, v58, a4);
  (*(v143 + 1))(v58, a4);
  if ((v54 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  v59 = v153(a3, v155);
  v25 = -v59;
  if (__OFSUB__(0, v59))
  {
    __break(1u);
    goto LABEL_66;
  }

  v60 = v145;
LABEL_50:
  a4 = *(v156 + 32);
  (a4)(v152, v150, a3);
  v94 = (*(v151 + 64))(a3);
  v96 = v146;
  v95 = v147;
  v143 = a4;
  if (v94)
  {
    v97 = v153(a3, v155);
    if (!__OFSUB__(v97, 1))
    {
      v157[0] = v97 - 1;
      v100 = v151;
      v101 = *(v151 + 96);
      v102 = lazy protocol witness table accessor for type Int and conformance Int(v97, v98, v99);
      v103 = v144;
      v60 = v145;
      v104 = v100;
      v105 = v155;
      v106 = v156;
      v101(v157, &type metadata for Int, v102, a3, v104);
      (*(v105 + 200))(v152, v103, a3, v105);
      v107 = v103;
      v96 = v146;
      v95 = v147;
      (*(v106 + 8))(v107, a3);
      v108 = swift_getAssociatedConformanceWitness(v60, a3, v95, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      goto LABEL_54;
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v108 = swift_getAssociatedConformanceWitness(v60, a3, v147, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(v108 + 8))(&qword_18071E0A8, 256, v95, v108);
  (*(v60 + 3))(v96, a3, v60);
LABEL_54:
  (*(v108 + 8))(&qword_18071E0A8, 256, v95, v108);
  (*(v60 + 3))(v96, a3, v60);
  a4 = *(v156 + 8);
  v156 += 8;
  if (v25 < 0)
  {
    goto LABEL_60;
  }

  a4(v148, a3);
  if (v25 >= v153(a3, v155))
  {
    a4(v152, a3);
    v117 = v141;
    v131 = v141;
    v132 = v149;
LABEL_64:
    v119 = v143;
    (v143)(v131, v132, a3);
    return v119(v150, v117, a3);
  }

  v109 = (a4)(v149, a3);
  v157[0] = v25;
  v110 = v155;
  v111 = v151;
  v112 = *(v151 + 96);
  v115 = lazy protocol witness table accessor for type Int and conformance Int(v109, v113, v114);
  v116 = v144;
  v112(v157, &type metadata for Int, v115, a3, v111);
  v117 = v141;
  v118 = v152;
  (*(v110 + 216))(v152, v116, a3, v110);
  a4(v116, a3);
  a4(v118, a3);
LABEL_57:
  v119 = v143;
  return v119(v150, v117, a3);
}

uint64_t static FixedWidthInteger.<<= infix<A>(_:_:)(uint64_t a1, uint64_t a2, const char *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v149 = a1;
  v137 = *(*(a6 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v137, a4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v136 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v135 = &v132 - v12;
  v150 = *(a5 + 8);
  v13 = *(*(v150 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v13, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v146 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v145 = &v132 - v16;
  v155 = *(a3 - 1);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v148 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v143 = &v132 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v147 = &v132 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v151 = &v132 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v132 - v26;
  v142 = *(v8 - 1);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v138 = &v132 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v139 = &v132 - v30;
  v31 = *(a5 + 56);
  v153 = a5 + 56;
  v154 = a5;
  v152 = v31;
  v32 = v31(a3, a5);
  v33 = -v32;
  if (__OFSUB__(0, v32))
  {
    __break(1u);
    goto LABEL_62;
  }

  v140 = v27;
  v34 = *(a6 + 64);
  v35 = v34(v8, a6);
  v144 = v13;
  if (v35)
  {
    v141 = *(a6 + 128);
    v36 = v141(v8, a6);
    if (v36 < 64)
    {
LABEL_14:
      if ((*(a6 + 120))(v8, a6) >= v33)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v39 = v34(v8, a6);
  v141 = *(a6 + 128);
  v36 = v141(v8, a6);
  if ((v39 & 1) == 0)
  {
    if (v36 < 64)
    {
      goto LABEL_14;
    }

    if (v33 <= 0)
    {
      goto LABEL_18;
    }

LABEL_10:
    v156[0] = v33;
    v47 = *(a6 + 96);
    v48 = lazy protocol witness table accessor for type Int and conformance Int(v36, v37, v38);
    v49 = a2;
    v50 = v34;
    v51 = v139;
    v47(v156, &type metadata for Int, v48, v8, a6);
    v45 = (*(*(*(a6 + 32) + 8) + 16))(v49, v51, v8);
    v52 = v51;
    v34 = v50;
    a2 = v49;
    (*(v142 + 1))(v52, v8);
LABEL_11:
    if ((v45 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v133 = a2;
  if (v36 > 64)
  {
    v156[0] = v33;
    v40 = *(a6 + 96);
    v41 = lazy protocol witness table accessor for type Int and conformance Int(v36, v37, v38);
    v42 = v34;
    v43 = v139;
    v40(v156, &type metadata for Int, v41, v8, a6);
    v44 = v133;
    v45 = (*(*(*(a6 + 32) + 8) + 16))(v133, v43, v8);
    v46 = v43;
    v34 = v42;
    a2 = v44;
    (*(v142 + 1))(v46, v8);
    goto LABEL_11;
  }

  v53 = v136;
  v54 = v137;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v137, v8, v136, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v56 = v135;
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v53, AssociatedConformanceWitness);
  v57 = v139;
  (v54[3])(v56, v8, v54);
  a2 = v133;
  LOBYTE(v53) = (*(*(*(a6 + 32) + 8) + 16))(v133, v57, v8);
  (*(v142 + 1))(v57, v8);
  if ((v53 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  v58 = v152(a3, v154);
  v27 = -v58;
  if (!__OFSUB__(0, v58))
  {
    goto LABEL_27;
  }

  __break(1u);
LABEL_18:
  v59 = v152(a3, v154);
  v60 = v34(v8, a6);
  v61 = v141(v8, a6);
  v134 = v34;
  if ((v60 & 1) == 0)
  {
    if (v61 >= 64)
    {
      if ((v59 & 0x8000000000000000) == 0)
      {
        goto LABEL_25;
      }

LABEL_26:
      v27 = v152(a3, v154);
LABEL_27:
      v68 = v144;
      goto LABEL_52;
    }

LABEL_22:
    if (v59 >= (*(a6 + 120))(v8, a6))
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if (v61 <= 64)
  {
    goto LABEL_22;
  }

LABEL_25:
  v156[0] = v59;
  v64 = *(a6 + 96);
  v65 = lazy protocol witness table accessor for type Int and conformance Int(v61, v62, v63);
  v66 = v139;
  v64(v156, &type metadata for Int, v65, v8, a6);
  v67 = (*(*(*(a6 + 32) + 8) + 16))(v66, a2, v8);
  (*(v142 + 1))(v66, v8);
  if (v67)
  {
    goto LABEL_26;
  }

LABEL_28:
  v69 = v138;
  (*(v142 + 2))(v138, a2, v8);
  if ((v134(v8, a6) & 1) != 0 && v141(v8, a6) >= 65)
  {
    v70 = v134;
    if (v134(v8, a6))
    {
      v71 = v141(v8, a6);
      if (v71 < 64)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v74 = v70(v8, a6);
      v71 = v141(v8, a6);
      if ((v74 & 1) == 0)
      {
        if (v71 >= 64)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

      if (v71 <= 64)
      {
        v79 = v136;
        v80 = v137;
        v81 = swift_getAssociatedConformanceWitness(v137, v8, v136, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v82 = v135;
        (*(v81 + 8))(&qword_18071E0A8, 256, v79, v81);
        v83 = v139;
        (v80[3])(v82, v8, v80);
        LOBYTE(v79) = (*(*(*(a6 + 32) + 8) + 16))(v69, v83, v8);
        (*(v142 + 1))(v83, v8);
        if ((v79 & 1) == 0)
        {
LABEL_40:
          (*(a6 + 120))(v8, a6);
          goto LABEL_41;
        }

LABEL_45:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    v156[0] = 0x8000000000000000;
    v75 = *(a6 + 96);
    v76 = lazy protocol witness table accessor for type Int and conformance Int(v71, v72, v73);
    v77 = v139;
    v75(v156, &type metadata for Int, v76, v8, a6);
    v78 = (*(*(*(a6 + 32) + 8) + 16))(v69, v77, v8);
    (*(v142 + 1))(v77, v8);
    if (v78)
    {
      goto LABEL_45;
    }
  }

LABEL_41:
  v84 = v141(v8, a6);
  v68 = v144;
  if (v84 <= 64 && (v141(v8, a6) != 64 || (v134(v8, a6) & 1) != 0))
  {
    goto LABEL_51;
  }

  v85 = v134(v8, a6);
  v86 = v141(v8, a6);
  if (v85)
  {
    if (v86 >= 65)
    {
      goto LABEL_44;
    }

LABEL_50:
    (*(a6 + 120))(v8, a6);
    goto LABEL_51;
  }

  if (v86 < 64)
  {
    goto LABEL_50;
  }

LABEL_44:
  v156[0] = 0x7FFFFFFFFFFFFFFFLL;
  v89 = *(a6 + 96);
  v90 = lazy protocol witness table accessor for type Int and conformance Int(v86, v87, v88);
  v91 = v139;
  v89(v156, &type metadata for Int, v90, v8, a6);
  v92 = (*(*(*(a6 + 32) + 8) + 16))(v91, v69, v8);
  (*(v142 + 1))(v91, v8);
  if (v92)
  {
    goto LABEL_45;
  }

LABEL_51:
  v27 = (*(a6 + 120))(v8, a6);
  (*(v142 + 1))(v69, v8);
LABEL_52:
  v8 = *(v155 + 32);
  (v8)(v151, v149, a3);
  v93 = (*(v150 + 64))(a3);
  v95 = v145;
  v94 = v146;
  v142 = v8;
  if (v93)
  {
    v96 = v152(a3, v154);
    if (__OFSUB__(v96, 1))
    {
      __break(1u);
      goto LABEL_68;
    }

    v156[0] = v96 - 1;
    v99 = v150;
    v100 = *(v150 + 96);
    v101 = lazy protocol witness table accessor for type Int and conformance Int(v96, v97, v98);
    v102 = v143;
    v68 = v144;
    v103 = v99;
    v104 = v154;
    v105 = v155;
    v100(v156, &type metadata for Int, v101, a3, v103);
    (*(v104 + 200))(v151, v102, a3, v104);
    v106 = v102;
    v95 = v145;
    v94 = v146;
    (*(v105 + 8))(v106, a3);
    v107 = swift_getAssociatedConformanceWitness(v68, a3, v94, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  }

  else
  {
    v107 = swift_getAssociatedConformanceWitness(v68, a3, v146, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    (*(v107 + 8))(&qword_18071E0A8, 256, v94, v107);
    (*(v68 + 3))(v95, a3, v68);
  }

  (*(v107 + 8))(&qword_18071E0A8, 256, v94, v107);
  (*(v68 + 3))(v95, a3, v68);
  v8 = *(v155 + 8);
  v155 += 8;
  if (v27 < 0)
  {
LABEL_62:
    (v8)(v148, a3);
    v120 = v152(a3, v154);
    if (!__OFSUB__(0, v120))
    {
      v121 = v154;
      if (-v120 < v27)
      {
        v122 = (v8)(v147, a3);
        v156[0] = -v27;
        v123 = v150;
        v124 = *(v150 + 96);
        v127 = lazy protocol witness table accessor for type Int and conformance Int(v122, v125, v126);
        v128 = v143;
        v124(v156, &type metadata for Int, v127, a3, v123);
        v116 = v140;
        v129 = v151;
        (*(v121 + 200))(v151, v128, a3, v121);
        (v8)(v128, a3);
        (v8)(v129, a3);
        goto LABEL_59;
      }

      goto LABEL_69;
    }

LABEL_68:
    __break(1u);
LABEL_69:
    (v8)(v151, a3);
    v116 = v140;
    v130 = v140;
    v131 = v147;
    goto LABEL_66;
  }

  (v8)(v147, a3);
  if (v27 >= v152(a3, v154))
  {
    (v8)(v151, a3);
    v116 = v140;
    v130 = v140;
    v131 = v148;
LABEL_66:
    v118 = v142;
    (v142)(v130, v131, a3);
    return (v118)(v149, v116, a3);
  }

  v108 = (v8)(v148, a3);
  v156[0] = v27;
  v109 = v154;
  v110 = v150;
  v111 = *(v150 + 96);
  v114 = lazy protocol witness table accessor for type Int and conformance Int(v108, v112, v113);
  v115 = v143;
  v111(v156, &type metadata for Int, v114, a3, v110);
  v116 = v140;
  v117 = v151;
  (*(v109 + 216))(v151, v115, a3, v109);
  (v8)(v115, a3);
  (v8)(v117, a3);
LABEL_59:
  v118 = v142;
  return (v118)(v149, v116, a3);
}

uint64_t static FixedWidthInteger._nonMaskingLeftShift(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v48 = a5;
  v49 = a2;
  v51 = a1;
  v7 = *(a4 + 8);
  v8 = *(*(v7 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v10 = v9;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v44 - v12;
  v50 = *(a3 - 1);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v52 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v44 - v19;
  v21 = (*(v7 + 64))(a3, v7);
  v46 = v7;
  v47 = v20;
  if (v21)
  {
    v22 = (*(a4 + 56))(a3, a4);
    if (__OFSUB__(v22, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    v53 = v22 - 1;
    v45 = *(v7 + 96);
    v25 = lazy protocol witness table accessor for type Int and conformance Int(v22, v23, v24);
    v45(&v53, &type metadata for Int, v25, a3, v7);
    (*(a4 + 200))(v51, v18, a3, a4);
    v26 = v50;
    (*(v50 + 8))(v18, a3);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, a3, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, a3, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v10, AssociatedConformanceWitness);
    (*(v8 + 24))(v13, a3, v8);
    v26 = v50;
  }

  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v10, AssociatedConformanceWitness);
  (*(v8 + 24))(v13, a3, v8);
  v28 = *(v26 + 8);
  v29 = v49;
  if (v49 < 0)
  {
    v28(v52, a3);
    v37 = (*(a4 + 56))(a3, a4);
    v7 = v48;
    if (!__OFSUB__(0, v37))
    {
      if (-v37 < v29)
      {
        v38 = (v28)(v47, a3);
        v53 = -v29;
        v39 = v46;
        v40 = *(v46 + 96);
        v43 = lazy protocol witness table accessor for type Int and conformance Int(v38, v41, v42);
        v40(&v53, &type metadata for Int, v43, a3, v39);
        (*(a4 + 200))(v51, v18, a3, a4);
        return (v28)(v18, a3);
      }

      return (*(v50 + 32))(v7, v47, a3);
    }

LABEL_16:
    __break(1u);
    return (*(v50 + 32))(v7, v47, a3);
  }

  v28(v47, a3);
  if ((*(a4 + 56))(a3, a4) > v29)
  {
    v30 = (v28)(v52, a3);
    v53 = v29;
    v31 = v46;
    v32 = *(v46 + 96);
    v35 = lazy protocol witness table accessor for type Int and conformance Int(v30, v33, v34);
    v32(&v53, &type metadata for Int, v35, a3, v31);
    (*(a4 + 216))(v51, v18, a3, a4);
    return (v28)(v18, a3);
  }

  return (*(v50 + 32))(v48, v52, a3);
}

uint64_t _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs7_Int128V_SdTt1g5(uint64_t a1, double a2)
{
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!(v4 | *&a2 & 0xFFFFFFFFFFFFFLL))
  {
    goto LABEL_40;
  }

  if (v4 == 2047 || (v6 = Double.exponent.getter(a2), v6 > 127))
  {
    result = 0;
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    return result;
  }

  v7 = v6;
  v8 = Double.significandWidth.getter(a2);
  result = v7 >= v8;
  v10 = v8 + __clz(__rbit64(v5));
  v11 = v7 - v10;
  if (__OFSUB__(v7, v10))
  {
    __break(1u);
LABEL_40:
    *a1 = 0;
    *(a1 + 8) = 0;
    result = 1;
    goto LABEL_37;
  }

  if (v11 - 129 <= 0xFFFFFFFFFFFFFEFELL)
  {
    goto LABEL_6;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    if (v10 - v7 >= 0x40)
    {
      v12 = 0;
    }

    else
    {
      v12 = v5 >> (v10 - v7);
    }

    if (v11 <= 0xFFFFFFFFFFFFFF80)
    {
      v12 = 0;
    }

    v13 = 0;
    if (v7 == 127)
    {
      goto LABEL_47;
    }

    goto LABEL_17;
  }

  if (v11 >= 0x80)
  {
LABEL_6:
    v12 = 0;
    v13 = 0;
    if (v7 == 127)
    {
      goto LABEL_47;
    }

LABEL_17:
    if (v7 < 0)
    {
      v14 = 0;
      v15 = 0;
    }

    else if (v7 > 0x3F)
    {
      v14 = 0;
      v15 = 1 << v7;
    }

    else if (v7)
    {
      v15 = 1uLL >> -v7;
      v14 = 1 << v7;
    }

    else
    {
      v15 = 0;
      v14 = 1;
    }

    v16 = v14 | v12;
    v17 = v15 | v13;
    v19 = v13 < 0 && v17 != 0;
    if (a2 >= 0.0)
    {
      if (!v19)
      {
LABEL_36:
        *a1 = v16;
        *(a1 + 8) = v17;
LABEL_37:
        *(a1 + 16) = 0;
        return result;
      }
    }

    else if (!v19)
    {
      v20 = v16 == 0;
      v16 = -v16;
      if (v20)
      {
        v17 = -v17;
      }

      else
      {
        v17 = ~v17;
      }

      goto LABEL_36;
    }

    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000028, 0x800000018066E8B0 | 0x8000000000000000, "Swift/LegacyInt128.swift", 0x18uLL, 2, 0x278uLL);
  }

  if (v11 <= 0x3F)
  {
    v12 = v5 << v11;
    if (v11)
    {
      v13 = v5 >> -v11;
    }

    else
    {
      v12 = v5;
      v13 = 0;
    }

    if (v7 == 127)
    {
      goto LABEL_47;
    }

    goto LABEL_17;
  }

  v12 = 0;
  v13 = v5 << v11;
  if (v7 != 127)
  {
    goto LABEL_17;
  }

LABEL_47:
  v21 = v7 >= v8;
  v22 = v13 | v12;
  v23 = a2 < 0.0 && v22 == 0;
  v24 = !v23;
  result = v21 & ~v24;
  v25 = 0x8000000000000000;
  if (!v23)
  {
    v25 = 0;
  }

  *a1 = 0;
  *(a1 + 8) = v25;
  *(a1 + 16) = v24;
  return result;
}

uint64_t static FixedWidthInteger._convert<A>(from:)(uint64_t a1, uint64_t a2, const char *a3, const char *a4, uint64_t a5, uint64_t a6)
{
  v8 = a3;
  v10 = *(a3 - 1);
  v269 = a1;
  v270 = v10;
  v11 = MEMORY[0x1EEE9AC00](a1);
  v244 = &v238 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v243 = &v238 - v13;
  v278 = v14;
  v284 = *(v14 + 1);
  v15 = *(v284 + 3);
  v247 = *(v15 + 16);
  swift_getAssociatedTypeWitness(0, v247, v16, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v245 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v246 = &v238 - v18;
  swift_getAssociatedTypeWitness(255, v15, v8, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v20 = v19;
  v238 = v15;
  v256 = *(swift_getAssociatedConformanceWitness(v15, v8, v19, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Numeric) + 16);
  swift_getAssociatedTypeWitness(0, v256, v20, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v254 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v255 = &v238 - v22;
  v240 = type metadata accessor for Optional(255, v8, v23, v24);
  swift_getTupleTypeMetadata2(0, v240, &type metadata for Bool, 0, 0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v239 = &v238 - v26;
  v279 = swift_checkMetadataState(0, v20);
  v272 = *(v279 - 1);
  v27 = MEMORY[0x1EEE9AC00](v279);
  v253 = &v238 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v275 = &v238 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v271 = &v238 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v277 = &v238 - v33;
  swift_getAssociatedTypeWitness(0, a6, a4, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v257 = v34;
  v260 = *(v34 - 8);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v261 = &v238 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v276 = &v238 - v37;
  v38 = *(a6 + 16);
  swift_getAssociatedTypeWitness(255, v38, a4, &protocol requirements base descriptor for FloatingPoint, associated type descriptor for FloatingPoint.Exponent);
  v40 = v39;
  v287 = *(swift_getAssociatedConformanceWitness(v38, a4, v39, &protocol requirements base descriptor for FloatingPoint, associated conformance descriptor for FloatingPoint.FloatingPoint.Exponent: SignedInteger) + 8);
  v258 = *(v287 + 24);
  v250 = *(v258 + 2);
  swift_getAssociatedTypeWitness(0, v250, v40, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v249 = v41;
  MEMORY[0x1EEE9AC00](v41);
  v248 = &v238 - v42;
  v43 = swift_checkMetadataState(0, v40);
  v285 = *(v43 - 1);
  v44 = MEMORY[0x1EEE9AC00](v43);
  v259 = &v238 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v48 = &v238 - v47;
  v49 = MEMORY[0x1EEE9AC00](v46);
  v280 = &v238 - v50;
  v267 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v49);
  v266 = &v238 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = *(*(*(v38 + 16) + 8) + 16);
  swift_getAssociatedTypeWitness(0, v265, a4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v263 = v52;
  MEMORY[0x1EEE9AC00](v52);
  v264 = &v238 - v53;
  v54 = *(v38 + 384);
  v286 = a4;
  v282 = v38;
  if (v54(a4, v38))
  {
    v191 = v247;
    v192 = v245;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v247, v8, v245, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v194 = v246;
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v192, AssociatedConformanceWitness);
    v195 = v269;
    (v191[3])(v194, v8, v191);
    v189 = 1;
    (*(v270 + 56))(v195, 0, 1, v8);
    return v189 & 1;
  }

  v55 = *(v282 + 376);
  v283 = a2;
  if ((v55(v286) & 1) == 0)
  {
    goto LABEL_53;
  }

  v273 = *(v284 + 8);
  v274 = v284 + 64;
  if ((v273(v8) & 1) == 0)
  {
    v268 = v43;
    v56 = v265;
    v57 = v286;
    v58 = v263;
    v59 = swift_getAssociatedConformanceWitness(v265, v286, v263, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v60 = v264;
    (*(v59 + 8))(&unk_18071E0B0, 257, v58, v59);
    v61 = v266;
    v62 = v60;
    v63 = v282;
    v43 = v268;
    (v56[3])(v62, v57, v56);
    LOBYTE(v63) = (*(*(*(v63 + 24) + 8) + 40))(v283, v61, v57);
    (*(v267 + 8))(v61, v57);
    if ((v63 & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  v64 = v280;
  (*(v282 + 176))(v286);
  v65 = *(v278 + 7);
  v242 = v278 + 56;
  v241 = v65;
  v66 = (v65)(v8);
  v68 = (v287 + 64);
  v67 = *(v287 + 64);
  v69 = v67(v43);
  v268 = v68;
  v252 = v67;
  if ((v69 & 1) == 0)
  {
    v73 = v67;
    v74 = v48;
    v75 = v287;
    v76 = v73(v43, v287);
    v262 = *(v75 + 128);
    v70 = v262(v43, v75);
    if (v76)
    {
      if (v70 > 64)
      {
        v288 = v66;
        v77 = v8;
        v78 = v287;
        v79 = *(v287 + 96);
        v80 = lazy protocol witness table accessor for type Int and conformance Int(v70, v71, v72);
        v79(&v288, &type metadata for Int, v80, v43, v78);
        v81 = *(v78 + 32);
        v8 = v77;
        v82 = (*(*(v81 + 8) + 16))(v64, v74, v43);
        (*(v285 + 8))(v74, v43);
        v48 = v74;
        v67 = v252;
        if ((v82 & 1) == 0)
        {
          goto LABEL_52;
        }

        goto LABEL_20;
      }

      v84 = v250;
      v85 = v249;
      v86 = swift_getAssociatedConformanceWitness(v250, v43, v249, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v87 = v248;
      (*(v86 + 8))(&qword_18071E0A8, 256, v85, v86);
      v48 = v74;
      (v84[3])(v87, v43, v84);
      LOBYTE(v85) = (*(*(*(v287 + 32) + 8) + 16))(v64, v74, v43);
      (*(v285 + 8))(v74, v43);
      if (v85)
      {
        v67 = v252;
        goto LABEL_20;
      }

      v83 = (*(v287 + 120))(v43) < v66;
    }

    else
    {
      if (v70 >= 64)
      {
        if (v66 < 1)
        {
          goto LABEL_52;
        }

        v48 = v74;
        goto LABEL_19;
      }

      v83 = (*(v287 + 120))(v43) < v66;
      v48 = v74;
    }

    v67 = v252;
    if (v83)
    {
      goto LABEL_20;
    }

LABEL_52:
    (*(v285 + 8))(v64, v43);
LABEL_53:
    (*(v270 + 56))(v269, 1, 1, v8);
    v189 = 0;
    return v189 & 1;
  }

  v262 = *(v287 + 128);
  v70 = (v262)(v43);
  if (v70 >= 64)
  {
LABEL_19:
    v288 = v66;
    v88 = v287;
    v89 = *(v287 + 96);
    v90 = lazy protocol witness table accessor for type Int and conformance Int(v70, v71, v72);
    v89(&v288, &type metadata for Int, v90, v43, v88);
    v91 = *(v88 + 32);
    v67 = v252;
    v92 = (*(*(v91 + 8) + 16))(v64, v48, v43);
    (*(v285 + 8))(v48, v43);
    if (v92)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

  if ((*(v287 + 120))(v43) >= v66)
  {
    goto LABEL_52;
  }

LABEL_20:
  v93 = (*(a6 + 136))(v286, a6);
  v94 = (v67)(v43, v287);
  v281 = v8;
  v251 = a6;
  if (v94)
  {
    v95 = (v262)(v43);
    if (v95 >= 64)
    {
      v288 = v93;
      v110 = v287;
      v111 = *(v287 + 96);
      v112 = lazy protocol witness table accessor for type Int and conformance Int(v95, v96, v97);
      v111(&v288, &type metadata for Int, v112, v43, v110);
      v108 = (*(*(*(v110 + 32) + 8) + 16))(v64, v48, v43);
      v113 = v285;
      (*(v285 + 8))(v48, v43);
      v109 = v113;
      goto LABEL_29;
    }
  }

  else
  {
    v98 = v67;
    v99 = v287;
    v100 = v98(v43, v287);
    v101 = v262(v43, v99);
    if (v100)
    {
      if (v101 <= 64)
      {
        v149 = v250;
        v150 = v249;
        v151 = swift_getAssociatedConformanceWitness(v250, v43, v249, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v152 = v248;
        (*(v151 + 8))(&qword_18071E0A8, 256, v150, v151);
        (v149[3])(v152, v43, v149);
        LOBYTE(v152) = (*(*(*(v287 + 32) + 8) + 16))(v64, v48, v43);
        v109 = v285;
        (*(v285 + 8))(v48, v43);
        v108 = (v152 & 1) != 0 || (*(v287 + 120))(v43) < v93;
      }

      else
      {
        v288 = v93;
        v104 = v285;
        v105 = v287;
        v106 = *(v287 + 96);
        v107 = lazy protocol witness table accessor for type Int and conformance Int(v101, v102, v103);
        v106(&v288, &type metadata for Int, v107, v43, v105);
        v108 = (*(*(*(v105 + 32) + 8) + 16))(v64, v48, v43);
        v109 = v104;
        (*(v104 + 8))(v48, v43);
      }

      goto LABEL_29;
    }

    if (v101 >= 64)
    {
      v109 = v285;
      if (v93 < 1)
      {
        v108 = 0;
      }

      else
      {
        v288 = v93;
        v153 = v287;
        v154 = *(v287 + 96);
        v155 = lazy protocol witness table accessor for type Int and conformance Int(v101, v102, v103);
        v154(&v288, &type metadata for Int, v155, v43, v153);
        v108 = (*(*(*(v153 + 32) + 8) + 16))(v280, v48, v43);
        (*(v109 + 8))(v48, v43);
      }

      goto LABEL_29;
    }
  }

  v108 = (*(v287 + 120))(v43) < v93;
  v109 = v285;
LABEL_29:
  LODWORD(v250) = v108 ^ 1;
  v114 = v251;
  v115 = v286;
  (*(v251 + 120))(v286, v251);
  v116 = v115;
  v117 = v257;
  v118 = *(swift_getAssociatedConformanceWitness(v114, v116, v257, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger) + 8);
  v119 = (*(v118 + 144))(v117, v118);
  v120 = v117;
  v121 = v119 + v93;
  v288 = v121;
  v122 = *(v287 + 88);
  v251 = lazy protocol witness table accessor for type Int and conformance Int(v119, v123, v124);
  v122(&v288, &type metadata for Int);
  v125 = v259;
  (*(*(v258 + 1) + 40))(v280, v48, v43);
  v126 = v109 + 8;
  v127 = *(v109 + 8);
  v258 = v48;
  v285 = v126;
  v127(v48, v43);
  v128 = v279;
  v129 = v281;
  v130 = swift_getAssociatedConformanceWitness(v278, v281, v279, &protocol requirements base descriptor for FixedWidthInteger, associated conformance descriptor for FixedWidthInteger.Numeric.Magnitude: FixedWidthInteger);
  if (v121 >= (*(v130 + 56))(v128, v130))
  {
    v138 = v261;
    v139 = v276;
    (*(v118 + 256))(v276, v125, v43, v287, v120, v118);
    v127(v125, v43);
    (*(v260 + 8))(v139, v120);
    v133 = v284;
    v140 = v279;
    v141 = swift_getAssociatedConformanceWitness(v284, v129, v279, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
    (*(v141 + 96))(v138, v120, v118, v140, v141);
  }

  else
  {
    v131 = v261;
    (*(v260 + 32))(v261, v276, v120);
    v132 = v125;
    v133 = v284;
    v134 = v279;
    v135 = swift_getAssociatedConformanceWitness(v284, v281, v279, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
    v136 = v271;
    (*(v135 + 96))(v131, v120, v118, v134, v135);
    (*(v135 + 256))(v136, v132, v43, v287, v134, v135);
    (*(v272 + 8))(v136, v134);
    v137 = v132;
    v129 = v281;
    v127(v137, v43);
  }

  v142 = v127;
  v143 = (v273)(v129, v133);
  v144 = v280;
  if (v143)
  {
    v145 = v241(v129, v278) - 1;
    v146 = v287;
    v147 = (v252)(v43, v287);
    v148 = v262(v43, v146);
    if (v147)
    {
      if (v148 > 64)
      {
        goto LABEL_44;
      }
    }

    else if (v148 >= 64)
    {
      if (v145 < 0)
      {
        goto LABEL_45;
      }

LABEL_44:
      v288 = v145;
      v156 = v287;
      v157 = v258;
      (*(v287 + 96))(&v288, &type metadata for Int, v251, v43, v287);
      v158 = (*(*(*(v156 + 16) + 8) + 8))(v157, v144, v43);
      v142(v157, v43);
      if ((v158 & 1) == 0)
      {
        goto LABEL_45;
      }

LABEL_58:
      v196 = v129;
      v142(v144, v43);
      v197 = v265;
      v198 = v286;
      v199 = v263;
      v200 = swift_getAssociatedConformanceWitness(v265, v286, v263, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v201 = v264;
      (*(v200 + 8))(&qword_18071E0A8, 256, v199, v200);
      v202 = v266;
      (v197[3])(v201, v198, v197);
      LOBYTE(v199) = (*(*(*(v282 + 24) + 8) + 16))(v283, v202, v198);
      (*(v267 + 8))(v202, v198);
      if ((v199 & 1) == 0)
      {
        (*(v272 + 8))(v277, v279);
        v189 = 0;
        v209 = 1;
LABEL_78:
        v236 = v269;
        v235 = v270;
        v237 = v240;
        v234 = v239;
        goto LABEL_79;
      }

      v203 = v279;
      v204 = swift_getAssociatedConformanceWitness(v284, v196, v279, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
      v205 = *(v204 + 64);
      if (v205(v203, v204))
      {
        v206 = v279;
        if ((*(v204 + 128))() < 64)
        {
          v207 = v277;
          v208 = (*(v204 + 120))(v206, v204);
          (*(v272 + 8))(v207, v206);
          goto LABEL_71;
        }

        v288 = 0;
        v223 = v271;
        (*(v204 + 96))(&v288, &type metadata for Int, v251, v206, v204);
        v224 = swift_getAssociatedConformanceWitness(v238, v281, v206, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        v225 = v277;
        v226 = (*(*(v224 + 8) + 8))(v277, v223, v206);
        v227 = *(v272 + 8);
        v227(v223, v206);
        v228 = v225;
        v229 = v206;
      }

      else
      {
        v210 = v279;
        v211 = v205(v279, v204);
        v212 = v210;
        v213 = (*(v204 + 128))(v210, v204);
        if (v211)
        {
          if (v213 <= 64)
          {
            v214 = v256;
            v215 = v254;
            v216 = swift_getAssociatedConformanceWitness(v256, v210, v254, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v217 = v255;
            (*(v216 + 8))(&qword_18071E0A8, 256, v215, v216);
            v218 = v271;
            (v214[3])(v217, v212, v214);
            v219 = swift_getAssociatedConformanceWitness(v238, v281, v212, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
            LOBYTE(v215) = (*(v219 + 32))(v277, v218, v212, v219);
            v220 = *(v272 + 8);
            v220(v218, v212);
            if (v215)
            {
              v221 = v277;
              v222 = (*(v204 + 120))(v212, v204);
              v220(v221, v212);
              if (!v222)
              {
                goto LABEL_75;
              }
            }

            else
            {
              v220(v277, v212);
            }

            goto LABEL_77;
          }
        }

        else if (v213 < 64)
        {
          v230 = v277;
          v208 = (*(v204 + 120))(v212, v204);
          (*(v272 + 8))(v230, v212);
LABEL_71:
          if (!v208)
          {
            goto LABEL_75;
          }

          goto LABEL_77;
        }

        v288 = 0;
        v231 = v271;
        (*(v204 + 96))(&v288, &type metadata for Int, v251, v210, v204);
        v232 = swift_getAssociatedConformanceWitness(v238, v281, v210, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        v233 = v277;
        v226 = (*(*(v232 + 8) + 8))(v277, v231, v210);
        v227 = *(v272 + 8);
        v227(v231, v212);
        v228 = v233;
        v229 = v212;
      }

      v227(v228, v229);
      if (v226)
      {
LABEL_75:
        v234 = v239;
        v196 = v281;
        (*(v278 + 9))(v281);
        v209 = 0;
        v236 = v269;
        v235 = v270;
        v237 = v240;
        v189 = v250;
LABEL_79:
        (*(v235 + 56))(v234, v209, 1, v196);
        (*(*(v237 - 8) + 32))(v236, v234, v237);
        return v189 & 1;
      }

LABEL_77:
      v189 = 0;
      v209 = 1;
      v196 = v281;
      goto LABEL_78;
    }

    if (v145 != (*(v287 + 120))(v43))
    {
      goto LABEL_45;
    }

    goto LABEL_58;
  }

LABEL_45:
  v159 = v256;
  v160 = v279;
  v161 = v254;
  v162 = swift_getAssociatedConformanceWitness(v256, v279, v254, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v163 = v255;
  (*(v162 + 8))(&qword_1806729C0, 512, v161, v162);
  v164 = v253;
  v165 = v160;
  (v159[3])(v163, v160, v159);
  v166 = v284;
  v167 = swift_getAssociatedConformanceWitness(v284, v129, v160, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
  v168 = v271;
  (*(v167 + 256))(v164, v144, v43, v287, v165, v167);
  v169 = *(v272 + 8);
  v169(v164, v165);
  v142(v144, v43);
  v170 = v277;
  (*(v167 + 208))(v168, v277, v165, v167);
  v171 = v168;
  v172 = v165;
  v169(v171, v165);
  v169(v170, v165);
  v173 = v281;
  if ((v273)(v281, v166) & 1) != 0 && (v174 = v265, v175 = v286, v176 = v263, v177 = swift_getAssociatedConformanceWitness(v265, v286, v263, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral), v178 = v264, (*(v177 + 8))(&qword_18071E0A8, 256, v176, v177), v179 = v266, (v174[3])(v178, v175, v174), LOBYTE(v176) = (*(*(*(v282 + 24) + 8) + 16))(v283, v179, v175), (*(v267 + 8))(v179, v175), (v176))
  {
    v180 = v247;
    v181 = v245;
    v182 = swift_getAssociatedConformanceWitness(v247, v173, v245, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v183 = v246;
    (*(v182 + 8))(&qword_18071E0A8, 256, v181, v182);
    v184 = v243;
    (v180[3])(v183, v173, v180);
    v185 = v244;
    (*(v284 + 11))(v275, v172, v167, v173);
    v186 = v269;
    (*(v278 + 11))(v269, v185, v173);
    v187 = v270;
    v188 = *(v270 + 8);
    v188(v185, v281);
    v188(v184, v281);
    v173 = v281;
  }

  else
  {
    v186 = v269;
    (*(v284 + 11))(v275, v172, v167, v173);
    v187 = v270;
  }

  v189 = v250;
  (*(v187 + 56))(v186, 0, 1, v173);
  return v189 & 1;
}

unint64_t _ss17FixedWidthIntegerPsEyxqd__cSBRd__lufCs7_Int128V_SdTt1g5(double a1)
{
  _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs7_Int128V_SdTt1g5(&v91, a1);
  if (v93)
  {
    v2 = _StringGuts.init(_initialCapacity:)(80);
    v4 = v3;
    v91 = v2;
    v92 = v3;
    TypeName = swift_getTypeName(&type metadata for Double, 0);
    if (v6 < 0)
    {
      goto LABEL_64;
    }

    v7 = TypeName;
    v8 = v6;
    v9 = validateUTF8(_:)(TypeName, v6);
    if (v9 < 0)
    {
      v13 = repairUTF8(_:firstKnownBrokenRange:)(v7, v8, v10, v11);
    }

    else
    {
      v13 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v7, v8, v9 & 1, v12);
    }

    v23 = v13;
    v24 = v14;
    v25 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v25 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (!v25 && (v2 & ~v4 & 0x2000000000000000) == 0)
    {
      v4;
      v91 = v23;
      v92 = v24;
      goto LABEL_20;
    }

    if ((v4 & 0x2000000000000000) != 0)
    {
      if ((v14 & 0x2000000000000000) != 0)
      {
        v35 = specialized _SmallString.init(_:appending:)(v2, v4, v13, v14);
        if ((v37 & 1) == 0)
        {
          v87 = v35;
          v88 = v36;
          v4;
          v24;
          v91 = v87;
          v92 = v88;
          v24 = v88;
          v23 = v87;
LABEL_20:
          v38 = HIBYTE(v24) & 0xF;
          if ((v24 & 0x2000000000000000) == 0)
          {
            v38 = v23 & 0xFFFFFFFFFFFFLL;
          }

          if (v38 || (v23 & ~v24 & 0x2000000000000000) != 0)
          {
            if ((0x800000018066D440 & 0x2000000000000000 & v24) != 0 && (v39 = specialized _SmallString.init(_:appending:)(v23, v24, 0xD00000000000001ELL, 0x800000018066D440 | 0x8000000000000000), (v41 & 1) == 0))
            {
              v43 = v39;
              v44 = v40;
              v24;
              0x800000018066D440 | 0x8000000000000000;
              v91 = v43;
              v92 = v44;
            }

            else
            {
              if ((0x800000018066D440 & 0x2000000000000000) != 0)
              {
                v42 = (0x800000018066D440 >> 56) & 0xF;
              }

              else
              {
                v42 = 30;
              }

              _StringGuts.append(_:)(0xD00000000000001ELL, 0x800000018066D440 | 0x8000000000000000, 0, v42, v26, v27, v28, v29, v30, v31, v32, v33);
              0x800000018066D440 | 0x8000000000000000;
            }
          }

          else
          {
            v24;
            v91 = 0xD00000000000001ELL;
            v92 = 0x800000018066D440 | 0x8000000000000000;
          }

          v45 = swift_getTypeName(&type metadata for _Int128, 0);
          if ((v46 & 0x8000000000000000) == 0)
          {
            v47 = v45;
            v48 = v46;
            v49 = validateUTF8(_:)(v45, v46);
            if (v49 < 0)
            {
              v53 = repairUTF8(_:firstKnownBrokenRange:)(v47, v48, v50, v51);
            }

            else
            {
              v53 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v47, v48, v49 & 1, v52);
            }

            v63 = v53;
            v64 = v54;
            v65 = v92;
            v66 = HIBYTE(v92) & 0xF;
            if ((v92 & 0x2000000000000000) == 0)
            {
              v66 = v91 & 0xFFFFFFFFFFFFLL;
            }

            if (!v66 && (v91 & ~v92 & 0x2000000000000000) == 0)
            {
              v92;
              v91 = v63;
              v92 = v64;
              goto LABEL_49;
            }

            if ((v92 & 0x2000000000000000) != 0)
            {
              if ((v54 & 0x2000000000000000) != 0)
              {
                v76 = specialized _SmallString.init(_:appending:)(v91, v92, v53, v54);
                if ((v78 & 1) == 0)
                {
                  v89 = v76;
                  v90 = v77;
                  v65;
                  v64;
                  v91 = v89;
                  v92 = v90;
                  v64 = v90;
                  v63 = v89;
LABEL_49:
                  v79 = 0x800000018066D460 | 0x8000000000000000;
                  v80 = HIBYTE(v64) & 0xF;
                  if ((v64 & 0x2000000000000000) == 0)
                  {
                    v80 = v63 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v80 || (v63 & ~v64 & 0x2000000000000000) != 0)
                  {
                    if ((0x800000018066D460 & 0x2000000000000000 & v64) != 0 && (v82 = specialized _SmallString.init(_:appending:)(v63, v64, 0xD00000000000002ELL, 0x800000018066D460 | 0x8000000000000000), (v84 & 1) == 0))
                    {
                      v81 = v82;
                      v86 = v83;
                      v64;
                      0x800000018066D460 | 0x8000000000000000;
                      v79 = v86;
                    }

                    else
                    {
                      if ((0x800000018066D460 & 0x2000000000000000) != 0)
                      {
                        v85 = (0x800000018066D460 >> 56) & 0xF;
                      }

                      else
                      {
                        v85 = 46;
                      }

                      _StringGuts.append(_:)(0xD00000000000002ELL, 0x800000018066D460 | 0x8000000000000000, 0, v85, v67, v68, v69, v70, v71, v72, v73, v74);
                      0x800000018066D460 | 0x8000000000000000;
                      v81 = v91;
                      v79 = v92;
                    }
                  }

                  else
                  {
                    v64;
                    v81 = 0xD00000000000002ELL;
                  }

                  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v81, v79, "Swift/Integers.swift", 0x14uLL, 2, 0xAB4uLL);
                }

                goto LABEL_47;
              }
            }

            else if ((v54 & 0x2000000000000000) != 0)
            {
LABEL_47:
              v75 = HIBYTE(v64) & 0xF;
              goto LABEL_48;
            }

            v75 = v53 & 0xFFFFFFFFFFFFLL;
LABEL_48:
            _StringGuts.append(_:)(v63, v64, 0, v75, v55, v56, v57, v58, v59, v60, v61, v62);
            v64;
            v63 = v91;
            v64 = v92;
            goto LABEL_49;
          }

LABEL_64:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        goto LABEL_18;
      }
    }

    else if ((v14 & 0x2000000000000000) != 0)
    {
LABEL_18:
      v34 = HIBYTE(v24) & 0xF;
      goto LABEL_19;
    }

    v34 = v13 & 0xFFFFFFFFFFFFLL;
LABEL_19:
    _StringGuts.append(_:)(v23, v24, 0, v34, v15, v16, v17, v18, v19, v20, v21, v22);
    v24;
    v23 = v91;
    v24 = v92;
    goto LABEL_20;
  }

  return v91;
}

uint64_t FixedWidthInteger.init<A>(_:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for Optional(0, a2, a3, a4);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v107 - v14;
  static FixedWidthInteger._convert<A>(from:)(&v107 - v14, a1, a2, a3, a4, a5);
  v16 = *(a2 - 1);
  if ((*(v16 + 48))(v15, 1, a2) == 1)
  {
    (*(v13 + 8))(v15, v12);
    v18 = _StringGuts.init(_initialCapacity:)(80);
    v20 = v19;
    v107 = v18;
    v108 = v19;
    TypeName = swift_getTypeName(a3, 0);
    if (v22 < 0)
    {
      goto LABEL_64;
    }

    v23 = TypeName;
    v24 = v22;
    v25 = validateUTF8(_:)(TypeName, v22);
    if (v25 < 0)
    {
      v29 = repairUTF8(_:firstKnownBrokenRange:)(v23, v24, v26, v27);
    }

    else
    {
      v29 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v23, v24, v25 & 1, v28);
    }

    v39 = v29;
    v40 = v30;
    v41 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v41 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (!v41 && (v18 & ~v20 & 0x2000000000000000) == 0)
    {
      v20;
      v107 = v39;
      v108 = v40;
      goto LABEL_20;
    }

    if ((v20 & 0x2000000000000000) != 0)
    {
      if ((v30 & 0x2000000000000000) != 0)
      {
        v51 = specialized _SmallString.init(_:appending:)(v18, v20, v29, v30);
        if ((v53 & 1) == 0)
        {
          v103 = v51;
          v104 = v52;
          v40;
          v20;
          v107 = v103;
          v108 = v104;
          v40 = v104;
          v39 = v103;
LABEL_20:
          v54 = HIBYTE(v40) & 0xF;
          if ((v40 & 0x2000000000000000) == 0)
          {
            v54 = v39 & 0xFFFFFFFFFFFFLL;
          }

          if (v54 || (v39 & ~v40 & 0x2000000000000000) != 0)
          {
            if (("Swift/Random.swift" & 0x2000000000000000 & v40) != 0 && (v55 = specialized _SmallString.init(_:appending:)(v39, v40, 0xD00000000000001ELL, 0x800000018066D440), (v57 & 1) == 0))
            {
              v59 = v55;
              v60 = v56;
              v40;
              v107 = v59;
              v108 = v60;
            }

            else
            {
              if (("Swift/Random.swift" & 0x2000000000000000) != 0)
              {
                v58 = ("Swift/Random.swift" >> 56) & 0xF;
              }

              else
              {
                v58 = 30;
              }

              _StringGuts.append(_:)(0xD00000000000001ELL, 0x800000018066D440, 0, v58, v42, v43, v44, v45, v46, v47, v48, v49);
            }
          }

          else
          {
            v40;
            v107 = 0xD00000000000001ELL;
            v108 = 0x800000018066D440;
          }

          v61 = swift_getTypeName(a2, 0);
          if ((v62 & 0x8000000000000000) == 0)
          {
            v63 = v61;
            v64 = v62;
            v65 = validateUTF8(_:)(v61, v62);
            if (v65 < 0)
            {
              v69 = repairUTF8(_:firstKnownBrokenRange:)(v63, v64, v66, v67);
            }

            else
            {
              v69 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v63, v64, v65 & 1, v68);
            }

            v79 = v69;
            v80 = v70;
            v81 = v108;
            v82 = HIBYTE(v108) & 0xF;
            if ((v108 & 0x2000000000000000) == 0)
            {
              v82 = v107 & 0xFFFFFFFFFFFFLL;
            }

            if (!v82 && (v107 & ~v108 & 0x2000000000000000) == 0)
            {
              v108;
              v107 = v79;
              v108 = v80;
              goto LABEL_49;
            }

            if ((v108 & 0x2000000000000000) != 0)
            {
              if ((v70 & 0x2000000000000000) != 0)
              {
                v92 = specialized _SmallString.init(_:appending:)(v107, v108, v69, v70);
                if ((v94 & 1) == 0)
                {
                  v105 = v92;
                  v106 = v93;
                  v80;
                  v81;
                  v107 = v105;
                  v108 = v106;
                  v80 = v106;
                  v79 = v105;
LABEL_49:
                  v95 = 0x800000018066D460 | 0x8000000000000000;
                  v96 = HIBYTE(v80) & 0xF;
                  if ((v80 & 0x2000000000000000) == 0)
                  {
                    v96 = v79 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v96 || (v79 & ~v80 & 0x2000000000000000) != 0)
                  {
                    if ((0x800000018066D460 & 0x2000000000000000 & v80) != 0 && (v98 = specialized _SmallString.init(_:appending:)(v79, v80, 0xD00000000000002ELL, 0x800000018066D460 | 0x8000000000000000), (v100 & 1) == 0))
                    {
                      v97 = v98;
                      v102 = v99;
                      0x800000018066D460 | 0x8000000000000000;
                      v80;
                      v95 = v102;
                    }

                    else
                    {
                      if ((0x800000018066D460 & 0x2000000000000000) != 0)
                      {
                        v101 = (0x800000018066D460 >> 56) & 0xF;
                      }

                      else
                      {
                        v101 = 46;
                      }

                      _StringGuts.append(_:)(0xD00000000000002ELL, 0x800000018066D460 | 0x8000000000000000, 0, v101, v83, v84, v85, v86, v87, v88, v89, v90);
                      0x800000018066D460 | 0x8000000000000000;
                      v97 = v107;
                      v95 = v108;
                    }
                  }

                  else
                  {
                    v80;
                    v97 = 0xD00000000000002ELL;
                  }

                  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v97, v95, "Swift/Integers.swift", 0x14uLL, 2, 0xAB4uLL);
                }

                goto LABEL_47;
              }
            }

            else if ((v70 & 0x2000000000000000) != 0)
            {
LABEL_47:
              v91 = HIBYTE(v80) & 0xF;
              goto LABEL_48;
            }

            v91 = v69 & 0xFFFFFFFFFFFFLL;
LABEL_48:
            _StringGuts.append(_:)(v79, v80, 0, v91, v71, v72, v73, v74, v75, v76, v77, v78);
            v80;
            v79 = v107;
            v80 = v108;
            goto LABEL_49;
          }

LABEL_64:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        goto LABEL_18;
      }
    }

    else if ((v30 & 0x2000000000000000) != 0)
    {
LABEL_18:
      v50 = HIBYTE(v40) & 0xF;
      goto LABEL_19;
    }

    v50 = v29 & 0xFFFFFFFFFFFFLL;
LABEL_19:
    _StringGuts.append(_:)(v39, v40, 0, v50, v31, v32, v33, v34, v35, v36, v37, v38);
    v40;
    v39 = v107;
    v40 = v108;
    goto LABEL_20;
  }

  (*(*(a3 - 1) + 8))(a1, a3);
  return (*(v16 + 32))(a6, v15, a2);
}

uint64_t FixedWidthInteger.init<A>(exactly:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a4;
  v12 = type metadata accessor for Optional(0, a2, a3, a4);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - v17;
  LOBYTE(v7) = static FixedWidthInteger._convert<A>(from:)(&v23 - v17, a1, a2, a3, v7, a5);
  (*(*(a3 - 1) + 8))(a1, a3);
  if (v7)
  {
    (*(v13 + 32))(v16, v18, v12);
    v19 = *(a2 - 1);
    v20 = v19;
    if ((*(v19 + 48))(v16, 1, a2) != 1)
    {
      (*(v19 + 32))(a6, v16, a2);
      v21 = 0;
      return (*(v20 + 56))(a6, v21, 1, a2);
    }

    (*(v13 + 8))(v16, v12);
  }

  else
  {
    (*(v13 + 8))(v18, v12);
    v19 = *(a2 - 1);
  }

  v20 = v19;
  v21 = 1;
  return (*(v20 + 56))(a6, v21, 1, a2);
}

uint64_t FixedWidthInteger.init<A>(clamping:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = a2;
  v138 = a1;
  v130 = a6;
  v10 = *(a4 + 8);
  v124 = *(*(v10 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v124, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v123 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v122 = &v114 - v12;
  v121 = *(*(a5 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v121, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v120 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v119 = &v114 - v15;
  v16 = *(a3 - 1);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v136 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = *(v9 - 1);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v134 = &v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v132 = &v114 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v114 - v23;
  v25 = *(a4 + 72);
  v131 = a4;
  v118 = (a4 + 72);
  v117 = v25;
  v25(v9, a4);
  v26 = *(a5 + 64);
  v27 = v26(a3, a5);
  v28 = *(v10 + 64);
  v126 = v10 + 64;
  v128 = v28;
  v29 = v28(v9, v10);
  v135 = v16;
  v129 = v26;
  v137 = v10;
  if (((v27 ^ v29) & 1) == 0)
  {
    v116 = (a5 + 64);
    v41 = v138;
    v127 = *(a5 + 128);
    v42 = v127(a3, a5);
    v125 = *(v10 + 128);
    v35 = a5;
    if (v42 >= v125(v9, v10))
    {
      v57 = v136;
      (*(a5 + 96))(v24, v9, v10, a3, a5);
      v45 = (*(*(*(a5 + 32) + 8) + 16))(v41, v57, a3);
      (*(v16 + 8))(v57, a3);
    }

    else
    {
      v43 = v136;
      (*(v16 + 16))(v136, v41, a3);
      v44 = v132;
      (*(v10 + 96))(v43, a3, v35, v9, v10);
      v45 = (*(*(*(v10 + 32) + 8) + 16))(v44, v24, v9);
      v46 = *(v133 + 8);
      v46(v44, v9);
      v46(v24, v9);
    }

    v56 = v134;
    v40 = v128;
    v39 = v129;
    v37 = a3;
    if (v45)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  v30 = v26(a3, a5);
  v31 = *(a5 + 128);
  v115 = a3;
  v127 = v31;
  v32 = v31(a3, a5);
  v33 = *(v10 + 128);
  v116 = v24;
  v125 = v33;
  v34 = v33(v9, v10);
  v35 = a5;
  if ((v30 & 1) == 0)
  {
    if (v32 >= v34)
    {
      v70 = v123;
      v71 = v124;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v124, v9, v123, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v73 = v122;
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v70, AssociatedConformanceWitness);
      v74 = v132;
      (v71[3])(v73, v9, v71);
      v75 = v137;
      v76 = v116;
      LOBYTE(v70) = (*(*(*(v137 + 32) + 8) + 40))(v116, v74, v9);
      v77 = *(v133 + 8);
      v77(v74, v9);
      if ((v70 & 1) == 0)
      {
        v77(v76, v9);
        v40 = v128;
        v39 = v129;
        v37 = v115;
        v56 = v134;
        goto LABEL_23;
      }

      v78 = v136;
      v79 = v76;
      v37 = v115;
      (*(v35 + 96))(v79, v9, v75, v115, v35);
      v80 = (*(*(*(v35 + 32) + 8) + 16))(v138, v78, v37);
      (*(v135 + 8))(v78, v37);
      v40 = v128;
      v39 = v129;
      v56 = v134;
      if ((v80 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v47 = v136;
      v48 = v9;
      v49 = v115;
      (*(v135 + 16))(v136, v138, v115);
      v50 = v137;
      v51 = v132;
      (*(v137 + 96))(v47, v49, a5, v48, v137);
      v52 = v116;
      v53 = (*(*(*(v50 + 32) + 8) + 16))(v51, v116, v48);
      v54 = *(v133 + 8);
      v54(v51, v48);
      v55 = v52;
      v37 = v49;
      v9 = v48;
      v54(v55, v48);
      v40 = v128;
      v39 = v129;
      v56 = v134;
      if ((v53 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

LABEL_15:
    (*(v135 + 8))(v138, v37);
    return v117(v9, v131);
  }

  if (v34 < v32)
  {
    v36 = v136;
    v37 = v115;
    (*(a5 + 96))(v116, v9, v137, v115, a5);
    v38 = (*(*(*(a5 + 32) + 8) + 16))(v138, v36, v37);
    (*(v135 + 8))(v36, v37);
    v40 = v128;
    v39 = v129;
    goto LABEL_20;
  }

  v58 = v9;
  v59 = v120;
  v60 = v121;
  v61 = v115;
  v62 = swift_getAssociatedConformanceWitness(v121, v115, v120, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v63 = v119;
  (*(v62 + 8))(&qword_18071E0A8, 256, v59, v62);
  v64 = v136;
  (v60[3])(v63, v61, v60);
  v65 = v138;
  LOBYTE(v59) = (*(*(*(a5 + 32) + 8) + 16))(v138, v64, v61);
  v66 = v135;
  (*(v135 + 8))(v64, v61);
  v67 = v137;
  v68 = v116;
  if (v59)
  {
    (*(v133 + 8))(v116, v58);
    v37 = v61;
    v9 = v58;
    goto LABEL_15;
  }

  (*(v66 + 16))(v64, v65, v61);
  v81 = v132;
  (*(v67 + 96))(v64, v61, v35, v58, v67);
  v38 = (*(*(*(v67 + 32) + 8) + 16))(v81, v68, v58);
  v82 = *(v133 + 8);
  v82(v81, v58);
  v82(v68, v58);
  v40 = v128;
  v39 = v129;
  v37 = v61;
  v9 = v58;
LABEL_20:
  v56 = v134;
  if (v38)
  {
    goto LABEL_15;
  }

LABEL_23:
  v83 = v39;
  v84 = *(v131 + 64);
  v85 = v56;
  v128 = (v131 + 64);
  v118 = v84;
  (v84)(v9);
  v86 = v40(v9, v137);
  if (((v86 ^ v83(v37, v35)) & 1) == 0)
  {
    v87 = v137;
    v95 = v125(v9, v137);
    v90 = v138;
    if (v95 >= v127(v37, v35))
    {
      v93 = v135;
      v98 = v136;
      (*(v135 + 16))(v136, v90, v37);
      v94 = v132;
      (*(v87 + 96))(v98, v37, v35, v9, v87);
      v99 = (*(*(*(v87 + 32) + 8) + 16))(v85, v94, v9);
      goto LABEL_41;
    }

    v96 = v136;
    (*(v35 + 96))(v85, v9, v87, v37, v35);
LABEL_31:
    v97 = (*(*(*(v35 + 32) + 8) + 16))(v96, v90, v37);
    v93 = v135;
    (*(v135 + 8))(v96, v37);
    goto LABEL_32;
  }

  v87 = v137;
  v88 = v40(v9, v137);
  v89 = v125(v9, v87);
  v90 = v138;
  v91 = v127(v37, v35);
  if ((v88 & 1) == 0)
  {
    v96 = v136;
    if (v89 >= v91)
    {
      v107 = v120;
      v108 = v121;
      v109 = swift_getAssociatedConformanceWitness(v121, v37, v120, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v110 = v119;
      (*(v109 + 8))(&qword_18071E0A8, 256, v107, v109);
      (v108[3])(v110, v37, v108);
      LOBYTE(v107) = (*(*(*(v35 + 32) + 8) + 40))(v90, v96, v37);
      v93 = v135;
      (*(v135 + 8))(v96, v37);
      if ((v107 & 1) == 0)
      {
        (*(v133 + 8))(v134, v9);
        return (*(v87 + 96))(v90, v37, v35, v9, v87);
      }

      (*(v93 + 16))(v96, v90, v37);
      v94 = v132;
      (*(v87 + 96))(v96, v37, v35, v9, v87);
      goto LABEL_40;
    }

    (*(v35 + 96))(v134, v9, v87, v37, v35);
    goto LABEL_31;
  }

  v92 = v136;
  if (v91 < v89)
  {
    v93 = v135;
    (*(v135 + 16))(v136, v90, v37);
    v94 = v132;
    (*(v87 + 96))(v92, v37, v35, v9, v87);
LABEL_40:
    v85 = v134;
    v99 = (*(*(*(v87 + 32) + 8) + 16))(v134, v94, v9);
LABEL_41:
    v111 = v99;
    v112 = *(v133 + 8);
    v113 = v94;
    v90 = v138;
    v112(v113, v9);
    v112(v85, v9);
    if ((v111 & 1) == 0)
    {
      return (*(v87 + 96))(v90, v37, v35, v9, v87);
    }

LABEL_37:
    (*(v93 + 8))(v90, v37);
    return v118(v9, v131);
  }

  v100 = v123;
  v101 = v124;
  v102 = swift_getAssociatedConformanceWitness(v124, v9, v123, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v103 = v122;
  (*(v102 + 8))(&qword_18071E0A8, 256, v100, v102);
  v104 = v132;
  (v101[3])(v103, v9, v101);
  v105 = v134;
  LOBYTE(v100) = (*(*(*(v87 + 32) + 8) + 16))(v134, v104, v9);
  v106 = *(v133 + 8);
  v106(v104, v9);
  if (v100)
  {
    v106(v105, v9);
    v93 = v135;
    v90 = v138;
    goto LABEL_37;
  }

  (*(v35 + 96))(v105, v9, v87, v37, v35);
  v90 = v138;
  v97 = (*(*(*(v35 + 32) + 8) + 16))(v92, v138, v37);
  v93 = v135;
  (*(v135 + 8))(v92, v37);
LABEL_32:
  if (v97)
  {
    goto LABEL_37;
  }

  return (*(v87 + 96))(v90, v37, v35, v9, v87);
}

uint64_t specialized static FixedWidthInteger._truncatingInit<A>(_:)(uint64_t a1, const char *a2, uint64_t a3)
{
  v34 = a1;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryInteger, associated type descriptor for BinaryInteger.Words);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v30 - v7;
  v32 = *(*(*(swift_getAssociatedConformanceWitness(a3, a2, v6, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.BinaryInteger.Words: RandomAccessCollection) + 8) + 8) + 8);
  swift_getAssociatedTypeWitness(0, v32, v6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v31 = v8;
  v35 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v12 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(a3 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v15, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v30 - v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v15, a2, v17, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v17, AssociatedConformanceWitness);
  (*(v15 + 24))(v19, a2, v15);
  v21 = (*(*(*(a3 + 32) + 8) + 16))(v34, v14, a2);
  (*(v12 + 8))(v14, a2);
  v22 = v21 << 63 >> 63;
  v23 = a2;
  v24 = v31;
  (*(a3 + 112))(v23, a3);
  v25 = v32;
  (v32[4])(v6);
  v26 = swift_getAssociatedConformanceWitness(v25, v6, v24, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v27 = *(v26 + 16);
  v27(&v36, v24, v26);
  if (v37)
  {
    v28 = v22;
  }

  else
  {
    v28 = v36;
    v27(&v36, v24, v26);
    if ((v37 & 1) == 0)
    {
      v27(&v36, v24, v26);
    }
  }

  (*(v35 + 8))(v11, v24);
  return v28;
}

uint64_t specialized static FixedWidthInteger._truncatingInit<A>(_:)(char *a1, const char *a2, uint64_t a3)
{
  v45 = a1;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryInteger, associated type descriptor for BinaryInteger.Words);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v40 - v7;
  v43 = *(*(*(swift_getAssociatedConformanceWitness(a3, a2, v6, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.BinaryInteger.Words: RandomAccessCollection) + 8) + 8) + 8);
  swift_getAssociatedTypeWitness(0, v43, v6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v41 = *(v8 - 8);
  v42 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - v10;
  v12 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(a3 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v15, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v15, a2, v17, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v17, AssociatedConformanceWitness);
  (*(v15 + 24))(v19, a2, v15);
  v21 = (*(*(*(a3 + 32) + 8) + 16))(v45, v14, a2);
  (*(v12 + 8))(v14, a2);
  v22 = v21 << 63 >> 63;
  (*(a3 + 112))(a2, a3);
  v23 = v43[4];
  v45 = v11;
  v24 = v43;
  (v23)(v6);
  v25 = v24;
  v26 = v42;
  v27 = swift_getAssociatedConformanceWitness(v25, v6, v42, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v28 = 0;
  v29 = 0;
  v30 = *(v27 + 16);
  v31 = v22;
  v32 = v22;
  while (1)
  {
    v30(&v46, v26, v27);
    if (v47)
    {
      break;
    }

    v33 = v28 < 0x80;
    if (v29)
    {
      v33 = v29 < 0;
    }

    if (!v33)
    {
      break;
    }

    v34 = v46 ^ v32;
    if ((v28 & 0x7F) != 0)
    {
      v35 = v46 ^ v32;
    }

    else
    {
      v35 = 0;
    }

    if ((v28 & 0x7F) >= 0x40)
    {
      v34 = 0;
    }

    v22 ^= v34;
    v31 ^= v35;
    v36 = v28 >= 0xFFFFFFFFFFFFFFC0;
    if (v28 < 0xFFFFFFFFFFFFFFC0)
    {
      v37 = v29;
    }

    else
    {
      v37 = v29 + 1;
    }

    v28 += 64;
    v38 = v29 == 0x7FFFFFFFFFFFFFFFLL;
    v29 = v37;
    if (v38)
    {
      v29 = v37;
      if (v36)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }
  }

  (*(v41 + 8))(v45, v26);
  return v22;
}

uint64_t static FixedWidthInteger._truncatingInit<A>(_:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v81 = a1;
  v86 = a6;
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for BinaryInteger, associated type descriptor for BinaryInteger.Words);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v76 = &v68 - v12;
  v75 = *(*(*(swift_getAssociatedConformanceWitness(a5, a3, v11, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.BinaryInteger.Words: RandomAccessCollection) + 8) + 8) + 8);
  v78 = v11;
  swift_getAssociatedTypeWitness(0, v75, v11, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v90 = v13;
  v72 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v89 = &v68 - v15;
  v73 = *(a2 - 1);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v84 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v83 = &v68 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v91 = &v68 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v92 = &v68 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v85 = &v68 - v24;
  v87 = *(a4 + 8);
  v88 = a4;
  v82 = *(v87 + 24);
  v25 = *(v82 + 16);
  swift_getAssociatedTypeWitness(0, v25, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v71 = v26;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v74 = &v68 - v28;
  v29 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(*(a5 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v32, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v34 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v68 - v35;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v32, a3, v34, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&unk_18071E0A8, 256, v34, AssociatedConformanceWitness);
  (*(v32 + 24))(v36, a3, v32);
  v79 = a5;
  v38 = (*(*(*(a5 + 32) + 8) + 16))(v81, v31, a3);
  v39 = *(v29 + 8);
  v77 = a3;
  v40 = a3;
  v41 = v71;
  v39(v31, v40);
  v42 = swift_getAssociatedConformanceWitness(v25, a2, v41, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v43 = v74;
  v70 = *(v42 + 8);
  v70(&unk_18071E0A8, 256, v41, v42);
  v80 = v25;
  v44 = v25;
  v45 = v85;
  v46 = v44[3];
  v47 = v87;
  v69 = v38;
  if (v38)
  {
    v48 = v46;
    (v46)(v43, a2, v80);
    (*(v47 + 184))(v45, a2, v47);
    (*(v73 + 8))(v45, a2);
  }

  else
  {
    v48 = v46;
    (v46)(v43, a2, v80);
  }

  v70(&unk_18071E0A8, 256, v41, v42);
  v49 = v92;
  (v48)(v43, a2, v80);
  v50 = v88;
  v51 = (*(v88 + 56))(a2, v88);
  v52 = *(v50 + 136);
  v52(v51, a2, v50);
  (*(v79 + 112))(v77);
  v53 = v75;
  v54 = v78;
  (v75[4])(v78, v75);
  v55 = v53;
  v56 = v90;
  v57 = swift_getAssociatedConformanceWitness(v55, v54, v90, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v80 = *(v57 + 16);
  v81 = v57;
  (v80)(&v93, v56);
  if ((v94 & 1) == 0)
  {
    v58 = v88;
    v79 = *(*(v87 + 32) + 8);
    v77 = *(v79 + 16);
    v78 = (v79 + 16);
    v59 = v93;
    v75 = (v88 + 216);
    v76 = v69 << 63 >> 63;
    v60 = (v73 + 8);
    v74 = (v87 + 232);
    do
    {
      if (((v77)(v49, v91, a2, v79) & 1) == 0)
      {
        break;
      }

      v61 = v84;
      v52(v59 ^ v76, a2, v58);
      v62 = v83;
      (*(v58 + 216))(v61, v92, a2, v58);
      v63 = *v60;
      v64 = v61;
      v49 = v92;
      (*v60)(v64, a2);
      (*(v87 + 232))(v86, v62, a2);
      v63(v62, a2);
      v65 = v85;
      v52(64, a2, v58);
      (*(*(v82 + 8) + 32))(v49, v65, a2);
      v63(v65, a2);
      (v80)(&v93, v90, v81);
      v59 = v93;
    }

    while (v94 != 1);
  }

  (*(v72 + 8))(v89, v90);
  v66 = *(v73 + 8);
  v66(v91, a2);
  return (v66)(v49, a2);
}

uint64_t static FixedWidthInteger.&-= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 32))(v10, a1);
  (*(a4 + 88))(a1, a2, a3, a4);
  return (*(v8 + 8))(v10, a3);
}

uint64_t static FixedWidthInteger.&*= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 32))(v9, a1);
  (*(a4 + 96))(a1, v9, a3, a4);
  return (*(v7 + 8))(v9, a3);
}

uint64_t specialized static FixedWidthInteger._random<A>(using:)@<X0>(const char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v61 = a3;
  v5 = *(a2 + 8);
  v58 = *(v5 + 24);
  v6 = *(v58 + 16);
  swift_getAssociatedTypeWitness(0, v6, a1, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v8 = v7;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v53 - v10;
  v59 = *(a1 - 1);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v57 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v60 = v53 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v56 = v53 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = v53 - v18;
  v20 = *(a2 + 56);
  if (v20(a1, a2) < 65)
  {
    __buf = 0;
    swift_stdlib_random(&__buf, 8uLL);
    v48 = *(v5 + 96);
    v52 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v49, v50, v51);
    return v48(&__buf, &type metadata for UInt64, v52, a1, v5);
  }

  else
  {
    v55 = v5;
    v21 = v61;
    v22 = v20(a1, a2);
    if (v22 >= 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = v22 + 63;
    }

    v24 = v22 - (v23 & 0xFFFFFFFFFFFFFFC0);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, a1, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v8, AssociatedConformanceWitness);
    v26 = *(v6 + 24);
    v54 = v19;
    v26(v11, a1, v6);
    v27 = ((v24 > 0) | (v24 >> 63)) + (v23 >> 6);
    if (v27 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v28 = v21;
    v29 = v59;
    v30 = v55;
    if (v27)
    {
      v31 = 0;
      v53[1] = a2 + 216;
      v53[2] = v55 + 96;
      v53[0] = v59 + 8;
      v32 = 0x200000000000000;
      while (1)
      {
        __buf = 0;
        swift_stdlib_random(&__buf, 8uLL);
        v33 = *(v30 + 96);
        v37 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v34, v35, v36);
        result = v33(&__buf, &type metadata for UInt64, v37, a1, v30);
        if (!v32)
        {
          break;
        }

        __buf = v31;
        v41 = lazy protocol witness table accessor for type Int and conformance Int(result, v39, v40);
        v42 = v57;
        v33(&__buf, &type metadata for Int, v41, a1, v30);
        v43 = v56;
        (*(a2 + 216))(v60, v42, a1, a2);
        v44 = *v53[0];
        v45 = v42;
        v46 = v60;
        (*v53[0])(v45, a1);
        v44(v46, a1);
        (*(*(v58 + 8) + 32))(v54, v43, a1);
        v47 = v43;
        v29 = v59;
        v44(v47, a1);
        v30 = v55;
        --v32;
        v31 += 64;
        --v27;
        v28 = v61;
        if (!v27)
        {
          return (*(v29 + 32))(v28, v54, a1);
        }
      }

      __break(1u);
    }

    else
    {
      return (*(v29 + 32))(v28, v54, a1);
    }
  }

  return result;
}

uint64_t static FixedWidthInteger._random<A>(using:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v71 = a6;
  v72 = a5;
  v69 = a1;
  v70 = a3;
  v8 = *(a4 + 8);
  v66 = *(v8 + 24);
  v9 = *(v66 + 16);
  swift_getAssociatedTypeWitness(0, v9, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v11 = v10;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v56 - v13;
  v68 = *(a2 - 1);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v65 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v67 = &v56 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v64 = &v56 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v56 - v21;
  v23 = *(a4 + 56);
  if (v23(a2, a4) <= 64)
  {
    v73 = (*(v72 + 8))(v70);
    v52 = *(v8 + 96);
    v55 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v73, v53, v54);
    return v52(&v73, &type metadata for UInt64, v55, a2, v8);
  }

  else
  {
    v63 = v8;
    v24 = a4;
    v25 = v23(a2, a4);
    if (v25 >= 0)
    {
      v26 = v25;
    }

    else
    {
      v26 = v25 + 63;
    }

    v27 = v25 - (v26 & 0xFFFFFFFFFFFFFFC0);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v9, a2, v11, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    (*(AssociatedConformanceWitness + 8))(&unk_18071E0A8, 256, v11, AssociatedConformanceWitness);
    (*(v9 + 24))(v14, a2, v9);
    v29 = ((v27 > 0) | (v27 >> 63)) + (v26 >> 6);
    if (v29 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v62 = v22;
    v31 = v71;
    v30 = v72;
    v32 = v63;
    if (v29)
    {
      v33 = v24;
      v34 = 0;
      v35 = v72 + 8;
      v36 = *(v72 + 8);
      v61 = v24 + 216;
      v60 = (v68 + 8);
      v37 = 0x200000000000000;
      while (1)
      {
        if (!v29)
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v57 = v29;
        v58 = v36;
        v59 = v35;
        v73 = v36(v70, v30);
        v38 = *(v32 + 96);
        v41 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v73, v39, v40);
        v42 = v67;
        result = v38(&v73, &type metadata for UInt64, v41, a2, v32);
        if (!v37)
        {
          break;
        }

        v73 = v34;
        v46 = lazy protocol witness table accessor for type Int and conformance Int(result, v44, v45);
        v47 = v65;
        v38(&v73, &type metadata for Int, v46, a2, v32);
        v48 = v64;
        (*(v33 + 216))(v42, v47, a2, v33);
        v49 = v42;
        v56 = v37;
        v50 = *v60;
        v51 = v47;
        v31 = v71;
        (*v60)(v51, a2);
        v50(v49, a2);
        (*(*(v66 + 8) + 32))(v62, v48, a2);
        v50(v48, a2);
        v30 = v72;
        v37 = v56 - 1;
        v34 += 64;
        v29 = v57 - 1;
        v36 = v58;
        v35 = v59;
        if (v57 == 1)
        {
          return (*(v68 + 32))(v31, v62, a2);
        }
      }

      __break(1u);
    }

    else
    {
      return (*(v68 + 32))(v31, v62, a2);
    }
  }

  return result;
}

uint64_t UnsignedInteger<>.init<A>(exactly:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v7 = a4;
  v9 = a2;
  v94 = *(a4 + 8);
  v84 = *(*(v94 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v84, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v83 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v82 = &v80 - v14;
  v15 = *(v9 - 1);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v86 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v93 = &v80 - v19;
  v96 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v18);
  v91 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = *(*(a5 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v90, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v89 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v88 = &v80 - v22;
  v87 = *(a5 + 64);
  if (v87(a3, a5))
  {
    v95 = v7;
    v23 = v9;
    v92 = v15;
    v24 = a1;
    v25 = a6;
    v26 = v89;
    v27 = v90;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v90, a3, v89, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v29 = v88;
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v26, AssociatedConformanceWitness);
    v30 = v27[3];
    v31 = v91;
    v32 = v29;
    v33 = v27;
    a6 = v25;
    a1 = v24;
    v15 = v92;
    v9 = v23;
    v7 = v95;
    (v30)(v32, a3, v33);
    LOBYTE(v26) = (*(*(*(a5 + 32) + 8) + 16))(a1, v31, a3);
    (*(v96 + 8))(v31, a3);
    if (v26)
    {
      goto LABEL_25;
    }
  }

  v85 = *(a5 + 128);
  v34 = v85(a3, a5);
  v95 = a1;
  v35 = v34 < (*(v7 + 56))(v9, v7);
  a1 = v95;
  if (v35)
  {
    goto LABEL_5;
  }

  v92 = v15;
  v81 = a6;
  (*(v7 + 64))(v9, v7);
  v37 = v94;
  v38 = v9;
  v39 = *(v94 + 64);
  v40 = v39(v38, v94);
  if (((v40 ^ v87(a3, a5)) & 1) == 0)
  {
    v50 = v93;
    v51 = (*(v37 + 128))(v38, v37);
    a1 = v95;
    if (v51 >= v85(a3, a5))
    {
      v55 = v91;
      (*(v96 + 16))(v91, a1, a3);
      v56 = v86;
      (*(v37 + 96))(v55, a3, a5, v38, v37);
      v57 = (*(*(*(v37 + 32) + 8) + 16))(v50, v56, v38);
      v15 = v92;
      v58 = *(v92 + 8);
      v58(v56, v38);
      v58(v50, v38);
      v9 = v38;
      a6 = v81;
      if (v57)
      {
        goto LABEL_25;
      }

      goto LABEL_5;
    }

    v52 = v91;
    (*(a5 + 96))(v50, v38, v37, a3, a5);
    v49 = (*(*(*(a5 + 32) + 8) + 16))(v52, a1, a3);
    (*(v96 + 8))(v52, a3);
    v9 = v38;
    a6 = v81;
    goto LABEL_24;
  }

  v41 = v39(v38, v37);
  v42 = (*(v37 + 128))(v38, v37);
  v43 = v85(a3, a5);
  v9 = v38;
  v44 = v37;
  if (v41)
  {
    a6 = v81;
    v45 = v92;
    if (v43 >= v42)
    {
      v59 = v83;
      v60 = v84;
      v61 = swift_getAssociatedConformanceWitness(v84, v9, v83, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v62 = v82;
      (*(v61 + 8))(&qword_18071E0A8, 256, v59, v61);
      v63 = v86;
      (v60[3])(v62, v9, v60);
      v64 = v93;
      LOBYTE(v59) = (*(*(*(v44 + 32) + 8) + 16))(v93, v63, v9);
      v65 = v9;
      v66 = *(v45 + 8);
      v66(v63, v65);
      a1 = v95;
      if (v59)
      {
        v66(v64, v65);
        v9 = v65;
        v15 = v92;
LABEL_25:
        (*(v96 + 8))(a1, a3);
        v36 = 1;
        return (*(v15 + 56))(a6, v36, 1, v9);
      }

      v78 = v91;
      (*(a5 + 96))(v64, v65, v44, a3, a5);
      v49 = (*(*(*(a5 + 32) + 8) + 16))(v78, a1, a3);
      (*(v96 + 8))(v78, a3);
      goto LABEL_23;
    }

    a1 = v95;
    v46 = v91;
    (*(v96 + 16))(v91, v95, a3);
    v47 = v86;
    (*(v37 + 96))(v46, a3, a5, v9, v37);
    v48 = v93;
    v49 = (*(*(*(v37 + 32) + 8) + 16))(v93, v47, v9);
  }

  else
  {
    a6 = v81;
    v15 = v92;
    if (v42 < v43)
    {
      v53 = v91;
      (*(a5 + 96))(v93, v9, v44, a3, a5);
      a1 = v95;
      v54 = (*(*(*(a5 + 32) + 8) + 16))(v53, v95, a3);
      (*(v96 + 8))(v53, a3);
      if (v54)
      {
        goto LABEL_25;
      }

      goto LABEL_5;
    }

    v68 = v89;
    v67 = v90;
    v69 = swift_getAssociatedConformanceWitness(v90, a3, v89, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v70 = v88;
    (*(v69 + 8))(&qword_18071E0A8, 256, v68, v69);
    v71 = v91;
    (v67[3])(v70, a3, v67);
    a1 = v95;
    LOBYTE(v68) = (*(*(*(a5 + 32) + 8) + 40))(v95, v71, a3);
    v72 = v96;
    (*(v96 + 8))(v71, a3);
    if ((v68 & 1) == 0)
    {
      (*(v15 + 8))(v93, v9);
      goto LABEL_5;
    }

    v73 = *(v72 + 16);
    v74 = v93;
    v73(v71, a1, a3);
    v75 = v71;
    v47 = v86;
    (*(v44 + 96))(v75, a3, a5, v9, v44);
    v76 = *(*(*(v44 + 32) + 8) + 16);
    v48 = v74;
    v49 = v76(v74, v47, v9);
    v45 = v15;
  }

  v65 = v9;
  v77 = *(v45 + 8);
  v77(v47, v9);
  v77(v48, v9);
LABEL_23:
  v9 = v65;
LABEL_24:
  v15 = v92;
  if (v49)
  {
    goto LABEL_25;
  }

LABEL_5:
  (*(v94 + 96))(a1, a3, a5, v9);
  v36 = 0;
  return (*(v15 + 56))(a6, v36, 1, v9);
}

uint64_t static UnsignedInteger<>.min.getter(const char *a1, uint64_t a2)
{
  v3 = *(*(*(a2 + 8) + 24) + 16);
  swift_getAssociatedTypeWitness(0, v3, a1, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v3, a1, v5, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v5, AssociatedConformanceWitness);
  return (*(v3 + 24))(v7, a1, v3);
}

uint64_t specialized UnsignedInteger<>.dividingFullWidth(_:)(uint64_t *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  if (!(a6 | a7) || __PAIR128__(a3, a2) >= __PAIR128__(a7, a6))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8 = __clz(a7);
  v9 = __clz(a6) + 64;
  if (!a7)
  {
    v8 = v9;
  }

  if (!(a6 & (a6 - 1) | a7 & ((a6 != 0) + a7 - 1)))
  {
    v10 = v8 + 1;
    v11 = 127 - v8;
    v12 = v11 & 0x7F;
    v13 = ((2 * a5) << ~v11) | (a4 >> v11);
    v14 = a5 >> v11;
    if ((v12 & 0x40) != 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    if ((v10 & 0x40) != 0)
    {
      v16 = 0;
    }

    else
    {
      v16 = a2 << v10;
    }

    result = v15 | v16;
    v18 = ((a6 != 0) + a7 - 1) & a5;
    v19 = (a6 - 1) & a4;
    goto LABEL_54;
  }

  v20 = v8 & 0x7F;
  v21 = ~v8;
  if ((-v8 & 0x40) != 0)
  {
    v22 = 0;
  }

  else
  {
    v22 = a5 >> -v8;
  }

  v23 = ((2 * a5) << (v8 - 1)) | (a4 >> -v8);
  if ((-v8 & 0x40) != 0)
  {
    v23 = a5 >> -v8;
  }

  if (!v8)
  {
    v23 = 0;
    v22 = 0;
  }

  if ((v8 & 0x40) != 0)
  {
    v24 = a6 << v8;
  }

  else
  {
    v24 = (a7 << v8) | (a6 >> 1 >> ~v8);
  }

  if ((v8 & 0x40) != 0)
  {
    v25 = 0;
  }

  else
  {
    v25 = a6 << v8;
  }

  v26 = (a3 << v8) | (a2 >> 1 >> v21);
  v27 = a2 << v8;
  if ((v8 & 0x40) != 0)
  {
    v26 = a2 << v8;
    v27 = 0;
  }

  v28 = v22 | v26;
  v29 = v23 | v27;
  v30 = (a5 << v8) | (a4 >> 1 >> v21);
  v31 = a4 << v8;
  if ((v20 & 0x40) != 0)
  {
    v32 = v31;
  }

  else
  {
    v32 = v30;
  }

  if ((v20 & 0x40) != 0)
  {
    v33 = 0;
  }

  else
  {
    v33 = v31;
  }

  if (v25)
  {
    if (v24)
    {
      v34 = __udivti3();
      v36 = v34;
      v38 = (__PAIR128__(v28, v29) - __PAIR128__(v35, v34) * v24) >> 64;
      v37 = v29 - v34 * v24;
      do
      {
        if (!v35 && __PAIR128__(v37, v32) >= v36 * v25)
        {
          break;
        }

        v39 = v36-- != 0;
        v35 = v39 + v35 - 1;
        v39 = __CFADD__(v37, v24);
        v37 += v24;
        if (v39)
        {
          ++v38;
        }
      }

      while (!v38);
      v41 = v32 - v36 * v25;
      v40 = (__PAIR128__(v29, v32) - __PAIR128__(v35, v36) * __PAIR128__(v24, v25)) >> 64;
      result = __udivti3();
      v43 = v42;
      v45 = (__PAIR128__(v40, v41) - __PAIR128__(v42, result) * v24) >> 64;
      v44 = v41 - result * v24;
      do
      {
        if (!v43 && __PAIR128__(v44, v33) >= result * v25)
        {
          break;
        }

        v39 = result-- != 0;
        v43 = v39 + v43 - 1;
        v39 = __CFADD__(v44, v24);
        v44 += v24;
        if (v39)
        {
          ++v45;
        }
      }

      while (!v45);
      v46 = (__PAIR128__(v41, v33) - __PAIR128__(v43, result) * __PAIR128__(v24, v25)) >> 64;
      v47 = v46 >> v20;
      v19 = ((2 * v46) << ~v20) | ((v33 - result * v25) >> v20);
      if ((v20 & 0x40) != 0)
      {
        v19 = v47;
        v18 = 0;
      }

      else
      {
        v18 = v47;
      }

      goto LABEL_54;
    }

LABEL_56:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!v24)
  {
    goto LABEL_56;
  }

  __udivti3();
  result = __udivti3();
  v48 = v32 - result * v24;
  v18 = v48 >> v20;
  v19 = ((2 * v48) << ~v20) | (v33 >> v20);
  if ((v20 & 0x40) != 0)
  {
    v19 = v18;
    v18 = 0;
  }

LABEL_54:
  *a1 = v19;
  a1[1] = v18;
  return result;
}

void static SignedInteger._maskingAdd(_:_:)()
{
  static SignedInteger._maskingAdd(_:_:)();
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002CLL, 0x800000018066D490, "Swift/Integers.swift", 0x14uLL, 2, 0xD2AuLL);
}

void static SignedInteger._maskingSubtract(_:_:)()
{
  static SignedInteger._maskingSubtract(_:_:)();
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002CLL, 0x800000018066D490, "Swift/Integers.swift", 0x14uLL, 2, 0xD2FuLL);
}

uint64_t static SignedInteger<>.min.getter(const char *a1, uint64_t a2)
{
  v4 = *(a1 - 1);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v11 = *(*(*(v10 + 8) + 24) + 16);
  swift_getAssociatedTypeWitness(0, v11, a1, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v11, a1, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&unk_18071E0B0, 257, v13, AssociatedConformanceWitness);
  (*(v11 + 24))(v15, a1, v11);
  v17 = (*(a2 + 56))(a1, a2);
  (*(a2 + 136))(v17 - 1, a1, a2);
  (*(a2 + 216))(v9, v7, a1, a2);
  v18 = *(v4 + 8);
  v18(v7, a1);
  return (v18)(v9, a1);
}

uint64_t specialized SignedInteger<>.isMultiple(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a1 & a2) == 0xFFFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  if (!(a1 | a2))
  {
    return (a3 | a4) == 0;
  }

  v5 = __modti3();
  return (v5 | v6) == 0;
}

{
  if (a2 == -1)
  {
    if (a1 == -1)
    {
      return 1;
    }

    goto LABEL_6;
  }

  if (a2 || a1)
  {
LABEL_6:
    v6 = _Int128.remainderReportingOverflow(dividingBy:)(*&a1);
    if (v6.overflow)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v4 = v6.partialValue.high | v6.partialValue.low;
    return v4 == 0;
  }

  v4 = a4 | a3;
  return v4 == 0;
}

uint64_t specialized SignedInteger<>.isMultiple(of:)(unsigned __int8 a1, char a2)
{
  if (a1 == 255)
  {
    return 1;
  }

  if (a1)
  {
    return a2 % a1 == 0;
  }

  return a2 == 0;
}

uint64_t specialized SignedInteger<>.isMultiple(of:)(unsigned __int16 a1, __int16 a2)
{
  if (a1 == 0xFFFF)
  {
    return 1;
  }

  if (a1)
  {
    return a2 % a1 == 0;
  }

  return a2 == 0;
}

uint64_t specialized SignedInteger<>.isMultiple(of:)(int a1, int a2)
{
  if (a1 == -1)
  {
    return 1;
  }

  if (a1)
  {
    return a2 % a1 == 0;
  }

  return a2 == 0;
}

uint64_t SignedInteger<>.isMultiple(of:)(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a3 + 8);
  v100 = *(*(v7 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v100, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v101 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v98 - v10;
  v12 = *(a2 - 1);
  v13 = MEMORY[0x1EEE9AC00](v9);
  v103 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v98 - v15;
  v17 = *(v7 + 64);
  v18 = v17(a2, v7);
  v104 = v17;
  v105 = v7 + 64;
  v102 = v3;
  if (v18)
  {
    v106 = *(v7 + 128);
    v19 = v106(a2, v7);
    if (v19 >= 64)
    {
      v107 = 0;
      v99 = a1;
      v32 = v12;
      v33 = *(v7 + 96);
      v34 = lazy protocol witness table accessor for type Int and conformance Int(v19, v20, v21);
      v33(&v107, &type metadata for Int, v34, a2, v7);
      a1 = v99;
      v12 = v32;
      v35 = (*(*(*(v7 + 16) + 8) + 8))(v99, v16, a2);
      (*(v32 + 8))(v16, a2);
      if (v35)
      {
        goto LABEL_23;
      }
    }

    else if (!(*(v7 + 120))(a2, v7))
    {
      goto LABEL_23;
    }

LABEL_10:
    v36 = v104;
    if (v104(a2, v7))
    {
      v37 = v106(a2, v7);
      if (v37 >= 64)
      {
        v107 = -1;
        v40 = v12;
        v41 = a1;
        v42 = *(v7 + 96);
        v43 = lazy protocol witness table accessor for type Int and conformance Int(v37, v38, v39);
        v42(&v107, &type metadata for Int, v43, a2, v7);
        a1 = v41;
        v44 = (*(*(*(v7 + 16) + 8) + 8))(v41, v16, a2);
        goto LABEL_16;
      }
    }

    else
    {
      v45 = a1;
      v46 = v36(a2, v7);
      v47 = v45;
      v48 = v106(a2, v7);
      if (v46)
      {
        if (v48 > 64)
        {
          v107 = -1;
          v40 = v12;
          v51 = *(v7 + 96);
          v52 = lazy protocol witness table accessor for type Int and conformance Int(v48, v49, v50);
          v51(&v107, &type metadata for Int, v52, a2, v7);
          a1 = v45;
          v44 = (*(*(*(v7 + 16) + 8) + 8))(v45, v16, a2);
LABEL_16:
          v53 = v44;
          (*(v40 + 8))(v16, a2);
          if ((v53 & 1) == 0)
          {
            goto LABEL_38;
          }

LABEL_41:
          v74 = 1;
          return v74 & 1;
        }

        v78 = v100;
        v77 = v101;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v100, a2, v101, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v77, AssociatedConformanceWitness);
        (v78[3])(v11, a2, v78);
        a1 = v47;
        LOBYTE(v77) = (*(*(*(v7 + 32) + 8) + 32))(v47, v16, a2);
        (*(v12 + 8))(v16, a2);
        if ((v77 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      else
      {
        a1 = v45;
        if (v48 >= 64)
        {
LABEL_38:
          (*(v7 + 168))(v102, a1, a2, v7);
          v80 = v104;
          if (v104(a2, v7))
          {
            v81 = v106(a2, v7);
            if (v81 >= 64)
            {
              goto LABEL_49;
            }

            goto LABEL_47;
          }

          v84 = v80(a2, v7);
          v81 = v106(a2, v7);
          if (v84)
          {
            if (v81 <= 64)
            {
              v86 = v100;
              v85 = v101;
              v87 = swift_getAssociatedConformanceWitness(v100, a2, v101, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
              (*(v87 + 8))(&qword_18071E0A8, 256, v85, v87);
              (v86[3])(v11, a2, v86);
              LOBYTE(v85) = (*(*(*(v7 + 32) + 8) + 32))(v103, v16, a2);
              v88 = *(v12 + 8);
              v88(v16, a2);
              if ((v85 & 1) == 0)
              {
                v88(v103, a2);
LABEL_51:
                v74 = 0;
                return v74 & 1;
              }

              v89 = v103;
              v90 = (*(v7 + 120))(a2, v7);
              v88(v89, a2);
LABEL_48:
              v74 = v90 == 0;
              return v74 & 1;
            }
          }

          else if (v81 < 64)
          {
LABEL_47:
            v91 = v103;
            v90 = (*(v7 + 120))(a2, v7);
            (*(v12 + 8))(v91, a2);
            goto LABEL_48;
          }

LABEL_49:
          v107 = 0;
          v92 = v12;
          v93 = *(v7 + 96);
          v94 = lazy protocol witness table accessor for type Int and conformance Int(v81, v82, v83);
          v93(&v107, &type metadata for Int, v94, a2, v7);
          v95 = v103;
          v74 = (*(*(*(v7 + 16) + 8) + 8))(v103, v16, a2);
          v96 = *(v92 + 8);
          v96(v16, a2);
          v96(v95, a2);
          return v74 & 1;
        }
      }
    }

    if ((*(v7 + 120))(a2, v7) != -1)
    {
      goto LABEL_38;
    }

    goto LABEL_41;
  }

  v22 = a1;
  v23 = v17(a2, v7);
  v24 = v22;
  v106 = *(v7 + 128);
  v25 = v106(a2, v7);
  if ((v23 & 1) == 0)
  {
    if (v25 < 64)
    {
      a1 = v22;
      v31 = (*(v7 + 120))(a2, v7);
      goto LABEL_20;
    }

LABEL_22:
    v107 = 0;
    v54 = *(v7 + 96);
    v55 = lazy protocol witness table accessor for type Int and conformance Int(v25, v26, v27);
    v54(&v107, &type metadata for Int, v55, a2, v7);
    a1 = v22;
    v56 = (*(*(*(v7 + 16) + 8) + 8))(v22, v16, a2);
    (*(v12 + 8))(v16, a2);
    v4 = v102;
    if (v56)
    {
      goto LABEL_23;
    }

    goto LABEL_10;
  }

  if (v25 > 64)
  {
    goto LABEL_22;
  }

  v29 = v100;
  v28 = v101;
  v30 = swift_getAssociatedConformanceWitness(v100, a2, v101, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(v30 + 8))(&qword_18071E0A8, 256, v28, v30);
  (v29[3])(v11, a2, v29);
  a1 = v24;
  LOBYTE(v28) = (*(*(*(v7 + 32) + 8) + 32))(v24, v16, a2);
  (*(v12 + 8))(v16, a2);
  if ((v28 & 1) == 0)
  {
    goto LABEL_10;
  }

  v31 = (*(v7 + 120))(a2, v7);
LABEL_20:
  v4 = v102;
  if (v31)
  {
    goto LABEL_10;
  }

LABEL_23:
  v57 = v104;
  if ((v104(a2, v7) & 1) == 0)
  {
    v61 = v11;
    v62 = v4;
    v63 = v12;
    v64 = v57(a2, v7);
    v65 = v62;
    v66 = v106(a2, v7);
    if (v64)
    {
      if (v66 <= 64)
      {
        v70 = v100;
        v69 = v101;
        v71 = swift_getAssociatedConformanceWitness(v100, a2, v101, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        (*(v71 + 8))(&qword_18071E0A8, 256, v69, v71);
        (v70[3])(v61, a2, v70);
        LOBYTE(v69) = (*(*(*(v7 + 32) + 8) + 32))(v65, v16, a2);
        (*(v63 + 8))(v16, a2);
        if ((v69 & 1) == 0)
        {
          goto LABEL_51;
        }

LABEL_34:
        v74 = (*(v7 + 120))(a2, v7) == 0;
        return v74 & 1;
      }
    }

    else if (v66 < 64)
    {
      goto LABEL_34;
    }

    v107 = 0;
    v75 = *(v7 + 96);
    v76 = lazy protocol witness table accessor for type Int and conformance Int(v66, v67, v68);
    v75(&v107, &type metadata for Int, v76, a2, v7);
    v74 = (*(*(*(v7 + 16) + 8) + 8))(v65, v16, a2);
    (*(v63 + 8))(v16, a2);
    return v74 & 1;
  }

  v58 = v106(a2, v7);
  if (v58 < 64)
  {
    goto LABEL_34;
  }

  v107 = 0;
  v72 = *(v7 + 96);
  v73 = lazy protocol witness table accessor for type Int and conformance Int(v58, v59, v60);
  v72(&v107, &type metadata for Int, v73, a2, v7);
  v74 = (*(*(*(v7 + 16) + 8) + 8))(v4, v16, a2);
  (*(v12 + 8))(v16, a2);
  return v74 & 1;
}

uint64_t specialized SignedInteger<>.dividingFullWidth(_:)(uint64_t *a1, unint64_t a2, int64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a3;
  v11 = __CFSUB__(0, v7, a4 == 0);
  v12 = -__PAIR128__(v7, a4) >> 64;
  v13 = !v11;
  v14 = v13 ^ 1u;
  v15 = ~a3;
  v11 = __CFADD__(v14, ~a2);
  v16 = v14 + ~a2;
  if (v11)
  {
    v15 = -a3;
  }

  if (a3 < 0)
  {
    a4 = -a4;
    a5 = v12;
    a2 = v16;
    a3 = v15;
  }

  v17 = __PAIR128__(a7 ^ (a7 >> 63), a6 ^ (a7 >> 63)) - __PAIR128__(a7 >> 63, a7 >> 63);
  result = specialized UnsignedInteger<>.dividingFullWidth(_:)(&v24, a2, a3, a4, a5, v17, *(&v17 + 1));
  if (((a7 ^ v9) & 0x8000000000000000) == 0)
  {
    if ((v19 & 0x8000000000000000) == 0)
    {
      v21 = v25;
      if ((v25 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000051, 0x80000001806718B0, "Swift/Int128.swift", 0x12uLL, 2, 0x9FuLL);
  }

  if (__PAIR128__(v19, result) >= __PAIR128__(0x8000000000000000, 1))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = -result;
  v21 = v25;
  if (v25 < 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  v22 = v24;
  v23 = -__PAIR128__(v20, v24) >> 64;
  if (v9 < 0)
  {
    v22 = -v24;
    v21 = v23;
  }

  *a1 = v22;
  a1[1] = v21;
  return result;
}

uint64_t JoinedSequence._separator.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  result = *(v2 + v4);
  *(v2 + v4) = a1;
  return result;
}

uint64_t JoinedSequence.init<A>(base:separator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  (*(*(a2 - 8) + 32))(a7, a1);
  v13 = (*(a5 + 56))(a3, a5);
  result = type metadata accessor for JoinedSequence(0, a2, a4, a6);
  *(a7 + *(result + 44)) = v13;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance JoinedSequence<A>.Iterator._JoinIteratorState(uint64_t a1)
{
  specialized Hasher.init(_seed:)(a1, v3);
  JoinedSequence.Iterator._JoinIteratorState.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t FlattenSequence.Iterator._inner.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = *(a1 + 32);
  swift_getAssociatedTypeWitness(255, *(a1 + 24), *(a1 + 16), &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  swift_getAssociatedTypeWitness(255, v5, v6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v10 = type metadata accessor for Optional(0, v7, v8, v9);
  v11 = *(*(v10 - 8) + 16);

  return v11(a2, v2 + v4, v10);
}

uint64_t FlattenSequence.Iterator._inner.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = *(a2 + 32);
  swift_getAssociatedTypeWitness(255, *(a2 + 24), *(a2 + 16), &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  swift_getAssociatedTypeWitness(255, v5, v6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v10 = type metadata accessor for Optional(0, v7, v8, v9);
  v11 = *(*(v10 - 8) + 40);

  return v11(v2 + v4, a1, v10);
}

uint64_t JoinedSequence.Iterator._separatorData.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  result = *(v2 + v4);
  *(v2 + v4) = a1;
  return result;
}

uint64_t JoinedSequence.Iterator._separator.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 52));
  result = *v6;
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t JoinedSequence.Iterator.init<A>(base:separator:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X2>, uint64_t a3@<X3>, int **a4@<X4>, uint64_t a5@<X5>, int **a6@<X6>, uint64_t a7@<X8>)
{
  v13 = type metadata accessor for JoinedSequence.Iterator(0, a2, a4, a6);
  v14 = v13[11];
  swift_getAssociatedTypeWitness(255, a4, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  swift_getAssociatedTypeWitness(0, a6, v15, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  (*(*(v16 - 8) + 56))(a7 + v14, 1, 1, v16);
  v17 = (a7 + v13[13]);
  *v17 = 0;
  v17[1] = 0;
  *(a7 + v13[14]) = 0;
  swift_getAssociatedTypeWitness(0, a4, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  (*(*(v18 - 8) + 32))(a7, a1, v18);
  result = (*(a5 + 56))(a3, a5);
  *(a7 + v13[12]) = result;
  return result;
}

uint64_t JoinedSequence.Iterator.next()@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = a1;
  v102 = a2;
  v5 = *(a1 + 3);
  v6 = *(a1 + 4);
  v115 = *(a1 + 2);
  v116 = v5;
  swift_getAssociatedTypeWitness(255, v5, v115, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  swift_getAssociatedTypeWitness(255, v6, v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10 = v9;
  v111 = type metadata accessor for Optional(0, v9, v11, v12);
  v13 = *(v111 - 8);
  v14 = MEMORY[0x1EEE9AC00](v111);
  v105 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v101 = &v87 - v16;
  swift_getAssociatedTypeWitness(255, v6, v8, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v18 = v17;
  v109 = type metadata accessor for Optional(0, v17, v19, v20);
  v21 = *(v109 - 8);
  v22 = MEMORY[0x1EEE9AC00](v109);
  v98 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v97 = &v87 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v87 - v26;
  v100 = type metadata accessor for Optional(0, v8, v28, v29);
  v30 = MEMORY[0x1EEE9AC00](v100);
  v96 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v87 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v104 = &v87 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v103 = &v87 - v37;
  v117 = v10 - 8;
  v118 = v10;
  v93 = v13;
  v38 = (v13 + 8);
  v39 = v4[14];
  v114 = (v40 + 48);
  v41 = (v40 + 32);
  v112 = v6;
  v106 = v6 + 4;
  v107 = v38;
  v42 = v18;
  v110 = v18 - 8;
  v108 = (v21 + 40);
  v99 = (v43 + 8);
  v95 = (v21 + 16);
  v94 = (v21 + 8);
  v113 = v18;
  v119 = v39;
  while (2)
  {
    for (i = *(v3 + v39); i > 1u; i = 1)
    {
      if (i != 2)
      {
        return (*(*(v118 - 8) + 56))(v102, 1, 1);
      }

      v55 = (v3 + v4[13]);
      v56 = *v55;
      if (!*v55)
      {
        goto LABEL_28;
      }

      v57 = *(v56 + 16);
      v58 = v55[1];
      if (v58 != v57)
      {
        if (v58 >= v57)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v84 = v118;
        v85 = *(v118 - 8);
        v86 = v105;
        (*(v85 + 16))(v105, v56 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v58, v118);
        v55[1] = v58 + 1;
        (*(v85 + 56))(v86, 0, 1, v84);
        return (*(v93 + 32))(v102, v86, v111);
      }

      v59 = v105;
      (*(*(v118 - 8) + 56))(v105, 1, 1);
      (*v107)(v59, v111);
LABEL_3:
      *(v3 + v119) = 1;
    }

    if (i)
    {
      v60 = v4[11];
      v91 = *(v42 - 8);
      v61 = *(v91 + 48);
      v92 = v91 + 48;
      if (v61(v3 + v60, 1, v42) == 1)
      {
LABEL_28:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v112, v8, v42, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
      v63 = *(AssociatedConformanceWitness + 16);
      v90 = v60;
      v64 = v42;
      v65 = v101;
      v63(v64, AssociatedConformanceWitness);
      v66 = *(v118 - 8);
      if ((*(v66 + 48))(v65, 1) != 1)
      {
        return (*(v93 + 32))(v102, v101, v111);
      }

      v87 = v66;
      v88 = v61;
      v89 = v4;
      v68 = v115;
      v67 = v116;
      swift_getAssociatedTypeWitness(255, v116, v115, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
      v70 = v69;
      v71 = swift_getAssociatedConformanceWitness(v67, v68, v69, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
      v72 = *(v71 + 16);
      v73 = swift_checkMetadataState(0, v70);
      v74 = v96;
      v72(v73, v71);
      if ((*v114)(v74, 1, v8) == 1)
      {
        (*v99)(v74, v100);
        v75 = 1;
        v4 = v89;
        v42 = v113;
        v76 = v97;
      }

      else
      {
        v76 = v97;
        (v112[4])(v8);
        v75 = 0;
        v4 = v89;
        v42 = v113;
      }

      (*(v91 + 56))(v76, v75, 1, v42);
      v77 = v109;
      v78 = v90;
      (*v108)(v3 + v90, v76, v109);
      v79 = v98;
      (*v95)(v98, v3 + v78, v77);
      LODWORD(v78) = v88(v79, 1, v42);
      (*v94)(v79, v77);
      if (v78 == 1)
      {
        (*v107)(v101, v111);
        *(v3 + v119) = 3;
        return (*(v87 + 56))(v102, 1, 1);
      }

      v80 = *(v3 + v4[12]);
      v81 = *v107;
      v39 = v119;
      if (*(v80 + 16))
      {
        *(v3 + v4[12]);
        v81(v101, v111);
        v82 = (v3 + v4[13]);
        *v82;
        *v82 = v80;
        v82[1] = 0;
        v42 = v113;
        *(v3 + v39) = 2;
      }

      else
      {
        v81(v101, v111);
      }

      continue;
    }

    break;
  }

  v45 = v4;
  v47 = v115;
  v46 = v116;
  swift_getAssociatedTypeWitness(255, v116, v115, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v49 = v48;
  v50 = swift_getAssociatedConformanceWitness(v46, v47, v48, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v51 = *(v50 + 16);
  v52 = swift_checkMetadataState(0, v49);
  v51(v52, v50);
  if ((*v114)(v34, 1, v8) != 1)
  {
    v53 = *v41;
    v54 = v103;
    (*v41)(v103, v34, v8);
    v53(v104, v54, v8);
    (v112[4])(v8);
    v42 = v113;
    (*(*(v113 - 8) + 56))(v27, 0, 1, v113);
    v4 = v45;
    (*v108)(v3 + v45[11], v27, v109);
    goto LABEL_3;
  }

  (*v99)(v34, v100);
  *(v3 + v119) = 3;
  return (*(*(v118 - 8) + 56))(v102, 1, 1);
}

uint64_t JoinedSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 32))(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v5);
  v8 = *(a1 + 24);
  (*(v8 + 32))(v5, v8);
  v9 = *(v2 + *(a1 + 44));
  v10 = *(a1 + 32);
  v11 = type metadata accessor for JoinedSequence.Iterator(0, v5, v8, v10);
  v12 = v11[11];
  swift_getAssociatedTypeWitness(255, v8, v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  swift_getAssociatedTypeWitness(0, v10, v13, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  result = (*(*(v14 - 8) + 56))(a2 + v12, 1, 1, v14);
  v16 = (a2 + v11[13]);
  *v16 = 0;
  v16[1] = 0;
  *(a2 + v11[14]) = 0;
  *(a2 + v11[12]) = v9;
  return result;
}

__objc2_class **JoinedSequence._copyToContiguousArray()(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v89 = v2;
  swift_getAssociatedTypeWitness(0, v2, v3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v5 = v4;
  v86 = *(v4 - 1);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v77 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v76 = &v75 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v91 = &v75 - v10;
  v13 = type metadata accessor for Optional(0, v5, v11, v12);
  v79 = *(v13 - 8);
  v80 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v78 = &v75 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v75 - v20;
  v22 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v19);
  v24 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, v2, v3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v93 = v25;
  v82 = *(v25 - 8);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v92 = &v75 - v29;
  v90 = *(a1 + 32);
  swift_getAssociatedTypeWitness(0, v90, v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v81 = v30;
  v95 = &_swiftEmptyArrayStorage;
  v31 = a1;
  v32 = *(v84 + *(a1 + 44));
  v33 = v32[2];
  (*(v22 + 16))(v24);
  v34 = *(v89 + 4);
  v35 = (v86 + 48);
  v83 = v31;
  if (v33)
  {
    v36 = v89;
    v34(v3, v89);
    v37 = v36;
    v38 = v93;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v37, v3, v93, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v40 = v78;
    v75 = *(AssociatedConformanceWitness + 16);
    v75(v38, AssociatedConformanceWitness);
    v41 = *v35;
    if ((*v35)(v40, 1, v5) == 1)
    {
      (*(v82 + 8))(v28, v38);
      (*(*(v83 - 8) + 8))(v84);
      (*(v79 + 8))(v40);
    }

    else
    {
      v92 = v28;
      v87 = v41;
      v88 = v35;
      v54 = *(v86 + 32);
      v89 = (AssociatedConformanceWitness + 16);
      v55 = v76;
      v54(v76, v40, v5);
      v56 = v91;
      v54(v91, v55, v5);
      v59 = type metadata accessor for ContiguousArray(0, v81, v57, v58);
      ContiguousArray.append<A>(contentsOf:)(v56, v59, v5, v90);
      v60 = v93;
      v86 = AssociatedConformanceWitness;
      v61 = AssociatedConformanceWitness;
      v62 = v87;
      v63 = v75;
      v75(v93, v61);
      v64 = v63;
      v65 = v62(v16, 1, v5);
      v66 = v77;
      if (v65 != 1)
      {
        v85 = v32;
        do
        {
          v54(v66, v16, v5);
          v94 = v32;
          v32;
          WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v59, v67);
          ContiguousArray.append<A>(contentsOf:)(&v94, v59, v59, WitnessTable);
          v69 = v59;
          v70 = v60;
          v71 = v5;
          v72 = v91;
          v54(v91, v66, v71);
          v73 = v72;
          v5 = v71;
          v60 = v70;
          v59 = v69;
          ContiguousArray.append<A>(contentsOf:)(v73, v69, v5, v90);
          v64(v60, v86);
          v32 = v85;
        }

        while (v87(v16, 1, v5) != 1);
      }

      (*(v82 + 8))(v92, v60);
      (*(*(v83 - 8) + 8))(v84);
      (*(v79 + 8))(v16);
    }
  }

  else
  {
    v42 = v89;
    v34(v3, v89);
    v43 = v93;
    v44 = swift_getAssociatedConformanceWitness(v42, v3, v93, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v88 = *(v44 + 16);
    v89 = v44;
    v87 = (v44 + 16);
    v88(v43);
    v45 = *v35;
    v46 = v45(v21, 1, v5);
    v47 = v90;
    v48 = v91;
    v49 = v81;
    if (v46 != 1)
    {
      v50 = *(v86 + 32);
      do
      {
        v50(v48, v21, v5);
        v53 = type metadata accessor for ContiguousArray(0, v49, v51, v52);
        ContiguousArray.append<A>(contentsOf:)(v48, v53, v5, v47);
        (v88)(v93, v89);
      }

      while (v45(v21, 1, v5) != 1);
    }

    (*(v82 + 8))(v92, v93);
    (*(*(v83 - 8) + 8))(v84);
  }

  return v95;
}

uint64_t Sequence<>.joined<A>(separator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v15 + 16))(&v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(*(a2 - 8) + 32))(a7, v7, a2);
  v16 = (*(a5 + 56))(a3, a5);
  result = type metadata accessor for JoinedSequence(0, a2, a4, a6);
  *(a7 + *(result + 44)) = v16;
  return result;
}

unint64_t AnyKeyPath._kvcKeyPathString.getter()
{
  v1 = *(v0 + 16);
  if (v1 >= 1)
  {
    return specialized String.init(validatingUTF8:)(v1);
  }

  else
  {
    return 0;
  }
}

void *static AnyKeyPath._create(capacityInBytes:initializedBy:)(uint64_t a1, void (*a2)(void *, char *))
{
  v5 = a1 + 3;
  if (a1 >= 0)
  {
    v5 = a1;
  }

  v6 = swift_allocObject(v2, (((*(v2 + 48) + 3) & 0x1FFFFFFFCLL) + (v5 & 0xFFFFFFFFFFFFFFFCLL)), *(v2 + 52) | 3);
  v6[2] = 0;
  if (a1 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = v6 + a1 + 24;
  v8 = v6;
  a2(v6 + 3, v7);
  return v8;
}

Swift::UnsafeMutableRawBufferPointer __swiftcall UnsafeMutableRawBufferPointer.init(start:count:)(Swift::UnsafeMutableRawPointer_optional start, Swift::Int count)
{
  if (count < 0)
  {
LABEL_8:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (count)
  {
    if (!start.value._rawValue)
    {
      goto LABEL_8;
    }
  }

  else if (!start.value._rawValue)
  {
    v2 = 0;
    goto LABEL_9;
  }

  v2 = start.value._rawValue + count;
LABEL_9:
  result._end.value._rawValue = v2;
  result._position = start;
  return result;
}

uint64_t AnyKeyPath._storedInlineOffset.getter()
{
  v1 = specialized KeyPathBuffer.init(base:)(v0 + 24);
  if (v1 && v2 != v1)
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 3) == 0)
      {
        v6 = v1;
        goto LABEL_16;
      }

      v5 = -v1 & 3;
      v6 = (v1 + v5);
      if (__OFADD__(v1, v5))
      {
        goto LABEL_53;
      }

      v7 = __OFSUB__(v2 - v1, v5);
      v8 = v2 - v1 - v5;
      if (v7)
      {
        goto LABEL_54;
      }

      if (v8 < 0)
      {
        goto LABEL_50;
      }

      if (v8)
      {
        break;
      }

      if (v6)
      {
        goto LABEL_15;
      }

      v2 = 0;
LABEL_16:
      v9 = v2 - v6 - 4;
      if (__OFSUB__(v2 - v6, 4))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_50;
      }

      v10 = v6 + 1;
      v11 = *v6;
      v12 = (v11 >> 24) & 0x7F;
      if (v12 != 1)
      {
        if (v12 == 2)
        {
          if ((v11 & 0x400000) != 0)
          {
            v13 = 28;
          }

          else
          {
            v13 = 20;
          }

          if ((v11 & 0x80000) != 0)
          {
            if ((v11 & 0x400000) != 0)
            {
              v14 = 6;
            }

            else
            {
              v14 = 4;
            }

            v15 = &v6[v14 + 2];
            if ((v15 & 7) != 0)
            {
              goto LABEL_55;
            }

            v13 += ((v11 >> 1) & 8) + *v15 + 16;
            if (v13 < 0)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_22;
        }

        if (v12 != 3)
        {
          v13 = 0;
          v1 = (v6 + 1);
          goto LABEL_35;
        }
      }

      v13 = 4 * ((~v11 & 0x7FFFFF) == 0);
LABEL_22:
      if (v9 < v13)
      {
        goto LABEL_50;
      }

      v1 = v10 + v13;
LABEL_35:
      v2 = v10 + v9;
      if (v9 == v13)
      {
        v16 = 1;
        if (v12 != 1)
        {
          return 0;
        }
      }

      else
      {
        v17 = _ss12MemoryLayoutOsRi_zrlE26_roundingUpBaseToAlignmentyS2WFZypXp_Tt0g5(v1, v2);
        v19 = v18 - v17 - 8;
        if (__OFSUB__(v18 - v17, 8))
        {
          __break(1u);
LABEL_50:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        if (v19 < 0)
        {
          goto LABEL_50;
        }

        v20 = v17;
        v1 = v17 + 8;
        v2 = v1 + v19;
        v16 = *v20 == 0;
        if (v12 != 1)
        {
          return 0;
        }
      }

      v21 = v11 & 0x7FFFFF;
      if ((v11 & 0x7FFFFF) == 0x7FFFFF)
      {
        if (v13 <= 3)
        {
          goto LABEL_50;
        }

        if ((v10 & 3) != 0)
        {
          goto LABEL_55;
        }

        v21 = *v10;
      }

      v7 = __OFADD__(v3, v21);
      v3 += v21;
      if (v7)
      {
        goto LABEL_52;
      }

      if (v16)
      {
        return v3;
      }
    }

    if (!v6)
    {
      goto LABEL_50;
    }

LABEL_15:
    v2 = v6 + v8;
    goto LABEL_16;
  }

  return 0;
}

uint64_t KeyPathBuffer.next()()
{
  v1 = *_ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs19RawKeyPathComponentV6HeaderV_Tt0g5(v0, 1);
  if ((v1 & 0x80000000) != 0)
  {
    *(v0 + 17) = 0;
  }

  v2 = *v0;
  v3 = RawKeyPathComponent.bodySize.getter(v1, *v0);
  _sSWySWSRyxGclufCs5UInt8V_Tt0gq5Tm(v2, v3);
  _ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs4Int8V_Tt0g5Tm(v0, v3);
  if (*v0 && *(v0 + 8) != *v0)
  {
    _ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFypXp_Tt0g5(v0, 1);
  }

  return v1;
}

uint64_t RawKeyPathComponent.Header.kind.getter(unsigned int a1)
{
  v1 = HIBYTE(a1) & 0x7F;
  if (v1 < 4)
  {
    return 0x2030100u >> (8 * v1);
  }

  if ((a1 & 0xFFFFFF) == 0)
  {
    return 4;
  }

  if ((a1 & 0xFFFFFF) == 1)
  {
    return 6;
  }

  return 5;
}

void AnyKeyPath.hash(into:)()
{
  Hasher._combine(_:)(*v0);
  v1 = specialized KeyPathBuffer.init(base:)((v0 + 3));
  if (v1)
  {
    v3 = v1;
    v4 = v2;
    if (v2 != v1)
    {
      while (1)
      {
        if ((v3 & 3) != 0)
        {
          v5 = -v3 & 3;
          if (__OFADD__(v3, v5))
          {
            goto LABEL_89;
          }

          if (__OFSUB__(v4 - v3, v5))
          {
            goto LABEL_90;
          }

          v6 = _sSWySWSRyxGclufCs5UInt8V_Tt0gq5Tm(v3 + v5, v4 - v3 - v5);
          v4 = v7;
        }

        else
        {
          v6 = v3;
        }

        v8 = v4 - v6 - 4;
        if (__OFSUB__(v4 - v6, 4))
        {
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        if (v8 < 0)
        {
          goto LABEL_87;
        }

        v9 = *v6;
        v10 = RawKeyPathComponent.Header.kind.getter(*v6);
        if ((v10 - 4) >= 3)
        {
          if ((v10 - 1) >= 2)
          {
            if ((v9 & 0x400000) != 0)
            {
              v11 = 28;
            }

            else
            {
              v11 = 20;
            }

            if ((v9 & 0x80000) != 0)
            {
              v23 = 6;
              if ((v9 & 0x400000) == 0)
              {
                v23 = 4;
              }

              v24 = &v6[v23 + 2];
              if ((v24 & 7) != 0)
              {
                goto LABEL_92;
              }

              v11 += ((v9 >> 1) & 8) + *v24 + 16;
              if (v11 < 0)
              {
                goto LABEL_87;
              }
            }
          }

          else
          {
            v11 = 4 * ((~v9 & 0x7FFFFF) == 0);
          }
        }

        else
        {
          v11 = 0;
        }

        if (v8 - v11 < 0)
        {
          goto LABEL_87;
        }

        v12 = v6 + 1;
        v13 = v6 + v11 + 4;
        if (v8 == v11)
        {
          v14 = 0;
          v3 = v6 + v11 + 4;
        }

        else
        {
          if ((v13 & 7) != 0)
          {
            v15 = -v13 & 7;
            if (__OFADD__(v13, v15))
            {
              __break(1u);
LABEL_87:
              _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v16 = _sSWySWSRyxGclufCs5UInt8V_Tt0gq5Tm(&v13[v15], v8 - v11 - v15);
            v4 = v17;
          }

          else
          {
            v16 = (v6 + v11 + 4);
          }

          if (__OFSUB__(v4 - v16, 8))
          {
            goto LABEL_91;
          }

          if (v4 - v16 - 8 < 0)
          {
            goto LABEL_87;
          }

          v3 = (v16 + 1);
          v14 = *v16;
        }

        v18 = RawKeyPathComponent.Header.kind.getter(v9);
        if (v18 > 3)
        {
          if (v18 == 4)
          {
            v22 = 2;
          }

          else if (v18 == 5)
          {
            v22 = 3;
          }

          else
          {
            v22 = 4;
          }
        }

        else
        {
          if (v18 == 1)
          {
            v25 = v9 & 0x7FFFFF;
            if ((v9 & 0x7FFFFF) == 0x7FFFFF)
            {
              if (v11 < 4)
              {
                goto LABEL_87;
              }

              if ((v12 & 3) != 0)
              {
                goto LABEL_92;
              }

              v25 = *v12;
            }

            v20 = v25;
            v21 = 0;
          }

          else
          {
            if (v18 != 2)
            {
              v26 = _sSW4load14fromByteOffset2asxSi_xmtlFSV_Tt1g5(4, (v6 + 1), v6 + v11 + 4);
              if ((v9 & 0x200000) != 0)
              {
                v27 = 1;
              }

              else
              {
                v27 = (v9 >> 19) & 2;
              }

              if ((v9 & 0x80000) != 0)
              {
                v33 = 24;
                if ((v9 & 0x400000) != 0)
                {
                  v34 = 6;
                }

                else
                {
                  v34 = 4;
                }

                v35 = &v6[v34 + 2];
                if ((v9 & 0x10) == 0)
                {
                  v33 = 16;
                }

                if ((v35 & 7) != 0)
                {
                  goto LABEL_92;
                }

                if ((*v35 & 0x8000000000000000) != 0)
                {
                  goto LABEL_87;
                }

                if ((v9 & 0x10) != 0)
                {
                  v36 = *(v35 + 16);
                }

                else
                {
                  v36 = 0;
                }

                v28 = v35 + v33;
                v29 = v35 + v33 + *v35;
                v30 = *(v35 + 8);
                if ((v9 & 0x400000) != 0)
                {
                  goto LABEL_74;
                }

LABEL_57:
                Hasher._combine(_:)(5uLL);
                Hasher._combine(_:)(v26);
                Hasher._combine(_:)(v27);
                if (!v30)
                {
                  goto LABEL_85;
                }

                v31 = ComputedArgumentWitnessesPtr.hash.getter(v30);
                if (!v28)
                {
                  goto LABEL_97;
                }

                v32 = v29 - v28 - v36;
                if (__OFSUB__(v29 - v28, v36))
                {
                  __break(1u);
LABEL_95:
                  __break(1u);
LABEL_96:
                  __break(1u);
LABEL_97:
                  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
                }
              }

              else
              {
                v28 = 0;
                v29 = 0;
                v30 = 0;
                v36 = 0;
                if ((v9 & 0x400000) == 0)
                {
                  goto LABEL_57;
                }

LABEL_74:
                if ((v9 & 0x800000) != 0)
                {
                  Hasher._combine(_:)(6uLL);
                  Hasher._combine(_:)(v26);
                  Hasher._combine(_:)(v27);
                  if (!v30)
                  {
                    goto LABEL_85;
                  }

                  v31 = ComputedArgumentWitnessesPtr.hash.getter(v30);
                  if (!v28)
                  {
                    goto LABEL_97;
                  }

                  v32 = v29 - v28 - v36;
                  if (__OFSUB__(v29 - v28, v36))
                  {
                    goto LABEL_96;
                  }
                }

                else
                {
                  Hasher._combine(_:)(7uLL);
                  Hasher._combine(_:)(v26);
                  Hasher._combine(_:)(v27);
                  if (!v30)
                  {
                    goto LABEL_85;
                  }

                  v31 = ComputedArgumentWitnessesPtr.hash.getter(v30);
                  if (!v28)
                  {
                    goto LABEL_97;
                  }

                  v32 = v29 - v28 - v36;
                  if (__OFSUB__(v29 - v28, v36))
                  {
                    goto LABEL_95;
                  }
                }
              }

              v22 = v31(v28, v32);
              if (!v22)
              {
                goto LABEL_85;
              }

              goto LABEL_84;
            }

            v19 = v9 & 0x7FFFFF;
            if ((v9 & 0x7FFFFF) == 0x7FFFFF)
            {
              if (v11 < 4)
              {
                goto LABEL_87;
              }

              if ((v12 & 3) != 0)
              {
                goto LABEL_92;
              }

              v19 = *v12;
            }

            v20 = v19;
            v21 = 1;
          }

          Hasher._combine(_:)(v21);
          v22 = v20;
        }

LABEL_84:
        Hasher._combine(_:)(v22);
LABEL_85:
        if (!v14)
        {
          return;
        }

        Hasher._combine(_:)(v14);
      }
    }
  }
}

uint64_t RawKeyPathComponent.value.getter@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = RawKeyPathComponent.Header.kind.getter(a1);
  if (v8 > 3)
  {
    v16 = 0xA000000000000000;
    v17 = 1;
    if (v8 != 5)
    {
      v17 = 2;
      v16 = 0xA000000000000000;
    }

    if (v8 == 4)
    {
      v9 = 0;
    }

    else
    {
      v9 = v17;
    }

    if (v8 == 4)
    {
      v16 = 0xA000000000000000;
    }

    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    result = 0;
  }

  else if (v8 == 1)
  {
    v9 = a1 & 0x7FFFFF;
    if (v9 == 0x7FFFFF)
    {
      v18 = _sSW4load14fromByteOffset2asxSi_xmtlFs6UInt32V_Tt1g5(0, a2, a3);
      v16 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      result = 0;
      v9 = v18;
    }

    else
    {
      v16 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      result = 0;
    }
  }

  else if (v8 == 2)
  {
    v9 = a1 & 0x7FFFFF;
    if (v9 == 0x7FFFFF)
    {
      v10 = _sSW4load14fromByteOffset2asxSi_xmtlFs6UInt32V_Tt1g5(0, a2, a3);
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      result = 0;
      v16 = 0x2000000000000000;
      v9 = v10;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      result = 0;
      v16 = 0x2000000000000000;
    }
  }

  else
  {
    v9 = _sSW4load14fromByteOffset2asxSi_xmtlFSV_Tt1g5(4, a2, a3);
    if ((a1 & 0x200000) != 0)
    {
      v19 = 1;
    }

    else
    {
      v19 = (a1 >> 19) & 2;
    }

    if ((a1 & 0x80000) != 0)
    {
      v20 = RawKeyPathComponent._computedArgumentSize.getter(a1, a2);
      if (v20 < 0)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v21 = 24;
      if ((a1 & 0x400000) != 0)
      {
        v22 = 24;
      }

      else
      {
        v22 = 16;
      }

      v23 = a2 + v22;
      if ((a1 & 0x10) == 0)
      {
        v21 = 16;
      }

      v12 = v23 + v21 + 4;
      v13 = v12 + v20;
      v14 = RawKeyPathComponent._computedArgumentWitnesses.getter(a1, a2);
      result = RawKeyPathComponent._computedArgumentWitnessSizeAdjustment.getter(a1, a2);
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      result = 0;
    }

    v11 = a2 + 12;
    v24 = v19 | 0x6000000000000000;
    if ((a1 & 0x800000) == 0)
    {
      v24 = v19 | 0x8000000000000000;
    }

    v16 = v19 | 0x4000000000000000;
    if ((a1 & 0x400000) != 0)
    {
      v16 = v24;
    }
  }

  *a4 = v9;
  a4[1] = v16;
  a4[2] = v11;
  a4[3] = v12;
  a4[4] = v13;
  a4[5] = v14;
  a4[6] = result;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AnyKeyPath()
{
  specialized Hasher.init(_seed:)(0, v1);
  AnyKeyPath.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnyKeyPath(uint64_t a1)
{
  specialized Hasher.init(_seed:)(a1, v2);
  AnyKeyPath.hash(into:)();
  return Hasher._finalize()();
}

void KeyPath._projectReadOnly(from:)(char *a1@<X0>, void *a2@<X8>)
{
  v5 = *(*v2 + 136);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v57[-1] - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v57[-1] - v12;
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v57[-1] - v15;
  v18 = *(v17 + 128);
  v19 = v2[2];
  if (v19 && v19 < 0)
  {
    if ((*(*(v18 - 8) + 64) & 0x8000000000000000) == 0)
    {
      v20 = *(v14 + 16);
      v21 = &a1[~v19];
LABEL_5:
      v22 = a2;
LABEL_38:

      v20(v22, v21, v5);
      return;
    }

    goto LABEL_42;
  }

  v56 = v14;
  v23 = specialized KeyPathBuffer.init(base:)((v2 + 3));
  v58[0] = v23;
  v58[1] = v24;
  v59 = v25 & 0x101;
  v60 = BYTE2(v25) & 1;
  if (!v23 || v24 == v23)
  {
LABEL_37:
    v20 = *(v56 + 16);
    v22 = a2;
    v21 = a1;
    goto LABEL_38;
  }

  if ((v25 & 0x10000) == 0)
  {
    if (v24 >= 0xFFFFFFFFFFFFFFF9)
    {
      __break(1u);
    }

    else
    {
      if (((v24 + 7) & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        goto LABEL_50;
      }

      isStackAllocationSafe = MEMORY[0x1EEE9AC00](v23);
      *(&v56 - 6) = v18;
      *(&v56 - 5) = v5;
      v52 = a1;
      v53 = v18;
      v54 = v58;
      v55 = v5;
      if (v46 == 63)
      {
        LODWORD(v54) = 0;
        v53 = 41;
        LOBYTE(v52) = 2;
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v24 = 1 << v45;
      if (1 << v45 <= 1024)
      {
LABEL_47:
        MEMORY[0x1EEE9AC00](isStackAllocationSafe);
        _ss41_withUnprotectedUnsafeTemporaryAllocation9byteCount9alignment_xSi_SixSwKXEtKRi_zlFxBpKXEfU_(&v57[-1] - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0), v47, partial apply for closure #2 in closure #2 in KeyPath._projectReadOnly(from:));
        v48 = *(v56 + 32);
        v56 += 32;
        v48(v10, &v57[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
        v48(a2, v10, v5);
        return;
      }
    }

    v49 = v24;
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v50 = v49;
      v51 = swift_slowAlloc(v49, 0xFFFFFFFFFFFFFFFFLL);
      _ss41_withUnprotectedUnsafeTemporaryAllocation9byteCount9alignment_xSi_SixSwKXEtKRi_zlFxBpKXEfU_(v51, v50, partial apply for closure #2 in closure #2 in KeyPath._projectReadOnly(from:));
      v51;
      return;
    }

    goto LABEL_47;
  }

  v26 = KeyPathBuffer.next()();
  v28 = v27;
  v30 = v29;
  bzero(a2, v6);
  RawKeyPathComponent.value.getter(v26, v28, v30, &v61);
  v31 = v61;
  v32 = v62 >> 61;
  if ((v62 >> 61) <= 1)
  {
    if (v32)
    {
      v40 = *a1;
      swift_beginAccess(v40 + v61, v57, 0, 0);
      (*(v56 + 16))(a2, v40 + v31, v5);
      return;
    }

    if ((*(*(v18 - 8) + 64) & 0x8000000000000000) == 0)
    {
      v20 = *(v56 + 16);
      v21 = &a1[v61];
      goto LABEL_5;
    }

LABEL_42:
    LODWORD(v54) = 0;
    v53 = 1215;
    LOBYTE(v52) = 2;
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v33 = v63;
  v34 = v64;
  v35 = v66;
  if ((v32 - 2) >= 3)
  {
    v41 = v64 | v63;
    v42 = v66 | v67;
    if (v62 != 0xA000000000000000 || v41 | v61 | v65 | v42)
    {
      if (v62 != 0xA000000000000000 || v61 != 1 || v41 | v65 | v42)
      {
        (*(v56 + 16))(v16, a1, v5);
        (*(v56 + 104))(v16, 0, v5);
        (*(v56 + 32))(a2, v16, v5);
        return;
      }

      if ((*(*(v18 - 8) + 88))(a1, v18))
      {
        LODWORD(v54) = 0;
        v53 = 1881;
        LOBYTE(v52) = 2;
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    else
    {
      v43 = (*(*(v18 - 8) + 88))(a1, v18);
      if (v43)
      {
        v52 = v18;
        v53 = v5;
        v54 = v5;
        LODWORD(v55) = MEMORY[0x1EEE9AC00](v43);
        _sSpsRi_zrlE17withMemoryRebound2to8capacity_qd_1_qd__m_Siqd_1_Spyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSiSpyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyqd__s5NeverOytIsgyrzr_AFytA2HRsd_0_ytRsd_1_Ri_zRi_d__r_1_lIetMygyrzo_Tp5(1, partial apply for closure #2 in RawKeyPathComponent._projectReadOnly<A, B, C>(_:to:endingWith:_:pointer:), (&v56 - 6), a2, v5, v5);
        return;
      }
    }

    goto LABEL_37;
  }

  if ((v63 & 7) != 0)
  {
    LODWORD(v54) = 0;
    v53 = 449;
    LOBYTE(v52) = 2;
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v36 = v65;
  swift_getFunctionTypeMetadata3(131075, v18, &type metadata for UnsafeRawPointer, &type metadata for Int, v5);
  if (!*v33)
  {
LABEL_50:
    LODWORD(v54) = 0;
    v53 = 377;
    LOBYTE(v52) = 2;
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v35)
  {
    v37 = v34 == 0;
  }

  else
  {
    v37 = 1;
  }

  if (v37)
  {
    v38 = 0;
  }

  else
  {
    v38 = v36 - v34;
  }

  if (v37)
  {
    v39 = v33;
  }

  else
  {
    v39 = v34;
  }

  (*v33)(a1, v39, v38);
  (*(v56 + 32))(a2, v13, v5);
}

uint64_t closure #2 in closure #2 in KeyPath._projectReadOnly(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v44[1] = a9;
  v45 = a6;
  v13 = a1;
  v54 = a7;
  v55 = a8;
  v48 = a8;
  v56 = a3;
  v46 = a7;
  _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFACq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOq0_Isgyrzr_Swq0_A2FRs_Ri_zRi_0_r1_lIetMgyrzo_Tp5(closure #1 in closure #1 in closure #1 in ReferenceWritableKeyPath._projectMutableAddress(from:)partial apply, v53, a1, a2, a7);
  v14 = v9;
  v47 = a2;
  v52 = a2 - v13;
  while (1)
  {
    v51 = v14;
    v15 = *_ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs19RawKeyPathComponentV6HeaderV_Tt0g5(a5, 1);
    if ((v15 & 0x80000000) != 0)
    {
      *(a5 + 17) = 0;
    }

    v16 = *a5;
    v17 = RawKeyPathComponent.Header.kind.getter(v15);
    if ((v17 - 4) < 3)
    {
LABEL_8:
      v18 = 0;
      v19 = 0;
      v20 = 0;
      if (!v16)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if ((v17 - 1) < 2)
    {
      if ((~v15 & 0x7FFFFF) != 0)
      {
        goto LABEL_8;
      }

      v18 = 4;
LABEL_13:
      if (!v16)
      {
        LODWORD(v43) = 0;
        v42 = 1216;
        LOBYTE(v41) = 2;
LABEL_33:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      goto LABEL_14;
    }

    v18 = 28;
    if ((v15 & 0x400000) == 0)
    {
      v18 = 20;
    }

    if ((v15 & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    v38 = 24;
    if ((v15 & 0x400000) == 0)
    {
      v38 = 16;
    }

    v39 = v16 + v38 + 4;
    if ((v39 & 7) != 0)
    {
      LODWORD(v43) = 0;
      v42 = 449;
      LOBYTE(v41) = 2;
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v18 += ((v15 >> 1) & 8) + *v39 + 16;
    if (v18 < 0)
    {
      LODWORD(v43) = 0;
      v42 = 1215;
      LOBYTE(v41) = 2;
      goto LABEL_33;
    }

LABEL_14:
    v20 = v18 + v16;
    v19 = v18;
LABEL_15:
    _ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs4Int8V_Tt0g5Tm(a5, v19);
    if (*a5 && *(a5 + 8) != *a5)
    {
      v21 = *_ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFypXp_Tt0g5(a5, 1);
    }

    else
    {
      v21 = v45;
    }

    v57 = 0;
    v22 = *(a4 - 8);
    v23 = MEMORY[0x1EEE9AC00](v44);
    v26 = v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!v13)
    {
LABEL_35:
      LODWORD(v43) = 0;
      v42 = 1212;
      LOBYTE(v41) = 2;
      goto LABEL_39;
    }

    if ((*(v22 + 80) & v13) != 0)
    {
      LODWORD(v43) = 0;
      v42 = 1000;
      LOBYTE(v41) = 2;
      goto LABEL_33;
    }

    v27 = *(v22 + 72);
    if (!v27)
    {
      LODWORD(v43) = 0;
      v42 = 9012;
      LOBYTE(v41) = 2;
      goto LABEL_41;
    }

    if (v52 == 0x8000000000000000 && v27 == -1)
    {
      LODWORD(v43) = 0;
      v42 = 9019;
      LOBYTE(v41) = 2;
LABEL_41:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v28 = v52 / v27;
    if (v28 < 0)
    {
      LODWORD(v43) = 0;
      v42 = 74;
      LOBYTE(v41) = 2;
LABEL_39:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (!v28)
    {
      goto LABEL_35;
    }

    v29 = *(v22 + 32);
    v50 = v23;
    v49 = v24;
    v30 = v29(v26, v13, a4);
    MEMORY[0x1EEE9AC00](v30);
    v31 = v47;
    v32 = v48;
    v44[-10] = v46;
    v44[-9] = v32;
    v44[-8] = a4;
    v44[-7] = v21;
    LODWORD(v44[-6]) = v15;
    v44[-5] = v16;
    v41 = v20;
    v42 = v26;
    v43 = &v57;
    v34 = v33;
    v35 = v51;
    _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFACq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOq0_Isgyrzr_Swq0_A2FRs_Ri_zRi_0_r1_lIetMgyrzo_Tp5(partial apply for closure #2 in projectNew #1 <A, B><A1><A2>(_:) in projectCurrent #1 <A, B><A1>(_:) in closure #2 in closure #2 in KeyPath._projectReadOnly(from:), &v44[-12], v33, v31, v21);
    v14 = v35;
    v36 = v57;
    v37 = (*(v22 + 8))(v26, a4);
    if ((v49 | v36))
    {
      break;
    }

    a4 = v21;
    v13 = v34;
  }

  MEMORY[0x1EEE9AC00](v37);
  v43 = v46;
  return _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFACq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOq0_Isgyrzr_Swq0_A2FRs_Ri_zRi_0_r1_lIetMgyrzo_Tp5(partial apply for closure #2 in closure #2 in closure #2 in KeyPath._projectReadOnly(from:), &v41, v34, v47, v48);
}

void *_sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFACq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys5UInt8VsAD_pq0_Isgyrzr_Swq0_sAD_pAFRszsAD_pRs_Ri_0_r1_lIetMgyrzo_Tpq5SiSg_Tgq5055_sSw39withContiguousMutableStorageIfAvailableyxSgxSrys5F25VGzKXEKlFAbEKXEfU_Si_TGq5SryAFGxsAD_pRi_zRi0_zlySiIsglrzo_Tf1cn_n(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t *))
{
  if (!a1)
  {
    return specialized closure #1 in UnsafeMutableRawBufferPointer.withContiguousMutableStorageIfAvailable<A>(_:)(0, 0, a3);
  }

  v3 = a2 - a1;
  if (v3 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return specialized closure #1 in UnsafeMutableRawBufferPointer.withContiguousMutableStorageIfAvailable<A>(_:)(a1, v3, a3);
}

uint64_t _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFACq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOq0_Isgyrzr_Swq0_A2FRs_Ri_zRi_0_r1_lIetMgyrzo_Tp5(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    result = (a1)(0, 0);
    if (!v5)
    {
      return result;
    }

    goto LABEL_10;
  }

  v6 = *(a5 - 8);
  if ((*(v6 + 80) & a3) != 0)
  {
    goto LABEL_11;
  }

  v7 = *(v6 + 72);
  if (!v7 || a4 - a3 == 0x8000000000000000 && v7 == -1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((a4 - a3) / v7 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = a1(a3);
  if (v5)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t closure #2 in projectNew #1 <A, B><A1><A2>(_:) in projectCurrent #1 <A, B><A1>(_:) in closure #2 in closure #2 in KeyPath._projectReadOnly(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, _BYTE *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v47 = a6;
  v48 = a7;
  v13 = *(a9 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v46 - v17;
  RawKeyPathComponent.value.getter(v19, v20, v21, &v53);
  v22 = v53;
  v23 = v54 >> 61;
  if ((v54 >> 61) <= 1)
  {
    if (v23)
    {
      a5 = *a5;
      swift_beginAccess(&a5[v53], v52, 0, 0);
    }

    else if ((*(*(a8 - 8) + 64) & 0x8000000000000000) != 0)
    {
      LODWORD(v44) = 0;
      v43 = 1215;
      LOBYTE(v42) = 2;
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    return (*(v13 + 16))(a1, &a5[v22], a9);
  }

  else
  {
    v24 = a8;
    v25 = a5;
    v49 = a1;
    v50 = a9;
    v51 = v9;
    v26 = v55;
    v27 = v56;
    v29 = v57;
    v28 = v58;
    if ((v23 - 2) >= 3)
    {
      v36 = v56 | v55;
      v37 = v58 | v59;
      if (v54 != 0xA000000000000000 || v36 | v53 | v57 | v37)
      {
        if (v54 != 0xA000000000000000 || v53 != 1 || v36 | v57 | v37)
        {
          v41 = v50;
          (*(v13 + 16))(v18, v25, v50);
          (*(v13 + 104))(v18, 0, v41);
          return (*(v13 + 32))(v49, v18, v41);
        }

        if ((*(*(v24 - 8) + 88))(v25))
        {
          LODWORD(v44) = 0;
          v43 = 1881;
          LOBYTE(v42) = 2;
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      else
      {
        v38 = v24;
        v39 = (*(*(v24 - 8) + 88))(v25);
        if (v39)
        {
          *v47 = 1;
          v40 = MEMORY[0x1EEE9AC00](v39);
          v42 = v38;
          v44 = v48;
          v45 = v40;
          return _sSpsRi_zrlE17withMemoryRebound2to8capacity_qd_1_qd__m_Siqd_1_Spyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSiSpyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyqd__s5NeverOytIsgyrzr_AFytA2HRsd_0_ytRsd_1_Ri_zRi_d__r_1_lIetMygyrzo_Tp5(1, closure #2 in RawKeyPathComponent._projectReadOnly<A, B, C>(_:to:endingWith:_:pointer:)partial apply, (&v46 - 6), v49, v50, v48);
        }
      }

      return (*(v13 + 16))(v49, v25, v50);
    }

    v30 = v50;
    v31 = ComputedAccessorsPtr.getter<A, B>()(v55, v24, v50);
    if (v28)
    {
      v32 = v27 == 0;
    }

    else
    {
      v32 = 1;
    }

    if (v32)
    {
      v33 = 0;
    }

    else
    {
      v33 = v29 - v27;
    }

    if (v32)
    {
      v34 = v26;
    }

    else
    {
      v34 = v27;
    }

    v31(v25, v34, v33);
    return (*(v13 + 32))(v49, v16, v30);
  }
}

uint64_t KeyPath.deinit()
{
  v1 = specialized KeyPathBuffer.init(base:)(v0 + 24);
  if ((v3 & 1) == 0)
  {
    if (v1)
    {
      goto LABEL_4;
    }

    v4 = 0;
    while (1)
    {
      v8 = v2 - v4 - 4;
      if (__OFSUB__(v2 - v4, 4))
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_51;
      }

      v9 = v4 + 1;
      v10 = *v4;
      v11 = BYTE3(v10) & 0x7F;
      if ((v10 & 0x7D000000) == 0x1000000)
      {
        break;
      }

      if (v11 == 2)
      {
        v12 = 28;
        if ((v10 & 0x400000) == 0)
        {
          v12 = 20;
        }

        if ((v10 & 0x80000) != 0)
        {
          v13 = 6;
          if ((v10 & 0x400000) == 0)
          {
            v13 = 4;
          }

          v14 = &v4[v13 + 2];
          if ((v14 & 7) != 0)
          {
            goto LABEL_56;
          }

          v12 += ((v10 >> 1) & 8) + *v14 + 16;
          if (v12 < 0)
          {
            goto LABEL_51;
          }
        }

        goto LABEL_18;
      }

      v12 = 0;
      v1 = (v4 + 1);
LABEL_30:
      v2 = v9 + v8;
      v15 = 1;
      if (v8 != v12)
      {
        v16 = _ss12MemoryLayoutOsRi_zrlE26_roundingUpBaseToAlignmentyS2WFZypXp_Tt0g5(v1, v2);
        v18 = v17 - v16 - 8;
        if (__OFSUB__(v17 - v16, 8))
        {
          goto LABEL_55;
        }

        if (v18 < 0)
        {
LABEL_51:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v19 = v16;
        v1 = v16 + 8;
        v2 = v1 + v18;
        v15 = *v19 == 0;
      }

      if ((v10 & 0x7D000000) != 0x1000000 && v11 == 2 && (v10 & 0x80000) != 0)
      {
        v20 = 6;
        if ((v10 & 0x400000) == 0)
        {
          v20 = 4;
        }

        v21 = &v4[v20];
        v22 = &v4[v20 + 4];
        if ((v22 & 7) != 0)
        {
          goto LABEL_56;
        }

        v23 = *v22;
        if ((v23 & 7) != 0)
        {
          goto LABEL_56;
        }

        if (*v23)
        {
          v24 = v21 + 2;
          v25 = 3;
          if ((v10 & 0x10) == 0)
          {
            v25 = 2;
          }

          if ((v24 & 7) != 0)
          {
            goto LABEL_56;
          }

          v26 = v1;
          v27 = v2;
          v28 = 0;
          if ((v10 & 0x10) != 0)
          {
            v28 = v24[2];
          }

          (*v23)(&v24[v25], *v24 - v28);
          v2 = v27;
          v1 = v26;
        }
      }

      if (v15)
      {
        return v0;
      }

LABEL_4:
      if ((v1 & 3) != 0)
      {
        v5 = -v1 & 3;
        v4 = (v1 + v5);
        if (__OFADD__(v1, v5))
        {
          goto LABEL_53;
        }

        v6 = __OFSUB__(v2 - v1, v5);
        v7 = v2 - v1 - v5;
        if (v6)
        {
          goto LABEL_54;
        }

        if (v7 < 0)
        {
          goto LABEL_51;
        }

        if (v7)
        {
          if (!v4)
          {
            goto LABEL_51;
          }

LABEL_13:
          v2 = v4 + v7;
        }

        else
        {
          if (v4)
          {
            goto LABEL_13;
          }

          v2 = 0;
        }
      }

      else
      {
        v4 = v1;
      }
    }

    v12 = 4 * ((~v10 & 0x7FFFFF) == 0);
LABEL_18:
    v1 = v9 + v12;
    if (v8 < v12)
    {
      goto LABEL_51;
    }

    goto LABEL_30;
  }

  return v0;
}

void **WritableKeyPath._projectMutableAddress(from:)(void **a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = v1[2];
  if (v4 < 0)
  {
    return (a1 + ~v4);
  }

  v5 = *v1;
  v27 = 0;
  v28 = a1;
  v7 = *(v3 + 152);
  v8 = specialized KeyPathBuffer.init(base:)((v2 + 3));
  if (!v8)
  {
    return a1;
  }

  v10 = v8;
  v11 = v9;
  if (v9 == v8)
  {
    return a1;
  }

  while (1)
  {
    if ((v10 & 3) == 0)
    {
      v14 = v10;
      goto LABEL_16;
    }

    v13 = -v10 & 3;
    v14 = (v10 + v13);
    if (__OFADD__(v10, v13))
    {
      goto LABEL_43;
    }

    v15 = __OFSUB__(&v11[-v10], v13);
    v16 = &v11[-v10 - v13];
    if (v15)
    {
      goto LABEL_44;
    }

    if (v16 < 0)
    {
      goto LABEL_40;
    }

    if (v16)
    {
      if (!v14)
      {
        goto LABEL_40;
      }

LABEL_15:
      v11 = &v14[v16];
      goto LABEL_16;
    }

    if (v14)
    {
      goto LABEL_15;
    }

    v11 = 0;
LABEL_16:
    v17 = v11 - v14 - 4;
    if (__OFSUB__(v11 - v14, 4))
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if ((v17 & 0x8000000000000000) != 0)
    {
      goto LABEL_40;
    }

    v18 = (v14 + 4);
    v19 = *v14;
    if ((v19 & 0x7D000000) == 0x1000000)
    {
      v20 = 4 * ((~v19 & 0x7FFFFF) == 0);
    }

    else
    {
      if ((BYTE3(v19) & 0x7F) != 2)
      {
        v21 = (v14 + 4);
        if (v11 - v14 == 4)
        {
          break;
        }

        goto LABEL_33;
      }

      v20 = 28;
      if ((v19 & 0x400000) == 0)
      {
        v20 = 20;
      }

      if ((v19 & 0x80000) != 0)
      {
        v22 = 24;
        if ((v19 & 0x400000) == 0)
        {
          v22 = 16;
        }

        v23 = &v14[v22 + 8];
        if ((v23 & 7) != 0)
        {
          goto LABEL_45;
        }

        v20 += ((v19 >> 1) & 8) + *v23 + 16;
        if (v20 < 0)
        {
          goto LABEL_40;
        }
      }
    }

    if (v17 < v20)
    {
      goto LABEL_40;
    }

    v21 = v18 + v20;
    if (v17 == v20)
    {
      break;
    }

LABEL_33:
    v24 = _ss12MemoryLayoutOsRi_zrlE26_roundingUpBaseToAlignmentyS2WFZypXp_Tt0g5(v21, v18 + v17);
    if (__OFSUB__(v25 - v24, 8))
    {
      goto LABEL_42;
    }

    if (v25 - v24 - 8 < 0)
    {
LABEL_40:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v10 = (v24 + 1);
    v11 = v25;
    v26 = *v24;
    specialized project #1 <A, B><A1>(_:) in closure #1 in WritableKeyPath._projectMutableAddress(from:)(&v28, v19, v18, v21, &v27, *v24, v7);
    v7 = v26;
    if (!v26)
    {
      return v28;
    }
  }

  specialized project #1 <A, B><A1>(_:) in closure #1 in WritableKeyPath._projectMutableAddress(from:)(&v28, v19, v18, v21, &v27, *(v5 + 160), v7);
  return v28;
}

void WritableKeyPath.__deallocating_deinit()
{
  KeyPath.deinit();

  swift_deallocClassInstance(v0);
}

char *ReferenceWritableKeyPath._projectMutableAddress(from:)(__int128 *a1)
{
  v3 = *v1;
  v9 = 0;
  v4 = specialized KeyPathBuffer.init(base:)((v1 + 3));
  specialized closure #1 in ReferenceWritableKeyPath._projectMutableAddress(from:)(v4, v6, v5 & 0x10101, a1, &v9, *(v3 + 176), *(v3 + 184), &v8);
  return v8;
}

uint64_t specialized closure #1 in ReferenceWritableKeyPath._projectMutableAddress(from:)@<X0>(uint64_t isStackAllocationSafe@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, __int128 *a4@<X3>, char **a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, char **a8@<X8>)
{
  v100 = a7;
  LODWORD(v12) = a3 >> 8;
  v110 = isStackAllocationSafe;
  v111 = a2;
  v112 = a3;
  v113 = BYTE2(a3);
  if (a2 >= 0xFFFFFFFFFFFFFFF9)
  {
    goto LABEL_64;
  }

  v13 = ((a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (!v13)
  {
    LODWORD(v94) = 0;
    v93 = 377;
    LOBYTE(v92) = 2;
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v14 = -__clz(*v13);
  if ((v14 & 0x3F) == 0x3FLL)
  {
    LODWORD(v94) = 0;
    v93 = 41;
    LOBYTE(v92) = 2;
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v11 = a6;
  v8 = a2;
  v10 = isStackAllocationSafe;
  v96 = a5;
  v97 = a8;
  v15 = 1 << v14;
  v99 = 1 << v14;
  if (1 << v14 >= 1025)
  {
LABEL_65:
    v59 = a4;
    v60 = a3;
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    v61 = v59;
    v15 = v99;
    if (isStackAllocationSafe)
    {
      goto LABEL_5;
    }

    v62 = v61;
    v63 = swift_slowAlloc(v99, 0xFFFFFFFFFFFFFFFFLL);
    MEMORY[0x1EEE9AC00](v63);
    v92 = v11;
    v93 = v100;
    v94 = v62;
    v105 = v64;
    _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFACq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOq0_Isgyrzr_Swq0_A2FRs_Ri_zRi_0_r1_lIetMgyrzo_Tp5(closure #1 in closure #1 in closure #1 in ReferenceWritableKeyPath._projectMutableAddress(from:)partial apply, &v90, v64, v64 + v15, v11);
    v104 = v9;
    if ((v60 & 0x100) == 0)
    {
      v74 = v11;
LABEL_98:
      v109 = v74;
      v85 = __swift_allocate_boxed_opaque_existential_0Tm(&v108);
      v86 = *(v74 - 8);
      if ((*(v86 + 80) & v105) == 0)
      {
        v87 = *(v86 + 72);
        if (v87)
        {
          v88 = v15 / v87;
          if ((v88 & 0x8000000000000000) == 0)
          {
            if (v88)
            {
              v89 = v105;
              (*(v86 + 32))(v85, v105, v74);
              v89;
              goto LABEL_58;
            }

            goto LABEL_106;
          }

LABEL_105:
          LODWORD(v94) = 0;
          v93 = 74;
          LOBYTE(v92) = 2;
          goto LABEL_107;
        }

LABEL_104:
        LODWORD(v94) = 0;
        v93 = 9012;
        LOBYTE(v92) = 2;
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_103:
      LODWORD(v94) = 0;
      v93 = 1000;
      LOBYTE(v92) = 2;
      goto LABEL_93;
    }

    v98 = v11;
    v65 = v11;
    v66 = v105;
    while (1)
    {
      v67 = *_ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs19RawKeyPathComponentV6HeaderV_Tt0g5(&v110, 1);
      if ((v67 & 0x80000000) != 0)
      {
        HIBYTE(v112) = 0;
      }

      v68 = v110;
      v69 = RawKeyPathComponent.Header.kind.getter(v67);
      if ((v69 - 4) >= 3)
      {
        if ((v69 - 1) >= 2)
        {
          v70 = 28;
          if ((v67 & 0x400000) == 0)
          {
            v70 = 20;
          }

          if ((v67 & 0x80000) == 0)
          {
            goto LABEL_79;
          }

          v83 = 24;
          if ((v67 & 0x400000) == 0)
          {
            v83 = 16;
          }

          v84 = v68 + v83 + 4;
          if ((v84 & 7) != 0)
          {
            goto LABEL_95;
          }

          v70 += ((v67 >> 1) & 8) + *v84 + 16;
          if (v70 < 0)
          {
            goto LABEL_92;
          }

LABEL_80:
          v72 = v70 + v68;
          v71 = v70;
          goto LABEL_81;
        }

        if ((~v67 & 0x7FFFFF) == 0)
        {
          v70 = 4;
LABEL_79:
          if (!v68)
          {
            goto LABEL_108;
          }

          goto LABEL_80;
        }
      }

      v70 = 0;
      v71 = 0;
      v72 = 0;
      if (v68)
      {
        goto LABEL_80;
      }

LABEL_81:
      _ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs4Int8V_Tt0g5Tm(&v110, v71);
      v73 = _ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFypXp_Tt0g5(&v110, 1);
      v74 = *v73;
      LOBYTE(v108) = 0;
      v75 = *(v65 - 8);
      MEMORY[0x1EEE9AC00](v73);
      v77 = &v95 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
      if ((*(v75 + 80) & v105) != 0)
      {
        goto LABEL_103;
      }

      v78 = *(v75 + 72);
      if (!v78)
      {
        goto LABEL_104;
      }

      v79 = v99 / v78;
      if (v79 < 0)
      {
        goto LABEL_105;
      }

      if (!v79)
      {
        goto LABEL_106;
      }

      v80 = (*(v75 + 32))(v77, v66, v65);
      v103 = &v95;
      MEMORY[0x1EEE9AC00](v80);
      v81 = v100;
      *(&v95 - 10) = v98;
      *(&v95 - 9) = v81;
      *(&v95 - 8) = v74;
      *(&v95 - 7) = v65;
      v90 = v67;
      v91 = v68;
      v92 = v72;
      v93 = v77;
      v94 = &v108;
      v15 = v99;
      v82 = v104;
      _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFACq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOq0_Isgyrzr_Swq0_A2FRs_Ri_zRi_0_r1_lIetMgyrzo_Tp5(closure #2 in projectCurrent #1 <A, B><A1><A2>(_:) in projectNew #1 <A, B><A1>(_:) in closure #1 in closure #1 in ReferenceWritableKeyPath._projectMutableAddress(from:)partial apply, (&v95 - 12), v66, v66 + v99, v74);
      v104 = v82;
      if (v108)
      {
        goto LABEL_94;
      }

      (*(v75 + 8))(v77, v65);
      v65 = v74;
      if ((v67 & 0x80000000) != 0)
      {
        goto LABEL_98;
      }
    }
  }

LABEL_5:
  v95 = &v95;
  v16 = MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  MEMORY[0x1EEE9AC00](v16);
  v92 = v11;
  v93 = v100;
  v94 = v17;
  v105 = v18;
  _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFACq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOq0_Isgyrzr_Swq0_A2FRs_Ri_zRi_0_r1_lIetMgyrzo_Tp5(partial apply for closure #1 in closure #1 in closure #1 in ReferenceWritableKeyPath._projectMutableAddress(from:), &v90, v18, v18 + v15, v11);
  v104 = v9;
  if (v12)
  {
    v98 = v11;
    v19 = v11;
    while (1)
    {
      if ((v10 & 3) == 0)
      {
        v12 = v10;
        goto LABEL_17;
      }

      v20 = -v10 & 3;
      v12 = (v10 + v20);
      if (__OFADD__(v10, v20))
      {
        goto LABEL_61;
      }

      v21 = __OFSUB__(v8 - v10, v20);
      v22 = v8 - v10 - v20;
      if (v21)
      {
        goto LABEL_62;
      }

      if (v22 < 0)
      {
        goto LABEL_92;
      }

      if (v22)
      {
        break;
      }

      if (v12)
      {
        goto LABEL_16;
      }

      v8 = 0;
LABEL_17:
      v21 = __OFSUB__(v8 - v12, 4);
      v8 = v8 - v12 - 4;
      if (v21)
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      if (v8 < 0)
      {
        goto LABEL_92;
      }

      v11 = *v12;
      v23 = RawKeyPathComponent.Header.kind.getter(*v12);
      if (v23 - 4 < 3)
      {
        goto LABEL_23;
      }

      if (v23 - 1 < 2)
      {
        if ((~v11 & 0x7FFFFF) == 0)
        {
          v24 = 4;
          goto LABEL_24;
        }

LABEL_23:
        v24 = 0;
        goto LABEL_24;
      }

      v24 = 28;
      if ((v11 & 0x400000) == 0)
      {
        v24 = 20;
      }

      if ((v11 & 0x80000) != 0)
      {
        v49 = 6;
        if ((v11 & 0x400000) == 0)
        {
          v49 = 4;
        }

        v50 = &v12[v49 + 2];
        if ((v50 & 7) != 0)
        {
LABEL_95:
          LODWORD(v94) = 0;
          v93 = 449;
          LOBYTE(v92) = 2;
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v24 += ((v11 >> 1) & 8) + *v50 + 16;
        if (v24 < 0)
        {
          goto LABEL_92;
        }
      }

LABEL_24:
      v25 = v8 - v24;
      if (v8 - v24 < 0)
      {
        goto LABEL_92;
      }

      v26 = (v12 + v24 + 4);
      if ((v26 & 7) != 0)
      {
        v27 = -v26 & 7;
        v28 = (v26 + v27);
        if (__OFADD__(v26, v27))
        {
          goto LABEL_63;
        }

        v29 = v25 - v27;
        if (v29 < 0)
        {
          goto LABEL_92;
        }

        if (v29)
        {
          if (!v28)
          {
LABEL_108:
            LODWORD(v94) = 0;
            v93 = 1216;
            LOBYTE(v92) = 2;
LABEL_93:
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }
        }

        else if (!v28)
        {
          v30 = 0;
          goto LABEL_34;
        }

        v30 = v28 + v29;
      }

      else
      {
        v30 = v12 + v8 + 4;
        v28 = v26;
      }

LABEL_34:
      v31 = v30 - v28;
      v8 = v31 - 8;
      if (__OFSUB__(v31, 8))
      {
        goto LABEL_60;
      }

      if (v8 < 0)
      {
LABEL_92:
        LODWORD(v94) = 0;
        v93 = 1215;
        LOBYTE(v92) = 2;
        goto LABEL_93;
      }

      v32 = *v28;
      LOBYTE(v108) = 0;
      v33 = *(v19 - 8);
      MEMORY[0x1EEE9AC00](v23);
      v38 = &v95 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
      if ((*(v33 + 80) & v105 & 0xF0) != 0)
      {
        goto LABEL_103;
      }

      v39 = *(v33 + 72);
      if (!v39)
      {
        goto LABEL_104;
      }

      v40 = v15 / v39;
      if (v40 < 0)
      {
        goto LABEL_105;
      }

      if (!v40)
      {
        goto LABEL_106;
      }

      v101 = v36;
      v102 = v35;
      v41 = *(v33 + 32);
      v42 = v105;
      v103 = v34;
      v43 = v41(v38, v105, v19);
      MEMORY[0x1EEE9AC00](v43);
      v44 = v100;
      *(&v95 - 10) = v98;
      *(&v95 - 9) = v44;
      *(&v95 - 8) = v32;
      *(&v95 - 7) = v19;
      v90 = v11;
      v91 = v102;
      v92 = v103;
      v93 = v38;
      v94 = &v108;
      v46 = v42 + v45;
      v47 = v42;
      v48 = v32;
      v9 = v104;
      _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFACq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOq0_Isgyrzr_Swq0_A2FRs_Ri_zRi_0_r1_lIetMgyrzo_Tp5(partial apply for closure #2 in projectCurrent #1 <A, B><A1><A2>(_:) in projectNew #1 <A, B><A1>(_:) in closure #1 in closure #1 in ReferenceWritableKeyPath._projectMutableAddress(from:), (&v95 - 12), v47, v46, v32);
      if (v108)
      {
LABEL_94:
        LODWORD(v94) = 0;
        v93 = 581;
        LOBYTE(v92) = 2;
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v104 = v9;
      v10 = (v28 + 1);
      v8 += (v28 + 1);
      (*(v33 + 8))(v38, v19);
      v19 = v48;
      v15 = v99;
      if ((v11 & 0x80000000) != 0)
      {
        LOBYTE(v12) = 0;
        goto LABEL_53;
      }
    }

    if (!v12)
    {
      goto LABEL_108;
    }

LABEL_16:
    v8 = v12 + v22;
    goto LABEL_17;
  }

  v48 = v11;
LABEL_53:
  v110 = v10;
  v111 = v8;
  HIBYTE(v112) = v12;
  v107 = v48;
  v51 = __swift_allocate_boxed_opaque_existential_0Tm(&v106);
  v52 = *(v48 - 8);
  if ((*(v52 + 80) & v105 & 0xF0) != 0)
  {
    goto LABEL_103;
  }

  v53 = *(v52 + 72);
  if (!v53)
  {
    goto LABEL_104;
  }

  v54 = v15 / v53;
  if (v54 < 0)
  {
    goto LABEL_105;
  }

  if (!v54)
  {
LABEL_106:
    LODWORD(v94) = 0;
    v93 = 1212;
    LOBYTE(v92) = 2;
LABEL_107:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v52 + 32))(v51, v105, v48);
  outlined init with take of Any(&v106, &v108);
LABEL_58:
  v55 = v109;
  v56 = __swift_project_boxed_opaque_existential_0Tm(&v108, v109);
  v57 = specialized formalMutation #1 <A, B><A1>(_:) in closure #1 in ReferenceWritableKeyPath._projectMutableAddress(from:)(v56, &v110, v96, v100, v55);
  *v97 = v57;
  return __swift_destroy_boxed_opaque_existential_1Tm(&v108);
}
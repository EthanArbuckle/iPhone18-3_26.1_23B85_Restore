Swift::UInt64 protocol witness for BinaryInteger.quotientAndRemainder(dividingBy:) in conformance _UInt128(void *a1, Swift::UInt64 *a2, Swift::UInt64 *a3)
{
  v12.low = a3[1];
  v12.high = *v3;
  result = specialized _wideDivide22<A>(_:by:)(&v11, &v10, &v9, v3[1], v12, *a3);
  v7 = v10;
  v8 = v9;
  *a1 = v11;
  a1[1] = result;
  *a2 = v8;
  a2[1] = v7;
  return result;
}

void protocol witness for LosslessStringConvertible.init(_:) in conformance _UInt128(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
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
    goto LABEL_71;
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
      goto LABEL_68;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      if ((a1 & 0xFFFFFFFFFFFFLL) != 0)
      {
LABEL_9:
        v9 = *v8;
        if (v9 == 43)
        {
          v25 = specialized Collection.subscript.getter(1, v8, v6);
          v29 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v25, v26, v27, v28);
          if (!v30)
          {
LABEL_80:
            v16 = 0;
            v17 = 0;
            v46 = 1;
            goto LABEL_69;
          }

          if (!v29)
          {
LABEL_74:
            v17 = 0;
            v16 = 0;
LABEL_75:
            v46 = 0;
            goto LABEL_69;
          }

          v16 = 0;
          v17 = 0;
          while (1)
          {
            v31 = *v29 - 48;
            if (v31 >= 0xA)
            {
              break;
            }

            v32 = !is_mul_ok(v17, 0xAuLL);
            v20 = __CFADD__((v16 * 0xAuLL) >> 64, 10 * v17);
            v17 = (__PAIR128__(v17, v16) * 0xA) >> 64;
            v33 = v20;
            if (v32)
            {
              break;
            }

            v20 = __CFADD__(10 * v16, v31);
            v16 = 10 * v16 + v31;
            v34 = v20;
            if (v17 == -1)
            {
              if ((v34 | v33))
              {
                break;
              }

              v17 = -1;
            }

            else if (v34)
            {
              if (v33)
              {
                break;
              }

              ++v17;
            }

            else if (v33)
            {
              break;
            }

            ++v29;
            if (!--v30)
            {
              goto LABEL_75;
            }
          }
        }

        else
        {
          if (v9 == 45)
          {
            v10 = specialized Collection.subscript.getter(1, v8, v6);
            v14 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v10, v11, v12, v13);
            if (v15)
            {
              if (v14)
              {
                v16 = 0;
                v17 = 0;
                while (1)
                {
                  v18 = *v14 - 48;
                  if (v18 >= 0xA)
                  {
                    goto LABEL_67;
                  }

                  v19 = !is_mul_ok(v17, 0xAuLL);
                  v20 = __CFADD__((v16 * 0xAuLL) >> 64, 10 * v17);
                  v17 = (__PAIR128__(v17, v16) * 0xA) >> 64;
                  v21 = v20;
                  if (v19)
                  {
                    goto LABEL_67;
                  }

                  v20 = 10 * v16 >= v18;
                  v16 = 10 * v16 - v18;
                  if (!v20)
                  {
                    break;
                  }

                  if (v17)
                  {
                    goto LABEL_23;
                  }

                  if (v21)
                  {
                    goto LABEL_67;
                  }

                  v17 = 0;
LABEL_24:
                  ++v14;
                  if (!--v15)
                  {
                    goto LABEL_75;
                  }
                }

                if (!v17)
                {
                  goto LABEL_67;
                }

                --v17;
LABEL_23:
                if (v21)
                {
                  goto LABEL_67;
                }

                goto LABEL_24;
              }

              goto LABEL_74;
            }

            goto LABEL_80;
          }

          v17 = 0;
          v16 = 0;
          while (1)
          {
            v35 = *v8 - 48;
            if (v35 >= 0xA)
            {
              break;
            }

            v36 = !is_mul_ok(v17, 0xAuLL);
            v20 = __CFADD__((v16 * 0xAuLL) >> 64, 10 * v17);
            v17 = (__PAIR128__(v17, v16) * 0xA) >> 64;
            v37 = v20;
            if (v36)
            {
              break;
            }

            v20 = __CFADD__(10 * v16, v35);
            v16 = 10 * v16 + v35;
            v38 = v20;
            if (v17 == -1)
            {
              if ((v38 | v37))
              {
                break;
              }

              v17 = -1;
            }

            else if (v38)
            {
              if (v37)
              {
                break;
              }

              ++v17;
            }

            else if (v37)
            {
              break;
            }

            ++v8;
            if (!--v6)
            {
              goto LABEL_75;
            }
          }
        }

LABEL_67:
        v16 = 0;
        v17 = 0;
        v24 = 1;
LABEL_68:
        v46 = v24;
LABEL_69:
        v39 = v46;
        goto LABEL_70;
      }
    }

    else
    {
      v43 = _StringObject.sharedUTF8.getter(a1, a2);
      v6 = v44;
      v8 = v43;
      if (v6 > 0)
      {
        goto LABEL_9;
      }
    }

    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v16 = specialized _parseInteger<A, B>(ascii:radix:)(a1, a2, 10);
  v17 = v41;
  v39 = v42;
LABEL_70:
  a2;
  if ((v39 & 1) == 0)
  {
    v40 = 0;
    goto LABEL_73;
  }

LABEL_71:
  v16 = 0;
  v17 = 0;
  v40 = 1;
LABEL_73:
  *a3 = v16;
  *(a3 + 8) = v17;
  *(a3 + 16) = v40;
}

unint64_t *protocol witness for Strideable.distance(to:) in conformance _UInt128@<X0>(unint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = result[1];
  v6 = *v2;
  v5 = v2[1];
  v7 = *result < *v2;
  if (v4 != v5)
  {
    v7 = v4 < v5;
  }

  if (v7)
  {
    v8 = v6 >= v3;
    v9 = v6 - v3;
    v10 = !v8;
    v8 = v5 >= v4;
    v11 = v5 - v4;
    v12 = !v8;
    if ((v10 & 1) == 0)
    {
      if (v12)
      {
        goto LABEL_25;
      }

      goto LABEL_27;
    }

    if (!v11)
    {
      LOBYTE(v12) = 1;
    }

    if ((v12 & 1) == 0)
    {
      --v11;
LABEL_27:
      v15 = v9 < 0;
      v16 = v11 == 0;
      LODWORD(v11) = v11 != 0;
      if (v16)
      {
        v11 = v9 < 0;
      }

      else
      {
        v11 = v11;
      }

      if (v11)
      {
        goto LABEL_41;
      }

      v17 = __OFSUB__(0, v9);
      v13 = -v9;
      if (!v17)
      {
        goto LABEL_40;
      }

      __break(1u);
      goto LABEL_34;
    }

LABEL_25:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8 = v3 >= v6;
  v13 = v3 - v6;
  v14 = !v8;
  v8 = v4 >= v5;
  v11 = v4 - v5;
  v15 = !v8;
  if (v14)
  {
    if (!v11)
    {
      LOBYTE(v15) = 1;
    }

    if (!v15)
    {
      --v11;
      goto LABEL_37;
    }

    goto LABEL_25;
  }

LABEL_34:
  if (v15)
  {
    goto LABEL_25;
  }

LABEL_37:
  v16 = v11 == 0;
  v18 = v11 != 0;
  if (v16)
  {
    v18 = v13 < 0;
  }

  if (v18)
  {
LABEL_41:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_40:
  *a2 = v13;
  return result;
}

uint64_t *protocol witness for Strideable.advanced(by:) in conformance _UInt128@<X0>(uint64_t *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result;
  v5 = *v2;
  v4 = v2[1];
  if ((*result & 0x8000000000000000) == 0)
  {
    v6 = __CFADD__(v5, v3);
    v7 = v5 + v3;
    v8 = v6;
    if (!v6 || v4 != -1)
    {
      goto LABEL_16;
    }

LABEL_17:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v10 = -v3;
  v6 = v5 >= v10;
  v7 = v5 - v10;
  v11 = !v6;
  v8 = v11 << 63 >> 63;
  if (!v4 && (v11 & 1) != 0)
  {
    goto LABEL_17;
  }

LABEL_16:
  *a2 = v7;
  a2[1] = v8 + v4;
  return result;
}

BOOL protocol witness for static Comparable.> infix(_:_:) in conformance _Int128(void *a1, void *a2)
{
  v2 = a2[1];
  v3 = a1[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    return *a2 < *a1;
  }

  else
  {
    return v5;
  }
}

uint64_t protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance _Int128@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void, void, void, void)@<X4>, uint64_t *a4@<X8>)
{
  result = a3(*a1, a1[1], *a2, a2[1]);
  *a4 = result;
  a4[1] = v6;
  return result;
}

char *_Int128.init<A>(exactly:)(void *a1, const char *a2, void *a3)
{
  v6 = a3[3];
  v146 = *(v6 + 16);
  swift_getAssociatedTypeWitness(0, v146, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v145 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v144 = &v142 - v9;
  v154 = *(a2 - 1);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v149 = &v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v148 = &v142 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v151 = &v142 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v155 = &v142 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v150 = &v142 - v18;
  swift_getAssociatedTypeWitness(255, v6, a2, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v20 = v19;
  v21 = *(swift_getAssociatedConformanceWitness(v6, a2, v19, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Numeric) + 16);
  swift_getAssociatedTypeWitness(0, v21, v20, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v23 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v142 - v24;
  v26 = swift_checkMetadataState(0, v20);
  v156 = *(v26 - 1);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v142 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v142 - v30;
  v32 = *(v6 + 56);
  v153 = a1;
  v32(a2, v6);
  v157 = a3;
  v158 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v26, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
  v34 = *(AssociatedConformanceWitness + 64);
  v152 = AssociatedConformanceWitness;
  v147 = v34;
  if (v34(v26))
  {
    v35 = swift_getAssociatedConformanceWitness(v21, v26, v23, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    (*(v35 + 8))(&qword_18071E0A8, 256, v23, v35);
    (*(v21 + 24))(v25, v26, v21);
    v36 = swift_getAssociatedConformanceWitness(v6, v158, v26, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
    v37 = (*(v36 + 16))(v31, v29, v26, v36);
    v143 = *(v156 + 8);
    v143(v29, v26);
    if (v37)
    {
      v38 = (v143)(v31, v26);
LABEL_12:
      v159 = -1;
      v58 = v157;
      v59 = v157[11];
      v60 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v38, v39, v40);
      v61 = v155;
      v143 = v60;
      v62 = v158;
      v59(&v159, &type metadata for UInt64);
      v63 = v150;
      v64 = v153;
      (v58[24])(v153, v61, v62, v58);
      v65 = v154;
      v66 = *(v154 + 8);
      v156 = v154 + 8;
      v67 = v66;
      v68 = (v66)(v61, v62);
      v159 = 64;
      v69 = v58[30];
      v72 = lazy protocol witness table accessor for type Int and conformance Int(v68, v70, v71);
      v69(v64, &v159, &type metadata for Int, v72, v62, v58);
      v73 = v148;
      (*(v65 + 16))(v148, v63, v62);
      v74 = v58[8];
      if (v74(v62, v58))
      {
        v75 = v145;
        v76 = v146;
        v77 = swift_getAssociatedConformanceWitness(v146, v62, v145, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v78 = v144;
        (*(v77 + 8))(&qword_18071E0A8, 256, v75, v77);
        (v76[3])(v78, v62, v76);
        LOBYTE(v75) = (*(*(v58[4] + 8) + 32))(v73, v61, v62);
        v67(v61, v62);
        if ((v75 & 1) == 0)
        {
LABEL_54:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      v152 = v67;
      v79 = v58[16];
      v80 = v79(v62, v58);
      v147 = v74;
      if (v80 < 64)
      {
LABEL_29:
        v104 = v79;
        v105 = v74;
        v106 = v152;
        v152(v153, v62);
        v106(v150, v62);
        v107 = v58[15];
        v153 = v58 + 15;
        v150 = v107(v62, v58);
        v106(v73, v62);
        v108 = v149;
        (*(v154 + 32))(v149, v151, v62);
        v109 = v105(v62, v58);
        v110 = v104;
        v111 = v58;
        if ((v109 & 1) == 0 || v110(v62, v58) < 65)
        {
          goto LABEL_43;
        }

        v112 = v147;
        if (v147(v62, v58))
        {
          v113 = v110(v62, v58);
          if (v113 >= 64)
          {
            v159 = 0x8000000000000000;
            v116 = v157[12];
            v117 = lazy protocol witness table accessor for type Int64 and conformance Int64(v113, v114, v115);
            v118 = v155;
            v116(&v159, &type metadata for Int64, v117, v62, v157);
            v108 = v149;
            v111 = v157;
            v119 = (*(*(v157[4] + 8) + 16))(v149, v118, v62);
            goto LABEL_37;
          }
        }

        else
        {
          v120 = v112(v62, v58);
          v121 = v110(v62, v58);
          if (v120)
          {
            if (v121 > 64)
            {
              v159 = 0x8000000000000000;
              v111 = v157;
              v124 = v157[12];
              v125 = lazy protocol witness table accessor for type Int64 and conformance Int64(v121, v122, v123);
              v118 = v155;
              v124(&v159, &type metadata for Int64, v125, v62, v111);
              v108 = v149;
              v119 = (*(*(v111[4] + 8) + 16))(v149, v118, v62);
LABEL_37:
              v126 = v119;
              v152(v118, v62);
              if (v126)
              {
                goto LABEL_52;
              }

              goto LABEL_43;
            }

            v127 = v145;
            v128 = v146;
            v129 = swift_getAssociatedConformanceWitness(v146, v62, v145, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v130 = v144;
            (*(v129 + 8))(&qword_18071E0A8, 256, v127, v129);
            v131 = v155;
            (v128[3])(v130, v62, v128);
            v111 = v157;
            v132 = v149;
            LOBYTE(v127) = (*(*(v157[4] + 8) + 16))(v149, v131, v62);
            v133 = v131;
            v108 = v132;
            v152(v133, v62);
            if (v127)
            {
              goto LABEL_52;
            }
          }

          else
          {
            v111 = v157;
            v108 = v149;
            if (v121 >= 64)
            {
LABEL_43:
              if (v110(v62, v111) <= 64 && (v110(v62, v111) != 64 || (v147(v62, v111) & 1) != 0))
              {
                goto LABEL_53;
              }

              v134 = v147(v62, v111);
              v135 = v110(v62, v111);
              if (v134)
              {
                v138 = v155;
                if (v135 < 65)
                {
LABEL_46:
                  v108 = v149;
                  v111 = v157;
                  v107(v62, v157);
LABEL_53:
                  v107(v62, v111);
                  v152(v108, v62);
                  return v150;
                }
              }

              else
              {
                v138 = v155;
                if (v135 < 64)
                {
                  goto LABEL_46;
                }
              }

              v159 = 0x7FFFFFFFFFFFFFFFLL;
              v111 = v157;
              v139 = v157[12];
              v140 = lazy protocol witness table accessor for type Int64 and conformance Int64(v135, v136, v137);
              v139(&v159, &type metadata for Int64, v140, v62, v111);
              v108 = v149;
              v141 = (*(*(v111[4] + 8) + 16))(v138, v149, v62);
              v152(v138, v62);
              if ((v141 & 1) == 0)
              {
                goto LABEL_53;
              }

LABEL_52:
              v152(v108, v62);
              return 0;
            }
          }
        }

        v107(v62, v111);
        goto LABEL_43;
      }

      v81 = v74(v62, v58);
      v82 = v79(v62, v58);
      if (v81)
      {
        if (v82 > 64)
        {
          v159 = -1;
          v58 = v157;
          goto LABEL_25;
        }

        v97 = v145;
        v98 = v146;
        v99 = swift_getAssociatedConformanceWitness(v146, v62, v145, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v100 = v144;
        (*(v99 + 8))(&qword_18071E0A8, 256, v97, v99);
        v101 = v155;
        v102 = v100;
        v73 = v148;
        (v98[3])(v102, v62, v98);
        v58 = v157;
        LOBYTE(v97) = (*(*(v157[4] + 8) + 40))(v73, v101, v62);
        v103 = v101;
        v74 = v147;
        v152(v103, v62);
        if ((v97 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v58 = v157;
        if (v82 >= 65)
        {
          v159 = -1;
LABEL_25:
          v95 = v155;
          (v58[12])(&v159, &type metadata for UInt64, v143, v62, v58);
          v96 = (*(*(v58[4] + 8) + 16))(v95, v73, v62);
          v152(v95, v62);
          if (v96)
          {
            goto LABEL_54;
          }

          goto LABEL_29;
        }
      }

      (v58[15])(v62, v58);
      goto LABEL_29;
    }
  }

  v142 = v25;
  v143 = v23;
  v41 = v21;
  v42 = v152;
  v43 = *(v152 + 16);
  if (v43(v26, v152) >= 64)
  {
    v44 = v147(v26, v42);
    v45 = v43(v26, v42);
    if (v44)
    {
      v48 = v29;
      if (v45 > 64)
      {
        v159 = -1;
        v42 = v152;
        v49 = *(v152 + 12);
        v50 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v45, v46, v47);
        v49(&v159, &type metadata for UInt64, v50, v26, v42);
        v51 = swift_getAssociatedConformanceWitness(v6, v158, v26, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        v52 = (*(v51 + 16))(v48, v31, v26, v51);
        goto LABEL_10;
      }

      v83 = v143;
      v84 = swift_getAssociatedConformanceWitness(v41, v26, v143, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v85 = v142;
      (*(v84 + 8))(&qword_18071E0A8, 256, v83, v84);
      (*(v41 + 3))(v85, v26, v41);
      v86 = swift_getAssociatedConformanceWitness(v6, v158, v26, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
      LOBYTE(v83) = (*(v86 + 40))(v31, v48, v26, v86);
      (*(v156 + 8))(v48, v26);
      v42 = v152;
      if ((v83 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v42 = v152;
      if (v45 >= 65)
      {
        v159 = -1;
        v53 = *(v152 + 12);
        v54 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v45, v46, v47);
        v48 = v29;
        v53(&v159, &type metadata for UInt64, v54, v26, v42);
        v55 = swift_getAssociatedConformanceWitness(v6, v158, v26, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        v52 = (*(v55 + 16))(v29, v31, v26, v55);
LABEL_10:
        v56 = v52;
        v57 = *(v156 + 8);
        v57(v48, v26);
        if (v56)
        {
          v38 = (v57)(v31, v26);
          goto LABEL_12;
        }

        goto LABEL_20;
      }
    }

    (*(v42 + 15))(v26, v42);
  }

LABEL_20:
  v87 = (*(v42 + 15))(v26, v42);
  (*(v156 + 8))(v31, v26);
  v88 = *(*(v6 + 8) + 16);
  v89 = v155;
  v90 = v158;
  v88(v158);
  v91 = v153;
  v92 = (*(*(v157[4] + 8) + 16))(v153, v89, v90);
  v93 = *(v154 + 8);
  v93(v91, v90);
  v93(v89, v90);
  if (v92)
  {
    return -v87;
  }

  else
  {
    return v87;
  }
}

Swift::tuple_partialValue__Int128_overflow_Bool __swiftcall _Int128.multipliedReportingOverflow(by:)(Swift::_Int128 by)
{
  high = by.high;
  low = by.low;
  if (v2)
  {
    if (!by.high)
    {
      LOBYTE(v6) = by.low != 0;
      v7 = -__PAIR128__(v3, v1) >> 64;
      high = 0;
      if (v2 >= 0)
      {
        LOBYTE(v6) = 0;
      }

      else
      {
        v1 = -v1;
        v2 = v7;
      }

      goto LABEL_19;
    }

    if (((v2 ^ by.high) & 0x8000000000000000) == 0)
    {
      if (v2 < 0)
      {
LABEL_17:
        v6 = (v2 ^ by.high) >> 63;
        v8 = v1 == 0;
        v1 = -v1;
        v2 = -(v2 + !v8);
        if ((by.high & 0x8000000000000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      goto LABEL_9;
    }

    if (v2 < 0)
    {
      goto LABEL_17;
    }

    LOBYTE(v6) = 1;
    if ((by.high & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if ((by.high & 0x8000000000000000) == 0 || !v1)
    {
LABEL_9:
      LOBYTE(v6) = 0;
      if ((by.high & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v2 = 0;
    LOBYTE(v6) = 1;
  }

LABEL_18:
  low = -by.low;
  high = -*&by >> 64;
LABEL_19:
  v9 = !is_mul_ok(v2, low);
  v10 = !is_mul_ok(v1, high);
  v11 = v2 * low + v1 * high;
  v12 = __CFADD__(v2 * low, v1 * high);
  v13 = v1 * low;
  v14 = (v1 * low) >> 64;
  v15 = v11 + v14;
  v16 = __CFADD__(v11, v14);
  if (high)
  {
    v17 = v2 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17 || v9 || v10 || v12)
  {
    v16 = 1;
    v18 = 1;
    if ((v6 & 1) == 0)
    {
      goto LABEL_51;
    }

LABEL_38:
    v19 = -v15;
    if (v13)
    {
      v19 = ~v15;
    }

    v20 = -v13 - 1;
    v15 = (__PAIR128__(v19, v13) - 1) >> 64;
    v13 = -v13;
    if (v15 == -1)
    {
      v15 = (v20 == -1) - 1;
      if (v16)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v20 == -1)
      {
        ++v15;
        v18 = 1;
        if (v16)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }

      if (v16)
      {
LABEL_45:
        v18 = 1;
        goto LABEL_51;
      }
    }

    if (!v15)
    {
      v18 = 1;
      goto LABEL_51;
    }

    v18 = 1;
    goto LABEL_49;
  }

  if (v6)
  {
    goto LABEL_38;
  }

  if (v16)
  {
    goto LABEL_45;
  }

  v18 = 0;
  if (v15)
  {
LABEL_49:
    v18 ^= v15 < 0;
    goto LABEL_51;
  }

  v18 = 0;
LABEL_51:
  result.partialValue.high = v15;
  result.partialValue.low = v13;
  result.overflow = v18;
  return result;
}

uint64_t protocol witness for Numeric.init<A>(exactly:) in conformance _UInt128@<X0>(uint64_t (*a1)(void)@<X5>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

void protocol witness for Numeric.magnitude.getter in conformance _Int128(void *a1@<X8>)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = -__PAIR128__(v1, *v2) >> 64;
  if (v4 < 0)
  {
    v3 = -*v2;
    v4 = v5;
  }

  *a1 = v3;
  a1[1] = v4;
}

uint64_t *protocol witness for ExpressibleByIntegerLiteral.init(integerLiteral:) in conformance _Int128@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *result >> 63;
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t _Int128.Words.subscript.getter(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >= 2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a1)
  {
    return a3;
  }

  else
  {
    return a2;
  }
}

__n128 protocol witness for Collection.subscript.getter in conformance _UInt128.Words@<Q0>(unint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  if ((*a1 & 0x8000000000000000) != 0 || (v3 = a1[1], v3 >= 3))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  a2->n128_u64[0] = *a1;
  a2->n128_u64[1] = v3;
  result = *v2;
  a2[1] = *v2;
  return result;
}

Swift::tuple_partialValue__Int128_overflow_Bool __swiftcall _Int128.multipliedReportingOverflow(by:)(Swift::UInt64 by)
{
  v5 = by != 0;
  v6 = -v1;
  v7 = -__PAIR128__(v3, v1) >> 64;
  if (v2 >= 0)
  {
    v6 = v1;
    v7 = v2;
    v5 = 0;
  }

  v8 = (v7 * by) >> 64;
  v9 = v7 * by;
  v10 = v6 * by;
  v11 = (v6 * by) >> 64;
  v12 = v9 + v11;
  v13 = __CFADD__(v9, v11);
  if (v8)
  {
    v13 = 1;
    v14 = 1;
    if (!v5)
    {
      goto LABEL_26;
    }

LABEL_10:
    v15 = -v12;
    if (v10)
    {
      v15 = ~v12;
    }

    v16 = -v10 - 1;
    v12 = (__PAIR128__(v15, v10) - 1) >> 64;
    v10 = -v10;
    if (v12 == -1)
    {
      v12 = (v16 == -1) - 1;
      if (!v13)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v16 == -1)
      {
        ++v12;
        v14 = 1;
        if (v13)
        {
          goto LABEL_26;
        }

        goto LABEL_24;
      }

      if (!v13)
      {
LABEL_22:
        if (!v12)
        {
          v14 = 1;
          goto LABEL_26;
        }

        v14 = 1;
        goto LABEL_24;
      }
    }

    goto LABEL_20;
  }

  if (v5)
  {
    goto LABEL_10;
  }

  if (v13)
  {
LABEL_20:
    v14 = 1;
    goto LABEL_26;
  }

  v14 = 0;
  if (v12)
  {
LABEL_24:
    v14 ^= v12 < 0;
    goto LABEL_26;
  }

  v14 = 0;
LABEL_26:
  result.partialValue.high = v12;
  result.partialValue.low = v10;
  result.overflow = v14;
  return result;
}

Swift::tuple_quotient__Int128_remainder__Int128 __swiftcall _Int128.quotientAndRemainder(dividingBy:)(Swift::_Int128 dividingBy)
{
  v4 = v2;
  v5 = -__PAIR128__(v3, v1) >> 64;
  v6 = v2 < 0;
  if (v2 >= 0)
  {
    v7.high = v1;
  }

  else
  {
    v7.high = -v1;
  }

  if (v2 < 0)
  {
    v2 = v5;
  }

  v8 = -__PAIR128__(v5, dividingBy.low) >> 64;
  v9 = dividingBy.high < 0;
  if (dividingBy.high >= 0)
  {
    low = dividingBy.low;
  }

  else
  {
    low = -dividingBy.low;
  }

  if (dividingBy.high >= 0)
  {
    v7.low = dividingBy.high;
  }

  else
  {
    v7.low = v8;
  }

  v11 = specialized _wideDivide22<A>(_:by:)(&v17, &v16, &v15, v2, v7, low);
  v13 = v16;
  v12 = v17;
  v14 = v15;
  if (v9 == v6)
  {
    if (v11 < 0)
    {
      goto LABEL_31;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v11 == 0x8000000000000000 && !v17)
    {
      v11 = 0x8000000000000000;
      if (v4 < 0)
      {
        goto LABEL_26;
      }

LABEL_19:
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_32;
      }

LABEL_31:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v11 < 0)
    {
      goto LABEL_31;
    }

    v12 = -v17;
    if (v17)
    {
      v11 = ~v11;
    }

    else
    {
      v11 = -v11;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }
  }

LABEL_26:
  if (v16 < 0)
  {
    goto LABEL_31;
  }

  v14 = -v15;
  if (v15)
  {
    v13 = ~v16;
  }

  else
  {
    v13 = -v16;
  }

LABEL_32:
  result.remainder.high = v13;
  result.remainder.low = v14;
  result.quotient.high = v11;
  result.quotient.low = v12;
  return result;
}

Swift::tuple_partialValue__Int128_overflow_Bool __swiftcall _Int128.remainderReportingOverflow(dividingBy:)(Swift::_Int128 dividingBy)
{
  v4 = v2;
  if (dividingBy.high == -1)
  {
    if (dividingBy.low == -1 && v2 == 0x8000000000000000 && !v1)
    {
      v4 = 0;
      v5 = 1;
      goto LABEL_38;
    }
  }

  else if (!dividingBy.high && !dividingBy.low)
  {
    v5 = 1;
    goto LABEL_38;
  }

  v6 = -__PAIR128__(v3, v1) >> 64;
  v7 = v2 < 0;
  if (v2 >= 0)
  {
    v8.high = v1;
  }

  else
  {
    v8.high = -v1;
  }

  if (v2 < 0)
  {
    v2 = v6;
  }

  v9 = -__PAIR128__(v6, dividingBy.low) >> 64;
  v10 = dividingBy.high < 0;
  if (dividingBy.high >= 0)
  {
    low = dividingBy.low;
  }

  else
  {
    low = -dividingBy.low;
  }

  if (dividingBy.high >= 0)
  {
    v8.low = dividingBy.high;
  }

  else
  {
    v8.low = v9;
  }

  v12 = specialized _wideDivide22<A>(_:by:)(&v20, &v19, &v18, v2, v8, low);
  v1 = v18;
  if (v10 == v7)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v14 = v12 != 0x8000000000000000 || v20 != 0;
    if ((v12 & 0x8000000000000000) != 0 && v14)
    {
      goto LABEL_39;
    }
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    if ((v19 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v4 = v19;
      goto LABEL_38;
    }

LABEL_39:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v19 < 0)
  {
    goto LABEL_39;
  }

  v5 = 0;
  v1 = -v18;
  if (v18)
  {
    v4 = ~v19;
  }

  else
  {
    v4 = -v19;
  }

LABEL_38:
  v15 = v1;
  v16 = v4;
  v17 = v5;
  result.partialValue.high = v16;
  result.partialValue.low = v15;
  result.overflow = v17;
  return result;
}

Swift::tuple_high__Int128_low__UInt128 __swiftcall _Int128.multipliedFullWidth(by:)(Swift::_Int128 by)
{
  if (v2)
  {
    if (by.high)
    {
      v4 = ((v2 ^ by.high) & 0x8000000000000000) == 0;
      if ((v2 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    if ((v2 & 0x8000000000000000) != 0)
    {
      v4 = 0;
LABEL_11:
      v6 = v1 == 0;
      v1 = -v1;
      v2 = -(v2 + !v6);
LABEL_12:
      v7 = -__PAIR128__(v3, by.low) >> 64;
      if (by.high >= 0)
      {
        high = by.high;
      }

      else
      {
        by.low = -by.low;
        high = v7;
      }

      goto LABEL_15;
    }

    high = 0;
    v4 = 1;
  }

  else
  {
    if (by.high)
    {
      v2 = 0;
      v4 = by.high >= 0;
      goto LABEL_12;
    }

    high = 0;
    v2 = 0;
    v4 = 1;
  }

LABEL_15:
  v8 = (__PAIR128__(high, by.low) * __PAIR128__(v2, v1)) >> 64;
  v9 = __CFADD__((__PAIR128__(v2, v1) * by.low) >> 64, v1 * high);
  v6 = __CFADD__((v1 * by.low) >> 64, v2 * by.low);
  v10 = v1 * by.low;
  v11 = (v1 * high) >> 64;
  v12 = v2 * high;
  v13 = (v2 * high) >> 64;
  v14 = ((v2 * by.low) >> 64) + v11;
  v6 = __CFADD__(v6, v12) | __CFADD__(v9, v6 + v12);
  v15 = v9 + __CFADD__((v1 * by.low) >> 64, v2 * by.low) + v12;
  v16 = v6;
  v18 = (__PAIR128__(v16, v14) + __PAIR128__(v13, v15)) >> 64;
  v17 = v14 + v15;
  if (!v4)
  {
    v6 = v10 == 0;
    v19 = -v10;
    if (v6)
    {
      v20 = -v8;
    }

    else
    {
      v20 = ~v8;
    }

    v6 = v19 != 0;
    v21 = v19 - 1;
    v22 = !v6;
    v8 = v20 - v22;
    v6 = __CFADD__(v21, 1);
    v10 = v21 + 1;
    v23 = v6;
    v24 = v8 == -1;
    v25 = -v18;
    if (v17)
    {
      v25 = ~v18;
    }

    v26 = -v18;
    if (v17)
    {
      v26 = ~v18;
    }

    v27 = (v23 & 1) == 0;
    if (v23)
    {
      v28 = v25;
    }

    else
    {
      v28 = v26;
    }

    if (v27)
    {
      v24 = 0;
    }

    if (!v27)
    {
      ++v8;
    }

    v18 = (__PAIR128__(((v17 == 0) << 63) >> 63, -v17 - 1) + __PAIR128__(v28, v24)) >> 64;
    v17 = -v17 - 1 + v24;
  }

  v29 = v10;
  v30 = v8;
  result.low.high = v30;
  result.low.low = v29;
  result.high.high = v18;
  result.high.low = v17;
  return result;
}

Swift::tuple_quotient__Int128_remainder__Int128 __swiftcall _Int128.dividingFullWidth(_:)(Swift::tuple_high__Int128_low__UInt128 a1)
{
  high = a1.low.high;
  v5.high = a1.low.low;
  v6 = a1.high.high;
  low = a1.high.low;
  if (a1.high.high < 0)
  {
    v9 = -a1.high.high;
    if (a1.high.low)
    {
      v9 = ~a1.high.high;
      v10 = 0;
    }

    else
    {
      v10 = 1;
    }

    v3 = v10 << 63 >> 63;
    if (a1.low.low)
    {
      v11 = ~a1.low.high;
    }

    else
    {
      v11 = -a1.low.high;
    }

    v12 = -a1.low.low - 1;
    v13 = (__PAIR128__(v11, a1.low.low) - 1) >> 64;
    v14 = __CFADD__(v12, 1);
    v5.high = -a1.low.low;
    v15 = v12 == -1;
    high = (((a1.low.low == 0) << 63) >> 63) + v14 + v11;
    v16 = -1;
    if (v14)
    {
      v16 = 0;
    }

    v17 = (v13 == -1) & v15;
    if (v13 == -1)
    {
      high = v16;
    }

    v8 = (__PAIR128__(v9, -a1.high.low - 1) + __PAIR128__(v3, v17)) >> 64;
    low = -a1.high.low - 1 + v17;
  }

  else
  {
    v8 = a1.high.high;
  }

  v18 = a1.high.high < 0;
  v19 = -v1;
  v20 = -__PAIR128__(v3, v1) >> 64;
  v21 = v2 < 0;
  if (v2 < 0)
  {
    v5.low = v20;
  }

  else
  {
    v19 = v1;
    v5.low = v2;
  }

  v22 = specialized _wideDivide42<A>(_:by:)(&v28, &v27, &v26, v8, low, high, v5, v19);
  v24 = v27;
  v23 = v28;
  v25 = v26;
  if (v18 == v21)
  {
    if (v22 < 0)
    {
      goto LABEL_36;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v22 == 0x8000000000000000 && !v28)
    {
      v22 = 0x8000000000000000;
      if (v6 < 0)
      {
        goto LABEL_31;
      }

LABEL_24:
      if ((v27 & 0x8000000000000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_36:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v22 < 0)
    {
      goto LABEL_36;
    }

    v23 = -v28;
    if (v28)
    {
      v22 = ~v22;
    }

    else
    {
      v22 = -v22;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }
  }

LABEL_31:
  if (v27 < 0)
  {
    goto LABEL_36;
  }

  v25 = -v26;
  if (v26)
  {
    v24 = ~v27;
  }

  else
  {
    v24 = -v27;
  }

LABEL_37:
  result.remainder.high = v24;
  result.remainder.low = v25;
  result.quotient.high = v22;
  result.quotient.low = v23;
  return result;
}

double protocol witness for static FixedWidthInteger.max.getter in conformance _Int128@<D0>(_OWORD *a1@<X8>)
{
  result = NAN;
  *a1 = xmmword_18071DF90;
  return result;
}

double protocol witness for static FixedWidthInteger.min.getter in conformance _Int128@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_18071DFA0;
  return result;
}

uint64_t protocol witness for FixedWidthInteger.addingReportingOverflow(_:) in conformance _Int128(void *a1, void *a2)
{
  v3 = a2[1];
  v4 = v2[1];
  v5 = __CFADD__(*v2, *a2);
  v6 = __OFADD__(v4, v3);
  v7 = v4 + v3;
  if (v6)
  {
    v8 = 1;
    if (v5)
    {
LABEL_9:
      v9 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    v8 = (v7 == 0x7FFFFFFFFFFFFFFFLL) & v5;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  v9 = 0;
LABEL_10:
  *a1 = *v2 + *a2;
  a1[1] = v9 + v7;
  return v8;
}

unint64_t protocol witness for FixedWidthInteger.subtractingReportingOverflow(_:) in conformance _Int128(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *v2;
  v6 = v2[1];
  v7 = __OFSUB__(v6, v4);
  v8 = v6 - v4;
  v9 = v7;
  v10 = v5 >= v3;
  v11 = v5 - v3;
  LODWORD(v3) = v5 < v3;
  if (v10)
  {
    if (v9)
    {
      v3 = 1;
      v12 = v8;
      goto LABEL_13;
    }

    v12 = v8;
  }

  else
  {
    v12 = v8 - 1;
    if (v9)
    {
      v3 = 1;
      goto LABEL_13;
    }
  }

  if (v8 == 0x8000000000000000)
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

LABEL_13:
  *a1 = v11;
  a1[1] = v12;
  return v3;
}

BOOL protocol witness for FixedWidthInteger.multipliedReportingOverflow(by:) in conformance _Int128(Swift::UInt64 *a1, Swift::_Int128 *a2)
{
  v4 = _Int128.multipliedReportingOverflow(by:)(*a2);
  *a1 = v4.partialValue.low;
  a1[1] = v4.partialValue.high;
  return v4.overflow;
}

uint64_t protocol witness for FixedWidthInteger.dividedReportingOverflow(by:) in conformance _Int128(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *v2;
  v7 = v2[1];
  if (v5 == -1)
  {
    if (v4 == -1 && v7 == 0x8000000000000000 && v6 == 0)
    {
      v6 = 0;
      result = 1;
      v7 = 0x8000000000000000;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v4 == 0;
  }

  if (!v8)
  {
LABEL_15:
    v12 = _Int128.quotientAndRemainder(dividingBy:)(*&v4);
    v6 = v12;
    v7 = *(&v12 + 1);
    result = 0;
    goto LABEL_16;
  }

  result = 1;
LABEL_16:
  *a1 = v6;
  a1[1] = v7;
  return result;
}

BOOL protocol witness for FixedWidthInteger.remainderReportingOverflow(dividingBy:) in conformance _Int128(Swift::UInt64 *a1, Swift::_Int128 *a2)
{
  v4 = _Int128.remainderReportingOverflow(dividingBy:)(*a2);
  *a1 = v4.partialValue.low;
  a1[1] = v4.partialValue.high;
  return v4.overflow;
}

uint64_t protocol witness for FixedWidthInteger.multipliedFullWidth(by:) in conformance _UInt128(uint64_t *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void, void, void))
{
  result = a6(*a3, a3[1], *v6, v6[1]);
  *a1 = result;
  a1[1] = v10;
  *a2 = v11;
  a2[1] = v12;
  return result;
}

Swift::UInt64 protocol witness for FixedWidthInteger.dividingFullWidth(_:) in conformance _Int128(Swift::UInt64 *a1, Swift::UInt64 *a2, uint64_t a3, Swift::UInt64 *a4)
{
  v7.high.low = *a3;
  v7.high.high = *(a3 + 8);
  v7.low.low = *a4;
  v7.low.high = a4[1];
  v8 = _Int128.dividingFullWidth(_:)(v7);
  *a1 = v8.quotient.low;
  a1[1] = v8.quotient.high;
  *a2 = v8.remainder.low;
  a2[1] = v8.remainder.high;
  return v8.quotient.low;
}

unint64_t protocol witness for FixedWidthInteger.leadingZeroBitCount.getter in conformance _Int128()
{
  v1 = v0[1];
  if (v1)
  {
    return __clz(v1);
  }

  else
  {
    return __clz(*v0) + 64;
  }
}

int8x16_t protocol witness for FixedWidthInteger.init(bigEndian:) in conformance _Int128@<Q0>(int8x16_t *a1@<X0>, int8x16_t *a2@<X8>)
{
  v2 = vrev64q_s8(*a1);
  result = vextq_s8(v2, v2, 8uLL);
  *a2 = result;
  return result;
}

__n128 protocol witness for FixedWidthInteger.init(littleEndian:) in conformance _Int128@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 protocol witness for FixedWidthInteger.littleEndian.getter in conformance _Int128@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

int8x16_t protocol witness for FixedWidthInteger.byteSwapped.getter in conformance _Int128@<Q0>(int8x16_t *a1@<X8>)
{
  v2 = vrev64q_s8(*v1);
  result = vextq_s8(v2, v2, 8uLL);
  *a1 = result;
  return result;
}

uint64_t protocol witness for static FixedWidthInteger.&>> infix(_:_:) in conformance _Int128@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = specialized _wideMaskedShiftRight<A>(_:_:)(&v5, *(a1 + 8), *a1, *a2);
  *a3 = v5;
  a3[1] = result;
  return result;
}

uint64_t protocol witness for static FixedWidthInteger.&>>= infix(_:_:) in conformance _Int128(uint64_t a1, void *a2)
{
  result = specialized _wideMaskedShiftRight<A>(_:_:)(&v4, *(a1 + 8), *a1, *a2);
  *a1 = v4;
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for static FixedWidthInteger.&<< infix(_:_:) in conformance _Int128@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized static _Int128.&<< infix(_:_:)(*a1, a1[1], *a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t *protocol witness for static FixedWidthInteger.&* infix(_:_:) in conformance _Int128@<X0>(uint64_t *result@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *result;
  v5 = result[1];
  v6 = *a2;
  v7 = a2[1];
  if (!v7)
  {
    if ((v5 & 0x8000000000000000) == 0 || !v6)
    {
LABEL_9:
      LODWORD(v8) = 0;
      v9 = 0;
      if ((v5 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v7 = 0;
    LODWORD(v8) = 1;
LABEL_18:
    v11 = v4 == 0;
    v4 = -v4;
    v5 = -(v5 + !v11);
    v9 = v8;
    goto LABEL_19;
  }

  if (v5)
  {
    if (((v7 ^ v5) & 0x8000000000000000) == 0)
    {
      if (v7 < 0)
      {
LABEL_17:
        v8 = (v7 ^ v5) >> 63;
        v11 = v6 == 0;
        v6 = -v6;
        v7 = -(v7 + !v11);
        v9 = v8;
        if ((v5 & 0x8000000000000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      goto LABEL_9;
    }

    if (v7 < 0)
    {
      goto LABEL_17;
    }

    LODWORD(v8) = 1;
    v9 = 1;
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v10 = -__PAIR128__(v3, v6) >> 64;
  v5 = 0;
  if (v7 >= 0)
  {
    v9 = 0;
  }

  else
  {
    v6 = -v6;
    v7 = v10;
    v9 = v4 != 0;
  }

LABEL_19:
  v12 = v6 * v5 + v7 * v4;
  v13 = v6 * v4;
  v14 = v12 + ((v6 * v4) >> 64);
  v15 = -v14;
  if (v13)
  {
    v15 = ~v14;
  }

  v16 = (__PAIR128__(v15, -v13 - 1) + __PAIR128__(((v13 == 0) << 63) >> 63, 1)) >> 64;
  v17 = -v13;
  if (v9)
  {
    v14 = v16;
  }

  else
  {
    v17 = v13;
  }

  *a3 = v17;
  a3[1] = v14;
  return result;
}

uint64_t protocol witness for BinaryInteger.init<A>(_:) in conformance _UInt128@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, const char *a4@<X3>, uint64_t (*a5)(void)@<X5>, uint64_t *a6@<X8>)
{
  v12 = a5();
  static FixedWidthInteger._convert<A>(from:)(&v42, a1, a4, a2, v12, a3);
  if (v44)
  {
    v41 = v6;
    v42 = static String._createEmpty(withInitialCapacity:)(80);
    v43 = v16;
    TypeName = swift_getTypeName(a2, 0);
    if ((v18 & 0x8000000000000000) == 0)
    {
      v19 = TypeName;
      v20 = v18;
      v21 = validateUTF8(_:)(TypeName, v18);
      v25 = v21 < 0 ? repairUTF8(_:firstKnownBrokenRange:)(v19, v20, v22, v23) : specialized static String._uncheckedFromUTF8(_:isASCII:)(v19, v20, v21 & 1, v24);
      v27 = v26;
      String.write(_:)(*&v25);
      v27;
      v28._object = 0x800000018066D440;
      v28._countAndFlagsBits = 0xD00000000000001ELL;
      String.write(_:)(v28);
      v29 = swift_getTypeName(v41, 0);
      if ((v30 & 0x8000000000000000) == 0)
      {
        v31 = v29;
        v32 = v30;
        v33 = validateUTF8(_:)(v29, v30);
        if (v33 < 0)
        {
          v37 = repairUTF8(_:firstKnownBrokenRange:)(v31, v32, v34, v35);
        }

        else
        {
          v37 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v31, v32, v33 & 1, v36);
        }

        v39 = v38;
        String.write(_:)(*&v37);
        v39;
        v40._countAndFlagsBits = 0xD00000000000002ELL;
        v40._object = 0x800000018066D460;
        String.write(_:)(v40);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v42, v43, "Swift/Integers.swift", 0x14uLL, 2, 0xAB4uLL);
      }
    }

    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v14 = v42;
  v13 = v43;
  result = (*(*(a2 - 1) + 8))(a1, a2);
  *a6 = v14;
  a6[1] = v13;
  return result;
}

uint64_t protocol witness for BinaryInteger.init<A>(_:) in conformance _UInt128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(char *, uint64_t, uint64_t)@<X5>, unint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  v9 = specialized _UInt128.init<A>(_:)(a1, a2, a3, a4, a5);
  v11 = v10;
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a6 = v9;
  a6[1] = v11;
  return result;
}

unint64_t protocol witness for BinaryInteger.trailingZeroBitCount.getter in conformance _Int128()
{
  if (*v0)
  {
    return __clz(__rbit64(*v0));
  }

  else
  {
    return __clz(__rbit64(v0[1])) + 64;
  }
}

Swift::UInt64 protocol witness for static BinaryInteger.% infix(_:_:) in conformance _Int128@<X0>(Swift::_Int128 *a1@<X1>, Swift::UInt64 *a2@<X8>)
{
  v4 = _Int128.remainderReportingOverflow(dividingBy:)(*a1);
  if (v4.overflow)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a2 = v4.partialValue.low;
  a2[1] = v4.partialValue.high;
  return v4.partialValue.low;
}

uint64_t protocol witness for static Numeric.*= infix(_:_:) in conformance _Int128(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, uint64_t, uint64_t))
{
  result = a5(*a2, a2[1], *a1, a1[1]);
  if (v8)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a1 = result;
  a1[1] = v7;
  return result;
}

void *protocol witness for static BinaryInteger.~ prefix(_:) in conformance _UInt128@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  if (*result)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -v2;
  }

  v4 = *result == 0;
  *a2 = -*result - 1;
  a2[1] = v3 - v4;
  return result;
}

int8x16_t protocol witness for static BinaryInteger.& infix(_:_:) in conformance _Int128@<Q0>(int8x16_t *a1@<X0>, int8x16_t *a2@<X1>, int8x16_t *a3@<X8>)
{
  result = vandq_s8(*a2, *a1);
  *a3 = result;
  return result;
}

int8x16_t protocol witness for static BinaryInteger.&= infix(_:_:) in conformance _Int128(int8x16_t *a1, int8x16_t *a2)
{
  result = vandq_s8(*a1, *a2);
  *a1 = result;
  return result;
}

int8x16_t protocol witness for static BinaryInteger.| infix(_:_:) in conformance _Int128@<Q0>(int8x16_t *a1@<X0>, int8x16_t *a2@<X1>, int8x16_t *a3@<X8>)
{
  result = vorrq_s8(*a2, *a1);
  *a3 = result;
  return result;
}

int8x16_t protocol witness for static BinaryInteger.|= infix(_:_:) in conformance _Int128(int8x16_t *a1, int8x16_t *a2)
{
  result = vorrq_s8(*a1, *a2);
  *a1 = result;
  return result;
}

int8x16_t protocol witness for static BinaryInteger.^ infix(_:_:) in conformance _Int128@<Q0>(int8x16_t *a1@<X0>, int8x16_t *a2@<X1>, int8x16_t *a3@<X8>)
{
  result = veorq_s8(*a2, *a1);
  *a3 = result;
  return result;
}

int8x16_t protocol witness for static BinaryInteger.^= infix(_:_:) in conformance _Int128(int8x16_t *a1, int8x16_t *a2)
{
  result = veorq_s8(*a1, *a2);
  *a1 = result;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>> infix<A>(_:_:) in conformance _Int128@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v110 = a5;
  v106 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v106, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v105 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v104 = &v101 - v11;
  v112 = *(a3 - 1);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v113 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v108 = &v101 - v14;
  v16 = *a1;
  v15 = a1[1];
  v18 = a4 + 64;
  v17 = *(a4 + 64);
  v19 = v17(a3, a4);
  v111 = v17;
  if ((v19 & 1) == 0)
  {
    v23 = v15;
    v24 = v16;
    v25 = v17(a3, a4);
    v26 = *(a4 + 128);
    v27 = a2;
    v28 = v26(a3, a4);
    v109 = v26;
    if (v25)
    {
      v107 = a4 + 64;
      if (v28 > 64)
      {
        v114 = -128;
        v31 = v23;
        v32 = *(a4 + 96);
        v33 = lazy protocol witness table accessor for type Int and conformance Int(v28, v29, v30);
        v34 = v108;
        v32(&v114, &type metadata for Int, v33, a3, a4);
        v16 = v24;
        v15 = v31;
        v35 = v112;
        a2 = v27;
        v36 = (*(*(*(a4 + 32) + 8) + 16))(v27, v34, a3);
        (*(v35 + 8))(v34, a3);
        v18 = v107;
        if (v36)
        {
          goto LABEL_17;
        }

        goto LABEL_19;
      }

      v45 = v105;
      v44 = v106;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v106, a3, v105, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v47 = v104;
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v45, AssociatedConformanceWitness);
      v48 = v108;
      (v44[3])(v47, a3, v44);
      LOBYTE(v44) = (*(*(*(a4 + 32) + 8) + 16))(a2, v48, a3);
      (*(v112 + 8))(v48, a3);
      if (v44)
      {
        goto LABEL_17;
      }

      v16 = v24;
      v43 = (*(a4 + 120))(a3, a4) < -128;
      v18 = v107;
    }

    else
    {
      if (v28 >= 64)
      {
        v16 = v24;
        v15 = v23;
        goto LABEL_19;
      }

      v43 = (*(a4 + 120))(a3, a4) < -128;
      v16 = v24;
    }

    v15 = v23;
    if (v43)
    {
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  v109 = *(a4 + 128);
  v20 = v109(a3, a4);
  if (v20 >= 64)
  {
    v114 = -128;
    v37 = *(a4 + 96);
    v38 = lazy protocol witness table accessor for type Int and conformance Int(v20, v21, v22);
    v107 = a4 + 64;
    v39 = v108;
    v37(&v114, &type metadata for Int, v38, a3, a4);
    v40 = v112;
    v41 = (*(*(*(a4 + 32) + 8) + 16))(a2, v39, a3);
    v42 = v39;
    v18 = v107;
    (*(v40 + 8))(v42, a3);
    if (v41)
    {
      goto LABEL_17;
    }
  }

  else if ((*(a4 + 120))(a3, a4) < -128)
  {
    goto LABEL_17;
  }

LABEL_19:
  v51 = v111(a3, a4);
  v52 = v109(a3, a4);
  if (v51)
  {
    if (v52 > 64)
    {
      goto LABEL_21;
    }

LABEL_29:
    if ((*(a4 + 120))(a3, a4) <= 128)
    {
      goto LABEL_22;
    }

LABEL_30:
    v69 = v15;
    v70 = v16;
    v71 = 127;
    goto LABEL_52;
  }

  if (v52 < 64)
  {
    goto LABEL_29;
  }

LABEL_21:
  v114 = 128;
  v103 = a4 + 128;
  v55 = *(a4 + 96);
  v56 = lazy protocol witness table accessor for type Int and conformance Int(v52, v53, v54);
  v107 = v18;
  v57 = v108;
  v55(&v114, &type metadata for Int, v56, a3, a4);
  v58 = v112;
  v59 = (*(*(*(a4 + 32) + 8) + 16))(v57, a2, a3);
  v60 = v57;
  v18 = v107;
  (*(v58 + 8))(v60, a3);
  if (v59)
  {
    goto LABEL_30;
  }

LABEL_22:
  v102 = v16;
  (*(v112 + 16))(v113, a2, a3);
  if ((v111(a3, a4) & 1) == 0 || v109(a3, a4) < 65)
  {
    goto LABEL_39;
  }

  v61 = v111;
  if ((v111(a3, a4) & 1) == 0)
  {
    v72 = v61(a3, a4);
    v73 = v109(a3, a4);
    if ((v72 & 1) == 0)
    {
      if (v73 >= 64)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    v107 = v18;
    if (v73 <= 64)
    {
      v81 = v105;
      v80 = v106;
      v82 = swift_getAssociatedConformanceWitness(v106, a3, v105, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v83 = v104;
      (*(v82 + 8))(&qword_18071E0A8, 256, v81, v82);
      v84 = v108;
      (v80[3])(v83, a3, v80);
      LOBYTE(v80) = (*(*(*(a4 + 32) + 8) + 16))(v113, v84, a3);
      (*(v112 + 8))(v84, a3);
      if ((v80 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v114 = 0x8000000000000000;
      v76 = *(a4 + 96);
      v77 = lazy protocol witness table accessor for type Int and conformance Int(v73, v74, v75);
      v78 = v108;
      v76(&v114, &type metadata for Int, v77, a3, a4);
      v79 = (*(*(*(a4 + 32) + 8) + 16))(v113, v78, a3);
      (*(v112 + 8))(v78, a3);
      if ((v79 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

LABEL_43:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v62 = v109(a3, a4);
  if (v62 < 64)
  {
LABEL_38:
    (*(a4 + 120))(a3, a4);
    goto LABEL_39;
  }

  v114 = 0x8000000000000000;
  v65 = *(a4 + 96);
  v66 = lazy protocol witness table accessor for type Int and conformance Int(v62, v63, v64);
  v107 = v18;
  v67 = v108;
  v65(&v114, &type metadata for Int, v66, a3, a4);
  v68 = (*(*(*(a4 + 32) + 8) + 16))(v113, v67, a3);
  (*(v112 + 8))(v67, a3);
  if (v68)
  {
    goto LABEL_43;
  }

LABEL_39:
  v85 = v109;
  v86 = v109(a3, a4);
  v87 = v111;
  if (v86 <= 64 && (v85(a3, a4) != 64 || (v87(a3, a4) & 1) != 0))
  {
    goto LABEL_49;
  }

  v88 = v87(a3, a4);
  v89 = v85(a3, a4);
  if (v88)
  {
    if (v89 > 64)
    {
      goto LABEL_42;
    }
  }

  else if (v89 >= 64)
  {
LABEL_42:
    v114 = 0x7FFFFFFFFFFFFFFFLL;
    v92 = *(a4 + 96);
    v93 = lazy protocol witness table accessor for type Int and conformance Int(v89, v90, v91);
    v94 = v108;
    v92(&v114, &type metadata for Int, v93, a3, a4);
    v95 = (*(*(*(a4 + 32) + 8) + 16))(v94, v113, a3);
    (*(v112 + 8))(v94, a3);
    if (v95)
    {
      goto LABEL_43;
    }

    goto LABEL_49;
  }

  (*(a4 + 120))(a3, a4);
LABEL_49:
  v96 = v113;
  v97 = (*(a4 + 120))(a3, a4);
  (*(v112 + 8))(v96, a3);
  v98 = v102;
  result = specialized _wideMaskedShiftRight<A>(_:_:)(&v114, v15, v102, 127);
  if ((v97 & 0x8000000000000000) == 0)
  {
    if (v97 >= 0x80)
    {
LABEL_53:
      v50 = v114;
      goto LABEL_54;
    }

    v69 = v15;
    v70 = v98;
    v71 = v97;
LABEL_52:
    result = specialized _wideMaskedShiftRight<A>(_:_:)(&v114, v69, v70, v71);
    goto LABEL_53;
  }

  if (v97 > 0xFFFFFFFFFFFFFF80)
  {
    v50 = specialized static _Int128.&<< infix(_:_:)(v98, v15, -v97);
    result = v100;
    goto LABEL_54;
  }

LABEL_17:
  result = 0;
  v50 = 0;
LABEL_54:
  v99 = v110;
  *v110 = v50;
  v99[1] = result;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>>= infix<A>(_:_:) in conformance _Int128(unint64_t *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v98 = a1;
  v94 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v94, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v93 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v92 = &v90 - v9;
  v97 = *(a3 - 1);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v96 = &v90 - v13;
  v14 = *(a4 + 64);
  if (v14(a3, a4))
  {
    v95 = *(a4 + 128);
    v15 = v95(a3, a4);
    if (v15 < 64)
    {
      if ((*(a4 + 120))(a3, a4) > -129)
      {
        goto LABEL_17;
      }

LABEL_16:
      v22 = -128;
      goto LABEL_49;
    }

    v22 = -128;
    v99 = -128;
    v90 = v14;
    v91 = (a4 + 64);
    v28 = v96;
    v29 = *(a4 + 96);
    v30 = lazy protocol witness table accessor for type Int and conformance Int(v15, v16, v17);
    v29(&v99, &type metadata for Int, v30, a3, a4);
    v14 = v90;
    v31 = v97;
    v32 = (*(*(*(a4 + 32) + 8) + 16))(a2, v28, a3);
    (*(v31 + 8))(v28, a3);
    if (v32)
    {
      goto LABEL_49;
    }

LABEL_17:
    v39 = v14(a3, a4);
    v40 = a2;
    v41 = v95(a3, a4);
    if (v39)
    {
      if (v41 > 64)
      {
        goto LABEL_19;
      }
    }

    else if (v41 >= 64)
    {
LABEL_19:
      v22 = 128;
      v99 = 128;
      v90 = (a4 + 128);
      v91 = v12;
      v44 = *(a4 + 96);
      v45 = lazy protocol witness table accessor for type Int and conformance Int(v41, v42, v43);
      v46 = v96;
      v44(&v99, &type metadata for Int, v45, a3, a4);
      v47 = v91;
      v48 = (*(*(*(a4 + 32) + 8) + 16))(v46, v40, a3);
      v49 = v46;
      v12 = v47;
      (*(v97 + 8))(v49, a3);
      if (v48)
      {
        goto LABEL_49;
      }

      goto LABEL_24;
    }

    if ((*(a4 + 120))(a3, a4) > 128)
    {
      v22 = 128;
      goto LABEL_49;
    }

LABEL_24:
    (*(v97 + 16))(v12, v40, a3);
    v50 = v14(a3, a4);
    v51 = v95;
    if ((v50 & 1) == 0 || v95(a3, a4) < 65)
    {
      goto LABEL_38;
    }

    if (v14(a3, a4))
    {
      v52 = v51(a3, a4);
      if (v52 >= 64)
      {
        v99 = 0x8000000000000000;
        v91 = v12;
        v55 = *(a4 + 96);
        v56 = lazy protocol witness table accessor for type Int and conformance Int(v52, v53, v54);
        v57 = v96;
        v55(&v99, &type metadata for Int, v56, a3, a4);
        v51 = v95;
        v58 = v97;
        v12 = v91;
        v59 = (*(*(*(a4 + 32) + 8) + 16))(v91, v57, a3);
        (*(v58 + 8))(v57, a3);
        if (v59)
        {
          goto LABEL_42;
        }

LABEL_38:
        if (v51(a3, a4) <= 64 && (v51(a3, a4) != 64 || (v14(a3, a4) & 1) != 0))
        {
          goto LABEL_48;
        }

        v76 = v14(a3, a4);
        v77 = v51(a3, a4);
        if (v76)
        {
          if (v77 > 64)
          {
            goto LABEL_41;
          }
        }

        else if (v77 >= 64)
        {
LABEL_41:
          v99 = 0x7FFFFFFFFFFFFFFFLL;
          v80 = v96;
          v81 = *(a4 + 96);
          v82 = lazy protocol witness table accessor for type Int and conformance Int(v77, v78, v79);
          v81(&v99, &type metadata for Int, v82, a3, a4);
          v83 = (*(*(*(a4 + 32) + 8) + 16))(v80, v12, a3);
          (*(v97 + 8))(v80, a3);
          if (v83)
          {
            goto LABEL_42;
          }

          goto LABEL_48;
        }

        (*(a4 + 120))(a3, a4);
LABEL_48:
        v22 = (*(a4 + 120))(a3, a4);
        (*(v97 + 8))(v12, a3);
        goto LABEL_49;
      }

LABEL_37:
      (*(a4 + 120))(a3, a4);
      goto LABEL_38;
    }

    v60 = v14(a3, a4);
    v61 = v51;
    v62 = v60;
    v63 = v61(a3, a4);
    if ((v62 & 1) == 0)
    {
      v51 = v95;
      if (v63 >= 64)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    if (v63 <= 64)
    {
      v71 = v93;
      v72 = v94;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v94, a3, v93, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v74 = v92;
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v71, AssociatedConformanceWitness);
      v75 = v96;
      (v72[3])(v74, a3, v72);
      LOBYTE(v71) = (*(*(*(a4 + 32) + 8) + 16))(v12, v75, a3);
      (*(v97 + 8))(v75, a3);
      v51 = v95;
      if ((v71 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v99 = 0x8000000000000000;
      v91 = v12;
      v66 = *(a4 + 96);
      v67 = lazy protocol witness table accessor for type Int and conformance Int(v63, v64, v65);
      v68 = v96;
      v66(&v99, &type metadata for Int, v67, a3, a4);
      v69 = v97;
      v12 = v91;
      v70 = (*(*(*(a4 + 32) + 8) + 16))(v91, v68, a3);
      (*(v69 + 8))(v68, a3);
      v51 = v95;
      if ((v70 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

LABEL_42:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v18 = v14(a3, a4);
  v95 = *(a4 + 128);
  v19 = v95(a3, a4);
  if ((v18 & 1) == 0)
  {
    if (v19 < 64 && (*(a4 + 120))(a3, a4) < -128)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v91 = v12;
  if (v19 <= 64)
  {
    v33 = v93;
    v34 = v94;
    v35 = swift_getAssociatedConformanceWitness(v94, a3, v93, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v36 = v92;
    (*(v35 + 8))(&qword_18071E0A8, 256, v33, v35);
    v37 = v96;
    (v34[3])(v36, a3, v34);
    LOBYTE(v33) = (*(*(*(a4 + 32) + 8) + 16))(a2, v37, a3);
    (*(v97 + 8))(v37, a3);
    if (v33)
    {
      goto LABEL_16;
    }

    v38 = (*(a4 + 120))(a3, a4);
    v12 = v91;
    if (v38 < -128)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v22 = -128;
  v99 = -128;
  v23 = v14;
  v24 = *(a4 + 96);
  v25 = lazy protocol witness table accessor for type Int and conformance Int(v19, v20, v21);
  v26 = v96;
  v24(&v99, &type metadata for Int, v25, a3, a4);
  v14 = v23;
  v27 = (*(*(*(a4 + 32) + 8) + 16))(a2, v26, a3);
  (*(v97 + 8))(v26, a3);
  v12 = v91;
  if ((v27 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_49:
  v84 = *v98;
  v85 = v98[1];
  result = specialized _wideMaskedShiftRight<A>(_:_:)(&v99, v85, *v98, 127);
  if ((v22 & 0x8000000000000000) != 0)
  {
    if (v22 <= 0xFFFFFFFFFFFFFF80)
    {
      result = 0;
      v87 = 0;
    }

    else
    {
      v87 = specialized static _Int128.&<< infix(_:_:)(v84, v85, -v22);
      result = v89;
    }
  }

  else
  {
    if (v22 < 0x80)
    {
      result = specialized _wideMaskedShiftRight<A>(_:_:)(&v99, v85, v84, v22);
    }

    v87 = v99;
  }

  v88 = v98;
  *v98 = v87;
  v88[1] = result;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<< infix<A>(_:_:) in conformance _Int128@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v105 = a5;
  v101 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v101, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v100 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v99 = &v96 - v11;
  v107 = *(a3 - 1);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v108 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v103 = &v96 - v14;
  v16 = *a1;
  v15 = a1[1];
  v18 = a4 + 64;
  v17 = *(a4 + 64);
  v19 = v17(a3, a4);
  v106 = v17;
  if (v19)
  {
    v104 = *(a4 + 128);
    v20 = v104(a3, a4);
    if (v20 < 64)
    {
LABEL_3:
      if ((*(a4 + 120))(a3, a4) >= -128)
      {
        goto LABEL_17;
      }

LABEL_15:
      result = specialized _wideMaskedShiftRight<A>(_:_:)(&v109, v15, v16, 127);
LABEL_52:
      v59 = v109;
      goto LABEL_53;
    }

    v109 = -128;
    v37 = *(a4 + 96);
    v38 = lazy protocol witness table accessor for type Int and conformance Int(v20, v21, v22);
    v102 = a4 + 64;
    v39 = v103;
    v37(&v109, &type metadata for Int, v38, a3, a4);
    v40 = v107;
    v41 = (*(*(*(a4 + 32) + 8) + 16))(a2, v39, a3);
    v42 = v39;
    v18 = v102;
    (*(v40 + 8))(v42, a3);
    if (v41)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v23 = v15;
    v24 = v16;
    v25 = v17(a3, a4);
    v26 = *(a4 + 128);
    v27 = a2;
    v28 = v26(a3, a4);
    v104 = v26;
    if (v25)
    {
      v102 = a4 + 64;
      if (v28 <= 64)
      {
        v44 = v100;
        v43 = v101;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v101, a3, v100, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v46 = v99;
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v44, AssociatedConformanceWitness);
        v47 = v103;
        (v43[3])(v46, a3, v43);
        LOBYTE(v43) = (*(*(*(a4 + 32) + 8) + 16))(a2, v47, a3);
        (*(v107 + 8))(v47, a3);
        v18 = v102;
        v16 = v24;
        v15 = v23;
        if (v43)
        {
          goto LABEL_15;
        }

        goto LABEL_3;
      }

      v109 = -128;
      v31 = v23;
      v32 = *(a4 + 96);
      v33 = lazy protocol witness table accessor for type Int and conformance Int(v28, v29, v30);
      v34 = v103;
      v32(&v109, &type metadata for Int, v33, a3, a4);
      v16 = v24;
      v15 = v31;
      v35 = v107;
      a2 = v27;
      v36 = (*(*(*(a4 + 32) + 8) + 16))(v27, v34, a3);
      (*(v35 + 8))(v34, a3);
      v18 = v102;
      if (v36)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v28 >= 64)
      {
        v16 = v24;
        v15 = v23;
        goto LABEL_17;
      }

      v16 = v24;
      v15 = v23;
      if ((*(a4 + 120))(a3, a4) < -128)
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v49 = v106(a3, a4);
  v50 = v104(a3, a4);
  if (v49)
  {
    if (v50 > 64)
    {
      goto LABEL_19;
    }

LABEL_22:
    if ((*(a4 + 120))(a3, a4) > 128)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  if (v50 < 64)
  {
    goto LABEL_22;
  }

LABEL_19:
  v109 = 128;
  v98 = a4 + 128;
  v53 = *(a4 + 96);
  v54 = lazy protocol witness table accessor for type Int and conformance Int(v50, v51, v52);
  v102 = v18;
  v55 = v103;
  v53(&v109, &type metadata for Int, v54, a3, a4);
  v56 = v107;
  v57 = (*(*(*(a4 + 32) + 8) + 16))(v55, a2, a3);
  v58 = v55;
  v18 = v102;
  (*(v56 + 8))(v58, a3);
  if (v57)
  {
    goto LABEL_23;
  }

LABEL_24:
  v97 = v16;
  (*(v107 + 16))(v108, a2, a3);
  if ((v106(a3, a4) & 1) == 0 || v104(a3, a4) < 65)
  {
    goto LABEL_39;
  }

  v60 = v106;
  if ((v106(a3, a4) & 1) == 0)
  {
    v68 = v60(a3, a4);
    v69 = v104(a3, a4);
    if ((v68 & 1) == 0)
    {
      if (v69 >= 64)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    v102 = v18;
    if (v69 <= 64)
    {
      v77 = v100;
      v76 = v101;
      v78 = swift_getAssociatedConformanceWitness(v101, a3, v100, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v79 = v99;
      (*(v78 + 8))(&qword_18071E0A8, 256, v77, v78);
      v80 = v103;
      (v76[3])(v79, a3, v76);
      LOBYTE(v76) = (*(*(*(a4 + 32) + 8) + 16))(v108, v80, a3);
      (*(v107 + 8))(v80, a3);
      if ((v76 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v109 = 0x8000000000000000;
      v72 = *(a4 + 96);
      v73 = lazy protocol witness table accessor for type Int and conformance Int(v69, v70, v71);
      v74 = v103;
      v72(&v109, &type metadata for Int, v73, a3, a4);
      v75 = (*(*(*(a4 + 32) + 8) + 16))(v108, v74, a3);
      (*(v107 + 8))(v74, a3);
      if ((v75 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

LABEL_43:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v61 = v104(a3, a4);
  if (v61 < 64)
  {
LABEL_38:
    (*(a4 + 120))(a3, a4);
    goto LABEL_39;
  }

  v109 = 0x8000000000000000;
  v64 = *(a4 + 96);
  v65 = lazy protocol witness table accessor for type Int and conformance Int(v61, v62, v63);
  v102 = v18;
  v66 = v103;
  v64(&v109, &type metadata for Int, v65, a3, a4);
  v67 = (*(*(*(a4 + 32) + 8) + 16))(v108, v66, a3);
  (*(v107 + 8))(v66, a3);
  if (v67)
  {
    goto LABEL_43;
  }

LABEL_39:
  v81 = v104;
  v82 = v104(a3, a4);
  v83 = v106;
  if (v82 <= 64 && (v81(a3, a4) != 64 || (v83(a3, a4) & 1) != 0))
  {
    goto LABEL_49;
  }

  v84 = v83(a3, a4);
  v85 = v81(a3, a4);
  if (v84)
  {
    if (v85 > 64)
    {
      goto LABEL_42;
    }

LABEL_48:
    (*(a4 + 120))(a3, a4);
    goto LABEL_49;
  }

  if (v85 < 64)
  {
    goto LABEL_48;
  }

LABEL_42:
  v109 = 0x7FFFFFFFFFFFFFFFLL;
  v88 = *(a4 + 96);
  v89 = lazy protocol witness table accessor for type Int and conformance Int(v85, v86, v87);
  v90 = v103;
  v88(&v109, &type metadata for Int, v89, a3, a4);
  v91 = (*(*(*(a4 + 32) + 8) + 16))(v90, v108, a3);
  (*(v107 + 8))(v90, a3);
  if (v91)
  {
    goto LABEL_43;
  }

LABEL_49:
  v92 = v108;
  v93 = (*(a4 + 120))(a3, a4);
  (*(v107 + 8))(v92, a3);
  v94 = v97;
  result = specialized _wideMaskedShiftRight<A>(_:_:)(&v109, v15, v97, 127);
  if ((v93 & 0x8000000000000000) != 0)
  {
    if (v93 > 0xFFFFFFFFFFFFFF80)
    {
      result = specialized _wideMaskedShiftRight<A>(_:_:)(&v109, v15, v94, -v93);
    }

    goto LABEL_52;
  }

  if (v93 < 0x80)
  {
    result = specialized _wideMaskedShiftLeft<A>(_:_:)(&v109, v15, v94, v93);
    goto LABEL_52;
  }

LABEL_23:
  v59 = 0;
  result = 0;
LABEL_53:
  v95 = v105;
  *v105 = v59;
  v95[1] = result;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<<= infix<A>(_:_:) in conformance _Int128(unint64_t *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v98 = a1;
  v94 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v94, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v93 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v92 = &v90 - v9;
  v97 = *(a3 - 1);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v96 = &v90 - v13;
  v14 = *(a4 + 64);
  if (v14(a3, a4))
  {
    v95 = *(a4 + 128);
    v15 = v95(a3, a4);
    if (v15 < 64)
    {
      if ((*(a4 + 120))(a3, a4) > -129)
      {
        goto LABEL_17;
      }

LABEL_16:
      v22 = -128;
      goto LABEL_49;
    }

    v22 = -128;
    v99 = -128;
    v90 = v14;
    v91 = (a4 + 64);
    v28 = v96;
    v29 = *(a4 + 96);
    v30 = lazy protocol witness table accessor for type Int and conformance Int(v15, v16, v17);
    v29(&v99, &type metadata for Int, v30, a3, a4);
    v14 = v90;
    v31 = v97;
    v32 = (*(*(*(a4 + 32) + 8) + 16))(a2, v28, a3);
    (*(v31 + 8))(v28, a3);
    if (v32)
    {
      goto LABEL_49;
    }

LABEL_17:
    v39 = v14(a3, a4);
    v40 = a2;
    v41 = v95(a3, a4);
    if (v39)
    {
      if (v41 > 64)
      {
        goto LABEL_19;
      }
    }

    else if (v41 >= 64)
    {
LABEL_19:
      v22 = 128;
      v99 = 128;
      v90 = (a4 + 128);
      v91 = v12;
      v44 = *(a4 + 96);
      v45 = lazy protocol witness table accessor for type Int and conformance Int(v41, v42, v43);
      v46 = v96;
      v44(&v99, &type metadata for Int, v45, a3, a4);
      v47 = v91;
      v48 = (*(*(*(a4 + 32) + 8) + 16))(v46, v40, a3);
      v49 = v46;
      v12 = v47;
      (*(v97 + 8))(v49, a3);
      if (v48)
      {
        goto LABEL_49;
      }

      goto LABEL_24;
    }

    if ((*(a4 + 120))(a3, a4) > 128)
    {
      v22 = 128;
      goto LABEL_49;
    }

LABEL_24:
    (*(v97 + 16))(v12, v40, a3);
    v50 = v14(a3, a4);
    v51 = v95;
    if ((v50 & 1) == 0 || v95(a3, a4) < 65)
    {
      goto LABEL_38;
    }

    if (v14(a3, a4))
    {
      v52 = v51(a3, a4);
      if (v52 >= 64)
      {
        v99 = 0x8000000000000000;
        v91 = v12;
        v55 = *(a4 + 96);
        v56 = lazy protocol witness table accessor for type Int and conformance Int(v52, v53, v54);
        v57 = v96;
        v55(&v99, &type metadata for Int, v56, a3, a4);
        v51 = v95;
        v58 = v97;
        v12 = v91;
        v59 = (*(*(*(a4 + 32) + 8) + 16))(v91, v57, a3);
        (*(v58 + 8))(v57, a3);
        if (v59)
        {
          goto LABEL_42;
        }

LABEL_38:
        if (v51(a3, a4) <= 64 && (v51(a3, a4) != 64 || (v14(a3, a4) & 1) != 0))
        {
          goto LABEL_48;
        }

        v76 = v14(a3, a4);
        v77 = v51(a3, a4);
        if (v76)
        {
          if (v77 > 64)
          {
            goto LABEL_41;
          }
        }

        else if (v77 >= 64)
        {
LABEL_41:
          v99 = 0x7FFFFFFFFFFFFFFFLL;
          v80 = v96;
          v81 = *(a4 + 96);
          v82 = lazy protocol witness table accessor for type Int and conformance Int(v77, v78, v79);
          v81(&v99, &type metadata for Int, v82, a3, a4);
          v83 = (*(*(*(a4 + 32) + 8) + 16))(v80, v12, a3);
          (*(v97 + 8))(v80, a3);
          if (v83)
          {
            goto LABEL_42;
          }

          goto LABEL_48;
        }

        (*(a4 + 120))(a3, a4);
LABEL_48:
        v22 = (*(a4 + 120))(a3, a4);
        (*(v97 + 8))(v12, a3);
        goto LABEL_49;
      }

LABEL_37:
      (*(a4 + 120))(a3, a4);
      goto LABEL_38;
    }

    v60 = v14(a3, a4);
    v61 = v51;
    v62 = v60;
    v63 = v61(a3, a4);
    if ((v62 & 1) == 0)
    {
      v51 = v95;
      if (v63 >= 64)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    if (v63 <= 64)
    {
      v71 = v93;
      v72 = v94;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v94, a3, v93, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v74 = v92;
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v71, AssociatedConformanceWitness);
      v75 = v96;
      (v72[3])(v74, a3, v72);
      LOBYTE(v71) = (*(*(*(a4 + 32) + 8) + 16))(v12, v75, a3);
      (*(v97 + 8))(v75, a3);
      v51 = v95;
      if ((v71 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v99 = 0x8000000000000000;
      v91 = v12;
      v66 = *(a4 + 96);
      v67 = lazy protocol witness table accessor for type Int and conformance Int(v63, v64, v65);
      v68 = v96;
      v66(&v99, &type metadata for Int, v67, a3, a4);
      v69 = v97;
      v12 = v91;
      v70 = (*(*(*(a4 + 32) + 8) + 16))(v91, v68, a3);
      (*(v69 + 8))(v68, a3);
      v51 = v95;
      if ((v70 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

LABEL_42:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v18 = v14(a3, a4);
  v95 = *(a4 + 128);
  v19 = v95(a3, a4);
  if ((v18 & 1) == 0)
  {
    if (v19 < 64 && (*(a4 + 120))(a3, a4) < -128)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v91 = v12;
  if (v19 <= 64)
  {
    v33 = v93;
    v34 = v94;
    v35 = swift_getAssociatedConformanceWitness(v94, a3, v93, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v36 = v92;
    (*(v35 + 8))(&qword_18071E0A8, 256, v33, v35);
    v37 = v96;
    (v34[3])(v36, a3, v34);
    LOBYTE(v33) = (*(*(*(a4 + 32) + 8) + 16))(a2, v37, a3);
    (*(v97 + 8))(v37, a3);
    if (v33)
    {
      goto LABEL_16;
    }

    v38 = (*(a4 + 120))(a3, a4);
    v12 = v91;
    if (v38 < -128)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v22 = -128;
  v99 = -128;
  v23 = v14;
  v24 = *(a4 + 96);
  v25 = lazy protocol witness table accessor for type Int and conformance Int(v19, v20, v21);
  v26 = v96;
  v24(&v99, &type metadata for Int, v25, a3, a4);
  v14 = v23;
  v27 = (*(*(*(a4 + 32) + 8) + 16))(a2, v26, a3);
  (*(v97 + 8))(v26, a3);
  v12 = v91;
  if ((v27 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_49:
  v84 = *v98;
  v85 = v98[1];
  result = specialized _wideMaskedShiftRight<A>(_:_:)(&v99, v85, *v98, 127);
  if ((v22 & 0x8000000000000000) != 0)
  {
    if (v22 > 0xFFFFFFFFFFFFFF80)
    {
      result = specialized _wideMaskedShiftRight<A>(_:_:)(&v99, v85, v84, -v22);
    }

    v87 = v99;
  }

  else if (v22 >= 0x80)
  {
    result = 0;
    v87 = 0;
  }

  else
  {
    v87 = specialized static _Int128.&<< infix(_:_:)(v84, v85, v22);
    result = v88;
  }

  v89 = v98;
  *v98 = v87;
  v89[1] = result;
  return result;
}

Swift::UInt64 protocol witness for BinaryInteger.quotientAndRemainder(dividingBy:) in conformance _Int128(Swift::UInt64 *a1, Swift::UInt64 *a2, Swift::_Int128 *a3)
{
  v6 = _Int128.quotientAndRemainder(dividingBy:)(*a3);
  *a1 = v6.quotient.low;
  a1[1] = v6.quotient.high;
  *a2 = v6.remainder.low;
  a2[1] = v6.remainder.high;
  return v6.quotient.low;
}

uint64_t protocol witness for BinaryInteger.signum() in conformance _Int128@<X0>(uint64_t *a1@<X8>)
{
  result = specialized BinaryInteger.signum()(*v1, v1[1]);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void protocol witness for LosslessStringConvertible.init(_:) in conformance _Int128(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
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
    goto LABEL_55;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v43[0] = a1;
      v43[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v19 = specialized closure #1 in FixedWidthInteger.init<A>(_:radix:)(v43, v5, 10);
      high = v21;
      v23 = v22 & 1;
LABEL_52:
      v44 = v23;
LABEL_53:
      v38 = v44;
      goto LABEL_54;
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
      v8 = _StringObject.sharedUTF8.getter(a1, a2);
      v6 = v42;
      if (v42 > 0)
      {
LABEL_9:
        v9 = *v8;
        if (v9 == 43)
        {
          v24 = specialized Collection.subscript.getter(1, v8, v6);
          v28 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v24, v25, v26, v27);
          if (v29)
          {
            v30 = v28;
            if (v28)
            {
              v31 = v29;
              while (1)
              {
                v32 = *v30 - 48;
                if (v32 >= 0xA)
                {
                  goto LABEL_51;
                }

                v46 = _Int128.multipliedReportingOverflow(by:)(0xAuLL);
                v19 = v46.partialValue.low + v32;
                v34 = __CFADD__(v46.partialValue.low, v32);
                if (v46.partialValue.high == 0x7FFFFFFFFFFFFFFFLL)
                {
                  if ((v34 | *&v46.overflow))
                  {
                    goto LABEL_51;
                  }

                  high = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  high = v46.partialValue.high;
                  if (v34)
                  {
                    if (v46.overflow)
                    {
                      goto LABEL_51;
                    }

                    high = v46.partialValue.high + 1;
                  }

                  else if (v46.overflow)
                  {
                    goto LABEL_51;
                  }
                }

                ++v30;
                if (!--v31)
                {
                  goto LABEL_59;
                }
              }
            }

            goto LABEL_58;
          }
        }

        else
        {
          if (v9 != 45)
          {
            while (1)
            {
              v35 = *v8 - 48;
              if (v35 >= 0xA)
              {
                goto LABEL_51;
              }

              v47 = _Int128.multipliedReportingOverflow(by:)(0xAuLL);
              v19 = v47.partialValue.low + v35;
              v37 = __CFADD__(v47.partialValue.low, v35);
              if (v47.partialValue.high == 0x7FFFFFFFFFFFFFFFLL)
              {
                if ((v37 | *&v47.overflow))
                {
                  goto LABEL_51;
                }

                high = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                high = v47.partialValue.high;
                if (v37)
                {
                  if (v47.overflow)
                  {
                    goto LABEL_51;
                  }

                  high = v47.partialValue.high + 1;
                }

                else if (v47.overflow)
                {
                  goto LABEL_51;
                }
              }

              ++v8;
              if (!--v6)
              {
                goto LABEL_59;
              }
            }
          }

          v10 = specialized Collection.subscript.getter(1, v8, v6);
          v14 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v10, v11, v12, v13);
          if (v15)
          {
            v16 = v14;
            if (v14)
            {
              v17 = v15;
              while (1)
              {
                v18 = *v16 - 48;
                if (v18 >= 0xA)
                {
                  break;
                }

                v45 = _Int128.multipliedReportingOverflow(by:)(0xAuLL);
                v19 = v45.partialValue.low - v18;
                if (v45.partialValue.high == 0x8000000000000000)
                {
                  if (v45.overflow || v45.partialValue.low < v18)
                  {
                    break;
                  }
                }

                else if (v45.overflow)
                {
                  break;
                }

                high = (*&v45.partialValue - v18) >> 64;
                ++v16;
                if (!--v17)
                {
                  goto LABEL_59;
                }
              }

LABEL_51:
              v19 = 0;
              high = 0;
              v23 = 1;
              goto LABEL_52;
            }

LABEL_58:
            high = 0;
            v19 = 0;
LABEL_59:
            v44 = 0;
            goto LABEL_53;
          }
        }

        v19 = 0;
        high = 0;
        v44 = 1;
        goto LABEL_53;
      }
    }

    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v19 = specialized _parseInteger<A, B>(ascii:radix:)(a1, a2, 10);
  high = v40;
  v38 = v41;
LABEL_54:
  a2;
  if ((v38 & 1) == 0)
  {
    v39 = 0;
    goto LABEL_57;
  }

LABEL_55:
  v19 = 0;
  high = 0;
  v39 = 1;
LABEL_57:
  *a3 = v19;
  *(a3 + 8) = high;
  *(a3 + 16) = v39;
}

unint64_t *protocol witness for Strideable.distance(to:) in conformance _Int128@<X0>(unint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = result[1];
  v5 = *v2;
  v6 = v2[1];
  if (v6)
  {
    if (v4)
    {
      if (v4 < 0 != v6 < 0)
      {
        if ((v6 & 0x8000000000000000) == 0)
        {
          if ((v4 & 0x8000000000000000) == 0)
          {
            v7 = __CFADD__(v5, v3);
            v8 = v5 + v3;
            if (v7)
            {
              goto LABEL_57;
            }

            v9 = 0;
            v10 = v6 + v4;
LABEL_46:
            v17 = 0;
            goto LABEL_49;
          }

          goto LABEL_10;
        }

        v7 = v5 == 0;
        v5 = -v5;
        if (v7)
        {
          v6 = -v6;
        }

        else
        {
          v6 = ~v6;
        }

        v9 = 1;
        if (v4 < 0)
        {
          goto LABEL_11;
        }

LABEL_39:
        v7 = __CFADD__(v5, v3);
        v8 = v5 + v3;
        v16 = v7;
        v7 = __CFADD__(v6, v4);
        v10 = v6 + v4;
        if (!v7)
        {
          if (v10 != -1)
          {
            if (v16)
            {
              v17 = 1;
              goto LABEL_49;
            }

            goto LABEL_46;
          }

          if (!v16)
          {
            v17 = 0;
            v10 = -1;
LABEL_49:
            v18 = v17 + v10;
            v14 = v18 == 0;
            v19 = v18 != 0;
            if (v14)
            {
              v19 = v8 < 0;
            }

            if (!v19)
            {
              if (v9)
              {
                goto LABEL_54;
              }

              v20 = __OFSUB__(0, v8);
              v8 = -v8;
              if (!v20)
              {
                goto LABEL_54;
              }

              __break(1u);
            }

LABEL_57:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }
        }

LABEL_20:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    else if (v6 < 0)
    {
      v4 = 0;
      v7 = v5 == 0;
      v5 = -v5;
      if (v7)
      {
        v6 = -v6;
      }

      else
      {
        v6 = ~v6;
      }

      v9 = 1;
      goto LABEL_39;
    }
  }

  else if (v4 < 0)
  {
    v6 = 0;
LABEL_10:
    v9 = 0;
LABEL_11:
    v7 = v3 == 0;
    v3 = -v3;
    v4 = -(v4 + !v7);
    goto LABEL_39;
  }

  v11 = v4 - v6;
  v12 = __OFSUB__(v4, v6);
  v7 = v3 >= v5;
  v8 = v3 - v5;
  if (v7)
  {
    if (v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v11 == 0x8000000000000000)
    {
      LOBYTE(v12) = 1;
    }

    if (v12)
    {
      goto LABEL_20;
    }

    --v11;
  }

  v13 = v8 >= 0;
  if (v11 != -1)
  {
    v13 = v11 < -1;
  }

  if (v13)
  {
    goto LABEL_57;
  }

  v14 = v11 == 0;
  v15 = v11 > 0;
  if (v14)
  {
    v15 = v8 < 0;
  }

  if (v15)
  {
    goto LABEL_57;
  }

LABEL_54:
  *a2 = v8;
  return result;
}

uint64_t *protocol witness for Strideable.advanced(by:) in conformance _Int128@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  v4 = v2[1];
  v5 = __CFADD__(*v2, *result);
  v6 = __OFADD__(v4, v3 >> 63);
  v7 = v4 + (v3 >> 63);
  if (v6 || (v5 ? (v8 = v7 == 0x7FFFFFFFFFFFFFFFLL) : (v8 = 0), v8))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a2 = *v2 + *result;
  a2[1] = v7 + v5;
  return result;
}

uint64_t < infix<A, B, C>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v39 = a4;
  v40 = a5;
  v38 = a3;
  v41 = a10;
  v42 = a6;
  swift_getTupleTypeMetadata3(0, a7, a8, a9, 0, 0);
  v17 = v16;
  v43 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v34 - v21;
  v23 = *(a7 - 8);
  v36 = *(v23 + 16);
  v37 = v23 + 16;
  v36(&v34 - v21, a1, a7);
  v24 = *(*(a8 - 8) + 16);
  v35 = *(v17 + 48);
  v24(&v22[v35], a2, a8);
  v25 = *(*(a9 - 8) + 16);
  v34 = *(v17 + 64);
  v25(&v22[v34], v38, a9);
  v36(v20, v39, a7);
  v26 = &v20[*(v17 + 48)];
  v27 = v40;
  v39 = *(v17 + 48);
  v40 = a8;
  v24(v26, v27, a8);
  v28 = *(v17 + 64);
  v25(&v20[v28], v42, a9);
  v29 = v41;
  if ((*(*(v41 + 8) + 8))(v22, v20, a7))
  {
    v30 = < infix<A, B>(_:_:)(&v22[v35], &v22[v34], &v20[v39], &v20[v28], v40, a9, a11, a12);
  }

  else
  {
    v30 = (*(v29 + 16))(v22, v20, a7, v29);
  }

  v31 = v30;
  v32 = *(v43 + 8);
  v32(v20, v17);
  v32(v22, v17);
  return v31 & 1;
}

uint64_t > infix<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a8;
  v28 = a2;
  v30 = a7;
  v31 = a4;
  v29 = a3;
  swift_getTupleTypeMetadata2(0, a5, a6, 0, 0);
  v12 = v11;
  v32 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v27 - v16;
  v18 = *(*(a5 - 8) + 16);
  v18(&v27 - v16, a1, a5);
  v19 = *(v12 + 48);
  v20 = *(*(a6 - 8) + 16);
  v20(&v17[v19], v28, a6);
  v18(v15, v29, a5);
  v21 = v30;
  v22 = *(v12 + 48);
  v20(&v15[v22], v31, a6);
  if ((*(*(v21 + 8) + 8))(v17, v15, a5))
  {
    v23 = (*(v27 + 40))(&v17[v19], &v15[v22], a6);
  }

  else
  {
    v23 = (*(v21 + 40))(v17, v15, a5);
  }

  v24 = v23;
  v25 = *(v32 + 8);
  v25(v15, v12);
  v25(v17, v12);
  return v24 & 1;
}

uint64_t >= infix<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a8;
  v28 = a2;
  v30 = a7;
  v31 = a4;
  v29 = a3;
  swift_getTupleTypeMetadata2(0, a5, a6, 0, 0);
  v12 = v11;
  v32 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v27 - v16;
  v18 = *(*(a5 - 8) + 16);
  v18(&v27 - v16, a1, a5);
  v19 = *(v12 + 48);
  v20 = *(*(a6 - 8) + 16);
  v20(&v17[v19], v28, a6);
  v18(v15, v29, a5);
  v21 = v30;
  v22 = *(v12 + 48);
  v20(&v15[v22], v31, a6);
  if ((*(*(v21 + 8) + 8))(v17, v15, a5))
  {
    v23 = (*(v27 + 32))(&v17[v19], &v15[v22], a6);
  }

  else
  {
    v23 = (*(v21 + 32))(v17, v15, a5);
  }

  v24 = v23;
  v25 = *(v32 + 8);
  v25(v15, v12);
  v25(v17, v12);
  return v24 & 1;
}

uint64_t *protocol witness for static SignedNumeric.- prefix(_:) in conformance _Int128@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  v2 = result[1];
  v4 = __OFSUB__(0, v2);
  v5 = -v2;
  v6 = v4;
  v7 = v3 == 0;
  v8 = -v3;
  if (v7)
  {
    if (v6)
    {
      goto LABEL_8;
    }

    *a2 = v8;
    a2[1] = v5;
  }

  else
  {
    if (v5 == 0x8000000000000000)
    {
      LOBYTE(v6) = 1;
    }

    if (v6)
    {
LABEL_8:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    *a2 = v8;
    a2[1] = v5 - 1;
  }

  return result;
}

void protocol witness for SignedNumeric.negate() in conformance _Int128()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = __OFSUB__(0, v1);
  v4 = -v1;
  v5 = v3;
  v6 = v2 == 0;
  v7 = -v2;
  if (v6)
  {
    if (v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v4 == 0x8000000000000000)
    {
      LOBYTE(v5) = 1;
    }

    if (v5)
    {
LABEL_8:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    --v4;
  }

  *v0 = v7;
  v0[1] = v4;
}

char *UnsafeMutableBufferPointer._copyContents(initializing:)(char *__dst, uint64_t a2, char *__src, uint64_t a4, unint64_t *a5)
{
  v5 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = a4;
    }

    UnsafeMutablePointer.initialize(from:count:)(__src, v6, __dst, a5);
    v5 += *(*(a5 - 1) + 72) * v6;
  }

  return v5;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance UnsafeMutableBufferPointer<A>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UnsafeMutableBufferPointer<A>, a1, a3);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

Swift::Int __swiftcall UnsafeMutableBufferPointer.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::Void __swiftcall UnsafeMutableBufferPointer.formIndex(after:)(Swift::Int *after)
{
  if (__OFADD__(*after, 1))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  ++*after;
}

Swift::Int __swiftcall UnsafeMutableBufferPointer.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::Void __swiftcall UnsafeMutableBufferPointer.formIndex(before:)(Swift::Int *before)
{
  if (__OFSUB__(*before, 1))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  --*before;
}

Swift::Int_optional __swiftcall UnsafeMutableBufferPointer.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  v3 = specialized UnsafeBufferPointer.index(_:offsetBy:limitedBy:)(_, offsetBy, limitedBy);
  v5 = v4 & 1;
  result.value = v3;
  result.is_nil = v5;
  return result;
}

Swift::Void __swiftcall UnsafeMutableBufferPointer.swapAt(_:_:)(Swift::Int a1, Swift::Int a2)
{
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4 != v5)
  {
    if (v4 < 0 || v5 < 0 || v7 <= v4 || v7 <= v5)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (!v6)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v11 = *(v3 + 32);
    v12 = *(v3 + 72);
    v13 = (v6 + v12 * v4);
    v14 = (v6 + v12 * v5);
    v15 = v8;
    v11(v10, v13, v8);
    UnsafeMutablePointer.moveInitialize(from:count:)(v14, 1, v13, v15);
    v11(v14, v10, v15);
  }
}

uint64_t key path getter for UnsafeMutableBufferPointer.subscript(_:) : <A>UnsafeMutableBufferPointer<A>A@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  if (*a2 < 0 || v4 >= a1[1])
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = *(*(a2 + a3 - 8) - 8);
  v6 = *(v5 + 16);
  v7 = *a1 + *(v5 + 72) * v4;

  return v6(a4, v7);
}

uint64_t key path setter for UnsafeMutableBufferPointer.subscript(_:) : <A>UnsafeMutableBufferPointer<A>A(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a3;
  if (*a3 < 0 || v4 >= a2[1])
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = *(*(a3 + a4 - 8) - 8);
  v7 = *(v6 + 24);
  v8 = *a2 + *(v6 + 72) * v4;

  return v7(v8, a1);
}

uint64_t UnsafeMutableBufferPointer.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a1, v13);
  if (a2 < 0 || a4 <= a2)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v10 + 8))(a1, a5);
  return (*(v10 + 40))(a3 + *(v10 + 72) * a2, v12, a5);
}

{
  return (*(*(a5 - 8) + 40))(a3 + *(*(a5 - 8) + 72) * a2, a1, a5);
}

uint64_t key path setter for UnsafeMutableBufferPointer.subscript(_unchecked:) : <A>UnsafeMutableBufferPointer<A>A(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = UnsafeMutableBufferPointer.subscript.modify();
  (*(*(v5 - 8) + 24))(v7, a1, v5);
  return (v6)(&v9, 0);
}

uint64_t UnsafeMutableBufferPointer._failEarlyRangeCheck(_:bounds:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  return UnsafeMutableBufferPointer._failEarlyRangeCheck(_:bounds:)(result, a2, a3);
}

{
  if (result < a2 || result >= a3)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t key path getter for UnsafeMutableBufferPointer.subscript(_:) : <A>UnsafeMutableBufferPointer<A>A@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = UnsafeMutableBufferPointer.subscript.getter(*a2, a2[1], *a1, a1[1]);
  *a3 = result;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;
  return result;
}

char *UnsafeMutableBufferPointer.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t *a9)
{
  if (a5 < 0 || a8 < a6)
  {
    goto LABEL_14;
  }

  v10 = (a6 - a5);
  if (__OFSUB__(a6, a5))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = type metadata accessor for UnsafeMutableBufferPointer(255, a9, a3, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UnsafeMutableBufferPointer<A>, v15, v16);
  v19 = type metadata accessor for Slice(0, v15, WitnessTable, v18);
  v21 = swift_getWitnessTable(protocol conformance descriptor for Slice<A>, v19, v20);
  result = Collection.count.getter(v19, v21);
  if (v10 != result)
  {
    goto LABEL_14;
  }

  if (a1 == a2)
  {
    return result;
  }

  if (!a7 || !a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_14:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return UnsafeMutablePointer.assign(from:count:)((a3 + *(*(a9 - 1) + 72) * a1), a2 - a1, (a7 + *(*(a9 - 1) + 72) * a5), a9);
}

void (*UnsafeMutableBufferPointer.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t **a1)
{
  if (swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc(0x48, 0x1D51uLL);
  }

  else
  {
    v12 = malloc(0x48uLL);
  }

  *a1 = v12;
  v12[7] = a5;
  v12[8] = a6;
  v12[5] = a3;
  v12[6] = a4;
  v12[4] = a2;
  if (a2 < 0 || a5 < a3)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *v12 = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  return UnsafeMutableBufferPointer.subscript.modify;
}

void UnsafeMutableBufferPointer.subscript.modify(uint64_t **a1)
{
  v1 = *a1;
  UnsafeMutableBufferPointer.subscript.setter(**a1, v1[1], v1[2], (*a1)[3], (*a1)[4], (*a1)[5], (*a1)[6], (*a1)[7], (*a1)[8]);

  free(v1);
}

uint64_t UnsafeMutableBufferPointer._withUnsafeMutableBufferPointerIfSupported<A>(_:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  result = a1(v3);
  if (!v4)
  {
    return (*(*(a2 - 8) + 56))(a3, 0, 1, a2);
  }

  return result;
}

BOOL UnsafeMutableBufferPointer.withContiguousMutableStorageIfAvailable<A>(_:)@<W0>(void (*a1)(uint64_t *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = v4;
  v11 = *v4;
  v10 = v4[1];
  a1(v4);
  if (v5)
  {
    v14 = v4[1];
    v15 = *(a2 + 16);
    v31 = *v6;
    v32 = v11;
    v16 = type metadata accessor for UnsafeMutablePointer(255, v15, v12, v13);
    v19 = type metadata accessor for Optional(0, v16, v17, v18);
    v30 = &protocol witness table for UnsafeMutablePointer<A>;
    v20 = &v30;
  }

  else
  {
    (*(*(a3 - 8) + 56))(a4, 0, 1, a3);
    v14 = v4[1];
    v21 = *(a2 + 16);
    v31 = *v6;
    v32 = v11;
    v24 = type metadata accessor for UnsafeMutablePointer(255, v21, v22, v23);
    v19 = type metadata accessor for Optional(0, v24, v25, v26);
    v29 = &protocol witness table for UnsafeMutablePointer<A>;
    v20 = &v29;
  }

  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <A> A?, v19, v20);
  result = specialized == infix<A, B>(_:_:)(&v32, v10, &v31, v14, v19, WitnessTable);
  if (!result)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance UnsafeMutableBufferPointer<A>(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x28, 0x1160uLL);
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = UnsafeMutableBufferPointer.subscript.read(v7, *a2, *v3, v3[1], *(a3 + 16));
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t (*UnsafeMutableBufferPointer.subscript.read(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = *(a5 - 8);
  v11 = v10;
  *a1 = a5;
  a1[1] = v10;
  v12 = *(v10 + 64);
  if (swift_coroFrameAlloc)
  {
    v13 = swift_coroFrameAlloc(v12, 0xD019uLL);
  }

  else
  {
    v13 = malloc(v12);
  }

  a1[2] = v13;
  if (a2 < 0 || a4 <= a2)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v11 + 16))(v13, a3 + *(v11 + 72) * a2, a5);
  return _ArrayBuffer.subscript.read;
}

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance UnsafeMutableBufferPointer<A>(void *result, void *a2)
{
  return protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance UnsafeMutableBufferPointer<A>(result, a2);
}

{
  return protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance UnsafeMutableBufferPointer<A>(result, a2);
}

{
  if (*result < *a2 || *result >= a2[1])
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

{
  if (*result < *a2 || a2[1] < result[1])
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

void *protocol witness for Collection.index(after:) in conformance UnsafeMutableBufferPointer<A>@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a2 = *result + 1;
  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance UnsafeMutableBufferPointer<A>(void *result)
{
  if (__OFADD__(*result, 1))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  ++*result;
  return result;
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance UnsafeMutableBufferPointer<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v9;
  v12 = *v3;
  v11 = v3[1];
  (*(v6 + 16))(v8, a1, v5);
  if (v10 < 0 || v10 >= v11)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v6 + 8))(a1, v5);
  return (*(v6 + 40))(v12 + *(v6 + 72) * v10, v8, v5);
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance UnsafeMutableBufferPointer<A>(uint64_t a1, void *a2))()
{
  if ((*a2 & 0x8000000000000000) != 0 || *a2 >= *(v2 + 8))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

void (*protocol witness for MutableCollection.subscript.modify in conformance UnsafeMutableBufferPointer<A>(void *a1, __int128 *a2, uint64_t a3))(uint64_t **a1)
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x48, 0x7A9uLL);
  }

  else
  {
    v7 = malloc(0x48uLL);
  }

  *a1 = v7;
  v8 = *a2;
  v7[2] = *a2;
  v9 = *v3;
  *(v7 + 6) = *v3;
  v10 = v3[1];
  *(v7 + 7) = v10;
  *(v7 + 8) = *(a3 + 16);
  if ((v8 & 0x8000000000000000) != 0 || v10 < *(&v8 + 1))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *&v11 = v9;
  *(&v11 + 1) = v10;
  *v7 = v8;
  v7[1] = v11;
  return UnsafeMutableBufferPointer.subscript.modify;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance UnsafeMutableBufferPointer<A>@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a2 = *result - 1;
  return result;
}

void *protocol witness for BidirectionalCollection.formIndex(before:) in conformance UnsafeMutableBufferPointer<A>(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  --*result;
  return result;
}

void *_sSryxGSlsSl5index_8offsetBy5IndexQzAE_SitFTW_0@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, a2))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = *result + a2;
  return result;
}

uint64_t _sSryxGSlsSl5index_8offsetBy07limitedC05IndexQzSgAF_SiAFtFTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized UnsafeBufferPointer.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t _sSryxGSlsSl8distance4from2toSi5IndexQz_AFtFTW_0(void *a1, void *a2)
{
  v2 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (v2)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer.update<A>(fromContentsOf:)(char *a1, int64_t __len, char *a3, int64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  v4 = __len;
  if (a4 < __len)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, __len, a3);
  return v4;
}

unint64_t UnsafeMutableBufferPointer.debugDescription.getter(unint64_t a1, uint64_t a2, unint64_t i)
{
  v7 = _StringGuts.init(_initialCapacity:)(22);
  countAndFlagsBits = v7;
  object = v8;
  v289._countAndFlagsBits = v7;
  v289._object = v8;
  v11 = HIBYTE(v8) & 0xF;
  v12 = v7 & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v13 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v13 || (v7 & ~v8 & 0x2000000000000000) != 0)
  {
    if ((v8 & 0x2000000000000000) == 0 || v11 > 7)
    {
      0xE800000000000000;
      if ((object & 0x1000000000000000) != 0)
      {
        goto LABEL_309;
      }

      v22 = v13 + 8;
      if (!__OFADD__(v13, 8))
      {
        goto LABEL_13;
      }

LABEL_311:
      __break(1u);
      goto LABEL_312;
    }

    v14 = 8 * HIBYTE(v8);
    v15 = ((-255 << (v14 & 0x38)) - 1) & v7 | (40 << (v14 & 0x38));
    v16 = (v14 + 8) & 0x38;
    v17 = (-255 << v16) - 1;
    v18 = 115 << v16;
    if (v11 >= 7)
    {
      v20 = v17 & v8 | v18;
      v19 = 8;
    }

    else
    {
      v15 = v17 & v15 | v18;
      if (v11 != 6)
      {
        v15 = ((-255 << ((v14 + 16) & 0x38)) - 1) & v15 | (116 << ((v14 + 16) & 0x38));
        if (v11 < 5)
        {
          v15 = ((-255 << ((v14 + 24) & 0x38)) - 1) & v15 | (97 << ((v14 + 24) & 0x38));
          if (v11 != 4)
          {
            v15 = ((0xFFFFFF0100000000 << (8 * v11)) - 1) & v15 | (0x7200000000 << (8 * v11));
            if (v11 < 3)
            {
              v15 = ((-255 << ((v14 + 40) & 0x38)) - 1) & v15 | (116 << ((v14 + 40) & 0x38));
              if (v11 != 2)
              {
                v15 = ((0xFF01000000000000 << (8 * v11)) - 1) & v15 | (0x3A000000000000 << (8 * v11));
                if (!v11)
                {
                  v46 = v8;
                  v15 = v15 & 0xFFFFFFFFFFFFFFLL | 0x2000000000000000;
LABEL_44:
                  v8;
                  0xE800000000000000;
                  v47 = 0xA000000000000000;
                  if (!(v15 & 0x8080808080808080 | v46 & 0x80808080808080))
                  {
                    v47 = 0xE000000000000000;
                  }

                  v289._countAndFlagsBits = v15;
                  v289._object = (v47 & 0xFF00000000000000 | (v11 << 56) | v46 & 0xFFFFFFFFFFFFFFLL | 0x800000000000000);
                  if (!a1)
                  {
                    goto LABEL_36;
                  }

                  goto LABEL_47;
                }

                v45 = v8;
LABEL_43:
                v46 = ((-255 << ((v14 + 56) & 0x38)) - 1) & v45 | (32 << ((v14 + 56) & 0x38));
                goto LABEL_44;
              }

              v44 = 0;
              v43 = v8;
LABEL_42:
              v45 = ((-255 << v44) - 1) & v43 | (58 << v44);
              goto LABEL_43;
            }

            v42 = 0;
            v41 = v8;
LABEL_41:
            v43 = ((-255 << v42) - 1) & v41 | (116 << v42);
            v44 = (v14 + 48) & 0x38;
            goto LABEL_42;
          }

          v40 = 0;
          v39 = v8;
LABEL_40:
          v41 = ((-255 << v40) - 1) & v39 | (114 << v40);
          v42 = (v14 + 40) & 0x38;
          goto LABEL_41;
        }

        v38 = 0;
        v37 = v8;
LABEL_39:
        v39 = ((-255 << v38) - 1) & v37 | (97 << v38);
        v40 = v14 & 0x38 ^ 0x20;
        goto LABEL_40;
      }

      v19 = 0;
      v20 = v8;
    }

    v37 = ((-255 << v19) - 1) & v20 | (116 << v19);
    v38 = (v14 + 24) & 0x38;
    goto LABEL_39;
  }

  v8;
  v289._countAndFlagsBits = 0x203A747261747328;
  v289._object = 0xE800000000000000;
  if (!a1)
  {
    goto LABEL_36;
  }

LABEL_47:
  *&v288 = a1;
  v48 = type metadata accessor for UnsafeMutablePointer(0, i, v35, v36);
  a1 = String.init<A>(describing:)(&v288, v48);
  for (i = v49; ; i = 0xE300000000000000)
  {
    countAndFlagsBits = v289._countAndFlagsBits;
    object = v289._object;
    v50 = (v289._object >> 56) & 0xF;
    v4 = v289._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v289._object & 0x2000000000000000) != 0)
    {
      v51 = (v289._object >> 56) & 0xF;
    }

    else
    {
      v51 = v289._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (!v51 && (v289._countAndFlagsBits & ~v289._object & 0x2000000000000000) == 0)
    {
      v289._object;
      v289._countAndFlagsBits = a1;
      v289._object = i;
      goto LABEL_161;
    }

    v52 = (i & 0x2000000000000000) == 0;
    v53 = HIBYTE(i) & 0xF;
    if ((v289._object & 0x2000000000000000) == 0)
    {
      v54 = a1 & 0xFFFFFFFFFFFFLL;
      v3 = HIBYTE(i) & 0xF;
      if ((i & 0x2000000000000000) != 0)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }

    if ((i & 0x2000000000000000) == 0)
    {
      v54 = a1 & 0xFFFFFFFFFFFFLL;
      v52 = 1;
LABEL_57:
      v3 = v54;
      goto LABEL_58;
    }

    v85 = v50 + v53;
    if (v50 + v53 < 0x10)
    {
      if (v53)
      {
        v115 = 0;
        v116 = 0;
        v117 = 8 * v50;
        v118 = 8 * v53;
        v119 = v289._object;
        do
        {
          v120 = i >> (v115 & 0x38);
          if (v116 < 8)
          {
            v120 = a1 >> v115;
          }

          v121 = (v120 << (v117 & 0x38)) | ((-255 << (v117 & 0x38)) - 1) & v119;
          v122 = (v120 << v117) | ((-255 << v117) - 1) & countAndFlagsBits;
          if (v50 <= 7)
          {
            countAndFlagsBits = v122;
          }

          else
          {
            v119 = v121;
          }

          ++v50;
          v117 += 8;
          v115 += 8;
          ++v116;
        }

        while (v118 != v115);
      }

      else
      {
        v119 = v289._object;
      }

      v289._object;
      i;
      v123 = 0xA000000000000000;
      if (!(countAndFlagsBits & 0x8080808080808080 | v119 & 0x80808080808080))
      {
        v123 = 0xE000000000000000;
      }

      v97 = (v123 & 0xFF00000000000000 | (v85 << 56) | v119 & 0xFFFFFFFFFFFFFFLL);
LABEL_160:
      v289._countAndFlagsBits = countAndFlagsBits;
      v289._object = v97;
      goto LABEL_161;
    }

    v52 = 0;
    v54 = a1 & 0xFFFFFFFFFFFFLL;
    v3 = HIBYTE(i) & 0xF;
LABEL_58:
    v284 = v52;
    v283 = v54;
    if ((i & 0x1000000000000000) != 0)
    {
      break;
    }

    i;
    v55 = v3;
    if ((object & 0x1000000000000000) != 0)
    {
      goto LABEL_306;
    }

LABEL_60:
    v56 = __OFADD__(v51, v55);
    v57 = v51 + v55;
    if (!v56)
    {
      goto LABEL_61;
    }

LABEL_308:
    __break(1u);
LABEL_309:
    v250 = String.UTF8View._foreignCount()();
    v22 = v250 + 8;
    if (__OFADD__(v250, 8))
    {
      goto LABEL_311;
    }

LABEL_13:
    v23 = countAndFlagsBits & ~object;
    if ((v23 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(object & 0xFFFFFFFFFFFFFFFLL))
    {
      v24 = _StringGuts.nativeUnusedCapacity.getter(countAndFlagsBits, object);
      if (v25)
      {
        goto LABEL_349;
      }

      if (v22 > 15)
      {
LABEL_24:
        v28 = v23 & 0x2000000000000000;
        v29 = _StringGuts.nativeUnusedCapacity.getter(countAndFlagsBits, object);
        if ((v30 & 1) != 0 || v29 <= 7)
        {
          if (v28)
          {
            swift_isUniquelyReferenced_nonNull_native(object & 0xFFFFFFFFFFFFFFFLL);
          }

          v31 = _StringGuts.nativeCapacity.getter(countAndFlagsBits, object);
          if (v32)
          {
            v33 = 0;
          }

          else
          {
            v33 = v31;
          }

          if (v33 + 0x4000000000000000 < 0)
          {
            goto LABEL_341;
          }

          v34 = 2 * v33;
          if (v34 > v22)
          {
            v22 = v34;
          }

LABEL_34:
          _StringGuts.grow(_:)(v22);
        }

        else if (!v28 || !swift_isUniquelyReferenced_nonNull_native(object & 0xFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_34;
        }

        v288 = xmmword_18071DFB0;
        closure #1 in _StringGuts.append(_:)(&v288, 8uLL, &v289, 1);
        swift_bridgeObjectRelease_n(0xE800000000000000, 2);
        if (a1)
        {
          goto LABEL_47;
        }

        goto LABEL_36;
      }

      if ((object & 0x2000000000000000) == 0)
      {
        if (v24 >= 8)
        {
          goto LABEL_24;
        }

LABEL_19:
        if ((object & 0x1000000000000000) != 0)
        {
          countAndFlagsBits = _StringGuts._foreignConvertedToSmall()(countAndFlagsBits, object);
          v27 = v244;
        }

        else
        {
          if ((countAndFlagsBits & 0x1000000000000000) != 0)
          {
            v26 = ((object & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v26 = _StringObject.sharedUTF8.getter(countAndFlagsBits, object);
            v12 = v268;
          }

          closure #1 in _StringGuts._convertedToSmall()(v26, v12, &v288, v21);
          v27 = *(&v288 + 1);
          countAndFlagsBits = v288;
        }

        goto LABEL_114;
      }
    }

    else
    {
      if (v22 > 15)
      {
        goto LABEL_24;
      }

      if ((object & 0x2000000000000000) == 0)
      {
        goto LABEL_19;
      }
    }

    v27 = object;
LABEL_114:
    v98 = 0x203A747261747328;
    v12 = 0xE800000000000000;
    0xE800000000000000;
    v99._rawBits = 1;
    v100._rawBits = 524289;
    v101._rawBits = _StringGuts.validateScalarRange(_:)(v99, v100, 0x203A747261747328uLL, 0xE800000000000000)._rawBits;
    if (v101._rawBits < 0x10000)
    {
      v101._rawBits |= 3;
    }

    if (v101._rawBits >> 16 || (v102._rawBits & 0xFFFFFFFFFFFF0000) != 0x80000)
    {
      v98 = specialized static String._copying(_:)(v101._rawBits, v102._rawBits, 0x203A747261747328uLL, 0xE800000000000000);
      v12 = v104;
      0xE800000000000000;
    }

    if ((v12 & 0x2000000000000000) != 0)
    {
      v12;
    }

    else if ((v12 & 0x1000000000000000) != 0)
    {
      v98 = _StringGuts._foreignConvertedToSmall()(v98, v12);
      v282 = v281;
      v12;
      v12 = v282;
    }

    else
    {
      if ((v98 & 0x1000000000000000) != 0)
      {
        v260 = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v261 = v98 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v260 = _StringObject.sharedUTF8.getter(v98, v12);
      }

      closure #1 in _StringGuts._convertedToSmall()(v260, v261, &v288, v103);
      v12;
      v12 = *(&v288 + 1);
      v98 = v288;
    }

    v105 = HIBYTE(v27) & 0xF;
    v106 = HIBYTE(v12) & 0xF;
    v107 = v106 + v105;
    if (v106 + v105 > 0xF)
    {
      goto LABEL_349;
    }

    0xE800000000000000;
    if (v106)
    {
      v108 = 0;
      v109 = 0;
      v110 = 8 * v105;
      do
      {
        v111 = v12 >> (v108 & 0x38);
        if (v109 < 8)
        {
          v111 = v98 >> v108;
        }

        v112 = (v111 << (v110 & 0x38)) | ((-255 << (v110 & 0x38)) - 1) & v27;
        v113 = (v111 << v110) | ((-255 << v110) - 1) & countAndFlagsBits;
        if (v105 <= 7)
        {
          countAndFlagsBits = v113;
        }

        else
        {
          v27 = v112;
        }

        ++v105;
        v110 += 8;
        v108 += 8;
        ++v109;
      }

      while (8 * v106 != v108);
    }

    object;
    0xE800000000000000;
    v114 = 0xA000000000000000;
    if (!(countAndFlagsBits & 0x8080808080808080 | v27 & 0x80808080808080))
    {
      v114 = 0xE000000000000000;
    }

    v289._countAndFlagsBits = countAndFlagsBits;
    v289._object = (v114 & 0xFF00000000000000 | (v107 << 56) | v27 & 0xFFFFFFFFFFFFFFLL);
    if (a1)
    {
      goto LABEL_47;
    }

LABEL_36:
    a1 = 7104878;
  }

  swift_bridgeObjectRetain_n(i, 2);
  v245._rawBits = 1;
  v246._rawBits = (v3 << 16) | 1;
  v247._rawBits = _StringGuts.validateScalarRange(_:)(v245, v246, a1, i)._rawBits;
  if (v247._rawBits < 0x10000)
  {
    v247._rawBits |= 3;
  }

  v55 = String.UTF8View.distance(from:to:)(v247, v248);
  i;
  if ((object & 0x1000000000000000) == 0)
  {
    goto LABEL_60;
  }

LABEL_306:
  v249 = String.UTF8View._foreignCount()();
  v57 = v249 + v55;
  if (__OFADD__(v249, v55))
  {
    goto LABEL_308;
  }

LABEL_61:
  v58 = countAndFlagsBits & ~object;
  if ((v58 & 0x2000000000000000) != 0)
  {
    v59 = object & 0xFFFFFFFFFFFFFFFLL;
    if (swift_isUniquelyReferenced_nonNull_native(object & 0xFFFFFFFFFFFFFFFLL))
    {
      v60 = _StringGuts.nativeUnusedCapacity.getter(countAndFlagsBits, object);
      if ((v61 & 1) == 0)
      {
        v62 = (object >> 61) & 1;
        if (v60 < v55)
        {
          LOBYTE(v62) = 1;
        }

        if (v57 > 15 || (v62 & 1) == 0)
        {
          v63 = _StringGuts.nativeUnusedCapacity.getter(countAndFlagsBits, object) >= v55;
          v65 = v63 & ~v64;
          goto LABEL_72;
        }

LABEL_79:
        if ((object & 0x2000000000000000) != 0)
        {
          v74 = object;
          goto LABEL_81;
        }

LABEL_312:
        if ((object & 0x1000000000000000) != 0)
        {
          countAndFlagsBits = _StringGuts._foreignConvertedToSmall()(countAndFlagsBits, object);
          v74 = v269;
        }

        else
        {
          if ((countAndFlagsBits & 0x1000000000000000) != 0)
          {
            v251 = ((object & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v251 = _StringObject.sharedUTF8.getter(countAndFlagsBits, object);
            v4 = v272;
          }

          closure #1 in _StringGuts._convertedToSmall()(v251, v4, &v288, v21);
          v74 = *(&v288 + 1);
          countAndFlagsBits = v288;
        }

LABEL_81:
        i;
        v75._rawBits = 1;
        v76._rawBits = (v3 << 16) | 1;
        v77._rawBits = _StringGuts.validateScalarRange(_:)(v75, v76, a1, i)._rawBits;
        if (v77._rawBits < 0x10000)
        {
          v77._rawBits |= 3;
        }

        if (v77._rawBits >> 16 || v78._rawBits >> 16 != v3)
        {
          a1 = specialized static String._copying(_:)(v77._rawBits, v78._rawBits, a1, i);
          v80 = v86;
          i;
        }

        else
        {
          v80 = i;
        }

        if ((v80 & 0x2000000000000000) != 0)
        {
          v80;
        }

        else if ((v80 & 0x1000000000000000) != 0)
        {
          a1 = _StringGuts._foreignConvertedToSmall()(a1, v80);
          v271 = v270;
          v80;
          v80 = v271;
        }

        else
        {
          if ((a1 & 0x1000000000000000) != 0)
          {
            v252 = ((v80 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v253 = a1 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v252 = _StringObject.sharedUTF8.getter(a1, v80);
          }

          closure #1 in _StringGuts._convertedToSmall()(v252, v253, &v288, v79);
          v80;
          v80 = *(&v288 + 1);
          a1 = v288;
        }

        v87 = HIBYTE(v74) & 0xF;
        v88 = HIBYTE(v80) & 0xF;
        v89 = v88 + v87;
        if (v88 + v87 <= 0xF)
        {
          i;
          if (v88)
          {
            v90 = 0;
            v91 = 0;
            v92 = 8 * v87;
            do
            {
              v93 = v80 >> (v90 & 0x38);
              if (v91 < 8)
              {
                v93 = a1 >> v90;
              }

              v94 = (v93 << (v92 & 0x38)) | ((-255 << (v92 & 0x38)) - 1) & v74;
              v95 = (v93 << v92) | ((-255 << v92) - 1) & countAndFlagsBits;
              if (v87 <= 7)
              {
                countAndFlagsBits = v95;
              }

              else
              {
                v74 = v94;
              }

              ++v87;
              v92 += 8;
              v90 += 8;
              ++v91;
            }

            while (8 * v88 != v90);
          }

          object;
          i;
          v96 = 0xA000000000000000;
          if (!(countAndFlagsBits & 0x8080808080808080 | v74 & 0x80808080808080))
          {
            v96 = 0xE000000000000000;
          }

          v97 = (v96 & 0xFF00000000000000 | (v89 << 56) | v74 & 0xFFFFFFFFFFFFFFLL);
          goto LABEL_160;
        }
      }

LABEL_349:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  if (v57 <= 15)
  {
    goto LABEL_79;
  }

  v66 = _StringGuts.nativeUnusedCapacity.getter(countAndFlagsBits, object) >= v55;
  v65 = v66 & ~v67;
  if ((v58 & 0x2000000000000000) == 0)
  {
    goto LABEL_86;
  }

  v59 = object & 0xFFFFFFFFFFFFFFFLL;
LABEL_72:
  if (!swift_isUniquelyReferenced_nonNull_native(v59))
  {
LABEL_86:
    if (v65)
    {
      goto LABEL_93;
    }

    goto LABEL_87;
  }

  if ((v65 & 1) == 0)
  {
LABEL_87:
    v81 = _StringGuts.nativeCapacity.getter(countAndFlagsBits, object);
    if (v82)
    {
      v83 = 0;
    }

    else
    {
      v83 = v81;
    }

    if (v83 + 0x4000000000000000 < 0)
    {
      __break(1u);
LABEL_341:
      __break(1u);
      goto LABEL_342;
    }

    v84 = 2 * v83;
    if (v84 > v57)
    {
      v57 = v84;
    }

LABEL_93:
    _StringGuts.grow(_:)(v57);
    if ((i & 0x1000000000000000) != 0)
    {
      goto LABEL_94;
    }

LABEL_75:
    if (!v284)
    {
      v73 = (i >> 62) & 1;
      *&v288 = a1;
      *(&v288 + 1) = i & 0xFFFFFFFFFFFFFFLL;
      v71 = &v288;
      v72 = HIBYTE(i) & 0xF;
      goto LABEL_150;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v68 = (i & 0xFFFFFFFFFFFFFFFLL) + 32;
      v69 = v283;
      v70 = v283;
LABEL_78:
      v71 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v69, v68, v70);
      v73 = a1 >> 63;
LABEL_150:
      closure #1 in _StringGuts.append(_:)(v71, v72, &v289, v73);
      goto LABEL_151;
    }

LABEL_342:
    v262 = _StringObject.sharedUTF8.getter(a1, i);
    if (v263 < v283)
    {
      goto LABEL_347;
    }

    v68 = v262;
    v70 = v263;
    v69 = v283;
    goto LABEL_78;
  }

  if ((i & 0x1000000000000000) == 0)
  {
    goto LABEL_75;
  }

LABEL_94:
  _StringGuts._foreignAppendInPlace(_:)(a1, i, 0, v3);
LABEL_151:
  swift_bridgeObjectRelease_n(i, 2);
LABEL_161:
  v124 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", count: ", 9uLL, 1);
  v125 = v124._countAndFlagsBits;
  v127 = v289._countAndFlagsBits;
  v126 = v289._object;
  v128 = (v289._object >> 56) & 0xF;
  v129 = v289._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v289._object & 0x2000000000000000) != 0)
  {
    v130 = (v289._object >> 56) & 0xF;
  }

  else
  {
    v130 = v289._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v130 && (v289._countAndFlagsBits & ~v289._object & 0x2000000000000000) == 0)
  {
    v289._object;
    v289 = v124;
    goto LABEL_224;
  }

  v131 = (v124._object & 0x2000000000000000) == 0;
  v132 = (v124._object >> 56) & 0xF;
  if ((v289._object & 0x2000000000000000) == 0)
  {
    v133 = v124._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    v134 = (v124._object >> 56) & 0xF;
    if ((v124._object & 0x2000000000000000) == 0)
    {
LABEL_170:
      v134 = v133;
    }

    v285 = v133;
    if ((v124._object & 0x1000000000000000) == 0)
    {
      goto LABEL_172;
    }

LABEL_196:
    swift_bridgeObjectRetain_n(v124._object, 2);
    v155._rawBits = 1;
    v156._rawBits = (v134 << 16) | 1;
    v157._rawBits = _StringGuts.validateScalarRange(_:)(v155, v156, v124._countAndFlagsBits, v124._object)._rawBits;
    if (v157._rawBits < 0x10000)
    {
      v157._rawBits |= 3;
    }

    v138 = String.UTF8View.distance(from:to:)(v157, v158);
    v124._object;
    if ((v126 & 0x1000000000000000) != 0)
    {
      goto LABEL_199;
    }

LABEL_173:
    v56 = __OFADD__(v130, v138);
    v139 = v130 + v138;
    if (v56)
    {
      goto LABEL_201;
    }

LABEL_174:
    if ((v127 & ~v126 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v126 & 0xFFFFFFFFFFFFFFFLL))
    {
      v140 = _StringGuts.nativeUnusedCapacity.getter(v127, v126);
      if (v141)
      {
        goto LABEL_349;
      }

      v142 = (v126 >> 61) & 1;
      if (v140 < v138)
      {
        LODWORD(v142) = 1;
      }

      if (v139 <= 15 && v142)
      {
LABEL_181:
        if ((v126 & 0x2000000000000000) != 0)
        {
          v129 = v126;
        }

        else if ((v126 & 0x1000000000000000) != 0)
        {
          v127 = _StringGuts._foreignConvertedToSmall()(v127, v126);
          v129 = v273;
        }

        else
        {
          if ((v127 & 0x1000000000000000) != 0)
          {
            v254 = ((v126 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v254 = _StringObject.sharedUTF8.getter(v127, v126);
            v129 = v279;
          }

          closure #1 in _StringGuts._convertedToSmall()(v254, v129, &v288, v137);
          v129 = *(&v288 + 1);
          v127 = v288;
        }

        v124._object;
        v143._rawBits = 1;
        v144._rawBits = (v134 << 16) | 1;
        rawBits = _StringGuts.validateScalarRange(_:)(v143, v144, v124._countAndFlagsBits, v124._object)._rawBits;
        if (rawBits < 0x10000)
        {
          rawBits |= 3uLL;
        }

        if (rawBits >> 16 || v136 >> 16 != v134)
        {
          goto LABEL_202;
        }

        v146 = v124._object;
LABEL_203:
        if ((v146 & 0x2000000000000000) != 0)
        {
          v146;
        }

        else if ((v146 & 0x1000000000000000) != 0)
        {
          v125 = _StringGuts._foreignConvertedToSmall()(v125, v146);
          v275 = v274;
          v146;
          v146 = v275;
        }

        else
        {
          if ((v125 & 0x1000000000000000) != 0)
          {
            v255 = ((v146 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v256 = v125 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v255 = _StringObject.sharedUTF8.getter(v125, v146);
          }

          closure #1 in _StringGuts._convertedToSmall()(v255, v256, &v288, v145);
          v146;
          v146 = *(&v288 + 1);
          v125 = v288;
        }

        v160 = specialized _SmallString.init(_:appending:)(v127, v129, v125, v146);
        if (v162)
        {
          goto LABEL_349;
        }

        v163 = v160;
        v164 = v161;
        v126;
        swift_bridgeObjectRelease_n(v124._object, 2);
        v289._countAndFlagsBits = v163;
        v289._object = v164;
        goto LABEL_224;
      }
    }

    else if (v139 <= 15)
    {
      goto LABEL_181;
    }

    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v139, v138);
    if ((v124._object & 0x1000000000000000) != 0)
    {
      _StringGuts._foreignAppendInPlace(_:)(v124._countAndFlagsBits, v124._object, 0, v134);
    }

    else
    {
      if (v131)
      {
        if ((v124._countAndFlagsBits & 0x1000000000000000) != 0)
        {
          v147 = (v124._object & 0xFFFFFFFFFFFFFFFLL) + 32;
          v148 = v285;
          v149 = a2;
          v150 = v285;
        }

        else
        {
          v264 = _StringObject.sharedUTF8.getter(v124._countAndFlagsBits, v124._object);
          if (v265 < v285)
          {
            goto LABEL_347;
          }

          v147 = v264;
          v150 = v265;
          v148 = v285;
          v149 = a2;
        }

        v151 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v148, v147, v150);
        closure #1 in _StringGuts.append(_:)(v151, v152, &v289, v124._countAndFlagsBits < 0);
        swift_bridgeObjectRelease_n(v124._object, 2);
        v153 = v149;
        goto LABEL_225;
      }

      *&v288 = v124._countAndFlagsBits;
      *(&v288 + 1) = v124._object & 0xFFFFFFFFFFFFFFLL;
      closure #1 in _StringGuts.append(_:)(&v288, (v124._object >> 56) & 0xF, &v289, (v124._object & 0x4000000000000000) != 0);
    }

    swift_bridgeObjectRelease_n(v124._object, 2);
    goto LABEL_224;
  }

  if ((v124._object & 0x2000000000000000) == 0)
  {
    v133 = v124._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    v131 = 1;
    goto LABEL_170;
  }

  v154 = v128 + v132;
  if (v128 + v132 >= 0x10)
  {
    v131 = 0;
    v134 = (v124._object >> 56) & 0xF;
    v285 = v124._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v124._object & 0x1000000000000000) != 0)
    {
      goto LABEL_196;
    }

LABEL_172:
    rawBits = v124._object;
    v138 = v134;
    if ((v126 & 0x1000000000000000) == 0)
    {
      goto LABEL_173;
    }

LABEL_199:
    rawBits = String.UTF8View._foreignCount()();
    v139 = rawBits + v138;
    if (!__OFADD__(rawBits, v138))
    {
      goto LABEL_174;
    }

LABEL_201:
    __break(1u);
LABEL_202:
    v125 = specialized static String._copying(_:)(rawBits, v136, v124._countAndFlagsBits, v124._object);
    v146 = v159;
    v124._object;
    goto LABEL_203;
  }

  if (v132)
  {
    v165 = 0;
    v166 = 0;
    v167 = 8 * v128;
    v168 = v289._object;
    do
    {
      v169 = v124._object >> (v165 & 0x38);
      if (v166 < 8)
      {
        v169 = v124._countAndFlagsBits >> v165;
      }

      v170 = (v169 << (v167 & 0x38)) | ((-255 << (v167 & 0x38)) - 1) & v168;
      v171 = (v169 << v167) | ((-255 << v167) - 1) & v127;
      if (v128 <= 7)
      {
        v127 = v171;
      }

      else
      {
        v168 = v170;
      }

      ++v128;
      v167 += 8;
      v165 += 8;
      ++v166;
    }

    while (8 * v132 != v165);
  }

  else
  {
    v168 = v289._object;
  }

  v289._object;
  v124._object;
  v172 = 0xA000000000000000;
  if (!(v127 & 0x8080808080808080 | v168 & 0x80808080808080))
  {
    v172 = 0xE000000000000000;
  }

  v289._countAndFlagsBits = v127;
  v289._object = (v172 & 0xFF00000000000000 | (v154 << 56) | v168 & 0xFFFFFFFFFFFFFFLL);
LABEL_224:
  v153 = a2;
LABEL_225:
  v173 = _int64ToString(_:radix:uppercase:)(v153, 10, 0, swift_int64ToString);
  v175 = v173;
  v176 = v174;
  v178 = v289._countAndFlagsBits;
  v177 = v289._object;
  v179 = (v289._object >> 56) & 0xF;
  v180 = v289._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v289._object & 0x2000000000000000) != 0)
  {
    v181 = (v289._object >> 56) & 0xF;
  }

  else
  {
    v181 = v289._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v181 && (v289._countAndFlagsBits & ~v289._object & 0x2000000000000000) == 0)
  {
    v289._object;
    v289._countAndFlagsBits = v175;
    v289._object = v176;
    goto LABEL_285;
  }

  v182 = (v174 & 0x2000000000000000) == 0;
  v183 = HIBYTE(v174) & 0xF;
  if ((v289._object & 0x2000000000000000) == 0)
  {
    v184 = v173 & 0xFFFFFFFFFFFFLL;
    v185 = HIBYTE(v174) & 0xF;
    if ((v174 & 0x2000000000000000) == 0)
    {
LABEL_234:
      v185 = v184;
    }

    v287 = v184;
    if ((v174 & 0x1000000000000000) == 0)
    {
      goto LABEL_236;
    }

LABEL_261:
    swift_bridgeObjectRetain_n(v174, 2);
    v213._rawBits = 1;
    v214._rawBits = (v185 << 16) | 1;
    v215._rawBits = _StringGuts.validateScalarRange(_:)(v213, v214, v175, v176)._rawBits;
    if (v215._rawBits < 0x10000)
    {
      v215._rawBits |= 3;
    }

    v187 = String.UTF8View.distance(from:to:)(v215, v216);
    v176;
    if ((v177 & 0x1000000000000000) != 0)
    {
      goto LABEL_264;
    }

LABEL_237:
    v56 = __OFADD__(v181, v187);
    v188 = v181 + v187;
    if (v56)
    {
      goto LABEL_266;
    }

LABEL_238:
    if ((v178 & ~v177 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v177 & 0xFFFFFFFFFFFFFFFLL))
    {
      v189 = _StringGuts.nativeUnusedCapacity.getter(v178, v177);
      if (v190)
      {
        goto LABEL_349;
      }

      v191 = (v177 >> 61) & 1;
      if (v189 < v187)
      {
        LODWORD(v191) = 1;
      }

      if (v188 <= 15 && v191)
      {
        goto LABEL_245;
      }
    }

    else if (v188 <= 15)
    {
LABEL_245:
      if ((v177 & 0x2000000000000000) != 0)
      {
        v192 = v177;
      }

      else if ((v177 & 0x1000000000000000) != 0)
      {
        v178 = _StringGuts._foreignConvertedToSmall()(v178, v177);
        v192 = v276;
      }

      else
      {
        if ((v178 & 0x1000000000000000) != 0)
        {
          v257 = ((v177 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v257 = _StringObject.sharedUTF8.getter(v178, v177);
          v180 = v280;
        }

        closure #1 in _StringGuts._convertedToSmall()(v257, v180, &v288, v186);
        v192 = *(&v288 + 1);
        v178 = v288;
      }

      v176;
      v193._rawBits = 1;
      v194._rawBits = (v185 << 16) | 1;
      v195._rawBits = _StringGuts.validateScalarRange(_:)(v193, v194, v175, v176)._rawBits;
      if (v195._rawBits < 0x10000)
      {
        v195._rawBits |= 3;
      }

      v197 = Substring.description.getter(v195._rawBits, v196._rawBits, v175, v176);
      v199 = v198;
      v176;
      if ((v199 & 0x2000000000000000) != 0)
      {
        v199;
      }

      else if ((v199 & 0x1000000000000000) != 0)
      {
        v197 = _StringGuts._foreignConvertedToSmall()(v197, v199);
        v278 = v277;
        v199;
        v199 = v278;
      }

      else
      {
        if ((v197 & 0x1000000000000000) != 0)
        {
          v258 = ((v199 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v259 = v197 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v258 = _StringObject.sharedUTF8.getter(v197, v199);
        }

        closure #1 in _StringGuts._convertedToSmall()(v258, v259, &v288, v200);
        v199;
        v199 = *(&v288 + 1);
        v197 = v288;
      }

      v201 = specialized _SmallString.init(_:appending:)(v178, v192, v197, v199);
      if (v203)
      {
        goto LABEL_349;
      }

      v204 = v201;
      v205 = v202;
      v177;
      swift_bridgeObjectRelease_n(v176, 2);
      v289._countAndFlagsBits = v204;
      v289._object = v205;
      goto LABEL_285;
    }

    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v188, v187);
    if ((v176 & 0x1000000000000000) != 0)
    {
      goto LABEL_267;
    }

    if (!v182)
    {
      v211 = (v176 >> 62) & 1;
      *&v288 = v175;
      *(&v288 + 1) = v176 & 0xFFFFFFFFFFFFFFLL;
      v209 = &v288;
      v210 = HIBYTE(v176) & 0xF;
      goto LABEL_279;
    }

    if ((v175 & 0x1000000000000000) != 0)
    {
      v206 = (v176 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v207 = v287;
      v208 = v287;
LABEL_258:
      v209 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v207, v206, v208);
      v211 = v175 >> 63;
LABEL_279:
      closure #1 in _StringGuts.append(_:)(v209, v210, &v289, v211);
      goto LABEL_280;
    }

    v266 = _StringObject.sharedUTF8.getter(v175, v176);
    if (v267 >= v287)
    {
      v206 = v266;
      v208 = v267;
      v207 = v287;
      goto LABEL_258;
    }

LABEL_347:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v174 & 0x2000000000000000) == 0)
  {
    v184 = v173 & 0xFFFFFFFFFFFFLL;
    v182 = 1;
    goto LABEL_234;
  }

  v212 = v179 + v183;
  if (v179 + v183 < 0x10)
  {
    if (v183)
    {
      v218 = 0;
      v219 = 0;
      v220 = 8 * v179;
      v221 = v289._object;
      do
      {
        v222 = v174 >> (v218 & 0x38);
        if (v219 < 8)
        {
          v222 = v173 >> v218;
        }

        v223 = (v222 << (v220 & 0x38)) | ((-255 << (v220 & 0x38)) - 1) & v221;
        v224 = (v222 << v220) | ((-255 << v220) - 1) & v178;
        if (v179 <= 7)
        {
          v178 = v224;
        }

        else
        {
          v221 = v223;
        }

        ++v179;
        v220 += 8;
        v218 += 8;
        ++v219;
      }

      while (8 * v183 != v218);
    }

    else
    {
      v221 = v289._object;
    }

    v289._object;
    v176;
    v225 = 0xA000000000000000;
    if (!(v178 & 0x8080808080808080 | v221 & 0x80808080808080))
    {
      v225 = 0xE000000000000000;
    }

    v289._countAndFlagsBits = v178;
    v289._object = (v225 & 0xFF00000000000000 | (v212 << 56) | v221 & 0xFFFFFFFFFFFFFFLL);
  }

  else
  {
    v182 = 0;
    v185 = HIBYTE(v174) & 0xF;
    v287 = v173 & 0xFFFFFFFFFFFFLL;
    if ((v174 & 0x1000000000000000) != 0)
    {
      goto LABEL_261;
    }

LABEL_236:
    v174;
    v187 = v185;
    if ((v177 & 0x1000000000000000) == 0)
    {
      goto LABEL_237;
    }

LABEL_264:
    v217 = String.UTF8View._foreignCount()();
    v188 = v217 + v187;
    if (!__OFADD__(v217, v187))
    {
      goto LABEL_238;
    }

LABEL_266:
    __break(1u);
LABEL_267:
    _StringGuts._foreignAppendInPlace(_:)(v175, v176, 0, v185);
LABEL_280:
    swift_bridgeObjectRelease_n(v176, 2);
  }

LABEL_285:
  v226 = v289._object;
  v227 = (v289._object >> 56) & 0xF;
  if ((v289._object & 0x2000000000000000) == 0)
  {
    v227 = v289._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v227 || (v289._countAndFlagsBits & ~v289._object & 0x2000000000000000) != 0)
  {
    if ((v289._object & 0x2000000000000000) != 0 && (v228 = specialized _SmallString.init(_:appending:)(v289._countAndFlagsBits, v289._object, 0x29uLL, 0xE100000000000000), (v230 & 1) == 0))
    {
      v241 = v228;
      v240 = v229;
      v226;
      0xE100000000000000;
      v239 = v241;
    }

    else
    {
      0xE100000000000000;
      _StringGuts.append(_:)(41, 0xE100000000000000, 0, 1, v231, v232, v233, v234, v235, v236, v237, v238);
      swift_bridgeObjectRelease_n(0xE100000000000000, 2);
      v239 = v289._countAndFlagsBits;
      v240 = v289._object;
    }
  }

  else
  {
    v289._object;
    v240 = 0xE100000000000000;
    v239 = 41;
  }

  v242 = specialized static String.+ infix(_:_:)(0xD00000000000001ALL, 0x800000018071E350 | 0x8000000000000000, v239, v240);
  0x800000018071E350 | 0x8000000000000000;
  v240;
  return v242;
}

uint64_t UnsafeMutableBufferPointer.withContiguousStorageIfAvailable<A>(_:)@<X0>(uint64_t (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  result = a1(a2, a3);
  if (!v5)
  {
    return (*(*(a4 - 8) + 56))(a5, 0, 1, a4);
  }

  return result;
}

{
  return UnsafeBufferPointer.withContiguousStorageIfAvailable<A>(_:)(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance UnsafeMutableBufferPointer<A>@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X2>, uint64_t *a3@<X8>)
{
  result = a2(*v3, v3[1], *(a1 + 16));
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance UnsafeBufferPointer<A>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UnsafeBufferPointer<A>, a1, a3);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance UnsafeMutableBufferPointer<A>(unint64_t a1, uint64_t a2, int *a3)
{
  v7 = *v3;
  WitnessTable = swift_getWitnessTable(a3, a1, a3);
  return specialized Collection._copyToContiguousArray()(&v7, a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyContents(initializing:) in conformance UnsafeMutableBufferPointer<A>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, void, void, void))
{
  *a1 = a6(a2, a3, *v6, v6[1], *(a4 + 16));
  a1[1] = v8;
  return v9;
}

Swift::Int __swiftcall UnsafeBufferPointer.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::Void __swiftcall UnsafeBufferPointer.formIndex(after:)(Swift::Int *after)
{
  if (__OFADD__(*after, 1))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  ++*after;
}

Swift::Int __swiftcall UnsafeBufferPointer.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::Void __swiftcall UnsafeBufferPointer.formIndex(before:)(Swift::Int *before)
{
  if (__OFSUB__(*before, 1))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  --*before;
}

Swift::Int __swiftcall UnsafeBufferPointer.index(_:offsetBy:)(Swift::Int _, Swift::Int offsetBy)
{
  v2 = __OFADD__(_, offsetBy);
  result = _ + offsetBy;
  if (v2)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::Int_optional __swiftcall UnsafeBufferPointer.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  v3 = specialized UnsafeBufferPointer.index(_:offsetBy:limitedBy:)(_, offsetBy, limitedBy);
  v5 = v4 & 1;
  result.value = v3;
  result.is_nil = v5;
  return result;
}

Swift::Int __swiftcall UnsafeBufferPointer.distance(from:to:)(Swift::Int from, Swift::Int to)
{
  v2 = __OFSUB__(to, from);
  result = to - from;
  if (v2)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t UnsafeMutableBufferPointer._failEarlyRangeCheck(_:bounds:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < a3 || a4 < a2)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance UnsafeBufferPointer<A>(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x28, 0x6008uLL);
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = UnsafeBufferPointer.subscript.read(v7, *a2, *v3, v3[1], *(a3 + 16));
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

void protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*UnsafeBufferPointer.subscript.read(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = *(a5 - 8);
  v11 = v10;
  *a1 = a5;
  a1[1] = v10;
  v12 = *(v10 + 64);
  if (swift_coroFrameAlloc)
  {
    v13 = swift_coroFrameAlloc(v12, 0xAA1AuLL);
  }

  else
  {
    v13 = malloc(v12);
  }

  a1[2] = v13;
  if (a2 < 0 || a4 <= a2)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v11 + 16))(v13, a3 + *(v11 + 72) * a2, a5);
  return _ArrayBuffer.subscript.read;
}

uint64_t protocol witness for Collection.subscript.getter in conformance UnsafeMutableBufferPointer<A>@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X3>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1], *v3, v3[1]);
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  a3[3] = v8;
  return result;
}

uint64_t _sSryxGSlsSl7indices7IndicesQzvgTW_0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = UnsafeBufferPointer.indices.getter(a1, *(v2 + 8));
  *a2 = 0;
  a2[1] = v5;
  return result;
}

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance UnsafeBufferPointer<A>(void *result, void *a2)
{
  return protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance UnsafeMutableBufferPointer<A>(result, a2);
}

{
  return protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance UnsafeMutableBufferPointer<A>(result, a2);
}

void *protocol witness for Collection.index(after:) in conformance UnsafeBufferPointer<A>@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a2 = *result + 1;
  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance UnsafeBufferPointer<A>(void *result)
{
  if (__OFADD__(*result, 1))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  ++*result;
  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance UnsafeBufferPointer<A>@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a2 = *result - 1;
  return result;
}

void *protocol witness for BidirectionalCollection.formIndex(before:) in conformance UnsafeBufferPointer<A>(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  --*result;
  return result;
}

void *_sSRyxGSlsSl5index_8offsetBy5IndexQzAE_SitFTW_0@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, a2))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = *result + a2;
  return result;
}

uint64_t _sSRyxGSlsSl5index_8offsetBy07limitedC05IndexQzSgAF_SiAFtFTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized UnsafeBufferPointer.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t _sSRyxGSlsSl8distance4from2toSi5IndexQz_AFtFTW_0(void *a1, void *a2)
{
  v2 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (v2)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::Void __swiftcall UnsafeBufferPointer.deallocate()()
{
  if (v0)
  {
    v0;
  }
}

uint64_t UnsafeMutableBufferPointer.withMemoryRebound<A, B>(to:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11[2] = a6;
  v11[3] = a7;
  v11[4] = a8;
  v11[5] = a2;
  v11[6] = a3;
  return a10(a9, v11, a4, a5, a6, a7, a8);
}

unint64_t UnsafeBufferPointer.debugDescription.getter(unint64_t a1, uint64_t a2, unint64_t i)
{
  v7 = _StringGuts.init(_initialCapacity:)(22);
  countAndFlagsBits = v7;
  object = v8;
  v289._countAndFlagsBits = v7;
  v289._object = v8;
  v11 = HIBYTE(v8) & 0xF;
  v12 = v7 & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v13 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v13 || (v7 & ~v8 & 0x2000000000000000) != 0)
  {
    if ((v8 & 0x2000000000000000) == 0 || v11 > 7)
    {
      0xE800000000000000;
      if ((object & 0x1000000000000000) != 0)
      {
        goto LABEL_309;
      }

      v22 = v13 + 8;
      if (!__OFADD__(v13, 8))
      {
        goto LABEL_13;
      }

LABEL_311:
      __break(1u);
      goto LABEL_312;
    }

    v14 = 8 * HIBYTE(v8);
    v15 = ((-255 << (v14 & 0x38)) - 1) & v7 | (40 << (v14 & 0x38));
    v16 = (v14 + 8) & 0x38;
    v17 = (-255 << v16) - 1;
    v18 = 115 << v16;
    if (v11 >= 7)
    {
      v20 = v17 & v8 | v18;
      v19 = 8;
    }

    else
    {
      v15 = v17 & v15 | v18;
      if (v11 != 6)
      {
        v15 = ((-255 << ((v14 + 16) & 0x38)) - 1) & v15 | (116 << ((v14 + 16) & 0x38));
        if (v11 < 5)
        {
          v15 = ((-255 << ((v14 + 24) & 0x38)) - 1) & v15 | (97 << ((v14 + 24) & 0x38));
          if (v11 != 4)
          {
            v15 = ((0xFFFFFF0100000000 << (8 * v11)) - 1) & v15 | (0x7200000000 << (8 * v11));
            if (v11 < 3)
            {
              v15 = ((-255 << ((v14 + 40) & 0x38)) - 1) & v15 | (116 << ((v14 + 40) & 0x38));
              if (v11 != 2)
              {
                v15 = ((0xFF01000000000000 << (8 * v11)) - 1) & v15 | (0x3A000000000000 << (8 * v11));
                if (!v11)
                {
                  v46 = v8;
                  v15 = v15 & 0xFFFFFFFFFFFFFFLL | 0x2000000000000000;
LABEL_44:
                  v8;
                  0xE800000000000000;
                  v47 = 0xA000000000000000;
                  if (!(v15 & 0x8080808080808080 | v46 & 0x80808080808080))
                  {
                    v47 = 0xE000000000000000;
                  }

                  v289._countAndFlagsBits = v15;
                  v289._object = (v47 & 0xFF00000000000000 | (v11 << 56) | v46 & 0xFFFFFFFFFFFFFFLL | 0x800000000000000);
                  if (!a1)
                  {
                    goto LABEL_36;
                  }

                  goto LABEL_47;
                }

                v45 = v8;
LABEL_43:
                v46 = ((-255 << ((v14 + 56) & 0x38)) - 1) & v45 | (32 << ((v14 + 56) & 0x38));
                goto LABEL_44;
              }

              v44 = 0;
              v43 = v8;
LABEL_42:
              v45 = ((-255 << v44) - 1) & v43 | (58 << v44);
              goto LABEL_43;
            }

            v42 = 0;
            v41 = v8;
LABEL_41:
            v43 = ((-255 << v42) - 1) & v41 | (116 << v42);
            v44 = (v14 + 48) & 0x38;
            goto LABEL_42;
          }

          v40 = 0;
          v39 = v8;
LABEL_40:
          v41 = ((-255 << v40) - 1) & v39 | (114 << v40);
          v42 = (v14 + 40) & 0x38;
          goto LABEL_41;
        }

        v38 = 0;
        v37 = v8;
LABEL_39:
        v39 = ((-255 << v38) - 1) & v37 | (97 << v38);
        v40 = v14 & 0x38 ^ 0x20;
        goto LABEL_40;
      }

      v19 = 0;
      v20 = v8;
    }

    v37 = ((-255 << v19) - 1) & v20 | (116 << v19);
    v38 = (v14 + 24) & 0x38;
    goto LABEL_39;
  }

  v8;
  v289._countAndFlagsBits = 0x203A747261747328;
  v289._object = 0xE800000000000000;
  if (!a1)
  {
    goto LABEL_36;
  }

LABEL_47:
  *&v288 = a1;
  v48 = type metadata accessor for UnsafePointer(0, i, v35, v36);
  a1 = String.init<A>(describing:)(&v288, v48);
  for (i = v49; ; i = 0xE300000000000000)
  {
    countAndFlagsBits = v289._countAndFlagsBits;
    object = v289._object;
    v50 = (v289._object >> 56) & 0xF;
    v4 = v289._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v289._object & 0x2000000000000000) != 0)
    {
      v51 = (v289._object >> 56) & 0xF;
    }

    else
    {
      v51 = v289._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (!v51 && (v289._countAndFlagsBits & ~v289._object & 0x2000000000000000) == 0)
    {
      v289._object;
      v289._countAndFlagsBits = a1;
      v289._object = i;
      goto LABEL_161;
    }

    v52 = (i & 0x2000000000000000) == 0;
    v53 = HIBYTE(i) & 0xF;
    if ((v289._object & 0x2000000000000000) == 0)
    {
      v54 = a1 & 0xFFFFFFFFFFFFLL;
      v3 = HIBYTE(i) & 0xF;
      if ((i & 0x2000000000000000) != 0)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }

    if ((i & 0x2000000000000000) == 0)
    {
      v54 = a1 & 0xFFFFFFFFFFFFLL;
      v52 = 1;
LABEL_57:
      v3 = v54;
      goto LABEL_58;
    }

    v85 = v50 + v53;
    if (v50 + v53 < 0x10)
    {
      if (v53)
      {
        v115 = 0;
        v116 = 0;
        v117 = 8 * v50;
        v118 = 8 * v53;
        v119 = v289._object;
        do
        {
          v120 = i >> (v115 & 0x38);
          if (v116 < 8)
          {
            v120 = a1 >> v115;
          }

          v121 = (v120 << (v117 & 0x38)) | ((-255 << (v117 & 0x38)) - 1) & v119;
          v122 = (v120 << v117) | ((-255 << v117) - 1) & countAndFlagsBits;
          if (v50 <= 7)
          {
            countAndFlagsBits = v122;
          }

          else
          {
            v119 = v121;
          }

          ++v50;
          v117 += 8;
          v115 += 8;
          ++v116;
        }

        while (v118 != v115);
      }

      else
      {
        v119 = v289._object;
      }

      v289._object;
      i;
      v123 = 0xA000000000000000;
      if (!(countAndFlagsBits & 0x8080808080808080 | v119 & 0x80808080808080))
      {
        v123 = 0xE000000000000000;
      }

      v97 = (v123 & 0xFF00000000000000 | (v85 << 56) | v119 & 0xFFFFFFFFFFFFFFLL);
LABEL_160:
      v289._countAndFlagsBits = countAndFlagsBits;
      v289._object = v97;
      goto LABEL_161;
    }

    v52 = 0;
    v54 = a1 & 0xFFFFFFFFFFFFLL;
    v3 = HIBYTE(i) & 0xF;
LABEL_58:
    v284 = v52;
    v283 = v54;
    if ((i & 0x1000000000000000) != 0)
    {
      break;
    }

    i;
    v55 = v3;
    if ((object & 0x1000000000000000) != 0)
    {
      goto LABEL_306;
    }

LABEL_60:
    v56 = __OFADD__(v51, v55);
    v57 = v51 + v55;
    if (!v56)
    {
      goto LABEL_61;
    }

LABEL_308:
    __break(1u);
LABEL_309:
    v250 = String.UTF8View._foreignCount()();
    v22 = v250 + 8;
    if (__OFADD__(v250, 8))
    {
      goto LABEL_311;
    }

LABEL_13:
    v23 = countAndFlagsBits & ~object;
    if ((v23 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(object & 0xFFFFFFFFFFFFFFFLL))
    {
      v24 = _StringGuts.nativeUnusedCapacity.getter(countAndFlagsBits, object);
      if (v25)
      {
        goto LABEL_349;
      }

      if (v22 > 15)
      {
LABEL_24:
        v28 = v23 & 0x2000000000000000;
        v29 = _StringGuts.nativeUnusedCapacity.getter(countAndFlagsBits, object);
        if ((v30 & 1) != 0 || v29 <= 7)
        {
          if (v28)
          {
            swift_isUniquelyReferenced_nonNull_native(object & 0xFFFFFFFFFFFFFFFLL);
          }

          v31 = _StringGuts.nativeCapacity.getter(countAndFlagsBits, object);
          if (v32)
          {
            v33 = 0;
          }

          else
          {
            v33 = v31;
          }

          if (v33 + 0x4000000000000000 < 0)
          {
            goto LABEL_341;
          }

          v34 = 2 * v33;
          if (v34 > v22)
          {
            v22 = v34;
          }

LABEL_34:
          _StringGuts.grow(_:)(v22);
        }

        else if (!v28 || !swift_isUniquelyReferenced_nonNull_native(object & 0xFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_34;
        }

        v288 = xmmword_18071DFB0;
        closure #1 in _StringGuts.append(_:)(&v288, 8uLL, &v289, 1);
        swift_bridgeObjectRelease_n(0xE800000000000000, 2);
        if (a1)
        {
          goto LABEL_47;
        }

        goto LABEL_36;
      }

      if ((object & 0x2000000000000000) == 0)
      {
        if (v24 >= 8)
        {
          goto LABEL_24;
        }

LABEL_19:
        if ((object & 0x1000000000000000) != 0)
        {
          countAndFlagsBits = _StringGuts._foreignConvertedToSmall()(countAndFlagsBits, object);
          v27 = v244;
        }

        else
        {
          if ((countAndFlagsBits & 0x1000000000000000) != 0)
          {
            v26 = ((object & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v26 = _StringObject.sharedUTF8.getter(countAndFlagsBits, object);
            v12 = v268;
          }

          closure #1 in _StringGuts._convertedToSmall()(v26, v12, &v288, v21);
          v27 = *(&v288 + 1);
          countAndFlagsBits = v288;
        }

        goto LABEL_114;
      }
    }

    else
    {
      if (v22 > 15)
      {
        goto LABEL_24;
      }

      if ((object & 0x2000000000000000) == 0)
      {
        goto LABEL_19;
      }
    }

    v27 = object;
LABEL_114:
    v98 = 0x203A747261747328;
    v12 = 0xE800000000000000;
    0xE800000000000000;
    v99._rawBits = 1;
    v100._rawBits = 524289;
    v101._rawBits = _StringGuts.validateScalarRange(_:)(v99, v100, 0x203A747261747328uLL, 0xE800000000000000)._rawBits;
    if (v101._rawBits < 0x10000)
    {
      v101._rawBits |= 3;
    }

    if (v101._rawBits >> 16 || (v102._rawBits & 0xFFFFFFFFFFFF0000) != 0x80000)
    {
      v98 = specialized static String._copying(_:)(v101._rawBits, v102._rawBits, 0x203A747261747328uLL, 0xE800000000000000);
      v12 = v104;
      0xE800000000000000;
    }

    if ((v12 & 0x2000000000000000) != 0)
    {
      v12;
    }

    else if ((v12 & 0x1000000000000000) != 0)
    {
      v98 = _StringGuts._foreignConvertedToSmall()(v98, v12);
      v282 = v281;
      v12;
      v12 = v282;
    }

    else
    {
      if ((v98 & 0x1000000000000000) != 0)
      {
        v260 = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v261 = v98 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v260 = _StringObject.sharedUTF8.getter(v98, v12);
      }

      closure #1 in _StringGuts._convertedToSmall()(v260, v261, &v288, v103);
      v12;
      v12 = *(&v288 + 1);
      v98 = v288;
    }

    v105 = HIBYTE(v27) & 0xF;
    v106 = HIBYTE(v12) & 0xF;
    v107 = v106 + v105;
    if (v106 + v105 > 0xF)
    {
      goto LABEL_349;
    }

    0xE800000000000000;
    if (v106)
    {
      v108 = 0;
      v109 = 0;
      v110 = 8 * v105;
      do
      {
        v111 = v12 >> (v108 & 0x38);
        if (v109 < 8)
        {
          v111 = v98 >> v108;
        }

        v112 = (v111 << (v110 & 0x38)) | ((-255 << (v110 & 0x38)) - 1) & v27;
        v113 = (v111 << v110) | ((-255 << v110) - 1) & countAndFlagsBits;
        if (v105 <= 7)
        {
          countAndFlagsBits = v113;
        }

        else
        {
          v27 = v112;
        }

        ++v105;
        v110 += 8;
        v108 += 8;
        ++v109;
      }

      while (8 * v106 != v108);
    }

    object;
    0xE800000000000000;
    v114 = 0xA000000000000000;
    if (!(countAndFlagsBits & 0x8080808080808080 | v27 & 0x80808080808080))
    {
      v114 = 0xE000000000000000;
    }

    v289._countAndFlagsBits = countAndFlagsBits;
    v289._object = (v114 & 0xFF00000000000000 | (v107 << 56) | v27 & 0xFFFFFFFFFFFFFFLL);
    if (a1)
    {
      goto LABEL_47;
    }

LABEL_36:
    a1 = 7104878;
  }

  swift_bridgeObjectRetain_n(i, 2);
  v245._rawBits = 1;
  v246._rawBits = (v3 << 16) | 1;
  v247._rawBits = _StringGuts.validateScalarRange(_:)(v245, v246, a1, i)._rawBits;
  if (v247._rawBits < 0x10000)
  {
    v247._rawBits |= 3;
  }

  v55 = String.UTF8View.distance(from:to:)(v247, v248);
  i;
  if ((object & 0x1000000000000000) == 0)
  {
    goto LABEL_60;
  }

LABEL_306:
  v249 = String.UTF8View._foreignCount()();
  v57 = v249 + v55;
  if (__OFADD__(v249, v55))
  {
    goto LABEL_308;
  }

LABEL_61:
  v58 = countAndFlagsBits & ~object;
  if ((v58 & 0x2000000000000000) != 0)
  {
    v59 = object & 0xFFFFFFFFFFFFFFFLL;
    if (swift_isUniquelyReferenced_nonNull_native(object & 0xFFFFFFFFFFFFFFFLL))
    {
      v60 = _StringGuts.nativeUnusedCapacity.getter(countAndFlagsBits, object);
      if ((v61 & 1) == 0)
      {
        v62 = (object >> 61) & 1;
        if (v60 < v55)
        {
          LOBYTE(v62) = 1;
        }

        if (v57 > 15 || (v62 & 1) == 0)
        {
          v63 = _StringGuts.nativeUnusedCapacity.getter(countAndFlagsBits, object) >= v55;
          v65 = v63 & ~v64;
          goto LABEL_72;
        }

LABEL_79:
        if ((object & 0x2000000000000000) != 0)
        {
          v74 = object;
          goto LABEL_81;
        }

LABEL_312:
        if ((object & 0x1000000000000000) != 0)
        {
          countAndFlagsBits = _StringGuts._foreignConvertedToSmall()(countAndFlagsBits, object);
          v74 = v269;
        }

        else
        {
          if ((countAndFlagsBits & 0x1000000000000000) != 0)
          {
            v251 = ((object & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v251 = _StringObject.sharedUTF8.getter(countAndFlagsBits, object);
            v4 = v272;
          }

          closure #1 in _StringGuts._convertedToSmall()(v251, v4, &v288, v21);
          v74 = *(&v288 + 1);
          countAndFlagsBits = v288;
        }

LABEL_81:
        i;
        v75._rawBits = 1;
        v76._rawBits = (v3 << 16) | 1;
        v77._rawBits = _StringGuts.validateScalarRange(_:)(v75, v76, a1, i)._rawBits;
        if (v77._rawBits < 0x10000)
        {
          v77._rawBits |= 3;
        }

        if (v77._rawBits >> 16 || v78._rawBits >> 16 != v3)
        {
          a1 = specialized static String._copying(_:)(v77._rawBits, v78._rawBits, a1, i);
          v80 = v86;
          i;
        }

        else
        {
          v80 = i;
        }

        if ((v80 & 0x2000000000000000) != 0)
        {
          v80;
        }

        else if ((v80 & 0x1000000000000000) != 0)
        {
          a1 = _StringGuts._foreignConvertedToSmall()(a1, v80);
          v271 = v270;
          v80;
          v80 = v271;
        }

        else
        {
          if ((a1 & 0x1000000000000000) != 0)
          {
            v252 = ((v80 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v253 = a1 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v252 = _StringObject.sharedUTF8.getter(a1, v80);
          }

          closure #1 in _StringGuts._convertedToSmall()(v252, v253, &v288, v79);
          v80;
          v80 = *(&v288 + 1);
          a1 = v288;
        }

        v87 = HIBYTE(v74) & 0xF;
        v88 = HIBYTE(v80) & 0xF;
        v89 = v88 + v87;
        if (v88 + v87 <= 0xF)
        {
          i;
          if (v88)
          {
            v90 = 0;
            v91 = 0;
            v92 = 8 * v87;
            do
            {
              v93 = v80 >> (v90 & 0x38);
              if (v91 < 8)
              {
                v93 = a1 >> v90;
              }

              v94 = (v93 << (v92 & 0x38)) | ((-255 << (v92 & 0x38)) - 1) & v74;
              v95 = (v93 << v92) | ((-255 << v92) - 1) & countAndFlagsBits;
              if (v87 <= 7)
              {
                countAndFlagsBits = v95;
              }

              else
              {
                v74 = v94;
              }

              ++v87;
              v92 += 8;
              v90 += 8;
              ++v91;
            }

            while (8 * v88 != v90);
          }

          object;
          i;
          v96 = 0xA000000000000000;
          if (!(countAndFlagsBits & 0x8080808080808080 | v74 & 0x80808080808080))
          {
            v96 = 0xE000000000000000;
          }

          v97 = (v96 & 0xFF00000000000000 | (v89 << 56) | v74 & 0xFFFFFFFFFFFFFFLL);
          goto LABEL_160;
        }
      }

LABEL_349:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  if (v57 <= 15)
  {
    goto LABEL_79;
  }

  v66 = _StringGuts.nativeUnusedCapacity.getter(countAndFlagsBits, object) >= v55;
  v65 = v66 & ~v67;
  if ((v58 & 0x2000000000000000) == 0)
  {
    goto LABEL_86;
  }

  v59 = object & 0xFFFFFFFFFFFFFFFLL;
LABEL_72:
  if (!swift_isUniquelyReferenced_nonNull_native(v59))
  {
LABEL_86:
    if (v65)
    {
      goto LABEL_93;
    }

    goto LABEL_87;
  }

  if ((v65 & 1) == 0)
  {
LABEL_87:
    v81 = _StringGuts.nativeCapacity.getter(countAndFlagsBits, object);
    if (v82)
    {
      v83 = 0;
    }

    else
    {
      v83 = v81;
    }

    if (v83 + 0x4000000000000000 < 0)
    {
      __break(1u);
LABEL_341:
      __break(1u);
      goto LABEL_342;
    }

    v84 = 2 * v83;
    if (v84 > v57)
    {
      v57 = v84;
    }

LABEL_93:
    _StringGuts.grow(_:)(v57);
    if ((i & 0x1000000000000000) != 0)
    {
      goto LABEL_94;
    }

LABEL_75:
    if (!v284)
    {
      v73 = (i >> 62) & 1;
      *&v288 = a1;
      *(&v288 + 1) = i & 0xFFFFFFFFFFFFFFLL;
      v71 = &v288;
      v72 = HIBYTE(i) & 0xF;
      goto LABEL_150;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v68 = (i & 0xFFFFFFFFFFFFFFFLL) + 32;
      v69 = v283;
      v70 = v283;
LABEL_78:
      v71 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v69, v68, v70);
      v73 = a1 >> 63;
LABEL_150:
      closure #1 in _StringGuts.append(_:)(v71, v72, &v289, v73);
      goto LABEL_151;
    }

LABEL_342:
    v262 = _StringObject.sharedUTF8.getter(a1, i);
    if (v263 < v283)
    {
      goto LABEL_347;
    }

    v68 = v262;
    v70 = v263;
    v69 = v283;
    goto LABEL_78;
  }

  if ((i & 0x1000000000000000) == 0)
  {
    goto LABEL_75;
  }

LABEL_94:
  _StringGuts._foreignAppendInPlace(_:)(a1, i, 0, v3);
LABEL_151:
  swift_bridgeObjectRelease_n(i, 2);
LABEL_161:
  v124 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", count: ", 9uLL, 1);
  v125 = v124._countAndFlagsBits;
  v127 = v289._countAndFlagsBits;
  v126 = v289._object;
  v128 = (v289._object >> 56) & 0xF;
  v129 = v289._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v289._object & 0x2000000000000000) != 0)
  {
    v130 = (v289._object >> 56) & 0xF;
  }

  else
  {
    v130 = v289._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v130 && (v289._countAndFlagsBits & ~v289._object & 0x2000000000000000) == 0)
  {
    v289._object;
    v289 = v124;
    goto LABEL_224;
  }

  v131 = (v124._object & 0x2000000000000000) == 0;
  v132 = (v124._object >> 56) & 0xF;
  if ((v289._object & 0x2000000000000000) == 0)
  {
    v133 = v124._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    v134 = (v124._object >> 56) & 0xF;
    if ((v124._object & 0x2000000000000000) == 0)
    {
LABEL_170:
      v134 = v133;
    }

    v285 = v133;
    if ((v124._object & 0x1000000000000000) == 0)
    {
      goto LABEL_172;
    }

LABEL_196:
    swift_bridgeObjectRetain_n(v124._object, 2);
    v155._rawBits = 1;
    v156._rawBits = (v134 << 16) | 1;
    v157._rawBits = _StringGuts.validateScalarRange(_:)(v155, v156, v124._countAndFlagsBits, v124._object)._rawBits;
    if (v157._rawBits < 0x10000)
    {
      v157._rawBits |= 3;
    }

    v138 = String.UTF8View.distance(from:to:)(v157, v158);
    v124._object;
    if ((v126 & 0x1000000000000000) != 0)
    {
      goto LABEL_199;
    }

LABEL_173:
    v56 = __OFADD__(v130, v138);
    v139 = v130 + v138;
    if (v56)
    {
      goto LABEL_201;
    }

LABEL_174:
    if ((v127 & ~v126 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v126 & 0xFFFFFFFFFFFFFFFLL))
    {
      v140 = _StringGuts.nativeUnusedCapacity.getter(v127, v126);
      if (v141)
      {
        goto LABEL_349;
      }

      v142 = (v126 >> 61) & 1;
      if (v140 < v138)
      {
        LODWORD(v142) = 1;
      }

      if (v139 <= 15 && v142)
      {
LABEL_181:
        if ((v126 & 0x2000000000000000) != 0)
        {
          v129 = v126;
        }

        else if ((v126 & 0x1000000000000000) != 0)
        {
          v127 = _StringGuts._foreignConvertedToSmall()(v127, v126);
          v129 = v273;
        }

        else
        {
          if ((v127 & 0x1000000000000000) != 0)
          {
            v254 = ((v126 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v254 = _StringObject.sharedUTF8.getter(v127, v126);
            v129 = v279;
          }

          closure #1 in _StringGuts._convertedToSmall()(v254, v129, &v288, v137);
          v129 = *(&v288 + 1);
          v127 = v288;
        }

        v124._object;
        v143._rawBits = 1;
        v144._rawBits = (v134 << 16) | 1;
        rawBits = _StringGuts.validateScalarRange(_:)(v143, v144, v124._countAndFlagsBits, v124._object)._rawBits;
        if (rawBits < 0x10000)
        {
          rawBits |= 3uLL;
        }

        if (rawBits >> 16 || v136 >> 16 != v134)
        {
          goto LABEL_202;
        }

        v146 = v124._object;
LABEL_203:
        if ((v146 & 0x2000000000000000) != 0)
        {
          v146;
        }

        else if ((v146 & 0x1000000000000000) != 0)
        {
          v125 = _StringGuts._foreignConvertedToSmall()(v125, v146);
          v275 = v274;
          v146;
          v146 = v275;
        }

        else
        {
          if ((v125 & 0x1000000000000000) != 0)
          {
            v255 = ((v146 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v256 = v125 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v255 = _StringObject.sharedUTF8.getter(v125, v146);
          }

          closure #1 in _StringGuts._convertedToSmall()(v255, v256, &v288, v145);
          v146;
          v146 = *(&v288 + 1);
          v125 = v288;
        }

        v160 = specialized _SmallString.init(_:appending:)(v127, v129, v125, v146);
        if (v162)
        {
          goto LABEL_349;
        }

        v163 = v160;
        v164 = v161;
        v126;
        swift_bridgeObjectRelease_n(v124._object, 2);
        v289._countAndFlagsBits = v163;
        v289._object = v164;
        goto LABEL_224;
      }
    }

    else if (v139 <= 15)
    {
      goto LABEL_181;
    }

    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v139, v138);
    if ((v124._object & 0x1000000000000000) != 0)
    {
      _StringGuts._foreignAppendInPlace(_:)(v124._countAndFlagsBits, v124._object, 0, v134);
    }

    else
    {
      if (v131)
      {
        if ((v124._countAndFlagsBits & 0x1000000000000000) != 0)
        {
          v147 = (v124._object & 0xFFFFFFFFFFFFFFFLL) + 32;
          v148 = v285;
          v149 = a2;
          v150 = v285;
        }

        else
        {
          v264 = _StringObject.sharedUTF8.getter(v124._countAndFlagsBits, v124._object);
          if (v265 < v285)
          {
            goto LABEL_347;
          }

          v147 = v264;
          v150 = v265;
          v148 = v285;
          v149 = a2;
        }

        v151 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v148, v147, v150);
        closure #1 in _StringGuts.append(_:)(v151, v152, &v289, v124._countAndFlagsBits < 0);
        swift_bridgeObjectRelease_n(v124._object, 2);
        v153 = v149;
        goto LABEL_225;
      }

      *&v288 = v124._countAndFlagsBits;
      *(&v288 + 1) = v124._object & 0xFFFFFFFFFFFFFFLL;
      closure #1 in _StringGuts.append(_:)(&v288, (v124._object >> 56) & 0xF, &v289, (v124._object & 0x4000000000000000) != 0);
    }

    swift_bridgeObjectRelease_n(v124._object, 2);
    goto LABEL_224;
  }

  if ((v124._object & 0x2000000000000000) == 0)
  {
    v133 = v124._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    v131 = 1;
    goto LABEL_170;
  }

  v154 = v128 + v132;
  if (v128 + v132 >= 0x10)
  {
    v131 = 0;
    v134 = (v124._object >> 56) & 0xF;
    v285 = v124._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v124._object & 0x1000000000000000) != 0)
    {
      goto LABEL_196;
    }

LABEL_172:
    rawBits = v124._object;
    v138 = v134;
    if ((v126 & 0x1000000000000000) == 0)
    {
      goto LABEL_173;
    }

LABEL_199:
    rawBits = String.UTF8View._foreignCount()();
    v139 = rawBits + v138;
    if (!__OFADD__(rawBits, v138))
    {
      goto LABEL_174;
    }

LABEL_201:
    __break(1u);
LABEL_202:
    v125 = specialized static String._copying(_:)(rawBits, v136, v124._countAndFlagsBits, v124._object);
    v146 = v159;
    v124._object;
    goto LABEL_203;
  }

  if (v132)
  {
    v165 = 0;
    v166 = 0;
    v167 = 8 * v128;
    v168 = v289._object;
    do
    {
      v169 = v124._object >> (v165 & 0x38);
      if (v166 < 8)
      {
        v169 = v124._countAndFlagsBits >> v165;
      }

      v170 = (v169 << (v167 & 0x38)) | ((-255 << (v167 & 0x38)) - 1) & v168;
      v171 = (v169 << v167) | ((-255 << v167) - 1) & v127;
      if (v128 <= 7)
      {
        v127 = v171;
      }

      else
      {
        v168 = v170;
      }

      ++v128;
      v167 += 8;
      v165 += 8;
      ++v166;
    }

    while (8 * v132 != v165);
  }

  else
  {
    v168 = v289._object;
  }

  v289._object;
  v124._object;
  v172 = 0xA000000000000000;
  if (!(v127 & 0x8080808080808080 | v168 & 0x80808080808080))
  {
    v172 = 0xE000000000000000;
  }

  v289._countAndFlagsBits = v127;
  v289._object = (v172 & 0xFF00000000000000 | (v154 << 56) | v168 & 0xFFFFFFFFFFFFFFLL);
LABEL_224:
  v153 = a2;
LABEL_225:
  v173 = _int64ToString(_:radix:uppercase:)(v153, 10, 0, swift_int64ToString);
  v175 = v173;
  v176 = v174;
  v178 = v289._countAndFlagsBits;
  v177 = v289._object;
  v179 = (v289._object >> 56) & 0xF;
  v180 = v289._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v289._object & 0x2000000000000000) != 0)
  {
    v181 = (v289._object >> 56) & 0xF;
  }

  else
  {
    v181 = v289._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v181 && (v289._countAndFlagsBits & ~v289._object & 0x2000000000000000) == 0)
  {
    v289._object;
    v289._countAndFlagsBits = v175;
    v289._object = v176;
    goto LABEL_285;
  }

  v182 = (v174 & 0x2000000000000000) == 0;
  v183 = HIBYTE(v174) & 0xF;
  if ((v289._object & 0x2000000000000000) == 0)
  {
    v184 = v173 & 0xFFFFFFFFFFFFLL;
    v185 = HIBYTE(v174) & 0xF;
    if ((v174 & 0x2000000000000000) == 0)
    {
LABEL_234:
      v185 = v184;
    }

    v287 = v184;
    if ((v174 & 0x1000000000000000) == 0)
    {
      goto LABEL_236;
    }

LABEL_261:
    swift_bridgeObjectRetain_n(v174, 2);
    v213._rawBits = 1;
    v214._rawBits = (v185 << 16) | 1;
    v215._rawBits = _StringGuts.validateScalarRange(_:)(v213, v214, v175, v176)._rawBits;
    if (v215._rawBits < 0x10000)
    {
      v215._rawBits |= 3;
    }

    v187 = String.UTF8View.distance(from:to:)(v215, v216);
    v176;
    if ((v177 & 0x1000000000000000) != 0)
    {
      goto LABEL_264;
    }

LABEL_237:
    v56 = __OFADD__(v181, v187);
    v188 = v181 + v187;
    if (v56)
    {
      goto LABEL_266;
    }

LABEL_238:
    if ((v178 & ~v177 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v177 & 0xFFFFFFFFFFFFFFFLL))
    {
      v189 = _StringGuts.nativeUnusedCapacity.getter(v178, v177);
      if (v190)
      {
        goto LABEL_349;
      }

      v191 = (v177 >> 61) & 1;
      if (v189 < v187)
      {
        LODWORD(v191) = 1;
      }

      if (v188 <= 15 && v191)
      {
        goto LABEL_245;
      }
    }

    else if (v188 <= 15)
    {
LABEL_245:
      if ((v177 & 0x2000000000000000) != 0)
      {
        v192 = v177;
      }

      else if ((v177 & 0x1000000000000000) != 0)
      {
        v178 = _StringGuts._foreignConvertedToSmall()(v178, v177);
        v192 = v276;
      }

      else
      {
        if ((v178 & 0x1000000000000000) != 0)
        {
          v257 = ((v177 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v257 = _StringObject.sharedUTF8.getter(v178, v177);
          v180 = v280;
        }

        closure #1 in _StringGuts._convertedToSmall()(v257, v180, &v288, v186);
        v192 = *(&v288 + 1);
        v178 = v288;
      }

      v176;
      v193._rawBits = 1;
      v194._rawBits = (v185 << 16) | 1;
      v195._rawBits = _StringGuts.validateScalarRange(_:)(v193, v194, v175, v176)._rawBits;
      if (v195._rawBits < 0x10000)
      {
        v195._rawBits |= 3;
      }

      v197 = Substring.description.getter(v195._rawBits, v196._rawBits, v175, v176);
      v199 = v198;
      v176;
      if ((v199 & 0x2000000000000000) != 0)
      {
        v199;
      }

      else if ((v199 & 0x1000000000000000) != 0)
      {
        v197 = _StringGuts._foreignConvertedToSmall()(v197, v199);
        v278 = v277;
        v199;
        v199 = v278;
      }

      else
      {
        if ((v197 & 0x1000000000000000) != 0)
        {
          v258 = ((v199 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v259 = v197 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v258 = _StringObject.sharedUTF8.getter(v197, v199);
        }

        closure #1 in _StringGuts._convertedToSmall()(v258, v259, &v288, v200);
        v199;
        v199 = *(&v288 + 1);
        v197 = v288;
      }

      v201 = specialized _SmallString.init(_:appending:)(v178, v192, v197, v199);
      if (v203)
      {
        goto LABEL_349;
      }

      v204 = v201;
      v205 = v202;
      v177;
      swift_bridgeObjectRelease_n(v176, 2);
      v289._countAndFlagsBits = v204;
      v289._object = v205;
      goto LABEL_285;
    }

    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v188, v187);
    if ((v176 & 0x1000000000000000) != 0)
    {
      goto LABEL_267;
    }

    if (!v182)
    {
      v211 = (v176 >> 62) & 1;
      *&v288 = v175;
      *(&v288 + 1) = v176 & 0xFFFFFFFFFFFFFFLL;
      v209 = &v288;
      v210 = HIBYTE(v176) & 0xF;
      goto LABEL_279;
    }

    if ((v175 & 0x1000000000000000) != 0)
    {
      v206 = (v176 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v207 = v287;
      v208 = v287;
LABEL_258:
      v209 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v207, v206, v208);
      v211 = v175 >> 63;
LABEL_279:
      closure #1 in _StringGuts.append(_:)(v209, v210, &v289, v211);
      goto LABEL_280;
    }

    v266 = _StringObject.sharedUTF8.getter(v175, v176);
    if (v267 >= v287)
    {
      v206 = v266;
      v208 = v267;
      v207 = v287;
      goto LABEL_258;
    }

LABEL_347:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v174 & 0x2000000000000000) == 0)
  {
    v184 = v173 & 0xFFFFFFFFFFFFLL;
    v182 = 1;
    goto LABEL_234;
  }

  v212 = v179 + v183;
  if (v179 + v183 < 0x10)
  {
    if (v183)
    {
      v218 = 0;
      v219 = 0;
      v220 = 8 * v179;
      v221 = v289._object;
      do
      {
        v222 = v174 >> (v218 & 0x38);
        if (v219 < 8)
        {
          v222 = v173 >> v218;
        }

        v223 = (v222 << (v220 & 0x38)) | ((-255 << (v220 & 0x38)) - 1) & v221;
        v224 = (v222 << v220) | ((-255 << v220) - 1) & v178;
        if (v179 <= 7)
        {
          v178 = v224;
        }

        else
        {
          v221 = v223;
        }

        ++v179;
        v220 += 8;
        v218 += 8;
        ++v219;
      }

      while (8 * v183 != v218);
    }

    else
    {
      v221 = v289._object;
    }

    v289._object;
    v176;
    v225 = 0xA000000000000000;
    if (!(v178 & 0x8080808080808080 | v221 & 0x80808080808080))
    {
      v225 = 0xE000000000000000;
    }

    v289._countAndFlagsBits = v178;
    v289._object = (v225 & 0xFF00000000000000 | (v212 << 56) | v221 & 0xFFFFFFFFFFFFFFLL);
  }

  else
  {
    v182 = 0;
    v185 = HIBYTE(v174) & 0xF;
    v287 = v173 & 0xFFFFFFFFFFFFLL;
    if ((v174 & 0x1000000000000000) != 0)
    {
      goto LABEL_261;
    }

LABEL_236:
    v174;
    v187 = v185;
    if ((v177 & 0x1000000000000000) == 0)
    {
      goto LABEL_237;
    }

LABEL_264:
    v217 = String.UTF8View._foreignCount()();
    v188 = v217 + v187;
    if (!__OFADD__(v217, v187))
    {
      goto LABEL_238;
    }

LABEL_266:
    __break(1u);
LABEL_267:
    _StringGuts._foreignAppendInPlace(_:)(v175, v176, 0, v185);
LABEL_280:
    swift_bridgeObjectRelease_n(v176, 2);
  }

LABEL_285:
  v226 = v289._object;
  v227 = (v289._object >> 56) & 0xF;
  if ((v289._object & 0x2000000000000000) == 0)
  {
    v227 = v289._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v227 || (v289._countAndFlagsBits & ~v289._object & 0x2000000000000000) != 0)
  {
    if ((v289._object & 0x2000000000000000) != 0 && (v228 = specialized _SmallString.init(_:appending:)(v289._countAndFlagsBits, v289._object, 0x29uLL, 0xE100000000000000), (v230 & 1) == 0))
    {
      v241 = v228;
      v240 = v229;
      v226;
      0xE100000000000000;
      v239 = v241;
    }

    else
    {
      0xE100000000000000;
      _StringGuts.append(_:)(41, 0xE100000000000000, 0, 1, v231, v232, v233, v234, v235, v236, v237, v238);
      swift_bridgeObjectRelease_n(0xE100000000000000, 2);
      v239 = v289._countAndFlagsBits;
      v240 = v289._object;
    }
  }

  else
  {
    v289._object;
    v240 = 0xE100000000000000;
    v239 = 41;
  }

  v242 = specialized static String.+ infix(_:_:)(0xD000000000000013, 0x800000018071E370 | 0x8000000000000000, v239, v240);
  0x800000018071E370 | 0x8000000000000000;
  v240;
  return v242;
}

char *UnsafeMutableRawBufferPointer._copyContents(initializing:)(void *a1, int64_t a2, char *__src, unint64_t a4)
{
  if (__src && a4 > __src && a2)
  {
    if ((a4 - __src) >= a2)
    {
      v4 = a2;
    }

    else
    {
      v4 = a4 - __src;
    }

    if ((v4 & 0x8000000000000000) != 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v5 = __src;
    memmove(a1, __src, v4);
    return &v5[v4];
  }

  return __src;
}

uint64_t _sSwSlsSl5countSivgTW_0()
{
  if (*v0)
  {
    return v0[1] - *v0;
  }

  else
  {
    return 0;
  }
}

uint64_t UnsafeMutableRawBufferPointer.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return UnsafeMutableRawBufferPointer.subscript.getter(a1, a2, a3);
}

{
  if (a1 < 0 || !a2 || a3 - a2 <= a1)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *(a2 + a1);
}

uint64_t key path getter for UnsafeMutableRawBufferPointer.subscript(_:) : UnsafeMutableRawBufferPointer@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  result = UnsafeMutableRawBufferPointer.subscript.getter(*a2, *a1, a1[1]);
  *a3 = result;
  return result;
}

uint64_t (*UnsafeMutableRawBufferPointer.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *a1 = a2;
  *(a1 + 24) = UnsafeMutableRawBufferPointer.subscript.getter(a2, a3, a4);
  return UnsafeMutableRawBufferPointer.subscript.modify;
}

uint64_t UnsafeMutableRawBufferPointer.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return UnsafeMutableRawBufferPointer.subscript.getter(result, a2, a3, a4);
}

{
  if (result < 0)
  {
    goto LABEL_6;
  }

  if (a3)
  {
    if (a4 - a3 >= a2)
    {
      return result;
    }

LABEL_6:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a2 >= 1)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t key path getter for UnsafeMutableRawBufferPointer.subscript(_:) : UnsafeMutableRawBufferPointer@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = UnsafeMutableRawBufferPointer.subscript.getter(*a2, a2[1], *a1, a1[1]);
  *a3 = result;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;
  return result;
}

void *UnsafeMutableRawBufferPointer.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5 < 0)
  {
    goto LABEL_17;
  }

  if (a7)
  {
    if (a8 - a7 >= a6)
    {
      goto LABEL_4;
    }

LABEL_17:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a6 >= 1)
  {
    goto LABEL_17;
  }

LABEL_4:
  v14 = (a6 - a5);
  if (__OFSUB__(a6, a5))
  {
    __break(1u);
    goto LABEL_17;
  }

  result = specialized RandomAccessCollection<>.distance(from:to:)(a1, a2, a3, a4);
  if (v14 != result)
  {
    goto LABEL_17;
  }

  if (a1 != a2)
  {
    if (!a7 || !a3)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v16 = specialized RandomAccessCollection<>.distance(from:to:)(a1, a2, a3, a4);
    if ((v16 & 0x8000000000000000) != 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    return memmove((a7 + a5), (a3 + a1), v16);
  }

  return result;
}

void (*UnsafeMutableRawBufferPointer.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1)
{
  if (swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc(0x40, 0xC7ACuLL);
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  *a1 = v10;
  v10[6] = a4;
  v10[7] = a5;
  v10[4] = a2;
  v10[5] = a3;
  if (a2 < 0)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
    if (a3 < 1)
    {
      goto LABEL_7;
    }

LABEL_9:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a5 - a4 < a3)
  {
    goto LABEL_9;
  }

LABEL_7:
  *v10 = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  return UnsafeMutableRawBufferPointer.subscript.modify;
}

void UnsafeMutableRawBufferPointer.subscript.modify(uint64_t **a1)
{
  v1 = *a1;
  UnsafeMutableRawBufferPointer.subscript.setter(**a1, v1[1], v1[2], v1[3], (*a1)[4], (*a1)[5], (*a1)[6], (*a1)[7]);

  free(v1);
}

Swift::Void __swiftcall UnsafeMutableRawBufferPointer.swapAt(_:_:)(Swift::Int a1, Swift::Int a2)
{
  if (a1 != a2)
  {
    if ((a2 | a1) < 0 || !v2 || v3 - v2 <= a1 || v3 - v2 <= a2)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v4 = *(v2 + a1);
    *(v2 + a1) = *(v2 + a2);
    *(v2 + a2) = v4;
  }
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance UnsafeMutableRawBufferPointer(uint64_t a1, uint64_t *a2))(uint64_t a1)
{
  v4 = *a2;
  v5 = *v2;
  v6 = v2[1];
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = UnsafeMutableRawBufferPointer.subscript.getter(v4, v5, v6);
  return UnsafeMutableRawBufferPointer.subscript.modify;
}

void (*protocol witness for MutableCollection.subscript.modify in conformance UnsafeMutableRawBufferPointer(void *a1, __int128 *a2))(uint64_t **a1)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0x8F81uLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v6 = *a2;
  v5[2] = *a2;
  v7 = *v2;
  *(v5 + 6) = *v2;
  v8 = v2[1];
  *(v5 + 7) = v8;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

  if (!v7)
  {
    if (*(&v6 + 1) < 1)
    {
      goto LABEL_7;
    }

LABEL_9:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v8 - v7 < *(&v6 + 1))
  {
    goto LABEL_9;
  }

LABEL_7:
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *v5 = v6;
  v5[1] = v9;
  return UnsafeMutableRawBufferPointer.subscript.modify;
}

uint64_t protocol witness for MutableCollection.partition(by:) in conformance UnsafeMutableRawBufferPointer@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t *a2@<X8>)
{
  v6 = *v2;
  v7 = v2[1];
  result = _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFACq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys5UInt8VsAD_pq0_Isgyrzr_Swq0_sAD_pAFRszsAD_pRs_Ri_0_r1_lIetMgyrzo_Tpq5SiSg_Tgq5055_sSw39withContiguousMutableStorageIfAvailableyxSgxSrys5F25VGzKXEKlFAbEKXEfU_Si_TGq5SryAFGxsAD_pRi_zRi0_zlySiIsglrzo_Tf1cn_n(*v2, v7, partial apply for specialized closure #1 in MutableCollection<>.partition(by:));
  if (!v3)
  {
    if (v9)
    {
      result = specialized MutableCollection<>._partitionImpl(by:)(a1);
    }

    else
    {
      result = specialized RandomAccessCollection<>.index(_:offsetBy:)(0, result, v6, v7);
    }

    *a2 = result;
  }

  return result;
}

uint64_t UnsafeMutableRawBufferPointer.withContiguousMutableStorageIfAvailable<A>(_:)@<X0>(uint64_t (*a1)(uint64_t *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (a2)
  {
    v6 = a3 - a2;
    if (a3 - a2 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v7 = a2;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  return closure #1 in UnsafeMutableRawBufferPointer.withContiguousMutableStorageIfAvailable<A>(_:)(v7, v6, a1, a4, &v9, a5);
}

uint64_t protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance UnsafeRawBufferPointer@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *v4;
  v9 = v4[1];
  v10 = specialized RandomAccessCollection<>.distance(from:to:)(*a1, *a3, *v4, v9);
  if (a2 < 1)
  {
    if (v10 <= 0 && v10 > a2)
    {
      goto LABEL_4;
    }

LABEL_10:
    result = specialized RandomAccessCollection<>.index(_:offsetBy:)(v7, a2, v8, v9);
    v12 = 0;
    goto LABEL_11;
  }

  if (v10 < 0 || v10 >= a2)
  {
    goto LABEL_10;
  }

LABEL_4:
  result = 0;
  v12 = 1;
LABEL_11:
  *a4 = result;
  *(a4 + 8) = v12;
  return result;
}

uint64_t _sSwSlsSl5index_8offsetBy5IndexQzAD_SitFTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized RandomAccessCollection<>.index(_:offsetBy:)(*a1, a2, *v3, v3[1]);
  *a3 = result;
  return result;
}

uint64_t UnsafeMutableRawBufferPointer.storeBytes<A>(of:toByteOffset:as:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 < 0)
  {
    goto LABEL_12;
  }

  v6 = *(*(a6 - 8) + 64);
  v7 = __OFADD__(a2, v6);
  v8 = a2 + v6;
  if (v7)
  {
    __break(1u);
LABEL_10:
    if (v8 < 1)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_12:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a4)
  {
    goto LABEL_10;
  }

  if (a5 - a4 < v8)
  {
    goto LABEL_12;
  }

  return UnsafeMutableRawPointer._legacy_se0349_storeBytes_internal<A>(of:toByteOffset:as:)(a1, a2, a6, a4, a6);
}

uint64_t closure #1 in UnsafeMutableRawBufferPointer.copyBytes<A>(from:)(const void *a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  result = (*(a8 + 112))(a7, a8);
  if (a4)
  {
    if (a5 - a4 >= result)
    {
      goto LABEL_3;
    }

LABEL_9:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (result >= 1)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (a1)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    return memmove(a6, a1, a2);
  }

  return result;
}

void *specialized closure #1 in UnsafeMutableRawBufferPointer.withContiguousMutableStorageIfAvailable<A>(_:)(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t *))
{
  v13 = a1;
  v14 = a2;
  result = a3(&v15, &v13);
  if (!v3)
  {
    if (a1)
    {
      if (v13)
      {
        v9 = v13 == a1;
      }

      else
      {
        v9 = 0;
      }

      if (!v9 || v14 != a2)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v13)
      {
        v12 = 0;
      }

      else
      {
        v12 = v14 == a2;
      }

      if (!v12)
      {
        goto LABEL_32;
      }
    }

    return v15;
  }

  if (!a1)
  {
    if (v13)
    {
      v11 = 0;
    }

    else
    {
      v11 = v14 == a2;
    }

    if (v11)
    {
      return result;
    }

LABEL_32:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v13)
  {
    v7 = v13 == a1;
  }

  else
  {
    v7 = 0;
  }

  if (!v7 || v14 != a2)
  {
    goto LABEL_32;
  }

  return result;
}

uint64_t closure #1 in UnsafeMutableRawBufferPointer.withContiguousMutableStorageIfAvailable<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t *)@<X2>, uint64_t a4@<X4>, void *a5@<X5>, uint64_t a6@<X8>)
{
  v19 = a1;
  v20 = a2;
  result = a3(&v19);
  if (v6)
  {
    if (a1)
    {
      if (v19)
      {
        v13 = v19 == a1;
      }

      else
      {
        v13 = 0;
      }

      if (!v13 || v20 != a2)
      {
        goto LABEL_32;
      }

      goto LABEL_27;
    }

    if (v19)
    {
      v17 = 0;
    }

    else
    {
      v17 = v20 == a2;
    }

    if (v17)
    {
LABEL_27:
      *a5 = v6;
      return result;
    }

LABEL_32:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = (*(*(a4 - 8) + 56))(a6, 0, 1, a4);
  if (a1)
  {
    if (v19)
    {
      v15 = v19 == a1;
    }

    else
    {
      v15 = 0;
    }

    if (!v15 || v20 != a2)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (v19)
    {
      v18 = 0;
    }

    else
    {
      v18 = v20 == a2;
    }

    if (!v18)
    {
      goto LABEL_32;
    }
  }

  return result;
}

unint64_t UnsafeMutableRawBufferPointer.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  v7 = _StringGuts.init(_initialCapacity:)(22);
  i = v7;
  object = v8;
  v234._countAndFlagsBits = v7;
  v234._object = v8;
  v11 = HIBYTE(v8) & 0xF;
  v12 = v7 & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v13 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v13 || (v7 & ~v8 & 0x2000000000000000) != 0)
  {
    if ((v8 & 0x2000000000000000) == 0 || v11 > 7)
    {
      0xE800000000000000;
      if ((object & 0x1000000000000000) != 0)
      {
        goto LABEL_278;
      }

      v22 = v13 + 8;
      if (!__OFADD__(v13, 8))
      {
        goto LABEL_13;
      }

LABEL_280:
      __break(1u);
      goto LABEL_281;
    }

    v14 = 8 * HIBYTE(v8);
    v15 = ((-255 << (v14 & 0x38)) - 1) & v7 | (40 << (v14 & 0x38));
    v16 = (v14 + 8) & 0x38;
    v17 = (-255 << v16) - 1;
    v18 = 115 << v16;
    if (v11 >= 7)
    {
      v20 = v17 & v8 | v18;
      v19 = 8;
    }

    else
    {
      v15 = v17 & v15 | v18;
      if (v11 != 6)
      {
        v15 = ((-255 << ((v14 + 16) & 0x38)) - 1) & v15 | (116 << ((v14 + 16) & 0x38));
        if (v11 < 5)
        {
          v15 = ((-255 << ((v14 + 24) & 0x38)) - 1) & v15 | (97 << ((v14 + 24) & 0x38));
          if (v11 != 4)
          {
            v15 = ((0xFFFFFF0100000000 << (8 * v11)) - 1) & v15 | (0x7200000000 << (8 * v11));
            if (v11 < 3)
            {
              v15 = ((-255 << ((v14 + 40) & 0x38)) - 1) & v15 | (116 << ((v14 + 40) & 0x38));
              if (v11 != 2)
              {
                v15 = ((0xFF01000000000000 << (8 * v11)) - 1) & v15 | (0x3A000000000000 << (8 * v11));
                if (!v11)
                {
                  v43 = v8;
                  v15 = v15 & 0xFFFFFFFFFFFFFFLL | 0x2000000000000000;
LABEL_44:
                  v8;
                  0xE800000000000000;
                  v44 = 0xA000000000000000;
                  if (!(v15 & 0x8080808080808080 | v43 & 0x80808080808080))
                  {
                    v44 = 0xE000000000000000;
                  }

                  v234._countAndFlagsBits = v15;
                  v234._object = (v44 & 0xFF00000000000000 | (v11 << 56) | v43 & 0xFFFFFFFFFFFFFFLL | 0x800000000000000);
                  v232 = a2;
                  if (!a1)
                  {
                    goto LABEL_36;
                  }

                  goto LABEL_47;
                }

                v42 = v8;
LABEL_43:
                v43 = ((-255 << ((v14 + 56) & 0x38)) - 1) & v42 | (32 << ((v14 + 56) & 0x38));
                goto LABEL_44;
              }

              v41 = 0;
              v40 = v8;
LABEL_42:
              v42 = ((-255 << v41) - 1) & v40 | (58 << v41);
              goto LABEL_43;
            }

            v39 = 0;
            v38 = v8;
LABEL_41:
            v40 = ((-255 << v39) - 1) & v38 | (116 << v39);
            v41 = (v14 + 48) & 0x38;
            goto LABEL_42;
          }

          v37 = 0;
          v36 = v8;
LABEL_40:
          v38 = ((-255 << v37) - 1) & v36 | (114 << v37);
          v39 = (v14 + 40) & 0x38;
          goto LABEL_41;
        }

        v35 = 0;
        v34 = v8;
LABEL_39:
        v36 = ((-255 << v35) - 1) & v34 | (97 << v35);
        v37 = v14 & 0x38 ^ 0x20;
        goto LABEL_40;
      }

      v19 = 0;
      v20 = v8;
    }

    v34 = ((-255 << v19) - 1) & v20 | (116 << v19);
    v35 = (v14 + 24) & 0x38;
    goto LABEL_39;
  }

  v8;
  v234._countAndFlagsBits = 0x203A747261747328;
  v234._object = 0xE800000000000000;
  v232 = a2;
  if (!a1)
  {
    goto LABEL_36;
  }

LABEL_47:
  v12 = _sSS10describingSSx_tclufCSv_Tt0g5Tm(a1, &type metadata for UnsafeMutableRawPointer, &protocol witness table for UnsafeMutableRawPointer);
  for (i = v45; ; i = 0xE300000000000000)
  {
    countAndFlagsBits = v234._countAndFlagsBits;
    object = v234._object;
    v46 = (v234._object >> 56) & 0xF;
    a2 = v234._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v234._object & 0x2000000000000000) != 0)
    {
      v47 = (v234._object >> 56) & 0xF;
    }

    else
    {
      v47 = v234._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    v231 = a1;
    if (!v47 && (v234._countAndFlagsBits & ~v234._object & 0x2000000000000000) == 0)
    {
      v234._object;
      v234._countAndFlagsBits = v12;
      v234._object = i;
      goto LABEL_166;
    }

    v48 = (i & 0x2000000000000000) == 0;
    v4 = HIBYTE(i) & 0xF;
    if ((v234._object & 0x2000000000000000) != 0)
    {
      if ((i & 0x2000000000000000) == 0)
      {
        v49 = v12 & 0xFFFFFFFFFFFFLL;
        v48 = 1;
LABEL_58:
        a1 = v49;
        goto LABEL_59;
      }

      v75 = v46 + v4;
      if (v46 + v4 < 0x10)
      {
        if (v4)
        {
          v103 = 0;
          v104 = 0;
          v105 = 8 * v46;
          v106 = v234._object;
          do
          {
            v107 = i >> (v103 & 0x38);
            if (v104 < 8)
            {
              v107 = v12 >> v103;
            }

            v108 = (v107 << (v105 & 0x38)) | ((-255 << (v105 & 0x38)) - 1) & v106;
            v109 = (v107 << v105) | ((-255 << v105) - 1) & countAndFlagsBits;
            if (v46 <= 7)
            {
              countAndFlagsBits = v109;
            }

            else
            {
              v106 = v108;
            }

            ++v46;
            v105 += 8;
            v103 += 8;
            ++v104;
          }

          while (8 * v4 != v103);
        }

        else
        {
          v106 = v234._object;
        }

        v234._object;
        i;
        v110 = 0xA000000000000000;
        if (!(countAndFlagsBits & 0x8080808080808080 | v106 & 0x80808080808080))
        {
          v110 = 0xE000000000000000;
        }

        v87 = (v110 & 0xFF00000000000000 | (v75 << 56) | v106 & 0xFFFFFFFFFFFFFFLL);
        goto LABEL_165;
      }

      v48 = 0;
      v49 = v12 & 0xFFFFFFFFFFFFLL;
      a1 = HIBYTE(i) & 0xF;
    }

    else
    {
      v49 = v12 & 0xFFFFFFFFFFFFLL;
      a1 = HIBYTE(i) & 0xF;
      if ((i & 0x2000000000000000) == 0)
      {
        goto LABEL_58;
      }
    }

LABEL_59:
    v229 = v48;
    v228 = v49;
    if ((i & 0x1000000000000000) != 0)
    {
      break;
    }

    i;
    v3 = a1;
    if ((object & 0x1000000000000000) != 0)
    {
      goto LABEL_275;
    }

LABEL_61:
    v51 = __OFADD__(v47, v3);
    v52 = v47 + v3;
    if (!v51)
    {
      goto LABEL_62;
    }

LABEL_277:
    __break(1u);
LABEL_278:
    v208 = String.UTF8View._foreignCount()();
    v22 = v208 + 8;
    if (__OFADD__(v208, 8))
    {
      goto LABEL_280;
    }

LABEL_13:
    v23 = i & ~object;
    if ((v23 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(object & 0xFFFFFFFFFFFFFFFLL))
    {
      v24 = _StringGuts.nativeUnusedCapacity.getter(i, object);
      if (v25)
      {
        goto LABEL_302;
      }

      if (v22 > 15)
      {
LABEL_24:
        v27 = v23 & 0x2000000000000000;
        v28 = _StringGuts.nativeUnusedCapacity.getter(i, object);
        if ((v29 & 1) != 0 || v28 <= 7)
        {
          if (v27)
          {
            swift_isUniquelyReferenced_nonNull_native(object & 0xFFFFFFFFFFFFFFFLL);
          }

          v30 = _StringGuts.nativeCapacity.getter(i, object);
          if (v31)
          {
            v32 = 0;
          }

          else
          {
            v32 = v30;
          }

          if (v32 + 0x4000000000000000 < 0)
          {
            __break(1u);
LABEL_295:
            v215 = _StringObject.sharedUTF8.getter(v12, i);
            if (v216 >= v228)
            {
              v65 = v215;
              v67 = v216;
              v66 = v228;
              goto LABEL_88;
            }

LABEL_298:
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v33 = 2 * v32;
          if (v33 > v22)
          {
            v22 = v33;
          }

LABEL_34:
          _StringGuts.grow(_:)(v22);
        }

        else if (!v27 || !swift_isUniquelyReferenced_nonNull_native(object & 0xFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_34;
        }

        v233 = xmmword_18071DFB0;
        closure #1 in _StringGuts.append(_:)(&v233, 8uLL, &v234, 1);
        swift_bridgeObjectRelease_n(0xE800000000000000, 2);
        v232 = a2;
        if (a1)
        {
          goto LABEL_47;
        }

        goto LABEL_36;
      }

      if ((object & 0x2000000000000000) != 0)
      {
LABEL_115:
        v12 = object;
        goto LABEL_116;
      }

      if (v24 >= 8)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v22 > 15)
      {
        goto LABEL_24;
      }

      if ((object & 0x2000000000000000) != 0)
      {
        goto LABEL_115;
      }
    }

    if ((object & 0x1000000000000000) != 0)
    {
      i = _StringGuts._foreignConvertedToSmall()(i, object);
      v12 = v202;
    }

    else
    {
      if ((i & 0x1000000000000000) != 0)
      {
        v26 = ((object & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v26 = _StringObject.sharedUTF8.getter(i, object);
        v12 = v221;
      }

      closure #1 in _StringGuts._convertedToSmall()(v26, v12, &v233, v21);
      v12 = *(&v233 + 1);
      i = v233;
    }

LABEL_116:
    v3 = 0x203A747261747328;
    countAndFlagsBits = 0xE800000000000000;
    0xE800000000000000;
    v88._rawBits = 1;
    v89._rawBits = 524289;
    v90._rawBits = _StringGuts.validateScalarRange(_:)(v88, v89, 0x203A747261747328uLL, 0xE800000000000000)._rawBits;
    if (v90._rawBits < 0x10000)
    {
      v90._rawBits |= 3;
    }

    if (v90._rawBits >> 16 || (v91._rawBits & 0xFFFFFFFFFFFF0000) != 0x80000)
    {
      v3 = specialized static String._copying(_:)(v90._rawBits, v91._rawBits, 0x203A747261747328uLL, 0xE800000000000000);
      countAndFlagsBits = v92;
      0xE800000000000000;
    }

    if ((countAndFlagsBits & 0x2000000000000000) != 0)
    {
      countAndFlagsBits;
      goto LABEL_123;
    }

LABEL_290:
    if ((countAndFlagsBits & 0x1000000000000000) != 0)
    {
      v3 = _StringGuts._foreignConvertedToSmall()(v3, countAndFlagsBits);
      v227 = v226;
      countAndFlagsBits;
      countAndFlagsBits = v227;
    }

    else
    {
      if ((v3 & 0x1000000000000000) != 0)
      {
        v213 = ((countAndFlagsBits & 0xFFFFFFFFFFFFFFFLL) + 32);
        v214 = v3 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v213 = _StringObject.sharedUTF8.getter(v3, countAndFlagsBits);
      }

      closure #1 in _StringGuts._convertedToSmall()(v213, v214, &v233, v61);
      countAndFlagsBits;
      countAndFlagsBits = *(&v233 + 1);
      v3 = v233;
    }

LABEL_123:
    v93 = HIBYTE(v12) & 0xF;
    v94 = HIBYTE(countAndFlagsBits) & 0xF;
    v95 = v94 + v93;
    if (v94 + v93 > 0xF)
    {
      goto LABEL_302;
    }

    0xE800000000000000;
    if (v94)
    {
      v96 = 0;
      v97 = 0;
      v98 = 8 * v93;
      do
      {
        v99 = countAndFlagsBits >> (v96 & 0x38);
        if (v97 < 8)
        {
          v99 = v3 >> v96;
        }

        v100 = (v99 << (v98 & 0x38)) | ((-255 << (v98 & 0x38)) - 1) & v12;
        v101 = (v99 << v98) | ((-255 << v98) - 1) & i;
        if (v93 <= 7)
        {
          i = v101;
        }

        else
        {
          v12 = v100;
        }

        ++v93;
        v98 += 8;
        v96 += 8;
        ++v97;
      }

      while (8 * v94 != v96);
    }

    object;
    0xE800000000000000;
    v102 = 0xA000000000000000;
    if (!(i & 0x8080808080808080 | v12 & 0x80808080808080))
    {
      v102 = 0xE000000000000000;
    }

    v234._countAndFlagsBits = i;
    v234._object = (v102 & 0xFF00000000000000 | (v95 << 56) | v12 & 0xFFFFFFFFFFFFFFLL);
    v232 = a2;
    if (a1)
    {
      goto LABEL_47;
    }

LABEL_36:
    v12 = 7104878;
  }

  swift_bridgeObjectRetain_n(i, 2);
  v203._rawBits = 1;
  v204._rawBits = (a1 << 16) | 1;
  v205._rawBits = _StringGuts.validateScalarRange(_:)(v203, v204, v12, i)._rawBits;
  if (v205._rawBits < 0x10000)
  {
    v205._rawBits |= 3;
  }

  v3 = String.UTF8View.distance(from:to:)(v205, v206);
  i;
  if ((object & 0x1000000000000000) == 0)
  {
    goto LABEL_61;
  }

LABEL_275:
  v207 = String.UTF8View._foreignCount()();
  v52 = v207 + v3;
  if (__OFADD__(v207, v3))
  {
    goto LABEL_277;
  }

LABEL_62:
  v53 = countAndFlagsBits & ~object;
  if ((v53 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(object & 0xFFFFFFFFFFFFFFFLL))
  {
    if (v52 > 15)
    {
      goto LABEL_73;
    }

    if ((object & 0x2000000000000000) != 0)
    {
LABEL_90:
      v4 = object;
    }

    else
    {
LABEL_68:
      if ((object & 0x1000000000000000) != 0)
      {
        countAndFlagsBits = _StringGuts._foreignConvertedToSmall()(countAndFlagsBits, object);
        v4 = v200;
      }

      else
      {
        if ((countAndFlagsBits & 0x1000000000000000) != 0)
        {
          v56 = ((object & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v56 = _StringObject.sharedUTF8.getter(countAndFlagsBits, object);
          a2 = v219;
        }

        closure #1 in _StringGuts._convertedToSmall()(v56, a2, &v233, v50);
        v4 = *(&v233 + 1);
        countAndFlagsBits = v233;
      }
    }

    i;
    v71._rawBits = 1;
    v72._rawBits = (a1 << 16) | 1;
    v73._rawBits = _StringGuts.validateScalarRange(_:)(v71, v72, v12, i)._rawBits;
    if (v73._rawBits < 0x10000)
    {
      v73._rawBits |= 3;
    }

    if (v73._rawBits >> 16 || v74._rawBits >> 16 != a1)
    {
      v12 = specialized static String._copying(_:)(v73._rawBits, v74._rawBits, v12, i);
      v3 = v76;
      i;
    }

    else
    {
      v3 = i;
    }

    if ((v3 & 0x2000000000000000) != 0)
    {
      v3;
LABEL_102:
      v77 = HIBYTE(v4) & 0xF;
      v78 = HIBYTE(v3) & 0xF;
      v79 = v78 + v77;
      if (v78 + v77 > 0xF)
      {
        goto LABEL_302;
      }

      i;
      if (v78)
      {
        v80 = 0;
        v81 = 0;
        v82 = 8 * v77;
        do
        {
          v83 = v3 >> (v80 & 0x38);
          if (v81 < 8)
          {
            v83 = v12 >> v80;
          }

          v84 = (v83 << (v82 & 0x38)) | ((-255 << (v82 & 0x38)) - 1) & v4;
          v85 = (v83 << v82) | ((-255 << v82) - 1) & countAndFlagsBits;
          if (v77 <= 7)
          {
            countAndFlagsBits = v85;
          }

          else
          {
            v4 = v84;
          }

          ++v77;
          v82 += 8;
          v80 += 8;
          ++v81;
        }

        while (8 * v78 != v80);
      }

      object;
      i;
      v86 = 0xA000000000000000;
      if (!(countAndFlagsBits & 0x8080808080808080 | v4 & 0x80808080808080))
      {
        v86 = 0xE000000000000000;
      }

      v87 = (v86 & 0xFF00000000000000 | (v79 << 56) | v4 & 0xFFFFFFFFFFFFFFLL);
LABEL_165:
      v234._countAndFlagsBits = countAndFlagsBits;
      v234._object = v87;
      goto LABEL_166;
    }

LABEL_281:
    if ((v3 & 0x1000000000000000) != 0)
    {
      v12 = _StringGuts._foreignConvertedToSmall()(v12, v3);
      v223 = v222;
      v3;
      v3 = v223;
    }

    else
    {
      if ((v12 & 0x1000000000000000) != 0)
      {
        v209 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v210 = v12 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v209 = _StringObject.sharedUTF8.getter(v12, v3);
      }

      closure #1 in _StringGuts._convertedToSmall()(v209, v210, &v233, v21);
      v3;
      v3 = *(&v233 + 1);
      v12 = v233;
    }

    goto LABEL_102;
  }

  v54 = _StringGuts.nativeUnusedCapacity.getter(countAndFlagsBits, object);
  if (v55)
  {
    goto LABEL_302;
  }

  if (v52 <= 15)
  {
    if ((object & 0x2000000000000000) != 0)
    {
      goto LABEL_90;
    }

    if (v54 < v3)
    {
      goto LABEL_68;
    }
  }

LABEL_73:
  v57 = v53 & 0x2000000000000000;
  v58 = _StringGuts.nativeUnusedCapacity.getter(countAndFlagsBits, object);
  if ((v59 & 1) == 0 && v58 >= v3)
  {
    if (!v57 || !swift_isUniquelyReferenced_nonNull_native(object & 0xFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_83;
    }

    goto LABEL_84;
  }

  if (v57)
  {
    swift_isUniquelyReferenced_nonNull_native(object & 0xFFFFFFFFFFFFFFFLL);
  }

  v60 = _StringGuts.nativeCapacity.getter(countAndFlagsBits, object);
  if (v62)
  {
    v63 = 0;
  }

  else
  {
    v63 = v60;
  }

  if (v63 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_290;
  }

  v64 = 2 * v63;
  if (v64 > v52)
  {
    v52 = v64;
  }

LABEL_83:
  _StringGuts.grow(_:)(v52);
LABEL_84:
  if ((i & 0x1000000000000000) != 0)
  {
    _StringGuts._foreignAppendInPlace(_:)(v12, i, 0, a1);
  }

  else
  {
    if (v229)
    {
      if ((v12 & 0x1000000000000000) == 0)
      {
        goto LABEL_295;
      }

      v65 = (i & 0xFFFFFFFFFFFFFFFLL) + 32;
      v66 = v228;
      v67 = v228;
LABEL_88:
      v68 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v66, v65, v67);
      v70 = v12 >> 63;
    }

    else
    {
      v70 = (i >> 62) & 1;
      *&v233 = v12;
      *(&v233 + 1) = i & 0xFFFFFFFFFFFFFFLL;
      v68 = &v233;
      v69 = HIBYTE(i) & 0xF;
    }

    closure #1 in _StringGuts.append(_:)(v68, v69, &v234, v70);
  }

  swift_bridgeObjectRelease_n(i, 2);
LABEL_166:
  v111 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", count: ", 9uLL, 1);
  v112 = v111._countAndFlagsBits;
  v114 = v234._countAndFlagsBits;
  v113 = v234._object;
  v115 = (v234._object >> 56) & 0xF;
  v116 = v234._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v234._object & 0x2000000000000000) != 0)
  {
    v117 = (v234._object >> 56) & 0xF;
  }

  else
  {
    v117 = v234._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v117 && (v234._countAndFlagsBits & ~v234._object & 0x2000000000000000) == 0)
  {
    v234._object;
    v234 = v111;
    goto LABEL_230;
  }

  v118 = (v111._object & 0x2000000000000000) == 0;
  v119 = (v111._object >> 56) & 0xF;
  if ((v234._object & 0x2000000000000000) != 0)
  {
    if ((v111._object & 0x2000000000000000) == 0)
    {
      v120 = v111._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      v118 = 1;
      goto LABEL_176;
    }

    v142 = v115 + v119;
    if (v115 + v119 < 0x10)
    {
      v128 = v232;
      if (v119)
      {
        v154 = 0;
        v155 = 0;
        v156 = 8 * v115;
        v157 = 8 * v119;
        v158 = v234._object;
        v127 = v231;
        do
        {
          v159 = v111._object >> (v154 & 0x38);
          if (v155 < 8)
          {
            v159 = v111._countAndFlagsBits >> v154;
          }

          v160 = (v159 << (v156 & 0x38)) | ((-255 << (v156 & 0x38)) - 1) & v158;
          v161 = (v159 << v156) | ((-255 << v156) - 1) & v114;
          if (v115 <= 7)
          {
            v114 = v161;
          }

          else
          {
            v158 = v160;
          }

          ++v115;
          v156 += 8;
          v154 += 8;
          ++v155;
        }

        while (v157 != v154);
      }

      else
      {
        v158 = v234._object;
        v127 = v231;
      }

      v234._object;
      v111._object;
      v199 = 0xA000000000000000;
      if (!(v114 & 0x8080808080808080 | v158 & 0x80808080808080))
      {
        v199 = 0xE000000000000000;
      }

      v234._countAndFlagsBits = v114;
      v234._object = (v199 & 0xFF00000000000000 | (v142 << 56) | v158 & 0xFFFFFFFFFFFFFFLL);
      goto LABEL_231;
    }

    v118 = 0;
    v121 = (v111._object >> 56) & 0xF;
    v230 = v111._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v111._object & 0x1000000000000000) != 0)
    {
      goto LABEL_206;
    }

LABEL_178:
    v111._object;
    v123 = v121;
    if ((v113 & 0x1000000000000000) == 0)
    {
      goto LABEL_179;
    }

LABEL_209:
    v147 = String.UTF8View._foreignCount()();
    v124 = v147 + v123;
    if (__OFADD__(v147, v123))
    {
      goto LABEL_211;
    }

LABEL_180:
    if ((v114 & ~v113 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v113 & 0xFFFFFFFFFFFFFFFLL))
    {
      v125 = _StringGuts.nativeUnusedCapacity.getter(v114, v113);
      if (v126)
      {
        goto LABEL_302;
      }

      if (v124 > 15)
      {
        goto LABEL_191;
      }

      if ((v113 & 0x2000000000000000) == 0)
      {
        if (v125 < v123)
        {
LABEL_186:
          if ((v113 & 0x1000000000000000) == 0)
          {
            v127 = v231;
            v128 = v232;
            if ((v114 & 0x1000000000000000) != 0)
            {
              v129 = ((v113 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v129 = _StringObject.sharedUTF8.getter(v114, v113);
              v116 = v220;
            }

            closure #1 in _StringGuts._convertedToSmall()(v129, v116, &v233, v122);
            v130 = *(&v233 + 1);
            v114 = v233;
LABEL_199:
            v111._object;
            v136._rawBits = 1;
            v137._rawBits = (v121 << 16) | 1;
            v138._rawBits = _StringGuts.validateScalarRange(_:)(v136, v137, v111._countAndFlagsBits, v111._object)._rawBits;
            if (v138._rawBits < 0x10000)
            {
              v138._rawBits |= 3;
            }

            if (v138._rawBits >> 16 || v139._rawBits >> 16 != v121)
            {
              v112 = specialized static String._copying(_:)(v138._rawBits, v139._rawBits, v111._countAndFlagsBits, v111._object);
              v141 = v148;
              v111._object;
            }

            else
            {
              v141 = v111._object;
            }

            if ((v141 & 0x2000000000000000) != 0)
            {
              v141;
            }

            else if ((v141 & 0x1000000000000000) != 0)
            {
              v112 = _StringGuts._foreignConvertedToSmall()(v112, v141);
              v225 = v224;
              v141;
              v141 = v225;
            }

            else
            {
              if ((v112 & 0x1000000000000000) != 0)
              {
                v211 = ((v141 & 0xFFFFFFFFFFFFFFFLL) + 32);
                v212 = v112 & 0xFFFFFFFFFFFFLL;
              }

              else
              {
                v211 = _StringObject.sharedUTF8.getter(v112, v141);
              }

              closure #1 in _StringGuts._convertedToSmall()(v211, v212, &v233, v140);
              v141;
              v141 = *(&v233 + 1);
              v112 = v233;
            }

            v149 = specialized _SmallString.init(_:appending:)(v114, v130, v112, v141);
            if ((v151 & 1) == 0)
            {
              v152 = v149;
              v153 = v150;
              v113;
              swift_bridgeObjectRelease_n(v111._object, 2);
              v234._countAndFlagsBits = v152;
              v234._object = v153;
              goto LABEL_231;
            }

LABEL_302:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v114 = _StringGuts._foreignConvertedToSmall()(v114, v113);
          v130 = v201;
LABEL_198:
          v127 = v231;
          v128 = v232;
          goto LABEL_199;
        }

LABEL_191:
        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v124, v123);
        if ((v111._object & 0x1000000000000000) != 0)
        {
          goto LABEL_212;
        }

        if (!v118)
        {
          *&v233 = v111._countAndFlagsBits;
          *(&v233 + 1) = v111._object & 0xFFFFFFFFFFFFFFLL;
          closure #1 in _StringGuts.append(_:)(&v233, (v111._object >> 56) & 0xF, &v234, (v111._object & 0x4000000000000000) != 0);
          goto LABEL_229;
        }

        if ((v111._countAndFlagsBits & 0x1000000000000000) != 0)
        {
          v131 = (v111._object & 0xFFFFFFFFFFFFFFFLL) + 32;
          v132 = v230;
          v127 = v231;
          v133 = v230;
          v128 = v232;
        }

        else
        {
          v217 = _StringObject.sharedUTF8.getter(v111._countAndFlagsBits, v111._object);
          if (v218 < v230)
          {
            goto LABEL_298;
          }

          v131 = v217;
          v133 = v218;
          v127 = v231;
          v128 = v232;
          v132 = v230;
        }

        v134 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v132, v131, v133);
        closure #1 in _StringGuts.append(_:)(v134, v135, &v234, v111._countAndFlagsBits < 0);
        swift_bridgeObjectRelease_n(v111._object, 2);
        goto LABEL_231;
      }
    }

    else
    {
      if (v124 > 15)
      {
        goto LABEL_191;
      }

      if ((v113 & 0x2000000000000000) == 0)
      {
        goto LABEL_186;
      }
    }

    v130 = v113;
    goto LABEL_198;
  }

  v120 = v111._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  v121 = (v111._object >> 56) & 0xF;
  if ((v111._object & 0x2000000000000000) == 0)
  {
LABEL_176:
    v121 = v120;
  }

  v230 = v120;
  if ((v111._object & 0x1000000000000000) == 0)
  {
    goto LABEL_178;
  }

LABEL_206:
  swift_bridgeObjectRetain_n(v111._object, 2);
  v143._rawBits = 1;
  v144._rawBits = (v121 << 16) | 1;
  v145._rawBits = _StringGuts.validateScalarRange(_:)(v143, v144, v111._countAndFlagsBits, v111._object)._rawBits;
  if (v145._rawBits < 0x10000)
  {
    v145._rawBits |= 3;
  }

  v123 = String.UTF8View.distance(from:to:)(v145, v146);
  v111._object;
  if ((v113 & 0x1000000000000000) != 0)
  {
    goto LABEL_209;
  }

LABEL_179:
  v51 = __OFADD__(v117, v123);
  v124 = v117 + v123;
  if (!v51)
  {
    goto LABEL_180;
  }

LABEL_211:
  __break(1u);
LABEL_212:
  _StringGuts._foreignAppendInPlace(_:)(v111._countAndFlagsBits, v111._object, 0, v121);
LABEL_229:
  swift_bridgeObjectRelease_n(v111._object, 2);
LABEL_230:
  v127 = v231;
  v128 = v232;
LABEL_231:
  if (v127)
  {
    v162 = v128 - v127;
  }

  else
  {
    v162 = 0;
  }

  v164 = _int64ToString(_:radix:uppercase:)(v162, 10, 0, swift_int64ToString);
  v165 = v163;
  v166 = v234._object;
  v167 = (v234._object >> 56) & 0xF;
  if ((v234._object & 0x2000000000000000) == 0)
  {
    v167 = v234._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v167 && (v234._countAndFlagsBits & ~v234._object & 0x2000000000000000) == 0)
  {
    v234._object;
    v234._countAndFlagsBits = v164;
    v234._object = v165;
    goto LABEL_246;
  }

  if ((v234._object & 0x2000000000000000) != 0)
  {
    if ((v163 & 0x2000000000000000) != 0)
    {
      v169 = specialized _SmallString.init(_:appending:)(v234._countAndFlagsBits, v234._object, v164, v163);
      if (v171)
      {
        goto LABEL_244;
      }

      v197 = v169;
      v198 = v170;
      v166;
      v165;
      v234._countAndFlagsBits = v197;
      v234._object = v198;
      v165 = v198;
      v164 = v197;
      goto LABEL_246;
    }

LABEL_242:
    v168 = v164 & 0xFFFFFFFFFFFFLL;
    goto LABEL_245;
  }

  if ((v163 & 0x2000000000000000) == 0)
  {
    goto LABEL_242;
  }

LABEL_244:
  v168 = HIBYTE(v165) & 0xF;
LABEL_245:
  v165;
  _StringGuts.append(_:)(v164, v165, 0, v168, v172, v173, v174, v175, v176, v177, v178, v179);
  swift_bridgeObjectRelease_n(v165, 2);
  v164 = v234._countAndFlagsBits;
  v165 = v234._object;
LABEL_246:
  v180 = HIBYTE(v165) & 0xF;
  if ((v165 & 0x2000000000000000) == 0)
  {
    v180 = v164 & 0xFFFFFFFFFFFFLL;
  }

  if (v180 || (v164 & ~v165 & 0x2000000000000000) != 0)
  {
    if ((v165 & 0x2000000000000000) != 0 && (v181 = specialized _SmallString.init(_:appending:)(v164, v165, 0x29uLL, 0xE100000000000000), (v183 & 1) == 0))
    {
      v194 = v181;
      v193 = v182;
      v165;
      0xE100000000000000;
      v192 = v194;
    }

    else
    {
      0xE100000000000000;
      _StringGuts.append(_:)(41, 0xE100000000000000, 0, 1, v184, v185, v186, v187, v188, v189, v190, v191);
      swift_bridgeObjectRelease_n(0xE100000000000000, 2);
      v192 = v234._countAndFlagsBits;
      v193 = v234._object;
    }
  }

  else
  {
    v165;
    v193 = 0xE100000000000000;
    v192 = 41;
  }

  v195 = specialized static String.+ infix(_:_:)(0xD00000000000001DLL, 0x800000018071E390 | 0x8000000000000000, v192, v193);
  0x800000018071E390 | 0x8000000000000000;
  v193;
  return v195;
}
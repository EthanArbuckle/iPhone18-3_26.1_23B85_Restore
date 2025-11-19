uint64_t ValueCompressor.init<A>(values:offset:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v47 = a1;
  v10 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v12 = Collection.isEmpty.getter();
  if (v12)
  {
    a2 = 0;
    v13 = 0;
    v14 = 1;
LABEL_3:

    *a5 = v14;
    a5[1] = v13;
    a5[2] = a2;
    return result;
  }

  v47 = a1;
  MEMORY[0x28223BE20](v12);
  v45[2] = a3;
  v45[3] = a4;
  result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in ValueCompressor.init<A>(values:offset:), v45, v10, MEMORY[0x277D83B88], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v16);
  v17 = *(result + 16);
  if (v17)
  {
    v18 = result;
    v13 = *(result + 32);
    if (v17 > 3)
    {
      v19 = v17 & 0x7FFFFFFFFFFFFFFCLL;
      v20 = vdupq_n_s64(v13);
      v21 = (result + 48);
      v22 = v17 & 0x7FFFFFFFFFFFFFFCLL;
      v23 = v20;
      do
      {
        v20 = vbslq_s8(vcgtq_s64(v20, v21[-1]), v21[-1], v20);
        v23 = vbslq_s8(vcgtq_s64(v23, *v21), *v21, v23);
        v21 += 2;
        v22 -= 4;
      }

      while (v22);
      v24 = vbslq_s8(vcgtq_s64(v23, v20), v20, v23);
      v25 = vextq_s8(v24, v24, 8uLL).u64[0];
      v13 = vbsl_s8(vcgtd_s64(v25, v24.i64[0]), *v24.i8, v25);
      if (v17 == v19)
      {
LABEL_14:

        v30 = *(v18 + 16);
        if (v30)
        {
          v46 = a2;
          v47 = MEMORY[0x277D84F90];
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30, 0);
          v31 = 32;
          v32 = v47;
          while (1)
          {
            v33 = *(v18 + v31);
            v34 = v33 - v13;
            if (__OFSUB__(v33, v13))
            {
              break;
            }

            v47 = v32;
            v36 = v32[2];
            v35 = v32[3];
            if (v36 >= v35 >> 1)
            {
              result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
              v32 = v47;
            }

            v32[2] = v36 + 1;
            v32[v36 + 4] = v34;
            v31 += 8;
            if (!--v30)
            {

              a2 = v46;
              v37 = v32[2];
              if (!v37)
              {
                goto LABEL_32;
              }

              goto LABEL_21;
            }
          }
        }

        else
        {

          v32 = MEMORY[0x277D84F90];
          v37 = *(MEMORY[0x277D84F90] + 16);
          if (v37)
          {
LABEL_21:
            v38 = 0;
            v14 = v32[4];
LABEL_22:
            while (v37 != v38)
            {
              if (v38 >= v37)
              {
                goto LABEL_33;
              }

              v39 = v38 + 1;
              if (__OFADD__(v38, 1))
              {
                goto LABEL_34;
              }

              v40 = v32[v38++ + 4];
              if (v40 >= 1)
              {
                v38 = v39;
                while (1)
                {
                  v41 = v40;
                  v42 = v14 / v40;
                  v43 = v14 / v40 * v40;
                  if ((v42 * v41) >> 64 != v43 >> 63)
                  {
                    goto LABEL_35;
                  }

                  v44 = __OFSUB__(v14, v43);
                  v40 = v14 - v43;
                  if (v44)
                  {
                    goto LABEL_36;
                  }

                  v14 = v41;
                  if (v40 <= 0)
                  {
                    v14 = v41;
                    goto LABEL_22;
                  }
                }
              }
            }

            goto LABEL_3;
          }

LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
        }

        __break(1u);
        goto LABEL_38;
      }
    }

    else
    {
      v19 = 0;
    }

    v26 = v17 - v19;
    v27 = (result + 8 * v19 + 32);
    do
    {
      v29 = *v27++;
      v28 = v29;
      if (v29 < v13)
      {
        v13 = v28;
      }

      --v26;
    }

    while (v26);
    goto LABEL_14;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t closure #1 in ValueCompressor.init<A>(values:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v31 = a4;
  v7 = *(*(a3 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v29[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v29[-v16];
  (*(v11 + 16))(&v29[-v16], a1, a2);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    v32 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v30 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v18 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v30)
    {
      if (v18 > 64)
      {
LABEL_8:
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v19 = *(*(a3 + 32) + 8);
        v20 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v11 + 8))(v15, a2);
        if ((v20 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_25:
        __break(1u);
        return result;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v22 = *(*(a3 + 32) + 8);
      v23 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v11 + 8))(v15, a2);
      if (v23)
      {
        goto LABEL_25;
      }

LABEL_13:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_14;
    }

    if (v18 < 64)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v32 = 0x7FFFFFFFFFFFFFFFLL;
    v24 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v25 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v24 & 1) == 0)
    {
      break;
    }

    if (v25 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v26 = *(*(a3 + 32) + 8);
    v27 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v11 + 8))(v15, a2);
    if (v27)
    {
      __break(1u);
LABEL_19:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v25 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_24:
  v28 = dispatch thunk of BinaryInteger._lowWord.getter();
  result = (*(v11 + 8))(v17, a2);
  *v31 = v28;
  return result;
}

uint64_t ValueCompressor.compress<A, B>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v45 = a3;
  v46 = a5;
  v44 = a6;
  v10 = *(*(a4 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = *(a2 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v43 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v42 - v18;
  v21 = *v6;
  v20 = v6[1];
  v47 = v6[2];
  v48 = v20;
  (*(v14 + 16))(&v42 - v18, a1, a2);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    v49 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_13;
      }

LABEL_8:
      lazy protocol witness table accessor for type Int and conformance Int();
      v24 = v43;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v25 = *(*(a4 + 32) + 8);
      v26 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v14 + 8))(v24, a2);
      if (v26)
      {
        goto LABEL_36;
      }

      goto LABEL_14;
    }

    v22 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v23 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v22)
    {
      if (v23 <= 64)
      {
        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v28 = v43;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v29 = *(*(a4 + 32) + 8);
        v30 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v14 + 8))(v28, a2);
        if (v30)
        {
          goto LABEL_36;
        }

        goto LABEL_13;
      }

      goto LABEL_8;
    }

    if (v23 < 64)
    {
LABEL_13:
      dispatch thunk of BinaryInteger._lowWord.getter();
    }
  }

LABEL_14:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v49 = 0x7FFFFFFFFFFFFFFFLL;
    v31 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v32 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v31 & 1) == 0)
    {
      break;
    }

    if (v32 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    lazy protocol witness table accessor for type Int and conformance Int();
    v33 = v43;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v34 = *(*(a4 + 32) + 8);
    v35 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v14 + 8))(v33, a2);
    if (v35)
    {
      __break(1u);
LABEL_19:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v32 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_24:
  v36 = dispatch thunk of BinaryInteger._lowWord.getter();
  result = (*(v14 + 8))(v19, a2);
  v37 = v36 - v48;
  if (__OFSUB__(v36, v48))
  {
    __break(1u);
    goto LABEL_33;
  }

  if (!v21)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v37 != 0x8000000000000000 || v21 != -1)
  {
    v39 = v37 / v21;
    v40 = __OFADD__(v39, v47);
    v41 = v39 + v47;
    if (!v40)
    {
      v49 = v41;
      lazy protocol witness table accessor for type Int and conformance Int();
      return dispatch thunk of BinaryInteger.init<A>(_:)();
    }

LABEL_34:
    __break(1u);
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t ValueCompressor.compress<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(v4 + 2);
  v12 = *v4;
  v13 = v8;
  v11 = a1;
  v9 = lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  return ValueCompressor.compress<A, B>(_:)(&v11, MEMORY[0x277D84D38], a2, v9, a3, a4);
}

uint64_t JustIterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 16))(a2, v2, v5);

  return $defer #1 <A>() in JustIterator.next()(v2, v4);
}

uint64_t $defer #1 <A>() in JustIterator.next()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(*(a2 - 8) + 56);

  return v5(a1, 1, 1, a2);
}

uint64_t ConcatIterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  dispatch thunk of IteratorProtocol.next()();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 48);
  if (v14(v12, 1, AssociatedTypeWitness) == 1)
  {
    v15 = *(a1 + 24);
    v16 = *(a1 + 40);
    v17 = v2 + *(a1 + 52);
    dispatch thunk of IteratorProtocol.next()();
    result = v14(v12, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (*(v9 + 8))(v12, v8);
    }
  }

  else
  {
    (*(v13 + 32))(a2, v12, AssociatedTypeWitness);
    return (*(v13 + 56))(a2, 0, 1, AssociatedTypeWitness);
  }

  return result;
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance TraceConfig.Version()
{
  if (*v0)
  {
    return 12662;
  }

  else
  {
    return 12406;
  }
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance CircularBuffer.CheckoutRef()
{
  v1 = *v0;
  v4 = v0[1];
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](64, 0xE100000000000000);
  swift_getMetatypeMetadata();
  v2 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v2);

  return v5;
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance CircularBuffer.Transaction(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = v3[1];
  v15 = *v3;
  v16 = v7;
  v8 = v3[3];
  v17 = v3[2];
  v18 = v8;
  *&v10 = a1;
  *(&v10 + 1) = 1;
  v11 = v4;
  v12 = 0;
  v13 = v5;
  v14 = v6;
  return CircularBuffer.Transaction.describe(state:)(&v10);
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance CircularBuffer.Buffer(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v10 = *(v3 + 6);
  *(v3 + 28);
  return CircularBuffer.Buffer.describe(state:)();
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance ATRCWriter(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = *(v3 + 8);
  v10[0] = a1;
  v10[1] = 1;
  v11 = v4;
  v12 = 0;
  v13 = v5;
  v14 = v6;
  closure #1 in ATRCWriter.describe(state:)(v7 + 8, v10, &v9);
  return v9;
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance SnapshotConsumer(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *(a3 + 4);
  v15 = *v5;
  v10[0] = a1;
  v10[1] = 1;
  v11 = v6;
  v12 = 0;
  v13 = v7;
  v14 = v8;
  return (*(a5 + 32))(v10, a4, a5);
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance T_Header.Flags(uint64_t a1, char *a2, uint64_t *a3)
{
  v8 = *v3;
  v5 = *a2;
  v6 = *a3;
  v7 = *(a3 + 4);
  return T_Header.Flags.describe(state:)();
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance T_Header(uint64_t a1, char *a2, uint64_t *a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = v3[2];
  v11 = *(v3 + 6);
  v5 = *a2;
  v6 = *a3;
  v7 = *(a3 + 4);
  return T_Header.describe(state:)();
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance T_RawTreeNode(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v11[0] = a1;
  v11[1] = 1;
  v12 = v4;
  v13 = 0;
  v14 = v5;
  v15 = v6;
  return T_RawTreeNode.describe(state:)(v11, v7, v8, v9);
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance T_TreeValueNode(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v10 = v3[3];
  v12[0] = a1;
  v12[1] = 1;
  v13 = v4;
  v14 = 0;
  v15 = v5;
  v16 = v6;
  return T_TreeValueNode.describe(state:)(v12, v7, v8, v9);
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance T_TracepointID.Flags(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = *v3;
  v9[0] = a1;
  v9[1] = 1;
  v10 = v4;
  v11 = 0;
  v12 = v5;
  v13 = v6;
  return T_TracepointID.Flags.describe(state:)(v9, v7);
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance T_TracepointIDV0(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t))
{
  v7 = *a2;
  v8 = *a3;
  v9 = *(a3 + 4);
  v10 = *v6;
  v12[0] = a1;
  v12[1] = 1;
  v13 = v7;
  v14 = 0;
  v15 = v8;
  v16 = v9;
  return a6(v12, v10);
}

Swift::Void __swiftcall Array._checkSubscript_mutating(_:)(Swift::Int a1)
{
  v2 = v1;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  if (a1 < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v5 = v2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }
}

void specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(uint64_t *a1, size_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      *(&__buf + 7) = 0;
      *&__buf = 0;
      arc4random_buf(&__buf, a2);
      goto LABEL_20;
    }

    v8 = *a1;

    outlined consume of Data._Representation(v4, v3);
    *&__buf = v4;
    *(&__buf + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_26C335980;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v9 = *(__buf + 16);
    v10 = __DataStorage._bytes.getter();
    if (!v10)
    {
      __break(1u);
      goto LABEL_27;
    }

    v11 = v10;
    v12 = __DataStorage._offset.getter();
    v13 = __OFSUB__(v9, v12);
    v14 = v9 - v12;
    if (!v13)
    {
      MEMORY[0x26D69C520]();
      arc4random_buf((v11 + v14), a2);
      v15 = *(&__buf + 1) | 0x8000000000000000;
      *a1 = __buf;
LABEL_19:
      a1[1] = v15;
      goto LABEL_20;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v5)
  {
    outlined consume of Data._Representation(v4, v3);
    *&__buf = v4;
    WORD4(__buf) = v3;
    BYTE10(__buf) = BYTE2(v3);
    BYTE11(__buf) = BYTE3(v3);
    BYTE12(__buf) = BYTE4(v3);
    BYTE13(__buf) = BYTE5(v3);
    BYTE14(__buf) = BYTE6(v3);
    arc4random_buf(&__buf, a2);
    v6 = DWORD2(__buf) | ((WORD6(__buf) | (BYTE14(__buf) << 16)) << 32);
    *a1 = __buf;
    a1[1] = v6;
LABEL_20:
    v26 = *MEMORY[0x277D85DE8];
    return;
  }

  v16 = v3 & 0x3FFFFFFFFFFFFFFFLL;

  outlined consume of Data._Representation(v4, v3);
  *a1 = xmmword_26C335980;
  outlined consume of Data._Representation(0, 0xC000000000000000);
  v17 = v4 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v17 < v4)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v4, __DataStorage._offset.getter()))
    {
LABEL_25:
      __break(1u);
    }

    v18 = type metadata accessor for __DataStorage();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v21 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v16 = v21;
  }

  if (v17 < v4)
  {
    goto LABEL_22;
  }

  v22 = __DataStorage._bytes.getter();
  if (v22)
  {
    v23 = v22;
    v24 = __DataStorage._offset.getter();
    v25 = v4 - v24;
    if (!__OFSUB__(v4, v24))
    {
      MEMORY[0x26D69C520]();
      arc4random_buf((v23 + v25), a2);

      v15 = v16 | 0x4000000000000000;
      *a1 = v4;
      goto LABEL_19;
    }

    goto LABEL_23;
  }

LABEL_27:
  __break(1u);
}

uint64_t _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA14EventAggregate_p_Tt0g5Tf4e_n(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2;
  v10 = a3;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v8);
  (*(*(a2 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a2);
  v6 = swift_slowAlloc();
  outlined init with take of Inspectable(&v8, v6);
  return v6;
}

uint64_t specialized Strong.init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = static UnsafeMutablePointer.allocate(capacity:)();
  (*(v4 + 16))(v7, a1, a2);
  (*(v4 + 32))(v8, v7, a2);
  return v8;
}

uint64_t specialized HeterogeneousBuffer.stride<A>(of:)(uint64_t a1)
{
  v1 = *(*(a1 - 8) + 72);
  if (v1 <= 8)
  {
    v1 = 8;
  }

  result = v1 + 8;
  if (__OFADD__(v1, 8))
  {
    __break(1u);
  }

  return result;
}

BOOL specialized static UnsafeMutableRawBufferPointer.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    if (!a3)
    {
      v5 = 0;
      v4 = 0;
      return v4 == v5;
    }

    return 0;
  }

  if (a1 != a3)
  {
    return 0;
  }

  v4 = a2 - a1;
  v5 = a4 - a1;
  return v4 == v5;
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void specialized UnsafeArray.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a1;
  v40 = *(a2 - 8);
  v5 = *(v40 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v38 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - v8;
  v10 = type metadata accessor for Optional();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v32 - v13;
  v15 = *(a3 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v39 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  v18 = *(v33 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v20 = &v32 - v19;
  v21 = dispatch thunk of Sequence.underestimatedCount.getter();
  v22 = UnsafeArray.init(capacity:)(v21);
  v24 = HIDWORD(v23);
  v42 = v22;
  v43 = v23;
  (*(v15 + 16))(v39, v37, a3);
  v25 = v40;
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = v20;
  v37 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v35 = *(v25 + 48);
  v36 = v25 + 48;
  if (v35(v14, 1, a2) == 1)
  {
LABEL_8:
    (*(v33 + 8))(v39, AssociatedTypeWitness);
  }

  else
  {
    v27 = *(v25 + 32);
    v34 = v25 + 16;
    while (1)
    {
      v27(v9, v14, a2);
      if (v43 == v24)
      {
        type metadata accessor for UnsafeArray();
        UnsafeArray.growToCapacity(_:)(2 * v24);
      }

      if (!v42)
      {
        break;
      }

      v28 = HIDWORD(v43);
      v29 = v42 + *(v40 + 72) * HIDWORD(v43);
      v30 = v38;
      (*(v40 + 16))(v38, v9, a2);
      v27(v29, v30, a2);
      v31 = __CFADD__(v28, 1);
      LODWORD(v24) = v28 + 1;
      if (v31)
      {
        __break(1u);
        break;
      }

      HIDWORD(v43) = v24;
      (*(v25 + 8))(v9, a2);
      dispatch thunk of IteratorProtocol.next()();
      if (v35(v14, 1, a2) == 1)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void specialized UnsafeArray.init(arrayLiteral:)(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v3 = type metadata accessor for Array();
  swift_getWitnessTable();
  specialized UnsafeArray.init<A>(_:)(&v4, a2, v3);
}

void partial apply for closure #1 in Atomic.subscript.read()
{
  v1 = *(v0 + 24);
  if (*(v1 + 4) == 1)
  {
    *(v1 + 4) = 0;
    os_unfair_lock_unlock(v1);
  }
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = *(type metadata accessor for Range() + 36);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t specialized Inspectable.description(depth:mode:context:)(unsigned __int8 a1)
{
  v1 = 0x737961776C61;
  v2 = 0x656D686361747461;
  if (a1 != 5)
  {
    v2 = 1885956979;
  }

  v3 = 0xD000000000000011;
  if (a1 != 3)
  {
    v3 = 0x73657461647075;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 1701603654;
  if (a1 != 1)
  {
    v4 = 0x7275746375727473;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t specialized Inspectable.description(depth:mode:context:)(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  if (!HIBYTE(a3))
  {
    a2 = *(a2 + 176);
LABEL_4:
    v4 = *(a2 + 136);
    v10 = v4[4];
    v11 = v4[5];
    v12 = v4[6];
    v6 = *v4;
    v7 = v4[1];
    v8 = v4[2];
    v9 = v4[3];
    return Interpreter.Storage.Types.subscript.getter(a4);
  }

  if (HIBYTE(a3) == 1)
  {
    goto LABEL_4;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

os_unfair_lock_s *specialized Atomic.init(initializedTo:)(uint64_t a1)
{
  v4 = Atomic.init()();
  os_unfair_lock_lock_with_options();
  v2 = type metadata accessor for Atomic();
  Atomic.initialize(_:)(a1, v2);
  os_unfair_lock_unlock(v4);
  return v4;
}

void partial apply for closure #1 in Atomic.subscript.modify()
{
  v1 = *(v0 + 24);
  *(v1 + 4) = 0;
  os_unfair_lock_unlock(v1);
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #2 in IterativeTreeTraversal._run(_:_:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return closure #1 in IterativeTreeTraversal._run(_:_:)(a1);
}

uint64_t specialized MutableCollection<>.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  type metadata accessor for Slice();
  swift_getWitnessTable();

  return _writeBackMutableSlice<A, B>(_:bounds:slice:)();
}

uint64_t specialized Data.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return specialized Data.InlineData.init(count:)(result);
    }

    else
    {
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_26C2953A8()
{
  v1 = *(v0 + 16);
  if (v1 >= 2)
  {
  }

  v2 = *(v0 + 32);
  if (v2 >= 2)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id outlined copy of NSTask.OutputOption(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_26C29541C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t instantiation function for generic protocol witness table for Box<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Strong<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for UnownedSafe<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Unowned<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InspectionState.Mode and conformance InspectionState.Mode()
{
  result = lazy protocol witness table cache variable for type InspectionState.Mode and conformance InspectionState.Mode;
  if (!lazy protocol witness table cache variable for type InspectionState.Mode and conformance InspectionState.Mode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InspectionState.Mode and conformance InspectionState.Mode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HeterogeneousBuffer.Index and conformance HeterogeneousBuffer.Index()
{
  result = lazy protocol witness table cache variable for type HeterogeneousBuffer.Index and conformance HeterogeneousBuffer.Index;
  if (!lazy protocol witness table cache variable for type HeterogeneousBuffer.Index and conformance HeterogeneousBuffer.Index)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeterogeneousBuffer.Index and conformance HeterogeneousBuffer.Index);
  }

  return result;
}

uint64_t sub_26C295C0C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  *a2 = Box.opaque.getter();

  return swift_unknownObjectRetain();
}

uint64_t sub_26C295C48(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = swift_unknownObjectRetain();
  return Box.value.setter(v4);
}

__n128 sub_26C295E34(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

__n128 sub_26C295E5C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t _s21SwiftUITracingSupport6UniqueVMi_0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for Atomic.Params()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for Atomic.Params(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for Atomic.Params(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata completion function for Atomic.Storage(uint64_t a1)
{
  type metadata accessor for os_unfair_lock_s(319);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    type metadata accessor for Atomic.Params();
    if (v4 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for Atomic.Storage(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 6) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))((a1 + v6 + 6) & ~v6);
      }

      v15 = *(a1 + 4);
      v16 = v15 >= 2;
      v17 = (v15 + 2147483646) & 0x7FFFFFFF;
      if (v16)
      {
        return (v17 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for Atomic.Storage(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 6) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 6] & ~v9;

    v19(v20);
  }

  else if (a2 > 0xFE)
  {
    *(a1 + 2) = a2 - 255;
  }

  else
  {
    a1[4] = a2 + 1;
  }
}

uint64_t type metadata instantiation function for UnownedSafe()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t storeEnumTagSinglePayload for Atomic(uint64_t result, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a5;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for Unowned()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for Weak()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for UnsafeArray()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata completion function for EnumeratedReversedIterator(uint64_t a1)
{
  v2 = *(a1 + 16);
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(*(*(a1 + 24) + 8) + 8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return AssociatedTypeWitness;
}

uint64_t getEnumTagSinglePayload for EnumeratedReversedIterator(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(*(*(a3 + 24) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v6 + 64) + v12;
  if (a2 <= v13)
  {
    goto LABEL_28;
  }

  v15 = (v14 & ~v12) + *(*(AssociatedTypeWitness - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v18 = ((a2 - v13 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v18 < 2)
    {
LABEL_27:
      if (v13)
      {
LABEL_28:
        if (v7 >= v11)
        {
          v24 = *(v6 + 48);

          return v24(a1, v7, v5);
        }

        else
        {
          v22 = *(v10 + 48);

          return v22((a1 + v14) & ~v12);
        }
      }

      return 0;
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_27;
  }

LABEL_14:
  v19 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v19 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v20 = v15;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v13 + (v21 | v19) + 1;
}

void storeEnumTagSinglePayload for EnumeratedReversedIterator(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v25 = v8;
  v9 = *(v8 + 84);
  v10 = *(*(*(a4 + 24) + 8) + 8);
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(v11 + 80);
  v15 = *(v8 + 64) + v14;
  v16 = (v15 & ~v14) + *(v11 + 64);
  if (a3 <= v13)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v13 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v13 < a2)
  {
    v18 = ~v13 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v12)
  {
    v24 = *(v25 + 56);

    v24(a1, a2, v9, v7);
  }

  else
  {
    v23 = *(v11 + 56);

    v23(&a1[v15] & ~v14, a2);
  }
}

uint64_t type metadata completion function for IterativePair(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for IterativeTreeTraversal()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_So6NSTaskC21SwiftUITracingSupportE12OutputOptionO_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t getEnumTagSinglePayload for IterativeTreeTraversal(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for IterativeTreeTraversal(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for InspectionState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 42))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 41);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for InspectionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Inspectable_Context(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 10))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 9);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Inspectable_Context(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for Inspectable_Context(uint64_t a1)
{
  if (*(a1 + 9) <= 1u)
  {
    return *(a1 + 9);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for Inspectable_Context(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 9) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for NSTask.OutputOption(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NSTask.OutputOption(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for NSTask.OutputOption(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HeterogeneousBuffer(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 28))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HeterogeneousBuffer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 28) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 28) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata completion function for JustIterator(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for ConcatIterator(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IterativePair(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *storeEnumTagSinglePayload for IterativePair(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

unint64_t lazy protocol witness table accessor for type InspectionState.Flags and conformance InspectionState.Flags()
{
  result = lazy protocol witness table cache variable for type InspectionState.Flags and conformance InspectionState.Flags;
  if (!lazy protocol witness table cache variable for type InspectionState.Flags and conformance InspectionState.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InspectionState.Flags and conformance InspectionState.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InspectionState.Flags and conformance InspectionState.Flags;
  if (!lazy protocol witness table cache variable for type InspectionState.Flags and conformance InspectionState.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InspectionState.Flags and conformance InspectionState.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InspectionState.Flags and conformance InspectionState.Flags;
  if (!lazy protocol witness table cache variable for type InspectionState.Flags and conformance InspectionState.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InspectionState.Flags and conformance InspectionState.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InspectionState.Flags and conformance InspectionState.Flags;
  if (!lazy protocol witness table cache variable for type InspectionState.Flags and conformance InspectionState.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InspectionState.Flags and conformance InspectionState.Flags);
  }

  return result;
}

uint64_t sub_26C297CB8()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed IterativeTreeTraversal<A, B>, @in_guaranteed A, @in_guaranteed B, @unowned Int, @unowned Int) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  return thunk for @escaping @callee_guaranteed (@guaranteed IterativeTreeTraversal<A, B>, @in_guaranteed A, @in_guaranteed B, @unowned Int, @unowned Int) -> ()(a1, a2, *(v2 + 32));
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B, @in_guaranteed IterativeTreeTraversal<A, B>) -> (@out ())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = *(a3 + 48);
  v9[2] = *(a3 + 32);
  v9[3] = v6;
  v9[4] = *(a3 + 64);
  v10 = *(a3 + 80);
  v7 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v7;
  return v4(a1, a2, v9);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B, @guaranteed IterativeTreeTraversal<A, B>) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = *(a3 + 48);
  v9[2] = *(a3 + 32);
  v9[3] = v6;
  v9[4] = *(a3 + 64);
  v10 = *(a3 + 80);
  v7 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v7;
  return v4(a1, a2, v9);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A, @inout B, @inout IterativeTreeTraversal<A, B>) -> (@out ())()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A, @inout B, @inout IterativeTreeTraversal<A, B>) -> ()()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned UnsafePointer<Int8>, @guaranteed OS_xpc_object) -> (@unowned Bool)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for ReuseTraceInternalTracing.CacheItemWithIDTraceData(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for ReuseTraceInternalTracing.CacheItemWithIDTraceData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

uint64_t specialized RawRepresentable<>.hash(into:)()
{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t SwiftUITrace.XPCKeys.rawValue.getter()
{
  v1 = 0x5F69757466697773;
  v2 = *v0;
  if (v2 <= 3)
  {
    v5 = 0x6769666E6F63;
    if (v2 != 2)
    {
      v5 = 0x65636172745F7369;
    }

    *v0;
    if (*v0 <= 1u)
    {
      return 0x5F69757466697773;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if (v2 == 7)
    {
      v1 = 0xD000000000000018;
    }

    if (v2 == 6)
    {
      v1 = 0x72775F7365747962;
    }

    v3 = 6580592;
    if (v2 != 4)
    {
      v3 = 0x6E5F7972616E6962;
    }

    if (*v0 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

void specialized closure #1 in synchronized(_:)()
{
  specialized closure #1 in synchronized(_:)(&unk_287CE1120, closure #1 in Client.gracefulExit()partial apply, thunk for @callee_guaranteed () -> ()partial apply, &block_descriptor_230);
}

{
  specialized closure #1 in synchronized(_:)(&unk_287CE0D38, partial apply for closure #1 in Client.gracefulExit(), partial apply for thunk for @callee_guaranteed () -> (), &block_descriptor_147);
}

void specialized closure #1 in synchronized(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = static SwiftUITrace.role;
  if (static SwiftUITrace.role >> 61 == 2)
  {
    v8 = static SwiftUITrace.role & 0x1FFFFFFFFFFFFFFFLL;
    v9 = *((static SwiftUITrace.role & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = v8;
    v14[4] = a3;
    v14[5] = v10;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = thunk for @escaping @callee_guaranteed () -> ();
    v14[3] = a4;
    v11 = _Block_copy(v14);
    outlined copy of SwiftUITrace.Role(v4);
    outlined copy of SwiftUITrace.Role(v4);
    v12 = v9;

    dispatch_sync(v12, v11);
    outlined consume of SwiftUITrace.Role(v4);

    _Block_release(v11);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

uint64_t one-time initialization function for log()
{
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  result = OS_os_log.init(subsystem:category:)();
  log = result;
  return result;
}

void swiftUITraceRegister(void *a1, uint64_t *a2)
{
  v3 = a1;
  swiftUITraceRegister(_:_:)(v3, a2);
}

void swiftUITraceRegister(_:_:)(void *a1, uint64_t *a2)
{
  v4 = onceGraph;
  onceGraph = a1;

  v5 = a1;
  closure #1 in swiftUITraceRegister(_:_:)(a2);
}

void closure #1 in swiftUITraceRegister(_:_:)(uint64_t *a1)
{
  swiftUITraceRegisterCommon()();
  if (v2)
  {
    return;
  }

  if (static SwiftUITrace.role >> 61 != 2 || a1 == 0)
  {
    return;
  }

  v4 = static SwiftUITrace.role & 0x1FFFFFFFFFFFFFFFLL;
  *a1 = 0;
  if (*(v4 + 88) == 1)
  {
    return;
  }

  if (*(v4 + 56))
  {
    v5 = 1;
    *a1 = 1;
    if (*(v4 + 88) == 1)
    {
      return;
    }

    if ((*(v4 + 58) & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_13:
    v5 |= 2uLL;
    *a1 = v5;
    if (*(v4 + 88) == 1)
    {
      return;
    }

    goto LABEL_14;
  }

  v5 = 0;
  if (*(v4 + 58))
  {
    goto LABEL_13;
  }

LABEL_14:
  if ((*(v4 + 59) & 1) == 0 || (v5 |= 4uLL, *a1 = v5, *(v4 + 88) != 1))
  {
    if ((*(v4 + 60) & 1) == 0 || (v5 |= 8uLL, *a1 = v5, *(v4 + 88) != 1))
    {
      if ((*(v4 + 61) & 1) == 0 || (v5 |= 0x10uLL, *a1 = v5, *(v4 + 88) != 1))
      {
        if ((*(v4 + 62) & 1) == 0 || (v5 |= 0x20uLL, *a1 = v5, *(v4 + 88) != 1))
        {
          if ((*(v4 + 63) & 1) == 0 || (v5 |= 0x40uLL, *a1 = v5, *(v4 + 88) != 1))
          {
            if (*(v4 + 64))
            {
              *a1 = v5 | 0x80;
            }
          }
        }
      }
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> swiftUITraceRegisterCommon()()
{
  type metadata accessor for SwiftUITrace();
  v1 = static SwiftUITrace.client()();
  if (!v0)
  {
    v2 = v1;
    if (v1)
    {
      if (!*(v1 + 32))
      {
        swift_beginAccess();
        v3 = *(v2 + 112);
        os_unfair_lock_lock_with_options();
        if (!onceGraph)
        {
          __break(1u);
          return;
        }

        v4 = onceGraph;
        Trace_Handle_Storage.init()(&v16);
        *&v24 = MEMORY[0x277D84FA0];
        *(&v24 + 1) = MEMORY[0x277D84F98];
        *&v25 = 0;
        *(&v25 + 1) = MEMORY[0x277D84FA0];
        BYTE8(v26) = 0;
        *&v27 = 0;
        BYTE8(v27) = 1;
        v28 = 0;
        *&v26 = v4;
        v30 = 0;
        v29[6] = v22;
        v29[7] = v23;
        v29[2] = v18;
        v29[3] = v19;
        v29[4] = v20;
        v29[5] = v21;
        v29[0] = v16;
        v29[1] = v17;
        v29[10] = v26;
        v29[11] = v27;
        v29[8] = v24;
        v29[9] = v25;
        specialized Trace.add<A>(handle:)(v29);
        v14[10] = v26;
        v14[11] = v27;
        v15 = v28;
        v14[6] = v22;
        v14[7] = v23;
        v14[8] = v24;
        v14[9] = v25;
        v14[2] = v18;
        v14[3] = v19;
        v14[4] = v20;
        v14[5] = v21;
        v14[0] = v16;
        v14[1] = v17;
        outlined destroy of Trace.SwiftUI(v14);
        os_unfair_lock_unlock(v3);
      }

      swift_beginAccess();
      v5 = *(v2 + 128);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 128) = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
        *(v2 + 128) = v5;
      }

      v7 = v5[2];
      v8 = v5[3];
      v9 = v7 + 1;
      if (v7 >= v8 >> 1)
      {
        v11 = v5;
        v12 = v5[2];
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v7 + 1, 1, v11);
        v7 = v12;
        v5 = v13;
      }

      v5[2] = v9;
      v10 = &v5[2 * v7];
      v10[4] = specialized thunk for @escaping @callee_guaranteed (@inout Trace) -> ();
      v10[5] = 0;
      *(v2 + 128) = v5;
      swift_endAccess();
    }
  }
}

uint64_t static SwiftUITrace.register<A>(h:)(void (*a1)(__int128 *), uint64_t a2, ValueMetadata *a3, uint64_t a4)
{
  result = static SwiftUITrace.client()();
  if (!v4)
  {
    v10 = result;
    if (result)
    {
      v11 = swift_allocObject();
      v11[2] = a3;
      v11[3] = a4;
      v11[4] = a1;
      v11[5] = a2;
      if (*(v10 + 32))
      {
      }

      else
      {
        swift_beginAccess();
        v12 = *(v10 + 112);

        os_unfair_lock_lock_with_options();
        closure #1 in static SwiftUITrace.register<A>(h:)((v12 + 8), a1, a2, a3, a4);
        os_unfair_lock_unlock(v12);
      }

      v13 = swift_allocObject();
      *(v13 + 16) = partial apply for closure #1 in static SwiftUITrace.register<A>(h:);
      *(v13 + 24) = v11;
      swift_beginAccess();
      v14 = *(v10 + 128);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v10 + 128) = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14[2] + 1, 1, v14);
        *(v10 + 128) = v14;
      }

      v17 = v14[2];
      v16 = v14[3];
      if (v17 >= v16 >> 1)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v14);
      }

      v14[2] = v17 + 1;
      v18 = &v14[2 * v17];
      v18[4] = partial apply for thunk for @escaping @callee_guaranteed (@inout Trace) -> ();
      v18[5] = v13;
      *(v10 + 128) = v14;
      swift_endAccess();
    }
  }

  return result;
}

Swift::Void __swiftcall UIKitTraceRegister()()
{
  type metadata accessor for SwiftUITrace();
  v0 = static SwiftUITrace.client()();
  v1 = v0;
  if (v0)
  {
    if (!*(v0 + 32))
    {
      swift_beginAccess();
      v2 = *(v1 + 112);
      os_unfair_lock_lock_with_options();
      Trace_Handle_Storage.init()(v12);
      specialized Trace.add<A>(handle:)(v12);
      os_unfair_lock_unlock(v2);
    }

    swift_beginAccess();
    v3 = *(v1 + 128);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 128) = v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
      *(v1 + 128) = v3;
    }

    v5 = v3[2];
    v6 = v3[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v9 = v3;
      v10 = v3[2];
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v5 + 1, 1, v9);
      v5 = v10;
      v3 = v11;
    }

    v3[2] = v7;
    v8 = &v3[2 * v5];
    v8[4] = specialized thunk for @escaping @callee_guaranteed (@inout Trace) -> ();
    v8[5] = 0;
    *(v1 + 128) = v3;
    swift_endAccess();
  }
}

uint64_t one-time initialization function for registrationToken()
{
  v4 = *MEMORY[0x277D85DE8];
  out_token = -1;
  v0 = String.utf8CString.getter();
  notify_register_check((v0 + 32), &out_token);

  static SwiftUITrace.registrationToken = out_token;
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static SwiftUITrace.registrationToken.getter()
{
  if (one-time initialization token for registrationToken != -1)
  {
    swift_once();
  }

  return static SwiftUITrace.registrationToken;
}

uint64_t static SwiftUITrace.allowRegister.setter(char a1)
{
  result = swift_beginAccess();
  static SwiftUITrace.allowRegister = a1;
  return result;
}

uint64_t static SwiftUITrace.supressRegistration<A>(_:)(uint64_t (*a1)(uint64_t))
{
  v2 = swift_beginAccess();
  static SwiftUITrace.allowRegister = 0;
  result = a1(v2);
  static SwiftUITrace.allowRegister = 1;
  return result;
}

SwiftUITracingSupport::SwiftUITrace::XPCKeys_optional __swiftcall SwiftUITrace.XPCKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SwiftUITrace.XPCKeys.init(rawValue:), v3);

  v7 = 9;
  if (v5 < 9)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SwiftUITrace.XPCKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SwiftUITrace.XPCKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SwiftUITrace.XPCKeys@<X0>(uint64_t *a1@<X8>)
{
  result = SwiftUITrace.XPCKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static SwiftUITrace.createTraceHost()()
{
  if (static SwiftUITrace.role == 0x8000000000000000)
  {
    specialized static SwiftUITrace.processInitialization()();
    type metadata accessor for Host();
    v0 = swift_allocObject();
    Host.init()();
    static os_log_type_t.default.getter();
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v1 = static SwiftUITrace.role;
    static SwiftUITrace.role = v0 | 0x2000000000000000;

    outlined consume of SwiftUITrace.Role(v1);
    return v0;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void static SwiftUITrace.registerSwiftUIHandleForTest()()
{
  if (one-time initialization token for registrationToken != -1)
  {
    swift_once();
  }

  notify_set_state(static SwiftUITrace.registrationToken, 1uLL);
  if (onceGraph)
  {
    swiftUITraceRegisterCommon()();
    if (v0)
    {
      swift_unexpectedError();
      __break(1u);
    }
  }
}

uint64_t static SwiftUITrace.test(config:file:block:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, _OWORD *a4@<X8>)
{
  v5 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v5;
  v17[2] = *(a1 + 32);
  v18 = *(a1 + 48);
  if (static SwiftUITrace.role == 0x8000000000000000)
  {
    type metadata accessor for Client();
    v9 = swift_allocObject();
    outlined init with copy of TraceConfig(v17, v16);
    Client.init(test:)(a1);
    v10 = static SwiftUITrace.role;
    static SwiftUITrace.role = v9 | 0x4000000000000000;
    outlined consume of SwiftUITrace.Role(v10);
    v11 = static SwiftUITrace.client()();
    if (v11)
    {
      Client.beginTracing(to:)(a2);
      a3(v11);
      Client.endTracing()();
      v14 = v16[1];
      v15 = v16[0];
      v12 = static SwiftUITrace.role;
      static SwiftUITrace.role = 0x8000000000000000;
      outlined consume of SwiftUITrace.Role(v12);

      *a4 = v15;
      a4[1] = v14;
      return result;
    }

    __break(1u);
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t static SwiftUITrace.client()()
{
  result = swift_beginAccess();
  if (static SwiftUITrace.allowRegister != 1)
  {
    return 0;
  }

  if (static SwiftUITrace.role >> 61 == 2)
  {
  }

  if (static SwiftUITrace.role != 0x8000000000000000)
  {
    __break(1u);
    return result;
  }

  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 executablePath];

  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    lazy protocol witness table accessor for type String and conformance String();
    v4 = StringProtocol.contains<A>(_:)();

    if (v4)
    {
      return 0;
    }
  }

  type metadata accessor for Client();
  v5 = swift_allocObject();
  result = Client.init()();
  if (!v0)
  {
    v6 = static SwiftUITrace.role;
    static SwiftUITrace.role = v5 | 0x4000000000000000;
    outlined consume of SwiftUITrace.Role(v6);
    return static SwiftUITrace.client()();
  }

  return result;
}

void Client.beginTracing(to:)(uint64_t a1)
{
  v2 = v1;
  v86 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMd, &_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v65 - v7;
  v9 = *(v1 + 88);
  if (v9 == 1)
  {
    goto LABEL_18;
  }

  if (v9)
  {
    v10 = v6;
    v11 = *(v1 + 80);
    v12 = objc_opt_self();

    v13 = [v12 processInfo];
    v14 = [v13 processName];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    *&v96 = v15;
    *(&v96 + 1) = v17;

    Regex<A>.init(_:)();
    lazy protocol witness table accessor for type String and conformance String();
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Regex<AnyRegexOutput> and conformance Regex<A>, &_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMd, &_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMR);
    v23 = BidirectionalCollection<>.contains<A>(_:)();
    (*(v4 + 8))(v8, v10);

    if (v23)
    {
      goto LABEL_14;
    }

    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v24 = log;
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_26C161000, v24, v25, "will not trace. Procname doesn't pass filter.", v26, 2u);
      MEMORY[0x26D69EAB0](v26, -1, -1);
    }

    v27 = *(v2 + 16);
    if (v27)
    {
      v28 = *(v2 + 16);
      swift_unknownObjectRetain();

      xpc_connection_cancel(v27);
      swift_unknownObjectRelease();
LABEL_31:
      v64 = static SwiftUITrace.role;
      static SwiftUITrace.role = 0x8000000000000000;
      outlined consume of SwiftUITrace.Role(v64);
      return;
    }

LABEL_34:
    __break(1u);
  }

  else
  {
    while (1)
    {
      if (*(v2 + 88) != 1 && (*(v2 + 100) & 1) == 0)
      {
        v29 = *(v2 + 96);
        v30 = [objc_opt_self() processInfo];
        v31 = [v30 processIdentifier];

        if (v31 != v29)
        {
          break;
        }
      }

LABEL_18:
      *(v2 + 32) = 0;
      swift_beginAccess();
      v32 = *(v2 + 112);
      os_unfair_lock_lock_with_options();
      v33 = *(v32 + 5);
      os_unfair_lock_unlock(v32);
      if (v33)
      {
        goto LABEL_36;
      }

      swift_beginAccess();
      v34 = *(v2 + 120);
      *v34 = 0u;
      v34[1] = 0u;
      v35 = *(v2 + 112);
      os_unfair_lock_lock_with_options();
      v36 = *(v2 + 88);
      if (v36 == 1)
      {
        __break(1u);
        goto LABEL_34;
      }

      v37 = *(v2 + 96);
      v39 = *(v2 + 72);
      v38 = *(v2 + 80);
      v41 = *(v2 + 56);
      v40 = *(v2 + 64);
      v42 = *(v2 + 104);
      v95 = HIBYTE(v40) & 1;
      v94 = BYTE4(v37) & 1;
      v75 = v42 & 1;
      v76 = (v42 >> 8) & 1;
      v73 = HIWORD(v37) & 1;
      v74 = HIBYTE(v37) & 1;
      v72 = (v37 >> 40) & 1;
      v71 = v39 & 1;
      v68 = (v40 >> 40) & 1;
      v69 = HIWORD(v40) & 1;
      v92 = BYTE4(v37) & 1;
      v67 = HIDWORD(v40) & 1;
      v85 = v41 & 1;
      LOWORD(v96) = v41 & 0x101;
      v84 = (v41 >> 8) & 1;
      v83 = WORD1(v41) & 1;
      BYTE2(v96) = BYTE2(v41) & 1;
      v82 = BYTE3(v41) & 1;
      BYTE3(v96) = BYTE3(v41) & 1;
      v81 = HIDWORD(v41) & 1;
      BYTE4(v96) = BYTE4(v41) & 1;
      v80 = (v41 >> 40) & 1;
      BYTE5(v96) = BYTE5(v41) & 1;
      v79 = HIWORD(v41) & 1;
      BYTE6(v96) = BYTE6(v41) & 1;
      v78 = HIBYTE(v41) & 1;
      BYTE7(v96) = HIBYTE(v41) & 1;
      v77 = v40 & 1;
      WORD4(v96) = v40 & 0x101;
      v70 = (v40 >> 8) & 1;
      v65 = WORD1(v40) & 1;
      v66 = BYTE3(v40) & 1;
      BYTE10(v96) = BYTE2(v40) & 1;
      BYTE11(v96) = BYTE3(v40) & 1;
      BYTE12(v96) = BYTE4(v40) & 1;
      BYTE13(v96) = BYTE5(v40) & 1;
      BYTE14(v96) = BYTE6(v40) & 1;
      HIBYTE(v96) = HIBYTE(v40) & 1;
      v97 = v39 & 1;
      v98 = v38;
      v99 = v36;
      v100 = v37;
      v101 = BYTE4(v37) & 1;
      v102 = BYTE5(v37) & 1;
      v103 = BYTE6(v37) & 1;
      v104 = HIBYTE(v37) & 1;
      v105 = v42 & 0x101;
      v43 = *(v2 + 120);
      outlined copy of TraceConfig?(v41, v40, v39, v38, v36);
      outlined copy of TraceConfig?(v41, v40, v39, v38, v36);

      ATRCWriter.init(file:config:stats:)(v44, &v96, v43, v93);
      v45 = v93[0];
      v46 = v93[1];
      v47 = *(v2 + 120);
      swift_beginAccess();
      v48 = *(v2 + 128);

      v49 = MEMORY[0x277D84F90];
      v50 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5TraceV9HandleBoxVSg_SayAKGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      *(&v91[0] + 1) = v51;
      *&v91[1] = MEMORY[0x277D84F98];
      BYTE8(v91[1]) = 0;
      *(&v90[1] + 1) = v47;
      *&v91[0] = v50;
      _s21SwiftUITracingSupport14CircularBufferV8consumer5stats4syncACx_SpyAA5StatsVGSbtcAA0E8ConsumerRzlufCAA10ATRCWriterV_Tt3B5(v45, v46, v47, v95, &v96);
      *(v90 + 8) = v96;
      LOBYTE(v87) = v85;
      BYTE1(v87) = v84;
      BYTE2(v87) = v83;
      BYTE3(v87) = v82;
      BYTE4(v87) = v81;
      BYTE5(v87) = v80;
      BYTE6(v87) = v79;
      BYTE7(v87) = v78;
      BYTE8(v87) = v77;
      BYTE9(v87) = v70;
      BYTE10(v87) = v65;
      BYTE11(v87) = v66;
      BYTE12(v87) = v67;
      BYTE13(v87) = v68;
      BYTE14(v87) = v69;
      HIBYTE(v87) = v95;
      LOBYTE(v88) = v71;
      *(&v88 + 1) = v38;
      *&v89 = v36;
      DWORD2(v89) = v37;
      BYTE12(v89) = v94;
      BYTE13(v89) = v72;
      BYTE14(v89) = v73;
      HIBYTE(v89) = v74;
      LOBYTE(v90[0]) = v75;
      BYTE1(v90[0]) = v76;
      Trace_Handle_Storage.init()(&v96);
      specialized Trace.add<A>(handle:)(&v96);
      v52 = *(v48 + 16);
      if (v52)
      {
        v38 = (v48 + 40);
        do
        {
          v54 = *(v38 - 1);
          v53 = *v38;

          v54(&v87);

          v38 += 2;
          --v52;
        }

        while (v52);
      }

      swift_beginAccess();
      v55 = *(v2 + 112);
      os_unfair_lock_assert_owner(v55);
      if ((*(v55 + 5) & 1) == 0)
      {
        v56 = v89;
        *(v55 + 56) = v90[0];
        v57 = v91[0];
        *(v55 + 72) = v90[1];
        *(v55 + 88) = v57;
        *(v55 + 97) = *(v91 + 9);
        v58 = v88;
        *(v55 + 8) = v87;
        *(v55 + 24) = v58;
        *(v55 + 40) = v56;
        *(v55 + 5) = 1;
        swift_endAccess();
        v59 = *(v2 + 128);
        *(v2 + 128) = v49;

        os_unfair_lock_unlock(*(v2 + 112));
        return;
      }

      __break(1u);
      swift_once();
      v18 = log;
      v19 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v18, v19))
      {

LABEL_14:

        continue;
      }

      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v96 = v21;
      *v20 = 136315138;
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v38, &v96);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_26C161000, v18, v19, "ignoring invalid process name regex %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x26D69EAB0](v21, -1, -1);
      MEMORY[0x26D69EAB0](v20, -1, -1);
    }

    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v60 = log;
    v61 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_26C161000, v60, v61, "will not trace. Pid doesn't pass filter.", v62, 2u);
      MEMORY[0x26D69EAB0](v62, -1, -1);
    }

    v63 = *(v2 + 16);
    if (v63)
    {
      xpc_connection_cancel(v63);
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_36:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

SwiftUITracingSupport::Stats __swiftcall Client.endTracing()()
{
  v2 = v1;
  v3 = v0;
  swift_beginAccess();
  v4 = *(v1 + 112);
  os_unfair_lock_lock_with_options();
  Trace.deallocate()();
  os_unfair_lock_unlock(v4);
  v5 = *(v1 + 112);
  os_unfair_lock_lock_with_options();
  swift_beginAccess();
  v6 = *(v1 + 112);
  os_unfair_lock_assert_owner(v6);
  if (*(v6 + 5) == 1)
  {
    outlined destroy of Trace(v6 + 8);
    *(v6 + 5) = 0;
    swift_endAccess();
    os_unfair_lock_unlock(*(v2 + 112));
    v7 = swift_beginAccess();
    v11 = *(v2 + 120);
    v12 = *v11;
    v13 = v11[1];
    *v11 = 0u;
    v11[1] = 0u;
    *(v2 + 32) = 1;
    *v3 = v12;
    v3[1] = v13;
  }

  else
  {
    __break(1u);
  }

  result.bytesWritten = v10;
  result.bytesCompressed = v9;
  result.bytesConsumed = v8;
  result.bytesEmitted = v7;
  return result;
}

void static SwiftUITrace.deinitialize()()
{
  v0 = static SwiftUITrace.role;
  static SwiftUITrace.role = 0x8000000000000000;
  outlined consume of SwiftUITrace.Role(v0);
}

uint64_t static SwiftUITrace.beginSwiftUITrace(modality:config:)(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v3;
  v12[2] = *(a2 + 32);
  v13 = *(a2 + 48);
  if (static SwiftUITrace.role == 0x8000000000000000)
  {
    v11 = v2;
    v5 = objc_allocWithZone(type metadata accessor for Tracer(0));
    outlined init with copy of TraceConfig(v12, v10);
    v6 = Tracer.init(modality:config:)(&v11, a2);
    v7 = static SwiftUITrace.role;
    static SwiftUITrace.role = v6;
    v8 = v6;
    outlined consume of SwiftUITrace.Role(v7);
    Tracer.beginTracing()();
    return v8;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall Tracer.beginTracing()()
{
  v1 = type metadata accessor for JSONEncoder.OutputFormatting();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  if (*(v0 + OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_state) == 1)
  {
    *(v0 + OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_state) = 0;
    v3 = String.utf8CString.getter();
    notify_post((v3 + 32));

    v4 = OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_connection;
    v5 = *(v0 + OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_connection);
    if (v5 || (specialized XPCDispatch.connect()(), (v5 = *(v0 + v4)) != 0))
    {
      swift_unknownObjectRetain();
      v6 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v6, "swiftui_command", "beginTracing");
      v7 = type metadata accessor for JSONEncoder();
      v8 = *(v7 + 48);
      v9 = *(v7 + 52);
      swift_allocObject();
      JSONEncoder.init()();
      static JSONEncoder.OutputFormatting.prettyPrinted.getter();
      dispatch thunk of JSONEncoder.outputFormatting.setter();
      v10 = *(v0 + OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_config + 16);
      v24[0] = *(v0 + OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_config);
      v24[1] = v10;
      v12 = *(v0 + OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_config);
      v11 = *(v0 + OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_config + 16);
      v24[2] = *(v0 + OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_config + 32);
      v25 = *(v0 + OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_config + 48);
      v20 = v12;
      v21 = v11;
      v22 = *(v0 + OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_config + 32);
      v23 = *(v0 + OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_config + 48);
      outlined init with copy of TraceConfig(v24, &v16);
      lazy protocol witness table accessor for type TraceConfig and conformance TraceConfig();
      v13 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v15 = v14;
      v16 = v20;
      v17 = v21;
      v18 = v22;
      v19 = v23;
      outlined destroy of TraceConfig(&v16);
      swift_unknownObjectRetain();
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v13, v15, v6);
      xpc_connection_send_message_with_reply_sync(v5, v6);
      swift_unknownObjectRelease();
      outlined consume of Data._Representation(v13, v15);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    __break(1u);
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  v16 = v20;
  v17 = v21;
  v18 = v22;
  v19 = v23;
  outlined destroy of TraceConfig(&v16);
  swift_unexpectedError();
  __break(1u);
}

uint64_t static SwiftUITrace.cliClient(verbose:)(char a1)
{
  v1 = static SwiftUITrace.role;
  if (static SwiftUITrace.role == 0x8000000000000000)
  {
    type metadata accessor for CLI();
    v3 = swift_allocObject();
    CLI.init(verbose:)(a1 & 1);
    v4 = static SwiftUITrace.role;
    static SwiftUITrace.role = v3 | 0x6000000000000000;

    outlined consume of SwiftUITrace.Role(v4);
LABEL_5:
    outlined copy of SwiftUITrace.Role(v1);
    return v3;
  }

  if (static SwiftUITrace.role >> 61 == 3)
  {
    v3 = static SwiftUITrace.role & 0x1FFFFFFFFFFFFFFFLL;
    goto LABEL_5;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t CLI.__allocating_init(verbose:)(int a1)
{
  v2 = swift_allocObject();
  CLI.init(verbose:)(a1);
  return v2;
}

_OWORD *specialized closure #1 in static SwiftUITrace.register<A>(h:)(_OWORD *result)
{
  v1 = result[5];
  v24[4] = result[4];
  v25[0] = v1;
  *(v25 + 9) = *(result + 89);
  v2 = result[1];
  v24[0] = *result;
  v24[1] = v2;
  v3 = result[3];
  v24[2] = result[2];
  v24[3] = v3;
  v4 = onceGraph;
  if (onceGraph)
  {
    outlined init with copy of Trace(v24, v22);
    v5 = v4;
    Trace_Handle_Storage.init()(&v9);
    v6 = MEMORY[0x277D84FA0];
    *&v17 = MEMORY[0x277D84FA0];
    outlined destroy of Trace(v24);
    *(&v17 + 1) = MEMORY[0x277D84F98];
    *&v18 = 0;
    BYTE8(v19) = 0;
    *&v20 = 0;
    BYTE8(v20) = 1;
    v21 = 0;
    *(&v18 + 1) = v6;
    *&v19 = v5;
    v23 = 0;
    v22[6] = v15;
    v22[7] = v16;
    v22[2] = v11;
    v22[3] = v12;
    v22[4] = v13;
    v22[5] = v14;
    v22[0] = v9;
    v22[1] = v10;
    v22[10] = v19;
    v22[11] = v20;
    v22[8] = v17;
    v22[9] = v18;
    specialized Trace.add<A>(handle:)(v22);
    v7[10] = v19;
    v7[11] = v20;
    v8 = v21;
    v7[6] = v15;
    v7[7] = v16;
    v7[8] = v17;
    v7[9] = v18;
    v7[2] = v11;
    v7[3] = v12;
    v7[4] = v13;
    v7[5] = v14;
    v7[0] = v9;
    v7[1] = v10;
    return outlined destroy of Trace.SwiftUI(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in static SwiftUITrace.register<A>(h:)(_OWORD *a1, void (*a2)(__int128 *), uint64_t a3, ValueMetadata *a4, uint64_t a5)
{
  v26 = a2;
  Description = a4[-1].Description;
  v9 = Description[8];
  MEMORY[0x28223BE20](a1);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v25 - v15;
  v17 = a1[3];
  v18 = a1[5];
  v36 = a1[4];
  v37[0] = v18;
  *(v37 + 9) = *(a1 + 89);
  v19 = a1[1];
  v33[0] = *a1;
  v33[1] = v19;
  v20 = a1[3];
  v22 = *a1;
  v21 = a1[1];
  v34 = a1[2];
  v35 = v20;
  v23 = a1[5];
  v31 = v36;
  v32[0] = v23;
  *(v32 + 9) = *(a1 + 89);
  v27 = v22;
  v28 = v21;
  v29 = v34;
  v30 = v17;
  outlined init with copy of Trace(v33, v38);
  v26(&v27);
  v38[4] = v31;
  v39[0] = v32[0];
  *(v39 + 9) = *(v32 + 9);
  v38[0] = v27;
  v38[1] = v28;
  v38[2] = v29;
  v38[3] = v30;
  outlined destroy of Trace(v38);
  Trace.add<A>(handle:)(v11, a4, a5, v16);
  (Description[1])(v11, a4);
  return (*(v13 + 8))(v16, AssociatedTypeWitness);
}

uint64_t sub_26C29AD9C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void specialized Trace.add<A>(handle:)(uint64_t a1)
{
  v2 = v1;
  v3 = 0;
  v6 = *(v1 + 10);
  v4 = (v1 + 5);
  v5 = v6;
  v8 = *(v4 + 2);
  v7 = *(v4 + 3);
  v9 = v4[2];
  v10 = &type metadata for Trace.SwiftUI;
  while (24 * v7 + 24 != v3 + 24)
  {
    if (!v5)
    {
      goto LABEL_49;
    }

    v11 = *(v5 + v3);
    v3 += 24;
    if (v11 == &type metadata for Trace.SwiftUI)
    {
      v12 = *(a1 + 128);
      v13 = *(a1 + 176);
      *&v93[112] = *(a1 + 160);
      *&v93[128] = v13;
      *&v93[144] = *(a1 + 192);
      v14 = *(a1 + 112);
      *&v93[48] = *(a1 + 96);
      *&v93[64] = v14;
      v15 = *(a1 + 144);
      *&v93[80] = *(a1 + 128);
      *&v93[96] = v15;
      v16 = *(a1 + 48);
      v92 = *(a1 + 32);
      *v93 = v16;
      v17 = *(a1 + 80);
      *&v93[16] = *(a1 + 64);
      *&v93[32] = v17;
      v18 = *(a1 + 16);
      v90 = *a1;
      v91 = v18;
      if ((v12 & 0xC000000000000001) != 0)
      {
        v19 = a1;
        outlined init with copy of Trace.SwiftUI(a1, &v71);
        if (!__CocoaSet.count.getter())
        {
          goto LABEL_7;
        }

LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v64 = *(v12 + 16);
      v19 = a1;
      outlined init with copy of Trace.SwiftUI(a1, &v71);
      if (v64)
      {
        goto LABEL_39;
      }

LABEL_7:
      v20 = *(v19 + 192);
      Trace_Handle_Storage.deallocate()();
      if (v20)
      {
        MEMORY[0x26D69EAB0](v20, -1, -1);
      }

      if (!*(v9 + 16))
      {
        goto LABEL_42;
      }

      v21 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for Trace.SwiftUI);
      if (v22)
      {
        v23 = *(*(v9 + 56) + 8 * v21);
        if (v23 < v7)
        {
          v24 = v5 + 24 * v23;
          if (*v24)
          {
            v25 = **(v24 + 16);
            *&v74[112] = *&v93[112];
            *&v74[128] = *&v93[128];
            *&v74[144] = *&v93[144];
            *&v74[48] = *&v93[48];
            *&v74[64] = *&v93[64];
            *&v74[80] = *&v93[80];
            *&v74[96] = *&v93[96];
            v73 = v92;
            *v74 = *v93;
            *&v74[16] = *&v93[16];
            *&v74[32] = *&v93[32];
            v71 = v90;
            v72 = v91;
LABEL_37:
            outlined destroy of Trace.SwiftUI(&v71);
            return;
          }

LABEL_54:
          __break(1u);
LABEL_55:
          outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v10);
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }
      }

      else
      {
LABEL_43:
        __break(1u);
      }

      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }
  }

  v26 = *(a1 + 24);
  v27 = *(a1 + 136);
  v28 = *(a1 + 168);
  v81 = *(a1 + 152);
  v82 = v28;
  v83 = *(a1 + 184);
  v29 = *(a1 + 72);
  v30 = *(a1 + 104);
  v77 = *(a1 + 88);
  v78 = v30;
  v79 = *(a1 + 120);
  v80 = v27;
  v75 = *(a1 + 56);
  v76 = v29;
  v31 = v2[1];
  v86[0] = *v2;
  v86[1] = v31;
  v33 = *v2;
  v32 = v2[1];
  v86[2] = v2[2];
  v87 = *(v2 + 24);
  v34 = *(v26 + 48);
  v36 = *(v26 + 16);
  v35 = *(v26 + 32);
  v88[0] = *v26;
  v88[1] = v36;
  v85[0] = *(a1 + 1);
  *(v85 + 3) = *(a1 + 4);
  v69 = *(a1 + 40);
  v84[0] = *(a1 + 41);
  *(v84 + 3) = *(a1 + 44);
  v37 = *(v2 + 7);
  v68 = *(v2 + 8);
  v88[2] = v35;
  v89 = v34;
  v38 = v2[2];
  *(v26 + 48) = *(v2 + 24);
  *(v26 + 16) = v32;
  *(v26 + 32) = v38;
  *v26 = v33;
  outlined init with copy of Trace.SwiftUI(a1, &v90);
  outlined init with copy of TraceConfig(v86, &v90);
  outlined destroy of TraceConfig(v88);
  v39 = *(v2 + 49);
  if ((v39 & 1) == 0)
  {
    if (!v7)
    {
      goto LABEL_48;
    }

    if (!v5)
    {
      goto LABEL_56;
    }

    if (!*v5)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v42 = **(v5 + 16);
    os_unfair_lock_lock_with_options();
    v67 = *(v42 + 40);
    os_unfair_lock_unlock(v42);
LABEL_22:
    if (!*v5)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v43 = **(v5 + 16);
    LOBYTE(v90) = 1;
    *(&v90 + 1) = v85[0];
    DWORD1(v90) = *(v85 + 3);
    *(&v90 + 1) = v37;
    *&v91 = v68;
    *(&v91 + 1) = v26;
    *&v92 = v67;
    BYTE8(v92) = v69;
    *(&v92 + 9) = v84[0];
    HIDWORD(v92) = *(v84 + 3);
    v65 = v43;
    *v93 = v43;
    *&v93[8] = v75;
    *&v93[72] = v79;
    *&v93[56] = v78;
    *&v93[40] = v77;
    *&v93[24] = v76;
    *&v93[136] = v83;
    *&v93[120] = v82;
    *&v93[104] = v81;
    *&v93[88] = v80;
    outlined init with copy of Trace.SwiftUI(&v90, &v71);
    _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA5TraceV0A2UIV_Tt0B5(&v90);
    v45 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5(v44);
    v46 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
    if (v7 == v8)
    {
      specialized UnsafeArray.growToCapacity(_:)(2 * v8);
    }

    v66 = v37;
    v47 = *v4;
    if (!*v4)
    {
      goto LABEL_51;
    }

    v48 = *(v2 + 23);
    v49 = (v47 + 24 * v48);
    *v49 = &type metadata for Trace.SwiftUI;
    v49[1] = v46;
    v49[2] = v45;
    v50 = v48 + 1;
    if (v48 == -1)
    {
      goto LABEL_41;
    }

    *(v2 + 23) = v50;
    v51 = *(v2 + 12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v71 = *(v2 + 12);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v50 - 1, &type metadata for Trace.SwiftUI, isUniquelyReferenced_nonNull_native);
    v53 = v71;
    *(v2 + 12) = v71;
    if (!*v47)
    {
      goto LABEL_52;
    }

    v54 = **(v47 + 16);
    os_unfair_lock_lock_with_options();
    _s21SwiftUITracingSupport5TraceV7ControlV5write4modeyxm_tAA0D7_HandleRzlFAC0A2UIV_Ttg5Tm(_s21SwiftUITracingSupport5TraceV7ControlV5write4modeyxm_tAA0D7_HandleRzlFyAEzXEfU_AC0A2UIV_Tt2g5);
    os_unfair_lock_unlock(v54);
    v55 = _s21SwiftUITracingSupport5TraceV8accessor8AccessorQzxm_tcAA0D7_HandleRzluiMAC0A2UIV_Ttg5(&v71);
    v10 = &_s21SwiftUITracingSupport17ReferenceAccessorVyAA5TraceV0A2UIVGMR;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport17ReferenceAccessorVyAA5TraceV0A2UIVGMd, &_s21SwiftUITracingSupport17ReferenceAccessorVyAA5TraceV0A2UIVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type ReferenceAccessor<Trace.SwiftUI> and conformance ReferenceAccessor<A>, &_s21SwiftUITracingSupport17ReferenceAccessorVyAA5TraceV0A2UIVGMd, &_s21SwiftUITracingSupport17ReferenceAccessorVyAA5TraceV0A2UIVGMR);
    v56 = specialized protocol witness for Trace_Handle_Accessor.subscript.modify in conformance ReferenceAccessor<A>(v70);
    Trace.SwiftUI.added()();
    if (!v57)
    {
      (v56)(v70, 0);
      (v55)(&v71, 0);
LABEL_35:
      v62 = v47 + 24 * (v50 - 1);
      if (*v62)
      {
        v63 = **(v62 + 16);
        LOBYTE(v71) = 1;
        *(&v71 + 1) = v85[0];
        DWORD1(v71) = *(v85 + 3);
        *(&v71 + 1) = v66;
        *&v72 = v68;
        *(&v72 + 1) = v26;
        *&v73 = v67;
        BYTE8(v73) = v69;
        *(&v73 + 9) = v84[0];
        HIDWORD(v73) = *(v84 + 3);
        *v74 = v65;
        *&v74[8] = v75;
        *&v74[72] = v79;
        *&v74[56] = v78;
        *&v74[40] = v77;
        *&v74[24] = v76;
        *&v74[136] = v83;
        *&v74[120] = v82;
        *&v74[104] = v81;
        *&v74[88] = v80;
        goto LABEL_37;
      }

      goto LABEL_53;
    }

    v10 = v57;
    (v56)(v70, 0);
    (v55)(&v71, 0);
    if (!*(v53 + 16))
    {
      goto LABEL_45;
    }

    v58 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for Trace.SwiftUI);
    if (v59)
    {
      v60 = *(*(v53 + 56) + 8 * v58);
      if (v60 < v50)
      {
        v61 = v47 + 24 * v60;
        if (!*v61)
        {
          goto LABEL_55;
        }

        (v10)(**(v61 + 16));
        outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v10);
        goto LABEL_35;
      }
    }

    else
    {
LABEL_46:
      __break(1u);
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v40 = *(v2 + 56);
  v94 = 1;
  v95 = v39 ^ 1;
  v96 = v40;
  v98 = 0;
  v99 = 0;
  v97 = 0;
  v100 = 0;
  v101 = 2;
  v102 = &type metadata for Trace.SwiftUI;
  v103 = 1;
  _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA20Trace_Handle_StorageV10IndirectedV_Tt0B5(&v94);
  v67 = v41;
  if (!v7)
  {
    goto LABEL_40;
  }

  if (v5)
  {
    v69 = 1;
    goto LABEL_22;
  }

LABEL_58:
  __break(1u);
}

{
  v2 = v1;
  v4 = 0;
  v7 = *(v1 + 10);
  v5 = (v1 + 5);
  v6 = v7;
  v8 = *(v5 + 2);
  v9 = *(v5 + 3);
  v10 = v5[2];
  do
  {
    if (24 * v9 + 24 == v4 + 24)
    {
      goto LABEL_10;
    }

    if (!v6)
    {
      goto LABEL_41;
    }

    v11 = *(v6 + v4);
    v4 += 24;
  }

  while (v11 != &type metadata for Trace.UIKit);
  v12 = *(a1 + 80);
  v63 = *(a1 + 64);
  v64 = v12;
  v13 = *(a1 + 112);
  v65 = *(a1 + 96);
  v66 = v13;
  v14 = *(a1 + 16);
  *v60 = *a1;
  *&v60[16] = v14;
  v15 = *(a1 + 48);
  v61 = *(a1 + 32);
  v62 = v15;
  Trace_Handle_Storage.deallocate()();
  if (!v10[2])
  {
    goto LABEL_37;
  }

  v5 = v10;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for Trace.UIKit);
  if ((v17 & 1) == 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v18 = *(v10[7] + 8 * v16);
  if (v18 >= v9)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v19 = v6 + 24 * v18;
  if (*v19)
  {
LABEL_30:
    v55 = **(v19 + 16);
    return;
  }

  __break(1u);
LABEL_10:
  v20 = *(a1 + 24);
  v21 = v2[1];
  v68[0] = *v2;
  v68[1] = v21;
  v23 = *v2;
  v22 = v2[1];
  v68[2] = v2[2];
  v69 = *(v2 + 24);
  v24 = *(v20 + 48);
  v26 = *(v20 + 16);
  v25 = *(v20 + 32);
  v70[0] = *v20;
  v70[1] = v26;
  v59 = *(a1 + 40);
  v27 = *(v2 + 7);
  v56 = *(v2 + 8);
  v70[2] = v25;
  v71 = v24;
  v28 = v2[2];
  *(v20 + 48) = *(v2 + 24);
  *(v20 + 16) = v22;
  *(v20 + 32) = v28;
  *v20 = v23;
  outlined init with copy of TraceConfig(v68, v60);
  outlined destroy of TraceConfig(v70);
  v29 = *(v2 + 49);
  v57 = v27;
  v58 = v8;
  if ((v29 & 1) == 0)
  {
    if (!v9)
    {
      goto LABEL_40;
    }

    if (!v6)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (!*v6)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v33 = **(v6 + 16);
    os_unfair_lock_lock_with_options();
    v32 = *(v33 + 40);
    os_unfair_lock_unlock(v33);
LABEL_18:
    if (!*v6)
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v34 = **(v6 + 16);
    v35 = swift_slowAlloc();
    *v35 = 0;
    *(v35 + 4) = 0;
    os_unfair_lock_lock_with_options();
    os_unfair_lock_assert_owner(v35);
    if ((*(v35 + 5) & 1) == 0)
    {
      *(v35 + 8) = v29;
      *(v35 + 9) = *(a1 + 1);
      *(v35 + 12) = *(a1 + 4);
      *(v35 + 16) = v57;
      *(v35 + 24) = v56;
      *(v35 + 32) = v20;
      *(v35 + 40) = v32;
      *(v35 + 48) = v59;
      *(v35 + 49) = *(a1 + 41);
      *(v35 + 52) = *(a1 + 44);
      *(v35 + 56) = v34;
      v36 = *(a1 + 56);
      v37 = *(a1 + 72);
      v38 = *(a1 + 88);
      v39 = *(a1 + 104);
      *(v35 + 128) = *(a1 + 120);
      *(v35 + 96) = v38;
      *(v35 + 112) = v39;
      *(v35 + 64) = v36;
      *(v35 + 80) = v37;
      *(v35 + 5) = 1;
      os_unfair_lock_unlock(v35);
      v40 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5(v35);
      v41 = lazy protocol witness table accessor for type Trace.UIKit and conformance Trace.UIKit();
      if (v9 == v58)
      {
        specialized UnsafeArray.growToCapacity(_:)(2 * v58);
      }

      v42 = *v5;
      if (!*v5)
      {
        goto LABEL_43;
      }

      v43 = *(v2 + 23);
      v44 = (v42 + 24 * v43);
      *v44 = &type metadata for Trace.UIKit;
      v44[1] = v41;
      v44[2] = v40;
      v45 = v43 + 1;
      if (v43 != -1)
      {
        *(v2 + 23) = v45;
        v46 = *(v2 + 12);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v67 = *(v2 + 12);
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v45 - 1, &type metadata for Trace.UIKit, isUniquelyReferenced_nonNull_native);
        v48 = v67;
        *(v2 + 12) = v67;
        if (!*v42)
        {
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v49 = **(v42 + 16);
        os_unfair_lock_lock_with_options();
        _s21SwiftUITracingSupport5TraceV7ControlV5write4modeyxm_tAA0D7_HandleRzlFAC0A2UIV_Ttg5Tm(_s21SwiftUITracingSupport5TraceV7ControlV5write4modeyxm_tAA0D7_HandleRzlFyAEzXEfU_AC5UIKitV_Tt2g5);
        os_unfair_lock_unlock(v49);
        if (*(v48 + 16))
        {
          v50 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for Trace.UIKit);
          if (v51)
          {
            v52 = *(*(v48 + 56) + 8 * v50);
            if (v52 < v45)
            {
              v53 = v42 + 24 * v52;
              if (*v53)
              {
                v54 = **(v53 + 16);
                os_unfair_lock_lock_with_options();
                os_unfair_lock_unlock(v54);
                v19 = v42 + 24 * (v45 - 1);
                if (*v19)
                {
                  goto LABEL_30;
                }

                goto LABEL_46;
              }

LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
              goto LABEL_47;
            }

            goto LABEL_36;
          }

LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v30 = *(v2 + 56);
  *v60 = 2;
  v60[4] = v29 ^ 1;
  *&v60[8] = v30;
  v61 = 0uLL;
  *&v60[24] = 0;
  LODWORD(v62) = 0;
  BYTE4(v62) = 2;
  *(&v62 + 1) = &type metadata for Trace.UIKit;
  LODWORD(v63) = 1;
  _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA20Trace_Handle_StorageV10IndirectedV_Tt0B5(v60);
  if (!v9)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v6)
  {
    v32 = v31;
    v59 = 1;
    goto LABEL_18;
  }

LABEL_49:
  __break(1u);
}

{
  v2 = v1;
  v4 = 0;
  v7 = *(v1 + 10);
  v5 = (v1 + 5);
  v6 = v7;
  v8 = *(v5 + 2);
  v9 = *(v5 + 3);
  do
  {
    if (24 * v9 + 24 == v4 * 8 + 24)
    {
      v16 = *(a1 + 24);
      v17 = v2[1];
      v51[0] = *v2;
      v51[1] = v17;
      v19 = *v2;
      v18 = v2[1];
      v51[2] = v2[2];
      v52 = *(v2 + 24);
      v20 = *(v16 + 48);
      v22 = *(v16 + 16);
      v21 = *(v16 + 32);
      v53[0] = *v16;
      v53[1] = v22;
      v42 = *(v2 + 56);
      v53[2] = v21;
      v54 = v20;
      v23 = v2[2];
      *(v16 + 48) = *(v2 + 24);
      *(v16 + 16) = v18;
      *(v16 + 32) = v23;
      *v16 = v19;
      outlined init with copy of TraceConfig(v51, v43);
      outlined destroy of TraceConfig(v53);
      v24 = (*(v2 + 49) & 1) == 0;
      *v43 = 0;
      v43[4] = v24;
      *&v43[8] = *(v2 + 56);
      v44 = 0uLL;
      *&v43[24] = 0;
      BYTE4(v45) = 2;
      LODWORD(v45) = 0;
      *(&v45 + 1) = &type metadata for Trace.Control;
      LODWORD(v46) = 1;
      _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA20Trace_Handle_StorageV10IndirectedV_Tt0B5(v43);
      v26 = v25;
      v27 = swift_slowAlloc();
      *v27 = 0;
      *(v27 + 4) = 0;
      os_unfair_lock_lock_with_options();
      os_unfair_lock_assert_owner(v27);
      if (*(v27 + 5))
      {
        __break(1u);
      }

      else
      {
        *(v27 + 8) = 1;
        *(v27 + 9) = *(a1 + 1);
        *(v27 + 12) = *(a1 + 4);
        *(v27 + 16) = v42;
        *(v27 + 32) = v16;
        *(v27 + 40) = v26;
        *(v27 + 48) = 1;
        *(v27 + 81) = *(a1 + 73);
        *(v27 + 97) = *(a1 + 89);
        *(v27 + 113) = *(a1 + 105);
        *(v27 + 128) = *(a1 + 120);
        *(v27 + 49) = *(a1 + 41);
        *(v27 + 65) = *(a1 + 57);
        *(v27 + 5) = 1;
        os_unfair_lock_unlock(v27);
        v28 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5(v27);
        v29 = lazy protocol witness table accessor for type Trace.Control and conformance Trace.Control();
        if (v9 == v8)
        {
          specialized UnsafeArray.growToCapacity(_:)(2 * v8);
        }

        v30 = *v5;
        if (!*v5)
        {
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        v31 = *(v2 + 23);
        v32 = (v30 + 24 * v31);
        *v32 = &type metadata for Trace.Control;
        v32[1] = v29;
        v32[2] = v28;
        v33 = __CFADD__(v31, 1);
        v34 = v31 + 1;
        if (!v33)
        {
          *(v2 + 23) = v34;
          v35 = v34 - 1;
          v36 = *(v2 + 12);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v50 = *(v2 + 12);
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, &type metadata for Trace.Control, isUniquelyReferenced_nonNull_native);
          *(v2 + 12) = v50;
          if (*v30)
          {
            v38 = **(v30 + 16);
            os_unfair_lock_lock_with_options();
            _s21SwiftUITracingSupport5TraceV7ControlV5write4modeyxm_tAA0D7_HandleRzlFAE_Ttg5();
            os_unfair_lock_unlock(v38);
            if (*v30)
            {
              v39 = **(v30 + 16);
              os_unfair_lock_lock_with_options();
              os_unfair_lock_unlock(v39);
              v40 = (v30 + 24 * v35);
              if (*v40)
              {
                v15 = v40[2];
                goto LABEL_16;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (!v6)
    {
      goto LABEL_19;
    }

    v10 = v6[v4];
    v4 += 3;
  }

  while (v10 != &type metadata for Trace.Control);
  v11 = *(a1 + 80);
  v46 = *(a1 + 64);
  v47 = v11;
  v12 = *(a1 + 112);
  v48 = *(a1 + 96);
  v49 = v12;
  v13 = *(a1 + 16);
  *v43 = *a1;
  *&v43[16] = v13;
  v14 = *(a1 + 48);
  v44 = *(a1 + 32);
  v45 = v14;
  Trace_Handle_Storage.deallocate()();
  if (*v6)
  {
    v15 = v6[2];
LABEL_16:
    v41 = *v15;
    return;
  }

LABEL_24:
  __break(1u);
}

id SwiftUITrace.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SwiftUITrace.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwiftUITrace();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SwiftUITrace.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwiftUITrace();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized XPCDispatch.handle_event(event:connection:)(void *a1, _xpc_connection_s *a2)
{
  v4 = static os_log_type_t.default.getter();
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v5 = log;
  if (os_log_type_enabled(log, v4))
  {
    swift_unknownObjectRetain();
    v6 = swift_slowAlloc();
    *v6 = 67240192;
    *(v6 + 4) = xpc_connection_get_pid(a2);
    swift_unknownObjectRelease();
    _os_log_impl(&dword_26C161000, v5, v4, "handle xpc message for pid %{public}d", v6, 8u);
    MEMORY[0x26D69EAB0](v6, -1, -1);
  }

  v7 = MEMORY[0x26D69EE00](a1);
  if (v7 == XPC_TYPE_DICTIONARY.getter())
  {

    specialized Client.dispatch(_:connection:)(a1);
  }

  else if (v7 == XPC_TYPE_ERROR.getter())
  {

    Client.onError(connection:error:)(a2, a1);
  }

  else if (v7 == XPC_TYPE_CONNECTION.getter())
  {
    specialized XPCDispatch.handle_connection(object:)(a1, &unk_287CE0FB8, partial apply for specialized closure #1 in XPCDispatch.handle_connection(object:), &block_descriptor_199);
  }

  else
  {
    xpc_type_get_name(v7);
    v9 = String.init(utf8String:)();
    v10 = v8;
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0xEC00000065707974;
    }

    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v12))
    {
      if (v10)
      {
        v13 = v9;
      }

      else
      {
        v13 = 0x206E776F6E6B6E75;
      }

      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315394;
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v11, &v22);

      *(v14 + 4) = v16;
      *(v14 + 12) = 2082;
      v17 = MEMORY[0x26D69ECF0](a2);
      v18 = String.init(cString:)();
      v20 = v19;
      free(v17);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v22);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_26C161000, v5, v12, "Unknown xpc type: %s %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69EAB0](v15, -1, -1);
      MEMORY[0x26D69EAB0](v14, -1, -1);
    }

    else
    {
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

{
  v4 = static os_log_type_t.default.getter();
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v5 = log;
  if (os_log_type_enabled(log, v4))
  {
    swift_unknownObjectRetain();
    v6 = swift_slowAlloc();
    *v6 = 67240192;
    *(v6 + 4) = xpc_connection_get_pid(a2);
    swift_unknownObjectRelease();
    _os_log_impl(&dword_26C161000, v5, v4, "handle xpc message for pid %{public}d", v6, 8u);
    MEMORY[0x26D69EAB0](v6, -1, -1);
  }

  v7 = MEMORY[0x26D69EE00](a1);
  if (v7 == XPC_TYPE_DICTIONARY.getter())
  {

    Host.dispatch(_:connection:)(a1, a2);
  }

  else if (v7 == XPC_TYPE_ERROR.getter())
  {

    Host.onError(connection:error:)(a2, a1);
  }

  else if (v7 == XPC_TYPE_CONNECTION.getter())
  {
    specialized XPCDispatch.handle_connection(object:)(a1, &unk_287CE1058, partial apply for specialized closure #1 in XPCDispatch.handle_connection(object:), &block_descriptor_212);
  }

  else
  {
    xpc_type_get_name(v7);
    v9 = String.init(utf8String:)();
    v10 = v8;
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0xEC00000065707974;
    }

    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v12))
    {
      if (v10)
      {
        v13 = v9;
      }

      else
      {
        v13 = 0x206E776F6E6B6E75;
      }

      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315394;
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v11, &v22);

      *(v14 + 4) = v16;
      *(v14 + 12) = 2082;
      v17 = MEMORY[0x26D69ECF0](a2);
      v18 = String.init(cString:)();
      v20 = v19;
      free(v17);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v22);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_26C161000, v5, v12, "Unknown xpc type: %s %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69EAB0](v15, -1, -1);
      MEMORY[0x26D69EAB0](v14, -1, -1);
    }

    else
    {
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void specialized XPCDispatch.handle_event(event:connection:)(_xpc_connection_s *a1, _xpc_connection_s *a2)
{
  v4 = static os_log_type_t.default.getter();
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v5 = log;
  if (os_log_type_enabled(log, v4))
  {
    swift_unknownObjectRetain();
    v6 = swift_slowAlloc();
    *v6 = 67240192;
    *(v6 + 4) = xpc_connection_get_pid(a2);
    swift_unknownObjectRelease();
    _os_log_impl(&dword_26C161000, v5, v4, "handle xpc message for pid %{public}d", v6, 8u);
    MEMORY[0x26D69EAB0](v6, -1, -1);
  }

  v7 = MEMORY[0x26D69EE00](a1);
  if (v7 == XPC_TYPE_DICTIONARY.getter())
  {
    goto LABEL_24;
  }

  if (v7 != XPC_TYPE_ERROR.getter())
  {
    if (v7 == XPC_TYPE_CONNECTION.getter())
    {

      specialized XPCDispatch.handle_connection(object:)(a1);
      return;
    }

    xpc_type_get_name(v7);
    v9 = String.init(utf8String:)();
    v10 = v8;
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0xEC00000065707974;
    }

    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v12))
    {
      if (v10)
      {
        v13 = v9;
      }

      else
      {
        v13 = 0x206E776F6E6B6E75;
      }

      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315394;
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v11, &v22);

      *(v14 + 4) = v16;
      *(v14 + 12) = 2082;
      v17 = MEMORY[0x26D69ECF0](a2);
      v18 = String.init(cString:)();
      v20 = v19;
      free(v17);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v22);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_26C161000, v5, v12, "Unknown xpc type: %s %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69EAB0](v15, -1, -1);
      MEMORY[0x26D69EAB0](v14, -1, -1);
    }

    else
    {
    }

LABEL_24:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  Tracer.onError(connection:error:)(a2, a1);
}

{
  v4 = static os_log_type_t.default.getter();
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v5 = log;
  if (os_log_type_enabled(log, v4))
  {
    swift_unknownObjectRetain();
    v6 = swift_slowAlloc();
    *v6 = 67240192;
    *(v6 + 4) = xpc_connection_get_pid(a2);
    swift_unknownObjectRelease();
    _os_log_impl(&dword_26C161000, v5, v4, "handle xpc message for pid %{public}d", v6, 8u);
    MEMORY[0x26D69EAB0](v6, -1, -1);
  }

  v7 = MEMORY[0x26D69EE00](a1);
  if (v7 == XPC_TYPE_DICTIONARY.getter())
  {
    v8 = 0x8002000010002;
    v9 = "CLI received: %s";
LABEL_11:
    specialized CLI.dispatch(_:connection:)(a1, v9, v8);
    return;
  }

  if (v7 == XPC_TYPE_ERROR.getter())
  {
    v8 = 0x8002200010002;
    v9 = "error: %{public}s";
    goto LABEL_11;
  }

  if (v7 == XPC_TYPE_CONNECTION.getter())
  {
    specialized XPCDispatch.handle_connection(object:)(a1, &unk_287CE0E28, partial apply for specialized closure #1 in XPCDispatch.handle_connection(object:), &block_descriptor_165);
  }

  else
  {
    xpc_type_get_name(v7);
    v11 = String.init(utf8String:)();
    v12 = v10;
    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0xEC00000065707974;
    }

    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v14))
    {
      if (v12)
      {
        v15 = v11;
      }

      else
      {
        v15 = 0x206E776F6E6B6E75;
      }

      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136315394;
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v13, &v24);

      *(v16 + 4) = v18;
      *(v16 + 12) = 2082;
      v19 = MEMORY[0x26D69ECF0](a2);
      v20 = String.init(cString:)();
      v22 = v21;
      free(v19);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v24);

      *(v16 + 14) = v23;
      _os_log_impl(&dword_26C161000, v5, v14, "Unknown xpc type: %s %{public}s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69EAB0](v17, -1, -1);
      MEMORY[0x26D69EAB0](v16, -1, -1);
    }

    else
    {
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void specialized XPCDispatch.handle_connection(object:)(_xpc_connection_s *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x26D69EE00]();
  if (v8 == XPC_TYPE_CONNECTION.getter())
  {
    v21 = swift_allocObject();
    *(v21 + 16) = v4;
    *(v21 + 24) = a1;
    v33[4] = a3;
    v33[5] = v21;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 1107296256;
    v33[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed OS_xpc_object) -> ();
    v33[3] = a4;
    v22 = _Block_copy(v33);

    swift_unknownObjectRetain();

    xpc_connection_set_event_handler(a1, v22);
    _Block_release(v22);
    xpc_connection_resume(a1);
    return;
  }

  v9 = XPC_ERROR_CONNECTION_INVALID.getter();
  swift_unknownObjectRelease();
  if (v8 == v9)
  {
    v11 = static os_log_type_t.error.getter();
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v12 = log;
    if (os_log_type_enabled(log, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v33[0] = v14;
      *v13 = 136446210;
      v23 = MEMORY[0x26D69ECF0](a1);
      v24 = String.init(cString:)();
      v26 = v25;
      free(v23);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v33);

      *(v13 + 4) = v27;
      v20 = "Invalid connection: %{public}s";
      goto LABEL_17;
    }
  }

  else
  {
    v10 = XPC_ERROR_CONNECTION_INTERRUPTED.getter();
    swift_unknownObjectRelease();
    v11 = static os_log_type_t.error.getter();
    if (v8 == v10)
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v12 = log;
      if (os_log_type_enabled(log, v11))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v33[0] = v14;
        *v13 = 136446210;
        v28 = MEMORY[0x26D69ECF0](a1);
        v29 = String.init(cString:)();
        v31 = v30;
        free(v28);
        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, v33);

        *(v13 + 4) = v32;
        v20 = "interupted connection: %{public}s";
        goto LABEL_17;
      }
    }

    else
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v12 = log;
      if (os_log_type_enabled(log, v11))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v33[0] = v14;
        *v13 = 136446210;
        v15 = MEMORY[0x26D69ECF0](a1);
        v16 = String.init(cString:)();
        v18 = v17;
        free(v15);
        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v33);

        *(v13 + 4) = v19;
        v20 = "Unknown xpc type: %{public}s";
LABEL_17:
        _os_log_impl(&dword_26C161000, v12, v11, v20, v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x26D69EAB0](v14, -1, -1);
        MEMORY[0x26D69EAB0](v13, -1, -1);
      }
    }
  }
}

void specialized XPCDispatch.handle_connection(object:)(_xpc_connection_s *a1)
{
  v3 = MEMORY[0x26D69EE00]();
  if (v3 == XPC_TYPE_CONNECTION.getter())
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v1;
    *(v16 + 24) = a1;
    v29[4] = partial apply for specialized closure #1 in XPCDispatch.handle_connection(object:);
    v29[5] = v16;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 1107296256;
    v29[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed OS_xpc_object) -> ();
    v29[3] = &block_descriptor_177;
    v17 = _Block_copy(v29);
    v18 = v1;
    swift_unknownObjectRetain();

    xpc_connection_set_event_handler(a1, v17);
    _Block_release(v17);
    xpc_connection_resume(a1);
    return;
  }

  v4 = XPC_ERROR_CONNECTION_INVALID.getter();
  swift_unknownObjectRelease();
  if (v3 == v4)
  {
    v6 = static os_log_type_t.error.getter();
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v7 = log;
    if (os_log_type_enabled(log, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v29[0] = v9;
      *v8 = 136446210;
      v19 = MEMORY[0x26D69ECF0](a1);
      v20 = String.init(cString:)();
      v22 = v21;
      free(v19);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v29);

      *(v8 + 4) = v23;
      v15 = "Invalid connection: %{public}s";
      goto LABEL_17;
    }
  }

  else
  {
    v5 = XPC_ERROR_CONNECTION_INTERRUPTED.getter();
    swift_unknownObjectRelease();
    v6 = static os_log_type_t.error.getter();
    if (v3 == v5)
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v7 = log;
      if (os_log_type_enabled(log, v6))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v29[0] = v9;
        *v8 = 136446210;
        v24 = MEMORY[0x26D69ECF0](a1);
        v25 = String.init(cString:)();
        v27 = v26;
        free(v24);
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v29);

        *(v8 + 4) = v28;
        v15 = "interupted connection: %{public}s";
        goto LABEL_17;
      }
    }

    else
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v7 = log;
      if (os_log_type_enabled(log, v6))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v29[0] = v9;
        *v8 = 136446210;
        v10 = MEMORY[0x26D69ECF0](a1);
        v11 = String.init(cString:)();
        v13 = v12;
        free(v10);
        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v29);

        *(v8 + 4) = v14;
        v15 = "Unknown xpc type: %{public}s";
LABEL_17:
        _os_log_impl(&dword_26C161000, v7, v6, v15, v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v9);
        MEMORY[0x26D69EAB0](v9, -1, -1);
        MEMORY[0x26D69EAB0](v8, -1, -1);
      }
    }
  }
}

uint64_t specialized closure #1 in XPCDispatch.handle_connection(object:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 32);
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a1;
  v7[4] = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for specialized closure #1 in closure #1 in XPCDispatch.handle_connection(object:);
  *(v8 + 24) = v7;
  v12[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v12[5] = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed () -> ();
  v12[3] = &block_descriptor_222;
  v9 = _Block_copy(v12);
  v10 = v6;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  dispatch_sync(v10, v9);

  _Block_release(v9);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed OS_xpc_object) -> ()(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t specialized XPCDispatch.connect()()
{
  if (!*(v0 + 16))
  {
    v1 = *(v0 + 32);
    v2 = String.utf8CString.getter();
    v3 = v1;
    mach_service = xpc_connection_create_mach_service((v2 + 32), v3, 1uLL);

    v5 = *(v0 + 16);
    *(v0 + 16) = mach_service;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    if (mach_service)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v0;
      *(v6 + 24) = mach_service;
      aBlock[4] = partial apply for specialized closure #1 in XPCDispatch.connect();
      aBlock[5] = v6;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed OS_xpc_object) -> ();
      aBlock[3] = &block_descriptor_206;
      v7 = _Block_copy(aBlock);
      swift_unknownObjectRetain_n();

      xpc_connection_set_event_handler(mach_service, v7);
      _Block_release(v7);
      swift_unknownObjectRelease();
      v8 = *(v0 + 16);
      if (v8)
      {
        xpc_connection_resume(v8);
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v1 = OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_connection;
  if (!*&v0[OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_connection])
  {
    v2 = *&v0[OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_q];
    v3 = String.utf8CString.getter();
    v4 = v2;
    mach_service = xpc_connection_create_mach_service((v3 + 32), v4, 0);

    v6 = *&v0[v1];
    *&v0[v1] = mach_service;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    if (mach_service)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v0;
      *(v7 + 24) = mach_service;
      aBlock[4] = partial apply for specialized closure #1 in XPCDispatch.connect();
      aBlock[5] = v7;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed OS_xpc_object) -> ();
      aBlock[3] = &block_descriptor_171;
      v8 = _Block_copy(aBlock);
      swift_unknownObjectRetain_n();
      v9 = v0;

      xpc_connection_set_event_handler(mach_service, v8);
      _Block_release(v8);
      swift_unknownObjectRelease();
      v10 = *&v0[v1];
      if (v10)
      {
        xpc_connection_resume(v10);
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized XPCDispatch.connect()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(v3 + 16))
  {
    v6 = *(v3 + 24);
    v7 = String.utf8CString.getter();
    v8 = v6;
    mach_service = xpc_connection_create_mach_service((v7 + 32), v8, 0);

    v10 = *(v3 + 16);
    *(v3 + 16) = mach_service;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    if (mach_service)
    {
      v11 = swift_allocObject();
      *(v11 + 16) = v3;
      *(v11 + 24) = mach_service;
      aBlock[4] = a2;
      aBlock[5] = v11;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed OS_xpc_object) -> ();
      aBlock[3] = a3;
      v12 = _Block_copy(aBlock);
      swift_unknownObjectRetain_n();

      xpc_connection_set_event_handler(mach_service, v12);
      _Block_release(v12);
      swift_unknownObjectRelease();
      v13 = *(v3 + 16);
      if (v13)
      {
        xpc_connection_resume(v13);
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TracingState()
{
  v1 = 1701736295;
  if (*v0 == 1)
  {
    v1 = 1701736302;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E6963617274;
  }
}

SwiftUITracingSupport::TraceModality_optional __swiftcall TraceModality.init(rawValue:)(SwiftUITracingSupport::TraceModality_optional rawValue)
{
  if (rawValue.value == SwiftUITracingSupport_TraceModality_oneTestFile)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue.value == SwiftUITracingSupport_TraceModality_ktrace)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

_BYTE *protocol witness for RawRepresentable.init(rawValue:) in conformance TraceModality@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
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

id Tracer.init(modality:config:)(unsigned __int8 *a1, __int128 *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v41 = type metadata accessor for URL();
  v40 = *(v41 - 8);
  v6 = *(v40 + 64);
  MEMORY[0x28223BE20](v41);
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport15ModalityStorageOSgMd, &_s21SwiftUITracingSupport15ModalityStorageOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v38 = (&v37 - v10);
  v45 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v11 = *(v45 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v45);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OS_dispatch_queue.Attributes();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v17 = type metadata accessor for DispatchQoS();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v44 = *a1;
  v19 = a2[1];
  v53 = *a2;
  v54 = v19;
  v55 = a2[2];
  v56 = *(a2 + 24);
  *&v3[OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_connection] = 0;
  v3[OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_state] = 1;
  *&v3[OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_traceClients] = 0;
  v43 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v42 = "resourceSetDidChange";
  static DispatchQoS.unspecified.getter();
  v48 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v11 + 104))(v14, *MEMORY[0x277D85260], v45);
  *&v3[OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_q] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v20 = v44;
  v3[OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_modality] = v44;
  v21 = &v3[OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_config];
  v22 = v54;
  *v21 = v53;
  *(v21 + 1) = v22;
  *(v21 + 2) = v55;
  *(v21 + 24) = v56;
  if ((v20 & 1) == 0)
  {
    v33 = mach_continuous_time();
    v34 = v38;
    *v38 = MEMORY[0x277D84F90];
    *(v34 + 8) = v33;
    *(v34 + 16) = -1;
    v35 = type metadata accessor for ModalityStorage(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
    outlined init with take of ModalityStorage?(v34, &v3[OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_modalityStorage]);
    goto LABEL_5;
  }

  v52 = -1;
  v50 = 0;
  v51 = 0xE000000000000000;
  outlined init with copy of TraceConfig(&v53, &v48);
  _StringGuts.grow(_:)(25);

  v48 = 0x7461676572676761;
  v49 = 0xEF2D656C69662D65;
  v23 = [objc_opt_self() processInfo];
  v24 = [v23 processIdentifier];

  LODWORD(v50) = v24;
  v25 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v25);

  MEMORY[0x26D69CDB0](0x697574666977732ELL, 0xE800000000000000);
  v26 = v39;
  specialized static URL.mktempCommon(_:x:)(v48, v49, &v52, v39);

  v27 = v52;
  fd = ktrace_file_create_fd();
  if (fd)
  {
    v29 = fd;
    outlined destroy of TraceConfig(&v53);
    v30 = &v3[OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_modalityStorage];
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss13OpaquePointerV5trace_s5Int32V2fd10Foundation3URLV3urltMd, &_ss13OpaquePointerV5trace_s5Int32V2fd10Foundation3URLV3urltMR) + 64);
    *v30 = v29;
    *(v30 + 2) = v27;
    (*(v40 + 32))(&v30[v31], v26, v41);
    v32 = type metadata accessor for ModalityStorage(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v32 - 8) + 56))(v30, 0, 1, v32);
LABEL_5:
    v47.receiver = v3;
    v47.super_class = ObjectType;
    return objc_msgSendSuper2(&v47, sel_init);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Host.Command.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6172546E69676562;
  v3 = 0x537465675F6C7463;
  if (v1 != 6)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x62616E655F6C7463;
  if (v1 != 4)
  {
    v4 = 0x617369645F6C7463;
  }

  if (*v0 > 5u)
  {
    v4 = v3;
  }

  v5 = 0x707673526E6FLL;
  if (v1 != 2)
  {
    v5 = 0x6665636172476E6FLL;
  }

  if (*v0)
  {
    v2 = 0x6963617254646E65;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

Swift::Void __swiftcall Tracer.endTracing()()
{
  v1 = OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_traceClients;
  swift_beginAccess();
  if (*&v0[v1])
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *&v0[v1] = MEMORY[0x277D84F90];
    v2 = v0;
    specialized Tracer.endTracingImpl(block:)(v2, v2);
  }
}

uint64_t Tracer.appendChunks(to:)(uint64_t a1)
{
  v2 = v1;
  v98 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v86 - v5;
  v7 = OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_traceClients;
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (v8)
  {
    v9 = *(v8 + 16);
    v10 = MEMORY[0x277D84F90];
    if (!v9)
    {
LABEL_68:
      aBlock = 0;
      v112 = 0xE000000000000000;
      _StringGuts.grow(_:)(18);

      aBlock = 0xD000000000000010;
      v112 = 0x800000026C33D530;
      v117[0] = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
      v80 = BidirectionalCollection<>.joined(separator:)();
      v82 = v81;

      MEMORY[0x26D69CDB0](v80, v82);

      v83 = aBlock;
      v84 = *(v2 + v7);
      *(v2 + v7) = 0;

      return v83;
    }

    v96 = v8 + 32;
    v101 = &v113;

    v12 = 0;
    v89 = v7;
    v90 = v2;
    v87 = v11;
    v88 = v6;
    v86 = v9;
    while (1)
    {
      if (v12 >= *(v11 + 16))
      {
        goto LABEL_73;
      }

      v13 = (v96 + 48 * v12);
      v14 = *(v13 + 5);
      v93 = *(v13 + 4);
      v94 = v12 + 1;
      v95 = v10;
      v15 = *v13;
      v16 = type metadata accessor for URL();
      (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
      v17 = type metadata accessor for KtraceFile(0);
      v18 = *(v17 + 48);
      v19 = *(v17 + 52);
      swift_allocObject();
      v92 = v14;

      v118[0] = KtraceFile.init(ktrace_fd:owner:path:)(v15, v2, v6);
      v118[1] = 0;
      v118[2] = MEMORY[0x277D84F90];

      v20 = v91;
LABEL_6:
      v21 = swift_allocObject();
      *(v21 + 16) = 0u;
      *(v21 + 32) = 0u;
      *(v21 + 48) = 0;
      v22 = swift_allocObject();
      *(v22 + 16) = v118;
      *(v22 + 24) = v21;
      v23 = swift_allocObject();
      *(v23 + 16) = partial apply for closure #1 in KtraceFile.ChunkIterator.next();
      *(v23 + 24) = v22;
      v24 = *(v20 + 16);
      if (!v24)
      {
        goto LABEL_76;
      }

      v25 = *(v24 + 16);
      v115 = partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned Bool);
      v116 = v23;
      aBlock = MEMORY[0x277D85DD0];
      v112 = 1107296256;
      v113 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned Bool);
      v114 = &block_descriptor_5;
      v26 = _Block_copy(&aBlock);

      ktrace_file_iterate();
      _Block_release(v26);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      swift_beginAccess();
      outlined init with copy of ResourceSet<Interpreter, ()>(v21 + 16, v117, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMd, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMR);

      if (v117[3])
      {
        break;
      }

      v10 = v95;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
      }

      v7 = v89;
      v2 = v90;
      v77 = *(v10 + 16);
      v76 = *(v10 + 24);
      if (v77 >= v76 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v77 + 1, 1, v10);
      }

      *(v10 + 16) = v77 + 1;
      v78 = v10 + 16 * v77;
      v79 = v92;
      *(v78 + 32) = v93;
      *(v78 + 40) = v79;
      v11 = v87;
      v12 = v94;
      v6 = v88;
      if (v94 == v86)
      {
LABEL_67:

        goto LABEL_68;
      }
    }

    outlined init with take of KTraceFile_Chunk(v117, v108);
    v102[0] = v98;
    v102[1] = 0;
    v2 = MEMORY[0x277D84F90];
    v102[2] = MEMORY[0x277D84F90];
    v7 = 0;
    v28 = MEMORY[0x277D84F90] + 32;

    {
      v30 = swift_allocObject();
      *(v30 + 16) = 0u;
      v10 = v30 + 16;
      *(v30 + 32) = 0u;
      *(v30 + 48) = 0;
      v31 = swift_allocObject();
      *(v31 + 16) = v102;
      *(v31 + 24) = v30;
      v32 = swift_allocObject();
      *(v32 + 16) = closure #1 in KtraceFile.ChunkIterator.next()partial apply;
      *(v32 + 24) = v31;
      v33 = *(i + 16);
      if (!v33)
      {
        break;
      }

      v99 = v28;
      v100 = v2;
      v2 = *(v33 + 16);
      v115 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned Bool)partial apply;
      v116 = v32;
      aBlock = MEMORY[0x277D85DD0];
      v112 = 1107296256;
      v113 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned Bool);
      v114 = &block_descriptor_24;
      v34 = _Block_copy(&aBlock);

      ktrace_file_iterate();
      _Block_release(v34);
      v35 = swift_isEscapingClosureAtFileLocation();

      if (v35)
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      swift_beginAccess();
      outlined init with copy of ResourceSet<Interpreter, ()>(v10, v106, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMd, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMR);

      if (!v106[3])
      {

        outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v106, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMd, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMR);
        v46 = v100;
        v47 = v100[3];
        if (v47 >= 2)
        {
          v48 = v47 >> 1;
          v37 = __OFSUB__(v48, v7);
          v49 = v48 - v7;
          if (v37)
          {
            goto LABEL_71;
          }

          v100[2] = v49;
        }

        v97 = v46[2];

        v50 = v109;
        v51 = v110;
        __swift_project_boxed_opaque_existential_1(v108, v109);
        v52 = v98;
        (*(v51 + 32))(v107, v98, v50, v51);
        v103 = v52;
        v104 = 0;
        v53 = MEMORY[0x277D84F90];
        v105 = MEMORY[0x277D84F90];

        v7 = 0;
        v54 = v53 + 4;
        v55 = v52;
        v2 = v53;
        while (1)
        {
          v10 = swift_allocObject();
          *(v10 + 16) = 0u;
          *(v10 + 32) = 0u;
          *(v10 + 48) = 0;
          v56 = swift_allocObject();
          *(v56 + 16) = &v103;
          *(v56 + 24) = v10;
          v57 = swift_allocObject();
          *(v57 + 16) = closure #1 in KtraceFile.ChunkIterator.next()partial apply;
          *(v57 + 24) = v56;
          v58 = *(v55 + 16);
          if (!v58)
          {
            goto LABEL_75;
          }

          v99 = v54;
          v100 = v2;
          v59 = *(v58 + 16);
          v2 = v104;
          v115 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned Bool)partial apply;
          v116 = v57;
          aBlock = MEMORY[0x277D85DD0];
          v112 = 1107296256;
          v113 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned Bool);
          v114 = &block_descriptor_36;
          v60 = _Block_copy(&aBlock);

          ktrace_file_iterate();
          _Block_release(v60);
          v61 = swift_isEscapingClosureAtFileLocation();

          if (v61)
          {
            goto LABEL_63;
          }

          swift_beginAccess();
          outlined init with copy of ResourceSet<Interpreter, ()>(v10 + 16, v102, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMd, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMR);

          if (!v102[3])
          {

            outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v102, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMd, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMR);
            v71 = v100;
            v72 = v100[3];
            if (v72 >= 2)
            {
              v73 = v72 >> 1;
              v37 = __OFSUB__(v73, v7);
              v74 = v73 - v7;
              if (v37)
              {
                goto LABEL_72;
              }

              v100[2] = v74;
            }

            v75 = v71[2];

            if (v97 < v75)
            {
              __swift_destroy_boxed_opaque_existential_1(v107);
              __swift_destroy_boxed_opaque_existential_1(v108);
              v20 = v118[0];
              goto LABEL_6;
            }

            goto LABEL_70;
          }

          outlined init with take of KTraceFile_Chunk(v102, v106);
          v2 = v100;
          if (v7)
          {
            v62 = v99;
            v37 = __OFSUB__(v7--, 1);
            if (v37)
            {
              goto LABEL_64;
            }
          }

          else
          {
            v63 = v100[3];
            if (((v63 >> 1) + 0x4000000000000000) < 0)
            {
              goto LABEL_66;
            }

            v64 = v63 & 0xFFFFFFFFFFFFFFFELL;
            if (v64 <= 1)
            {
              v65 = 1;
            }

            else
            {
              v65 = v64;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport16KTraceFile_Chunk_pGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport16KTraceFile_Chunk_pGMR);
            v10 = swift_allocObject();
            v66 = (_swift_stdlib_malloc_size(v10) - 32) / 40;
            *(v10 + 16) = v65;
            *(v10 + 24) = 2 * v66;
            v67 = v10 + 32;
            v68 = v2[3] >> 1;
            if (v2[2])
            {
              v69 = v2 + 4;
              if (v10 != v2 || v67 >= v69 + 40 * v68)
              {
                memmove((v10 + 32), v69, 40 * v68);
              }

              v2[2] = 0;
            }

            v62 = v67 + 40 * v68;
            v70 = (v66 & 0x7FFFFFFFFFFFFFFFLL) - v68;

            v2 = v10;
            v37 = __OFSUB__(v70, 1);
            v7 = v70 - 1;
            if (v37)
            {
              goto LABEL_64;
            }
          }

          outlined init with take of KTraceFile_Chunk(v106, v62);
          v54 = (v62 + 40);
          v55 = v103;
        }
      }

      outlined init with take of KTraceFile_Chunk(v106, v107);
      v2 = v100;
      if (v7)
      {
        v36 = v99;
        v37 = __OFSUB__(v7--, 1);
        if (v37)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v38 = v100[3];
        if (((v38 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_65;
        }

        v39 = v38 & 0xFFFFFFFFFFFFFFFELL;
        if (v39 <= 1)
        {
          v40 = 1;
        }

        else
        {
          v40 = v39;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport16KTraceFile_Chunk_pGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport16KTraceFile_Chunk_pGMR);
        v10 = swift_allocObject();
        v41 = (_swift_stdlib_malloc_size(v10) - 32) / 40;
        *(v10 + 16) = v40;
        *(v10 + 24) = 2 * v41;
        v42 = v10 + 32;
        v43 = v2[3] >> 1;
        if (v2[2])
        {
          v44 = v2 + 4;
          if (v10 != v2 || v42 >= v44 + 40 * v43)
          {
            memmove((v10 + 32), v44, 40 * v43);
          }

          v2[2] = 0;
        }

        v36 = v42 + 40 * v43;
        v45 = (v41 & 0x7FFFFFFFFFFFFFFFLL) - v43;

        v2 = v10;
        v37 = __OFSUB__(v45, 1);
        v7 = v45 - 1;
        if (v37)
        {
          goto LABEL_62;
        }
      }

      outlined init with take of KTraceFile_Chunk(v107, v36);
      v28 = v36 + 40;
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Tracer.onError(connection:error:)(_xpc_connection_s *a1, uint64_t a2)
{
  v4 = MEMORY[0x26D69ECF0](a2);
  v5 = String.init(cString:)();
  v7 = v6;
  free(v4);
  v8 = xpc_connection_copy_invalidation_reason();
  if (v8)
  {
    v9 = v8;
    v10 = String.init(cString:)();
    v12 = v11;
    free(v9);
  }

  else
  {
    v12 = 0x800000026C33D550;
    v10 = 0xD000000000000011;
  }

  v13 = static os_log_type_t.error.getter();
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v14 = log;
  if (os_log_type_enabled(log, v13))
  {
    swift_unknownObjectRetain();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136446722;
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v23);

    *(v15 + 4) = v17;
    *(v15 + 12) = 1026;
    *(v15 + 14) = xpc_connection_get_pid(a1);
    swift_unknownObjectRelease();
    *(v15 + 18) = 2080;
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v23);

    *(v15 + 20) = v18;
    _os_log_impl(&dword_26C161000, v14, v13, "    Error: %{public}s     on connection: swiftuitraced pid:     %{public}d     invalidation: %s", v15, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x26D69EAB0](v16, -1, -1);
    MEMORY[0x26D69EAB0](v15, -1, -1);
  }

  else
  {
  }

  v19 = OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_state;
  *(v2 + OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_state) = 1;
  if (one-time initialization token for registrationToken == -1)
  {
    v20 = static SwiftUITrace.registrationToken;
  }

  else
  {
    swift_once();
    v20 = static SwiftUITrace.registrationToken;
    if (!*(v2 + v19))
    {
      v21 = 1;
      goto LABEL_12;
    }

    if (*(v2 + v19) != 1)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }
  }

  v21 = 0;
LABEL_12:

  return notify_set_state(v20, v21);
}

id Tracer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall Host.ClientConnection.closeAndUnlink()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + 12) & 1) == 0)
  {
    close(*(v1 + 8));
    *(v1 + 8) = 0;
    *(v1 + 12) = 1;
  }

  v11 = *(type metadata accessor for Host.ClientConnection(0) + 32);
  outlined init with copy of ResourceSet<Interpreter, ()>(v1 + v11, v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    URL.unlink()();
    (*(v7 + 8))(v10, v6);
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v1 + v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v7 + 56))(v1 + v11, 1, 1, v6);
  }
}

Swift::String __swiftcall Host.ClientConnection.fileTemplate(_:)(Swift::Int a1)
{
  v2 = v1;
  _StringGuts.grow(_:)(16);
  v3 = [objc_opt_self() processInfo];
  [v3 processIdentifier];

  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  v6 = v5;

  MEMORY[0x26D69CDB0](45, 0xE100000000000000);
  xpc_connection_get_pid(*v2);
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v7);

  MEMORY[0x26D69CDB0](45, 0xE100000000000000);
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v8);

  MEMORY[0x26D69CDB0](0x697574666977732ELL, 0xE800000000000000);
  v9 = v4;
  v10 = v6;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t Host.ClientConnection.cloned.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(20);
  v2 = [objc_opt_self() processInfo];
  [v2 processIdentifier];

  v3 = dispatch thunk of CustomStringConvertible.description.getter();

  MEMORY[0x26D69CDB0](45, 0xE100000000000000);
  xpc_connection_get_pid(*v1);
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v4);

  MEMORY[0x26D69CDB0](0x2E64656E6F6C632ELL, 0xEF69757466697773);
  return v3;
}

NSUInteger Host.init()()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = xmmword_26C32F2B0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 257;
  result = NSPageSize();
  if ((result - 0x1000000000000000) >> 61 == 7)
  {
    *(v0 + 112) = 8 * result;
    *(v0 + 120) = 0u;
    *(v0 + 136) = 0u;
    *(v0 + 152) = 1;
    *(v0 + 160) = 0;
    v13 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v14[1] = "resourceSetDidChange";
    v14[2] = v13;
    static DispatchQoS.unspecified.getter();
    v14[3] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    v14[0] = v11;
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v2 + 104))(v5, *MEMORY[0x277D85260], v1);
    *(v0 + 32) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v0 + 168) = MEMORY[0x277D84F90];
    specialized XPCDispatch.connect()();
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void Host.main()()
{
  static os_log_type_t.default.getter();
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  dispatch_main();
}

SwiftUITracingSupport::Host::Command_optional __swiftcall Host.Command.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Host.Command.init(rawValue:), v3);

  v7 = 8;
  if (v5 < 8)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Host.Command@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000676E6963;
  v4 = 0x6172546E69676562;
  v5 = 0xEC00000065746174;
  v6 = 0x537465675F6C7463;
  if (v2 != 6)
  {
    v6 = 0xD000000000000011;
    v5 = 0x800000026C33B120;
  }

  v7 = 0x62616E655F6C7463;
  v8 = 0xEB00000000656C62;
  if (v2 == 4)
  {
    v8 = 0xEA0000000000656CLL;
  }

  else
  {
    v7 = 0x617369645F6C7463;
  }

  if (*v1 <= 5u)
  {
    v5 = v8;
  }

  else
  {
    v7 = v6;
  }

  v9 = 0xE600000000000000;
  v10 = 0x707673526E6FLL;
  result = 0x6665636172476E6FLL;
  if (v2 != 2)
  {
    v10 = 0x6665636172476E6FLL;
    v9 = 0xEE00746978456C75;
  }

  if (*v1)
  {
    v4 = 0x6963617254646E65;
    v3 = 0xEA0000000000676ELL;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v7;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v12;
  a1[1] = v3;
  return result;
}

SwiftUITracingSupport::Host::Command_optional Host.dispatch(_:connection:)(void *a1, _xpc_connection_s *a2)
{
  string = xpc_dictionary_get_string(a1, "swiftui_command");
  if (!string)
  {
    goto LABEL_44;
  }

  v3 = string;
  v7._countAndFlagsBits = String.init(cString:)();
  result.value = Host.Command.init(rawValue:)(v7).value;
  if (v15 <= 3u)
  {
    if (v15 > 1u)
    {
      if (v15 == 2)
      {

        return Host.onRsvp_sync(_:connection:)(a1, a2);
      }

      else
      {

        return Host.onGracefulExit(_:)(a1);
      }
    }

    else if (v15)
    {

      return Host.onEndTracing_sync(_:)(a1);
    }

    else
    {

      return Host.onBeginTracing_sync(_:)(a1);
    }
  }

  if (v15 <= 5u)
  {
    if (v15 != 4)
    {
      return result;
    }

    empty = xpc_dictionary_create_empty();
    v10 = 1701736302;
    if (*(v2 + 152) != 1)
    {
      v10 = 1701736295;
    }

    if (*(v2 + 152))
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x676E6963617274;
    }

    if (*(v2 + 152))
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0xE700000000000000;
    }

    goto LABEL_32;
  }

  if (v15 == 6)
  {
    empty = xpc_dictionary_create_reply(a1);
    if (empty)
    {
      v13 = 1701736295;
      if (*(v2 + 152) == 1)
      {
        v13 = 1701736302;
      }

      if (*(v2 + 152))
      {
        v11 = v13;
      }

      else
      {
        v11 = 0x676E6963617274;
      }

      if (*(v2 + 152))
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v12 = 0xE700000000000000;
      }

LABEL_32:
      v14 = empty;
      swift_getObjectType();
      v17 = MEMORY[0x277D837D0];
      v15 = v11;
      v16 = v12;
      OS_xpc_object.subscript.setter(&v15);
      xpc_connection_send_message(a2, v14);

      return swift_unknownObjectRelease();
    }

    __break(1u);
    while (1)
    {
LABEL_44:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_45:
      v15 = 0;
      v16 = 0xE000000000000000;
      _StringGuts.grow(_:)(18);
      MEMORY[0x26D69CDB0](0xD000000000000010, 0x800000026C33D910);
      v18 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys4Int8VGMd, &_sSPys4Int8VGMR);
      _print_unlocked<A, B>(_:_:)();
    }
  }

  if (v15 != 7)
  {
    goto LABEL_45;
  }

  return result;
}

uint64_t Host.onBeginTracing_sync(_:)(void *a1)
{
  v2 = v1;
  v71 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for Host.ClientConnection(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v9 = static Aggregate.invertable.getter();
  v10._object = 0x800000026C33D930;
  v11 = v9 & 1;
  v10._countAndFlagsBits = 0xD00000000000002ELL;
  result = OS_xpc_object.entitled(_:allowsInternal:)(v10, v11);
  if ((result & 1) == 0)
  {
    goto LABEL_28;
  }

  if (*(v1 + 152) == 1 && !*(v1 + 24))
  {
    *(v1 + 152) = 0;
    specialized Host.state.didset();
    v13 = type metadata accessor for JSONDecoder();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = JSONDecoder.init()();
    length = 0;
    data = xpc_dictionary_get_data(a1, "config", &length);
    if (data)
    {
      v18 = specialized Data.init(bytes:count:)(data, length);
      if (length < 1)
      {
        goto LABEL_34;
      }

      v20 = v18;
      v21 = v19;
      lazy protocol witness table accessor for type TraceConfig and conformance TraceConfig();
      v62 = v21;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      v22 = *(v2 + 40);
      v23 = *(v2 + 48);
      v24 = v68;
      *(v2 + 40) = v67;
      v25 = v70;
      v26 = *(v2 + 56);
      v27 = *(v2 + 64);
      v28 = *(v2 + 72);
      v29 = *(v2 + 80);
      *(v2 + 56) = v24;
      *(v2 + 72) = v69;
      v30 = *(v2 + 88);
      *(v2 + 88) = v25;
      outlined consume of TraceConfig?(v22, v23, v26, v27, v28);
      v31 = xpc_dictionary_get_remote_connection(a1);
      if (v31)
      {
        v60 = v20;
        v61 = v16;
        v32 = *(v2 + 24);
        *(v2 + 24) = v31;
        swift_unknownObjectRelease();
        reply = xpc_dictionary_create_reply(a1);
        if (reply)
        {
          swift_beginAccess();
          v33 = *(*(v2 + 168) + 16);
          if (v33)
          {
            v34 = 0;
            v63 = v4;
            v64 = v5;
            v65 = v33;
            while (1)
            {
              v38 = *(v2 + 168);
              if (v34 >= *(v38 + 16))
              {
                __break(1u);
LABEL_30:
                __break(1u);
LABEL_31:
                __break(1u);
LABEL_32:
                __break(1u);
LABEL_33:
                __break(1u);
LABEL_34:
                __break(1u);
LABEL_35:
                __break(1u);
              }

              v39 = (*(v5 + 80) + 32) & ~*(v5 + 80);
              v40 = *(v5 + 72) * v34;
              v41 = (v38 + v39 + v40);
              if (*(v41 + *(v4 + 36)) == 1)
              {
                break;
              }

LABEL_13:
              if (v33 == ++v34)
              {
                goto LABEL_26;
              }
            }

            pid = xpc_connection_get_pid(*v41);
            v43 = *(v2 + 24);
            if (!v43)
            {
              goto LABEL_35;
            }

            if (pid == xpc_connection_get_pid(v43))
            {
              goto LABEL_30;
            }

            v44 = xpc_dictionary_create(0, 0, 0);
            v45 = *(v2 + 168);
            if (v34 >= *(v45 + 16))
            {
              goto LABEL_31;
            }

            v46 = v44;
            outlined init with copy of Host.ClientConnection(v45 + v39 + v40, v8);
            v47 = *(v2 + 96);
            if (v47)
            {
              v48 = &v8[*(v4 + 40)];
              v49 = *v48;
              v50 = *(v48 + 1);
              v51 = v47;
              v52 = MEMORY[0x26D69CC20](v49, v50);
              v53 = [v51 firstMatchInString:v52 options:0 range:{0, String.count.getter()}];

              if (!v53)
              {
                outlined destroy of Host.ClientConnection(v8);
                v4 = v63;
                v5 = v64;
LABEL_11:
                v35 = *(v2 + 168);
                v33 = v65;
                if (v34 >= *(v35 + 16))
                {
                  goto LABEL_32;
                }

                v36 = *(v35 + v39 + v40);
                v37 = swift_unknownObjectRetain();
                xpc_connection_send_message(v37, v46);
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                goto LABEL_13;
              }

              v4 = v63;
              v5 = v64;
            }

            outlined destroy of Host.ClientConnection(v8);
            swift_beginAccess();
            v54 = *(v2 + 168);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v2 + 168) = v54;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v54 = specialized _ArrayBuffer._consumeAndCreateNew()(v54);
              *(v2 + 168) = v54;
            }

            if (v34 >= v54[2])
            {
              goto LABEL_33;
            }

            Host.beginTracingImpl(_:dictionary:)(v54 + v39 + v40, v46);
            *(v2 + 168) = v54;
            swift_endAccess();
            goto LABEL_11;
          }

LABEL_26:
          v56 = *(v2 + 24);
          if (v56)
          {
            xpc_connection_send_message(v56, reply);
            swift_unknownObjectRelease();

            result = outlined consume of Data._Representation(v60, v62);
LABEL_28:
            v57 = *MEMORY[0x277D85DE8];
            return result;
          }

          goto LABEL_39;
        }

LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_38;
  }

LABEL_40:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t Host.onEndTracing_sync(_:)(void *a1)
{
  swift_getObjectType();
  v3 = static Aggregate.invertable.getter();
  v4._object = 0x800000026C33D930;
  v5 = v3 & 1;
  v4._countAndFlagsBits = 0xD00000000000002ELL;
  result = OS_xpc_object.entitled(_:allowsInternal:)(v4, v5);
  if ((result & 1) == 0)
  {
    return result;
  }

  if (*(v1 + 152))
  {
LABEL_9:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  *(v1 + 152) = 1;
  specialized Host.state.didset();
  reply = xpc_dictionary_create_reply(a1);
  if (!reply)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = reply;
  v9 = Host.endTracingForClients()();
  xpc_dictionary_set_value(v8, "swiftui_clients", v9);
  swift_unknownObjectRelease();
  $defer #1 () in Host.onEndTracing_sync(_:)(a1, v8, v1);

  return swift_unknownObjectRelease();
}

uint64_t Host.onRsvp_sync(_:connection:)(void *a1, _xpc_connection_s *a2)
{
  v55 = a1;
  v52 = type metadata accessor for Host.ClientConnection(0);
  v4 = *(v52 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v52);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v53 = &v50 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v50 - v12);
  MEMORY[0x28223BE20](v11);
  v15 = &v50 - v14;
  swift_beginAccess();
  v16 = *(v2 + 168);
  v17 = *(v16 + 16);
  if (v17)
  {
    v54 = v8;
    v18 = v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

    v8 = 0;
    while (v8 < *(v16 + 16))
    {
      outlined init with copy of Host.ClientConnection(v18 + *(v4 + 72) * v8, v15);
      v19 = *v15;
      swift_unknownObjectRetain();
      outlined destroy of Host.ClientConnection(v15);
      swift_unknownObjectRelease();
      if (v19 == a2)
      {
      }

      if (v17 == ++v8)
      {

        v8 = v54;
        goto LABEL_7;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13);
    *(v2 + 168) = v13;
  }

  else
  {
LABEL_7:
    result = xpc_dictionary_get_string(v55, "binary_name");
    if (!result)
    {
      goto LABEL_38;
    }

    v51 = String.init(cString:)();
    v54 = v21;
    v22 = *(v2 + 168);
    v23 = *(v22 + 16);

    v15 = 0;
    while (v23 != v15)
    {
      if (v15 >= *(v22 + 16))
      {
        __break(1u);
        goto LABEL_31;
      }

      outlined init with copy of Host.ClientConnection(v22 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v15++, v13);
      pid = xpc_connection_get_pid(*v13);
      v25 = xpc_connection_get_pid(a2);
      outlined destroy of Host.ClientConnection(v13);
      if (pid == v25)
      {
      }
    }

    v15 = v52;
    v26 = *(v52 + 32);
    v27 = type metadata accessor for URL();
    v28 = v53;
    (*(*(v27 - 8) + 56))(v53 + v26, 1, 1, v27);
    *v28 = a2;
    *(v28 + 8) = 0;
    *(v28 + 12) = 1;
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    *(v28 + 32) = 1;
    *(v28 + *(v15 + 36)) = 1;
    v29 = (v28 + *(v15 + 40));
    v30 = v54;
    *v29 = v51;
    v29[1] = v30;
    swift_beginAccess();
    v13 = *(v2 + 168);

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 168) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v33 = v13[2];
  v32 = v13[3];
  v34 = (v33 + 1);
  if (v33 >= v32 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1, v13);
  }

  v13[2] = v34;
  v35 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v36 = *(v4 + 72);
  outlined init with take of Host.ClientConnection(v53, v13 + v35 + v36 * v33);
  *(v2 + 168) = v13;
  swift_endAccess();
  result = xpc_dictionary_create_reply(v55);
  if (!result)
  {
    goto LABEL_39;
  }

  v37 = result;

  if (*(v2 + 152))
  {
    goto LABEL_28;
  }

  v38 = *(v2 + 168);
  v39 = *(v38 + 16);
  if (!v39)
  {
    goto LABEL_34;
  }

  outlined init with copy of Host.ClientConnection(v38 + v35 + (v39 - 1) * v36, v8);
  v40 = *(v2 + 96);
  if (v40)
  {
    v41 = (v8 + *(v15 + 40));
    v42 = *v41;
    v33 = v41[1];
    v43 = v40;
    v44 = v8;
    v45 = MEMORY[0x26D69CC20](v42, v33);
    v34 = [v43 firstMatchInString:v45 options:0 range:{0, String.count.getter()}];

    if (!v34)
    {
      outlined destroy of Host.ClientConnection(v44);
      goto LABEL_28;
    }

    v8 = v44;
  }

  outlined destroy of Host.ClientConnection(v8);
  v34 = *(v2 + 168);
  v33 = *(v34 + 2);
  swift_beginAccess();
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 168) = v34;
  if ((result & 1) == 0)
  {
    goto LABEL_35;
  }

  if (v33)
  {
    while (v33 <= *(v34 + 2))
    {
      Host.beginTracingImpl(_:dictionary:)(v34 + v35 + (v33 - 1) * v36, v37);
      *(v2 + 168) = v34;
      swift_endAccess();
LABEL_28:
      v46 = *(v2 + 168);
      v47 = *(v46 + 16);
      if (v47)
      {
        v48 = *(v46 + v35 + (v47 - 1) * v36);
        v49 = swift_unknownObjectRetain();
        xpc_connection_send_message(v49, v37);
        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v34);
      v34 = result;
      *(v2 + 168) = result;
      if (!v33)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
LABEL_36:
    __break(1u);
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t Host.onGracefulExit(_:)(void *a1)
{
  v25 = type metadata accessor for Host.ClientConnection(0);
  v5 = *(v25 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v25);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = a1;
  v9 = xpc_dictionary_get_remote_connection(a1);
  swift_beginAccess();
  v10 = *(v1 + 168);
  int64 = *(v10 + 16);

  if (!int64)
  {
    goto LABEL_29;
  }

  v12 = 0;
  while (1)
  {
    if (v12 >= *(v10 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    v3 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v2 = *(v5 + 72) * v12;
    outlined init with copy of Host.ClientConnection(v10 + v3 + v2, v8);
    v13 = *v8;
    swift_unknownObjectRetain();
    outlined destroy of Host.ClientConnection(v8);
    swift_unknownObjectRelease();
    if (v9)
    {
      if (v9 == v13)
      {
        break;
      }
    }

    if (int64 == ++v12)
    {
      goto LABEL_29;
    }
  }

  swift_beginAccess();
  v5 = *(v1 + 168);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 168) = v5;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

LABEL_20:
  v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
LABEL_8:
  v15 = v26;
  if (v12 >= *(v5 + 16))
  {
    __break(1u);
  }

  else
  {
    *(v5 + v3 + v2 + *(v25 + 36)) = 2;
    *(v1 + 168) = v5;
    swift_endAccess();
    int64 = xpc_dictionary_get_int64(v15, "bytes_written");
    swift_beginAccess();
    v5 = *(v1 + 168);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 168) = v5;
    if (v16)
    {
      goto LABEL_10;
    }
  }

  v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
LABEL_10:
  if (v12 >= *(v5 + 16))
  {
    __break(1u);
  }

  else
  {
    *(v5 + v3 + v2 + 16) = int64;
    *(v1 + 168) = v5;
    swift_endAccess();
    v5 = xpc_dictionary_get_int64(v15, "bytes_written_compressed");
    swift_beginAccess();
    int64 = *(v1 + 168);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 168) = int64;
    if (v17)
    {
      goto LABEL_12;
    }
  }

  int64 = specialized _ArrayBuffer._consumeAndCreateNew()(int64);
LABEL_12:
  if (v12 >= int64[2])
  {
    __break(1u);
    goto LABEL_26;
  }

  v18 = int64 + v3 + v2;
  *(v18 + 3) = v5;
  v18[32] = 0;
  *(v1 + 168) = int64;
  swift_endAccess();
  LOBYTE(v15) = static os_log_type_t.default.getter();
  if (one-time initialization token for log != -1)
  {
LABEL_26:
    swift_once();
  }

  v19 = log;
  if (!os_log_type_enabled(log, v15))
  {
    return swift_unknownObjectRelease();
  }

  v20 = swift_slowAlloc();
  *v20 = 67240448;
  v21 = *(v1 + 168);
  if (v12 >= *(v21 + 16))
  {
    __break(1u);
  }

  else
  {
    v22 = v20;
    v20[1] = xpc_connection_get_pid(*(v21 + v3 + v2));
    *(v22 + 4) = 2050;
    v23 = *(v1 + 168);
    if (v12 < *(v23 + 16))
    {
      *(v22 + 10) = *(v23 + v3 + v2 + 16);

      _os_log_impl(&dword_26C161000, v19, v15, "client graceful exit %{public}d bytes:  %{public}lld ", v22, 0x12u);
      MEMORY[0x26D69EAB0](v22, -1, -1);
      return swift_unknownObjectRelease();
    }
  }

  __break(1u);
LABEL_29:

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Host.beginTracingImpl(_:dictionary:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v48[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v48[-v12];
  if (*(a1 + 12) == 1 && !*(a1 + 16) && *(a1 + 32) == 1)
  {
    v14 = type metadata accessor for Host.ClientConnection(0);
    v15 = *(v14 + 36);
    if (*(a1 + v15) == 1)
    {
      v16 = v14;
      xpc_connection_get_pid(*a1);
      xpc_dictionary_set_string(a2, "swiftui_command", "beginTracing");
      v71[0] = -1;
      v17 = Host.ClientConnection.fileTemplate(_:)(*(v2 + 160));
      specialized static URL.mktempCommon(_:x:)(v17._countAndFlagsBits, v17._object, v71, v13);

      if (*(v2 + 72) == 1)
      {
        __break(1u);
      }

      else
      {
        v18 = *(v2 + 49) == 1;
        v55 = v15;
        if (v18)
        {
          v54 = v13;
          v53 = a2;
          v19 = static os_log_type_t.default.getter();
          if (one-time initialization token for log != -1)
          {
            swift_once();
          }

          v20 = log;
          v52 = *(v7 + 16);
          v52(v11, v54, v6);
          if (os_log_type_enabled(v20, v19))
          {
            v21 = swift_slowAlloc();
            v22 = swift_slowAlloc();
            v51 = v6;
            v23 = v22;
            v65.i64[0] = v22;
            *v21 = 136446210;
            v49 = v19;
            v24 = URL.path.getter();
            v50 = v16;
            v25 = v7;
            v27 = v26;
            (*(v25 + 8))(v11, v51);
            v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v27, v65.i64);
            v7 = v25;
            v16 = v50;

            *(v21 + 4) = v28;
            _os_log_impl(&dword_26C161000, v20, v49, "new connection writing to: %{public}s", v21, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v23);
            v29 = v23;
            v6 = v51;
            MEMORY[0x26D69EAB0](v29, -1, -1);
            MEMORY[0x26D69EAB0](v21, -1, -1);
          }

          else
          {
            (*(v7 + 8))(v11, v6);
          }

          v30 = *(v16 + 32);
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](a1 + v30, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          v13 = v54;
          v52((a1 + v30), v54, v6);
          (*(v7 + 56))(a1 + v30, 0, 1, v6);
          a2 = v53;
        }

        else
        {
          URL.unlink()();
        }

        v31 = v71[0];
        xpc_dictionary_set_fd(a2, "swiftui_fd", v71[0]);
        v32 = type metadata accessor for JSONEncoder();
        v33 = *(v32 + 48);
        v34 = *(v32 + 52);
        swift_allocObject();
        JSONEncoder.init()();
        v35 = *(v3 + 72);
        if (v35 != 1)
        {
          v36 = *(v3 + 88);
          v37 = *(v3 + 80);
          v39 = *(v3 + 56);
          v38 = *(v3 + 64);
          v64 = BYTE4(v37) & 1;
          LOBYTE(v61) = v39 & 1;
          *(&v61 + 1) = v38;
          *&v62 = v35;
          DWORD2(v62) = v37;
          BYTE12(v62) = BYTE4(v37) & 1;
          BYTE13(v62) = BYTE5(v37) & 1;
          BYTE14(v62) = BYTE6(v37) & 1;
          HIBYTE(v62) = HIBYTE(v37) & 1;
          v63 = v36 & 0x101;
          v40 = *(v3 + 40);
          v41 = *(v3 + 48);
          v42 = vdupq_lane_s64(v40.i64[0], 0);
          v43 = vdupq_laneq_s64(v40, 1);
          v65 = v40;
          LOBYTE(v60) = v40.i8[0] & 1;
          *(&v60 + 1) = vuzp1_s8(vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v42, xmmword_26C336DE0), vshlq_u64(v42, xmmword_26C336DD0))), 0x1000100010001), -24).u32[0];
          BYTE5(v60) = v40.i8[5] & 1;
          WORD3(v60) = v40.i16[3] & 0x101;
          BYTE8(v60) = v41 & 1;
          *v40.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v43, xmmword_26C336DE0), vshlq_u64(v43, xmmword_26C336DD0))), 0x1000100010001);
          *(&v60 + 9) = vuzp1_s8(*v40.i8, *v40.i8).u32[0];
          BYTE13(v60) = BYTE5(v41) & 1;
          BYTE14(v60) = BYTE6(v41) & 1;
          HIBYTE(v60) = HIBYTE(v41) & 1;
          v66 = v39;
          v67 = v38;
          v68 = v35;
          v69 = v37;
          v70 = v36;
          outlined init with copy of TraceConfig(&v65, &v56);
          lazy protocol witness table accessor for type TraceConfig and conformance TraceConfig();
          v44 = dispatch thunk of JSONEncoder.encode<A>(_:)();
          v46 = v45;
          v56 = v60;
          v57 = v61;
          v58 = v62;
          v59 = v63;
          outlined destroy of TraceConfig(&v56);
          swift_unknownObjectRetain();
          specialized Data._Representation.withUnsafeBytes<A>(_:)(v44, v46, a2);

          outlined consume of Data._Representation(v44, v46);
          result = (*(v7 + 8))(v13, v6);
          *(a1 + 8) = v31;
          *(a1 + 12) = 0;
          *(a1 + v55) = 0;
          return result;
        }
      }

      __break(1u);
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  v56 = v60;
  v57 = v61;
  v58 = v62;
  v59 = v63;
  outlined destroy of TraceConfig(&v56);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t $defer #1 () in Host.onEndTracing_sync(_:)(void *a1, void *a2, uint64_t a3)
{
  v46[4] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v38 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x28223BE20](v10);
  v44 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = xpc_dictionary_get_remote_connection(a1);
  if (!v14)
  {
    __break(1u);
    goto LABEL_18;
  }

  xpc_connection_send_message(v14, a2);
  swift_unknownObjectRelease();
  swift_beginAccess();
  v15 = *(a3 + 168);
  v16 = v15[2];
  if (!v16)
  {
LABEL_13:
    swift_endAccess();
    v33 = *(a3 + 24);
    if (v33)
    {
      xpc_connection_cancel(v33);
      v34 = *(a3 + 24);
      *(a3 + 24) = 0;
      result = swift_unknownObjectRelease();
      v36 = *MEMORY[0x277D85DE8];
      return result;
    }

LABEL_18:
    __break(1u);
  }

  v17 = *(a3 + 168);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 168) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_16:
    v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
  }

  v19 = 0;
  v45 = (v11 + 6);
  v40 = (v11 + 1);
  v41 = (v11 + 4);
  v39 = (v11 + 7);
  v42 = v15;
  v43 = v16;
  while (1)
  {
    *(a3 + 168) = v15;
    if (v19 >= v15[2])
    {
      __break(1u);
      goto LABEL_16;
    }

    v20 = type metadata accessor for Host.ClientConnection(0);
    v21 = v15 + ((*(*(v20 - 8) + 80) + 32) & ~*(*(v20 - 8) + 80)) + *(*(v20 - 8) + 72) * v19;
    if ((*(v21 + 12) & 1) == 0)
    {
      close(*(v21 + 8));
      *(v21 + 8) = 0;
      *(v21 + 12) = 1;
    }

    v22 = *(v20 + 32);
    v11 = &_s10Foundation3URLVSgMR;
    outlined init with copy of ResourceSet<Interpreter, ()>(v21 + v22, v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if ((*v45)(v9, 1, v10) != 1)
    {
      break;
    }

    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_6:
    ++v19;
    *(a3 + 168) = v15;
    if (v16 == v19)
    {
      goto LABEL_13;
    }
  }

  v23 = a3;
  v24 = v44;
  v25 = v9;
  (*v41)(v44, v9, v10);
  v26 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v27);
  v29 = v28;
  v46[0] = 0;
  v30 = [v26 removeItemAtURL:v28 error:v46];

  v11 = v46[0];
  if (v30)
  {
    v31 = *v40;
    v32 = v46[0];
    v31(v24, v10);
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v21 + v22, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*v39)(v21 + v22, 1, 1, v10);
    a3 = v23;
    v9 = v25;
    v15 = v42;
    v16 = v43;
    goto LABEL_6;
  }

  v37 = v46[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

xpc_object_t Host.endTracingForClients()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v65 = &v54 - v3;
  v69 = type metadata accessor for URL();
  empty = *(v69 - 8);
  v5 = *(empty + 64);
  v6 = MEMORY[0x28223BE20](v69);
  v64 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v63 = &v54 - v9;
  MEMORY[0x28223BE20](v8);
  v68 = &v54 - v10;
  v11 = type metadata accessor for Host.ClientConnection(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v74 = (&v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v54 = &v54 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v59 = &v54 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v54 - v20;
  v60 = xpc_array_create(0, 0);
  swift_beginAccess();
  v22 = *(v0 + 168);
  v23 = v22[2];
  v72 = v0;
  v73 = v11;
  v58 = v21;
  if (!v23)
  {
LABEL_23:
    swift_endAccess();
    swift_beginAccess();
    v23 = v22[2];
    if (!v23)
    {
      v47 = 0;
      v49 = 0;
LABEL_47:
      specialized Array.replaceSubrange<A>(_:with:)(v47, v49);
      swift_endAccess();
      return v60;
    }

    v47 = 0;
    while (v47 < v22[2])
    {
      empty = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v0 = *(v12 + 72);
      outlined init with copy of Host.ClientConnection(v22 + empty + v0 * v47, v21);
      v48 = v21[*(v11 + 36)];
      outlined destroy of Host.ClientConnection(v21);
      v49 = v47 + 1;
      if (v48 == 2)
      {
        v50 = v22[2];
        if (v50 - 1 == v47)
        {
          goto LABEL_47;
        }

        v23 = empty + v0 * v49;
        v11 = v73;
        v12 = v54;
        while (v49 < v50)
        {
          outlined init with copy of Host.ClientConnection(v22 + v23, v21);
          v11 = v21[*(v11 + 36)];
          outlined destroy of Host.ClientConnection(v21);
          if (v11 == 2)
          {
            v11 = v73;
          }

          else
          {
            if (v49 != v47)
            {
              if ((v47 & 0x8000000000000000) != 0)
              {
                goto LABEL_52;
              }

              v51 = v22[2];
              if (v47 >= v51)
              {
                goto LABEL_53;
              }

              v11 = v47 * v0;
              outlined init with copy of Host.ClientConnection(v22 + empty + v47 * v0, v59);
              if (v49 >= v51)
              {
                goto LABEL_54;
              }

              outlined init with copy of Host.ClientConnection(v22 + v23, v12);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v72 + 168) = v22;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
                *(v72 + 168) = v22;
              }

              v21 = v58;
              if (v47 >= v22[2])
              {
                goto LABEL_55;
              }

              outlined assign with take of Host.ClientConnection(v12, v22 + empty + v11);
              v11 = v72;
              *(v72 + 168) = v22;
              if (v49 >= v22[2])
              {
                goto LABEL_56;
              }

              outlined assign with take of Host.ClientConnection(v59, v22 + v23);
              *(v11 + 168) = v22;
            }

            v11 = v73;
            ++v47;
          }

          ++v49;
          v50 = v22[2];
          v23 += v0;
          if (v49 == v50)
          {
            if (v49 < v47)
            {
              goto LABEL_57;
            }

            goto LABEL_47;
          }
        }

        goto LABEL_50;
      }

      ++v47;
      v11 = v73;
      if (v23 == v49)
      {
        v47 = v22[2];
        v49 = v47;
        goto LABEL_47;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
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
    goto LABEL_58;
  }

  v24 = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 168) = v22;
  if ((v24 & 1) == 0)
  {
LABEL_58:
    v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
  }

  v26 = 0;
  v67 = (empty + 8);
  v61 = (empty + 48);
  v57 = (empty + 32);
  v56 = (empty + 16);
  v55 = (empty + 56);
  *&v25 = 67240192;
  v62 = v25;
  v71 = v23;
  while (1)
  {
    *(v0 + 168) = v22;
    if (v26 >= v22[2])
    {
      __break(1u);
      goto LABEL_49;
    }

    v27 = *(v12 + 72);
    v28 = v22 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + v27 * v26;
    if (!*(v28 + *(v11 + 36)))
    {
      if (*(v28 + 12) == 1)
      {
        goto LABEL_60;
      }

      outlined init with copy of Host.ClientConnection(v22 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + v27 * v26, v74);
      v29 = static os_log_type_t.default.getter();
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v30 = log;
      if (os_log_type_enabled(log, v29))
      {
        v31 = swift_slowAlloc();
        *v31 = v62;
        v32 = v74;
        swift_beginAccess();
        v33 = *v32;
        v23 = v71;
        *(v31 + 4) = xpc_connection_get_pid(v33);
        _os_log_impl(&dword_26C161000, v30, v29, "will end tracing for %{public}d", v31, 8u);
        MEMORY[0x26D69EAB0](v31, -1, -1);
      }

      empty = xpc_dictionary_create_empty();
      xpc_dictionary_set_string(empty, "swiftui_command", "endTracing");
      $defer #1 () in Host.endTracing(_:)(v28, empty);
      swift_unknownObjectRelease();
      outlined destroy of Host.ClientConnection(v74);
      if ((*(v28 + 12) & 1) == 0)
      {
        break;
      }
    }

LABEL_6:
    ++v26;
    *(v0 + 168) = v22;
    if (v23 == v26)
    {
      v21 = v58;
      goto LABEL_23;
    }
  }

  v11 = *(v28 + 8);
  v34 = xpc_dictionary_create(0, 0, 0);
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_51;
  }

  v70 = v34;
  v35 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v36 = v64;
  URL.init(fileURLWithPath:isDirectory:)();

  Host.ClientConnection.cloned.getter();
  v37 = v63;
  URL.appendingPathComponent(_:)();

  v38 = v69;
  v66 = *v67;
  v66(v36, v69);
  empty = v65;
  URL.init(clone:to:)(v11, v37, v65);
  if ((*v61)(empty, 1, v38) == 1)
  {
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](empty, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    static os_log_type_t.fault.getter();
    os_log(_:dso:log:_:_:)();
    swift_unknownObjectRelease();
    v11 = v73;
    v23 = v71;
LABEL_5:
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    *(v28 + 32) = 1;
    v0 = v72;
    goto LABEL_6;
  }

  (*v57)(v68, empty, v38);
  v39 = URL.openFd(mode:)(0);
  Host.ClientConnection.closeAndUnlink()();
  *(v28 + 8) = v39;
  *(v28 + 12) = 0;
  v11 = v73;
  if (*(v72 + 72) != 1)
  {
    v23 = v71;
    if (*(v72 + 49))
    {
      v40 = *(v73 + 32);
      outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v28 + v40, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v41 = v69;
      (*v56)(v28 + v40, v68, v69);
      (*v55)(v28 + v40, 0, 1, v41);
    }

    else
    {
      URL.unlink()();
      v41 = v69;
    }

    v42 = v70;
    xpc_dictionary_set_fd(v70, "swiftui_fd", v39);
    xpc_dictionary_set_int64(v42, "bytes_written", *(v28 + 16));
    v43 = (v28 + *(v11 + 40));
    v44 = *v43;
    v45 = v43[1];
    empty = String.utf8CString.getter();
    xpc_dictionary_set_string(v42, "binary_name", (empty + 32));

    pid = xpc_connection_get_pid(*v28);
    xpc_dictionary_set_int64(v42, "pid", pid);
    xpc_array_append_value(v60, v42);
    swift_unknownObjectRelease();
    v66(v68, v41);
    goto LABEL_5;
  }

  __break(1u);
LABEL_60:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void $defer #1 () in Host.endTracing(_:)(uint64_t a1, void *a2)
{
  v55[1] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for Host.ClientConnection(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  pid = xpc_connection_get_pid(*a1);
  v9 = [objc_opt_self() targetWithPid_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26C336DF0;
  v11 = v9;
  v12 = MEMORY[0x26D69CC20](0xD00000000000001FLL, 0x800000026C33D2B0);
  v13 = MEMORY[0x26D69CC20](0x6563617254, 0xE500000000000000);
  v14 = [objc_opt_self() attributeWithDomain:v12 name:v13];

  *(v10 + 32) = v14;
  *(v10 + 40) = [objc_opt_self() attributeWithCompletionPolicy_];
  v15 = objc_allocWithZone(MEMORY[0x277D46DB8]);
  v16 = MEMORY[0x26D69CC20](0x2049557466697753, 0xEF676E6963617254);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for RBSAttribute, 0x277D46DD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v18 = [v15 initWithExplanation:v16 target:v11 attributes:isa];

  v55[0] = 0;
  if ([v18 acquireWithError_])
  {
    v19 = *a1;
    v20 = v55[0];
    v21 = xpc_connection_send_message_with_reply_sync(v19, a2);
    v22 = static os_log_type_t.default.getter();
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v23 = log;
    if (os_log_type_enabled(log, v22))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v55[0] = v25;
      *v24 = 136446210;
      MEMORY[0x26D69ECF0](v21);
      v26 = String.init(cString:)();
      v53 = a1;
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v55);
      a1 = v53;

      *(v24 + 4) = v28;
      _os_log_impl(&dword_26C161000, v23, v22, "received reply to onEndTracing: %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x26D69EAB0](v25, -1, -1);
      MEMORY[0x26D69EAB0](v24, -1, -1);
    }

    int64 = xpc_dictionary_get_int64(v21, "bytes_written");
    v30 = xpc_dictionary_get_int64(v21, "bytes_written_compressed");
    *(a1 + 16) = int64;
    *(a1 + 24) = v30;
    *(a1 + 32) = 0;
    [v18 invalidate];
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = v55[0];
    v32 = _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined init with copy of Host.ClientConnection(a1, v7);
    v53 = v4;
    v33 = &v7[*(v4 + 40)];
    v34 = *v33;
    v35 = v33[1];

    outlined destroy of Host.ClientConnection(v7);
    v36 = static os_log_type_t.default.getter();
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v37 = log;
    if (os_log_type_enabled(log, v36))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v55[0] = v39;
      *v38 = 136446466;
      ErrorValue = swift_getErrorValue();
      v52 = v11;
      v50 = v34;
      v41 = *(*(v54 - 8) + 64);
      MEMORY[0x28223BE20](ErrorValue);
      v51 = v32;
      (*(v43 + 16))(&v49 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
      v44 = String.init<A>(describing:)();
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v55);

      *(v38 + 4) = v46;
      *(v38 + 12) = 2082;
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v35, v55);

      *(v38 + 14) = v47;
      _os_log_impl(&dword_26C161000, v37, v36, "Error ending tracing for client: %{public}s, client: %{public}s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69EAB0](v39, -1, -1);
      MEMORY[0x26D69EAB0](v38, -1, -1);
    }

    else
    {
    }

    v4 = v53;
  }

  *(a1 + *(v4 + 36)) = 1;
  v48 = *MEMORY[0x277D85DE8];
}

uint64_t Host.onError(connection:error:)(uint64_t *a1, uint64_t a2)
{
  v102[6] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  pid = v86 - v7;
  v94 = type metadata accessor for URL();
  v87 = *(v94 - 8);
  v9 = *(v87 + 64);
  MEMORY[0x28223BE20](v94);
  v11 = v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Host.ClientConnection(0);
  v13 = *(v12 - 8);
  v100 = v12;
  v101 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v86 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = (v86 - v21);
  result = swift_beginAccess();
  v24 = *(v2 + 168);
  v25 = *(v24 + 16);
  v95 = v2;
  v92 = v11;
  v93 = v17;
  if (v25)
  {
    v26 = (*(v101 + 80) + 32) & ~*(v101 + 80);
    v98 = a2;
    v99 = v26;
    v27 = v24 + v26;

    v28 = 0;
    while (1)
    {
      if (v28 >= *(v24 + 16))
      {
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v11 = *(v101 + 72) * v28;
      outlined init with copy of Host.ClientConnection(v27 + v11, v22);
      v17 = a1;
      v29 = *v22;
      swift_unknownObjectRetain();
      outlined destroy of Host.ClientConnection(v22);
      swift_unknownObjectRelease();
      v30 = v29 == v17;
      a1 = v17;
      if (v30)
      {
        break;
      }

      if (v25 == ++v28)
      {

        v2 = v95;
        v17 = v93;
        goto LABEL_7;
      }
    }

    v36 = *(v95 + 168);
    if (v28 < *(v36 + 16))
    {
      if (*(v36 + v99 + v11 + v100[9]) == 2)
      {
        LOBYTE(v22) = static os_log_type_t.default.getter();
        if (one-time initialization token for log == -1)
        {
          goto LABEL_17;
        }

        goto LABEL_52;
      }

      v67 = static os_log_type_t.error.getter();
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v68 = log;
      if (os_log_type_enabled(log, v67))
      {
        swift_unknownObjectRetain_n();
        v17 = swift_slowAlloc();
        v69 = a1;
        v70 = swift_slowAlloc();
        v102[0] = v70;
        *v17 = 136446722;
        v71 = MEMORY[0x26D69ECF0](v98);
        v72 = String.init(cString:)();
        v20 = v73;
        free(v71);
        v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v20, v102);

        *(v17 + 4) = v74;
        *(v17 + 6) = 2082;
        v75 = *(v95 + 168);
        if (v28 < *(v75 + 16))
        {
          v76 = (v75 + v99 + v100[10] + v11);
          v77 = *v76;
          v78 = v76[1];

          v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, v102);

          *(v17 + 14) = v79;
          *(v17 + 11) = 1026;
          pid = xpc_connection_get_pid(v69);
          swift_unknownObjectRelease();
          *(v17 + 6) = pid;
          swift_unknownObjectRelease();
          _os_log_impl(&dword_26C161000, v68, v67, "removed on error: %{public}s on connection: %{public}s pid: %{public}d", v17, 0x1Cu);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v70, -1, -1);
          MEMORY[0x26D69EAB0](v17, -1, -1);
          goto LABEL_43;
        }

LABEL_57:
        __break(1u);
      }

LABEL_43:
      v80 = v95;
      swift_beginAccess();
      v81 = *(v80 + 168);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v80 + 168) = v81;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v81 = specialized _ArrayBuffer._consumeAndCreateNew()(v81);
      }

      if (v28 >= *(v81 + 16))
      {
        __break(1u);
      }

      else
      {
        *(v81 + v99 + v11 + v100[9]) = 2;
        v83 = v95;
        *(v95 + 168) = v81;
        if (v28 < *(v81 + 16))
        {
          Host.ClientConnection.closeAndUnlink()();
          *(v83 + 168) = v81;
          result = swift_endAccess();
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_55:
      swift_once();
LABEL_11:
      os_log(_:dso:log:_:_:)();
      goto LABEL_12;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    swift_once();
LABEL_17:
    v37 = log;
    result = os_log_type_enabled(log, v22);
    if (result)
    {
      swift_unknownObjectRetain_n();
      v38 = swift_slowAlloc();
      v39 = a1;
      v40 = swift_slowAlloc();
      v102[0] = v40;
      *v38 = 136446722;
      v41 = MEMORY[0x26D69ECF0](v98);
      v42 = String.init(cString:)();
      v44 = v43;
      free(v41);
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v102);

      *(v38 + 4) = v45;
      *(v38 + 12) = 2082;
      v46 = *(v95 + 168);
      if (v28 >= *(v46 + 16))
      {
        __break(1u);
        goto LABEL_57;
      }

      v47 = (v46 + v99 + v100[10] + v11);
      v48 = *v47;
      v49 = v47[1];

      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v102);

      *(v38 + 14) = v50;
      *(v38 + 22) = 1026;
      LODWORD(v50) = xpc_connection_get_pid(v39);
      swift_unknownObjectRelease();
      *(v38 + 24) = v50;
      swift_unknownObjectRelease();
      _os_log_impl(&dword_26C161000, v37, v22, "gracefully removed: %{public}s on connection: %{public}s pid: %{public}d", v38, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x26D69EAB0](v40, -1, -1);
      result = MEMORY[0x26D69EAB0](v38, -1, -1);
    }

LABEL_48:
    v84 = *MEMORY[0x277D85DE8];
    return result;
  }

LABEL_7:
  v31 = *(v2 + 24);
  if (!v31 || v31 != a1)
  {
    goto LABEL_48;
  }

  v86[1] = *(v2 + 24);
  v28 = v95;
  *(v95 + 24) = 0;
  if (!*(v28 + 152))
  {
    static os_log_type_t.error.getter();
    if (one-time initialization token for log != -1)
    {
      goto LABEL_55;
    }

    goto LABEL_11;
  }

LABEL_12:
  *(v28 + 152) = 1;
  specialized Host.state.didset();
  Host.endTracingForClients()();
  swift_unknownObjectRelease();
  v32 = *(v28 + 168);
  swift_beginAccess();
  v98 = v32;

  v33 = *(v28 + 168);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *(v28 + 168);
  if (v34)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v35 + 16));
  }

  else
  {
    *(v28 + 168) = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC21SwiftUITracingSupport4HostC16ClientConnectionV_Tt1g5(0, *(v35 + 24) >> 1);
  }

  swift_endAccess();
  v22 = *(v98 + 16);
  v51 = v94;
  if (!v22)
  {
LABEL_37:
    swift_unknownObjectRelease();

    goto LABEL_48;
  }

  v11 = 0;
  v90 = (*(v101 + 80) + 32) & ~*(v101 + 80);
  v97 = v98 + v90;
  v96 = (v87 + 48);
  v89 = (v87 + 32);
  v88 = (v87 + 8);
  v87 += 56;
  a1 = &_s10Foundation3URLVSgMd;
  v91 = v22;
  while (1)
  {
    if (v11 >= *(v98 + 16))
    {
      goto LABEL_50;
    }

    v99 = *(v101 + 72);
    outlined init with copy of Host.ClientConnection(v97 + v99 * v11, v20);
    if ((v20[12] & 1) == 0)
    {
      close(*(v20 + 2));
      *(v20 + 2) = 0;
      v20[12] = 1;
    }

    v52 = v100[8];
    outlined init with copy of ResourceSet<Interpreter, ()>(&v20[v52], pid, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if ((*v96)(pid, 1, v51) != 1)
    {
      break;
    }

    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](pid, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_32:
    if (v20[v100[9]] != 2)
    {
      outlined init with copy of Host.ClientConnection(v20, v17);
      swift_beginAccess();
      v63 = *(v28 + 168);
      v64 = swift_isUniquelyReferenced_nonNull_native();
      *(v28 + 168) = v63;
      if ((v64 & 1) == 0)
      {
        v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v63[2] + 1, 1, v63);
        *(v28 + 168) = v63;
      }

      v66 = v63[2];
      v65 = v63[3];
      if (v66 >= v65 >> 1)
      {
        v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v65 > 1, v66 + 1, 1, v63);
      }

      v63[2] = v66 + 1;
      outlined init with take of Host.ClientConnection(v17, v63 + v90 + v66 * v99);
      *(v28 + 168) = v63;
      swift_endAccess();
      v51 = v94;
      a1 = &_s10Foundation3URLVSgMd;
    }

    ++v11;
    outlined destroy of Host.ClientConnection(v20);
    if (v22 == v11)
    {
      goto LABEL_37;
    }
  }

  v53 = v92;
  v54 = pid;
  (*v89)(v92, pid, v51);
  v55 = [objc_opt_self() defaultManager];
  v56 = v51;
  URL._bridgeToObjectiveC()(v57);
  v59 = v58;
  v102[0] = 0;
  v60 = [v55 removeItemAtURL:v58 error:v102];

  if (v60)
  {
    v61 = *v88;
    v62 = v102[0];
    v61(v53, v56);
    a1 = &_s10Foundation3URLVSgMd;
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v20[v52], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*v87)(&v20[v52], 1, 1, v56);
    v28 = v95;
    v51 = v56;
    pid = v54;
    v17 = v93;
    v22 = v91;
    goto LABEL_32;
  }

  v85 = v102[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t Host.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  outlined consume of TraceConfig?(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v0 + 120, &_sypSgMd, &_sypSgMR);
  v5 = *(v0 + 168);

  return v0;
}

uint64_t Host.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  outlined consume of TraceConfig?(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v0 + 120, &_sypSgMd, &_sypSgMR);
  v5 = *(v0 + 168);

  return swift_deallocClassInstance();
}

Swift::Int Client.ConnectionError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](0);
  return Hasher._finalize()();
}

uint64_t Client.trace.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 112) = a1;
  return result;
}

uint64_t closure #1 in variable initialization expression of Client.whenTracingBegins()
{
  if ((static SwiftUITrace.registerAtExit & 1) == 0)
  {
    return atexit(@objc closure #1 in closure #1 in variable initialization expression of Client.whenTracingBegins);
  }

  return result;
}

uint64_t Client.init()()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v14 = *(v1 - 8);
  v15 = v1;
  v2 = *(v14 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  *(v0 + 16) = 0;
  v9 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v13[1] = "resourceSetDidChange";
  v13[2] = v9;
  static DispatchQoS.unspecified.getter();
  v16 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v14 + 104))(v4, *MEMORY[0x277D85260], v15);
  *(v0 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 32) = 1;
  *(v0 + 40) = swift_slowAlloc();
  *(v0 + 48) = 0;
  *(v0 + 52) = 1;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = xmmword_26C32F2B0;
  *(v0 + 104) = 0;
  v10 = swift_slowAlloc();
  *v10 = 0;
  *(v10 + 4) = 0;
  *(v0 + 112) = v10;
  *(v0 + 120) = _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA5StatsV_Tt0B5(0, 0, 0, 0);
  *(v0 + 128) = &outlined read-only object #0 of Client.init();
  swift_unknownObjectWeakInit();
  *(v0 + 144) = 0;
  *(v0 + 152) = 1;
  Client.register()();
  if (v11)
  {
  }

  return v0;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Client.register()()
{
  if (*(v0 + 53))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!*(v0 + 16))
  {
    v1 = MEMORY[0x26D69CC20](0xD00000000000001FLL, 0x800000026C33D8D0);
    v2 = NSClassFromString(v1);

    if (!v2)
    {
      specialized XPCDispatch.connect()(&unk_287CE0F68, partial apply for specialized closure #1 in XPCDispatch.connect(), &block_descriptor_191);
      if (!*(v0 + 16))
      {
LABEL_8:
        lazy protocol witness table accessor for type Client.ConnectionError and conformance Client.ConnectionError();
        swift_allocError();
        swift_willThrow();
        return;
      }

      if ((*(v0 + 53) & 1) == 0)
      {
        v3 = *(v0 + 24);
        v4 = swift_allocObject();
        *(v4 + 16) = partial apply for closure #1 in Client.rsvp();
        *(v4 + 24) = v0;
        v7[4] = thunk for @callee_guaranteed () -> ()partial apply;
        v7[5] = v4;
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 1107296256;
        v7[2] = thunk for @escaping @callee_guaranteed () -> ();
        v7[3] = &block_descriptor_185;
        v5 = _Block_copy(v7);
        v6 = v3;

        dispatch_sync(v6, v5);

        _Block_release(v5);
        LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

        if ((v5 & 1) == 0)
        {
          return;
        }

        __break(1u);
        goto LABEL_8;
      }

LABEL_11:
      __break(1u);
    }
  }
}

uint64_t Client.init(test:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = *(a1 + 4);
  v31 = *(a1 + 5);
  v32 = v12;
  v33 = *(a1 + 24);
  *(v2 + 16) = 0;
  v13 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v26[0] = "resourceSetDidChange";
  v26[1] = v13;
  static DispatchQoS.unspecified.getter();
  v34 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  v14 = a1[1];
  v27 = *a1;
  v28 = v14;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v29 + 104))(v7, *MEMORY[0x277D85260], v30);
  *(v2 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v2 + 32) = 1;
  *(v2 + 40) = swift_slowAlloc();
  *(v2 + 48) = 0;
  *(v2 + 52) = 1;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = xmmword_26C32F2B0;
  *(v2 + 104) = 0;
  v15 = swift_slowAlloc();
  *v15 = 0;
  *(v15 + 4) = 0;
  *(v2 + 112) = v15;
  *(v2 + 120) = _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA5StatsV_Tt0B5(0, 0, 0, 0);
  *(v2 + 128) = &outlined read-only object #0 of Client.init(test:);
  swift_unknownObjectWeakInit();
  *(v2 + 144) = 0;
  *(v2 + 152) = 1;
  *(v2 + 53) = 1;
  v16 = *(v2 + 56);
  v17 = *(v2 + 64);
  v18 = *(v2 + 72);
  v19 = *(v2 + 80);
  v20 = *(v2 + 88);
  v21 = *(v2 + 96);
  v22 = v28;
  *(v2 + 56) = v27;
  *(v2 + 72) = v22;
  v23 = v31;
  *(v2 + 88) = v32;
  *(v2 + 96) = v23;
  v24 = *(v2 + 104);
  *(v2 + 104) = v33;
  outlined consume of TraceConfig?(v16, v17, v18, v19, v20);
  return v2;
}

uint64_t Client.deinit()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  if (v1)
  {
    if (*(v1 + 5) == 1)
    {
      outlined destroy of Trace(v1 + 8);
    }

    MEMORY[0x26D69EAB0](v1, -1, -1);
    *(v0 + 112) = 0;
    swift_endAccess();
    MEMORY[0x26D69EAB0](*(v0 + 40), -1, -1);
    swift_beginAccess();
    v2 = *(v0 + 120);
    if (v2)
    {
      MEMORY[0x26D69EAB0](v2, -1, -1);
      *(v0 + 120) = 0;
      swift_endAccess();
      v3 = *(v0 + 16);
      swift_unknownObjectRelease();

      v4 = *(v0 + 96);
      v5 = *(v0 + 104);
      outlined consume of TraceConfig?(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
      v6 = *(v0 + 128);

      MEMORY[0x26D69EB80](v0 + 136);
      return v0;
    }
  }

  else
  {
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Client.__deallocating_deinit()
{
  Client.deinit();

  return swift_deallocClassInstance();
}

uint64_t Client.onBeginTracing_sync(_:)(void *a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v33 - v5;
  if (*(v1 + 53))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(v1 + 32) == 1)
  {
    v7 = xpc_dictionary_dup_fd(a1, "swiftui_fd");
    *(v1 + 48) = v7;
    *(v1 + 52) = 0;
    if (v7 != -1)
    {
      v8 = v7;
      v9 = type metadata accessor for JSONDecoder();
      v10 = *(v9 + 48);
      v11 = *(v9 + 52);
      swift_allocObject();
      JSONDecoder.init()();
      length = 0;
      data = xpc_dictionary_get_data(a1, "config", &length);
      if (!data)
      {
        goto LABEL_9;
      }

      v13 = specialized Data.init(bytes:count:)(data, length);
      if (length >= 1)
      {
        v15 = v13;
        v16 = v14;
        lazy protocol witness table accessor for type TraceConfig and conformance TraceConfig();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();
        v17 = *(v1 + 56);
        v18 = *(v1 + 64);
        v19 = v36;
        *(v1 + 56) = v35;
        v20 = v38;
        v21 = *(v1 + 72);
        v22 = *(v1 + 80);
        v23 = *(v1 + 88);
        v24 = *(v1 + 96);
        *(v1 + 72) = v19;
        *(v1 + 88) = v37;
        v25 = *(v1 + 104);
        *(v1 + 104) = v20;
        outlined consume of TraceConfig?(v17, v18, v21, v22, v23);
        v26 = type metadata accessor for URL();
        (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
        v27 = type metadata accessor for KtraceFile(0);
        v28 = *(v27 + 48);
        v29 = *(v27 + 52);
        swift_allocObject();

        v30 = KtraceFile.init(create:owner:path:)(v8, v1, v6);
        Client.beginTracing(to:)(v30);

        result = outlined consume of Data._Representation(v15, v16);
        v32 = *MEMORY[0x277D85DE8];
        return result;
      }

LABEL_8:
      __break(1u);
LABEL_9:
      __break(1u);
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t Client.onEndTracing_sync(_:)(void *a1)
{
  if (*(v1 + 53))
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(v1 + 16);
  if (!v4)
  {
LABEL_14:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v6 = *(v1 + 16);
  swift_unknownObjectRetain();
  reply = xpc_dictionary_create_reply(a1);
  if (!reply)
  {
LABEL_13:
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v2 = reply;
  if (*(v1 + 32))
  {
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  Client.endTracing()();
  xpc_dictionary_set_int64(v2, "bytes_written", v17[3]);
  xpc_dictionary_set_int64(v2, "bytes_written_compressed", v17[2]);
  xpc_connection_send_message(v4, v2);
  v3 = static os_log_type_t.default.getter();
  if (one-time initialization token for log != -1)
  {
LABEL_10:
    swift_once();
  }

  v8 = log;
  if (os_log_type_enabled(log, v3))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17[0] = v10;
    *v9 = 136446210;
    v11 = MEMORY[0x26D69ECF0](v2);
    v12 = String.init(cString:)();
    v14 = v13;
    free(v11);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, v17);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_26C161000, v8, v3, "sending reply to onEndTracing: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x26D69EAB0](v10, -1, -1);
    MEMORY[0x26D69EAB0](v9, -1, -1);
  }

  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  *(v1 + 48) = 0;
  *(v1 + 52) = 1;
  return result;
}

uint64_t closure #1 in Client.rsvp()(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (*(result + 32) == 1)
    {
      v2 = *(result + 16);
      swift_unknownObjectRetain();
      empty = xpc_dictionary_create_empty();
      v4 = [objc_opt_self() processInfo];
      v5 = [v4 processName];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = String.utf8CString.getter();

      xpc_dictionary_set_string(empty, "binary_name", (v6 + 32));

      xpc_dictionary_set_string(empty, "swiftui_command", "onRsvp");
      $defer #1 () in closure #1 in Client.rsvp()(v1, empty);
      swift_unknownObjectRelease();

      return swift_unknownObjectRelease();
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t $defer #1 () in closure #1 in Client.rsvp()(_xpc_connection_s *a1, void *a2)
{
  v2 = xpc_connection_send_message_with_reply_sync(a1, a2);
  if (xpc_dictionary_get_string(v2, "swiftui_command"))
  {
    if (String.init(cString:)() == 0x6172546E69676562 && v3 == 0xEC000000676E6963)
    {
    }

    else
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v5 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    Client.onBeginTracing_sync(_:)(v2);
  }

LABEL_10:

  return swift_unknownObjectRelease();
}

uint64_t closure #1 in Client.gracefulExit()(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    if (!*(result + 32))
    {
      v3 = *(result + 16);
      swift_unknownObjectRetain();
      empty = xpc_dictionary_create_empty();
      xpc_dictionary_set_string(empty, "swiftui_command", "onGracefulExit");
      Client.endTracing()();
      xpc_dictionary_set_int64(empty, "bytes_written", v9);
      xpc_dictionary_set_int64(empty, "bytes_written_compressed", v8);
      *(v2 + 32) = 2;
      xpc_connection_send_message(v1, empty);
      v5 = swift_allocObject();
      *(v5 + 16) = v1;
      *(v5 + 24) = v2;
      v10 = partial apply for closure #1 in $defer #1 () in closure #1 in Client.gracefulExit();
      v11 = v5;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 1107296256;
      v8 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v9 = &block_descriptor_153;
      v6 = _Block_copy(v7);
      swift_unknownObjectRetain();

      xpc_connection_send_barrier(v1, v6);
      _Block_release(v6);
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t Client.onError(connection:error:)(_xpc_connection_s *a1, uint64_t a2)
{
  v5 = static os_log_type_t.error.getter();
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v6 = log;
  if (os_log_type_enabled(log, v5))
  {
    swift_unknownObjectRetain_n();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446466;
    v9 = MEMORY[0x26D69ECF0](a2);
    v10 = String.init(cString:)();
    v12 = v11;
    free(v9);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v17);

    *(v7 + 4) = v13;
    *(v7 + 12) = 1026;
    LODWORD(v13) = xpc_connection_get_pid(a1);
    swift_unknownObjectRelease();
    *(v7 + 14) = v13;
    swift_unknownObjectRelease();
    _os_log_impl(&dword_26C161000, v6, v5, "Error! %{public}s on connection: swiftuitraced pid: %{public}d", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D69EAB0](v8, -1, -1);
    MEMORY[0x26D69EAB0](v7, -1, -1);
  }

  v14 = *(v2 + 16);
  if (v14)
  {
    xpc_connection_cancel(v14);
    v15 = *(v2 + 16);
  }

  *(v2 + 16) = 0;
  result = swift_unknownObjectRelease();
  if (!*(v2 + 32))
  {
    MEMORY[0x28223BE20](result);
    return Transaction.synchronized<A>(_:)();
  }

  return result;
}

void closure #1 in Client.onError(connection:error:)(uint64_t a1)
{
  *(a1 + 32) = 1;
  swift_beginAccess();
  v2 = *(a1 + 112);
  os_unfair_lock_lock_with_options();
  Trace.deallocate()();
  os_unfair_lock_unlock(v2);
  swift_beginAccess();
  v3 = *(a1 + 120);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = static SwiftUITrace.role;
  static SwiftUITrace.role = 0x8000000000000000;
  outlined consume of SwiftUITrace.Role(v4);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@inout Trace) -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t CLI.init(verbose:)(int a1)
{
  v14 = a1;
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v13 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v13);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  *(v1 + 16) = 0;
  v10 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v12[1] = "()";
  v12[2] = v10;
  static DispatchQoS.unspecified.getter();
  v15 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v13);
  *(v1 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + 32) = 1;
  *(v1 + 33) = v14;
  specialized XPCDispatch.connect()(&unk_287CE0DD8, partial apply for specialized closure #1 in XPCDispatch.connect(), &block_descriptor_159);
  return v1;
}
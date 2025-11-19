uint64_t protocol witness for Inspectable.describe(state:) in conformance <> BufferAttachment<A>(uint64_t *a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  return BufferAttachment<>.describe(state:)(a1, *v2, v2[1], v2[2]);
}

uint64_t T_RawTreeNode.describe(state:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 41))
  {
    goto LABEL_12;
  }

  v7 = *a1;
  v6 = a1[1];
  v8 = *(a1 + 16);
  v10 = a1[3];
  v9 = a1[4];
  v11 = *(a1 + 40);
  v12 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref8ifExists6within0E3RefQzSg13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(a4, v9);
  v22 = v7;
  if ((a3 + 1) < 2)
  {
    v13 = 0x6870617267627553;
    v14 = 0xE800000000000000;
    if (a2 != -1)
    {
LABEL_4:
      _StringGuts.grow(_:)(16);

      strcpy(v31, "(parentIndex ");
      HIWORD(v31[1]) = -4864;
      v24 = a2;
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x26D69CDB0](v15);

      MEMORY[0x26D69CDB0](41, 0xE100000000000000);
      v17 = v31[0];
      v16 = v31[1];
LABEL_8:
      v31[0] = 0;
      v31[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      strcpy(v23, "(RawTreeNode ");
      HIWORD(v23[1]) = -4864;
      MEMORY[0x26D69CDB0](v13, v14);

      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      MEMORY[0x26D69CDB0](v17, v16);

      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      if (!__OFSUB__(v22, 1))
      {
        v31[0] = v22 - 1;
        v31[1] = v6;
        v32 = v8;
        v33 = v10;
        v34 = v9;
        v35 = v11;
        v36 = 0;
        v19 = specialized InspectionState.wrapDescription<A>(_:)(v12 | ((HIDWORD(v12) & 1) << 32));
        MEMORY[0x26D69CDB0](v19);

        MEMORY[0x26D69CDB0](2109498, 0xE300000000000000);
        v24 = v22 - 1;
        v25 = 0x7FFFFFFFFFFFFFFFLL;
        v26 = v8;
        v27 = v10;
        v28 = v9;
        v29 = v11;
        v30 = 0;
        v20 = specialized InspectionState.wrapDescription<A>(_:)(0x7365756C6176);
        MEMORY[0x26D69CDB0](v20);

        MEMORY[0x26D69CDB0](41, 0xE100000000000000);
        return v23[0];
      }

      __break(1u);
      goto LABEL_11;
    }

LABEL_7:
    v16 = 0xE400000000000000;
    v17 = 1414483794;
    goto LABEL_8;
  }

  if (!__OFSUB__(v7, 1))
  {
    v37 = v7 - 1;
    v38 = v6;
    v39 = v8;
    v40 = v10;
    v41 = v9;
    v42 = v11;
    v43 = 0;
    v13 = specialized InspectionState.wrapDescription<A>(_:)(a3);
    v14 = v18;
    if (a2 != -1)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

char *protocol witness for static Attachment.construct(attachment:from:) in conformance T_RawTreeNode@<X0>(char **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 && a2 - a1 >= 24)
  {
    result = *a1;
    LODWORD(v6) = *(a1 + 2);
    LODWORD(v7) = *(a1 + 3);
    v8 = a1[2];
  }

  else
  {
    result = specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(a1, a2);
    v7 = HIDWORD(v6);
  }

  *a3 = result;
  *(a3 + 8) = v6;
  *(a3 + 12) = v7;
  *(a3 + 16) = v8;
  return result;
}

uint64_t protocol witness for static Attachment.serialize(value:to:) in conformance T_RawTreeNode(void *a1, uint64_t (*a2)(void *, uint64_t *))
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a1[2];
  v5[0] = *a1;
  v5[1] = a1[1];
  v5[2] = v2;
  result = a2(v5, &v6);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t T_TreeValueNode.describe(state:)(uint64_t *a1, unint64_t a2, uint64_t a3, int a4)
{
  if (!*(a1 + 41))
  {
    v6 = *(a1 + 16);
    v7 = a1[3];
    v8 = *(a1 + 40);
    v10 = *a1;
    v9 = a1[1];
    _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(a2, a1[4]);
    _StringGuts.grow(_:)(30);
    MEMORY[0x26D69CDB0](0x6C61566565725428, 0xEF2065646F4E6575);
    if (!__OFSUB__(v10, 1))
    {
      v11 = specialized InspectionState.wrapDescription<A>(_:)(HIDWORD(a2));
      MEMORY[0x26D69CDB0](v11);

      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      v12 = specialized InspectionState.wrapDescription<A>(_:)(a4);
      MEMORY[0x26D69CDB0](v12);

      v13 = specialized InspectionState.wrapDescription<A>(_:)(SHIDWORD(a3));
      MEMORY[0x26D69CDB0](v13);

      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      v14 = specialized InspectionState.wrapDescription<A>(_:)(a3);
      MEMORY[0x26D69CDB0](v14);

      MEMORY[0x26D69CDB0](10528, 0xE200000000000000);
      return 0;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for static Attachment.serialize(value:to:) in conformance T_TreeValueNode(__int128 *a1, uint64_t (*a2)(__int128 *, void *))
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 3);
  v5 = *a1;
  v6 = *(a1 + 2);
  v7 = v2;
  result = a2(&v5, v8);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t writeTreeValues #1 (elt:attributes:) in writeTreeState(subgraph:handle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = MEMORY[0x277D84FA0];
  v57 = 0;
  v58 = 0;
  v59 = xmmword_26C338070;
  Value = AGTreeElementGetValue();
  v53 = a3;
  if (Value == *MEMORY[0x277CEF7C8])
  {
    v6 = 0;
    v7 = 0;
    v8 = 32;
  }

  else
  {
    v9 = Value;
    v10 = specialized Trace_Handle.writtenOnce(string:)(1718379891, 0xE400000000000000);
    result = AGTreeElementGetType();
    if (result)
    {
      v12 = *(a3 + 48);
      if (!v12)
      {
LABEL_69:
        __break(1u);
        return result;
      }

      v13 = result;
      v14 = a2;
      os_unfair_lock_lock_with_options();
      v15 = Trace.Control.writtenOnce(type:lazy:flush:)(v13, 1, 1u);
      os_unfair_lock_unlock(v12);
      a3 = v53;
    }

    else
    {
      v14 = a2;
      v15 = -1;
    }

    result = specialized BufferAttachment.append_slow()();
    v16 = v58;
    v8 = *(&v59 + 1);
    if ((v58 * *(&v59 + 1)) >> 64 != (v58 * *(&v59 + 1)) >> 63)
    {
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v7 = v57;
    v17 = v57 + v58 * *(&v59 + 1);
    *v17 = v9;
    *(v17 + 4) = v10;
    *(v17 + 8) = v15;
    *(v17 + 12) = 0x2000000000;
    *(v17 + 20) = 0;
    *(v17 + 24) = 0;
    v6 = v16 + 1;
    v58 = v16 + 1;
    specialized Set._Variant.insert(_:)(v56, v9);
    a2 = v14;
  }

  v56[0] = AGTreeElementMakeValueIterator();
  v56[1] = v18;
  result = AGTreeElementGetNextValue();
  if (result)
  {
    v54 = v7;
    v51 = (a2 + 32);
    v52 = a2;
    while (1)
    {
      Key = AGTreeValueGetKey();
      v20 = AGTreeValueGetValue();
      v21 = String.init(cString:)();
      v23 = specialized Trace_Handle.writtenOnce(string:)(v21, v22);

      v24 = *(a3 + 48);
      if (!v24)
      {
        goto LABEL_68;
      }

      Type = AGTreeValueGetType();
      os_unfair_lock_lock_with_options();
      v26 = Trace.Control.writtenOnce(type:lazy:flush:)(Type, 1, 1u);
      os_unfair_lock_unlock(v24);
      Flags = AGTreeValueGetFlags();
      if (!strcmp(Key, "position") || !strcmp(Key, "transform") || !strcmp(Key, "environment") || !strcmp(Key, "phase") || !strcmp(Key, "size"))
      {
        v28 = 4;
      }

      else if (!strcmp(Key, "layoutComputer") || !strcmp(Key, "displayList"))
      {
        v28 = 8;
      }

      else
      {
        v28 = 2 * ((Flags - 1) < 0xF);
      }

      result = AGTreeValueGetValue();
      v29 = v51;
      v30 = *(v52 + 16);
      while (v30)
      {
        v31 = *v29++;
        --v30;
        if (v31 == result)
        {
          v28 |= 1u;
          break;
        }
      }

      if (v6 == v59 || v54 == 0)
      {
        result = specialized BufferAttachment.append_slow()();
      }

      v33 = v58;
      if (v58 < 0)
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        __break(1u);
        goto LABEL_67;
      }

      v8 = *(&v59 + 1);
      if ((v58 * *(&v59 + 1)) >> 64 != (v58 * *(&v59 + 1)) >> 63)
      {
        goto LABEL_64;
      }

      v54 = v57;
      v34 = v57 + v58 * *(&v59 + 1);
      *v34 = v20;
      *(v34 + 4) = v23;
      *(v34 + 8) = v26;
      *(v34 + 12) = Flags;
      *(v34 + 16) = v28;
      *(v34 + 20) = 0;
      *(v34 + 24) = 0;
      v6 = v33 + 1;
      v58 = v33 + 1;
      v35 = AGTreeValueGetValue();
      IndirectAttribute = AGGraphGetIndirectAttribute();
      v37 = 0;
      if (IndirectAttribute == v35)
      {
        v37 = AGGraphGetFlags();
      }

      *(v34 + 4) = v23;
      *(v34 + 8) = v26;
      *(v34 + 12) = Flags;
      *(v34 + 16) = v28;
      *(v34 + 20) = v37;
      *(v34 + 24) = 0;
      specialized Set._Variant.insert(_:)(&v55, v20);
      result = AGTreeElementGetNextValue();
      a3 = v53;
      if (!result)
      {
        v7 = v54;
        a2 = v52;
        break;
      }
    }
  }

  v38 = *(a2 + 16);
  if (v38)
  {
    v39 = 0;
    v40 = a2 + 32;
    do
    {
      v41 = *(v40 + 4 * v39);
      v42 = v60;
      if (*(v60 + 16) && (result = MEMORY[0x26D69DB90](*(v60 + 40), *(v40 + 4 * v39), 4), v43 = -1 << *(v42 + 32), v44 = result & ~v43, ((*(v42 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) != 0))
      {
        v45 = ~v43;
        while (*(*(v42 + 48) + 4 * v44) != v41)
        {
          v44 = (v44 + 1) & v45;
          if (((*(v42 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
          {
            goto LABEL_47;
          }
        }
      }

      else
      {
LABEL_47:
        if (v6 == v59 || v7 == 0)
        {
          result = specialized BufferAttachment.append_slow()();
          v7 = v57;
          v6 = v58;
        }

        if (v6 < 0)
        {
          goto LABEL_65;
        }

        v8 = *(&v59 + 1);
        if ((v6 * *(&v59 + 1)) >> 64 != (v6 * *(&v59 + 1)) >> 63)
        {
          goto LABEL_66;
        }

        v47 = v7 + v6 * *(&v59 + 1);
        *v47 = v41;
        *(v47 + 4) = xmmword_26C338080;
        *(v47 + 20) = 0;
        *(v47 + 24) = 0;
        v58 = ++v6;
        v48 = AGGraphGetIndirectAttribute();
        v49 = 0;
        if (v48 == v41)
        {
          v49 = AGGraphGetFlags();
        }

        *v47 = v41;
        *(v47 + 4) = xmmword_26C338080;
        *(v47 + 20) = v49;
        *(v47 + 24) = 0;
        result = specialized Set._Variant.insert(_:)(v56, v41);
      }

      ++v39;
    }

    while (v39 != v38);
  }

  if (v6)
  {
    result = specialized Trace_Handle.write<A>(attachment:)(v7, v6, v59, v8);
    v50 = result;
    if (!v7)
    {
      return result;
    }

    goto LABEL_59;
  }

  v50 = 0;
  result = 0;
  if (v7)
  {
LABEL_59:
    MEMORY[0x26D69EAB0](v7, -1, -1);
    return v50;
  }

  return result;
}

void closure #1 in writeTree #1 (root:) in writeTreeState(subgraph:handle:)(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v64 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  AGTreeElementMakeNodeIterator();
  v10 = specialized _copySequenceToContiguousArray<A>(_:)();
  v11 = v10;
  if (!*(v10 + 16) || (v12 = *(v10 + 32), (v13 = AGGraphGetAttributeSubgraph()) == 0))
  {
    v14 = *a2;
    if (*a2)
    {
      v13 = *a2;
    }

    else
    {
      v13 = a4;
      v14 = 0;
    }

    v15 = v14;
  }

  v57 = *a2;
  if (*a2)
  {
    v16 = v13 == *a2;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  v62 = v17;
  v61 = specialized Set.contains(_:)(v13, a5[19]);
  v63 = a2;
  v60 = *(a2 + 8);
  Type = AGTreeElementGetType();
  if (Type)
  {
    v19 = a5[6];
    if (!v19)
    {
      __break(1u);
LABEL_80:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v20 = Type;
    v21 = a5[6];
    os_unfair_lock_lock_with_options();
    v22 = Trace.Control.writtenOnce(type:lazy:flush:)(v20, 1, 1u);
    os_unfair_lock_unlock(v19);
    v23 = v22;
  }

  else
  {
    v23 = 0xFFFFFFFFLL;
  }

  v59 = v23;
  v25 = v61;
  LODWORD(v24) = v62;
  if (v61)
  {

    v58 = 0;
  }

  else
  {
    v26 = writeTreeValues #1 (elt:attributes:) in writeTreeState(subgraph:handle:)(v9, v11, a5);

    v58 = v26 << 32;
  }

  if (v62)
  {
    v27 = 0;
  }

  else
  {
    v27 = v13;
  }

  if (*(a2 + 16) != 1)
  {
    v32 = -1;
    goto LABEL_33;
  }

  if (one-time initialization token for buffers != -1)
  {
    goto LABEL_74;
  }

  while (1)
  {
    swift_beginAccess();
    rawValue = buffers._rawValue;
    v29 = *(buffers._rawValue + 2);
    if (!v29)
    {
      goto LABEL_80;
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    buffers._rawValue = rawValue;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew()(rawValue);
      buffers._rawValue = rawValue;
    }

    if (v29 > rawValue[2])
    {
      __break(1u);
      goto LABEL_76;
    }

    v31 = v58;
    if (!v24)
    {
      v31 = 0;
    }

    v32 = specialized BufferAttachment.append(_:)(v60, v31 | v59, v27);
    buffers._rawValue = rawValue;
    swift_endAccess();
LABEL_33:
    LOBYTE(v29) = !v25;
    if (((v25 | v24) & 1) == 0)
    {
      break;
    }

    if (*(a5[3] + 16) != 1)
    {
      goto LABEL_54;
    }

LABEL_35:
    AGTreeElementMakeChildIterator();
    NextChild2 = AGTreeElementGetNextChild2();
    if (!NextChild2)
    {
      goto LABEL_63;
    }

    v34 = NextChild2;
    v25 = v29 & 1;
    while (1)
    {
      v35 = *(a3 + 80);
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        break;
      }

      *(a3 + 80) = v37;
      v38 = *(a3 + 64);
      v39 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_72;
      }

      a5 = *a3;
      v27 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a5[2] + 1, 1, a5);
      }

      v24 = a5[2];
      v40 = a5[3];
      if (v24 >= v40 >> 1)
      {
        a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v24 + 1, 1, a5);
      }

      a5[2] = v24 + 1;
      v41 = &a5[5 * v24];
      v41[4] = v34;
      v41[5] = v13;
      v41[6] = v32;
      *(v41 + 56) = v25;
      v41[8] = v39;
      *a3 = a5;
      v34 = AGTreeElementGetNextChild2();
      if (!v34)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
  }

  if (one-time initialization token for buffers == -1)
  {
    goto LABEL_46;
  }

LABEL_76:
  swift_once();
LABEL_46:
  swift_beginAccess();
  v42 = buffers._rawValue;
  v43 = swift_isUniquelyReferenced_nonNull_native();
  buffers._rawValue = v42;
  if ((v43 & 1) == 0)
  {
    v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42[2] + 1, 1, v42);
    buffers._rawValue = v42;
  }

  v24 = v42[2];
  v44 = v42[3];
  if (v24 >= v44 >> 1)
  {
    v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v24 + 1, 1, v42);
  }

  v42[2] = v24 + 1;
  v45 = &v42[5 * v24];
  v45[4] = v13;
  v45[5] = 0;
  v45[6] = 0;
  *(v45 + 7) = xmmword_26C338090;
  buffers._rawValue = v42;
  swift_endAccess();
  swift_beginAccess();
  v46 = swift_isUniquelyReferenced_nonNull_native();
  buffers._rawValue = v42;
  if ((v46 & 1) == 0)
  {
    v42 = specialized _ArrayBuffer._consumeAndCreateNew()(v42);
    buffers._rawValue = v42;
  }

  if (v24 >= v42[2])
  {
    __break(1u);
    goto LABEL_78;
  }

  v60 = -1;
  v32 = specialized BufferAttachment.append(_:)(-1, v58 | v59, v27);
  buffers._rawValue = v42;
  swift_endAccess();
  if (*(a5[3] + 16))
  {
    goto LABEL_35;
  }

LABEL_54:
  AGTreeElementMakeChildIterator();
  NextChild = AGTreeElementGetNextChild();
  if (NextChild)
  {
    v48 = NextChild;
    v25 = v29 & 1;
    do
    {
      v49 = *(a3 + 80);
      v36 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v36)
      {
        goto LABEL_71;
      }

      *(a3 + 80) = v50;
      v51 = *(a3 + 64);
      v52 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        goto LABEL_73;
      }

      a5 = *a3;
      v27 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a5[2] + 1, 1, a5);
      }

      v24 = a5[2];
      v53 = a5[3];
      if (v24 >= v53 >> 1)
      {
        a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v24 + 1, 1, a5);
      }

      a5[2] = v24 + 1;
      v54 = &a5[5 * v24];
      v54[4] = v48;
      v54[5] = v13;
      v54[6] = v32;
      *(v54 + 56) = v25;
      v54[8] = v52;
      *a3 = a5;
      v48 = AGTreeElementGetNextChild();
    }

    while (v48);
  }

LABEL_63:

  if (v61)
  {
    *(v63 + 16) = 0;
  }

  else
  {
    *(v63 + 16) = v62 ^ 1;
    if (v60 == -1)
    {
      v55 = 1;
    }

    else
    {
      v55 = v62;
    }

    if (v55 != 1)
    {
LABEL_78:
      __break(1u);
    }
  }

  *v63 = v13;
  v56 = *MEMORY[0x277D85DE8];
}

void closure #2 in writeTree #1 (root:) in writeTreeState(subgraph:handle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 16) != 1)
  {
    return;
  }

  v5 = *a2;
  if (one-time initialization token for buffers != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  rawValue = buffers._rawValue;
  if (*(buffers._rawValue + 2))
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v7 = rawValue[2];
      if (v7)
      {
        goto LABEL_7;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    __break(1u);
  }

  rawValue = specialized _ArrayBuffer._consumeAndCreateNew()(rawValue);
  v7 = rawValue[2];
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_7:
  v8 = v7 - 1;
  v9 = &rawValue[5 * v7];
  v11 = *(v9 - 1);
  v10 = *v9;
  v12 = v9[1];
  v13 = v9[2];
  v14 = v9[3];
  rawValue[2] = v8;
  buffers._rawValue = rawValue;
  swift_endAccess();
  if (!v5)
  {
LABEL_18:
    __break(1u);
    return;
  }

  if (v11 != v5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = specialized Trace_Handle.write<A>(attachment:)(v10, v12, v13, v14);
  v16 = 0x100000000;
  if (!*(*(a4 + 24) + 16))
  {
    v16 = 0;
  }

  specialized Trace_Handle.write<A>(_:omit:)(v5, v16 | v15, 0);
  specialized Set._Variant.insert(_:)(v17, v5);
  if (v10)
  {
    MEMORY[0x26D69EAB0](v10, -1, -1);
  }
}

void one-time initialization function for backtraceBuffer()
{
  v0 = swift_slowAlloc();
  bzero(v0, 0x1000uLL);
  backtraceBuffer = v0;
  unk_2804965B0 = v0 + 4096;
}

uint64_t closure #1 in ValueDescription.init(string:type:range:within:)@<X0>(uint64_t a1@<X4>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C328DC0;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D69CDB0](3943982, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D69CDB0](0, 0xE000000000000000);

  MEMORY[0x26D69CDB0](8236, 0xE200000000000000);
  v5 = _typeName(_:qualified:)();
  MEMORY[0x26D69CDB0](v5);

  MEMORY[0x26D69CDB0](8236, 0xE200000000000000);
  _print_unlocked<A, B>(_:_:)();
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;
  print(_:separator:terminator:)();

  a2[3] = a1;
  __swift_allocate_boxed_opaque_existential_1Tm(a2);
  return UnsafeRawBufferPointer.load<A>(fromByteOffset:as:)();
}

_OWORD *ValueDescription.value.getter@<X0>(_OWORD *a1@<X8>)
{
  outlined init with copy of ValueDescription.Storage(v1, v4);
  if ((v5 & 1) == 0)
  {
    return outlined init with take of Any(v4, a1);
  }

  result = outlined destroy of ValueDescription.Storage(v4);
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t ValueDescription.description.getter()
{
  outlined init with copy of ValueDescription.Storage(v0, v11);
  if (v12)
  {
    return *&v11[0];
  }

  outlined init with take of Any(v11, v9);
  v2 = v10;
  v3 = __swift_project_boxed_opaque_existential_1(v9, v10);
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  (*(v6 + 16))(&v9[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = String.init<A>(describing:)();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v7;
}

uint64_t T_TracepointIDV0.describe(state:)()
{
  _StringGuts.grow(_:)(18);

  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v0);

  MEMORY[0x26D69CDB0](0x203A746420, 0xE500000000000000);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v1);

  return 0x3A65646F63205428;
}

uint64_t T_TracepointIDV0.code.setter(uint64_t result)
{
  if (WORD1(result))
  {
    __break(1u);
  }

  else
  {
    *v1 |= result << 24;
  }

  return result;
}

uint64_t (*T_TracepointIDV0._code.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *v1;
  *(a1 + 8) = *v1;
  *(a1 + 12) = HIBYTE(v2);
  return T_TracepointIDV0._code.modify;
}

uint64_t (*T_TracepointIDV0.code.modify(uint64_t a1))(uint64_t result, char a2)
{
  *a1 = v1;
  v2 = *v1;
  *(a1 + 12) = *v1;
  *(a1 + 8) = HIBYTE(v2);
  return T_TracepointIDV0.code.modify;
}

uint64_t T_TracepointIDV0.code.modify(uint64_t result, char a2)
{
  v2 = *(result + 8);
  v3 = HIWORD(v2);
  if (a2)
  {
    if (!v3)
    {
LABEL_5:
      **result = *(result + 12) | (v2 << 24);
      return result;
    }

    __break(1u);
  }

  if (!v3)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t T_TracepointIDV0.model(within:)(uint64_t *a1, unsigned int a2)
{
  v3 = *(a1 + 29);
  v4 = a1 + 7;
  v5 = *(a1 + 9);
  v73[0] = *(a1 + 7);
  v73[1] = v5;
  v74[0] = *(a1 + 11);
  v6 = a1 + 11;
  v7 = a1 + 25;
  v8 = a1 + 13;
  v9 = 8 * v3;
  *(v74 + 9) = *(a1 + 97);
  v10 = a1 + 7;
  v11 = a1 + 11;
  v12 = a1 + 25;
  v13 = a1 + 13;
  while (1)
  {
    v14 = *v13;
    if (v3 < *v12)
    {
      v15 = (*v11 + v9);
      if ((v15[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v14)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v73);
    }

    v11 = (v14 + 32);
    v12 = (v14 + 44);
    v13 = (v14 + 48);
    v10 = v14;
  }

  v16 = *v10;
  if (!v16)
  {
    goto LABEL_30;
  }

  v17 = v16 + 24 * *v15;
  v18 = a2 & 0x3FFFFF;
  v19 = *(*v17 + 32);
  v20 = __CFADD__(v19, v18);
  v21 = v19 + v18;
  if (v20)
  {
    __break(1u);
    goto LABEL_28;
  }

  *(*v17 + 32) = v21;
  v22 = a1[22];
  v23 = (v22 + 40);
  v24 = *(v22 + 56);
  v71[0] = *(v22 + 40);
  v71[1] = v24;
  v72[0] = *(v22 + 72);
  *(v72 + 9) = *(v22 + 81);
  v25 = (v22 + 72);
  v26 = (v22 + 84);
  v27 = (v22 + 88);
  while (1)
  {
    v28 = *v27;
    if (v3 < *v26)
    {
      v29 = (*v25 + v9);
      if ((v29[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v28)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v71);
    }

    v25 = (v28 + 32);
    v26 = (v28 + 44);
    v27 = (v28 + 48);
    v23 = v28;
  }

  v30 = *v23;
  if (!v30)
  {
    goto LABEL_31;
  }

  v31 = *(v30 + 24 * *v29);
  v32 = v31[11];
  v69 = v31[10];
  *v70 = v32;
  *&v70[9] = *(v31 + 185);
  v33 = v31[7];
  *&v67[96] = v31[6];
  *&v67[112] = v33;
  v34 = v31[9];
  *&v67[128] = v31[8];
  v68 = v34;
  v35 = v31[3];
  *&v67[32] = v31[2];
  *&v67[48] = v35;
  v36 = v31[5];
  *&v67[64] = v31[4];
  *&v67[80] = v36;
  v37 = v31[1];
  *v67 = *v31;
  *&v67[16] = v37;
  if (Interpreter.Iterator.dispatch(_:context:flags:)(HIBYTE(a2), v67, 0))
  {
    v38 = a1[17];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (!v39)
    {
      a1[17] = v40;
      v41 = *(a1 + 29);
      v42 = v4[1];
      *v67 = *v4;
      *&v67[16] = v42;
      *&v67[32] = v4[2];
      *&v67[41] = *(v4 + 41);
      while (1)
      {
        v43 = *v8;
        if (v41 < *v7)
        {
          v44 = (*v6 + 8 * v41);
          if ((v44[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v43)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v41, 0, v67);
        }

        v6 = (v43 + 32);
        v7 = (v43 + 44);
        v8 = (v43 + 48);
        v4 = v43;
      }

      if (!*v4)
      {
        goto LABEL_32;
      }

      result = *v4 + 24 * *v44;
      v46 = *(*result + 48);
      v39 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (!v39)
      {
        *(*result + 48) = v47;
        return result;
      }

      goto LABEL_29;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  *v67 = 0;
  *&v67[8] = 0xE000000000000000;
  _StringGuts.grow(_:)(45);
  v48 = *a1;
  *&v67[8] = *(a1 + 1);
  *&v67[24] = *(a1 + 3);
  *&v67[40] = a1[5];
  v49 = *(a1 + 48);
  v50 = *(a1 + 10);
  v68 = *(a1 + 9);
  v69 = v50;
  v51 = a1[22];
  v52 = a1[23];
  v70[16] = *(a1 + 192);
  if (v49)
  {
    v53 = 0;
  }

  else
  {
    v53 = v48;
  }

  *v67 = v48;
  v67[48] = v49;
  *&v67[81] = *(a1 + 81);
  *&v67[97] = *(a1 + 97);
  *&v67[113] = *(a1 + 113);
  v54 = a1[16];
  v55 = a1[17];
  *&v67[49] = *(a1 + 49);
  *&v67[65] = *(a1 + 65);
  *&v67[128] = v54;
  *&v67[136] = v55;
  *v70 = v51;
  *&v70[8] = v52;
  v61 = xmmword_26C32DAD0;
  v62 = 0;
  v63 = 0;
  v64 = v51;
  v65 = v53;
  v66 = 1;
  v56 = Interpreter.Iterator.describe(state:)(&v61);
  v58 = v57;

  *v67 = v56;
  *&v67[8] = v58;
  MEMORY[0x26D69CDB0](0xD00000000000001ELL, 0x800000026C33E360);
  *&v61 = v55;
  v59 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v59);

  MEMORY[0x26D69CDB0](0x4449206C6C756620, 0xE900000000000020);
  v60 = T_TracepointIDV0.describe(state:)();
  MEMORY[0x26D69CDB0](v60);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t T_TracepointID.describe(state:)(uint64_t a1, unsigned int a2)
{
  _StringGuts.grow(_:)(22);

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v3);

  v4 = MEMORY[0x26D69CDB0](0x203A7367616C6620, 0xE800000000000000);
  v5 = T_TracepointID.Flags.describe(state:)(v4, a2 >> 11);
  MEMORY[0x26D69CDB0](v5);

  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  return 0x3A65646F63205428;
}

uint64_t T_TracepointID.Flags.describe(state:)(uint64_t a1, unsigned __int8 a2)
{
  v2 = a2;
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So14T_TracepointIDa21SwiftUITracingSupportE5FlagsVTt0g5Tf4g_n(&outlined read-only object #0 of T_TracepointID.Flags.describe(state:));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So14T_TracepointIDa21SwiftUITracingSupportE5FlagsVtMd, &_sSS_So14T_TracepointIDa21SwiftUITracingSupportE5FlagsVtMR);
  result = swift_arrayDestroy();
  v5 = 0;
  v6 = 1 << *(v3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v3 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = v2;
  while (v8)
  {
LABEL_9:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = v12 | (v5 << 6);
    v14 = *(*(v3 + 56) + v13);
    if ((v14 & ~v10) == 0)
    {
      v17 = *(*(v3 + 48) + 16 * v13);
      v18 = *(*(v3 + 48) + 16 * v13 + 8);

      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      MEMORY[0x26D69CDB0](v17, v18);

      if (v14)
      {
        v10 &= v14 ^ 0xFF;
      }
    }
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      return result;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v3 + 64 + 8 * v11);
    ++v5;
    if (v8)
    {
      v5 = v11;
      goto LABEL_9;
    }
  }

  MEMORY[0x26D69CDB0](93, 0xE100000000000000);
  if ((~v2 & 6) != 0)
  {
    if ((v2 & 4) != 0)
    {
      v15 = 3289899;
    }

    else
    {
      if ((v2 & 2) == 0)
      {
        v15 = 126;
        v16 = 0xE100000000000000;
        goto LABEL_20;
      }

      v15 = 3551531;
    }
  }

  else
  {
    v15 = 3421739;
  }

  v16 = 0xE300000000000000;
LABEL_20:
  MEMORY[0x26D69CDB0](v15, v16);
  result = 91;
  if (v10)
  {
    MEMORY[0x26D69CDB0](35, 0xE100000000000000);
    return 91;
  }

  return result;
}

uint64_t static T_TracepointID.initialize(id:delta:)(unsigned int a1, unint64_t a2)
{
  if (a2 >= 0xFFFFFFFF)
  {
    v2 = 12288;
  }

  else
  {
    v2 = 0x2000;
  }

  if (a2 >= 0xFFFF)
  {
    v3 = v2;
  }

  else
  {
    v3 = 4096;
  }

  if (a2 < 0xFF)
  {
    v3 = 0;
  }

  return v3 | a1;
}

uint64_t (*T_TracepointID.flags.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *v1;
  *(a1 + 8) = *v1;
  *(a1 + 12) = v2 >> 11;
  return T_TracepointID.flags.modify;
}

uint64_t (*T_TracepointID.code.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *v1;
  *(a1 + 12) = *v1;
  *(a1 + 8) = v2 & 0x7FF;
  return T_TracepointID.code.modify;
}

void T_TracepointID.model(within:)(void *a1, unsigned int a2)
{
  v2 = a2;
  if ((a2 & 0x4000) != 0)
  {
    v5 = (a1 + 7);
    v13 = *(a1 + 9);
    *v98 = *(a1 + 7);
    *&v98[16] = v13;
    *&v98[32] = *(a1 + 11);
    v14 = a1 + 11;
    v15 = a1 + 25;
    v16 = a1 + 13;
    v17 = *(a1 + 29);
    v18 = 8 * v17;
    *&v98[41] = *(a1 + 97);
    v19 = a1 + 7;
    v20 = a1 + 11;
    v21 = a1 + 25;
    v22 = a1 + 13;
    while (1)
    {
      v23 = *v22;
      if (v17 < *v21)
      {
        v24 = (*v20 + v18);
        if ((v24[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v23)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v17, 0, v98);
      }

      v20 = (v23 + 32);
      v21 = (v23 + 44);
      v22 = (v23 + 48);
      v19 = v23;
    }

    v27 = *v19;
    if (!v27)
    {
      goto LABEL_82;
    }

    if (*(*(v27 + 24 * *v24) + 96) != 2)
    {
      v28 = *(a1 + 9);
      v108 = *v5;
      v109 = v28;
      v110[0] = *(a1 + 11);
      *(v110 + 9) = *(a1 + 97);
      v29 = a1 + 13;
      v30 = a1 + 25;
      v31 = a1 + 11;
      for (i = a1 + 7; ; i = v33)
      {
        v33 = *v29;
        if (v17 < *v30)
        {
          v34 = (*v31 + v18);
          if ((v34[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v33)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v17, 0, &v108);
        }

        v31 = (v33 + 32);
        v30 = (v33 + 44);
        v29 = (v33 + 48);
      }

      if (!*i)
      {
        goto LABEL_84;
      }

      v35 = *(*(*i + 24 * *v34) + 96);
      if (v35 == 2)
      {
        goto LABEL_81;
      }

      if (v35)
      {
        goto LABEL_76;
      }

      v36 = *(a1 + 9);
      v105 = *v5;
      v106 = v36;
      v107[0] = *(a1 + 11);
      *(v107 + 9) = *(a1 + 97);
      v37 = a1 + 13;
      v38 = a1 + 25;
      v39 = a1 + 11;
      for (j = a1 + 7; ; j = v41)
      {
        v41 = *v37;
        if (v17 < *v38)
        {
          v42 = (*v39 + v18);
          if ((v42[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v41)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v17, 0, &v105);
        }

        v39 = (v41 + 32);
        v38 = (v41 + 44);
        v37 = (v41 + 48);
      }

      if (!*j)
      {
        goto LABEL_87;
      }

      v43 = *(*j + 24 * *v42);
      *(v43 + 72) = 0;
      *(v43 + 80) = 0;
      *(v43 + 88) = 0;
      *(v43 + 96) = 2;
      *(v43 + 104) = 0;
    }

    v44 = Interpreter.Iterator.iterate(size:)(a2 >> 11);
    if (v44 < 0)
    {
      goto LABEL_74;
    }

    v45 = v44;
    LOBYTE(v102) = 0;
    v46 = v2 & 0x7FF;
    rawValue = a1;
    Interpreter.Iterator.model(attachment:size:)(v46, v45);
    v47 = *(a1 + 29);
    v48 = *(a1 + 9);
    v102 = *v5;
    v103 = v48;
    v104[0] = *(a1 + 11);
    *(v104 + 9) = *(a1 + 97);
    while (1)
    {
      v49 = *v16;
      if (v47 < *v15)
      {
        v50 = *v14 + 8 * v47;
        if ((*(v50 + 4) & 1) == 0)
        {
          break;
        }
      }

      if (!v49)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v47, 0, &v102);
      }

      v14 = (v49 + 32);
      v15 = (v49 + 44);
      v16 = (v49 + 48);
      v5 = v49;
    }

    if (!*v5)
    {
      goto LABEL_83;
    }

    v51 = *v50;
    v12 = 24;
    v52 = *v5 + 24 * v51;
    v6 = *v52;
    v53 = *(*v52 + 48);
    v54 = __OFADD__(v53, 1);
    v55 = v53 + 1;
    if (!v54)
    {
      goto LABEL_70;
    }

    __break(1u);
    goto LABEL_50;
  }

  if ((a2 & 0x8000) != 0)
  {
    v25 = Interpreter.Iterator.iterate(size:)(a2 >> 11);
    v26 = NSPageSize();
    if ((v26 - 0x1000000000000000) >> 61 != 7)
    {
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    if ((v26 & 0x8000000000000000) != 0 || 8 * v26 < v25)
    {
      goto LABEL_78;
    }

    Interpreter.Iterator.model(mode:size:)(v2 & 0x7FF, v25);
    goto LABEL_71;
  }

  rawValue = tracepointAssertion.value._rawValue;
  if (tracepointAssertion.value._rawValue)
  {
    v5 = *(a1 + 29);
    v6 = a1 + 7;
    v7 = *(a1 + 9);
    v108 = *(a1 + 7);
    v109 = v7;
    v110[0] = *(a1 + 11);
    *(v110 + 9) = *(a1 + 97);
    v8 = a1 + 11;
    v9 = a1 + 25;
    v10 = a1 + 13;
    while (1)
    {
      v11 = *v10;
      if (v5 < *v9)
      {
        v12 = *v8 + 8 * v5;
        if ((*(v12 + 4) & 1) == 0)
        {
          break;
        }
      }

      if (!v11)
      {

        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v5, 0, &v108);
      }

      v8 = (v11 + 32);
      v9 = (v11 + 44);
      v10 = (v11 + 48);
      v6 = v11;
    }

LABEL_50:
    v56 = *v6;
    if (!v56)
    {
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v57 = v56 + 24 * *v12;

    if (!rawValue[2])
    {
      goto LABEL_80;
    }

    v58 = specialized __RawDictionaryStorage.find<A>(_:)(v5, *(*v57 + 48));
    if ((v59 & 1) == 0)
    {
      goto LABEL_80;
    }

    v60 = *(rawValue[7] + 4 * v58);

    if (v60 != (v2 & 0x7FF))
    {
LABEL_79:
      __break(1u);
LABEL_80:

      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }
  }

  v61 = *(a1 + 29);
  v62 = a1[22];
  v63 = (v62 + 40);
  v64 = *(v62 + 56);
  v105 = *(v62 + 40);
  v106 = v64;
  v107[0] = *(v62 + 72);
  *(v107 + 9) = *(v62 + 81);
  v65 = (v62 + 72);
  v66 = (v62 + 84);
  v67 = (v62 + 88);
  while (1)
  {
    v68 = *v67;
    if (v61 < *v66)
    {
      v69 = (*v65 + 8 * v61);
      if ((v69[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v68)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v61, 0, &v105);
    }

    v65 = (v68 + 32);
    v66 = (v68 + 44);
    v67 = (v68 + 48);
    v63 = v68;
  }

  v70 = *v63;
  if (!v70)
  {
    goto LABEL_85;
  }

  v71 = v70 + 24 * *v69;
  v72 = v2 >> 11;
  v2 &= 0x7FFu;
  v73 = *v71;
  v99 = *(*v71 + 144);
  v100 = v73[10];
  *v101 = v73[11];
  *&v101[9] = *(v73 + 185);
  *&v98[80] = v73[5];
  *&v98[96] = v73[6];
  *&v98[112] = v73[7];
  *&v98[128] = v73[8];
  *&v98[16] = v73[1];
  *&v98[32] = v73[2];
  *&v98[48] = v73[3];
  *&v98[64] = v73[4];
  *v98 = *v73;
  if (Interpreter.Iterator.dispatch(_:context:flags:)(v2, v98, v72))
  {
    v74 = *(a1 + 29);
    v75 = a1 + 7;
    v76 = *(a1 + 9);
    *v98 = *(a1 + 7);
    *&v98[16] = v76;
    *&v98[32] = *(a1 + 11);
    *&v98[41] = *(a1 + 97);
    v77 = a1 + 11;
    v78 = a1 + 25;
    v79 = a1 + 13;
    while (1)
    {
      v80 = *v79;
      if (v74 < *v78)
      {
        v81 = (*v77 + 8 * v74);
        if ((v81[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v80)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v74, 0, v98);
      }

      v77 = (v80 + 32);
      v78 = (v80 + 44);
      v79 = (v80 + 48);
      v75 = v80;
    }

    v82 = *v75;
    if (!v82)
    {
      goto LABEL_86;
    }

    v83 = (v82 + 24 * *v81);
    v6 = *v83;
    v84 = (*v83)[6];
    v54 = __OFADD__(v84, 1);
    v55 = v84 + 1;
    if (v54)
    {
      goto LABEL_77;
    }

LABEL_70:
    v6[6] = v55;
LABEL_71:
    v85 = a1[17];
    v54 = __OFADD__(v85, 1);
    v86 = v85 + 1;
    if (!v54)
    {
      a1[17] = v86;
      return;
    }

    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

LABEL_89:
  *v98 = 0;
  *&v98[8] = 0xE000000000000000;
  _StringGuts.grow(_:)(43);
  v87 = *a1;
  *&v98[8] = *(a1 + 1);
  *&v98[24] = *(a1 + 3);
  *&v98[40] = a1[5];
  v88 = *(a1 + 48);
  v89 = *(a1 + 10);
  v99 = *(a1 + 9);
  v100 = v89;
  v90 = a1[22];
  v91 = a1[23];
  v101[16] = *(a1 + 192);
  if (v88)
  {
    v92 = 0;
  }

  else
  {
    v92 = v87;
  }

  *v98 = v87;
  v98[48] = v88;
  *&v98[81] = *(a1 + 81);
  *&v98[97] = *(a1 + 97);
  *&v98[113] = *(a1 + 113);
  v93 = a1[16];
  v94 = a1[17];
  *&v98[49] = *(a1 + 49);
  *&v98[65] = *(a1 + 65);
  *&v98[128] = v93;
  *&v98[136] = v94;
  *v101 = v90;
  *&v101[8] = v91;
  v102 = xmmword_26C32DAD0;
  LOBYTE(v103) = 0;
  *(&v103 + 1) = 0;
  *&v104[0] = v90;
  BYTE8(v104[0]) = v92;
  BYTE9(v104[0]) = 1;
  v95 = Interpreter.Iterator.describe(state:)(&v102);
  MEMORY[0x26D69CDB0](v95);

  MEMORY[0x26D69CDB0](0xD00000000000001ELL, 0x800000026C33E360);
  *v98 = v94;
  v96 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v96);

  MEMORY[0x26D69CDB0](0x203A65646F6320, 0xE700000000000000);
  *v98 = v2;
  v97 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v97);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t protocol witness for static ABIRequirement.size(in:) in conformance T_BeginTrace(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 == 2)
  {
    __break(1u);
  }

  else if (v1 == 1)
  {
    return 24;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static Tracepoint.peak(within:) in conformance T_BeginTrace(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C328DC0;
  *(v4 + 56) = a2;
  v5 = *(a1 + 184);
  v6 = *(v5 + 16);
  *(v4 + 32) = *v5;
  *(v4 + 48) = v6;
  print(_:separator:terminator:)();
}

uint64_t protocol witness for static ABIRequirement.size(in:) in conformance T_EndNodeUpdate(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 == 2)
  {
    __break(1u);
  }

  else if (v1 == 1)
  {
    return 6;
  }

  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ViewGraphRootValues()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ViewGraphRootValues()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Tracepoint.peak(within:) in conformance T_EndNodeUpdate(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C328DC0;
  *(v4 + 56) = a2;
  v5 = *(a1 + 184);
  v6 = *v5;
  LOWORD(v5) = *(v5 + 2);
  *(v4 + 32) = v6;
  *(v4 + 36) = v5;
  print(_:separator:terminator:)();
}

void T_ViewGraphRootValueChangeV2.model(within:)(uint64_t a1, uint64_t a2, __int16 a3)
{
  *&v3 = a2;
  WORD4(v3) = a3;
  specialized Interpreter.Iterator.observe<A>(invalidation:)(a2, *(&v3 + 2));
}

uint64_t protocol witness for static Tracepoint.peak(within:) in conformance T_ViewGraphRootValueChangeV2(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C328DC0;
  *(v4 + 56) = a2;
  v5 = *(a1 + 184);
  v6 = *v5;
  v7 = *(v5 + 1);
  *(v4 + 32) = v6;
  *(v4 + 34) = v7;
  print(_:separator:terminator:)();
}

uint64_t protocol witness for static Tracepoint.peak(within:) in conformance T_BeginSubgraphUpdate(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C328DC0;
  *(v4 + 56) = a2;
  v5 = *(a1 + 184);
  v6 = *v5;
  LODWORD(v5) = *(v5 + 2);
  *(v4 + 32) = v6;
  *(v4 + 40) = v5;
  print(_:separator:terminator:)();
}

void closure #1 in subgraph_destroy(raw:_:)(uint64_t a1, void *ptr, uint64_t a3)
{
  if (*(*(a1 + 24) + 48) == 1 && malloc_size(ptr) < 1)
  {
    _StringGuts.grow(_:)(18);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x26D69CDB0](0xD000000000000010, 0x800000026C33E250);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v5 = *(a1 + 152);
    if (*(v5 + 16))
    {
      v6 = MEMORY[0x26D69DBA0](*(v5 + 40), a3);
      v7 = -1 << *(v5 + 32);
      v8 = v6 & ~v7;
      if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
      {
        v9 = ~v7;
        while (*(*(v5 + 48) + 8 * v8) != a3)
        {
          v8 = (v8 + 1) & v9;
          if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        specialized Set._Variant.remove(_:)(a3);
      }
    }

LABEL_10:
    specialized Trace_Handle.write<A>(_:omit:)(a3, 0);
  }
}

void closure #1 in subgraph_add_child(raw:_:_:)(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(*(a1 + 24) + 47) != 1)
  {
LABEL_11:
    v11 = a2;
    specialized Set._Variant.insert(_:)(&v12, v11);

    setNeedsUpdate = 1;
    specialized Trace_Handle.write<A>(_:omit:)(v11, a3, 0);
    return;
  }

  ParentCount = AGSubgraphGetParentCount();
  if ((ParentCount & 0x8000000000000000) == 0)
  {
    v6 = ParentCount;
    if (ParentCount)
    {
      v7 = 0;
      do
      {
        v8 = AGSubgraphGetParent();
        if (v8)
        {
          v9 = v8;
          type metadata accessor for AGSubgraphRef(0);
          lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type AGSubgraphRef and conformance AGSubgraphRef, type metadata accessor for AGSubgraphRef);
          v10 = static _CFObject.== infix(_:_:)();

          if (v10)
          {
            static os_log_type_t.fault.getter();
            if (one-time initialization token for log != -1)
            {
              swift_once();
            }

            os_log(_:dso:log:_:_:)();
          }
        }

        ++v7;
      }

      while (v6 != v7);
    }

    goto LABEL_11;
  }

  __break(1u);
}

uint64_t protocol witness for static ABIRequirement.size(in:) in conformance T_NodeAdded(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 == 2)
  {
    __break(1u);
  }

  else if (v1 == 1)
  {
    return 32;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static Tracepoint.peak(within:) in conformance T_NodeAdded(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C328DC0;
  *(v4 + 56) = a2;
  v5 = swift_allocObject();
  *(v4 + 32) = v5;
  v6 = *(a1 + 184);
  v7 = v6[1];
  *(v5 + 16) = *v6;
  *(v5 + 32) = v7;
  print(_:separator:terminator:)();
}

uint64_t protocol witness for static ABIRequirement.size(in:) in conformance T_BeginSubgraphUpdate(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 == 2)
  {
    __break(1u);
  }

  else if (v1 == 1)
  {
    return 12;
  }

  __break(1u);
  return result;
}

void closure #1 in node_set_value(raw:_:_:)(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v6 = *AGGraphGetAttributeInfo();
  v7 = AGTypeNominalDescriptorName();
  if (*(a1 + 144))
  {
    v8 = 0;
  }

  else
  {
    v8 = (*(a1 + 168) & 1) == 0;
  }

  if (v8)
  {
    v9 = v7;
    v10 = strcmp(v7, "External");
    v7 = v9;
    if (!v10)
    {
      if (*(*(a1 + 24) + 49))
      {
        goto LABEL_14;
      }

      goto LABEL_16;
    }
  }

  v11 = strcmp(v7, "_External");
  if ((*(*(a1 + 24) + 49) & 1) == 0)
  {
    if (v11)
    {
      v13 = *a3;
      if (*a3)
      {
LABEL_12:
        specialized Trace_Handle.write<A>(_:omit:)(v13 | (a2 << 32), 0);
        return;
      }

LABEL_17:
      v14 = a2;
      v12 = 0;
      goto LABEL_18;
    }

LABEL_16:
    backtrace()();
    v13 = specialized Trace_Handle.write<A>(attachment:)(v15, v16, v17, v18);
    *a3 = v13;
    if (v13)
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  if (!v11)
  {
LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  v12 = 2;
LABEL_15:
  v14 = a2;
LABEL_18:
  specialized Trace_Handle.write<A>(_:omit:)(v14, v12);
}

void T_NodeMarkValueExtendedV0.model(within:)(unsigned __int8 *a1, unint64_t a2)
{
  v3 = HIDWORD(a2);
  v4 = *(a1 + 29);
  if (HIDWORD(a2))
  {
    v5 = *(a1 + 29);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 40) = v5;
  *(a1 + 41) = HIDWORD(a2) != 0;
  if (!HIDWORD(a2))
  {
    LODWORD(v3) = -1;
  }

  a1[168] = HIDWORD(a2) == 0;
  *(a1 + 43) = v3;
  v6 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(a2, a1);
  if (a1[48])
  {
    goto LABEL_31;
  }

  v7 = *(a1 + 22);
  v8 = *a1;
  if (v8 >= *(v7 + 116))
  {
    goto LABEL_26;
  }

  v9 = *(v7 + 104);
  if (!v9)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v10 = v6;
  v11 = *(*(v9 + 8 * v8) + 8);
  if (v6 >= *(v11 + 84))
  {
    goto LABEL_27;
  }

  v12 = *(v11 + 72);
  if (!v12)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v13 = v12 + 312 * v6;
  v14 = *(v13 + 264);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    goto LABEL_28;
  }

  *(v13 + 264) = v16;
  v17 = 312 * v6;
  v18 = *a1;
  v19 = a1[48];
  v20 = (a1 + 56);
  v21 = *(a1 + 72);
  v43[0] = *(a1 + 56);
  v43[1] = v21;
  v44[0] = *(a1 + 88);
  *(v44 + 9) = *(a1 + 97);
  v22 = a1 + 88;
  v23 = a1 + 100;
  v24 = (a1 + 104);
  while (1)
  {
    v25 = *v24;
    if (v4 < *v23)
    {
      v26 = (*v22 + 8 * v4);
      if ((v26[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v25)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v4, 0, v43);
    }

    v22 = (v25 + 32);
    v23 = (v25 + 44);
    v24 = (v25 + 48);
    v20 = v25;
  }

  v30 = *v20;
  if (!v30)
  {
    goto LABEL_36;
  }

  v31 = v30 + 24 * *v26;
  if (v19)
  {
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v18 >= *(v7 + 116))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v27 = *(v7 + 104);
  if (v27)
  {
    v28 = *(*(v27 + 8 * v18) + 8);
    if (v10 < *(v28 + 84))
    {
      v29 = *(v28 + 72);
      if (v29)
      {
        *(v29 + v17 + 184) = *(*v31 + 32);
        v32 = v10;
        v33 = 0;
        v34 = 0;
        v35 = 1;
        v36 = 0xFFFFFFFFLL;
        v37 = 0;
        v38 = 1;
        v39 = -1;
        v40 = 0;
        v41 = 0;
        v42 = 0;
        specialized Interpreter.Iterator.observe<A>(invalidation:)(&v32);
        return;
      }

      goto LABEL_35;
    }

    goto LABEL_30;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t protocol witness for static ABIRequirement.size(in:) in conformance T_GraphCreated(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 == 2)
  {
    __break(1u);
  }

  else if (v1 == 1)
  {
    return 16;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static Tracepoint.peak(within:) in conformance T_IndirectNodeAdded(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C328DC0;
  *(v4 + 56) = a2;
  v5 = *(a1 + 184);
  v6 = *v5;
  v7 = *(v5 + 1);
  LODWORD(v5) = v5[3];
  *(v4 + 32) = v6;
  *(v4 + 36) = v7;
  *(v4 + 44) = v5;
  print(_:separator:terminator:)();
}

uint64_t protocol witness for static ABIRequirement.size(in:) in conformance T_TimeSync(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 == 2)
  {
    __break(1u);
  }

  else if (v1 == 1)
  {
    return 8;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static ABIRequirement.size(in:) in conformance T_BeginNodeUpdate(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 == 2)
  {
    __break(1u);
  }

  else if (v1 == 1)
  {
    return 4;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static ABIRequirement.size(in:) in conformance T_ReuseCacheItemWithID(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 == 2)
  {
    __break(1u);
  }

  else if (v1 == 1)
  {
    return 17;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static Tracepoint.peak(within:) in conformance T_ReuseCacheItemWithID(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C328DC0;
  *(v4 + 56) = a2;
  v5 = *(a1 + 184);
  v6 = *(v5 + 16);
  *(v4 + 32) = *v5;
  *(v4 + 48) = v6;
  print(_:separator:terminator:)();
}

uint64_t protocol witness for static Tracepoint.peak(within:) in conformance T_ReuseCacheItemEvent(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C328DC0;
  *(v4 + 56) = a2;
  v5 = *(a1 + 184);
  v6 = *v5;
  LOBYTE(v5) = *(v5 + 8);
  *(v4 + 32) = v6;
  *(v4 + 40) = v5;
  print(_:separator:terminator:)();
}

uint64_t protocol witness for static ABIRequirement.size(in:) in conformance T_ReuseEvent(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 == 2)
  {
    __break(1u);
  }

  else if (v1 == 1)
  {
    return 1;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static Tracepoint.peak(within:) in conformance T_ReuseEvent(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C328DC0;
  *(v4 + 56) = a2;
  *(v4 + 32) = **(a1 + 184);
  print(_:separator:terminator:)();
}

uint64_t protocol witness for static ABIRequirement.size(in:) in conformance T_NodeSetEdgePending(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 == 2)
  {
    __break(1u);
  }

  else if (v1 == 1)
  {
    return 9;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static Tracepoint.peak(within:) in conformance T_NodeSetEdgePending(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C328DC0;
  *(v4 + 56) = a2;
  v5 = *(a1 + 184);
  v6 = *(v5 + 8);
  *(v4 + 32) = *v5;
  *(v4 + 40) = v6;
  print(_:separator:terminator:)();
}

uint64_t protocol witness for static ABIRequirement.size(in:) in conformance T_EndValueUpdate(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 == 2)
  {
    __break(1u);
  }

  else if (v1 == 1)
  {
    return 5;
  }

  __break(1u);
  return result;
}

uint64_t getReuseEventCategory(_:)(const char *a1)
{
  if (strncmp(a1, "reuse_", 6uLL))
  {
    return 12;
  }

  result = strcmp(a1 + 6, "none");
  if (result)
  {
    if (!strcmp(a1 + 6, "failed"))
    {
      return 257;
    }

    else if (!strcmp(a1 + 6, "inputsDifferent"))
    {
      return 769;
    }

    else if (!strcmp(a1 + 6, "cacheItemFailed"))
    {
      return 1025;
    }

    else if (!strcmp(a1 + 6, "cacheItemplaced"))
    {
      return 1030;
    }

    else if (!strcmp(a1 + 6, "cacheItemSkipped"))
    {
      return 1031;
    }

    else if (!strcmp(a1 + 6, "cacheItemUnplaced"))
    {
      return 1032;
    }

    else if (!strcmp(a1 + 6, "cacheItemRecycled"))
    {
      return 1033;
    }

    else if (!strcmp(a1 + 6, "cacheItemAdded"))
    {
      return 1290;
    }

    else if (!strcmp(a1 + 6, "mismatchedReuseID"))
    {
      return 1281;
    }

    else if (!strcmp(a1 + 6, "reuseIdentifier"))
    {
      return 1547;
    }

    else if (!strcmp(a1 + 6, "incompatible"))
    {
      return 1796;
    }

    else if (!strcmp(a1 + 6, "transition"))
    {
      return 1795;
    }

    else if (!strcmp(a1 + 6, "projected"))
    {
      return 1797;
    }

    else if (!strcmp(a1 + 6, "invalidSubgraph"))
    {
      return 2049;
    }

    else if (!strcmp(a1 + 6, "incompatibleLists"))
    {
      return 2305;
    }

    else if (!strcmp(a1 + 6, "unaryElement"))
    {
      return 2561;
    }

    else if (!strcmp(a1 + 6, "bodyMismatch"))
    {
      return 2817;
    }

    else if (!strcmp(a1 + 6, "internal"))
    {
      return 513;
    }

    else if (!strcmp(a1 + 6, "neverReusable"))
    {
      return 3073;
    }

    else if (!strcmp(a1 + 6, "preventing"))
    {
      return 3329;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

SwiftUITracingSupport::CustomEventCategory_optional __swiftcall CustomEventCategory.init(rawValue:)(SwiftUITracingSupport::CustomEventCategory_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value > (SwiftUITracingSupport_CustomEventCategory_action|0x40))
  {
    if (rawValue.value > (SwiftUITracingSupport_CustomEventCategory_unknownDefault|SwiftUITracingSupport_CustomEventCategory_instantiate|0x40))
    {
      if (rawValue.value == (SwiftUITracingSupport_CustomEventCategory_unknownDefault|SwiftUITracingSupport_CustomEventCategory_dynamicProperties|0x40))
      {
        *v1 = SwiftUITracingSupport_CustomEventCategory_observable;
        return rawValue;
      }

      if (rawValue.value == 84)
      {
        *v1 = SwiftUITracingSupport_CustomEventCategory_transaction;
        return rawValue;
      }
    }

    else
    {
      if (rawValue.value == 68)
      {
        *v1 = SwiftUITracingSupport_CustomEventCategory_dynamicProperties;
        return rawValue;
      }

      if (rawValue.value == (SwiftUITracingSupport_CustomEventCategory_dynamicProperties|0x40))
      {
        *v1 = SwiftUITracingSupport_CustomEventCategory_graph;
        return rawValue;
      }
    }

    goto LABEL_19;
  }

  if (rawValue.value > 0x41u)
  {
    if (rawValue.value == 66)
    {
      *v1 = SwiftUITracingSupport_CustomEventCategory_animation;
      return rawValue;
    }

    if (rawValue.value == (SwiftUITracingSupport_CustomEventCategory_action|0x40))
    {
      *v1 = SwiftUITracingSupport_CustomEventCategory_instantiate;
      return rawValue;
    }

    goto LABEL_19;
  }

  if (rawValue.value)
  {
    if (rawValue.value == 65)
    {
      *v1 = SwiftUITracingSupport_CustomEventCategory_action;
      return rawValue;
    }

LABEL_19:
    value = SwiftUITracingSupport_CustomEventCategory_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CustomEventCategory()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x4443424741544F00uLL >> (8 * v1));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CustomEventCategory()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x4443424741544F00uLL >> (8 * v1));
  return Hasher._finalize()();
}

uint64_t T_SetDeadline.model(within:)(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (a2 == -1)
  {
    v10 = *result;
    v11 = *(result + 48);
    v12 = (result + 56);
    v13 = *(result + 72);
    v75[0] = *(result + 56);
    v75[1] = v13;
    v76[0] = *(result + 88);
    *(v76 + 9) = *(result + 97);
    v14 = (result + 72);
    v15 = (result + 84);
    v16 = (result + 88);
    v17 = (result + 104);
    v18 = (result + 56);
    v19 = (result + 104);
    v20 = *(result + 176);
    while (1)
    {
      v21 = *v19;
      if (*v15)
      {
        if (((*v14)[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v21)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v75);
      }

      v14 = (v21 + 16);
      v15 = (v21 + 28);
      v19 = (v21 + 48);
      v18 = v21;
    }

    if (!*v18)
    {
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
      return result;
    }

    result = *v18 + 24 * **v14;
    v23 = *(*result + 112);
    if (!v23)
    {
      goto LABEL_68;
    }

    v24 = *(*(v23 + 32) + 8);
    v25 = *(v24 + 16);
    v26 = v25 + 1;
    v27 = (v24 + 48 * v25 - 16);
    do
    {
      if (--v26 < 1)
      {
        goto LABEL_2;
      }

      if (v11)
      {
        goto LABEL_63;
      }

      if (*(v20 + 116) <= v10)
      {
        goto LABEL_56;
      }

      v28 = *(v20 + 104);
      if (!v28)
      {
        goto LABEL_64;
      }

      v29 = *v27;
      v30 = *(*(v28 + 8 * v10) + 8);
      if (v29 >= *(v30 + 44))
      {
        goto LABEL_57;
      }

      v31 = *(v30 + 32);
      if (!v31)
      {
        goto LABEL_65;
      }

      v32 = v31 + (v29 << 7);
      v35 = *(v32 + 8);
      v34 = v32 + 8;
      v33 = v35;
      if (!*(v34 + 24))
      {
        goto LABEL_58;
      }

      if (*(v34 + 16))
      {
        goto LABEL_67;
      }

      if (!v33)
      {
        goto LABEL_66;
      }

      v27 -= 12;
    }

    while (*v33 != &type metadata for Event.Prefetch);
    v36 = *(v2 + 72);
    v72 = *v12;
    v73 = v36;
    v74[0] = *(v2 + 88);
    *(v74 + 9) = *(v2 + 97);
    v37 = v2 + 100;
    result = *(v2 + 29);
    while (1)
    {
      v38 = *v17;
      if (result < *v37)
      {
        v39 = (*v16 + 8 * result);
        if ((v39[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v38)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, &v72);
      }

      v16 = (v38 + 32);
      v37 = (v38 + 44);
      v17 = (v38 + 48);
      v12 = v38;
    }

    if (!*v12)
    {
      goto LABEL_75;
    }

    result = *v12 + 24 * *v39;
    if (v2[48])
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
    }

    else
    {
      v40 = *(v20 + 116);
      v41 = *v2;
      if (v41 < v40)
      {
        v42 = *(v20 + 104);
        if (!v42)
        {
          goto LABEL_70;
        }

        v43 = *(*(v42 + 8 * v41) + 8);
        if (v29 < *(v43 + 44))
        {
          v44 = *(v43 + 32);
          if (!v44)
          {
            goto LABEL_71;
          }

          v45 = *(*result + 32);
          v46 = v44 + (v29 << 7);
          v47 = *(v46 + 8);
          v48 = *(v46 + 16);
          v49 = *(v46 + 24);
          v50 = *(v46 + 25);
          v53 = v46 + 28;
          v51 = *(v46 + 28);
          v52 = *(v53 + 4);
          v54 = v50 == 0;
          v55 = 256;
          if (v54)
          {
            v55 = 0;
          }

          v56 = v55 | (v51 << 32);
          v57 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV8PrefetchV_Ttgq5(v47, v48, v56 | v49, v52);
          result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(v57, v47, v48, v56 | v49, v52);
          if (*result < v45)
          {
            if (v2[48])
            {
              goto LABEL_73;
            }

            v58 = *v2;
            if (v58 >= v40)
            {
              goto LABEL_61;
            }

            v59 = *(*(v42 + 8 * v58) + 8);
            if (v29 >= *(v59 + 44))
            {
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
LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
LABEL_69:
              __break(1u);
LABEL_70:
              __break(1u);
LABEL_71:
              __break(1u);
              goto LABEL_72;
            }

            v60 = *(v59 + 32);
            if (!v60)
            {
              goto LABEL_74;
            }

            v61 = v60 + (v29 << 7);
            v62 = *(v61 + 8);
            v63 = *(v61 + 16);
            v64 = *(v61 + 24);
            v65 = *(v61 + 25);
            v68 = v61 + 28;
            v66 = *(v61 + 28);
            v67 = *(v68 + 4);
            v54 = v65 == 0;
            v69 = 256;
            if (v54)
            {
              v69 = 0;
            }

            v70 = v69 | (v66 << 32);
            v71 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV8PrefetchV_Ttgq5(v62, v63, v70 | v64, v67);
            BYTE1(specialized HeterogeneousBuffer.valuePointer<A>(for:)(v71, v62, v63, v70 | v64, v67)->Description) = 1;
          }

          return Interpreter.Iterator.endInflight(_:)(&type metadata for Event.Prefetch);
        }

LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }
    }

    __break(1u);
    goto LABEL_60;
  }

LABEL_2:
  v3 = (v2 + 56);
  v4 = *(v2 + 72);
  v72 = *(v2 + 56);
  v73 = v4;
  v74[0] = *(v2 + 88);
  *(v74 + 9) = *(v2 + 97);
  v5 = v2 + 88;
  v6 = v2 + 100;
  v7 = (v2 + 104);
  result = *(v2 + 29);
  while (1)
  {
    v8 = *v7;
    if (result < *v6)
    {
      v9 = (*v5 + 8 * result);
      if ((v9[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v8)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, &v72);
    }

    v5 = (v8 + 32);
    v6 = (v8 + 44);
    v7 = (v8 + 48);
    v3 = v8;
  }

  v22 = *v3;
  if (!v22)
  {
    goto LABEL_69;
  }

  return specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(a2, 0, *(*(v22 + 24 * *v9) + 32), 0xFFFFFFFFFFFFFFFFLL, 0);
}

uint64_t protocol witness for static Tracepoint.peak(within:) in conformance T_TimeSync(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C328DC0;
  *(v4 + 56) = a2;
  *(v4 + 32) = **(a1 + 184);
  print(_:separator:terminator:)();
}

uint64_t T_CompareFailed.model(within:)(unsigned __int8 *a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v298 = a4;
  v7 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(a2, a1);
  if (a1[48])
  {
    goto LABEL_186;
  }

  v8 = *(a1 + 22);
  v9 = *a1;
  if (v9 >= *(v8 + 116))
  {
    __break(1u);
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  v10 = *(v8 + 104);
  if (!v10)
  {
LABEL_187:
    __break(1u);
    goto LABEL_188;
  }

  v11 = v7;
  v12 = *(*(v10 + 8 * v9) + 8);
  if (v7 >= *(v12 + 84))
  {
    goto LABEL_152;
  }

  v13 = *(v12 + 72);
  if (!v13)
  {
LABEL_188:
    __break(1u);
    goto LABEL_189;
  }

  v14 = v13 + 312 * v7;
  if ((*(v14 + 101) & 1) == 0)
  {
    v15 = HIDWORD(*(v14 + 92));
    v16 = *(v8 + 136);
    v17 = *(v16 + 4);
    if (v15 < *(v17 + 16))
    {
      v18 = *(v17 + 4 * v15 + 32);
      if (v18 < *(v16 + 3))
      {
        if (!*v16)
        {
LABEL_189:
          __break(1u);
          goto LABEL_190;
        }

        v19 = *v16 + 120 * v18;
        if (*(v19 + 116))
        {
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
          goto LABEL_192;
        }

        v20 = 312 * v7;
        v21 = *(v19 + 112);
        v357 = 1;
        if (!*(v14 + 212))
        {
          v291 = v21;
          v296 = v277;
          v297 = 312 * v7;
          v22 = *v19;
          v23 = *(v19 + 16);
          v24 = *(v19 + 48);
          v390[2] = *(v19 + 32);
          v390[3] = v24;
          v390[0] = v22;
          v390[1] = v23;
          v25 = *(v19 + 64);
          v26 = *(v19 + 80);
          v27 = *(v19 + 96);
          *(&v390[6] + 14) = *(v19 + 110);
          v390[5] = v26;
          v390[6] = v27;
          v390[4] = v25;
          v28 = v16[6];
          v30 = v16[3];
          v29 = v16[4];
          v391[5] = v16[5];
          v391[6] = v28;
          v391[3] = v30;
          v391[4] = v29;
          v31 = *v16;
          v32 = v16[2];
          v391[1] = v16[1];
          v391[2] = v32;
          v391[0] = v31;
          v33 = MEMORY[0x28223BE20](v7);
          v275 = a1;
          v276 = v11;
          v34 = MEMORY[0x28223BE20](v33);
          v274[2] = partial apply for closure #1 in T_CompareFailed.model(within:);
          v274[3] = v35;
          v274[4] = v391;
          MEMORY[0x28223BE20](v34);
          v273[2] = 0;
          v273[3] = 0;
          if (BYTE4(v390[7]))
          {
LABEL_229:
            __break(1u);
            goto LABEL_230;
          }

          v36 = v390[7];
          v37 = swift_allocObject();
          *(v37 + 16) = _s21SwiftUITracingSupport5PTypeV12forEachField6within8userData_9revisitoryAA11InterpreterC7StorageV5TypesV_xSbAC0G0V_S2ixzSbztXEyAO_S2ixtcSgtlFyAO_AA13IterativePairVyxSiGzAA0O13TreeTraversalVyAoSGztXEfU_yt_TG5TA_0;
          *(v37 + 24) = v274;
          v38 = swift_allocObject();
          *(v38 + 16) = partial apply for specialized closure #2 in PType.forEachField<A>(within:userData:_:revisitor:);
          *(v38 + 24) = v273;
          outlined init with copy of PType(v390, v340);
          outlined init with copy of Interpreter.Storage.Types(v391, v340);
          LOBYTE(v340[0]) = 1;
          specialized closure #1 in closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(_sxq_21SwiftUITracingSupport22IterativeTreeTraversalVyxq_GIgnng_xq_ADIegnng_r0_lTRAA5PTypeV5FieldV_AA0D4PairVyytSiGTG5TA_0, v38, _sxq_21SwiftUITracingSupport22IterativeTreeTraversalVyxq_GIgnll_xq_ADIegnll_r0_lTRAA5PTypeV5FieldV_AA0D4PairVyytSiGTG5TA_0, v37, 0, 0, 0, 0, 1, -1, 0, v36, 0);
          outlined destroy of PType(v390);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if (isEscapingClosureAtFileLocation)
          {
            goto LABEL_180;
          }

          v40 = swift_isEscapingClosureAtFileLocation();

          outlined destroy of Interpreter.Storage.Types(v391);
          if (v40)
          {
LABEL_181:
            __break(1u);
LABEL_182:
            __break(1u);
LABEL_183:
            __break(1u);
            goto LABEL_184;
          }

          if (a1[48])
          {
LABEL_230:
            __break(1u);
            goto LABEL_231;
          }

          v41 = *(a1 + 22);
          v42 = *a1;
          v21 = v291;
          v20 = v297;
          if (v42 >= *(v41 + 116))
          {
            goto LABEL_182;
          }

          v43 = *(v41 + 104);
          if (!v43)
          {
LABEL_231:
            __break(1u);
            goto LABEL_232;
          }

          v44 = *(*(v43 + 8 * v42) + 8);
          if (v11 >= *(v44 + 84))
          {
            goto LABEL_183;
          }

          v45 = *(v44 + 72);
          if (!v45)
          {
LABEL_232:
            __break(1u);
LABEL_233:
            __break(1u);
LABEL_234:
            __break(1u);
            goto LABEL_235;
          }

          if (!*(v45 + v297 + 212))
          {
            v46 = *(v41 + 136);
            v47 = v46[4];
            if (v15 >= *(v47 + 16))
            {
LABEL_184:
              __break(1u);
              goto LABEL_185;
            }

            v48 = *(v47 + 4 * v15 + 32);
            if (v48 >= *(v46 + 3))
            {
LABEL_185:
              __break(1u);
LABEL_186:
              __break(1u);
              goto LABEL_187;
            }

            v49 = *v46;
            if (!v49)
            {
LABEL_235:
              __break(1u);
              goto LABEL_236;
            }

            if (*(v49 + 120 * v48 + 84))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
              v50 = swift_allocObject();
              *(v50 + 16) = xmmword_26C328DC0;
              v51 = *(v41 + 136);
              v53 = v51[1];
              v52 = v51[2];
              v340[0] = *v51;
              v340[1] = v53;
              v340[2] = v52;
              v54 = v51[3];
              v55 = v51[4];
              v56 = v51[6];
              v343[0] = v51[5];
              v343[1] = v56;
              v341 = v54;
              v342 = v55;
              v57 = v51[5];
              v315 = v51[4];
              v316[0] = v57;
              v316[1] = v51[6];
              v58 = v51[1];
              v313[0] = *v51;
              v313[1] = v58;
              v59 = v51[3];
              v313[2] = v51[2];
              v314 = v59;
              outlined init with copy of Interpreter.Storage.Types(v340, &v300);
              v60 = Interpreter.Storage.Types.subscript.getter(v15);
              *(v50 + 56) = MEMORY[0x277D837D0];
              *(v50 + 32) = v60;
              *(v50 + 40) = v61;
              outlined destroy of Interpreter.Storage.Types(v340);
              print(_:separator:terminator:)();

              v20 = v297;
            }
          }
        }

        v62 = HIDWORD(a2);
        v63 = (HIDWORD(a2) + a3);
        if (!__CFADD__(HIDWORD(a2), a3))
        {
          if (v62 <= v63)
          {
            v64 = HIDWORD(a3) != 0xFFFFFFFF && a3 == 1;
            v65 = v64;
            if (a1[48])
            {
              goto LABEL_191;
            }

            v66 = *(a1 + 22);
            v67 = *a1;
            if (v67 < *(v66 + 116))
            {
              v68 = *(v66 + 104);
              if (!v68)
              {
LABEL_192:
                __break(1u);
                goto LABEL_193;
              }

              v69 = *(*(v68 + 8 * v67) + 8);
              if (v11 < *(v69 + 84))
              {
                LODWORD(v297) = v11;
                v285 = HIDWORD(a3);
                v294 = v63;
                v70 = *(v69 + 72);
                if (!v70)
                {
LABEL_193:
                  __break(1u);
LABEL_194:
                  __break(1u);
                  goto LABEL_195;
                }

                v71 = v21;
                v72 = v20;
                v73 = memcpy(v390, (v70 + v20), 0x131uLL);
                v74 = *(v66 + 136);
                v75 = *v74;
                v76 = v74[2];
                v389[1] = v74[1];
                v389[2] = v76;
                v389[0] = v75;
                v77 = v74[3];
                v78 = v74[4];
                v79 = v74[6];
                v389[5] = v74[5];
                v389[6] = v79;
                v389[3] = v77;
                v389[4] = v78;
                v354 = 0;
                v352 = 0u;
                v353 = 0u;
                v351 = 0u;
                MEMORY[0x28223BE20](v73);
                v273[-6] = v389;
                v273[-5] = v62;
                v270 = v294;
                LOBYTE(v271) = v65;
                v272 = &v351;
                outlined init with copy of Attribute(v390, v340);
                outlined init with copy of Interpreter.Storage.Types(v389, v340);
                specialized Attribute.forEachField<A>(within:userData:_:revisitor:)(v389, partial apply for closure #1 in Attribute.fieldClosestTo(range:rangeIsExact:with:), &v273[-8], 0, 0);
                outlined destroy of Attribute(v390);
                outlined destroy of Interpreter.Storage.Types(v389);
                v80 = v352;
                v81 = -1;
                v82 = MEMORY[0x277D84F90];
                if (v352)
                {
                  v83 = v354;
                  v84 = *(&v353 + 1);
                  v85 = DWORD1(v353);
                  v284 = __PAIR64__(DWORD2(v352), HIDWORD(v352));
                  v283 = *(&v351 + 1);
                  v293 = v351;
                  LOBYTE(v313[0]) = v353 & 1;
                  v340[0] = 0uLL;
                  v340[1] = MEMORY[0x277D84F90];
                  LOBYTE(v340[2]) = v357;
                  *(&v340[2] + 1) = v355;
                  BYTE3(v340[2]) = v356;
                  DWORD1(v340[2]) = -1;
                  *(&v340[2] + 1) = 0;
                  LODWORD(v341) = v71;
                  outlined destroy of Attribute.EstimatedField(v340);
                  v357 = v313[0];
                  v82 = v80;
                  v81 = v85;
                  v71 = v83;
                }

                else
                {
                  v293 = 0;
                  v283 = 0;
                  v284 = 0;
                  v84 = 0;
                }

                if (a1[48])
                {
                  goto LABEL_194;
                }

                v86 = *(a1 + 22);
                v87 = *a1;
                if (v87 < *(v86 + 116))
                {
                  v88 = *(v86 + 104);
                  if (!v88)
                  {
LABEL_195:
                    __break(1u);
                    goto LABEL_196;
                  }

                  v89 = *(*(v88 + 8 * v87) + 8);
                  if (v297 < *(v89 + 84))
                  {
                    v90 = *(v89 + 72);
                    if (!v90)
                    {
LABEL_196:
                      __break(1u);
                      goto LABEL_197;
                    }

                    v91 = v90 + v72;
                    if (v293 < *(v91 + 212))
                    {
                      v92 = *(v91 + 200);
                      if (!v92)
                      {
LABEL_197:
                        __break(1u);
LABEL_198:
                        __break(1u);
                        goto LABEL_199;
                      }

                      v93 = v92 + 40 * v293;
                      v94 = *(v93 + 8);
                      v95 = __OFADD__(v94, 1);
                      v96 = v94 + 1;
                      if (!v95)
                      {
                        v291 = v71;
                        v280 = v84;
                        v281 = v81;
                        v282 = v62;
                        *(v93 + 8) = v96;
                        v292 = HIDWORD(v298);
                        v97 = *a1;
                        v98 = *(a1 + 24);
                        v337 = *(a1 + 8);
                        v338 = v98;
                        v339 = *(a1 + 5);
                        v99 = a1[48];
                        v100 = *(a1 + 49);
                        v290 = a1 + 49;
                        v336[0] = v100;
                        *(v336 + 3) = *(a1 + 13);
                        v101 = *(a1 + 7);
                        v297 = (a1 + 56);
                        v102 = *(a1 + 8);
                        v103 = *(a1 + 9);
                        v295 = v97;
                        v296 = (a1 + 72);
                        v104 = *(a1 + 21);
                        v287 = a1 + 84;
                        v105 = *(a1 + 20);
                        v335 = *(a1 + 88);
                        v106 = *(a1 + 23);
                        v107 = *(a1 + 13);
                        v286 = a1 + 104;
                        v108 = a1[112];
                        v288 = a1 + 184;
                        v289 = (a1 + 113);
                        *(v334 + 15) = *(a1 + 10);
                        v109 = *(a1 + 145);
                        v110 = *(a1 + 113);
                        v333 = *(a1 + 129);
                        v334[0] = v109;
                        v332 = v110;
                        v111 = *(a1 + 22);
                        v330 = v106;
                        v331 = a1[192];
                        v383[0] = v101;
                        v383[1] = v102;
                        v383[2] = v103;
                        v384 = v105;
                        v385 = v104;
                        v386 = *(a1 + 88);
                        v112 = v101;
                        v387 = v107;
                        v113 = v103;
                        v114 = v107;
                        v388 = v108;
                        v279 = v82;
                        if (!v104)
                        {
                          goto LABEL_52;
                        }

                        while ((v113[1] & 1) != 0)
                        {
                          do
                          {
LABEL_52:
                            if (!v114)
                            {
                              v278 = v107;
                              v277[3] = v105;
                              specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v383);
                            }

                            v112 = *v114;
                            v113 = v114[2];
                            v115 = *(v114 + 7);
                            v114 = v114[6];
                          }

                          while (!v115);
                        }

                        if (!v112)
                        {
                          goto LABEL_224;
                        }

                        v116 = *(*(v112 + 24 * *v113) + 112);
                        if (!v116)
                        {
                          goto LABEL_198;
                        }

                        if (*(*(*(v116 + 32) + 8) + 16))
                        {
                          *(v340 + 8) = v337;
                          *(&v340[1] + 8) = v338;
                          *(v343 + 8) = v335;
                          v345 = v332;
                          *&v340[0] = v295;
                          *(&v340[2] + 1) = v339;
                          LOBYTE(v341) = v99;
                          *(&v341 + 1) = v336[0];
                          DWORD1(v341) = *(v336 + 3);
                          *(&v341 + 1) = v101;
                          *&v342 = v102;
                          *(&v342 + 1) = v103;
                          *&v343[0] = __PAIR64__(v104, v105);
                          *(&v343[1] + 1) = v107;
                          v344 = v108;
                          v346 = v333;
                          *v347 = v334[0];
                          *&v347[15] = *(v334 + 15);
                          v348 = v111;
                          v349 = v330;
                          v350 = v331;
                          v117 = v99;
                          Interpreter.Iterator.updatingValue.getter();
                          if (v119)
                          {
LABEL_199:
                            __break(1u);
                            goto LABEL_200;
                          }

                          if (v117)
                          {
LABEL_200:
                            __break(1u);
                            goto LABEL_201;
                          }

                          if (v295 < *(v111 + 116))
                          {
                            v120 = *(v111 + 104);
                            if (!v120)
                            {
LABEL_201:
                              __break(1u);
                              goto LABEL_202;
                            }

                            v121 = *(*(v120 + 8 * v295) + 8);
                            if (v118 < *(v121 + 44))
                            {
                              v122 = *(v121 + 32);
                              if (!v122)
                              {
LABEL_202:
                                __break(1u);
                                goto LABEL_203;
                              }

                              v123 = v122 + (v118 << 7);
                              v124 = *(v123 + 8);
                              v125 = *(v123 + 16);
                              v126 = *(v123 + 24);
                              v127 = *(v123 + 25);
                              v130 = v123 + 28;
                              v128 = *(v123 + 28);
                              v129 = *(v130 + 4);
                              LOBYTE(v313[0]) = v126;
                              v64 = v127 == 0;
                              v131 = 256;
                              if (v64)
                              {
                                v131 = 0;
                              }

                              v132 = v131 | (v128 << 32);
                              v133 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v124, v125, v131 | v126, v129);
                              if (!v133)
                              {
                                LOBYTE(v313[0]) = v126;
                                v133 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5(v124, v125, v132 | v126, v129);
                                if (!v133)
                                {
                                  goto LABEL_233;
                                }
                              }

                              if (*v133 < *(v121 + 84))
                              {
                                v134 = *(v121 + 72);
                                if (!v134)
                                {
LABEL_203:
                                  __break(1u);
LABEL_204:
                                  __break(1u);
                                  goto LABEL_205;
                                }

                                LODWORD(v278) = *(v134 + 312 * *v133 + 32);
                                v135 = *a1;
                                v136 = *(a1 + 24);
                                v327 = *(a1 + 8);
                                v328 = v136;
                                v329 = *(a1 + 5);
                                v137 = a1[48];
                                v326[0] = *v290;
                                *(v326 + 3) = *(v290 + 3);
                                v138 = *(a1 + 7);
                                v139 = *(a1 + 8);
                                v140 = *(a1 + 9);
                                v141 = *(a1 + 20);
                                v142 = *(a1 + 21);
                                v325 = *(a1 + 88);
                                v143 = *(a1 + 13);
                                v144 = a1[112];
                                *(v324 + 15) = *(v289 + 47);
                                v145 = v289[2];
                                v323 = v289[1];
                                v324[0] = v145;
                                v322 = *v289;
                                v146 = *(a1 + 22);
                                v321 = v288[8];
                                v320 = *v288;
                                v377[0] = v138;
                                v295 = v139;
                                v377[1] = v139;
                                v377[2] = v140;
                                LODWORD(v289) = v141;
                                v378 = v141;
                                v379 = v142;
                                v380 = *(a1 + 88);
                                v290 = v138;
                                v147 = v138;
                                v381 = v143;
                                v148 = v140;
                                v149 = v140;
                                v150 = v143;
                                LODWORD(v288) = v144;
                                v382 = v144;
                                if (!v142)
                                {
                                  goto LABEL_74;
                                }

                                while ((v149[1] & 1) != 0)
                                {
                                  do
                                  {
LABEL_74:
                                    if (!v150)
                                    {
                                      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v377);
                                    }

                                    v147 = *v150;
                                    v149 = *(v150 + 16);
                                    v151 = *(v150 + 28);
                                    v150 = *(v150 + 48);
                                  }

                                  while (!v151);
                                }

                                if (!v147)
                                {
                                  goto LABEL_225;
                                }

                                v152 = *(*&v147[6 * *v149] + 112);
                                if (!v152)
                                {
                                  goto LABEL_204;
                                }

                                if (*(*(*(v152 + 32) + 8) + 16))
                                {
                                  if (v137)
                                  {
LABEL_205:
                                    __break(1u);
                                    goto LABEL_206;
                                  }

                                  if (v135 < *(v146 + 116))
                                  {
                                    v153 = *(v146 + 104);
                                    if (!v153)
                                    {
LABEL_206:
                                      __break(1u);
                                      goto LABEL_207;
                                    }

                                    *(v313 + 8) = v327;
                                    *(&v313[1] + 8) = v328;
                                    *(v316 + 8) = v325;
                                    *(v317 + 1) = v322;
                                    v154 = *(*(v153 + 8 * v135) + 8);
                                    *&v313[0] = v135;
                                    *(&v313[2] + 1) = v329;
                                    LOBYTE(v314) = 0;
                                    *(&v314 + 1) = v326[0];
                                    DWORD1(v314) = *(v326 + 3);
                                    *(&v314 + 1) = v290;
                                    *&v315 = v295;
                                    *(&v315 + 1) = v148;
                                    *&v316[0] = __PAIR64__(v142, v289);
                                    *(&v316[1] + 1) = v143;
                                    LOBYTE(v317[0]) = v288;
                                    *(&v317[1] + 1) = v323;
                                    *(&v317[2] + 1) = v324[0];
                                    v317[3] = *(v324 + 15);
                                    *&v318 = v146;
                                    *(&v318 + 1) = v320;
                                    v319 = v321;
                                    Interpreter.Iterator.updatingValue.getter();
                                    if (v156)
                                    {
LABEL_207:
                                      __break(1u);
                                      goto LABEL_208;
                                    }

                                    v157 = v286;
                                    v158 = v287;
                                    if (v155 < *(v154 + 44))
                                    {
                                      v159 = *(v154 + 32);
                                      if (!v159)
                                      {
LABEL_208:
                                        __break(1u);
LABEL_209:
                                        __break(1u);
                                        goto LABEL_210;
                                      }

                                      v160 = v159 + (v155 << 7);
                                      v161 = *(v160 + 8);
                                      v162 = *(v160 + 16);
                                      v163 = *(v160 + 24);
                                      v164 = *(v160 + 25);
                                      v167 = v160 + 28;
                                      v165 = *(v160 + 28);
                                      v166 = *(v167 + 4);
                                      LOBYTE(v313[0]) = v163;
                                      v64 = v164 == 0;
                                      v168 = 256;
                                      if (v64)
                                      {
                                        v168 = 0;
                                      }

                                      v169 = v168 | (v165 << 32);
                                      v170 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v161, v162, v168 | v163, v166);
                                      if (!v170)
                                      {
                                        LOBYTE(v313[0]) = v163;
                                        v170 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5(v161, v162, v169 | v163, v166);
                                        if (!v170)
                                        {
                                          goto LABEL_234;
                                        }
                                      }

                                      if (v278 == *v170)
                                      {
                                        v171 = *(v297 + 16);
                                        v375[0] = *v297;
                                        if (v298)
                                        {
                                          v172 = *(a1 + 29);
                                        }

                                        else
                                        {
                                          v172 = 0;
                                        }

                                        if (v298)
                                        {
                                          v173 = 6;
                                        }

                                        else
                                        {
                                          v173 = 0;
                                        }

                                        if (v298)
                                        {
                                          v174 = v298;
                                        }

                                        else
                                        {
                                          v174 = -1;
                                        }

                                        v375[1] = v171;
                                        v376[0] = *(v297 + 32);
                                        *(v376 + 9) = *(v297 + 41);
                                        v175 = v297;
                                        v176 = v296;
                                        v177 = v158;
                                        v178 = v157;
                                        while (1)
                                        {
                                          v179 = *v178;
                                          if (*v177)
                                          {
                                            v180 = *v176;
                                            if ((v180[1] & 1) == 0)
                                            {
                                              break;
                                            }
                                          }

                                          if (!v179)
                                          {
                                            specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v375);
                                          }

                                          v176 = (v179 + 16);
                                          v177 = (v179 + 28);
                                          v178 = (v179 + 48);
                                          v175 = v179;
                                        }

                                        v181 = *v175;
                                        if (!v181)
                                        {
                                          goto LABEL_226;
                                        }

                                        v182 = *(*(v181 + 24 * *v180) + 112);
                                        if (!v182)
                                        {
                                          goto LABEL_209;
                                        }

                                        if (*(*(*(v182 + 32) + 8) + 16))
                                        {
                                          if (a1[48])
                                          {
LABEL_210:
                                            __break(1u);
                                            goto LABEL_211;
                                          }

                                          v183 = *(a1 + 22);
                                          v184 = *a1;
                                          if (v184 < *(v183 + 116))
                                          {
                                            v185 = *(v183 + 104);
                                            if (!v185)
                                            {
LABEL_211:
                                              __break(1u);
                                              goto LABEL_212;
                                            }

                                            v186 = *(*(v185 + 8 * v184) + 8);
                                            v187 = *(a1 + 11);
                                            v317[3] = *(a1 + 10);
                                            v318 = v187;
                                            v319 = a1[192];
                                            v188 = *(a1 + 7);
                                            v316[1] = *(a1 + 6);
                                            v317[0] = v188;
                                            v189 = *(a1 + 9);
                                            v317[1] = *(a1 + 8);
                                            v317[2] = v189;
                                            v190 = *(a1 + 3);
                                            v313[2] = *(a1 + 2);
                                            v314 = v190;
                                            v191 = *(a1 + 5);
                                            v315 = *(a1 + 4);
                                            v316[0] = v191;
                                            v192 = *(a1 + 1);
                                            v313[0] = *a1;
                                            v313[1] = v192;
                                            Interpreter.Iterator.updatingValue.getter();
                                            if (v194)
                                            {
LABEL_212:
                                              __break(1u);
                                              goto LABEL_213;
                                            }

                                            if (v193 < *(v186 + 44))
                                            {
                                              v195 = *(v186 + 32);
                                              if (!v195)
                                              {
LABEL_213:
                                                __break(1u);
LABEL_214:
                                                __break(1u);
                                                goto LABEL_215;
                                              }

                                              v196 = v298 == 0;
                                              v197 = v195 + (v193 << 7);
                                              v198 = *(v197 + 8);
                                              v199 = *(v197 + 16);
                                              v200 = *(v197 + 24);
                                              v201 = *(v197 + 25);
                                              v204 = v197 + 28;
                                              v203 = *(v197 + 28);
                                              v202 = *(v204 + 4);
                                              LOBYTE(v300) = v200;
                                              v205 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, v198, v199, v200, v202);
                                              LODWORD(v205[1].Description) = v172;
                                              HIDWORD(v205[1].Description) = v173;
                                              LOBYTE(v205[2].Kind) = v196;
                                              HIDWORD(v205[2].Kind) = v174;
                                              v370 = v355;
                                              v371 = v356;
                                              v362[0] = v282;
                                              v362[1] = v294;
                                              v363 = v285;
                                              v364 = v293;
                                              v365 = v283;
                                              v366 = v279;
                                              v367 = HIDWORD(v284);
                                              v368 = v284;
                                              v369 = v357;
                                              v372 = v281;
                                              v373 = v280;
                                              v374 = v291;
                                              _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA5EventV14AttributeValueV12ChangedFieldV_Tt0B5(v362);
                                              v207 = v206;
                                              v209 = v296;
                                              v208 = v297;
                                              v210 = *(v297 + 16);
                                              v360[0] = *v297;
                                              v360[1] = v210;
                                              v361[0] = *(v297 + 32);
                                              *(v361 + 9) = *(v297 + 41);
                                              v211 = v158;
                                              v212 = v157;
                                              while (1)
                                              {
                                                v213 = *v212;
                                                if (*v211)
                                                {
                                                  v214 = *v209;
                                                  if ((v214[1] & 1) == 0)
                                                  {
                                                    break;
                                                  }
                                                }

                                                if (!v213)
                                                {
                                                  specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v360);
                                                }

                                                v209 = (v213 + 16);
                                                v211 = (v213 + 28);
                                                v212 = (v213 + 48);
                                                v208 = v213;
                                              }

                                              v215 = *v208;
                                              if (!v215)
                                              {
                                                goto LABEL_227;
                                              }

                                              v216 = *(*(v215 + 24 * *v214) + 112);
                                              if (!v216)
                                              {
                                                goto LABEL_214;
                                              }

                                              if (*(*(*(v216 + 32) + 8) + 16))
                                              {
                                                if (a1[48])
                                                {
LABEL_215:
                                                  __break(1u);
                                                  goto LABEL_216;
                                                }

                                                v217 = *(a1 + 22);
                                                v218 = *a1;
                                                if (v218 < *(v217 + 116))
                                                {
                                                  v219 = *(v217 + 104);
                                                  if (!v219)
                                                  {
LABEL_216:
                                                    __break(1u);
                                                    goto LABEL_217;
                                                  }

                                                  v220 = *(*(v219 + 8 * v218) + 8);
                                                  v221 = *(a1 + 11);
                                                  v310 = *(a1 + 10);
                                                  v311 = v221;
                                                  v312 = a1[192];
                                                  v222 = *(a1 + 7);
                                                  v306 = *(a1 + 6);
                                                  v307 = v222;
                                                  v223 = *(a1 + 9);
                                                  v308 = *(a1 + 8);
                                                  v309 = v223;
                                                  v224 = *(a1 + 3);
                                                  v302 = *(a1 + 2);
                                                  v303 = v224;
                                                  v225 = *(a1 + 5);
                                                  v304 = *(a1 + 4);
                                                  v305 = v225;
                                                  v226 = *(a1 + 1);
                                                  v300 = *a1;
                                                  v301 = v226;
                                                  Interpreter.Iterator.updatingValue.getter();
                                                  if (v228)
                                                  {
LABEL_217:
                                                    __break(1u);
                                                    goto LABEL_218;
                                                  }

                                                  v229 = v292;
                                                  if (v227 < *(v220 + 44))
                                                  {
                                                    v230 = *(v220 + 32);
                                                    if (!v230)
                                                    {
LABEL_218:
                                                      __break(1u);
LABEL_219:
                                                      __break(1u);
                                                      goto LABEL_220;
                                                    }

                                                    v231 = v230 + (v227 << 7);
                                                    v232 = *(v231 + 8);
                                                    v233 = *(v231 + 16);
                                                    v234 = *(v231 + 24);
                                                    v235 = *(v231 + 25);
                                                    v238 = v231 + 28;
                                                    v237 = *(v231 + 28);
                                                    v236 = *(v238 + 4);
                                                    LOBYTE(v358[0]) = v234;
                                                    specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, v232, v233, v234, v236)[2].Description = v207;
                                                    if (v229)
                                                    {
                                                      v239 = *(a1 + 29);
                                                      v240 = 6;
                                                      v241 = v229;
                                                    }

                                                    else
                                                    {
                                                      v239 = 0;
                                                      v240 = 0;
                                                      v241 = -1;
                                                    }

                                                    v242 = v296;
                                                    v243 = v297;
                                                    v244 = *(v297 + 16);
                                                    v358[0] = *v297;
                                                    v358[1] = v244;
                                                    v359[0] = *(v297 + 32);
                                                    *(v359 + 9) = *(v297 + 41);
                                                    while (1)
                                                    {
                                                      v245 = *v157;
                                                      if (*v158)
                                                      {
                                                        if (((*v242)[1] & 1) == 0)
                                                        {
                                                          break;
                                                        }
                                                      }

                                                      if (!v245)
                                                      {
                                                        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v358);
                                                      }

                                                      v242 = (v245 + 16);
                                                      v158 = (v245 + 28);
                                                      v157 = (v245 + 48);
                                                      v243 = v245;
                                                    }

                                                    if (!*v243)
                                                    {
                                                      goto LABEL_228;
                                                    }

                                                    v246 = *(*(*v243 + 24 * **v242) + 112);
                                                    if (!v246)
                                                    {
                                                      goto LABEL_219;
                                                    }

                                                    if (*(*(*(v246 + 32) + 8) + 16))
                                                    {
                                                      if (a1[48])
                                                      {
LABEL_220:
                                                        __break(1u);
                                                        goto LABEL_221;
                                                      }

                                                      v247 = *(a1 + 22);
                                                      v248 = *a1;
                                                      if (v248 < *(v247 + 116))
                                                      {
                                                        v249 = *(v247 + 104);
                                                        if (!v249)
                                                        {
LABEL_221:
                                                          __break(1u);
                                                          goto LABEL_222;
                                                        }

                                                        v250 = *(*(v249 + 8 * v248) + 8);
                                                        v251 = *(a1 + 11);
                                                        v310 = *(a1 + 10);
                                                        v311 = v251;
                                                        v312 = a1[192];
                                                        v252 = *(a1 + 7);
                                                        v306 = *(a1 + 6);
                                                        v307 = v252;
                                                        v253 = *(a1 + 9);
                                                        v308 = *(a1 + 8);
                                                        v309 = v253;
                                                        v254 = *(a1 + 3);
                                                        v302 = *(a1 + 2);
                                                        v303 = v254;
                                                        v255 = *(a1 + 5);
                                                        v304 = *(a1 + 4);
                                                        v305 = v255;
                                                        v256 = *(a1 + 1);
                                                        v300 = *a1;
                                                        v301 = v256;
                                                        Interpreter.Iterator.updatingValue.getter();
                                                        if (v258)
                                                        {
LABEL_222:
                                                          __break(1u);
LABEL_223:
                                                          __break(1u);
LABEL_224:
                                                          __break(1u);
LABEL_225:
                                                          __break(1u);
LABEL_226:
                                                          __break(1u);
LABEL_227:
                                                          __break(1u);
LABEL_228:
                                                          __break(1u);
                                                          goto LABEL_229;
                                                        }

                                                        if (v257 < *(v250 + 44))
                                                        {
                                                          v259 = *(v250 + 32);
                                                          if (v259)
                                                          {
                                                            v260 = v292 == 0;
                                                            v261 = v259 + (v257 << 7);
                                                            v262 = *(v261 + 8);
                                                            v263 = *(v261 + 16);
                                                            v264 = *(v261 + 24);
                                                            v265 = *(v261 + 25);
                                                            v268 = v261 + 28;
                                                            v267 = *(v261 + 28);
                                                            v266 = *(v268 + 4);
                                                            v299 = v264;
                                                            result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, v262, v263, v264, v266);
                                                            *(result + 8) = v239;
                                                            *(result + 12) = v240;
                                                            *(result + 16) = v260;
                                                            *(result + 20) = v241;
                                                            return result;
                                                          }

                                                          goto LABEL_223;
                                                        }

                                                        goto LABEL_179;
                                                      }

LABEL_178:
                                                      __break(1u);
LABEL_179:
                                                      __break(1u);
LABEL_180:
                                                      __break(1u);
                                                      goto LABEL_181;
                                                    }

LABEL_177:
                                                    __break(1u);
                                                    goto LABEL_178;
                                                  }

LABEL_176:
                                                  __break(1u);
                                                  goto LABEL_177;
                                                }

LABEL_175:
                                                __break(1u);
                                                goto LABEL_176;
                                              }

LABEL_174:
                                              __break(1u);
                                              goto LABEL_175;
                                            }

LABEL_173:
                                            __break(1u);
                                            goto LABEL_174;
                                          }

LABEL_172:
                                          __break(1u);
                                          goto LABEL_173;
                                        }

LABEL_171:
                                        __break(1u);
                                        goto LABEL_172;
                                      }

LABEL_170:
                                      __break(1u);
                                      goto LABEL_171;
                                    }

LABEL_169:
                                    __break(1u);
                                    goto LABEL_170;
                                  }

LABEL_168:
                                  __break(1u);
                                  goto LABEL_169;
                                }

LABEL_167:
                                __break(1u);
                                goto LABEL_168;
                              }

LABEL_166:
                              __break(1u);
                              goto LABEL_167;
                            }

LABEL_165:
                            __break(1u);
                            goto LABEL_166;
                          }

LABEL_164:
                          __break(1u);
                          goto LABEL_165;
                        }

LABEL_163:
                        __break(1u);
                        goto LABEL_164;
                      }

LABEL_162:
                      __break(1u);
                      goto LABEL_163;
                    }

LABEL_161:
                    __break(1u);
                    goto LABEL_162;
                  }

LABEL_160:
                  __break(1u);
                  goto LABEL_161;
                }

LABEL_159:
                __break(1u);
                goto LABEL_160;
              }

LABEL_158:
              __break(1u);
              goto LABEL_159;
            }

LABEL_157:
            __break(1u);
            goto LABEL_158;
          }

LABEL_156:
          __break(1u);
          goto LABEL_157;
        }

LABEL_155:
        __break(1u);
        goto LABEL_156;
      }

LABEL_154:
      __break(1u);
      goto LABEL_155;
    }

LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

LABEL_236:
  v276 = 0;
  v275 = 4311;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in T_CompareFailed.model(within:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9, unsigned int a10)
{
  if (a9[48])
  {
    goto LABEL_14;
  }

  v10 = *(a9 + 22);
  v11 = *a9;
  if (v11 >= *(v10 + 116))
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(v10 + 104);
  if (!v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = *(*(v12 + 8 * v11) + 8);
  if (*(v13 + 84) <= a10)
  {
    goto LABEL_12;
  }

  v14 = *(v13 + 72);
  if (v14)
  {
    v15 = v14 + 312 * a10;
    v16 = *(v15 + 212);
    if (v16 == *(v15 + 208))
    {
      result = specialized UnsafeArray.growToCapacity(_:)(2 * v16);
    }

    v18 = *(v15 + 200);
    if (!v18)
    {
      goto LABEL_17;
    }

    v19 = *(v15 + 212);
    v20 = v18 + 40 * v19;
    *v20 = -1;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 8) = 0;
    *(v20 + 32) = 1;
    if (v19 != -1)
    {
      *(v15 + 212) = v19 + 1;
      return 1;
    }

    goto LABEL_13;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t protocol witness for static Tracepoint.peak(within:) in conformance T_CompareFailed(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C328DC0;
  *(v4 + 56) = a2;
  v5 = *(a1 + 184);
  v6 = *(v5 + 16);
  *(v4 + 32) = *v5;
  *(v4 + 48) = v6;
  print(_:separator:terminator:)();
}

void closure #1 in compare_failed(raw:_:state:)(uint64_t a1, uint64_t a2, unsigned int a3)
{
  FieldType = AGComparisonStateGetFieldType();
  if (!FieldType)
  {
    v10 = 0xFFFFFFFF00000000;
    goto LABEL_5;
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = FieldType;
    v8 = *(a1 + 48);
    os_unfair_lock_lock_with_options();
    v9 = Trace.Control.writtenOnce(type:lazy:flush:)(v7, 1, 1u);
    os_unfair_lock_unlock(v6);
    v10 = v9 << 32;
LABEL_5:
    if (*(*(a1 + 24) + 13) == 1 && (Destination = AGComparisonStateGetDestination()) != 0)
    {
      v12 = Destination;
      v13 = *(AGGraphGetAttributeInfo() + 8);
      lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
      v14 = *(*(v13 - 8) + 64);
      v15 = specialized Trace_Handle.write<A>(attachment:)(v12) << 32;
    }

    else
    {
      v15 = 0;
    }

    if (*(*(a1 + 24) + 13) == 1 && (Source = AGComparisonStateGetSource()) != 0)
    {
      v17 = Source;
      v18 = *(AGGraphGetAttributeInfo() + 8);
      lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
      v19 = *(*(v18 - 8) + 64);
      v20 = specialized Trace_Handle.write<A>(attachment:)(v17);
    }

    else
    {
      v20 = 0;
    }

    FieldRange = AGComparisonStateGetFieldRange();
    if ((FieldRange & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v22 = FieldRange;
      if (!HIDWORD(FieldRange))
      {
        AGComparisonStateGetFieldRange();
        if ((v23 & 0x8000000000000000) == 0)
        {
          if (!HIDWORD(v23))
          {
            specialized Trace_Handle.write<A>(_:omit:)(a3 | (v22 << 32), v23 | v10, v20 | v15, 0);
            return;
          }

          goto LABEL_21;
        }

LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_22:
  __break(1u);
}

uint64_t protocol witness for static Tracepoint.peak(within:) in conformance TestingSupport.TestEvent(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26C328DC0;
  *(v3 + 56) = a2;
  print(_:separator:terminator:)();
}

uint64_t protocol witness for static Tracepoint.peak(within:) in conformance T_NodeAddEdge(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C328DC0;
  *(v4 + 56) = a2;
  v5 = *(a1 + 184);
  v6 = *(v5 + 8);
  *(v4 + 32) = *v5;
  *(v4 + 40) = v6;
  print(_:separator:terminator:)();
}

uint64_t protocol witness for static Tracepoint.peak(within:) in conformance T_BeginNodeUpdate(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C328DC0;
  *(v4 + 56) = a2;
  *(v4 + 32) = **(a1 + 184);
  print(_:separator:terminator:)();
}

uint64_t protocol witness for static Tracepoint.peak(within:) in conformance T_AnimationScheduleTick(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C328DC0;
  *(v4 + 56) = a2;
  v5 = *(a1 + 184);
  v6 = *(v5 + 4);
  *(v4 + 32) = *v5;
  *(v4 + 36) = v6;
  print(_:separator:terminator:)();
}

uint64_t protocol witness for static Tracepoint.peak(within:) in conformance T_AnimationTick(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C328DC0;
  *(v4 + 56) = a2;
  v5 = *(a1 + 184);
  v6 = *(v5 + 1);
  *(v4 + 32) = *v5;
  *(v4 + 33) = v6;
  print(_:separator:terminator:)();
}

uint64_t protocol witness for static Tracepoint.peak(within:) in conformance T_AnimationBegin(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C328DC0;
  *(v4 + 56) = a2;
  v5 = swift_allocObject();
  *(v4 + 32) = v5;
  v6 = *(a1 + 184);
  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(v5 + 16) = *v6;
  *(v5 + 24) = v7;
  *(v5 + 40) = v8;
  print(_:separator:terminator:)();
}

uint64_t protocol witness for static Tracepoint.peak(within:) in conformance T_ReuseUnaryElement(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C328DC0;
  *(v4 + 56) = a2;
  v5 = *(a1 + 184);
  v6 = *v5;
  LOBYTE(v5) = *(v5 + 4);
  *(v4 + 32) = v6;
  *(v4 + 36) = v5;
  print(_:separator:terminator:)();
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t closure #1 in OSLogArguments.append(_:)(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned UInt16)@<X0>(uint64_t (*a1)(void)@<X0>, _WORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned UInt32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  specialized _NativeSet._delete(at:)(v9);
  *v2 = v20;
  return v13;
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = MEMORY[0x26D69DBA0](*(*v1 + 40), a1);
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v1;
  v13 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v11 = v13;
  }

  v12 = *(*(v11 + 48) + 8 * v6);
  specialized _NativeSet._delete(at:)(v6);
  result = v12;
  *v1 = v13;
  return result;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = MEMORY[0x26D69DBA0](*(v3 + 40), *v11) & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

void specialized Set._Variant.removeAll(keepingCapacity:)(char a1)
{
  v2 = *v1;
  if (a1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      if (v2 < 0)
      {
        v3 = *v1;
      }

      if (__CocoaSet.count.getter() > 0)
      {
        v4 = __CocoaSet.count.getter();

        if (v4)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo13AGSubgraphRefaGMd, &_ss11_SetStorageCySo13AGSubgraphRefaGMR);
          *v1 = static _SetStorage.allocate(capacity:)();
        }

        else
        {
          *v1 = MEMORY[0x277D84FA0];
        }
      }
    }

    else if (*(v2 + 16))
    {
      v6 = *v1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10_NativeSetVySo13AGSubgraphRefaGMd, &_ss10_NativeSetVySo13AGSubgraphRefaGMR);
      _NativeSet.removeAll(isUnique:)(isUniquelyReferenced_nonNull_native);
      *v1 = v8;
    }
  }

  else
  {
    v5 = *v1;

    *v1 = MEMORY[0x277D84FA0];
  }
}

char *specialized UnsafeMutableBufferPointer._copyContents(initializing:)(void *a1, uint64_t a2, char *__src, uint64_t a4)
{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, 32 * v5);
    v4 += 32 * v5;
  }

  return v4;
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)()
{
  result = AGTreeElementGetNextNode();
  v1 = *MEMORY[0x277CEF7C8];
  v2 = MEMORY[0x277D84F90];
  if (result == *MEMORY[0x277CEF7C8])
  {
    v3 = 0;
LABEL_22:
    v17 = v2[3];
    if (v17 < 2)
    {
      return v2;
    }

    v18 = v17 >> 1;
    v16 = __OFSUB__(v18, v3);
    v19 = v18 - v3;
    if (!v16)
    {
      v2[2] = v19;
      return v2;
    }
  }

  else
  {
    v3 = 0;
    v4 = (MEMORY[0x277D84F90] + 32);
    while (1)
    {
      if (!v3)
      {
        v5 = v2[3];
        if (((v5 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_27;
        }

        v6 = result;
        v7 = v5 & 0xFFFFFFFFFFFFFFFELL;
        if (v7 <= 1)
        {
          v8 = 1;
        }

        else
        {
          v8 = v7;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11AGAttributeaGMd, &_ss23_ContiguousArrayStorageCySo11AGAttributeaGMR);
        v9 = swift_allocObject();
        v10 = _swift_stdlib_malloc_size(v9);
        v11 = v10 - 32;
        if (v10 < 32)
        {
          v11 = v10 - 29;
        }

        v12 = v11 >> 2;
        v9[2] = v8;
        v9[3] = 2 * (v11 >> 2);
        v13 = (v9 + 4);
        v14 = v2[3] >> 1;
        if (v2[2])
        {
          if (v9 != v2 || v13 >= v2 + 4 * v14 + 32)
          {
            memmove(v9 + 4, v2 + 4, 4 * v14);
          }

          v2[2] = 0;
        }

        v4 = (v13 + 4 * v14);
        v3 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - v14;

        v2 = v9;
        result = v6;
      }

      v16 = __OFSUB__(v3--, 1);
      if (v16)
      {
        break;
      }

      *v4++ = result;
      result = AGTreeElementGetNextNode();
      if (result == v1)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized T_Header.init(loadedFrom:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    if (*result == 123123123)
    {
      v2 = *(result + 8);
      if (v2 == 1)
      {
        v3 = 0;
        v4 = 0;
        v5 = 0;
        v6 = 0;
        v7 = 0;
        v8 = 0;
        v9 = -1;
        v10 = (result + 10);
        v11 = 1;
        v12 = 1;
LABEL_7:
        v13 = *v10;
        *a2 = 123123123;
        *(a2 + 8) = v2;
        *(a2 + 10) = v11;
        *(a2 + 12) = v12;
        *(a2 + 14) = v3;
        *(a2 + 16) = v13;
        *(a2 + 20) = v8;
        *(a2 + 28) = v4;
        *(a2 + 36) = v5;
        *(a2 + 38) = v6;
        *(a2 + 40) = v7;
        *(a2 + 48) = v9;
        return result;
      }

      if (v2 == 2)
      {
        v11 = *(result + 10);
        v12 = *(result + 12);
        v3 = *(result + 14);
        v10 = (result + 16);
        v8 = *(result + 20);
        v4 = *(result + 28);
        v5 = *(result + 36);
        v6 = *(result + 38);
        v7 = *(result + 40);
        v9 = *(result + 48);
        goto LABEL_7;
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

double specialized T_Header.init()@<D0>(uint64_t a1@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_self() processInfo];
  v3 = [v2 processIdentifier];

  info = 0;
  mach_timebase_info(&info);
  type metadata accessor for SwiftUITrace();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = [v5 infoDictionary];

  if (!v6)
  {
LABEL_10:
    __break(1u);
  }

  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v7 + 16) || (v8 = specialized __RawDictionaryStorage.find<A>(_:)(0x656C646E75424643, 0xEF6E6F6973726556), (v9 & 1) == 0))
  {
LABEL_9:

    __break(1u);
    goto LABEL_10;
  }

  outlined init with copy of Any(*(v7 + 56) + 32 * v8, v19);

  outlined init with take of Any(v19, &v20);
  swift_dynamicCast();
  v10 = closure #1 in T_Header.init()(v16, v17);

  has_inserted_or_interposing_libraries = dyld_has_inserted_or_interposing_libraries();
  v12 = dyld_shared_cache_some_image_overridden();
  if ((v3 & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v13 = has_inserted_or_interposing_libraries;
  if (v12)
  {
    v13 = has_inserted_or_interposing_libraries | 2;
  }

  *a1 = 123123123;
  *(a1 + 8) = 2;
  *(a1 + 12) = v10;
  *(a1 + 14) = 36;
  *(a1 + 16) = v3;
  *(a1 + 20) = info;
  *(a1 + 28) = 0;
  *(a1 + 36) = 327696;
  *(a1 + 40) = v13;
  result = 2.78136779e-308;
  *(a1 + 48) = 0x14000C00240014;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized ReuseEventCategory.init(rawValue:)(uint64_t result)
{
  if (result >= 0xCu)
  {
    return 12;
  }

  else
  {
    return result;
  }
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

uint64_t specialized BufferAttachment.init(pointer:fileSize:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(type metadata accessor for String.Encoding() - 8) + 64);
  result = MEMORY[0x28223BE20](a1);
  v8 = *(*(a3 - 8) + 64);
  if (!a1)
  {
    goto LABEL_11;
  }

  if (v8)
  {
    v9 = a2 - result;
    if (a2 - result == 0x8000000000000000 && v8 == -1)
    {
      goto LABEL_10;
    }

    if (((v9 / v8) & 0x8000000000000000) == 0)
    {
      if (!(v9 % v8))
      {
        return result;
      }

      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  v10 = result;
  _StringGuts.grow(_:)(80);
  type metadata accessor for BufferAttachment();
  swift_getMetatypeMetadata();
  v11 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v11);

  MEMORY[0x26D69CDB0](0x657A697320666F20, 0xE900000000000020);
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v12);

  MEMORY[0x26D69CDB0](0xD000000000000033, 0x800000026C33C2A0);
  v13 = _typeName(_:qualified:)();
  MEMORY[0x26D69CDB0](v13);

  MEMORY[0x26D69CDB0](0x657A697320666F20, 0xE900000000000020);
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v14);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  specialized Collection.prefix(_:)(40, v10, a2);
  static String.Encoding.utf8.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>, &_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
  v15 = String.init<A>(bytes:encoding:)();
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xE000000000000000;
  }

  MEMORY[0x26D69CDB0](v15, v17);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

ValueMetadata *specialized T_PassedDeadline.model(within:)(ValueMetadata *result)
{
  v1 = result;
  Kind_low = LOBYTE(result->Kind);
  v3 = LOBYTE(result[3].Kind);
  p_Description = &result[3].Description;
  v5 = *&result[4].Description;
  v47[0] = *(result + 56);
  v47[1] = v5;
  v48[0] = *(result + 88);
  *(v48 + 9) = *(result + 97);
  v6 = &result[4].Description;
  v7 = &result[5].Kind + 1;
  v8 = &result[6].Description;
  Kind = result[11].Kind;
  while (1)
  {
    v10 = *v8;
    if (*v7)
    {
      v11 = *v6;
      if ((v11[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v10)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v47);
    }

    v6 = (v10 + 16);
    v7 = v10 + 28;
    v8 = (v10 + 48);
    p_Description = v10;
  }

  v12 = *p_Description;
  if (!v12)
  {
    goto LABEL_50;
  }

  result = &v12[24 * *v11];
  v13 = *(result->Kind + 112);
  if (!v13)
  {
    goto LABEL_43;
  }

  v14 = *(*(v13 + 32) + 8);
  v15 = *(v14 + 16);
  if (!v15)
  {
    goto LABEL_40;
  }

  if (v3)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (*(Kind + 116) <= Kind_low)
  {
    goto LABEL_37;
  }

  v16 = *(Kind + 104);
  if (!v16)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v17 = *(v14 + 32 + 48 * (v15 - 1));
  v18 = *(*(v16 + 8 * Kind_low) + 8);
  v19 = *(v18 + 44);
  if (v17 >= v19)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v20 = *(v18 + 32);
  if (!v20)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v21 = v20 + (v17 << 7);
  v24 = *(v21 + 8);
  v23 = v21 + 8;
  v22 = v24;
  if (!*(v23 + 24))
  {
    goto LABEL_36;
  }

  if (*(v23 + 16))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (!v22)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (*v22 != &type metadata for Event.Prefetch)
  {
    v25 = (v14 + 48 * v15 - 64);
    while (v15-- > 1)
    {
      v17 = *v25;
      if (v17 >= v19)
      {
        goto LABEL_35;
      }

      v27 = v20 + (v17 << 7);
      v30 = *(v27 + 8);
      v29 = v27 + 8;
      v28 = v30;
      if (!*(v29 + 24))
      {
        goto LABEL_36;
      }

      if (*(v29 + 16))
      {
        goto LABEL_42;
      }

      if (!v28)
      {
        goto LABEL_41;
      }

      v25 -= 12;
      if (*v28 == &type metadata for Event.Prefetch)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_40;
  }

LABEL_26:
  if (LOBYTE(v1[3].Kind))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v31 = LOBYTE(v1->Kind);
  if (v31 >= *(Kind + 116))
  {
    goto LABEL_38;
  }

  v32 = *(Kind + 104);
  if (!v32)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v33 = *(*(v32 + 8 * v31) + 8);
  if (v17 >= *(v33 + 44))
  {
    goto LABEL_39;
  }

  v34 = *(v33 + 32);
  if (!v34)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    return result;
  }

  v35 = v34 + (v17 << 7);
  v36 = *(v35 + 8);
  v37 = *(v35 + 16);
  v38 = *(v35 + 24);
  v39 = *(v35 + 25);
  v42 = v35 + 28;
  v40 = *(v35 + 28);
  v41 = *(v42 + 4);
  v43 = v39 == 0;
  v44 = 256;
  if (v43)
  {
    v44 = 0;
  }

  v45 = v44 | (v40 << 32);
  v46 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV8PrefetchV_Ttgq5(v36, v37, v45 | v38, v41);
  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(v46, v36, v37, v45 | v38, v41);
  LOBYTE(result->Description) = 1;
  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t specialized T_BeginTreeWrite.model(within:)(uint64_t a1)
{
  v1 = (a1 + 56);
  v2 = *(a1 + 72);
  v10[0] = *(a1 + 56);
  v10[1] = v2;
  v11[0] = *(a1 + 88);
  *(v11 + 9) = *(a1 + 97);
  v3 = (a1 + 88);
  v4 = (a1 + 100);
  v5 = (a1 + 104);
  result = *(a1 + 116);
  while (1)
  {
    v7 = *v5;
    if (result < *v4)
    {
      v8 = (*v3 + 8 * result);
      if ((v8[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v7)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v10);
    }

    v3 = (v7 + 32);
    v4 = (v7 + 44);
    v5 = (v7 + 48);
    v1 = v7;
  }

  v9 = *v1;
  if (v9)
  {
    return specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(*(*(v9 + 24 * *v8) + 32), -1, 0);
  }

  __break(1u);
  return result;
}

uint64_t sub_26C31B534()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for closure #2 in Trace.SwiftUI.added()(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return closure #2 in Trace.SwiftUI.added()(a1);
}

uint64_t _sIg_Ieg_TRTA_0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _s21SwiftUITracingSupport16BufferAttachmentV9serialize5value2toyACyxG_ySWXEtFZAA7AddressV_Tt1g5Tf4xn_n(uint64_t result, unint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 >> 60)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!a3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = 8 * a2;
  if (8 * a2 == 0x8000000000000000 && a3 == -1)
  {
    goto LABEL_12;
  }

  if (!(v4 % a3))
  {
    return a4(result, result + v4);
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

void specialized static CircularBuffer.Transaction.write(buffer:transaction:)(char *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a1;
    v4 = a2 - a1;
    if (a2 - a1 >= 1)
    {
      v6 = 0;
      while (1)
      {
        if (*(a3 + 52) == 2)
        {
          v10 = CircularBuffer.Transaction.begin()();
          v11 = *(a3 + 48);
          v12 = v11 | (*(a3 + 52) << 32);
        }

        else
        {
          v10 = 0;
          LODWORD(v11) = *(a3 + 48);
          v12 = v11 | (*(a3 + 52) << 32);
        }

        if (BYTE4(v12) == 2)
        {
          break;
        }

        v13 = *(a3 + 32);
        if (v13)
        {
          v14 = *(a3 + 40) - v13;
          v15 = v14 - v11;
          if (v14 < v11)
          {
            goto LABEL_36;
          }

          if (v14 - v11 < 0)
          {
            __break(1u);
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
LABEL_37:
            __break(1u);
            break;
          }

          if (v4 >= v15)
          {
            v16 = v14 - v11;
          }

          else
          {
            v16 = v4;
          }

          memmove((v13 + v11), v3, v16);
          if (HIDWORD(v16))
          {
            goto LABEL_32;
          }

          v17 = &v3[v16];
          v18 = v11 + v16;
          if (__CFADD__(v11, v16))
          {
            goto LABEL_33;
          }
        }

        else
        {
          if (v11)
          {
            goto LABEL_37;
          }

          v15 = 0;
          v16 = 0;
          v17 = v3;
          v18 = 0;
        }

        *(a3 + 48) = v18;
        v19 = v10 + v16;
        if (__OFADD__(v10, v16))
        {
          goto LABEL_34;
        }

        v20 = __OFADD__(v6, v19);
        v6 += v19;
        if (v20)
        {
          goto LABEL_35;
        }

        if (v15 < v4)
        {
          if ((*(a3 + 4) & 1) == 0 && ((*(a3 + 48) | (*(a3 + 52) << 32)) & 0xFF00000000) != 0x200000000)
          {
            *(a3 + 52);
            *(*(a3 + 32) + 4) = *(a3 + 48);
          }

          if (readingDebug)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
            v21 = swift_allocObject();
            *(v21 + 16) = xmmword_26C328DC0;
            *(v21 + 56) = MEMORY[0x277D837D0];
            *(v21 + 32) = 0x54494D4D4F432077;
            *(v21 + 40) = 0xEA00000000002021;
            print(_:separator:terminator:)();
          }

          v7 = *(a3 + 8);
          v8 = *(a3 + 16);
          v22[0] = *a3;
          v22[1] = v8;
          v9 = *(a3 + 48);
          v22[2] = *(a3 + 32);
          v22[3] = v9;
          v22[4] = v7;
          CircularBuffer.commit(_:)(v22);
          *(a3 + 24) = 0;
          *(a3 + 32) = 0;
          *(a3 + 40) = 0;
          *(a3 + 52) = 2;
          *(a3 + 48) = 0;
        }

        v4 = &v3[v4] - v17;
        v3 = v17;
        if (v4 <= 0)
        {
          return;
        }
      }

      __break(1u);
    }
  }
}

uint64_t _s21SwiftUITracingSupport16BufferAttachmentV9serialize5value2toyACyxG_ySWXEtFZSo23T_DynamicPropertyChangea_Tt1g5Tf4xn_n(uint64_t result, unint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 >> 61)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!a3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = 4 * a2;
  if (4 * a2 == 0x8000000000000000 && a3 == -1)
  {
    goto LABEL_12;
  }

  if (!(v4 % a3))
  {
    return a4(result, result + v4);
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport16BufferAttachmentV9serialize5value2toyACyxG_ySWXEtFZSo15T_TreeValueNodea_Tt1g5Tf4xn_n(uint64_t result, unint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 >> 58)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!a3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = 32 * a2;
  if (32 * a2 == 0x8000000000000000 && a3 == -1)
  {
    goto LABEL_12;
  }

  if (!(v4 % a3))
  {
    return a4(result, result + v4);
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport16BufferAttachmentV9serialize5value2toyACyxG_ySWXEtFZSo13T_RawTreeNodea_Tt1g5Tf4xn_n(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = 24 * a2;
  if ((a2 * 24) >> 64 != (24 * a2) >> 63)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!a3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v4 == 0x8000000000000000 && a3 == -1)
  {
    goto LABEL_12;
  }

  if (!(v4 % a3))
  {
    return a4(result, result + v4);
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

void specialized handleCEFCustomEvent(_:_:_:_:_:)(uint64_t a1, const char *a2, unsigned int *a3)
{
  v6 = String.count.getter();
  if (strncmp(a2, "CEF_", v6))
  {
    return;
  }

  v7 = String.count.getter();
  CustomEventCategory.init(rawValue:)(a2[v7]);
  if (v49[0] == 8)
  {
    return;
  }

  v8 = String.count.getter();
  v9 = a2[v8 + 1];
  if (v49[0] > 3u)
  {
    if (v49[0] > 5u)
    {
      v27 = a2[v8 + 1];
      if (v49[0] == 6)
      {

        specialized handleInstantiateEvent(_:_:_:_:_:)(v27, a1, a3);
      }

      else
      {

        specialized handleDynamicPropertyEvent(_:_:_:_:_:)(v27, a1, a3);
      }
    }

    else if (v49[0] == 4)
    {
      if (a3 && v9 == 78)
      {
        v26 = *(a3 + 1);
        *v49 = *a3;
        *&v49[2] = v26;
        specialized Trace_Handle.write<A>(_:omit:)(*v49, SHIWORD(v26), 0);
      }
    }

    else
    {
      if (!a3)
      {
        return;
      }

      if (a2[v8 + 1] > 3u)
      {
        switch(v9)
        {
          case 4:
            v41 = *a3;
            v42 = *(a3 + 1);
            if (*(a3 + 4))
            {
              v41 = 0;
            }

            *v49 = v41;
            *&v49[4] = v42;
            specialized Trace_Handle.write<A>(_:omit:)(*v49, SHIDWORD(v42), 0);
            break;
          case 5:
            v44 = *(a3 + 1);
            v49[0] = *a3;
            *&v49[1] = v44;
            specialized Trace_Handle.write<A>(_:omit:)(*v49, SHIBYTE(v44), 0);
            return;
          case 6:
            v30 = *(a1 + 48);
            if (!v30)
            {
LABEL_91:
              __break(1u);
              goto LABEL_92;
            }

            v31 = *(a3 + 1);
            if (*(a3 + 4))
            {
              v32 = 0;
            }

            else
            {
              v32 = *a3;
            }

            v45 = *(a3 + 2);
            v47 = *(a3 + 1);
            os_unfair_lock_lock_with_options();
            v33 = Trace.Control.writtenOnce(type:lazy:flush:)(v31, 1, 1u);
            os_unfair_lock_unlock(v30);
            *v49 = v32;
            *&v49[4] = v33;
            *&v49[8] = v47;
            v50 = v45;
            specialized Trace_Handle.write<A>(_:omit:)(v49, 0);
            break;
        }
      }

      else
      {
        switch(v9)
        {
          case 1:
            v37 = *(a1 + 48);
            if (!v37)
            {
LABEL_92:
              __break(1u);
              return;
            }

            v38 = *(a3 + 1);
            if (*(a3 + 4))
            {
              v39 = 0;
            }

            else
            {
              v39 = *a3;
            }

            v46 = *(a3 + 2);
            v48 = *(a3 + 1);
            os_unfair_lock_lock_with_options();
            v40 = Trace.Control.writtenOnce(type:lazy:flush:)(v38, 1, 1u);
            os_unfair_lock_unlock(v37);
            *v49 = v39;
            *&v49[4] = v40;
            *&v49[8] = v48;
            v50 = v46;
            specialized Trace_Handle.write<A>(_:omit:)(v49, 0);
            break;
          case 2:
            if (*(a3 + 4))
            {
              v43 = 0;
            }

            else
            {
              v43 = *a3;
            }

            specialized Trace_Handle.write<A>(_:omit:)(v43, 0);
            break;
          case 3:
            if (*(a3 + 4))
            {
              v28 = 0;
            }

            else
            {
              v28 = *a3;
            }

            specialized Trace_Handle.write<A>(_:omit:)(v28, 0);
            break;
        }
      }
    }
  }

  else
  {
    if (v49[0] <= 1u)
    {
      if (!v49[0])
      {
        return;
      }

      if (!a3)
      {
        return;
      }

      if (v9 != 70)
      {
        return;
      }

      v10 = *(a3 + 1);
      if (!v10)
      {
        return;
      }

      v11 = *(a1 + 48);
      if (v11)
      {
        v12 = *a3;
        v13 = a3[4];
        v14 = *(a3 + 1);

        os_unfair_lock_lock_with_options();
        os_unfair_lock_opaque = v11[22]._os_unfair_lock_opaque;
        v16 = os_unfair_lock_opaque + 1;
        if (os_unfair_lock_opaque != -1)
        {
          v11[22]._os_unfair_lock_opaque = v16;
          v17 = HIDWORD(*v10);
          v18 = dispatch thunk of static AnyKeyPath._rootAndValueType.getter();
          v19 = Trace.Control.writtenOnce(type:lazy:flush:)(v18, 1, 1u);
          dispatch thunk of static AnyKeyPath._rootAndValueType.getter();
          v21 = Trace.Control.writtenOnce(type:lazy:flush:)(v20, 1, 1u);
          *v49 = v10;
          type metadata accessor for AnyKeyPath();

          v22 = String.init<A>(reflecting:)();
          v24 = specialized Trace_Handle.writtenOnce(string:)(v22, v23);

          specialized Trace_Handle.write<A>(_:omit:)(v16 | (v19 << 32), v21 | (v24 << 32));
          v25 = v11[22]._os_unfair_lock_opaque;
          os_unfair_lock_unlock(v11);
          specialized Trace_Handle.write<A>(_:omit:)(v12 | (v25 << 32), v13, 0);

          return;
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_91;
    }

    if (v49[0] == 2)
    {
      if (a3)
      {
        if (a2[v8 + 1] > 0x44u)
        {
          if (v9 == 69)
          {
            specialized Trace_Handle.write<A>(_:omit:)(*a3, 0);
          }

          else if (v9 == 81)
          {
            specialized Trace_Handle.write<A>(_:omit:)(*a3, 0);
          }
        }

        else if (v9 == 65)
        {
          specialized Trace_Handle.write<A>(_:omit:)(*a3, 0);
        }

        else if (v9 == 66)
        {
          specialized Trace_Handle.write<A>(_:omit:)(*a3, 0);
        }
      }
    }

    else if (a3)
    {
      if (a2[v8 + 1] > 0x46u)
      {
        if (v9 == 71)
        {
          if ((a3[2] & 1) == 0)
          {
            v36 = a3[1];
            if (v36 != *MEMORY[0x277CEF7C8])
            {
              specialized Trace_Handle.write<A>(_:omit:)(*a3 | (v36 << 32), 0);
            }
          }
        }

        else if (v9 == 83)
        {
          if (*(a3 + 8))
          {
            v34 = 0;
          }

          else
          {
            v34 = a3[1] << 32;
          }

          specialized Trace_Handle.write<A>(_:omit:)(v34 | *a3, 0);
        }
      }

      else if (v9 == 69)
      {
        if (*(a3 + 8))
        {
          v35 = 0;
        }

        else
        {
          v35 = a3[1] << 32;
        }

        specialized Trace_Handle.write<A>(_:omit:)(v35 | *a3, 0);
      }

      else if (v9 == 70)
      {
        if (*(a3 + 8))
        {
          v29 = 0;
        }

        else
        {
          v29 = a3[1] << 32;
        }

        specialized Trace_Handle.write<A>(_:omit:)(v29 | *a3, 0);
      }
    }
  }
}

void specialized custom_event(raw:_:_:_:_:)(uint64_t a1, const char *a2, unsigned int *a3)
{
  specialized handleCEFCustomEvent(_:_:_:_:_:)(a1, a2, a3);
  if ((v6 & 1) == 0)
  {
    v7 = getReuseEventCategory(_:)(a2);
    v8 = v7;
    if (v7 != 12)
    {
      switch(BYTE1(v7))
      {
        case 1:
          specialized Trace_Handle.write<A>(_:omit:)(v7);
          return;
        case 2:
          backtrace()();
          v26 = specialized Trace_Handle.write<A>(attachment:)(v22, v23, v24, v25);
          specialized Trace_Handle.write<A>(_:omit:)(v26 | (v8 << 32));
          return;
        case 3:
          backtrace()();
          v31 = specialized Trace_Handle.write<A>(attachment:)(v27, v28, v29, v30);
          specialized Trace_Handle.write<A>(_:omit:)(v31 | (v8 << 32));
          return;
        case 4:
          if (a3)
          {
            specialized Trace_Handle.write<A>(_:omit:)(**a3, v7);
          }

          return;
        case 5:
          if (a3)
          {
            specialized Trace_Handle.write<A>(_:omit:)(*a3, **(a3 + 1), v7);
          }

          return;
        case 6:
          if (a3)
          {
            specialized Trace_Handle.write<A>(_:omit:)(*a3, v7);
          }

          return;
        case 7:
          if (!a3)
          {
            return;
          }

          v32 = *(a1 + 48);
          if (!v32)
          {
            goto LABEL_37;
          }

          v33 = v7;
          v34 = *a3;
          MetatypeMetadata = swift_getMetatypeMetadata();
          v36 = *(a3 + 1);
          os_unfair_lock_lock_with_options();
          v37 = Trace.Control.writtenOnce(type:lazy:flush:)(MetatypeMetadata, 1, 1u);
          os_unfair_lock_unlock(v32);
          v38 = *(a1 + 48);
          if (!v38)
          {
            goto LABEL_42;
          }

          v39 = swift_getMetatypeMetadata();
          os_unfair_lock_lock_with_options();
          v40 = Trace.Control.writtenOnce(type:lazy:flush:)(v39, 1, 1u);
          os_unfair_lock_unlock(v38);
          specialized Trace_Handle.write<A>(_:omit:)(v37 | (v40 << 32), v33);
          break;
        case 8:
          if (!a3)
          {
            return;
          }

          v49 = *(a1 + 48);
          if (!v49)
          {
            goto LABEL_40;
          }

          v50 = *a3;
          v51 = swift_getMetatypeMetadata();
          os_unfair_lock_lock_with_options();
          v52 = Trace.Control.writtenOnce(type:lazy:flush:)(v51, 1, 1u);
          os_unfair_lock_unlock(v49);
          specialized Trace_Handle.write<A>(_:omit:)(v52 | (v8 << 32));
          return;
        case 9:
          if (!a3)
          {
            return;
          }

          v13 = *(a1 + 48);
          if (!v13)
          {
            goto LABEL_36;
          }

          v14 = v7;
          v15 = *a3;
          v16 = swift_getMetatypeMetadata();
          v17 = *(a3 + 1);
          os_unfair_lock_lock_with_options();
          v18 = Trace.Control.writtenOnce(type:lazy:flush:)(v16, 1, 1u);
          os_unfair_lock_unlock(v13);
          v19 = *(a1 + 48);
          if (!v19)
          {
            goto LABEL_41;
          }

          v20 = swift_getMetatypeMetadata();
          os_unfair_lock_lock_with_options();
          v21 = Trace.Control.writtenOnce(type:lazy:flush:)(v20, 1, 1u);
          os_unfair_lock_unlock(v19);
          specialized Trace_Handle.write<A>(_:omit:)(v18 | (v21 << 32), v14);
          break;
        case 0xA:
          if (!a3)
          {
            return;
          }

          v45 = *(a1 + 48);
          if (!v45)
          {
            goto LABEL_39;
          }

          v46 = *a3;
          v47 = swift_getMetatypeMetadata();
          os_unfair_lock_lock_with_options();
          v48 = Trace.Control.writtenOnce(type:lazy:flush:)(v47, 1, 1u);
          os_unfair_lock_unlock(v45);
          specialized Trace_Handle.write<A>(_:omit:)(v48 | (v8 << 32));
          return;
        case 0xB:
          specialized Trace_Handle.write<A>(_:omit:)(v7);
          return;
        case 0xC:
          if (!a3)
          {
            return;
          }

          v9 = *(a1 + 48);
          if (!v9)
          {
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
            JUMPOUT(0x26C31C4D4);
          }

          v10 = *a3;
          v11 = swift_getMetatypeMetadata();
          os_unfair_lock_lock_with_options();
          v12 = Trace.Control.writtenOnce(type:lazy:flush:)(v11, 1, 1u);
          os_unfair_lock_unlock(v9);
          specialized Trace_Handle.write<A>(_:omit:)(v12 | (v8 << 32));
          break;
        case 0xD:
          if (!a3)
          {
            return;
          }

          v41 = *(a1 + 48);
          if (!v41)
          {
            goto LABEL_38;
          }

          v42 = *a3;
          v43 = swift_getMetatypeMetadata();
          os_unfair_lock_lock_with_options();
          v44 = Trace.Control.writtenOnce(type:lazy:flush:)(v43, 1, 1u);
          os_unfair_lock_unlock(v41);
          specialized Trace_Handle.write<A>(_:omit:)(v44 | (v8 << 32));
          return;
        default:
          return;
      }
    }
  }
}

uint64_t specialized SnapshotConsumer.consume(_:end:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = v4 + *(a1 + 24);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v3 + 24);
  if (*(v6 + 32) == 1)
  {
    v7 = *(v6 + 24);
    result = specialized static UnsafeMutableRawBufferPointer.== infix(_:_:)(0, 0, *(v6 + 8), *(v6 + 16));
    if (result)
    {
      v9 = 1;
LABEL_9:
      *(v6 + 8) = v4;
      *(v6 + 16) = v5;
      *(v6 + 24) = v9;
      *(v6 + 32) = 1;
      *(a1 + 24) = 0;
      *(a1 + 28) = 0;
      return result;
    }

    if (v7)
    {
      v9 = 0;
      goto LABEL_9;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *specialized BufferAttachment.subscript.setter(void *__src, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = v3[3];
  if ((a2 * v4) >> 64 != (a2 * v4) >> 63)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = *(*(*(a3 + 16) - 8) + 64);
  if ((v5 & 0x8000000000000000) == 0)
  {
    return memcpy((*v3 + a2 * v4), __src, v5);
  }

LABEL_7:
  __break(1u);
  return __src;
}

unint64_t lazy protocol witness table accessor for type MethodDispatch and conformance MethodDispatch()
{
  result = lazy protocol witness table cache variable for type MethodDispatch and conformance MethodDispatch;
  if (!lazy protocol witness table cache variable for type MethodDispatch and conformance MethodDispatch)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MethodDispatch and conformance MethodDispatch);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Tracepoint_Flags and conformance Tracepoint_Flags()
{
  result = lazy protocol witness table cache variable for type Tracepoint_Flags and conformance Tracepoint_Flags;
  if (!lazy protocol witness table cache variable for type Tracepoint_Flags and conformance Tracepoint_Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Tracepoint_Flags and conformance Tracepoint_Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Tracepoint_Flags and conformance Tracepoint_Flags;
  if (!lazy protocol witness table cache variable for type Tracepoint_Flags and conformance Tracepoint_Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Tracepoint_Flags and conformance Tracepoint_Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Tracepoint_Flags and conformance Tracepoint_Flags;
  if (!lazy protocol witness table cache variable for type Tracepoint_Flags and conformance Tracepoint_Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Tracepoint_Flags and conformance Tracepoint_Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Tracepoint_Flags and conformance Tracepoint_Flags;
  if (!lazy protocol witness table cache variable for type Tracepoint_Flags and conformance Tracepoint_Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Tracepoint_Flags and conformance Tracepoint_Flags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type T_Header.Flags and conformance T_Header.Flags()
{
  result = lazy protocol witness table cache variable for type T_Header.Flags and conformance T_Header.Flags;
  if (!lazy protocol witness table cache variable for type T_Header.Flags and conformance T_Header.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type T_Header.Flags and conformance T_Header.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type T_Header.Flags and conformance T_Header.Flags;
  if (!lazy protocol witness table cache variable for type T_Header.Flags and conformance T_Header.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type T_Header.Flags and conformance T_Header.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type T_Header.Flags and conformance T_Header.Flags;
  if (!lazy protocol witness table cache variable for type T_Header.Flags and conformance T_Header.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type T_Header.Flags and conformance T_Header.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type T_Header.Flags and conformance T_Header.Flags;
  if (!lazy protocol witness table cache variable for type T_Header.Flags and conformance T_Header.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type T_Header.Flags and conformance T_Header.Flags);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AttachmentID(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type AttachmentID and conformance AttachmentID();
  result = lazy protocol witness table accessor for type AttachmentID and conformance AttachmentID();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AttachmentRef and conformance AttachmentRef()
{
  result = lazy protocol witness table cache variable for type AttachmentRef and conformance AttachmentRef;
  if (!lazy protocol witness table cache variable for type AttachmentRef and conformance AttachmentRef)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentRef and conformance AttachmentRef);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type T_TracepointID.Flags and conformance T_TracepointID.Flags()
{
  result = lazy protocol witness table cache variable for type T_TracepointID.Flags and conformance T_TracepointID.Flags;
  if (!lazy protocol witness table cache variable for type T_TracepointID.Flags and conformance T_TracepointID.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type T_TracepointID.Flags and conformance T_TracepointID.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type T_TracepointID.Flags and conformance T_TracepointID.Flags;
  if (!lazy protocol witness table cache variable for type T_TracepointID.Flags and conformance T_TracepointID.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type T_TracepointID.Flags and conformance T_TracepointID.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type T_TracepointID.Flags and conformance T_TracepointID.Flags;
  if (!lazy protocol witness table cache variable for type T_TracepointID.Flags and conformance T_TracepointID.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type T_TracepointID.Flags and conformance T_TracepointID.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type T_TracepointID.Flags and conformance T_TracepointID.Flags;
  if (!lazy protocol witness table cache variable for type T_TracepointID.Flags and conformance T_TracepointID.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type T_TracepointID.Flags and conformance T_TracepointID.Flags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewGraphRootValues and conformance ViewGraphRootValues()
{
  result = lazy protocol witness table cache variable for type ViewGraphRootValues and conformance ViewGraphRootValues;
  if (!lazy protocol witness table cache variable for type ViewGraphRootValues and conformance ViewGraphRootValues)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewGraphRootValues and conformance ViewGraphRootValues);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ViewGraphRootValues and conformance ViewGraphRootValues;
  if (!lazy protocol witness table cache variable for type ViewGraphRootValues and conformance ViewGraphRootValues)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewGraphRootValues and conformance ViewGraphRootValues);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ViewGraphRootValues and conformance ViewGraphRootValues;
  if (!lazy protocol witness table cache variable for type ViewGraphRootValues and conformance ViewGraphRootValues)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewGraphRootValues and conformance ViewGraphRootValues);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ViewGraphRootValues and conformance ViewGraphRootValues;
  if (!lazy protocol witness table cache variable for type ViewGraphRootValues and conformance ViewGraphRootValues)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewGraphRootValues and conformance ViewGraphRootValues);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomEventCategory and conformance CustomEventCategory()
{
  result = lazy protocol witness table cache variable for type CustomEventCategory and conformance CustomEventCategory;
  if (!lazy protocol witness table cache variable for type CustomEventCategory and conformance CustomEventCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomEventCategory and conformance CustomEventCategory);
  }

  return result;
}

uint64_t sub_26C31CFB8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 32);
  v3 = *(v2 + 56);
  if (v3)
  {
    v4 = *(v2 + 16);
    *a2 = *v2;
    *(a2 + 16) = v4;
    *(a2 + 32) = *(v2 + 32);
    *(a2 + 48) = *(v2 + 48);
    *(a2 + 56) = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_OWORD *sub_26C31CFE4(_OWORD *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (*(v2 + 56))
  {
    v3 = result[1];
    *v2 = *result;
    *(v2 + 16) = v3;
    v4 = result[3];
    *(v2 + 32) = result[2];
    *(v2 + 48) = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_26C31D01C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void *sub_26C31D0BC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 48))(v8, *(a1 + a2 - 16));
  v5 = v9;
  v6 = *(v9 + 56);
  if (v6)
  {
    v7 = *(v9 + 16);
    *a3 = *v9;
    *(a3 + 16) = v7;
    *(a3 + 32) = *(v5 + 32);
    *(a3 + 48) = *(v5 + 48);
    *(a3 + 56) = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26C31D144@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = Trace_Handle.enabled.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result & 1;
  return result;
}

void *sub_26C31D1D4(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = *a3;
  v8 = type metadata accessor for BufferAttachment();
  return specialized BufferAttachment.subscript.setter(a1, v7, v8);
}

_DWORD *sub_26C31D260(_DWORD *result, _DWORD *a2)
{
  if (*result >= 0x10000u)
  {
    __break(1u);
  }

  else
  {
    *a2 |= *result << 24;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MethodDispatch(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MethodDispatch(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of static ABIRequirement.size(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 28);
  v5 = *(a1 + 36);
  v6 = *(a3 + 24);
  v7 = *(a1 + 40);
  v10[0] = *a1;
  v8 = *(a1 + 16);
  v10[1] = *(a1 + 8);
  v10[2] = v8;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v7;
  v15 = *(a1 + 48);
  return v6(v10);
}

uint64_t getEnumTagSinglePayload for Trace_Handle_Storage.Indirected(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 68))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Trace_Handle_Storage.Indirected(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 68) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 68) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

void *__swift_memcpy13_8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Trace_Handle_Storage.WritableType(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 13))
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

uint64_t storeEnumTagSinglePayload for Trace_Handle_Storage.WritableType(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 13) = 1;
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

    *(result + 13) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s21SwiftUITracingSupport17ReferenceAccessorVMi_0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Trace(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Trace(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Trace.SwiftUI(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 128);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Trace.SwiftUI(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 200) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CircularBuffer(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for CircularBuffer(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CircularBuffer.Transaction(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CircularBuffer.Transaction(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CircularBuffer.Buffer(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 29))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 28);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CircularBuffer.Buffer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 29) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 29) = 0;
    }

    if (a2)
    {
      *(result + 28) = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for AttachmentID.Typed()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t type metadata instantiation function for AttachmentRef.Typed()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for BufferAttachment()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for BufferAttachment(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 32))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for BufferAttachment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for BufferAttachment.Iterator()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for T_TracepointID.Size(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for T_TracepointID.Size(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21SwiftUITracingSupport16BufferCompressorVSg(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t getEnumTagSinglePayload for ATRCWriter.Storage(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t storeEnumTagSinglePayload for ATRCWriter.Storage(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy59_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 43) = *(a2 + 43);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CircularBuffer.Storage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 59))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CircularBuffer.Storage(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 58) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 59) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 59) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Trace.SwiftUI.Flags and conformance Trace.SwiftUI.Flags()
{
  result = lazy protocol witness table cache variable for type Trace.SwiftUI.Flags and conformance Trace.SwiftUI.Flags;
  if (!lazy protocol witness table cache variable for type Trace.SwiftUI.Flags and conformance Trace.SwiftUI.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Trace.SwiftUI.Flags and conformance Trace.SwiftUI.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Trace.SwiftUI.Flags and conformance Trace.SwiftUI.Flags;
  if (!lazy protocol witness table cache variable for type Trace.SwiftUI.Flags and conformance Trace.SwiftUI.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Trace.SwiftUI.Flags and conformance Trace.SwiftUI.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Trace.SwiftUI.Flags and conformance Trace.SwiftUI.Flags;
  if (!lazy protocol witness table cache variable for type Trace.SwiftUI.Flags and conformance Trace.SwiftUI.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Trace.SwiftUI.Flags and conformance Trace.SwiftUI.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Trace.SwiftUI.Flags and conformance Trace.SwiftUI.Flags;
  if (!lazy protocol witness table cache variable for type Trace.SwiftUI.Flags and conformance Trace.SwiftUI.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Trace.SwiftUI.Flags and conformance Trace.SwiftUI.Flags);
  }

  return result;
}

uint64_t sub_26C31E37C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ()(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t partial apply for closure #1 in closure #1 in Trace.SwiftUI.finalize()()
{
  v1 = **(v0 + 16);
  if ((*(v1 + 184) & 1) == 0)
  {
    v2 = *(v1 + 176);
    v3 = *(v1 + 160);
    return AGGraphRemoveTrace();
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in Trace_Handle.write<A>(attachment:)(uint64_t a1, uint64_t a2)
{
  return partial apply for specialized closure #1 in Trace_Handle.write<A>(attachment:)(a1, a2, specialized closure #1 in closure #1 in Trace_Handle.write<A>(attachment:));
}

{
  return partial apply for specialized closure #1 in Trace_Handle.write<A>(attachment:)(a1, a2, specialized closure #1 in closure #1 in Trace_Handle.write<A>(attachment:));
}

{
  return partial apply for specialized closure #1 in Trace_Handle.write<A>(attachment:)(a1, a2, specialized closure #1 in closure #1 in Trace_Handle.write<A>(attachment:));
}

{
  return partial apply for specialized closure #1 in Trace_Handle.write<A>(attachment:)(a1, a2, specialized closure #1 in closure #1 in Trace_Handle.write<A>(attachment:));
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for specialized thunk for @callee_guaranteed (@in_guaranteed A, @in_guaranteed B, @guaranteed IterativeTreeTraversal<A, B>) -> ()(uint64_t *a1, __int128 *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(a2 + 16);
  v9 = *a1;
  v7 = *a2;
  v8 = v5;
  return v3(&v9, &v7);
}

uint64_t partial apply for closure #1 in Trace.Control.writeFields(of:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return closure #1 in Trace.Control.writeFields(of:)(a1, a2, a3);
}

uint64_t protocol witness for static Attachment.serialize(value:to:) in conformance KeypathID(int *a1, uint64_t (*a2)(int *, uint64_t *))
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return protocol witness for static Attachment.serialize(value:to:) in conformance T_DynamicPropertyChange(a1, a2);
}

void *specialized Dictionary.subscript.getter(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaDictionary.lookup(_:)();

    if (v4)
    {
      type metadata accessor for AGSubgraphRef(0);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

size_t specialized BufferAttachment.append_slow()()
{
  result = *v0;
  v2 = v0[2];
  if (!*v0)
  {
    goto LABEL_7;
  }

  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = 2 * v2;
  v0[2] = v3;
  if (v3 < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v3 * 20) >> 64 != (20 * v3) >> 63)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = realloc(result, 20 * v3);
  if (result)
  {
LABEL_10:
    *v0 = result;
    return result;
  }

  __break(1u);
LABEL_7:
  if (v2 < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = 20 * v2;
  if ((v2 * 20) >> 64 != (20 * v2) >> 63)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = malloc(result);
  if (result)
  {
    goto LABEL_10;
  }

LABEL_16:
  __break(1u);
  return result;
}

{
  result = *v0;
  v2 = v0[2];
  if (!*v0)
  {
    goto LABEL_7;
  }

  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = 2 * v2;
  v0[2] = v3;
  if (v3 < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v3 * 12) >> 64 != (12 * v3) >> 63)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = realloc(result, 12 * v3);
  if (result)
  {
LABEL_10:
    *v0 = result;
    return result;
  }

  __break(1u);
LABEL_7:
  if (v2 < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = 12 * v2;
  if ((v2 * 12) >> 64 != (12 * v2) >> 63)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = malloc(result);
  if (result)
  {
    goto LABEL_10;
  }

LABEL_16:
  __break(1u);
  return result;
}

{
  result = *v0;
  v2 = v0[2];
  if (!*v0)
  {
    goto LABEL_7;
  }

  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = 2 * v2;
  v0[2] = v3;
  if (v3 < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v3 * 24) >> 64 != (24 * v3) >> 63)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = realloc(result, 24 * v3);
  if (result)
  {
LABEL_10:
    *v0 = result;
    return result;
  }

  __break(1u);
LABEL_7:
  if (v2 < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = 24 * v2;
  if ((v2 * 24) >> 64 != (24 * v2) >> 63)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = malloc(result);
  if (result)
  {
    goto LABEL_10;
  }

LABEL_16:
  __break(1u);
  return result;
}

void *specialized BufferAttachment.append_slow()()
{
  result = *v0;
  v2 = *(v0 + 16);
  if (!*v0)
  {
    goto LABEL_7;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v0 + 16) = 2 * v2;
  if (((2 * v2) & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((2 * v2) >> 61)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = realloc(result, 8 * v2);
  if (result)
  {
LABEL_10:
    *v0 = result;
    return result;
  }

  __break(1u);
LABEL_7:
  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v2 >> 61)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = malloc(4 * v2);
  if (result)
  {
    goto LABEL_10;
  }

LABEL_16:
  __break(1u);
  return result;
}

{
  result = *v0;
  v2 = *(v0 + 16);
  if (!*v0)
  {
    goto LABEL_7;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v0 + 16) = 2 * v2;
  if (((2 * v2) & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((2 * v2) >> 58)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = realloc(result, v2 << 6);
  if (result)
  {
LABEL_10:
    *v0 = result;
    return result;
  }

  __break(1u);
LABEL_7:
  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v2 >> 58)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = malloc(32 * v2);
  if (result)
  {
    goto LABEL_10;
  }

LABEL_16:
  __break(1u);
  return result;
}

void T_TransactionBegin.model(within:)(unsigned __int8 *a1, uint64_t a2)
{
  v65 = 0;
  v64 = 0u;
  v63 = 0u;
  v62 = a2;
  v4 = a1 + 56;
  v5 = *(a1 + 72);
  v70[0] = *(a1 + 56);
  v70[1] = v5;
  v71[0] = *(a1 + 88);
  v6 = *(a1 + 97);
  v7 = a1 + 88;
  v8 = a1 + 100;
  v9 = a1 + 104;
  v10 = *(a1 + 29);
  v11 = v4;
  v12 = v9;
  *(v71 + 9) = v6;
  while (1)
  {
    v13 = *v12;
    if (v10 < *v8)
    {
      v14 = (*v7 + 8 * v10);
      if ((v14[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v13)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v10, 0, v70);
    }

    v7 = (v13 + 32);
    v8 = (v13 + 44);
    v12 = (v13 + 48);
    v11 = v13;
  }

  if (!*v11)
  {
    goto LABEL_59;
  }

  v61 = specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(&v62, *(*(*v11 + 24 * *v14) + 32), -1, 0);
  outlined destroy of Event.Transaction(&v62);
  v15 = v4[1];
  v68[0] = *v4;
  v68[1] = v15;
  v69[0] = v4[2];
  v16 = a1 + 84;
  *(v69 + 9) = *(v4 + 41);
  v17 = v4;
  v18 = (a1 + 72);
  v19 = a1 + 84;
  v20 = v9;
  while (1)
  {
    v21 = *v20;
    if (*v19 > 1u)
    {
      v22 = *v18;
      if ((*(v22 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v21)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v68);
    }

    v18 = (v21 + 16);
    v19 = (v21 + 28);
    v20 = (v21 + 48);
    v17 = v21;
  }

  v23 = *v17;
  if (!v23)
  {
    goto LABEL_60;
  }

  v60 = v4;
  v24 = *(*(v23 + 24 * *(v22 + 8)) + 112);
  if (!v24)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v25 = *(v24 + 40);
  v26 = specialized Strong.subscript.read();
  v28 = *v27;
  if (!*(*v27 + 16) || (v29 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v30 & 1) == 0))
  {
    (v26)(v66, 0);
    static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v58 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    return;
  }

  v31 = *(*(v28 + 56) + 8 * v29);

  (v26)(v66, 0);
  v32 = *(v31 + 16);
  if (v32)
  {
    v33 = 0;
    while (v33 < *(v31 + 16))
    {
      if (a1[48])
      {
        goto LABEL_53;
      }

      v34 = *(a1 + 22);
      v35 = *a1;
      if (v35 >= *(v34 + 116))
      {
        goto LABEL_48;
      }

      v36 = *(v34 + 104);
      if (!v36)
      {
        goto LABEL_54;
      }

      v37 = *(v31 + 32 + 4 * v33);
      v38 = *(*(v36 + 8 * v35) + 8);
      v39 = *(v38 + 44);
      if (v37 >= v39)
      {
        goto LABEL_49;
      }

      v40 = *(v38 + 32);
      if (!v40)
      {
        goto LABEL_55;
      }

      if (v61 >= v39)
      {
        goto LABEL_50;
      }

      v41 = (v40 + (v37 << 7));
      v42 = (v40 + (v61 << 7));
      v43 = *v42;
      v44 = v41[31];
      if (v44 == v41[30])
      {
        specialized UnsafeArray.growToCapacity(_:)(2 * v44);
      }

      v45 = *(v41 + 14);
      if (!v45)
      {
        goto LABEL_56;
      }

      v46 = v41[31];
      v47 = v45 + 8 * v46;
      *v47 = -23552;
      *(v47 + 4) = v43;
      if (v46 == -1)
      {
        goto LABEL_51;
      }

      v41[31] = v46 + 1;
      v48 = *v41;
      v49 = v42[31];
      if (v49 == v42[30])
      {
        specialized UnsafeArray.growToCapacity(_:)(2 * v49);
      }

      v50 = *(v42 + 14);
      if (!v50)
      {
        goto LABEL_57;
      }

      v51 = v42[31];
      v52 = v50 + 8 * v51;
      *v52 = 25600;
      *(v52 + 4) = v48;
      if (v51 == -1)
      {
        goto LABEL_52;
      }

      ++v33;
      v42[31] = v51 + 1;
      if (v32 == v33)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
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

LABEL_36:

  v53 = a1 + 72;
  v54 = v60;
  v55 = v60[1];
  v66[0] = *v60;
  v66[1] = v55;
  v67[0] = v60[2];
  *(v67 + 9) = *(v60 + 41);
  v56 = v9;
  while (1)
  {
    v57 = *v56;
    if (*v16 > 1u && (*(*v53 + 12) & 1) == 0)
    {
      break;
    }

    if (!v57)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v66);
    }

    v53 = (v57 + 16);
    v16 = (v57 + 28);
    v56 = (v57 + 48);
    v54 = v57;
  }

  if (!*v54)
  {
    goto LABEL_62;
  }

  v59 = *(*(*v54 + 24 * *(*v53 + 8)) + 112);
  if (!v59)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  *(v59 + 104) = 1;
}

void T_TransactionEnd.model(within:)(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = (a1 + 56);
  v5 = *(a1 + 72);
  v42[0] = *(a1 + 56);
  v42[1] = v5;
  v43[0] = *(a1 + 88);
  v6 = (a1 + 72);
  v7 = (a1 + 84);
  v8 = (a1 + 104);
  *(v43 + 9) = *(a1 + 97);
  v9 = (a1 + 56);
  v10 = (a1 + 72);
  v11 = (a1 + 84);
  v12 = (a1 + 104);
  while (1)
  {
    v13 = *v12;
    if (*v11 > 1u)
    {
      v14 = *v10;
      if ((*(v14 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v13)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v42);
    }

    v10 = (v13 + 16);
    v11 = (v13 + 28);
    v12 = (v13 + 48);
    v9 = v13;
  }

  v15 = *v9;
  if (!v15)
  {
    goto LABEL_33;
  }

  v16 = *(*(v15 + 24 * *(v14 + 8)) + 112);
  if (!v16)
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v17 = *(v16 + 40);
  v18 = specialized Strong.subscript.read();
  if (!*(*v19 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(a2), (v20 & 1) == 0))
  {
    (v18)(v40, 0);
    static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v28 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    return;
  }

  (v18)(v40, 0);
  Interpreter.Iterator.endInflight(_:)(&type metadata for Event.Transaction);
  v21 = v4[1];
  v40[0] = *v4;
  v40[1] = v21;
  v41[0] = v4[2];
  *(v41 + 9) = *(v4 + 41);
  v22 = v4;
  v23 = v6;
  v24 = v7;
  v25 = v8;
  while (1)
  {
    v26 = *v25;
    if (*v24 > 1u)
    {
      v27 = *v23;
      if ((*(v27 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v26)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v40);
    }

    v23 = (v26 + 16);
    v24 = (v26 + 28);
    v25 = (v26 + 48);
    v22 = v26;
  }

  v29 = *v22;
  if (!v29)
  {
    goto LABEL_36;
  }

  v30 = *(*(v29 + 24 * *(v27 + 8)) + 112);
  if (!v30)
  {
    goto LABEL_34;
  }

  v31 = *(v30 + 40);
  v3 = specialized Strong.subscript.read();
  if (!*(*v32 + 16))
  {
    goto LABEL_38;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v33 & 1) == 0)
  {
    goto LABEL_38;
  }

  (v3)(v38, 0);
  v34 = v4[1];
  v38[0] = *v4;
  v38[1] = v34;
  v39[0] = v4[2];
  *(v39 + 9) = *(v4 + 41);
  while (1)
  {
    v35 = *v8;
    if (*v7 > 1u && (*(*v6 + 12) & 1) == 0)
    {
      break;
    }

    if (!v35)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v38);
    }

    v6 = (v35 + 16);
    v7 = (v35 + 28);
    v8 = (v35 + 48);
    v4 = v35;
  }

  if (!*v4)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    (v3)(v38, 0);
    *&v38[0] = 0;
    *(&v38[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(45);
    MEMORY[0x26D69CDB0](0xD00000000000001FLL, 0x800000026C33DF90);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x26D69CDB0](0x206E6920746F6E20, 0xEC0000007473696CLL);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v36 = *(*(*v4 + 24 * *(*v6 + 8)) + 112);
  if (!v36)
  {
    goto LABEL_35;
  }

  v37 = *(v36 + 40);
  specialized Dictionary.subscript.setter(0, a2);
}

unint64_t T_TransactionEnqueue.model(within:)(uint64_t a1, uint64_t a2)
{
  v31 = 0;
  v30 = 0u;
  v29 = 0u;
  v28 = a2;
  result = specialized Interpreter.Iterator.observe<A>(invalidation:)(&v28);
  if ((result & 0x100000000) != 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v5 = result;
  v6 = (a1 + 56);
  v34[0] = *(a1 + 56);
  v7 = *(a1 + 88);
  v34[1] = *(a1 + 72);
  v35[0] = v7;
  v8 = a1 + 72;
  v9 = (a1 + 84);
  v10 = (a1 + 104);
  *(v35 + 9) = *(a1 + 97);
  v11 = (a1 + 56);
  v12 = (a1 + 72);
  v13 = (a1 + 84);
  v14 = (a1 + 104);
  while (1)
  {
    v15 = *v14;
    if (*v13 > 1u)
    {
      v16 = *v12;
      if ((*(v16 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v15)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v34);
    }

    v12 = (v15 + 16);
    v13 = (v15 + 28);
    v14 = (v15 + 48);
    v11 = v15;
  }

  v17 = *v11;
  if (!v17)
  {
    goto LABEL_25;
  }

  result = v17 + 24 * *(v16 + 8);
  v18 = *(*result + 112);
  if (!v18)
  {
    goto LABEL_22;
  }

  if (*(**(v18 + 40) + 16))
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v19)
    {
      goto LABEL_24;
    }
  }

  v20 = *(a1 + 72);
  v32[0] = *v6;
  v32[1] = v20;
  v33[0] = *(a1 + 88);
  *(v33 + 9) = *(a1 + 97);
  while (1)
  {
    v21 = *v10;
    if (*v9 > 1u && (*(*v8 + 12) & 1) == 0)
    {
      break;
    }

    if (!v21)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v32);
    }

    v8 = v21 + 16;
    v9 = (v21 + 28);
    v10 = (v21 + 48);
    v6 = v21;
  }

  if (!*v6)
  {
    goto LABEL_26;
  }

  result = *v6 + 24 * *(*v8 + 8);
  v22 = *(*result + 112);
  if (v22)
  {
    v23 = *(v22 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefVGMR);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_26C328DC0;
    *(v24 + 32) = v5;
    v25 = *v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v23;
    *v23 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, a2, isUniquelyReferenced_nonNull_native);
    *v23 = v27;
    return outlined destroy of Event.Transaction(&v28);
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void T_TransactionAppend.model(within:)(uint64_t a1, char *a2)
{
  v2 = a2;
  v3 = (a1 + 56);
  v44[0] = *(a1 + 56);
  v4 = *(a1 + 88);
  v44[1] = *(a1 + 72);
  v45[0] = v4;
  v5 = a1 + 72;
  v6 = (a1 + 84);
  v7 = (a1 + 104);
  *(v45 + 9) = *(a1 + 97);
  v8 = (a1 + 56);
  v9 = (a1 + 72);
  v10 = (a1 + 84);
  v11 = (a1 + 104);
  while (1)
  {
    v12 = *v11;
    if (*v10 > 1u)
    {
      v13 = *v9;
      if ((*(v13 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v12)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v44);
    }

    v9 = (v12 + 16);
    v10 = (v12 + 28);
    v11 = (v12 + 48);
    v8 = v12;
  }

  v14 = *v8;
  if (!v14)
  {
    goto LABEL_39;
  }

  v15 = *(*(v14 + 24 * *(v13 + 8)) + 112);
  if (!v15)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (*(**(v15 + 40) + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v16)
    {
      v41 = 0;
      v40 = 0u;
      v39 = 0u;
      v38 = v2;
      v17 = specialized Interpreter.Iterator.observe<A>(invalidation:)(&v38);
      if ((v17 & 0x100000000) != 0)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v18 = v17;
      v19 = v3[1];
      v42[0] = *v3;
      v42[1] = v19;
      v43[0] = v3[2];
      *(v43 + 9) = *(v3 + 41);
      while (1)
      {
        v20 = *v7;
        if (*v6 > 1u && (*(*v5 + 12) & 1) == 0)
        {
          break;
        }

        if (!v20)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v42);
        }

        v5 = v20 + 16;
        v6 = (v20 + 28);
        v7 = (v20 + 48);
        v3 = v20;
      }

      if (!*v3)
      {
        goto LABEL_42;
      }

      v21 = *(*(*v3 + 24 * *(*v5 + 8)) + 112);
      if (!v21)
      {
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v22 = *(v21 + 40);
      v23 = *v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = *v22;
      v37 = *v22;
      *v22 = 0x8000000000000000;
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v2);
      v28 = *(v25 + 16);
      v29 = (v26 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        __break(1u);
        goto LABEL_35;
      }

      v31 = v26;
      if (*(v25 + 24) < v30)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v30, isUniquelyReferenced_nonNull_native);
        v32 = specialized __RawDictionaryStorage.find<A>(_:)(v2);
        if ((v31 & 1) != (v33 & 1))
        {
LABEL_43:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v27 = v32;
        if ((v31 & 1) == 0)
        {
          goto LABEL_37;
        }

LABEL_30:
        v2 = *(*(v37 + 56) + 8 * v27);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_31:
          v35 = *(v2 + 2);
          v34 = *(v2 + 3);
          if (v35 >= v34 >> 1)
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v2);
          }

          *(v2 + 2) = v35 + 1;
          *&v2[4 * v35 + 32] = v18;
          *(*(v37 + 56) + 8 * v27) = v2;
          *v22 = v37;

          outlined destroy of Event.Transaction(&v38);

          return;
        }

LABEL_35:
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
        goto LABEL_31;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        if (v26)
        {
          goto LABEL_30;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if (v31)
        {
          goto LABEL_30;
        }
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }
  }

  static os_log_type_t.error.getter();
  type metadata accessor for OS_os_log();
  v36 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();
}

uint64_t T_ObservableFired.model(within:)(unsigned __int8 *a1, unint64_t a2, unint64_t a3)
{
  v6 = HIDWORD(a2);
  v7 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(a3, a1);
  v8 = (a1 + 56);
  v9 = *(a1 + 72);
  v56[0] = *(a1 + 56);
  v56[1] = v9;
  v57[0] = *(a1 + 88);
  *(v57 + 9) = *(a1 + 97);
  v10 = (a1 + 72);
  v11 = a1 + 84;
  v12 = (a1 + 104);
  while (1)
  {
    v13 = *v12;
    if (*v11 > 1u)
    {
      v14 = *v10;
      if ((*(v14 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v13)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v56);
    }

    v10 = (v13 + 16);
    v11 = (v13 + 28);
    v12 = (v13 + 48);
    v8 = v13;
  }

  v15 = *v8;
  if (!v15)
  {
    goto LABEL_36;
  }

  v16 = *(*(v15 + 24 * *(v14 + 8)) + 112);
  if (!v16)
  {
    goto LABEL_29;
  }

  v17 = *(v16 + 40);
  v3 = specialized Strong.subscript.read();
  v19 = *v18;
  if (!*(*v18 + 16))
  {
    goto LABEL_37;
  }

  v20 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v21 & 1) == 0)
  {
    goto LABEL_37;
  }

  v22 = *(*(v19 + 56) + 8 * v20);

  (v3)(v53, 0);
  v23 = *(v22 + 16);
  if (!v23)
  {

    goto LABEL_39;
  }

  v3 = *(v22 + 4 * v23 + 28);

  if (a1[48])
  {
    goto LABEL_30;
  }

  v24 = *(a1 + 22);
  v25 = *a1;
  if (v25 >= *(v24 + 116))
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v26 = *(v24 + 104);
  if (!v26)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v27 = *(*(v26 + 8 * v25) + 8);
  if (v3 >= *(v27 + 44))
  {
    goto LABEL_25;
  }

  v28 = *(v27 + 32);
  if (!v28)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v29 = v28 + (v3 << 7);
  v30 = *(v29 + 8);
  v31 = *(v29 + 16);
  v32 = *(v29 + 24);
  v33 = *(v29 + 25);
  v36 = v29 + 28;
  v35 = *(v29 + 28);
  v34 = *(v36 + 4);
  LOBYTE(v53[0]) = v32;
  v37 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, v30, v31, v32, v34);
  outlined init with copy of Event_Noun?(&v37->Description, v53);
  v38 = v54;
  outlined destroy of Event_Noun?(v53);
  if (v38)
  {
    goto LABEL_26;
  }

  if (a1[48])
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v39 = *a1;
  if (v39 >= *(v24 + 116))
  {
    goto LABEL_27;
  }

  v40 = *(v24 + 104);
  if (v40)
  {
    v41 = *(*(v40 + 8 * v39) + 8);
    v54 = &type metadata for Event.Observable;
    v55 = &protocol witness table for Event.Observable;
    v53[0] = v6;
    v53[1] = v7;
    if (v3 < *(v41 + 44))
    {
      v42 = *(v41 + 32);
      if (v42)
      {
        v43 = v42 + (v3 << 7);
        v44 = *(v43 + 8);
        v45 = *(v43 + 16);
        v46 = *(v43 + 24);
        v47 = *(v43 + 25);
        v49 = v43 + 28;
        v48 = *(v43 + 28);
        v50 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, v44, v45, v46, *(v49 + 4));
        return outlined assign with take of Event_Noun?(v53, &v50->Description);
      }

      goto LABEL_35;
    }

    goto LABEL_28;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  (v3)(v53, 0);
LABEL_39:
  type metadata accessor for OS_os_log();
  v52 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t T_ActionEnqueue.model(within:)(uint64_t a1, uint64_t a2)
{
  Event.Action.Kind.init(rawValue:)(HIDWORD(a2));
  v4 = v36[0];
  if (LOBYTE(v36[0]) == 6)
  {
    v4 = 0;
  }

  v29 = a2;
  v30 = v4;
  v31 = 0u;
  v32 = 0u;
  v33 = 0;
  result = specialized Interpreter.Iterator.observe<A>(invalidation:)(&v29);
  if ((result & 0x100000000) != 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v6 = result;
  v7 = (a1 + 56);
  v36[0] = *(a1 + 56);
  v8 = *(a1 + 88);
  v36[1] = *(a1 + 72);
  v37[0] = v8;
  v9 = a1 + 72;
  v10 = (a1 + 84);
  v11 = (a1 + 104);
  *(v37 + 9) = *(a1 + 97);
  v12 = (a1 + 56);
  v13 = (a1 + 72);
  v14 = (a1 + 84);
  v15 = (a1 + 104);
  while (1)
  {
    v16 = *v15;
    if (*v14 > 1u)
    {
      v17 = *v13;
      if ((*(v17 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v16)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v36);
    }

    v13 = (v16 + 16);
    v14 = (v16 + 28);
    v15 = (v16 + 48);
    v12 = v16;
  }

  v18 = *v12;
  if (!v18)
  {
    goto LABEL_27;
  }

  result = v18 + 24 * *(v17 + 8);
  v19 = *(*result + 112);
  if (!v19)
  {
    goto LABEL_24;
  }

  if (*(**(v19 + 48) + 16))
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v20)
    {
      goto LABEL_26;
    }
  }

  v21 = *(a1 + 72);
  v34[0] = *v7;
  v34[1] = v21;
  v35[0] = *(a1 + 88);
  *(v35 + 9) = *(a1 + 97);
  while (1)
  {
    v22 = *v11;
    if (*v10 > 1u && (*(*v9 + 12) & 1) == 0)
    {
      break;
    }

    if (!v22)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v34);
    }

    v9 = v22 + 16;
    v10 = (v22 + 28);
    v11 = (v22 + 48);
    v7 = v22;
  }

  if (!*v7)
  {
    goto LABEL_28;
  }

  result = *v7 + 24 * *(*v9 + 8);
  v23 = *(*result + 112);
  if (v23)
  {
    v24 = *(v23 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefVGMR);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_26C328DC0;
    *(v25 + 32) = v6;
    v26 = *v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v24;
    *v24 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, a2, isUniquelyReferenced_nonNull_native);
    *v24 = v28;
    return outlined destroy of Event.Action(&v29);
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t T_ActionStart.model(within:)(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = HIDWORD(a2);
  v5 = (result + 56);
  v57[0] = *(result + 56);
  v6 = *(result + 88);
  v57[1] = *(result + 72);
  v58[0] = v6;
  *(v58 + 9) = *(result + 97);
  v7 = result + 72;
  v8 = (result + 84);
  v9 = (result + 88);
  v10 = (result + 104);
  v11 = (result + 56);
  v12 = (result + 104);
  while (1)
  {
    v13 = *v12;
    if (*v8 > 1u && (*(*v7 + 12) & 1) == 0)
    {
      break;
    }

    if (!v13)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v57);
    }

    v7 = v13 + 16;
    v8 = (v13 + 28);
    v12 = (v13 + 48);
    v11 = v13;
  }

  if (!*v11)
  {
    goto LABEL_53;
  }

  result = *v11 + 24 * *(*v7 + 8);
  v14 = *(*result + 112);
  if (!v14)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    return result;
  }

  v15 = *(v14 + 48);
  v16 = specialized Strong.subscript.read();
  v18 = *v17;
  if (!*(*v17 + 16))
  {
    return (v16)(v55, 0);
  }

  v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v20 & 1) == 0)
  {
    return (v16)(v55, 0);
  }

  v48 = *(*(v18 + 56) + 8 * v19);

  (v16)(v55, 0);
  Event.Action.Kind.init(rawValue:)(v4);
  v21 = v49;
  if (v49 == 6)
  {
    v21 = 0;
  }

  v50 = a2;
  v51 = v21;
  v52 = 0u;
  v53 = 0u;
  v54 = 0;
  v22 = v5[1];
  v55[0] = *v5;
  v55[1] = v22;
  v56[0] = v5[2];
  v23 = v3 + 100;
  result = *(v3 + 29);
  *(v56 + 9) = *(v5 + 41);
  while (1)
  {
    v24 = *v10;
    if (result < *v23)
    {
      v25 = (*v9 + 8 * result);
      if ((v25[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v24)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v55);
    }

    v9 = (v24 + 32);
    v23 = (v24 + 44);
    v10 = (v24 + 48);
    v5 = v24;
  }

  if (!*v5)
  {
    goto LABEL_54;
  }

  v26 = specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(&v50, *(*(*v5 + 24 * *v25) + 32), -1, 0);
  result = outlined destroy of Event.Action(&v50);
  v27 = *(v48 + 16);
  if (v27)
  {
    v28 = 0;
    while (v28 < *(v48 + 16))
    {
      if (v3[48])
      {
        goto LABEL_47;
      }

      v29 = *(v3 + 22);
      v30 = *v3;
      if (v30 >= *(v29 + 116))
      {
        goto LABEL_42;
      }

      v31 = *(v29 + 104);
      if (!v31)
      {
        goto LABEL_48;
      }

      v32 = *(v48 + 32 + 4 * v28);
      v33 = *(*(v31 + 8 * v30) + 8);
      v34 = *(v33 + 44);
      if (v32 >= v34)
      {
        goto LABEL_43;
      }

      v35 = *(v33 + 32);
      if (!v35)
      {
        goto LABEL_49;
      }

      if (v26 >= v34)
      {
        goto LABEL_44;
      }

      v36 = (v35 + (v32 << 7));
      v37 = (v35 + (v26 << 7));
      v38 = *v37;
      v39 = v36[31];
      if (v39 == v36[30])
      {
        result = specialized UnsafeArray.growToCapacity(_:)(2 * v39);
      }

      v40 = *(v36 + 14);
      if (!v40)
      {
        goto LABEL_50;
      }

      v41 = v36[31];
      v42 = v40 + 8 * v41;
      *v42 = -20480;
      *(v42 + 4) = v38;
      if (v41 == -1)
      {
        goto LABEL_45;
      }

      v36[31] = v41 + 1;
      v43 = *v36;
      v44 = v37[31];
      if (v44 == v37[30])
      {
        result = specialized UnsafeArray.growToCapacity(_:)(2 * v44);
      }

      v45 = *(v37 + 14);
      if (!v45)
      {
        goto LABEL_51;
      }

      v46 = v37[31];
      v47 = v45 + 8 * v46;
      *v47 = 28672;
      *(v47 + 4) = v43;
      if (v46 == -1)
      {
        goto LABEL_46;
      }

      ++v28;
      v37[31] = v46 + 1;
      if (v27 == v28)
      {
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }
}

uint64_t T_ActionFinish.model(within:)(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = (a1 + 56);
  v5 = *(a1 + 72);
  v28[0] = *(a1 + 56);
  v28[1] = v5;
  v29[0] = *(a1 + 88);
  v6 = a1 + 72;
  v7 = (a1 + 84);
  v8 = (a1 + 104);
  *(v29 + 9) = *(a1 + 97);
  v9 = (a1 + 56);
  v10 = (a1 + 72);
  v11 = (a1 + 84);
  v12 = (a1 + 104);
  while (1)
  {
    v13 = *v12;
    if (*v11 > 1u)
    {
      v14 = *v10;
      if ((*(v14 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v13)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v28);
    }

    v10 = (v13 + 16);
    v11 = (v13 + 28);
    v12 = (v13 + 48);
    v9 = v13;
  }

  v15 = *v9;
  if (!v15)
  {
    goto LABEL_24;
  }

  result = v15 + 24 * *(v14 + 8);
  v17 = *(*result + 112);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (*(**(v17 + 48) + 16))
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v18)
    {
      Interpreter.Iterator.endInflight(_:)(&type metadata for Event.Action);
      v19 = v4[1];
      v26[0] = *v4;
      v26[1] = v19;
      v27[0] = v4[2];
      *(v27 + 9) = *(v4 + 41);
      while (1)
      {
        v20 = *v8;
        if (*v7 > 1u && (*(*v6 + 12) & 1) == 0)
        {
          break;
        }

        if (!v20)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v26);
        }

        v6 = v20 + 16;
        v7 = (v20 + 28);
        v8 = (v20 + 48);
        v4 = v20;
      }

      if (!*v4)
      {
        goto LABEL_26;
      }

      v21 = *(*(*v4 + 24 * *(*v6 + 8)) + 112);
      if (v21)
      {
        v22 = *(v21 + 48);
        v3 = specialized Strong.subscript.read();
        if (*(*v23 + 16))
        {
          specialized __RawDictionaryStorage.find<A>(_:)(a2);
          if (v24)
          {
            return (v3)(v25, 0);
          }
        }

LABEL_27:
        (v3)(v25, 0);
        v25[0] = 0;
        v25[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(35);
        MEMORY[0x26D69CDB0](0xD000000000000015, 0x800000026C33DF40);
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x26D69CDB0](0x206E6920746F6E20, 0xEC0000007473696CLL);
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }
  }

  return result;
}

unint64_t T_ActionGestureAttribute.model(within:)(unsigned __int8 *a1, unint64_t a2)
{
  result = HIDWORD(a2);
  if (HIDWORD(a2) != 2)
  {
    result = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(result, a1);
    v5 = result;
    v6 = (a1 + 56);
    v7 = *(a1 + 72);
    v43[0] = *(a1 + 56);
    v43[1] = v7;
    v44[0] = *(a1 + 88);
    *(v44 + 9) = *(a1 + 97);
    v8 = (a1 + 72);
    v9 = a1 + 84;
    v10 = (a1 + 104);
    while (1)
    {
      v11 = *v10;
      if (*v9 > 1u)
      {
        v12 = *v8;
        if ((*(v12 + 12) & 1) == 0)
        {
          break;
        }
      }

      if (!v11)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v43);
      }

      v8 = (v11 + 16);
      v9 = (v11 + 28);
      v10 = (v11 + 48);
      v6 = v11;
    }

    v13 = *v6;
    if (!v13)
    {
      goto LABEL_25;
    }

    result = v13 + 24 * *(v12 + 8);
    v14 = *(*result + 112);
    if (!v14)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v15 = *(v14 + 48);
    v16 = specialized Strong.subscript.read();
    v18 = *v17;
    if (*(*v17 + 16))
    {
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if (v20)
      {
        v21 = *(*(v18 + 56) + 8 * v19);

        (v16)(v40, 0);
        v22 = *(v21 + 16);
        if (!v22)
        {
        }

        v23 = *(v21 + 4 * v22 + 28);

        LOBYTE(v40[0]) = 1;
        v42 = 1;
        v41 = 0;
        if (a1[48])
        {
          goto LABEL_26;
        }

        v24 = *(a1 + 22);
        v25 = *a1;
        if (v25 >= *(v24 + 116))
        {
          __break(1u);
        }

        else
        {
          v26 = *(v24 + 104);
          if (!v26)
          {
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            return result;
          }

          v27 = v42;
          v28 = v41;
          v29 = *(*(v26 + 8 * v25) + 8);
          v40[3] = &type metadata for Event.AttributeValue;
          v40[4] = &protocol witness table for Event.AttributeValue;
          result = swift_allocObject();
          v40[0] = result;
          *(result + 16) = v5;
          *(result + 20) = 0;
          *(result + 24) = 0;
          *(result + 32) = 1;
          *(result + 36) = 0xFFFFFFFFLL;
          *(result + 44) = 0;
          *(result + 48) = v27;
          *(result + 52) = -1;
          *(result + 56) = 0;
          *(result + 64) = 0;
          *(result + 68) = v28;
          if (v23 < *(v29 + 44))
          {
            v30 = *(v29 + 32);
            if (v30)
            {
              v31 = v30 + (v23 << 7);
              v32 = *(v31 + 8);
              v33 = *(v31 + 16);
              v34 = *(v31 + 24);
              v35 = *(v31 + 25);
              v38 = v31 + 28;
              v37 = *(v31 + 28);
              v36 = *(v38 + 4);
              v42 = v34;
              v39 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, v32, v33, v34, v36);
              return outlined assign with take of Event_Noun?(v40, &v39->Description);
            }

            goto LABEL_28;
          }
        }

        __break(1u);
        goto LABEL_24;
      }
    }

    return (v16)(v40, 0);
  }

  return result;
}

unint64_t T_AnimationBegin.model(within:)(unint64_t result)
{
  v2 = *v1;
  v3 = (result + 56);
  v29[0] = *(result + 56);
  v4 = *(result + 88);
  v29[1] = *(result + 72);
  v30[0] = v4;
  v5 = result + 72;
  v6 = (result + 84);
  v7 = (result + 104);
  *(v30 + 9) = *(result + 97);
  v8 = (result + 56);
  v9 = (result + 72);
  v10 = (result + 84);
  v11 = (result + 104);
  while (1)
  {
    v12 = *v11;
    if (*v10 > 1u)
    {
      v13 = *v9;
      if ((*(v13 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v12)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v29);
    }

    v9 = (v12 + 16);
    v10 = (v12 + 28);
    v11 = (v12 + 48);
    v8 = v12;
  }

  v14 = *v8;
  if (!v14)
  {
    goto LABEL_25;
  }

  result = v14 + 24 * *(v13 + 8);
  v15 = *(*result + 112);
  if (!v15)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (!*(**(v15 + 56) + 16) || (result = specialized __RawDictionaryStorage.find<A>(_:)(v2), (v16 & 1) == 0))
  {
    v17 = v1[1];
    v25[0] = v2;
    v25[1] = v17;
    v26 = *(v1 + 2);
    v27 = *(v1 + 6);
    v28 = 0x7FF8000000000000;
    result = specialized Interpreter.Iterator.observe<A>(invalidation:)(v25);
    if ((result & 0x100000000) == 0)
    {
      v18 = result;
      v19 = v3[1];
      v23[0] = *v3;
      v23[1] = v19;
      v24[0] = v3[2];
      *(v24 + 9) = *(v3 + 41);
      while (1)
      {
        v20 = *v7;
        if (*v6 > 1u && (*(*v5 + 12) & 1) == 0)
        {
          break;
        }

        if (!v20)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v23);
        }

        v5 = v20 + 16;
        v6 = (v20 + 28);
        v7 = (v20 + 48);
        v3 = v20;
      }

      if (!*v3)
      {
        goto LABEL_26;
      }

      result = *v3 + 24 * *(*v5 + 8);
      v21 = *(*result + 112);
      if (v21)
      {
        v22 = *(v21 + 56);
        return specialized Dictionary.subscript.setter(v18, v2);
      }

      goto LABEL_24;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t T_AnimationEnd.model(within:)(uint64_t result, uint64_t a2)
{
  v2 = (result + 56);
  v3 = *(result + 72);
  v20[0] = *(result + 56);
  v20[1] = v3;
  v21[0] = *(result + 88);
  *(v21 + 9) = *(result + 97);
  v4 = (result + 72);
  v5 = (result + 84);
  v6 = (result + 104);
  while (1)
  {
    v7 = *v6;
    if (*v5 > 1u)
    {
      v8 = *v4;
      if ((*(v8 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v7)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v20);
    }

    v4 = (v7 + 16);
    v5 = (v7 + 28);
    v6 = (v7 + 48);
    v2 = v7;
  }

  v9 = *v2;
  if (!v9)
  {
    goto LABEL_15;
  }

  result = v9 + 24 * *(v8 + 8);
  v10 = *(*result + 112);
  if (!v10)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v11 = *(v10 + 56);
  v12 = *v11;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if (v13)
  {
    v14 = result;
    v15 = *v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v11;
    v19 = *v11;
    *v11 = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v17 = v19;
    }

    specialized _NativeDictionary._delete(at:)(v14, v17);
    v18 = *v11;
    *v11 = v17;
  }

  return result;
}

uint64_t T_AnimationAttrUpdate.model(within:)(uint64_t result, uint64_t a2)
{
  v3 = (result + 56);
  v4 = *(result + 72);
  v17[0] = *(result + 56);
  v17[1] = v4;
  v18[0] = *(result + 88);
  *(v18 + 9) = *(result + 97);
  v5 = (result + 72);
  v6 = (result + 84);
  v7 = (result + 104);
  while (1)
  {
    v8 = *v7;
    if (*v6 > 1u)
    {
      v9 = *v5;
      if ((*(v9 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v8)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v17);
    }

    v5 = (v8 + 16);
    v6 = (v8 + 28);
    v7 = (v8 + 48);
    v3 = v8;
  }

  v10 = *v3;
  if (!v10)
  {
    goto LABEL_15;
  }

  result = v10 + 24 * *(v9 + 8);
  v11 = *(*result + 112);
  if (!v11)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v12 = *(v11 + 56);
  v13 = specialized Strong.subscript.read();
  if (*(*v14 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(a2), (v15 & 1) != 0))
  {
    return (v13)(v16, 0);
  }

  else
  {
    return (v13)(v16, 0);
  }
}

ValueMetadata *T_AnimationScheduleTick.model(within:)(ValueMetadata *result, uint64_t a2, int a3)
{
  v4 = result;
  *&v36[0] = a2;
  DWORD2(v36[0]) = a3;
  v5 = *(v36 + 4);
  p_Description = &result[3].Description;
  v7 = *&result[4].Description;
  v36[0] = *(result + 56);
  v36[1] = v7;
  v37[0] = *(result + 88);
  *(v37 + 9) = *(result + 97);
  v8 = &result[4].Description;
  v9 = &result[5].Kind + 1;
  v10 = &result[6].Description;
  while (1)
  {
    v11 = *v10;
    if (*v9 > 1u)
    {
      v12 = *v8;
      if ((v12[12] & 1) == 0)
      {
        break;
      }
    }

    if (!v11)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v36);
    }

    v8 = (v11 + 16);
    v9 = v11 + 28;
    v10 = (v11 + 48);
    p_Description = v11;
  }

  v13 = *p_Description;
  if (!v13)
  {
    goto LABEL_21;
  }

  result = &v13[24 * *(v12 + 2)];
  v14 = *(result->Kind + 112);
  if (!v14)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v15 = *(v14 + 56);
  v16 = specialized Strong.subscript.read();
  v18 = *v17;
  if (!*(*v17 + 16))
  {
    return (v16)(v35, 0);
  }

  v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v20 & 1) == 0)
  {
    return (v16)(v35, 0);
  }

  v21 = *(*(v18 + 56) + 4 * v19);
  result = (v16)(v35, 0);
  if (LOBYTE(v4[3].Kind))
  {
    goto LABEL_22;
  }

  Kind = v4[11].Kind;
  Kind_low = LOBYTE(v4->Kind);
  if (Kind_low >= *(Kind + 116))
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v24 = *(Kind + 104);
  if (v24)
  {
    v25 = *(*(v24 + 8 * Kind_low) + 8);
    if (v21 < *(v25 + 44))
    {
      v26 = *(v25 + 32);
      if (v26)
      {
        v27 = v26 + (v21 << 7);
        v28 = *(v27 + 8);
        v29 = *(v27 + 16);
        v30 = *(v27 + 24);
        v31 = *(v27 + 25);
        v34 = v27 + 28;
        v33 = *(v27 + 28);
        v32 = *(v34 + 4);
        v35[0] = v30;
        result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, v28, v29, v30, v32);
        result[2].Description = v5;
        return result;
      }

      goto LABEL_24;
    }

    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

ValueMetadata *protocol witness for Tracepoint.model(within:) in conformance T_AnimationScheduleTick(ValueMetadata *a1)
{
  v2 = *v1;
  *&v4[4] = *(v1 + 1);
  return T_AnimationScheduleTick.model(within:)(a1, *v4, *&v4[8]);
}

void T_AnimationTick.model(within:)(unsigned __int8 *a1, uint64_t a2, char a3)
{
  *&v60[0] = a2;
  BYTE8(v60[0]) = a3;
  specialized Interpreter.Iterator.observe<A>(invalidation:)(a2 != 0, *(v60 + 1));
  if ((v4 & 0x100000000) != 0)
  {
    return;
  }

  v5 = v4;
  v6 = (a1 + 56);
  v7 = *(a1 + 72);
  v60[0] = *(a1 + 56);
  v60[1] = v7;
  v61[0] = *(a1 + 88);
  *(v61 + 9) = *(a1 + 97);
  v8 = (a1 + 72);
  v9 = a1 + 84;
  v10 = (a1 + 104);
  while (1)
  {
    v11 = *v10;
    if (*v9 > 1u)
    {
      v12 = *v8;
      if ((*(v12 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v11)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v60);
    }

    v8 = (v11 + 16);
    v9 = (v11 + 28);
    v10 = (v11 + 48);
    v6 = v11;
  }

  v13 = *v6;
  if (!v13)
  {
LABEL_80:
    __break(1u);
    return;
  }

  v14 = *(*(v13 + 24 * *(v12 + 8)) + 112);
  if (!v14)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v15 = **(v14 + 56);
  v16 = v15 + 64;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 64);
  v20 = (v17 + 63) >> 6;
  v59 = v5;

  v22 = 0;
  v57 = v5;
  v58 = a1;
  v56 = v21;
  while (v19)
  {
    if (a1[48])
    {
      goto LABEL_52;
    }

LABEL_16:
    v23 = *(a1 + 22);
    v24 = *a1;
    if (v24 >= *(v23 + 116))
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
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
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v25 = *(v23 + 104);
    if (!v25)
    {
      goto LABEL_68;
    }

    v26 = *(*(v21 + 56) + ((v22 << 8) | (4 * __clz(__rbit64(v19)))));
    v27 = *(*(v25 + 8 * v24) + 8);
    v28 = *(v27 + 44);
    if (v26 >= v28)
    {
      goto LABEL_58;
    }

    v29 = *(v27 + 32);
    if (!v29)
    {
      goto LABEL_69;
    }

    v30 = (v29 + (v26 << 7));
    if (!v30[8])
    {
      goto LABEL_59;
    }

    if (v30[6])
    {
      goto LABEL_71;
    }

    v31 = *(v30 + 1);
    if (!v31)
    {
      goto LABEL_70;
    }

    if (*v31 != &type metadata for Event.Animation)
    {
      goto LABEL_60;
    }

    v19 &= v19 - 1;
    v32 = *(v31 + 48);
    v33 = ~v32 & 0x7FF0000000000000;
    v34 = v32 & 0xFFFFFFFFFFFFFLL;
    if (v33)
    {
      v35 = 1;
    }

    else
    {
      v35 = v34 == 0;
    }

    if (v35)
    {
      if (v28 <= v5)
      {
        goto LABEL_61;
      }

      v36 = (v29 + (v59 << 7));
      v37 = *v36;
      v38 = v30[31];
      if (v38 == v30[30])
      {
        specialized UnsafeArray.growToCapacity(_:)(2 * v38);
      }

      v39 = *(v30 + 14);
      if (!v39)
      {
        goto LABEL_72;
      }

      v40 = v30[31];
      v41 = v39 + 8 * v40;
      *v41 = -24575;
      *(v41 + 4) = v37;
      if (v40 == -1)
      {
        goto LABEL_62;
      }

      v30[31] = v40 + 1;
      v42 = *v30;
      v43 = v36[31];
      if (v43 == v36[30])
      {
        specialized UnsafeArray.growToCapacity(_:)(2 * v43);
      }

      v44 = *(v36 + 14);
      if (!v44)
      {
        goto LABEL_73;
      }

      v45 = v36[31];
      v46 = v44 + 8 * v45;
      *v46 = 24577;
      *(v46 + 4) = v42;
      if (v45 == -1)
      {
        goto LABEL_63;
      }

      v36[31] = v45 + 1;
      a1 = v58;
      if (v58[48])
      {
        goto LABEL_74;
      }

      v47 = *v58;
      v21 = v56;
      v5 = v57;
      if (v47 >= *(v23 + 116))
      {
        goto LABEL_64;
      }

      v48 = *(v23 + 104);
      if (!v48)
      {
        goto LABEL_75;
      }

      v49 = *(*(v48 + 8 * v47) + 8);
      if (v26 >= *(v49 + 44))
      {
        goto LABEL_65;
      }

      v50 = *(v49 + 32);
      if (!v50)
      {
        goto LABEL_76;
      }

      v51 = v50 + (v26 << 7);
      v54 = *(v51 + 8);
      v53 = v51 + 8;
      v52 = v54;
      if (!*(v53 + 24))
      {
        goto LABEL_66;
      }

      if (*(v53 + 16))
      {
        goto LABEL_78;
      }

      if (!v52)
      {
        goto LABEL_77;
      }

      if (*v52 != &type metadata for Event.Animation)
      {
        goto LABEL_67;
      }

      *(v52 + 48) = 0x7FF8000000000000;
    }
  }

  do
  {
    v55 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_57;
    }

    if (v55 >= v20)
    {
      goto LABEL_53;
    }

    v19 = *(v16 + 8 * v55);
    ++v22;
  }

  while (!v19);
  v22 = v55;
  if (!a1[48])
  {
    goto LABEL_16;
  }

LABEL_52:
  __break(1u);
LABEL_53:
}

void protocol witness for Tracepoint.model(within:) in conformance T_AnimationTick(unsigned __int8 *a1)
{
  v2 = *v1;
  *&v3[1] = *(v1 + 1);
  T_AnimationTick.model(within:)(a1, *v3, v3[8]);
}

unint64_t T_AnimationRetarget.model(within:)(unint64_t result)
{
  v2 = *v1;
  v3 = (result + 56);
  v29[0] = *(result + 56);
  v4 = *(result + 88);
  v29[1] = *(result + 72);
  v30[0] = v4;
  v5 = result + 72;
  v6 = (result + 84);
  v7 = (result + 104);
  *(v30 + 9) = *(result + 97);
  v8 = (result + 56);
  v9 = (result + 72);
  v10 = (result + 84);
  v11 = (result + 104);
  while (1)
  {
    v12 = *v11;
    if (*v10 > 1u)
    {
      v13 = *v9;
      if ((*(v13 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v12)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v29);
    }

    v9 = (v12 + 16);
    v10 = (v12 + 28);
    v11 = (v12 + 48);
    v8 = v12;
  }

  v14 = *v8;
  if (!v14)
  {
    goto LABEL_23;
  }

  result = v14 + 24 * *(v13 + 8);
  v15 = *(*result + 112);
  if (!v15)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (*(**(v15 + 56) + 16))
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(v2);
    if (v16)
    {
      v17 = v1[1];
      v25[0] = v2;
      v25[1] = v17;
      v26 = *(v1 + 2);
      v27 = *(v1 + 6);
      v28 = 0x7FF8000000000000;
      result = specialized Interpreter.Iterator.observe<A>(invalidation:)(v25);
      if ((result & 0x100000000) == 0)
      {
        v18 = result;
        v19 = v3[1];
        v23[0] = *v3;
        v23[1] = v19;
        v24[0] = v3[2];
        *(v24 + 9) = *(v3 + 41);
        while (1)
        {
          v20 = *v7;
          if (*v6 > 1u && (*(*v5 + 12) & 1) == 0)
          {
            break;
          }

          if (!v20)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v23);
          }

          v5 = v20 + 16;
          v6 = (v20 + 28);
          v7 = (v20 + 48);
          v3 = v20;
        }

        if (!*v3)
        {
          goto LABEL_26;
        }

        result = *v3 + 24 * *(*v5 + 8);
        v21 = *(*result + 112);
        if (v21)
        {
          v22 = *(v21 + 56);
          return specialized Dictionary.subscript.setter(v18, v2);
        }

LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return result;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }
  }

  return result;
}

unsigned __int8 *T_DynamicPropertiesChanged.model(within:)(unsigned __int8 *result, unint64_t a2)
{
  v3 = result;
  v4 = *result;
  v5 = HIDWORD(a2);
  v6 = result[48];
  v7 = (result + 56);
  v8 = *(result + 72);
  v39[0] = *(result + 56);
  v39[1] = v8;
  v40[0] = *(result + 88);
  *(v40 + 9) = *(result + 97);
  v9 = (result + 72);
  v10 = result + 84;
  v11 = (result + 104);
  v12 = *(result + 22);
  while (1)
  {
    v13 = *v11;
    if (*v10)
    {
      v14 = *v9;
      if ((v14[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v13)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v39);
    }

    v9 = (v13 + 16);
    v10 = (v13 + 28);
    v11 = (v13 + 48);
    v7 = v13;
  }

  v15 = *v7;
  if (!v15)
  {
LABEL_45:
    __break(1u);
    return result;
  }

  result = (v15 + 24 * *v14);
  v16 = *(*result + 112);
  if (!v16)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v17 = *(*(v16 + 32) + 8);
  v18 = *(v17 + 16);
  v19 = v18 + 1;
  v20 = (v17 + 48 * v18 - 16);
  do
  {
    if (--v19 < 1)
    {
      return result;
    }

    if (v6)
    {
      goto LABEL_37;
    }

    v21 = *(v12 + 116);
    if (v21 <= v4)
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v22 = *(v12 + 104);
    if (!v22)
    {
      goto LABEL_38;
    }

    v23 = *v20;
    v24 = *(*(v22 + 8 * v4) + 8);
    if (v23 >= *(v24 + 44))
    {
      goto LABEL_32;
    }

    v25 = *(v24 + 32);
    if (!v25)
    {
      goto LABEL_39;
    }

    v26 = v25 + (v23 << 7);
    v29 = *(v26 + 8);
    v28 = v26 + 8;
    v27 = v29;
    if (!*(v28 + 24))
    {
      goto LABEL_33;
    }

    if (*(v28 + 16))
    {
      goto LABEL_41;
    }

    if (!v27)
    {
      goto LABEL_40;
    }

    v20 -= 12;
  }

  while (*v27 != &type metadata for Event.AttributeValue);
  if (v3[48])
  {
    goto LABEL_43;
  }

  v30 = *v3;
  if (v30 >= v21)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (!a2)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v31 = *(*(v22 + 8 * v30) + 8);
  if (v23 >= *(v31 + 44))
  {
    goto LABEL_36;
  }

  v32 = *(v31 + 32);
  if (!v32)
  {
    goto LABEL_44;
  }

  v33 = v32 + (v23 << 7);
  v34 = *(v33 + 8);
  v35 = *(v33 + 16);
  v36 = v33 + 8;
  v37 = *(v3 + 29);
  v38 = 256;
  if (!*(v36 + 17))
  {
    v38 = 0;
  }

  result = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV17DynamicPropertiesV_Ttg5(v34, v35, v38 | (*(v36 + 20) << 32) | *(v36 + 16), *(v36 + 24));
  if (!result)
  {
    return specialized HeterogeneousBuffer.insert<A>(_:)(v37 | 0x1600000000, a2 << 32, v5);
  }

  *result = v37;
  *(result + 1) = 22;
  result[8] = 0;
  *(result + 3) = a2;
  result[16] = v5;
  return result;
}

Swift::Int _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo10AGGraphRefa_So010AGSubgraphF0aTt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo10AGGraphRefaSo010AGSubgraphD0aGMd, &_ss18_DictionaryStorageCySo10AGGraphRefaSo010AGSubgraphD0aGMR);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v17 = v2;
    __CocoaDictionary.makeIterator()();
    if (__CocoaDictionary.Iterator.next()())
    {
      type metadata accessor for AGGraphRef(0);
      do
      {
        swift_dynamicCast();
        type metadata accessor for AGSubgraphRef(0);
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v10 + 1, 1);
        }

        v2 = v17;
        v3 = *(v17 + 40);
        Hasher.init(_seed:)();
        lazy protocol witness table accessor for type AGSubgraphRef and conformance AGSubgraphRef(&lazy protocol witness table cache variable for type AGGraphRef and conformance AGGraphRef, type metadata accessor for AGGraphRef);
        _CFObject.hash(into:)();
        result = Hasher._finalize()();
        v5 = v17 + 64;
        v6 = -1 << *(v17 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v17 + 64 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v17 + 64 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v17 + 48) + 8 * v9) = v16;
        *(*(v17 + 56) + 8 * v9) = v15;
        ++*(v17 + 16);
      }

      while (__CocoaDictionary.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 4 * v6);
      result = MEMORY[0x26D69DB90](*(a2 + 40), *v11, 4);
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = (v10 + 4 * v3);
          if (v3 != v6 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = v16 + 24 * v3;
          v18 = (v16 + 24 * v6);
          if (24 * v3 < (24 * v6) || v17 >= v18 + 24 || v3 != v6)
          {
            v9 = *v18;
            *(v17 + 16) = *(v18 + 2);
            *v17 = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      result = MEMORY[0x26D69DBA0](*(a2 + 40), *v11);
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = (v10 + 8 * v3);
          if (v3 != v6 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = v16 + 24 * v3;
          v18 = (v16 + 24 * v6);
          if (24 * v3 < (24 * v6) || v17 >= v18 + 24 || v3 != v6)
          {
            v9 = *v18;
            *(v17 + 16) = *(v18 + 2);
            *v17 = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int specialized _NativeDictionary._delete(at:)(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 4 * v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 4 * v3);
        v14 = (v12 + 4 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 4 * v3);
        v17 = (v15 + 4 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 4 * v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 4 * v3);
        v14 = (v12 + 4 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t outlined init with copy of Event_Noun?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport10Event_Noun_pSgMd, &_s21SwiftUITracingSupport10Event_Noun_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Event_Noun?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport10Event_Noun_pSgMd, &_s21SwiftUITracingSupport10Event_Noun_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized handleInstantiateEvent(_:_:_:_:_:)(unsigned __int8 a1, uint64_t a2, unsigned __int8 *a3)
{
  if (a3)
  {
    if (a1 <= 0x43u)
    {
      if (a1 != 65)
      {
        if (a1 == 66)
        {
          specialized Trace_Handle.write<A>(_:omit:)(*a3, 0);
        }

        else if (a1 == 67)
        {
          specialized Trace_Handle.write<A>(_:omit:)(*a3, 0);
        }

        return;
      }

      v4 = *a3;
      v6 = *(a3 + 1);
      v5 = *(a3 + 2);
      v7 = *(a3 + 3);
      if (*(*(a2 + 24) + 10) == 1)
      {
        v8 = *(a2 + 136);
        v9 = v6;
        v10 = v5;
        v11 = v7;
        v12 = specialized Dictionary.subscript.getter(v9, v8);
        if (v12)
        {
          type metadata accessor for AGSubgraphRef(0);
          lazy protocol witness table accessor for type AGSubgraphRef and conformance AGSubgraphRef(&lazy protocol witness table cache variable for type AGSubgraphRef and conformance AGSubgraphRef, type metadata accessor for AGSubgraphRef);
          v13 = v10;
          v31 = v9;
          v14 = v4;
          v15 = v10;
          v16 = v12;
          v17 = v13;
          v18 = static _CFObject.== infix(_:_:)();

          v12 = v16;
          v10 = v15;
          v4 = v14;
          v9 = v31;
          if ((v18 & 1) == 0)
          {
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            return;
          }
        }

        v19 = *(a2 + 136);
        if ((v19 & 0xC000000000000001) != 0)
        {
          if (v19 < 0)
          {
            v20 = *(a2 + 136);
          }

          else
          {
            v20 = v19 & 0xFFFFFFFFFFFFFF8;
          }

          v21 = v9;
          v22 = v10;
          v23 = __CocoaSet.count.getter();
          if (__OFADD__(v23, 1))
          {
            goto LABEL_32;
          }

          *(a2 + 136) = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo10AGGraphRefa_So010AGSubgraphF0aTt1g5(v20, v23 + 1);
        }

        else
        {
          v27 = *(a2 + 136);
          v28 = v9;
          v29 = v10;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = *(a2 + 136);
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, v9, isUniquelyReferenced_nonNull_native);
        *(a2 + 136) = v32;
      }

      else
      {
        v24 = v6;
        v25 = v5;
        v26 = v7;
      }

      if ((v4 & 0x80) == 0)
      {
        specialized Trace_Handle.write<A>(_:omit:)(v6, v5, v7, v4);

        return;
      }

      __break(1u);
      goto LABEL_31;
    }

    switch(a1)
    {
      case 'D':
        specialized Trace_Handle.write<A>(_:omit:)(*a3, 0);
        break;
      case 'E':
        specialized Trace_Handle.write<A>(_:omit:)(*a3, 0);
        break;
      case 'F':
        specialized Trace_Handle.write<A>(_:omit:)(*a3 | (*(a3 + 1) << 16), 0);
        break;
    }
  }
}

uint64_t lazy protocol witness table accessor for type AGSubgraphRef and conformance AGSubgraphRef(unint64_t *a1, void (*a2)(uint64_t))
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

void *specialized handleDynamicPropertyEvent(_:_:_:_:_:)(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result == 65;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  if (v3)
  {
    v6 = *a3;
    v5 = *(a3 + 8);
    v7 = *(a3 + 16);
    v8 = *(a3 + 17);
    v13 = 0;
    if (*a3 && v5)
    {
      v9 = 8 * v5;
      do
      {
        v10 = *v6;
        if ((*v6 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          return result;
        }

        if (HIDWORD(v10))
        {
          goto LABEL_24;
        }

        result = specialized BufferAttachment.append_slow()();
        if (v13 < 0)
        {
          goto LABEL_25;
        }

        if ((v13 * 4) >> 64 != (4 * v13) >> 63)
        {
          goto LABEL_26;
        }

        ++v6;
        *(4 * v13) = v10;
        v11 = ++v13;
        v9 -= 8;
      }

      while (v9);
      if (v8)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v11 = 0;
      if (v8)
      {
LABEL_20:
        v7 = v7 | 2;
      }
    }

    v12 = specialized Trace_Handle.write<A>(attachment:)(0, v11, 20, 4);
    specialized Trace_Handle.write<A>(_:omit:)(v12 | (v7 << 32));
  }

  return v4;
}

char *specialized MutableCollection<>.sort(by:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *(a1 + 8);
    v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(*(a1 + 12), 0);
    result = specialized Sequence._copyContents(initializing:)(v9, (v5 + 32), v3, v2, v4 | (v3 << 32));
    if (result != v3)
    {
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v10 = v5;
  specialized MutableCollection<>.sort(by:)(&v10);
  result = v10;
  if (!v1 && v3)
  {
    v7 = 0;
    v8 = *(v10 + 2);
    while (v8 != v7)
    {
      if (v7 >= *(result + 2))
      {
        __break(1u);
        goto LABEL_15;
      }

      if (!v2)
      {
        goto LABEL_16;
      }

      *(v2 + 8 * v7) = *&result[8 * v7 + 32];
      if (v3 == ++v7)
      {
      }
    }
  }
}

double UnsafeTreeEditDistance.Tree.init(tree:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v73 = 1;
  v8 = a1[1];
  v75 = *a1;
  v76 = v8;
  v77 = *(a1 + 4);
  v9 = type metadata accessor for UnsafeTreeEditDistance.Node();
  v10 = static Array._allocateUninitialized(_:)();
  specialized UnsafeArray.init(arrayLiteral:)(v10, v9);
  v12 = v11;
  v14 = v13;

  *&v56[0] = v12;
  *(&v56[0] + 1) = v14;
  v15 = type metadata accessor for UnsafeArray();
  v16 = static UnsafeMutablePointer.allocate(capacity:)();
  _sSpsRi_zrlE10initialize2toyxn_tF(v56, v16, v15);
  v72 = v16;
  v17 = _s21SwiftUITracingSupport11UnsafeArrayVAASzRzlE5zerosACyxGSi_tcfCSi_Tt0g5(*(*a1 + 12));
  LODWORD(v16) = v18;
  v19 = HIDWORD(v18);
  v20 = swift_slowAlloc();
  *v20 = v17;
  *(v20 + 8) = v16;
  *(v20 + 12) = v19;
  v71 = v20;
  v21 = type metadata accessor for UnsafeTree();
  v22 = UnsafeTree.first.getter(v21, v56);
  if (BYTE4(v56[0]) != 1)
  {
    v23 = MEMORY[0x28223BE20](v22);
    v49[2] = a2;
    v49[3] = a3;
    v49[4] = a1;
    v49[5] = &v72;
    MEMORY[0x28223BE20](v23);
    v48[2] = a2;
    v48[3] = a3;
    v48[4] = v24;
    v48[5] = &v71;
    v55 = v25;
    *&v56[0] = 0;
    BYTE8(v56[0]) = 1;
    *&v47 = type metadata accessor for UnsafeTreeNodeRef.Typed();
    *(&v47 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(partial apply for closure #1 in UnsafeTreeEditDistance.Tree.init(tree:), v49, partial apply for closure #2 in UnsafeTreeEditDistance.Tree.init(tree:), v48, &v55, v56, 1, 0, 0, v47);
  }

  v26 = a3;
  v28 = v71;
  v27 = v72;
  v29 = *v72;
  v31 = *(v72 + 8);
  v30 = *(v72 + 12);
  v54 = *v71;
  v32 = v54;
  v33 = *(v71 + 12);
  v53 = *(v71 + 8);
  v34 = v53;
  v52 = v33;
  v49[6] = v26;
  v51 = specialized UnsafeTreeEditDistance.Tree.leftMostLeaf(_:)(v29, v31 | (v30 << 32));
  v50 = v35;
  LOBYTE(v55) = 0;
  v56[0] = v75;
  v56[1] = v76;
  v57 = v77;
  v58 = v29;
  v59 = v31;
  v60 = v30;
  v61 = v32;
  v62 = v34;
  v63 = v33;
  v64 = v51;
  v65 = v35;
  v66 = 0;
  *v67 = *v74;
  *&v67[3] = *&v74[3];
  v68 = 0;
  v69 = 0;
  v70 = v73;
  v36 = *v27;
  v37 = v27[1];
  v38 = type metadata accessor for UnsafeTreeEditDistance.Tree();
  v39 = UnsafeTreeEditDistance.Tree.keyroots(_:)(v36, v37, v38);
  v41 = v40;
  v73 = 0;
  MEMORY[0x26D69EAB0](v28, -1, -1);
  $defer #1 <A>() in UnsafeTreeEditDistance.Tree.init(tree:)(&v72);
  v42 = v73;
  result = *&v75;
  v44 = v76;
  *a4 = v75;
  *(a4 + 16) = v44;
  *(a4 + 32) = v77;
  *(a4 + 40) = v29;
  *(a4 + 48) = v31;
  *(a4 + 52) = v30;
  *(a4 + 56) = v54;
  v45 = v52;
  *(a4 + 64) = v53;
  *(a4 + 68) = v45;
  v46 = v50;
  *(a4 + 72) = v51;
  *(a4 + 80) = v46;
  *(a4 + 88) = 0;
  LODWORD(v46) = *v74;
  *(a4 + 92) = *&v74[3];
  *(a4 + 89) = v46;
  *(a4 + 96) = v39;
  *(a4 + 104) = v41;
  *(a4 + 112) = v42;
  return result;
}

Swift::Void __swiftcall UnsafeTreeEditDistance.backtrack()()
{
  v2 = v0;
  UnsafeTreeEditDistance.treeEditDistance()();
  v11 = v1[8];
  v12 = v1[9];
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  type metadata accessor for UnsafeTreeEditDistance.Node();
  v5 = type metadata accessor for UnsafeArray();
  WitnessTable = swift_getWitnessTable();
  ArrayLike.lastIndex.getter(v5, WitnessTable);
  v8 = v1[23];
  v9 = v1[24];
  ArrayLike.lastIndex.getter(v5, WitnessTable);
  UnsafeTreeEditDistance.backtrack(_:_:)(v10, v7);
}

double protocol witness for Comparison.init(baseline:candidate:) in conformance UnsafeTreeEditDistance<A>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>)
{
  v5 = *(a4 + 16);
  v4 = *(a4 + 24);
  *&result = UnsafeTreeEditDistance.init(baseline:candidate:)(a1, a2, a3).n128_u64[0];
  return result;
}

__n128 UnsafeTreeEditDistance.init(baseline:candidate:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = vdupq_n_s64(1uLL);
  *(a3 + 16) = 1;
  *(a3 + 264) = 0;
  *(a3 + 272) = 1;
  type metadata accessor for UnsafeTreeNodeRef.Typed();
  swift_getWitnessTable();
  *(a3 + 280) = Dictionary.init()();
  bzero(0, 0);
  *(a3 + 320) = 0;
  *(a3 + 288) = 0u;
  *(a3 + 304) = 0u;
  bzero(0, 0);
  *(a3 + 360) = 0;
  *(a3 + 328) = 0u;
  *(a3 + 344) = 0u;
  v6 = *(a1 + 80);
  *(a3 + 88) = *(a1 + 64);
  *(a3 + 104) = v6;
  *(a3 + 120) = *(a1 + 96);
  *(a3 + 136) = *(a1 + 112);
  v7 = *(a1 + 16);
  *(a3 + 24) = *a1;
  *(a3 + 40) = v7;
  v8 = *(a1 + 48);
  *(a3 + 56) = *(a1 + 32);
  *(a3 + 72) = v8;
  v9 = *(a2 + 80);
  *(a3 + 208) = *(a2 + 64);
  *(a3 + 224) = v9;
  *(a3 + 240) = *(a2 + 96);
  *(a3 + 256) = *(a2 + 112);
  v10 = *(a2 + 16);
  *(a3 + 144) = *a2;
  *(a3 + 160) = v10;
  result = *(a2 + 32);
  v12 = *(a2 + 48);
  *(a3 + 176) = result;
  *(a3 + 192) = v12;
  return result;
}

unint64_t _s21SwiftUITracingSupport11UnsafeArrayVAASzRzlE5zerosACyxGSi_tcfCSi_Tt0g5(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (HIDWORD(result))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (result)
  {
    v1 = 8 * result;
    v2 = swift_slowAlloc();
  }

  else
  {
    v2 = 0;
    v1 = 0;
  }

  bzero(v2, v1);
  return v2;
}

Swift::Void __swiftcall UnsafeTreeEditDistance.deallocate()()
{
  if ((*(v0 + 320) & 1) == 0)
  {
    v1 = *(v0 + 288);
    if (v1)
    {
      MEMORY[0x26D69EAB0](v1, -1, -1);
      *(v0 + 288) = 0;
    }
  }

  if ((*(v0 + 360) & 1) == 0)
  {
    v2 = *(v0 + 328);
    if (v2)
    {
      MEMORY[0x26D69EAB0](v2, -1, -1);
      *(v0 + 328) = 0;
    }
  }
}

uint64_t (*UnsafeTreeEditDistance.DiffPair.second.modify(uint64_t a1, uint64_t a2))()
{
  result = EventTreeStats.count.modify;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t static UnsafeTreeEditDistance.DiffPair.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for UnsafeTreeEditDistance.DiffPair() + 36);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t UnsafeTreeEditDistance.DiffPair.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  dispatch thunk of Hashable.hash(into:)();
  v6 = v2 + *(a2 + 36);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int UnsafeTreeEditDistance.DiffPair.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  dispatch thunk of Hashable.hash(into:)();
  v5 = v1 + *(a1 + 36);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UnsafeTreeEditDistance<A>.DiffPair(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  UnsafeTreeEditDistance.DiffPair.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t (*protocol witness for Pair.first.modify in conformance UnsafeTreeEditDistance<A>.DiffPair(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = UnsafeTreeEditDistance.DiffPair.first.modify();
  return protocol witness for AMortalReference.ref.modify in conformance MortalReference<A>;
}

uint64_t (*protocol witness for Pair.second.modify in conformance UnsafeTreeEditDistance<A>.DiffPair(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = UnsafeTreeEditDistance.DiffPair.second.modify(v4, a2);
  return protocol witness for AMortalReference.interval.modify in conformance MortalReference<A>;
}

_DWORD *UnsafeTreeEditDistance.Node.init(ref:postOrder:)@<X0>(_DWORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

double UnsafeTreeEditDistance.Tree.tree.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 24) = v3;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

__n128 UnsafeTreeEditDistance.Tree.tree.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  *(v1 + 32) = *(a1 + 32);
  return result;
}

uint64_t UnsafeTreeEditDistance.Tree.postOrder.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t UnsafeTreeEditDistance.Tree.postOrder.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2;
  return result;
}

uint64_t UnsafeTreeEditDistance.Tree.orders.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t UnsafeTreeEditDistance.Tree.orders.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2;
  return result;
}

uint64_t UnsafeTreeEditDistance.Tree.leftMostLeaf.getter()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  return result;
}

uint64_t UnsafeTreeEditDistance.Tree.leftMostLeaf.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 72) = result;
  *(v3 + 80) = a2;
  *(v3 + 88) = a3 & 1;
  return result;
}

uint64_t UnsafeTreeEditDistance.Tree.keyRoots.getter()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  return result;
}

uint64_t UnsafeTreeEditDistance.Tree.keyRoots.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 96) = result;
  *(v3 + 104) = a2;
  *(v3 + 112) = a3 & 1;
  return result;
}

uint64_t $defer #1 <A>() in UnsafeTreeEditDistance.Tree.init(tree:)(uint64_t *a1)
{
  v2 = *a1;
  type metadata accessor for UnsafeTreeEditDistance.Node();
  v3 = type metadata accessor for UnsafeArray();
  v4 = _sSp21SwiftUITracingSupportRi_zrlE7nullPtrSpyxGvgZ();
  if (v2 == v4)
  {
    _StringGuts.grow(_:)(25);
    MEMORY[0x26D69CDB0](0xD000000000000017, 0x800000026C33B600);
    type metadata accessor for Unique();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v5 = v4;
    UnsafeMutablePointer.deinitialize(count:)();
    result = MEMORY[0x26D69D370](v2, v3);
    *a1 = v5;
  }

  return result;
}

uint64_t closure #1 in UnsafeTreeEditDistance.Tree.init(tree:)(int *a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  v8 = **a4;
  v20 = *a1;
  v9 = type metadata accessor for UnsafeTreeNodeRef.Typed();
  v10 = v8 + 80 * UnsafeTreeNodeRef.Typed.rawValue.getter();
  v21 = *(v10 + 56);
  v23 = *(v10 + 64);
  type metadata accessor for UnsafeArray();
  swift_getWitnessTable();
  v11 = Sequence.reversed()();
  result = MEMORY[0x26D69D060](v11, v9);
  if (result)
  {
    if (!__OFADD__(*(a3 + 64), 1))
    {
      v18 = a5;
      v19 = a2;
      v13 = 0;
      v14 = *(a3 + 80);
      while (1)
      {
        IsNativeType = Array._hoistableIsNativeTypeChecked()();
        result = Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (!IsNativeType)
        {
          break;
        }

        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_12;
        }

        v17 = v14 + v13 + 1;
        if (__OFADD__(v14 + v13, 1))
        {
          goto LABEL_13;
        }

        v22 = *(v11 + 4 * v13 + 32);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSiSgMd, &_sSiSgMR);
        swift_getTupleTypeMetadata3();
        type metadata accessor for Array();
        Array.append(_:)();
        ++v13;
        if (v16 == MEMORY[0x26D69D060](v11, v9))
        {

          *(a3 + 80) = v17;
          a5 = v18;
          a2 = v19;
          goto LABEL_10;
        }
      }

      result = _ArrayBuffer._getElementSlowPath(_:)();
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_10:
    *a2 = *(*a5 + 12);
    *(a2 + 8) = 0;
  }

  return result;
}

void closure #2 in UnsafeTreeEditDistance.Tree.init(tree:)(unsigned int *a1, uint64_t *a2, uint64_t a3, void **a4, uint64_t **a5)
{
  v5 = *a1;
  if (a2[1])
  {
    goto LABEL_13;
  }

  v7 = *a2;
  v8 = *a4;
  v9 = *(*a4 + 3);
  if (*a2 > v9)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = *v8;
  v12 = *(v8 + 2);
  v13 = type metadata accessor for UnsafeTreeEditDistance.Node();
  if (UnsafeArray.capacity.getter(v11, v12) == v9)
  {
    type metadata accessor for UnsafeArray();
    UnsafeArray.growToCapacity(_:)(2 * v9);
  }

  v14 = *v8;
  if (!*v8)
  {
    goto LABEL_14;
  }

  v15 = *(v8 + 3);
  v19 = v5;
  v20 = v7;
  v21 = v9;
  _sSpsRi_zrlE10initialize2toyxn_tF(&v19, v14 + 24 * v15, v13);
  if (v15 == -1)
  {
    goto LABEL_11;
  }

  *(v8 + 3) = v15 + 1;
  v16 = **a5;
  v17 = *(*a5 + 3);
  v18 = UnsafeArray.endIndex.getter(**a4, (*a4)[1], v13);
  if (v5 >= v17)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v16)
  {
    *(v16 + 8 * v5) = v18;
    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t UnsafeTreeEditDistance.Tree.keyroots(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = a2;
  v7 = HIDWORD(a2);
  v43 = *v3;
  v8 = *(v3 + 56);
  v45 = *(v3 + 68);
  v9 = MEMORY[0x277D84F90];
  v10 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA7TreeRefV_SayAHGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v12 = v11;
  v53 = v10;
  v13 = HIDWORD(v11);
  v54 = v11;
  v14 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA7TreeRefV_SayAHGTt0g5Tf4g_n(v9);
  v16 = v15;
  v17 = HIDWORD(v15);
  v51 = v14;
  v52 = v15;
  v49 = a1;
  v50 = __PAIR64__(v7, v5);
  v44 = v7;
  v41 = *(a3 + 24);
  v42 = *(a3 + 16);
  type metadata accessor for UnsafeTreeEditDistance.Node();
  v18 = type metadata accessor for UnsafeArray();
  WitnessTable = swift_getWitnessTable();
  result = ArrayLike.lastIndex.getter(v18, WitnessTable);
  if (v13 == v12)
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v12);
  }

  v21 = v53;
  if (!v53)
  {
    goto LABEL_51;
  }

  v22 = HIDWORD(v54);
  *(v53 + HIDWORD(v54)) = v46;
  v23 = v22 + 1;
  if (v22 == -1)
  {
    goto LABEL_45;
  }

  HIDWORD(v54) = v22 + 1;
  if (v17 == v16)
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v16);
  }

  v24 = v51;
  if (!v51)
  {
    goto LABEL_52;
  }

  v25 = HIDWORD(v52);
  v51[HIDWORD(v52)] = v7 - 1;
  LODWORD(v26) = v25 + 1;
  if (v25 == -1)
  {
    goto LABEL_46;
  }

  HIDWORD(v52) = v25 + 1;
  v40 = a1;
LABEL_11:
  v27 = v24[v26 - 1];
  if (v27 >= v44)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (a1)
  {
    v26 = (v26 - 1);
    v28 = *v43;
    LODWORD(v49) = *(a1 + 24 * v27);
    type metadata accessor for UnsafeTreeNodeRef.Typed();
    v29 = v28 + 80 * UnsafeTreeNodeRef.Typed.rawValue.getter();
    v30 = *(v29 + 64);
    v49 = *(v29 + 56);
    v50 = v30;
    v31 = type metadata accessor for UnsafeArray();
    v32 = swift_getWitnessTable();
    MEMORY[0x26D69CEE0](&v46, v31, v32);
    type metadata accessor for EnumeratedSequence();
    EnumeratedSequence.makeIterator()();
    type metadata accessor for EnumeratedSequence.Iterator();
    v33 = 2 * v26;
    do
    {
      result = EnumeratedSequence.Iterator.next()();
      if (v48)
      {
        a1 = v40;
        if (v26)
        {
          goto LABEL_11;
        }

        goto LABEL_37;
      }

      v34 = v47;
      if (v46 < 1)
      {
        if (v47 >= v45)
        {
          goto LABEL_42;
        }

        if (!v8)
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (v47 >= v45)
        {
          goto LABEL_39;
        }

        if (!v8)
        {
          goto LABEL_47;
        }

        v35 = *(v8 + 8 * v47);
        if (v23 == v54)
        {
          v36 = 2 * v23;
          if (!v23)
          {
            v36 = 1;
          }

          if (HIDWORD(v36))
          {
            goto LABEL_43;
          }

          LODWORD(v54) = v36;
          result = realloc(v21, 8 * v36);
          if (!result)
          {
            goto LABEL_49;
          }

          v21 = result;
          v53 = result;
        }

        *(v21 + v23) = v35;
        if (__CFADD__(v23++, 1))
        {
          goto LABEL_40;
        }

        HIDWORD(v54) = v23;
      }

      v38 = *(v8 + 8 * v34);
      if (v26 == v52)
      {
        if (v52)
        {
          v39 = v33;
        }

        else
        {
          v39 = 1;
        }

        if (HIDWORD(v39))
        {
          goto LABEL_41;
        }

        LODWORD(v52) = v39;
        result = realloc(v24, 8 * v39);
        if (!result)
        {
          __break(1u);
LABEL_37:
          specialized MutableCollection<>.sort(by:)(&v53);
          MEMORY[0x26D69EAB0](v24, -1, -1);
          return v21;
        }

        v24 = result;
        v51 = result;
      }

      v24[v26++] = v38;
      v33 += 2;
    }

    while (v26 != 0x100000000);
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

Swift::Void __swiftcall UnsafeTreeEditDistance.Tree.deallocate()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  type metadata accessor for UnsafeTreeEditDistance.Node();
  type metadata accessor for UnsafeArray();
  UnsafeArray.deallocate()();
  if (*(v1 + 88))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v4 = *(v1 + 72);
  if (v4)
  {
    MEMORY[0x26D69EAB0](v4, -1, -1);
    *(v1 + 72) = 0;
  }

  if (*(v1 + 112))
  {
    goto LABEL_9;
  }

  v5 = *(v1 + 96);
  if (v5)
  {
    MEMORY[0x26D69EAB0](v5, -1, -1);
    *(v1 + 96) = 0;
  }
}

uint64_t UnsafeTreeEditDistance.distance(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[1];
  if (*(a1 + 4))
  {
    v6 = *v3;
  }

  else
  {
    v6 = v3[1];
  }

  if ((*(a1 + 4) & 1) == 0 && (*(a2 + 4) & 1) == 0)
  {
    v7 = v3[2];
    v8 = *a2;
    v9 = *a1;
    v14 = *v3;
    v15 = v5;
    v16 = v7;
    memcpy(v17, v3 + 3, sizeof(v17));
    v12 = v8;
    v13 = v9;
    if (UnsafeTreeEditDistance.equivalent(baseline:candidate:)(&v13, &v12, a3))
    {
      return 0;
    }

    else
    {
      return v7;
    }
  }

  return v6;
}

BOOL UnsafeTreeEditDistance.equivalent(baseline:candidate:)(int *a1, int *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(v3 + 24);
  v6 = *(v3 + 144);
  v7 = *v5;
  v22 = *a1;
  v8 = *(a3 + 16);
  v9 = *(a3 + 24);
  v10 = type metadata accessor for UnsafeTreeNodeRef.Typed();
  v11 = *(v7 + 80 * (UnsafeTreeNodeRef.Typed.rawValue.getter)());
  v12 = v5[2];
  type metadata accessor for UnsafeTree.Symbol.Ref();
  v13 = UnsafeTree.Symbol.Ref.rawValue.getter();
  v14 = type metadata accessor for UnsafeTree.Symbol();
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 72);
  v17 = *(v12 + v16 * v13 + *(v14 + 44));
  v18 = *v6;
  v19 = UnsafeTreeNodeRef.Typed.rawValue.getter(v10);
  v20 = v6[2];
  v23 = *(v18 + 80 * v19);
  return v17 == *(v20 + v16 * UnsafeTree.Symbol.Ref.rawValue.getter() + *(v15 + 52));
}

Swift::Int __swiftcall UnsafeTreeEditDistance.distance(_:_:)(Swift::Int_optional a1, Swift::Int_optional a2)
{
  v4 = v3[1];
  v24 = *v3;
  v25 = v4;
  v5 = v3[3];
  v26 = v3[2];
  v27 = v5;
  v6 = *(v3 + 8);
  v8 = *(v3 + 18);
  v7 = *(v3 + 19);
  v9 = v3[10];
  v35 = v3[9];
  v36 = v9;
  v10 = v3[6];
  v31 = v3[5];
  v32 = v10;
  v11 = v3[8];
  v33 = v3[7];
  v34 = v11;
  v13 = *(v3 + 22);
  v12 = *(v3 + 23);
  v14 = *(v3 + 344);
  v49 = *(v3 + 328);
  v50 = v14;
  v15 = *(v3 + 280);
  v45 = *(v3 + 264);
  v46 = v15;
  v16 = *(v3 + 312);
  v18 = *(v3 + 48);
  v17 = *(v3 + 49);
  v47 = *(v3 + 296);
  v48 = v16;
  v51 = *(v3 + 360);
  v44 = *(v3 + 248);
  v41 = *(v3 + 200);
  v42 = *(v3 + 216);
  v43 = *(v3 + 232);
  v28 = v6;
  v29 = v8;
  v30 = v7;
  v37 = v13;
  v38 = v12;
  v39 = v18;
  v40 = v17;
  if (a1.is_nil)
  {
    goto LABEL_10;
  }

  if (v7 <= a1.value)
  {
    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v22 = *(v6 + 24 * a1.value);
  v23 = 0;
  if (a2.is_nil)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v17 <= a2.value)
  {
    goto LABEL_9;
  }

  if (!v12)
  {
LABEL_13:
    __break(1u);
    return a1.value;
  }

  v20 = *(v12 + 24 * a2.value);
  v21 = 0;
  a1.value = UnsafeTreeEditDistance.distance(_:_:)(&v22, &v20, v2);
  return a1.value;
}

void UnsafeTreeEditDistance.forestDistance(_:_:tree:forest:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (*(v5 + 112))
  {
LABEL_180:
    __break(1u);
    goto LABEL_181;
  }

  if (a1 >= HIDWORD(*(v5 + 104)))
  {
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
    goto LABEL_165;
  }

  v7 = *(v5 + 96);
  if (!v7)
  {
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  v8 = *(v5 + 104);
  if (*(v5 + 232))
  {
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  if (a2 >= HIDWORD(*(v5 + 224)))
  {
    goto LABEL_164;
  }

  v10 = *(v5 + 216);
  if (v10)
  {
    v11 = *(v5 + 224);
    v102 = *(v7 + 8 * a1);
    v12 = a1 - v102;
    if (!__OFSUB__(a1, v102))
    {
      if (!__OFADD__(v12, 2))
      {
        v105 = *(v10 + 8 * a2);
        v13 = a2 - v105;
        if (!__OFSUB__(a2, v105))
        {
          if (!__OFADD__(v13, 2))
          {
            v106 = a2 - v105;
            UnsafeTable.zero(rows:columns:)(v12 + 2, v13 + 2);
            if (v12 <= 0x7FFFFFFFFFFFFFFELL)
            {
              v15 = 0;
              v96 = v12 + 1;
              v16 = *a4;
              v17 = *(a4 + 12);
              v18 = *(a4 + 24);
              v19 = a2 - v105;
              v20 = v10;
              do
              {
                v21 = v15 * v18;
                if ((v15 * v18) >> 64 != (v15 * v18) >> 63)
                {
LABEL_141:
                  __break(1u);
LABEL_142:
                  __break(1u);
LABEL_143:
                  __break(1u);
LABEL_144:
                  __break(1u);
LABEL_145:
                  __break(1u);
LABEL_146:
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
                  __break(1u);
LABEL_158:
                  __break(1u);
LABEL_159:
                  __break(1u);
LABEL_160:
                  __break(1u);
LABEL_161:
                  __break(1u);
LABEL_162:
                  __break(1u);
                  goto LABEL_163;
                }

                if (v21 >= v17)
                {
                  goto LABEL_142;
                }

                if (!v16)
                {
                  goto LABEL_178;
                }

                v22 = v16[v21];
                v23 = v6[1];
                v24 = v22 + v23;
                if (__OFADD__(v22, v23))
                {
                  goto LABEL_143;
                }

                v25 = v15 + 1;
                v26 = (v15 + 1) * v18;
                if (((v15 + 1) * v18) >> 64 != v26 >> 63)
                {
                  goto LABEL_144;
                }

                if (v26 >= v17)
                {
                  goto LABEL_145;
                }

                v16[v26] = v24;
                if (v12 == v15)
                {
                  goto LABEL_23;
                }

                ++v15;
              }

              while (!__OFADD__(v25, 1));
              __break(1u);
LABEL_23:
              if (v106 <= 0x7FFFFFFFFFFFFFFELL)
              {
                v27 = *v6;
                v28 = *v16 + *v6;
                v29 = v105;
                if (!__OFADD__(*v16, *v6))
                {
                  v30 = a2 == v105;
                  v31 = v16 + 1;
                  v32 = ~v105 + a2;
                  v33 = v17 - 1;
                  while (v33)
                  {
                    *v31 = v28;
                    if (v30)
                    {
                      goto LABEL_31;
                    }

                    v30 = v32 == 0;
                    v34 = *v31++;
                    --v32;
                    --v33;
                    v28 = v34 + v27;
                    if (__OFADD__(v34, v27))
                    {
                      goto LABEL_30;
                    }
                  }

                  goto LABEL_146;
                }

LABEL_30:
                __break(1u);
LABEL_31:
                v35 = 0;
                v36 = 0;
                v37 = 0;
                v38 = a3;
                __src = v6;
                v39 = 1;
                v40 = v102;
                v41 = v8;
                v42 = v11;
                v98 = v18;
                v99 = v16;
                v100 = v17;
                while (2)
                {
                  v43 = v39;
                  v44 = 0;
                  v45 = v39 - 1;
                  v46 = v45 + v40;
                  v47 = v45 * v18;
                  v48 = (v45 * v18) >> 64 != (v45 * v18) >> 63;
                  v49 = v43 * v18;
                  v50 = (v43 * v18) >> 64 != (v43 * v18) >> 63;
                  v97 = v43;
                  v51 = v43 + v40;
                  v52 = __OFADD__(v43, v40);
                  v53 = v51 - 1;
                  v54 = __OFSUB__(v51, 1);
                  v113 = v54;
                  v110 = v47;
                  v108 = (v43 * v18) >> 64 != (v43 * v18) >> 63;
                  v109 = v48;
                  v107 = v52;
                  v112 = v53;
                  while (2)
                  {
                    if (v37)
                    {
                      goto LABEL_171;
                    }

                    if (v46 >= HIDWORD(v41))
                    {
                      __break(1u);
LABEL_114:
                      __break(1u);
LABEL_115:
                      __break(1u);
LABEL_116:
                      __break(1u);
LABEL_117:
                      __break(1u);
LABEL_118:
                      __break(1u);
LABEL_119:
                      __break(1u);
LABEL_120:
                      __break(1u);
LABEL_121:
                      __break(1u);
LABEL_122:
                      __break(1u);
LABEL_123:
                      __break(1u);
LABEL_124:
                      __break(1u);
LABEL_125:
                      __break(1u);
LABEL_126:
                      __break(1u);
LABEL_127:
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
LABEL_135:
                      __break(1u);
LABEL_136:
                      __break(1u);
LABEL_137:
                      __break(1u);
LABEL_138:
                      __break(1u);
LABEL_139:
                      __break(1u);
LABEL_140:
                      __break(1u);
                      goto LABEL_141;
                    }

                    if (!v7)
                    {
                      goto LABEL_172;
                    }

                    v55 = v44 + 1;
                    if (*(v7 + 8 * v46) == v40)
                    {
                      if (v36)
                      {
                        goto LABEL_176;
                      }

                      v56 = v44 + v29;
                      if (__OFADD__(v44, v29))
                      {
                        goto LABEL_139;
                      }

                      if (v56 >= HIDWORD(v42))
                      {
                        goto LABEL_140;
                      }

                      if (!v20)
                      {
                        goto LABEL_177;
                      }

                      if (*(v20 + 8 * v56) == v29)
                      {
                        if (v48)
                        {
                          goto LABEL_147;
                        }

                        v57 = v47 + v55;
                        if (__OFADD__(v47, v55))
                        {
                          goto LABEL_148;
                        }

                        if (v57 >= v17)
                        {
                          goto LABEL_149;
                        }

                        v58 = v16[v57];
                        v59 = v58 + v23;
                        if (__OFADD__(v58, v23))
                        {
                          goto LABEL_150;
                        }

                        if (v50)
                        {
                          goto LABEL_151;
                        }

                        v60 = v49 + v44;
                        if (__OFADD__(v49, v44))
                        {
                          goto LABEL_152;
                        }

                        if (v60 >= v17)
                        {
                          goto LABEL_153;
                        }

                        v61 = v16[v60];
                        v62 = v61 + v27;
                        if (__OFADD__(v61, v27))
                        {
                          goto LABEL_154;
                        }

                        v63 = v47 + v44;
                        if (__OFADD__(v47, v44))
                        {
                          goto LABEL_155;
                        }

                        if (v63 >= v17)
                        {
                          goto LABEL_156;
                        }

                        v64 = v49;
                        v111 = v16[v63];
                        memcpy(__dst, __src, 0x169uLL);
                        memcpy(v115, __src, sizeof(v115));
                        v118.value = v46;
                        v118.is_nil = 0;
                        v119.value = v56;
                        v119.is_nil = 0;
                        v65 = UnsafeTreeEditDistance.distance(_:_:)(v118, v119);
                        memcpy(v117, v115, 0x169uLL);
                        v66 = *(a5 - 8);
                        (*(v66 + 16))(v114, __dst, a5);
                        (*(v66 + 8))(v117, a5);
                        if (__OFADD__(v111, v65))
                        {
                          goto LABEL_157;
                        }

                        if (v62 >= v59)
                        {
                          v67 = v59;
                        }

                        else
                        {
                          v67 = v62;
                        }

                        if (v111 + v65 >= v67)
                        {
                          v68 = v67;
                        }

                        else
                        {
                          v68 = v111 + v65;
                        }

                        v69 = v64 + v55;
                        v29 = v105;
                        if (__OFADD__(v64, v55))
                        {
                          goto LABEL_158;
                        }

                        v17 = v100;
                        if (v69 >= v100)
                        {
                          goto LABEL_159;
                        }

                        v16 = v99;
                        v99[v69] = v68;
                        v38 = a3;
                        v70 = *(a3 + 24);
                        v71 = v46 * v70;
                        if ((v46 * v70) >> 64 != (v46 * v70) >> 63)
                        {
                          goto LABEL_160;
                        }

                        v72 = v71 + v56;
                        if (__OFADD__(v71, v56))
                        {
                          goto LABEL_161;
                        }

                        if (v72 >= *(a3 + 12))
                        {
                          goto LABEL_162;
                        }

                        if (!*a3)
                        {
                          goto LABEL_179;
                        }

                        v49 = v64;
                        v7 = __dst[12];
                        v41 = __dst[13];
                        v37 = __dst[14];
                        v20 = __dst[27];
                        v42 = __dst[28];
                        v35 = __dst[29];
                        v23 = __dst[1];
                        v27 = __dst[0];
                        *(*a3 + 8 * v72) = v68;
                        v36 = v35;
                        v40 = v102;
                        v19 = v106;
                        v18 = v98;
                        v47 = v110;
                        v50 = v108;
                        v48 = v109;
                        v52 = v107;
                        v53 = v112;
                        if (v106 == v44)
                        {
                          goto LABEL_32;
                        }

LABEL_109:
                        ++v44;
                        if (__OFADD__(v55, 1))
                        {
                          __break(1u);
                          return;
                        }

                        continue;
                      }

                      v35 = 0;
                      v53 = v112;
                    }

                    break;
                  }

                  if (v48)
                  {
                    goto LABEL_114;
                  }

                  v73 = v47 + v55;
                  if (__OFADD__(v47, v55))
                  {
                    goto LABEL_115;
                  }

                  if (v73 >= v17)
                  {
                    goto LABEL_116;
                  }

                  v74 = v16[v73];
                  v75 = __OFADD__(v74, v23);
                  v76 = v74 + v23;
                  if (v75)
                  {
                    goto LABEL_117;
                  }

                  if (v50)
                  {
                    goto LABEL_118;
                  }

                  v77 = v49 + v44;
                  if (__OFADD__(v49, v44))
                  {
                    goto LABEL_119;
                  }

                  if (v77 >= v17)
                  {
                    goto LABEL_120;
                  }

                  v78 = v16[v77];
                  v75 = __OFADD__(v78, v27);
                  v79 = v78 + v27;
                  if (v75)
                  {
                    goto LABEL_121;
                  }

                  if (v52)
                  {
                    goto LABEL_122;
                  }

                  if (v113)
                  {
                    goto LABEL_123;
                  }

                  if (v53 >= HIDWORD(v41))
                  {
                    goto LABEL_124;
                  }

                  v80 = *(v7 + 8 * v53);
                  v75 = __OFSUB__(v80, v40);
                  v81 = v80 - v40;
                  if (v75)
                  {
                    goto LABEL_125;
                  }

                  if (v35)
                  {
                    goto LABEL_173;
                  }

                  v82 = v55 + v29;
                  if (__OFADD__(v55, v29))
                  {
                    goto LABEL_126;
                  }

                  v75 = __OFSUB__(v82, 1);
                  v83 = v82 - 1;
                  if (v75)
                  {
                    goto LABEL_127;
                  }

                  if (v83 >= HIDWORD(v42))
                  {
                    goto LABEL_128;
                  }

                  if (!v20)
                  {
                    goto LABEL_174;
                  }

                  v84 = *(v20 + 8 * v83);
                  v75 = __OFSUB__(v84, v29);
                  v85 = v84 - v29;
                  if (v75)
                  {
                    goto LABEL_129;
                  }

                  v86 = v81 * v18;
                  if ((v81 * v18) >> 64 != (v81 * v18) >> 63)
                  {
                    goto LABEL_130;
                  }

                  v87 = v86 + v85;
                  if (__OFADD__(v86, v85))
                  {
                    goto LABEL_131;
                  }

                  if (v87 >= v17)
                  {
                    goto LABEL_132;
                  }

                  v88 = *(v38 + 24);
                  v89 = v53 * v88;
                  if ((v53 * v88) >> 64 != (v53 * v88) >> 63)
                  {
                    goto LABEL_133;
                  }

                  v75 = __OFADD__(v89, v83);
                  v90 = v89 + v83;
                  if (v75)
                  {
                    goto LABEL_134;
                  }

                  if (v90 >= *(v38 + 12))
                  {
                    goto LABEL_135;
                  }

                  if (!*v38)
                  {
                    goto LABEL_175;
                  }

                  v91 = v16[v87];
                  v92 = *(*v38 + 8 * v90);
                  v75 = __OFADD__(v91, v92);
                  v93 = v91 + v92;
                  if (v75)
                  {
                    goto LABEL_136;
                  }

                  if (v79 < v76)
                  {
                    v76 = v79;
                  }

                  if (v93 >= v76)
                  {
                    v94 = v76;
                  }

                  else
                  {
                    v94 = v93;
                  }

                  v95 = v49 + v55;
                  if (__OFADD__(v49, v55))
                  {
                    goto LABEL_137;
                  }

                  if (v95 >= v17)
                  {
                    goto LABEL_138;
                  }

                  v35 = 0;
                  v37 = 0;
                  v16[v95] = v94;
                  if (v19 == v44)
                  {
LABEL_32:
                    v39 = v97 + 1;
                    if (v97 == v96)
                    {
                      return;
                    }

                    continue;
                  }

                  goto LABEL_109;
                }
              }

              goto LABEL_170;
            }

LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
            goto LABEL_180;
          }

LABEL_168:
          __break(1u);
          goto LABEL_169;
        }

LABEL_167:
        __break(1u);
        goto LABEL_168;
      }

LABEL_166:
      __break(1u);
      goto LABEL_167;
    }

LABEL_165:
    __break(1u);
    goto LABEL_166;
  }

LABEL_183:
  __break(1u);
}

Swift::Int __swiftcall UnsafeTreeEditDistance.treeEditDistance()()
{
  if (*(v1 + 272) != 1)
  {
    return *(v1 + 264);
  }

  v2 = *(v1 + 76);
  v3 = *(v1 + 196);
  if ((*(v1 + 76) * *(v1 + 196)) >> 64 != (v2 * v3) >> 63)
  {
    __break(1u);
    goto LABEL_23;
  }

  v4 = result;
  *(v1 + 288) = _s21SwiftUITracingSupport11UnsafeArrayVAASzRzlE5zerosACyxGSi_tcfCSi_Tt0g5(v2 * v3);
  *(v1 + 296) = v5;
  *(v1 + 304) = v2;
  *(v1 + 312) = v3;
  *(v1 + 320) = 0;
  result = _s21SwiftUITracingSupport11UnsafeArrayVAASzRzlE5zerosACyxGSi_tcfCSi_Tt0g5(v2 * v3);
  *(v1 + 328) = result;
  *(v1 + 336) = v6;
  *(v1 + 344) = v2;
  *(v1 + 352) = v3;
  *(v1 + 360) = 0;
  if (*(v1 + 320))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v8 = *(v1 + 304);
  v7 = *(v1 + 312);
  v10 = *(v1 + 288);
  v9 = *(v1 + 296);
  v11 = HIDWORD(v9);
  v45[0] = v10;
  v45[1] = v9;
  v45[2] = v8;
  v45[3] = v7;
  v41 = result;
  v42 = v6;
  v43 = v2;
  v44 = v3;
  if (*(v1 + 136))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v12 = HIDWORD(*(v1 + 128));
  v13 = v3;
  v14 = v2;
  if (!v12)
  {
LABEL_17:
    *(v1 + 288) = v10;
    *(v1 + 296) = v9;
    *(v1 + 304) = v8;
    *(v1 + 312) = v7;
    *(v1 + 320) = 0;
    v21 = v7;
    v22 = v42;
    *(v1 + 328) = result;
    *(v1 + 336) = v22;
    *(v1 + 344) = v14;
    *(v1 + 352) = v13;
    *(v1 + 360) = 0;
    v39 = *(v1 + 64);
    v40 = *(v1 + 72);
    v23 = *(v4 + 16);
    v24 = *(v4 + 24);
    type metadata accessor for UnsafeTreeEditDistance.Node();
    v25 = type metadata accessor for UnsafeArray();
    WitnessTable = swift_getWitnessTable();
    ArrayLike.lastIndex.getter(v25, WitnessTable);
    v36 = *(v1 + 184);
    v37 = *(v1 + 192);
    result = ArrayLike.lastIndex.getter(v25, WitnessTable);
    v27 = v38 * v21;
    if ((v38 * v21) >> 64 == (v38 * v21) >> 63)
    {
      v28 = __OFADD__(v27, v35);
      v29 = v27 + v35;
      if (!v28)
      {
        if (v29 < v11)
        {
          if (v10)
          {
            result = *(v10 + 8 * v29);
            *(v1 + 264) = result;
            *(v1 + 272) = 0;
            return result;
          }

          goto LABEL_30;
        }

        goto LABEL_25;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v30 = v9;
  v31 = v8;
  v32 = v7;
  v33 = HIDWORD(v9);
  v34 = v10;
  v15 = *(v1 + 120);
  if (v15)
  {
    v16 = 0;
    while ((*(v1 + 256) & 1) == 0)
    {
      v17 = HIDWORD(*(v1 + 248));
      if (v17)
      {
        v18 = *(v1 + 240);
        if (!v18)
        {
          goto LABEL_27;
        }

        v19 = *(v15 + 8 * v16);
        do
        {
          v20 = *v18++;
          UnsafeTreeEditDistance.forestDistance(_:_:tree:forest:)(v19, v20, v45, &v41, v4);
          --v17;
        }

        while (v17);
      }

      if (++v16 == v12)
      {
        result = v41;
        v14 = v43;
        v13 = v44;
        v10 = v34;
        v7 = v32;
        v11 = v33;
        v9 = v30;
        v8 = v31;
        goto LABEL_17;
      }
    }

    goto LABEL_26;
  }

LABEL_31:
  __break(1u);
  return result;
}

Swift::Void __swiftcall UnsafeTreeEditDistance.backtrack(_:_:)(Swift::Int a1, Swift::Int a2)
{
  if (*(v3 + 360))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v4 = *(v3 + 336);
  v46 = *(v3 + 328);
  *&v47[0] = v4;
  *(v47 + 8) = *(v3 + 344);
  if (*(v3 + 320))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v5 = v2;
  v8 = *(v3 + 296);
  *&v44 = *(v3 + 288);
  *(&v44 + 1) = v8;
  v45 = *(v3 + 304);
  v43[0] = *(v3 + 64);
  v43[1] = *(v3 + 72);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  type metadata accessor for UnsafeTreeEditDistance.Node();
  v11 = type metadata accessor for UnsafeArray();
  WitnessTable = swift_getWitnessTable();
  ArrayLike.lastIndex.getter(v11, WitnessTable);
  if (__dst[0] != a1 || (v43[0] = *(v3 + 184), v43[1] = *(v3 + 192), ArrayLike.lastIndex.getter(v11, WitnessTable), __dst[0] != a2))
  {
    UnsafeTreeEditDistance.forestDistance(_:_:tree:forest:)(a1, a2, &v44, &v46, v5);
  }

  if (__OFADD__(a1, 1))
  {
    goto LABEL_44;
  }

  v13 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (*(v3 + 112))
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (*(v3 + 108) <= a1)
  {
    goto LABEL_46;
  }

  v14 = *(v3 + 96);
  if (!v14)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (*(v3 + 232))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (*(v3 + 228) <= a2)
  {
    goto LABEL_47;
  }

  v37 = (v3 + 320);
  __src = v3;
  v15 = *(v3 + 216);
  if (v15)
  {
    v16 = *(v14 + 8 * a1);
    v17 = v46;
    v18 = *&v47[1];
    if (v16 >= a1 + 1 || (v19 = *(v15 + 8 * a2), v19 >= v13))
    {
LABEL_33:
      __src[41] = v17;
      *(__src + 21) = v47[0];
      __src[44] = v18;
      v37[40] = 0;
      v36 = v45;
      *(__src + 18) = v44;
      *(__src + 19) = v36;
      *v37 = 0;
      return;
    }

    v20 = v13 - v19;
    v21 = __OFSUB__(v13, v19);
    v38 = v21;
    v22 = DWORD1(v47[0]);
    while (1)
    {
      v23 = a1 + 1 - v16;
      if (__OFSUB__(a1 + 1, v16))
      {
        break;
      }

      if (v38)
      {
        goto LABEL_35;
      }

      v24 = v23 * v18;
      if ((v23 * v18) >> 64 != (v23 * v18) >> 63)
      {
        goto LABEL_36;
      }

      v25 = v24 + v20;
      if (__OFADD__(v24, v20))
      {
        goto LABEL_37;
      }

      if (v25 >= v22)
      {
        goto LABEL_38;
      }

      if (!v17)
      {
        goto LABEL_48;
      }

      v26 = *(v17 + 8 * v25);
      memcpy(__dst, __src, 0x169uLL);
      memcpy(v41, __src, sizeof(v41));
      v48.value = a1 + 1;
      v48.is_nil = 0;
      v49.value = 0;
      v49.is_nil = 1;
      v27 = UnsafeTreeEditDistance.distance(_:_:)(v48, v49);
      memcpy(v43, v41, 0x169uLL);
      v28 = *(v5 - 8);
      (*(v28 + 16))(v40, __dst, v5);
      (*(v28 + 8))(v43, v5);
      v29 = a1 - v16;
      if (__OFSUB__(a1, v16))
      {
        goto LABEL_39;
      }

      v30 = v29 * v18;
      if ((v29 * v18) >> 64 != (v29 * v18) >> 63)
      {
        goto LABEL_40;
      }

      v31 = __OFADD__(v30, v20);
      v32 = v30 + v20;
      if (v31)
      {
        goto LABEL_41;
      }

      if (v32 >= v22)
      {
        goto LABEL_42;
      }

      v33 = *(v17 + 8 * v32);
      v31 = __OFADD__(v27, v33);
      v34 = v27 + v33;
      if (v31)
      {
        goto LABEL_43;
      }

      if (v26 < v34)
      {
        goto LABEL_49;
      }

      if (v16 >= a1--)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
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
    goto LABEL_45;
  }

LABEL_55:
  __break(1u);
}

void *specialized UnsafeTreeEditDistance.Tree.leftMostLeaf(_:)(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = HIDWORD(a2);
  v26 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA7TreeRefV_SayAHGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v27 = v5;
  specialized UnsafeArray.growToCapacity(_:)(v4);
  v23 = a1;
  v24 = v2;
  v25 = v4;
  type metadata accessor for UnsafeTreeEditDistance.Node();
  v6 = type metadata accessor for UnsafeArray();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x26D69CEE0](v17, v6, WitnessTable);
  v21 = v17[0];
  v22 = v17[1];
  type metadata accessor for EnumeratedSequence();
  EnumeratedSequence.makeIterator()();
  type metadata accessor for EnumeratedSequence.Iterator();
  result = EnumeratedSequence.Iterator.next()();
  if (v20)
  {
    return v26;
  }

  v9 = v17[0];
  v10 = v18;
  v11 = v19;
  while (1)
  {
    v12 = __OFSUB__(v11, v10);
    v13 = v11 - v10;
    if (v12)
    {
      break;
    }

    v14 = v9 - v13;
    if (__OFSUB__(v9, v13))
    {
      goto LABEL_19;
    }

    v15 = HIDWORD(v27);
    if (HIDWORD(v27) == v27)
    {
      v16 = 2 * HIDWORD(v27);
      if (!HIDWORD(v27))
      {
        v16 = 1;
      }

      if (HIDWORD(v16))
      {
        goto LABEL_21;
      }

      LODWORD(v27) = v16;
      if (v26)
      {
        result = realloc(v26, 8 * v16);
        if (!result)
        {
          goto LABEL_23;
        }

        v26 = result;
      }

      else
      {
        result = swift_slowAlloc();
        v26 = result;
        if (!result)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      result = v26;
      if (!v26)
      {
        goto LABEL_22;
      }
    }

    *(result + v15) = v14;
    if (v15 == -1)
    {
      goto LABEL_20;
    }

    HIDWORD(v27) = v15 + 1;
    result = EnumeratedSequence.Iterator.next()();
    v9 = v17[0];
    v10 = v18;
    v11 = v19;
    if (v20 == 1)
    {
      return v26;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in UnsafeTreeEditDistance.Tree.init(tree:)(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return closure #1 in UnsafeTreeEditDistance.Tree.init(tree:)(a1, a2, a3, *(v3 + 32), *(v3 + 40));
}

void partial apply for closure #2 in UnsafeTreeEditDistance.Tree.init(tree:)(unsigned int *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  closure #2 in UnsafeTreeEditDistance.Tree.init(tree:)(a1, a2, a3, *(v3 + 32), *(v3 + 40));
}

uint64_t type metadata instantiation function for UnsafeTreeEditDistance()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for UnsafeTreeEditDistance(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 361))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 280);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for UnsafeTreeEditDistance(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 360) = 0;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 361) = 1;
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
      *(result + 280) = (a2 - 1);
      return result;
    }

    *(result + 361) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for UnsafeTreeEditDistance.DiffPair(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for UnsafeTreeEditDistance.DiffPair(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
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
        return (*(v4 + 48))();
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

char *storeEnumTagSinglePayload for UnsafeTreeEditDistance.DiffPair(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
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

uint64_t type metadata instantiation function for UnsafeTreeEditDistance.Node()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for UnsafeTreeEditDistance.Tree()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for UnsafeTreeEditDistance.Tree(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 113))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for UnsafeTreeEditDistance.Tree(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x2821FBCC8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = MEMORY[0x2821FBE90]();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.init(repeating:count:)(Swift::String repeating, Swift::Int count)
{
  v2 = MEMORY[0x2821FBF50](repeating._countAndFlagsBits, repeating._object, count);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t String.subscript.getter()
{
  return MEMORY[0x2821FBF68]();
}

{
  return MEMORY[0x2821FBFB0]();
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return MEMORY[0x2821FC138]();
}

{
  return MEMORY[0x2821FC188]();
}

{
  return MEMORY[0x2821FC190]();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return MEMORY[0x2821FC1B8]();
}

{
  return MEMORY[0x2821FC208]();
}

{
  return MEMORY[0x2821FC210]();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FD988]();
}

{
  return MEMORY[0x2821FD990]();
}

{
  return MEMORY[0x2821FD9A8]();
}

{
  return MEMORY[0x2821FD9F0]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA00]();
}

{
  return MEMORY[0x2821FDA08]();
}

{
  return MEMORY[0x2821FDA18]();
}

{
  return MEMORY[0x2821FDA58]();
}

{
  return MEMORY[0x2821FDA68]();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FDAC0]();
}

{
  return MEMORY[0x2821FDAC8]();
}

{
  return MEMORY[0x2821FDAE0]();
}

{
  return MEMORY[0x2821FDB00]();
}

{
  return MEMORY[0x2821FDB28]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB40]();
}

{
  return MEMORY[0x2821FDB48]();
}

{
  return MEMORY[0x2821FDB50]();
}

{
  return MEMORY[0x2821FDB58]();
}

{
  return MEMORY[0x2821FDB98]();
}

{
  return MEMORY[0x2821FDBA8]();
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)()
{
  return MEMORY[0x2821FDE60]();
}

{
  return MEMORY[0x2821FDE68]();
}
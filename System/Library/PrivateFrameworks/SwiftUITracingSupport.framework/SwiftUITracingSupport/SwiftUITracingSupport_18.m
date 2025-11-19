uint64_t specialized PType.Kind.init(rawValue:)(uint64_t result)
{
  if (result >= 9)
  {
    return 9;
  }

  else
  {
    return result;
  }
}

uint64_t _s21SwiftUITracingSupport16BufferAttachmentV7pointer8fileSizeACyxGSW_SitcfCSo11T_TypeFielda_Tt1g5Tf4nd_n(uint64_t a1, uint64_t a2)
{
  v4 = *(*(type metadata accessor for String.Encoding() - 8) + 64);
  result = MEMORY[0x28223BE20](a1);
  if (a1)
  {
    if (a2 - result >= -11)
    {
      if (!((a2 - result) % 12))
      {
        return result;
      }

      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
LABEL_7:
  v6 = result;
  _StringGuts.grow(_:)(80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferAttachmentVySo11T_TypeFieldaGMd, &_s21SwiftUITracingSupport16BufferAttachmentVySo11T_TypeFieldaGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferAttachmentVySo11T_TypeFieldaGmMd, &_s21SwiftUITracingSupport16BufferAttachmentVySo11T_TypeFieldaGmMR);
  v7 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v7);

  MEMORY[0x26D69CDB0](0x657A697320666F20, 0xE900000000000020);
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v8);

  MEMORY[0x26D69CDB0](0xD000000000000033, 0x800000026C33C2A0);
  MEMORY[0x26D69CDB0](0x6946657079545F54, 0xEB00000000646C65);
  MEMORY[0x26D69CDB0](0x657A697320666F20, 0xE900000000000020);
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v9);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  specialized Collection.prefix(_:)(40, v6, a2);
  static String.Encoding.utf8.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>, &_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
  v10 = String.init<A>(bytes:encoding:)();
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  MEMORY[0x26D69CDB0](v10, v12);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t specialized Attribute.add(displayName:type:within:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 168) == 1)
  {
    result = closure #1 in implicit closure #1 in Attribute.add(displayName:type:within:)(a3, v3, a1, a2);
  }

  else
  {
    result = *(v3 + 160);
  }

  if (*(v3 + 136))
  {
    goto LABEL_32;
  }

  v8 = *(v3 + 128);
  v9 = *a3;
  v10 = HIDWORD(v8);
  v11 = *(*a3 + 124);
  if (HIDWORD(v8) >= v11)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = *(v9 + 112);
  if (!v12)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  v13 = v8;
  v14 = v12 + 168 * HIDWORD(v8);
  if (v13 >= *(*v14 + 16))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = *v14 + 208 * v13;
  if (result >= *(v15 + 164))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v16 = *(v15 + 152);
  if (!v16)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v17 = v16 + 40 * result;
  v20 = *(v17 + 36);
  v18 = (v17 + 36);
  v19 = v20;
  if ((v20 & 0x40000000) == 0)
  {
    *v18 = v19 | 0x40000000;
    v11 = *(v9 + 124);
  }

  if (v10 >= v11)
  {
    goto LABEL_26;
  }

  if (v13 >= *(*v14 + 16))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21 = *v14 + 208 * v13;
  if (result >= *(v21 + 164))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v22 = *(v21 + 152);
  if (!v22)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v23 = v22 + 40 * result;
  v24 = *(v23 + 16);
  *(v23 + 8) = a1;
  *(v23 + 16) = a2;

  if (v10 >= *(v9 + 124))
  {
    goto LABEL_29;
  }

  v25 = *(v9 + 112);
  if (v25)
  {
    v26 = *(v25 + 168 * v10);
    if (v13 < *(v26 + 16))
    {
      v27 = *(v26 + 208 * v13 + 164);
      if (v27)
      {
        *(v3 + 160) = v27 - 1;
        *(v3 + 168) = 0;
        return result;
      }

      goto LABEL_31;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport16BufferAttachmentV7pointer8fileSizeACyxGSW_SitcfCSo13T_RawTreeNodea_Tt1g5Tf4nd_n(uint64_t a1, uint64_t a2)
{
  v4 = *(*(type metadata accessor for String.Encoding() - 8) + 64);
  result = MEMORY[0x28223BE20](a1);
  if (a1)
  {
    if (a2 - result >= -23)
    {
      if (!((a2 - result) % 24))
      {
        return result;
      }

      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
LABEL_7:
  v6 = result;
  _StringGuts.grow(_:)(80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferAttachmentVySo13T_RawTreeNodeaGMd, &_s21SwiftUITracingSupport16BufferAttachmentVySo13T_RawTreeNodeaGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferAttachmentVySo13T_RawTreeNodeaGmMd, &_s21SwiftUITracingSupport16BufferAttachmentVySo13T_RawTreeNodeaGmMR);
  v7 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v7);

  MEMORY[0x26D69CDB0](0x657A697320666F20, 0xE900000000000020);
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v8);

  MEMORY[0x26D69CDB0](0xD000000000000033, 0x800000026C33C2A0);
  MEMORY[0x26D69CDB0](0x6572547761525F54, 0xED000065646F4E65);
  MEMORY[0x26D69CDB0](0x657A697320666F20, 0xE900000000000020);
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v9);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  specialized Collection.prefix(_:)(40, v6, a2);
  static String.Encoding.utf8.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>, &_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
  v10 = String.init<A>(bytes:encoding:)();
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  MEMORY[0x26D69CDB0](v10, v12);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport16BufferAttachmentV7pointer8fileSizeACyxGSW_SitcfCSo15T_TreeValueNodea_Tt1g5Tf4nd_n(uint64_t a1, uint64_t a2)
{
  v4 = *(*(type metadata accessor for String.Encoding() - 8) + 64);
  result = MEMORY[0x28223BE20](a1);
  if (a1)
  {
    if (a2 - result >= -31)
    {
      if (((a2 - result) & 0x1F) == 0)
      {
        return result;
      }

      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
LABEL_7:
  v6 = result;
  _StringGuts.grow(_:)(80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferAttachmentVySo15T_TreeValueNodeaGMd, &_s21SwiftUITracingSupport16BufferAttachmentVySo15T_TreeValueNodeaGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferAttachmentVySo15T_TreeValueNodeaGmMd, &_s21SwiftUITracingSupport16BufferAttachmentVySo15T_TreeValueNodeaGmMR);
  v7 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v7);

  MEMORY[0x26D69CDB0](0x657A697320666F20, 0xE900000000000020);
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v8);

  MEMORY[0x26D69CDB0](0xD000000000000033, 0x800000026C33C2A0);
  MEMORY[0x26D69CDB0](0x6156656572545F54, 0xEF65646F4E65756CLL);
  MEMORY[0x26D69CDB0](0x657A697320666F20, 0xE900000000000020);
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v9);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  specialized Collection.prefix(_:)(40, v6, a2);
  static String.Encoding.utf8.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>, &_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
  v10 = String.init<A>(bytes:encoding:)();
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  MEMORY[0x26D69CDB0](v10, v12);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t partial apply for closure #3 in static TraceAddress.ref(_:within:)(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return closure #2 in static TraceAddress.rename(address:initialize:within:)(a1, v1[4], v1[5]);
}

void partial apply for closure #1 in static TraceAddress.ref(ifExists:within:)(uint64_t **a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  closure #1 in static TraceAddress.ref(ifExists:within:)(a1);
}

uint64_t partial apply for closure #3 in static TraceAddress.ref(ifExists:within:)(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return closure #3 in static TraceAddress.ref(ifExists:within:)(a1, v1[4], v1[5]);
}

uint64_t partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:)(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void specialized T_InstantiateEnd.model(within:)(unsigned __int8 *a1)
{
  v2 = type metadata accessor for TraceChunk(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 22);
  if (*(v6 + 32))
  {
    specialized T_Header.init()(v55);
  }

  else
  {
    outlined init with copy of TraceChunk(*(v6 + 24), v5);
    v7 = *(*v5 + 32);
    outlined destroy of TraceChunk(v5);
    specialized T_Header.init(loadedFrom:)(v7, v55);
  }

  v8 = &type metadata for Event.Instantiate;
  if (v56 > 0x40u)
  {
    goto LABEL_45;
  }

  v9 = (a1 + 56);
  v10 = *(a1 + 72);
  v57[0] = *(a1 + 56);
  v57[1] = v10;
  v58[0] = *(a1 + 88);
  *(v58 + 9) = *(a1 + 97);
  v11 = (a1 + 72);
  v12 = a1 + 84;
  v13 = (a1 + 104);
  while (1)
  {
    v14 = *v13;
    if (*v12)
    {
      v15 = *v11;
      if ((v15[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v14)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v57);
    }

    v11 = (v14 + 16);
    v12 = (v14 + 28);
    v13 = (v14 + 48);
    v9 = v14;
  }

  v16 = *v9;
  if (!v16)
  {
    goto LABEL_63;
  }

  v17 = *(*(v16 + 24 * *v15) + 112);
  if (!v17)
  {
    goto LABEL_55;
  }

  v18 = *(*(v17 + 32) + 8);
  v19 = *(v18 + 16);
  if (!v19)
  {
    goto LABEL_51;
  }

  if (a1[48])
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v20 = *a1;
  if (v20 >= *(v6 + 116))
  {
    goto LABEL_48;
  }

  v53 = v6;
  v21 = *(v6 + 104);
  if (!v21)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v22 = *(v18 + 32 + 48 * (v19 - 1));
  v23 = *(*(v21 + 8 * v20) + 8);
  v24 = *(v23 + 44);
  if (v22 >= v24)
  {
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

  v25 = *(v23 + 32);
  if (!v25)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v26 = v25 + (v22 << 7);
  v29 = *(v26 + 8);
  v28 = v26 + 8;
  v27 = v29;
  if (!*(v28 + 24))
  {
    goto LABEL_47;
  }

  if (*(v28 + 16))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (!v27)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v30 = *v27;
  if (!swift_conformsToProtocol2())
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v30 != &type metadata for Event.Instantiate && v30 != &type metadata for Event.Uninstantiate)
  {
    v32 = (v18 + 48 * v19 - 64);
    while (v19-- > 1)
    {
      v22 = *v32;
      if (v22 >= v24)
      {
        goto LABEL_46;
      }

      v34 = v25 + (v22 << 7);
      v37 = *(v34 + 8);
      v36 = v34 + 8;
      v35 = v37;
      if (!*(v36 + 24))
      {
        goto LABEL_47;
      }

      if (*(v36 + 16))
      {
        goto LABEL_53;
      }

      if (!v35)
      {
        goto LABEL_52;
      }

      v38 = *v35;
      if (!swift_conformsToProtocol2())
      {
        goto LABEL_54;
      }

      v32 -= 12;
      if (v38 == &type metadata for Event.Instantiate || v38 == &type metadata for Event.Uninstantiate)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_51;
  }

LABEL_39:
  if (a1[48])
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v40 = *a1;
  if (v40 >= *(v53 + 116))
  {
    goto LABEL_49;
  }

  v41 = *(v53 + 104);
  if (!v41)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v42 = *(*(v41 + 8 * v40) + 8);
  if (v22 >= *(v42 + 44))
  {
    goto LABEL_50;
  }

  v43 = *(v42 + 32);
  if (!v43)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v44 = v43 + (v22 << 7);
  v45 = *(v44 + 8);
  v46 = *(v44 + 16);
  v47 = *(v44 + 24);
  v48 = *(v44 + 25);
  v51 = v44 + 28;
  v50 = *(v44 + 28);
  v49 = *(v51 + 4);
  v54 = v47;
  v8 = HeterogeneousBuffer.type(at:)(0, v45, v46, v47, v49);
  if (swift_conformsToProtocol2())
  {
LABEL_45:
    Interpreter.Iterator.endInflight(_:)(v8);
    return;
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
}

uint64_t specialized T_BeginTrace.model(within:)(uint64_t result)
{
  v2 = result;
  v3 = (result + 56);
  v4 = *(result + 72);
  v73[0] = *(result + 56);
  v73[1] = v4;
  v74[0] = *(result + 88);
  v5 = result + 72;
  v6 = result + 84;
  v7 = (result + 88);
  v8 = (result + 104);
  *(v74 + 9) = *(result + 97);
  v9 = (result + 56);
  v10 = (result + 72);
  v11 = (result + 84);
  v12 = (result + 104);
  while (1)
  {
    v13 = *v12;
    if (*v11)
    {
      v14 = *v10;
      if ((v14[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v13)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v73);
    }

    v10 = (v13 + 16);
    v11 = (v13 + 28);
    v12 = (v13 + 48);
    v9 = v13;
  }

  v15 = *v9;
  if (!v15)
  {
    goto LABEL_71;
  }

  result = v15 + 24 * *v14;
  v16 = *(*result + 112);
  if (!v16)
  {
    goto LABEL_69;
  }

  if (*(v16 + 16))
  {
    v5 = *v2;
    v6 = v2[48];
    v17 = *(v2 + 22);
    v18 = v3[2];
    v71 = v3[1];
    v72[0] = v18;
    *(v72 + 9) = *(v3 + 41);
    v19 = v2 + 100;
    v20 = *(v2 + 29);
    v21 = v3;
    v22 = v7;
    v23 = v8;
    v70 = *v3;
    while (1)
    {
      v24 = *v23;
      if (v20 < *v19)
      {
        v25 = (*v22 + 8 * v20);
        if ((v25[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v24)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v20, 0, &v70);
      }

      v22 = (v24 + 32);
      v19 = (v24 + 44);
      v23 = (v24 + 48);
      v21 = v24;
    }

    v36 = *v21;
    if (!*v21)
    {
      goto LABEL_73;
    }

    v35 = *v25;
    i = 24;
    result = v36 + 24 * v35;
    if (!v6)
    {
      if (v5 >= *(v17 + 116))
      {
        __break(1u);
      }

      else
      {
        v26 = *(v17 + 104);
        if (!v26)
        {
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

        v27 = *(*result + 32);
        v28 = *(*(v26 + 8 * v5) + 8);
        if (*(v28 + 24) >= v27)
        {
          *(v28 + 16) = v27;
          if (v2[48])
          {
            return result;
          }

          goto LABEL_48;
        }
      }

      __break(1u);
      goto LABEL_68;
    }

    __break(1u);
  }

  else
  {
    v29 = v3[1];
    v70 = *v3;
    v71 = v29;
    v72[0] = v3[2];
    v1 = v2 + 100;
    v20 = *(v2 + 29);
    v17 = 8 * v20;
    *(v72 + 9) = *(v3 + 41);
    v30 = v8;
    v31 = v2 + 100;
    v32 = v7;
    for (i = v3; ; i = v34)
    {
      v34 = *v30;
      if (v20 < *v31)
      {
        v35 = (*v32 + v17);
        if ((v35[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v34)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v20, 0, &v70);
      }

      v32 = (v34 + 32);
      v31 = (v34 + 44);
      v30 = (v34 + 48);
    }
  }

  if (!*i)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  result = *i + 24 * *v35;
  v37 = *(*result + 32);
  v38 = v3[1];
  v68[0] = *v3;
  v68[1] = v38;
  v69[0] = v3[2];
  *(v69 + 9) = *(v3 + 41);
  v39 = v8;
  for (j = v3; ; j = v41)
  {
    v41 = *v39;
    if (*v6)
    {
      if ((*(*v5 + 4) & 1) == 0)
      {
        break;
      }
    }

    if (!v41)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v68);
    }

    v5 = (v41 + 2);
    v6 = v41 + 28;
    v39 = v41 + 6;
  }

  if (!*j)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  result = *j + 24 * **v5;
  v42 = *(*result + 112);
  if (!v42)
  {
    goto LABEL_72;
  }

  if (*(v42 + 24) < v37)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  *(v42 + 16) = v37;
  v43 = v3[1];
  v66[0] = *v3;
  v66[1] = v43;
  v67[0] = v3[2];
  *(v67 + 9) = *(v3 + 41);
  v44 = v8;
  v45 = v7;
  for (k = v3; ; k = v47)
  {
    v47 = *v44;
    if (v20 < *v1)
    {
      v48 = (*v45 + v17);
      if ((v48[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v47)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v20, 0, v66);
    }

    v45 = (v47 + 32);
    v1 = (v47 + 44);
    v44 = (v47 + 48);
  }

  if (!*k)
  {
    goto LABEL_76;
  }

  result = *k + 24 * *v48;
  *(*result + 40) = 1;
  if (v2[48])
  {
    return result;
  }

LABEL_48:
  if (v2[1] << 8 != 1024)
  {
    return result;
  }

  v49 = v3[1];
  v64[0] = *v3;
  v64[1] = v49;
  v65[0] = v3[2];
  v50 = v2 + 100;
  v51 = 8 * v20;
  *(v65 + 9) = *(v3 + 41);
  v52 = v3;
  v53 = v7;
  v54 = v2 + 100;
  v55 = v8;
  while (1)
  {
    v56 = *v55;
    if (v20 < *v54)
    {
      v57 = (*v53 + v51);
      if ((v57[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v56)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v20, 0, v64);
    }

    v53 = (v56 + 32);
    v54 = (v56 + 44);
    v55 = (v56 + 48);
    v52 = v56;
  }

  v58 = *v52;
  if (!v58)
  {
    goto LABEL_77;
  }

  result = v58 + 24 * *v57;
  if ((*(*result + 40) & 1) == 0)
  {
    return result;
  }

  v59 = v3[1];
  v62[0] = *v3;
  v62[1] = v59;
  v63[0] = v3[2];
  *(v63 + 9) = *(v3 + 41);
  while (1)
  {
    v60 = *v8;
    if (v20 < *v50)
    {
      v61 = (*v7 + v51);
      if ((v61[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v60)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v20, 0, v62);
    }

    v7 = (v60 + 32);
    v50 = (v60 + 44);
    v8 = (v60 + 48);
    v3 = v60;
  }

  if (!*v3)
  {
LABEL_78:
    __break(1u);
    return result;
  }

  return specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(*(*(*v3 + 24 * *v61) + 32), -1, 0);
}

uint64_t specialized static PType.Parser.parseType(record:within:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x28223BE20](v4 - 8);
  v112 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 116);
  v9 = *(a2 + 176);
  v10 = *(a1 + 4);
  v11 = (v9 + 40);
  v12 = *(v9 + 56);
  v132[0] = *(v9 + 40);
  v132[1] = v12;
  v133[0] = *(v9 + 72);
  v13 = (v9 + 72);
  v14 = (v9 + 84);
  v15 = v9 + 88;
  v16 = (8 * v8);
  v109 = v9;
  v110 = a2;
  *(v133 + 9) = *(v9 + 81);
  v17 = (v9 + 40);
  v18 = v13;
  v19 = v14;
  v20 = v15;
  v113 = v10;
  v111 = a1;
  while (1)
  {
    v21 = *v20;
    if (v8 < *v19)
    {
      v22 = (v16 + *v18);
      if ((v22[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v21)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v8, 0, v132);
    }

    v18 = (v21 + 32);
    v19 = (v21 + 44);
    v20 = (v21 + 48);
    v17 = v21;
  }

  v23 = *v17;
  if (!v23)
  {
    goto LABEL_118;
  }

  result = v23 + 24 * *v22;
  v24 = *result;
  v25 = *(*result + 196);
  v26 = 0uLL;
  if (v25)
  {
    v27 = *(v24 + 184);
    if (!v27)
    {
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    v28 = v25 - 1;
    if (*(v27 + 32 * (v25 - 1)) >= v10)
    {
      v34 = v25 >> 1;
      v35 = *(v27 + 32 * (v25 >> 1));
      if (v25 != 1 && v35 != v10)
      {
        if (v10 >= v35)
        {
          v38 = v34 + 1;
          v37 = v10;
          v34 = v25;
        }

        else
        {
          v37 = v10;
          v38 = 0;
        }

        result = specialized Collection<>.binarySearch(for:)(v37, v38, v34, v27, *(v24 + 192) | (v25 << 32));
        if (v41)
        {
          v34 = v25 - 1;
        }

        else
        {
          v34 = result;
        }

        v10 = v113;
        v26 = 0uLL;
      }

      v42 = (v27 + 32 * v34);
      v28 = v34;
      do
      {
        if (v34 >= v25)
        {
          goto LABEL_97;
        }

        if (v10 >= *v42)
        {
          goto LABEL_11;
        }

        if (!v28)
        {
          goto LABEL_39;
        }

        --v28;
        v42 -= 8;
      }

      while (v28 <= v25);
      __break(1u);
LABEL_39:
      v32 = 0;
      v33 = 0;
      v13 = v109;
      v16 = v117;
    }

    else
    {
LABEL_11:
      v29 = v11[1];
      v130[0] = *v11;
      v130[1] = v29;
      v131[0] = v11[2];
      *(v131 + 9) = *(v11 + 41);
      while (1)
      {
        v30 = *v15;
        if (v8 < *v14)
        {
          v31 = (v16 + *v13);
          if ((v31[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v30)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v8, 0, v130);
        }

        v13 = (v30 + 32);
        v14 = (v30 + 44);
        v15 = v30 + 48;
        v11 = v30;
      }

      if (!*v11)
      {
        goto LABEL_120;
      }

      result = *v11 + 24 * *v31;
      v13 = v109;
      v16 = v117;
      if (v28 >= *(*result + 196))
      {
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      v39 = *(*result + 184);
      if (!v39)
      {
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
        return result;
      }

      v40 = (v39 + 32 * v28);
      v32 = *v40;
      v33 = *(v40 + 1);
      v26 = *(v40 + 1);
    }
  }

  else
  {
    v32 = 0;
    v33 = 0;
    v13 = v109;
    v16 = v117;
  }

  v116 = 0;
  *&v127 = v8 | 0x200000000;
  *(&v127 + 1) = v10 << 32;
  *&v128 = v32;
  *(&v128 + 1) = v33;
  v129[0] = v26;
  LOBYTE(v129[1]) = 1;
  v15 = v117;
  Interpreter.Iterator.init(_:kind:onEvent:)(v13, &v127, 0, 0, v117);
  Interpreter.Iterator.read()();
  v127 = *&v118[8];
  v128 = *&v118[24];
  v129[0] = *&v118[40];
  *(v129 + 9) = *&v118[49];
  v43 = *&v118[8];
  v44 = *&v118[40];
  result = v119;
  v45 = *&v118[56];
  if (v119 >= *&v118[52])
  {
    goto LABEL_42;
  }

  while (1)
  {
    v46 = (v44 + 8 * v119);
    if ((v46[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_42:
      if (!v45)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v119, 0, &v127);
      }

      v43 = *v45;
      v44 = v45[4];
      v47 = *(v45 + 11);
      v45 = v45[6];
    }

    while (v119 >= v47);
  }

  if (!v43)
  {
    goto LABEL_119;
  }

  result = v43 + 24 * *v46;
  v48 = *result;
  v49 = *(*result + 96);
  if (v49 == 2)
  {
    goto LABEL_108;
  }

  v50 = *(v48 + 104);
  v51 = *(v48 + 88);
  v122 = *(v48 + 72);
  v123 = v51;
  v124 = v49 & 0x101;
  v125 = HIDWORD(v49);
  v126 = v50 & 1;
  result = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
  if (v53)
  {
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v54 = v52 - result;
  if (!result)
  {
    v54 = 0;
  }

  v114 = result;
  v115 = v54;
  static String.Encoding.utf8.getter();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt8> and conformance UnsafeBufferPointer<A>, &_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR);
  result = String.init<A>(bytes:encoding:)();
  if (!v55)
  {
    goto LABEL_110;
  }

  v56 = result;
  v57 = v55;
  v28 = &v118[8];
  specialized EvolutionTable.deallocate()();
  MEMORY[0x26D69CE40](v56, v57);
  result = specialized static PType.Parser.parseTypeName(string:within:)(v56, v57, v13[17]);
  if ((result & 0x100000000) != 0)
  {
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v11 = result;

  v58 = v13[17];
  v25 = v11;
  if (v11 >= *(v58 + 3))
  {
    goto LABEL_99;
  }

  v59 = *v58;
  if (!v59)
  {
    goto LABEL_112;
  }

  v27 = 120 * v11;
  v28 = *(v59 + v27 + 64);
  v15 = v111;
  if (one-time initialization token for none != -1)
  {
    goto LABEL_100;
  }

  while (1)
  {
    if (static PType.Metadata.none != v28)
    {
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    v60 = *(v15 + 8);
    result = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5PTypeV5FieldV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v62 = v13[17];
    if (v25 >= *(v62 + 3))
    {
      goto LABEL_102;
    }

    v108 = result;
    v63 = *v62;
    if (!v63)
    {
      goto LABEL_113;
    }

    v107 = v61;
    v113 = HIDWORD(v61);
    v64 = v63 + v27;
    *(v64 + 112) = *v15;
    *(v64 + 116) = 0;
    v65 = *(v15 + 24);
    result = specialized PType.Kind.init(rawValue:)(*(v15 + 28));
    v66 = *v13;
    v106 = result;
    if (v66 != 1)
    {
      break;
    }

    v67 = v13[17];
    v68 = *(v15 + 32);
    if (v68)
    {
      v69 = v8;
    }

    else
    {
      v69 = 0;
    }

    if (v68)
    {
      v70 = *(v15 + 32);
    }

    else
    {
      v70 = -1;
    }

    if (v25 >= *(v67 + 3))
    {
      goto LABEL_104;
    }

    v71 = *v67;
    if (!v71)
    {
      goto LABEL_116;
    }

    v72 = v71 + v27;
    *(v72 + 48) = v69;
    *(v72 + 52) = 2 * (v68 != 0);
    *(v72 + 56) = v68 == 0;
    *(v72 + 60) = v70;
    v74 = *(v15 + 16);
    v73 = *(v15 + 20);
    if (!v73)
    {
      goto LABEL_89;
    }

    v104 = v65;
    v105 = v60;
    v75 = v110;
    v76 = v110[10];
    v77 = v110[11];
    v78 = v110[8];
    v16[9] = v110[9];
    v16[10] = v76;
    v16[11] = v77;
    v80 = v75[6];
    v79 = v75[7];
    v121 = *(v75 + 192);
    v16[7] = v79;
    v16[8] = v78;
    v81 = v75[3];
    v117[2] = v75[2];
    *v118 = v81;
    v82 = v75[4];
    *&v118[32] = v75[5];
    *&v118[48] = v80;
    *&v118[16] = v82;
    v83 = v75[1];
    v117[0] = *v75;
    v117[1] = v83;
    v13 = v120;
    v28 = v117;
    v84 = specialized Interpreter.Iterator.subscript.getter(v73);
    if (!v85)
    {
      LODWORD(v90) = v107;
      result = v108;
      v60 = v105;
      v95 = v113;
      v65 = v104;
      goto LABEL_90;
    }

    v87 = v84;
    v16 = v85;
    v100 = v74;
    v101 = v27;
    v102 = v25;
    v103 = v11;
    v109 = v13;
    v8 = 0;
    v88 = v113;
    HIDWORD(v99) = v85 + v113;
    v89 = v119;
    v13 = (2 * v113);
    v27 = 32 * v113;
    v25 = v113;
    v90 = v107;
    result = v108;
    v111 = v86;
    v112 = v87;
    LODWORD(v110) = v119;
    while ((v8 * v86) >> 64 == (v8 * v86) >> 63)
    {
      v91 = &v87[v8 * v86];
      v28 = *v91;
      if (!v28)
      {
        goto LABEL_95;
      }

      v15 = *(v91 + 1);
      v11 = *(v91 + 2);
      if (v25 == v90)
      {
        if (v90)
        {
          v92 = v13;
        }

        else
        {
          v92 = 1;
        }

        if (HIDWORD(v92))
        {
          goto LABEL_98;
        }

        v93 = v92;
        if (result)
        {
          result = realloc(result, 32 * v92);
          if (!result)
          {
            goto LABEL_107;
          }
        }

        else
        {
          result = swift_slowAlloc();
        }

        v87 = v112;
        v88 = v113;
        v90 = v93;
        v86 = v111;
        v89 = v110;
      }

      else if (!result)
      {
        goto LABEL_106;
      }

      v94 = result + v27;
      *v94 = v89;
      *(v94 + 4) = 2;
      *(v94 + 8) = 0;
      *(v94 + 12) = v28;
      *(v94 + 16) = v11;
      *(v94 + 24) = v15;
      if ((v88 ^ v8) == 0xFFFFFFFF)
      {
        goto LABEL_96;
      }

      ++v25;
      v13 = (v13 + 2);
      v27 += 32;
      ++v8;
      v16 = (v16 - 1);
      if (!v16)
      {
        v95 = HIDWORD(v99);
        v13 = v109;
        v25 = v102;
        v11 = v103;
        v74 = v100;
        v27 = v101;
        v60 = v105;
        v65 = v104;
        goto LABEL_90;
      }
    }

    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    result = swift_once();
  }

  v74 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_89:
  LODWORD(v90) = v107;
  result = v108;
  v95 = v113;
LABEL_90:
  v96 = v13[17];
  if (v25 >= *(v96 + 3))
  {
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v97 = *v96;
  if (!v97)
  {
    goto LABEL_114;
  }

  v98 = v97 + v27;
  *(v98 + 64) = v60;
  *(v98 + 72) = result;
  *(v98 + 80) = v90;
  *(v98 + 84) = v95;
  *(v98 + 88) = v74;
  *(v98 + 96) = v65;
  *(v98 + 100) = v106;
  return v11;
}

unint64_t specialized static Allocation.new(from:within:)(unint64_t result, unsigned __int8 *a2)
{
  if (a2[48])
  {
    goto LABEL_13;
  }

  v2 = *(a2 + 22);
  v3 = *a2;
  if (v3 >= *(v2 + 116))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = *(v2 + 104);
  if (v4)
  {
    v5 = result;
    v7 = Snapshot.subscript.read(v15, result, *(*(v4 + 8 * v3) + 8));
    v8 = 256;
    if ((*(v6 + 25) & 1) == 0)
    {
      v8 = 0;
    }

    v9 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV10AllocationV_Ttg5Tm(*(v6 + 8), *(v6 + 16), v8 | (*(v6 + 28) << 32) | *(v6 + 24) & 1, *(v6 + 32), _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV10AllocationV_Ttg5);
    if (v9)
    {
      v10 = *v9;

      (v7)(v15, 0);
      v11 = *(v10 + 16);

      if (v11)
      {
        _s21SwiftUITracingSupport11InterpreterC8IteratorV3new8abstract8rootedAt8discreet11restrictionAA8EventRefVxm_ALSbSayALGtAA0L11AbstractionRzlFAA10AllocationV_Ttg5(v5, 0, MEMORY[0x277D84F90]);
        v12 = 0;
        v14 = v13;
LABEL_11:
        LOBYTE(v15[0]) = v12;
        return v14 | (v12 << 32);
      }
    }

    else
    {
      (v7)(v15, 0);
    }

    v14 = 0;
    v12 = 1;
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t specialized T_EndTrace.model(within:)(uint64_t result)
{
  v1 = result;
  v2 = v69;
  v3 = (result + 56);
  v4 = *(result + 72);
  v74[0] = *(result + 56);
  v74[1] = v4;
  v75[0] = *(result + 88);
  v5 = (result + 72);
  v6 = (result + 84);
  v7 = (result + 88);
  v8 = (result + 104);
  *(v75 + 9) = *(result + 97);
  v9 = (result + 56);
  v10 = (result + 72);
  v11 = (result + 84);
  v12 = (result + 104);
  while (1)
  {
    v13 = *v12;
    if (*v11)
    {
      v14 = *v10;
      if ((v14[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v13)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v74);
    }

    v10 = (v13 + 16);
    v11 = (v13 + 28);
    v12 = (v13 + 48);
    v9 = v13;
  }

  v15 = *v9;
  if (!v15)
  {
    goto LABEL_72;
  }

  result = v15 + 24 * *v14;
  v16 = *(*result + 112);
  if (!v16)
  {
    goto LABEL_70;
  }

  if (*(v16 + 24) == -1)
  {
    v30 = v3[1];
    v71 = *v3;
    v72 = v30;
    v73[0] = v3[2];
    v19 = v1 + 100;
    v22 = *(v1 + 29);
    v17 = 8 * v22;
    *(v73 + 9) = *(v3 + 41);
    v31 = v3;
    v32 = v7;
    v33 = v1 + 100;
    v34 = v8;
    while (1)
    {
      v35 = *v34;
      if (v22 < *v33)
      {
        v36 = *v32 + v17;
        if ((*(v36 + 4) & 1) == 0)
        {
          break;
        }
      }

      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v22, 0, &v71);
      }

      v32 = (v35 + 32);
      v33 = (v35 + 44);
      v34 = (v35 + 48);
      v31 = v35;
    }
  }

  else
  {
    v17 = *v1;
    v18 = v1[48];
    v19 = *(v1 + 22);
    v20 = v3[2];
    v72 = v3[1];
    v73[0] = v20;
    *(v73 + 9) = *(v3 + 41);
    v21 = v1 + 100;
    v22 = *(v1 + 29);
    v2 = v8;
    v23 = v7;
    v24 = v3;
    v71 = *v3;
    while (1)
    {
      v25 = *v2;
      if (v22 < *v21)
      {
        v26 = (*v23 + 8 * v22);
        if ((v26[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v25)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v22, 0, &v71);
      }

      v23 = (v25 + 32);
      v21 = (v25 + 44);
      v2 = (v25 + 48);
      v24 = v25;
    }

    v31 = *v24;
    if (!*v24)
    {
      goto LABEL_74;
    }

    v36 = *v26;
    result = &v31[3 * v36];
    if (!v18)
    {
      if (v17 >= *(v19 + 29))
      {
        __break(1u);
      }

      else
      {
        v27 = *(v19 + 13);
        if (!v27)
        {
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
          goto LABEL_76;
        }

        v28 = *(*result + 32);
        v29 = *(*(v27 + 8 * v17) + 8);
        if (v28 >= *(v29 + 16))
        {
          *(v29 + 24) = v28;
          if (v1[48])
          {
            return result;
          }

          goto LABEL_48;
        }
      }

      __break(1u);
      goto LABEL_69;
    }

    __break(1u);
  }

  v37 = *v31;
  if (!v37)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    return result;
  }

  result = v37 + 24 * *v36;
  v38 = *(*result + 32);
  v39 = v3[1];
  v70[0] = *v3;
  v70[1] = v39;
  v70[2] = v3[2];
  *(v2 + 105) = *(v3 + 41);
  v40 = v3;
  v41 = v5;
  v42 = v6;
  v43 = v8;
  while (1)
  {
    v44 = *v43;
    if (*v42)
    {
      v45 = *v41;
      if ((v45[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v44)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v70);
    }

    v41 = (v44 + 16);
    v42 = (v44 + 28);
    v43 = (v44 + 48);
    v40 = v44;
  }

  v46 = *v40;
  if (!v46)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  result = v46 + 24 * *v45;
  v47 = *(*result + 112);
  if (!v47)
  {
    goto LABEL_73;
  }

  if (v38 < *(v47 + 16))
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  *(v47 + 24) = v38;
  v48 = v3[1];
  v69[0] = *v3;
  v69[1] = v48;
  v69[2] = v3[2];
  *(v2 + 41) = *(v3 + 41);
  v49 = v3;
  v50 = v7;
  v51 = v8;
  while (1)
  {
    v52 = *v51;
    if (v22 < *v19)
    {
      v53 = (*v50 + v17);
      if ((v53[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v52)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v22, 0, v69);
    }

    v50 = v52 + 4;
    v19 = v52 + 44;
    v51 = (v52 + 6);
    v49 = v52;
  }

  v54 = *v49;
  if (!v54)
  {
    goto LABEL_78;
  }

  result = v54 + 24 * *v53;
  *(*result + 40) = 0;
  if (v1[48])
  {
    return result;
  }

LABEL_48:
  if (v1[1] << 8 != 1024)
  {
    return result;
  }

  v55 = v3[1];
  v67[0] = *v3;
  v67[1] = v55;
  v68[0] = v3[2];
  *(v68 + 9) = *(v3 + 41);
  v56 = v3;
  v57 = v8;
  while (1)
  {
    v58 = *v57;
    if (*v6)
    {
      if (((*v5)[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v58)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v67);
    }

    v5 = (v58 + 16);
    v6 = (v58 + 28);
    v57 = (v58 + 48);
    v56 = v58;
  }

  if (!*v56)
  {
    goto LABEL_79;
  }

  result = *v56 + 24 * **v5;
  v59 = *(*result + 112);
  if (!v59)
  {
    goto LABEL_75;
  }

  v60 = *(v59 + 24);
  v61 = v3[1];
  v65[0] = *v3;
  v65[1] = v61;
  v66[0] = v3[2];
  *(v66 + 9) = *(v3 + 41);
  v62 = v1 + 100;
  while (1)
  {
    v63 = *v8;
    if (v22 < *v62)
    {
      v64 = (*v7 + 8 * v22);
      if ((v64[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v63)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v22, 0, v65);
    }

    v7 = (v63 + 32);
    v62 = (v63 + 44);
    v8 = (v63 + 48);
    v3 = v63;
  }

  if (!*v3)
  {
    goto LABEL_80;
  }

  result = *v3 + 24 * *v64;
  if (v60 == *(*result + 32))
  {
    return Interpreter.Iterator.endInflight(_:)(&type metadata for Event.Ignorable);
  }

  return result;
}

uint64_t specialized ChangelistGroup.timeline.getter(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  result = swift_beginAccess();
  v13 = *(a1 + 24);
  if (!*(v13 + 116))
  {
    __break(1u);
    goto LABEL_7;
  }

  v14 = *(v13 + 104);
  if (!v14)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v15 = *v14;
  if ((*(*v14 + 4) & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v15 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v24 = v3;
    v23 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    aBlock[4] = closure #1 in Atomic.subscript.readspecialized partial apply;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_925;
    v22 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v21 = v7;
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v18 = v22;
    v17 = v23;
    MEMORY[0x26D69D2D0](0, v11, v6, v22);
    _Block_release(v18);

    (*(v24 + 8))(v6, v2);
    (*(v8 + 8))(v11, v21);
  }

  v19 = *(v15 + 8);

  return v19;
}

uint64_t specialized T_EndSubgraphUpdate.model(within:)(uint64_t result)
{
  v1 = (result + 56);
  v2 = *(result + 72);
  v12[0] = *(result + 56);
  v12[1] = v2;
  v13[0] = *(result + 88);
  *(v13 + 9) = *(result + 97);
  v3 = (result + 72);
  v4 = (result + 84);
  v5 = (result + 104);
  while (1)
  {
    v6 = *v5;
    if (*v4)
    {
      v7 = *v3;
      if ((v7[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v6)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v12);
    }

    v3 = (v6 + 16);
    v4 = (v6 + 28);
    v5 = (v6 + 48);
    v1 = v6;
  }

  v8 = *v1;
  if (!v8)
  {
    goto LABEL_13;
  }

  result = v8 + 24 * *v7;
  v9 = *(*result + 112);
  if (!v9)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v10 = *(v9 + 32);
  v11 = v10[1] - 1;
  v10[1] = v11;
  if (!v11)
  {
    ++*v10;
  }

  return result;
}

uint64_t specialized T_BeginSubgraphUpdate.model(within:)(uint64_t result)
{
  v1 = (result + 56);
  v2 = *(result + 72);
  v10[0] = *(result + 56);
  v10[1] = v2;
  v11[0] = *(result + 88);
  *(v11 + 9) = *(result + 97);
  v3 = (result + 72);
  v4 = (result + 84);
  v5 = (result + 104);
  while (1)
  {
    v6 = *v5;
    if (*v4)
    {
      v7 = *v3;
      if ((v7[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v6)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v10);
    }

    v3 = (v6 + 16);
    v4 = (v6 + 28);
    v5 = (v6 + 48);
    v1 = v6;
  }

  v8 = *v1;
  if (v8)
  {
    result = v8 + 24 * *v7;
    v9 = *(*result + 112);
    if (v9)
    {
      ++*(*(v9 + 32) + 4);
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized DepthMap.subscript.setter(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v10 + 16))(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v7);
  v14 = a1;
  v15 = a2 & 1;
  v12 = *(a4 + 24);
  type metadata accessor for Dictionary();
  return Dictionary.subscript.setter();
}

uint64_t partial apply for closure #2 in PType.forEachField<A>(within:userData:_:revisitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  return closure #2 in PType.forEachField<A>(within:userData:_:revisitor:)(a1, a2, a3, *(v3 + 24));
}

uint64_t sub_26C243834()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #2 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 24);
  if (v3)
  {
    v4 = *(v2 + 32);
    return v3(result, a2 & 0xFFFFFFFF00000001);
  }

  return result;
}

uint64_t partial apply for closure #1 in PType.forEachLinearizedField(atOffset:within:do:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return partial apply for closure #1 in PType.forEachLinearizedField(atOffset:within:do:)(a1, a2, a3, a4, a5, a6, a7);
}

{
  if (*(v7 + 16) == a5)
  {
    v8 = *(v7 + 32);
    (*(v7 + 24))(a1, a2 & 0xFFFFFFFF00000001, a3, a4, a7);
  }

  return 1;
}

unint64_t lazy protocol witness table accessor for type LazyMapSequence<[UInt32], String> and conformance <> LazyMapSequence<A, B>()
{
  result = lazy protocol witness table cache variable for type LazyMapSequence<[UInt32], String> and conformance <> LazyMapSequence<A, B>;
  if (!lazy protocol witness table cache variable for type LazyMapSequence<[UInt32], String> and conformance <> LazyMapSequence<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss15LazyMapSequenceVySays6UInt32VGSSGMd, &_ss15LazyMapSequenceVySays6UInt32VGSSGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [UInt32] and conformance [A], &_sSays6UInt32VGMd, &_sSays6UInt32VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyMapSequence<[UInt32], String> and conformance <> LazyMapSequence<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LazyMapSequence<[PType.Parameter], String> and conformance <> LazyMapSequence<A, B>()
{
  result = lazy protocol witness table cache variable for type LazyMapSequence<[PType.Parameter], String> and conformance <> LazyMapSequence<A, B>;
  if (!lazy protocol witness table cache variable for type LazyMapSequence<[PType.Parameter], String> and conformance <> LazyMapSequence<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss15LazyMapSequenceVySay21SwiftUITracingSupport5PTypeV9ParameterVGSSGMd, &_ss15LazyMapSequenceVySay21SwiftUITracingSupport5PTypeV9ParameterVGSSGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [PType.Parameter] and conformance [A], &_sSay21SwiftUITracingSupport5PTypeV9ParameterVGMd, &_sSay21SwiftUITracingSupport5PTypeV9ParameterVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyMapSequence<[PType.Parameter], String> and conformance <> LazyMapSequence<A, B>);
  }

  return result;
}

uint64_t outlined copy of PType.IsA(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 >= 2)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

uint64_t outlined consume of PType.IsA(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 >= 2)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_26C243BD8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized PType.Kind.init(metadataKind:)(uint64_t result)
{
  if ((result - 1) >= 8)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t specialized Subforest2.descendants(of:where:)(uint64_t a1, __int16 a2, uint64_t *a3)
{
  v3 = *a3;
  if ((a2 & 0x100) != 0)
  {
    v9 = 0;
LABEL_8:
    v10 = MEMORY[0x277D84F90];
    v41 = MEMORY[0x277D84F90];
    specialized Array.append<A>(contentsOf:)(*(*v3 + v9 + 24), *(*v3 + v9 + 32), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized Sequence._copyContents(initializing:));
    v11 = v41;
    v12 = v41[2];
    if (v12)
    {
      v39 = MEMORY[0x277D84F90];
      while (1)
      {
        swift_bridgeObjectRetain_n();
        v13 = 0;
        v14 = 0;
        do
        {
          while (1)
          {
            if (v14 >= *(v11 + 2))
            {
              __break(1u);
              goto LABEL_47;
            }

            v15 = v14 + 1;
            v16 = *(v3 + 16) + 40 * *(*v3 + 48 * *&v11[4 * v14 + 32]);
            if ((Changelist.filter(id:)(*v16, *(v16 + 8)) & 1) == 0)
            {
              break;
            }

            v13 = 1;
            if (v12 - 1 == v14)
            {

              v39 = v11;
              goto LABEL_36;
            }

            ++v14;
          }

          ++v14;
        }

        while (v12 != v15);
        swift_bridgeObjectRelease_n();
        if (v13)
        {
          break;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v17 = *(v11 + 2);
          v18 = v11;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 1, v11);
          }

          if (v17)
          {
            v19 = v18[2] - v17;
            memmove(v18 + 4, v18 + 4 * v17 + 32, 4 * v19);
            v18[2] = v19;
          }
        }

        else if (*(v11 + 3) >= 2uLL)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC10ChangelistC2IdOAC10Subforest2V4ItemVGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC10ChangelistC2IdOAC10Subforest2V4ItemVGGMR);
          v18 = swift_allocObject();
          v20 = _swift_stdlib_malloc_size(v18);
          v21 = v20 - 32;
          if (v20 < 32)
          {
            v21 = v20 - 29;
          }

          v18[2] = 0;
          v18[3] = 2 * (v21 >> 2);
        }

        else
        {

          v18 = MEMORY[0x277D84F90];
        }

        v22 = *(v11 + 2);
        if (!v22)
        {

          v11 = v18;
          v12 = v18[2];
          if (v12)
          {
            continue;
          }

          goto LABEL_36;
        }

        v23 = 32;
        do
        {
          v24 = *v3 + 48 * *&v11[v23];
          specialized Array.append<A>(contentsOf:)(*(v24 + 24), *(v24 + 32), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized Sequence._copyContents(initializing:));
          v23 += 4;
          --v22;
        }

        while (v22);

        v11 = v18;
        v12 = v18[2];
        if (!v12)
        {
LABEL_36:
          v10 = MEMORY[0x277D84F90];
          goto LABEL_37;
        }
      }

      v25 = v11;
      v10 = MEMORY[0x277D84F90];
      v26 = *(v11 + 2);
      if (v26)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v39 = v10;
LABEL_37:

      v25 = v39;
      v26 = *(v39 + 2);
      if (v26)
      {
LABEL_38:
        v40 = v25;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
        v27 = v40;
        v28 = v10;
        v29 = *(v10 + 2);
        v30 = 2 * v29;
        v31 = 32;
        do
        {
          v32 = *(v3 + 16) + 40 * *(*v3 + 48 * *&v27[v31]);
          v33 = *v32;
          v34 = *(v32 + 8);
          v35 = v28[3];
          v36 = v29 + 1;
          if (v29 >= v35 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v29 + 1, 1);
            v27 = v40;
          }

          v28[2] = v36;
          v37 = &v28[v30];
          v37[4] = v33;
          *(v37 + 40) = v34;
          v30 += 2;
          v31 += 4;
          v29 = v36;
          --v26;
        }

        while (v26);

        return v28;
      }
    }

    return MEMORY[0x277D84F90];
  }

  v4 = **(v3 + 32);
  if (!*(v4 + 16))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2 & 1);
  if ((v6 & 1) == 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v7 = *(v3 + 16) + 40 * *(*(v4 + 56) + 4 * v5);
  if (!*(v7 + 36))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v8 = *(v7 + 24);
  if (v8)
  {
    v9 = 48 * *v8;
    goto LABEL_8;
  }

LABEL_50:

  __break(1u);
  return result;
}

unint64_t specialized ChangelistGroup.open.getter(uint64_t a1, char a2, uint64_t a3)
{

  swift_beginAccess();
  v6 = *(a3 + 136);

  v7 = **(v6 + 32);
  v8 = *(v7 + 16);
  if (!v8)
  {
    return v8 & 1;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2 & 1);
  if ((v10 & 1) == 0 || (v11 = *(v6 + 16) + 40 * *(*(v7 + 56) + 4 * result), !*(v11 + 36)))
  {
    LOBYTE(v8) = 0;
    return v8 & 1;
  }

  v8 = *(v11 + 24);
  if (v8)
  {
    LOBYTE(v8) = *(*v6 + 48 * *v8 + 18);
    return v8 & 1;
  }

  __break(1u);
  return result;
}

uint64_t specialized Changelist.init(within:current:relationship:unabstractedUpdates:unabstractedTrees:_:_:local:)(uint64_t a1, unint64_t a2, int a3, unint64_t a4, char *a5, __int128 *a6, _OWORD *a7)
{
  v259 = a7;
  v256 = a6;
  v251 = a5;
  v255 = type metadata accessor for DispatchWorkItemFlags();
  v260 = *(v255 - 8);
  v13 = v260[8];
  MEMORY[0x28223BE20](v255);
  v254 = &v236 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = type metadata accessor for DispatchQoS();
  v258 = *(v253 - 8);
  v15 = *(v258 + 64);
  MEMORY[0x28223BE20](v253);
  v252 = &v236 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x277D84F90];
  v18.f64[0] = NAN;
  v18.f64[1] = NAN;
  v19 = vnegq_f64(v18);
  *(v7 + 48) = v19;
  v20 = (v7 + 48);
  *(v7 + 64) = v17;
  v246 = (v7 + 64);
  *(v7 + 16) = v17;
  v21 = MEMORY[0x277D84F98];
  *(v7 + 72) = MEMORY[0x277D84F98];
  v22 = (v7 + 72);
  *(v7 + 80) = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_n(v17, v19);
  *(v7 + 88) = v23;
  *(v7 + 92) = v24;
  *(v7 + 96) = v21;
  v257 = v7 + 96;
  *(v7 + 104) = v21;
  *(v7 + 112) = v21;
  v248 = (v7 + 112);
  *(v7 + 120) = v17;
  *(v7 + 184) = 0;
  v249 = (v7 + 184);
  *(v7 + 192) = 256;
  *(v7 + 194) = 0;
  LOBYTE(v268) = 0;
  LOBYTE(v285) = 0;
  LOBYTE(v284[0]) = 0;
  _s21SwiftUITracingSupport10UnsafeTreeVA2A0dE13_SuppliesRootRzrlE4rootACyxq_Gq__tcfCAA10ChangelistC2IdO_AA10Subforest2V4ItemVTt0B5(0, v293);
  v243 = v7;
  *(v7 + 24) = a1;
  v25 = v7 + 24;
  v26 = v293[1];
  *(v25 + 112) = v293[0];
  *(v25 + 128) = v26;
  *(v25 + 144) = v294;
  *(v25 + 152) = 0;
  LODWORD(v250) = a2;
  *(v25 + 156) = a2;
  v247 = (v25 + 156);
  v27 = v251;
  *(v25 + 8) = a4;
  *(v25 + 16) = v27;
  swift_beginAccess();
  *v20 = v256;
  swift_beginAccess();
  *(v25 + 32) = v259;
  LOBYTE(v268) = 0;
  LOBYTE(v285) = 0;
  LOBYTE(v284[0]) = 0;
  _s21SwiftUITracingSupport10UnsafeTreeVA2A0dE13_SuppliesRootRzrlE4rootACyxq_Gq__tcfCAA10ChangelistC2IdO_AA10Subforest2V4ItemVTt0B5(0, v295);
  swift_beginAccess();
  v28 = v295[1];
  *(v25 + 112) = v295[0];
  *(v25 + 128) = v28;
  *(v25 + 144) = v296;
  *(v25 + 152) = 0;
  LODWORD(v251) = a3;
  *(v25 + 104) = a3;
  v29 = *v22;
  v256 = v22;
  *v22 = v21;

  swift_beginAccess();
  v259 = v25;
  if (!*(*v25 + 116))
  {
    goto LABEL_168;
  }

  v30 = *(*v25 + 104);
  if (!v30)
  {
    goto LABEL_190;
  }

  v31 = *v30;
  if ((*(*v30 + 4) & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v31 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v32 = static OS_dispatch_queue.main.getter();
    v33 = swift_allocObject();
    *(v33 + 16) = v31;
    *&v270 = closure #1 in Atomic.subscript.readspecialized partial apply;
    *(&v270 + 1) = v33;
    *&v268 = MEMORY[0x277D85DD0];
    *(&v268 + 1) = 1107296256;
    *&v269 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v269 + 1) = &block_descriptor_1014;
    v34 = _Block_copy(&v268);

    a2 = v252;
    static DispatchQoS.unspecified.getter();
    *&v268 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v35 = v254;
    v36 = v255;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v25 = v32;
    MEMORY[0x26D69D2D0](0, a2, v35, v34);
    _Block_release(v34);

    (v260[1])(v35, v36);
    (*(v258 + 8))(a2, v253);
  }

  v37 = *(v31 + 8);
  a4 = v246;
  v38 = v257;
  if (*(v37 + 44) <= v250)
  {
    goto LABEL_169;
  }

  v39 = *(v37 + 32);
  if (!v39)
  {
    goto LABEL_191;
  }

  v40 = (v39 + (v250 << 7));
  v41 = v40[5];
  v289 = v40[4];
  v290 = v41;
  v42 = v40[7];
  v291 = v40[6];
  v292 = v42;
  v43 = v40[1];
  v285 = *v40;
  v286 = v43;
  v44 = v40[3];
  v287 = v40[2];
  v288 = v44;
  if (!*(*v259 + 116))
  {
    goto LABEL_170;
  }

  v45 = *(*v259 + 104);
  if (!v45)
  {
    goto LABEL_192;
  }

  v46 = *v45;
  if ((*(*v45 + 4) & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v46 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v250 = static OS_dispatch_queue.main.getter();
    v47 = swift_allocObject();
    *(v47 + 16) = v46;
    *&v270 = closure #1 in Atomic.subscript.readspecialized partial apply;
    *(&v270 + 1) = v47;
    *&v268 = MEMORY[0x277D85DD0];
    *(&v268 + 1) = 1107296256;
    *&v269 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v269 + 1) = &block_descriptor_1021;
    v48 = _Block_copy(&v268);

    v49 = v252;
    static DispatchQoS.unspecified.getter();
    *&v268 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v50 = v254;
    v51 = v255;
    a4 = v246;
    v38 = v257;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v52 = v250;
    MEMORY[0x26D69D2D0](0, v49, v50, v48);
    _Block_release(v48);

    (v260[1])(v50, v51);
    (*(v258 + 8))(v49, v253);
  }

  v53 = v256;
  Event.related(_:within:limit:collectedInto:clear:includeSelf:)(v251 | 0x2000, *(v46 + 8), 0x7FFFFFFFFFFFFFFFLL, v256, 1, 1);
  v54 = *v38;
  *v38 = *v53;

  v55 = *v53;

  a2 = 0;
  v57 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF21SwiftUITracingSupport8DepthMapVyAF8EventRefVG_AJs5NeverOTg504_s21de121Support10ChangelistC6within7current12relationship19unabstractedUpdates0H5Trees__5localACSpyAA11InterpreterC7StorageVG_AA8iJ76VAA0N0V12RelationshipVShyAPGShyAA04TreeO0VGS2iSbtcfcA2P3key_Si5valuet_tXEfU_Tf1cn_n(v56);

  *&v268 = v57;

  specialized MutableCollection<>.sort(by:)(&v268);

  v59 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_n(v268, v58);
  v61 = v60;

  v25 = v243;
  *(v243 + 80) = v59;
  *(v25 + 88) = v61;
  Changelist.resolve(_:)(v38);
  v62 = *(v25 + 24);
  if (!*(v62 + 116))
  {
    goto LABEL_171;
  }

  v236 = 0;
  v63 = *(v62 + 104);
  if (!v63)
  {
    goto LABEL_193;
  }

  v64 = *v63;
  if ((*(*v63 + 4) & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v64 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v256 = static OS_dispatch_queue.main.getter();
    v65 = swift_allocObject();
    *(v65 + 16) = v64;
    *&v270 = closure #1 in Atomic.subscript.readspecialized partial apply;
    *(&v270 + 1) = v65;
    *&v268 = MEMORY[0x277D85DD0];
    *(&v268 + 1) = 1107296256;
    *&v269 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v269 + 1) = &block_descriptor_1028;
    v66 = _Block_copy(&v268);

    v67 = v252;
    static DispatchQoS.unspecified.getter();
    *&v268 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v69 = v254;
    v68 = v255;
    v38 = v257;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v70 = v256;
    MEMORY[0x26D69D2D0](0, v67, v69, v66);
    _Block_release(v66);

    (v260[1])(v69, v68);
    v71 = v67;
    a4 = v246;
    (*(v258 + 8))(v71, v253);
  }

  v281[0] = *(v64 + 8);
  v73 = (*v38 + 64);
  v72 = *v73;
  v244 = *v38;
  v245 = v73;
  v25 = 1 << *(v244 + 32);
  v74 = -1;
  if (v25 < 64)
  {
    v74 = ~(-1 << v25);
  }

  a2 = v74 & v72;

  swift_beginAccess();
  swift_beginAccess();
  v75 = 0;
  v76 = (v25 + 63) >> 6;
  v256 = &v269;
  v249 = (v258 + 8);
  v250 = (v260 + 1);
  v8 = 1107296256;
  v257 = v76;
  v77 = v245;
  if (a2)
  {
    goto LABEL_21;
  }

LABEL_22:
  while (2)
  {
    while (2)
    {
      v78 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
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
        goto LABEL_162;
      }

      if (v78 >= v76)
      {
        goto LABEL_85;
      }

      a2 = v77[v78];
      ++v75;
      if (!a2)
      {
        continue;
      }

      break;
    }

LABEL_25:
    if (!*(*v259 + 116))
    {
      goto LABEL_155;
    }

    v79 = *(*v259 + 104);
    if (!v79)
    {
      goto LABEL_180;
    }

    v80 = __clz(__rbit64(a2)) | (v78 << 6);
    v81 = *(*(v244 + 48) + 4 * v80);
    v251 = *(*(v244 + 56) + 8 * v80);
    v82 = *v79;
    v83 = *(*v79 + 4);
    v260 = v81;
    if ((v83 & 1) == 0)
    {
      os_unfair_lock_lock_with_options();
      *(v82 + 4) = 1;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v258 = static OS_dispatch_queue.main.getter();
      v84 = swift_allocObject();
      *(v84 + 16) = v82;
      *&v270 = closure #1 in Atomic.subscript.readspecialized partial apply;
      *(&v270 + 1) = v84;
      *&v268 = MEMORY[0x277D85DD0];
      *(&v268 + 1) = 1107296256;
      *&v269 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      *(&v269 + 1) = &block_descriptor_1035;
      v85 = _Block_copy(&v268);

      v86 = v252;
      static DispatchQoS.unspecified.getter();
      *&v268 = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      a4 = v254;
      v87 = v255;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v25 = v258;
      MEMORY[0x26D69D2D0](0, v86, a4, v85);
      _Block_release(v85);

      v81 = v260;
      (*v250)(a4, v87);
      v88 = v86;
      v76 = v257;
      (*v249)(v88, v253);
    }

    v89 = *(v82 + 8);
    if (v81 >= *(v89 + 44))
    {
      goto LABEL_156;
    }

    v90 = *(v89 + 32);
    if (!v90)
    {
      goto LABEL_181;
    }

    v91 = (v90 + (v81 << 7));
    v92 = v91[5];
    v284[4] = v91[4];
    v284[5] = v92;
    v93 = v91[7];
    v284[6] = v91[6];
    v284[7] = v93;
    v94 = v91[1];
    v284[0] = *v91;
    v284[1] = v94;
    v95 = v91[3];
    v284[2] = v91[2];
    v284[3] = v95;
    if (!*(*v259 + 116))
    {
      goto LABEL_157;
    }

    v96 = *(*v259 + 104);
    if (!v96)
    {
      goto LABEL_182;
    }

    v97 = *v96;
    if ((*(*v96 + 4) & 1) == 0)
    {
      os_unfair_lock_lock_with_options();
      *(v97 + 4) = 1;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v258 = static OS_dispatch_queue.main.getter();
      v98 = swift_allocObject();
      *(v98 + 16) = v97;
      *&v270 = closure #1 in Atomic.subscript.readspecialized partial apply;
      *(&v270 + 1) = v98;
      *&v268 = MEMORY[0x277D85DD0];
      *(&v268 + 1) = 1107296256;
      *&v269 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      *(&v269 + 1) = &block_descriptor_1042;
      v99 = _Block_copy(&v268);

      v100 = v252;
      static DispatchQoS.unspecified.getter();
      *&v268 = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      a4 = v254;
      v101 = v255;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v102 = v258;
      MEMORY[0x26D69D2D0](0, v100, a4, v99);
      _Block_release(v99);

      v81 = v260;
      (*v250)(a4, v101);
      v103 = v100;
      v76 = v257;
      (*v249)(v103, v253);
    }

    v25 = v284;
    v104 = Event.hasTree(within:)(*(v97 + 8));
    v112 = v105;
    if (v105)
    {
      v258 = 1;
    }

    else
    {
      if (!*(*v259 + 116))
      {
        goto LABEL_163;
      }

      v113 = *(*v259 + 104);
      if (!v113)
      {
        goto LABEL_188;
      }

      v114 = *v113;
      if ((*(*v113 + 4) & 1) == 0)
      {
        v258 = v104;
        os_unfair_lock_lock_with_options();
        *(v114 + 4) = 1;
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
        v242 = static OS_dispatch_queue.main.getter();
        v115 = swift_allocObject();
        *(v115 + 16) = v114;
        *&v270 = closure #1 in Atomic.subscript.readspecialized partial apply;
        *(&v270 + 1) = v115;
        *&v268 = MEMORY[0x277D85DD0];
        *(&v268 + 1) = 1107296256;
        *&v269 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        *(&v269 + 1) = &block_descriptor_1063;
        v241 = _Block_copy(&v268);

        v116 = v252;
        static DispatchQoS.unspecified.getter();
        *&v268 = MEMORY[0x277D84F90];
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        v117 = v254;
        a4 = v255;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v118 = v241;
        v25 = v242;
        MEMORY[0x26D69D2D0](0, v116, v117, v241);
        _Block_release(v118);

        v119 = v117;
        v76 = v257;
        v81 = v260;
        (*v250)(v119, a4);
        (*v249)(v116, v253);
        v104 = v258;
      }

      v120 = *(v114 + 8);
      if (HIDWORD(v104) >= *(v120 + 124))
      {
        goto LABEL_164;
      }

      v121 = *(v120 + 112);
      if (!v121)
      {
        goto LABEL_189;
      }

      if ((v104 & 0x80000000) != 0)
      {
        goto LABEL_165;
      }

      v122 = *(v121 + 168 * HIDWORD(v104));
      if (v104 >= *(v122 + 16))
      {
        goto LABEL_166;
      }

      v123 = (v122 + 208 * v104);
      v277 = v123[11];
      v278 = v123[12];
      v279 = v123[13];
      v280 = v123[14];
      v273 = v123[7];
      v274 = v123[8];
      v275 = v123[9];
      v276 = v123[10];
      v269 = v123[3];
      v270 = v123[4];
      v271 = v123[5];
      v272 = v123[6];
      v268 = v123[2];
      v25 = &v268;
      v258 = Tree.resolvedSelf(within:)(v281, v105, v106, v107, v108, v109, v110, v111);
    }

    if (*v247 == v81)
    {
      v124 = v243;
      *(v243 + 184) = v258;
      *(v124 + 192) = v112 & 1;
      *(v124 + 193) = 0;
    }

    if (!*(*v259 + 116))
    {
      goto LABEL_158;
    }

    v125 = *(*v259 + 104);
    if (!v125)
    {
      goto LABEL_183;
    }

    v126 = *v125;
    if ((*(*v125 + 4) & 1) == 0)
    {
      os_unfair_lock_lock_with_options();
      *(v126 + 4) = 1;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v242 = static OS_dispatch_queue.main.getter();
      v127 = swift_allocObject();
      *(v127 + 16) = v126;
      *&v270 = closure #1 in Atomic.subscript.readspecialized partial apply;
      *(&v270 + 1) = v127;
      *&v268 = MEMORY[0x277D85DD0];
      *(&v268 + 1) = 1107296256;
      *&v269 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      *(&v269 + 1) = &block_descriptor_1049;
      v241 = _Block_copy(&v268);

      a4 = v252;
      static DispatchQoS.unspecified.getter();
      *&v268 = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      v129 = v254;
      v128 = v255;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v130 = v241;
      v25 = v242;
      MEMORY[0x26D69D2D0](0, a4, v129, v241);
      _Block_release(v130);

      v131 = v128;
      v76 = v257;
      (*v250)(v129, v131);
      v81 = v260;
      (*v249)(a4, v253);
    }

    v132 = *(v126 + 8);
    if (v81 >= *(v132 + 44))
    {
      goto LABEL_159;
    }

    v133 = *(v132 + 32);
    if (!v133)
    {
      goto LABEL_184;
    }

    if (!*(*v259 + 116))
    {
      goto LABEL_160;
    }

    v134 = *(*v259 + 104);
    if (!v134)
    {
      goto LABEL_185;
    }

    v135 = v133 + (v81 << 7);
    v136 = *(v135 + 8);
    v137 = *(v135 + 24);
    v138 = *(v135 + 32);
    a4 = *(v135 + 112);
    v139 = *(v135 + 124);
    v140 = *v134;
    if ((*(*v134 + 4) & 1) == 0)
    {
      v141 = *v134;
      v241 = *(v135 + 8);
      v242 = v139;
      v239 = v138;
      v240 = v137;
      os_unfair_lock_lock_with_options();
      *(v140 + 4) = 1;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v238 = static OS_dispatch_queue.main.getter();
      v142 = swift_allocObject();
      *(v142 + 16) = v140;
      *&v270 = closure #1 in Atomic.subscript.readspecialized partial apply;
      *(&v270 + 1) = v142;
      *&v268 = MEMORY[0x277D85DD0];
      *(&v268 + 1) = 1107296256;
      *&v269 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      *(&v269 + 1) = &block_descriptor_1056;
      v237 = _Block_copy(&v268);

      v143 = v252;
      static DispatchQoS.unspecified.getter();
      *&v268 = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      v144 = v254;
      v145 = v255;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v146 = v237;
      v25 = v238;
      MEMORY[0x26D69D2D0](0, v143, v144, v237);
      _Block_release(v146);

      v147 = v145;
      v76 = v257;
      (*v250)(v144, v147);
      (*v249)(v143, v253);
      v138 = v239;
      LOBYTE(v137) = v240;
      v136 = v241;
      v139 = v242;
    }

    if (!v138)
    {
      goto LABEL_161;
    }

    if (v137)
    {
      goto LABEL_186;
    }

    if (!v136)
    {
      goto LABEL_187;
    }

    a2 &= a2 - 1;
    if (*v136 != &type metadata for Event.AttributeValue)
    {
LABEL_62:
      v148 = v248;
      swift_beginAccess();
      v149 = *v148;
      if (*(v149 + 16))
      {
        v150 = specialized __RawDictionaryStorage.find<A>(_:)(v258, v112 & 1);
        if (v151)
        {
          v25 = *(*(v149 + 56) + 8 * v150);
          swift_endAccess();
          a4 = v246;
          swift_beginAccess();
          v152 = *a4;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a4 = v152;
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v25 & 0x8000000000000000) == 0)
            {
              goto LABEL_66;
            }
          }

          else
          {
            v152 = specialized _ArrayBuffer._consumeAndCreateNew()(v152);
            *a4 = v152;
            if ((v25 & 0x8000000000000000) == 0)
            {
LABEL_66:
              if (v25 < *(v152 + 2))
              {
                v25 = &v152[40 * v25 + 56];
LABEL_20:
                specialized DepthMap.insert(_:at:)(v260, v251);
                *a4 = v152;
                swift_endAccess();
                v75 = v78;
                v77 = v245;
                if (!a2)
                {
                  continue;
                }

                goto LABEL_21;
              }

              goto LABEL_167;
            }
          }

          __break(1u);
LABEL_85:

          v260 = swift_slowAlloc();
          *v260 = MEMORY[0x277D84F98];
          swift_beginAccess();
          v25 = *a4;
          v242 = *(*a4 + 16);
          if (!v242)
          {
LABEL_140:
            swift_endAccess();
            v229 = v259;
            *(v265 + 9) = *(v259 + 137);
            v230 = v259[8];
            v264 = v259[7];
            v265[0] = v230;
            v261[0] = v264;
            v261[1] = v230;
            v262 = *&v265[1];
            v263 = BYTE8(v265[1]);
            v231 = v243;

            Subforest2.init(within:old:)(v232, v261, &v266);
            v233 = v267[0];
            v229[7] = v266;
            v229[8] = v233;
            *(v229 + 137) = *(v267 + 9);
            specialized UnsafeTree.deallocate()(&_sSDy21SwiftUITracingSupport10ChangelistC2IdOAA10UnsafeTreeV6SymbolV3RefVyAeA10Subforest2V4ItemV__GGMd, &_sSDy21SwiftUITracingSupport10ChangelistC2IdOAA10UnsafeTreeV6SymbolV3RefVyAeA10Subforest2V4ItemV__GGMR, &_sSDySi21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AA10ChangelistC2IdOAA10Subforest2V4ItemVGGMd, &_sSDySi21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AA10ChangelistC2IdOAA10Subforest2V4ItemVGGMR);
            Changelist.rebuildDisplayOrder()();
            v234 = v260;
            outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v260, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMd, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMR);
            MEMORY[0x26D69EAB0](v234, -1, -1);
            return v231;
          }

          v169 = swift_isUniquelyReferenced_nonNull_native();
          *a4 = v25;
          if (v169)
          {
            goto LABEL_87;
          }

          goto LABEL_172;
        }
      }

      swift_endAccess();
      a4 = v246;
      swift_beginAccess();
      v154 = *a4;
      v155 = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v154;
      if ((v155 & 1) == 0)
      {
        v154 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v154 + 2) + 1, 1, v154);
        *a4 = v154;
      }

      v157 = *(v154 + 2);
      v156 = *(v154 + 3);
      if (v157 >= v156 >> 1)
      {
        v154 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v156 > 1), v157 + 1, 1, v154);
      }

      *(v154 + 2) = v157 + 1;
      v158 = &v154[40 * v157];
      v159 = v258;
      *(v158 + 4) = v258;
      v160 = v112 & 1;
      v158[40] = v112 & 1;
      v161 = v243;
      *(v158 + 6) = v243;
      v162 = MEMORY[0x277D84F98];
      *(v158 + 7) = MEMORY[0x277D84F98];
      *(v158 + 8) = v162;
      *(v161 + 64) = v154;
      swift_endAccess();
      swift_beginAccess();
      v163 = *(v161 + 112);
      v164 = swift_isUniquelyReferenced_nonNull_native();
      *&v266 = *(v161 + 112);
      *(v161 + 112) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v157, v159, v160, v164);
      *(v161 + 112) = v266;
      swift_endAccess();
      v152 = *(v161 + 64);
      v25 = *(v152 + 2);
      if (!v25)
      {
        goto LABEL_195;
      }

      swift_beginAccess();
      v165 = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v152;
      if ((v165 & 1) == 0)
      {
        v152 = specialized _ArrayBuffer._consumeAndCreateNew()(v152);
        *a4 = v152;
      }

      if (v25 <= *(v152 + 2))
      {
        v25 = &v152[40 * v25 + 16];
        goto LABEL_20;
      }

LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      v25 = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
LABEL_87:
      v170 = 0;
      v247 = v267;
      while (1)
      {
        *a4 = v25;
        if (v170 >= *(v25 + 16))
        {
          goto LABEL_154;
        }

        v171 = (v170 + 1);
        v172 = v25 + 40 * v170;
        v173 = *(v172 + 48);
        v25 = *(v172 + 56);
        v244 = v172;
        v245 = v171;
        v174 = v25 + 64;
        v175 = 1 << *(v25 + 32);
        v176 = v175 < 64 ? ~(-1 << v175) : -1;
        v177 = v176 & *(v25 + 64);
        v178 = (v175 + 63) >> 6;

        v179 = 0;
        v251 = MEMORY[0x277D84F90];
        while (v177)
        {
LABEL_100:
          v181 = __clz(__rbit64(v177)) | (v179 << 6);
          a4 = *(*(v25 + 48) + 4 * v181);
          v182 = *(*(v25 + 56) + 8 * v181);

          swift_beginAccess();
          v183 = *(v173 + 48);
          v184 = __OFSUB__(0, v183);
          v185 = -v183;
          if (v184)
          {
            goto LABEL_153;
          }

          v177 &= v177 - 1;
          if (v182 < v185)
          {
          }

          else
          {
            swift_beginAccess();
            a2 = v25;
            v186 = *(v173 + 56);

            v187 = v186 < v182;
            v25 = a2;
            if (!v187)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v251 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v251 + 2) + 1, 1, v251);
              }

              v189 = *(v251 + 2);
              v188 = *(v251 + 3);
              a2 = v189 + 1;
              if (v189 >= v188 >> 1)
              {
                v251 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v188 > 1), v189 + 1, 1, v251);
              }

              v190 = v251;
              *(v251 + 2) = a2;
              *&v190[4 * v189 + 32] = a4;
            }
          }
        }

        while (1)
        {
          v180 = v179 + 1;
          if (__OFADD__(v179, 1))
          {
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
            goto LABEL_152;
          }

          if (v180 >= v178)
          {
            break;
          }

          v177 = *(v174 + 8 * v180);
          ++v179;
          if (v177)
          {
            v179 = v180;
            goto LABEL_100;
          }
        }

        v191 = v251;
        v192 = *(v251 + 2);
        if (v192)
        {
          break;
        }

LABEL_138:

        v226 = *v260;
        v227 = *(v244 + 64);
        *(v244 + 64) = *v260;

        if (*(v226 + 16))
        {
          v228 = swift_isUniquelyReferenced_nonNull_native();
          *&v266 = v226;
          a2 = v260;
          *v260 = 0x8000000000000000;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy21SwiftUITracingSupport5EventV2IdVSiGMd, &_ss17_NativeDictionaryVy21SwiftUITracingSupport5EventV2IdVSiGMR);
          _NativeDictionary.removeAll(isUnique:)(v228);
          *a2 = v266;
        }

        a4 = v246;
        v25 = *v246;
        v170 = v245;
        if (v245 == v242)
        {
          goto LABEL_140;
        }
      }

      a4 = 0;
      v258 = (v251 + 32);
      v248 = v192;
      while (1)
      {
        if (a4 >= *(v191 + 2))
        {
          goto LABEL_142;
        }

        if (!*(*v259 + 116))
        {
          goto LABEL_143;
        }

        v193 = *(*v259 + 104);
        if (!v193)
        {
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
          goto LABEL_179;
        }

        v194 = *(v258 + 4 * a4);
        v195 = *v193;
        if ((*(*v193 + 4) & 1) == 0)
        {
          v257 = *(v258 + 4 * a4);
          os_unfair_lock_lock_with_options();
          *(v195 + 4) = 1;
          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
          v256 = static OS_dispatch_queue.main.getter();
          v196 = swift_allocObject();
          *(v196 + 16) = v195;
          *&v267[1] = closure #1 in Atomic.subscript.readspecialized partial apply;
          *(&v267[1] + 1) = v196;
          *&v266 = MEMORY[0x277D85DD0];
          *(&v266 + 1) = v8;
          *&v267[0] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          *(&v267[0] + 1) = &block_descriptor_1070;
          v197 = _Block_copy(&v266);

          v198 = v252;
          static DispatchQoS.unspecified.getter();
          *&v266 = MEMORY[0x277D84F90];
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          a2 = v254;
          v199 = v255;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v25 = v256;
          MEMORY[0x26D69D2D0](0, v198, a2, v197);
          _Block_release(v197);

          v192 = v248;
          v200 = v199;
          v191 = v251;
          (*v250)(a2, v200);
          (*v249)(v198, v253);
          v194 = v257;
        }

        v201 = *(v195 + 8);
        if (v194 >= *(v201 + 44))
        {
          goto LABEL_144;
        }

        v202 = *(v201 + 32);
        if (!v202)
        {
          goto LABEL_174;
        }

        v203 = (v202 + (v194 << 7));
        v268 = *v203;
        v269 = v203[1];
        v270 = v203[2];
        v272 = v203[4];
        v273 = v203[5];
        v274 = v203[6];
        v275 = v203[7];
        v271 = v203[3];
        v204 = v270;
        if (!v270)
        {
          goto LABEL_145;
        }

        if (BYTE8(v269))
        {
          goto LABEL_177;
        }

        v205 = *(&v268 + 1);
        if (!*(&v268 + 1))
        {
          goto LABEL_176;
        }

        v206 = v269;
        v25 = **(&v268 + 1);
        v207 = swift_conformsToProtocol2();
        if (!v207)
        {
          goto LABEL_175;
        }

        v208 = v207;
        v209 = specialized HeterogeneousBuffer.stride<A>(of:)(v25);
        if (v209 < 0)
        {
          goto LABEL_146;
        }

        if (HIDWORD(v209))
        {
          goto LABEL_147;
        }

        if (v204 == 1)
        {
          goto LABEL_148;
        }

        if (v206 - v205 < v209)
        {
          goto LABEL_149;
        }

        v210 = *(v205 + v209);
        v211 = swift_conformsToProtocol2();
        if (!v211)
        {
          goto LABEL_178;
        }

        project #1 <A, B>(_:_:) in Event.id.getter(v210, &v268, v25, v208, v211, v282);
        a2 = v260;
        v25 = *v260;
        v212 = swift_isUniquelyReferenced_nonNull_native();
        *&v266 = v25;
        *a2 = 0x8000000000000000;
        v213 = specialized __RawDictionaryStorage.find<A>(_:)(v282);
        v215 = *(v25 + 16);
        v216 = (v214 & 1) == 0;
        v184 = __OFADD__(v215, v216);
        v217 = v215 + v216;
        if (v184)
        {
          goto LABEL_150;
        }

        v218 = v214;
        if (*(v25 + 24) < v217)
        {
          break;
        }

        if (v212)
        {
          goto LABEL_133;
        }

        v25 = &v266;
        v225 = v213;
        specialized _NativeDictionary.copy()();
        v213 = v225;
        v220 = v266;
        if (v218)
        {
LABEL_110:
          *(v220[7] + 8 * v213) = a4;
          goto LABEL_111;
        }

LABEL_134:
        v220[(v213 >> 6) + 8] |= 1 << v213;
        v221 = v220[6] + 40 * v213;
        v222 = v282[1];
        *v221 = v282[0];
        *(v221 + 16) = v222;
        *(v221 + 32) = v283;
        *(v220[7] + 8 * v213) = a4;
        v223 = v220[2];
        v184 = __OFADD__(v223, 1);
        v224 = v223 + 1;
        if (v184)
        {
          goto LABEL_151;
        }

        v220[2] = v224;
LABEL_111:
        ++a4;
        *v260 = v220;

        if (v192 == a4)
        {
          goto LABEL_138;
        }
      }

      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v217, v212);
      v25 = v266;
      v213 = specialized __RawDictionaryStorage.find<A>(_:)(v282);
      if ((v218 & 1) != (v219 & 1))
      {
        goto LABEL_194;
      }

LABEL_133:
      v220 = v266;
      if (v218)
      {
        goto LABEL_110;
      }

      goto LABEL_134;
    }

    break;
  }

  v166 = v139 + 1;
  v167 = a4;
  while (1)
  {
    if (!--v166)
    {
      goto LABEL_62;
    }

    if (!a4)
    {
      break;
    }

    v168 = *v167;
    v167 += 4;
    if ((v168 & 0x8002) == 2)
    {
      v75 = v78;
      a4 = v246;
      v77 = v245;
      if (!a2)
      {
        goto LABEL_22;
      }

LABEL_21:
      v78 = v75;
      goto LABEL_25;
    }
  }

LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_195:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t partial apply for specialized closure #1 in static IterativeTreeTraversal<>.run(visitor:revisitor:start:revisitLeaf:)(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = *a1;
  return v4(&v7, a3);
}

unint64_t specialized ChangelistGroup.discreet.getter(uint64_t a1, char a2, uint64_t a3)
{

  swift_beginAccess();
  v6 = *(a3 + 136);

  v7 = **(v6 + 32);
  v8 = *(v7 + 16);
  if (!v8)
  {
    return v8 & 1;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2 & 1);
  if ((v10 & 1) == 0 || (v11 = *(v6 + 16) + 40 * *(*(v7 + 56) + 4 * result), !*(v11 + 36)))
  {
    LOBYTE(v8) = 0;
    return v8 & 1;
  }

  v8 = *(v11 + 24);
  if (v8)
  {
    LOBYTE(v8) = *(*v6 + 48 * *v8 + 20);
    return v8 & 1;
  }

  __break(1u);
  return result;
}

unint64_t specialized ChangelistGroup.children.getter(uint64_t a1, char a2, uint64_t a3)
{

  swift_beginAccess();
  v6 = *(a3 + 136);

  v7 = **(v6 + 32);
  if (!*(v7 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2 & 1);
  if ((v9 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v10 = *(v6 + 16) + 40 * *(*(v7 + 56) + 4 * result);
  if (!*(v10 + 36))
  {
    return MEMORY[0x277D84F90];
  }

  v11 = *(v10 + 24);
  if (v11)
  {
    v12 = *v6 + 48 * *v11;
    v13 = *(v12 + 36);
    v14 = MEMORY[0x277D84F90];
    if (v13)
    {
      v15 = *(v12 + 24);
      v25 = MEMORY[0x277D84F90];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
      v14 = v25;
      v16 = v15;
      while (v15)
      {
        v17 = *v16;

        swift_beginAccess();
        v18 = *(a3 + 136);

        v19 = v18[2] + 40 * *(*v18 + 48 * v17);
        v20 = *v19;
        v21 = *(v19 + 8);
        v23 = *(v25 + 16);
        v22 = *(v25 + 24);
        if (v23 >= v22 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        }

        *(v25 + 16) = v23 + 1;
        v24 = v25 + 16 * v23;
        *(v24 + 32) = v20;
        *(v24 + 40) = v21;
        ++v16;
        if (!--v13)
        {
          return v14;
        }
      }

      __break(1u);
      goto LABEL_15;
    }

    return v14;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t specialized Event.subscript.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v36 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v36 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  v19 = *(v5 + 16);
  v37 = a1;
  v19(&v36 - v17, a1, a2);
  (*(v5 + 56))(v18, 0, 1, a2);
  v20 = *(v2 + 8);
  v21 = *(v2 + 16);
  v22 = v2 + 8;
  v23 = *(v22 + 17);
  v25 = *(v22 + 20);
  v24 = *(v22 + 24);
  LOBYTE(v38) = *(v22 + 16);
  v26 = v23 == 0;
  v27 = 256;
  if (v26)
  {
    v27 = 0;
  }

  v28 = HeterogeneousBuffer.findValuePointerAs<A>(_:)(a2, v20, v21, v27 | (v25 << 32) | v38, v24, a2);
  v29 = *(v9 + 16);
  v30 = (v5 + 48);
  if (v28)
  {
    v31 = v28;
    v29(v16, v18, v8);
    if ((*v30)(v16, 1, a2) != 1)
    {
      (*(v5 + 40))(v31, v16, a2);
      (*(v5 + 8))(v37, a2);
      return (*(v9 + 8))(v18, v8);
    }

    __break(1u);
  }

  else
  {
    v32 = v36;
    v29(v13, v18, v8);
    if ((*v30)(v13, 1, a2) != 1)
    {
      (*(v5 + 32))(v32, v13, a2);
      HeterogeneousBuffer.insert<A>(_:)(v32, a2);
      v33 = *(v5 + 8);
      v33(v37, a2);
      v33(v32, a2);
      return (*(v9 + 8))(v18, v8);
    }
  }

  (*(v9 + 8))(v13, v8);
  v38 = 0;
  v39 = 0xE000000000000000;
  _StringGuts.grow(_:)(114);
  MEMORY[0x26D69CDB0](0xD000000000000038, 0x800000026C33C090);
  v35 = _typeName(_:qualified:)();
  MEMORY[0x26D69CDB0](v35);

  MEMORY[0x26D69CDB0](0xD000000000000038, 0x800000026C33C0D0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in Attribute.forEachField<A>(within:userData:_:revisitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LOBYTE(v10[0]) = a5 & 1;
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  v8 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v8;
  v11 = *(a2 + 32);
  return v6(a1, v10, a3, a4, a5 & 0xFFFFFFFF00000001) & 1;
}

uint64_t sub_26C246BC8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26C246C58()
{
  v1 = v0[3];

  v2 = v0[4];

  if (v0[5])
  {
    v3 = v0[6];
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #2 in Attribute.forEachFieldMut<A>(within:userData:_:revisitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(v7 + 48);
  v10 = *(v7 + 16);
  return closure #2 in Attribute.forEachFieldMut<A>(within:userData:_:revisitor:)(a1, a2 & 0xFFFFFFFF00000001, a3, a4, a5, a6, a7, *(v7 + 24), *(v7 + 32), *(v7 + 40));
}

uint64_t specialized static Event_Noun.id(for:verb:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a3;
  *(a5 + 8) = a4;
  *(a5 + 16) = result;
  *(a5 + 24) = a2;
  *(a5 + 32) = 0;
  return result;
}

uint64_t outlined assign with take of Event_Noun?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport10Event_Noun_pSgMd, &_s21SwiftUITracingSupport10Event_Noun_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t specialized static Event.each(_:of:do:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a1;
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 124);
  if (v6 > 0x100)
  {
LABEL_25:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (!isStackAllocationSafe)
    {
      v20 = swift_slowAlloc();
      closure #1 in static Event.each(_:of:do:)(v20, v6, a2, v5, a3);
      v21 = *MEMORY[0x277D85DE8];

      JUMPOUT(0x26D69EAB0);
    }

    MEMORY[0x28223BE20](isStackAllocationSafe);
    v8 = v22 - v19;
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    v8 = v22 - v7;
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  v9 = 0;
  v10 = 0;
  v11 = *(a2 + 112);
  do
  {
    v12 = (v11 + 4 + 8 * v9);
    while (1)
    {
      if (v9 >= v6)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (!v11)
      {
        goto LABEL_31;
      }

      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_24;
      }

      v14 = *(v12 - 2);
      if (((v5 & 0xC000) == 0 || (v14 & (v5 & 0xFFFFC000 ^ 0xFFFFC000)) == 0) && ((v5 & 0x2000) == 0 || (v14 & 0x2000) != 0))
      {
        if ((v5 & 0x1FFF) == 0)
        {
          if (v5)
          {
            break;
          }

          goto LABEL_6;
        }

        if ((v5 & 0x1FFF & v14) != 0)
        {
          break;
        }
      }

LABEL_6:
      v12 += 2;
      ++v9;
      if (v13 == v6)
      {
        v15 = v10;
        goto LABEL_20;
      }
    }

    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
    }

    *&v8[4 * v10] = *v12;
    ++v9;
    ++v10;
  }

  while (v13 != v6);
LABEL_20:
  if (v15 < 0)
  {
    __break(1u);
  }

LABEL_22:
  result = a3();
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _s21SwiftUITracingSupport16BufferAttachmentV7pointer8fileSizeACyxGSW_SitcfCSo23T_DynamicPropertyChangea_Tt1g5Tf4nd_n(uint64_t a1, uint64_t a2)
{
  v4 = *(*(type metadata accessor for String.Encoding() - 8) + 64);
  result = MEMORY[0x28223BE20](a1);
  if (a1)
  {
    if (a2 - result >= -3)
    {
      if (((a2 - result) & 3) == 0)
      {
        return result;
      }

      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
LABEL_7:
  v6 = result;
  _StringGuts.grow(_:)(80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferAttachmentVySo23T_DynamicPropertyChangeaGMd, &_s21SwiftUITracingSupport16BufferAttachmentVySo23T_DynamicPropertyChangeaGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferAttachmentVySo23T_DynamicPropertyChangeaGmMd, &_s21SwiftUITracingSupport16BufferAttachmentVySo23T_DynamicPropertyChangeaGmMR);
  v7 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v7);

  MEMORY[0x26D69CDB0](0x657A697320666F20, 0xE900000000000020);
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v8);

  MEMORY[0x26D69CDB0](0xD000000000000033, 0x800000026C33C2A0);
  MEMORY[0x26D69CDB0](0xD000000000000017, 0x800000026C33C310);
  MEMORY[0x26D69CDB0](0x657A697320666F20, 0xE900000000000020);
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v9);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  specialized Collection.prefix(_:)(40, v6, a2);
  static String.Encoding.utf8.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>, &_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
  v10 = String.init<A>(bytes:encoding:)();
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  MEMORY[0x26D69CDB0](v10, v12);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in PType.linearizedField(offset:nested:within:)(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v6 = v5[2];
  v7 = *v6;
  if (*v6 == v5[3])
  {
    v8 = v5[4];
    *v8 = result;
    *(v8 + 8) = a2 & 0xFFFFFFFF00000001;
    *(v8 + 16) = a3;
    *(v8 + 24) = a4;
    *(v8 + 32) = a5;
    *(v8 + 40) = 0;
    v7 = *v6;
  }

  v9 = __OFADD__(v7, 1);
  v10 = v7 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *v6 = v10;
  }

  return result;
}

uint64_t _s21SwiftUITracingSupport16BufferAttachmentV7pointer8fileSizeACyxGSW_SitcfCAA7AddressV_Tt1g5Tf4nd_n(uint64_t a1, uint64_t a2)
{
  v4 = *(*(type metadata accessor for String.Encoding() - 8) + 64);
  result = MEMORY[0x28223BE20](a1);
  if (a1)
  {
    if (a2 - result >= -7)
    {
      if (((a2 - result) & 7) == 0)
      {
        return result;
      }

      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
LABEL_7:
  v6 = result;
  _StringGuts.grow(_:)(80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferAttachmentVyAA7AddressVGMd, &_s21SwiftUITracingSupport16BufferAttachmentVyAA7AddressVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferAttachmentVyAA7AddressVGmMd, &_s21SwiftUITracingSupport16BufferAttachmentVyAA7AddressVGmMR);
  v7 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v7);

  MEMORY[0x26D69CDB0](0x657A697320666F20, 0xE900000000000020);
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v8);

  MEMORY[0x26D69CDB0](0xD000000000000033, 0x800000026C33C2A0);
  MEMORY[0x26D69CDB0](0x73736572646441, 0xE700000000000000);
  MEMORY[0x26D69CDB0](0x657A697320666F20, 0xE900000000000020);
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v9);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  specialized Collection.prefix(_:)(40, v6, a2);
  static String.Encoding.utf8.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>, &_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
  v10 = String.init<A>(bytes:encoding:)();
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  MEMORY[0x26D69CDB0](v10, v12);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static Allocation.mut(_:observing:within:)(uint64_t result, unsigned int a2, unsigned __int8 *a3)
{
  if (a3[48])
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v3 = *(a3 + 22);
  v4 = *a3;
  if (v4 >= *(v3 + 116))
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v5 = *(v3 + 104);
  if (!v5)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v6 = *(*(v5 + 8 * v4) + 8);
  if (*(v6 + 44) <= a2)
  {
    goto LABEL_19;
  }

  v7 = *(v6 + 32);
  if (!v7)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v8 = result;
  result = v7 + (a2 << 7);
  if (*(result + 48) == 1)
  {
    v9 = *(v8 + 124) + 1;
    v10 = *(v8 + 112);
    while (--v9)
    {
      if (!*(v8 + 112))
      {
        goto LABEL_20;
      }

      v11 = v10 + 4;
      v12 = *v10 & 0x8080;
      v10 += 4;
      if (v12 == 128)
      {
        v13 = *(result + 124) + 1;
        v14 = *(result + 112);
        while (--v13)
        {
          if (!*(result + 112))
          {
            goto LABEL_22;
          }

          v15 = v14 + 4;
          v16 = *v14 & 0x8004;
          v14 += 4;
          if (v16 == 4)
          {
            if (*(v15 - 1) != *(v11 - 1))
            {
              return 0;
            }

            Event.hide(_:within:)(result, a3);
            return 1;
          }
        }

        goto LABEL_21;
      }
    }
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type SubgraphRef and conformance SubgraphRef()
{
  result = lazy protocol witness table cache variable for type SubgraphRef and conformance SubgraphRef;
  if (!lazy protocol witness table cache variable for type SubgraphRef and conformance SubgraphRef)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubgraphRef and conformance SubgraphRef);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SubgraphRef and conformance SubgraphRef;
  if (!lazy protocol witness table cache variable for type SubgraphRef and conformance SubgraphRef)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubgraphRef and conformance SubgraphRef);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SubgraphRef and conformance SubgraphRef;
  if (!lazy protocol witness table cache variable for type SubgraphRef and conformance SubgraphRef)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubgraphRef and conformance SubgraphRef);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SubgraphRef and conformance SubgraphRef;
  if (!lazy protocol witness table cache variable for type SubgraphRef and conformance SubgraphRef)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubgraphRef and conformance SubgraphRef);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UInt64 and conformance UInt64()
{
  result = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for SubgraphID(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SubgraphID and conformance SubgraphID();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SubgraphID and conformance SubgraphID()
{
  result = lazy protocol witness table cache variable for type SubgraphID and conformance SubgraphID;
  if (!lazy protocol witness table cache variable for type SubgraphID and conformance SubgraphID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubgraphID and conformance SubgraphID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SubgraphID and conformance SubgraphID;
  if (!lazy protocol witness table cache variable for type SubgraphID and conformance SubgraphID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubgraphID and conformance SubgraphID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GraphRef and conformance GraphRef()
{
  result = lazy protocol witness table cache variable for type GraphRef and conformance GraphRef;
  if (!lazy protocol witness table cache variable for type GraphRef and conformance GraphRef)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphRef and conformance GraphRef);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GraphRef and conformance GraphRef;
  if (!lazy protocol witness table cache variable for type GraphRef and conformance GraphRef)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphRef and conformance GraphRef);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GraphRef and conformance GraphRef;
  if (!lazy protocol witness table cache variable for type GraphRef and conformance GraphRef)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphRef and conformance GraphRef);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GraphRef and conformance GraphRef;
  if (!lazy protocol witness table cache variable for type GraphRef and conformance GraphRef)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphRef and conformance GraphRef);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for GraphCtxtID(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GraphCtxtID and conformance GraphCtxtID();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type GraphCtxtID and conformance GraphCtxtID()
{
  result = lazy protocol witness table cache variable for type GraphCtxtID and conformance GraphCtxtID;
  if (!lazy protocol witness table cache variable for type GraphCtxtID and conformance GraphCtxtID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphCtxtID and conformance GraphCtxtID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GraphCtxtID and conformance GraphCtxtID;
  if (!lazy protocol witness table cache variable for type GraphCtxtID and conformance GraphCtxtID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphCtxtID and conformance GraphCtxtID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeRef and conformance AttributeRef()
{
  result = lazy protocol witness table cache variable for type AttributeRef and conformance AttributeRef;
  if (!lazy protocol witness table cache variable for type AttributeRef and conformance AttributeRef)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeRef and conformance AttributeRef);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeRef and conformance AttributeRef;
  if (!lazy protocol witness table cache variable for type AttributeRef and conformance AttributeRef)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeRef and conformance AttributeRef);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeRef and conformance AttributeRef;
  if (!lazy protocol witness table cache variable for type AttributeRef and conformance AttributeRef)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeRef and conformance AttributeRef);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeRef and conformance AttributeRef;
  if (!lazy protocol witness table cache variable for type AttributeRef and conformance AttributeRef)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeRef and conformance AttributeRef);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AttributeID(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AttributeID and conformance AttributeID();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeID and conformance AttributeID()
{
  result = lazy protocol witness table cache variable for type AttributeID and conformance AttributeID;
  if (!lazy protocol witness table cache variable for type AttributeID and conformance AttributeID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeID and conformance AttributeID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeID and conformance AttributeID;
  if (!lazy protocol witness table cache variable for type AttributeID and conformance AttributeID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeID and conformance AttributeID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EventRef and conformance EventRef()
{
  result = lazy protocol witness table cache variable for type EventRef and conformance EventRef;
  if (!lazy protocol witness table cache variable for type EventRef and conformance EventRef)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EventRef and conformance EventRef);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EventRef and conformance EventRef;
  if (!lazy protocol witness table cache variable for type EventRef and conformance EventRef)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EventRef and conformance EventRef);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EventRef and conformance EventRef;
  if (!lazy protocol witness table cache variable for type EventRef and conformance EventRef)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EventRef and conformance EventRef);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ActionRef and conformance ActionRef()
{
  result = lazy protocol witness table cache variable for type ActionRef and conformance ActionRef;
  if (!lazy protocol witness table cache variable for type ActionRef and conformance ActionRef)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionRef and conformance ActionRef);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionRef and conformance ActionRef;
  if (!lazy protocol witness table cache variable for type ActionRef and conformance ActionRef)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionRef and conformance ActionRef);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionRef and conformance ActionRef;
  if (!lazy protocol witness table cache variable for type ActionRef and conformance ActionRef)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionRef and conformance ActionRef);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TreeRef and conformance TreeRef()
{
  result = lazy protocol witness table cache variable for type TreeRef and conformance TreeRef;
  if (!lazy protocol witness table cache variable for type TreeRef and conformance TreeRef)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TreeRef and conformance TreeRef);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TreeRef and conformance TreeRef;
  if (!lazy protocol witness table cache variable for type TreeRef and conformance TreeRef)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TreeRef and conformance TreeRef);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TreeRef and conformance TreeRef;
  if (!lazy protocol witness table cache variable for type TreeRef and conformance TreeRef)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TreeRef and conformance TreeRef);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AnimationID(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AnimationID and conformance AnimationID();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationID and conformance AnimationID()
{
  result = lazy protocol witness table cache variable for type AnimationID and conformance AnimationID;
  if (!lazy protocol witness table cache variable for type AnimationID and conformance AnimationID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationID and conformance AnimationID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationID and conformance AnimationID;
  if (!lazy protocol witness table cache variable for type AnimationID and conformance AnimationID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationID and conformance AnimationID);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for TransactionID(uint64_t a1)
{
  result = lazy protocol witness table accessor for type TransactionID and conformance TransactionID();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type TransactionID and conformance TransactionID()
{
  result = lazy protocol witness table cache variable for type TransactionID and conformance TransactionID;
  if (!lazy protocol witness table cache variable for type TransactionID and conformance TransactionID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransactionID and conformance TransactionID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransactionID and conformance TransactionID;
  if (!lazy protocol witness table cache variable for type TransactionID and conformance TransactionID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransactionID and conformance TransactionID);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ActionID(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ActionID and conformance ActionID();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ActionID and conformance ActionID()
{
  result = lazy protocol witness table cache variable for type ActionID and conformance ActionID;
  if (!lazy protocol witness table cache variable for type ActionID and conformance ActionID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionID and conformance ActionID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionID and conformance ActionID;
  if (!lazy protocol witness table cache variable for type ActionID and conformance ActionID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionID and conformance ActionID);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for EventRef(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AbstractID and conformance AbstractID()
{
  result = lazy protocol witness table cache variable for type AbstractID and conformance AbstractID;
  if (!lazy protocol witness table cache variable for type AbstractID and conformance AbstractID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbstractID and conformance AbstractID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbstractID and conformance AbstractID;
  if (!lazy protocol witness table cache variable for type AbstractID and conformance AbstractID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbstractID and conformance AbstractID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbstractID and conformance AbstractID;
  if (!lazy protocol witness table cache variable for type AbstractID and conformance AbstractID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbstractID and conformance AbstractID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LifecycleState and conformance LifecycleState()
{
  result = lazy protocol witness table cache variable for type LifecycleState and conformance LifecycleState;
  if (!lazy protocol witness table cache variable for type LifecycleState and conformance LifecycleState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LifecycleState and conformance LifecycleState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PType.Parameter and conformance PType.Parameter()
{
  result = lazy protocol witness table cache variable for type PType.Parameter and conformance PType.Parameter;
  if (!lazy protocol witness table cache variable for type PType.Parameter and conformance PType.Parameter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PType.Parameter and conformance PType.Parameter);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PType.Kind and conformance PType.Kind()
{
  result = lazy protocol witness table cache variable for type PType.Kind and conformance PType.Kind;
  if (!lazy protocol witness table cache variable for type PType.Kind and conformance PType.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PType.Kind and conformance PType.Kind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PType.Flags and conformance PType.Flags()
{
  result = lazy protocol witness table cache variable for type PType.Flags and conformance PType.Flags;
  if (!lazy protocol witness table cache variable for type PType.Flags and conformance PType.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PType.Flags and conformance PType.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PType.Flags and conformance PType.Flags;
  if (!lazy protocol witness table cache variable for type PType.Flags and conformance PType.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PType.Flags and conformance PType.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PType.Flags and conformance PType.Flags;
  if (!lazy protocol witness table cache variable for type PType.Flags and conformance PType.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PType.Flags and conformance PType.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PType.Flags and conformance PType.Flags;
  if (!lazy protocol witness table cache variable for type PType.Flags and conformance PType.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PType.Flags and conformance PType.Flags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PType.IsA and conformance PType.IsA()
{
  result = lazy protocol witness table cache variable for type PType.IsA and conformance PType.IsA;
  if (!lazy protocol witness table cache variable for type PType.IsA and conformance PType.IsA)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PType.IsA and conformance PType.IsA);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PType.Field and conformance PType.Field()
{
  result = lazy protocol witness table cache variable for type PType.Field and conformance PType.Field;
  if (!lazy protocol witness table cache variable for type PType.Field and conformance PType.Field)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PType.Field and conformance PType.Field);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PType.Parser.Flags and conformance PType.Parser.Flags()
{
  result = lazy protocol witness table cache variable for type PType.Parser.Flags and conformance PType.Parser.Flags;
  if (!lazy protocol witness table cache variable for type PType.Parser.Flags and conformance PType.Parser.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PType.Parser.Flags and conformance PType.Parser.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PType.Parser.Flags and conformance PType.Parser.Flags;
  if (!lazy protocol witness table cache variable for type PType.Parser.Flags and conformance PType.Parser.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PType.Parser.Flags and conformance PType.Parser.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PType.Parser.Flags and conformance PType.Parser.Flags;
  if (!lazy protocol witness table cache variable for type PType.Parser.Flags and conformance PType.Parser.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PType.Parser.Flags and conformance PType.Parser.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PType.Parser.Flags and conformance PType.Parser.Flags;
  if (!lazy protocol witness table cache variable for type PType.Parser.Flags and conformance PType.Parser.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PType.Parser.Flags and conformance PType.Parser.Flags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PType.Parser.Parse and conformance PType.Parser.Parse()
{
  result = lazy protocol witness table cache variable for type PType.Parser.Parse and conformance PType.Parser.Parse;
  if (!lazy protocol witness table cache variable for type PType.Parser.Parse and conformance PType.Parser.Parse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PType.Parser.Parse and conformance PType.Parser.Parse);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PType.Pattern.IsA and conformance PType.Pattern.IsA()
{
  result = lazy protocol witness table cache variable for type PType.Pattern.IsA and conformance PType.Pattern.IsA;
  if (!lazy protocol witness table cache variable for type PType.Pattern.IsA and conformance PType.Pattern.IsA)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PType.Pattern.IsA and conformance PType.Pattern.IsA);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PType and conformance PType()
{
  result = lazy protocol witness table cache variable for type PType and conformance PType;
  if (!lazy protocol witness table cache variable for type PType and conformance PType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PType and conformance PType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Snapshot.AbstractionKey and conformance Snapshot.AbstractionKey()
{
  result = lazy protocol witness table cache variable for type Snapshot.AbstractionKey and conformance Snapshot.AbstractionKey;
  if (!lazy protocol witness table cache variable for type Snapshot.AbstractionKey and conformance Snapshot.AbstractionKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Snapshot.AbstractionKey and conformance Snapshot.AbstractionKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Snapshot.EventIndex and conformance Snapshot.EventIndex()
{
  result = lazy protocol witness table cache variable for type Snapshot.EventIndex and conformance Snapshot.EventIndex;
  if (!lazy protocol witness table cache variable for type Snapshot.EventIndex and conformance Snapshot.EventIndex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Snapshot.EventIndex and conformance Snapshot.EventIndex);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Tree.Position and conformance Tree.Position()
{
  result = lazy protocol witness table cache variable for type Tree.Position and conformance Tree.Position;
  if (!lazy protocol witness table cache variable for type Tree.Position and conformance Tree.Position)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Tree.Position and conformance Tree.Position);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Tree.Kind and conformance Tree.Kind()
{
  result = lazy protocol witness table cache variable for type Tree.Kind and conformance Tree.Kind;
  if (!lazy protocol witness table cache variable for type Tree.Kind and conformance Tree.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Tree.Kind and conformance Tree.Kind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Tree.Kind and conformance Tree.Kind;
  if (!lazy protocol witness table cache variable for type Tree.Kind and conformance Tree.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Tree.Kind and conformance Tree.Kind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Tree.Kind and conformance Tree.Kind;
  if (!lazy protocol witness table cache variable for type Tree.Kind and conformance Tree.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Tree.Kind and conformance Tree.Kind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Tree.Kind and conformance Tree.Kind;
  if (!lazy protocol witness table cache variable for type Tree.Kind and conformance Tree.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Tree.Kind and conformance Tree.Kind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TreeValue.Position and conformance TreeValue.Position()
{
  result = lazy protocol witness table cache variable for type TreeValue.Position and conformance TreeValue.Position;
  if (!lazy protocol witness table cache variable for type TreeValue.Position and conformance TreeValue.Position)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TreeValue.Position and conformance TreeValue.Position);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TreeValue.Position and conformance TreeValue.Position;
  if (!lazy protocol witness table cache variable for type TreeValue.Position and conformance TreeValue.Position)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TreeValue.Position and conformance TreeValue.Position);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TreeValue.Position and conformance TreeValue.Position;
  if (!lazy protocol witness table cache variable for type TreeValue.Position and conformance TreeValue.Position)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TreeValue.Position and conformance TreeValue.Position);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TreeValue.Position and conformance TreeValue.Position;
  if (!lazy protocol witness table cache variable for type TreeValue.Position and conformance TreeValue.Position)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TreeValue.Position and conformance TreeValue.Position);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Changelist.Id and conformance Changelist.Id()
{
  result = lazy protocol witness table cache variable for type Changelist.Id and conformance Changelist.Id;
  if (!lazy protocol witness table cache variable for type Changelist.Id and conformance Changelist.Id)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Changelist.Id and conformance Changelist.Id);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Changelist.Id and conformance Changelist.Id;
  if (!lazy protocol witness table cache variable for type Changelist.Id and conformance Changelist.Id)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Changelist.Id and conformance Changelist.Id);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Changelist.Mode and conformance Changelist.Mode()
{
  result = lazy protocol witness table cache variable for type Changelist.Mode and conformance Changelist.Mode;
  if (!lazy protocol witness table cache variable for type Changelist.Mode and conformance Changelist.Mode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Changelist.Mode and conformance Changelist.Mode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Changelist.Mode and conformance Changelist.Mode;
  if (!lazy protocol witness table cache variable for type Changelist.Mode and conformance Changelist.Mode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Changelist.Mode and conformance Changelist.Mode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Changelist.Mode and conformance Changelist.Mode;
  if (!lazy protocol witness table cache variable for type Changelist.Mode and conformance Changelist.Mode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Changelist.Mode and conformance Changelist.Mode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Changelist.Mode and conformance Changelist.Mode;
  if (!lazy protocol witness table cache variable for type Changelist.Mode and conformance Changelist.Mode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Changelist.Mode and conformance Changelist.Mode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GraphContext.Kind and conformance GraphContext.Kind()
{
  result = lazy protocol witness table cache variable for type GraphContext.Kind and conformance GraphContext.Kind;
  if (!lazy protocol witness table cache variable for type GraphContext.Kind and conformance GraphContext.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphContext.Kind and conformance GraphContext.Kind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Subgraph.PrimaryKey and conformance Subgraph.PrimaryKey()
{
  result = lazy protocol witness table cache variable for type Subgraph.PrimaryKey and conformance Subgraph.PrimaryKey;
  if (!lazy protocol witness table cache variable for type Subgraph.PrimaryKey and conformance Subgraph.PrimaryKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Subgraph.PrimaryKey and conformance Subgraph.PrimaryKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Attribute.Modality and conformance Attribute.Modality()
{
  result = lazy protocol witness table cache variable for type Attribute.Modality and conformance Attribute.Modality;
  if (!lazy protocol witness table cache variable for type Attribute.Modality and conformance Attribute.Modality)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Attribute.Modality and conformance Attribute.Modality);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Attribute.AGValueState and conformance Attribute.AGValueState()
{
  result = lazy protocol witness table cache variable for type Attribute.AGValueState and conformance Attribute.AGValueState;
  if (!lazy protocol witness table cache variable for type Attribute.AGValueState and conformance Attribute.AGValueState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Attribute.AGValueState and conformance Attribute.AGValueState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Attribute.AGValueState and conformance Attribute.AGValueState;
  if (!lazy protocol witness table cache variable for type Attribute.AGValueState and conformance Attribute.AGValueState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Attribute.AGValueState and conformance Attribute.AGValueState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Attribute.AGValueState and conformance Attribute.AGValueState;
  if (!lazy protocol witness table cache variable for type Attribute.AGValueState and conformance Attribute.AGValueState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Attribute.AGValueState and conformance Attribute.AGValueState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Attribute.AGValueState and conformance Attribute.AGValueState;
  if (!lazy protocol witness table cache variable for type Attribute.AGValueState and conformance Attribute.AGValueState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Attribute.AGValueState and conformance Attribute.AGValueState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Attribute.Flags and conformance Attribute.Flags()
{
  result = lazy protocol witness table cache variable for type Attribute.Flags and conformance Attribute.Flags;
  if (!lazy protocol witness table cache variable for type Attribute.Flags and conformance Attribute.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Attribute.Flags and conformance Attribute.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Attribute.Flags and conformance Attribute.Flags;
  if (!lazy protocol witness table cache variable for type Attribute.Flags and conformance Attribute.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Attribute.Flags and conformance Attribute.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Attribute.Flags and conformance Attribute.Flags;
  if (!lazy protocol witness table cache variable for type Attribute.Flags and conformance Attribute.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Attribute.Flags and conformance Attribute.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Attribute.Flags and conformance Attribute.Flags;
  if (!lazy protocol witness table cache variable for type Attribute.Flags and conformance Attribute.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Attribute.Flags and conformance Attribute.Flags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Attribute.SubgraphFlags and conformance Attribute.SubgraphFlags()
{
  result = lazy protocol witness table cache variable for type Attribute.SubgraphFlags and conformance Attribute.SubgraphFlags;
  if (!lazy protocol witness table cache variable for type Attribute.SubgraphFlags and conformance Attribute.SubgraphFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Attribute.SubgraphFlags and conformance Attribute.SubgraphFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Attribute.SubgraphFlags and conformance Attribute.SubgraphFlags;
  if (!lazy protocol witness table cache variable for type Attribute.SubgraphFlags and conformance Attribute.SubgraphFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Attribute.SubgraphFlags and conformance Attribute.SubgraphFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Attribute.SubgraphFlags and conformance Attribute.SubgraphFlags;
  if (!lazy protocol witness table cache variable for type Attribute.SubgraphFlags and conformance Attribute.SubgraphFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Attribute.SubgraphFlags and conformance Attribute.SubgraphFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Attribute.SubgraphFlags and conformance Attribute.SubgraphFlags;
  if (!lazy protocol witness table cache variable for type Attribute.SubgraphFlags and conformance Attribute.SubgraphFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Attribute.SubgraphFlags and conformance Attribute.SubgraphFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Attribute.EstimatedField and conformance Attribute.EstimatedField()
{
  result = lazy protocol witness table cache variable for type Attribute.EstimatedField and conformance Attribute.EstimatedField;
  if (!lazy protocol witness table cache variable for type Attribute.EstimatedField and conformance Attribute.EstimatedField)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Attribute.EstimatedField and conformance Attribute.EstimatedField);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Attribute.AttributeType and conformance Attribute.AttributeType()
{
  result = lazy protocol witness table cache variable for type Attribute.AttributeType and conformance Attribute.AttributeType;
  if (!lazy protocol witness table cache variable for type Attribute.AttributeType and conformance Attribute.AttributeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Attribute.AttributeType and conformance Attribute.AttributeType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Edge.EdgeOptions and conformance Edge.EdgeOptions()
{
  result = lazy protocol witness table cache variable for type Edge.EdgeOptions and conformance Edge.EdgeOptions;
  if (!lazy protocol witness table cache variable for type Edge.EdgeOptions and conformance Edge.EdgeOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Edge.EdgeOptions and conformance Edge.EdgeOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Edge.EdgeOptions and conformance Edge.EdgeOptions;
  if (!lazy protocol witness table cache variable for type Edge.EdgeOptions and conformance Edge.EdgeOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Edge.EdgeOptions and conformance Edge.EdgeOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Edge.EdgeOptions and conformance Edge.EdgeOptions;
  if (!lazy protocol witness table cache variable for type Edge.EdgeOptions and conformance Edge.EdgeOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Edge.EdgeOptions and conformance Edge.EdgeOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Edge.EdgeOptions and conformance Edge.EdgeOptions;
  if (!lazy protocol witness table cache variable for type Edge.EdgeOptions and conformance Edge.EdgeOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Edge.EdgeOptions and conformance Edge.EdgeOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Event.Position and conformance Event.Position()
{
  result = lazy protocol witness table cache variable for type Event.Position and conformance Event.Position;
  if (!lazy protocol witness table cache variable for type Event.Position and conformance Event.Position)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Event.Position and conformance Event.Position);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Event.Relationship and conformance Event.Relationship()
{
  result = lazy protocol witness table cache variable for type Event.Relationship and conformance Event.Relationship;
  if (!lazy protocol witness table cache variable for type Event.Relationship and conformance Event.Relationship)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Event.Relationship and conformance Event.Relationship);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Event.Relationship and conformance Event.Relationship;
  if (!lazy protocol witness table cache variable for type Event.Relationship and conformance Event.Relationship)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Event.Relationship and conformance Event.Relationship);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Event.Relationship and conformance Event.Relationship;
  if (!lazy protocol witness table cache variable for type Event.Relationship and conformance Event.Relationship)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Event.Relationship and conformance Event.Relationship);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Event.Relationship and conformance Event.Relationship;
  if (!lazy protocol witness table cache variable for type Event.Relationship and conformance Event.Relationship)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Event.Relationship and conformance Event.Relationship);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Event.RelativesSequnece.Iterator and conformance Event.RelativesSequnece.Iterator()
{
  result = lazy protocol witness table cache variable for type Event.RelativesSequnece.Iterator and conformance Event.RelativesSequnece.Iterator;
  if (!lazy protocol witness table cache variable for type Event.RelativesSequnece.Iterator and conformance Event.RelativesSequnece.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Event.RelativesSequnece.Iterator and conformance Event.RelativesSequnece.Iterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Event.AttributeValue.ChangedField and conformance Event.AttributeValue.ChangedField()
{
  result = lazy protocol witness table cache variable for type Event.AttributeValue.ChangedField and conformance Event.AttributeValue.ChangedField;
  if (!lazy protocol witness table cache variable for type Event.AttributeValue.ChangedField and conformance Event.AttributeValue.ChangedField)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Event.AttributeValue.ChangedField and conformance Event.AttributeValue.ChangedField);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Event.AttributeValue.Spec and conformance Event.AttributeValue.Spec()
{
  result = lazy protocol witness table cache variable for type Event.AttributeValue.Spec and conformance Event.AttributeValue.Spec;
  if (!lazy protocol witness table cache variable for type Event.AttributeValue.Spec and conformance Event.AttributeValue.Spec)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Event.AttributeValue.Spec and conformance Event.AttributeValue.Spec);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Event.Action.Kind and conformance Event.Action.Kind()
{
  result = lazy protocol witness table cache variable for type Event.Action.Kind and conformance Event.Action.Kind;
  if (!lazy protocol witness table cache variable for type Event.Action.Kind and conformance Event.Action.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Event.Action.Kind and conformance Event.Action.Kind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Event.DynamicProperties.Flags and conformance Event.DynamicProperties.Flags()
{
  result = lazy protocol witness table cache variable for type Event.DynamicProperties.Flags and conformance Event.DynamicProperties.Flags;
  if (!lazy protocol witness table cache variable for type Event.DynamicProperties.Flags and conformance Event.DynamicProperties.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Event.DynamicProperties.Flags and conformance Event.DynamicProperties.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Event.DynamicProperties.Flags and conformance Event.DynamicProperties.Flags;
  if (!lazy protocol witness table cache variable for type Event.DynamicProperties.Flags and conformance Event.DynamicProperties.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Event.DynamicProperties.Flags and conformance Event.DynamicProperties.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Event.DynamicProperties.Flags and conformance Event.DynamicProperties.Flags;
  if (!lazy protocol witness table cache variable for type Event.DynamicProperties.Flags and conformance Event.DynamicProperties.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Event.DynamicProperties.Flags and conformance Event.DynamicProperties.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Event.DynamicProperties.Flags and conformance Event.DynamicProperties.Flags;
  if (!lazy protocol witness table cache variable for type Event.DynamicProperties.Flags and conformance Event.DynamicProperties.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Event.DynamicProperties.Flags and conformance Event.DynamicProperties.Flags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Event.Metric and conformance Event.Metric()
{
  result = lazy protocol witness table cache variable for type Event.Metric and conformance Event.Metric;
  if (!lazy protocol witness table cache variable for type Event.Metric and conformance Event.Metric)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Event.Metric and conformance Event.Metric);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbstractionSubtype and conformance AbstractionSubtype()
{
  result = lazy protocol witness table cache variable for type AbstractionSubtype and conformance AbstractionSubtype;
  if (!lazy protocol witness table cache variable for type AbstractionSubtype and conformance AbstractionSubtype)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbstractionSubtype and conformance AbstractionSubtype);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbstractionPosition and conformance AbstractionPosition()
{
  result = lazy protocol witness table cache variable for type AbstractionPosition and conformance AbstractionPosition;
  if (!lazy protocol witness table cache variable for type AbstractionPosition and conformance AbstractionPosition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbstractionPosition and conformance AbstractionPosition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbstractionPosition and conformance AbstractionPosition;
  if (!lazy protocol witness table cache variable for type AbstractionPosition and conformance AbstractionPosition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbstractionPosition and conformance AbstractionPosition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbstractionPosition and conformance AbstractionPosition;
  if (!lazy protocol witness table cache variable for type AbstractionPosition and conformance AbstractionPosition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbstractionPosition and conformance AbstractionPosition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbstractionPosition and conformance AbstractionPosition;
  if (!lazy protocol witness table cache variable for type AbstractionPosition and conformance AbstractionPosition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbstractionPosition and conformance AbstractionPosition);
  }

  return result;
}

_DWORD *sub_26C24A26C(_DWORD *result, _DWORD *a2)
{
  if ((*result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

uint64_t sub_26C24A280@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = DepthMap.subscript.getter(a2, *a1, *(a2 + a3 - 16), *(a2 + a3 - 8));
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_26C24A2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = type metadata accessor for DepthMap();
  return specialized DepthMap.subscript.setter(v7, v8, a3, v9);
}

__n128 sub_26C24A328(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_26C24A348@<Q0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = **a1;
  v3 = *(v2 + 144);
  *(a2 + 128) = *(v2 + 128);
  *(a2 + 144) = v3;
  v4 = *(v2 + 176);
  *(a2 + 160) = *(v2 + 160);
  *(a2 + 176) = v4;
  v5 = *(v2 + 80);
  *(a2 + 64) = *(v2 + 64);
  *(a2 + 80) = v5;
  v6 = *(v2 + 112);
  *(a2 + 96) = *(v2 + 96);
  *(a2 + 112) = v6;
  v7 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v7;
  result = *(v2 + 32);
  v9 = *(v2 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v9;
  return result;
}

__n128 sub_26C24A384(uint64_t a1, uint64_t **a2)
{
  v2 = **a2;
  v3 = *(a1 + 144);
  *(v2 + 128) = *(a1 + 128);
  *(v2 + 144) = v3;
  v4 = *(a1 + 176);
  *(v2 + 160) = *(a1 + 160);
  *(v2 + 176) = v4;
  v5 = *(a1 + 80);
  *(v2 + 64) = *(a1 + 64);
  *(v2 + 80) = v5;
  v6 = *(a1 + 112);
  *(v2 + 96) = *(a1 + 96);
  *(v2 + 112) = v6;
  v7 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v2 + 32) = result;
  *(v2 + 48) = v9;
  return result;
}

uint64_t sub_26C24A3D8(uint64_t *a1, uint64_t a2)
{
  v2 = *(**a2 + 184);
  v3 = *v2;
  *v2 = *a1;
}

__n128 sub_26C24A444@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  result = (*a1)[1];
  *a2 = result;
  return result;
}

__n128 sub_26C24A454(__n128 *a1, __n128 **a2)
{
  result = *a1;
  (*a2)[1] = *a1;
  return result;
}

double sub_26C24A464@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = *(*a1 + 32);
  result = *(v2 + 40);
  *(a2 + 8) = result;
  return result;
}

double sub_26C24A47C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *(v2 + 32) = *a1;
  result = *(a1 + 8);
  *(v2 + 40) = result;
  return result;
}

double sub_26C24A494@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = *(*a1 + 48);
  result = *(v2 + 56);
  *(a2 + 8) = result;
  return result;
}

double sub_26C24A4AC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *(v2 + 48) = *a1;
  result = *(a1 + 8);
  *(v2 + 56) = result;
  return result;
}

double sub_26C24A4E4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = *(*a1 + 72);
  result = *(v2 + 80);
  *(a2 + 8) = result;
  return result;
}

double sub_26C24A4FC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *(v2 + 72) = *a1;
  result = *(a1 + 8);
  *(v2 + 80) = result;
  return result;
}

double sub_26C24A514@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = *(*a1 + 96);
  result = *(v2 + 104);
  *(a2 + 8) = result;
  return result;
}

double sub_26C24A52C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *(v2 + 96) = *a1;
  result = *(a1 + 8);
  *(v2 + 104) = result;
  return result;
}

double sub_26C24A544@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = *(*a1 + 112);
  result = *(v2 + 120);
  *(a2 + 8) = result;
  return result;
}

double sub_26C24A55C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *(v2 + 112) = *a1;
  result = *(a1 + 8);
  *(v2 + 120) = result;
  return result;
}

double sub_26C24A574@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = *(*a1 + 136);
  result = *(v2 + 144);
  *(a2 + 8) = result;
  return result;
}

double sub_26C24A58C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *(v2 + 136) = *a1;
  result = *(a1 + 8);
  *(v2 + 144) = result;
  return result;
}

double sub_26C24A5A4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = *(*a1 + 160);
  result = *(v2 + 168);
  *(a2 + 8) = result;
  return result;
}

double sub_26C24A5BC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *(v2 + 160) = *a1;
  result = *(a1 + 8);
  *(v2 + 168) = result;
  return result;
}

double sub_26C24A5D4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = *(*a1 + 176);
  result = *(v2 + 184);
  *(a2 + 8) = result;
  return result;
}

double sub_26C24A5EC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *(v2 + 176) = *a1;
  result = *(a1 + 8);
  *(v2 + 184) = result;
  return result;
}

double sub_26C24A624@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = *(*a1 + 200);
  result = *(v2 + 208);
  *(a2 + 8) = result;
  return result;
}

double sub_26C24A63C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *(v2 + 200) = *a1;
  result = *(a1 + 8);
  *(v2 + 208) = result;
  return result;
}

__n128 sub_26C24A674@<Q0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *a1;
  v3 = *(*a1 + 176);
  a2[10] = *(*a1 + 160);
  a2[11] = v3;
  v4 = *(v2 + 208);
  a2[12] = *(v2 + 192);
  a2[13] = v4;
  v5 = *(v2 + 112);
  a2[6] = *(v2 + 96);
  a2[7] = v5;
  v6 = *(v2 + 144);
  a2[8] = *(v2 + 128);
  a2[9] = v6;
  v7 = *(v2 + 48);
  a2[2] = *(v2 + 32);
  a2[3] = v7;
  v8 = *(v2 + 80);
  a2[4] = *(v2 + 64);
  a2[5] = v8;
  result = *v2;
  v10 = *(v2 + 16);
  *a2 = *v2;
  a2[1] = v10;
  return result;
}

__n128 sub_26C24A6B4(uint64_t a1, _OWORD **a2)
{
  v2 = *a2;
  v3 = *(a1 + 176);
  v2[10] = *(a1 + 160);
  v2[11] = v3;
  v4 = *(a1 + 208);
  v2[12] = *(a1 + 192);
  v2[13] = v4;
  v5 = *(a1 + 112);
  v2[6] = *(a1 + 96);
  v2[7] = v5;
  v6 = *(a1 + 144);
  v2[8] = *(a1 + 128);
  v2[9] = v6;
  v7 = *(a1 + 48);
  v2[2] = *(a1 + 32);
  v2[3] = v7;
  v8 = *(a1 + 80);
  v2[4] = *(a1 + 64);
  v2[5] = v8;
  result = *a1;
  v10 = *(a1 + 16);
  *v2 = *a1;
  v2[1] = v10;
  return result;
}

uint64_t sub_26C24A6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*a1 + 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  *a2 = *v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  return outlined copy of Snapshot.Kind();
}

__n128 sub_26C24A71C@<Q0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(*a1 + 200) + 120 * *a2;
  v4 = *(v3 + 80);
  *(a3 + 64) = *(v3 + 64);
  *(a3 + 80) = v4;
  *(a3 + 96) = *(v3 + 96);
  *(a3 + 112) = *(v3 + 112);
  v5 = *(v3 + 16);
  *a3 = *v3;
  *(a3 + 16) = v5;
  result = *(v3 + 32);
  v7 = *(v3 + 48);
  *(a3 + 32) = result;
  *(a3 + 48) = v7;
  return result;
}

__n128 sub_26C24A75C(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v3 = *(*a2 + 200) + 120 * *a3;
  v4 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v4;
  *(v3 + 96) = *(a1 + 96);
  *(v3 + 112) = *(a1 + 112);
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  *(v3 + 32) = result;
  *(v3 + 48) = v7;
  return result;
}

uint64_t sub_26C24A7AC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 56);
  *a2 = *(result + 48);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_26C24A7C0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  result = Tree.parent.willset(*a1, v4);
  *(a2 + 48) = v3;
  *(a2 + 56) = v4;
  return result;
}

__n128 sub_26C24A808(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 200);
  if (v2)
  {
    result = *a1;
    v4 = *(a1 + 16);
    *v2 = *a1;
    *(v2 + 16) = v4;
    *(v2 + 32) = *(a1 + 32);
  }

  return result;
}

__n128 sub_26C24A824@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v4 + 144);
  *(a2 + 128) = *(v4 + 128);
  *(a2 + 144) = v5;
  v6 = *(v4 + 176);
  *(a2 + 160) = *(v4 + 160);
  *(a2 + 176) = v6;
  v7 = *(v4 + 80);
  *(a2 + 64) = *(v4 + 64);
  *(a2 + 80) = v7;
  v8 = *(v4 + 112);
  *(a2 + 96) = *(v4 + 96);
  *(a2 + 112) = v8;
  v9 = *(v4 + 16);
  *a2 = *v4;
  *(a2 + 16) = v9;
  result = *(v4 + 32);
  v11 = *(v4 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v11;
  return result;
}

__n128 sub_26C24A898(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(a1 + 144);
  *(v4 + 128) = *(a1 + 128);
  *(v4 + 144) = v5;
  v6 = *(a1 + 176);
  *(v4 + 160) = *(a1 + 160);
  *(v4 + 176) = v6;
  v7 = *(a1 + 80);
  *(v4 + 64) = *(a1 + 64);
  *(v4 + 80) = v7;
  v8 = *(a1 + 112);
  *(v4 + 96) = *(a1 + 96);
  *(v4 + 112) = v8;
  v9 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v9;
  result = *(a1 + 32);
  v11 = *(a1 + 48);
  *(v4 + 32) = result;
  *(v4 + 48) = v11;
  return result;
}

uint64_t sub_26C24A90C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_26C24A95C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_26C24A9AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_26C24A9F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 48) = v2;
  *(v3 + 194) = 1;
  return result;
}

uint64_t sub_26C24AA48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_26C24AA90(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 56) = v2;
  *(v3 + 194) = 1;
  return result;
}

double sub_26C24AAEC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  Changelist.subscript.getter(*a2, *(a2 + 8), v7);
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v6;
  *(a3 + 32) = v8;
  return result;
}

uint64_t keypath_get_341Tm@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(*a1, *(a1 + 8), *(a1 + 16));
  *a3 = result & 1;
  return result;
}

uint64_t sub_26C24AC10@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 68);
  *a2 = *(result + 64);
  *(a2 + 4) = v2;
  return result;
}

uint64_t sub_26C24AC24(uint64_t result, uint64_t a2)
{
  v2 = *(result + 4);
  v3 = *(a2 + 68);
  *(a2 + 64) = *result;
  *(a2 + 68) = v2;
  if ((v3 & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MortalReference(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 16;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *storeEnumTagSinglePayload for MortalReference(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

void type metadata accessor for AttachmentRef.Typed<BufferAttachment<Address>>()
{
  if (!lazy cache variable for type metadata for AttachmentRef.Typed<BufferAttachment<Address>>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s21SwiftUITracingSupport16BufferAttachmentVyAA7AddressVGMd, &_s21SwiftUITracingSupport16BufferAttachmentVyAA7AddressVGMR);
    v0 = type metadata accessor for AttachmentRef.Typed();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AttachmentRef.Typed<BufferAttachment<Address>>);
    }
  }
}

uint64_t type metadata instantiation function for DepthMap()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata completion function for Tri(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for Tri(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 2;
  v7 = *(v4 + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_36;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_35:
      if (v6)
      {
LABEL_36:
        v18 = (*(v4 + 48))(a1, v5);
        if (v18 >= 3)
        {
          return v18 - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_35;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v17 = *a1;
      }
    }

    else if (v16 == 1)
    {
      v17 = *a1;
    }

    else
    {
      v17 = *a1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v6 + (v17 | v15) + 1;
}

unsigned int *storeEnumTagSinglePayload for Tri(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = v6 - 2;
  if (v6 <= 1)
  {
    v8 = 0;
    if (v7 <= 3)
    {
      v10 = (~(-1 << (8 * v7)) - v6 + 2) >> (8 * v7);
      if (v10 > 0xFFFE)
      {
        v9 = 4;
      }

      else
      {
        v11 = 1;
        if (v10 >= 0xFF)
        {
          v11 = 2;
        }

        if (v10)
        {
          v9 = v11;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }

    v7 += v9;
  }

  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    v14 = 1;
    if (v7 <= 3)
    {
      v15 = ((v13 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      v16 = HIWORD(v15);
      if (v15 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v15 >= 2)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v16)
      {
        v14 = 4;
      }

      else
      {
        v14 = v18;
      }
    }

    if (v8 >= a2)
    {
LABEL_29:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_41;
        }

        *(result + v7) = 0;
      }

      else if (v14)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_41;
      }

      if (!a2)
      {
        return result;
      }

LABEL_41:
      v24 = *(v5 + 56);

      return v24();
    }
  }

  else
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_29;
    }
  }

  v19 = ~v8 + a2;
  if (v7 >= 4)
  {
    v20 = result;
    bzero(result, v7);
    result = v20;
    *v20 = v19;
    v21 = 1;
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v21 = (v19 >> (8 * v7)) + 1;
  if (!v7)
  {
LABEL_47:
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v22 = v19 & ~(-1 << (8 * v7));
  v23 = result;
  bzero(result, v7);
  result = v23;
  if (v7 == 3)
  {
    *v23 = v22;
    *(v23 + 2) = BYTE2(v22);
    goto LABEL_47;
  }

  if (v7 == 2)
  {
    *v23 = v22;
    if (v14 > 1)
    {
LABEL_51:
      if (v14 == 2)
      {
        *(result + v7) = v21;
      }

      else
      {
        *(result + v7) = v21;
      }

      return result;
    }
  }

  else
  {
    *v23 = v19;
    if (v14 > 1)
    {
      goto LABEL_51;
    }
  }

LABEL_48:
  if (v14)
  {
    *(result + v7) = v21;
  }

  return result;
}

__n128 __swift_memcpy118_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 110) = *(a2 + 110);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 118))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 32);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 116) = 0;
    *(result + 112) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 118) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 118) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PType.Parameter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for PType.Parameter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PType.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PType.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PType.IsA(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 33))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 32);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PType.IsA(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for PType.IsA(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 32) = a2;
  return result;
}

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PType.Field(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 28))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PType.Field(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 28) = v3;
  return result;
}

__n128 __swift_memcpy37_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PType.Metadata(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 37))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 36);
  if (v3 <= 9)
  {
    v4 = 9;
  }

  else
  {
    v4 = *(a1 + 36);
  }

  v5 = v4 - 10;
  if (v3 < 9)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for PType.Metadata(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 247;
    *(result + 8) = 0;
    if (a3 >= 0xF7)
    {
      *(result + 37) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 37) = 0;
    }

    if (a2)
    {
      *(result + 36) = a2 + 9;
    }
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_21SwiftUITracingSupport5PTypeV7PatternV3IsAO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 61;
  }

  else
  {
    return (*a1 >> 3) + 4;
  }
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PType.Pattern.IsA(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 8))
  {
    return (*a1 + 124);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for PType.Pattern.IsA(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for PType.Pattern.IsA(void *result, uint64_t a2)
{
  if (a2 < 4)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 4)) | 0x8000000000000000;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Snapshot.Kind(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Snapshot.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for Snapshot.Kind(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t type metadata instantiation function for Snapshot.ReferenceMap()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t getEnumTagSinglePayload for Snapshot.Storage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 224))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Snapshot.Storage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 216) = 0;
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
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 224) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 224) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy68_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Snapshot.AbstractionKey(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 68))
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

uint64_t storeEnumTagSinglePayload for Snapshot.AbstractionKey(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 68) = 1;
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

    *(result + 68) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Snapshot.Abstraction(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t storeEnumTagSinglePayload for Snapshot.Abstraction(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t getEnumTagSinglePayload for Tree(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 208))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 152);
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

uint64_t storeEnumTagSinglePayload for Tree(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 200) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 208) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 208) = 0;
    }

    if (a2)
    {
      *(result + 152) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Tree.Cache(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 34))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 33);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Tree.Cache(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TreeValue(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for TreeValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Subforest2(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 41))
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

uint64_t storeEnumTagSinglePayload for Subforest2(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Subforest2.Item(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 6))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Subforest2.Item(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *(result + 1) = -a2;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for Changelist.Id(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for Changelist.Id(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for Changelist.Id(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChangelistGroup(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ChangelistGroup(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for GraphContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GraphContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy29_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for IncrementalChildReuseAttempt(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 29))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for IncrementalChildReuseAttempt(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 29) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 29) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Subgraph(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t storeEnumTagSinglePayload for Subgraph(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Attribute(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 305))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 144);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Attribute(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
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
    *(result + 304) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 305) = 1;
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
      *(result + 144) = (a2 - 1);
      return result;
    }

    *(result + 305) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Attribute.Kind(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 18))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Attribute.Kind(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 18) = v3;
  return result;
}

uint64_t getEnumTag for Attribute.Kind(uint64_t a1)
{
  if (*(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for Attribute.Kind(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 17) = 1;
  }

  else
  {
    *(result + 17) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Attribute.Value.Field(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Attribute.Value.Field(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 33) = v3;
  return result;
}

__n128 __swift_memcpy52_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Attribute.EstimatedField(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 52))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Attribute.EstimatedField(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 52) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 52) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy70_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 62) = *(a2 + 62);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Attribute.Pattern(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 70))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 68);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Attribute.Pattern(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 68) = 0;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 70) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 70) = 0;
    }

    if (a2)
    {
      *(result + 68) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReuseEventItem(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF2 && *(a1 + 17))
  {
    return (*a1 + 242);
  }

  v3 = *(a1 + 16);
  if (v3 <= 0xE)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ReuseEventItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF1)
  {
    *(result + 16) = 0;
    *result = a2 - 242;
    *(result + 8) = 0;
    if (a3 >= 0xF2)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF2)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for ReuseEventItem(uint64_t a1)
{
  if (*(a1 + 16) <= 0xDu)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 14);
  }
}

uint64_t destructiveInjectEnumTag for ReuseEventItem(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xE)
  {
    *result = a2 - 14;
    *(result + 8) = 0;
    LOBYTE(a2) = 14;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t dispatch thunk of static Event_Noun.displayName(for:within:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  v9 = v5;
  return v4(v8);
}

uint64_t dispatch thunk of static Event_Noun.stableIdentity(for:within:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 32);
  v5 = *(a1 + 32);
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  v9 = v5;
  return v4(v8);
}

uint64_t dispatch thunk of static Event_ReferenceNoun.ref(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 40);
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v4;
  return v3(v7);
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for Event(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 128))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 25);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Event(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 1;
    }
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Event.Prefetch(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Event.Prefetch(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Event.Id(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
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

uint64_t storeEnumTagSinglePayload for Event.Id(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Event.Id.Spec(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 37))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for Event.Id.Spec(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 37) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 37) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy53_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Event.AttributeValue(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 53))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Event.AttributeValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 53) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 53) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy76_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Event.AttributeValue.ChangedField(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 76))
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

uint64_t storeEnumTagSinglePayload for Event.AttributeValue.ChangedField(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 76) = 1;
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

    *(result + 76) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21SwiftUITracingSupport10Event_Noun_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for Event.Transaction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for Event.Transaction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LifecycleState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LifecycleState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}
uint64_t hookup #1 (viewValue:) in T_SubgraphTreeUpdate.structure(within:)(uint64_t result, unsigned __int8 *a2)
{
  if (a2[48])
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v3 = *(a2 + 22);
  v4 = *a2;
  if (v4 >= *(v3 + 116))
  {
    goto LABEL_76;
  }

  v5 = *(v3 + 104);
  if (v5)
  {
    v6 = result;
    v7 = *(*(v5 + 8 * v4) + 8);
    if (*(v7 + 84) <= result)
    {
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
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
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v8 = *(v7 + 72);
    if (!v8)
    {
      goto LABEL_93;
    }

    v9 = v8 + 312 * result;
    if (*(v9 + 136))
    {
      return result;
    }

    v10 = *(a2 + 22);
    v11 = *a2;
    if (v11 < *(v10 + 116))
    {
      v12 = 312 * result;
      v13 = *(v9 + 128);
      v63 = HIDWORD(v13);
      v64 = v13;
      v14 = v13;
      do
      {
        v15 = *(v10 + 104);
        if (!v15)
        {
          goto LABEL_78;
        }

        v16 = *(*(v15 + 8 * v11) + 8);
        if (*(v16 + 84) <= v6)
        {
          goto LABEL_59;
        }

        v17 = *(v16 + 72);
        if (!v17)
        {
          goto LABEL_79;
        }

        v18 = v17 + v12;
        v19 = *(v17 + v12 + 144);
        if (!*(v19 + 16))
        {
          return result;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        *(v18 + 144) = v19;
        if (result)
        {
          v20 = *(v19 + 16);
          if (!v20)
          {
            goto LABEL_60;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
          v19 = result;
          *(v18 + 144) = result;
          v20 = *(result + 16);
          if (!v20)
          {
            goto LABEL_60;
          }
        }

        v21 = v20 - 1;
        v22 = *(v19 + 8 * v21 + 32);
        *(v19 + 16) = v21;
        *(v18 + 144) = v19;
        if (a2[48])
        {
          goto LABEL_80;
        }

        v23 = *(a2 + 22);
        v24 = *a2;
        if (v24 >= *(v23 + 116))
        {
          goto LABEL_61;
        }

        v25 = *(v23 + 104);
        if (!v25)
        {
          goto LABEL_81;
        }

        v26 = *(*(v25 + 8 * v24) + 8);
        v27 = HIDWORD(v22);
        v28 = *(v26 + 124);
        if (HIDWORD(v22) >= v28)
        {
          goto LABEL_62;
        }

        v29 = *(v26 + 112);
        if (!v29)
        {
          goto LABEL_82;
        }

        if ((v22 & 0x80000000) != 0)
        {
          goto LABEL_63;
        }

        v30 = *(v29 + 168 * HIDWORD(v22));
        if (v22 >= *(v30 + 16))
        {
          goto LABEL_64;
        }

        if ((*(v30 + 208 * v22 + 124) & 1) == 0)
        {
          if (v63 >= v28)
          {
            goto LABEL_65;
          }

          v31 = v12;
          v32 = (v29 + 168 * v63);
          v33 = *v32;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v32 = v33;
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v14 & 0x8000000000000000) != 0)
            {
              goto LABEL_66;
            }
          }

          else
          {
            v33 = specialized _ArrayBuffer._consumeAndCreateNew()(v33);
            *v32 = v33;
            if ((v14 & 0x8000000000000000) != 0)
            {
              goto LABEL_66;
            }
          }

          if (v14 >= *(v33 + 16))
          {
            goto LABEL_67;
          }

          v35 = v33 + 208 * v14;
          v36 = *(v35 + 108);
          if (v36 == *(v35 + 104))
          {
            specialized UnsafeArray.growToCapacity(_:)(2 * v36);
          }

          v37 = *(v35 + 96);
          if (!v37)
          {
            goto LABEL_83;
          }

          v38 = *(v35 + 108);
          *(v37 + 8 * v38) = v22;
          if (v38 == -1)
          {
            goto LABEL_68;
          }

          *(v35 + 108) = v38 + 1;
          if (a2[48])
          {
            goto LABEL_84;
          }

          v39 = *(a2 + 22);
          v40 = *a2;
          if (v40 >= *(v39 + 116))
          {
            goto LABEL_69;
          }

          v41 = *(v39 + 104);
          if (!v41)
          {
            goto LABEL_85;
          }

          v42 = *(*(v41 + 8 * v40) + 8);
          if (v27 >= *(v42 + 124))
          {
            goto LABEL_70;
          }

          v43 = *(v42 + 112);
          if (!v43)
          {
            goto LABEL_86;
          }

          v44 = (v43 + 168 * HIDWORD(v22));
          v45 = *v44;
          v46 = swift_isUniquelyReferenced_nonNull_native();
          *v44 = v45;
          if ((v46 & 1) == 0)
          {
            v45 = specialized _ArrayBuffer._consumeAndCreateNew()(v45);
            *v44 = v45;
          }

          v12 = v31;
          if (v22 >= *(v45 + 16))
          {
            goto LABEL_71;
          }

          v47 = v45 + 208 * v22;
          v50 = *(v47 + 80);
          v48 = v47 + 80;
          v49 = v50;
          if ((*(v48 + 8) & 1) == 0 && v49 != v64)
          {
            goto LABEL_94;
          }

          *v48 = v64;
          *(v48 + 8) = 0;
          if (a2[48])
          {
            goto LABEL_87;
          }

          v51 = *(a2 + 22);
          v52 = *a2;
          if (v52 >= *(v51 + 116))
          {
            goto LABEL_72;
          }

          v53 = *(v51 + 104);
          if (!v53)
          {
            goto LABEL_88;
          }

          v54 = *(*(v53 + 8 * v52) + 8);
          if (v27 >= *(v54 + 124))
          {
            goto LABEL_73;
          }

          v55 = *(v54 + 112);
          if (!v55)
          {
            goto LABEL_89;
          }

          v56 = (v55 + 168 * HIDWORD(v22));
          v57 = *v56;
          result = swift_isUniquelyReferenced_nonNull_native();
          *v56 = v57;
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v57);
            v57 = result;
            *v56 = result;
          }

          if (v22 >= *(v57 + 16))
          {
            goto LABEL_74;
          }

          *(v57 + 208 * v22 + 124) = 1;
          v58 = *(a2 + 22);
          v59 = *(v58 + 152);
          v60 = __OFSUB__(v59, 1);
          v61 = v59 - 1;
          if (v60)
          {
            goto LABEL_75;
          }

          *(v58 + 152) = v61;
          if (a2[48])
          {
            goto LABEL_90;
          }
        }

        v10 = *(a2 + 22);
        v11 = *a2;
      }

      while (v11 < *(v10 + 116));
    }

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
    goto LABEL_77;
  }

LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_26C328DC0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport7TreeRefVSgMd, &_s21SwiftUITracingSupport7TreeRefVSgMR);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D69CDB0](540877088, 0xE400000000000000);
  _print_unlocked<A, B>(_:_:)();
  *(v62 + 56) = MEMORY[0x277D837D0];
  *(v62 + 32) = 0;
  *(v62 + 40) = 0xE000000000000000;

  print(_:separator:terminator:)();

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t canonicalize #1 (parent:child:) in T_SubgraphTreeUpdate.structure(within:)(unint64_t result, unint64_t a2, unsigned __int8 *a3)
{
  if (a3[48])
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v3 = *(a3 + 22);
  v4 = *a3;
  if (v4 >= *(v3 + 116))
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v5 = *(v3 + 104);
  if (!v5)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v6 = *(*(v5 + 8 * v4) + 8);
  v7 = *(v6 + 124);
  if (HIDWORD(a2) >= v7)
  {
    goto LABEL_25;
  }

  v8 = *(v6 + 112);
  if (!v8)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  if ((a2 & 0x80000000) != 0)
  {
    goto LABEL_26;
  }

  v9 = *(v8 + 168 * HIDWORD(a2));
  if (a2 >= *(v9 + 16))
  {
LABEL_27:
    __break(1u);
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
    goto LABEL_33;
  }

  v10 = v9 + 208 * a2;
  v11 = *(v10 + 152);
  v12 = v11 - 40;
  v13 = *(v10 + 164) + 1;
  while (--v13)
  {
    if (!v11)
    {
      goto LABEL_31;
    }

    v14 = (v12 + 40);
    v15 = *(v12 + 76);
    v12 += 40;
    if ((v15 & 0x20) != 0)
    {
      if (HIDWORD(result) >= v7)
      {
        goto LABEL_28;
      }

      if ((result & 0x80000000) != 0)
      {
        goto LABEL_29;
      }

      v16 = *(v8 + 168 * HIDWORD(result));
      if (result >= *(v16 + 16))
      {
        goto LABEL_30;
      }

      v17 = v16 + 208 * result;
      v18 = *(v17 + 164);
      if (v18)
      {
        v19 = *v14;
        v20 = *(v17 + 152);
        v21 = (v20 + 36);
        while (v20)
        {
          v22 = *v21;
          if ((*v21 & 1) != 0 && *(v21 - 9) == v19)
          {
            if ((v22 & 0x10) == 0)
            {
              *v21 = v22 | 0x10;
            }

            return result;
          }

          v21 += 10;
          if (!--v18)
          {
            return result;
          }
        }

        goto LABEL_32;
      }

      return result;
    }
  }

  return result;
}

BOOL static Attribute.Kind.== infix(_:_:)(int a1, uint64_t a2, __int16 a3, int a4, uint64_t a5, __int16 a6)
{
  if ((a3 & 0x100) == 0)
  {
    if ((a6 & 0x100) == 0)
    {
      if (a3)
      {
        if (a6)
        {
          return 1;
        }
      }

      else if ((a6 & 1) == 0 && a1 == a4 && a2 == a5)
      {
        return 1;
      }
    }

    return 0;
  }

  return (a6 & 0x100) != 0;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Attribute.Kind(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 17);
  v3 = *(a2 + 17);
  v4 = v2 & v3;
  if (v2 & 1) != 0 || (v3)
  {
    return v4;
  }

  v5 = *(a2 + 16);
  if ((*(a1 + 16) & 1) == 0)
  {
    return (*(a2 + 16) & 1) == 0 && *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  }

  return (*(a2 + 16) & 1) != 0;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance Attribute.AGValueState(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance Attribute.AGValueState@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance Attribute.AGValueState@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance Attribute.AGValueState@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance Attribute.AGValueState@<X0>(uint64_t *a1@<X8>)
{
  v2 = specialized SetAlgebra<>.init(arrayLiteral:)();

  *a1 = v2;
  return result;
}

uint64_t Attribute.Value.Field.value.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return result;
}

uint64_t Attribute.Value.Field.value.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 16) = result;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
  return result;
}

void Attribute.Value.Field.init()(uint64_t a1@<X8>)
{
  *a1 = -1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 1;
}

uint64_t Attribute.Value.updated.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t Attribute.Value.fields.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t Attribute.Value.fields.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

Swift::Void __swiftcall Attribute.Value.copy()()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 28);
    v3 = 5 * *(v0 + 24);
    v4 = swift_slowAlloc();
    *(v0 + 16) = v4;

    memcpy(v4, v1, 40 * v2);
  }
}

uint64_t protocol witness for Deallocatable.deallocate() in conformance Attribute.Value()
{
  result = *(v0 + 16);
  if (result)
  {
    result = MEMORY[0x26D69EAB0](result, -1, -1);
    *(v0 + 16) = 0;
  }

  return result;
}

void protocol witness for Clonable.copy() in conformance Attribute.Value()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 28);
    v3 = 5 * *(v0 + 24);
    v4 = swift_slowAlloc();
    *(v0 + 16) = v4;

    memcpy(v4, v1, 40 * v2);
  }
}

uint64_t Attribute.EstimatedField.field.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 32) | (*(v0 + 36) << 32);
  return result;
}

uint64_t Attribute.EstimatedField.pathToField(in:)(uint64_t *a1)
{
  v89 = a1;
  v2 = type metadata accessor for String.Encoding();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v88 = v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v1 + 16);
  v6 = *(v1 + 32);
  v7 = *(v1 + 36);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport5PTypeV5FieldVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport5PTypeV5FieldVGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26C328DC0;
  *(v10 + 32) = *(v1 + 24);
  *(v10 + 40) = v6;
  *(v10 + 44) = v7;
  *(v10 + 48) = v8;
  *(v10 + 56) = v9;
  v103[0] = v5;

  specialized Array.append<A>(contentsOf:)(v10);
  v11 = v103[0];
  v12 = *(v103[0] + 16);
  v13 = v12 != 0;
  if (v12 <= 1)
  {

    v14 = MEMORY[0x277D84F90];
    goto LABEL_70;
  }

  v109 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v12 - v13) & ~((v12 - v13) >> 63), 0);
  if (((v12 - v13) & 0x8000000000000000) != 0)
  {
    goto LABEL_75;
  }

  v15 = v12 - v13;
  v16 = 0;
  v17 = v11 + 32;
  v14 = v109;
  v86 = v12;
  v87 = v12 - v13;
  v84[1] = v11;
  v85 = v11 + 32;
  do
  {
    if (v13 >= v12 || v16 >= v15)
    {
      goto LABEL_73;
    }

    v18 = (v17 + 32 * v13);
    v19 = *v18;
    v20 = v18[3];
    if (v19)
    {
      v21 = 0;
    }

    else
    {
      v21 = v20 == -1;
    }

    if (v21)
    {
      v36 = 0xE90000000000003ELL;
      v37 = 0x6E776F6E6B6E753CLL;
    }

    else
    {
      v92 = v16;
      v94 = v13;
      v95 = v14;
      v22 = v18[1];
      v93 = *(v18 + 8);
      v23 = *v89;
      v24 = (*v89 + 40);
      v25 = *(*v89 + 56);
      v119[0] = *v24;
      v119[1] = v25;
      v120[0] = *(v23 + 72);
      v26 = (v23 + 72);
      v27 = (v23 + 84);
      v28 = (v23 + 88);
      v29 = 8 * v19;
      *(v120 + 9) = *(v23 + 81);
      v30 = (v23 + 40);
      v31 = (v23 + 72);
      v32 = (v23 + 84);
      v33 = (v23 + 88);
      v96 = v20;
      while (1)
      {
        v34 = *v33;
        if (v19 < *v32)
        {
          v35 = (*v31 + v29);
          if ((v35[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v34)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v19, 0, v119);
        }

        v31 = (v34 + 32);
        v32 = (v34 + 44);
        v33 = (v34 + 48);
        v30 = v34;
      }

      v38 = *v30;
      if (!v38)
      {
        goto LABEL_81;
      }

      v39 = (v38 + 24 * *v35);
      v40 = *v39;
      v41 = *(*v39 + 196);
      v42 = 0uLL;
      if (v41)
      {
        v90 = v22;
        v91 = v23;
        v43 = *(v40 + 184);
        if (!v43)
        {
          goto LABEL_79;
        }

        v44 = v41 - 1;
        if (*(v43 + 32 * (v41 - 1)) >= v20)
        {
          v50 = v41 >> 1;
          v51 = *(v43 + 32 * (v41 >> 1));
          if (v41 != 1 && v51 != v20)
          {
            if (v20 >= v51)
            {
              v54 = v50 + 1;
              v53 = v20;
              v50 = v41;
            }

            else
            {
              v53 = v20;
              v54 = 0;
            }

            v58 = specialized Collection<>.binarySearch(for:)(v53, v54, v50, v43, *(v40 + 192) | (v41 << 32));
            if (v59)
            {
              v50 = v41 - 1;
            }

            else
            {
              v50 = v58;
            }

            v20 = v96;
            v42 = 0uLL;
          }

          v60 = (v43 + 32 * v50);
          v44 = v50;
          while (v50 < v41)
          {
            if (v20 >= *v60)
            {
              goto LABEL_22;
            }

            if (!v44)
            {
              v48 = 0;
              v49 = 0;
              v13 = v94;
              v14 = v95;
              v12 = v86;
              goto LABEL_51;
            }

            --v44;
            v60 -= 8;
            if (v44 > v41)
            {
              goto LABEL_72;
            }
          }

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
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

LABEL_22:
        v45 = v24[1];
        v117[0] = *v24;
        v117[1] = v45;
        v118[0] = v24[2];
        *(v118 + 9) = *(v24 + 41);
        while (1)
        {
          v46 = *v28;
          if (v19 < *v27)
          {
            v47 = (*v26 + v29);
            if ((v47[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v46)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(v19, 0, v117);
          }

          v26 = (v46 + 32);
          v27 = (v46 + 44);
          v28 = (v46 + 48);
          v24 = v46;
        }

        if (!*v24)
        {
          goto LABEL_83;
        }

        v55 = *v24 + 24 * *v47;
        v13 = v94;
        v14 = v95;
        v12 = v86;
        if (v44 >= *(*v55 + 196))
        {
          goto LABEL_74;
        }

        v56 = *(*v55 + 184);
        if (!v56)
        {
          goto LABEL_80;
        }

        v57 = (v56 + 32 * v44);
        v48 = *v57;
        v49 = *(v57 + 1);
        v42 = *(v57 + 1);
LABEL_51:
        v22 = v90;
        v23 = v91;
      }

      else
      {
        v48 = 0;
        v49 = 0;
        v13 = v94;
        v14 = v95;
        v12 = v86;
      }

      v108 = v93;
      v97 = v19 | (v22 << 32);
      v98 = v93 | (v20 << 32);
      v99 = v48;
      v100 = v49;
      v101 = v42;
      v102 = 1;
      Interpreter.Iterator.init(_:kind:onEvent:)(v23, &v97, 0, 0, v103);
      if (!Interpreter.Iterator.read()())
      {
        goto LABEL_84;
      }

      v115[0] = v104;
      v115[1] = v105;
      v116[0] = *v106;
      *(v116 + 9) = *&v106[9];
      v61 = v104;
      v62 = *v106;
      v63 = *&v106[16];
      if (v107 >= *&v106[12])
      {
        do
        {
LABEL_55:
          if (!v63)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(v107, 0, v115);
          }

          v61 = *v63;
          v62 = v63[4];
          v65 = *(v63 + 11);
          v63 = v63[6];
        }

        while (v107 >= v65);
      }

      v64 = (v62 + 8 * v107);
      if (v64[1])
      {
        goto LABEL_55;
      }

      if (!v61)
      {
        goto LABEL_82;
      }

      v66 = (v61 + 24 * *v64);
      v67 = *v66;
      v68 = *(*v66 + 96);
      if (v68 == 2)
      {
        goto LABEL_77;
      }

      v69 = *(v67 + 104);
      v70 = *(v67 + 88);
      v110 = *(v67 + 72);
      v111 = v70;
      v112 = v68 & 0x101;
      v113 = HIDWORD(v68);
      v114 = v69 & 1;
      v71 = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
      if (v73)
      {
        goto LABEL_78;
      }

      v74 = v72 - v71;
      if (!v71)
      {
        v74 = 0;
      }

      v97 = v71;
      v98 = v74;
      static String.Encoding.utf8.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt8> and conformance UnsafeBufferPointer<A>, &_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR);
      v75 = String.init<A>(bytes:encoding:)();
      if (!v76)
      {
        goto LABEL_76;
      }

      v37 = v75;
      v36 = v76;
      specialized EvolutionTable.deallocate()();
      v15 = v87;
      v16 = v92;
      v17 = v85;
    }

    v109 = v14;
    v78 = *(v14 + 16);
    v77 = *(v14 + 24);
    if (v78 >= v77 >> 1)
    {
      v80 = v16;
      v81 = v17;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v77 > 1), v78 + 1, 1);
      v17 = v81;
      v16 = v80;
      v15 = v87;
      v14 = v109;
    }

    ++v16;
    *(v14 + 16) = v78 + 1;
    v79 = v14 + 16 * v78;
    *(v79 + 32) = v37;
    *(v79 + 40) = v36;
    ++v13;
  }

  while (v16 != v15);

LABEL_70:
  v103[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
  v82 = BidirectionalCollection<>.joined(separator:)();

  return v82;
}

void Attribute.EstimatedField.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v7 = *(v2 + 24);
  v6 = *(v2 + 28);
  v8 = *(v2 + 32);
  v9 = *(v2 + 36);
  v10 = *(v2 + 40);
  v11 = *(v2 + 48);
  MEMORY[0x26D69DBC0](*v2);
  MEMORY[0x26D69DBC0](v4);
  specialized Array<A>.hash(into:)(a1, v5);
  Hasher._combine(_:)(v7);
  if (v8 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v6);
  }

  Hasher._combine(_:)(v9);
  MEMORY[0x26D69DBC0](v10);
  Hasher._combine(_:)(v11);
}

Swift::Int Attribute.EstimatedField.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v5 = *(v0 + 6);
  v4 = *(v0 + 7);
  v6 = *(v0 + 32);
  v7 = *(v0 + 9);
  v8 = v0[5];
  v9 = *(v0 + 12);
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](v1);
  MEMORY[0x26D69DBC0](v2);
  specialized Array<A>.hash(into:)(v11, v3);
  Hasher._combine(_:)(v5);
  if (v6 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v4);
  }

  Hasher._combine(_:)(v7);
  MEMORY[0x26D69DBC0](v8);
  Hasher._combine(_:)(v9);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Attribute.EstimatedField()
{
  Hasher.init(_seed:)();
  Attribute.EstimatedField.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Attribute.EstimatedField()
{
  Hasher.init(_seed:)();
  Attribute.EstimatedField.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t Attribute.fieldClosestTo(range:rangeIsExact:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a4[5];
  v12[4] = a4[4];
  v12[5] = v5;
  v12[6] = a4[6];
  v6 = a4[1];
  v12[0] = *a4;
  v12[1] = v6;
  v7 = a4[3];
  v12[2] = a4[2];
  v12[3] = v7;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0;
  v9[2] = v12;
  v9[3] = a1;
  v9[4] = a2;
  v10 = a3;
  v11 = a5;
  return specialized Attribute.forEachField<A>(within:userData:_:revisitor:)(v12, partial apply for closure #1 in Attribute.fieldClosestTo(range:rangeIsExact:with:), v9, 0, 0);
}

uint64_t closure #1 in Attribute.fieldClosestTo(range:rangeIsExact:with:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, _BYTE *a11, uint64_t *a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16)
{
  v16 = a12[4];
  v17 = a7;
  v18 = *(v16 + 16);
  if (v18 <= a7)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v19 = *(a12 + 3);
  v20 = v16 + 32;
  v21 = *(v20 + 4 * a7);
  if (v21 >= v19)
  {
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

  v22 = *a12;
  if (*a12)
  {
    v23 = *(v22 + 120 * v21 + 88);
    if (a13 < a3)
    {
      *a11 = 1;
    }

    v24 = a3 + v23;
    if (__OFADD__(a3, v23))
    {
      goto LABEL_26;
    }

    if (v24 < a3)
    {
      goto LABEL_27;
    }

    if (a13 < a3 || v24 <= a13)
    {
      return 1;
    }

    if (a15)
    {
LABEL_11:
      if (a3 == a13 && v24 == a14)
      {
        *a11 = 1;
      }

      v25 = *(a16 + 16);
      *a16 = result;
      *(a16 + 8) = a3;
      *(a16 + 16) = a8;
      *(a16 + 24) = a4;
      *(a16 + 32) = a5 & 0xFFFFFFFF00000001;
      *(a16 + 40) = a6;
      *(a16 + 48) = a7;

      return 1;
    }

    while (1)
    {
      v26 = *(v20 + 4 * v17);
      if (v26 >= v19)
      {
        break;
      }

      v27 = v22 + 120 * v26;
      v28 = *(v27 + 84);
      if (v28 > 1)
      {
        goto LABEL_11;
      }

      if (!v28)
      {
        goto LABEL_21;
      }

      v29 = *(v27 + 72);
      if (!v29)
      {
        goto LABEL_28;
      }

      v17 = *(v29 + 24);
      if (v18 <= v17)
      {
        __break(1u);
LABEL_21:
        v30 = *(a16 + 16);
        *a16 = result;
        *(a16 + 8) = a3;
        *(a16 + 16) = a8;
        *(a16 + 24) = a4;
        *(a16 + 32) = a5 & 0xFFFFFFFF00000001;
        *(a16 + 40) = a6;
        *(a16 + 48) = a7;

        *a11 = 1;
        return 1;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t specialized Attribute.forEachField<A>(within:userData:_:revisitor:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  memcpy(v47, v6, 0x131uLL);
  v40[2] = a2;
  v40[3] = a3;
  if ((v47[25] & 0x100) != 0)
  {
    outlined init with copy of Attribute(v6, v46);
LABEL_12:
    memcpy(v46, v47, 0x131uLL);
    return outlined destroy of Attribute(v46);
  }

  v12 = *&v47[23];
  v13 = swift_allocObject();
  *(v13 + 16) = MEMORY[0x277D84F90];
  v44 = 0;
  v45 = 1;
  result = swift_allocObject();
  v15 = result;
  *(result + 16) = 0;
  if (!v47[53])
  {
    outlined init with copy of Attribute(v6, v46);

    goto LABEL_12;
  }

  v16 = a1[4];
  if (HIDWORD(v12) >= *(v16 + 16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = *(v16 + 4 * HIDWORD(v12) + 32);
  if (v17 >= *(a1 + 3))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v18 = *a1;
  if (!*a1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v37[1] = v37;
  v19 = (v18 + 120 * v17);
  v20 = *v19;
  v21 = v19[1];
  v22 = v19[3];
  v42[2] = v19[2];
  v42[3] = v22;
  v42[0] = v20;
  v42[1] = v21;
  v23 = v19[4];
  v24 = v19[5];
  v25 = v19[6];
  *&v43[14] = *(v19 + 110);
  v42[5] = v24;
  *v43 = v25;
  v42[4] = v23;
  MEMORY[0x28223BE20](result);
  v36[2] = &v44;
  v36[3] = partial apply for specialized closure #1 in Attribute.forEachField<A>(within:userData:_:revisitor:);
  v36[4] = v40;
  v36[5] = v47;
  v36[6] = v13 + 16;
  v36[7] = a1;
  v26 = swift_allocObject();
  v37[0] = v36;
  v26[2] = v15;
  v26[3] = v13;
  v26[4] = a4;
  v26[5] = a5;
  v41 = 0;
  MEMORY[0x28223BE20](v26);
  v39 = a5;
  v35[2] = partial apply for specialized closure #1 in Attribute.forEachFieldMut<A>(within:userData:_:revisitor:);
  v35[3] = v36;
  v35[4] = &v41;
  v35[5] = a1;
  v27 = swift_allocObject();
  *(v27 + 16) = partial apply for specialized closure #2 in Attribute.forEachFieldMut<A>(within:userData:_:revisitor:);
  *(v27 + 24) = v26;
  v28 = MEMORY[0x28223BE20](v27);
  v38 = a4;
  v34[2] = closure #1 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:)specialized partial apply;
  v34[3] = v35;
  v34[4] = a1;
  result = MEMORY[0x28223BE20](v28);
  v33[2] = closure #2 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:)specialized partial apply;
  v33[3] = result;
  if ((v43[20] & 1) == 0)
  {
    v29 = *&v43[16];
    v30 = swift_allocObject();
    *(v30 + 16) = closure #1 in PType.forEachField<A>(within:userData:_:revisitor:)specialized partial apply;
    *(v30 + 24) = v34;
    v31 = swift_allocObject();
    *(v31 + 16) = closure #2 in PType.forEachField<A>(within:userData:_:revisitor:)specialized partial apply;
    *(v31 + 24) = v33;
    outlined init with copy of Attribute(v6, v46);
    outlined init with copy of PType(v42, v46);

    outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(v38);

    v46[0] = 1;
    specialized closure #1 in closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(thunk for @callee_guaranteed (@in_guaranteed A, @in_guaranteed B, @guaranteed IterativeTreeTraversal<A, B>) -> ()specialized partial apply, v31, thunk for @callee_guaranteed (@in_guaranteed A, @inout B, @inout IterativeTreeTraversal<A, B>) -> ()specialized partial apply, v30, 0, 0, 0, 0, 1, -1, 0, v29, 0);

    outlined destroy of PType(v42);
    LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

    if ((v29 & 1) == 0)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_16;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t Attribute.forEachField<A>(within:userData:_:revisitor:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  memcpy(__dst, v7, sizeof(__dst));
  v16[2] = a7;
  v16[3] = a3;
  v16[4] = a4;
  outlined init with copy of Attribute(v7, v18);
  Attribute.forEachFieldMut<A>(within:userData:_:revisitor:)(a1, a2, partial apply for closure #1 in Attribute.forEachField<A>(within:userData:_:revisitor:), v16, a5, a6, a7);
  memcpy(v18, __dst, 0x131uLL);
  return outlined destroy of Attribute(v18);
}

_OWORD *Attribute.forEachFieldMut<A>(within:userData:_:revisitor:)(_OWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = result[5];
  v51 = result[4];
  v52 = v8;
  v53 = result[6];
  v9 = result[1];
  v48[0] = *result;
  v48[1] = v9;
  v10 = result[3];
  v49 = result[2];
  v50 = v10;
  if ((*(v7 + 101) & 1) == 0)
  {
    v32 = a4;
    v33 = result;
    v34 = a2;
    v15 = *(v7 + 92);
    v16 = swift_allocObject();
    *(v16 + 16) = MEMORY[0x277D84F90];
    v46 = 0;
    v47 = 1;
    result = swift_allocObject();
    v17 = result;
    *(result + 2) = 0;
    if (!*(v7 + 212))
    {
LABEL_7:
    }

    if (HIDWORD(v15) >= *(v49 + 16))
    {
      __break(1u);
    }

    else
    {
      v18 = *(v49 + 4 * HIDWORD(v15) + 32);
      if (v18 < HIDWORD(v48[0]))
      {
        if (*&v48[0])
        {
          v31 = &v31;
          v19 = *&v48[0] + 120 * v18;
          v20 = *v19;
          v21 = *(v19 + 16);
          v22 = *(v19 + 48);
          v42[2] = *(v19 + 32);
          v42[3] = v22;
          v42[0] = v20;
          v42[1] = v21;
          v23 = *(v19 + 64);
          v24 = *(v19 + 80);
          v25 = *(v19 + 96);
          *(v43 + 14) = *(v19 + 110);
          v42[5] = v24;
          v43[0] = v25;
          v42[4] = v23;
          v26 = *(v19 + 80);
          v39 = *(v19 + 64);
          v40 = v26;
          v41[0] = *(v19 + 96);
          *(v41 + 14) = *(v19 + 110);
          v27 = *(v19 + 16);
          v35 = *v19;
          v36 = v27;
          v28 = *(v19 + 48);
          v37 = *(v19 + 32);
          v38 = v28;
          MEMORY[0x28223BE20](result);
          v30[2] = a7;
          v30[3] = &v46;
          v30[4] = a3;
          v30[5] = v32;
          v30[6] = v7;
          v30[7] = v16 + 16;
          v30[8] = v48;
          v29 = swift_allocObject();
          v29[2] = a7;
          v29[3] = v17;
          v29[4] = v16;
          v29[5] = a5;
          v29[6] = a6;
          outlined init with copy of PType(v42, v44);
          outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(a5);
          PType.forEachLinearizedField<A>(within:userData:_:revisitor:)(v33, v34, partial apply for closure #1 in Attribute.forEachFieldMut<A>(within:userData:_:revisitor:), v30, partial apply for closure #2 in Attribute.forEachFieldMut<A>(within:userData:_:revisitor:), v29, a7);

          v44[4] = v39;
          v44[5] = v40;
          v45[0] = v41[0];
          *(v45 + 14) = *(v41 + 14);
          v44[0] = v35;
          v44[1] = v36;
          v44[2] = v37;
          v44[3] = v38;
          outlined destroy of PType(v44);
          goto LABEL_7;
        }

LABEL_11:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t specialized closure #1 in Attribute.forEachFieldMut<A>(within:userData:_:revisitor:)(uint64_t result, unint64_t a2, uint64_t a3, unsigned int a4, char *a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(unint64_t, uint64_t, char *, uint64_t, unint64_t, uint64_t, void, char *, uint64_t, uint64_t, uint64_t), uint64_t a12, uint64_t a13, char **a14, uint64_t a15)
{
  v18 = a6;
  v21 = result;
  LODWORD(v22) = a10;
  if ((*(a10 + 8) & 1) == 0)
  {
    if (*a10 < a6)
    {
      goto LABEL_8;
    }

    *a10 = 0;
    *(a10 + 8) = 1;
  }

  v32 = result;
  v23 = *(a13 + 200);
  v15 = *(a13 + 212);
  result = swift_beginAccess();
  if (v15 <= a7)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v23)
  {
    goto LABEL_22;
  }

  v24 = a5;
  a5 = *a14;

  v25 = v23 + 40 * a7;
  v21 = v32;
  v15 = a11(a7, v25, v24, v32, a2 & 0xFFFFFFFF00000001, a3, a4, a5, v18, a8, a9);

  if ((v15 & 1) == 0)
  {
    *a10 = v18;
    *(a10 + 8) = 0;
  }

LABEL_8:
  v26 = *(a15 + 32);
  if (*(v26 + 16) <= a4)
  {
    __break(1u);
    goto LABEL_18;
  }

  v27 = *(v26 + 4 * a4 + 32);
  if (v27 >= *(a15 + 12))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (*a15)
  {
    if (!*(*a15 + 120 * v27 + 84))
    {
      return 1;
    }

    v22 = HIDWORD(a2);
    a5 = HIDWORD(v21);
    swift_beginAccess();
    v15 = *a14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a14 = v15;
    LODWORD(v18) = v21;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_13:
      v30 = *(v15 + 2);
      v29 = *(v15 + 3);
      if (v30 >= v29 >> 1)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v15);
        *a14 = v15;
      }

      *(v15 + 2) = v30 + 1;
      v31 = &v15[32 * v30];
      *(v31 + 8) = v18;
      *(v31 + 9) = a5;
      v31[40] = a2 & 1;
      *(v31 + 11) = v22;
      *(v31 + 6) = a3;
      *(v31 + 14) = a4;
      swift_endAccess();
      return 1;
    }

LABEL_20:
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    *a14 = v15;
    goto LABEL_13;
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t specialized closure #2 in Attribute.forEachFieldMut<A>(within:userData:_:revisitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  v17 = *(a7 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
    goto LABEL_9;
  }

  *(a7 + 16) = v19;
  swift_beginAccess();
  a7 = *(a8 + 16);
  if (!*(a7 + 16))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v20 = *(a8 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v22 = *(a7 + 16);
    if (v22)
    {
      goto LABEL_5;
    }

LABEL_11:
    __break(1u);
    return result;
  }

LABEL_10:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(a7);
  a7 = result;
  v22 = *(result + 16);
  if (!v22)
  {
    goto LABEL_11;
  }

LABEL_5:
  *(a7 + 16) = v22 - 1;
  *(a8 + 16) = a7;
  result = swift_endAccess();
  if (a9)
  {

    a9(a5, a1, a2 & 0xFFFFFFFF00000001, a3, a4, a7, a6);
  }

  return result;
}

uint64_t closure #2 in Attribute.forEachFieldMut<A>(within:userData:_:revisitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  v19 = *(a8 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
    goto LABEL_9;
  }

  v10 = a9;
  *(a8 + 16) = v21;
  swift_beginAccess();
  a8 = *(a9 + 16);
  if (!*(a8 + 16))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v22 = *(a9 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v24 = *(a8 + 16);
    if (v24)
    {
      goto LABEL_5;
    }

LABEL_11:
    __break(1u);
    return result;
  }

LABEL_10:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(a8);
  a8 = result;
  v24 = *(result + 16);
  if (!v24)
  {
    goto LABEL_11;
  }

LABEL_5:
  *(a8 + 16) = v24 - 1;
  *(v10 + 16) = a8;
  result = swift_endAccess();
  if (a10)
  {

    a10(a5, a1, a2 & 0xFFFFFFFF00000001, a3, a4, a8, a6, a7);
  }

  return result;
}

uint64_t Attribute.inputEdges.getter()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t Attribute.inputEdges.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t Attribute.outputEdges.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t Attribute.outputEdges.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Attribute.mark.setter(uint64_t result)
{
  *(v1 + 36) = result;
  *(v1 + 40) = BYTE4(result) & 1;
  return result;
}

uint64_t Attribute.interval.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t Attribute.interval.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2;
  return result;
}

uint64_t Attribute.kind.getter()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88) | (*(v0 + 89) << 8);
  return result;
}

uint64_t Attribute.kind.setter(uint64_t result, uint64_t a2, __int16 a3)
{
  *(v3 + 72) = result;
  *(v3 + 80) = a2;
  *(v3 + 88) = a3;
  *(v3 + 89) = HIBYTE(a3) & 1;
  return result;
}

uint64_t one-time initialization function for externalViewValue()
{
  if (one-time initialization token for external != -1)
  {
    swift_once();
  }

  v0 = static PType.Pattern.external;
  v1 = qword_280481CE8;
  v2 = dword_280481CF0;
  v3 = one-time initialization token for viewValue;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = static PType.Pattern.viewValue;
  v5 = qword_280481D00;
  v6 = dword_280481D08;
  v7 = one-time initialization token for any;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = static PType.Pattern.any;
  v9 = qword_280481D18;
  v10 = dword_280481D20;
  dword_280481D58 = static PType.Pattern.any;
  qword_280481D60 = qword_280481D18;
  dword_280481D68 = dword_280481D20;
  word_280481D6C = 0;
  LODWORD(static Attribute.Pattern.externalViewValue) = v0;
  *(&static Attribute.Pattern.externalViewValue + 1) = v1;
  dword_280481D38 = v2;
  dword_280481D40 = v4;
  *&xmmword_280481D48 = v5;
  DWORD2(xmmword_280481D48) = v6;
  swift_retain_n();

  dword_280481D58 = v8;
  qword_280481D60 = v9;
  dword_280481D68 = v10;
}

uint64_t Attribute.Pattern.init(body:value:view:debug:)@<X0>(uint64_t result@<X0>, int *a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = a2[4];
  v10 = *a3;
  v11 = *(a3 + 1);
  v12 = a3[4];
  if (one-time initialization token for any != -1)
  {
    v13 = a4;
    result = swift_once();
    a4 = v13;
  }

  *(a4 + 68) = 0;
  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = v6;
  *(a4 + 24) = v7;
  *(a4 + 32) = v8;
  *(a4 + 40) = v9;
  *(a4 + 48) = v10;
  *(a4 + 56) = v11;
  *(a4 + 64) = v12;
  return result;
}

uint64_t static Attribute.Pattern.externalViewValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for externalViewValue != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *&dword_280481D58;
  v8[2] = xmmword_280481D48;
  v9[0] = *&dword_280481D58;
  v2 = *(&qword_280481D60 + 6);
  *(v9 + 14) = *(&qword_280481D60 + 6);
  v4 = static Attribute.Pattern.externalViewValue;
  v3 = *&dword_280481D38;
  v8[0] = static Attribute.Pattern.externalViewValue;
  v8[1] = *&dword_280481D38;
  *(a1 + 32) = xmmword_280481D48;
  *(a1 + 48) = v1;
  *(a1 + 62) = v2;
  *a1 = v4;
  *(a1 + 16) = v3;
  return outlined init with copy of Attribute.Pattern(v8, v7);
}

uint64_t static Attribute.Pattern.value(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (one-time initialization token for currentIdx != -1)
  {
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(static PType.Pattern.currentIdx, 1u, memory_order_relaxed);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C328DC0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  PType.Pattern.IsA.init(_:genericParams:)(inited, 0, &v13);
  v8 = v13;
  if (one-time initialization token for any != -1)
  {
    swift_once();
  }

  v9 = static PType.Pattern.any;
  v10 = qword_280481D18;
  v11 = dword_280481D20;
  *(a3 + 68) = 0;
  *a3 = v9;
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 24) = add_explicit + 1;
  *(a3 + 32) = v8;
  *(a3 + 40) = 0;
  *(a3 + 48) = v9;
  *(a3 + 56) = v10;
  *(a3 + 64) = v11;
  return swift_retain_n();
}

uint64_t static Attribute.Pattern.value(_:)@<X0>(uint64_t a1@<X8>)
{

  PType.Pattern.IsA.init(_:genericParams:)(v2, 0, &v9);
  v3 = v9;
  if (one-time initialization token for currentIdx != -1)
  {
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(static PType.Pattern.currentIdx, 1u, memory_order_relaxed);
  if (one-time initialization token for any != -1)
  {
    swift_once();
  }

  v5 = static PType.Pattern.any;
  v6 = qword_280481D18;
  v7 = dword_280481D20;
  *(a1 + 68) = 0;
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = add_explicit + 1;
  *(a1 + 32) = v3;
  *(a1 + 40) = 0;
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  *(a1 + 64) = v7;
  return swift_retain_n();
}

uint64_t static Attribute.Pattern.body(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (one-time initialization token for currentIdx != -1)
  {
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(static PType.Pattern.currentIdx, 1u, memory_order_relaxed);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C328DC0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  PType.Pattern.IsA.init(_:genericParams:)(inited, 0, &v13);
  v8 = v13;
  if (one-time initialization token for any != -1)
  {
    swift_once();
  }

  v9 = static PType.Pattern.any;
  v10 = qword_280481D18;
  v11 = dword_280481D20;
  *(a3 + 68) = 0;
  *a3 = add_explicit + 1;
  *(a3 + 8) = v8;
  *(a3 + 16) = 0;
  *(a3 + 24) = v9;
  *(a3 + 32) = v10;
  *(a3 + 40) = v11;
  *(a3 + 48) = v9;
  *(a3 + 56) = v10;
  *(a3 + 64) = v11;
  return swift_retain_n();
}

uint64_t static Attribute.Pattern.view(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (one-time initialization token for currentIdx != -1)
  {
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(static PType.Pattern.currentIdx, 1u, memory_order_relaxed);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C328DC0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  PType.Pattern.IsA.init(_:genericParams:)(inited, 0, &v13);
  v8 = v13;
  if (one-time initialization token for any != -1)
  {
    swift_once();
  }

  v9 = static PType.Pattern.any;
  v10 = qword_280481D18;
  v11 = dword_280481D20;
  *(a3 + 68) = 0;
  *a3 = v9;
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 24) = v9;
  *(a3 + 32) = v10;
  *(a3 + 40) = v11;
  *(a3 + 48) = add_explicit + 1;
  *(a3 + 56) = v8;
  *(a3 + 64) = 0;
  return swift_retain_n();
}

uint64_t static Attribute.Pattern.body(_:)@<X0>(uint64_t a1@<X8>)
{

  PType.Pattern.IsA.init(_:genericParams:)(v2, 0, &v9);
  v3 = v9;
  if (one-time initialization token for currentIdx != -1)
  {
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(static PType.Pattern.currentIdx, 1u, memory_order_relaxed);
  if (one-time initialization token for any != -1)
  {
    swift_once();
  }

  v5 = static PType.Pattern.any;
  v6 = qword_280481D18;
  v7 = dword_280481D20;
  *(a1 + 68) = 0;
  *a1 = add_explicit + 1;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  *(a1 + 64) = v7;
  return swift_retain_n();
}

uint64_t static Attribute.Pattern.external(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (one-time initialization token for external != -1)
  {
    swift_once();
  }

  v6 = static PType.Pattern.external;
  v7 = qword_280481CE8;
  v8 = dword_280481CF0;
  v9 = one-time initialization token for currentIdx;

  if (v9 != -1)
  {
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(static PType.Pattern.currentIdx, 1u, memory_order_relaxed);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C328DC0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  PType.Pattern.IsA.init(_:genericParams:)(inited, 0, &v17);
  v12 = v17;
  if (one-time initialization token for any != -1)
  {
    swift_once();
  }

  v13 = static PType.Pattern.any;
  v14 = qword_280481D18;
  v15 = dword_280481D20;
  *(a3 + 68) = 0;
  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  *(a3 + 24) = add_explicit + 1;
  *(a3 + 32) = v12;
  *(a3 + 40) = 0;
  *(a3 + 48) = v13;
  *(a3 + 56) = v14;
  *(a3 + 64) = v15;
}

uint64_t Attribute.indirectType(within:)(uint64_t a1)
{
  result = Attribute.indirectSource(within:)(a1);
  if (result >= *(a1 + 84))
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = *(a1 + 72);
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3 + 312 * result;
  if ((*(v4 + 101) & 1) == 0)
  {
    result = *(v4 + 92);
    v5 = *(v4 + 100);
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t Attribute.Pattern.match(_:view:within:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 8);
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = *(v4 + 32);
  v12 = *(v4 + 40);
  v43 = *(v4 + 48);
  v13 = *(v4 + 56);
  v14 = *(v4 + 64);
  LODWORD(v62) = *v4;
  *(&v62 + 1) = v8;
  LODWORD(v63) = v9;
  v15 = *(*a4 + 136);
  v17 = v15[1];
  v16 = v15[2];
  v76[0] = *v15;
  v76[1] = v17;
  v76[2] = v16;
  v18 = v15[6];
  v20 = v15[3];
  v19 = v15[4];
  v76[5] = v15[5];
  v76[6] = v18;
  v76[3] = v20;
  v76[4] = v19;
  v72 = v15[3];
  v73 = v15[4];
  v74 = v15[5];
  v75 = v15[6];
  v69 = *v15;
  v70 = v15[1];
  v71 = v15[2];

  outlined init with copy of Interpreter.Storage.Types(v76, v77);
  PType.Pattern.match(type:within:)(a1, &v69);
  v22 = v21;
  v77[4] = v73;
  v77[5] = v74;
  v77[6] = v75;
  v77[0] = v69;
  v77[1] = v70;
  v77[2] = v71;
  v77[3] = v72;
  outlined destroy of Interpreter.Storage.Types(v77);

  if ((v22 & 1) == 0)
  {
    goto LABEL_5;
  }

  LODWORD(v44) = v10;
  *(&v44 + 1) = v11;
  LODWORD(v45) = v12;
  v23 = *(*a4 + 136);
  v25 = v23[1];
  v24 = v23[2];
  v62 = *v23;
  v63 = v25;
  v64 = v24;
  v26 = v23[6];
  v28 = v23[3];
  v27 = v23[4];
  v67 = v23[5];
  v68 = v26;
  v65 = v28;
  v66 = v27;
  v58 = v23[3];
  v59 = v23[4];
  v60 = v23[5];
  v61 = v23[6];
  v55 = *v23;
  v56 = v23[1];
  v57 = v23[2];

  outlined init with copy of Interpreter.Storage.Types(&v62, v54);
  PType.Pattern.match(type:within:)(HIDWORD(a1), &v55);
  v30 = v29;
  v73 = v59;
  v74 = v60;
  v75 = v61;
  v69 = v55;
  v70 = v56;
  v71 = v57;
  v72 = v58;
  outlined destroy of Interpreter.Storage.Types(&v69);

  if (v30)
  {
    if ((a3 & 0x100000000) != 0)
    {
      v41 = 1;
    }

    else
    {
      v51 = v43;
      v52 = v13;
      v53 = v14;
      v31 = *(*a4 + 136);
      v33 = v31[1];
      v32 = v31[2];
      v54[0] = *v31;
      v54[1] = v33;
      v54[2] = v32;
      v34 = v31[6];
      v36 = v31[3];
      v35 = v31[4];
      v54[5] = v31[5];
      v54[6] = v34;
      v54[3] = v36;
      v54[4] = v35;
      v37 = v31[5];
      v48 = v31[4];
      v49 = v37;
      v50 = v31[6];
      v38 = v31[1];
      v44 = *v31;
      v45 = v38;
      v39 = v31[3];
      v46 = v31[2];
      v47 = v39;

      outlined init with copy of Interpreter.Storage.Types(v54, &v55);
      PType.Pattern.match(type:within:)(a3, &v44);
      v41 = v40;
      v59 = v48;
      v60 = v49;
      v61 = v50;
      v55 = v44;
      v56 = v45;
      v57 = v46;
      v58 = v47;
      outlined destroy of Interpreter.Storage.Types(&v55);
    }
  }

  else
  {
LABEL_5:
    v41 = 0;
  }

  return v41 & 1;
}

uint64_t Attribute.AttributeType.describe(state:)(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 41);
  if (*(a1 + 41))
  {
    if (v4 != 1)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v5 = *(a1 + 32);
  }

  else
  {
    v5 = *(v3 + 176);
  }

  v6 = *(v5 + 136);
  v19 = v6[4];
  v21 = v6[5];
  v23 = v6[6];
  v11 = *v6;
  v13 = v6[1];
  v15 = v6[2];
  v17 = v6[3];
  v7 = Interpreter.Storage.Types.subscript.getter(a2);
  MEMORY[0x26D69CDB0](v7);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  if (!v4)
  {
    v3 = *(v3 + 176);
  }

  v8 = *(v3 + 136);
  v20 = v8[4];
  v22 = v8[5];
  v24 = v8[6];
  v12 = *v8;
  v14 = v8[1];
  v16 = v8[2];
  v18 = v8[3];
  v9 = Interpreter.Storage.Types.subscript.getter(HIDWORD(a2));
  MEMORY[0x26D69CDB0](v9);

  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  return 40;
}

void Attribute.AttributeType.hash(into:)(int a1, unint64_t a2, Swift::UInt8 a3)
{
  v4 = HIDWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(a3);
}

Swift::Int Attribute.AttributeType.hashValue.getter(unint64_t a1, Swift::UInt8 a2)
{
  v3 = a1;
  v4 = HIDWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Attribute.AttributeType()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Attribute.AttributeType()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 8);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Attribute.AttributeType()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t Attribute.rawType.getter()
{
  result = *(v0 + 92);
  v2 = *(v0 + 100) | (*(v0 + 101) << 8);
  return result;
}

uint64_t Attribute.rawType.setter(uint64_t result, __int16 a2)
{
  *(v2 + 92) = result;
  *(v2 + 100) = a2;
  *(v2 + 101) = HIBYTE(a2) & 1;
  return result;
}

uint64_t Attribute.abstraction.getter()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

uint64_t Attribute.abstraction.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2;
  return result;
}

uint64_t Attribute._tree.getter()
{
  result = *(v0 + 128);
  v2 = *(v0 + 136);
  return result;
}

uint64_t Attribute._tree.setter(uint64_t result, char a2)
{
  *(v2 + 128) = result;
  *(v2 + 136) = a2 & 1;
  return result;
}

uint64_t Attribute.created.setter(uint64_t a1)
{
  v3 = *(v1 + 144);

  *(v1 + 144) = a1;
  return result;
}

uint64_t Attribute.treeValue(in:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(v2 + 168))
  {
    *a2 = 0;
    a2[1] = 0;
    a2[3] = 0;
    a2[4] = 0;
    a2[2] = 1;
    return result;
  }

  if (*(v2 + 136))
  {
    goto LABEL_18;
  }

  v3 = *(v2 + 128);
  if (HIDWORD(v3) >= *(result + 124))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = *(result + 112);
  if (!v4)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v3 & 0x80000000) != 0)
  {
    goto LABEL_15;
  }

  v5 = *(v4 + 168 * HIDWORD(v3));
  if (v3 >= *(v5 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = *(v2 + 160);
  v7 = v5 + 208 * v3;
  if (v6 >= *(v7 + 164))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = *(v7 + 152);
  if (!v8)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v9 = (v8 + 40 * v6);
  v10 = *v9;
  v12 = *(v9 + 1);
  v11 = *(v9 + 2);
  v13 = v9[6];
  v14 = *(v9 + 28);
  v15 = *(v9 + 4);
  v16 = v14 == 0;
  v17 = 0x100000000;
  if (v16)
  {
    v17 = 0;
  }

  *a2 = v10;
  a2[1] = v12;
  a2[2] = v11;
  a2[3] = v17 | v13;
  a2[4] = v15;
}

uint64_t Attribute.dependency.setter(uint64_t result)
{
  *(v1 + 172) = result;
  *(v1 + 176) = BYTE4(result) & 1;
  return result;
}

double Attribute.value.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 192);
  v3 = *(v1 + 196);
  v4 = *(v1 + 200);
  v5 = *(v1 + 216);
  *a1 = *(v1 + 184);
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v4;
  result = *(v1 + 208);
  *(a1 + 24) = result;
  *(a1 + 32) = v5;
  return result;
}

__n128 Attribute.value.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 184) = *a1;
  *(v1 + 200) = v3;
  *(v1 + 216) = *(a1 + 32);
  return result;
}

uint64_t Attribute.peer.setter(uint64_t result)
{
  *(v1 + 272) = result;
  *(v1 + 276) = BYTE4(result) & 1;
  return result;
}

uint64_t Attribute.recentValueUpdate.getter()
{
  result = *(v0 + 288);
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);
  return result;
}

uint64_t Attribute.recentValueUpdate.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 288) = result;
  *(v3 + 296) = a2;
  *(v3 + 304) = a3 & 1;
  return result;
}

BOOL Attribute.changed.getter()
{
  if (*(v0 + 304))
  {
    return 0;
  }

  v2 = *(v0 + 184);
  return v2 >= *(v0 + 288) && *(v0 + 296) >= v2;
}

uint64_t Attribute.lastUpdateTime.getter()
{
  if (*(v0 + 220))
  {
    return *(v0 + 184);
  }

  if (*(v0 + 304))
  {
    return 0;
  }

  return *(v0 + 296);
}

uint64_t Attribute.indirectSource(within:)(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 89))
  {
    return *(v1 + 32);
  }

  if (*(v1 + 88))
  {
    goto LABEL_14;
  }

  v4 = **(a1 + 88);
  if (!*(v4 + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = *(a1 + 72);
  v7 = *(a1 + 84);
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(*(v2 + 72), *(v2 + 80));
  if ((v9 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = *(*(v4 + 56) + 4 * v8);
  if (v10 >= v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!v5)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  memcpy(__dst, (v5 + 312 * v10), sizeof(__dst));
  return Attribute.indirectSource(within:)(a1);
}

uint64_t Attribute.pendingThrough(snapshot:ret:context:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 12);
  if (v3)
  {
    v5 = result;
    v6 = *v2;
    v7 = v6;
    while (v6)
    {
      if (*v7 >= *(v5 + 108))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        break;
      }

      v8 = *(v5 + 96);
      if (!v8)
      {
        goto LABEL_26;
      }

      v9 = (v8 + 24 * *v7);
      if ((v9[4] & 2) != 0)
      {
        v10 = *v9;
        v11 = *(a2 + 12);
        if (v11 == *(a2 + 8))
        {
          if (v11)
          {
            v12 = 2 * v11;
          }

          else
          {
            v12 = 1;
          }

          if (HIDWORD(v12))
          {
            goto LABEL_24;
          }

          v13 = *a2;
          *(a2 + 8) = v12;
          if (v13)
          {
            result = realloc(v13, 4 * v12);
            if (!result)
            {
              goto LABEL_28;
            }

            *a2 = result;
          }

          else
          {
            result = swift_slowAlloc();
            *a2 = result;
            if (!result)
            {
              goto LABEL_27;
            }
          }
        }

        else
        {
          result = *a2;
          if (!*a2)
          {
            goto LABEL_27;
          }
        }

        v14 = *(a2 + 12);
        *(result + 4 * v14) = v10;
        v15 = __CFADD__(v14, 1);
        v16 = v14 + 1;
        if (v15)
        {
          __break(1u);
          return result;
        }

        *(a2 + 12) = v16;
      }

      ++v7;
      if (!--v3)
      {
        return result;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

uint64_t Attribute.pendingThroughResolved(snapshot:ret:)(uint64_t a1, uint64_t a2)
{
  result = Attribute.pendingThrough(snapshot:ret:context:)(a1, a2);
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = 0;
    while (v6 < *(a2 + 12))
    {
      v7 = *a2;
      if (!*a2)
      {
        goto LABEL_11;
      }

      v8 = *(v7 + 4 * v6);
      if (v8 >= *(a1 + 84))
      {
        goto LABEL_10;
      }

      v9 = *(a1 + 72);
      if (!v9)
      {
        goto LABEL_12;
      }

      memcpy(__dst, (v9 + 312 * v8), sizeof(__dst));
      result = Attribute.indirectSource(within:)(a1);
      *(v7 + 4 * v6++) = result;
      if (v5 == v6)
      {
        return result;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in implicit closure #1 in Attribute.add(displayName:type:within:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 136))
  {
    goto LABEL_27;
  }

  v10 = result;
  v11 = *(a2 + 128);
  if (HIDWORD(v11) >= *(*result + 124))
  {
    __break(1u);
  }

  else
  {
    v12 = *(*result + 112);
    if (!v12)
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v5 = a4;
    v6 = a3;
    v7 = *(a2 + 32);
    v8 = (v12 + 168 * HIDWORD(v11));
    v4 = *v8;

    result = swift_isUniquelyReferenced_nonNull_native();
    *v8 = v4;
    if (result)
    {
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  v4 = result;
  *v8 = result;
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

LABEL_6:
  if (v11 >= *(v4 + 16))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v13 = v4 + 208 * v11;
  v14 = *(v13 + 164);
  if (v14 == *(v13 + 160))
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v14);
  }

  v15 = *(v13 + 152);
  if (!v15)
  {
    goto LABEL_29;
  }

  v16 = *(v13 + 164);
  v17 = v15 + 40 * v16;
  *v17 = v7;
  *(v17 + 8) = v6;
  *(v17 + 16) = v5;
  *(v17 + 24) = 0;
  *(v17 + 28) = 1;
  *(v17 + 32) = 0x4000000100000000;
  if (v16 == -1)
  {
    goto LABEL_22;
  }

  *(v13 + 164) = v16 + 1;
  if (*(a2 + 136))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v18 = *(a2 + 128);
  if (HIDWORD(v18) >= *(*v10 + 124))
  {
    goto LABEL_23;
  }

  v19 = *(*v10 + 112);
  if (v19)
  {
    if ((v18 & 0x80000000) == 0)
    {
      v20 = *(v19 + 168 * HIDWORD(v18));
      if (v18 < *(v20 + 16))
      {
        v21 = *(v20 + 208 * v18 + 164);
        if (v21)
        {
          return v21 - 1;
        }

        goto LABEL_26;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t Attribute.describe(state:)(__int128 *a1)
{
  v20 = *a1;
  *v21 = a1[1];
  *&v21[10] = *(a1 + 26);
  _StringGuts.grow(_:)(32);

  if (__OFSUB__(v20, 1))
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v22 = *(a1 + 8);
  v23 = *(a1 + 24);
  v24 = *(a1 + 20);
  v4 = specialized InspectionState.wrapDescription<A>(_:)(*(v1 + 32));
  MEMORY[0x26D69CDB0](v4);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26C328DC0;
  v6 = *(v1 + 44);
  v7 = MEMORY[0x277D84D30];
  *(v5 + 56) = MEMORY[0x277D84CC0];
  *(v5 + 64) = v7;
  *(v5 + 32) = v6;
  v8 = String.init(format:_:)();
  MEMORY[0x26D69CDB0](v8);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  if (*(v1 + 89))
  {
    v9 = 0;
  }

  else
  {
    v9 = 0x7463657269646E69;
  }

  if (*(v1 + 89))
  {
    v10 = 0xE000000000000000;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  MEMORY[0x26D69CDB0](v9, v10);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  if (*(v1 + 152))
  {
    v11 = 0x646563616C70;
  }

  else
  {
    v11 = 0;
  }

  if (*(v1 + 152))
  {
    v12 = 0xE600000000000000;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  MEMORY[0x26D69CDB0](v11, v12);

  MEMORY[0x26D69CDB0](2105376, 0xE300000000000000);
  v13 = Inspectable_Context.snapshot.getter();
  result = Attribute.indirectSource(within:)(v13);
  if (result >= *(v13 + 84))
  {
    goto LABEL_19;
  }

  v14 = *(v13 + 72);
  if (!v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v15 = v14 + 312 * result;
  if ((*(v15 + 101) & 1) == 0)
  {
    v16 = *(v15 + 100);
    v17 = specialized InspectionState.wrapDescription<A>(_:)(*(v15 + 92));
    MEMORY[0x26D69CDB0](v17);

    MEMORY[0x26D69CDB0](2105354, 0xE300000000000000);
    v18 = specialized InspectionState.describe<A>(_:_:)(1701147252, 0xE400000000000000, *(v1 + 128), *(v1 + 136));
    MEMORY[0x26D69CDB0](v18);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v19 = specialized InspectionState.describe<A>(_:_:)(0x6870617267627573, 0xE800000000000000, *(v1 + 180));
    MEMORY[0x26D69CDB0](v19);

    MEMORY[0x26D69CDB0](10506, 0xE200000000000000);
    return 0x2065646F6E28;
  }

LABEL_21:
  __break(1u);
  return result;
}

Swift::Void __swiftcall Attribute.copy()()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = *(v0 + 8);
    v3 = *(v0 + 12);
    v4 = swift_slowAlloc();
    *v0 = v4;
    memcpy(v4, v1, 8 * v3);
  }

  v5 = *(v0 + 16);
  if (v5)
  {
    v6 = *(v0 + 24);
    v7 = *(v0 + 28);
    v8 = swift_slowAlloc();
    *(v0 + 16) = v8;
    memcpy(v8, v5, 8 * v7);
  }

  v9 = *(v0 + 200);
  if (v9)
  {
    v10 = *(v0 + 212);
    v11 = 5 * *(v0 + 208);
    v12 = swift_slowAlloc();
    *(v0 + 200) = v12;

    memcpy(v12, v9, 40 * v10);
  }
}

uint64_t protocol witness for Mortal.interval.getter in conformance Attribute()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t protocol witness for Mortal.interval.setter in conformance Attribute(uint64_t result, uint64_t a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2;
  return result;
}

void T_NodeAdded.model(within:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v5 = a1;
  v194 = HIDWORD(a4);
  v195 = a4;
  v6 = HIDWORD(a5);
  v7 = (a1 + 56);
  v8 = *(a1 + 72);
  v251[0] = *(a1 + 56);
  v251[1] = v8;
  *v252 = *(a1 + 88);
  *&v252[9] = *(a1 + 97);
  v9 = (a1 + 72);
  v10 = (a1 + 84);
  v190 = (a1 + 88);
  v11 = (a1 + 104);
  v12 = (a1 + 56);
  v13 = (a1 + 72);
  v14 = (a1 + 84);
  v15 = (a1 + 104);
  while (1)
  {
    v16 = *v15;
    if (*v14 >= 2u)
    {
      v17 = *v13;
      if ((*(v17 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v16)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v251);
    }

    v13 = (v16 + 16);
    v14 = (v16 + 28);
    v15 = (v16 + 48);
    v12 = v16;
  }

  v18 = *v12;
  if (!v18)
  {
    goto LABEL_146;
  }

  v192 = a5;
  v19 = *(*(v18 + 24 * *(v17 + 8)) + 112);
  if (!v19)
  {
    goto LABEL_142;
  }

  v237 = *v19;
  v20 = *(v19 + 2);
  v21 = *(v19 + 88);
  v234 = *(v19 + 72);
  v235 = v21;
  v236[0] = *(v19 + 104);
  *(v236 + 13) = *(v19 + 117);
  v22 = *(v19 + 40);
  v231 = *(v19 + 24);
  v232 = v22;
  v233 = *(v19 + 56);
  v23 = *v20;
  if (!*(*v20 + 16))
  {
    v29 = 0;
    v25 = HIDWORD(a5);
LABEL_14:
    v30 = 0xFFFFFFFFLL;
    v27 = v25;
    v196 = v25;
    goto LABEL_15;
  }

  v24 = specialized __RawDictionaryStorage.find<A>(_:)(HIDWORD(a5));
  v25 = v6;
  if ((v26 & 1) == 0)
  {
    v29 = 0;
    goto LABEL_14;
  }

  v27 = v6;
  v28 = *(v23 + 56) + 24 * v24;
  v196 = *v28;
  v29 = *(v28 + 8);
  v30 = *(v28 + 16);
LABEL_15:
  v31 = v7[1];
  v249[0] = *v7;
  v249[1] = v31;
  v250[0] = v7[2];
  *(v250 + 9) = *(v7 + 41);
  v32 = v7;
  v33 = v9;
  v34 = v10;
  v35 = v11;
  while (1)
  {
    v36 = *v35;
    if (*v34 >= 2u)
    {
      v37 = *v33;
      if ((*(v37 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v36)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v249);
    }

    v33 = (v36 + 16);
    v34 = (v36 + 28);
    v35 = (v36 + 48);
    v32 = v36;
  }

  v38 = *v32;
  if (!v38)
  {
    goto LABEL_147;
  }

  v39 = *(*(v38 + 24 * *(v37 + 8)) + 112);
  if (!v39)
  {
    goto LABEL_143;
  }

  *v39 = v237;
  v40 = v233;
  *(v39 + 72) = v234;
  v41 = v236[0];
  *(v39 + 88) = v235;
  *(v39 + 104) = v41;
  v42 = v232;
  *(v39 + 24) = v231;
  *(v39 + 40) = v42;
  *(v39 + 16) = v20;
  *(v39 + 117) = *(v236 + 13);
  *(v39 + 56) = v40;
  v238 = v196;
  v240 = v30;
  v43 = __CFADD__(v29, 1);
  v44 = v29 + 1;
  if (v43)
  {
    __break(1u);
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  v239 = v44;
  v45 = v7[1];
  v247[0] = *v7;
  v247[1] = v45;
  v248[0] = v7[2];
  *(v248 + 9) = *(v7 + 41);
  v46 = v7;
  v47 = v9;
  v48 = v10;
  v49 = v11;
  v30 = v27;
  while (1)
  {
    v50 = *v49;
    if (*v48 >= 2u)
    {
      v51 = *v47;
      if ((*(v51 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v50)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v247);
    }

    v47 = (v50 + 16);
    v48 = (v50 + 28);
    v49 = (v50 + 48);
    v46 = v50;
  }

  v52 = *v46;
  if (!v52)
  {
    goto LABEL_148;
  }

  v53 = *(*(v52 + 24 * *(v51 + 8)) + 112);
  if (!v53)
  {
    goto LABEL_144;
  }

  v54 = v53[5];
  v228 = v53[4];
  v229 = v54;
  v230[0] = v53[6];
  *(v230 + 13) = *(v53 + 109);
  v55 = v53[1];
  v224 = *v53;
  v225 = v55;
  v56 = v53[3];
  v226 = v53[2];
  v227 = v56;
  specialized closure #2 in static TraceAddress.rename(address:initialize:within:)(&v225, v27, &v238);
  v58 = v7[1];
  v245[0] = *v7;
  v245[1] = v58;
  v246[0] = v7[2];
  *(v246 + 9) = *(v7 + 41);
  v59 = v7;
  v60 = v9;
  v61 = v10;
  v62 = v11;
  while (1)
  {
    v63 = *v62;
    if (*v61 >= 2u)
    {
      v64 = *v60;
      if ((*(v64 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v63)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v245);
    }

    v60 = (v63 + 16);
    v61 = (v63 + 28);
    v62 = (v63 + 48);
    v59 = v63;
  }

  v65 = *v59;
  if (!v65)
  {
    goto LABEL_149;
  }

  v66 = *(*(v65 + 24 * *(v64 + 8)) + 112);
  if (!v66)
  {
    goto LABEL_145;
  }

  v67 = v225;
  *v66 = v224;
  v66[1] = v67;
  v68 = v227;
  v66[2] = v226;
  v66[3] = v68;
  *(v66 + 109) = *(v230 + 13);
  v69 = v230[0];
  v66[5] = v229;
  v66[6] = v69;
  v66[4] = v228;
  if (v5[48])
  {
    return;
  }

  v70 = v5[1];
  if (v70 != 2)
  {
    if (v70 != 4)
    {
      return;
    }

    v71 = v7[1];
    v220 = *v7;
    v221 = v71;
    v222[0] = v7[2];
    *(v222 + 9) = *(v7 + 41);
    v72 = v7;
    v73 = v9;
    v74 = v10;
    v75 = v11;
    while (1)
    {
      v76 = *v75;
      if (*v74 > 1u)
      {
        v77 = *v73;
        if ((*(v77 + 12) & 1) == 0)
        {
          break;
        }
      }

      if (!v76)
      {
        goto LABEL_69;
      }

      v73 = (v76 + 16);
      v74 = (v76 + 28);
      v75 = (v76 + 48);
      v72 = v76;
    }

    v138 = *v72;
    if (!v138)
    {
      goto LABEL_163;
    }

    v115 = v138 + 24 * *(v77 + 8);
    v139 = *(*v115 + 112);
    if (!v139)
    {
      goto LABEL_150;
    }

    if (*(v139 + 124))
    {
      return;
    }

    if (*(v139 + 120) == v27)
    {
      T_NodeSetValue.Closure.apply(within:)(v5, v57, v27);
      v140 = v7[1];
      v214 = *v7;
      v215 = v140;
      v216[0] = v7[2];
      *(v216 + 9) = *(v7 + 41);
      while (1)
      {
        v141 = *v11;
        if (*v10 > 1u && (*(*v9 + 12) & 1) == 0)
        {
          break;
        }

        if (!v141)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, &v214);
        }

        v9 = (v141 + 16);
        v10 = (v141 + 28);
        v11 = (v141 + 48);
        v7 = v141;
      }

      if (!*v7)
      {
        goto LABEL_166;
      }

      v182 = *(*(*v7 + 24 * *(*v9 + 8)) + 112);
      if (v182)
      {
        *(v182 + 112) = 0;
        *(v182 + 120) = 0;
        *(v182 + 124) = 1;
        return;
      }

      goto LABEL_162;
    }

    __break(1u);
LABEL_140:
    v184 = v115;
    specialized _NativeDictionary.copy()();
    v115 = v184;
    goto LABEL_71;
  }

  v186 = v44;
  v78 = *(*(v5 + 22) + 136);
  v79 = *(v78 + 4);
  if (v194 >= *(v79 + 16))
  {
    goto LABEL_125;
  }

  v80 = *(v79 + 4 * v194 + 32);
  v10 = &v200;
  if (v80 >= *(v78 + 3))
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v188 = *(v5 + 22);
  if (!*v78)
  {
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  v81 = *v78 + 120 * v80;
  v82 = *v81;
  v83 = *(v81 + 16);
  v84 = *(v81 + 48);
  v216[0] = *(v81 + 32);
  v216[1] = v84;
  v214 = v82;
  v215 = v83;
  v85 = *(v81 + 64);
  v86 = *(v81 + 80);
  v87 = *(v81 + 96);
  *(v217 + 14) = *(v81 + 110);
  v216[3] = v86;
  v217[0] = v87;
  v216[2] = v85;
  v88 = *(v81 + 80);
  v211 = *(v81 + 64);
  v212 = v88;
  v213[0] = *(v81 + 96);
  *(v213 + 14) = *(v81 + 110);
  v89 = *(v81 + 16);
  v207 = *v81;
  v208 = v89;
  v90 = *(v81 + 48);
  v209 = *(v81 + 32);
  v210 = v90;
  v91 = v78[2];
  v92 = *v78;
  v218[1] = v78[1];
  v218[2] = v91;
  v93 = v78[6];
  v95 = v78[3];
  v94 = v78[4];
  v218[5] = v78[5];
  v218[6] = v93;
  v218[3] = v95;
  v218[4] = v94;
  v218[0] = v92;
  v96 = v78[4];
  v97 = v78[6];
  v205 = v78[5];
  v206 = v97;
  v98 = v78[1];
  v200 = *v78;
  v201 = v98;
  v99 = v78[2];
  v203 = v78[3];
  v204 = v96;
  v202 = v99;
  outlined init with copy of PType(&v214, &v220);
  outlined init with copy of Interpreter.Storage.Types(v218, &v220);
  PType.basename(within:)(&v200);
  v219[4] = v204;
  v219[5] = v205;
  v219[6] = v206;
  v219[0] = v200;
  v219[1] = v201;
  v219[2] = v202;
  v219[3] = v203;
  outlined destroy of Interpreter.Storage.Types(v219);
  v222[2] = v211;
  v222[3] = v212;
  v223[0] = v213[0];
  *(v223 + 14) = *(v213 + 14);
  v220 = v207;
  v221 = v208;
  v222[0] = v209;
  v222[1] = v210;
  outlined destroy of PType(&v220);
  if (specialized Sequence<>.starts<A>(with:)() & 1) != 0 || (specialized Sequence<>.starts<A>(with:)())
  {

    v195 |= 1u;
LABEL_55:
    v100 = v188;
    goto LABEL_56;
  }

  if (specialized Sequence<>.starts<A>(with:)())
  {
  }

  else
  {
    v183 = specialized Sequence<>.starts<A>(with:)();

    if ((v183 & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  v100 = v188;
  if ((v195 & 2) == 0)
  {
    v195 |= 2u;
  }

LABEL_56:
  LODWORD(v27) = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(a2, v5);
  Hasher.init()();
  v101 = *(v100 + 136);
  v102 = v101[4];
  if (v194 >= *(v102 + 16))
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  v103 = *(v102 + 4 * v194 + 32);
  if (v103 >= *(v101 + 3))
  {
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v104 = *v101;
  v20 = v44;
  if (!v104)
  {
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  MEMORY[0x26D69DBC0](*(v104 + 120 * v103 + 40));
  v105 = *(v100 + 136);
  v106 = v105[4];
  if (v192 >= *(v106 + 16))
  {
    goto LABEL_129;
  }

  v107 = *(v106 + 4 * v192 + 32);
  if (v107 >= *(v105 + 3))
  {
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v108 = *v105;
  if (!v108)
  {
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  MEMORY[0x26D69DBC0](*(v108 + 120 * v107 + 40));
  if (v5[48])
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  v109 = *v5;
  if (v109 >= *(v100 + 116))
  {
    goto LABEL_131;
  }

  v185 = v192;
  v192 = v30;
  v110 = *(v100 + 104);
  if (!v110)
  {
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  v111 = *(*(v110 + 8 * v109) + 8);
  LODWORD(a2) = *(v111 + 84);
  v30 = *(v111 + 88);
  v112 = *v30;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v114 = *v30;
  v199 = *v30;
  *v30 = 0x8000000000000000;
  v115 = specialized __RawDictionaryStorage.find<A>(_:)(v196, v186);
  v117 = v114[2];
  v118 = (v116 & 1) == 0;
  v119 = __OFADD__(v117, v118);
  v120 = v117 + v118;
  if (v119)
  {
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  LOBYTE(v9) = v116;
  if (v114[3] >= v120)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_71;
    }

    goto LABEL_140;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v120, isUniquelyReferenced_nonNull_native);
  v115 = specialized __RawDictionaryStorage.find<A>(_:)(v196, v186);
  if ((v9 & 1) != (v121 & 1))
  {
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
LABEL_69:
    specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, &v220);
  }

LABEL_71:
  v122 = v190;
  if ((v9 & 1) == 0)
  {
    v199[(v115 >> 6) + 8] |= 1 << v115;
    v123 = v199[6] + 16 * v115;
    *v123 = v196;
    *(v123 + 8) = v20;
    *(v199[7] + 4 * v115) = a2;
    v124 = v199[2];
    v119 = __OFADD__(v124, 1);
    v125 = v124 + 1;
    if (!v119)
    {
      v199[2] = v125;
      goto LABEL_75;
    }

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
    goto LABEL_151;
  }

  *(v199[7] + 4 * v115) = a2;
LABEL_75:
  *v30 = v199;
  v126 = *v5;
  v127 = v5[48];
  v128 = v7[1];
  v243[0] = *v7;
  v243[1] = v128;
  v244[0] = v7[2];
  v129 = v5 + 100;
  v130 = *(v5 + 29);
  v131 = 8 * v130;
  *(v244 + 9) = *(v7 + 41);
  v132 = v7;
  v133 = v190;
  v134 = v5 + 100;
  v135 = v11;
  v197 = v126;
  while (1)
  {
    v136 = *v135;
    if (v130 < *v134)
    {
      v137 = (*v133 + v131);
      if ((v137[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v136)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v130, 0, v243);
    }

    v133 = (v136 + 32);
    v134 = (v136 + 44);
    v135 = (v136 + 48);
    v132 = v136;
  }

  v142 = *v132;
  if (!v142)
  {
    goto LABEL_164;
  }

  v143 = *(*(v142 + 24 * *v137) + 32);
  v144 = v7[1];
  v241[0] = *v7;
  v241[1] = v144;
  v242[0] = v7[2];
  *(v242 + 9) = *(v7 + 41);
  v191 = v143;
  while (1)
  {
    v145 = *v11;
    if (v130 < *v129)
    {
      v146 = (*v122 + v131);
      if ((v146[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v145)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v130, 0, v241);
    }

    v122 = (v145 + 32);
    v129 = (v145 + 44);
    v11 = (v145 + 48);
    v7 = v145;
  }

  if (!*v7)
  {
    goto LABEL_165;
  }

  v187 = v27;
  v30 = *(*(*v7 + 24 * *v146) + 48);
  if (v30 < 0)
  {
    goto LABEL_133;
  }

  v147 = v127;
  v148 = v203;
  v10[9] = v202;
  v10[10] = v148;
  *&v211 = v204;
  v149 = v201;
  v10[7] = v200;
  v10[8] = v149;
  v150 = Hasher.finalize()();
  v151 = MEMORY[0x277D84F90];
  v152 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA7TreeRefV_SayAHGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v154 = v153;
  v155 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA7TreeRefV_SayAHGTt0g5Tf4g_n(v151);
  v157 = v156;
  v158 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA9AttributeV5ValueV5FieldV_SayALGTt0g5Tf4g_n(v151);
  if (v147)
  {
LABEL_156:
    __break(1u);
    goto LABEL_157;
  }

  if (v197 >= *(v188 + 116))
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v160 = *(v188 + 104);
  if (!v160)
  {
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  v161 = *(*(v160 + 8 * v197) + 8);
  v162 = *(v161 + 84);
  if (v162 == *(v161 + 80))
  {
    v198 = v30;
    v163 = v155;
    v164 = v152;
    v165 = v150;
    v166 = v158;
    v167 = v154;
    v168 = v159;
    specialized UnsafeArray.growToCapacity(_:)(2 * v162);
    v159 = v168;
    v154 = v167;
    v151 = MEMORY[0x277D84F90];
    v158 = v166;
    v150 = v165;
    v152 = v164;
    v155 = v163;
    v30 = v198;
  }

  v169 = *(v161 + 72);
  if (!v169)
  {
    goto LABEL_158;
  }

  v170 = *(v161 + 84);
  v171 = v169 + 312 * v170;
  *v171 = v152;
  *(v171 + 8) = v154;
  *(v171 + 16) = v155;
  *(v171 + 24) = v157;
  *(v171 + 32) = a2;
  *(v171 + 36) = 0;
  *(v171 + 40) = 1;
  *(v171 + 44) = v192;
  *(v171 + 48) = v191;
  *(v171 + 56) = -1;
  *(v171 + 72) = 0;
  *(v171 + 80) = 0;
  *(v171 + 64) = v30;
  *(v171 + 88) = 0;
  *(v171 + 89) = 1;
  *(v171 + 92) = v194 | (v185 << 32);
  *(v171 + 100) = 0;
  *(v171 + 101) = 0;
  *(v171 + 104) = v150;
  *(v171 + 112) = 0;
  *(v171 + 120) = 0;
  *(v171 + 128) = 0;
  *(v171 + 136) = 1;
  *(v171 + 144) = v151;
  *(v171 + 152) = 0;
  *(v171 + 160) = 0;
  *(v171 + 168) = 1;
  *(v171 + 172) = 0;
  *(v171 + 232) = 0u;
  v171 += 232;
  *(v171 - 56) = 1;
  *(v171 - 52) = v187;
  *(v171 - 48) = -1;
  *(v171 - 40) = 0;
  *(v171 - 36) = 1;
  *(v171 - 32) = v158;
  *(v171 - 24) = v159;
  *(v171 - 16) = 0;
  *(v171 - 12) = v195;
  *(v171 - 8) = a3;
  *(v171 + 16) = 0u;
  *(v171 + 28) = 0u;
  *(v171 + 44) = 1;
  *(v171 + 48) = 0;
  *(v171 + 56) = 0;
  *(v171 + 64) = 0;
  *(v171 + 72) = 1;
  v43 = __CFADD__(v170, 1);
  v172 = v170 + 1;
  if (v43)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  *(v161 + 84) = v172;
  if (v5[48])
  {
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  v173 = *v5;
  if (v173 >= *(v188 + 116))
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v174 = *(v188 + 104);
  if (!v174)
  {
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  v175 = *(*(v174 + 8 * v173) + 8);
  if (v187 >= *(v175 + 124))
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v176 = *(v175 + 112);
  if (!v176)
  {
LABEL_161:
    __break(1u);
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
    return;
  }

  v177 = v176 + 168 * v187;
  v178 = *(v177 + 96);
  v30 = v177 + 96;
  v5 = v178;
  v179 = swift_isUniquelyReferenced_nonNull_native();
  *v30 = v178;
  if ((v179 & 1) == 0)
  {
LABEL_138:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
    *v30 = v5;
  }

  v181 = *(v5 + 2);
  v180 = *(v5 + 3);
  if (v181 >= v180 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v180 > 1), v181 + 1, 1, v5);
    *v30 = v5;
  }

  *(v5 + 2) = v181 + 1;
  *&v5[4 * v181 + 32] = a2;
}

void T_NodeSetValue.Closure.apply(within:)(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v4 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(a3, a1);
  if (a1[48])
  {
    goto LABEL_58;
  }

  v5 = *(a1 + 22);
  v6 = *(v5 + 116);
  v7 = *a1;
  if (v7 >= v6)
  {
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v8 = *(v5 + 104);
  if (!v8)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v9 = v4;
  v10 = *(*(v8 + 8 * v7) + 8);
  if (v4 >= *(v10 + 84))
  {
    goto LABEL_50;
  }

  v11 = *(v10 + 72);
  if (!v11)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v12 = v11 + 312 * v4;
  v13 = *(v12 + 224);
  if ((v13 & 4) == 0)
  {
    *(v12 + 224) = v13 | 4;
    if (a1[48])
    {
      goto LABEL_65;
    }
  }

  v14 = *a1;
  if (v14 >= v6)
  {
    goto LABEL_51;
  }

  v15 = *(*(v8 + 8 * v14) + 8);
  if (v4 >= *(v15 + 84))
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v16 = *(v15 + 72);
  if (!v16)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v17 = 312 * v4;
  v18 = v16 + v17;
  v19 = *(v18 + 264);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    goto LABEL_53;
  }

  *(v18 + 264) = v21;
  v22 = *a1;
  v23 = a1[48];
  v24 = a1 + 56;
  v25 = *(a1 + 72);
  v71[0] = *(a1 + 56);
  v71[1] = v25;
  v72[0] = *(a1 + 88);
  *(v72 + 9) = *(a1 + 97);
  v26 = a1 + 88;
  v27 = a1 + 100;
  v28 = (a1 + 104);
  v29 = *(a1 + 29);
  v30 = (a1 + 56);
  v31 = (a1 + 104);
  while (1)
  {
    v32 = *v31;
    if (v29 < *v27)
    {
      v33 = (*v26 + 8 * v29);
      if ((v33[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v32)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v29, 0, v71);
    }

    v26 = (v32 + 32);
    v27 = (v32 + 44);
    v31 = (v32 + 48);
    v30 = v32;
  }

  v38 = *v30;
  if (!*v30)
  {
    goto LABEL_70;
  }

  v43 = *v33;
  v44 = &v38[3 * v43];
  if (v23)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v22 >= *(v5 + 116))
  {
    goto LABEL_54;
  }

  v34 = *(v5 + 104);
  if (!v34)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v35 = *(*(v34 + 8 * v22) + 8);
  if (v9 >= *(v35 + 84))
  {
    goto LABEL_55;
  }

  v36 = *(v35 + 72);
  if (!v36)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  *(v36 + v17 + 184) = *(*v44 + 32);
  v37 = *(a1 + 72);
  v69[0] = *v24;
  v69[1] = v37;
  v70[0] = *(a1 + 88);
  v22 = (a1 + 72);
  v23 = a1 + 84;
  *(v70 + 9) = *(a1 + 97);
  v38 = (a1 + 56);
  v39 = (a1 + 72);
  v40 = a1 + 84;
  v41 = (a1 + 104);
  while (1)
  {
    v42 = *v41;
    if (*v40 >= 2u)
    {
      v43 = *v39;
      if ((*(v43 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v42)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v69);
    }

    v39 = (v42 + 16);
    v40 = (v42 + 28);
    v41 = (v42 + 48);
    v38 = v42;
  }

LABEL_31:
  v45 = *v38;
  if (!v45)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v46 = *(*(v45 + 24 * *(v43 + 8)) + 112);
  if (!v46)
  {
    goto LABEL_64;
  }

  if (*(v46 + 104) != 1)
  {
LABEL_48:
    v56 = v9;
    v57 = 0;
    v58 = 0;
    v59 = 1;
    v60 = 0xFFFFFFFFLL;
    v61 = 0;
    v62 = 1;
    v63 = -1;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    specialized Interpreter.Iterator.observe<A>(invalidation:)(&v56);
    return;
  }

  v47 = *(a1 + 72);
  v67[0] = *v24;
  v67[1] = v47;
  v68[0] = *(a1 + 88);
  *(v68 + 9) = *(a1 + 97);
  while (1)
  {
    v48 = *v28;
    if (*v23 >= 2u && (*(*v22 + 12) & 1) == 0)
    {
      break;
    }

    if (!v48)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v67);
    }

    v22 = v48 + 16;
    v23 = (v48 + 28);
    v28 = (v48 + 48);
    v24 = v48;
  }

  if (*v24)
  {
    v49 = *(*(*v24 + 24 * *(*v22 + 8)) + 112);
    if (!v49)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    *(v49 + 104) = 0;
    if (a1[48])
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v50 = *a1;
    if (v50 < *(v5 + 116))
    {
      v51 = *(v5 + 104);
      if (!v51)
      {
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v52 = *(v51 + 8 * v50);
      v55 = *(v52 + 8);
      v53 = v52 + 8;
      v54 = v55;
      if (v9 < *(v55 + 84))
      {
        if (*(v54 + 72))
        {
          specialized Attribute.add(displayName:type:within:)(0xD000000000000010, 0x800000026C33C330, v53);
          goto LABEL_48;
        }

        goto LABEL_69;
      }

      goto LABEL_57;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

LABEL_72:
  __break(1u);
}

unint64_t T_IndirectNodeAdded.model(within:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = result;
  v4 = &v167;
  v162 = a2;
  *&v181 = a2;
  *(&v181 + 1) = a3;
  v5 = HIDWORD(a3);
  v6 = (result + 56);
  v7 = *(result + 72);
  v205[0] = *(result + 56);
  v205[1] = v7;
  v206[0] = *(result + 88);
  v8 = (result + 72);
  v9 = (result + 84);
  v159 = (result + 88);
  v10 = (result + 104);
  *(v206 + 9) = *(result + 97);
  v11 = (result + 56);
  v12 = (result + 72);
  v13 = (result + 84);
  v14 = (result + 104);
  while (1)
  {
    v15 = *v14;
    if (*v13 >= 2u)
    {
      v16 = *v12;
      if ((*(v16 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v15)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v205);
    }

    v12 = (v15 + 16);
    v13 = (v15 + 28);
    v14 = (v15 + 48);
    v11 = v15;
  }

  v17 = *v11;
  if (!v17)
  {
    goto LABEL_125;
  }

  result = v17 + 24 * *(v16 + 8);
  v161 = *(&v181 + 4);
  v18 = *(*result + 112);
  if (!v18)
  {
    goto LABEL_121;
  }

  v187 = *v18;
  v19 = *(v18 + 2);
  v20 = *(v18 + 72);
  v21 = *(v18 + 104);
  v185 = *(v18 + 88);
  v186[0] = v21;
  *(v186 + 13) = *(v18 + 117);
  v22 = *(v18 + 40);
  v181 = *(v18 + 24);
  v182 = v22;
  v183 = *(v18 + 56);
  v184 = v20;
  v23 = *v19;
  v163 = v3;
  if (!*(*v19 + 16))
  {
    v28 = 0;
    v24 = HIDWORD(a3);
LABEL_14:
    v29 = -1;
    v26 = v24;
    v164 = v24;
    goto LABEL_15;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(HIDWORD(a3));
  v24 = v5;
  if ((v25 & 1) == 0)
  {
    v28 = 0;
    goto LABEL_14;
  }

  v26 = v5;
  v27 = *(v23 + 56) + 24 * result;
  v164 = *v27;
  v28 = *(v27 + 8);
  v29 = *(v27 + 16);
LABEL_15:
  v30 = v6[1];
  v203[0] = *v6;
  v203[1] = v30;
  v204[0] = v6[2];
  *(v204 + 9) = *(v6 + 41);
  v31 = v6;
  v32 = v8;
  v33 = v9;
  v34 = v10;
  while (1)
  {
    v35 = *v34;
    if (*v33 >= 2u)
    {
      v36 = *v32;
      if ((*(v36 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v35)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v203);
    }

    v32 = (v35 + 16);
    v33 = (v35 + 28);
    v34 = (v35 + 48);
    v31 = v35;
  }

  v37 = *v31;
  if (!v37)
  {
    goto LABEL_126;
  }

  result = v37 + 24 * *(v36 + 8);
  v38 = *(*result + 112);
  if (!v38)
  {
    goto LABEL_122;
  }

  *v38 = v187;
  v39 = v183;
  *(v38 + 72) = v184;
  v40 = v186[0];
  *(v38 + 88) = v185;
  *(v38 + 104) = v40;
  v41 = v182;
  *(v38 + 24) = v181;
  *(v38 + 40) = v41;
  *(v38 + 16) = v19;
  *(v38 + 117) = *(v186 + 13);
  *(v38 + 56) = v39;
  v188 = v164;
  v190 = v29;
  v42 = __CFADD__(v28, 1);
  v43 = v28 + 1;
  if (v42)
  {
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v189 = v43;
  v44 = v6[1];
  v201[0] = *v6;
  v201[1] = v44;
  v202[0] = v6[2];
  *(v202 + 9) = *(v6 + 41);
  v45 = v6;
  v46 = v8;
  v47 = v9;
  v48 = v10;
  v49 = v26;
  v26 = v163;
  while (1)
  {
    v50 = *v48;
    if (*v47 >= 2u)
    {
      v51 = *v46;
      if ((*(v51 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v50)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v201);
    }

    v46 = (v50 + 16);
    v47 = (v50 + 28);
    v48 = (v50 + 48);
    v45 = v50;
  }

  v52 = *v45;
  if (!v52)
  {
    goto LABEL_127;
  }

  result = v52 + 24 * *(v51 + 8);
  v53 = *(*result + 112);
  if (!v53)
  {
    goto LABEL_123;
  }

  v54 = v53[5];
  v178 = v53[4];
  v179 = v54;
  v180[0] = v53[6];
  *(v180 + 13) = *(v53 + 109);
  v55 = v53[1];
  v174 = *v53;
  v175 = v55;
  v56 = v53[3];
  v176 = v53[2];
  v177 = v56;
  result = specialized closure #2 in static TraceAddress.rename(address:initialize:within:)(&v175, v49, &v188);
  v57 = v6[1];
  v199[0] = *v6;
  v199[1] = v57;
  v200[0] = v6[2];
  *(v200 + 9) = *(v6 + 41);
  v58 = v6;
  v59 = v8;
  v60 = v9;
  v61 = v10;
  while (1)
  {
    v62 = *v61;
    if (*v60 >= 2u)
    {
      v63 = *v59;
      if ((*(v63 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v62)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v199);
    }

    v59 = (v62 + 16);
    v60 = (v62 + 28);
    v61 = (v62 + 48);
    v58 = v62;
  }

  v64 = *v58;
  if (!v64)
  {
    goto LABEL_128;
  }

  result = v64 + 24 * *(v63 + 8);
  v65 = *(*result + 112);
  if (!v65)
  {
    goto LABEL_124;
  }

  v66 = v175;
  *v65 = v174;
  v65[1] = v66;
  v67 = v177;
  v65[2] = v176;
  v65[3] = v67;
  *(v65 + 109) = *(v180 + 13);
  v68 = v180[0];
  v65[5] = v179;
  v65[6] = v68;
  v65[4] = v178;
  if (v163[48] || v163[1] << 8 != 512)
  {
    return result;
  }

  v157 = v43;
  result = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(v161, v163);
  if (v163[48])
  {
    goto LABEL_129;
  }

  v69 = *(v163 + 22);
  v70 = *v163;
  if (v70 >= *(v69 + 116))
  {
    goto LABEL_111;
  }

  v71 = *(v69 + 104);
  if (!v71)
  {
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v72 = result;
  LODWORD(v161) = *(*(*(v71 + 8 * v70) + 8) + 84);
  v73 = v6[1];
  v197[0] = *v6;
  v197[1] = v73;
  v198[0] = v6[2];
  *(v198 + 9) = *(v6 + 41);
  v74 = v6;
  v75 = v8;
  v76 = v9;
  v77 = v10;
  v156 = v69;
  while (1)
  {
    v78 = *v77;
    if (*v76 >= 2u)
    {
      v79 = *v75;
      if ((*(v79 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v78)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v197);
    }

    v75 = (v78 + 16);
    v76 = (v78 + 28);
    v77 = (v78 + 48);
    v74 = v78;
  }

  v80 = *v74;
  if (!v80)
  {
    goto LABEL_141;
  }

  result = v80 + 24 * *(v79 + 8);
  v155 = v72;
  v81 = *(*result + 112);
  if (!v81)
  {
    goto LABEL_131;
  }

  v173 = *v81;
  v82 = *(v81 + 2);
  v83 = *(v81 + 88);
  v170 = *(v81 + 72);
  v171 = v83;
  v172[0] = *(v81 + 104);
  *(v172 + 13) = *(v81 + 117);
  v84 = *(v81 + 40);
  v167 = *(v81 + 24);
  v168 = v84;
  v169 = *(v81 + 56);
  v85 = *v82;
  if (*(*v82 + 16) && (result = specialized __RawDictionaryStorage.find<A>(_:)(v162), (v86 & 1) != 0))
  {
    v87 = *(v85 + 56) + 24 * result;
    v162 = *v87;
    v154 = *(v87 + 8);
  }

  else
  {
    v154 = 0;
  }

  v88 = v6[1];
  v195[0] = *v6;
  v195[1] = v88;
  v196[0] = v6[2];
  *(v196 + 9) = *(v6 + 41);
  v89 = v6;
  v90 = v10;
  while (1)
  {
    v91 = *v90;
    if (*v9 >= 2u && (*(*v8 + 12) & 1) == 0)
    {
      break;
    }

    if (!v91)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v195);
    }

    v8 = (v91 + 16);
    v9 = (v91 + 28);
    v90 = (v91 + 48);
    v89 = v91;
  }

  v92 = *v89;
  if (!v92)
  {
    goto LABEL_142;
  }

  result = v92 + 24 * *(*v8 + 8);
  v93 = *(*result + 112);
  if (!v93)
  {
    goto LABEL_132;
  }

  *(v93 + 117) = *(v172 + 13);
  *v93 = v173;
  v94 = v168;
  *(v93 + 24) = v167;
  *(v93 + 40) = v94;
  v95 = v170;
  *(v93 + 56) = v169;
  *(v93 + 104) = v172[0];
  *(v93 + 88) = v171;
  *(v93 + 16) = v82;
  *(v93 + 72) = v95;
  if (v163[48])
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v96 = *v163;
  if (v96 >= *(v156 + 116))
  {
    goto LABEL_112;
  }

  v97 = *(v156 + 104);
  if (!v97)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v98 = *(*(*(v97 + 8 * v96) + 8) + 88);
  v99 = *v98;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v101 = *v98;
  v166 = *v98;
  *v98 = 0x8000000000000000;
  result = specialized __RawDictionaryStorage.find<A>(_:)(v164, v157);
  v103 = v101[2];
  v104 = (v102 & 1) == 0;
  v105 = __OFADD__(v103, v104);
  v106 = v103 + v104;
  if (v105)
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v107 = v102;
  if (v101[3] < v106)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v106, isUniquelyReferenced_nonNull_native);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v164, v157);
    if ((v107 & 1) == (v108 & 1))
    {
      goto LABEL_74;
    }

    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v153 = result;
    specialized _NativeDictionary.copy()();
    result = v153;
  }

LABEL_74:
  if ((v107 & 1) == 0)
  {
    v166[(result >> 6) + 8] |= 1 << result;
    v109 = v166[6] + 16 * result;
    *v109 = v164;
    *(v109 + 8) = v157;
    *(v166[7] + 4 * result) = v161;
    v110 = v166[2];
    v105 = __OFADD__(v110, 1);
    v111 = v110 + 1;
    if (!v105)
    {
      v166[2] = v111;
      goto LABEL_78;
    }

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
    goto LABEL_130;
  }

  *(v166[7] + 4 * result) = v161;
LABEL_78:
  *v98 = v166;
  v165 = *v163;
  v112 = v163[48];
  v113 = v6[1];
  v193[0] = *v6;
  v193[1] = v113;
  v194[0] = v6[2];
  v114 = v163 + 100;
  v115 = *(v163 + 29);
  v4 = (8 * v115);
  *(v194 + 9) = *(v6 + 41);
  v116 = v6;
  v26 = v159;
  v117 = v159;
  v118 = v163 + 100;
  v119 = v10;
  while (1)
  {
    v120 = *v119;
    if (v115 < *v118)
    {
      v121 = (v4 + *v117);
      if ((v121[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v120)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v115, 0, v193);
    }

    v117 = (v120 + 32);
    v118 = (v120 + 44);
    v119 = (v120 + 48);
    v116 = v120;
  }

  v122 = *v116;
  if (!v122)
  {
    goto LABEL_143;
  }

  result = v122 + 24 * *v121;
  v123 = *(*result + 32);
  v124 = v6[1];
  v191[0] = *v6;
  v191[1] = v124;
  v192[0] = v6[2];
  *(v192 + 9) = *(v6 + 41);
  v158 = v123;
  while (1)
  {
    v125 = *v10;
    if (v115 < *v114)
    {
      v126 = (v4 + *v26);
      if ((v126[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v125)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v115, 0, v191);
    }

    v26 = (v125 + 32);
    v114 = (v125 + 44);
    v10 = (v125 + 48);
    v6 = v125;
  }

  if (!*v6)
  {
    goto LABEL_144;
  }

  v127 = v112;
  v160 = v49;
  v128 = *(*(*v6 + 24 * *v126) + 48);
  if (v128 < 0)
  {
    goto LABEL_114;
  }

  v129 = MEMORY[0x277D84F90];
  v130 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA7TreeRefV_SayAHGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v132 = v131;
  v4 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA7TreeRefV_SayAHGTt0g5Tf4g_n(v129);
  v134 = v133;
  result = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA9AttributeV5ValueV5FieldV_SayALGTt0g5Tf4g_n(v129);
  if (v127)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  v136 = v156;
  if (v165 >= *(v156 + 116))
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v137 = *(v156 + 104);
  if (!v137)
  {
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v138 = v135;
  v139 = *(*(v137 + 8 * v165) + 8);
  v140 = *(v139 + 84);
  if (v140 == *(v139 + 80))
  {
    v26 = result;
    specialized UnsafeArray.growToCapacity(_:)(2 * v140);
    result = v26;
    v136 = v156;
  }

  v141 = *(v139 + 72);
  if (!v141)
  {
    goto LABEL_137;
  }

  v142 = *(v139 + 84);
  v143 = v141 + 312 * v142;
  *v143 = v130;
  *(v143 + 8) = v132;
  *(v143 + 16) = v4;
  *(v143 + 24) = v134;
  *(v143 + 32) = v161;
  *(v143 + 36) = 0;
  *(v143 + 40) = 1;
  *(v143 + 44) = v160;
  *(v143 + 48) = v158;
  *(v143 + 56) = -1;
  *(v143 + 64) = v128;
  *(v143 + 72) = v162;
  *(v143 + 80) = v154;
  *(v143 + 88) = 0;
  *(v143 + 89) = 0;
  *(v143 + 92) = 0;
  *(v143 + 100) = 0;
  *(v143 + 101) = 1;
  *(v143 + 104) = 0u;
  *(v143 + 120) = 0u;
  *(v143 + 136) = 1;
  *(v143 + 144) = v129;
  *(v143 + 152) = 0;
  *(v143 + 160) = 0;
  *(v143 + 168) = 1;
  *(v143 + 172) = 0;
  *(v143 + 176) = 1;
  *(v143 + 180) = v155;
  *(v143 + 184) = -1;
  *(v143 + 192) = 0;
  *(v143 + 232) = 0u;
  v143 += 232;
  *(v143 - 36) = 1;
  *(v143 - 32) = result;
  *(v143 - 24) = v138;
  *(v143 - 16) = 0;
  *(v143 - 8) = 0x8000000000000000;
  *(v143 + 28) = 0u;
  *(v143 + 16) = 0u;
  *(v143 + 44) = 1;
  *(v143 + 48) = 0;
  *(v143 + 56) = 0;
  *(v143 + 64) = 0;
  *(v143 + 72) = 1;
  v42 = __CFADD__(v142, 1);
  v144 = v142 + 1;
  if (v42)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  *(v139 + 84) = v144;
  if (v163[48])
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v145 = *v163;
  if (v145 >= *(v136 + 116))
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v146 = *(v136 + 104);
  if (!v146)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  v147 = *(*(v146 + 8 * v145) + 8);
  if (v155 >= *(v147 + 124))
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v148 = *(v147 + 112);
  if (!v148)
  {
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
    return result;
  }

  v149 = v148 + 168 * v155;
  v150 = *(v149 + 96);
  v4 = (v149 + 96);
  v26 = v150;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v150;
  if ((result & 1) == 0)
  {
LABEL_119:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
    v26 = result;
    *v4 = result;
  }

  v152 = *(v26 + 2);
  v151 = *(v26 + 3);
  if (v152 >= v151 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v151 > 1), v152 + 1, 1, v26);
    v26 = result;
    *v4 = result;
  }

  *(v26 + 2) = v152 + 1;
  *&v26[4 * v152 + 32] = v161;
  return result;
}

double one-time initialization function for invalid()
{
  result = NAN;
  static Edge.invalid = -1;
  qword_280481D78 = 0;
  dword_280481D80 = 0;
  return result;
}

unint64_t T_NodeAddEdge.updateState(within:)(unsigned __int8 *a1, unint64_t a2, unint64_t a3)
{
  v5 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(a3, a1);
  result = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(a2, a1);
  if (a1[48])
  {
    goto LABEL_39;
  }

  v7 = *(a1 + 22);
  v8 = *a1;
  if (v8 >= *(v7 + 116))
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = *(v7 + 104);
  if (!v9)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v10 = result;
  v11 = *(*(v9 + 8 * v8) + 8);
  v12 = *(v11 + 108);
  if (v12 == *(v11 + 104))
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v12);
  }

  v13 = *(v11 + 96);
  if (!v13)
  {
    goto LABEL_41;
  }

  v14 = *(v11 + 108);
  v15 = v13 + 24 * v14;
  *v15 = v10;
  *(v15 + 4) = v5;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  if (v14 == -1)
  {
    goto LABEL_30;
  }

  *(v11 + 108) = v14 + 1;
  if (a1[48])
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v16 = *a1;
  if (v16 >= *(v7 + 116))
  {
    goto LABEL_31;
  }

  v17 = *(v7 + 104);
  if (!v17)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v18 = *(*(v17 + 8 * v16) + 8);
  v19 = *(v18 + 108);
  if (!v19)
  {
    goto LABEL_32;
  }

  if (v5 >= *(v18 + 84))
  {
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

  v20 = *(v18 + 72);
  if (!v20)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v21 = v20 + 312 * v5;
  v22 = *(v21 + 12);
  if (v22 == *(v21 + 8))
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v22);
  }

  if (!*v21)
  {
    goto LABEL_45;
  }

  v23 = *(v21 + 12);
  *(*v21 + 8 * v23) = v19 - 1;
  if (v23 == -1)
  {
    goto LABEL_34;
  }

  *(v21 + 12) = v23 + 1;
  if (a1[48])
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v24 = *a1;
  if (v24 >= *(v7 + 116))
  {
    goto LABEL_35;
  }

  v25 = *(v7 + 104);
  if (!v25)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v26 = *(*(v25 + 8 * v24) + 8);
  v27 = *(v26 + 108);
  if (!v27)
  {
    goto LABEL_36;
  }

  if (v10 >= *(v26 + 84))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v28 = *(v26 + 72);
  if (v28)
  {
    v29 = v28 + 312 * v10;
    v30 = *(v29 + 28);
    if (v30 == *(v29 + 24))
    {
      result = specialized UnsafeArray.growToCapacity(_:)(2 * v30);
    }

    v31 = *(v29 + 16);
    if (!v31)
    {
      goto LABEL_49;
    }

    v32 = *(v29 + 28);
    *(v31 + 8 * v32) = v27 - 1;
    if (v32 != -1)
    {
      *(v29 + 28) = v32 + 1;
      return result;
    }

    goto LABEL_38;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

unint64_t T_NodeRemoveEdge.updateState(within:)(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(HIDWORD(a2), a1);
  result = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(a2, v3);
  if (v3[48])
  {
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  v9 = *(v3 + 22);
  v10 = *v3;
  if (v10 >= *(v9 + 116))
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v11 = *(v9 + 104);
  if (!v11)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  v12 = *(*(v11 + 8 * v10) + 8);
  if (v4 >= *(v12 + 84))
  {
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
    v46 = v7;
    v103[0] = 0;
    v103[1] = 0xE000000000000000;
    v79 = v6;
    v80 = v8;
    _StringGuts.grow(_:)(42);
    MEMORY[0x26D69CDB0](0xD000000000000018, 0x800000026C33B9B0);
    _print_unlocked<A, B>(_:_:)();
    v3 = v103;
    MEMORY[0x26D69CDB0](0x742065766168202ELL, 0xEE00203A65736568);
    if (v79 >= *(v80 + 84))
    {
      goto LABEL_155;
    }

    v18 = v80;
    v47 = *(v80 + 72);
    if (!v47)
    {
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
    }

    v81 = v47 + v46;
    v82 = *(v81 + 12);
    v3 = MEMORY[0x277D84F90];
    if (!v82)
    {
      goto LABEL_156;
    }

    v83 = *v81;
    v102 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v82, 0);
    v3 = v102;
    v84 = v83;
    v85 = v18;
    while (v83)
    {
      if (*v84 >= *(v85 + 27))
      {
        __break(1u);
        goto LABEL_147;
      }

      v87 = v85[12];
      if (!v87)
      {
        goto LABEL_154;
      }

      v88 = (v87 + 24 * *v84);
      v89 = *v88;
      v90 = v88[1];
      v91 = *(v88 + 4);
      v93 = *(v102 + 2);
      v92 = *(v102 + 3);
      if (v93 >= v92 >> 1)
      {
        v101 = v89;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v92 > 1), v93 + 1, 1);
        v89 = v101;
        v85 = v18;
      }

      *(v102 + 2) = v93 + 1;
      v86 = &v102[24 * v93];
      *(v86 + 4) = v89;
      *(v86 + 5) = v90;
      *(v86 + 12) = v91;
      ++v84;
      if (!--v82)
      {
        goto LABEL_156;
      }
    }

LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    v94 = MEMORY[0x26D69CFC0](v3, &type metadata for Edge);
    v96 = v95;

    MEMORY[0x26D69CDB0](v94, v96);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v13 = *(v12 + 72);
  if (!v13)
  {
LABEL_149:
    __break(1u);
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  v8 = 312;
  v14 = v13 + 312 * v4;
  v15 = *(v14 + 12);
  if (v15)
  {
    v7 = 312 * v4;
    v16 = *v14;
    v17 = 0x280480000uLL;
    v18 = *v14;
    while (v16)
    {
      if (v3[48])
      {
        goto LABEL_124;
      }

      v19 = *v3;
      if (v19 >= *(v9 + 116))
      {
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
        goto LABEL_113;
      }

      v20 = *(v9 + 104);
      if (!v20)
      {
        goto LABEL_126;
      }

      v21 = *v18;
      v22 = *(*(v20 + 8 * v19) + 8);
      if (*v18 >= *(v22 + 108))
      {
        goto LABEL_107;
      }

      v23 = *(v22 + 96);
      if (!v23)
      {
        goto LABEL_127;
      }

      v24 = (v23 + 24 * v21);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v24 + 1);
      v28 = v24[4];
      if (*(v17 + 1008) != -1)
      {
        v98 = v9;
        v99 = v7;
        v100 = result;
        v97 = v16;
        swift_once();
        v17 = 0x280480000;
        v16 = v97;
        v9 = v98;
        v7 = v99;
        result = v100;
      }

      v29 = HIDWORD(static Edge.invalid);
      v6 = qword_280481D78;
      if (v25 != static Edge.invalid || v26 != HIDWORD(static Edge.invalid) || v27 != qword_280481D78 || v28 != dword_280481D80)
      {
        if (v3[48])
        {
          goto LABEL_128;
        }

        v33 = *(v9 + 116);
        v34 = *v3;
        if (v34 >= v33)
        {
          goto LABEL_108;
        }

        v8 = *(v9 + 104);
        if (!v8)
        {
          goto LABEL_129;
        }

        v35 = *(*(v8 + 8 * v34) + 8);
        if (v21 >= *(v35 + 108))
        {
          goto LABEL_109;
        }

        v36 = *(v35 + 96);
        if (!v36)
        {
          goto LABEL_130;
        }

        if (*(v36 + 24 * v21) == result)
        {
          v37 = v3 + 56;
          v38 = *(v3 + 72);
          v104[0] = *(v3 + 56);
          v104[1] = v38;
          v105[0] = *(v3 + 88);
          *(v105 + 9) = *(v3 + 97);
          v39 = v3 + 88;
          v40 = v3 + 100;
          v41 = (v3 + 104);
          v42 = *(v3 + 29);
          while (1)
          {
            v43 = *v41;
            if (v42 < *v40 && (*(*v39 + 8 * v42 + 4) & 1) == 0)
            {
              break;
            }

            if (!v43)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(v3 + 29), 0, v104);
            }

            v39 = (v43 + 32);
            v40 = (v43 + 44);
            v41 = (v43 + 48);
            v37 = v43;
          }

          v44 = dword_280481D80;
          v45 = qword_280481D78;
          v46 = HIDWORD(static Edge.invalid);
          if (!*v37)
          {
            goto LABEL_152;
          }

          if (v34 >= v33)
          {
            goto LABEL_115;
          }

          v8 = *(*(v8 + 8 * v34) + 8);
          v6 = v4;
          if (v4 < *(v8 + 84))
          {
            v47 = *(v8 + 72);
            if (!v47)
            {
              goto LABEL_150;
            }

            v48 = result;
            v49 = v47 + v7;
            v50 = *(v47 + v7);
            v51 = *(v47 + v7 + 12);
            v52 = v50;
            while (v51)
            {
              if (!v50)
              {
                goto LABEL_134;
              }

              v47 = *v52;
              if (*v52 >= *(v8 + 108))
              {
                goto LABEL_110;
              }

              v53 = *(v8 + 96);
              if (!v53)
              {
                goto LABEL_135;
              }

              v54 = (v53 + 24 * v47);
              v55 = *v54;
              result = v54[1];
              --v51;
              v58 = v54[4] == dword_280481D80 && *(v54 + 1) == qword_280481D78 && result == HIDWORD(static Edge.invalid) && v55 == static Edge.invalid;
              ++v52;
              if (!v58 && v55 == v48)
              {
                *v54 = static Edge.invalid;
                v54[1] = v29;
                *(v54 + 1) = v45;
                v54[4] = v44;
                if (v47 >= *(v8 + 108))
                {
                  goto LABEL_117;
                }

                if (v4 >= *(v8 + 84))
                {
                  goto LABEL_118;
                }

                v60 = *(v49 + 12);
                if (v60)
                {
                  v61 = 0;
                  v62 = 0;
                  v63 = 8;
                  while (1)
                  {
                    v65 = *v49;
                    if (!*v49)
                    {
                      goto LABEL_136;
                    }

                    result = v65 + v63;
                    v66 = *(v65 + v63 - 8);
                    if (v66 != v47)
                    {
                      v67 = (v65 + 8 * v62);
                      if (v62 < v61 || v67 >= result)
                      {
                        *v67 = v66;
                      }

                      v64 = __OFADD__(v62++, 1);
                      if (v64)
                      {
                        goto LABEL_111;
                      }
                    }

                    ++v61;
                    v63 += 8;
                    if (v60 == v61)
                    {
                      if (v62 <= v60)
                      {
                        goto LABEL_77;
                      }

                      __break(1u);
                      break;
                    }
                  }
                }

                v62 = 0;
LABEL_77:
                v68 = v60 - v62 + 1;
                while (--v68)
                {
                  if (!*v49)
                  {
                    __break(1u);
                    break;
                  }
                }

                if (v62 < 0)
                {
                  goto LABEL_119;
                }

                if (HIDWORD(v62))
                {
                  goto LABEL_120;
                }

                *(v49 + 12) = v62;
                if (v48 < *(v8 + 84))
                {
                  v69 = *(v8 + 72);
                  if (!v69)
                  {
                    goto LABEL_151;
                  }

                  v70 = v69 + 312 * v48;
                  v71 = *(v70 + 28);
                  if (v71)
                  {
                    v72 = 0;
                    v8 = 0;
                    v73 = 8;
                    while (1)
                    {
                      v74 = *(v70 + 16);
                      if (!v74)
                      {
                        goto LABEL_137;
                      }

                      v75 = v74 + v73;
                      v76 = *(v74 + v73 - 8);
                      if (v76 != v47)
                      {
                        v77 = (v74 + 8 * v8);
                        if (v8 < v72 || v77 >= v75)
                        {
                          *v77 = v76;
                        }

                        v64 = __OFADD__(v8++, 1);
                        if (v64)
                        {
                          goto LABEL_112;
                        }
                      }

                      ++v72;
                      v73 += 8;
                      if (v71 == v72)
                      {
                        if (v8 <= v71)
                        {
                          goto LABEL_98;
                        }

                        __break(1u);
                        break;
                      }
                    }
                  }

                  v8 = 0;
LABEL_98:
                  v78 = v71 - v8 + 1;
                  while (--v78)
                  {
                    if (!*(v70 + 16))
                    {
                      __break(1u);
                      break;
                    }
                  }

                  if (v8 < 0)
                  {
                    goto LABEL_122;
                  }

                  if (HIDWORD(v8))
                  {
                    goto LABEL_123;
                  }

                  *(v70 + 28) = v8;
                  return result;
                }

                goto LABEL_121;
              }
            }

            goto LABEL_131;
          }

          goto LABEL_116;
        }
      }

      ++v18;
      if (!--v15)
      {
        return result;
      }
    }

    goto LABEL_125;
  }

  return result;
}

uint64_t T_NodeSetEdgePending.updateState(within:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(HIDWORD(a2), a1);
  v8 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(a2, v6);
  if (a3)
  {
    if (!*(v6 + 48))
    {
      v18 = v6[22];
      v19 = *v6;
      if (v19 >= *(v18 + 116))
      {
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      v20 = *(v18 + 104);
      if (v20)
      {
        v21 = *(*(v20 + 8 * v19) + 8);
        if (v7 >= *(v21 + 84))
        {
LABEL_117:
          __break(1u);
          goto LABEL_118;
        }

        v22 = *(v21 + 72);
        if (v22)
        {
          v23 = v22 + 312 * v7;
          v24 = *(v23 + 224);
          if ((v24 & 1) == 0)
          {
            *(v23 + 224) = v24 | 1;
          }

          v25 = v6 + 7;
          v26 = *(v6 + 9);
          v109 = *(v6 + 7);
          v110 = v26;
          v111[0] = *(v6 + 11);
          *(v111 + 9) = *(v6 + 97);
          v27 = v6 + 11;
          v28 = v6 + 25;
          v29 = v6 + 13;
          v30 = *(v6 + 29);
          while (1)
          {
            v31 = *v29;
            if (v30 < *v28 && (*(*v27 + 8 * v30 + 4) & 1) == 0)
            {
              break;
            }

            if (!v31)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(v30, 0, &v109);
            }

            v27 = (v31 + 32);
            v28 = (v31 + 44);
            v29 = (v31 + 48);
            v25 = v31;
          }

          if (!*v25)
          {
            goto LABEL_153;
          }

          if (!*(v6 + 48))
          {
            v67 = *v6;
            if (v67 >= *(v18 + 116))
            {
LABEL_119:
              __break(1u);
              goto LABEL_120;
            }

            v68 = *(v18 + 104);
            if (v68)
            {
              v69 = *(v68 + 8 * v67) + 8;
              v71 = Snapshot.subscript.modify(v107, v8, v7);
              v72 = *(v70 + 16);
              if ((v72 & 2) == 0)
              {
                *(v70 + 16) = v72 | 2;
              }

              return (v71)(v107, 0);
            }

            goto LABEL_151;
          }

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
          goto LABEL_156;
        }

        goto LABEL_148;
      }

      goto LABEL_146;
    }

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
    goto LABEL_150;
  }

  v11 = v6 + 7;
  v12 = *(v6 + 9);
  v109 = *(v6 + 7);
  v110 = v12;
  v111[0] = *(v6 + 11);
  *(v111 + 9) = *(v6 + 97);
  v13 = v6 + 11;
  v14 = v6 + 25;
  v15 = v6 + 13;
  result = *(v6 + 29);
  while (1)
  {
    v17 = *v15;
    if (result < *v14 && (*(*v13 + 8 * result + 4) & 1) == 0)
    {
      break;
    }

    if (!v17)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, &v109);
    }

    v13 = (v17 + 32);
    v14 = (v17 + 44);
    v15 = (v17 + 48);
    v11 = v17;
  }

  if (!*v11)
  {
    goto LABEL_152;
  }

  if (*(v6 + 48))
  {
    goto LABEL_145;
  }

  v32 = v6[22];
  v33 = *v6;
  if (v33 >= *(v32 + 116))
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v34 = *(v32 + 104);
  if (!v34)
  {
    goto LABEL_147;
  }

  v10 = *(*(v34 + 8 * v33) + 8);
  if (v7 >= *(v10 + 84))
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v35 = *(v10 + 72);
  if (!v35)
  {
    goto LABEL_149;
  }

  v105 = v7;
  v9 = 312 * v7;
  v36 = v35 + v9;
  v37 = *(v36 + 12);
  if (!v37)
  {
LABEL_127:
    v3 = v9;
    v107[0] = 0;
    v107[1] = 0xE000000000000000;
    v84 = v8;
    v85 = v10;
    _StringGuts.grow(_:)(42);
    MEMORY[0x26D69CDB0](0xD000000000000018, 0x800000026C33B9B0);
    LODWORD(v108) = v84;
    _print_unlocked<A, B>(_:_:)();
    v6 = v107;
    MEMORY[0x26D69CDB0](0x742065766168202ELL, 0xEE00203A65736568);
    if (v105 >= *(v85 + 84))
    {
LABEL_158:
      __break(1u);
LABEL_159:
      v99 = MEMORY[0x26D69CFC0](v6, &type metadata for Edge);
      v101 = v100;

      MEMORY[0x26D69CDB0](v99, v101);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    a3 = v85;
    v36 = *(v85 + 72);
    if (!v36)
    {
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
    }

    v86 = v36 + v3;
    v87 = *(v86 + 12);
    v6 = MEMORY[0x277D84F90];
    if (!v87)
    {
      goto LABEL_159;
    }

    v88 = *v86;
    v108 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v87, 0);
    v6 = v108;
    v89 = v88;
    v90 = a3;
    while (v88)
    {
      if (*v89 >= *(v90 + 108))
      {
        goto LABEL_141;
      }

      v92 = *(v90 + 96);
      if (!v92)
      {
        goto LABEL_157;
      }

      v93 = v92 + 24 * *v89;
      v94 = *v93;
      v95 = *(v93 + 8);
      v96 = *(v93 + 16);
      v108 = v6;
      v98 = v6[2];
      v97 = v6[3];
      if (v98 >= v97 >> 1)
      {
        v106 = v94;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v97 > 1), v98 + 1, 1);
        v90 = a3;
        v94 = v106;
        v6 = v108;
      }

      v6[2] = v98 + 1;
      v91 = &v6[3 * v98];
      v91[4] = v94;
      v91[5] = v95;
      *(v91 + 12) = v96;
      ++v89;
      if (!--v87)
      {
        goto LABEL_159;
      }
    }

LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
    goto LABEL_158;
  }

  v6 = *v36;
  v38 = 0x280480000uLL;
  v39 = *v36;
  while (1)
  {
    if (!v6)
    {
      goto LABEL_130;
    }

    v3 = *v39;
    if (*v39 >= *(v10 + 108))
    {
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    v36 = *(v10 + 96);
    if (!v36)
    {
      goto LABEL_131;
    }

    v40 = 24 * v3;
    v41 = (v36 + 24 * v3);
    v43 = *v41;
    v42 = v41[1];
    v44 = *(v41 + 1);
    a3 = v41[4];
    if (*(v38 + 1008) != -1)
    {
      v102 = v9;
      v103 = v10;
      v104 = v8;
      result = swift_once();
      v38 = 0x280480000;
      v9 = v102;
      v10 = v103;
      v8 = v104;
    }

    v45 = static Edge.invalid;
    v36 = HIDWORD(static Edge.invalid);
    v46 = qword_280481D78;
    v47 = dword_280481D80;
    v48 = v43 == static Edge.invalid && v42 == HIDWORD(static Edge.invalid);
    v49 = v48 && v44 == qword_280481D78;
    if (!v49 || a3 != dword_280481D80)
    {
      v51 = *(v10 + 108);
      if (v3 >= v51)
      {
        goto LABEL_112;
      }

      v52 = *(v10 + 96);
      if (!v52)
      {
        __break(1u);
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }

      if (*(v52 + 24 * v3) == v8)
      {
        break;
      }
    }

    ++v39;
    if (!--v37)
    {
      goto LABEL_127;
    }
  }

  v53 = v52 + v40;
  v54 = *(v52 + v40 + 16);
  if ((v54 & 2) != 0)
  {
    v54 &= ~2u;
    *(v53 + 16) = v54;
    v51 = *(v10 + 108);
  }

  if (v3 >= v51)
  {
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (v8 != v45)
  {
    return result;
  }

  v55 = *(v53 + 4) == v36 && *(v53 + 8) == v46;
  if (!v55 || v54 != v47)
  {
    return result;
  }

  if (v105 >= *(v10 + 84))
  {
    goto LABEL_121;
  }

  v57 = *(v10 + 72);
  if (!v57)
  {
    goto LABEL_154;
  }

  v58 = (v57 + v9);
  v59 = *(v58 + 3);
  if (v59)
  {
    v60 = 0;
    v61 = 0;
    v62 = 8;
    while (1)
    {
      v64 = *v58;
      if (!*v58)
      {
        break;
      }

      v9 = v64 + v62;
      v65 = *(v64 + v62 - 8);
      if (v65 != v3)
      {
        v66 = (v64 + 8 * v61);
        if (v61 < v60 || v66 >= v9)
        {
          *v66 = v65;
        }

        v63 = __OFADD__(v61++, 1);
        if (v63)
        {
          goto LABEL_113;
        }
      }

      ++v60;
      v62 += 8;
      if (v59 == v60)
      {
        if (v61 <= v59)
        {
          goto LABEL_83;
        }

        __break(1u);
        goto LABEL_82;
      }
    }

LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

LABEL_82:
  v61 = 0;
LABEL_83:
  v73 = v59 - v61 + 1;
  while (--v73)
  {
    if (!*v58)
    {
      __break(1u);
      break;
    }
  }

  if (v61 < 0)
  {
    goto LABEL_122;
  }

  if (HIDWORD(v61))
  {
    goto LABEL_123;
  }

  *(v58 + 3) = v61;
  if (v8 >= *(v10 + 84))
  {
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v74 = *(v10 + 72);
  if (!v74)
  {
    goto LABEL_155;
  }

  v75 = v74 + 312 * v8;
  v76 = *(v75 + 28);
  if (v76)
  {
    v77 = 0;
    v78 = 0;
    v79 = 8;
    while (1)
    {
      v80 = *(v75 + 16);
      if (!v80)
      {
        goto LABEL_143;
      }

      v9 = v80 + v79;
      v81 = *(v80 + v79 - 8);
      if (v81 != v3)
      {
        v82 = (v80 + 8 * v78);
        if (v78 < v77 || v82 >= v9)
        {
          *v82 = v81;
        }

        v63 = __OFADD__(v78++, 1);
        if (v63)
        {
          goto LABEL_114;
        }
      }

      ++v77;
      v79 += 8;
      if (v76 == v77)
      {
        if (v78 <= v76)
        {
          goto LABEL_104;
        }

        __break(1u);
        break;
      }
    }
  }

  v78 = 0;
LABEL_104:
  v83 = v76 - v78 + 1;
  while (--v83)
  {
    if (!*(v75 + 16))
    {
      __break(1u);
      break;
    }
  }

  if (v78 < 0)
  {
    goto LABEL_125;
  }

  if (HIDWORD(v78))
  {
    goto LABEL_126;
  }

  *(v75 + 28) = v78;
  return result;
}

unint64_t T_IndirectNodeSetSource.updateState(within:)(unsigned __int8 *a1, unint64_t a2)
{
  v2 = a2;
  result = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(HIDWORD(a2), a1);
  if (v2 != 2)
  {
    v5 = result;
    v6 = a1 + 56;
    v7 = *(a1 + 72);
    v54[0] = *(a1 + 56);
    v54[1] = v7;
    v55[0] = *(a1 + 88);
    *(v55 + 9) = *(a1 + 97);
    v8 = a1 + 88;
    v9 = a1 + 100;
    v10 = (a1 + 104);
    result = *(a1 + 29);
    v11 = a1 + 56;
    v12 = (a1 + 104);
    while (1)
    {
      v13 = *v12;
      if (result < *v9)
      {
        v14 = (*v8 + 8 * result);
        if ((v14[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v13)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v54);
      }

      v8 = (v13 + 32);
      v9 = (v13 + 44);
      v12 = (v13 + 48);
      v11 = v13;
    }

    if (!*v11)
    {
      goto LABEL_45;
    }

    result = *v11 + 24 * *v14;
    v41 = v5;
    if ((*(*result + 40) & 1) == 0)
    {
      result = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(v2, a1);
    }

    v42 = *a1;
    v15 = a1[48];
    v16 = *(a1 + 22);
    v17 = *(a1 + 72);
    v52[0] = *v6;
    v52[1] = v17;
    v53[0] = *(a1 + 88);
    v18 = a1 + 72;
    v19 = a1 + 84;
    v20 = (a1 + 56);
    v21 = (a1 + 72);
    v22 = a1 + 84;
    v23 = (a1 + 104);
    *(v53 + 9) = *(a1 + 97);
    while (1)
    {
      v24 = *v23;
      if (*v22 >= 2u)
      {
        v25 = *v21;
        if ((*(v25 + 12) & 1) == 0)
        {
          break;
        }
      }

      if (!v24)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v52);
      }

      v21 = (v24 + 16);
      v22 = (v24 + 28);
      v23 = (v24 + 48);
      v20 = v24;
    }

    v26 = *v20;
    if (!v26)
    {
      goto LABEL_46;
    }

    result = v26 + 24 * *(v25 + 8);
    v27 = *(*result + 112);
    if (v27)
    {
      v49 = *v27;
      v28 = *(v27 + 2);
      v47 = *(v27 + 88);
      *v48 = *(v27 + 104);
      *&v48[13] = *(v27 + 117);
      v43 = *(v27 + 24);
      v44 = *(v27 + 40);
      v29 = *(v27 + 56);
      v45 = v29;
      v46 = *(v27 + 72);
      v30 = *v28;
      if (*(*v28 + 16) && (result = specialized __RawDictionaryStorage.find<A>(_:)(v2), (v31 & 1) != 0))
      {
        v32 = *(v30 + 56) + 24 * result;
        LODWORD(v2) = *v32;
        v33 = *(v32 + 8);
      }

      else
      {
        v33 = 0;
      }

      v34 = v6[1];
      v50[0] = *v6;
      v50[1] = v34;
      v51[0] = v6[2];
      *(v51 + 9) = *(v6 + 41);
      while (1)
      {
        v35 = *v10;
        if (*v19 >= 2u && (*(*v18 + 12) & 1) == 0)
        {
          break;
        }

        if (!v35)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v50);
        }

        v18 = (v35 + 16);
        v19 = (v35 + 28);
        v10 = (v35 + 48);
        v6 = v35;
      }

      if (!*v6)
      {
        goto LABEL_47;
      }

      result = *v6 + 24 * *(*v18 + 8);
      v36 = *(*result + 112);
      if (!v36)
      {
        goto LABEL_41;
      }

      *(v36 + 117) = *&v48[13];
      *v36 = v49;
      *(v36 + 24) = v43;
      *(v36 + 40) = v44;
      *(v36 + 56) = v45;
      *(v36 + 104) = *v48;
      *(v36 + 88) = v47;
      *(v36 + 16) = v28;
      *(v36 + 72) = v46;
      if (v15)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      if (v42 >= *(v16 + 116))
      {
        __break(1u);
      }

      else
      {
        v37 = *(v16 + 104);
        if (!v37)
        {
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
          return result;
        }

        v38 = *(*(v37 + 8 * v42) + 8);
        if (v41 < *(v38 + 84))
        {
          v39 = *(v38 + 72);
          if (v39)
          {
            v40 = v39 + 312 * v41;
            *(v40 + 72) = v2;
            *(v40 + 80) = v33;
            *(v40 + 88) = 0;
            return result;
          }

          goto LABEL_44;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  return result;
}

unint64_t T_IndirectNodeSetDependency.structure(within:)(unint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = HIDWORD(a2);
  v5 = (result + 56);
  v6 = *(result + 72);
  v58[0] = *(result + 56);
  v58[1] = v6;
  v59[0] = *(result + 88);
  v7 = result + 72;
  v8 = (result + 84);
  v9 = (result + 104);
  *(v59 + 9) = *(result + 97);
  v10 = (result + 56);
  v11 = (result + 72);
  v12 = (result + 84);
  v13 = (result + 104);
  while (1)
  {
    v14 = *v13;
    if (*v12 >= 2u)
    {
      v15 = *v11;
      if ((*(v15 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v14)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v58);
    }

    v11 = (v14 + 16);
    v12 = (v14 + 28);
    v13 = (v14 + 48);
    v10 = v14;
  }

  v16 = *v10;
  if (!v16)
  {
    goto LABEL_40;
  }

  result = v16 + 24 * *(v15 + 8);
  v17 = *(*result + 112);
  if (!v17)
  {
    goto LABEL_33;
  }

  v55 = *v17;
  v18 = *(v17 + 2);
  v19 = *(v17 + 72);
  v20 = *(v17 + 104);
  v53 = *(v17 + 88);
  v54[0] = v20;
  *(v54 + 13) = *(v17 + 117);
  v21 = *(v17 + 40);
  v49 = *(v17 + 24);
  v50 = v21;
  v51 = *(v17 + 56);
  v52 = v19;
  v22 = *v18;
  if (!*(*v18 + 16))
  {
    v47 = HIDWORD(a2);
LABEL_14:
    v25 = 0;
    goto LABEL_15;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(HIDWORD(a2));
  if ((v23 & 1) == 0)
  {
    LODWORD(v47) = v4;
    goto LABEL_14;
  }

  v24 = *(v22 + 56) + 24 * result;
  LODWORD(v47) = *v24;
  v25 = *(v24 + 8);
LABEL_15:
  v26 = v5[1];
  v56[0] = *v5;
  v56[1] = v26;
  v57[0] = v5[2];
  *(v57 + 9) = *(v5 + 41);
  while (1)
  {
    v27 = *v9;
    if (*v8 >= 2u && (*(*v7 + 12) & 1) == 0)
    {
      break;
    }

    if (!v27)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v56);
    }

    v7 = v27 + 16;
    v8 = (v27 + 28);
    v9 = (v27 + 48);
    v5 = v27;
  }

  if (!*v5)
  {
    goto LABEL_41;
  }

  v28 = *(*(*v5 + 24 * *(*v7 + 8)) + 112);
  if (!v28)
  {
    goto LABEL_34;
  }

  *v28 = v55;
  v29 = v51;
  *(v28 + 72) = v52;
  v30 = v54[0];
  *(v28 + 88) = v53;
  *(v28 + 104) = v30;
  v31 = v50;
  *(v28 + 24) = v49;
  *(v28 + 40) = v31;
  *(v28 + 16) = v18;
  *(v28 + 117) = *(v54 + 13);
  *(v28 + 56) = v29;
  v32 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(a2, v3);
  if (*(v3 + 48))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v33 = *(v3 + 22);
  v34 = *v3;
  if (v34 >= *(v33 + 116))
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v35 = *(v33 + 104);
  if (!v35)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v36 = v32;
  v37 = *(*(v35 + 8 * v34) + 8);
  v38 = *(v37 + 72);
  v39 = *(v37 + 84);
  v40 = *(v37 + 88);
  v3 = specialized Strong.subscript.read();
  v42 = *v41;
  if (!*(*v41 + 16))
  {
LABEL_37:
    (v3)(v48, 0);
    __break(1u);
    goto LABEL_38;
  }

  v43 = specialized __RawDictionaryStorage.find<A>(_:)(v47, v25);
  if (v44)
  {
    v45 = *(*(v42 + 56) + 4 * v43);
    result = (v3)(v48, 0);
    if (v45 < v39)
    {
      if (v38)
      {
        v46 = v38 + 312 * v45;
        *(v46 + 172) = v36;
        *(v46 + 176) = 0;
        return result;
      }

      goto LABEL_39;
    }

    goto LABEL_32;
  }

LABEL_38:
  result = (v3)(v48, 0);
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

void T_BeginValueUpdate.updateState(within:)(unsigned __int8 *a1, unint64_t a2)
{
  v3 = v270;
  v4 = *(a1 + 22);
  v5 = *(v4 + 136);
  v6 = *(v4 + 168);
  v7 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(a2, a1);
  v8 = a1 + 56;
  v9 = *(a1 + 72);
  v283[0] = *(a1 + 56);
  v283[1] = v9;
  v284[0] = *(a1 + 88);
  v10 = a1 + 88;
  v11 = a1 + 100;
  v12 = (a1 + 104);
  v13 = *(a1 + 29);
  v14 = 8 * v13;
  *(v284 + 9) = *(a1 + 97);
  v15 = (a1 + 56);
  v217 = (a1 + 88);
  v16 = a1 + 100;
  while (1)
  {
    v17 = *v12;
    if (v13 < *v16)
    {
      v18 = (*v10 + v14);
      if ((v18[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v17)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v13, 0, v283);
    }

    v10 = (v17 + 32);
    v16 = (v17 + 44);
    v12 = (v17 + 48);
    v15 = v17;
  }

  v66 = *v15;
  if (!v66)
  {
    goto LABEL_218;
  }

  v65 = *v18;
  v67 = v66 + 24 * v65;
  v60 = a1[48];
  if (a1[48])
  {
    __break(1u);
    goto LABEL_43;
  }

  v19 = *(v4 + 116);
  v20 = *a1;
  if (v20 >= v19)
  {
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  v21 = *(v4 + 104);
  if (!v21)
  {
LABEL_184:
    __break(1u);
    goto LABEL_185;
  }

  v22 = *(*(v21 + 8 * v20) + 8);
  if (v7 >= *(v22 + 84))
  {
    goto LABEL_147;
  }

  v23 = *(v22 + 72);
  if (!v23)
  {
LABEL_185:
    __break(1u);
    goto LABEL_186;
  }

  v24 = v23 + 312 * v7;
  *(v24 + 288) = *(*v67 + 32);
  *(v24 + 296) = -1;
  *(v24 + 304) = 0;
  if (a1[48])
  {
LABEL_186:
    __break(1u);
    goto LABEL_187;
  }

  v25 = *a1;
  if (v25 >= v19)
  {
    goto LABEL_148;
  }

  v26 = *(*(v21 + 8 * v25) + 8);
  if (v7 >= *(v26 + 84))
  {
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  v27 = *(v26 + 72);
  if (!v27)
  {
LABEL_187:
    __break(1u);
    goto LABEL_188;
  }

  v3 = 312 * v7;
  v28 = *(v27 + v3 + 224);
  if ((v28 & 0x4000000000000004) == 4)
  {
    *(v27 + v3 + 224) = v28 | 0x4000000000000000;
    if (a1[48])
    {
      goto LABEL_203;
    }
  }

  v29 = *a1;
  if (v29 >= v19)
  {
    goto LABEL_150;
  }

  v30 = *(*(v21 + 8 * v29) + 8);
  if (v7 >= *(v30 + 84))
  {
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
    goto LABEL_162;
  }

  v216 = a1 + 56;
  v31 = *(v30 + 72);
  if (!v31)
  {
LABEL_188:
    __break(1u);
    goto LABEL_189;
  }

  v32 = v31 + v3;
  v8 = 1;
  if ((*(v32 + 220) & 2) != 0)
  {
    if (*(v32 + 136))
    {
LABEL_204:
      __break(1u);
      goto LABEL_205;
    }

    v33 = *(v32 + 128);
    if (HIDWORD(v33) >= *(v30 + 124))
    {
      goto LABEL_163;
    }

    v34 = *(v30 + 112);
    if (!v34)
    {
LABEL_205:
      __break(1u);
      goto LABEL_206;
    }

    if ((v33 & 0x80000000) != 0)
    {
      goto LABEL_164;
    }

    v35 = *(v34 + 168 * HIDWORD(v33));
    if (v33 >= *(v35 + 16))
    {
LABEL_165:
      __break(1u);
      goto LABEL_166;
    }

    v36 = *(v35 + 208 * v33 + 120);
    if ((v36 + 1) >= 2)
    {
      v37 = *(v5 + 4);
      if (*(v37 + 16) <= v36)
      {
LABEL_182:
        __break(1u);
        goto LABEL_183;
      }

      v38 = *(v37 + 4 * v36 + 32);
      if (v38 >= *(v5 + 3))
      {
LABEL_183:
        __break(1u);
        goto LABEL_184;
      }

      if (!*v5)
      {
LABEL_231:
        __break(1u);
LABEL_232:
        __break(1u);
        return;
      }

      v39 = *v5 + 120 * v38;
      v40 = *v39;
      v41 = *(v39 + 16);
      v42 = *(v39 + 48);
      *v233 = *(v39 + 32);
      *&v233[16] = v42;
      v231 = v40;
      v232 = v41;
      v43 = *(v39 + 64);
      v44 = *(v39 + 80);
      v45 = *(v39 + 96);
      *(v236 + 14) = *(v39 + 110);
      v235 = v44;
      v236[0] = v45;
      v234 = v43;
      v46 = *(v39 + 80);
      v228 = *(v39 + 64);
      v229 = v46;
      v230[0] = *(v39 + 96);
      *(v230 + 14) = *(v39 + 110);
      v47 = *(v39 + 16);
      v225 = *v39;
      v226 = v47;
      v48 = *(v39 + 48);
      *v227 = *(v39 + 32);
      *&v227[16] = v48;
      v49 = v5[2];
      v50 = *v5;
      v238 = v5[1];
      v239 = v49;
      v51 = v5[6];
      v53 = v5[3];
      v52 = v5[4];
      v242 = v5[5];
      v243 = v51;
      v240 = v53;
      v241 = v52;
      v237 = v50;
      v54 = v5[5];
      v222 = v5[4];
      v223 = v54;
      v224 = v5[6];
      v55 = v5[1];
      v218 = *v5;
      v219 = v55;
      v56 = v5[3];
      v220 = v5[2];
      v221 = v56;
      outlined init with copy of PType(&v231, v257);
      outlined init with copy of Interpreter.Storage.Types(&v237, v257);
      v8 = PType.isFirstParty(within:)(&v218);
      v247 = v222;
      v248 = v223;
      v249 = v224;
      v244 = v218;
      v245 = v219;
      *v246 = v220;
      *&v246[16] = v221;
      outlined destroy of Interpreter.Storage.Types(&v244);
      v259 = v228;
      *v260 = v229;
      *&v260[16] = v230[0];
      *&v260[30] = *(v230 + 14);
      *v257 = v225;
      *&v257[16] = v226;
      *&v257[32] = *v227;
      v258 = *&v227[16];
      outlined destroy of PType(v257);
    }
  }

  v257[0] = 1;
  LOBYTE(v231) = 1;
  LOBYTE(v225) = 0;
  v272 = v7;
  v273 = 0;
  v274 = 0;
  v275 = 1;
  v276 = 0xFFFFFFFFLL;
  v277 = 0;
  v278 = 1;
  v279 = -1;
  v280 = 0;
  v281 = 0;
  v282 = 0;
  if (a1[48])
  {
LABEL_189:
    __break(1u);
    goto LABEL_190;
  }

  v57 = *a1;
  if (v57 >= *(v4 + 116))
  {
    goto LABEL_152;
  }

  v58 = *(v4 + 104);
  if (!v58)
  {
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
    goto LABEL_192;
  }

  v59 = *(*(v58 + 8 * v57) + 8) + 32;
  specialized UnsafeArray.growToCapacity(_:)(v6);
  v60 = (a1 + 56);
  v61 = (a1 + 104);
  v62 = *(a1 + 72);
  v244 = *v216;
  v245 = v62;
  *v246 = *(a1 + 88);
  *&v246[9] = *(a1 + 97);
  v63 = a1 + 88;
  while (1)
  {
    v64 = *v61;
    if (v13 < *v11)
    {
      v65 = (*v63 + v14);
      if ((v65[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v64)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v13, 0, &v244);
    }

    v63 = (v64 + 32);
    v11 = (v64 + 44);
    v61 = (v64 + 48);
    v60 = v64;
  }

LABEL_43:
  v68 = *v60;
  if (!v68)
  {
LABEL_219:
    __break(1u);
LABEL_220:
    __break(1u);
    goto LABEL_221;
  }

  v69 = specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(&v272, *(*(v68 + 24 * *v65) + 32), 0xFFFFFFFFFFFFFFFFLL, (v8 & 1));
  if (a1[48])
  {
    goto LABEL_191;
  }

  v70 = *a1;
  if (v70 >= *(v4 + 116))
  {
    goto LABEL_153;
  }

  v71 = *(v4 + 104);
  if (!v71)
  {
LABEL_192:
    __break(1u);
    goto LABEL_193;
  }

  v72 = *(*(v71 + 8 * v70) + 8);
  if (v7 >= *(v72 + 84))
  {
    goto LABEL_154;
  }

  v73 = *(v72 + 72);
  if (!v73)
  {
LABEL_193:
    __break(1u);
    goto LABEL_194;
  }

  v74 = v69;
  v75 = v73 + v3;
  if ((*(v75 + 40) & 1) == 0)
  {
    v76 = *(v75 + 36);
    v77 = *(v72 + 44);
    if (v76 >= v77)
    {
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
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
      goto LABEL_176;
    }

    v78 = *(v72 + 32);
    if (!v78)
    {
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
      goto LABEL_209;
    }

    if (v69 >= v77)
    {
      goto LABEL_167;
    }

    v79 = (v78 + (v76 << 7));
    v80 = (v78 + (v69 << 7));
    v81 = *v80;
    v82 = v79[31];
    if (v82 == v79[30])
    {
      specialized UnsafeArray.growToCapacity(_:)(2 * v82);
    }

    v83 = *(v79 + 14);
    if (!v83)
    {
      goto LABEL_207;
    }

    v84 = v79[31];
    v85 = v83 + 8 * v84;
    *v85 = -22528;
    *(v85 + 4) = v81;
    if (v84 == -1)
    {
      goto LABEL_168;
    }

    v79[31] = v84 + 1;
    v86 = *v79;
    v87 = v80[31];
    if (v87 == v80[30])
    {
      specialized UnsafeArray.growToCapacity(_:)(2 * v87);
    }

    v88 = *(v80 + 14);
    if (!v88)
    {
      goto LABEL_208;
    }

    v89 = v80[31];
    v90 = v88 + 8 * v89;
    *v90 = 26624;
    *(v90 + 4) = v86;
    if (v89 == -1)
    {
      goto LABEL_169;
    }

    v80[31] = v89 + 1;
    if (a1[48])
    {
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
      goto LABEL_211;
    }

    v71 = *(v4 + 104);
  }

  v91 = *(v4 + 116);
  v92 = *a1;
  v93 = *a1;
  if (v93 >= v91)
  {
    goto LABEL_155;
  }

  v210 = v74;
  if (!v71)
  {
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
    goto LABEL_196;
  }

  v94 = *(*(v71 + 8 * v93) + 8);
  v95 = *(a1 + 24);
  v267 = *(a1 + 8);
  v268 = v95;
  v269 = *(a1 + 5);
  v266[0] = *(a1 + 49);
  *(v266 + 3) = *(a1 + 13);
  v97 = *(a1 + 7);
  v96 = *(a1 + 8);
  v98 = *(a1 + 9);
  v99 = *(a1 + 20);
  v100 = *(a1 + 21);
  v265 = *v217;
  v101 = *(a1 + 23);
  v102 = *(a1 + 13);
  v103 = a1[112];
  *&v233[15] = *(a1 + 10);
  v104 = *(a1 + 145);
  v105 = *(a1 + 113);
  v232 = *(a1 + 129);
  *v233 = v104;
  v231 = v105;
  v106 = *(a1 + 22);
  v263 = v101;
  v264 = a1[192];
  *&v237 = v97;
  *(&v237 + 1) = v96;
  *&v238 = v98;
  *(&v238 + 1) = __PAIR64__(v100, v99);
  v239 = *v217;
  v107 = v97;
  *&v240 = v102;
  v108 = v98;
  v109 = v102;
  BYTE8(v240) = v103;
  v211 = v94;
  v213 = v93;
  if (!v100)
  {
    goto LABEL_67;
  }

  while ((v108[1] & 1) != 0)
  {
    do
    {
LABEL_67:
      if (!v109)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v237);
      }

      v107 = *v109;
      v108 = v109[2];
      v110 = *(v109 + 7);
      v109 = v109[6];
    }

    while (!v110);
  }

  if (!v107)
  {
    goto LABEL_216;
  }

  v111 = *(*(v107 + 24 * *v108) + 112);
  if (!v111)
  {
    goto LABEL_195;
  }

  if (!*(*(*(v111 + 32) + 8) + 16))
  {
    goto LABEL_156;
  }

  *&v257[8] = v267;
  *&v257[24] = v268;
  *&v260[8] = v265;
  *&v260[33] = v231;
  *v257 = v92;
  *&v257[40] = v269;
  LOBYTE(v258) = 0;
  *(&v258 + 1) = v266[0];
  DWORD1(v258) = *(v266 + 3);
  *(&v258 + 1) = v97;
  *&v259 = v96;
  *(&v259 + 1) = v98;
  *v260 = v99;
  *&v260[4] = v100;
  *&v260[24] = v102;
  v260[32] = v103;
  *&v260[49] = v232;
  *&v260[65] = *v233;
  *&v260[80] = *&v233[15];
  *&v261 = v106;
  *(&v261 + 1) = v263;
  v262 = v264;
  Interpreter.Iterator.updatingValue.getter();
  if (v113)
  {
LABEL_196:
    __break(1u);
    goto LABEL_197;
  }

  if (v213 >= *(v106 + 116))
  {
    goto LABEL_157;
  }

  v114 = *(v106 + 104);
  if (!v114)
  {
LABEL_197:
    __break(1u);
    goto LABEL_198;
  }

  v115 = *(*(v114 + 8 * v213) + 8);
  if (v112 >= *(v115 + 44))
  {
    goto LABEL_158;
  }

  v214 = *(v106 + 116);
  v116 = *(v115 + 32);
  if (!v116)
  {
LABEL_198:
    __break(1u);
    goto LABEL_199;
  }

  v117 = v116 + (v112 << 7);
  v118 = *(v117 + 8);
  v119 = *(v117 + 16);
  v120 = *(v117 + 24);
  v121 = *(v117 + 25);
  v124 = v117 + 28;
  v122 = *(v117 + 28);
  v123 = *(v124 + 4);
  LOBYTE(v225) = v120;
  v125 = v121 == 0;
  v126 = 256;
  if (v125)
  {
    v126 = 0;
  }

  v127 = v126 | (v122 << 32);
  v128 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v118, v119, v126 | v120, v123);
  if (!v128)
  {
    LOBYTE(v225) = v120;
    v128 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v118, v119, v127 | v120, v123, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    if (!v128)
    {
      goto LABEL_217;
    }
  }

  if (*v128 >= *(v115 + 84))
  {
    goto LABEL_159;
  }

  v129 = *(v115 + 72);
  if (!v129)
  {
LABEL_199:
    __break(1u);
    goto LABEL_200;
  }

  if (v210 >= *(v211 + 44))
  {
    goto LABEL_160;
  }

  v130 = *(v211 + 32);
  if (!v130)
  {
LABEL_200:
    __break(1u);
    goto LABEL_201;
  }

  *(v130 + (v210 << 7) + 48) = (*(v129 + 312 * *v128 + 224) & 0x4000000000000000) == 0;
  if (a1[48])
  {
LABEL_201:
    __break(1u);
    goto LABEL_202;
  }

  v131 = *a1;
  v132 = *a1;
  if (v132 >= v214)
  {
    goto LABEL_161;
  }

  v133 = *(*(v114 + 8 * v132) + 8);
  if (v210 >= *(v133 + 44))
  {
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
    goto LABEL_165;
  }

  v134 = *(v133 + 32);
  if (!v134)
  {
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
    goto LABEL_204;
  }

  if (*(v134 + (v210 << 7) + 48) != 1)
  {
    return;
  }

  v212 = *(*(v114 + 8 * v132) + 8);
  v135 = *(a1 + 24);
  v254 = *(a1 + 8);
  v255 = v135;
  v256 = *(a1 + 5);
  v253[0] = *(a1 + 49);
  *(v253 + 3) = *(a1 + 13);
  v137 = *(a1 + 7);
  v136 = *(a1 + 8);
  v138 = *(a1 + 9);
  v139 = *(a1 + 20);
  v140 = *(a1 + 21);
  v252 = *v217;
  v141 = *(a1 + 13);
  v142 = a1[112];
  v143 = *(a1 + 113);
  v144 = *(a1 + 129);
  v145 = *(a1 + 145);
  *&v227[15] = *(a1 + 10);
  v226 = v144;
  *v227 = v145;
  v225 = v143;
  v146 = *(a1 + 22);
  v147 = *(a1 + 23);
  v251 = a1[192];
  v250 = v147;
  *&v218 = v137;
  *(&v218 + 1) = v136;
  v215 = v136;
  *&v219 = v138;
  *(&v219 + 1) = __PAIR64__(v140, v139);
  v220 = *v217;
  v148 = v137;
  *&v221 = v141;
  v149 = v138;
  v150 = v141;
  BYTE8(v221) = v142;
  if (!v140)
  {
    goto LABEL_95;
  }

  while ((v149[1] & 1) != 0)
  {
    do
    {
LABEL_95:
      if (!v150)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v218);
      }

      v148 = *v150;
      v149 = v150[2];
      v151 = *(v150 + 7);
      v150 = v150[6];
    }

    while (!v151);
  }

  if (!v148)
  {
    goto LABEL_229;
  }

  v152 = *(*(v148 + 24 * *v149) + 112);
  if (!v152)
  {
    goto LABEL_210;
  }

  if (!*(*(*(v152 + 32) + 8) + 16))
  {
    goto LABEL_170;
  }

  *&v257[8] = v254;
  *&v257[24] = v255;
  *&v260[8] = v252;
  *&v260[33] = v225;
  *v257 = v131;
  *&v257[40] = v256;
  LOBYTE(v258) = 0;
  *(&v258 + 1) = v253[0];
  DWORD1(v258) = *(v253 + 3);
  *(&v258 + 1) = v137;
  *&v259 = v215;
  *(&v259 + 1) = v138;
  *v260 = v139;
  *&v260[4] = v140;
  *&v260[24] = v141;
  v260[32] = v142;
  *&v260[49] = v226;
  *&v260[65] = *v227;
  *&v260[80] = *&v227[15];
  *&v261 = v146;
  *(&v261 + 1) = v250;
  v262 = v251;
  Interpreter.Iterator.updatingValue.getter();
  if (v154)
  {
LABEL_211:
    __break(1u);
    goto LABEL_212;
  }

  v155 = *(v146 + 116);
  if (v132 >= v155)
  {
    goto LABEL_171;
  }

  v156 = *(v146 + 104);
  if (!v156)
  {
LABEL_212:
    __break(1u);
    goto LABEL_213;
  }

  v157 = *(*(v156 + 8 * v132) + 8);
  if (v153 >= *(v157 + 44))
  {
    goto LABEL_172;
  }

  v158 = *(v157 + 32);
  if (!v158)
  {
LABEL_213:
    __break(1u);
    goto LABEL_214;
  }

  v159 = v146;
  v160 = v158 + (v153 << 7);
  v161 = *(v160 + 8);
  v162 = *(v160 + 16);
  v163 = *(v160 + 24);
  v164 = *(v160 + 25);
  v167 = v160 + 28;
  v165 = *(v160 + 28);
  v166 = *(v167 + 4);
  LOBYTE(v270[0]) = v163;
  v125 = v164 == 0;
  v168 = 256;
  if (v125)
  {
    v168 = 0;
  }

  v169 = v168 | (v165 << 32);
  v170 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v161, v162, v168 | v163, v166);
  if (!v170)
  {
    LOBYTE(v270[0]) = v163;
    v170 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v161, v162, v169 | v163, v166, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    if (!v170)
    {
      goto LABEL_230;
    }
  }

  if (*v170 >= *(v157 + 84))
  {
    goto LABEL_173;
  }

  v171 = *(v157 + 72);
  if (!v171)
  {
LABEL_214:
    __break(1u);
    goto LABEL_215;
  }

  v172 = *(v171 + 312 * *v170 + 180);
  if (v172 >= *(v212 + 124))
  {
    goto LABEL_174;
  }

  v173 = *(v212 + 112);
  if (!v173)
  {
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
    goto LABEL_219;
  }

  v174 = v173 + 168 * v172;
  if (*(v174 + 128))
  {
    return;
  }

  if (a1[48])
  {
    goto LABEL_220;
  }

  v175 = *a1;
  if (v175 >= v155)
  {
    goto LABEL_175;
  }

  v176 = *(v174 + 124);
  v177 = *(*(v156 + 8 * v175) + 8);
  if (v176 >= *(v177 + 44))
  {
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  v178 = *(v177 + 32);
  if (!v178)
  {
LABEL_221:
    __break(1u);
LABEL_222:
    __break(1u);
    goto LABEL_223;
  }

  v180 = v216;
  v179 = (a1 + 104);
  v181 = v216[1];
  v270[0] = *v216;
  v270[1] = v181;
  v271[0] = v216[2];
  *(v271 + 9) = *(v216 + 41);
  v183 = a1 + 84;
  v182 = (a1 + 72);
  while (1)
  {
    v184 = *v179;
    if (*v183)
    {
      if (((*v182)[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v184)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v270);
    }

    v182 = (v184 + 16);
    v183 = (v184 + 28);
    v179 = (v184 + 48);
    v180 = v184;
  }

  if (!*v180)
  {
    goto LABEL_232;
  }

  v185 = *(*(*v180 + 24 * **v182) + 112);
  if (!v185)
  {
    goto LABEL_222;
  }

  if (!*(*(*(v185 + 32) + 8) + 16))
  {
    goto LABEL_177;
  }

  if (a1[48])
  {
LABEL_223:
    __break(1u);
    goto LABEL_224;
  }

  v186 = *a1;
  if (v186 >= *(v159 + 116))
  {
    goto LABEL_178;
  }

  v187 = *(v159 + 104);
  if (!v187)
  {
LABEL_224:
    __break(1u);
    goto LABEL_225;
  }

  v188 = *(*(v187 + 8 * v186) + 8);
  v189 = *(a1 + 11);
  *&v260[80] = *(a1 + 10);
  v261 = v189;
  v262 = a1[192];
  v190 = *(a1 + 7);
  *&v260[16] = *(a1 + 6);
  *&v260[32] = v190;
  v191 = *(a1 + 9);
  *&v260[48] = *(a1 + 8);
  *&v260[64] = v191;
  v192 = *(a1 + 3);
  *&v257[32] = *(a1 + 2);
  v258 = v192;
  v193 = *(a1 + 5);
  v259 = *(a1 + 4);
  *v260 = v193;
  v194 = *(a1 + 1);
  *v257 = *a1;
  *&v257[16] = v194;
  Interpreter.Iterator.updatingValue.getter();
  if (v196)
  {
LABEL_225:
    __break(1u);
    goto LABEL_226;
  }

  if (v195 >= *(v188 + 44))
  {
    goto LABEL_179;
  }

  v197 = *(v188 + 32);
  if (!v197)
  {
LABEL_226:
    __break(1u);
LABEL_227:
    __break(1u);
LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
LABEL_230:
    __break(1u);
    goto LABEL_231;
  }

  v198 = (v178 + (v176 << 7));
  v199 = (v197 + (v195 << 7));
  v200 = *v199;
  v201 = v198[31];
  if (v201 == v198[30])
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v201);
  }

  v202 = *(v198 + 14);
  if (!v202)
  {
    goto LABEL_227;
  }

  v203 = v198[31];
  v204 = v202 + 8 * v203;
  *v204 = -24572;
  *(v204 + 4) = v200;
  if (v203 == -1)
  {
    goto LABEL_180;
  }

  v198[31] = v203 + 1;
  v205 = *v198;
  v206 = v199[31];
  if (v206 == v199[30])
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v206);
  }

  v207 = *(v199 + 14);
  if (!v207)
  {
    goto LABEL_228;
  }

  v208 = v199[31];
  v209 = v207 + 8 * v208;
  *v209 = 24580;
  *(v209 + 4) = v205;
  if (v208 == -1)
  {
    goto LABEL_181;
  }

  v199[31] = v208 + 1;
}

double Event.AttributeValue.init(ref:)@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 4) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *&result = 0xFFFFFFFFLL;
  *(a2 + 20) = 0xFFFFFFFFLL;
  *(a2 + 28) = 0;
  *(a2 + 32) = 1;
  *(a2 + 36) = -1;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t T_EndValueUpdate.updateState(within:)(unsigned __int8 *a1, unint64_t a2)
{
  v3 = &v122;
  LODWORD(v4) = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(a2, a1);
  v5 = *(a1 + 5);
  v140 = *(a1 + 4);
  v141 = v5;
  v142 = *(a1 + 6);
  v6 = *(a1 + 1);
  v136 = *a1;
  v137 = v6;
  v7 = *(a1 + 3);
  v138 = *(a1 + 2);
  v139 = v7;
  v8 = *(a1 + 28);
  v9 = *(a1 + 29);
  v10 = *(a1 + 120);
  v11 = *(a1 + 136);
  v12 = *(a1 + 21);
  v147 = *(a1 + 152);
  v146 = v11;
  v145 = v10;
  v13 = *(a1 + 23);
  v151 = a1[192];
  v14 = *(a1 + 22);
  v143 = v8;
  v144 = v9;
  v148 = v12;
  v149 = v14;
  v150 = v13;
  Interpreter.Iterator.updatingValue.getter();
  if (v16)
  {
    goto LABEL_92;
  }

  if (v4 != HIDWORD(v15))
  {
    goto LABEL_93;
  }

  v17 = a1 + 56;
  v18 = *(a1 + 72);
  v156[0] = *(a1 + 56);
  v156[1] = v18;
  v157[0] = *(a1 + 88);
  *(v157 + 9) = *(a1 + 97);
  v19 = a1 + 88;
  v20 = a1 + 100;
  v4 = (a1 + 104);
  v21 = a1 + 56;
  v22 = (a1 + 104);
  while (1)
  {
    v23 = *v22;
    if (v9 < *v20)
    {
      v24 = (*v19 + 8 * v9);
      if ((v24[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v23)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v9, 0, v156);
    }

    v19 = (v23 + 32);
    v20 = (v23 + 44);
    v22 = (v23 + 48);
    v21 = v23;
  }

  if (!*v21)
  {
    goto LABEL_116;
  }

  v15 = (*v21 + 24 * *v24);
  v9 = *(*v15 + 32);
  v25 = *(a1 + 72);
  v154[0] = *v17;
  v154[1] = v25;
  v155[0] = *(a1 + 88);
  v26 = (a1 + 72);
  v27 = a1 + 84;
  *(v155 + 9) = *(a1 + 97);
  v28 = (a1 + 56);
  v29 = (a1 + 72);
  v30 = a1 + 84;
  v31 = (a1 + 104);
  while (1)
  {
    v32 = *v31;
    if (*v30)
    {
      v33 = *v29;
      if ((v33[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v32)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v154);
    }

    v29 = (v32 + 16);
    v30 = (v32 + 28);
    v31 = (v32 + 48);
    v28 = v32;
  }

  v34 = *v28;
  if (!v34)
  {
    goto LABEL_112;
  }

  v15 = (v34 + 24 * *v33);
  v35 = *(*v15 + 112);
  if (!v35)
  {
    goto LABEL_95;
  }

  if (!*(*(*(v35 + 32) + 8) + 16))
  {
    goto LABEL_78;
  }

  v121 = v9;
  v36 = *(a1 + 7);
  v37 = *(a1 + 9);
  v38 = *(a1 + 10);
  v130 = *(a1 + 8);
  v131 = v37;
  v132 = v38;
  v39 = *(a1 + 3);
  v40 = *(a1 + 5);
  v41 = *(a1 + 6);
  v126 = *(a1 + 4);
  v127 = v40;
  v9 = *a1;
  v3 = a1[48];
  v128 = v41;
  v129 = v36;
  v42 = *(a1 + 1);
  v122 = *a1;
  v123 = v42;
  v124 = *(a1 + 2);
  v125 = v39;
  v43 = *(a1 + 22);
  v44 = *(a1 + 23);
  v135 = a1[192];
  v133 = v43;
  v134 = v44;
  v120 = v43;
  Interpreter.Iterator.updatingValue.getter();
  if (v45)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  if (v3)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  if (v9 >= *(v14 + 116))
  {
    goto LABEL_79;
  }

  v46 = *(v14 + 104);
  if (!v46)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v47 = *(*(v46 + 8 * v9) + 8);
  if (v15 >= *(v47 + 44))
  {
    goto LABEL_80;
  }

  v48 = *(v47 + 32);
  if (!v48)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v49 = v48 + (v15 << 7);
  v50 = *(v49 + 8);
  v51 = *(v49 + 16);
  v3 = *(v49 + 24);
  v52 = *(v49 + 25);
  v54 = v49 + 28;
  v53 = *(v49 + 28);
  v9 = *(v54 + 4);
  LOBYTE(v152[0]) = v3;
  v55 = v52 == 0;
  v56 = 256;
  if (v55)
  {
    v56 = 0;
  }

  v57 = v56 | (v53 << 32);
  v119 = v50;
  v15 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v50, v51, v56 | v3, v9);
  if (!v15)
  {
    LOBYTE(v152[0]) = v3;
    v15 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v119, v51, v57 | v3, v9, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    if (!v15)
    {
      goto LABEL_114;
    }
  }

  if (*v15 >= *(v47 + 84))
  {
    goto LABEL_81;
  }

  v58 = *(v47 + 72);
  if (!v58)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v59 = v58 + 312 * *v15;
  if (*(v59 + 304))
  {
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  if (v121 < *(v59 + 288))
  {
    goto LABEL_82;
  }

  *(v59 + 296) = v121;
  v60 = *a1;
  v61 = a1[48];
  v62 = *(a1 + 72);
  v152[0] = *v17;
  v152[1] = v62;
  v153[0] = *(a1 + 88);
  *(v153 + 9) = *(a1 + 97);
  while (1)
  {
    v63 = *v4;
    if (*v27)
    {
      if (((*v26)[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v63)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v152);
    }

    v26 = (v63 + 16);
    v27 = (v63 + 28);
    v4 = (v63 + 48);
    v17 = v63;
  }

  if (!*v17)
  {
    goto LABEL_113;
  }

  v15 = (*v17 + 24 * **v26);
  v64 = *(*v15 + 112);
  if (!v64)
  {
    goto LABEL_102;
  }

  v65 = *(*(v64 + 32) + 8);
  v66 = *(v65 + 16);
  if (!v66)
  {
    goto LABEL_89;
  }

  if (v61)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  if (*(v120 + 116) <= v60)
  {
    goto LABEL_83;
  }

  v67 = *(v120 + 104);
  if (!v67)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v68 = *(v65 + 32 + 48 * (v66 - 1));
  v69 = *(*(v67 + 8 * v60) + 8);
  v70 = *(v69 + 44);
  if (v68 >= v70)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
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
    goto LABEL_84;
  }

  v71 = *(v69 + 32);
  if (!v71)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v72 = v71 + (v68 << 7);
  v75 = *(v72 + 8);
  v74 = v72 + 8;
  v73 = v75;
  if (!*(v74 + 24))
  {
    goto LABEL_77;
  }

  if ((*(v74 + 16) & 1) == 0)
  {
    if (!v73)
    {
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    if (*v73 != &type metadata for Event.AttributeValue)
    {
      v76 = (v65 + 48 * v66 - 64);
      while (v66-- > 1)
      {
        v68 = *v76;
        if (v68 >= v70)
        {
          goto LABEL_76;
        }

        v78 = v71 + (v68 << 7);
        v81 = *(v78 + 8);
        v80 = v78 + 8;
        v79 = v81;
        if (!*(v80 + 24))
        {
          goto LABEL_77;
        }

        if (*(v80 + 16))
        {
          goto LABEL_91;
        }

        if (!v79)
        {
          goto LABEL_90;
        }

        v76 -= 12;
        if (*v79 == &type metadata for Event.AttributeValue)
        {
          goto LABEL_59;
        }
      }

      goto LABEL_89;
    }

LABEL_59:
    if (a1[48])
    {
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    v82 = *(v120 + 116);
    v83 = *a1;
    if (v83 < v82)
    {
      v4 = *(v120 + 104);
      if (!v4)
      {
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      v84 = *(v4[v83] + 8);
      if (v68 < *(v84 + 44))
      {
        v85 = *(v84 + 32);
        if (!v85)
        {
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
          goto LABEL_110;
        }

        v86 = v85 + (v68 << 7);
        v87 = *(v86 + 8);
        v88 = *(v86 + 16);
        v3 = *(v86 + 24);
        v89 = *(v86 + 25);
        v91 = v86 + 28;
        v90 = *(v86 + 28);
        v9 = *(v91 + 4);
        v55 = v89 == 0;
        v92 = 256;
        if (v55)
        {
          v92 = 0;
        }

        v93 = v92 | (v90 << 32);
        v15 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v87, v88, v92 | v3, v9);
        if (!v15)
        {
          v15 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v87, v88, v93 | v3, v9, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
          if (!v15)
          {
            goto LABEL_115;
          }
        }

        if (a1[48])
        {
          goto LABEL_109;
        }

        v94 = *a1;
        if (v94 < v82)
        {
          v95 = *(v4[v94] + 8);
          if (*v15 < *(v95 + 84))
          {
            v96 = *(v95 + 72);
            if (!v96)
            {
LABEL_110:
              __break(1u);
LABEL_111:
              __break(1u);
LABEL_112:
              __break(1u);
LABEL_113:
              __break(1u);
LABEL_114:
              __break(1u);
LABEL_115:
              __break(1u);
LABEL_116:
              __break(1u);
              goto LABEL_117;
            }

            if (v68 < *(v95 + 44))
            {
              v97 = *(v95 + 32);
              if (v97)
              {
                v98 = v96 + 312 * *v15;
                v99 = *(v98 + 192);
                v100 = *(v98 + 196);
                v101 = v97 + (v68 << 7);
                v102 = *(v101 + 8);
                v103 = *(v101 + 16);
                v104 = *(v101 + 24);
                v105 = *(v101 + 25);
                v107 = v101 + 28;
                v106 = *(v101 + 28);
                v108 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, v102, v103, v104, *(v107 + 4));
                LODWORD(v108[3].Kind) = v99;
                BYTE4(v108[3].Kind) = v100;
                return Interpreter.Iterator.endInflight(_:)(&type metadata for Event.AttributeValue);
              }

              goto LABEL_111;
            }

            goto LABEL_88;
          }

LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
          goto LABEL_90;
        }

LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26C328DC0;
  *&v156[0] = 0;
  *(&v156[0] + 1) = 0xE000000000000000;
  v110 = *(a1 + 11);
  v3[10] = *(a1 + 10);
  v3[11] = v110;
  v135 = a1[192];
  v111 = *(a1 + 7);
  v128 = *(a1 + 6);
  v129 = v111;
  v112 = *(a1 + 9);
  v3[8] = *(a1 + 8);
  v3[9] = v112;
  v113 = *(a1 + 3);
  v124 = *(a1 + 2);
  v125 = v113;
  v114 = *(a1 + 5);
  v126 = *(a1 + 4);
  v127 = v114;
  v115 = *(a1 + 1);
  v122 = *a1;
  v123 = v115;
  Interpreter.Iterator.updatingValue.getter();
  if (v116)
  {
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

LABEL_117:
  LODWORD(v154[0]) = HIDWORD(v15);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D69CDB0](540877088, 0xE400000000000000);
  LODWORD(v122) = v4;
  _print_unlocked<A, B>(_:_:)();
  v117 = *(&v156[0] + 1);
  v118 = *&v156[0];
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 32) = __PAIR128__(v117, v118);

  print(_:separator:terminator:)();

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t (*Event.value.modify(uint64_t *a1))()
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
  *(v2 + 32) = specialized HeterogeneousBuffer.subscript.modify(v2, 0);
  return UnsafeTree.storage.modify;
}

uint64_t T_BeginNodeUpdate.updateState(within:)(unsigned __int8 *a1, unint64_t a2)
{
  v3 = *(a1 + 22);
  v4 = *(v3 + 136);
  v5 = *(v3 + 168);
  result = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(a2, a1);
  if (a1[48])
  {
    goto LABEL_43;
  }

  v7 = *(v3 + 116);
  v8 = *a1;
  if (v8 >= v7)
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v9 = *(v3 + 104);
  if (!v9)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v10 = result;
  v11 = *(*(v9 + 8 * v8) + 8);
  if (result >= *(v11 + 84))
  {
    goto LABEL_33;
  }

  v12 = *(v11 + 72);
  if (!v12)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v13 = v12 + 312 * result;
  v14 = *(v13 + 256);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    goto LABEL_34;
  }

  *(v13 + 256) = v16;
  if (a1[48])
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v17 = *a1;
  if (v17 >= v7)
  {
    goto LABEL_35;
  }

  v18 = *(*(v9 + 8 * v17) + 8);
  if (result >= *(v18 + 84))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v19 = *(v18 + 72);
  if (!v19)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v20 = v19 + 312 * result;
  if ((*(v20 + 220) & 2) == 0)
  {
    goto LABEL_22;
  }

  if (*(v20 + 136))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v21 = *(v20 + 128);
  if (HIDWORD(v21) >= *(v18 + 124))
  {
    goto LABEL_38;
  }

  v22 = *(v18 + 112);
  if (!v22)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if ((v21 & 0x80000000) != 0)
  {
    goto LABEL_39;
  }

  v23 = *(v22 + 168 * HIDWORD(v21));
  if (v21 >= *(v23 + 16))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v24 = *(v23 + 208 * v21 + 120);
  if (v24 == -1)
  {
    goto LABEL_22;
  }

  v25 = *(v4 + 4);
  if (*(v25 + 16) <= v24)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v26 = *(v25 + 4 * v24 + 32);
  if (v26 >= *(v4 + 3))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (!*v4)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v27 = *v4 + 120 * v26;
  v28 = *v27;
  v29 = *(v27 + 16);
  v30 = *(v27 + 48);
  v70[2] = *(v27 + 32);
  v70[3] = v30;
  v70[0] = v28;
  v70[1] = v29;
  v31 = *(v27 + 64);
  v32 = *(v27 + 80);
  v33 = *(v27 + 96);
  *(v71 + 14) = *(v27 + 110);
  v70[5] = v32;
  v71[0] = v33;
  v70[4] = v31;
  v34 = *(v27 + 80);
  v67 = *(v27 + 64);
  v68 = v34;
  v69[0] = *(v27 + 96);
  *(v69 + 14) = *(v27 + 110);
  v35 = *(v27 + 16);
  v63 = *v27;
  v64 = v35;
  v36 = *(v27 + 48);
  v65 = *(v27 + 32);
  v66 = v36;
  v37 = v4[2];
  v38 = *v4;
  v72[1] = v4[1];
  v72[2] = v37;
  v39 = v4[6];
  v41 = v4[3];
  v40 = v4[4];
  v72[5] = v4[5];
  v72[6] = v39;
  v72[3] = v41;
  v72[4] = v40;
  v72[0] = v38;
  v42 = v4[5];
  v60 = v4[4];
  v61 = v42;
  v62 = v4[6];
  v43 = v4[1];
  v56 = *v4;
  v57 = v43;
  v44 = v4[3];
  v58 = v4[2];
  v59 = v44;
  outlined init with copy of PType(v70, &v74);
  outlined init with copy of Interpreter.Storage.Types(v72, &v74);
  PType.isFirstParty(within:)(&v56);
  v73[4] = v60;
  v73[5] = v61;
  v73[6] = v62;
  v73[0] = v56;
  v73[1] = v57;
  v73[2] = v58;
  v73[3] = v59;
  outlined destroy of Interpreter.Storage.Types(v73);
  v77 = v67;
  v78 = v68;
  v79[0] = v69[0];
  *(v79 + 14) = *(v69 + 14);
  v74 = v63;
  v75 = v64;
  *v76 = v65;
  *&v76[16] = v66;
  result = outlined destroy of PType(&v74);
  if (!a1[48])
  {
LABEL_22:
    v45 = *a1;
    if (v45 < *(v3 + 116))
    {
      v46 = *(v3 + 104);
      if (v46)
      {
        v47 = *(*(v46 + 8 * v45) + 8) + 32;
        specialized UnsafeArray.growToCapacity(_:)(v5);
        v48 = (a1 + 56);
        v49 = *(a1 + 72);
        v74 = *(a1 + 56);
        v75 = v49;
        *v76 = *(a1 + 88);
        *&v76[9] = *(a1 + 97);
        v50 = a1 + 88;
        v51 = a1 + 100;
        v52 = (a1 + 104);
        result = *(a1 + 29);
        while (1)
        {
          v53 = *v52;
          if (result < *v51)
          {
            v54 = (*v50 + 8 * result);
            if ((v54[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v53)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, &v74);
          }

          v50 = (v53 + 32);
          v51 = (v53 + 44);
          v52 = (v53 + 48);
          v48 = v53;
        }

        v55 = *v48;
        if (v55)
        {
          return specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(v10, *(*(v55 + 24 * *v54) + 32), 0xFFFFFFFFFFFFFFFFLL, 0);
        }

        goto LABEL_51;
      }

      goto LABEL_48;
    }

    goto LABEL_37;
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t T_ReuseEvent.update(within:)(unsigned __int8 *a1, uint64_t a2)
{
  LODWORD(v3) = specialized ReuseEventCategory.init(rawValue:)(a2);
  if (v3 != 1)
  {
    goto LABEL_49;
  }

  if (a1[48])
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v4 = *(a1 + 22);
  v3 = *a1;
  if (v3 >= *(v4 + 116))
  {
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
    if (v3 == 12)
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_52;
  }

  v5 = *(v4 + 104);
  if (!v5)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v6 = *(*(v5 + 8 * v3) + 8);
  v7 = *(v6 + 172);
  if (v7 == *(v6 + 168))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v7);
  }

  v8 = *(v6 + 160);
  if (!v8)
  {
    goto LABEL_54;
  }

  v9 = *(v6 + 172);
  v3 = v8 + 24 * v9;
  *v3 = xmmword_26C32F2B0;
  *(v3 + 16) = 14;
  LODWORD(v3) = v9 + 1;
  if (v9 == -1)
  {
    goto LABEL_42;
  }

  *(v6 + 172) = v3;
  v10 = (a1 + 56);
  v11 = *(a1 + 72);
  v80[0] = *(a1 + 56);
  v80[1] = v11;
  *v81 = *(a1 + 88);
  *&v81[9] = *(a1 + 97);
  v12 = (a1 + 72);
  v13 = a1 + 84;
  v14 = (a1 + 104);
  while (1)
  {
    v15 = *v14;
    if (*v13)
    {
      v16 = *v12;
      if ((v16[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v15)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v80);
    }

    v12 = (v15 + 16);
    v13 = (v15 + 28);
    v14 = (v15 + 48);
    v10 = v15;
  }

  v17 = *v10;
  if (!v17)
  {
    goto LABEL_65;
  }

  v18 = *(*(v17 + 24 * *v16) + 112);
  if (!v18)
  {
    goto LABEL_55;
  }

  v3 = *(*(*(v18 + 32) + 8) + 16);
  if (!v3)
  {
    goto LABEL_43;
  }

  if (a1[48])
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v3 = *a1;
  if (v3 >= *(v4 + 116))
  {
    goto LABEL_44;
  }

  v19 = *(v4 + 104);
  if (!v19)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v20 = *(*(v19 + 8 * v3) + 8);
  v71 = *(a1 + 10);
  v72 = *(a1 + 11);
  v73 = a1[192];
  v67 = *(a1 + 6);
  v68 = *(a1 + 7);
  v69 = *(a1 + 8);
  v70 = *(a1 + 9);
  v63 = *(a1 + 2);
  v64 = *(a1 + 3);
  v65 = *(a1 + 4);
  v66 = *(a1 + 5);
  v61 = *a1;
  v62 = *(a1 + 1);
  Interpreter.Iterator.updatingValue.getter();
  if (v22)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  LODWORD(v3) = v21;
  if (v21 >= *(v20 + 44))
  {
    goto LABEL_45;
  }

  v23 = *(v20 + 32);
  if (!v23)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  *(v23 + (v21 << 7) + 49) = 1;
  v24 = *a1;
  v58 = *(a1 + 8);
  v59 = *(a1 + 24);
  v60 = *(a1 + 5);
  v25 = a1[48];
  LODWORD(v57) = *(a1 + 49);
  *(&v57 + 3) = *(a1 + 13);
  v26 = *(a1 + 8);
  v27 = *(a1 + 9);
  v28 = *(a1 + 20);
  v29 = *(a1 + 21);
  v56 = *(a1 + 88);
  v30 = *(a1 + 13);
  v31 = a1[112];
  v53 = *(a1 + 113);
  v54 = *(a1 + 129);
  *v55 = *(a1 + 145);
  *&v55[15] = *(a1 + 10);
  v32 = *(a1 + 22);
  v51 = *(a1 + 23);
  v52 = a1[192];
  v74[0] = *(a1 + 7);
  v74[1] = v26;
  v74[2] = v27;
  v75 = v28;
  v76 = v29;
  v77 = *(a1 + 88);
  v33 = v74[0];
  v78 = v30;
  v34 = v27;
  v35 = v30;
  v79 = v31;
  if (!v29)
  {
    goto LABEL_26;
  }

  while ((v34[1] & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v74);
      }

      v33 = *v35;
      v34 = v35[2];
      v36 = *(v35 + 7);
      v35 = v35[6];
    }

    while (!v36);
  }

  if (!v33)
  {
    goto LABEL_66;
  }

  v37 = *(*(v33 + 24 * *v34) + 112);
  if (!v37)
  {
    goto LABEL_60;
  }

  v3 = *(*(*(v37 + 32) + 8) + 16);
  if (!v3)
  {
    goto LABEL_46;
  }

  if (v25)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  LODWORD(v3) = v24;
  if (v24 >= *(v32 + 116))
  {
    goto LABEL_47;
  }

  v38 = *(v32 + 104);
  if (!v38)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v39 = *(*(v38 + 8 * v24) + 8);
  Interpreter.Iterator.updatingValue.getter();
  if (v41)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  LODWORD(v3) = v40;
  if (v40 >= *(v39 + 44))
  {
    goto LABEL_48;
  }

  v42 = *(v39 + 32);
  if (!v42)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v43 = v42 + (v40 << 7);
  v44 = *(v43 + 8);
  v45 = *(v43 + 16);
  v46 = *(v43 + 24);
  v47 = *(v43 + 25);
  v49 = v43 + 28;
  v48 = *(v43 + 28);
  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v44, v45, v46, *(v49 + 4));
  if (!result)
  {
LABEL_67:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t T_ReuseInternal.update(within:)(unsigned __int8 *a1, unint64_t a2)
{
  LODWORD(v3) = specialized ReuseEventCategory.init(rawValue:)(HIDWORD(a2));
  if (v3 != 1)
  {
    goto LABEL_49;
  }

  if (a1[48])
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v4 = *(a1 + 22);
  v3 = *a1;
  if (v3 >= *(v4 + 116))
  {
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
    if (v3 == 12)
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_52;
  }

  v5 = *(v4 + 104);
  if (!v5)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v6 = *(*(v5 + 8 * v3) + 8);
  v7 = *(v6 + 172);
  if (v7 == *(v6 + 168))
  {
    specialized UnsafeArray.growToCapacity(_:)(2 * v7);
  }

  v8 = *(v6 + 160);
  if (!v8)
  {
    goto LABEL_54;
  }

  v9 = *(v6 + 172);
  v3 = v8 + 24 * v9;
  *v3 = xmmword_26C32F2C0;
  *(v3 + 16) = 14;
  LODWORD(v3) = v9 + 1;
  if (v9 == -1)
  {
    goto LABEL_42;
  }

  *(v6 + 172) = v3;
  v10 = (a1 + 56);
  v11 = *(a1 + 72);
  v80[0] = *(a1 + 56);
  v80[1] = v11;
  *v81 = *(a1 + 88);
  *&v81[9] = *(a1 + 97);
  v12 = (a1 + 72);
  v13 = a1 + 84;
  v14 = (a1 + 104);
  while (1)
  {
    v15 = *v14;
    if (*v13)
    {
      v16 = *v12;
      if ((v16[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v15)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v80);
    }

    v12 = (v15 + 16);
    v13 = (v15 + 28);
    v14 = (v15 + 48);
    v10 = v15;
  }

  v17 = *v10;
  if (!v17)
  {
    goto LABEL_65;
  }

  v18 = *(*(v17 + 24 * *v16) + 112);
  if (!v18)
  {
    goto LABEL_55;
  }

  v3 = *(*(*(v18 + 32) + 8) + 16);
  if (!v3)
  {
    goto LABEL_43;
  }

  if (a1[48])
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v3 = *a1;
  if (v3 >= *(v4 + 116))
  {
    goto LABEL_44;
  }

  v19 = *(v4 + 104);
  if (!v19)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v20 = *(*(v19 + 8 * v3) + 8);
  v71 = *(a1 + 10);
  v72 = *(a1 + 11);
  v73 = a1[192];
  v67 = *(a1 + 6);
  v68 = *(a1 + 7);
  v69 = *(a1 + 8);
  v70 = *(a1 + 9);
  v63 = *(a1 + 2);
  v64 = *(a1 + 3);
  v65 = *(a1 + 4);
  v66 = *(a1 + 5);
  v61 = *a1;
  v62 = *(a1 + 1);
  Interpreter.Iterator.updatingValue.getter();
  if (v22)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  LODWORD(v3) = v21;
  if (v21 >= *(v20 + 44))
  {
    goto LABEL_45;
  }

  v23 = *(v20 + 32);
  if (!v23)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  *(v23 + (v21 << 7) + 49) = 1;
  v24 = *a1;
  v58 = *(a1 + 8);
  v59 = *(a1 + 24);
  v60 = *(a1 + 5);
  v25 = a1[48];
  LODWORD(v57) = *(a1 + 49);
  *(&v57 + 3) = *(a1 + 13);
  v26 = *(a1 + 8);
  v27 = *(a1 + 9);
  v28 = *(a1 + 20);
  v29 = *(a1 + 21);
  v56 = *(a1 + 88);
  v30 = *(a1 + 13);
  v31 = a1[112];
  v53 = *(a1 + 113);
  v54 = *(a1 + 129);
  *v55 = *(a1 + 145);
  *&v55[15] = *(a1 + 10);
  v32 = *(a1 + 22);
  v51 = *(a1 + 23);
  v52 = a1[192];
  v74[0] = *(a1 + 7);
  v74[1] = v26;
  v74[2] = v27;
  v75 = v28;
  v76 = v29;
  v77 = *(a1 + 88);
  v33 = v74[0];
  v78 = v30;
  v34 = v27;
  v35 = v30;
  v79 = v31;
  if (!v29)
  {
    goto LABEL_26;
  }

  while ((v34[1] & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v74);
      }

      v33 = *v35;
      v34 = v35[2];
      v36 = *(v35 + 7);
      v35 = v35[6];
    }

    while (!v36);
  }

  if (!v33)
  {
    goto LABEL_66;
  }

  v37 = *(*(v33 + 24 * *v34) + 112);
  if (!v37)
  {
    goto LABEL_60;
  }

  v3 = *(*(*(v37 + 32) + 8) + 16);
  if (!v3)
  {
    goto LABEL_46;
  }

  if (v25)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  LODWORD(v3) = v24;
  if (v24 >= *(v32 + 116))
  {
    goto LABEL_47;
  }

  v38 = *(v32 + 104);
  if (!v38)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v39 = *(*(v38 + 8 * v24) + 8);
  Interpreter.Iterator.updatingValue.getter();
  if (v41)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  LODWORD(v3) = v40;
  if (v40 >= *(v39 + 44))
  {
    goto LABEL_48;
  }

  v42 = *(v39 + 32);
  if (!v42)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v43 = v42 + (v40 << 7);
  v44 = *(v43 + 8);
  v45 = *(v43 + 16);
  v46 = *(v43 + 24);
  v47 = *(v43 + 25);
  v49 = v43 + 28;
  v48 = *(v43 + 28);
  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v44, v45, v46, *(v49 + 4));
  if (!result)
  {
LABEL_67:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}
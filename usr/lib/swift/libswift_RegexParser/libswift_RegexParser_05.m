uint64_t AST.Quantification.Amount._dumpBase.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 45) | (*(v0 + 47) << 16);
  v4 = v3 >> 21;
  if (v3 >> 21 <= 1)
  {
    if (v4)
    {
      v14 = 0x3C65726F4D724F6ELL;
    }

    else
    {
      v14 = 0x3C796C7463617865;
    }

    v28 = v14;
    if ((v2 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

  if (v4 == 2)
  {
    v28 = 0x3C4E6F747075;
    if ((v2 & 1) == 0)
    {
LABEL_12:
      v27 = *v0;
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v7 = v15;
LABEL_30:
      MEMORY[0x1C68E0BF0](v13, v7);

      MEMORY[0x1C68E0BF0](62, 0xE100000000000000);
      return v28;
    }

LABEL_29:
    v13 = 0x64696C61766E693CLL;
    v7 = 0xE90000000000003ELL;
    goto LABEL_30;
  }

  v5 = v0[4];
  v6 = *(v0 + 40);
  if (v4 == 3)
  {
    v7 = 0xE90000000000003ELL;
    v8 = 0x64696C61766E693CLL;
    v28 = 0x3C65676E61722ELL;
    v9 = 0x64696C61766E693CLL;
    v10 = 0xE90000000000003ELL;
    if ((v2 & 1) == 0)
    {
      v26 = *v0;
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = v11;
    }

    MEMORY[0x1C68E0BF0](v9, v10);

    MEMORY[0x1C68E0BF0](3026478, 0xE300000000000000);
    if ((v6 & 1) == 0)
    {
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v7 = v12;
    }

    v13 = v8;
    goto LABEL_30;
  }

  v16 = *(v0 + 41) | ((*&v3 & 0xFFFFFFLL) << 32);
  v17 = v0[6];
  v18 = v0[7];
  v19 = v6 | (v16 << 8);
  v20 = (*(v0 + 9) << 8) | ((*(v0 + 13) | (*(v0 + 15) << 16)) << 40) | v2;
  v21 = v0[3] | v0[2];
  if (v19 == 0x8000000000000000 && (v21 | v1 | v5 | v17 | v18 | v20) == 0)
  {
    return 0x6F4D724F6F72657ALL;
  }

  if (v21 | v20 | v5 | v17 | v18)
  {
    v23 = 0;
  }

  else
  {
    v23 = v1 == 1;
  }

  if (v23 && v19 == 0x8000000000000000)
  {
    return 0x726F4D724F656E6FLL;
  }

  else
  {
    return 0x6E4F724F6F72657ALL;
  }
}

uint64_t AST.Quantification.Kind._printBase.getter()
{
  v1 = 63;
  if (*v0 != 1)
  {
    v1 = 43;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

uint64_t AST.Quantification.Kind._dumpBase.getter()
{
  v1 = 0x6E617463756C6572;
  if (*v0 != 1)
  {
    v1 = 0x6973736573736F70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265676165;
  }
}

uint64_t protocol witness for _ASTPrintable._dumpBase.getter in conformance AST.Quantification.Kind()
{
  v1 = 0x6E617463756C6572;
  if (*v0 != 1)
  {
    v1 = 0x6973736573736F70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265676165;
  }
}

uint64_t AST.Quantification._printBase.getter()
{
  v1 = *(v0 + 80);
  v2 = AST.Quantification.Amount._canonicalBase.getter();
  MEMORY[0x1C68E0BF0](v2);

  v3 = 63;
  if (v1 != 1)
  {
    v3 = 43;
  }

  if (v1)
  {
    v4 = v3;
  }

  else
  {
    v4 = v1;
  }

  if (v1)
  {
    v5 = 0xE100000000000000;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  MEMORY[0x1C68E0BF0](v4, v5);

  return 0x5F746E617571;
}

uint64_t AST.Quantification._dumpBase.getter()
{
  v1 = *(v0 + 80);
  v2 = AST.Quantification.Amount._dumpBase.getter();
  MEMORY[0x1C68E0BF0](v2);

  MEMORY[0x1C68E0BF0](95, 0xE100000000000000);
  v3 = 0xE900000000000074;
  v4 = 0x6E617463756C6572;
  if (v1 != 1)
  {
    v4 = 0x6973736573736F70;
    v3 = 0xEA00000000006576;
  }

  if (v1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7265676165;
  }

  if (v1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1C68E0BF0](v5, v6);

  return 0x5F746E617571;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AST.Quantification()
{
  v8 = v0[6];
  v9 = v0[7];
  v10 = *(v0 + 16);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  return specialized _ASTPrintable._dump()();
}

unint64_t AST.CustomCharacterClass._dumpBase.getter()
{
  v1 = 1702195828;
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v18 = 0;
  v19 = 0xE000000000000000;
  _StringGuts.grow(_:)(38);

  v24 = 0xD00000000000001FLL;
  v25 = 0x80000001C0C84CB0;
  if (v2 == 1)
  {

    v8 = 0xE400000000000000;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v1 = 0x65736C6166;
      v8 = 0xE500000000000000;
    }
  }

  MEMORY[0x1C68E0BF0](v1, v8);

  MEMORY[0x1C68E0BF0](8236, 0xE200000000000000);
  LOBYTE(v18) = v2;
  v19 = v3;
  v20 = v4;
  v21 = v5;
  v22 = v6;
  v23 = v7;
  AST.CustomCharacterClass.strippingTriviaShallow.getter(v16);
  v10 = v17;
  v11 = type metadata accessor for AST.CustomCharacterClass.Member(0);
  v12 = MEMORY[0x1C68E0D70](v10, v11);
  v14 = v13;

  MEMORY[0x1C68E0BF0](v12, v14);

  MEMORY[0x1C68E0BF0](41, 0xE100000000000000);
  return v24;
}

__n128 protocol witness for _ASTNode.location.getter in conformance AST.CustomCharacterClass@<Q0>(__n128 *a1@<X8>)
{
  result = v1[2];
  *a1 = result;
  return result;
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance AST.CustomCharacterClass()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 3);
  v5 = *(v0 + 2);
  return AST.CustomCharacterClass._dumpBase.getter();
}

uint64_t AST.CustomCharacterClass.Member._dumpBase.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AST.CustomCharacterClass.Range(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v77[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for AST.Atom(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v77[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for AST.CustomCharacterClass.Member(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v80 = &v77[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v79 = &v77[-v20];
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = &v77[-v23];
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v85 = &v77[-v27];
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v31 = &v77[-v30];
  v33 = MEMORY[0x1EEE9AC00](v29, v32);
  v35 = &v77[-v34];
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = &v77[-v37];
  outlined init with copy of AST.CustomCharacterClass.Member(v1, &v77[-v37], type metadata accessor for AST.CustomCharacterClass.Member);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        outlined init with take of AST.Atom.Kind(v38, v6, type metadata accessor for AST.CustomCharacterClass.Range);
        v86 = AST.Atom._dumpBase.getter();
        *&v87 = v40;
        MEMORY[0x1C68E0BF0](45, 0xE100000000000000);
        v41 = &v6[*(v2 + 24)];
        v42 = AST.Atom._dumpBase.getter();
        MEMORY[0x1C68E0BF0](v42);

        v43 = v86;
        outlined destroy of AST.CustomCharacterClass.Member(v6, type metadata accessor for AST.CustomCharacterClass.Range);
      }

      else
      {
        outlined init with take of AST.Atom.Kind(v38, v11, type metadata accessor for AST.Atom);
        v43 = AST.Atom._dumpBase.getter();
        outlined destroy of AST.CustomCharacterClass.Member(v11, type metadata accessor for AST.Atom);
      }
    }

    else
    {
      v44 = *(v38 + 3);
      LOBYTE(v86) = *v38;
      v87 = *(v38 + 8);
      v88 = v44;
      v89 = *(v38 + 2);
      v43 = AST.CustomCharacterClass._dumpBase.getter();
    }

    return v43;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v45 = *v38;
    v46 = *(v38 + 1);
    v86 = 0x222065746F7571;
    *&v87 = 0xE700000000000000;
    MEMORY[0x1C68E0BF0](v45, v46);
    MEMORY[0x1C68E0BF0](34, 0xE100000000000000);
LABEL_36:

    return v86;
  }

  if (EnumCaseMultiPayload == 4)
  {
    outlined destroy of AST.CustomCharacterClass.Member(v38, type metadata accessor for AST.CustomCharacterClass.Member);
    return 0;
  }

  v81 = v24;
  v47 = *v38;
  v78 = v38[8];
  v84 = *(v38 + 4);
  v86 = 0;
  *&v87 = 0xE000000000000000;
  result = MEMORY[0x1C68E0BF0](2125935, 0xE300000000000000);
  v49 = *(v47 + 16);
  v82 = v12;
  v83 = v49;
  if (v49)
  {
    v50 = 0;
    v51 = MEMORY[0x1E69E7CC0];
    while (v50 < *(v47 + 16))
    {
      v52 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v53 = *(v13 + 72);
      outlined init with copy of AST.CustomCharacterClass.Member(v47 + v52 + v53 * v50, v35, type metadata accessor for AST.CustomCharacterClass.Member);
      outlined init with copy of AST.CustomCharacterClass.Member(v35, v31, type metadata accessor for AST.CustomCharacterClass.Member);
      v54 = swift_getEnumCaseMultiPayload();
      outlined destroy of AST.CustomCharacterClass.Member(v31, type metadata accessor for AST.CustomCharacterClass.Member);
      if (v54 == 4)
      {
        result = outlined destroy of AST.CustomCharacterClass.Member(v35, type metadata accessor for AST.CustomCharacterClass.Member);
      }

      else
      {
        outlined init with take of AST.Atom.Kind(v35, v85, type metadata accessor for AST.CustomCharacterClass.Member);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v90 = v51;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v51 + 16) + 1, 1);
          v51 = v90;
        }

        v57 = *(v51 + 16);
        v56 = *(v51 + 24);
        if (v57 >= v56 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v56 > 1, v57 + 1, 1);
          v51 = v90;
        }

        *(v51 + 16) = v57 + 1;
        result = outlined init with take of AST.Atom.Kind(v85, v51 + v52 + v57 * v53, type metadata accessor for AST.CustomCharacterClass.Member);
        v12 = v82;
      }

      if (v83 == ++v50)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_39;
  }

  v51 = MEMORY[0x1E69E7CC0];
LABEL_23:

  v58 = MEMORY[0x1C68E0D70](v51, v12);
  v60 = v59;

  MEMORY[0x1C68E0BF0](v58, v60);

  MEMORY[0x1C68E0BF0](32, 0xE100000000000000);
  LOBYTE(v90) = v78;
  _print_unlocked<A, B>(_:_:)();
  result = MEMORY[0x1C68E0BF0](32, 0xE100000000000000);
  v61 = v84;
  v85 = *(v84 + 16);
  if (!v85)
  {
    v63 = MEMORY[0x1E69E7CC0];
LABEL_35:

    v74 = MEMORY[0x1C68E0D70](v63, v12);
    v76 = v75;

    MEMORY[0x1C68E0BF0](v74, v76);
    goto LABEL_36;
  }

  v62 = 0;
  v63 = MEMORY[0x1E69E7CC0];
  v65 = v79;
  v64 = v80;
  while (v62 < *(v61 + 16))
  {
    v66 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v67 = *(v13 + 72);
    v68 = v61 + v66 + v67 * v62;
    v69 = v81;
    outlined init with copy of AST.CustomCharacterClass.Member(v68, v81, type metadata accessor for AST.CustomCharacterClass.Member);
    outlined init with copy of AST.CustomCharacterClass.Member(v69, v65, type metadata accessor for AST.CustomCharacterClass.Member);
    v70 = swift_getEnumCaseMultiPayload();
    outlined destroy of AST.CustomCharacterClass.Member(v65, type metadata accessor for AST.CustomCharacterClass.Member);
    if (v70 == 4)
    {
      result = outlined destroy of AST.CustomCharacterClass.Member(v69, type metadata accessor for AST.CustomCharacterClass.Member);
      v61 = v84;
    }

    else
    {
      outlined init with take of AST.Atom.Kind(v69, v64, type metadata accessor for AST.CustomCharacterClass.Member);
      v71 = swift_isUniquelyReferenced_nonNull_native();
      v90 = v63;
      if ((v71 & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v63 + 16) + 1, 1);
        v63 = v90;
      }

      v61 = v84;
      v73 = *(v63 + 16);
      v72 = *(v63 + 24);
      if (v73 >= v72 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v72 > 1, v73 + 1, 1);
        v63 = v90;
      }

      *(v63 + 16) = v73 + 1;
      result = outlined init with take of AST.Atom.Kind(v64, v63 + v66 + v73 * v67, type metadata accessor for AST.CustomCharacterClass.Member);
      v12 = v82;
    }

    if (v85 == ++v62)
    {
      goto LABEL_35;
    }
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t AST.CustomCharacterClass.Range._dumpBase.getter()
{
  v4 = AST.Atom._dumpBase.getter();
  MEMORY[0x1C68E0BF0](45, 0xE100000000000000);
  v1 = v0 + *(type metadata accessor for AST.CustomCharacterClass.Range(0) + 24);
  v2 = AST.Atom._dumpBase.getter();
  MEMORY[0x1C68E0BF0](v2);

  return v4;
}

uint64_t protocol witness for _ASTPrintable._dumpBase.getter in conformance AST.CustomCharacterClass.Range(uint64_t a1)
{
  v6 = AST.Atom._dumpBase.getter();
  MEMORY[0x1C68E0BF0](45, 0xE100000000000000);
  v3 = v1 + *(a1 + 24);
  v4 = AST.Atom._dumpBase.getter();
  MEMORY[0x1C68E0BF0](v4);

  return v6;
}

uint64_t AST.Atom.BacktrackingDirective._dumpBase.getter()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 4);
  v4 = *v0;
  _print_unlocked<A, B>(_:_:)();
  result = 0;
  if (v2)
  {
    MEMORY[0x1C68E0BF0](v1, v2);
    MEMORY[0x1C68E0BF0](8250, 0xE200000000000000);

    return 0;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AST.Atom.BacktrackingDirective()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 24);
  v5 = *(v0 + 40);
  return AST.Atom.BacktrackingDirective._dumpBase.getter();
}

uint64_t AST.Group.BalancedCapture._dumpBase.getter()
{
  v1 = v0[1];
  v2 = v0[6];
  v3 = v0[7];
  if (v1)
  {
    v4 = *v0;
  }

  else
  {
    v4 = 0;
  }

  if (v1)
  {
    v5 = v0[1];
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  MEMORY[0x1C68E0BF0](v4, v5);

  MEMORY[0x1C68E0BF0](45, 0xE100000000000000);
  MEMORY[0x1C68E0BF0](v2, v3);
  return 0;
}

uint64_t protocol witness for _ASTPrintable._dumpBase.getter in conformance AST.Group.BalancedCapture()
{
  v1 = v0[1];
  v2 = v0[6];
  v3 = v0[7];
  if (v1)
  {
    v4 = *v0;
  }

  else
  {
    v4 = 0;
  }

  if (v1)
  {
    v5 = v0[1];
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  MEMORY[0x1C68E0BF0](v4, v5);

  MEMORY[0x1C68E0BF0](45, 0xE100000000000000);
  MEMORY[0x1C68E0BF0](v2, v3);
  return 0;
}

uint64_t AST.AbsentFunction.Kind._dumpBase.getter()
{
  v1 = (*(v0 + 24) >> 1) & 3;
  v2 = 0x7265746165706572;
  v3 = 0x726570706F7473;
  if (v1 != 2)
  {
    v3 = 0x72657261656C63;
  }

  if (v1)
  {
    v2 = 0x6973736572707865;
  }

  if (((*(v0 + 24) >> 1) & 3u) <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t AST.GlobalMatchingOption.Kind._dumpBase.getter()
{
  v2 = *v0;
  v3 = v0[1];
  return AST.GlobalMatchingOption.Kind._canonicalBase.getter();
}

uint64_t AST.GlobalMatchingOption.Kind._canonicalBase.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 >> 61;
  if ((v2 >> 61) <= 2)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        v18 = 0x45485F54494D494CLL;
        if ((v2 & 1) == 0)
        {
LABEL_5:
          v17 = *v0;
          v4 = dispatch thunk of CustomStringConvertible.description.getter();
          v6 = v5;
LABEL_26:
          MEMORY[0x1C68E0BF0](v4, v6);

          return v18;
        }

LABEL_25:
        v4 = 0x7265626D756E233CLL;
        v6 = 0xEA00000000003E23;
        goto LABEL_26;
      }

      v8 = 0x414D5F54494D494CLL;
    }

    else
    {
      v8 = 0x45445F54494D494CLL;
    }

    v18 = v8;
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

  if (v3 == 3)
  {
    v9 = *v0;
    v10 = 21059;
    v11 = 0x464C5243594E41;
    v12 = 5852737;
    if (v9 != 4)
    {
      v12 = 5002574;
    }

    if (v9 != 3)
    {
      v11 = v12;
    }

    v13 = 17996;
    if (v9 != 1)
    {
      v13 = 1179406915;
    }

    if (*v0)
    {
      v10 = v13;
    }

    if (*v0 <= 2u)
    {
      return v10;
    }

    else
    {
      return v11;
    }
  }

  else if (v3 == 4)
  {
    if (v1)
    {
      return 0x43494E555F525342;
    }

    else
    {
      return 0x43594E415F525342;
    }
  }

  else if (v2 == 0xA000000000000000 && (v0[2] | v0[3] | v1) == 0)
  {
    return 0x5954504D45544F4ELL;
  }

  else if (v2 == 0xA000000000000000 && v1 == 1 && *(v0 + 1) == 0)
  {
    return 0xD000000000000010;
  }

  else if (v2 == 0xA000000000000000 && v1 == 2 && *(v0 + 1) == 0)
  {
    return 0x5F4F5455415F4F4ELL;
  }

  else if (v2 == 0xA000000000000000 && v1 == 3 && *(v0 + 1) == 0)
  {
    return 0xD000000000000011;
  }

  else if (v2 == 0xA000000000000000 && v1 == 4 && *(v0 + 1) == 0)
  {
    return 0x54494A5F4F4ELL;
  }

  else if (v2 == 0xA000000000000000 && v1 == 5 && *(v0 + 1) == 0)
  {
    return 0x54524154535F4F4ELL;
  }

  else if (*(v0 + 1) == 0 && v1 == 6 && v2 == 0xA000000000000000)
  {
    return 4609109;
  }

  else
  {
    return 5260117;
  }
}

uint64_t protocol witness for _ASTPrintable._dumpBase.getter in conformance AST.GlobalMatchingOption.Kind()
{
  v2 = *v0;
  v3 = v0[1];
  return AST.GlobalMatchingOption.Kind._canonicalBase.getter();
}

uint64_t AST.GlobalMatchingOption._dumpBase.getter()
{
  v2 = *v0;
  v3 = v0[1];
  return AST.GlobalMatchingOption.Kind._canonicalBase.getter();
}

unint64_t AST.GlobalMatchingOptionSequence._dumpBase.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(32);

  v2 = MEMORY[0x1C68E0D70](v1, &type metadata for AST.GlobalMatchingOption);
  MEMORY[0x1C68E0BF0](v2);

  MEMORY[0x1C68E0BF0](62, 0xE100000000000000);
  return 0xD00000000000001DLL;
}

unint64_t protocol witness for _ASTPrintable._dumpBase.getter in conformance AST.GlobalMatchingOptionSequence()
{
  v1 = *v0;
  _StringGuts.grow(_:)(32);

  v2 = MEMORY[0x1C68E0D70](v1, &type metadata for AST.GlobalMatchingOption);
  MEMORY[0x1C68E0BF0](v2);

  MEMORY[0x1C68E0BF0](62, 0xE100000000000000);
  return 0xD00000000000001DLL;
}

uint64_t PrettyPrinter.maxTopDownLevels.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t PrettyPrinter.maxTopDownLevels.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t PrettyPrinter.minBottomUpLevels.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t PrettyPrinter.minBottomUpLevels.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t PrettyPrinter.inlineMatchingOptions.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

void __swiftcall PrettyPrinter.init(maxTopDownLevels:minBottomUpLevels:)(_RegexParser::PrettyPrinter *__return_ptr retstr, Swift::Int_optional maxTopDownLevels, Swift::Int_optional minBottomUpLevels)
{
  *&retstr->indentWidth = xmmword_1C0C7E320;
  retstr->result._object = 0xE000000000000000;
  retstr->startOfLine = 1;
  retstr->indentLevel = 0;
  retstr->quantificationBehavior = _RegexParser_AST_Quantification_Kind_eager;
  retstr->inlineMatchingOptions._rawValue = MEMORY[0x1E69E7CC0];
  retstr->maxTopDownLevels.value = maxTopDownLevels.value;
  retstr->maxTopDownLevels.is_nil = maxTopDownLevels.is_nil;
  retstr->minBottomUpLevels.value = minBottomUpLevels.value;
  retstr->minBottomUpLevels.is_nil = minBottomUpLevels.is_nil;
}

Swift::Void __swiftcall PrettyPrinter.indent()()
{
  if (*(v0 + 56) == 1)
  {
    v1 = *(v0 + 64);
    v2 = *(v0 + 32);
    if ((v1 * v2) >> 64 == (v1 * v2) >> 63)
    {
      v3._countAndFlagsBits = 32;
      v3._object = 0xE100000000000000;
      countAndFlagsBits = String.init(repeating:count:)(v3, v1 * v2)._countAndFlagsBits;
      MEMORY[0x1C68E0BF0](countAndFlagsBits);

      *(v0 + 56) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t PrettyPrinter.printLine(_:)(uint64_t result)
{
  v2 = result;
  if (*(v1 + 56) == 1)
  {
    v3 = *(v1 + 64);
    v4 = *(v1 + 32);
    if ((v3 * v4) >> 64 != (v3 * v4) >> 63)
    {
      __break(1u);
      return result;
    }

    v5._countAndFlagsBits = 32;
    v5._object = 0xE100000000000000;
    countAndFlagsBits = String.init(repeating:count:)(v5, v3 * v4)._countAndFlagsBits;
    MEMORY[0x1C68E0BF0](countAndFlagsBits);

    *(v1 + 56) = 0;
  }

  v7 = v2(result);
  if (v8)
  {
    v9 = v8;
    do
    {
      MEMORY[0x1C68E0BF0](v7, v9);

      v7 = v2(v10);
      v9 = v11;
    }

    while (v11);
  }

  result = MEMORY[0x1C68E0BF0](10, 0xE100000000000000);
  *(v1 + 56) = 1;
  return result;
}

uint64_t (*PrettyPrinter.printIndented(_:)(uint64_t (*result)(uint64_t)))(uint64_t)
{
  v2 = *(v1 + 64);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 64) = v4;
    result = result(v1);
    v5 = *(v1 + 64);
    v3 = __OFSUB__(v5, 1);
    v6 = v5 - 1;
    if (!v3)
    {
      *(v1 + 64) = v6;
      return result;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall PrettyPrinter.pushMatchingOptions(_:isAdded:)(Swift::OpaquePointer _, Swift::Bool isAdded)
{
  v6 = *(v3 + 64);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v2 = isAdded;
    rawValue = _._rawValue;
    *(v3 + 64) = v8;
    v5 = *(v3 + 80);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_3;
    }
  }

  v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
LABEL_3:
  v10 = v5[2];
  v9 = v5[3];
  if (v10 >= v9 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v5);
  }

  v5[2] = v10 + 1;
  v11 = &v5[2 * v10];
  v11[4] = rawValue;
  *(v11 + 40) = v2;
  *(v3 + 80) = v5;
}

Swift::tuple_OpaquePointer_Bool __swiftcall PrettyPrinter.popMatchingOptions()()
{
  v2 = *(v1 + 64);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(v1 + 64) = v4;
  v0 = *(v1 + 80);
  if (!v0[2])
  {
LABEL_7:
    __break(1u);
LABEL_8:
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
    v0 = isUniquelyReferenced_nonNull_native;
    v8 = *(isUniquelyReferenced_nonNull_native + 16);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(v1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_8;
  }

  v8 = v0[2];
  if (!v8)
  {
    goto LABEL_9;
  }

LABEL_5:
  v9 = v8 - 1;
  v10 = &v0[2 * v9];
  isUniquelyReferenced_nonNull_native = v10[4];
  v7 = *(v10 + 40);
  v0[2] = v9;
  *(v1 + 80) = v0;
LABEL_10:
  result._0._rawValue = isUniquelyReferenced_nonNull_native;
  result._1 = v7;
  return result;
}

Swift::String __swiftcall AST.renderAsCanonical(showDelimiters:terminateLine:)(Swift::Bool showDelimiters, Swift::Bool terminateLine)
{
  v3 = *(v2 + 2);
  v4 = *(v2 + 24);
  *&v8 = 0;
  BYTE8(v8) = 1;
  *&v9 = 0;
  BYTE8(v9) = 1;
  BYTE8(v10) = 1;
  *&v11 = 0;
  BYTE8(v11) = 0;
  v12 = MEMORY[0x1E69E7CC0];
  v13 = *v2;
  *&v14 = v3;
  BYTE8(v14) = v4;
  PrettyPrinter.printAsCanonical(_:delimiters:terminateLine:)(&v13, showDelimiters, terminateLine);
  *&v10 = 0xE000000000000000;
  v18 = v12;
  v13 = v8;
  v14 = v9;
  v15 = 2uLL;
  v16 = v10;
  v17 = v11;
  outlined destroy of PrettyPrinter(&v13);
  v5 = 0;
  v6 = 0xE000000000000000;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t *PrettyPrinter.printAsCanonical(_:delimiters:terminateLine:)(uint64_t *result, char a2, char a3)
{
  v6 = *result;
  v7 = result[1];
  if (*(v3 + 56) == 1)
  {
    v8 = *(v3 + 64);
    v9 = *(v3 + 32);
    if ((v8 * v9) >> 64 != (v8 * v9) >> 63)
    {
      __break(1u);
      return result;
    }

    v10._countAndFlagsBits = 32;
    v10._object = 0xE100000000000000;
    countAndFlagsBits = String.init(repeating:count:)(v10, v8 * v9)._countAndFlagsBits;
    MEMORY[0x1C68E0BF0](countAndFlagsBits);

    *(v3 + 56) = 0;
  }

  if (a2)
  {
    MEMORY[0x1C68E0BF0](12071, 0xE200000000000000);
  }

  if (v7)
  {
    v12 = v7;
    PrettyPrinter.outputAsCanonical(_:)(&v12);
  }

  v12 = v6;

  PrettyPrinter.outputAsCanonical(_:)(&v12);

  if (a2)
  {
    result = MEMORY[0x1C68E0BF0](10031, 0xE200000000000000);
  }

  if (a3)
  {
    result = MEMORY[0x1C68E0BF0](10, 0xE100000000000000);
    *(v3 + 56) = 1;
  }

  return result;
}

Swift::String __swiftcall AST.Node.renderAsCanonical(showDelimiters:terminateLine:)(Swift::Bool showDelimiters, Swift::Bool terminateLine)
{
  v5 = *v2;

  *&v9 = 0;
  BYTE8(v9) = 1;
  *&v10 = 0;
  BYTE8(v10) = 1;
  BYTE8(v11) = 1;
  *&v12 = 0;
  BYTE8(v12) = 0;
  v13 = MEMORY[0x1E69E7CC0];
  v14 = v5;
  *&v15 = MEMORY[0x1E69E7CC0];
  BYTE8(v15) = 0;
  PrettyPrinter.printAsCanonical(_:delimiters:terminateLine:)(&v14, showDelimiters, terminateLine);
  *&v11 = 0xE000000000000000;
  v19 = v13;
  v14 = v9;
  v15 = v10;
  v16 = 2uLL;
  v17 = v11;
  v18 = v12;
  outlined destroy of PrettyPrinter(&v14);

  v6 = 0;
  v7 = 0xE000000000000000;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

Swift::Void __swiftcall PrettyPrinter.outputAsCanonical(_:)(_RegexParser::AST::GlobalMatchingOptionSequence a1)
{
  v1 = *(*a1.options._rawValue + 16);
  if (v1)
  {
    v2 = (*a1.options._rawValue + 48);
    do
    {
      v4 = *(v2 - 1);
      v5 = *v2;
      v3 = AST.GlobalMatchingOption.Kind._canonicalBase.getter();
      MEMORY[0x1C68E0BF0](v3);

      MEMORY[0x1C68E0BF0](41, 0xE100000000000000);
      MEMORY[0x1C68E0BF0](10792, 0xE200000000000000);

      v2 += 3;
      --v1;
    }

    while (v1);
  }
}

uint64_t PrettyPrinter.outputAsCanonical(_:)(uint64_t *a1)
{
  v2 = type metadata accessor for AST.Atom(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *a1 >> 60;
  if (v9 <= 5)
  {
    if (v9 <= 2)
    {
      if (v9)
      {
        v10 = v8 & 0xFFFFFFFFFFFFFFFLL;
        if (v9 != 1)
        {
          v41 = *(v10 + 64);
          v42 = *(v10 + 80);
          v43 = *(v10 + 96);
          v44 = *(v10 + 120);
          *&v79 = *(v10 + 112);
          v76 = v41;
          v77 = v42;
          v78 = v43;
          v45 = *(v10 + 32);
          *v74 = *(v10 + 16);
          *&v74[16] = v45;
          v46 = *(v10 + 64);
          v75 = *(v10 + 48);
          v58 = *(v10 + 48);
          v59 = v46;
          v60 = *(v10 + 80);
          LOBYTE(v61) = *(v10 + 96);
          v47 = *(v10 + 32);
          v56 = *(v10 + 16);
          v57 = v47;
          outlined init with copy of Source.Located<AST.Group.Kind>(v74, &v65);

          v48 = AST.Group.Kind._canonicalBase.getter();
          MEMORY[0x1C68E0BF0](v48);
          sub_1C0C7CB20(v74);

          *&v65 = v44;
          PrettyPrinter.outputAsCanonical(_:)(&v65);

          return MEMORY[0x1C68E0BF0](41, 0xE100000000000000);
        }

        v11 = *(v10 + 16);

        specialized Sequence.forEach(_:)(v12);
      }

      else
      {
        v26 = *(v8 + 16);
        v27 = v26[2];
        if (!v27)
        {
          return result;
        }

        v28 = *(v8 + 16);

        *v74 = v26[4];

        PrettyPrinter.outputAsCanonical(_:)(v74);

        v29 = v27 - 1;
        if (v29)
        {
          v30 = v26 + 5;
          do
          {
            MEMORY[0x1C68E0BF0](124, 0xE100000000000000);
            v31 = *v30++;
            *v74 = v31;

            PrettyPrinter.outputAsCanonical(_:)(v74);

            --v29;
          }

          while (v29);
        }
      }

      goto LABEL_34;
    }

    v17 = v8 & 0xFFFFFFFFFFFFFFFLL;
    if (v9 == 3)
    {
      v32 = *(v17 + 128);
      v70 = *(v17 + 112);
      v71 = v32;
      v33 = *(v17 + 160);
      v72 = *(v17 + 144);
      v73 = v33;
      v34 = *(v17 + 48);
      v35 = *(v17 + 80);
      v36 = *(v17 + 96);
      v67 = *(v17 + 64);
      v68 = v35;
      v69 = v36;
      v65 = *(v17 + 32);
      v66 = v34;
      v37 = *(v17 + 176);
      v38 = *(v17 + 208);
      outlined init with copy of AST.Conditional.Condition(&v65, v74);

      MEMORY[0x1C68E0BF0](40, 0xE100000000000000);
      v62 = v71;
      v63 = v72;
      v64 = v73;
      v58 = v67;
      v59 = v68;
      v60 = v69;
      v61 = v70;
      v56 = v65;
      v57 = v66;
      PrettyPrinter.outputAsCanonical(_:)(&v56);
      v79 = v62;
      v80 = v63;
      v81 = v64;
      v75 = v58;
      v76 = v59;
      v77 = v60;
      v78 = v61;
      *v74 = v56;
      *&v74[16] = v57;
      sub_1C0C61070(v74);
      *&v56 = v37;
      PrettyPrinter.outputAsCanonical(_:)(&v56);

      MEMORY[0x1C68E0BF0](124, 0xE100000000000000);
      *&v56 = v38;
      PrettyPrinter.outputAsCanonical(_:)(&v56);
    }

    if (v9 == 4)
    {
      v18 = *(v17 + 32);
      *v74 = *(v17 + 16);
      *&v74[16] = v18;
      v19 = *(v17 + 64);
      v75 = *(v17 + 48);
      v76 = v19;
      v20 = *(v17 + 96);
      *&v65 = *(v17 + 120);

      PrettyPrinter.outputAsCanonical(_:)(&v65);

      v21 = AST.Quantification.Amount._canonicalBase.getter();
      MEMORY[0x1C68E0BF0](v21);

      if (v20)
      {
        v22 = 0xE100000000000000;
        if (v20 == 1)
        {
          v20 = 63;
        }

        else
        {
          v20 = 43;
        }
      }

      else
      {
        v22 = 0xE000000000000000;
      }

      MEMORY[0x1C68E0BF0](v20, v22);
      goto LABEL_34;
    }

    v53 = *(v17 + 16);
    v54 = *(v17 + 24);
    *v74 = 20828;
    *&v74[8] = 0xE200000000000000;

    MEMORY[0x1C68E0BF0](v53, v54);
    v16 = 17756;
LABEL_29:
    MEMORY[0x1C68E0BF0](v16, 0xE200000000000000);

    MEMORY[0x1C68E0BF0](*v74, *&v74[8]);
LABEL_34:
  }

  if (v9 <= 8)
  {
    if (v9 == 6)
    {
      return result;
    }

    if (v9 != 7)
    {
      v49 = swift_projectBox();
      outlined init with copy of AST.CustomCharacterClass.Member(v49, v7, type metadata accessor for AST.Atom);
      v50 = AST.Atom._canonicalBase.getter();
      v52 = v51;
      outlined destroy of AST.CustomCharacterClass.Member(v7, type metadata accessor for AST.Atom);
      MEMORY[0x1C68E0BF0](v50, v52);
    }

    v13 = v8 & 0xFFFFFFFFFFFFFFFLL;
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    *v74 = 31548;
    *&v74[8] = 0xE200000000000000;

    MEMORY[0x1C68E0BF0](v14, v15);
    v16 = 15997;
    goto LABEL_29;
  }

  if (v9 == 9)
  {
    v39 = v8 & 0xFFFFFFFFFFFFFFFLL;
    v40 = *(v39 + 40);
    v74[0] = *(v39 + 16);
    *&v74[8] = *(v39 + 24);
    *&v74[24] = v40;
    v75 = *(v39 + 48);
    return PrettyPrinter.outputAsCanonical(_:)(v74);
  }

  else if (v9 == 10)
  {
    v23 = (v8 & 0xFFFFFFFFFFFFFFFLL);
    v24 = v23[2];
    *v74 = v23[1];
    *&v74[16] = v24;
    v25 = v23[4];
    v75 = v23[3];
    v76 = v25;
    return PrettyPrinter.outputAsCanonical(_:)(v74);
  }

  return result;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 32);
    do
    {
      v3 = *v2++;
      v4 = v3;
      result = PrettyPrinter.outputAsCanonical(_:)(&v4);
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, char **a2)
{
  v3 = v2;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = a2;
    v6 = (result + 32);
    do
    {
      v7 = *v6;
      v87 = v6 + 1;
      v8 = v7 >> 60;
      if ((v7 >> 60) > 5)
      {
        if (v8 > 8)
        {
          if (v8 == 9)
          {
            v35 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v36 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v37 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            v63 = v3;
            v38 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
            v39 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
            v40 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
            v82 = &type metadata for AST.CustomCharacterClass;
            v83 = lazy protocol witness table accessor for type AST.CustomCharacterClass and conformance AST.CustomCharacterClass();
            v41 = swift_allocObject();
            v79 = v41;
            *(v41 + 16) = v35;
            *(v41 + 24) = v36;
            *(v41 + 32) = v37;
            *(v41 + 40) = v38;
            *(v41 + 48) = v39;
            *(v41 + 56) = v40;
            v3 = v63;
            v5 = a2;
            goto LABEL_26;
          }

          if (v8 == 10)
          {
            v21 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            v66 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v67 = v21;
            v22 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
            v68 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
            v69 = v22;
            v82 = &type metadata for AST.AbsentFunction;
            v83 = lazy protocol witness table accessor for type AST.AbsentFunction and conformance AST.AbsentFunction();
            v23 = swift_allocObject();
            v79 = v23;
            v24 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
            v26 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v25 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            v23[3] = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
            v23[4] = v24;
            v23[1] = v26;
            v23[2] = v25;
            outlined init with copy of AST.AbsentFunction(&v66, v65);
          }

          else
          {
            v61 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v62 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v82 = &type metadata for AST.Empty;
            v83 = lazy protocol witness table accessor for type AST.Empty and conformance AST.Empty();
            v79 = v61;
            v80 = v62;
            v5 = a2;
          }
        }

        else
        {
          if (v8 == 6)
          {
            v14 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v13 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v15 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            v16 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
            v82 = &type metadata for AST.Trivia;
            v83 = lazy protocol witness table accessor for type AST.Trivia and conformance AST.Trivia();
LABEL_20:
            v29 = swift_allocObject();
            v79 = v29;
            v29[2] = v14;
            v29[3] = v13;
            v29[4] = v15;
            v29[5] = v16;
LABEL_26:

            goto LABEL_27;
          }

          if (v8 == 7)
          {
            v14 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v13 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v15 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            v16 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
            v82 = &type metadata for AST.Interpolation;
            v83 = lazy protocol witness table accessor for type AST.Interpolation and conformance AST.Interpolation();
            goto LABEL_20;
          }

          v46 = type metadata accessor for AST.Atom(0);
          v47 = swift_projectBox();
          v82 = v46;
          v83 = lazy protocol witness table accessor for type AST.Atom and conformance AST.Atom(&lazy protocol witness table cache variable for type AST.Atom and conformance AST.Atom, type metadata accessor for AST.Atom);
          boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v79);
          outlined init with copy of AST.CustomCharacterClass.Member(v47, boxed_opaque_existential_1Tm, type metadata accessor for AST.Atom);
        }
      }

      else if (v8 > 2)
      {
        v17 = v7 & 0xFFFFFFFFFFFFFFFLL;
        if (v8 == 3)
        {
          v30 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0xB0);
          v75 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0xA0);
          v76 = v30;
          v77 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0xC0);
          v78 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0xD0);
          v31 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
          v71 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
          v72 = v31;
          v32 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x90);
          v73 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
          v74 = v32;
          v33 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v67 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v68 = v33;
          v34 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
          v69 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
          v70 = v34;
          v66 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v82 = &type metadata for AST.Conditional;
          v83 = lazy protocol witness table accessor for type AST.Conditional and conformance AST.Conditional();
          v79 = swift_allocObject();
          memmove(v79 + 2, (v17 + 16), 0xC8uLL);
          outlined init with copy of AST.Conditional(&v66, v65);
        }

        else
        {
          if (v8 != 4)
          {
            v50 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v49 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v52 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            v51 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
            v82 = &type metadata for AST.Quote;
            v83 = lazy protocol witness table accessor for type AST.Quote and conformance AST.Quote();
            v53 = swift_allocObject();
            v79 = v53;
            v53[2] = v50;
            v53[3] = v49;
            v53[4] = v52;
            v53[5] = v51;
            goto LABEL_26;
          }

          v18 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
          v71 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
          v72 = v18;
          v73 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
          *&v74 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x90);
          v19 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v67 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v68 = v19;
          v20 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
          v69 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
          v70 = v20;
          v66 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v82 = &type metadata for AST.Quantification;
          v83 = lazy protocol witness table accessor for type AST.Quantification and conformance AST.Quantification();
          v79 = swift_allocObject();
          memmove(v79 + 2, (v17 + 16), 0x88uLL);
          outlined init with copy of AST.Quantification(&v66, v65);
        }
      }

      else
      {
        if (!v8)
        {
          v27 = *(v7 + 16);
          v28 = *(v7 + 24);
          v82 = &type metadata for AST.Alternation;
          v83 = lazy protocol witness table accessor for type AST.Alternation and conformance AST.Alternation();
          v79 = v27;
          v80 = v28;

          goto LABEL_26;
        }

        if (v8 == 1)
        {
          v9 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v10 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v11 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v82 = &type metadata for AST.Concatenation;
          v12 = lazy protocol witness table accessor for type AST.Concatenation and conformance AST.Concatenation();
          v79 = v9;
          v80 = v10;
          v83 = v12;
          v81 = v11;
          goto LABEL_26;
        }

        v42 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
        v70 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
        v71 = v42;
        v43 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
        v72 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
        v73 = v43;
        v44 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v66 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v67 = v44;
        v45 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v68 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v69 = v45;
        v82 = &type metadata for AST.Group;
        v83 = lazy protocol witness table accessor for type AST.Group and conformance AST.Group();
        v79 = swift_allocObject();
        memmove(v79 + 2, ((v7 & 0xFFFFFFFFFFFFFFFLL) + 16), 0x80uLL);
        outlined init with copy of AST.Group(&v66, v65);
      }

LABEL_27:

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser8_ASTNode_pMd, &_s12_RegexParser8_ASTNode_pMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser10_ASTParent_pMd, &_s12_RegexParser10_ASTParent_pMR);
      if (swift_dynamicCast())
      {
        v54 = *(&v85 + 1);
        v55 = v86;
        __swift_project_boxed_opaque_existential_1Tm(&v84, *(&v85 + 1));
        v56 = (*(v55 + 16))(v54, v55);
        __swift_destroy_boxed_opaque_existential_1Tm(&v84);
        specialized Sequence.forEach(_:)(v56, v5);
      }

      else
      {
        v86 = 0;
        v84 = 0u;
        v85 = 0u;
        outlined destroy of _ASTParent?(&v84, &_s12_RegexParser10_ASTParent_pSgMd, &_s12_RegexParser10_ASTParent_pSgMR);
      }

      v57 = *v5;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v5 = v57;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v57 + 2) + 1, 1, v57);
        *v5 = v57;
      }

      v60 = *(v57 + 2);
      v59 = *(v57 + 3);
      if (v60 >= v59 >> 1)
      {
        v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v57);
        *v5 = v57;
      }

      *(v57 + 2) = v60 + 1;
      *&v57[8 * v60 + 32] = v7;

      --v4;
      v6 = v87;
    }

    while (v4);
  }

  return result;
}

uint64_t AST.Group.Kind._canonicalBase.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[6];
  v3 = v0[7];
  if (*(v0 + 80) > 1u)
  {
    if (*(v0 + 80) == 2)
    {
      return 0xD00000000000002FLL;
    }

    else
    {
      v8 = v0[9] | v0[8] | v0[5];
      v9 = v0[4] | v0[3] | v0[2];
      if (v4 | v2 | v1 | v3 | v8 | v9)
      {
        v10 = v4 | v2 | v3 | v8 | v9;
        if (v1 != 1 || v10)
        {
          if (v1 != 2 || v10)
          {
            if (v1 != 3 || v10)
            {
              if (v1 != 4 || v10)
              {
                if (v1 != 5 || v10)
                {
                  if (v1 != 6 || v10)
                  {
                    if (v1 != 7 || v10)
                    {
                      if (v1 != 8 || v10)
                      {
                        if (v1 != 9 || v10)
                        {
                          if (v1 == 10 && v10 == 0)
                          {
                            return 0x3A72732A28;
                          }

                          else
                          {
                            return 0x3A7273612A28;
                          }
                        }

                        else
                        {
                          return 708591400;
                        }
                      }

                      else
                      {
                        return 557596456;
                      }
                    }

                    else
                    {
                      return 1027358504;
                    }
                  }

                  else
                  {
                    return 2768680;
                  }
                }

                else
                {
                  return 2178856;
                }
              }

              else
              {
                return 4013864;
              }
            }

            else
            {
              return 4079400;
            }
          }

          else
          {
            return 8142632;
          }
        }

        else
        {
          return 3817256;
        }
      }

      else
      {
        return 40;
      }
    }
  }

  else
  {
    if (*(v0 + 80))
    {
      if (v2)
      {
        v6 = *v0;
      }

      else
      {
        v6 = 0;
      }

      if (v2)
      {
        v7 = v0[1];
      }

      else
      {
        v7 = 0xE000000000000000;
      }

      MEMORY[0x1C68E0BF0](v6, v7);

      MEMORY[0x1C68E0BF0](45, 0xE100000000000000);
      MEMORY[0x1C68E0BF0](v4, v3);
      MEMORY[0x1C68E0BF0](0, 0xE000000000000000);
    }

    else
    {
      MEMORY[0x1C68E0BF0](v1, v2);
    }

    MEMORY[0x1C68E0BF0](62, 0xE100000000000000);
    return 3948328;
  }
}

uint64_t PrettyPrinter.outputAsCanonical(_:)(__int128 *a1)
{
  _StringGuts.grow(_:)(27);

  v11 = a1[6];
  v12 = a1[7];
  v13 = a1[8];
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v5 = *a1;
  v6 = a1[1];
  v2 = lazy protocol witness table accessor for type AST.Conditional.Condition and conformance AST.Conditional.Condition();
  v3 = (*(v2 + 24))(&type metadata for AST.Conditional.Condition, v2);
  MEMORY[0x1C68E0BF0](v3);

  MEMORY[0x1C68E0BF0](690956832, 0xE400000000000000);
  MEMORY[0x1C68E0BF0](0xD000000000000015, 0x80000001C0C86BD0);
}

uint64_t AST.Atom._canonicalBase.getter()
{
  v1 = type metadata accessor for AST.Atom.Kind(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = AST.Atom.literalStringValue.getter();
  if (!v7)
  {
    outlined init with copy of AST.CustomCharacterClass.Member(v0, v5, type metadata accessor for AST.Atom.Kind);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 14)
    {
      if (EnumCaseMultiPayload == 15)
      {
        return 94;
      }

      if (EnumCaseMultiPayload == 16)
      {
        return 36;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v21 = *v5;
        *&v23[0] = 0;
        *(&v23[0] + 1) = 0xE000000000000000;
        MEMORY[0x1C68E0BF0](92, 0xE100000000000000);
        LOBYTE(v22[0]) = v21;
        AST.Atom.EscapedBuiltin.character.getter();
        Character.write<A>(to:)();

        return *&v23[0];
      }

      if (EnumCaseMultiPayload == 9)
      {
        v12 = *(v5 + 3);
        v13 = *(v5 + 1);
        v24 = *(v5 + 2);
        v25 = v12;
        v14 = *(v5 + 3);
        v15 = *(v5 + 5);
        v26 = *(v5 + 4);
        v27 = v15;
        v16 = *(v5 + 1);
        v23[0] = *v5;
        v23[1] = v16;
        v22[2] = v24;
        v22[3] = v14;
        v17 = *(v5 + 5);
        v22[4] = v26;
        v22[5] = v17;
        v22[0] = v23[0];
        v22[1] = v13;
        v18 = AST.Reference._canonicalBase.getter();
        outlined destroy of AST.Reference(v23, outlined consume of AST.Reference.Kind);
        return v18;
      }
    }

    *&v23[0] = 0;
    *(&v23[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(19);
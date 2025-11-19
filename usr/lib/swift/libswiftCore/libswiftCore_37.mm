uint64_t closure #1 in closure #2 in closure #2 in KeyPath._projectReadOnly(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v10, v11);
  if (a2 <= 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (*(v7 + 32))(a1, v9, a4);
}

uint64_t closure #2 in projectCurrent #1 <A, B><A1><A2>(_:) in projectNew #1 <A, B><A1>(_:) in closure #1 in closure #1 in ReferenceWritableKeyPath._projectMutableAddress(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, _BYTE *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v47 = a6;
  v14 = *(a8 - 8);
  v51 = a9;
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v46 - v18;
  RawKeyPathComponent.value.getter(v20, v21, v22, &v53);
  v23 = v53;
  v24 = v54 >> 61;
  if ((v54 >> 61) <= 1)
  {
    if (v24)
    {
      a5 = *a5;
      swift_beginAccess(&a5[v53], v52, 0, 0);
    }

    else if ((*(*(v51 - 8) + 64) & 0x8000000000000000) != 0)
    {
      LODWORD(v44) = 0;
      v43 = 1215;
      LOBYTE(v42) = 2;
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    return (*(v14 + 16))(a1, &a5[v23], a8);
  }

  else
  {
    v46 = a7;
    v25 = a5;
    v48 = a1;
    v49 = a8;
    v50 = v9;
    v26 = v55;
    v27 = v56;
    v29 = v57;
    v28 = v58;
    if ((v24 - 2) >= 3)
    {
      v36 = v56 | v55;
      v37 = v58 | v59;
      if (v54 != 0xA000000000000000 || v36 | v53 | v57 | v37)
      {
        if (v54 != 0xA000000000000000 || v53 != 1 || v36 | v57 | v37)
        {
          v41 = v49;
          (*(v14 + 16))(v19, v25, v49);
          (*(v14 + 104))(v19, 0, v41);
          return (*(v14 + 32))(v48, v19, v41);
        }

        if ((*(*(v51 - 8) + 88))(v25))
        {
          LODWORD(v44) = 0;
          v43 = 1881;
          LOBYTE(v42) = 2;
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      else
      {
        v38 = v51;
        v39 = (*(*(v51 - 8) + 88))(v25, v51);
        if (v39)
        {
          *v47 = 1;
          v40 = MEMORY[0x1EEE9AC00](v39);
          v42 = v38;
          v44 = v46;
          v45 = v40;
          return _sSpsRi_zrlE17withMemoryRebound2to8capacity_qd_1_qd__m_Siqd_1_Spyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSiSpyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyqd__s5NeverOytIsgyrzr_AFytA2HRsd_0_ytRsd_1_Ri_zRi_d__r_1_lIetMygyrzo_Tp5(1, closure #2 in RawKeyPathComponent._projectReadOnly<A, B, C>(_:to:endingWith:_:pointer:)partial apply, (&v46 - 6), v48, v49, v46);
        }
      }

      return (*(v14 + 16))(v48, v25, v49);
    }

    v30 = v49;
    v31 = ComputedAccessorsPtr.getter<A, B>()(v55, v51, v49);
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
    return (*(v14 + 32))(v48, v17, v30);
  }
}

char *specialized formalMutation #1 <A, B><A1>(_:) in closure #1 in ReferenceWritableKeyPath._projectMutableAddress(from:)(uint64_t a1, uint64_t *a2, char **a3, uint64_t a4, uint64_t a5)
{
  v111 = a4;
  v115 = a3;
  v127 = *MEMORY[0x1E69E9840];
  v7 = *(*(a5 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v9;
  (*(v9 + 16))(v8);
  if (v7 < 0)
  {
LABEL_85:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v10 = a5;
  v11 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = a5;
  v110 = v11;
  do
  {
    v18 = v10;
    v20 = *a2;
    v19 = a2[1];
    if (!*a2)
    {
      v22 = 0;
      goto LABEL_17;
    }

    if ((v20 & 3) == 0)
    {
      v22 = *a2;
      goto LABEL_17;
    }

    v21 = -*a2 & 3;
    v22 = (v20 + v21);
    if (__OFADD__(v20, v21))
    {
      goto LABEL_89;
    }

    v23 = v19 - v20;
    v24 = __OFSUB__(v23, v21);
    v25 = &v23[-v21];
    if (v24)
    {
      goto LABEL_90;
    }

    if ((v25 & 0x8000000000000000) != 0)
    {
      goto LABEL_85;
    }

    if (v25)
    {
      if (!v22)
      {
        goto LABEL_85;
      }

LABEL_16:
      v19 = &v22[v25];
      goto LABEL_17;
    }

    if (v22)
    {
      goto LABEL_16;
    }

    v19 = 0;
LABEL_17:
    *a2 = v22;
    a2[1] = v19;
    v26 = v19 - v22;
    v27 = v26 - 4;
    if (__OFSUB__(v26, 4))
    {
      __break(1u);
LABEL_87:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v27 < 0)
    {
      goto LABEL_85;
    }

    v28 = (v22 + 4);
    v29 = &v22[v26];
    *a2 = (v22 + 4);
    a2[1] = v29;
    v30 = *v22;
    if ((v30 & 0x80000000) != 0)
    {
      *(a2 + 17) = 0;
    }

    if ((v30 & 0x7D000000) == 0x1000000)
    {
      v31 = 4 * ((~v30 & 0x7FFFFF) == 0);
    }

    else if ((BYTE3(v30) & 0x7F) == 2)
    {
      v31 = 28;
      if ((v30 & 0x400000) == 0)
      {
        v31 = 20;
      }

      if ((v30 & 0x80000) != 0)
      {
        v32 = 24;
        if ((v30 & 0x400000) == 0)
        {
          v32 = 16;
        }

        v33 = &v22[v32 + 8];
        if ((v33 & 7) != 0)
        {
          goto LABEL_87;
        }

        v31 += ((v30 >> 1) & 8) + *v33 + 16;
        if (v31 < 0)
        {
          goto LABEL_85;
        }
      }
    }

    else
    {
      v31 = 0;
    }

    *a2 = v28;
    a2[1] = v29;
    v34 = v27 - v31;
    if (v27 - v31 < 0)
    {
      goto LABEL_85;
    }

    v35 = v28 + v31;
    *a2 = v28 + v31;
    a2[1] = v29;
    if (v27 == v31)
    {
      v36 = 1;
      v10 = v111;
      goto LABEL_48;
    }

    if ((v35 & 7) != 0)
    {
      v37 = -v35 & 7;
      v38 = (v35 + v37);
      if (__OFADD__(v35, v37))
      {
        goto LABEL_91;
      }

      v39 = v34 - v37;
      if (v39 < 0)
      {
        goto LABEL_85;
      }

      if (v39)
      {
        if (!v38)
        {
          goto LABEL_85;
        }

LABEL_44:
        v29 = (v38 + v39);
        goto LABEL_45;
      }

      if (v38)
      {
        goto LABEL_44;
      }

      v29 = 0;
    }

    else
    {
      v38 = (v28 + v31);
    }

LABEL_45:
    v40 = v29 - v38;
    v24 = __OFSUB__(v40, 8);
    v41 = v40 - 8;
    if (v24)
    {
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v41 < 0)
    {
      goto LABEL_85;
    }

    *a2 = (v38 + 1);
    a2[1] = v38 + v41 + 8;
    v10 = *v38;
    v36 = *v38 == 0;
LABEL_48:
    v42 = RawKeyPathComponent.value.getter(v30, v28, v35, &v121);
    v45 = v122 >> 61;
    if ((v122 >> 61) <= 2)
    {
      if (v45)
      {
        v12 = *v11;
        v11 = (*v11 + v121);
        v13 = v115;
        v14 = v10;
        v15 = *v115;
        v16 = type metadata accessor for ClassHolder(0, v14, v43, v44);
        v17 = swift_allocObject(v16, 0x38, 7uLL);
        *(v17 + 2) = v15;
        *(v17 + 3) = v12;
        v10 = v14;
        swift_beginAccess(v11, v17 + 4, 0x21uLL, v101);
        *v13 = v17;
        swift_unknownObjectRetain(v12);
      }

      else
      {
        v11 += v121;
      }
    }

    else
    {
      v116 = v11;
      v46 = v124;
      v48 = v125;
      v47 = v126;
      if (v45 == 3)
      {
        if (v126)
        {
          v75 = v124 == 0;
        }

        else
        {
          v75 = 1;
        }

        if (v75)
        {
          v76 = 0;
        }

        else
        {
          v76 = v125 - v124;
        }

        if (v75)
        {
          v77 = v123;
        }

        else
        {
          v77 = v124;
        }

        v78 = (v123 + 1);
        if (((v123 + 1) & 7) != 0)
        {
          goto LABEL_87;
        }

        v79 = v123;
        v113 = v36;
        v80 = *v115;
        v117 = v10;
        v118 = v18;
        v119 = &type metadata for UnsafeRawPointer;
        v120 = &type metadata for Int;
        swift_getFunctionTypeMetadata(33685508, &v117, &parameter_flags, &unk_1EEEAC658);
        v81 = *v78;
        if (!*v78)
        {
          goto LABEL_92;
        }

        if ((v79 & 7) != 0)
        {
          goto LABEL_87;
        }

        v108 = v76;
        v109 = v81;
        v112 = v80;
        FunctionTypeMetadata3 = swift_getFunctionTypeMetadata3(131075, v18, &type metadata for UnsafeRawPointer, &type metadata for Int, v10);
        v83 = *v79;
        if (!*v79)
        {
          goto LABEL_92;
        }

        v107 = &v98;
        v106 = *(v10 - 8);
        v84 = MEMORY[0x1EEE9AC00](FunctionTypeMetadata3);
        v105 = &v98;
        v114 = v10;
        v85 = *(v18 - 8);
        MEMORY[0x1EEE9AC00](v84);
        v87 = &v98 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
        v88 = v116;
        (*(v85 + 16))(v87, v116, v18);
        v89 = v108;
        v83(v87, v77, v108);
        (*(v85 + 8))(v87, v18);
        v10 = v114;
        v91 = type metadata accessor for MutatingWritebackBuffer(0, v18, v114, v90);
        v92 = swift_allocObject(v91, *(v91 + 48), *(v91 + 52));
        *(v92 + 2) = v112;
        *(v92 + 3) = v88;
        *(v92 + 4) = v109;
        *(v92 + 5) = v77;
        *(v92 + 6) = v89;
        v11 = &v92[*(*v92 + 136)];
        (*(v106 + 4))(v11, v105, v10);
        *v115 = v92;
        v8 = v110;
        v36 = v113;
      }

      else if (v45 == 4)
      {
        v113 = v36;
        v114 = v10;
        v109 = &v98;
        v49 = *(v18 - 8);
        v50 = v123;
        v51 = *(v49 + 64);
        MEMORY[0x1EEE9AC00](v42);
        v112 = v18;
        v52 = (v51 + 15) & 0xFFFFFFFFFFFFFFF0;
        v53 = &v98 - v52;
        v108 = v49;
        v54 = *(v49 + 16);
        v55 = v54(&v98 - v52, v116, v112);
        v116 = &v98;
        if (v47)
        {
          v56 = v46 == 0;
        }

        else
        {
          v56 = 1;
        }

        if (v56)
        {
          v57 = 0;
        }

        else
        {
          v57 = v48 - v46;
        }

        if (v56)
        {
          v58 = v50;
        }

        else
        {
          v58 = v46;
        }

        v107 = v58;
        v106 = *v115;
        MEMORY[0x1EEE9AC00](v55);
        v59 = &v98 - v52;
        v60 = v112;
        v105 = v53;
        v54(v59, v53, v112);
        v61 = v50 + 1;
        if (((v50 + 1) & 7) != 0)
        {
          goto LABEL_87;
        }

        v62 = v50;
        v63 = v57;
        v10 = v114;
        v117 = v114;
        v118 = v60;
        v119 = &type metadata for UnsafeRawPointer;
        v120 = &type metadata for Int;
        swift_getFunctionTypeMetadata(131076, &v117, 0, &unk_1EEEAC658);
        if (!*v61)
        {
          goto LABEL_92;
        }

        if ((v62 & 7) != 0)
        {
          goto LABEL_87;
        }

        v64 = *v61;
        v65 = swift_getFunctionTypeMetadata3(131075, v60, &type metadata for UnsafeRawPointer, &type metadata for Int, v10);
        if (!*v62)
        {
          goto LABEL_92;
        }

        v104 = &v98;
        v103 = *(v10 - 8);
        MEMORY[0x1EEE9AC00](v65);
        v67 = &v98 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
        v68 = v105;
        v69 = v107;
        v102 = v63;
        v70(v105, v107, v63);
        v71 = v108;
        (*(v108 + 8))(v68, v60);
        v73 = type metadata accessor for NonmutatingWritebackBuffer(0, v60, v10, v72);
        v74 = swift_allocObject(v73, *(v73 + 48), *(v73 + 52));
        *(v74 + 2) = v106;
        (*(v71 + 32))(&v74[*(*v74 + 104)], v59, v60);
        *&v74[*(*v74 + 112)] = v64;
        *&v74[*(*v74 + 120)] = v69;
        *&v74[*(*v74 + 128)] = v102;
        v11 = &v74[*(*v74 + 136)];
        (*(v103 + 32))(v11, v67, v10);
        *v115 = v74;
        v8 = v110;
        v36 = v113;
      }

      else
      {
        v93 = type metadata accessor for Optional(0, v10, v43, v44);
        v94 = *(v93 - 8);
        MEMORY[0x1EEE9AC00](v93);
        v96 = &v98 - v95;
        v11 = v116;
        (*(v94 + 16))(&v98 - v95, v116, v93);
        if ((*(*(v10 - 8) + 48))(v96, 1, v10) == 1)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        (*(v94 + 8))(v96, v93);
      }
    }
  }

  while (!v36);
  (*(v100 + 8))(v8, v99);
  return v11;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ComputedPropertyID()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  specialized Hasher.init(_seed:)(0, v4);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance ComputedPropertyID()
{
  v1 = *(v0 + 8);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ComputedPropertyID(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  specialized Hasher.init(_seed:)(a1, v5);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t ComputedAccessorsPtr.getter<A, B>()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 7) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  swift_getFunctionTypeMetadata3(131075, a2, &type metadata for UnsafeRawPointer, &type metadata for Int, a3);
  if (!*a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *a1;
}

uint64_t ComputedArgumentWitnessesPtr.destroy.getter(uint64_t a1)
{
  if ((a1 & 7) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (*a1)
  {
    return *a1;
  }

  else
  {
    return 0;
  }
}

uint64_t ComputedArgumentWitnessesPtr.copy.getter(uint64_t a1)
{
  v1 = a1 + 8;
  if (((a1 + 8) & 7) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!*v1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *v1;
}

uint64_t ComputedArgumentWitnessesPtr.equals.getter(uint64_t a1)
{
  v1 = a1 + 16;
  if (((a1 + 16) & 7) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!*v1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *v1;
}

uint64_t ComputedArgumentWitnessesPtr.hash.getter(uint64_t a1)
{
  v1 = a1 + 24;
  if (((a1 + 24) & 7) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!*v1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *v1;
}

void KeyPathComponent.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v2 >> 61;
  if ((v2 >> 61) > 2)
  {
    if (v7 == 3)
    {
      v9 = 6;
    }

    else
    {
      if (v7 != 4)
      {
        v11 = v3 | v4;
        v12 = v6 | v0[2];
        if (v2 != 0xA000000000000000 || v11 | v1 | v5 | v12)
        {
          if (v2 == 0xA000000000000000 && v1 == 1 && !(v11 | v5 | v12))
          {
            v10 = 3;
          }

          else
          {
            v10 = 4;
          }
        }

        else
        {
          v10 = 2;
        }

        goto LABEL_10;
      }

      v9 = 7;
    }
  }

  else
  {
    if (!v7)
    {
      v8 = 0;
      goto LABEL_9;
    }

    if (v7 == 1)
    {
      v8 = 1;
LABEL_9:
      Hasher._combine(_:)(v8);
      v10 = v1;
LABEL_10:
      Hasher._combine(_:)(v10);
      return;
    }

    v9 = 5;
  }

  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);

  appendHashFromArgument #1 (_:) in KeyPathComponent.hash(into:)(v4, v3, v5, v6);
}

void appendHashFromArgument #1 (_:) in KeyPathComponent.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = ComputedArgumentWitnessesPtr.hash.getter(a3);
    if (a1)
    {
      if (!__OFSUB__(a2 - a1, a4))
      {
        v8 = v7(a1, a2 - a1 - a4);
        if (v8)
        {
          Hasher._combine(_:)(v8);
        }

        return;
      }

      __break(1u);
    }

    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance KeyPathComponent()
{
  specialized Hasher.init(_seed:)(0, v1);
  KeyPathComponent.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance KeyPathComponent(uint64_t a1)
{
  specialized Hasher.init(_seed:)(a1, v2);
  KeyPathComponent.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance KeyPathComponent(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return specialized static KeyPathComponent.== infix(_:_:)(v5, v7) & 1;
}

void ClassHolder.__deallocating_deinit()
{
  swift_endAccess((v0 + 4));
  swift_unknownObjectRelease(v0[2]);
  swift_unknownObjectRelease(v0[3]);

  swift_deallocClassInstance(v0);
}

void MutatingWritebackBuffer.__deallocating_deinit(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v10 - v4;
  v6 = *(v1 + 32);
  v8 = *(v7 + 136);
  (*(v3 + 16))(&v10 - v4, v1 + v8, v2);
  v6(v5, *(v1 + 24), *(v1 + 40), *(v1 + 48));
  v9 = *(v3 + 8);
  v9(v5, v2);
  swift_unknownObjectRelease(*(v1 + 16));
  v9((v1 + v8), v2);
  swift_deallocClassInstance(v1);
}

id *NonmutatingWritebackBuffer.deinit(uint64_t a1)
{
  v2 = *(*v1 + 10);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v19 - v5;
  v8 = *(v7 + 88);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v11 = &v19 - v10;
  v13 = *(v1 + *(v12 + 112));
  v14 = *(v12 + 136);
  (*(v9 + 16))(&v19 - v10, v1 + v14, v8);
  v15 = *(*v1 + 13);
  (*(v3 + 16))(v6, v1 + v15, v2);
  v13(v11, v6, *(v1 + *(*v1 + 15)), *(v1 + *(*v1 + 16)));
  v16 = *(v3 + 8);
  v16(v6, v2);
  v17 = *(v9 + 8);
  v17(v11, v8);
  swift_unknownObjectRelease(v1[2]);
  v16(v1 + v15, v2);
  v17(v1 + v14, v8);
  return v1;
}

void NonmutatingWritebackBuffer.__deallocating_deinit(uint64_t a1)
{
  NonmutatingWritebackBuffer.deinit(a1);

  swift_deallocClassInstance(v1);
}

uint64_t RawKeyPathComponent.Header.computedIDResolution.getter(char a1)
{
  v1 = a1 & 0xF;
  if ((a1 & 0xF) == 0)
  {
    return 0;
  }

  if (v1 == 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (v1 == 3)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t RawKeyPathComponent.Header.patternComponentBodySize.getter(unsigned int a1)
{
  v2 = RawKeyPathComponent.Header.kind.getter(a1);
  if (v2 > 3)
  {
    return 0;
  }

  v3 = v2 - 1;
  v4 = 4;
  if ((~a1 & 0x7FFFFE) != 0)
  {
    v4 = 4 * ((a1 & 0x7FFFFF) == 8388605);
  }

  v5 = 12;
  if ((a1 & 0x400000) == 0)
  {
    v5 = 8;
  }

  if ((a1 & 0x80000) != 0)
  {
    v5 += 12;
  }

  if (v2)
  {
    v6 = v5;
  }

  else
  {
    v6 = 4 * (a1 & 0xFFFFFF) + 4;
  }

  if (v3 >= 2)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t RawKeyPathComponent.Header.propertyDescriptorBodySize.getter(unsigned int a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = RawKeyPathComponent.Header.kind.getter(a1);
  v3 = 4;
  if ((~a1 & 0x7FFFFE) != 0)
  {
    v3 = 4 * ((a1 & 0x7FFFFF) == 8388605);
  }

  v4 = 4 * (a1 & 0xFFFFFF) + 4;
  v5 = 12;
  if ((a1 & 0x400000) == 0)
  {
    v5 = 8;
  }

  if (v2)
  {
    v4 = v5;
  }

  if ((v2 - 1) >= 2)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  if (v2 <= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t RawKeyPathComponent.bodySize.getter(unsigned int a1, uint64_t a2)
{
  v4 = RawKeyPathComponent.Header.kind.getter(a1);
  if ((v4 - 4) < 3)
  {
    return 0;
  }

  if ((v4 - 1) < 2)
  {
    return 4 * ((~a1 & 0x7FFFFF) == 0);
  }

  if ((a1 & 0x400000) != 0)
  {
    result = 28;
  }

  else
  {
    result = 20;
  }

  if ((a1 & 0x80000) != 0)
  {
    result += RawKeyPathComponent._computedArgumentSize.getter(a1, a2) + ((a1 >> 1) & 8) + 16;
  }

  return result;
}

uint64_t RawKeyPathComponent._computedArgumentSize.getter(int a1, uint64_t a2)
{
  v2 = 24;
  if ((a1 & 0x400000) == 0)
  {
    v2 = 16;
  }

  v3 = a2 + v2 + 4;
  if ((v3 & 7) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *v3;
}

uint64_t _sSW4load14fromByteOffset2asxSi_xmtlFs6UInt32V_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    goto LABEL_12;
  }

  v3 = a1 + 4;
  if (__OFADD__(a1, 4))
  {
    __break(1u);
LABEL_9:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a2)
  {
    if (v3 < 1)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_12:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a3 - a2 < v3)
  {
    goto LABEL_12;
  }

  if (((a2 + a1) & 3) != 0)
  {
    goto LABEL_9;
  }

  return *(a2 + a1);
}

uint64_t _sSW4load14fromByteOffset2asxSi_xmtlFSV_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    goto LABEL_12;
  }

  v3 = a1 + 8;
  if (__OFADD__(a1, 8))
  {
    __break(1u);
LABEL_9:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a2)
  {
    if (v3 < 1)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_12:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a3 - a2 < v3)
  {
    goto LABEL_12;
  }

  if (((a2 + a1) & 7) != 0)
  {
    goto LABEL_9;
  }

  return *(a2 + a1);
}

uint64_t UnsafeRawBufferPointer.load<A>(fromByteOffset:as:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (a1 < 0)
  {
    goto LABEL_14;
  }

  v5 = *(a4 - 8);
  v6 = *(v5 + 64);
  v7 = __OFADD__(a1, v6);
  v8 = a1 + v6;
  if (v7)
  {
    __break(1u);
LABEL_11:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a2)
  {
    if (v8 < 1)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_14:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a3 - a2 < v8)
  {
    goto LABEL_14;
  }

  if ((*(v5 + 80) & (a2 + a1)) != 0)
  {
    goto LABEL_11;
  }

  v9 = *(v5 + 16);

  return v9(a5);
}

uint64_t RawKeyPathComponent._computedArgumentWitnesses.getter(int a1, uint64_t a2)
{
  v2 = 24;
  if ((a1 & 0x400000) == 0)
  {
    v2 = 16;
  }

  v3 = a2 + v2 + 12;
  if ((v3 & 7) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *v3;
}

uint64_t RawKeyPathComponent._computedArgumentWitnessSizeAdjustment.getter(int a1, uint64_t a2)
{
  if ((a1 & 0x10) == 0)
  {
    return 0;
  }

  v3 = 24;
  if ((a1 & 0x400000) == 0)
  {
    v3 = 16;
  }

  v4 = a2 + v3 + 20;
  if ((v4 & 7) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *v4;
}

Swift::Void __swiftcall RawKeyPathComponent.clone(into:endOfReferencePrefix:)(Swift::UnsafeMutableRawBufferPointer *into, Swift::Bool endOfReferencePrefix)
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  if (endOfReferencePrefix)
  {
    v9 = 0x80000000;
  }

  else
  {
    v9 = 0;
  }

  rawValue = into->_position.value._rawValue;
  v11 = into->_end.value._rawValue;
  _s54_swift_se0349_UnsafeMutableRawBufferPointer_storeBytess0E16KeyPathComponentV6HeaderV_Tt1g5Tm(v9 & 0x80000000 | v2 & 0x7FFFFFFF, 0, into->_position.value._rawValue, v11);
  v12 = RawKeyPathComponent.Header.kind.getter(v7);
  if ((v12 - 4) < 3)
  {
    goto LABEL_8;
  }

  if ((v12 - 1) < 2)
  {
    if ((~v7 & 0x7FFFFF) == 0)
    {
      v13 = _sSW4load14fromByteOffset2asxSi_xmtlFs6UInt32V_Tt1g5(0, v6, v5);
      _s54_swift_se0349_UnsafeMutableRawBufferPointer_storeBytess0E16KeyPathComponentV6HeaderV_Tt1g5Tm(v13, 4, rawValue, v11);
      v14 = 8;
      goto LABEL_9;
    }

LABEL_8:
    v14 = 4;
LABEL_9:
    if (rawValue)
    {
      goto LABEL_10;
    }

LABEL_39:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v15 = _sSW4load14fromByteOffset2asxSi_xmtlFSV_Tt1g5(4, v6, v5);
  _s54_swift_se0349_UnsafeMutableRawBufferPointer_storeBytesSi_Tt1g5Tm(v15, 8, rawValue, v11);
  if (!rawValue)
  {
    goto LABEL_39;
  }

  UnsafeMutableRawPointer._copyAddressDiscriminatedFunctionPointer(from:discriminator:)((v6 + 12), 0x6F72uLL);
  if ((v7 & 0x400000) != 0)
  {
    if ((v7 & 0x800000) != 0)
    {
      v16 = 29801;
    }

    else
    {
      v16 = 28528;
    }

    UnsafeMutableRawPointer._copyAddressDiscriminatedFunctionPointer(from:discriminator:)((v6 + 20), v16);
    v14 = 32;
    if ((v7 & 0x80000) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v14 = 24;
    if ((v7 & 0x80000) == 0)
    {
      goto LABEL_10;
    }
  }

  if ((v7 & 0x400000) != 0)
  {
    v17 = 24;
  }

  else
  {
    v17 = 16;
  }

  if ((v7 & 0x10) != 0)
  {
    v18 = 24;
  }

  else
  {
    v18 = 16;
  }

  v19 = RawKeyPathComponent._computedArgumentSize.getter(v7, v6);
  _s54_swift_se0349_UnsafeMutableRawBufferPointer_storeBytesSi_Tt1g5Tm(v19, v14, rawValue, v11);
  v20 = RawKeyPathComponent._computedArgumentWitnesses.getter(v7, v6);
  _s54_swift_se0349_UnsafeMutableRawBufferPointer_storeBytesSi_Tt1g5Tm(v20, v14 + 8, rawValue, v11);
  v21 = v14 + 16;
  if ((v7 & 0x10) != 0)
  {
    v22 = RawKeyPathComponent._computedArgumentWitnessSizeAdjustment.getter(v7, v6);
    _s54_swift_se0349_UnsafeMutableRawBufferPointer_storeBytesSi_Tt1g5Tm(v22, v14 + 16, rawValue, v11);
    v21 = v14 + 24;
  }

  v23 = RawKeyPathComponent._computedArgumentWitnessSizeAdjustment.getter(v7, v6);
  v24 = v19 - v23;
  if (__OFSUB__(v19, v23))
  {
    __break(1u);
    goto LABEL_39;
  }

  v25 = v6 + 4 + v17 + v18;
  v26 = RawKeyPathComponent._computedArgumentWitnesses.getter(v7, v6);
  v27 = ComputedArgumentWitnessesPtr.copy.getter(v26);
  v27(v25, &rawValue[v21], v24);
  if ((v7 & 0x10) != 0)
  {
    v28 = RawKeyPathComponent._computedArgumentWitnessSizeAdjustment.getter(v7, v6);
    if ((v28 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    memcpy(&rawValue[v21 + v24], (v25 + v24), v28);
  }

  v14 = v21 + v19;
  if (__OFADD__(v21, v19))
  {
    __break(1u);
    goto LABEL_36;
  }

LABEL_10:
  if (__OFSUB__(v11 - rawValue, v14))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v11 - rawValue - v14 < 0)
  {
    goto LABEL_37;
  }

  into->_position.value._rawValue = &rawValue[v14];
  into->_end.value._rawValue = v11;
}

uint64_t _s54_swift_se0349_UnsafeMutableRawBufferPointer_storeBytess0E16KeyPathComponentV6HeaderV_Tt1g5Tm(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    goto LABEL_7;
  }

  v4 = a2 + 4;
  if (__OFADD__(a2, 4))
  {
    __break(1u);
  }

  if (!a3)
  {
    if (v4 < 1)
    {
      goto LABEL_5;
    }

LABEL_7:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a4 - a3 < v4)
  {
    goto LABEL_7;
  }

LABEL_5:
  *(a3 + a2) = result;
  return result;
}

uint64_t _s54_swift_se0349_UnsafeMutableRawBufferPointer_storeBytesSi_Tt1g5Tm(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    goto LABEL_7;
  }

  v4 = a2 + 8;
  if (__OFADD__(a2, 8))
  {
    __break(1u);
  }

  if (!a3)
  {
    if (v4 < 1)
    {
      goto LABEL_5;
    }

LABEL_7:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a4 - a3 < v4)
  {
    goto LABEL_7;
  }

LABEL_5:
  *(a3 + a2) = result;
  return result;
}

Swift::Void __swiftcall UnsafeMutableRawPointer._copyAddressDiscriminatedFunctionPointer(from:discriminator:)(Swift::UnsafeRawPointer from, Swift::UInt64 discriminator)
{
  if (from._rawValue != v2)
  {
    if ((from._rawValue & 7) != 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (!*from._rawValue)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    *v2 = *from._rawValue;
  }
}

uint64_t _sSpsRi_zrlE17withMemoryRebound2to8capacity_qd_1_qd__m_Siqd_1_Spyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSiSpyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyqd__s5NeverOytIsgyrzr_AFytA2HRsd_0_ytRsd_1_Ri_zRi_d__r_1_lIetMygyrzo_Tp5(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 - 8);
  if ((*(v7 + 80) & a4) != 0)
  {
LABEL_15:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a1 == 1)
  {
    goto LABEL_13;
  }

  v8 = *(*(a5 - 8) + 72);
  v9 = *(v7 + 72);
  if (v9 < v8)
  {
    if (v9)
    {
      v10 = v8 % v9;
      goto LABEL_12;
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!v8)
  {
    goto LABEL_16;
  }

  if (v8 == -1 && v9 == 0x8000000000000000)
  {
    goto LABEL_16;
  }

  v10 = v9 % v8;
LABEL_12:
  if (v10)
  {
    goto LABEL_15;
  }

LABEL_13:
  result = a2(a4);
  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t _ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFypXp_Tt0g5(uint64_t *a1, uint64_t a2)
{
  result = _ss12MemoryLayoutOsRi_zrlE26_roundingUpBaseToAlignmentyS2WFZypXp_Tt0g5(*a1, a1[1]);
  if ((a2 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
LABEL_7:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a2 < 0)
  {
    goto LABEL_7;
  }

  v6 = v5 - result - 8 * a2;
  if (__OFSUB__(v5 - result, 8 * a2))
  {
    __break(1u);
LABEL_9:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v6 < 0)
  {
    goto LABEL_9;
  }

  v7 = result + 8 * a2;
  *a1 = v7;
  a1[1] = v7 + v6;
  return result;
}

uint64_t _ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs19RawKeyPathComponentV6HeaderV_Tt0g5(uint64_t *a1, uint64_t a2)
{
  result = _ss12MemoryLayoutOsRi_zrlE26_roundingUpBaseToAlignmentyS2WFZs5Int32V_Tt0g5Tm(*a1, a1[1]);
  if ((a2 - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
LABEL_7:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a2 < 0)
  {
    goto LABEL_7;
  }

  v6 = v5 - result - 4 * a2;
  if (__OFSUB__(v5 - result, 4 * a2))
  {
    __break(1u);
LABEL_9:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v6 < 0)
  {
    goto LABEL_9;
  }

  v7 = result + 4 * a2;
  *a1 = v7;
  a1[1] = v7 + v6;
  return result;
}

uint64_t _ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs4Int8V_Tt0g5Tm(uint64_t *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v2 = *a1;
  v3 = a1[1] - *a1;
  v4 = __OFSUB__(v3, a2);
  v5 = v3 - a2;
  if (v4)
  {
    __break(1u);
LABEL_7:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v5 < 0)
  {
    goto LABEL_7;
  }

  *a1 = v2 + a2;
  a1[1] = v2 + a2 + v5;
  return v2;
}

uint64_t _ss12MemoryLayoutOsRi_zrlE26_roundingUpBaseToAlignmentyS2WFZypXp_Tt0g5(uint64_t result, uint64_t a2)
{
  if (result && (result & 7) != 0)
  {
    v2 = -result & 7;
    if (__OFADD__(result, v2))
    {
      __break(1u);
    }

    else
    {
      v3 = __OFSUB__(a2 - result, v2);
      v4 = a2 - result - v2;
      if (!v3)
      {
        return _sSWySWSRyxGclufCs5UInt8V_Tt0gq5Tm(result + v2, v4);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _ss12MemoryLayoutOsRi_zrlE26_roundingUpBaseToAlignmentyS2WFZs5Int32V_Tt0g5Tm(uint64_t result, uint64_t a2)
{
  if (result && (result & 3) != 0)
  {
    v2 = -result & 3;
    if (__OFADD__(result, v2))
    {
      __break(1u);
    }

    else
    {
      v3 = __OFSUB__(a2 - result, v2);
      v4 = a2 - result - v2;
      if (!v3)
      {
        return _sSWySWSRyxGclufCs5UInt8V_Tt0gq5Tm(result + v2, v4);
      }
    }

    __break(1u);
  }

  return result;
}

Swift::UnsafeMutableRawBufferPointer __swiftcall KeyPathBuffer.Builder.pushRaw(size:alignment:)(Swift::Int size, Swift::Int alignment)
{
  if (__OFSUB__(alignment, 1))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v3 = *v2;
  v4 = *v2 & (alignment - 1);
  if (v4)
  {
    v5 = alignment - v4;
    if (__OFSUB__(alignment, v4))
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v6 = v3 + v5;
    if (size < 0)
    {
LABEL_11:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else
  {
    v5 = 0;
    v6 = *v2;
    if (size < 0)
    {
      goto LABEL_11;
    }
  }

  v7 = v2[1] - v3;
  v8 = __OFSUB__(v7, size);
  v9 = v7 - size;
  if (v8)
  {
    goto LABEL_13;
  }

  v8 = __OFSUB__(v9, v5);
  v10 = v9 - v5;
  if (v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 0)
  {
    goto LABEL_11;
  }

  alignment = v6 + size;
  *v2 = v6 + size;
  v2[1] = v6 + size + v10;
  size = v6;
LABEL_16:
  result._end.value._rawValue = alignment;
  result._position.value._rawValue = size;
  return result;
}

void swift_getAtPartialKeyPath(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a2;
  (*(*a2 + 104))();
  v8 = v7;
  v10 = type metadata accessor for KeyPath(0, *(v6 + 120), v7, v9);
  if (!swift_dynamicCastClass(a2, v10))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  a3[3] = v8;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a3);
  KeyPath._projectReadOnly(from:)(a1, boxed_opaque_existential_0Tm);
}

double swift_getAtAnyKeyPath@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 1);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(*v12 + 104))(v9);
  v32 = v14;
  v15 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - v16;
  (*(v8 + 16))(v11, a1, a3);
  v20 = type metadata accessor for Optional(0, v13, v18, v19);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v31 - v22;
  v24 = swift_dynamicCast((&v31 - v22), v11, a3, v13, 6uLL);
  v25 = *(v15 + 56);
  if (v24)
  {
    v25(v23, 0, 1, v13);
    (*(v15 + 32))(v17, v23, v13);
    v26 = v32;
    v28 = type metadata accessor for KeyPath(0, v13, v32, v27);
    if (!swift_dynamicCastClass(a2, v28))
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    *(a4 + 24) = v26;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a4);
    KeyPath._projectReadOnly(from:)(v17, boxed_opaque_existential_0Tm);
    (*(v15 + 8))(v17, v13);
  }

  else
  {
    v25(v23, 1, 1, v13);
    (*(v21 + 8))(v23, v20);
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

void **_swift_modifyAtWritableKeyPath_impl(void **a1, uint64_t *a2)
{
  v4 = *a2;
  if ((*(*a2 + 144))() != 2)
  {
    return WritableKeyPath._projectMutableAddress(from:)(a1);
  }

  v10 = 0;
  v5 = specialized KeyPathBuffer.init(base:)((a2 + 3));
  specialized closure #1 in ReferenceWritableKeyPath._projectMutableAddress(from:)(v5, v7, v6 & 0x10101, a1, &v10, *(v4 + 152), *(v4 + 160), &v9);
  return v9;
}

char *_swift_modifyAtReferenceWritableKeyPath_impl(__int128 *a1, uint64_t *a2)
{
  v3 = *a2;
  v9 = 0;
  v4 = specialized KeyPathBuffer.init(base:)((a2 + 3));
  specialized closure #1 in ReferenceWritableKeyPath._projectMutableAddress(from:)(v4, v6, v5 & 0x10101, a1, &v9, *(v3 + 176), *(v3 + 184), &v8);
  return v8;
}

void swift_setAtWritableKeyPath(__int128 *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  if ((*(*a2 + 144))() == 2)
  {
    v15 = 0;
    v7 = specialized KeyPathBuffer.init(base:)((a2 + 3));
    v8 = *(v6 + 160);
    specialized closure #1 in ReferenceWritableKeyPath._projectMutableAddress(from:)(v7, v10, v9 & 0x10101, a1, &v15, *(v6 + 152), v8, &v14);
    v11 = v15;
    (*(*(v8 - 8) + 40))(v14, a3, v8);
  }

  else
  {
    v12 = WritableKeyPath._projectMutableAddress(from:)(a1);
    v11 = v13;
    (*(*(*(v6 + 160) - 8) + 40))(v12, a3, *(v6 + 160));
  }

  swift_unknownObjectRelease(v11);
}

void swift_setAtReferenceWritableKeyPath(__int128 *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v12 = 0;
  v6 = specialized KeyPathBuffer.init(base:)((a2 + 3));
  v7 = *(v5 + 184);
  specialized closure #1 in ReferenceWritableKeyPath._projectMutableAddress(from:)(v6, v9, v8 & 0x10101, a1, &v12, *(v5 + 176), v7, &v11);
  v10 = v12;
  (*(*(v7 - 8) + 40))(v11, a3, v7);

  swift_unknownObjectRelease(v10);
}

uint64_t _AppendKeyPath<>.appending(path:)(atomic_ullong *a1)
{
  v2 = v1;
  v4 = (*(*v1 + 104))();
  v6 = v5;
  if (v5 != (*(*a1 + 104))())
  {
    return 0;
  }

  v10 = v7;
  v11 = type metadata accessor for KeyPath(0, v4, v6, v8);
  if (!swift_dynamicCastClass(v2, v11) || (v13 = type metadata accessor for KeyPath(0, v6, v10, v12), !swift_dynamicCastClass(a1, v13)) || (v15 = type metadata accessor for KeyPath(0, v4, v10, v14), v16 = _appendingKeyPaths<A, B, C, D>(root:leaf:)(v2, a1, v15), v18 = v16, _processOffsetForAppendedKeyPath(appendedKeyPath:root:leaf:)(&v18, v2, a1), v17 = type metadata accessor for AnyKeyPath(), !swift_dynamicCastClass(v16, v17)))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v16;
}

uint64_t _tryToAppendKeyPaths<A>(root:leaf:)(atomic_ullong *a1, atomic_ullong *a2, uint64_t a3)
{
  v6 = (*(*a1 + 104))();
  v8 = v7;
  if (v7 == (*(*a2 + 104))())
  {
    return open3 #1 <A><A1><A2><A3>(_:) in open2 #1 <A><A1><A2>(_:) in open #1 <A><A1>(_:) in _tryToAppendKeyPaths<A>(root:leaf:)(a1, a2, a3, v6, v8, v9);
  }

  else
  {
    return 0;
  }
}

uint64_t _AppendKeyPath.appending<A>(path:)(atomic_ullong *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = (*(*v1 + 104))();
  v7 = v6;
  if (v6 != (*(*a1 + 104))())
  {
    return 0;
  }

  v12 = v8;
  v13 = type metadata accessor for PartialKeyPath(0, *(v4 + 120), v9, v10);
  return open3 #1 <A><A1><A2><A3>(_:) in open2 #1 <A><A1><A2>(_:) in open #1 <A><A1>(_:) in _tryToAppendKeyPaths<A>(root:leaf:)(v2, a1, v13, v5, v7, v12);
}

uint64_t _AppendKeyPath.appending<A, B, C>(path:)(atomic_ullong *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *a1;
  v6 = (*(*v1 + 104))();
  v8 = v7;
  if (v7 != (*(*a1 + 104))())
  {
    return 0;
  }

  v12 = v9;
  v13 = type metadata accessor for KeyPath(0, *(v4 + 120), *(v5 + 136), v10);
  return open3 #1 <A><A1><A2><A3>(_:) in open2 #1 <A><A1><A2>(_:) in open #1 <A><A1>(_:) in _tryToAppendKeyPaths<A>(root:leaf:)(v2, a1, v13, v6, v8, v12);
}

{
  v2 = v1;
  v4 = *v1;
  v5 = *a1;
  v6 = (*(*v1 + 104))();
  v8 = v7;
  if (v7 != (*(*a1 + 104))())
  {
    return 0;
  }

  v12 = v9;
  v13 = type metadata accessor for KeyPath(0, v6, v8, v10);
  if (!swift_dynamicCastClass(v2, v13) || (v15 = type metadata accessor for KeyPath(0, v8, v12, v14), !swift_dynamicCastClass(a1, v15)) || (v17 = type metadata accessor for KeyPath(0, v6, v12, v16), v18 = _appendingKeyPaths<A, B, C, D>(root:leaf:)(v2, a1, v17), v21 = v18, _processOffsetForAppendedKeyPath(appendedKeyPath:root:leaf:)(&v21, v2, a1), v20 = type metadata accessor for ReferenceWritableKeyPath(0, *(v4 + 120), *(v5 + 184), v19), !swift_dynamicCastClass(v18, v20)))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v18;
}

uint64_t _AppendKeyPath.appending<A, B, C>(path:)(atomic_ullong *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for KeyPath(0, *(a2 + 128), *(*a1 + 136), a4);

  return _appendingKeyPaths<A, B, C, D>(root:leaf:)(v4, a1, v6);
}

{
  v6 = type metadata accessor for ReferenceWritableKeyPath(0, *(*v4 + 128), *(*a1 + 184), a4);

  return _appendingKeyPaths<A, B, C, D>(root:leaf:)(v4, a1, v6);
}

{
  v6 = type metadata accessor for WritableKeyPath(0, *(*v4 + 152), *(*a1 + 160), a4);

  return _appendingKeyPaths<A, B, C, D>(root:leaf:)(v4, a1, v6);
}

{
  v6 = type metadata accessor for ReferenceWritableKeyPath(0, *(*v4 + 152), *(*a1 + 184), a4);

  return _appendingKeyPaths<A, B, C, D>(root:leaf:)(v4, a1, v6);
}

{
  v6 = type metadata accessor for ReferenceWritableKeyPath(0, *(*v4 + 176), *(*a1 + 160), a4);

  return _appendingKeyPaths<A, B, C, D>(root:leaf:)(v4, a1, v6);
}

uint64_t _appendingKeyPaths<A, B, C, D>(root:leaf:)(atomic_ullong *a1, atomic_ullong *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = (*(*a1 + 144))();
  v9 = (*(v6 + 144))();
  if (!v9)
  {
    goto LABEL_6;
  }

  if (v9 != 1)
  {
LABEL_7:
    v10 = type metadata accessor for ReferenceWritableKeyPath(0, *(a3 + 128), *(a3 + 136), v8);
    goto LABEL_8;
  }

  if (!v7)
  {
LABEL_6:
    v10 = type metadata accessor for KeyPath(0, *(a3 + 128), *(a3 + 136), v8);
    goto LABEL_8;
  }

  if (v7 != 1)
  {
    goto LABEL_7;
  }

  v10 = type metadata accessor for WritableKeyPath(0, *(a3 + 128), *(a3 + 136), v8);
LABEL_8:
  v11 = v10;
  v12 = specialized KeyPathBuffer.init(base:)((a1 + 3));
  v14 = v13;
  v16 = v15;
  v99 = v12;
  v100 = v13;
  v101 = v15 & 0x101;
  v102 = v17 & 1;
  v18 = specialized KeyPathBuffer.init(base:)((a2 + 3));
  v21 = *a1;
  v104 = v18;
  v105 = v19;
  if (!v18 || (v22 = v19 - v18, v19 == v18))
  {
    v23 = a1;
    if (!swift_dynamicCastClass(a1, a3))
    {
      goto LABEL_141;
    }

    goto LABEL_15;
  }

  if (!v12 || (v24 = v14 - v12, v14 == v12))
  {
    v23 = a2;
    if (!swift_dynamicCastClass(a2, a3))
    {
      goto LABEL_141;
    }

LABEL_15:
    v23;
    goto LABEL_16;
  }

  v26 = a1[2];
  v98 = v20;
  v92 = v21;
  v93 = v19;
  v27 = 0;
  if ((v26 & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

  if (v26)
  {
    v28 = a2[2];
    __n = 0;
    v29 = 0;
    if (v28 < 1)
    {
      goto LABEL_28;
    }

    v30 = _swift_stdlib_strlen(v26);
    v31 = _swift_stdlib_strlen(v28);
    __n = v30;
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

    v27 = v31;
    v33 = __OFADD__(v32, v31);
    v34 = v32 + v31;
    if (v33)
    {
LABEL_161:
      __break(1u);
      goto LABEL_162;
    }

    v29 = v34 + 1;
    if (!__OFADD__(v34, 1))
    {
LABEL_28:
      v35 = v24 + 7;
      if (!__OFADD__(v24, 7))
      {
        goto LABEL_29;
      }

LABEL_144:
      __break(1u);
      goto LABEL_93;
    }

    __break(1u);
LABEL_27:
    __n = 0;
    v29 = 0;
    goto LABEL_28;
  }

  __n = 0;
  v29 = 0;
  v35 = v24 + 7;
  if (__OFADD__(v24, 7))
  {
    goto LABEL_144;
  }

LABEL_29:
  v36 = v35 & 0xFFFFFFFFFFFFFFF8;
  v33 = __OFADD__(v36, v22);
  v37 = v36 + v22;
  if (v33)
  {
    __break(1u);
    goto LABEL_151;
  }

  v38 = v37 + 8;
  if (__OFADD__(v37, 8))
  {
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  v39 = v37 + 16;
  if (__OFADD__(v38, 8))
  {
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  v96 = v38;
  if (__OFADD__(v39, 7))
  {
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  v40 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = v40 + 8;
  if (__OFADD__(v40, 8))
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  v42 = v41 + v29;
  if (__OFADD__(v41, v29))
  {
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  __dst = v29;
  v90 = v27;
  v43 = v42 + 3;
  if (__OFADD__(v42, 3))
  {
LABEL_156:
    __break(1u);
    goto LABEL_157;
  }

  v44 = v43 & 0xFFFFFFFFFFFFFFFCLL;
  v45 = swift_allocObject(v11, (((*(v11 + 48) + 3) & 0x1FFFFFFFCLL) + (v43 & 0xFFFFFFFFFFFFFFFCLL)), *(v11 + 52) | 3);
  v45[2] = 0;
  if ((v43 & 0x8000000000000000) != 0)
  {
    goto LABEL_93;
  }

  v23 = v45;
  v46 = v45 + 3;
  if (__dst < 1)
  {
    v48 = 0;
    v47 = v46 + v44;
  }

  else
  {
    if ((v41 & 0x8000000000000000) != 0)
    {
      goto LABEL_93;
    }

    v47 = v46 + v41;
    v48 = v46 + v41;
  }

  into._position.value._rawValue = v45 + 3;
  into._end.value._rawValue = v47;
  v49 = (*(*a2 + 144))();
  v50 = v49;
  if (v16)
  {
    if ((v16 & 0x100) == 0)
    {
      v51 = v96;
      if ((v96 & 0x8000000000000000) != 0 || HIDWORD(v96))
      {
        goto LABEL_157;
      }

      if (v98)
      {
        v52 = v49;
        v51 = v96 | 0x80000000;
        goto LABEL_51;
      }

LABEL_50:
      v52 = v49;
LABEL_51:
      if (v52 != 2)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    if ((v96 & 0x8000000000000000) != 0 || HIDWORD(v96))
    {
      goto LABEL_157;
    }

    if (v98)
    {
      LODWORD(v51) = v96 | 0x80000000;
    }

    else
    {
      LODWORD(v51) = v96;
    }
  }

  else
  {
    if ((v16 & 0x100) == 0)
    {
      v51 = v96;
      if ((v96 & 0x8000000000000000) != 0 || HIDWORD(v96))
      {
        goto LABEL_157;
      }

      goto LABEL_50;
    }

    LODWORD(v51) = v96;
    if ((v96 & 0x8000000000000000) != 0 || HIDWORD(v96))
    {
      goto LABEL_157;
    }
  }

LABEL_60:
  v51 = v51 | 0x40000000;
LABEL_61:
  __dsta = v48;
  v53 = KeyPathBuffer.Builder.pushRaw(size:alignment:)(4, 4);
  _s54_swift_se0349_UnsafeMutableRawBufferPointer_storeBytess0E16KeyPathComponentV6HeaderV_Tt1g5Tm(v51, 0, v53._position.value._rawValue, v53._end.value._rawValue);
  KeyPathBuffer.Builder.pushRaw(size:alignment:)(4, 4);
  if (v14 >= 0xFFFFFFFFFFFFFFF9)
  {
    __break(1u);
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  v54 = ((v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (!v54)
  {
    goto LABEL_157;
  }

  v55 = v50;
  v97 = *v54;
  while (1)
  {
    v56 = *_ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs19RawKeyPathComponentV6HeaderV_Tt0g5(&v99, 1);
    if ((v56 & 0x80000000) != 0)
    {
      HIBYTE(v101) = 0;
    }

    v57 = v99;
    v58 = RawKeyPathComponent.Header.kind.getter(v56);
    if ((v58 - 4) < 3)
    {
LABEL_70:
      v59 = 0;
      v60 = 0;
      if (!v57)
      {
        goto LABEL_77;
      }

      goto LABEL_76;
    }

    if ((v58 - 1) >= 2)
    {
      v59 = 28;
      if ((v56 & 0x400000) == 0)
      {
        v59 = 20;
      }

      if ((v56 & 0x80000) != 0)
      {
        v65 = 24;
        if ((v56 & 0x400000) == 0)
        {
          v65 = 16;
        }

        v66 = v57 + v65 + 4;
        if ((v66 & 7) != 0)
        {
LABEL_148:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v59 += ((v56 >> 1) & 8) + *v66 + 16;
        if (v59 < 0)
        {
          goto LABEL_93;
        }

        goto LABEL_76;
      }
    }

    else
    {
      if ((~v56 & 0x7FFFFF) != 0)
      {
        goto LABEL_70;
      }

      v59 = 4;
    }

    if (!v57)
    {
      goto LABEL_93;
    }

LABEL_76:
    v60 = v59;
LABEL_77:
    _ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs4Int8V_Tt0g5Tm(&v99, v60);
    if (!v99 || v100 == v99)
    {
      break;
    }

    v61 = *_ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFypXp_Tt0g5(&v99, 1);
    v63 = (v98 & 0x100) == 0 && (v56 & 0x80000000) != 0;
    RawKeyPathComponent.clone(into:endOfReferencePrefix:)(&into, v63);
    if (!v61)
    {
      goto LABEL_101;
    }

    v64 = KeyPathBuffer.Builder.pushRaw(size:alignment:)(8, 8);
    if (!v64._position.value._rawValue || v64._end.value._rawValue - v64._position.value._rawValue <= 7)
    {
      goto LABEL_93;
    }

    *v64._position.value._rawValue = v61;
  }

  v68 = (v55 == 2 || (v56 & 0x80000000) != 0) && (v98 & 0x100) == 0;
  RawKeyPathComponent.clone(into:endOfReferencePrefix:)(&into, v68);
LABEL_101:
  v69 = *(v92 + 136);
  v70 = KeyPathBuffer.Builder.pushRaw(size:alignment:)(8, 8);
  _s54_swift_se0349_UnsafeMutableRawBufferPointer_storeBytesSi_Tt1g5Tm(v69, 0, v70._position.value._rawValue, v70._end.value._rawValue);
  if (v93 >= 0xFFFFFFFFFFFFFFF9)
  {
    goto LABEL_159;
  }

  v71 = ((v93 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (!v71)
  {
    goto LABEL_157;
  }

  v72 = *v71;
  while (2)
  {
    v73 = _ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs19RawKeyPathComponentV6HeaderV_Tt0g5(&v104, 1);
    v74 = *v73;
    v75 = v104;
    v76 = RawKeyPathComponent.Header.kind.getter(*v73);
    if ((v76 - 4) < 3)
    {
      goto LABEL_108;
    }

    if ((v76 - 1) >= 2)
    {
      v77 = 28;
      if ((v74 & 0x400000) == 0)
      {
        v77 = 20;
      }

      if ((v74 & 0x80000) == 0)
      {
        goto LABEL_113;
      }

      v79 = 24;
      if ((v74 & 0x400000) == 0)
      {
        v79 = 16;
      }

      v80 = v75 + v79 + 4;
      if ((v80 & 7) != 0)
      {
        goto LABEL_148;
      }

      v77 += ((v74 >> 1) & 8) + *v80 + 16;
      if (v77 < 0)
      {
        goto LABEL_93;
      }

LABEL_119:
      v78 = v77;
    }

    else
    {
      if ((~v74 & 0x7FFFFF) == 0)
      {
        v77 = 4;
LABEL_113:
        if (!v75)
        {
          goto LABEL_93;
        }

        goto LABEL_119;
      }

LABEL_108:
      v77 = 0;
      v78 = 0;
      if (v75)
      {
        goto LABEL_119;
      }
    }

    v81 = v105 - v75 - v78;
    if (__OFSUB__(v105 - v75, v78))
    {
      __break(1u);
      goto LABEL_93;
    }

    if (v81 < 0)
    {
      goto LABEL_93;
    }

    v104 = v75 + v78;
    if (v81)
    {
      v82 = *_ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFypXp_Tt0g5(&v104, 1);
      RawKeyPathComponent.clone(into:endOfReferencePrefix:)(&into, (v74 & 0x80000000) != 0);
      if (!v82)
      {
        goto LABEL_128;
      }

      v83 = KeyPathBuffer.Builder.pushRaw(size:alignment:)(8, 8);
      if (!v83._position.value._rawValue || v83._end.value._rawValue - v83._position.value._rawValue <= 7)
      {
        goto LABEL_93;
      }

      *v83._position.value._rawValue = v82;
      continue;
    }

    break;
  }

  RawKeyPathComponent.clone(into:endOfReferencePrefix:)(&into, (v74 & 0x80000000) != 0);
LABEL_128:
  if (v72 <= v97)
  {
    v84 = v97;
  }

  else
  {
    v84 = v72;
  }

  v85 = KeyPathBuffer.Builder.pushRaw(size:alignment:)(8, 8);
  _s54_swift_se0349_UnsafeMutableRawBufferPointer_storeBytesSi_Tt1g5Tm(v84, 0, v85._position.value._rawValue, v85._end.value._rawValue);
  v86 = a1[2];
  if ((v86 & 0x8000000000000000) == 0)
  {
    v87 = a2[2];
    if ((v87 & 0x8000000000000000) == 0)
    {
      if (__dsta)
      {
        if ((__n & 0x8000000000000000) != 0)
        {
          goto LABEL_157;
        }

        memcpy(__dsta, v86, __n);
        __dsta[__n] = 46;
        if (!__OFADD__(__n, 1))
        {
          if ((v90 & 0x8000000000000000) == 0)
          {
            memcpy(&__dsta[__n + 1], v87, v90);
            v23[2] = __dsta;
            v88 = __n + v90;
            if (!__OFADD__(__n, v90))
            {
              v33 = __OFADD__(v88, 1);
              v89 = v88 + 1;
              if (!v33)
              {
                __dsta[v89] = 0;
                goto LABEL_140;
              }

LABEL_164:
              __break(1u);
LABEL_93:
              _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

LABEL_163:
            __break(1u);
            goto LABEL_164;
          }

LABEL_157:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

LABEL_162:
        __break(1u);
        goto LABEL_163;
      }
    }
  }

LABEL_140:
  if (!swift_dynamicCastClass(v23, a3))
  {
LABEL_141:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_16:
  v99 = v23;
  _processOffsetForAppendedKeyPath(appendedKeyPath:root:leaf:)(&v99, a1, a2);

  return swift_dynamicCastClassUnconditional(v23, a3, 0, 0, 0);
}

uint64_t _processOffsetForAppendedKeyPath(appendedKeyPath:root:leaf:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    if (v3 < 0)
    {
      v4 = *(a3 + 16);
      if (v4 < 0)
      {
        v5 = ~v3;
        v6 = ~v4;
        v7 = __OFADD__(v5, v6);
        v8 = v5 + v6;
        if (v7)
        {
          __break(1u);
        }

        else if ((v8 & 0x8000000000000000) == 0)
        {
          *(*result + 16) = ~v8;
        }
      }
    }
  }

  return result;
}

uint64_t open3 #1 <A><A1><A2><A3>(_:) in open2 #1 <A><A1><A2>(_:) in open #1 <A><A1>(_:) in _tryToAppendKeyPaths<A>(root:leaf:)(atomic_ullong *a1, atomic_ullong *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for KeyPath(0, a4, a5, a4);
  if (!swift_dynamicCastClass(a1, v12) || (v14 = type metadata accessor for KeyPath(0, a5, a6, v13), !swift_dynamicCastClass(a2, v14)) || (v16 = type metadata accessor for KeyPath(0, a4, a6, v15), v17 = _appendingKeyPaths<A, B, C, D>(root:leaf:)(a1, a2, v16), v19 = v17, _processOffsetForAppendedKeyPath(appendedKeyPath:root:leaf:)(&v19, a1, a2), !swift_dynamicCastClass(v17, a3)))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v17;
}

Swift::UnsafeRawPointer __swiftcall _swift_getKeyPath(pattern:arguments:)(Swift::UnsafeMutableRawPointer pattern, Swift::UnsafeRawPointer arguments)
{
  if (((pattern._rawValue + 20) & 3) != 0)
  {
    goto LABEL_17;
  }

  if ((*(pattern._rawValue + 23) & 0x1F) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((pattern._rawValue & 3) != 0)
  {
LABEL_17:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = *pattern._rawValue;
  if (v3)
  {
    v4 = (pattern._rawValue + v3);
    explicit = atomic_load_explicit((pattern._rawValue + v3), memory_order_acquire);
    if (explicit)
    {
      explicit;
      return explicit;
    }
  }

  else
  {
    v4 = 0;
  }

  _getKeyPathClassAndInstanceSizeFromPattern(_:_:)(pattern._rawValue + 4, arguments._rawValue, &v14);
  v14 = 0;
  v15 = 1;
  v6 = MEMORY[0x1EEE9AC00](v16);
  v7 = static AnyKeyPath._create(capacityInBytes:initializedBy:)(v6, partial apply for closure #1 in _swift_getKeyPath(pattern:arguments:));
  explicit = v7;
  v10 = *(pattern._rawValue + 4);
  v9 = pattern._rawValue + 16;
  v8 = v10;
  if (v10)
  {
    v11 = &v9[v8];
LABEL_12:
    v7[2] = v11;
    goto LABEL_13;
  }

  v7[2] = 0;
  if ((v15 & 1) == 0)
  {
    v11 = ~v14;
    goto LABEL_12;
  }

LABEL_13:
  if (v4)
  {
    v7;
    v12 = 0;
    atomic_compare_exchange_strong_explicit(v4, &v12, explicit, memory_order_release, memory_order_relaxed);
    if (v12)
    {
      v12;
      explicit, 2;
      return v12;
    }
  }

  return explicit;
}

uint64_t _Pointer.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a1)
  {
    (*(a3 + 56))(a4, a1, a2);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = *(*(a2 - 8) + 56);

  return v7(a4, v6, 1, a2);
}

uint64_t _getKeyPathClassAndInstanceSizeFromPattern(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v12 = xmmword_18071DC60;
  LOWORD(v13) = 1;
  *(&v13 + 1) = 0;
  v14 = 0uLL;
  *&v15 = a2;
  DWORD2(v15) = 0;
  v16 = &_swiftEmptyArrayStorage;
  specialized _walkKeyPathPattern<A>(_:walker:)(a1, &v12);
  if (BYTE1(v13) == 1)
  {
    LOBYTE(v13) = 0;
  }

  v5 = *(&v13 + 1);
  if (!*(&v13 + 1) || !v14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v13)
  {
    if (v13 == 1)
    {
      v6 = type metadata accessor for WritableKeyPath(0, *(&v13 + 1), v14, v4);
    }

    else
    {
      v6 = type metadata accessor for ReferenceWritableKeyPath(0, *(&v13 + 1), v14, v4);
    }
  }

  else
  {
    v6 = type metadata accessor for KeyPath(0, *(&v13 + 1), v14, v4);
  }

  v7 = v6;
  v8 = v12;
  v10[2] = v14;
  v10[3] = v15;
  v11 = v16;
  v10[0] = v12;
  v10[1] = v13;
  result = outlined destroy of GetKeyPathClassAndInstanceSizeFromPattern(v10);
  *a3 = v7;
  *(a3 + 8) = v5;
  *(a3 + 16) = v8;
  *(a3 + 32) = 7;
  return result;
}

unint64_t _instantiateKeyPathBuffer(_:_:_:_:_:)(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 - a2 - 8 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8 = *(*(a4 - 8) + 64);
  *&v22 = a2 + 2;
  *(&v22 + 1) = a3;
  *&v23 = 0;
  *(&v23 + 1) = a5;
  *&v24 = a4;
  DWORD2(v24) = 0;
  *&v25 = &_swiftEmptyArrayStorage;
  *(&v25 + 1) = v8;
  LOBYTE(v26) = 1;
  *(&v26 + 1) = 0;
  v27 = 0;
  specialized _walkKeyPathPattern<A>(_:walker:)(a1, &v22);
  v9 = a6 - 8;
  if (a6 - 8 < 0 || HIDWORD(v9))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v10 = *(&v26 + 1);
  v11 = v25;
  v12 = *(v25 + 16);
  if (v26)
  {
    LODWORD(v9) = v9 | 0x80000000;
  }

  if (*(&v26 + 1))
  {
    if (v12 == 1)
    {
      v13 = 1610612736;
    }

    else
    {
      v13 = 0x40000000;
    }

    *a2 = v9 | v13;
    if ((v10 & 3) != 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    *v10 |= 0x80000000;
    v14 = *(v11 + 16);
    if (!v14)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  if (v12 == 1)
  {
    *a2 = v9 | 0x20000000;
    v14 = *(v11 + 16);
    if (!v14)
    {
      goto LABEL_26;
    }
  }

  else
  {
    *a2 = v9;
    v14 = *(v11 + 16);
    if (!v14)
    {
LABEL_26:
      v17 = 0;
      v18 = DWORD2(v24);
      goto LABEL_27;
    }
  }

LABEL_17:
  v15 = (v11 + 32);
  v16 = 1;
  while ((v16 & 1) == 0)
  {
    if (v14 == 1)
    {
      goto LABEL_28;
    }

    v16 = 0;
LABEL_23:
    ++v15;
    if (!--v14)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  v16 = *v15;
  if (v14 != 1)
  {
    goto LABEL_23;
  }

  if (*v15)
  {
    goto LABEL_26;
  }

LABEL_28:
  v18 = 0;
  v17 = 1;
LABEL_27:
  v20[2] = v24;
  v20[3] = v25;
  v20[4] = v26;
  v21 = v27;
  v20[0] = v22;
  v20[1] = v23;
  outlined destroy of InstantiateKeyPathBuffer(v20);
  LOBYTE(v22) = v17;
  return v18 | (v17 << 32);
}

Swift::Int __swiftcall _getSymbolicMangledNameLength(_:)(Swift::UnsafeRawPointer a1)
{
  v1 = *a1._rawValue;
  rawValue = a1._rawValue;
  if (*a1._rawValue)
  {
    rawValue = a1._rawValue;
    do
    {
      if (v1 > 0x1F)
      {
        v3 = 1;
      }

      else
      {
        v3 = 9;
      }

      if (v1 <= 0x17)
      {
        v4 = 5;
      }

      else
      {
        v4 = v3;
      }

      rawValue += v4;
      v1 = *rawValue;
    }

    while (*rawValue);
  }

  return rawValue - a1._rawValue;
}

Swift::UnsafeRawPointer __swiftcall _resolveKeyPathGenericArgReference(_:genericEnvironment:arguments:)(Swift::UnsafeRawPointer _, Swift::UnsafeRawPointer_optional genericEnvironment, Swift::UnsafeRawPointer_optional arguments)
{
  if ((_._rawValue & 1) == 0)
  {
    return _;
  }

  v4 = _._rawValue - 1;
  v3 = *(_._rawValue - 1);
  v5 = _._rawValue - 1;
  if (*(_._rawValue - 1))
  {
    if (v3 == 255)
    {
      v5 = _._rawValue - 1;
      if (*_._rawValue == 9)
      {
        v6 = (_._rawValue + *(_._rawValue + 1) + 1);
        if (v6)
        {

          return v6(arguments.value._rawValue);
        }

LABEL_23:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    else
    {
      v5 = _._rawValue - 1;
    }

    do
    {
      v7 = 9;
      if (v3 > 0x1F)
      {
        v7 = 1;
      }

      v8 = v3 > 0x17;
      v9 = 5;
      if (v8)
      {
        v9 = v7;
      }

      v5 += v9;
      v3 = *v5;
    }

    while (*v5);
  }

  v10 = v5 - v4;
  if (v5 - v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v10 < 0)
  {
    goto LABEL_23;
  }

  if (genericEnvironment.value._rawValue)
  {
    _._rawValue = swift_getTypeByMangledNameInContext(_._rawValue - 1, v5 - v4, genericEnvironment.value._rawValue & 0xFFFFFFFFFFFFFFFELL, arguments.value._rawValue);
  }

  else
  {
    _._rawValue = swift_getTypeByMangledNameInEnvironment(_._rawValue - 1, v5 - v4, genericEnvironment.value._rawValue, arguments.value._rawValue);
  }

  if (!_._rawValue)
  {
    v11 = validateUTF8(_:)(v4, v10);
    if (v11 < 0)
    {
      v15 = repairUTF8(_:firstKnownBrokenRange:)(v4, v10, v12, v13);
    }

    else
    {
      v15 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v4, v10, v11 & 1, v14);
    }

    v17 = v15;
    v18 = v16;
    v19 = _StringGuts.init(_initialCapacity:)(41);
    v29 = v20;
    v67 = v19;
    v68 = v20;
    v30 = 0x8000000180671EC0 | 0x8000000000000000;
    v31 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v31 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v31 || (v19 & ~v20 & 0x2000000000000000) != 0)
    {
      if ((0x8000000180671EC0 & 0x2000000000000000 & v20) != 0 && (v41 = specialized _SmallString.init(_:appending:)(v19, v20, 0xD000000000000026, 0x8000000180671EC0 | 0x8000000000000000), (v43 & 1) == 0))
      {
        v32 = v41;
        v45 = v42;
        v29;
        0x8000000180671EC0 | 0x8000000000000000;
        v67 = v32;
        v68 = v45;
        v30 = v45;
      }

      else
      {
        if ((0x8000000180671EC0 & 0x2000000000000000) != 0)
        {
          v44 = (0x8000000180671EC0 >> 56) & 0xF;
        }

        else
        {
          v44 = 38;
        }

        _StringGuts.append(_:)(0xD000000000000026, 0x8000000180671EC0 | 0x8000000000000000, 0, v44, v21, v22, v23, v24, v25, v26, v27, v28);
        0x8000000180671EC0 | 0x8000000000000000;
        v32 = v67;
        v30 = v68;
      }
    }

    else
    {
      v32 = 0xD000000000000026;
      v20;
      v67 = 0xD000000000000026;
      v68 = 0x8000000180671EC0 | 0x8000000000000000;
    }

    v46 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v46 = v32 & 0xFFFFFFFFFFFFLL;
    }

    if (!v46 && (v32 & ~v30 & 0x2000000000000000) == 0)
    {
      v18;
      v30;
      v67 = v17;
      v68 = v18;
      goto LABEL_53;
    }

    if ((v30 & 0x2000000000000000) != 0)
    {
      if ((v18 & 0x2000000000000000) != 0)
      {
        v56 = specialized _SmallString.init(_:appending:)(v32, v30, v17, v18);
        if ((v58 & 1) == 0)
        {
          v65 = v56;
          v66 = v57;
          v30;
          v67 = v65;
          v68 = v66;
          v18 = v66;
          v17 = v65;
LABEL_53:
          v59 = HIBYTE(v18) & 0xF;
          if ((v18 & 0x2000000000000000) == 0)
          {
            v59 = v17 & 0xFFFFFFFFFFFFLL;
          }

          if (v59 || (v17 & ~v18 & 0x2000000000000000) != 0)
          {
            if ((v18 & 0x2000000000000000) != 0 && (v62 = specialized _SmallString.init(_:appending:)(v17, v18, 0x27uLL, 0xE100000000000000), (v64 & 1) == 0))
            {
              v61 = v62;
              v60 = v63;
              v18;
              0xE100000000000000;
            }

            else
            {
              _StringGuts.append(_:)(39, 0xE100000000000000, 0, 1, v47, v48, v49, v50, v51, v52, v53, v54);
              0xE100000000000000;
              v61 = v67;
              v60 = v68;
            }
          }

          else
          {
            v18;
            v60 = 0xE100000000000000;
            v61 = 39;
          }

          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v61, v60, "Swift/KeyPath.swift", 0x13uLL, 2, 0xBDDuLL);
        }

        goto LABEL_51;
      }
    }

    else if ((v18 & 0x2000000000000000) != 0)
    {
LABEL_51:
      v55 = HIBYTE(v18) & 0xF;
      goto LABEL_52;
    }

    v55 = v17 & 0xFFFFFFFFFFFFLL;
LABEL_52:
    _StringGuts.append(_:)(v17, v18, 0, v55, v33, v34, v35, v36, v37, v38, v39, v40);
    v17 = v67;
    v18 = v68;
    goto LABEL_53;
  }

  return _;
}

uint64_t static Strideable<>.- infix(_:_:)(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  swift_getAssociatedTypeWitness(0, v6, a3, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, a3, v8, &protocol requirements base descriptor for Strideable, associated conformance descriptor for Strideable.Strideable.Stride: SignedNumeric);
  (*(AssociatedConformanceWitness + 16))(a2, v8, AssociatedConformanceWitness);
  (*(v6 + 48))(v11, a3, v6);
  return (*(v9 + 8))(v11, v8);
}

Swift::UnsafeRawPointer __swiftcall _resolveRelativeIndirectableAddress(_:_:)(Swift::UnsafeRawPointer a1, Swift::Int32 a2)
{
  if ((a2 & 1) == 0)
  {
    return (a1._rawValue + a2);
  }

  v3 = (a1._rawValue + a2 - 1);
  if ((v3 & 7) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v3->_rawValue;
}

uint64_t static Int32.- infix(_:_:)(int a1, int a2)
{
  v2 = __OFSUB__(a1, a2);
  result = (a1 - a2);
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t _ss20_loadRelativeAddress2at14fromByteOffset2asxSV_SixmtlFSV_Tt2g5(uint64_t a1, uint64_t a2)
{
  if (((a1 + a2) & 3) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *(a1 + a2) + a1 + a2;
}

Swift::UnsafeRawPointer specialized _walkKeyPathPattern<A>(_:walker:)(uint64_t a1, uint64_t *a2)
{
  RelativeAddress2at14fromByteOffset2asxSV_SixmtlFSV_Tt2g5 = _ss20_loadRelativeAddress2at14fromByteOffset2asxSV_SixmtlFSV_Tt2g5(a1, 0);
  v5 = _ss20_loadRelativeAddress2at14fromByteOffset2asxSV_SixmtlFSV_Tt2g5(a1, 4);
  v6 = _ss20_loadRelativeAddress2at14fromByteOffset2asxSV_SixmtlFSV_Tt2g5(a1, 8);
  _ss20_loadRelativeAddress2at14fromByteOffset2asxSV_SixmtlFSV_Tt2g5(a1, 12);
  a2[5] = RelativeAddress2at14fromByteOffset2asxSV_SixmtlFSV_Tt2g5;
  v7.value._rawValue = a2[6];
  *(a2 + 3) = _resolveKeyPathGenericArgReference(_:genericEnvironment:arguments:)(v5, RelativeAddress2at14fromByteOffset2asxSV_SixmtlFSV_Tt2g5, v7);
  result._rawValue = _resolveKeyPathGenericArgReference(_:genericEnvironment:arguments:)(v6, RelativeAddress2at14fromByteOffset2asxSV_SixmtlFSV_Tt2g5, v7)._rawValue;
  a2[4] = result._rawValue;
  if (((a1 + 16) & 3) != 0)
  {
    goto LABEL_141;
  }

  v9 = *(a1 + 16) & 0xFFFFFF;
  if (v9)
  {
    v10 = a1 + 20;
    v11 = (a1 + 20 + v9);
    while (1)
    {
      if ((v10 & 3) != 0)
      {
        v12 = -v10 & 3;
        v13 = (v10 + v12);
        if (__OFADD__(v10, v12))
        {
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

        v14 = &v11[-v10];
        v15 = __OFSUB__(v14, v12);
        v16 = &v14[-v12];
        if (v15)
        {
          goto LABEL_143;
        }

        if ((v16 & 0x8000000000000000) != 0)
        {
          goto LABEL_136;
        }

        if (v16)
        {
          if (!v13)
          {
            goto LABEL_136;
          }
        }

        else if (!v13)
        {
          v11 = 0;
          goto LABEL_14;
        }

        v11 = v13 + v16;
      }

      else
      {
        v13 = v10;
      }

LABEL_14:
      v17 = v11 - v13;
      v15 = __OFSUB__(v17, 4);
      v18 = v17 - 4;
      if (v15)
      {
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (v18 < 0)
      {
        goto LABEL_136;
      }

      v19 = (v13 + 1);
      v20 = v13 + v18 + 4;
      v77 = v13 + 1;
      v78 = v20;
      v21 = *v13;
      v22 = HIBYTE(*v13) & 0x7F;
      v23 = *&v21 & 0xFFFFFFLL;
      if (v22)
      {
        if ((v21 & 0x7D000000) == 0x1000000)
        {
          v24 = &v77;
          v25 = v21;
LABEL_47:
          result._rawValue = specialized visitStored #1 <A>(header:componentBuffer:) in _walkKeyPathPattern<A>(_:walker:)(v25, v24, a2);
          goto LABEL_116;
        }

        if (v22 != 2)
        {
          if (v23)
          {
            if (v23 == 1)
            {
              *(a2 + 8) = 256;
              v32 = (*a2 + 4);
              if (__OFADD__(*a2, 4))
              {
                goto LABEL_161;
              }
            }

            else
            {
              v32 = (*a2 + 4);
              if (__OFADD__(*a2, 4))
              {
                goto LABEL_163;
              }
            }
          }

          else
          {
            *(a2 + 8) = 256;
            v32 = (*a2 + 4);
            if (__OFADD__(*a2, 4))
            {
              goto LABEL_162;
            }
          }

LABEL_115:
          *a2 = v32;
          goto LABEL_116;
        }

        popComputedAccessors #1 <A>(header:componentBuffer:) in _walkKeyPathPattern<A>(_:walker:)(v21, &v77);
        v30 = v29;
        result._rawValue = popComputedArguments #1 <A>(header:componentBuffer:) in _walkKeyPathPattern<A>(_:walker:)(v21, &v77);
        if (v30)
        {
          if ((v21 & 0x800000) != 0)
          {
            goto LABEL_61;
          }

          v31 = 2;
        }

        else
        {
          v31 = 0;
        }

        *(a2 + 16) = v31;
LABEL_61:
        v50 = *a2 + 4;
        if (__OFADD__(*a2, 4))
        {
          goto LABEL_148;
        }

        *a2 = v50;
        v15 = __OFADD__(v50, 7);
        v51 = v50 + 7;
        if (v15)
        {
          goto LABEL_149;
        }

        v52 = v51 & 0xFFFFFFFFFFFFFFF8;
        v15 = __OFADD__(v52, 16);
        v53 = v52 + 16;
        if (v15)
        {
          goto LABEL_150;
        }

        *a2 = v53;
        if (v30)
        {
          v15 = __OFADD__(v53, 8);
          v53 += 8;
          if (v15)
          {
            goto LABEL_156;
          }

          *a2 = v53;
        }

        if (result._rawValue)
        {
          v54 = v53 + 16;
          if (__OFADD__(v53, 16))
          {
            goto LABEL_157;
          }

          result._rawValue = (result._rawValue)(a2[6]);
          v32 = result._rawValue + v54;
          if (__OFADD__(v54, result._rawValue))
          {
            goto LABEL_158;
          }

          goto LABEL_115;
        }

LABEL_116:
        v67 = v77;
        if (!v77)
        {
          break;
        }

        v68 = v78;
        v69 = v78 - v77;
        if (v78 == v77)
        {
          break;
        }

        if ((v77 & 3) != 0)
        {
          v70 = -v77 & 3;
          v67 = v77 + v70;
          if (__OFADD__(v77, v70))
          {
            goto LABEL_144;
          }

          v15 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v15)
          {
            goto LABEL_145;
          }

          if (v71 < 0)
          {
            goto LABEL_136;
          }

          if (v71)
          {
            if (!v67)
            {
              goto LABEL_136;
            }

LABEL_126:
            v68 = v71 + v67;
            goto LABEL_127;
          }

          if (v67)
          {
            goto LABEL_126;
          }

          v68 = 0;
        }

LABEL_127:
        v72 = v68 - v67;
        v73 = v72 - 4;
        if (__OFSUB__(v72, 4))
        {
          goto LABEL_138;
        }

        if (v73 < 0)
        {
          goto LABEL_136;
        }

        v10 = v67 + 4;
        v11 = (v67 + 4 + v73);
        v77 = v10;
        v78 = v11;
        if (__OFADD__(*a2, 7))
        {
          goto LABEL_139;
        }

        v74 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
        v15 = __OFADD__(v74, 8);
        v75 = v74 + 8;
        if (v15)
        {
          goto LABEL_140;
        }

        *a2 = v75;
        if (v11 == v10)
        {
          break;
        }
      }

      else
      {
        if ((v19 & 3) != 0)
        {
          v26 = -v19 & 3;
          v27 = &v19[v26];
          if (__OFADD__(v19, v26))
          {
            goto LABEL_147;
          }

          v28 = v18 - v26;
          if (v28 < 0)
          {
            goto LABEL_136;
          }

          if (v28)
          {
            if (!v27)
            {
              goto LABEL_136;
            }
          }

          else if (!v27)
          {
            v20 = 0;
            goto LABEL_37;
          }

          v20 = &v27[v28];
        }

        else
        {
          v27 = v19;
        }

LABEL_37:
        v33 = v20 - v27 - 4;
        if (__OFSUB__(v20 - v27, 4))
        {
          goto LABEL_146;
        }

        if (v33 < 0)
        {
          goto LABEL_136;
        }

        v34 = v27 + 4;
        v77 = (v27 + 4);
        v78 = v20;
        v35 = *v27;
        if (v35)
        {
          v37 = &v19[v35 - 1];
          if ((v37 & 7) != 0)
          {
            goto LABEL_141;
          }

          v36 = *v37;
        }

        else
        {
          v36 = &v19[v35];
        }

        if ((v36 & 3) != 0)
        {
          goto LABEL_141;
        }

        v38 = *v36;
        if (*v36)
        {
          _ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs19RawKeyPathComponentV6HeaderV_Tt0g5(&v77, *&v21 & 0xFFFFFFLL);
          v40 = v39;
          v41 = *_ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs19RawKeyPathComponentV6HeaderV_Tt0g5(&v77, 1);
          v42 = RawKeyPathComponent.Header.patternComponentBodySize.getter(v41);
          v43 = RawKeyPathComponent.Header.propertyDescriptorBodySize.getter(v38);
          v76[0] = (v36 + 1);
          v76[1] = v36 + v43 + 4;
          if ((RawKeyPathComponent.Header.kind.getter(v38) - 1) < 2u)
          {
            _ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs4Int8V_Tt0g5Tm(&v77, v42);
            v24 = v76;
            v25 = v38;
            goto LABEL_47;
          }

          popComputedAccessors #1 <A>(header:componentBuffer:) in _walkKeyPathPattern<A>(_:walker:)(v38, v76);
          v47 = v46;
          if (RawKeyPathComponent.Header.kind.getter(v41) == 3 && (v41 & 0x80000) != 0)
          {
            popComputedAccessors #1 <A>(header:componentBuffer:) in _walkKeyPathPattern<A>(_:walker:)(v41, &v77);
            result._rawValue = popComputedArguments #1 <A>(header:componentBuffer:) in _walkKeyPathPattern<A>(_:walker:)(v41, &v77);
            rawValue = result._rawValue;
            if (!v47)
            {
              goto LABEL_57;
            }

LABEL_73:
            if ((v38 & 0x800000) == 0)
            {
              v49 = 2;
              goto LABEL_75;
            }
          }

          else
          {
            result._rawValue = _ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs4Int8V_Tt0g5Tm(&v77, v42);
            rawValue = 0;
            if (v47)
            {
              goto LABEL_73;
            }

LABEL_57:
            v49 = 0;
LABEL_75:
            *(a2 + 16) = v49;
          }

          v55 = *a2 + 4;
          if (__OFADD__(*a2, 4))
          {
            goto LABEL_153;
          }

          *a2 = v55;
          v15 = __OFADD__(v55, 7);
          v56 = v55 + 7;
          if (v15)
          {
            goto LABEL_154;
          }

          v57 = v56 & 0xFFFFFFFFFFFFFFF8;
          v15 = __OFADD__(v57, 16);
          v58 = v57 + 16;
          if (v15)
          {
            goto LABEL_155;
          }

          *a2 = v58;
          if (v47)
          {
            v15 = __OFADD__(v58, 8);
            v58 += 8;
            if (v15)
            {
              goto LABEL_160;
            }

            *a2 = v58;
          }

          if (rawValue)
          {
            v59 = v58 + 16;
            v60 = __OFADD__(v58, 16);
            if (v23)
            {
              if (v60)
              {
                goto LABEL_164;
              }

              result._rawValue = rawValue(a2[6]);
              v61 = result._rawValue + v59;
              if (__OFADD__(v59, result._rawValue))
              {
                goto LABEL_165;
              }

              *a2 = v61;
              v15 = __OFADD__(v61, 7);
              v62 = (v61 + 7);
              if (v15)
              {
                goto LABEL_166;
              }

              v63 = v62 & 0xFFFFFFFFFFFFFFF8;
              v15 = __OFADD__(v63, 8);
              v64 = v63 + 8;
              if (v15)
              {
                goto LABEL_167;
              }

              if ((v40 - 0x1000000000000000) >> 61 != 7)
              {
                goto LABEL_168;
              }

              v15 = __OFADD__(v64, 8 * v40);
              v32 = (v64 + 8 * v40);
              if (v15)
              {
                goto LABEL_169;
              }
            }

            else
            {
              if (v60)
              {
                goto LABEL_170;
              }

              result._rawValue = rawValue(a2[6]);
              v32 = result._rawValue + v59;
              if (__OFADD__(v59, result._rawValue))
              {
                goto LABEL_173;
              }
            }

            goto LABEL_115;
          }

          if (v23)
          {
            v66 = v58 + 16;
            if (__OFADD__(v58, 16))
            {
              goto LABEL_171;
            }

            if ((v40 - 0x1000000000000000) >> 61 != 7)
            {
              goto LABEL_172;
            }

            v15 = __OFADD__(v66, 8 * v40);
            v32 = (v66 + 8 * v40);
            if (v15)
            {
              goto LABEL_174;
            }

            goto LABEL_115;
          }

          goto LABEL_116;
        }

        if ((v34 & 3) != 0)
        {
          v44 = -v34 & 3;
          v15 = __OFADD__(v34, v44);
          v34 += v44;
          if (v15)
          {
            goto LABEL_159;
          }

          v45 = v33 - v44;
          if (v45 < 0)
          {
            goto LABEL_136;
          }

          if (v45)
          {
            if (!v34)
            {
              goto LABEL_136;
            }
          }

          else if (!v34)
          {
            v20 = 0;
            goto LABEL_103;
          }

          v20 = &v34[v45];
        }

LABEL_103:
        v65 = v20 - v34 - 4 * v23;
        if (__OFSUB__(v20 - v34, 4 * v23))
        {
          goto LABEL_151;
        }

        if (v65 < 0)
        {
          goto LABEL_136;
        }

        v10 = &v34[4 * v23];
        v11 = (v10 + v65);
        v77 = v10;
        v78 = v10 + v65;
        if (v10 + v65 == v10)
        {
          break;
        }
      }
    }
  }

  if (__OFADD__(*a2, 7))
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
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_136:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  a2[1] = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  return result;
}

uint64_t specialized _walkKeyPathPattern<A>(_:walker:)(uint64_t a1, uint64_t *a2)
{
  RelativeAddress2at14fromByteOffset2asxSV_SixmtlFSV_Tt2g5 = _ss20_loadRelativeAddress2at14fromByteOffset2asxSV_SixmtlFSV_Tt2g5(a1, 0);
  _ss20_loadRelativeAddress2at14fromByteOffset2asxSV_SixmtlFSV_Tt2g5(a1, 4);
  v5 = _ss20_loadRelativeAddress2at14fromByteOffset2asxSV_SixmtlFSV_Tt2g5(a1, 8);
  _ss20_loadRelativeAddress2at14fromByteOffset2asxSV_SixmtlFSV_Tt2g5(a1, 12);
  a2[2] = RelativeAddress2at14fromByteOffset2asxSV_SixmtlFSV_Tt2g5;
  v6.value._rawValue = a2[3];
  v7 = *(*(_resolveKeyPathGenericArgReference(_:genericEnvironment:arguments:)(v5, RelativeAddress2at14fromByteOffset2asxSV_SixmtlFSV_Tt2g5, v6)._rawValue - 1) + 64);
  if (v7 <= a2[7])
  {
    v7 = a2[7];
  }

  a2[7] = v7;
  v8 = _sSV4load14fromByteOffset2asxSi_xmtlFs13KeyPathBufferV6HeaderV_Tt1g5(0, a1 + 16);
  v9 = a1 + 20;
  v132 = a1 + 20;
  v133 = a1 + 20 + (v8 & 0xFFFFFF);
  do
  {
    if (v133 == v9)
    {
      return specialized InstantiateKeyPathBuffer.pushDest<A>(_:)(a2[7]);
    }

    while (1)
    {
      v10 = _ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs19RawKeyPathComponentV6HeaderV_Tt0g5(&v132, 1);
      v11 = *v10;
      v12 = HIBYTE(*v10) & 0x7F;
      v13 = *v10 & 0xFFFFFF;
      if (v12)
      {
        if ((v11 & 0x7D000000) == 0x1000000)
        {
          specialized visitStored #1 <A>(header:componentBuffer:) in _walkKeyPathPattern<A>(_:walker:)(*v10, &v132);
          goto LABEL_20;
        }

        if (v12 != 2)
        {
          if (v13)
          {
            if (v13 == 1)
            {
              v49 = a2[6];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v49);
              a2[6] = v49;
              if (!isUniquelyReferenced_nonNull_native)
              {
                v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, &v49[2]->isa + 1, 1, v49);
                a2[6] = v49;
              }

              v52 = v49[2];
              v51 = v49[3];
              if (v52 >= v51 >> 1)
              {
                v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), &v52->isa + 1, 1, v49);
              }

              v49[2] = (&v52->isa + 1);
              *(&v52->info + v49) = 0;
              a2[6] = v49;
              a2[10] = *a2;
              specialized InstantiateKeyPathBuffer.pushDest<A>(_:)(67108865);
            }

            else
            {
              v98 = a2[6];
              v99 = swift_isUniquelyReferenced_nonNull_native(v98);
              a2[6] = v98;
              if (!v99)
              {
                v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, &v98[2]->isa + 1, 1, v98);
                a2[6] = v98;
              }

              v101 = v98[2];
              v100 = v98[3];
              if (v101 >= v100 >> 1)
              {
                v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), &v101->isa + 1, 1, v98);
              }

              v98[2] = (&v101->isa + 1);
              *(&v101->info + v98) = 0;
              a2[6] = v98;
              a2[10] = *a2;
              specialized InstantiateKeyPathBuffer.pushDest<A>(_:)(67108866);
            }
          }

          else
          {
            v89 = a2[6];
            v90 = swift_isUniquelyReferenced_nonNull_native(v89);
            a2[6] = v89;
            if (!v90)
            {
              v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, &v89[2]->isa + 1, 1, v89);
              a2[6] = v89;
            }

            v92 = v89[2];
            v91 = v89[3];
            if (v92 >= v91 >> 1)
            {
              v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), &v92->isa + 1, 1, v89);
            }

            v89[2] = (&v92->isa + 1);
            *(&v92->info + v89) = 0;
            a2[6] = v89;
            a2[10] = *a2;
            specialized InstantiateKeyPathBuffer.pushDest<A>(_:)(0x4000000);
          }

          goto LABEL_20;
        }

        v123 = popComputedAccessors #1 <A>(header:componentBuffer:) in _walkKeyPathPattern<A>(_:walker:)(*v10, &v132);
        LODWORD(v33) = v32;
        v35 = v34;
        v37._rawValue = v36;
        v40 = popComputedArguments #1 <A>(header:componentBuffer:) in _walkKeyPathPattern<A>(_:walker:)(v11, &v132);
        if ((v11 & 0x200000) != 0)
        {
          v41 = 1;
        }

        else
        {
          v41 = (v11 >> 19) & 2;
        }

        v42 = v11 & 0xF;
        v125 = v38;
        v127 = v39;
        _a._rawValue = v35;
        if ((v11 & 0xF) != 0)
        {
          if (v42 == 3)
          {
            v43 = 1;
          }

          else if (v42 == 2)
          {
            v43 = 2;
          }

          else
          {
            v43 = 3;
          }

          v122 = v43;
        }

        else
        {
          v122 = 0;
        }

        v93 = a2[6];
        v94 = swift_isUniquelyReferenced_nonNull_native(v93);
        a2[6] = v93;
        if (!v94)
        {
          v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, &v93[2]->isa + 1, 1, v93);
          a2[6] = v93;
        }

        v96 = v93[2];
        v95 = v93[3];
        if (v96 >= v95 >> 1)
        {
          v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v95 > 1), &v96->isa + 1, 1, v93);
        }

        v93[2] = (&v96->isa + 1);
        *(&v96->info + v93) = 0;
        a2[6] = v93;
        v97 = a2[10];
        a2[10] = *a2;
        if ((v11 & 0x800000) == 0 && v37._rawValue)
        {
          a2[9] = v97;
        }

        if ((v41 - 1) >= 2)
        {
          if (v122 > 1u)
          {
            v102 = (v123 + v33);
            if (v122 == 2)
            {
              v103 = _sSV4load14fromByteOffset2asxSi_xmtlFSVSg_Tt1g5(0, v102);
            }

            else
            {
              if (!v102)
              {
                goto LABEL_229;
              }

              v103 = v102(v6.value._rawValue);
            }

            v33 = v103;
          }

          else if (v122)
          {
            v33 = v33;
          }

          else
          {
            v33 = v123 + v33;
          }
        }

        else
        {
          v33 = v33;
        }

        if (v37._rawValue)
        {
          v105 = 12582912;
        }

        else
        {
          v105 = 0x800000;
        }

        if ((v11 & 0x800000) == 0)
        {
          v105 = (v37._rawValue != 0) << 22;
        }

        if (v37._rawValue)
        {
          v106 = 13107200;
        }

        else
        {
          v106 = 8912896;
        }

        if (v37._rawValue)
        {
          v107 = 4718592;
        }

        else
        {
          v107 = 0x80000;
        }

        if ((v11 & 0x800000) == 0)
        {
          v106 = v107;
        }

        if (v40)
        {
          v105 = v106;
        }

        if (v41)
        {
          if (v41 == 2)
          {
            v105 |= 0x100000u;
          }

          else
          {
            v105 |= 0x200000u;
          }
        }

        specialized InstantiateKeyPathBuffer.pushDest<A>(_:)(v105 | 0x2000000u);
        specialized InstantiateKeyPathBuffer.pushDest<A>(_:)(v33);
        InstantiateKeyPathBuffer.pushAddressDiscriminatedFunctionPointer(_:discriminator:)(_a, 0x6F72uLL);
        if (v37._rawValue)
        {
          if ((v11 & 0x800000) != 0)
          {
            v108 = 29801;
          }

          else
          {
            v108 = 28528;
          }

          InstantiateKeyPathBuffer.pushAddressDiscriminatedFunctionPointer(_:discriminator:)(v37, v108);
        }

        if (!v40)
        {
          goto LABEL_20;
        }

        v109 = v40(v6.value._rawValue);
        if (__OFADD__(v109, v110))
        {
          goto LABEL_226;
        }

        v111 = v109;
        specialized InstantiateKeyPathBuffer.pushDest<A>(_:)((v109 + v110) & ~v110);
        specialized InstantiateKeyPathBuffer.pushDest<A>(_:)(v125);
        if (ComputedArgumentWitnessesPtr.destroy.getter(v125))
        {
          *(a2 + 64) = 0;
        }

        v112 = *a2;
        v127(v6.value._rawValue, *a2);
        v113 = a2[1] - v112;
        v78 = __OFSUB__(v113, v111);
        v114 = v113 - v111;
        if (!v78)
        {
          if ((v114 & 0x8000000000000000) == 0)
          {
            *a2 = v112 + v111;
            a2[1] = v112 + v111 + v114;
            goto LABEL_20;
          }

LABEL_215:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
LABEL_229:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v14 = v132;
      v15 = *_ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs19RawKeyPathComponentV6HeaderV_Tt0g5(&v132, 1);
      if (v15)
      {
        v17 = (v14 + v15 - 1);
        if ((v17 & 7) != 0)
        {
          goto LABEL_213;
        }

        v16 = *v17;
      }

      else
      {
        v16 = (v14 + v15);
      }

      if ((v16 & 3) != 0)
      {
LABEL_213:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v18 = *v16;
      if (*v16)
      {
        break;
      }

      v19 = _ss12MemoryLayoutOsRi_zrlE26_roundingUpBaseToAlignmentyS2WFZs5Int32V_Tt0g5Tm(v132, v133);
      v21 = v20 - v19 - 4 * v13;
      if (__OFSUB__(v20 - v19, 4 * v13))
      {
        __break(1u);
        goto LABEL_215;
      }

      if (v21 < 0)
      {
        goto LABEL_215;
      }

      v132 = v19 + 4 * v13;
      v133 = v20;
      if (!v21)
      {
        return specialized InstantiateKeyPathBuffer.pushDest<A>(_:)(a2[7]);
      }
    }

    _ = _ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs19RawKeyPathComponentV6HeaderV_Tt0g5(&v132, *&v11 & 0xFFFFFFLL);
    v23 = v22;
    v24 = *_ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs19RawKeyPathComponentV6HeaderV_Tt0g5(&v132, 1);
    v25 = RawKeyPathComponent.Header.patternComponentBodySize.getter(v24);
    v26 = RawKeyPathComponent.Header.propertyDescriptorBodySize.getter(v18);
    __src[0] = (v16 + 1);
    __src[1] = v16 + v26 + 4;
    if ((RawKeyPathComponent.Header.kind.getter(v18) - 1) < 2u)
    {
      _ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs4Int8V_Tt0g5Tm(&v132, v25);
      specialized visitStored #1 <A>(header:componentBuffer:) in _walkKeyPathPattern<A>(_:walker:)(v18, __src);
      goto LABEL_20;
    }

    v117 = popComputedAccessors #1 <A>(header:componentBuffer:) in _walkKeyPathPattern<A>(_:walker:)(v18, __src);
    v121 = v44;
    v126._rawValue = v45;
    v120 = v46;
    if (RawKeyPathComponent.Header.kind.getter(v24) == 3 && (v24 & 0x80000) != 0)
    {
      popComputedAccessors #1 <A>(header:componentBuffer:) in _walkKeyPathPattern<A>(_:walker:)(v24, &v132);
      v124 = popComputedArguments #1 <A>(header:componentBuffer:) in _walkKeyPathPattern<A>(_:walker:)(v24, &v132);
    }

    else
    {
      _ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs4Int8V_Tt0g5Tm(&v132, v25);
      v124 = 0;
      v47 = 0;
      v48 = 0;
    }

    if ((v18 & 0x200000) != 0)
    {
      v53 = 1;
    }

    else
    {
      v53 = (v18 >> 19) & 2;
    }

    v54 = v18 & 0xF;
    v118 = v48;
    v119 = v47;
    if ((v18 & 0xF) != 0)
    {
      if (v54 == 3)
      {
        v55 = 1;
      }

      else if (v54 == 2)
      {
        v55 = 2;
      }

      else
      {
        v55 = 3;
      }

      v116 = v55;
    }

    else
    {
      v116 = 0;
    }

    if (v13)
    {
      v56 = v23;
    }

    else
    {
      v56 = 0;
    }

    v128 = v56;
    v57 = a2[6];
    v58 = swift_isUniquelyReferenced_nonNull_native(v57);
    a2[6] = v57;
    if (!v58)
    {
      v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, &v57[2]->isa + 1, 1, v57);
      a2[6] = v57;
    }

    v60 = v57[2];
    v59 = v57[3];
    if (v60 >= v59 >> 1)
    {
      v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), &v60->isa + 1, 1, v57);
    }

    v57[2] = (&v60->isa + 1);
    *(&v60->info + v57) = 0;
    a2[6] = v57;
    v61 = a2[10];
    a2[10] = *a2;
    if ((v18 & 0x800000) == 0 && v126._rawValue)
    {
      a2[9] = v61;
    }

    v62 = v23;
    if ((v53 - 1) >= 2)
    {
      v64 = v124;
      if (v116 > 1u)
      {
        if (v116 == 2)
        {
          v63 = _sSV4load14fromByteOffset2asxSi_xmtlFSVSg_Tt1g5(0, v117 + v121);
          if (!v124)
          {
            goto LABEL_79;
          }
        }

        else
        {
          v104 = (v117 + v121);
          if (!v104)
          {
            goto LABEL_229;
          }

          v63 = v104(v6.value._rawValue);
          if (!v124)
          {
            goto LABEL_79;
          }
        }
      }

      else
      {
        if (v116)
        {
          v63 = v121;
        }

        else
        {
          v63 = v117 + v121;
        }

        if (!v124)
        {
          goto LABEL_79;
        }
      }

LABEL_67:
      if ((v18 & 0x800000) != 0)
      {
        if (v126._rawValue)
        {
          v65 = 13107200;
        }

        else
        {
          v65 = 8912896;
        }

        if (v13)
        {
LABEL_72:
          v65 |= 0x10u;
          if (!v53)
          {
            goto LABEL_101;
          }

          goto LABEL_99;
        }
      }

      else if (v126._rawValue)
      {
        v65 = 4718592;
        if (v13)
        {
          goto LABEL_72;
        }
      }

      else
      {
        v65 = 0x80000;
        if (v13)
        {
          goto LABEL_72;
        }
      }

      if (!v53)
      {
        goto LABEL_101;
      }

      goto LABEL_99;
    }

    v63 = v121;
    v64 = v124;
    if (v124)
    {
      goto LABEL_67;
    }

LABEL_79:
    if (v13)
    {
      v65 = 8912896;
    }

    else
    {
      v65 = 0x800000;
    }

    if (v13)
    {
      v66 = 13107200;
    }

    else
    {
      v66 = 12582912;
    }

    if (v126._rawValue)
    {
      v65 = v66;
    }

    if (v13)
    {
      v67 = 4718592;
    }

    else
    {
      v67 = 0x400000;
    }

    if (!v126._rawValue)
    {
      v67 = (v13 != 0) << 19;
    }

    if ((v18 & 0x800000) == 0)
    {
      v65 = v67;
    }

    if (!v53)
    {
LABEL_101:
      v68._rawValue = v120;
      goto LABEL_103;
    }

LABEL_99:
    if (v53 == 2)
    {
      v65 |= 0x100000u;
      goto LABEL_101;
    }

    v68._rawValue = v120;
    v65 |= 0x200000u;
LABEL_103:
    specialized InstantiateKeyPathBuffer.pushDest<A>(_:)(v65 | 0x2000000u);
    specialized InstantiateKeyPathBuffer.pushDest<A>(_:)(v63);
    InstantiateKeyPathBuffer.pushAddressDiscriminatedFunctionPointer(_:discriminator:)(v68, 0x6F72uLL);
    if (v126._rawValue)
    {
      if ((v18 & 0x800000) != 0)
      {
        v69 = 29801;
      }

      else
      {
        v69 = 28528;
      }

      InstantiateKeyPathBuffer.pushAddressDiscriminatedFunctionPointer(_:discriminator:)(v126, v69);
    }

    if (!v64)
    {
      v72 = _;
      if (!v13)
      {
        goto LABEL_20;
      }

      if ((v62 - 0x1000000000000000) >> 61 == 7)
      {
        specialized InstantiateKeyPathBuffer.pushDest<A>(_:)(8 * v62);
        specialized InstantiateKeyPathBuffer.pushDest<A>(_:)(&swift_keyPathGenericWitnessTable);
        if ((v62 & 0x8000000000000000) == 0)
        {
          goto LABEL_127;
        }

LABEL_212:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      goto LABEL_228;
    }

    v70 = v64(v6.value._rawValue);
    v72 = _;
    if (__OFADD__(v70, v71))
    {
      __break(1u);
LABEL_218:
      __break(1u);
      goto LABEL_212;
    }

    v73 = v70;
    v74 = (v70 + v71) & ~v71;
    if (!v13)
    {
      goto LABEL_114;
    }

    if (__OFADD__(v74, 7))
    {
      __break(1u);
LABEL_221:
      __break(1u);
      goto LABEL_222;
    }

    if ((v62 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_221;
    }

    v75 = (v74 + 7) & 0xFFFFFFFFFFFFFFF8;
    v74 = v75 + 8 * v62;
    if (__OFADD__(v75, 8 * v62))
    {
      goto LABEL_223;
    }

LABEL_114:
    specialized InstantiateKeyPathBuffer.pushDest<A>(_:)(v74);
    specialized InstantiateKeyPathBuffer.pushDest<A>(_:)(v119);
    if (ComputedArgumentWitnessesPtr.destroy.getter(v119))
    {
      *(a2 + 64) = 0;
    }

    if (v13)
    {
      if ((v62 - 0x1000000000000000) >> 61 == 7)
      {
        specialized InstantiateKeyPathBuffer.pushDest<A>(_:)(8 * v62);
        goto LABEL_119;
      }

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
      goto LABEL_227;
    }

LABEL_119:
    v76 = *a2;
    v118(v6.value._rawValue, *a2);
    v77 = a2[1] - v76;
    v78 = __OFSUB__(v77, v73);
    v79 = v77 - v73;
    if (v78)
    {
      goto LABEL_218;
    }

    if (v79 < 0)
    {
      goto LABEL_215;
    }

    *a2 = v76 + v73;
    a2[1] = v76 + v73 + v79;
    if (v13)
    {
      if (v62 < 0)
      {
        goto LABEL_212;
      }

LABEL_127:
      if (v62)
      {
        v80 = v72;
        do
        {
          v81 = v128;
          if (!v128)
          {
            goto LABEL_212;
          }

          v82._rawValue = _resolveKeyPathGenericArgReference(_:genericEnvironment:arguments:)((v72 + *v80), RelativeAddress2at14fromByteOffset2asxSV_SixmtlFSV_Tt2g5, v6)._rawValue;
          v83 = *a2;
          if ((*a2 & 7) != 0)
          {
            v84 = 8 - (*a2 & 7);
          }

          else
          {
            v84 = 0;
          }

          *(v83 + v84) = v82;
          v85 = v83 + v84 + 8;
          v86 = a2[1] - v83;
          v78 = __OFSUB__(v86, 8);
          v87 = v86 - 8;
          if (v78)
          {
            goto LABEL_224;
          }

          v78 = __OFSUB__(v87, v84);
          v88 = v87 - v84;
          if (v78)
          {
            goto LABEL_225;
          }

          if (v88 < 0)
          {
            goto LABEL_215;
          }

          *a2 = v85;
          a2[1] = v85 + v88;
          ++v80;
          ++v72;
          --v128;
        }

        while (v81 != 1);
      }
    }

LABEL_20:
    v27 = v132;
    if (!v132 || v133 == v132)
    {
      break;
    }

    v28 = _ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs19RawKeyPathComponentV6HeaderV_Tt0g5(&v132, 1);
    RelativeAddress2at14fromByteOffset2asxSV_SixmtlFSV_Tt2g5 = a2[2];
    v6.value._rawValue = a2[3];
    rawValue = _resolveKeyPathGenericArgReference(_:genericEnvironment:arguments:)((v27 + *v28), RelativeAddress2at14fromByteOffset2asxSV_SixmtlFSV_Tt2g5, v6)._rawValue;
    __src[0] = rawValue;
    MetatypeMetadata = swift_getMetatypeMetadata(rawValue);
    InstantiateKeyPathBuffer.pushDest<A>(_:)(__src, MetatypeMetadata);
    a2[4] = rawValue;
    v31 = *(*(rawValue - 1) + 64);
    if (v31 <= a2[7])
    {
      v31 = a2[7];
    }

    a2[7] = v31;
    v9 = v132;
  }

  while (v132);
  return specialized InstantiateKeyPathBuffer.pushDest<A>(_:)(a2[7]);
}

uint64_t specialized visitStored #1 <A>(header:componentBuffer:) in _walkKeyPathPattern<A>(_:walker:)(unsigned int a1, uint64_t *a2, uint64_t *a3)
{
  v5 = a1 & 0x7FFFFF;
  if ((a1 & 0x7FFFFF) == 0x7FFFFD)
  {
    v6._rawValue = *a2;
    v7 = _ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs19RawKeyPathComponentV6HeaderV_Tt0g5(a2, 1);
    _resolveRelativeIndirectableAddress(_:_:)(v6, *v7);
    goto LABEL_6;
  }

  if (v5 == 8388606 || v5 == 0x7FFFFF)
  {
    _ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs19RawKeyPathComponentV6HeaderV_Tt0g5(a2, 1);
LABEL_6:
    v8 = 0;
    goto LABEL_8;
  }

  v8 = 1;
LABEL_8:
  result = RawKeyPathComponent.Header.kind.getter(a1);
  if ((a1 & 0x800000) != 0)
  {
    if (result == 1)
    {
      goto LABEL_13;
    }

    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  *(a3 + 16) = v10;
LABEL_13:
  v11 = *a3;
  if (v8)
  {
    v12 = __OFADD__(v11, 4);
    v11 += 4;
    if (!v12)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  v12 = __OFADD__(v11, 8);
  v11 += 8;
  if (!v12)
  {
LABEL_18:
    *a3 = v11;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t specialized visitStored #1 <A>(header:componentBuffer:) in _walkKeyPathPattern<A>(_:walker:)(unsigned int a1, uint64_t *a2)
{
  rawValue = a1 & 0x7FFFFF;
  switch(rawValue)
  {
    case 0x7FFFFD:
      v5._rawValue = *a2;
      v6 = _ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs19RawKeyPathComponentV6HeaderV_Tt0g5(a2, 1);
      rawValue = _resolveRelativeIndirectableAddress(_:_:)(v5, *v6)._rawValue;
      v4 = 3;
      break;
    case 0x7FFFFE:
      rawValue = *_ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs19RawKeyPathComponentV6HeaderV_Tt0g5(a2, 1);
      v4 = 2;
      break;
    case 0x7FFFFF:
      v4 = 1;
      rawValue = *_ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs19RawKeyPathComponentV6HeaderV_Tt0g5(a2, 1);
      break;
    default:
      v4 = 0;
      break;
  }

  v7 = RawKeyPathComponent.Header.kind.getter(a1) != 1;
  return InstantiateKeyPathBuffer.visitStoredComponent(kind:mutable:offset:)(v7, (a1 & 0x800000) != 0, rawValue, v4);
}

uint64_t popComputedAccessors #1 <A>(header:componentBuffer:) in _walkKeyPathPattern<A>(_:walker:)(int a1, uint64_t *a2)
{
  v4 = *a2;
  _ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs19RawKeyPathComponentV6HeaderV_Tt0g5(a2, 1);
  _ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs19RawKeyPathComponentV6HeaderV_Tt0g5(a2, 1);
  if ((a1 & 0x400000) != 0)
  {
    _ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs19RawKeyPathComponentV6HeaderV_Tt0g5(a2, 1);
  }

  return v4;
}

uint64_t popComputedArguments #1 <A>(header:componentBuffer:) in _walkKeyPathPattern<A>(_:walker:)(int a1, uint64_t *a2)
{
  if ((a1 & 0x80000) == 0)
  {
    return 0;
  }

  v4 = *a2;
  v5 = *_ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs19RawKeyPathComponentV6HeaderV_Tt0g5(a2, 1);
  if (!(v4 + v5) || (v2 = v4 + v5, _ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs19RawKeyPathComponentV6HeaderV_Tt0g5(a2, 1), v6 = *a2, !(v6 + *_ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs19RawKeyPathComponentV6HeaderV_Tt0g5(a2, 1))))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v2;
}

uint64_t specialized InstantiateKeyPathBuffer.pushDest<A>(_:)(uint64_t result)
{
  v2 = *v1;
  if ((*v1 & 3) != 0)
  {
    v3 = 4 - (*v1 & 3);
  }

  else
  {
    v3 = 0;
  }

  v4 = v2 + v3;
  *(v2 + v3) = result;
  v5 = v1[1] - v2;
  v6 = __OFSUB__(v5, 4);
  v7 = v5 - 4;
  if (v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = __OFSUB__(v7, v3);
  v8 = v7 - v3;
  if (v6)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v8 < 0)
  {
    goto LABEL_10;
  }

  v9 = v4 + 4;
  *v1 = v9;
  v1[1] = v9 + v8;
  return result;
}

{
  v2 = *v1;
  if ((*v1 & 7) != 0)
  {
    v3 = 8 - (*v1 & 7);
  }

  else
  {
    v3 = 0;
  }

  v4 = v2 + v3;
  *(v2 + v3) = result;
  v5 = v1[1] - v2;
  v6 = __OFSUB__(v5, 8);
  v7 = v5 - 8;
  if (v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = __OFSUB__(v7, v3);
  v8 = v7 - v3;
  if (v6)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v8 < 0)
  {
    goto LABEL_10;
  }

  v9 = v4 + 8;
  *v1 = v9;
  v1[1] = v9 + v8;
  return result;
}

void *InstantiateKeyPathBuffer.pushDest<A>(_:)(void *__src, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 80);
  v5 = *v2;
  v6 = *(v3 + 64);
  if ((*v2 & v4) != 0)
  {
    v7 = v4 - (*v2 & v4) + 1;
  }

  else
  {
    v7 = 0;
  }

  if (v6 < 0)
  {
LABEL_12:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8 = v5 + v7;
  result = memcpy((v5 + v7), __src, *(v3 + 64));
  v10 = v2[1] - v5;
  v11 = __OFSUB__(v10, v6);
  v12 = v10 - v6;
  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = __OFSUB__(v12, v7);
  v13 = v12 - v7;
  if (v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v13 < 0)
  {
    goto LABEL_12;
  }

  *v2 = v8 + v6;
  v2[1] = v8 + v6 + v13;
  return result;
}

Swift::Void __swiftcall InstantiateKeyPathBuffer.pushAddressDiscriminatedFunctionPointer(_:discriminator:)(Swift::UnsafeRawPointer _, Swift::UInt64 discriminator)
{
  v3 = *v2;
  if ((*v2 & 7) != 0)
  {
    v4 = 8 - (*v2 & 7);
  }

  else
  {
    v4 = 0;
  }

  v5 = (v3 + v4);
  if (!_._rawValue)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5->_rawValue = _._rawValue;
  v6 = v2[1] - v3;
  v7 = __OFSUB__(v6, 8);
  v8 = v6 - 8;
  if (v7)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = __OFSUB__(v8, v4);
  v9 = v8 - v4;
  if (v7)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v9 < 0)
  {
    goto LABEL_11;
  }

  v10 = v5 + 1;
  *v2 = v10;
  v2[1] = v10 + v9;
}

uint64_t InstantiateKeyPathBuffer.visitStoredComponent(kind:mutable:offset:)(char a1, char a2, uint64_t a3, unsigned __int8 a4)
{
  v9 = *(v4 + 80);
  *(v4 + 80) = *v4;
  v10 = *(v4 + 48);
  result = swift_isUniquelyReferenced_nonNull_native(v10);
  *(v4 + 48) = v10;
  if (a1)
  {
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
      v10 = result;
      *(v4 + 48) = result;
    }

    v13 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v13 >= v12 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 16) = v13 + 1;
    *(v10 + v13 + 32) = 0;
    *(v4 + 48) = v10;
    if (a2)
    {
      *(v4 + 72) = v9;
    }
  }

  else
  {
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
      v10 = result;
      *(v4 + 48) = result;
    }

    v15 = *(v10 + 16);
    v14 = *(v10 + 24);
    if (v15 >= v14 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 16) = v15 + 1;
    *(v10 + v15 + 32) = 1;
    *(v4 + 48) = v10;
  }

  if (a4 > 1u)
  {
    if (a4 != 2)
    {
      a3 = *a3;
      if (a1)
      {
        v23 = 50331648;
      }

      else
      {
        v23 = 0x1000000;
      }

      if (a2)
      {
        v24 = 0xFFFFFF;
      }

      else
      {
        v24 = 0x7FFFFF;
      }

      goto LABEL_44;
    }

    v22 = (*(v4 + 32) + a3);
    if (a1)
    {
      if ((v22 & 7) == 0)
      {
        a3 = *v22;
        if (HIDWORD(*v22))
        {
          goto LABEL_48;
        }

        v23 = 50331648;
        goto LABEL_41;
      }
    }

    else if ((v22 & 3) == 0)
    {
      a3 = *v22;
      v25 = *(v4 + 40);
      v20 = __CFADD__(v25, a3);
      v26 = v25 + a3;
      if (v20)
      {
        __break(1u);
        return result;
      }

      *(v4 + 40) = v26;
      v23 = 0x1000000;
      goto LABEL_41;
    }

    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a4)
  {
    if (a1)
    {
      v23 = 50331648;
    }

    else
    {
      v23 = 0x1000000;
    }

LABEL_41:
    if (a2)
    {
      v24 = 0xFFFFFF;
    }

    else
    {
      v24 = 0x7FFFFF;
    }

LABEL_44:
    specialized InstantiateKeyPathBuffer.pushDest<A>(_:)(v23 | v24);
    return specialized InstantiateKeyPathBuffer.pushDest<A>(_:)(a3);
  }

  v16 = a1 & 1;
  if (v16)
  {
    v17 = 50331648;
  }

  else
  {
    v17 = 0x1000000;
  }

  if (a2)
  {
    v18 = 0x800000;
  }

  else
  {
    v18 = 0;
  }

  result = specialized InstantiateKeyPathBuffer.pushDest<A>(_:)(v18 | v17 | a3);
  if (!v16)
  {
    v19 = *(v4 + 40);
    v20 = __CFADD__(v19, a3);
    v21 = v19 + a3;
    if (!v20)
    {
      *(v4 + 40) = v21;
      return result;
    }

    __break(1u);
LABEL_48:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

_DWORD *static UInt32.+= infix(_:_:)(_DWORD *result, int a2)
{
  if (__CFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *result += a2;
  }

  return result;
}

uint64_t UnsafeBufferPointer.indices.getter(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return 0;
}

void *_createOffsetBasedKeyPath(root:value:offset:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for KeyPath(0, a1, a2, a4);
  v7 = swift_allocObject(v6, (((*(v6 + 48) + 3) & 0x1FFFFFFFCLL) + 12), *(v6 + 52) | 3);
  v7[2] = 0;
  partial apply for closure #1 in _createOffsetBasedKeyPath(root:value:offset:)(v7 + 3, v7 + 36);
  MetadataKind = swift_getMetadataKind(a1);
  _MetadataKind.init(rawValue:)(MetadataKind);
  if (v10 == 1 && (a3 & 0x8000000000000000) == 0)
  {
    v7[2] = ~a3;
  }

  return v7;
}

uint64_t _rerootKeyPath<A>(_:to:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = specialized KeyPathBuffer.init(base:)((a1 + 3));
  if (v5)
  {
    v7 = v6 - v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = *a1;
  v9 = *(*a1 + 104);
  v10 = v9();
  v9();
  v12 = v11;
  if (type metadata accessor for ReferenceWritableKeyPath(0, v10, v11, v13) == v8)
  {
    type metadata accessor for ReferenceWritableKeyPath(0, a3, v12, v14);
  }

  else
  {
    if (type metadata accessor for KeyPath(0, v10, v12, v14) != v8)
    {
      goto LABEL_15;
    }

    type metadata accessor for KeyPath(0, a3, v12, v15);
  }

  if (__OFADD__(v7, 8))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(v7 + 8, 7))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v16 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (__OFADD__(v16, 8))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000027, 0x800000018066D620, "Swift/KeyPath.swift", 0x13uLL, 2, 0x10BAuLL);
  }

  v17 = MEMORY[0x1EEE9AC00](v16 + 8);
  v18 = static AnyKeyPath._create(capacityInBytes:initializedBy:)(v17, partial apply for closure #2 in _rerootKeyPath<A>(_:to:));
  v21 = type metadata accessor for PartialKeyPath(0, a3, v19, v20);
  return swift_dynamicCastClassUnconditional(v18, v21, 0, 0, 0);
}

unint64_t AnyKeyPath.debugDescription.getter()
{
  v1 = v0;
  v436 = *v0;
  v2 = _StringGuts.init(_initialCapacity:)(3);
  v4 = v2;
  v5 = v3;
  v449 = v2;
  v450 = v3;
  v6 = HIBYTE(v3) & 0xF;
  v7 = v2 & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v8 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v8 || (v2 & ~v3 & 0x2000000000000000) != 0)
  {
    if ((v3 & 0x2000000000000000) != 0 && v6 != 15)
    {
      v9 = 8 * (HIBYTE(v3) & 7);
      v10 = (-255 << v9) - 1;
      v11 = 92 << v9;
      v12 = v11 | v10 & v3;
      v13 = v11 | v10 & v2;
      if (v6 >= 8)
      {
        v14 = v12;
      }

      else
      {
        v14 = v3;
      }

      if (v6 < 8)
      {
        v4 = v13;
      }

      v3;
      0xE100000000000000;
      v15 = 0xA000000000000000;
      if (!(v4 & 0x8080808080808080 | v14 & 0x80808080808080))
      {
        v15 = 0xE000000000000000;
      }

      v16 = (v15 & 0xFF00000000000000 | (v6 << 56) | v14 & 0xFFFFFFFFFFFFFFLL) + 0x100000000000000;
      goto LABEL_65;
    }

    0xE100000000000000;
    if ((v5 & 0x1000000000000000) != 0)
    {
      goto LABEL_194;
    }

    v18 = __OFADD__(v8, 1);
    v19 = v8 + 1;
    if (!v18)
    {
      goto LABEL_18;
    }

LABEL_196:
    __break(1u);
LABEL_197:
    v111 = String.UTF8View._foreignCount()();
    if ((v4 & 0x2000000000000000) == 0)
    {
      goto LABEL_198;
    }

LABEL_163:
    if (!swift_isUniquelyReferenced_nonNull_native(v5 & 0xFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_198;
    }

    v112 = _StringGuts.nativeUnusedCapacity.getter(v4, v5);
    if (v113)
    {
      goto LABEL_446;
    }

    if (v111 > 15 || (v112 & 0x8000000000000000) == 0)
    {
      goto LABEL_199;
    }

    goto LABEL_167;
  }

  v3;
  v449 = 92;
  v450 = 0xE100000000000000;
  while (1)
  {
    v435 = *(v436 + 104);
    v50 = v435();
    v51 = _sSS10describingSSx_tclufCypXp_Tt0g5(v50);
    v7 = v51;
    v4 = v52;
    v53 = v449;
    v5 = v450;
    v54 = HIBYTE(v450) & 0xF;
    v55 = v449 & 0xFFFFFFFFFFFFLL;
    if ((v450 & 0x2000000000000000) != 0)
    {
      v56 = HIBYTE(v450) & 0xF;
    }

    else
    {
      v56 = v449 & 0xFFFFFFFFFFFFLL;
    }

    if (!v56 && (v449 & ~v450 & 0x2000000000000000) == 0)
    {
      v450;
      v449 = v7;
      v450 = v4;
      goto LABEL_155;
    }

    v57 = (v52 & 0x2000000000000000) == 0;
    v58 = HIBYTE(v52) & 0xF;
    if ((v450 & 0x2000000000000000) != 0)
    {
      break;
    }

    v434 = v1;
    v59 = v51 & 0xFFFFFFFFFFFFLL;
    v1 = HIBYTE(v52) & 0xF;
    if ((v52 & 0x2000000000000000) == 0)
    {
      goto LABEL_76;
    }

LABEL_77:
    v433 = v57;
    v432 = v59;
    if ((v52 & 0x1000000000000000) != 0)
    {
      swift_bridgeObjectRetain_n(v52, 2);
      v133._rawBits = 1;
      v134._rawBits = (v1 << 16) | 1;
      v135._rawBits = _StringGuts.validateScalarRange(_:)(v133, v134, v7, v4)._rawBits;
      if (v135._rawBits < 0x10000)
      {
        v135._rawBits |= 3;
      }

      v61 = String.UTF8View.distance(from:to:)(v135, v136);
      v4;
      if ((v5 & 0x1000000000000000) == 0)
      {
LABEL_79:
        v18 = __OFADD__(v56, v61);
        v62 = v56 + v61;
        if (!v18)
        {
          goto LABEL_80;
        }

        goto LABEL_193;
      }
    }

    else
    {
      v52;
      v61 = v1;
      if ((v5 & 0x1000000000000000) == 0)
      {
        goto LABEL_79;
      }
    }

    v137 = String.UTF8View._foreignCount()();
    v62 = v137 + v61;
    if (!__OFADD__(v137, v61))
    {
LABEL_80:
      v63 = v53 & ~v5;
      if ((v63 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v5 & 0xFFFFFFFFFFFFFFFLL))
      {
        v64 = _StringGuts.nativeUnusedCapacity.getter(v53, v5);
        if (v65)
        {
          goto LABEL_446;
        }

        if (v62 > 15)
        {
          goto LABEL_91;
        }

        if ((v5 & 0x2000000000000000) == 0)
        {
          if (v64 < v61)
          {
LABEL_86:
            if ((v5 & 0x1000000000000000) != 0)
            {
              v53 = _StringGuts._foreignConvertedToSmall()(v53, v5);
              v67 = v131;
            }

            else
            {
              if ((v53 & 0x1000000000000000) != 0)
              {
                v66 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
              }

              else
              {
                v66 = _StringObject.sharedUTF8.getter(v53, v5);
                v55 = v424;
              }

              closure #1 in _StringGuts._convertedToSmall()(v66, v55, &v443, v60);
              v67 = *(&v443 + 1);
              v53 = v443;
            }

LABEL_109:
            v4;
            v80._rawBits = 1;
            v81._rawBits = (v1 << 16) | 1;
            v82._rawBits = _StringGuts.validateScalarRange(_:)(v80, v81, v7, v4)._rawBits;
            if (v82._rawBits < 0x10000)
            {
              v82._rawBits |= 3;
            }

            if (v82._rawBits >> 16 || v83._rawBits >> 16 != v1)
            {
              v7 = specialized static String._copying(_:)(v82._rawBits, v83._rawBits, v7, v4);
              v85 = v87;
              v4;
            }

            else
            {
              v85 = v4;
            }

            if ((v85 & 0x2000000000000000) != 0)
            {
              v85;
            }

            else if ((v85 & 0x1000000000000000) != 0)
            {
              v7 = _StringGuts._foreignConvertedToSmall()(v7, v85);
              v427 = v426;
              v85;
              v85 = v427;
            }

            else
            {
              if ((v7 & 0x1000000000000000) != 0)
              {
                v415 = ((v85 & 0xFFFFFFFFFFFFFFFLL) + 32);
                v416 = v7 & 0xFFFFFFFFFFFFLL;
              }

              else
              {
                v415 = _StringObject.sharedUTF8.getter(v7, v85);
              }

              closure #1 in _StringGuts._convertedToSmall()(v415, v416, &v443, v84);
              v85;
              v85 = *(&v443 + 1);
              v7 = v443;
            }

            v88 = HIBYTE(v67) & 0xF;
            v89 = HIBYTE(v85) & 0xF;
            v90 = v89 + v88;
            if (v89 + v88 <= 0xF)
            {
              v4;
              if (v89)
              {
                v91 = 0;
                v92 = 0;
                v93 = 8 * v88;
                v94 = 8 * v89;
                v1 = v434;
                do
                {
                  v95 = v85 >> (v91 & 0x38);
                  if (v92 < 8)
                  {
                    v95 = v7 >> v91;
                  }

                  v96 = (v95 << (v93 & 0x38)) | ((-255 << (v93 & 0x38)) - 1) & v67;
                  v97 = (v95 << v93) | ((-255 << v93) - 1) & v53;
                  if (v88 <= 7)
                  {
                    v53 = v97;
                  }

                  else
                  {
                    v67 = v96;
                  }

                  ++v88;
                  v93 += 8;
                  v91 += 8;
                  ++v92;
                }

                while (v94 != v91);
              }

              else
              {
                v1 = v434;
              }

              v5;
              v4;
              v98 = 0xA000000000000000;
              if (!(v53 & 0x8080808080808080 | v67 & 0x80808080808080))
              {
                v98 = 0xE000000000000000;
              }

              v99 = v98 & 0xFF00000000000000 | (v90 << 56) | v67 & 0xFFFFFFFFFFFFFFLL;
              goto LABEL_154;
            }

LABEL_446:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

LABEL_91:
          v68 = v63 & 0x2000000000000000;
          v69 = _StringGuts.nativeUnusedCapacity.getter(v53, v5);
          if ((v70 & 1) != 0 || v69 < v61)
          {
            if (v68)
            {
              swift_isUniquelyReferenced_nonNull_native(v5 & 0xFFFFFFFFFFFFFFFLL);
            }

            v71 = _StringGuts.nativeCapacity.getter(v53, v5);
            if (v72)
            {
              v73 = 0;
            }

            else
            {
              v73 = v71;
            }

            if (v73 + 0x4000000000000000 < 0)
            {
              __break(1u);
LABEL_429:
              _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v74 = 2 * v73;
            if (v74 > v62)
            {
              v62 = v74;
            }

LABEL_101:
            _StringGuts.grow(_:)(v62);
          }

          else if (!v68 || !swift_isUniquelyReferenced_nonNull_native(v5 & 0xFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_101;
          }

          if ((v4 & 0x1000000000000000) != 0)
          {
            _StringGuts._foreignAppendInPlace(_:)(v7, v4, 0, v1);
          }

          else
          {
            if (v433)
            {
              if ((v7 & 0x1000000000000000) != 0)
              {
                v75 = (v4 & 0xFFFFFFFFFFFFFFFLL) + 32;
                v76 = v432;
                v77 = v432;
                v1 = v434;
              }

              else
              {
                v422 = _StringObject.sharedUTF8.getter(v7, v4);
                if (v423 < v432)
                {
LABEL_422:
                  _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
                }

                v75 = v422;
                v77 = v423;
                v1 = v434;
                v76 = v432;
              }

              v78 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v76, v75, v77);
              closure #1 in _StringGuts.append(_:)(v78, v79, &v449, v7 < 0);
              swift_bridgeObjectRelease_n(v4, 2);
              goto LABEL_155;
            }

            *&v443 = v7;
            *(&v443 + 1) = v4 & 0xFFFFFFFFFFFFFFLL;
            closure #1 in _StringGuts.append(_:)(&v443, HIBYTE(v4) & 0xF, &v449, (v4 & 0x4000000000000000) != 0);
          }

          swift_bridgeObjectRelease_n(v4, 2);
          v1 = v434;
          goto LABEL_155;
        }
      }

      else
      {
        if (v62 > 15)
        {
          goto LABEL_91;
        }

        if ((v5 & 0x2000000000000000) == 0)
        {
          goto LABEL_86;
        }
      }

      v67 = v5;
      goto LABEL_109;
    }

LABEL_193:
    __break(1u);
LABEL_194:
    v138 = String.UTF8View._foreignCount()();
    v19 = v138 + 1;
    if (__OFADD__(v138, 1))
    {
      goto LABEL_196;
    }

LABEL_18:
    v20 = v4 & ~v5;
    if ((v20 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v5 & 0xFFFFFFFFFFFFFFFLL))
    {
      v21 = _StringGuts.nativeUnusedCapacity.getter(v4, v5);
      if (v22)
      {
        goto LABEL_446;
      }

      if (v19 <= 15)
      {
        if ((v5 & 0x2000000000000000) != 0)
        {
          goto LABEL_45;
        }

        if (v21 < 1)
        {
          goto LABEL_24;
        }
      }
    }

    else if (v19 <= 15)
    {
      if ((v5 & 0x2000000000000000) != 0)
      {
LABEL_45:
        v24 = v5;
      }

      else
      {
LABEL_24:
        if ((v5 & 0x1000000000000000) != 0)
        {
          v4 = _StringGuts._foreignConvertedToSmall()(v4, v5);
          v24 = v132;
        }

        else
        {
          if ((v4 & 0x1000000000000000) != 0)
          {
            v23 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v23 = _StringObject.sharedUTF8.getter(v4, v5);
            v7 = v425;
          }

          closure #1 in _StringGuts._convertedToSmall()(v23, v7, &v443, v17);
          v24 = *(&v443 + 1);
          v4 = v443;
        }
      }

      v32 = 0xE100000000000000;
      0xE100000000000000;
      v33 = 92;
      v34._rawBits = 1;
      v35._rawBits = 65537;
      v36._rawBits = _StringGuts.validateScalarRange(_:)(v34, v35, 0x5CuLL, 0xE100000000000000)._rawBits;
      if (v36._rawBits < 0x10000)
      {
        v36._rawBits |= 3;
      }

      if (v36._rawBits >> 16 || (v37._rawBits & 0xFFFFFFFFFFFF0000) != 0x10000)
      {
        v33 = specialized static String._copying(_:)(v36._rawBits, v37._rawBits, 0x5CuLL, 0xE100000000000000);
        v32 = v39;
        0xE100000000000000;
      }

      if ((v32 & 0x2000000000000000) != 0)
      {
        v32;
      }

      else if ((v32 & 0x1000000000000000) != 0)
      {
        v33 = _StringGuts._foreignConvertedToSmall()(v33, v32);
        v431 = v430;
        v32;
        v32 = v431;
      }

      else
      {
        if ((v33 & 0x1000000000000000) != 0)
        {
          v419 = ((v32 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v420 = v33 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v419 = _StringObject.sharedUTF8.getter(v33, v32);
        }

        closure #1 in _StringGuts._convertedToSmall()(v419, v420, &v443, v38);
        v32;
        v32 = *(&v443 + 1);
        v33 = v443;
      }

      v40 = HIBYTE(v24) & 0xF;
      v41 = HIBYTE(v32) & 0xF;
      v42 = v41 + v40;
      if (v41 + v40 > 0xF)
      {
        goto LABEL_446;
      }

      0xE100000000000000;
      if (v41)
      {
        v43 = 0;
        v44 = 0;
        v45 = 8 * v40;
        do
        {
          v46 = v32 >> (v43 & 0x38);
          if (v44 < 8)
          {
            v46 = v33 >> v43;
          }

          v47 = (v46 << (v45 & 0x38)) | ((-255 << (v45 & 0x38)) - 1) & v24;
          v48 = (v46 << v45) | ((-255 << v45) - 1) & v4;
          if (v40 <= 7)
          {
            v4 = v48;
          }

          else
          {
            v24 = v47;
          }

          ++v40;
          v45 += 8;
          v43 += 8;
          ++v44;
        }

        while (8 * v41 != v43);
      }

      v5;
      0xE100000000000000;
      v49 = 0xA000000000000000;
      if (!(v4 & 0x8080808080808080 | v24 & 0x80808080808080))
      {
        v49 = 0xE000000000000000;
      }

      v16 = v49 & 0xFF00000000000000 | (v42 << 56) | v24 & 0xFFFFFFFFFFFFFFLL;
LABEL_65:
      v449 = v4;
      v450 = v16;
      continue;
    }

    v25 = v20 & 0x2000000000000000;
    v26 = _StringGuts.nativeUnusedCapacity.getter(v4, v5);
    if ((v27 & 1) != 0 || v26 <= 0)
    {
      if (v25)
      {
        swift_isUniquelyReferenced_nonNull_native(v5 & 0xFFFFFFFFFFFFFFFLL);
      }

      v28 = _StringGuts.nativeCapacity.getter(v4, v5);
      if (v29)
      {
        v30 = 0;
      }

      else
      {
        v30 = v28;
      }

      if (v30 + 0x4000000000000000 < 0)
      {
        __break(1u);
LABEL_439:
        v114 = _StringObject.sharedUTF8.getter(v4, v5);
        v19 = v421;
LABEL_170:
        closure #1 in _StringGuts._convertedToSmall()(v114, v19, &v443, v110);
        v116 = *(&v443 + 1);
        v115 = v443;
        goto LABEL_176;
      }

      v31 = 2 * v30;
      if (v31 > v19)
      {
        v19 = v31;
      }

LABEL_42:
      _StringGuts.grow(_:)(v19);
      goto LABEL_43;
    }

    if (!v25 || !swift_isUniquelyReferenced_nonNull_native(v5 & 0xFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_42;
    }

LABEL_43:
    v443 = xmmword_18071DC70;
    closure #1 in _StringGuts.append(_:)(&v443, 1uLL, &v449, 1);
    swift_bridgeObjectRelease_n(0xE100000000000000, 2);
  }

  if ((v52 & 0x2000000000000000) == 0)
  {
    v434 = v1;
    v59 = v51 & 0xFFFFFFFFFFFFLL;
    v57 = 1;
LABEL_76:
    v1 = v59;
    goto LABEL_77;
  }

  v86 = v54 + v58;
  if (v54 + v58 >= 0x10)
  {
    v434 = v1;
    v57 = 0;
    v59 = v51 & 0xFFFFFFFFFFFFLL;
    v1 = HIBYTE(v52) & 0xF;
    goto LABEL_77;
  }

  if (v58)
  {
    v100 = 0;
    v101 = 0;
    v102 = 8 * v54;
    v103 = v450;
    do
    {
      v104 = v52 >> (v100 & 0x38);
      if (v101 < 8)
      {
        v104 = v51 >> v100;
      }

      v105 = (v104 << (v102 & 0x38)) | ((-255 << (v102 & 0x38)) - 1) & v103;
      v106 = (v104 << v102) | ((-255 << v102) - 1) & v53;
      if (v54 <= 7)
      {
        v53 = v106;
      }

      else
      {
        v103 = v105;
      }

      ++v54;
      v102 += 8;
      v100 += 8;
      ++v101;
    }

    while (8 * v58 != v100);
  }

  else
  {
    v103 = v450;
  }

  v450;
  v4;
  v107 = 0xA000000000000000;
  if (!(v53 & 0x8080808080808080 | v103 & 0x80808080808080))
  {
    v107 = 0xE000000000000000;
  }

  v99 = v107 & 0xFF00000000000000 | (v86 << 56) | v103 & 0xFFFFFFFFFFFFFFLL;
LABEL_154:
  v449 = v53;
  v450 = v99;
LABEL_155:
  v4 = v449;
  v5 = v450;
  v108 = HIBYTE(v450) & 0xF;
  v19 = v449 & 0xFFFFFFFFFFFFLL;
  if ((v450 & 0x2000000000000000) != 0)
  {
    v109 = HIBYTE(v450) & 0xF;
  }

  else
  {
    v109 = v449 & 0xFFFFFFFFFFFFLL;
  }

  if (!v109 && (v449 & ~v450 & 0x2000000000000000) == 0)
  {
    v450;
    v4 = 0;
    v118 = 0xE000000000000000;
    goto LABEL_200;
  }

  if ((v450 & 0x2000000000000000) != 0)
  {
    v450;
    0xE000000000000000;
    v117 = 0xA000000000000000;
    if (!(v5 & 0x80808080808080 | v4 & 0x8080808080808080))
    {
      v117 = 0xE000000000000000;
    }

    v118 = v117 & 0xFF00000000000000 | (v108 << 56) | v5 & 0xFFFFFFFFFFFFFFLL;
    goto LABEL_200;
  }

  0xE000000000000000;
  v111 = v4 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x1000000000000000) != 0)
  {
    goto LABEL_197;
  }

  if ((v4 & 0x2000000000000000) != 0)
  {
    goto LABEL_163;
  }

LABEL_198:
  if (v111 > 15)
  {
LABEL_199:
    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v111, 0);
    v443 = 0uLL;
    closure #1 in _StringGuts.append(_:)(&v443, 0, &v449, 1);
    swift_bridgeObjectRelease_n(0xE000000000000000, 2);
    v4 = v449;
    v118 = v450;
    goto LABEL_200;
  }

LABEL_167:
  if ((v5 & 0x1000000000000000) == 0)
  {
    if ((v4 & 0x1000000000000000) == 0)
    {
      goto LABEL_439;
    }

    v114 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
    goto LABEL_170;
  }

  v115 = _StringGuts._foreignConvertedToSmall()(v4, v5);
  v116 = v119;
LABEL_176:
  v120 = 0xE000000000000000;
  0xE000000000000000;
  v121._rawBits = 1;
  v122._rawBits = 1;
  v123._rawBits = _StringGuts.validateScalarRange(_:)(v121, v122, 0, 0xE000000000000000)._rawBits;
  if (v123._rawBits < 0x10000)
  {
    v123._rawBits |= 3;
  }

  if (v123._rawBits >> 16 || v124._rawBits >= 0x10000)
  {
    v126 = specialized static String._copying(_:)(v123._rawBits, v124._rawBits, 0, 0xE000000000000000);
    v120 = v127;
    0xE000000000000000;
  }

  else
  {
    v126 = 0;
  }

  if ((v120 & 0x2000000000000000) != 0)
  {
    v120;
  }

  else if ((v120 & 0x1000000000000000) != 0)
  {
    v126 = _StringGuts._foreignConvertedToSmall()(v126, v120);
    v429 = v428;
    v120;
    v120 = v429;
  }

  else
  {
    if ((v126 & 0x1000000000000000) != 0)
    {
      v417 = ((v120 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v418 = v126 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v417 = _StringObject.sharedUTF8.getter(v126, v120);
    }

    closure #1 in _StringGuts._convertedToSmall()(v417, v418, &v443, v125);
    v120;
    v120 = *(&v443 + 1);
    v126 = v443;
  }

  v128 = specialized _SmallString.init(_:appending:)(v115, v116, v126, v120);
  if (v130)
  {
    goto LABEL_446;
  }

  v4 = v128;
  v118 = v129;
  v5;
  swift_bridgeObjectRelease_n(0xE000000000000000, 2);
LABEL_200:
  v437 = v4;
  v438 = v118;
  v139 = specialized KeyPathBuffer.init(base:)(v1 + 24);
  v441 = v139;
  v442 = v140;
  if (v139 && v140 != v139)
  {
    v143 = v435();
    while (1)
    {
      v146 = _ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs19RawKeyPathComponentV6HeaderV_Tt0g5(&v441, 1);
      v147 = *v146;
      v148 = v441;
      v149 = RawKeyPathComponent.Header.kind.getter(*v146);
      if ((v149 - 4) >= 3)
      {
        if ((v149 - 1) >= 2)
        {
          v150 = 28;
          if ((v147 & 0x400000) == 0)
          {
            v150 = 20;
          }

          if ((v147 & 0x80000) == 0)
          {
            goto LABEL_218;
          }

          v253 = 16;
          if ((v147 & 0x400000) != 0)
          {
            v253 = 24;
          }

          v254 = v148 + v253 + 4;
          if ((v254 & 7) != 0)
          {
            goto LABEL_429;
          }

          v150 += ((v147 >> 1) & 8) + *v254 + 16;
          if (v150 < 0)
          {
LABEL_420:
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

LABEL_219:
          v152 = v150 + v148;
          v151 = v150;
          goto LABEL_220;
        }

        if ((~v147 & 0x7FFFFF) == 0)
        {
          v150 = 4;
LABEL_218:
          if (!v148)
          {
            goto LABEL_420;
          }

          goto LABEL_219;
        }
      }

      v150 = 0;
      v151 = 0;
      v152 = 0;
      if (v148)
      {
        goto LABEL_219;
      }

LABEL_220:
      v153 = v442 - v148 - v151;
      if (__OFSUB__(v442 - v148, v151))
      {
        __break(1u);
        goto LABEL_422;
      }

      if (v153 < 0)
      {
        goto LABEL_420;
      }

      v441 = v148 + v151;
      if (v153)
      {
        v154 = *_ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFypXp_Tt0g5(&v441, 1);
      }

      else
      {
        v435();
        v154 = v155;
      }

      RawKeyPathComponent.value.getter(v147, v148, v152, &v443);
      if (*(&v443 + 1) >> 61 != 5 || ((v164 = v445 | v446 | v447, *(&v443 + 1) != 0xA000000000000000) || v164 | v443 | v448 | v444) && ((v165 = v164 | v444, v448) || v443 != __PAIR128__(0xA000000000000000, 1) || v165) && (v448 || v443 != __PAIR128__(0xA000000000000000, 2) || v165))
      {
        v166 = v438;
        v167 = HIBYTE(v438) & 0xF;
        if ((v438 & 0x2000000000000000) == 0)
        {
          v167 = v437 & 0xFFFFFFFFFFFFLL;
        }

        if (v167 || (v437 & ~v438 & 0x2000000000000000) != 0)
        {
          if ((v438 & 0x2000000000000000) != 0 && (v168 = specialized _SmallString.init(_:appending:)(v437, v438, 0x2EuLL, 0xE100000000000000), (v170 & 1) == 0))
          {
            v171 = v168;
            v172 = v169;
            v438;
            0xE100000000000000;
            v437 = v171;
            v438 = v172;
          }

          else
          {
            _StringGuts.append(_:)(46, 0xE100000000000000, 0, 1, v156, v157, v158, v159, v160, v161, v162, v163);
            0xE100000000000000;
          }
        }

        else
        {
          v437 = 46;
          v438 = 0xE100000000000000;
          v166;
        }
      }

      RawKeyPathComponent.value.getter(v147, v148, v152, &v449);
      if ((v450 >> 61) - 2 < 3)
      {
        v181 = ComputedAccessorsPtr.getter<A, B>()(v451, v143, v154);
        v182 = swift_keyPath_copySymbolName(v181);
        if (v182)
        {
          swift_keyPathSourceString(v182);
        }

        v210 = _StringGuts.init(_initialCapacity:)(18);
        v212 = v211;
        __s._countAndFlagsBits = v210;
        __s._object = v211;
        v222 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("<computed ", 0xAuLL, 1);
        countAndFlagsBits = v222._countAndFlagsBits;
        v223 = HIBYTE(v212) & 0xF;
        if ((v212 & 0x2000000000000000) == 0)
        {
          v223 = v210 & 0xFFFFFFFFFFFFLL;
        }

        if (v223 || (v210 & ~v212 & 0x2000000000000000) != 0)
        {
          if ((v212 & 0x2000000000000000) != 0)
          {
            if ((v222._object & 0x2000000000000000) == 0)
            {
              goto LABEL_275;
            }

            v257 = specialized _SmallString.init(_:appending:)(v210, v212, v222._countAndFlagsBits, v222._object);
            if (v259)
            {
              v224 = (v222._object >> 56) & 0xF;
              countAndFlagsBits = v222._countAndFlagsBits;
              goto LABEL_276;
            }

            v321 = v257;
            v322 = v258;
            v212;
            v222._object;
            __s._countAndFlagsBits = v321;
            __s._object = v322;
          }

          else
          {
            if ((v222._object & 0x2000000000000000) != 0)
            {
              v224 = (v222._object >> 56) & 0xF;
              goto LABEL_276;
            }

LABEL_275:
            v224 = v222._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
LABEL_276:
            _StringGuts.append(_:)(countAndFlagsBits, v222._object, 0, v224, v214, v215, v216, v217, v218, v219, v220, v221);
            v222._object;
          }
        }

        else
        {
          v212;
          __s = v222;
        }

        v456 = v181;
        _print_unlocked<A, B>(_:_:)(&v456, &__s, &type metadata for UnsafeRawPointer, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
        object = __s._object;
        v234 = (__s._object >> 56) & 0xF;
        if ((__s._object & 0x2000000000000000) == 0)
        {
          v234 = __s._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (v234 || (__s._countAndFlagsBits & ~__s._object & 0x2000000000000000) != 0)
        {
          if ((__s._object & 0x2000000000000000) != 0 && (v235 = specialized _SmallString.init(_:appending:)(__s._countAndFlagsBits, __s._object, 0x2820uLL, 0xE200000000000000), (v237 & 1) == 0))
          {
            v260 = v235;
            v261 = v236;
            object;
            0xE200000000000000;
            __s._countAndFlagsBits = v260;
            __s._object = v261;
          }

          else
          {
            _StringGuts.append(_:)(10272, 0xE200000000000000, 0, 2, v225, v226, v227, v228, v229, v230, v231, v232);
            0xE200000000000000;
          }
        }

        else
        {
          __s._object;
          __s._countAndFlagsBits = 10272;
          __s._object = 0xE200000000000000;
        }

        TypeName = swift_getTypeName(v154, 0);
        if (v263 < 0)
        {
          goto LABEL_422;
        }

        v264 = TypeName;
        v265 = v263;
        v266 = validateUTF8(_:)(TypeName, v263);
        if (v266 < 0)
        {
          v270 = repairUTF8(_:firstKnownBrokenRange:)(v264, v265, v267, v268);
        }

        else
        {
          v270 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v264, v265, v266 & 1, v269);
        }

        v280 = v271;
        v281 = __s._object;
        v282 = (__s._object >> 56) & 0xF;
        if ((__s._object & 0x2000000000000000) == 0)
        {
          v282 = __s._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (v282 || (__s._countAndFlagsBits & ~__s._object & 0x2000000000000000) != 0)
        {
          if ((__s._object & 0x2000000000000000) != 0)
          {
            if ((v271 & 0x2000000000000000) == 0)
            {
              goto LABEL_328;
            }

            v307 = v270;
            v308 = specialized _SmallString.init(_:appending:)(__s._countAndFlagsBits, __s._object, v270, v271);
            if (v310)
            {
              v283 = HIBYTE(v280) & 0xF;
              v270 = v307;
              goto LABEL_329;
            }

            v323 = v309;
            v324 = v308;
            v281;
            v280;
            __s._countAndFlagsBits = v324;
            __s._object = v323;
            v280 = v323;
            v292 = v324;
          }

          else
          {
            if ((v271 & 0x2000000000000000) != 0)
            {
              v283 = HIBYTE(v271) & 0xF;
              goto LABEL_329;
            }

LABEL_328:
            v283 = v270 & 0xFFFFFFFFFFFFLL;
LABEL_329:
            _StringGuts.append(_:)(v270, v280, 0, v283, v272, v273, v274, v275, v276, v277, v278, v279);
            v280;
            v292 = __s._countAndFlagsBits;
            v280 = __s._object;
          }
        }

        else
        {
          v311 = v270;
          __s._object;
          v292 = v311;
          __s._countAndFlagsBits = v311;
          __s._object = v280;
        }

        v293 = HIBYTE(v280) & 0xF;
        if ((v280 & 0x2000000000000000) == 0)
        {
          v293 = v292 & 0xFFFFFFFFFFFFLL;
        }

        if (v293 || (v292 & ~v280 & 0x2000000000000000) != 0)
        {
          if ((v280 & 0x2000000000000000) != 0 && (v294 = specialized _SmallString.init(_:appending:)(v292, v280, 0x3E29uLL, 0xE200000000000000), (v296 & 1) == 0))
          {
            v306 = v294;
            v305 = v295;
            v280;
            0xE200000000000000;
          }

          else
          {
            _StringGuts.append(_:)(15913, 0xE200000000000000, 0, 2, v284, v285, v286, v287, v288, v289, v290, v291);
            0xE200000000000000;
            v306 = __s._countAndFlagsBits;
            v305 = __s._object;
          }
        }

        else
        {
          v280;
          v305 = 0xE200000000000000;
          v306 = 15913;
        }

        v312 = v438;
        v313 = HIBYTE(v438) & 0xF;
        if ((v438 & 0x2000000000000000) == 0)
        {
          v313 = v437 & 0xFFFFFFFFFFFFLL;
        }

        if (v313 || (v437 & ~v438 & 0x2000000000000000) != 0)
        {
          if ((v438 & 0x2000000000000000) != 0)
          {
            if ((v305 & 0x2000000000000000) == 0)
            {
              goto LABEL_205;
            }

            v314 = specialized _SmallString.init(_:appending:)(v437, v438, v306, v305);
            if ((v316 & 1) == 0)
            {
              v317 = v314;
              v318 = v315;
              v305;
              v438;
              v437 = v317;
              v438 = v318;
              goto LABEL_208;
            }

LABEL_351:
            v144 = HIBYTE(v305) & 0xF;
          }

          else
          {
            if ((v305 & 0x2000000000000000) != 0)
            {
              goto LABEL_351;
            }

LABEL_205:
            v144 = v306 & 0xFFFFFFFFFFFFLL;
          }

          _StringGuts.append(_:)(v306, v305, 0, v144, v297, v298, v299, v300, v301, v302, v303, v304);
          v145 = v305;
        }

        else
        {
          v437 = v306;
          v438 = v305;
          v145 = v312;
        }

LABEL_207:
        v145;
        goto LABEL_208;
      }

      v183 = v449;
      if ((v450 >> 61) >= 2)
      {
        if ((v450 != 0xA000000000000000 || v451 | v449 | v455 | v454 | v453 | v452) && v450 == 0xA000000000000000 && v449 == 1 && !(v454 | v451 | v455 | v453 | v452))
        {
          v204 = v438;
          v255 = HIBYTE(v438) & 0xF;
          if ((v438 & 0x2000000000000000) == 0)
          {
            v255 = v437 & 0xFFFFFFFFFFFFLL;
          }

          if (v255 || (v437 & ~v438 & 0x2000000000000000) != 0)
          {
            if ((v438 & 0x2000000000000000) != 0)
            {
              v206 = specialized _SmallString.init(_:appending:)(v437, v438, 0x21uLL, 0xE100000000000000);
              if ((v256 & 1) == 0)
              {
LABEL_354:
                v319 = v206;
                v320 = v207;
                v204;
                0xE100000000000000;
                v437 = v319;
                v438 = v320;
                goto LABEL_208;
              }
            }

            v209 = 33;
            goto LABEL_308;
          }

          v414 = 33;
        }

        else
        {
          v204 = v438;
          v205 = HIBYTE(v438) & 0xF;
          if ((v438 & 0x2000000000000000) == 0)
          {
            v205 = v437 & 0xFFFFFFFFFFFFLL;
          }

          if (v205 || (v437 & ~v438 & 0x2000000000000000) != 0)
          {
            if ((v438 & 0x2000000000000000) != 0)
            {
              v206 = specialized _SmallString.init(_:appending:)(v437, v438, 0x3FuLL, 0xE100000000000000);
              if ((v208 & 1) == 0)
              {
                goto LABEL_354;
              }
            }

            v209 = 63;
LABEL_308:
            _StringGuts.append(_:)(v209, 0xE100000000000000, 0, 1, v173, v174, v175, v176, v177, v178, v179, v180);
            v145 = 0xE100000000000000;
            goto LABEL_207;
          }

          v414 = 63;
        }

        v437 = v414;
        v438 = 0xE100000000000000;
LABEL_412:
        v145 = v204;
        goto LABEL_207;
      }

      v184 = swift_reflectionMirror_recursiveCount(v143);
      if (v184 < 0)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v185 = v184;
      if (!v184)
      {
LABEL_251:
        v187 = _StringGuts.init(_initialCapacity:)(16);
        v197 = v188;
        __s._countAndFlagsBits = v187;
        __s._object = v188;
        v198 = HIBYTE(v188) & 0xF;
        if ((v188 & 0x2000000000000000) == 0)
        {
          v198 = v187 & 0xFFFFFFFFFFFFLL;
        }

        if (v198 || (v187 & ~v188 & 0x2000000000000000) != 0)
        {
          if (v188 & 0x2000000000000000) == 0 || (v199 = specialized _SmallString.init(_:appending:)(v187, v188, 0x2074657366666F3CuLL, 0xE800000000000000), (v201))
          {
            _StringGuts.append(_:)(0x2074657366666F3CLL, 0xE800000000000000, 0, 8, v189, v190, v191, v192, v193, v194, v195, v196);
            0xE800000000000000;
            v203 = __s._countAndFlagsBits;
            v202 = __s._object;
            goto LABEL_359;
          }

          v203 = v199;
          v202 = v200;
          0xE800000000000000;
          v197;
        }

        else
        {
          v188;
          v202 = 0xE800000000000000;
          v203 = 0x2074657366666F3CLL;
        }

        __s._countAndFlagsBits = v203;
        __s._object = v202;
LABEL_359:
        v325 = _int64ToString(_:radix:uppercase:)(v183, 10, 0, swift_int64ToString);
        v335 = v326;
        v336 = HIBYTE(v202) & 0xF;
        if ((v202 & 0x2000000000000000) == 0)
        {
          v336 = v203 & 0xFFFFFFFFFFFFLL;
        }

        if (v336 || (v203 & ~v202 & 0x2000000000000000) != 0)
        {
          if ((v202 & 0x2000000000000000) != 0)
          {
            if ((v326 & 0x2000000000000000) == 0)
            {
              goto LABEL_367;
            }

            v351 = v325;
            v352 = specialized _SmallString.init(_:appending:)(v203, v202, v325, v326);
            if (v354)
            {
              v337 = HIBYTE(v335) & 0xF;
              v325 = v351;
              goto LABEL_368;
            }

            v410 = v353;
            v411 = v352;
            v335;
            v202;
            __s._countAndFlagsBits = v411;
            __s._object = v410;
            v335 = v410;
            v346 = v411;
          }

          else
          {
            if ((v326 & 0x2000000000000000) != 0)
            {
              v337 = HIBYTE(v326) & 0xF;
              goto LABEL_368;
            }

LABEL_367:
            v337 = v325 & 0xFFFFFFFFFFFFLL;
LABEL_368:
            _StringGuts.append(_:)(v325, v335, 0, v337, v327, v328, v329, v330, v331, v332, v333, v334);
            v335;
            v346 = __s._countAndFlagsBits;
            v335 = __s._object;
          }
        }

        else
        {
          v357 = v325;
          v202;
          v346 = v357;
          __s._countAndFlagsBits = v357;
          __s._object = v335;
        }

        v347 = HIBYTE(v335) & 0xF;
        if ((v335 & 0x2000000000000000) == 0)
        {
          v347 = v346 & 0xFFFFFFFFFFFFLL;
        }

        if (v347 || (v346 & ~v335 & 0x2000000000000000) != 0)
        {
          if ((v335 & 0x2000000000000000) != 0 && (v348 = specialized _SmallString.init(_:appending:)(v346, v335, 0x2820uLL, 0xE200000000000000), (v350 & 1) == 0))
          {
            v355 = v348;
            v356 = v349;
            0xE200000000000000;
            v335;
            __s._countAndFlagsBits = v355;
            __s._object = v356;
          }

          else
          {
            _StringGuts.append(_:)(10272, 0xE200000000000000, 0, 2, v338, v339, v340, v341, v342, v343, v344, v345);
            0xE200000000000000;
          }
        }

        else
        {
          v335;
          __s._countAndFlagsBits = 10272;
          __s._object = 0xE200000000000000;
        }

        v358 = swift_getTypeName(v154, 0);
        if (v359 < 0)
        {
          goto LABEL_422;
        }

        v360 = v358;
        v361 = v359;
        v362 = validateUTF8(_:)(v358, v359);
        if (v362 < 0)
        {
          v366 = repairUTF8(_:firstKnownBrokenRange:)(v360, v361, v363, v364);
        }

        else
        {
          v366 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v360, v361, v362 & 1, v365);
        }

        v376 = v367;
        v377 = __s._object;
        v378 = (__s._object >> 56) & 0xF;
        if ((__s._object & 0x2000000000000000) == 0)
        {
          v378 = __s._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (v378 || (__s._countAndFlagsBits & ~__s._object & 0x2000000000000000) != 0)
        {
          if ((__s._object & 0x2000000000000000) != 0)
          {
            if ((v367 & 0x2000000000000000) == 0)
            {
              goto LABEL_393;
            }

            v402 = v366;
            v403 = specialized _SmallString.init(_:appending:)(__s._countAndFlagsBits, __s._object, v366, v367);
            if (v405)
            {
              v379 = HIBYTE(v376) & 0xF;
              v366 = v402;
              goto LABEL_394;
            }

            v412 = v404;
            v413 = v403;
            v376;
            v377;
            __s._countAndFlagsBits = v413;
            __s._object = v412;
            v376 = v412;
            v388 = v413;
          }

          else
          {
            if ((v367 & 0x2000000000000000) != 0)
            {
              v379 = HIBYTE(v367) & 0xF;
              goto LABEL_394;
            }

LABEL_393:
            v379 = v366 & 0xFFFFFFFFFFFFLL;
LABEL_394:
            _StringGuts.append(_:)(v366, v376, 0, v379, v368, v369, v370, v371, v372, v373, v374, v375);
            v376;
            v388 = __s._countAndFlagsBits;
            v376 = __s._object;
          }
        }

        else
        {
          v407 = v366;
          __s._object;
          v388 = v407;
          __s._countAndFlagsBits = v407;
          __s._object = v376;
        }

        v389 = HIBYTE(v376) & 0xF;
        if ((v376 & 0x2000000000000000) == 0)
        {
          v389 = v388 & 0xFFFFFFFFFFFFLL;
        }

        if (v389 || (v388 & ~v376 & 0x2000000000000000) != 0)
        {
          if ((v376 & 0x2000000000000000) != 0 && (v390 = specialized _SmallString.init(_:appending:)(v388, v376, 0x3E29uLL, 0xE200000000000000), (v392 & 1) == 0))
          {
            v204 = v391;
            v406 = v390;
            0xE200000000000000;
            v376;
            v401 = v406;
          }

          else
          {
            _StringGuts.append(_:)(15913, 0xE200000000000000, 0, 2, v380, v381, v382, v383, v384, v385, v386, v387);
            0xE200000000000000;
            v401 = __s._countAndFlagsBits;
            v204 = __s._object;
          }
        }

        else
        {
          v376;
          v204 = 0xE200000000000000;
          v401 = 15913;
        }

        v408 = v438;
        v409 = HIBYTE(v438) & 0xF;
        if ((v438 & 0x2000000000000000) == 0)
        {
          v409 = v437 & 0xFFFFFFFFFFFFLL;
        }

        if (!v409 && (v437 & ~v438 & 0x2000000000000000) == 0)
        {
          v437 = v401;
          v438 = v204;
          v145 = v408;
          goto LABEL_207;
        }

        _StringGuts.append(_:)(v401, v204, v393, v394, v395, v396, v397, v398, v399, v400);
        goto LABEL_412;
      }

      v186 = 0;
      while (swift_reflectionMirror_recursiveChildOffset(v143, v186) != v183)
      {
        if (v185 == ++v186)
        {
          goto LABEL_251;
        }
      }

      __s._countAndFlagsBits = 0;
      __s._object = 0;
      v440 = 0;
      swift_reflectionMirror_recursiveChildMetadata(v143, v186, &__s);
      v238 = __s._countAndFlagsBits;
      if (!__s._countAndFlagsBits)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v239 = _swift_stdlib_strlen(__s._countAndFlagsBits);
      if ((v239 & 0x8000000000000000) != 0)
      {
        goto LABEL_422;
      }

      v240 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFs4Int8V_s5UInt8Vs5NeverOSSTt1g5019_sSS7cStringSSSPys4f14VG_tcfcSSSRys5G7VGXEfU_Tf1cn_n(v238, v239);
      v250 = v241;
      v251 = v438;
      v252 = HIBYTE(v438) & 0xF;
      if ((v438 & 0x2000000000000000) == 0)
      {
        v252 = v437 & 0xFFFFFFFFFFFFLL;
      }

      if (v252 || (v437 & ~v438 & 0x2000000000000000) != 0)
      {
        _StringGuts.append(_:)(v240, v241, v242, v243, v244, v245, v246, v247, v248, v249);
      }

      else
      {
        v437 = v240;
        v438 = v241;
        v250 = v251;
      }

      v250;
      if (__s._object)
      {
        (__s._object)(__s._countAndFlagsBits);
      }

LABEL_208:
      v143 = v154;
      if (!v153)
      {
        goto LABEL_203;
      }
    }
  }

  v141._countAndFlagsBits = 0x666C65732ELL;
  v141._object = 0xE500000000000000;
  String.write(_:)(v141);
  0xE500000000000000;
LABEL_203:
  v438;
  v438;
  return v437;
}

uint64_t Sequence.first(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, int **a4@<X3>, char *a5@<X8>)
{
  v43 = a1;
  v44 = a2;
  v36 = a5;
  v45 = a4;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v9 = v8;
  v38 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - v10;
  v14 = type metadata accessor for Optional(0, v9, v12, v13);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v36 - v16;
  v18 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v22 = v21;
  v37 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v36 - v23);
  (*(v18 + 16))(v20, v46, a3);
  v25 = v45;
  (v45[4])(a3, v45);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v25, a3, v22, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v27 = *(AssociatedConformanceWitness + 16);
  v45 = v24;
  v46 = v22;
  v28 = v22;
  v29 = v38;
  v40 = v27;
  v41 = AssociatedConformanceWitness;
  (v27)(v28);
  v39 = *(v29 + 48);
  if (v39(v17, 1, v9) == 1)
  {
LABEL_6:
    (*(v37 + 8))(v45, v46);
    v32 = 1;
    v33 = v36;
  }

  else
  {
    v42 = *(v29 + 32);
    v30 = (v29 + 8);
    while (1)
    {
      v42(v11, v17, v9);
      v31 = v43(v11);
      if (v5)
      {
        (*v30)(v11, v9);
        return (*(v37 + 8))(v45, v46);
      }

      if (v31)
      {
        break;
      }

      (*v30)(v11, v9);
      v40(v46, v41);
      if (v39(v17, 1, v9) == 1)
      {
        goto LABEL_6;
      }
    }

    (*(v37 + 8))(v45, v46);
    v35 = v36;
    v42(v36, v11, v9);
    v33 = v35;
    v32 = 0;
  }

  return (*(v38 + 56))(v33, v32, 1, v9);
}

Swift::Int KeyValuePairs.endIndex.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getTupleTypeMetadata2(0, a2, a3, 0, 0);

  return Array._getCount()();
}

uint64_t KeyValuePairs.subscript.getter(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a2;
  swift_getTupleTypeMetadata2(0, a5, a6, 0, 0);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v17 = &v24 - v16;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v15, v15);
  v19 = ((a4 & 0xC000000000000001) == 0) | ~isClassOrObjCExistentialType;
  Array._checkSubscript(_:wasNativeTypeChecked:)(a3, (a4 & 0xC000000000000001) == 0 || (isClassOrObjCExistentialType & 1) == 0);
  if (v19)
  {
    (*(v13 + 16))(v17, a4 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * a3, v12);
  }

  else
  {
    v22 = _ArrayBuffer._getElementSlowPath(_:)(a3, a4, v12);
    if (v14 != 8)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v25 = v22;
    v23 = v22;
    (*(v13 + 16))(v17, &v25, v12);
    swift_unknownObjectRelease(v23);
  }

  v20 = *(v12 + 48);
  (*(*(a5 - 8) + 32))(a1, v17, a5);
  return (*(*(a6 - 8) + 32))(v24, &v17[v20], a6);
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance KeyValuePairs<A, B>@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for KeyValuePairs<A, B>, a2, a3);

  return RandomAccessCollection<>.index(before:)(a1, a2, WitnessTable, &protocol witness table for Int, a4);
}

uint64_t _ss13KeyValuePairsVyxq_GSlsSl5index_8offsetBy5IndexQzAG_SitFTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for KeyValuePairs<A, B>, a3, a3);

  return RandomAccessCollection<>.index(_:offsetBy:)(a1, a2, a3, WitnessTable, &protocol witness table for Int, a4);
}

uint64_t _ss13KeyValuePairsVyxq_GSlsSl5index_8offsetBy07limitedF05IndexQzSgAH_SiAHtFTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for KeyValuePairs<A, B>, a4, a3);

  return RandomAccessCollection.index(_:offsetBy:limitedBy:)(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t _ss13KeyValuePairsVyxq_GSlsSl8distance4from2toSi5IndexQz_AHtFTW_0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for KeyValuePairs<A, B>, a3, a3);

  return RandomAccessCollection<>.distance(from:to:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

Swift::Int protocol witness for Collection.endIndex.getter in conformance KeyValuePairs<A, B>@<X0>(uint64_t a1@<X0>, Swift::Int *a2@<X8>)
{
  result = KeyValuePairs.endIndex.getter(*v2, *(a1 + 16), *(a1 + 24));
  *a2 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance KeyValuePairs<A, B>(void *a1, unint64_t *a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x40, 0xFBuLL);
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  swift_getTupleTypeMetadata2(0, v10, v9, "key value ", 0);
  v12 = v11;
  v8[4] = v11;
  v13 = *(v11 - 8);
  v8[5] = v13;
  v14 = *(v13 + 64);
  if (swift_coroFrameAlloc)
  {
    v15 = swift_coroFrameAlloc(v14, 0xFBuLL);
  }

  else
  {
    v15 = malloc(v14);
  }

  v16 = v15;
  v8[6] = v15;
  v17 = KeyValuePairs.subscript.read(v8, *a2, *v3, v10, v9);
  v19 = v18;
  v8[7] = v17;
  (*(*(v10 - 8) + 16))(v16);
  (*(*(v9 - 8) + 16))(&v16[*(v12 + 48)], v19, v9);
  return protocol witness for Collection.subscript.read in conformance KeyValuePairs<A, B>;
}

void (*KeyValuePairs.subscript.read(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc(0x28, 0x42BDuLL);
  }

  else
  {
    v10 = malloc(0x28uLL);
  }

  v11 = v10;
  *a1 = v10;
  swift_getTupleTypeMetadata2(0, a4, a5, 0, 0);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  v32 = v15;
  if (swift_coroFrameAlloc)
  {
    v16 = swift_coroFrameAlloc(v15, 0x42BDuLL);
  }

  else
  {
    v16 = malloc(v15);
  }

  v17 = v16;
  v11[1] = v16;
  v33 = a5;
  swift_getTupleTypeMetadata2(0, a4, a5, "key value ", 0);
  v19 = v18;
  v11[2] = v18;
  v20 = *(v18 - 8);
  v11[3] = v20;
  v21 = *(v20 + 64);
  v22 = a2;
  if (swift_coroFrameAlloc)
  {
    v23 = swift_coroFrameAlloc(v21, 0x42BDuLL);
  }

  else
  {
    v23 = malloc(v21);
  }

  v24 = v23;
  v11[4] = v23;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v13, v13);
  v26 = ((a3 & 0xC000000000000001) == 0) | ~isClassOrObjCExistentialType;
  Array._checkSubscript(_:wasNativeTypeChecked:)(v22, (a3 & 0xC000000000000001) == 0 || (isClassOrObjCExistentialType & 1) == 0);
  if (v26)
  {
    (*(v14 + 16))(v17, a3 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v22, v13);
  }

  else
  {
    v30 = _ArrayBuffer._getElementSlowPath(_:)(v22, a3, v13);
    if (v32 != 8)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    *v11 = v30;
    v31 = v30;
    (*(v14 + 16))(v17, v11, v13);
    swift_unknownObjectRelease(v31);
  }

  v27 = *(v19 + 48);
  v28 = *(v13 + 48);
  (*(*(a4 - 8) + 32))(v24, v17, a4);
  (*(*(v33 - 8) + 32))(&v24[v27], &v17[v28], v33);
  return KeyValuePairs.subscript.read;
}

void KeyValuePairs.subscript.read(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 8);
  (*(*(*a1 + 24) + 8))(v2, *(*a1 + 16));
  free(v2);
  free(v3);

  free(v1);
}

uint64_t protocol witness for Collection.indices.getter in conformance KeyValuePairs<A, B>@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for KeyValuePairs<A, B>, a1, a2);

  return RandomAccessCollection<>.indices.getter(a1, WitnessTable, &protocol witness table for Int, a3);
}

uint64_t protocol witness for Collection.index(after:) in conformance KeyValuePairs<A, B>@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for KeyValuePairs<A, B>, a2, a3);

  return RandomAccessCollection<>.index(after:)(a1, a2, WitnessTable, &protocol witness table for Int, a4);
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance _ArrayBuffer<A>(uint64_t *a1, unint64_t a2, uint64_t a3, int *a4, uint64_t (*a5)(uint64_t *, unint64_t, unint64_t, _UNKNOWN **))
{
  v9 = *a1;
  WitnessTable = swift_getWitnessTable(a4, a2, a3);
  return a5(&v9, a2, WitnessTable, &protocol witness table for Int);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance KeyValuePairs<A, B>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for KeyValuePairs<A, B>, a1, a3);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t KeyValuePairs.description.getter(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a3;
  v214 = *(a3 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v213 = &v186 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v186 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2(0, v12, v13, 0, 0);
  v15 = v14;
  v16 = *(v14 - 8);
  v187 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v195 = &v186 - v17;
  swift_getTupleTypeMetadata2(0, a2, v3, "key value ", 0);
  v19 = v18;
  v20 = *(v18 - 8);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v194 = &v186 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v193 = &v186 - v23;
  v205 = type metadata accessor for Optional(0, v19, v24, v25);
  v26 = *(v205 - 8);
  v27 = MEMORY[0x1EEE9AC00](v205);
  v204 = &v186 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v196 = &v186 - v29;
  if (!Array._getCount()())
  {
    return 6109787;
  }

  v208 = v11;
  v219 = 91;
  v220 = 0xE100000000000000;
  v218[0] = 0;
  v218[1] = a1;
  v192 = a1 & 0xC000000000000001;
  v191 = (v16 + 16);
  v212 = (v9 + 32);
  v214 += 4;
  v190 = (v20 + 32);
  v203 = (v20 + 56);
  v202 = (v26 + 32);
  v201 = (v20 + 48);
  a1;
  v211 = 1;
  v210 = xmmword_18071DB30;
  v189 = xmmword_18071DC40;
  v188 = xmmword_18071DB40;
  v198 = v3;
  v206 = a2;
  v207 = v16;
  v197 = v19;
  v30 = v196;
  v31 = a1;
  v200 = a1;
  v199 = v15;
  while (1)
  {
    v35 = Array._getCount()();
    v36 = v218[0];
    if (v218[0] == v35)
    {
      v37 = 1;
      v38 = v204;
    }

    else
    {
      v39 = v192 == 0;
      v40 = v39 | ~_swift_isClassOrObjCExistentialType(v15, v15);
      Array._checkSubscript(_:wasNativeTypeChecked:)(v36, v40 & 1);
      v209 = v36;
      if (v40)
      {
        v41 = v195;
        (*(v16 + 16))(v195, v31 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v36, v15);
      }

      else
      {
        v139 = _ArrayBuffer._getElementSlowPath(_:)(v36, v31, v15);
        if (v187 != 8)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        *&v217 = v139;
        v140 = v139;
        v41 = v195;
        (*v191)(v195, &v217, v15);
        swift_unknownObjectRelease(v140);
      }

      v42 = *(v19 + 48);
      v43 = *(v15 + 48);
      v44 = *v212;
      v45 = v193;
      v46 = v41;
      v47 = v206;
      (*v212)(v193, v41, v206);
      v48 = *v214;
      v49 = &v46[v43];
      v19 = v197;
      v3 = v198;
      (*v214)(&v45[v42], v49, v198);
      v50 = v194;
      v44(v194, v45, v47);
      a2 = v47;
      v48(&v50[*(v19 + 48)], &v45[v42], v3);
      v38 = v204;
      (*v190)(v204, v50, v19);
      *&v217 = v209;
      v52 = type metadata accessor for KeyValuePairs(0, v47, v3, v51);
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for KeyValuePairs<A, B>, v52, v53);
      RandomAccessCollection<>.index(after:)(&v217, v52, WitnessTable, &protocol witness table for Int, v218);
      v37 = 0;
      v30 = v196;
    }

    (*v203)(v38, v37, 1, v19);
    (*v202)(v30, v38, v205);
    if ((*v201)(v30, 1, v19) == 1)
    {
      break;
    }

    v55 = *(v19 + 48);
    v56 = *v212;
    v57 = v208;
    (*v212)(v208, v30, a2);
    v209 = *v214;
    v209(v213, v30 + v55, v3);
    if (v211)
    {
      goto LABEL_56;
    }

    v59 = v219;
    v58 = v220;
    v60 = HIBYTE(v220) & 0xF;
    v61 = v219 & 0xFFFFFFFFFFFFLL;
    if ((v220 & 0x2000000000000000) != 0)
    {
      v62 = HIBYTE(v220) & 0xF;
    }

    else
    {
      v62 = v219 & 0xFFFFFFFFFFFFLL;
    }

    if (!v62 && (v219 & ~v220 & 0x2000000000000000) == 0)
    {
      v220;
      v219 = 8236;
      v220 = 0xE200000000000000;
      goto LABEL_51;
    }

    if ((v220 & 0x2000000000000000) == 0 || v60 > 0xD)
    {
      0xE200000000000000;
      if ((v58 & 0x1000000000000000) != 0)
      {
        v141 = String.UTF8View._foreignCount()();
        v71 = v141 + 2;
        if (__OFADD__(v141, 2))
        {
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          v180 = String.UTF8View._foreignCount()();
          v153 = v180 + 1;
          if (!__OFADD__(v180, 1))
          {
            goto LABEL_160;
          }

LABEL_213:
          __break(1u);
LABEL_214:
          if ((v30 & 0x1000000000000000) != 0)
          {
            a2 = _StringGuts._foreignConvertedToSmall()(a2, v30);
            v185 = v184;
            v30;
            v30 = v185;
          }

          else
          {
            if ((a2 & 0x1000000000000000) != 0)
            {
              v181 = ((v30 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v182 = a2 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v181 = _StringObject.sharedUTF8.getter(a2, v30);
            }

            closure #1 in _StringGuts._convertedToSmall()(v181, v182, &v217, v152);
            v30;
            v30 = *(&v217 + 1);
            a2 = v217;
          }

          goto LABEL_195;
        }
      }

      else
      {
        v70 = __OFADD__(v62, 2);
        v71 = v62 + 2;
        if (v70)
        {
          goto LABEL_209;
        }
      }

      if ((v59 & ~v58 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v58 & 0xFFFFFFFFFFFFFFFLL))
      {
        v72 = _StringGuts.nativeUnusedCapacity.getter(v59, v58);
        if (v73)
        {
          goto LABEL_219;
        }

        if (v71 > 15)
        {
          goto LABEL_36;
        }

        if ((v58 & 0x2000000000000000) == 0)
        {
          if (v72 < 2)
          {
LABEL_31:
            if ((v58 & 0x1000000000000000) != 0)
            {
              v59 = _StringGuts._foreignConvertedToSmall()(v59, v58);
              v75 = v138;
            }

            else
            {
              if ((v59 & 0x1000000000000000) != 0)
              {
                v74 = ((v58 & 0xFFFFFFFFFFFFFFFLL) + 32);
              }

              else
              {
                v74 = _StringObject.sharedUTF8.getter(v59, v58);
                v61 = v147;
              }

              closure #1 in _StringGuts._convertedToSmall()(v74, v61, &v217, v69);
              v75 = *(&v217 + 1);
              v59 = v217;
            }

            goto LABEL_41;
          }

LABEL_36:
          _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v71, 2);
          v217 = v188;
          closure #1 in _StringGuts.append(_:)(&v217, 2uLL, &v219, 1);
          swift_bridgeObjectRelease_n(0xE200000000000000, 2);
LABEL_51:
          v57 = v208;
          goto LABEL_56;
        }
      }

      else
      {
        if (v71 > 15)
        {
          goto LABEL_36;
        }

        if ((v58 & 0x2000000000000000) == 0)
        {
          goto LABEL_31;
        }
      }

      v75 = v58;
LABEL_41:
      v77 = 0xE200000000000000;
      0xE200000000000000;
      v78._rawBits = 1;
      v79._rawBits = 131073;
      v80._rawBits = _StringGuts.validateScalarRange(_:)(v78, v79, 0x202CuLL, 0xE200000000000000)._rawBits;
      if (v80._rawBits < 0x10000)
      {
        v80._rawBits |= 3;
      }

      if (v80._rawBits >> 16 || (v83 = 8236, (v81._rawBits & 0xFFFFFFFFFFFF0000) != 0x20000))
      {
        v83 = specialized static String._copying(_:)(v80._rawBits, v81._rawBits, 0x202CuLL, 0xE200000000000000);
        v77 = v84;
        0xE200000000000000;
      }

      if ((v77 & 0x2000000000000000) != 0)
      {
        v77;
      }

      else if ((v77 & 0x1000000000000000) != 0)
      {
        v83 = _StringGuts._foreignConvertedToSmall()(v83, v77);
        v211 = v150;
        v77;
        v77 = v211;
      }

      else
      {
        if ((v83 & 0x1000000000000000) != 0)
        {
          v144 = ((v77 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v145 = v83 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v144 = _StringObject.sharedUTF8.getter(v83, v77);
        }

        closure #1 in _StringGuts._convertedToSmall()(v144, v145, &v217, v82);
        v77;
        v77 = *(&v217 + 1);
        v83 = v217;
      }

      v85 = specialized _SmallString.init(_:appending:)(v59, v75, v83, v77);
      if (v87)
      {
        goto LABEL_219;
      }

      v88 = v85;
      v89 = v86;
      v58;
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
      v219 = v88;
      v220 = v89;
      goto LABEL_51;
    }

    v63 = 8 * (HIBYTE(v220) & 7);
    v64 = (-255 << v63) - 1;
    v65 = 44 << v63;
    v66 = v60 + 1;
    if (v60 >= 8)
    {
      v68 = v64 & v220 | v65;
      v67 = 8 * (v66 & 7);
    }

    else
    {
      v59 = v64 & v219 | v65;
      if (v60 != 7)
      {
        v59 = ((-255 << (8 * (v66 & 7u))) - 1) & v59 | (32 << (8 * (v66 & 7u)));
        v76 = v220;
        goto LABEL_53;
      }

      v67 = 0;
      v68 = v220;
    }

    v76 = ((-255 << v67) - 1) & v68 | (32 << v67);
LABEL_53:
    v220;
    0xE200000000000000;
    v90 = 0xE000000000000000;
    if (v59 & 0x8080808080808080 | v76 & 0x80808080808080)
    {
      v90 = 0xA000000000000000;
    }

    v219 = v59;
    v220 = (v90 & 0xFF00000000000000 | (v60 << 56) | v76 & 0xFFFFFFFFFFFFFFLL) + 0x200000000000000;
    a2 = v206;
    v57 = v208;
LABEL_56:
    v91 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>();
    inited = swift_initStackObject(v91, &v216);
    *(inited + 1) = v210;
    inited[7] = a2;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(inited + 4);
    v56(boxed_opaque_existential_0Tm, v57, a2);
    specialized _debugPrint<A>(_:separator:terminator:to:)(inited, 32, 0xE100000000000000, 0, 0xE000000000000000, &v219);
    0xE000000000000000;
    0xE100000000000000;
    swift_setDeallocating(inited);
    __swift_destroy_boxed_opaque_existential_1Tm(inited + 4);
    v58 = v219;
    v94 = v220;
    v95 = HIBYTE(v220) & 0xF;
    v59 = v219 & 0xFFFFFFFFFFFFLL;
    if ((v220 & 0x2000000000000000) != 0)
    {
      v96 = HIBYTE(v220) & 0xF;
    }

    else
    {
      v96 = v219 & 0xFFFFFFFFFFFFLL;
    }

    if (!v96 && (v219 & ~v220 & 0x2000000000000000) == 0)
    {
      v220;
      v219 = 8250;
      v220 = 0xE200000000000000;
      v15 = v199;
      v16 = v207;
LABEL_4:
      v32 = v209;
      goto LABEL_5;
    }

    if ((v220 & 0x2000000000000000) == 0 || v95 > 0xD)
    {
      0xE200000000000000;
      if ((v94 & 0x1000000000000000) != 0)
      {
        v96 = String.UTF8View._foreignCount()();
      }

      v70 = __OFADD__(v96, 2);
      v104 = v96 + 2;
      v16 = v207;
      if (v70)
      {
        __break(1u);
LABEL_208:
        v58 = _StringGuts._foreignConvertedToSmall()(v58, v59);
        v153 = v179;
        goto LABEL_188;
      }

      v105 = v58 & ~v94;
      if ((v105 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v94 & 0xFFFFFFFFFFFFFFFLL))
      {
        v106 = _StringGuts.nativeUnusedCapacity.getter(v58, v94);
        if (v107)
        {
          goto LABEL_219;
        }

        if (v104 > 15)
        {
          goto LABEL_80;
        }

        if ((v94 & 0x2000000000000000) == 0)
        {
          if (v106 < 2)
          {
LABEL_75:
            if ((v94 & 0x1000000000000000) != 0)
            {
              v58 = _StringGuts._foreignConvertedToSmall()(v58, v94);
              v109 = v137;
            }

            else
            {
              if ((v58 & 0x1000000000000000) != 0)
              {
                v108 = ((v94 & 0xFFFFFFFFFFFFFFFLL) + 32);
              }

              else
              {
                v108 = _StringObject.sharedUTF8.getter(v58, v94);
                v59 = v146;
              }

              closure #1 in _StringGuts._convertedToSmall()(v108, v59, &v217, v103);
              v109 = *(&v217 + 1);
              v58 = v217;
            }

            goto LABEL_95;
          }

LABEL_80:
          v59 = v105 & 0x2000000000000000;
          v110 = _StringGuts.nativeUnusedCapacity.getter(v58, v94);
          if (v111)
          {
            a2 = v206;
            if (v59)
            {
              goto LABEL_82;
            }

            goto LABEL_83;
          }

          a2 = v206;
          if (v110 > 1)
          {
            if (!v59 || !swift_isUniquelyReferenced_nonNull_native(v94 & 0xFFFFFFFFFFFFFFFLL))
            {
              goto LABEL_89;
            }
          }

          else
          {
            if (v59)
            {
LABEL_82:
              swift_isUniquelyReferenced_nonNull_native(v94 & 0xFFFFFFFFFFFFFFFLL);
            }

LABEL_83:
            v112 = _StringGuts.nativeCapacity.getter(v58, v94);
            if (v113)
            {
              v114 = 0;
            }

            else
            {
              v114 = v112;
            }

            if (v114 + 0x4000000000000000 < 0)
            {
              goto LABEL_210;
            }

            v115 = 2 * v114;
            if (v115 > v104)
            {
              v104 = v115;
            }

LABEL_89:
            _StringGuts.grow(_:)(v104);
          }

          v217 = v189;
          closure #1 in _StringGuts.append(_:)(&v217, 2uLL, &v219, 1);
          swift_bridgeObjectRelease_n(0xE200000000000000, 2);
          v15 = v199;
          goto LABEL_4;
        }
      }

      else
      {
        if (v104 > 15)
        {
          goto LABEL_80;
        }

        if ((v94 & 0x2000000000000000) == 0)
        {
          goto LABEL_75;
        }
      }

      v109 = v94;
LABEL_95:
      v117 = 0xE200000000000000;
      0xE200000000000000;
      v118._rawBits = 1;
      v119._rawBits = 131073;
      v120._rawBits = _StringGuts.validateScalarRange(_:)(v118, v119, 0x203AuLL, 0xE200000000000000)._rawBits;
      if (v120._rawBits < 0x10000)
      {
        v120._rawBits |= 3;
      }

      if (v120._rawBits >> 16 || (v123 = 8250, (v121._rawBits & 0xFFFFFFFFFFFF0000) != 0x20000))
      {
        v123 = specialized static String._copying(_:)(v120._rawBits, v121._rawBits, 0x203AuLL, 0xE200000000000000);
        v117 = v124;
        0xE200000000000000;
      }

      if ((v117 & 0x2000000000000000) != 0)
      {
        v117;
      }

      else if ((v117 & 0x1000000000000000) != 0)
      {
        v123 = _StringGuts._foreignConvertedToSmall()(v123, v117);
        v149 = v148;
        v117;
        v117 = v149;
      }

      else
      {
        if ((v123 & 0x1000000000000000) != 0)
        {
          v142 = ((v117 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v143 = v123 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v142 = _StringObject.sharedUTF8.getter(v123, v117);
        }

        closure #1 in _StringGuts._convertedToSmall()(v142, v143, &v217, v122);
        v117;
        v117 = *(&v217 + 1);
        v123 = v217;
      }

      v125 = HIBYTE(v109) & 0xF;
      v126 = HIBYTE(v117) & 0xF;
      v127 = v126 + v125;
      if (v126 + v125 > 0xF)
      {
        goto LABEL_219;
      }

      0xE200000000000000;
      if (v126)
      {
        v128 = 0;
        v129 = 0;
        v130 = 8 * v125;
        v131 = 8 * v126;
        v3 = v198;
        do
        {
          v132 = v117 >> (v128 & 0x38);
          if (v129 < 8)
          {
            v132 = v123 >> v128;
          }

          v133 = (v132 << (v130 & 0x38)) | ((-255 << (v130 & 0x38)) - 1) & v109;
          v134 = (v132 << v130) | ((-255 << v130) - 1) & v58;
          if (v125 <= 7)
          {
            v58 = v134;
          }

          else
          {
            v109 = v133;
          }

          ++v125;
          v130 += 8;
          v128 += 8;
          ++v129;
        }

        while (v131 != v128);
      }

      else
      {
        v3 = v198;
      }

      v94;
      0xE200000000000000;
      v136 = 0xE000000000000000;
      if (v58 & 0x8080808080808080 | v109 & 0x80808080808080)
      {
        v136 = 0xA000000000000000;
      }

      v219 = v58;
      v220 = v136 & 0xFF00000000000000 | (v127 << 56) | v109 & 0xFFFFFFFFFFFFFFLL;
      a2 = v206;
      v15 = v199;
      v16 = v207;
      v19 = v197;
      goto LABEL_4;
    }

    v97 = 8 * (HIBYTE(v220) & 7);
    v98 = (-255 << v97) - 1;
    v99 = 58 << v97;
    v100 = v95 + 1;
    if (v95 >= 8)
    {
      v102 = v98 & v220 | v99;
      v101 = 8 * (v100 & 7);
      v32 = v209;
    }

    else
    {
      v58 = v98 & v219 | v99;
      v32 = v209;
      if (v95 != 7)
      {
        v58 = ((-255 << (8 * (v100 & 7u))) - 1) & v58 | (32 << (8 * (v100 & 7u)));
        v116 = v220;
        goto LABEL_116;
      }

      v101 = 0;
      v102 = v220;
    }

    v116 = ((-255 << v101) - 1) & v102 | (32 << v101);
LABEL_116:
    v220;
    0xE200000000000000;
    v135 = 0xE000000000000000;
    if (v58 & 0x8080808080808080 | v116 & 0x80808080808080)
    {
      v135 = 0xA000000000000000;
    }

    v219 = v58;
    v220 = (v135 & 0xFF00000000000000 | (v95 << 56) | v116 & 0xFFFFFFFFFFFFFFLL) + 0x200000000000000;
    v15 = v199;
    v16 = v207;
LABEL_5:
    v33 = swift_initStackObject(v91, &v215);
    *(v33 + 1) = v210;
    v33[7] = v3;
    v34 = __swift_allocate_boxed_opaque_existential_0Tm(v33 + 4);
    v32(v34, v213, v3);
    specialized _debugPrint<A>(_:separator:terminator:to:)(v33, 32, 0xE100000000000000, 0, 0xE000000000000000, &v219);
    0xE000000000000000;
    0xE100000000000000;
    swift_setDeallocating(v33);
    __swift_destroy_boxed_opaque_existential_1Tm(v33 + 4);
    v211 = 0;
    v31 = v200;
  }

  v200;
  v58 = v219;
  v59 = v220;
  a2 = HIBYTE(v220) & 0xF;
  v30 = v219 & 0xFFFFFFFFFFFFLL;
  if ((v220 & 0x2000000000000000) != 0)
  {
    v151 = HIBYTE(v220) & 0xF;
  }

  else
  {
    v151 = v219 & 0xFFFFFFFFFFFFLL;
  }

  if (!v151 && (v219 & ~v220 & 0x2000000000000000) == 0)
  {
    v220;
    return 93;
  }

  if ((v220 & 0x2000000000000000) == 0 || a2 == 15)
  {
    0xE100000000000000;
    if ((v59 & 0x1000000000000000) != 0)
    {
      goto LABEL_211;
    }

    v70 = __OFADD__(v151, 1);
    v153 = v151 + 1;
    if (v70)
    {
      goto LABEL_213;
    }

LABEL_160:
    v154 = v58 & ~v59;
    if ((v154 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v59 & 0xFFFFFFFFFFFFFFFLL))
    {
      v155 = _StringGuts.nativeUnusedCapacity.getter(v58, v59);
      if (v156)
      {
        goto LABEL_219;
      }

      if (v153 > 15)
      {
        goto LABEL_171;
      }

      if ((v59 & 0x2000000000000000) == 0)
      {
        if (v155 < 1)
        {
          goto LABEL_166;
        }

LABEL_171:
        v158 = v154 & 0x2000000000000000;
        v159 = _StringGuts.nativeUnusedCapacity.getter(v58, v59);
        if ((v160 & 1) != 0 || v159 <= 0)
        {
          if (v158)
          {
            swift_isUniquelyReferenced_nonNull_native(v59 & 0xFFFFFFFFFFFFFFFLL);
          }

          v161 = _StringGuts.nativeCapacity.getter(v58, v59);
          if (v162)
          {
            v163 = 0;
          }

          else
          {
            v163 = v161;
          }

          if (v163 + 0x4000000000000000 < 0)
          {
            __break(1u);
            goto LABEL_219;
          }

          v164 = 2 * v163;
          if (v164 > v153)
          {
            v153 = v164;
          }
        }

        else if (v158 && swift_isUniquelyReferenced_nonNull_native(v59 & 0xFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_185;
        }

        _StringGuts.grow(_:)(v153);
LABEL_185:
        v217 = xmmword_18071DB50;
        closure #1 in _StringGuts.append(_:)(&v217, 1uLL, &v219, 1);
        swift_bridgeObjectRelease_n(0xE100000000000000, 2);
        return v219;
      }
    }

    else
    {
      if (v153 > 15)
      {
        goto LABEL_171;
      }

      if ((v59 & 0x2000000000000000) == 0)
      {
LABEL_166:
        if ((v59 & 0x1000000000000000) != 0)
        {
          goto LABEL_208;
        }

        if ((v58 & 0x1000000000000000) != 0)
        {
          v157 = ((v59 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v157 = _StringObject.sharedUTF8.getter(v58, v59);
          v30 = v183;
        }

        closure #1 in _StringGuts._convertedToSmall()(v157, v30, &v217, v152);
        v153 = *(&v217 + 1);
        v58 = v217;
LABEL_188:
        v30 = 0xE100000000000000;
        0xE100000000000000;
        v165._rawBits = 65537;
        a2 = 93;
        v166._rawBits = 1;
        v167._rawBits = _StringGuts.validateScalarRange(_:)(v166, v165, 0x5DuLL, 0xE100000000000000)._rawBits;
        if (v167._rawBits < 0x10000)
        {
          v167._rawBits |= 3;
        }

        if (v167._rawBits >> 16 || (v168._rawBits & 0xFFFFFFFFFFFF0000) != 0x10000)
        {
          a2 = specialized static String._copying(_:)(v167._rawBits, v168._rawBits, 0x5DuLL, 0xE100000000000000);
          v30 = v169;
          0xE100000000000000;
        }

        if ((v30 & 0x2000000000000000) == 0)
        {
          goto LABEL_214;
        }

        v30;
LABEL_195:
        v170 = HIBYTE(v153) & 0xF;
        v171 = HIBYTE(v30) & 0xF;
        if (v171 + v170 <= 0xF)
        {
          0xE100000000000000;
          if (v171)
          {
            v172 = 0;
            v173 = 0;
            v174 = 8 * v170;
            do
            {
              v175 = v30 >> (v172 & 0x38);
              if (v173 < 8)
              {
                v175 = a2 >> v172;
              }

              v176 = (v175 << (v174 & 0x38)) | ((-255 << (v174 & 0x38)) - 1) & v153;
              v177 = (v175 << v174) | ((-255 << v174) - 1) & v58;
              if (v170 <= 7)
              {
                v58 = v177;
              }

              else
              {
                v153 = v176;
              }

              ++v170;
              v174 += 8;
              v172 += 8;
              ++v173;
            }

            while (8 * v171 != v172);
          }

          v59;
          0xE100000000000000;
          return v58;
        }

LABEL_219:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    v153 = v59;
    goto LABEL_188;
  }

  if (a2 < 8)
  {
    v58 = ((-255 << (8 * (HIBYTE(v220) & 7u))) - 1) & v219 | (93 << (8 * (HIBYTE(v220) & 7u)));
  }

  v220;
  0xE100000000000000;
  return v58;
}

uint64_t LazyDropWhileSequence<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 16);
  v7 = (*(a3 + 80))(v12, a1, v6, a3);
  v9 = v8;
  swift_getAssociatedTypeWitness(0, *(a3 + 8), v6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  (*(*(v10 - 8) + 16))(a4, v9, v10);
  return v7(v12, 0);
}

uint64_t (*protocol witness for Collection.subscript.read in conformance <> LazySequence<A>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc(0x28, 0xBCC5uLL);
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = LazySequence<>.subscript.read(v8, a2, a3, *(a4 - 8));
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t (*LazySequence<>.subscript.read(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc(0x38, 0x932DuLL);
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v10 = *(a3 + 16);
  swift_getAssociatedTypeWitness(0, *(a4 + 8), v10, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v9[4] = v11;
  v12 = *(v11 - 8);
  v13 = v12;
  v9[5] = v12;
  v14 = *(v12 + 64);
  if (swift_coroFrameAlloc)
  {
    v15 = swift_coroFrameAlloc(v14, 0x932DuLL);
  }

  else
  {
    v15 = malloc(v14);
  }

  v16 = v15;
  v9[6] = v15;
  v17 = (*(a4 + 80))(v9, a2, v10, a4);
  (*(v13 + 16))(v16);
  v17(v9, 0);
  return LazySequence<>.subscript.read;
}

void LazyDropWhileSequence<>.subscript.read(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  (*(*(*a1 + 40) + 8))(v2, *(*a1 + 32));
  free(v2);

  free(v1);
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance <> LazyDropWhileSequence<A>(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, int **))
{
  v7 = *(a3 - 8);
  swift_getAssociatedTypeWitness(0, v7, *(a2 + 16), &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - v11;
  (*(v10 + 32))(&v14 - v11, a1, v9);
  a4(v12, a2, v7);
  return (*(v10 + 8))(v12, v9);
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance <> LazyDropWhileSequence<A>(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t))
{
  v7 = *(a3 - 8);
  swift_getAssociatedTypeWitness(0, *(v7 + 8), *(a2 + 16), &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - v11;
  (*(v10 + 32))(&v14 - v11, a1, v9);
  a4(v12, a2, v7);
  return (*(v10 + 8))(v12, v9);
}

uint64_t LazySequence.makeIterator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 32))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return (*(*(a1 + 24) + 32))(v2);
}

uint64_t LazySequence._copyContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  MEMORY[0x1EEE9AC00](a1);
  (*(v11 + 32))(&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v4, v9);
  return (*(*(a4 + 24) + 64))(a1, a2, a3, v9);
}

uint64_t LazySequence._copyToContiguousArray()(uint64_t a1)
{
  v2 = *(a1 + 16);
  MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 32))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return (*(*(a1 + 24) + 56))(v2);
}

void String._withUTF8<A>(_:)(uint64_t (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  a4;
  String.withUTF8<A>(_:)(a1);
  a4;
}

void Substring._withUTF8<A>(_:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  a6;
  Substring.withUTF8<A>(_:)(a1);
  a6;
}

uint64_t withExtendedLifetime<A, B>(_:_:)(uint64_t a1, uint64_t (*a2)(void))
{
  return a2();
}

{
  return a2();
}

uint64_t withUnsafePointer<A, B>(to:_:)(uint64_t a1, uint64_t (*a2)(void))
{
  return a2();
}

{
  return a2();
}

void _IndexBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  swift_deallocClassInstance(v0);
}

uint64_t ManagedBuffer.capacity.getter()
{
  v1 = *v0;
  v2 = _swift_stdlib_malloc_size(v0);
  v3 = *(*(v1 + 88) - 8);
  v4 = *(v3 + 72);
  if (!v4 || ((v5 = v2 - ((*(v3 + 80) + *(*v0 + 48)) & ~*(v3 + 80)), v4 == -1) ? (v6 = v5 == 0x8000000000000000) : (v6 = 0), v6))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v5 / v4;
}

uint64_t ManagedBufferPointer.init(bufferClass:minimumCapacity:makingHeaderWith:)(unint64_t a1, uint64_t a2, void (*a3)(id, uint64_t (*)(void *a1), char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a3;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](a1);
  result = static ManagedBufferPointer._checkValidBufferClass(_:creating:)(v13, 1, v14, v15);
  if (a2 < 0)
  {
    LODWORD(v34) = 0;
    v33 = 343;
    v32[0] = 2;
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v17 = *(v11 + 80);
  v18 = v17 + 1;
  v19 = (v17 + 16) & ~v17;
  v20 = v19 + v12;
  if (__OFADD__(v19, v12))
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = *(a6 - 8);
  v22 = *(v21 + 80);
  v23 = v22 + 1;
  v24 = __CFADD__(v20, v22 + 1);
  v25 = v20 + v22 + 1;
  if (v24)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v26 = *(v21 + 72);
  v27 = a2 * v26;
  if ((a2 * v26) >> 64 != (a2 * v26) >> 63)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28 = (v25 - 1) & ~v22;
  if (__OFADD__(v28, v27))
  {
LABEL_18:
    __break(1u);
    return result;
  }

  if (v23 > v18)
  {
    v18 = v23;
  }

  if (v18 <= 8)
  {
    v18 = 8;
  }

  v29 = swift_bufferAllocate(a1, (v28 + v27), v18 - 1);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v34 = a5;
  v35 = a6;
  v31 = swift_unknownObjectRetain(v30);
  v37(v31, partial apply for closure #1 in closure #1 in ManagedBufferPointer.init(bufferClass:minimumCapacity:makingHeaderWith:), v32);
  swift_unknownObjectRelease(v29);
  if (v6)
  {
    swift_unknownObjectRelease(v29);
  }

  else
  {
    (*(v11 + 32))(v29 + v19, &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a5);
  }

  return v29;
}

void *ManagedBufferPointer.init(bufferClass:minimumCapacity:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = static ManagedBufferPointer._checkValidBufferClass(_:creating:)(a1, 1, a3, a4);
  if (a2 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v9 = *(a3 - 8);
  v10 = *(v9 + 80);
  v11 = v10 + 1;
  v12 = (v10 + 16) & ~v10;
  v13 = *(v9 + 64);
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_15;
  }

  v15 = *(a4 - 8);
  v16 = *(v15 + 80);
  v17 = v16 + 1;
  v18 = __CFADD__(v14, v16 + 1);
  v19 = v14 + v16 + 1;
  if (v18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = *(v15 + 72);
  v21 = a2 * v20;
  if ((a2 * v20) >> 64 != (a2 * v20) >> 63)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v22 = (v19 - 1) & ~v16;
  if (__OFADD__(v22, v21))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  if (v17 > v11)
  {
    v11 = v17;
  }

  if (v11 <= 8)
  {
    v11 = 8;
  }

  return swift_bufferAllocate(a1, (v22 + v21), v11 - 1);
}

uint64_t closure #1 in closure #1 in ManagedBufferPointer.init(bufferClass:minimumCapacity:makingHeaderWith:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_unknownObjectRetain(a1);
  v7 = ManagedBufferPointer.init(unsafeBufferObject:)(v6, a2);
  v8 = _swift_stdlib_malloc_size(v7);
  v9 = *(a2 - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_10;
  }

  v14 = *(a3 - 8);
  v15 = *(v14 + 80);
  v16 = __CFADD__(v13, v15 + 1);
  v17 = v13 + v15 + 1;
  if (v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v18 = *(v14 + 72);
  if (!v18 || ((v19 = v8 - ((v17 - 1) & ~v15), v19 == 0x8000000000000000) ? (v20 = v18 == -1) : (v20 = 0), v20))
  {
LABEL_11:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  a1;
  return v19 / v18;
}

unint64_t ManagedBufferPointer.init(unsafeBufferObject:)(unint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType(a1);
  _swift_getObjCClassInstanceExtents(ObjectType);
  if (v5 < 0)
  {
    goto LABEL_8;
  }

  if (v5 == 16)
  {
    goto LABEL_6;
  }

  _swift_getObjCClassInstanceExtents(ObjectType);
  if (v6 < 0)
  {
LABEL_8:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = *(a2 - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = __OFADD__(v8, v9);
  v11 = v8 + v9;
  if (v10)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v6 != v11)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((_swift_objcClassUsesNativeSwiftReferenceCounting(ObjectType) & 1) == 0)
  {
LABEL_11:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

uint64_t ManagedBufferPointer.capacity.getter(const void *a1, uint64_t a2, uint64_t a3)
{
  v5 = _swift_stdlib_malloc_size(a1);
  v6 = *(a2 - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = *(a3 - 8);
  v12 = *(v11 + 80);
  v13 = v10 + v12 + 1;
  if (__CFADD__(v10, v12 + 1))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = *(v11 + 72);
  if (!v14 || ((v15 = v5 - ((v13 - 1) & ~v12), v15 == 0x8000000000000000) ? (v16 = v14 == -1) : (v16 = 0), v16))
  {
LABEL_11:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v15 / v14;
}

uint64_t static ManagedBufferPointer._checkValidBufferClass(_:creating:)(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  _swift_getObjCClassInstanceExtents(a1);
  if (v8 < 0)
  {
    goto LABEL_10;
  }

  if (v8 == 16)
  {
    goto LABEL_8;
  }

  if (a2)
  {
    v10 = type metadata accessor for ManagedBuffer(0, a3, a4, v9);
    if (!swift_dynamicCastMetatype(a1, v10))
    {
LABEL_11:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  result = _swift_getObjCClassInstanceExtents(a1);
  if (v12 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v13 = *(a3 - 8);
  v14 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v15 = *(v13 + 64);
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    return result;
  }

  if (v12 != v17)
  {
    goto LABEL_11;
  }

LABEL_8:
  result = _swift_objcClassUsesNativeSwiftReferenceCounting(a1);
  if ((result & 1) == 0)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t static ManagedBufferPointer._elementOffset.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  result = a1 - 8;
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = __OFADD__(v4, v5);
  v7 = v4 + v5;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = *(*(a2 - 8) + 80);
    v9 = __CFADD__(v7, v8 + 1);
    v10 = v7 + v8 + 1;
    if (!v9)
    {
      return (v10 - 1) & ~v8;
    }
  }

  __break(1u);
  return result;
}

uint64_t static ManagedBufferPointer._alignmentMask.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 - 8) + 80);
  if (*(*(a2 - 8) + 80) + 1 <= v2 + 1)
  {
    LODWORD(v3) = v2 + 1;
  }

  else
  {
    LODWORD(v3) = *(*(a2 - 8) + 80) + 1;
  }

  if (v3 <= 8)
  {
    v3 = 8;
  }

  else
  {
    v3 = v3;
  }

  return v3 - 1;
}

uint64_t _ss20ManagedBufferPointerVsRi__rlE6headerxvpRi__r0_lAByxq_GTK@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = ManagedBufferPointer.header.read();
  (*(*(v4 - 8) + 16))(a3);
  return v5(&v7, 0);
}

uint64_t _ss20ManagedBufferPointerVsRi__rlE6headerxvpRi__r0_lAByxq_GTk(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  type metadata accessor for ManagedBufferPointer(0, v5, *(a3 + a4 - 8), a4);
  v6 = ManagedBufferPointer.header.modify();
  (*(*(v5 - 8) + 24))(v7, a1, v5);
  return v6(&v9, 0);
}

uint64_t ManagedBufferPointer._elementPointer.getter(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = __OFADD__(v4, v5);
  v7 = v4 + v5;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = *(*(a3 - 8) + 80);
    v9 = __CFADD__(v7, v8 + 1);
    v10 = v7 + v8 + 1;
    if (!v9)
    {
      result += (v10 - 1) & ~v8;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*ManagedBufferPointer.withUnsafeMutablePointerToElements<A>(_:)(uint64_t (*result)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t)
{
  v5 = *(a4 - 8);
  v6 = *(v5 + 64);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = __OFADD__(v7, v6);
  v9 = v7 + v6;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v10 = *(*(a5 - 8) + 80);
    v11 = __CFADD__(v9, v10 + 1);
    v12 = v9 + v10 + 1;
    if (!v11)
    {
      return result(a3 + ((v12 - 1) & ~v10));
    }
  }

  __break(1u);
  return result;
}

uint64_t (*ManagedBufferPointer.withUnsafeMutablePointers<A>(_:)(uint64_t (*result)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t, uint64_t)
{
  v5 = *(a4 - 8);
  v6 = *(v5 + 64);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = v7 + v6;
  if (__OFADD__(v7, v6))
  {
    __break(1u);
  }

  else
  {
    v9 = *(*(a5 - 8) + 80);
    v10 = __CFADD__(v8, v9 + 1);
    v11 = v8 + v9 + 1;
    if (!v10)
    {
      return result(a3 + v7, a3 + ((v11 - 1) & ~v9));
    }
  }

  __break(1u);
  return result;
}

uint64_t LazyMapSequence.init(_base:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a4 - 8) + 32))(a7, a1, a4);
  result = type metadata accessor for LazyMapSequence(0, a4, a5, a6);
  v14 = (a7 + *(result + 44));
  *v14 = a2;
  v14[1] = a3;
  return result;
}

uint64_t LazyMapSequence._transform.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v3 = *v2;
  v2[1];
  return v3;
}

uint64_t LazyMapSequence.Iterator.init(_base:_transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, int **a6@<X5>, uint64_t a7@<X8>)
{
  swift_getAssociatedTypeWitness(0, a6, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  result = type metadata accessor for LazyMapSequence.Iterator(0, a4, a5, a6);
  v16 = (a7 + *(result + 44));
  *v16 = a2;
  v16[1] = a3;
  return result;
}

uint64_t specialized LazyMapSequence.Iterator.next()()
{
  v1 = v0[2];
  if (v1 < v0[3])
  {
    v2 = *v0;
    v3 = v0[1];
    if ((v3 & 0x1000000000000000) != 0)
    {
      v26 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v0[2]);
      v6 = v26 + v1;
      v27 = _StringGuts.foreignErrorCorrectedGrapheme(startingAt:endingAt:)(v1, v26 + v1);
      object = v27._object;
      countAndFlagsBits = v27._countAndFlagsBits;
      goto LABEL_28;
    }

    if ((v3 & 0x2000000000000000) != 0)
    {
      v17 = HIBYTE(v3) & 0xF;
      v32 = *v0;
      v33 = v3 & 0xFFFFFFFFFFFFFFLL;
      v6 = v1 + 1;
      if (v1 + 1 != v17)
      {
        v18 = *(&v32 + v1);
        if (v18 == 2573 || (v18 & 0x80808080) != 0)
        {
          v28 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v1);
          v6 = v28 + v1;
          if (v28 + v1 < v1)
          {
            goto LABEL_39;
          }
        }
      }

      v32 = v2;
      v33 = v3 & 0xFFFFFFFFFFFFFFLL;
      if ((v1 & 0x8000000000000000) == 0 && v17 >= v6)
      {
        v13 = v6 - v1;
        if (v6 - v1 >= 0)
        {
          v20 = _allASCII(_:)((&v32 + v1), v6 - v1);
          v16 = &v32 + v1;
          v14 = v20;
          goto LABEL_27;
        }
      }
    }

    else
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        v4 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v5 = v2 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v4 = _StringObject.sharedUTF8.getter(*v0, v0[1]);
      }

      v6 = v1 + 1;
      if (v1 + 1 != v5)
      {
        if (!v4)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v7 = *&v4[v1];
        if (v7 == 2573 || (v7 & 0x80808080) != 0)
        {
          v30 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v1);
          v6 = v30 + v1;
          if (v30 + v1 < v1)
          {
LABEL_39:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }
        }
      }

      if ((v2 & 0x1000000000000000) != 0)
      {
        v9 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v10 = v2 & 0xFFFFFFFFFFFFLL;
        if (v1 < 0)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v9 = _StringObject.sharedUTF8.getter(v2, v3);
        v10 = v29;
        if (v1 < 0)
        {
          goto LABEL_36;
        }
      }

      if (v10 >= v6)
      {
        v11 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v1, v6, v9, v10);
        v13 = v12;
        v14 = _allASCII(_:)(v11, v12);
        v16 = v11;
LABEL_27:
        countAndFlagsBits = specialized static String._uncheckedFromUTF8(_:isASCII:)(v16, v13, v14, v15);
LABEL_28:
        v23 = object;
        v0[2] = v6;
        v24 = v0[4];
        v31[0] = countAndFlagsBits;
        v31[1] = object;
        v24(&v32, v31);
        v23;
        return v32;
      }
    }

LABEL_36:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return 0;
}

{
  v1 = v0[1];
  v2 = v0[4];
  v3 = v2 >> 14;
  v4 = v1 >> 14;
  if (v2 >> 14 == v1 >> 14)
  {
    return 0;
  }

  v6 = *v0;
  v7 = v0[2];
  v8 = v0[3];
  v9 = (v8 & 0x1000000000000000) == 0 || (v7 & 0x800000000000000) != 0;
  v10 = v0[4] & 0xC;
  v11 = 4 << v9;
  if ((v2 & 1) == 0 || v10 == v11)
  {
    v14 = v2 >> 14;
    rawBits = v0[4];
    if (v10 == v11)
    {
      rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v2)._rawBits;
      v11 = 4 << v9;
      v10 = v2 & 0xC;
      v14 = rawBits >> 14;
    }

    if (v14 < v6 >> 14 || v14 >= v4)
    {
      goto LABEL_42;
    }

    if ((rawBits & 1) == 0)
    {
      v75 = v10;
      v60 = v11;
      rawBits = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits;
      v11 = v60;
      v10 = v75;
    }
  }

  else
  {
    v12 = v3 < v4 && v3 >= v6 >> 14;
    rawBits = v0[4];
    if (!v12)
    {
      goto LABEL_42;
    }
  }

  v72 = v9;
  v73 = v11;
  v16 = (rawBits >> 8) & 0x3F;
  v17 = rawBits >> 16;
  v18 = v1 >> 16;
  v71 = v1 >> 16;
  v74 = v10;
  if (!v16)
  {
    if (v17 == v18)
    {
      v16 = 0;
      goto LABEL_26;
    }

    if ((v8 & 0x1000000000000000) != 0)
    {
LABEL_109:
      v16 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v17);
      goto LABEL_26;
    }

    if ((v8 & 0x2000000000000000) != 0)
    {
      v77 = v7;
      v78 = v8 & 0xFFFFFFFFFFFFFFLL;
      v40 = v17 + 1;
      if (v17 + 1 != (HIBYTE(v8) & 0xF))
      {
        v41 = *(&v77 + v17);
        goto LABEL_52;
      }
    }

    else
    {
      if ((v7 & 0x1000000000000000) != 0)
      {
        v38 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v39 = v7 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = _StringObject.sharedUTF8.getter(v7, v8);
      }

      v40 = v17 + 1;
      if (v17 + 1 != v39)
      {
        if (!v38)
        {
          goto LABEL_96;
        }

        v41 = *&v38[v17];
LABEL_52:
        if (v41 != 2573 && (v41 & 0x80808080) == 0)
        {
          goto LABEL_54;
        }

        goto LABEL_109;
      }
    }

LABEL_54:
    if (v18 >= v40)
    {
      v20 = v40;
    }

    else
    {
      v20 = v1 >> 16;
    }

    if (v20 >= v17)
    {
      goto LABEL_31;
    }

LABEL_58:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_26:
  v19 = v16 + v17;
  if (v18 >= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v1 >> 16;
  }

  if ((v8 & 0x1000000000000000) != 0)
  {
    v42 = _StringGuts.foreignErrorCorrectedGrapheme(startingAt:endingAt:)(v17, v20);
    countAndFlagsBits = v42._countAndFlagsBits;
    object = v42._object;
    v33 = v73;
    v32 = v74;
    if ((v2 & 2) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_39;
  }

  if (v20 < v17)
  {
    goto LABEL_58;
  }

LABEL_31:
  if ((v8 & 0x2000000000000000) != 0)
  {
    v70 = v7;
    v77 = v7;
    v78 = v8 & 0xFFFFFFFFFFFFFFLL;
    if ((HIBYTE(v8) & 0xF) >= v20)
    {
      v34 = v20 - v17;
      if (v20 - v17 >= 0)
      {
        v35 = _allASCII(_:)((&v77 + v17), v20 - v17);
        countAndFlagsBits = specialized static String._uncheckedFromUTF8(_:isASCII:)(&v77 + v17, v34, v35, v36);
        object = v37;
        v7 = v70;
        v33 = v73;
        v32 = v74;
        if ((v2 & 2) == 0)
        {
          goto LABEL_60;
        }

        goto LABEL_39;
      }
    }

    goto LABEL_108;
  }

  if ((v7 & 0x1000000000000000) != 0)
  {
    v21 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v22 = v7 & 0xFFFFFFFFFFFFLL;
    if ((v7 & 0xFFFFFFFFFFFFLL) >= v20)
    {
      goto LABEL_34;
    }

LABEL_108:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v61 = v7;
  v62 = v7;
  v63 = v20;
  v21 = _StringObject.sharedUTF8.getter(v61, v8);
  v22 = v64;
  v20 = v63;
  v7 = v62;
  if (v22 < v20)
  {
    goto LABEL_108;
  }

LABEL_34:
  v23 = v7;
  v24 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v17, v20, v21, v22);
  v26 = v25;
  v27 = _allASCII(_:)(v24, v25);
  countAndFlagsBits = specialized static String._uncheckedFromUTF8(_:isASCII:)(v24, v26, v27, v28);
  object = v30;
  v7 = v23;
  v33 = v73;
  v32 = v74;
  if ((v2 & 2) == 0)
  {
LABEL_60:
    if (v32 == v33)
    {
      v65 = countAndFlagsBits;
      v2 = _StringGuts._slowEnsureMatchingEncoding(_:)(v2)._rawBits;
      countAndFlagsBits = v65;
      v3 = v2 >> 14;
    }

    if (v3 >= v6 >> 14 && v3 < v4)
    {
      if (v2)
      {
        if ((v6 & 2) != 0)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v66 = countAndFlagsBits;
        v67 = _StringGuts.scalarAlignSlow(_:)(v2)._rawBits;
        countAndFlagsBits = v66;
        v2 = v2 & 0xC | v67 & 0xFFFFFFFFFFFFFFF3 | 1;
        if ((v6 & 2) != 0)
        {
LABEL_66:
          if ((v2 & 2) != 0)
          {
            goto LABEL_70;
          }
        }
      }

      if (v2 >> 14 != v6 >> 14 && v2 >> 14 != v4)
      {
        v43 = countAndFlagsBits;
        v2 = _StringGuts._slowRoundDownToNearestCharacter(_:in:)(v2, v6, v1, v7, v8);
        countAndFlagsBits = v43;
      }

      goto LABEL_70;
    }

LABEL_42:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_39:
  if (v32 == v33)
  {
    goto LABEL_60;
  }

  if (v3 >= v4 || v3 < v6 >> 14)
  {
    goto LABEL_42;
  }

LABEL_70:
  v44 = (v2 >> 8) & 0x3F;
  v45 = v2 >> 16;
  if (v44)
  {
    goto LABEL_86;
  }

  if (v45 == v71)
  {
    v44 = 0;
    goto LABEL_86;
  }

  if ((v8 & 0x1000000000000000) == 0)
  {
    if ((v8 & 0x2000000000000000) != 0)
    {
      v77 = v7;
      v78 = v8 & 0xFFFFFFFFFFFFFFLL;
      if (v45 + 1 == (HIBYTE(v8) & 0xF))
      {
LABEL_84:
        v44 = 1;
        goto LABEL_86;
      }

      v46 = &v77;
    }

    else
    {
      if ((v7 & 0x1000000000000000) != 0)
      {
        v46 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v47 = v7 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v69 = countAndFlagsBits;
        v46 = _StringObject.sharedUTF8.getter(v7, v8);
        countAndFlagsBits = v69;
      }

      if (v45 + 1 == v47)
      {
        goto LABEL_84;
      }

      if (!v46)
      {
LABEL_96:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    v48 = *(v46 + v45);
    if (v48 != 2573 && (v48 & 0x80808080) == 0)
    {
      goto LABEL_84;
    }
  }

  v49 = countAndFlagsBits;
  v44 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v45);
  countAndFlagsBits = v49;
LABEL_86:
  v50 = v44 + v45;
  if (v71 < v50)
  {
    v50 = v1 >> 16;
  }

  v51 = v50 << 16;
  v52 = v50 & 0xFFFFFFFFFFFFLL;
  if ((v50 & 0xFFFFFFFFFFFFLL) == v71)
  {
    v53 = 0;
LABEL_103:
    v51 |= v53 << 8;
    goto LABEL_104;
  }

  if ((v8 & 0x1000000000000000) == 0)
  {
    if ((v8 & 0x2000000000000000) != 0)
    {
      v77 = v7;
      v78 = v8 & 0xFFFFFFFFFFFFFFLL;
      if (v52 + 1 == (HIBYTE(v8) & 0xF))
      {
LABEL_101:
        v53 = 1;
        goto LABEL_103;
      }

      v54 = &v77;
    }

    else
    {
      if ((v7 & 0x1000000000000000) != 0)
      {
        v54 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v55 = v7 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v68 = countAndFlagsBits;
        v54 = _StringObject.sharedUTF8.getter(v7, v8);
        countAndFlagsBits = v68;
      }

      if (v52 + 1 == v55)
      {
        goto LABEL_101;
      }

      if (!v54)
      {
        goto LABEL_96;
      }
    }

    v56 = *(v54 + v52);
    if (v56 != 2573 && (v56 & 0x80808080) == 0)
    {
      goto LABEL_101;
    }
  }

  v57 = countAndFlagsBits;
  v53 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v52);
  countAndFlagsBits = v57;
  if (v53 <= 63)
  {
    goto LABEL_103;
  }

LABEL_104:
  v58 = 8;
  if (v72)
  {
    v58 = 4;
  }

  v0[4] = v6 & 2 | v58 | v51 | 1;
  v59 = v0[5];
  v76[0] = countAndFlagsBits;
  v76[1] = object;
  v59(&v77, v76);
  object;
  return v77;
}

uint64_t LazyMapSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  swift_getAssociatedTypeWitness(0, v4, v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v7 = v6;
  v31 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v29 - v8;
  v30 = type metadata accessor for Optional(0, v7, v9, v10);
  v11 = *(v30 - 8);
  v12 = MEMORY[0x1EEE9AC00](v30);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - v15;
  swift_getAssociatedTypeWitness(255, v4, v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v18 = v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v5, v17, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v20 = *(AssociatedConformanceWitness + 16);
  v21 = swift_checkMetadataState(0, v18);
  v20(v21, AssociatedConformanceWitness);
  v22 = *(v2 + *(a1 + 44));
  v23 = v16;
  v24 = v32;
  (*(v11 + 32))(v14, v23, v30);
  v25 = v31;
  v26 = 1;
  if ((*(v31 + 48))(v14, 1, v7) != 1)
  {
    v27 = v29;
    (*(v25 + 32))(v29, v14, v7);
    v22(v27);
    (*(v25 + 8))(v27, v7);
    v26 = 0;
  }

  return (*(*(*(a1 + 24) - 8) + 56))(v24, v26, 1);
}

__n128 LazyMapSequence.makeIterator()@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 32))(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v6);
  v9 = *(a1 + 32);
  (*(v9 + 32))(v6, v9);
  v10 = *(a1 + 44);
  v11 = type metadata accessor for LazyMapSequence.Iterator(0, v6, *(a1 + 24), v9);
  result = *(v3 + v10);
  *(a2 + *(v11 + 44)) = result;
  return result;
}

uint64_t specialized LazyMapSequence<>.index(after:)(unint64_t rawBits)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = (v4 & 0x1000000000000000) == 0 || (v5 & 0x800000000000000) != 0;
  v7 = rawBits & 0xC;
  v8 = 4 << v6;
  v9 = v3 >> 14;
  if ((rawBits & 2) != 0 && v7 != v8)
  {
    if (rawBits >> 14 >= v2 >> 14 && rawBits >> 14 < v9)
    {
      goto LABEL_26;
    }

LABEL_19:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v7 == v8)
  {
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
  }

  v11 = v2 >> 14;
  if (rawBits >> 14 < v2 >> 14 || rawBits >> 14 >= v9)
  {
    goto LABEL_19;
  }

  if (rawBits)
  {
    if ((v2 & 2) != 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v39 = v6;
    v30 = rawBits;
    v31._rawBits = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits;
    v32 = v30 & 0xC;
    v11 = v2 >> 14;
    v6 = v39;
    rawBits = v32 | v31._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
    if ((v2 & 2) != 0)
    {
LABEL_22:
      if ((rawBits & 2) != 0)
      {
        goto LABEL_26;
      }
    }
  }

  if (rawBits >> 14 != v11 && rawBits >> 14 != v9)
  {
    rawBits = _StringGuts._slowRoundDownToNearestCharacter(_:in:)(rawBits, v2, v3, v5, v4);
  }

LABEL_26:
  v13 = (rawBits >> 8) & 0x3F;
  v14 = rawBits >> 16;
  v15 = v3 >> 16;
  if (v13)
  {
    goto LABEL_41;
  }

  if (v14 == v15)
  {
    v13 = 0;
    goto LABEL_41;
  }

  if ((v4 & 0x1000000000000000) != 0)
  {
    goto LABEL_69;
  }

  if ((v4 & 0x2000000000000000) == 0)
  {
    if ((v5 & 0x1000000000000000) != 0)
    {
      v16 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v17 = v5 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v37 = rawBits >> 16;
      v38 = v15;
      v16 = _StringObject.sharedUTF8.getter(v5, v4);
      v15 = v38;
      v14 = v37;
    }

    if (v14 + 1 == v17)
    {
      goto LABEL_40;
    }

    if (!v16)
    {
      goto LABEL_72;
    }

    v18 = *&v16[v14];
    if (v18 == 2573)
    {
      goto LABEL_69;
    }

LABEL_39:
    if ((v18 & 0x80808080) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_69;
  }

  v40 = v5;
  v41 = v4 & 0xFFFFFFFFFFFFFFLL;
  if (v14 + 1 == (HIBYTE(v4) & 0xF))
  {
LABEL_40:
    v13 = 1;
    goto LABEL_41;
  }

  v18 = *(&v40 + v14);
  if (v18 != 2573)
  {
    goto LABEL_39;
  }

LABEL_69:
  v33 = v14;
  v34 = v15;
  v35 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v14);
  v15 = v34;
  v13 = v35;
  v14 = v33;
LABEL_41:
  v19 = v13 + v14;
  if (v15 < v19)
  {
    v19 = v15;
  }

  v20 = v19 << 16;
  v21 = v19 & 0xFFFFFFFFFFFFLL;
  if ((v19 & 0xFFFFFFFFFFFFLL) == v15)
  {
    v22 = 0;
LABEL_61:
    v20 |= v22 << 8;
    goto LABEL_62;
  }

  if ((v4 & 0x1000000000000000) == 0)
  {
    if ((v4 & 0x2000000000000000) == 0)
    {
      if ((v5 & 0x1000000000000000) != 0)
      {
        v23 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v24 = v5 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v36 = v19 & 0xFFFFFFFFFFFFLL;
        v23 = _StringObject.sharedUTF8.getter(v5, v4);
        v21 = v36;
      }

      if (v21 + 1 == v24)
      {
        goto LABEL_60;
      }

      if (v23)
      {
        v25 = *&v23[v21];
        if (v25 == 2573 || (v25 & 0x80808080) != 0)
        {
          goto LABEL_65;
        }

LABEL_60:
        v22 = 1;
        goto LABEL_61;
      }

LABEL_72:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v40 = v5;
    v41 = v4 & 0xFFFFFFFFFFFFFFLL;
    if (v21 + 1 == (HIBYTE(v4) & 0xF))
    {
      goto LABEL_60;
    }

    v26 = *(&v40 + v21);
    if (v26 != 2573 && (v26 & 0x80808080) == 0)
    {
      goto LABEL_60;
    }
  }

LABEL_65:
  v22 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v21);
  if (v22 <= 63)
  {
    goto LABEL_61;
  }

LABEL_62:
  v28 = 8;
  if (v6)
  {
    v28 = 4;
  }

  return v2 & 2 | v28 | v20 | 1;
}
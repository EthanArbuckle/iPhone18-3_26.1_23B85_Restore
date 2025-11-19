uint64_t sub_1AF8C7908()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AF8C7954(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6564697274735FLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746152706574735FLL && a2 == 0xE900000000000065 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E7546706574735FLL && a2 == 0xED00006E6F697463)
  {

    return 2;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1AF8C7A7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74657366666F5FLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616D726F665FLL && a2 == 0xE700000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x497265666675625FLL && a2 == 0xEC0000007865646ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1AF8C7B98()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AF8C7BE4()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AF8C7C30(uint64_t a1)
{
  v2 = sub_1AFDFCEC8();
  v3 = [v2 stringByDeletingPathExtension];

  if (!v3)
  {
    sub_1AFDFCEF8();
    v3 = sub_1AFDFCEC8();
  }

  v4 = sub_1AFDFCEC8();
  v5 = [v3 stringByAppendingPathExtension_];

  if (v5)
  {
    a1 = sub_1AFDFCEF8();
  }

  else
  {
  }

  return a1;
}

uint64_t sub_1AF8C7D14(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v139 = a2;
  sub_1AF8C8D34(0, &qword_1ED726B50, MEMORY[0x1E69E6D30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v134 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v133 = &v121 - v14;
  v15 = sub_1AFDFE488();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v132 = &v121 - v22;
  v142 = sub_1AFDFC128();
  v23 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142, v24);
  v140 = &v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v141 = &v121 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v121 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  if (a5)
  {
    v129 = v19;
    v150 = 0;
    v137 = a5;
    v135 = a3;
    v138 = v23;
    v136 = &v121 - v35;
    v131 = v15;
    v130 = v16;
    if (a3)
    {
      ObjectType = swift_getObjectType();
      v37 = *(a4 + 8);

      v38 = a3;
      v37(a1, v139, ObjectType, a4);
      v39 = sub_1AF8C7C30(a1);
      v41 = v40;
      v42 = swift_getObjectType();
      v43 = v38;
      v37(v39, v41, v42, a4);

      sub_1AFDFC0C8();
      v139 = v44;
      v45 = v32;
      v46 = v41;
      v47 = v142;
      (*(v138 + 8))(v45, v142);
      v48 = swift_getObjectType();
      v49 = v141;
      v37(v39, v46, v48, a4);
      v50 = v138;
      v51 = v140;
    }

    else
    {
      v52 = qword_1ED730EA0;

      if (v52 != -1)
      {
        swift_once();
      }

      v146 = 0;
      v147 = 0xE000000000000000;
      sub_1AFDFE218();
      v128 = "_TtC3VFX19MeshReferenceSystem";
      MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF2C630);
      MEMORY[0x1B2718AE0](a1, v139);
      MEMORY[0x1B2718AE0](0xD000000000000016, 0x80000001AFF2C660);
      v54 = v146;
      v53 = v147;
      v55 = sub_1AFDFDA08();
      v50 = v23;
      if (qword_1ED731058 != -1)
      {
        v118 = v55;
        swift_once();
        v55 = v118;
      }

      v146 = 0;
      sub_1AF0D4F18(v55, &v146, v54, v53);

      sub_1AFDFC018();
      v56 = sub_1AF8C7C30(a1);
      v58 = v57;
      v59 = qword_1ED730EA0;

      if (v59 != -1)
      {
        swift_once();
      }

      v146 = 0;
      v147 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000020, v128 | 0x8000000000000000);
      MEMORY[0x1B2718AE0](v56, v58);
      MEMORY[0x1B2718AE0](0xD000000000000016, 0x80000001AFF2C660);
      v61 = v146;
      v60 = v147;
      v62 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v119 = v62;
        swift_once();
        v62 = v119;
      }

      v146 = 0;
      sub_1AF0D4F18(v62, &v146, v61, v60);

      v49 = v141;
      sub_1AFDFC018();
      v139 = v58;
      v46 = v58;
      v51 = v140;
      v47 = v142;
    }

    (*(v50 + 16))(v51, v49, v47);
    v63 = sub_1AFDFC148();
    v65 = v64 >> 62;
    v66 = v136;
    if ((v64 >> 62) > 1)
    {
      if (v65 != 2 || *(v63 + 24) == *(v63 + 16))
      {
        goto LABEL_27;
      }
    }

    else if (v65)
    {
      if (!((0xFFFFFFFF00000001 * v63) >> 32))
      {
LABEL_27:
        v126 = v46;
        v110 = v63;
        v141 = v64;
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v146 = 0;
        v147 = 0xE000000000000000;
        sub_1AFDFE218();

        v146 = 0xD00000000000002BLL;
        v147 = 0x80000001AFF394A0;
        sub_1AF8C8CEC(&qword_1EB632790, 255, MEMORY[0x1E6968FB0]);
        v111 = sub_1AFDFEA08();
        v112 = v47;
        MEMORY[0x1B2718AE0](v111);

        v114 = v146;
        v113 = v147;
        v115 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v120 = v115;
          swift_once();
          v115 = v120;
        }

        v146 = 0;
        sub_1AF0D4F18(v115, &v146, v114, v113);

        sub_1AF439ED8(v110, v141);

        v116 = *(v50 + 8);
        v116(v51, v112);
        v116(v49, v112);
        v116(v66, v112);
        return 0;
      }
    }

    else if (!BYTE6(v64))
    {
      goto LABEL_27;
    }

    MEMORY[0x1EEE9AC00](v63, v64);
    *(&v121 - 4) = &v150;
    *(&v121 - 3) = v67;
    *(&v121 - 2) = v66;
    v69 = v68;
    v71 = v70;
    sub_1AF8C7514(sub_1AF8C8EF8, (&v121 - 6), v68, v70);
    sub_1AF439ED8(v69, v71);
    v127 = sub_1AFDFC148();
    v128 = v72;
    v126 = v46;
    v124 = type metadata accessor for SerializationContext();
    swift_allocObject();
    LOBYTE(v144[0]) = 1;
    v73 = sub_1AF69D428(0, 0, 1, 0x100000000);
    *(v73 + 80) = 16843008;
    v74 = sub_1AFDFBBB8();
    swift_allocObject();
    v75 = sub_1AFDFBBA8();
    v76 = v133;
    sub_1AFDFE478();
    v125 = 0;
    v77 = v130;
    v123 = *(v130 + 48);
    v78 = v131;
    v123(v76, 1, v131);
    v122 = *(v77 + 32);
    v79 = v132;
    v122(v132, v76, v78);
    v145 = v124;
    v144[0] = v73;

    v80 = sub_1AFDFBB98();
    sub_1AF824640(v144, v79);
    v80(v143, 0);
    v148 = v74;
    v149 = &off_1F2533B38;

    v146 = v75;
    v81 = v134;
    sub_1AFDFE478();
    v123(v81, 1, v78);
    v82 = v129;
    v122(v129, v81, v78);
    v83 = v150;
    sub_1AF8C8D34(0, &unk_1EB631BA0, sub_1AF8C8D98, type metadata accessor for UncheckedSendable);
    v145 = v84;
    v144[0] = v83;
    v85 = v148;
    v86 = v149;
    sub_1AF448018(&v146, v148);
    v87 = v86[1];
    swift_unknownObjectRetain();
    v87(v82, v144, v85, v86);
    (*(v77 + 8))(v82, v78);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v144);
    v88 = v148;
    v89 = v149;
    sub_1AF441150(&v146, v148);
    sub_1AF8C8E30();
    v91 = v90;
    v92 = v89[3];
    v93 = sub_1AF8C8CEC(qword_1EB6319B0, 255, sub_1AF8C8E30);
    v94 = v127;
    v95 = v128;
    v96 = v125;
    v92(v144, v91, v127, v128, v91, v93, v88, v89);
    if (!v96)
    {

      sub_1AF439ED8(v94, v95);

      v106 = *(v138 + 8);
      v107 = v142;
      v106(v140, v142);
      v106(v141, v107);
      v108 = v144[1];
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v146);
      v106(v136, v107);
      swift_unknownObjectRelease();
      return v108;
    }

    sub_1AF439ED8(v94, v95);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v146);
    v98 = v141;
    v97 = v142;
    v99 = v138;
    v100 = v136;
    v101 = v140;
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v146 = 0;
    v147 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000015, 0x80000001AFF39460);
    swift_getErrorValue();
    sub_1AFDFEDD8();
    v103 = v146;
    v102 = v147;
    v104 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v117 = v104;
      swift_once();
      v104 = v117;
    }

    v146 = 0;
    sub_1AF0D4F18(v104, &v146, v103, v102);

    v105 = *(v99 + 8);
    v105(v101, v97);
    v105(v98, v97);
    v105(v100, v97);
    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t sub_1AF8C8CEC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AF8C8D34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1AF8C8DCC()
{
  result = qword_1ED721F70;
  if (!qword_1ED721F70)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED721F70);
  }

  return result;
}

void sub_1AF8C8E30()
{
  if (!qword_1EB6319A8)
  {
    type metadata accessor for Mesh();
    sub_1AF8C8CEC(&qword_1EB6313A0, v0, type metadata accessor for Mesh);
    sub_1AF8C8CEC(&qword_1EB6313A8, v1, type metadata accessor for Mesh);
    v2 = type metadata accessor for VersionedContainer();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB6319A8);
    }
  }
}

uint64_t sub_1AF8C8F18(_OWORD *a1)
{
  if (qword_1ED722B18 != -1)
  {
    swift_once();
  }

  [qword_1ED722B20 lock];
  if (qword_1ED722B00 != -1)
  {
    swift_once();
  }

  v2 = off_1ED722B08;
  if (*(off_1ED722B08 + 2) && (v3 = sub_1AF41A4B4(a1), v2 = off_1ED722B08, (v4 & 1) != 0))
  {
    v5 = *(*(off_1ED722B08 + 7) + 8 * v3);
    v6 = qword_1ED722B20;

    v7 = v6;
  }

  else
  {
    v8 = swift_allocObject();
    sub_1AF8C2800();
    v9 = a1[4];
    v8[3] = a1[3];
    v8[4] = v9;
    v10 = a1[2];
    v8[1] = a1[1];
    v8[2] = v10;
    v11 = a1[8];
    v8[7] = a1[7];
    v8[8] = v11;
    v12 = a1[10];
    v8[9] = a1[9];
    v8[10] = v12;
    v13 = a1[6];
    v8[5] = a1[5];
    v8[6] = v13;
    v5 = v2[2];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = off_1ED722B08;
    off_1ED722B08 = 0x8000000000000000;
    sub_1AF853D14(v5, v8, isUniquelyReferenced_nonNull_native);

    off_1ED722B08 = v16;

    v7 = qword_1ED722B20;
  }

  [v7 unlock];
  return v5;
}

uint64_t sub_1AF8C90DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v40 = a2;
  sub_1AF8C8D34(0, &qword_1ED726B50, MEMORY[0x1E69E6D30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v42 = &v37 - v5;
  v6 = sub_1AFDFE488();
  v41 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v43 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF8CAEC4(0, &unk_1EB630B58, sub_1AF8C965C, &type metadata for MeshBuffer.CodingKeys, MEMORY[0x1E69E6F48]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v37 - v13;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8C965C();
  v15 = v44;
  sub_1AFDFF3B8();
  if (!v15)
  {
    v38 = v14;
    v39 = v11;
    v16 = a1[3];
    v44 = a1;
    sub_1AF441150(a1, v16);
    v17 = sub_1AFDFF3A8();
    v18 = v42;
    sub_1AFDFE478();
    v19 = v41;
    (*(v41 + 48))(v18, 1, v6);
    v20 = v43;
    (*(v19 + 32))(v43, v18, v6);
    if (*(v17 + 16) && (v21 = sub_1AF419DC8(v20), (v22 & 1) != 0))
    {
      sub_1AF0D5A54(*(v17 + 56) + 32 * v21, &v45);
      (*(v19 + 8))(v20, v6);

      sub_1AF8C8D34(0, &unk_1EB631BA0, sub_1AF8C8D98, type metadata accessor for UncheckedSendable);
      v23 = swift_dynamicCast();
      v24 = v10;
      v25 = v38;
      if (v23)
      {
        v26 = v47;
        v27 = v39;
        if (v47)
        {
          LOBYTE(v45) = 0;
          v29 = sub_1AFDFE748();
          LOBYTE(v45) = 1;
          v30 = sub_1AFDFE748();
          v31 = v44;
          v32 = v30;
          sub_1AF8CACDC(0, &unk_1ED72F970, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
          LOBYTE(v47) = 2;
          sub_1AF8C9704(&qword_1ED7231B0);
          sub_1AFDFE768();
          (*(v27 + 8))(v25, v24);
          v33 = v45;
          v34 = v46;
          result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v31);
          v36 = v40;
          *v40 = v26;
          v36[1] = v29;
          v36[2] = v32;
          v36[3] = v33;
          *(v36 + 32) = v34;
          return result;
        }
      }

      else
      {
        v27 = v39;
      }
    }

    else
    {

      (*(v19 + 8))(v20, v6);
      v24 = v10;
      v25 = v38;
      v27 = v39;
    }

    sub_1AF8C96B0();
    swift_allocError();
    *v28 = 0xD000000000000018;
    v28[1] = 0x80000001AFF394D0;
    swift_willThrow();
    (*(v27 + 8))(v25, v24);
    a1 = v44;
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

unint64_t sub_1AF8C965C()
{
  result = qword_1EB6326C0;
  if (!qword_1EB6326C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6326C0);
  }

  return result;
}

unint64_t sub_1AF8C96B0()
{
  result = qword_1EB63FF88;
  if (!qword_1EB63FF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FF88);
  }

  return result;
}

uint64_t sub_1AF8C9704(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AF8CACDC(255, &unk_1ED72F970, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF8C9788(uint64_t a1)
{
  sub_1AF8C97E4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AF8C97E4()
{
  if (!qword_1EB63FFA0)
  {
    sub_1AF8CACDC(255, &qword_1EB63FFA8, &type metadata for MeshBuffer, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB63FFA0);
    }
  }
}

uint64_t sub_1AF8C986C(void *a1)
{
  sub_1AF8CAEC4(0, &qword_1EB630B40, sub_1AF8CA9F4, &type metadata for VertexLayout.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v22 - v7;
  v9 = a1[3];
  v26 = a1;
  v10 = sub_1AF441150(a1, v9);
  sub_1AF8CA9F4();
  v11 = v10;
  sub_1AFDFF3B8();
  if (v1)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v26);
  }

  else
  {
    type metadata accessor for VertexLayoutDescriptor();
    inited = swift_initStackObject();
    sub_1AF8C2800();
    LOBYTE(v27[0]) = 0;
    sub_1AFDFE658();
    v25 = v4;
    sub_1AF441150(v29, v30);
    v13 = sub_1AFDFEB18();
    v24 = inited;
    if ((v13 & 1) == 0)
    {
      do
      {
        sub_1AF448018(v29, v30);
        v14 = sub_1AFDFEAB8();
        sub_1AF448018(v29, v30);
        sub_1AF8CAA48();
        sub_1AFDFEAD8();
        v15 = HIDWORD(v27[0]);
        v16 = inited + 2 * v14 + 4;
        *v16 = v27[0];
        v16[1] = v15;
        sub_1AF441150(v29, v30);
      }

      while ((sub_1AFDFEB18() & 1) == 0);
    }

    LOBYTE(v31) = 1;
    sub_1AFDFE658();
    v23 = v5;
    sub_1AF441150(v27, v28);
    if ((sub_1AFDFEB18() & 1) == 0)
    {
      v17 = v24 + 6;
      do
      {
        sub_1AF448018(v27, v28);
        v18 = sub_1AFDFEAB8();
        sub_1AF448018(v27, v28);
        sub_1AF8CAA9C();
        sub_1AFDFEAD8();
        v19 = v32;
        v20 = v17 + 2 * v18;
        *v20 = v31;
        v20[1] = v19;
        sub_1AF441150(v27, v28);
      }

      while ((sub_1AFDFEB18() & 1) == 0);
    }

    v11 = sub_1AF8C8F18(v24);

    (*(v23 + 8))(v8, v25);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v27);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v29);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v26);
  }

  return v11;
}

unint64_t sub_1AF8C9D10(void *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(void))
{
  sub_1AF8CAEC4(0, a2, a3, a4, MEMORY[0x1E69E6F48]);
  v19 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v18 - v11;
  sub_1AF441150(a1, a1[3]);
  a5();
  sub_1AFDFF3B8();
  if (v5)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v22 = 0;
  v13 = v19;
  v14 = sub_1AFDFE7D8();
  v21 = 1;
  v15 = sub_1AFDFE7C8();
  v20 = 2;
  v16 = sub_1AFDFE7C8();
  (*(v9 + 8))(v12, v13);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return (v15 << 32) | (v16 << 48) | v14;
}

uint64_t sub_1AF8C9F08@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF8CAEC4(0, &qword_1EB630A50, sub_1AF8CA744, &type metadata for MeshPart.CodingKeys, MEMORY[0x1E69E6F48]);
  v76 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v65 - v8;
  *v10.i64 = sub_1AF6DE28C();
  v77 = v11;
  v78 = v10;
  v12 = a1[3];
  v80 = a1;
  sub_1AF441150(a1, v12);
  sub_1AF8CA744();
  sub_1AFDFF3B8();
  if (v2)
  {
    v117 = v2;
    v83 = 0;
    v79 = 0;
    v17 = 0;
    v18 = 0;
    v81 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v82 = MEMORY[0x1E69E7CC0];
    v24 = 3;
LABEL_4:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v80);
    v97.i64[0] = v24;
    v97.i64[1] = v23;
    v98 = v22;
    v99 = v21;
    v100 = v20;
    v101 = v19;
    v102 = v81;
    v103 = v18;
    v104 = v17;
    *v105 = v116[0];
    *&v105[3] = *(v116 + 3);
    v106 = v79;
    v107 = v83;
    v108 = v82;
    v109 = 0u;
    v110 = 0u;
    v111 = 0;
    *v112 = *v115;
    *&v112[7] = *&v115[7];
    v113 = v78;
    v114 = v77;
    return sub_1AF6E534C(&v97);
  }

  v13 = v6;
  v97.i8[0] = 1;
  v14 = v76;
  v15 = sub_1AFDFE6D8();
  if (v16)
  {
    v26 = 0;
  }

  else
  {
    v26 = v15;
  }

  v75 = v26;
  v97.i8[0] = 2;
  v27 = sub_1AFDFE6D8();
  if (v28)
  {
    v29 = 0;
  }

  else
  {
    v29 = v27;
  }

  v74 = v29;
  v97.i8[0] = 3;
  v30 = sub_1AFDFE748();
  v117 = 0;
  v73 = v30;
  LOBYTE(v84) = 4;
  sub_1AF8CA798();
  v31 = v117;
  sub_1AFDFE6E8();
  if (v31)
  {
    v117 = v31;
    (*(v6 + 8))(v9, v14);
    v83 = 0;
    v79 = 0;
    v17 = 0;
    v18 = 0;
    v81 = 0;
    v19 = 0;
    v20 = 0;
    v82 = MEMORY[0x1E69E7CC0];
    v24 = 3;
    v22 = v74;
    v23 = v75;
    v21 = v73;
    goto LABEL_4;
  }

  v32 = v97.i64[0];
  v71 = a2;
  v72 = v97.i64[1];
  v34 = v98;
  v33 = v99;
  v35 = v100;
  v97.i8[0] = 5;
  v36 = sub_1AFDFE6D8();
  v81 = v34;
  v37 = v32;
  v69 = v33;
  v70 = v35;
  if (v38)
  {
    v39 = 0;
  }

  else
  {
    v39 = v36;
  }

  v97.i8[0] = 6;
  v40 = v76;
  v41 = sub_1AFDFE6D8();
  v117 = 0;
  v79 = v39;
  if (v42)
  {
    v43 = 0;
  }

  else
  {
    v43 = v41;
  }

  sub_1AF8CACDC(0, &qword_1EB630DB8, &type metadata for MeshBuffer, MEMORY[0x1E69E62F8]);
  LOBYTE(v84) = 9;
  sub_1AF8CA7EC();
  v44 = v117;
  sub_1AFDFE6E8();
  v83 = v43;
  if (v44)
  {
    v117 = v44;
    (*(v13 + 8))(v9, v40);
    v82 = MEMORY[0x1E69E7CC0];
    v24 = 3;
    v22 = v74;
    v23 = v75;
    v17 = v70;
    v18 = v69;
    v20 = v37;
    v19 = v72;
    v21 = v73;
    goto LABEL_4;
  }

  if (v97.i64[0])
  {
    v45 = v97.i64[0];
  }

  else
  {
    v45 = MEMORY[0x1E69E7CC0];
  }

  v97.i8[0] = 0;
  v46 = sub_1AFDFE758();
  v117 = 0;
  v82 = v45;
  v68 = v46;
  v20 = v37;
  sub_1AF8CAEC4(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  LOBYTE(v84) = 7;
  sub_1AF8CA888(&qword_1ED72F748);
  v47 = v76;
  v48 = v117;
  sub_1AFDFE768();
  v117 = v48;
  if (v48)
  {
    (*(v13 + 8))(v9, v47);
    v22 = v74;
    v23 = v75;
    v19 = v72;
    v21 = v73;
    v17 = v70;
    v24 = v68;
    v18 = v69;
    goto LABEL_4;
  }

  v67 = v97;
  v95 = 8;
  sub_1AFDFE768();
  v117 = 0;
  v49 = v96;
  v50 = v67;
  v50.i32[3] = 1.0;
  v49.i32[3] = 1.0;
  v51.i64[0] = 0x3F0000003F000000;
  v51.i64[1] = 0x3F0000003F000000;
  v77 = vmulq_f32(vsubq_f32(v49, v50), v51);
  v78 = vmulq_f32(vaddq_f32(v50, v49), v51);
  (*(v13 + 8))(v9, v76);
  v52 = v69;
  v54 = v74;
  v53 = v75;
  *&v84 = v68;
  *(&v84 + 1) = v75;
  *&v85 = v74;
  *(&v85 + 1) = v73;
  v66 = v37;
  *&v86 = v37;
  v55 = v72;
  v56 = v81;
  *(&v86 + 1) = v72;
  *&v87 = v81;
  *(&v87 + 1) = v69;
  v57 = v70;
  LOBYTE(v88) = v70;
  *(&v88 + 1) = v116[0];
  DWORD1(v88) = *(v116 + 3);
  v58 = v79;
  *(&v88 + 1) = v79;
  *&v89 = v83;
  *(&v89 + 1) = v82;
  v90 = 0u;
  v91 = 0u;
  LOBYTE(v92) = 0;
  *(&v92 + 1) = *v115;
  *(&v92 + 1) = *&v115[7];
  v93 = v78;
  v94 = v77;
  sub_1AF6E52F0(&v84, &v97);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v80);
  v97.i64[0] = v68;
  v97.i64[1] = v53;
  v98 = v54;
  v99 = v73;
  v100 = v66;
  v101 = v55;
  v102 = v56;
  v103 = v52;
  v104 = v57;
  *v105 = v116[0];
  *&v105[3] = *(v116 + 3);
  v106 = v58;
  v107 = v83;
  v108 = v82;
  v109 = 0u;
  v110 = 0u;
  v111 = 0;
  *v112 = *v115;
  *&v112[7] = *&v115[7];
  v113 = v78;
  v114 = v77;
  result = sub_1AF6E534C(&v97);
  v59 = v93;
  v60 = v71;
  v71[8] = v92;
  v60[9] = v59;
  v60[10] = v94;
  v61 = v89;
  v60[4] = v88;
  v60[5] = v61;
  v62 = v91;
  v60[6] = v90;
  v60[7] = v62;
  v63 = v85;
  *v60 = v84;
  v60[1] = v63;
  v64 = v87;
  v60[2] = v86;
  v60[3] = v64;
  return result;
}

unint64_t sub_1AF8CA744()
{
  result = qword_1EB631058;
  if (!qword_1EB631058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631058);
  }

  return result;
}

unint64_t sub_1AF8CA798()
{
  result = qword_1EB6326A0;
  if (!qword_1EB6326A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6326A0);
  }

  return result;
}

unint64_t sub_1AF8CA7EC()
{
  result = qword_1EB630DB0;
  if (!qword_1EB630DB0)
  {
    sub_1AF8CACDC(255, &qword_1EB630DB8, &type metadata for MeshBuffer, MEMORY[0x1E69E62F8]);
    sub_1AF8CA798();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB630DB0);
  }

  return result;
}

uint64_t sub_1AF8CA888(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AF8CAEC4(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF8CA904()
{
  result = qword_1EB63FFC0;
  if (!qword_1EB63FFC0)
  {
    sub_1AF8CACDC(255, &qword_1EB630DB8, &type metadata for MeshBuffer, MEMORY[0x1E69E62F8]);
    sub_1AF8CA9A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FFC0);
  }

  return result;
}

unint64_t sub_1AF8CA9A0()
{
  result = qword_1EB63FFC8;
  if (!qword_1EB63FFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FFC8);
  }

  return result;
}

unint64_t sub_1AF8CA9F4()
{
  result = qword_1EB632418;
  if (!qword_1EB632418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632418);
  }

  return result;
}

unint64_t sub_1AF8CAA48()
{
  result = qword_1EB6315F0;
  if (!qword_1EB6315F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6315F0);
  }

  return result;
}

unint64_t sub_1AF8CAA9C()
{
  result = qword_1EB6315C8;
  if (!qword_1EB6315C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6315C8);
  }

  return result;
}

unint64_t sub_1AF8CAAF0()
{
  result = qword_1EB63FFD8;
  if (!qword_1EB63FFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FFD8);
  }

  return result;
}

unint64_t sub_1AF8CAB44()
{
  result = qword_1EB63FFE0;
  if (!qword_1EB63FFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FFE0);
  }

  return result;
}

unint64_t sub_1AF8CAB98()
{
  result = qword_1EB6313C0;
  if (!qword_1EB6313C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6313C0);
  }

  return result;
}

unint64_t sub_1AF8CABEC()
{
  result = qword_1EB6323F0;
  if (!qword_1EB6323F0)
  {
    sub_1AF8CACDC(255, &qword_1EB633848, &type metadata for VertexLayout, MEMORY[0x1E69E6720]);
    sub_1AF8CAC88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6323F0);
  }

  return result;
}

unint64_t sub_1AF8CAC88()
{
  result = qword_1EB6323F8;
  if (!qword_1EB6323F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6323F8);
  }

  return result;
}

void sub_1AF8CACDC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1AF8CAD2C()
{
  result = qword_1EB630D78;
  if (!qword_1EB630D78)
  {
    sub_1AF8CACDC(255, &qword_1EB630D80, &type metadata for MeshPart, MEMORY[0x1E69E62F8]);
    sub_1AF8CADC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB630D78);
  }

  return result;
}

unint64_t sub_1AF8CADC8()
{
  result = qword_1EB631030;
  if (!qword_1EB631030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631030);
  }

  return result;
}

unint64_t sub_1AF8CAE1C()
{
  result = qword_1EB6315E0;
  if (!qword_1EB6315E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6315E0);
  }

  return result;
}

unint64_t sub_1AF8CAE70()
{
  result = qword_1EB631618;
  if (!qword_1EB631618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631618);
  }

  return result;
}

void sub_1AF8CAEC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1AF8CAF2C()
{
  result = qword_1EB640000;
  if (!qword_1EB640000)
  {
    sub_1AF8CACDC(255, &qword_1EB633848, &type metadata for VertexLayout, MEMORY[0x1E69E6720]);
    sub_1AF8CAFC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640000);
  }

  return result;
}

unint64_t sub_1AF8CAFC8()
{
  result = qword_1EB640008;
  if (!qword_1EB640008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640008);
  }

  return result;
}

unint64_t sub_1AF8CB01C()
{
  result = qword_1EB640010;
  if (!qword_1EB640010)
  {
    sub_1AF8CACDC(255, &qword_1EB630D80, &type metadata for MeshPart, MEMORY[0x1E69E62F8]);
    sub_1AF8CB0B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640010);
  }

  return result;
}

unint64_t sub_1AF8CB0B8()
{
  result = qword_1EB640018;
  if (!qword_1EB640018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640018);
  }

  return result;
}

unint64_t sub_1AF8CB180()
{
  result = qword_1EB640020;
  if (!qword_1EB640020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640020);
  }

  return result;
}

unint64_t sub_1AF8CB1DC()
{
  result = qword_1EB640028;
  if (!qword_1EB640028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640028);
  }

  return result;
}

unint64_t sub_1AF8CB234()
{
  result = qword_1EB640030;
  if (!qword_1EB640030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640030);
  }

  return result;
}

unint64_t sub_1AF8CB28C()
{
  result = qword_1EB640038;
  if (!qword_1EB640038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640038);
  }

  return result;
}

unint64_t sub_1AF8CB2E4()
{
  result = qword_1EB640040;
  if (!qword_1EB640040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640040);
  }

  return result;
}

unint64_t sub_1AF8CB33C()
{
  result = qword_1EB640048;
  if (!qword_1EB640048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640048);
  }

  return result;
}

unint64_t sub_1AF8CB394()
{
  result = qword_1EB631600;
  if (!qword_1EB631600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631600);
  }

  return result;
}

unint64_t sub_1AF8CB3EC()
{
  result = qword_1EB631608;
  if (!qword_1EB631608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631608);
  }

  return result;
}

unint64_t sub_1AF8CB444()
{
  result = qword_1EB6315D0;
  if (!qword_1EB6315D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6315D0);
  }

  return result;
}

unint64_t sub_1AF8CB49C()
{
  result = qword_1EB6315D8;
  if (!qword_1EB6315D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6315D8);
  }

  return result;
}

unint64_t sub_1AF8CB4F4()
{
  result = qword_1EB6313B0;
  if (!qword_1EB6313B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6313B0);
  }

  return result;
}

unint64_t sub_1AF8CB54C()
{
  result = qword_1EB6313B8;
  if (!qword_1EB6313B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6313B8);
  }

  return result;
}

unint64_t sub_1AF8CB5A4()
{
  result = qword_1EB632400;
  if (!qword_1EB632400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632400);
  }

  return result;
}

unint64_t sub_1AF8CB5FC()
{
  result = qword_1EB632408;
  if (!qword_1EB632408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632408);
  }

  return result;
}

unint64_t sub_1AF8CB654()
{
  result = qword_1EB631040;
  if (!qword_1EB631040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631040);
  }

  return result;
}

unint64_t sub_1AF8CB6AC()
{
  result = qword_1EB631048;
  if (!qword_1EB631048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631048);
  }

  return result;
}

unint64_t sub_1AF8CB704()
{
  result = qword_1EB6326B0;
  if (!qword_1EB6326B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6326B0);
  }

  return result;
}

unint64_t sub_1AF8CB75C()
{
  result = qword_1EB6326B8;
  if (!qword_1EB6326B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6326B8);
  }

  return result;
}

void sub_1AF8CB7BC(const float *a1, uint64_t a2)
{
  switch(a2)
  {
    case 9:
      v2 = *a1;

      sub_1AF57F008(LODWORD(v2));
      break;
    case 12:
      __asm
      {
        FMOV            V1.4S, #-1.0
        FMOV            V1.4S, #1.0
      }

      break;
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 51:
    case 52:
      return;
    case 25:
      sub_1AF1F2AC4(*a1);
      sub_1AF1F2AC4(*(a1 + 1));
      break;
    case 40:
    case 41:
      vld1q_dup_f32(a1);
      break;
    case 53:
      sub_1AF1F2AC4(*a1);
      break;
    default:
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF395D0);
      type metadata accessor for MTLVertexFormat(0);
      sub_1AFDFE458();
      sub_1AFDFE518();
      __break(1u);
      break;
  }
}

uint64_t sub_1AF8CBBC8()
{
  v1 = v0;
  v2 = sub_1AFDFC128();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  v0[6] = MEMORY[0x1E69E7CC0];
  v7 = v0[2];
  v8 = v0[3];
  if (v0[4])
  {
    v9 = v0[5];
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(v7, v8, ObjectType, v9);
  }

  else
  {
    v11 = v6;
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v57 = 0;
    v58 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF2C630);
    MEMORY[0x1B2718AE0](v7, v8);
    MEMORY[0x1B2718AE0](0xD000000000000016, 0x80000001AFF2C660);
    v12 = v57;
    v13 = v58;
    v14 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v43 = v14;
      swift_once();
      v14 = v43;
    }

    v57 = 0;
    sub_1AF0D4F18(v14, &v57, v12, v13);

    v6 = v11;
    sub_1AFDFC018();
  }

  v15 = sub_1AFDFCEA8();
  v47 = v3;
  v57 = v15;
  v58 = v16;
  v55 = 10;
  v56 = 0xE100000000000000;
  v50 = sub_1AF4486E4();
  v17 = sub_1AFDFDE98();

  v49 = *(v17 + 16);
  if (v49)
  {
    v45 = v6;
    v46 = v2;
    v18 = 0;
    v44 = v17;
    v48 = v17 + 32;
    v19 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v20 = (v48 + 16 * v18);
      v22 = *v20;
      v21 = v20[1];
      v57 = v22;
      v58 = v21;
      v55 = 32;
      v56 = 0xE100000000000000;
      v52 = v18;
      v53 = 0;
      v54 = 0xE000000000000000;
      v57 = sub_1AFDFDEB8();
      v58 = v23;
      v55 = 44;
      v56 = 0xE100000000000000;
      v24 = sub_1AFDFDE98();

      v27 = *(v24 + 16);
      v51 = v24;
      if (v27)
      {
        break;
      }

LABEL_10:
      v18 = v52 + 1;

      if (v18 == v49)
      {

        v2 = v46;
        v36 = v47;
        v6 = v45;
        goto LABEL_37;
      }
    }

    v28 = (v24 + 40);
    while (1)
    {
      v29 = *(v28 - 1);
      v30 = *v28;
      LODWORD(v55) = 0;
      MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native, v26);
      if ((v30 & 0x1000000000000000) != 0)
      {
LABEL_34:

        sub_1AFDFE1E8();
        goto LABEL_25;
      }

      if ((v30 & 0x2000000000000000) != 0)
      {
        v57 = v29;
        v58 = v30 & 0xFFFFFFFFFFFFFFLL;

        if (v29 < 0x21u && ((0x100003E01uLL >> v29) & 1) != 0)
        {
          goto LABEL_24;
        }

        v32 = _swift_stdlib_strtof_clocale();
        if (!v32)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if ((v29 & 0x1000000000000000) == 0)
        {
          goto LABEL_34;
        }

        v31 = *((v30 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

        if (v31 < 0x21 && ((0x100003E01uLL >> v31) & 1) != 0 || (v32 = _swift_stdlib_strtof_clocale()) == 0)
        {
LABEL_24:
          LOBYTE(v53) = 0;
          goto LABEL_25;
        }
      }

      LOBYTE(v53) = *v32 == 0;
LABEL_25:

      if (v53)
      {
        v33 = *&v55;
      }

      else
      {
        v33 = 0.0;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_1AF41FDF8(0, *(v19 + 16) + 1, 1, v19);
        v19 = isUniquelyReferenced_nonNull_native;
      }

      v35 = *(v19 + 16);
      v34 = *(v19 + 24);
      if (v35 >= v34 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_1AF41FDF8(v34 > 1, v35 + 1, 1, v19);
        v19 = isUniquelyReferenced_nonNull_native;
      }

      *(v19 + 16) = v35 + 1;
      *(v19 + 4 * v35 + 32) = v33;
      v1[6] = v19;
      v28 += 2;
      if (!--v27)
      {
        goto LABEL_10;
      }
    }
  }

  v19 = MEMORY[0x1E69E7CC0];
  v36 = v47;
LABEL_37:
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v57 = 0x203A767363;
  v58 = 0xE500000000000000;
  v55 = *(v19 + 16);
  v37 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v37);

  MEMORY[0x1B2718AE0](0x7374616F6C6620, 0xE700000000000000);
  v38 = v57;
  v39 = v58;
  v40 = sub_1AFDFDA28();
  if (qword_1ED731058 != -1)
  {
    v42 = v40;
    swift_once();
    v40 = v42;
  }

  v57 = 0;
  sub_1AF0D4F18(v40, &v57, v38, v39);

  return (*(v36 + 8))(v6, v2);
}

uint64_t sub_1AF8CC268(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1AF8CBBC8();
  }

  return result;
}

double sub_1AF8CC294@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF8CC434(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

void sub_1AF8CC2E4(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = MEMORY[0x1E69E7CC0];
}

_BYTE *sub_1AF8CC304@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void *assignWithCopy for CSVFileAsset(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  v4 = a2[4];
  v5 = a2[5];
  v6 = a1[4];
  a1[4] = v4;
  v7 = v4;

  a1[5] = v5;
  a1[6] = a2[6];

  return a1;
}

uint64_t sub_1AF8CC434@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF441150(v10, v10[3]);
  sub_1AF5DE134();
  sub_1AFDFEE88();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v10);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  *(a2 + 48) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1AF8CC534(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1AFDFD1C8();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF8CC57C(uint64_t a1)
{
  v1 = 0;
  v2 = (a1 + 64);
  v3 = 1 << *(a1 + 32);
  v4 = (v3 + 63) >> 6;
  while (1)
  {
    v6 = *v2++;
    v5 = v6;
    if (v6)
    {
      break;
    }

    v1 -= 64;
    if (!--v4)
    {
      return 0;
    }
  }

  v7 = __clz(__rbit64(v5));
  if (v7 - v3 == v1)
  {
    return 0;
  }

  v9 = *(*(a1 + 48) + 16 * (v7 - v1));

  return v9;
}

uint64_t sub_1AF8CC608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF8B0860();
  v5 = v4;
  v8 = MEMORY[0x1EEE9AC00](v4, v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v12 = (a1 + 64);
  v13 = 1 << *(a1 + 32);
  v14 = (v13 + 63) >> 6;
  while (1)
  {
    v16 = *v12++;
    v15 = v16;
    if (v16)
    {
      break;
    }

    v11 -= 64;
    if (!--v14)
    {
      goto LABEL_6;
    }
  }

  v17 = __clz(__rbit64(v15));
  if (v17 - v13 != v11)
  {
    v20 = v17 - v11;
    v21 = *(v5 + 48);
    v22 = *(a1 + 56);
    v23 = *(a1 + 48) + 8 * (v17 - v11);
    v24 = *v23;
    v25 = *(v23 + 4);
    v29 = v7;
    v26 = sub_1AFDFC128();
    v27 = *(v26 - 8);
    (*(v27 + 16))(&v10[v21], v22 + *(v27 + 72) * v20, v26);
    *a2 = v24;
    *(a2 + 4) = v25;
    (*(v27 + 32))(a2 + *(v5 + 48), &v10[v21], v26);
    return (*(v29 + 56))(a2, 0, 1, v5);
  }

LABEL_6:
  v18 = *(v7 + 56);

  return v18(a2, 1, 1, v5, v8);
}

unint64_t sub_1AF8CC838(uint64_t a1)
{
  v1 = 0;
  v2 = (a1 + 56);
  v3 = 1 << *(a1 + 32);
  v4 = (v3 + 63) >> 6;
  while (1)
  {
    v6 = *v2++;
    v5 = v6;
    if (v6)
    {
      break;
    }

    v1 -= 64;
    if (!--v4)
    {
      goto LABEL_6;
    }
  }

  v7 = __clz(__rbit64(v5));
  if (v7 - v3 == v1)
  {
LABEL_6:
    v8 = 0;
    v9 = 1;
    return v8 | (v9 << 32);
  }

  v9 = 0;
  v8 = *(*(a1 + 48) + 4 * (v7 - v1));
  return v8 | (v9 << 32);
}

uint64_t sub_1AF8CC8B4(uint64_t a1)
{
  v1 = 0;
  v2 = (a1 + 64);
  v3 = 1 << *(a1 + 32);
  v4 = (v3 + 63) >> 6;
  while (1)
  {
    v6 = *v2++;
    v5 = v6;
    if (v6)
    {
      break;
    }

    v1 -= 64;
    if (!--v4)
    {
      return 0;
    }
  }

  v7 = __clz(__rbit64(v5));
  if (v7 - v3 == v1)
  {
    return 0;
  }

  v9 = *(*(a1 + 48) + 16 * (v7 - v1));

  return v9;
}

uint64_t sub_1AF8CC960@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = 0;
  v3 = (result + 64);
  v4 = 1 << *(result + 32);
  v5 = (v4 + 63) >> 6;
  while (1)
  {
    v7 = *v3++;
    v6 = v7;
    if (v7)
    {
      break;
    }

    v2 -= 64;
    if (!--v5)
    {
      goto LABEL_6;
    }
  }

  v8 = __clz(__rbit64(v6));
  if (v8 - v4 == v2)
  {
LABEL_6:
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_8;
  }

  v14 = v8 - v2;
  v15 = (*(result + 48) + 16 * v14);
  v9 = *v15;
  v10 = v15[1];
  v16 = (*(result + 56) + 24 * v14);
  v11 = *v16;
  v12 = v16[1];
  v13 = v16[2];
  v17 = a2;

  a2 = v17;
LABEL_8:
  *a2 = v9;
  a2[1] = v10;
  a2[2] = v11;
  a2[3] = v12;
  a2[4] = v13;
  return result;
}

uint64_t sub_1AF8CCA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0;
  v4 = (a1 + 56);
  v5 = 1 << *(a1 + 32);
  v6 = (v5 + 63) >> 6;
  while (1)
  {
    v8 = *v4++;
    v7 = v8;
    if (v8)
    {
      break;
    }

    v3 -= 64;
    if (!--v6)
    {
      goto LABEL_6;
    }
  }

  v9 = __clz(__rbit64(v7));
  if (v9 - v5 == v3)
  {
LABEL_6:
    v10 = sub_1AFDFCA38();
    v11 = *(*(v10 - 8) + 56);
    v12 = v10;
    v13 = a2;
    v14 = 1;
    goto LABEL_8;
  }

  v15 = v9 - v3;
  v16 = *(a1 + 48);
  v17 = sub_1AFDFCA38();
  v19 = *(v17 - 8);
  (*(v19 + 16))(a2, v16 + *(v19 + 72) * v15, v17);
  v11 = *(v19 + 56);
  v13 = a2;
  v14 = 0;
  v12 = v17;
LABEL_8:

  return v11(v13, v14, 1, v12);
}

uint64_t sub_1AF8CCBA0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = 0;
  v3 = (result + 64);
  v4 = 1 << *(result + 32);
  v5 = (v4 + 63) >> 6;
  while (1)
  {
    v7 = *v3++;
    v6 = v7;
    if (v7)
    {
      break;
    }

    v2 -= 64;
    if (!--v5)
    {
      goto LABEL_6;
    }
  }

  v8 = __clz(__rbit64(v6));
  if (v8 - v4 == v2)
  {
LABEL_6:
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_8;
  }

  v15 = v8 - v2;
  v16 = (*(result + 48) + 16 * v15);
  v9 = *v16;
  v10 = v16[1];
  v17 = (*(result + 56) + 32 * v15);
  v11 = *v17;
  v12 = v17[1];
  v13 = v17[2];
  v14 = v17[3];
  v18 = a2;

  a2 = v18;
LABEL_8:
  *a2 = v9;
  a2[1] = v10;
  a2[2] = v11;
  a2[3] = v12;
  a2[4] = v13;
  a2[5] = v14;
  return result;
}

double sub_1AF8CCC90@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *&v6 = 0;
  *(&v6 + 1) = 0xE000000000000000;
  sub_1AFD04CD8(a1);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  if (v2)
  {
  }

  else
  {
    result = *&v6;
    *a2 = v6;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0xE000000000000000;
    *(a2 + 32) = 0uLL;
  }

  return result;
}

void sub_1AF8CCD24(uint64_t a1)
{
  switch(a1)
  {
    case 4:
      v1 = &unk_1ED72F770;
      v2 = MEMORY[0x1E69E6448];
      v3 = MEMORY[0x1E69E7428];
      goto LABEL_11;
    case 5:
      v1 = &qword_1ED72F740;
      v2 = MEMORY[0x1E69E6448];
      v3 = MEMORY[0x1E69E7450];
      goto LABEL_11;
    case 6:
      v1 = &qword_1ED72F6E0;
      v2 = MEMORY[0x1E69E6448];
      v3 = MEMORY[0x1E69E74A8];
LABEL_11:
      sub_1AF8D3410(0, v1, sub_1AF43A0C8, v2, v3);
      break;
    case 7:
      type metadata accessor for simd_float2x2(0);
      break;
    case 8:
      type metadata accessor for simd_float2x3(0);
      break;
    case 9:
      type metadata accessor for simd_float2x4(0);
      break;
    case 10:
      type metadata accessor for simd_float3x2(0);
      break;
    case 11:
      type metadata accessor for simd_float3x3(0);
      break;
    case 12:
      type metadata accessor for simd_float3x4(0);
      break;
    case 13:
      type metadata accessor for simd_float4x2(0);
      break;
    case 14:
      type metadata accessor for simd_float4x3(0);
      break;
    case 15:
      type metadata accessor for simd_float4x4(0);
      break;
    default:
      return;
  }
}

uint64_t sub_1AF8CCEE8(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1AF8D1034(v7, v8) & 1;
}

uint64_t sub_1AF8CCF30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a3;
  v19 = a5;
  v17 = a4;
  sub_1AF8D3410(0, &qword_1EB6400C0, sub_1AF8D3368, &type metadata for MetalFunctionReflection.CodingKeys, MEMORY[0x1E69E6F58]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v17 - v12;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8D3368();
  sub_1AFDFF3F8();
  v21 = a2;
  v20 = 0;
  sub_1AF6594C8();
  sub_1AF8D3478(&qword_1EB6400C8);
  sub_1AFDFE918();
  if (!v5)
  {
    v14 = v17;
    v15 = v19;
    v21 = v18;
    v20 = 1;
    sub_1AF8D35BC(0, &qword_1EB640150, &type metadata for MetalFunctionReflection.Arg, MEMORY[0x1E69E62F8]);
    sub_1AF8D34D8(&qword_1EB6400D0, sub_1AF8D3568);
    sub_1AFDFE918();
    v21 = v14;
    v20 = 2;
    sub_1AFDFE918();
    v21 = v15;
    v20 = 3;
    sub_1AFDFE918();
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1AF8CD200()
{
  v1 = 0x5373726566667562;
  v2 = 0x7374757074756FLL;
  if (*v0 != 2)
  {
    v2 = 0x74754F7475706E69;
  }

  if (*v0)
  {
    v1 = 0x737475706E69;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AF8CD288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF8D1404(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF8CD2B0(uint64_t a1)
{
  v2 = sub_1AF8D3368();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8CD2EC(uint64_t a1)
{
  v2 = sub_1AF8D3368();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8CD328@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF8D3004(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1AF8CD378(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  if ((sub_1AF77627C(*a1, *a2) & 1) == 0 || (sub_1AFB7B474(v2, v5) & 1) == 0 || (sub_1AFB7B474(v4, v7) & 1) == 0)
  {
    return 0;
  }

  return sub_1AFB7B474(v3, v6);
}

uint64_t sub_1AF8CD42C()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF8CD540@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF8D156C();
  *a1 = result;
  return result;
}

void sub_1AF8CD570(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1684957547;
  v5 = 0xEB00000000657079;
  v6 = 0x5465727574786574;
  if (v2 != 5)
  {
    v6 = 0x74657366666FLL;
    v5 = 0xE600000000000000;
  }

  v7 = 0x80000001AFF23620;
  v8 = 0xD000000000000010;
  if (v2 != 3)
  {
    v8 = 0x79747265706F7270;
    v7 = 0xEC000000656D614ELL;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x7865646E69;
  if (v2 != 1)
  {
    v10 = 0x79747265706F7270;
    v9 = 0xEC00000065707954;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1AF8CD64C()
{
  v1 = *v0;
  v2 = 1684957547;
  v3 = 0x5465727574786574;
  if (v1 != 5)
  {
    v3 = 0x74657366666FLL;
  }

  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x79747265706F7270;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7865646E69;
  if (v1 != 1)
  {
    v5 = 0x79747265706F7270;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AF8CD724@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF8D156C();
  *a1 = result;
  return result;
}

uint64_t sub_1AF8CD74C(uint64_t a1)
{
  v2 = sub_1AF8D2E7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8CD788(uint64_t a1)
{
  v2 = sub_1AF8D2E7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8CD7C4(void *a1)
{
  v3 = v1;
  sub_1AF8D3410(0, &qword_1EB640068, sub_1AF8D2E7C, &type metadata for MetalFunctionReflection.Arg.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8D2E7C();
  sub_1AFDFF3F8();
  LOBYTE(v13) = 0;
  sub_1AFDFE8F8();
  if (!v2)
  {
    if ((*(v3 + 16) & 1) == 0)
    {
      LOBYTE(v13) = 5;
      sub_1AFDFE908();
    }

    LOBYTE(v13) = 1;
    sub_1AFDFE8F8();
    v12 = *(v3 + 40);
    LOBYTE(v13) = 4;
    sub_1AFDFE8B8();
    v13 = *(v12 + 144);
    v14 = 3;
    sub_1AF487468();
    sub_1AFDFE918();
    *&v13 = *(v12 + 40);
    v14 = 2;
    sub_1AF6457DC();
    sub_1AFDFE918();
    LOBYTE(v13) = 6;
    sub_1AFDFE8F8();
  }

  return (*(v7 + 8))(v10, v6);
}

double sub_1AF8CDA44@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF8D2A48(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

void *sub_1AF8CDAA0@<X0>(void *a1@<X8>)
{
  result = sub_1AF42D1F8(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

void sub_1AF8CDAD0(uint64_t a1)
{
  v3 = v1[3];
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  os_unfair_lock_unlock(*(v4 + 40));
  v6 = v1[8];
  swift_getObjectType();
  v7 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v6);

  sub_1AF6B1B20(a1, v7, v6);
  os_unfair_lock_unlock(*(v4 + 40));
  v8 = v1[13];
  swift_getObjectType();
  v9 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v8);

  sub_1AF6B1B20(a1, v9, v8);
  os_unfair_lock_unlock(*(v4 + 40));
  v10 = v1[18];
  swift_getObjectType();
  v11 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v10);

  sub_1AF6B1B20(a1, v11, v10);
  v12 = *(v4 + 40);

  os_unfair_lock_unlock(v12);
}

uint64_t sub_1AF8CDCE0(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v4 = result;
    v11 = MEMORY[0x1E69E7CC8];
    v5 = *(v2 + 40);
    v26[0] = *(v2 + 24);
    v26[1] = v5;
    v27 = *(v2 + 56);

    sub_1AF6B06C0(v4, v26, 0x200000000, &v12);
    if (v12)
    {
      v22 = v15;
      v23 = v16;
      v24 = v17;
      v20 = v13;
      v21 = v14;
      v25 = v18;
      v19 = v12;

      sub_1AFD22048(&v19, a2, v4);

      sub_1AF8D2FA8(&v12, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720]);
    }

    v6 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
    if (v6)
    {
      swift_unknownObjectWeakLoadStrong();
      v7 = *(v6 + 56);
    }

    else
    {
      v7 = 0;
    }

    swift_unknownObjectUnownedInit();
    v9[0] = v4;
    v9[2] = v7;
    swift_unknownObjectUnownedAssign();

    swift_unownedRetain();
    swift_unknownObjectRelease();
    v10 = v6 != 0;
    sub_1AF8CDF58(v9, v4, v2, &v11);
    sub_1AF579490(v9);
    if (v6)
    {
      v8 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v8 ^ 1);
    }
  }

  return result;
}

void sub_1AF8CDF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v387 = a1;
  v6 = *(a3 + 144);
  v7 = *(a3 + 160);
  v386 = *(a3 + 176);
  v385[0] = v6;
  v385[1] = v7;
  sub_1AF6B06C0(a2, v385, 0x200000000, v335);
  v292 = a4;
  v313 = *v335;
  v300 = a2;
  if (!*v335)
  {
    goto LABEL_29;
  }

  v8 = *(&v336 + 1);
  v9 = v337;
  v345 = *&v335[8];
  v346 = *&v335[24];
  v306 = v338;
  v309 = *&v335[40];
  if (v338 <= 0 || !*(&v336 + 1))
  {
    sub_1AF8D2FA8(v335, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720]);
LABEL_29:
    Strong = MEMORY[0x1E69E7CC0];
    goto LABEL_31;
  }

  v10 = *(*(&v337 + 1) + 32);
  v319 = *(v337 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v365 = *&v335[32];
  v366 = v336;
  v367 = v337;
  v368 = v338;
  v363 = *v335;
  v364 = *&v335[16];
  sub_1AF5DD298(&v363, v376);
  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  v302 = v10;
  v304 = v8;
  while (1)
  {
    v13 = (v309 + 48 * v11);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = *(v13 + 2);
    v18 = *(v13 + 3);
    v19 = *(v13 + 5);
    v315 = *(v13 + 4);
    v317 = v11;
    if (v319)
    {
      v20 = *(v19 + 376);

      os_unfair_lock_lock(v20);
      os_unfair_lock_lock(*(v19 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v10);
    v21 = *(*(&v9 + 1) + 64);
    v374[0] = *(*(&v9 + 1) + 48);
    v374[1] = v21;
    v375 = *(*(&v9 + 1) + 80);
    v22 = *(*(*(*(v19 + 40) + 16) + 32) + 16) + 1;
    *(*(&v9 + 1) + 48) = ecs_stack_allocator_allocate(*(*(&v9 + 1) + 32), 48 * v22, 8);
    *(*(&v9 + 1) + 56) = v22;
    *(*(&v9 + 1) + 72) = 0uLL;
    *(*(&v9 + 1) + 64) = 0;
    LOBYTE(v355) = 1;
    v376[0] = v9;
    v376[1] = v19;
    v376[2] = *(&v9 + 1);
    v376[3] = v16;
    v376[4] = (v15 - v14 + v16);
    v376[5] = v306;
    v377 = v14;
    v378 = v15;
    v379 = 0;
    v380 = 0;
    v381 = 1;
    v382 = v17;
    v383 = v18;
    v384 = v315;
    v23 = sub_1AF7064A8(v19, v376);
    v24 = v382;
    if (!v382)
    {
      break;
    }

    v25 = v384;
    Strong = v12;
    if (v384)
    {
      do
      {
        v28 = *v24++;
        v27 = v28;

        if (*(v19 + 184))
        {
          goto LABEL_328;
        }

        v30 = *(*(v19 + 168) + 4 * v27);
        v31 = *(*(v29 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v30 + 8);

        v32 = *v23;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          Strong = sub_1AF426AAC(0, *(Strong + 16) + 1, 1, Strong);
        }

        v34 = *(Strong + 16);
        v33 = *(Strong + 24);
        v35 = Strong;
        if (v34 >= v33 >> 1)
        {
          v35 = sub_1AF426AAC(v33 > 1, v34 + 1, 1, Strong);
        }

        v35[2] = v34 + 1;
        Strong = v35;
        v36 = &v35[2 * v34];
        *(v36 + 8) = v30;
        *(v36 + 9) = v31;
        v36[5] = v32;
        ++v23;
      }

      while (--v25);
    }

LABEL_19:
    v347 = v313;
    v348 = v345;
    v349 = v346;
    sub_1AF630994(*(&v9 + 1), &v347, v374);
    sub_1AF62D29C(v19);
    v10 = v302;
    ecs_stack_allocator_pop_snapshot(v302);
    if (v319)
    {
      os_unfair_lock_unlock(*(v19 + 344));
      os_unfair_lock_unlock(*(v19 + 376));
    }

    v12 = Strong;

    v11 = v317 + 1;
    if (v317 + 1 == v304)
    {
      v47 = MEMORY[0x1E69E6720];
      sub_1AF8D2FA8(v335, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720]);
      sub_1AF8D2FA8(v335, &qword_1ED725EA0, &type metadata for QueryResult, v47);
      a4 = v292;
LABEL_31:
      v48 = *(Strong + 16);
      if (!v48)
      {
LABEL_69:
        v73 = *(a3 + 120);
        v372[0] = *(a3 + 104);
        v372[1] = v73;
        v373 = *(a3 + 136);
        sub_1AF6B06C0(v300, v372, 0x200000000, v339);
        v297 = *v339;
        if (*v339)
        {
          v296 = *&v339[40];
          v74 = *(&v340 + 1);
          v75 = *(&v341 + 1);
          v343 = *&v339[8];
          v344 = *&v339[24];
          if (v342 > 0 && *(&v340 + 1))
          {
            v76 = *(*(&v341 + 1) + 32);
            v301 = *(v341 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
            v334[2] = *&v339[32];
            v334[3] = v340;
            v334[4] = v341;
            v334[5] = v342;
            v334[0] = *v339;
            v334[1] = *&v339[16];
            sub_1AF5DD298(v334, &v363);
            v77 = 0;
            v294 = v75;
            v295 = v74;
            v293 = v76;
            while (1)
            {
              v78 = (v296 + 48 * v77);
              v79 = *v78;
              v305 = v78[1];
              Strong = *(v78 + 3);
              v312 = *(v78 + 2);
              v80 = *(v78 + 4);
              v81 = *(v78 + 5);
              v299 = v77;
              if (v301)
              {
                v82 = *(v81 + 376);

                os_unfair_lock_lock(v82);
                os_unfair_lock_lock(*(v81 + 344));
              }

              else
              {
              }

              ecs_stack_allocator_push_snapshot(v76);
              v83 = *(v75 + 4);
              v353[0] = *(v75 + 3);
              v353[1] = v83;
              v354 = v75[10];
              v84 = *(*(*(*(v81 + 40) + 16) + 32) + 16) + 1;
              v75[6] = ecs_stack_allocator_allocate(v75[4], 48 * v84, 8);
              v75[7] = v84;
              v75[9] = 0;
              v75[10] = 0;
              v75[8] = 0;
              v85 = sub_1AF64B110(&type metadata for TextureShaderAsset, &off_1F2543F30, v312, Strong, v80, v75);
              v314 = v85;
              v316 = v81;
              if (!v312)
              {
                v170 = v305;
                if (v79 == v305)
                {
                  goto LABEL_207;
                }

                while (2)
                {
                  v171 = *a4;
                  if (!*(*a4 + 16))
                  {
                    goto LABEL_212;
                  }

                  v172 = sub_1AF449D3C(*(v85 + 112 * v79));
                  if ((v173 & 1) == 0)
                  {
                    goto LABEL_212;
                  }

                  v174 = (*(v171 + 56) + 32 * v172);
                  v321 = v174[1];
                  v324 = *v174;
                  sub_1AF80F2BC(v387, v332);
                  KeyPath = swift_getKeyPath();
                  v176 = *(v81 + 16);

                  if (*(v81 + 184))
                  {
                    goto LABEL_328;
                  }

                  v177 = *(*(v81 + 168) + 4 * v79);
                  Strong = *(*(v176 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v177 + 8);

                  if (v177 == -1 && !Strong)
                  {

                    goto LABEL_210;
                  }

                  v310 = Strong;
                  v178 = v332[0];
                  swift_unownedRetainStrong();

                  if (swift_unknownObjectUnownedLoadStrong())
                  {
                    swift_unknownObjectRelease();
                  }

                  swift_unownedRetainStrong();
                  if ((v177 & 0x80000000) == 0 && *(v178 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v177 && ((v179 = (*(v178 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v177), Strong != -1) ? (v180 = v179[2] == Strong) : (v180 = 1), v180))
                  {
                    v181 = *(v179 + 2);
                    v291 = v178;
                    v182 = *(*(v178 + 144) + 8 * *v179 + 32);
                    v183 = *(v182 + 48);
                    v184 = (v183 + 32);
                    v185 = *(v183 + 16) + 1;
                    v186 = v321;
                    do
                    {
                      if (!--v185)
                      {

                        goto LABEL_318;
                      }

                      v187 = v184 + 5;
                      v188 = *v184;
                      v184 += 5;
                    }

                    while (v188 != &type metadata for TextureShaderAsset);
                    v189 = (&(*(v187 - 2))[7 * v181].Kind + *(v182 + 128));
                    v303 = v189[7];
                    v190 = v189[8];
                    v191 = v189[9];
                    v286 = v189;
                    v308 = v189[6];
                    if ((sub_1AF77627C(v308, v324) & 1) == 0)
                    {
                      goto LABEL_255;
                    }

                    v192 = v190;
                    v289 = v191;
                    v193 = *(v303 + 16);
                    if (v193 != *(*(&v324 + 1) + 16))
                    {
                      goto LABEL_255;
                    }

                    if (v193)
                    {
                      v194 = v303 == *(&v324 + 1);
                    }

                    else
                    {
                      v194 = 1;
                    }

                    v280 = v192;
                    if (!v194)
                    {
                      if (*(v303 + 32) == *(*(&v324 + 1) + 32))
                      {
                        v273 = *(*(&v324 + 1) + 56);
                        v270 = *(*(&v324 + 1) + 48);
                        v266 = *(*(&v324 + 1) + 40);
                        v284 = *(v303 + 72);
                        v259 = *(*(&v324 + 1) + 72);
                        v262 = *(v303 + 64);
                        v202 = *(v303 + 56);
                        v203 = *(v303 + 48);
                        v204 = *(v303 + 40);
                        swift_bridgeObjectRetain_n();
                        swift_bridgeObjectRetain_n();
                        swift_bridgeObjectRetain_n();
                        swift_bridgeObjectRetain_n();
                        v205 = v259;

                        v206 = v262;
                        v207 = v266;
                        v208 = v270;
                        v209 = *(&v273 + 1);
                        v210 = v273;
                        v211 = v284;
                        v212 = 0;
                        v213 = v193 - 1;
                        if ((v203 & 1) == 0)
                        {
                          goto LABEL_259;
                        }

LABEL_262:
                        a4 = v292;
                        if (v208)
                        {
                          while (1)
                          {
                            if (v202 != v210 || v206 != v209)
                            {
                              goto LABEL_300;
                            }

                            v263 = v212;
                            v267 = v213;
                            v214 = *(v211 + 16);
                            v215 = *(v205 + 16);
                            v271 = *(v205 + 24);
                            v274 = *(v211 + 24);
                            v285 = v211;

                            v277 = sub_1AFDFDFD8();
                            if (v277 != sub_1AFDFDFD8() || (v214 != v215 || v274 != v271) && (sub_1AFDFEE28() & 1) == 0)
                            {
                              break;
                            }

                            v186 = v321;
                            if (*(v285 + 16) == *(v205 + 16) && *(v285 + 24) == *(v205 + 24))
                            {
                            }

                            else
                            {
                              v216 = sub_1AFDFEE28();

                              if ((v216 & 1) == 0)
                              {
                                goto LABEL_300;
                              }
                            }

                            if (!v267)
                            {
                              goto LABEL_238;
                            }

                            v217 = v303 + v263;
                            v218 = *(&v324 + 1) + v263;
                            if (*(v303 + v263 + 80) != *(*(&v324 + 1) + v263 + 80))
                            {
                              goto LABEL_300;
                            }

                            v209 = *(v218 + 112);
                            v205 = *(v218 + 120);
                            v210 = *(v218 + 104);
                            v208 = *(v218 + 96);
                            v207 = *(v218 + 88);
                            v206 = *(v217 + 112);
                            v211 = *(v217 + 120);
                            v202 = *(v217 + 104);
                            v212 = v263 + 48;
                            v213 = v267 - 1;
                            v204 = *(v217 + 88);
                            if (*(v217 + 96))
                            {
                              goto LABEL_262;
                            }

LABEL_259:
                            if (v208)
                            {
                              goto LABEL_301;
                            }

                            a4 = v292;
                            if (v204 != v207)
                            {
                              goto LABEL_300;
                            }
                          }

                          v186 = v321;

LABEL_306:

LABEL_307:

                          v201 = v186;

                          v283 = 1;
                          v289 = *(&v321 + 1);
                          v303 = *(&v324 + 1);
                          v308 = v324;
                          goto LABEL_308;
                        }

LABEL_300:

                        goto LABEL_306;
                      }

LABEL_255:

                      goto LABEL_307;
                    }

                    swift_bridgeObjectRetain_n();
                    swift_bridgeObjectRetain_n();
                    swift_bridgeObjectRetain_n();
                    swift_bridgeObjectRetain_n();

LABEL_238:
                    v195 = *(v280 + 16);
                    if (v195 != *(v186 + 16))
                    {
                      goto LABEL_300;
                    }

                    if (v195)
                    {
                      v196 = v280 == v186;
                    }

                    else
                    {
                      v196 = 1;
                    }

                    if (!v196)
                    {
                      if (*(v280 + 32) == *(v186 + 32))
                      {
                        v219 = v195 - 1;
                        v220 = 72;
                        while (1)
                        {
                          v221 = *(v186 + v220);
                          v222 = *(v280 + v220);
                          if (*(v280 + v220 - 24))
                          {
                            if ((*(v186 + v220 - 24) & 1) == 0)
                            {
                              goto LABEL_300;
                            }
                          }

                          else if ((*(v186 + v220 - 24) & 1) != 0 || *(v280 + v220 - 32) != *(v186 + v220 - 32))
                          {
                            goto LABEL_300;
                          }

                          if (*(v280 + v220 - 16) != *(v186 + v220 - 16) || *(v280 + v220 - 8) != *(v186 + v220 - 8))
                          {
                            goto LABEL_300;
                          }

                          v255 = v186 + v220;
                          v260 = v280 + v220;
                          v251 = v220;
                          v268 = *(v222 + 16);
                          v264 = *(v222 + 24);
                          v223 = *(v221 + 16);
                          v224 = *(v221 + 24);
                          v278 = v222;

                          v275 = sub_1AFDFDFD8();
                          if (v275 != sub_1AFDFDFD8())
                          {
                            break;
                          }

                          v225 = v268 == v223 && v264 == v224;
                          if (!v225 && (sub_1AFDFEE28() & 1) == 0)
                          {
                            break;
                          }

                          if (*(v278 + 16) == *(v221 + 16) && *(v278 + 24) == *(v221 + 24))
                          {
                          }

                          else
                          {
                            v226 = sub_1AFDFEE28();

                            if ((v226 & 1) == 0)
                            {
                              goto LABEL_300;
                            }
                          }

                          if (!v219)
                          {
                            goto LABEL_244;
                          }

                          if (*(v260 + 8) != *(v255 + 8))
                          {
                            goto LABEL_300;
                          }

                          v220 = v251 + 48;
                          --v219;
                        }

                        goto LABEL_306;
                      }

                      goto LABEL_300;
                    }

LABEL_244:
                    v197 = v289;
                    v198 = *(v289 + 16);
                    v199 = *(&v321 + 1);
                    if (v198 != *(*(&v321 + 1) + 16))
                    {
LABEL_301:

                      a4 = v292;
                      goto LABEL_307;
                    }

                    if (v198)
                    {
                      v200 = v289 == *(&v321 + 1);
                    }

                    else
                    {
                      v200 = 1;
                    }

                    if (v200)
                    {

                      v283 = 0;
                      a4 = v292;
                      v201 = v280;
                    }

                    else
                    {
                      v227 = 32;
                      do
                      {
                        v228 = *(v197 + v227);
                        v229 = *(v197 + v227 + 16);
                        v370[2] = *(v197 + v227 + 32);
                        v370[1] = v229;
                        v370[0] = v228;
                        v230 = *(v199 + v227);
                        v231 = *(v199 + v227 + 16);
                        v371[2] = *(v199 + v227 + 32);
                        v371[1] = v231;
                        v371[0] = v230;
                        sub_1AF8D2ED0(v370, &v325);
                        sub_1AF8D2ED0(v371, &v325);
                        v232 = sub_1AF8D1034(v370, v371);
                        sub_1AF8D2F20(v371);
                        sub_1AF8D2F20(v370);
                        if ((v232 & 1) == 0)
                        {
                          goto LABEL_301;
                        }

                        v227 += 48;
                        --v198;
                        v199 = *(&v321 + 1);
                        v197 = v289;
                      }

                      while (v198);

                      v201 = v280;

                      v283 = 0;
                      a4 = v292;
                    }

LABEL_308:

                    v286[6] = v308;
                    v286[7] = v303;
                    v286[8] = v201;
                    v286[9] = v289;

                    v366 = *(v286 + 3);
                    v367 = *(v286 + 4);
                    v368 = *(v286 + 5);
                    v369 = *(v286 + 6);
                    v363 = *v286;
                    v364 = *(v286 + 1);
                    v365 = *(v286 + 2);
                    v286[12] = sub_1AF8E5418();
                    v286[13] = v233;

                    if (v283)
                    {
                      v170 = v305;
                      Strong = v321;
                      if (swift_unknownObjectUnownedLoadStrong())
                      {
                        swift_unknownObjectRelease();
                      }

                      if (v333 == 1)
                      {
                        swift_unownedRetainStrong();
                        v325 = v177;
                        v326 = v310;
                        v327 = v291;
                        sub_1AF5A5948();
                        v329 = v234;
                        v330 = &off_1F2536190;
                        v235 = swift_allocObject();
                        v328 = v235;
                        *(v235 + 16) = KeyPath;
                        *(v235 + 40) = v321;
                        *(v235 + 24) = v324;
                        v331 = 11;
                        Strong = *(v291 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
                        if (Strong)
                        {
                          v85 = v314;
                          v81 = v316;
                          if (*(Strong + 81) == 1 && *(Strong + 24) && swift_weakLoadStrong())
                          {

                            swift_unknownObjectRetain();

                            sub_1AFCEF510();
                            v236 = *(*(Strong + 16) + 16);
                            sub_1AFCEF5F8(v236);

                            swift_unknownObjectRelease();
                            v237 = *(Strong + 16);
                            *(v237 + 16) = v236 + 1;
                            v238 = v237 + (v236 << 6);
                            v170 = v305;
                            sub_1AF6CAF24(&v325, v238 + 32);
                            *(Strong + 16) = v237;
                          }
                        }

                        else
                        {
                          v85 = v314;
                          v81 = v316;
                        }

                        sub_1AF57955C(&v325);
LABEL_211:
                        sub_1AF579490(v332);
LABEL_212:
                        if (++v79 == v170)
                        {
                          goto LABEL_207;
                        }

                        continue;
                      }

LABEL_210:
                      v85 = v314;
                      v81 = v316;
                      goto LABEL_211;
                    }

LABEL_318:
                    v170 = v305;
                  }

                  else
                  {
                  }

                  break;
                }

                Strong = swift_unknownObjectUnownedLoadStrong();

                if (Strong)
                {
                  swift_unknownObjectRelease();
                }

                goto LABEL_210;
              }

              if (!v80)
              {
                goto LABEL_207;
              }

              v86 = 0;
              v87 = v312;
              v307 = v80;
LABEL_83:
              v88 = *a4;
              if (!*(*a4 + 16))
              {
                goto LABEL_82;
              }

              Strong = v87[v86];
              v89 = sub_1AF449D3C(*(v85 + 112 * v86));
              if ((v90 & 1) == 0)
              {
                goto LABEL_82;
              }

              v318 = v86;
              v91 = (*(v88 + 56) + 32 * v89);
              v320 = v91[1];
              v323 = *v91;
              sub_1AF80F2BC(v387, v332);
              v92 = swift_getKeyPath();
              v93 = *(v81 + 16);

              if (*(v81 + 184))
              {
                goto LABEL_328;
              }

              v94 = *(*(v81 + 168) + 4 * Strong);
              v95 = *(*(v93 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v94 + 8);

              if (v94 == -1 && v95 == 0)
              {

                v85 = v314;
                v81 = v316;
                v80 = v307;
                v86 = v318;
                v87 = v312;
                goto LABEL_81;
              }

              v97 = v94;
              v98 = v332[0];
              swift_unownedRetainStrong();

              if (swift_unknownObjectUnownedLoadStrong())
              {
                swift_unknownObjectRelease();
              }

              swift_unownedRetainStrong();
              if (v94 < 0 || *(v98 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) <= v94)
              {
                break;
              }

              v99 = (*(v98 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v94);
              if (v95 != -1 && v99[2] != v95)
              {
                break;
              }

              v101 = *(v99 + 2);
              v290 = v98;
              v102 = *(*(v98 + 144) + 8 * *v99 + 32);
              v103 = *(v102 + 48);
              v104 = (v103 + 32);
              v105 = *(v103 + 16) + 1;
              v80 = v307;
              do
              {
                if (!--v105)
                {

                  v87 = v312;
                  a4 = v292;
                  goto LABEL_124;
                }

                v106 = v104 + 5;
                v107 = *v104;
                v104 += 5;
              }

              while (v107 != &type metadata for TextureShaderAsset);
              v276 = v97;
              v288 = v92;
              v108 = (&(*(v106 - 2))[7 * v101].Kind + *(v102 + 128));
              v110 = v108[6];
              v109 = v108[7];
              v112 = v108[8];
              v111 = v108[9];
              v287 = v108;
              if ((sub_1AF77627C(v110, v323) & 1) == 0)
              {

                v127 = *(&v323 + 1);
                a4 = v292;
                goto LABEL_184;
              }

              v279 = v111;
              v269 = v112;
              v272 = v110;
              v113 = *(v109 + 16);
              v114 = *(&v323 + 1);
              v115 = v109;
              a4 = v292;
              if (v113 != *(*(&v323 + 1) + 16))
              {
                v127 = *(&v323 + 1);

LABEL_130:

                goto LABEL_184;
              }

              if (v113)
              {
                v116 = v109 == *(&v323 + 1);
              }

              else
              {
                v116 = 1;
              }

              if (v116)
              {
                swift_bridgeObjectRetain_n();
                v265 = v109;
                swift_bridgeObjectRetain_n();
                v117 = v269;
                swift_bridgeObjectRetain_n();
                swift_bridgeObjectRetain_n();

                goto LABEL_110;
              }

              if (*(v109 + 32) != *(*(&v323 + 1) + 32))
              {

                v127 = *(&v323 + 1);
                goto LABEL_130;
              }

              v282 = *(*(&v323 + 1) + 72);
              v256 = *(*(&v323 + 1) + 56);
              v252 = *(*(&v323 + 1) + 48);
              v242 = *(v109 + 72);
              v245 = *(v109 + 64);
              v248 = *(*(&v323 + 1) + 40);
              v128 = *(v109 + 56);
              v129 = *(v109 + 48);
              v130 = *(v109 + 40);
              swift_bridgeObjectRetain_n();
              v265 = v115;
              swift_bridgeObjectRetain_n();
              swift_bridgeObjectRetain_n();
              swift_bridgeObjectRetain_n();

              v131 = v242;
              v132 = v245;
              v133 = v130;
              v134 = v248;
              v135 = v252;
              v136 = *(&v256 + 1);
              v137 = v256;
              v138 = 0;
              v139 = v113 - 1;
              if ((v129 & 1) == 0)
              {
                goto LABEL_133;
              }

              while (2)
              {
                a4 = v292;
                if ((v135 & 1) == 0)
                {
LABEL_175:

LABEL_200:

                  v127 = *(&v323 + 1);
                  goto LABEL_184;
                }

LABEL_137:
                if (v128 != v137 || v132 != v136)
                {
                  goto LABEL_175;
                }

                v243 = v138;
                v246 = v139;
                v140 = *(v131 + 16);
                v141 = *(v282 + 16);
                v249 = *(v282 + 24);
                v253 = *(v131 + 24);
                v142 = v131;

                v257 = sub_1AFDFDFD8();
                if (v257 != sub_1AFDFDFD8())
                {
LABEL_199:

                  goto LABEL_200;
                }

                v143 = v142;
                v114 = *(&v323 + 1);
                if ((v140 != v141 || v253 != v249) && (sub_1AFDFEE28() & 1) == 0)
                {
                  goto LABEL_203;
                }

                if (*(v143 + 16) == *(v282 + 16) && *(v143 + 24) == *(v282 + 24))
                {
                }

                else
                {
                  v144 = sub_1AFDFEE28();

                  if ((v144 & 1) == 0)
                  {
                    goto LABEL_181;
                  }
                }

                if (v246)
                {
                  v145 = v265 + v243;
                  v146 = *(&v323 + 1) + v243;
                  if (*(v265 + v243 + 80) != *(*(&v323 + 1) + v243 + 80))
                  {
                    goto LABEL_181;
                  }

                  v136 = *(v146 + 112);
                  v282 = *(v146 + 120);
                  v137 = *(v146 + 104);
                  v135 = *(v146 + 96);
                  v134 = *(v146 + 88);
                  v132 = *(v145 + 112);
                  v131 = *(v145 + 120);
                  v128 = *(v145 + 104);
                  v147 = *(v145 + 96);
                  v138 = v243 + 48;
                  v139 = v246 - 1;
                  v133 = *(v145 + 88);
                  if (v147)
                  {
                    continue;
                  }

LABEL_133:
                  if (v135)
                  {
                    goto LABEL_202;
                  }

                  a4 = v292;
                  if (v133 != v134)
                  {
                    goto LABEL_175;
                  }

                  goto LABEL_137;
                }

                break;
              }

              v117 = v269;
LABEL_110:
              v118 = *(v117 + 16);
              if (v118 != *(v320 + 16))
              {
LABEL_181:

                goto LABEL_182;
              }

              if (v118)
              {
                v119 = v117 == v320;
              }

              else
              {
                v119 = 1;
              }

              if (v119)
              {
LABEL_116:
                v120 = v279;
                v121 = *(v279 + 16);
                if (v121 != *(*(&v320 + 1) + 16))
                {

                  v127 = v114;

                  a4 = v292;
                  goto LABEL_184;
                }

                if (v121)
                {
                  v122 = v279 == *(&v320 + 1);
                }

                else
                {
                  v122 = 1;
                }

                if (!v122)
                {
                  v157 = 32;
                  while (1)
                  {
                    v158 = *(v120 + v157);
                    v159 = *(v120 + v157 + 16);
                    v361[2] = *(v120 + v157 + 32);
                    v361[1] = v159;
                    v361[0] = v158;
                    v160 = *(*(&v320 + 1) + v157);
                    v161 = *(*(&v320 + 1) + v157 + 16);
                    v362[2] = *(*(&v320 + 1) + v157 + 32);
                    v362[1] = v161;
                    v362[0] = v160;
                    sub_1AF8D2ED0(v361, &v325);
                    sub_1AF8D2ED0(v362, &v325);
                    v162 = sub_1AF8D1034(v361, v362);
                    sub_1AF8D2F20(v362);
                    sub_1AF8D2F20(v361);
                    if ((v162 & 1) == 0)
                    {
                      break;
                    }

                    v157 += 48;
                    --v121;
                    v120 = v279;
                    if (!v121)
                    {

                      v125 = v265;

                      v123 = v269;

                      v281 = 0;
                      v124 = v272;
                      goto LABEL_180;
                    }
                  }

LABEL_202:

                  a4 = v292;
                  v127 = *(&v323 + 1);
                  goto LABEL_184;
                }

                v123 = v269;

                v124 = v272;

                v281 = 0;
                v125 = v265;
LABEL_180:
                a4 = v292;
              }

              else
              {
                if (*(v117 + 32) == *(v320 + 32))
                {
                  v148 = v118 - 1;
                  v149 = 72;
                  while (1)
                  {
                    v150 = *(v320 + v149);
                    v151 = *(v269 + v149);
                    if (*(v269 + v149 - 24))
                    {
                      if ((*(v320 + v149 - 24) & 1) == 0)
                      {
                        goto LABEL_181;
                      }
                    }

                    else if ((*(v320 + v149 - 24) & 1) != 0 || *(v269 + v149 - 32) != *(v320 + v149 - 32))
                    {
                      goto LABEL_181;
                    }

                    if (*(v269 + v149 - 16) != *(v320 + v149 - 16) || *(v269 + v149 - 8) != *(v320 + v149 - 8))
                    {
                      goto LABEL_181;
                    }

                    v244 = v269 + v149;
                    v247 = v148;
                    v240 = v149;
                    v241 = v320 + v149;
                    v250 = *(v151 + 16);
                    v254 = *(v151 + 24);
                    v153 = *(v150 + 16);
                    v152 = *(v150 + 24);
                    v261 = v151;

                    v258 = sub_1AFDFDFD8();
                    if (v258 != sub_1AFDFDFD8())
                    {
                      goto LABEL_199;
                    }

                    v154 = v250 == v153 && v254 == v152;
                    v114 = *(&v323 + 1);
                    if (!v154 && (sub_1AFDFEE28() & 1) == 0)
                    {
                      break;
                    }

                    if (*(v261 + 16) == *(v150 + 16) && *(v261 + 24) == *(v150 + 24))
                    {

                      v155 = v247;
                    }

                    else
                    {
                      v156 = sub_1AFDFEE28();

                      v155 = v247;
                      if ((v156 & 1) == 0)
                      {
                        goto LABEL_181;
                      }
                    }

                    if (!v155)
                    {
                      goto LABEL_116;
                    }

                    if (*(v244 + 8) != *(v241 + 8))
                    {
                      goto LABEL_176;
                    }

                    v149 = v240 + 48;
                    v148 = v155 - 1;
                  }

LABEL_203:

LABEL_182:

                  v127 = v114;
                }

                else
                {
LABEL_176:
                  v127 = v114;
                }

LABEL_184:
                v124 = v323;

                v281 = 1;
                v120 = *(&v320 + 1);
                v123 = v320;
                v125 = v127;
              }

              v287[6] = v124;
              v287[7] = v125;
              v287[8] = v123;
              v287[9] = v120;

              *&v357[16] = *(v287 + 3);
              v358 = *(v287 + 4);
              v359 = *(v287 + 5);
              v360 = *(v287 + 6);
              v355 = *v287;
              v356 = *(v287 + 1);
              *v357 = *(v287 + 2);
              v287[12] = sub_1AF8E5418();
              v287[13] = v163;

              if ((v281 & 1) == 0)
              {

                v87 = v312;
                goto LABEL_124;
              }

              if (swift_unknownObjectUnownedLoadStrong())
              {
                swift_unknownObjectRelease();
              }

              if (v333 == 1)
              {
                swift_unownedRetainStrong();
                v325 = v276;
                v326 = v95;
                v327 = v290;
                sub_1AF5A5948();
                v329 = v164;
                v330 = &off_1F2536190;
                v165 = swift_allocObject();
                v328 = v165;
                *(v165 + 16) = v288;
                *(v165 + 40) = v320;
                *(v165 + 24) = v323;
                v331 = 11;
                v166 = *(v290 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
                if (v166)
                {
                  v85 = v314;
                  v87 = v312;
                  if (*(v166 + 81) == 1 && *(v166 + 24) && swift_weakLoadStrong())
                  {

                    swift_unknownObjectRetain();

                    sub_1AFCEF510();
                    v167 = *(*(v166 + 16) + 16);
                    sub_1AFCEF5F8(v167);

                    swift_unknownObjectRelease();
                    v168 = *(v166 + 16);
                    *(v168 + 16) = v167 + 1;
                    v169 = v168 + (v167 << 6);
                    v87 = v312;
                    sub_1AF6CAF24(&v325, v169 + 32);
                    *(v166 + 16) = v168;
                  }

                  v81 = v316;
                }

                else
                {
                  v85 = v314;
                  v81 = v316;
                  v87 = v312;
                }

                sub_1AF57955C(&v325);
                v86 = v318;
              }

              else
              {

                v85 = v314;
                v81 = v316;
                v86 = v318;
                v87 = v312;
              }

LABEL_81:
              sub_1AF579490(v332);
LABEL_82:
              if (++v86 != v80)
              {
                goto LABEL_83;
              }

LABEL_207:
              v350 = v297;
              v351 = v343;
              v352 = v344;
              v75 = v294;
              sub_1AF630994(v294, &v350, v353);
              sub_1AF62D29C(v81);
              v76 = v293;
              ecs_stack_allocator_pop_snapshot(v293);
              if (v301)
              {
                os_unfair_lock_unlock(*(v81 + 344));
                os_unfair_lock_unlock(*(v81 + 376));
              }

              v77 = v299 + 1;
              if (v299 + 1 == v295)
              {
                v239 = MEMORY[0x1E69E6720];
                sub_1AF8D2FA8(v339, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720]);
                sub_1AF8D2FA8(v339, &qword_1ED725EA0, &type metadata for QueryResult, v239);
                goto LABEL_327;
              }
            }

            v80 = v307;
            v87 = v312;
LABEL_124:

            v126 = swift_unknownObjectUnownedLoadStrong();

            if (v126)
            {
              swift_unknownObjectRelease();
            }

            v85 = v314;
            v81 = v316;
            v86 = v318;
            goto LABEL_81;
          }

          sub_1AF8D2FA8(v339, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720]);
        }

LABEL_327:

        return;
      }

      v49 = (Strong + 40);
      while (2)
      {
        v50 = *(v49 - 2);
        v51 = *(v49 - 1);
        if (v50 != -1 || v51 != 0)
        {
          v53 = *v49;
          v54 = *v387;
          swift_unownedRetainStrong();
          if ((v50 & 0x80000000) == 0 && *(v54 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v50 && ((v55 = *(v54 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v50, v51 == -1) || *(v55 + 8) == v51))
          {
            v56 = *(*(*(v54 + 88) + 8 * *(v55 + 6) + 32) + 16);
            v57 = *(v56 + 128);
            v322 = !*(v57 + 16) || (v58 = sub_1AF449CB8(&type metadata for MetalScriptReflection), (v59 & 1) == 0) || *(*(v56 + 24) + 16 * *(*(v57 + 56) + 8 * v58) + 32) != &type metadata for MetalScriptReflection;

            swift_unownedRetainStrong();
            a4 = v292;
          }

          else
          {

            swift_unownedRetainStrong();
            v322 = 1;
            if ((v50 & 0x80000000) != 0)
            {
              goto LABEL_55;
            }
          }

          if (*(v54 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v50)
          {
            v60 = (*(v54 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v50);
            if (v51 == -1 || v60[2] == v51)
            {
              Strong = *(*(v54 + 144) + 8 * *v60 + 32);
              v61 = *(v60 + 2);
              os_unfair_lock_lock(*(Strong + 344));
              sub_1AFC10690(Strong, v61, v53, v54, v50 | (v51 << 32));
              if (v311)
              {
                goto LABEL_329;
              }

              os_unfair_lock_unlock(*(Strong + 344));
            }
          }

LABEL_55:

          swift_unownedRetainStrong();

          if (swift_unknownObjectUnownedLoadStrong())
          {
            swift_unknownObjectRelease();
          }

          if (*(v387 + 24) == 1)
          {
            swift_unownedRetainStrong();
            *&v363 = __PAIR64__(v51, v50);
            *(&v363 + 1) = v54;
            sub_1AF8D3920(0, qword_1EB632038, &type metadata for MetalScriptReflection, &off_1F2542EE8, type metadata accessor for ComponentWriter);
            *(&v365 + 1) = v62;
            *&v366 = &off_1F2536170;
            *&v364 = v53;
            BYTE8(v364) = v322;
            BYTE8(v366) = 12;
            v63 = *(v54 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
            if (v63 && (*(v63 + 81) & 1) != 0 && *(v63 + 24) && swift_weakLoadStrong())
            {

              swift_unknownObjectRetain();

              sub_1AF6CAF24(&v363, &v355);
              v64 = *(v63 + 16);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v63 + 16) = v64;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v64 = sub_1AF4221C8(0, *(v64 + 2) + 1, 1, v64);
                *(v63 + 16) = v64;
              }

              v67 = *(v64 + 2);
              v66 = *(v64 + 3);
              if (v67 >= v66 >> 1)
              {
                *(v63 + 16) = sub_1AF4221C8(v66 > 1, v67 + 1, 1, v64);
              }

              swift_unknownObjectRelease();

              v68 = *(v63 + 16);
              *(v68 + 16) = v67 + 1;
              v69 = (v68 + (v67 << 6));
              v70 = v355;
              v71 = v356;
              v72 = *v357;
              *(v69 + 73) = *&v357[9];
              v69[3] = v71;
              v69[4] = v72;
              v69[2] = v70;
              *(v63 + 16) = v68;

              a4 = v292;
            }

            else
            {
            }

            sub_1AF57955C(&v363);
          }

          else
          {
          }
        }

        v49 += 2;
        if (!--v48)
        {
          goto LABEL_69;
        }

        continue;
      }
    }
  }

  v37 = v377;
  v38 = v378;
  Strong = v12;
  if (v377 == v378)
  {
    goto LABEL_19;
  }

  while (1)
  {

    if (*(v19 + 184))
    {
      break;
    }

    v40 = *(*(v19 + 168) + 4 * v37);
    v41 = *(*(v39 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v40 + 8);

    v42 = v23[v37];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      Strong = sub_1AF426AAC(0, *(Strong + 16) + 1, 1, Strong);
    }

    v44 = *(Strong + 16);
    v43 = *(Strong + 24);
    v45 = Strong;
    if (v44 >= v43 >> 1)
    {
      v45 = sub_1AF426AAC(v43 > 1, v44 + 1, 1, Strong);
    }

    ++v37;
    v45[2] = v44 + 1;
    Strong = v45;
    v46 = &v45[2 * v44];
    *(v46 + 8) = v40;
    *(v46 + 9) = v41;
    v46[5] = v42;
    if (v38 == v37)
    {
      goto LABEL_19;
    }
  }

LABEL_328:
  sub_1AFDFE518();
  __break(1u);
LABEL_329:

  os_unfair_lock_unlock(*(Strong + 344));
  __break(1u);
}

uint64_t sub_1AF8D061C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[7];
  v3 = a1[8];
  v4 = a1[9];
  *a2 = a1[6];
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

uint64_t sub_1AF8D067C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];

  *(a2 + 48) = v3;
  *(a2 + 56) = v4;
  *(a2 + 64) = v5;
  *(a2 + 72) = v6;
  v11 = *(a2 + 96);
  v12 = *(a2 + 104);
  v13 = v11;
  v7 = sub_1AF8E5418();
  v9 = v8;
  sub_1AF8D2F4C(&v13);
  result = sub_1AF8D2FA8(&v12, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  *(a2 + 96) = v7;
  *(a2 + 104) = v9;
  return result;
}

uint64_t sub_1AF8D0778()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AF8D07F4()
{
  v1 = v0;
  v2 = sub_1AFDFDAF8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AFDFDAC8();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1AFDFCAC8();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  sub_1AF0D4478(0, &qword_1ED72F8A0);
  sub_1AFDFCAB8();
  sub_1AFDFDAB8();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8090], v2);
  *(v1 + 16) = sub_1AFDFDB28();
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v49 = qword_1ED73B840;
  v50 = 0;
  v51 = 2;
  v52 = 0;
  v53 = 2;
  v54 = 0;
  sub_1AF70426C(1, &v29);
  v11 = v30;
  v12 = v31;
  v13 = v33;
  v14 = v32 | 4;
  *(v1 + 24) = v29;
  *(v1 + 32) = v11;
  *(v1 + 36) = v12;
  *(v1 + 40) = v14;
  *(v1 + 48) = 2;
  *(v1 + 56) = v13;
  sub_1AFCC51C8(1, 1, &v34);
  v15 = v35;
  v16 = v36;
  v17 = v38;
  v18 = v37 | 4;
  *(v1 + 64) = v34;
  *(v1 + 72) = v15;
  *(v1 + 76) = v16;
  *(v1 + 80) = v18;
  *(v1 + 88) = 2;
  *(v1 + 96) = v17;
  sub_1AF703280(1, &v39);
  v19 = v40;
  v20 = v41;
  v21 = v43;
  v22 = v42 | 4;
  *(v1 + 104) = v39;
  *(v1 + 112) = v19;
  *(v1 + 116) = v20;
  *(v1 + 120) = v22;
  *(v1 + 128) = 2;
  *(v1 + 136) = v21;
  sub_1AF704CCC(1, &v44);
  v23 = v45;
  v24 = v46;
  v25 = v48;
  v26 = v47 | 4;
  *(v1 + 144) = v44;
  *(v1 + 152) = v23;
  *(v1 + 156) = v24;
  *(v1 + 160) = v26;
  *(v1 + 168) = 2;
  *(v1 + 176) = v25;
  return v1;
}

uint64_t sub_1AF8D0B20()
{
  v0 = swift_allocObject();
  sub_1AF8D07F4();
  return v0;
}

uint64_t sub_1AF8D0B70()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED73B840;
  v7 = 0;
  v8 = 2;
  v9 = 0;
  v10 = 2;
  v11 = 0;

  sub_1AF704D1C(1, &v1);

  *&xmmword_1ED73B450 = v1;
  DWORD2(xmmword_1ED73B450) = v2;
  BYTE12(xmmword_1ED73B450) = v3;
  qword_1ED73B460 = v4 | 4;
  byte_1ED73B468 = 2;
  qword_1ED73B470 = v5;
  return result;
}

uint64_t destroy for MetalFunctionReflection()
{
}

void *initializeWithCopy for MetalFunctionReflection(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *assignWithCopy for MetalFunctionReflection(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  return a1;
}

_OWORD *assignWithTake for MetalFunctionReflection(_OWORD *a1, _OWORD *a2)
{

  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

void sub_1AF8D0E18(uint64_t a1)
{
  if (qword_1ED725448 != -1)
  {
    v1 = a1;
    swift_once();
    a1 = v1;
  }

  v16[0] = xmmword_1ED73B450;
  v16[1] = *&qword_1ED73B460;
  v17 = qword_1ED73B470;
  sub_1AF6B06C0(a1, v16, 0x200000000, &v2);
  if (v2)
  {
    v12 = v5;
    v13 = v6;
    v14 = v7;
    v15 = v8;
    v10 = v3;
    v11 = v4;
    v9 = v2;
    sub_1AFD06CAC(&v9);
    sub_1AF8D2FA8(&v2, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720]);
  }
}

void sub_1AF8D0F44(uint64_t a1)
{
  if (qword_1ED725448 != -1)
  {
    swift_once();
  }

  v2 = xmmword_1ED73B450;
  v3 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v4 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v3 + 40));
  sub_1AF6B1714(a1, v2);

  sub_1AF6B1B20(a1, v4, v2);
  v5 = *(v3 + 40);

  os_unfair_lock_unlock(v5);
}

uint64_t sub_1AF8D1034(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(a2 + 40);
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  v9 = sub_1AFDFDFD8();
  if (v9 != sub_1AFDFDFD8())
  {
    return 0;
  }

  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  if ((sub_1AFDFEE28() & 1) == 0)
  {
    return 0;
  }

  return sub_1AFDFEE28();
}

uint64_t sub_1AF8D11AC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = result;
  v9 = *(a3 + 16);
  if (v9)
  {
    v10 = (a3 + 72);
    while (1)
    {
      v11 = *v10;
      if (*(*v10 + 16) == v7 && *(*v10 + 24) == a2)
      {
        break;
      }

      result = sub_1AFDFEE28();
      if (result)
      {
        break;
      }

      v10 += 6;
      if (!--v9)
      {
        goto LABEL_9;
      }
    }

    v20 = v10 - 5;
    v18 = 1;
    goto LABEL_20;
  }

LABEL_9:
  v13 = *(a4 + 16);
  v14 = 0uLL;
  if (v13)
  {
    v15 = (a4 + 72);
    while (1)
    {
      v11 = *v15;
      if (*(*v15 + 16) == v7 && *(*v15 + 24) == a2)
      {
        break;
      }

      result = sub_1AFDFEE28();
      v14 = 0uLL;
      if (result)
      {
        break;
      }

      v15 += 6;
      if (!--v13)
      {
        goto LABEL_17;
      }
    }

    v20 = v15 - 5;
    v18 = 2;
LABEL_20:
    v17 = *(v20 + 16);
    v21 = *(v20 + 3);
    v22 = *v20;

    v19 = v21;
    v14 = v22;
    goto LABEL_21;
  }

LABEL_17:
  v17 = 0;
  v11 = 0;
  v18 = 0;
  v19 = 0uLL;
LABEL_21:
  *a5 = v14;
  *(a5 + 16) = v17;
  *(a5 + 24) = v19;
  *(a5 + 40) = v11;
  *(a5 + 48) = v18;
  return result;
}

uint64_t sub_1AF8D12D8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = result;
  v9 = *(a3 + 16);
  if (v9)
  {
    v10 = (a3 + 72);
    while (1)
    {
      v11 = *v10;
      if (*(*v10 + 16) == v7 && *(*v10 + 24) == a2)
      {
        break;
      }

      result = sub_1AFDFEE28();
      if (result)
      {
        break;
      }

      v10 += 6;
      if (!--v9)
      {
        goto LABEL_9;
      }
    }

    v18 = 0;
    v20 = v10 - 5;
    goto LABEL_20;
  }

LABEL_9:
  v13 = *(a4 + 16);
  v14 = 0uLL;
  if (v13)
  {
    v15 = (a4 + 72);
    while (1)
    {
      v11 = *v15;
      if (*(*v15 + 16) == v7 && *(*v15 + 24) == a2)
      {
        break;
      }

      result = sub_1AFDFEE28();
      v14 = 0uLL;
      if (result)
      {
        break;
      }

      v15 += 6;
      if (!--v13)
      {
        goto LABEL_17;
      }
    }

    v20 = v15 - 5;
    v18 = 2;
LABEL_20:
    v17 = *(v20 + 16);
    v21 = *(v20 + 3);
    v22 = *v20;

    v19 = v21;
    v14 = v22;
    goto LABEL_21;
  }

LABEL_17:
  v17 = 0;
  v11 = 0;
  v18 = 0;
  v19 = 0uLL;
LABEL_21:
  *a5 = v14;
  *(a5 + 16) = v17;
  *(a5 + 24) = v19;
  *(a5 + 40) = v11;
  *(a5 + 48) = v18;
  return result;
}

uint64_t sub_1AF8D1404(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5373726566667562 && a2 == 0xEB00000000657A69;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737475706E69 && a2 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7374757074756FLL && a2 == 0xE700000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74754F7475706E69 && a2 == 0xEC00000073747570)
  {

    return 3;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1AF8D156C()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AF8D15B8(uint64_t result, uint64_t a2, void *a3)
{
  v4 = result;
  if (a2 == 2)
  {
    v19 = a3[2];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1AF422624(0, *(v19 + 2) + 1, 1, v19);
    }

    v20 = *(v19 + 2);
    v21 = *(v19 + 3);
    v22 = v20 + 1;
    if (v20 >= v21 >> 1)
    {
      v36 = v20 + 1;
      v29 = v19;
      v30 = *(v19 + 2);
      v31 = sub_1AF422624(v21 > 1, v20 + 1, 1, v29);
      v20 = v30;
      v22 = v36;
      v19 = v31;
    }

    *(v19 + 2) = v22;
    v23 = &v19[48 * v20];
    v24 = *v4;
    v25 = v4[2];
    *(v23 + 3) = v4[1];
    *(v23 + 4) = v25;
    *(v23 + 2) = v24;
    a3[2] = v19;
  }

  else if (a2 == 1)
  {
    v12 = a3[3];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1AF422624(0, *(v12 + 2) + 1, 1, v12);
    }

    v13 = *(v12 + 2);
    v14 = *(v12 + 3);
    v15 = v13 + 1;
    if (v13 >= v14 >> 1)
    {
      v35 = v13 + 1;
      v26 = v12;
      v27 = *(v12 + 2);
      v28 = sub_1AF422624(v14 > 1, v13 + 1, 1, v26);
      v13 = v27;
      v15 = v35;
      v12 = v28;
    }

    *(v12 + 2) = v15;
    v16 = &v12[48 * v13];
    v17 = *v4;
    v18 = v4[2];
    *(v16 + 3) = v4[1];
    *(v16 + 4) = v18;
    *(v16 + 2) = v17;
    a3[3] = v12;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v5 = a3[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1AF422624(0, *(v5 + 2) + 1, 1, v5);
    }

    v6 = *(v5 + 2);
    v7 = *(v5 + 3);
    v8 = v6 + 1;
    if (v6 >= v7 >> 1)
    {
      v37 = v6 + 1;
      v32 = v5;
      v33 = *(v5 + 2);
      v34 = sub_1AF422624(v7 > 1, v6 + 1, 1, v32);
      v6 = v33;
      v8 = v37;
      v5 = v34;
    }

    *(v5 + 2) = v8;
    v9 = &v5[48 * v6];
    v10 = *v4;
    v11 = v4[2];
    *(v9 + 3) = v4[1];
    *(v9 + 4) = v11;
    *(v9 + 2) = v10;
    a3[1] = v5;
  }
}

void sub_1AF8D17E0(void *a1, uint64_t *a2)
{
  v4 = swift_dynamicCastObjCProtocolConditional();
  if (v4)
  {
    v5 = v4;
    swift_unknownObjectRetain();
    v6 = [v5 bufferStructType];
    if (v6)
    {
      v66 = a2;
      v62 = v6;
      v7 = [v6 members];
      sub_1AF0D4478(0, &qword_1ED723130);
      v8 = sub_1AFDFD418();

      v68 = a1;
      if (v8 >> 62)
      {
        v9 = sub_1AFDFE108();
        if (v9)
        {
LABEL_5:
          v10 = 0;
          v64 = v9;
          v65 = v8 & 0xC000000000000001;
          v11 = &selRef_antialiasingMode;
          v63 = v8;
          do
          {
            if (v65)
            {
              v12 = MEMORY[0x1B2719C70](v10, v8);
            }

            else
            {
              v12 = *(v8 + 8 * v10 + 32);
            }

            v13 = v12;
            v14 = [v12 v11[446]];
            v15 = MEMORY[0x1E69E6448];
            switch(v14)
            {
              case 3uLL:
                goto LABEL_27;
              case 4uLL:
                v16 = MEMORY[0x1E69E7428];
                v17 = &unk_1ED72F770;
                goto LABEL_22;
              case 5uLL:
                v16 = MEMORY[0x1E69E7450];
                v17 = &qword_1ED72F740;
                goto LABEL_22;
              case 6uLL:
                v16 = MEMORY[0x1E69E74A8];
                v17 = &qword_1ED72F6E0;
LABEL_22:
                sub_1AF8D3410(0, v17, sub_1AF43A0C8, MEMORY[0x1E69E6448], v16);
                goto LABEL_26;
              case 7uLL:
                type metadata accessor for simd_float2x2(0);
                goto LABEL_26;
              case 8uLL:
                type metadata accessor for simd_float2x3(0);
                goto LABEL_26;
              case 9uLL:
                type metadata accessor for simd_float2x4(0);
                goto LABEL_26;
              case 0xAuLL:
                type metadata accessor for simd_float3x2(0);
                goto LABEL_26;
              case 0xBuLL:
                type metadata accessor for simd_float3x3(0);
                goto LABEL_26;
              case 0xCuLL:
                type metadata accessor for simd_float3x4(0);
                goto LABEL_26;
              case 0xDuLL:
                type metadata accessor for simd_float4x2(0);
                goto LABEL_26;
              case 0xEuLL:
                type metadata accessor for simd_float4x3(0);
                goto LABEL_26;
              case 0xFuLL:
                type metadata accessor for simd_float4x4(0);
LABEL_26:
                v15 = v18;
                goto LABEL_27;
              case 0x1DuLL:
                v15 = MEMORY[0x1E69E6530];
                goto LABEL_27;
              case 0x21uLL:
                v15 = MEMORY[0x1E69E6810];
                goto LABEL_27;
              case 0x35uLL:
                v15 = MEMORY[0x1E69E6370];
LABEL_27:
                v19 = v5;
                v20 = [v5 name];
                v21 = sub_1AFDFCEF8();
                v23 = v22;

                v69 = v21;
                v72 = v23;
                MEMORY[0x1B2718AE0](46, 0xE100000000000000);
                v24 = [v13 name];
                v25 = sub_1AFDFCEF8();
                v27 = v26;

                MEMORY[0x1B2718AE0](v25, v27);

                if ([v13 v11[446]] == 58)
                {
                  v28 = 8;
                }

                else
                {
                  v28 = 1;
                }

                type metadata accessor for PropertyDescription();
                v29 = swift_allocObject();
                *(v29 + 104) = 0;
                *(v29 + 80) = 0;
                *(v29 + 88) = 0;
                *(v29 + 112) = 1;
                *(v29 + 128) = 0;
                *(v29 + 136) = 0;
                *(v29 + 120) = 0;
                v30 = MEMORY[0x1E69E7CC0];
                *(v29 + 160) = MEMORY[0x1E69E7CC0];
                *(v29 + 216) = 0;
                v31 = sub_1AF6AD144();
                *(v29 + 16) = v69;
                *(v29 + 24) = v72;
                *(v29 + 32) = v31;
                *(v29 + 40) = v15;
                *(v29 + 48) = 0;
                *(v29 + 56) = 1;
                *(v29 + 58) = 1024;
                *(v29 + 184) = 0;
                *(v29 + 188) = 1;
                *(v29 + 192) = 0;
                *(v29 + 196) = 1;
                *(v29 + 200) = 0x1000100000000;
                *(v29 + 208) = 1;
                *(v29 + 96) = 0;
                *(v29 + 210) = 0;
                *(v29 + 64) = 0;
                *(v29 + 72) = 0;
                *(v29 + 144) = v28;
                *(v29 + 152) = 0;
                *(v29 + 168) = 0;
                *(v29 + 176) = 0;
                *(v29 + 160) = v30;

                v32 = swift_dynamicCastObjCProtocolConditional();
                v33 = v32;
                if (v32)
                {
                  v34 = [v32 textureType];
                }

                else
                {
                  v34 = 0;
                }

                v35 = v33 == 0;
                v36 = [v13 offset];
                v37 = [v68 type];
                v38 = [v68 index];
                v73 = v37;
                v74 = v34;
                v75 = v35;
                v76 = v38;
                v77 = v36;
                v78 = v29;

                sub_1AF8D15B8(&v73, [v68 access], v66);

                v5 = v19;
                v8 = v63;
                v9 = v64;
                v11 = &selRef_antialiasingMode;
                break;
              default:
                break;
            }

            ++v10;
          }

          while (v9 != v10);
        }
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9)
        {
          goto LABEL_5;
        }
      }

      v39 = [v68 index];
      v40 = [v5 bufferDataSize];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70 = *v66;
      sub_1AF851BB8(v40, v39, isUniquelyReferenced_nonNull_native);
      swift_unknownObjectRelease();

      *v66 = v70;
      return;
    }

    swift_unknownObjectRelease();
  }

  v42 = [a1 type];
  if (v42 == 2)
  {
    v67 = a2;
    v44 = &type metadata for Entity;
  }

  else
  {
    if (v42)
    {
      return;
    }

    sub_1AF8CCD24([a1 bufferDataType]);
    if (!v43)
    {
      return;
    }

    v44 = v43;
    v67 = a2;
  }

  v45 = [a1 name];
  v46 = sub_1AFDFCEF8();
  v48 = v47;

  if ([a1 type] == 2)
  {
    v49 = 8;
  }

  else
  {
    v49 = 1;
  }

  type metadata accessor for PropertyDescription();
  v50 = swift_allocObject();
  *(v50 + 104) = 0;
  *(v50 + 80) = 0;
  *(v50 + 88) = 0;
  *(v50 + 112) = 1;
  *(v50 + 128) = 0;
  *(v50 + 136) = 0;
  *(v50 + 120) = 0;
  v51 = MEMORY[0x1E69E7CC0];
  *(v50 + 160) = MEMORY[0x1E69E7CC0];
  *(v50 + 216) = 0;
  v52 = sub_1AF6AD144();
  *(v50 + 16) = v46;
  *(v50 + 24) = v48;
  *(v50 + 32) = v52;
  *(v50 + 40) = v44;
  *(v50 + 48) = 0;
  *(v50 + 56) = 1;
  *(v50 + 58) = 1024;
  *(v50 + 184) = 0;
  *(v50 + 188) = 1;
  *(v50 + 192) = 0;
  *(v50 + 196) = 1;
  *(v50 + 200) = 0x1000100000000;
  *(v50 + 208) = 1;
  *(v50 + 96) = 0;
  *(v50 + 210) = 0;
  *(v50 + 64) = 0;
  *(v50 + 72) = 0;
  *(v50 + 144) = v49;
  *(v50 + 152) = 0;
  *(v50 + 168) = 0;
  *(v50 + 176) = 0;
  *(v50 + 160) = v51;

  v53 = swift_dynamicCastObjCProtocolConditional();
  v54 = v53;
  if (v53)
  {
    v55 = [v53 textureType];
  }

  else
  {
    v55 = 0;
  }

  v73 = [a1 type];
  v74 = v55;
  v75 = v54 == 0;
  v76 = [a1 index];
  v77 = 0;
  v78 = v50;
  v56 = swift_dynamicCastObjCProtocolConditional();
  if (v56)
  {
    v57 = v56;
    swift_unknownObjectRetain();

    v58 = [a1 index];
    v59 = [v57 bufferDataSize];
    v60 = v67;
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v71 = *v67;
    sub_1AF851BB8(v59, v58, v61);
    swift_unknownObjectRelease();
    *v67 = v71;
  }

  else
  {

    v60 = v67;
  }

  sub_1AF8D15B8(&v73, [a1 access], v60);
}

uint64_t sub_1AF8D1FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{

  v8 = MEMORY[0x1E69E7CC8];
  v87 = a4;
  *a4 = MEMORY[0x1E69E7CC8];
  sub_1AF5B2400(0);
  v91 = v9;
  v92 = a3;
  v10 = *(v9 + 44);
  v11 = MEMORY[0x1E69E7CC0];
  if (*(a3 + v10))
  {
    v12 = *(a3 + v10);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v90 = *(v12 + 16);
  if (!v90)
  {
  }

  v88 = v12 + 32;
  v89 = OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive;

  v13 = 0;
  while (2)
  {
    v18 = v88 + 24 * v13;
    v20 = *v18;
    v19 = *(v18 + 8);
    v21 = *(v18 + 16);
    v22 = *(v92 + *(v91 + 36));
    v96 = v20;
    if (!v21)
    {
      if (v22)
      {
        v24 = *(v22 + 88);
        swift_unknownObjectRetain();
      }

      else
      {
        v24 = 0;
      }

      sub_1AFDFF308();
      swift_unknownObjectRetain();
      swift_bridgeObjectRetain_n();
      sub_1AFDFD038();
      MEMORY[0x1B271ACB0](0);
      if (v24)
      {
        MEMORY[0x1B271ACB0](v24);
        swift_unknownObjectRelease();
      }

      else
      {
        MEMORY[0x1B271ACB0](0);
      }

      v132 = v116;
      v133 = v117;
      v134 = v118;
      v130 = v114;
      v131 = v115;
      v42 = sub_1AFDFF2E8();
      *&v125 = v20;
      *(&v125 + 1) = v19;
      v126 = 0;
      v127 = v24;
      v128 = v11;
      v129 = v42;
      v95 = v19;
      v43 = *(a6 + v89);
      v44 = v43;

      sub_1AF73BD84(&v125, 1, 0, v43);
      v46 = v45;

      swift_unknownObjectRelease();
      if (!v46)
      {
        swift_unknownObjectRelease();
        swift_bridgeObjectRelease_n();
        goto LABEL_46;
      }

      v177 = v13;
      *&v114 = MEMORY[0x1E69E7CC8];
      *(&v114 + 1) = v11;
      *&v115 = v11;
      *(&v115 + 1) = v11;
      v47 = [v46 bindings];
      sub_1AF7198B0();
      v48 = sub_1AFDFD418();

      v49 = v46;
      if (v48 >> 62)
      {
        v50 = sub_1AFDFE108();
        if (v50)
        {
LABEL_34:
          for (i = 0; i != v50; ++i)
          {
            if ((v48 & 0xC000000000000001) != 0)
            {
              v52 = MEMORY[0x1B2719C70](i, v48);
            }

            else
            {
              v52 = *(v48 + 8 * i + 32);
              swift_unknownObjectRetain();
            }

            sub_1AF8D17E0(v52, &v114);
            swift_unknownObjectRelease();
          }
        }
      }

      else
      {
        v50 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v50)
        {
          goto LABEL_34;
        }
      }

      v53 = v114;
      v55 = *(&v115 + 1);
      v54 = v115;
      v56 = v87;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v97 = *v87;
      sub_1AF857E8C(v53, *(&v53 + 1), v54, v55, v96, v95, isUniquelyReferenced_nonNull_native);
      swift_unknownObjectRelease();

      swift_bridgeObjectRelease_n();
      v8 = v97;
LABEL_45:
      *v56 = v8;
      v11 = MEMORY[0x1E69E7CC0];
      v13 = v177;
      goto LABEL_46;
    }

    v177 = v13;
    if (v22)
    {
      v23 = *(v22 + 88);
      swift_unknownObjectRetain();
    }

    else
    {
      v23 = 0;
    }

    *&v164 = 0xD000000000000023;
    *(&v164 + 1) = 0x80000001AFF37870;
    v165 = 0;
    v166 = 0;
    *&v167 = v11;
    *(&v167 + 1) = v20;
    v168 = v19;
    v169 = 0;
    *&v170 = v23;
    *(&v170 + 1) = v11;
    v173 = 0u;
    v174 = 0u;
    v171 = 0u;
    v172 = 0u;
    v175 = 0u;
    v176 = 0u;
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v118 = v170;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v116 = v167;
    v117 = v19;
    v114 = v164;
    v115 = 0u;
    sub_1AF5FF2F0(&v103);
    v105 = xmmword_1AFE68E40;
    v106 = xmmword_1AFE68E40;
    v103 = xmmword_1AFE68E40;
    v104 = xmmword_1AFE68E40;
    v109 = xmmword_1AFE68E40;
    v110 = xmmword_1AFE68E40;
    v111 = xmmword_1AFE68E40;
    v112 = xmmword_1AFE68E40;
    sub_1AFDFF308();
    swift_unknownObjectRetain();
    swift_bridgeObjectRetain_n();
    sub_1AF6021F8(&v164, &v97);
    sub_1AF89747C(v101);
    sub_1AF602254(&v164);
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](0);
    sub_1AFDFF2A8();
    v160 = v103;
    v161 = v104;
    v162 = v105;
    v163 = v106;
    sub_1AF5FF304();
    sub_1AFDFF2A8();
    sub_1AFDFF2A8();
    MEMORY[0x1B271ACB0](3);
    sub_1AFDFF2A8();
    sub_1AFDFF2A8();
    v157 = v101[2];
    v158 = v101[3];
    v159 = v102;
    v155 = v101[0];
    v156 = v101[1];
    v25 = sub_1AFDFF2E8();
    v135[8] = v122;
    v135[9] = v123;
    v135[10] = v124;
    v135[4] = v118;
    v135[5] = v119;
    v135[6] = v120;
    v135[7] = v121;
    v135[0] = v114;
    v135[1] = v115;
    v135[2] = v116;
    v135[3] = v117;
    memset(&v135[11], 0, 80);
    v136 = 1;
    *v137 = *v113;
    *&v137[3] = *&v113[3];
    v138 = v109;
    v139 = v110;
    v140 = v111;
    v141 = v112;
    v142 = 0;
    v143 = 0;
    v145 = 0;
    v146 = 0;
    v144 = 3;
    v147 = 2;
    v149 = 0;
    v150 = 0;
    v148 = 0;
    v151 = 257;
    v152 = v107;
    v153 = v108;
    v154 = v25;
    v26 = v19;
    v27 = *(a6 + v89);

    v28 = sub_1AF730058(v135, 1);
    v30 = v29;
    v32 = v31;
    v33 = v31;

    if (!v33)
    {
      v34 = v28;
      v94 = v26;
      if (!v30)
      {
        swift_unknownObjectRelease();

        sub_1AF602304(v135);
        sub_1AF6022A8(v28, 0, 0);

        goto LABEL_18;
      }

      v35 = v30;
      v97 = MEMORY[0x1E69E7CC8];
      v98 = MEMORY[0x1E69E7CC0];
      v99 = MEMORY[0x1E69E7CC0];
      v100 = MEMORY[0x1E69E7CC0];
      v84 = v30;
      v36 = [v84 fragmentBindings];
      sub_1AF7198B0();
      v37 = sub_1AFDFD418();

      v38 = v34;
      if (v37 >> 62)
      {
        v39 = sub_1AFDFE108();
        if (v39)
        {
LABEL_22:
          for (j = 0; j != v39; ++j)
          {
            if ((v37 & 0xC000000000000001) != 0)
            {
              v41 = MEMORY[0x1B2719C70](j, v37);
            }

            else
            {
              v41 = *(v37 + 8 * j + 32);
              swift_unknownObjectRetain();
            }

            sub_1AF8D17E0(v41, &v97);
            swift_unknownObjectRelease();
          }
        }
      }

      else
      {
        v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v39)
        {
          goto LABEL_22;
        }
      }

      v58 = v97;
      v59 = v98;
      v61 = v99;
      v60 = v100;
      v56 = v87;
      v62 = swift_isUniquelyReferenced_nonNull_native();
      *&v101[0] = *v87;
      sub_1AF857E8C(v58, v59, v61, v60, v96, v94, v62);

      swift_unknownObjectRelease();
      swift_bridgeObjectRelease_n();
      sub_1AF602304(v135);
      sub_1AF6022A8(v38, v35, 0);
      v8 = *&v101[0];
      goto LABEL_45;
    }

    swift_unknownObjectRelease();

    sub_1AF602304(v135);

    sub_1AF6022A8(v28, v30, v32);
LABEL_18:
    v13 = v177;
    v11 = MEMORY[0x1E69E7CC0];
LABEL_46:
    v63 = 0;
    ++v13;
    v64 = 1 << *(v8 + 32);
    v65 = (v64 + 63) >> 6;
    v66 = 64;
    while (1)
    {
      v67 = *(v8 + v66);
      if (v67)
      {
        break;
      }

      v63 -= 64;
      v66 += 8;
      if (!--v65)
      {
        goto LABEL_9;
      }
    }

    v68 = __clz(__rbit64(v67));
    if (v68 - v64 == v63)
    {
      goto LABEL_9;
    }

    v69 = (*(v8 + 48) + 16 * (v68 - v63));
    v71 = *v69;
    v70 = v69[1];
    v72 = *(a1 + 16);

    if (*(a1 + 184))
    {
      result = sub_1AFDFE518();
      __break(1u);
      return result;
    }

    v73 = *(*(a1 + 168) + 4 * a2);
    v74 = *(*(v72 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v73 + 8);

    if (*(v8 + 16))
    {
      v75 = sub_1AF419914(v71, v70);
      v77 = v76;

      if (v77)
      {
        v78 = (*(v8 + 56) + 32 * v75);
        v80 = *v78;
        v79 = v78[1];
        v81 = v78[2];
        v82 = v78[3];

        v17 = v82;
        v16 = v81;
        v15 = v79;
        v14 = v80;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
LABEL_8:
    sub_1AF826298(v14, v15, v16, v17, v73 | (v74 << 32));
    v11 = MEMORY[0x1E69E7CC0];
LABEL_9:
    if (v13 != v90)
    {
      continue;
    }
  }
}

uint64_t sub_1AF8D2A48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF8D3410(0, &qword_1EB640058, sub_1AF8D2E7C, &type metadata for MetalFunctionReflection.Arg.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - v9;
  v11 = a1[3];
  v32 = a1;
  sub_1AF441150(a1, v11);
  sub_1AF8D2E7C();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v32);
  }

  v12 = v7;
  LOBYTE(v34) = 0;
  v31 = sub_1AFDFE748();
  LOBYTE(v34) = 5;
  v13 = sub_1AFDFE758();
  LOBYTE(v34) = 1;
  v30 = sub_1AFDFE748();
  LOBYTE(v34) = 4;
  v28 = sub_1AFDFE708();
  v29 = v15;
  LOBYTE(v36) = 3;
  sub_1AF487170();
  sub_1AFDFE768();
  v26 = v35;
  v27 = v34;
  v33 = 2;
  sub_1AF645788();
  sub_1AFDFE768();
  v16 = v36;
  type metadata accessor for PropertyDescription();
  v17 = swift_allocObject();
  *(v17 + 104) = 0;
  *(v17 + 80) = 0;
  *(v17 + 88) = 0;
  *(v17 + 112) = 1;
  *(v17 + 216) = 0;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 120) = 0;
  v18 = sub_1AF6AD144();
  v19 = v29;
  *(v17 + 16) = v28;
  *(v17 + 24) = v19;
  *(v17 + 32) = v18;
  *(v17 + 40) = v16;
  *(v17 + 48) = 0;
  *(v17 + 56) = 1;
  *(v17 + 58) = 1024;
  *(v17 + 184) = 0;
  *(v17 + 188) = 1;
  *(v17 + 192) = 0;
  *(v17 + 196) = 1;
  *(v17 + 200) = 0x1000100000000;
  *(v17 + 208) = 1;
  *(v17 + 96) = 0;
  *(v17 + 210) = 0;
  *(v17 + 64) = 0;
  *(v17 + 72) = 0;
  v20 = v26;
  *(v17 + 144) = v27;
  *(v17 + 152) = v20;
  *(v17 + 176) = 0;
  *(v17 + 160) = MEMORY[0x1E69E7CC0];
  *(v17 + 168) = 0;
  LOBYTE(v34) = 6;
  v21 = sub_1AFDFE6D8();
  v23 = v22;
  LODWORD(v29) = 0;
  v24 = v21;
  (*(v12 + 8))(v10, v6);
  if (v23)
  {
    v25 = 0;
  }

  else
  {
    v25 = v24;
  }

  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v32);
  *a2 = v31;
  *(a2 + 8) = v13;
  *(a2 + 16) = v29;
  *(a2 + 24) = v30;
  *(a2 + 32) = v25;
  *(a2 + 40) = v17;
  return result;
}

unint64_t sub_1AF8D2E7C()
{
  result = qword_1EB640060;
  if (!qword_1EB640060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640060);
  }

  return result;
}

uint64_t sub_1AF8D2ED0(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v3;
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);

  return a2;
}

uint64_t sub_1AF8D2F4C(uint64_t a1)
{
  sub_1AF88B394();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AF8D2FA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1AF8D35BC(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AF8D3004(void *a1)
{
  sub_1AF8D3410(0, &qword_1EB640088, sub_1AF8D3368, &type metadata for MetalFunctionReflection.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v12 - v7;
  v9 = a1[3];
  sub_1AF441150(a1, v9);
  sub_1AF8D3368();
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AF6594C8();
    v15 = 0;
    sub_1AF8D3478(&unk_1EB6400A0);
    sub_1AFDFE768();
    v9 = v16;
    sub_1AF8D35BC(0, &qword_1EB640150, &type metadata for MetalFunctionReflection.Arg, MEMORY[0x1E69E62F8]);
    v15 = 1;
    v10 = sub_1AF8D34D8(&qword_1EB6400B0, sub_1AF8D33BC);
    sub_1AFDFE768();
    v15 = 2;
    v14 = v10;
    sub_1AFDFE768();
    v13 = v5;
    v15 = 3;
    sub_1AFDFE768();
    (*(v13 + 8))(v8, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

unint64_t sub_1AF8D3368()
{
  result = qword_1EB640090;
  if (!qword_1EB640090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640090);
  }

  return result;
}

unint64_t sub_1AF8D33BC()
{
  result = qword_1EB6400B8;
  if (!qword_1EB6400B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6400B8);
  }

  return result;
}

void sub_1AF8D3410(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1AF8D3478(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AF6594C8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF8D34D8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1AF8D35BC(255, &qword_1EB640150, &type metadata for MetalFunctionReflection.Arg, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF8D3568()
{
  result = qword_1EB6400D8;
  if (!qword_1EB6400D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6400D8);
  }

  return result;
}

void sub_1AF8D35BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AF8D360C(uint64_t a1)
{
  if (qword_1ED725448 != -1)
  {
    swift_once();
  }

  v45[0] = xmmword_1ED73B450;
  v45[1] = *&qword_1ED73B460;
  v46 = qword_1ED73B470;
  sub_1AF6B06C0(a1, v45, 0x200000000, &v7);
  if (v7)
  {
    v41 = v10;
    v42 = v11;
    v43 = v12;
    v39 = v8;
    v40 = v9;
    v44 = v13;
    v38 = v7;
    sub_1AFD06CAC(&v38);
    sub_1AF8D2FA8(&v7, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720]);
  }

  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v32 = qword_1ED73B840;
  v33 = 0;
  v34 = 2;
  v35 = 0;
  v36 = 2;
  v37 = 0;
  sub_1AF704D1C(1, v14);
  v30[0] = v14[0];
  v30[1] = v14[1];
  v31 = v15;
  sub_1AF6B06C0(a1, v30, 0x200000000, &v16);
  if (v16)
  {
    v28 = v21;
    v26 = v19;
    v27 = v20;
    v23 = v16;
    v29 = v22;
    v24 = v17;
    v25 = v18;
    if (*(&v21 + 1) >= 1 && v27)
    {
      v2 = (v26 + 40);
      v3 = 48 * v27;
      do
      {
        v4 = *v2;
        v2 += 6;
        v5 = *(v4 + 376);

        os_unfair_lock_lock(v5);
        os_unfair_lock_lock(*(v4 + 344));
        sub_1AF8BA8CC(v4, &v23);
        os_unfair_lock_unlock(*(v4 + 344));
        os_unfair_lock_unlock(*(v4 + 376));

        v3 -= 48;
      }

      while (v3);
    }

    sub_1AF8D2FA8(&v16, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720]);
  }

  return sub_1AF8D3898(v14);
}

uint64_t sub_1AF8D3898(uint64_t a1)
{
  sub_1AF8D3920(0, &qword_1EB6400E0, &type metadata for ShaderFileAsset, &off_1F25432B8, type metadata accessor for Query1);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AF8D3920(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t initializeWithCopy for MetalFunctionReflection.Arg(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithCopy for MetalFunctionReflection.Arg(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v3;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithTake for MetalFunctionReflection.Arg(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

unint64_t sub_1AF8D3AB0()
{
  result = qword_1EB6400E8;
  if (!qword_1EB6400E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6400E8);
  }

  return result;
}

unint64_t sub_1AF8D3B08()
{
  result = qword_1EB6400F0;
  if (!qword_1EB6400F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6400F0);
  }

  return result;
}

unint64_t sub_1AF8D3B60()
{
  result = qword_1EB6400F8;
  if (!qword_1EB6400F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6400F8);
  }

  return result;
}

unint64_t sub_1AF8D3BB8()
{
  result = qword_1EB640100;
  if (!qword_1EB640100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640100);
  }

  return result;
}

unint64_t sub_1AF8D3C10()
{
  result = qword_1EB640108;
  if (!qword_1EB640108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640108);
  }

  return result;
}

unint64_t sub_1AF8D3C68()
{
  result = qword_1EB640110;
  if (!qword_1EB640110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640110);
  }

  return result;
}

uint64_t sub_1AF8D3CC8@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = *v4;
  v11 = *v4 + 41;
  v12 = (*v4)[8];
  v13 = v10[9];
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C680;
  inited[4] = &type metadata for SkinnedMeshBinding;
  inited[5] = &off_1F25436D8;
  inited[6] = &type metadata for MeshModel;
  inited[7] = &off_1F2562480;
  inited[8] = &type metadata for WorldTransform;
  inited[9] = &off_1F2529AF8;
  if (v13 > 0xF)
  {
    v31 = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(inited);
    inited = v31;
  }

  v15 = v10[10];
  v16 = v10[11];
  sub_1AF8ADD38(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C680;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  *(v17 + 34) = a3;
  if (v16)
  {
    v31 = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = v31;
    v18 = v31[2];
  }

  else
  {
    v18 = 3;
  }

  v19 = *v5 + 41;
  v20 = (*v5)[12];
  v21 = (*v5)[13] >> 4;
  v22 = (*v5)[14];
  v23 = (*v5)[15] / 0x18u;
  v24 = *(v5 + 2);
  v25 = *(v5 + 12);
  v26 = v5[4];
  v27 = v5[2];
  v28 = *(v5 + 24);
  v29 = sub_1AF6B7F4C(inited + 4, inited[2], (v17 + 32), v18, (v19 + v20), v21, (v19 + v22), v23);

  *a4 = v29;
  *(a4 + 8) = v24;
  *(a4 + 12) = v25;
  *(a4 + 13) = v32;
  *(a4 + 15) = v33;
  *(a4 + 16) = v27;
  *(a4 + 24) = v28;
  *(a4 + 25) = v31;
  *(a4 + 28) = *(&v31 + 3);
  *(a4 + 32) = v26;
  return result;
}

uint64_t sub_1AF8D3EDC@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = *v4;
  v11 = *v4 + 41;
  v12 = (*v4)[8];
  v13 = v10[9];
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C680;
  inited[4] = &type metadata for WorldTransform;
  inited[5] = &off_1F2529AF8;
  inited[6] = &type metadata for LastFrameWorldTransform;
  inited[7] = &off_1F2529E30;
  inited[8] = &type metadata for SmoothMotion;
  inited[9] = &off_1F2569728;
  if (v13 > 0xF)
  {
    v31 = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(inited);
    inited = v31;
  }

  v15 = v10[10];
  v16 = v10[11];
  sub_1AF8ADD38(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C680;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  *(v17 + 34) = a3;
  if (v16)
  {
    v31 = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = v31;
    v18 = v31[2];
  }

  else
  {
    v18 = 3;
  }

  v19 = *v5 + 41;
  v20 = (*v5)[12];
  v21 = (*v5)[13] >> 4;
  v22 = (*v5)[14];
  v23 = (*v5)[15] / 0x18u;
  v24 = *(v5 + 2);
  v25 = *(v5 + 12);
  v26 = v5[4];
  v27 = v5[2];
  v28 = *(v5 + 24);
  v29 = sub_1AF6B7F4C(inited + 4, inited[2], (v17 + 32), v18, (v19 + v20), v21, (v19 + v22), v23);

  *a4 = v29;
  *(a4 + 8) = v24;
  *(a4 + 12) = v25;
  *(a4 + 13) = v32;
  *(a4 + 15) = v33;
  *(a4 + 16) = v27;
  *(a4 + 24) = v28;
  *(a4 + 25) = v31;
  *(a4 + 28) = *(&v31 + 3);
  *(a4 + 32) = v26;
  return result;
}

uint64_t sub_1AF8D40F0@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = *v4;
  v11 = *v4 + 41;
  v12 = (*v4)[8];
  v13 = v10[9];
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C680;
  inited[4] = &type metadata for ProjectionMatrix;
  inited[5] = &off_1F2511D20;
  inited[6] = &type metadata for PointOfView;
  inited[7] = &off_1F2511DD0;
  inited[8] = &type metadata for WorldTransform;
  inited[9] = &off_1F2529AF8;
  if (v13 > 0xF)
  {
    v31 = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(inited);
    inited = v31;
  }

  v15 = v10[10];
  v16 = v10[11];
  sub_1AF8ADD38(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C680;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  *(v17 + 34) = a3;
  if (v16)
  {
    v31 = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = v31;
    v18 = v31[2];
  }

  else
  {
    v18 = 3;
  }

  v19 = *v5 + 41;
  v20 = (*v5)[12];
  v21 = (*v5)[13] >> 4;
  v22 = (*v5)[14];
  v23 = (*v5)[15] / 0x18u;
  v24 = *(v5 + 2);
  v25 = *(v5 + 12);
  v26 = v5[4];
  v27 = v5[2];
  v28 = *(v5 + 24);
  v29 = sub_1AF6B7F4C(inited + 4, inited[2], (v17 + 32), v18, (v19 + v20), v21, (v19 + v22), v23);

  *a4 = v29;
  *(a4 + 8) = v24;
  *(a4 + 12) = v25;
  *(a4 + 13) = v32;
  *(a4 + 15) = v33;
  *(a4 + 16) = v27;
  *(a4 + 24) = v28;
  *(a4 + 25) = v31;
  *(a4 + 28) = *(&v31 + 3);
  *(a4 + 32) = v26;
  return result;
}

uint64_t sub_1AF8D4304@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = *v4;
  v11 = *v4 + 41;
  v12 = (*v4)[8];
  v13 = v10[9];
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C680;
  inited[4] = &type metadata for EmitterDescription;
  inited[5] = &off_1F2563548;
  inited[6] = &type metadata for EmitterRuntime;
  inited[7] = &off_1F25635C8;
  inited[8] = &type metadata for WorldAABB;
  inited[9] = &off_1F2510390;
  if (v13 > 0xF)
  {
    v31 = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(inited);
    inited = v31;
  }

  v15 = v10[10];
  v16 = v10[11];
  sub_1AF8ADD38(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C680;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  *(v17 + 34) = a3;
  if (v16)
  {
    v31 = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = v31;
    v18 = v31[2];
  }

  else
  {
    v18 = 3;
  }

  v19 = *v5 + 41;
  v20 = (*v5)[12];
  v21 = (*v5)[13] >> 4;
  v22 = (*v5)[14];
  v23 = (*v5)[15] / 0x18u;
  v24 = *(v5 + 2);
  v25 = *(v5 + 12);
  v26 = v5[4];
  v27 = v5[2];
  v28 = *(v5 + 24);
  v29 = sub_1AF6B7F4C(inited + 4, inited[2], (v17 + 32), v18, (v19 + v20), v21, (v19 + v22), v23);

  *a4 = v29;
  *(a4 + 8) = v24;
  *(a4 + 12) = v25;
  *(a4 + 13) = v32;
  *(a4 + 15) = v33;
  *(a4 + 16) = v27;
  *(a4 + 24) = v28;
  *(a4 + 25) = v31;
  *(a4 + 28) = *(&v31 + 3);
  *(a4 + 32) = v26;
  return result;
}

uint64_t sub_1AF8D4518@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = *v4;
  v11 = *v4 + 41;
  v12 = (*v4)[8];
  v13 = v10[9];
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C680;
  inited[4] = &type metadata for LocalAABB;
  inited[5] = &off_1F2510440;
  inited[6] = &type metadata for WorldTransform;
  inited[7] = &off_1F2529AF8;
  inited[8] = &type metadata for WorldAABB;
  inited[9] = &off_1F2510390;
  if (v13 > 0xF)
  {
    v31 = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(inited);
    inited = v31;
  }

  v15 = v10[10];
  v16 = v10[11];
  sub_1AF8ADD38(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C680;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  *(v17 + 34) = a3;
  if (v16)
  {
    v31 = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = v31;
    v18 = v31[2];
  }

  else
  {
    v18 = 3;
  }

  v19 = *v5 + 41;
  v20 = (*v5)[12];
  v21 = (*v5)[13] >> 4;
  v22 = (*v5)[14];
  v23 = (*v5)[15] / 0x18u;
  v24 = *(v5 + 2);
  v25 = *(v5 + 12);
  v26 = v5[4];
  v27 = v5[2];
  v28 = *(v5 + 24);
  v29 = sub_1AF6B7F4C(inited + 4, inited[2], (v17 + 32), v18, (v19 + v20), v21, (v19 + v22), v23);

  *a4 = v29;
  *(a4 + 8) = v24;
  *(a4 + 12) = v25;
  *(a4 + 13) = v32;
  *(a4 + 15) = v33;
  *(a4 + 16) = v27;
  *(a4 + 24) = v28;
  *(a4 + 25) = v31;
  *(a4 + 28) = *(&v31 + 3);
  *(a4 + 32) = v26;
  return result;
}

uint64_t sub_1AF8D472C@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = *v4;
  v11 = *v4 + 41;
  v12 = (*v4)[8];
  v13 = v10[9];
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C680;
  inited[4] = &type metadata for EmitterDescription;
  inited[5] = &off_1F2563548;
  inited[6] = &type metadata for EmitterRuntime;
  inited[7] = &off_1F25635C8;
  inited[8] = &type metadata for LocalAABB;
  inited[9] = &off_1F2510440;
  if (v13 > 0xF)
  {
    v31 = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(inited);
    inited = v31;
  }

  v15 = v10[10];
  v16 = v10[11];
  sub_1AF8ADD38(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C680;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  *(v17 + 34) = a3;
  if (v16)
  {
    v31 = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = v31;
    v18 = v31[2];
  }

  else
  {
    v18 = 3;
  }

  v19 = *v5 + 41;
  v20 = (*v5)[12];
  v21 = (*v5)[13] >> 4;
  v22 = (*v5)[14];
  v23 = (*v5)[15] / 0x18u;
  v24 = *(v5 + 2);
  v25 = *(v5 + 12);
  v26 = v5[4];
  v27 = v5[2];
  v28 = *(v5 + 24);
  v29 = sub_1AF6B7F4C(inited + 4, inited[2], (v17 + 32), v18, (v19 + v20), v21, (v19 + v22), v23);

  *a4 = v29;
  *(a4 + 8) = v24;
  *(a4 + 12) = v25;
  *(a4 + 13) = v32;
  *(a4 + 15) = v33;
  *(a4 + 16) = v27;
  *(a4 + 24) = v28;
  *(a4 + 25) = v31;
  *(a4 + 28) = *(&v31 + 3);
  *(a4 + 32) = v26;
  return result;
}

uint64_t sub_1AF8D49C4@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v8 = v6;
  v11 = a4(0);
  v12 = a5(0);
  v13 = *v8;
  v14 = *v8 + 41;
  v15 = *(*v8 + 16);
  v16 = *(*v8 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C680;
  inited[4] = v11;
  inited[5] = &off_1F25114F0;
  inited[6] = v12;
  inited[7] = &off_1F2511470;
  inited[8] = &type metadata for AnimationTimeSource;
  inited[9] = &off_1F2510D58;
  if (v16 > 0xF)
  {
    v36 = sub_1AFC0592C((v14 + v15), v16 >> 4);
    sub_1AF48FC80(inited);
    inited = v36;
  }

  v18 = *(v13 + 20);
  v19 = *(v13 + 22);
  sub_1AF8ADD38(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1AFE4C680;
  *(v20 + 32) = a1;
  *(v20 + 33) = a2;
  *(v20 + 34) = a3;
  if (v19)
  {
    v36 = sub_1AFC0587C((v14 + v18), v19);
    sub_1AF48FBC0(v20);
    v20 = v36;
    v21 = v36[2];
  }

  else
  {
    v21 = 3;
  }

  v22 = *v8 + 41;
  v23 = *(*v8 + 24);
  v24 = *(*v8 + 26) >> 4;
  v25 = *(*v8 + 28);
  v26 = *(*v8 + 30) / 0x18u;
  v27 = *(v8 + 2);
  v28 = *(v8 + 12);
  v29 = v8[4];
  v30 = v8[2];
  v31 = *(v8 + 24);
  v32 = sub_1AF6B7F4C(inited + 4, inited[2], (v20 + 32), v21, (v22 + v23), v24, (v22 + v25), v26);

  *a6 = v32;
  *(a6 + 8) = v27;
  *(a6 + 12) = v28;
  *(a6 + 13) = v37;
  *(a6 + 15) = v38;
  *(a6 + 16) = v30;
  *(a6 + 24) = v31;
  *(a6 + 25) = v36;
  *(a6 + 28) = *(&v36 + 3);
  *(a6 + 32) = v29;
  return result;
}

uint64_t sub_1AF8D4BEC@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  sub_1AF8D9180(0, qword_1ED72C208, type metadata accessor for BasicAnimation);
  v9 = v8;
  sub_1AF8D9180(0, qword_1ED7287E0, type metadata accessor for BasicAnimationRuntime);
  v11 = v10;
  v12 = *v5;
  v13 = *v5 + 41;
  v14 = *(*v5 + 16);
  v15 = *(*v5 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C680;
  inited[4] = v9;
  inited[5] = &off_1F25114F0;
  inited[6] = v11;
  inited[7] = &off_1F2511470;
  inited[8] = &type metadata for AnimationTimeSource;
  inited[9] = &off_1F2510D58;
  if (v15 > 0xF)
  {
    v35 = sub_1AFC0592C((v13 + v14), v15 >> 4);
    sub_1AF48FC80(inited);
    inited = v35;
  }

  v17 = *(v12 + 20);
  v18 = *(v12 + 22);
  sub_1AF8ADD38(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1AFE4C680;
  *(v19 + 32) = a1;
  *(v19 + 33) = a2;
  *(v19 + 34) = a3;
  if (v18)
  {
    v35 = sub_1AFC0587C((v13 + v17), v18);
    sub_1AF48FBC0(v19);
    v19 = v35;
    v20 = v35[2];
  }

  else
  {
    v20 = 3;
  }

  v21 = *v5 + 41;
  v22 = *(*v5 + 24);
  v23 = *(*v5 + 26) >> 4;
  v24 = *(*v5 + 28);
  v25 = *(*v5 + 30) / 0x18u;
  v26 = *(v5 + 2);
  v27 = *(v5 + 12);
  v28 = v5[4];
  v29 = v5[2];
  v30 = *(v5 + 24);
  v31 = sub_1AF6B7F4C(inited + 4, inited[2], (v19 + 32), v20, (v21 + v22), v23, (v21 + v24), v25);

  *a4 = v31;
  *(a4 + 8) = v26;
  *(a4 + 12) = v27;
  *(a4 + 13) = v36;
  *(a4 + 15) = v37;
  *(a4 + 16) = v29;
  *(a4 + 24) = v30;
  *(a4 + 25) = v35;
  *(a4 + 28) = *(&v35 + 3);
  *(a4 + 32) = v28;
  return result;
}

uint64_t sub_1AF8D4E40@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = *v4;
  v11 = *v4 + 41;
  v12 = (*v4)[8];
  v13 = v10[9];
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C680;
  inited[4] = &type metadata for ParticleSphereCollider;
  inited[5] = &off_1F2553370;
  inited[6] = &type metadata for WorldTransform;
  inited[7] = &off_1F2529AF8;
  inited[8] = &type metadata for LastFrameWorldTransform;
  inited[9] = &off_1F2529E30;
  if (v13 > 0xF)
  {
    v31 = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(inited);
    inited = v31;
  }

  v15 = v10[10];
  v16 = v10[11];
  sub_1AF8ADD38(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C680;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  *(v17 + 34) = a3;
  if (v16)
  {
    v31 = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = v31;
    v18 = v31[2];
  }

  else
  {
    v18 = 3;
  }

  v19 = *v5 + 41;
  v20 = (*v5)[12];
  v21 = (*v5)[13] >> 4;
  v22 = (*v5)[14];
  v23 = (*v5)[15] / 0x18u;
  v24 = *(v5 + 2);
  v25 = *(v5 + 12);
  v26 = v5[4];
  v27 = v5[2];
  v28 = *(v5 + 24);
  v29 = sub_1AF6B7F4C(inited + 4, inited[2], (v17 + 32), v18, (v19 + v20), v21, (v19 + v22), v23);

  *a4 = v29;
  *(a4 + 8) = v24;
  *(a4 + 12) = v25;
  *(a4 + 13) = v32;
  *(a4 + 15) = v33;
  *(a4 + 16) = v27;
  *(a4 + 24) = v28;
  *(a4 + 25) = v31;
  *(a4 + 28) = *(&v31 + 3);
  *(a4 + 32) = v26;
  return result;
}

uint64_t sub_1AF8D5054@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = *v4;
  v11 = *v4 + 41;
  v12 = (*v4)[8];
  v13 = v10[9];
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C680;
  inited[4] = &type metadata for ProjectionMatrix;
  inited[5] = &off_1F2511D20;
  inited[6] = &type metadata for PointOfCulling;
  inited[7] = &off_1F252B2B8;
  inited[8] = &type metadata for WorldTransform;
  inited[9] = &off_1F2529AF8;
  if (v13 > 0xF)
  {
    v31 = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(inited);
    inited = v31;
  }

  v15 = v10[10];
  v16 = v10[11];
  sub_1AF8ADD38(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C680;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  *(v17 + 34) = a3;
  if (v16)
  {
    v31 = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = v31;
    v18 = v31[2];
  }

  else
  {
    v18 = 3;
  }

  v19 = *v5 + 41;
  v20 = (*v5)[12];
  v21 = (*v5)[13] >> 4;
  v22 = (*v5)[14];
  v23 = (*v5)[15] / 0x18u;
  v24 = *(v5 + 2);
  v25 = *(v5 + 12);
  v26 = v5[4];
  v27 = v5[2];
  v28 = *(v5 + 24);
  v29 = sub_1AF6B7F4C(inited + 4, inited[2], (v17 + 32), v18, (v19 + v20), v21, (v19 + v22), v23);

  *a4 = v29;
  *(a4 + 8) = v24;
  *(a4 + 12) = v25;
  *(a4 + 13) = v32;
  *(a4 + 15) = v33;
  *(a4 + 16) = v27;
  *(a4 + 24) = v28;
  *(a4 + 25) = v31;
  *(a4 + 28) = *(&v31 + 3);
  *(a4 + 32) = v26;
  return result;
}

uint64_t sub_1AF8D5268@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = type metadata accessor for TriggerScript(0);
  sub_1AF8D91E0(0, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
  v9 = v8;
  sub_1AF8D91E0(0, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
  v11 = v10;
  v12 = *v5;
  v13 = *v5 + 41;
  v14 = *(*v5 + 16);
  v15 = *(*v5 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C680;
  inited[4] = v7;
  inited[5] = &off_1F255BB48;
  inited[6] = v9;
  inited[7] = &off_1F2558F10;
  inited[8] = v11;
  inited[9] = &off_1F250F288;
  if (v15 > 0xF)
  {
    v36 = sub_1AFC0592C((v13 + v14), v15 >> 4);
    sub_1AF48FC80(inited);
    inited = v36;
  }

  v17 = *(v12 + 20);
  v18 = *(v12 + 22);
  sub_1AF8ADD38(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1AFE4C680;
  *(v19 + 32) = a1;
  *(v19 + 33) = a2;
  *(v19 + 34) = a3;
  if (v18)
  {
    v36 = sub_1AFC0587C((v13 + v17), v18);
    sub_1AF48FBC0(v19);
    v19 = v36;
    v20 = v36[2];
  }

  else
  {
    v20 = 3;
  }

  v21 = *v5 + 41;
  v22 = *(*v5 + 24);
  v23 = *(*v5 + 26) >> 4;
  v24 = *(*v5 + 28);
  v25 = *(*v5 + 30) / 0x18u;
  v26 = *(v5 + 2);
  v27 = *(v5 + 12);
  v28 = v5[4];
  v29 = v5[2];
  v30 = *(v5 + 24);
  v31 = sub_1AF6B7F4C(inited + 4, inited[2], (v19 + 32), v20, (v21 + v22), v23, (v21 + v24), v25);

  *a4 = v31;
  *(a4 + 8) = v26;
  *(a4 + 12) = v27;
  *(a4 + 13) = v37;
  *(a4 + 15) = v38;
  *(a4 + 16) = v29;
  *(a4 + 24) = v30;
  *(a4 + 25) = v36;
  *(a4 + 28) = *(&v36 + 3);
  *(a4 + 32) = v28;
  return result;
}

uint64_t sub_1AF8D54F0@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  updated = type metadata accessor for ParticleUpdateScript(0);
  sub_1AF8D91E0(0, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
  v9 = v8;
  sub_1AF8D91E0(0, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
  v11 = v10;
  v12 = *v5;
  v13 = *v5 + 41;
  v14 = *(*v5 + 16);
  v15 = *(*v5 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C680;
  inited[4] = updated;
  inited[5] = &off_1F255BA18;
  inited[6] = v9;
  inited[7] = &off_1F2558F10;
  inited[8] = v11;
  inited[9] = &off_1F250F288;
  if (v15 > 0xF)
  {
    v36 = sub_1AFC0592C((v13 + v14), v15 >> 4);
    sub_1AF48FC80(inited);
    inited = v36;
  }

  v17 = *(v12 + 20);
  v18 = *(v12 + 22);
  sub_1AF8ADD38(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1AFE4C680;
  *(v19 + 32) = a1;
  *(v19 + 33) = a2;
  *(v19 + 34) = a3;
  if (v18)
  {
    v36 = sub_1AFC0587C((v13 + v17), v18);
    sub_1AF48FBC0(v19);
    v19 = v36;
    v20 = v36[2];
  }

  else
  {
    v20 = 3;
  }

  v21 = *v5 + 41;
  v22 = *(*v5 + 24);
  v23 = *(*v5 + 26) >> 4;
  v24 = *(*v5 + 28);
  v25 = *(*v5 + 30) / 0x18u;
  v26 = *(v5 + 2);
  v27 = *(v5 + 12);
  v28 = v5[4];
  v29 = v5[2];
  v30 = *(v5 + 24);
  v31 = sub_1AF6B7F4C(inited + 4, inited[2], (v19 + 32), v20, (v21 + v22), v23, (v21 + v24), v25);

  *a4 = v31;
  *(a4 + 8) = v26;
  *(a4 + 12) = v27;
  *(a4 + 13) = v37;
  *(a4 + 15) = v38;
  *(a4 + 16) = v29;
  *(a4 + 24) = v30;
  *(a4 + 25) = v36;
  *(a4 + 28) = *(&v36 + 3);
  *(a4 + 32) = v28;
  return result;
}

uint64_t sub_1AF8D5778@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  inited = type metadata accessor for ParticleInitScript(0);
  sub_1AF8D91E0(0, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
  v9 = v8;
  sub_1AF8D91E0(0, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
  v11 = v10;
  v12 = *v5;
  v13 = *v5 + 41;
  v14 = *(*v5 + 16);
  v15 = *(*v5 + 18);
  sub_1AF5C52A8();
  v16 = swift_initStackObject();
  *(v16 + 1) = xmmword_1AFE4C680;
  v16[4] = inited;
  v16[5] = &off_1F255B908;
  v16[6] = v9;
  v16[7] = &off_1F2558F10;
  v16[8] = v11;
  v16[9] = &off_1F250F288;
  if (v15 > 0xF)
  {
    v36 = sub_1AFC0592C((v13 + v14), v15 >> 4);
    sub_1AF48FC80(v16);
    v16 = v36;
  }

  v17 = *(v12 + 20);
  v18 = *(v12 + 22);
  sub_1AF8ADD38(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1AFE4C680;
  *(v19 + 32) = a1;
  *(v19 + 33) = a2;
  *(v19 + 34) = a3;
  if (v18)
  {
    v36 = sub_1AFC0587C((v13 + v17), v18);
    sub_1AF48FBC0(v19);
    v19 = v36;
    v20 = v36[2];
  }

  else
  {
    v20 = 3;
  }

  v21 = *v5 + 41;
  v22 = *(*v5 + 24);
  v23 = *(*v5 + 26) >> 4;
  v24 = *(*v5 + 28);
  v25 = *(*v5 + 30) / 0x18u;
  v26 = *(v5 + 2);
  v27 = *(v5 + 12);
  v28 = v5[4];
  v29 = v5[2];
  v30 = *(v5 + 24);
  v31 = sub_1AF6B7F4C(v16 + 4, v16[2], (v19 + 32), v20, (v21 + v22), v23, (v21 + v24), v25);

  *a4 = v31;
  *(a4 + 8) = v26;
  *(a4 + 12) = v27;
  *(a4 + 13) = v37;
  *(a4 + 15) = v38;
  *(a4 + 16) = v29;
  *(a4 + 24) = v30;
  *(a4 + 25) = v36;
  *(a4 + 28) = *(&v36 + 3);
  *(a4 + 32) = v28;
  return result;
}

uint64_t sub_1AF8D5A00@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = type metadata accessor for EmitterScript(0);
  sub_1AF8D91E0(0, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
  v9 = v8;
  sub_1AF8D91E0(0, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
  v11 = v10;
  v12 = *v5;
  v13 = *v5 + 41;
  v14 = *(*v5 + 16);
  v15 = *(*v5 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C680;
  inited[4] = v7;
  inited[5] = &off_1F255B668;
  inited[6] = v9;
  inited[7] = &off_1F2558F10;
  inited[8] = v11;
  inited[9] = &off_1F250F288;
  if (v15 > 0xF)
  {
    v36 = sub_1AFC0592C((v13 + v14), v15 >> 4);
    sub_1AF48FC80(inited);
    inited = v36;
  }

  v17 = *(v12 + 20);
  v18 = *(v12 + 22);
  sub_1AF8ADD38(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1AFE4C680;
  *(v19 + 32) = a1;
  *(v19 + 33) = a2;
  *(v19 + 34) = a3;
  if (v18)
  {
    v36 = sub_1AFC0587C((v13 + v17), v18);
    sub_1AF48FBC0(v19);
    v19 = v36;
    v20 = v36[2];
  }

  else
  {
    v20 = 3;
  }

  v21 = *v5 + 41;
  v22 = *(*v5 + 24);
  v23 = *(*v5 + 26) >> 4;
  v24 = *(*v5 + 28);
  v25 = *(*v5 + 30) / 0x18u;
  v26 = *(v5 + 2);
  v27 = *(v5 + 12);
  v28 = v5[4];
  v29 = v5[2];
  v30 = *(v5 + 24);
  v31 = sub_1AF6B7F4C(inited + 4, inited[2], (v19 + 32), v20, (v21 + v22), v23, (v21 + v24), v25);

  *a4 = v31;
  *(a4 + 8) = v26;
  *(a4 + 12) = v27;
  *(a4 + 13) = v37;
  *(a4 + 15) = v38;
  *(a4 + 16) = v29;
  *(a4 + 24) = v30;
  *(a4 + 25) = v36;
  *(a4 + 28) = *(&v36 + 3);
  *(a4 + 32) = v28;
  return result;
}

uint64_t sub_1AF8D5C88@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = type metadata accessor for ShaderScript(0);
  sub_1AF8D91E0(0, &unk_1ED72C4E0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptRuntime);
  v9 = v8;
  sub_1AF8D91E0(0, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
  v11 = v10;
  v12 = *v5;
  v13 = *v5 + 41;
  v14 = *(*v5 + 16);
  v15 = *(*v5 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C680;
  inited[4] = v7;
  inited[5] = &off_1F255B850;
  inited[6] = v9;
  inited[7] = &off_1F2558F10;
  inited[8] = v11;
  inited[9] = &off_1F250F288;
  if (v15 > 0xF)
  {
    v36 = sub_1AFC0592C((v13 + v14), v15 >> 4);
    sub_1AF48FC80(inited);
    inited = v36;
  }

  v17 = *(v12 + 20);
  v18 = *(v12 + 22);
  sub_1AF8ADD38(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1AFE4C680;
  *(v19 + 32) = a1;
  *(v19 + 33) = a2;
  *(v19 + 34) = a3;
  if (v18)
  {
    v36 = sub_1AFC0587C((v13 + v17), v18);
    sub_1AF48FBC0(v19);
    v19 = v36;
    v20 = v36[2];
  }

  else
  {
    v20 = 3;
  }

  v21 = *v5 + 41;
  v22 = *(*v5 + 24);
  v23 = *(*v5 + 26) >> 4;
  v24 = *(*v5 + 28);
  v25 = *(*v5 + 30) / 0x18u;
  v26 = *(v5 + 2);
  v27 = *(v5 + 12);
  v28 = v5[4];
  v29 = v5[2];
  v30 = *(v5 + 24);
  v31 = sub_1AF6B7F4C(inited + 4, inited[2], (v19 + 32), v20, (v21 + v22), v23, (v21 + v24), v25);

  *a4 = v31;
  *(a4 + 8) = v26;
  *(a4 + 12) = v27;
  *(a4 + 13) = v37;
  *(a4 + 15) = v38;
  *(a4 + 16) = v29;
  *(a4 + 24) = v30;
  *(a4 + 25) = v36;
  *(a4 + 28) = *(&v36 + 3);
  *(a4 + 32) = v28;
  return result;
}

uint64_t sub_1AF8D5F10@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = type metadata accessor for MetalFunctionScript(0);
  sub_1AF8D91E0(0, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
  v9 = v8;
  sub_1AF8D91E0(0, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
  v11 = v10;
  v12 = *v5;
  v13 = *v5 + 41;
  v14 = *(*v5 + 16);
  v15 = *(*v5 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C680;
  inited[4] = v7;
  inited[5] = &off_1F255B5B0;
  inited[6] = v9;
  inited[7] = &off_1F2558F10;
  inited[8] = v11;
  inited[9] = &off_1F250F288;
  if (v15 > 0xF)
  {
    v36 = sub_1AFC0592C((v13 + v14), v15 >> 4);
    sub_1AF48FC80(inited);
    inited = v36;
  }

  v17 = *(v12 + 20);
  v18 = *(v12 + 22);
  sub_1AF8ADD38(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1AFE4C680;
  *(v19 + 32) = a1;
  *(v19 + 33) = a2;
  *(v19 + 34) = a3;
  if (v18)
  {
    v36 = sub_1AFC0587C((v13 + v17), v18);
    sub_1AF48FBC0(v19);
    v19 = v36;
    v20 = v36[2];
  }

  else
  {
    v20 = 3;
  }

  v21 = *v5 + 41;
  v22 = *(*v5 + 24);
  v23 = *(*v5 + 26) >> 4;
  v24 = *(*v5 + 28);
  v25 = *(*v5 + 30) / 0x18u;
  v26 = *(v5 + 2);
  v27 = *(v5 + 12);
  v28 = v5[4];
  v29 = v5[2];
  v30 = *(v5 + 24);
  v31 = sub_1AF6B7F4C(inited + 4, inited[2], (v19 + 32), v20, (v21 + v22), v23, (v21 + v24), v25);

  *a4 = v31;
  *(a4 + 8) = v26;
  *(a4 + 12) = v27;
  *(a4 + 13) = v37;
  *(a4 + 15) = v38;
  *(a4 + 16) = v29;
  *(a4 + 24) = v30;
  *(a4 + 25) = v36;
  *(a4 + 28) = *(&v36 + 3);
  *(a4 + 32) = v28;
  return result;
}

uint64_t sub_1AF8D6198@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = type metadata accessor for SimpleScript(0);
  sub_1AF8D91E0(0, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
  v9 = v8;
  sub_1AF8D91E0(0, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
  v11 = v10;
  v12 = *v5;
  v13 = *v5 + 41;
  v14 = *(*v5 + 16);
  v15 = *(*v5 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C680;
  inited[4] = v7;
  inited[5] = &off_1F255B788;
  inited[6] = v9;
  inited[7] = &off_1F2558F10;
  inited[8] = v11;
  inited[9] = &off_1F250F288;
  if (v15 > 0xF)
  {
    v36 = sub_1AFC0592C((v13 + v14), v15 >> 4);
    sub_1AF48FC80(inited);
    inited = v36;
  }

  v17 = *(v12 + 20);
  v18 = *(v12 + 22);
  sub_1AF8ADD38(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1AFE4C680;
  *(v19 + 32) = a1;
  *(v19 + 33) = a2;
  *(v19 + 34) = a3;
  if (v18)
  {
    v36 = sub_1AFC0587C((v13 + v17), v18);
    sub_1AF48FBC0(v19);
    v19 = v36;
    v20 = v36[2];
  }

  else
  {
    v20 = 3;
  }

  v21 = *v5 + 41;
  v22 = *(*v5 + 24);
  v23 = *(*v5 + 26) >> 4;
  v24 = *(*v5 + 28);
  v25 = *(*v5 + 30) / 0x18u;
  v26 = *(v5 + 2);
  v27 = *(v5 + 12);
  v28 = v5[4];
  v29 = v5[2];
  v30 = *(v5 + 24);
  v31 = sub_1AF6B7F4C(inited + 4, inited[2], (v19 + 32), v20, (v21 + v22), v23, (v21 + v24), v25);

  *a4 = v31;
  *(a4 + 8) = v26;
  *(a4 + 12) = v27;
  *(a4 + 13) = v37;
  *(a4 + 15) = v38;
  *(a4 + 16) = v29;
  *(a4 + 24) = v30;
  *(a4 + 25) = v36;
  *(a4 + 28) = *(&v36 + 3);
  *(a4 + 32) = v28;
  return result;
}

uint64_t sub_1AF8D6420@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = type metadata accessor for GraphScript(0);
  sub_1AF8D91E0(0, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
  v9 = v8;
  sub_1AF8D91E0(0, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
  v11 = v10;
  v12 = *v5;
  v13 = *v5 + 41;
  v14 = *(*v5 + 16);
  v15 = *(*v5 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C680;
  inited[4] = v7;
  inited[5] = &off_1F255B490;
  inited[6] = v9;
  inited[7] = &off_1F2558F10;
  inited[8] = v11;
  inited[9] = &off_1F250F288;
  if (v15 > 0xF)
  {
    v36 = sub_1AFC0592C((v13 + v14), v15 >> 4);
    sub_1AF48FC80(inited);
    inited = v36;
  }

  v17 = *(v12 + 20);
  v18 = *(v12 + 22);
  sub_1AF8ADD38(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1AFE4C680;
  *(v19 + 32) = a1;
  *(v19 + 33) = a2;
  *(v19 + 34) = a3;
  if (v18)
  {
    v36 = sub_1AFC0587C((v13 + v17), v18);
    sub_1AF48FBC0(v19);
    v19 = v36;
    v20 = v36[2];
  }

  else
  {
    v20 = 3;
  }

  v21 = *v5 + 41;
  v22 = *(*v5 + 24);
  v23 = *(*v5 + 26) >> 4;
  v24 = *(*v5 + 28);
  v25 = *(*v5 + 30) / 0x18u;
  v26 = *(v5 + 2);
  v27 = *(v5 + 12);
  v28 = v5[4];
  v29 = v5[2];
  v30 = *(v5 + 24);
  v31 = sub_1AF6B7F4C(inited + 4, inited[2], (v19 + 32), v20, (v21 + v22), v23, (v21 + v24), v25);

  *a4 = v31;
  *(a4 + 8) = v26;
  *(a4 + 12) = v27;
  *(a4 + 13) = v37;
  *(a4 + 15) = v38;
  *(a4 + 16) = v29;
  *(a4 + 24) = v30;
  *(a4 + 25) = v36;
  *(a4 + 28) = *(&v36 + 3);
  *(a4 + 32) = v28;
  return result;
}

uint64_t sub_1AF8D66A8@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = *v4;
  v11 = *v4 + 41;
  v12 = (*v4)[8];
  v13 = v10[9];
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C680;
  inited[4] = &type metadata for DrawCallComponent;
  inited[5] = &off_1F25607D0;
  inited[6] = &type metadata for WorldAABB;
  inited[7] = &off_1F2510390;
  inited[8] = &type metadata for VFXDrawCallHandler;
  inited[9] = &off_1F253A0F0;
  if (v13 > 0xF)
  {
    v31 = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(inited);
    inited = v31;
  }

  v15 = v10[10];
  v16 = v10[11];
  sub_1AF8ADD38(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C680;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  *(v17 + 34) = a3;
  if (v16)
  {
    v31 = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = v31;
    v18 = v31[2];
  }

  else
  {
    v18 = 3;
  }

  v19 = *v5 + 41;
  v20 = (*v5)[12];
  v21 = (*v5)[13] >> 4;
  v22 = (*v5)[14];
  v23 = (*v5)[15] / 0x18u;
  v24 = *(v5 + 2);
  v25 = *(v5 + 12);
  v26 = v5[4];
  v27 = v5[2];
  v28 = *(v5 + 24);
  v29 = sub_1AF6B7F4C(inited + 4, inited[2], (v17 + 32), v18, (v19 + v20), v21, (v19 + v22), v23);

  *a4 = v29;
  *(a4 + 8) = v24;
  *(a4 + 12) = v25;
  *(a4 + 13) = v32;
  *(a4 + 15) = v33;
  *(a4 + 16) = v27;
  *(a4 + 24) = v28;
  *(a4 + 25) = v31;
  *(a4 + 28) = *(&v31 + 3);
  *(a4 + 32) = v26;
  return result;
}

uint64_t sub_1AF8D68BC@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = *v4;
  v11 = *v4 + 41;
  v12 = (*v4)[8];
  v13 = v10[9];
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C680;
  inited[4] = &type metadata for Velocity;
  inited[5] = &off_1F2530A78;
  inited[6] = &type metadata for Position;
  inited[7] = &off_1F252EDF0;
  inited[8] = &type metadata for ParticleTarget;
  inited[9] = &off_1F252DCA8;
  if (v13 > 0xF)
  {
    v31 = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(inited);
    inited = v31;
  }

  v15 = v10[10];
  v16 = v10[11];
  sub_1AF8ADD38(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C680;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  *(v17 + 34) = a3;
  if (v16)
  {
    v31 = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = v31;
    v18 = v31[2];
  }

  else
  {
    v18 = 3;
  }

  v19 = *v5 + 41;
  v20 = (*v5)[12];
  v21 = (*v5)[13] >> 4;
  v22 = (*v5)[14];
  v23 = (*v5)[15] / 0x18u;
  v24 = *(v5 + 2);
  v25 = *(v5 + 12);
  v26 = v5[4];
  v27 = v5[2];
  v28 = *(v5 + 24);
  v29 = sub_1AF6B7F4C(inited + 4, inited[2], (v17 + 32), v18, (v19 + v20), v21, (v19 + v22), v23);

  *a4 = v29;
  *(a4 + 8) = v24;
  *(a4 + 12) = v25;
  *(a4 + 13) = v32;
  *(a4 + 15) = v33;
  *(a4 + 16) = v27;
  *(a4 + 24) = v28;
  *(a4 + 25) = v31;
  *(a4 + 28) = *(&v31 + 3);
  *(a4 + 32) = v26;
  return result;
}

uint64_t sub_1AF8D6AD0@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = *v4;
  v11 = *v4 + 41;
  v12 = (*v4)[8];
  v13 = v10[9];
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C680;
  inited[4] = &type metadata for Position;
  inited[5] = &off_1F252EDF0;
  inited[6] = &type metadata for Scale1;
  inited[7] = &off_1F252F708;
  inited[8] = &type metadata for Velocity;
  inited[9] = &off_1F2530A78;
  if (v13 > 0xF)
  {
    v31 = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(inited);
    inited = v31;
  }

  v15 = v10[10];
  v16 = v10[11];
  sub_1AF8ADD38(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C680;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  *(v17 + 34) = a3;
  if (v16)
  {
    v31 = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = v31;
    v18 = v31[2];
  }

  else
  {
    v18 = 3;
  }

  v19 = *v5 + 41;
  v20 = (*v5)[12];
  v21 = (*v5)[13] >> 4;
  v22 = (*v5)[14];
  v23 = (*v5)[15] / 0x18u;
  v24 = *(v5 + 2);
  v25 = *(v5 + 12);
  v26 = v5[4];
  v27 = v5[2];
  v28 = *(v5 + 24);
  v29 = sub_1AF6B7F4C(inited + 4, inited[2], (v17 + 32), v18, (v19 + v20), v21, (v19 + v22), v23);

  *a4 = v29;
  *(a4 + 8) = v24;
  *(a4 + 12) = v25;
  *(a4 + 13) = v32;
  *(a4 + 15) = v33;
  *(a4 + 16) = v27;
  *(a4 + 24) = v28;
  *(a4 + 25) = v31;
  *(a4 + 28) = *(&v31 + 3);
  *(a4 + 32) = v26;
  return result;
}

uint64_t sub_1AF8D6CE4@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = *v4;
  v11 = *v4 + 41;
  v12 = (*v4)[8];
  v13 = v10[9];
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C680;
  inited[4] = &type metadata for CodeGenerationInitialized;
  inited[5] = &off_1F253BFF0;
  inited[6] = &type metadata for GraphEntityComponentPropertyReferences;
  inited[7] = &off_1F253B538;
  inited[8] = &type metadata for CodeGenerationComponent;
  inited[9] = &off_1F253BF70;
  if (v13 > 0xF)
  {
    v31 = sub_1AFC0592C((v11 + v12), v13 >> 4);
    sub_1AF48FC80(inited);
    inited = v31;
  }

  v15 = v10[10];
  v16 = v10[11];
  sub_1AF8ADD38(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C680;
  *(v17 + 32) = a1;
  *(v17 + 33) = a2;
  *(v17 + 34) = a3;
  if (v16)
  {
    v31 = sub_1AFC0587C((v11 + v15), v16);
    sub_1AF48FBC0(v17);
    v17 = v31;
    v18 = v31[2];
  }

  else
  {
    v18 = 3;
  }

  v19 = *v5 + 41;
  v20 = (*v5)[12];
  v21 = (*v5)[13] >> 4;
  v22 = (*v5)[14];
  v23 = (*v5)[15] / 0x18u;
  v24 = *(v5 + 2);
  v25 = *(v5 + 12);
  v26 = v5[4];
  v27 = v5[2];
  v28 = *(v5 + 24);
  v29 = sub_1AF6B7F4C(inited + 4, inited[2], (v17 + 32), v18, (v19 + v20), v21, (v19 + v22), v23);

  *a4 = v29;
  *(a4 + 8) = v24;
  *(a4 + 12) = v25;
  *(a4 + 13) = v32;
  *(a4 + 15) = v33;
  *(a4 + 16) = v27;
  *(a4 + 24) = v28;
  *(a4 + 25) = v31;
  *(a4 + 28) = *(&v31 + 3);
  *(a4 + 32) = v26;
  return result;
}

uint64_t sub_1AF8D6EF8()
{
  v1 = v0;
  v2 = v0[2];
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = 0;
    v52 = MEMORY[0x1E69E7CC0];

    v6 = sub_1AFC06F08(0, v3, 0);
    v8 = 0;
    v4 = v52;
    v45 = v2;
    v46.i64[0] = v3;
    v50.i64[0] = v2 + 32;
    v47 = v0;
    do
    {
      v9 = (v50.i64[0] + 16 * v8);
      v11 = *v9;
      v10 = v9[1];
      v51[0] = 47;
      v51[1] = 0xE100000000000000;
      MEMORY[0x1EEE9AC00](v6, v7);
      v44 = v51;

      sub_1AF5D90A8(sub_1AF771190, &v43, v11, v10);
      if (v12)
      {
        v13 = -1;
      }

      else
      {
        v48.i64[0] = v4;
        v49.i64[0] = v5;

        v14 = sub_1AFDFD1F8();
        v16 = v15;
        v18 = v17;
        v20 = v19;

        v21 = v1[2];
        v22 = *(v21 + 16);
        if (v22)
        {
          v13 = 0;
          v23 = v16 >> 16;
          v24 = (v21 + 40);
          v25 = v14 >> 16;
          while (1)
          {
            v26 = *(v24 - 1);
            v27 = (*v24 & 0x2000000000000000) != 0 ? HIBYTE(*v24) & 0xFLL : v26 & 0xFFFFFFFFFFFFLL;
            v28 = v26 == v18 && *v24 == v20;
            v29 = v28 && v25 == 0;
            if (v29 && v27 == v23)
            {
              break;
            }

            LOBYTE(v44) = 0;
            if (sub_1AFDFE9E8())
            {
              break;
            }

            ++v13;
            v24 += 2;
            if (v22 == v13)
            {
              v13 = -1;
              break;
            }
          }

          v1 = v47;
          v3 = v46.i64[0];
        }

        else
        {
          v13 = -1;
        }

        v5 = v49.i64[0];
        v4 = v48.i64[0];
      }

      v52 = v4;
      v32 = *(v4 + 16);
      v31 = *(v4 + 24);
      if (v32 >= v31 >> 1)
      {
        v6 = sub_1AFC06F08(v31 > 1, v32 + 1, 1);
        v4 = v52;
      }

      ++v8;
      *(v4 + 16) = v32 + 1;
      *(v4 + 8 * v32 + 32) = v13;
    }

    while (v8 != v3);
  }

  v1[5] = v4;

  v33 = v1[3];
  v34 = *(v33 + 16);
  v35 = MEMORY[0x1E69E7CC0];
  if (v34)
  {
    v51[0] = MEMORY[0x1E69E7CC0];

    sub_1AFC072F4(0, v34, 0);
    v36 = 0;
    v35 = v51[0];
    v37 = *(v51[0] + 16);
    v38 = v37 << 6;
    do
    {
      v39 = *(v33 + 48 + v36 - 16);
      v51[0] = v35;
      v40 = *(v35 + 24);
      v41 = v37 + 1;
      if (v37 >= v40 >> 1)
      {
        v49 = v39.columns[1];
        v50 = v39.columns[0];
        v48 = v39.columns[2];
        v46 = v39.columns[3];
        sub_1AFC072F4(v40 > 1, v37 + 1, 1);
        v39.columns[3] = v46;
        v39.columns[2] = v48;
        v39.columns[1] = v49;
        v39.columns[0] = v50;
        v35 = v51[0];
      }

      v53 = __invert_f4(v39);
      *(v35 + 16) = v41;
      *(v35 + v38 + v36 + 32) = v53;
      v36 += 64;
      v37 = v41;
      --v34;
    }

    while (v34);
  }

  v1[6] = v35;
}

uint64_t sub_1AF8D7240()
{

  return swift_deallocClassInstance();
}

void sub_1AF8D72BC(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  a1[1] = v1;
  a1[2] = v1;
  a1[3] = v1;
  a1[4] = v1;
}

void sub_1AF8D72D4(float32x4_t *a1, double a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a6 + 16);
  v11 = *(a5 + 16);
  v12 = *(a5 + 4 * v11 + 28);
  v13 = 0;
  v14 = v10 / v11;
  if (v12 > 0.0)
  {
    v15 = a2;
    *v13.i32 = fmodf(v15, v12);
  }

  v16 = 0;
  v17 = a5 + 32;
  while (1)
  {
    v18 = *(v17 + 4 * v16);
    if (*v13.i32 < v18)
    {
      break;
    }

    if (++v16 == v11)
    {
      if (v11 <= v10)
      {
        v19 = 0;
        v20 = a6 + 16 * v14 * (v11 - 1) + 32;
        do
        {
          v21 = *(v20 + 16 * v19++);
          *a1++ = v21;
          --v14;
        }

        while (v14);
      }

      return;
    }
  }

  if (v11 <= v10)
  {
    v22 = 0;
    v23 = (v16 - 1) & ~((v16 - 1) >> 63);
    *v13.i32 = fminf(fmaxf((*v13.i32 - *(v17 + 4 * v23)) / (v18 - *(v17 + 4 * v23)), 0.0), 1.0);
    v24 = v23 * v14;
    v25 = v16 * v14;
    v26 = vdupq_lane_s32(v13, 0);
    do
    {
      v27 = vmlaq_f32(*(a6 + 32 + 16 * v24 + 16 * v22), v26, vsubq_f32(*(a6 + 32 + 16 * v25 + 16 * v22), *(a6 + 32 + 16 * v24 + 16 * v22)));
      v27.i32[3] = a3.n128_i32[3];
      ++v22;
      *a1++ = v27;
      --v14;
    }

    while (v14);
  }
}

void sub_1AF8D7404(_OWORD *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 + 16);
  v10 = *(a4 + 16);
  v11 = *(a4 + 4 * v10 + 28);
  v12 = 0.0;
  v13 = v9 / v10;
  if (v11 > 0.0)
  {
    v14 = a2;
    v12 = fmodf(v14, v11);
  }

  v15 = 0;
  v16 = a4 + 32;
  while (1)
  {
    v17 = *(v16 + 4 * v15);
    if (v12 < v17)
    {
      break;
    }

    if (++v15 == v10)
    {
      if (v10 <= v9)
      {
        v18 = 0;
        v19 = a5 + 16 * v13 * (v10 - 1) + 32;
        do
        {
          v20 = *(v19 + 16 * v18++);
          *a1++ = v20;
          --v13;
        }

        while (v13);
      }

      return;
    }
  }

  if (v10 <= v9)
  {
    v21 = 0;
    v22 = (v15 - 1) & ~((v15 - 1) >> 63);
    v23 = fminf(fmaxf((v12 - *(v16 + 4 * v22)) / (v17 - *(v16 + 4 * v22)), 0.0), 1.0);
    v24 = v22 * v13;
    v25 = a5 + 32;
    v26 = a5 + 32 + 16 * v24;
    v27 = v25 + 16 * v15 * v13;
    do
    {
      v28 = v21 + 1;
      sub_1AF8D9154(*(v26 + 16 * v21), *(v27 + 16 * v21), v23);
      *a1++ = v29;
      v21 = v28;
      --v13;
    }

    while (v13);
  }
}

uint64_t sub_1AF8D7534()
{

  return swift_deallocClassInstance();
}

double sub_1AF8D7620@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0xFFFFFFFFLL;
  *(a1 + 16) = xmmword_1AFE20150;
  *(a1 + 32) = xmmword_1AFE20160;
  result = 0.0;
  *(a1 + 48) = xmmword_1AFE20180;
  *(a1 + 64) = xmmword_1AFE201A0;
  return result;
}

double sub_1AF8D7654@<D0>(void *a1@<X8>)
{
  *&result = 0xFFFFFFFFLL;
  *a1 = 0xFFFFFFFFLL;
  a1[1] = 0;
  return result;
}

uint64_t sub_1AF8D770C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *__return_ptr, uint64_t))
{
  v6 = swift_allocObject();
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v11 = qword_1ED73B840;
  v12 = 0;
  v13 = 2;
  v14 = 0;
  v15 = 2;
  v16 = 0;
  a4(v9, a3);
  v7 = v9[1];
  *(v6 + 16) = v9[0];
  *(v6 + 32) = v7;
  *(v6 + 48) = v10;
  return v6;
}

uint64_t sub_1AF8D77F0(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v4 = result;
    v5 = *(v2 + 32);
    v22[0] = *(v2 + 16);
    v22[1] = v5;
    v23 = *(v2 + 48);

    sub_1AF6B06C0(v4, v22, 0x200000000, &v8);
    if (v8)
    {
      v18 = v11;
      v19 = v12;
      v20 = v13;
      v21 = v14;
      v16 = v9;
      v17 = v10;
      v15 = v8;
      sub_1AF7180FC();

      v6 = sub_1AF6F4158();
      swift_unknownObjectRetain();
      v7 = sub_1AFDFCEC8();
      [v6 pushDebugGroup_];

      sub_1AF6F3BD8();
      sub_1AF8D8400(v6, a2, v4, &v15);
      swift_unknownObjectRelease();
      [v6 popDebugGroup];

      swift_unknownObjectRelease();
      sub_1AF5D1564(&v8);
    }

    else
    {
    }
  }

  return result;
}

uint64_t destroy for Skeleton()
{
}

void *initializeWithCopy for Skeleton(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  a1[4] = a2[4];

  return a1;
}

void *assignWithCopy for Skeleton(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  a1[4] = a2[4];

  return a1;
}

uint64_t assignWithTake for Skeleton(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for SkeletalAnimationPlayer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

void *assignWithTake for SkeletalAnimationPlayer(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

uint64_t sub_1AF8D7C8C()
{
  v0 = swift_allocObject();
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED73B840;
  v6 = 0;
  v7 = 2;
  v8 = 0;
  v9 = 2;
  v10 = 0;
  sub_1AF8D3CC8(1, 1, 1, v3);
  v1 = v3[1];
  *(v0 + 16) = v3[0];
  *(v0 + 32) = v1;
  *(v0 + 48) = v4;
  return v0;
}

void sub_1AF8D7D6C(uint64_t a1)
{
  v2 = *(v1 + 32);
  v126[0] = *(v1 + 16);
  v126[1] = v2;
  v127 = *(v1 + 48);
  sub_1AF6B06C0(a1, v126, 0x200000000, &v113);
  if (v113)
  {
    if (v120 >= 1)
    {
      v67 = v117;
      if (v117)
      {
        v3 = 0;
        v66 = v116;
        v72 = v119;
        v71 = *(v119 + 32);
        v70 = *(v118 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v121 = v113;
        v122 = v114;
        v123 = v115;
        do
        {
          v69 = v3;
          v4 = (v66 + 48 * v3);
          v5 = *v4;
          v6 = v4[1];
          v8 = *(v4 + 2);
          v7 = *(v4 + 3);
          v10 = *(v4 + 4);
          v9 = *(v4 + 5);
          if (v70)
          {
            v11 = *(v9 + 376);

            os_unfair_lock_lock(v11);
            os_unfair_lock_lock(*(v9 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v71);
          v12 = *(v72 + 64);
          v124[0] = *(v72 + 48);
          v124[1] = v12;
          v125 = *(v72 + 80);
          v13 = *(*(*(*(v9 + 40) + 16) + 32) + 16) + 1;
          *(v72 + 48) = ecs_stack_allocator_allocate(*(v72 + 32), 48 * v13, 8);
          *(v72 + 56) = v13;
          *(v72 + 72) = 0;
          *(v72 + 80) = 0;
          *(v72 + 64) = 0;
          v68 = v9;
          v14 = sub_1AF64B110(&type metadata for Skeleton, &off_1F25436A8, v8, v7, v10, v72);
          if (v8)
          {
            if (v10)
            {
              for (i = 0; i != v10; ++i)
              {
                v16 = (v14 + 40 * i);
                v17 = *v16;
                if (*v16)
                {
                  v18 = *(v16[2] + 16);
                  if (v18)
                  {

                    v19 = 32;
                    v20 = 80;
                    do
                    {
                      v21 = v16[2];
                      v22 = (v16[1] + v20);
                      v73 = v22[-3];
                      v97 = v22[-2];
                      v23 = *(*(v17 + 40) + v19);
                      v105 = v22[-1];
                      v109 = *v22;
                      v25 = xmmword_1AFE20150;
                      v24 = xmmword_1AFE20160;
                      v26 = xmmword_1AFE20180;
                      v27 = xmmword_1AFE201A0;
                      if (v23 != -1)
                      {
                        v28 = &v21[64 * v23];
                        v25 = *(v28 + 2);
                        v24 = *(v28 + 3);
                        v26 = *(v28 + 4);
                        v27 = *(v28 + 5);
                      }

                      v79 = v27;
                      v85 = v26;
                      v91 = v24;
                      v101 = v25;
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v16[2] = v21;
                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                      {
                        v21 = sub_1AFC0DABC(v21);
                        v16[2] = v21;
                      }

                      v30 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v101, v105.f32[0]), v91, *v105.f32, 1), v85, v105, 2), v79, v105, 3);
                      v31 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v101, v109.f32[0]), v91, *v109.f32, 1), v85, v109, 2), v79, v109, 3);
                      v32 = &v21[v20];
                      v106 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v101, v97.f32[0]), v91, *v97.f32, 1), v85, v97, 2), v79, v97, 3);
                      v110 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v101, v73.f32[0]), v91, *v73.f32, 1), v85, v73, 2), v79, v73, 3);
                      v32[-3] = v110;
                      v32[-2] = v106;
                      v98 = v31;
                      v102 = v30;
                      v32[-1] = v30;
                      *v32 = v31;
                      v33 = v16[4];
                      v34 = (v16[3] + v20);
                      v86 = *(v34 - 2);
                      v92 = *(v34 - 3);
                      v74 = *v34;
                      v80 = *(v34 - 1);
                      v35 = swift_isUniquelyReferenced_nonNull_native();
                      v16[4] = v33;
                      if ((v35 & 1) == 0)
                      {
                        v33 = sub_1AFC0DABC(v33);
                        v16[4] = v33;
                      }

                      v36 = &v33[v20];
                      *(v36 - 3) = v92;
                      *(v36 - 2) = v86;
                      *(v36 - 1) = v80;
                      *v36 = v74;
                      v37 = (*(v17 + 48) + v20);
                      v75 = v37[-3];
                      v81 = v37[-2];
                      v87 = v37[-1];
                      v93 = *v37;
                      v38 = v16[3];
                      v39 = swift_isUniquelyReferenced_nonNull_native();
                      v16[3] = v38;
                      if ((v39 & 1) == 0)
                      {
                        v38 = sub_1AFC0DABC(v38);
                        v16[3] = v38;
                      }

                      v40 = &v38[v20];
                      v40[-3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v110, v75.f32[0]), v106, *v75.f32, 1), v102, v75, 2), v98, v75, 3);
                      v40[-2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v110, v81.f32[0]), v106, *v81.f32, 1), v102, v81, 2), v98, v81, 3);
                      v40[-1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v110, v87.f32[0]), v106, *v87.f32, 1), v102, v87, 2), v98, v87, 3);
                      *v40 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v110, v93.f32[0]), v106, *v93.f32, 1), v102, v93, 2), v98, v93, 3);
                      v20 += 64;
                      v19 += 8;
                      --v18;
                    }

                    while (v18);
                  }
                }
              }
            }
          }

          else if (v5 != v6)
          {
            do
            {
              v41 = (v14 + 40 * v5);
              v42 = *v41;
              if (*v41)
              {
                v43 = *(v41[2] + 16);
                if (v43)
                {

                  v44 = 32;
                  v45 = 80;
                  do
                  {
                    v46 = v41[2];
                    v47 = (v41[1] + v45);
                    v76 = v47[-3];
                    v99 = v47[-2];
                    v48 = *(*(v42 + 40) + v44);
                    v107 = v47[-1];
                    v111 = *v47;
                    v50 = xmmword_1AFE20150;
                    v49 = xmmword_1AFE20160;
                    v51 = xmmword_1AFE20180;
                    v52 = xmmword_1AFE201A0;
                    if (v48 != -1)
                    {
                      v53 = &v46[64 * v48];
                      v50 = *(v53 + 2);
                      v49 = *(v53 + 3);
                      v51 = *(v53 + 4);
                      v52 = *(v53 + 5);
                    }

                    v82 = v52;
                    v88 = v51;
                    v94 = v49;
                    v103 = v50;
                    v54 = swift_isUniquelyReferenced_nonNull_native();
                    v41[2] = v46;
                    if ((v54 & 1) == 0)
                    {
                      v46 = sub_1AFC0DABC(v46);
                      v41[2] = v46;
                    }

                    v55 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v103, v107.f32[0]), v94, *v107.f32, 1), v88, v107, 2), v82, v107, 3);
                    v56 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v103, v111.f32[0]), v94, *v111.f32, 1), v88, v111, 2), v82, v111, 3);
                    v57 = &v46[v45];
                    v108 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v103, v99.f32[0]), v94, *v99.f32, 1), v88, v99, 2), v82, v99, 3);
                    v112 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v103, v76.f32[0]), v94, *v76.f32, 1), v88, v76, 2), v82, v76, 3);
                    v57[-3] = v112;
                    v57[-2] = v108;
                    v100 = v56;
                    v104 = v55;
                    v57[-1] = v55;
                    *v57 = v56;
                    v58 = v41[4];
                    v59 = (v41[3] + v45);
                    v89 = *(v59 - 2);
                    v95 = *(v59 - 3);
                    v77 = *v59;
                    v83 = *(v59 - 1);
                    v60 = swift_isUniquelyReferenced_nonNull_native();
                    v41[4] = v58;
                    if ((v60 & 1) == 0)
                    {
                      v58 = sub_1AFC0DABC(v58);
                      v41[4] = v58;
                    }

                    v61 = &v58[v45];
                    *(v61 - 3) = v95;
                    *(v61 - 2) = v89;
                    *(v61 - 1) = v83;
                    *v61 = v77;
                    v62 = (*(v42 + 48) + v45);
                    v78 = v62[-3];
                    v84 = v62[-2];
                    v90 = v62[-1];
                    v96 = *v62;
                    v63 = v41[3];
                    v64 = swift_isUniquelyReferenced_nonNull_native();
                    v41[3] = v63;
                    if ((v64 & 1) == 0)
                    {
                      v63 = sub_1AFC0DABC(v63);
                      v41[3] = v63;
                    }

                    v65 = &v63[v45];
                    v65[-3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v112, v78.f32[0]), v108, *v78.f32, 1), v104, v78, 2), v100, v78, 3);
                    v65[-2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v112, v84.f32[0]), v108, *v84.f32, 1), v104, v84, 2), v100, v84, 3);
                    v65[-1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v112, v90.f32[0]), v108, *v90.f32, 1), v104, v90, 2), v100, v90, 3);
                    *v65 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v112, v96.f32[0]), v108, *v96.f32, 1), v104, v96, 2), v100, v96, 3);
                    v45 += 64;
                    v44 += 8;
                    --v43;
                  }

                  while (v43);
                }
              }

              ++v5;
            }

            while (v5 != v6);
          }

          sub_1AF630994(v72, &v121, v124);
          sub_1AF62D29C(v68);
          ecs_stack_allocator_pop_snapshot(v71);
          if (v70)
          {
            os_unfair_lock_unlock(*(v68 + 344));
            os_unfair_lock_unlock(*(v68 + 376));
          }

          v3 = v69 + 1;
        }

        while (v69 + 1 != v67);
      }
    }

    sub_1AF5D1564(&v113);
  }
}

void sub_1AF8D8400(void *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v6 = *(a3 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
  sub_1AFDFF308();
  v7 = v6;

  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](3);
  v8 = aNeednormal_0[0];
  v9 = aNeednormal_0[1];
  v10 = byte_1F25009D0;
  v66 = xmmword_1F2500A00;
  v67 = unk_1F2500A10;
  v68 = byte_1F2500A20;
  v64 = xmmword_1F25009E0;
  v65 = unk_1F25009F0;
  if (byte_1F25009D0 == 1)
  {
    MEMORY[0x1B271ACB0](1);

    sub_1AFDFD038();
  }

  else
  {
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](v8);
  }

  sub_1AF87A0E4();
  sub_1AF4456D0(v8, v9, v10);
  v12 = aNeedtangent_0[0];
  v11 = aNeedtangent_0[1];
  v13 = byte_1F2500A40;
  v66 = xmmword_1F2500A70;
  v67 = unk_1F2500A80;
  v68 = byte_1F2500A90;
  v64 = xmmword_1F2500A50;
  v65 = unk_1F2500A60;
  if (byte_1F2500A40)
  {
    MEMORY[0x1B271ACB0](1);

    sub_1AFDFD038();
  }

  else
  {
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](v12);
  }

  sub_1AF87A0E4();
  sub_1AF4456D0(v12, v11, v13);
  v14 = aMaxbonecount[0];
  v15 = aMaxbonecount[1];
  v16 = byte_1F2500AB0;
  v66 = xmmword_1F2500AE0;
  v67 = unk_1F2500AF0;
  v68 = byte_1F2500B00;
  v64 = xmmword_1F2500AC0;
  v65 = unk_1F2500AD0;
  if (byte_1F2500AB0)
  {
    MEMORY[0x1B271ACB0](1);

    sub_1AFDFD038();
  }

  else
  {
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](v14);
  }

  sub_1AF87A0E4();
  sub_1AF4456D0(v14, v15, v16);
  MEMORY[0x1B271ACB0](0);
  *&v59 = 0x73656D5F6E696B73;
  *(&v59 + 1) = 0xE900000000000068;
  v60 = 0;
  v61 = 0;
  v62 = &unk_1F25009A0;
  v63 = sub_1AFDFF2E8();
  v17 = sub_1AF73BD84(&v59, 0, 0, v6);
  v19 = v18;

  [a1 setComputePipelineState_];
  v46 = *a4;
  v47 = a4[1];
  v48 = *(a4 + 4);
  v39 = *(a4 + 10);
  if (v39 >= 1)
  {
    v20 = *(a4 + 7);
    if (v20)
    {
      v21 = a1;
      v22 = *(a4 + 5);
      v23 = *(a4 + 9);
      v24 = *(v23 + 32);
      v36 = *(a4 + 8);
      v25 = *(v36 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v38 = v21;
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      v26 = (v22 + 24);
      v35 = v25;
      v37 = v17;
      do
      {
        v45 = v20;
        v28 = *(v26 - 6);
        v27 = *(v26 - 5);
        v29 = *(v26 - 4);
        v43 = *v26;
        v44 = *(v26 - 1);
        v30 = v26[2];
        v42 = v26[1];
        if (v25)
        {
          v31 = *(v30 + 376);

          os_unfair_lock_lock(v31);
          os_unfair_lock_lock(*(v30 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v24);
        v32 = *(v23 + 64);
        v52[0] = *(v23 + 48);
        v52[1] = v32;
        v53 = *(v23 + 80);
        v33 = *(v23 + 32);
        v34 = *(*(*(*(v30 + 40) + 16) + 32) + 16) + 1;

        *(v23 + 48) = ecs_stack_allocator_allocate(v33, 48 * v34, 8);
        *(v23 + 56) = v34;
        *(v23 + 72) = 0;
        *(v23 + 80) = 0;
        *(v23 + 64) = 0;

        LOBYTE(v49) = 1;
        v54[0] = v36;
        v54[1] = v30;
        v54[2] = v23;
        v54[3] = v29;
        v54[4] = (v27 - v28 + v29);
        v54[5] = v39;
        v54[6] = v28;
        v54[7] = v27;
        v54[8] = 0;
        v54[9] = 0;
        v55 = 1;
        v56 = v44;
        v57 = v43;
        v58 = v42;
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();
        sub_1AFD2674C(v54, a3, a2, v38, v37);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v50[0] = v46;
        v50[1] = v47;
        v51 = v48;
        sub_1AF630994(v23, v50, v52);
        sub_1AF62D29C(v30);
        ecs_stack_allocator_pop_snapshot(v24);
        v25 = v35;
        if (v35)
        {
          os_unfair_lock_unlock(*(v30 + 344));
          os_unfair_lock_unlock(*(v30 + 376));
        }

        v26 += 6;
        v20 = v45 - 1;
      }

      while (v45 != 1);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1AF8D89B4(uint64_t a1, uint64_t a2, uint64_t *a3, double a4)
{
  v8 = *(a1 + 8);
  v9 = *(v8 + 2);
  ecs_stack_allocator_push_snapshot(*(a2 + 32));
  v10 = ecs_stack_allocator_allocate(*(a2 + 32), 16 * v9, 16);
  v11 = ecs_stack_allocator_allocate(*(a2 + 32), 16 * v9, 16);
  v12 = ecs_stack_allocator_allocate(*(a2 + 32), 16 * v9, 16);
  sub_1AF8D72D4(v10, a4, v14, v13, a3[3], a3[4]);
  sub_1AF8D7404(v11, a4, v15, a3[5], a3[6]);
  sub_1AF8D72D4(v12, a4, v17, v16, a3[7], a3[8]);
  if (v9)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1AFC0DABC(v8);
    }

    v18 = v8 + 48;
    v19.i64[0] = 0x8000000080000000;
    v19.i64[1] = 0x8000000080000000;
    do
    {
      v20 = *v10++;
      v21 = v20;
      v22 = *v11++;
      v23 = v22;
      v24 = *v12++;
      v21.i32[3] = 1.0;
      v25 = vabsq_f32(v24);
      v25.i32[3] = 0;
      v26 = vmulq_f32(v23, v23);
      v27 = vmulq_laneq_f32(v23, v23, 3);
      v28 = vmuls_lane_f32(v23.f32[0], *v23.f32, 1);
      v29 = vmuls_lane_f32(v23.f32[1], v23, 2);
      v23.f32[0] = vmuls_lane_f32(v23.f32[0], v23, 2);
      v30 = vorrq_s8(vandq_s8(v24, v19), vabsq_f32(vmaxnmq_f32(v25, xmmword_1AFE20A30)));
      v31.i32[3] = 0;
      v32 = vaddq_f32(v30, v30);
      v31.f32[0] = (0.5 - v26.f32[1]) - v26.f32[2];
      v26.f32[0] = 0.5 - v26.f32[0];
      v31.f32[1] = v28 + v27.f32[2];
      v33.i32[3] = 0;
      v33.f32[0] = v28 - v27.f32[2];
      v31.f32[2] = v23.f32[0] - v27.f32[1];
      v33.f32[1] = v26.f32[0] - v26.f32[2];
      v33.f32[2] = v29 + v27.f32[0];
      v27.f32[0] = v29 - v27.f32[0];
      v34.f32[0] = v23.f32[0] + v27.f32[1];
      v34.i32[1] = v27.i32[0];
      v34.i64[1] = COERCE_UNSIGNED_INT(v26.f32[0] - v26.f32[1]);
      *(v18 - 1) = vmulq_n_f32(v31, v32.f32[0]);
      *v18 = vmulq_lane_f32(v33, *v32.f32, 1);
      *(v18 + 1) = vmulq_laneq_f32(v34, v32, 2);
      *(v18 + 2) = v21;
      v18 += 64;
      --v9;
    }

    while (v9);
    *(a1 + 8) = v8;
  }

  return ecs_stack_allocator_pop_snapshot(*(a2 + 32));
}

void sub_1AF8D8BA4(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 48);
  v3 = *(v1 + 32);
  v72[0] = *(v1 + 16);
  v72[1] = v3;
  v73 = *(v1 + 48);
  sub_1AF6B06C0(a1, v72, 0x200000000, v63);
  v53 = *v63;
  if (!*v63)
  {
    return;
  }

  v52 = *&v63[40];
  v4 = *(&v64 + 1);
  v5 = *(&v65 + 1);
  v67 = *&v63[8];
  v68 = *&v63[24];
  if (v66 <= 0 || !*(&v64 + 1))
  {
LABEL_50:
    sub_1AF5D1564(v63);
    return;
  }

  v58 = *(*(&v65 + 1) + 32);
  v57 = *(v65 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v62[3] = v64;
  v62[4] = v65;
  v62[5] = v66;
  v62[0] = *v63;
  v6 = (a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v62[1] = *&v63[16];
  v62[2] = *&v63[32];
  sub_1AF5DD298(v62, v60);
  v7 = 0;
  v51 = v4;
  while (1)
  {
    v54 = v7;
    v8 = (v52 + 48 * v7);
    v10 = *v8;
    v9 = v8[1];
    v11 = *(v8 + 2);
    v55 = *(v8 + 3);
    v13 = *(v8 + 4);
    v12 = *(v8 + 5);
    if (v57)
    {
      v14 = *(v12 + 376);

      os_unfair_lock_lock(v14);
      os_unfair_lock_lock(*(v12 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v58);
    v15 = *(v5 + 64);
    v60[0] = *(v5 + 48);
    v60[1] = v15;
    v61 = *(v5 + 80);
    v16 = *(*(*(*(v12 + 40) + 16) + 32) + 16) + 1;
    *(v5 + 48) = ecs_stack_allocator_allocate(*(v5 + 32), 48 * v16, 8);
    *(v5 + 56) = v16;
    *(v5 + 72) = 0;
    *(v5 + 80) = 0;
    *(v5 + 64) = 0;
    v17 = v55;
    v56 = v12;
    v18 = sub_1AF64B110(&type metadata for SkeletalAnimationPlayer, &off_1F25435F8, v11, v17, v13, v5);
    if (!v11)
    {
      break;
    }

    if (v13)
    {
      v19 = 0;
      while (1)
      {
        v20 = (v18 + 16 * v19);
        v21 = *(v20 + 1);
        if (v21)
        {
          break;
        }

LABEL_12:
        if (++v19 == v13)
        {
          goto LABEL_30;
        }
      }

      v22 = v20[1];
      v23 = *v20;
      v24 = v23 == -1 && v22 == 0;
      if (!v24 && (v23 & 0x80000000) == 0 && v6[1] > v23)
      {
        v25 = (*v6 + 12 * v23);
        if (v22 == -1 || v25[2] == v22)
        {
          v27 = *(v25 + 2);
          v28 = *(*(a1 + 144) + 8 * *v25 + 32);
          v29 = *(v28 + 48);
          v30 = (v29 + 32);
          v31 = *(v29 + 16) + 1;
          while (--v31)
          {
            v32 = v30 + 5;
            v33 = *v30;
            v30 += 5;
            if (v33 == &type metadata for Skeleton)
            {
              v34 = *(v32 - 2) + 40 * v27 + *(v28 + 128);

              sub_1AF8D89B4(v34, v5, v21, v2);

              goto LABEL_12;
            }
          }
        }
      }

      goto LABEL_52;
    }

LABEL_30:
    v69 = v53;
    v70 = v67;
    v71 = v68;
    sub_1AF630994(v5, &v69, v60);
    sub_1AF62D29C(v56);
    ecs_stack_allocator_pop_snapshot(v58);
    if (v57)
    {
      os_unfair_lock_unlock(*(v56 + 344));
      os_unfair_lock_unlock(*(v56 + 376));
    }

    v7 = v54 + 1;
    if (v54 + 1 == v51)
    {
      sub_1AF5D1564(v63);
      goto LABEL_50;
    }
  }

  if (v10 == v9)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v35 = (v18 + 16 * v10);
    v36 = *(v35 + 1);
    if (v36)
    {
      break;
    }

LABEL_32:
    if (++v10 == v9)
    {
      goto LABEL_30;
    }
  }

  v37 = v35[1];
  v38 = *v35;
  v39 = v38 == -1 && v37 == 0;
  if (!v39 && (v38 & 0x80000000) == 0 && v6[1] > v38)
  {
    v40 = (*v6 + 12 * v38);
    if (v37 == -1 || v40[2] == v37)
    {
      v42 = *(v40 + 2);
      v43 = *(*(a1 + 144) + 8 * *v40 + 32);
      v44 = *(v43 + 48);
      v45 = (v44 + 32);
      v46 = *(v44 + 16) + 1;
      while (--v46)
      {
        v47 = v45 + 5;
        v48 = *v45;
        v45 += 5;
        if (v48 == &type metadata for Skeleton)
        {
          v49 = *(v47 - 2) + 40 * v42 + *(v43 + 128);

          sub_1AF8D89B4(v49, v5, v36, v2);

          goto LABEL_32;
        }
      }
    }
  }

LABEL_52:

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v50 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v50);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x6E6F74656C656B53, 0xE800000000000000);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  sub_1AFDFE518();
  __break(1u);
}

void sub_1AF8D9154(float32x4_t a1, float32x4_t a2, float a3)
{
  v3 = vmulq_f32(a1, a2);
  v4 = vextq_s8(v3, v3, 8uLL);
  *v3.f32 = vadd_f32(*v3.f32, *v4.f32);
  v3.f32[0] = vaddv_f32(*v3.f32);
  v4.i64[0] = 0;
  sub_1AF8D924C(a1, vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v3, v4)), 0), vnegq_f32(a2), a2), a3);
}

void sub_1AF8D9180(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, _UNKNOWN **))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6448], &off_1F2532E98);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1AF8D91E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1AF8D924C(float32x4_t a1, float32x4_t a2, float a3)
{
  v5 = 1.0 - a3;
  v6 = vsubq_f32(a1, a2);
  v7 = vmulq_f32(v6, v6);
  v8 = vaddq_f32(a1, a2);
  v9 = vmulq_f32(v8, v8);
  v10 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL)))));
  v11 = v10 + v10;
  if ((v10 + v10) != 0.0)
  {
    sinf(v11);
  }

  if ((v5 * v11) != 0.0)
  {
    sinf(v5 * v11);
  }

  v12 = v11 * a3;
  if (v12 != 0.0)
  {
    sinf(v12);
  }
}

void *sub_1AF8D93C8(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v6 = HIDWORD(a1);
  if (!HIDWORD(a1) && a1 == -1 || sub_1AF67CACC(&type metadata for Tombstone, &off_1F2532360, a1))
  {
    return 0;
  }

  v10 = sub_1AF3C97D8(a1);
  if (v10 != 1)
  {
    *a2 = 0;
    v19 = v10;
    swift_unknownObjectRelease();
    return v19;
  }

  if (!sub_1AF65A128(a1) || sub_1AF67CACC(&type metadata for ColorRampComponent, &off_1F2541A28, a1) || sub_1AF67CACC(&type metadata for CurveComponent, &off_1F2541D98, a1))
  {
    return 0;
  }

  if (!sub_1AF67CACC(&type metadata for TextureClient, &off_1F2546D18, a1))
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    sub_1AFDFE218();
    v20 = sub_1AF65B990();
    v22 = v21;

    v37 = v20;
    v38 = v22;
    MEMORY[0x1B2718AE0](0xD00000000000001FLL, 0x80000001AFF39BC0);
    v23 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v23);

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    v24 = sub_1AF3C9078(a1);
    if (v25)
    {
      v26 = v25;
    }

    else
    {
      v27 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v27);

      MEMORY[0x1B2718AE0](93, 0xE100000000000000);
      v24 = 0x5B64656D616E6E55;
      v26 = 0xE800000000000000;
    }

    MEMORY[0x1B2718AE0](v24, v26);

    v28 = v37;
    v29 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v36 = v29;
      swift_once();
      v29 = v36;
    }

    v37 = 0;
    sub_1AF0D4F18(v29, &v37, v28, v38);

    if ((a1 & 0x80000000) == 0 && a1 < *(a3 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      v30 = (*(a3 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
      if (v6 == 0xFFFFFFFF || v30[2] == v6)
      {
        v31 = *(v30 + 2);
        v32 = *(*(a3 + 144) + 8 * *v30 + 32);
        if (*(v32 + 232) <= v31 && *(v32 + 240) > v31)
        {
          v34 = **(a3 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
          v35 = *(v32 + 344);

          os_unfair_lock_lock(v35);
          ecs_stack_allocator_push_snapshot(*(v34 + 32));

          sub_1AFCC71A8(v34, v32, v31, a3, a1, sub_1AF8E6714, 0);

          ecs_stack_allocator_pop_snapshot(*(v34 + 32));
          os_unfair_lock_unlock(*(v32 + 344));
        }
      }
    }
  }

  v11 = sub_1AF3C941C(a1);
  if (HIBYTE(v11) != 2 && (v11 & 0xFF00) == 0x100 && (a1 & 0x80000000) == 0 && a1 < *(a3 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v12 = (*(a3 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (v6 == 0xFFFFFFFF || v12[2] == v6)
    {
      v13 = *(v12 + 2);
      v14 = *(*(a3 + 144) + 8 * *v12 + 32);
      if (*(v14 + 232) <= v13 && *(v14 + 240) > v13)
      {
        v16 = **(a3 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
        v17 = *(v14 + 344);

        os_unfair_lock_lock(v17);
        ecs_stack_allocator_push_snapshot(*(v16 + 32));

        sub_1AF682880(v16, v14, v13, &type metadata for TextureLoadRequestGPU, &off_1F2544788, a3);

        ecs_stack_allocator_pop_snapshot(*(v16 + 32));
        os_unfair_lock_unlock(*(v14 + 344));
      }
    }
  }

  v18 = sub_1AF3C941C(a1);
  if (HIBYTE(v18) == 2)
  {
    return 0;
  }

  *a2 = 1;
  if (!a4)
  {
    return 0;
  }

  if (BYTE2(v18) <= 1u)
  {
    if (BYTE2(v18))
    {
      return sub_1AF70924C();
    }

    return sub_1AF7055E4();
  }

  if (BYTE2(v18) == 2)
  {
    return sub_1AF7055E4();
  }

  return sub_1AF7086E0();
}

uint64_t sub_1AF8D9920()
{
  if (v0[4])
  {
    v1 = v0[5];
    ObjectType = swift_getObjectType();
    return (*(v1 + 8))(v0[2], v0[3], ObjectType, v1);
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v6[0] = 0;
    v6[1] = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF2C630);
    MEMORY[0x1B2718AE0](v0[2], v0[3]);
    MEMORY[0x1B2718AE0](0xD000000000000016, 0x80000001AFF2C660);
    v4 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v5 = v4;
      swift_once();
      v4 = v5;
    }

    v6[0] = 0;
    sub_1AF0D4F18(v4, v6, 0, 0xE000000000000000);

    return sub_1AFDFC018();
  }
}

uint64_t sub_1AF8D9AD4(void (*a1)(char *, char *, uint64_t))
{
  v2 = v1;
  v4 = sub_1AFDFC128();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AFDFC028();
  sub_1AF8DA36C(v9, v10);
  v12 = v1[4];
  v11 = v2[5];
  if (v12 && (v13 = type metadata accessor for AbsolutePathStorage(0), (v14 = swift_dynamicCastClass()) != 0))
  {
    v15 = v14;
    v16 = *(v5 + 16);
    v16(v8, a1, v4);
    v42 = v16;
    v43 = a1;
    v17 = *(v15 + OBJC_IVAR____TtC3VFX19AbsolutePathStorage_pathResolver);
    v41 = *(v15 + OBJC_IVAR____TtC3VFX19AbsolutePathStorage_pathResolver + 8);
    v18 = objc_allocWithZone(v13);
    v16(&v18[OBJC_IVAR____TtC3VFX19AbsolutePathStorage_absoluteURL], v8, v4);
    v19 = &v18[OBJC_IVAR____TtC3VFX19AbsolutePathStorage_pathResolver];
    v20 = v41;
    *v19 = v17;
    *(v19 + 1) = v20;
    v44.receiver = v18;
    v44.super_class = v13;
    v21 = v12;
    v22 = v17;
    v23 = objc_msgSendSuper2(&v44, sel_init);
    v24 = *(v5 + 8);
    v24(v8, v4);

    v2[4] = v23;
    v2[5] = &off_1F2544718;
    v42(v8, &v23[OBJC_IVAR____TtC3VFX19AbsolutePathStorage_absoluteURL], v4);
    v25 = sub_1AFDFC0C8();
    v27 = v26;
    v24(v8, v4);

    *v2 = v25;
    v2[1] = v27;
    return (v24)(v43, v4);
  }

  else
  {
    v42 = v11;
    v29 = *(v5 + 16);
    v29(v8, a1, v4);
    v43 = v29;
    v30 = type metadata accessor for AbsolutePathStorage(0);
    v31 = objc_allocWithZone(v30);
    v29(&v31[OBJC_IVAR____TtC3VFX19AbsolutePathStorage_absoluteURL], v8, v4);
    v32 = &v31[OBJC_IVAR____TtC3VFX19AbsolutePathStorage_pathResolver];
    v33 = v42;
    *v32 = v12;
    *(v32 + 1) = v33;
    v45.receiver = v31;
    v45.super_class = v30;
    v34 = v12;
    v35 = objc_msgSendSuper2(&v45, sel_init);
    v36 = *(v5 + 8);
    v36(v8, v4);

    v2[4] = v35;
    v2[5] = &off_1F2544718;
    v43(v8, &v35[OBJC_IVAR____TtC3VFX19AbsolutePathStorage_absoluteURL], v4);
    v37 = sub_1AFDFC0C8();
    v39 = v38;
    v36(v8, v4);

    *v2 = v37;
    v2[1] = v39;
    return (v36)(a1, v4);
  }
}

uint64_t sub_1AF8D9E34(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(&v4);
  v2 = v4;
  v8 = v5;
  sub_1AF585778(&v8);
  v7 = v6;
  sub_1AF904B7C(&v7, sub_1AF8FE0E0);
  return v2;
}

void *sub_1AF8D9EB0(uint64_t a1)
{
  sub_1AF0D0F04(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v25 - v4;
  v6 = sub_1AFDFC128();
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v28 = &v25 - v13;
  v14 = *(a1 + 16);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v15 = (v12 + 48);
  v27 = v12;
  v16 = (v12 + 32);
  v17 = a1 + 40;
  v18 = MEMORY[0x1E69E7CC0];
  v26 = v10;
  do
  {

    sub_1AFDFC0F8();

    if ((*v15)(v5, 1, v6) == 1)
    {
      sub_1AF456B8C(v5);
    }

    else
    {
      v19 = *v16;
      v20 = v28;
      (*v16)(v28, v5, v6);
      v19(v10, v20, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1AF422744(0, v18[2] + 1, 1, v18);
      }

      v22 = v18[2];
      v21 = v18[3];
      if (v22 >= v21 >> 1)
      {
        v18 = sub_1AF422744(v21 > 1, v22 + 1, 1, v18);
      }

      v18[2] = v22 + 1;
      v23 = v18 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22;
      v10 = v26;
      v19(v23, v26, v6);
    }

    v17 += 16;
    --v14;
  }

  while (v14);
  return v18;
}

uint64_t sub_1AF8DA164(uint64_t a1)
{
  v27 = sub_1AFDFC128();
  v3 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  v7 = *(a1 + 16);
  if (v7)
  {
    v23 = v1;
    v28 = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v7, 0);
    v8 = v28;
    v10 = *(v3 + 16);
    v9 = v3 + 16;
    v11 = *(v9 + 64);
    v22[1] = a1;
    v12 = a1 + ((v11 + 32) & ~v11);
    v25 = *(v9 + 56);
    v26 = v10;
    v24 = (v9 - 8);
    do
    {
      v13 = v27;
      v14 = v9;
      v26(v6, v12, v27);
      v15 = sub_1AFDFBFF8();
      v17 = v16;
      (*v24)(v6, v13);
      v28 = v8;
      v19 = *(v8 + 16);
      v18 = *(v8 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1AFC05CE4(v18 > 1, v19 + 1, 1);
        v8 = v28;
      }

      *(v8 + 16) = v19 + 1;
      v20 = v8 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      v12 += v25;
      --v7;
      v9 = v14;
    }

    while (v7);

    v1 = v23;
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  *v1 = v8;
  return result;
}

uint64_t sub_1AF8DA36C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1AFDFC128();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v2[2] = a1;
  v2[3] = a2;
  v10 = v2[4];
  if (v10)
  {
    v11 = v2[5];
    ObjectType = swift_getObjectType();
    v22 = v5;
    v13 = *(v11 + 8);
    v14 = v10;

    v15 = a1;
    v16 = v2;
    v13(v15, a2, ObjectType, v11);

    v17 = sub_1AFDFC0C8();
    v19 = v18;
    (*(v6 + 8))(v9, v22);

    *v16 = v17;
    v16[1] = v19;
  }

  else
  {

    *v2 = a1;
    v2[1] = a2;
  }

  return result;
}

uint64_t sub_1AF8DA510(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    v7 = a7;
    v8 = result + 48 * a3;
    v9 = (a4 + (a6 << 6) + 32);
    do
    {
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      v12 = *(v8 + 24);
      v13 = *v9;
      v14 = *(v8 + 32);
      *(v9 - 4) = *v8;
      *(v9 - 3) = v10;
      *v9 = v14;
      *(v9 - 2) = v11;
      *(v9 - 1) = v12;
      v15 = v14;

      result = sub_1AF9043AC(v8);
      v9 += 8;
      v8 += 48;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1AF8DA5C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    v7 = a7;
    v8 = result + 48 * a3;
    v9 = (a4 + 56 * a6 + 32);
    do
    {
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      v12 = *(v8 + 24);
      v13 = *v9;
      v14 = *(v8 + 32);
      *(v9 - 4) = *v8;
      *(v9 - 3) = v10;
      *v9 = v14;
      *(v9 - 2) = v11;
      *(v9 - 1) = v12;
      v15 = v14;

      result = sub_1AF9043AC(v8);
      v9 += 7;
      v8 += 48;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1AF8DA67C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    v7 = a7;
    v8 = result + 48 * a3;
    v9 = (a4 + 56 * a6);
    do
    {
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      v12 = *(v8 + 24);
      v13 = v9[4];
      v14 = *(v8 + 32);
      *v9 = *v8;
      v9[1] = v10;
      *(v9 + 2) = v14;
      v9[2] = v11;
      v9[3] = v12;
      v15 = v14;

      sub_1AF8CBBC8();
      result = sub_1AF9043AC(v8);
      v9 += 7;
      v8 += 48;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1AF8DA734(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    v7 = a7;
    v8 = result + 48 * a3;
    v9 = (a4 + 56 * a6 + 32);
    do
    {
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      v12 = *(v8 + 24);
      v13 = *v9;
      v14 = *(v8 + 32);
      *(v9 - 4) = *v8;
      *(v9 - 3) = v10;
      *v9 = v14;
      *(v9 - 2) = v11;
      *(v9 - 1) = v12;
      v15 = v14;

      result = sub_1AF9043AC(v8);
      v8 += 48;
      v9 += 7;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1AF8DA7EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    v7 = a7;
    v8 = (result + 48 * a3);
    v9 = (a4 + 48 * a6 + 24);
    do
    {
      v10 = v8[1];
      v12 = v8[2];
      v11 = v8[3];
      v13 = v8[4];
      v16 = v8[5];
      v17 = *v8;
      v14 = v9[1];
      v15 = v13;

      *(v9 - 3) = v17;
      *(v9 - 2) = v10;
      *(v9 - 1) = v12;
      *v9 = v11;
      v9[1] = v13;
      v9[2] = v16;
      result = sub_1AF9043AC(v8);
      v8 += 6;
      v9 += 6;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1AF8DA8B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    v7 = a7;
    v8 = a4 + 48 * a6;
    v9 = result + 56 * a3 + 16;
    do
    {
      v10 = *(v9 - 8);
      v11 = *v9;
      v12 = *(v9 + 8);
      v13 = *(v9 + 16);
      *v8 = *(v9 - 16);
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 24) = v12;
      *(v8 + 32) = v13;
      v14 = v13;

      v8 += 48;
      v9 += 56;
      --v7;
    }

    while (v7);
  }

  return result;
}
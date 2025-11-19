unint64_t sub_1DEEDA954()
{
  result = qword_1ECDE4590;
  if (!qword_1ECDE4590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4590);
  }

  return result;
}

unint64_t sub_1DEEDA9AC()
{
  result = qword_1ECDE4598;
  if (!qword_1ECDE4598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4598);
  }

  return result;
}

unint64_t sub_1DEEDAA04()
{
  result = qword_1ECDE45A0;
  if (!qword_1ECDE45A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE45A0);
  }

  return result;
}

unint64_t sub_1DEEDAA5C()
{
  result = qword_1ECDE45A8;
  if (!qword_1ECDE45A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE45A8);
  }

  return result;
}

unint64_t sub_1DEEDAAB4()
{
  result = qword_1ECDE45B0;
  if (!qword_1ECDE45B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE45B0);
  }

  return result;
}

unint64_t sub_1DEEDAB0C()
{
  result = qword_1ECDE45B8;
  if (!qword_1ECDE45B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE45B8);
  }

  return result;
}

unint64_t sub_1DEEDAB64()
{
  result = qword_1ECDE45C0;
  if (!qword_1ECDE45C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE45C0);
  }

  return result;
}

unint64_t sub_1DEEDABBC()
{
  result = qword_1ECDE45C8;
  if (!qword_1ECDE45C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE45C8);
  }

  return result;
}

unint64_t sub_1DEEDAC14()
{
  result = qword_1ECDE45D0;
  if (!qword_1ECDE45D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE45D0);
  }

  return result;
}

unint64_t sub_1DEEDAC6C()
{
  result = qword_1ECDE45D8;
  if (!qword_1ECDE45D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE45D8);
  }

  return result;
}

unint64_t sub_1DEEDACC4()
{
  result = qword_1ECDE45E0;
  if (!qword_1ECDE45E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE45E0);
  }

  return result;
}

unint64_t sub_1DEEDAD1C()
{
  result = qword_1ECDE45E8;
  if (!qword_1ECDE45E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE45E8);
  }

  return result;
}

uint64_t sub_1DEEDAD70()
{
  v0 = sub_1DEF8E168();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DEEDADBC()
{
  v0 = sub_1DEF8E168();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DEEDAE08(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F636F746F7270 && a2 == 0xEF6E6F6973726556)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DEF8E4E8();

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

uint64_t sub_1DEEDAF54()
{
  v10 = sub_1DEF8DD08();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DEF8DCD8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1DEF8D6D8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9[1] = sub_1DEE1EA18(0, &qword_1ECDE2C00, 0x1E69E9610);
  sub_1DEF8D6C8();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1DEE2BB40(&qword_1ECDE2C10, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEE1B590(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEF8DE08();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8098], v10);
  result = sub_1DEF8DD38();
  qword_1ECDE30F0 = result;
  return result;
}

uint64_t sub_1DEEDB1B4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1DEF8D508();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x1EEE9AC00](v6);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    sub_1DEF8D4F8();

    v12 = sub_1DEF8D4D8();
    v13 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_1DEE12A5C(a2, a3, &v18);
      _os_log_impl(&dword_1DEE0F000, v12, v13, "Dropping transaction for SIGTERM: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1E12CCD70](v15, -1, -1);
      MEMORY[0x1E12CCD70](v14, -1, -1);
    }

    byte_1ECDE45F8 = 1;
    (*(v7 + 8))(v11, v6);
    v16 = *(a1 + 16);
    *(a1 + 16) = 0;
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1DEEDB380(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 16) = 0;
    v1 = result;
    swift_unknownObjectRelease();
    v2 = *(v1 + 24);
    swift_getObjectType();
    return sub_1DEF8DD88();
  }

  return result;
}

uint64_t sub_1DEEDB3C8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t sub_1DEEDB410()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 40);

  return v1;
}

uint64_t objectdestroy_16Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DEEDB4C0(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];

  v4(a1, v5);
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.handshakeDescriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 160);
  v3 = *(v1 + 168);
  v5 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = *(v1 + 32);
}

uint64_t sub_1DEEDB5A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v79 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4708, &qword_1DEF95DC0);
  v8 = *(*(v86 - 8) + 64);
  MEMORY[0x1EEE9AC00](v86);
  v10 = &v73 - v9;
  v11 = type metadata accessor for ZoneVersion();
  v90 = *(v11 - 8);
  v12 = *(v90 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v73 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v81 = &v73 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v84 = &v73 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D58, &qword_1DEF91670);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v26 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v24);
  v87 = (&v73 - v28);
  if (a1 == a2)
  {
    return 1;
  }

  v29 = *(a1 + 16);
  v85 = a2;
  if (v29 != *(a2 + 16))
  {
    return 0;
  }

  v78 = v15;
  v30 = 0;
  v80 = a1;
  v33 = *(a1 + 64);
  v32 = a1 + 64;
  v31 = v33;
  v34 = 1 << *(v32 - 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & v31;
  v74 = (v34 + 63) >> 6;
  v75 = v32;
  v82 = (v5 + 48);
  v83 = v4;
  v76 = (v5 + 32);
  v77 = (v5 + 8);
  v37 = v10;
  v38 = v81;
  v88 = v26;
  while (1)
  {
    v39 = v85;
    if (!v36)
    {
      break;
    }

    v89 = (v36 - 1) & v36;
    v40 = __clz(__rbit64(v36)) | (v30 << 6);
LABEL_18:
    v45 = (*(v80 + 48) + 16 * v40);
    v47 = *v45;
    v46 = v45[1];
    v48 = v84;
    sub_1DEEE0F6C(*(v80 + 56) + *(v90 + 72) * v40, v84, type metadata accessor for ZoneVersion);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D60, &qword_1DEF91678);
    v50 = *(v49 + 48);
    v51 = v88;
    *v88 = v47;
    *(v51 + 1) = v46;
    v26 = v51;
    sub_1DEEE0910(v48, &v51[v50], type metadata accessor for ZoneVersion);
    (*(*(v49 - 8) + 56))(v26, 0, 1, v49);

LABEL_19:
    v52 = v87;
    sub_1DEE1BA88(v26, v87, &qword_1ECDE3D58, &qword_1DEF91670);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D60, &qword_1DEF91678);
    v54 = 1;
    if ((*(*(v53 - 8) + 48))(v52, 1, v53) == 1)
    {
      return v54;
    }

    v55 = *(v53 + 48);
    v56 = *v52;
    v57 = v52[1];
    sub_1DEEE0910(v52 + v55, v38, type metadata accessor for ZoneVersion);
    v58 = sub_1DEE13224(v56, v57);
    v60 = v59;

    if ((v60 & 1) == 0)
    {
      v72 = v38;
      goto LABEL_30;
    }

    sub_1DEEE0F6C(*(v39 + 56) + *(v90 + 72) * v58, v18, type metadata accessor for ZoneVersion);
    v61 = *(v86 + 48);
    sub_1DEEE0F6C(v18, v37, type metadata accessor for ZoneVersion);
    sub_1DEEE0F6C(v38, v37 + v61, type metadata accessor for ZoneVersion);
    v62 = v83;
    v63 = *v82;
    if ((*v82)(v37, 1, v83) == 1)
    {
      sub_1DEEE0FD4(v18, type metadata accessor for ZoneVersion);
      sub_1DEEE0FD4(v38, type metadata accessor for ZoneVersion);
      if (v63(v37 + v61, 1, v62) != 1)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v64 = v37;
      v65 = v37;
      v66 = v78;
      sub_1DEEE0F6C(v64, v78, type metadata accessor for ZoneVersion);
      if (v63(v65 + v61, 1, v62) == 1)
      {
        sub_1DEEE0FD4(v18, type metadata accessor for ZoneVersion);
        sub_1DEEE0FD4(v81, type metadata accessor for ZoneVersion);
        (*v77)(v66, v62);
        v37 = v65;
LABEL_29:
        sub_1DEE171B4(v37, &qword_1ECDE4708, &qword_1DEF95DC0);
        return 0;
      }

      v67 = v65 + v61;
      v68 = v79;
      (*v76)(v79, v67, v62);
      v69 = sub_1DEF8D3A8();
      v70 = *v77;
      (*v77)(v68, v62);
      sub_1DEEE0FD4(v18, type metadata accessor for ZoneVersion);
      v38 = v81;
      sub_1DEEE0FD4(v81, type metadata accessor for ZoneVersion);
      v70(v66, v62);
      v37 = v65;
      if ((v69 & 1) == 0)
      {
        v72 = v65;
LABEL_30:
        sub_1DEEE0FD4(v72, type metadata accessor for ZoneVersion);
        return 0;
      }
    }

    result = sub_1DEEE0FD4(v37, type metadata accessor for ZoneVersion);
    v26 = v88;
    v36 = v89;
  }

  if (v74 <= v30 + 1)
  {
    v41 = v30 + 1;
  }

  else
  {
    v41 = v74;
  }

  v42 = v41 - 1;
  while (1)
  {
    v43 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v43 >= v74)
    {
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D60, &qword_1DEF91678);
      (*(*(v71 - 8) + 56))(v26, 1, 1, v71);
      v89 = 0;
      v30 = v42;
      goto LABEL_19;
    }

    v44 = *(v75 + 8 * v43);
    ++v30;
    if (v44)
    {
      v89 = (v44 - 1) & v44;
      v40 = __clz(__rbit64(v44)) | (v43 << 6);
      v30 = v43;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEEDBD80(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      a2 = a1;
    }

    else
    {
      a2 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (v2 < 0)
      {
        a1 = v2;
      }

      else
      {
        a1 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      return MEMORY[0x1EEE6A970](a1, a2);
    }

    v6 = a2;
    v5 = v2;
  }

  else
  {
    if (!v3)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) != *(a2 + 16))
      {
        return 0;
      }

      v8 = 0;
      v9 = a1 + 64;
      v10 = 1 << *(a1 + 32);
      v11 = -1;
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      v12 = v11 & *(a1 + 64);
      v13 = (v10 + 63) >> 6;
      v33 = a1;
      while (v12)
      {
        v19 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_37:
        v22 = v19 | (v8 << 6);
        v23 = *(*(a1 + 48) + 8 * v22);
        v24 = *(*(a1 + 56) + 8 * v22);

        v25 = sub_1DEEAF20C(v23);
        v27 = v26;

        if ((v27 & 1) == 0 || ((v28 = *(*(v2 + 56) + 8 * v25), v29 = v28[2], v30 = v24[2], v30[2] == v29[2]) ? (v31 = v30[3] == v29[3]) : (v31 = 0), !v31 && (sub_1DEF8E4E8() & 1) == 0 || (v30[4] == v29[4] ? (v32 = v30[5] == v29[5]) : (v32 = 0), !v32 && (sub_1DEF8E4E8() & 1) == 0)))
        {

          return 0;
        }

        v15 = v28[3];
        v14 = v28[4];
        v16 = v24[3];
        v17 = v24[4];

        v18 = v15 == v16 && v14 == v17;
        a1 = v33;
        if (!v18)
        {
          return 0;
        }
      }

      v20 = v8;
      while (1)
      {
        v8 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v8 >= v13)
        {
          return 1;
        }

        v21 = *(v9 + 8 * v8);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v12 = (v21 - 1) & v21;
          goto LABEL_37;
        }
      }

      __break(1u);
      return MEMORY[0x1EEE6A970](a1, a2);
    }

    v4 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v4 = a2;
    }

    v5 = a1;
    v6 = v4;
  }

  return sub_1DEEDF978(v6, v5);
}

uint64_t sub_1DEEDBFD4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  v36 = v7;
  v37 = result;
  while (v6)
  {
    v10 = __clz(__rbit64(v6));
    v40 = (v6 - 1) & v6;
LABEL_18:
    v13 = v10 | (v2 << 6);
    v14 = (*(result + 48) + 32 * v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = v14[2];
    v18 = v14[3];
    v19 = (*(result + 56) + 48 * v13);
    v21 = *v19;
    v20 = v19[1];
    v23 = v19[2];
    v22 = v19[3];
    v38 = v19[4];
    v39 = v19[5];
    v41 = v15 == 0;

    if (!v15)
    {
      return 1;
    }

    v24 = sub_1DEEAF16C(v16, v15, v17, v18);
    v26 = v25;

    if ((v26 & 1) == 0 || ((v27 = (*(a2 + 56) + 48 * v24), v28 = v27[2], v29 = v27[3], v31 = v27[4], v30 = v27[5], *v27 == v21) ? (v32 = v20 == v27[1]) : (v32 = 0), !v32 && (sub_1DEF8E4E8() & 1) == 0))
    {

      return 0;
    }

    if (v28 == v23 && v22 == v29)
    {

      v8 = v31 == v38 && v30 == v39;
      v7 = v36;
      result = v37;
      v6 = v40;
      v9 = v41;
      if (!v8)
      {
        return v9;
      }
    }

    else
    {
      v34 = sub_1DEF8E4E8();

      v9 = v41;
      if ((v34 & 1) == 0)
      {
        return v9;
      }

      v35 = v31 == v38 && v30 == v39;
      v7 = v36;
      result = v37;
      v6 = v40;
      if (!v35)
      {
        return v9;
      }
    }
  }

  v11 = v2;
  while (1)
  {
    v2 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v12 = *(v3 + 8 * v2);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v40 = (v12 - 1) & v12;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

void sub_1DEEDC240(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PairingRelationship();
  v86 = *(v4 - 8);
  v5 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v69[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v69[-v9];
  MEMORY[0x1EEE9AC00](v11);
  v79 = &v69[-v12];
  v87 = sub_1DEF8D3F8();
  v80 = *(v87 - 8);
  v13 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v15 = &v69[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v69[-v17];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C98, &unk_1DEF95610);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v69[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24.n128_f64[0] = MEMORY[0x1EEE9AC00](v22);
  v25 = &v69[-v23];
  if (a1 == a2 || *(a1 + 16) != *(a2 + 16))
  {
    return;
  }

  v26 = 0;
  v76 = a1;
  v29 = *(a1 + 64);
  v28 = a1 + 64;
  v27 = v29;
  v30 = 1 << *(v28 - 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v27;
  v71 = (v30 + 63) >> 6;
  v72 = v28;
  v73 = v80 + 16;
  v74 = v21;
  v84 = v4;
  v85 = (v80 + 32);
  v77 = (v80 + 8);
  v75 = v15;
  v82 = &v69[-v23];
  v83 = a2;
  while (v32)
  {
    v33 = v10;
    v34 = v7;
    v81 = (v32 - 1) & v32;
    v35 = __clz(__rbit64(v32)) | (v26 << 6);
LABEL_16:
    v40 = v76;
    v41 = v80;
    (*(v80 + 16))(v78, *(v76 + 48) + *(v80 + 72) * v35, v87, v24);
    v42 = v79;
    sub_1DEEE0F6C(*(v40 + 56) + *(v86 + 72) * v35, v79, type metadata accessor for PairingRelationship);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
    v44 = *(v43 + 48);
    v21 = v74;
    (*(v41 + 32))();
    sub_1DEEE0910(v42, &v21[v44], type metadata accessor for PairingRelationship);
    (*(*(v43 - 8) + 56))(v21, 0, 1, v43);
    v7 = v34;
    v10 = v33;
    v15 = v75;
    v25 = v82;
    a2 = v83;
LABEL_17:
    sub_1DEE1BA88(v21, v25, &qword_1ECDE3C98, &unk_1DEF95610);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
    if ((*(*(v45 - 8) + 48))(v25, 1, v45) == 1)
    {
      return;
    }

    v46 = *(v45 + 48);
    v47 = v87;
    (*v85)(v15, v25, v87);
    sub_1DEEE0910(&v25[v46], v10, type metadata accessor for PairingRelationship);
    v48 = sub_1DEEAF350(v15);
    v50 = v49;
    (*v77)(v15, v47);
    if ((v50 & 1) == 0)
    {
      goto LABEL_54;
    }

    sub_1DEEE0F6C(*(a2 + 56) + *(v86 + 72) * v48, v7, type metadata accessor for PairingRelationship);
    v51 = sub_1DEF8D3A8();
    v52 = v84;
    if ((v51 & 1) == 0)
    {
      goto LABEL_53;
    }

    if (!_s16ReplicatorEngine16DeviceDescriptorV2eeoiySbAC_ACtFZ_0(&v7[v84[5]], &v10[v84[5]]))
    {
      goto LABEL_53;
    }

    v53 = v52[6];
    if ((sub_1DEF8D338() & 1) == 0)
    {
      goto LABEL_53;
    }

    v54 = v52[7];
    if ((sub_1DEF8D338() & 1) == 0)
    {
      goto LABEL_53;
    }

    v55 = v52[8];
    v57 = *&v7[v55];
    v56 = *&v7[v55 + 8];
    v58 = &v10[v55];
    v59 = *v58;
    v60 = *(v58 + 1);
    if (v56 > 1)
    {
      if (v56 == 2)
      {
        if (v60 != 2)
        {
          sub_1DEE4F8C0(*v58, *(v58 + 1));
          v56 = 2;
          goto LABEL_52;
        }

        sub_1DEE4F8D4(v57, 2uLL);
        v61 = v59;
        v62 = 2;
        goto LABEL_41;
      }

      if (v56 == 3)
      {
        if (v60 != 3)
        {
          sub_1DEE4F8C0(*v58, *(v58 + 1));
          v56 = 3;
LABEL_52:
          sub_1DEE4F8D4(v57, v56);
          sub_1DEE4F8D4(v59, v60);
LABEL_53:
          sub_1DEEE0FD4(v7, type metadata accessor for PairingRelationship);
LABEL_54:
          sub_1DEEE0FD4(v10, type metadata accessor for PairingRelationship);
          return;
        }

        sub_1DEE4F8D4(v57, 3uLL);
        v61 = v59;
        v62 = 3;
        goto LABEL_41;
      }
    }

    else
    {
      if (!v56)
      {
        if (v60)
        {
          sub_1DEE4F8C0(*v58, *(v58 + 1));
          v56 = 0;
          goto LABEL_52;
        }

        sub_1DEE4F8D4(v57, 0);
        v61 = v59;
        v62 = 0;
        goto LABEL_41;
      }

      if (v56 == 1)
      {
        if (v60 != 1)
        {
          sub_1DEE4F8C0(*v58, *(v58 + 1));
          v56 = 1;
          goto LABEL_52;
        }

        sub_1DEE4F8D4(v57, 1uLL);
        v61 = v59;
        v62 = 1;
        goto LABEL_41;
      }
    }

    if (v60 < 4)
    {
      sub_1DEE4F8C0(*v58, *(v58 + 1));
      sub_1DEE4F8C0(v57, v56);
      goto LABEL_52;
    }

    if (v57 == v59 && v56 == v60)
    {
      sub_1DEE4F8C0(v57, v56);
      sub_1DEE4F8C0(v57, v56);
      sub_1DEE4F8D4(v57, v56);
      v61 = v57;
      v62 = v56;
LABEL_41:
      sub_1DEE4F8D4(v61, v62);
      a2 = v83;
      v64 = v84;
      goto LABEL_42;
    }

    v67 = *v58;
    v68 = *(v58 + 1);
    v70 = sub_1DEF8E4E8();
    sub_1DEE4F8C0(v59, v60);
    sub_1DEE4F8C0(v57, v56);
    sub_1DEE4F8D4(v57, v56);
    sub_1DEE4F8D4(v59, v60);
    a2 = v83;
    v64 = v84;
    if ((v70 & 1) == 0)
    {
      goto LABEL_53;
    }

LABEL_42:
    v65 = v64[9];
    v66 = sub_1DEF8D338();
    sub_1DEEE0FD4(v7, type metadata accessor for PairingRelationship);
    sub_1DEEE0FD4(v10, type metadata accessor for PairingRelationship);
    v32 = v81;
    v25 = v82;
    if ((v66 & 1) == 0)
    {
      return;
    }
  }

  if (v71 <= v26 + 1)
  {
    v36 = v26 + 1;
  }

  else
  {
    v36 = v71;
  }

  v37 = v36 - 1;
  while (1)
  {
    v38 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v38 >= v71)
    {
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
      (*(*(v63 - 8) + 56))(v21, 1, 1, v63);
      v81 = 0;
      v26 = v37;
      goto LABEL_17;
    }

    v39 = *(v72 + 8 * v38);
    ++v26;
    if (v39)
    {
      v33 = v10;
      v34 = v7;
      v81 = (v39 - 1) & v39;
      v35 = __clz(__rbit64(v39)) | (v38 << 6);
      v26 = v38;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

__n128 ZoneVersionAdvertisement.DeviceDescriptor.protocolVersion.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[2];
  *a1 = result;
  return result;
}

__n128 ZoneVersionAdvertisement.DeviceDescriptor.protocolVersion.setter(__n128 *a1)
{
  result = *a1;
  v1[2] = *a1;
  return result;
}

__n128 ZoneVersionAdvertisement.DeviceDescriptor.screenDescriptor.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 89);
  result = *(v1 + 56);
  v5 = *(v1 + 72);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 33) = v3;
  return result;
}

__n128 ZoneVersionAdvertisement.DeviceDescriptor.screenDescriptor.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 33);
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = v5;
  *(v1 + 88) = v2;
  *(v1 + 89) = v3;
  return result;
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.zones.setter(uint64_t a1)
{
  v3 = *(v1 + 96);

  *(v1 + 96) = a1;
  return result;
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.messageTypes.setter(uint64_t a1)
{
  v3 = *(v1 + 104);

  *(v1 + 104) = a1;
  return result;
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.idsIdentityBlob.getter()
{
  v1 = *(v0 + 112);
  sub_1DEEA8818(v1, *(v0 + 120));
  return v1;
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.idsIdentityBlob.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1DEE2416C(*(v2 + 112), *(v2 + 120));
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.marketingName.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.marketingName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 136);

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.productType.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.productType.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 152);

  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return result;
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.personaID.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return v1;
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.personaID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 168);

  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return result;
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.serialNumber.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(0) + 60);

  return sub_1DEE205E0(v3, a1);
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.serialNumber.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(0) + 60);

  return sub_1DEE1E70C(a1, v3);
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.description.getter()
{
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_1DEF8DF28();
  v2 = *v0;
  v1 = v0[1];

  v21 = v2;
  v22 = v1;
  MEMORY[0x1E12CB180](8250, 0xE200000000000000);
  MEMORY[0x1E12CB180](v0[2], v0[3]);
  MEMORY[0x1E12CB180](10272, 0xE200000000000000);
  v3 = 30324;
  v4 = 0xE300000000000000;
  v5 = *(v0 + 48);
  v6 = 0xE500000000000000;
  if (v5 == 4)
  {
    v3 = 0x6863746177;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v5 == 3)
  {
    v3 = 6578544;
  }

  else
  {
    v4 = v6;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6E776F6E6B6E75;
  v9 = 0xE300000000000000;
  v10 = 6513005;
  if (v5 != 1)
  {
    v10 = 0x656E6F6870;
    v9 = 0xE500000000000000;
  }

  if (*(v0 + 48))
  {
    v8 = v10;
    v7 = v9;
  }

  if (*(v0 + 48) <= 2u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v3;
  }

  if (*(v0 + 48) <= 2u)
  {
    v12 = v7;
  }

  else
  {
    v12 = v4;
  }

  MEMORY[0x1E12CB180](v11, v12);

  MEMORY[0x1E12CB180](0xD000000000000011, 0x80000001DEF9C550);
  v20[0] = v0[4];
  v13 = sub_1DEF8E2E8();
  MEMORY[0x1E12CB180](v13);

  MEMORY[0x1E12CB180](0x203A6E696D203BLL, 0xE700000000000000);
  v20[0] = v0[5];
  v14 = sub_1DEF8E2E8();
  MEMORY[0x1E12CB180](v14);

  MEMORY[0x1E12CB180](2112297, 0xE300000000000000);
  v15 = v0[17];
  if (v15)
  {
    v16 = v0[16];
    sub_1DEF8DF28();

    v20[0] = 0x6E6974656B72616DLL;
    v20[1] = 0xEF203A656D614E67;
    MEMORY[0x1E12CB180](v16, v15);
    MEMORY[0x1E12CB180](8251, 0xE200000000000000);
    MEMORY[0x1E12CB180](0x6E6974656B72616DLL, 0xEF203A656D614E67);
  }

  v17 = v0[19];
  if (v17)
  {
    v18 = v0[18];
    sub_1DEF8DF28();

    strcpy(v20, "productType: ");
    HIWORD(v20[1]) = -4864;
    MEMORY[0x1E12CB180](v18, v17);
    MEMORY[0x1E12CB180](8251, 0xE200000000000000);
    MEMORY[0x1E12CB180](v20[0], v20[1]);
  }

  return v21;
}

uint64_t ZoneVersionAdvertisement.description.getter()
{
  sub_1DEF8DF28();

  strcpy(v5, "remoteDevice: ");
  HIBYTE(v5[1]) = -18;
  v1 = ZoneVersionAdvertisement.DeviceDescriptor.description.getter();
  MEMORY[0x1E12CB180](v1);

  MEMORY[0x1E12CB180](0xD000000000000010, 0x80000001DEF9BB10);
  v2 = *(v0 + *(type metadata accessor for ZoneVersionAdvertisement(0) + 20));
  type metadata accessor for ZoneVersion();
  v3 = sub_1DEF8D858();
  MEMORY[0x1E12CB180](v3);

  return v5[0];
}

uint64_t ZoneVersionAdvertisement.zoneVersions.getter()
{
  v1 = *(v0 + *(type metadata accessor for ZoneVersionAdvertisement(0) + 20));
}

uint64_t static ZoneVersionAdvertisement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!_s16ReplicatorEngine24ZoneVersionAdvertisementV16DeviceDescriptorV2eeoiySbAE_AEtFZ_0(a1, a2))
  {
    return 0;
  }

  v4 = *(type metadata accessor for ZoneVersionAdvertisement(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);

  return sub_1DEEDB5A8(v5, v6);
}

uint64_t sub_1DEEDD528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!static ZoneVersionAdvertisement.DeviceDescriptor.== infix(_:_:)(a1, a2))
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_1DEEDB5A8(v7, v8);
}

ReplicatorEngine::ZoneVersionAdvertisement::DeviceDescriptor::CodingKeys_optional __swiftcall ZoneVersionAdvertisement.DeviceDescriptor.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DEF8E168();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

ReplicatorEngine::ZoneVersionAdvertisement::DeviceDescriptor::CodingKeys_optional __swiftcall ZoneVersionAdvertisement.DeviceDescriptor.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = ZoneVersionAdvertisement.DeviceDescriptor.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t sub_1DEEDD640()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0x6E6974656B72616DLL;
    v8 = 0x54746375646F7270;
    if (v1 != 10)
    {
      v8 = 0x754E6C6169726573;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0x73656E6F7ALL;
    v10 = 0x546567617373656DLL;
    if (v1 != 7)
    {
      v10 = 0x746E656449736469;
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 25705;
    v3 = 0x656372756F537369;
    v4 = 0x7954656369766564;
    if (v1 != 4)
    {
      v4 = 0xD000000000000010;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 1701667182;
    if (v1 != 1)
    {
      v5 = 0x6C6F636F746F7270;
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
}

uint64_t sub_1DEEDD7E8(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = ZoneVersionAdvertisement.DeviceDescriptor.CodingKeys.stringValue.getter();
  v4 = v3;
  if (v2 == ZoneVersionAdvertisement.DeviceDescriptor.CodingKeys.stringValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1DEF8E4E8();
  }

  return v7 & 1;
}

uint64_t sub_1DEEDD884()
{
  v1 = *v0;
  v2 = sub_1DEF8E7A8();
  ZoneVersionAdvertisement.DeviceDescriptor.CodingKeys.stringValue.getter(v2);
  sub_1DEF8D9B8();

  return sub_1DEF8E7F8();
}

uint64_t sub_1DEEDD8EC(uint64_t a1)
{
  v3 = *v1;
  ZoneVersionAdvertisement.DeviceDescriptor.CodingKeys.stringValue.getter(a1);
  sub_1DEF8D9B8();
}

uint64_t sub_1DEEDD950()
{
  v1 = *v0;
  v2 = sub_1DEF8E7A8();
  ZoneVersionAdvertisement.DeviceDescriptor.CodingKeys.stringValue.getter(v2);
  sub_1DEF8D9B8();

  return sub_1DEF8E7F8();
}

uint64_t sub_1DEEDD9C0@<X0>(uint64_t *a1@<X8>)
{
  result = ZoneVersionAdvertisement.DeviceDescriptor.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DEEDDA30(uint64_t a1)
{
  v2 = sub_1DEEE0714();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEEDDA6C(uint64_t a1)
{
  v2 = sub_1DEEE0714();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v46 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE46C0, &qword_1DEF92ED8);
  v61 = *(v8 - 8);
  v9 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v15 + 72) = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 44) = 256;
  *(v15 + 7) = xmmword_1DEF90FE0;
  *(v15 + 20) = 0;
  *(v15 + 21) = 0;
  v17 = *(v16 + 68);
  v18 = sub_1DEF8D3F8();
  v19 = *(*(v18 - 8) + 56);
  v63 = v17;
  v64 = v15;
  v19(&v15[v17], 1, 1, v18);
  v20 = a1[3];
  v21 = a1[4];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1DEEE0714();
  sub_1DEF8E848();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v62);
    v29 = v64;
    sub_1DEE2416C(v64[14], v64[15]);

    return sub_1DEE171B4(v29 + v63, &unk_1ECDE3E80, &unk_1DEF90970);
  }

  else
  {
    v22 = v7;
    LOBYTE(v65) = 0;
    v23 = sub_1DEF8E1D8();
    v25 = v24;
    v59 = v23;
    LOBYTE(v65) = 1;
    v26 = sub_1DEF8E1D8();
    v28 = v27;
    v58 = v26;
    v70 = 2;
    sub_1DEE23F00();
    sub_1DEF8E1F8();
    v56 = *(&v65 + 1);
    v57 = v65;
    v70 = 4;
    sub_1DEE23EAC();
    sub_1DEF8E1B8();
    v31 = v65;
    if (v65 == 6)
    {
      LOBYTE(v65) = 3;
      v32 = sub_1DEF8E1E8();
      v55 = v28;
      if (v32)
      {
        v31 = 2;
      }

      else
      {
        v31 = 1;
      }
    }

    else
    {
      v55 = v28;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3EA8, &qword_1DEF91890);
    v70 = 6;
    sub_1DEE23BE4();
    sub_1DEF8E1B8();
    if (v65)
    {
      v54 = v65;
    }

    else
    {
      v54 = sub_1DEEDE4E4(&unk_1F5A18F48, sub_1DEEDE430, 0, v58, v55, sub_1DEEDE490);
      swift_arrayDestroy();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3EB8, &qword_1DEF91898);
    v70 = 7;
    sub_1DEEE07B0(&qword_1ECDE2CD0, sub_1DEE2505C, sub_1DEEBB854);
    sub_1DEF8E1B8();
    if (v65)
    {
      v53 = v65;
    }

    else
    {
      v53 = sub_1DEEDE788(&unk_1F5A18FD8, sub_1DEEDE70C, 0, v58, v55, sub_1DEEDE734);
      swift_arrayDestroy();
    }

    v70 = 5;
    sub_1DEE24030();
    sub_1DEF8E1B8();
    v52 = v66;
    v50 = v65;
    v69 = v67;
    v51 = v68;
    LOBYTE(v65) = 9;
    v33 = sub_1DEF8E198();
    v35 = v34;
    v48 = v33;
    v49 = v31;
    LOBYTE(v65) = 10;
    v47 = sub_1DEF8E198();
    v37 = v36;
    LOBYTE(v65) = 11;
    sub_1DEEE0768(&qword_1ECDE3630, MEMORY[0x1E69695A8]);
    v46 = v8;
    sub_1DEF8E1B8();
    v38 = v64;
    v39 = v58;
    *v64 = v59;
    v38[1] = v25;
    v40 = v55;
    v38[2] = v39;
    v38[3] = v40;
    v41 = v56;
    v38[4] = v57;
    v38[5] = v41;
    *(v38 + 48) = v49;
    *(v38 + 7) = v50;
    *(v38 + 9) = v52;
    *(v38 + 88) = v69;
    *(v38 + 89) = v51;
    v42 = v53;
    v38[12] = v54;
    v38[13] = v42;
    v38[16] = v48;
    v38[17] = v35;
    v38[18] = v47;
    v38[19] = v37;
    sub_1DEEA882C(v22, v38 + v63);
    v70 = 8;
    sub_1DEE1E77C();
    sub_1DEF8E1B8();
    sub_1DEE171B4(v22, &unk_1ECDE3E80, &unk_1DEF90970);
    (*(v61 + 8))(v11, v46);
    if (*(&v65 + 1) >> 60 == 15)
    {
      v43 = 0;
    }

    else
    {
      v43 = v65;
    }

    if (*(&v65 + 1) >> 60 == 15)
    {
      v44 = 0xF000000000000000;
    }

    else
    {
      v44 = *(&v65 + 1);
    }

    v45 = v64;
    sub_1DEE2416C(v64[14], v64[15]);
    *(v45 + 112) = v43;
    *(v45 + 120) = v44;
    sub_1DEEE0F6C(v45, v60, type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor);
    __swift_destroy_boxed_opaque_existential_1(v62);
    return sub_1DEEE0FD4(v45, type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor);
  }
}

uint64_t sub_1DEEDE490(uint64_t a1)
{
  type metadata accessor for Zone();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 24) = xmmword_1DEF92EC0;

  return v2;
}

uint64_t sub_1DEEDE4E4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v6 = *(a1 + 16);
  if (!v6)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v7 = (a1 + 40);
  v8 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v11 = *v7;

    v12 = a2(a4, a5);
    v13 = a6();
    if ((v8 & 0xC000000000000001) != 0)
    {
      if (v8 < 0)
      {
        v14 = v8;
      }

      else
      {
        v14 = v8 & 0xFFFFFFFFFFFFFF8;
      }

      v15 = sub_1DEF8DE68();
      if (__OFADD__(v15, 1))
      {
        goto LABEL_26;
      }

      v8 = sub_1DEEB0790(v14, v15 + 1);
    }

    else
    {
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = sub_1DEEAF20C(v12);
    v19 = *(v8 + 16);
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      break;
    }

    v22 = v17;
    if (*(v8 + 24) >= v21)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v17)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1DEEB753C();
        if (v22)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1DEEB0D00(v21, isUniquelyReferenced_nonNull_native);
      v23 = sub_1DEEAF20C(v12);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_28;
      }

      v18 = v23;
      if (v22)
      {
LABEL_3:
        v9 = *(v8 + 56);
        v10 = *(v9 + 8 * v18);
        *(v9 + 8 * v18) = v13;

        goto LABEL_4;
      }
    }

    *(v8 + 8 * (v18 >> 6) + 64) |= 1 << v18;
    *(*(v8 + 48) + 8 * v18) = v12;
    *(*(v8 + 56) + 8 * v18) = v13;

    v25 = *(v8 + 16);
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_27;
    }

    *(v8 + 16) = v27;
LABEL_4:
    v7 += 2;
    if (!--v6)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  type metadata accessor for Zone.ID();
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

uint64_t sub_1DEEDE70C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  a3[2] = 0xD000000000000011;
  a3[3] = 0x80000001DEF9C1B0;
}

uint64_t sub_1DEEDE734@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = xmmword_1DEF92EC0;
}

uint64_t sub_1DEEDE788(uint64_t a1, void (*a2)(void **__return_ptr, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void **__return_ptr, void *))
{
  v6 = *(a1 + 16);
  if (!v6)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v7 = (a1 + 40);
  v8 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v36 = v7;
    v37 = v6;
    v12 = *v7;

    a2(&v45, a4, a5);
    v13 = v45;
    v14 = v46;
    v16 = v47;
    v15 = v48;
    v44[0] = v45;
    v44[1] = v46;
    v44[2] = v47;
    v44[3] = v48;
    a6(&v45, v44);
    v38 = v45;
    v39 = v46;
    v40 = v47;
    v41 = v48;
    v42 = v49;
    v43 = v50;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v8;
    v19 = sub_1DEEAF16C(v13, v14, v16, v15);
    v20 = v8[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      break;
    }

    v23 = v18;
    if (v8[3] >= v22)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v18)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1DEEB7550();
        if (v23)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1DEEB0D14(v22, isUniquelyReferenced_nonNull_native);
      v24 = sub_1DEEAF16C(v13, v14, v16, v15);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_20;
      }

      v19 = v24;
      if (v23)
      {
LABEL_3:

        v8 = v45;
        v9 = (v45[7] + 48 * v19);
        v10 = v9[1];
        v11 = v9[3];
        *v9 = v38;
        v9[1] = v39;
        v9[2] = v40;
        v9[3] = v41;
        v9[4] = v42;
        v9[5] = v43;

        goto LABEL_4;
      }
    }

    v8 = v45;
    v45[(v19 >> 6) + 8] |= 1 << v19;
    v26 = (v8[6] + 32 * v19);
    *v26 = v13;
    v26[1] = v14;
    v26[2] = v16;
    v26[3] = v15;
    v27 = (v8[7] + 48 * v19);
    *v27 = v38;
    v27[1] = v39;
    v27[2] = v40;
    v27[3] = v41;
    v27[4] = v42;
    v27[5] = v43;

    v28 = v8[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_19;
    }

    v8[2] = v30;
LABEL_4:
    v7 = v36 + 2;
    v6 = v37 - 1;
    if (v37 == 1)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE46C8, &qword_1DEF92EE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEEE0714();
  sub_1DEF8E858();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v22[0]) = 0;
  sub_1DEF8E278();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v22[0]) = 1;
    sub_1DEF8E278();
    v22[0] = *(v3 + 2);
    v25 = 2;
    sub_1DEEBBB54();
    sub_1DEF8E298();
    v15 = *(v3 + 48);
    LOBYTE(v22[0]) = 3;
    sub_1DEF8E288();
    LOBYTE(v22[0]) = v15;
    v25 = 4;
    sub_1DEEBBBA8();
    sub_1DEF8E298();
    v16 = *(v3 + 88);
    v17 = *(v3 + 89);
    v18 = *(v3 + 9);
    v22[0] = *(v3 + 7);
    v22[1] = v18;
    v23 = v16;
    v24 = v17;
    v25 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE46D0, &qword_1DEF92EE8);
    sub_1DEEE0840(&qword_1ECDE33A8, &qword_1ECDE46D0, &qword_1DEF92EE8, sub_1DEEBBF14);
    sub_1DEF8E298();
    *&v22[0] = v3[12];
    v25 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3EA8, &qword_1DEF91890);
    sub_1DEEBBBFC();
    sub_1DEF8E298();
    *&v22[0] = v3[13];
    v25 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3EB8, &qword_1DEF91898);
    sub_1DEEE07B0(&unk_1ECDE2CD8, sub_1DEEBBCE8, sub_1DEEBBD3C);
    sub_1DEF8E298();
    v19 = v3[15];
    *&v22[0] = v3[14];
    *(&v22[0] + 1) = v19;
    v25 = 8;
    sub_1DEEA8818(*&v22[0], v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE46D8, &unk_1DEF92EF0);
    sub_1DEEE0840(&unk_1ECDE3648, &qword_1ECDE46D8, &unk_1DEF92EF0, sub_1DEEBBEC0);
    sub_1DEF8E298();
    sub_1DEE2416C(*&v22[0], *(&v22[0] + 1));
    v22[0] = *(v3 + 8);
    v25 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3ED0, &qword_1DEF92030);
    sub_1DEEBBD90();
    sub_1DEF8E298();
    v22[0] = *(v3 + 9);
    v25 = 10;
    sub_1DEF8E298();
    v20 = *(type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(0) + 60);
    LOBYTE(v22[0]) = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
    sub_1DEEBBE0C();
    sub_1DEF8E298();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DEEDEF5C@<X0>(char *a1@<X8>)
{
  v2 = sub_1DEF8E168();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t ZoneVersionAdvertisement.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    result = 0x73726556656E6F7ALL;
  }

  else
  {
    result = 0x654465746F6D6572;
  }

  *v0;
  return result;
}

uint64_t sub_1DEEDF020(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x73726556656E6F7ALL;
  }

  else
  {
    v4 = 0x654465746F6D6572;
  }

  if (v3)
  {
    v5 = 0xEC00000065636976;
  }

  else
  {
    v5 = 0xEC000000736E6F69;
  }

  if (*a2)
  {
    v6 = 0x73726556656E6F7ALL;
  }

  else
  {
    v6 = 0x654465746F6D6572;
  }

  if (*a2)
  {
    v7 = 0xEC000000736E6F69;
  }

  else
  {
    v7 = 0xEC00000065636976;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DEF8E4E8();
  }

  return v9 & 1;
}

uint64_t sub_1DEEDF0D8()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();

  return sub_1DEF8E7F8();
}

uint64_t sub_1DEEDF16C()
{
  *v0;
  sub_1DEF8D9B8();
}

uint64_t sub_1DEEDF1EC()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();

  return sub_1DEF8E7F8();
}

uint64_t sub_1DEEDF27C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DEF8E168();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1DEEDF2DC(uint64_t *a1@<X8>)
{
  v2 = 0x654465746F6D6572;
  if (*v1)
  {
    v2 = 0x73726556656E6F7ALL;
  }

  v3 = 0xEC00000065636976;
  if (*v1)
  {
    v3 = 0xEC000000736E6F69;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DEEDF32C()
{
  if (*v0)
  {
    result = 0x73726556656E6F7ALL;
  }

  else
  {
    result = 0x654465746F6D6572;
  }

  *v0;
  return result;
}

uint64_t sub_1DEEDF378@<X0>(char *a1@<X8>)
{
  v2 = sub_1DEF8E168();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1DEEDF3DC(uint64_t a1)
{
  v2 = sub_1DEEE08BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEEDF418(uint64_t a1)
{
  v2 = sub_1DEEE08BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ZoneVersionAdvertisement.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(0);
  v4 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE46E0, &qword_1DEF92F00);
  v22 = *(v24 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v9 = &v20 - v8;
  v10 = type metadata accessor for ZoneVersionAdvertisement(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEEE08BC();
  sub_1DEF8E848();
  if (!v2)
  {
    v20 = v10;
    v15 = v22;
    v27 = 0;
    sub_1DEEE0768(&qword_1ECDE2F38, type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor);
    v16 = v24;
    sub_1DEF8E1F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE46E8, &qword_1DEF92F08);
    v26 = 1;
    sub_1DEE2524C();
    sub_1DEF8E1F8();
    (*(v15 + 8))(v9, v16);
    v18 = v25;
    sub_1DEEE0910(v6, v13, type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor);
    v19 = v21;
    *&v13[*(v20 + 20)] = v18;
    sub_1DEEE0910(v13, v19, type metadata accessor for ZoneVersionAdvertisement);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ZoneVersionAdvertisement.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE46F0, &qword_1DEF92F10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEEE08BC();
  sub_1DEF8E858();
  v14 = 0;
  type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(0);
  sub_1DEEE0768(&qword_1ECDE2F40, type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor);
  sub_1DEF8E298();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for ZoneVersionAdvertisement(0) + 20));
    v12[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE46E8, &qword_1DEF92F08);
    sub_1DEEE0978();
    sub_1DEF8E298();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DEEDF978(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_1DEF8DE68();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = v10 | (v5 << 6);
    v14 = *(*(a2 + 48) + 8 * v13);
    v15 = *(*(a2 + 56) + 8 * v13);

    v16 = sub_1DEF8E0B8();

    if (!v16)
    {
      goto LABEL_29;
    }

    type metadata accessor for Zone();
    swift_dynamicCast();
    v17 = v15[2];
    v18 = v24[2];
    v19 = v18[2] == v17[2] && v18[3] == v17[3];
    if (!v19 && (sub_1DEF8E4E8() & 1) == 0 || (v18[4] == v17[4] ? (v20 = v18[5] == v17[5]) : (v20 = 0), !v20 && (sub_1DEF8E4E8() & 1) == 0))
    {

LABEL_29:

      return 0;
    }

    v22 = v15[3];
    v21 = v15[4];

    if (v22 != v24[3])
    {
      goto LABEL_29;
    }

    v23 = v24[4];

    if (v21 != v23)
    {
      return 0;
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v12 = *(a2 + 64 + 8 * v5);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEEDFB5C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1DEF8D018();
    if (v10)
    {
      v11 = sub_1DEF8D048();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1DEF8D038();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1DEF8D018();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1DEF8D048();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1DEF8D038();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1DEEDFD8C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1DEEDFF1C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1DEE1BFA0(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_1DEEDFB5C(v14, a3, a4, &v13);
  v10 = v4;
  sub_1DEE1BFA0(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

uint64_t sub_1DEEDFF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1DEF8D018();
  v11 = result;
  if (result)
  {
    result = sub_1DEF8D048();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1DEF8D038();
  sub_1DEEDFB5C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1DEEDFFD4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1DEE1BFF4(a3, a4);
          return sub_1DEEDFD8C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL _s16ReplicatorEngine24ZoneVersionAdvertisementV16DeviceDescriptorV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v35[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE40D8, &unk_1DEF91C10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35[-v15];
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1DEF8E4E8() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1DEF8E4E8() & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }

    v18 = *(a2 + 89);
    if (*(a1 + 89))
    {
      goto LABEL_11;
    }

    if (*(a2 + 89))
    {
      return 0;
    }

    result = 0;
    if (*(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72))
    {
      v18 = *(a2 + 88);
      if (*(a1 + 88))
      {
LABEL_11:
        if ((v18 & 1) == 0)
        {
          return 0;
        }

LABEL_12:
        if ((sub_1DEEDBD80(*(a1 + 96), *(a2 + 96)) & 1) == 0 || (sub_1DEEDBFD4(*(a1 + 104), *(a2 + 104)) & 1) == 0)
        {
          return 0;
        }

        v19 = *(a1 + 112);
        v20 = *(a1 + 120);
        v21 = *(a2 + 120);
        v38 = *(a2 + 112);
        if (v20 >> 60 == 15)
        {
          if (v21 >> 60 == 15)
          {
            v37 = v19;
            sub_1DEEA8818(v19, v20);
            sub_1DEEA8818(v38, v21);
            sub_1DEE2416C(v37, v20);
LABEL_30:
            v24 = *(a1 + 136);
            v25 = *(a2 + 136);
            if (v24)
            {
              if (!v25 || (*(a1 + 128) != *(a2 + 128) || v24 != v25) && (sub_1DEF8E4E8() & 1) == 0)
              {
                return 0;
              }
            }

            else if (v25)
            {
              return 0;
            }

            v26 = *(a1 + 152);
            v27 = *(a2 + 152);
            if (v26)
            {
              if (!v27 || (*(a1 + 144) != *(a2 + 144) || v26 != v27) && (sub_1DEF8E4E8() & 1) == 0)
              {
                return 0;
              }
            }

            else if (v27)
            {
              return 0;
            }

            v28 = *(a1 + 168);
            v29 = *(a2 + 168);
            if (v28)
            {
              if (!v29 || (*(a1 + 160) != *(a2 + 160) || v28 != v29) && (sub_1DEF8E4E8() & 1) == 0)
              {
                return 0;
              }
            }

            else if (v29)
            {
              return 0;
            }

            v30 = *(type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(0) + 60);
            v31 = *(v13 + 48);
            sub_1DEE205E0(a1 + v30, v16);
            sub_1DEE205E0(a2 + v30, &v16[v31]);
            v32 = *(v5 + 48);
            if (v32(v16, 1, v4) == 1)
            {
              if (v32(&v16[v31], 1, v4) == 1)
              {
                sub_1DEE171B4(v16, &unk_1ECDE3E80, &unk_1DEF90970);
                return 1;
              }
            }

            else
            {
              sub_1DEE205E0(v16, v12);
              if (v32(&v16[v31], 1, v4) != 1)
              {
                (*(v5 + 32))(v8, &v16[v31], v4);
                sub_1DEEE0768(&qword_1ECDE40E0, MEMORY[0x1E69695A8]);
                v33 = sub_1DEF8D908();
                v34 = *(v5 + 8);
                v34(v8, v4);
                v34(v12, v4);
                sub_1DEE171B4(v16, &unk_1ECDE3E80, &unk_1DEF90970);
                return (v33 & 1) != 0;
              }

              (*(v5 + 8))(v12, v4);
            }

            sub_1DEE171B4(v16, &qword_1ECDE40D8, &unk_1DEF91C10);
            return 0;
          }
        }

        else if (v21 >> 60 != 15)
        {
          v37 = v19;
          sub_1DEEA8818(v19, v20);
          sub_1DEEA8818(v38, v21);
          v36 = sub_1DEEDFFD4(v37, v20, v38, v21);
          sub_1DEE2416C(v38, v21);
          sub_1DEE2416C(v37, v20);
          if ((v36 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_30;
        }

        v22 = v19;
        sub_1DEEA8818(v19, v20);
        v23 = v38;
        sub_1DEEA8818(v38, v21);
        sub_1DEE2416C(v22, v20);
        sub_1DEE2416C(v23, v21);
        return 0;
      }

      result = 0;
      if ((*(a2 + 88) & 1) == 0 && *(a1 + 80) == *(a2 + 80))
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

unint64_t sub_1DEEE0714()
{
  result = qword_1ECDE2F58;
  if (!qword_1ECDE2F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2F58);
  }

  return result;
}

uint64_t sub_1DEEE0768(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DEEE07B0(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECDE3EB8, &qword_1DEF91898);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DEEE0840(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DEEE08BC()
{
  result = qword_1ECDE2F70;
  if (!qword_1ECDE2F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2F70);
  }

  return result;
}

uint64_t sub_1DEEE0910(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DEEE0978()
{
  result = qword_1ECDE2C90;
  if (!qword_1ECDE2C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE46E8, &qword_1DEF92F08);
    sub_1DEEE0768(&qword_1ECDE34E0, type metadata accessor for ZoneVersion);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2C90);
  }

  return result;
}

unint64_t sub_1DEEE0A38()
{
  result = qword_1ECDE46F8;
  if (!qword_1ECDE46F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE46F8);
  }

  return result;
}

unint64_t sub_1DEEE0A90()
{
  result = qword_1ECDE2F48;
  if (!qword_1ECDE2F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2F48);
  }

  return result;
}

unint64_t sub_1DEEE0AE8()
{
  result = qword_1ECDE2F50;
  if (!qword_1ECDE2F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2F50);
  }

  return result;
}

unint64_t sub_1DEEE0B40()
{
  result = qword_1ECDE4700;
  if (!qword_1ECDE4700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4700);
  }

  return result;
}

unint64_t sub_1DEEE0B98()
{
  result = qword_1ECDE2F60;
  if (!qword_1ECDE2F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2F60);
  }

  return result;
}

unint64_t sub_1DEEE0BF0()
{
  result = qword_1ECDE2F68;
  if (!qword_1ECDE2F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2F68);
  }

  return result;
}

void sub_1DEEE0C6C()
{
  type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(319);
  if (v0 <= 0x3F)
  {
    sub_1DEEE0CF0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DEEE0CF0()
{
  if (!qword_1ECDE2C98)
  {
    type metadata accessor for ZoneVersion();
    v0 = sub_1DEF8D888();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECDE2C98);
    }
  }
}

uint64_t getEnumTagSinglePayload for ZoneVersionAdvertisement.DeviceDescriptor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ZoneVersionAdvertisement.DeviceDescriptor.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DEEE0F6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEEE0FD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t NSFileHandle.copyFile(to:extendedAttributes:)(uint64_t a1, uint64_t a2)
{
  v89 = a2;
  v100 = *MEMORY[0x1E69E9840];
  v3 = sub_1DEF8D1E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v91 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v82 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v82 - v11;
  sub_1DEF8D188();
  v90 = a1;
  sub_1DEF8D158();
  v13 = objc_opt_self();
  v14 = [v13 defaultManager];
  v15 = sub_1DEF8D178();
  *&v98 = 0;
  v16 = [v14 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:&v98];

  if (v16)
  {
    v17 = v98;
    v18 = [v13 defaultManager];
    sub_1DEF8D1B8();
    v19 = sub_1DEF8D918();

    [v18 createFileAtPath:v19 contents:0 attributes:0];

    sub_1DEEE1914();
    v20 = v91;
    (*(v4 + 16))(v91, v9, v3);
    v21 = v92;
    v22 = sub_1DEEE1960(v20);
    if (v21)
    {
      v23 = *(v4 + 8);
      v23(v9, v3);
      result = (v23)(v12, v3);
    }

    else
    {
      v91 = v22;
      v84 = v4;
      v85 = v3;
      v86 = v12;
      v87 = v13;
      v83 = v9;
      v27 = MEMORY[0x1E12CC160]();
      v31 = sub_1DEF8DC48();
      v33 = v32;
      v34 = 0;
      for (i = 0xF000000000000000; ; i = v92)
      {
        v37 = v34;
        v34 = v31;
        sub_1DEE2416C(v37, i);
        v92 = v33;
        if (v33 >> 60 == 15)
        {
          break;
        }

        *&v98 = v31;
        *(&v98 + 1) = v33;
        sub_1DEE1BFF4(v31, v33);
        sub_1DEE3E0EC();
        sub_1DEF8DC58();
        sub_1DEE2416C(v31, v33);
        objc_autoreleasePoolPop(v27);
        v38 = v33 >> 62;
        if ((v33 >> 62) > 1)
        {
          if (v38 != 2 || *(v31 + 16) == *(v31 + 24))
          {
LABEL_16:
            v82 = v31;
            goto LABEL_18;
          }
        }

        else if (v38)
        {
          if (v31 == v31 >> 32)
          {
            goto LABEL_16;
          }
        }

        else if ((v33 & 0xFF000000000000) == 0)
        {
          goto LABEL_16;
        }

        v27 = MEMORY[0x1E12CC160]();
        v31 = sub_1DEF8DC48();
        v33 = v36;
      }

      v82 = v31;
      objc_autoreleasePoolPop(v27);
LABEL_18:
      *&v98 = 0;
      v39 = v91;
      v40 = [v91 closeAndReturnError_];
      v41 = v86;
      v42 = v87;
      if (v40)
      {
        v88 = 0;
        v43 = v89 + 64;
        v44 = 1 << *(v89 + 32);
        v45 = -1;
        if (v44 < 64)
        {
          v45 = ~(-1 << v44);
        }

        v46 = v45 & *(v89 + 64);
        v47 = (v44 + 63) >> 6;
        v48 = v98;

        v49 = 0;
        v50 = 0x1E86A2000;
        if (!v46)
        {
          goto LABEL_23;
        }

LABEL_22:
        v51 = v49;
LABEL_30:
        v54 = __clz(__rbit64(v46));
        v46 &= v46 - 1;
        v55 = v54 | (v51 << 6);
        v56 = (*(v89 + 48) + 16 * v55);
        v58 = *v56;
        v57 = v56[1];
        sub_1DEEE1AB8(*(v89 + 56) + 48 * v55, v93);
        *&v94 = v58;
        *(&v94 + 1) = v57;
        sub_1DEEA8734(v93, &v95);

        v53 = v51;
        v50 = 0x1E86A2000uLL;
        while (1)
        {
          v98 = v94;
          v99[0] = v95;
          v99[1] = v96;
          v99[2] = v97;
          v59 = *(&v94 + 1);
          if (!*(&v94 + 1))
          {
            break;
          }

          v49 = v53;
          v60 = v98;
          sub_1DEEA8734(v99, &v94);
          v61 = *(&v95 + 1);
          v62 = __swift_project_boxed_opaque_existential_1(&v94, *(&v95 + 1));
          v63 = v88;
          URL.setExtendedAttribute<A>(named:value:)(v60, v59, v62, v61);
          v88 = v63;
          if (v63)
          {
            sub_1DEE2416C(v82, v92);

            v79 = *(v84 + 8);
            v80 = v85;
            v79(v83, v85);
            v79(v86, v80);
            result = __swift_destroy_boxed_opaque_existential_1(&v94);
            goto LABEL_6;
          }

          __swift_destroy_boxed_opaque_existential_1(&v94);
          v42 = v87;
          v50 = 0x1E86A2000;
          if (v46)
          {
            goto LABEL_22;
          }

LABEL_23:
          if (v47 <= v49 + 1)
          {
            v52 = v49 + 1;
          }

          else
          {
            v52 = v47;
          }

          v53 = v52 - 1;
          while (1)
          {
            v51 = v49 + 1;
            if (__OFADD__(v49, 1))
            {
              __break(1u);
            }

            if (v51 >= v47)
            {
              break;
            }

            v46 = *(v43 + 8 * v51);
            ++v49;
            if (v46)
            {
              goto LABEL_30;
            }
          }

          v46 = 0;
          v96 = 0u;
          v97 = 0u;
          v95 = 0u;
          v94 = 0u;
        }

        v66 = [v42 *(v50 + 4088)];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4710, &qword_1DEF93408);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1DEF907F0;
        v68 = *MEMORY[0x1E696A3A0];
        *(inited + 32) = *MEMORY[0x1E696A3A0];
        v69 = *MEMORY[0x1E696A388];
        type metadata accessor for FileProtectionType(0);
        *(inited + 64) = v70;
        *(inited + 40) = v69;
        v71 = v68;
        v72 = v69;
        sub_1DEEA36A4(inited);
        swift_setDeallocating();
        sub_1DEEE1B54(inited + 32);
        type metadata accessor for FileAttributeKey(0);
        sub_1DEEE1BBC();
        v73 = sub_1DEF8D828();

        v74 = v83;
        sub_1DEF8D1B8();
        v75 = sub_1DEF8D918();

        *&v98 = 0;
        LOBYTE(v68) = [v66 setAttributes:v73 ofItemAtPath:v75 error:&v98];

        if (v68)
        {
          v76 = v98;
        }

        else
        {
          v81 = v98;
          sub_1DEF8D148();

          swift_willThrow();
        }

        sub_1DEE2416C(v82, v92);

        v77 = v85;
        v78 = *(v84 + 8);
        v78(v74, v85);
        result = (v78)(v86, v77);
      }

      else
      {
        v64 = v39;
        v65 = v98;
        sub_1DEF8D148();

        swift_willThrow();
        sub_1DEE2416C(v82, v92);

        v28 = *(v84 + 8);
        v29 = v85;
        v28(v83, v85);
        result = (v28)(v41, v29);
      }
    }
  }

  else
  {
    v25 = v98;
    sub_1DEF8D148();

    swift_willThrow();
    v26 = *(v4 + 8);
    v26(v9, v3);
    result = (v26)(v12, v3);
  }

LABEL_6:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1DEEE1914()
{
  result = qword_1ECDE2C20;
  if (!qword_1ECDE2C20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECDE2C20);
  }

  return result;
}

id sub_1DEEE1960(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1DEF8D178();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_1DEF8D1E8();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_1DEF8D148();

    swift_willThrow();
    v9 = sub_1DEF8D1E8();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_1DEEE1AB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1DEEE1B54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3CE0, &qword_1DEF915E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DEEE1BBC()
{
  result = qword_1ECDE2BF0;
  if (!qword_1ECDE2BF0)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2BF0);
  }

  return result;
}

uint64_t sub_1DEEE1C14(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  result = sub_1DEEE1CB4(a1, 0);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DEEE1C64(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  result = sub_1DEEE1CB4(a1, 1);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DEEE1CB4(uint64_t a1, int a2)
{
  v28 = a2;
  v31[1] = *MEMORY[0x1E69E9840];
  v30 = sub_1DEF8D1E8();
  v2 = *(v30 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  sub_1DEF8D188();
  sub_1DEF8D158();
  v12 = objc_opt_self();
  v13 = [v12 defaultManager];
  v14 = sub_1DEF8D178();
  v31[0] = 0;
  v15 = [v13 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:v31];

  if (v15)
  {
    v16 = v31[0];
    v17 = [v12 defaultManager];
    sub_1DEF8D1B8();
    v18 = sub_1DEF8D918();

    [v17 createFileAtPath:v18 contents:0 attributes:0];

    sub_1DEEE1914();
    v19 = v30;
    (*(v2 + 16))(v5, v8, v30);
    v20 = v29;
    v21 = sub_1DEEE1960(v5);
    if (!v20)
    {
      v22 = v21;
      sub_1DEEE209C(v28, v27, v21);
    }
  }

  else
  {
    v23 = v31[0];
    sub_1DEF8D148();

    swift_willThrow();
    v19 = v30;
  }

  v24 = *(v2 + 8);
  v24(v8, v19);
  result = (v24)(v11, v19);
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DEEE1FB8(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_1DEF8D238();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_1DEF8D018();
  if (v3)
  {
    result = sub_1DEF8D048();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_1DEF8D038();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1DEEFC6AC(v3, v7);

  return v8;
}

uint64_t sub_1DEEE209C(char a1, void *a2, void *a3)
{
  v83 = a3;
  v77 = a2;
  v90[4] = *MEMORY[0x1E69E9840];
  v6 = sub_1DEF8D218();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v84 = (v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v12 = compression_stream_init(v11, (a1 & 1), COMPRESSION_LZFSE);
  if (v12 == COMPRESSION_STATUS_ERROR)
  {
    sub_1DEEE2968();
    swift_allocError();
    *v63 = 0;
    swift_willThrow();
    v64 = v10;
LABEL_64:
    result = MEMORY[0x1E12CCD70](v64, -1, -1);
    goto LABEL_68;
  }

  v82 = v12;
  v76[1] = v3;
  v85 = 0;
  v11->src_size = 0;
  v88 = v10;
  v11->dst_ptr = v10;
  v11->dst_size = 0x8000;
  v81 = *MEMORY[0x1E6969010];
  v79 = (v7 + 8);
  v80 = (v7 + 104);
  v78 = v90;
  v13 = 0xF000000000000000;
  while (1)
  {
    v14 = MEMORY[0x1E12CC160]();
    src_size = v11->src_size;
    v87 = v14;
    if (!src_size)
    {
      break;
    }

    v16 = v84;
    if (v13 >> 60 != 15)
    {
      v4 = v85;
      sub_1DEE1BFF4(v85, v13);
      v22 = 0;
      v21 = v13 >> 62;
      v20 = v13;
      goto LABEL_23;
    }

    if (v82)
    {
      if (v82 != COMPRESSION_STATUS_END)
      {
        goto LABEL_66;
      }

      v17 = 0;
    }

    else
    {
      v17 = 1;
    }

LABEL_49:
    dst_size = v11->dst_size;
    v20 = 0x8000 - dst_size;
    if (__OFSUB__(0x8000, dst_size))
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
      swift_once();
LABEL_58:
      v65 = sub_1DEF8D508();
      __swift_project_value_buffer(v65, qword_1ECDF6028);
      v66 = v13;
      v67 = sub_1DEF8D4D8();
      v68 = sub_1DEF8DC98();

      v84 = v67;
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *v69 = 138543362;
        *(v69 + 4) = v66;
        *v70 = v13;
        v71 = v66;
        _os_log_impl(&dword_1DEE0F000, v84, v68, "Compressor failed to write to destination file: %{public}@", v69, 0xCu);
        sub_1DEEE2A84(v70);
        MEMORY[0x1E12CCD70](v70, -1, -1);
        MEMORY[0x1E12CCD70](v69, -1, -1);
      }

      sub_1DEEE2968();
      swift_allocError();
      *v72 = 1;
      swift_willThrow();

      sub_1DEE1BFA0(v20, v4);
      v4 = v85;
      v20 = v86;
LABEL_63:
      objc_autoreleasePoolPop(v87);
      sub_1DEE2416C(v4, v20);
      compression_stream_destroy(v11);
      MEMORY[0x1E12CCD70](v11, -1, -1);
      v64 = v88;
      goto LABEL_64;
    }

    v86 = v13;
    (*v80)(v16, v81, v6);
    sub_1DEF8D208();
    if (v20)
    {
      v49 = sub_1DEF8D068();
      v50 = *(v49 + 48);
      v51 = *(v49 + 52);
      swift_allocObject();

      v52 = sub_1DEF8CFF8();
      v53 = sub_1DEF8D058();
      *v54 |= 0x8000000000000000;
      v53(&aBlock, 0);
      v20 = sub_1DEEE1FB8(v52, v20);
      v4 = v55;
    }

    else
    {
      v56 = sub_1DEF8D208();
      v56(v88, 0);

      v4 = 0xC000000000000000;
    }

    v57 = v16;
    v58 = v6;
    (*v79)(v57, v6);
    v59 = swift_allocObject();
    v60 = v83;
    v59[2] = v83;
    v59[3] = v20;
    v59[4] = v4;
    v90[2] = sub_1DEEE29BC;
    v90[3] = v59;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v90[0] = sub_1DEE3F0C0;
    v90[1] = &block_descriptor_5;
    v61 = _Block_copy(&aBlock);
    v62 = v60;
    sub_1DEE1BFF4(v20, v4);

    v13 = catchObjcExceptions(v61);
    _Block_release(v61);
    if (v13)
    {
      if (qword_1ECDE2E58 == -1)
      {
        goto LABEL_58;
      }

      goto LABEL_82;
    }

    v11->dst_ptr = v88;
    v11->dst_size = 0x8000;
    sub_1DEE1BFA0(v20, v4);
    objc_autoreleasePoolPop(v87);
    v6 = v58;
    v13 = v86;
    if ((v17 & 1) == 0)
    {
      goto LABEL_67;
    }
  }

  v18 = [v77 readDataOfLength_];
  v4 = sub_1DEF8D278();
  v20 = v19;

  sub_1DEE2416C(v85, v13);
  v21 = v20 >> 62;
  v16 = v84;
  if ((v20 >> 62) > 1)
  {
    if (v21 != 2)
    {
      v11->src_size = 0;
      goto LABEL_22;
    }

    v24 = *(v4 + 16);
    v23 = *(v4 + 24);
    v25 = __OFSUB__(v23, v24);
    v26 = v23 - v24;
    if (v25)
    {
      goto LABEL_80;
    }

    v11->src_size = v26;
    v28 = *(v4 + 16);
    v27 = *(v4 + 24);
    v25 = __OFSUB__(v27, v28);
    v29 = v27 - v28;
    if (v25)
    {
      goto LABEL_81;
    }

    if (v29 < 0x8000)
    {
      goto LABEL_22;
    }

LABEL_20:
    sub_1DEE1BFF4(v4, v20);
    v22 = 0;
    goto LABEL_23;
  }

  if (v21)
  {
    v30 = HIDWORD(v4) - v4;
    if (__OFSUB__(HIDWORD(v4), v4))
    {
      goto LABEL_79;
    }

    v11->src_size = v30;
    if (v30 < 0x8000)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v11->src_size = BYTE6(v20);
LABEL_22:
  sub_1DEE1BFF4(v4, v20);
  v22 = 1;
LABEL_23:
  if (v21 <= 1)
  {
    if (!v21)
    {
      *&aBlock = v4;
      DWORD2(aBlock) = v20;
      WORD6(aBlock) = WORD2(v20);
      v31 = v11->src_size;
      v32 = BYTE6(v20) - v31;
      if (__OFSUB__(BYTE6(v20), v31))
      {
        goto LABEL_72;
      }

      goto LABEL_45;
    }

    v41 = HIDWORD(v4) - v4;
    if (__OFSUB__(HIDWORD(v4), v4))
    {
      goto LABEL_71;
    }

    v13 = v4;
    if (v4 > v4 >> 32)
    {
      goto LABEL_74;
    }

    v42 = sub_1DEF8D018();
    if (!v42)
    {
      goto LABEL_85;
    }

    v43 = v42;
    v44 = sub_1DEF8D048();
    if (__OFSUB__(v4, v44))
    {
      goto LABEL_76;
    }

    v38 = v4 - v44 + v43;
    sub_1DEF8D038();
    if (!v38)
    {
      goto LABEL_86;
    }

    v45 = v11->src_size;
    v40 = v41 - v45;
    if (__OFSUB__(v41, v45))
    {
      goto LABEL_78;
    }

LABEL_42:
    v11->src_ptr = (v38 + v40);
    v46 = compression_stream_process(v11, v22);
    sub_1DEE1BFA0(v4, v20);
    v16 = v84;
    v82 = v46;
    if (v46)
    {
      goto LABEL_46;
    }

LABEL_43:
    v17 = 1;
LABEL_48:
    v85 = v4;
    v13 = v20;
    goto LABEL_49;
  }

  if (v21 == 2)
  {
    v13 = *(v4 + 16);
    v33 = *(v4 + 24);
    v34 = v33 - v13;
    if (__OFSUB__(v33, v13))
    {
      goto LABEL_70;
    }

    v35 = sub_1DEF8D018();
    if (!v35)
    {
      sub_1DEF8D038();
LABEL_84:
      __break(1u);
LABEL_85:
      sub_1DEF8D038();
LABEL_86:
      __break(1u);
    }

    v36 = v35;
    v37 = sub_1DEF8D048();
    if (__OFSUB__(v13, v37))
    {
      goto LABEL_75;
    }

    v38 = v13 - v37 + v36;
    sub_1DEF8D038();
    if (!v38)
    {
      goto LABEL_84;
    }

    v39 = v11->src_size;
    v25 = __OFSUB__(v34, v39);
    v40 = v34 - v39;
    if (v25)
    {
      goto LABEL_77;
    }

    goto LABEL_42;
  }

  *(&aBlock + 6) = 0;
  *&aBlock = 0;
  v47 = v11->src_size;
  v25 = __OFSUB__(0, v47);
  v32 = -v47;
  if (v25)
  {
    goto LABEL_73;
  }

LABEL_45:
  v11->src_ptr = &v90[-2] + v32;
  v46 = compression_stream_process(v11, v22);
  sub_1DEE1BFA0(v4, v20);
  v82 = v46;
  if (v46 == COMPRESSION_STATUS_OK)
  {
    goto LABEL_43;
  }

LABEL_46:
  if (v46 == COMPRESSION_STATUS_END)
  {
    v17 = 0;
    goto LABEL_48;
  }

  if (v46 == COMPRESSION_STATUS_ERROR)
  {
    sub_1DEEE2968();
    swift_allocError();
    *v73 = 1;
    swift_willThrow();
    goto LABEL_63;
  }

  v85 = v4;
  v13 = v20;
  v14 = v87;
LABEL_66:
  objc_autoreleasePoolPop(v14);
LABEL_67:
  sub_1DEE2416C(v85, v13);
  compression_stream_destroy(v11);
  MEMORY[0x1E12CCD70](v11, -1, -1);
  result = MEMORY[0x1E12CCD70](v88, -1, -1);
LABEL_68:
  v75 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1DEEE2968()
{
  result = qword_1ECDE4718;
  if (!qword_1ECDE4718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4718);
  }

  return result;
}

void sub_1DEEE29BC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = sub_1DEF8D268();
  [v2 writeData_];
}

id catchObjcExceptions(void *a1)
{
  v1 = a1[2];
  v2 = a1;
  v1();

  return 0;
}

void sub_1DEEE2A6C(void *a1)
{
  v1 = objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x1DEEE2A44);
}

uint64_t sub_1DEEE2A84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4880, &qword_1DEF93420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DEEE2B00()
{
  result = qword_1ECDE4720;
  if (!qword_1ECDE4720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4720);
  }

  return result;
}

uint64_t BasicTimer.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 24) = v1;
  return v0;
}

uint64_t BasicTimer.init()()
{
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 24) = v1;
  return v0;
}

uint64_t sub_1DEEE2BF8()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock(v1 + 4);
  sub_1DEEE2EDC();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1DEEE2C7C()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock(v1 + 4);
  sub_1DEEE2FB8();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1DEEE2CEC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(a1 + 24);

  os_unfair_lock_lock(v3 + 4);
  sub_1DEEE2FB8();
  os_unfair_lock_unlock(v3 + 4);

  return a2(v4);
}

uint64_t sub_1DEEE2D78()
{
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v0 = sub_1DEF8D508();
  __swift_project_value_buffer(v0, qword_1ECDF6028);
  v1 = sub_1DEF8D4D8();
  v2 = sub_1DEF8DC88();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DEE0F000, v1, v2, "Timer fired", v3, 2u);
    MEMORY[0x1E12CCD70](v3, -1, -1);
  }

  return sub_1DEE1460C();
}

uint64_t BasicTimer.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_1DEEE2EDC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1DEEE2FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v60 = a5;
  v61 = a3;
  v50 = a4;
  v51 = a2;
  v56 = a1;
  v7 = sub_1DEF8D698();
  v58 = *(v7 - 8);
  v8 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1DEF8D6D8();
  v54 = *(v59 - 8);
  v10 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DEF8D688();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_1DEF8D758();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v46 - v24;
  sub_1DEF8D738();
  v48 = *(v6 + 32);
  *v17 = v48;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E7F48], v13);
  v52 = v25;
  sub_1DEF8D748();
  (*(v14 + 8))(v17, v13);
  v26 = *(v19 + 8);
  v57 = v18;
  v55 = v19 + 8;
  v49 = v26;
  v26(v22, v18);
  if (qword_1ECDE2E48 != -1)
  {
    swift_once();
  }

  v27 = sub_1DEF8D508();
  __swift_project_value_buffer(v27, qword_1ECDF5FF8);
  swift_retain_n();
  v28 = sub_1DEF8D4D8();
  v29 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v47 = v7;
    v32 = v31;
    v62 = v31;
    *v30 = 136315394;
    sub_1DEE29594(v6 + 40, aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4310, &qword_1DEF91E80);
    v33 = sub_1DEF8D988();
    v35 = sub_1DEE12A5C(v33, v34, &v62);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2048;

    *(v30 + 14) = v48;

    _os_log_impl(&dword_1DEE0F000, v28, v29, "%s will be queried for a relationship list in %lds, privacy: .public)", v30, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v32);
    v7 = v47;
    MEMORY[0x1E12CCD70](v32, -1, -1);
    MEMORY[0x1E12CCD70](v30, -1, -1);
  }

  else
  {
  }

  v36 = *(v6 + 16);
  v37 = swift_allocObject();
  v38 = v56;
  v37[2] = v6;
  v37[3] = v38;
  v39 = v51;
  v41 = v60;
  v40 = v61;
  v37[4] = v50;
  v37[5] = v41;
  v37[6] = v40;
  v37[7] = v39;
  aBlock[4] = sub_1DEEE4280;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_7;
  v42 = _Block_copy(aBlock);

  sub_1DEF8D6B8();
  v62 = MEMORY[0x1E69E7CC0];
  sub_1DEEE4290();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEECE95C();
  v43 = v53;
  sub_1DEF8DE08();
  v44 = v52;
  MEMORY[0x1E12CB490](v52, v12, v43, v42);
  _Block_release(v42);
  (*(v58 + 8))(v43, v7);
  (*(v54 + 8))(v12, v59);
  v49(v44, v57);
}

uint64_t sub_1DEEE35C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a1[8];
  v13 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v12);
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a6;
  v14[7] = a2;
  v15 = *(v13 + 8);

  v15(v16, sub_1DEEE42E8, v14, v12, v13);
}

uint64_t sub_1DEEE36B8(void *a1, char a2, uint64_t a3, uint64_t (*a4)(void, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v106 = a7;
  v108 = a4;
  v14 = type metadata accessor for PairingRelationship();
  v107 = *(v14 - 8);
  v15 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DEF8D3F8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v105 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v99 - v23;
  if ((a2 & 1) == 0)
  {
    v101 = a8;
    v102 = a5;
    v38 = *(a6 + 16);
    v39 = MEMORY[0x1E69E7CC0];
    v103 = a1;
    v104 = a3;
    if (v38)
    {
      v111[0] = MEMORY[0x1E69E7CC0];
      sub_1DEEC7D60(0, v38, 0);
      v39 = v111[0];
      v40 = a6 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
      v41 = *(v107 + 72);
      v109 = v19 + 32;
      v110 = v41;
      do
      {
        sub_1DEEE42FC(v40, v17);
        (*(v19 + 16))(v24, v17, v18);
        sub_1DEEE4360(v17);
        v111[0] = v39;
        v43 = *(v39 + 16);
        v42 = *(v39 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_1DEEC7D60(v42 > 1, v43 + 1, 1);
          v39 = v111[0];
        }

        *(v39 + 16) = v43 + 1;
        (*(v19 + 32))(v39 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v43, v24, v18);
        v40 += v110;
        --v38;
      }

      while (v38);
      a1 = v103;
      a3 = v104;
    }

    v44 = sub_1DEEA3B70(v39);

    v45 = a1[2];
    v46 = MEMORY[0x1E69E7CC0];
    if (v45)
    {
      v100 = v44;
      v111[0] = MEMORY[0x1E69E7CC0];
      sub_1DEEC7D60(0, v45, 0);
      v46 = v111[0];
      v47 = a1 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
      v48 = *(v107 + 72);
      v109 = v19 + 32;
      v110 = v48;
      v49 = v105;
      do
      {
        sub_1DEEE42FC(v47, v17);
        (*(v19 + 16))(v49, v17, v18);
        sub_1DEEE4360(v17);
        v111[0] = v46;
        v51 = *(v46 + 16);
        v50 = *(v46 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_1DEEC7D60(v50 > 1, v51 + 1, 1);
          v46 = v111[0];
        }

        *(v46 + 16) = v51 + 1;
        (*(v19 + 32))(v46 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v51, v49, v18);
        v47 += v110;
        --v45;
      }

      while (v45);
      a3 = v104;
      v44 = v100;
    }

    v52 = sub_1DEEA3B70(v46);

    v53 = *(a3 + 24);
    v54 = v102;
    v55 = v106;
    if (__OFSUB__(v53, 1))
    {
      __break(1u);
      goto LABEL_47;
    }

    if (v53 - 1 > v106)
    {
      sub_1DEF4D7C4(v44, v52);
      v57 = v56;

      v58 = qword_1ECDE2E48;
      if ((v57 & 1) != 0 || !v55)
      {
        if (qword_1ECDE2E48 != -1)
        {
          swift_once();
        }

        v59 = sub_1DEF8D508();
        __swift_project_value_buffer(v59, qword_1ECDF5FF8);

        v60 = sub_1DEF8D4D8();
        v61 = sub_1DEF8DCB8();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v112 = v63;
          *v62 = 136315138;
          sub_1DEE29594(a3 + 40, v111);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4310, &qword_1DEF91E80);
          v64 = sub_1DEF8D988();
          v66 = sub_1DEE12A5C(v64, v65, &v112);

          *(v62 + 4) = v66;
          _os_log_impl(&dword_1DEE0F000, v60, v61, "%s provided an acceptible relationship list; continuing sequence", v62, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v63);
          MEMORY[0x1E12CCD70](v63, -1, -1);
          MEMORY[0x1E12CCD70](v62, -1, -1);
        }

        v67 = v108;
        v68 = v103;
        v69 = v55 + 1;
        v70 = v101;
        return sub_1DEEE2FD0(v70, v69, v68, v67, v54);
      }

LABEL_35:
      if (v58 == -1)
      {
LABEL_36:
        v86 = sub_1DEF8D508();
        __swift_project_value_buffer(v86, qword_1ECDF5FF8);

        v87 = sub_1DEF8D4D8();
        v88 = sub_1DEF8DC98();

        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v112 = v90;
          *v89 = 136315138;
          sub_1DEE29594(a3 + 40, v111);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4310, &qword_1DEF91E80);
          v91 = sub_1DEF8D988();
          v93 = sub_1DEE12A5C(v91, v92, &v112);

          *(v89 + 4) = v93;
          _os_log_impl(&dword_1DEE0F000, v87, v88, "%s provided an inconsistent relationship list; retrying sequence", v89, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v90);
          MEMORY[0x1E12CCD70](v90, -1, -1);
          MEMORY[0x1E12CCD70](v89, -1, -1);
        }

        v67 = v108;
        v68 = MEMORY[0x1E69E7CC0];
        v70 = v101;
        v69 = 0;
        return sub_1DEEE2FD0(v70, v69, v68, v67, v54);
      }

LABEL_47:
      swift_once();
      goto LABEL_36;
    }

    if (v53 > 1)
    {
      sub_1DEF4D7C4(v44, v52);
      v85 = v84;

      v58 = qword_1ECDE2E48;
      if ((v85 & 1) == 0 && v55)
      {
        goto LABEL_35;
      }

      if (qword_1ECDE2E48 != -1)
      {
        swift_once();
      }

      v94 = sub_1DEF8D508();
      __swift_project_value_buffer(v94, qword_1ECDF5FF8);

      v72 = sub_1DEF8D4D8();
      v95 = sub_1DEF8DCB8();

      if (!os_log_type_enabled(v72, v95))
      {
LABEL_45:

        return v108(v103, 0);
      }

      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v112 = v75;
      *v74 = 136315394;
      sub_1DEE29594(a3 + 40, v111);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4310, &qword_1DEF91E80);
      v96 = sub_1DEF8D988();
      v98 = sub_1DEE12A5C(v96, v97, &v112);

      *(v74 + 4) = v98;
      *(v74 + 12) = 2050;
      *(v74 + 14) = v55;
      v79 = "%s provided a consistent relationship list after %{public}ld attempts";
      v80 = v95;
      v81 = v72;
      v82 = v74;
      v83 = 22;
    }

    else
    {

      if (qword_1ECDE2E48 != -1)
      {
        swift_once();
      }

      v71 = sub_1DEF8D508();
      __swift_project_value_buffer(v71, qword_1ECDF5FF8);

      v72 = sub_1DEF8D4D8();
      v73 = sub_1DEF8DCB8();

      if (!os_log_type_enabled(v72, v73))
      {
        goto LABEL_45;
      }

      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v112 = v75;
      *v74 = 136315138;
      sub_1DEE29594(a3 + 40, v111);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4310, &qword_1DEF91E80);
      v76 = sub_1DEF8D988();
      v78 = sub_1DEE12A5C(v76, v77, &v112);

      *(v74 + 4) = v78;
      v79 = "%s provided a relationship list after 1 attempt";
      v80 = v73;
      v81 = v72;
      v82 = v74;
      v83 = 12;
    }

    _os_log_impl(&dword_1DEE0F000, v81, v80, v79, v82, v83);
    __swift_destroy_boxed_opaque_existential_1(v75);
    MEMORY[0x1E12CCD70](v75, -1, -1);
    MEMORY[0x1E12CCD70](v74, -1, -1);
    goto LABEL_45;
  }

  if (qword_1ECDE2E48 != -1)
  {
    swift_once();
  }

  v25 = sub_1DEF8D508();
  __swift_project_value_buffer(v25, qword_1ECDF5FF8);

  sub_1DEEE43BC(a1, 1);
  v26 = sub_1DEF8D4D8();
  v27 = a1;
  v28 = sub_1DEF8DCB8();

  sub_1DEEE43C8(v27, 1);
  if (os_log_type_enabled(v26, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v112 = v31;
    *v29 = 136315394;
    sub_1DEE29594(a3 + 40, v111);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4310, &qword_1DEF91E80);
    v32 = sub_1DEF8D988();
    v34 = sub_1DEE12A5C(v32, v33, &v112);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2114;
    v35 = v27;
    v36 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 14) = v36;
    *v30 = v36;
    _os_log_impl(&dword_1DEE0F000, v26, v28, "%s failed: %{public}@", v29, 0x16u);
    sub_1DEEE2A84(v30);
    MEMORY[0x1E12CCD70](v30, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x1E12CCD70](v31, -1, -1);
    MEMORY[0x1E12CCD70](v29, -1, -1);
  }

  return v108(v27, 1);
}

uint64_t sub_1DEEE41E4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return swift_deallocClassInstance();
}

unint64_t sub_1DEEE4290()
{
  result = qword_1ECDE2CF0;
  if (!qword_1ECDE2CF0)
  {
    sub_1DEF8D698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2CF0);
  }

  return result;
}

uint64_t sub_1DEEE42FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PairingRelationship();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEEE4360(uint64_t a1)
{
  v2 = type metadata accessor for PairingRelationship();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1DEEE43BC(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_1DEEE43C8(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1DEEE4424()
{
  v4 = *v0;
  v5 = v0[1];

  MEMORY[0x1E12CB180](14906, 0xE200000000000000);
  v3 = v0[2];
  v1 = sub_1DEF8E2E8();
  MEMORY[0x1E12CB180](v1);

  return v4;
}

uint64_t sub_1DEEE44A0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE47A8, &qword_1DEF93660);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  swift_beginAccess();
  sub_1DEE13C90(v6, a2);
  swift_endAccess();
  return sub_1DEE1425C();
}

uint64_t sub_1DEEE4594()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1DEE1425C();
  }

  return result;
}

uint64_t sub_1DEEE45EC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1DEF8D378();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE47B0, &qword_1DEF93668);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  *(&v21 - v15) = *a1;
  sub_1DEE13B74(a2, &v21 + *(v10 + 56) - v15);
  sub_1DEE154B4(v16, v13);
  v17 = &v13[*(v10 + 56)];
  v18 = type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor();
  (*(v5 + 16))(v8, v17 + *(v18 + 24), v4);
  sub_1DEE152E4(v17);
  v19 = sub_1DEF8D2F8();
  (*(v5 + 8))(v8, v4);
  sub_1DEE15524(v16);
  return v19 & 1;
}

uint64_t sub_1DEEE47C0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1DEEE4834()
{
  result = sub_1DEF8D378();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_1DEEE48B8()
{
  v14 = sub_1DEF8DD08();
  v1 = *(v14 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DEF8DCD8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1DEF8D6D8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1DEE3C630();
  v13[0] = "OverheldConnection";
  v13[1] = v9;
  sub_1DEF8D6C8();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1DEE15340(&qword_1ECDE2C10, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEE1B548(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEF8DE08();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v14);
  v10 = sub_1DEF8DD38();
  v11 = MEMORY[0x1E69E7CC8];
  v0[2] = v10;
  v0[3] = v11;
  v0[4] = 0;
  type metadata accessor for BugCapture();
  v0[5] = swift_allocObject();
  return v0;
}

uint64_t sub_1DEEE4B44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PinnedIdentityManager.__allocating_init(firstLockStateProvider:)(__int128 *a1)
{
  v2 = swift_allocObject();
  PinnedIdentityManager.init(firstLockStateProvider:)(a1);
  return v2;
}

uint64_t PinnedIdentityManager.init(firstLockStateProvider:)(__int128 *a1)
{
  v19 = a1;
  v17 = sub_1DEF8DD08();
  v1 = *(v17 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DEF8DCD8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1DEF8D6D8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v16[1] = sub_1DEE3C630();
  v18 = "ctionDurationMonitor";
  sub_1DEF8D6C8();
  v21 = MEMORY[0x1E69E7CC0];
  v16[4] = sub_1DEE2BB40(&qword_1ECDE2C10, MEMORY[0x1E69E8030]);
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEE1B590(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEF8DE08();
  v9 = *MEMORY[0x1E69E8098];
  v10 = v1 + 104;
  v11 = *(v1 + 104);
  v16[2] = v10;
  v12 = v17;
  v11(v4, v9, v17);
  *(v20 + 64) = sub_1DEF8DD38();
  sub_1DEF8D6C8();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1DEF8DE08();
  v11(v4, v9, v12);
  v13 = sub_1DEF8DD38();
  v14 = v20;
  *(v20 + 72) = v13;
  *(v14 + 16) = [objc_allocWithZone(MEMORY[0x1E69A48A0]) init];
  sub_1DEE2F1AC(v19, v14 + 24);
  return v14;
}

void sub_1DEEE4F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v9[4] = sub_1DEEE5ABC;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DEEE554C;
  v9[3] = &block_descriptor_20_0;
  v8 = _Block_copy(v9);

  [v6 fetchIdentityForPinningWithCompletion_];
  _Block_release(v8);
}

uint64_t sub_1DEEE5040(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1DEF8D698();
  v42 = *(v9 - 8);
  v10 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DEF8D6D8();
  v40 = *(v13 - 8);
  v41 = v13;
  v14 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_1ECDE2E58;
  v18 = a1;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = sub_1DEF8D508();
  __swift_project_value_buffer(v19, qword_1ECDF6028);
  v20 = v18;
  v21 = sub_1DEF8D4D8();
  v22 = sub_1DEF8DCB8();
  if (!os_log_type_enabled(v21, v22))
  {

    v21 = v20;
LABEL_16:

    v32 = *(a3 + 72);
    v33 = swift_allocObject();
    v33[2] = a4;
    v33[3] = a5;
    v33[4] = v20;
    aBlock[4] = sub_1DEEE5AC8;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE3F0C0;
    aBlock[3] = &block_descriptor_26_1;
    v34 = _Block_copy(aBlock);
    v35 = v20;

    sub_1DEF8D6B8();
    v43 = MEMORY[0x1E69E7CC0];
    sub_1DEE2BB40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v16, v12, v34);
    _Block_release(v34);
    (*(v42 + 8))(v12, v9);
    (*(v40 + 8))(v16, v41);
  }

  v37 = a3;
  v38 = a4;
  v39 = a5;
  v23 = swift_slowAlloc();
  *v23 = 134349056;
  v24 = [v20 identityBlob];
  v25 = sub_1DEF8D278();
  v27 = v26;

  v28 = v27 >> 62;
  if ((v27 >> 62) > 1)
  {
    if (v28 != 2)
    {
      sub_1DEE1BFA0(v25, v27);
      v29 = 0;
      goto LABEL_15;
    }

    v30 = *(v25 + 16);
    v36 = *(v25 + 24);
    sub_1DEE1BFA0(v25, v27);
    v29 = v36 - v30;
    if (!__OFSUB__(v36, v30))
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v28)
  {
    sub_1DEE1BFA0(v25, v27);
    v29 = BYTE6(v27);
LABEL_15:
    a4 = v38;
    a5 = v39;
    *(v23 + 4) = v29;

    _os_log_impl(&dword_1DEE0F000, v21, v22, "Fetched IDS identity blob of size: %{public}ld", v23, 0xCu);
    MEMORY[0x1E12CCD70](v23, -1, -1);
    a3 = v37;
    goto LABEL_16;
  }

  result = sub_1DEE1BFA0(v25, v27);
  LODWORD(v29) = HIDWORD(v25) - v25;
  if (!__OFSUB__(HIDWORD(v25), v25))
  {
    v29 = v29;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEEE54B4(void (*a1)(uint64_t, unint64_t), int a2, id a3)
{
  if (a3)
  {
    v4 = [a3 identityBlob];
    v5 = sub_1DEF8D278();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  a1(v5, v7);

  return sub_1DEE2416C(v5, v7);
}

void sub_1DEEE554C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

void PinnedIdentityManager.setIdentityBlob(blob:)()
{
  v1 = *(v0 + 16);
  v2 = sub_1DEF8D268();
  v4[4] = sub_1DEEE5698;
  v4[5] = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1DEEE5838;
  v4[3] = &block_descriptor_9;
  v3 = _Block_copy(v4);
  [v1 pinIdentityBlob:v2 withCompletion:v3];
  _Block_release(v3);
}

void sub_1DEEE5698(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v3 = sub_1DEF8D508();
    __swift_project_value_buffer(v3, qword_1ECDF6028);
    v4 = a1;
    oslog = sub_1DEF8D4D8();
    v5 = sub_1DEF8DC98();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138543362;
      v8 = a1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_1DEE0F000, oslog, v5, "Error while attempting to pin IDS identity blob: %{public}@", v6, 0xCu);
      sub_1DEEE2A84(v7);
      MEMORY[0x1E12CCD70](v7, -1, -1);
      MEMORY[0x1E12CCD70](v6, -1, -1);

      v10 = oslog;
    }

    else
    {

      v10 = a1;
    }
  }
}

void sub_1DEEE5838(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t PinnedIdentityManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return v0;
}

uint64_t PinnedIdentityManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

void sub_1DEEE592C()
{
  v1 = *(*v0 + 16);
  v2 = sub_1DEF8D268();
  v4[4] = sub_1DEEE5698;
  v4[5] = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1DEEE5838;
  v4[3] = &block_descriptor_14_0;
  v3 = _Block_copy(v4);
  [v1 pinIdentityBlob:v2 withCompletion:v3];
  _Block_release(v3);
}

uint64_t sub_1DEEE59F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0, 0xF000000000000000);
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DEEE5AF0()
{
  v1 = OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper____lazy_storage___messagePublisher;
  if (*(v0 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper____lazy_storage___messagePublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper____lazy_storage___messagePublisher);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__messagePublisher);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE48D8, &qword_1DEF93728);
    sub_1DEE1B548(&qword_1ECDE2D20, &qword_1ECDE48D8, &qword_1DEF93728);
    v3 = v0;
    v2 = sub_1DEF8D5B8();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1DEEE5BCC()
{
  v1 = OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper____lazy_storage___devicesDidChangePublisher;
  if (*(v0 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper____lazy_storage___devicesDidChangePublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper____lazy_storage___devicesDidChangePublisher);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__devicesDidChangePublisher);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE48C8, &qword_1DEF93720);
    sub_1DEE1B548(&qword_1ECDE2D10, &unk_1ECDE48C8, &qword_1DEF93720);
    v3 = v0;
    v2 = sub_1DEF8D5B8();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1DEEE5CA8()
{
  v1 = OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper____lazy_storage___didUpdatePairedDevicePublisher;
  if (*(v0 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper____lazy_storage___didUpdatePairedDevicePublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper____lazy_storage___didUpdatePairedDevicePublisher);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__didUpdatePairedDevicePublisher);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE48B8, &qword_1DEF93718);
    sub_1DEE1B548(&unk_1ECDE2D50, &unk_1ECDE48B8, &qword_1DEF93718);
    v3 = v0;
    v2 = sub_1DEF8D5B8();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1DEEE5D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__lock_pairedDevice;
  v3 = *(a1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__lock_pairedDevice);
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = *(v2 + 32);
  return sub_1DEE4650C(v3, v4);
}

uint64_t sub_1DEEE5DD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE48E0, &qword_1DEF93730);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  qword_1ECDE3360 = result;
  return result;
}

id sub_1DEEE5E1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v36 = a2;
  v7 = sub_1DEF8DD08();
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DEF8DCD8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = sub_1DEF8D6D8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = *a1;
  if (*(*a1 + 16) && (v16 = sub_1DEE13224(v36, a3), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
    *a4 = v18;
    return v18;
  }

  else
  {
    v20 = sub_1DEE1EA18(0, &qword_1ECDE2C00, 0x1E69E9610);
    v31[0] = ".IDSServiceWrapper";
    v31[1] = v20;
    sub_1DEF8D6C8();
    v37 = MEMORY[0x1E69E7CC0];
    sub_1DEEE9F58(&qword_1ECDE2C10, MEMORY[0x1E69E8030]);
    v33 = a4;
    v32 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
    sub_1DEE1B548(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0);
    sub_1DEF8DE08();
    (*(v34 + 104))(v10, *MEMORY[0x1E69E8098], v35);
    v21 = sub_1DEF8DD38();
    v22 = objc_allocWithZone(type metadata accessor for IDSServiceWrapper());

    v23 = v21;
    v24 = v36;
    sub_1DEEE6170(v36, a3, v23);
    v26 = v25;

    v27 = v26;
    v28 = v32;
    v29 = *v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *v28;
    sub_1DEF3F2DC(v27, v24, a3, isUniquelyReferenced_nonNull_native);

    *v28 = v37;
    *v33 = v27;
  }

  return result;
}

void sub_1DEEE6170(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper____lazy_storage___messagePublisher] = 0;
  v6 = OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__messagePublisher;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE48D8, &qword_1DEF93728);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *&v3[v6] = sub_1DEF8D598();
  *&v3[OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper____lazy_storage___devicesDidChangePublisher] = 0;
  v10 = OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__devicesDidChangePublisher;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE48C8, &qword_1DEF93720);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *&v3[v10] = sub_1DEF8D598();
  *&v3[OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper____lazy_storage___didUpdatePairedDevicePublisher] = 0;
  v14 = OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__didUpdatePairedDevicePublisher;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE48B8, &qword_1DEF93718);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *&v3[v14] = sub_1DEF8D598();
  v18 = OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper_pairedDeviceLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *&v4[v18] = v19;
  v20 = &v4[OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__lock_pairedDevice];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v20[32] = 0;
  *&v4[OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper_pairedDeviceNotificationToken] = -1;
  v21 = objc_allocWithZone(MEMORY[0x1E69A48A8]);
  v22 = sub_1DEF8D918();
  v23 = [v21 initWithService_];

  if (v23)
  {

    *&v4[OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper_idsService] = v23;
    *&v4[OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper_queue] = a3;
    v30.receiver = v4;
    v30.super_class = type metadata accessor for IDSServiceWrapper();
    v24 = a3;
    v25 = objc_msgSendSuper2(&v30, sel_init);
    v26 = *&v25[OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper_pairedDeviceLock];
    v29 = MEMORY[0x1EEE9AC00](v25);
    v27 = MEMORY[0x1EEE9AC00](v29);

    os_unfair_lock_lock(v26 + 4);
    sub_1DEE15434(v28);
    os_unfair_lock_unlock(v26 + 4);

    [*&v27[OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper_idsService] addDelegate:v27 queue:*&v27[OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper_queue]];
    sub_1DEEE6494();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DEEE6430(uint64_t a1)
{
  sub_1DEEE79C4(v11);
  v2 = v12;
  v3 = a1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__lock_pairedDevice;
  v4 = *(a1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__lock_pairedDevice);
  v5 = *(a1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__lock_pairedDevice + 8);
  v6 = *(a1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__lock_pairedDevice + 16);
  v7 = *(a1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__lock_pairedDevice + 24);
  v8 = v11[1];
  *v3 = v11[0];
  *(v3 + 16) = v8;
  v9 = *(v3 + 32);
  *(v3 + 32) = v2;
  return sub_1DEE46550(v4, v5);
}

uint64_t sub_1DEEE6494()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 addObserver:v0 selector:sel_pairedDeviceStateChangedWithNotification_ name:*MEMORY[0x1E69B3678] object:0];

  v3 = [v1 defaultCenter];
  [v3 addObserver:v0 selector:sel_pairedDeviceStateChangedWithNotification_ name:*MEMORY[0x1E69B3688] object:0];

  v4 = [v1 defaultCenter];
  [v4 addObserver:v0 selector:sel_pairedDeviceStateChangedWithNotification_ name:*MEMORY[0x1E69B3660] object:0];

  v5 = [v1 defaultCenter];
  [v5 addObserver:v0 selector:sel_pairedDeviceStateChangedWithNotification_ name:*MEMORY[0x1E69B3668] object:0];

  v6 = *MEMORY[0x1E69B36A0];
  sub_1DEF8D948();
  v7 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper_queue);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13[4] = sub_1DEEE9FBC;
  v13[5] = v8;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DEF422C8;
  v13[3] = &block_descriptor_9;
  v9 = _Block_copy(v13);

  v10 = sub_1DEF8D998();

  v11 = OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper_pairedDeviceNotificationToken;
  swift_beginAccess();
  notify_register_dispatch((v10 + 32), (v0 + v11), v7, v9);
  swift_endAccess();
  _Block_release(v9);
}

id sub_1DEEE66E8()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper_pairedDeviceNotificationToken;
  swift_beginAccess();
  notify_cancel(*&v0[v2]);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for IDSServiceWrapper();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1DEEE6904@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unsigned __int8 a3@<W3>, uint64_t a4@<X8>)
{
  v7 = a3;
  result = sub_1DEEE695C(a1, a2, &v7);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1DEEE695C(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v89[5] = *MEMORY[0x1E69E9840];
  v8 = sub_1DEF8D788();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = (v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a3;
  v15 = *(v4 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper_queue);
  *v13 = v15;
  (*(v9 + 104))(v13, *MEMORY[0x1E69E8020], v8, v11);
  v16 = v15;
  LOBYTE(v15) = sub_1DEF8D7B8();
  v18 = *(v9 + 8);
  v17 = v9 + 8;
  v18(v13, v8);
  if (v15)
  {
    v89[3] = type metadata accessor for Message();
    v89[4] = sub_1DEEE9F58(&unk_1ECDE48A0, type metadata accessor for Message);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v89);
    sub_1DEE1EAF4(a1, boxed_opaque_existential_1);
    type metadata accessor for PropertyListTypeEncoder();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    *(inited + 24) = 1;
    v21 = sub_1DEE29274(v89);
    v34 = sub_1DEE1187C(v21);
    v36 = v35;
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v89);
    *&v87 = 0x6567617373656DLL;
    *(&v87 + 1) = 0xE700000000000000;
    sub_1DEF8DEC8();
    v88 = MEMORY[0x1E6969080];
    *&v87 = v34;
    *(&v87 + 1) = v36;
    sub_1DEE117C0(&v87, v86);
    sub_1DEE1BFF4(v34, v36);
    v37 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v85[1] = v37;
    sub_1DEF3F454(v86, v89, isUniquelyReferenced_nonNull_native);
    sub_1DEEBC62C(v89);
    if (!*(sub_1DEEE73BC(a2) + 2))
    {

      if (qword_1ECDE2E38 != -1)
      {
        swift_once();
      }

      v59 = sub_1DEF8D508();
      __swift_project_value_buffer(v59, qword_1ECDF5FC8);

      v60 = sub_1DEF8D4D8();
      v61 = sub_1DEF8DC98();

      if (!os_log_type_enabled(v60, v61))
      {
        goto LABEL_28;
      }

      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v89[0] = v63;
      *v62 = 136446210;
      v64 = sub_1DEF8DBF8();
      v66 = sub_1DEE12A5C(v64, v65, v89);

      *(v62 + 4) = v66;
      _os_log_impl(&dword_1DEE0F000, v60, v61, "Unable to find matching IDS identifier for destinations: %{public}s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x1E12CCD70](v63, -1, -1);
      v67 = v62;
      goto LABEL_27;
    }

    v85[0] = v36;
    v39 = *(v4 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper_idsService);
    v40 = sub_1DEF8D828();

    v41 = sub_1DEF8DBE8();

    v42 = sub_1DEF8D828();
    v89[0] = 0;
    *&v87 = 0;
    LODWORD(v39) = [v39 sendMessage:v40 toDestinations:v41 priority:-100 * v14 + 300 options:v42 identifier:v89 error:&v87];

    v43 = v89[0];
    if (v39)
    {
      v44 = qword_1ECDE2E38;
      v45 = v87;
      if (v43)
      {
        v46 = v43;
        v47 = v85[0];
        if (v44 != -1)
        {
          swift_once();
        }

        v48 = sub_1DEF8D508();
        __swift_project_value_buffer(v48, qword_1ECDF5FC8);
        v49 = v46;

        v50 = sub_1DEF8D4D8();
        v51 = sub_1DEF8DCB8();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v89[0] = v54;
          *v52 = 138543618;
          *(v52 + 4) = v49;
          *v53 = v43;
          *(v52 + 12) = 2082;
          v55 = v49;
          v56 = sub_1DEF8DBF8();
          v58 = sub_1DEE12A5C(v56, v57, v89);

          *(v52 + 14) = v58;
          _os_log_impl(&dword_1DEE0F000, v50, v51, "Sent IDS message %{public}@ to %{public}s", v52, 0x16u);
          sub_1DEE171B4(v53, &unk_1ECDE4880, &qword_1DEF93420);
          MEMORY[0x1E12CCD70](v53, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v54);
          MEMORY[0x1E12CCD70](v54, -1, -1);
          MEMORY[0x1E12CCD70](v52, -1, -1);
          sub_1DEE1BFA0(v34, v47);
        }

        else
        {
          sub_1DEE1BFA0(v34, v47);
        }

        v17 = 1;
        goto LABEL_6;
      }

      v36 = v85[0];
      if (v44 != -1)
      {
        swift_once();
      }

      v82 = sub_1DEF8D508();
      __swift_project_value_buffer(v82, qword_1ECDF5FC8);
      v60 = sub_1DEF8D4D8();
      v83 = sub_1DEF8DC98();
      if (!os_log_type_enabled(v60, v83))
      {
LABEL_28:

        sub_1DEEE9F04();
        v17 = swift_allocError();
        sub_1DEE1BFA0(v34, v36);
        goto LABEL_6;
      }

      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_1DEE0F000, v60, v83, "Failed to retrieve identifier for message", v84, 2u);
      v67 = v84;
LABEL_27:
      MEMORY[0x1E12CCD70](v67, -1, -1);
      goto LABEL_28;
    }

    v68 = v87;
    v69 = v43;
    v17 = sub_1DEF8D148();

    swift_willThrow();
    if (qword_1ECDE2E38 != -1)
    {
      swift_once();
    }

    v70 = sub_1DEF8D508();
    __swift_project_value_buffer(v70, qword_1ECDF5FC8);
    v71 = v17;
    v72 = sub_1DEF8D4D8();
    v73 = sub_1DEF8DC98();

    v74 = os_log_type_enabled(v72, v73);
    v75 = v85[0];
    if (v74)
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v89[0] = v77;
      *v76 = 136446210;
      *&v87 = v17;
      v78 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
      v79 = sub_1DEF8D988();
      v81 = sub_1DEE12A5C(v79, v80, v89);

      *(v76 + 4) = v81;
      _os_log_impl(&dword_1DEE0F000, v72, v73, "Failed to send message: %{public}s", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v77);
      MEMORY[0x1E12CCD70](v77, -1, -1);
      MEMORY[0x1E12CCD70](v76, -1, -1);
    }

    sub_1DEE1BFA0(v34, v75);
  }

  else
  {
    __break(1u);
    swift_once();
    v22 = sub_1DEF8D508();
    __swift_project_value_buffer(v22, qword_1ECDF5FC8);
    v23 = v17;
    v24 = sub_1DEF8D4D8();
    v25 = sub_1DEF8DC98();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v89[0] = v27;
      *v26 = 136446210;
      *&v87 = v17;
      v28 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
      v29 = sub_1DEF8D988();
      v31 = sub_1DEE12A5C(v29, v30, v89);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_1DEE0F000, v24, v25, "Failed to encode message: %{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1E12CCD70](v27, -1, -1);
      MEMORY[0x1E12CCD70](v26, -1, -1);
    }
  }

LABEL_6:
  v32 = *MEMORY[0x1E69E9840];
  return v17;
}

id sub_1DEEE73BC(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper_idsService) devices];
  if (v3)
  {
    v4 = v3;
    sub_1DEE1EA18(0, &qword_1ECDE2B70, 0x1E69A4848);
    v5 = sub_1DEF8DAD8();

    if (v5 >> 62)
    {
LABEL_37:
      v41 = v5 & 0xFFFFFFFFFFFFFF8;
      v6 = sub_1DEF8DE68();
      v38 = v5;
      if (v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v41 = v5 & 0xFFFFFFFFFFFFFF8;
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v38 = v5;
      if (v6)
      {
LABEL_4:
        v7 = 0;
        v40 = v5 & 0xC000000000000001;
        v5 += 32;
        v8 = a1 + 56;
        v39 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (v40)
          {
            v9 = MEMORY[0x1E12CB6E0](v7, v38);
          }

          else
          {
            if (v7 >= *(v41 + 16))
            {
              goto LABEL_36;
            }

            v9 = *(v5 + 8 * v7);
          }

          v10 = v9;
          if (__OFADD__(v7++, 1))
          {
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

          result = [v9 uniqueIDOverride];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v13 = result;
          v14 = sub_1DEF8D948();
          v16 = v15;

          if (*(a1 + 16) && (v17 = *(a1 + 40), sub_1DEF8E7A8(), sub_1DEF8D9B8(), v18 = sub_1DEF8E7F8(), v19 = -1 << *(a1 + 32), v20 = v18 & ~v19, ((*(v8 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0))
          {
            v21 = ~v19;
            while (1)
            {
              v22 = (*(a1 + 48) + 16 * v20);
              v23 = *v22 == v14 && v22[1] == v16;
              if (v23 || (sub_1DEF8E4E8() & 1) != 0)
              {
                break;
              }

              v20 = (v20 + 1) & v21;
              if (((*(v8 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
              {
                goto LABEL_19;
              }
            }

            v24 = IDSCopyIDForDevice();
            if (!v24)
            {
              goto LABEL_21;
            }

            v25 = v24;
            v26 = sub_1DEF8D948();
            v28 = v27;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v39 = sub_1DEF3805C(0, *(v39 + 2) + 1, 1, v39);
            }

            v30 = *(v39 + 2);
            v29 = *(v39 + 3);
            if (v30 >= v29 >> 1)
            {
              v39 = sub_1DEF3805C((v29 > 1), v30 + 1, 1, v39);
            }

            *(v39 + 2) = v30 + 1;
            v31 = &v39[16 * v30];
            *(v31 + 4) = v26;
            *(v31 + 5) = v28;
            if (v7 == v6)
            {
              goto LABEL_39;
            }
          }

          else
          {
LABEL_19:

LABEL_21:

            if (v7 == v6)
            {
              goto LABEL_39;
            }
          }
        }
      }
    }

    v39 = MEMORY[0x1E69E7CC0];
LABEL_39:

    v36 = sub_1DEEA3AD8(v39);

    v37 = sub_1DEEE7790(v36);

    return v37;
  }

  else
  {
    if (qword_1ECDE2E38 != -1)
    {
      swift_once();
    }

    v32 = sub_1DEF8D508();
    __swift_project_value_buffer(v32, qword_1ECDF5FC8);
    v33 = sub_1DEF8D4D8();
    v34 = sub_1DEF8DC98();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1DEE0F000, v33, v34, "Unable to find any IDS devices", v35, 2u);
      MEMORY[0x1E12CCD70](v35, -1, -1);
    }

    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t sub_1DEEE7790(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4898, &unk_1DEF93708);
    v2 = sub_1DEF8DF08();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 56;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v22 = *v13;
    v23 = v13[1];

    swift_dynamicCast();
    v14 = *(v2 + 40);
    result = sub_1DEF8DEA8();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v5 &= v5 - 1;
    v11 = *(v2 + 48) + 40 * v10;
    *(v11 + 32) = v26;
    *v11 = v24;
    *(v11 + 16) = v25;
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 56 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1DEEE79C4(uint64_t a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper_idsService) devices];
  if (v3)
  {
    v4 = v3;
    v44 = a1;
    v5 = sub_1DEE1EA18(0, &qword_1ECDE2B70, 0x1E69A4848);
    v6 = sub_1DEF8DAD8();

    if (qword_1ECDE2E38 != -1)
    {
LABEL_32:
      swift_once();
    }

    v7 = sub_1DEF8D508();
    __swift_project_value_buffer(v7, qword_1ECDF5FC8);

    v8 = sub_1DEF8D4D8();
    v9 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v45[0] = v11;
      *v10 = 136446210;
      v12 = MEMORY[0x1E12CB290](v6, v5);
      v14 = sub_1DEE12A5C(v12, v13, v45);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1DEE0F000, v8, v9, "Finding active paired device in devices: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1E12CCD70](v11, -1, -1);
      MEMORY[0x1E12CCD70](v10, -1, -1);
    }

    if (v6 >> 62)
    {
      v5 = sub_1DEF8DE68();
      if (v5)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v5 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
LABEL_7:
        v15 = 0;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x1E12CB6E0](v15, v6);
          }

          else
          {
            if (v15 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v16 = *(v6 + 8 * v15 + 32);
          }

          v17 = v16;
          v18 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          if ([v16 isLocallyPaired] && (objc_msgSend(v17, sel_isActive) & 1) != 0)
          {
            break;
          }

          ++v15;
          if (v18 == v5)
          {
            goto LABEL_34;
          }
        }

        v23 = [v17 uniqueIDOverride];
        if (v23)
        {
          v24 = v23;
          v25 = sub_1DEF8D948();
          v27 = v26;

          v28 = [v17 name];
          if (v28)
          {
            v29 = v28;

            v30 = sub_1DEF8D948();
            v32 = v31;

            v33 = [v17 deviceType];
            if (v33 >= 7)
            {
              v34 = 0;
            }

            else
            {
              v34 = 0x3040101010200uLL >> (8 * v33);
            }

            v35 = sub_1DEF8D4D8();
            v36 = sub_1DEF8DCB8();

            if (os_log_type_enabled(v35, v36))
            {
              v37 = swift_slowAlloc();
              v42 = swift_slowAlloc();
              v47 = v42;
              *v37 = 136446210;
              v45[0] = v25;
              v45[1] = v27;
              v45[2] = v30;
              v45[3] = v32;
              v46 = v34;

              v38 = PairedDevice.description.getter();
              v43 = v30;
              v40 = v39;

              v41 = sub_1DEE12A5C(v38, v40, &v47);
              v30 = v43;

              *(v37 + 4) = v41;
              _os_log_impl(&dword_1DEE0F000, v35, v36, "IDS PairedDevice is %{public}s", v37, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v42);
              MEMORY[0x1E12CCD70](v42, -1, -1);
              MEMORY[0x1E12CCD70](v37, -1, -1);
            }

            *v44 = v25;
            *(v44 + 8) = v27;
            *(v44 + 16) = v30;
            *(v44 + 24) = v32;
            *(v44 + 32) = v34;
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }
    }

LABEL_34:

    *(v44 + 32) = 0;
    *v44 = 0u;
    *(v44 + 16) = 0u;
    return;
  }

  if (qword_1ECDE2E38 != -1)
  {
    swift_once();
  }

  v19 = sub_1DEF8D508();
  __swift_project_value_buffer(v19, qword_1ECDF5FC8);
  v20 = sub_1DEF8D4D8();
  v21 = sub_1DEF8DC98();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1DEE0F000, v20, v21, "Unable to find any IDS devices; cannot find paired device", v22, 2u);
    MEMORY[0x1E12CCD70](v22, -1, -1);
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
}

uint64_t sub_1DEEE82F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper_pairedDeviceLock);

  os_unfair_lock_lock(v1 + 4);
  sub_1DEE15434(v2);
  os_unfair_lock_unlock(v1 + 4);

  v3 = v7;
  if (v6 == 1)
  {
    v4 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__didUpdatePairedDevicePublisher);
    sub_1DEF8D588();
    v3 = v7;
  }

  return sub_1DEE46550(v3, v8);
}

uint64_t sub_1DEEE8424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__lock_pairedDevice);
  v3 = *(a1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__lock_pairedDevice + 8);
  v4 = *(a1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__lock_pairedDevice + 16);
  v5 = *(a1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__lock_pairedDevice + 24);
  v49 = a1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__lock_pairedDevice;
  v59 = *(a1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__lock_pairedDevice + 32);
  sub_1DEE4650C(v2, v3);
  sub_1DEEE79C4(&v61);
  v7 = v61;
  v6 = v62;
  v8 = v63;
  v9 = v64;
  v58 = v65;
  if (qword_1ECDE2E38 != -1)
  {
    swift_once();
  }

  v10 = sub_1DEF8D508();
  __swift_project_value_buffer(v10, qword_1ECDF5FC8);
  sub_1DEE4650C(v2, v3);
  v11 = v6;
  v50 = v8;
  v12 = v6;
  v13 = v7;
  sub_1DEE4650C(v7, v11);
  v14 = sub_1DEF8D4D8();
  v15 = sub_1DEF8DCB8();
  v16 = v9;
  v17 = v15;
  v54 = v3;
  v55 = v2;
  v18 = v3;
  v19 = v5;
  v20 = v16;
  sub_1DEE46550(v2, v18);
  sub_1DEE46550(v7, v12);
  v48 = v17;
  log = v14;
  v21 = os_log_type_enabled(v14, v17);
  v22 = v4;
  v56 = v20;
  v57 = v19;
  v52 = v12;
  if (v21)
  {
    v23 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v66 = v47;
    *v23 = 136446466;
    v61 = v2;
    v62 = v54;
    v63 = v4;
    v64 = v19;
    v65 = v59;
    sub_1DEE4650C(v2, v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AB0, &unk_1DEF90930);
    v24 = sub_1DEF8D988();
    v26 = sub_1DEE12A5C(v24, v25, &v66);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2082;
    v61 = v13;
    v62 = v12;
    v63 = v50;
    v64 = v20;
    v65 = v58;
    sub_1DEE4650C(v13, v12);
    v27 = sub_1DEF8D988();
    v29 = sub_1DEE12A5C(v27, v28, &v66);

    *(v23 + 14) = v29;
    v30 = v50;
    v31 = v13;
    v22 = v4;
    _os_log_impl(&dword_1DEE0F000, log, v48, "Updating paired device from %{public}s to %{public}s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v47, -1, -1);
    v32 = v58;
    MEMORY[0x1E12CCD70](v23, -1, -1);
  }

  else
  {

    v30 = v50;
    v31 = v13;
    v32 = v58;
  }

  if (!v54)
  {
    v33 = v52;
    if (!v52)
    {
      v34 = v55;
      v38 = v57;
      LOBYTE(v32) = v59;
      sub_1DEE4650C(v55, 0);
      result = sub_1DEE46550(v55, 0);
      v36 = 0;
      v33 = 0;
      v37 = v22;
      goto LABEL_23;
    }

    v39 = v56;
    sub_1DEE4650C(v31, v52);
    v40 = v31;
    v41 = v30;
    v42 = v55;
    goto LABEL_19;
  }

  v33 = v52;
  if (!v52)
  {
    v39 = v56;
    sub_1DEE4650C(v31, 0);
    v40 = v31;
    v41 = v30;
    v42 = v55;
    sub_1DEE4650C(v55, v54);

LABEL_19:
    sub_1DEE46550(v42, v54);
    sub_1DEE46550(v40, v33);
    v30 = v41;
    v31 = v40;
    v38 = v39;
LABEL_22:
    v43 = *v49;
    v44 = *(v49 + 8);
    v45 = *(v49 + 24);
    v60 = *(v49 + 16);
    *v49 = v31;
    *(v49 + 8) = v33;
    *(v49 + 16) = v30;
    *(v49 + 24) = v38;
    v34 = v31;
    v37 = v30;
    v46 = *(v49 + 32);
    *(v49 + 32) = v32;
    sub_1DEE4650C(v34, v33);
    result = sub_1DEE46550(v43, v44);
    v36 = 1;
    goto LABEL_23;
  }

  v34 = v55;
  if ((v55 != v31 || v54 != v52) && (sub_1DEF8E4E8() & 1) == 0 || (v22 != v30 || v57 != v56) && (sub_1DEF8E4E8() & 1) == 0)
  {
    sub_1DEE4650C(v55, v54);
    sub_1DEE4650C(v31, v52);
    sub_1DEE4650C(v55, v54);
    sub_1DEE46550(v31, v52);

    sub_1DEE46550(v55, v54);
    goto LABEL_21;
  }

  sub_1DEE4650C(v55, v54);
  sub_1DEE4650C(v31, v52);
  sub_1DEE4650C(v55, v54);
  sub_1DEE46550(v31, v52);

  sub_1DEE46550(v55, v54);
  if (v59 != v32)
  {
LABEL_21:
    sub_1DEE46550(v55, v54);
    v38 = v56;
    goto LABEL_22;
  }

  LOBYTE(v32) = v59;
  result = sub_1DEE46550(v31, v52);
  v36 = 0;
  v33 = v54;
  v37 = v22;
  v38 = v57;
LABEL_23:
  *a2 = v36;
  *(a2 + 8) = v34;
  *(a2 + 16) = v33;
  *(a2 + 24) = v37;
  *(a2 + 32) = v38;
  *(a2 + 40) = v32;
  return result;
}

void sub_1DEEE8B14()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1ECDE2E38 != -1)
    {
      swift_once();
    }

    v2 = sub_1DEF8D508();
    __swift_project_value_buffer(v2, qword_1ECDF5FC8);
    v3 = sub_1DEF8D4D8();
    v4 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DEE0F000, v3, v4, "Paired watch updated, will check for pairing change", v5, 2u);
      MEMORY[0x1E12CCD70](v5, -1, -1);
    }

    sub_1DEEE82F8();
  }
}

void sub_1DEEE8C28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v59 - v12;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AD0, &qword_1DEF90988);
  v14 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v65 = &v59 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4E20, &unk_1DEF95B10);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v67 = &v59 - v18;
  v19 = type metadata accessor for Message();
  v66 = *(v19 - 8);
  v20 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v63 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECDE2E38 != -1)
  {
    swift_once();
  }

  v22 = sub_1DEF8D508();
  v23 = __swift_project_value_buffer(v22, qword_1ECDF5FC8);
  v24 = a3;
  v69 = v23;
  v25 = sub_1DEF8D4D8();
  v26 = sub_1DEF8DC78();

  if (!os_log_type_enabled(v25, v26))
  {

    goto LABEL_12;
  }

  v60 = v19;
  v61 = v4;
  v62 = a1;
  v27 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  v70[0] = v28;
  *v27 = 136446210;
  if (!a3)
  {
    goto LABEL_10;
  }

  v29 = [v24 originalGUID];
  if (!v29)
  {
    a3 = 0;
LABEL_10:
    v32 = 0;
    goto LABEL_11;
  }

  v30 = v29;
  a3 = sub_1DEF8D948();
  v32 = v31;

LABEL_11:
  v71 = a3;
  v72 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3ED0, &qword_1DEF92030);
  v33 = sub_1DEF8D988();
  v35 = sub_1DEE12A5C(v33, v34, v70);

  *(v27 + 4) = v35;
  _os_log_impl(&dword_1DEE0F000, v25, v26, "IDS incomingResourceAt:%{public}s", v27, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v28);
  MEMORY[0x1E12CCD70](v28, -1, -1);
  MEMORY[0x1E12CCD70](v27, -1, -1);

  a1 = v62;
  v4 = v61;
  v19 = v60;
LABEL_12:
  if (a2)
  {
    v75 = 0x6567617373656DLL;
    v76 = 0xE700000000000000;
    sub_1DEF8DEC8();
    if (*(a2 + 16) && (v36 = sub_1DEEAF640(&v71), (v37 & 1) != 0))
    {
      sub_1DEE12F7C(*(a2 + 56) + 32 * v36, v70);
      sub_1DEEBC62C(&v71);
      if (swift_dynamicCast())
      {
        v39 = v75;
        v38 = v76;
        type metadata accessor for OPACKCoder();
        sub_1DEE115C8(&v75);
        sub_1DEE12F7C(&v75, v73);
        v52 = MEMORY[0x1E69E7CC0];
        v53 = sub_1DEE1DAAC(MEMORY[0x1E69E7CC0]);
        v71 = v52;
        v72 = v53;
        v73[4] = 0;
        v74 = 1;
        v70[3] = &type metadata for PropertyListTypeDecoder.RootDecoder;
        v70[4] = sub_1DEE1DC98();
        v70[0] = swift_allocObject();
        sub_1DEE1DCEC(&v71, v70[0] + 16);
        v54 = v67;
        Message.init(from:)(v70, v67);
        sub_1DEE1EBB4(&v71);
        __swift_destroy_boxed_opaque_existential_1(&v75);
        (*(v66 + 56))(v54, 0, 1, v19);
        v55 = v63;
        sub_1DEEE9E30(v54, v63);
        v56 = *(v4 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__messagePublisher);
        v57 = *(v64 + 48);
        v58 = v65;
        sub_1DEE1EAF4(v55, v65);
        sub_1DEE2C3D8(a1, v58 + v57);
        sub_1DEF8D588();
        sub_1DEE1BFA0(v39, v38);
        sub_1DEE171B4(v58, &qword_1ECDE3AD0, &qword_1DEF90988);
        sub_1DEE1EB58(v55);
        return;
      }
    }

    else
    {
      sub_1DEEBC62C(&v71);
    }

    sub_1DEE2C3D8(a1, v13);

    v40 = sub_1DEF8D4D8();
    v41 = sub_1DEF8DC98();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v71 = v43;
      *v42 = 136315394;
      sub_1DEE2C3D8(v13, v68);
      v44 = sub_1DEF8D988();
      v46 = v45;
      sub_1DEE171B4(v13, &qword_1ECDE4890, &qword_1DEF90990);
      v47 = sub_1DEE12A5C(v44, v46, &v71);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2080;

      v48 = sub_1DEF8D868();
      v50 = v49;

      v51 = sub_1DEE12A5C(v48, v50, &v71);

      *(v42 + 14) = v51;
      _os_log_impl(&dword_1DEE0F000, v40, v41, "Message has no payload, url:%s, metadata.keys:%s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v43, -1, -1);
      MEMORY[0x1E12CCD70](v42, -1, -1);
    }

    else
    {

      sub_1DEE171B4(v13, &qword_1ECDE4890, &qword_1DEF90990);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1DEEE9470(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AD0, &qword_1DEF90988);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4E20, &unk_1DEF95B10);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v56 - v16;
  v18 = type metadata accessor for Message();
  v60 = *(v18 - 8);
  v61 = v18;
  v19 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v59 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECDE2E38 != -1)
  {
    swift_once();
  }

  v21 = sub_1DEF8D508();
  v22 = __swift_project_value_buffer(v21, qword_1ECDF5FC8);
  v23 = a2;
  v62 = v22;
  v24 = sub_1DEF8D4D8();
  v25 = sub_1DEF8DC78();

  if (os_log_type_enabled(v24, v25))
  {
    v57 = v17;
    v58 = v13;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v63[0] = v27;
    *v26 = 136446210;
    if (a2)
    {
      v56 = v3;
      v28 = v6;
      v29 = v9;
      v30 = [v23 originalGUID];
      if (v30)
      {
        v31 = v30;
        a2 = sub_1DEF8D948();
        v33 = v32;
      }

      else
      {
        a2 = 0;
        v33 = 0;
      }

      v9 = v29;
      v6 = v28;
      v3 = v56;
    }

    else
    {
      v33 = 0;
    }

    v64 = a2;
    v65 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3ED0, &qword_1DEF92030);
    v34 = sub_1DEF8D988();
    v36 = sub_1DEE12A5C(v34, v35, v63);

    *(v26 + 4) = v36;
    _os_log_impl(&dword_1DEE0F000, v24, v25, "IDS incomingMessage:%{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x1E12CCD70](v27, -1, -1);
    MEMORY[0x1E12CCD70](v26, -1, -1);

    v13 = v58;
    v17 = v57;
  }

  else
  {
  }

  if (a1)
  {
    v68 = 0x6567617373656DLL;
    v69 = 0xE700000000000000;
    sub_1DEF8DEC8();
    if (*(a1 + 16) && (v37 = sub_1DEEAF640(&v64), (v38 & 1) != 0))
    {
      sub_1DEE12F7C(*(a1 + 56) + 32 * v37, v63);
      sub_1DEEBC62C(&v64);
      if (swift_dynamicCast())
      {
        v40 = v68;
        v39 = v69;
        type metadata accessor for OPACKCoder();
        sub_1DEE115C8(&v68);
        sub_1DEE12F7C(&v68, v66);
        v49 = v17;
        v50 = MEMORY[0x1E69E7CC0];
        v51 = sub_1DEE1DAAC(MEMORY[0x1E69E7CC0]);
        v64 = v50;
        v65 = v51;
        v66[4] = 0;
        v67 = 1;
        v63[3] = &type metadata for PropertyListTypeDecoder.RootDecoder;
        v63[4] = sub_1DEE1DC98();
        v63[0] = swift_allocObject();
        sub_1DEE1DCEC(&v64, v63[0] + 16);
        Message.init(from:)(v63, v49);
        sub_1DEE1EBB4(&v64);
        __swift_destroy_boxed_opaque_existential_1(&v68);
        (*(v60 + 56))(v49, 0, 1, v61);
        v52 = v59;
        sub_1DEEE9E30(v49, v59);
        v53 = *(v3 + OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper__messagePublisher);
        v54 = sub_1DEF8D1E8();
        (*(*(v54 - 8) + 56))(v13, 1, 1, v54);
        v55 = *(v6 + 48);
        sub_1DEE1EAF4(v52, v9);
        sub_1DEEE9E94(v13, &v9[v55]);
        sub_1DEF8D588();
        sub_1DEE1BFA0(v40, v39);
        sub_1DEE171B4(v9, &qword_1ECDE3AD0, &qword_1DEF90988);
        sub_1DEE1EB58(v52);
        return;
      }
    }

    else
    {
      sub_1DEEBC62C(&v64);
    }

    v41 = sub_1DEF8D4D8();
    v42 = sub_1DEF8DC98();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v64 = v44;
      *v43 = 136315138;

      v45 = sub_1DEF8D868();
      v47 = v46;

      v48 = sub_1DEE12A5C(v45, v47, &v64);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_1DEE0F000, v41, v42, "Message has no payload, message.keys:%s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x1E12CCD70](v44, -1, -1);
      MEMORY[0x1E12CCD70](v43, -1, -1);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1DEEE9BFC(uint64_t a1, unint64_t a2, char a3, NSObject *a4)
{
  if (qword_1ECDE2E38 != -1)
  {
    swift_once();
  }

  v8 = sub_1DEF8D508();
  __swift_project_value_buffer(v8, qword_1ECDF5FC8);

  v9 = a4;
  oslog = sub_1DEF8D4D8();
  v10 = sub_1DEF8DC78();

  if (!os_log_type_enabled(oslog, v10))
  {

    v17 = a4;

    goto LABEL_9;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v19 = v13;
  *v11 = 136446722;

  if (a2)
  {
    *(v11 + 4) = sub_1DEE12A5C(a1, a2, &v19);
    *(v11 + 12) = 1026;
    *(v11 + 14) = a3 & 1;
    *(v11 + 18) = 2114;
    if (a4)
    {
      v14 = a4;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      v16 = v15;
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    *(v11 + 20) = v15;
    *v12 = v16;
    _os_log_impl(&dword_1DEE0F000, oslog, v10, "IDS message:%{public}s didSendWithSuccess:%{BOOL,public}d error:%{public}@", v11, 0x1Cu);
    sub_1DEE171B4(v12, &unk_1ECDE4880, &qword_1DEF93420);
    MEMORY[0x1E12CCD70](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1E12CCD70](v13, -1, -1);
    MEMORY[0x1E12CCD70](v11, -1, -1);
    v17 = oslog;

LABEL_9:

    return;
  }

  __break(1u);
}

uint64_t sub_1DEEE9E30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Message();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEEE9E94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DEEE9F04()
{
  result = qword_1ECDE48B0;
  if (!qword_1ECDE48B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE48B0);
  }

  return result;
}

uint64_t sub_1DEEE9F58(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DEEE9FD8()
{
  result = qword_1ECDE48E8;
  if (!qword_1ECDE48E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE48E8);
  }

  return result;
}

uint64_t sub_1DEEEA02C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v5 = *(v0 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A58, &qword_1DEF937F0);
    sub_1DEE1B548(&qword_1ECDE2D28, &qword_1ECDE3A58, &qword_1DEF937F0);
    v2 = v0;
    v1 = sub_1DEF8D5B8();
    v3 = *(v0 + 24);
    *(v2 + 24) = v1;
  }

  return v1;
}

uint64_t sub_1DEEEA0F0(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t (*sub_1DEEEA100(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1DEEEA02C();
  return sub_1DEEEA148;
}

uint64_t sub_1DEEEA148(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
}

void sub_1DEEEA158(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  os_unfair_lock_lock(v3 + 6);
  sub_1DEEEA270(&v3[4], &v4);
  os_unfair_lock_unlock(v3 + 6);
  *a2 = v4;
}

void sub_1DEEEA1B8(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  os_unfair_lock_lock((v3 + 24));
  sub_1DEEEA448((v3 + 16), v2);

  os_unfair_lock_unlock((v3 + 24));
}

BOOL sub_1DEEEA21C()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_1DEEEA270(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 6);
  return v3;
}

uint64_t sub_1DEEEA270@<X0>(uint64_t result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v2 + 32;
    v6 = MEMORY[0x1E69E7CC0];
    while (v4 < *(v2 + 16))
    {
      sub_1DEE29594(v5, &v15);
      v7 = v16;
      v8 = v17;
      __swift_project_boxed_opaque_existential_1(&v15, v16);
      if ((*(v8 + 16))(v7, v8))
      {
        result = __swift_destroy_boxed_opaque_existential_1(&v15);
      }

      else
      {
        sub_1DEE2F1AC(&v15, v14);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = v6;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DEEC7E68(0, *(v6 + 16) + 1, 1);
          v6 = v18;
        }

        v11 = *(v6 + 16);
        v10 = *(v6 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1DEEC7E68((v10 > 1), v11 + 1, 1);
          v6 = v18;
        }

        *(v6 + 16) = v11 + 1;
        result = sub_1DEE2F1AC(v14, v6 + 40 * v11 + 32);
      }

      ++v4;
      v5 += 40;
      if (v3 == v4)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_13:
    v12 = *(v6 + 16);

    *a2 = v12 == 0;
  }

  return result;
}

void sub_1DEEEA3E8(char a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  sub_1DEEEA448((v3 + 16), a1);

  os_unfair_lock_unlock((v3 + 24));
}

uint64_t sub_1DEEEA448(void *a1, char a2)
{
  v2 = a1;
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1DEEC7E68(0, v4, 0);
    v6 = v19;
    v7 = v3 + 32;
    do
    {
      sub_1DEE29594(v7, v15);
      sub_1DEE29594(v15, &v16);
      v8 = v17;
      v9 = v18;
      __swift_mutable_project_boxed_opaque_existential_1(&v16, v17);
      (*(v9 + 24))(a2 & 1, v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v15);
      v19 = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1DEEC7E68((v10 > 1), v11 + 1, 1);
        v6 = v19;
      }

      *(v6 + 16) = v11 + 1;
      sub_1DEE2F1AC(&v16, v6 + 40 * v11 + 32);
      v7 += 40;
      --v4;
    }

    while (v4);

    v2 = v14;
  }

  else
  {
    v13 = *a1;

    v6 = MEMORY[0x1E69E7CC0];
  }

  *v2 = v6;
  return result;
}

void (*sub_1DEEEA5A8(uint64_t a1))(os_unfair_lock_s **a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  os_unfair_lock_lock(v3 + 6);
  sub_1DEEEA270(&v3[4], &v5);
  *(a1 + 8) = 0;
  os_unfair_lock_unlock(v3 + 6);
  *(a1 + 16) = v5;
  return sub_1DEEEA628;
}

void sub_1DEEEA628(os_unfair_lock_s **a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  os_unfair_lock_lock(*a1 + 6);
  sub_1DEEEA448(&v1[4]._os_unfair_lock_opaque, v3);

  os_unfair_lock_unlock(v1 + 6);
}

void *MuxingZoneAdvertiser.__allocating_init(zoneAdvertisers:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1DEEEADF4(a1);

  return v2;
}

void *MuxingZoneAdvertiser.init(zoneAdvertisers:)(uint64_t a1)
{
  v1 = sub_1DEEEADF4(a1);

  return v1;
}

uint64_t sub_1DEEEA704()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 32);

    sub_1DEF8D588();
  }

  return result;
}

void sub_1DEEEA780()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_1DEEEB024(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_1DEEEA7D4(uint64_t result, uint64_t a2)
{
  v2 = *(*result + 16);
  if (v2)
  {
    v4 = *result + 32;
    do
    {
      sub_1DEE29594(v4, v7);
      v5 = v8;
      v6 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      (*(v6 + 40))(a2, v5, v6);
      result = __swift_destroy_boxed_opaque_existential_1(v7);
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_1DEEEA880()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    do
    {
      sub_1DEE29594(v4, v7);
      v5 = v8;
      v6 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      (*(v6 + 48))(v5, v6);
      __swift_destroy_boxed_opaque_existential_1(v7);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  os_unfair_lock_unlock((v1 + 24));
}

BOOL sub_1DEEEA928()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_1DEEEB040((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

uint64_t sub_1DEEEA984@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v19 = a3;
  v5 = *a1;
  v6 = *(*a1 + 16);
  result = *a1 + 32;
  v8 = -v6;
  v9 = -1;
  while (1)
  {
    v10 = v8 + v9;
    if (v8 + v9 == -1)
    {
LABEL_5:
      *a4 = v10 != -1;
      return result;
    }

    if (++v9 >= *(v5 + 16))
    {
      break;
    }

    v11 = result + 40;
    sub_1DEE29594(result, v16);
    v12 = v17;
    v13 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v14 = (*(v13 + 56))(a2, v19, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v16);
    result = v11;
    if (v14)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

void *MuxingZoneAdvertiser.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return v0;
}

uint64_t MuxingZoneAdvertiser.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return swift_deallocClassInstance();
}

BOOL sub_1DEEEAB18()
{
  v1 = *(*v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_1DEEEA270(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 6);
  return v3;
}

void sub_1DEEEAB70(char a1)
{
  v3 = *(*v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  sub_1DEEEA448((v3 + 16), a1);

  os_unfair_lock_unlock((v3 + 24));
}

void (*sub_1DEEEABD4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_1DEEEA5A8(v3);
  return sub_1DEEEAC48;
}

void sub_1DEEEAC48(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void sub_1DEEEAC90()
{
  v1 = *(*v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_1DEEEB240(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

void sub_1DEEEACE8()
{
  v1 = *(*v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    do
    {
      sub_1DEE29594(v4, v7);
      v5 = v8;
      v6 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      (*(v6 + 48))(v5, v6);
      __swift_destroy_boxed_opaque_existential_1(v7);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  os_unfair_lock_unlock((v1 + 24));
}

BOOL sub_1DEEEAD94()
{
  v1 = *(*v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_1DEEEB258((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

void *sub_1DEEEADF4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE48F0, &qword_1DEF93858);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  v1[2] = v3;
  v1[3] = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A58, &qword_1DEF937F0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_1DEF8D598();
  v1[5] = MEMORY[0x1E69E7CD0];
  v1[4] = v7;
  v8 = v1[2];

  os_unfair_lock_lock((v8 + 24));
  sub_1DEEEB1F0((v8 + 16));
  os_unfair_lock_unlock((v8 + 24));

  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = a1 + 32;
    do
    {
      sub_1DEE29594(v10, v14);
      v11 = v15;
      v12 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      (*(v12 + 8))(v11, v12);
      swift_allocObject();
      swift_weakInit();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3E40, qword_1DEF93860);
      sub_1DEE1B548(&qword_1ECDE2D98, &qword_1ECDE3E40, qword_1DEF93860);
      sub_1DEF8D5E8();

      swift_beginAccess();
      sub_1DEF8D568();
      swift_endAccess();

      __swift_destroy_boxed_opaque_existential_1(v14);
      v10 += 40;
      --v9;
    }

    while (v9);
  }

  return v1;
}

uint64_t sub_1DEEEB1F0(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;

  *a1 = v3;
}

uint64_t sub_1DEEEB2E8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v10 = v4[7];
  if (v10 && *(v10 + 16))
  {
    *(v10 + 16) = 0;

    swift_unknownObjectRelease();
    v11 = *(v10 + 24);
    swift_getObjectType();
    sub_1DEF8DD88();
  }

  type metadata accessor for KeepAliveTransaction();
  swift_allocObject();
  v12 = sub_1DEE2CB34(0x76696C417065654BLL, 0xEE0072656D695465);
  v13 = v5[7];
  v5[7] = v12;

  v14 = v5[5];
  v15 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v14);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a2;
  v17[4] = a3;
  v18 = *(v15 + 8);

  v18(a1, sub_1DEEEB698, v17, v14, v15, a4);
}

uint64_t sub_1DEEEB488(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    a2();
    v5 = *(v4 + 56);
    if (v5)
    {
      if (*(v5 + 16))
      {
        *(v5 + 16) = 0;

        swift_unknownObjectRelease();
        v6 = *(v5 + 24);
        swift_getObjectType();
        sub_1DEF8DD88();

        v7 = *(v4 + 56);
      }
    }

    *(v4 + 56) = 0;
  }

  return result;
}

uint64_t sub_1DEEEB540()
{
  v1 = v0;
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  (*(v3 + 16))(v2, v3);
  v4 = v0[7];
  if (v4 && *(v4 + 16))
  {
    *(v4 + 16) = 0;
    v5 = v4;

    swift_unknownObjectRelease();
    v6 = *(v5 + 24);
    swift_getObjectType();
    sub_1DEF8DD88();

    v7 = v1[7];
  }

  v1[7] = 0;
}

uint64_t sub_1DEEEB5EC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1DEEEB6A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for DeviceDescriptor();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4910, &qword_1DEF93918);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for PersonaIntroducer.IntroductionMessage();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEEEFC90();
  sub_1DEF8E848();
  if (!v2)
  {
    v16 = v19;
    sub_1DEEEFF5C(&qword_1ECDE4920, type metadata accessor for DeviceDescriptor);
    v17 = v21;
    sub_1DEF8E1F8();
    (*(v20 + 8))(v10, v7);
    sub_1DEEEFCE4(v17, v14, type metadata accessor for DeviceDescriptor);
    sub_1DEEEFCE4(v14, v16, type metadata accessor for PersonaIntroducer.IntroductionMessage);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DEEEB934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001DEF9CC50 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1DEF8E4E8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1DEEEB9C8(uint64_t a1)
{
  v2 = sub_1DEEEFC90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEEEBA04(uint64_t a1)
{
  v2 = sub_1DEEEFC90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEEEBA58(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4960, &qword_1DEF93B00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEEEFC90();
  sub_1DEF8E858();
  type metadata accessor for DeviceDescriptor();
  sub_1DEEEFF5C(&qword_1ECDE4968, type metadata accessor for DeviceDescriptor);
  sub_1DEF8E298();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1DEEEBBD0(uint64_t a1)
{
  v2 = sub_1DEEEFF08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEEEBC0C(uint64_t a1)
{
  v2 = sub_1DEEEFF08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEEEBC70(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4950, &qword_1DEF93AF8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEEEFF08();
  sub_1DEF8E858();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1DEEEBD84()
{
  if (qword_1ED786060 != -1)
  {
    result = swift_once();
  }

  qword_1ECDE48F8 = *(&xmmword_1ED786068 + 1);
  return result;
}

uint64_t PersonaIntroducer.__allocating_init(personaMonitor:syncService:replicator:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = swift_allocObject();
  *(v8 + 120) = MEMORY[0x1E69E7CD0];
  v9 = *(a1 + 16);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(a1 + 32);
  *(v8 + 56) = a2;
  *(v8 + 64) = a3;
  sub_1DEEA8734(a4, (v8 + 72));
  return v8;
}

uint64_t PersonaIntroducer.init(personaMonitor:syncService:replicator:)(__int128 *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5 = *a1;
  v6 = a1[1];
  *(v4 + 120) = MEMORY[0x1E69E7CD0];
  *(v4 + 16) = v5;
  *(v4 + 32) = v6;
  *(v4 + 48) = *(a1 + 4);
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  sub_1DEEA8734(a4, (v4 + 72));
  return v4;
}

uint64_t sub_1DEEEBEA0()
{
  v1 = v0;
  if (qword_1ECDE2E30 != -1)
  {
    swift_once();
  }

  v2 = sub_1DEF8D508();
  __swift_project_value_buffer(v2, qword_1ECDF5FB0);
  v3 = sub_1DEF8D4D8();
  v4 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DEE0F000, v3, v4, "Starting persona introducer", v5, 2u);
    MEMORY[0x1E12CCD70](v5, -1, -1);
  }

  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  ObjectType = swift_getObjectType();
  (*(v7 + 24))(v1, &protocol witness table for PersonaIntroducer, ObjectType, v7);
  sub_1DEE17214(v1 + 16, &v12, &qword_1ECDE3BF0, &unk_1DEF938B0);
  if (!v13)
  {
    return sub_1DEE171B4(&v12, &qword_1ECDE3BF0, &unk_1DEF938B0);
  }

  sub_1DEE2F1AC(&v12, v14);
  v9 = v15;
  v10 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  *&v12 = (*(v10 + 8))(v9, v10);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3E20, &qword_1DEF91748);
  sub_1DEEEEBF0();
  sub_1DEF8D5E8();

  swift_beginAccess();
  sub_1DEF8D568();
  swift_endAccess();

  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_1DEEEC0F4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((v5 & 0x80000000) == 0 && (v5 & 1) == 0)
    {
      sub_1DEEEC180(v1, v2, v3, v4);
    }
  }

  return result;
}

uint64_t sub_1DEEEC180(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  if (qword_1ECDE2E30 != -1)
  {
    swift_once();
  }

  v11 = sub_1DEF8D508();
  __swift_project_value_buffer(v11, qword_1ECDF5FB0);

  v12 = sub_1DEF8D4D8();
  v13 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136446466;
    *(v14 + 4) = sub_1DEE12A5C(a1, a2, &v22);
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_1DEE12A5C(a3, a4, &v22);
    _os_log_impl(&dword_1DEE0F000, v12, v13, "Fetching local device ID for introduction message to %{public}s:%{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v15, -1, -1);
    MEMORY[0x1E12CCD70](v14, -1, -1);
  }

  v16 = v5[7];
  v17 = v5[8];
  ObjectType = swift_getObjectType();
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = v5;
  v19[7] = v10;
  v20 = *(v17 + 80);

  v20(sub_1DEEEF8F0, v19, ObjectType, v17);
}

void sub_1DEEEC3DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  v109 = a7;
  v113 = a3;
  v114 = a5;
  v101 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v102 = &v93 - v12;
  v100 = type metadata accessor for Message();
  v13 = *(*(v100 - 8) + 64);
  MEMORY[0x1EEE9AC00](v100);
  v15 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for PersonaIntroducer.IntroductionMessage();
  v16 = *(*(v108 - 8) + 64);
  MEMORY[0x1EEE9AC00](v108);
  v110 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v97 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v107 = &v93 - v22;
  v106 = type metadata accessor for DeviceDescriptor();
  v98 = *(v106 - 8);
  v23 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v25 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v99 = &v93 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v93 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v93 - v32;
  v96 = v34;
  MEMORY[0x1EEE9AC00](v35);
  v115 = (&v93 - v36);
  if (qword_1ECDE2E30 != -1)
  {
    swift_once();
  }

  v37 = sub_1DEF8D508();
  v38 = __swift_project_value_buffer(v37, qword_1ECDF5FB0);

  v111 = v38;
  v39 = sub_1DEF8D4D8();
  v40 = sub_1DEF8DCB8();

  v41 = os_log_type_enabled(v39, v40);
  v112 = v33;
  v105 = v25;
  if (v41)
  {
    v42 = a2;
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v117[0] = v44;
    *v43 = 136446466;
    *(v43 + 4) = sub_1DEE12A5C(v113, a4, v117);
    *(v43 + 12) = 2082;
    *(v43 + 14) = sub_1DEE12A5C(v114, a6, v117);
    _os_log_impl(&dword_1DEE0F000, v39, v40, "Sending introduction message to %{public}s:%{public}s", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v44, -1, -1);
    v45 = v43;
    a2 = v42;
    MEMORY[0x1E12CCD70](v45, -1, -1);
  }

  if (a2)
  {
    v95 = v15;
    v46 = v109[12];
    v47 = a2;
    v48 = v109[14];
    __swift_project_boxed_opaque_existential_1(v109 + 9, v46);
    v49 = *(v48 + 48);
    v104 = v47;

    v50 = v115;
    v49(v46, v48);
    isa = v50[5].isa;
    v52 = sub_1DEF8D3F8();
    v53 = *(v52 - 8);
    v54 = *(v53 + 56);
    v55 = v53 + 56;
    v56 = v107;
    v54(v107, 1, 1, v52);
    *(v30 + 72) = 0u;
    *(v30 + 56) = 0u;
    *(v30 + 44) = 256;
    v103 = xmmword_1DEF90FE0;
    *(v30 + 7) = xmmword_1DEF90FE0;
    v57 = *(v106 + 60);
    v94 = v52;
    v106 = v54;
    v93 = v55;
    v54(&v30[v57], 1, 1, v52);
    *v30 = v113;
    *(v30 + 1) = a4;
    *(v30 + 2) = 0x6E776F6E6B6E75;
    *(v30 + 3) = 0xE700000000000000;
    *(v30 + 4) = isa;
    *(v30 + 5) = isa;
    v30[48] = 0;
    *(v30 + 56) = 0u;
    *(v30 + 72) = 0u;
    *(v30 + 44) = 256;
    v58 = *(v30 + 14);
    v59 = *(v30 + 15);

    sub_1DEE2416C(v58, v59);
    *(v30 + 7) = v103;
    *(v30 + 8) = 0u;
    *(v30 + 9) = 0u;
    *(v30 + 20) = v114;
    *(v30 + 21) = a6;

    sub_1DEEA882C(v56, &v30[v57]);
    v60 = MEMORY[0x1E69E7CC8];
    *(v30 + 12) = MEMORY[0x1E69E7CC8];
    sub_1DEE171B4(v56, &unk_1ECDE3E80, &unk_1DEF90970);
    *(v30 + 13) = v60;
    sub_1DEEEFCE4(v30, v112, type metadata accessor for DeviceDescriptor);
    v61 = v50;
    v62 = v110;
    sub_1DEEEFA1C(v61, v110, type metadata accessor for DeviceDescriptor);
    v117[3] = v108;
    v117[4] = sub_1DEEEFF5C(&qword_1ECDE4908, type metadata accessor for PersonaIntroducer.IntroductionMessage);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v117);
    sub_1DEEEFA1C(v62, boxed_opaque_existential_1, type metadata accessor for PersonaIntroducer.IntroductionMessage);
    if (qword_1ECDE37F0 != -1)
    {
      swift_once();
    }

    v64 = qword_1ECDE48F8;
    type metadata accessor for PropertyListTypeEncoder();
    inited = swift_initStackObject();
    *(inited + 16) = v64;
    *(inited + 24) = 0;
    v66 = sub_1DEE29274(v117);
    v67 = sub_1DEE1187C(v66);
    v69 = v68;
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v117);
    v114 = v67;
    v73 = v97;
    v74 = v94;
    v75 = v106;
    (v106)(v97, 1, 1, v94);
    v113 = qword_1ECDE48F8;
    v76 = v95;
    sub_1DEF8D3E8();
    v77 = v100;
    v78 = *(v100 + 20);
    v75(v76 + v78, 1, 1, v74);
    sub_1DEE1E70C(v73, v76 + v78);
    v79 = (v76 + v77[6]);
    *v79 = 0xD000000000000015;
    v79[1] = 0x80000001DEF9CBB0;
    v80 = (v76 + v77[7]);
    v81 = v104;
    *v80 = v101;
    v80[1] = v81;
    v82 = v114;
    *(v76 + v77[8]) = v113;
    v83 = (v76 + v77[9]);
    *v83 = v82;
    v83[1] = v69;
    v84 = v109[7];
    v85 = v109[8];
    ObjectType = swift_getObjectType();
    v87 = sub_1DEF8D1E8();
    v88 = v102;
    (*(*(v87 - 8) + 56))(v102, 1, 1, v87);
    v116[0] = 0;
    v117[0] = 0x403E000000000000;
    v117[1] = 5;
    v89 = v112;
    v90 = v99;
    sub_1DEEEFA1C(v112, v99, type metadata accessor for DeviceDescriptor);
    v91 = (*(v98 + 80) + 16) & ~*(v98 + 80);
    v92 = swift_allocObject();
    sub_1DEEEFCE4(v90, v92 + v91, type metadata accessor for DeviceDescriptor);
    (*(v85 + 48))(v76, v88, v116 + 1, v89, v116, v117, sub_1DEEEF9AC, v92, ObjectType, v85);

    sub_1DEE171B4(v88, &qword_1ECDE4890, &qword_1DEF90990);
    sub_1DEEEF94C(v62, type metadata accessor for PersonaIntroducer.IntroductionMessage);
    sub_1DEEEF94C(v89, type metadata accessor for DeviceDescriptor);
    sub_1DEEEF94C(v115, type metadata accessor for DeviceDescriptor);
    sub_1DEEEF94C(v76, type metadata accessor for Message);
  }

  else
  {
    v115 = sub_1DEF8D4D8();
    v70 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v115, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_1DEE0F000, v115, v70, "Cannot send introduction message as we have no local device ID", v71, 2u);
      MEMORY[0x1E12CCD70](v71, -1, -1);
    }

    v72 = v115;
  }
}

void sub_1DEEED078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceDescriptor();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v36 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D20, &unk_1DEF91630);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v36 - v13);
  sub_1DEE17214(a1, &v36 - v13, &qword_1ECDE3D20, &unk_1DEF91630);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    if (qword_1ECDE2E30 != -1)
    {
      swift_once();
    }

    v16 = sub_1DEF8D508();
    __swift_project_value_buffer(v16, qword_1ECDF5FB0);
    sub_1DEEEFA1C(a2, v7, type metadata accessor for DeviceDescriptor);
    v17 = v15;
    v18 = sub_1DEF8D4D8();
    v19 = sub_1DEF8DC98();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v37 = v22;
      *v20 = 136446466;
      v23 = *v7;
      v24 = v7[1];

      sub_1DEEEF94C(v7, type metadata accessor for DeviceDescriptor);
      v25 = sub_1DEE12A5C(v23, v24, &v37);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2114;
      v26 = v15;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v27;
      *v21 = v27;
      _os_log_impl(&dword_1DEE0F000, v18, v19, "Sync service failed to send introduction message to %{public}s: %{public}@", v20, 0x16u);
      sub_1DEE171B4(v21, &unk_1ECDE4880, &qword_1DEF93420);
      MEMORY[0x1E12CCD70](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1E12CCD70](v22, -1, -1);
      MEMORY[0x1E12CCD70](v20, -1, -1);
    }

    else
    {

      sub_1DEEEF94C(v7, type metadata accessor for DeviceDescriptor);
    }
  }

  else
  {
    if (qword_1ECDE2E30 != -1)
    {
      swift_once();
    }

    v28 = sub_1DEF8D508();
    __swift_project_value_buffer(v28, qword_1ECDF5FB0);
    sub_1DEEEFA1C(a2, v10, type metadata accessor for DeviceDescriptor);
    v29 = sub_1DEF8D4D8();
    v30 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v37 = v32;
      *v31 = 136446210;
      v33 = *v10;
      v34 = v10[1];

      sub_1DEEEF94C(v10, type metadata accessor for DeviceDescriptor);
      v35 = sub_1DEE12A5C(v33, v34, &v37);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_1DEE0F000, v29, v30, "Sent introduction message to %{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1E12CCD70](v32, -1, -1);
      MEMORY[0x1E12CCD70](v31, -1, -1);
    }

    else
    {

      sub_1DEEEF94C(v10, type metadata accessor for DeviceDescriptor);
    }

    sub_1DEE171B4(v14, &qword_1ECDE3D20, &unk_1DEF91630);
  }
}

void sub_1DEEED534(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v83 = &v75 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v77 = &v75 - v11;
  v78 = type metadata accessor for Message();
  v12 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78);
  v82 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DeviceDescriptor();
  v79 = *(v14 - 8);
  v15 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v80 = &v75 - v19;
  v81 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v75 - v22);
  v24 = sub_1DEF8D3F8();
  v25 = *(v24 - 8);
  v26 = v25[8];
  MEMORY[0x1EEE9AC00](v24);
  v85 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v75 - v29;
  if (qword_1ECDE2E30 != -1)
  {
    swift_once();
  }

  v31 = sub_1DEF8D508();
  v32 = __swift_project_value_buffer(v31, qword_1ECDF5FB0);
  v87 = v25[2];
  v88 = (v25 + 2);
  v87(v30, a1, v24);
  v90 = a2;
  sub_1DEEEFA1C(a2, v23, type metadata accessor for DeviceDescriptor);
  v91 = v32;
  v33 = sub_1DEF8D4D8();
  v34 = sub_1DEF8DCB8();
  v35 = os_log_type_enabled(v33, v34);
  v86 = v17;
  v89 = v25;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v76 = a1;
    v92 = v24;
    v37 = v36;
    v38 = swift_slowAlloc();
    v94[0] = v38;
    *v37 = 136446466;
    sub_1DEEEFF5C(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
    v39 = sub_1DEF8E2E8();
    v40 = v3;
    v42 = v41;
    v84 = v25[1];
    v84(v30, v92);
    v43 = sub_1DEE12A5C(v39, v42, v94);
    v3 = v40;

    *(v37 + 4) = v43;
    *(v37 + 12) = 2082;
    v44 = *v23;
    v45 = v23[1];

    sub_1DEEEF94C(v23, type metadata accessor for DeviceDescriptor);
    v46 = sub_1DEE12A5C(v44, v45, v94);

    *(v37 + 14) = v46;
    _os_log_impl(&dword_1DEE0F000, v33, v34, "Sending ack message for %{public}s to %{public}s", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v38, -1, -1);
    v47 = v37;
    v24 = v92;
    a1 = v76;
    MEMORY[0x1E12CCD70](v47, -1, -1);
  }

  else
  {

    sub_1DEEEF94C(v23, type metadata accessor for DeviceDescriptor);
    v84 = v25[1];
    v84(v30, v24);
  }

  v48 = *(v3 + 56);
  v49 = *(v3 + 64);
  ObjectType = swift_getObjectType();
  v51 = (*(v49 + 16))(ObjectType, v49);
  if (v52)
  {
    v53 = v52;
    v92 = v51;
    v94[3] = &type metadata for PersonaIntroducer.AckMessage;
    v94[4] = sub_1DEEEF81C();
    if (qword_1ECDE37F0 != -1)
    {
      swift_once();
    }

    v54 = qword_1ECDE48F8;
    type metadata accessor for PropertyListTypeEncoder();
    inited = swift_initStackObject();
    *(inited + 16) = v54;
    *(inited + 24) = 0;
    v56 = sub_1DEE29274(v94);
    v91 = sub_1DEE1187C(v56);
    v86 = v60;
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v94);
    v61 = v77;
    v87(v77, a1, v24);
    v87 = *(v89 + 56);
    (v87)(v61, 0, 1, v24);
    v88 = 0x80000001DEF9CBD0;
    v89 = qword_1ECDE48F8;
    v62 = v82;
    sub_1DEF8D3E8();
    v63 = v78;
    v64 = *(v78 + 20);
    (v87)(v62 + v64, 1, 1, v24);
    sub_1DEE1E70C(v61, v62 + v64);
    v65 = (v62 + v63[6]);
    *v65 = 0xD000000000000014;
    v65[1] = v88;
    v66 = (v62 + v63[7]);
    *v66 = v92;
    v66[1] = v53;
    *(v62 + v63[8]) = v89;
    v67 = (v62 + v63[9]);
    v68 = v86;
    *v67 = v91;
    v67[1] = v68;
    v69 = sub_1DEF8D1E8();
    v70 = v83;
    (*(*(v69 - 8) + 56))(v83, 1, 1, v69);
    LOBYTE(v94[0]) = 0;
    v93[0] = 0;
    v71 = v90;
    v72 = v80;
    sub_1DEEEFA1C(v90, v80, type metadata accessor for DeviceDescriptor);
    v73 = (*(v79 + 80) + 16) & ~*(v79 + 80);
    v74 = swift_allocObject();
    sub_1DEEEFCE4(v72, v74 + v73, type metadata accessor for DeviceDescriptor);
    (*(v49 + 40))(v62, v70, v94, v71, v93, sub_1DEEEF870, v74, ObjectType, v49);

    sub_1DEE171B4(v70, &qword_1ECDE4890, &qword_1DEF90990);
    sub_1DEEEF94C(v62, type metadata accessor for Message);
  }

  else
  {
    v57 = sub_1DEF8D4D8();
    v58 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_1DEE0F000, v57, v58, "Cannot send ack message as we have no local device ID", v59, 2u);
      MEMORY[0x1E12CCD70](v59, -1, -1);
    }
  }
}

void sub_1DEEEE0B0(void *a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for DeviceDescriptor();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v34 - v11);
  if (a2)
  {
    if (qword_1ECDE2E30 != -1)
    {
      swift_once();
    }

    v13 = sub_1DEF8D508();
    __swift_project_value_buffer(v13, qword_1ECDF5FB0);
    sub_1DEEEFA1C(a3, v9, type metadata accessor for DeviceDescriptor);
    v14 = a1;
    v15 = sub_1DEF8D4D8();
    v16 = sub_1DEF8DC98();
    sub_1DEE39214(a1, 1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v35 = v19;
      *v17 = 136446466;
      v20 = *v9;
      v21 = v9[1];

      sub_1DEEEF94C(v9, type metadata accessor for DeviceDescriptor);
      v22 = sub_1DEE12A5C(v20, v21, &v35);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2114;
      v23 = a1;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v24;
      *v18 = v24;
      _os_log_impl(&dword_1DEE0F000, v15, v16, "Sync service failed to send ack message to %{public}s: %{public}@", v17, 0x16u);
      sub_1DEE171B4(v18, &unk_1ECDE4880, &qword_1DEF93420);
      MEMORY[0x1E12CCD70](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1E12CCD70](v19, -1, -1);
      MEMORY[0x1E12CCD70](v17, -1, -1);

      return;
    }

    v33 = v9;
  }

  else
  {
    if (qword_1ECDE2E30 != -1)
    {
      swift_once();
    }

    v25 = sub_1DEF8D508();
    __swift_project_value_buffer(v25, qword_1ECDF5FB0);
    sub_1DEEEFA1C(a3, v12, type metadata accessor for DeviceDescriptor);
    v26 = sub_1DEF8D4D8();
    v27 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v35 = v29;
      *v28 = 136446210;
      v30 = *v12;
      v31 = v12[1];

      sub_1DEEEF94C(v12, type metadata accessor for DeviceDescriptor);
      v32 = sub_1DEE12A5C(v30, v31, &v35);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_1DEE0F000, v26, v27, "Sent ack message to %{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1E12CCD70](v29, -1, -1);
      MEMORY[0x1E12CCD70](v28, -1, -1);

      return;
    }

    v33 = v12;
  }

  sub_1DEEEF94C(v33, type metadata accessor for DeviceDescriptor);
}

void sub_1DEEEE4C0(void *a1, char a2, uint64_t a3)
{
  v6 = ~a2;
  v7 = type metadata accessor for DeviceDescriptor();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = (&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v43 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v43 - v15);
  if (v6)
  {
    if (a2)
    {
      if (qword_1ECDE2E30 != -1)
      {
        swift_once();
      }

      v17 = sub_1DEF8D508();
      __swift_project_value_buffer(v17, qword_1ECDF5FB0);
      sub_1DEEEFA1C(a3, v13, type metadata accessor for DeviceDescriptor);
      sub_1DEE39150(a1, 1);
      v18 = sub_1DEF8D4D8();
      v19 = sub_1DEF8DC98();
      sub_1DEEEFC78(a1, a2);
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v44 = v22;
        *v20 = 136446466;
        v23 = *v13;
        v24 = v13[1];

        sub_1DEEEF94C(v13, type metadata accessor for DeviceDescriptor);
        v25 = sub_1DEE12A5C(v23, v24, &v44);

        *(v20 + 4) = v25;
        *(v20 + 12) = 2114;
        sub_1DEE39150(a1, 1);
        v26 = _swift_stdlib_bridgeErrorToNSError();
        *(v20 + 14) = v26;
        *v21 = v26;
        _os_log_impl(&dword_1DEE0F000, v18, v19, "Failed to pair with device %{public}s: %{public}@", v20, 0x16u);
        sub_1DEE171B4(v21, &unk_1ECDE4880, &qword_1DEF93420);
        MEMORY[0x1E12CCD70](v21, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v22);
        MEMORY[0x1E12CCD70](v22, -1, -1);
        MEMORY[0x1E12CCD70](v20, -1, -1);

        return;
      }

      v42 = v13;
      goto LABEL_19;
    }

    if (qword_1ECDE2E30 != -1)
    {
      swift_once();
    }

    v36 = sub_1DEF8D508();
    __swift_project_value_buffer(v36, qword_1ECDF5FB0);
    sub_1DEEEFA1C(a3, v16, type metadata accessor for DeviceDescriptor);
    v28 = sub_1DEF8D4D8();
    v37 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v28, v37))
    {
      v30 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v44 = v38;
      *v30 = 136446210;
      v39 = *v16;
      v40 = v16[1];

      sub_1DEEEF94C(v16, type metadata accessor for DeviceDescriptor);
      v41 = sub_1DEE12A5C(v39, v40, &v44);

      *(v30 + 4) = v41;
      _os_log_impl(&dword_1DEE0F000, v28, v37, "Successfully paired with device %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      v35 = v38;
      goto LABEL_15;
    }

    v42 = v16;
  }

  else
  {
    if (qword_1ECDE2E30 != -1)
    {
      swift_once();
    }

    v27 = sub_1DEF8D508();
    __swift_project_value_buffer(v27, qword_1ECDF5FB0);
    sub_1DEEEFA1C(a3, v10, type metadata accessor for DeviceDescriptor);
    v28 = sub_1DEF8D4D8();
    v29 = sub_1DEF8DC98();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v44 = v31;
      *v30 = 136446210;
      v32 = *v10;
      v33 = v10[1];

      sub_1DEEEF94C(v10, type metadata accessor for DeviceDescriptor);
      v34 = sub_1DEE12A5C(v32, v33, &v44);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_1DEE0F000, v28, v29, "Received unexpected response to pairing attempt with device %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      v35 = v31;
LABEL_15:
      MEMORY[0x1E12CCD70](v35, -1, -1);
      MEMORY[0x1E12CCD70](v30, -1, -1);

      return;
    }

    v42 = v10;
  }

LABEL_19:
  sub_1DEEEF94C(v42, type metadata accessor for DeviceDescriptor);
}

void *PersonaIntroducer.deinit()
{
  sub_1DEE171B4((v0 + 2), &qword_1ECDE3BF0, &unk_1DEF938B0);
  v1 = v0[7];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  v2 = v0[15];

  return v0;
}

uint64_t PersonaIntroducer.__deallocating_deinit()
{
  sub_1DEE171B4((v0 + 2), &qword_1ECDE3BF0, &unk_1DEF938B0);
  v1 = v0[7];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  v2 = v0[15];

  return swift_deallocClassInstance();
}

uint64_t PersonaIntroducer.syncService(_:shouldAcceptIncomingMessage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a3 + *(type metadata accessor for Message() + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = *v3 == 0xD000000000000015 && 0x80000001DEF9CBB0 == v5;
  if (v6 || (sub_1DEF8E4E8() & 1) != 0)
  {
    return 1;
  }

  if (v4 == 0xD000000000000014 && 0x80000001DEF9CBD0 == v5)
  {
    return 1;
  }

  return sub_1DEF8E4E8();
}

unint64_t sub_1DEEEEBF0()
{
  result = qword_1ECDE3E28;
  if (!qword_1ECDE3E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE3E20, &qword_1DEF91748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3E28);
  }

  return result;
}

void sub_1DEEEEC54(uint64_t a1)
{
  v2 = type metadata accessor for DeviceDescriptor();
  v75 = *(v2 - 8);
  v3 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v76 = v4;
  v77 = v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PersonaIntroducer.IntroductionMessage();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v79 = v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Message();
  v9 = *(*(v8 - 1) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v74 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v74 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v74 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v74 - v22;
  v25 = (a1 + *(v24 + 24));
  v26 = *v25;
  v27 = v25[1];
  v28 = *v25 == 0xD000000000000015 && 0x80000001DEF9CBB0 == v27;
  if (v28 || (sub_1DEF8E4E8() & 1) != 0)
  {
    if (qword_1ECDE2E30 != -1)
    {
      swift_once();
    }

    v29 = sub_1DEF8D508();
    __swift_project_value_buffer(v29, qword_1ECDF5FB0);
    sub_1DEEEFA1C(a1, v23, type metadata accessor for Message);
    v30 = sub_1DEF8D4D8();
    v31 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v74[1] = v20;
      v34 = v33;
      v81[0] = v33;
      *v32 = 136446210;
      v35 = &v23[v8[7]];
      v36 = *v35;
      v37 = v35[1];

      sub_1DEEEF94C(v23, type metadata accessor for Message);
      v38 = sub_1DEE12A5C(v36, v37, v81);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_1DEE0F000, v30, v31, "Received introduction message from %{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1E12CCD70](v34, -1, -1);
      MEMORY[0x1E12CCD70](v32, -1, -1);
    }

    else
    {

      sub_1DEEEF94C(v23, type metadata accessor for Message);
    }

    v39 = (a1 + v8[9]);
    v40 = *v39;
    v41 = v39[1];
    if (qword_1ECDE37F0 != -1)
    {
      swift_once();
    }

    v42 = qword_1ECDE48F8;
    type metadata accessor for OPACKCoder();
    sub_1DEE115C8(v84);
    sub_1DEE12F7C(v84, v82);
    v43 = MEMORY[0x1E69E7CC0];
    v44 = sub_1DEE1DAAC(MEMORY[0x1E69E7CC0]);
    v81[0] = v43;
    v81[1] = v44;
    v82[4] = v42;
    v83 = 0;
    v80[3] = &type metadata for PropertyListTypeDecoder.RootDecoder;
    v80[4] = sub_1DEE1DC98();
    v80[0] = swift_allocObject();
    sub_1DEE1DCEC(v81, v80[0] + 16);
    v45 = v79;
    sub_1DEEEB6A4(v80, v79);
    sub_1DEE1EBB4(v81);
    __swift_destroy_boxed_opaque_existential_1(v84);
    v56 = v78[12];
    v57 = v78[13];
    __swift_project_boxed_opaque_existential_1(v78 + 9, v56);
    v58 = v77;
    sub_1DEEEFA1C(v45, v77, type metadata accessor for DeviceDescriptor);
    v59 = (*(v75 + 80) + 16) & ~*(v75 + 80);
    v60 = swift_allocObject();
    sub_1DEEEFCE4(v58, v60 + v59, type metadata accessor for DeviceDescriptor);
    (*(v57 + 16))(v45, sub_1DEEEFBF8, v60, v56, v57);

    sub_1DEEED534(a1, v45);
    v61 = type metadata accessor for PersonaIntroducer.IntroductionMessage;
    v62 = v45;
    goto LABEL_28;
  }

  if (v26 == 0xD000000000000014 && 0x80000001DEF9CBD0 == v27 || (sub_1DEF8E4E8() & 1) != 0)
  {
    if (qword_1ECDE2E30 != -1)
    {
      swift_once();
    }

    v46 = sub_1DEF8D508();
    __swift_project_value_buffer(v46, qword_1ECDF5FB0);
    sub_1DEEEFA1C(a1, v17, type metadata accessor for Message);
    v47 = sub_1DEF8D4D8();
    v48 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v81[0] = v50;
      *v49 = 136446210;
      v51 = &v17[v8[7]];
      v52 = *v51;
      v53 = v51[1];

      sub_1DEEEF94C(v17, type metadata accessor for Message);
      v54 = sub_1DEE12A5C(v52, v53, v81);

      *(v49 + 4) = v54;
      _os_log_impl(&dword_1DEE0F000, v47, v48, "Received ack message from %{public}s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      v55 = v50;
LABEL_26:
      MEMORY[0x1E12CCD70](v55, -1, -1);
      MEMORY[0x1E12CCD70](v49, -1, -1);

      return;
    }

    v61 = type metadata accessor for Message;
    v62 = v17;
  }

  else
  {
    if (qword_1ECDE2E30 != -1)
    {
      swift_once();
    }

    v63 = sub_1DEF8D508();
    __swift_project_value_buffer(v63, qword_1ECDF5FB0);
    sub_1DEEEFA1C(a1, v14, type metadata accessor for Message);
    sub_1DEEEFA1C(a1, v11, type metadata accessor for Message);
    v47 = sub_1DEF8D4D8();
    v64 = sub_1DEF8DC98();
    if (os_log_type_enabled(v47, v64))
    {
      v49 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v81[0] = v65;
      *v49 = 136446466;
      v66 = &v14[v8[6]];
      v67 = *v66;
      v68 = v66[1];

      sub_1DEEEF94C(v14, type metadata accessor for Message);
      v69 = sub_1DEE12A5C(v67, v68, v81);

      *(v49 + 4) = v69;
      *(v49 + 12) = 2082;
      v70 = &v11[v8[7]];
      v71 = *v70;
      v72 = v70[1];

      sub_1DEEEF94C(v11, type metadata accessor for Message);
      v73 = sub_1DEE12A5C(v71, v72, v81);

      *(v49 + 14) = v73;
      _os_log_impl(&dword_1DEE0F000, v47, v64, "Received unexpected message type %{public}s from %{public}s", v49, 0x16u);
      swift_arrayDestroy();
      v55 = v65;
      goto LABEL_26;
    }

    sub_1DEEEF94C(v11, type metadata accessor for Message);
    v62 = v14;
    v61 = type metadata accessor for Message;
  }

LABEL_28:
  sub_1DEEEF94C(v62, v61);
}

unint64_t sub_1DEEEF81C()
{
  result = qword_1ECDE4900;
  if (!qword_1ECDE4900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4900);
  }

  return result;
}

void sub_1DEEEF870(void *a1, char a2)
{
  v5 = *(type metadata accessor for DeviceDescriptor() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1DEEEE0B0(a1, a2 & 1, v6);
}

uint64_t type metadata accessor for PersonaIntroducer.IntroductionMessage()
{
  result = qword_1ECDE4928;
  if (!qword_1ECDE4928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DEEEF94C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1DEEEF9AC(uint64_t a1)
{
  v3 = *(type metadata accessor for DeviceDescriptor() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1DEEED078(a1, v4);
}

uint64_t sub_1DEEEFA1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_7Tm()
{
  v1 = type metadata accessor for DeviceDescriptor();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 96);

  v9 = *(v0 + v3 + 104);

  v10 = *(v0 + v3 + 120);
  if (v10 >> 60 != 15)
  {
    sub_1DEE1BFA0(v5[14], v10);
  }

  v11 = v5[17];

  v12 = v5[19];

  v13 = v5[21];

  v14 = *(v1 + 60);
  v15 = sub_1DEF8D3F8();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v5 + v14, 1, v15))
  {
    (*(v16 + 8))(v5 + v14, v15);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

void sub_1DEEEFBF8(void *a1, char a2)
{
  v5 = *(type metadata accessor for DeviceDescriptor() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1DEEEE4C0(a1, a2, v6);
}

void sub_1DEEEFC78(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1DEE39214(a1, a2 & 1);
  }
}

unint64_t sub_1DEEEFC90()
{
  result = qword_1ECDE4918;
  if (!qword_1ECDE4918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4918);
  }

  return result;
}

uint64_t sub_1DEEEFCE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEEEFD84()
{
  result = type metadata accessor for DeviceDescriptor();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1DEEEFE04()
{
  result = qword_1ECDE4938;
  if (!qword_1ECDE4938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4938);
  }

  return result;
}

unint64_t sub_1DEEEFE5C()
{
  result = qword_1ECDE4940;
  if (!qword_1ECDE4940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4940);
  }

  return result;
}

unint64_t sub_1DEEEFEB4()
{
  result = qword_1ECDE4948;
  if (!qword_1ECDE4948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4948);
  }

  return result;
}

unint64_t sub_1DEEEFF08()
{
  result = qword_1ECDE4958;
  if (!qword_1ECDE4958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4958);
  }

  return result;
}

uint64_t sub_1DEEEFF5C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DEEEFFB8()
{
  result = qword_1ECDE4970;
  if (!qword_1ECDE4970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4970);
  }

  return result;
}

unint64_t sub_1DEEF0010()
{
  result = qword_1ECDE4978;
  if (!qword_1ECDE4978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4978);
  }

  return result;
}

void sub_1DEEF0064()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = __OFSUB__(v1, v2);
  v4 = v1 - v2;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 > 0x40;
    if (v4 >= 0x40)
    {
      v6 = 0;
    }

    else
    {
      v6 = 1 << v4;
    }

    if (v5)
    {
      v6 = 0;
    }

    v7 = *(v0 + 24) * v6;
  }
}

uint64_t ExponentialBackoffRetryTimer.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 48) = v1;
  *(v0 + 16) = 3;
  *(v0 + 24) = 0x4030000000000000;
  *(v0 + 32) = xmmword_1DEF93BB0;
  return v0;
}

void *ExponentialBackoffRetryTimer.init()()
{
  v0[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v0[6] = v1;
  v0[2] = 3;
  v0[3] = 0x4030000000000000;
  v0[4] = 3;
  return v0;
}

uint64_t ExponentialBackoffRetryTimer.__allocating_init(maxRetries:intervalUntilRetry:)(uint64_t a1, double a2)
{
  v4 = swift_allocObject();
  *(v4 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v4 + 48) = v5;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a1;
  return v4;
}

uint64_t ExponentialBackoffRetryTimer.init(maxRetries:intervalUntilRetry:)(uint64_t a1, double a2)
{
  *(v2 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v2 + 48) = v5;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 32) = a1;
  return v2;
}

uint64_t ExponentialBackoffRetryTimer.deinit()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return v0;
}

uint64_t ExponentialBackoffRetryTimer.__deallocating_deinit()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t SessionManager.__allocating_init(expirationDuration:)(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  SessionManager.init(expirationDuration:)(a1, a2 & 1);
  return v4;
}

uint64_t SessionManager.Session.State.hashValue.getter()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF60](v1);
  return sub_1DEF8E7F8();
}

uint64_t SessionManager.Session.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DEF8D3F8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SessionManager.Session.id.setter(uint64_t a1)
{
  v3 = sub_1DEF8D3F8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SessionManager.Session.handshakeDescriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SessionManager.Session() + 20);
  v4 = *(v3 + 8);
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  *(a1 + 40) = *(v3 + 40);
}

__n128 SessionManager.Session.handshakeDescriptor.setter(__n128 *a1)
{
  v11 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = a1[2].n128_u8[0];
  v5 = a1[2].n128_u64[1];
  v6 = a1[3].n128_u64[0];
  v7 = (v1 + *(type metadata accessor for SessionManager.Session() + 20));
  v8 = v7->n128_u64[1];
  v9 = v7[1].n128_u64[1];

  result = v11;
  *v7 = v11;
  v7[1].n128_u64[0] = v2;
  v7[1].n128_u64[1] = v3;
  v7[2].n128_u8[0] = v4;
  v7[2].n128_u64[1] = v5;
  v7[3].n128_u64[0] = v6;
  return result;
}

uint64_t SessionManager.Session.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SessionManager.Session();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t SessionManager.Session.state.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for SessionManager.Session();
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t SessionManager.Session.lastInteractionDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SessionManager.Session() + 28);
  v4 = sub_1DEF8D378();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SessionManager.Session.lastInteractionDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SessionManager.Session() + 28);
  v4 = sub_1DEF8D378();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SessionManager.Session.expirationDuration.setter(double a1)
{
  result = type metadata accessor for SessionManager.Session();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t SessionManager.Session.handshakeFailureCount.setter(uint64_t a1)
{
  result = type metadata accessor for SessionManager.Session();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_1DEEF0904()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v5 = *(v0 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4980, &unk_1DEF93BF0);
    sub_1DEE1B548(&qword_1ECDE2D48, &qword_1ECDE4980, &unk_1DEF93BF0);
    v2 = v0;
    v1 = sub_1DEF8D5B8();
    v3 = *(v0 + 16);
    *(v2 + 16) = v1;
  }

  return v1;
}

uint64_t sub_1DEEF09C8(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t (*sub_1DEEF09D8(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1DEEF0904();
  return sub_1DEEF0A20;
}

uint64_t sub_1DEEF0A20(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
}

double *SessionManager.init(expirationDuration:)(uint64_t a1, int a2)
{
  v3 = v2;
  v28 = a2;
  v27 = *&a1;
  v29 = sub_1DEF8DD08();
  v4 = *(v29 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v26 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DEF8DCD8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_1DEF8D6D8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v2[2] = 0.0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4980, &unk_1DEF93BF0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v2 + 3) = sub_1DEF8D598();
  v14 = sub_1DEE3C630();
  v24 = "ialBackoffRetryTimer";
  v25 = v14;
  sub_1DEF8D6C8();
  v30 = MEMORY[0x1E69E7CC0];
  v23[2] = sub_1DEE2BB88(&qword_1ECDE2C10, MEMORY[0x1E69E8030]);
  v23[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEE1B548(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEF8DE08();
  v15 = *MEMORY[0x1E69E8090];
  v16 = v4 + 104;
  v17 = *(v4 + 104);
  v23[0] = v16;
  v18 = v26;
  v17(v26, v15, v29);
  *(v2 + 4) = sub_1DEF8DD38();
  v24 = "onManager.internal";
  sub_1DEF8D6C8();
  v30 = MEMORY[0x1E69E7CC0];
  sub_1DEF8DE08();
  v17(v18, v15, v29);
  *(v2 + 5) = sub_1DEF8DD38();
  *(v2 + 7) = MEMORY[0x1E69E7CC8];
  type metadata accessor for BasicTimer();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v19 + 24) = v20;
  *(v3 + 8) = v19;
  v3[9] = 0.0;
  v21 = v27;
  if (v28)
  {
    v21 = 30.0;
  }

  v3[6] = v21;
  return v3;
}

uint64_t type metadata accessor for SessionManager.Session()
{
  result = qword_1ECDE3490;
  if (!qword_1ECDE3490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DEEF0E40(uint64_t result, __int128 *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = *(a2 + 6);
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v3 + 32);
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for SessionManager.Session();
    return sub_1DEF8DD18();
  }

  return result;
}

uint64_t sub_1DEEF0F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v46 = a4;
  v49 = a3;
  v42 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D08, &unk_1DEF95E50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v48 = &v40 - v9;
  v10 = sub_1DEF8D3F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  if (qword_1ECDE3810 != -1)
  {
    swift_once();
  }

  v17 = sub_1DEF8D508();
  __swift_project_value_buffer(v17, qword_1ECDF6100);
  v18 = *(v11 + 16);
  v47 = a1;
  v43 = v11 + 16;
  v44 = v18;
  v18(v16, a1, v10);
  sub_1DEEA8BAC(a2, v50);
  v19 = sub_1DEF8D4D8();
  v20 = sub_1DEF8DCB8();
  sub_1DEEA8CAC(a2);
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v50[0] = v41;
    *v21 = 136446466;
    sub_1DEE2BB88(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
    v22 = sub_1DEF8E2E8();
    v24 = v23;
    (*(v11 + 8))(v16, v10);
    v25 = sub_1DEE12A5C(v22, v24, v50);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    *(v21 + 14) = sub_1DEE12A5C(*a2, *(a2 + 8), v50);
    _os_log_impl(&dword_1DEE0F000, v19, v20, "Created session %{public}s for remote device %{public}s", v21, 0x16u);
    v26 = v41;
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v26, -1, -1);
    MEMORY[0x1E12CCD70](v21, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v16, v10);
  }

  v27 = v42;
  v28 = v47;
  v29 = v10;
  v30 = v10;
  v31 = v44;
  v44(v42, v47, v29);
  v32 = *(v49 + 48);
  v33 = type metadata accessor for SessionManager.Session();
  v34 = v33[7];
  sub_1DEEA8BAC(a2, v50);
  sub_1DEF8D348();
  v35 = v27 + v33[5];
  v36 = *(a2 + 16);
  *v35 = *a2;
  *(v35 + 16) = v36;
  *(v35 + 32) = *(a2 + 32);
  *(v35 + 48) = *(a2 + 48);
  *(v27 + v33[6]) = 0;
  *(v27 + v33[8]) = v32;
  v37 = v45;
  *(v27 + v33[9]) = v46;
  v31(v37, v28, v30);
  v38 = v48;
  sub_1DEEF50DC(v27, v48);
  (*(*(v33 - 1) + 56))(v38, 0, 1, v33);
  swift_beginAccess();
  sub_1DEF339BC(v38, v37);
  swift_endAccess();
  return sub_1DEEF2640();
}

uint64_t sub_1DEEF1370()
{
  v1 = *(v0 + 32);
  sub_1DEF8DD18();
  return v3;
}

uint64_t sub_1DEEF13D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v59 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D08, &unk_1DEF95E50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v56 = &v46[-v8];
  v9 = sub_1DEF8D3F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v46[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46[-v14];
  v54 = type metadata accessor for SessionManager.Session();
  v57 = *(v54 - 8);
  v16 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v18 = &v46[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46[-v20];
  result = swift_beginAccess();
  v23 = *(a1 + 56);
  if (*(v23 + 16))
  {
    v24 = *(a1 + 56);

    v53 = a2;
    v25 = sub_1DEEAF350(a2);
    if (v26)
    {
      sub_1DEEF50DC(*(v23 + 56) + *(v57 + 72) * v25, v21);

      if (qword_1ECDE3810 != -1)
      {
        swift_once();
      }

      v27 = sub_1DEF8D508();
      __swift_project_value_buffer(v27, qword_1ECDF6100);
      v51 = *(v10 + 16);
      v52 = v10 + 16;
      v51(v15, v53, v9);
      sub_1DEEF50DC(v21, v18);
      v28 = sub_1DEF8D4D8();
      v29 = sub_1DEF8DCB8();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v50 = v3;
        v31 = v30;
        v49 = swift_slowAlloc();
        v58[0] = v49;
        *v31 = 136446466;
        sub_1DEE2BB88(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
        v48 = v28;
        v32 = sub_1DEF8E2E8();
        v47 = v29;
        v34 = v33;
        (*(v10 + 8))(v15, v9);
        v35 = sub_1DEE12A5C(v32, v34, v58);

        *(v31 + 4) = v35;
        *(v31 + 12) = 2082;
        v36 = v54;
        v37 = &v18[*(v54 + 20)];
        v38 = *v37;
        v39 = v37[1];

        sub_1DEEF51AC(v18);
        v40 = sub_1DEE12A5C(v38, v39, v58);

        *(v31 + 14) = v40;
        v41 = v48;
        _os_log_impl(&dword_1DEE0F000, v48, v47, "Cancelled session %{public}s for remote device %{public}s", v31, 0x16u);
        v42 = v49;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v42, -1, -1);
        MEMORY[0x1E12CCD70](v31, -1, -1);
      }

      else
      {

        sub_1DEEF51AC(v18);
        (*(v10 + 8))(v15, v9);
        v36 = v54;
      }

      v44 = v55;
      v51(v55, v53, v9);
      v45 = v56;
      v43 = 1;
      (*(v57 + 56))(v56, 1, 1, v36);
      swift_beginAccess();
      sub_1DEF339BC(v45, v44);
      swift_endAccess();
      sub_1DEEF2640();
      result = sub_1DEEF51AC(v21);
    }

    else
    {

      v43 = 0;
    }
  }

  else
  {
    v43 = 0;
  }

  *v59 = v43;
  return result;
}
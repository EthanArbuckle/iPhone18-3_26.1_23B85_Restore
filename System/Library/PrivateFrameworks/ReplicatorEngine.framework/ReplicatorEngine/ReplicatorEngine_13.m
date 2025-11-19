uint64_t MetadataStoring.recordVersionsWithProtocolAppropriateIDs(for:zoneIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for Record.ID.Ownership(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DEF8D3F8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v85 = v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v94 = v80 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v93 = v80 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D50, &qword_1DEF91668);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = (v80 - v26);
  v96 = a3;
  v97 = a4;
  v98 = v4;
  v28 = MetadataStoring.recordVersions(for:zoneIDs:)(a1, a2, a3, a4);
  if (*(a1 + *(type metadata accessor for PairingRelationship() + 20) + 32) > 0xDuLL)
  {
    return v28;
  }

  v83 = v12;
  v86 = sub_1DEEA34BC(MEMORY[0x1E69E7CC0]);
  v29 = 0;
  v92 = v28;
  v32 = *(v28 + 64);
  v31 = v28 + 64;
  v30 = v32;
  v33 = 1 << *(v31 - 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v30;
  v36 = v33 + 63;
  v37 = v14;
  v38 = v36 >> 6;
  v90 = v37;
  v91 = (v37 + 16);
  v99 = (v37 + 32);
  v95 = (v37 + 8);
  v80[1] = v37 + 40;
  v39 = v94;
  v88 = v24;
  v89 = v13;
  v87 = v27;
  while (1)
  {
    v40 = v29;
    if (!v35)
    {
      break;
    }

    while (1)
    {
      v41 = v40;
LABEL_14:
      v44 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v45 = v44 | (v41 << 6);
      v46 = v93;
      v47 = *(*(v92 + 48) + 8 * v45);
      v13 = v89;
      v48 = v90;
      (*(v90 + 16))(v93, *(v92 + 56) + *(v90 + 72) * v45, v89);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D68, &qword_1DEF91680);
      v50 = *(v49 + 48);
      v51 = v88;
      *v88 = v47;
      v52 = v46;
      v24 = v51;
      (*(v48 + 32))(&v51[v50], v52, v13);
      (*(*(v49 - 8) + 56))(v24, 0, 1, v49);

      v100 = v41;
      v39 = v94;
      v27 = v87;
LABEL_15:
      sub_1DEE1BA88(v24, v27, &qword_1ECDE3D50, &qword_1DEF91668);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D68, &qword_1DEF91680);
      if ((*(*(v53 - 8) + 48))(v27, 1, v53) == 1)
      {

        return v86;
      }

      v54 = *v27;
      v55 = *v99;
      (*v99)(v39, v27 + *(v53 + 48), v13);
      v56 = (*(*(v97 + 8) + 56))(v54, v96);
      if (v57)
      {
        break;
      }

      (*v95)(v39, v13);

      v40 = v100;
      if (!v35)
      {
        goto LABEL_7;
      }
    }

    v59 = *(v54 + 32);
    v81 = v57;
    v82 = v56;
    sub_1DEE28090(v54 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v83, type metadata accessor for Record.ID.Ownership);
    v60 = type metadata accessor for Record.ID(0);
    v61 = *(v60 + 48);
    v62 = *(v60 + 52);
    v80[0] = v60;
    v63 = swift_allocObject();
    v64 = v81;
    v63[2] = v82;
    v63[3] = v64;
    v63[4] = v59;
    v84 = v63;
    sub_1DEE139C0(v83, v63 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, type metadata accessor for Record.ID.Ownership);
    (*v91)(v85, v39, v13);

    v65 = v86;
    LODWORD(v82) = swift_isUniquelyReferenced_nonNull_native();
    v101 = v65;
    v67 = sub_1DEEAF3E8(v84);
    v68 = *(v65 + 16);
    v69 = (v66 & 1) == 0;
    v70 = v68 + v69;
    if (__OFADD__(v68, v69))
    {
      goto LABEL_34;
    }

    if (*(v65 + 24) >= v70)
    {
      if ((v82 & 1) == 0)
      {
        v82 = v67;
        LODWORD(v86) = v66;
        sub_1DEEB8164();
        LOBYTE(v66) = v86;
        v67 = v82;
      }
    }

    else
    {
      LODWORD(v86) = v66;
      sub_1DEEB28C8(v70, v82);
      v71 = sub_1DEEAF3E8(v84);
      v72 = v66 & 1;
      LOBYTE(v66) = v86;
      if ((v86 & 1) != v72)
      {
        goto LABEL_36;
      }

      v67 = v71;
    }

    v86 = v101;
    if (v66)
    {
      v73 = v90;
      (*(v90 + 40))(*(v101 + 56) + *(v90 + 72) * v67, v85, v13);

      (*(v73 + 8))(v39, v13);
    }

    else
    {
      *(v101 + 8 * (v67 >> 6) + 64) |= 1 << v67;
      v74 = v85;
      *(*(v86 + 48) + 8 * v67) = v84;
      v75 = v90;
      v55((*(v86 + 56) + *(v90 + 72) * v67), v74, v13);

      (*(v75 + 8))(v39, v13);
      v76 = *(v86 + 16);
      v77 = __OFADD__(v76, 1);
      v78 = v76 + 1;
      if (v77)
      {
        goto LABEL_35;
      }

      *(v86 + 16) = v78;
    }

    v29 = v100;
  }

LABEL_7:
  if (v38 <= v40 + 1)
  {
    v42 = v40 + 1;
  }

  else
  {
    v42 = v38;
  }

  v43 = v42 - 1;
  while (1)
  {
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v41 >= v38)
    {
      v100 = v43;
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D68, &qword_1DEF91680);
      (*(*(v58 - 8) + 56))(v24, 1, 1, v58);
      v35 = 0;
      goto LABEL_15;
    }

    v35 = *(v31 + 8 * v41);
    ++v40;
    if (v35)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

uint64_t MetadataStoring.hasRecords(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*(a3 + 8) + 24))(a2);
  v6[2] = a1;
  LOBYTE(a1) = sub_1DEF3498C(sub_1DEF41850, v6, v4);

  return a1 & 1;
}

uint64_t MetadataStoring.recordVersions(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*(a3 + 8) + 24))(a2);
  v7[2] = a1;
  v5 = sub_1DEF350A4(MEMORY[0x1E69E7CC8], sub_1DEF41870, v7, v4);

  return v5;
}

uint64_t MutableMetadataStoring.removeIncompatiblePairingRelationships(protocolVersion:)(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DeviceDescriptor();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v83 = v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DEF8D3F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v78 = v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  v14 = *(*(v95 - 8) + 64);
  MEMORY[0x1EEE9AC00](v95);
  v77 = v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v82 = v76 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v89 = v76 - v19;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v85 = v76 - v22;
  v23 = a1[1];
  v80 = *a1;
  v81 = v23;
  v79 = a3;
  v24 = (*(*(*(a3 + 8) + 8) + 32))(a2, v21);
  v25 = v24 + 64;
  v26 = 1 << *(v24 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v24 + 64);
  v97 = (v26 + 63) >> 6;
  v93 = v11;
  v94 = v11 + 16;
  v29 = (v11 + 8);
  v76[1] = v11 + 32;
  v96 = v24;

  v31 = 0;
  v84 = MEMORY[0x1E69E7CC0];
  v91 = a2;
  v92 = (v11 + 8);
  v87 = v10;
  v88 = v25;
  v90 = v3;
LABEL_4:
  v32 = v31;
  v33 = v85;
LABEL_15:
  v59 = v97;
  while (v28)
  {
    v31 = v32;
LABEL_10:
    v34 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v35 = v34 | (v31 << 6);
    v36 = v96;
    v37 = *(v96 + 48);
    v86 = *(v93 + 72);
    (*(v93 + 16))(v33, v37 + v86 * v35, v10);
    v38 = *(v36 + 56);
    v39 = type metadata accessor for PairingRelationship();
    v40 = v95;
    sub_1DEE28090(v38 + *(*(v39 - 8) + 72) * v35, v33 + *(v95 + 48), type metadata accessor for PairingRelationship);
    v41 = v89;
    sub_1DEE17214(v33, v89, &unk_1ECDE4350, &qword_1DEF93400);
    v42 = v41 + *(v40 + 48);
    v43 = (v42 + *(v39 + 32));
    v45 = *v43;
    v44 = v43[1];
    sub_1DEE4F8C0(*v43, v44);
    sub_1DEE27460(v42, type metadata accessor for PairingRelationship);
    if (v44)
    {
      sub_1DEE4F8D4(v45, v44);
      sub_1DEE171B4(v33, &unk_1ECDE4350, &qword_1DEF93400);
      v29 = v92;
      v60 = v41;
      v10 = v87;
      result = (*v92)(v60, v87);
      v32 = v31;
      a2 = v91;
      v25 = v88;
      goto LABEL_15;
    }

    v46 = v92;
    v47 = v41;
    v48 = v87;
    v49 = *v92;
    (*v92)(v47, v87);
    v50 = v82;
    sub_1DEE17214(v33, v82, &unk_1ECDE4350, &qword_1DEF93400);
    v51 = *(v40 + 48);
    v52 = v50;
    v53 = v50 + v51;
    v54 = v53 + *(v39 + 20);
    v55 = v83;
    sub_1DEE28090(v54, v83, type metadata accessor for DeviceDescriptor);
    sub_1DEE27460(v53, type metadata accessor for PairingRelationship);
    v57 = *(v55 + 32);
    v56 = *(v55 + 40);
    sub_1DEE27460(v55, type metadata accessor for DeviceDescriptor);
    if (v57 < v81)
    {
      v58 = v48;
      v49(v52, v48);
      a2 = v91;
LABEL_17:
      sub_1DEE17214(v85, v77, &unk_1ECDE4350, &qword_1DEF93400);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = v95;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v84 = sub_1DEF38254(0, v84[2] + 1, 1, v84, &qword_1ECDE3DF8, &unk_1DEF91710, MEMORY[0x1E69695A8]);
      }

      v10 = v58;
      v64 = v84[2];
      v63 = v84[3];
      if (v64 >= v63 >> 1)
      {
        v84 = sub_1DEF38254(v63 > 1, v64 + 1, 1, v84, &qword_1ECDE3DF8, &unk_1DEF91710, MEMORY[0x1E69695A8]);
      }

      v65 = *(v62 + 48);
      sub_1DEE171B4(v85, &unk_1ECDE4350, &qword_1DEF93400);
      v66 = v84;
      v84[2] = v64 + 1;
      v67 = v66 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + v64 * v86;
      v68 = v77;
      (*(v93 + 32))(v67, v77, v10);
      result = sub_1DEE27460(v68 + v65, type metadata accessor for PairingRelationship);
      v29 = v92;
      v25 = v88;
      goto LABEL_4;
    }

    v58 = v48;
    v49(v52, v48);
    a2 = v91;
    if (v80 < v56)
    {
      goto LABEL_17;
    }

    v29 = v46;
    v33 = v85;
    result = sub_1DEE171B4(v85, &unk_1ECDE4350, &qword_1DEF93400);
    v32 = v31;
    v10 = v58;
    v25 = v88;
    v59 = v97;
  }

  while (1)
  {
    v31 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      return result;
    }

    if (v31 >= v59)
    {
      break;
    }

    v28 = *(v25 + 8 * v31);
    ++v32;
    if (v28)
    {
      goto LABEL_10;
    }
  }

  v69 = v84[2];
  if (v69)
  {
    v70 = v78;
    v97 = *(v79 + 16);
    v95 = *(v97 + 120);
    v96 = v97 + 120;
    v71 = v29;
    v72 = v84 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
    v73 = v10;
    v74 = *(v93 + 72);
    v75 = *(v93 + 16);
    do
    {
      v75(v70, v72, v73);
      (v95)(v70, a2, v97);
      (*v71)(v70, v73);
      v72 += v74;
      --v69;
    }

    while (v69);
  }
}

uint64_t MetadataStoring.orphanedRecordIDs()(uint64_t a1, uint64_t a2)
{
  v5 = (*(*(a2 + 8) + 24))();
  v9[2] = a1;
  v9[3] = a2;
  v10 = v2;
  v6 = sub_1DEF340B8(sub_1DEF4188C, v9, v5);
  v7 = sub_1DEF342E4(v6);

  return v7;
}

uint64_t MetadataStoring.expiredRecordIDs()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v35 - v6;
  v8 = sub_1DEF8D378();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v39 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v38 = v35 - v14;
  v15 = (*(*(a2 + 8) + 24))(a1, v13);
  if ((v15 & 0xC000000000000001) != 0)
  {
    v35[1] = 0;
    v16 = MEMORY[0x1E69E7CC8];
    v46 = MEMORY[0x1E69E7CC8];
    v42 = sub_1DEF8E038();
    v17 = sub_1DEF8E0D8();
    if (v17)
    {
      v19 = v18;
      v20 = v17;
      v41 = type metadata accessor for Record.ID(0);
      v21 = v20;
      v22 = (v9 + 48);
      v36 = (v9 + 8);
      v37 = (v9 + 32);
      v40 = MEMORY[0x1E69E7CC8];
      do
      {
        v44 = v21;
        swift_dynamicCast();
        v43 = v19;
        type metadata accessor for RecordMetadata();
        swift_dynamicCast();
        v24 = v45;
        if (!v45)
        {
          break;
        }

        v25 = v44;
        sub_1DEE17214(v44 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration, v7, &qword_1ECDE4DC0, &qword_1DEF91640);
        if ((*v22)(v7, 1, v8) == 1)
        {
          sub_1DEE171B4(v7, &qword_1ECDE4DC0, &qword_1DEF91640);
        }

        else
        {
          v26 = v38;
          (*v37)(v38, v7, v8);

          v27 = v39;
          sub_1DEF8D348();
          v28 = sub_1DEF8D308();
          v29 = *v36;
          (*v36)(v27, v8);
          v29(v26, v8);

          if (v28)
          {
            v30 = *(v40 + 16);
            if (*(v40 + 24) <= v30)
            {
              sub_1DEEB1864(v30 + 1, 1);
            }

            v40 = v46;
            sub_1DEF40350(v24, v25, v46);
          }

          else
          {
          }
        }

        v21 = sub_1DEF8E0D8();
        v19 = v23;
      }

      while (v21);
    }

    else
    {
      v40 = v16;
    }

    sub_1DEE2774C();
    v32 = v40;
  }

  else
  {
    sub_1DEF40C34(v15);
    v32 = v31;
  }

  v33 = sub_1DEF342E4(v32);

  return v33;
}

uint64_t sub_1DEF37604(uint64_t result, uint64_t a2)
{
  v2 = result;
  v16 = a2;
  if ((result & 0xC000000000000001) != 0)
  {
    sub_1DEF8DE58();
    type metadata accessor for Zone.ID();
    sub_1DEF41E4C(&qword_1ECDE2EA0, type metadata accessor for Zone.ID);
    result = sub_1DEF8DC18();
    v2 = v17;
    v3 = v18;
    v4 = v19;
    v5 = v20;
    v6 = v21;
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(result + 32);
    v3 = result + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(result + 56);
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));

    if (!v14)
    {
LABEL_18:
      sub_1DEE2774C();
      return v16;
    }

    while (1)
    {
      sub_1DEF389B8(&v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1DEF8DE88())
      {
        type metadata accessor for Zone.ID();
        swift_dynamicCast();
        v14 = v15;
        v12 = v5;
        v13 = v6;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t MetadataStoring.recordVersions(for:zoneIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for MetadataRecordPredicate();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEE28090(a1, &v11[*(v12 + 40)], type metadata accessor for PairingRelationship);
  *v11 = 258;
  v11[2] = 2;
  *(v11 + 1) = a2;

  v13 = MetadataStoring.recordVersions(matching:)(v11, a3, a4);
  sub_1DEE27460(v11, type metadata accessor for MetadataRecordPredicate);
  return v13;
}

uint64_t sub_1DEF378F4(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v10 = *a2;
  v9 = *(a2 + 8);
  result = RecordMetadata.matches(predicate:)(a3);
  if (result)
  {
    v12 = OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version;
    v13 = sub_1DEF8D3F8();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v8, v9 + v12, v13);
    (*(v14 + 56))(v8, 0, 1, v13);

    return sub_1DEF32BC0(v8, v10);
  }

  return result;
}

uint64_t sub_1DEF37A4C(uint64_t a1)
{
  v2 = sub_1DEF8D3F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Record.ID.Ownership(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEE28090(*(*(a1 + 8) + 16) + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v10, type metadata accessor for Record.ID.Ownership);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    v11 = 0;
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    v11 = sub_1DEF8D3A8();
    (*(v3 + 8))(v6, v2);
  }

  return v11 & 1;
}

BOOL sub_1DEF37C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v32 - v9;
  v11 = sub_1DEF8D3F8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Record.ID.Ownership(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[0] = a3;
  v21 = (*(*(a3 + 8) + 24))(a2, v18);
  v22 = sub_1DEF718D0(a1, v21);

  if (v22)
  {
    sub_1DEE28090(a1 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v20, type metadata accessor for Record.ID.Ownership);
    v23 = (*(v12 + 48))(v20, 1, v11);
    if (v23 != 1)
    {
      (*(v12 + 32))(v15, v20, v11);
      MetadataStoring.pairingRelationship(relationshipID:)(v15, a2, v32[0], v10);

      (*(v12 + 8))(v15, v11);
      v30 = type metadata accessor for PairingRelationship();
      v31 = (*(*(v30 - 8) + 48))(v10, 1, v30) == 1;
      sub_1DEE171B4(v10, &qword_1ECDE3C18, &unk_1DEF94D20);
      return v31;
    }

    v24 = *(v22 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);
    if (v24)
    {
      MEMORY[0x1EEE9AC00](v23);
      v25 = v32[0];
      v32[-4] = a2;
      v32[-3] = v25;
      v32[-2] = v3;

      sub_1DEF004F8(sub_1DEF41E94, &v32[-6], v24);
      v27 = v26;

      v28 = *(v27 + 16);

      return v28 == 0;
    }
  }

  return 0;
}

BOOL sub_1DEF37F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v14 - v9;
  MetadataStoring.pairingRelationship(relationshipID:)(a1, a3, a4, &v14 - v9);
  v11 = type metadata accessor for PairingRelationship();
  v12 = (*(*(v11 - 8) + 48))(v10, 1, v11) != 1;
  sub_1DEE171B4(v10, &qword_1ECDE3C18, &unk_1DEF94D20);
  return v12;
}

char *sub_1DEF3805C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE42A0, &unk_1DEF95E40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1DEF38254(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1DEF38454(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_1DEF38588(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  v9 = sub_1DEF8E7F8();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1DEF8E4E8() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1DEF3B530(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1DEF386D8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1DEF41E4C(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
  v36 = a2;
  v13 = sub_1DEF8D8B8();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1DEF41E4C(&qword_1ECDE40E0, MEMORY[0x1E69695A8]);
      v23 = sub_1DEF8D908();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1DEF3B6B0(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1DEF389B8(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1DEF8DE78();

    if (v8)
    {

      type metadata accessor for Zone.ID();
      swift_dynamicCast();
      result = 0;
      *a1 = v32;
      return result;
    }

    result = sub_1DEF8DE68();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v25 = sub_1DEF39EB8(v7, result + 1);
    v26 = *(v25 + 16);
    if (*(v25 + 24) <= v26)
    {
      sub_1DEF3A794(v26 + 1);
    }

    sub_1DEEC4F08(v27, v25);

    *v3 = v25;
    *a1 = a2;
    return 1;
  }

  v10 = *(v6 + 40);
  sub_1DEF8E7A8();
  v11 = a2[2];
  v12 = a2[3];
  sub_1DEF8D9B8();
  v13 = a2[4];
  v14 = a2[5];
  sub_1DEF8D9B8();
  v15 = sub_1DEF8E7F8();
  v16 = -1 << *(v6 + 32);
  v17 = v15 & ~v16;
  if (((*(v6 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
  {
LABEL_25:
    v28 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v3;

    sub_1DEF3B954(v30, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v33;
    *a1 = a2;
    return 1;
  }

  v18 = ~v16;
  v19 = *(v6 + 48);
  v20 = a2[2];
  v21 = a2[3];
  while (1)
  {
    v22 = *(v19 + 8 * v17);
    v23 = v20 == v22[2] && v21 == v22[3];
    if (v23 || (sub_1DEF8E4E8() & 1) != 0)
    {
      v24 = a2[4] == v22[4] && a2[5] == v22[5];
      if (v24 || (sub_1DEF8E4E8() & 1) != 0)
      {
        break;
      }
    }

    v17 = (v17 + 1) & v18;
    if (((*(v6 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v17);

  return 0;
}

uint64_t sub_1DEF38C28(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF90](a2);
  v7 = sub_1DEF8E7F8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1DEF3BB0C(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1DEF38D20(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE40F0, &unk_1DEF91C20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v59 - v8;
  v10 = sub_1DEF8D3F8();
  v67 = *(v10 - 8);
  v11 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v59 - v15;
  v17 = type metadata accessor for Record.ID.Ownership(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v59 - v21;
  v23 = *v3;
  if ((*v3 & 0xC000000000000001) == 0)
  {
    v70 = v6;
    v65 = v20;
    v62 = v13;
    v59 = v3;
    v60 = a1;
    v27 = *(v23 + 40);
    sub_1DEF8E7A8();
    v28 = a2[2];
    v29 = a2[3];
    sub_1DEF8D9B8();
    v30 = a2[4];
    v31 = v30[2];
    v32 = v30[3];
    sub_1DEF8D9B8();
    v34 = v30[4];
    v33 = v30[5];

    sub_1DEF8D9B8();

    v69 = OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership;
    sub_1DEE28090(a2 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v22, type metadata accessor for Record.ID.Ownership);
    v35 = v67;
    v37 = v67 + 48;
    v36 = *(v67 + 48);
    if (v36(v22, 1, v10) == 1)
    {
      MEMORY[0x1E12CBF60](0);
    }

    else
    {
      (*(v35 + 32))(v16, v22, v10);
      MEMORY[0x1E12CBF60](1);
      sub_1DEF41E4C(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
      sub_1DEF8D8C8();
      (*(v35 + 8))(v16, v10);
    }

    v41 = sub_1DEF8E7F8();
    v42 = -1 << *(v23 + 32);
    v43 = v41 & ~v42;
    if (((*(v23 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
    {
LABEL_40:
      v55 = v59;
      v56 = *v59;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = *v55;

      sub_1DEF3BC58(v58, v43, isUniquelyReferenced_nonNull_native);
      *v55 = v72;
      *v60 = a2;
      return 1;
    }

    v67 = v10;
    v68 = v36;
    v71 = ~v42;
    v61 = (v35 + 32);
    v64 = (v35 + 8);
    v66 = v37;
    while (1)
    {
      v44 = *(*(v23 + 48) + 8 * v43);
      v45 = v44[2] == a2[2] && v44[3] == a2[3];
      if (!v45 && (sub_1DEF8E4E8() & 1) == 0)
      {
        goto LABEL_19;
      }

      v46 = v44[4];
      v47 = a2[4];
      v48 = v47[2] == v46[2] && v47[3] == v46[3];
      if (!v48 && (sub_1DEF8E4E8() & 1) == 0)
      {
        goto LABEL_19;
      }

      v49 = v47[4] == v46[4] && v47[5] == v46[5];
      if (!v49 && (sub_1DEF8E4E8() & 1) == 0)
      {
        goto LABEL_19;
      }

      v50 = *(v70 + 48);
      sub_1DEE28090(v44 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v9, type metadata accessor for Record.ID.Ownership);
      sub_1DEE28090(a2 + v69, &v9[v50], type metadata accessor for Record.ID.Ownership);
      v51 = v68;
      if (v68(v9, 1, v10) == 1)
      {
        if (v51(&v9[v50], 1, v10) == 1)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v52 = v65;
        sub_1DEE28090(v9, v65, type metadata accessor for Record.ID.Ownership);
        if (v51(&v9[v50], 1, v10) != 1)
        {
          v53 = v62;
          (*v61)(v62, &v9[v50], v10);
          v63 = sub_1DEF8D3A8();
          v54 = *v64;
          (*v64)(v53, v10);
          v54(v52, v10);
          if (v63)
          {
LABEL_43:
            sub_1DEE27460(v9, type metadata accessor for Record.ID.Ownership);

            *v60 = *(*(v23 + 48) + 8 * v43);

            return 0;
          }

          sub_1DEE27460(v9, type metadata accessor for Record.ID.Ownership);
          goto LABEL_18;
        }

        (*v64)(v52, v10);
      }

      sub_1DEE171B4(v9, &unk_1ECDE40F0, &unk_1DEF91C20);
LABEL_18:
      v10 = v67;
LABEL_19:
      v43 = (v43 + 1) & v71;
      if (((*(v23 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
      {
        goto LABEL_40;
      }
    }
  }

  if (v23 < 0)
  {
    v24 = *v3;
  }

  else
  {
    v24 = v23 & 0xFFFFFFFFFFFFFF8;
  }

  v25 = sub_1DEF8DE78();

  if (v25)
  {

    v73 = v25;
    type metadata accessor for Record.ID(0);
    swift_dynamicCast();
    result = 0;
    *a1 = v72;
    return result;
  }

  result = sub_1DEF8DE68();
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v38 = sub_1DEF3A0C4(v24, result + 1);
  v72 = v38;
  v39 = *(v38 + 16);
  if (*(v38 + 24) <= v39)
  {
    sub_1DEF3AC40(v39 + 1);
    v38 = v72;
  }

  sub_1DEEC4FB8(v40, v38);

  *v3 = v38;
  *a1 = a2;
  return 1;
}

uint64_t sub_1DEF39434(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1DEF8E7A8();
  if (a3)
  {
    MEMORY[0x1E12CBF60](1);
    sub_1DEF8D9B8();
  }

  else
  {
    MEMORY[0x1E12CBF60](0);
  }

  v9 = sub_1DEF8E7F8();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_17:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1DEF3C29C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v12 = ~v10;
  v13 = *(v7 + 48);
  while (1)
  {
    v14 = (v13 + 16 * v11);
    v15 = v14[1];
    if (v15)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_16;
    }

LABEL_7:
    v11 = (v11 + 1) & v12;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (!a3)
  {
    goto LABEL_7;
  }

  v16 = *v14 == a2 && v15 == a3;
  if (!v16 && (sub_1DEF8E4E8() & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  *a1 = *(*(v7 + 48) + 16 * v11);

  return 0;
}

uint64_t sub_1DEF395BC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PairingRelationship();
  v48 = *(v5 - 1);
  v6 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v39[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v39[-v10];
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1DEF8E7A8();
  sub_1DEF8D3F8();
  sub_1DEF41E4C(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
  sub_1DEF8D8C8();
  v51 = v5[5];
  DeviceDescriptor.hash(into:)(v52);
  v13 = v5[6];
  sub_1DEF8D378();
  sub_1DEF41E4C(&qword_1ECDE42F8, MEMORY[0x1E6969530]);
  v50 = v13;
  sub_1DEF8D8C8();
  v49 = v5[7];
  sub_1DEF8D8C8();
  v14 = (a2 + v5[8]);
  v46 = a1;
  v47 = v14;
  v15 = v14[1];
  v45 = v2;
  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = 2;
      goto LABEL_11;
    }

    if (v15 == 3)
    {
      v16 = 4;
      goto LABEL_11;
    }

LABEL_8:
    v17 = *v47;
    MEMORY[0x1E12CBF60](3);
    sub_1DEF8D9B8();
    goto LABEL_12;
  }

  if (!v15)
  {
    v16 = 0;
    goto LABEL_11;
  }

  if (v15 != 1)
  {
    goto LABEL_8;
  }

  v16 = 1;
LABEL_11:
  MEMORY[0x1E12CBF60](v16);
LABEL_12:
  v42 = v5[9];
  sub_1DEF8D8C8();
  v18 = sub_1DEF8E7F8();
  v19 = -1 << *(v11 + 32);
  v20 = v18 & ~v19;
  if ((*(v11 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
  {
    v21 = ~v19;
    v22 = *(v48 + 72);
    do
    {
      sub_1DEE28090(*(v11 + 48) + v22 * v20, v8, type metadata accessor for PairingRelationship);
      if ((sub_1DEF8D3A8() & 1) == 0)
      {
        goto LABEL_40;
      }

      if (!_s16ReplicatorEngine16DeviceDescriptorV2eeoiySbAC_ACtFZ_0(&v8[v5[5]], a2 + v51))
      {
        goto LABEL_40;
      }

      v23 = &v8[v5[6]];
      if ((sub_1DEF8D338() & 1) == 0)
      {
        goto LABEL_40;
      }

      v24 = &v8[v5[7]];
      if ((sub_1DEF8D338() & 1) == 0)
      {
        goto LABEL_40;
      }

      v25 = &v8[v5[8]];
      v26 = *v25;
      v27 = v25[1];
      v28 = v47[1];
      v48 = *v47;
      if (v27 > 1)
      {
        if (v27 == 2)
        {
          if (v28 != 2)
          {
            v43 = v26;
            v31 = v28;
            sub_1DEE4F8C0(v48, v28);
            v27 = 2;
            goto LABEL_39;
          }

          sub_1DEE4F8D4(v26, 2uLL);
          v29 = v48;
          v30 = 2;
          goto LABEL_44;
        }

        if (v27 == 3)
        {
          if (v28 != 3)
          {
            v43 = v26;
            v31 = v28;
            sub_1DEE4F8C0(v48, v28);
            v27 = 3;
            goto LABEL_39;
          }

          sub_1DEE4F8D4(v26, 3uLL);
          v29 = v48;
          v30 = 3;
          goto LABEL_44;
        }
      }

      else
      {
        if (!v27)
        {
          if (v28)
          {
            v43 = v26;
            v31 = v28;
            sub_1DEE4F8C0(v48, v28);
            v27 = 0;
            goto LABEL_39;
          }

          sub_1DEE4F8D4(v26, 0);
          v29 = v48;
          v30 = 0;
          goto LABEL_44;
        }

        if (v27 == 1)
        {
          if (v28 != 1)
          {
            v43 = v26;
            v31 = v28;
            sub_1DEE4F8C0(v48, v28);
            v27 = 1;
            goto LABEL_39;
          }

          sub_1DEE4F8D4(v26, 1uLL);
          v29 = v48;
          v30 = 1;
          goto LABEL_44;
        }
      }

      v43 = v26;
      if (v28 < 4)
      {
        v31 = v28;
        sub_1DEE4F8C0(v48, v28);
        sub_1DEE4F8C0(v43, v27);
LABEL_39:
        sub_1DEE4F8D4(v43, v27);
        sub_1DEE4F8D4(v48, v31);
LABEL_40:
        sub_1DEE27460(v8, type metadata accessor for PairingRelationship);
        goto LABEL_41;
      }

      if (v26 == v48 && v27 == v28)
      {
        sub_1DEE4F8C0(v26, v27);
        sub_1DEE4F8C0(v43, v27);
        sub_1DEE4F8D4(v43, v27);
        v29 = v43;
        v30 = v27;
LABEL_44:
        sub_1DEE4F8D4(v29, v30);
        goto LABEL_45;
      }

      v41 = v28;
      v40 = sub_1DEF8E4E8();
      sub_1DEE4F8C0(v48, v41);
      sub_1DEE4F8C0(v43, v27);
      sub_1DEE4F8D4(v43, v27);
      sub_1DEE4F8D4(v48, v41);
      if ((v40 & 1) == 0)
      {
        goto LABEL_40;
      }

LABEL_45:
      v32 = &v8[v5[9]];
      v33 = sub_1DEF8D338();
      sub_1DEE27460(v8, type metadata accessor for PairingRelationship);
      if (v33)
      {
        sub_1DEE27460(a2, type metadata accessor for PairingRelationship);
        sub_1DEE28090(*(v11 + 48) + v22 * v20, v46, type metadata accessor for PairingRelationship);
        return 0;
      }

LABEL_41:
      v20 = (v20 + 1) & v21;
    }

    while (((*(v11 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0);
  }

  v34 = v45;
  v35 = *v45;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = v44;
  sub_1DEE28090(a2, v44, type metadata accessor for PairingRelationship);
  *&v52[0] = *v34;
  sub_1DEF3C44C(v37, v20, isUniquelyReferenced_nonNull_native);
  *v34 = *&v52[0];
  sub_1DEE139C0(a2, v46, type metadata accessor for PairingRelationship);
  return 1;
}

uint64_t sub_1DEF39C30(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_1DEF8E7A8();
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v49 = *a2;
  sub_1DEF8D9B8();
  v44 = v7;
  v48 = v8;
  sub_1DEF8E7C8();
  if (v8)
  {
    sub_1DEF8D9B8();
  }

  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v42 = a2;
  v45 = *(a2 + 32);
  MEMORY[0x1E12CBF90]();
  v47 = v9;
  MEMORY[0x1E12CBF90](v9);
  v46 = v10;
  MEMORY[0x1E12CBF90](v10);
  v11 = sub_1DEF8E7F8();
  v12 = v4 + 56;
  v13 = -1 << *(v4 + 32);
  v14 = v11 & ~v13;
  if (((*(v4 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_27:
    v31 = *v41;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = *v41;
    sub_1DEEA8BAC(v42, v51);
    sub_1DEF3CAB0(v42, v14, isUniquelyReferenced_nonNull_native);
    *v41 = v50;
    v33 = *(v42 + 16);
    *a1 = *v42;
    *(a1 + 16) = v33;
    *(a1 + 32) = *(v42 + 32);
    *(a1 + 48) = *(v42 + 48);
    return 1;
  }

  v15 = ~v13;
  v40 = v4;
  v16 = *(v4 + 48);
  v18 = v48;
  v17 = v49;
  while (1)
  {
    v21 = v16 + 56 * v14;
    v23 = *(v21 + 16);
    v22 = *(v21 + 24);
    v24 = *(v21 + 32);
    v26 = *(v21 + 40);
    v25 = *(v21 + 48);
    if (*v21 != v17 || *(v21 + 8) != v6)
    {
      v28 = sub_1DEF8E4E8();
      v18 = v48;
      v17 = v49;
      if ((v28 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    if (v22)
    {
      break;
    }

    if (!v18)
    {
      goto LABEL_6;
    }

LABEL_13:
    v14 = (v14 + 1) & v15;
    if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if (!v18)
  {
    goto LABEL_13;
  }

  if (v23 != v44 || v22 != v18)
  {
    v30 = sub_1DEF8E4E8();
    v18 = v48;
    v17 = v49;
    if ((v30 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

LABEL_6:
  if (v24 != v45 || v26 != v47 || v25 != v46)
  {
    goto LABEL_13;
  }

  sub_1DEEA8CAC(v42);
  v35 = *(v40 + 48) + 56 * v14;
  v36 = *(v35 + 8);
  v38 = *(v35 + 16);
  v37 = *(v35 + 24);
  v39 = *(v35 + 32);
  *a1 = *v35;
  *(a1 + 8) = v36;
  *(a1 + 16) = v38;
  *(a1 + 24) = v37;
  *(a1 + 32) = v39;
  *(a1 + 40) = *(v35 + 40);

  return 0;
}

uint64_t sub_1DEF39EB8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4368, &unk_1DEF91EB0);
    v2 = sub_1DEF8DEF8();
    v20 = v2;
    sub_1DEF8DE58();
    if (sub_1DEF8DE88())
    {
      type metadata accessor for Zone.ID();
      do
      {
        swift_dynamicCast();
        v14 = *(v2 + 16);
        if (*(v2 + 24) <= v14)
        {
          sub_1DEF3A794(v14 + 1);
        }

        v2 = v20;
        v3 = *(v20 + 40);
        sub_1DEF8E7A8();
        v4 = v19[2];
        v5 = v19[3];
        sub_1DEF8D9B8();
        v6 = v19[4];
        v7 = v19[5];
        sub_1DEF8D9B8();
        result = sub_1DEF8E7F8();
        v9 = v20 + 56;
        v10 = -1 << *(v20 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v20 + 48) + 8 * v13) = v19;
        ++*(v20 + 16);
      }

      while (sub_1DEF8DE88());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1DEF3A0C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4330, &qword_1DEF91E98);
    v2 = sub_1DEF8DEF8();
    v6 = v2;
    sub_1DEF8DE58();
    if (sub_1DEF8DE88())
    {
      type metadata accessor for Record.ID(0);
      do
      {
        swift_dynamicCast();
        v3 = *(v2 + 16);
        if (*(v2 + 24) <= v3)
        {
          sub_1DEF3AC40(v3 + 1);
        }

        v2 = v6;
        sub_1DEEC4FB8(v5, v6);
      }

      while (sub_1DEF8DE88());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1DEF3A1D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4298, &qword_1DEF91E10);
  result = sub_1DEF8DEE8();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1DEF3A438(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1DEF8D3F8();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE42D0, &qword_1DEF91E48);
  result = sub_1DEF8DEE8();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1DEF41E4C(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
      result = sub_1DEF8D8B8();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1DEF3A794(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4368, &unk_1DEF91EB0);
  result = sub_1DEF8DEE8();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1DEF8E7A8();
      v20 = v18[2];
      v21 = v18[3];
      sub_1DEF8D9B8();
      v22 = v18[4];
      v23 = v18[5];
      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero((v3 + 56), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1DEF3A9F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4318, &qword_1DEF95E70);
  result = sub_1DEF8DEE8();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1DEF8E7A8();
      MEMORY[0x1E12CBF90](v18);
      result = sub_1DEF8E7F8();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1DEF3AC40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4330, &qword_1DEF91E98);
  result = sub_1DEF8DEE8();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v3 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_1DEEC4FB8(*(*(v3 + 48) + 8 * (v13 | (v7 << 6))), v6))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_13:
      ;
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= i)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_13;
      }
    }

    v16 = 1 << *(v3 + 32);
    if (v16 >= 64)
    {
      bzero((v3 + 56), ((v16 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v16;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1DEF3ADA4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4250, &qword_1DEF91DE0);
  result = sub_1DEF8DEE8();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v21 = *v19;
      v20 = v19[1];
      v22 = *(v6 + 40);
      sub_1DEF8E7A8();
      if (v20)
      {
        MEMORY[0x1E12CBF60](1);
        sub_1DEF8D9B8();
      }

      else
      {
        MEMORY[0x1E12CBF60](0);
      }

      result = sub_1DEF8E7F8();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v21;
      v15[1] = v20;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1DEF3B020(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PairingRelationship();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4300, &qword_1DEF91E70);
  result = sub_1DEF8DEE8();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 56);
    v15 = 1 << *(v9 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v9 + 56);
    for (i = (v15 + 63) >> 6; v17; result = sub_1DEEC524C(v8, v12))
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_13:
      sub_1DEE139C0(*(v9 + 48) + *(v5 + 72) * (v19 | (v13 << 6)), v8, type metadata accessor for PairingRelationship);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        return result;
      }

      if (v13 >= i)
      {
        break;
      }

      v21 = v14[v13];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_13;
      }
    }

    v22 = 1 << *(v9 + 32);
    if (v22 >= 64)
    {
      bzero((v9 + 56), ((v22 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v22;
    }

    *(v9 + 16) = 0;
  }

  *v2 = v12;
  return result;
}

uint64_t sub_1DEF3B228(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE42E8, &unk_1DEF91E60);
  result = sub_1DEF8DEE8();
  v6 = result;
  if (*(v3 + 16))
  {
    v37 = v1;
    v38 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    v39 = result;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v40 = (v11 - 1) & v11;
LABEL_17:
      v19 = *(v3 + 48) + 56 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v23 = *(v19 + 16);
      v22 = *(v19 + 24);
      v24 = *(v19 + 32);
      v25 = *(v19 + 40);
      v41 = *(v19 + 48);
      v26 = *(v6 + 40);
      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      sub_1DEF8E7C8();
      if (v22)
      {
        sub_1DEF8D9B8();
      }

      MEMORY[0x1E12CBF90](v24);
      MEMORY[0x1E12CBF90](v25);
      MEMORY[0x1E12CBF90](v41);
      result = sub_1DEF8E7F8();
      v6 = v39;
      v27 = -1 << *(v39 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v13 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v13 + 8 * v29);
          if (v33 != -1)
          {
            v14 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v28) & ~*(v13 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v39 + 48) + 56 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      v11 = v40;
      *(v15 + 16) = v23;
      *(v15 + 24) = v22;
      *(v15 + 32) = v24;
      *(v15 + 40) = v25;
      *(v15 + 48) = v41;
      ++*(v39 + 16);
      v3 = v38;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v40 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      v35 = v6;
      bzero(v8, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      v6 = v35;
    }

    else
    {
      *v8 = -1 << v34;
    }

    v2 = v37;
    *(v3 + 16) = 0;
  }

  v36 = v6;

  *v2 = v36;
  return result;
}

uint64_t sub_1DEF3B530(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1DEF3A1D8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1DEEC54A4();
      goto LABEL_16;
    }

    sub_1DEF3CD38(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  result = sub_1DEF8E7F8();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1DEF8E4E8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1DEF8E6D8();
  __break(1u);
  return result;
}

uint64_t sub_1DEF3B6B0(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1DEF3A438(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1DEEC5600();
      goto LABEL_12;
    }

    sub_1DEF3CF70(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1DEF41E4C(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
  v15 = sub_1DEF8D8B8();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_1DEF41E4C(&qword_1ECDE40E0, MEMORY[0x1E69695A8]);
      v23 = sub_1DEF8D908();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1DEF8E6D8();
  __break(1u);
  return result;
}

uint64_t sub_1DEF3B954(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a3)
  {
    sub_1DEF3A794(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1DEEC5838();
      goto LABEL_22;
    }

    sub_1DEF3D28C(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1DEF8E7A8();
  v10 = v5[2];
  v11 = v5[3];
  sub_1DEF8D9B8();
  v12 = v5[4];
  v13 = v5[5];
  sub_1DEF8D9B8();
  result = sub_1DEF8E7F8();
  v14 = v8 + 56;
  v15 = -1 << *(v8 + 32);
  a2 = result & ~v15;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    type metadata accessor for Zone.ID();
    v17 = *(v8 + 48);
    v18 = v5[2];
    v19 = v5[3];
    while (1)
    {
      v20 = *(v17 + 8 * a2);
      v21 = v18 == v20[2] && v19 == v20[3];
      if (v21 || (result = sub_1DEF8E4E8(), (result & 1) != 0))
      {
        if (v5[4] == v20[4] && v5[5] == v20[5])
        {
          break;
        }

        result = sub_1DEF8E4E8();
        if (result)
        {
          break;
        }
      }

      a2 = (a2 + 1) & v16;
      if (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    result = sub_1DEF8E6D8();
    __break(1u);
  }

LABEL_22:
  v23 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v23 + 48) + 8 * a2) = v5;
  v24 = *(v23 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v23 + 16) = v26;
  }

  return result;
}

uint64_t sub_1DEF3BB0C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1DEF3A9F0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1DEEC584C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1DEF3D4CC(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF90](v4);
  result = sub_1DEF8E7F8();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1DEF8E6D8();
  __break(1u);
  return result;
}

void sub_1DEF3BC58(void *a1, unint64_t a2, char a3)
{
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE40F0, &unk_1DEF91C20);
  v7 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v9 = &v58 - v8;
  v10 = sub_1DEF8D3F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  v17 = type metadata accessor for Record.ID.Ownership(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v64 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v58 - v21;
  v23 = *(*v3 + 16);
  v24 = *(*v3 + 24);
  v63 = v3;
  if (v24 <= v23 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DEF3AC40(v23 + 1);
    }

    else
    {
      if (v24 > v23)
      {
        sub_1DEEC598C();
        goto LABEL_37;
      }

      sub_1DEF3D6EC(v23 + 1);
    }

    v68 = *v3;
    v25 = *(v68 + 40);
    sub_1DEF8E7A8();
    v26 = a1[2];
    v27 = a1[3];
    sub_1DEF8D9B8();
    v28 = a1[4];
    v29 = v28[2];
    v30 = v28[3];
    sub_1DEF8D9B8();
    v31 = v28[4];
    v32 = v28[5];

    sub_1DEF8D9B8();

    v67 = OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership;
    sub_1DEE28090(a1 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v22, type metadata accessor for Record.ID.Ownership);
    v33 = v11;
    v36 = *(v11 + 48);
    v34 = v11 + 48;
    v35 = v36;
    v37 = v36(v22, 1, v10);
    v62 = v33;
    if (v37 == 1)
    {
      MEMORY[0x1E12CBF60](0);
    }

    else
    {
      (*(v33 + 32))(v16, v22, v10);
      MEMORY[0x1E12CBF60](1);
      sub_1DEF41E4C(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
      sub_1DEF8D8C8();
      (*(v33 + 8))(v16, v10);
    }

    v38 = sub_1DEF8E7F8();
    v39 = v68;
    v40 = v68 + 56;
    v41 = -1 << *(v68 + 32);
    a2 = v38 & ~v41;
    if ((*(v68 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v65 = v35;
      v66 = v34;
      v42 = ~v41;
      v58 = type metadata accessor for Record.ID(0);
      v59 = (v62 + 4);
      ++v62;
      do
      {
        v43 = *(*(v39 + 48) + 8 * a2);
        v44 = v43[2] == a1[2] && v43[3] == a1[3];
        if (!v44 && (sub_1DEF8E4E8() & 1) == 0)
        {
          goto LABEL_16;
        }

        v45 = v43[4];
        v46 = a1[4];
        v47 = v46[2] == v45[2] && v46[3] == v45[3];
        if (!v47 && (sub_1DEF8E4E8() & 1) == 0)
        {
          goto LABEL_16;
        }

        v48 = v46[4] == v45[4] && v46[5] == v45[5];
        if (!v48 && (sub_1DEF8E4E8() & 1) == 0)
        {
          goto LABEL_16;
        }

        v49 = *(v69 + 48);
        sub_1DEE28090(v43 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v9, type metadata accessor for Record.ID.Ownership);
        sub_1DEE28090(a1 + v67, &v9[v49], type metadata accessor for Record.ID.Ownership);
        v50 = v65;
        if (v65(v9, 1, v10) == 1)
        {
          if (v50(&v9[v49], 1, v10) == 1)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v51 = v64;
          sub_1DEE28090(v9, v64, type metadata accessor for Record.ID.Ownership);
          if (v50(&v9[v49], 1, v10) != 1)
          {
            v52 = v61;
            (*v59)(v61, &v9[v49], v10);
            v60 = sub_1DEF8D3A8();
            v53 = *v62;
            (*v62)(v52, v10);
            v53(v51, v10);
            if (v60)
            {
              goto LABEL_40;
            }

            sub_1DEE27460(v9, type metadata accessor for Record.ID.Ownership);
            goto LABEL_15;
          }

          (*v62)(v51, v10);
        }

        sub_1DEE171B4(v9, &unk_1ECDE40F0, &unk_1DEF91C20);
LABEL_15:
        v39 = v68;
LABEL_16:
        a2 = (a2 + 1) & v42;
      }

      while (((*(v40 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_37:
  v54 = *v63;
  *(v54 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v54 + 48) + 8 * a2) = a1;
  v55 = *(v54 + 16);
  v56 = __OFADD__(v55, 1);
  v57 = v55 + 1;
  if (v56)
  {
    __break(1u);
LABEL_40:
    sub_1DEE27460(v9, type metadata accessor for Record.ID.Ownership);
    sub_1DEF8E6D8();
    __break(1u);
  }

  else
  {
    *(v54 + 16) = v57;
  }
}

uint64_t sub_1DEF3C29C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_23;
  }

  if (a4)
  {
    sub_1DEF3ADA4(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_1DEEC5AE0();
      goto LABEL_23;
    }

    sub_1DEF3D818(v9 + 1);
  }

  v11 = *v4;
  v12 = *(*v4 + 40);
  sub_1DEF8E7A8();
  if (a2)
  {
    MEMORY[0x1E12CBF60](1);
    sub_1DEF8D9B8();
  }

  else
  {
    MEMORY[0x1E12CBF60](0);
  }

  result = sub_1DEF8E7F8();
  v13 = v11 + 56;
  v14 = -1 << *(v11 + 32);
  a3 = result & ~v14;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v15 = ~v14;
    v16 = *(v11 + 48);
    do
    {
      v17 = (v16 + 16 * a3);
      v18 = v17[1];
      if (v18)
      {
        if (a2)
        {
          v19 = *v17 == v8 && v18 == a2;
          if (v19 || (result = sub_1DEF8E4E8(), (result & 1) != 0))
          {
LABEL_22:
            result = sub_1DEF8E6D8();
            __break(1u);
            break;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_22;
      }

      a3 = (a3 + 1) & v15;
    }

    while (((*(v13 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_23:
  v20 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = v8;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }

  return result;
}

uint64_t sub_1DEF3C44C(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for PairingRelationship();
  v53 = *(v8 - 1);
  v9 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 24);
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_56;
  }

  if (a3)
  {
    sub_1DEF3B020(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1DEEC5C38();
      goto LABEL_56;
    }

    sub_1DEF3DA6C(v12 + 1);
  }

  v14 = *v4;
  v15 = *(*v4 + 40);
  sub_1DEF8E7A8();
  sub_1DEF8D3F8();
  sub_1DEF41E4C(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
  sub_1DEF8D8C8();
  v55 = v8[5];
  DeviceDescriptor.hash(into:)(v56);
  v16 = v8[6];
  sub_1DEF8D378();
  sub_1DEF41E4C(&qword_1ECDE42F8, MEMORY[0x1E6969530]);
  v54 = v16;
  sub_1DEF8D8C8();
  v52 = v8[7];
  sub_1DEF8D8C8();
  v51 = (a1 + v8[8]);
  v17 = v51[1];
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = 2;
      goto LABEL_18;
    }

    if (v17 == 3)
    {
      v18 = 4;
      goto LABEL_18;
    }

LABEL_15:
    v19 = v4;
    v20 = *v51;
    MEMORY[0x1E12CBF60](3);
    v4 = v19;
    sub_1DEF8D9B8();
    goto LABEL_19;
  }

  if (!v17)
  {
    v18 = 0;
    goto LABEL_18;
  }

  if (v17 != 1)
  {
    goto LABEL_15;
  }

  v18 = 1;
LABEL_18:
  MEMORY[0x1E12CBF60](v18);
LABEL_19:
  v48 = v8[9];
  sub_1DEF8D8C8();
  v21 = sub_1DEF8E7F8();
  v22 = -1 << *(v14 + 32);
  a2 = v21 & ~v22;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v23 = ~v22;
    v24 = *(v53 + 72);
    v50 = v4;
    do
    {
      sub_1DEE28090(*(v14 + 48) + v24 * a2, v11, type metadata accessor for PairingRelationship);
      if ((sub_1DEF8D3A8() & 1) == 0)
      {
        goto LABEL_47;
      }

      if (!_s16ReplicatorEngine16DeviceDescriptorV2eeoiySbAC_ACtFZ_0(&v11[v8[5]], a1 + v55))
      {
        goto LABEL_47;
      }

      v25 = &v11[v8[6]];
      if ((sub_1DEF8D338() & 1) == 0)
      {
        goto LABEL_47;
      }

      v26 = &v11[v8[7]];
      if ((sub_1DEF8D338() & 1) == 0)
      {
        goto LABEL_47;
      }

      v27 = &v11[v8[8]];
      v28 = *v27;
      v29 = v27[1];
      v30 = *v51;
      v31 = v51[1];
      if (v29 > 1)
      {
        if (v29 == 2)
        {
          if (v31 != 2)
          {
            v49 = *v27;
            v47 = v30;
            sub_1DEE4F8C0(v30, v31);
            v29 = 2;
            goto LABEL_46;
          }

          v36 = *v51;
          sub_1DEE4F8D4(v28, 2uLL);
          v33 = v36;
          v34 = 2;
          goto LABEL_51;
        }

        if (v29 == 3)
        {
          if (v31 != 3)
          {
            v49 = *v27;
            v47 = v30;
            sub_1DEE4F8C0(v30, v31);
            v29 = 3;
            goto LABEL_46;
          }

          v35 = *v51;
          sub_1DEE4F8D4(v28, 3uLL);
          v33 = v35;
          v34 = 3;
          goto LABEL_51;
        }
      }

      else
      {
        if (!v29)
        {
          if (v31)
          {
            v49 = *v27;
            v47 = v30;
            sub_1DEE4F8C0(v30, v31);
            v29 = 0;
            goto LABEL_46;
          }

          v38 = *v51;
          sub_1DEE4F8D4(v28, 0);
          v33 = v38;
          v34 = 0;
          goto LABEL_51;
        }

        if (v29 == 1)
        {
          if (v31 != 1)
          {
            v49 = *v27;
            v47 = v30;
            sub_1DEE4F8C0(v30, v31);
            v29 = 1;
            goto LABEL_46;
          }

          v32 = *v51;
          sub_1DEE4F8D4(v28, 1uLL);
          v33 = v32;
          v34 = 1;
          goto LABEL_51;
        }
      }

      if (v31 < 4)
      {
        v49 = *v27;
        v47 = v30;
        sub_1DEE4F8C0(v30, v31);
        sub_1DEE4F8C0(v49, v29);
LABEL_46:
        sub_1DEE4F8D4(v49, v29);
        sub_1DEE4F8D4(v47, v31);
        v4 = v50;
LABEL_47:
        sub_1DEE27460(v11, type metadata accessor for PairingRelationship);
        goto LABEL_48;
      }

      if (v28 == v30 && v29 == v31)
      {
        v37 = *v27;
        sub_1DEE4F8C0(v28, v29);
        sub_1DEE4F8C0(v37, v29);
        sub_1DEE4F8D4(v37, v29);
        v33 = v37;
        v34 = v29;
LABEL_51:
        sub_1DEE4F8D4(v33, v34);
        v4 = v50;
        goto LABEL_52;
      }

      v49 = *v27;
      v47 = v30;
      HIDWORD(v46) = sub_1DEF8E4E8();
      sub_1DEE4F8C0(v47, v31);
      sub_1DEE4F8C0(v49, v29);
      sub_1DEE4F8D4(v49, v29);
      sub_1DEE4F8D4(v47, v31);
      v4 = v50;
      if ((v46 & 0x100000000) == 0)
      {
        goto LABEL_47;
      }

LABEL_52:
      v39 = &v11[v8[9]];
      v40 = sub_1DEF8D338();
      sub_1DEE27460(v11, type metadata accessor for PairingRelationship);
      if (v40)
      {
        goto LABEL_59;
      }

LABEL_48:
      a2 = (a2 + 1) & v23;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_56:
  v41 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1DEE139C0(a1, *(v41 + 48) + *(v53 + 72) * a2, type metadata accessor for PairingRelationship);
  v43 = *(v41 + 16);
  v44 = __OFADD__(v43, 1);
  v45 = v43 + 1;
  if (v44)
  {
    __break(1u);
LABEL_59:
    result = sub_1DEF8E6D8();
    __break(1u);
  }

  else
  {
    *(v41 + 16) = v45;
  }

  return result;
}

uint64_t sub_1DEF3CAB0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v38 = result;
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DEF3B228(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_1DEEC5E44();
        goto LABEL_34;
      }

      sub_1DEF3DC38(v6 + 1);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    sub_1DEF8E7A8();
    v10 = *(v5 + 8);
    v11 = *(v5 + 16);
    v12 = *(v5 + 24);
    v44 = *v5;
    sub_1DEF8D9B8();
    v39 = v11;
    v43 = v12;
    sub_1DEF8E7C8();
    if (v12)
    {
      sub_1DEF8D9B8();
    }

    v13 = *(v5 + 40);
    v14 = *(v5 + 48);
    v40 = *(v5 + 32);
    MEMORY[0x1E12CBF90]();
    v42 = v13;
    MEMORY[0x1E12CBF90](v13);
    v41 = v14;
    MEMORY[0x1E12CBF90](v14);
    result = sub_1DEF8E7F8();
    v15 = v8 + 56;
    v16 = -1 << *(v8 + 32);
    a2 = result & ~v16;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v17 = ~v16;
      v18 = *(v8 + 48);
      v20 = v12;
      v19 = v44;
      do
      {
        v23 = v18 + 56 * a2;
        result = *v23;
        v25 = *(v23 + 16);
        v24 = *(v23 + 24);
        v26 = *(v23 + 32);
        v28 = *(v23 + 40);
        v27 = *(v23 + 48);
        if (*v23 != v19 || *(v23 + 8) != v10)
        {
          result = sub_1DEF8E4E8();
          v20 = v43;
          v19 = v44;
          if ((result & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        if (v24)
        {
          if (!v20)
          {
            goto LABEL_20;
          }

          if (v25 != v39 || v24 != v20)
          {
            result = sub_1DEF8E4E8();
            v20 = v43;
            v19 = v44;
            if ((result & 1) == 0)
            {
              goto LABEL_20;
            }
          }
        }

        else if (v20)
        {
          goto LABEL_20;
        }

        if (v26 == v40 && v28 == v42 && v27 == v41)
        {
          goto LABEL_37;
        }

LABEL_20:
        a2 = (a2 + 1) & v17;
      }

      while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_34:
  v31 = *v37;
  *(*v37 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v32 = *(v31 + 48) + 56 * a2;
  v33 = *(v38 + 16);
  *v32 = *v38;
  *(v32 + 16) = v33;
  *(v32 + 32) = *(v38 + 32);
  *(v32 + 48) = *(v38 + 48);
  v34 = *(v31 + 16);
  v35 = __OFADD__(v34, 1);
  v36 = v34 + 1;
  if (v35)
  {
    __break(1u);
LABEL_37:
    result = sub_1DEF8E6D8();
    __break(1u);
  }

  else
  {
    *(v31 + 16) = v36;
  }

  return result;
}

uint64_t sub_1DEF3CD38(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4298, &qword_1DEF91E10);
  result = sub_1DEF8DEE8();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1DEF8E7A8();

      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1DEF3CF70(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1DEF8D3F8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE42D0, &qword_1DEF91E48);
  v10 = sub_1DEF8DEE8();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1DEF41E4C(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
      result = sub_1DEF8D8B8();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1DEF3D28C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4368, &unk_1DEF91EB0);
  result = sub_1DEF8DEE8();
  v6 = result;
  if (*(v3 + 16))
  {
    v30 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1DEF8E7A8();
      v19 = v17[2];
      v20 = v17[3];

      sub_1DEF8D9B8();
      v21 = v17[4];
      v22 = v17[5];
      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v30;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1DEF3D4CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4318, &qword_1DEF95E70);
  result = sub_1DEF8DEE8();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1DEF8E7A8();
      MEMORY[0x1E12CBF90](v17);
      result = sub_1DEF8E7F8();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

unint64_t sub_1DEF3D6EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4330, &qword_1DEF91E98);
  result = sub_1DEF8DEE8();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; result = sub_1DEEC4FB8(v16, v6))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      v15 = *(*(v3 + 48) + 8 * (v12 | (v7 << 6)));
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= i)
      {
        goto LABEL_15;
      }

      v14 = *(v3 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1DEF3D818(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4250, &qword_1DEF91DE0);
  result = sub_1DEF8DEE8();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v20 = *v18;
      v19 = v18[1];
      v21 = *(v6 + 40);
      sub_1DEF8E7A8();
      if (v19)
      {
        MEMORY[0x1E12CBF60](1);

        sub_1DEF8D9B8();
      }

      else
      {
        MEMORY[0x1E12CBF60](0);
      }

      result = sub_1DEF8E7F8();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_31;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1DEF3DA6C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PairingRelationship();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4300, &qword_1DEF91E70);
  result = sub_1DEF8DEE8();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = 1 << *(v9 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v9 + 56);
    for (i = (v14 + 63) >> 6; v16; result = sub_1DEEC524C(v8, v12))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_13:
      sub_1DEE28090(*(v9 + 48) + *(v5 + 72) * (v18 | (v13 << 6)), v8, type metadata accessor for PairingRelationship);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= i)
      {
        goto LABEL_15;
      }

      v20 = *(v9 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    *v2 = v12;
  }

  return result;
}

uint64_t sub_1DEF3DC38(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE42E8, &unk_1DEF91E60);
  result = sub_1DEF8DEE8();
  v6 = result;
  if (*(v3 + 16))
  {
    v36 = v1;
    v37 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    v38 = result;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v40 = (v11 - 1) & v11;
LABEL_17:
      v19 = *(v3 + 48) + 56 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v23 = *(v19 + 16);
      v22 = *(v19 + 24);
      v24 = *(v19 + 32);
      v25 = *(v19 + 40);
      v41 = *(v19 + 48);
      v26 = *(v6 + 40);
      sub_1DEF8E7A8();

      v39 = v21;
      sub_1DEF8D9B8();
      if (v22)
      {
        sub_1DEF8E7C8();
        v27 = v23;
        sub_1DEF8D9B8();
      }

      else
      {
        v27 = v23;
        sub_1DEF8E7C8();
      }

      MEMORY[0x1E12CBF90](v24);
      MEMORY[0x1E12CBF90](v25);
      MEMORY[0x1E12CBF90](v41);
      result = sub_1DEF8E7F8();
      v6 = v38;
      v28 = -1 << *(v38 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v13 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v13 + 8 * v30);
          if (v34 != -1)
          {
            v14 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v14 = __clz(__rbit64((-1 << v29) & ~*(v13 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v38 + 48) + 56 * v14;
      v11 = v40;
      *v15 = v20;
      *(v15 + 8) = v39;
      *(v15 + 16) = v27;
      *(v15 + 24) = v22;
      *(v15 + 32) = v24;
      *(v15 + 40) = v25;
      *(v15 + 48) = v41;
      ++*(v38 + 16);
      v3 = v37;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        v35 = v6;

        v2 = v36;
        goto LABEL_31;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v40 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v35 = result;

LABEL_31:
    *v2 = v35;
  }

  return result;
}

uint64_t sub_1DEF3DF30(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1DEE13224(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for ZoneVersionAdvertisement(0);
      return sub_1DEE1B4DC(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for ZoneVersionAdvertisement);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1DEEB7700();
    goto LABEL_7;
  }

  sub_1DEEB1028(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_1DEE13224(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_1DEF8E6E8();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1DEF40754(v12, a2, a3, a1, v18, type metadata accessor for ZoneVersionAdvertisement, type metadata accessor for ZoneVersionAdvertisement);
}

uint64_t sub_1DEF3E198(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1DEEAF350(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for PairingRelationship();
      return sub_1DEE1B4DC(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for PairingRelationship);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_1DEEB7B04();
    goto LABEL_7;
  }

  sub_1DEEB1C0C(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_1DEEAF350(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_1DEF8E6E8();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_1DEF408D4(v15, v12, a1, v21, type metadata accessor for PairingRelationship, type metadata accessor for PairingRelationship);
}

uint64_t sub_1DEF3E414(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t), void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(void))
{
  v12 = v7;
  v16 = *v7;
  v17 = a4(a2);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a3 & 1) == 0)
  {
    if (v24 < v22 || (a3 & 1) != 0)
    {
      a6(v22, a3 & 1);
      v25 = *v12;
      v17 = a4(a2);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        a7(0);
        result = sub_1DEF8E6E8();
        __break(1u);
        return result;
      }
    }

    else
    {
      a7 = v17;
      a5();
      v17 = a7;
    }
  }

  v27 = *v12;
  if (v23)
  {
    v28 = v27[7];
    v29 = *(v28 + 8 * v17);
    *(v28 + 8 * v17) = a1;
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  *(v27[6] + 8 * v17) = a2;
  *(v27[7] + 8 * v17) = a1;
  v31 = v27[2];
  v21 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v32;
}

_OWORD *sub_1DEF3E5B0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DEE13224(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1DEEB7E58();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1DEEB2370(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1DEE13224(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1DEF8E6E8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_1DEE117C0(a1, v23);
  }

  else
  {
    sub_1DEF405F8(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1DEF3E700(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t), void (*a5)(void), void (*a6)(void), void (*a7)(void))
{
  v11 = v7;
  v15 = *v7;
  v17 = a4(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      a5();
      goto LABEL_7;
    }

    a6();
    v31 = *v11;
    v32 = a4(a2);
    if ((v21 & 1) == (v33 & 1))
    {
      v17 = v32;
      v23 = *v11;
      if (v21)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    a7(0);
    result = sub_1DEF8E6E8();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v11;
  if (v21)
  {
LABEL_8:
    v24 = v23[7];
    v25 = sub_1DEF8D3F8();
    v26 = *(v25 - 8);
    v27 = *(v26 + 40);
    v28 = v25;
    v29 = v24 + *(v26 + 72) * v17;

    return v27(v29, a1, v28);
  }

LABEL_13:
  sub_1DEF40664(v17, a2, a1, v23);
}

uint64_t sub_1DEF3E8DC(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void))
{
  v30 = a4;
  v31 = a5;
  v6 = v5;
  v10 = sub_1DEF8D3F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = sub_1DEEAF350(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v30();
      goto LABEL_7;
    }

    v31();
    v27 = *v6;
    v28 = sub_1DEEAF350(a2);
    if ((v21 & 1) == (v29 & 1))
    {
      v17 = v28;
      v23 = *v6;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v14, a2, v10);
      return sub_1DEECEADC(v17, v14, a1, v23);
    }

LABEL_15:
    result = sub_1DEF8E6E8();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v6;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = v23[7];
  v25 = *(v24 + 8 * v17);
  *(v24 + 8 * v17) = a1;
}

uint64_t sub_1DEF3EAC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1DEE13224(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for ZoneVersion();
      return sub_1DEE1B4DC(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for ZoneVersion);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1DEEB87E4();
    goto LABEL_7;
  }

  sub_1DEEB36B8(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_1DEE13224(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_1DEF8E6E8();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1DEF40754(v12, a2, a3, a1, v18, type metadata accessor for ZoneVersion, type metadata accessor for ZoneVersion);
}

uint64_t sub_1DEF3EC54(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1DEEAF20C(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for ZoneVersion();
      return sub_1DEE1B4DC(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for ZoneVersion);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1DEEB8A3C();
    goto LABEL_7;
  }

  sub_1DEEB3A30(v13, a3 & 1);
  v20 = *v4;
  v21 = sub_1DEEAF20C(a2);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_15:
    type metadata accessor for Zone.ID();
    result = sub_1DEF8E6E8();
    __break(1u);
    return result;
  }

  v10 = v21;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1DEF40800(v10, a2, a1, v16);
}

uint64_t sub_1DEF3EDB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DEEAF684(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DEEB4064(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1DEEAF684(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1DEF8E6E8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1DEEB8DF0();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_1DEF3EF2C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1DEEAF350(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for NetworkBrowser.Monitor();
      return sub_1DEE1B4DC(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for NetworkBrowser.Monitor);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_1DEEB8F5C();
    goto LABEL_7;
  }

  sub_1DEEB432C(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_1DEEAF350(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_1DEF8E6E8();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_1DEF408D4(v15, v12, a1, v21, type metadata accessor for NetworkBrowser.Monitor, type metadata accessor for NetworkBrowser.Monitor);
}

uint64_t sub_1DEF3F128(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DEE13224(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DEEB4BA8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1DEE13224(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1DEF8E6E8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1DEEB9508();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 40 * v11;
    v24 = *(v23 + 8);
    v26 = *(v23 + 24);
    v25 = *(v23 + 32);
    v27 = *(a1 + 16);
    *v23 = *a1;
    *(v23 + 16) = v27;
    *(v23 + 32) = *(a1 + 32);
    swift_unknownObjectRelease();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v29 = (v22[6] + 16 * v11);
  *v29 = a2;
  v29[1] = a3;
  v30 = v22[7] + 40 * v11;
  v31 = *(a1 + 16);
  *v30 = *a1;
  *(v30 + 16) = v31;
  *(v30 + 32) = *(a1 + 32);
  v32 = v22[2];
  v15 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v33;
}

uint64_t sub_1DEF3F2DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DEE13224(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DEEB51E8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1DEE13224(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_1DEF8E6E8();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      sub_1DEEB98E4();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

_OWORD *sub_1DEF3F454(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1DEEAF640(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1DEEB9A50();
      goto LABEL_7;
    }

    sub_1DEEB548C(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_1DEEAF640(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1DEEBC5D0(a2, v22);
      return sub_1DEF409C8(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_1DEF8E6E8();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1(v17);

  return sub_1DEE117C0(a1, v17);
}

uint64_t sub_1DEF3F5A0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1DEEAF350(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for SessionManager.Session();
      return sub_1DEE1B4DC(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for SessionManager.Session);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_1DEEB9BF4();
    goto LABEL_7;
  }

  sub_1DEEB5744(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_1DEEAF350(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_1DEF8E6E8();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_1DEF408D4(v15, v12, a1, v21, type metadata accessor for SessionManager.Session, type metadata accessor for SessionManager.Session);
}

uint64_t sub_1DEF3F79C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v31 = a1;
  v9 = sub_1DEF8D3F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = sub_1DEEAF350(a3);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      sub_1DEEBA2FC();
      goto LABEL_9;
    }

    sub_1DEEB6218(v19, a4 & 1);
    v22 = *v5;
    v23 = sub_1DEEAF350(a3);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_1DEF8E6E8();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = v31;
  v26 = *v5;
  if (v20)
  {
    v27 = (v26[7] + 16 * v16);
    v28 = v27[1];
    *v27 = v31;
    v27[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    return sub_1DEF40A44(v16, v13, v25, a2, v26);
  }
}

uint64_t sub_1DEF3F9A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1DEE13224(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v24 = *v9;
      v15 = sub_1DEE13224(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_1DEF8E6E8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a2;
  v30[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

uint64_t sub_1DEF3FB3C(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1DEEAF7AC(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for NetworkMessenger.PartialIncomingMessage(0);
      return sub_1DEE1B4DC(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1DEEBA6F0();
    goto LABEL_7;
  }

  sub_1DEEB68A4(v13, a3 & 1);
  v20 = *v4;
  v21 = sub_1DEEAF7AC(a2);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_15:
    result = sub_1DEF8E6E8();
    __break(1u);
    return result;
  }

  v10 = v21;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1DEF40B04(v10, a2, a1, v16);
}

unint64_t sub_1DEF3FC90(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = a2 & 1;
  result = sub_1DEEAF814(a2 & 1);
  v11 = *(v7 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v7 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1DEEB6C00(v14, a3 & 1);
      v18 = *v4;
      result = sub_1DEEAF814(v8);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_1DEF8E6E8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1DEEBA924();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = v8;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

uint64_t sub_1DEF3FDDC(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1DEEAF880(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1DEEBAA80();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1DEEB6E90(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1DEEAF880(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_14:
      result = sub_1DEF8E6E8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (v20[7] + 40 * v9);
    __swift_destroy_boxed_opaque_existential_1(v21);

    return sub_1DEE2F1AC(a1, v21);
  }

  else
  {
    sub_1DEF40BAC(v9, a2, a1, v20);
    return sub_1DEEA8BAC(a2, v23);
  }
}

unint64_t sub_1DEF3FF18(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1DEEAF880(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DEEB71E8(v16, a4 & 1);
      v20 = *v5;
      result = sub_1DEEAF880(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_15:
        result = sub_1DEF8E6E8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1DEEBAC70();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 16 * result;
    *v23 = a1;
    *(v23 + 8) = a2;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v24 = v22[6] + 56 * result;
  v25 = *a3;
  v26 = *(a3 + 16);
  v27 = *(a3 + 32);
  *(v24 + 48) = *(a3 + 48);
  *(v24 + 16) = v26;
  *(v24 + 32) = v27;
  *v24 = v25;
  v28 = v22[7] + 16 * result;
  *v28 = a1;
  *(v28 + 8) = a2;
  v29 = v22[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v22[2] = v30;
  return sub_1DEEA8BAC(a3, v31);
}

uint64_t sub_1DEF40088(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Record.ID.Ownership(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 + 40);
  sub_1DEF8E7A8();
  v16 = a1[2];
  v17 = a1[3];
  sub_1DEF8D9B8();
  v18 = a1[4];
  v19 = v18[2];
  v20 = v18[3];
  sub_1DEF8D9B8();
  v21 = v18[4];
  v22 = v18[5];

  sub_1DEF8D9B8();

  sub_1DEE28090(a1 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v14, type metadata accessor for Record.ID.Ownership);
  if ((*(v7 + 48))(v14, 1, v6) == 1)
  {
    MEMORY[0x1E12CBF60](0);
  }

  else
  {
    (*(v7 + 32))(v10, v14, v6);
    MEMORY[0x1E12CBF60](1);
    sub_1DEF41E4C(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
    sub_1DEF8D8C8();
    (*(v7 + 8))(v10, v6);
  }

  sub_1DEF8E7F8();
  v23 = -1 << *(a3 + 32);
  v24 = sub_1DEF8DE48();
  *(a3 + 64 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
  *(*(a3 + 48) + 8 * v24) = a1;
  result = (*(v7 + 32))(*(a3 + 56) + *(v7 + 72) * v24, a2, v6);
  ++*(a3 + 16);
  return result;
}

unint64_t sub_1DEF40350(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Record.ID.Ownership(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 + 40);
  sub_1DEF8E7A8();
  v16 = a1[2];
  v17 = a1[3];
  sub_1DEF8D9B8();
  v18 = a1[4];
  v19 = v18[2];
  v20 = v18[3];
  sub_1DEF8D9B8();
  v21 = v18[4];
  v22 = v18[5];

  sub_1DEF8D9B8();

  sub_1DEE28090(a1 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v14, type metadata accessor for Record.ID.Ownership);
  if ((*(v7 + 48))(v14, 1, v6) == 1)
  {
    MEMORY[0x1E12CBF60](0);
  }

  else
  {
    (*(v7 + 32))(v10, v14, v6);
    MEMORY[0x1E12CBF60](1);
    sub_1DEF41E4C(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
    sub_1DEF8D8C8();
    (*(v7 + 8))(v10, v6);
  }

  sub_1DEF8E7F8();
  v23 = -1 << *(a3 + 32);
  result = sub_1DEF8DE48();
  *(a3 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a3 + 48) + 8 * result) = a1;
  *(*(a3 + 56) + 8 * result) = a2;
  ++*(a3 + 16);
  return result;
}

_OWORD *sub_1DEF405F8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1DEE117C0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1DEF40664(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_1DEF8D3F8();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_1DEF40710(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_1DEF40754(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = sub_1DEE139C0(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

uint64_t sub_1DEF40800(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for ZoneVersion();
  result = sub_1DEE139C0(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for ZoneVersion);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_1DEF408D4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = sub_1DEF8D3F8();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = a5(0);
  result = sub_1DEE139C0(a3, v14 + *(*(v15 - 8) + 72) * a1, a6);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

_OWORD *sub_1DEF409C8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1DEE117C0(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_1DEF40A44(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_1DEF8D3F8();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_1DEF40B04(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for NetworkMessenger.PartialIncomingMessage(0);
  result = sub_1DEE139C0(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_1DEF40BAC(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 56 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 48) = *(a2 + 48);
  result = sub_1DEE2F1AC(a3, a4[7] + 40 * a1);
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void sub_1DEF40C34(uint64_t a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      sub_1DEF410F8(v8, v4, v2);
      MEMORY[0x1E12CCD70](v8, -1, -1);
      goto LABEL_4;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v6 = v9 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_1DEF40D94(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

LABEL_4:
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1DEF40D94(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v36 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v34 - v6;
  v48 = sub_1DEF8D378();
  v8 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v34 - v12;
  v13 = 0;
  v47 = a3;
  v16 = *(a3 + 64);
  v15 = a3 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v21 = (v11 + 48);
  v39 = (v11 + 32);
  v37 = 0;
  v38 = (v11 + 8);
  v43 = v7;
  v40 = (v11 + 48);
  while (v19)
  {
    v22 = __clz(__rbit64(v19));
    v49 = (v19 - 1) & v19;
LABEL_12:
    v25 = v22 | (v13 << 6);
    v26 = *(v47 + 56);
    v27 = *(*(v47 + 48) + 8 * v25);
    v46 = v25;
    sub_1DEE17214(*(v26 + 8 * v25) + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration, v7, &qword_1ECDE4DC0, &qword_1DEF91640);
    if ((*v21)(v7, 1, v48) == 1)
    {
      sub_1DEE171B4(v7, &qword_1ECDE4DC0, &qword_1DEF91640);
      v19 = v49;
    }

    else
    {
      v28 = v41;
      v29 = v48;
      (*v39)(v41, v7, v48);
      v45 = v27;

      v30 = v42;
      sub_1DEF8D348();
      v44 = sub_1DEF8D308();
      v31 = *v38;
      (*v38)(v30, v29);
      v32 = v28;
      v21 = v40;
      v31(v32, v29);
      v7 = v43;

      v19 = v49;
      if (v44)
      {
        *(v36 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
        if (__OFADD__(v37++, 1))
        {
          __break(1u);
LABEL_17:
          sub_1DEEC64F8(v36, v35, v37, v47);
          return;
        }
      }
    }
  }

  v23 = v13;
  while (1)
  {
    v13 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      goto LABEL_17;
    }

    v24 = *(v15 + 8 * v13);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v49 = (v24 - 1) & v24;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void *sub_1DEF410F8(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_1DEF40D94(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void sub_1DEF41170(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4290, &qword_1DEF95B60);
      v7 = *(type metadata accessor for PairingRelationship() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(type metadata accessor for PairingRelationship() - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

char *sub_1DEF41368(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_1DEF8DE68();
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_1DEE2774C();
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return a2;
}

uint64_t sub_1DEF41454(uint64_t result, int a2, char a3, uint64_t a4, void (*a5)(void), void (*a6)())
{
  if (a3)
  {
    result = sub_1DEF8E068();
    if (result == *(a4 + 36))
    {
      sub_1DEF8E078();
      a5(0);
      swift_dynamicCast();
      a6();
      v10 = v9;

      if (v10)
      {
        sub_1DEF8E048();
        v11 = sub_1DEF8E098();
        swift_unknownObjectRelease();
        return v11;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  result = sub_1DEF8DE38();
  v12 = *(a4 + 36);
  return result;
}

uint64_t sub_1DEF4167C(uint64_t result, uint64_t a2, int a3, char a4, uint64_t a5, void (*a6)(void), uint64_t (*a7)(), void (*a8)(void))
{
  v11 = result;
  if ((a5 & 0xC000000000000001) == 0)
  {
    if (a4)
    {
      result = sub_1DEF8E068();
      if (result != *(a5 + 36))
      {
        __break(1u);
        goto LABEL_15;
      }

      sub_1DEF8E078();
      a6(0);
      swift_dynamicCast();
      a2 = a7();
      v16 = v15;

      if (v16)
      {
LABEL_12:
        v17 = *(a5 + 56);
        v13 = *(*(a5 + 48) + 8 * a2);
        *v11 = *(v17 + 8 * a2);

        return v13;
      }

      __break(1u);
    }

    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1DEF8E0A8();
    a6(0);
    swift_dynamicCast();
    v13 = v18;
    a8(0);
    swift_dynamicCast();
    *v11 = v18;
    return v13;
  }

LABEL_18:
  __break(1u);
  return result;
}

BOOL sub_1DEF4188C(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1DEF37C00(*a1, v2, v3);
}

uint64_t type metadata accessor for MetadataRecordPredicate()
{
  result = qword_1ECDE4F68;
  if (!qword_1ECDE4F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DEF41938()
{
  sub_1DEF419DC();
  if (v0 <= 0x3F)
  {
    sub_1DEF41A2C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PairingRelationship();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DEF419DC()
{
  if (!qword_1ECDE4F78)
  {
    v0 = sub_1DEF8DDC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECDE4F78);
    }
  }
}

void sub_1DEF41A2C()
{
  if (!qword_1ECDE4F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE4F88, &qword_1DEF95DE8);
    v0 = sub_1DEF8DDC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECDE4F80);
    }
  }
}

uint64_t sub_1DEF41AB8(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  v29[1] = a5;
  v9 = sub_1DEF8D3F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a4;
  v16 = sub_1DEEAF350(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_1DEEB9288();
      goto LABEL_7;
    }

    sub_1DEEB47CC(v19, a3 & 1);
    v26 = *a4;
    v27 = sub_1DEEAF350(a2);
    if ((v20 & 1) == (v28 & 1))
    {
      v16 = v27;
      v22 = *a4;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v10 + 16))(v13, a2, v9);
      return sub_1DEECEADC(v16, v13, a1, v22);
    }

LABEL_15:
    result = sub_1DEF8E6E8();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *a4;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = v22[7];
  v24 = *(v23 + 8 * v16);
  *(v23 + 8 * v16) = a1;

  return swift_unknownObjectRelease();
}

uint64_t sub_1DEF41C90(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      sub_1DEF38C28(&v6, v4);
      --v2;
    }

    while (v2);
    return v7;
  }

  return a2;
}

uint64_t sub_1DEF41CEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  v21 = a2;
  v13 = *(a1 + 16);
  if (v13)
  {
    v16 = *(v5 + 16);
    v14 = v5 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v8, v17, v4, v10);
      sub_1DEF386D8(v12, v8);
      (*(v14 - 8))(v12, v4);
      v17 += v18;
      --v13;
    }

    while (v13);
    return v21;
  }

  return a2;
}

uint64_t sub_1DEF41E4C(unint64_t *a1, void (*a2)(uint64_t))
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

ReplicatorEngine::MessagePriority_optional __swiftcall MessagePriority.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue >= 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1DEF41EF0()
{
  result = qword_1ECDE4FD0;
  if (!qword_1ECDE4FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4FD0);
  }

  return result;
}

unint64_t sub_1DEF42000()
{
  result = qword_1ECDE4FD8;
  if (!qword_1ECDE4FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE4FE0, &qword_1DEF95F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4FD8);
  }

  return result;
}

unint64_t sub_1DEF42074()
{
  result = qword_1ECDE4FE8;
  if (!qword_1ECDE4FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4FE8);
  }

  return result;
}

uint64_t IDSDependencyDevice.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t IDSDependencyDevice.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1DEF42158(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DEF421A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DEF422C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

id sub_1DEF4231C()
{
  v1 = v0;
  v2 = sub_1DEF8DD08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DEF8DCD8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_1DEF8D6D8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = *(v0 + 96);
  if (v11)
  {
    v12 = *(v0 + 96);
  }

  else
  {
    v13 = sub_1DEE3C630();
    v18[1] = "v16@?0@NSNotification8";
    v18[2] = v13;
    sub_1DEF8D6C8();
    v18[3] = MEMORY[0x1E69E7CC0];
    v18[0] = sub_1DEE1BA40(&qword_1ECDE2C10, MEMORY[0x1E69E8030]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
    sub_1DEE1B590(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0);
    sub_1DEF8DE08();
    (*(v3 + 104))(v6, *MEMORY[0x1E69E8098], v2);
    v14 = sub_1DEF8DD38();
    v15 = *(v0 + 96);
    *(v1 + 96) = v14;
    v12 = v14;

    v11 = 0;
  }

  v16 = v11;
  return v12;
}

void sub_1DEF42598(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 112);
  v6 = *(v5 + 16);
  if (v6)
  {
    v29 = objc_opt_self();
    v7 = (v5 + 32);
    do
    {
      v8 = *v7++;
      v9 = v8;
      v10 = [v29 defaultCenter];
      v11 = swift_allocObject();
      swift_weakInit();
      v12 = swift_allocObject();
      v12[2] = v11;
      v12[3] = a1;
      v12[4] = a2;
      v34 = sub_1DEF465C4;
      v35 = v12;
      aBlock = MEMORY[0x1E69E9820];
      v31 = 1107296256;
      v32 = sub_1DEF43010;
      v33 = &block_descriptor_81_0;
      v13 = _Block_copy(&aBlock);
      v14 = v9;

      v15 = [v10 addObserverForName:v14 object:0 queue:0 usingBlock:v13];
      _Block_release(v13);
      swift_unknownObjectRelease();

      --v6;
    }

    while (v6);
  }

  v16 = *MEMORY[0x1E69B36A8];
  sub_1DEF8D948();
  v17 = sub_1DEF4231C();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = a1;
  v19[4] = a2;
  v34 = sub_1DEF465D0;
  v35 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_1DEF422C8;
  v33 = &block_descriptor_88;
  v20 = _Block_copy(&aBlock);

  v21 = sub_1DEF8D998();

  swift_beginAccess();
  notify_register_dispatch((v21 + 32), (v2 + 104), v17, v20);
  swift_endAccess();

  _Block_release(v20);

  v22 = *MEMORY[0x1E69B36A0];
  sub_1DEF8D948();
  v23 = *(v2 + 96);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = a1;
  v25[4] = a2;
  v34 = sub_1DEF465DC;
  v35 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_1DEF422C8;
  v33 = &block_descriptor_95;
  v26 = _Block_copy(&aBlock);
  v27 = v23;

  v28 = sub_1DEF8D998();

  swift_beginAccess();
  notify_register_dispatch((v28 + 32), (v2 + 108), v27, v26);
  swift_endAccess();

  _Block_release(v26);
}

uint64_t sub_1DEF429BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1DEF8D698();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DEF8D6D8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    v18 = sub_1DEF8CFD8();
    v19 = sub_1DEF8D948();
    v28 = v12;
    v29 = v11;
    v20 = v19;
    v22 = v21;

    v27 = sub_1DEF4231C();
    v23 = swift_allocObject();
    v23[2] = v20;
    v23[3] = v22;
    v23[4] = a3;
    v23[5] = a4;
    v23[6] = v17;
    aBlock[4] = sub_1DEF465E8;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE3F0C0;
    aBlock[3] = &block_descriptor_117_0;
    v24 = _Block_copy(aBlock);

    sub_1DEF8D6B8();
    v30 = MEMORY[0x1E69E7CC0];
    sub_1DEE1BA40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEF8DE08();
    v25 = v27;
    MEMORY[0x1E12CB4D0](0, v15, v10, v24);
    _Block_release(v24);

    (*(v7 + 8))(v10, v6);
    (*(v28 + 8))(v15, v29);
  }

  return result;
}

uint64_t sub_1DEF42CE4(uint64_t a1, unint64_t a2, uint64_t (*a3)(void), uint64_t a4, void *a5)
{
  v32 = a3;
  v9 = sub_1DEF8D788();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v14 = sub_1DEF8D508();
  __swift_project_value_buffer(v14, qword_1ECDF6028);

  v15 = sub_1DEF8D4D8();
  v16 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = a1;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31[1] = a4;
    v20 = v19;
    v33 = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_1DEE12A5C(v17, a2, &v33);
    _os_log_impl(&dword_1DEE0F000, v15, v16, "Paired watch state changed: %{public}s, will check for pairing change", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1E12CCD70](v20, -1, -1);
    MEMORY[0x1E12CCD70](v18, -1, -1);
  }

  v21 = v32();
  *v13 = sub_1DEF4231C();
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9);
  v22 = sub_1DEF8D7B8();
  result = (*(v10 + 8))(v13, v9);
  if (v22)
  {
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = a5;
    v25 = a5[10];
    v26 = a5[11];
    __swift_project_boxed_opaque_existential_1(a5 + 7, v25);
    v27 = a5[12];
    v28 = swift_allocObject();
    v28[2] = a5;
    v28[3] = v21;
    v28[4] = sub_1DEF466B0;
    v28[5] = v24;
    v29 = *(v26 + 8);
    swift_retain_n();
    v30 = v27;

    v29(v30, sub_1DEF46670, v28, v25, v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEF43010(uint64_t a1)
{
  v2 = sub_1DEF8CFE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1DEF8CFC8();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1DEF43104(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = sub_1DEF8D788();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v11 = sub_1DEF8D508();
    __swift_project_value_buffer(v11, qword_1ECDF6028);
    v12 = sub_1DEF8D4D8();
    v13 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DEE0F000, v12, v13, "Paired watch did become active, will check for pairing change", v14, 2u);
      MEMORY[0x1E12CCD70](v14, -1, -1);
    }

    v15 = a3();
    *v8 = sub_1DEF4231C();
    (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
    v16 = sub_1DEF8D7B8();
    result = (*(v5 + 8))(v8, v4);
    if (v16)
    {
      v17 = swift_allocObject();
      v17[2] = 0;
      v17[3] = 0;
      v17[4] = v10;
      v18 = v10[10];
      v19 = v10[11];
      __swift_project_boxed_opaque_existential_1(v10 + 7, v18);
      v20 = v10[12];
      v21 = swift_allocObject();
      v21[2] = v10;
      v21[3] = v15;
      v21[4] = sub_1DEF466B0;
      v21[5] = v17;
      v22 = *(v19 + 8);
      swift_retain_n();
      v23 = v20;

      v22(v23, sub_1DEF46670, v21, v18, v19);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1DEF433EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = sub_1DEF8D788();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v11 = sub_1DEF8D508();
    __swift_project_value_buffer(v11, qword_1ECDF6028);
    v12 = sub_1DEF8D4D8();
    v13 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DEE0F000, v12, v13, "Paired watch version changed, will check for pairing change", v14, 2u);
      MEMORY[0x1E12CCD70](v14, -1, -1);
    }

    v15 = a3();
    *v8 = sub_1DEF4231C();
    (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
    v16 = sub_1DEF8D7B8();
    result = (*(v5 + 8))(v8, v4);
    if (v16)
    {
      v17 = swift_allocObject();
      v17[2] = 0;
      v17[3] = 0;
      v17[4] = v10;
      v18 = v10[10];
      v19 = v10[11];
      __swift_project_boxed_opaque_existential_1(v10 + 7, v18);
      v20 = v10[12];
      v21 = swift_allocObject();
      v21[2] = v10;
      v21[3] = v15;
      v21[4] = sub_1DEF466B0;
      v21[5] = v17;
      v22 = *(v19 + 8);
      swift_retain_n();
      v23 = v20;

      v22(v23, sub_1DEF46670, v21, v18, v19);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1DEF436D4()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      v6 = v5;
      v7 = [v3 defaultCenter];
      [v7 removeObserver:v0 name:v6 object:0];

      --v2;
    }

    while (v2);
  }

  swift_beginAccess();
  notify_cancel(*(v0 + 104));
  swift_beginAccess();
  return notify_cancel(*(v0 + 108));
}

uint64_t sub_1DEF437B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1DEF8D698();
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1DEF8D6D8();
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DEF4231C();
  v16 = swift_allocObject();
  v16[2] = v3;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;
  aBlock[4] = sub_1DEF4659C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_66_0;
  v17 = _Block_copy(aBlock);

  sub_1DEE2CB00(a2);
  sub_1DEF8D6B8();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1DEE1BA40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v14, v10, v17);
  _Block_release(v17);

  (*(v21 + 8))(v10, v7);
  (*(v11 + 8))(v14, v20);
}

uint64_t sub_1DEF43A9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DEF8D788();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v12 = sub_1DEF4231C();
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8);
  v13 = sub_1DEF8D7B8();
  result = (*(v9 + 8))(v12, v8);
  if (v13)
  {
    v15 = swift_allocObject();
    v15[2] = a3;
    v15[3] = a4;
    v15[4] = a1;
    v17 = a1[10];
    v16 = a1[11];
    v21[1] = __swift_project_boxed_opaque_existential_1(a1 + 7, v17);
    v18 = a1[12];
    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a2;
    v19[4] = sub_1DEF465A8;
    v19[5] = v15;
    v21[0] = *(v16 + 8);
    swift_retain_n();
    sub_1DEE2CB00(a3);
    v20 = v18;

    (v21[0])(v20, sub_1DEF465B8, v19, v17, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DEF43CB4(void *a1, char a2, void (*a3)(void), uint64_t a4, void *a5)
{
  v10 = type metadata accessor for PairingRelationship();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v109 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v108 = &v92 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v92 - v17;
  MEMORY[0x1EEE9AC00](v19);
  if (a2)
  {
    if (qword_1ECDE2E58 == -1)
    {
LABEL_3:
      v21 = sub_1DEF8D508();
      __swift_project_value_buffer(v21, qword_1ECDF6028);
      v22 = a1;
      v23 = sub_1DEF8D4D8();
      v24 = sub_1DEF8DCB8();
      sub_1DEEE43C8(a1, 1);
      if (os_log_type_enabled(v23, v24))
      {
        v25 = a1;
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138412290;
        v28 = v25;
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 4) = v29;
        *v27 = v29;
        _os_log_impl(&dword_1DEE0F000, v23, v24, "failed to get active watch pairing relationship. will try again later: %@", v26, 0xCu);
        sub_1DEEE2A84(v27);
        MEMORY[0x1E12CCD70](v27, -1, -1);
        MEMORY[0x1E12CCD70](v26, -1, -1);
      }

      if (a3)
      {
        a3();
      }

      return;
    }

LABEL_32:
    swift_once();
    goto LABEL_3;
  }

  v105 = &v92 - v20;
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v30 = sub_1DEF8D508();
  v31 = __swift_project_value_buffer(v30, qword_1ECDF6028);

  v106 = v31;
  v32 = sub_1DEF8D4D8();
  v33 = sub_1DEF8DCB8();
  sub_1DEEE43C8(a1, 0);
  v34 = os_log_type_enabled(v32, v33);
  v107 = v10;
  v99 = a4;
  v100 = a3;
  v103 = v18;
  v104 = a5;
  if (v34)
  {
    v97 = v33;
    v98 = v32;
    v35 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v111[0] = v95;
    v96 = v35;
    *v35 = 136315138;
    v36 = a1[2];
    v37 = MEMORY[0x1E69E7CC0];
    if (v36)
    {
      v110 = MEMORY[0x1E69E7CC0];
      sub_1DEEC7F0C(0, v36, 0);
      v37 = v110;
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4148, &qword_1DEF96190);
      v39 = *(v11 + 80);
      v93 = v11;
      v94 = a1;
      v40 = a1 + ((v39 + 32) & ~v39);
      v101 = *(v11 + 72);
      *&v102 = v38;
      v41 = v105;
      while (1)
      {
        sub_1DEEE42FC(v40, v41);
        v42 = (v41 + *(v10 + 20));
        a3 = v42[2];
        v43 = v42[3];
        v45 = *v42;
        v44 = v42[1];
        v46 = sub_1DEF8E148();

        v47 = sub_1DEE13224(a3, v43);
        a1 = v48;

        if (a1)
        {
          break;
        }

        v46[(v47 >> 6) + 8] |= 1 << v47;
        v49 = (v46[6] + 16 * v47);
        *v49 = a3;
        v49[1] = v43;
        v50 = (v46[7] + 16 * v47);
        *v50 = v45;
        v50[1] = v44;
        v51 = v46[2];
        v52 = __OFADD__(v51, 1);
        v53 = v51 + 1;
        if (v52)
        {
          goto LABEL_31;
        }

        v46[2] = v53;
        v41 = v105;
        sub_1DEEE4360(v105);
        v110 = v37;
        v55 = *(v37 + 16);
        v54 = *(v37 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_1DEEC7F0C((v54 > 1), v55 + 1, 1);
          v41 = v105;
          v37 = v110;
        }

        *(v37 + 16) = v55 + 1;
        *(v37 + 8 * v55 + 32) = v46;
        v40 += v101;
        --v36;
        v10 = v107;
        if (!v36)
        {
          v18 = v103;
          a5 = v104;
          v11 = v93;
          a1 = v94;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_18:
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE42B8, &qword_1DEF91E20);
    v57 = MEMORY[0x1E12CB290](v37, v56);
    v59 = v58;

    v60 = sub_1DEE12A5C(v57, v59, v111);

    v61 = v96;
    *(v96 + 1) = v60;
    v32 = v98;
    _os_log_impl(&dword_1DEE0F000, v98, v97, "nonActiveWatchPairingRelationships:%s", v61, 0xCu);
    v62 = v95;
    __swift_destroy_boxed_opaque_existential_1(v95);
    MEMORY[0x1E12CCD70](v62, -1, -1);
    MEMORY[0x1E12CCD70](v61, -1, -1);
  }

  v65 = a1[2];
  if (!v65)
  {
    v91 = v100;
    if (!v100)
    {
      return;
    }

    goto LABEL_28;
  }

  v66 = v11;
  v67 = a5;
  v68 = v10;
  v69 = a1 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
  v105 = *(v66 + 72);
  *&v64 = 136315394;
  v102 = v64;
  do
  {
    sub_1DEEE42FC(v69, v18);
    v74 = v108;
    sub_1DEEE42FC(v18, v108);
    v75 = v109;
    sub_1DEEE42FC(v18, v109);
    v76 = sub_1DEF8D4D8();
    v77 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v111[0] = v79;
      *v78 = v102;
      v80 = v108 + *(v68 + 20);
      v81 = *(v80 + 16);
      v82 = *(v80 + 24);

      sub_1DEEE4360(v108);
      v83 = sub_1DEE12A5C(v81, v82, v111);

      *(v78 + 4) = v83;
      *(v78 + 12) = 2080;
      v84 = (v109 + *(v107 + 20));
      v85 = *v84;
      v86 = v84[1];

      sub_1DEEE4360(v109);
      v87 = sub_1DEE12A5C(v85, v86, v111);
      v71 = v104;
      v70 = v107;

      *(v78 + 14) = v87;
      _os_log_impl(&dword_1DEE0F000, v76, v77, "Deactivating non-active watch relationship %s %s", v78, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v79, -1, -1);
      v88 = v78;
      v18 = v103;
      MEMORY[0x1E12CCD70](v88, -1, -1);
    }

    else
    {

      sub_1DEEE4360(v75);
      sub_1DEEE4360(v74);
      v70 = v68;
      v71 = v67;
    }

    v72 = v71[5];
    v73 = v71[6];
    v67 = v71;
    __swift_project_boxed_opaque_existential_1(v71 + 2, v72);
    v68 = v70;
    (*(v73 + 40))(*&v18[*(v70 + 20)], *&v18[*(v70 + 20) + 8], v72, v73);
    sub_1DEEE4360(v18);
    v69 += v105;
    --v65;
  }

  while (v65);
  v89 = v67[5];
  v90 = v67[6];
  __swift_project_boxed_opaque_existential_1(v67 + 2, v89);
  v63 = (*(v90 + 48))(v89, v90);
  v91 = v100;
  if (v100)
  {
LABEL_28:
    (v91)(v63);
  }
}

void sub_1DEF44494(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5)
{
  v48 = a5;
  v49 = a4;
  v47 = a3;
  v6 = type metadata accessor for PairingRelationship();
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v45 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  v18 = sub_1DEF8D788();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(a1 + 8);
  v51 = *a1;
  v24 = *(a1 + 16);
  *v22 = sub_1DEF4231C();
  (*(v19 + 104))(v22, *MEMORY[0x1E69E8020], v18);
  v25 = sub_1DEF8D7B8();
  (*(v19 + 8))(v22, v18);
  if (v25)
  {
    if (v24)
    {
      sub_1DEEAA8E8();
      v26 = swift_allocError();
      *v27 = v51;
      v49(v26, 1);

      return;
    }

    v28 = v51;
    if (v23)
    {
      v29 = *(v47 + 16);
      if (v29)
      {
        v30 = *(v46 + 72);
        v46 = (*(v46 + 80) + 32) & ~*(v46 + 80);
        v31 = v47 + v46;
        v32 = MEMORY[0x1E69E7CC0];
        v50 = v9;
        do
        {
          sub_1DEEE42FC(v31, v12);
          v33 = &v12[*(v6 + 20)];
          if (v33[48] != 4 || (v28 == *v33 ? (v34 = v23 == *(v33 + 1)) : (v34 = 0), v34 || (sub_1DEF8E4E8() & 1) != 0))
          {
            sub_1DEEE4360(v12);
          }

          else
          {
            sub_1DEF0A360(v12, v9);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v52 = v32;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1DEEC7DA4(0, v32[2] + 1, 1);
              v28 = v51;
              v32 = v52;
            }

            v37 = v32[2];
            v36 = v32[3];
            if (v37 >= v36 >> 1)
            {
              sub_1DEEC7DA4(v36 > 1, v37 + 1, 1);
              v28 = v51;
              v32 = v52;
            }

            v32[2] = v37 + 1;
            v9 = v50;
            sub_1DEF0A360(v50, v32 + v46 + v37 * v30);
          }

          v31 += v30;
          --v29;
        }

        while (v29);
        goto LABEL_31;
      }
    }

    else
    {
      v38 = *(v47 + 16);
      if (v38)
      {
        v39 = *(v46 + 72);
        v51 = (*(v46 + 80) + 32) & ~*(v46 + 80);
        v40 = v47 + v51;
        v32 = MEMORY[0x1E69E7CC0];
        v41 = v50;
        do
        {
          sub_1DEEE42FC(v40, v17);
          if (v17[*(v6 + 20) + 48] == 4)
          {
            sub_1DEF0A360(v17, v41);
            v42 = swift_isUniquelyReferenced_nonNull_native();
            v52 = v32;
            if ((v42 & 1) == 0)
            {
              sub_1DEEC7DA4(0, v32[2] + 1, 1);
              v41 = v50;
              v32 = v52;
            }

            v44 = v32[2];
            v43 = v32[3];
            if (v44 >= v43 >> 1)
            {
              sub_1DEEC7DA4(v43 > 1, v44 + 1, 1);
              v41 = v50;
              v32 = v52;
            }

            v32[2] = v44 + 1;
            sub_1DEF0A360(v41, v32 + v51 + v44 * v39);
          }

          else
          {
            sub_1DEEE4360(v17);
          }

          v40 += v39;
          --v38;
        }

        while (v38);
        goto LABEL_31;
      }
    }

    v32 = MEMORY[0x1E69E7CC0];
LABEL_31:
    v49(v32, 0);

    return;
  }

  __break(1u);
}

uint64_t sub_1DEF44924()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v1 = *(v0 + 112);

  return swift_deallocClassInstance();
}

uint64_t sub_1DEF44998@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t **a3@<X8>)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = *(*(v7 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  v15 = sub_1DEF46258(v13, a2, v3, v7, v8);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a3 = v15;
  return result;
}

id sub_1DEF44B04()
{
  v1 = v0;
  v2 = sub_1DEF8DD08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DEF8DCD8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_1DEF8D6D8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = *(v0 + 16);
  if (v11)
  {
    v12 = *(v0 + 16);
  }

  else
  {
    v13 = sub_1DEE3C630();
    v18[1] = "e.alloy.replicator";
    v18[2] = v13;
    sub_1DEF8D6C8();
    v18[3] = MEMORY[0x1E69E7CC0];
    v18[0] = sub_1DEE1BA40(&qword_1ECDE2C10, MEMORY[0x1E69E8030]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
    sub_1DEE1B590(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0);
    sub_1DEF8DE08();
    (*(v3 + 104))(v6, *MEMORY[0x1E69E8098], v2);
    v14 = sub_1DEF8DD38();
    v15 = *(v0 + 16);
    *(v1 + 16) = v14;
    v12 = v14;

    v11 = 0;
  }

  v16 = v11;
  return v12;
}

uint64_t sub_1DEF44D80(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1DEF8D698();
  v22 = *(v7 - 8);
  v8 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1DEF8D6D8();
  v11 = *(v21 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DEF44B04();
  v16 = swift_allocObject();
  v16[2] = v3;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;
  aBlock[4] = sub_1DEF46570;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_60_0;
  v17 = _Block_copy(aBlock);

  v18 = a1;

  sub_1DEF8D6B8();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1DEE1BA40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v14, v10, v17);
  _Block_release(v17);

  (*(v22 + 8))(v10, v7);
  (*(v11 + 8))(v14, v21);
}

uint64_t sub_1DEF4505C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v78 = a1;
  v5 = sub_1DEF8D698();
  v79 = *(v5 - 8);
  v6 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1DEF8D6D8();
  v9 = *(v80 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DEF8D788();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v17 = sub_1DEF44B04();
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13);
  v18 = sub_1DEF8D7B8();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  v19 = [objc_opt_self() sharedInstance];
  if (!v19)
  {
    if (qword_1ECDE2E58 == -1)
    {
LABEL_10:
      v38 = sub_1DEF8D508();
      __swift_project_value_buffer(v38, qword_1ECDF6028);
      v39 = sub_1DEF8D4D8();
      v40 = sub_1DEF8DC98();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_1DEE0F000, v39, v40, "No NanoRegistry singleton", v41, 2u);
        MEMORY[0x1E12CCD70](v41, -1, -1);
      }

      v42 = swift_allocObject();
      *(v42 + 16) = a2;
      *(v42 + 24) = a3;
      v86 = sub_1DEF4667C;
      v87 = v42;
      aBlock = MEMORY[0x1E69E9820];
      v83 = 1107296256;
      v84 = sub_1DEE3F0C0;
      v85 = &block_descriptor_16;
      v43 = _Block_copy(&aBlock);

      sub_1DEF8D6B8();
      v81 = MEMORY[0x1E69E7CC0];
      sub_1DEE1BA40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
      sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
      sub_1DEF8DE08();
      MEMORY[0x1E12CB4D0](0, v12, v8, v43);
      goto LABEL_18;
    }

LABEL_45:
    swift_once();
    goto LABEL_10;
  }

  v20 = v19;
  v21 = [v19 getActivePairedDeviceExcludingAltAccount];
  if (v21)
  {
    v22 = v21;
    v77 = v9;
    v23 = objc_allocWithZone(MEMORY[0x1E69A48A8]);
    v24 = sub_1DEF8D918();
    v25 = [v23 initWithService_];

    if (v25)
    {
      v26 = [v25 devices];
      if (v26)
      {
        v27 = v26;
        v28 = v22;
        v29 = [v20 deviceForNRDevice:v28 fromIDSDevices:v27];
        v76 = v28;

        if (v29)
        {
          v30 = [v29 uniqueIDOverride];
          v75 = v29;
          if (v30)
          {
            v31 = v30;
            v32 = sub_1DEF8D948();
            v34 = v33;

            v35 = swift_allocObject();
            v35[2] = a2;
            v35[3] = a3;
            v35[4] = v32;
            v35[5] = v34;
            v86 = sub_1DEF46554;
            v87 = v35;
            aBlock = MEMORY[0x1E69E9820];
            v83 = 1107296256;
            v84 = sub_1DEE3F0C0;
            v85 = &block_descriptor_54_0;
            v36 = _Block_copy(&aBlock);

            sub_1DEF8D6B8();
            v81 = MEMORY[0x1E69E7CC0];
            sub_1DEE1BA40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
            sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
            sub_1DEF8DE08();
            MEMORY[0x1E12CB4D0](0, v12, v8, v36);
            _Block_release(v36);

            v37 = v75;
LABEL_41:

            goto LABEL_42;
          }

          if (qword_1ECDE2E58 != -1)
          {
            swift_once();
          }

          v67 = sub_1DEF8D508();
          __swift_project_value_buffer(v67, qword_1ECDF6028);
          v68 = sub_1DEF8D4D8();
          v69 = sub_1DEF8DC98();
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            *v70 = 0;
            _os_log_impl(&dword_1DEE0F000, v68, v69, "Could not fetch IDS ID from activePairedDevice", v70, 2u);
            MEMORY[0x1E12CCD70](v70, -1, -1);
          }

          v71 = swift_allocObject();
          *(v71 + 16) = a2;
          *(v71 + 24) = a3;
          v86 = sub_1DEF46678;
          v87 = v71;
          aBlock = MEMORY[0x1E69E9820];
          v83 = 1107296256;
          v84 = sub_1DEE3F0C0;
          v85 = &block_descriptor_48_0;
          v72 = _Block_copy(&aBlock);

          sub_1DEF8D6B8();
          v81 = MEMORY[0x1E69E7CC0];
          sub_1DEE1BA40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
          sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
          sub_1DEF8DE08();
          MEMORY[0x1E12CB4D0](0, v12, v8, v72);

          v66 = v72;
        }

        else
        {
          if (qword_1ECDE2E58 != -1)
          {
            swift_once();
          }

          v60 = sub_1DEF8D508();
          __swift_project_value_buffer(v60, qword_1ECDF6028);
          v61 = sub_1DEF8D4D8();
          v62 = sub_1DEF8DC98();
          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            *v63 = 0;
            _os_log_impl(&dword_1DEE0F000, v61, v62, "Could not fetch device from activePairedDevice", v63, 2u);
            MEMORY[0x1E12CCD70](v63, -1, -1);
          }

          v64 = swift_allocObject();
          *(v64 + 16) = a2;
          *(v64 + 24) = a3;
          v86 = sub_1DEF46508;
          v87 = v64;
          aBlock = MEMORY[0x1E69E9820];
          v83 = 1107296256;
          v84 = sub_1DEE3F0C0;
          v85 = &block_descriptor_42;
          v65 = _Block_copy(&aBlock);

          sub_1DEF8D6B8();
          v81 = MEMORY[0x1E69E7CC0];
          sub_1DEE1BA40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
          sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
          sub_1DEF8DE08();
          MEMORY[0x1E12CB4D0](0, v12, v8, v65);

          v66 = v65;
        }

        _Block_release(v66);
        v37 = v76;
        goto LABEL_41;
      }

      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v76 = v25;
      v55 = sub_1DEF8D508();
      __swift_project_value_buffer(v55, qword_1ECDF6028);
      v56 = sub_1DEF8D4D8();
      v57 = sub_1DEF8DC98();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_1DEE0F000, v56, v57, "IDSService has no devices", v58, 2u);
        MEMORY[0x1E12CCD70](v58, -1, -1);
      }

      v59 = swift_allocObject();
      *(v59 + 16) = a2;
      *(v59 + 24) = a3;
      v86 = sub_1DEF46674;
      v87 = v59;
      aBlock = MEMORY[0x1E69E9820];
      v83 = 1107296256;
      v84 = sub_1DEE3F0C0;
      v85 = &block_descriptor_36_0;
      v54 = _Block_copy(&aBlock);

      sub_1DEF8D6B8();
      v81 = MEMORY[0x1E69E7CC0];
      sub_1DEE1BA40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
      sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
      sub_1DEF8DE08();
      MEMORY[0x1E12CB4D0](0, v12, v8, v54);
    }

    else
    {
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v49 = sub_1DEF8D508();
      __swift_project_value_buffer(v49, qword_1ECDF6028);
      v50 = sub_1DEF8D4D8();
      v51 = sub_1DEF8DC98();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_1DEE0F000, v50, v51, "Could not create IDSService", v52, 2u);
        MEMORY[0x1E12CCD70](v52, -1, -1);
      }

      v53 = swift_allocObject();
      *(v53 + 16) = a2;
      *(v53 + 24) = a3;
      v86 = sub_1DEF464FC;
      v87 = v53;
      aBlock = MEMORY[0x1E69E9820];
      v83 = 1107296256;
      v84 = sub_1DEE3F0C0;
      v85 = &block_descriptor_30;
      v54 = _Block_copy(&aBlock);

      sub_1DEF8D6B8();
      v81 = MEMORY[0x1E69E7CC0];
      sub_1DEE1BA40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
      sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
      sub_1DEF8DE08();
      MEMORY[0x1E12CB4D0](0, v12, v8, v54);
    }

    _Block_release(v54);

LABEL_42:
    (*(v79 + 8))(v8, v5);
    (*(v77 + 8))(v12, v80);
  }

  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v44 = sub_1DEF8D508();
  __swift_project_value_buffer(v44, qword_1ECDF6028);
  v45 = sub_1DEF8D4D8();
  v46 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_1DEE0F000, v45, v46, "No paired device from activePairedDevice", v47, 2u);
    MEMORY[0x1E12CCD70](v47, -1, -1);
  }

  v48 = swift_allocObject();
  *(v48 + 16) = a2;
  *(v48 + 24) = a3;
  v86 = sub_1DEF464C0;
  v87 = v48;
  aBlock = MEMORY[0x1E69E9820];
  v83 = 1107296256;
  v84 = sub_1DEE3F0C0;
  v85 = &block_descriptor_24_1;
  v43 = _Block_copy(&aBlock);

  sub_1DEF8D6B8();
  v81 = MEMORY[0x1E69E7CC0];
  sub_1DEE1BA40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v12, v8, v43);

LABEL_18:
  _Block_release(v43);
  (*(v79 + 8))(v8, v5);
  (*(v9 + 8))(v12, v80);
}

uint64_t sub_1DEF46178(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v10 = a4;
  v11 = 0;

  a1(&v9);
  v5 = v9;
  v6 = v10;
  v7 = v11;

  return sub_1DEF46560(v5, v6, v7);
}

uint64_t sub_1DEF461D8()
{

  return swift_deallocClassInstance();
}

uint64_t *sub_1DEF46258(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - v14;
  (*(v8 + 32))(&v19 - v14, v13);
  type metadata accessor for ActiveWatchPairingEnforcer();
  v16 = swift_allocObject();
  (*(v8 + 16))(v11, v15, a4);
  v17 = sub_1DEF463B4(v11, a2, v16, a4, a5);
  (*(v8 + 8))(v15, a4);
  return v17;
}

uint64_t *sub_1DEF463B4(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  a3[5] = a4;
  a3[6] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3 + 2);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  a3[12] = 0;
  a3[13] = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3E00, &unk_1DEF91720);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DEF91030;
  v11 = *MEMORY[0x1E69B3678];
  v12 = *MEMORY[0x1E69B3688];
  *(v10 + 32) = *MEMORY[0x1E69B3678];
  *(v10 + 40) = v12;
  v13 = *MEMORY[0x1E69B3660];
  v14 = *MEMORY[0x1E69B3668];
  *(v10 + 48) = *MEMORY[0x1E69B3660];
  *(v10 + 56) = v14;
  a3[14] = v10;
  sub_1DEEACF0C(a2, (a3 + 7));
  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  return a3;
}

uint64_t sub_1DEF464C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  return v1(v4);
}

uint64_t sub_1DEF46514(__n128 a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  v6 = 1;
  return v2(&v5);
}

uint64_t sub_1DEF46560(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1DEF46570()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  return sub_1DEF4505C(v1, v2, v3);
}

uint64_t objectdestroy_68Tm()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t SyncServiceConfiguration.init(networkServiceNames:idsServiceNames:deviceType:pairingRelationshipPublisher:temporaryFileURL:allowListStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a3;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = v11;
  v12 = type metadata accessor for SyncServiceConfiguration();
  *(a7 + v12[8]) = a4;
  v13 = v12[7];
  v14 = sub_1DEF8D1E8();
  (*(*(v14 - 8) + 32))(a7 + v13, a5, v14);
  v15 = a7 + v12[9];

  return sub_1DEE2F1AC(a6, v15);
}

uint64_t type metadata accessor for SyncServiceConfiguration()
{
  result = qword_1ECDE2F80;
  if (!qword_1ECDE2F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static SyncServiceFactory.makeSyncService(configuration:)(_BYTE *a1)
{
  v19 = a1;
  v18 = sub_1DEF8DD08();
  v1 = *(v18 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DEF8DCD8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1DEF8D6D8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v17[1] = sub_1DEE3C630();
  sub_1DEF8D6C8();
  v23[0] = MEMORY[0x1E69E7CC0];
  sub_1DEE2BC18(&qword_1ECDE2C10, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEE1B548(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEF8DE08();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8098], v18);
  v9 = sub_1DEF8DD38();
  v10 = v19;
  v21 = v19;
  v22 = v9;
  v11 = sub_1DEF352F8(MEMORY[0x1E69E7CC8], sub_1DEF46D28, v20, &unk_1F5A19580);
  v12 = v10;
  v13 = sub_1DEF48378(v10, v9);
  v14 = type metadata accessor for SyncServiceConfiguration();
  sub_1DEE29594(&v12[*(v14 + 36)], v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5000, &qword_1DEF96198);
  swift_allocObject();
  v15 = sub_1DEF48C0C(v11, v13, v23);

  return v15;
}

void sub_1DEF46AD0(uint64_t *a1, unsigned __int8 *a2, uint64_t *a3, void *a4)
{
  v8 = sub_1DEF8D1E8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a3[1];
  if (!*(v13 + 16))
  {
    __break(1u);
    goto LABEL_8;
  }

  LODWORD(a2) = *a2;
  v14 = sub_1DEEAF814(a2);
  if ((v15 & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v36 = a1;
  v16 = (*(v13 + 56) + 16 * v14);
  v17 = *v16;
  v18 = v16[1];
  v19 = objc_allocWithZone(type metadata accessor for ConcreteIDSDependency());

  sub_1DEF308EC(v17, v18, a4);
  v13 = *a3;
  if (!*(*a3 + 16))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v21 = v20;
  v22 = sub_1DEEAF814(a2);
  if ((v23 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v24 = (*(v13 + 56) + 16 * v22);
  v13 = *v24;
  a4 = v24[1];
  v25 = type metadata accessor for SyncServiceConfiguration();
  (*(v9 + 16))(v12, a3 + *(v25 + 28), v8);
  v26 = qword_1ECDE2EF0;

  a3 = v21;
  if (v26 != -1)
  {
LABEL_11:
    swift_once();
  }

  v27 = qword_1ECDF6040;
  v28 = type metadata accessor for NetworkMessenger(0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v31 = swift_allocObject();

  v32 = sub_1DEF47D44(v13, a4, v12, a3, a2, v27, v31);

  v33 = v36;
  v34 = *v36;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *v33;
  sub_1DEF3FC90(v32, a2, isUniquelyReferenced_nonNull_native);

  *v33 = v37;
}

uint64_t sub_1DEF46D44(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1DEF46DA4(a1);
  }

  return result;
}

void sub_1DEF46DA4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DEF8D698();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1DEF8D6D8();
  v36 = *(v38 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v35 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E30, &qword_1DEF96220);
  v32 = *(v9 - 8);
  v10 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v33 = &v32 - v11;
  swift_beginAccess();
  v12 = v1[5];
  v13 = v1[9];
  v14 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 6, v13);
  v15 = *(type metadata accessor for Message() + 28);
  v34 = a1;
  v16 = (a1 + v15);
  v17 = *v16;
  v18 = v16[1];
  v19 = *(v14 + 8);

  if (v19(v17, v18, v13, v14))
  {

    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v20 = sub_1DEF8D508();
    __swift_project_value_buffer(v20, qword_1ECDF6010);
    v21 = sub_1DEF8D4D8();
    v22 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1DEE0F000, v21, v22, "Cannot receive messages from remote device ID not in allow list", v23, 2u);
      MEMORY[0x1E12CCD70](v23, -1, -1);
    }
  }

  else
  {
    v24 = v1[3];
    v25 = v33;
    sub_1DEE17214(v34, v33, &qword_1ECDE4E30, &qword_1DEF96220);
    v26 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v12;
    *(v27 + 24) = v2;
    sub_1DEF49744(v25, v27 + v26);
    aBlock[4] = sub_1DEF497B4;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE3F0C0;
    aBlock[3] = &block_descriptor_31_0;
    v28 = _Block_copy(aBlock);

    v29 = v35;
    sub_1DEF8D6B8();
    v41 = MEMORY[0x1E69E7CC0];
    sub_1DEE2BC18(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
    v30 = v37;
    v31 = v40;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v29, v30, v28);
    _Block_release(v28);
    (*(v39 + 8))(v30, v31);
    (*(v36 + 8))(v29, v38);
  }
}

uint64_t sub_1DEF4727C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v4 = sub_1DEF8D508();
    __swift_project_value_buffer(v4, qword_1ECDF6010);
    swift_retain_n();
    v5 = sub_1DEF8D4D8();
    v6 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v39 = v34;
      *v7 = 136446466;
      v8 = OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency;
      sub_1DEE29594(a2 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency, v36);
      v9 = v37;
      v10 = v38;
      __swift_project_boxed_opaque_existential_1(v36, v37);
      v11 = (*(v10 + 24))(v9, v10);
      if (v12)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0x6F2D64656E676973;
      }

      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0xEA00000000007475;
      }

      __swift_destroy_boxed_opaque_existential_1(v36);
      v15 = sub_1DEE12A5C(v13, v14, &v39);

      *(v7 + 4) = v15;
      *(v7 + 12) = 2082;
      sub_1DEE29594(a2 + v8, v36);
      v16 = v37;
      v17 = v38;
      __swift_project_boxed_opaque_existential_1(v36, v37);
      v18 = (*(v17 + 32))(v16, v17);
      v19 = *(v18 + 16);
      if (v19)
      {
        v31 = v6;
        v32 = v7;
        v33 = v5;
        v35 = MEMORY[0x1E69E7CC0];
        sub_1DEEC7E08(0, v19, 0);
        v20 = v35;
        v21 = (v18 + 40);
        do
        {
          v22 = *(v21 - 1);
          v23 = *v21;
          v25 = *(v35 + 16);
          v24 = *(v35 + 24);

          if (v25 >= v24 >> 1)
          {
            sub_1DEEC7E08((v24 > 1), v25 + 1, 1);
          }

          *(v35 + 16) = v25 + 1;
          v26 = v35 + 16 * v25;
          *(v26 + 32) = v22;
          *(v26 + 40) = v23;
          v21 += 2;
          --v19;
        }

        while (v19);

        v5 = v33;
        v7 = v32;
        v6 = v31;
      }

      else
      {

        v20 = MEMORY[0x1E69E7CC0];
      }

      __swift_destroy_boxed_opaque_existential_1(v36);

      v27 = MEMORY[0x1E12CB290](v20, MEMORY[0x1E69E6158]);
      v29 = v28;

      v30 = sub_1DEE12A5C(v27, v29, &v39);

      *(v7 + 14) = v30;
      _os_log_impl(&dword_1DEE0F000, v5, v6, "[%{public}s] Account associated devices changed: %{public}s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v34, -1, -1);
      MEMORY[0x1E12CCD70](v7, -1, -1);
    }

    else
    {
    }

    sub_1DEF47610(a2);
  }

  return result;
}

uint64_t sub_1DEF47610(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DEF8D698();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DEF8D6D8();
  v54 = *(v8 - 8);
  v9 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DEF8D788();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = v2[2];
  *v16 = v17;
  (*(v12 + 104))(v16, *MEMORY[0x1E69E8020], v11, v14);
  v18 = v17;
  v19 = sub_1DEF8D7B8();
  result = (*(v12 + 8))(v16, v11);
  if (v19)
  {
    v51 = v8;
    v52 = v5;
    sub_1DEE29594(a1 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency, aBlock);
    v21 = v58;
    v22 = v59;
    __swift_project_boxed_opaque_existential_1(aBlock, v58);
    v23 = (*(v22 + 4))(v21, v22);
    v24 = *(v23 + 16);
    if (v24)
    {
      v50 = v4;
      v61 = MEMORY[0x1E69E7CC0];
      sub_1DEEC7E08(0, v24, 0);
      v25 = v61;
      v26 = (v23 + 40);
      do
      {
        v27 = *(v26 - 1);
        v28 = *v26;
        v61 = v25;
        v30 = *(v25 + 16);
        v29 = *(v25 + 24);

        if (v30 >= v29 >> 1)
        {
          sub_1DEEC7E08((v29 > 1), v30 + 1, 1);
          v25 = v61;
        }

        *(v25 + 16) = v30 + 1;
        v31 = v25 + 16 * v30;
        *(v31 + 32) = v27;
        *(v31 + 40) = v28;
        v26 += 2;
        --v24;
      }

      while (v24);

      v4 = v50;
    }

    else
    {

      v25 = MEMORY[0x1E69E7CC0];
    }

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v32 = sub_1DEEA3AD8(v25);

    v33 = v2[11];
    v34 = 1 << *(v33 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & *(v33 + 64);
    v37 = (v34 + 63) >> 6;
    v38 = v2[11];

    for (i = 0; v36; result = )
    {
      v40 = i;
LABEL_17:
      v41 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v42 = *(*(v33 + 56) + ((v40 << 9) | (8 * v41)));

      sub_1DEF49268(v43, v32);
    }

    while (1)
    {
      v40 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v40 >= v37)
      {

        swift_beginAccess();
        v44 = v2[5];
        v45 = v2[3];
        v46 = swift_allocObject();
        v46[2] = v44;
        v46[3] = v2;
        v46[4] = v32;
        v59 = sub_1DEF496E0;
        v60 = v46;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1DEE3F0C0;
        v58 = &block_descriptor_17;
        v47 = _Block_copy(aBlock);

        v48 = v53;
        sub_1DEF8D6B8();
        v56 = MEMORY[0x1E69E7CC0];
        sub_1DEE2BC18(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
        sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
        v49 = v55;
        sub_1DEF8DE08();
        MEMORY[0x1E12CB4D0](0, v48, v49, v47);
        _Block_release(v47);
        (*(v52 + 8))(v49, v4);
        (*(v54 + 8))(v48, v51);
      }

      v36 = *(v33 + 64 + 8 * v40);
      ++i;
      if (v36)
      {
        i = v40;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEF47BC8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (result + 40);
    do
    {
      v9 = *(v5 - 1);
      v10 = *v5;
      v11 = *(a3 + 16);
      if (v11)
      {
        v19 = *v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE42A0, &unk_1DEF95E40);
        v7 = swift_allocObject();
        v12 = _swift_stdlib_malloc_size(v7);
        v13 = v12 - 32;
        if (v12 < 32)
        {
          v13 = v12 - 17;
        }

        v7[2] = v11;
        v7[3] = 2 * (v13 >> 4);
        v14 = sub_1DEF2DE0C(v23, v7 + 4, v11, a3);
        v15 = v23[0];
        v16 = v23[1];
        v17 = v23[2];
        v21 = v23[3];
        v22 = v14;
        v20 = v23[4];
        swift_unknownObjectRetain();

        result = sub_1DEEACDB8(v15, v16, v17, v21, v20);
        if (v22 != v11)
        {
          __break(1u);
          return result;
        }

        v10 = v19;
      }

      else
      {
        v6 = *(v5 - 1);
        swift_unknownObjectRetain();
        v7 = MEMORY[0x1E69E7CC0];
      }

      ObjectType = swift_getObjectType();
      (*(v10 + 32))(a2, &off_1F5A21098, v7, ObjectType, v10);
      swift_unknownObjectRelease();

      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1DEF47D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a5;
  v41 = a3;
  v42 = a1;
  v43 = a2;
  v40 = sub_1DEF8DD08();
  v45 = *(v40 - 8);
  v10 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DEF8DCD8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = sub_1DEF8D6D8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v48[3] = type metadata accessor for NearbyCompanionSubscriber();
  v48[4] = &off_1F5A21658;
  v48[0] = a6;
  v47[3] = type metadata accessor for ConcreteIDSDependency();
  v47[4] = &off_1F5A20038;
  v47[0] = a4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4E88, &qword_1DEF95B50);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *(a7 + 16) = sub_1DEF8D598();
  v39 = sub_1DEE3C630();
  v38 = "rkSyncService.callout";
  sub_1DEF8D6C8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v37[2] = sub_1DEE2BC18(&qword_1ECDE2C10, MEMORY[0x1E69E8030]);
  v37[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEE1B548(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEF8DE08();
  v20 = *MEMORY[0x1E69E8098];
  v21 = *(v45 + 104);
  v45 += 104;
  v37[0] = v12;
  v22 = v12;
  v23 = v40;
  v21(v22, v20, v40);
  *(a7 + 24) = sub_1DEF8DD38();
  v38 = "rkMessenger.internal";
  sub_1DEF8D6C8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v24 = v41;
  sub_1DEF8DE08();
  v21(v37[0], v20, v23);
  *(a7 + 32) = sub_1DEF8DD38();
  *(a7 + 40) = 0;
  v25 = MEMORY[0x1E69E7CC8];
  *(a7 + 48) = 0;
  *(a7 + 56) = v25;
  *(a7 + 64) = v25;
  *(a7 + 72) = v25;
  type metadata accessor for BasicTimer();
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v26 + 24) = v27;
  *(a7 + 80) = v26;
  *(a7 + 88) = -1;
  *(a7 + 96) = 0;
  *(a7 + 104) = 0;
  v28 = OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_terminusRemoteDeviceIDLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECDE5060, &qword_1DEF96228);
  v29 = swift_allocObject();
  *(v29 + 32) = 0;
  *(v29 + 16) = 0xD000000000000023;
  *(v29 + 24) = 0x80000001DEF9DD90;
  *(a7 + v28) = v29;
  *(a7 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_subscriptions) = MEMORY[0x1E69E7CD0];
  v30 = v43;
  *(a7 + 120) = v42;
  *(a7 + 128) = v30;
  v31 = OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_temporaryFileURL;
  v32 = sub_1DEF8D1E8();
  v33 = *(v32 - 8);
  (*(v33 + 16))(a7 + v31, v24, v32);
  sub_1DEE29594(v47, a7 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency);
  LOBYTE(v21) = v44;
  *(a7 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_connectionType) = v44 & 1;
  type metadata accessor for ConnectionDurationMonitor();
  swift_allocObject();
  *(a7 + 112) = sub_1DEEE48B8();
  sub_1DEE29594(v48, a7 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_nearbyCompanionSubscriber);
  v34 = *(a7 + 24);
  aBlock[4] = sub_1DEF49824;
  aBlock[5] = a7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE11B94;
  aBlock[3] = &block_descriptor_35;
  v35 = _Block_copy(aBlock);

  xpc_set_event_stream_handler("com.apple.rapport.matching", v34, v35);
  _Block_release(v35);
  if (v21)
  {
    sub_1DEF1458C(*(a7 + 24));
  }

  (*(v33 + 8))(v24, v32);
  __swift_destroy_boxed_opaque_existential_1(v48);
  __swift_destroy_boxed_opaque_existential_1(v47);
  return a7;
}

unint64_t sub_1DEF48378(_BYTE *a1, void *a2)
{
  result = sub_1DEF7BF38(0, &unk_1F5A19558);
  if ((result & 1) == 0)
  {
    return 0;
  }

  v5 = *a1;
  if (*(*a1 + 16))
  {
    result = sub_1DEEAF814(0);
    if (v6)
    {
      v7 = (*(v5 + 56) + 16 * result);
      v8 = *v7;
      v9 = v7[1];
      v12 = a1[16];
      type metadata accessor for NetworkBrowser();
      swift_allocObject();
      v10 = sub_1DEEBCC7C(v8, v9, a2, &v12);

      v11 = a2;
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEF48440(uint64_t a1, uint64_t a2)
{
  v40 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5018, &qword_1DEF961F0);
  v5 = *(v4 - 8);
  v50 = v4;
  v51 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v48 = v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE5020, &qword_1DEF961F8);
  v9 = *(v8 - 8);
  v52 = v8;
  v53 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v49 = v39 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A60, &unk_1DEF90810);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5030, &qword_1DEF96200);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v39 - v19;
  v62 = a1;
  v21 = off_1EED168F8[0];
  type metadata accessor for NetworkMessenger(0);
  v59[0] = v21();
  v55[0] = *(a2 + 16);
  v22 = v55[0];
  v45 = sub_1DEF8DCF8();
  v23 = *(v45 - 8);
  v46 = *(v23 + 56);
  v47 = v23 + 56;
  v46(v15, 1, 1, v45);
  v44 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE5038, &qword_1DEF96208);
  v42 = sub_1DEE3C630();
  v39[1] = MEMORY[0x1E695BED8];
  sub_1DEE1B548(&qword_1ECDE2DB0, &unk_1ECDE5038, &qword_1DEF96208);
  v41 = sub_1DEE2BC18(&qword_1ECDE2C08, sub_1DEE3C630);
  sub_1DEF8D5D8();
  sub_1DEE171B4(v15, &qword_1ECDE3A60, &unk_1DEF90810);

  swift_allocObject();
  swift_weakInit();
  sub_1DEE1B548(&qword_1ECDE2E10, &qword_1ECDE5030, &qword_1DEF96200);
  sub_1DEF8D5E8();

  (*(v17 + 8))(v20, v16);
  swift_beginAccess();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE5048, &qword_1DEF96210);
  sub_1DEE1B548(&qword_1ECDE2C60, &unk_1ECDE5048, &qword_1DEF96210);
  sub_1DEF8D578();
  swift_endAccess();

  v24 = OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency;
  v25 = v40;
  sub_1DEE29594(v40 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency, v59);
  v26 = v60;
  v27 = v61;
  __swift_project_boxed_opaque_existential_1(v59, v60);
  v58 = (*(v27 + 8))(v26, v27);
  sub_1DEE29594(v25 + v24, v55);
  v28 = v56;
  v29 = v57;
  __swift_project_boxed_opaque_existential_1(v55, v56);
  v54 = (*(v29 + 16))(v28, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5058, &qword_1DEF96218);
  sub_1DEE1B548(&qword_1ECDE2D60, &qword_1ECDE5058, &qword_1DEF96218);
  v30 = v48;
  sub_1DEF8D5C8();

  __swift_destroy_boxed_opaque_existential_1(v55);
  __swift_destroy_boxed_opaque_existential_1(v59);
  v31 = v44;
  v59[0] = v44;
  v46(v15, 1, 1, v45);
  sub_1DEE1B548(&qword_1ECDE2E28, &qword_1ECDE5018, &qword_1DEF961F0);
  v33 = v49;
  v32 = v50;
  sub_1DEF8D5D8();
  sub_1DEE171B4(v15, &qword_1ECDE3A60, &unk_1DEF90810);

  (*(v51 + 8))(v30, v32);
  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  *(v35 + 24) = v25;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_1DEF49260;
  *(v36 + 24) = v35;
  sub_1DEE1B548(&qword_1ECDE2DD0, &unk_1ECDE5020, &qword_1DEF961F8);

  v37 = v52;
  sub_1DEF8D5E8();

  (*(v53 + 8))(v33, v37);
  swift_beginAccess();
  sub_1DEF8D578();
  swift_endAccess();
}

uint64_t sub_1DEF48C0C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v31 = a3;
  v32 = a1;
  v33 = a2;
  v5 = sub_1DEF8DD08();
  v6 = *(v5 - 8);
  v34 = v5;
  v35 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DEF8DCD8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = sub_1DEF8D6D8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v30[0] = sub_1DEE3C630();
  v30[3] = "hPairingEnforcer";
  sub_1DEF8D6C8();
  v36 = MEMORY[0x1E69E7CC0];
  v30[2] = sub_1DEE2BC18(&qword_1ECDE2C10, MEMORY[0x1E69E8030]);
  v30[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEE1B548(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEF8DE08();
  v14 = *MEMORY[0x1E69E8098];
  v15 = *(v35 + 104);
  v35 += 104;
  v15(v9, v14, v34);
  v3[2] = sub_1DEF8DD38();
  sub_1DEF8D6C8();
  v36 = MEMORY[0x1E69E7CC0];
  sub_1DEF8DE08();
  v15(v9, v14, v34);
  v16 = v31;
  v17 = v32;
  v3[3] = sub_1DEF8DD38();
  v3[4] = 0;
  v18 = MEMORY[0x1E69E7CC0];
  v3[5] = MEMORY[0x1E69E7CC0];
  v3[12] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v3[13] = v19;
  v3[14] = 0;
  v3[11] = v17;
  v3[4] = v33;
  sub_1DEE29594(v16, (v3 + 6));
  v20 = 1 << *(v17 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v17 + 64);
  v23 = (v20 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v22; result = )
  {
    v26 = i;
LABEL_9:
    v27 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v28 = *(*(v17 + 56) + ((v26 << 9) | (8 * v27)));

    sub_1DEF48440(v29, v4);
  }

  while (1)
  {
    v26 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v26 >= v23)
    {

      __swift_destroy_boxed_opaque_existential_1(v16);
      return v4;
    }

    v22 = *(v17 + 64 + 8 * v26);
    ++i;
    if (v22)
    {
      i = v26;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}
_BYTE *sub_1D8EB3F64(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void sub_1D8EB4134()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(*(sub_1D917734C() - 8) + 80);

  sub_1D8EB2C4C();
}

uint64_t sub_1D8EB41C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = (*(*(v5 - 8) + 80) + 40) & ~*(*(v5 - 8) + 80);
  v9 = v8 + *(*(v5 - 8) + 64);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = (v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(sub_1D9176C2C() - 8);
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  v15 = *(v13 + 64);
  v16 = *(sub_1D917734C() - 8);
  result = sub_1D8EB2D50(a1, v2 + v8, (v2 + v11), v2 + v14, v2 + ((v14 + v15 + *(v16 + 80)) & ~*(v16 + 80)), v5, v6);
  *a2 = result;
  return result;
}

uint64_t objectdestroy_14Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  (*(v3 + 8))(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_1D8EB452C(uint64_t *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(type metadata accessor for AssetBackgroundSession() - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D8EB2A7C(a1, v1 + v7, v1 + v10, v11);
}

uint64_t AnyAssetBackgroundSession.start(task:for:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t sub_1D8EB4784()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D8EB47D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1D8D490F4(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D8F82724();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = sub_1D917653C();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v8, v13);
    sub_1D8F7F618(v8, v11);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_1D917653C();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1D8EB4944(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1D8F069D8(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D8F8298C();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = sub_1D917653C();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_1D8F7F630(v6, v9);
  *v2 = v9;
  return v12;
}

id AssetBackgroundDelegate.__allocating_init(recordCache:resume:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D8D0406C(a1, a2, a3);

  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v5;
}

uint64_t AssetBackgroundDelegate.start(request:using:)(uint64_t a1, void *a2)
{
  v45 = a2;
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB58A8, &unk_1D9190D20);
  v43 = *(v2 - 8);
  v3 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v37 - v8;
  v10 = sub_1D917653C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB58B8, &qword_1D9190D30);
  v38 = *(v15 - 8);
  v16 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - v17;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB58C0, &qword_1D9190D38);
  v40 = *(v42 - 8);
  v19 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v21 = &v37 - v20;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB58C8, &qword_1D9190D40);
  v39 = *(v41 - 8);
  v22 = *(v39 + 64);
  v23 = MEMORY[0x1EEE9AC00](v41);
  v25 = &v37 - v24;
  (*(v11 + 16))(v14, v37, v10, v23);
  sub_1D9177A0C();
  if (qword_1ECAB10C0 != -1)
  {
    swift_once();
  }

  v26 = qword_1ECAB10D0;
  v27 = sub_1D9178DBC();
  (*(*(v27 - 8) + 56))(v9, 1, 1, v27);
  v46 = v26;
  sub_1D8CFD888();
  sub_1D8CF48EC(&qword_1ECAB02D8, &qword_1ECAB58B8, &qword_1D9190D30);
  sub_1D8D64524(&qword_1EDCD0980, sub_1D8CFD888);
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A58, &unk_1ECAB58A8, &unk_1D9190D20);
  sub_1D9177CEC();
  (*(v43 + 8))(v5, v2);
  sub_1D8D08A50(v9, &qword_1ECAB4D70, &unk_1D918BCE0);
  (*(v38 + 8))(v18, v15);
  v28 = swift_allocObject();
  v30 = v44;
  v29 = v45;
  *(v28 + 16) = v44;
  *(v28 + 24) = v29;
  sub_1D8CF48EC(&qword_1ECAB0480, &qword_1ECAB58C0, &qword_1D9190D38);
  v31 = v30;
  v32 = v29;
  v33 = v42;
  sub_1D9177B9C();

  (*(v40 + 8))(v21, v33);
  sub_1D8CF48EC(&qword_1ECAB0758, &qword_1ECAB58C8, &qword_1D9190D40);
  v34 = v41;
  v35 = sub_1D9177B1C();
  (*(v39 + 8))(v25, v34);
  return v35;
}

uint64_t AssetBackgroundDelegate.activeNotifier(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB58D0, &qword_1D9190D48);
  v7 = *(v6 - 8);
  v81 = v6;
  v82 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v72 = &v58 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v58 - v12;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB58D8, &qword_1D9190D50);
  v73 = *(v68 - 8);
  v14 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v16 = &v58 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB58E0, &qword_1D9190D58);
  v79 = *(v17 - 8);
  v18 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v58 - v19;
  v21 = *((v5 & v4) + 0x50);
  v22 = *((v5 & v4) + 0x60);
  v23 = *((v5 & v4) + 0x68);
  v24 = *((v5 & v4) + 0x70);
  v25 = *((v5 & v4) + 0x78);
  v77 = *((v5 & v4) + 0x58);
  v78 = v21;
  v83 = v21;
  v84 = v77;
  v75 = v23;
  v76 = v22;
  v85 = v22;
  v86 = v23;
  v74 = v24;
  v87 = v24;
  v88 = v25;
  v71 = v25;
  v26 = type metadata accessor for AssetBackgroundDelegate.DownloadNotificationRecord();
  v27 = sub_1D8CF48EC(&qword_1ECAB0468, &unk_1ECAB58E0, &qword_1D9190D58);
  v80 = v17;
  v65 = v26;
  v64 = v27;
  v28 = sub_1D91775AC();
  v69 = *(v28 - 8);
  v29 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v67 = &v58 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECAB58F0, &unk_1D9190BD0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  WitnessTable = swift_getWitnessTable();
  v70 = v28;
  v83 = v28;
  v84 = v32;
  v63 = WitnessTable;
  v85 = WitnessTable;
  v86 = MEMORY[0x1E69E7288];
  v34 = sub_1D917761C();
  v35 = sub_1D8CF48EC(&qword_1ECAB03A0, &unk_1ECAB58F0, &unk_1D9190BD0);
  v36 = swift_getWitnessTable();
  v66 = v31;
  v83 = v31;
  v84 = v34;
  v37 = v16;
  v60 = v35;
  v85 = v35;
  v86 = v36;
  v62 = sub_1D917771C();
  v61 = *(v62 - 8);
  v38 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v59 = &v58 - v39;
  v83 = a1;
  sub_1D9177A0C();
  if (qword_1ECAB10C0 != -1)
  {
    swift_once();
  }

  v40 = qword_1ECAB10D0;
  v41 = sub_1D9178DBC();
  (*(*(v41 - 8) + 56))(v13, 1, 1, v41);
  v83 = v40;
  sub_1D8CFD888();
  sub_1D8CF48EC(&qword_1ECAB02B8, &qword_1ECAB58D8, &qword_1D9190D50);
  sub_1D8D64524(&qword_1EDCD0980, sub_1D8CFD888);
  v42 = v72;
  v43 = v68;
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A40, &qword_1ECAB58D0, &qword_1D9190D48);
  v44 = v20;
  v45 = v81;
  sub_1D9177CEC();
  (*(v82 + 8))(v42, v45);
  sub_1D8D08A50(v13, &qword_1ECAB4D70, &unk_1D918BCE0);
  (*(v73 + 8))(v37, v43);
  *(swift_allocObject() + 16) = v2;
  v46 = v2;
  v47 = v67;
  v48 = v80;
  sub_1D9177B2C();

  v49 = (*(v79 + 8))(v44, v48);
  MEMORY[0x1EEE9AC00](v49);
  v50 = v77;
  *(&v58 - 6) = v78;
  *(&v58 - 5) = v50;
  v51 = v75;
  *(&v58 - 4) = v76;
  *(&v58 - 3) = v51;
  v52 = v71;
  *(&v58 - 2) = v74;
  *(&v58 - 1) = v52;
  swift_getKeyPath();
  sub_1D91777FC();
  v53 = v59;
  v54 = v70;
  sub_1D9177DCC();

  (*(v69 + 8))(v47, v54);
  v55 = v62;
  swift_getWitnessTable();
  v56 = sub_1D9177B1C();
  (*(v61 + 8))(v53, v55);
  return v56;
}

id sub_1D8EB5944()
{
  if (qword_1EDCD5B50 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDCD5B58;
  qword_1ECAB10D0 = qword_1EDCD5B58;

  return v1;
}

uint64_t AssetBackgroundDelegate.resume.getter()
{
  v1 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x80));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1D8EB5A00@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + *((*MEMORY[0x1E69E7D40] & **a1) + 0x88));
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D8D24508;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D8D1F93C(v4);
}

uint64_t sub_1D8EB5ABC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D8EBC4A4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + *((*MEMORY[0x1E69E7D40] & **a2) + 0x88));
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1D8D1F93C(v3);
  return sub_1D8D15664(v8);
}

uint64_t AssetBackgroundDelegate.backgroundCompletion.getter()
{
  v1 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x88));
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_1D8D1F93C(v3);
  return v3;
}

id AssetBackgroundDelegate.init(recordCache:resume:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = sub_1D8D040B8(a1, a2, a3);

  (*(*(*((v6 & v5) + 0x50) - 8) + 8))(a1);
  return v7;
}

uint64_t sub_1D8EB5CB0(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x1E69E7D40] & *a2;
  v4 = *a1;
  v5 = *(v3 + 0x98);
  swift_beginAccess();
  v6 = *(a2 + v5);
  v8 = *(v3 + 80);
  v9 = *(v3 + 96);
  v10 = *(v3 + 112);
  type metadata accessor for AssetBackgroundDelegate.DownloadNotificationRecord();
  sub_1D91780FC();
  return swift_endAccess();
}

uint64_t sub_1D8EB5DA0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  swift_getAtKeyPath();
}

void sub_1D8EB5E0C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v58 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5908, &unk_1D9190D80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v55 = &v48[-v9];
  v10 = sub_1D917734C();
  v56 = *(v10 - 8);
  v57 = v10;
  v11 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v48[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1D917653C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v48[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *((*MEMORY[0x1E69E7D40] & *a2) + 0xA0);
  swift_beginAccess();
  v20 = *(a2 + v19);
  if (*(v20 + 16) && (v21 = sub_1D8F069D8(a1), (v22 & 1) != 0))
  {
    v23 = *(*(v20 + 56) + 8 * v21);
    swift_endAccess();
  }

  else
  {
    v54 = a3;
    swift_endAccess();
    if (qword_1ECAB0FE0 != -1)
    {
      swift_once();
    }

    v24 = sub_1D917739C();
    __swift_project_value_buffer(v24, qword_1ECAB0FE8);
    v52 = *(v15 + 16);
    v53 = v15 + 16;
    v52(v18, a1, v14);
    sub_1D917733C();
    v25 = sub_1D917737C();
    v26 = sub_1D9178F6C();
    if (sub_1D917918C())
    {
      v27 = swift_slowAlloc();
      v49 = v26;
      v28 = v27;
      v50 = swift_slowAlloc();
      v60 = v50;
      *v28 = 136315138;
      v29 = sub_1D91764AC();
      v51 = a1;
      v31 = v30;
      v32 = v18;
      v33 = v14;
      (*(v15 + 8))(v32, v14);
      v34 = sub_1D8CFA924(v29, v31, &v60);
      a1 = v51;

      *(v28 + 4) = v34;
      v35 = sub_1D917732C();
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v25, v49, v35, "Start Asset Download", "%s", v28, 0xCu);
      v36 = v50;
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x1DA72CB90](v36, -1, -1);
      MEMORY[0x1DA72CB90](v28, -1, -1);

      v37 = v13;
      v38 = v15;
      (*(v56 + 8))(v37, v57);
    }

    else
    {

      (*(v56 + 8))(v13, v57);
      (*(v15 + 8))(v18, v14);
      v33 = v14;
      v38 = v15;
    }

    v39 = sub_1D91764BC();
    v40 = [v54 downloadTaskWithRequest_];

    v41 = v40;
    v42 = [v41 taskIdentifier];
    swift_beginAccess();
    v43 = *(a2 + v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = *(a2 + v19);
    *(a2 + v19) = 0x8000000000000000;
    sub_1D8F4F79C(v42, a1, isUniquelyReferenced_nonNull_native);
    *(a2 + v19) = v59;
    swift_endAccess();
    v45 = [v41 taskIdentifier];
    v46 = v55;
    v52(v55, a1, v33);
    (*(v38 + 56))(v46, 0, 1, v33);
    v47 = *((*MEMORY[0x1E69E7D40] & *a2) + 0xA8);
    swift_beginAccess();
    sub_1D8F7CC9C(v46, v45);
    swift_endAccess();
    [v41 resume];
    v23 = [v41 taskIdentifier];
  }

  *v58 = v23;
}

uint64_t AssetBackgroundDelegate.set(backgroundCompletion:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D9177E0C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D9177E9C();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAB10C0 != -1)
  {
    swift_once();
  }

  v18[1] = qword_1ECAB10D0;
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_1D8EBB658;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_26;
  v15 = _Block_copy(aBlock);
  v16 = v2;

  sub_1D9177E4C();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1D8D64524(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v19);
}

uint64_t sub_1D8EB6670(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0x88));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a2;
  v5[1] = a3;
  sub_1D8D15664(v6);
}

uint64_t sub_1D8EB66FC(uint64_t *a1, id a2)
{
  v3 = *a1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40];
  v6 = [a2 taskIdentifier];
  v7 = *((*v4 & *a1) + 0x98);
  swift_beginAccess();
  v8 = *(a1 + v7);
  v26 = v6;
  v9 = *((v5 & v3) + 0x50);
  v10 = *((v5 & v3) + 0x58);
  v11 = *((v5 & v3) + 0x60);
  v12 = *((v5 & v3) + 0x68);
  v13 = *((v5 & v3) + 0x70);
  v14 = *((v5 & v3) + 0x78);
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  type metadata accessor for AssetBackgroundDelegate.DownloadNotificationRecord();
  sub_1D91780FC();
  if (v27)
  {

    swift_endAccess();
    sub_1D8EBC53C(v27);
    v21 = v10;
    v22 = v11;
    v23 = v12;
    v24 = v13;
    v25 = v14;
    type metadata accessor for AssetBackgroundDelegate.BackgroundDownloadError();
    swift_getWitnessTable();
    v20 = swift_allocError();
    sub_1D91778AC();
  }

  else
  {
    swift_endAccess();
  }

  sub_1D8EB69AC([a2 taskIdentifier]);
  v15 = [a2 taskIdentifier];
  v16 = [a2 taskIdentifier];
  sub_1D8EB6C84(&v20);
  v28 = sub_1D8EB6E20(v16, &v20);
  v29 = v17;
  v27 = v15;
  swift_beginAccess();
  sub_1D91780DC();
  sub_1D917810C();
  return swift_endAccess();
}

uint64_t sub_1D8EB69AC(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *v1;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = (*MEMORY[0x1E69E7D40] & *v1);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5908, &unk_1D9190D80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v22 - v10;
  v12 = sub_1D917653C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  v17 = *((v6 & v5) + 0x98);
  swift_beginAccess();
  v18 = v7[6];
  v22[0] = v7[5];
  v22[1] = v18;
  v22[2] = v7[7];
  type metadata accessor for AssetBackgroundDelegate.DownloadNotificationRecord();
  sub_1D91780DC();
  sub_1D917807C();
  swift_endAccess();
  sub_1D8EBC53C(*&v22[0]);
  v19 = *((*v4 & *v2) + 0xA8);
  swift_beginAccess();
  sub_1D8EB47D8(a1, v11);
  swift_endAccess();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1D8D08A50(v11, &qword_1ECAB5908, &unk_1D9190D80);
  }

  (*(v13 + 32))(v16, v11, v12);
  v21 = *((*v4 & *v2) + 0xA0);
  swift_beginAccess();
  sub_1D8EB4944(v16);
  swift_endAccess();
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_1D8EB6C84@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D9176EAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCD5E68 != -1)
  {
    swift_once();
  }

  v7 = sub_1D917744C();
  v8 = __swift_project_value_buffer(v7, qword_1EDCD5E70);
  v9 = type metadata accessor for LoggerTrace(0);
  a1[3] = v9;
  a1[4] = &protocol witness table for LoggerTrace;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0 + *(v9 + 20), v8, v7);
  LOBYTE(v7) = sub_1D9178CDC();
  sub_1D9176E9C();
  v11 = sub_1D9176E5C();
  v13 = v12;
  result = (*(v3 + 8))(v6, v2);
  *boxed_opaque_existential_0 = v11;
  boxed_opaque_existential_0[1] = v13;
  *(boxed_opaque_existential_0 + *(v9 + 24)) = v7;
  return result;
}

uint64_t sub_1D8EB6E20(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5A30, &unk_1D9190F50);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_1D91778DC();
  sub_1D8CFD9D8(a2, v13);
  v14 = 0x203A4B534154;
  v15[0] = 0xE600000000000000;
  v12[0] = a1;
  v8 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v8);

  v9 = v14;
  v10 = v15[0];
  sub_1D8D728EC(v13, v12);
  v14 = v7;
  sub_1D8D728EC(v12, v15);
  v15[5] = "NETWORK: Download";
  v15[6] = 17;
  v16 = 2;
  v19 = 1;

  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

  sub_1D8D08A50(v12, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D08A50(v13, &qword_1ECAB4928, &qword_1D918B380);
  v17 = v9;
  v18 = v10;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5A40, &unk_1D9190F60);
  sub_1D8CF48EC(&qword_1ECAB2788, &unk_1ECAB5A40, &unk_1D9190F60);
  sub_1D9177B1C();
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  sub_1D8D08A50(&v14, &unk_1ECAB5A40, &unk_1D9190F60);
  return v7;
}

void sub_1D8EB7008(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1D8EBB664(v7);
}

void sub_1D8EB7088(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1D8EBBA58(v7);
}

void sub_1D8EB7108(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  sub_1D8EBBB84(v11, a5, a6);
}

uint64_t sub_1D8EB71A8(void *a1, void *a2, double a3)
{
  v6 = MEMORY[0x1E69E7D40];
  v7 = (*MEMORY[0x1E69E7D40] & *a1);
  v8 = type metadata accessor for DownloadPhase();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = [a2 taskIdentifier];
  v14 = *((*v6 & *a1) + 0x98);
  swift_beginAccess();
  v15 = *(a1 + v14);
  v19 = v13;
  v16 = v7[6];
  v18[0] = v7[5];
  v18[1] = v16;
  v18[2] = v7[7];
  type metadata accessor for AssetBackgroundDelegate.DownloadNotificationRecord();
  sub_1D91780FC();
  if (!v20)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  *v12 = a3;
  swift_storeEnumTagMultiPayload();
  sub_1D91778BC();

  return sub_1D8EBC4E0(v12);
}

void sub_1D8EB7358(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_1D8EBBFB4(v12, a6, a7);
}

Swift::Void __swiftcall AssetBackgroundDelegate.urlSessionDidFinishEvents(forBackgroundURLSession:)(NSURLSession forBackgroundURLSession)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40] & *v2;
  v6 = sub_1D9177E0C();
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1D9177E9C();
  v33 = *(v35 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v12 = sub_1D917744C();
  __swift_project_value_buffer(v12, qword_1EDCD0F20);
  v13 = forBackgroundURLSession.super.isa;
  v14 = sub_1D917741C();
  v15 = sub_1D9178CDC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v38 = v17;
    *v16 = 136315138;
    v18 = [(objc_class *)v13 configuration];
    v19 = [v18 identifier];

    if (v19)
    {
      v20 = sub_1D917820C();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0;
    }

    aBlock = v20;
    v40 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
    v23 = sub_1D917826C();
    v25 = sub_1D8CFA924(v23, v24, &v38);

    *(v16 + 4) = v25;
    _os_log_impl(&dword_1D8CEC000, v14, v15, "Did finish events for background session: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1DA72CB90](v17, -1, -1);
    MEMORY[0x1DA72CB90](v16, -1, -1);

    v4 = MEMORY[0x1E69E7D40];
  }

  else
  {
  }

  v26 = qword_1ECAB10C0;
  v27 = *(v2 + *((*v4 & *v2) + 0xB8));
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = *(v5 + 80);
  *(v29 + 32) = *(v5 + 96);
  *(v29 + 40) = *(v5 + 104);
  *(v29 + 56) = *(v5 + 120);
  *(v29 + 64) = v28;
  v43 = sub_1D8EBC2EC;
  v44 = v29;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1D8CF5F60;
  v42 = &block_descriptor_15_0;
  v30 = _Block_copy(&aBlock);

  sub_1D9177E4C();
  v38 = MEMORY[0x1E69E7CC0];
  sub_1D8D64524(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  v31 = v34;
  v32 = v37;
  sub_1D91792CC();
  sub_1D9178D7C();
  _Block_release(v30);

  (*(v36 + 8))(v31, v32);
  (*(v33 + 8))(v11, v35);
}

void sub_1D8EB7950()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + *((*MEMORY[0x1E69E7D40] & *Strong) + 0x88);
    swift_beginAccess();
    v3 = *v2;
    if (*v2)
    {
      v4 = *(v2 + 1);
      sub_1D8D1F93C(v3);

      v3();
      sub_1D8D15664(v3);
    }

    else
    {
    }
  }
}

void sub_1D8EB7A18(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  AssetBackgroundDelegate.urlSessionDidFinishEvents(forBackgroundURLSession:)(v4);
}

void AssetBackgroundDelegate.urlSession(_:task:didCompleteWithError:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = (*MEMORY[0x1E69E7D40] & *v4);
  v9 = sub_1D9177E0C();
  isa = v9[-1].isa;
  v11 = isa[8].isa;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D9177E9C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v65 = v19;
    v66 = v17;
    v68 = v16;
    v70 = v9;
    v20 = a3;
    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v21 = sub_1D917744C();
    __swift_project_value_buffer(v21, qword_1EDCD0F20);
    v22 = a3;
    v23 = a2;
    v24 = sub_1D917741C();
    v25 = sub_1D9178CDC();

    v26 = os_log_type_enabled(v24, v25);
    v27 = &off_1E856D000;
    v69 = isa;
    v67 = v13;
    if (v26)
    {
      v28 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      aBlock[0] = v64;
      *v28 = 134218242;
      *(v28 + 4) = [v23 taskIdentifier];

      *(v28 + 12) = 2080;
      *&v73[0] = a3;
      v29 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
      v30 = sub_1D917826C();
      v32 = a3;
      v33 = v8;
      v34 = v23;
      v35 = v4;
      v36 = a1;
      v37 = sub_1D8CFA924(v30, v31, aBlock);

      *(v28 + 14) = v37;
      a1 = v36;
      v4 = v35;
      v23 = v34;
      v8 = v33;
      a3 = v32;
      v27 = &off_1E856D000;
      _os_log_impl(&dword_1D8CEC000, v24, v25, "[%ld] Completed with error: %s", v28, 0x16u);
      v38 = v64;
      __swift_destroy_boxed_opaque_existential_1Tm(v64);
      MEMORY[0x1DA72CB90](v38, -1, -1);
      MEMORY[0x1DA72CB90](v28, -1, -1);
    }

    else
    {
    }

    v43 = [a1 configuration];
    v44 = [v43 identifier];

    if (v44)
    {
      v45 = sub_1D917820C();
      v47 = v46;
    }

    else
    {
      v45 = 0;
      v47 = 0;
    }

    v48 = [v23 v27[349]];
    v50 = v8[10];
    v49 = v8[11];
    swift_getAssociatedTypeWitness();
    v52 = v8[14];
    v51 = v8[15];
    DownloadTaskIdentifier.init(session:identifier:)(v45, v47, v48, v73);
    if (qword_1ECAB10C0 != -1)
    {
      swift_once();
    }

    v64 = qword_1ECAB10D0;
    v53 = swift_allocObject();
    v54 = v73[1];
    *(v53 + 40) = v73[0];
    *(v53 + 16) = v4;
    *(v53 + 24) = v23;
    *(v53 + 32) = a3;
    *(v53 + 56) = v54;
    *(v53 + 72) = v74;
    aBlock[4] = sub_1D8EBC300;
    aBlock[5] = v53;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_21;
    v55 = _Block_copy(aBlock);
    v56 = a3;
    v57 = v23;
    v58 = v4;
    v59 = type metadata accessor for DownloadTaskIdentifier();
    v60 = *(v59 - 8);
    (*(v60 + 16))(v71, v73, v59);
    v61 = v65;
    sub_1D9177E4C();
    v71[0] = MEMORY[0x1E69E7CC0];
    sub_1D8D64524(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    v62 = v67;
    v63 = v70;
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v61, v62, v55);
    _Block_release(v55);
    (*(v60 + 8))(v73, v59);

    (v69[1].isa)(v62, v63);
    (*(v66 + 8))(v61, v68);
  }

  else
  {
    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v39 = sub_1D917744C();
    __swift_project_value_buffer(v39, qword_1EDCD0F20);
    v69 = a2;
    v70 = sub_1D917741C();
    v40 = sub_1D9178CDC();
    if (os_log_type_enabled(v70, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 134217984;
      *(v41 + 4) = [v69 taskIdentifier];

      _os_log_impl(&dword_1D8CEC000, v70, v40, "[%ld] Completed without error", v41, 0xCu);
      MEMORY[0x1DA72CB90](v41, -1, -1);
      v42 = v70;
    }

    else
    {

      v42 = v69;
    }
  }
}

uint64_t sub_1D8EB8230(uint64_t *a1, void *a2, void *a3, __int128 *a4)
{
  v81 = a3;
  v82 = a4;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *a1;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = *MEMORY[0x1E69E7D40] & *a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5908, &unk_1D9190D80);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v79 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v78 = &v76 - v14;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v15 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77);
  v17 = &v76 - v16;
  v18 = *((v8 & v7) + 0x58);
  v19 = *((v8 & v7) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = sub_1D91791BC();
  v80 = *(v21 - 8);
  v22 = v80[8];
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v76 - v24;
  v84 = a2;
  v26 = [a2 taskIdentifier];
  v27 = *((*v6 & *a1) + 0x98);
  swift_beginAccess();
  v28 = *(a1 + v27);
  v88 = v26;
  *&v85 = v19;
  *(&v85 + 1) = v18;
  v29 = *(v9 + 112);
  v86 = *(v9 + 96);
  v87 = v29;
  type metadata accessor for AssetBackgroundDelegate.DownloadNotificationRecord();
  sub_1D91780FC();
  v83 = v19;
  if (v89)
  {
    v30 = v18;
    v31 = v82;
    swift_endAccess();
    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v32 = sub_1D917744C();
    __swift_project_value_buffer(v32, qword_1EDCD0F20);
    v33 = v84;
    v34 = v84;
    v35 = sub_1D917741C();
    v36 = sub_1D9178CDC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134217984;
      *(v37 + 4) = [v34 taskIdentifier];

      _os_log_impl(&dword_1D8CEC000, v35, v36, "[%ld] Download completed while still foregrounded, notifying subject", v37, 0xCu);
      v38 = v37;
      v33 = v84;
      MEMORY[0x1DA72CB90](v38, -1, -1);
    }

    else
    {

      v35 = v34;
    }

    v54 = v81;
    *&v85 = v81;
    v55 = v81;
    sub_1D91778AC();

    v40 = v31;
    v56 = MEMORY[0x1E69E7D40];
    v57 = v30;
  }

  else
  {
    v76 = v17;
    swift_endAccess();
    v39 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x90);
    v40 = v82;
    v41 = v82[1];
    v85 = *v82;
    v86 = v41;
    *&v87 = *(v82 + 4);
    v42 = v18[3];
    v81 = v18;
    v42(&v85, v19, v18);
    v43 = (*(*(AssociatedTypeWitness - 8) + 48))(v25, 1, AssociatedTypeWitness);
    (v80[1])(v25, v21);
    if (v43 == 1)
    {
      v33 = v84;
      if (qword_1EDCD0F18 != -1)
      {
        swift_once();
      }

      v44 = sub_1D917744C();
      __swift_project_value_buffer(v44, qword_1EDCD0F20);
      v45 = v33;
      v46 = sub_1D917741C();
      v47 = sub_1D9178CFC();
      v48 = os_log_type_enabled(v46, v47);
      v49 = v79;
      if (v48)
      {
        v50 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *&v85 = v80;
        *v50 = 134218242;
        *(v50 + 4) = [v45 taskIdentifier];

        *(v50 + 12) = 2080;
        v51 = [v45 originalRequest];
        if (v51)
        {
          v52 = v51;
          sub_1D91764DC();

          v53 = 0;
        }

        else
        {
          v53 = 1;
        }

        v65 = sub_1D917653C();
        v66 = *(v65 - 8);
        (*(v66 + 56))(v49, v53, 1, v65);
        v67 = v78;
        sub_1D8EBC3A4(v49, v78);
        if ((*(v66 + 48))(v67, 1, v65) == 1)
        {
          sub_1D8D08A50(v67, &qword_1ECAB5908, &unk_1D9190D80);
          v68 = sub_1D9176C2C();
          (*(*(v68 - 8) + 56))(v76, 1, 1, v68);
        }

        else
        {
          v79 = v50;
          sub_1D91764FC();
          v50 = v79;
          (*(v66 + 8))(v67, v65);
        }

        v69 = sub_1D917826C();
        v71 = sub_1D8CFA924(v69, v70, &v85);

        *(v50 + 14) = v71;
        _os_log_impl(&dword_1D8CEC000, v46, v47, "[%ld] Failed download task with no notification endpoint: %s)", v50, 0x16u);
        v72 = v80;
        __swift_destroy_boxed_opaque_existential_1Tm(v80);
        MEMORY[0x1DA72CB90](v72, -1, -1);
        MEMORY[0x1DA72CB90](v50, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v33 = v84;
      if (qword_1EDCD0F18 != -1)
      {
        swift_once();
      }

      v58 = sub_1D917744C();
      __swift_project_value_buffer(v58, qword_1EDCD0F20);
      v59 = v33;
      v60 = sub_1D917741C();
      v61 = sub_1D9178CDC();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = v40;
        v63 = swift_slowAlloc();
        *v63 = 134217984;
        *(v63 + 4) = [v59 taskIdentifier];

        _os_log_impl(&dword_1D8CEC000, v60, v61, "[%ld] Download completed with a background record, skipping due to error", v63, 0xCu);
        v64 = v63;
        v40 = v62;
        MEMORY[0x1DA72CB90](v64, -1, -1);
      }

      else
      {
      }
    }

    v56 = MEMORY[0x1E69E7D40];
    v57 = v81;
  }

  v73 = *((*v56 & *a1) + 0x90);
  v74 = v40[1];
  v85 = *v40;
  v86 = v74;
  *&v87 = *(v40 + 4);
  v57[6](&v85, v83);
  return sub_1D8EB69AC([v33 taskIdentifier]);
}

void sub_1D8EB8B38(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  v11 = a5;
  AssetBackgroundDelegate.urlSession(_:task:didCompleteWithError:)(v8, v9, a5);
}

uint64_t AssetBackgroundDelegate.urlSession(_:downloadTask:didFinishDownloadingTo:)(void *a1, void *a2, void *a3)
{
  v145 = a1;
  v172 = *MEMORY[0x1E69E9840];
  v159 = (*MEMORY[0x1E69E7D40] & *v3);
  v153 = sub_1D9177E0C();
  v152 = *(v153 - 8);
  v6 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v153);
  v150 = &v136 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_1D9177E9C();
  v149 = *(v151 - 8);
  v8 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v151);
  v148 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_1D9176EAC();
  v139 = *(v142 - 8);
  v10 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v138 = &v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5908, &unk_1D9190D80);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v136 - v17;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v19 = *(*(v157 - 1) + 64);
  MEMORY[0x1EEE9AC00](v157);
  v21 = &v136 - v20;
  v22 = sub_1D9176C2C();
  v23 = *(v22 - 8);
  v24 = v23[8];
  MEMORY[0x1EEE9AC00](v22);
  v158 = &v136 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v162 = &v136 - v27;
  v146 = v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v136 - v30;
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v137 = sub_1D917744C();
  v32 = __swift_project_value_buffer(v137, qword_1EDCD0F20);
  v33 = v23[2];
  v156 = a3;
  v155 = v23 + 2;
  v154 = v33;
  v33(v31, a3, v22);
  v34 = a2;
  v136 = v32;
  v35 = sub_1D917741C();
  v36 = sub_1D9178CDC();
  v37 = os_log_type_enabled(v35, v36);
  v160 = v22;
  v161 = v34;
  if (v37)
  {
    LODWORD(v143) = v36;
    v144 = v23;
    v38 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    aBlock = v141;
    *v38 = 134218498;
    *(v38 + 4) = [v34 taskIdentifier];

    *(v38 + 12) = 2080;
    v39 = [v34 originalRequest];
    if (v39)
    {
      v40 = v39;
      sub_1D91764DC();

      v41 = 0;
    }

    else
    {
      v41 = 1;
    }

    v43 = sub_1D917653C();
    v44 = *(v43 - 8);
    (*(v44 + 56))(v15, v41, 1, v43);
    sub_1D8EBC3A4(v15, v18);
    if ((*(v44 + 48))(v18, 1, v43) == 1)
    {
      sub_1D8D08A50(v18, &qword_1ECAB5908, &unk_1D9190D80);
      v42 = v144;
      v22 = v160;
      (v144[7])(v21, 1, 1, v160);
    }

    else
    {
      sub_1D91764FC();
      (*(v44 + 8))(v18, v43);
      v22 = v160;
      v42 = v144;
    }

    v45 = sub_1D917826C();
    v47 = sub_1D8CFA924(v45, v46, &aBlock);

    *(v38 + 14) = v47;
    *(v38 + 22) = 2080;
    sub_1D8D64524(&qword_1ECAB2C88, MEMORY[0x1E6968FB0]);
    v48 = sub_1D9179A4C();
    v50 = v49;
    v157 = v42[1];
    v157(v31, v22);
    v51 = sub_1D8CFA924(v48, v50, &aBlock);

    *(v38 + 24) = v51;
    _os_log_impl(&dword_1D8CEC000, v35, v143, "[%ld] Finished downloading %s: %s", v38, 0x20u);
    v52 = v141;
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v52, -1, -1);
    MEMORY[0x1DA72CB90](v38, -1, -1);

    v34 = v161;
  }

  else
  {

    v157 = v23[1];
    v157(v31, v22);
    v42 = v23;
  }

  v53 = [v145 configuration];
  v54 = [v53 identifier];

  v55 = v159;
  if (v54)
  {
    v56 = sub_1D917820C();
    v58 = v57;
  }

  else
  {
    v56 = 0;
    v58 = 0;
  }

  v59 = [v34 taskIdentifier];
  v60 = v55[10];
  v140 = v55[11];
  v141 = v60;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = v55[14];
  v63 = v55[15];
  v145 = AssociatedTypeWitness;
  v144 = v62;
  v143 = v63;
  DownloadTaskIdentifier.init(session:identifier:)(v56, v58, v59, v170);
  v64 = v138;
  sub_1D9176E9C();
  v65 = sub_1D9176E5C();
  v67 = v66;
  (*(v139 + 8))(v64, v142);
  aBlock = v65;
  v165 = v67;
  MEMORY[0x1DA7298F0](45, 0xE100000000000000);
  v68 = sub_1D9176B0C();
  MEMORY[0x1DA7298F0](v68);

  v69 = objc_opt_self();
  v70 = [v69 defaultManager];
  v71 = [v70 temporaryDirectory];

  v72 = v158;
  sub_1D9176B9C();

  v73 = v162;
  sub_1D9176B3C();

  v142 = (v42 + 1);
  v157(v72, v22);
  sub_1D8D64524(&qword_1ECAB2CA0, MEMORY[0x1E6968FB0]);
  if ((sub_1D91781BC() & 1) == 0)
  {
    v74 = [v69 defaultManager];
    v75 = sub_1D9176B1C();
    v76 = sub_1D9176B1C();
    aBlock = 0;
    v77 = [v74 copyItemAtURL:v75 toURL:v76 error:&aBlock];

    if (!v77)
    {
      v89 = aBlock;
      v82 = sub_1D9176A6C();

      v83 = v161;
      goto LABEL_25;
    }

    v78 = aBlock;
  }

  v79 = [v69 defaultManager];
  sub_1D9176BCC();
  v80 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v81 = [v79 fileExistsAtPath_];

  if (v81)
  {
    v82 = 0;
    goto LABEL_33;
  }

  v83 = v161;
  v84 = v161;
  v85 = sub_1D917741C();
  v86 = sub_1D9178D0C();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    *v87 = 134217984;
    *(v87 + 4) = [v84 taskIdentifier];

    _os_log_impl(&dword_1D8CEC000, v85, v86, "[%ld] SOMETHING IS CRITICALLY WRONG, Moved file is missing", v87, 0xCu);
    v88 = v87;
    v83 = v161;
    MEMORY[0x1DA72CB90](v88, -1, -1);
  }

  else
  {

    v85 = v84;
  }

  type metadata accessor for FileError();
  sub_1D8D64524(&qword_1ECAB5920, type metadata accessor for FileError);
  v82 = swift_allocError();
  v91 = v90;
  v154(v90, v73, v22);
  (v42[7])(v91, 0, 2, v22);
LABEL_25:
  swift_willThrow();
  if (qword_1EDCD5E68 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v137, qword_1EDCD5E70);
  v92 = v83;
  v93 = v82;
  v94 = sub_1D917741C();
  v95 = sub_1D9178CFC();

  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    aBlock = v97;
    *v96 = 134218242;
    *(v96 + 4) = [v92 taskIdentifier];

    *(v96 + 12) = 2080;
    v163 = v82;
    v98 = v82;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    v99 = sub_1D917826C();
    v101 = sub_1D8CFA924(v99, v100, &aBlock);

    *(v96 + 14) = v101;
    v73 = v162;
    _os_log_impl(&dword_1D8CEC000, v94, v95, "[%ld] Failed to copy asset from URLSession directory to tmp directory: %s", v96, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v97);
    MEMORY[0x1DA72CB90](v97, -1, -1);
    MEMORY[0x1DA72CB90](v96, -1, -1);
  }

  else
  {
  }

  v102 = v82;
  v103 = sub_1D917741C();
  v104 = sub_1D9178CFC();

  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    aBlock = v106;
    *v105 = 136315138;
    v163 = v82;
    v107 = v82;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    v108 = sub_1D917826C();
    v110 = sub_1D8CFA924(v108, v109, &aBlock);

    *(v105 + 4) = v110;
    _os_log_impl(&dword_1D8CEC000, v103, v104, "%s", v105, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v106);
    MEMORY[0x1DA72CB90](v106, -1, -1);
    MEMORY[0x1DA72CB90](v105, -1, -1);
  }

  v22 = v160;
LABEL_33:
  v156 = v82;
  if (qword_1ECAB10C0 != -1)
  {
    swift_once();
  }

  v139 = qword_1ECAB10D0;
  v111 = v158;
  v154(v158, v73, v22);
  v112 = (*(v42 + 80) + 88) & ~*(v42 + 80);
  v113 = (v146 + v112 + 7) & 0xFFFFFFFFFFFFFFF8;
  v114 = swift_allocObject();
  v115 = v140;
  *(v114 + 2) = v141;
  *(v114 + 3) = v115;
  v116 = v159;
  *(v114 + 4) = v159[12];
  v117 = v144;
  *(v114 + 5) = v116[13];
  *(v114 + 6) = v117;
  v118 = v147;
  *(v114 + 7) = v143;
  *(v114 + 8) = v118;
  v119 = v161;
  v120 = v156;
  *(v114 + 9) = v161;
  *(v114 + 10) = v120;
  (v42[4])(&v114[v112], v111, v22);
  v121 = &v114[v113];
  v122 = v170[1];
  *v121 = v170[0];
  *(v121 + 1) = v122;
  *(v121 + 4) = v171;
  v168 = sub_1D8EBC310;
  v169 = v114;
  aBlock = MEMORY[0x1E69E9820];
  v165 = 1107296256;
  v166 = sub_1D8CF5F60;
  v167 = &block_descriptor_27_0;
  v159 = _Block_copy(&aBlock);
  v123 = v119;
  v124 = v118;
  v125 = type metadata accessor for DownloadTaskIdentifier();
  v126 = *(v125 - 8);
  (*(v126 + 16))(&v163, v170, v125);
  v127 = v156;
  v128 = v156;
  v129 = v148;
  sub_1D9177E4C();
  v163 = MEMORY[0x1E69E7CC0];
  sub_1D8D64524(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  v130 = v162;
  v131 = v150;
  v132 = v153;
  sub_1D91792CC();
  v133 = v159;
  MEMORY[0x1DA72A400](0, v129, v131, v159);
  _Block_release(v133);

  (*(v126 + 8))(v170, v125);
  (*(v152 + 8))(v131, v132);
  (*(v149 + 8))(v129, v151);
  v157(v130, v160);

  v135 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D8EB9E58(void *a1, void *a2, void *a3, uint64_t a4, __int128 *a5)
{
  v144 = a5;
  v140 = a4;
  v139 = a3;
  v6 = a1;
  *&v141 = *a1;
  v7 = MEMORY[0x1E69E7D40];
  v8 = *MEMORY[0x1E69E7D40];
  v9 = *MEMORY[0x1E69E7D40] & v141;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5908, &unk_1D9190D80);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v123 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v124 = &v121 - v14;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v15 = *(*(v126 - 8) + 64);
  MEMORY[0x1EEE9AC00](v126);
  v125 = &v121 - v16;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5A10, &qword_1D9190F38);
  v128 = *(v129 - 8);
  v17 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v127 = &v121 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v136 = &v121 - v21;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5A18, &unk_1D9190F40);
  v131 = *(v132 - 8);
  v22 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v130 = &v121 - v23;
  v134 = type metadata accessor for DownloadPhase();
  v24 = *(*(v134 - 8) + 64);
  MEMORY[0x1EEE9AC00](v134);
  v133 = &v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = *(v9 + 80);
  v26 = *(&v143 + 1);
  v145 = v143;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = sub_1D91791BC();
  v135 = *(v28 - 8);
  v29 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v121 - v30;
  v138 = *(AssociatedTypeWitness - 8);
  v32 = *(v138 + 64);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v121 - v35;
  v142 = a2;
  v37 = [a2 taskIdentifier];
  v38 = *((*v7 & *v6) + 0x98);
  swift_beginAccess();
  v39 = *(v6 + v38);
  v150 = v37;
  v40 = *(v9 + 96);
  v41 = *((v8 & v141) + 0x70);
  v42 = *((v8 & v141) + 0x78);
  v146 = v143;
  v147 = v40;
  v141 = v40;
  v148 = v41;
  v149 = v42;
  type metadata accessor for AssetBackgroundDelegate.DownloadNotificationRecord();
  sub_1D91780FC();
  v137 = v26;
  if (v151)
  {
    v44 = v144;
    v43 = v145;
    swift_endAccess();
    v45 = v139;
    if (v139)
    {
      *&v146 = v139;
      v46 = v139;
      v47 = v45;
      sub_1D91778AC();

      return;
    }

    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v68 = sub_1D917744C();
    __swift_project_value_buffer(v68, qword_1EDCD0F20);
    v69 = v142;
    v70 = sub_1D917741C();
    v71 = sub_1D9178CDC();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 134217984;
      *(v72 + 4) = [v69 taskIdentifier];

      _os_log_impl(&dword_1D8CEC000, v70, v71, "[%ld] Download completed while still foregrounded, notifying subject", v72, 0xCu);
      MEMORY[0x1DA72CB90](v72, -1, -1);
    }

    else
    {

      v70 = v69;
    }

    v81 = [objc_opt_self() defaultManager];
    sub_1D9176BCC();
    v82 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v83 = [v81 fileExistsAtPath_];

    v60 = MEMORY[0x1E69E7D40];
    if ((v83 & 1) == 0)
    {
      v84 = v69;
      v85 = sub_1D917741C();
      v86 = sub_1D9178D0C();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        *v87 = 134217984;
        *(v87 + 4) = [v84 taskIdentifier];

        _os_log_impl(&dword_1D8CEC000, v85, v86, "[%ld] SOMETHING IS CRITICALLY WRONG, Moved file is missing in worker block", v87, 0xCu);
        MEMORY[0x1DA72CB90](v87, -1, -1);
      }

      else
      {

        v85 = v84;
      }
    }

    v110 = sub_1D9176C2C();
    v111 = v133;
    (*(*(v110 - 8) + 16))(v133, v140, v110);
    swift_storeEnumTagMultiPayload();
    sub_1D91778BC();
    sub_1D8EBC4E0(v111);
    *&v146 = 0;
    sub_1D91778AC();

    v51 = v44;
    goto LABEL_30;
  }

  v48 = v135;
  v139 = v42;
  v49 = v136;
  v122 = v36;
  swift_endAccess();
  v50 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x90);
  v51 = v144;
  v52 = v144[1];
  v146 = *v144;
  v147 = v52;
  v148 = *(v144 + 4);
  (*(v26 + 24))(&v146, v145, v26);
  v53 = v138;
  if ((*(v138 + 48))(v31, 1, AssociatedTypeWitness) != 1)
  {
    v134 = v41;
    v73 = *(v53 + 32);
    v135 = AssociatedTypeWitness;
    v73(v122, v31, AssociatedTypeWitness);
    v74 = v142;
    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v75 = sub_1D917744C();
    __swift_project_value_buffer(v75, qword_1EDCD0F20);
    v76 = v74;
    v77 = sub_1D917741C();
    v78 = sub_1D9178CDC();
    v79 = v49;
    if (os_log_type_enabled(v77, v78))
    {
      v80 = swift_slowAlloc();
      *v80 = 134217984;
      *(v80 + 4) = [v76 taskIdentifier];

      _os_log_impl(&dword_1D8CEC000, v77, v78, "[%ld] Download completed with a background record", v80, 0xCu);
      MEMORY[0x1DA72CB90](v80, -1, -1);
    }

    else
    {

      v77 = v76;
    }

    v88 = v122;
    v89 = v76;
    v90 = MEMORY[0x1E69E7D40];
    v126 = v89;

    dispatch_group_enter(*(v6 + *((*v90 & *v6) + 0xB8)));
    v133 = [v89 taskIdentifier];
    v91 = v6 + *((*v90 & *v6) + 0x80);
    v92 = *(v91 + 1);
    v93 = (*v91)(v88, v140);
    if (qword_1ECAB10C0 != -1)
    {
      swift_once();
    }

    v94 = qword_1ECAB10D0;
    v95 = sub_1D9178DBC();
    (*(*(v95 - 8) + 56))(v49, 1, 1, v95);
    *&v146 = v94;
    v152 = v93;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5A20, &qword_1D9190B78);
    sub_1D8CFD888();
    sub_1D8CF48EC(&qword_1ECAB0330, &unk_1ECAB5A20, &qword_1D9190B78);
    sub_1D8D64524(&qword_1EDCD0980, sub_1D8CFD888);
    v96 = v127;
    sub_1D9177D3C();
    sub_1D8CF48EC(&qword_1ECAB0A60, &qword_1ECAB5A10, &qword_1D9190F38);
    v97 = v130;
    v98 = v129;
    sub_1D9177CEC();

    (*(v128 + 8))(v96, v98);
    sub_1D8D08A50(v79, &qword_1ECAB4D70, &unk_1D918BCE0);
    v99 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v100 = swift_allocObject();
    v101 = v141;
    *(v100 + 16) = v143;
    *(v100 + 32) = v101;
    v102 = v139;
    *(v100 + 48) = v134;
    *(v100 + 56) = v102;
    v103 = v126;
    *(v100 + 64) = v99;
    *(v100 + 72) = v103;
    sub_1D8CF48EC(&qword_1ECAB0488, &qword_1ECAB5A18, &unk_1D9190F40);
    v104 = v103;
    v105 = v132;
    v106 = sub_1D9177BCC();

    (*(v131 + 8))(v97, v105);
    v60 = MEMORY[0x1E69E7D40];
    v107 = *((*MEMORY[0x1E69E7D40] & *v6) + 0xB0);
    swift_beginAccess();
    v108 = *(v6 + v107);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v152 = *(v6 + v107);
    *(v6 + v107) = 0x8000000000000000;
    sub_1D8F4F938(v106, v133, isUniquelyReferenced_nonNull_native);
    *(v6 + v107) = v152;
    swift_endAccess();
    (*(v138 + 8))(v122, v135);
    v51 = v144;
    v43 = v145;
LABEL_30:
    v26 = v137;
LABEL_31:
    v54 = v142;
    goto LABEL_32;
  }

  (*(v48 + 8))(v31, v28);
  v54 = v142;
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v55 = sub_1D917744C();
  __swift_project_value_buffer(v55, qword_1EDCD0F20);
  v56 = v54;
  v57 = sub_1D917741C();
  v58 = sub_1D9178CFC();
  v59 = os_log_type_enabled(v57, v58);
  v60 = MEMORY[0x1E69E7D40];
  v43 = v145;
  if (v59)
  {
    LODWORD(v141) = v58;
    *&v143 = v6;
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *&v146 = v62;
    *v61 = 134218242;
    *(v61 + 4) = [v56 taskIdentifier];

    *(v61 + 12) = 2080;
    v63 = [v56 originalRequest];
    v64 = v60;
    if (v63)
    {
      v65 = v123;
      v66 = v63;
      sub_1D91764DC();

      v67 = 0;
    }

    else
    {
      v67 = 1;
      v65 = v123;
    }

    v114 = sub_1D917653C();
    v115 = *(v114 - 8);
    (*(v115 + 56))(v65, v67, 1, v114);
    v116 = v124;
    sub_1D8EBC3A4(v65, v124);
    if ((*(v115 + 48))(v116, 1, v114) == 1)
    {
      sub_1D8D08A50(v116, &qword_1ECAB5908, &unk_1D9190D80);
      v117 = sub_1D9176C2C();
      (*(*(v117 - 8) + 56))(v125, 1, 1, v117);
    }

    else
    {
      sub_1D91764FC();
      (*(v115 + 8))(v116, v114);
    }

    v60 = v64;
    v118 = sub_1D917826C();
    v120 = sub_1D8CFA924(v118, v119, &v146);

    *(v61 + 14) = v120;
    _os_log_impl(&dword_1D8CEC000, v57, v141, "[%ld] Completed download task with no notification endpoint: %s", v61, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    MEMORY[0x1DA72CB90](v62, -1, -1);
    MEMORY[0x1DA72CB90](v61, -1, -1);

    v51 = v144;
    v43 = v145;
    v26 = v137;
    v6 = v143;
    goto LABEL_31;
  }

LABEL_32:
  v112 = *((*v60 & *v6) + 0x90);
  v113 = v51[1];
  v146 = *v51;
  v147 = v113;
  v148 = *(v51 + 4);
  (*(v26 + 48))(&v146, v43, v26);
  sub_1D8EB69AC([v54 taskIdentifier]);
}

uint64_t sub_1D8EBB034(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = MEMORY[0x1E69E7D40];
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + *((*MEMORY[0x1E69E7D40] & *Strong) + 0xB8));

    dispatch_group_leave(v7);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = [a3 taskIdentifier];
    v11 = *((*v5 & *v9) + 0xB0);
    swift_beginAccess();
    sub_1D8F7EC14(v10);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1D8EBB160(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9176B9C();
  v12 = a3;
  v13 = a4;
  v14 = a1;
  AssetBackgroundDelegate.urlSession(_:downloadTask:didFinishDownloadingTo:)(v12, v13, v11);

  return (*(v8 + 8))(v11, v7);
}

uint64_t AssetBackgroundDelegate.BackgroundDownloadError.hashValue.getter()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](0);
  return sub_1D9179E1C();
}

id AssetBackgroundDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void AssetBackgroundDelegate.init()()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  v6 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x78);
  sub_1D8EBC414();
}

void sub_1D8EBB3AC(void *a1)
{
  v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x68);
  v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x70);
  v6 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x78);
  sub_1D8EBC414();
}

id AssetBackgroundDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D8EBB474(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x80) + 8];

  v6 = &a1[*((*v2 & *a1) + 0x88)];
  v7 = v6[1];
  sub_1D8D15664(*v6);
  (*(*(*((v4 & v3) + 0x50) - 8) + 8))(&a1[*((*v2 & *a1) + 0x90)]);
  v8 = *&a1[*((*v2 & *a1) + 0x98)];

  v9 = *&a1[*((*v2 & *a1) + 0xA0)];

  v10 = *&a1[*((*v2 & *a1) + 0xA8)];

  v11 = *&a1[*((*v2 & *a1) + 0xB0)];

  v12 = *&a1[*((*v2 & *a1) + 0xB8)];
}

uint64_t sub_1D8EBB610@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1D8EBB664(void *a1)
{
  v2 = v1;
  v4 = sub_1D9177E0C();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D9177E9C();
  v8 = *(v23 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v12 = sub_1D917744C();
  __swift_project_value_buffer(v12, qword_1EDCD0F20);
  v13 = a1;
  v14 = sub_1D917741C();
  v15 = sub_1D9178CDC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = [v13 taskIdentifier];

    _os_log_impl(&dword_1D8CEC000, v14, v15, "Download task created with identifier: %ld", v16, 0xCu);
    MEMORY[0x1DA72CB90](v16, -1, -1);
  }

  else
  {

    v14 = v13;
  }

  if (qword_1ECAB10C0 != -1)
  {
    swift_once();
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  *(v17 + 24) = v13;
  aBlock[4] = sub_1D8EBC59C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_60_0;
  v18 = _Block_copy(aBlock);
  v19 = v13;
  v20 = v2;
  sub_1D9177E4C();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1D8D64524(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v11, v7, v18);
  _Block_release(v18);
  (*(v24 + 8))(v7, v4);
  (*(v8 + 8))(v11, v23);
}

void sub_1D8EBBA58(void *a1)
{
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v2 = sub_1D917744C();
  __swift_project_value_buffer(v2, qword_1EDCD0F20);
  v3 = a1;
  oslog = sub_1D917741C();
  v4 = sub_1D9178CDC();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = [v3 taskIdentifier];

    _os_log_impl(&dword_1D8CEC000, oslog, v4, "[%ld] Task is waiting for connectivity", v5, 0xCu);
    MEMORY[0x1DA72CB90](v5, -1, -1);
    v6 = oslog;
  }

  else
  {

    v6 = v3;
  }
}

uint64_t sub_1D8EBBB84(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D9177E0C();
  v29 = *(v8 - 8);
  v9 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9177E9C();
  v27 = *(v12 - 8);
  v28 = v12;
  v13 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v16 = a2 / a3;
  v17 = sub_1D917744C();
  __swift_project_value_buffer(v17, qword_1EDCD0F20);
  v18 = a1;
  v19 = sub_1D917741C();
  v20 = sub_1D9178CDC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134218752;
    *(v21 + 4) = [v18 taskIdentifier];

    *(v21 + 12) = 2050;
    *(v21 + 14) = a2;
    *(v21 + 22) = 2050;
    *(v21 + 24) = a3;
    *(v21 + 32) = 2048;
    *(v21 + 34) = v16;
    _os_log_impl(&dword_1D8CEC000, v19, v20, "[%ld] Did resume downloading at offset %{public}lld, expected total bytes: %{public}lld: %f%%", v21, 0x2Au);
    MEMORY[0x1DA72CB90](v21, -1, -1);
  }

  else
  {

    v19 = v18;
  }

  if (qword_1ECAB10C0 != -1)
  {
    swift_once();
  }

  v22 = swift_allocObject();
  *(v22 + 16) = v4;
  *(v22 + 24) = v18;
  *(v22 + 32) = v16;
  aBlock[4] = sub_1D8EBC5BC;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_54_0;
  v23 = _Block_copy(aBlock);
  v24 = v18;
  v25 = v4;
  sub_1D9177E4C();
  v30 = MEMORY[0x1E69E7CC0];
  sub_1D8D64524(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v15, v11, v23);
  _Block_release(v23);
  (*(v29 + 8))(v11, v8);
  (*(v27 + 8))(v15, v28);
}

void sub_1D8EBBFB4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D9177E0C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9177E9C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >= 1)
  {
    v23 = v15;
    v24 = v8;
    if (qword_1ECAB10C0 != -1)
    {
      swift_once();
    }

    v18 = swift_allocObject();
    *(v18 + 16) = v3;
    *(v18 + 24) = a1;
    *(v18 + 32) = a2 / a3 * 100.0;
    aBlock[4] = sub_1D8EBC57C;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_48_0;
    v19 = _Block_copy(aBlock);
    v20 = v3;
    v21 = a1;
    sub_1D9177E4C();
    v25 = MEMORY[0x1E69E7CC0];
    sub_1D8D64524(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v17, v11, v19);
    _Block_release(v19);
    (*(v24 + 8))(v11, v7);
    (*(v13 + 8))(v17, v23);
  }
}

void sub_1D8EBC2EC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  sub_1D8EB7950();
}

void sub_1D8EBC310()
{
  v1 = *(sub_1D9176C2C() - 8);
  v2 = (*(v1 + 80) + 88) & ~*(v1 + 80);
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[10];
  v6 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1D8EB9E58(v3, v4, v5, v0 + v2, v6);
}

uint64_t sub_1D8EBC3A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5908, &unk_1D9190D80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8EBC4AC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v8 = *(v1 + 56);
  return sub_1D8EBB034(a1, *(v1 + 64), *(v1 + 72));
}

uint64_t sub_1D8EBC4E0(uint64_t a1)
{
  v2 = type metadata accessor for DownloadPhase();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8EBC53C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t DownloadPhase.hash(into:)()
{
  v1 = sub_1D9176C2C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DownloadPhase();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D8E6C974(v0, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v2 + 32))(v5, v9, v1);
      MEMORY[0x1DA72B390](2);
      sub_1D8D68B80(&qword_1ECAB2CA8, MEMORY[0x1E6968FB0]);
      sub_1D917814C();
      return (*(v2 + 8))(v5, v1);
    }

    else
    {
      return MEMORY[0x1DA72B390](0);
    }
  }

  else
  {
    v12 = *v9;
    MEMORY[0x1DA72B390](1);
    v13 = 0.0;
    if (v12 != 0.0)
    {
      v13 = v12;
    }

    return MEMORY[0x1DA72B3C0](*&v13);
  }
}

uint64_t DownloadPhase.hashValue.getter()
{
  sub_1D9179DBC();
  DownloadPhase.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t sub_1D8EBC7EC()
{
  sub_1D9179DBC();
  DownloadPhase.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t sub_1D8EBC830()
{
  sub_1D9179DBC();
  DownloadPhase.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t _s18PodcastsFoundation13DownloadPhaseO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DownloadPhase();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v26 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B18, &qword_1D9191008);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v26 - v18;
  v21 = *(v20 + 56);
  sub_1D8E6C974(a1, &v26 - v18);
  sub_1D8E6C974(a2, &v19[v21]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1D8E6C974(v19, v15);
    if (!swift_getEnumCaseMultiPayload())
    {
      v23 = *v15 == *&v19[v21];
      goto LABEL_7;
    }

LABEL_11:
    sub_1D8EBCC20(v19);
    v23 = 0;
    return v23 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1D8EBC4E0(v19);
      v23 = 1;
      return v23 & 1;
    }

    goto LABEL_11;
  }

  sub_1D8E6C974(v19, v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 8))(v12, v4);
    goto LABEL_11;
  }

  (*(v5 + 32))(v8, &v19[v21], v4);
  v23 = sub_1D9176B8C();
  v24 = *(v5 + 8);
  v24(v8, v4);
  v24(v12, v4);
LABEL_7:
  sub_1D8EBC4E0(v19);
  return v23 & 1;
}

uint64_t type metadata accessor for DownloadPhase()
{
  result = qword_1ECAB2898;
  if (!qword_1ECAB2898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8EBCBB4()
{
  result = sub_1D9176C2C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D8EBCC20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B18, &qword_1D9191008);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DownloadTaskIdentifier.init(session:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_1D91769EC();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  a4[3] = sub_1D91769DC();
  v11 = sub_1D91769AC();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();

  a4[4] = sub_1D917699C();
  *a4 = a3;
  a4[1] = a1;
  a4[2] = a2;
  sub_1D91769BC();
}

uint64_t DownloadTaskIdentifier.session.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

unint64_t DownloadTaskIdentifier.key.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];

  sub_1D917946C();

  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0xD000000000000014;
  }

  if (!v3)
  {
    v3 = 0x80000001D91CA220;
  }

  MEMORY[0x1DA7298F0](v4, v3);

  MEMORY[0x1DA7298F0](45, 0xE100000000000000);
  v5 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v5);

  return 0xD000000000000014;
}

unint64_t sub_1D8EBCE58@<X0>(unint64_t *a1@<X8>)
{
  result = DownloadTaskIdentifier.key.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t DownloadTaskIdentifier.fileName.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  return DownloadTaskIdentifier.key.getter();
}

uint64_t DownloadTaskIdentifier.encode(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  return sub_1D91769CC();
}

uint64_t DownloadTaskIdentifier.decode(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 32);
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  return sub_1D917698C();
}

uint64_t static DownloadTaskIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (a1[1] == a2[1] && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_1D9179ACC();
    }
  }

  return result;
}

uint64_t DownloadTaskIdentifier.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1DA72B390](*v0);
  if (!v2)
  {
    return sub_1D9179DDC();
  }

  sub_1D9179DDC();

  return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t DownloadTaskIdentifier.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_1D9179DBC();
  DownloadTaskIdentifier.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t sub_1D8EBD0C4()
{
  sub_1D9179DBC();
  DownloadTaskIdentifier.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t sub_1D8EBD120(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8EBD168(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t ForegroundSessionSource.init(sourceType:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 32) = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49B8, &unk_1D9191140);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  result = sub_1D9177A5C();
  *a4 = result;
  return result;
}

void sub_1D8EBD29C(uint64_t a1, SEL *a2, void *a3)
{
  v4 = [objc_opt_self() *a2];
  v5 = [objc_opt_self() sessionWithConfiguration_];

  *a3 = v5;
}

id sub_1D8EBD33C()
{
  result = sub_1D8EBD35C();
  qword_1ECAB1380 = result;
  return result;
}

id sub_1D8EBD35C()
{
  v0 = [objc_opt_self() defaultSessionConfiguration];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB5C00, &qword_1D91913F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189080;
  v2 = MEMORY[0x1E69E6158];
  sub_1D91793EC();
  v3 = objc_opt_self();
  v4 = [objc_opt_self() currentProcess];
  v5 = [v3 userAgentForProcessInfo_];

  v6 = sub_1D917820C();
  v8 = v7;

  *(inited + 96) = v2;
  *(inited + 72) = v6;
  *(inited + 80) = v8;
  sub_1D8D653BC(inited);
  swift_setDeallocating();
  sub_1D8D08A50(inited + 32, &unk_1ECAB6C80, &unk_1D91949C0);
  v9 = sub_1D917802C();

  [v0 setHTTPAdditionalHeaders_];

  [v0 setHTTPMaximumConnectionsPerHost_];
  v10 = [objc_opt_self() sessionWithConfiguration_];

  return v10;
}

uint64_t ForegroundSessionSource.ForegroundSessionSourceType.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t ForegroundSessionSource.init(session:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49B8, &unk_1D9191140);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  result = sub_1D9177A5C();
  *a3 = result;
  return result;
}

uint64_t sub_1D8EBD6B8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1D9177E0C();
  v25 = *(v10 - 8);
  v11 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D9177E9C();
  v14 = *(v24 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v19 = qword_1EDCD5B38;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  *(v20 + 32) = a3;
  *(v20 + 40) = sub_1D8EC1784;
  *(v20 + 48) = v18;
  aBlock[4] = sub_1D8EC169C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_78;
  v21 = _Block_copy(aBlock);
  sub_1D9177E4C();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1D8D123F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v17, v13, v21);
  _Block_release(v21);
  (*(v25 + 8))(v13, v10);
  (*(v14 + 8))(v17, v24);
}

void sub_1D8EBD9DC(void (*a1)(id *))
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v3();
  v6 = v5;
  v7 = 0;
  a1(&v6);
}

void sub_1D8EBDA48(char a1, void (*a2)(void *, void))
{
  v5 = a1;
  v3 = sub_1D8EC16AC(&v5);
  v4 = v3;
  a2(v3, 0);
}

uint64_t ForegroundSessionSource.fetch(asset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v114 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v113 = &v90 - v8;
  v9 = *(a2 + 16);
  v96 = sub_1D91779FC();
  v95 = *(v96 - 8);
  v10 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v94 = &v90 - v11;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B28, &qword_1D9191150);
  v99 = *(v101 - 1);
  v12 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v97 = &v90 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B30, &qword_1D9191158);
  v100 = *(v14 - 8);
  v15 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v98 = &v90 - v16;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B38, &qword_1D9191160);
  v105 = *(v106 - 8);
  v17 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v118 = &v90 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B40, &unk_1D9191168);
  v108 = *(v19 - 8);
  v20 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v107 = &v90 - v21;
  v121 = *(a2 + 24);
  v22 = *(v121 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = sub_1D8CF48EC(&qword_1ECAB0628, &qword_1ECAB5B40, &unk_1D9191168);
  v109 = v19;
  v104 = AssociatedTypeWitness;
  v103 = v24;
  v112 = sub_1D917770C();
  v111 = *(v112 - 8);
  v25 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v110 = &v90 - v26;
  v27 = sub_1D9176EAC();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v119 = &v90 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = v34;
  v36 = MEMORY[0x1EEE9AC00](v35);
  v93 = *v3;
  v102 = v37;
  v38 = *(v37 + 16);
  v120 = a1;
  v115 = v38;
  v116 = v37 + 16;
  (v38)(&v90 - v39, a1, v9, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B28, &unk_1D918BE10);
  v40 = v9;
  v41 = swift_dynamicCast();
  v91 = v14;
  if (v41)
  {
    v42 = *(&v126 + 1);
    v43 = v127;
    __swift_project_boxed_opaque_existential_1(&v125, *(&v126 + 1));
    (v43[1])(&v122, v42, v43);
    __swift_destroy_boxed_opaque_existential_1Tm(&v125);
    if (*(&v123 + 1))
    {
      sub_1D8D6BCE0(&v122, &v125);
      goto LABEL_9;
    }
  }

  else
  {
    v127 = 0;
    v125 = 0u;
    v126 = 0u;
    sub_1D8D08A50(&v125, &qword_1ECAB4B20, &unk_1D918BE00);
    v122 = 0u;
    v123 = 0u;
    v124 = 0;
  }

  if (qword_1EDCD5E68 != -1)
  {
    swift_once();
  }

  v44 = sub_1D917744C();
  v45 = __swift_project_value_buffer(v44, qword_1EDCD5E70);
  v46 = type metadata accessor for LoggerTrace(0);
  *(&v126 + 1) = v46;
  v127 = &protocol witness table for LoggerTrace;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v125);
  (*(*(v44 - 8) + 16))(boxed_opaque_existential_0 + *(v46 + 20), v45, v44);
  LOBYTE(v45) = sub_1D9178CDC();
  sub_1D9176E9C();
  v48 = sub_1D9176E5C();
  v50 = v49;
  (*(v28 + 8))(v31, v27);
  *boxed_opaque_existential_0 = v48;
  boxed_opaque_existential_0[1] = v50;
  *(boxed_opaque_existential_0 + *(v46 + 24)) = v45;
  if (*(&v123 + 1))
  {
    sub_1D8D08A50(&v122, &qword_1ECAB4928, &qword_1D918B380);
  }

LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B48, &qword_1D9191178);
  v51 = swift_allocObject();
  *(v51 + 24) = 0;
  *(v51 + 32) = 0;
  *(v51 + 16) = 0;
  *(v51 + 40) = 0;
  v52 = v115;
  v115(v119, v120, v40);
  v53 = v52;
  v54 = v94;
  v55 = sub_1D9177A0C();
  MEMORY[0x1EEE9AC00](v55);
  v92 = sub_1D9176C2C();
  v56 = v97;
  v57 = v96;
  sub_1D91779EC();
  (*(v95 + 8))(v54, v57);
  *&v122 = v93;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49B8, &unk_1D9191140);
  sub_1D8CF48EC(&qword_1EDCD0688, &qword_1ECAB5B28, &qword_1D9191150);
  sub_1D8CF48EC(&unk_1EDCD0AA0, &qword_1ECAB49B8, &unk_1D9191140);
  v58 = v98;
  v59 = v101;
  sub_1D9177B5C();
  (*(v99 + 8))(v56, v59);
  sub_1D8CF48EC(&unk_1EDCD0EC8, &qword_1ECAB5B30, &qword_1D9191158);
  v60 = v91;
  sub_1D9177C5C();
  (*(v100 + 8))(v58, v60);
  v61 = v119;
  v53(v119, v120, v40);
  sub_1D8CFD9D8(&v125, &v122);
  v62 = v102;
  v63 = *(v102 + 80);
  v64 = (v63 + 32) & ~v63;
  v65 = (v117 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  v67 = v121;
  *(v66 + 16) = v40;
  *(v66 + 24) = v67;
  v101 = *(v62 + 32);
  (v101)(v66 + v64, v61, v40);
  *(v66 + v65) = v51;
  v68 = v66 + ((v65 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v68 = "ForegroundNetworkFetch";
  *(v68 + 8) = 22;
  *(v68 + 16) = 2;
  sub_1D8D6BCE0(&v122, v66 + ((v65 + 39) & 0xFFFFFFFFFFFFFFF8));
  v69 = swift_allocObject();
  *(v69 + 16) = sub_1D8EC10D4;
  *(v69 + 24) = v66;
  v102 = v51;

  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB5B50, &qword_1D9191180);
  sub_1D8CF48EC(&qword_1EDCD0C50, &qword_1ECAB5B38, &qword_1D9191160);
  sub_1D8CF48EC(&qword_1ECAB27F8, qword_1ECAB5B50, &qword_1D9191180);
  v70 = v107;
  v71 = v106;
  v72 = v118;
  sub_1D9177CBC();

  v73 = v92;
  (*(v105 + 8))(v72, v71);
  sub_1D8CFD9D8(&v125, &v122);
  v74 = v119;
  v115(v119, v120, v40);
  v75 = (v63 + 72) & ~v63;
  v76 = swift_allocObject();
  v77 = v121;
  *(v76 + 16) = v40;
  *(v76 + 24) = v77;
  sub_1D8D6BCE0(&v122, v76 + 32);
  (v101)(v76 + v75, v74, v40);
  v78 = v110;
  v79 = v109;
  sub_1D9177C6C();

  (*(v108 + 8))(v70, v79);
  sub_1D8CFD9D8(&v125, &v122);
  v80 = v77;
  v81 = *(v77 + 16);
  v82 = v113;
  v81(v40, v80);
  v83 = *(v73 - 8);
  if ((*(v83 + 48))(v82, 1, v73) == 1)
  {
    sub_1D8D08A50(v82, &unk_1ECAB5910, &qword_1D9188C90);
    v84 = 0;
    v85 = 0;
  }

  else
  {
    v84 = sub_1D9176BCC();
    v85 = v86;
    (*(v83 + 8))(v82, v73);
  }

  v87 = v112;
  swift_getWitnessTable();
  v88 = j___s18PodcastsFoundation13EmitLifecycleV16defaultVerbositySbvgZ();
  Publisher.emitLifecycle(for:name:definesInterval:context:verbose:)(&v122, "ForegroundDownload", 18, 2, 1, v84, v85, v88 & 1, v114, v87);

  sub_1D8D08A50(&v122, &qword_1ECAB4928, &qword_1D918B380);
  (*(v111 + 8))(v78, v87);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v125);
}

uint64_t sub_1D8EBE908@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v15 - v9;
  (*(a2 + 16))(a1, a2, v8);
  v11 = sub_1D9176C2C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    return (*(v12 + 32))(a3, v10, v11);
  }

  sub_1D8D08A50(v10, &unk_1ECAB5910, &qword_1D9188C90);
  type metadata accessor for ForegroundSessionSource.SourceError();
  swift_getWitnessTable();
  swift_allocError();
  *v13 = 0;
  return swift_willThrow();
}

uint64_t sub_1D8EBEAAC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v72 = a8;
  v76 = a7;
  v75 = a6;
  v74 = a5;
  v73 = a4;
  v78 = a3;
  v70 = a2;
  v84 = a9;
  v13 = *(a10 - 8);
  v14 = *(v13 + 64);
  v86 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D9176C2C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BE0, &qword_1D91913C8);
  v79 = *(v77 - 8);
  v20 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v69 = &v68 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BE8, &qword_1D91913D0);
  v82 = *(v22 - 8);
  v83 = v22;
  v23 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v81 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v85 = &v68 - v27;
  v28 = *(v17 + 16);
  v80 = a1;
  v28(v19, a1, v16, v26);
  (*(v13 + 16))(v15, a3, a10);
  v29 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v30 = (v18 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (*(v13 + 80) + v30 + 8) & ~*(v13 + 80);
  v32 = swift_allocObject();
  v71 = a10;
  v33 = v86;
  *(v32 + 16) = a10;
  *(v32 + 24) = v33;
  (*(v17 + 32))(v32 + v29, v19, v16);
  v34 = v70;
  *(v32 + v30) = v70;
  (*(v13 + 32))(v32 + v31, v15, a10);
  v35 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BF0, &qword_1D91913D8);
  sub_1D8CF48EC(&qword_1ECAB0940, &qword_1ECAB5BF0, &qword_1D91913D8);
  v36 = v69;
  sub_1D9177A7C();
  v37 = v72;
  sub_1D8CFD9D8(v72, v91);
  v38 = swift_allocObject();
  v39 = v73;
  v40 = v74;
  *(v38 + 16) = v73;
  *(v38 + 24) = v40;
  v41 = v75;
  *(v38 + 32) = v75;
  LOBYTE(v15) = v76;
  *(v38 + 40) = v76;
  sub_1D8D6BCE0(v91, v38 + 48);
  v42 = swift_allocObject();
  *(v42 + 16) = v39;
  *(v42 + 24) = v40;
  *(v42 + 32) = v41;
  *(v42 + 40) = v15;
  v43 = swift_allocObject();
  *(v43 + 16) = v39;
  *(v43 + 24) = v40;
  *(v43 + 32) = v41;
  *(v43 + 40) = v15;
  v44 = swift_allocObject();
  *(v44 + 16) = v39;
  *(v44 + 24) = v40;
  *(v44 + 32) = v41;
  *(v44 + 40) = v15;
  sub_1D8CF48EC(&qword_1ECAB0208, &qword_1ECAB5BE0, &qword_1D91913C8);
  swift_retain_n();
  v45 = v77;
  v46 = v85;
  sub_1D9177B3C();

  (*(v79 + 8))(v36, v45);
  sub_1D8CFD9D8(v37, v91);
  v89 = 0;
  v90 = 0xE000000000000000;
  sub_1D917946C();

  v89 = 60;
  v90 = 0xE100000000000000;
  (*(v86 + 24))(&v87, v71);
  v47 = 0xEA0000000000646ELL;
  v48 = 0x756F72676B636142;
  v49 = 0xED00006465746169;
  v50 = 0x74696E4972657355;
  if (v87 != 2)
  {
    v50 = 0x65746E4972657355;
    v49 = 0xEF65766974636172;
  }

  if (v87)
  {
    v48 = 0x7974696C697455;
    v47 = 0xE700000000000000;
  }

  if (v87 <= 1u)
  {
    v51 = v48;
  }

  else
  {
    v51 = v50;
  }

  if (v87 <= 1u)
  {
    v52 = v47;
  }

  else
  {
    v52 = v49;
  }

  MEMORY[0x1DA7298F0](v51, v52);

  MEMORY[0x1DA7298F0](0x616F6C6E776F4420, 0xEB00000000203E64);
  v53 = sub_1D9176AFC();
  MEMORY[0x1DA7298F0](v53);

  v54 = v89;
  v55 = v90;
  v57 = v81;
  v56 = v82;
  v58 = *(v82 + 16);
  v59 = v83;
  v58(v81, v46, v83);
  sub_1D8D728EC(v91, &v89);
  v60 = v84;
  v58(v84, v57, v59);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB5B50, &qword_1D9191180);
  sub_1D8D728EC(&v89, &v60[v61[9]]);
  v62 = &v60[v61[10]];
  *v62 = "DOWNLOAD";
  *(v62 + 1) = 8;
  v62[16] = 2;
  v60[v61[12]] = 0;
  v87 = v54;
  v88 = v55;

  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

  v63 = v87;
  v64 = v88;
  sub_1D8D08A50(&v89, &qword_1ECAB4928, &qword_1D918B380);
  v65 = *(v56 + 8);
  v65(v57, v59);
  sub_1D8D08A50(v91, &qword_1ECAB4928, &qword_1D918B380);
  result = (v65)(v85, v59);
  v67 = &v60[v61[11]];
  *v67 = v63;
  v67[1] = v64;
  v60[v61[13]] = 0;
  return result;
}

uint64_t sub_1D8EBF30C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a3;
  v30 = a5;
  v31 = a2;
  v32 = a6;
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v28 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9176C2C();
  v27 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  (*(v11 + 16))(v13, a1, v10);
  (*(v8 + 16))(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v29, a4);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (*(v8 + 80) + v16 + 8) & ~*(v8 + 80);
  v18 = swift_allocObject();
  v19 = v30;
  *(v18 + 16) = a4;
  *(v18 + 24) = v19;
  (*(v11 + 32))(v18 + v15, v13, v27);
  v20 = v31;
  *(v18 + v16) = v31;
  (*(v8 + 32))(v18 + v17, v28, a4);
  *(v18 + ((v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BF8, &unk_1D91913E0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = v20;

  v33 = sub_1D9177A5C();
  sub_1D8CF48EC(&qword_1EDCD0AE8, &qword_1ECAB5BF8, &unk_1D91913E0);

  sub_1D9177B3C();
}

void sub_1D8EBF638(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a7;
  v34 = a4;
  v36 = a5;
  v37 = a6;
  v12 = sub_1D9176C2C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1D917653C();
  v17 = *(v35 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  (*(v13 + 16))(v16, a3, v12);

  sub_1D91764EC();
  v22 = sub_1D91764BC();
  v23 = swift_allocObject();
  v24 = v33;
  v23[2] = v33;
  v23[3] = a8;
  v23[4] = sub_1D8EC1684;
  v23[5] = v21;
  aBlock[4] = sub_1D8EC1690;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8EEC758;
  aBlock[3] = &block_descriptor_27;
  v25 = _Block_copy(aBlock);

  v26 = [v34 dataTaskWithRequest:v22 completionHandler:v25];
  _Block_release(v25);

  v27 = *(a8 + 24);
  v28 = v26;
  v27(aBlock, v24, a8);
  *&v29 = flt_1D918CD50[SLOBYTE(aBlock[0])];
  [v28 setPriority_];

  [v28 resume];
  (*(v17 + 8))(v20, v35);
  v30 = v37;
  swift_beginAccess();
  v31 = *(v30 + 16);
  *(v30 + 16) = v28;
}

void sub_1D8EBF950(uint64_t a1, unint64_t a2, int a3, id a4, void (*a5)(id, unint64_t, uint64_t))
{
  if (a2 >> 60 == 15)
  {
    if (a4)
    {
      v6 = a4;
    }

    else
    {
      type metadata accessor for ForegroundSessionSource.SourceError();
      swift_getWitnessTable();
      v9 = swift_allocError();
      a4 = 0;
      v6 = v9;
      *v10 = 1;
    }

    v11 = a4;
    a5(v6, 0, 1);
  }

  else
  {
    sub_1D8D752C4(a1, a2);
    a5(a1, a2, 0);

    sub_1D8D75668(a1, a2);
  }
}

id sub_1D8EBFA64(uint64_t a1)
{
  swift_beginAccess();
  result = *(a1 + 16);
  if (result)
  {
    return [result cancel];
  }

  return result;
}

void sub_1D8EBFAB4(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 40));
  sub_1D8EC13B4((a2 + 16));
  os_unfair_lock_unlock((a2 + 40));
}

void sub_1D8EBFB10(uint64_t *a1, const char *a2, uint64_t a3, char a4, void *a5)
{
  v10 = sub_1D917734C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v39 - v17;
  if (!*a1)
  {
    v44 = v16;
    if (qword_1EDCD1168 != -1)
    {
      swift_once();
    }

    v19 = sub_1D917739C();
    __swift_project_value_buffer(v19, qword_1EDCD1170);
    sub_1D917737C();
    sub_1D917731C();
    sub_1D8CFD9D8(a5, v46);
    v20 = sub_1D917737C();
    v43 = sub_1D9178F5C();
    if ((sub_1D917918C() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v46);
LABEL_14:
      v30 = v44;
      (*(v11 + 16))(v14, v18, v44);
      v31 = sub_1D91773FC();
      v32 = *(v31 + 48);
      v33 = *(v31 + 52);
      swift_allocObject();
      v34 = sub_1D91773EC();
      (*(v11 + 8))(v18, v30);
      v35 = a5[3];
      v36 = a5[4];
      __swift_project_boxed_opaque_existential_1(a5, v35);
      v37 = (*(v36 + 8))(v35, v36);
      *a1 = v34;
      a1[1] = v37;
      a1[2] = v38;
      return;
    }

    v40 = v20;
    v41 = a5;
    v42 = v5;
    if (a4)
    {
      if (!(a2 >> 32))
      {
        if ((a2 & 0xFFFFF800) == 0xD800)
        {
LABEL_19:
          __break(1u);
          return;
        }

        if (a2 >> 16 <= 0x10)
        {
          v39 = &v49;
          goto LABEL_13;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      if (a2)
      {
        v39 = a2;
LABEL_13:
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v45 = v22;
        *v21 = 136315138;
        v23 = v47;
        v24 = v48;
        __swift_project_boxed_opaque_existential_1(v46, v47);
        v25 = (*(v24 + 8))(v23, v24);
        v27 = sub_1D8CFA924(v25, v26, &v45);

        *(v21 + 4) = v27;
        __swift_destroy_boxed_opaque_existential_1Tm(v46);
        v28 = sub_1D917732C();
        v29 = v40;
        _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v40, v43, v28, v39, "[identifier=%{name=identifier}s] ForegroundNetworkFetch", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        MEMORY[0x1DA72CB90](v22, -1, -1);
        MEMORY[0x1DA72CB90](v21, -1, -1);

        a5 = v41;
        goto LABEL_14;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_1D8EBFE70(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, char a5)
{
  os_unfair_lock_lock((a2 + 40));
  sub_1D8EBFEE0((a2 + 16), a3, a4, a5);

  os_unfair_lock_unlock((a2 + 40));
}

void sub_1D8EBFEE0(void *a1, const char *a2, uint64_t a3, char a4)
{
  v34 = a2;
  v7 = sub_1D91773AC();
  v33 = *(v7 - 8);
  v8 = *(v33 + 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1D917734C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v27[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1)
  {
    v30 = v14;
    v31 = v13;
    v32 = v4;
    v17 = a1[2];
    v29 = a1[1];
    if (qword_1EDCD1168 != -1)
    {
      swift_once();
    }

    v18 = sub_1D917739C();
    __swift_project_value_buffer(v18, qword_1EDCD1170);

    v19 = sub_1D917737C();
    sub_1D91773DC();
    v28 = sub_1D9178F4C();
    if ((sub_1D917918C() & 1) == 0)
    {

      swift_bridgeObjectRelease_n();

LABEL_17:
      (*(v30 + 8))(v16, v31);
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return;
    }

    if (a4)
    {
      if (!(v34 >> 32))
      {
        v20 = v33;
        if ((v34 & 0xFFFFF800) == 0xD800)
        {
LABEL_22:
          __break(1u);
          return;
        }

        if (v34 >> 16 <= 0x10)
        {

          v34 = &v35;
          goto LABEL_13;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {

      if (v34)
      {
        v20 = v33;
LABEL_13:

        sub_1D917740C();

        if ((*(v20 + 11))(v10, v7) == *MEMORY[0x1E69E93E8])
        {
          v21 = 0;
          v22 = 0;
          v33 = "[Error] Interval already ended";
        }

        else
        {
          (*(v20 + 1))(v10, v7);
          v33 = "[identifier=%{name=identifier}s] SUCCESS";
          v22 = 2;
          v21 = 1;
        }

        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v35 = v24;
        *v23 = v22;
        *(v23 + 1) = v21;
        *(v23 + 2) = 2080;

        v25 = sub_1D8CFA924(v29, v17, &v35);

        *(v23 + 4) = v25;
        v26 = sub_1D917732C();
        _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v19, v28, v26, v34, v33, v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        MEMORY[0x1DA72CB90](v24, -1, -1);
        MEMORY[0x1DA72CB90](v23, -1, -1);

        goto LABEL_17;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }
}

void sub_1D8EC02CC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  os_unfair_lock_lock((a2 + 40));
  sub_1D8EC1390((a2 + 16));
  os_unfair_lock_unlock((a2 + 40));
}

void sub_1D8EC032C(void *a1, uint64_t a2, const char *a3, uint64_t a4, unsigned __int8 a5)
{
  v54 = a3;
  v8 = sub_1D91773AC();
  v53 = *(v8 - 8);
  v9 = *(v53 + 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v47[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47[-v13];
  v15 = sub_1D917734C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v47[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v47[-v22];
  if (*a1)
  {
    v51 = v21;
    v52 = v20;
    v50 = a5;
    v24 = a1[2];
    v49 = a1[1];
    v25 = qword_1EDCD1168 == -1;
    if (!a2)
    {
      goto LABEL_9;
    }

    if (qword_1EDCD1168 != -1)
    {
      swift_once();
    }

    v26 = sub_1D917739C();
    __swift_project_value_buffer(v26, qword_1EDCD1170);

    v23 = sub_1D917737C();
    sub_1D91773DC();
    v14 = sub_1D9178F4C();
    if ((sub_1D917918C() & 1) == 0)
    {
      goto LABEL_15;
    }

    if ((v50 & 1) == 0)
    {

      v27 = v53;
      if (!v54)
      {
        __break(1u);
LABEL_9:
        if (!v25)
        {
          swift_once();
        }

        v28 = sub_1D917739C();
        __swift_project_value_buffer(v28, qword_1EDCD1170);

        v18 = sub_1D917737C();
        sub_1D91773DC();
        v29 = sub_1D9178F4C();
        if ((sub_1D917918C() & 1) == 0)
        {

          swift_bridgeObjectRelease_n();

LABEL_34:
          (*(v51 + 8))(v23, v52);
          goto LABEL_35;
        }

        if ((v50 & 1) == 0)
        {

          v30 = v53;
          if (!v54)
          {
            __break(1u);
LABEL_15:

            swift_bridgeObjectRelease_n();

LABEL_25:
            (*(v51 + 8))(v18, v52);
LABEL_35:
            *a1 = 0;
            a1[1] = 0;
            a1[2] = 0;
            return;
          }

          goto LABEL_30;
        }

        v30 = v53;
        if (!(v54 >> 32))
        {
          if ((v54 & 0xFFFFF800) == 0xD800)
          {
LABEL_42:
            __break(1u);
            return;
          }

          if (v54 >> 16 <= 0x10)
          {

            v54 = &v55;
LABEL_30:

            sub_1D917740C();

            v39 = (*(v30 + 11))(v14, v8);
            v40 = *MEMORY[0x1E69E93E8];
            v48 = v29;
            if (v39 == v40)
            {
              v41 = 0;
              v42 = 0;
              v53 = "[Error] Interval already ended";
            }

            else
            {
              (*(v30 + 1))(v14, v8);
              v53 = "[identifier=%{name=identifier}s] EMPTY";
              v42 = 2;
              v41 = 1;
            }

            v43 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            v55 = v44;
            *v43 = v42;
            *(v43 + 1) = v41;
            *(v43 + 2) = 2080;

            v45 = sub_1D8CFA924(v49, v24, &v55);

            *(v43 + 4) = v45;
            v46 = sub_1D917732C();
            _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v18, v48, v46, v54, v53, v43, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v44);
            MEMORY[0x1DA72CB90](v44, -1, -1);
            MEMORY[0x1DA72CB90](v43, -1, -1);

            goto LABEL_34;
          }

          goto LABEL_40;
        }

LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

LABEL_21:

      sub_1D917740C();

      v31 = (*(v27 + 11))(v11, v8);
      v32 = *MEMORY[0x1E69E93E8];
      v48 = v14;
      if (v31 == v32)
      {
        v33 = 0;
        v34 = 0;
        v53 = "[Error] Interval already ended";
      }

      else
      {
        (*(v27 + 1))(v11, v8);
        v53 = "[identifier=%{name=identifier}s] FAILURE";
        v34 = 2;
        v33 = 1;
      }

      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v55 = v36;
      *v35 = v34;
      *(v35 + 1) = v33;
      *(v35 + 2) = 2080;

      v37 = sub_1D8CFA924(v49, v24, &v55);

      *(v35 + 4) = v37;
      v38 = sub_1D917732C();
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v23, v48, v38, v54, v53, v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x1DA72CB90](v36, -1, -1);
      MEMORY[0x1DA72CB90](v35, -1, -1);

      goto LABEL_25;
    }

    v27 = v53;
    if (v54 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v54 & 0xFFFFF800) == 0xD800)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (v54 >> 16 <= 0x10)
      {

        v54 = &v55;
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_39;
  }
}

void sub_1D8EC09C8(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  os_unfair_lock_lock((a1 + 40));
  sub_1D8EC0A38((a1 + 16), a2, a3, a4);

  os_unfair_lock_unlock((a1 + 40));
}

void sub_1D8EC0A38(void *a1, const char *a2, uint64_t a3, char a4)
{
  v34 = a2;
  v7 = sub_1D91773AC();
  v33 = *(v7 - 8);
  v8 = *(v33 + 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1D917734C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v27[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1)
  {
    v30 = v14;
    v31 = v13;
    v32 = v4;
    v17 = a1[2];
    v29 = a1[1];
    if (qword_1EDCD1168 != -1)
    {
      swift_once();
    }

    v18 = sub_1D917739C();
    __swift_project_value_buffer(v18, qword_1EDCD1170);

    v19 = sub_1D917737C();
    sub_1D91773DC();
    v28 = sub_1D9178F4C();
    if ((sub_1D917918C() & 1) == 0)
    {

      swift_bridgeObjectRelease_n();

LABEL_17:
      (*(v30 + 8))(v16, v31);
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return;
    }

    if (a4)
    {
      if (!(v34 >> 32))
      {
        v20 = v33;
        if ((v34 & 0xFFFFF800) == 0xD800)
        {
LABEL_22:
          __break(1u);
          return;
        }

        if (v34 >> 16 <= 0x10)
        {

          v34 = &v35;
          goto LABEL_13;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {

      if (v34)
      {
        v20 = v33;
LABEL_13:

        sub_1D917740C();

        if ((*(v20 + 11))(v10, v7) == *MEMORY[0x1E69E93E8])
        {
          v21 = 0;
          v22 = 0;
          v33 = "[Error] Interval already ended";
        }

        else
        {
          (*(v20 + 1))(v10, v7);
          v33 = "[identifier=%{name=identifier}s] CANCEL";
          v22 = 2;
          v21 = 1;
        }

        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v35 = v24;
        *v23 = v22;
        *(v23 + 1) = v21;
        *(v23 + 2) = 2080;

        v25 = sub_1D8CFA924(v29, v17, &v35);

        *(v23 + 4) = v25;
        v26 = sub_1D917732C();
        _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v19, v28, v26, v34, v33, v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        MEMORY[0x1DA72CB90](v24, -1, -1);
        MEMORY[0x1DA72CB90](v23, -1, -1);

        goto LABEL_17;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }
}

uint64_t sub_1D8EC0E84(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  Trace.emit(event:)("DECODE", 6, 2, v10, v11);
  (*(*(a5 + 8) + 40))(v8, v9, a4);
  v12 = a2[3];
  v13 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v12);
  if (!v15)
  {
    return Trace.emit(event:)("DECODED", 7, 2, v12, v13);
  }

  Trace.emit(event:)("DECODE-FAILED", 13, 2, v12, v13);
  return swift_willThrow();
}

uint64_t ForegroundSessionSource.SourceError.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8EC1070(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1D9179DBC();
  a4(v6);
  return sub_1D9179E1C();
}

uint64_t sub_1D8EC10D4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v4 = (*(*(*(v3 + 16) - 8) + 80) + 32) & ~*(*(*(v3 + 16) - 8) + 80);
  v5 = (*(*(*(v3 + 16) - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D8EBEAAC(a1, a2, v3 + v4, *(v3 + v5), *(v3 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v3 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16), v3 + ((v5 + 39) & 0xFFFFFFFFFFFFFFF8), a3, *(v3 + 16), *(v3 + 24));
}

uint64_t sub_1D8EC117C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BD8, &qword_1D91913C0);
  return v4(a1, *(a1 + *(v5 + 48)));
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_1D8EC13D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(sub_1D9176C2C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v7);
  v9 = v1 + ((v7 + *(*(v3 - 8) + 80) + 8) & ~*(*(v3 - 8) + 80));

  return sub_1D8EBF30C(v1 + v6, v8, v9, v3, v4, a1);
}

void sub_1D8EC14C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  os_unfair_lock_lock((v1 + 40));
  sub_1D8EC13B4((v1 + 16));
  os_unfair_lock_unlock((v1 + 40));
}

void sub_1D8EC1538(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  sub_1D8EC02CC(a1, *(v1 + 16));
}

void sub_1D8EC1558(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(sub_1D9176C2C() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + *(*(v5 - 8) + 80) + 8) & ~*(*(v5 - 8) + 80);
  v11 = *(v2 + v9);
  v12 = *(v2 + ((*(*(v5 - 8) + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1D8EBF638(a1, a2, v2 + v8, v11, v2 + v10, v12, v5, v6);
}

void sub_1D8EC1690(uint64_t a1, unint64_t a2, int a3, void *a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(v4 + 40);
  sub_1D8EBF950(a1, a2, a3, a4, *(v4 + 32));
}

void sub_1D8EC169C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 48);
  sub_1D8EBDA48(*(v0 + 32), *(v0 + 40));
}

uint64_t sub_1D8EC16AC(_BYTE *a1)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      if (qword_1ECAB1378 != -1)
      {
        swift_once();
      }

      v1 = &qword_1ECAB1380;
    }

    else
    {
      if (qword_1ECAB34B0 != -1)
      {
        swift_once();
      }

      v1 = &qword_1ECAB5B20;
    }
  }

  else
  {
    if (qword_1EDCD6008 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDCD6010;
  }

  return *v1;
}

uint64_t NeverSessionSource.fetch(asset:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  type metadata accessor for NeverSessionSource.NeverFetchError();
  swift_getWitnessTable();
  swift_allocError();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  return sub_1D917799C();
}

uint64_t NeverSessionSource.NeverFetchError.hashValue.getter()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](0);
  return sub_1D9179E1C();
}

Swift::Void __swiftcall EpisodeDownloadsRemover.removeDownloadedEpisode(uuid:)(Swift::String uuid)
{
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v1 removeDownloadedEpisodeWithUuid:v2 completion:0];
}

uint64_t sub_1D8EC19E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D08, &unk_1D9191530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8EC1A5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D08, &unk_1D9191530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id ShazamSignatureBackgroundSessionDescriptor.create(session:delegate:)(void *a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_1D8EC2984(a1, a2);
}

uint64_t ShazamSignatureBackgroundSessionDescriptor.load(data:)(uint64_t a1)
{
  v37 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5270, &unk_1D918EA40);
  v46 = *(v1 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v36 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v36 - v7;
  v9 = sub_1D9176C2C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5278, &unk_1D918EA50);
  v38 = *(v14 - 8);
  v15 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5280, &qword_1D9191540);
  v40 = *(v18 - 8);
  v41 = v18;
  v19 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v36 - v20;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D10, &qword_1D9191548);
  v43 = *(v45 - 8);
  v22 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v39 = &v36 - v23;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D18, &qword_1D9191550);
  v42 = *(v44 - 8);
  v24 = *(v42 + 64);
  v25 = MEMORY[0x1EEE9AC00](v44);
  v27 = &v36 - v26;
  (*(v10 + 16))(v13, v37, v9, v25);
  sub_1D9177A0C();
  if (qword_1ECAAFD88 != -1)
  {
    swift_once();
  }

  v28 = qword_1ECAAFD90;
  v29 = sub_1D9178DBC();
  (*(*(v29 - 8) + 56))(v8, 1, 1, v29);
  v47 = v28;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1EDCD0B10, &qword_1ECAB5278, &unk_1D918EA50);
  sub_1D8D02DF0();
  sub_1D9177D3C();
  sub_1D8CF48EC(&unk_1ECAB0A48, &qword_1ECAB5270, &unk_1D918EA40);
  sub_1D9177CEC();
  (*(v46 + 8))(v4, v1);
  sub_1D8D2210C(v8);
  (*(v38 + 8))(v17, v14);
  sub_1D8CF2154(0, &qword_1ECAAFE30, 0x1E697B7D0);
  sub_1D8CF48EC(&unk_1ECAB0470, &qword_1ECAB5280, &qword_1D9191540);
  v30 = v39;
  v31 = v41;
  sub_1D9177C6C();
  (*(v40 + 8))(v21, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D20, &unk_1D9191558);
  sub_1D8CF48EC(&qword_1ECAB0658, &qword_1ECAB5D10, &qword_1D9191548);
  sub_1D8CF48EC(&unk_1ECAB0288, &qword_1ECAB5D20, &unk_1D9191558);
  v32 = v45;
  sub_1D9177BDC();
  (*(v43 + 8))(v30, v32);
  sub_1D8CF48EC(&qword_1ECAB06D8, &qword_1ECAB5D18, &qword_1D9191550);
  v33 = v44;
  v34 = sub_1D9177B1C();
  (*(v42 + 8))(v27, v33);
  return v34;
}

uint64_t sub_1D8EC2240@<X0>(void *a1@<X8>)
{
  result = sub_1D9176C3C();
  if (!v1)
  {
    v5 = result;
    v6 = v4;
    v7 = objc_allocWithZone(MEMORY[0x1E697B7D0]);
    v8 = sub_1D8ECEE54();
    result = sub_1D8D7567C(v5, v6);
    *a1 = v8;
  }

  return result;
}

uint64_t sub_1D8EC22CC(void **a1)
{
  v1 = *a1;
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v2 = sub_1D917744C();
  __swift_project_value_buffer(v2, qword_1EDCD0F20);
  v3 = v1;
  v4 = sub_1D917741C();
  v5 = sub_1D9178CFC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    v9 = sub_1D917826C();
    v11 = sub_1D8CFA924(v9, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1D8CEC000, v4, v5, "Received background wakeup for non-signature (or malformed) content from shazamsignature session; error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1DA72CB90](v7, -1, -1);
    MEMORY[0x1DA72CB90](v6, -1, -1);
  }

  sub_1D8CF2154(0, &qword_1ECAAFE30, 0x1E697B7D0);
  return sub_1D9177A1C();
}

uint64_t ShazamSignatureBackgroundSessionDescriptor.stash(asset:for:)(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5890, &unk_1D9190BB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D28, &qword_1D9191568);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - v13;
  v15 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D08, &unk_1D9191530) + 60);
  v16 = *(v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D30, &unk_1D9191570) + 72));
  sub_1D8E48268(a1, a2);
  sub_1D9177A0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D91779DC();
  (*(v6 + 8))(v9, v5);
  sub_1D8CF48EC(&qword_1ECAAFBA0, &qword_1ECAB5D28, &qword_1D9191568);
  v17 = sub_1D9177B1C();
  (*(v11 + 8))(v14, v10);
  return v17;
}

id sub_1D8EC26CC(void *a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_1D8EC2984(a1, a2);
}

uint64_t sub_1D8EC2738(void **a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5890, &unk_1D9190BB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D28, &qword_1D9191568);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *a1;
  v16 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D08, &unk_1D9191530) + 60);
  v17 = *(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D30, &unk_1D9191570) + 72));
  sub_1D8E48268(v15, a2);
  sub_1D9177A0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D91779DC();
  (*(v6 + 8))(v9, v5);
  sub_1D8CF48EC(&qword_1ECAAFBA0, &qword_1ECAB5D28, &qword_1D9191568);
  v18 = sub_1D9177B1C();
  (*(v11 + 8))(v14, v10);
  return v18;
}

id sub_1D8EC2984(void *a1, uint64_t a2)
{
  [a1 setSessionSendsLaunchEvents_];
  [a1 setDiscretionary_];
  [a1 setSharedContainerIdentifier_];
  v4 = [objc_opt_self() sessionWithConfiguration:a1 delegate:a2 delegateQueue:0];

  return v4;
}

uint64_t sub_1D8EC2A54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D38, &qword_1D9191600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8EC2ACC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D38, &qword_1D9191600);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id TranscriptsBackgroundSessionDescriptor.create(session:delegate:)(void *a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_1D8EC2984(a1, a2);
}

uint64_t TranscriptsBackgroundSessionDescriptor.load(data:)(uint64_t a1)
{
  v36 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5270, &unk_1D918EA40);
  v45 = *(v1 - 8);
  v2 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v35 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v35 - v7;
  v9 = sub_1D9176C2C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5278, &unk_1D918EA50);
  v37 = *(v14 - 8);
  v15 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v35 - v16;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5280, &qword_1D9191540);
  v38 = *(v40 - 8);
  v18 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v20 = &v35 - v19;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D40, &qword_1D9191608);
  v42 = *(v44 - 8);
  v21 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v39 = &v35 - v22;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D48, &qword_1D9191610);
  v41 = *(v43 - 8);
  v23 = *(v41 + 64);
  v24 = MEMORY[0x1EEE9AC00](v43);
  v26 = &v35 - v25;
  (*(v10 + 16))(v13, v36, v9, v24);
  sub_1D9177A0C();
  if (qword_1ECAAFD88 != -1)
  {
    swift_once();
  }

  v27 = qword_1ECAAFD90;
  v28 = sub_1D9178DBC();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);
  v46 = v27;
  sub_1D8CFD888();
  sub_1D8CF48EC(&qword_1EDCD0B10, &qword_1ECAB5278, &unk_1D918EA50);
  sub_1D8D6456C(&qword_1EDCD0980, sub_1D8CFD888);
  sub_1D9177D3C();
  sub_1D8CF48EC(&unk_1ECAB0A48, &qword_1ECAB5270, &unk_1D918EA40);
  sub_1D9177CEC();
  (*(v45 + 8))(v4, v1);
  sub_1D8D2210C(v8);
  (*(v37 + 8))(v17, v14);
  sub_1D8CF48EC(&unk_1ECAB0470, &qword_1ECAB5280, &qword_1D9191540);
  v30 = v39;
  v29 = v40;
  sub_1D9177C6C();
  (*(v38 + 8))(v20, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D50, &qword_1D9191618);
  sub_1D8CF48EC(&qword_1ECAB0668, &qword_1ECAB5D40, &qword_1D9191608);
  sub_1D8CF48EC(&qword_1ECAB02A0, &qword_1ECAB5D50, &qword_1D9191618);
  v31 = v44;
  sub_1D9177BDC();
  (*(v42 + 8))(v30, v31);
  sub_1D8CF48EC(&qword_1ECAB06E0, &qword_1ECAB5D48, &qword_1D9191610);
  v32 = v43;
  v33 = sub_1D9177B1C();
  (*(v41 + 8))(v26, v32);
  return v33;
}

uint64_t sub_1D8EC32B8@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D9176C3C();
  if (!v1)
  {
    v5 = a1;
    v6 = result;
    v7 = v4;
    TranscriptParser.parse(ttmlData:)(result, v4, v5);
    return sub_1D8D7567C(v6, v7);
  }

  return result;
}

uint64_t sub_1D8EC3310(void **a1)
{
  v1 = *a1;
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v2 = sub_1D917744C();
  __swift_project_value_buffer(v2, qword_1EDCD0F20);
  v3 = v1;
  v4 = sub_1D917741C();
  v5 = sub_1D9178CFC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    v9 = sub_1D917826C();
    v11 = sub_1D8CFA924(v9, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1D8CEC000, v4, v5, "Received background wakeup for non-transcript (or malformed) content from transcript session; error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1DA72CB90](v7, -1, -1);
    MEMORY[0x1DA72CB90](v6, -1, -1);
  }

  return sub_1D9177A1C();
}

uint64_t TranscriptsBackgroundSessionDescriptor.stash(asset:for:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5890, &unk_1D9190BB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D28, &qword_1D9191568);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v20 - v13;
  v15 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v15;
  v20[2] = *(a1 + 32);
  v21 = *(a1 + 48);
  v16 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D38, &qword_1D9191600) + 60);
  v17 = *(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D58, &unk_1D9191620) + 72));
  sub_1D8E47CB8(v20, a2);
  sub_1D9177A0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D91779DC();
  (*(v6 + 8))(v9, v5);
  sub_1D8CF48EC(&qword_1ECAAFBA0, &qword_1ECAB5D28, &qword_1D9191568);
  v18 = sub_1D9177B1C();
  (*(v11 + 8))(v14, v10);
  return v18;
}

uint64_t sub_1D8EC3730(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5890, &unk_1D9190BB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D28, &qword_1D9191568);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v20 - v13;
  v15 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v15;
  v20[2] = *(a1 + 32);
  v21 = *(a1 + 48);
  v16 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D38, &qword_1D9191600) + 60);
  v17 = *(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D58, &unk_1D9191620) + 72));
  sub_1D8E47CB8(v20, a2);
  sub_1D9177A0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D91779DC();
  (*(v6 + 8))(v9, v5);
  sub_1D8CF48EC(&qword_1ECAAFBA0, &qword_1ECAB5D28, &qword_1D9191568);
  v18 = sub_1D9177B1C();
  (*(v11 + 8))(v14, v10);
  return v18;
}

uint64_t BundleAssetTranscriptProvider.ttmlFileName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t BundleAssetTranscriptProvider.signatureFileName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void __swiftcall BundleAssetTranscriptProvider.init(ttmlFileName:signatureFileName:bundle:)(PodcastsFoundation::BundleAssetTranscriptProvider *__return_ptr retstr, Swift::String ttmlFileName, Swift::String signatureFileName, NSBundle bundle)
{
  retstr->ttmlFileName = ttmlFileName;
  retstr->signatureFileName = signatureFileName;
  retstr->bundle = bundle;
}

uint64_t BundleAssetTranscriptProvider.transcript(for:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D60, &qword_1D91916B0);
  v2 = *(v1 - 8);
  v80 = v1;
  v81 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v79 = v59 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D68, &qword_1D91916B8);
  v6 = *(v5 - 8);
  v75 = v5;
  v76 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v70 = v59 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D70, &qword_1D91916C0);
  v10 = *(v9 - 8);
  v77 = v9;
  v78 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v72 = v59 - v12;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D78, &qword_1D91916C8);
  v68 = *(v67 - 8);
  v13 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v66 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v64 = v59 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D80, &qword_1D91916D0);
  v18 = *(v17 - 8);
  v73 = v17;
  v74 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v65 = v59 - v20;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D88, &qword_1D91916D8);
  v62 = *(v61 - 8);
  v21 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v60 = v59 - v22;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D90, &qword_1D91916E0);
  v71 = *(v63 - 8);
  v23 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v84 = v59 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D98, &qword_1D91916E8);
  v85 = *(v25 - 8);
  v26 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v59 - v27;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5DA0, &qword_1D91916F0);
  v69 = *(v83 - 8);
  v29 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v82 = v59 - v30;
  v31 = v0[1];
  v34 = v0[2];
  v33 = v0[3];
  v35 = v0[4];
  v86 = *v0;
  v32 = v86;
  v87 = v31;
  v88 = v34;
  v89 = v33;
  v90 = v35;
  sub_1D8EC44FC(v86, v31, 1819112564, 0xE400000000000000, v28);
  v59[1] = MEMORY[0x1E695BE28];
  sub_1D8CF48EC(&qword_1ECAB5DA8, &qword_1ECAB5D98, &qword_1D91916E8);
  sub_1D9177C6C();
  v36 = *(v85 + 8);
  v85 += 8;
  v36(v28, v25);
  v86 = v32;
  v87 = v31;
  v88 = v34;
  v89 = v33;
  v90 = v35;
  sub_1D8EC44FC(v34, v33, 0x727574616E676973, 0xE900000000000065, v28);
  sub_1D8CF2154(0, &qword_1ECAAFE30, 0x1E697B7D0);
  v37 = v60;
  sub_1D9177C6C();
  v36(v28, v25);
  sub_1D8CF2154(0, &qword_1ECAB5DB0, 0x1E697B788);
  v38 = v61;
  sub_1D91776EC();
  (*(v62 + 8))(v37, v38);
  v39 = v64;
  sub_1D91776FC();
  v40 = swift_allocObject();
  *(v40 + 16) = sub_1D8EC4B20;
  *(v40 + 24) = 0;
  v41 = v66;
  v42 = v63;
  sub_1D91776FC();

  sub_1D8CF48EC(&qword_1ECAB5DB8, &qword_1ECAB5D78, &qword_1D91916C8);
  v43 = v65;
  v44 = v41;
  v45 = v67;
  sub_1D9177BFC();
  v46 = *(v68 + 8);
  v46(v44, v45);
  v46(v39, v45);
  sub_1D8CF48EC(&qword_1ECAB5DC0, &qword_1ECAB5D90, &qword_1D91916E0);
  sub_1D8CF48EC(&qword_1ECAB5DC8, &qword_1ECAB5DA0, &qword_1D91916F0);
  v47 = v70;
  v48 = v84;
  sub_1D9177B5C();
  v49 = swift_allocObject();
  *(v49 + 16) = sub_1D8EC4BE0;
  *(v49 + 24) = 0;
  sub_1D8CF48EC(&qword_1ECAB5DD0, &qword_1ECAB5D68, &qword_1D91916B8);
  v50 = v72;
  v51 = v75;
  sub_1D9177B9C();

  (*(v76 + 8))(v47, v51);
  sub_1D8CF48EC(&qword_1ECAB5DD8, &qword_1ECAB5D80, &qword_1D91916D0);
  sub_1D8CF48EC(&qword_1ECAB5DE0, &qword_1ECAB5D70, &qword_1D91916C0);
  v52 = v79;
  v53 = v50;
  v54 = v73;
  v55 = v77;
  sub_1D9177BEC();
  sub_1D8CF48EC(&qword_1ECAB5DE8, &qword_1ECAB5D60, &qword_1D91916B0);
  v56 = v80;
  v57 = sub_1D9177B1C();
  (*(v81 + 8))(v52, v56);
  (*(v78 + 8))(v53, v55);
  (*(v74 + 8))(v43, v54);
  (*(v71 + 8))(v48, v42);
  (*(v69 + 8))(v82, v83);
  return v57;
}

uint64_t sub_1D8EC44FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E00, &unk_1D9191810);
  v35 = *(v10 - 8);
  v36 = v10;
  v11 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v34 - v16;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E08, &qword_1D9191820);
  v18 = *(v34 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v21 = &v34 - v20;
  v22 = *(v5 + 16);
  v40[0] = *v5;
  v40[1] = v22;
  v41 = *(v5 + 32);
  v23 = swift_allocObject();
  v24 = *(v5 + 16);
  *(v23 + 16) = *v5;
  *(v23 + 32) = v24;
  *(v23 + 48) = *(v5 + 32);
  *(v23 + 56) = a1;
  *(v23 + 64) = a2;
  *(v23 + 72) = a3;
  *(v23 + 80) = a4;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E10, &qword_1D9191828);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  sub_1D8EC51A8(v40, v39);

  v28 = sub_1D9177A5C();
  if (qword_1ECAAFD88 != -1)
  {
    swift_once();
  }

  v29 = qword_1ECAAFD90;
  v30 = sub_1D9178DBC();
  (*(*(v30 - 8) + 56))(v17, 1, 1, v30);
  v38 = v28;
  v39[0] = v29;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1ECAB5E18, &qword_1ECAB5E10, &qword_1D9191828);
  sub_1D8D02DF0();
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB5E20, &qword_1ECAB5E00, &unk_1D9191810);
  v31 = v36;
  sub_1D9177CEC();

  (*(v35 + 8))(v13, v31);
  sub_1D8D08A50(v17, &qword_1ECAB4D70, &unk_1D918BCE0);
  sub_1D8CF48EC(&qword_1ECAB5E28, &qword_1ECAB5E08, &qword_1D9191820);
  v32 = v34;
  sub_1D9177C6C();
  return (*(v18 + 8))(v21, v32);
}

uint64_t sub_1D8EC496C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = objc_allocWithZone(MEMORY[0x1E697B7D0]);
  sub_1D8D752C4(v4, v5);
  v7 = sub_1D8ECEE54();
  result = sub_1D8D7567C(v4, v5);
  if (!v2)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t sub_1D8EC49F0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189070;
  *(inited + 32) = v4;
  v6 = v4;
  v7 = sub_1D8ECF6A0(inited);
  swift_setDeallocating();
  v8 = *(inited + 16);
  result = swift_arrayDestroy();
  if (!v2)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t sub_1D8EC4AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 24) = v4;
  *(a2 + 32) = v3;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  *(a2 + 64) = 1;
  sub_1D8D752C4(v4, v3);
}

id sub_1D8EC4B20@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 64) = 0;
  return a1;
}

uint64_t sub_1D8EC4B2C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1D8EC4B58@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v3 = *(a2 + 16);
  *a3 = a1;
  *(a3 + 8) = *a2;
  *(a3 + 24) = v3;
  *(a3 + 32) = v4;
  *(a3 + 40) = v5;
  *(a3 + 48) = v6;
  *(a3 + 56) = v7;
  *(a3 + 64) = 2;
  v8 = a1;
  sub_1D8D752C4(v4, v5);
}

uint64_t sub_1D8EC4BE4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1 + 1);
}

uint64_t BundleAssetTranscriptProvider.prefetch(request:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5DF0, &qword_1D91916F8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - v3;
  sub_1D9177A1C();
  sub_1D8CF48EC(&qword_1ECAB5DF8, &qword_1ECAB5DF0, &qword_1D91916F8);
  v5 = sub_1D9177D9C();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_1D8EC4D68(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a7;
  v31 = a2;
  v32 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E30, &unk_1D9191830);
  v10 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v12 = (&v27 - v11);
  v13 = sub_1D9176C2C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v27 - v19;
  v21 = *(a3 + 32);
  v28 = a4;
  v22 = a5;
  v23 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v24 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v25 = [v21 URLForResource:v23 withExtension:v24];

  if (v25)
  {
    sub_1D9176B9C();

    (*(v14 + 32))(v20, v17, v13);
    (*(v14 + 16))(v12, v20, v13);
    swift_storeEnumTagMultiPayload();
    v32(v12);
    sub_1D8D08A50(v12, &qword_1ECAB5E30, &unk_1D9191830);
    return (*(v14 + 8))(v20, v13);
  }

  else
  {
    *v12 = v28;
    v12[1] = v22;
    swift_storeEnumTagMultiPayload();

    v32(v12);
    return sub_1D8D08A50(v12, &qword_1ECAB5E30, &unk_1D9191830);
  }
}

uint64_t sub_1D8EC4FF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D9176C3C();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_1D8EC5028()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5DF0, &qword_1D91916F8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - v3;
  sub_1D9177A1C();
  sub_1D8CF48EC(&qword_1ECAB5DF8, &qword_1ECAB5DF0, &qword_1D91916F8);
  v5 = sub_1D9177D9C();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t KCUTranscriptProvider.bearerToken.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t KCUTranscriptProvider.init(bearerToken:basePath:kcuTranscriptPath:kcuSignaturePath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  v14 = type metadata accessor for KCUTranscriptProvider();
  v15 = v14[7];
  v16 = sub_1D9176C2C();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&a8[v15], a3, v16);
  v18 = &a8[v14[8]];
  *v18 = a4;
  *(v18 + 1) = a5;
  v19 = &a8[v14[9]];
  *v19 = a6;
  *(v19 + 1) = a7;
  *(a8 + 2) = [objc_opt_self() sharedSession];
  v20 = sub_1D8D68E84(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E38, &qword_1D9191840);
  v21 = swift_allocObject();
  *(v21 + 24) = 0;
  v22 = *(v17 + 8);

  v22(a3, v16);
  *(v21 + 16) = v20;

  *(a8 + 3) = v21;
  return result;
}

uint64_t type metadata accessor for KCUTranscriptProvider()
{
  result = qword_1ECAB5ED8;
  if (!qword_1ECAB5ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t KCUTranscriptProvider.prefetch(request:)()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 24));
  sub_1D8EC8484((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

uint64_t sub_1D8EC5420@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v60 = a4;
  v59 = a1;
  v6 = type metadata accessor for KCUTranscriptProvider();
  v52 = *(v6 - 8);
  v7 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v53 = v8;
  v58 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F08, &unk_1D9191980);
  v47 = *(v48 - 8);
  v9 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v11 = &v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F10, &qword_1D9192640);
  v55 = *(v16 - 8);
  v56 = v16;
  v17 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v50 = &v44 - v18;
  v57 = sub_1D9176EAC();
  v19 = *(v57 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v45 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v49 = &v44 - v23;
  sub_1D9176E9C();
  v51 = a3;
  v54 = a2;
  v24 = KCUTranscriptProvider.transcript(for:)(a3);
  if (qword_1EDCD0990 != -1)
  {
    swift_once();
  }

  v25 = qword_1EDCD0998;
  v26 = sub_1D9178DBC();
  (*(*(v26 - 8) + 56))(v15, 1, 1, v26);
  *&v61[0] = v25;
  v63 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F18, &unk_1D9191990);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1ECAB0380, &qword_1ECAB5F18, &unk_1D9191990);
  sub_1D8D02DF0();
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A80, &qword_1ECAB5F08, &unk_1D9191980);
  v27 = v50;
  v28 = v48;
  sub_1D9177CEC();

  (*(v47 + 8))(v11, v28);
  sub_1D8D08A50(v15, &qword_1ECAB4D70, &unk_1D918BCE0);
  sub_1D8EC8C5C(v51, v61);
  v29 = v58;
  sub_1D8EC84A0(v54, v58);
  v30 = v45;
  v31 = v49;
  v32 = v57;
  (*(v19 + 16))(v45, v49, v57);
  v33 = (*(v52 + 80) + 88) & ~*(v52 + 80);
  v34 = (v53 + *(v19 + 80) + v33) & ~*(v19 + 80);
  v35 = swift_allocObject();
  v36 = v61[3];
  *(v35 + 48) = v61[2];
  *(v35 + 64) = v36;
  *(v35 + 80) = v62;
  v37 = v61[1];
  *(v35 + 16) = v61[0];
  *(v35 + 32) = v37;
  sub_1D8EC8504(v29, v35 + v33);
  (*(v19 + 32))(v35 + v34, v30, v32);
  sub_1D8CF48EC(&qword_1ECAB04A8, &qword_1ECAB5F10, &qword_1D9192640);
  v38 = v56;
  v39 = sub_1D9177BCC();

  (*(v55 + 8))(v27, v38);

  v40 = v59;
  v41 = *v59;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v61[0] = *v40;
  sub_1D8F4FA5C(v39, v31, isUniquelyReferenced_nonNull_native);
  *v40 = *&v61[0];
  result = (*(v19 + 8))(v31, v32);
  *v60 = v39;
  return result;
}

uint64_t KCUTranscriptProvider.transcript(for:)(uint64_t *a1)
{
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E40, &qword_1D9191848);
  v149 = *(v151 - 8);
  v2 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v151);
  v148 = &v119 - v3;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E48, &qword_1D9191850);
  v156 = *(v158 - 8);
  v4 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v158);
  v152 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v150 = &v119 - v7;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E50, &qword_1D9191858);
  v8 = *(*(v155 - 8) + 64);
  MEMORY[0x1EEE9AC00](v155);
  v154 = &v119 - v9;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E58, &qword_1D9191860);
  v157 = *(v159 - 8);
  v10 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v153 = &v119 - v11;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E60, &qword_1D9191868);
  v144 = *(v146 - 8);
  v12 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v146);
  v143 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v142 = &v119 - v15;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E68, &qword_1D9191870);
  v16 = *(*(v145 - 8) + 64);
  MEMORY[0x1EEE9AC00](v145);
  v147 = &v119 - v17;
  v18 = type metadata accessor for KCUTranscriptProvider();
  v136 = *(v18 - 8);
  v19 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v167 = v20;
  v164 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E70, &unk_1D9191878);
  v174 = *(v163 - 8);
  v21 = *(v174 + 64);
  MEMORY[0x1EEE9AC00](v163);
  v141 = &v119 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v139 = &v119 - v25;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E78, &qword_1D9191888);
  v26 = *(*(v161 - 8) + 64);
  MEMORY[0x1EEE9AC00](v161);
  v160 = &v119 - v27;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E80, &qword_1D9191890);
  v175 = *(v165 - 8);
  v28 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v165);
  v162 = &v119 - v29;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E88, &qword_1D9191898);
  v134 = *(v137 - 8);
  v30 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v135 = &v119 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v133 = &v119 - v33;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E90, &unk_1D91918A0);
  v34 = *(*(v166 - 8) + 64);
  MEMORY[0x1EEE9AC00](v166);
  v176 = &v119 - v35;
  v36 = sub_1D9176C2C();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v119 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v119 - v42;
  v44 = *(v18 + 28);
  v177 = *a1;
  sub_1D8E40D20();
  sub_1D917927C();
  v45 = v173;
  v46 = v160;
  sub_1D9176B3C();

  v140 = v18;
  v47 = (v45 + *(v18 + 32));
  v48 = *v47;
  v49 = v47[1];
  v169 = v43;
  sub_1D9176B3C();
  v172 = a1;
  sub_1D8EC70DC(v40, a1, v46);
  v50 = *(v37 + 8);
  v132 = v40;
  v170 = v37 + 8;
  v171 = v36;
  v168 = v50;
  v50(v40, v36);
  if (qword_1EDCD5B20 != -1)
  {
    swift_once();
  }

  v51 = qword_1EDCD5B28;
  v130 = qword_1EDCD5B28;
  v129 = sub_1D9178DBC();
  v52 = *(v129 - 8);
  v128 = *(v52 + 56);
  v131 = v52 + 56;
  v53 = v139;
  v128(v139, 1, 1, v129);
  v177 = v51;
  v54 = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v138 = &protocol conformance descriptor for EmitLifecycle<A>;
  v127 = sub_1D8CF48EC(&qword_1ECAB5E98, &qword_1ECAB5E78, &qword_1D9191888);
  v55 = sub_1D8D02DF0();
  v56 = v141;
  v124 = v54;
  v123 = v55;
  sub_1D9177D3C();
  v126 = sub_1D8CF48EC(&qword_1ECAB5EA0, &qword_1ECAB5E70, &unk_1D9191878);
  v57 = v46;
  v58 = v163;
  v59 = v162;
  sub_1D9177CEC();
  v60 = *(v174 + 8);
  v174 += 8;
  v125 = v60;
  v60(v56, v58);
  sub_1D8D08A50(v53, &qword_1ECAB4D70, &unk_1D918BCE0);
  sub_1D8D08A50(v57, &qword_1ECAB5E78, &qword_1D9191888);
  v61 = v164;
  sub_1D8EC84A0(v173, v164);
  v136 = *(v136 + 80);
  v62 = (v136 + 16) & ~v136;
  v122 = v62;
  v63 = swift_allocObject();
  sub_1D8EC8504(v61, v63 + v62);
  v64 = swift_allocObject();
  *(v64 + 16) = sub_1D8EC8568;
  *(v64 + 24) = v63;
  v121 = sub_1D8CF48EC(&qword_1ECAB5EA8, &qword_1ECAB5E80, &qword_1D9191890);
  v65 = v133;
  v66 = v165;
  sub_1D9177C6C();

  v67 = *(v175 + 8);
  v175 += 8;
  v120 = v67;
  v67(v59, v66);
  v68 = v134;
  v69 = *(v134 + 16);
  v70 = v135;
  v71 = v137;
  v69(v135, v65, v137);
  sub_1D8D728EC((v172 + 4), &v177);
  v72 = v176;
  v69(v176, v70, v71);
  v73 = v166;
  sub_1D8D728EC(&v177, v72 + *(v166 + 36));
  v74 = v72 + v73[10];
  *v74 = "KCUTTMLFile";
  *(v74 + 8) = 11;
  *(v74 + 16) = 2;
  *(v72 + v73[12]) = 1;
  sub_1D8D08A50(&v177, &qword_1ECAB4928, &qword_1D918B380);
  v75 = *(v68 + 8);
  v75(v70, v71);
  v75(v65, v71);
  v76 = (v72 + v73[11]);
  *v76 = 0;
  v76[1] = 0xE000000000000000;
  *(v72 + v73[13]) = 0;
  v77 = v173;
  v78 = (v173 + *(v140 + 36));
  v79 = *v78;
  v80 = v78[1];
  v81 = v132;
  sub_1D9176B3C();
  v82 = v160;
  v83 = v172;
  sub_1D8EC70DC(v81, v172, v160);
  v168(v81, v171);
  v128(v53, 1, 1, v129);
  v177 = v130;
  sub_1D9177D3C();
  v85 = v162;
  v84 = v163;
  sub_1D9177CEC();
  v125(v56, v84);
  sub_1D8D08A50(v53, &qword_1ECAB4D70, &unk_1D918BCE0);
  sub_1D8D08A50(v82, &qword_1ECAB5E78, &qword_1D9191888);
  v86 = v164;
  sub_1D8EC84A0(v77, v164);
  v87 = v122;
  v88 = swift_allocObject();
  sub_1D8EC8504(v86, v88 + v87);
  v89 = swift_allocObject();
  *(v89 + 16) = sub_1D8EC8624;
  *(v89 + 24) = v88;
  sub_1D8CF2154(0, &unk_1ECAAFBD0, 0x1E697B780);
  v90 = v142;
  v91 = v165;
  sub_1D9177C6C();

  v120(v85, v91);
  v92 = v144;
  v93 = *(v144 + 16);
  v94 = v143;
  v95 = v146;
  v93(v143, v90, v146);
  v96 = v83;
  sub_1D8D728EC(v83 + 32, &v177);
  v97 = v147;
  v93(v147, v94, v95);
  v98 = v145;
  sub_1D8D728EC(&v177, v97 + *(v145 + 36));
  v99 = v97 + v98[10];
  *v99 = "KCUShazamSignatureFile";
  *(v99 + 8) = 22;
  *(v99 + 16) = 2;
  *(v97 + v98[12]) = 1;
  sub_1D8D08A50(&v177, &qword_1ECAB4928, &qword_1D918B380);
  v100 = *(v92 + 8);
  v100(v94, v95);
  v100(v90, v95);
  v101 = (v97 + v98[11]);
  *v101 = 0;
  v101[1] = 0xE000000000000000;
  *(v97 + v98[13]) = 0;
  sub_1D8CF48EC(&qword_1ECAB5EB0, &qword_1ECAB5E68, &qword_1D9191870);
  sub_1D8CF48EC(&qword_1ECAB5EB8, &qword_1ECAB5E90, &unk_1D91918A0);
  v102 = v148;
  sub_1D9177B5C();
  v103 = swift_allocObject();
  *(v103 + 16) = sub_1D8EC4BE0;
  *(v103 + 24) = 0;
  sub_1D8CF48EC(&qword_1ECAB5EC0, &qword_1ECAB5E40, &qword_1D9191848);
  v104 = v150;
  v105 = v151;
  sub_1D9177B9C();

  (*(v149 + 8))(v102, v105);
  v106 = v156;
  v107 = *(v156 + 16);
  v108 = v152;
  v109 = v158;
  v107(v152, v104, v158);
  sub_1D8D728EC(v96 + 32, &v177);
  v110 = v154;
  v107(v154, v108, v109);
  v111 = v155;
  sub_1D8D728EC(&v177, v110 + *(v155 + 36));
  v112 = v110 + v111[10];
  *v112 = "KCUTranscriptData";
  *(v112 + 8) = 17;
  *(v112 + 16) = 2;
  *(v110 + v111[12]) = 1;
  sub_1D8D08A50(&v177, &qword_1ECAB4928, &qword_1D918B380);
  v113 = *(v106 + 8);
  v113(v108, v109);
  v113(v104, v109);
  v114 = (v110 + v111[11]);
  *v114 = 0;
  v114[1] = 0xE000000000000000;
  *(v110 + v111[13]) = 0;
  sub_1D8CF48EC(&qword_1ECAB5EC8, &qword_1ECAB5E50, &qword_1D9191858);
  v115 = v153;
  sub_1D9177B9C();
  sub_1D8D08A50(v110, &qword_1ECAB5E50, &qword_1D9191858);
  sub_1D8CF48EC(&qword_1ECAB5ED0, &qword_1ECAB5E58, &qword_1D9191860);
  v116 = v159;
  v117 = sub_1D9177B1C();
  (*(v157 + 8))(v115, v116);
  sub_1D8D08A50(v97, &qword_1ECAB5E68, &qword_1D9191870);
  sub_1D8D08A50(v176, &qword_1ECAB5E90, &unk_1D91918A0);
  v168(v169, v171);
  return v117;
}

void sub_1D8EC6DB4(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (qword_1ECAB0E50 != -1)
  {
    swift_once();
  }

  v6 = sub_1D917744C();
  __swift_project_value_buffer(v6, qword_1ECAB0E58);
  sub_1D8EC8C5C(a2, v23);
  v7 = v5;
  v8 = sub_1D917741C();
  v9 = sub_1D9178CDC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136315394;
    v22[0] = v11;
    sub_1D8E40A10();
    v12 = sub_1D9179A4C();
    v14 = v13;
    sub_1D8EC8D90(v23);
    v15 = sub_1D8CFA924(v12, v14, v22);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    v16 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5070, &qword_1D918F5B0);
    v17 = sub_1D917826C();
    v19 = sub_1D8CFA924(v17, v18, v22);

    *(v10 + 14) = v19;
    _os_log_impl(&dword_1D8CEC000, v8, v9, "Finished prefetching for %s: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v11, -1, -1);
    MEMORY[0x1DA72CB90](v10, -1, -1);
  }

  else
  {

    v20 = sub_1D8EC8D90(v23);
  }

  v21 = *(a3 + 24);
  MEMORY[0x1EEE9AC00](v20);
  os_unfair_lock_lock((v21 + 24));
  sub_1D8EC8DE4((v21 + 16));
  os_unfair_lock_unlock((v21 + 24));
}

void sub_1D8EC7010(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_1D8D93AB0(a2);
  if (v5)
  {
    v6 = v4;
    v7 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *a1;
    v13 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D8F82C10();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_1D9176EAC();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
    v12 = *(*(v9 + 56) + 8 * v6);

    sub_1D8F7F950(v6, v9);
    *a1 = v9;
  }
}

uint64_t sub_1D8EC70DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v35 = a1;
  v41 = a2;
  v4 = sub_1D9178CAC();
  v5 = *(v4 - 8);
  v38 = v4;
  v39 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5EF8, &qword_1D9191978);
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  v17 = sub_1D9176C2C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1D917653C();
  v37 = *(v40 - 8);
  v22 = *(v37 + 64);
  v23 = MEMORY[0x1EEE9AC00](v40);
  v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, v35, v17, v23);
  sub_1D91764EC();
  v42[0] = 0x20726572616542;
  v42[1] = 0xE700000000000000;
  v26 = v36;
  MEMORY[0x1DA7298F0](*v36, v36[1]);
  sub_1D917650C();

  v27 = v26[2];
  sub_1D9178CBC();
  sub_1D8EC8928();
  v28 = v38;
  sub_1D9177C6C();
  (*(v39 + 8))(v8, v28);
  v29 = v10[2];
  v29(v13, v16, v9);
  sub_1D8D728EC(v41 + 32, v42);
  v29(a3, v13, v9);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E78, &qword_1D9191888);
  sub_1D8D728EC(v42, &a3[v30[9]]);
  v31 = &a3[v30[10]];
  *v31 = "KCUFileDownload";
  *(v31 + 1) = 15;
  v31[16] = 2;
  a3[v30[12]] = 1;
  sub_1D8D08A50(v42, &qword_1ECAB4928, &qword_1D918B380);
  v32 = v10[1];
  v32(v13, v9);
  v32(v16, v9);
  result = (*(v37 + 8))(v25, v40);
  v34 = &a3[v30[11]];
  *v34 = 0;
  *(v34 + 1) = 0xE000000000000000;
  a3[v30[13]] = 0;
  return result;
}

double sub_1D8EC7548@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v69 = a1;
  v76 = a2;
  v65 = a3;
  v66 = sub_1D91773AC();
  v3 = *(v66 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v60 - v7;
  v8 = sub_1D917734C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v60 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v60 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v60 - v19;
  if (qword_1ECAB1050 != -1)
  {
    swift_once();
  }

  v21 = sub_1D917739C();
  v22 = __swift_project_value_buffer(v21, qword_1ECAB1058);
  sub_1D917733C();
  v68 = v22;
  v23 = sub_1D917737C();
  v24 = sub_1D9178F5C();
  if (sub_1D917918C())
  {
    v25 = swift_slowAlloc();
    v61 = v14;
    v26 = v9;
    v27 = v3;
    v28 = v8;
    v29 = v25;
    *v25 = 0;
    v30 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v23, v24, v30, "ParseKCUTTML", "", v29, 2u);
    v31 = v29;
    v8 = v28;
    v3 = v27;
    v9 = v26;
    v14 = v61;
    MEMORY[0x1DA72CB90](v31, -1, -1);
  }

  (*(v9 + 16))(v17, v20, v8);
  v32 = sub_1D91773FC();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  sub_1D91773EC();
  v35 = *(v9 + 8);
  v35(v20, v8);
  v36 = v70;
  TranscriptParser.parse(ttmlData:)(v69, v76, v71);
  if (v36)
  {
    v37 = sub_1D917737C();
    v38 = v67;
    sub_1D91773DC();
    LODWORD(v70) = sub_1D9178F4C();
    if (sub_1D917918C())
    {

      v39 = v64;
      sub_1D917740C();

      v40 = v66;
      v41 = (*(v3 + 88))(v39, v66);
      v42 = *MEMORY[0x1E69E93E8];
      v62 = v8;
      if (v41 == v42)
      {
        v43 = "[Error] Interval already ended";
      }

      else
      {
        (*(v3 + 8))(v39, v40);
        v43 = "FAILURE";
      }

      v50 = swift_slowAlloc();
      *v50 = 0;
      v51 = v67;
      v52 = sub_1D917732C();
      v53 = v43;
      v38 = v51;
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v37, v70, v52, "ParseKCUTTML", v53, v50, 2u);
      MEMORY[0x1DA72CB90](v50, -1, -1);
      v8 = v62;
    }

    v35(v38, v8);
    swift_willThrow();
  }

  else
  {
    v44 = v3;
    v76 = v71[0];
    v69 = v71[1];
    LODWORD(v67) = v72;
    v64 = v73;
    v61 = v74;
    v70 = v75;
    v45 = v14;
    v46 = sub_1D917737C();
    sub_1D91773DC();
    LODWORD(v68) = sub_1D9178F4C();
    if (sub_1D917918C())
    {
      v62 = v8;

      v47 = v63;
      sub_1D917740C();

      v48 = v66;
      if ((*(v44 + 88))(v47, v66) == *MEMORY[0x1E69E93E8])
      {
        v49 = "[Error] Interval already ended";
      }

      else
      {
        (*(v44 + 8))(v47, v48);
        v49 = "SUCCESS";
      }

      v55 = swift_slowAlloc();
      *v55 = 0;
      v56 = sub_1D917732C();
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v46, v68, v56, "ParseKCUTTML", v49, v55, 2u);
      MEMORY[0x1DA72CB90](v55, -1, -1);
      v8 = v62;
    }

    v35(v45, v8);
    v57 = v65;
    v58 = v69;
    *v65 = v76;
    v57[1] = v58;
    *(v57 + 16) = v67;
    v59 = v61;
    v57[3] = v64;
    v57[4] = v59;
    result = *&v70;
    *(v57 + 5) = v70;
  }

  return result;
}

NSObject *sub_1D8EC7B4C(uint64_t a1, unint64_t a2)
{
  v82 = a1;
  v3 = sub_1D91773AC();
  v77 = *(v3 - 8);
  v78 = v3;
  v4 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v76 = v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v73 - v7;
  v9 = sub_1D917734C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v83 = v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v75 = v73 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v73 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v73 - v19;
  if (qword_1ECAB1050 != -1)
  {
    swift_once();
  }

  v21 = sub_1D917739C();
  v22 = __swift_project_value_buffer(v21, qword_1ECAB1058);
  sub_1D917733C();
  v79 = v22;
  v23 = sub_1D917737C();
  v24 = sub_1D9178F5C();
  if (sub_1D917918C())
  {
    v25 = swift_slowAlloc();
    v81 = a2;
    v26 = v8;
    v27 = v10;
    v28 = v9;
    v29 = v25;
    *v25 = 0;
    v30 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v23, v24, v30, "ParseKCUSignature", "", v29, 2u);
    v31 = v29;
    v9 = v28;
    v10 = v27;
    v8 = v26;
    a2 = v81;
    MEMORY[0x1DA72CB90](v31, -1, -1);
  }

  (*(v10 + 16))(v17, v20, v9);
  v32 = sub_1D91773FC();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v81 = sub_1D91773EC();
  v37 = *(v10 + 8);
  v36 = v10 + 8;
  v35 = v37;
  v37(v20, v9);
  v38 = objc_allocWithZone(MEMORY[0x1E697B7D0]);
  v39 = v82;
  sub_1D8D752C4(v82, a2);
  v40 = v80;
  v41 = sub_1D8ECEE54();
  if (v40)
  {
    sub_1D8D7567C(v39, a2);
    v45 = sub_1D917737C();
    v46 = v83;
    sub_1D91773DC();
    v47 = sub_1D9178F4C();
    if (sub_1D917918C())
    {
      v80 = v35;

      v48 = v76;
      sub_1D917740C();

      v50 = v77;
      v49 = v78;
      if ((*(v77 + 88))(v48, v78) == *MEMORY[0x1E69E93E8])
      {
        v51 = v9;
        v52 = "[Error] Interval already ended";
      }

      else
      {
        v53 = v48;
        v51 = v9;
        (*(v50 + 8))(v53, v49);
        v52 = "FAILURE";
      }

      v54 = swift_slowAlloc();
      *v54 = 0;
      v55 = v83;
      v56 = sub_1D917732C();
      v57 = v52;
      v46 = v55;
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v45, v47, v56, "ParseKCUSignature", v57, v54, 2u);
      MEMORY[0x1DA72CB90](v54, -1, -1);
      v9 = v51;
      v35 = v80;
    }

    v35(v46, v9);
    swift_willThrow();
  }

  else
  {
    v42 = v41;
    v74 = v8;
    v80 = v35;
    sub_1D8D7567C(v39, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D9189070;
    *(inited + 32) = v42;
    v44 = v42;
    v45 = sub_1D8ECF6A0(inited);
    v83 = v9;
    swift_setDeallocating();
    v59 = *(inited + 16);
    swift_arrayDestroy();
    v60 = sub_1D917737C();
    v61 = v75;
    sub_1D91773DC();
    v62 = sub_1D9178F4C();
    if (sub_1D917918C())
    {
      LODWORD(v82) = v62;

      v63 = v74;
      sub_1D917740C();

      v65 = v77;
      v64 = v78;
      v66 = (*(v77 + 88))(v63, v78);
      v67 = *MEMORY[0x1E69E93E8];
      v73[1] = v36;
      if (v66 == v67)
      {
        v68 = "[Error] Interval already ended";
      }

      else
      {
        (*(v65 + 8))(v63, v64);
        v68 = "SUCCESS";
      }

      v69 = swift_slowAlloc();
      *v69 = 0;
      v70 = v75;
      v71 = sub_1D917732C();
      v72 = v68;
      v61 = v70;
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v60, v82, v71, "ParseKCUSignature", v72, v69, 2u);
      MEMORY[0x1DA72CB90](v69, -1, -1);
    }

    else
    {
    }

    v80(v61, v83);
  }

  return v45;
}

uint64_t sub_1D8EC8210@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v22 = a1[2];
  v23 = v3;
  v24 = *(a1 + 64);
  v4 = a1[1];
  v20 = *a1;
  v21 = v4;
  if (qword_1ECAB0E50 != -1)
  {
    swift_once();
  }

  v5 = sub_1D917744C();
  __swift_project_value_buffer(v5, qword_1ECAB0E58);
  sub_1D8EC8878(&v20, v18);
  v6 = sub_1D917741C();
  v7 = sub_1D9178CDC();
  sub_1D8EC88D4(&v20);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v18[2] = v22;
    v18[3] = v23;
    v19 = v24;
    v18[0] = v20;
    v18[1] = v21;
    sub_1D8EC8878(&v20, &v16);
    v10 = sub_1D917826C();
    v12 = sub_1D8CFA924(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1D8CEC000, v6, v7, "KCU Result: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1DA72CB90](v9, -1, -1);
    MEMORY[0x1DA72CB90](v8, -1, -1);
  }

  v13 = v23;
  *(a2 + 32) = v22;
  *(a2 + 48) = v13;
  *(a2 + 64) = v24;
  v14 = v21;
  *a2 = v20;
  *(a2 + 16) = v14;
  return sub_1D8EC8878(&v20, v18);
}

id sub_1D8EC83E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1D8EC8980(*a1, *(a1 + 8), *(a1 + 16));
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    return sub_1D8D752C4(result, v5);
  }

  return result;
}

uint64_t sub_1D8EC8424()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 24));
  sub_1D8EC8E00((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

uint64_t sub_1D8EC84A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KCUTranscriptProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8EC8504(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KCUTranscriptProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1D8EC8568@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *(type metadata accessor for KCUTranscriptProvider() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));
  return sub_1D8EC7548(a1, a2, a3);
}

uint64_t sub_1D8EC85F4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

NSObject *sub_1D8EC8624(uint64_t a1, unint64_t a2)
{
  v5 = *(type metadata accessor for KCUTranscriptProvider() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return sub_1D8EC7B4C(a1, a2);
}

uint64_t sub_1D8EC86A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = v5(*a1, a1[1]);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

void sub_1D8EC8704()
{
  sub_1D8CF2154(319, &qword_1ECAAFE18, 0x1E696AF78);
  if (v0 <= 0x3F)
  {
    sub_1D8EC87C8();
    if (v1 <= 0x3F)
    {
      sub_1D9176C2C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D8EC87C8()
{
  if (!qword_1ECAB5EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB5EF0, &qword_1D9191948);
    v0 = sub_1D91773BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECAB5EE8);
    }
  }
}

uint64_t sub_1D8EC882C(uint64_t a1)
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

uint64_t sub_1D8EC8848(uint64_t result, int a2)
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

unint64_t sub_1D8EC8928()
{
  result = qword_1ECAAFE20;
  if (!qword_1ECAAFE20)
  {
    sub_1D9178CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFE20);
  }

  return result;
}

id sub_1D8EC8980(id a1, uint64_t a2, void *a3)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = a3;
    if ([v6 statusCode] == 200)
    {
      if (qword_1ECAB0E50 != -1)
      {
        swift_once();
      }

      v8 = sub_1D917744C();
      __swift_project_value_buffer(v8, qword_1ECAB0E58);
      v9 = v7;
      v10 = sub_1D917741C();
      v11 = sub_1D9178D1C();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v24 = v23;
        *v12 = 136315138;
        v22 = v11;
        v13 = v9;
        v14 = [v13 description];
        v15 = sub_1D917820C();
        v17 = v16;

        v18 = sub_1D8CFA924(v15, v17, &v24);

        *(v12 + 4) = v18;
        _os_log_impl(&dword_1D8CEC000, v10, v22, "Received reply from KCU %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        MEMORY[0x1DA72CB90](v23, -1, -1);
        MEMORY[0x1DA72CB90](v12, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      a1 = [v6 statusCode];
      sub_1D8EC8C08();
      swift_allocError();
      *v20 = a1;
      *(v20 + 8) = 0;
      swift_willThrow();
    }
  }

  else
  {
    sub_1D8EC8C08();
    swift_allocError();
    *v19 = 0;
    *(v19 + 8) = 1;
    swift_willThrow();
  }

  return a1;
}

unint64_t sub_1D8EC8C08()
{
  result = qword_1ECAB5F00;
  if (!qword_1ECAB5F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5F00);
  }

  return result;
}

void sub_1D8EC8CB8(void **a1)
{
  v3 = *(type metadata accessor for KCUTranscriptProvider() - 8);
  v4 = (*(v3 + 80) + 88) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1D9176EAC() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  sub_1D8EC6DB4(a1, v1 + 16, v1 + v4);
}

uint64_t MAPITranscriptTimeBombedURLProvider.init(workQueue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1D8D6866C(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F20, &qword_1D91919A0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v4;
  *a2 = a1;
  a2[1] = result;
  return result;
}

uint64_t MAPITranscriptTimeBombedURLProvider.timeBombedURLs(for:)()
{
  v2 = *v0;
  v3 = v0[1];
  os_unfair_lock_lock((v3 + 24));
  sub_1D8ECA280((v3 + 16), &v4);
  os_unfair_lock_unlock((v3 + 24));
  return v4;
}

unint64_t sub_1D8EC8EE8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  if (*(*a1 + 16) && (v7 = sub_1D8F06AAC(a2), (v8 & 1) != 0))
  {
    *a3 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v10 = sub_1D8EC8FB4(a2);

    v11 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *a1;
    result = sub_1D8F4FC28(v10, a2, isUniquelyReferenced_nonNull_native);
    *a1 = v13;
    *a3 = v10;
  }

  return result;
}

uint64_t sub_1D8EC8FB4(uint64_t a1)
{
  v59 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F30, &unk_1D9191B40);
  v4 = *(v3 - 8);
  v69 = v3;
  v70 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v58 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v58 - v10;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F38, &qword_1D9191B50);
  v65 = *(v62 - 8);
  v12 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v14 = &v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F40, &qword_1D9191B58);
  v16 = *(v15 - 8);
  v67 = v15;
  v68 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v60 = &v58 - v18;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F48, &qword_1D9191B60);
  v64 = *(v66 - 8);
  v19 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v63 = &v58 - v20;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F50, &qword_1D9191B68);
  v75 = *(v72 - 8);
  v21 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v61 = &v58 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F58, &qword_1D9191B70);
  v24 = *(v23 - 8);
  v73 = v23;
  v74 = v24;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v71 = &v58 - v26;
  v27 = *v1;
  v28 = *(v1 + 8);
  sub_1D8EC8C5C(a1, &v76);
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v29 + 24) = v28;
  v30 = v79;
  *(v29 + 64) = v78;
  *(v29 + 80) = v30;
  *(v29 + 96) = v80;
  v31 = v77;
  *(v29 + 32) = v76;
  *(v29 + 48) = v31;
  v32 = v27;
  v58 = v32;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F60, &qword_1D9191B78);
  sub_1D8CF48EC(&qword_1ECAB0278, &qword_1ECAB5F60, &qword_1D9191B78);
  v33 = v14;
  sub_1D9177A7C();
  v34 = sub_1D9178DBC();
  (*(*(v34 - 8) + 56))(v11, 1, 1, v34);
  *&v76 = v32;
  sub_1D8CFD888();
  sub_1D8CF48EC(&qword_1ECAB0200, &qword_1ECAB5F38, &qword_1D9191B50);
  sub_1D8D02DF0();
  v35 = v7;
  v36 = v62;
  v37 = v33;
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB09E0, &qword_1ECAB5F30, &unk_1D9191B40);
  v38 = v60;
  v39 = v69;
  sub_1D9177CEC();
  (*(v70 + 8))(v35, v39);
  sub_1D8D08A50(v11, &qword_1ECAB4D70, &unk_1D918BCE0);
  (*(v65 + 8))(v37, v36);
  type metadata accessor for TranscriptData.TimeBombedURLs();
  sub_1D8CF48EC(&qword_1ECAB0408, &qword_1ECAB5F40, &qword_1D9191B58);
  v40 = v63;
  v41 = v67;
  sub_1D9177B9C();
  (*(v68 + 8))(v38, v41);
  v42 = v61;
  sub_1D8ED6300(v61);
  (*(v64 + 8))(v40, v66);
  v43 = v59;
  sub_1D8EC8C5C(v59, &v76);
  v44 = swift_allocObject();
  v45 = v58;
  *(v44 + 16) = v58;
  *(v44 + 24) = v28;
  v46 = v79;
  *(v44 + 64) = v78;
  *(v44 + 80) = v46;
  *(v44 + 96) = v80;
  v47 = v77;
  *(v44 + 32) = v76;
  *(v44 + 48) = v47;
  sub_1D8EC8C5C(v43, &v76);
  v48 = swift_allocObject();
  *(v48 + 16) = v45;
  *(v48 + 24) = v28;
  v49 = v79;
  *(v48 + 64) = v78;
  *(v48 + 80) = v49;
  *(v48 + 96) = v80;
  v50 = v77;
  *(v48 + 32) = v76;
  *(v48 + 48) = v50;
  sub_1D8CF48EC(&qword_1ECAB0B28, &qword_1ECAB5F50, &qword_1D9191B68);
  v51 = v45;
  swift_retain_n();
  v52 = v51;
  v53 = v72;
  v54 = v71;
  sub_1D9177B3C();

  (*(v75 + 8))(v42, v53);
  sub_1D8CF48EC(&qword_1ECAB0938, &qword_1ECAB5F58, &qword_1D9191B70);
  v55 = v73;
  v56 = sub_1D9177B1C();
  (*(v74 + 8))(v54, v55);
  return v56;
}

uint64_t sub_1D8EC9844@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for MediaRequest.Params();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  sub_1D8EC9BE0(a1, &v21 - v9);
  sub_1D8D85B08(v10, v7);
  sub_1D8EC8C5C(a1, v22);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_1D8D85D0C(v7, v12 + v11);
  v13 = v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  v14 = v22[3];
  *(v13 + 32) = v22[2];
  *(v13 + 48) = v14;
  *(v13 + 64) = v23;
  v15 = v22[1];
  *v13 = v22[0];
  *(v13 + 16) = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F60, &qword_1D9191B78);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_1D9177A5C();
  result = sub_1D8D90BEC(v10);
  *a2 = v19;
  return result;
}

uint64_t sub_1D8EC99E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18PodcastsFoundation16ServerTranscript_attributes;
  v5 = v3 + *(type metadata accessor for ServerTranscript.Attributes(0) + 20) + v4;
  v6 = type metadata accessor for ServerTranscript.Attributes.AssetUrls(0);
  sub_1D8ECA48C(v5 + *(v6 + 20), a2);
  v7 = a2 + *(type metadata accessor for TranscriptData.TimeBombedURLs() + 20);

  return sub_1D8ECA48C(v5, v7);
}

uint64_t sub_1D8EC9A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a3 + 24));
  sub_1D8ECA7A8((a3 + 16), &v5);
  os_unfair_lock_unlock((a3 + 24));
}

uint64_t sub_1D8EC9AD0(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 24));
  sub_1D8ECA470((a2 + 16), &v4);
  os_unfair_lock_unlock((a2 + 24));
}

unint64_t sub_1D8EC9B30@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  result = sub_1D8F06AAC(a2);
  if (v7)
  {
    v8 = result;
    v9 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *a1;
    v13 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D8F82E90();
      v11 = v13;
    }

    sub_1D8EC8D90(*(v11 + 48) + 72 * v8);
    v12 = *(*(v11 + 56) + 8 * v8);
    result = sub_1D8F7FC70(v8, v11);
    *a1 = v11;
  }

  else
  {
    v12 = 0;
  }

  *a3 = v12;
  return result;
}

uint64_t sub_1D8EC9BE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v28 - v6;
  v38 = &v28 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D9189080;
  v39 = *a1;
  sub_1D8E40D20();
  *(v8 + 32) = sub_1D917927C();
  *(v8 + 40) = v9;
  v10 = sub_1D9176C2C();
  v11 = *(*(v10 - 8) + 56);
  v11(v7, 1, 1, v10);
  v12 = MEMORY[0x1E69E7CC0];
  v37 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v36 = sub_1D8D94DF8(v12);
  v35 = sub_1D8D951E0(v12);
  v34 = sub_1D8D9503C(v12);
  v33 = sub_1D8D9536C(v12);
  v32 = sub_1D8D9536C(v12);
  v31 = sub_1D8D953C4(v12);
  v29 = sub_1D8D952D8(v12);
  v30 = sub_1D8D95394(v12);
  v28 = sub_1D8D957C4(v12);
  *(a2 + 41) = 263;
  *(a2 + 43) = 5;
  *(a2 + 152) = 1;
  *(a2 + 201) = 1;
  v13 = type metadata accessor for MediaRequest.Params();
  v14 = v13[28];
  v11((a2 + v14), 1, 1, v10);
  v15 = (a2 + v13[29]);
  v16 = (a2 + v13[31]);
  v17 = v13[34];
  v18 = (a2 + v13[33]);
  v19 = (a2 + v13[35]);
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 40) = 50397188;
  v20 = v36;
  *(a2 + 48) = v37;
  *(a2 + 56) = v20;
  v21 = v34;
  *(a2 + 64) = v35;
  *(a2 + 72) = v12;
  v23 = v32;
  v22 = v33;
  *(a2 + 80) = v21;
  *(a2 + 88) = v22;
  v24 = v31;
  *(a2 + 96) = v23;
  *(a2 + 104) = v24;
  v25 = v29;
  *(a2 + 112) = &unk_1F545D928;
  *(a2 + 120) = v25;
  *(a2 + 128) = v12;
  *(a2 + 136) = v12;
  *(a2 + 144) = v8;
  *(a2 + 152) = 1;
  *(a2 + 160) = 0;
  *(a2 + 168) = 1;
  v26 = v28;
  *(a2 + 176) = v30;
  *(a2 + 184) = v26;
  *(a2 + 192) = 0;
  *(a2 + 200) = 257;
  *(a2 + 202) = 0;
  result = sub_1D8E26828(v38, a2 + v14);
  *v15 = 0;
  v15[1] = 0;
  *(a2 + v13[30]) = 0;
  *v16 = 0;
  v16[1] = 0;
  *(a2 + v13[32]) = v12;
  *v18 = 0;
  v18[1] = 0;
  *(a2 + v17) = 2;
  *v19 = 0;
  v19[1] = 0;
  return result;
}

void sub_1D8EC9EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = objc_allocWithZone(type metadata accessor for MediaRequestController());

  v10 = [v9 init];
  sub_1D8EC8C5C(a4, v14);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1D8D419F0;
  *(v11 + 24) = v8;
  v12 = v14[3];
  *(v11 + 64) = v14[2];
  *(v11 + 80) = v12;
  *(v11 + 96) = v15;
  v13 = v14[1];
  *(v11 + 32) = v14[0];
  *(v11 + 48) = v13;
  sub_1D904AD58(a3, 0, sub_1D8ECA5A8, v11);
}

void sub_1D8EC9FC4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void *, void), uint64_t a7, uint64_t a8)
{
  v9 = sub_1D8ECA5B4(a8, a1, a5);
  a6(v9, 0);

  sub_1D8E8A1A8(v9);
}

uint64_t sub_1D8ECA040(void *a1, uint64_t a2)
{
  v2 = (*a1 + OBJC_IVAR____TtC18PodcastsFoundation16ServerTranscript_attributes);
  if (*v2 == *(a2 + 8) && v2[1] == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_1D9179ACC() & 1;
  }
}

uint64_t sub_1D8ECA0AC()
{
  v2 = *v0;
  v3 = v0[1];
  os_unfair_lock_lock((v3 + 24));
  sub_1D8ECA7C0((v3 + 16), &v4);
  os_unfair_lock_unlock((v3 + 24));
  return v4;
}

uint64_t _s18PodcastsFoundation35MAPITranscriptTimeBombedURLProviderV0C5ErrorO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1D8ECA3E4(a1, v12);
  sub_1D8ECA3E4(a2, &v14);
  if (v13 == 2)
  {
    if (v15 != 2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (v13 != 1)
    {
      if (v13)
      {
        sub_1D8ECA3E4(v12, v10);
        v4 = v11;
        if (v15 >= 3)
        {
          v6 = v19;
          v8[2] = v16;
          v8[3] = v17;
          v9 = v18;
          v8[0] = v14;
          v8[1] = v15;
          v7 = _s18PodcastsFoundation17TranscriptRequestV2eeoiySbAC_ACtFZ_0(v10, v8);
          sub_1D8EC8D90(v10);
          if (v7)
          {
            v3 = sub_1D8E8362C(v4, v6);

            sub_1D8EC8D90(v8);
            sub_1D8ECA41C(v12);
            return v3 & 1;
          }

          sub_1D8EC8D90(v8);

          sub_1D8ECA41C(v12);
          goto LABEL_13;
        }

        sub_1D8EC8D90(v10);
      }

      else if (!v15)
      {
        goto LABEL_9;
      }

LABEL_12:
      sub_1D8D08A50(v12, &qword_1ECAB5F28, &qword_1D9191B38);
LABEL_13:
      v3 = 0;
      return v3 & 1;
    }

    if (v15 != 1)
    {
      goto LABEL_12;
    }
  }

LABEL_9:
  sub_1D8ECA41C(v12);
  v3 = 1;
  return v3 & 1;
}

unint64_t sub_1D8ECA280@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return sub_1D8EC8EE8(a1, *(v2 + 16), a2);
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation35MAPITranscriptTimeBombedURLProviderV0C5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_1D8ECA2E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 80))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8ECA340(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

double sub_1D8ECA39C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D8ECA44C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1D8EC9844(v1 + 4, a1);
}

uint64_t sub_1D8ECA48C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D8ECA4FC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for MediaRequest.Params() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  sub_1D8EC9EAC(a1, a2, v2 + v6, v7);
}

void *sub_1D8ECA5B4(uint64_t a1, unint64_t a2, void *a3)
{
  if (!a3)
  {
    if (a2)
    {
      v8 = sub_1D8FBEEC0(a2);
      if (v8)
      {
        v9 = v8;
        MEMORY[0x1EEE9AC00](v8);
        v14[2] = a1;
        v10 = sub_1D8F4E034(sub_1D8ECA788, v14, v9);
        if (v10)
        {
          v3 = v10;

          return v3;
        }

        sub_1D8ECA734();
        swift_allocError();
        v3 = v13;
        sub_1D8EC8C5C(a1, v13);
        v3[9] = v9;
      }

      else
      {
        sub_1D8ECA734();
        swift_allocError();
        *v12 = 0;
        *(v12 + 8) = 0;
        *(v12 + 16) = 1;
        *(v12 + 24) = 0u;
        *(v12 + 40) = 0u;
        *(v12 + 56) = 0u;
        *(v12 + 72) = 0;
      }
    }

    else
    {
      sub_1D8ECA734();
      swift_allocError();
      *v11 = 0u;
      v11[1] = 0u;
      v11[2] = 0u;
      v11[3] = 0u;
      v11[4] = 0u;
    }
  }

  swift_willThrow();
  v5 = a3;
  return v3;
}

unint64_t sub_1D8ECA734()
{
  result = qword_1ECAB5F68;
  if (!qword_1ECAB5F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5F68);
  }

  return result;
}

uint64_t MTEpisode.transcriptRequest(priority:lifetime:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *a1;
  v7 = *a2;
  v8 = [v3 storeTrackId];
  v9 = [v4 priceType];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1D917820C();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = [v4 transcriptIdentifier];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1D917820C();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v22 = v8 & ~(v8 >> 63);
  v23 = v11;
  v24 = v13;
  v25 = v16;
  v26 = v18;
  v21 = v6;
  v20 = v7;
  TranscriptEpisodeContext.transcriptRequest(priority:lifetime:)(&v21, &v20, a3);
}

uint64_t sub_1D8ECA904()
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8ECAA24()
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8ECABA0()
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8ECAD60()
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8ECAE7C()
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t ShazamSignatureRequest.priority.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ShazamSignatureRequest();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t ShazamSignatureRequest.fileFormat.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ShazamSignatureRequest();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t ShazamSignatureRequest.lifetime.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ShazamSignatureRequest();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t ShazamSignatureRequest.trace.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ShazamSignatureRequest() + 36);

  return sub_1D8D412B0(a1, v3);
}

uint64_t sub_1D8ECB198()
{
  v1 = (v0 + *(type metadata accessor for ShazamSignatureRequest() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ShazamSignatureRequest.init(remoteUrl:priority:fileName:lifetime:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a2;
  v11 = *a5;
  v12 = type metadata accessor for ShazamSignatureRequest();
  v13 = a6 + v12[9];
  *(v13 + 32) = 0;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  result = sub_1D8D5DE80(a1, a6);
  *(a6 + v12[5]) = v10;
  v15 = (a6 + v12[6]);
  *v15 = a3;
  v15[1] = a4;
  *(a6 + v12[8]) = v11;
  *(a6 + v12[7]) = 6;
  return result;
}

double ShazamSignatureRequest.init(generatedFrom:adamID:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = 0x80000001D91CCA60;
  v4 = 0;
  v23 = URL.md5()();
  v5 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v6 = &v22 + 2 * v4;
  while (++v4 != 3)
  {
    v7 = v6 + 2;
    v8 = *v6;
    v6 += 2;
    if (v8)
    {
      v9 = *(v7 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1D8D4241C(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_1D8D4241C((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      v12 = &v5[16 * v11];
      *(v12 + 4) = v9;
      *(v12 + 5) = v8;
      goto LABEL_2;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
  sub_1D8D72B0C();
  v13 = sub_1D917817C();
  v15 = v14;
  v16 = sub_1D9176C2C();
  v17 = *(v16 - 8);
  (*(v17 + 8))(a1, v16);

  (*(v17 + 56))(a2, 1, 1, v16);
  v18 = type metadata accessor for ShazamSignatureRequest();
  v19 = a2 + v18[9];
  *(v19 + 32) = 0;
  result = 0.0;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(a2 + v18[5]) = 2;
  v21 = (a2 + v18[6]);
  *v21 = v13;
  v21[1] = v15;
  *(a2 + v18[8]) = 1;
  *(a2 + v18[7]) = 6;
  return result;
}

uint64_t sub_1D8ECB4C0()
{
  v1 = *v0;
  v2 = 0x725565746F6D6572;
  v3 = 0x656D614E656C6966;
  v4 = 0x6D726F46656C6966;
  if (v1 != 3)
  {
    v4 = 0x656D69746566696CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x797469726F697270;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D8ECB564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8ECF3C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8ECB58C(uint64_t a1)
{
  v2 = sub_1D8ECEF14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8ECB5C8(uint64_t a1)
{
  v2 = sub_1D8ECEF14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ShazamSignatureRequest.hash(into:)()
{
  v1 = v0;
  v2 = sub_1D9176C2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  sub_1D8D088B4(v1, &v18 - v9, &unk_1ECAB5910, &qword_1D9188C90);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1D9179DDC();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1D9179DDC();
    sub_1D8D68BC8(&qword_1ECAB2CA8, MEMORY[0x1E6968FB0]);
    sub_1D917814C();
    (*(v3 + 8))(v6, v2);
  }

  v11 = type metadata accessor for ShazamSignatureRequest();
  v12 = LODWORD(flt_1D918CD50[*(v1 + v11[5])]);
  sub_1D9179DEC();
  v13 = (v1 + v11[6]);
  v14 = *v13;
  v15 = v13[1];
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  v16 = *(v1 + v11[7]);
  return sub_1D8ECAD60();
}

void *ShazamSignatureRequest.encode(_:)(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v6];
  v2 = v6[0];
  if (v1)
  {
    v3 = sub_1D9176C8C();
  }

  else
  {
    v3 = v2;
    sub_1D9176A6C();

    swift_willThrow();
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t ShazamSignatureRequest.decode(_:)(uint64_t a1, unint64_t a2)
{
  if (qword_1ECAB0CA0 != -1)
  {
    swift_once();
  }

  v5 = sub_1D917744C();
  __swift_project_value_buffer(v5, qword_1ECAB0CA8);
  v6 = sub_1D917741C();
  v7 = sub_1D9178CDC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D8CEC000, v6, v7, "Attempting signature unarchiving", v8, 2u);
    MEMORY[0x1DA72CB90](v8, -1, -1);
  }

  sub_1D8CF2154(0, &qword_1ECAAFDD0, 0x1E696ACD0);
  sub_1D8CF2154(0, &qword_1ECAAFE30, 0x1E697B7D0);
  v9 = sub_1D9178D5C();
  if (v2)
  {

LABEL_7:
    v10 = sub_1D917741C();
    v11 = sub_1D9178CDC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D8CEC000, v10, v11, "failed secure unarchiving, attempting dataRepresentation decoder...", v12, 2u);
      MEMORY[0x1DA72CB90](v12, -1, -1);
    }

    v13 = objc_allocWithZone(MEMORY[0x1E697B7D0]);
    sub_1D8D752C4(a1, a2);
    v14 = sub_1D8ECEE54();
    sub_1D8D7567C(a1, a2);
    return v14;
  }

  if (!v9)
  {
    goto LABEL_7;
  }

  v14 = v9;
  v15 = sub_1D917741C();
  v16 = sub_1D9178CDC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1D8CEC000, v15, v16, "Preferring keyed archiver object.", v17, 2u);
    MEMORY[0x1DA72CB90](v17, -1, -1);
  }

  return v14;
}

uint64_t ShazamSignatureRequest.SignatureError.hashValue.getter()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](0);
  return sub_1D9179E1C();
}

uint64_t ShazamSignatureRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F70, &qword_1D9191B90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8ECEF14();
  sub_1D9179F1C();
  v16[15] = 0;
  sub_1D9176C2C();
  sub_1D8D68BC8(&qword_1ECAB2CB0, MEMORY[0x1E6968FB0]);
  sub_1D917999C();
  if (!v2)
  {
    v11 = type metadata accessor for ShazamSignatureRequest();
    v16[14] = *(v3 + v11[5]);
    v16[13] = 1;
    sub_1D8ECEF68();
    sub_1D91799FC();
    v12 = (v3 + v11[6]);
    v13 = *v12;
    v14 = v12[1];
    v16[12] = 2;
    sub_1D91799BC();
    v16[11] = *(v3 + v11[7]);
    v16[10] = 3;
    sub_1D8ECEFBC();
    sub_1D91799FC();
    v16[9] = *(v3 + v11[8]);
    v16[8] = 4;
    sub_1D8ECF010();
    sub_1D91799FC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ShazamSignatureRequest.hashValue.getter()
{
  sub_1D9179DBC();
  ShazamSignatureRequest.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t ShazamSignatureRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F78, &qword_1D9191B98);
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = type metadata accessor for ShazamSignatureRequest();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v15[*(v16 + 36)];
  *(v17 + 32) = 0;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  v30 = v17;
  v31 = a1;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8ECEF14();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    return sub_1D8D08A50(v30, &qword_1ECAB4928, &qword_1D918B380);
  }

  else
  {
    v19 = v28;
    v20 = v15;
    sub_1D9176C2C();
    v39 = 0;
    sub_1D8D68BC8(&qword_1ECAB2C98, MEMORY[0x1E6968FB0]);
    v21 = v29;
    sub_1D917989C();
    sub_1D8D5DE80(v7, v20);
    v37 = 1;
    sub_1D8ECF064();
    sub_1D91798FC();
    *(v20 + v12[5]) = v38;
    v36 = 2;
    v22 = sub_1D91798BC();
    v23 = (v20 + v12[6]);
    *v23 = v22;
    v23[1] = v24;
    v34 = 3;
    sub_1D8ECF0B8();
    sub_1D91798FC();
    *(v20 + v12[7]) = v35;
    v32 = 4;
    sub_1D8ECF10C();
    sub_1D91798FC();
    (*(v19 + 8))(v11, v21);
    *(v20 + v12[8]) = v33;
    sub_1D8ECF160(v20, v27);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    return sub_1D8ECF1C4(v20);
  }
}

uint64_t sub_1D8ECC338()
{
  sub_1D9179DBC();
  ShazamSignatureRequest.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t sub_1D8ECC37C()
{
  sub_1D9179DBC();
  ShazamSignatureRequest.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t sub_1D8ECC3F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 24));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t (*sub_1D8ECC44C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_1D8ECC4A0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = ShazamSignatureRequest.decode(_:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

char *sub_1D8ECC4D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4578, &qword_1D9189FF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1D8ECC5F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4788, &qword_1D918A158);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 240);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[240 * v8])
    {
      memmove(v12, v13, 240 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D8ECC734(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5FF8, &qword_1D9191F80);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1D8ECC838(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6188, &qword_1D91921C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D8ECCA34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6158, &qword_1D9192198);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D8ECCBB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6010, &unk_1D9191FA0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_1D8ECCCE0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_1D8ECCEDC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_1D8ECD024(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6110, &qword_1D9192118);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D8ECD130(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB60E0, &unk_1D91920E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB45D0, &qword_1D918A040);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D8ECD264(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB60D8, &qword_1D91920D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1D8ECD398(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1D8ECD4B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB60B8, &qword_1D91920B8);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_1D8ECD5DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB60A0, &qword_1D91920A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 56 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1D8ECD708(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_1D8ECD874(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_1D8ECD988(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6068, &qword_1D9192050);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6070, &qword_1D9192058);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D8ECDAEC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_1D8ECDC14(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6050, &unk_1D9192020);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6058, &unk_1D91B7E10);
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6058, &unk_1D91B7E10);
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6058, &unk_1D91B7E10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D8ECDDDC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v12[2] = v10;
    v12[3] = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (v7)
  {
    if (v12 < a4 || v12 + 4 >= &a4[3 * v10 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v12 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1D8ECDF14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6040, &qword_1D9191FF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D8ECE030(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6038, &unk_1D9191FE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[13 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 104 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4238, &qword_1D9188D80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D8ECE180(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6030, &qword_1D9191FE0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1D8ECE284(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F98, &qword_1D9191F10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5FA0, &qword_1D9191F18);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D8ECE3DC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
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

char *sub_1D8ECE510(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4558, &unk_1D9191FC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}
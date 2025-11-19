uint64_t sub_1B7A7F5A0(uint64_t a1)
{
  type metadata accessor for ImpressionableLayoutItemViewModifier();

  return sub_1B7A79C7C(a1);
}

uint64_t type metadata accessor for LayoutItemImpressionInformation()
{
  result = qword_1EBA4A290;
  if (!qword_1EBA4A290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B7A7F678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B7A9A3E0();

  return sub_1B7A7F6D4(a1, v6, a2, a3);
}

unint64_t sub_1B7A7F6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_1B7A9A470();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_1B7A7F85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1B7A9A6C0())
  {
    sub_1B7A9ADD0();
    v13 = sub_1B7A9ADC0();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1B7A9A6C0();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1B7A9A6A0())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1B7A9AC80();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1B7A7F678(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_1B7A7FB60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7A7FBD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D38);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7A7FC68()
{
  result = sub_1B7A99670();
  if (v1 <= 0x3F)
  {
    result = sub_1B7A996F0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B7A7FCEC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1B7A7FD28()
{
  sub_1B7A7FF74(319, qword_1EBA4A208, MEMORY[0x1E69AB1E8], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B7A99A20();
    if (v1 <= 0x3F)
    {
      sub_1B7A7EA08();
      if (v2 <= 0x3F)
      {
        sub_1B7A7FFD8(319, &qword_1EDC0FC90, &qword_1EBA45D88, &unk_1B7A9C4F8, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1B7A7FF74(319, qword_1EDC0E600, MEMORY[0x1E69AB508], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1B7A7FFD8(319, &qword_1EDC10A78, &qword_1EBA45D10, &unk_1B7AA0B40, MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              type metadata accessor for LayoutItemImpressionInformation();
              sub_1B7A9A3C0();
              sub_1B7A98700();
              if (v6 <= 0x3F)
              {
                sub_1B7A9A8E0();
                sub_1B7A98700();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1B7A7FF74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B7A7FFD8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1B7A8012C()
{
  type metadata accessor for _ImpressionableLayoutViewModifier();
  sub_1B7A96BF0();

  return sub_1B7A7DE48();
}

uint64_t sub_1B7A802F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LayoutItemImpressionInformation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7A8035C(uint64_t a1)
{
  v2 = type metadata accessor for LayoutItemImpressionInformation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7A8044C()
{
  type metadata accessor for _ImpressionableLayoutViewModifier();

  return sub_1B7A7DBF4();
}

uint64_t sub_1B7A804FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LayoutItemImpressionInformation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_51Tm_0()
{
  v1 = type metadata accessor for _ImpressionableLayoutViewModifier();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  v4 = sub_1B7A99670();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = v1[9];
  v7 = sub_1B7A99A20();
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v6, v7);
  v8(v3 + v1[11], v7);
  swift_unknownObjectRelease();
  v9 = v1[14];
  v10 = sub_1B7A99DB0();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v3 + v9, v10);
  }

  j_j__swift_release(*(v3 + v1[15]), *(v3 + v1[15] + 8));

  return swift_deallocObject();
}

uint64_t _RequirementFailureView.init<>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for _RequirementFailureView();
  v12 = (a5 + *(result + 52));
  *v12 = sub_1B7A81BFC;
  v12[1] = v10;
  return result;
}

uint64_t _RequirementFailureView.init<>(fatal:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B7999DD8();

  v6 = sub_1B7A98080();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = v10 & 1;
  *(a3 + 24) = v12;
  *(a3 + 32) = sub_1B7A80B9C;
  *(a3 + 40) = result;
  return result;
}

uint64_t _RequirementFailureView.init(_:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for _RequirementFailureView();
  v9 = (a5 + *(result + 52));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t _RequirementFailureView.init<>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  (*(*(a6 - 8) + 32))(a7, a1, a6);
  result = type metadata accessor for _RequirementFailureView();
  v16 = (a7 + *(result + 52));
  *v16 = sub_1B7A715E8;
  v16[1] = v14;
  return result;
}

uint64_t sub_1B7A80B30@<X0>(uint64_t a1@<X8>)
{
  sub_1B7999DD8();

  result = sub_1B7A98080();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t _RequirementFailureView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v3 = a1[2];
  v92 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v91 = v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v90 = v72 - v6;
  v7 = sub_1B7A97D00();
  v97 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v96 = v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B7A97C80();
  v94 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v93 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v101 = a1;
  v12 = a1[5];
  v86 = v11;
  v113 = v11;
  v114 = MEMORY[0x1E6981748];
  v87 = v12;
  v115 = v12;
  v116 = MEMORY[0x1E6981710];
  v13 = sub_1B7A986B0();
  v88 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v82 = v72 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47438);
  v15 = sub_1B7A97590();
  v83 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v80 = v72 - v16;
  v17 = sub_1B7A97590();
  v84 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v81 = v72 - v18;
  v89 = v13;
  WitnessTable = swift_getWitnessTable();
  v20 = sub_1B7A817E4();
  v72[2] = WitnessTable;
  v111 = WitnessTable;
  v112 = v20;
  v85 = v15;
  v73 = swift_getWitnessTable();
  v109 = v73;
  v110 = v20;
  v21 = swift_getWitnessTable();
  v22 = sub_1B7A81848();
  v113 = v17;
  v114 = v9;
  v115 = v21;
  v116 = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v78 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v77 = v72 - v24;
  v113 = v17;
  v114 = v9;
  v95 = v9;
  v75 = v21;
  v115 = v21;
  v116 = v22;
  v74 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v103 = OpaqueTypeMetadata2;
  v104 = v7;
  v113 = OpaqueTypeMetadata2;
  v114 = v7;
  v100 = OpaqueTypeConformance2;
  v115 = OpaqueTypeConformance2;
  v116 = MEMORY[0x1E69803B8];
  v26 = swift_getOpaqueTypeMetadata2();
  v79 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v76 = v72 - v30;
  v31 = sub_1B7A99C00();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = v72 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = v72 - v36;
  v38 = sub_1B7A97B40();
  v98 = *(v38 - 8);
  v99 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v106 = v72 - v39;
  sub_1B7A99BF0();
  (*(v32 + 104))(v34, *MEMORY[0x1E69AB3E8], v31);
  LOBYTE(v20) = sub_1B7A99BE0();
  v40 = *(v32 + 8);
  v40(v34, v31);
  v41 = (v40)(v37, v31);
  if (v20)
  {
    MEMORY[0x1EEE9AC00](v41);
    v72[1] = v3;
    v42 = v86;
    v72[-6] = v3;
    v72[-5] = v42;
    v101 = v101[4];
    v43 = v87;
    v72[-4] = v101;
    v72[-3] = v43;
    v72[-2] = v102;
    v44 = v82;
    sub_1B7A98690();
    sub_1B7A98550();
    v45 = v80;
    v46 = v89;
    sub_1B7A983E0();

    (*(v88 + 8))(v44, v46);
    sub_1B7A98550();
    v47 = v81;
    v48 = v85;
    sub_1B7A981C0();

    (*(v83 + 8))(v45, v48);
    v49 = v93;
    sub_1B7A97C70();
    v50 = v77;
    v51 = v95;
    sub_1B7A980E0();
    (*(v94 + 8))(v49, v51);
    (*(v84 + 8))(v47, v17);
    v52 = v96;
    sub_1B7A97CF0();
    v53 = v28;
    v55 = v103;
    v54 = v104;
    v56 = v100;
    v57 = MEMORY[0x1E69803B8];
    sub_1B7A98180();
    (*(v97 + 8))(v52, v54);
    (*(v78 + 8))(v50, v55);
    v113 = v55;
    v114 = v54;
    v115 = v56;
    v116 = v57;
    v58 = swift_getOpaqueTypeConformance2();
    v59 = v76;
    sub_1B7957EE0(v53, v26, v58);
    v60 = *(v79 + 8);
    v60(v53, v26);
    sub_1B7957EE0(v59, v26, v58);
    v61 = v101;
    sub_1B79B5878(v53, v26);
    v62 = v53;
    v63 = v61;
    v60(v62, v26);
    v60(v59, v26);
  }

  else
  {
    v63 = v101[4];
    v64 = v90;
    v65 = v3;
    sub_1B7957EE0(v102, v3, v63);
    v66 = v91;
    sub_1B7957EE0(v64, v3, v63);
    v55 = v103;
    v54 = v104;
    v113 = v103;
    v114 = v104;
    v56 = v100;
    v115 = v100;
    v57 = MEMORY[0x1E69803B8];
    v116 = MEMORY[0x1E69803B8];
    swift_getOpaqueTypeConformance2();
    sub_1B7959A28(v66, v26, v65);
    v67 = *(v92 + 8);
    v67(v66, v65);
    v67(v64, v65);
  }

  v113 = v55;
  v114 = v54;
  v115 = v56;
  v116 = v57;
  v107 = swift_getOpaqueTypeConformance2();
  v108 = v63;
  v68 = v99;
  v69 = swift_getWitnessTable();
  v70 = v106;
  sub_1B7957EE0(v106, v68, v69);
  return (*(v98 + 8))(v70, v68);
}

unint64_t sub_1B7A817E4()
{
  result = qword_1EBA47430;
  if (!qword_1EBA47430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47430);
  }

  return result;
}

unint64_t sub_1B7A81848()
{
  result = qword_1EBA48618;
  if (!qword_1EBA48618)
  {
    sub_1B7A97C80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48618);
  }

  return result;
}

uint64_t sub_1B7A818A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v19[0] = a1;
  v19[1] = a6;
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v19 - v14;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a4;
  v19[5] = a5;
  v16 = type metadata accessor for _RequirementFailureView();
  (*(v19[0] + *(v16 + 52)))();
  sub_1B7957EE0(v12, a3, a5);
  v17 = *(v10 + 8);
  v17(v12, a3);
  sub_1B7957EE0(v15, a3, a5);
  v17(v15, a3);
}

uint64_t sub_1B7A81A7C@<X0>(uint64_t *a1@<X8>)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_1B7A985E0();

  *a1 = v2;
  return result;
}

unint64_t sub_1B7A81B70()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1B7958DD8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t ViewWillDisappearReason.init(initialPathCount:pageMetricsNavigationPath:isFlowStackSheetPresented:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v32 = a7;
  v33 = a3;
  v31 = a2;
  v30 = a1;
  v10 = sub_1B7A97480();
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45F08);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46648);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v28 - v18;
  if (a5)
  {
    v35 = a4;
    v36 = a5;
    v37 = a6 & 1;

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DF8);
    MEMORY[0x1B8CA9A40](&v34, v20);
    v21 = v34;

    if ((v21 & 1) == 0)
    {
      sub_1B7A99B90();
LABEL_13:
      sub_1B797D5AC(a4, a5);
      v26 = &qword_1EBA45F08;
      v27 = v33;
      return sub_1B7957888(v27, v26);
    }
  }

  if (v31)
  {
LABEL_12:
    sub_1B7A99B80();
    goto LABEL_13;
  }

  sub_1B79E3368(v33, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v22 = &qword_1EBA45F08;
    v23 = v15;
LABEL_11:
    sub_1B7957888(v23, v22);
    goto LABEL_12;
  }

  sub_1B7995CD4(v15, v19);
  MEMORY[0x1B8CA9A40](v16);
  v24 = sub_1B7A97440();
  result = (*(v29 + 8))(v12, v10);
  if (!__OFSUB__(v30, 1))
  {
    if (v24 == v30 - 1)
    {
      sub_1B7A99BA0();
      sub_1B797D5AC(a4, a5);
      sub_1B7957888(v33, &qword_1EBA45F08);
      v26 = &qword_1EBA46648;
      v27 = v19;
      return sub_1B7957888(v27, v26);
    }

    v22 = &qword_1EBA46648;
    v23 = v19;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t ViewWillDisappearReason.init(_:where:)(_BYTE *a1, char a2)
{
  if (*a1 > 2u)
  {
    return sub_1B7A99B80();
  }

  if (*a1 == 1)
  {
    if ((a2 & 1) == 0)
    {
      return sub_1B7A99BA0();
    }

    return sub_1B7A99B80();
  }

  if (a2)
  {
    return sub_1B7A99B80();
  }

  return sub_1B7A99B90();
}

uint64_t sub_1B7A81F6C@<X0>(void *a1@<X8>)
{
  result = sub_1B7A97760();
  *a1 = v3;
  return result;
}

uint64_t sub_1B7A81FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  type metadata accessor for FlowAlertAuthority(0);
  sub_1B7A821B8();

  v9[0] = sub_1B7A97490();
  v9[1] = v7;
  v9[2] = KeyPath;
  v10 = 0;
  v11 = v6;
  v12 = 0;
  MEMORY[0x1B8CA96D0](v9, a2, &type metadata for FlowAlertViewModifier, a3);
}

uint64_t View.alertIconBackgroundColor(_:)()
{
  swift_getKeyPath();
  sub_1B7A98150();
}

uint64_t sub_1B7A8211C()
{
  sub_1B7A82210();
  sub_1B7A97890();
  return v1;
}

uint64_t sub_1B7A82158()
{
  sub_1B7A82210();

  return sub_1B7A978A0();
}

unint64_t sub_1B7A821B8()
{
  result = qword_1EBA4A458;
  if (!qword_1EBA4A458)
  {
    type metadata accessor for FlowAlertAuthority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA4A458);
  }

  return result;
}

unint64_t sub_1B7A82210()
{
  result = qword_1EBA4A460;
  if (!qword_1EBA4A460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA4A460);
  }

  return result;
}

uint64_t sub_1B7A82274(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1B7A822BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B7A82318@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B7A98540();
  *a1 = result;
  return result;
}

uint64_t sub_1B7A82340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B7A8668C();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1B7A823C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v141 = a1;
  v161 = a2;
  v156 = sub_1B7A99F30();
  v155 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v120 = &v120 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA470D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v154 = &v120 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA4A468);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v157 = &v120 - v7;
  v160 = sub_1B7A973A0();
  v159 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v158 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1B7A97880();
  v122 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v121 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1B7A98F40();
  v123 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v143 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA4A470);
  MEMORY[0x1EEE9AC00](v165);
  v12 = &v120 - v11;
  v13 = type metadata accessor for FlowAlertAuthority.Presented(0);
  MEMORY[0x1EEE9AC00](v13);
  v146 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v144 = &v120 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v140 = &v120 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v137 = &v120 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v120 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v163 = (&v120 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v120 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v120 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA4A478);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v162 = &v120 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v145 = &v120 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v138 = &v120 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v139 = &v120 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v164 = &v120 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v136 = &v120 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v120 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v120 - v48;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA4A480);
  v142 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v168 = &v120 - v50;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA4A488);
  v149 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v147 = &v120 - v51;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA4A490);
  v152 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v150 = &v120 - v52;
  v135 = *v2;
  v171 = v2;
  v53 = v2[1];
  swift_getKeyPath();
  swift_getKeyPath();
  v169 = v53;
  sub_1B7A96F20();

  sub_1B7A864EC(v31, v28, type metadata accessor for FlowAlertAuthority.Presented);
  v170 = v13;
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1B7A86554(v28, type metadata accessor for FlowAlertAuthority.Presented);
    v54 = sub_1B7A99F50();
    (*(*(v54 - 8) + 56))(v46, 1, 1, v54);
  }

  else
  {
    v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47820) + 48);
    v54 = sub_1B7A99F50();
    v56 = *(v54 - 8);
    (*(v56 + 32))(v46, v28, v54);
    sub_1B7957888(&v28[v55], &qword_1EBA47828);
    (*(v56 + 56))(v46, 0, 1, v54);
  }

  sub_1B797E788(v46, v49, &qword_1EBA4A478);
  sub_1B7A99F50();
  v57 = *(v54 - 8);
  v166 = *(v57 + 6);
  v167 = v57 + 48;
  if (v166(v49, 1, v54) == 1)
  {
    sub_1B7957888(v49, &qword_1EBA4A478);
  }

  else
  {
    v58 = sub_1B7A99EB0();
    v60 = v59;
    (*(v57 + 1))(v49, v54);
    if (v60)
    {
      goto LABEL_8;
    }
  }

  v58 = 0;
  v60 = 0xE000000000000000;
LABEL_8:
  v181 = v58;
  v182 = v60;
  v129 = v60;
  type metadata accessor for FlowAlertAuthority(0);
  sub_1B7A821B8();
  sub_1B7A974A0();
  swift_getKeyPath();
  sub_1B7A974B0();

  swift_getKeyPath();
  sub_1B7A98820();

  sub_1B7957888(v12, &qword_1EBA4A470);
  v128 = v172;
  v127 = v173;
  v126 = v174;
  swift_getKeyPath();
  swift_getKeyPath();
  v61 = v163;
  sub_1B7A96F20();

  sub_1B7A864EC(v61, v23, type metadata accessor for FlowAlertAuthority.Presented);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1B7A86554(v23, type metadata accessor for FlowAlertAuthority.Presented);
    v62 = 1;
    v63 = v164;
  }

  else
  {
    v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47820) + 48);
    v63 = v164;
    (*(v57 + 4))(v164, v23, v54);
    sub_1B7957888(&v23[v64], &qword_1EBA47828);
    v62 = 0;
  }

  v164 = *(v57 + 7);
  v165 = (v57 + 56);
  (v164)(v63, v62, 1, v54);
  v65 = v136;
  v66 = sub_1B797E788(v63, v136, &qword_1EBA4A478);
  MEMORY[0x1EEE9AC00](v66);
  v163 = v57;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA4A498);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA4A4A0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA4A4A8);
  v70 = sub_1B797EC34(&qword_1EBA4A4B0, &qword_1EBA4A498);
  v71 = sub_1B7999DD8();
  v72 = sub_1B7A85308();
  v130 = sub_1B7A85470();
  v131 = v72;
  v132 = v71;
  v133 = v70;
  v134 = v69;
  v73 = MEMORY[0x1E69E6158];
  v135 = v68;
  v74 = v67;
  sub_1B7A983F0();

  sub_1B7957888(v65, &qword_1EBA4A478);

  swift_getKeyPath();
  swift_getKeyPath();
  v75 = v137;
  sub_1B7A96F20();

  v76 = v140;
  sub_1B7A864EC(v75, v140, type metadata accessor for FlowAlertAuthority.Presented);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1B7A86554(v76, type metadata accessor for FlowAlertAuthority.Presented);
    v77 = 1;
    v78 = v158;
    v79 = v154;
    v80 = v148;
    v81 = v162;
    v82 = v138;
  }

  else
  {
    v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47820) + 48);
    v82 = v138;
    v163[4](v138, v76, v54);
    sub_1B7957888(v76 + v83, &qword_1EBA47828);
    v77 = 0;
    v78 = v158;
    v79 = v154;
    v80 = v148;
    v81 = v162;
  }

  (v164)(v82, v77, 1, v54);
  v84 = v139;
  sub_1B797E788(v82, v139, &qword_1EBA4A478);
  if (v166(v84, 1, v54) == 1)
  {
    sub_1B7957888(v84, &qword_1EBA4A478);
  }

  else
  {
    sub_1B7A99EA0();
    (v163[1])(v84, v54);
    LOBYTE(v182) = *(v171 + 24);
    v85 = v171[2];
    v181 = v85;
    if (v182 == 1)
    {
    }

    else
    {

      sub_1B7A9AA10();
      v86 = sub_1B7A97E70();
      sub_1B7A96D30();

      v87 = v121;
      sub_1B7A97870();
      swift_getAtKeyPath();
      sub_1B7957888(&v181, &qword_1EBA4A4F0);
      (*(v122 + 8))(v87, v124);
      v85 = v172;
    }

    v184 = *(v171 + 40);
    v183 = v171[4];
    if (v184 != 1)
    {

      sub_1B7A9AA10();
      v88 = sub_1B7A97E70();
      sub_1B7A96D30();

      v89 = v121;
      sub_1B7A97870();
      swift_getAtKeyPath();
      sub_1B7957888(&v183, &qword_1EBA4A4F8);
      (*(v122 + 8))(v89, v124);
    }

    v90 = v143;
    sub_1B7A85558(v85);

    (*(v123 + 8))(v90, v125);
    v81 = v162;
  }

  v172 = v74;
  v173 = v73;
  v174 = v135;
  v175 = v134;
  v176 = v54;
  v177 = v133;
  v178 = v132;
  v179 = v131;
  v180 = v130;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v92 = v147;
  v93 = v168;
  sub_1B7A980D0();

  (*(v142 + 8))(v93, v80);
  swift_getKeyPath();
  swift_getKeyPath();
  v94 = v144;
  sub_1B7A96F20();

  v95 = v146;
  sub_1B7A864EC(v94, v146, type metadata accessor for FlowAlertAuthority.Presented);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1B7A86554(v95, type metadata accessor for FlowAlertAuthority.Presented);
    v96 = 1;
  }

  else
  {
    v97 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47820) + 48);
    v163[4](v81, v95, v54);
    sub_1B7957888(v95 + v97, &qword_1EBA47828);
    v96 = 0;
  }

  v98 = v160;
  v99 = v81;
  v100 = v156;
  v101 = v155;
  (v164)(v99, v96, 1, v54);
  v102 = v99;
  v103 = v145;
  sub_1B797E788(v102, v145, &qword_1EBA4A478);
  if (v166(v103, 1, v54) == 1)
  {
    v104 = &qword_1EBA4A478;
    v105 = v103;
LABEL_29:
    sub_1B7957888(v105, v104);
    v106 = v159;
    v107 = v157;
    (*(v159 + 56))(v157, 1, 1, v98);
    goto LABEL_30;
  }

  sub_1B7A99F40();
  (v163[1])(v103, v54);
  if ((*(v101 + 48))(v79, 1, v100) == 1)
  {
    v104 = &qword_1EBA470D0;
    v105 = v79;
    goto LABEL_29;
  }

  v108 = v120;
  (*(v101 + 16))(v120, v79, v100);
  v109 = (*(v101 + 88))(v108, v100);
  v106 = v159;
  v107 = v157;
  if (v109 == *MEMORY[0x1E69AB548])
  {
    sub_1B7A97370();
LABEL_36:
    (*(v106 + 56))(v107, 0, 1, v98);
    goto LABEL_38;
  }

  if (v109 == *MEMORY[0x1E69AB550])
  {
    sub_1B7A97380();
    goto LABEL_36;
  }

  (*(v159 + 56))(v157, 1, 1, v98);
  (*(v101 + 8))(v120, v100);
LABEL_38:
  (*(v101 + 8))(v79, v100);
  if ((*(v106 + 48))(v107, 1, v98) != 1)
  {
    (*(v106 + 32))(v78, v107, v98);
    goto LABEL_40;
  }

LABEL_30:
  sub_1B7A97390();
  if ((*(v106 + 48))(v107, 1, v98) != 1)
  {
    sub_1B7957888(v107, &qword_1EBA4A468);
  }

LABEL_40:
  v172 = v80;
  v173 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v110 = v150;
  v111 = v151;
  sub_1B7A981A0();
  (*(v106 + 8))(v78, v98);
  (*(v149 + 8))(v92, v111);
  v112 = sub_1B7A98A20();
  v114 = v113;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA4A4E0);
  v116 = v161;
  v117 = v161 + *(v115 + 36);
  sub_1B7A84874(v171, v117);
  v118 = (v117 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA4A4E8) + 36));
  *v118 = v112;
  v118[1] = v114;
  return (*(v152 + 32))(v116, v110, v153);
}

uint64_t sub_1B7A83B50@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = type metadata accessor for FlowAlertAuthority.Presented(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B79EB840(a1, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    result = sub_1B7A86554(v6, type metadata accessor for FlowAlertAuthority.Presented);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47820);
    sub_1B7957888(&v6[*(v9 + 48)], &qword_1EBA47828);
    v10 = sub_1B7A99F50();
    result = (*(*(v10 - 8) + 8))(v6, v10);
  }

  *a2 = EnumCaseMultiPayload == 0;
  return result;
}

uint64_t sub_1B7A83C80(uint64_t a1, __int128 *a2)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_1B7A99F10();
  swift_getKeyPath();
  v13 = *a2;
  v11 = *(a2 + 2);
  v12 = *(a2 + 24);
  v9 = *(a2 + 4);
  v10 = *(a2 + 40);
  v3 = swift_allocObject();
  v4 = a2[1];
  v3[1] = *a2;
  v3[2] = v4;
  *(v3 + 41) = *(a2 + 25);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1B7A865BC;
  *(v5 + 24) = v3;
  sub_1B7957820(&v13, v7, &qword_1EBA4A520);
  sub_1B7957820(&v11, v7, &qword_1EBA4A4F0);
  sub_1B7957820(&v9, v7, &qword_1EBA4A4F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA4A528);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA4A4C8);
  sub_1B797EC34(&qword_1EBA4A530, &qword_1EBA4A528);
  sub_1B7A8538C();
  sub_1B7A988B0();
}

uint64_t sub_1B7A83EC0@<X0>(__int128 *a1@<X2>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_1B7A98F80();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47018);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49E28);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v30 - v8;
  v30[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA4A4C8);
  MEMORY[0x1EEE9AC00](v30[0]);
  v11 = v30 - v10;
  sub_1B7A9A760();
  v30[1] = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = sub_1B7A99EE0();
  v14 = v13;
  v15 = sub_1B7A99EC0();
  if (v16)
  {
    sub_1B7A843E4(v15, v16, v6);
  }

  else
  {
    v17 = sub_1B7A96FC0();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  }

  sub_1B7A99EF0();
  if (v33)
  {
    sub_1B795C1E4(&v32, &v34);
  }

  else
  {
    sub_1B7A98F70();
    *(&v35 + 1) = sub_1B7A98D60();
    v36 = MEMORY[0x1E69AAF30];
    __swift_allocate_boxed_opaque_existential_1Tm(&v34);
    sub_1B7A98D50();
    if (v33)
    {
      sub_1B7957888(&v32, &qword_1EBA47020);
    }
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v9 + 10) = swift_getKeyPath();
  v9[120] = 0;
  v19 = *(v7 + 44);
  *&v9[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98);
  swift_storeEnumTagMultiPayload();
  v20 = &v9[*(v7 + 48)];
  *v20 = swift_getKeyPath();
  *(v20 + 1) = 0;
  v20[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49E30);
  *(v9 + 3) = v21;
  *(v9 + 4) = sub_1B797EC34(&qword_1EBA49E38, &qword_1EBA49E30);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v9);
  sub_1B797E788(v6, boxed_opaque_existential_1Tm, &qword_1EBA47018);
  v23 = (boxed_opaque_existential_1Tm + *(v21 + 36));
  *v23 = sub_1B7A8662C;
  v23[1] = v18;
  *(v9 + 9) = v36;
  v24 = v34;
  *(v9 + 56) = v35;
  *(v9 + 40) = v24;
  KeyPath = swift_getKeyPath();
  v34 = *a1;
  v39 = *(a1 + 2);
  v40 = *(a1 + 24);
  v37 = *(a1 + 4);
  v38 = *(a1 + 40);
  v26 = swift_allocObject();
  v27 = a1[1];
  v26[1] = *a1;
  v26[2] = v27;
  *(v26 + 41) = *(a1 + 25);
  sub_1B7957820(v9, v11, &qword_1EBA49E28);
  v28 = &v11[*(v30[0] + 36)];
  *v28 = KeyPath;
  v28[1] = sub_1B7A86684;
  v28[2] = v26;
  sub_1B7957820(&v34, &v32, &qword_1EBA4A520);
  sub_1B7957820(&v39, &v32, &qword_1EBA4A4F0);
  sub_1B7957820(&v37, &v32, &qword_1EBA4A4F8);
  sub_1B7957888(v9, &qword_1EBA49E28);
  sub_1B797E788(v11, v31, &qword_1EBA4A4C8);
}

uint64_t sub_1B7A843E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_1B7A99E80() == a1 && v6 == a2)
  {

LABEL_5:
    sub_1B7A96FA0();
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v7 = sub_1B7A9AE80();

  if (v7)
  {
    goto LABEL_5;
  }

  if (sub_1B7A99E70() == a1 && v12 == a2)
  {

LABEL_14:
    sub_1B7A96F90();
    goto LABEL_6;
  }

  v13 = sub_1B7A9AE80();

  if (v13)
  {
    goto LABEL_14;
  }

  v8 = 1;
LABEL_7:
  v9 = sub_1B7A96FC0();
  v10 = *(*(v9 - 8) + 56);

  return v10(a3, v8, 1, v9);
}

uint64_t sub_1B7A84510(uint64_t a1)
{
  v2 = type metadata accessor for FlowAlertAuthority.Presented(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();

  sub_1B7A864EC(v7, v4, type metadata accessor for FlowAlertAuthority.Presented);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1B7A86554(v4, type metadata accessor for FlowAlertAuthority.Presented);
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
  }

  else
  {
    v8 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47820) + 48)];
    v9 = *(v8 + 4);
    v10 = sub_1B7A99F50();
    v11 = *(*(v10 - 8) + 8);
    v12 = *v8;
    v14 = *(v8 + 1);
    v15 = v12;
    v11(v4, v10);
    v16 = v15;
    v17 = v14;
    v18 = v9;
    if (*(&v14 + 1))
    {
      sub_1B7957888(a1, &qword_1EBA47828);
      sub_1B795C1E4(&v16, a1);
    }
  }

  sub_1B7957888(&v16, &qword_1EBA47828);
}

uint64_t sub_1B7A84774@<X0>(uint64_t *a1@<X8>)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B7A99F20();
  if (v2)
  {
    sub_1B7999DD8();
    v3 = sub_1B7A98080();
    v5 = v4;
    v7 = v6;
    v9 = v8;

    v11 = v7 & 1;
  }

  else
  {

    v3 = 0;
    v5 = 0;
    v11 = 0;
    v9 = 0;
  }

  *a1 = v3;
  a1[1] = v5;
  a1[2] = v11;
  a1[3] = v9;
  return result;
}

uint64_t sub_1B7A84874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA4A510);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v37 = &v32 - v4;
  v34 = type metadata accessor for FlowAlertAuthority.Presented(0);
  MEMORY[0x1EEE9AC00](v34);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA4A470);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA4A518);
  MEMORY[0x1EEE9AC00](v35);
  v13 = &v32 - v12;
  sub_1B7A9A760();
  v36 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for FlowAlertAuthority(0);
  sub_1B7A821B8();
  sub_1B7A974A0();
  swift_getKeyPath();
  sub_1B7A974B0();

  swift_getKeyPath();
  sub_1B7A98820();

  sub_1B7957888(v11, &qword_1EBA4A470);
  v14 = v39[0];
  v15 = v39[1];
  v16 = v40;
  swift_getKeyPath();
  swift_getKeyPath();
  v17 = v33;
  sub_1B7A96F20();

  sub_1B7A864EC(v17, v6, type metadata accessor for FlowAlertAuthority.Presented);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47818) + 48);
    v19 = sub_1B7A99F80();
    v20 = *(v19 - 8);
    v21 = &v6[v18];
    v22 = v37;
    (*(v20 + 32))(v37, v21, v19);
    v23 = sub_1B7A96C20();
    (*(*(v23 - 8) + 8))(v6, v23);
    (*(v20 + 56))(v22, 0, 1, v19);
  }

  else
  {
    sub_1B7A86554(v6, type metadata accessor for FlowAlertAuthority.Presented);
    v24 = sub_1B7A99F80();
    v22 = v37;
    (*(*(v24 - 8) + 56))(v37, 1, 1, v24);
  }

  v43 = *(a1 + 16);
  v44 = *(a1 + 24);
  v41 = *(a1 + 32);
  v42 = *(a1 + 40);
  v25 = swift_allocObject();
  v26 = *(a1 + 16);
  v25[1] = *a1;
  v25[2] = v26;
  *(v25 + 41) = *(a1 + 25);
  *v13 = v14;
  *(v13 + 1) = v15;
  v13[16] = v16;
  v27 = v35;
  sub_1B797E788(v22, &v13[*(v35 + 76)], &qword_1EBA4A510);
  v28 = &v13[v27[20]];
  *v28 = sub_1B7A865B4;
  v28[1] = v25;
  v29 = &v13[v27[21]];
  *v29 = sub_1B7A8524C;
  v29[1] = 0;
  v30 = &v13[v27[22]];
  *v30 = sub_1B7A85264;
  v30[1] = 0;
  sub_1B797E788(v13, v38, &qword_1EBA4A518);

  sub_1B7957820(&v43, v39, &qword_1EBA4A4F0);
  sub_1B7957820(&v41, v39, &qword_1EBA4A4F8);
}

uint64_t sub_1B7A84E04@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = type metadata accessor for FlowAlertAuthority.Presented(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B79EB840(a1, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47818) + 48);
    v9 = sub_1B7A99F80();
    (*(*(v9 - 8) + 8))(&v6[v8], v9);
    v10 = sub_1B7A96C20();
    result = (*(*(v10 - 8) + 8))(v6, v10);
  }

  else
  {
    result = sub_1B7A86554(v6, type metadata accessor for FlowAlertAuthority.Presented);
  }

  *a2 = EnumCaseMultiPayload == 1;
  return result;
}

uint64_t sub_1B7A84F58@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v16 = a2;
  v3 = sub_1B7A97880();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B7A98F40();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A99F60();
  v20 = *(a1 + 24);
  v11 = *(a1 + 16);
  v19 = v11;
  if (v20 == 1)
  {
  }

  else
  {

    sub_1B7A9AA10();
    v12 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B7957888(&v19, &qword_1EBA4A4F0);
    (*(v4 + 8))(v6, v3);
    v11 = v17;
  }

  v18 = *(a1 + 40);
  v17 = *(a1 + 32);
  if (v18 != 1)
  {

    sub_1B7A9AA10();
    v13 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B7957888(&v17, &qword_1EBA4A4F8);
    (*(v4 + 8))(v6, v3);
  }

  v14 = sub_1B7A85558(v11);

  result = (*(v8 + 8))(v10, v7);
  *v16 = v14;
  return result;
}

uint64_t sub_1B7A8527C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  a2[1] = v4;
  if (!v4)
  {
    v5 = 0;
  }

  a2[2] = 0;
  a2[3] = v5;
  return result;
}

unint64_t sub_1B7A85308()
{
  result = qword_1EBA4A4B8;
  if (!qword_1EBA4A4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA4A4A0);
    sub_1B7A8538C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA4A4B8);
  }

  return result;
}

unint64_t sub_1B7A8538C()
{
  result = qword_1EBA4A4C0;
  if (!qword_1EBA4A4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA4A4C8);
    sub_1B797EC34(&qword_1EBA4A4D0, &qword_1EBA49E28);
    sub_1B797EC34(&qword_1EDC0EB30, &qword_1EBA49688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA4A4C0);
  }

  return result;
}

unint64_t sub_1B7A85470()
{
  result = qword_1EBA4A4D8;
  if (!qword_1EBA4A4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA4A4A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA4A4D8);
  }

  return result;
}

uint64_t sub_1B7A854EC@<X0>(uint64_t a1@<X8>)
{
  sub_1B7999DD8();

  result = sub_1B7A98080();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1B7A85558(uint64_t a1)
{
  v86 = a1;
  v1 = sub_1B7A98CC0();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA4A500);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v80 = &v65 - v5;
  v79 = type metadata accessor for MediaArtwork.BundleImageProtocol.MatchedResource();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1B7A98600();
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46488);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v77 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v65 - v12;
  v82 = sub_1B7A99050();
  v85 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v74 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v65 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v75 = &v65 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA4A508);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v65 - v20;
  v22 = type metadata accessor for MediaArtwork.SystemImageProtocol.MatchedSymbol();
  v83 = *(v22 - 8);
  v84 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v70 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AF8);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v65 - v25;
  v27 = sub_1B7A96B90();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v65 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s9JetEngine12MediaArtworkV01_aB8_SwiftUIE5SizedV9_resource9withScaleAA0cD8Resource_pSg12CoreGraphics7CGFloatV_tF_0();
  if (!v88[3])
  {
    sub_1B7957888(v88, &qword_1EBA46B48);
    (*(v28 + 56))(v26, 1, 1, v27);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48AC0);
  v31 = swift_dynamicCast();
  (*(v28 + 56))(v26, v31 ^ 1u, 1, v27);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
LABEL_9:
    v37 = &qword_1EBA47AF8;
    v38 = v26;
    goto LABEL_36;
  }

  v65 = v3;
  v67 = v7;
  v68 = v28;
  v32 = *(v28 + 32);
  v76 = v30;
  v69 = v27;
  v32(v30, v26, v27);
  v33 = *(v86 + 16);
  v34 = v86 + 32;

  if (v33)
  {
    v35 = v33;
    v36 = v34;
    while (1)
    {
      sub_1B7999E90(v36, v88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46408);
      if (swift_dynamicCast())
      {
        break;
      }

      v36 += 40;
      if (!--v35)
      {
        goto LABEL_11;
      }
    }

    sub_1B7999E90(v36, v88);
    result = swift_dynamicCast();
    if (!result)
    {
      __break(1u);
LABEL_39:
      __break(1u);
      return result;
    }
  }

LABEL_11:
  if (qword_1EBA45B40 != -1)
  {
    swift_once();
  }

  v40 = sub_1B7A99080();
  __swift_project_value_buffer(v40, qword_1EBA47598);
  sub_1B7A99070();
  v41 = v85;
  v42 = v82;
  v66 = *(v85 + 48);
  if (v66(v13, 1, v82) == 1)
  {
    sub_1B7957888(v13, &qword_1EBA46488);
    (*(v83 + 56))(v21, 1, 1, v84);
  }

  else
  {
    v43 = v75;
    (*(v41 + 32))(v75, v13, v42);
    v44 = v81;
    (*(v41 + 16))(v81, v43, v42);
    sub_1B79D090C(v44, v21);
    (*(v41 + 8))(v43, v42);
    if ((*(v83 + 48))(v21, 1, v84) != 1)
    {

      v50 = v70;
      sub_1B7A864EC(v21, v70, type metadata accessor for MediaArtwork.SystemImageProtocol.MatchedSymbol);
      sub_1B79D0FEC(v50);
      v51 = v72;
      v52 = v71;
      v53 = v73;
      (*(v72 + 104))(v71, *MEMORY[0x1E6981630], v73);
      v54 = sub_1B7A98670();

      (*(v51 + 8))(v52, v53);
      sub_1B7A86554(v50, type metadata accessor for MediaArtwork.SystemImageProtocol.MatchedSymbol);
      (*(v68 + 8))(v76, v69);
      return v54;
    }
  }

  v84 = v40;
  sub_1B7957888(v21, &qword_1EBA4A508);
  if (!v33)
  {
LABEL_24:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46480);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1B7A9D170;
    *(v46 + 32) = [objc_opt_self() mainBundle];
    v47 = v67;
    v48 = v77;
    v49 = v84;
    goto LABEL_29;
  }

  while (1)
  {
    sub_1B7999E90(v34, v88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46408);
    if (swift_dynamicCast())
    {
      break;
    }

    v87 = 0;

LABEL_19:
    v34 += 40;
    if (!--v33)
    {
      goto LABEL_24;
    }
  }

  v45 = v87;

  if (!v45)
  {
    goto LABEL_19;
  }

  sub_1B7999E90(v34, v88);
  result = swift_dynamicCast();
  if (result)
  {
    v46 = v87;
  }

  else
  {
    v46 = 0;
    v87 = 0;
  }

  v47 = v67;
  v48 = v77;
  v55 = v84;
  if (!v46)
  {
    goto LABEL_39;
  }

  v49 = v55;
LABEL_29:
  if (qword_1EBA45B30 != -1)
  {
    v64 = v49;
    swift_once();
    v49 = v64;
  }

  __swift_project_value_buffer(v49, qword_1EBA46468);
  sub_1B7A99070();
  if (v66(v48, 1, v42) == 1)
  {

    sub_1B7957888(v48, &qword_1EBA46488);
    v56 = v80;
    (*(v78 + 56))(v80, 1, 1, v79);
    goto LABEL_35;
  }

  v57 = v85;
  v58 = v74;
  (*(v85 + 32))(v74, v48, v42);
  v59 = v81;
  (*(v57 + 16))(v81, v58, v42);
  v56 = v80;
  sub_1B798B374(v59, v80);
  (*(v57 + 8))(v58, v42);
  if ((*(v78 + 48))(v56, 1, v79) == 1)
  {

LABEL_35:
    (*(v68 + 8))(v76, v69);
    v37 = &qword_1EBA4A500;
    v38 = v56;
LABEL_36:
    sub_1B7957888(v38, v37);
    return 0;
  }

  else
  {
    sub_1B7A864EC(v56, v47, type metadata accessor for MediaArtwork.BundleImageProtocol.MatchedResource);
    v88[0] = v46;
    sub_1B798BDD0(v47);

    v60 = v72;
    v61 = v71;
    v62 = v73;
    (*(v72 + 104))(v71, *MEMORY[0x1E6981630], v73);
    v63 = sub_1B7A98670();

    (*(v60 + 8))(v61, v62);
    sub_1B7A86554(v47, type metadata accessor for MediaArtwork.BundleImageProtocol.MatchedResource);
    (*(v68 + 8))(v76, v69);
    return v63;
  }
}

uint64_t sub_1B7A864EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7A86554(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B7A865C4(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA4A538);
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t objectdestroyTm_8()
{

  sub_1B79A5B8C(*(v0 + 32), *(v0 + 40));
  sub_1B795AE10(*(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

unint64_t sub_1B7A8668C()
{
  result = qword_1EBA4A540;
  if (!qword_1EBA4A540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA4A540);
  }

  return result;
}

unint64_t sub_1B7A866E0()
{
  result = qword_1EBA4A548;
  if (!qword_1EBA4A548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA4A4E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA4A488);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA4A480);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA4A498);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA4A4A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA4A4A8);
    sub_1B7A99F50();
    sub_1B797EC34(&qword_1EBA4A4B0, &qword_1EBA4A498);
    sub_1B7999DD8();
    sub_1B7A85308();
    sub_1B7A85470();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1B797EC34(&qword_1EBA4A550, &qword_1EBA4A4E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA4A548);
  }

  return result;
}

uint64_t MediaArtwork.Sized.format(_:withQuality:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B7A98F40();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B79A5E84(v1, a1);
  sub_1B7A98EF0();
  return (*(v4 + 40))(a1, v6, v3);
}

uint64_t type metadata accessor for MediaArtwork.Sized()
{
  result = qword_1EBA4A558;
  if (!qword_1EBA4A558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MediaArtwork.resize(_:croppedTo:)()
{
  v1 = sub_1B7A98F40();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1, v3);
  sub_1B7A98F00();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1B7A86BC0()
{
  result = sub_1B7A98F40();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t MediaArtworkProtocol.cache<A>(_:allowStandaloneFetches:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v15 = *(a3 - 8);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v7, v16);
  v21[0] = a3;
  v21[1] = a4;
  v21[2] = a5;
  v21[3] = a6;
  v19 = _s22_CacheProtocolModifierVMa();
  *(a7 + *(v19 + 52)) = a1;
  (*(v15 + 32))(a7, v18, a3);
  *(a7 + *(v19 + 56)) = a2;
  return swift_unknownObjectRetain();
}

uint64_t sub_1B7A86D78()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B7A86E0C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_1B7A86F60(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v18 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *v18 = v19;
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_1B7A871F4(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v94 = a1;
  v4 = *(a2 + 32);
  v5 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for MediaArtwork.ProtocolRequest();
  v82 = *(v7 - 8);
  v83 = v7;
  v79 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v90 = &v74 - v8;
  v84 = v3;
  v9 = *(v3 - 8);
  v3 -= 8;
  v80 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v77 = v11;
  v91 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B7A96D70();
  v88 = *(v12 - 8);
  v89 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v76 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v74 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v75 = &v74 - v18;
  v19 = *(v3 + 60);
  v78 = v2;
  v20 = *(v2 + v19);
  v21 = *(v3 + 32);
  v22 = swift_getAssociatedTypeWitness();
  v23 = *(v3 + 48);
  v86 = v4;
  v81 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v92 = v21;
  v93 = v23;
  v87 = AssociatedTypeWitness;
  v85 = v20;
  v25 = sub_1B7A2BF40(v94, v21, v22, AssociatedTypeWitness, v23, AssociatedConformanceWitness, 0.01);
  v26 = v25;
  if (!(v25 >> 62))
  {
    v75 = v22;
    if (qword_1EBA45B80 != -1)
    {
      swift_once();
    }

    v76 = AssociatedConformanceWitness;
    v34 = sub_1B7A96DA0();
    __swift_project_value_buffer(v34, qword_1EBA507B8);
    v35 = v16;
    sub_1B7A96D60();
    v36 = sub_1B7A96D90();
    v37 = sub_1B7A9AAA0();
    if (sub_1B7A9AB50())
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      v39 = sub_1B7A96D50();
      _os_signpost_emit_with_name_impl(&dword_1B7954000, v36, v37, v39, "Image.CacheFoundClosestMatch", "", v38, 2u);
      MEMORY[0x1B8CACB70](v38, -1, -1);
    }

    (*(v88 + 8))(v35, v89);
    v40 = v84;
    LODWORD(v89) = *(v78 + *(v84 + 56));
    v41 = v80;
    (*(v80 + 16))(v91);
    v43 = v82;
    v42 = v83;
    (*(v82 + 16))(v90, v94, v83);
    v44 = (*(v41 + 80) + 56) & ~*(v41 + 80);
    v45 = (v77 + v44 + *(v43 + 80)) & ~*(v43 + 80);
    v46 = swift_allocObject();
    *&v47 = v81;
    *(&v47 + 1) = v92;
    *&v48 = v86;
    *(&v48 + 1) = v93;
    *(v46 + 16) = v47;
    *(v46 + 32) = v48;
    *(v46 + 48) = v26;
    (*(v41 + 32))(v46 + v44, v91, v40);
    (*(v43 + 32))(v46 + v45, v90, v42);
    v49 = sub_1B7A99CB0();
    v50 = swift_getAssociatedTypeWitness();

    WitnessTable = swift_getWitnessTable();
    v52 = swift_getAssociatedConformanceWitness();
    v95 = v49;
    v96 = v50;
    v97 = WitnessTable;
    v98 = v52;
    v53 = sub_1B7A99A60();
    v54 = swift_getWitnessTable();
    v27 = sub_1B7A2C690(v94, (v89 & 1) == 0, sub_1B7A87D98, v46, v92, v53, v87, v93, v54, v76);

    goto LABEL_18;
  }

  if (v25 >> 62 != 1)
  {
    if (qword_1EBA45B80 != -1)
    {
      swift_once();
    }

    v76 = AssociatedConformanceWitness;
    v55 = sub_1B7A96DA0();
    __swift_project_value_buffer(v55, qword_1EBA507B8);
    v56 = v75;
    sub_1B7A96D60();
    v57 = sub_1B7A96D90();
    v58 = sub_1B7A9AAA0();
    if (sub_1B7A9AB50())
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      v60 = sub_1B7A96D50();
      _os_signpost_emit_with_name_impl(&dword_1B7954000, v57, v58, v60, "Image.CacheMiss", "", v59, 2u);
      MEMORY[0x1B8CACB70](v59, -1, -1);
    }

    (*(v88 + 8))(v56, v89);
    v61 = v84;
    LODWORD(v89) = *(v78 + *(v84 + 56));
    v62 = v80;
    (*(v80 + 16))(v91);
    v63 = v82;
    v64 = v83;
    v65 = v90;
    (*(v82 + 16))(v90, v94, v83);
    v66 = (*(v62 + 80) + 48) & ~*(v62 + 80);
    v67 = (v77 + v66 + *(v63 + 80)) & ~*(v63 + 80);
    v68 = swift_allocObject();
    *&v69 = v81;
    *(&v69 + 1) = v92;
    *&v70 = v86;
    *(&v70 + 1) = v93;
    *(v68 + 16) = v69;
    *(v68 + 32) = v70;
    (*(v62 + 32))(v68 + v66, v91, v61);
    (*(v63 + 32))(v68 + v67, v65, v64);
    v71 = swift_getAssociatedTypeWitness();
    v72 = swift_getAssociatedConformanceWitness();
    v27 = sub_1B7A2C690(v94, (v89 & 1) == 0, sub_1B7A87ED0, v68, v92, v71, v87, v93, v72, v76);
LABEL_18:

    return v27;
  }

  v27 = v25 & 0x3FFFFFFFFFFFFFFFLL;
  if (qword_1EBA45B80 != -1)
  {
    swift_once();
  }

  v28 = sub_1B7A96DA0();
  __swift_project_value_buffer(v28, qword_1EBA507B8);
  v29 = v76;
  sub_1B7A96D60();
  v30 = sub_1B7A96D90();
  v31 = sub_1B7A9AAA0();
  if (sub_1B7A9AB50())
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = sub_1B7A96D50();
    _os_signpost_emit_with_name_impl(&dword_1B7954000, v30, v31, v33, "Image.CacheFoundExactMatch", "", v32, 2u);
    MEMORY[0x1B8CACB70](v32, -1, -1);
  }

  (*(v88 + 8))(v29, v89);
  return v27;
}

uint64_t sub_1B7A87B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = v16 - v13;
  v16[1] = a1;
  (*(a6 + 88))(a3, a4, a6, v12);
  sub_1B7A99CB0();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_1B7A9A110();
  return (*(v11 + 8))(v14, AssociatedTypeWitness);
}

uint64_t sub_1B7A87D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1B7A871F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7A87D98()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(_s22_CacheProtocolModifierVMa() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  swift_getAssociatedTypeWitness();
  v7 = *(type metadata accessor for MediaArtwork.ProtocolRequest() - 8);
  v8 = v0[6];
  v9 = v0 + ((v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_1B7A87B54(v8, v0 + v5, v9, v1, v2, v3);
}

uint64_t sub_1B7A87ED0()
{
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);
  v1 = *(_s22_CacheProtocolModifierVMa() - 8);
  v2 = ((*(v1 + 80) + 48) & ~*(v1 + 80)) + *(v1 + 64);
  swift_getAssociatedTypeWitness();
  v3 = *(type metadata accessor for MediaArtwork.ProtocolRequest() - 8);
  return (*(v5 + 88))(v0 + ((v2 + *(v3 + 80)) & ~*(v3 + 80)), v6, v5);
}

uint64_t _s22_OneShotActionProtocolVMa()
{
  result = qword_1EBA4A5E8;
  if (!qword_1EBA4A5E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B7A88078()
{
  result = sub_1B7958DD8();
  if (v1 <= 0x3F)
  {
    result = sub_1B7A99080();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B7A880FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7A88120, 0, 0);
}

uint64_t sub_1B7A88120()
{
  v4 = (**(v0 + 24) + ***(v0 + 24));
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B7A88214;
  v2 = *(v0 + 32);

  return v4(v2);
}

uint64_t sub_1B7A88214(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B7A88360, 0, 0);
  }
}

uint64_t sub_1B7A883AC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AB0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v13 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B79E0BD8(v4, v13);
  sub_1B79E75F4(a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + v14 + *(v7 + 80)) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_1B7A88574(v13, v16 + v14);
  sub_1B79E7664(v9, v16 + v15);
  return sub_1B7A98BD0();
}

uint64_t sub_1B7A88574(uint64_t a1, uint64_t a2)
{
  v4 = _s22_OneShotActionProtocolVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7A885D8(uint64_t a1)
{
  v3 = v2;
  v5 = *(_s22_OneShotActionProtocolVMa() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AB0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1B798D338;

  return sub_1B7A880FC(a1, v1 + v6, v1 + v9);
}

uint64_t sub_1B7A88720()
{
  result = sub_1B7A97480();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B7A887C0()
{
  v0 = sub_1B7A97480();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B7A99350();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8);
  sub_1B7A98D10();
  *(swift_allocObject() + 16) = xmmword_1B7A9C180;
  sub_1B7A98C40();
  sub_1B7A9A1E0();
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  (*(v5 + 104))(v7, *MEMORY[0x1E69AB100], v4);
  sub_1B7A99E20();
  v8 = v13;

  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v14);
  v9 = qword_1EBA507D0;
  swift_beginAccess();
  v10 = *(v1 + 16);
  v10(v3, v8 + v9, v0);
  v11 = sub_1B7A97460();
  result = (*(v1 + 8))(v3, v0);
  if ((v11 & 1) == 0)
  {
    v10(v3, v8 + v9, v0);
    sub_1B7A973F0();
    return sub_1B7A898C8(v3);
  }

  return result;
}

uint64_t sub_1B7A88ABC()
{
  v16 = sub_1B7A97480();
  v0 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v2 = v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v15 - v4;
  v6 = sub_1B7A99350();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8);
  sub_1B7A98D10();
  *(swift_allocObject() + 16) = xmmword_1B7A9C180;
  sub_1B7A98C40();
  sub_1B7A9A1E0();
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  (*(v7 + 104))(v9, *MEMORY[0x1E69AB100], v6);
  sub_1B7A99E20();

  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1(v17);
  v10 = qword_1EBA507D0;
  v11 = v15[1];
  swift_beginAccess();
  v12 = *(v0 + 16);
  v13 = v16;
  v12(v5, v11 + v10, v16);
  sub_1B7A97440();
  (*(v0 + 8))(v5, v13);
  v12(v2, v11 + v10, v13);
  sub_1B7A973F0();
  return sub_1B7A898C8(v2);
}

uint64_t sub_1B7A88DD8()
{
  v1 = sub_1B7A97480();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = qword_1EBA507D0;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  v6 = sub_1B7A97460();
  (*(v2 + 8))(v4, v1);
  return v6 & 1;
}

uint64_t sub_1B7A88EE8()
{
  v1 = type metadata accessor for FlowAlertAuthority.Presented(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  if (*(v0 + 32))
  {
    v7 = *(v0 + 32);
  }

  else
  {
    type metadata accessor for FlowAlertAuthority(0);
    v7 = swift_allocObject();
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1B79EB840(v6, v3);
    sub_1B7A96EE0();
    sub_1B79DE150(v6);
    swift_endAccess();
    *(v0 + 32) = v7;
  }

  return v7;
}

uint64_t sub_1B7A89028(uint64_t a1, int a2)
{
  v3 = v2;
  v43 = a2;
  v37 = a1;
  v5 = *v2;
  v6 = sub_1B7A97480();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v5[10];
  v42 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v34 - v10;
  v12 = v5[12];
  v38 = v5[11];
  v11 = v38;
  v39 = v12;
  v13 = type metadata accessor for FlowStackAuthority.PathComponent();
  v14 = *(v13 - 8);
  v44 = v13;
  v45 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v40 = &v34 - v15;
  v16 = sub_1B7A99350();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B7A98CC0();
  MEMORY[0x1EEE9AC00](v20 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8);
  sub_1B7A98D10();
  *(swift_allocObject() + 16) = xmmword_1B7A9C180;
  sub_1B7A98CB0();
  sub_1B7A98CA0();
  v21 = a1;
  v22 = v39;
  v23 = sub_1B7A8B06C(v21, v8, v11, v39);
  v47 = MEMORY[0x1E69E6158];
  v46[0] = v23;
  v46[1] = v24;
  sub_1B7A98C60();
  sub_1B7957888(v46, &qword_1EBA46B50);
  sub_1B7A98CA0();
  sub_1B7A98CD0();
  sub_1B7A9A1E0();
  __swift_project_boxed_opaque_existential_1(v46, v47);
  (*(v17 + 104))(v19, *MEMORY[0x1E69AB100], v16);
  v25 = v40;
  sub_1B7A99E20();

  (*(v17 + 8))(v19, v16);
  __swift_destroy_boxed_opaque_existential_1(v46);
  v26 = v41;
  (*(v42 + 16))(v41, v37, v8);
  sub_1B7A899FC(v26, v8, v38, v22, v25);
  if (v43)
  {
    v27 = qword_1EBA507D0;
    swift_beginAccess();
    v28 = v3 + v27;
    v29 = v36;
    (*(v34 + 16))(v36, v28, v35);
    v30 = v44;
    swift_getWitnessTable();
    sub_1B7A97450();
    sub_1B7A898C8(v29);
    v31 = v30;
  }

  else
  {
    v46[0] = 0;
    v32 = sub_1B7A97160();
    MEMORY[0x1EEE9AC00](v32);
    *(&v34 - 2) = v3;
    *(&v34 - 1) = v25;
    sub_1B7A97600();

    v31 = v44;
  }

  return (*(v45 + 8))(v25, v31);
}

uint64_t sub_1B7A895C8()
{
  v0 = swift_allocObject();
  sub_1B7A89D78();
  return v0;
}

uint64_t sub_1B7A89600()
{
  if (sub_1B7A896FC())
  {
    v0 = sub_1B7A29804();

    return v0;
  }

  else
  {
  }
}

uint64_t sub_1B7A89660()
{
  v0 = sub_1B7A8995C();

  v1 = sub_1B7A29318();

  if (!v1)
  {
    return v0;
  }

  do
  {
    sub_1B7A29804();
    v2 = sub_1B7A8995C();

    v3 = sub_1B7A29318();
  }

  while (v3);
  return v2;
}

uint64_t sub_1B7A896FC()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    swift_retain_n();
    v2 = sub_1B7A29318();

    if (v2)
    {
      v3 = *(sub_1B7A29804() + 24);

      if (v3)
      {
        v4 = v1;
        while (1)
        {
          v1 = v3;
          if (!sub_1B7A29318())
          {
            break;
          }

          v3 = *(sub_1B7A29804() + 24);

          v4 = v1;
          if (!v3)
          {
            return v1;
          }
        }

        return v4;
      }
    }

    else
    {

      return 0;
    }
  }

  return v1;
}

uint64_t sub_1B7A897C8()
{
  if (sub_1B7A896FC())
  {
    sub_1B7A29804();
    v0 = sub_1B7A88EE8();

    return v0;
  }

  else
  {

    return sub_1B7A88EE8();
  }
}

uint64_t sub_1B7A89840@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EBA507D0;
  swift_beginAccess();
  v4 = sub_1B7A97480();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1B7A898C8(uint64_t a1)
{
  sub_1B7A8A668();
  v3 = qword_1EBA507D0;
  swift_beginAccess();
  v4 = sub_1B7A97480();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1B7A8995C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    type metadata accessor for FlowStackSheetAuthority();
    v1 = sub_1B7A298DC();

    sub_1B7A8B698(v2);
  }

  return v1;
}

uint64_t sub_1B7A899FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A9AC60();
  v13 = type metadata accessor for FlowStackAuthority.PathComponent();
  sub_1B7A99320();
  (*(v10 + 16))(v12, a1, a2);
  v14 = sub_1B7A8B06C(v12, a2, a3, a4);
  v16 = v15;
  v17 = *(v10 + 8);
  v17(a1, a2);
  result = (v17)(v12, a2);
  v19 = (a5 + *(v13 + 48));
  *v19 = v14;
  v19[1] = v16;
  return result;
}

uint64_t sub_1B7A89B6C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1B7A9A470() & 1;
}

uint64_t sub_1B7A89C04()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return sub_1B7A9A3F0();
}

uint64_t sub_1B7A89C9C()
{
  sub_1B7A9AF80();
  sub_1B7A89C04();
  return sub_1B7A9AFA0();
}

uint64_t sub_1B7A89CEC()
{
  sub_1B7A9AF80();
  sub_1B7A89C04();
  return sub_1B7A9AFA0();
}

uint64_t sub_1B7A89D30(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));

  return v2;
}

void *sub_1B7A89D78()
{
  v1 = sub_1B7A97480();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 0;
  sub_1B7A97470();
  (*(v2 + 32))(v0 + qword_1EBA507D0, v4, v1);
  return v0;
}

uint64_t sub_1B7A89E50()
{
  v1 = v0;
  sub_1B7A9AB60();
  v2 = sub_1B7A96F40();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  if (*(v0 + 16))
  {

    sub_1B7A96EB0();
  }

  v6 = *(v0 + 24);
  if (v6)
  {

    sub_1B7A29F8C();

    swift_getWitnessTable();
    v6 = sub_1B7A96F60();

    (*(v3 + 8))(v5, v2);
  }

  *(v1 + 16) = v6;
}

uint64_t sub_1B7A89FD0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_1B7A9A7E0();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a2;

  sub_1B7A8A3B8(0, 0, v5, &unk_1B7AA9978, v7);

  sub_1B7957888(v5, &qword_1EBA46B40);
}

uint64_t sub_1B7A8A15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B7A8A17C, 0, 0);
}

uint64_t sub_1B7A8A17C()
{
  sub_1B7A9A760();
  *(v0 + 32) = sub_1B7A9A750();
  v2 = sub_1B7A9A710();

  return MEMORY[0x1EEE6DFA0](sub_1B7A8A210, v2, v1);
}

uint64_t sub_1B7A8A210()
{

  sub_1B7A8A2B8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7A8A2B8()
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getWitnessTable();
  sub_1B7A96EC0();
  sub_1B7A96ED0();
}

uint64_t sub_1B7A8A3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1B7A6471C(a3, v25 - v10);
  v12 = sub_1B7A9A7E0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1B7957888(v11, &qword_1EBA46B40);
  }

  else
  {
    sub_1B7A9A7D0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B7A9A710();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B7A9A4F0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1B7A8A668()
{
  v1 = sub_1B7A97480();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = qword_1EBA507D0;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  sub_1B7A8B338();
  (*(v2 + 8))(v4, v1);
  swift_getWitnessTable();
  sub_1B7A96EC0();
  sub_1B7A96ED0();
}

uint64_t sub_1B7A8A7E0(uint64_t a1)
{
  v2 = sub_1B7A97480();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = qword_1EBA507D0;
  swift_beginAccess();
  (*(v3 + 16))(v5, a1 + v6, v2);
  type metadata accessor for FlowStackAuthority.PathComponent();
  swift_getWitnessTable();
  sub_1B7A97450();
  sub_1B7A898C8(v5);
}

uint64_t sub_1B7A8A9C0()
{

  v1 = qword_1EBA507D0;
  v2 = sub_1B7A97480();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1B7A8AA38()
{
  sub_1B7A8A9C0();

  return swift_deallocClassInstance();
}

uint64_t sub_1B7A8AAA8()
{
  v4 = MEMORY[0x1E69E7CC0];
  sub_1B7A97430();
  if (*(v4 + 16))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49158);
    sub_1B7A4569C();
    v0 = sub_1B7A9A430();
    v2 = v1;

    MEMORY[0x1B8CAB750](v0, v2);

    MEMORY[0x1B8CAB750](93, 0xE100000000000000);

    return 91;
  }

  else
  {

    return 23899;
  }
}

uint64_t sub_1B7A8ABD4(uint64_t a1, char **a2)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA4A690);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - v5;
  v7 = sub_1B7A97410();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  v8 = *(v4 + 44);
  sub_1B79DE1B8();
  sub_1B7A9A920();
  sub_1B7A9A960();
  if (*&v6[v8] != v36[0])
  {
    v10 = &unk_1EBA47840;
    do
    {
      v12 = sub_1B7A9A9E0();
      sub_1B7999E90(v13, v39);
      v12(v36, 0);
      sub_1B7A9A970();
      sub_1B795C1E4(v39, v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA4A698);
      if (swift_dynamicCast())
      {
        v14 = v10;
        sub_1B795C1E4(v33, v36);
        v15 = v37;
        v16 = v38;
        __swift_project_boxed_opaque_existential_1(v36, v37);
        v17 = (*(v16 + 8))(v15, v16);
        v19 = v18;
        v20 = v32;
        v21 = *v32;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v20 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v21 = sub_1B7988144(0, *(v21 + 2) + 1, 1, v21);
          *v32 = v21;
        }

        v24 = *(v21 + 2);
        v23 = *(v21 + 3);
        if (v24 >= v23 >> 1)
        {
          v21 = sub_1B7988144((v23 > 1), v24 + 1, 1, v21);
          *v32 = v21;
        }

        *(v21 + 2) = v24 + 1;
        v25 = &v21[16 * v24];
        *(v25 + 4) = v17;
        *(v25 + 5) = v19;
        __swift_destroy_boxed_opaque_existential_1(v36);
        v10 = v14;
      }

      else
      {
        v34 = 0;
        memset(v33, 0, sizeof(v33));
        sub_1B7957888(v33, &qword_1EBA4A6A0);
        v26 = v32;
        v27 = *v32;
        v28 = swift_isUniquelyReferenced_nonNull_native();
        *v26 = v27;
        if ((v28 & 1) == 0)
        {
          v27 = sub_1B7988144(0, *(v27 + 2) + 1, 1, v27);
          *v32 = v27;
        }

        v30 = *(v27 + 2);
        v29 = *(v27 + 3);
        if (v30 >= v29 >> 1)
        {
          v27 = sub_1B7988144((v29 > 1), v30 + 1, 1, v27);
          *v32 = v27;
        }

        *(v27 + 2) = v30 + 1;
        v11 = &v27[16 * v30];
        *(v11 + 4) = 0x296D65746928;
        *(v11 + 5) = 0xE600000000000000;
      }

      sub_1B7A9A960();
    }

    while (*&v6[v8] != v36[0]);
  }

  return sub_1B7957888(v6, &qword_1EBA4A690);
}

uint64_t sub_1B7A8AF94()
{
  v0 = sub_1B7A99810();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA4A6A8);
  __swift_allocate_value_buffer(v1, qword_1EBA4A5F8);
  __swift_project_value_buffer(v1, qword_1EBA4A5F8);
  sub_1B7A99800();
  return sub_1B7A99010();
}

uint64_t sub_1B7A8B06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v20 = a3;
  v21 = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v18);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1Tm, a1, a2);
  sub_1B7A99550();
  sub_1B7A99540();
  if (qword_1EBA45BA8 != -1)
  {
    swift_once();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA4A6A8);
  __swift_project_value_buffer(v7, qword_1EBA4A5F8);
  sub_1B7A98E40();

  if (LOBYTE(v15[0]) == 2 || (v15[0] & 1) == 0)
  {
    v16 = 0;
    v17 = 0xE000000000000000;
    MEMORY[0x1B8CAB750](0x69286E6F69746341, 0xEB00000000203A64);
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v15[3] = swift_getAssociatedTypeWitness();
    v15[4] = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1Tm(v15);
    sub_1B7A9AC60();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47840);
    sub_1B7A9AD50();
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1B8CAB750](41, 0xE100000000000000);
    v12 = v16;
  }

  else
  {
    v8 = __swift_project_boxed_opaque_existential_1(v18, v19);
    v9 = MEMORY[0x1EEE9AC00](v8);
    (*(v11 + 16))(&v15[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
    v12 = sub_1B7A9A4E0();
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  return v12;
}

uint64_t sub_1B7A8B338()
{
  v0 = sub_1B7A99350();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B7A98CC0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1B7A8AAA8();
  v7 = v6;
  v8 = sub_1B7A8AAA8();
  v10 = v9;
  v11 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v11 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = v8;
  v13 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v13 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8);
    v14 = *(sub_1B7A98D10() - 8);
    v19[1] = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v15 = swift_allocObject();
    v20 = v0;
    *(v15 + 16) = xmmword_1B7A9C180;
    sub_1B7A98CB0();
    sub_1B7A98CA0();
    v16 = MEMORY[0x1E69E6158];
    v23 = MEMORY[0x1E69E6158];
    v21 = v5;
    v22 = v7;
    sub_1B7A98C90();
    sub_1B7957888(&v21, &qword_1EBA46B50);
    sub_1B7A98CA0();
    v23 = v16;
    v21 = v12;
    v22 = v10;
    sub_1B7A98C90();
    sub_1B7957888(&v21, &qword_1EBA46B50);
    sub_1B7A98CA0();
    sub_1B7A98CD0();
    sub_1B7A9A1E0();
    __swift_project_boxed_opaque_existential_1(&v21, v23);
    v17 = v20;
    (*(v1 + 104))(v3, *MEMORY[0x1E69AB100], v20);
    sub_1B7A99E20();

    (*(v1 + 8))(v3, v17);
    return __swift_destroy_boxed_opaque_existential_1(&v21);
  }

  else
  {
LABEL_8:
  }
}

uint64_t sub_1B7A8B698(uint64_t a1)
{
  *(v1 + 24) = a1;

  return sub_1B7A89E50();
}

uint64_t sub_1B7A8B6E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B798D338;

  return sub_1B7A8A15C(a1, v4, v5, v6);
}

uint64_t sub_1B7A8B794(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7A98CC0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8);
  sub_1B7A98D10();
  *(swift_allocObject() + 16) = xmmword_1B7A9C180;
  sub_1B7A98CB0();
  sub_1B7A98CA0();
  v8[3] = MEMORY[0x1E69E6158];
  v8[0] = a1;
  v8[1] = a2;

  sub_1B7A98C60();
  sub_1B7957888(v8, &qword_1EBA46B50);
  sub_1B7A98CA0();
  sub_1B7A98CD0();
  if ((sub_1B7A98C50() & 1) == 0)
  {
    sub_1B7A99550();
    sub_1B7A99540();
    if (qword_1EBA45BA8 != -1)
    {
      swift_once();
    }

    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA4A6A8);
    __swift_project_value_buffer(v5, qword_1EBA4A5F8);
    sub_1B7A98E40();
  }

  v6 = sub_1B7A98CF0();

  return v6;
}

uint64_t sub_1B7A8BA0C()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B7A8BACC(int *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(v5 + 64) + v10;
  v13 = *(*(v7 - 8) + 64) + 7;
  if (v11 >= a2)
  {
    goto LABEL_29;
  }

  v14 = ((v13 + (v12 & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v15 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = a2 - v11 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v21 = v19 - 1;
    if (v15)
    {
      v21 = 0;
      v22 = *a1;
    }

    else
    {
      v22 = 0;
    }

    return v11 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = *(a1 + v14);
    if (v19)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v6 == v11)
  {
    v23 = *(v5 + 48);

    return v23(a1, v6, AssociatedTypeWitness);
  }

  else
  {
    v24 = (a1 + v12) & ~v10;
    if (v9 == v11)
    {
      v25 = *(v8 + 48);

      return v25(v24);
    }

    else
    {
      v26 = *(((v13 + v24) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v26 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      return (v26 + 1);
    }
  }
}

void sub_1B7A8BD74(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = *(v7 + 64) + v12;
  v15 = *(*(v9 - 8) + 64) + 7;
  v16 = ((v15 + (v14 & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v15 + (v14 & ~v12)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v17 = a3 - v13 + 1;
  }

  else
  {
    v17 = 2;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v13 < a3)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (a2 > v13)
  {
    if (((v15 + (v14 & ~v12)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v21 = a2 - v13;
    }

    else
    {
      v21 = 1;
    }

    if (((v15 + (v14 & ~v12)) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v22 = ~v13 + a2;
      bzero(a1, ((v15 + (v14 & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v22;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        *(a1 + v16) = v21;
      }

      else
      {
        *(a1 + v16) = v21;
      }
    }

    else if (v20)
    {
      *(a1 + v16) = v21;
    }

    return;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *(a1 + v16) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v16) = 0;
  }

  else if (v20)
  {
    *(a1 + v16) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v8 == v13)
  {
    v23 = *(v7 + 56);

    v23(a1, a2, v8, AssociatedTypeWitness);
  }

  else
  {
    v24 = (a1 + v14) & ~v12;
    if (v11 == v13)
    {
      v25 = *(v10 + 56);

      v25(v24, a2);
    }

    else
    {
      v26 = ((v15 + v24) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        *v26 = a2 & 0x7FFFFFFF;
        v26[1] = 0;
      }

      else
      {
        v26[1] = (a2 - 1);
      }
    }
  }
}

uint64_t ShelfGridItem.layout.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v7 = *(v1 + 96);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 104);
  *(a1 + 48) = v8;
  return sub_1B7A16C88(v2, v3, v4, v5, v6, v7, v8);
}

BOOL ShelfGridItem.isInFirstRow.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 104) >> 5;
  if (v2 > 2)
  {
    if (v2 != 4)
    {
      goto LABEL_11;
    }

LABEL_5:
    if (v1)
    {
      v3 = *(v0 + 48);
      if (v1 != -1 || v3 != 0x8000000000000000)
      {
        v5 = v3 % v1;
        return v5 == 0;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v2 < 2)
  {
    goto LABEL_5;
  }

LABEL_11:
  if (v1 == 1)
  {
LABEL_12:
    v5 = *(v0 + 48);
    return v5 == 0;
  }

  v7 = *(v0 + 105);
  if (v7 == 2 || (v7 & 1) != 0)
  {
    return *(v0 + 48) < v1;
  }

  if (!v1)
  {
    goto LABEL_23;
  }

  v8 = *v0;
  if (v1 != -1 || v8 != 0x8000000000000000)
  {
    if (v8 % v1 == 1)
    {
      goto LABEL_12;
    }

    return *(v0 + 48) < v1;
  }

LABEL_24:
  __break(1u);
  return result;
}

BOOL ShelfGridItem.isInLastRow.getter()
{
  v1 = v0[7];
  v2 = *(v0 + 104) >> 5;
  if (v2 > 2)
  {
    if (v2 != 4)
    {
      goto LABEL_9;
    }

    if (v1 == 1)
    {
      return 1;
    }

LABEL_28:
    if (v1)
    {
      v5 = v0[6];
      if (v1 == -1 && v5 == 0x8000000000000000)
      {
        goto LABEL_44;
      }

      if (!__OFSUB__(v1, 1))
      {
        if (v5 % v1 == v1 - 1)
        {
          return 1;
        }

        v4 = *v0 - 1;
        if (!__OFSUB__(*v0, 1))
        {
          return v5 == v4;
        }

        goto LABEL_45;
      }

      goto LABEL_40;
    }

    goto LABEL_38;
  }

  if (!v2)
  {
    if (v1 == 1)
    {
      return 1;
    }

    goto LABEL_28;
  }

  if (v2 == 1)
  {
    if (v1 == 1)
    {
      return 1;
    }

    goto LABEL_28;
  }

LABEL_9:
  if (v1 == 1)
  {
    v4 = *v0 - 1;
    if (!__OFSUB__(*v0, 1))
    {
      v5 = v0[6];
      return v5 == v4;
    }

    __break(1u);
    goto LABEL_37;
  }

  v6 = *v0;
  v7 = ceil(*v0 / v1);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v8 = *(v0 + 105);
  if (v8 == 2 || (v8 & 1) != 0)
  {
LABEL_23:
    v11 = v7 - 1;
    if (!__OFSUB__(v7, 1))
    {
      if ((v11 * v1) >> 64 == (v11 * v1) >> 63)
      {
        return v0[6] >= v11 * v1;
      }

      goto LABEL_43;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v1)
  {
    if (v1 == -1 && v6 == 0x8000000000000000)
    {
      goto LABEL_47;
    }

    if (v6 % v1 == 1)
    {
      v9 = __OFSUB__(v6, v1);
      v10 = v6 - v1;
      if (!v9)
      {
        return v0[6] >= v10;
      }

      goto LABEL_48;
    }

    goto LABEL_23;
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

__n128 __swift_memcpy106_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1B7A8C370(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 106))
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

uint64_t sub_1B7A8C3B8(uint64_t result, int a2, int a3)
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
      *(result + 106) = 1;
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

    *(result + 106) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B7A8C434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v38 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v35 - v10);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - v14;
  if (((*(v16 + 64))(v17, v16, v13) & 1) == 0)
  {
    v36 = v7;
    v37 = a1;
    v35 = v11;
    v20 = v3;
    v11 = *v3;
    v24 = (*v3 + 16);
    v23 = *v24;
    if (!*v24)
    {
LABEL_9:
      v25 = *v24;
      v7 = *v24;
LABEL_27:
      sub_1B7A5D448(v25, v7);
      v11 = v35;
      v7 = v36;
      v18 = *(v36 + 16);
      goto LABEL_28;
    }

    v25 = 0;
    v18 = 72;
    while (1)
    {
      result = sub_1B7A8C8D0(v11 + v18 - 40, a2);
      if (result)
      {
        break;
      }

      ++v25;
      v18 += 40;
      if (v23 == v25)
      {
        goto LABEL_9;
      }
    }

    v7 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
LABEL_41:
      __break(1u);
      return result;
    }

    v27 = *v24;
    while (v7 != v27)
    {
      if (v7 >= v27)
      {
        __break(1u);
        goto LABEL_34;
      }

      sub_1B7999E90(v11 + v18, v41);
      v28 = sub_1B7A8C8D0(v41, a2);
      result = __swift_destroy_boxed_opaque_existential_1(v41);
      if ((v28 & 1) == 0)
      {
        if (v7 != v25)
        {
          if (v25 < 0)
          {
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v29 = *v24;
          if (v25 >= *v24)
          {
            goto LABEL_36;
          }

          result = sub_1B7999E90(&v11[5 * v25 + 4], v41);
          if (v7 >= v29)
          {
            goto LABEL_37;
          }

          sub_1B7999E90(v11 + v18, v39);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_1B7A5D420(v11);
          }

          v30 = &v11[5 * v25];
          __swift_destroy_boxed_opaque_existential_1((v30 + 4));
          result = sub_1B795C1E4(v39, (v30 + 4));
          if (v7 >= v11[2])
          {
            goto LABEL_38;
          }

          __swift_destroy_boxed_opaque_existential_1(v11 + v18);
          result = sub_1B795C1E4(v41, v11 + v18);
          *v20 = v11;
        }

        ++v25;
      }

      ++v7;
      v24 = v11 + 2;
      v27 = v11[2];
      v18 += 40;
    }

    if (v7 >= v25)
    {
      goto LABEL_27;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v18 = *(v7 + 16);
  (v18)(v15, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA4A768);
  if (swift_dynamicCast())
  {
    v37 = a1;
    v19 = sub_1B795C1E4(v39, v41);
    MEMORY[0x1EEE9AC00](v19);
    *(&v35 - 2) = v41;
    v20 = v3;
    result = sub_1B7A8DEE4(sub_1B7A8E1FC, (&v35 - 4));
    v22 = *(*v3 + 16);
    if (v22 >= result)
    {
      sub_1B7A5D448(result, v22);
      __swift_destroy_boxed_opaque_existential_1(v41);
LABEL_28:
      v26 = v37;
      goto LABEL_29;
    }

    goto LABEL_40;
  }

  v40 = 0;
  memset(v39, 0, sizeof(v39));
  sub_1B7957888(v39, qword_1EBA4A770);
  v26 = a1;
  v20 = v3;
LABEL_29:
  (v18)(v11, v26, a2);
  v25 = *v20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v20 = v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_34:
    v25 = sub_1B7987A98(0, *(v25 + 16) + 1, 1, v25);
    *v20 = v25;
  }

  v33 = *(v25 + 16);
  v32 = *(v25 + 24);
  if (v33 >= v32 >> 1)
  {
    v25 = sub_1B7987A98((v32 > 1), v33 + 1, 1, v25);
    *v20 = v25;
  }

  v34 = v38;
  (v18)(v38, v11, a2);
  sub_1B7A8E0C0(v33, v34, v20, a2, a3);
  result = (*(v7 + 8))(v11, a2);
  *v20 = v25;
  return result;
}

uint64_t sub_1B7A8C8D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1B7999E90(v6, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46408);
  result = swift_dynamicCast();
  if (result)
  {
    v8 = result;
    (*(v3 + 8))(v5, a2);
    return v8;
  }

  return result;
}

uint64_t sub_1B7A8C9D4(void *a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  v5 = __swift_project_boxed_opaque_existential_1(a2, v3);
  v6 = a1[3];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v6);
  return sub_1B7A8CA4C(v5, v7, v3, v6, v4) & 1;
}

uint64_t sub_1B7A8CA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25[1] = a5;
  v8 = sub_1B7A9AB60();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v25 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v14, a2, a4, v17);
  v21 = swift_dynamicCast();
  v22 = *(v15 + 56);
  if (v21)
  {
    v22(v11, 0, 1, a3);
    (*(v15 + 32))(v19, v11, a3);
    v23 = sub_1B7A9A470();
    (*(v15 + 8))(v19, a3);
  }

  else
  {
    v22(v11, 1, 1, a3);
    (*(v9 + 8))(v11, v8);
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_1B7A8CCE0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v36 = a8;
  v44 = a6;
  v42 = a5;
  v49 = a4;
  v48 = a3;
  v40 = a1;
  v13 = sub_1B7A9A7E0();
  v52 = *(v13 - 8);
  v53 = v13;
  v41 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v39 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1B7A97580();
  v37 = *(v51 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a7 - 8);
  v16 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v33 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v68 = a2;
  v18 = swift_allocObject();
  *(v18 + 16) = a7;
  *(v18 + 24) = a8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA4A730);
  *&v75 = a7;
  *(&v75 + 1) = MEMORY[0x1E6981748];
  ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
  sub_1B797EC34(&qword_1EBA4A738, &qword_1EBA4A730);
  sub_1B7A9ADE0();

  v43 = v78;
  v46 = v76;
  v47 = v75;
  v61 = v75;
  v62 = v76;
  v45 = v77;
  v63 = v77;
  *&v64 = v78;
  v19 = v34;
  (*(v34 + 16))(&v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v40, a7);
  v20 = v37;
  (*(v37 + 16))(v50, v42, v51);
  v21 = v52;
  v22 = v39;
  (*(v52 + 16))(v39, v44, v53);
  v23 = v19;
  v24 = (*(v19 + 80) + 40) & ~*(v19 + 80);
  v25 = (v16 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (*(v20 + 80) + v25 + 9) & ~*(v20 + 80);
  v27 = (v38 + *(v21 + 80) + v26) & ~*(v21 + 80);
  v28 = swift_allocObject();
  v29 = v36;
  *(v28 + 2) = a7;
  *(v28 + 3) = v29;
  *(v28 + 4) = v48;
  (*(v23 + 32))(&v28[v24], v33, a7);
  v30 = &v28[v25];
  *v30 = a9;
  *(v30 + 8) = v49;
  (*(v20 + 32))(&v28[v26], v50, v51);
  (*(v52 + 32))(&v28[v27], v22, v53);

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA4A740);
  sub_1B7A9AB60();
  sub_1B797EC34(&qword_1EBA4A748, &qword_1EBA4A740);
  sub_1B7A9AD40();
  swift_getWitnessTable();
  sub_1B7A9AD80();
  swift_getWitnessTable();
  sub_1B7A9AD40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA4A750);
  swift_getWitnessTable();
  sub_1B7A9ADE0();

  v79 = v72;
  v80 = v73;
  v81 = v74;
  v75 = v68;
  v76 = v69;
  v77 = v70;
  v78 = v71;
  v65 = v72;
  v66 = v73;
  v67 = v74;
  v61 = v68;
  v62 = v69;
  v63 = v70;
  v64 = v71;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA4A758);
  swift_getWitnessTable();
  sub_1B7A9AD40();
  swift_getWitnessTable();
  sub_1B7A9AD80();
  swift_getWitnessTable();
  sub_1B7A9AD40();
  v59 = sub_1B797EC34(&qword_1EBA4A760, &qword_1EBA4A740);
  WitnessTable = swift_getWitnessTable();
  v57 = swift_getWitnessTable();
  v56 = swift_getWitnessTable();
  v55 = swift_getWitnessTable();
  v54 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B7A9A9B0();
  v31 = v60;
  sub_1B7957888(&v75, &qword_1EBA4A740);

  return v31;
}

double sub_1B7A8D478@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B7999E90(a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46408);
  swift_getExtendedExistentialTypeMetadata();
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t (*sub_1B7A8D51C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8))()
{
  v68 = a2;
  v61 = a4;
  v62 = a5;
  v63 = a1;
  v67 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v65 = v12;
  v66 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1B7A9A7E0();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v58 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B7A97580();
  v52 = *(v14 - 8);
  v53 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v54 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a7;
  v16 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for MediaArtwork.ProtocolRequest();
  v59 = *(v18 - 8);
  v60 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v56 = v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51[1] = v19;
  MEMORY[0x1EEE9AC00](v20);
  v51[0] = v51 - v21;
  v22 = sub_1B7A9AB60();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v51 - v24;
  v26 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = v51 - v32;
  v64 = a3;
  if ((a3 & 1) == 0 && ((*(v70 + 72))(v16, v31) & 1) == 0)
  {
    return 0;
  }

  v34 = v69;
  (*(v70 + 80))(v68, v16, v31);
  if ((*(v26 + 48))(v25, 1, AssociatedTypeWitness) == 1)
  {
    (*(v23 + 8))(v25, v22);
    return 0;
  }

  (*(v26 + 32))(v33, v25, AssociatedTypeWitness);
  (*(v26 + 16))(v29, v33, AssociatedTypeWitness);
  v36 = v54;
  (*(v52 + 16))(v54, v61, v53);
  v37 = v58;
  (*(v55 + 16))(v58, v62, v57);

  v39 = v51[0];
  sub_1B7A0387C(v38, v29, v64 & 1, v36, v37, AssociatedTypeWitness, v51[0], a8);
  (*(v26 + 8))(v33, AssociatedTypeWitness);
  v41 = v66;
  v40 = v67;
  (*(v67 + 16))(v66, v34, v16);
  v42 = v60;
  v44 = v59 + 32;
  v43 = *(v59 + 32);
  v45 = v56;
  v43(v56, v39, v60);
  v46 = v43;
  v47 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v48 = (v65 + v47 + *(v44 + 48)) & ~*(v44 + 48);
  v49 = swift_allocObject();
  v50 = v70;
  *(v49 + 16) = v16;
  *(v49 + 24) = v50;
  (*(v40 + 32))(v49 + v47, v41, v16);
  v46(v49 + v48, v45, v42);
  return sub_1B7A8DDE0;
}

uint64_t (*sub_1B7A8DB24@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>))()
{
  v5 = (*(*(*(v2 + 16) - 8) + 80) + 40) & ~*(*(*(v2 + 16) - 8) + 80);
  v6 = (*(*(*(v2 + 16) - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_1B7A97580() - 8);
  v8 = (v6 + *(v7 + 80) + 9) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_1B7A9A7E0() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v2 + 32);
  v13 = *(v2 + v6);
  LODWORD(v6) = *(v2 + v6 + 8);
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  result = sub_1B7A8D51C(v12, v2 + v5, v6, v2 + v8, v2 + v11, v14, v15, v13);
  if (result)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  *a2 = result;
  a2[1] = v18;
  return result;
}

uint64_t sub_1B7A8DCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(a4 + 88))(a2, a3, a4, v8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1B7A98B70();
}

uint64_t sub_1B7A8DDE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = v3 + *(*(v1 - 8) + 64);
  swift_getAssociatedTypeWitness();
  v5 = *(type metadata accessor for MediaArtwork.ProtocolRequest() - 8);
  v6 = v0 + ((v4 + *(v5 + 80)) & ~*(v5 + 80));

  return sub_1B7A8DCB8(v0 + v3, v6, v1, v2);
}

uint64_t sub_1B7A8DEE4(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = a2;
  v7 = *v2;
  result = sub_1B7A592C0(a1, a2, *v2);
  if (v3)
  {
    return v4;
  }

  if (v9)
  {
    return v7[2];
  }

  v4 = result;
  v10 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v12 = v7 + 2;
    v11 = v7[2];
    if (v10 == v11)
    {
      return v4;
    }

    v20 = a1;
    v13 = 40 * result + 72;
    while (v10 < v11)
    {
      sub_1B7999E90(v7 + v13, v19);
      v14 = v5;
      v15 = v20(v19);
      result = __swift_destroy_boxed_opaque_existential_1(v19);
      if (v15)
      {
        v5 = v14;
      }

      else
      {
        if (v10 == v4)
        {
          v5 = v14;
        }

        else
        {
          if ((v4 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          v16 = *v12;
          if (v4 >= v16)
          {
            goto LABEL_24;
          }

          result = sub_1B7999E90(&v7[5 * v4 + 4], v19);
          if (v10 >= v16)
          {
            goto LABEL_25;
          }

          sub_1B7999E90(v7 + v13, v18);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1B7A5D420(v7);
          }

          v5 = v14;
          v17 = &v7[5 * v4];
          __swift_destroy_boxed_opaque_existential_1((v17 + 4));
          result = sub_1B795C1E4(v18, (v17 + 4));
          if (v10 >= v7[2])
          {
            goto LABEL_26;
          }

          __swift_destroy_boxed_opaque_existential_1(v7 + v13);
          result = sub_1B795C1E4(v19, v7 + v13);
          *v2 = v7;
        }

        ++v4;
      }

      ++v10;
      v12 = v7 + 2;
      v11 = v7[2];
      v13 += 40;
      if (v10 == v11)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7A8E0C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1Tm, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1B795C1E4(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1B7A8E158(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA4A740);
    v6[3] = v8;
    v7[0] = a1;
    v6[0] = a2;

    v4 = sub_1B7A999A0();
    __swift_destroy_boxed_opaque_existential_1(v6);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t View.intentImplementation<A>(for:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = swift_getKeyPath();
  v11 = 0;
  v8 = type metadata accessor for IntentImplementationViewModifier();

  MEMORY[0x1B8CA96D0](v10, a4, v8, a6);

  return j__swift_release();
}

uint64_t sub_1B7A8E2F0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B7A8E370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v59 = a1;
  swift_getWitnessTable();
  v57 = a2;
  v5 = sub_1B7A97C30();
  v49 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v48 - v6;
  WitnessTable = swift_getWitnessTable();
  v73 = v5;
  v74 = MEMORY[0x1E6981148];
  v63 = WitnessTable;
  v75 = WitnessTable;
  v76 = MEMORY[0x1E6981138];
  v8 = type metadata accessor for _RequirementFailureView();
  v53 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v48 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B88);
  v12 = sub_1B7A97590();
  v56 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v55 = &v48 - v16;
  v17 = sub_1B7A97880();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v8;
  v21 = sub_1B7A97B40();
  v61 = *(v21 - 8);
  v62 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v60 = &v48 - v22;
  v54 = *v3;
  v23 = *(v3 + 2);
  v24 = *(v3 + 24);
  if (v24 != 1)
  {
    j__swift_retain(v23);
    sub_1B7A9AA10();
    v34 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release();
    v25 = (*(v18 + 8))(v20, v17);
    v26 = v73;
    v27 = v63;
    if (v73)
    {
      goto LABEL_3;
    }

LABEL_5:
    v35 = v50;
    (*(v49 + 16))(v50, v59, v5);
    v36 = v52;
    _RequirementFailureView.init<>(_:_:)(v35, 0xD00000000000002ALL, 0x80000001B7AC8590, v5, v52);
    v37 = v64;
    v38 = swift_getWitnessTable();
    v39 = v51;
    sub_1B7957EE0(v36, v37, v38);
    v40 = *(v53 + 8);
    v40(v36, v37);
    sub_1B7957EE0(v39, v37, v38);
    v41 = sub_1B7A660E8();
    v71 = v27;
    v72 = v41;
    swift_getWitnessTable();
    v33 = v60;
    sub_1B7959A28(v36, v12, v37);
    v40(v36, v37);
    v40(v39, v37);
    goto LABEL_6;
  }

  v25 = j__swift_retain(v23);
  v26 = v23;
  v27 = v63;
  if (!v23)
  {
    goto LABEL_5;
  }

LABEL_3:
  MEMORY[0x1EEE9AC00](v25);
  v28 = v54;
  *(&v48 - 3) = *(v57 + 16);
  *(&v48 - 2) = v28;
  *(&v48 - 2) = v23;
  *(&v48 - 8) = v24;
  View.intentDispatcher(with:implementations:)(v26, sub_1B7A8ED38);
  v29 = sub_1B7A660E8();
  v65 = v27;
  v66 = v29;
  v30 = swift_getWitnessTable();
  v31 = v55;
  sub_1B7957EE0(v14, v12, v30);
  v32 = *(v56 + 8);
  v32(v14, v12);
  sub_1B7957EE0(v31, v12, v30);
  swift_getWitnessTable();
  v33 = v60;
  sub_1B79B5878(v14, v12);

  v32(v14, v12);
  v32(v31, v12);
LABEL_6:
  v42 = sub_1B7A660E8();
  v69 = v27;
  v70 = v42;
  v43 = swift_getWitnessTable();
  v44 = swift_getWitnessTable();
  v67 = v43;
  v68 = v44;
  v45 = v62;
  v46 = swift_getWitnessTable();
  sub_1B7957EE0(v33, v45, v46);
  return (*(v61 + 8))(v33, v45);
}

uint64_t sub_1B7A8EB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[1] = a3;
  v5 = sub_1B7A99B50();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v17 - v10;
  v17[2] = a1;
  v17[3] = a2;
  type metadata accessor for _DelegatingIntentImplementation();

  swift_getWitnessTable();
  sub_1B7A99B20();

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA4A7F8);
  v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v13 = swift_allocObject();
  v14 = *(v6 + 16);
  v14(v13 + v12, v11, v5);
  sub_1B7A99B40();
  v14(v8, (v13 + v12), v5);
  swift_setDeallocating();
  v15 = *(v6 + 8);
  v15(v13 + v12, v5);
  swift_deallocClassInstance();
  sub_1B7A99B30();
  v15(v8, v5);
  return (v15)(v11, v5);
}

uint64_t sub_1B7A8ED64()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B7A8EDA0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B798D338;

  return v10(a1, a2, a3);
}

uint64_t sub_1B7A8EEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B798D54C;

  return sub_1B7A8EDA0(a1, a2, a3, v8);
}

uint64_t sub_1B7A8EF94()
{
  sub_1B7A9AC50();

  v0 = sub_1B7A9AFF0();
  MEMORY[0x1B8CAB750](v0);

  MEMORY[0x1B8CAB750](0xD000000000000023, 0x80000001B7AC85C0);
  swift_getAssociatedTypeWitness();
  v1 = sub_1B7A9AFF0();
  MEMORY[0x1B8CAB750](v1);

  return 0x6C6261646E655340;
}

uint64_t sub_1B7A8F0CC()
{
  type metadata accessor for FlowStackTabsAuthority.Tab();
  sub_1B7A9A6E0();
  result = sub_1B7A96F50();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = sub_1B7A98870();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B7A8F1EC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v12[-v8];
  v17 = sub_1B7A8FC14();
  v13 = v5;
  v14 = *(v3 + 88);
  v15 = v4;
  v16 = a1;
  type metadata accessor for FlowStackTabsAuthority.Tab();
  sub_1B7A9A6E0();
  swift_getWitnessTable();
  v10 = sub_1B7A9A600();

  if (v10)
  {
    (*(v7 + 16))(v9, a1, AssociatedTypeWitness);
    sub_1B7A98870();
    sub_1B7A98810();
  }

  return v10 & 1;
}

uint64_t sub_1B7A8F3E4(uint64_t a1, int a2)
{
  v26 = a2;
  v4 = *v2;
  v5 = v4[12];
  v6 = v4[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v24 = v18 - v7;
  v31 = v6;
  v32 = v4[11];
  v8 = v32;
  v33 = v5;
  v34 = a1;
  sub_1B7A9A160();
  v37 = sub_1B7A8FC14();
  v27 = v6;
  v28 = v8;
  v29 = v5;
  v30 = a1;
  v9 = type metadata accessor for FlowStackTabsAuthority.Tab();
  v10 = sub_1B7A9A6E0();
  swift_getWitnessTable();
  sub_1B7A9A980();

  v12 = v36;
  if ((v36 & 1) == 0)
  {
    v23 = v18;
    v21 = v35;
    MEMORY[0x1EEE9AC00](v11);
    v22 = 0;
    v18[-4] = v6;
    v18[-3] = v8;
    v18[-2] = v5;
    v18[-1] = a1;
    v18[1] = a1;
    MEMORY[0x1EEE9AC00](v13);
    v18[-4] = v6;
    v18[-3] = v8;
    v18[-2] = v5;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v18[-4] = v6;
    v18[-3] = v8;
    v18[-2] = v5;
    swift_getKeyPath();
    v19 = sub_1B7A96F10();
    v15 = v14;
    sub_1B7A9A670();
    v16 = v21;
    sub_1B7A925E8(v21, *v15);
    sub_1B7A925C8(*v15 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80)) + *(*(v9 - 8) + 72) * v16);
    nullsub_1(v10);
    v19(&v35, 0);

    if (v26)
    {
      sub_1B7A9AC60();
      sub_1B7A98870();
      sub_1B7A98810();
    }
  }

  return v12 ^ 1u;
}

uint64_t sub_1B7A8F7F4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1B7A9A930();
  if (!v19)
  {
    return sub_1B7A9A680();
  }

  v41 = v19;
  v45 = sub_1B7A9ACF0();
  v32 = sub_1B7A9AD00();
  sub_1B7A9ACD0();
  result = sub_1B7A9A920();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1B7A9A9E0();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1B7A9ACE0();
      result = sub_1B7A9A970();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7A8FC14()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();

  return v1;
}

uint64_t sub_1B7A8FCEC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1B7A90744(a1, a2);
  return v4;
}

uint64_t sub_1B7A8FD3C()
{
  v0 = type metadata accessor for FlowStackTabsAuthority.Tab();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - v2;
  sub_1B7A90B20();
  sub_1B7A8FC14();
  sub_1B7A9A700();

  v4 = *&v3[*(v0 + 52)];
  v5 = *(v1 + 8);

  v5(v3, v0);
  return v4;
}

uint64_t sub_1B7A8FE78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_1B7A98CC0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1B7A9A280();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v6[10];
  v23 = v6[11];
  v24 = v6[12];
  v25 = a1;
  v18 = v22;
  v19 = v23;
  v20 = v24;
  v21 = a2;
  sub_1B7A9A160();
  sub_1B7A90938(a1);
  sub_1B7A90A4C();
  result = sub_1B7A8F1EC(a2);
  if ((result & 1) == 0)
  {
    sub_1B7A9A220();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8);
    sub_1B7A98D10();
    v17 = v8;
    *(swift_allocObject() + 16) = xmmword_1B7A9C180;
    sub_1B7A98CB0();
    sub_1B7A98CA0();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v26[3] = AssociatedTypeWitness;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v26);
    (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1Tm, a2, AssociatedTypeWitness);
    sub_1B7A98C70();
    sub_1B7957888(v26, &qword_1EBA46B50);
    sub_1B7A98CA0();
    sub_1B7A98CD0();
    v15 = v17;
    sub_1B7A99E50();

    (*(v9 + 8))(v11, v15);
    return sub_1B7A91374();
  }

  return result;
}

uint64_t sub_1B7A90224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48518);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v27 = v24 - v10;
  v11 = type metadata accessor for FlowStackTabsAuthority.Tab();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v24 - v13;
  v16 = v24 + *(v15 + 56) - v13;
  *(v16 + 4) = 0;
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v17 = *(v15 + 60);
  v18 = sub_1B7A98950();
  v19 = *(v18 - 8);
  v25 = *(v19 + 56);
  v26 = v17;
  v24[1] = v19 + 56;
  v25(&v14[v17], 1, 1, v18);
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v32 = a1;
  sub_1B7A9A160();
  sub_1B7A9AC60();
  sub_1B7A98D40();
  sub_1B7A99320();
  type metadata accessor for FlowStackAuthority();
  *&v14[*(v11 + 52)] = sub_1B7A895C8();
  sub_1B7A99310();
  sub_1B79FFDF4(v33, v16, &qword_1EBA48528);
  sub_1B7A99340();
  if (v34)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA4A9A0);
    v20 = v27;
    v21 = swift_dynamicCast() ^ 1;
    v22 = v20;
  }

  else
  {
    sub_1B7957888(v33, &qword_1EBA4A998);
    v20 = v27;
    v22 = v27;
    v21 = 1;
  }

  v25(v22, v21, 1, v18);
  sub_1B79FFDF4(v20, &v14[v26], &qword_1EBA48518);
  *&v14[*(v11 + 64)] = 0;
  (*(v12 + 16))(v28, v14, v11);
  (*(*(a2 - 8) + 8))(a1, a2);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1B7A905B4()
{
  v0 = sub_1B7A99330();
  v2 = v1;
  if (v0 == sub_1B7A99AD0() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1B7A9AE80();
  }

  return v4 & 1;
}

uint64_t sub_1B7A906C4@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 16);

  return v4(a1, v1, AssociatedTypeWitness);
}

uint64_t sub_1B7A90744(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1B7A9A160();
  v6 = sub_1B7A90938(a2);

  swift_beginAccess();
  sub_1B7A909FC(v6);
  swift_endAccess();
  v7 = *(*v3 + 112);
  swift_getAssociatedTypeWitness();
  v8 = sub_1B7A98870();
  (*(*(v8 - 8) + 32))(v3 + v7, a1, v8);
  return v3;
}

uint64_t sub_1B7A90938(uint64_t a1)
{
  v8[7] = a1;
  v2 = v1[11];
  v8[2] = v1[10];
  v8[3] = v2;
  v8[4] = v1[12];
  v3 = sub_1B7A9A6E0();
  v4 = type metadata accessor for FlowStackTabsAuthority.Tab();
  WitnessTable = swift_getWitnessTable();
  return sub_1B7A8F7F4(sub_1B7A92568, v8, v3, v4, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v6);
}

uint64_t sub_1B7A909FC(uint64_t a1)
{
  v3 = a1;
  type metadata accessor for FlowStackTabsAuthority.Tab();
  v1 = sub_1B7A9A6E0();
  return sub_1B7A28F54(&v3, v1);
}

uint64_t sub_1B7A90A4C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1B7A96F30();
}

uint64_t sub_1B7A90B20()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v11[-v6];
  v8 = sub_1B7A98870();
  MEMORY[0x1B8CA9A40](v8);
  v16 = sub_1B7A8FC14();
  v12 = v3;
  v13 = *(v1 + 88);
  v14 = v2;
  v15 = v7;
  type metadata accessor for FlowStackTabsAuthority.Tab();
  sub_1B7A9A6E0();
  swift_getWitnessTable();
  sub_1B7A9A980();

  if (v18)
  {
    sub_1B7A8FC14();

    v9 = 0;
  }

  else
  {
    v9 = v17;
  }

  (*(v5 + 8))(v7, AssociatedTypeWitness);
  return v9;
}

uint64_t sub_1B7A90D2C()
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v0 = sub_1B7A9A470();

  return v0 & 1;
}

uint64_t sub_1B7A90E4C()
{
  v0 = sub_1B7A99330();
  v2 = v1;
  if (v0 == sub_1B7A99A90() && v2 == v3)
  {
    goto LABEL_3;
  }

  v5 = sub_1B7A9AE80();

  if (v5)
  {
    v4 = 1;
    return v4 & 1;
  }

  v7 = sub_1B7A99330();
  v9 = v8;
  if (v7 == sub_1B7A99AA0() && v9 == v10)
  {
LABEL_3:
    v4 = 1;
  }

  else
  {
    v4 = sub_1B7A9AE80();
  }

  return v4 & 1;
}

uint64_t sub_1B7A90F68(uint64_t a1)
{
  v7[1] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v4 = v7 - v3;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B7A9AC60();
  swift_getAssociatedConformanceWitness();
  v5 = sub_1B7A9A470();
  (*(v2 + 8))(v4, AssociatedTypeWitness);

  return v5 & 1;
}

uint64_t sub_1B7A9111C(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v8 - v4;
  sub_1B7A99320();
  v6 = type metadata accessor for FlowStackTabsAuthority.Tab();
  (*(v3 + 40))(a1 + *(v6 + 48), v5, AssociatedTypeWitness);
  ++*(a1 + *(v6 + 64));
  return sub_1B7A88ABC();
}

BOOL sub_1B7A91264()
{
  sub_1B7A9A6E0();
  swift_getWitnessTable();
  return (sub_1B7A9A9C0() & 1) == 0;
}

uint64_t sub_1B7A912CC()
{
  sub_1B7A9AC50();
  MEMORY[0x1B8CAB750](0xD000000000000039, 0x80000001B7AC86C0);
  swift_getAssociatedTypeWitness();
  sub_1B7A9AE60();
  return 0;
}

uint64_t sub_1B7A91374()
{
  v0 = type metadata accessor for FlowStackTabsAuthority.Tab();
  v1 = sub_1B7A9AB60();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - v3;
  v5 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  sub_1B7A91564(v4);
  if ((*(v5 + 48))(v4, 1, v0) == 1)
  {
    return (*(v2 + 8))(v4, v1);
  }

  (*(v5 + 32))(v8, v4, v0);
  sub_1B7A8F1EC(v8);
  return (*(v5 + 8))(v8, v0);
}

uint64_t sub_1B7A91564@<X0>(uint64_t a1@<X8>)
{
  sub_1B7A8FC14();
  v2 = type metadata accessor for FlowStackTabsAuthority.Tab();
  sub_1B7A9A6E0();
  swift_getWitnessTable();
  v3 = sub_1B7A9A9C0();

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    sub_1B7A8FC14();

    sub_1B7A8FC14();
    sub_1B7A9A700();

    v4 = 0;
  }

  return (*(*(v2 - 8) + 56))(a1, v4, 1, v2);
}

uint64_t sub_1B7A916B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v14 = a4;
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v9 + 16))(v11, a1, a2);
  sub_1B7A90224(v11, a2, a3, v14, a5);
}

uint64_t sub_1B7A91814()
{
  v1 = *(*v0 + 104);
  type metadata accessor for FlowStackTabsAuthority.Tab();
  sub_1B7A9A6E0();
  v2 = sub_1B7A96F50();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 112);
  swift_getAssociatedTypeWitness();
  v4 = sub_1B7A98870();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1B7A91958()
{
  sub_1B7A91814();

  return swift_deallocClassInstance();
}

void sub_1B7A919E0()
{
  swift_getAssociatedTypeWitness();
  if (v0 <= 0x3F)
  {
    sub_1B7A98F80();
    if (v1 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      if (v2 <= 0x3F)
      {
        type metadata accessor for FlowStackAuthority();
        if (v3 <= 0x3F)
        {
          sub_1B7A923D0();
          if (v4 <= 0x3F)
          {
            sub_1B7A92434();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1B7A91B1C(_DWORD *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v44 = AssociatedTypeWitness;
  v5 = *(v4 + 84);
  v42 = sub_1B7A98F80();
  v6 = *(v42 - 8);
  v43 = *(v6 + 84);
  if (v43 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(v6 + 84);
  }

  v41 = swift_getAssociatedTypeWitness();
  v8 = *(v41 - 8);
  v46 = v8;
  v9 = *(v8 + 84);
  if (v9 > v7)
  {
    v7 = *(v8 + 84);
  }

  v10 = *(sub_1B7A98950() - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v7 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v7;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v6 + 80);
  v17 = *(v6 + 64);
  v18 = *(v8 + 80);
  v19 = *(v10 + 80);
  v20 = *(v10 + 64);
  if (v12)
  {
    v21 = 7;
  }

  else
  {
    v21 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v22 = *(v4 + 64) + v16;
  v23 = *(v8 + 64) + 7;
  v24 = v19 + 40;
  v25 = a1;
  if (v15 < a2)
  {
    v26 = ((v21 + v20 + ((v24 + ((((v23 + ((v17 + v18 + (v22 & ~v16)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 8;
    v27 = v26 & 0xFFFFFFF8;
    if ((v26 & 0xFFFFFFF8) != 0)
    {
      v28 = 2;
    }

    else
    {
      v28 = a2 - v15 + 1;
    }

    if (v28 >= 0x10000)
    {
      v29 = 4;
    }

    else
    {
      v29 = 2;
    }

    if (v28 < 0x100)
    {
      v29 = 1;
    }

    if (v28 >= 2)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    if (v30 > 1)
    {
      if (v30 == 2)
      {
        v31 = *(a1 + v26);
        if (v31)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v31 = *(a1 + v26);
        if (v31)
        {
          goto LABEL_33;
        }
      }
    }

    else if (v30)
    {
      v31 = *(a1 + v26);
      if (v31)
      {
LABEL_33:
        v32 = v31 - 1;
        if (v27)
        {
          v32 = 0;
          v33 = *a1;
        }

        else
        {
          v33 = 0;
        }

        return v15 + (v33 | v32) + 1;
      }
    }
  }

  if (v5 == v15)
  {
    v34 = v44;
    v35 = *(v4 + 48);
    v36 = v5;
    goto LABEL_41;
  }

  v25 = ((a1 + v22) & ~v16);
  if (v43 == v15)
  {
    v35 = *(v6 + 48);
    v36 = v43;
    v34 = v42;

    return v35(v25, v36, v34);
  }

  v25 = ((v25 + v17 + v18) & ~v18);
  if (v9 == v15)
  {
    v35 = *(v46 + 48);
    v36 = v9;
    v34 = v41;
LABEL_41:

    return v35(v25, v36, v34);
  }

  v38 = ((v25 + v23) & 0xFFFFFFFFFFFFFFF8);
  if ((v14 & 0x80000000) != 0)
  {
    if (v12 >= 2)
    {
      v40 = (*(v11 + 48))((v24 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v19);
      if (v40 >= 2)
      {
        return v40 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v39 = *v38;
  if (*v38 >= 0xFFFFFFFF)
  {
    LODWORD(v39) = -1;
  }

  return (v39 + 1);
}

void sub_1B7A91F50(_DWORD *a1, unsigned int a2, unsigned int a3)
{
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v39 = v3;
  v4 = *(v3 + 84);
  v5 = *(sub_1B7A98F80() - 8);
  v38 = *(v5 + 84);
  if (v38 <= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = *(v5 + 84);
  }

  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  if (v8 > v6)
  {
    v6 = *(v7 + 84);
  }

  v9 = 0;
  v10 = *(sub_1B7A98950() - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  v13 = *(v3 + 64);
  if (v12)
  {
    v14 = v12 - 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v5 + 80);
  v16 = *(v5 + 64);
  v17 = *(v7 + 80);
  v18 = *(v7 + 64);
  v19 = *(v10 + 80);
  v20 = *(v10 + 64);
  if (v6 <= v14)
  {
    v21 = v14;
  }

  else
  {
    v21 = v6;
  }

  if (v21 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = v21;
  }

  v23 = v13 + v15;
  v24 = (v16 + v17 + ((v13 + v15) & ~v15)) & ~v17;
  v25 = v18 + 7;
  v26 = (v19 + 40 + ((((v18 + 7 + v24) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v19;
  if (v12)
  {
    v27 = v20;
  }

  else
  {
    v27 = v20 + 1;
  }

  v28 = ((v27 + v26 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v22 < a3)
  {
    if (((v27 + v26 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v29 = a3 - v22 + 1;
    }

    else
    {
      v29 = 2;
    }

    if (v29 >= 0x10000)
    {
      v30 = 4;
    }

    else
    {
      v30 = 2;
    }

    if (v29 < 0x100)
    {
      v30 = 1;
    }

    if (v29 >= 2)
    {
      v9 = v30;
    }

    else
    {
      v9 = 0;
    }
  }

  if (a2 > v22)
  {
    if (v28)
    {
      v31 = 1;
    }

    else
    {
      v31 = a2 - v22;
    }

    if (v28)
    {
      v32 = ~v22 + a2;
      bzero(a1, v28);
      *a1 = v32;
    }

    if (v9 > 1)
    {
      if (v9 == 2)
      {
        *(a1 + v28) = v31;
      }

      else
      {
        *(a1 + v28) = v31;
      }
    }

    else if (v9)
    {
      *(a1 + v28) = v31;
    }

    return;
  }

  v33 = a1;
  if (v9 <= 1)
  {
    if (v9)
    {
      *(a1 + v28) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_48;
    }

LABEL_47:
    if (!a2)
    {
      return;
    }

    goto LABEL_48;
  }

  if (v9 == 2)
  {
    *(a1 + v28) = 0;
    goto LABEL_47;
  }

  *(a1 + v28) = 0;
  if (!a2)
  {
    return;
  }

LABEL_48:
  if (v4 == v22)
  {
    v34 = *(v39 + 56);
    goto LABEL_52;
  }

  v33 = ((a1 + v23) & ~v15);
  if (v38 == v22)
  {
    v34 = *(v5 + 56);
LABEL_52:

LABEL_54:
    v34(v33);
    return;
  }

  v33 = ((v33 + v16 + v17) & ~v17);
  if (v8 == v22)
  {
    v34 = *(v7 + 56);

    goto LABEL_54;
  }

  v35 = ((v33 + v25) & 0xFFFFFFFFFFFFFFF8);
  if ((v21 & 0x80000000) != 0)
  {
    if (v12 >= 2)
    {
      v37 = *(v11 + 56);

      v37((v19 + 40 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v19, a2 + 1);
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v36 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v36 = a2 - 1;
    }

    *v35 = v36;
  }
}

void sub_1B7A923D0()
{
  if (!qword_1EBA4A980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA4A988);
    v0 = sub_1B7A9AB60();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA4A980);
    }
  }
}

void sub_1B7A92434()
{
  if (!qword_1EBA4A990)
  {
    sub_1B7A98950();
    v0 = sub_1B7A9AB60();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA4A990);
    }
  }
}

uint64_t sub_1B7A924AC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7A925E8(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1B7A92640()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B7A92694(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 17))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 16) & 0x7E | (*(a1 + 16) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B7A926E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t EnvironmentValues.pageMetricsNavigationPath.getter()
{
  sub_1B7A927BC();

  return sub_1B7A97890();
}

unint64_t sub_1B7A927BC()
{
  result = qword_1EDC0FF38;
  if (!qword_1EDC0FF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0FF38);
  }

  return result;
}

uint64_t sub_1B7A92850(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45F08);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1B79E3368(a1, &v9 - v6);
  sub_1B79E3368(v7, v4);
  sub_1B7A927BC();
  sub_1B7A978A0();
  return sub_1B7A4CD40(v7);
}

uint64_t EnvironmentValues.pageMetricsNavigationPath.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45F08);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B79E3368(a1, &v5 - v3);
  sub_1B7A927BC();
  sub_1B7A978A0();
  return sub_1B7A4CD40(a1);
}

uint64_t sub_1B7A929D4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46648);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void (*EnvironmentValues.pageMetricsNavigationPath.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45F08) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[3] = v7;
  v5[4] = sub_1B7A927BC();
  sub_1B7A97890();
  return sub_1B7A92B64;
}

void sub_1B7A92B64(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_1B79E3368((*a1)[3], (*a1)[2]);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_1B79E3368(v3[2], v3[1]);
    sub_1B7A978A0();
    sub_1B7A4CD40(v6);
  }

  else
  {
    sub_1B7A978A0();
  }

  sub_1B7A4CD40(v4);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

uint64_t View.onDeepLink<A>(prepare:recover:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = a7;
  v17 = a5;
  v11 = type metadata accessor for OnDeepLinkViewModifier();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v16 - v13;
  sub_1B7A92DA0(a1, a2, a3, a4, &v16 - v13);

  MEMORY[0x1B8CA96D0](v14, v17, v11, v18);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1B7A92DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 32) = swift_getKeyPath();
  *(a5 + 40) = 0;
  *(a5 + 48) = swift_getKeyPath();
  *(a5 + 56) = 0;
  *(a5 + 64) = swift_getKeyPath();
  *(a5 + 104) = 0;
  v10 = *(type metadata accessor for OnDeepLinkViewModifier() + 52);
  *(a5 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98);
  result = swift_storeEnumTagMultiPayload();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

void sub_1B7A92EA8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1B7A99F50();
  v9 = MEMORY[0x1E69AB558];
  a4[3] = v8;
  a4[4] = v9;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a4);
  v11 = a1;

  Models.AlertAction.init(contentUnavailableError:retry:)(a1, a2, a3, boxed_opaque_existential_1Tm);
}

uint64_t View.onDeepLink()(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7A99F90();

  return View.onDeepLink<A>(prepare:recover:)(&unk_1B7AAA270, 0, sub_1B7A92EA8, 0, a1, v4, a2);
}

uint64_t sub_1B7A92FB0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1B7A9A1C0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7A93070, 0, 0);
}

uint64_t sub_1B7A93070()
{
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  sub_1B7A99FA0();

  v1 = v0[1];

  return v1();
}

void sub_1B7A930FC()
{
  sub_1B7958DD8();
  if (v0 <= 0x3F)
  {
    sub_1B797CE50(319, &qword_1EBA4AAB8, qword_1EBA4AAC0);
    if (v1 <= 0x3F)
    {
      sub_1B797CE50(319, &qword_1EBA47278, qword_1EBA47280);
      if (v2 <= 0x3F)
      {
        sub_1B797CE50(319, qword_1EDC0EC28, &qword_1EBA47828);
        if (v3 <= 0x3F)
        {
          sub_1B79E1700();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1B7A9327C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v138 = a1;
  v146 = a3;
  swift_getWitnessTable();
  v6 = sub_1B7A97C30();
  v128 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v129 = &v104 - v7;
  WitnessTable = swift_getWitnessTable();
  v151 = v6;
  v152 = MEMORY[0x1E6981148];
  v145 = WitnessTable;
  v153 = WitnessTable;
  v154 = MEMORY[0x1E6981138];
  v9 = type metadata accessor for _RequirementFailureView();
  v132 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v130 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v131 = &v104 - v12;
  v121 = sub_1B7A9A7E0();
  v118 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v117 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = a2;
  v116 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v114 = v15;
  v115 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A97360();
  v139 = v6;
  v16 = sub_1B7A97590();
  v122 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v120 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v119 = &v104 - v19;
  v144 = v20;
  v21 = sub_1B7A97B40();
  v127 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v126 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v125 = &v104 - v24;
  v135 = sub_1B7A97880();
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v133 = &v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = v21;
  v136 = v9;
  v142 = sub_1B7A97B40();
  v141 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v140 = &v104 - v26;
  v27 = sub_1B7A98CC0();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v28 = sub_1B7A9A280();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v104 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1B7A96C20();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v104 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A96C10();
  v36 = sub_1B7A96C00();
  v38 = v37;
  (*(v33 + 8))(v35, v32);
  sub_1B7A9A1D0();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8);
  v40 = *(sub_1B7A98D10() - 8);
  v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v42 = v41 + *(v40 + 72);
  v108 = *(v40 + 80);
  v109 = v39;
  v107 = v42;
  v43 = swift_allocObject();
  v106 = xmmword_1B7A9C180;
  *(v43 + 16) = xmmword_1B7A9C180;
  sub_1B7A98CB0();
  sub_1B7A98CA0();
  v154 = MEMORY[0x1E69E6158];
  v124 = v36;
  v151 = v36;
  v152 = v38;
  v137 = v38;

  sub_1B7A98C70();
  sub_1B7957888(&v151, &qword_1EBA46B50);
  sub_1B7A98CA0();
  v110 = v41;
  sub_1B7A98CD0();
  sub_1B7A99E40();

  v44 = *(v29 + 8);
  v111 = v31;
  v113 = v28;
  v112 = v29 + 8;
  v105 = v44;
  v44(v31, v28);
  v45 = *(v4 + 32);
  v46 = v4;
  if (*(v4 + 40) == 1)
  {
    v151 = *(v4 + 32);

    v47 = v135;
    v48 = v134;
    v49 = v133;
  }

  else
  {

    sub_1B7A9AA10();
    v50 = sub_1B7A97E70();
    sub_1B7A96D30();

    v49 = v133;
    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release();
    v48 = v134;
    v47 = v135;
    (*(v134 + 8))(v49, v135);
    v45 = v151;
  }

  v51 = v136;
  if (v45)
  {
    v52 = *(v46 + 48);
    if (*(v46 + 56) == 1)
    {
      v151 = *(v46 + 48);

      if (v52)
      {
LABEL_7:
        sub_1B797C31C(&v149);
        if (v150)
        {
          sub_1B795C1E4(&v149, &v151);
          v53 = v111;
          sub_1B7A9A1D0();
          *(swift_allocObject() + 16) = v106;
          sub_1B7A98CB0();
          sub_1B7A98CA0();
          v150 = MEMORY[0x1E69E6158];
          *&v149 = v124;
          v134 = v52;
          v54 = v137;
          *(&v149 + 1) = v137;

          sub_1B7A98C70();
          sub_1B7957888(&v149, &qword_1EBA46B50);
          sub_1B7A98CA0();
          sub_1B7A98CD0();
          v55 = v113;
          sub_1B7A99E40();

          v105(v53, v55);
          v135 = v45;
          v56 = v116;
          v57 = v115;
          v58 = v46;
          v59 = v123;
          (*(v116 + 16))(v115, v58, v123);
          sub_1B7999E90(&v151, &v149);
          v60 = (*(v56 + 80) + 56) & ~*(v56 + 80);
          v61 = (v114 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
          v62 = swift_allocObject();
          *(v62 + 16) = *(v59 + 16);
          *(v62 + 32) = v124;
          *(v62 + 40) = v54;
          *(v62 + 48) = v135;
          (*(v56 + 32))(v62 + v60, v57, v59);
          *(v62 + v61) = v134;
          sub_1B795C1E4(&v149, v62 + ((v61 + 15) & 0xFFFFFFFFFFFFFFF8));

          v63 = v117;
          sub_1B7A9A780();
          v64 = v120;
          v65 = v145;
          sub_1B7A983D0();

          (*(v118 + 8))(v63, v121);
          v66 = sub_1B7A73928();
          v147 = v65;
          v148 = v66;
          v67 = v144;
          v68 = swift_getWitnessTable();
          v69 = v119;
          sub_1B7957EE0(v64, v67, v68);
          v70 = *(v122 + 8);
          v70(v64, v67);
          sub_1B7957EE0(v69, v67, v68);
          swift_getWitnessTable();
          v71 = v125;
          sub_1B79B5878(v64, v67);

          v70(v64, v67);
          v70(v69, v67);
          __swift_destroy_boxed_opaque_existential_1(&v151);
LABEL_14:
          v91 = v143;
          v80 = v140;
          v92 = sub_1B7A73928();
          v157 = v65;
          v158 = v92;
          v93 = swift_getWitnessTable();
          v94 = swift_getWitnessTable();
          v155 = v93;
          v156 = v94;
          v95 = swift_getWitnessTable();
          v96 = v126;
          sub_1B7957EE0(v71, v91, v95);
          sub_1B79B5878(v96, v91);

          v97 = *(v127 + 8);
          v97(v96, v91);
          v97(v71, v91);
          goto LABEL_15;
        }

        sub_1B7957888(&v149, &qword_1EBA47828);
LABEL_13:
        v83 = v129;
        v84 = v139;
        (*(v128 + 16))(v129, v138, v139);
        v85 = v130;
        v65 = v145;
        _RequirementFailureView.init<>(_:_:)(v83, 0xD00000000000006CLL, 0x80000001B7AC8850, v84, v130);
        v86 = swift_getWitnessTable();
        v87 = v131;
        sub_1B7957EE0(v85, v51, v86);
        v88 = *(v132 + 8);
        v88(v85, v51);
        sub_1B7957EE0(v87, v51, v86);
        v89 = sub_1B7A73928();
        v159 = v65;
        v160 = v89;
        v90 = v144;
        swift_getWitnessTable();
        v71 = v125;
        sub_1B7959A28(v85, v90, v51);
        v88(v85, v51);
        v88(v87, v51);
        goto LABEL_14;
      }
    }

    else
    {

      sub_1B7A9AA10();
      v81 = v46;
      v82 = sub_1B7A97E70();
      sub_1B7A96D30();

      v46 = v81;
      sub_1B7A97870();
      swift_getAtKeyPath();
      j__swift_release();
      (*(v48 + 8))(v49, v47);
      v52 = v151;
      if (v151)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_13;
  }

  v72 = v129;
  v73 = v139;
  (*(v128 + 16))(v129, v138, v139);
  v74 = v130;
  v65 = v145;
  _RequirementFailureView.init<>(_:_:)(v72, 0xD000000000000079, 0x80000001B7AC87D0, v73, v130);
  v75 = swift_getWitnessTable();
  v76 = v131;
  sub_1B7957EE0(v74, v51, v75);
  v77 = *(v132 + 8);
  v77(v74, v51);
  sub_1B7957EE0(v76, v51, v75);
  v78 = sub_1B7A73928();
  v169 = v65;
  v170 = v78;
  v167 = swift_getWitnessTable();
  v168 = v75;
  v79 = v143;
  swift_getWitnessTable();
  v80 = v140;
  sub_1B7959A28(v74, v79, v51);
  v77(v74, v51);
  v77(v76, v51);
LABEL_15:
  v98 = sub_1B7A73928();
  v165 = v65;
  v166 = v98;
  v99 = swift_getWitnessTable();
  v100 = swift_getWitnessTable();
  v163 = v99;
  v164 = v100;
  v161 = swift_getWitnessTable();
  v162 = v100;
  v101 = v142;
  v102 = swift_getWitnessTable();
  sub_1B7957EE0(v80, v101, v102);
  return (*(v141 + 8))(v80, v101);
}

uint64_t sub_1B7A945A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[36] = a7;
  v8[37] = a8;
  v8[34] = a5;
  v8[35] = a6;
  v8[32] = a3;
  v8[33] = a4;
  v8[30] = a1;
  v8[31] = a2;
  v8[38] = *(a7 - 8);
  v8[39] = swift_task_alloc();
  v9 = sub_1B7A9A1C0();
  v8[40] = v9;
  v8[41] = *(v9 - 8);
  v8[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49FE8);
  v8[43] = swift_task_alloc();
  sub_1B7A98CC0();
  v8[44] = swift_task_alloc();
  v8[45] = swift_task_alloc();
  v10 = sub_1B7A9A280();
  v8[46] = v10;
  v8[47] = *(v10 - 8);
  v8[48] = swift_task_alloc();
  v8[49] = sub_1B7A9A760();
  v8[50] = sub_1B7A9A750();
  v12 = sub_1B7A9A710();
  v8[51] = v12;
  v8[52] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1B7A947C4, v12, v11);
}

uint64_t sub_1B7A947C4()
{
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v3 = *(v0 + 368);
  v4 = *(v0 + 248);
  v5 = *(v0 + 240);
  sub_1B7A9A1D0();
  *(v0 + 424) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8);
  v6 = *(sub_1B7A98D10() - 8);
  *(v0 + 432) = *(v6 + 72);
  *(v0 + 520) = *(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_1B7A9C180;
  sub_1B7A98CB0();
  sub_1B7A98CA0();
  *(v0 + 80) = MEMORY[0x1E69E6158];
  *(v0 + 56) = v5;
  *(v0 + 64) = v4;

  sub_1B7A98C70();
  sub_1B7957888(v0 + 56, &qword_1EBA46B50);
  sub_1B7A98CA0();
  sub_1B7A98CD0();
  sub_1B7A99E40();

  v7 = *(v2 + 8);
  *(v0 + 440) = v7;
  *(v0 + 448) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);
  *(v0 + 208) = sub_1B7A99090();
  *(v0 + 456) = sub_1B7A9A750();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49FF8);
  v9 = sub_1B797EC34(&qword_1EBA4A000, &qword_1EBA49FF8);
  v10 = swift_task_alloc();
  *(v0 + 464) = v10;
  *v10 = v0;
  v10[1] = sub_1B7A94A70;
  v11 = *(v0 + 344);

  return MEMORY[0x1EEE6D8C8](v11, v8, v9);
}

uint64_t sub_1B7A94A70()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  v3 = *(v2 + 456);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1B7A9A710();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1B7A94F80;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1B7A9A710();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1B7A94C08;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t sub_1B7A94C08()
{

  v1 = *(v0 + 408);
  v2 = *(v0 + 416);

  return MEMORY[0x1EEE6DFA0](sub_1B7A94C6C, v1, v2);
}

uint64_t sub_1B7A94C6C()
{
  v1 = v0[43];
  v2 = v0[40];
  v3 = v0[41];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    v14 = v0[55];
    v6 = v0[48];
    v12 = v0[46];
    v13 = v0[33];
    v7 = v0[31];
    v11 = v0[30];
    (*(v3 + 32))(v0[42], v1, v2);
    sub_1B7A9A1D0();
    *(swift_allocObject() + 16) = xmmword_1B7A9C180;
    sub_1B7A98CB0();
    sub_1B7A98CA0();
    v0[14] = MEMORY[0x1E69E6158];
    v0[11] = v11;
    v0[12] = v7;

    sub_1B7A98C70();
    sub_1B7957888((v0 + 11), &qword_1EBA46B50);
    sub_1B7A98CA0();
    sub_1B7A98CD0();
    sub_1B7A99E40();

    v14(v6, v12);
    v15 = (*v13 + **v13);
    v8 = swift_task_alloc();
    v0[60] = v8;
    *v8 = v0;
    v8[1] = sub_1B7A9500C;
    v9 = v0[42];
    v10 = v0[39];

    return v15(v10, v9);
  }
}

uint64_t sub_1B7A94F80()
{
  *(v0 + 216) = *(v0 + 472);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B60);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t sub_1B7A9500C()
{
  v1 = *v0;
  v2 = *(*v0 + 296);
  v3 = *(*v0 + 272);
  v10 = *v0;

  *(v1 + 224) = v3;
  v4 = (v1 + 224);
  v5 = swift_task_alloc();
  v4[33] = v5;
  v6 = *(v2 + 8);
  *v5 = v10;
  v5[1] = sub_1B7A95184;
  v7 = v4[11];
  v8 = v4[8];

  return IntentDispatchAction.callAsFunction<A>(_:)((v4 - 26), v7, v8, v6);
}

uint64_t sub_1B7A95184()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {
    v3 = *(v2 + 408);
    v4 = *(v2 + 416);
    v5 = sub_1B7A95530;
  }

  else
  {
    v5 = sub_1B7A952A0;
    v3 = 0;
    v4 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1B7A952A0()
{
  *(v0 + 504) = sub_1B7A9A750();
  v2 = sub_1B7A9A710();

  return MEMORY[0x1EEE6DFA0](sub_1B7A9532C, v2, v1);
}

void sub_1B7A9532C()
{
  v1 = v0[62];
  v2 = v0[36];
  v3 = v0[37];
  v4 = v0[35];
  v5 = v0[33];

  sub_1B7A95A40(v4, (v0 + 2), v5, v2, v3);
  if (v1)
  {
  }

  else
  {
    v6 = v0[51];
    v7 = v0[52];

    MEMORY[0x1EEE6DFA0](sub_1B7A953F4, v6, v7);
  }
}

uint64_t sub_1B7A953F4()
{
  (*(v0[38] + 8))(v0[39], v0[36]);
  sub_1B7A96014((v0 + 2));
  (*(v0[41] + 8))(v0[42], v0[40]);
  v0[57] = sub_1B7A9A750();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49FF8);
  v2 = sub_1B797EC34(&qword_1EBA4A000, &qword_1EBA49FF8);
  v3 = swift_task_alloc();
  v0[58] = v3;
  *v3 = v0;
  v3[1] = sub_1B7A94A70;
  v4 = v0[43];

  return MEMORY[0x1EEE6D8C8](v4, v1, v2);
}

uint64_t sub_1B7A95530()
{
  v7 = v0[55];
  v1 = v0[48];
  v6 = v0[46];
  (*(v0[38] + 8))(v0[39], v0[36]);
  sub_1B7A9A1D0();
  *(swift_allocObject() + 16) = xmmword_1B7A9D270;
  sub_1B7A98CB0();
  sub_1B7A98CA0();
  v0[18] = sub_1B7A96B90();
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 15);
  sub_1B7A9A1A0();
  sub_1B7A98C60();
  sub_1B7957888((v0 + 15), &qword_1EBA46B50);
  sub_1B7A98CA0();
  sub_1B7A98CD0();
  sub_1B7A98CB0();
  sub_1B7A98CA0();
  swift_getErrorValue();
  v2 = v0[23];
  v3 = v0[24];
  v0[22] = v3;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 19);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1Tm, v2, v3);
  sub_1B7A98C70();
  sub_1B7957888((v0 + 19), &qword_1EBA46B50);
  sub_1B7A98CA0();
  sub_1B7A98CD0();
  sub_1B7A99E50();

  v7(v1, v6);

  return MEMORY[0x1EEE6DFA0](sub_1B7A957A8, 0, 0);
}

uint64_t sub_1B7A957A8()
{
  *(v0 + 512) = sub_1B7A9A750();
  v2 = sub_1B7A9A710();

  return MEMORY[0x1EEE6DFA0](sub_1B7A95834, v2, v1);
}

uint64_t sub_1B7A95834()
{
  v1 = v0[62];
  v2 = v0[42];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[35];
  v7 = v0[32];
  v6 = v0[33];

  sub_1B7A95BF0(v6, v1, v7, v2, v5, v4, v3);
  v8 = v0[51];
  v9 = v0[52];

  return MEMORY[0x1EEE6DFA0](sub_1B7A9591C, v8, v9);
}

uint64_t sub_1B7A9591C()
{
  (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
  *(v0 + 456) = sub_1B7A9A750();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49FF8);
  v2 = sub_1B797EC34(&qword_1EBA4A000, &qword_1EBA49FF8);
  v3 = swift_task_alloc();
  *(v0 + 464) = v3;
  *v3 = v0;
  v3[1] = sub_1B7A94A70;
  v4 = *(v0 + 344);

  return MEMORY[0x1EEE6D8C8](v4, v1, v2);
}

uint64_t sub_1B7A95A40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[1] = a5;
  v13[2] = a3;
  v14 = a2;
  v6 = sub_1B7A99900();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  type metadata accessor for OnDeepLinkViewModifier();
  sub_1B797BE80(v9);
  (*(v11 + 24))(v14, v9, v10, v11);
  (*(v7 + 8))(v9, v6);
}

uint64_t sub_1B7A95BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v26 = a6;
  v27 = a7;
  v23 = a2;
  v24 = a5;
  v22 = a3;
  v9 = sub_1B7A99900();
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v25 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B7A9A1C0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1B7A9A760();
  v21 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = *(a1 + 16);
  (*(v12 + 16))(&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v11);
  v15 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v22;
  (*(v12 + 32))(v16 + v15, &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);

  v14(v30, v23, sub_1B7A96068, v16);

  v17 = v24[3];
  v18 = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v17);
  type metadata accessor for OnDeepLinkViewModifier();
  v19 = v25;
  sub_1B797BE80(v25);
  (*(v18 + 24))(v30, v19, v17, v18);
  (*(v28 + 8))(v19, v29);
  __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t sub_1B7A95EC8()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(type metadata accessor for OnDeepLinkViewModifier() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[6];
  v11 = *(v0 + v6);
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_1B798D338;

  return sub_1B7A945A4(v8, v9, v10, v0 + v5, v11, v0 + v7, v3, v2);
}

uint64_t ComponentView.init(_:content:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1B795C1E4(a1, a4);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t ComponentView.init(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1B7999E90(a1 + 8, v9);
  sub_1B7A1F6A0(a1);
  result = sub_1B795C1E4(v9, a4);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t ComponentView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v20 - v15;
  (*(v2 + 40))(v14);
  (*(v8 + 24))(v2, v3, v8);
  (*(v4 + 8))(v6, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1B7957EE0(v12, AssociatedTypeWitness, AssociatedConformanceWitness);
  v18 = *(v10 + 8);
  v18(v12, AssociatedTypeWitness);
  sub_1B7957EE0(v16, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v18)(v16, AssociatedTypeWitness);
}

uint64_t sub_1B7A963E8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B7A96424(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1B7A9646C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_1EDC149E8 == -1)
  {
    if (qword_1EDC149F0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1EDC149F0)
    {
      return _availability_version_check();
    }
  }

  if (qword_1EDC149E0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1EDC149D4 > a3)
      {
        return 1;
      }

      if (dword_1EDC149D4 >= a3)
      {
        return dword_1EDC149D8 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = qword_1EDC149F0;
  if (qword_1EDC149F0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1EDC149F0 = MEMORY[0x1EEE9AC60];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x1B8CAC400](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_1EDC149D4, &dword_1EDC149D8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}
uint64_t sub_21C828B10(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v78 = type metadata accessor for PMAccount.Storage(0);
  v8 = *(*(v78 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v78);
  v69 = (&v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v68 - v12);
  v14 = MEMORY[0x28223BE20](v11);
  v74 = (&v68 - v15);
  MEMORY[0x28223BE20](v14);
  v17 = (&v68 - v16);
  v18 = type metadata accessor for PMAccount(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v21 = MEMORY[0x28223BE20](v20);
  v75 = &v68 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v68 - v24;
  result = MEMORY[0x28223BE20](v23);
  v29 = &v68 - v28;
  v31 = *(v30 + 72);
  if (!v31)
  {
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v31 == -1)
  {
    goto LABEL_74;
  }

  v32 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v31 == -1)
  {
    goto LABEL_75;
  }

  v73 = a3;
  v33 = (a2 - a1) / v31;
  v81 = a1;
  v80 = a4;
  v76 = v18;
  v77 = v31;
  if (v33 < v32 / v31)
  {
    v34 = v33 * v31;
    if (a4 < a1 || a1 + v34 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v35 = v74;
    }

    else
    {
      v35 = v74;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v75 = a4 + v34;
    v79 = a4 + v34;
    if (v34 < 1 || a2 >= v73)
    {
      goto LABEL_72;
    }

    while (1)
    {
      sub_21C82A938(a2, v29, type metadata accessor for PMAccount);
      sub_21C82A938(a4, v25, type metadata accessor for PMAccount);
      sub_21C82A938(&v29[*(v18 + 24)], v17, type metadata accessor for PMAccount.Storage);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v39 = v17;
      if (EnumCaseMultiPayload == 1)
      {
        goto LABEL_23;
      }

      v40 = *v17;
      sub_21C82A938(&v25[*(v18 + 24)], v35, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v39 = v35;
LABEL_23:
        sub_21C82A9A0(v39, type metadata accessor for PMAccount.Storage);
        sub_21C82A9A0(v25, type metadata accessor for PMAccount);
        sub_21C82A9A0(v29, type metadata accessor for PMAccount);
LABEL_24:
        v41 = v77;
        v42 = a2 + v77;
        if (a1 < a2 || a1 >= v42)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_29:
          v41 = v77;
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_29;
        }

        a2 = v42;
        goto LABEL_31;
      }

      v43 = a4;
      v44 = *v35;
      v45 = [v40 compare_];

      a4 = v43;
      v18 = v76;

      sub_21C82A9A0(v25, type metadata accessor for PMAccount);
      sub_21C82A9A0(v29, type metadata accessor for PMAccount);
      v46 = v45 + 1 == 0;
      v35 = v74;
      if (v46)
      {
        goto LABEL_24;
      }

      v41 = v77;
      v47 = a4 + v77;
      if (a1 < a4 || a1 >= v47)
      {
        break;
      }

      if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
LABEL_40:
        v41 = v77;
      }

      v80 = v47;
      a4 = v47;
LABEL_31:
      a1 += v41;
      v81 = a1;
      if (a4 >= v75 || a2 >= v73)
      {
        goto LABEL_72;
      }
    }

    swift_arrayInitWithTakeFrontToBack();
    goto LABEL_40;
  }

  v36 = v32 / v31 * v31;
  v74 = v27;
  if (a4 < a2 || a2 + v36 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else
  {
    if (a4 == a2)
    {
      goto LABEL_44;
    }

    swift_arrayInitWithTakeBackToFront();
  }

  v31 = v77;
LABEL_44:
  v48 = a4 + v36;
  if (v36 < 1)
  {
    goto LABEL_71;
  }

  v49 = -v31;
  v50 = a4 + v36;
  v51 = v73;
  v70 = a4;
  v71 = v13;
  v77 = -v31;
  while (2)
  {
    while (2)
    {
      v68 = v48;
      v52 = a2;
      a2 += v49;
      v72 = v52;
      while (1)
      {
        if (v52 <= a1)
        {
          v81 = v52;
          v79 = v68;
          goto LABEL_72;
        }

        v54 = v51;
        v73 = v48;
        v55 = v50 + v49;
        v56 = v75;
        sub_21C82A938(v55, v75, type metadata accessor for PMAccount);
        v57 = v74;
        sub_21C82A938(a2, v74, type metadata accessor for PMAccount);
        v58 = v76;
        sub_21C82A938(v56 + *(v76 + 24), v13, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v59 = v13;
LABEL_55:
          sub_21C82A9A0(v59, type metadata accessor for PMAccount.Storage);
          v63 = 1;
          goto LABEL_57;
        }

        v60 = *v13;
        v61 = v57 + *(v58 + 24);
        v62 = v69;
        sub_21C82A938(v61, v69, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v59 = v62;
          goto LABEL_55;
        }

        v64 = *v62;
        v65 = [v60 compare_];

        v63 = v65 == -1;
LABEL_57:
        v48 = v73;
        v51 = v54 + v77;
        sub_21C82A9A0(v74, type metadata accessor for PMAccount);
        sub_21C82A9A0(v75, type metadata accessor for PMAccount);
        if (v63)
        {
          break;
        }

        v48 = v55;
        v66 = v70;
        if (v54 < v50 || v51 >= v50)
        {
          swift_arrayInitWithTakeFrontToBack();
          v13 = v71;
        }

        else
        {
          v13 = v71;
          if (v54 != v50)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v50 = v55;
        v53 = v55 > v66;
        v49 = v77;
        v52 = v72;
        if (!v53)
        {
          a2 = v72;
          goto LABEL_71;
        }
      }

      v67 = v70;
      if (v54 >= v72 && v51 < v72)
      {
        v49 = v77;
        v13 = v71;
        if (v54 != v72)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        if (v50 <= v67)
        {
          goto LABEL_71;
        }

        continue;
      }

      break;
    }

    swift_arrayInitWithTakeFrontToBack();
    v13 = v71;
    v49 = v77;
    if (v50 > v67)
    {
      continue;
    }

    break;
  }

LABEL_71:
  v81 = a2;
  v79 = v48;
LABEL_72:
  sub_21C864564(&v81, &v80, &v79);
  return 1;
}

uint64_t sub_21C8292E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_21C6F35D0;

  return sub_21C8267B4(a1, a2, a3, a5);
}

uint64_t sub_21C82939C()
{
  v0 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v103 = &v100[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v102 = &v100[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v118 = type metadata accessor for PMAccount.UniqueID(0);
  v6 = *(*(v118 - 8) + 64);
  MEMORY[0x28223BE20](v118);
  v117 = &v100[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v116 = type metadata accessor for PMAccount.Storage(0);
  v8 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v115 = &v100[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v114 = &v100[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC2F0, &unk_21CBA1660);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v138 = &v100[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF58, &unk_21CBA0980);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v137 = &v100[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v113 = &v100[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v136 = &v100[-v23];
  v112 = type metadata accessor for PMAccount.MockData(0);
  v24 = *(*(v112 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v112);
  v111 = &v100[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v25);
  v110 = &v100[-v27];
  v109 = type metadata accessor for PMAccount(0);
  v108 = *(v109 - 8);
  v28 = *(v108 + 64);
  MEMORY[0x28223BE20](v109);
  v107 = &v100[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  KeyPath = swift_getKeyPath();
  v119 = 1;
  v106 = xmmword_21CBA0690;
  v105 = xmmword_21CBA6150;
  do
  {
    v31 = 0;
    v32 = 0;
    do
    {
      v101 = v31;
      v33 = &unk_282E48BD8 + 16 * v32;
      v34 = *(v33 + 5);
      v139 = *(v33 + 4);
      v120 = v34;

      v35 = 0;
      v36 = 0;
      do
      {
        v135 = v35;
        v37 = &unk_282E48C18 + 16 * v36;
        v38 = *(v37 + 4);
        v39 = *(v37 + 5);
        v40 = qword_27CDEA4C0;

        if (v40 != -1)
        {
          swift_once();
        }

        sub_21CB86544();
        v41 = v140;
        if (*(v140 + 16) && (v42 = sub_21CB10910(KeyPath), (v43 & 1) != 0) && (sub_21C7A3394(*(v41 + 56) + 32 * v42, &v140), type metadata accessor for PMAccountsState(), (swift_dynamicCast() & 1) != 0) && v142)
        {
          v133 = v142;
        }

        else
        {
          if (qword_27CDEA3C8 != -1)
          {
            swift_once();
          }

          v44 = qword_27CE184E8;
          swift_beginAccess();
          v45 = *(v44 + 72);
          v46 = *(v44 + 80);
          ObjectType = swift_getObjectType();
          v48 = *(v46 + 8);

          swift_unknownObjectRetain();
          v133 = v48(ObjectType, v46);

          swift_unknownObjectRelease();
        }

        v140 = 0x2072657375;
        v141 = 0xE500000000000000;
        v142 = v119;
        v49 = sub_21CB862F4();
        MEMORY[0x21CF151F0](v49);

        MEMORY[0x21CF151F0](32, 0xE100000000000000);
        if (v39)
        {
          v50 = v38;
        }

        else
        {
          v50 = 0;
        }

        if (v39)
        {
          v51 = v39;
        }

        else
        {
          v51 = 0xE000000000000000;
        }

        MEMORY[0x21CF151F0](v50, v51);

        v130 = v141;
        v131 = v140;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFA8, &unk_21CBA0C70);
        v52 = swift_allocObject();
        v132 = v52;
        *(v52 + 16) = v106;
        v53 = v120;
        *(v52 + 32) = v139;
        *(v52 + 40) = v53;
        v54 = sub_21CB80DD4();
        v55 = *(v54 - 8);
        v121 = v38;
        v56 = *(v55 + 56);
        v134 = v39;
        v56(v136, 1, 1, v54);
        v57 = sub_21CB85BB4();
        v58 = *(v57 - 8);
        v128 = *(v58 + 56);
        v129 = v58 + 56;
        v128(v137, 1, 1, v57);
        v59 = sub_21CB85C04();
        v122 = *(*(v59 - 8) + 56);
        v122(v138, 1, 1, v59);

        v60 = v113;
        sub_21CB80DA4();
        v56(v60, 0, 1, v54);
        v61 = v112;
        v125 = *(v112 + 32);
        v62 = v110;
        v56(&v110[v125], 1, 1, v54);
        v63 = v61[11];
        v123 = (v62 + v61[10]);
        v124 = (v62 + v63);
        v126 = v61[12];
        v56((v62 + v126), 1, 1, v54);
        v64 = v61[15];
        v127 = v61[14];
        v128((v62 + v64), 1, 1, v57);
        v65 = v61[16];
        v122((v62 + v65), 1, 1, v59);
        v66 = v61[18];
        v67 = (v62 + v61[17]);
        v68 = sub_21CB85C44();
        v128 = *(*(v68 - 8) + 56);
        v129 = v66;
        v128((v62 + v66), 1, 1, v68);
        v69 = v130;
        *v62 = v131;
        *(v62 + 8) = v69;
        *(v62 + 16) = v105;
        v70 = v139;
        *(v62 + 32) = v139;
        *(v62 + 40) = v53;
        *(v62 + 48) = v70;
        *(v62 + 56) = v53;
        swift_bridgeObjectRetain_n();
        sub_21C7D3344(v60, v62 + v125, &unk_27CDED250, &qword_21CBA64C0);
        *(v62 + v61[9]) = v132;
        v71 = v123;
        *v123 = 0;
        v71[1] = 0;
        v72 = v124;
        *v124 = 0;
        v72[1] = 0;
        v73 = 1;
        sub_21C7D3344(v136, v62 + v126, &unk_27CDED250, &qword_21CBA64C0);
        *(v62 + v61[13]) = 1;
        *(v62 + v127) = 0;
        v74 = v134;
        sub_21C7D3344(v137, v62 + v64, &qword_27CDEAF58, &unk_21CBA0980);
        sub_21C7D3344(v138, v62 + v65, &unk_27CDEC2F0, &unk_21CBA1660);
        *v67 = 0;
        v67[1] = 0;
        if (v74)
        {

          v75 = v114;
          sub_21CB85B54();
          v73 = 0;
        }

        else
        {
          v75 = v114;
        }

        v128(v75, v73, 1, v68);
        sub_21C7D3344(v75, v62 + v129, &unk_27CDF20B0, &unk_21CBA0090);
        v76 = v111;
        sub_21C82A938(v62, v111, type metadata accessor for PMAccount.MockData);
        v77 = v115;
        sub_21C82A938(v76, v115, type metadata accessor for PMAccount.MockData);
        swift_storeEnumTagMultiPayload();
        v78 = v109;
        v79 = v107;
        v80 = (v107 + *(v109 + 28));
        *v80 = 0u;
        v80[1] = 0u;
        sub_21C82A938(v77, v79 + *(v78 + 24), type metadata accessor for PMAccount.Storage);
        v81 = *(v78 + 20);
        sub_21C7C8A3C(v79 + v81);
        v82 = v79 + v81;
        v83 = v117;
        sub_21C82A938(v82, v117, type metadata accessor for PMAccount.UniqueID);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v84 = v83;
          v85 = v103;
          sub_21C82A8D0(v84, v103, type metadata accessor for PMAccount.SIWAUniqueID);
          v86 = sub_21C7CE99C();
          v88 = v87;
          sub_21C82A9A0(v77, type metadata accessor for PMAccount.Storage);
          v89 = type metadata accessor for PMAccount.SIWAUniqueID;
        }

        else
        {
          v90 = v83;
          v85 = v102;
          sub_21C82A8D0(v90, v102, type metadata accessor for PMAccount.CombinedUniqueID);
          v86 = sub_21C7CE408();
          v88 = v91;
          sub_21C82A9A0(v77, type metadata accessor for PMAccount.Storage);
          v89 = type metadata accessor for PMAccount.CombinedUniqueID;
        }

        sub_21C82A9A0(v85, v89);
        *v79 = v86;
        v79[1] = v88;
        sub_21C82A9A0(v76, type metadata accessor for PMAccount.MockData);
        sub_21C82A9A0(v62, type metadata accessor for PMAccount.MockData);

        swift_getKeyPath();
        swift_getKeyPath();
        v92 = sub_21CB81DA4();
        v94 = v93;
        v95 = *v93;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v94 = v95;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v95 = sub_21CA4F1B8(0, v95[2] + 1, 1, v95);
          *v94 = v95;
        }

        v98 = v95[2];
        v97 = v95[3];
        if (v98 >= v97 >> 1)
        {
          v95 = sub_21CA4F1B8(v97 > 1, v98 + 1, 1, v95);
          *v94 = v95;
        }

        v95[2] = v98 + 1;
        sub_21C82A8D0(v79, v95 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v98, type metadata accessor for PMAccount);
        v92(&v140, 0);

        v35 = 1;
        v36 = 1;
      }

      while ((v135 & 1) == 0);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED260, &qword_21CBA1C60);
      swift_arrayDestroy();
      v31 = 1;
      v32 = 1;
    }

    while ((v101 & 1) == 0);
    swift_arrayDestroy();
  }

  while (v119++ != 200);
}

id sub_21C82A1B0(id result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      return result;
    }
  }

  else if (!v2)
  {

    return result;
  }

  v3 = result;
}

uint64_t sub_21C82A228(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21C6F35D0;

  return sub_21C8292E4(a1, v4, v5, sub_21C8292E4, v6);
}

unint64_t sub_21C82A2F0()
{
  result = qword_27CDED2A0;
  if (!qword_27CDED2A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDED2A0);
  }

  return result;
}

uint64_t objectdestroy_57Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_21C70AC30();
  v4 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_21C82A3E0()
{
  result = qword_27CDED2F0;
  if (!qword_27CDED2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED2F8, &qword_21CBA65F8);
    sub_21C7094C0(&unk_27CDED300, type metadata accessor for PMAppAccountsList);
    sub_21C6EADEC(&qword_27CDED1A8, &unk_27CDED1B0, &unk_21CBA6420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED2F0);
  }

  return result;
}

void sub_21C82A4C8(void *a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      return;
    }
  }

  else if (!v2)
  {

    return;
  }
}

uint64_t sub_21C82A540(uint64_t a1)
{
  v4 = *(sub_21CB82124() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C6F35D0;

  return sub_21C825550(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_21C82A660()
{
  v1 = *(sub_21CB82124() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_21CB82094();
}

uint64_t objectdestroy_67Tm()
{
  v1 = sub_21CB82124();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_21C82A794(uint64_t a1)
{
  v4 = *(sub_21CB82124() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C6F35D0;

  return sub_21C823B04(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_21C82A8D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C82A938(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C82A9A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C82AA00(uint64_t a1)
{
  v3 = *(sub_21CB82124() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v15 = *(v1 + 72);
  v11 = *(v1 + 88);
  v12 = v1 + ((*(v3 + 80) + 96) & ~*(v3 + 80));
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_21C702EFC;

  return sub_21C8219A0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_21C82AB48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED340, &qword_21CBA6688);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C82ABB8(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED340, &qword_21CBA6688) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_21CB820A4() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED348, &qword_21CBA6690) - 8);
  v12 = v2 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80));

  return sub_21C82392C(a1, a2, v2 + v6);
}

uint64_t sub_21C82AD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), char a6, uint64_t a7)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v14 = type metadata accessor for PMBulkOperationProgress();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();

  a5(a2, a3);
  v17 = sub_21C94C1A0(a6, a1, a7, v13);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DC4();
  v18 = *(v17 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_onCompletion);
  if (v18)
  {
    v19 = *(v17 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_onCompletion + 8);
    v18(0, 255);
  }

  return v17;
}

uint64_t sub_21C82AE40(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  if (a2 == -1 || (a2 & 1) == 0)
  {
    if (!v3)
    {
      return result;
    }

    return v3();
  }

  if (v3)
  {
    return v3();
  }

  return result;
}

uint64_t objectdestroy_114Tm()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C82AEC8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

uint64_t sub_21C82AFBC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_21C82B234();
  sub_21CB810D4();

  v3 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppAccountDetailsModel__state;
  swift_beginAccess();
  return sub_21C82B28C(v5 + v3, a1);
}

uint64_t sub_21C82B054(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppAccountDetailsModel__state;
  swift_beginAccess();
  sub_21C82B1D0(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_21C82B0C0()
{
  sub_21C82B174(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppAccountDetailsModel__state);
  v1 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppAccountDetailsModel___observationRegistrar;
  v2 = sub_21CB81114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21C82B174(uint64_t a1)
{
  v2 = type metadata accessor for PMAppAccountDetailsModel.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C82B1D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAppAccountDetailsModel.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C82B234()
{
  result = qword_27CDED418;
  if (!qword_27CDED418)
  {
    type metadata accessor for PMAppAccountDetailsModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED418);
  }

  return result;
}

uint64_t sub_21C82B28C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAppAccountDetailsModel.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_21C82B2F0()
{
  swift_getKeyPath();
  sub_21C82EAE0();
  sub_21CB810D4();

  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

id sub_21C82B368@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C82EAE0();
  sub_21CB810D4();

  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

void sub_21C82B3F0(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C82EAE0();
    sub_21CB810C4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_21C6E8F4C(0, &qword_27CDEBB30, 0x277D755B8);
  v5 = v4;
  v6 = a1;
  v7 = sub_21CB85DD4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 40);
LABEL_8:
  *(v2 + 40) = a1;
}

uint64_t sub_21C82B550()
{
  swift_getKeyPath();
  v4 = v0;
  sub_21C82EAE0();
  sub_21CB810D4();

  v2 = *(v0 + 48);
  v1 = *(v4 + 56);

  return v2;
}

uint64_t sub_21C82B5D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C82EAE0();
  sub_21CB810D4();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_21C82B64C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 48) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 56);
      if (sub_21CB86344())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C82EAE0();
    sub_21CB810C4();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_21C82B78C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81824();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  if ([v7 canEvaluatePolicy:1 error:0])
  {
    v8 = [v7 biometryType];

    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v9 = MEMORY[0x277CBA800];
        goto LABEL_11;
      }

      if (v8 == 4)
      {
        v9 = MEMORY[0x277CBA808];
        goto LABEL_11;
      }
    }

    else if (v8 == 1)
    {
      v9 = MEMORY[0x277CBA810];
LABEL_11:
      (*(v3 + 104))(v6, *v9, v2);
      sub_21CB81384();
      (*(v3 + 8))(v6, v2);
      goto LABEL_12;
    }
  }

  else
  {
  }

  sub_21CB81394();
LABEL_12:
  v10 = sub_21CB813C4();
  return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
}

uint64_t sub_21C82B95C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_21C82EAE0();
  sub_21CB810D4();

  v3 = v1[7];
  if (v3)
  {
    *a1 = v1[6];
    a1[1] = v3;
    v4 = *MEMORY[0x277CBA880];
    v5 = sub_21CB81A04();
    (*(*(v5 - 8) + 104))(a1, v4, v5);
    v6 = type metadata accessor for PMOsloBadge(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
  }

  else
  {
    swift_getKeyPath();
    sub_21CB810D4();

    v7 = v1[5];
    if (v7)
    {
      *a1 = v7;
      v8 = type metadata accessor for PMOsloBadge(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
      v9 = v7;
    }

    else
    {
      v11 = type metadata accessor for PMOsloBadge(0);
      (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
    }
  }
}

uint64_t sub_21C82BB64(__int128 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v40[-v6];
  v8 = sub_21CB81744();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v40[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = a1[5];
  *v46 = a1[4];
  *&v46[16] = v13;
  v47 = *(a1 + 12);
  v14 = a1[1];
  v42 = *a1;
  v43 = v14;
  v15 = a1[3];
  v44 = a1[2];
  v45 = v15;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 40) = 0;
  sub_21CB81104();
  v16 = v42;
  if (v42 == 2)
  {
    v17 = sub_21CA4F5B8(0, 1, 1, MEMORY[0x277D84F90]);
    v19 = *(v17 + 2);
    v22 = *(v17 + 3);
    v20 = v19 + 1;
    if (v19 >= v22 >> 1)
    {
      v17 = sub_21CA4F5B8((v22 > 1), v19 + 1, 1, v17);
    }

    v21 = 10;
  }

  else if (v42 == 1)
  {
    v17 = sub_21CA4F5B8(0, 1, 1, MEMORY[0x277D84F90]);
    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    v20 = v19 + 1;
    if (v19 >= v18 >> 1)
    {
      v17 = sub_21CA4F5B8((v18 > 1), v19 + 1, 1, v17);
    }

    v21 = 9;
  }

  else
  {
    if (v42)
    {
      type metadata accessor for PMSafariStreamlinedAutoFillViewControllerField(0);
      aBlock[0] = v16;
      result = sub_21CB86374();
      __break(1u);
      return result;
    }

    v17 = sub_21CA4F5B8(0, 1, 1, MEMORY[0x277D84F90]);
    v19 = *(v17 + 2);
    v23 = *(v17 + 3);
    v20 = v19 + 1;
    if (v19 >= v23 >> 1)
    {
      v17 = sub_21CA4F5B8((v23 > 1), v19 + 1, 1, v17);
    }

    v21 = 11;
  }

  *(v17 + 2) = v20;
  v17[v19 + 32] = v21;
  (*(v9 + 104))(v12, *MEMORY[0x277CBA7E0], v8);
  v24 = sub_21CB81734();
  v26 = v25;
  (*(v9 + 8))(v12, v8);
  v27 = sub_21C82C014(&v42);
  *(v2 + 64) = v24;
  *(v2 + 72) = v26;
  *(v2 + 80) = v27;
  *(v2 + 88) = v28;
  *(v2 + 96) = v17;
  *(v2 + 104) = 256;
  *(v2 + 106) = 0;
  v48 = *&v46[8];
  *(v2 + 24) = *&v46[8];
  v29 = objc_allocWithZone(MEMORY[0x277CBAA50]);
  aBlock[4] = sub_21C82CB18;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C95CD64;
  aBlock[3] = &block_descriptor_4;
  v30 = _Block_copy(aBlock);
  sub_21C6EDBAC(&v48, v40, &unk_27CDED260, &qword_21CBA1C60);
  v31 = [v29 initWithAllowNetworkFetchingBlock_];
  _Block_release(v30);

  *(v2 + 16) = v31;
  if (PMOnboardingShouldShowIconBadge())
  {
    v32 = sub_21CB858E4();
    (*(*(v32 - 8) + 56))(v7, 1, 1, v32);
    sub_21CB858B4();

    v33 = sub_21CB858A4();
    v34 = swift_allocObject();
    v35 = v44;
    *(v34 + 88) = v45;
    v36 = *&v46[16];
    *(v34 + 104) = *v46;
    *(v34 + 120) = v36;
    v37 = v43;
    *(v34 + 40) = v42;
    *(v34 + 56) = v37;
    v38 = MEMORY[0x277D85700];
    *(v34 + 16) = v33;
    *(v34 + 24) = v38;
    *(v34 + 32) = v2;
    *(v34 + 136) = v47;
    *(v34 + 72) = v35;
    sub_21C98B308(0, 0, v7, &unk_21CBA6AB0, v34);
  }

  else
  {
    sub_21C82EB78(&v42);
  }

  return v2;
}

uint64_t sub_21C82C014(uint64_t a1)
{
  v111 = a1;
  v1 = sub_21CB81664();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v110 = (&v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v98 = (&v94 - v6);
  v7 = sub_21CB817E4();
  v108 = *(v7 - 8);
  v109 = v7;
  v8 = *(v108 + 64);
  MEMORY[0x28223BE20](v7);
  v102 = (&v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v104 = sub_21CB81644();
  v103 = *(v104 - 8);
  v10 = *(v103 + 64);
  MEMORY[0x28223BE20](v104);
  v101 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v97 = &v94 - v13;
  v14 = sub_21CB81024();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v106 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v105 = &v94 - v19;
  v20 = objc_opt_self();
  v21 = [v20 sharedManager];
  v107 = [v21 numberOfAutoFillProvidersEnabled];

  v22 = [v20 sharedManager];
  v23 = [v22 getEnabledExtensionsSynchronously];

  if (v23)
  {
    v99 = v2;
    sub_21C6E8F4C(0, qword_280E22EE0, 0x277CCA9C8);
    v24 = sub_21CB85824();

    v100 = v1;
    v96 = v14;
    v95 = v15;
    v94 = v20;
    if (v24 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21CB85FA4())
    {
      v26 = 0;
      while (1)
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x21CF15BD0](v26, v24);
        }

        else
        {
          if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v27 = *(v24 + 8 * v26 + 32);
        }

        v28 = v27;
        v29 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        v30 = [v27 sf_bundleIdentifierForContainingApp];
        if (v30)
        {
          v31 = v30;
          v32 = sub_21CB855C4();
          v34 = v33;

          v35 = *(v111 + 80);
          if (v35)
          {
            if (v32 == *(v111 + 72) && v35 == v34)
            {

LABEL_23:

              v38 = v28;
              v39 = [v94 sharedManager];
              v40 = [v39 displayNameForExtension_];

              v41 = sub_21CB855C4();
              v43 = v42;

              v1 = v100;
              v2 = v99;
              goto LABEL_29;
            }

            v37 = sub_21CB86344();

            if (v37)
            {
              goto LABEL_23;
            }
          }

          else
          {
          }
        }

        else if (!*(v111 + 80))
        {
          goto LABEL_23;
        }

        ++v26;
        if (v29 == i)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

LABEL_27:

    v1 = v100;
    v2 = v99;
    v14 = v96;
    v15 = v95;
  }

  v44 = v105;
  sub_21CB81014();
  v45 = v106;
  sub_21CB81014();
  v41 = sub_21CB80FF4();
  v43 = v46;
  v47 = *(v15 + 8);
  v47(v45, v14);
  v47(v44, v14);
  v38 = 0;
LABEL_29:
  v48 = v111;
  v49 = (v111 + 24);
  if (*v111)
  {
    v117[0] = *v49;
    v50 = *(&v117[0] + 1);
    if (!*(&v117[0] + 1) || (v116 = *(v111 + 8), v51 = *&v117[0], v117[0] == v116) || (v52 = sub_21CB86344(), v48 = v111, (v52 & 1) != 0))
    {
      v53 = v48;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED480, &qword_21CBA6AC8);
      v55 = v54[12];
      v56 = v54[16];
      v115 = *(v53 + 8);
      v57 = v109;
      v58 = v110;
      *v110 = v115;
      (*(v108 + 104))(v58, *MEMORY[0x277CBA7F0], v57);
      v59 = *(v53 + 40);
      *(v58 + v55) = v59;
      v113 = *(v53 + 88);
      v114 = v59;
      *(v58 + v56) = v113;
      if (v107 < 2)
      {
        sub_21C805950(&v115, v112);
        sub_21C805950(&v114, v112);
        sub_21C6EDBAC(&v113, v112, &unk_27CDED260, &qword_21CBA1C60);

        v41 = 0;
        v43 = 0;
      }

      else
      {
        sub_21C805950(&v115, v112);
        sub_21C805950(&v114, v112);
        sub_21C6EDBAC(&v113, v112, &unk_27CDED260, &qword_21CBA1C60);
      }

      v74 = v110;
      v75 = (v110 + v54[20]);
      *v75 = v41;
      v75[1] = v43;
      (*(v2 + 104))(v74, *MEMORY[0x277CBA7B0], v1);
      v73 = sub_21CB81654();

      (*(v2 + 8))(v74, v1);
    }

    else
    {
      v77 = v111;
      sub_21C6EDBAC(v117, &v115, &unk_27CDED260, &qword_21CBA1C60);
      sub_21C805950(&v116, &v115);

      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED488, &qword_21CBA6AD0);
      v79 = v98;
      v80 = (v98 + *(v78 + 48));
      v81 = v2;
      v82 = (v98 + *(v78 + 64));
      *v98 = v116;
      (*(v108 + 104))(v79, *MEMORY[0x277CBA7F0], v109);
      v83 = *(v77 + 40);
      v84 = *(v77 + 48);
      *v80 = v83;
      v80[1] = v84;
      *v82 = v51;
      v82[1] = v50;
      (*(v81 + 104))(v79, *MEMORY[0x277CBA7A8], v1);

      v73 = sub_21CB81654();

      (*(v81 + 8))(v79, v1);
    }
  }

  else
  {
    v117[0] = *v49;
    v60 = *(&v117[0] + 1);
    if (!*(&v117[0] + 1) || (v116 = *(v111 + 8), v61 = *&v117[0], v117[0] == v116) || (v62 = sub_21CB86344(), v48 = v111, (v62 & 1) != 0))
    {
      v64 = v107;
      v63 = v108;
      v115 = *(v48 + 8);
      v65 = v102;
      *v102 = v115;
      v66 = v48;
      (*(v63 + 104))(v65, *MEMORY[0x277CBA7F0], v109);
      v68 = *(v66 + 40);
      v67 = *(v66 + 48);
      sub_21C805950(&v115, &v114);

      v69 = v101;
      sub_21CB816F4();
      if (v64 < 2)
      {

        v41 = 0;
        v43 = 0;
      }

      v70 = &v69[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED490, &qword_21CBA6AD8) + 48)];
      *v70 = v41;
      v70[1] = v43;
      v71 = v103;
      v72 = v104;
      (*(v103 + 104))(v69, *MEMORY[0x277CBA7A0], v104);
      v73 = sub_21CB81634();

      (*(v71 + 8))(v69, v72);
    }

    else
    {
      v85 = v111;
      sub_21C6EDBAC(v117, &v115, &unk_27CDED260, &qword_21CBA1C60);
      sub_21C805950(&v116, &v115);

      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED498, &unk_21CBA6AE0);
      v87 = v97;
      v88 = &v97[*(v86 + 48)];
      v89 = v102;
      *v102 = v116;
      (*(v108 + 104))(v89, *MEMORY[0x277CBA7F0], v109);
      v91 = *(v85 + 40);
      v90 = *(v85 + 48);

      sub_21CB816F4();
      *v88 = v61;
      *(v88 + 1) = v60;
      v92 = v103;
      v93 = v104;
      (*(v103 + 104))(v87, *MEMORY[0x277CBA798], v104);
      v73 = sub_21CB81634();

      (*(v92 + 8))(v87, v93);
    }
  }

  return v73;
}

uint64_t sub_21C82CB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[28] = a4;
  v5[29] = a5;
  sub_21CB858B4();
  v5[30] = sub_21CB858A4();
  v7 = sub_21CB85874();
  v5[31] = v7;
  v5[32] = v6;

  return MEMORY[0x2822009F8](sub_21C82CBDC, v7, v6);
}

uint64_t sub_21C82CBDC()
{
  v1 = v0[29];
  v2 = *(v0[28] + 16);
  v0[33] = v2;
  v0[34] = *(v1 + 56);
  v0[35] = *(v1 + 64);
  v3 = sub_21CB85584();
  v0[36] = v3;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_21C82CD28;
  v4 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED470, &qword_21CBA6AB8);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_21C82D154;
  v0[21] = &block_descriptor_31;
  v0[22] = v4;
  [v2 bundleIDForDomain:v3 completionHandler:v0 + 18];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21C82CD28()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21C82CE30, v2, v1);
}

uint64_t sub_21C82CE30()
{
  v1 = *(v0 + 216);
  if (v1)
  {
    v2 = *(v0 + 288);
    v3 = *(v0 + 240);
    v4 = *(v0 + 224);
    v5 = *(v0 + 208);

    sub_21C82B64C(v5, v1);
    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 280);
    v9 = *(v0 + 264);
    v10 = *(v0 + 272);

    v11 = sub_21CB85584();
    *(v0 + 296) = v11;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 208;
    *(v0 + 88) = sub_21C82CFD8;
    v12 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED478, &qword_21CBA6AC0);
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_21C82D1CC;
    *(v0 + 168) = &block_descriptor_34;
    *(v0 + 176) = v12;
    [v9 iconForDomain:v11 requestID:0 responseHandler:v0 + 144];

    return MEMORY[0x282200938](v0 + 80);
  }
}

uint64_t sub_21C82CFD8()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21C82D0E0, v2, v1);
}

uint64_t sub_21C82D0E0()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);

  sub_21C82B3F0(*(v0 + 208));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_21C82D154(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = sub_21CB855C4();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = *(*(v3 + 64) + 40);
  *v6 = v4;
  v6[1] = v5;

  return MEMORY[0x282200948](v3);
}

uint64_t sub_21C82D1CC(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

uint64_t sub_21C82D230()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);

  v6 = OBJC_IVAR____TtCE17PasswordManagerUICSo41PMSafariStreamlinedAutoFillViewController21ConfigurationProvider___observationRegistrar;
  v7 = sub_21CB81114();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

__n128 PMSafariStreamlinedAutoFillViewController.AutofillConfiguration.init(field:host:matchedHost:username:domainForWebsiteImage:credentialProviderBundleID:creationDate:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12)
{
  result = a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  return result;
}

uint64_t PMSafariStreamlinedAutoFillViewController.AutofillConfiguration.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[8];
  v11 = v0[9];
  v8 = v0[10];
  v7 = v0[11];
  v12 = v0[7];
  v9 = v0[12];
  MEMORY[0x21CF15F90](*v0);
  sub_21CB854C4();
  sub_21CB864A4();
  if (v3)
  {
    sub_21CB854C4();
  }

  sub_21CB854C4();
  sub_21CB854C4();
  if (!v8)
  {
    sub_21CB864A4();
    if (v9)
    {
      goto LABEL_5;
    }

    return sub_21CB864A4();
  }

  sub_21CB864A4();
  sub_21CB854C4();
  if (!v9)
  {
    return sub_21CB864A4();
  }

LABEL_5:
  sub_21CB864A4();

  return sub_21CB854C4();
}

uint64_t PMSafariStreamlinedAutoFillViewController.AutofillConfiguration.hashValue.getter()
{
  sub_21CB86484();
  PMSafariStreamlinedAutoFillViewController.AutofillConfiguration.hash(into:)();
  return sub_21CB864D4();
}

uint64_t sub_21C82D59C()
{
  sub_21CB86484();
  PMSafariStreamlinedAutoFillViewController.AutofillConfiguration.hash(into:)();
  return sub_21CB864D4();
}

uint64_t sub_21C82D5E0()
{
  sub_21CB86484();
  PMSafariStreamlinedAutoFillViewController.AutofillConfiguration.hash(into:)();
  return sub_21CB864D4();
}

id PMSafariStreamlinedAutoFillViewController.init(savedAccountMatch:host:hasPasswordFieldToFill:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  return sub_21C82D9A4(a1, a2, a3, a4, &selRef_initWithSavedAccountMatch_host_hasPasswordFieldToFill_);
}

{
  v6 = sub_21CB80DD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  *&v9 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 autoFillPasskey];
  if (v12)
  {

    v26[0] = 0;
  }

  else
  {
    v13 = 1;
    if ((a4 & 1) == 0)
    {
      v13 = 2;
    }

    v26[0] = v13;
  }

  v14 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v14 setTimeStyle_];
  [v14 setDateStyle_];
  [v14 setFormattingContext_];
  v15 = sub_21CB85584();

  v16 = [a1 host];
  if (!v16)
  {
    sub_21CB855C4();
    v16 = sub_21CB85584();
  }

  v17 = [v16 safari_highLevelDomainFromHost];

  v18 = [a1 user];
  if (!v18)
  {
    sub_21CB855C4();
    v18 = sub_21CB85584();
  }

  v19 = [a1 host];
  if (!v19)
  {
    sub_21CB855C4();
    v19 = sub_21CB85584();
  }

  v20 = [v19 safari_highLevelDomainForPasswordManager];

  if (!v20)
  {
    sub_21CB855C4();
    v20 = sub_21CB85584();
  }

  v21 = [a1 creationDate];
  sub_21CB80D94();

  v22 = sub_21CB80D24();
  (*(v7 + 8))(v11, v6);
  v23 = [v14 stringFromDate_];

  if (!v23)
  {
    sub_21CB855C4();
    v23 = sub_21CB85584();
  }

  v24 = [v26[1] initWithField:v26[0] host:v15 matchedHost:v17 username:v18 domainForWebsiteImage:v20 credentialProviderBundleID:0 creationDate:v23];

  return v24;
}

id PMSafariStreamlinedAutoFillViewController.init(credentialIdentity:host:hasPasswordFieldToFill:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  return sub_21C82D9A4(a1, a2, a3, a4, &selRef_initWithCredentialIdentity_host_hasPasswordFieldToFill_);
}

{
  v7 = [a1 type];
  v8 = sub_21CB85584();

  v9 = [a1 user];
  if (!v9)
  {
    sub_21CB855C4();
    v9 = sub_21CB85584();
  }

  v10 = [a1 serviceIdentifier];
  if (!v10)
  {
    sub_21CB855C4();
    v10 = sub_21CB85584();
  }

  v11 = [a1 owningExtensionState];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 providerBundleID];
  }

  else
  {
    v13 = 0;
  }

  v14 = 1;
  if ((a4 & 1) == 0)
  {
    v14 = 2;
  }

  if (v7 == 2)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  v16 = [v4 initWithField:v15 host:v8 matchedHost:0 username:v9 domainForWebsiteImage:v10 credentialProviderBundleID:v13 creationDate:0];

  return v16;
}

id sub_21C82D9A4(void *a1, uint64_t a2, uint64_t a3, char a4, SEL *a5)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_21CB85584();

  v10 = [v8 *a5];

  return v10;
}

id sub_21C82DC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  *(v11 + OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_delegate) = 0;
  v12 = v11 + OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_autofillConfiguration;
  *v12 = a1;
  *(v12 + 8) = a2;
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;
  *(v12 + 40) = a6;
  *(v12 + 48) = a7;
  *(v12 + 56) = a8;
  *(v12 + 64) = a9;
  *(v12 + 80) = a10;
  *(v12 + 96) = a11;
  v14.super_class = PMSafariStreamlinedAutoFillViewController;
  return objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
}

id PMSafariStreamlinedAutoFillViewController.init(autofillConfiguration:)(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v6 = a1[7];
  v8 = a1[9];
  v21 = a1[2];
  v22 = a1[8];
  v9 = a1[10];
  v19 = a1[11];
  v10 = a1[12];
  v11 = sub_21CB85584();
  if (v4)
  {

    v12 = sub_21CB85584();
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_21CB85584();
  v14 = sub_21CB85584();
  if (!v9)
  {
    v15 = 0;
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  v15 = sub_21CB85584();

  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_6:

  v16 = sub_21CB85584();

LABEL_9:
  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithField:v20 host:v11 matchedHost:v12 username:v13 domainForWebsiteImage:v14 credentialProviderBundleID:v15 creationDate:v16];

  return v17;
}

void PMSafariStreamlinedAutoFillViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_delegate) = 0;
  sub_21CB861C4();
  __break(1u);
}

Swift::Void __swiftcall PMSafariStreamlinedAutoFillViewController.loadView()()
{
  v1 = *&v0[OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_autofillConfiguration + 48];
  v2 = *&v0[OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_autofillConfiguration + 80];
  v38 = *&v0[OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_autofillConfiguration + 64];
  v39 = v2;
  v3 = *&v0[OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_autofillConfiguration + 16];
  v35[0] = *&v0[OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_autofillConfiguration];
  v35[1] = v3;
  v4 = *&v0[OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_autofillConfiguration + 48];
  v6 = *&v0[OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_autofillConfiguration];
  v5 = *&v0[OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_autofillConfiguration + 16];
  v36 = *&v0[OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_autofillConfiguration + 32];
  v37 = v4;
  v7 = *&v0[OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_autofillConfiguration + 80];
  v29 = v38;
  v30 = v7;
  v25 = v6;
  v26 = v5;
  v40 = *&v0[OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_autofillConfiguration + 96];
  v9 = *(&v38 + 1);
  v8 = v39;
  v31 = *&v0[OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_autofillConfiguration + 96];
  v27 = v36;
  v28 = v1;
  v10 = _s21ConfigurationProviderCMa();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  sub_21C82E828(v35, v20);

  sub_21C82BB64(&v25);
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v14 = swift_allocObject();
  *(v14 + 16) = v0;
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  sub_21C6EDBAC(v23, v22, &unk_27CDFA2C0, &unk_21CBA68A0);
  v16 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDFA2C0, &unk_21CBA68A0);
  sub_21CB84D44();
  sub_21C6EA794(v23, &unk_27CDFA2C0, &unk_21CBA68A0);
  *&v25 = sub_21C82E860;
  *(&v25 + 1) = v14;
  *&v26 = nullsub_1;
  *(&v26 + 1) = 0;
  v29 = v13;
  sub_21C6EA794(&v30, &qword_27CDF3260, &qword_21CBAF450);
  v32 = 0;
  sub_21C6EDBAC(v20, &v30, &unk_27CDFA2C0, &unk_21CBA68A0);
  *&v27 = sub_21C82E868;
  *(&v27 + 1) = v15;
  *&v28 = v9;
  *(&v28 + 1) = v8;
  v17 = objc_opt_self();
  v33 = [v17 biometryType];
  LOBYTE(v17) = [v17 isPad];
  sub_21C6EA794(v20, &unk_27CDFA2C0, &unk_21CBA68A0);
  v34 = v17;
  sub_21C6EDBAC(&v25, v20, &qword_27CDED430, &qword_21CBA68B0);
  v18 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED438, &qword_21CBA68B8));
  v19 = sub_21CB827D4();
  sub_21C6EA794(&v25, &qword_27CDED430, &qword_21CBA68B0);
  [v16 setView_];
}

id sub_21C82E318(uint64_t a1, id a2)
{
  result = [a2 delegate];
  if (result)
  {
    v5 = &selRef_streamlinedAutoFillViewControllerShowKeyboard_;
    if (a1)
    {
      v5 = &selRef_streamlinedAutoFillViewControllerFillCredential_;
    }

    [result *v5];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_21C82E3A0(char a1, id a2)
{
  result = [a2 delegate];
  if (result)
  {
    v5 = &selRef_streamlinedAutoFillViewControllerShowOtherPasswords_;
    if ((a1 & 1) == 0)
    {
      v5 = &selRef_streamlinedAutoFillViewControllerShowKeyboard_;
    }

    [result *v5];

    return swift_unknownObjectRelease();
  }

  return result;
}

void __swiftcall PMSafariStreamlinedAutoFillViewController.init(nibName:bundle:)(PMSafariStreamlinedAutoFillViewController *__return_ptr retstr, Swift::String_optional nibName, NSBundle_optional bundle)
{
  isa = bundle.value.super.isa;
  if (nibName.value._object)
  {
    v4 = sub_21CB85584();
  }

  else
  {
    v4 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:isa];
}

uint64_t _sSo41PMSafariStreamlinedAutoFillViewControllerC17PasswordManagerUIE21AutofillConfigurationV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v4 = a1[4];
  v3 = a1[5];
  v5 = a1[6];
  v21 = a1[8];
  v22 = a1[7];
  v20 = a1[10];
  v18 = a1[12];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];
  v15 = a2[9];
  v16 = a1[9];
  v19 = a2[10];
  v13 = a1[11];
  v14 = a2[11];
  v17 = a2[12];
  if ((a1[1] != a2[1] || a1[2] != a2[2]) && (sub_21CB86344() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7 || (v2 != v6 || v4 != v7) && (sub_21CB86344() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if ((v3 != v8 || v5 != v9) && (sub_21CB86344() & 1) == 0 || (v22 != v10 || v21 != v11) && (sub_21CB86344() & 1) == 0)
  {
    return 0;
  }

  if (v20)
  {
    if (!v19 || (v16 != v15 || v20 != v19) && (sub_21CB86344() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (v18)
  {
    if (v17 && (v13 == v14 && v18 == v17 || (sub_21CB86344() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v17)
  {
    return 1;
  }

  return 0;
}

uint64_t _s21ConfigurationProviderCMa()
{
  result = qword_27CDED450;
  if (!qword_27CDED450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21C82E878()
{
  result = qword_27CDED440;
  if (!qword_27CDED440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED440);
  }

  return result;
}

uint64_t sub_21C82E8D4()
{
  result = sub_21CB81114();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_21C82E9C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_21C82EA08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21C82EAE0()
{
  result = qword_27CDED468;
  if (!qword_27CDED468)
  {
    _s21ConfigurationProviderCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED468);
  }

  return result;
}

uint64_t sub_21C82EB38()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 56);
  *(v1 + 48) = v0[3];
  *(v1 + 56) = v2;
}

uint64_t sub_21C82EBA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21C702EFC;

  return sub_21C82CB44(a1, v4, v5, v6, (v1 + 5));
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_21C82EC94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21C82ECDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21C82ED48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30[1] = a3;
  v32 = a1;
  v33 = a2;
  v34 = a4;
  v4 = sub_21CB82A54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED4A0, &qword_21CBA6B80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED4A8, &qword_21CBA6B88);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v30 - v15;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED4B0, &qword_21CBA6B90);
  v17 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v19 = v30 - v18;
  v35 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED4B8, &qword_21CBA6B98);
  sub_21C82F1AC();
  sub_21CB84DA4();
  v20 = sub_21CB83CE4();
  sub_21CB81F24();
  v21 = &v12[*(v9 + 36)];
  *v21 = v20;
  *(v21 + 1) = v22;
  *(v21 + 2) = v23;
  *(v21 + 3) = v24;
  *(v21 + 4) = v25;
  v21[40] = 0;
  sub_21CB82A44();
  sub_21C82F3A8();
  sub_21C82F6F0(&qword_27CDED508, MEMORY[0x277CDDB18]);
  sub_21CB84124();
  (*(v5 + 8))(v8, v4);
  sub_21C82F460(v12);
  v36 = 0;
  sub_21CB84D44();
  LOBYTE(v9) = v37;
  v26 = v38;
  KeyPath = swift_getKeyPath();
  v28 = &v16[*(v13 + 36)];
  *v28 = v9;
  *(v28 + 1) = v26;
  *(v28 + 2) = KeyPath;
  v28[24] = 0;
  v37 = v32;
  v38 = v33;
  sub_21C82F4C8();
  sub_21C71F3FC();
  sub_21CB843E4();
  sub_21C6EA794(v16, &qword_27CDED4A8, &qword_21CBA6B88);
  sub_21CB828E4();
  return sub_21C6EA794(v19, &qword_27CDED4B0, &qword_21CBA6B90);
}

uint64_t sub_21C82F0D0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB84BB4();
  sub_21CB83D94();
  sub_21CB83E04();
  v3 = sub_21CB83E54();

  KeyPath = swift_getKeyPath();
  v5 = sub_21CB837E4();
  v6 = sub_21CB83CE4();
  result = sub_21CB81F24();
  *a1 = v2;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 28) = 0;
  *(a1 + 32) = v6;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = 0;
  return result;
}

unint64_t sub_21C82F1AC()
{
  result = qword_27CDED4C0;
  if (!qword_27CDED4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED4B8, &qword_21CBA6B98);
    sub_21C82F238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED4C0);
  }

  return result;
}

unint64_t sub_21C82F238()
{
  result = qword_27CDED4C8;
  if (!qword_27CDED4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED4D0, &qword_21CBA6BA0);
    sub_21C82F2F0();
    sub_21C6EADEC(&qword_27CDEB970, &qword_27CDEB948, &unk_21CBA26E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED4C8);
  }

  return result;
}

unint64_t sub_21C82F2F0()
{
  result = qword_27CDED4D8;
  if (!qword_27CDED4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED4E0, &qword_21CBA6BA8);
    sub_21C74DDEC();
    sub_21C6EADEC(&qword_27CDEC730, &qword_27CDEC738, &unk_21CBA6BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED4D8);
  }

  return result;
}

unint64_t sub_21C82F3A8()
{
  result = qword_27CDED4F0;
  if (!qword_27CDED4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED4A0, &qword_21CBA6B80);
    sub_21C6EADEC(&qword_27CDED4F8, &qword_27CDED500, &qword_21CBA6BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED4F0);
  }

  return result;
}

uint64_t sub_21C82F460(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED4A0, &qword_21CBA6B80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21C82F4C8()
{
  result = qword_27CDED510;
  if (!qword_27CDED510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED4A8, &qword_21CBA6B88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED4A0, &qword_21CBA6B80);
    sub_21CB82A54();
    sub_21C82F3A8();
    sub_21C82F6F0(&qword_27CDED508, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_21C82F5E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED510);
  }

  return result;
}

unint64_t sub_21C82F5E0()
{
  result = qword_27CDED518;
  if (!qword_27CDED518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED518);
  }

  return result;
}

unint64_t sub_21C82F634()
{
  result = qword_27CDED520;
  if (!qword_27CDED520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED4B0, &qword_21CBA6B90);
    sub_21C82F4C8();
    sub_21C82F6F0(&qword_27CDEB908, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED520);
  }

  return result;
}

uint64_t sub_21C82F6F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C82F738()
{
  sub_21C71E9B8(*(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_17PasswordManagerUI34PMAccountsNavigationContainerModelC5StateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21C82F788(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_21C82F7E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_21C82F834(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_21C82F8B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_21C7226D8();
    if (v3 <= 0x3F)
    {
      sub_21C7205C4();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21C82F950(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
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

void sub_21C82FAB4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
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
          *v18 = a2 & 0x7FFFFFFF;
          v18[1] = 0;
        }

        else
        {
          *v18 = a2 - 1;
        }
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
  bzero(a1, ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9);
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

uint64_t sub_21C82FCC0(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C82FD0C(uint64_t a1)
{
  v2 = *(a1 + 48);
  v14[0] = *(a1 + 24);
  v14[1] = MEMORY[0x277D84A98];
  v14[2] = v2;
  v14[3] = MEMORY[0x277CE1538];
  v3 = sub_21CB82624();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - v9;
  sub_21C82FE8C(a1);
  WitnessTable = swift_getWitnessTable();
  sub_21C72BE10(v7, v3, WitnessTable);
  v12 = *(v4 + 8);
  v12(v7, v3);
  sub_21C72BE10(v10, v3, WitnessTable);
  return (v12)(v10, v3);
}

uint64_t sub_21C82FE8C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = sub_21CB85E54();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v11[-v7];
  v9 = *(v3 - 8);
  (*(v9 + 16))(&v11[-v7], v1, v3, v6);
  (*(v9 + 56))(v8, 0, 1, v3);
  v12 = v3;
  v13 = *(a1 + 24);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = v1;
  return sub_21CB82604();
}

uint64_t sub_21C82FFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v26 - v14;
  v26[0] = v16;
  v26[1] = v17;
  v26[2] = v18;
  v26[3] = v19;
  v26[4] = v20;
  v26[5] = v21;
  v22 = a1 + *(type metadata accessor for PMAccountsNavigationLink() + 68);
  v23 = *(v22 + 8);
  (*v22)();
  sub_21C72BE10(v12, a3, a6);
  v24 = *(v9 + 8);
  v24(v12, a3);
  sub_21C72BE10(v15, a3, a6);
  return (v24)(v15, a3);
}

uint64_t sub_21C830140()
{
  sub_21C723244();

  return sub_21CB82F94();
}

PasswordManagerUI::PMAccountsNavigationStyle_optional __swiftcall PMAccountsNavigationStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21CB86244();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PMAccountsNavigationStyle.rawValue.getter()
{
  v1 = 0x65536D6574737973;
  v2 = 0x64726F7773736170;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 7368801;
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

uint64_t sub_21C830274()
{
  v1 = *v0;
  sub_21CB86484();
  sub_21CB854C4();

  return sub_21CB864D4();
}

uint64_t sub_21C83034C()
{
  *v0;
  *v0;
  *v0;
  sub_21CB854C4();
}

uint64_t sub_21C830410()
{
  v1 = *v0;
  sub_21CB86484();
  sub_21CB854C4();

  return sub_21CB864D4();
}

void sub_21C8304F0(unint64_t *a1@<X8>)
{
  v2 = 0xEE0073676E697474;
  v3 = 0x65536D6574737973;
  v4 = 0xEF736E6F6974704FLL;
  v5 = 0x64726F7773736170;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000011;
    v4 = 0x800000021CB89F60;
  }

  if (*v1)
  {
    v3 = 7368801;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_21C830594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21C70CC08();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_21C830624(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED670, &qword_21CBA7280);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED678, &qword_21CBA7288);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18[-v12];
  v19 = a1;
  v20 = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED680, &unk_21CBA7290);
  sub_21C830C8C();
  sub_21CB84C84();
  v21 = 0;
  LOBYTE(v22) = 1;
  v14 = sub_21C830DF8();
  v15 = sub_21C830E5C();
  sub_21CB844C4();
  (*(v5 + 8))(v8, v4);
  KeyPath = swift_getKeyPath();
  v24 = v15;
  v25 = KeyPath;
  v26 = 0;
  v21 = v4;
  v22 = &type metadata for PMListSubtitleCellLabeledContentStyle;
  v23 = v14;
  swift_getOpaqueTypeConformance2();
  sub_21C830EB0();
  sub_21CB840E4();

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_21C8308D0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v18 - v8;
  sub_21CB81014();
  sub_21CB81014();
  v10 = sub_21CB80FF4();
  v12 = v11;
  v13 = *(v3 + 8);
  v13(v6, v2);
  v13(v9, v2);
  v18[0] = v10;
  v18[1] = v12;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v17;
  return result;
}

double sub_21C830A60@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_21CB82F84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    sub_21CB85B04();
    v13 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(a1, 0);
    (*(v7 + 8))(v10, v6);
    if ((v20 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18[0] = sub_21CB84BB4();
    memset(&v18[1], 0, 32);
    v19 = 1;
    goto LABEL_6;
  }

  if (a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_21CB84BB4();
  v12 = sub_21CB84A84();
  v18[0] = v11;
  v18[1] = v12;
  *&v18[2] = vdupq_n_s64(0x4040000000000000uLL);
  v18[4] = 0x4018000000000000;
  v19 = 0;
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED698, &unk_21CBB8140);
  sub_21C830D18();
  sub_21CB83494();
  result = *&v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  *a3 = v20;
  *(a3 + 16) = v15;
  *(a3 + 32) = v16;
  *(a3 + 40) = v17;
  return result;
}

unint64_t sub_21C830C8C()
{
  result = qword_27CDED688;
  if (!qword_27CDED688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED680, &unk_21CBA7290);
    sub_21C830D18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED688);
  }

  return result;
}

unint64_t sub_21C830D18()
{
  result = qword_27CDED690;
  if (!qword_27CDED690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED698, &unk_21CBB8140);
    sub_21C830DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED690);
  }

  return result;
}

unint64_t sub_21C830DA4()
{
  result = qword_27CDED6A0;
  if (!qword_27CDED6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED6A0);
  }

  return result;
}

unint64_t sub_21C830DF8()
{
  result = qword_27CDED6A8;
  if (!qword_27CDED6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED670, &qword_21CBA7280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED6A8);
  }

  return result;
}

unint64_t sub_21C830E5C()
{
  result = qword_27CDED6B0;
  if (!qword_27CDED6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED6B0);
  }

  return result;
}

unint64_t sub_21C830EB0()
{
  result = qword_27CDED6B8;
  if (!qword_27CDED6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED6B8);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_21C830F18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_21C830F60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21C830FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v42 = a4;
  v49 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED6C0, &qword_21CBA73B8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v41[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED6C8, &qword_21CBA73C0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v41[-v16];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED6D0, &qword_21CBA73C8);
  v47 = *(v48 - 8);
  v18 = *(v47 + 64);
  MEMORY[0x28223BE20](v48);
  v20 = &v41[-v19];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED6D8, &unk_21CBA73D0);
  v45 = *(v46 - 8);
  v21 = *(v45 + 64);
  MEMORY[0x28223BE20](v46);
  v44 = &v41[-v22];
  v54 = a1;
  v55 = a2;
  v43 = a2;
  v56 = a3;
  v57 = v42 & 1;
  v50 = a1;
  v51 = a2;
  v52 = a3;
  v53 = v42 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED6E0, &qword_21CBBE3A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED6E8, &qword_21CBA73E0);
  sub_21C831C64();
  sub_21C831CE0();
  sub_21CB84C84();
  v58 = 0;
  LOBYTE(v59) = 1;
  v23 = sub_21C6EADEC(&qword_27CDED740, &qword_27CDED6C0, &qword_21CBA73B8);
  v24 = sub_21C830E5C();
  sub_21CB844C4();
  (*(v9 + 8))(v12, v8);
  KeyPath = swift_getKeyPath();
  v61 = v24;
  v62 = KeyPath;
  v63 = 0;
  v58 = v8;
  v59 = &type metadata for PMListSubtitleCellLabeledContentStyle;
  v60 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_21C830EB0();
  sub_21CB840E4();

  (*(v14 + 8))(v17, v13);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if ((v58 & 1) == 0 && sub_21C74C3BC() > 0)
  {
    sub_21C74C3BC();
  }

  v58 = v13;
  v59 = &type metadata for PMAccountsListNavigationCellLabelStyle;
  v60 = OpaqueTypeConformance2;
  v61 = v27;
  swift_getOpaqueTypeConformance2();
  v28 = v44;
  v29 = v48;
  sub_21CB84784();
  (*(v47 + 8))(v20, v29);
  LOBYTE(v29) = sub_21CB83D44();
  sub_21CB81F24();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = v49;
  (*(v45 + 32))(v49, v28, v46);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED748, &qword_21CBA7478);
  v40 = v38 + *(result + 36);
  *v40 = v29;
  *(v40 + 8) = v31;
  *(v40 + 16) = v33;
  *(v40 + 24) = v35;
  *(v40 + 32) = v37;
  *(v40 + 40) = 0;
  return result;
}

uint64_t sub_21C831584@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  sub_21CB1AB84(a1);

  sub_21C71F3FC();
  result = sub_21CB84054();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_21C831604@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v18 - v8;
  sub_21CB81014();
  sub_21CB81014();
  v10 = sub_21CB80FF4();
  v12 = v11;
  v13 = *(v3 + 8);
  v13(v6, v2);
  v13(v9, v2);
  v18[0] = v10;
  v18[1] = v12;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v17;
  return result;
}

double sub_21C831794@<D0>(uint64_t a1@<X2>, char a2@<W3>, uint64_t a3@<X8>)
{
  v6 = sub_21CB82F84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if ((a1 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {

    sub_21CB85B04();
    v14 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(a1, 0);
    (*(v7 + 8))(v10, v6);
    if ((v29[0] & 1) == 0)
    {
LABEL_3:
      sub_21C831AA8(v29);
      v11 = *&v29[0];
      v12 = BYTE8(v29[0]);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21CB81DB4();

      if (v23 == 1 && !sub_21C74C3BC())
      {
        v13 = sub_21CB84AC4();
      }

      else
      {
        v13 = sub_21CB84A64();
      }

      v23 = v11;
      v24 = v12;
      v25 = v13;
      v26 = vdupq_n_s64(0x4040000000000000uLL);
      v27 = 0x4018000000000000;
      v28 = 0;
      goto LABEL_12;
    }
  }

  sub_21C831AA8(v29);
  v15 = *&v29[0];
  v16 = BYTE8(v29[0]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v23 == 1 && !sub_21C74C3BC())
  {
    v17 = sub_21CB84AC4();
  }

  else
  {
    v17 = sub_21CB84A64();
  }

  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = 0uLL;
  v27 = 0;
  v28 = 1;
LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED708, &qword_21CBA73E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED728, &qword_21CBA73F8);
  sub_21C831D6C();
  sub_21C831E74();
  sub_21CB83494();
  result = *v29;
  v19 = v29[1];
  v20 = v29[2];
  v21 = v30;
  *a3 = v29[0];
  *(a3 + 16) = v19;
  *(a3 + 32) = v20;
  *(a3 + 48) = v21;
  return result;
}

uint64_t sub_21C831AA8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v3 == 1)
  {
    sub_21C74C3BC();
  }

  sub_21CB84BB4();
  result = sub_21CB83494();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_21C831BD4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_21CB825D4();
}

double sub_21C831C54@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_21C831794(*(v1 + 32), *(v1 + 40), a1);
}

unint64_t sub_21C831C64()
{
  result = qword_27CDED6F0;
  if (!qword_27CDED6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED6E0, &qword_21CBBE3A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED6F0);
  }

  return result;
}

unint64_t sub_21C831CE0()
{
  result = qword_27CDED6F8;
  if (!qword_27CDED6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED6E8, &qword_21CBA73E0);
    sub_21C831D6C();
    sub_21C831E74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED6F8);
  }

  return result;
}

unint64_t sub_21C831D6C()
{
  result = qword_27CDED700;
  if (!qword_27CDED700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED708, &qword_21CBA73E8);
    sub_21C831DF8();
    sub_21C830DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED700);
  }

  return result;
}

unint64_t sub_21C831DF8()
{
  result = qword_27CDED710;
  if (!qword_27CDED710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED718, &qword_21CBA73F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED710);
  }

  return result;
}

unint64_t sub_21C831E74()
{
  result = qword_27CDED720;
  if (!qword_27CDED720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED728, &qword_21CBA73F8);
    sub_21C831DF8();
    sub_21C6EADEC(&qword_27CDED730, &qword_27CDED738, &qword_21CBA7400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED720);
  }

  return result;
}

uint64_t sub_21C831F2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  return result;
}

uint64_t sub_21C831FAC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21C832020@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  return sub_21C831584(*(v1 + 24), a1);
}

unint64_t sub_21C832030()
{
  result = qword_27CDED750;
  if (!qword_27CDED750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED748, &qword_21CBA7478);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED6D0, &qword_21CBA73C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED6C8, &qword_21CBA73C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED6C0, &qword_21CBA73B8);
    sub_21C6EADEC(&qword_27CDED740, &qword_27CDED6C0, &qword_21CBA73B8);
    sub_21C830E5C();
    swift_getOpaqueTypeConformance2();
    sub_21C830EB0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED750);
  }

  return result;
}

uint64_t sub_21C8321E8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21C83225C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

BOOL sub_21C832408(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  if (!*(*a3 + 16))
  {
    return 0;
  }

  v6 = sub_21CB10A3C(*a1, a1[1]);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(*(v3 + 56) + 8 * v6);
  v9 = sub_21CB81054();

  v10 = *a3;
  if (!*(*a3 + 16))
  {
    return 1;
  }

  v11 = sub_21CB10A3C(*a2, a2[1]);
  if ((v12 & 1) == 0)
  {
    return 1;
  }

  v13 = *(*(v10 + 56) + 8 * v11);
  v14 = sub_21CB81054();

  if (v9 != v14)
  {
    return v14 < v9;
  }

  PMAccount.titleForSorting.getter();
  v15 = sub_21CB85634();
  v17 = v16;

  PMAccount.titleForSorting.getter();
  v18 = sub_21CB85634();
  v20 = v19;

  if (v15 == v18 && v17 == v20)
  {

    return 0;
  }

  else
  {
    v22 = sub_21CB86344();

    return v22 & 1;
  }
}

uint64_t sub_21C832578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21CAE8994(v15);
  v6 = (v15 + 56);
  v7 = *(v15 + 16) + 1;
  while (1)
  {
    if (!--v7)
    {

      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v9 = *(v6 - 3);
    v8 = *(v6 - 2);
    v10 = *(v6 - 8);
    v11 = *v6;
    if (v9 == a1 && v8 == a2)
    {
      break;
    }

    v6 += 4;
    if (sub_21CB86344())
    {
      goto LABEL_11;
    }
  }

  v9 = a1;
LABEL_11:

  v14 = v11;

  *a3 = v9;
  *(a3 + 8) = v8;
  *(a3 + 16) = v10;
  *(a3 + 24) = v14;
  return result;
}

void *sub_21C8326F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  v23 = type metadata accessor for PMAccount(0);
  v6 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v22 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (!v9)
  {
    return MEMORY[0x277D84F90];
  }

  v21 = v7;
  v10 = (v7 + 48);
  v11 = MEMORY[0x277D84F90];
  v12 = (a1 + 40);
  do
  {
    v13 = *(v12 - 1);
    v14 = *v12;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21CB81DB4();

    v16 = v24[0];
    v24[0] = v13;
    v24[1] = v14;
    MEMORY[0x28223BE20](v15);
    *(&v20 - 2) = v24;
    sub_21C968D04(sub_21C7AE738, v16, v5);

    if ((*v10)(v5, 1, v23) == 1)
    {
      sub_21C6EA794(v5, &unk_27CDEBE60, &unk_21CB9FF40);
    }

    else
    {
      sub_21C8399BC(v5, v22, type metadata accessor for PMAccount);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_21CA4F1B8(0, v11[2] + 1, 1, v11);
      }

      v18 = v11[2];
      v17 = v11[3];
      if (v18 >= v17 >> 1)
      {
        v11 = sub_21CA4F1B8(v17 > 1, v18 + 1, 1, v11);
      }

      v11[2] = v18 + 1;
      sub_21C8399BC(v22, v11 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18, type metadata accessor for PMAccount);
    }

    v12 += 2;
    --v9;
  }

  while (v9);
  return v11;
}

uint64_t sub_21C8329EC(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 104);

    v7 = v6(a1, sub_21C839CB8, v1, ObjectType, v4);
    swift_unknownObjectRelease();

    if (*(*(v7 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_accounts) + 16) < 4uLL)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      return sub_21CB81DC4();
    }
  }

  return result;
}

uint64_t sub_21C832B2C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21C832B9C(uint64_t a1)
{
  v3 = type metadata accessor for PMAccount(0);
  v57 = *(v3 - 8);
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v58 = (&v51 - v7);
  MEMORY[0x28223BE20](v8);
  v53 = &v51 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = (&v51 - v11);
  swift_getKeyPath();
  swift_getKeyPath();
  v51 = v1;
  sub_21CB81DB4();

  result = v60;
  v56 = *(v60 + 16);
  if (v56)
  {
    v14 = 0;
    v15 = a1 + 56;
    v54 = MEMORY[0x277D84F90];
    v55 = v60;
    while (v14 < *(result + 16))
    {
      v16 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v17 = *(v57 + 72);
      sub_21C80EABC(result + v16 + v17 * v14, v12, type metadata accessor for PMAccount);
      if (!*(a1 + 16))
      {
        goto LABEL_3;
      }

      v18 = *v12;
      v19 = v12[1];
      v20 = *(a1 + 40);
      sub_21CB86484();
      sub_21CB854C4();
      v21 = sub_21CB864D4();
      v22 = -1 << *(a1 + 32);
      v23 = v21 & ~v22;
      if ((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
      {
        v24 = ~v22;
        while (1)
        {
          v25 = (*(a1 + 48) + 16 * v23);
          v26 = *v25 == v18 && v25[1] == v19;
          if (v26 || (sub_21CB86344() & 1) != 0)
          {
            break;
          }

          v23 = (v23 + 1) & v24;
          if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        sub_21C8399BC(v12, v53, type metadata accessor for PMAccount);
        v27 = v54;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61 = v27;
        if (isUniquelyReferenced_nonNull_native)
        {
          v29 = v27;
        }

        else
        {
          sub_21C7B0C4C(0, *(v27 + 16) + 1, 1);
          v29 = v61;
        }

        v31 = *(v29 + 16);
        v30 = *(v29 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_21C7B0C4C(v30 > 1, v31 + 1, 1);
          v29 = v61;
        }

        *(v29 + 16) = v31 + 1;
        v54 = v29;
        sub_21C8399BC(v53, v29 + v16 + v31 * v17, type metadata accessor for PMAccount);
      }

      else
      {
LABEL_3:
        sub_21C7191E0(v12, type metadata accessor for PMAccount);
      }

      ++v14;
      result = v55;
      if (v14 == v56)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_47;
  }

  v54 = MEMORY[0x277D84F90];
LABEL_23:

  v61 = v54;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  result = v60;
  v56 = *(v60 + 16);
  if (v56)
  {
    v32 = 0;
    v33 = a1 + 56;
    v55 = MEMORY[0x277D84F90];
    while (v32 < *(result + 16))
    {
      v34 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v35 = *(v57 + 72);
      v36 = result;
      sub_21C80EABC(result + v34 + v35 * v32, v58, type metadata accessor for PMAccount);
      if (!*(a1 + 16))
      {
        goto LABEL_25;
      }

      v37 = *v58;
      v38 = v58[1];
      v39 = *(a1 + 40);
      sub_21CB86484();
      sub_21CB854C4();
      v40 = sub_21CB864D4();
      v41 = -1 << *(a1 + 32);
      v42 = v40 & ~v41;
      if ((*(v33 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
      {
        v43 = ~v41;
        while (1)
        {
          v44 = (*(a1 + 48) + 16 * v42);
          v45 = *v44 == v37 && v44[1] == v38;
          if (v45 || (sub_21CB86344() & 1) != 0)
          {
            break;
          }

          v42 = (v42 + 1) & v43;
          if (((*(v33 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        sub_21C8399BC(v58, v52, type metadata accessor for PMAccount);
        v46 = v55;
        v47 = swift_isUniquelyReferenced_nonNull_native();
        v59 = v46;
        if (v47)
        {
          v48 = v46;
        }

        else
        {
          sub_21C7B0C4C(0, *(v46 + 16) + 1, 1);
          v48 = v59;
        }

        v50 = *(v48 + 16);
        v49 = *(v48 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_21C7B0C4C(v49 > 1, v50 + 1, 1);
          v48 = v59;
        }

        *(v48 + 16) = v50 + 1;
        v55 = v48;
        sub_21C8399BC(v52, v48 + v34 + v50 * v35, type metadata accessor for PMAccount);
      }

      else
      {
LABEL_25:
        sub_21C7191E0(v58, type metadata accessor for PMAccount);
      }

      ++v32;
      result = v36;
      if (v32 == v56)
      {
        goto LABEL_45;
      }
    }

LABEL_47:
    __break(1u);
    return result;
  }

  v55 = MEMORY[0x277D84F90];
LABEL_45:

  sub_21CAE8CA8(v55);
  sub_21C8329EC(v61);
}

uint64_t sub_21C833194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    v10 = swift_allocObject();
    v10[2] = a2;
    v10[3] = a3;
    v10[4] = v3;
    v11 = *(v8 + 112);

    v12 = v11(a1, sub_21C839CF0, v10, ObjectType, v8);
    swift_unknownObjectRelease();

    if (*(*(v12 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_accounts) + 16) < 4uLL)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      return sub_21CB81DC4();
    }
  }

  return result;
}

uint64_t sub_21C833310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    v10 = swift_allocObject();
    v10[2] = a2;
    v10[3] = a3;
    v10[4] = v3;
    v11 = *(v8 + 120);

    v12 = v11(a1, sub_21C839CC0, v10, ObjectType, v8);
    swift_unknownObjectRelease();

    if (*(*(v12 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_accounts) + 16) < 4uLL)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      return sub_21CB81DC4();
    }
  }

  return result;
}

uint64_t sub_21C83348C(uint64_t a1, void (*a2)(void))
{
  a2();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21C833508(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  sub_21CB858B4();
  v2[16] = sub_21CB858A4();
  v4 = sub_21CB85874();
  v2[17] = v4;
  v2[18] = v3;

  return MEMORY[0x2822009F8](sub_21C8335A0, v4, v3);
}

uint64_t sub_21C8335A0()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v3 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v4 = *(v0 + 88);
  v5 = *(v2 + 16);
  *(v0 + 152) = v5;
  if (!v5)
  {
LABEL_35:
    v44 = *(v0 + 120);
    v43 = *(v0 + 128);
    v45 = *(v0 + 112);

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 96) = v3;

    sub_21CB81DC4();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 104) = v4;

    sub_21CB81DC4();
    sub_21C834204(v45, 1);

    v46 = *(v0 + 8);

    return v46();
  }

  v6 = 0;
  while (1)
  {
    *(v0 + 160) = v6;
    v7 = *(v0 + 112) + 32 * v6;
    v9 = *(v7 + 32);
    v8 = *(v7 + 40);
    *(v0 + 168) = v8;
    v10 = *(v7 + 56);
    *(v0 + 176) = v10;
    if ((*(v7 + 48) & 1) == 0)
    {
      break;
    }

LABEL_3:
    if (++v6 == v5)
    {
      goto LABEL_35;
    }
  }

  *(v0 + 216) = 1;
  swift_bridgeObjectRetain_n();
  v11 = v10;
  v12 = [v11 severity];
  if (v12 == 1)
  {
    v21 = 0;
    v22 = *(v3 + 16);
    v23 = (v3 + 40);
    while (v22 != v21)
    {
      v16 = v21;
      if (*(v23 - 1) != v9 || *v23 != v8)
      {
        ++v21;
        v23 += 4;
        if ((sub_21CB86344() & 1) == 0)
        {
          continue;
        }
      }

      v25 = v11;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21CAA10B4(v3);
        v3 = result;
      }

      v20 = v3;
      if (v16 < *(v3 + 16))
      {
LABEL_28:
        v26 = v20 + 32 * v16;
        v27 = *(v26 + 40);
        v28 = *(v26 + 56);
        *(v26 + 32) = v9;
        *(v26 + 40) = v8;
        *(v26 + 48) = 1;
        *(v26 + 56) = v11;

        break;
      }

LABEL_41:
      __break(1u);
      return result;
    }
  }

  else if (v12 == 2)
  {
    v13 = 0;
    v14 = *(v4 + 16);
    v15 = (v4 + 40);
    while (v14 != v13)
    {
      v16 = v13;
      if (*(v15 - 1) != v9 || *v15 != v8)
      {
        ++v13;
        v15 += 4;
        if ((sub_21CB86344() & 1) == 0)
        {
          continue;
        }
      }

      v18 = v11;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21CAA10B4(v4);
        v4 = result;
      }

      v20 = v4;
      if (v16 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_41;
      }

      goto LABEL_28;
    }
  }

  *(v0 + 184) = v4;
  *(v0 + 192) = v3;
  v29 = *(v0 + 120);
  v52 = *(v0 + 216);
  swift_getKeyPath();
  swift_getKeyPath();

  v30 = v11;
  v31 = sub_21CB81DA4();
  v33 = v32;
  v34 = *v32;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v33 = v34;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v34 = sub_21CA4F1E0(0, *(v34 + 2) + 1, 1, v34);
    *v33 = v34;
  }

  v37 = *(v34 + 2);
  v36 = *(v34 + 3);
  if (v37 >= v36 >> 1)
  {
    v34 = sub_21CA4F1E0((v36 > 1), v37 + 1, 1, v34);
    *v33 = v34;
  }

  v38 = *(v0 + 120);
  *(v34 + 2) = v37 + 1;
  v39 = &v34[32 * v37];
  *(v39 + 4) = v9;
  *(v39 + 5) = v8;
  v39[48] = v52;
  *(v39 + 7) = v30;
  v31();

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 200) = Strong;
  if (!Strong)
  {

    v41 = *(v0 + 168);
    v42 = *(v0 + 176);

    v4 = *(v0 + 184);
    v3 = *(v0 + 192);
    v5 = *(v0 + 152);
    v6 = *(v0 + 160);
    goto LABEL_3;
  }

  v47 = *(*(v0 + 120) + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = v9;
  *(v0 + 56) = v8;
  *(v0 + 64) = 0;
  *(v0 + 72) = v30;
  v49 = *(v47 + 128);
  v53 = (v49 + *v49);
  v50 = v49[1];
  v51 = swift_task_alloc();
  *(v0 + 208) = v51;
  *v51 = v0;
  v51[1] = sub_21C833B78;

  return v53(v0 + 48, ObjectType, v47);
}

uint64_t sub_21C833B78()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 144);
  v5 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_21C833CBC, v5, v4);
}

uint64_t sub_21C833CBC()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  while (2)
  {
    v3 = *(v0 + 168);
    v4 = *(v0 + 176);

    v6 = *(v0 + 184);
    v5 = *(v0 + 192);
    v7 = *(v0 + 152);
    v8 = *(v0 + 160);
    v9 = v8 + 1;
    v10 = 32 * v8;
    do
    {
      if (v7 == v9)
      {
        v45 = *(v0 + 120);
        v44 = *(v0 + 128);
        v46 = *(v0 + 112);

        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 96) = v5;

        sub_21CB81DC4();
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 104) = v6;

        sub_21CB81DC4();
        sub_21C834204(v46, 1);

        v47 = *(v0 + 8);

        return v47();
      }

      *(v0 + 160) = v9;
      v11 = *(v0 + 112) + v10;
      v13 = *(v11 + 64);
      v12 = *(v11 + 72);
      *(v0 + 168) = v12;
      v14 = *(v11 + 88);
      *(v0 + 176) = v14;
      ++v9;
      v10 += 32;
    }

    while ((*(v11 + 80) & 1) != 0);
    *(v0 + 216) = 1;
    swift_bridgeObjectRetain_n();
    v15 = v14;
    v16 = [v15 severity];
    if (v16 == 1)
    {
      v25 = 0;
      v26 = *(v5 + 16);
      v27 = (v5 + 40);
      while (v26 != v25)
      {
        v20 = v25;
        if (*(v27 - 1) != v13 || *v27 != v12)
        {
          ++v25;
          v27 += 4;
          if ((sub_21CB86344() & 1) == 0)
          {
            continue;
          }
        }

        v29 = v15;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_21CAA10B4(v5);
          v5 = result;
        }

        v24 = v5;
        if (v20 < *(v5 + 16))
        {
LABEL_28:
          v30 = v24 + 32 * v20;
          v31 = *(v30 + 40);
          v32 = *(v30 + 56);
          *(v30 + 32) = v13;
          *(v30 + 40) = v12;
          *(v30 + 48) = 1;
          *(v30 + 56) = v15;

          break;
        }

        __break(1u);
LABEL_42:
        __break(1u);
        return result;
      }
    }

    else if (v16 == 2)
    {
      v17 = 0;
      v18 = *(v6 + 16);
      v19 = (v6 + 40);
      while (v18 != v17)
      {
        v20 = v17;
        if (*(v19 - 1) != v13 || *v19 != v12)
        {
          ++v17;
          v19 += 4;
          if ((sub_21CB86344() & 1) == 0)
          {
            continue;
          }
        }

        v22 = v15;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_21CAA10B4(v6);
          v6 = result;
        }

        v24 = v6;
        if (v20 < *(v6 + 16))
        {
          goto LABEL_28;
        }

        goto LABEL_42;
      }
    }

    *(v0 + 184) = v6;
    *(v0 + 192) = v5;
    v33 = *(v0 + 120);
    v54 = *(v0 + 216);
    swift_getKeyPath();
    swift_getKeyPath();

    v34 = v15;
    v53 = sub_21CB81DA4();
    v36 = v35;
    v37 = *v35;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v36 = v37;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v37 = sub_21CA4F1E0(0, *(v37 + 2) + 1, 1, v37);
      *v36 = v37;
    }

    v40 = *(v37 + 2);
    v39 = *(v37 + 3);
    if (v40 >= v39 >> 1)
    {
      v37 = sub_21CA4F1E0((v39 > 1), v40 + 1, 1, v37);
      *v36 = v37;
    }

    v41 = *(v0 + 120);
    *(v37 + 2) = v40 + 1;
    v42 = &v37[32 * v40];
    *(v42 + 4) = v13;
    *(v42 + 5) = v12;
    v42[48] = v54;
    *(v42 + 7) = v34;
    v53();

    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 200) = Strong;
    if (!Strong)
    {

      continue;
    }

    break;
  }

  v48 = *(*(v0 + 120) + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = v13;
  *(v0 + 56) = v12;
  *(v0 + 64) = 0;
  *(v0 + 72) = v34;
  v50 = *(v48 + 128);
  v55 = (v50 + *v50);
  v51 = v50[1];
  v52 = swift_task_alloc();
  *(v0 + 208) = v52;
  *v52 = v0;
  v52[1] = sub_21C833B78;

  return v55(v0 + 48, ObjectType, v48);
}

uint64_t sub_21C834204(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF58, &unk_21CBA0980);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v144 = v133 - v8;
  v158 = type metadata accessor for PMAccount.MockData(0);
  v9 = *(*(v158 - 8) + 64);
  MEMORY[0x28223BE20](v158);
  v157 = v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for PMAccount.Storage(0);
  v11 = *(*(v168 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v168);
  v143 = (v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v138 = (v133 - v15);
  MEMORY[0x28223BE20](v14);
  v17 = (v133 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v137 = v133 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v150 = v133 - v26;
  MEMORY[0x28223BE20](v25);
  v149 = v133 - v27;
  v163 = sub_21CB85C44();
  v28 = *(v163 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v163);
  v142 = v133 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v135 = v133 - v33;
  MEMORY[0x28223BE20](v32);
  v155 = v133 - v34;
  v171 = type metadata accessor for PMAccount(0);
  v169 = *(v171 - 8);
  v35 = *(v169 + 64);
  v36 = MEMORY[0x28223BE20](v171);
  v156 = v133 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v167 = v133 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v136 = v133 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v148 = v133 - v43;
  MEMORY[0x28223BE20](v42);
  v45 = (v133 - v44);
  swift_getKeyPath();
  swift_getKeyPath();
  v133[1] = v3;
  sub_21CB81DB4();

  v46 = v172;

  v164 = sub_21CB12B08(MEMORY[0x277D84F90]);
  v47 = v46[2];

  v159 = v47;
  if (v47)
  {
    v151 = 0;
    v139 = 0;
    v48 = 0;
    v49 = *(a1 + 16);
    v152 = (v28 + 48);
    v141 = (v28 + 32);
    v134 = (v28 + 16);
    v140 = (v28 + 8);
    v145 = a2 & 1;
    v153 = v49 + 1;
    v154 = (a1 + 56);
    v147 = v17;
    v146 = v22;
    while (v48 < v46[2])
    {
      v170 = (*(v169 + 80) + 32) & ~*(v169 + 80);
      v162 = *(v169 + 72);
      v165 = v162 * v48;
      v166 = v48 + 1;
      sub_21C80EABC(v46 + v170 + v162 * v48, v45, type metadata accessor for PMAccount);
      v51 = v153;
      v52 = v154;
      while (--v51)
      {
        v53 = *(v52 - 3);
        v54 = *(v52 - 2);
        v55 = *v52;
        if (v53 != *v45 || v54 != v45[1])
        {
          v52 += 4;
          if ((sub_21CB86344() & 1) == 0)
          {
            continue;
          }
        }

        v57 = (v45 + *(v171 + 28));
        v58 = *v57;
        v59 = v57[1];
        v161 = v46;
        v60 = v57[2];
        v61 = v57[3];
        swift_bridgeObjectRetain_n();
        v160 = v55;
        v62 = v60;
        v46 = v161;
        sub_21C7D33F0(v58, v59, v62, v61);
        *v57 = v53;
        v57[1] = v54;
        v57[2] = v145;
        v57[3] = v55;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_21CAA108C(v46);
        }

        v63 = v147;
        v64 = v163;
        v22 = v146;
        if (v48 >= v46[2])
        {
          goto LABEL_70;
        }

        sub_21C839958(v45, v46 + v170 + v165);
        sub_21C80EABC(v45 + *(v171 + 24), v63, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v65 = v157;
          sub_21C8399BC(v63, v157, type metadata accessor for PMAccount.MockData);
          v66 = v150;
          sub_21C6EDBAC(v65 + *(v158 + 72), v150, &unk_27CDF20B0, &unk_21CBA0090);
          v67 = v65;
          v68 = v66;
          sub_21C7191E0(v67, type metadata accessor for PMAccount.MockData);
        }

        else
        {
          v72 = *v63;
          v68 = v150;
          sub_21CB85B94();
        }

        v73 = v68;
        v74 = v149;
        sub_21C7C3490(v73, v149);
        if ((*v152)(v74, 1, v64) != 1)
        {
          v75 = v46;
          v76 = v155;
          (*v141)(v155, v74, v64);
          sub_21C80EABC(v45, v148, type metadata accessor for PMAccount);
          sub_21C71B710(v151);
          v77 = v164;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v172 = v77;
          v80 = sub_21CB10A54(v76);
          v81 = v77[2];
          v82 = (v79 & 1) == 0;
          v83 = v81 + v82;
          if (__OFADD__(v81, v82))
          {
            goto LABEL_71;
          }

          v84 = v79;
          if (v77[3] >= v83)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_21C8D58B0();
            }
          }

          else
          {
            sub_21C8D1B3C(v83, isUniquelyReferenced_nonNull_native);
            v85 = sub_21CB10A54(v155);
            if ((v84 & 1) != (v86 & 1))
            {
              goto LABEL_73;
            }

            v80 = v85;
          }

          v100 = v172;
          v164 = v172;
          if ((v84 & 1) == 0)
          {
            v101 = v135;
            (*v134)(v135, v155, v163);
            sub_21C8D5124(v80, v101, MEMORY[0x277D84F90], v164);
            v100 = v164;
          }

          v102 = v100[7];
          v103 = *(v102 + 8 * v80);
          v104 = swift_isUniquelyReferenced_nonNull_native();
          *(v102 + 8 * v80) = v103;
          if ((v104 & 1) == 0)
          {
            v103 = sub_21CA4F1B8(0, v103[2] + 1, 1, v103);
            *(v102 + 8 * v80) = v103;
          }

          v106 = v103[2];
          v105 = v103[3];
          if (v106 >= v105 >> 1)
          {
            *(v102 + 8 * v80) = sub_21CA4F1B8(v105 > 1, v106 + 1, 1, v103);
          }

          v107 = v160;

          (*v140)(v155, v163);

          v108 = *(v102 + 8 * v80);
          *(v108 + 16) = v106 + 1;
          sub_21C8399BC(v148, v108 + v170 + v106 * v162, type metadata accessor for PMAccount);
          v151 = sub_21C839CEC;
          v46 = v75;
          goto LABEL_5;
        }

        v50 = v160;

        swift_bridgeObjectRelease_n();
LABEL_4:
        sub_21C6EA794(v74, &unk_27CDF20B0, &unk_21CBA0090);
        goto LABEL_5;
      }

      v69 = v138;
      sub_21C80EABC(v45 + *(v171 + 24), v138, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v70 = v69;
        v71 = v157;
        sub_21C8399BC(v70, v157, type metadata accessor for PMAccount.MockData);
        sub_21C6EDBAC(v71 + *(v158 + 72), v22, &unk_27CDF20B0, &unk_21CBA0090);
        sub_21C7191E0(v71, type metadata accessor for PMAccount.MockData);
      }

      else
      {
        v87 = *v69;
        sub_21CB85B94();
      }

      v88 = v163;
      v74 = v137;
      sub_21C7C3490(v22, v137);
      if ((*v152)(v74, 1, v88) == 1)
      {
        goto LABEL_4;
      }

      v89 = v142;
      (*v141)(v142, v74, v88);
      sub_21C80EABC(v45, v136, type metadata accessor for PMAccount);
      sub_21C71B710(v139);
      v90 = v164;
      v91 = swift_isUniquelyReferenced_nonNull_native();
      v172 = v90;
      v93 = sub_21CB10A54(v89);
      v94 = v90[2];
      v95 = (v92 & 1) == 0;
      v96 = v94 + v95;
      if (__OFADD__(v94, v95))
      {
        goto LABEL_72;
      }

      v97 = v92;
      if (v90[3] >= v96)
      {
        if ((v91 & 1) == 0)
        {
          sub_21C8D58B0();
        }
      }

      else
      {
        sub_21C8D1B3C(v96, v91);
        v98 = sub_21CB10A54(v142);
        if ((v97 & 1) != (v99 & 1))
        {
          goto LABEL_74;
        }

        v93 = v98;
      }

      v109 = v172;
      v164 = v172;
      if ((v97 & 1) == 0)
      {
        v110 = v135;
        (*v134)(v135, v142, v88);
        sub_21C8D5124(v93, v110, MEMORY[0x277D84F90], v164);
        v109 = v164;
      }

      v111 = v109[7];
      v112 = *(v111 + 8 * v93);
      v113 = swift_isUniquelyReferenced_nonNull_native();
      *(v111 + 8 * v93) = v112;
      if ((v113 & 1) == 0)
      {
        v112 = sub_21CA4F1B8(0, v112[2] + 1, 1, v112);
        *(v111 + 8 * v93) = v112;
      }

      v115 = v112[2];
      v114 = v112[3];
      if (v115 >= v114 >> 1)
      {
        *(v111 + 8 * v93) = sub_21CA4F1B8(v114 > 1, v115 + 1, 1, v112);
      }

      (*v140)(v142, v88);
      v116 = *(v111 + 8 * v93);
      *(v116 + 16) = v115 + 1;
      sub_21C8399BC(v136, v116 + v170 + v115 * v162, type metadata accessor for PMAccount);
      v139 = sub_21C839CEC;
LABEL_5:
      sub_21C7191E0(v45, type metadata accessor for PMAccount);
      v48 = v166;
      if (v166 == v159)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
  }

  else
  {
    v151 = 0;
    v139 = 0;
LABEL_52:
    swift_getKeyPath();
    swift_getKeyPath();
    v172 = v46;
    v161 = v46;

    sub_21CB81DC4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v117 = v172;
    v118 = v172[2];
    if (!v118)
    {
      v120 = MEMORY[0x277D84F90];
LABEL_67:

      swift_getKeyPath();
      swift_getKeyPath();
      v172 = v120;

      sub_21CB81DC4();
      swift_getKeyPath();
      swift_getKeyPath();
      v172 = v164;

      sub_21CB81DC4();

      sub_21C71B710(v151);
      return sub_21C71B710(v139);
    }

    v119 = 0;
    v120 = MEMORY[0x277D84F90];
    v121 = v144;
    v122 = v143;
    while (v119 < v117[2])
    {
      v123 = (*(v169 + 80) + 32) & ~*(v169 + 80);
      v124 = *(v169 + 72);
      v125 = v167;
      sub_21C80EABC(v117 + v123 + v124 * v119, v167, type metadata accessor for PMAccount);
      sub_21C80EABC(v125 + *(v171 + 24), v122, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v126 = v157;
        sub_21C8399BC(v122, v157, type metadata accessor for PMAccount.MockData);
        sub_21C6EDBAC(v126 + *(v158 + 60), v121, &qword_27CDEAF58, &unk_21CBA0980);
        sub_21C7191E0(v126, type metadata accessor for PMAccount.MockData);
      }

      else
      {
        v127 = *v122;
        sub_21CB85BD4();
      }

      v128 = sub_21CB85BB4();
      if ((*(*(v128 - 8) + 48))(v121, 1, v128) == 1)
      {
        sub_21C7191E0(v167, type metadata accessor for PMAccount);
        sub_21C6EA794(v121, &qword_27CDEAF58, &unk_21CBA0980);
      }

      else
      {
        sub_21C6EA794(v121, &qword_27CDEAF58, &unk_21CBA0980);
        sub_21C8399BC(v167, v156, type metadata accessor for PMAccount);
        v129 = swift_isUniquelyReferenced_nonNull_native();
        v172 = v120;
        if ((v129 & 1) == 0)
        {
          sub_21C7B0C4C(0, v120[2] + 1, 1);
          v120 = v172;
        }

        v131 = v120[2];
        v130 = v120[3];
        if (v131 >= v130 >> 1)
        {
          sub_21C7B0C4C(v130 > 1, v131 + 1, 1);
          v120 = v172;
        }

        v120[2] = v131 + 1;
        sub_21C8399BC(v156, v120 + v123 + v131 * v124, type metadata accessor for PMAccount);
        v121 = v144;
        v122 = v143;
      }

      if (v118 == ++v119)
      {
        goto LABEL_67;
      }
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  sub_21CB863B4();
  __break(1u);
LABEL_74:
  result = sub_21CB863B4();
  __break(1u);
  return result;
}

uint64_t sub_21C83532C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v44 = v50[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v42 = a1;
  v43 = v50[0];
  v3 = *(a1 + 16);
  if (!v3)
  {
LABEL_45:
    swift_getKeyPath();
    swift_getKeyPath();
    v50[0] = v44;

    sub_21CB81DC4();
    swift_getKeyPath();
    swift_getKeyPath();
    v50[0] = v43;

    sub_21CB81DC4();
    sub_21C834204(v42, 0);
  }

  v4 = 0;
  v5 = a1 + 32;
  v46 = a1 + 32;
  v47 = *(a1 + 16);
  v45 = v1;
  while (1)
  {
    v8 = v5 + 32 * v4;
    if (*(v8 + 16) != 1)
    {
      goto LABEL_6;
    }

    v9 = *v8;
    v10 = *(v8 + 8);
    v11 = *(v8 + 24);
    swift_bridgeObjectRetain_n();
    v12 = v11;
    v13 = [v12 severity];
    v49 = v4;
    if (v13 == 1)
    {
      v22 = 0;
      v23 = *(v44 + 16);
      v24 = (v44 + 40);
      while (v23 != v22)
      {
        v17 = v22;
        if (*(v24 - 1) != v9 || *v24 != v10)
        {
          ++v22;
          v24 += 4;
          if ((sub_21CB86344() & 1) == 0)
          {
            continue;
          }
        }

        v26 = v12;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_21CAA10B4(v44);
          v44 = result;
        }

        v21 = v44;
        if (v17 < *(v44 + 16))
        {
LABEL_32:
          v27 = v21 + 32 * v17;
          v28 = *(v27 + 40);
          v29 = *(v27 + 56);
          *(v27 + 32) = v9;
          *(v27 + 40) = v10;
          *(v27 + 48) = 0;
          *(v27 + 56) = v12;

          break;
        }

        goto LABEL_51;
      }
    }

    else if (v13 == 2)
    {
      v14 = 0;
      v15 = *(v43 + 16);
      v16 = (v43 + 40);
      while (v15 != v14)
      {
        v17 = v14;
        if (*(v16 - 1) != v9 || *v16 != v10)
        {
          ++v14;
          v16 += 4;
          if ((sub_21CB86344() & 1) == 0)
          {
            continue;
          }
        }

        v19 = v12;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_21CAA10B4(v43);
          v43 = result;
        }

        v21 = v43;
        if (v17 < *(v43 + 16))
        {
          goto LABEL_32;
        }

        goto LABEL_50;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();

    v30 = v12;
    v48 = sub_21CB81DA4();
    v32 = v31;
    v33 = sub_21C839AC4(v31, v9, v10);

    v34 = *v32;
    v35 = *(*v32 + 16);
    if (v35 < v33)
    {
      break;
    }

    if (v33 < 0)
    {
      goto LABEL_47;
    }

    v36 = v33 - v35;
    if (__OFADD__(v35, v33 - v35))
    {
      goto LABEL_48;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v32 = v34;
    if (!isUniquelyReferenced_nonNull_native || v33 > *(v34 + 3) >> 1)
    {
      if (*(v34 + 2) <= v33)
      {
        v38 = v33;
      }

      else
      {
        v38 = *(v34 + 2);
      }

      v34 = sub_21CA4F1E0(isUniquelyReferenced_nonNull_native, v38, 1, v34);
      *v32 = v34;
    }

    swift_arrayDestroy();
    if (v35 != v33)
    {
      result = memmove(&v34[32 * v33 + 32], &v34[32 * v35 + 32], 32 * (*(v34 + 2) - v35));
      v39 = *(v34 + 2);
      v40 = __OFADD__(v39, v36);
      v41 = v39 + v36;
      if (v40)
      {
        goto LABEL_49;
      }

      *(v34 + 2) = v41;
    }

    *v32 = v34;
    v48(v50, 0);

    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v45 + 24);
      ObjectType = swift_getObjectType();
      v50[0] = v9;
      v50[1] = v10;
      v51 = 1;
      v52 = v30;
      (*(v6 + 136))(v50, ObjectType, v6);

      swift_bridgeObjectRelease_n();
      swift_unknownObjectRelease();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v5 = v46;
    v3 = v47;
    v4 = v49;
LABEL_6:
    if (++v4 == v3)
    {
      goto LABEL_45;
    }
  }

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
  return result;
}

uint64_t sub_21C835884(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 88) = a3;
  *(v4 + 16) = a1;
  sub_21CB858B4();
  *(v4 + 40) = sub_21CB858A4();
  v6 = sub_21CB85874();
  *(v4 + 48) = v6;
  *(v4 + 56) = v5;

  return MEMORY[0x2822009F8](sub_21C835924, v6, v5);
}

uint64_t sub_21C835924()
{
  v1 = *(v0 + 32);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v3 = *(*(v0 + 32) + 24);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 168);
    v14 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 72) = v7;
    *v7 = v0;
    v7[1] = sub_21C835AA8;
    v8 = *(v0 + 88);
    v10 = *(v0 + 16);
    v9 = *(v0 + 24);

    return v14(v10, v9, v8, ObjectType, v3);
  }

  else
  {
    v12 = *(v0 + 40);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_21C835AA8()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_21C835C28;
  }

  else
  {
    v7 = v2[8];
    swift_unknownObjectRelease();
    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_21C835BC4;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_21C835BC4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21C835C28()
{
  v1 = v0[8];
  v2 = v0[5];

  swift_unknownObjectRelease();
  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_21C835C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    v11 = swift_allocObject();
    v11[2] = a3;
    v11[3] = a4;
    v11[4] = v4;
    v12 = *(v10 + 176);
    sub_21C7335A8(a3, a4);

    v13 = v12(a1, a2, sub_21C839CE0, v11, ObjectType, v10);
    swift_unknownObjectRelease();

    if (*(*(v13 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_accounts) + 16) < 4uLL)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      return sub_21CB81DC4();
    }
  }

  return result;
}

uint64_t sub_21C835E20(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (a3)
  {
    a3();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t PMAccountsState.deinit()
{
  sub_21C7B0A14(v0 + 16);
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__loadedAccounts;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v17 = *(*(v4 - 8) + 8);
  v17(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__accounts;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC00, &qword_21CB9FF10);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__accountsInPersonalKeychain, v6);
  v8 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__accountsByGroupID;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD78, &qword_21CBA5730);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v11 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__inProgressBulkOperation;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED780, &qword_21CBA74C8);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v7(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__accountsWithNeverSaveMarker, v6);
  v7(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__accountsWithPasskeys, v6);
  v7(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__accountsWithTOTPGenerators, v6);
  v17(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__showHiddenSecurityRecommendations, v4);
  v7(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__recentlyDeletedAccounts, v6);
  v7(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__recentlyDeletedAccountsInPersonalKeychain, v6);
  v10(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__recentlyDeletedAccountsByGroupID, v9);
  v17(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__hasUnacknowledgedHighPriorityWarnings, v4);
  v13 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__highPrioritySecurityRecommendations;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED7D0, &qword_21CBA74D0);
  v15 = *(*(v14 - 8) + 8);
  v15(v0 + v13, v14);
  v15(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__standardPrioritySecurityRecommendations, v14);
  v15(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__hiddenSecurityRecommendations, v14);
  v17(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__loadedSecurityRecommendations, v4);
  return v0;
}

uint64_t PMAccountsState.__deallocating_deinit()
{
  PMAccountsState.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21C836240(void **a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for PMAccount(0) - 8);
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_21C715B40(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;
  result = sub_21C836370(v8, a2);
  *a1 = v5;
  return result;
}

uint64_t sub_21C836370(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  result = sub_21CB862E4();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for PMAccount(0);
        v8 = sub_21CB85844();
        *(v8 + 16) = v7;
      }

      v9 = *(type metadata accessor for PMAccount(0) - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;
      sub_21C836B48(v10, v11, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_21C8364A8(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t sub_21C8364A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v82 = type metadata accessor for PMAccount.MockData(0);
  v10 = *(*(v82 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v82);
  v75 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v74 = &v73 - v13;
  v89 = type metadata accessor for PMAccount.Storage(0);
  v14 = *(*(v89 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v89);
  v81 = (&v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v80 = (&v73 - v17);
  v18 = type metadata accessor for PMAccount(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v93 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = (&v73 - v23);
  result = MEMORY[0x28223BE20](v22);
  v28 = (&v73 - v27);
  v77 = a2;
  if (a3 != a2)
  {
    v29 = *a4;
    v30 = *(v26 + 72);
    v31 = *a4 + v30 * (a3 - 1);
    v91 = -v30;
    v92 = v29;
    v32 = a1 - a3;
    v76 = v30;
    v33 = v29 + v30 * a3;
    v78 = (&v73 - v27);
    v79 = a5;
    v90 = v18;
LABEL_7:
    v85 = v31;
    v86 = a3;
    v83 = v33;
    v84 = v32;
    while (1)
    {
      sub_21C80EABC(v33, v28, type metadata accessor for PMAccount);
      sub_21C80EABC(v31, v24, type metadata accessor for PMAccount);
      v34 = *a5;
      if (!*(*a5 + 16))
      {
        goto LABEL_5;
      }

      v35 = sub_21CB10A3C(*v28, v28[1]);
      if ((v36 & 1) == 0)
      {
        goto LABEL_5;
      }

      v37 = *(*(v34 + 56) + 8 * v35);
      v38 = sub_21CB81054();

      v39 = *a5;
      if (*(*a5 + 16) && (v40 = sub_21CB10A3C(*v24, v24[1]), (v41 & 1) != 0))
      {
        v42 = *(*(v39 + 56) + 8 * v40);
        v43 = sub_21CB81054();

        if (v38 == v43)
        {
          v44 = v90;
          v45 = v80;
          sub_21C80EABC(v28 + *(v90 + 24), v80, type metadata accessor for PMAccount.Storage);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v46 = v45;
            v47 = v74;
            sub_21C8399BC(v46, v74, type metadata accessor for PMAccount.MockData);
            v48 = v47;
            v49 = (v47 + *(v82 + 44));
            if (v49[1])
            {
              v50 = *v49;
              v51 = v49[1];
            }

            else
            {
              v55 = *(v47 + 32);
              v56 = *(v48 + 40);
            }

            sub_21C7191E0(v48, type metadata accessor for PMAccount.MockData);
          }

          else
          {
            v53 = *v45;
            v54 = [*v45 effectiveTitleForSorting];
            sub_21CB855C4();

            v44 = v90;
          }

          v87 = sub_21CB85634();
          v88 = v57;

          v58 = v81;
          sub_21C80EABC(v24 + *(v44 + 24), v81, type metadata accessor for PMAccount.Storage);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v59 = v58;
            v60 = v75;
            sub_21C8399BC(v59, v75, type metadata accessor for PMAccount.MockData);
            v61 = (v60 + *(v82 + 44));
            if (v61[1])
            {
              v62 = *v61;
              v63 = v61[1];
            }

            else
            {
              v67 = *(v60 + 32);
              v66 = *(v60 + 40);
            }

            a5 = v79;

            sub_21C7191E0(v60, type metadata accessor for PMAccount.MockData);
          }

          else
          {
            v64 = *v58;
            v65 = [v64 effectiveTitleForSorting];
            sub_21CB855C4();

            a5 = v79;
          }

          v68 = sub_21CB85634();
          v70 = v69;

          if (v87 == v68 && v88 == v70)
          {

LABEL_5:
            sub_21C7191E0(v24, type metadata accessor for PMAccount);
            result = sub_21C7191E0(v28, type metadata accessor for PMAccount);
LABEL_6:
            a3 = v86 + 1;
            v31 = v85 + v76;
            v32 = v84 - 1;
            v33 = v83 + v76;
            if (v86 + 1 == v77)
            {
              return result;
            }

            goto LABEL_7;
          }

          v52 = sub_21CB86344();
          v28 = v78;
        }

        else
        {
          v52 = v43 < v38;
        }

        sub_21C7191E0(v24, type metadata accessor for PMAccount);
        result = sub_21C7191E0(v28, type metadata accessor for PMAccount);
        if ((v52 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_21C7191E0(v24, type metadata accessor for PMAccount);
        result = sub_21C7191E0(v28, type metadata accessor for PMAccount);
      }

      if (!v92)
      {
        break;
      }

      v71 = v93;
      sub_21C8399BC(v33, v93, type metadata accessor for PMAccount);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_21C8399BC(v71, v31, type metadata accessor for PMAccount);
      v31 += v91;
      v33 += v91;
      if (__CFADD__(v32++, 1))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21C836B48(unint64_t *a1, uint64_t a2, uint64_t (**a3)(uint64_t a1), int64_t a4, uint64_t *a5)
{
  v6 = v5;
  v211 = a1;
  v220 = type metadata accessor for PMAccount.MockData(0);
  v10 = *(*(v220 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v220);
  v213 = &v203 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v212 = &v203 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v204 = &v203 - v16;
  MEMORY[0x28223BE20](v15);
  v203 = &v203 - v17;
  v228 = type metadata accessor for PMAccount.Storage(0);
  v18 = *(*(v228 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v228);
  v21 = (&v203 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x28223BE20](v19);
  v24 = (&v203 - v23);
  v25 = MEMORY[0x28223BE20](v22);
  v207 = (&v203 - v26);
  MEMORY[0x28223BE20](v25);
  v206 = (&v203 - v27);
  v28 = type metadata accessor for PMAccount(0);
  v226 = *(v28 - 8);
  v29 = *(v226 + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v216 = &v203 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v203 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v237 = (&v203 - v36);
  v37 = MEMORY[0x28223BE20](v35);
  v236 = (&v203 - v38);
  v39 = MEMORY[0x28223BE20](v37);
  v232 = (&v203 - v40);
  v41 = MEMORY[0x28223BE20](v39);
  v230 = (&v203 - v42);
  v43 = MEMORY[0x28223BE20](v41);
  result = MEMORY[0x28223BE20](v43);
  v229 = a3;
  if (a3[1] >= 1)
  {
    v47 = a3[1];
    v208 = (&v203 - v45);
    v205 = v46;
    v217 = v24;
    v218 = v21;
    v48 = 0;
    v49 = MEMORY[0x277D84F90];
    v219 = a5;
    v210 = a4;
    v233 = v28;
    v227 = v34;
    v50 = v236;
    while (1)
    {
      v51 = v48 + 1;
      v225 = v49;
      v214 = v48;
      if ((v48 + 1) >= v47)
      {
        v63 = v48 + 1;
      }

      else
      {
        v231 = v47;
        v52 = *v229;
        v53 = *(v226 + 72);
        v54 = *v229 + v53 * v51;
        v235 = type metadata accessor for PMAccount;
        v55 = v208;
        sub_21C80EABC(v54, v208, type metadata accessor for PMAccount);
        v234 = v52;
        v224 = v53;
        v56 = v52 + v53 * v214;
        v57 = v214;
        v58 = v205;
        sub_21C80EABC(v56, v205, v235);
        LODWORD(v235) = sub_21C832408(v55, v58, a5);
        if (v6)
        {
          sub_21C7191E0(v58, type metadata accessor for PMAccount);
          sub_21C7191E0(v208, type metadata accessor for PMAccount);
        }

        v209 = 0;
        sub_21C7191E0(v58, type metadata accessor for PMAccount);
        result = sub_21C7191E0(v208, type metadata accessor for PMAccount);
        v59 = v57 + 2;
        v60 = v224;
        v48 = v234 + v224 * (v57 + 2);
        while (1)
        {
          v63 = v231;
          if (v231 == v59)
          {
            break;
          }

          v64 = v230;
          sub_21C80EABC(v48, v230, type metadata accessor for PMAccount);
          sub_21C80EABC(v54, v232, type metadata accessor for PMAccount);
          v65 = *a5;
          if (*(*a5 + 16) && (v66 = sub_21CB10A3C(*v64, v64[1]), (v67 & 1) != 0))
          {
            v68 = *(*(v65 + 56) + 8 * v66);
            v69 = sub_21CB81054();

            v70 = *a5;
            if (*(*a5 + 16) && (v71 = sub_21CB10A3C(*v232, v232[1]), (v72 & 1) != 0))
            {
              v73 = *(*(v70 + 56) + 8 * v71);
              v74 = sub_21CB81054();

              if (v69 == v74)
              {
                v75 = v206;
                sub_21C80EABC(v230 + *(v233 + 24), v206, type metadata accessor for PMAccount.Storage);
                if (swift_getEnumCaseMultiPayload() == 1)
                {
                  v76 = v75;
                  v77 = v203;
                  sub_21C8399BC(v76, v203, type metadata accessor for PMAccount.MockData);
                  v78 = v77;
                  v79 = (v77 + *(v220 + 44));
                  if (v79[1])
                  {
                    v80 = *v79;
                    v81 = v79[1];
                  }

                  else
                  {
                    v85 = *(v77 + 32);
                    v86 = *(v78 + 40);
                  }

                  v84 = v207;

                  sub_21C7191E0(v78, type metadata accessor for PMAccount.MockData);
                }

                else
                {
                  v82 = *v75;
                  v83 = [*v75 effectiveTitleForSorting];
                  sub_21CB855C4();

                  v84 = v207;
                }

                v234 = sub_21CB85634();
                v88 = v87;

                sub_21C80EABC(v232 + *(v233 + 24), v84, type metadata accessor for PMAccount.Storage);
                if (swift_getEnumCaseMultiPayload() == 1)
                {
                  v89 = v204;
                  sub_21C8399BC(v84, v204, type metadata accessor for PMAccount.MockData);
                  v90 = (v89 + *(v220 + 44));
                  if (v90[1])
                  {
                    v91 = *v90;
                    v92 = v90[1];
                  }

                  else
                  {
                    v96 = *(v89 + 32);
                    v95 = *(v89 + 40);
                  }

                  sub_21C7191E0(v89, type metadata accessor for PMAccount.MockData);
                }

                else
                {
                  v93 = *v84;
                  v94 = [*v84 effectiveTitleForSorting];
                  sub_21CB855C4();

                  v49 = v225;
                }

                v97 = sub_21CB85634();
                v99 = v98;

                if (v234 == v97 && v88 == v99)
                {

                  v61 = 0;
                }

                else
                {
                  v61 = sub_21CB86344();
                }

                a5 = v219;
                v34 = v227;
              }

              else
              {
                v61 = v74 < v69;
                v34 = v227;
              }
            }

            else
            {
              v61 = 1;
            }
          }

          else
          {
            v61 = 0;
          }

          sub_21C7191E0(v232, type metadata accessor for PMAccount);
          result = sub_21C7191E0(v230, type metadata accessor for PMAccount);
          v62 = v235 ^ v61;
          ++v59;
          v48 += v60;
          v54 += v60;
          v50 = v236;
          if (v62)
          {
            v63 = v59 - 1;
            break;
          }
        }

        v6 = v209;
        a4 = v210;
        if ((v235 & 1) == 0)
        {
          goto LABEL_48;
        }

        if (v63 < v214)
        {
          goto LABEL_184;
        }

        if (v214 < v63)
        {
          v100 = v63;
          v101 = v60 * (v63 - 1);
          v102 = v63 * v60;
          v231 = v63;
          v103 = v214;
          v104 = v214 * v60;
          do
          {
            if (v103 != --v100)
            {
              v105 = *v229;
              if (!*v229)
              {
                goto LABEL_188;
              }

              v48 = v105 + v104;
              sub_21C8399BC(v105 + v104, v216, type metadata accessor for PMAccount);
              if (v104 < v101 || v48 >= v105 + v102)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v104 != v101)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_21C8399BC(v216, v105 + v101, type metadata accessor for PMAccount);
              v49 = v225;
            }

            ++v103;
            v101 -= v60;
            v102 -= v60;
            v104 += v60;
          }

          while (v103 < v100);
          v6 = v209;
          a5 = v219;
          v28 = v233;
          v34 = v227;
          v50 = v236;
          v63 = v231;
        }

        else
        {
LABEL_48:
          v28 = v233;
        }
      }

      v106 = v229[1];
      if (v63 >= v106)
      {
        goto LABEL_60;
      }

      if (__OFSUB__(v63, v214))
      {
        goto LABEL_181;
      }

      if (v63 - v214 >= a4)
      {
LABEL_60:
        v108 = v63;
        goto LABEL_61;
      }

      v48 = v214;
      if (__OFADD__(v214, a4))
      {
        goto LABEL_182;
      }

      if (v214 + a4 >= v106)
      {
        v107 = v229[1];
      }

      else
      {
        v107 = v214 + a4;
      }

      if (v107 < v214)
      {
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        result = sub_21C864538(v49);
        v49 = result;
LABEL_153:
        v199 = v6;
        v238 = v49;
        v200 = *(v49 + 2);
        if (v200 >= 2)
        {
          while (*v229)
          {
            v201 = *&v49[16 * v200];
            v6 = *&v49[16 * v200 + 24];
            sub_21C837E30(*v229 + *(v226 + 72) * v201, *v229 + *(v226 + 72) * *&v49[16 * v200 + 16], *v229 + *(v226 + 72) * v6, v48, a5);
            if (v199)
            {
            }

            if (v6 < v201)
            {
              goto LABEL_178;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v49 = sub_21C864538(v49);
            }

            if (v200 - 2 >= *(v49 + 2))
            {
              goto LABEL_179;
            }

            v202 = &v49[16 * v200];
            *v202 = v201;
            *(v202 + 1) = v6;
            v238 = v49;
            result = sub_21C8644AC(v200 - 1);
            v49 = v238;
            v200 = *(v238 + 2);
            if (v200 <= 1)
            {
            }
          }

          goto LABEL_189;
        }
      }

      if (v63 == v107)
      {
        v108 = v63;
        goto LABEL_62;
      }

      v209 = v6;
      v156 = *v229;
      v157 = *(v226 + 72);
      v158 = *v229 + v157 * (v63 - 1);
      v234 = -v157;
      v235 = v156;
      v159 = v214 - v63;
      v215 = v157;
      v160 = v156 + v63 * v157;
      v221 = v107;
      while (2)
      {
        v231 = v63;
        v222 = v160;
        v223 = v159;
        v224 = v158;
        v161 = v158;
        while (1)
        {
          sub_21C80EABC(v160, v50, type metadata accessor for PMAccount);
          sub_21C80EABC(v161, v237, type metadata accessor for PMAccount);
          v162 = *a5;
          if (!*(*a5 + 16))
          {
            goto LABEL_118;
          }

          v163 = sub_21CB10A3C(*v50, v50[1]);
          if ((v164 & 1) == 0)
          {
            goto LABEL_118;
          }

          v165 = *(*(v162 + 56) + 8 * v163);
          v166 = sub_21CB81054();

          v167 = *a5;
          if (!*(*a5 + 16) || (v168 = sub_21CB10A3C(*v237, v237[1]), (v169 & 1) == 0))
          {
            sub_21C7191E0(v237, type metadata accessor for PMAccount);
            result = sub_21C7191E0(v236, type metadata accessor for PMAccount);
            goto LABEL_144;
          }

          v170 = *(*(v167 + 56) + 8 * v168);
          v171 = sub_21CB81054();

          if (v166 != v171)
          {
            v178 = v171 < v166;
            goto LABEL_143;
          }

          v172 = v217;
          sub_21C80EABC(v236 + *(v28 + 24), v217, type metadata accessor for PMAccount.Storage);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v173 = v212;
            sub_21C8399BC(v172, v212, type metadata accessor for PMAccount.MockData);
            v174 = (v173 + *(v220 + 44));
            v175 = v218;
            if (v174[1])
            {
              v176 = *v174;
              v177 = v174[1];
            }

            else
            {
              v181 = *(v173 + 32);
              v182 = *(v173 + 40);
            }

            sub_21C7191E0(v173, type metadata accessor for PMAccount.MockData);
            v28 = v233;
          }

          else
          {
            v179 = *v172;
            v180 = [*v172 effectiveTitleForSorting];
            sub_21CB855C4();

            v175 = v218;
          }

          v183 = sub_21CB85634();
          v185 = v184;

          sub_21C80EABC(v237 + *(v28 + 24), v175, type metadata accessor for PMAccount.Storage);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v186 = v213;
            sub_21C8399BC(v175, v213, type metadata accessor for PMAccount.MockData);
            v187 = v186;
            v188 = (v186 + *(v220 + 44));
            if (v188[1])
            {
              v189 = *v188;
              v190 = v188[1];
            }

            else
            {
              v194 = *(v186 + 32);
              v193 = *(v186 + 40);
            }

            sub_21C7191E0(v187, type metadata accessor for PMAccount.MockData);
          }

          else
          {
            v191 = *v175;
            v192 = [*v175 effectiveTitleForSorting];
            sub_21CB855C4();
          }

          v195 = sub_21CB85634();
          v197 = v196;

          if (v183 == v195 && v185 == v197)
          {
            break;
          }

          v178 = sub_21CB86344();

          a5 = v219;
          v49 = v225;
          v28 = v233;
LABEL_143:
          v34 = v227;
          sub_21C7191E0(v237, type metadata accessor for PMAccount);
          result = sub_21C7191E0(v236, type metadata accessor for PMAccount);
          if ((v178 & 1) == 0)
          {
            v50 = v236;
            goto LABEL_119;
          }

LABEL_144:
          if (!v235)
          {
            __break(1u);
LABEL_187:
            __break(1u);
LABEL_188:
            __break(1u);
LABEL_189:
            __break(1u);
LABEL_190:
            __break(1u);
            goto LABEL_191;
          }

          sub_21C8399BC(v160, v34, type metadata accessor for PMAccount);
          swift_arrayInitWithTakeFrontToBack();
          sub_21C8399BC(v34, v161, type metadata accessor for PMAccount);
          v161 += v234;
          v160 += v234;
          v198 = __CFADD__(v159++, 1);
          v50 = v236;
          if (v198)
          {
            goto LABEL_119;
          }
        }

        a5 = v219;
        v49 = v225;
        v28 = v233;
        v34 = v227;
        v50 = v236;
LABEL_118:
        sub_21C7191E0(v237, type metadata accessor for PMAccount);
        sub_21C7191E0(v50, type metadata accessor for PMAccount);
LABEL_119:
        v63 = v231 + 1;
        v158 = v224 + v215;
        v159 = v223 - 1;
        v108 = v221;
        v160 = v222 + v215;
        if (v231 + 1 != v221)
        {
          continue;
        }

        break;
      }

      v6 = v209;
LABEL_61:
      v48 = v214;
LABEL_62:
      if (v108 < v48)
      {
        goto LABEL_180;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v221 = v108;
      if ((result & 1) == 0)
      {
        result = sub_21C86467C(0, *(v49 + 2) + 1, 1, v49);
        v49 = result;
      }

      v110 = *(v49 + 2);
      v109 = *(v49 + 3);
      v111 = v110 + 1;
      if (v110 >= v109 >> 1)
      {
        result = sub_21C86467C((v109 > 1), v110 + 1, 1, v49);
        v49 = result;
      }

      *(v49 + 2) = v111;
      v112 = &v49[16 * v110];
      v113 = v221;
      *(v112 + 4) = v48;
      *(v112 + 5) = v113;
      v48 = *v211;
      if (!*v211)
      {
        goto LABEL_190;
      }

      if (v110)
      {
        v50 = v236;
        while (1)
        {
          v114 = v111 - 1;
          if (v111 >= 4)
          {
            break;
          }

          if (v111 == 3)
          {
            v115 = *(v49 + 4);
            v116 = *(v49 + 5);
            v125 = __OFSUB__(v116, v115);
            v117 = v116 - v115;
            v118 = v125;
LABEL_83:
            if (v118)
            {
              goto LABEL_169;
            }

            v131 = &v49[16 * v111];
            v133 = *v131;
            v132 = *(v131 + 1);
            v134 = __OFSUB__(v132, v133);
            v135 = v132 - v133;
            v136 = v134;
            if (v134)
            {
              goto LABEL_172;
            }

            v137 = &v49[16 * v114 + 32];
            v139 = *v137;
            v138 = *(v137 + 1);
            v125 = __OFSUB__(v138, v139);
            v140 = v138 - v139;
            if (v125)
            {
              goto LABEL_175;
            }

            if (__OFADD__(v135, v140))
            {
              goto LABEL_176;
            }

            if (v135 + v140 >= v117)
            {
              if (v117 < v140)
              {
                v114 = v111 - 2;
              }

              goto LABEL_104;
            }

            goto LABEL_97;
          }

          v141 = &v49[16 * v111];
          v143 = *v141;
          v142 = *(v141 + 1);
          v125 = __OFSUB__(v142, v143);
          v135 = v142 - v143;
          v136 = v125;
LABEL_97:
          if (v136)
          {
            goto LABEL_171;
          }

          v144 = &v49[16 * v114];
          v146 = *(v144 + 4);
          v145 = *(v144 + 5);
          v125 = __OFSUB__(v145, v146);
          v147 = v145 - v146;
          if (v125)
          {
            goto LABEL_174;
          }

          if (v147 < v135)
          {
            goto LABEL_114;
          }

LABEL_104:
          v152 = v114 - 1;
          if (v114 - 1 >= v111)
          {
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
LABEL_180:
            __break(1u);
LABEL_181:
            __break(1u);
LABEL_182:
            __break(1u);
            goto LABEL_183;
          }

          if (!*v229)
          {
            goto LABEL_187;
          }

          v153 = *&v49[16 * v152 + 32];
          v154 = *&v49[16 * v114 + 40];
          sub_21C837E30(*v229 + *(v226 + 72) * v153, *v229 + *(v226 + 72) * *&v49[16 * v114 + 32], *v229 + *(v226 + 72) * v154, v48, a5);
          if (v6)
          {
          }

          if (v154 < v153)
          {
            goto LABEL_165;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = sub_21C864538(v49);
          }

          if (v152 >= *(v49 + 2))
          {
            goto LABEL_166;
          }

          v155 = &v49[16 * v152];
          *(v155 + 4) = v153;
          *(v155 + 5) = v154;
          v238 = v49;
          result = sub_21C8644AC(v114);
          v49 = v238;
          v111 = *(v238 + 2);
          v28 = v233;
          v50 = v236;
          if (v111 <= 1)
          {
            goto LABEL_114;
          }
        }

        v119 = &v49[16 * v111 + 32];
        v120 = *(v119 - 64);
        v121 = *(v119 - 56);
        v125 = __OFSUB__(v121, v120);
        v122 = v121 - v120;
        if (v125)
        {
          goto LABEL_167;
        }

        v124 = *(v119 - 48);
        v123 = *(v119 - 40);
        v125 = __OFSUB__(v123, v124);
        v117 = v123 - v124;
        v118 = v125;
        if (v125)
        {
          goto LABEL_168;
        }

        v126 = &v49[16 * v111];
        v128 = *v126;
        v127 = *(v126 + 1);
        v125 = __OFSUB__(v127, v128);
        v129 = v127 - v128;
        if (v125)
        {
          goto LABEL_170;
        }

        v125 = __OFADD__(v117, v129);
        v130 = v117 + v129;
        if (v125)
        {
          goto LABEL_173;
        }

        if (v130 >= v122)
        {
          v148 = &v49[16 * v114 + 32];
          v150 = *v148;
          v149 = *(v148 + 1);
          v125 = __OFSUB__(v149, v150);
          v151 = v149 - v150;
          if (v125)
          {
            goto LABEL_177;
          }

          if (v117 < v151)
          {
            v114 = v111 - 2;
          }

          goto LABEL_104;
        }

        goto LABEL_83;
      }

      v50 = v236;
LABEL_114:
      v47 = v229[1];
      v48 = v221;
      a4 = v210;
      if (v221 >= v47)
      {
        goto LABEL_151;
      }
    }
  }

  v49 = MEMORY[0x277D84F90];
LABEL_151:
  v48 = *v211;
  if (*v211)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_185;
    }

    goto LABEL_153;
  }

LABEL_191:
  __break(1u);
  return result;
}

unint64_t sub_21C837E30(unint64_t a1, char *a2, unint64_t a3, unint64_t a4, uint64_t *a5)
{
  v143 = a5;
  v139 = type metadata accessor for PMAccount.MockData(0);
  v9 = *(*(v139 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v139);
  v135 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v134 = &v131 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v141 = &v131 - v15;
  MEMORY[0x28223BE20](v14);
  v136 = &v131 - v16;
  v140 = type metadata accessor for PMAccount.Storage(0);
  v17 = *(*(v140 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v140);
  v138 = (&v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v18);
  v137 = (&v131 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v145 = (&v131 - v23);
  MEMORY[0x28223BE20](v22);
  v144 = &v131 - v24;
  v148 = type metadata accessor for PMAccount(0);
  v25 = *(*(v148 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v148);
  v147 = (&v131 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = MEMORY[0x28223BE20](v26);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = (&v131 - v30);
  result = MEMORY[0x28223BE20](v29);
  v35 = (&v131 - v34);
  v146 = *(v36 + 72);
  if (!v146)
  {
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    return result;
  }

  result = a2;
  if (&a2[-a1] == 0x8000000000000000 && v146 == -1)
  {
    goto LABEL_113;
  }

  v37 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v146 == -1)
  {
    goto LABEL_114;
  }

  v38 = &a2[-a1] / v146;
  v151 = a1;
  v150 = a4;
  if (v38 >= v37 / v146)
  {
    v41 = v37 / v146 * v146;
    v145 = v33;
    if (a4 < a2 || &a2[v41] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_63:
        v80 = a4 + v41;
        if (v41 < 1)
        {
          goto LABEL_110;
        }

        v81 = -v146;
        v82 = a4 + v41;
        v146 = -v146;
        while (1)
        {
          v136 = v80;
          v83 = a2;
          v84 = &a2[v81];
          v142 = &a2[v81];
          v85 = v80;
          while (1)
          {
            if (v83 <= a1)
            {
              v151 = v83;
              v149 = v136;
              goto LABEL_111;
            }

            v87 = a3;
            v88 = a4;
            v89 = v83;
            v144 = v82;
            v90 = v82 + v81;
            v91 = v33;
            sub_21C80EABC(v90, v33, type metadata accessor for PMAccount);
            sub_21C80EABC(v84, v147, type metadata accessor for PMAccount);
            v92 = *v143;
            v93 = *(*v143 + 16);
            v141 = v85;
            if (!v93 || (v94 = sub_21CB10A3C(*v91, v91[1]), (v95 & 1) == 0))
            {
              v111 = 0;
              v83 = v89;
              goto LABEL_79;
            }

            v96 = *(*(v92 + 56) + 8 * v94);
            v97 = sub_21CB81054();

            v98 = *v143;
            v83 = v89;
            if (!*(*v143 + 16))
            {
              v111 = 1;
LABEL_79:
              a4 = v88;
LABEL_80:
              v103 = v87;
              goto LABEL_81;
            }

            v99 = sub_21CB10A3C(*v147, v147[1]);
            a4 = v88;
            if ((v100 & 1) == 0)
            {
              v111 = 1;
              goto LABEL_80;
            }

            v101 = *(*(v98 + 56) + 8 * v99);
            v102 = sub_21CB81054();

            v103 = v87;
            if (v97 == v102)
            {
              v104 = v137;
              sub_21C80EABC(v145 + *(v148 + 24), v137, type metadata accessor for PMAccount.Storage);
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                v105 = v104;
                v106 = v134;
                sub_21C8399BC(v105, v134, type metadata accessor for PMAccount.MockData);
                v107 = (v106 + *(v139 + 44));
                if (v107[1])
                {
                  v108 = *v107;
                  v109 = v106;
                  v110 = v107[1];
                }

                else
                {
                  v116 = *(v106 + 32);
                  v115 = *(v106 + 40);
                  v109 = v106;
                }

                v114 = v138;

                sub_21C7191E0(v109, type metadata accessor for PMAccount.MockData);
              }

              else
              {
                v112 = *v104;
                v113 = [*v104 effectiveTitleForSorting];
                sub_21CB855C4();

                v114 = v138;
              }

              v133 = sub_21CB85634();
              v118 = v117;

              sub_21C80EABC(v147 + *(v148 + 24), v114, type metadata accessor for PMAccount.Storage);
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                v119 = v135;
                sub_21C8399BC(v114, v135, type metadata accessor for PMAccount.MockData);
                v120 = (v119 + *(v139 + 44));
                if (v120[1])
                {
                  v121 = *v120;
                  v122 = v120[1];
                }

                else
                {
                  v126 = *(v119 + 32);
                  v127 = *(v119 + 40);
                }

                sub_21C7191E0(v119, type metadata accessor for PMAccount.MockData);
              }

              else
              {
                v123 = *v114;
                v124 = [*v114 effectiveTitleForSorting];
                v132 = v118;
                v125 = v124;
                sub_21CB855C4();

                v118 = v132;
              }

              v128 = sub_21CB85634();
              v130 = v129;

              if (v133 == v128 && v118 == v130)
              {

                v111 = 0;
              }

              else
              {
                v111 = sub_21CB86344();
              }
            }

            else
            {
              v111 = v102 < v97;
            }

LABEL_81:
            a3 = v103 + v146;
            sub_21C7191E0(v147, type metadata accessor for PMAccount);
            sub_21C7191E0(v145, type metadata accessor for PMAccount);
            if (v111)
            {
              break;
            }

            v85 = v90;
            v84 = v142;
            if (v103 < v144 || a3 >= v144)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v103 != v144)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v82 = v90;
            v86 = v90 > a4;
            v33 = v145;
            v81 = v146;
            if (!v86)
            {
              v80 = v85;
              a2 = v83;
              goto LABEL_110;
            }
          }

          a2 = v142;
          if (v103 < v83 || a3 >= v83)
          {
            swift_arrayInitWithTakeFrontToBack();
            v81 = v146;
          }

          else
          {
            v81 = v146;
            if (v103 != v83)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v82 = v144;
          v33 = v145;
          v80 = v141;
          if (v144 <= a4)
          {
LABEL_110:
            v151 = a2;
            v149 = v80;
            goto LABEL_111;
          }
        }
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v33 = v145;
    goto LABEL_63;
  }

  v39 = v38 * v146;
  if (a4 < a1 || a1 + v39 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
    result = a2;
    v40 = v143;
  }

  else
  {
    v40 = v143;
    if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
      result = a2;
    }
  }

  v147 = (a4 + v39);
  v149 = a4 + v39;
  if (v39 >= 1 && result < a3)
  {
    do
    {
      v43 = result;
      sub_21C80EABC(result, v35, type metadata accessor for PMAccount);
      sub_21C80EABC(a4, v31, type metadata accessor for PMAccount);
      v44 = *v40;
      if (!*(*v40 + 16))
      {
        goto LABEL_48;
      }

      v45 = sub_21CB10A3C(*v35, v35[1]);
      if ((v46 & 1) == 0)
      {
        goto LABEL_48;
      }

      v47 = *(*(v44 + 56) + 8 * v45);
      v48 = sub_21CB81054();

      v49 = *v40;
      if (!*(*v40 + 16) || (v50 = sub_21CB10A3C(*v31, v31[1]), (v51 & 1) == 0))
      {
        sub_21C7191E0(v31, type metadata accessor for PMAccount);
        sub_21C7191E0(v35, type metadata accessor for PMAccount);
LABEL_29:
        v60 = v146;
        if (a1 < v43 || a1 >= v43 + v146)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v43)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        result = v43 + v60;
        goto LABEL_55;
      }

      v52 = *(*(v49 + 56) + 8 * v50);
      v53 = sub_21CB81054();

      if (v48 == v53)
      {
        v54 = v144;
        sub_21C80EABC(v35 + *(v148 + 24), v144, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v55 = v54;
          v56 = v136;
          sub_21C8399BC(v55, v136, type metadata accessor for PMAccount.MockData);
          v57 = (v56 + *(v139 + 44));
          if (v57[1])
          {
            v58 = *v57;
            v59 = v57[1];
          }

          else
          {
            v64 = *(v56 + 32);
            v63 = *(v56 + 40);
          }

          sub_21C7191E0(v56, type metadata accessor for PMAccount.MockData);
        }

        else
        {
          v142 = *v54;
          v62 = [v142 effectiveTitleForSorting];
          sub_21CB855C4();
        }

        v138 = sub_21CB85634();
        v142 = v65;

        v66 = v145;
        sub_21C80EABC(v31 + *(v148 + 24), v145, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v67 = v66;
          v68 = v141;
          sub_21C8399BC(v67, v141, type metadata accessor for PMAccount.MockData);
          v69 = v68;
          v70 = (v68 + *(v139 + 44));
          if (v70[1])
          {
            v71 = *v70;
            v72 = v70[1];
          }

          else
          {
            v74 = *(v68 + 32);
            v75 = *(v69 + 40);
          }

          sub_21C7191E0(v69, type metadata accessor for PMAccount.MockData);
        }

        else
        {
          v137 = *v66;
          v73 = [v137 effectiveTitleForSorting];
          sub_21CB855C4();
        }

        v76 = sub_21CB85634();
        v78 = v77;

        if (v138 == v76 && v142 == v78)
        {

          v40 = v143;
LABEL_48:
          sub_21C7191E0(v31, type metadata accessor for PMAccount);
          sub_21C7191E0(v35, type metadata accessor for PMAccount);
          goto LABEL_49;
        }

        v61 = sub_21CB86344();
      }

      else
      {
        v61 = v53 < v48;
      }

      sub_21C7191E0(v31, type metadata accessor for PMAccount);
      sub_21C7191E0(v35, type metadata accessor for PMAccount);
      v40 = v143;
      if (v61)
      {
        goto LABEL_29;
      }

LABEL_49:
      v60 = v146;
      v79 = a4 + v146;
      if (a1 < a4 || a1 >= v79)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v150 = v79;
      a4 += v60;
      result = v43;
LABEL_55:
      a1 += v60;
      v151 = a1;
    }

    while (a4 < v147 && result < a3);
  }

LABEL_111:
  sub_21C864564(&v151, &v150, &v149);
  return 1;
}

uint64_t _s17PasswordManagerUI15PMAccountsStateC6filter8accounts10searchText017associatedDomainsB0SayAA9PMAccountVGAE_SDySS10SafariCore26WBSSavedAccountSearchMatchCG0H7ResultstAJ_SSSo021WBSAutoFillAssociatedkB0CSgtFZ_0(unint64_t a1, void *a2, uint64_t isUniquelyReferenced_nonNull_native, void *a4)
{
  v126 = a4;
  v7 = type metadata accessor for PMAccount.MockData(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v124 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for PMAccount.Storage(0);
  v10 = *(*(v133 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v133);
  v127 = (&v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v11);
  v129 = (&v110 - v14);
  MEMORY[0x28223BE20](v13);
  v131 = &v110 - v15;
  v16 = type metadata accessor for PMAccount(0);
  v17 = *(v16 - 8);
  v134 = v16;
  v135 = v17;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v113 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v112 = &v110 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v110 - v23;
  v25 = sub_21CB81C54();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v110 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB85D34();
  if (qword_27CDEA458 != -1)
  {
LABEL_70:
    swift_once();
  }

  v30 = qword_27CE186B8;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v31 = swift_allocObject();
  v118 = xmmword_21CBA0690;
  *(v31 + 16) = xmmword_21CBA0690;
  *(v31 + 56) = MEMORY[0x277D837D0];
  v116 = sub_21C7C0050();
  *(v31 + 64) = v116;
  v132 = a2;
  *(v31 + 32) = a2;
  *(v31 + 40) = isUniquelyReferenced_nonNull_native;

  sub_21CB81C44();
  v120 = v30;
  sub_21CB81C24();

  v32 = *(v26 + 8);
  v26 += 8;
  v122 = v26;
  v123 = v25;
  v117 = v32;
  v32(v29, v25);
  v33 = MEMORY[0x277D84F90];
  v115 = sub_21CB127E8(MEMORY[0x277D84F90]);
  v137[0] = v115;
  a2 = *(a1 + 16);
  v121 = v29;
  v130 = isUniquelyReferenced_nonNull_native;
  if (!a2)
  {
    v35 = v33;
    goto LABEL_63;
  }

  v34 = a1;
  v25 = 0;
  v35 = MEMORY[0x277D84F90];
  v128 = v34;
  v29 = v131;
  v125 = v24;
  while (2)
  {
    v114 = v35;
    a1 = v25;
    while (1)
    {
      if (a1 >= a2)
      {
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      v25 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        goto LABEL_69;
      }

      v36 = (*(v135 + 80) + 32) & ~*(v135 + 80);
      v26 = *(v135 + 72);
      sub_21C80EABC(v34 + v36 + v26 * a1, v24, type metadata accessor for PMAccount);
      if (sub_21CB85954())
      {

        v35 = MEMORY[0x277D84F90];
        sub_21CB127E8(MEMORY[0x277D84F90]);
        sub_21C7191E0(v24, type metadata accessor for PMAccount);

        v103 = v132;
        v104 = v123;
        v105 = v130;
        goto LABEL_67;
      }

      isUniquelyReferenced_nonNull_native = v29;
      v37 = *(v134 + 24);
      sub_21C80EABC(&v24[v37], isUniquelyReferenced_nonNull_native, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      sub_21C7191E0(isUniquelyReferenced_nonNull_native, type metadata accessor for PMAccount.Storage);
      sub_21C7191E0(v24, type metadata accessor for PMAccount);
      v29 = isUniquelyReferenced_nonNull_native;
LABEL_6:
      ++a1;
      if (v25 == a2)
      {
        v35 = v114;
        goto LABEL_63;
      }
    }

    isUniquelyReferenced_nonNull_native = *isUniquelyReferenced_nonNull_native;
    v38 = v129;
    sub_21C80EABC(&v24[v37], v129, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C7191E0(v38, type metadata accessor for PMAccount.Storage);
      goto LABEL_16;
    }

    v39 = *v38;
    v40 = [*v38 credentialTypes];

    if (v40 != 4)
    {
LABEL_16:
      v43 = v127;
      sub_21C80EABC(&v24[v37], v127, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v44 = isUniquelyReferenced_nonNull_native;
        v45 = v43;
        v46 = v124;
        sub_21C8399BC(v45, v124, type metadata accessor for PMAccount.MockData);
        v48 = *(v46 + 48);
        v47 = *(v46 + 56);

        sub_21C7191E0(v46, type metadata accessor for PMAccount.MockData);
        v49 = v126;
        if (v126)
        {
LABEL_18:
          v50 = sub_21CB85584();

          v51 = [v49 domainsWithAssociatedCredentialsForDomain_];

          if (v51)
          {
            sub_21CB859E4();
          }

          goto LABEL_23;
        }
      }

      else
      {
        v52 = *v43;
        v53 = [v52 highLevelDomain];
        if (!v53)
        {

          sub_21C7191E0(v24, type metadata accessor for PMAccount);
          v34 = v128;
LABEL_26:
          v29 = v131;
          goto LABEL_6;
        }

        v54 = v53;
        v44 = isUniquelyReferenced_nonNull_native;
        sub_21CB855C4();

        v49 = v126;
        if (v126)
        {
          goto LABEL_18;
        }
      }

LABEL_23:
      isUniquelyReferenced_nonNull_native = v44;
      v24 = v125;
LABEL_24:
      v55 = sub_21CB85584();
      v56 = sub_21CB859D4();

      v57 = [isUniquelyReferenced_nonNull_native searchMatchForUserTypedSearchPattern:v55 associatedDomains:v56];

      if (v57)
      {
        sub_21C80EABC(v24, v113, type metadata accessor for PMAccount);
        v35 = v114;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_21CA4F1B8(0, v35[2] + 1, 1, v35);
        }

        v59 = v35[2];
        v58 = v35[3];
        v111 = isUniquelyReferenced_nonNull_native;
        if (v59 >= v58 >> 1)
        {
          v35 = sub_21CA4F1B8(v58 > 1, v59 + 1, 1, v35);
        }

        v35[2] = v59 + 1;
        sub_21C8399BC(v113, v35 + v36 + v59 * v26, type metadata accessor for PMAccount);
        v60 = *v24;
        v61 = *(v24 + 1);

        v62 = v57;
        v63 = v137[0];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v136 = v63;
        v115 = v60;
        v65 = sub_21CB10A3C(v60, v61);
        v66 = v63[2];
        v67 = (v64 & 1) == 0;
        v68 = v66 + v67;
        if (__OFADD__(v66, v67))
        {
          __break(1u);
        }

        else
        {
          v34 = v128;
          v29 = v131;
          if (v63[3] < v68)
          {
            v69 = v64;
            sub_21C8D13B4(v68, isUniquelyReferenced_nonNull_native);
            v70 = sub_21CB10A3C(v115, v61);
            if ((v69 & 1) == (v71 & 1))
            {
              v65 = v70;
              LOBYTE(v64) = v69;
              goto LABEL_38;
            }

LABEL_75:
            sub_21CB863B4();
            __break(1u);

            __break(1u);
            return result;
          }

          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v100 = v65;
            isUniquelyReferenced_nonNull_native = v64;
            sub_21C8D5458();
            LOBYTE(v64) = isUniquelyReferenced_nonNull_native;
            v65 = v100;
          }

LABEL_38:
          v72 = v111;
          v73 = v62;
          v26 = v136;
          if (v64)
          {
            v74 = v136[7];
            v75 = *(v74 + 8 * v65);
            *(v74 + 8 * v65) = v73;

            goto LABEL_54;
          }

          v136[(v65 >> 6) + 8] |= 1 << v65;
          v76 = (*(v26 + 48) + 16 * v65);
          *v76 = v115;
          v76[1] = v61;
          *(*(v26 + 56) + 8 * v65) = v73;
          v77 = *(v26 + 16);
          v78 = __OFADD__(v77, 1);
          v79 = v77 + 1;
          if (!v78)
          {
            *(v26 + 16) = v79;

            goto LABEL_55;
          }
        }

        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      sub_21C7191E0(v24, type metadata accessor for PMAccount);

      v34 = v128;
      goto LABEL_26;
    }

    v41 = sub_21CB85584();
    v42 = [isUniquelyReferenced_nonNull_native searchMatchForUserTypedSearchPattern_];

    if (!v42)
    {
      goto LABEL_24;
    }

    sub_21C80EABC(v24, v112, type metadata accessor for PMAccount);
    v35 = v114;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_21CA4F1B8(0, v35[2] + 1, 1, v35);
    }

    v81 = v35[2];
    v80 = v35[3];
    v111 = isUniquelyReferenced_nonNull_native;
    if (v81 >= v80 >> 1)
    {
      v35 = sub_21CA4F1B8(v80 > 1, v81 + 1, 1, v35);
    }

    v35[2] = v81 + 1;
    sub_21C8399BC(v112, v35 + v36 + v81 * v26, type metadata accessor for PMAccount);
    v82 = *v24;
    v83 = *(v24 + 1);

    v115 = v42;
    v84 = v137[0];
    v85 = swift_isUniquelyReferenced_nonNull_native();
    v136 = v84;
    v87 = sub_21CB10A3C(v82, v83);
    v88 = v84[2];
    v89 = (v86 & 1) == 0;
    v90 = v88 + v89;
    if (__OFADD__(v88, v89))
    {
      goto LABEL_73;
    }

    v34 = v128;
    v29 = v131;
    if (v84[3] >= v90)
    {
      if (v85)
      {
        goto LABEL_51;
      }

      isUniquelyReferenced_nonNull_native = v82;
      v101 = v87;
      v102 = v86;
      sub_21C8D5458();
      v86 = v102;
      v87 = v101;
    }

    else
    {
      v91 = v86;
      sub_21C8D13B4(v90, v85);
      v92 = sub_21CB10A3C(v82, v83);
      if ((v91 & 1) != (v93 & 1))
      {
        goto LABEL_75;
      }

      v87 = v92;
      v86 = v91;
LABEL_51:
      isUniquelyReferenced_nonNull_native = v82;
    }

    v72 = v111;
    v26 = v136;
    if ((v86 & 1) == 0)
    {
      v136[(v87 >> 6) + 8] |= 1 << v87;
      v96 = (*(v26 + 48) + 16 * v87);
      *v96 = isUniquelyReferenced_nonNull_native;
      v96[1] = v83;
      v97 = v115;
      *(*(v26 + 56) + 8 * v87) = v115;
      v98 = *(v26 + 16);
      v78 = __OFADD__(v98, 1);
      v99 = v98 + 1;
      if (!v78)
      {
        *(v26 + 16) = v99;

        goto LABEL_55;
      }

      goto LABEL_74;
    }

    v94 = v136[7];
    v75 = *(v94 + 8 * v87);
    v95 = v115;
    *(v94 + 8 * v87) = v115;

LABEL_54:

    v72 = v75;
LABEL_55:

    v115 = v26;
    v137[0] = v26;
    v24 = v125;
    sub_21C7191E0(v125, type metadata accessor for PMAccount);
    if (v25 != a2)
    {
      continue;
    }

    break;
  }

LABEL_63:
  if ([objc_opt_self() isPasswordsAppFuzzySearchEnabled])
  {
    v136 = v35;

    sub_21C836240(&v136, v137);
    v104 = v123;
    v105 = v130;

    v35 = v136;
  }

  else
  {
    v104 = v123;
    v105 = v130;
  }

  v103 = v132;
LABEL_67:
  sub_21CB85D24();
  v106 = swift_allocObject();
  *(v106 + 16) = v118;
  v107 = v116;
  *(v106 + 56) = MEMORY[0x277D837D0];
  *(v106 + 64) = v107;
  *(v106 + 32) = v103;
  *(v106 + 40) = v105;

  v108 = v121;
  sub_21CB81C44();
  sub_21CB81C24();

  v117(v108, v104);
  return v35;
}

uint64_t sub_21C839958(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C8399BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C839A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 4)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (sub_21CB86344() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_21C839AC4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  result = sub_21C839A24(*a1, a2, a3);
  v10 = result;
  if (v3)
  {
    return v10;
  }

  if (v9)
  {
    return *(v7 + 16);
  }

  v11 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v12 = *(v7 + 16);
    if (v11 == v12)
    {
      return v10;
    }

    v13 = 32 * result + 88;
    v27 = a1;
    while (v11 < v12)
    {
      v14 = v7 + v13;
      result = *(v7 + v13 - 24);
      if (result != a2 || *(v7 + v13 - 16) != a3)
      {
        result = sub_21CB86344();
        if ((result & 1) == 0)
        {
          if (v11 != v10)
          {
            if (v10 >= v12)
            {
              goto LABEL_24;
            }

            v16 = v7 + 32 + 32 * v10;
            v30 = *(v16 + 8);
            v31 = *v16;
            v29 = *(v16 + 16);
            v17 = *(v16 + 24);
            v18 = *(v14 - 16);
            v33 = *(v14 - 24);
            v32 = *(v7 + v13 - 8);
            v19 = *(v7 + v13);

            v28 = v17;

            v20 = v19;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_21CAA10B4(v7);
              v7 = result;
            }

            if (v10 >= *(v7 + 16))
            {
              goto LABEL_25;
            }

            v21 = v7 + 32 * v10;
            v22 = *(v21 + 40);
            v23 = *(v21 + 56);
            *(v21 + 32) = v33;
            *(v21 + 40) = v18;
            *(v21 + 48) = v32;
            *(v21 + 56) = v20;

            if (v11 >= *(v7 + 16))
            {
              goto LABEL_26;
            }

            v24 = (v7 + v13);
            v25 = *(v7 + v13 - 16);
            v26 = *(v7 + v13);
            *(v24 - 3) = v31;
            *(v24 - 2) = v30;
            *(v24 - 8) = v29;
            *v24 = v28;

            *v27 = v7;
          }

          ++v10;
        }
      }

      ++v11;
      v12 = *(v7 + 16);
      v13 += 32;
      if (v11 == v12)
      {
        return v10;
      }
    }

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

uint64_t sub_21C839CC0(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_21C83348C(a1, *(v1 + 16));
}

uint64_t sub_21C839CE0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return sub_21C835E20(a1, a2, *(v2 + 16));
}

uint64_t Scene.pmDisableSceneRestoration()()
{
  v0 = sub_21CB83984();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB83974();
  sub_21CB84CD4();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_21C839E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v29 = a1;
  *(&v29 + 1) = a2;
  sub_21C71F3FC();

  v4 = sub_21CB84054();
  v6 = v5;
  v8 = v7;
  sub_21CB84B34();
  v9 = sub_21CB83FB4();
  v11 = v10;
  v13 = v12;

  sub_21C74A72C(v4, v6, v8 & 1);

  sub_21CB83D64();
  v14 = sub_21CB84024();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_21C74A72C(v9, v11, v13 & 1);

  KeyPath = swift_getKeyPath();
  sub_21CB85214();
  sub_21CB82AC4();
  *&v28[55] = v32;
  *&v28[71] = v33;
  *&v28[87] = v34;
  *&v28[103] = v35;
  *&v28[7] = v29;
  *&v28[23] = v30;
  LOBYTE(v11) = v18 & 1;
  *&v28[39] = v31;
  v22 = sub_21CB83CE4();
  result = sub_21CB81F24();
  *(a3 + 105) = *&v28[64];
  *(a3 + 121) = *&v28[80];
  *(a3 + 137) = *&v28[96];
  *(a3 + 41) = *v28;
  *(a3 + 57) = *&v28[16];
  *(a3 + 73) = *&v28[32];
  *a3 = v14;
  *(a3 + 8) = v16;
  *(a3 + 16) = v11;
  *(a3 + 24) = v20;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 1;
  *(a3 + 152) = *(&v35 + 1);
  *(a3 + 89) = *&v28[48];
  *(a3 + 160) = v22;
  *(a3 + 168) = v24;
  *(a3 + 176) = v25;
  *(a3 + 184) = v26;
  *(a3 + 192) = v27;
  *(a3 + 200) = 0;
  return result;
}

unint64_t sub_21C83A028()
{
  result = qword_27CDED830;
  if (!qword_27CDED830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED838, &qword_21CBA7B38);
    sub_21C83A0B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED830);
  }

  return result;
}

unint64_t sub_21C83A0B4()
{
  result = qword_27CDED840;
  if (!qword_27CDED840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED848, &unk_21CBA7B40);
    sub_21C83A140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED840);
  }

  return result;
}

unint64_t sub_21C83A140()
{
  result = qword_27CDED850;
  if (!qword_27CDED850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED858, &qword_21CBB3E50);
    sub_21C83A1CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED850);
  }

  return result;
}

unint64_t sub_21C83A1CC()
{
  result = qword_27CDED860;
  if (!qword_27CDED860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED868, &unk_21CBA7B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED860);
  }

  return result;
}

uint64_t sub_21C83A230@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_21C83A2B0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DC4();
  sub_21C8185F8();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t PMAccountsView.init()@<X0>(uint64_t a1@<X8>)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v2 = *(*(v34 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v34);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v34 - v6;
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v36);

  type metadata accessor for PMAccountsState();
  sub_21C705EB0(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v9 = sub_21CB82674();
  v11 = v10;

  *a1 = v9;
  *(a1 + 8) = v11;
  v12 = swift_getKeyPath();
  sub_21CB86544();
  sub_21C704000(v12, v36);

  type metadata accessor for PMTipsStore();
  sub_21C705EB0(&qword_27CDED870, type metadata accessor for PMTipsStore);
  v13 = sub_21CB82674();
  v15 = v14;

  *(a1 + 16) = v13;
  *(a1 + 24) = v15;
  type metadata accessor for PMPasswordManagerState();
  sub_21C705EB0(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
  *(a1 + 32) = sub_21CB82B84();
  *(a1 + 40) = v16;
  type metadata accessor for PMAccountsListModel(0);
  sub_21C705EB0(&qword_27CDEC988, type metadata accessor for PMAccountsListModel);
  *(a1 + 48) = sub_21CB82B84();
  *(a1 + 56) = v17;
  v18 = swift_getKeyPath();
  sub_21CB86544();
  sub_21C7073E8(v18, v36);

  type metadata accessor for PMGroupsStore();
  sub_21C705EB0(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
  v19 = sub_21CB82674();
  v21 = v20;

  *(a1 + 64) = v19;
  *(a1 + 72) = v21;
  LOBYTE(v35) = 0;
  sub_21CB84D44();
  v22 = v37;
  *(a1 + 80) = v36;
  *(a1 + 88) = v22;
  v23 = type metadata accessor for PMAccountsView();
  v24 = v23[10];
  v25 = sub_21CB85C44();
  v26 = *(*(v25 - 8) + 56);
  v26(v7, 1, 1, v25);
  sub_21C6EDBAC(v7, v5, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21CB84D44();
  sub_21C6EA794(v7, &unk_27CDF20B0, &unk_21CBA0090);
  v27 = a1 + v23[11];
  *v27 = swift_getKeyPath();
  *(v27 + 8) = 0;
  v28 = (a1 + v23[12]);
  v26(v7, 1, 1, v25);
  v29 = type metadata accessor for PMGroupInvitationsListModel(0);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v35 = sub_21C9C6E08(v7);
  result = sub_21CB84D44();
  v33 = v37;
  *v28 = v36;
  v28[1] = v33;
  return result;
}

uint64_t PMAccountsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v169 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED878, &unk_21CBAA6A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v168 = &v142 - v4;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED880, &qword_21CBA7C10);
  v5 = *(*(v167 - 8) + 64);
  MEMORY[0x28223BE20](v167);
  v180 = &v142 - v6;
  v166 = type metadata accessor for PMAccountsView();
  v182 = *(v166 - 8);
  v157 = *(v182 + 64);
  MEMORY[0x28223BE20](v166);
  v172 = &v142 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_21CB81024();
  v185 = *(v179 - 8);
  v8 = *(v185 + 64);
  MEMORY[0x28223BE20](v179);
  v178 = &v142 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_21CB830D4();
  v171 = *(v184 - 8);
  v10 = *(v171 + 64);
  MEMORY[0x28223BE20](v184);
  v170 = &v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21CB83554();
  v148 = *(v12 - 8);
  v13 = *(v148 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_21CB83584();
  v151 = *(v152 - 8);
  v16 = *(v151 + 64);
  MEMORY[0x28223BE20](v152);
  v18 = &v142 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED888, &qword_21CBA7C18);
  v149 = *(v147 - 8);
  v19 = *(v149 + 64);
  MEMORY[0x28223BE20](v147);
  v21 = &v142 - v20;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED890, &qword_21CBA7C20);
  v158 = *(v153 - 8);
  v22 = *(v158 + 8);
  MEMORY[0x28223BE20](v153);
  v143 = &v142 - v23;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED898, &qword_21CBA7C28);
  v24 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154);
  v150 = &v142 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED8A0, &qword_21CBA7C30);
  v27 = *(v26 - 8);
  v155 = (v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v183 = &v142 - v29;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED8A8, &qword_21CBA7C38);
  v30 = *(*(v156 - 1) + 64);
  MEMORY[0x28223BE20](v156);
  v173 = &v142 - v31;
  OpaqueTypeConformance2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED8B0, &qword_21CBA7C40);
  v32 = *(*(OpaqueTypeConformance2 - 8) + 64);
  MEMORY[0x28223BE20](OpaqueTypeConformance2);
  v174 = &v142 - v33;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED8B8, &qword_21CBA7C48);
  v159 = *(v160 - 8);
  v34 = *(v159 + 64);
  MEMORY[0x28223BE20](v160);
  v176 = &v142 - v35;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED8C0, &qword_21CBA7C50);
  v161 = *(v163 - 8);
  v36 = *(v161 + 64);
  MEMORY[0x28223BE20](v163);
  v177 = &v142 - v37;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED8C8, &qword_21CBA7C58);
  v164 = *(v165 - 8);
  v38 = *(v164 + 64);
  MEMORY[0x28223BE20](v165);
  v162 = &v142 - v39;
  v187 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED8D0, &qword_21CBA7C60);
  sub_21C6EADEC(&qword_27CDED8D8, &qword_27CDED8D0, &qword_21CBA7C60);
  v40 = v21;
  sub_21CB83EF4();
  v41 = v1;
  v42 = *(v1 + 56);
  v146 = *(v1 + 48);
  v145 = v42;
  v144 = type metadata accessor for PMAccountsListModel(0);
  v142 = sub_21C705EB0(&qword_27CDEC988, type metadata accessor for PMAccountsListModel);
  sub_21CB82B54();
  swift_getKeyPath();
  sub_21CB82B74();

  sub_21CB83544();
  v43 = v18;
  sub_21CB83534();
  (*(v148 + 8))(v15, v12);
  v44 = sub_21C6EADEC(&qword_27CDED8E0, &qword_27CDED888, &qword_21CBA7C18);
  v45 = v147;
  v46 = v143;
  sub_21CB84114();

  (*(v151 + 8))(v43, v152);
  (*(v149 + 8))(v40, v45);
  v186 = v41;
  v47 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED8E8, &qword_21CBA7C90);
  v188 = v45;
  v189 = v44;
  swift_getOpaqueTypeConformance2();
  v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED8F0, &qword_21CBA7C98);
  v49 = sub_21C8435A8();
  v188 = v48;
  v189 = v49;
  swift_getOpaqueTypeConformance2();
  v50 = v150;
  v51 = v153;
  sub_21CB84894();
  (*(v158 + 1))(v46, v51);
  v52 = v170;
  sub_21CB830A4();
  v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED920, &qword_21CBA7CB0) + 36);
  v54 = v171;
  v55 = v184;
  (*(v171 + 16))(v50 + v53, v52, v184);
  v56 = v54;
  v57 = *(v54 + 56);
  v57(v50 + v53, 0, 1, v55);
  KeyPath = swift_getKeyPath();
  v59 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED928, &unk_21CBA7CE8) + 36));
  v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB238, &qword_21CBA1570) + 28);
  (*(v56 + 32))(v59 + v60, v52, v55);
  v57(v59 + v60, 0, 1, v55);
  *v59 = KeyPath;
  v61 = swift_getKeyPath();
  v62 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED930, &qword_21CBA7D28) + 36));
  *v62 = v61;
  v62[1] = 0x4049000000000000;
  v63 = swift_getKeyPath();
  v64 = (v50 + *(v154 + 36));
  v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED938, &qword_21CBA7D60) + 28);
  sub_21CB82B54();
  swift_getKeyPath();
  sub_21CB82B74();

  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED038, &unk_21CBA6000);
  (*(*(v66 - 8) + 56))(v64 + v65, 0, 1, v66);
  *v64 = v63;
  v67 = v178;
  sub_21CB81014();
  v68 = sub_21CB81004();
  v70 = v69;
  v71 = *(v185 + 8);
  v185 += 8;
  v158 = v71;
  v71(v67, v179);
  v196 = v68;
  v197 = v70;
  v72 = *(v47 + 88);
  LOBYTE(v198) = *(v47 + 80);
  v199 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  sub_21C843A80();
  v184 = sub_21C71F3FC();
  v73 = v183;
  sub_21CB84754();

  sub_21C6EA794(v50, &qword_27CDED898, &qword_21CBA7C28);
  v181 = v47;
  v74 = *(v47 + 72);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v75 = v188;
  v76 = v172;
  sub_21C84467C(v47, v172, type metadata accessor for PMAccountsView);
  v77 = *(v182 + 80);
  v78 = (v77 + 16) & ~v77;
  v79 = v78 + v157;
  v80 = swift_allocObject();
  sub_21C844998(v76, v80 + v78, type metadata accessor for PMAccountsView);
  v81 = (v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED980, &qword_21CBA7DF0) + 36));
  *v81 = v75;
  v81[1] = sub_21C843E74;
  v81[2] = v80;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  LOBYTE(v80) = v188;
  v82 = v181;
  sub_21C84467C(v181, v76, type metadata accessor for PMAccountsView);
  v83 = swift_allocObject();
  sub_21C844998(v76, v83 + v78, type metadata accessor for PMAccountsView);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED988, &qword_21CBA7E40);
  v85 = v183;
  v86 = v183 + *(v84 + 36);
  *v86 = v80;
  *(v86 + 8) = sub_21C843EE4;
  *(v86 + 16) = v83;
  sub_21C84467C(v82, v76, type metadata accessor for PMAccountsView);
  v171 = v77;
  v182 = v79;
  v87 = swift_allocObject();
  v88 = v87 + v78;
  v89 = v76;
  sub_21C844998(v76, v88, type metadata accessor for PMAccountsView);
  v90 = (v85 + *(v155 + 11));
  *v90 = sub_21C843EE8;
  v90[1] = v87;
  v90[2] = 0;
  v90[3] = 0;
  v91 = *(v82 + 32);
  v157 = *(v82 + 40);
  if (v91)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v92 = v173;
    v93 = v173 + *(v156 + 9);
    v94 = v91;
    v154 = v91;
    v95 = v94;
    sub_21CB81DB4();

    v156 = type metadata accessor for PMAccountsView;
    sub_21C84467C(v82, v89, type metadata accessor for PMAccountsView);
    v96 = swift_allocObject();
    v170 = ((v77 + 16) & ~v77);
    v155 = type metadata accessor for PMAccountsView;
    sub_21C844998(v89, &v170[v96], type metadata accessor for PMAccountsView);
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED990, &qword_21CBA7E90);
    v98 = (v93 + *(v97 + 36));
    *v98 = sub_21C844CA4;
    v98[1] = v96;
    sub_21C716934(v183, v92, &qword_27CDED8A0, &qword_21CBA7C30);
    swift_getKeyPath();
    swift_getKeyPath();
    v99 = v174;
    v100 = &v174[*(OpaqueTypeConformance2 + 36)];
    v101 = v95;
    sub_21CB81DB4();

    sub_21C84467C(v181, v89, type metadata accessor for PMAccountsView);
    v102 = swift_allocObject();
    sub_21C844998(v89, &v170[v102], type metadata accessor for PMAccountsView);
    v103 = &v100[*(v97 + 36)];
    *v103 = sub_21C843F44;
    v103[1] = v102;
    sub_21C716934(v173, v99, &qword_27CDED8A8, &qword_21CBA7C38);
    swift_getKeyPath();
    swift_getKeyPath();
    v104 = v101;
    sub_21CB81DB4();

    v105 = sub_21C7C2A6C(v188);
    v107 = v106;

    v196 = v105;
    v197 = v107;
    type metadata accessor for PMPasswordManagerState();
    sub_21C705EB0(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
    v108 = sub_21CB82B54();
    swift_getKeyPath();
    sub_21CB82B74();

    v183 = sub_21C843FB4();
    v109 = OpaqueTypeConformance2;
    v110 = v174;
    sub_21CB84754();

    sub_21C6EA794(v110, &qword_27CDED8B0, &qword_21CBA7C40);
    swift_getKeyPath();
    swift_getKeyPath();
    v111 = v104;
    sub_21CB81DB4();

    v112 = sub_21C7C2A6C(v188);
    v114 = v113;

    v198 = v112;
    v199 = v114;
    v115 = sub_21CB82B54();
    swift_getKeyPath();
    sub_21CB82B74();

    v188 = v109;
    v116 = MEMORY[0x277D837D0];
    v189 = MEMORY[0x277D837D0];
    v117 = MEMORY[0x277CE1428];
    v190 = MEMORY[0x277CE1428];
    v191 = MEMORY[0x277CE0BD8];
    v192 = v183;
    v118 = v184;
    v193 = v184;
    v194 = MEMORY[0x277CE1410];
    v195 = MEMORY[0x277CE0BC8];
    v183 = MEMORY[0x277CDEDF8];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v119 = v118;
    v120 = v117;
    v121 = v160;
    v122 = v176;
    sub_21CB84754();

    (*(v159 + 8))(v122, v121);
    v123 = *(v166 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED978, &qword_21CBA7DE8);
    v124 = v181;
    sub_21CB84D74();
    v125 = v172;
    sub_21C84467C(v124, v172, v156);
    v126 = swift_allocObject();
    sub_21C844998(v125, &v170[v126], v155);
    swift_getKeyPath();
    v127 = v168;
    sub_21CB84F44();

    v128 = swift_allocObject();
    *(v128 + 16) = sub_21C8443A0;
    *(v128 + 24) = v126;
    v182 = _s19IdentifiableGroupIDVMa();

    v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED9E8, &qword_21CBA7FF8);
    v188 = v121;
    v189 = v116;
    v190 = v120;
    v191 = MEMORY[0x277CE0BD8];
    v192 = OpaqueTypeConformance2;
    v193 = v119;
    v194 = MEMORY[0x277CE1410];
    v195 = MEMORY[0x277CE0BC8];
    v130 = swift_getOpaqueTypeConformance2();
    v140 = sub_21C705EB0(&qword_27CDED9F0, _s19IdentifiableGroupIDVMa);
    v141 = sub_21C844448();
    v131 = v162;
    v132 = v163;
    v133 = v177;
    sub_21CB847C4();

    sub_21C6EA794(v127, &qword_27CDED878, &unk_21CBAA6A0);
    sub_21C6EA794(v180, &qword_27CDED880, &qword_21CBA7C10);
    (*(v161 + 8))(v133, v132);
    v134 = v178;
    sub_21CB81014();
    v135 = sub_21CB81004();
    v137 = v136;
    v158(v134, v179);
    v196 = v135;
    v197 = v137;
    v188 = v132;
    v189 = v182;
    v190 = v129;
    v191 = v130;
    v192 = v140;
    v193 = v141;
    swift_getOpaqueTypeConformance2();
    v138 = v165;
    sub_21CB842F4();

    return (*(v164 + 8))(v131, v138);
  }

  else
  {
    type metadata accessor for PMPasswordManagerState();
    sub_21C705EB0(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C83C334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDAC0, &qword_21CBA8300);
  v93 = *(v3 - 8);
  v4 = *(v93 + 64);
  MEMORY[0x28223BE20](v3);
  v88 = &v81 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDAC8, &qword_21CBA8308);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v98 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v94 = &v81 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDAD0, &qword_21CBA8310);
  v96 = *(v11 - 8);
  v97 = v11;
  v12 = *(v96 + 64);
  MEMORY[0x28223BE20](v11);
  v95 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v81 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDAD8, &qword_21CBA8318);
  v90 = *(v17 - 8);
  v91 = v17;
  v18 = *(v90 + 64);
  MEMORY[0x28223BE20](v17);
  v87 = &v81 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDAE0, &qword_21CBA8320);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v86 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v81 - v24;
  MEMORY[0x28223BE20](v26);
  v84 = &v81 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDAE8, &qword_21CBA8328);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v85 = &v81 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v100 = &v81 - v32;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDAF0, &qword_21CBA8330);
  v33 = *(v83 - 8);
  v34 = v33[8];
  MEMORY[0x28223BE20](v83);
  v89 = &v81 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v81 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDAF8, &qword_21CBA8338);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v92 = &v81 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v103 = &v81 - v43;
  v101 = a1;
  if (*(a1 + 48))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21CB81DB4();

    v45 = v104;
    v44 = v105;

    v46 = HIBYTE(v44) & 0xF;
    if ((v44 & 0x2000000000000000) == 0)
    {
      v46 = v45 & 0xFFFFFFFFFFFFLL;
    }

    v47 = 1;
    v102 = v16;
    if (!v46)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDB38, &qword_21CBA8358);
      sub_21C6EADEC(&qword_27CDEDB40, &qword_27CDEDB38, &qword_21CBA8358);
      sub_21CB85054();
      v48 = v101;
      sub_21C83CF68(v100);
      v49 = sub_21C84170C();
      v82 = v3;
      if (v49)
      {
        MEMORY[0x28223BE20](v49);
        *(&v81 - 2) = v48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDB58, &unk_21CBA8370);
        sub_21C6EADEC(&qword_27CDEDB60, &qword_27CDEDB58, &unk_21CBA8370);
        sub_21CB85054();
        v50 = 0;
      }

      else
      {
        v50 = 1;
      }

      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDB48, &qword_21CBA8360);
      (*(*(v51 - 8) + 56))(v25, v50, 1, v51);
      v52 = v84;
      sub_21C716934(v25, v84, &qword_27CDEDAE0, &qword_21CBA8320);
      v53 = v33[2];
      v54 = v89;
      v81 = v38;
      v55 = v38;
      v56 = v83;
      v53(v89, v55, v83);
      v57 = v85;
      sub_21C6EDBAC(v100, v85, &qword_27CDEDAE8, &qword_21CBA8328);
      v58 = v86;
      sub_21C6EDBAC(v52, v86, &qword_27CDEDAE0, &qword_21CBA8320);
      v59 = v87;
      v53(v87, v54, v56);
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDB50, &qword_21CBA8368);
      sub_21C6EDBAC(v57, v59 + *(v60 + 48), &qword_27CDEDAE8, &qword_21CBA8328);
      sub_21C6EDBAC(v58, v59 + *(v60 + 64), &qword_27CDEDAE0, &qword_21CBA8320);
      sub_21C6EA794(v52, &qword_27CDEDAE0, &qword_21CBA8320);
      sub_21C6EA794(v100, &qword_27CDEDAE8, &qword_21CBA8328);
      v61 = v33[1];
      v61(v81, v56);
      sub_21C6EA794(v58, &qword_27CDEDAE0, &qword_21CBA8320);
      sub_21C6EA794(v57, &qword_27CDEDAE8, &qword_21CBA8328);
      v61(v89, v56);
      sub_21C716934(v59, v103, &qword_27CDEDAD8, &qword_21CBA8318);
      v47 = 0;
      v3 = v82;
      v16 = v102;
    }

    (*(v90 + 56))(v103, v47, 1, v91);
    v62 = v101;
    v63 = sub_21C83D2A0();
    v104 = 0;
    LOBYTE(v105) = (v63 & 1) == 0;
    BYTE1(v105) = v63 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDB00, &qword_21CBA8340);
    sub_21C844858();
    sub_21C8448AC();
    sub_21CB85064();
    v64 = sub_21C83D2A0();
    if (v64)
    {
      MEMORY[0x28223BE20](v64);
      *(&v81 - 2) = v62;
      v104 = 0;
      LOBYTE(v105) = 1;
      type metadata accessor for PMGeneratedPasswordsSearchResultsRow();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDB20, &qword_21CBA8348);
      sub_21C705EB0(&qword_27CDEDB30, type metadata accessor for PMGeneratedPasswordsSearchResultsRow);
      sub_21C6EADEC(&qword_27CDEDB18, &qword_27CDEDB20, &qword_21CBA8348);
      v65 = v88;
      sub_21CB85064();
      v66 = v93;
      v67 = v94;
      (*(v93 + 32))(v94, v65, v3);
      (*(v66 + 56))(v67, 0, 1, v3);
    }

    else
    {
      v67 = v94;
      (*(v93 + 56))(v94, 1, 1, v3);
    }

    v68 = v92;
    sub_21C6EDBAC(v103, v92, &qword_27CDEDAF8, &qword_21CBA8338);
    v70 = v95;
    v69 = v96;
    v71 = *(v96 + 16);
    v72 = v16;
    v73 = v97;
    v71(v95, v72, v97);
    v74 = v98;
    sub_21C6EDBAC(v67, v98, &qword_27CDEDAC8, &qword_21CBA8308);
    v75 = v99;
    sub_21C6EDBAC(v68, v99, &qword_27CDEDAF8, &qword_21CBA8338);
    v76 = v67;
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDB28, &qword_21CBA8350);
    v71((v75 + *(v77 + 48)), v70, v73);
    sub_21C6EDBAC(v74, v75 + *(v77 + 64), &qword_27CDEDAC8, &qword_21CBA8308);
    sub_21C6EA794(v76, &qword_27CDEDAC8, &qword_21CBA8308);
    v78 = *(v69 + 8);
    v78(v102, v73);
    sub_21C6EA794(v103, &qword_27CDEDAF8, &qword_21CBA8338);
    sub_21C6EA794(v74, &qword_27CDEDAC8, &qword_21CBA8308);
    v78(v70, v73);
    return sub_21C6EA794(v68, &qword_27CDEDAF8, &qword_21CBA8338);
  }

  else
  {
    v80 = *(v101 + 56);
    type metadata accessor for PMAccountsListModel(0);
    sub_21C705EB0(&qword_27CDEC988, type metadata accessor for PMAccountsListModel);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C83CF68@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBF0, &qword_21CBA84B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v22 = v16;
  v23 = v17;
  v24 = v18;
  v19 = v13;
  v20 = v14;
  v21 = v15;
  if (*(&v13 + 1))
  {
    *&v13 = v19;
    v16 = v22;
    v17 = v23;
    v18 = v24;
    v15 = v21;
    v14 = v20;
    MEMORY[0x28223BE20](v9);
    *(&v12 - 2) = &v13;
    type metadata accessor for PMTipView();
    sub_21C705EB0(&qword_27CDEDBF8, type metadata accessor for PMTipView);
    sub_21CB85054();
    sub_21C6EA794(&v19, &unk_27CDED230, &unk_21CBA6460);
    (*(v4 + 32))(a1, v7, v3);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return (*(v4 + 56))(a1, v10, 1, v3);
}

uint64_t sub_21C83D1D8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PMAccountsListModel(0);
  sub_21C705EB0(&qword_27CDEC988, type metadata accessor for PMAccountsListModel);
  v2 = sub_21CB82B84();
  v4 = v3;
  v5 = [objc_opt_self() safari_browserDefaults];
  result = sub_21CB81E74();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = result;
  return result;
}

uint64_t sub_21C83D2A0()
{
  if (*(v0 + 48))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21CB81DB4();

    v1 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v1 = *v4 & 0xFFFFFFFFFFFFLL;
    }

    return v1 != 0;
  }

  else
  {
    v3 = *(v0 + 56);
    type metadata accessor for PMAccountsListModel(0);
    sub_21C705EB0(&qword_27CDEC988, type metadata accessor for PMAccountsListModel);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C83D3A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21CB81DB4();

    *(a2 + 16) = swift_getKeyPath();
    *(a2 + 24) = 0;
    v3 = type metadata accessor for PMGeneratedPasswordsSearchResultsRow();
    v4 = v3[6];
    *(a2 + v4) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
    swift_storeEnumTagMultiPayload();
    v5 = (a2 + v3[7]);
    *v5 = v10;
    v5[1] = v11;
    type metadata accessor for PMGeneratedPasswordsSearchResultsModel();
    swift_allocObject();

    sub_21C7D56B0(v10, v11);
    sub_21C705EB0(&qword_27CDEDC18, type metadata accessor for PMGeneratedPasswordsSearchResultsModel);
    result = sub_21CB82674();
    *a2 = result;
    *(a2 + 8) = v7;
    v8 = (a2 + v3[8]);
    *v8 = nullsub_1;
    v8[1] = 0;
  }

  else
  {
    v9 = *(a1 + 56);
    type metadata accessor for PMAccountsListModel(0);
    sub_21C705EB0(&qword_27CDEC988, type metadata accessor for PMAccountsListModel);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C83D594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA78, &qword_21CBC1740);
  v3 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v63 = &v59 - v4;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED918, &qword_21CBC1710);
  v71 = *(v76 - 8);
  v5 = *(v71 + 64);
  MEMORY[0x28223BE20](v76);
  v70 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA80, &unk_21CBA81E0);
  v68 = *(v7 - 8);
  v69 = v7;
  v8 = *(v68 + 64);
  MEMORY[0x28223BE20](v7);
  v67 = &v59 - v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA88, &qword_21CBAEF10);
  v64 = *(v66 - 8);
  v10 = *(v64 + 64);
  MEMORY[0x28223BE20](v66);
  v62 = &v59 - v11;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA90, &unk_21CBA81F0);
  v61 = *(v75 - 8);
  v12 = *(v61 + 64);
  MEMORY[0x28223BE20](v75);
  v60 = &v59 - v13;
  v14 = sub_21CB83604();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED900, &unk_21CBA7CA0);
  v59 = *(v73 - 8);
  v16 = *(v59 + 64);
  MEMORY[0x28223BE20](v73);
  v18 = &v59 - v17;
  v19 = sub_21CB85114();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v59 - v25;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED8F0, &qword_21CBA7C98);
  v27 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v72 = &v59 - v28;
  v29 = a1;
  if (*(a1 + 48))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21CB81DB4();

    (*(v20 + 104))(v23, *MEMORY[0x277CDF0D8], v19);
    v30 = sub_21CB850F4();
    v31 = *(v20 + 8);
    v31(v23, v19);
    v31(v26, v19);
    if (v30)
    {
      v32 = sub_21CB835A4();
      MEMORY[0x28223BE20](v32);
      *(&v59 - 2) = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDAA8, &qword_21CBA8210);
      sub_21C6EADEC(&qword_27CDEDAB0, &qword_27CDEDAA8, &qword_21CBA8210);
      sub_21CB82AA4();
      v33 = sub_21C6EADEC(&qword_27CDED908, &qword_27CDED900, &unk_21CBA7CA0);
      v34 = v60;
      v35 = v73;
      MEMORY[0x21CF131E0](v18, v73, v33);
      v78 = v35;
      v79 = v33;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v37 = sub_21C6EADEC(&qword_27CDED910, &qword_27CDED918, &qword_21CBC1710);
      v38 = v72;
      v39 = v75;
      MEMORY[0x21CF131F0](v34, v75, v76, OpaqueTypeConformance2, v37);
      (*(v61 + 8))(v34, v39);
      (*(v59 + 8))(v18, v35);
    }

    else
    {
      v40 = sub_21CB83594();
      MEMORY[0x28223BE20](v40);
      v41 = v29;
      *(&v59 - 2) = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
      sub_21C844588();
      v42 = v62;
      sub_21CB82194();
      v43 = sub_21CB835A4();
      MEMORY[0x28223BE20](v43);
      *(&v59 - 2) = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
      sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
      v44 = v67;
      sub_21CB82194();
      v45 = v64;
      v46 = *(v65 + 48);
      v47 = v63;
      v48 = v66;
      (*(v64 + 16))(v63, v42, v66);
      v50 = v68;
      v49 = v69;
      (*(v68 + 16))(&v47[v46], v44, v69);
      v51 = v70;
      sub_21CB83394();
      v52 = sub_21C6EADEC(&qword_27CDED908, &qword_27CDED900, &unk_21CBA7CA0);
      v78 = v73;
      v79 = v52;
      v53 = swift_getOpaqueTypeConformance2();
      v54 = sub_21C6EADEC(&qword_27CDED910, &qword_27CDED918, &qword_21CBC1710);
      v38 = v72;
      v55 = v76;
      MEMORY[0x21CF13200](v51, v75, v76, v53, v54);
      (*(v71 + 8))(v51, v55);
      (*(v50 + 8))(v44, v49);
      (*(v45 + 8))(v42, v48);
    }

    v56 = sub_21C8435A8();
    MEMORY[0x21CF131E0](v38, v74, v56);
    return sub_21C6EA794(v38, &qword_27CDED8F0, &qword_21CBA7C98);
  }

  else
  {
    v58 = *(a1 + 56);
    type metadata accessor for PMAccountsListModel(0);
    sub_21C705EB0(&qword_27CDEC988, type metadata accessor for PMAccountsListModel);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C83DF80@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for PMAccountsListOverflowButton();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  sub_21C815BC4(&v25);
  v13 = *(a1 + 48);
  v12 = *(a1 + 56);
  type metadata accessor for PMAccountsListModel(0);
  sub_21C705EB0(&qword_27CDEC988, type metadata accessor for PMAccountsListModel);
  sub_21CB82B54();
  swift_getKeyPath();
  v14 = &v11[*(v5 + 36)];
  sub_21CB82B74();

  *v11 = sub_21CB82B84();
  *(v11 + 1) = v15;
  type metadata accessor for PMPasswordManagerState();
  sub_21C705EB0(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
  *(v11 + 2) = sub_21CB82B84();
  *(v11 + 3) = v16;
  LOBYTE(v31[0]) = 0;
  sub_21CB84D44();
  v17 = *(&v32[0] + 1);
  v11[32] = v32[0];
  *(v11 + 5) = v17;
  sub_21C84467C(v11, v8, type metadata accessor for PMAccountsListOverflowButton);
  v18 = v28;
  v31[2] = v27;
  v31[3] = v28;
  v19 = v29;
  v20 = v30;
  v31[4] = v29;
  v31[5] = v30;
  v21 = v25;
  v22 = v26;
  v31[0] = v25;
  v31[1] = v26;
  a2[2] = v27;
  a2[3] = v18;
  a2[4] = v19;
  a2[5] = v20;
  *a2 = v21;
  a2[1] = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDAB8, &qword_21CBA8218);
  sub_21C84467C(v8, a2 + *(v23 + 48), type metadata accessor for PMAccountsListOverflowButton);
  sub_21C8155F0(v31, v32);
  sub_21C8446E4(v11, type metadata accessor for PMAccountsListOverflowButton);
  sub_21C8446E4(v8, type metadata accessor for PMAccountsListOverflowButton);
  v32[2] = v27;
  v32[3] = v28;
  v32[4] = v29;
  v32[5] = v30;
  v32[0] = v25;
  v32[1] = v26;
  return sub_21C844744(v32);
}

uint64_t sub_21C83E238(uint64_t a1, uint64_t *a2)
{
  v4 = sub_21CB85114();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  (v13)(v8, v12, v4);

  sub_21CB81DC4();
  return (*(v5 + 8))(v12, v4);
}

uint64_t sub_21C83E3A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for PMAccountsView();
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v10 = *(v29 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v29);
  v13 = &v27 - v12;
  sub_21CB81014();
  v14 = sub_21CB81004();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  v31 = v14;
  v32 = v16;
  sub_21C84467C(a1, &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccountsView);
  v17 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v18 = swift_allocObject();
  sub_21C844998(&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for PMAccountsView);
  sub_21C71F3FC();
  sub_21CB84DE4();
  if (*(a1 + 48))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21CB81DB4();

    v19 = *(v31 + 16);

    v20 = v19 == 0;
    KeyPath = swift_getKeyPath();
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    v23 = v30;
    (*(v10 + 32))(v30, v13, v29);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
    v25 = (v23 + *(result + 36));
    *v25 = KeyPath;
    v25[1] = sub_21C735744;
    v25[2] = v22;
  }

  else
  {
    v26 = *(a1 + 56);
    type metadata accessor for PMAccountsListModel(0);
    sub_21C705EB0(&qword_27CDEC988, type metadata accessor for PMAccountsListModel);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C83E788(uint64_t a1)
{
  if (*(a1 + 48))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21CB81DB4();

    v1 = sub_21C818A9C(v4);

    sub_21C87E898(v1);
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_21CB81DC4();
  }

  else
  {
    v3 = *(a1 + 56);
    type metadata accessor for PMAccountsListModel(0);
    sub_21C705EB0(&qword_27CDEC988, type metadata accessor for PMAccountsListModel);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C83E8DC(uint64_t a1)
{
  v2 = type metadata accessor for PMAccountsView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v10 = sub_21CB81004();
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  v16[0] = v10;
  v16[1] = v12;
  sub_21C84467C(a1, v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccountsView);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  sub_21C844998(v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for PMAccountsView);
  sub_21C71F3FC();
  return sub_21CB84DE4();
}

uint64_t sub_21C83EAF4()
{
  sub_21CB85254();
  sub_21CB82524();
}

uint64_t sub_21C83EB60(uint64_t a1)
{
  v2 = sub_21CB85114();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v8;
  if (*(a1 + 48))
  {
    (*(v3 + 104))(&v13 - v8, *MEMORY[0x277CDF0D8], v2, v9);
    swift_getKeyPath();
    swift_getKeyPath();
    (*(v3 + 16))(v6, v10, v2);

    sub_21CB81DC4();
    return (*(v3 + 8))(v10, v2);
  }

  else
  {
    v12 = *(a1 + 56);
    type metadata accessor for PMAccountsListModel(0);
    sub_21C705EB0(&qword_27CDEC988, type metadata accessor for PMAccountsListModel);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C83ED3C@<X0>(void *a1@<X8>)
{
  result = sub_21CB82E24();
  *a1 = v3;
  return result;
}

uint64_t sub_21C83EDDC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_21C83EF08(uint64_t *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA50, &unk_21CBA8100);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v69 = v64 - v6;
  v70 = type metadata accessor for PMSystemSettingsNavigationDestination();
  v7 = *(v70 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v70);
  v72 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v73 = v64 - v11;
  v12 = type metadata accessor for PMSharingGroup();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v16 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21CB85C44();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v78 = v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v80 = v64 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = v64 - v24;
  v26 = *a1;
  v27 = *(*a1 + 16);
  v28 = MEMORY[0x277D84F90];
  v82 = v18;
  v71 = a2;
  v68 = v26;
  v74 = v7;
  if (v27)
  {
    v83 = MEMORY[0x277D84F90];
    sub_21C7B0BC8(0, v27, 0);
    v28 = v83;
    v29 = v13;
    v30 = v26 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v81 = *(v29 + 72);
    v31 = (v18 + 16);
    do
    {
      sub_21C84467C(v30, v16, type metadata accessor for PMSharingGroup);
      (*v31)(v25, v16, v17);
      sub_21C8446E4(v16, type metadata accessor for PMSharingGroup);
      v83 = v28;
      v33 = *(v28 + 16);
      v32 = *(v28 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_21C7B0BC8(v32 > 1, v33 + 1, 1);
        v28 = v83;
      }

      *(v28 + 16) = v33 + 1;
      v18 = v82;
      (*(v82 + 32))(v28 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v82 + 72) * v33, v25, v17);
      v30 += v81;
      --v27;
    }

    while (v27);
    a2 = v71;
    v7 = v74;
  }

  v81 = sub_21CB00D70(v28);

  v34 = a2[4];
  v35 = v72;
  v36 = v80;
  if (!v34)
  {
LABEL_32:
    v63 = a2[5];
    type metadata accessor for PMPasswordManagerState();
    sub_21C705EB0(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
    result = sub_21CB82B64();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v37 = v34;
  sub_21CB81DB4();

  v67 = v37;

  v38 = v83;
  v75 = *(v83 + 16);
  if (!v75)
  {

    v39 = 0;
    v41 = v38;
    if (*(v38 + 16))
    {
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v39 = 0;
  v76 = v83 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v65 = v83;
  v66 = (v18 + 32);
  v79 = v81 + 56;
  v77 = v18 + 16;
  v40 = (v18 + 8);
  v64[1] = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  a2 = v73;
  v41 = v83;
  while (1)
  {
    if (v39 >= *(v41 + 16))
    {
      __break(1u);
      goto LABEL_31;
    }

    sub_21C84467C(v76 + *(v7 + 72) * v39, a2, type metadata accessor for PMSystemSettingsNavigationDestination);
    sub_21C84467C(a2, v35, type metadata accessor for PMSystemSettingsNavigationDestination);
    if (!swift_getEnumCaseMultiPayload())
    {
      break;
    }

    sub_21C8446E4(a2, type metadata accessor for PMSystemSettingsNavigationDestination);
    v42 = v35;
LABEL_20:
    sub_21C8446E4(v42, type metadata accessor for PMSystemSettingsNavigationDestination);
    if (++v39 == v75)
    {

      v39 = v75;
      goto LABEL_23;
    }
  }

  (*v66)(v36, v35, v17);
  if (*(v81 + 16))
  {
    v43 = *(v81 + 40);
    sub_21C705EB0(&qword_27CDF8950, MEMORY[0x277D49978]);
    v44 = sub_21CB85484();
    v45 = v81;
    v46 = -1 << *(v81 + 32);
    v47 = v44 & ~v46;
    if ((*(v79 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
    {
      v48 = ~v46;
      v49 = *(v82 + 72);
      v50 = *(v82 + 16);
      while (1)
      {
        v51 = v78;
        v50(v78, *(v45 + 48) + v49 * v47, v17);
        sub_21C705EB0(&qword_27CDEAC48, MEMORY[0x277D49978]);
        v52 = sub_21CB85574();
        v53 = *v40;
        (*v40)(v51, v17);
        if (v52)
        {
          break;
        }

        v47 = (v47 + 1) & v48;
        v45 = v81;
        if (((*(v79 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
        {
          a2 = v73;
          v7 = v74;
          v41 = v65;
          v53(v80, v17);
          goto LABEL_22;
        }
      }

      v36 = v80;
      v53(v80, v17);
      a2 = v73;
      v7 = v74;
      v42 = v73;
      v35 = v72;
      v41 = v65;
      goto LABEL_20;
    }
  }

  (*v40)(v36, v17);
LABEL_22:
  sub_21C8446E4(a2, type metadata accessor for PMSystemSettingsNavigationDestination);

LABEL_23:
  a2 = v71;
  v54 = *(v41 + 16);
  if (v54 < v39)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v54 == v39)
  {
    goto LABEL_26;
  }

LABEL_25:
  sub_21CAC8DB4(v41, v41 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), 0, (2 * v39) | 1);
  v56 = v55;

  v41 = v56;
LABEL_26:
  swift_getKeyPath();
  swift_getKeyPath();
  v83 = v41;
  sub_21CB81DC4();
  v57 = (a2[3] + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_provider);
  v58 = v57[3];
  v59 = v57[4];
  __swift_project_boxed_opaque_existential_0(v57, v58);
  (*(v59 + 40))(v58, v59);
  sub_21C83F7E0();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v61 = v69;
  (*(*(v60 - 8) + 56))(v69, 1, 1, v60);
  sub_21C83FF40(v61, v68);
  return sub_21C6EA794(v61, &qword_27CDEDA50, &unk_21CBA8100);
}

uint64_t sub_21C83F7E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v11 = sub_21CB85C44();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v0 + 72);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v46 == 1)
  {
    v44 = v4;
    v18 = *(v0 + 32);
    if (v18)
    {
      v19 = v11;
      swift_getKeyPath();
      swift_getKeyPath();
      v20 = v18;
      sub_21CB81DB4();

      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {
        return sub_21C6EA794(v10, &unk_27CDF20B0, &unk_21CBA0090);
      }

      else
      {
        v21 = v15;
        (*(v12 + 32))(v15, v10, v19);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_21CB81DB4();

        v22 = sub_21C7A120C(v15, v46);

        if (v22)
        {
          v23 = *(v12 + 56);
          v42 = v19;
          v43 = v23;
          (v23)(v7, 1, 1, v19);
          swift_getKeyPath();
          swift_getKeyPath();
          v24 = v12;
          v25 = v44;
          v41 = v21;
          sub_21C6EDBAC(v7, v44, &unk_27CDF20B0, &unk_21CBA0090);
          v26 = v20;
          sub_21CB81DC4();
          sub_21C6EA794(v7, &unk_27CDF20B0, &unk_21CBA0090);
          swift_getKeyPath();
          swift_getKeyPath();
          v46 = MEMORY[0x277D84F90];
          v27 = v26;
          sub_21CB81DC4();
          v29 = v41;
          v28 = v42;
          (*(v24 + 16))(v7, v41, v42);
          (v43)(v7, 0, 1, v28);
          LODWORD(v26) = *(type metadata accessor for PMAccountsView() + 40);
          sub_21C6EDBAC(v7, v25, &unk_27CDF20B0, &unk_21CBA0090);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED978, &qword_21CBA7DE8);
          sub_21CB84D64();
          sub_21C6EA794(v7, &unk_27CDF20B0, &unk_21CBA0090);
          return (*(v24 + 8))(v29, v28);
        }

        else
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_21CB81DB4();

          LODWORD(v41) = sub_21C7A120C(v15, v46);

          (*(v12 + 56))(v7, 1, 1, v19);
          swift_getKeyPath();
          swift_getKeyPath();
          v43 = v12;
          sub_21C6EDBAC(v7, v44, &unk_27CDF20B0, &unk_21CBA0090);
          v30 = v20;
          sub_21CB81DC4();
          sub_21C6EA794(v7, &unk_27CDF20B0, &unk_21CBA0090);
          if (v41)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA60, &qword_21CBB6DD0);
            v31 = *(type metadata accessor for PMSystemSettingsNavigationDestination() - 8);
            v32 = *(v31 + 72);
            v33 = v19;
            v34 = (*(v31 + 80) + 32) & ~*(v31 + 80);
            v35 = swift_allocObject();
            *(v35 + 16) = xmmword_21CBA0690;
            v36 = v43;
            v43[2](v35 + v34, v21, v33);
            swift_storeEnumTagMultiPayload();
            swift_getKeyPath();
            swift_getKeyPath();
            v46 = v35;
            v37 = v30;
            sub_21CB81DC4();
            return (v36[1])(v21, v33);
          }

          else
          {
            v38 = *(v0 + 88);
            LOBYTE(v46) = *(v0 + 80);
            v47 = v38;
            v45 = 1;

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
            sub_21CB84D64();
            (v43[1])(v15, v19);
          }
        }
      }
    }

    else
    {
      v39 = *(v0 + 40);
      type metadata accessor for PMPasswordManagerState();
      sub_21C705EB0(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
      result = sub_21CB82B64();
      __break(1u);
    }
  }

  return result;
}
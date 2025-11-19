uint64_t sub_1BD921604(uint64_t a1, uint64_t a2)
{
  sub_1BE052524();
  sub_1BE04AA64();
  sub_1BD928A24(&qword_1EBD44E50, MEMORY[0x1E6968FB0]);
  sub_1BE052294();
  if (*(v2 + *(a2 + 24) + 8))
  {
    sub_1BE053D24();
    sub_1BE052524();
  }

  else
  {
    sub_1BE053D24();
  }

  return sub_1BE052524();
}

uint64_t sub_1BD9216FC(uint64_t a1, uint64_t a2)
{
  sub_1BE053D04();
  sub_1BE052524();
  sub_1BE04AA64();
  sub_1BD928A24(&qword_1EBD44E50, MEMORY[0x1E6968FB0]);
  sub_1BE052294();
  if (*(v2 + *(a2 + 24) + 8))
  {
    sub_1BE053D24();
    sub_1BE052524();
  }

  else
  {
    sub_1BE053D24();
  }

  sub_1BE052524();
  return sub_1BE053D64();
}

void *sub_1BD921800()
{
  swift_getKeyPath();
  sub_1BD928A24(&qword_1EBD42BB0, type metadata accessor for MerchantTokenListViewModel);
  sub_1BE04B594();

  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

id sub_1BD9218A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD928A24(&qword_1EBD42BB0, type metadata accessor for MerchantTokenListViewModel);
  sub_1BE04B594();

  v4 = *(v3 + 48);
  *a2 = v4;

  return v4;
}

void sub_1BD921960(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 48);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v10);
    sub_1BD928A24(&qword_1EBD42BB0, type metadata accessor for MerchantTokenListViewModel);
    sub_1BE04B584();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for CashDetailsViewControllerWrapper.DelegateProxy();
  v5 = v4;
  v6 = a1;
  v7 = sub_1BE053074();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 48);
LABEL_8:
  *(v2 + 48) = a1;
}

uint64_t sub_1BD921AE0()
{
  swift_getKeyPath();
  sub_1BD928A24(&qword_1EBD42BB0, type metadata accessor for MerchantTokenListViewModel);
  sub_1BE04B594();

  v1 = *(v0 + 64);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD921B90(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 64) == a1 && v5 == a2;
      if (v6 || (sub_1BE053B84() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v9);
    sub_1BD928A24(&qword_1EBD42BB0, type metadata accessor for MerchantTokenListViewModel);
    sub_1BE04B584();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t sub_1BD921D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  sub_1BE048C84();
}

void *sub_1BD921D3C(void *a1, void *a2)
{
  v2[2] = [objc_allocWithZone(MEMORY[0x1E698F6A0]) init];
  v2[6] = 0;
  v5 = [objc_opt_self() sharedService];
  v2[8] = 0;
  v2[9] = 0;
  v2[7] = v5;
  sub_1BE04B5C4();
  v2[4] = a1;
  v2[5] = a2;
  v6 = v2[2];
  v15 = sub_1BD0E5E8C(0, &qword_1EBD59428);
  v16 = &off_1F3BC8FD8;
  *&v14 = v6;
  type metadata accessor for MerchantTokenIconProvider();
  v7 = swift_allocObject();
  v8 = a1;
  v9 = a2;
  v10 = v6;
  swift_defaultActor_initialize();
  v11 = MEMORY[0x1E69E7CC0];
  *(v7 + 152) = sub_1BD1AC6F4(MEMORY[0x1E69E7CC0]);
  v12 = sub_1BD1AC8E0(v11);

  *(v7 + 160) = v12;
  sub_1BD043990(&v14, v7 + 112);
  v2[3] = v7;
  return v2;
}

void *sub_1BD921E80(unint64_t a1)
{
  v3 = type metadata accessor for MerchantTokenListViewModel.SectionCard(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v124 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v137 = &v118 - v9;
  v146 = sub_1BE04AA64();
  v10 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146, v11);
  v141 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04AF64();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v143 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for UnifiedMerchantTokenData(0);
  v145 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140, v16);
  v150 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v136 = &v118 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = (&v118 - v23);
  v25 = type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection(0);
  v121 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = (&v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v29, v30);
  v129 = &v118 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v120 = &v118 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v119 = &v118 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v118 - v40;
  v44 = MEMORY[0x1EEE9AC00](v42, v43);
  v46 = &v118 - v45;
  v47 = *(v4 + 56);
  v126 = v3;
  v125 = v4 + 56;
  v123 = v47;
  (v47)(&v118 - v45, 1, 1, v3, v44);
  v130 = v25;
  v48 = *(v25 + 20);
  v49 = a1;
  v50 = MEMORY[0x1E69E7CC0];
  v138 = v48;
  v139 = v46;
  *&v46[v48] = MEMORY[0x1E69E7CC0];
  v142 = sub_1BD1AE54C(v50);
  if (a1 >> 62)
  {
    v51 = sub_1BE053704();
  }

  else
  {
    v51 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v52 = MEMORY[0x1E69E7CC0];
  v118 = v28;
  if (v51)
  {
    if (v51 >= 1)
    {
      v135 = v41;
      v53 = 0;
      v147 = a1 & 0xC000000000000001;
      v151 = *(v1 + 32);
      v134 = (v10 + 48);
      v128 = (v10 + 32);
      v122 = (v10 + 16);
      v127 = (v10 + 8);
      v144 = a1;
      v148 = v51;
      v133 = v24;
      while (1)
      {
        if (v147)
        {
          v54 = MEMORY[0x1BFB40900](v53, v49);
        }

        else
        {
          v54 = *(v49 + 8 * v53 + 32);
        }

        v55 = v54;
        if (v151)
        {
          v56 = v151;
          v57 = [v55 primaryAccountIdentifier];
          v58 = sub_1BE052434();
          v60 = v59;

          v61 = [v56 primaryAccountIdentifier];
          v62 = sub_1BE052434();
          v64 = v63;

          if (v58 == v62 && v60 == v64)
          {

            v49 = v144;
          }

          else
          {
            v66 = sub_1BE053B84();

            v49 = v144;
            if ((v66 & 1) == 0)
            {

              goto LABEL_7;
            }
          }
        }

        v67 = v55;
        v68 = v143;
        sub_1BE04AEF4();
        sub_1BD3D4BAC(v67, v68, v24);
        v69 = [v67 primaryAccountDisplayName];
        if (v69)
        {
          v149 = v52;
          v70 = v69;
          v71 = sub_1BE052434();
          v73 = v72;

          v74 = v137;
          sub_1BD0DE19C(v24 + *(v140 + 72), v137, &unk_1EBD3CF70);
          v75 = v146;
          if ((*v134)(v74, 1, v146) != 1)
          {
            (*v128)(v141, v74, v75);
            v78 = [v67 primaryAccountIdentifier];
            v79 = sub_1BE052434();
            v81 = v80;

            v82 = v142;
            v83 = v142[2];
            v132 = v81;
            if (v83 && (v84 = sub_1BD148F70(v79, v81), (v85 & 1) != 0))
            {
              v86 = v84;

              v87 = v82[7] + *(v121 + 72) * v86;
              v88 = v120;
              sub_1BD930FE0(v87, v120, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
              v89 = v88;
              v90 = v119;
              sub_1BD93641C(v89, v119, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
              v91 = v135;
              sub_1BD93641C(v90, v135, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
              v92 = v130;
              v24 = v133;
              v93 = v79;
            }

            else
            {
              v94 = v79;
              v131 = v79;
              v95 = v126;
              v96 = v124;
              (*v122)(&v124[*(v126 + 20)], v141, v146);
              v24 = v133;
              v97 = (v133 + *(v140 + 80));
              v98 = *v97;
              v99 = v97[1];
              *v96 = v94;
              v96[1] = v81;
              v100 = (v96 + *(v95 + 24));
              *v100 = v98;
              v100[1] = v99;
              v101 = (v96 + *(v95 + 28));
              *v101 = v71;
              v101[1] = v73;
              v91 = v135;
              sub_1BD930FE0(v96, v135, type metadata accessor for MerchantTokenListViewModel.SectionCard);
              v123(v91, 0, 1, v95);
              sub_1BE048C84();
              sub_1BE048C84();
              v102 = v96;
              v82 = v142;
              sub_1BD935C74(v102, type metadata accessor for MerchantTokenListViewModel.SectionCard);
              v92 = v130;
              *(v91 + *(v130 + 20)) = MEMORY[0x1E69E7CC0];
              v93 = v131;
            }

            sub_1BD930FE0(v24, v136, type metadata accessor for UnifiedMerchantTokenData);
            v103 = *(v92 + 20);
            v104 = *(v91 + v103);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v52 = v149;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v104 = sub_1BD1D9A28(0, v104[2] + 1, 1, v104);
            }

            v107 = v104[2];
            v106 = v104[3];
            if (v107 >= v106 >> 1)
            {
              v104 = sub_1BD1D9A28(v106 > 1, v107 + 1, 1, v104);
            }

            v104[2] = v107 + 1;
            sub_1BD93641C(v136, v104 + ((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v107, type metadata accessor for UnifiedMerchantTokenData);
            v108 = v135;
            *&v135[v103] = v104;
            v109 = v129;
            sub_1BD930FE0(v108, v129, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
            v110 = swift_isUniquelyReferenced_nonNull_native();
            v152[0] = v82;
            sub_1BD1DC080(v109, v93, v132, v110);

            (*v127)(v141, v146);
            sub_1BD935C74(v24, type metadata accessor for UnifiedMerchantTokenData);
            v142 = v152[0];
            sub_1BD935C74(v108, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
            v49 = v144;
            goto LABEL_7;
          }

          sub_1BD0DE53C(v74, &unk_1EBD3CF70);
          v24 = v133;
          v52 = v149;
        }

        sub_1BD930FE0(v24, v150, type metadata accessor for UnifiedMerchantTokenData);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_1BD1D9A28(0, v52[2] + 1, 1, v52);
        }

        v77 = v52[2];
        v76 = v52[3];
        if (v77 >= v76 >> 1)
        {
          v52 = sub_1BD1D9A28(v76 > 1, v77 + 1, 1, v52);
        }

        sub_1BD935C74(v24, type metadata accessor for UnifiedMerchantTokenData);
        v52[2] = v77 + 1;
        sub_1BD93641C(v150, v52 + ((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v77, type metadata accessor for UnifiedMerchantTokenData);
        *&v139[v138] = v52;
LABEL_7:
        if (v148 == ++v53)
        {
          goto LABEL_36;
        }
      }
    }

    __break(1u);
LABEL_46:
    v52 = sub_1BD500080(v52);
    goto LABEL_38;
  }

LABEL_36:
  v111 = sub_1BE048C84();
  v152[0] = sub_1BD6CAF44(v111, sub_1BD922BB8, 0);
  sub_1BD922D04(v152);

  v28 = v152[0];
  if (!v52[2])
  {
    goto LABEL_43;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_38:
  v112 = v52[2];
  v152[0] = (v52 + ((*(v145 + 80) + 32) & ~*(v145 + 80)));
  v152[1] = v112;
  sub_1BD931074(v152, type metadata accessor for UnifiedMerchantTokenData, sub_1BD931B10, sub_1BD9311C4);
  v113 = v139;
  *&v139[v138] = v52;
  v114 = v118;
  sub_1BD930FE0(v113, v118, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v28 = sub_1BD1D9A00(0, v28[2] + 1, 1, v28);
  }

  v116 = v28[2];
  v115 = v28[3];
  if (v116 >= v115 >> 1)
  {
    v28 = sub_1BD1D9A00(v115 > 1, v116 + 1, 1, v28);
  }

  v28[2] = v116 + 1;
  sub_1BD93641C(v114, v28 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v116, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
LABEL_43:
  sub_1BD935C74(v139, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);

  return v28;
}

uint64_t sub_1BD922BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BD930FE0(a1, a2, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
  v3 = type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection(0);
  return sub_1BD922C1C((a2 + *(v3 + 20)));
}

uint64_t sub_1BD922C1C(void **a1)
{
  v2 = *(type metadata accessor for UnifiedMerchantTokenData(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1BD500080(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1BD931074(v6, type metadata accessor for UnifiedMerchantTokenData, sub_1BD93256C, sub_1BD931450);
  *a1 = v3;
  return result;
}

uint64_t sub_1BD922D04(void **a1)
{
  v2 = *(type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1BD5ED7F4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1BD931074(v6, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection, sub_1BD932F10, sub_1BD9316CC);
  *a1 = v3;
  return result;
}

uint64_t sub_1BD922DE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59178);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v22 - v10;
  sub_1BD0DE19C(a1, v22 - v10, &qword_1EBD59178);
  v12 = type metadata accessor for MerchantTokenListViewModel.SectionCard(0);
  v13 = *(*(v12 - 8) + 48);
  result = v13(v11, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v15 = &v11[*(v12 + 28)];
    v17 = *v15;
    v16 = *(v15 + 1);
    sub_1BE048C84();
    sub_1BD935C74(v11, type metadata accessor for MerchantTokenListViewModel.SectionCard);
    v22[2] = v17;
    v22[3] = v16;
    sub_1BD0DE19C(a2, v7, &qword_1EBD59178);
    result = v13(v7, 1, v12);
    if (result != 1)
    {
      v18 = &v7[*(v12 + 28)];
      v20 = *v18;
      v19 = *(v18 + 1);
      sub_1BE048C84();
      sub_1BD935C74(v7, type metadata accessor for MerchantTokenListViewModel.SectionCard);
      v22[0] = v20;
      v22[1] = v19;
      sub_1BD0DDEBC();
      v21 = sub_1BE0535B4();

      return v21 == -1;
    }
  }

  __break(1u);
  return result;
}

id *sub_1BD922FFC()
{

  v1 = OBJC_IVAR____TtC9PassKitUI26MerchantTokenListViewModel___observationRegistrar;
  v2 = sub_1BE04B5D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1BD923094()
{
  sub_1BD922FFC();

  return swift_deallocClassInstance();
}

void sub_1BD9230EC(uint64_t a1@<X8>)
{
  v104 = a1;
  v1 = sub_1BE051584();
  v94 = *(v1 - 8);
  *&v95 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v93 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59378);
  MEMORY[0x1EEE9AC00](v101, v4);
  v103 = (&v87 - v5);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59380);
  MEMORY[0x1EEE9AC00](v97, v6);
  v98 = (&v87 - v7);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59388);
  MEMORY[0x1EEE9AC00](v102, v8);
  v99 = &v87 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45720);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v91 = &v87 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v92 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v87 - v18;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59390);
  MEMORY[0x1EEE9AC00](v96, v20);
  v22 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v87 - v25;
  v27 = sub_1BE04AA64();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v87 - v34;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v87 - v38;
  v40 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v87 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD930FE0(v100, v43, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v45 = *v43;
      v46 = *(v43 + 1);
      v47 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      sub_1BD041A38(v45, v46);
      v48 = sub_1BE04AAB4();
      v49 = [v47 initWithData_];

      v100 = v45;
      v92 = v46;
      sub_1BD1245AC(v45, v46);
      if (v49)
      {
        v50 = v49;
        sub_1BE051544();
        v52 = v93;
        v51 = v94;
        v53 = v95;
        (*(v94 + 13))(v93, *MEMORY[0x1E6981630], v95);
        v54 = sub_1BE0515E4();

        (*(v51 + 8))(v52, v53);
        v105 = v54;
        v106 = 0;
        v107 = 1;
        v108 = 0;
        sub_1BE048964();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280);
        sub_1BD223C50();
        sub_1BE04F9A4();
      }

      else
      {
        v105 = 0;
        v106 = 0;
        v107 = 0;
        v108 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280);
        sub_1BD223C50();
        sub_1BE04F9A4();
      }

      v82 = v110;
      v83 = v111;
      v95 = v109;
      v84 = v98;
      *v98 = v109;
      *(v84 + 8) = v82;
      *(v84 + 18) = v83;
      swift_storeEnumTagMultiPayload();
      v85 = v95;
      sub_1BD936ACC(v95, *(&v95 + 1), v82, v83);
      sub_1BD936ACC(v85, *(&v85 + 1), v82, v83);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD593B0);
      sub_1BD0DE4F4(&qword_1EBD593A0, &qword_1EBD59390);
      sub_1BD936A40();
      v86 = v99;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v86, v103, &qword_1EBD59388);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280);
      sub_1BD936988();
      sub_1BD223C50();
      sub_1BE04F9A4();
      sub_1BD936AD8(v85, *(&v85 + 1), v82, v83);
      sub_1BD936AD8(v85, *(&v85 + 1), v82, v83);
      sub_1BD1245AC(v100, v92);
      sub_1BD0DE53C(v86, &qword_1EBD59388);
    }

    else
    {
      v68 = *v43;
      sub_1BE051544();
      v70 = v93;
      v69 = v94;
      v71 = v95;
      (*(v94 + 13))(v93, *MEMORY[0x1E6981630], v95);
      v72 = sub_1BE0515E4();

      (*(v69 + 8))(v70, v71);
      v73 = v103;
      *v103 = v72;
      v73[1] = 0;
      *(v73 + 8) = 1;
      swift_storeEnumTagMultiPayload();
      sub_1BE048964();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280);
      sub_1BD936988();
      sub_1BD223C50();
      sub_1BE04F9A4();
    }
  }

  else
  {
    v93 = v22;
    v88 = v35;
    v89 = v31;
    v55 = v91;
    v100 = v26;
    v56 = *(v28 + 32);
    v56(v39, v43, v27);
    v57 = *(v28 + 16);
    *&v95 = v39;
    v58 = v39;
    v59 = v57;
    v57(v19, v58, v27);
    (*(v28 + 56))(v19, 0, 1, v27);
    v60 = [objc_opt_self() sharedURLCache];
    v94 = v19;
    v61 = v19;
    v62 = v92;
    sub_1BD0DE19C(v61, v92, &unk_1EBD3CF70);
    v63 = (*(v28 + 48))(v62, 1, v27);
    v64 = v28;
    v65 = v27;
    v90 = v64;
    if (v63 == 1)
    {
      sub_1BD0DE53C(v62, &unk_1EBD3CF70);
      v66 = 1;
      v67 = v55;
    }

    else
    {
      v74 = v88;
      v56(v88, v62, v65);
      v59(v89, v74, v65);
      v67 = v55;
      sub_1BE04A114();
      (*(v64 + 8))(v74, v65);
      v66 = 0;
    }

    v75 = v93;
    v76 = v65;
    v77 = sub_1BE04A134();
    (*(*(v77 - 8) + 56))(v67, v66, 1, v77);
    v78 = v96;
    sub_1BD0DE204(v67, v75 + *(v96 + 40), &qword_1EBD45720);
    *(v75 + 16) = sub_1BD923D54;
    *(v75 + 24) = 0;
    *(v75 + v78[12]) = 0;
    v79 = v75 + v78[13];
    *v79 = 0;
    *(v79 + 8) = 0;
    *(v79 + 16) = 0;
    *(v79 + 24) = 1;
    *(v75 + v78[11]) = v60;
    v105 = 0x8000000000000000;
    sub_1BE051694();
    sub_1BD0DE53C(v94, &unk_1EBD3CF70);
    *v75 = v109;
    v80 = v100;
    sub_1BD0DE204(v75, v100, &qword_1EBD59390);
    sub_1BD0DE19C(v80, v98, &qword_1EBD59390);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD593B0);
    sub_1BD0DE4F4(&qword_1EBD593A0, &qword_1EBD59390);
    sub_1BD936A40();
    v81 = v99;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v81, v103, &qword_1EBD59388);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280);
    sub_1BD936988();
    sub_1BD223C50();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v81, &qword_1EBD59388);
    sub_1BD0DE53C(v80, &qword_1EBD59390);
    (*(v90 + 8))(v95, v76);
  }
}

uint64_t sub_1BD923D54@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD593B8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v30 - v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD593C0);
  MEMORY[0x1EEE9AC00](v33, v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330);
  v31 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v30 - v12;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD593C8);
  MEMORY[0x1EEE9AC00](v32, v14);
  v16 = &v30 - v15;
  v17 = sub_1BE051584();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    if (a1 >> 62 == 1)
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280);
      sub_1BD223C50();
      sub_1BE04F9A4();
      v23 = v40;
      v24 = v41;
      *v16 = v39;
      *(v16 + 8) = v23;
      v16[18] = v24;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD593B0);
      sub_1BD936A40();
      sub_1BD936AE4();
      return sub_1BE04F9A4();
    }

    else
    {
      sub_1BE04E4F4();
      v29 = v31;
      (*(v31 + 16))(v6, v13, v10);
      swift_storeEnumTagMultiPayload();
      sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
      sub_1BE04F9A4();
      sub_1BD0DE19C(v9, v16, &qword_1EBD593C0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD593B0);
      sub_1BD936A40();
      sub_1BD936AE4();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v9, &qword_1EBD593C0);
      return (*(v29 + 8))(v13, v10);
    }
  }

  else
  {
    (*(v18 + 104))(v22, *MEMORY[0x1E6981630], v17, v20);
    v26 = sub_1BE0515E4();
    (*(v18 + 8))(v22, v17);
    v35 = v26;
    v36 = 0;
    v37 = 1;
    v38 = 0;
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280);
    sub_1BD223C50();
    sub_1BE04F9A4();
    v27 = v40;
    v28 = v41;
    *v16 = v39;
    *(v16 + 8) = v27;
    v16[18] = v28;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD593B0);
    sub_1BD936A40();
    sub_1BD936AE4();
    sub_1BE04F9A4();
  }
}

uint64_t sub_1BD9242AC()
{
  v1 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04B0F4();
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v49 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v48 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v48 - v22;
  v24 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType(0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v48 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v0 + *(type metadata accessor for UnifiedMerchantTokenData(0) + 88));
  if (*(v32 + 16) != 1)
  {
    return 0;
  }

  v33 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment(0);
  sub_1BD930FE0(v32 + *(v33 + 28) + ((*(*(v33 - 8) + 80) + 32) & ~*(*(v33 - 8) + 80)), v31, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      return 0;
    }

    sub_1BD93641C(v31, v27, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails);
    sub_1BD0DE19C(v27, v23, &qword_1EBD3BCA0);
    v39 = sub_1BE0493F4();
    v40 = *(v39 - 8);
    if ((*(v40 + 48))(v23, 1, v39) == 1)
    {
      sub_1BD935C74(v27, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails);
      sub_1BD0DE53C(v23, &qword_1EBD3BCA0);
      return 0;
    }

    v43 = v49;
    sub_1BE04B054();
    v44 = sub_1BE0493E4();
    (*(v50 + 8))(v43, v51);
    sub_1BD935C74(v27, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails);
    (*(v40 + 8))(v23, v39);
    return v44;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1BD93641C(v31, v8, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails);
    sub_1BD0DE19C(v8, v19, &qword_1EBD3BCA0);
    v41 = sub_1BE0493F4();
    v42 = *(v41 - 8);
    if ((*(v42 + 48))(v19, 1, v41) == 1)
    {
      sub_1BD935C74(v8, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails);
      sub_1BD0DE53C(v19, &qword_1EBD3BCA0);
      return 0;
    }

    v45 = v49;
    sub_1BE04B054();
    v44 = sub_1BE0493E4();
    (*(v50 + 8))(v45, v51);
    sub_1BD935C74(v8, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails);
    (*(v42 + 8))(v19, v41);
    return v44;
  }

  sub_1BD93641C(v31, v4, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails);
  v35 = *&v4[*(v1 + 20)];
  if (!*(v35 + 16))
  {
    sub_1BD935C74(v4, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails);
    return 0;
  }

  v36 = *(type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment(0) - 8);
  sub_1BD0DE19C(v35 + ((*(v36 + 80) + 32) & ~*(v36 + 80)), v15, &qword_1EBD3BCA0);
  v37 = sub_1BE0493F4();
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v15, 1, v37) != 1)
  {
    v47 = v49;
    sub_1BE04B054();
    v44 = sub_1BE0493E4();
    (*(v50 + 8))(v47, v51);
    sub_1BD935C74(v4, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails);
    (*(v38 + 8))(v15, v37);
    return v44;
  }

  sub_1BD935C74(v4, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails);
  sub_1BD0DE53C(v15, &qword_1EBD3BCA0);
  return 0;
}

void sub_1BD9249D8(uint64_t a1@<X8>)
{
  v3 = sub_1BE04AA64();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UnifiedMerchantTokenData(0);
  sub_1BD0DE19C(v1 + *(v16 + 40), v10, &qword_1EBD44D48);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    sub_1BD93641C(v10, v15, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    sub_1BD93641C(v15, a1, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    (*(v12 + 56))(a1, 0, 1, v11);
    return;
  }

  sub_1BD0DE53C(v10, &qword_1EBD44D48);
  v17 = (v1 + *(v16 + 84));
  v18 = *v17;
  v19 = v17[1];
  if (v18 == sub_1BE052434() && v19 == v20)
  {
  }

  else
  {
    v21 = sub_1BE053B84();

    if ((v21 & 1) == 0)
    {
      (*(v12 + 56))(a1, 1, 1, v11);
      return;
    }
  }

  v22 = PKPassKitUIBundle();
  if (v22)
  {
    v23 = v22;
    v24 = sub_1BE052404();
    v25 = sub_1BE052404();
    v26 = [v23 URLForResource:v24 withExtension:v25];

    if (v26)
    {
      sub_1BE04A9F4();

      v27 = sub_1BE04A9C4();
      (*(v31 + 8))(v6, v32);
    }

    else
    {
      v27 = 0;
    }

    v28 = a1;
    v29 = PKUIScreenScale();
    v30 = PKUIImageFromPDF(v27, 80.0, 80.0, v29);

    if (v30)
    {
      *v28 = v30;
      swift_storeEnumTagMultiPayload();
      (*(v12 + 56))(v28, 0, 1, v11);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BD924DB0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD372E8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v33 - v5;
  *v6 = sub_1BE04F504();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59348);
  sub_1BD925264(v1, &v6[*(v7 + 44)]);
  v8 = type metadata accessor for MerchantTokenCell(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v11);
  sub_1BD930FE0(v1, &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MerchantTokenCell);
  sub_1BE0528A4();
  v12 = sub_1BE052894();
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  *(v14 + 16) = v12;
  *(v14 + 24) = v15;
  sub_1BD93641C(&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for MerchantTokenCell);
  v16 = sub_1BE0528D4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16, v19);
  v20 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = &v33 - v20;
  sub_1BE0528B4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v36 = sub_1BE04EAA4();
    v37 = &v33;
    v35 = *(v36 - 8);
    MEMORY[0x1EEE9AC00](v36, v22);
    v34 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_1BE053834();

    v39 = 0xD000000000000032;
    v40 = 0x80000001BE1408D0;
    v38 = 286;
    v24 = sub_1BE053B24();
    MEMORY[0x1BFB3F610](v24);

    v33 = &v33;
    v27 = MEMORY[0x1EEE9AC00](v25, v26);
    (*(v17 + 16))(&v33 - v20, &v33 - v20, v16, v27);
    v28 = v34;
    sub_1BE04EA94();
    (*(v17 + 8))(v21, v16);
    sub_1BD0DE204(v6, a1, &qword_1EBD372E8);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD372F0);
    return (*(v35 + 32))(a1 + *(v29 + 36), v28, v36);
  }

  else
  {
    v31 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD372F8) + 36));
    v32 = sub_1BE04E7B4();
    (*(v17 + 32))(&v31[*(v32 + 20)], &v33 - v20, v16);
    *v31 = &unk_1BE1067B8;
    *(v31 + 1) = v14;
    return sub_1BD0DE204(v6, a1, &qword_1EBD372E8);
  }
}

uint64_t sub_1BD925264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F210);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3, v5);
  v60 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v56 - v9;
  sub_1BD925830(a1, &v56 - v9);
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v11 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F218) + 36)];
  v12 = v68;
  *v11 = v67;
  *(v11 + 1) = v12;
  *(v11 + 2) = v69;
  v13 = *(v4 + 44);
  v57 = v10;
  v14 = &v10[v13];
  v15 = *(sub_1BE04EDE4() + 20);
  v16 = *MEMORY[0x1E697F468];
  v17 = sub_1BE04F684();
  (*(*(v17 - 8) + 104))(&v14[v15], v16, v17);
  __asm { FMOV            V0.2D, #7.0 }

  *v14 = _Q0;
  *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50) + 36)] = 256;
  v59 = sub_1BE04F7C4();
  v66 = 1;
  sub_1BD925F78(a1, &v63);
  v72 = v64[1];
  v73 = v64[2];
  v74 = v64[3];
  v75 = *&v64[4];
  v70 = v63;
  v71 = v64[0];
  v77 = *&v64[4];
  v76[2] = v64[1];
  v76[3] = v64[2];
  v76[4] = v64[3];
  v76[0] = v63;
  v76[1] = v64[0];
  sub_1BD0DE19C(&v70, v61, &qword_1EBD3F470);
  sub_1BD0DE53C(v76, &qword_1EBD3F470);
  *(&v65[2] + 7) = v72;
  *(&v65[3] + 7) = v73;
  *(&v65[4] + 7) = v74;
  *(&v65[5] + 7) = v75;
  *(v65 + 7) = v70;
  *(&v65[1] + 7) = v71;
  v58 = v66;
  type metadata accessor for MerchantTokenCell(0);
  v23 = sub_1BD9242AC();
  if (v24)
  {
    *&v63 = v23;
    *(&v63 + 1) = v24;
    sub_1BD0DDEBC();
    v25 = sub_1BE0506C4();
    v27 = v26;
    v29 = v28;
    sub_1BE0502A4();
    v30 = sub_1BE0505F4();
    v32 = v31;
    v34 = v33;

    sub_1BD0DDF10(v25, v27, v29 & 1);

    LODWORD(v63) = sub_1BE04FC74();
    v35 = sub_1BE050574();
    v37 = v36;
    LOBYTE(v27) = v38;
    v40 = v39;
    sub_1BD0DDF10(v30, v32, v34 & 1);

    v41 = v27 & 1;
    sub_1BD0D7F18(v35, v37, v27 & 1);
    sub_1BE048C84();
    sub_1BD0DDF10(v35, v37, v27 & 1);

    sub_1BD0D7F18(v35, v37, v27 & 1);
    sub_1BE048C84();
    v42 = 1;
  }

  else
  {
    v42 = 0;
    v35 = 0;
    v37 = 0;
    v41 = 0;
    v40 = 0;
  }

  v43 = v57;
  v44 = v60;
  sub_1BD0DE19C(v57, v60, &qword_1EBD4F210);
  v45 = v44;
  v46 = v56;
  sub_1BD0DE19C(v45, v56, &qword_1EBD4F210);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59350);
  v48 = (v46 + *(v47 + 48));
  v61[0] = v59;
  v61[1] = 0;
  LOBYTE(v62[0]) = v58;
  *(v62 + 1) = v65[0];
  *(&v62[1] + 1) = v65[1];
  *(&v62[4] + 1) = v65[4];
  v62[5] = *(&v65[4] + 15);
  *(&v62[3] + 1) = v65[3];
  *(&v62[2] + 1) = v65[2];
  v49 = v62[0];
  *v48 = v59;
  v48[1] = v49;
  v50 = v62[1];
  v51 = v62[2];
  v52 = v62[5];
  v53 = v62[3];
  v48[5] = v62[4];
  v48[6] = v52;
  v48[3] = v51;
  v48[4] = v53;
  v48[2] = v50;
  v54 = (v46 + *(v47 + 64));
  sub_1BD0DE19C(v61, &v63, &qword_1EBD3F450);
  sub_1BD171A2C(0, v42, v35, v37, v41, v40);
  sub_1BD171A78(0, v42, v35, v37, v41, v40);
  *v54 = 0;
  v54[1] = v42;
  v54[2] = v35;
  v54[3] = v37;
  v54[4] = v41;
  v54[5] = v40;
  sub_1BD0DE53C(v43, &qword_1EBD4F210);
  sub_1BD171A78(0, v42, v35, v37, v41, v40);
  *(&v64[2] + 1) = v65[2];
  *(&v64[3] + 1) = v65[3];
  *(&v64[4] + 1) = v65[4];
  v64[5] = *(&v65[4] + 15);
  *(v64 + 1) = v65[0];
  v63 = v59;
  LOBYTE(v64[0]) = v58;
  *(&v64[1] + 1) = v65[1];
  sub_1BD0DE53C(&v63, &qword_1EBD3F450);
  return sub_1BD0DE53C(v60, &qword_1EBD4F210);
}

uint64_t sub_1BD925830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F240);
  MEMORY[0x1EEE9AC00](v57, v3);
  v56 = (&v50 - v4);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F248);
  MEMORY[0x1EEE9AC00](v53, v5);
  v51 = &v50 - v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F250);
  MEMORY[0x1EEE9AC00](v58, v7);
  v54 = &v50 - v8;
  v52 = type metadata accessor for MerchantTokenIconView(0);
  MEMORY[0x1EEE9AC00](v52, v9);
  v55 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MerchantTokenCell.ImageState(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v50 - v17;
  v19 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v50 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v50 - v25;
  v27 = a1 + *(type metadata accessor for MerchantTokenCell(0) + 20);
  sub_1BD9249D8(v18);
  v28 = *(v20 + 48);
  if (v28(v18, 1, v19) == 1)
  {
    v29 = v55;
    sub_1BD0DE53C(v18, &qword_1EBD44D48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59138);
    sub_1BE0516A4();
    if (v28(v14, 3, v19))
    {
      sub_1BD935C74(v14, type metadata accessor for MerchantTokenCell.ImageState);
      v30 = *(v27 + 32);
      v31 = *(v27 + 40);
      sub_1BE048C84();
      v32 = sub_1BE0503E4();
      sub_1BE0524C4();
      sub_1BE048C84();
      v33 = sub_1BD683A34(1);
      v35 = v34;
      v37 = v36;
      v39 = v38;

      v40 = MEMORY[0x1BFB3F570](v33, v35, v37, v39);
      v42 = v41;

      v43 = v56;
      *v56 = v30;
      v43[1] = v31;
      v43[2] = v32;
      v43[3] = 0;
      v43[4] = v40;
      v43[5] = v42;
      swift_storeEnumTagMultiPayload();
      sub_1BD683C8C();
      sub_1BD683D40();
      return sub_1BE04F9A4();
    }

    v48 = v50;
    sub_1BD93641C(v14, v50, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    sub_1BD930FE0(v48, v29, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    sub_1BD930FE0(v29, v51, type metadata accessor for MerchantTokenIconView);
    swift_storeEnumTagMultiPayload();
    sub_1BD928A24(&qword_1EBD4F1F0, type metadata accessor for MerchantTokenIconView);
    v49 = v54;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v49, v56, &qword_1EBD4F250);
    swift_storeEnumTagMultiPayload();
    sub_1BD683C8C();
    sub_1BD683D40();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v49, &qword_1EBD4F250);
    sub_1BD935C74(v29, type metadata accessor for MerchantTokenIconView);
    v47 = v48;
  }

  else
  {
    sub_1BD93641C(v18, v26, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    v45 = v55;
    sub_1BD930FE0(v26, v55, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    sub_1BD930FE0(v45, v51, type metadata accessor for MerchantTokenIconView);
    swift_storeEnumTagMultiPayload();
    sub_1BD928A24(&qword_1EBD4F1F0, type metadata accessor for MerchantTokenIconView);
    v46 = v54;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v46, v56, &qword_1EBD4F250);
    swift_storeEnumTagMultiPayload();
    sub_1BD683C8C();
    sub_1BD683D40();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v46, &qword_1EBD4F250);
    sub_1BD935C74(v45, type metadata accessor for MerchantTokenIconView);
    v47 = v26;
  }

  return sub_1BD935C74(v47, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
}

uint64_t sub_1BD925F78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v65 = a2;
  v3 = sub_1BE050404();
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v61 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + *(type metadata accessor for MerchantTokenCell(0) + 20);
  v7 = *(v6 + 40);
  v67 = *(v6 + 32);
  v68 = v7;
  v8 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v60 = v8;
  v9 = sub_1BE0506C4();
  v11 = v10;
  v13 = v12;
  sub_1BE050324();
  sub_1BE0503A4();
  sub_1BE0503F4();

  v14 = sub_1BE0505F4();
  v16 = v15;
  v18 = v17;

  sub_1BD0DDF10(v9, v11, v13 & 1);

  LODWORD(v67) = sub_1BE04FC74();
  v19 = sub_1BE050574();
  v21 = v20;
  v64 = v22;
  v24 = v23;
  sub_1BD0DDF10(v14, v16, v18 & 1);

  KeyPath = swift_getKeyPath();
  v26 = sub_1BD3D3D1C();
  if (v27)
  {
    v67 = v26;
    v68 = v27;
    v28 = sub_1BE0506C4();
    v59 = v29;
    v60 = v28;
    v31 = v30;
    v58[1] = v32;
    sub_1BE050454();
    v34 = v61;
    v33 = v62;
    v35 = v63;
    (*(v62 + 104))(v61, *MEMORY[0x1E6980EA8], v63);
    sub_1BE050434();

    (*(v33 + 8))(v34, v35);
    v37 = v59;
    v36 = v60;
    v38 = sub_1BE0505F4();
    v62 = v21;
    v63 = v24;
    v40 = v39;
    v61 = KeyPath;
    v41 = v19;
    v43 = v42;

    sub_1BD0DDF10(v36, v37, v31 & 1);

    LODWORD(v67) = sub_1BE04FC94();
    v44 = sub_1BE050574();
    v46 = v45;
    LOBYTE(v33) = v47;
    v49 = v48;
    v50 = v43 & 1;
    v19 = v41;
    KeyPath = v61;
    v51 = v40;
    v24 = v63;
    sub_1BD0DDF10(v38, v51, v50);
    v21 = v62;

    v52 = v33 & 1;
    sub_1BD0D7F18(v44, v46, v33 & 1);
    sub_1BE048C84();
  }

  else
  {
    v44 = 0;
    v46 = 0;
    v52 = 0;
    v49 = 0;
  }

  v53 = v64 & 1;
  LOBYTE(v67) = v64 & 1;
  v66 = 0;
  sub_1BD0D7F18(v19, v21, v64 & 1);
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BD1969AC(v44, v46, v52, v49);
  sub_1BD1969F0(v44, v46, v52, v49);
  v54 = v67;
  v55 = v66;
  v56 = v65;
  *v65 = v19;
  v56[1] = v21;
  *(v56 + 16) = v54;
  v56[3] = v24;
  v56[4] = KeyPath;
  v56[5] = 2;
  *(v56 + 48) = v55;
  v56[7] = v44;
  v56[8] = v46;
  v56[9] = v52;
  v56[10] = v49;
  sub_1BD1969F0(v44, v46, v52, v49);
  sub_1BD0DDF10(v19, v21, v53);
}

uint64_t sub_1BD92639C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48);
  v3[3] = swift_task_alloc();
  sub_1BE0528A4();
  v3[4] = sub_1BE052894();
  v5 = sub_1BE052844();
  v3[5] = v5;
  v3[6] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD92646C, v5, v4);
}

uint64_t sub_1BD92646C()
{
  v1 = v0[3];
  v2 = type metadata accessor for MerchantTokenCell(0);
  sub_1BD9249D8(v1);
  v3 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  if ((*(*(v3 - 8) + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[2];
    sub_1BD0DE53C(v0[3], &qword_1EBD44D48);
    v5 = *(v4 + *(v2 + 24));
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_1BD9265F0;
    v7 = v0[2];

    return sub_1BD926778(v7, v5);
  }

  else
  {
    v9 = v0[3];

    sub_1BD0DE53C(v9, &qword_1EBD44D48);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1BD9265F0()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1BD926710, v3, v2);
}

uint64_t sub_1BD926710()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD926778(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1BE04D214();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  type metadata accessor for MerchantTokenCell.ImageState(0);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  sub_1BE0528A4();
  v3[10] = sub_1BE052894();
  v6 = sub_1BE052844();
  v3[11] = v6;
  v3[12] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD9268A8, v6, v5);
}

uint64_t sub_1BD9268A8()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  *(v0 + 104) = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  *(v0 + 112) = v5;
  *(v0 + 120) = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 2, 3, v3);
  *(v0 + 160) = *(type metadata accessor for MerchantTokenCell(0) + 28);
  sub_1BD930FE0(v1, v2, type metadata accessor for MerchantTokenCell.ImageState);
  *(v0 + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59138);
  sub_1BE0516B4();
  sub_1BD935C74(v1, type metadata accessor for MerchantTokenCell.ImageState);
  v6 = swift_task_alloc();
  *(v0 + 136) = v6;
  *v6 = v0;
  v6[1] = sub_1BD926A10;
  v7 = *(v0 + 16);

  return sub_1BD98A454(v7);
}

uint64_t sub_1BD926A10(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 152) = v1;

  v5 = *(v3 + 96);
  v6 = *(v3 + 88);
  if (v1)
  {
    v7 = sub_1BD926CB8;
  }

  else
  {
    v7 = sub_1BD926B54;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1BD926B54()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    v2 = *(v0 + 144);
    v3 = *(v0 + 32);
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
    sub_1BE051D74();
    sub_1BE04E7D4();
  }

  else
  {
    v6 = *(v0 + 64);
    v5 = *(v0 + 72);
    (*(v0 + 112))(v5, 3, 3, *(v0 + 104));
    sub_1BD930FE0(v5, v6, type metadata accessor for MerchantTokenCell.ImageState);
    sub_1BE0516B4();
    sub_1BD935C74(v5, type metadata accessor for MerchantTokenCell.ImageState);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1BD926CB8()
{
  v1 = v0[19];

  sub_1BE04D144();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[19];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1BD026000, v3, v4, "Error fetching icon: %@", v6, 0xCu);
    sub_1BD0DE53C(v7, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v7, -1, -1);
    MEMORY[0x1BFB45F20](v6, -1, -1);
  }

  v20 = v0[19];
  v10 = v3;
  v12 = v0[13];
  v11 = v0[14];
  v14 = v0[8];
  v13 = v0[9];
  v15 = v0[6];
  v16 = v0[7];
  v17 = v0[5];

  (*(v15 + 8))(v16, v17);
  v11(v13, 3, 3, v12);
  sub_1BD930FE0(v13, v14, type metadata accessor for MerchantTokenCell.ImageState);
  sub_1BE0516B4();

  sub_1BD935C74(v13, type metadata accessor for MerchantTokenCell.ImageState);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1BD926EE4(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for MerchantTokenCell.ImageState(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v14 - v9;
  *(&v14 - v9) = a2;
  v11 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v11 - 8) + 56))(v10, 0, 3, v11);
  type metadata accessor for MerchantTokenCell(0);
  sub_1BD930FE0(v10, v6, type metadata accessor for MerchantTokenCell.ImageState);
  v12 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59138);
  sub_1BE0516B4();
  return sub_1BD935C74(v10, type metadata accessor for MerchantTokenCell.ImageState);
}

uint64_t sub_1BD927054(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1 - 8, a2);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1BE053D04();
  sub_1BD930FE0(v2, v4, type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination);
  MEMORY[0x1BFB40DA0](0);
  sub_1BD3D409C(v7);
  sub_1BD935C74(v4, type metadata accessor for UnifiedMerchantTokenData);
  return sub_1BE053D64();
}

uint64_t sub_1BD92711C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD930FE0(v2, v5, type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination);
  MEMORY[0x1BFB40DA0](0);
  sub_1BD3D409C(a1);
  return sub_1BD935C74(v5, type metadata accessor for UnifiedMerchantTokenData);
}

uint64_t sub_1BD9271D8(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2 - 8);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1BE053D04();
  sub_1BD930FE0(v2, v4, type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination);
  MEMORY[0x1BFB40DA0](0);
  sub_1BD3D409C(v7);
  sub_1BD935C74(v4, type metadata accessor for UnifiedMerchantTokenData);
  return sub_1BE053D64();
}

uint64_t sub_1BD92729C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59340);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v11 - v6);
  v9 = *(v8 + 56);
  sub_1BD930FE0(a1, &v11 - v6, type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination);
  sub_1BD930FE0(a2, v7 + v9, type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination);
  LOBYTE(a2) = sub_1BD3D4098(v7, (v7 + v9));
  sub_1BD935C74(v7 + v9, type metadata accessor for UnifiedMerchantTokenData);
  sub_1BD935C74(v7, type metadata accessor for UnifiedMerchantTokenData);
  return a2 & 1;
}

uint64_t MerchantTokenNavigationStack.body.getter()
{
  type metadata accessor for MerchantTokenNavigationStack(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58FB0);
  sub_1BE0516C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42CD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58FB8);
  sub_1BD0DE4F4(&qword_1EBD58FC0, &qword_1EBD42CD8);
  sub_1BD0DE4F4(&qword_1EBD58FC8, &qword_1EBD42CD8);
  sub_1BD0DE4F4(&qword_1EBD58FD0, &qword_1EBD42CD8);
  sub_1BD92827C();
  sub_1BD928A24(&qword_1EBD59050, type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination);
  return sub_1BE04EBF4();
}

id sub_1BD927578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v3 = sub_1BE04F434();
  v106 = *(v3 - 1);
  v107 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MerchantTokenNavigationStack(0);
  v13 = v12 - 8;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12, v16);
  v17 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59020);
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v18);
  v20 = &v84 - v19;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59010);
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90, v21);
  v88 = &v84 - v22;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD593E0);
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94, v23);
  v91 = &v84 - v24;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59008);
  MEMORY[0x1EEE9AC00](v92, v25);
  v87 = &v84 - v26;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58FE8);
  MEMORY[0x1EEE9AC00](v96, v27);
  v95 = &v84 - v28;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58FE0);
  v98 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v29);
  v97 = &v84 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD593E8);
  v101 = *(v31 - 8);
  v102 = v31;
  MEMORY[0x1EEE9AC00](v31, v32);
  v99 = &v84 - v33;
  v34 = *(a1 + *(v13 + 28));
  v104 = a1;
  sub_1BD930FE0(a1, v17, type metadata accessor for MerchantTokenNavigationStack);
  v35 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v108 = *(v14 + 80);
  v109 = v35 + v15;
  v36 = swift_allocObject();
  v110 = v35;
  v103 = v17;
  sub_1BD93641C(v17, v36 + v35, type metadata accessor for MerchantTokenNavigationStack);
  KeyPath = swift_getKeyPath();
  v38 = *(v34 + 40);
  v111 = v34;
  v112 = sub_1BD936B9C;
  v113 = v36;
  v114 = KeyPath;
  v115 = v38;
  (*(v8 + 104))(v11, *MEMORY[0x1E69B80D8], v7);
  sub_1BE048964();
  v39 = v38;
  result = PKPassKitBundle();
  if (result)
  {
    v41 = result;
    v42 = sub_1BE04B6F4();
    v44 = v43;

    (*(v8 + 8))(v11, v7);
    v117 = v42;
    v118 = v44;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59028);
    v46 = sub_1BD9287D0();
    v47 = sub_1BD0DDEBC();
    v48 = MEMORY[0x1E69E6158];
    sub_1BE050B74();

    v50 = v106;
    v49 = v107;
    (*(v106 + 13))(v6, *MEMORY[0x1E697C438], v107);
    v111 = v45;
    v112 = v48;
    v113 = v46;
    v114 = v47;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v52 = v88;
    v53 = v86;
    sub_1BE050E84();
    (*(v50 + 1))(v6, v49);
    (*(v85 + 8))(v20, v53);
    v54 = type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination(0);
    v107 = type metadata accessor for MerchantTokenNavigationStack;
    v55 = v103;
    v56 = v104;
    sub_1BD930FE0(v104, v103, type metadata accessor for MerchantTokenNavigationStack);
    v57 = swift_allocObject();
    v106 = type metadata accessor for MerchantTokenNavigationStack;
    sub_1BD93641C(v55, v57 + v110, type metadata accessor for MerchantTokenNavigationStack);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59018);
    v111 = v53;
    v112 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v86 = sub_1BD928A24(&qword_1EBD59050, type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination);
    sub_1BD9288DC();
    v58 = v91;
    v85 = v54;
    v59 = v90;
    sub_1BE050D64();

    (*(v89 + 8))(v52, v59);
    sub_1BD930FE0(v56, v55, v107);
    v60 = swift_allocObject();
    v61 = v55;
    sub_1BD93641C(v55, v60 + v110, v106);
    v62 = v87;
    v63 = &v87[*(v92 + 36)];
    sub_1BE04E7B4();
    sub_1BE0528B4();
    *v63 = &unk_1BE1068D8;
    *(v63 + 1) = v60;
    (v93[4])(v62, v58, v94);
    v94 = *MEMORY[0x1E69B9D20];
    sub_1BE052434();
    sub_1BD9285C8();
    v64 = v95;
    sub_1BE050DE4();

    v65 = sub_1BD0DE53C(v62, &qword_1EBD59008);
    v93 = &v84;
    MEMORY[0x1EEE9AC00](v65, v66);
    v67 = v56;
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58FF0);
    v69 = sub_1BD92850C();
    v70 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59078);
    v71 = sub_1BD0DE4F4(&qword_1EBD59080, &qword_1EBD59078);
    v111 = v70;
    v112 = v71;
    v72 = swift_getOpaqueTypeConformance2();
    v73 = v97;
    v74 = v96;
    sub_1BE051024();
    sub_1BD0DE53C(v64, &qword_1EBD58FE8);
    sub_1BD930FE0(v67, v61, v107);
    v75 = swift_allocObject();
    sub_1BD93641C(v61, v75 + v110, v106);
    v76 = type metadata accessor for MerchantTokenDetailView(0);
    v111 = v74;
    v112 = v68;
    v113 = v69;
    v114 = v72;
    v77 = swift_getOpaqueTypeConformance2();
    v83 = sub_1BD928A24(&qword_1EBD59070, type metadata accessor for MerchantTokenDetailView);
    v79 = v99;
    v78 = v100;
    v80 = v85;
    v81 = v86;
    sub_1BE050D64();

    (*(v98 + 8))(v73, v78);
    sub_1BE052434();
    v111 = v78;
    v112 = v80;
    v113 = v76;
    v114 = v77;
    v115 = v81;
    v116 = v83;
    swift_getOpaqueTypeConformance2();
    v82 = v102;
    sub_1BE050DE4();

    return (*(v101 + 8))(v79, v82);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD92827C()
{
  result = qword_1EBD58FD8;
  if (!qword_1EBD58FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58FB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58FE0);
    type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination(255);
    type metadata accessor for MerchantTokenDetailView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58FE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58FF0);
    sub_1BD92850C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59078);
    sub_1BD0DE4F4(&qword_1EBD59080, &qword_1EBD59078);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD928A24(&qword_1EBD59050, type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination);
    sub_1BD928A24(&qword_1EBD59070, type metadata accessor for MerchantTokenDetailView);
    swift_getOpaqueTypeConformance2();
    sub_1BD928A24(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58FD8);
  }

  return result;
}

unint64_t sub_1BD92850C()
{
  result = qword_1EBD58FF8;
  if (!qword_1EBD58FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58FE8);
    sub_1BD9285C8();
    sub_1BD928A24(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58FF8);
  }

  return result;
}

unint64_t sub_1BD9285C8()
{
  result = qword_1EBD59000;
  if (!qword_1EBD59000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59008);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59010);
    type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59018);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59020);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59028);
    sub_1BD9287D0();
    sub_1BD0DDEBC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD928A24(&qword_1EBD59050, type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination);
    sub_1BD9288DC();
    swift_getOpaqueTypeConformance2();
    sub_1BD928A24(&qword_1EBD37148, MEMORY[0x1E697C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59000);
  }

  return result;
}

unint64_t sub_1BD9287D0()
{
  result = qword_1EBD59030;
  if (!qword_1EBD59030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59028);
    sub_1BD928888();
    sub_1BD0DE4F4(&qword_1EBD59040, &qword_1EBD59048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59030);
  }

  return result;
}

unint64_t sub_1BD928888()
{
  result = qword_1EBD59038;
  if (!qword_1EBD59038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59038);
  }

  return result;
}

unint64_t sub_1BD9288DC()
{
  result = qword_1EBD59058;
  if (!qword_1EBD59058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59018);
    sub_1BD928998();
    sub_1BD928A24(&qword_1EBD59070, type metadata accessor for MerchantTokenDetailView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59058);
  }

  return result;
}

unint64_t sub_1BD928998()
{
  result = qword_1EBD59060;
  if (!qword_1EBD59060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59068);
    sub_1BD362620();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59060);
  }

  return result;
}

uint64_t sub_1BD928A24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD928A6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD930FE0(a1, v8, type metadata accessor for UnifiedMerchantTokenData);
  v9 = (a2 + *(type metadata accessor for MerchantTokenNavigationStack(0) + 24));
  v10 = *v9;
  v11 = v9[1];
  v16[3] = *v9;
  v16[4] = v11;
  sub_1BE048964();
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58FB0);
  sub_1BE0516A4();
  v12 = v16[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_1BD1D9A50(0, v12[2] + 1, 1, v12);
  }

  v14 = v12[2];
  v13 = v12[3];
  if (v14 >= v13 >> 1)
  {
    v12 = sub_1BD1D9A50(v13 > 1, v14 + 1, 1, v12);
  }

  v12[2] = v14 + 1;
  sub_1BD93641C(v8, v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination);
  v16[1] = v10;
  v16[2] = v11;
  v16[0] = v12;
  sub_1BE0516B4();
}

uint64_t sub_1BD928C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a2;
  v74 = a3;
  v70 = type metadata accessor for MerchantTokenDetailView.ImageState(0);
  MEMORY[0x1EEE9AC00](v70, v4);
  v68 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v69 = &v66 - v8;
  v9 = type metadata accessor for MerchantTokenNavigationStack(0);
  v67 = *(v9 - 8);
  v10 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v12 = type metadata accessor for MerchantTokenDetailView(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59420);
  MEMORY[0x1EEE9AC00](v72, v16);
  v18 = &v66 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59018);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v73 = &v66 - v21;
  v22 = type metadata accessor for UnifiedMerchantTokenData(0);
  v23 = v22 - 8;
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD930FE0(a1, v30, type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination);
  sub_1BD93641C(v30, v26, type metadata accessor for UnifiedMerchantTokenData);
  v31 = &v26[*(v23 + 92)];
  v32 = *v31;
  v33 = *(v31 + 1);
  if (v32 == sub_1BE052434() && v33 == v34)
  {
  }

  else
  {
    v36 = sub_1BE053B84();

    if ((v36 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v37 = sub_1BD3CE02C();
  if (!v37)
  {
LABEL_10:
    sub_1BD930FE0(v26, v15, type metadata accessor for UnifiedMerchantTokenData);
    v48 = *(v71 + *(v9 + 20));
    v49 = *(v48 + 24);
    v66 = *(v48 + 32);
    v50 = v66;
    sub_1BD930FE0(v71, &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MerchantTokenNavigationStack);
    v51 = (*(v67 + 80) + 16) & ~*(v67 + 80);
    v52 = swift_allocObject();
    sub_1BD93641C(&v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v52 + v51, type metadata accessor for MerchantTokenNavigationStack);
    v53 = v12[7];
    v54 = objc_allocWithZone(MEMORY[0x1E69B8DB8]);
    v55 = v50;
    sub_1BE048964();
    *&v15[v53] = [v54 init];
    v56 = &v15[v12[8]];
    v75 = 0;
    sub_1BE051694();
    v57 = v77;
    *v56 = v76;
    *(v56 + 1) = v57;
    v58 = &v15[v12[9]];
    v75 = 0;
    sub_1BE051694();
    v59 = v77;
    *v58 = v76;
    *(v58 + 1) = v59;
    v60 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
    v61 = v69;
    (*(*(v60 - 8) + 56))(v69, 1, 3, v60);
    sub_1BD930FE0(v61, v68, type metadata accessor for MerchantTokenDetailView.ImageState);
    sub_1BE051694();
    sub_1BD935C74(v61, type metadata accessor for MerchantTokenDetailView.ImageState);
    v62 = &v15[v12[11]];
    v75 = 0;
    sub_1BE051694();
    v63 = v77;
    *v62 = v76;
    *(v62 + 1) = v63;
    *&v15[v12[5]] = v49;
    *&v15[v12[12]] = v66;
    v64 = &v15[v12[6]];
    *v64 = sub_1BD937290;
    *(v64 + 1) = v52;
    sub_1BD930FE0(v15, v18, type metadata accessor for MerchantTokenDetailView);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59068);
    sub_1BD928998();
    sub_1BD928A24(&qword_1EBD59070, type metadata accessor for MerchantTokenDetailView);
    v47 = v73;
    sub_1BE04F9A4();
    sub_1BD935C74(v15, type metadata accessor for MerchantTokenDetailView);
    goto LABEL_11;
  }

  v38 = v37;
  v39 = *(v71 + *(v9 + 20));
  swift_getKeyPath();
  v76 = v39;
  sub_1BD928A24(&qword_1EBD42BB0, type metadata accessor for MerchantTokenListViewModel);
  v40 = v38;
  sub_1BE04B594();

  v41 = *(v39 + 48);
  v42 = objc_allocWithZone(PKMerchantTokenDetailViewController);
  v43 = v41;
  v44 = [v42 initWithMerchantToken_];
  [v44 setDelegate_];

  v45 = sub_1BE0501D4();
  *v18 = v44;
  v18[8] = v45;
  swift_storeEnumTagMultiPayload();
  v46 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59068);
  sub_1BD928998();
  sub_1BD928A24(&qword_1EBD59070, type metadata accessor for MerchantTokenDetailView);
  v47 = v73;
  sub_1BE04F9A4();

LABEL_11:
  sub_1BD0DE204(v47, v74, &qword_1EBD59018);
  return sub_1BD935C74(v26, type metadata accessor for UnifiedMerchantTokenData);
}

uint64_t sub_1BD929440(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for MerchantTokenNavigationStack(0);
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v1[7] = *(v3 + 64);
  v1[8] = swift_task_alloc();
  sub_1BE0528A4();
  v1[9] = sub_1BE052894();
  v5 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD92953C, v5, v4);
}

uint64_t sub_1BD92953C()
{
  receiver = v0[4].receiver;
  v2 = v0[3].receiver;
  v3 = v0[2].receiver;

  sub_1BD930FE0(v3, receiver, type metadata accessor for MerchantTokenNavigationStack);
  v4 = (v2[80] + 16) & ~v2[80];
  v5 = swift_allocObject();
  sub_1BD93641C(receiver, v5 + v4, type metadata accessor for MerchantTokenNavigationStack);
  v6 = type metadata accessor for CashDetailsViewControllerWrapper.DelegateProxy();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtCV9PassKitUI32CashDetailsViewControllerWrapper13DelegateProxy_didRevokeMerchantToken];
  *v8 = sub_1BD93705C;
  v8[1] = v5;
  v0[1].receiver = v7;
  v0[1].super_class = v6;
  v9 = objc_msgSendSuper2(v0 + 1, sel_init);
  sub_1BD921960(v9);

  super_class = v0->super_class;

  return super_class();
}

uint64_t sub_1BD92967C()
{
  type metadata accessor for MerchantTokenNavigationStack(0);
  sub_1BE048964();
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58FB0);
  sub_1BE0516A4();
  v0 = v5;
  if (!v5[2])
  {
    __break(1u);
LABEL_6:
    result = sub_1BD500094(v5);
    v0 = result;
    v2 = *(result + 16);
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v2 = v5[2];
  if (v2)
  {
LABEL_4:
    v3 = v2 - 1;
    v4 = *(type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination(0) - 8);
    sub_1BD935C74(v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3, type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination);
    v0[2] = v3;
    sub_1BE0516B4();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1BD9297E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59078);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v18 - v8;
  sub_1BE04FB04();
  v18[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD593F0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD593F8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD52030);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59400);
  v13 = sub_1BD0DE4F4(&qword_1EBD59408, &qword_1EBD593F8);
  v19 = MEMORY[0x1E6981CD8];
  v20 = MEMORY[0x1E6981CD0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = sub_1BD936ED0();
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v23 = OpaqueTypeConformance2;
  v24 = v15;
  swift_getOpaqueTypeConformance2();
  sub_1BE04E424();
  v16 = sub_1BD0DE4F4(&qword_1EBD59080, &qword_1EBD59078);
  MEMORY[0x1BFB3CC50](v9, v5, v16);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1BD929A80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52030);
  v24 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v22 - v5;
  v7 = type metadata accessor for MerchantTokenNavigationStack(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v10);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD593F8);
  v11 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v12);
  v14 = &v22 - v13;
  sub_1BD930FE0(a1, &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MerchantTokenNavigationStack);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  sub_1BD93641C(&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for MerchantTokenNavigationStack);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59418);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A728);
  v26 = MEMORY[0x1E6981CD8];
  v27 = MEMORY[0x1E6981CD0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = sub_1BD55AB08();
  v26 = MEMORY[0x1E6981748];
  v27 = v3;
  v28 = v17;
  v29 = MEMORY[0x1E6981710];
  v30 = OpaqueTypeConformance2;
  v31 = v19;
  swift_getOpaqueTypeConformance2();
  sub_1BE051704();
  sub_1BE051C64();
  sub_1BE04F694();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59400);
  sub_1BD0DE4F4(&qword_1EBD59408, &qword_1EBD593F8);
  sub_1BD936ED0();
  v20 = v23;
  sub_1BE0510C4();
  (*(v24 + 8))(v6, v3);
  return (*(v11 + 8))(v14, v20);
}

uint64_t sub_1BD929E6C(uint64_t a1)
{
  v18 = sub_1BE04F3D4();
  v2 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v17 - v8;
  v10 = sub_1BE04E664();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0DE19C(a1, v9, &qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    sub_1BE052C44();
    v15 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v18);
  }

  sub_1BE04E654();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1BD92A0E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52030);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v8 - v3;
  sub_1BE051C54();
  v8[3] = sub_1BE051574();
  sub_1BE051C64();
  v5 = MEMORY[0x1E6981CD0];
  v6 = MEMORY[0x1E6981CD8];
  sub_1BE04F694();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A728);
  v8[1] = v6;
  v8[2] = v5;
  swift_getOpaqueTypeConformance2();
  sub_1BD55AB08();
  sub_1BE0510C4();
  (*(v1 + 8))(v4, v0);
}

uint64_t sub_1BD92A2C0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41F00);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v9 - v4;
  sub_1BE04F804();
  v6 = sub_1BE04F824();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = sub_1BE0515B4();
  sub_1BD0DE53C(v5, &qword_1EBD41F00);
  result = sub_1BE04FC94();
  *a1 = v7;
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BD92A3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE051464();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD593F8);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59400);
  *(a2 + *(result + 36)) = v4;
  return result;
}

uint64_t sub_1BD92A45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = type metadata accessor for MerchantTokenDetailView.ImageState(0);
  MEMORY[0x1EEE9AC00](v45, v6);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v43 - v10;
  v12 = type metadata accessor for MerchantTokenNavigationStack(0);
  v13 = v12 - 8;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12, v16);
  v17 = type metadata accessor for UnifiedMerchantTokenData(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD930FE0(a1, v24, type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination);
  sub_1BD93641C(v24, v20, type metadata accessor for UnifiedMerchantTokenData);
  sub_1BD930FE0(v20, a3, type metadata accessor for UnifiedMerchantTokenData);
  v25 = *(a2 + *(v13 + 28));
  v27 = *(v25 + 24);
  v26 = *(v25 + 32);
  sub_1BD930FE0(a2, &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MerchantTokenNavigationStack);
  v28 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v29 = swift_allocObject();
  sub_1BD93641C(&v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for MerchantTokenNavigationStack);
  v30 = type metadata accessor for MerchantTokenDetailView(0);
  v31 = v30[7];
  v32 = objc_allocWithZone(MEMORY[0x1E69B8DB8]);
  v33 = v26;
  sub_1BE048964();
  *(a3 + v31) = [v32 init];
  v34 = a3 + v30[8];
  v46 = 0;
  sub_1BE051694();
  v35 = v48;
  *v34 = v47;
  *(v34 + 8) = v35;
  v36 = a3 + v30[9];
  v46 = 0;
  sub_1BE051694();
  v37 = v48;
  *v36 = v47;
  *(v36 + 8) = v37;
  v38 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  (*(*(v38 - 8) + 56))(v11, 1, 3, v38);
  sub_1BD930FE0(v11, v44, type metadata accessor for MerchantTokenDetailView.ImageState);
  sub_1BE051694();
  sub_1BD935C74(v11, type metadata accessor for MerchantTokenDetailView.ImageState);
  v39 = a3 + v30[11];
  v46 = 0;
  sub_1BE051694();
  result = sub_1BD935C74(v20, type metadata accessor for UnifiedMerchantTokenData);
  v41 = v48;
  *v39 = v47;
  *(v39 + 8) = v41;
  *(a3 + v30[5]) = v27;
  *(a3 + v30[12]) = v26;
  v42 = (a3 + v30[6]);
  *v42 = sub_1BD936E70;
  v42[1] = v29;
  return result;
}

uint64_t sub_1BD92A890()
{
  type metadata accessor for MerchantTokenNavigationStack(0);
  sub_1BE048964();
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58FB0);
  sub_1BE0516A4();
  v0 = v5;
  if (!v5[2])
  {
    __break(1u);
LABEL_6:
    result = sub_1BD500094(v5);
    v0 = result;
    v2 = *(result + 16);
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v2 = v5[2];
  if (v2)
  {
LABEL_4:
    v3 = v2 - 1;
    v4 = *(type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination(0) - 8);
    sub_1BD935C74(v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3, type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination);
    v0[2] = v3;
    sub_1BE0516B4();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1BD92A9F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58FB0);
  sub_1BE0516C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42CD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58FB8);
  sub_1BD0DE4F4(&qword_1EBD58FC0, &qword_1EBD42CD8);
  sub_1BD0DE4F4(&qword_1EBD58FC8, &qword_1EBD42CD8);
  sub_1BD0DE4F4(&qword_1EBD58FD0, &qword_1EBD42CD8);
  sub_1BD92827C();
  sub_1BD928A24(&qword_1EBD59050, type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination);
  return sub_1BE04EBF4();
}

id MerchantTokenListView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v42 = sub_1BE04F434();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v2);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59088);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v37 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59090);
  v38 = *(v14 - 8);
  v39 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v37 - v16;
  v19 = *v1;
  v18 = v1[1];
  v20 = v1[2];
  sub_1BE048964();
  v21 = sub_1BE048964();
  sub_1BD92AF88(v21, v18, v20, v13);
  KeyPath = swift_getKeyPath();
  v23 = *(v19 + 40);
  v24 = (v13 + *(v10 + 36));
  *v24 = KeyPath;
  v24[1] = v23;
  (*(v6 + 104))(v9, *MEMORY[0x1E69B80D8], v5);
  v25 = v23;
  result = PKPassKitBundle();
  if (result)
  {
    v27 = result;
    v28 = sub_1BE04B6F4();
    v30 = v29;

    (*(v6 + 8))(v9, v5);
    v43 = v28;
    v44 = v30;
    v31 = sub_1BD92B120();
    v32 = sub_1BD0DDEBC();
    v33 = MEMORY[0x1E69E6158];
    sub_1BE050B74();

    sub_1BD0DE53C(v13, &qword_1EBD59088);
    v34 = v40;
    v35 = v42;
    (*(v40 + 104))(v4, *MEMORY[0x1E697C438], v42);
    v43 = v10;
    v44 = v33;
    v45 = v31;
    v46 = v32;
    swift_getOpaqueTypeConformance2();
    v36 = v39;
    sub_1BE050E84();
    (*(v34 + 8))(v4, v35);
    return (*(v38 + 8))(v17, v36);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD92AF88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  v5 = type metadata accessor for MerchantTokenList(0);
  sub_1BE049EC4();
  v6 = sub_1BE049EA4();
  sub_1BD0E5E8C(0, &qword_1EBD593D8);
  v7 = sub_1BE052724();
  [v6 setSortDescriptors_];

  sub_1BE04E4D4();
  v8 = (a4 + v5[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59110);
  sub_1BE051694();
  *v8 = v13;
  v8[1] = v14;
  v9 = v5[8];
  *(a4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C30);
  swift_storeEnumTagMultiPayload();
  v10 = a4 + v5[9];
  sub_1BE051694();
  *v10 = v13;
  *(v10 + 1) = v14;
  v11 = a4 + v5[10];
  result = sub_1BE051694();
  *v11 = v13;
  *(v11 + 1) = v14;
  return result;
}

unint64_t sub_1BD92B120()
{
  result = qword_1EBD59098;
  if (!qword_1EBD59098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59088);
    sub_1BD928A24(&qword_1EBD590A0, type metadata accessor for MerchantTokenList);
    sub_1BD0DE4F4(&qword_1EBD59040, &qword_1EBD59048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59098);
  }

  return result;
}

uint64_t sub_1BD92B28C()
{
  result = sub_1BE04B5D4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1BD92B37C()
{
  sub_1BD92B628(319, &qword_1EBD3AB88, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MerchantTokenListViewModel(319);
    if (v1 <= 0x3F)
    {
      sub_1BD23BC4C(319, &qword_1EBD590D0, &qword_1EBD42CD8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD92B4A8()
{
  type metadata accessor for MerchantTokenListViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1BD1030A8();
    if (v1 <= 0x3F)
    {
      sub_1BD92B628(319, &qword_1EBD59100, MEMORY[0x1E6967CC0], MEMORY[0x1E697BF10]);
      if (v2 <= 0x3F)
      {
        sub_1BD23BC4C(319, &qword_1EBD59108, &qword_1EBD59110);
        if (v3 <= 0x3F)
        {
          sub_1BD92B628(319, &qword_1EBD40C58, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1BD683EFC(319, &qword_1EBD496E0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
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

void sub_1BD92B628(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BD92B68C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59118);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD92B704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59118);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_1BD92B78C(uint64_t a1)
{
  sub_1BD92B844();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = type metadata accessor for UnifiedMerchantTokenData(319);
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

void sub_1BD92B844()
{
  if (!qword_1EBD59130)
  {
    v0 = type metadata accessor for UnifiedMerchantTokenData(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD59130);
    }
  }
}

void sub_1BD92B8F4()
{
  type metadata accessor for UnifiedMerchantTokenData(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MerchantTokenCellPresentationModel(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for MerchantTokenIconProvider();
      if (v2 <= 0x3F)
      {
        sub_1BD92B628(319, &qword_1EBD59150, type metadata accessor for MerchantTokenCell.ImageState, MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1BD92BC24()
{
  sub_1BD92B628(319, &qword_1EBD59190, type metadata accessor for MerchantTokenListViewModel.SectionCard, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1BD92B628(319, &qword_1EBD59198, type metadata accessor for UnifiedMerchantTokenData, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD92BD50()
{
  sub_1BE04AA64();
  if (v0 <= 0x3F)
  {
    sub_1BD683EFC(319, &qword_1EBD4F750, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_75Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_76Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_1BD92BF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_1BD92C08C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v112 = a1;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37300);
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v3);
  v118 = &v107 - v4;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD591D0);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109, v5);
  v121 = &v107 - v6;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD591D8);
  MEMORY[0x1EEE9AC00](v126, v7);
  v122 = &v107 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD591E0);
  v117 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v9);
  v11 = &v107 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD591E8);
  v113 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v107 - v14;
  v16 = type metadata accessor for MerchantTokenList(0);
  v17 = *(v16 + 28);
  v18 = v16;
  v119 = v16;
  v120 = v1;
  v19 = (v1 + v17);
  v21 = *v19;
  v20 = v19[1];
  v134 = v21;
  v135 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD591F0);
  v22 = sub_1BE0516A4();
  v23 = v132;
  v24 = *(v18 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22, v26);
  v115 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = &v107 - v115;
  v125 = type metadata accessor for MerchantTokenList;
  sub_1BD930FE0(v2, &v107 - v115, type metadata accessor for MerchantTokenList);
  v124 = *(v24 + 80);
  v28 = (v124 + 16) & ~v124;
  v114 = v28;
  v29 = swift_allocObject();
  v123 = type metadata accessor for MerchantTokenList;
  sub_1BD93641C(v27, v29 + v28, type metadata accessor for MerchantTokenList);
  v134 = v23;
  v127 = &v134;
  v128 = sub_1BD931048;
  v129 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD591F8);
  sub_1BD93557C();
  sub_1BE0504E4();

  v30 = sub_1BE04FB94();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v32);
  v34 = &v107 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04FB84();
  v35 = sub_1BD0DE4F4(&qword_1EBD59228, &qword_1EBD591E8);
  v36 = MEMORY[0x1E697C750];
  sub_1BE051144();
  (*(v31 + 8))(v34, v30);
  (*(v113 + 8))(v15, v12);
  v37 = sub_1BE0501E4();
  v38 = sub_1BE04FC54();
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v40);
  v42 = &v107 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04FC24();
  v134 = v12;
  v135 = v30;
  v136 = v35;
  v137 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v122;
  v45 = v116;
  MEMORY[0x1BFB3DB30](v37, 0, 0, v42, v116, OpaqueTypeConformance2);
  (*(v39 + 8))(v42, v38);
  (*(v117 + 8))(v11, v45);
  v46 = sub_1BE051CD4();
  v48 = v47;
  v49 = &v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59230) + 36)];
  v50 = v120;
  sub_1BD92EB18(v120, v49);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59238);
  v52 = (v49 + *(v51 + 36));
  *v52 = v46;
  v52[1] = v48;
  MEMORY[0x1EEE9AC00](v51, v53);
  v54 = v115;
  sub_1BD930FE0(v50, &v107 - v115, v125);
  v55 = v114;
  v56 = swift_allocObject();
  sub_1BD93641C(&v107 - v54, v56 + v55, v123);
  v57 = &v44[*(v126 + 9)];
  *v57 = sub_1BD93586C;
  v57[1] = v56;
  v57[2] = 0;
  v57[3] = 0;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59240);
  MEMORY[0x1EEE9AC00](v58, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD590E8);
  sub_1BE04E4E4();
  sub_1BD0DE4F4(&qword_1EBD59248, &qword_1EBD59240);
  v60 = sub_1BE0526B4();
  v61 = sub_1BD921E80(v60);

  v134 = v61;
  MEMORY[0x1EEE9AC00](v62, v63);
  sub_1BD930FE0(v50, &v107 - v54, v125);
  v64 = swift_allocObject();
  sub_1BD93641C(&v107 - v54, v64 + v55, v123);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59110);
  v66 = sub_1BD935918();
  v67 = sub_1BD935B28();
  v68 = v122;
  sub_1BE051064();

  sub_1BD0DE53C(v68, &qword_1EBD591D8);
  v69 = sub_1BE04BD74();
  v70 = *(v69 - 8);
  v72 = MEMORY[0x1EEE9AC00](v69, v71);
  v74 = &v107 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v70 + 104))(v74, *MEMORY[0x1E69B8080], v69, v72);
  result = PKPassKitBundle();
  if (result)
  {
    v76 = result;
    v77 = sub_1BE04B6F4();
    v79 = v78;

    (*(v70 + 8))(v74, v69);
    v132 = v77;
    v133 = v79;
    v80 = (v120 + *(v119 + 40));
    v81 = *v80;
    v82 = *(v80 + 1);
    v130 = v81;
    v131 = v82;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
    v134 = v126;
    v135 = v65;
    v136 = v66;
    v137 = v67;
    swift_getOpaqueTypeConformance2();
    sub_1BD0DDEBC();
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    v83 = v109;
    v84 = v121;
    sub_1BE050F34();

    (*(v108 + 8))(v84, v83);
    sub_1BE0528A4();
    v85 = sub_1BE052894();
    v86 = swift_allocObject();
    v87 = MEMORY[0x1E69E85E0];
    *(v86 + 16) = v85;
    *(v86 + 24) = v87;
    v88 = sub_1BE0528D4();
    v89 = *(v88 - 8);
    v90 = *(v89 + 64);
    MEMORY[0x1EEE9AC00](v88, v91);
    v92 = (v90 + 15) & 0xFFFFFFFFFFFFFFF0;
    v93 = &v107 - v92;
    sub_1BE0528B4();
    if (__isPlatformVersionAtLeast(2, 26, 4, 0))
    {
      v124 = sub_1BE04EAA4();
      v125 = &v107;
      v123 = *(v124 - 8);
      MEMORY[0x1EEE9AC00](v124, v94);
      v126 = &v107;
      v96 = &v107 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
      v134 = 0;
      v135 = 0xE000000000000000;
      sub_1BE053834();

      v134 = 0xD000000000000032;
      v135 = 0x80000001BE1408D0;
      v132 = 529;
      v97 = sub_1BE053B24();
      MEMORY[0x1BFB3F610](v97);

      v100 = MEMORY[0x1EEE9AC00](v98, v99);
      (*(v89 + 16))(&v107 - v92, &v107 - v92, v88, v100);
      sub_1BE04EA94();
      (*(v89 + 8))(&v107 - v92, v88);
      v101 = v112;
      (*(v110 + 32))(v112, v118, v111);
      v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37308);
      return (*(v123 + 4))(v101 + *(v102 + 36), v96, v124);
    }

    else
    {
      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37310);
      v104 = v112;
      v105 = (v112 + *(v103 + 36));
      v106 = sub_1BE04E7B4();
      (*(v89 + 32))(&v105[*(v106 + 20)], v93, v88);
      *v105 = &unk_1BE106608;
      *(v105 + 1) = v86;
      return (*(v110 + 32))(v104, v118, v111);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD92CFC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59220);
  sub_1BD0DE4F4(&qword_1EBD59218, &qword_1EBD59220);
  return sub_1BE051A44();
}

id sub_1BD92D06C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a2;
  v87 = a1;
  v85 = a3;
  v3 = type metadata accessor for MerchantTokenList(0);
  v77 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v78 = v5;
  v80 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD592A0);
  v83 = *(v6 - 8);
  v84 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v82 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v81 = &v74 - v11;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD592A8);
  MEMORY[0x1EEE9AC00](v75, v12);
  v14 = &v74 - v13;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD592B0);
  MEMORY[0x1EEE9AC00](v74, v15);
  v17 = &v74 - v16;
  v18 = sub_1BE04BD74();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59178);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v74 - v25;
  v27 = type metadata accessor for MerchantTokenListViewModel.SectionCard(0);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD592B8);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v76 = &v74 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v74 - v37;
  sub_1BD0DE19C(v87, v26, &qword_1EBD59178);
  v39 = (*(v28 + 48))(v26, 1, v27);
  v86 = v38;
  if (v39 != 1)
  {
    sub_1BD93641C(v26, v31, type metadata accessor for MerchantTokenListViewModel.SectionCard);
    *v14 = sub_1BE04F504();
    *(v14 + 1) = 0;
    v14[16] = 1;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59320);
    sub_1BD92D9D8(v31, &v14[*(v61 + 44)]);
    sub_1BD0DE19C(v14, v17, &qword_1EBD592A8);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD592C0, &qword_1EBD592A8);
    sub_1BE04F9A4();
    sub_1BD0DE53C(v14, &qword_1EBD592A8);
    sub_1BD935C74(v31, type metadata accessor for MerchantTokenListViewModel.SectionCard);
    goto LABEL_5;
  }

  sub_1BD0DE53C(v26, &qword_1EBD59178);
  (*(v19 + 104))(v22, *MEMORY[0x1E69B8080], v18);
  result = PKPassKitBundle();
  if (result)
  {
    v41 = result;
    v42 = sub_1BE04B6F4();
    v44 = v43;

    (*(v19 + 8))(v22, v18);
    v88 = v42;
    v89 = v44;
    sub_1BD0DDEBC();
    v45 = sub_1BE0506C4();
    v47 = v46;
    LOBYTE(v44) = v48;
    sub_1BE050324();
    sub_1BE0503A4();
    sub_1BE0503F4();

    v49 = sub_1BE0505F4();
    v51 = v50;
    v53 = v52;

    sub_1BD0DDF10(v45, v47, v44 & 1);

    sub_1BE051464();
    v54 = sub_1BE050564();
    v56 = v55;
    v58 = v57;
    v60 = v59;

    sub_1BD0DDF10(v49, v51, v53 & 1);

    *v17 = v54;
    *(v17 + 1) = v56;
    v17[16] = v58 & 1;
    *(v17 + 3) = v60;
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD592C0, &qword_1EBD592A8);
    v38 = v86;
    sub_1BE04F9A4();
LABEL_5:
    v88 = *(v87 + *(type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection(0) + 20));
    v62 = v80;
    sub_1BD930FE0(v79, v80, type metadata accessor for MerchantTokenList);
    v63 = (*(v77 + 80) + 16) & ~*(v77 + 80);
    v64 = swift_allocObject();
    sub_1BD93641C(v62, v64 + v63, type metadata accessor for MerchantTokenList);
    sub_1BE048C84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD592C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD592D0);
    sub_1BD0DE4F4(&qword_1EBD592D8, &qword_1EBD592C8);
    sub_1BD9365AC();
    sub_1BD928A24(&qword_1EBD59310, type metadata accessor for UnifiedMerchantTokenData);
    v65 = v81;
    sub_1BE0519D4();
    v66 = v76;
    sub_1BD0DE19C(v38, v76, &qword_1EBD592B8);
    v68 = v82;
    v67 = v83;
    v69 = *(v83 + 16);
    v70 = v84;
    v69(v82, v65, v84);
    v71 = v85;
    sub_1BD0DE19C(v66, v85, &qword_1EBD592B8);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59318);
    v69((v71 + *(v72 + 48)), v68, v70);
    v73 = *(v67 + 8);
    v73(v65, v70);
    sub_1BD0DE53C(v86, &qword_1EBD592B8);
    v73(v68, v70);
    return sub_1BD0DE53C(v66, &qword_1EBD592B8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD92D9D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a1;
  v106 = a2;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F100);
  MEMORY[0x1EEE9AC00](v102, v3);
  v107 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v105 = &v97 - v7;
  v8 = sub_1BE04BD74();
  v100 = *(v8 - 8);
  v101 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v98 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F228);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11, v13);
  v104 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v97 - v17;
  v108 = type metadata accessor for MerchantTokenListViewModel.SectionCard(0);
  v19 = (a1 + v108[7]);
  v20 = v19[1];
  *&v109 = *v19;
  *(&v109 + 1) = v20;
  v21 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v97 = v21;
  v22 = sub_1BE0506C4();
  v24 = v23;
  v26 = v25;
  sub_1BE050324();
  sub_1BE0503A4();
  sub_1BE0503F4();

  v27 = sub_1BE0505F4();
  v29 = v28;
  v31 = v30;
  v103 = v32;

  sub_1BD0DDF10(v22, v24, v26 & 1);

  v33 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386A0) + 36)];
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0) + 28);
  v35 = sub_1BE0505C4();
  (*(*(v35 - 8) + 56))(v33 + v34, 1, 1, v35);
  *v33 = swift_getKeyPath();
  *v18 = v27;
  *(v18 + 1) = v29;
  v18[16] = v31 & 1;
  *(v18 + 3) = v103;
  v36 = sub_1BE051464();
  KeyPath = swift_getKeyPath();
  v38 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F220) + 36)];
  *v38 = KeyPath;
  v38[1] = v36;
  v39 = swift_getKeyPath();
  v40 = *(v12 + 44);
  v103 = v18;
  v41 = &v18[v40];
  v42 = v99;
  *v41 = v39;
  *(v41 + 1) = 1;
  v41[16] = 0;
  if (*(v42 + v108[6] + 8))
  {
    v43 = sub_1BE052404();
  }

  else
  {
    v43 = 0;
  }

  v44 = PKMaskedPaymentPAN();

  if (v44)
  {
    v45 = sub_1BE052434();
    v47 = v46;

    v49 = v100;
    v48 = v101;
    v50 = v98;
    (*(v100 + 104))(v98, *MEMORY[0x1E69B8080], v101);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1BE0B69E0;
    *(v51 + 56) = MEMORY[0x1E69E6158];
    *(v51 + 64) = sub_1BD110550();
    *(v51 + 32) = v45;
    *(v51 + 40) = v47;
    v52 = sub_1BE04B714();
    v54 = v53;

    (*(v49 + 8))(v50, v48);
    *&v109 = v52;
    *(&v109 + 1) = v54;
    v55 = sub_1BE0506C4();
    v57 = v56;
    LOBYTE(v54) = v58;
    sub_1BE050464();
    sub_1BE050334();

    v59 = sub_1BE0505F4();
    v61 = v60;
    v63 = v62;

    sub_1BD0DDF10(v55, v57, v54 & 1);

    sub_1BE051464();
    v64 = sub_1BE050564();
    v66 = v65;
    LOBYTE(v57) = v67;
    v69 = v68;

    sub_1BD0DDF10(v59, v61, v63 & 1);

    v100 = v57 & 1;
    v101 = v64;
    v70 = v66;
    sub_1BD0D7F18(v64, v66, v57 & 1);
    v71 = v69;
    sub_1BE048C84();
  }

  else
  {
    v100 = 0;
    v101 = 0;
    v70 = 0;
    v71 = 0;
  }

  v72 = v108[5];
  v73 = sub_1BE04AA64();
  v74 = v105;
  (*(*(v73 - 8) + 16))(v105, v42 + v72, v73);
  type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  swift_storeEnumTagMultiPayload();
  v75 = v74 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F0F0) + 36);
  *v75 = 0x3FF89DB22D0E5604;
  *(v75 + 8) = 256;
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v76 = (v74 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F0F8) + 36));
  v77 = v110;
  *v76 = v109;
  v76[1] = v77;
  v76[2] = v111;
  v78 = (v74 + *(v102 + 36));
  v79 = *(sub_1BE04EDE4() + 20);
  v80 = *MEMORY[0x1E697F468];
  v81 = sub_1BE04F684();
  (*(*(v81 - 8) + 104))(&v78[v79], v80, v81);
  __asm { FMOV            V0.2D, #3.0 }

  *v78 = _Q0;
  *&v78[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50) + 36)] = 256;
  v88 = v103;
  v87 = v104;
  sub_1BD0DE19C(v103, v104, &qword_1EBD4F228);
  v89 = v107;
  sub_1BD0DE19C(v74, v107, &qword_1EBD4F100);
  v90 = v106;
  sub_1BD0DE19C(v87, v106, &qword_1EBD4F228);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59328);
  v92 = (v90 + v91[12]);
  v93 = v100;
  v94 = v101;
  *v92 = v101;
  v92[1] = v70;
  v92[2] = v93;
  v92[3] = v71;
  v95 = v90 + v91[16];
  *v95 = 0;
  *(v95 + 8) = 1;
  sub_1BD0DE19C(v89, v90 + v91[20], &qword_1EBD4F100);
  sub_1BD1969AC(v94, v70, v93, v71);
  sub_1BD1969F0(v94, v70, v93, v71);
  sub_1BD0DE53C(v74, &qword_1EBD4F100);
  sub_1BD0DE53C(v88, &qword_1EBD4F228);
  sub_1BD0DE53C(v89, &qword_1EBD4F100);
  sub_1BD1969F0(v94, v70, v93, v71);
  return sub_1BD0DE53C(v87, &qword_1EBD4F228);
}

uint64_t sub_1BD92E22C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a3;
  v5 = sub_1BE04FF64();
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v56 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD592F8);
  v9 = *(v8 - 8);
  v54 = v8;
  v55 = v9;
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v44 - v11;
  v12 = type metadata accessor for UnifiedMerchantTokenData(0);
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v15 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MerchantTokenList(0);
  v45 = *(v16 - 8);
  v17 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v19 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD592F0);
  v48 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v44 - v22;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD592E8);
  v51 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v24);
  v26 = &v44 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59330);
  v28 = *(v27 - 8);
  v52 = v27;
  v53 = v28;
  MEMORY[0x1EEE9AC00](v27, v29);
  v47 = &v44 - v30;
  sub_1BD930FE0(a2, v19, type metadata accessor for MerchantTokenList);
  sub_1BD930FE0(a1, v15, type metadata accessor for UnifiedMerchantTokenData);
  v31 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v32 = (v17 + *(v46 + 80) + v31) & ~*(v46 + 80);
  v33 = swift_allocObject();
  sub_1BD93641C(v19, v33 + v31, type metadata accessor for MerchantTokenList);
  sub_1BD93641C(v15, v33 + v32, type metadata accessor for UnifiedMerchantTokenData);
  v60 = a1;
  v61 = a2;
  type metadata accessor for MerchantTokenCell(0);
  sub_1BD928A24(&qword_1EBD59338, type metadata accessor for MerchantTokenCell);
  sub_1BE051704();
  v34 = v50;
  sub_1BE04FA14();
  v35 = sub_1BD0DE4F4(&qword_1EBD59300, &qword_1EBD592F0);
  v36 = sub_1BD0DE4F4(&qword_1EBD59308, &qword_1EBD592F8);
  v37 = v54;
  sub_1BE050894();
  (*(v55 + 8))(v34, v37);
  (*(v48 + 8))(v23, v20);
  v38 = v56;
  sub_1BE04FF44();
  v62 = v20;
  v63 = v37;
  v64 = v35;
  v65 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v47;
  v41 = v49;
  sub_1BE050D14();
  (*(v57 + 8))(v38, v58);
  (*(v51 + 8))(v26, v41);
  sub_1BE052434();
  v62 = v41;
  v63 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v42 = v52;
  sub_1BE050DE4();

  return (*(v53 + 8))(v40, v42);
}

uint64_t sub_1BD92E90C(uint64_t (**a1)(void), uint64_t a2)
{
  if (*(*a1 + 4))
  {
    v4 = MEMORY[0x1E69BB6F8];
  }

  else
  {
    v4 = MEMORY[0x1E69BB718];
  }

  v5 = *v4;
  sub_1BD6BB340(v5);

  return a1[1](a2);
}

uint64_t sub_1BD92E97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MerchantTokenCell.ImageState(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v17 - v12;
  sub_1BD930FE0(a1, a3, type metadata accessor for UnifiedMerchantTokenData);
  v14 = type metadata accessor for MerchantTokenCell(0);
  sub_1BD930FE0(a1, a3 + *(v14 + 20), type metadata accessor for UnifiedMerchantTokenData);
  *(a3 + *(v14 + 24)) = *(*a2 + 24);
  v15 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  (*(*(v15 - 8) + 56))(v13, 1, 3, v15);
  sub_1BD930FE0(v13, v9, type metadata accessor for MerchantTokenCell.ImageState);
  sub_1BE048964();
  sub_1BE051694();
  return sub_1BD935C74(v13, type metadata accessor for MerchantTokenCell.ImageState);
}

uint64_t sub_1BD92EB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59288);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v17 - v7;
  v9 = (a1 + *(type metadata accessor for MerchantTokenList(0) + 28));
  v11 = *v9;
  v10 = v9[1];
  v17[2] = v11;
  v17[3] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD591F0);
  sub_1BE0516A4();
  v12 = *(v17[1] + 16);

  if (v12)
  {
    v15 = 1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C248);
    sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358);
    sub_1BD1BCD34();
    sub_1BE04FC64();
    (*(v5 + 32))(a2, v8, v4);
    v15 = 0;
  }

  return (*(v5 + 56))(a2, v15, 1, v4);
}

id sub_1BD92ED7C()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x1E69B80D8], v0, v3);
  result = PKPassKitBundle();
  if (result)
  {
    v7 = result;
    v8 = sub_1BE04B6F4();
    v10 = v9;

    (*(v1 + 8))(v5, v0);
    v11[0] = v8;
    v11[1] = v10;
    sub_1BD0DDEBC();
    return sub_1BE051624();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD92EEF8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B80D8], v2, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v3 + 8))(v7, v2);
    v16[0] = v10;
    v16[1] = v12;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v13;
    *(a1 + 16) = v14 & 1;
    *(a1 + 24) = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD92F064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v64 = a2;
  v2 = type metadata accessor for MerchantTokenList(0);
  v55 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v57 = v4;
  v58 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v59 = &v52 - v7;
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v60 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v52 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v52 - v18;
  v20 = sub_1BE04AA64();
  v66 = *(v20 - 8);
  v67 = v20;
  v21 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v20, v22);
  v54 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v61 = &v52 - v26;
  v27 = *MEMORY[0x1E69B80D8];
  v28 = *(v9 + 104);
  v65 = v8;
  v28(v15, v27, v8, v25);
  result = PKPassKitBundle();
  if (result)
  {
    v30 = result;
    sub_1BE04B6F4();

    v31 = *(v9 + 8);
    v31(v15, v65);
    sub_1BE04AA54();

    if ((*(v66 + 48))(v19, 1, v67) == 1)
    {
      sub_1BD0DE53C(v19, &unk_1EBD3CF70);
      v32 = 1;
      v34 = v63;
      v33 = v64;
      v35 = v62;
      return (*(v35 + 56))(v33, v32, 1, v34);
    }

    v36 = v61;
    v53 = *(v66 + 32);
    v53(v61, v19, v67);
    v37 = v60;
    (v28)(v60, v27, v65);
    result = PKPassKitBundle();
    if (result)
    {
      v38 = result;
      v39 = v37;
      v40 = sub_1BE04B6F4();
      v42 = v41;

      v31(v39, v65);
      v68 = v40;
      v69 = v42;
      v43 = v58;
      sub_1BD930FE0(v56, v58, type metadata accessor for MerchantTokenList);
      v45 = v66;
      v44 = v67;
      v46 = v54;
      (*(v66 + 16))(v54, v36, v67);
      v47 = (*(v55 + 80) + 16) & ~*(v55 + 80);
      v48 = (v57 + *(v45 + 80) + v47) & ~*(v45 + 80);
      v49 = swift_allocObject();
      sub_1BD93641C(v43, v49 + v47, type metadata accessor for MerchantTokenList);
      v53((v49 + v48), v46, v44);
      sub_1BD0DDEBC();
      v50 = v59;
      sub_1BE051744();
      (*(v45 + 8))(v36, v44);
      v35 = v62;
      v33 = v64;
      v51 = v50;
      v34 = v63;
      (*(v62 + 32))(v64, v51, v63);
      v32 = 0;
      return (*(v35 + 56))(v33, v32, 1, v34);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD92F628(uint64_t a1, uint64_t a2)
{
  v19[1] = a2;
  v19[0] = sub_1BE04F3D4();
  v3 = *(v19[0] - 8);
  MEMORY[0x1EEE9AC00](v19[0], v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C30);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v19 - v9;
  v11 = sub_1BE04E784();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MerchantTokenList(0);
  sub_1BD0DE19C(a1 + *(v16 + 32), v10, &qword_1EBD40C30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    sub_1BE052C44();
    v17 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v19[0]);
  }

  sub_1BE04E734();
  return (*(v12 + 8))(v15, v11);
}

void sub_1BD92F8B8(uint64_t a1)
{
  v2 = type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a1 + *(type metadata accessor for MerchantTokenList(0) + 28));
  v9 = *v7;
  v8 = v7[1];
  v47 = v9;
  v48 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD591F0);
  sub_1BE0516A4();
  v10 = *(v46 + 16);
  if (!v10)
  {

    v14 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v25 = v14[2];

    if (v25 >= 5)
    {
      v28 = 0xE200000000000000;
      v26 = 11061;
    }

    else
    {
      v47 = v25;
      v26 = sub_1BE053B24();
      v28 = v27;
    }

    if (*(*a1 + 32))
    {
      v29 = MEMORY[0x1E69BB6F8];
    }

    else
    {
      v29 = MEMORY[0x1E69BB718];
    }

    v30 = *v29;
    v31 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B98D0;
    v33 = *MEMORY[0x1E69BA680];
    *(inited + 32) = *MEMORY[0x1E69BA680];
    v34 = sub_1BE052434();
    v35 = MEMORY[0x1E69BABE8];
    *(inited + 40) = v34;
    *(inited + 48) = v36;
    v37 = *v35;
    *(inited + 56) = *v35;
    *(inited + 64) = sub_1BE052434();
    *(inited + 72) = v38;
    v39 = *MEMORY[0x1E69BB030];
    *(inited + 80) = *MEMORY[0x1E69BB030];
    *(inited + 88) = v26;
    *(inited + 96) = v28;
    v40 = v33;
    v41 = v37;
    v42 = v39;
    sub_1BD1AAF50(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
    swift_arrayDestroy();
    type metadata accessor for PKAnalyticsKey(0);
    sub_1BD928A24(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
    v43 = sub_1BE052224();

    [v31 subject:v30 sendEvent:v43];

    return;
  }

  v44 = v46;
  v45 = a1;
  v11 = *(v2 + 20);
  v12 = v46 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v13 = *(v3 + 72);
  v14 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1BD930FE0(v12, v6, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
    v15 = *&v6[v11];
    sub_1BE048C84();
    sub_1BD935C74(v6, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
    v16 = *(v15 + 16);
    v17 = v14[2];
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v18 <= v14[3] >> 1)
    {
      if (*(v15 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v17 <= v18)
      {
        v20 = v17 + v16;
      }

      else
      {
        v20 = v17;
      }

      v14 = sub_1BD1D9A28(isUniquelyReferenced_nonNull_native, v20, 1, v14);
      if (*(v15 + 16))
      {
LABEL_14:
        v21 = (v14[3] >> 1) - v14[2];
        type metadata accessor for UnifiedMerchantTokenData(0);
        if (v21 < v16)
        {
          goto LABEL_29;
        }

        swift_arrayInitWithCopy();

        if (v16)
        {
          v22 = v14[2];
          v23 = __OFADD__(v22, v16);
          v24 = v22 + v16;
          if (v23)
          {
            goto LABEL_30;
          }

          v14[2] = v24;
        }

        goto LABEL_4;
      }
    }

    if (v16)
    {
      goto LABEL_28;
    }

LABEL_4:
    v12 += v13;
    if (!--v10)
    {

      a1 = v45;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_1BD92FD20(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = type metadata accessor for UnifiedMerchantTokenData(0);
  v122 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v120 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v104 = &v98 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50190);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v98 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59280);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v107 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v118 = &v98 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v98 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v108 = &v98 - v31;
  v32 = type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection(0);
  v116 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v33);
  v113 = &v98 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v98 - v37;
  v39 = *a2;
  v40 = type metadata accessor for MerchantTokenList(0);
  v41 = (a3 + *(v40 + 28));
  v43 = *v41;
  v42 = v41[1];
  v124 = v43;
  v125 = v42;
  v123 = v39;
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD591F0);
  sub_1BE0516B4();
  v103 = v40;
  v44 = a3 + *(v40 + 36);
  v45 = *v44;
  v46 = *(v44 + 1);
  LOBYTE(v124) = v45;
  v115 = v46;
  v125 = v46;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  result = sub_1BE0516A4();
  v114 = v32;
  v117 = v39;
  if ((v123 & 1) == 0)
  {
    v119 = v28;
    v111 = v18;
    v112 = v14;
    v110 = a3;
    v48 = *(v39 + 16);
    LODWORD(v106) = v45;
    if (v48)
    {
      v121 = *(v32 + 20);
      v49 = v39 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
      v50 = *(v116 + 72);
      v51 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v52 = v5;
        sub_1BD930FE0(v49, v38, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
        v53 = *(v121 + v38);
        sub_1BE048C84();
        result = sub_1BD935C74(v38, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
        v54 = *(v53 + 16);
        v55 = v51[2];
        v56 = v55 + v54;
        if (__OFADD__(v55, v54))
        {
          break;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || v56 > v51[3] >> 1)
        {
          if (v55 <= v56)
          {
            v57 = v55 + v54;
          }

          else
          {
            v57 = v55;
          }

          result = sub_1BD1D9A28(result, v57, 1, v51);
          v51 = result;
        }

        v5 = v52;
        if (*(v53 + 16))
        {
          if ((v51[3] >> 1) - v51[2] < v54)
          {
            goto LABEL_55;
          }

          swift_arrayInitWithCopy();

          if (v54)
          {
            v58 = v51[2];
            v59 = __OFADD__(v58, v54);
            v60 = v58 + v54;
            if (v59)
            {
              goto LABEL_57;
            }

            v51[2] = v60;
          }
        }

        else
        {

          if (v54)
          {
            goto LABEL_54;
          }
        }

        v49 += v50;
        if (!--v48)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v51 = MEMORY[0x1E69E7CC0];
LABEL_19:
    v61 = v51[2];

    a3 = v110;
    if (*(*v110 + 32))
    {
      v62 = MEMORY[0x1E69BB6F8];
    }

    else
    {
      v62 = MEMORY[0x1E69BB718];
    }

    v63 = *v62;
    sub_1BD6BB4C0(v63, v61);

    LOBYTE(v124) = v106;
    v125 = v115;
    LOBYTE(v123) = 1;
    result = sub_1BE0516B4();
    v18 = v111;
    v14 = v112;
    v28 = v119;
    v39 = v117;
  }

  if (!*(v39 + 16))
  {
    return result;
  }

  v64 = *a3;
  swift_getKeyPath();
  v65 = OBJC_IVAR____TtC9PassKitUI26MerchantTokenListViewModel___observationRegistrar;
  v124 = v64;
  v66 = sub_1BD928A24(&qword_1EBD42BB0, type metadata accessor for MerchantTokenListViewModel);
  sub_1BE04B594();

  result = v117;
  v67 = *(v64 + 72);
  if (!v67)
  {
    return result;
  }

  v102 = v66;
  v100 = v65;
  v110 = a3;
  v119 = v28;
  v101 = v64;
  v68 = (v64 + 64);
  v69 = *(v64 + 64);
  v99 = v68;
  v70 = (v122 + 56);
  v121 = (v122 + 48);
  v106 = (v116 + 56);
  v105 = (v116 + 48);
  swift_bridgeObjectRetain_n();
  result = sub_1BE048C84();
  v71 = 0;
  v115 = 0;
  v111 = v18;
  v112 = v14;
  while (1)
  {
    if (!v71)
    {
      goto LABEL_36;
    }

    v72 = *(v71 + 16);
    if (v72)
    {
      break;
    }

LABEL_35:
    v80 = v118;
    (*v70)(v118, 1, 1, v5);
    result = sub_1BD0DE53C(v80, &qword_1EBD59280);
    v18 = v111;
    v14 = v112;
LABEL_36:
    v81 = *(v117 + 16);
    if (v115 == v81)
    {
      v82 = 1;
    }

    else
    {
      if (v115 >= v81)
      {
        goto LABEL_58;
      }

      v83 = v115;
      sub_1BD930FE0(v117 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v115, v18, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
      v82 = 0;
      v115 = v83 + 1;
    }

    v84 = v114;
    (*v106)(v18, v82, 1, v114);
    sub_1BD0DE204(v18, v14, &qword_1EBD50190);
    if ((*v105)(v14, 1, v84) == 1)
    {
      swift_bridgeObjectRelease_n();

      v76 = *v70;
      (*v70)(v119, 1, 1, v5);
LABEL_44:

      v87 = v108;
      v76(v108, 1, 1, v5);
LABEL_45:
      v88 = v107;
      v89 = v110;
      v90 = v101;
      sub_1BD0DE19C(v87, v107, &qword_1EBD59280);
      if ((*v121)(v88, 1, v5) == 1)
      {
        sub_1BD0DE53C(v88, &qword_1EBD59280);
        v91 = v89 + *(v103 + 40);
        v92 = *v91;
        v93 = *(v91 + 1);
        LOBYTE(v124) = v92;
        v125 = v93;
        LOBYTE(v123) = 1;
        sub_1BE0516B4();
        if (*(v90 + 72))
        {
          goto LABEL_47;
        }

LABEL_49:
        v97 = v99;
        *v99 = 0;
        v97[1] = 0;
      }

      else
      {
        v96 = v104;
        sub_1BD93641C(v88, v104, type metadata accessor for UnifiedMerchantTokenData);
        (v89[1])(v96);
        sub_1BD935C74(v96, type metadata accessor for UnifiedMerchantTokenData);
        if (!*(v90 + 72))
        {
          goto LABEL_49;
        }

LABEL_47:
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath, v95);
        *(&v98 - 3) = 0;
        *(&v98 - 2) = 0;
        *(&v98 - 4) = v90;
        v124 = v90;
        sub_1BE04B584();
        v87 = v108;
      }

      return sub_1BD0DE53C(v87, &qword_1EBD59280);
    }

    v85 = v113;
    sub_1BD93641C(v14, v113, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
    v86 = *(v85 + *(v84 + 20));
    sub_1BE048C84();
    sub_1BD935C74(v85, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);

    v71 = v86;
  }

  v73 = 0;
  while (v73 < v72)
  {
    v74 = v122;
    v75 = v118;
    sub_1BD930FE0(v71 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v122 + 72) * v73, v118, type metadata accessor for UnifiedMerchantTokenData);
    v76 = *(v74 + 56);
    v76(v75, 0, 1, v5);
    v77 = v75;
    v78 = v119;
    sub_1BD0DE204(v77, v119, &qword_1EBD59280);
    if ((*(v74 + 48))(v78, 1, v5) == 1)
    {
      swift_bridgeObjectRelease_n();

      goto LABEL_44;
    }

    v79 = v120;
    sub_1BD93641C(v78, v120, type metadata accessor for UnifiedMerchantTokenData);
    if (*(v79 + 16) == v69 && v67 == *(v79 + 24) || (sub_1BE053B84() & 1) != 0)
    {

      swift_bridgeObjectRelease_n();
      v87 = v108;
      sub_1BD93641C(v120, v108, type metadata accessor for UnifiedMerchantTokenData);
      v76(v87, 0, 1, v5);
      goto LABEL_45;
    }

    ++v73;
    result = sub_1BD935C74(v120, type metadata accessor for UnifiedMerchantTokenData);
    v72 = *(v71 + 16);
    if (v73 == v72)
    {
      goto LABEL_35;
    }
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

id sub_1BD9308AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F8);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = v16 - v2;
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v9, *MEMORY[0x1E69B8080], v4, v7);
  result = PKPassKitBundle();
  if (result)
  {
    v11 = result;
    v12 = sub_1BE04B6F4();
    v14 = v13;

    (*(v5 + 8))(v9, v4);
    v16[0] = v12;
    v16[1] = v14;
    sub_1BE04E1B4();
    v15 = sub_1BE04E1D4();
    (*(*(v15 - 8) + 56))(v3, 0, 1, v15);
    sub_1BD0DDEBC();
    return sub_1BE051724();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD930ABC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B8080], v2, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v3 + 8))(v7, v2);
    v16[0] = v10;
    v16[1] = v12;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v13;
    *(a1 + 16) = v14 & 1;
    *(a1 + 24) = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD930C28()
{
  sub_1BE0528A4();
  v0[18] = sub_1BE052894();
  v2 = sub_1BE052844();
  v0[19] = v2;
  v0[20] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1BD930CBC, v2, v1);
}

uint64_t sub_1BD930CBC()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
  v0[21] = v1;
  v0[2] = v0;
  v0[3] = sub_1BD930DEC;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59278);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1BD930F60;
  v0[13] = &block_descriptor_213;
  v0[14] = v2;
  [v1 refreshMerchantTokenMetadataWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BD930DEC()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1BD930EF4, v2, v1);
}

uint64_t sub_1BD930EF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD930F60(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return MEMORY[0x1EEE6DED8](v1);
}

uint64_t sub_1BD930FE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD931074(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_1BE053B14();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a2(0);
        v12 = sub_1BE0527B4();
        *(v12 + 16) = v11;
      }

      v13 = *((a2)(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

void sub_1BD9311C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = type metadata accessor for UnifiedMerchantTokenData(0);
  MEMORY[0x1EEE9AC00](v37, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v29 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v29 - v18;
  v31 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v23 = -v21;
    v24 = a1 - a3;
    v36 = v20;
    v30 = v21;
    v25 = v20 + v21 * a3;
LABEL_6:
    v34 = v22;
    v35 = a3;
    v32 = v25;
    v33 = v24;
    while (1)
    {
      sub_1BD930FE0(v25, v19, type metadata accessor for UnifiedMerchantTokenData);
      sub_1BD930FE0(v22, v14, type metadata accessor for UnifiedMerchantTokenData);
      if (*(v19 + 4) == *(v14 + 4) && *(v19 + 5) == *(v14 + 5))
      {
        sub_1BD935C74(v14, type metadata accessor for UnifiedMerchantTokenData);
        sub_1BD935C74(v19, type metadata accessor for UnifiedMerchantTokenData);
LABEL_5:
        a3 = v35 + 1;
        v22 = v34 + v30;
        v24 = v33 - 1;
        v25 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return;
        }

        goto LABEL_6;
      }

      v27 = sub_1BE053B84();
      sub_1BD935C74(v14, type metadata accessor for UnifiedMerchantTokenData);
      sub_1BD935C74(v19, type metadata accessor for UnifiedMerchantTokenData);
      if ((v27 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      sub_1BD93641C(v25, v10, type metadata accessor for UnifiedMerchantTokenData);
      swift_arrayInitWithTakeFrontToBack();
      sub_1BD93641C(v10, v22, type metadata accessor for UnifiedMerchantTokenData);
      v22 += v23;
      v25 += v23;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1BD931450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v41 = type metadata accessor for UnifiedMerchantTokenData(0);
  MEMORY[0x1EEE9AC00](v41, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v29 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v29 - v18;
  v31 = a2;
  if (a3 != a2)
  {
    v20 = *(v17 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = *a4;
    v30 = v20;
    v24 = v36 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    while (1)
    {
      sub_1BD930FE0(v24, v19, type metadata accessor for UnifiedMerchantTokenData);
      sub_1BD930FE0(v21, v14, type metadata accessor for UnifiedMerchantTokenData);
      v25 = *(v19 + 5);
      v39 = *(v19 + 4);
      v40 = v25;
      v26 = *(v14 + 5);
      v37 = *(v14 + 4);
      v38 = v26;
      sub_1BD0DDEBC();
      v27 = sub_1BE0535B4();
      sub_1BD935C74(v14, type metadata accessor for UnifiedMerchantTokenData);
      sub_1BD935C74(v19, type metadata accessor for UnifiedMerchantTokenData);
      if (v27 != -1)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      sub_1BD93641C(v24, v10, type metadata accessor for UnifiedMerchantTokenData);
      swift_arrayInitWithTakeFrontToBack();
      sub_1BD93641C(v10, v21, type metadata accessor for UnifiedMerchantTokenData);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1BD9316CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59178);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v67 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v47 - v13;
  v57 = type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection(0);
  MEMORY[0x1EEE9AC00](v57, v15);
  v56 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v60 = &v47 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v47 - v23;
  v49 = a2;
  if (a3 != a2)
  {
    v25 = *a4;
    v26 = *(v22 + 72);
    v27 = *a4 + v26 * (a3 - 1);
    v54 = -v26;
    v55 = v25;
    v28 = a1 - a3;
    v48 = v26;
    v29 = v25 + v26 * a3;
    v58 = &v47 - v23;
    v59 = v14;
LABEL_5:
    v52 = v27;
    v53 = a3;
    v50 = v29;
    v51 = v28;
    while (1)
    {
      v61 = v28;
      v62 = v29;
      sub_1BD930FE0(v29, v24, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
      v30 = v60;
      sub_1BD930FE0(v27, v60, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
      sub_1BD0DE19C(v24, v14, &qword_1EBD59178);
      v31 = type metadata accessor for MerchantTokenListViewModel.SectionCard(0);
      v32 = *(*(v31 - 8) + 48);
      if (v32(v14, 1, v31) == 1)
      {
        break;
      }

      v33 = &v14[*(v31 + 28)];
      v34 = v14;
      v35 = *v33;
      v36 = *(v33 + 1);
      sub_1BE048C84();
      sub_1BD935C74(v34, type metadata accessor for MerchantTokenListViewModel.SectionCard);
      v65 = v35;
      v66 = v36;
      v37 = v67;
      sub_1BD0DE19C(v30, v67, &qword_1EBD59178);
      if (v32(v37, 1, v31) == 1)
      {
        goto LABEL_14;
      }

      v38 = v67;
      v39 = (v67 + *(v31 + 28));
      v40 = *v39;
      v41 = v39[1];
      sub_1BE048C84();
      sub_1BD935C74(v38, type metadata accessor for MerchantTokenListViewModel.SectionCard);
      v63 = v40;
      v64 = v41;
      sub_1BD0DDEBC();
      v42 = sub_1BE0535B4();

      sub_1BD935C74(v30, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
      v24 = v58;
      sub_1BD935C74(v58, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
      v14 = v59;
      v44 = v61;
      v43 = v62;
      if (v42 == -1)
      {
        if (!v55)
        {
          goto LABEL_15;
        }

        v45 = v56;
        sub_1BD93641C(v62, v56, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
        swift_arrayInitWithTakeFrontToBack();
        sub_1BD93641C(v45, v27, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
        v27 += v54;
        v29 = v43 + v54;
        v46 = __CFADD__(v44, 1);
        v28 = v44 + 1;
        if (!v46)
        {
          continue;
        }
      }

      a3 = v53 + 1;
      v27 = v52 + v48;
      v28 = v51 - 1;
      v29 = v50 + v48;
      if (v53 + 1 == v49)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }
}

void sub_1BD931B10(int64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v4;
  v131 = a1;
  v145 = type metadata accessor for UnifiedMerchantTokenData(0);
  v138 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145, v9);
  v134 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v144 = &v125 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v125 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v125 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v142 = &v125 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v141 = &v125 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v130 = &v125 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v129 = &v125 - v33;
  v34 = *(a3 + 8);
  if (v34 < 1)
  {
    v36 = MEMORY[0x1E69E7CC0];
LABEL_110:
    v5 = *v131;
    if (!*v131)
    {
      goto LABEL_148;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_112:
      v146 = v36;
      v120 = *(v36 + 16);
      if (v120 >= 2)
      {
        while (*a3)
        {
          v121 = v36;
          v36 = *(v36 + 16 * v120);
          v122 = v121;
          v123 = *&v121[16 * v120 + 24];
          sub_1BD933D50(*a3 + *(v138 + 72) * v36, *a3 + *(v138 + 72) * *&v121[16 * v120 + 16], *a3 + *(v138 + 72) * v123, v5);
          if (v6)
          {
            goto LABEL_120;
          }

          if (v123 < v36)
          {
            goto LABEL_135;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v122 = sub_1BD5ED6C8(v122);
          }

          if (v120 - 2 >= *(v122 + 2))
          {
            goto LABEL_136;
          }

          v124 = &v122[16 * v120];
          *v124 = v36;
          v124[1] = v123;
          v146 = v122;
          sub_1BD5ED63C(v120 - 1);
          v36 = v146;
          v120 = *(v146 + 16);
          if (v120 <= 1)
          {
            goto LABEL_120;
          }
        }

        goto LABEL_146;
      }

LABEL_120:

      return;
    }

LABEL_142:
    v36 = sub_1BD5ED6C8(v36);
    goto LABEL_112;
  }

  v125 = a4;
  v35 = 0;
  v36 = MEMORY[0x1E69E7CC0];
  v139 = a3;
  v135 = v21;
  while (1)
  {
    v37 = v35;
    v38 = v35 + 1;
    if (v35 + 1 < v34)
    {
      v136 = v34;
      v126 = v36;
      v39 = *a3;
      v40 = *(v138 + 72);
      v41 = v35 + 1;
      v42 = v129;
      sub_1BD930FE0(v39 + v40 * v38, v129, type metadata accessor for UnifiedMerchantTokenData);
      v140 = v40;
      v43 = v39 + v40 * v37;
      v44 = v130;
      sub_1BD930FE0(v43, v130, type metadata accessor for UnifiedMerchantTokenData);
      v45 = *(v42 + 32) == *(v44 + 32) && *(v42 + 40) == *(v44 + 40);
      v127 = v6;
      if (v45)
      {
        LODWORD(v137) = 0;
      }

      else
      {
        LODWORD(v137) = sub_1BE053B84();
      }

      sub_1BD935C74(v130, type metadata accessor for UnifiedMerchantTokenData);
      sub_1BD935C74(v129, type metadata accessor for UnifiedMerchantTokenData);
      v128 = v37;
      v46 = v37 + 2;
      v47 = v140 * (v37 + 2);
      v48 = v39 + v47;
      v49 = v41;
      v50 = v140 * v41;
      a3 = v39 + v140 * v41;
      do
      {
        v52 = v46;
        v36 = v49;
        v5 = v50;
        v53 = v47;
        v143 = v46;
        if (v46 >= v136)
        {
          break;
        }

        v54 = v17;
        v55 = v141;
        sub_1BD930FE0(v48, v141, type metadata accessor for UnifiedMerchantTokenData);
        v56 = v142;
        sub_1BD930FE0(a3, v142, type metadata accessor for UnifiedMerchantTokenData);
        v57 = *(v55 + 32) == *(v56 + 32) && *(v55 + 40) == *(v56 + 40);
        v51 = v57 ? 0 : sub_1BE053B84();
        v17 = v54;
        v6 = type metadata accessor for UnifiedMerchantTokenData;
        sub_1BD935C74(v142, type metadata accessor for UnifiedMerchantTokenData);
        sub_1BD935C74(v141, type metadata accessor for UnifiedMerchantTokenData);
        v52 = v143;
        v46 = v143 + 1;
        v48 += v140;
        a3 += v140;
        v49 = v36 + 1;
        v50 = v5 + v140;
        v47 = v53 + v140;
        v21 = v135;
      }

      while (((v137 ^ v51) & 1) == 0);
      if ((v137 & 1) == 0)
      {
        v38 = v52;
LABEL_36:
        v36 = v126;
        v6 = v127;
        a3 = v139;
        v37 = v128;
        goto LABEL_37;
      }

      if (v52 < v128)
      {
        goto LABEL_139;
      }

      if (v128 < v52)
      {
        v58 = v128 * v140;
        v59 = v128;
        do
        {
          if (v59 != v36)
          {
            v61 = *v139;
            if (!*v139)
            {
              goto LABEL_145;
            }

            sub_1BD93641C(v61 + v58, v134, type metadata accessor for UnifiedMerchantTokenData);
            if (v58 < v5 || v61 + v58 >= (v61 + v53))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v58 != v5)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1BD93641C(v134, v61 + v5, type metadata accessor for UnifiedMerchantTokenData);
          }

          ++v59;
          v5 -= v140;
          v53 -= v140;
          v58 += v140;
        }

        while (v59 < v36--);
        v38 = v143;
        goto LABEL_36;
      }

      v38 = v52;
      v36 = v126;
      v6 = v127;
      a3 = v139;
      v37 = v128;
    }

LABEL_37:
    v62 = *(a3 + 8);
    if (v38 < v62)
    {
      if (__OFSUB__(v38, v37))
      {
        goto LABEL_138;
      }

      if (v38 - v37 < v125)
      {
        break;
      }
    }

LABEL_59:
    if (v38 < v37)
    {
      goto LABEL_137;
    }

    v143 = v38;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_1BD1D7844(0, *(v36 + 16) + 1, 1, v36);
    }

    v74 = *(v36 + 16);
    v73 = *(v36 + 24);
    v75 = v74 + 1;
    v35 = v143;
    if (v74 >= v73 >> 1)
    {
      v119 = sub_1BD1D7844((v73 > 1), v74 + 1, 1, v36);
      v35 = v143;
      v36 = v119;
    }

    *(v36 + 16) = v75;
    v76 = v36 + 16 * v74;
    *(v76 + 32) = v37;
    *(v76 + 40) = v35;
    v5 = *v131;
    if (!*v131)
    {
      goto LABEL_147;
    }

    if (v74)
    {
      while (1)
      {
        a3 = v75 - 1;
        if (v75 >= 4)
        {
          break;
        }

        if (v75 == 3)
        {
          v77 = *(v36 + 32);
          v78 = *(v36 + 40);
          v87 = __OFSUB__(v78, v77);
          v79 = v78 - v77;
          v80 = v87;
LABEL_79:
          if (v80)
          {
            goto LABEL_126;
          }

          v93 = (v36 + 16 * v75);
          v95 = *v93;
          v94 = v93[1];
          v96 = __OFSUB__(v94, v95);
          v97 = v94 - v95;
          v98 = v96;
          if (v96)
          {
            goto LABEL_129;
          }

          v99 = (v36 + 32 + 16 * a3);
          v101 = *v99;
          v100 = v99[1];
          v87 = __OFSUB__(v100, v101);
          v102 = v100 - v101;
          if (v87)
          {
            goto LABEL_132;
          }

          if (__OFADD__(v97, v102))
          {
            goto LABEL_133;
          }

          if (v97 + v102 >= v79)
          {
            if (v79 < v102)
            {
              a3 = v75 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        v103 = (v36 + 16 * v75);
        v105 = *v103;
        v104 = v103[1];
        v87 = __OFSUB__(v104, v105);
        v97 = v104 - v105;
        v98 = v87;
LABEL_93:
        if (v98)
        {
          goto LABEL_128;
        }

        v106 = v36 + 16 * a3;
        v108 = *(v106 + 32);
        v107 = *(v106 + 40);
        v87 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v87)
        {
          goto LABEL_131;
        }

        if (v109 < v97)
        {
          goto LABEL_3;
        }

LABEL_100:
        v114 = a3 - 1;
        if (a3 - 1 >= v75)
        {
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
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*v139)
        {
          goto LABEL_144;
        }

        v115 = v36;
        v116 = v36 + 32;
        v36 = *(v36 + 32 + 16 * v114);
        v117 = *(v116 + 16 * a3 + 8);
        sub_1BD933D50(*v139 + *(v138 + 72) * v36, *v139 + *(v138 + 72) * *(v116 + 16 * a3), *v139 + *(v138 + 72) * v117, v5);
        if (v6)
        {
          goto LABEL_120;
        }

        if (v117 < v36)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_1BD5ED6C8(v115);
        }

        if (v114 >= *(v115 + 2))
        {
          goto LABEL_123;
        }

        v118 = &v115[16 * v114];
        *(v118 + 4) = v36;
        *(v118 + 5) = v117;
        v146 = v115;
        sub_1BD5ED63C(a3);
        v36 = v146;
        v75 = *(v146 + 16);
        v35 = v143;
        if (v75 <= 1)
        {
          goto LABEL_3;
        }
      }

      v81 = v36 + 32 + 16 * v75;
      v82 = *(v81 - 64);
      v83 = *(v81 - 56);
      v87 = __OFSUB__(v83, v82);
      v84 = v83 - v82;
      if (v87)
      {
        goto LABEL_124;
      }

      v86 = *(v81 - 48);
      v85 = *(v81 - 40);
      v87 = __OFSUB__(v85, v86);
      v79 = v85 - v86;
      v80 = v87;
      if (v87)
      {
        goto LABEL_125;
      }

      v88 = (v36 + 16 * v75);
      v90 = *v88;
      v89 = v88[1];
      v87 = __OFSUB__(v89, v90);
      v91 = v89 - v90;
      if (v87)
      {
        goto LABEL_127;
      }

      v87 = __OFADD__(v79, v91);
      v92 = v79 + v91;
      if (v87)
      {
        goto LABEL_130;
      }

      if (v92 >= v84)
      {
        v110 = (v36 + 32 + 16 * a3);
        v112 = *v110;
        v111 = v110[1];
        v87 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v87)
        {
          goto LABEL_134;
        }

        if (v79 < v113)
        {
          a3 = v75 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_79;
    }

LABEL_3:
    a3 = v139;
    v34 = v139[1];
    if (v35 >= v34)
    {
      goto LABEL_110;
    }
  }

  v63 = v37 + v125;
  if (__OFADD__(v37, v125))
  {
    goto LABEL_140;
  }

  if (v63 >= v62)
  {
    v63 = *(a3 + 8);
  }

  if (v63 < v37)
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  if (v38 == v63)
  {
    goto LABEL_59;
  }

  v126 = v36;
  v127 = v6;
  a3 = *a3;
  v64 = *(v138 + 72);
  v65 = a3 + v64 * (v38 - 1);
  v66 = v37;
  v67 = -v64;
  v128 = v66;
  v68 = v66 - v38;
  v132 = v64;
  v133 = v63;
  v5 = a3 + v38 * v64;
LABEL_48:
  v143 = v38;
  v136 = v5;
  v137 = v68;
  v140 = v65;
  while (1)
  {
    sub_1BD930FE0(v5, v21, type metadata accessor for UnifiedMerchantTokenData);
    sub_1BD930FE0(v65, v17, type metadata accessor for UnifiedMerchantTokenData);
    if (*(v21 + 4) == *(v17 + 4) && *(v21 + 5) == *(v17 + 5))
    {
      sub_1BD935C74(v17, type metadata accessor for UnifiedMerchantTokenData);
      sub_1BD935C74(v21, type metadata accessor for UnifiedMerchantTokenData);
LABEL_47:
      v38 = v143 + 1;
      v65 = v140 + v132;
      v68 = v137 - 1;
      v5 = v136 + v132;
      if (v143 + 1 == v133)
      {
        v38 = v133;
        v36 = v126;
        v6 = v127;
        v37 = v128;
        goto LABEL_59;
      }

      goto LABEL_48;
    }

    v70 = sub_1BE053B84();
    sub_1BD935C74(v17, type metadata accessor for UnifiedMerchantTokenData);
    sub_1BD935C74(v21, type metadata accessor for UnifiedMerchantTokenData);
    if ((v70 & 1) == 0)
    {
      goto LABEL_47;
    }

    if (!a3)
    {
      break;
    }

    v71 = v144;
    sub_1BD93641C(v5, v144, type metadata accessor for UnifiedMerchantTokenData);
    swift_arrayInitWithTakeFrontToBack();
    sub_1BD93641C(v71, v65, type metadata accessor for UnifiedMerchantTokenData);
    v65 += v67;
    v5 += v67;
    if (__CFADD__(v68++, 1))
    {
      goto LABEL_47;
    }
  }

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
}

void sub_1BD93256C(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v108 = a1;
  v120 = type metadata accessor for UnifiedMerchantTokenData(0);
  v115 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120, v8);
  v109 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v119 = &v104 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v104 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v104 - v19;
  v117 = a3;
  v21 = *(a3 + 8);
  if (v21 >= 1)
  {
    v106 = a4;
    v22 = 0;
    v23 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v22 + 1 >= v21)
      {
        v30 = v22 + 1;
      }

      else
      {
        v118 = v21;
        v111 = v5;
        v24 = *v117;
        v25 = *(v115 + 72);
        a3 = *v117 + v25 * (v22 + 1);
        sub_1BD930FE0(a3, v20, type metadata accessor for UnifiedMerchantTokenData);
        sub_1BD930FE0(v24 + v25 * v22, v16, type metadata accessor for UnifiedMerchantTokenData);
        v26 = *(v20 + 5);
        v123 = *(v20 + 4);
        v124 = v26;
        v27 = *(v16 + 5);
        v121 = *(v16 + 4);
        v122 = v27;
        v113 = sub_1BD0DDEBC();
        v114 = sub_1BE0535B4();
        sub_1BD935C74(v16, type metadata accessor for UnifiedMerchantTokenData);
        sub_1BD935C74(v20, type metadata accessor for UnifiedMerchantTokenData);
        v107 = v22;
        v28 = v22 + 2;
        v116 = v25;
        v29 = v24 + v25 * v28;
        while (1)
        {
          v30 = v118;
          if (v118 == v28)
          {
            break;
          }

          v31 = v23;
          v32 = v114 == -1;
          sub_1BD930FE0(v29, v20, type metadata accessor for UnifiedMerchantTokenData);
          sub_1BD930FE0(a3, v16, type metadata accessor for UnifiedMerchantTokenData);
          v33 = *(v20 + 5);
          v123 = *(v20 + 4);
          v124 = v33;
          v34 = *(v16 + 5);
          v121 = *(v16 + 4);
          v122 = v34;
          v35 = sub_1BE0535B4();
          sub_1BD935C74(v16, type metadata accessor for UnifiedMerchantTokenData);
          sub_1BD935C74(v20, type metadata accessor for UnifiedMerchantTokenData);
          v36 = v32 ^ (v35 != -1);
          v23 = v31;
          ++v28;
          v29 += v116;
          a3 += v116;
          if ((v36 & 1) == 0)
          {
            v30 = v28 - 1;
            break;
          }
        }

        v5 = v111;
        v22 = v107;
        if (v114 == -1)
        {
          if (v30 < v107)
          {
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
            __break(1u);
LABEL_132:
            __break(1u);
            return;
          }

          if (v107 < v30)
          {
            v105 = v23;
            v37 = v116 * (v30 - 1);
            v38 = v30 * v116;
            v118 = v30;
            v39 = v107 * v116;
            do
            {
              if (v22 != --v30)
              {
                v111 = v5;
                v40 = *v117;
                if (!*v117)
                {
                  goto LABEL_130;
                }

                a3 = v40 + v39;
                sub_1BD93641C(v40 + v39, v109, type metadata accessor for UnifiedMerchantTokenData);
                if (v39 < v37 || a3 >= v40 + v38)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v39 != v37)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_1BD93641C(v109, v40 + v37, type metadata accessor for UnifiedMerchantTokenData);
                v5 = v111;
              }

              ++v22;
              v37 -= v116;
              v38 -= v116;
              v39 += v116;
            }

            while (v22 < v30);
            v23 = v105;
            v22 = v107;
            v30 = v118;
          }
        }
      }

      v41 = v117[1];
      if (v30 >= v41)
      {
        goto LABEL_32;
      }

      if (__OFSUB__(v30, v22))
      {
        goto LABEL_122;
      }

      if (v30 - v22 >= v106)
      {
        goto LABEL_32;
      }

      if (__OFADD__(v22, v106))
      {
        goto LABEL_123;
      }

      if (v22 + v106 >= v41)
      {
        v42 = v117[1];
      }

      else
      {
        v42 = v22 + v106;
      }

      if (v42 < v22)
      {
LABEL_124:
        __break(1u);
        goto LABEL_125;
      }

      if (v30 == v42)
      {
LABEL_32:
        v43 = v30;
        if (v30 < v22)
        {
          goto LABEL_121;
        }
      }

      else
      {
        v105 = v23;
        v111 = v5;
        v112 = v42;
        v89 = *v117;
        v90 = *(v115 + 72);
        v91 = *v117 + v90 * (v30 - 1);
        v92 = -v90;
        v107 = v22;
        v93 = v22 - v30;
        v110 = v90;
        a3 = v89 + v30 * v90;
        do
        {
          v118 = v30;
          v113 = a3;
          v114 = v93;
          v116 = v91;
          v94 = v91;
          do
          {
            sub_1BD930FE0(a3, v20, type metadata accessor for UnifiedMerchantTokenData);
            sub_1BD930FE0(v94, v16, type metadata accessor for UnifiedMerchantTokenData);
            v95 = *(v20 + 5);
            v123 = *(v20 + 4);
            v124 = v95;
            v96 = *(v16 + 5);
            v121 = *(v16 + 4);
            v122 = v96;
            sub_1BD0DDEBC();
            v97 = sub_1BE0535B4();
            sub_1BD935C74(v16, type metadata accessor for UnifiedMerchantTokenData);
            sub_1BD935C74(v20, type metadata accessor for UnifiedMerchantTokenData);
            if (v97 != -1)
            {
              break;
            }

            if (!v89)
            {
              goto LABEL_127;
            }

            v98 = v119;
            sub_1BD93641C(a3, v119, type metadata accessor for UnifiedMerchantTokenData);
            swift_arrayInitWithTakeFrontToBack();
            sub_1BD93641C(v98, v94, type metadata accessor for UnifiedMerchantTokenData);
            v94 += v92;
            a3 += v92;
          }

          while (!__CFADD__(v93++, 1));
          v30 = v118 + 1;
          v91 = v116 + v110;
          v93 = v114 - 1;
          a3 = v113 + v110;
          v43 = v112;
        }

        while (v118 + 1 != v112);
        v5 = v111;
        v23 = v105;
        v22 = v107;
        if (v112 < v107)
        {
          goto LABEL_121;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1BD1D7844(0, *(v23 + 2) + 1, 1, v23);
      }

      a3 = *(v23 + 2);
      v44 = *(v23 + 3);
      v45 = a3 + 1;
      if (a3 >= v44 >> 1)
      {
        v23 = sub_1BD1D7844((v44 > 1), a3 + 1, 1, v23);
      }

      *(v23 + 2) = v45;
      v46 = &v23[16 * a3];
      *(v46 + 4) = v22;
      *(v46 + 5) = v43;
      v112 = v43;
      v47 = *v108;
      if (!*v108)
      {
        goto LABEL_131;
      }

      if (a3)
      {
        while (1)
        {
          a3 = v45 - 1;
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v48 = *(v23 + 4);
            v49 = *(v23 + 5);
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
LABEL_52:
            if (v51)
            {
              goto LABEL_110;
            }

            v64 = &v23[16 * v45];
            v66 = *v64;
            v65 = *(v64 + 1);
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_113;
            }

            v70 = &v23[16 * a3 + 32];
            v72 = *v70;
            v71 = *(v70 + 1);
            v58 = __OFSUB__(v71, v72);
            v73 = v71 - v72;
            if (v58)
            {
              goto LABEL_116;
            }

            if (__OFADD__(v68, v73))
            {
              goto LABEL_117;
            }

            if (v68 + v73 >= v50)
            {
              if (v50 < v73)
              {
                a3 = v45 - 2;
              }

              goto LABEL_73;
            }

            goto LABEL_66;
          }

          v74 = &v23[16 * v45];
          v76 = *v74;
          v75 = *(v74 + 1);
          v58 = __OFSUB__(v75, v76);
          v68 = v75 - v76;
          v69 = v58;
LABEL_66:
          if (v69)
          {
            goto LABEL_112;
          }

          v77 = &v23[16 * a3];
          v79 = *(v77 + 4);
          v78 = *(v77 + 5);
          v58 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v58)
          {
            goto LABEL_115;
          }

          if (v80 < v68)
          {
            goto LABEL_3;
          }

LABEL_73:
          v85 = a3 - 1;
          if (a3 - 1 >= v45)
          {
            __break(1u);
LABEL_106:
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
LABEL_113:
            __break(1u);
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
            goto LABEL_124;
          }

          if (!*v117)
          {
            goto LABEL_128;
          }

          v86 = *&v23[16 * v85 + 32];
          v87 = *&v23[16 * a3 + 40];
          sub_1BD9342FC(*v117 + *(v115 + 72) * v86, *v117 + *(v115 + 72) * *&v23[16 * a3 + 32], *v117 + *(v115 + 72) * v87, v47);
          if (v5)
          {
            goto LABEL_104;
          }

          if (v87 < v86)
          {
            goto LABEL_106;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_1BD5ED6C8(v23);
          }

          if (v85 >= *(v23 + 2))
          {
            goto LABEL_107;
          }

          v88 = &v23[16 * v85];
          *(v88 + 4) = v86;
          *(v88 + 5) = v87;
          v125 = v23;
          sub_1BD5ED63C(a3);
          v23 = v125;
          v45 = *(v125 + 2);
          if (v45 <= 1)
          {
            goto LABEL_3;
          }
        }

        v52 = &v23[16 * v45 + 32];
        v53 = *(v52 - 64);
        v54 = *(v52 - 56);
        v58 = __OFSUB__(v54, v53);
        v55 = v54 - v53;
        if (v58)
        {
          goto LABEL_108;
        }

        v57 = *(v52 - 48);
        v56 = *(v52 - 40);
        v58 = __OFSUB__(v56, v57);
        v50 = v56 - v57;
        v51 = v58;
        if (v58)
        {
          goto LABEL_109;
        }

        v59 = &v23[16 * v45];
        v61 = *v59;
        v60 = *(v59 + 1);
        v58 = __OFSUB__(v60, v61);
        v62 = v60 - v61;
        if (v58)
        {
          goto LABEL_111;
        }

        v58 = __OFADD__(v50, v62);
        v63 = v50 + v62;
        if (v58)
        {
          goto LABEL_114;
        }

        if (v63 >= v55)
        {
          v81 = &v23[16 * a3 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v58 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v58)
          {
            goto LABEL_118;
          }

          if (v50 < v84)
          {
            a3 = v45 - 2;
          }

          goto LABEL_73;
        }

        goto LABEL_52;
      }

LABEL_3:
      v21 = v117[1];
      v22 = v112;
      if (v112 >= v21)
      {
        goto LABEL_94;
      }
    }
  }

  v23 = MEMORY[0x1E69E7CC0];
LABEL_94:
  a3 = *v108;
  if (!*v108)
  {
    goto LABEL_132;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_125:
    v23 = sub_1BD5ED6C8(v23);
  }

  v125 = v23;
  v100 = *(v23 + 2);
  if (v100 >= 2)
  {
    while (*v117)
    {
      v101 = *&v23[16 * v100];
      v102 = *&v23[16 * v100 + 24];
      sub_1BD9342FC(*v117 + *(v115 + 72) * v101, *v117 + *(v115 + 72) * *&v23[16 * v100 + 16], *v117 + *(v115 + 72) * v102, a3);
      if (v5)
      {
        goto LABEL_104;
      }

      if (v102 < v101)
      {
        goto LABEL_119;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1BD5ED6C8(v23);
      }

      if (v100 - 2 >= *(v23 + 2))
      {
        goto LABEL_120;
      }

      v103 = &v23[16 * v100];
      *v103 = v101;
      *(v103 + 1) = v102;
      v125 = v23;
      sub_1BD5ED63C(v100 - 1);
      v23 = v125;
      v100 = *(v125 + 2);
      if (v100 <= 1)
      {
        goto LABEL_104;
      }
    }

    goto LABEL_129;
  }

LABEL_104:
}

void sub_1BD932F10(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v5 = v4;
  v159 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59178);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v154 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v154 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v154 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v154 - v22;
  v178 = type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection(0);
  v172 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178, v24);
  v162 = &v154 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v177 = &v154 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v155 = &v154 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v182 = &v154 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v154 - v37;
  MEMORY[0x1EEE9AC00](v39, v40);
  v173 = &v154 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v157 = &v154 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v156 = &v154 - v47;
  v48 = a3[1];
  v163 = a3;
  if (v48 < 1)
  {
    v50 = MEMORY[0x1E69E7CC0];
    v51 = a3;
LABEL_98:
    a4 = *v159;
    if (*v159)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_132;
      }

      goto LABEL_100;
    }

    goto LABEL_142;
  }

  v168 = v19;
  v169 = v23;
  v49 = 0;
  v50 = MEMORY[0x1E69E7CC0];
  v158 = a4;
  v179 = v11;
  v180 = v15;
  v51 = a3;
  while (1)
  {
    v160 = v49;
    if (v49 + 1 >= v48)
    {
      v59 = v49 + 1;
      goto LABEL_26;
    }

    v174 = v48;
    v52 = *v51;
    v53 = *(v172 + 72);
    v181 = *v51 + v53 * (v49 + 1);
    v54 = v156;
    sub_1BD930FE0(v181, v156, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
    v55 = v157;
    sub_1BD930FE0(v52 + v53 * v160, v157, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
    LODWORD(v175) = sub_1BD922DE8(v54, v55);
    if (v5)
    {
      sub_1BD935C74(v55, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
      sub_1BD935C74(v54, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
      goto LABEL_110;
    }

    sub_1BD935C74(v55, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
    sub_1BD935C74(v54, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
    v56 = v160 + 2;
    v57 = v52 + v53 * (v160 + 2);
    v58 = v53;
    v176 = v53;
    v170 = v50;
    v171 = 0;
    do
    {
      v59 = v174;
      if (v174 == v56)
      {
        goto LABEL_12;
      }

      v60 = v173;
      sub_1BD930FE0(v57, v173, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
      sub_1BD930FE0(v181, v38, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
      v61 = v38;
      v62 = v169;
      sub_1BD0DE19C(v60, v169, &qword_1EBD59178);
      v63 = type metadata accessor for MerchantTokenListViewModel.SectionCard(0);
      v64 = *(*(v63 - 8) + 48);
      if (v64(v62, 1, v63) == 1)
      {
        goto LABEL_136;
      }

      v65 = (v62 + *(v63 + 28));
      v66 = v62;
      v68 = *v65;
      v67 = v65[1];
      sub_1BE048C84();
      sub_1BD935C74(v66, type metadata accessor for MerchantTokenListViewModel.SectionCard);
      v185 = v68;
      v186 = v67;
      v69 = v168;
      sub_1BD0DE19C(v61, v168, &qword_1EBD59178);
      if (v64(v69, 1, v63) == 1)
      {
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
        return;
      }

      v70 = (v69 + *(v63 + 28));
      v71 = *v70;
      v72 = v70[1];
      sub_1BE048C84();
      sub_1BD935C74(v69, type metadata accessor for MerchantTokenListViewModel.SectionCard);
      v183 = v71;
      v184 = v72;
      sub_1BD0DDEBC();
      v73 = sub_1BE0535B4();

      sub_1BD935C74(v61, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
      sub_1BD935C74(v173, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
      ++v56;
      v58 = v176;
      v57 += v176;
      v15 = v180;
      v181 += v176;
      v50 = v170;
      v38 = v61;
      v5 = v171;
    }

    while (((v175 ^ (v73 != -1)) & 1) != 0);
    v59 = v56 - 1;
LABEL_12:
    v51 = v163;
    a4 = v158;
    v49 = v160;
    if (v175)
    {
      break;
    }

LABEL_26:
    v80 = *(v51 + 8);
    if (v59 < v80)
    {
      if (__OFSUB__(v59, v49))
      {
        goto LABEL_128;
      }

      if (v59 - v49 < a4)
      {
        if (__OFADD__(v49, a4))
        {
          goto LABEL_129;
        }

        if ((v49 + a4) < v80)
        {
          v80 = v49 + a4;
        }

        if (v80 < v49)
        {
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        v164 = v80;
        if (v59 != v80)
        {
          v154 = v38;
          v170 = v50;
          v171 = v5;
          v81 = *v51;
          v82 = *(v172 + 72);
          a4 = *v51 + v82 * (v59 - 1);
          v175 = -v82;
          v176 = v81;
          v83 = v49 - v59;
          v161 = v82;
          v84 = v81 + v59 * v82;
          v85 = v155;
          do
          {
            v174 = v59;
            v165 = v84;
            v86 = v84;
            v166 = v83;
            v167 = a4;
            v87 = v83;
            while (1)
            {
              v181 = v87;
              v88 = v182;
              sub_1BD930FE0(v86, v182, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
              sub_1BD930FE0(a4, v85, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
              sub_1BD0DE19C(v88, v15, &qword_1EBD59178);
              v89 = type metadata accessor for MerchantTokenListViewModel.SectionCard(0);
              v90 = *(*(v89 - 8) + 48);
              v91 = v85;
              if (v90(v15, 1, v89) == 1)
              {
                goto LABEL_134;
              }

              v92 = &v15[*(v89 + 28)];
              v93 = v15;
              v94 = *v92;
              v95 = *(v92 + 1);
              sub_1BE048C84();
              sub_1BD935C74(v93, type metadata accessor for MerchantTokenListViewModel.SectionCard);
              v185 = v94;
              v186 = v95;
              v96 = v179;
              sub_1BD0DE19C(v91, v179, &qword_1EBD59178);
              if (v90(v96, 1, v89) == 1)
              {
                __break(1u);
LABEL_134:
                __break(1u);
LABEL_135:
                __break(1u);
LABEL_136:
                __break(1u);
                goto LABEL_137;
              }

              v97 = (v96 + *(v89 + 28));
              v98 = *v97;
              v99 = v97[1];
              sub_1BE048C84();
              sub_1BD935C74(v96, type metadata accessor for MerchantTokenListViewModel.SectionCard);
              v183 = v98;
              v184 = v99;
              sub_1BD0DDEBC();
              v100 = sub_1BE0535B4();

              sub_1BD935C74(v91, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
              sub_1BD935C74(v182, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
              v85 = v91;
              if (v100 != -1)
              {
                break;
              }

              v15 = v180;
              v101 = v181;
              if (!v176)
              {
                goto LABEL_135;
              }

              v102 = v177;
              sub_1BD93641C(v86, v177, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
              swift_arrayInitWithTakeFrontToBack();
              sub_1BD93641C(v102, a4, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
              a4 += v175;
              v86 += v175;
              v103 = __CFADD__(v101, 1);
              v87 = v101 + 1;
              if (v103)
              {
                goto LABEL_36;
              }
            }

            v15 = v180;
LABEL_36:
            v59 = v174 + 1;
            a4 = v167 + v161;
            v83 = v166 - 1;
            v84 = v165 + v161;
          }

          while (v174 + 1 != v164);
          v50 = v170;
          v5 = v171;
          v51 = v163;
          v38 = v154;
          v49 = v160;
          v59 = v164;
        }
      }
    }

    if (v59 < v49)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = sub_1BD1D7844(0, *(v50 + 2) + 1, 1, v50);
    }

    v105 = *(v50 + 2);
    v104 = *(v50 + 3);
    a4 = v105 + 1;
    if (v105 >= v104 >> 1)
    {
      v50 = sub_1BD1D7844((v104 > 1), v105 + 1, 1, v50);
    }

    *(v50 + 2) = a4;
    v106 = &v50[16 * v105];
    *(v106 + 4) = v160;
    *(v106 + 5) = v59;
    v181 = *v159;
    if (!v181)
    {
      goto LABEL_141;
    }

    v164 = v59;
    if (v105)
    {
      while (1)
      {
        v107 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v108 = *(v50 + 4);
          v109 = *(v50 + 5);
          v118 = __OFSUB__(v109, v108);
          v110 = v109 - v108;
          v111 = v118;
LABEL_66:
          if (v111)
          {
            goto LABEL_116;
          }

          v124 = &v50[16 * a4];
          v126 = *v124;
          v125 = *(v124 + 1);
          v127 = __OFSUB__(v125, v126);
          v128 = v125 - v126;
          v129 = v127;
          if (v127)
          {
            goto LABEL_119;
          }

          v130 = &v50[16 * v107 + 32];
          v132 = *v130;
          v131 = *(v130 + 1);
          v118 = __OFSUB__(v131, v132);
          v133 = v131 - v132;
          if (v118)
          {
            goto LABEL_122;
          }

          if (__OFADD__(v128, v133))
          {
            goto LABEL_123;
          }

          if (v128 + v133 >= v110)
          {
            if (v110 < v133)
            {
              v107 = a4 - 2;
            }

            goto LABEL_87;
          }

          goto LABEL_80;
        }

        v134 = &v50[16 * a4];
        v136 = *v134;
        v135 = *(v134 + 1);
        v118 = __OFSUB__(v135, v136);
        v128 = v135 - v136;
        v129 = v118;
LABEL_80:
        if (v129)
        {
          goto LABEL_118;
        }

        v137 = &v50[16 * v107];
        v139 = *(v137 + 4);
        v138 = *(v137 + 5);
        v118 = __OFSUB__(v138, v139);
        v140 = v138 - v139;
        if (v118)
        {
          goto LABEL_121;
        }

        if (v140 < v128)
        {
          goto LABEL_3;
        }

LABEL_87:
        v145 = v107 - 1;
        if (v107 - 1 >= a4)
        {
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
          goto LABEL_130;
        }

        v146 = *v51;
        if (!*v51)
        {
          goto LABEL_138;
        }

        v147 = v51;
        a4 = *&v50[16 * v145 + 32];
        v51 = *&v50[16 * v107 + 40];
        sub_1BD93485C(v146 + *(v172 + 72) * a4, v146 + *(v172 + 72) * *&v50[16 * v107 + 32], v146 + *(v172 + 72) * v51, v181);
        if (v5)
        {
          goto LABEL_110;
        }

        if (v51 < a4)
        {
          goto LABEL_112;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_1BD5ED6C8(v50);
        }

        if (v145 >= *(v50 + 2))
        {
          goto LABEL_113;
        }

        v148 = &v50[16 * v145];
        *(v148 + 4) = a4;
        *(v148 + 5) = v51;
        v187 = v50;
        sub_1BD5ED63C(v107);
        v50 = v187;
        a4 = *(v187 + 2);
        v51 = v147;
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v112 = &v50[16 * a4 + 32];
      v113 = *(v112 - 64);
      v114 = *(v112 - 56);
      v118 = __OFSUB__(v114, v113);
      v115 = v114 - v113;
      if (v118)
      {
        goto LABEL_114;
      }

      v117 = *(v112 - 48);
      v116 = *(v112 - 40);
      v118 = __OFSUB__(v116, v117);
      v110 = v116 - v117;
      v111 = v118;
      if (v118)
      {
        goto LABEL_115;
      }

      v119 = &v50[16 * a4];
      v121 = *v119;
      v120 = *(v119 + 1);
      v118 = __OFSUB__(v120, v121);
      v122 = v120 - v121;
      if (v118)
      {
        goto LABEL_117;
      }

      v118 = __OFADD__(v110, v122);
      v123 = v110 + v122;
      if (v118)
      {
        goto LABEL_120;
      }

      if (v123 >= v115)
      {
        v141 = &v50[16 * v107 + 32];
        v143 = *v141;
        v142 = *(v141 + 1);
        v118 = __OFSUB__(v142, v143);
        v144 = v142 - v143;
        if (v118)
        {
          goto LABEL_124;
        }

        if (v110 < v144)
        {
          v107 = a4 - 2;
        }

        goto LABEL_87;
      }

      goto LABEL_66;
    }

LABEL_3:
    v48 = *(v51 + 8);
    v49 = v164;
    a4 = v158;
    if (v164 >= v48)
    {
      goto LABEL_98;
    }
  }

  if (v59 >= v160)
  {
    if (v160 < v59)
    {
      v74 = v58 * (v59 - 1);
      v75 = v59 * v58;
      v174 = v59;
      v76 = v160;
      v77 = v160 * v58;
      do
      {
        if (v76 != --v59)
        {
          v78 = v38;
          v79 = *v163;
          if (!*v163)
          {
            goto LABEL_139;
          }

          sub_1BD93641C(v79 + v77, v162, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
          if (v77 < v74 || v79 + v77 >= (v79 + v75))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v77 != v74)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_1BD93641C(v162, v79 + v74, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
          v38 = v78;
          v5 = v171;
          v58 = v176;
        }

        ++v76;
        v74 -= v58;
        v75 -= v58;
        v77 += v58;
      }

      while (v76 < v59);
      v51 = v163;
      a4 = v158;
      v15 = v180;
      v49 = v160;
      v59 = v174;
    }

    goto LABEL_26;
  }

LABEL_131:
  __break(1u);
LABEL_132:
  v50 = sub_1BD5ED6C8(v50);
LABEL_100:
  v187 = v50;
  v149 = *(v50 + 2);
  if (v149 >= 2)
  {
    do
    {
      v150 = *v51;
      if (!*v51)
      {
        goto LABEL_140;
      }

      v51 = v149 - 1;
      v151 = *&v50[16 * v149];
      v152 = *&v50[16 * v149 + 24];
      sub_1BD93485C(v150 + *(v172 + 72) * v151, v150 + *(v172 + 72) * *&v50[16 * v149 + 16], v150 + *(v172 + 72) * v152, a4);
      if (v5)
      {
        break;
      }

      if (v152 < v151)
      {
        goto LABEL_125;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_1BD5ED6C8(v50);
      }

      if (v149 - 2 >= *(v50 + 2))
      {
        goto LABEL_126;
      }

      v153 = &v50[16 * v149];
      *v153 = v151;
      *(v153 + 1) = v152;
      v187 = v50;
      sub_1BD5ED63C(v51);
      v50 = v187;
      v149 = *(v187 + 2);
      v51 = v163;
    }

    while (v149 > 1);
  }

LABEL_110:
}

void sub_1BD933D50(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = a4;
  v50 = type metadata accessor for UnifiedMerchantTokenData(0);
  MEMORY[0x1EEE9AC00](v50, v7);
  v49 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v48 = &v43 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v43 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v43 - v18;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return;
  }

  v47 = a2;
  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_71;
  }

  v22 = a3 - v47;
  if (a3 - v47 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_72;
  }

  v23 = (a2 - a1) / v21;
  v54 = a1;
  v53 = v51;
  if (v23 >= v22 / v21)
  {
    v26 = v22 / v21 * v21;
    if (v51 < v47 || v47 + v26 <= v51)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v51 != v47)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v32 = v51 + v26;
    if (v26 >= 1)
    {
      v33 = -v21;
      v34 = v51 + v26;
      v46 = -v21;
      do
      {
        v44 = v32;
        v35 = v47;
        v47 += v33;
        while (1)
        {
          if (v35 <= a1)
          {
            v54 = v35;
            v52 = v44;
            goto LABEL_69;
          }

          v36 = a3;
          v45 = v32;
          v37 = v46;
          v38 = v34 + v46;
          v39 = v48;
          sub_1BD930FE0(v34 + v46, v48, type metadata accessor for UnifiedMerchantTokenData);
          v40 = v49;
          sub_1BD930FE0(v47, v49, type metadata accessor for UnifiedMerchantTokenData);
          v41 = *(v39 + 32) == *(v40 + 32) && *(v39 + 40) == *(v40 + 40);
          v42 = v41 ? 0 : sub_1BE053B84();
          a3 = v36 + v37;
          sub_1BD935C74(v49, type metadata accessor for UnifiedMerchantTokenData);
          sub_1BD935C74(v48, type metadata accessor for UnifiedMerchantTokenData);
          if (v42)
          {
            break;
          }

          v32 = v34 + v37;
          if (v36 < v34 || a3 >= v34)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v36 != v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v34 += v37;
          if (v38 <= v51)
          {
            v47 = v35;
            goto LABEL_68;
          }
        }

        if (v36 < v35 || a3 >= v35)
        {
          swift_arrayInitWithTakeFrontToBack();
          v32 = v45;
        }

        else
        {
          v32 = v45;
          if (v36 != v35)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v33 = v46;
      }

      while (v34 > v51);
    }

LABEL_68:
    v54 = v47;
    v52 = v32;
  }

  else
  {
    v24 = v23 * v21;
    if (v51 < a1 || a1 + v24 <= v51)
    {
      swift_arrayInitWithTakeFrontToBack();
      v25 = v47;
    }

    else
    {
      v25 = v47;
      if (v51 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v27 = v51 + v24;
    v52 = v51 + v24;
    if (v24 >= 1 && v25 < a3)
    {
      while (1)
      {
        sub_1BD930FE0(v25, v19, type metadata accessor for UnifiedMerchantTokenData);
        sub_1BD930FE0(v51, v15, type metadata accessor for UnifiedMerchantTokenData);
        if (*(v19 + 4) == *(v15 + 4) && *(v19 + 5) == *(v15 + 5))
        {
          break;
        }

        v30 = sub_1BE053B84();
        sub_1BD935C74(v15, type metadata accessor for UnifiedMerchantTokenData);
        sub_1BD935C74(v19, type metadata accessor for UnifiedMerchantTokenData);
        if ((v30 & 1) == 0)
        {
          goto LABEL_30;
        }

        if (a1 < v25 || a1 >= v25 + v21)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v25)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v25 += v21;
LABEL_38:
        a1 += v21;
        v54 = a1;
        if (v51 >= v27 || v25 >= a3)
        {
          goto LABEL_69;
        }
      }

      sub_1BD935C74(v15, type metadata accessor for UnifiedMerchantTokenData);
      sub_1BD935C74(v19, type metadata accessor for UnifiedMerchantTokenData);
LABEL_30:
      v31 = v51 + v21;
      if (a1 < v51 || a1 >= v31)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v51)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v53 = v31;
      v51 = v31;
      goto LABEL_38;
    }
  }

LABEL_69:
  sub_1BD935180(&v54, &v53, &v52, type metadata accessor for UnifiedMerchantTokenData);
}

void sub_1BD9342FC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for UnifiedMerchantTokenData(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v48 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v47 = &v40 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v46 = v13;
  v18 = (a2 - a1) / v16;
  v55 = a1;
  v54 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v45 = a2;
    v28 = a4 + v20;
    if (v20 >= 1)
    {
      v29 = -v16;
      v30 = a4 + v20;
      v42 = v29;
      v43 = a4;
      do
      {
        v40 = v28;
        v31 = v45;
        v44 = v45;
        v45 += v29;
        while (1)
        {
          if (v31 <= a1)
          {
            v55 = v31;
            v53 = v40;
            goto LABEL_59;
          }

          v33 = a3;
          v41 = v28;
          a3 += v29;
          v34 = v30 + v29;
          v35 = v47;
          sub_1BD930FE0(v34, v47, type metadata accessor for UnifiedMerchantTokenData);
          v36 = v48;
          sub_1BD930FE0(v45, v48, type metadata accessor for UnifiedMerchantTokenData);
          v37 = *(v35 + 40);
          v51 = *(v35 + 32);
          v52 = v37;
          v38 = *(v36 + 40);
          v49 = *(v36 + 32);
          v50 = v38;
          sub_1BD0DDEBC();
          v39 = sub_1BE0535B4();
          sub_1BD935C74(v36, type metadata accessor for UnifiedMerchantTokenData);
          sub_1BD935C74(v35, type metadata accessor for UnifiedMerchantTokenData);
          if (v39 == -1)
          {
            break;
          }

          v28 = v34;
          if (v33 < v30 || a3 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v33 != v30)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v30 = v34;
          v31 = v44;
          v32 = v34 > v43;
          v29 = v42;
          if (!v32)
          {
            v45 = v44;
            goto LABEL_58;
          }
        }

        if (v33 < v44 || a3 >= v44)
        {
          swift_arrayInitWithTakeFrontToBack();
          v28 = v41;
          v29 = v42;
        }

        else
        {
          v28 = v41;
          v29 = v42;
          if (v33 != v44)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v30 > v43);
    }

LABEL_58:
    v55 = v45;
    v53 = v28;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v45 = a4 + v19;
    v53 = a4 + v19;
    if (v19 >= 1 && a2 < a3)
    {
      v22 = v48;
      do
      {
        v23 = a3;
        v24 = v47;
        sub_1BD930FE0(a2, v47, type metadata accessor for UnifiedMerchantTokenData);
        sub_1BD930FE0(a4, v22, type metadata accessor for UnifiedMerchantTokenData);
        v25 = *(v24 + 40);
        v51 = *(v24 + 32);
        v52 = v25;
        v26 = *(v22 + 40);
        v49 = *(v22 + 32);
        v50 = v26;
        sub_1BD0DDEBC();
        v27 = sub_1BE0535B4();
        sub_1BD935C74(v22, type metadata accessor for UnifiedMerchantTokenData);
        sub_1BD935C74(v24, type metadata accessor for UnifiedMerchantTokenData);
        if (v27 == -1)
        {
          if (a1 < a2 || a1 >= a2 + v16)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v16;
            a3 = v23;
          }

          else
          {
            a3 = v23;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v16;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v16)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v23;
          }

          else
          {
            a3 = v23;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v54 = a4 + v16;
          a4 += v16;
        }

        a1 += v16;
        v55 = a1;
      }

      while (a4 < v45 && a2 < a3);
    }
  }

LABEL_59:
  sub_1BD935180(&v55, &v54, &v53, type metadata accessor for UnifiedMerchantTokenData);
}

void sub_1BD93485C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59178);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v88 = v85 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v92 = v85 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v93 = v85 - v21;
  v95 = type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection(0);
  MEMORY[0x1EEE9AC00](v95, v22);
  v24 = v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v94 = v85 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  MEMORY[0x1EEE9AC00](v30, v31);
  v96 = v85 - v33;
  v35 = *(v34 + 72);
  if (!v35)
  {
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (a2 - a1 == 0x8000000000000000 && v35 == -1)
  {
    goto LABEL_65;
  }

  v36 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v35 != -1)
  {
    v37 = (a2 - a1) / v35;
    v105 = a1;
    v104 = a4;
    v85[1] = v4;
    if (v37 >= v36 / v35)
    {
      v39 = v36 / v35 * v35;
      if (a4 < a2 || a2 + v39 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v61 = a4 + v39;
      if (v39 >= 1)
      {
        v86 = a4;
        v87 = v12;
        v62 = -v35;
        v63 = a4 + v39;
        v97 = a1;
        v89 = v62;
        do
        {
          v85[0] = v61;
          v64 = a2;
          a2 += v62;
          v98 = a2;
          v91 = v64;
          while (1)
          {
            if (v64 <= a1)
            {
              v105 = v64;
              v103 = v85[0];
              goto LABEL_63;
            }

            v90 = v61;
            v65 = v62;
            v96 = v63;
            v92 = v63 + v62;
            v93 = a3;
            v66 = v94;
            sub_1BD930FE0(v63 + v62, v94, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
            sub_1BD930FE0(a2, v24, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
            v67 = v88;
            sub_1BD0DE19C(v66, v88, &qword_1EBD59178);
            v68 = type metadata accessor for MerchantTokenListViewModel.SectionCard(0);
            v69 = *(*(v68 - 8) + 48);
            if (v69(v67, 1, v68) == 1)
            {
              goto LABEL_69;
            }

            v70 = v24;
            v71 = (v67 + *(v68 + 28));
            v72 = v67;
            v74 = *v71;
            v73 = v71[1];
            sub_1BE048C84();
            sub_1BD935C74(v72, type metadata accessor for MerchantTokenListViewModel.SectionCard);
            v101 = v74;
            v102 = v73;
            v75 = v87;
            sub_1BD0DE19C(v70, v87, &qword_1EBD59178);
            if (v69(v75, 1, v68) == 1)
            {
              goto LABEL_70;
            }

            v76 = v93;
            v77 = v93 + v65;
            v78 = (v75 + *(v68 + 28));
            v79 = *v78;
            v80 = v78[1];
            sub_1BE048C84();
            sub_1BD935C74(v75, type metadata accessor for MerchantTokenListViewModel.SectionCard);
            v99 = v79;
            v100 = v80;
            sub_1BD0DDEBC();
            v81 = sub_1BE0535B4();

            sub_1BD935C74(v70, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
            sub_1BD935C74(v94, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
            a2 = v98;
            v82 = v86;
            v24 = v70;
            if (v81 == -1)
            {
              break;
            }

            v83 = v92;
            v61 = v92;
            a1 = v97;
            a3 = v77;
            if (v76 < v96 || v77 >= v96)
            {
              swift_arrayInitWithTakeFrontToBack();
              v62 = v89;
            }

            else
            {
              v84 = v76 == v96;
              v62 = v89;
              if (!v84)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v63 = v61;
            v64 = v91;
            if (v83 <= v82)
            {
              a2 = v91;
              goto LABEL_62;
            }
          }

          a1 = v97;
          a3 = v76 + v65;
          if (v76 < v91 || v77 >= v91)
          {
            swift_arrayInitWithTakeFrontToBack();
            v62 = v89;
            v61 = v90;
          }

          else
          {
            v84 = v76 == v91;
            v62 = v89;
            v61 = v90;
            if (!v84)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v63 = v96;
        }

        while (v96 > v82);
      }

LABEL_62:
      v105 = a2;
      v103 = v61;
    }

    else
    {
      v38 = v37 * v35;
      v91 = v32;
      if (a4 < a1 || a1 + v38 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v94 = a4 + v38;
      v103 = a4 + v38;
      if (v38 >= 1 && a2 < a3)
      {
        v89 = v35;
        v90 = a3;
        do
        {
          v97 = a1;
          v98 = a2;
          v41 = a2;
          v42 = v96;
          sub_1BD930FE0(v41, v96, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
          v43 = v91;
          sub_1BD930FE0(a4, v91, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
          v44 = v42;
          v45 = v93;
          sub_1BD0DE19C(v44, v93, &qword_1EBD59178);
          v46 = type metadata accessor for MerchantTokenListViewModel.SectionCard(0);
          v47 = *(*(v46 - 8) + 48);
          if (v47(v45, 1, v46) == 1)
          {
            goto LABEL_67;
          }

          v48 = (v45 + *(v46 + 28));
          v49 = v45;
          v51 = *v48;
          v50 = v48[1];
          sub_1BE048C84();
          sub_1BD935C74(v49, type metadata accessor for MerchantTokenListViewModel.SectionCard);
          v101 = v51;
          v102 = v50;
          v52 = v92;
          sub_1BD0DE19C(v43, v92, &qword_1EBD59178);
          if (v47(v52, 1, v46) == 1)
          {
            goto LABEL_68;
          }

          v53 = (v52 + *(v46 + 28));
          v54 = *v53;
          v55 = v53[1];
          sub_1BE048C84();
          sub_1BD935C74(v52, type metadata accessor for MerchantTokenListViewModel.SectionCard);
          v99 = v54;
          v100 = v55;
          sub_1BD0DDEBC();
          v56 = sub_1BE0535B4();

          sub_1BD935C74(v43, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
          sub_1BD935C74(v96, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
          a2 = v98;
          if (v56 == -1)
          {
            v57 = v89;
            v58 = v90;
            v60 = v97;
            if (v97 < v98 || v97 >= v98 + v89)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v97 != v98)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v57;
          }

          else
          {
            v57 = v89;
            v58 = v90;
            v59 = a4 + v89;
            v60 = v97;
            if (v97 < a4 || v97 >= v59)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v97 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v104 = v59;
            a4 += v57;
          }

          a1 = v60 + v57;
          v105 = a1;
        }

        while (a4 < v94 && a2 < v58);
      }
    }

LABEL_63:
    sub_1BD935180(&v105, &v104, &v103, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
    return;
  }

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
}

uint64_t sub_1BD935180(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1BD935298(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BE0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1BD935400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1BE048C84();
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59210);
  sub_1BD0DE4F4(&qword_1EBD59290, &qword_1EBD59110);
  sub_1BD935600();
  sub_1BD928A24(&qword_1EBD59298, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
  return sub_1BE0519D4();
}

unint64_t sub_1BD93557C()
{
  result = qword_1EBD59200;
  if (!qword_1EBD59200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD591F8);
    sub_1BD935600();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59200);
  }

  return result;
}

unint64_t sub_1BD935600()
{
  result = qword_1EBD59208;
  if (!qword_1EBD59208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59210);
    sub_1BD0DE4F4(&qword_1EBD59218, &qword_1EBD59220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59208);
  }

  return result;
}

uint64_t objectdestroyTm_113()
{
  v1 = type metadata accessor for MerchantTokenList(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD590E8);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1BE04E784();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD935898(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for MerchantTokenList(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1BD92FD20(a1, a2, v6);
}

unint64_t sub_1BD935918()
{
  result = qword_1EBD59250;
  if (!qword_1EBD59250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD591D8);
    sub_1BD9359A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59250);
  }

  return result;
}

unint64_t sub_1BD9359A4()
{
  result = qword_1EBD59258;
  if (!qword_1EBD59258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59230);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD591E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD591E8);
    sub_1BE04FB94();
    sub_1BD0DE4F4(&qword_1EBD59228, &qword_1EBD591E8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD59260, &qword_1EBD59238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59258);
  }

  return result;
}

unint64_t sub_1BD935B28()
{
  result = qword_1EBD59268;
  if (!qword_1EBD59268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59110);
    sub_1BD928A24(&qword_1EBD59270, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59268);
  }

  return result;
}

uint64_t sub_1BD935BDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD126968;

  return sub_1BD930C28();
}

uint64_t sub_1BD935C74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD935CD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MerchantTokenCell.ImageState(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59358);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v23 - v15;
  v18 = *(v17 + 56);
  sub_1BD930FE0(a1, &v23 - v15, type metadata accessor for MerchantTokenCell.ImageState);
  sub_1BD930FE0(a2, &v16[v18], type metadata accessor for MerchantTokenCell.ImageState);
  v19 = *(v5 + 48);
  v20 = v19(v16, 3, v4);
  if (v20 > 1)
  {
    if (v20 == 2)
    {
      if (v19(&v16[v18], 3, v4) == 2)
      {
        goto LABEL_9;
      }
    }

    else if (v19(&v16[v18], 3, v4) == 3)
    {
      goto LABEL_9;
    }

LABEL_11:
    sub_1BD0DE53C(v16, &qword_1EBD59358);
    v21 = 0;
    return v21 & 1;
  }

  if (!v20)
  {
    sub_1BD930FE0(v16, v12, type metadata accessor for MerchantTokenCell.ImageState);
    if (!v19(&v16[v18], 3, v4))
    {
      sub_1BD93641C(&v16[v18], v8, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
      v21 = sub_1BD3D8E1C(v12, v8);
      sub_1BD935C74(v8, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
      sub_1BD935C74(v12, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
      sub_1BD935C74(v16, type metadata accessor for MerchantTokenCell.ImageState);
      return v21 & 1;
    }

    sub_1BD935C74(v12, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    goto LABEL_11;
  }

  if (v19(&v16[v18], 3, v4) != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  sub_1BD935C74(v16, type metadata accessor for MerchantTokenCell.ImageState);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_1BD93600C(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for MerchantTokenListViewModel.SectionCard(0);
  if ((sub_1BE04A9E4() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 24);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (v10)
    {
      v11 = *v7 == *v9 && v8 == v10;
      if (v11 || (sub_1BE053B84() & 1) != 0)
      {
        goto LABEL_14;
      }
    }

    return 0;
  }

  if (v10)
  {
    return 0;
  }

LABEL_14:
  v12 = *(v5 + 28);
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  if (v13 == *v15 && v14 == v15[1])
  {
    return 1;
  }

  return sub_1BE053B84();
}

uint64_t sub_1BD93610C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MerchantTokenListViewModel.SectionCard(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59178);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = (&v24 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59360);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v24 - v15;
  v18 = *(v17 + 56);
  sub_1BD0DE19C(a1, &v24 - v15, &qword_1EBD59178);
  sub_1BD0DE19C(a2, &v16[v18], &qword_1EBD59178);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1BD0DE53C(v16, &qword_1EBD59178);
LABEL_9:
      v22 = type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection(0);
      v20 = sub_1BD3FE048(*(a1 + *(v22 + 20)), *(a2 + *(v22 + 20)));
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_1BD0DE19C(v16, v12, &qword_1EBD59178);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1BD935C74(v12, type metadata accessor for MerchantTokenListViewModel.SectionCard);
LABEL_6:
    sub_1BD0DE53C(v16, &qword_1EBD59360);
    goto LABEL_7;
  }

  sub_1BD93641C(&v16[v18], v8, type metadata accessor for MerchantTokenListViewModel.SectionCard);
  v21 = sub_1BD93600C(v12, v8);
  sub_1BD935C74(v8, type metadata accessor for MerchantTokenListViewModel.SectionCard);
  sub_1BD935C74(v12, type metadata accessor for MerchantTokenListViewModel.SectionCard);
  sub_1BD0DE53C(v16, &qword_1EBD59178);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1BD93641C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD936514(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_1BD9365AC()
{
  result = qword_1EBD592E0;
  if (!qword_1EBD592E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD592D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD592E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD592F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD592F8);
    sub_1BD0DE4F4(&qword_1EBD59300, &qword_1EBD592F0);
    sub_1BD0DE4F4(&qword_1EBD59308, &qword_1EBD592F8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD928A24(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD592E0);
  }

  return result;
}

uint64_t sub_1BD9367A0(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t))
{
  v4 = *(type metadata accessor for MerchantTokenList(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(a1(0) - 8);
  v8 = v2 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return a2(v2 + v5, v8);
}

uint64_t sub_1BD936890()
{
  v2 = *(type metadata accessor for MerchantTokenCell(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BD0F985C;

  return sub_1BD92639C(v4, v5, v0 + v3);
}

unint64_t sub_1BD936988()
{
  result = qword_1EBD59398;
  if (!qword_1EBD59398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59388);
    sub_1BD0DE4F4(&qword_1EBD593A0, &qword_1EBD59390);
    sub_1BD936A40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59398);
  }

  return result;
}

unint64_t sub_1BD936A40()
{
  result = qword_1EBD593A8;
  if (!qword_1EBD593A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD593B0);
    sub_1BD223C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD593A8);
  }

  return result;
}

uint64_t sub_1BD936ACC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return sub_1BE048964();
  }

  return result;
}

uint64_t sub_1BD936AD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1BD936AE4()
{
  result = qword_1EBD593D0;
  if (!qword_1EBD593D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD593C0);
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD593D0);
  }

  return result;
}

uint64_t sub_1BD936B9C(uint64_t a1)
{
  v3 = *(type metadata accessor for MerchantTokenNavigationStack(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD928A6C(a1, v4);
}

uint64_t objectdestroy_169Tm_0()
{
  v1 = *(type metadata accessor for MerchantTokenNavigationStack(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1BE04E664();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD936D70()
{
  v2 = *(type metadata accessor for MerchantTokenNavigationStack(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD126968;

  return sub_1BD929440(v0 + v3);
}

unint64_t sub_1BD936ED0()
{
  result = qword_1EBD59410;
  if (!qword_1EBD59410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59400);
    sub_1BD0DE4F4(&qword_1EBD59408, &qword_1EBD593F8);
    sub_1BD0DE4F4(&qword_1EBD386E8, &unk_1EBD51210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59410);
  }

  return result;
}

uint64_t sub_1BD936FE0(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_1BD93705C()
{
  type metadata accessor for MerchantTokenNavigationStack(0);

  return sub_1BD92967C();
}

uint64_t sub_1BD9370DC()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 64) = v0[3];
  *(v1 + 72) = v2;
  sub_1BE048C84();
}

unint64_t sub_1BD93711C()
{
  result = qword_1EBD59438;
  if (!qword_1EBD59438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59440);
    sub_1BD0DE4F4(&qword_1EBD59370, &qword_1EBD59368);
    sub_1BD928A24(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59438);
  }

  return result;
}

unint64_t sub_1BD937204()
{
  result = qword_1EBD59448;
  if (!qword_1EBD59448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59450);
    sub_1BD936988();
    sub_1BD223C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59448);
  }

  return result;
}

uint64_t sub_1BD9372DC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v40 - v9;
  v11 = *(v1 + 8);
  v41 = *v1;
  v12 = *(v1 + 16);
  v13 = v11;
  sub_1BD937AB4(v12, v50);
  v40[1] = *(v1 + 32);
  v40[2] = *(v1 + 48);
  v14 = swift_allocObject();
  v15 = *(v1 + 16);
  *(v14 + 16) = *v1;
  *(v14 + 32) = v15;
  *(v14 + 48) = *(v1 + 32);
  *(v14 + 64) = *(v1 + 48);
  v16 = sub_1BE052434();
  v44 = v17;
  v45 = v16;
  v18 = sub_1BE052434();
  v42 = v19;
  v43 = v18;
  v20 = type metadata accessor for PaymentOfferActionExplanationView();
  v21 = type metadata accessor for MultiHyperLinkDetailSheet();
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  sub_1BD937E8C(v10, v6);
  v22 = v12;
  v23 = v13;
  v24 = v41;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE051694();
  sub_1BD937EFC(v10);
  v25 = a1 + *(v20 + 68);
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  *a1 = v24;
  *(a1 + 8) = v23;
  v26 = v50[1];
  *(a1 + 16) = v50[0];
  *(a1 + 32) = v26;
  *(a1 + 96) = v51;
  v27 = v50[4];
  *(a1 + 64) = v50[3];
  *(a1 + 80) = v27;
  *(a1 + 48) = v50[2];
  *(a1 + 104) = 0;
  *(a1 + 128) = sub_1BD937E3C;
  *(a1 + 136) = v14;
  *(a1 + 144) = 1795;
  v28 = v24;
  v29 = [v23 identifier];
  if (!v29)
  {
    sub_1BE052434();
    v29 = sub_1BE052404();
  }

  v30 = [v28 preferredLocalizationLanguageForCriteriaIdentifier_];

  v31 = sub_1BE052434();
  v33 = v32;

  *(a1 + 112) = v31;
  *(a1 + 120) = v33;
  v46 = 0;
  result = sub_1BE051944();
  v35 = v48;
  v36 = v49;
  v37 = a1 + *(v20 + 64);
  *v37 = v47;
  *(v37 + 8) = v35;
  *(v37 + 16) = v36;
  v38 = v44;
  *(a1 + 152) = v45;
  *(a1 + 160) = v38;
  v39 = v42;
  *(a1 + 168) = v43;
  *(a1 + 176) = v39;
  *(a1 + 184) = 1;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  return result;
}

id sub_1BD9375F4@<X0>(uint64_t *a1@<X8>)
{
  v44 = sub_1BE051584();
  v43 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v2);
  v42 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v39 - v10;
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v39 - v15;
  v17 = *MEMORY[0x1E69B8088];
  v18 = *(v5 + 104);
  v18(&v39 - v15, v17, v4, v14);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v20 = result;
  v41 = sub_1BE04B6F4();
  v40 = v21;

  v22 = *(v5 + 8);
  v22(v16, v4);
  (v18)(v11, v17, v4);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v23 = result;
  v24 = sub_1BE04B6F4();
  v39 = v25;

  v22(v11, v4);
  v26 = v45;
  (v18)(v45, v17, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v27 = result;
    v28 = sub_1BE04B6F4();
    v29 = v26;
    v31 = v30;

    v22(v29, v4);
    v32 = PKPassKitUIBundle();
    sub_1BE0515F4();
    v33 = v43;
    v34 = v42;
    v35 = v44;
    (*(v43 + 104))(v42, *MEMORY[0x1E6981630], v44);
    v36 = sub_1BE0515E4();

    (*(v33 + 8))(v34, v35);
    sub_1BE051CD4();
    sub_1BE04E5E4();

    *&v52[38] = v55;
    *&v52[22] = v54;
    *&v52[6] = v53;
    v49 = *v52;
    v46 = v36;
    v47 = 0;
    v48 = 1;
    v50 = *&v52[16];
    *v51 = *&v52[32];
    *&v51[14] = *(&v55 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EBB0);
    sub_1BD23F914();
    result = sub_1BE0518D4();
    v37 = v40;
    *a1 = v41;
    a1[1] = v37;
    v38 = v39;
    a1[2] = v24;
    a1[3] = v38;
    a1[4] = v28;
    a1[5] = v31;
    a1[6] = 0;
    a1[7] = 0;
    a1[8] = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_1BD937AB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE051584();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  if (!a1)
  {
    result = sub_1BD9375F4(&v32);
    v26 = v32;
    v17 = v33;
    v19 = *v34;
    v23 = *&v34[8];
    v24 = *&v34[24];
    v25 = *&v34[40];
    v22 = 1;
    LOBYTE(v29) = 1;
    goto LABEL_5;
  }

  (*(v10 + 104))(v14, *MEMORY[0x1E69B8088], v9, v12);
  v27 = a1;
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    v17 = sub_1BE04B6F4();
    v19 = v18;

    (*(v10 + 8))(v14, v9);
    v20 = PKPassKitUIBundle();
    sub_1BE0515F4();
    (*(v5 + 104))(v8, *MEMORY[0x1E6981630], v4);
    v21 = sub_1BE0515E4();

    (*(v5 + 8))(v8, v4);
    sub_1BE051CD4();
    sub_1BE04E5E4();

    *&v28[22] = v30;
    *&v28[38] = v31;
    *&v28[6] = v29;
    *&v34[2] = *v28;
    v32 = v21;
    v33 = 0;
    *v34 = 1;
    *&v34[18] = *&v28[16];
    *&v34[34] = *&v28[32];
    *&v34[48] = *(&v31 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EBB0);
    sub_1BD23F914();
    result = sub_1BE0518D4();
    v22 = 0;
    LOBYTE(v32) = 0;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v26 = v27;
LABEL_5:
    *a2 = v26;
    *(a2 + 8) = v17;
    *(a2 + 16) = v19;
    *(a2 + 24) = v23;
    *(a2 + 40) = v24;
    *(a2 + 56) = v25;
    *(a2 + 72) = result;
    *(a2 + 80) = v22;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD937E3C(char a1)
{
  v2 = 40;
  if (a1 == 4)
  {
    v2 = 24;
  }

  return (*(v1 + 16 + v2))();
}

uint64_t sub_1BD937E8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD937EFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD937F64()
{
  result = qword_1EBD57B20;
  if (!qword_1EBD57B20)
  {
    type metadata accessor for PaymentOfferActionExplanationView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57B20);
  }

  return result;
}

uint64_t sub_1BD937FBC(char a1, uint64_t a2)
{
  result = 0;
  switch(a1)
  {
    case 1:
      result = 3;
      break;
    case 2:
      if (PKSystemApertureIsAvailable())
      {
        goto LABEL_2;
      }

      if (*(v2 + 225))
      {
        result = 5;
      }

      else
      {
        result = 1;
      }

      break;
    case 3:
      if ((PKUserIntentIsAvailable() & (a2 == 1)) != 0)
      {
        result = 2;
      }

      else
      {
        result = 0;
      }

      break;
    case 5:
    case 6:
    case 7:
      v5 = PKSystemApertureIsAvailable() == 0;
      v6 = 4;
      goto LABEL_11;
    case 8:
      v5 = PKSystemApertureIsAvailable() == 0;
      v6 = 12;
LABEL_11:
      if (v5)
      {
        result = v6;
      }

      else
      {
        result = 7;
      }

      break;
    case 10:
    case 11:
    case 15:
    case 16:
LABEL_2:
      result = 7;
      break;
    case 12:
      result = 11;
      break;
    case 13:
      result = 10;
      break;
    case 14:
      result = 6;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BD93808C(unsigned __int8 a1, uint64_t a2, char a3)
{
  v7 = sub_1BE04C884();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = v22 - v15;
  if ((a3 & 1) == 0)
  {
    goto LABEL_7;
  }

  if (a2 == 1 && a1 == 3)
  {
    LOBYTE(v17) = 1;
    return v17 & 1;
  }

  v18 = v14;
  sub_1BE04C794();
  (*(v8 + 104))(v12, *MEMORY[0x1E69BC9B8], v18);
  sub_1BD70C564();
  sub_1BE0526E4();
  sub_1BE0526E4();
  v19 = *(v8 + 8);
  v19(v12, v18);
  v19(v16, v18);
  if (v22[1] != v22[0] || (*(v3 + 225) & 1) != 0)
  {
LABEL_7:
    LOBYTE(v17) = 0;
    return v17 & 1;
  }

  IsAvailable = PKHomeButtonIsAvailable();
  LOBYTE(v17) = 0;
  if ((IsAvailable & 1) == 0 && a1 <= 5u)
  {
    v17 = 0x25u >> a1;
  }

  return v17 & 1;
}

void sub_1BD93825C(uint64_t a1, void *a2)
{
  v5 = sub_1BE04AA64();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 13)
  {
    if ((a1 - 14) >= 2)
    {
      if (a1 != 16)
      {
        if (a1 != 19)
        {
          goto LABEL_10;
        }

        goto LABEL_23;
      }

      v11 = 2;
LABEL_36:
      *(v2 + 80) = v11;
      return;
    }

    if (sub_1BD938A08(a2))
    {
      goto LABEL_10;
    }

LABEL_23:
    v11 = 3;
    goto LABEL_36;
  }

  if (a1 != 3)
  {
    if (a1 == 12)
    {
      v11 = 1;
      goto LABEL_36;
    }

LABEL_10:
    *(v2 + 80) = 0;
    return;
  }

  if (!a2 || (v12 = v8, objc_opt_self(), (v13 = swift_dynamicCastObjCClass()) == 0))
  {
LABEL_35:
    v11 = 4;
    goto LABEL_36;
  }

  v14 = v13;
  *(v2 + 80) = 4;
  v15 = a2;
  v16 = [v14 status];
  if ((v16 - 5) < 3)
  {

    v11 = 3;
    goto LABEL_36;
  }

  if (v16 == 8)
  {
    *(v2 + 80) = 3;
    v17 = [*(v2 + 264) paymentRequest];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 originatingURL];

      if (v19)
      {
        sub_1BE04A9F4();

        v20 = sub_1BE04A9C4();
        (*(v6 + 8))(v10, v12);
      }

      else
      {
        v20 = 0;
      }

      v25 = PKPaymentSheetShowExpressProvisioning();

      if (!v25)
      {
        goto LABEL_32;
      }

      v26 = [*(v2 + 264) pass];
      if (v26 || (v26 = [*(v2 + 264) peerPaymentPass]) != 0)
      {

LABEL_32:
        return;
      }

      v27 = [*(v2 + 264) paymentRequest];
      if (v27)
      {
        v28 = v27;
        v29 = [v27 requestType];

        if (v29)
        {
          return;
        }

        goto LABEL_35;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v31 = v14;
  v21 = [v31 error];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1BD938BD4();

    if (v23 <= 0xBu && ((1 << v23) & 0x988) != 0)
    {
      goto LABEL_23;
    }
  }

  else
  {

    v24 = v31;
  }
}

void sub_1BD9385A4(uint64_t a1, void *a2)
{
  v5 = sub_1BE04AA64();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 - 14) < 2)
  {
    goto LABEL_4;
  }

  if (a1 != 3)
  {
    if (a1 != 19)
    {
      *(v2 + 64) = 0;
      *(v2 + 72) = 0;
      goto LABEL_9;
    }

LABEL_4:
    *(v2 + 64) = xmmword_1BE106A20;
LABEL_9:

    return;
  }

  v11 = v8;
  v12 = 0xEF6B72616D6E6F69;
  v13 = 0x74616D616C637865;
  if (a2 && (objc_opt_self(), (v14 = swift_dynamicCastObjCClass()) != 0))
  {
    v28 = v14;
    v15 = a2;
    v13 = sub_1BD9388D0();
    v12 = v16;
  }

  else
  {
    v28 = 0;
  }

  *(v2 + 64) = v13;
  *(v2 + 72) = v12;

  if (v28)
  {
    if ([v28 status] == 8)
    {
      v17 = [*(v2 + 264) paymentRequest];
      if (v17)
      {
        v18 = v17;
        v19 = [v17 originatingURL];

        if (v19)
        {
          sub_1BE04A9F4();

          v20 = sub_1BE04A9C4();
          (*(v6 + 8))(v10, v11);
        }

        else
        {
          v20 = 0;
        }

        v22 = PKPaymentSheetShowExpressProvisioning();

        if (!v22)
        {
          goto LABEL_26;
        }

        v23 = [*(v2 + 264) pass];
        if (v23 || (v23 = [*(v2 + 264) peerPaymentPass]) != 0)
        {

LABEL_26:
          return;
        }

        v24 = [*(v2 + 264) paymentRequest];
        if (v24)
        {
          v25 = v24;
          v26 = [v24 requestType];

          if (!v26)
          {
            *(v2 + 64) = 0xD00000000000001ALL;
            *(v2 + 72) = 0x80000001BE125F50;
          }

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

    v21 = v28;
  }
}

uint64_t sub_1BD9388D0()
{
  v1 = v0;
  v2 = 0x74616D616C637865;
  v3 = [v1 error];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1BD938BD4();
    if (v5 <= 0xD)
    {
      if (((1 << v5) & 0x3F88) != 0)
      {

        return v2;
      }

      if (((1 << v5) & 0x30) != 0)
      {

        return 0x6163746964657263;
      }

      if (v5 == 6)
      {

        return 0x662E6E6F73726570;
      }
    }

    if (v5 == 2)
    {

      return 0xD00000000000001ALL;
    }

    else
    {

      return 0x69662E6573756F68;
    }
  }

  return v2;
}

uint64_t sub_1BD938A08(uint64_t result)
{
  if (result)
  {
    v1 = result;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v2 = result;
      v3 = v1;
      if ([v2 error])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
        sub_1BD8B8208();
        if (swift_dynamicCast())
        {
          v4 = [v11 domain];
          v5 = sub_1BE052434();
          v7 = v6;

          if (v5 == sub_1BE052434() && v7 == v8)
          {

LABEL_9:
            if ([v11 code] == -2008 || objc_msgSend(v11, sel_code) == -2009)
            {

              return 1;
            }

            v10 = [v11 code];

            return v10 == -2015;
          }

          v9 = sub_1BE053B84();

          if (v9)
          {
            goto LABEL_9;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1BD938BD4()
{
  v0 = sub_1BE04A844();
  v1 = [v0 code];
  if (v1 > -3006)
  {
    if (v1 <= -3004)
    {
      goto LABEL_15;
    }

    switch(v1)
    {
      case -3003:
        v3 = sub_1BD34C150();

        return v3 & 1;
      case -3002:

        return 5;
      case -3000:

        return 4;
    }
  }

  else
  {
    if (v1 > -3011)
    {
      if (v1 != -3010 && v1 != -3007 && v1 != -3006)
      {
        goto LABEL_20;
      }

LABEL_15:

      return 6;
    }

    if (v1 == -3013)
    {

      return 3;
    }

    if (v1 == -3012)
    {

      return 2;
    }
  }

LABEL_20:
  v4 = v1;

  if (v4 > -3012)
  {
    result = 7;
    if (v4 != -3011 && v4 != -3001)
    {
      if (v4 == -1001)
      {
        return 8;
      }

      return 13;
    }
  }

  else
  {
    if (v4 == -3017)
    {
      return 11;
    }

    if (v4 != -3016)
    {
      if (v4 == -3015)
      {
        return 9;
      }

      return 13;
    }

    return 10;
  }

  return result;
}

uint64_t type metadata accessor for MoneyTransferButton()
{
  result = qword_1EBD361C8;
  if (!qword_1EBD361C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD938DA0()
{
  sub_1BD2D63D4();
  if (v0 <= 0x3F)
  {
    sub_1BD1030A8();
    if (v1 <= 0x3F)
    {
      sub_1BD249694();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1BD938E78()
{
  result = qword_1EBD59458;
  if (!qword_1EBD59458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59458);
  }

  return result;
}

uint64_t sub_1BD938ECC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v3 = sub_1BE04ED74();
  v4 = *(v3 - 8);
  v30 = v3;
  v31 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MoneyTransferButton();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59478);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59480);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v29 - v19;
  sub_1BD1837AC(v2, &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = swift_allocObject();
  sub_1BD93A870(&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v33 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59488);
  sub_1BD93A940();
  sub_1BE051704();
  sub_1BE04ED64();
  sub_1BD0DE4F4(&qword_1EBD59568, &qword_1EBD59478);
  sub_1BD93B55C(&qword_1EBD59570, MEMORY[0x1E697C248]);
  v23 = v30;
  sub_1BE050894();
  (*(v31 + 8))(v7, v23);
  (*(v13 + 8))(v16, v12);
  v24 = sub_1BD93A294();
  KeyPath = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = v24 & 1;
  v27 = &v20[*(v17 + 36)];
  *v27 = KeyPath;
  v27[1] = sub_1BD10DF54;
  v27[2] = v26;
  sub_1BE052434();
  sub_1BD93B250();
  sub_1BE050DE4();

  return sub_1BD0DE53C(v20, &qword_1EBD59480);
}

uint64_t sub_1BD9392E8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59580);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v88 - v5;
  v7 = sub_1BE04E354();
  v103 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v102 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v101 = &v88 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59588);
  v106 = *(v13 - 8);
  v107 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v105 = &v88 - v15;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD594D0);
  MEMORY[0x1EEE9AC00](v104, v16);
  v18 = &v88 - v17;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD594C0);
  MEMORY[0x1EEE9AC00](v108, v19);
  v109 = &v88 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59498);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v88 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59590);
  MEMORY[0x1EEE9AC00](v25, v26);
  if (a1[1])
  {
    v29 = sub_1BE04F504();
    sub_1BD93A628(&v118);
    v30 = v119;
    v31 = *(&v119 + 1);
    v32 = v120;
    v33 = BYTE8(v120);
    v34 = v118;
    LOBYTE(v111) = 1;
    LOBYTE(v136) = v119;
    v135 = BYTE8(v120);
    *v6 = v29;
    *(v6 + 1) = 0;
    v6[16] = 1;
    *(v6 + 24) = v34;
    v6[40] = v30;
    *(v6 + 6) = v31;
    *(v6 + 7) = v32;
    *(v6 + 32) = v33;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59550);
    v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD594A0);
    v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD594A8);
    v37 = sub_1BD93AA74();
    v38 = sub_1BD93AE8C();
    v39 = sub_1BD93AFFC();
    *&v118 = v21;
    *(&v118 + 1) = MEMORY[0x1E6981CD8];
    *&v119 = v35;
    *(&v119 + 1) = v36;
    *&v120 = v37;
    *(&v120 + 1) = MEMORY[0x1E6981CD0];
    *&v121 = v38;
    *(&v121 + 1) = v39;
    swift_getOpaqueTypeConformance2();
    sub_1BD93B16C();
    return sub_1BE04F9A4();
  }

  else
  {
    v89 = v7;
    v94 = v24;
    v95 = v6;
    v93 = &v88 - v27;
    v96 = v28;
    v98 = v21;
    v99 = v25;
    v100 = v3;
    *&v118 = sub_1BD93A464();
    *(&v118 + 1) = v41;
    sub_1BD0DDEBC();
    v42 = sub_1BE0506C4();
    v97 = a1;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    sub_1BE050464();
    v48 = sub_1BE0505F4();
    v91 = v49;
    v92 = v48;
    v51 = v50;
    v90 = v52;

    sub_1BD0DDF10(v43, v45, v47 & 1);

    KeyPath = swift_getKeyPath();
    LOBYTE(v43) = sub_1BE050234();
    sub_1BE051C54();
    sub_1BE04E1F4();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v135 = v51 & 1;
    v133 = 1;
    v132 = 0;
    sub_1BE051CD4();
    sub_1BE04EE54();
    *&v134[55] = v139;
    *&v134[71] = v140;
    *&v134[87] = v141;
    *&v134[103] = v142;
    *&v134[7] = v136;
    *&v134[23] = v137;
    *&v134[39] = v138;
    *&v111 = v92;
    *(&v111 + 1) = v91;
    LOBYTE(v112) = v51 & 1;
    *(&v112 + 1) = v90;
    v113 = KeyPath;
    LOBYTE(v114) = 1;
    BYTE8(v114) = v43;
    *&v115 = v55;
    *(&v115 + 1) = v57;
    *&v116 = v59;
    *(&v116 + 1) = v61;
    v117[0] = 0;
    *&v117[65] = *&v134[64];
    *&v117[81] = *&v134[80];
    *&v117[97] = *&v134[96];
    *&v117[112] = *(&v142 + 1);
    *&v117[1] = *v134;
    *&v117[17] = *&v134[16];
    *&v117[33] = *&v134[32];
    *&v117[49] = *&v134[48];
    sub_1BE051C64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD594D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD594E0);
    sub_1BD93AD4C();
    v62 = v97;
    sub_1BD93AE08(&qword_1EBD59500, &qword_1EBD594E0, &unk_1BE106C68, sub_1BD93AD4C);
    v63 = v105;
    sub_1BE0510C4();
    v128 = *&v117[64];
    v129 = *&v117[80];
    v130 = *&v117[96];
    v131 = *&v117[112];
    v124 = *v117;
    v125 = *&v117[16];
    v126 = *&v117[32];
    v127 = *&v117[48];
    v120 = v113;
    v121 = v114;
    v122 = v115;
    v123 = v116;
    v118 = v111;
    v119 = v112;
    sub_1BD93B3C8(&v118);
    v64 = sub_1BE050464();
    v65 = swift_getKeyPath();
    (*(v106 + 32))(v18, v63, v107);
    v66 = &v18[*(v104 + 36)];
    *v66 = v65;
    v66[1] = v64;
    v67 = v18;
    if (*v62 == 1)
    {
      v68 = sub_1BE051464();
      v69 = v98;
    }

    else
    {
      type metadata accessor for MoneyTransferButton();
      v70 = v101;
      sub_1BD70A078(v101);
      v72 = v102;
      v71 = v103;
      v73 = v89;
      (*(v103 + 104))(v102, *MEMORY[0x1E697DBB8], v89);
      v74 = sub_1BE04E344();
      v75 = *(v71 + 8);
      v75(v72, v73);
      v75(v70, v73);
      v69 = v98;
      if (v74)
      {
        v76 = sub_1BE051424();
      }

      else
      {
        v76 = sub_1BE0513F4();
      }

      v68 = v76;
    }

    v77 = swift_getKeyPath();
    v78 = v109;
    sub_1BD0DE204(v67, v109, &qword_1EBD594D0);
    v79 = (v78 + *(v108 + 36));
    *v79 = v77;
    v79[1] = v68;
    v80 = sub_1BD939ECC();
    LOBYTE(v77) = sub_1BE0501D4();
    v81 = v94;
    sub_1BD0DE204(v78, v94, &qword_1EBD594C0);
    v82 = v81 + *(v69 + 36);
    *v82 = v80;
    *(v82 + 8) = v77;
    sub_1BE051C64();
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD594A0);
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD594A8);
    v109 = sub_1BD93AA74();
    *&v87 = sub_1BD93AE8C();
    *(&v87 + 1) = sub_1BD93AFFC();
    v84 = v93;
    sub_1BE0510B4();
    sub_1BD0DE53C(v81, &qword_1EBD59498);
    v85 = v96;
    v86 = v99;
    (*(v96 + 16))(v95, v84, v99);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59550);
    *&v111 = v69;
    *(&v111 + 1) = MEMORY[0x1E6981CD8];
    *&v112 = v83;
    *(&v112 + 1) = v108;
    *&v113 = v109;
    *(&v113 + 1) = MEMORY[0x1E6981CD0];
    v114 = v87;
    swift_getOpaqueTypeConformance2();
    sub_1BD93B16C();
    sub_1BE04F9A4();
    return (*(v85 + 8))(v84, v86);
  }
}

uint64_t sub_1BD939DB8@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[11];
  v22 = a1[10];
  v23 = v3;
  v24 = a1[12];
  v25 = *(a1 + 26);
  v4 = a1[7];
  v18 = a1[6];
  v19 = v4;
  v5 = a1[9];
  v20 = a1[8];
  v21 = v5;
  v6 = a1[3];
  v14 = a1[2];
  v15 = v6;
  v7 = a1[5];
  v16 = a1[4];
  v17 = v7;
  v8 = a1[1];
  v12 = *a1;
  v13 = v8;
  sub_1BE051CD4();
  sub_1BE04EE54();
  __src[10] = v22;
  __src[11] = v23;
  __src[12] = v24;
  *&__src[13] = v25;
  __src[6] = v18;
  __src[7] = v19;
  __src[8] = v20;
  __src[9] = v21;
  __src[2] = v14;
  __src[3] = v15;
  __src[4] = v16;
  __src[5] = v17;
  __src[0] = v12;
  __src[1] = v13;
  memcpy(a2, __src, 0x148uLL);
  return sub_1BD93B430(&v12, v10);
}

uint64_t sub_1BD939ECC()
{
  v1 = sub_1BE04E354();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v16 - v8;
  v10 = *v0;
  type metadata accessor for MoneyTransferButton();
  sub_1BD70A078(v9);
  (*(v2 + 104))(v5, *MEMORY[0x1E697DBB8], v1);
  v11 = sub_1BE04E344();
  v12 = *(v2 + 8);
  v12(v5, v1);
  v12(v9, v1);
  if (v10 == 1)
  {
    if (v11 & 1) != 0 && (sub_1BD93A294())
    {
      v13 = [objc_opt_self() tertiarySystemFillColor];
    }

    else
    {
      v13 = [objc_opt_self() systemFillColor];
    }

    v15 = v13;
    return sub_1BE0511C4();
  }

  else if (v11)
  {
    return sub_1BE0513F4();
  }

  else
  {
    return sub_1BE051424();
  }
}

uint64_t sub_1BD93A090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59518) + 36);
  v5 = *MEMORY[0x1E697F468];
  v6 = sub_1BE04F684();
  v7 = *(*(v6 - 8) + 104);
  v7(v4, v5, v6);
  *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59528) + 36)) = 0;
  sub_1BD0C5514(a1, a2);
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD594A0) + 36);
  v7(v8, v5, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E010);
  *(v8 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_1BD93A1B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BD0C5514(a1, a2);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59540) + 36)) = 0;
  v3 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD594A8) + 36));
  v4 = *(sub_1BE04EDE4() + 20);
  v5 = *MEMORY[0x1E697F468];
  v6 = sub_1BE04F684();
  (*(*(v6 - 8) + 104))(&v3[v4], v5, v6);
  __asm { FMOV            V0.2D, #14.0 }

  *v3 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50);
  *&v3[*(result + 36)] = 256;
  return result;
}

uint64_t sub_1BD93A294()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (!*v0)
  {
    if (([v4 supportsOneTimeDeposit] & 1) == 0)
    {
      v1 = [v4 supportsOneTimeDepositWithAppleCash];
LABEL_10:

      return v1 ^ 1;
    }

LABEL_11:

    return 0;
  }

  if (*v0 == 1)
  {
    if ([v4 supportsOneTimeWithdrawal] & 1) != 0 || (objc_msgSend(v4, sel_supportsOneTimeWithdrawalWithAppleCash))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      if (v4)
      {
        v2 = [v4 currentBalance];

        if (v2)
        {
          v1 = [v2 pk_isPositiveNumber];

          goto LABEL_10;
        }
      }

      goto LABEL_11;
    }

    return 1;
  }

  else
  {
    result = sub_1BE053994();
    __break(1u);
  }

  return result;
}

id sub_1BD93A464()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v16 - v8;
  v11 = *MEMORY[0x1E69B80E0];
  v12 = *(v2 + 104);
  if (*v0)
  {
    v12(v5, v11, v1, v9);
    result = PKPassKitBundle();
    if (result)
    {
      v14 = result;
      v15 = sub_1BE04B6F4();
      v10 = v5;
LABEL_6:

      (*(v2 + 8))(v10, v1);
      return v15;
    }

    __break(1u);
  }

  else
  {
    v12(&v16 - v8, v11, v1, v9);
    result = PKPassKitBundle();
    if (result)
    {
      v14 = result;
      v15 = sub_1BE04B6F4();
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD93A628@<X0>(uint64_t a1@<X8>)
{
  sub_1BD93A464();
  sub_1BD0DDEBC();
  v2 = sub_1BE0506C4();
  v4 = v3;
  v6 = v5;
  if (sub_1BD93A294())
  {
    sub_1BE0513E4();
  }

  else
  {
    sub_1BE0513C4();
  }

  v7 = sub_1BE050564();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_1BD0DDF10(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  sub_1BD0D7F18(v7, v9, v11 & 1);
  sub_1BE048C84();
  sub_1BD0DDF10(v7, v9, v11 & 1);
}

unint64_t sub_1BD93A750()
{
  result = qword_1EBD59460;
  if (!qword_1EBD59460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59460);
  }

  return result;
}

unint64_t sub_1BD93A7A8()
{
  result = qword_1EBD59468;
  if (!qword_1EBD59468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59468);
  }

  return result;
}

unint64_t sub_1BD93A800()
{
  result = qword_1EBD59470;
  if (!qword_1EBD59470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59470);
  }

  return result;
}

uint64_t sub_1BD93A870(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoneyTransferButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD93A940()
{
  result = qword_1EBD59490;
  if (!qword_1EBD59490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59488);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59498);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD594A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD594A8);
    sub_1BD93AA74();
    sub_1BD93AE8C();
    sub_1BD93AFFC();
    swift_getOpaqueTypeConformance2();
    sub_1BD93B16C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59490);
  }

  return result;
}

unint64_t sub_1BD93AA74()
{
  result = qword_1EBD594B0;
  if (!qword_1EBD594B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59498);
    sub_1BD93AB2C();
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD594B0);
  }

  return result;
}

unint64_t sub_1BD93AB2C()
{
  result = qword_1EBD594B8;
  if (!qword_1EBD594B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD594C0);
    sub_1BD93ABE4();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD594B8);
  }

  return result;
}

unint64_t sub_1BD93ABE4()
{
  result = qword_1EBD594C8;
  if (!qword_1EBD594C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD594D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD594D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD594E0);
    sub_1BD93AD4C();
    sub_1BD93AE08(&qword_1EBD59500, &qword_1EBD594E0, &unk_1BE106C68, sub_1BD93AD4C);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD594C8);
  }

  return result;
}

unint64_t sub_1BD93AD7C()
{
  result = qword_1EBD594F0;
  if (!qword_1EBD594F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD594F8);
    sub_1BD1B9C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD594F0);
  }

  return result;
}
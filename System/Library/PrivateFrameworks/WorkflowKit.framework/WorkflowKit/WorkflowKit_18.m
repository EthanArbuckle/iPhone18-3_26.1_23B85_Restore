uint64_t sub_1CA422474()
{
  v0 = sub_1CA9486C8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v62 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v70 = &v59 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v59 - v7);
  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  _s3__C3KeyVMa_0(0);
  sub_1CA435D64(&qword_1EDB9F780, 255, _s3__C3KeyVMa_0);
  v9 = MEMORY[0x1E69E7CC0];
  sub_1CA94C1E8();
  v10 = v0;
  v11 = sub_1CA2F864C();
  v61 = [objc_allocWithZone(type metadata accessor for WFAskLLMModelParameter()) initWithDefinition_];

  v12 = sub_1CA948698();
  v13 = 0;
  v14 = *(v12 + 16);
  v72 = (v1 + 8);
  v73 = v1 + 16;
  v68 = (v1 + 32);
  v71 = v9;
  while (1)
  {
    if (v14 == v13)
    {

      v74 = v71;

      v0 = 0;
      sub_1CA424F8C(&v74);

      v24 = v74;
      v26 = v61;
      v25 = v62;
      v71 = v74[2];
      if (!v71)
      {
        v67 = 0;
        v68 = MEMORY[0x1E69E7CC8];
LABEL_33:

        sub_1CA293254(v67);
        return v68;
      }

      v27 = 0;
      v70 = v74 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
      v66 = 0x80000001CA9A2470;
      v67 = 0;
      v68 = MEMORY[0x1E69E7CC8];
      v59 = xmmword_1CA986F80;
      v69 = v10;
      v60 = v74;
      while (1)
      {
        if (v27 >= *(v24 + 16))
        {
          goto LABEL_35;
        }

        (*(v1 + 16))(v25, &v70[*(v1 + 72) * v27], v10);
        v0 = v10;
        sub_1CA9486B8();
        (*(v1 + 8))(v25, v10);
        v28 = sub_1CA94C368();

        v29 = [objc_allocWithZone(WFStringSubstitutableState) initWithValue_];

        v30 = WFVariableSubstitutableParameterStateUpcast(v29);
        v31 = WFAskLLMModelParameter.localizedTitleForButton(with:)();
        if (v32)
        {
          v33 = v31;
          v0 = v32;
          v34 = WFAskLLMModelParameter.enumeration(_:accessoryIconForPossibleState:)(v26, v30);
          if (v34)
          {
            v65 = v33;
            v64 = v34;
            v63 = v30;
            sub_1CA293254(v67);
            v35 = v68;
            swift_isUniquelyReferenced_nonNull_native();
            v74 = v35;
            v36 = sub_1CA271BF8();
            if (__OFADD__(*(v35 + 16), (v37 & 1) == 0))
            {
              goto LABEL_36;
            }

            v38 = v36;
            v39 = v37;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445498, &qword_1CA987598);
            v40 = sub_1CA94D588();
            v41 = v74;
            if (v40)
            {
              v42 = sub_1CA271BF8();
              if ((v39 & 1) != (v43 & 1))
              {
                goto LABEL_38;
              }

              v38 = v42;
            }

            if ((v39 & 1) == 0)
            {
              v41[(v38 >> 6) + 8] = (v41[(v38 >> 6) + 8] | (1 << v38));
              v44 = (v41[6] + 16 * v38);
              *v44 = 0xD00000000000001ALL;
              v44[1] = v66;
              *(v41[7] + v38) = MEMORY[0x1E69E7CC0];
              v45 = v41[2];
              v46 = __OFADD__(v45, 1);
              v47 = v45 + 1;
              if (v46)
              {
                goto LABEL_37;
              }

              v41[2] = v47;
            }

            v48 = v41[7];
            v49 = *(v48 + 8 * v38);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v48 + 8 * v38) = v49;
            v68 = v41;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v55 = *(v49 + 16);
              sub_1CA2E5E6C();
              v49 = v56;
              *(v48 + 8 * v38) = v56;
            }

            v51 = *(v49 + 16);
            if (v51 >= *(v49 + 24) >> 1)
            {
              sub_1CA2E5E6C();
              *(v48 + 8 * v38) = v57;
            }

            v52 = v64;
            v53 = *(v48 + 8 * v38);
            *(v53 + 16) = v51 + 1;
            v54 = v53 + 56 * v51;
            *(v54 + 32) = v65;
            *(v54 + 40) = v0;
            *(v54 + 48) = v52;
            *(v54 + 56) = v30;
            *(v54 + 64) = v59;
            *(v54 + 80) = 0;
            v67 = sub_1CA436660;
            v26 = v61;
            v25 = v62;
            v24 = v60;
            goto LABEL_30;
          }
        }

LABEL_30:
        ++v27;
        v10 = v69;
        if (v71 == v27)
        {
          goto LABEL_33;
        }
      }
    }

    if (v13 >= *(v12 + 16))
    {
      break;
    }

    v15 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v0 = *(v1 + 72);
    (*(v1 + 16))(v8, v12 + v15 + v0 * v13, v10);
    v16 = v10;
    v17 = [objc_opt_self() shared];
    v18 = WFAskLLMAvailabilityProvider.isModelEnabled(modelName:)(v8);

    if (v18)
    {
      v67 = *v68;
      v67(v70, v8, v16);
      v19 = v71;
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v74 = v19;
      v10 = v16;
      if ((v20 & 1) == 0)
      {
        v21 = *(v19 + 16);
        sub_1CA2B8F14();
        v10 = v16;
        v19 = v74;
      }

      v22 = *(v19 + 16);
      v23 = v22 + 1;
      if (v22 >= *(v19 + 24) >> 1)
      {
        v69 = v10;
        sub_1CA2B8F14();
        v23 = v22 + 1;
        v10 = v69;
        v19 = v74;
      }

      ++v13;
      *(v19 + 16) = v23;
      v71 = v19;
      v67((v19 + v15 + v22 * v0), v70, v10);
    }

    else
    {
      (*v72)(v8, v16);
      ++v13;
      v10 = v16;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  sub_1CA94D878();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1CA422BA0()
{
  v0 = sub_1CA9486B8();
  v2 = v1;
  if (v0 == sub_1CA9486B8() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1CA94D7F8();
  }

  return v5 & 1;
}

uint64_t sub_1CA422C38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v102 = a3;
  v125 = sub_1CA94B1C8();
  v5 = *(v125 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v125);
  v109 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v121 = &v101 - v9;
  v10 = type metadata accessor for DrawerSearchIndexItem(0);
  v127 = *(v10 - 8);
  v128 = v10;
  v11 = *(v127 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v116 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v118 = &v101 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v101 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v107 = &v101 - v19;
  v104 = type metadata accessor for DrawerAction(0);
  v20 = *(v104 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v104);
  v24 = &v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v101 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v111 = &v101 - v28;
  v103 = a1;
  v29 = *a1;
  v32 = *(*a1 + 64);
  v31 = *a1 + 64;
  v30 = v32;
  v33 = 1 << *(v29 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v117 = v34 & v30;
  v35 = (v33 + 63) >> 6;
  v124 = v5 + 16;
  v108 = v5;
  v119 = (v5 + 8);
  v114 = v29;
  result = sub_1CA94C218();
  v37 = 0;
  v38 = MEMORY[0x1E69E7CC0];
  v110 = v31;
  v112 = v35;
  v106 = a2;
  v105 = v20;
  v120 = v27;
  while (1)
  {
    v39 = v117;
    if (!v117)
    {
      break;
    }

LABEL_9:
    v41 = v39;
    v115 = v37;
    v42 = v111;
    sub_1CA42B9A4(*(v114 + 56) + *(v20 + 72) * (__clz(__rbit64(v39)) | (v37 << 6)), v111);
    sub_1CA42BA50(v42, v27);
    if (*(a2 + 16) && (v43 = &v27[*(v104 + 28)], v44 = *v43, v45 = *(v43 + 1), v46 = sub_1CA271BF8(), (v47 & 1) != 0))
    {
      v126 = *(*(a2 + 56) + 8 * v46);
      sub_1CA94C218();
    }

    else
    {
      v126 = MEMORY[0x1E69E7CC0];
    }

    v117 = (v41 - 1) & v41;
    sub_1CA40AE90();
    v49 = *(v48 + 16);
    if (v49)
    {
      v50 = (*(v108 + 80) + 32) & ~*(v108 + 80);
      v113 = v48;
      v51 = v48 + v50;
      v52 = *(v108 + 72);
      v122 = *(v108 + 16);
      v123 = v52;
      do
      {
        v53 = v121;
        v54 = v125;
        v122(v121, v51, v125);
        sub_1CA42B9A4(v27, v24);
        v55 = sub_1CA94B0F8();
        v56 = v18;
        v58 = v57;
        (*v119)(v53, v54);
        v59._countAndFlagsBits = v55;
        v59._object = v58;
        DrawerAction.setAttributionContainer(bundleID:)(v59);
        v18 = v56;

        v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445408, &unk_1CA986FF0) + 48);
        sub_1CA42B9A4(v24, v56);
        *(v56 + v60) = v126;
        swift_storeEnumTagMultiPayload();
        sub_1CA94C218();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = *(v38 + 16);
          sub_1CA2E6034();
          v38 = v63;
        }

        v61 = *(v38 + 16);
        v27 = v120;
        if (v61 >= *(v38 + 24) >> 1)
        {
          sub_1CA2E6034();
          v38 = v64;
        }

        sub_1CA42B9FC();
        *(v38 + 16) = v61 + 1;
        sub_1CA42BA50(v56, v38 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v61);
        v51 += v123;
        --v49;
      }

      while (v49);

      result = sub_1CA42B9FC();
      a2 = v106;
      v20 = v105;
      v31 = v110;
      v35 = v112;
      v37 = v115;
    }

    else
    {

      v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445408, &unk_1CA986FF0) + 48);
      v66 = v107;
      sub_1CA42B9A4(v27, v107);
      *(v66 + v65) = v126;
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = *(v38 + 16);
        sub_1CA2E6034();
        v38 = v69;
      }

      v35 = v112;
      v67 = *(v38 + 16);
      if (v67 >= *(v38 + 24) >> 1)
      {
        sub_1CA2E6034();
        v38 = v70;
      }

      sub_1CA42B9FC();
      *(v38 + 16) = v67 + 1;
      result = sub_1CA42BA50(v107, v38 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v67);
      v31 = v110;
      v37 = v115;
    }
  }

  while (1)
  {
    v40 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      goto LABEL_50;
    }

    if (v40 >= v35)
    {
      break;
    }

    v39 = *(v31 + 8 * v40);
    ++v37;
    if (v39)
    {
      v37 = v40;
      goto LABEL_9;
    }
  }

  v71 = v103;
  v72 = v103[6];
  v73 = *(v72 + 16);
  if (v73)
  {
    v74 = v72 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v75 = *(v20 + 72);
    v76 = v108;
    v77 = v118;
    do
    {
      v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445408, &unk_1CA986FF0) + 48);
      sub_1CA42B9A4(v74, v77);
      *(v77 + v78) = MEMORY[0x1E69E7CC0];
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = *(v38 + 16);
        sub_1CA2E6034();
        v38 = v84;
      }

      v79 = *(v38 + 16);
      v80 = v38;
      v81 = v118;
      if (v79 >= *(v38 + 24) >> 1)
      {
        sub_1CA2E6034();
        v80 = v85;
        v81 = v118;
      }

      v38 = v80;
      *(v80 + 16) = v79 + 1;
      v82 = v80 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v79;
      v77 = v81;
      sub_1CA42BA50(v81, v82);
      v74 += v75;
      --v73;
    }

    while (v73);
  }

  else
  {
    v76 = v108;
  }

  v86 = v71[1];
  v87 = 1 << *(v86 + 32);
  v88 = -1;
  if (v87 < 64)
  {
    v88 = ~(-1 << v87);
  }

  v89 = v88 & *(v86 + 64);
  v90 = (v87 + 63) >> 6;
  v126 = v76 + 32;
  result = sub_1CA94C218();
  v91 = 0;
  if (v89)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v92 = v91 + 1;
    if (__OFADD__(v91, 1))
    {
      break;
    }

    if (v92 >= v90)
    {

      result = sub_1CA4129A4(v38, v129);
      v99 = v129[1];
      v100 = v102;
      *v102 = v129[0];
      v100[1] = v99;
      *(v100 + 4) = v130;
      return result;
    }

    v89 = *(v86 + 64 + 8 * v92);
    ++v91;
    if (v89)
    {
      v91 = v92;
      do
      {
LABEL_42:
        v93 = v109;
        v94 = v125;
        (*(v76 + 16))(v109, *(v86 + 56) + *(v76 + 72) * (__clz(__rbit64(v89)) | (v91 << 6)), v125);
        (*(v76 + 32))(v116, v93, v94);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = *(v38 + 16);
          sub_1CA2E6034();
          v38 = v97;
        }

        v95 = *(v38 + 16);
        if (v95 >= *(v38 + 24) >> 1)
        {
          sub_1CA2E6034();
          v38 = v98;
        }

        v89 &= v89 - 1;
        *(v38 + 16) = v95 + 1;
        result = sub_1CA42BA50(v116, v38 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v95);
      }

      while (v89);
    }
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_1CA4236B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 312) = a5;
  *(v6 + 320) = v5;
  *(v6 + 296) = a2;
  *(v6 + 304) = a4;
  *(v6 + 288) = a1;
  v7 = *(a3 + 16);
  *(v6 + 328) = *a3;
  *(v6 + 344) = v7;
  *(v6 + 360) = *(a3 + 32);
  *(v6 + 464) = *(a3 + 48);
  return MEMORY[0x1EEE6DFA0](sub_1CA4236F8, v5, 0);
}

uint64_t sub_1CA4236F8()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v3 = *(v0 + 296);
  DrawerAction.itemForInserting(homeID:)();
  *(v0 + 376) = v45;
  if (v45)
  {
    if (*(v0 + 336))
    {
      v4 = *(v0 + 464);
      v6 = *(v0 + 360);
      v5 = *(v0 + 368);
      v8 = *(v0 + 344);
      v7 = *(v0 + 352);
      v9 = *(v0 + 328);
      if (v4)
      {
        v10 = *(*(v0 + 320) + 176);
        v11 = v45;
        v12 = OUTLINED_FUNCTION_42_5();
        sub_1CA435E40(v12, v13, v14, v15, v6, v5, v4);
        v16 = OUTLINED_FUNCTION_120();
        sub_1CA435C7C(v16, v17, v5, 1);
        v18 = [v7 bundleIdentifier];
        if (!v18)
        {
          sub_1CA94C3A8();
          v18 = sub_1CA94C368();
        }

        *(v0 + 384) = v18;
        v19 = v6;
        v20 = [v6 basePhraseTemplate];
        if (!v20)
        {
          sub_1CA94C3A8();
          v20 = sub_1CA94C368();
        }

        *(v0 + 392) = v20;
        v21 = [v7 actionIdentifier];
        if (!v21)
        {
          sub_1CA94C3A8();
          v21 = sub_1CA94C368();
        }

        *(v0 + 400) = v21;
        v22 = [v6 parameterIdentifier];
        OUTLINED_FUNCTION_40();
        v23 = sub_1CA948D28();
        OUTLINED_FUNCTION_1_0(v23);
        v25 = v24;
        v27 = *(v26 + 64) + 15;
        v28 = swift_task_alloc();
        if (v6)
        {
          sub_1CA948CF8();

          v19 = sub_1CA948CD8();
          (*(v25 + 8))(v28, v23);
        }

        *(v0 + 408) = v19;

        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 272;
        *(v0 + 24) = sub_1CA423B18;
        v29 = swift_continuation_init();
        *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4454E0, &unk_1CA987600);
        *(v0 + 144) = MEMORY[0x1E69E9820];
        *(v0 + 152) = 1107296256;
        *(v0 + 160) = sub_1CA3FC964;
        *(v0 + 168) = &block_descriptor_102;
        *(v0 + 176) = v29;
        [v10 retrieveActionForBundleIdentifier:v18 basePhraseTemplate:v20 actionIdentifier:v21 parameterIdentifier:v19 completion:v0 + 144];

        return MEMORY[0x1EEE6DEC8](v0 + 16);
      }

      v31 = v45;
      v32 = OUTLINED_FUNCTION_42_5();
      sub_1CA435E40(v32, v33, v34, v35, v6, v5, v4);
      v36 = OUTLINED_FUNCTION_120();
      sub_1CA435C7C(v36, v37, v5, 0);
      swift_unknownObjectRetain();
      v44 = v6;
      v38 = sub_1CA94C368();

      [v31 setParameterState:v7 forKey:v38];

      swift_unknownObjectRelease();
      v39 = OUTLINED_FUNCTION_42_5();
      sub_1CA435EB4(v39, v40, v41, v42, v44, v5, v4);

      swift_unknownObjectRelease();
    }

    **(v0 + 288) = v45;
    OUTLINED_FUNCTION_5();
  }

  else
  {
    sub_1CA435DEC();
    swift_allocError();
    swift_willThrow();
    OUTLINED_FUNCTION_5();
  }

  return v30();
}

uint64_t sub_1CA423B18()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 416) = v4;
  v5 = *(v3 + 320);
  if (v4)
  {
    v6 = sub_1CA4241C8;
  }

  else
  {
    v6 = sub_1CA423C2C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1CA423C2C()
{
  v2 = v0[50];
  v1 = v0[51];
  v4 = v0[48];
  v3 = v0[49];
  v5 = v0[46];
  v6 = v0[44];
  v7 = v0[34];
  v0[53] = v7;

  v8 = [v6 actionIdentifier];
  sub_1CA94C3A8();
  OUTLINED_FUNCTION_194();

  v9 = [v6 bundleIdentifier];
  sub_1CA94C3A8();

  v10 = objc_allocWithZone(MEMORY[0x1E69AC860]);
  OUTLINED_FUNCTION_126();
  v11 = sub_1CA334F5C();
  v0[54] = v11;
  sub_1CA25B3D0(0, &qword_1EC4454E8, 0x1E69E0B98);
  v12 = sub_1CA52D268(v11, v7, v5, 1);
  v0[55] = v12;
  v13 = [objc_opt_self() defaultDatabase];
  v0[56] = v13;
  v0[10] = v0;
  v0[15] = v0 + 35;
  v0[11] = sub_1CA423E88;
  v14 = swift_continuation_init();
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4454F0, qword_1CA98AEC0);
  v0[26] = MEMORY[0x1E69E9820];
  v0[27] = 1107296256;
  v0[28] = sub_1CA320A2C;
  v0[29] = &block_descriptor_105;
  v0[30] = v14;
  [v12 createWorkflowWithEnvironment:0 database:v13 completionHandler:v0 + 26];

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1CA423E88()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 112);
  *(v1 + 456) = v4;
  v5 = *(v3 + 320);
  if (v4)
  {
    v6 = sub_1CA4242A4;
  }

  else
  {
    v6 = sub_1CA423F9C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1CA423F9C()
{
  v1 = *(v0 + 280);

  v2 = [v1 actions];
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  OUTLINED_FUNCTION_186_0();
  v3 = sub_1CA94C658();

  if (sub_1CA25B410(v3))
  {
    sub_1CA275D70(0, (v3 & 0xC000000000000001) == 0, v3);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1CCAA22D0](0, v3);
    }

    else
    {
      v4 = *(v3 + 32);
    }

    v28 = v4;
    v5 = *(v0 + 432);
    v6 = *(v0 + 440);
    v8 = *(v0 + 368);
    v7 = *(v0 + 376);
    v10 = *(v0 + 352);
    v9 = *(v0 + 360);
    v22 = *(v0 + 336);
    v24 = *(v0 + 344);
    v11 = *(v0 + 328);
    v26 = *(v0 + 464);

    sub_1CA435EB4(v11, v22, v24, v10, v9, v8, v26);

    **(v0 + 288) = v28;
    OUTLINED_FUNCTION_5();
  }

  else
  {
    v13 = v1;
    v15 = *(v0 + 432);
    v14 = *(v0 + 440);
    v16 = *(v0 + 368);
    v17 = *(v0 + 376);
    v19 = *(v0 + 352);
    v18 = *(v0 + 360);
    v25 = *(v0 + 336);
    v27 = *(v0 + 344);
    v21 = *(v0 + 424);
    v23 = *(v0 + 328);
    v29 = *(v0 + 464);

    sub_1CA435DEC();
    swift_allocError();
    swift_willThrow();

    sub_1CA435EB4(v23, v25, v27, v19, v18, v16, v29);
    OUTLINED_FUNCTION_5();
  }

  return v12();
}

uint64_t sub_1CA4241C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138_3();
  v17 = *(v16 + 416);
  v36 = *(v16 + 408);
  v37 = *(v16 + 400);
  v18 = *(v16 + 376);
  v38 = *(v16 + 392);
  v39 = *(v16 + 384);
  v19 = *(v16 + 360);
  v20 = *(v16 + 368);
  v22 = *(v16 + 344);
  v21 = *(v16 + 352);
  v24 = *(v16 + 328);
  v23 = *(v16 + 336);
  v25 = *(v16 + 464);
  swift_willThrow();

  sub_1CA435EB4(v24, v23, v22, v21, v19, v20, v25);
  v26 = *(v16 + 416);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_99();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, v36, v37, v38, v39, a13, a14, a15, a16);
}

uint64_t sub_1CA4242A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138_3();
  v17 = *(v16 + 456);
  v18 = *(v16 + 432);
  v37 = *(v16 + 440);
  v38 = *(v16 + 448);
  v19 = *(v16 + 424);
  v20 = *(v16 + 368);
  v21 = *(v16 + 376);
  v23 = *(v16 + 352);
  v22 = *(v16 + 360);
  v24 = *(v16 + 336);
  v36 = *(v16 + 344);
  v25 = *(v16 + 328);
  HIDWORD(a10) = *(v16 + 464);
  swift_willThrow();

  sub_1CA435EB4(v25, v24, v36, v23, v22, v20, SBYTE4(a10));
  v26 = *(v16 + 456);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_99();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, v36, a10, v37, v38, a13, a14, a15, a16);
}

uint64_t sub_1CA424380()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  sub_1CA42AC68(*(v0 + 112));
  v7 = *(v0 + 168);

  v8 = *(v0 + 184);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1CA4243CC()
{
  v0 = sub_1CA424380();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1CA4243F4()
{
  swift_defaultActor_initialize();
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 176) = [objc_allocWithZone(MEMORY[0x1E69ACDC0]) initWithOptions_];
  *(v0 + 184) = 0;
  return v0;
}

uint64_t ActionDrawerActionTopHit.title.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1CA94C218();
  return OUTLINED_FUNCTION_23();
}

uint64_t ActionDrawerActionTopHit.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1CA94C458();
  return sub_1CA94CFE8();
}

uint64_t static ActionDrawerActionTopHit.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1CA94D7F8() & 1) == 0)
  {
    return 0;
  }

  sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);
  v5 = v2;
  v6 = v3;
  OUTLINED_FUNCTION_20_0();
  v7 = sub_1CA94CFD8();

  return v7 & 1;
}

uint64_t ActionDrawerActionTopHit.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1CA94D918();
  sub_1CA94C458();
  sub_1CA94CFE8();
  return sub_1CA94D968();
}

uint64_t sub_1CA4245C0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1CA94D918();
  sub_1CA94C458();
  sub_1CA94CFE8();
  return sub_1CA94D968();
}

uint64_t ActionDrawerSearchResults.apps.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ActionDrawerSearchResults.actions.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t ActionDrawerActionSearchResult.titleMatchingRanges.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActionDrawerActionSearchResult(0) + 20));

  return sub_1CA94C218();
}

Swift::OpaquePointer_optional __swiftcall ActionDrawerDataSource.allActionsByID()()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[10];
  if (v1)
  {
    v8 = v0[4];
    sub_1CA94C218();
  }

  v9 = OUTLINED_FUNCTION_58_3();
  sub_1CA42ABDC(v9);
  v10 = OUTLINED_FUNCTION_58_3();
  sub_1CA42AC68(v10);
  v12 = v1;
  result.value._rawValue = v12;
  result.is_nil = v11;
  return result;
}

void ActionDrawerDataSource.allAppActions()()
{
  OUTLINED_FUNCTION_37_0();
  v1 = type metadata accessor for DrawerAction(0);
  v2 = OUTLINED_FUNCTION_12(v1);
  v116 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_19();
  v8 = v6 - v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v99 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v99 - v13;
  v120 = sub_1CA94B1C8();
  v15 = OUTLINED_FUNCTION_1_0(v120);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_19();
  v111 = v20 - v21;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_48_0();
  v119 = v23;
  v125 = v0[4];
  if (v125 && (v24 = v0[7], (v118 = *(v24 + 16)) != 0))
  {
    v100 = v14;
    v99 = v12;
    v101 = v8;
    v26 = v0[5];
    v25 = v0[6];
    v27 = v0[9];
    v28 = v24 + 32;
    v29 = v0[10];
    v104 = v0[8];
    v103 = v27;
    v102 = v29;
    sub_1CA42ABDC(v125);
    v109 = v17 + 32;
    v110 = v17 + 16;
    v105 = (v17 + 8);
    sub_1CA94C218();
    v30 = 0;
    v117 = 0;
    v123 = MEMORY[0x1E69E7CC0];
    v31 = v24;
    v32 = v118;
    v108 = v17;
    v107 = v24;
    v106 = v26;
    v121 = v24 + 32;
    while (v30 < *(v31 + 16))
    {
      if (*(v25 + 16))
      {
        v33 = (v28 + 16 * v30);
        v34 = *v33;
        v35 = v33[1];
        sub_1CA94C218();
        v126 = v34;
        v36 = sub_1CA271BF8();
        if (v37)
        {
          v38 = (*(v25 + 56) + 16 * v36);
          v39 = v26;
          v40 = *v38;
          v41 = v38[1];
          v42 = *(v39 + 16);
          sub_1CA94C218();
          sub_1CA94C218();
          if (v42 && (v43 = sub_1CA271BF8(), (v44 & 1) != 0))
          {
            (*(v17 + 16))(v111, *(v39 + 56) + *(v17 + 72) * v43, v120);
            v45 = *(v17 + 32);
            v46 = v119;
            v47 = OUTLINED_FUNCTION_134();
            v48(v47);
            v127 = 762343521;
            v128 = 0xE400000000000000;
            MEMORY[0x1CCAA1300](v126, v35);
            v114 = v128;
            v115 = v127;
            v49 = sub_1CA94B138();
            v112 = v50;
            v113 = v49;
            sub_1CA94C218();
            sub_1CA419064(v40);
            OUTLINED_FUNCTION_101_3();

            v51 = 0;
            v53 = v46 + 56;
            v52 = *(v46 + 56);
            v124 = v46;
            v54 = *(v46 + 32);
            OUTLINED_FUNCTION_16_16();
            v57 = v56 & v55;
            v59 = (v58 + 63) >> 6;
            v122 = MEMORY[0x1E69E7CC0];
            while (v57)
            {
              v60 = v57;
LABEL_17:
              v57 = (v60 - 1) & v60;
              if (*(v125 + 16))
              {
                v63 = *(v124 + 48);
                OUTLINED_FUNCTION_94_2();
                v65 = *v64;
                v66 = v64[1];
                sub_1CA94C218();
                OUTLINED_FUNCTION_107_0();
                v67 = sub_1CA271BF8();
                v69 = v68;

                if (v69)
                {
                  v70 = *(v125 + 56);
                  v71 = *(v116 + 72);
                  OUTLINED_FUNCTION_36_8();
                  v72 = v99;
                  sub_1CA42B9A4(v73, v99);
                  OUTLINED_FUNCTION_0_31();
                  v74 = v72;
                  v75 = v100;
                  sub_1CA42BA50(v74, v100);
                  v76._countAndFlagsBits = v126;
                  v76._object = v35;
                  DrawerAction.setAttributionContainer(bundleID:)(v76);
                  sub_1CA42B9A4(v75, v101);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v83 = *(v122 + 16);
                    OUTLINED_FUNCTION_21();
                    sub_1CA2E5CDC();
                    v122 = v84;
                  }

                  v78 = *(v122 + 16);
                  v77 = *(v122 + 24);
                  OUTLINED_FUNCTION_70_1();
                  if (v80)
                  {
                    OUTLINED_FUNCTION_17_1(v79);
                    sub_1CA2E5CDC();
                    v122 = v85;
                  }

                  OUTLINED_FUNCTION_2_31();
                  sub_1CA42B9FC();
                  *(v122 + 16) = v67;
                  v81 = *(v116 + 80);
                  OUTLINED_FUNCTION_68_0();
                  OUTLINED_FUNCTION_0_31();
                  sub_1CA42BA50(v101, v82);
                }
              }
            }

            v32 = v118;
            v61 = v123;
            while (1)
            {
              v62 = v51 + 1;
              if (__OFADD__(v51, 1))
              {
                __break(1u);
                goto LABEL_38;
              }

              if (v62 >= v59)
              {
                break;
              }

              v60 = *(v53 + 8 * v62);
              ++v51;
              if (v60)
              {
                v51 = v62;
                goto LABEL_17;
              }
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1CA42B290(v122);
              v122 = v95;
            }

            v17 = v108;
            v26 = v106;
            v86 = v117;
            v87 = *(v122 + 16);
            v127 = v122 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
            v128 = v87;
            sub_1CA42B7D4(&v127, type metadata accessor for DrawerAction, sub_1CA42EC80, sub_1CA42C448);
            v117 = v86;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v96 = *(v61 + 16);
              OUTLINED_FUNCTION_21();
              sub_1CA2E60FC();
              v61 = v97;
            }

            v31 = v107;
            v89 = *(v61 + 16);
            v88 = *(v61 + 24);
            v123 = v61;
            OUTLINED_FUNCTION_70_1();
            if (v80)
            {
              OUTLINED_FUNCTION_17_1(v90);
              sub_1CA2E60FC();
              v123 = v98;
            }

            (*v105)(v119, v120);
            v91 = v123;
            *(v123 + 16) = v61;
            v92 = (v91 + 56 * v89);
            v93 = v114;
            v92[4] = v115;
            v92[5] = v93;
            v94 = v112;
            v92[6] = v113;
            v92[7] = v94;
            v92[8] = v126;
            v92[9] = v35;
            v92[10] = v122;
          }

          else
          {

            v26 = v39;
          }

          v28 = v121;
        }

        else
        {
        }
      }

      if (++v30 == v32)
      {
        sub_1CA42AC68(v125);

        goto LABEL_36;
      }
    }

LABEL_38:
    __break(1u);
  }

  else
  {
LABEL_36:
    OUTLINED_FUNCTION_36();
  }
}

BOOL sub_1CA424E48(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  a3();
  sub_1CA27BAF0();
  v4 = OUTLINED_FUNCTION_110_2();

  return v4 == -1;
}

void sub_1CA424EEC()
{
  OUTLINED_FUNCTION_30();
  v1 = sub_1CA94B1C8();
  OUTLINED_FUNCTION_18_0(v1);
  v3 = v2;
  v4 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA627804(v4);
    v4 = v5;
  }

  v6 = *(v4 + 16);
  v7[0] = v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v7[1] = v6;
  sub_1CA42B6AC(v7);
  *v0 = v4;
}

uint64_t sub_1CA424F8C(uint64_t *a1)
{
  v2 = *(sub_1CA9486C8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA62781C(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1CA42B7D4(v7, MEMORY[0x1E6996C28], sub_1CA42E0C4, sub_1CA42C128);
  *a1 = v3;
  return result;
}

uint64_t sub_1CA425070(uint64_t *a1, uint64_t a2)
{
  v4 = *(type metadata accessor for DrawerAction(0) - 8);
  v5 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA627834(v5);
    v5 = v6;
  }

  v7 = *(v5 + 16);
  v9[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v9[1] = v7;

  sub_1CA42BACC(v9, a2);
  *a1 = v5;
}

uint64_t sub_1CA425150(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4440B0, &unk_1CA981B10) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA62784C(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1CA42BC40(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_1CA425204(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA627864(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1CA42BD88(v6);
  *a1 = v2;
  return result;
}

void ActionDrawerDataSource.searchResults(query:)(uint64_t a1@<X0>, uint64_t a2@<X1>, int64x2_t *a3@<X8>)
{
  v189 = a2;
  v181 = sub_1CA94B1C8();
  v6 = OUTLINED_FUNCTION_1_0(v181);
  v164 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19();
  v180 = v10 - v11;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_48_0();
  v179 = v13;
  v163 = type metadata accessor for ActionDrawerActionSearchResult(0);
  v14 = OUTLINED_FUNCTION_1_0(v163);
  v162 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_19();
  v161 = v18 - v19;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_45_0();
  v160 = v21;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v22);
  v24 = v152 - v23;
  v25 = type metadata accessor for DrawerAction(0);
  v26 = OUTLINED_FUNCTION_18_0(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_6_0();
  v185 = v30 - v29;
  v182 = type metadata accessor for DrawerSearchIndexItem(0);
  v31 = OUTLINED_FUNCTION_52(v182);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_6_0();
  v36 = v35 - v34;
  v178 = sub_1CA949F78();
  v37 = OUTLINED_FUNCTION_1_0(v178);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_6_0();
  v187 = v43 - v42;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4440B0, &unk_1CA981B10);
  v44 = OUTLINED_FUNCTION_1_0(v186);
  v183 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_45_0();
  v188 = v49;
  OUTLINED_FUNCTION_31_2();
  v51 = MEMORY[0x1EEE9AC00](v50);
  MEMORY[0x1EEE9AC00](v51);
  v55 = v152 - v54;
  v191.i64[0] = MEMORY[0x1E69E7CC0];
  v191.i64[1] = MEMORY[0x1E69E7CC0];
  v56 = *(v3 + 88);
  v57 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
  if (!v56)
  {
    goto LABEL_47;
  }

  v184 = v57;
  v58 = a3;
  v176 = v53;
  v177 = v52;
  v59 = *(v3 + 112);
  v60 = *(v3 + 120);
  v192 = v56;
  v193 = *(v3 + 96);
  v194 = v59;
  v195 = v60;

  v61 = v59;
  OUTLINED_FUNCTION_139();
  sub_1CA94C218();
  v62 = v189;
  if (sub_1CA94C468() <= 0)
  {

    a3 = v58;
    v57 = v184;
LABEL_47:
    *a3 = v57;
    return;
  }

  v154 = v3;
  v155 = v60;
  v63 = sub_1CA4145F8(a1, v62);
  v65 = v63;
  v175 = *(v63 + 16);
  if (!v175)
  {

    v151 = MEMORY[0x1E69E7CC0];
    a3 = v58;
LABEL_43:
    if (*(v151 + 16))
    {
      sub_1CA2B7F34();
    }

    else
    {
    }

    v57 = v191;
    goto LABEL_47;
  }

  v152[1] = v56;
  v153 = v58;
  v66 = 0;
  v174 = v63 + ((*(v183 + 80) + 32) & ~*(v183 + 80));
  v173 = v39 + 8;
  v172 = *MEMORY[0x1E69E10A0];
  v171 = (v164 + 32);
  v159 = (v164 + 16);
  v158 = v164 + 8;
  *&v64 = 136315650;
  v157 = v64;
  v166 = MEMORY[0x1E69E7CC0];
  v184.i64[0] = MEMORY[0x1E69E7CC0];
  v165 = MEMORY[0x1E69E7CC0];
  v156 = v24;
  v169 = v36;
  v67 = v188;
  v68 = v177;
  v168 = v63;
  v170 = v55;
  while (v66 < *(v65 + 16))
  {
    v69 = *(v183 + 72);
    v189 = v66;
    OUTLINED_FUNCTION_144_1(v174 + v69 * v66, v55);
    sub_1CA949C58();
    v70 = v55;
    v71 = v55;
    v72 = v176;
    OUTLINED_FUNCTION_144_1(v70, v176);
    OUTLINED_FUNCTION_144_1(v71, v67);
    OUTLINED_FUNCTION_144_1(v71, v68);
    v73 = sub_1CA949F68();
    v74 = sub_1CA94CC08();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = v68;
      v76 = swift_slowAlloc();
      v167.i64[0] = swift_slowAlloc();
      v190 = v167.i64[0];
      *v76 = v157;
      v77 = sub_1CA42928C();
      OUTLINED_FUNCTION_106_3(v72);
      v78 = OUTLINED_FUNCTION_35();
      sub_1CA26B54C(v78, v79, v80);
      OUTLINED_FUNCTION_101_3();

      *(v76 + 4) = v77;
      *(v76 + 12) = 2048;
      v81 = v186;
      v82 = *(v188 + *(v186 + 36));
      OUTLINED_FUNCTION_106_3(v188);
      *(v76 + 14) = v82;
      *(v76 + 22) = 2080;
      v83 = *(v75 + *(v81 + 40));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4440C0, &qword_1CA983470);
      sub_1CA276B98(&qword_1EC4440C8, &qword_1EC4440C0, &qword_1CA983470);
      OUTLINED_FUNCTION_35();
      v84 = sub_1CA94C908();
      v67 = v188;
      OUTLINED_FUNCTION_106_3(v75);
      v85 = OUTLINED_FUNCTION_35();
      sub_1CA26B54C(v85, v86, v87);
      OUTLINED_FUNCTION_101_3();
      v36 = v169;

      *(v76 + 24) = v84;
      _os_log_impl(&dword_1CA256000, v73, v74, "Search result: %s - %f [%s]", v76, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();
    }

    else
    {

      OUTLINED_FUNCTION_106_3(v68);
      OUTLINED_FUNCTION_106_3(v67);
      OUTLINED_FUNCTION_106_3(v72);
    }

    v88 = OUTLINED_FUNCTION_125_2();
    v89(v88, v178);
    v55 = v170;
    sub_1CA42B9A4(v170, v36);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v90 = *v171;
      v91 = v179;
      v92 = OUTLINED_FUNCTION_35();
      v93 = v181;
      v90(v92);
      (*v159)(v180, v91, v93);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v142 = *(v184.i64[0] + 16);
        OUTLINED_FUNCTION_21();
        sub_1CA2E5A04();
        v184.i64[0] = v143;
      }

      v94 = v36;
      v96 = *(v184.i64[0] + 16);
      v95 = *(v184.i64[0] + 24);
      v97 = v67;
      if (v96 >= v95 >> 1)
      {
        OUTLINED_FUNCTION_18(v95);
        sub_1CA2E5A04();
        v184.i64[0] = v144;
      }

      v98 = v164;
      v99 = v181;
      (*(v164 + 8))(v179, v181);
      sub_1CA27080C(v55, &unk_1EC4440B0, &unk_1CA981B10);
      v100 = v184.i64[0];
      *(v184.i64[0] + 16) = v96 + 1;
      v101 = *(v98 + 80);
      OUTLINED_FUNCTION_68_0();
      (v90)(v100 + v102 + *(v98 + 72) * v96, v180, v99);
      v191.i64[0] = v100;
      v65 = v168;
      v67 = v97;
      v36 = v94;
    }

    else
    {
      v103 = *(v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445408, &unk_1CA986FF0) + 48));

      OUTLINED_FUNCTION_0_31();
      sub_1CA42BA50(v36, v185);
      v104 = *&v55[*(v186 + 40)];
      v105 = *(v104 + 56);
      v106 = *(v104 + 32);
      OUTLINED_FUNCTION_16_16();
      v36 = v108 & v107;
      v110 = (v109 + 63) >> 6;
      sub_1CA94C218();
      v111 = 0;
      v65 = MEMORY[0x1E69E7CC0];
      while (v36)
      {
LABEL_21:
        v113 = __clz(__rbit64(v36));
        v36 &= v36 - 1;
        v114 = (*(v104 + 48) + 112 * (v113 | (v111 << 6)));
        if (*v114 <= 1u)
        {
          v167 = *(v114 + 40);
          v115 = vshrq_n_u64(v167, 0xEuLL);
          if (vmovn_s64(vcgtq_u64(v115, vdupq_laneq_s64(v115, 1))).u32[0])
          {
            goto LABEL_50;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v118 = *(v65 + 16);
            OUTLINED_FUNCTION_21();
            sub_1CA2E61F4();
            v65 = v119;
          }

          v117 = *(v65 + 16);
          v116 = *(v65 + 24);
          if (v117 >= v116 >> 1)
          {
            OUTLINED_FUNCTION_17_1(v116);
            sub_1CA2E61F4();
            v65 = v120;
          }

          *(v65 + 16) = v117 + 1;
          *(v65 + 16 * v117 + 32) = v167;
          v67 = v188;
        }
      }

      while (1)
      {
        v112 = v111 + 1;
        if (__OFADD__(v111, 1))
        {
          __break(1u);
          goto LABEL_49;
        }

        if (v112 >= v110)
        {
          break;
        }

        v36 = *(v104 + 56 + 8 * v112);
        ++v111;
        if (v36)
        {
          v111 = v112;
          goto LABEL_21;
        }
      }

      OUTLINED_FUNCTION_1_29();
      v121 = v156;
      sub_1CA42B9A4(v185, v156);
      v122 = *&v55[*(v186 + 36)];
      v123 = v163;
      *(v121 + *(v163 + 20)) = v65;
      *(v121 + *(v123 + 24)) = v122;
      DrawerAction.needsInternalBadge.getter();
      if (v124)
      {
        v125 = OUTLINED_FUNCTION_30_11();
        sub_1CA42B9A4(v125, v160);
        v126 = v166;
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_90_4();
        if ((v127 & 1) == 0)
        {
          v145 = *(v126 + 16);
          OUTLINED_FUNCTION_21();
          sub_1CA2E612C();
          v126 = v146;
        }

        v166 = v126;
        v129 = *(v126 + 16);
        v128 = *(v126 + 24);
        if (v129 >= v128 >> 1)
        {
          OUTLINED_FUNCTION_18(v128);
          sub_1CA2E612C();
          v166 = v147;
        }

        OUTLINED_FUNCTION_38_8();
        OUTLINED_FUNCTION_2_31();
        sub_1CA42B9FC();
        sub_1CA27080C(v55, &unk_1EC4440B0, &unk_1CA981B10);
        *(v166 + 16) = v129 + 1;
        v130 = *(v162 + 80);
        OUTLINED_FUNCTION_68_0();
        OUTLINED_FUNCTION_26_12(v132 + v131);
        sub_1CA42BA50(v160, v133);
      }

      else
      {
        v134 = OUTLINED_FUNCTION_30_11();
        sub_1CA42B9A4(v134, v161);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_90_4();
        if ((v135 & 1) == 0)
        {
          v148 = *(v165 + 16);
          OUTLINED_FUNCTION_21();
          sub_1CA2E612C();
          v165 = v149;
        }

        v137 = *(v165 + 16);
        v136 = *(v165 + 24);
        if (v137 >= v136 >> 1)
        {
          OUTLINED_FUNCTION_18(v136);
          sub_1CA2E612C();
          v165 = v150;
        }

        OUTLINED_FUNCTION_38_8();
        OUTLINED_FUNCTION_2_31();
        sub_1CA42B9FC();
        sub_1CA27080C(v55, &unk_1EC4440B0, &unk_1CA981B10);
        v138 = v165;
        *(v165 + 16) = v137 + 1;
        v139 = *(v162 + 80);
        OUTLINED_FUNCTION_68_0();
        OUTLINED_FUNCTION_26_12(v138 + v140);
        sub_1CA42BA50(v161, v141);
        v191.i64[1] = v138;
      }
    }

    v66 = v189 + 1;
    v68 = v177;
    if (v189 + 1 == v175)
    {

      a3 = v153;
      v151 = v166;
      goto LABEL_43;
    }
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

WorkflowKit::ActionDrawerDataSource::CategorizedActionsResult __swiftcall ActionDrawerDataSource._actions(in:query:)(__C::WFContentCategory in, Swift::String_optional query)
{
  OUTLINED_FUNCTION_37_0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for DrawerAction(0);
  v10 = OUTLINED_FUNCTION_12(v9);
  v75 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19();
  v74 = v14 - v15;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_45_0();
  v73 = v17;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_83_1();
  sub_1CA4263A4(v6, v4, v76);
  v19 = v76[0].i64[0];
  v63 = v8;
  if (!v76[0].i64[0])
  {
    v25 = MEMORY[0x1E69E7CC0];
    v24 = MEMORY[0x1E69E7CC0];
LABEL_34:
    *v63 = v25;
    v63[1] = v24;
    OUTLINED_FUNCTION_36();
    goto LABEL_36;
  }

  v20 = sub_1CA6736A4();
  v22 = v20;
  v66 = v20[2];
  if (!v66)
  {

    v25 = MEMORY[0x1E69E7CC0];
    v24 = MEMORY[0x1E69E7CC0];
LABEL_33:
    sub_1CA27080C(v76, &unk_1EC445410, &unk_1CA987000);
    goto LABEL_34;
  }

  v23 = 0;
  v65 = v20 + 4;
  v24 = MEMORY[0x1E69E7CC0];
  v25 = MEMORY[0x1E69E7CC0];
  v64 = v20;
  while (v23 < v22[2])
  {
    v70 = v25;
    v26 = v22;
    v27 = &v65[5 * v23];
    v28 = v27[1];
    v29 = v27[3];
    v68 = v27[2];
    v69 = *v27;
    v30 = v27[4];
    v31 = *(v30 + 16);
    v71 = v29;
    v72 = v28;
    if (v31)
    {
      v67 = v23;
      swift_bridgeObjectRetain_n();
      sub_1CA94C218();
      sub_1CA94C218();
      v32 = (v30 + 40);
      v33 = MEMORY[0x1E69E7CC0];
      do
      {
        v28 = *(v32 - 1);
        v34 = *v32;
        v35 = *(v19 + 16);
        sub_1CA94C218();
        if (v35 && (sub_1CA271BF8(), (v36 & 1) != 0))
        {

          v37 = *(v19 + 56);
          v38 = *(v75 + 72);
          OUTLINED_FUNCTION_36_8();
          sub_1CA42B9A4(v39, v73);
          OUTLINED_FUNCTION_0_31();
          sub_1CA42BA50(v73, v2);
          sub_1CA42B9A4(v2, v74);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v53 = *(v33 + 16);
            OUTLINED_FUNCTION_21();
            sub_1CA2E5CDC();
            v33 = v54;
          }

          v41 = *(v33 + 16);
          v40 = *(v33 + 24);
          OUTLINED_FUNCTION_70_1();
          if (v43)
          {
            OUTLINED_FUNCTION_17_1(v42);
            sub_1CA2E5CDC();
            v33 = v55;
          }

          OUTLINED_FUNCTION_2_31();
          sub_1CA42B9FC();
          *(v33 + 16) = v28;
          v44 = *(v75 + 80);
          OUTLINED_FUNCTION_68_0();
          OUTLINED_FUNCTION_0_31();
          sub_1CA42BA50(v45, v46);
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = *(v24 + 16);
            OUTLINED_FUNCTION_21();
            sub_1CA26DADC();
            v24 = v51;
          }

          v48 = *(v24 + 16);
          v47 = *(v24 + 24);
          if (v48 >= v47 >> 1)
          {
            OUTLINED_FUNCTION_18(v47);
            sub_1CA26DADC();
            v24 = v52;
          }

          *(v24 + 16) = v48 + 1;
          v49 = v24 + 16 * v48;
          *(v49 + 32) = v28;
          *(v49 + 40) = v34;
        }

        v32 += 2;
        --v31;
      }

      while (v31);

      v25 = v70;
      v22 = v64;
      v23 = v67;
    }

    else
    {
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      v33 = MEMORY[0x1E69E7CC0];
      v22 = v26;
      v25 = v70;
    }

    if (*(v33 + 16))
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = v25[2];
        OUTLINED_FUNCTION_21();
        sub_1CA2E60FC();
        v25 = v61;
      }

      v57 = v25[2];
      v56 = v25[3];
      OUTLINED_FUNCTION_70_1();
      if (v43)
      {
        OUTLINED_FUNCTION_17_1(v58);
        sub_1CA2E60FC();
        v25 = v20;
      }

      v25[2] = v28;
      v59 = &v25[7 * v57];
      v59[4] = v69;
      v59[5] = v72;
      v59[6] = v68;
      v59[7] = v71;
      v59[8] = 0;
      v59[9] = 0;
      v59[10] = v33;
    }

    else
    {
    }

    if (++v23 == v66)
    {

      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_36:
  result.missingActionIDs._rawValue = v21;
  result.sections._rawValue = v20;
  return result;
}

uint64_t sub_1CA4263A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64x2_t *a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for ActionDrawerActionSearchResult(0);
  v58[0] = *(v8 - 8);
  v9 = *(v58[0] + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DrawerAction(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_11;
  }

  v62[0].i64[0] = a1;
  v62[0].i64[1] = a2;
  v17 = sub_1CA948868();
  v58[1] = v58;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  *&v59 = a2;
  v21 = v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948848();
  sub_1CA27BAF0();
  v22 = sub_1CA94D1A8();
  v60.i64[0] = a3;
  v24 = v23;
  v25 = v21;
  v26 = v59;
  (*(v18 + 8))(v25, v17);

  v27 = HIBYTE(v24) & 0xF;
  v28 = (v24 & 0x2000000000000000) == 0;
  a3 = v60.i64[0];
  if (v28)
  {
    v27 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    ActionDrawerDataSource.searchResults(query:)(a1, v26, v62);
    v29 = v62[0].i64[1];

    v30 = *(v29 + 16);
    if (v30)
    {
      v61 = MEMORY[0x1E69E7CC0];
      sub_1CA2B8F5C();
      v31 = v61;
      v32 = *(v58[0] + 80);
      *&v59 = v29;
      v33 = v29 + ((v32 + 32) & ~v32);
      v34 = *(v58[0] + 72);
      do
      {
        sub_1CA42B9A4(v33, v11);
        sub_1CA42B9A4(v11, v16);
        sub_1CA42B9FC();
        v61 = v31;
        v35 = *(v31 + 16);
        if (v35 >= *(v31 + 24) >> 1)
        {
          sub_1CA2B8F5C();
          v31 = v61;
        }

        *(v31 + 16) = v35 + 1;
        sub_1CA42BA50(v16, v31 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v35);
        v33 += v34;
        --v30;
      }

      while (v30);

      a3 = v60.i64[0];
    }

    else
    {

      v31 = MEMORY[0x1E69E7CC0];
    }

    v60.i32[0] = sub_1CA41B950();
    v43 = v4[4];
    v44 = v4[5];
    v45 = v4[6];
    v46 = v4[7];
    v47 = v4[8];
    v48 = v4[9];
    v49 = v4[10];
    if (v43)
    {
      sub_1CA42ABDC(v4[4]);
      sub_1CA94C218();
      *&v59 = v48;
    }

    else
    {
      sub_1CA42ABDC(0);
      *&v59 = MEMORY[0x1E69E7CC0];
    }

    sub_1CA42AC68(v43);
    v50 = v4[4];
    v51 = v4[5];
    v52 = v4[6];
    v53 = v4[7];
    v54 = v4[8];
    v55 = v4[9];
    v56 = v4[10];
    if (v50)
    {
      sub_1CA42ABDC(v50);
      sub_1CA94C218();
      v57 = v56;
    }

    else
    {
      sub_1CA42ABDC(0);
      v57 = MEMORY[0x1E69E7CC0];
    }

    sub_1CA42AC68(v50);
    result = sub_1CA41916C(v31, v60.i8[0] & 1, v59, v57, v62[0].i64);
    v41 = v62[1];
    v42 = v62[0];
    v37 = v63;
    v38 = v64;
    v39 = v65;
  }

  else
  {
LABEL_11:
    v36 = *(v4 + 2);
    v59 = *(v4 + 3);
    v60 = v36;
    v37 = v4[8];
    v38 = v4[9];
    v39 = v4[10];
    result = sub_1CA42ABDC(v36);
    v41 = v59;
    v42 = v60;
  }

  *a3 = v42;
  a3[1] = v41;
  a3[2].i64[0] = v37;
  a3[2].i64[1] = v38;
  a3[3].i64[0] = v39;
  return result;
}

void ActionDrawerDataSource.favorites(query:)()
{
  OUTLINED_FUNCTION_37_0();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for DrawerAction(0);
  v9 = OUTLINED_FUNCTION_12(v8);
  v37 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_19();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_127_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_83_1();
  sub_1CA4263A4(v7, v5, v38);
  v18 = v38[0].i64[0];
  if (v38[0].i64[0])
  {
    v19 = *(*(v3 + 128) + 16);
    if (v19)
    {
      v20 = (sub_1CA94C218() + 40);
      v21 = MEMORY[0x1E69E7CC0];
      do
      {
        if (*(v18 + 16))
        {
          v22 = *(v20 - 1);
          v23 = *v20;
          sub_1CA94C218();
          OUTLINED_FUNCTION_72_0();
          v24 = sub_1CA271BF8();
          v26 = v25;

          if (v26)
          {
            sub_1CA42B9A4(*(v18 + 56) + *(v37 + 72) * v24, v1);
            OUTLINED_FUNCTION_0_31();
            v27 = OUTLINED_FUNCTION_70();
            sub_1CA42BA50(v27, v28);
            sub_1CA42B9A4(v2, v15);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v33 = *(v21 + 16);
              OUTLINED_FUNCTION_21();
              sub_1CA2E5CDC();
              v21 = v34;
            }

            v30 = *(v21 + 16);
            v29 = *(v21 + 24);
            if (v30 >= v29 >> 1)
            {
              OUTLINED_FUNCTION_64(v29);
              sub_1CA2E5CDC();
              v21 = v35;
            }

            OUTLINED_FUNCTION_2_31();
            sub_1CA42B9FC();
            *(v21 + 16) = v30 + 1;
            v31 = *(v37 + 80);
            OUTLINED_FUNCTION_68_0();
            OUTLINED_FUNCTION_0_31();
            sub_1CA42BA50(v15, v32);
          }
        }

        v20 += 2;
        --v19;
      }

      while (v19);

      sub_1CA27080C(v38, &unk_1EC445410, &unk_1CA987000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4440D0, &unk_1CA9826F0);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1CA981310;
      *(v36 + 32) = 0x657469726F766166;
      *(v36 + 40) = 0xE900000000000073;
      *(v36 + 48) = 0u;
      *(v36 + 64) = 0u;
      *(v36 + 80) = v21;
    }

    else
    {
      sub_1CA27080C(v38, &unk_1EC445410, &unk_1CA987000);
    }
  }

  OUTLINED_FUNCTION_36();
}

void ActionDrawerDataSource.actions(for:query:)()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v4 = v3;
  v180._countAndFlagsBits = v5;
  v180._object = v6;
  v7 = type metadata accessor for DrawerAction(0);
  v8 = OUTLINED_FUNCTION_12(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19();
  v15 = v13 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v159 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v159 - v21;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_45_0();
  v169 = v23;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_45_0();
  v187 = v25;
  OUTLINED_FUNCTION_31_2();
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v159 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v159 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v159 - v33;
  v175 = v0;
  sub_1CA4263A4(v4, v2, &v191);
  v188 = v191.i64[0];
  if (v191.i64[0])
  {
    v35 = v192;
    if (!*(v192 + 16) || (v36 = sub_1CA271BF8(), (v37 & 1) == 0))
    {
      sub_1CA27080C(&v191, &unk_1EC445410, &unk_1CA987000);
      goto LABEL_29;
    }

    v160 = v22;
    v161 = v19;
    v162 = v15;
    v166 = v10;
    v38 = (*(v35 + 56) + 16 * v36);
    v39 = v38[1];
    v185 = *v38;
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C438();
    if (qword_1EDB9F5F0 != -1)
    {
LABEL_85:
      swift_once();
    }

    v40 = qword_1EDB9F690;
    OUTLINED_FUNCTION_134();
    v41 = sub_1CA94C368();
    OUTLINED_FUNCTION_134();
    v42 = sub_1CA94C368();

    v43 = [v40 localizedStringForKey:v41 value:v42 table:0];

    v173 = sub_1CA94C3A8();
    v45 = v44;

    v165 = 0x80000001CA9B5A20;
    v46 = v39;
    v47 = v39 + 56;
    v48 = 1 << *(v39 + 32);
    v49 = -1;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    v39 = v49 & *(v39 + 56);
    v50 = (v48 + 63) >> 6;
    v186 = v46;
    sub_1CA94C218();
    v174 = v45;
    sub_1CA94C218();
    v51 = 0;
    v184 = 0;
    v167 = MEMORY[0x1E69E7CC0];
    v183 = MEMORY[0x1E69E7CC0];
    v168 = MEMORY[0x1E69E7CC0];
    v182 = MEMORY[0x1E69E7CC0];
    while (v39)
    {
      v52 = v39;
LABEL_14:
      v39 = (v52 - 1) & v52;
      if (*(v188 + 16))
      {
        v54 = *(v186 + 6);
        OUTLINED_FUNCTION_94_2();
        v56 = *v55;
        v57 = v55[1];
        sub_1CA94C218();
        OUTLINED_FUNCTION_61();
        sub_1CA271BF8();
        v59 = v58;

        if (v59)
        {
          OUTLINED_FUNCTION_117_3();
          v61 = *(v60 + 72);
          OUTLINED_FUNCTION_1_29();
          sub_1CA42B9A4(v62, v32);
          OUTLINED_FUNCTION_0_31();
          sub_1CA42BA50(v32, v34);
          DrawerAction.setAttributionContainer(bundleID:)(v180);
          DrawerAction.needsInternalBadge.getter();
          if (v63)
          {
            OUTLINED_FUNCTION_1_29();
            sub_1CA42B9A4(v34, v29);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v72 = *(v168 + 2);
              OUTLINED_FUNCTION_21();
              sub_1CA2E5CDC();
              v168 = v73;
            }

            OUTLINED_FUNCTION_96_4(&v194);
            if (v66)
            {
              OUTLINED_FUNCTION_64(v65);
              sub_1CA2E5CDC();
              v67 = v74;
              v179 = v29;
              v168 = v74;
              v183 = v74;
            }

            else
            {
              v67 = v64;
              v179 = v29;
              v183 = v64;
            }
          }

          else
          {
            OUTLINED_FUNCTION_1_29();
            sub_1CA42B9A4(v34, v187);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v75 = *(v167 + 16);
              OUTLINED_FUNCTION_21();
              sub_1CA2E5CDC();
              v167 = v76;
            }

            OUTLINED_FUNCTION_96_4(&v193);
            if (v66)
            {
              OUTLINED_FUNCTION_64(v69);
              sub_1CA2E5CDC();
              v67 = v77;
              v179 = v187;
              v167 = v77;
              v182 = v77;
            }

            else
            {
              v67 = v68;
              v179 = v187;
              v182 = v68;
            }
          }

          OUTLINED_FUNCTION_2_31();
          sub_1CA42B9FC();
          *(v67 + 2) = v181;
          v70 = *(v166 + 80);
          OUTLINED_FUNCTION_68_0();
          OUTLINED_FUNCTION_0_31();
          sub_1CA42BA50(v179, v71);
        }
      }
    }

    while (1)
    {
      v53 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      if (v53 >= v50)
      {
        break;
      }

      v52 = *(v47 + 8 * v53);
      ++v51;
      if (v52)
      {
        v51 = v53;
        goto LABEL_14;
      }
    }

    v78 = v167;
    if (*(v167 + 16))
    {
      v79 = v182;
      sub_1CA427964();
      v80 = v79;

      sub_1CA94C218();
      v78 = v80;
      sub_1CA94C218();
      sub_1CA2E60FC();
      v34 = v81;
      v83 = *(v81 + 2);
      v82 = *(v81 + 3);
      OUTLINED_FUNCTION_70_1();
      v85 = v185;
      if (v66)
      {
        OUTLINED_FUNCTION_17_1(v84);
        sub_1CA2E60FC();
        v34 = v157;
      }

      *(v34 + 2) = v80;
      v86 = &v34[56 * v83];
      *(v86 + 4) = 0x67657461632D6F6ELL;
      *(v86 + 5) = 0xEB0000000079726FLL;
      *(v86 + 3) = 0u;
      *(v86 + 4) = 0u;
      *(v86 + 10) = v80;
    }

    else
    {
      v34 = MEMORY[0x1E69E7CC0];
      v85 = v185;
    }

    v167 = v78;
    if (*(v168 + 2))
    {
      v87 = v183;
      sub_1CA427964();
      v88 = v87;

      sub_1CA94C218();
      sub_1CA94C218();
      v168 = v88;
      sub_1CA94C218();
      sub_1CA2E60FC();
      v39 = v89;
      v91 = *(v89 + 16);
      v90 = *(v89 + 24);
      OUTLINED_FUNCTION_70_1();
      v93 = v184;
      if (v66)
      {
        OUTLINED_FUNCTION_17_1(v92);
        sub_1CA2E60FC();
        v39 = v158;
      }

      *(v39 + 16) = v88;
      v94 = (v39 + 56 * v91);
      v94[4] = 0xD000000000000014;
      v95 = v173;
      v94[5] = v165;
      v94[6] = v95;
      v94[7] = v174;
      v94[8] = 0;
      v96 = v168;
      v94[9] = 0;
      v94[10] = v96;
    }

    else
    {
      v39 = MEMORY[0x1E69E7CC0];
      v93 = v184;
    }

    v189 = sub_1CA42AEE4(v85);
    sub_1CA425204(&v189);
    v159 = v93;
    if (!v93)
    {

      v97 = v189;
      v172 = *(v189 + 16);
      if (!v172)
      {
        goto LABEL_81;
      }

      v98 = 0;
      v171 = v189 + 32;
      v170 = v189;
      while (1)
      {
        if (v98 >= *(v97 + 16))
        {
          goto LABEL_84;
        }

        v185 = v39;
        v186 = v34;
        v99 = (v171 + 24 * v98);
        v32 = *v99;
        v100 = v99[1];
        v101 = v99[2];
        v184 = (v98 + 1);
        v189 = 0;
        v190 = 0xE000000000000000;
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94D408();

        v189 = 762343521;
        v190 = 0xE400000000000000;
        countAndFlagsBits = v180._countAndFlagsBits;
        object = v180._object;
        MEMORY[0x1CCAA1300](v180._countAndFlagsBits, v180._object);
        MEMORY[0x1CCAA1300](0x726F67657461632DLL, 0xEA00000000002D79);
        MEMORY[0x1CCAA1300](v32, v100);
        v177 = v189;
        v183 = v190;
        v189 = 0;
        v190 = 0xE000000000000000;
        sub_1CA94C218();
        sub_1CA94D408();

        v189 = 762343521;
        v190 = 0xE400000000000000;
        MEMORY[0x1CCAA1300](countAndFlagsBits, object);
        MEMORY[0x1CCAA1300](0x726F67657461632DLL, 0xEA00000000002D79);
        MEMORY[0x1CCAA1300](v32, v100);
        MEMORY[0x1CCAA1300](0x616E7265746E692DLL, 0xE90000000000006CLL);
        v178 = v189;
        v182 = v190;
        v189 = 10272;
        v190 = 0xE200000000000000;
        MEMORY[0x1CCAA1300](v173, v174);
        MEMORY[0x1CCAA1300](41, 0xE100000000000000);
        v34 = v189;
        v104 = v190;
        v179 = v32;
        v189 = v32;
        v190 = v100;
        sub_1CA94C218();
        MEMORY[0x1CCAA1300](v34, v104);

        v39 = 0;
        v176 = v189;
        v181 = v190;
        v105 = *(v101 + 56);
        v106 = *(v101 + 32);
        OUTLINED_FUNCTION_16_16();
        v109 = v108 & v107;
        v111 = (v110 + 63) >> 6;
        v29 = MEMORY[0x1E69E7CC0];
        v187 = MEMORY[0x1E69E7CC0];
        while (v109)
        {
          v112 = v109;
LABEL_51:
          v109 = (v112 - 1) & v112;
          if (*(v188 + 16))
          {
            v114 = *(v101 + 48);
            OUTLINED_FUNCTION_94_2();
            v116 = *v115;
            v34 = v115[1];
            sub_1CA94C218();
            sub_1CA271BF8();
            v32 = v117;

            if (v32)
            {
              OUTLINED_FUNCTION_117_3();
              v34 = *(v118 + 72);
              OUTLINED_FUNCTION_1_29();
              v119 = v160;
              sub_1CA42B9A4(v120, v160);
              OUTLINED_FUNCTION_0_31();
              v121 = v119;
              v122 = v169;
              sub_1CA42BA50(v121, v169);
              DrawerAction.setAttributionContainer(bundleID:)(v180);
              DrawerAction.needsInternalBadge.getter();
              if (v123)
              {
                OUTLINED_FUNCTION_1_29();
                sub_1CA42B9A4(v122, v161);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v132 = *(v187 + 2);
                  OUTLINED_FUNCTION_21();
                  sub_1CA2E5CDC();
                  v187 = v133;
                }

                v124 = v187;
                v32 = *(v187 + 2);
                v125 = *(v187 + 3);
                OUTLINED_FUNCTION_121_2();
                if (!v66)
                {
                  v127 = &v191;
LABEL_62:
                  OUTLINED_FUNCTION_82_2(v127);
                  goto LABEL_63;
                }

                OUTLINED_FUNCTION_64(v126);
                OUTLINED_FUNCTION_160();
                sub_1CA2E5CDC();
                v124 = v134;
                OUTLINED_FUNCTION_82_2(&v191);
                v187 = v135;
              }

              else
              {
                OUTLINED_FUNCTION_1_29();
                sub_1CA42B9A4(v122, v162);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v136 = *(v29 + 2);
                  OUTLINED_FUNCTION_21();
                  sub_1CA2E5CDC();
                  v29 = v137;
                }

                v32 = *(v29 + 2);
                v128 = *(v29 + 3);
                OUTLINED_FUNCTION_121_2();
                if (!v66)
                {
                  v124 = v29;
                  v127 = &v191.u64[1];
                  goto LABEL_62;
                }

                OUTLINED_FUNCTION_64(v129);
                sub_1CA2E5CDC();
                v124 = v138;
                OUTLINED_FUNCTION_82_2(&v191.i64[1]);
                v29 = v139;
              }

LABEL_63:
              OUTLINED_FUNCTION_2_31();
              sub_1CA42B9FC();
              *(v124 + 16) = v164;
              v130 = *(v166 + 80);
              OUTLINED_FUNCTION_68_0();
              OUTLINED_FUNCTION_0_31();
              sub_1CA42BA50(v163, v131);
            }
          }
        }

        while (1)
        {
          v113 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            __break(1u);
            goto LABEL_83;
          }

          if (v113 >= v111)
          {
            break;
          }

          v112 = *(v101 + 56 + 8 * v113);
          ++v39;
          if (v112)
          {
            v39 = v113;
            goto LABEL_51;
          }
        }

        sub_1CA427964();
        v140 = v29;
        sub_1CA94C218();

        v141 = *(v29 + 2);

        if (v141)
        {
          v29 = v183;
          sub_1CA94C218();
          sub_1CA94C218();
          sub_1CA94C218();
          v34 = v186;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v98 = v184;
          v39 = v185;
          v97 = v170;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v151 = *(v34 + 2);
            OUTLINED_FUNCTION_21();
            sub_1CA2E60FC();
            v34 = v152;
          }

          v144 = *(v34 + 2);
          v143 = *(v34 + 3);
          if (v144 >= v143 >> 1)
          {
            OUTLINED_FUNCTION_64(v143);
            sub_1CA2E60FC();
            v34 = v153;
          }

          *(v34 + 2) = v144 + 1;
          v145 = &v34[56 * v144];
          *(v145 + 4) = v177;
          *(v145 + 5) = v29;
          *(v145 + 6) = v179;
          *(v145 + 7) = v100;
          *(v145 + 8) = 0;
          *(v145 + 9) = 0;
          *(v145 + 10) = v140;
        }

        else
        {
          v39 = v185;
          v34 = v186;
          v97 = v170;
          v29 = v183;
          v98 = v184;
        }

        if (*(v187 + 2))
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v154 = *(v39 + 16);
            OUTLINED_FUNCTION_21();
            sub_1CA2E60FC();
            v39 = v155;
          }

          v147 = *(v39 + 16);
          v146 = *(v39 + 24);
          if (v147 >= v146 >> 1)
          {
            OUTLINED_FUNCTION_64(v146);
            sub_1CA2E60FC();
            v39 = v156;
          }

          *(v39 + 16) = v147 + 1;
          v148 = (v39 + 56 * v147);
          v149 = v182;
          v148[4] = v178;
          v148[5] = v149;
          v150 = v181;
          v148[6] = v176;
          v148[7] = v150;
          v148[8] = 0;
          v148[9] = 0;
          v148[10] = v187;
        }

        else
        {
        }

        if (v98 == v172)
        {
LABEL_81:

          sub_1CA27080C(&v191, &unk_1EC445410, &unk_1CA987000);

          v189 = v34;
          sub_1CA2B7F60(v39);

          swift_bridgeObjectRelease_n();

          goto LABEL_29;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_29:
    OUTLINED_FUNCTION_36();
  }
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1CA427964()
{

  sub_1CA94C218();
  sub_1CA425070(&v1, v0);
}

BOOL sub_1CA4279D4(uint64_t a1, uint64_t a2)
{
  v3 = *(ActionDrawerDataSource.topHits(for:)(a1) + 16);

  v4 = *(ActionDrawerDataSource.topHits(for:)(a2) + 16);

  if (v3)
  {
    if (!v4)
    {
      return 1;
    }
  }

  else if (v4)
  {
    return 0;
  }

  DrawerAction.title.getter();
  DrawerAction.title.getter();
  sub_1CA27BAF0();
  v6 = sub_1CA94D1D8();

  return v6 == -1;
}

uint64_t ActionDrawerDataSource.topHits(for:)(uint64_t a1)
{
  v2 = v1;
  sub_1CA408F70();
  if (v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_52_6();
  v5 = *(v2 + 152);
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = (a1 + *(type metadata accessor for DrawerAction(0) + 28));
  v7 = *v6;
  v8 = v6[1];
  sub_1CA94C218();
  v9 = OUTLINED_FUNCTION_52_0();
  sub_1CA323E30(v9, v10, v5);
  OUTLINED_FUNCTION_87();

  if (!v7)
  {
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

void ActionDrawerDataSource.fetchSuggestedResults(for:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_opt_self() sharedRecommender];
  OUTLINED_FUNCTION_123();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v13[4] = sub_1CA42BAA8;
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1CA428970;
  v13[3] = &block_descriptor_10;
  v10 = _Block_copy(v13);
  sub_1CA94C218();

  v11 = OUTLINED_FUNCTION_3_3();
  sub_1CA4351B4(v11, v12, v10, v8);
  _Block_release(v10);
}

id sub_1CA427C64(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v99 = a5;
  v100 = a4;
  v115 = a2;
  v116 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445420, &qword_1CA987028);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v114 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v97 - v10;
  v12 = type metadata accessor for DrawerAction(0);
  v107 = *(v12 - 1);
  v13 = *(v107 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v113 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v102 = &v97 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v97 - v19);
  MEMORY[0x1EEE9AC00](v18);
  v108 = &v97 - v21;
  if (a1)
  {
    v22 = a1;
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  v119 = MEMORY[0x1E69E7CC0];
  v23 = sub_1CA25B410(v22);
  v117 = v22 & 0xC000000000000001;
  v118 = v23;
  result = sub_1CA94C218();
  for (i = 0; v118 != i; ++i)
  {
    if (v117)
    {
      result = MEMORY[0x1CCAA22D0](i, v22);
      v26 = result;
    }

    else
    {
      if (i >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_76;
      }

      v26 = *(v22 + 8 * i + 32);
      result = swift_unknownObjectRetain();
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_75;
    }

    v27 = [v26 title];
    v28 = sub_1CA94C3A8();
    v30 = v29;

    v31 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v31 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (!v31)
    {
      goto LABEL_16;
    }

    v32 = objc_opt_self();
    v33 = sub_1CA94C368();
    v34 = [v32 applicationWithBundleIdentifier_];

    LOBYTE(v33) = [v34 isLocked];
    if ((v33 & 1) == 0)
    {
      goto LABEL_17;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
LABEL_16:
      result = swift_unknownObjectRelease();
    }

    else
    {
LABEL_17:
      sub_1CA94D4D8();
      v35 = *(v119 + 16);
      sub_1CA94D518();
      sub_1CA94D528();
      result = sub_1CA94D4E8();
    }
  }

  v36 = v119;
  v121 = MEMORY[0x1E69E7CC0];
  if (!sub_1CA25B410(v119))
  {

    goto LABEL_70;
  }

  v37 = objc_opt_self();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445560, &qword_1CA9869A8);
  v106 = v36;
  v109 = v38;
  v39 = sub_1CA94C648();
  v98 = v37;
  v40 = [v37 suggestionSectionsForDonations:v39 excludingConvertedLinkActions:1];

  v97 = sub_1CA25B3D0(0, &unk_1EC445568, off_1E836DD48);
  v41 = sub_1CA94C658();

  v42 = v41;
  v105 = sub_1CA25B410(v41);
  if (v105)
  {
    v43 = 0;
    v103 = v41;
    v104 = v41 & 0xC000000000000001;
    v101 = v41 + 32;
    do
    {
      v44 = v104;
      sub_1CA275D70(v43, v104 == 0, v42);
      if (v44)
      {
        result = MEMORY[0x1CCAA22D0](v43, v42);
      }

      else
      {
        result = *(v101 + 8 * v43);
      }

      v45 = __OFADD__(v43, 1);
      v46 = (v43 + 1);
      if (v45)
      {
        goto LABEL_77;
      }

      v110 = result;
      v111 = v46;
      v47 = [result donations];
      v48 = sub_1CA94C658();

      result = sub_1CA25B410(v48);
      v117 = v48;
      v118 = result;
      v49 = 0;
      v115 = v48 & 0xFFFFFFFFFFFFFF8;
      v116 = v48 & 0xC000000000000001;
      v112 = MEMORY[0x1E69E7CC0];
      while (v118 != v49)
      {
        if (v116)
        {
          result = MEMORY[0x1CCAA22D0](v49, v117);
          v50 = result;
        }

        else
        {
          if (v49 >= *(v115 + 16))
          {
            goto LABEL_72;
          }

          v50 = *(v117 + 8 * v49 + 32);
          result = swift_unknownObjectRetain();
        }

        v51 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
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
          return result;
        }

        v52 = v12[6];
        v53 = sub_1CA94B1C8();
        __swift_storeEnumTagSinglePayload(v20 + v52, 1, 1, v53);
        v54 = [objc_opt_self() sharedRegistry];
        swift_unknownObjectRetain();
        v55 = [v54 createActionWithDonation_];

        if (v55)
        {
          *v20 = v55;
          type metadata accessor for DrawerAction.DrawerActionStorage(0);
          swift_storeEnumTagMultiPayload();
          v56 = v55;
          sub_1CA27080C(v20 + v52, &qword_1EC4445D0, &qword_1CA983080);
          __swift_storeEnumTagSinglePayload(v20 + v52, 1, 1, v53);
          *(v20 + v12[5]) = v50;
          v119 = 0x6E6F6974616E6F64;
          v120 = 0xE90000000000002ELL;
          v57 = [v50 identifier];
          v58 = sub_1CA94C3A8();
          v60 = v59;

          MEMORY[0x1CCAA1300](v58, v60);

          swift_unknownObjectRelease();
          v61 = v120;
          v62 = (v20 + v12[7]);
          *v62 = v119;
          v62[1] = v61;
          sub_1CA42B9A4(v20, v11);
          __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
          sub_1CA42B9FC();
          if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
          {
            goto LABEL_41;
          }

          sub_1CA42BA50(v11, v108);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v65 = v112[2];
            sub_1CA2E5CDC();
            v112 = v66;
          }

          v63 = v112[2];
          if (v63 >= v112[3] >> 1)
          {
            sub_1CA2E5CDC();
            v112 = v67;
          }

          v64 = v112;
          v112[2] = v63 + 1;
          result = sub_1CA42BA50(v108, v64 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v63);
          v49 = v51;
        }

        else
        {
          swift_unknownObjectRelease_n();
          sub_1CA27080C(v20 + v52, &qword_1EC4445D0, &qword_1CA983080);
          __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
LABEL_41:
          result = sub_1CA27080C(v11, &qword_1EC445420, &qword_1CA987028);
          ++v49;
        }
      }

      sub_1CA2B8084();

      v43 = v111;
      v42 = v103;
    }

    while (v111 != v105);
  }

  v68 = sub_1CA94C648();

  v69 = [v98 activitySectionsForDonations_];

  v70 = sub_1CA94C658();
  v110 = sub_1CA25B410(v70);
  if (!v110)
  {
    goto LABEL_69;
  }

  v71 = 0;
  v108 = v70 & 0xC000000000000001;
  v105 = (v70 + 32);
  v106 = v70;
  do
  {
    v72 = v108;
    sub_1CA275D70(v71, v108 == 0, v70);
    if (v72)
    {
      result = MEMORY[0x1CCAA22D0](v71, v70);
    }

    else
    {
      result = v105[v71];
    }

    v45 = __OFADD__(v71, 1);
    v73 = (v71 + 1);
    if (v45)
    {
      goto LABEL_78;
    }

    v111 = result;
    v112 = v73;
    v74 = [result donations];
    v75 = sub_1CA94C658();

    result = sub_1CA25B410(v75);
    v76 = 0;
    v117 = v75 & 0xC000000000000001;
    v118 = result;
    v116 = v75 & 0xFFFFFFFFFFFFFF8;
    v115 = MEMORY[0x1E69E7CC0];
    while (v118 != v76)
    {
      if (v117)
      {
        result = MEMORY[0x1CCAA22D0](v76, v75);
        v77 = result;
      }

      else
      {
        if (v76 >= *(v116 + 16))
        {
          goto LABEL_74;
        }

        v77 = *(v75 + 8 * v76 + 32);
        result = swift_unknownObjectRetain();
      }

      if (__OFADD__(v76, 1))
      {
        goto LABEL_73;
      }

      v78 = v12[6];
      v79 = sub_1CA94B1C8();
      v80 = v113;
      __swift_storeEnumTagSinglePayload(&v113[v78], 1, 1, v79);
      v81 = [objc_opt_self() sharedRegistry];
      swift_unknownObjectRetain();
      v82 = [v81 createActionWithDonation_];

      if (v82)
      {
        *v80 = v82;
        type metadata accessor for DrawerAction.DrawerActionStorage(0);
        swift_storeEnumTagMultiPayload();
        v83 = v82;
        sub_1CA27080C(v80 + v78, &qword_1EC4445D0, &qword_1CA983080);
        __swift_storeEnumTagSinglePayload(v80 + v78, 1, 1, v79);
        *(v80 + v12[5]) = v77;
        v119 = 0x6E6F6974616E6F64;
        v120 = 0xE90000000000002ELL;
        v84 = [v77 identifier];
        v85 = sub_1CA94C3A8();
        v87 = v86;

        MEMORY[0x1CCAA1300](v85, v87);

        swift_unknownObjectRelease();
        v88 = v120;
        v89 = (v80 + v12[7]);
        *v89 = v119;
        v89[1] = v88;
        v90 = v114;
        sub_1CA42B9A4(v80, v114);
        __swift_storeEnumTagSinglePayload(v90, 0, 1, v12);
        sub_1CA42B9FC();
        if (__swift_getEnumTagSinglePayload(v90, 1, v12) == 1)
        {
          goto LABEL_66;
        }

        sub_1CA42BA50(v90, v102);
        v91 = v115;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = *(v91 + 16);
          sub_1CA2E5CDC();
          v91 = v95;
        }

        v92 = *(v91 + 16);
        if (v92 >= *(v91 + 24) >> 1)
        {
          sub_1CA2E5CDC();
          v91 = v96;
        }

        *(v91 + 16) = v92 + 1;
        v93 = (*(v107 + 80) + 32) & ~*(v107 + 80);
        v115 = v91;
        result = sub_1CA42BA50(v102, v91 + v93 + *(v107 + 72) * v92);
        ++v76;
      }

      else
      {
        swift_unknownObjectRelease_n();
        sub_1CA27080C(v80 + v78, &qword_1EC4445D0, &qword_1CA983080);
        v90 = v114;
        __swift_storeEnumTagSinglePayload(v114, 1, 1, v12);
LABEL_66:
        result = sub_1CA27080C(v90, &qword_1EC445420, &qword_1CA987028);
        ++v76;
      }
    }

    sub_1CA2B8084();

    v71 = v112;
    v70 = v106;
  }

  while (v112 != v110);
LABEL_69:

LABEL_70:
  v100(v121);
}

uint64_t sub_1CA428970(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445560, &qword_1CA9869A8);
    v2 = sub_1CA94C658();
  }

  v4(v2);
}

uint64_t ActionDrawerDataSource.suggestedResults(for:)()
{
  OUTLINED_FUNCTION_0();
  sub_1CA94C838();
  *(v0 + 16) = sub_1CA94C828();
  OUTLINED_FUNCTION_87();
  v2 = sub_1CA94C7C8();

  return MEMORY[0x1EEE6DFA0](sub_1CA428A80, v2, v1);
}

uint64_t sub_1CA428A80()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);
  v3 = MEMORY[0x1E69E7CC0];

  return v2(v3);
}

void ActionDrawerDataSource.appsByName()()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v37 = sub_1CA94B1C8();
  v2 = OUTLINED_FUNCTION_1_0(v37);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_48_0();
  v36 = v9;
  if (v0[4])
  {
    v11 = v0[5];
    v10 = v1[6];
    v13 = v1[7];
    v12 = v1[8];
    v15 = v1[9];
    v14 = v1[10];
    v16 = *(v13 + 16);
    v35 = v8;
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    v17 = 0;
    v18 = v13 + 40;
    v19 = MEMORY[0x1E69E7CC0];
LABEL_3:
    for (i = (v18 + 16 * v17); ; i += 2)
    {
      if (v16 == v17)
      {
        v33 = OUTLINED_FUNCTION_97_4();
        sub_1CA42AC68(v33);
        goto LABEL_16;
      }

      if (v17 >= *(v13 + 16))
      {
        break;
      }

      if (*(v11 + 16))
      {
        v21 = *(i - 1);
        v22 = *i;
        sub_1CA94C218();
        v23 = sub_1CA271BF8();
        if (v24)
        {
          v34 = *(v4 + 72);
          (*(v4 + 16))(v35, *(v11 + 56) + v34 * v23, v37);

          v25 = *(v4 + 32);
          v25(v36, v35, v37);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = *(v19 + 16);
            OUTLINED_FUNCTION_21();
            sub_1CA2E5A04();
            v19 = v31;
          }

          v27 = *(v19 + 16);
          v26 = *(v19 + 24);
          if (v27 >= v26 >> 1)
          {
            OUTLINED_FUNCTION_64(v26);
            sub_1CA2E5A04();
            v19 = v32;
          }

          ++v17;
          *(v19 + 16) = v27 + 1;
          v28 = *(v4 + 80);
          OUTLINED_FUNCTION_68_0();
          v25(v19 + v29 + v27 * v34, v36, v37);
          v18 = v13 + 40;
          goto LABEL_3;
        }
      }

      ++v17;
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    OUTLINED_FUNCTION_36();
  }
}

uint64_t ActionDrawerDataSource.itemForInserting(_:topHit:)()
{
  OUTLINED_FUNCTION_0();
  v3 = *(v2 + 16);
  *(v1 + 120) = *v2;
  *(v1 + 104) = v4;
  *(v1 + 112) = v0;
  *(v1 + 96) = v5;
  *(v1 + 136) = v3;
  *(v1 + 152) = *(v2 + 32);
  *(v1 + 65) = *(v2 + 48);
  sub_1CA94C838();
  *(v1 + 168) = sub_1CA94C828();
  OUTLINED_FUNCTION_87();
  v7 = sub_1CA94C7C8();
  *(v1 + 176) = v7;
  *(v1 + 184) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1CA428E2C, v7, v6);
}

uint64_t sub_1CA428E2C()
{
  v1 = *(v0 + 112);
  v2 = v1[18];
  *(v0 + 16) = *(v0 + 120);
  v3 = *(v0 + 65);
  v4 = *(v0 + 152);
  *(v0 + 32) = *(v0 + 136);
  *(v0 + 48) = v4;
  *(v0 + 64) = v3;
  swift_beginAccess();
  v5 = v1[2];
  v6 = v1[3];
  *(v0 + 192) = v6;
  sub_1CA94C218();
  swift_task_alloc();
  OUTLINED_FUNCTION_77();
  *(v0 + 200) = v7;
  *v7 = v8;
  v7[1] = sub_1CA428F28;
  v9 = *(v0 + 96);
  v10 = *(v0 + 104);

  return sub_1CA4236B4(v9, v10, v0 + 16, v5, v6);
}

uint64_t sub_1CA428F28()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  v6 = *(v5 + 200);
  v7 = *(v5 + 192);
  v8 = *v1;
  OUTLINED_FUNCTION_13();
  *v9 = v8;
  v3[26] = v0;

  v10 = v3[22];
  v11 = v3[23];
  if (v0)
  {
    v12 = sub_1CA4290AC;
  }

  else
  {
    v12 = sub_1CA429050;
  }

  return MEMORY[0x1EEE6DFA0](v12, v10, v11);
}

uint64_t sub_1CA429050()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 168);

  OUTLINED_FUNCTION_5();

  return v2();
}

uint64_t sub_1CA4290AC()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 168);

  OUTLINED_FUNCTION_5();
  v3 = *(v0 + 208);

  return v2();
}

void ActionDrawerDataSource.action(for:)()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v34 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445420, &qword_1CA987028);
  v5 = OUTLINED_FUNCTION_18_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v33 - v8;
  v10 = v0[4];
  v11 = v0[5];
  v12 = v0[6];
  v13 = v0[7];
  v14 = v0[8];
  v15 = v0[9];
  v16 = v0[10];
  if (!v10)
  {
    OUTLINED_FUNCTION_11_18();
    sub_1CA42ABDC(v26);
    OUTLINED_FUNCTION_11_18();
    sub_1CA42AC68(v27);
    type metadata accessor for DrawerAction(0);
    OUTLINED_FUNCTION_46();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
    goto LABEL_5;
  }

  v17 = v0[4];
  OUTLINED_FUNCTION_11_18();
  sub_1CA42ABDC(v18);
  sub_1CA94C218();
  OUTLINED_FUNCTION_11_18();
  sub_1CA42AC68(v19);
  v20 = [v2 identifier];
  sub_1CA94C3A8();

  v21 = OUTLINED_FUNCTION_70();
  sub_1CA311B60(v21, v22, v10);

  type metadata accessor for DrawerAction(0);
  v23 = OUTLINED_FUNCTION_201_0();
  if (__swift_getEnumTagSinglePayload(v23, v24, v25) == 1)
  {
LABEL_5:
    sub_1CA27080C(v9, &qword_1EC445420, &qword_1CA987028);
    v32 = v2;
    DrawerAction.init(wfAction:)(v32, v34);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_0_31();
  sub_1CA42BA50(v9, v34);
LABEL_6:
  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA42928C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v28 - v4;
  v6 = sub_1CA94B1C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v28 - v12;
  v14 = type metadata accessor for DrawerAction(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DrawerSearchIndexItem(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA42B9A4(v1, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v11, v21, v6);
    v22 = sub_1CA94B0F8();
    (*(v7 + 8))(v11, v6);
  }

  else
  {
    v23 = *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445408, &unk_1CA986FF0) + 48)];

    sub_1CA42BA50(v21, v17);
    sub_1CA2D9D20(&v17[*(v14 + 24)], v5, &qword_1EC4445D0, &qword_1CA983080);
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      sub_1CA27080C(v5, &qword_1EC4445D0, &qword_1CA983080);
      v24 = &v17[*(v14 + 28)];
      v22 = *v24;
      v25 = v24[1];
      sub_1CA94C218();
    }

    else
    {
      (*(v7 + 32))(v13, v5, v6);
      v28[0] = sub_1CA94B0F8();
      v28[1] = v26;
      MEMORY[0x1CCAA1300](45, 0xE100000000000000);
      MEMORY[0x1CCAA1300](*&v17[*(v14 + 28)], *&v17[*(v14 + 28) + 8]);
      v22 = v28[0];
      (*(v7 + 8))(v13, v6);
    }

    sub_1CA42B9FC();
  }

  return v22;
}

uint64_t sub_1CA429604()
{
  v1 = sub_1CA94B1C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v37 - v8;
  v10 = type metadata accessor for DrawerAction(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DrawerSearchIndexItem(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA42B9A4(v0, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v5, v17, v1);
    v37 = sub_1CA94B138();
    v38 = v18;
    sub_1CA94C218();
    MEMORY[0x1CCAA1300](45, 0xE100000000000000);

    v20 = v37;
    v19 = v38;
    v21 = sub_1CA94B0F8();
    v23 = v22;
    v37 = v20;
    v38 = v19;
    sub_1CA94C218();
    MEMORY[0x1CCAA1300](v21, v23);

    v24 = v37;
    (*(v2 + 8))(v5, v1);
  }

  else
  {
    v25 = *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445408, &unk_1CA986FF0) + 48)];

    sub_1CA42BA50(v17, v13);
    DrawerAction.title.getter();
    v37 = v26;
    v38 = v27;
    sub_1CA94C218();
    MEMORY[0x1CCAA1300](45, 0xE100000000000000);

    v29 = v37;
    v28 = v38;
    sub_1CA2D9D20(&v13[*(v10 + 24)], v9, &qword_1EC4445D0, &qword_1CA983080);
    if (__swift_getEnumTagSinglePayload(v9, 1, v1) == 1)
    {
      sub_1CA27080C(v9, &qword_1EC4445D0, &qword_1CA983080);
      v30 = 0;
      v31 = 0xE000000000000000;
    }

    else
    {
      v30 = sub_1CA94B138();
      v31 = v32;
      (*(v2 + 8))(v9, v1);
    }

    v37 = v29;
    v38 = v28;
    sub_1CA94C218();
    MEMORY[0x1CCAA1300](v30, v31);

    sub_1CA94C218();
    MEMORY[0x1CCAA1300](45, 0xE100000000000000);

    v33 = &v13[*(v10 + 28)];
    v34 = *v33;
    v35 = *(v33 + 1);
    sub_1CA94C218();
    MEMORY[0x1CCAA1300](v34, v35);

    v24 = v37;
    sub_1CA42B9FC();
  }

  return v24;
}

uint64_t sub_1CA429A28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v155 - v2;
  v4 = sub_1CA94B1C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v169 = &v155 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v161 = &v155 - v9;
  v170 = sub_1CA94A4E8();
  v10 = *(v170 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v170);
  v168 = &v155 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_1CA94A288();
  v13 = *(v167 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v167);
  v166 = &v155 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v171 = type metadata accessor for DrawerAction.DrawerActionStorage(0);
  v16 = *(*(v171 - 8) + 64);
  MEMORY[0x1EEE9AC00](v171);
  v18 = (&v155 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for DrawerAction(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v155 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DrawerSearchIndexItem(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v155 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA42B9A4(v172, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v162 = v5;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v5 + 32))(v169, v26, v4);
    v28 = sub_1CA94B138();
    v30 = v29;
    sub_1CA2E5B24();
    v33 = *(v31 + 16);
    v32 = *(v31 + 24);
    v172 = v31;
    if (v33 >= v32 >> 1)
    {
      sub_1CA2E5B24();
      v172 = v149;
    }

    LOBYTE(v176[0]) = 0;
    v34 = v172;
    *(v172 + 16) = v33 + 1;
    v35 = v34 + 72 * v33;
    *(v35 + 32) = 3;
    *(v35 + 40) = v28;
    *(v35 + 48) = v30;
    *(v35 + 56) = 0;
    *(v35 + 64) = xmmword_1CA986F90;
    *(v35 + 80) = 0;
    *(v35 + 88) = sub_1CA436668;
    *(v35 + 96) = 0;
    v36 = sub_1CA94B138();
    v38 = v37;
    v39 = *(v34 + 16);
    if (v39 >= *(v34 + 24) >> 1)
    {
      sub_1CA2E5B24();
      v172 = v150;
    }

    LOBYTE(v175[0]) = 1;
    v40 = v172;
    *(v172 + 16) = v39 + 1;
    v41 = v40 + 72 * v39;
    *(v41 + 32) = 4;
    LODWORD(v40) = v185[0];
    *(v41 + 36) = *(v185 + 3);
    *(v41 + 33) = v40;
    *(v41 + 40) = v36;
    *(v41 + 48) = v38;
    *(v41 + 56) = 0;
    LODWORD(v40) = *v184;
    *(v41 + 60) = *&v184[3];
    *(v41 + 57) = v40;
    *(v41 + 64) = sub_1CA42A9CC;
    *(v41 + 72) = 0;
    *(v41 + 80) = v175[0];
    LODWORD(v40) = *v183;
    *(v41 + 84) = *&v183[3];
    *(v41 + 81) = v40;
    *(v41 + 88) = sub_1CA436668;
    *(v41 + 96) = 0;
    v42 = MEMORY[0x1CCAA0010]();
    v43 = *(v42 + 16);
    if (v43)
    {
      v160 = v4;
      v44 = v43 - 1;
      v45 = (v42 + 40);
      v171 = xmmword_1CA986FB0;
      while (1)
      {
        v46 = *(v45 - 1);
        v47 = *v45;
        v49 = *(v172 + 16);
        v48 = *(v172 + 24);
        sub_1CA94C218();
        if (v49 >= v48 >> 1)
        {
          sub_1CA2E5B24();
          v172 = v55;
        }

        LOBYTE(v173[0]) = 0;
        v50 = v172;
        *(v172 + 16) = v49 + 1;
        v51 = v50 + 72 * v49;
        *(v51 + 32) = 6;
        v52 = *v182;
        *(v51 + 36) = *&v182[3];
        *(v51 + 33) = v52;
        *(v51 + 40) = v46;
        *(v51 + 48) = v47;
        *(v51 + 56) = 0;
        v53 = *v181;
        *(v51 + 60) = *&v181[3];
        *(v51 + 57) = v53;
        *(v51 + 64) = v171;
        *(v51 + 80) = v173[0];
        v54 = *v180;
        *(v51 + 84) = *&v180[3];
        *(v51 + 81) = v54;
        *(v51 + 88) = sub_1CA43666C;
        *(v51 + 96) = 0;
        if (!v44)
        {
          break;
        }

        --v44;
        v45 += 2;
      }

      v4 = v160;
    }

    else
    {
    }

    (*(v162 + 8))(v169, v4);
  }

  else
  {
    v157 = v13;
    v159 = v19;
    v169 = *&v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445408, &unk_1CA986FF0) + 48)];
    sub_1CA42BA50(v26, v22);
    DrawerAction.title.getter();
    v165 = v56;
    v58 = v57;
    sub_1CA2E5B24();
    v61 = *(v59 + 16);
    v60 = *(v59 + 24);
    v172 = v59;
    v62 = v10;
    if (v61 >= v60 >> 1)
    {
      sub_1CA2E5B24();
      v172 = v151;
    }

    v179 = 0;
    v63 = v172;
    *(v172 + 16) = v61 + 1;
    v64 = v63 + 72 * v61;
    *(v64 + 32) = 0;
    *(v64 + 40) = v165;
    *(v64 + 48) = v58;
    *(v64 + 56) = 1;
    *(v64 + 64) = xmmword_1CA986F90;
    *(v64 + 80) = 0;
    *(v64 + 88) = OUTLINED_FUNCTION_17_0;
    *(v64 + 96) = 0;
    DrawerAction.title.getter();
    v66 = v65;
    v68 = v67;
    v69 = *(v63 + 16);
    if (v69 >= *(v63 + 24) >> 1)
    {
      sub_1CA2E5B24();
      v172 = v152;
    }

    v178 = 1;
    v70 = v172;
    *(v172 + 16) = v69 + 1;
    v71 = v70 + 72 * v69;
    *(v71 + 32) = 1;
    LODWORD(v70) = v185[0];
    *(v71 + 36) = *(v185 + 3);
    *(v71 + 33) = v70;
    *(v71 + 40) = v66;
    *(v71 + 48) = v68;
    *(v71 + 56) = 1;
    v72 = *v184;
    *(v71 + 60) = *&v184[3];
    *(v71 + 57) = v72;
    *(v71 + 64) = sub_1CA42A988;
    *(v71 + 72) = 0;
    *(v71 + 80) = v178;
    v73 = *v183;
    *(v71 + 84) = *&v183[3];
    *(v71 + 81) = v73;
    *(v71 + 88) = OUTLINED_FUNCTION_17_0;
    *(v71 + 96) = 0;
    DrawerAction.searchKeywords.getter();
    v75 = *(v74 + 16);
    v160 = v4;
    if (v75)
    {
      v156 = v3;
      v165 = (v62 + 32);
      v164 = (v62 + 8);
      v163 = (v157 + 32);
      v76 = (v157 + 8);
      v77 = v75 - 1;
      v157 = v74;
      for (i = (v74 + 40); ; i += 2)
      {
        v80 = *(i - 1);
        v79 = *i;
        sub_1CA42B9A4(v22, v18);
        v81 = swift_getEnumCaseMultiPayload();
        if (v81)
        {
          if (v81 == 1)
          {
            v82 = v166;
            v83 = v167;
            (*v163)(v166, v18, v167);
            sub_1CA94C218();
            v84 = sub_1CA94A1D8();
            (*v76)(v82, v83);
          }

          else
          {
            v88 = v168;
            v89 = v170;
            (*v165)(v168, v18, v170);
            sub_1CA94C218();
            v84 = sub_1CA94A448();
            (*v164)(v88, v89);
          }
        }

        else
        {
          v85 = v22;
          v86 = *v18;
          sub_1CA94C218();
          v87 = [v86 localizedKeywords];
          v84 = sub_1CA94C658();

          v22 = v85;
        }

        v90 = *(v84 + 16);

        v91 = *(v172 + 16);
        if (v91 >= *(v172 + 24) >> 1)
        {
          sub_1CA2E5B24();
          v172 = v97;
        }

        LOBYTE(v176[0]) = 0;
        v92 = v172;
        *(v172 + 16) = v91 + 1;
        v93 = v92 + 72 * v91;
        *(v93 + 32) = 2;
        v94 = *v182;
        *(v93 + 36) = *&v182[3];
        *(v93 + 33) = v94;
        *(v93 + 40) = v80;
        *(v93 + 48) = v79;
        *(v93 + 56) = 0;
        v95 = *v181;
        *(v93 + 60) = *&v181[3];
        *(v93 + 57) = v95;
        *(v93 + 64) = 0.3 / v90;
        *(v93 + 72) = 0;
        *(v93 + 80) = v176[0];
        v96 = *v180;
        *(v93 + 84) = *&v180[3];
        *(v93 + 81) = v96;
        *(v93 + 88) = sub_1CA42A9A0;
        *(v93 + 96) = 0;
        if (!v77)
        {
          break;
        }

        --v77;
      }

      v4 = v160;
      v98 = v162;
      v99 = v159;
      v3 = v156;
    }

    else
    {

      v98 = v162;
      v99 = v159;
    }

    sub_1CA2D9D20(&v22[*(v99 + 24)], v3, &qword_1EC4445D0, &qword_1CA983080);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v4);
    v158 = v22;
    if (EnumTagSinglePayload == 1)
    {
      sub_1CA27080C(v3, &qword_1EC4445D0, &qword_1CA983080);
    }

    else
    {
      (*(v98 + 32))(v161, v3, v4);
      v101 = sub_1CA94B138();
      v103 = v102;
      v104 = *(v172 + 16);
      if (v104 >= *(v172 + 24) >> 1)
      {
        sub_1CA2E5B24();
        v172 = v154;
      }

      v177 = 0;
      v105 = v172;
      *(v172 + 16) = v104 + 1;
      v106 = v105 + 72 * v104;
      *(v106 + 32) = 3;
      LODWORD(v105) = *v182;
      *(v106 + 36) = *&v182[3];
      *(v106 + 33) = v105;
      *(v106 + 40) = v101;
      *(v106 + 48) = v103;
      *(v106 + 56) = 0;
      LODWORD(v105) = *v181;
      *(v106 + 60) = *&v181[3];
      *(v106 + 57) = v105;
      v171 = xmmword_1CA986FA0;
      *(v106 + 64) = xmmword_1CA986FA0;
      *(v106 + 80) = v177;
      LODWORD(v105) = *v180;
      *(v106 + 84) = *&v180[3];
      *(v106 + 81) = v105;
      *(v106 + 88) = sub_1CA436668;
      *(v106 + 96) = 0;
      v107 = MEMORY[0x1CCAA0010]();
      v108 = *(v107 + 16);
      if (v108)
      {
        v109 = v108 - 1;
        for (j = (v107 + 40); ; j += 2)
        {
          v112 = *(j - 1);
          v111 = *j;
          v113 = *(v172 + 16);
          v114 = *(v172 + 24);
          sub_1CA94C218();
          if (v113 >= v114 >> 1)
          {
            sub_1CA2E5B24();
            v172 = v120;
          }

          v174 = 0;
          v115 = v172;
          *(v172 + 16) = v113 + 1;
          v116 = v115 + 72 * v113;
          *(v116 + 32) = 6;
          v117 = v176[0];
          *(v116 + 36) = *(v176 + 3);
          *(v116 + 33) = v117;
          *(v116 + 40) = v112;
          *(v116 + 48) = v111;
          *(v116 + 56) = 0;
          v118 = v175[0];
          *(v116 + 60) = *(v175 + 3);
          *(v116 + 57) = v118;
          *(v116 + 64) = v171;
          *(v116 + 80) = v174;
          v119 = v173[0];
          *(v116 + 84) = *(v173 + 3);
          *(v116 + 81) = v119;
          *(v116 + 88) = sub_1CA43666C;
          *(v116 + 96) = 0;
          if (!v109)
          {
            break;
          }

          --v109;
        }

        v4 = v160;
        v121 = v162;
        v22 = v158;
      }

      else
      {

        v121 = v162;
      }

      v99 = v159;
      (*(v121 + 8))(v161, v4);
    }

    v122 = &v22[*(v99 + 28)];
    v124 = *v122;
    v123 = *(v122 + 1);
    v125 = *(v172 + 16);
    v126 = *(v172 + 24);
    sub_1CA94C218();
    if (v125 >= v126 >> 1)
    {
      sub_1CA2E5B24();
      v172 = v153;
    }

    v177 = 0;
    v127 = v172;
    *(v172 + 16) = v125 + 1;
    v128 = v127 + 72 * v125;
    *(v128 + 32) = 5;
    LODWORD(v127) = *v182;
    *(v128 + 36) = *&v182[3];
    *(v128 + 33) = v127;
    *(v128 + 40) = v124;
    *(v128 + 48) = v123;
    *(v128 + 56) = 0;
    LODWORD(v127) = *v181;
    *(v128 + 60) = *&v181[3];
    *(v128 + 57) = v127;
    *(v128 + 64) = 0;
    *(v128 + 72) = 0;
    *(v128 + 80) = v177;
    LODWORD(v127) = *&v180[3];
    *(v128 + 81) = *v180;
    *(v128 + 84) = v127;
    *(v128 + 88) = sub_1CA42A9BC;
    *(v128 + 96) = 0;
    v129 = v169;
    v130 = *(v169 + 2);
    if (v130)
    {
      v131 = 0;
      for (k = v130 - 1; ; --k)
      {
        v170 = v131;
        v133 = *&v129[v131 + 40];
        *&v171 = *&v129[v131 + 32];
        v135 = *&v129[v131 + 48];
        v134 = *&v129[v131 + 56];
        v136 = *&v129[v131 + 64];
        v137 = *&v129[v131 + 72];
        v138 = v129[v131 + 80];
        sub_1CA94C218();
        v139 = v135;
        sub_1CA435C7C(v134, v136, v137, v138);
        v140 = *(v172 + 16);
        v141 = *(v172 + 24);
        sub_1CA94C218();
        if (v140 >= v141 >> 1)
        {
          sub_1CA2E5B24();
          v172 = v147;
        }

        sub_1CA435CF0(v134, v136, v137, v138);
        v174 = 0;
        v142 = v172;
        *(v172 + 16) = v140 + 1;
        v143 = v142 + 72 * v140;
        *(v143 + 32) = 7;
        v144 = v176[0];
        *(v143 + 36) = *(v176 + 3);
        *(v143 + 33) = v144;
        *(v143 + 40) = v171;
        *(v143 + 48) = v133;
        *(v143 + 56) = 0;
        v145 = *(v175 + 3);
        *(v143 + 57) = v175[0];
        *(v143 + 60) = v145;
        *(v143 + 64) = 0;
        *(v143 + 72) = 0;
        *(v143 + 80) = v174;
        v146 = *(v173 + 3);
        *(v143 + 81) = v173[0];
        *(v143 + 84) = v146;
        *(v143 + 88) = OUTLINED_FUNCTION_17_0;
        *(v143 + 96) = 0;
        if (!k)
        {
          break;
        }

        v129 = v169;
        v131 = v170 + 56;
      }
    }

    sub_1CA42B9FC();
  }

  return v172;
}

double sub_1CA42A988(uint64_t a1)
{
  result = 0.9;
  if (a1)
  {
    return 0.5;
  }

  return result;
}

uint64_t sub_1CA42A9A0(uint64_t a1, int a2, double a3)
{
  if (a3 >= 0.5)
  {
    return 1;
  }

  else
  {
    return (a1 != 0) & ~a2;
  }
}

uint64_t sub_1CA42A9D4(unsigned __int8 a1)
{
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](a1);
  return sub_1CA94D968();
}

uint64_t sub_1CA42AA30()
{
  v1 = *v0;
  sub_1CA94D918();
  sub_1CA277E28(v3, v1);
  return sub_1CA94D968();
}

uint64_t sub_1CA42AA7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA42928C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1CA42AAA4(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v4 = sub_1CA94C588();

    return v4;
  }

  return result;
}

id sub_1CA42AB48(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_1CA94C368();

  v7 = OUTLINED_FUNCTION_99_3();
  v9 = [v7 v8];

  return v9;
}

uint64_t sub_1CA42ABDC(uint64_t result)
{
  if (result)
  {
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();

    return sub_1CA94C218();
  }

  return result;
}

uint64_t sub_1CA42AC68(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CA42ACF4(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CA42AD5C(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = *(a1 + 16);
  sub_1CA2E7638();
  OUTLINED_FUNCTION_8_6();
  sub_1CA2BA934();
  OUTLINED_FUNCTION_9_8();
  OUTLINED_FUNCTION_70();
  sub_1CA2BC138();
  if (v2 != v3)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

size_t sub_1CA42ADF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = sub_1CA2E76B0(*(a1 + 16), 0);
  v3 = *(*(sub_1CA94B1C8() - 8) + 80);
  sub_1CA2BAC10();
  v5 = v4;
  sub_1CA94C218();
  sub_1CA2BC138();
  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

const void *sub_1CA42AEE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = *(a1 + 16);
  v3 = sub_1CA2E76D8();
  sub_1CA2BAE84();
  v5 = v4;
  sub_1CA94C218();
  sub_1CA2BC138();
  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1CA42B024(uint64_t a1, void (*a2)(void, void), void (*a3)(void))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  a2(*(a1 + 16), 0);
  OUTLINED_FUNCTION_8_6();
  a3();
  OUTLINED_FUNCTION_9_8();
  OUTLINED_FUNCTION_70();
  sub_1CA2BC138();
  if (a3 != v4)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void sub_1CA42B0C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1CA42B198(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1CA2E9398(v2, 0);
    sub_1CA94C218();
    MEMORY[0x1CCAA22B0](v3 + 32, v2, v1);
    v1 = v4;

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_1CA94D328();
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

uint64_t sub_1CA42B364(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1CA94D328();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1CA94D488();
}

uint64_t sub_1CA42B3E0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  sub_1CA5C4368(v44);
  v7 = v44[1];
  v8 = v44[3];
  v9 = v44[4];
  v40 = v44[5];
  v41 = v44[0];
  v10 = (v44[2] + 64) >> 6;
  sub_1CA94C218();

  v37 = v10;
  v38 = v7;
  v39 = a5;
  if (v9)
  {
    while (1)
    {
      v45 = a4;
      v11 = v8;
LABEL_8:
      v13 = __clz(__rbit64(v9)) | (v11 << 6);
      v14 = (*(v41 + 48) + 16 * v13);
      v15 = v14[1];
      v16 = *(*(v41 + 56) + 8 * v13);
      v43[0] = *v14;
      v43[1] = v15;
      v43[2] = v16;
      sub_1CA94C218();
      sub_1CA94C218();
      v40(v42, v43);

      v17 = v42[0];
      v18 = v42[1];
      v19 = v42[2];
      v20 = *a5;
      v22 = sub_1CA271BF8();
      v23 = v20[2];
      v24 = (v21 & 1) == 0;
      if (__OFADD__(v23, v24))
      {
        break;
      }

      v25 = v21;
      if (v20[3] >= v23 + v24)
      {
        if ((v45 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445498, &qword_1CA987598);
          sub_1CA94D598();
        }
      }

      else
      {
        sub_1CA5C37C0();
        v26 = *a5;
        v27 = sub_1CA271BF8();
        if ((v25 & 1) != (v28 & 1))
        {
          goto LABEL_24;
        }

        v22 = v27;
      }

      v9 &= v9 - 1;
      v29 = *a5;
      if (v25)
      {
        v43[0] = *(v29[7] + 8 * v22);
        sub_1CA94C218();
        sub_1CA2B7EA0(v19);

        v30 = v29[7];
        v31 = *(v30 + 8 * v22);
        *(v30 + 8 * v22) = v43[0];
      }

      else
      {
        v29[(v22 >> 6) + 8] |= 1 << v22;
        v32 = (v29[6] + 16 * v22);
        *v32 = v17;
        v32[1] = v18;
        *(v29[7] + 8 * v22) = v19;
        v33 = v29[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_23;
        }

        v29[2] = v35;
      }

      a4 = 1;
      v8 = v11;
      v7 = v38;
      a5 = v39;
      v10 = v37;
      if (!v9)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v12 = v8;
    while (1)
    {
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
        sub_1CA2BC138();
      }

      v9 = *(v7 + 8 * v11);
      ++v12;
      if (v9)
      {
        v45 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1CA94D878();
  __break(1u);
  return result;
}

void sub_1CA42B6AC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1CA94D778();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1CA94B1C8();
        v6 = sub_1CA94C6C8();
        *(v6 + 16) = v5;
      }

      v7 = sub_1CA94B1C8();
      OUTLINED_FUNCTION_18_0(v7);
      v9 = *(v8 + 80);
      OUTLINED_FUNCTION_68_0();
      v11[0] = v6 + v10;
      v11[1] = v5;
      sub_1CA42D63C(v11, v12, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1CA42BE8C(0, v2, 1, a1);
  }
}

uint64_t sub_1CA42B7D4(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_1CA94D778();
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
        v12 = sub_1CA94C6C8();
        *(v12 + 16) = v11;
      }

      v13 = (a2)(0);
      OUTLINED_FUNCTION_18_0(v13);
      v15 = *(v14 + 80);
      OUTLINED_FUNCTION_68_0();
      v17[0] = v12 + v16;
      v17[1] = v11;
      a3(v17, v18, a1, v10);
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

uint64_t sub_1CA42B920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DrawerAction(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA42B9A4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_40();
  v5 = v4(v3);
  OUTLINED_FUNCTION_52(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_23();
  v9(v8);
  return a2;
}

uint64_t sub_1CA42B9FC()
{
  v1 = OUTLINED_FUNCTION_30();
  v3 = v2(v1);
  OUTLINED_FUNCTION_52(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1CA42BA50(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_40();
  v5 = v4(v3);
  OUTLINED_FUNCTION_52(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_23();
  v9(v8);
  return a2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CA42BACC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  swift_retain_n();
  result = sub_1CA94D778();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for DrawerAction(0);
        v8 = sub_1CA94C6C8();
        *(v8 + 16) = v7;
      }

      v9 = *(type metadata accessor for DrawerAction(0) - 8);
      v10[0] = (v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)));
      v10[1] = v7;

      sub_1CA42FDD4(v10, v11, a1, v6, a2);
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
    sub_1CA42CAC4(0, v4, 1, a1, a2);
  }
}

uint64_t sub_1CA42BC40(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_1CA94D778();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4440B0, &unk_1CA981B10);
        v6 = sub_1CA94C6C8();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4440B0, &unk_1CA981B10) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1CA431198(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1CA42D1F8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1CA42BD88(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1CA94D778();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443A00, &qword_1CA987610);
        v6 = sub_1CA94C6C8();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1CA431D80(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1CA42D52C(0, v2, 1, a1);
  }

  return result;
}

void sub_1CA42BE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_30();
  v8 = sub_1CA94B1C8();
  v9 = OUTLINED_FUNCTION_1_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_19();
  v38 = v12 - v13;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_45_0();
  v42 = v15;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_48_0();
  v41 = v18;
  v30 = a2;
  if (a3 != a2)
  {
    v20 = *(v17 + 16);
    v19 = v17 + 16;
    v21 = *(v19 + 56);
    v39 = (v19 - 8);
    v40 = v20;
    v22 = *a4 + v21 * (a3 - 1);
    v35 = -v21;
    v36 = (v19 + 16);
    v23 = v4 - a3;
    v37 = *a4;
    v29 = v21;
    v24 = *a4 + v21 * a3;
    while (2)
    {
      v33 = v22;
      v34 = a3;
      v31 = v24;
      v32 = v23;
      do
      {
        v40(v41, v24, v8);
        v40(v42, v22, v8);
        sub_1CA94B138();
        sub_1CA94B138();
        sub_1CA27BAF0();
        v25 = OUTLINED_FUNCTION_110_2();

        v26 = *v39;
        (*v39)(v42, v8);
        v26(v41, v8);
        if (v25 != -1)
        {
          break;
        }

        if (!v37)
        {
          __break(1u);
          return;
        }

        v27 = *v36;
        (*v36)(v38, v24, v8);
        OUTLINED_FUNCTION_107_0();
        swift_arrayInitWithTakeFrontToBack();
        v27(v22, v38, v8);
        v22 += v35;
        v24 += v35;
      }

      while (!__CFADD__(v23++, 1));
      a3 = v34 + 1;
      v22 = v33 + v29;
      v23 = v32 - 1;
      v24 = v31 + v29;
      if (v34 + 1 != v30)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1CA42C128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1CA9486C8();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v41 - v16;
  v43 = a2;
  if (a3 != a2)
  {
    v18 = v15;
    v19 = *a4;
    v21 = *(v14 + 16);
    v20 = v14 + 16;
    v22 = *(v20 + 56);
    v52 = (v20 - 8);
    v53 = v21;
    v54 = v20;
    v49 = (v20 + 16);
    v50 = v19;
    v23 = v19 + v22 * (a3 - 1);
    v48 = -v22;
    v24 = a1 - a3;
    v42 = v22;
    v25 = v19 + v22 * a3;
    while (2)
    {
      v46 = v23;
      v47 = a3;
      v44 = v25;
      v45 = v24;
      v26 = v23;
      while (1)
      {
        v27 = v53;
        v53(v17, v25, v8);
        v27(v18, v26, v8);
        v28 = sub_1CA9486B8();
        v29 = v17;
        v30 = v18;
        v32 = v31;
        if (v28 == sub_1CA9486B8() && v32 == v33)
        {
          break;
        }

        v35 = sub_1CA94D7F8();

        v36 = *v52;
        (*v52)(v30, v8);
        result = (v36)(v29, v8);
        v18 = v30;
        v17 = v29;
        if (v35)
        {
          if (!v50)
          {
            __break(1u);
            return result;
          }

          v37 = *v49;
          v38 = v51;
          (*v49)(v51, v25, v8);
          swift_arrayInitWithTakeFrontToBack();
          result = (v37)(v26, v38, v8);
          v26 += v48;
          v25 += v48;
          if (!__CFADD__(v24++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v40 = *v52;
      (*v52)(v30, v8);
      result = (v40)(v29, v8);
      v18 = v30;
      v17 = v29;
LABEL_14:
      a3 = v47 + 1;
      v23 = v46 + v42;
      v24 = v45 - 1;
      v25 = v44 + v42;
      if (v47 + 1 != v43)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1CA42C448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v73 = sub_1CA94A4E8();
  v8 = *(v73 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1CA94A288();
  v12 = *(v75 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for DrawerAction.DrawerActionStorage(0);
  v15 = *(*(v76 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v76);
  v81 = (&v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v84 = (&v62 - v18);
  v80 = type metadata accessor for DrawerAction(0);
  v19 = *(*(v80 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v80);
  v79 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v89 = &v62 - v23;
  result = MEMORY[0x1EEE9AC00](v22);
  v83 = &v62 - v26;
  v64 = a2;
  if (a3 != a2)
  {
    v27 = *a4;
    v28 = *(v25 + 72);
    v71 = (v8 + 8);
    v72 = (v8 + 32);
    v69 = (v12 + 8);
    v70 = (v12 + 32);
    v29 = v27 + v28 * (a3 - 1);
    v77 = -v28;
    v78 = v27;
    v30 = a1 - a3;
    v63 = v28;
    v31 = v27 + v28 * a3;
    while (2)
    {
      v68 = a3;
      v65 = v31;
      v66 = v30;
      v67 = v29;
      do
      {
        v32 = v83;
        sub_1CA42B9A4(v31, v83);
        sub_1CA42B9A4(v29, v89);
        sub_1CA42B9A4(v32, v84);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v35 = v74;
            v34 = v75;
            (*v70)(v74, v84, v75);
            v36 = sub_1CA94A268();
            v37 = v35;
            v39 = v38;
            (*v69)(v37, v34);
          }

          else
          {
            v43 = v73;
            (*v72)(v11, v84, v73);
            v36 = sub_1CA94A4B8();
            v39 = v44;
            (*v71)(v11, v43);
          }
        }

        else
        {
          v40 = *v84;
          v41 = [*v84 localizedName];
          v36 = sub_1CA94C3A8();
          v39 = v42;
        }

        v45 = v81;
        v87 = v36;
        v88 = v39;
        sub_1CA42B9A4(v89, v81);
        v46 = swift_getEnumCaseMultiPayload();
        v82 = v39;
        if (v46)
        {
          if (v46 == 1)
          {
            v47 = v74;
            v48 = v45;
            v49 = v75;
            (*v70)(v74, v48, v75);
            v50 = sub_1CA94A268();
            v52 = v51;
            (*v69)(v47, v49);
          }

          else
          {
            v56 = v45;
            v57 = v73;
            (*v72)(v11, v56, v73);
            v50 = sub_1CA94A4B8();
            v52 = v58;
            (*v71)(v11, v57);
          }
        }

        else
        {
          v53 = *v45;
          v54 = [v53 localizedName];
          v50 = sub_1CA94C3A8();
          v52 = v55;
        }

        v85 = v50;
        v86 = v52;
        sub_1CA27BAF0();
        v59 = sub_1CA94D1F8();

        sub_1CA42B9FC();
        result = sub_1CA42B9FC();
        if (v59 != -1)
        {
          break;
        }

        if (!v78)
        {
          __break(1u);
          return result;
        }

        v60 = v79;
        sub_1CA42BA50(v31, v79);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1CA42BA50(v60, v29);
        v29 += v77;
        v31 += v77;
      }

      while (!__CFADD__(v30++, 1));
      a3 = v68 + 1;
      v29 = v67 + v63;
      v30 = v66 - 1;
      v31 = v65 + v63;
      if (v68 + 1 != v64)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1CA42CAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v80 = sub_1CA94A4E8();
  v10 = *(v80 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1CA94A288();
  v13 = *(v78 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for DrawerAction.DrawerActionStorage(0);
  v16 = *(*(v93 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v93);
  v88 = (&v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v87 = (&v66 - v19);
  v85 = type metadata accessor for DrawerAction(0);
  v20 = *(*(v85 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v85);
  v84 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v66 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v81 = &v66 - v27;
  v68 = a2;
  if (a3 == a2)
  {
  }

  v28 = *a4;
  v29 = *(v26 + 72);
  v75 = (v10 + 8);
  v76 = (v10 + 32);
  v73 = (v13 + 8);
  v74 = (v13 + 32);
  v30 = v28 + v29 * (a3 - 1);
  v82 = -v29;
  v83 = v28;
  v31 = a1 - a3;
  v67 = v29;
  v32 = v28 + v29 * a3;
  v33 = a5;
  v86 = v25;
  v34 = v81;
  while (2)
  {
    v72 = a3;
    v69 = v32;
    v70 = v31;
    v35 = v31;
    v71 = v30;
    v36 = v30;
    while (1)
    {
      sub_1CA42B9A4(v32, v34);
      sub_1CA42B9A4(v36, v25);
      v37 = *(ActionDrawerDataSource.topHits(for:)(v34) + 16);

      v38 = *(ActionDrawerDataSource.topHits(for:)(v25) + 16);

      if (!v37)
      {
        break;
      }

      if (v38)
      {
        goto LABEL_8;
      }

      sub_1CA42B9FC();
      result = sub_1CA42B9FC();
LABEL_21:
      if (!v83)
      {
        __break(1u);
        return result;
      }

      v64 = v84;
      sub_1CA42BA50(v32, v84);
      swift_arrayInitWithTakeFrontToBack();
      sub_1CA42BA50(v64, v36);
      v36 += v82;
      v32 += v82;
      if (__CFADD__(v35++, 1))
      {
        goto LABEL_26;
      }
    }

    if (!v38)
    {
LABEL_8:
      sub_1CA42B9A4(v34, v87);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v42 = v77;
          v41 = v78;
          (*v74)(v77, v87, v78);
          v43 = sub_1CA94A268();
          v45 = v44;
          v46 = v73;
        }

        else
        {
          v42 = v79;
          v41 = v80;
          (*v76)(v79, v87, v80);
          v43 = sub_1CA94A4B8();
          v45 = v50;
          v46 = v75;
        }

        (*v46)(v42, v41);
      }

      else
      {
        v47 = *v87;
        v48 = [*v87 localizedName];
        v43 = sub_1CA94C3A8();
        v45 = v49;

        v25 = v86;
      }

      v91 = v43;
      v92 = v45;
      sub_1CA42B9A4(v25, v88);
      v51 = swift_getEnumCaseMultiPayload();
      if (v51)
      {
        if (v51 == 1)
        {
          v53 = v77;
          v52 = v78;
          (*v74)(v77, v88, v78);
          v54 = sub_1CA94A268();
          v56 = v55;
          v57 = v73;
        }

        else
        {
          v53 = v79;
          v52 = v80;
          (*v76)(v79, v88, v80);
          v54 = sub_1CA94A4B8();
          v56 = v62;
          v57 = v75;
        }

        (*v57)(v53, v52);
      }

      else
      {
        v58 = *v88;
        v59 = v33;
        v60 = [*v88 localizedName];
        v54 = sub_1CA94C3A8();
        v56 = v61;

        v33 = v59;
      }

      v89 = v54;
      v90 = v56;
      sub_1CA27BAF0();
      v63 = sub_1CA94D1D8();

      v25 = v86;
      sub_1CA42B9FC();
      v34 = v81;
      result = sub_1CA42B9FC();
      if (v63 != -1)
      {
        goto LABEL_26;
      }

      goto LABEL_21;
    }

    sub_1CA42B9FC();
    sub_1CA42B9FC();
LABEL_26:
    a3 = v72 + 1;
    v30 = v71 + v67;
    v31 = v70 - 1;
    v32 = v69 + v67;
    if (v72 + 1 != v68)
    {
      continue;
    }
  }
}

uint64_t sub_1CA42D1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4440B0, &unk_1CA981B10);
  v8 = *(*(v46 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v46);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v33 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v18 = &v33 - v17;
  v35 = a2;
  if (a3 == a2)
  {
    return result;
  }

  v19 = *a4;
  v20 = *(v16 + 72);
  v21 = v19 + v20 * (a3 - 1);
  v40 = v19;
  v41 = -v20;
  v22 = a1 - a3;
  v34 = v20;
  v23 = v19 + v20 * a3;
  while (2)
  {
    v38 = v21;
    v39 = a3;
    v36 = v23;
    v37 = v22;
    v24 = v23;
    while (1)
    {
      sub_1CA2D9D20(v24, v18, &unk_1EC4440B0, &unk_1CA981B10);
      sub_1CA2D9D20(v21, v14, &unk_1EC4440B0, &unk_1CA981B10);
      v25 = *(v46 + 36);
      v26 = *&v18[v25];
      v27 = *&v14[v25];
      if (v27 >= v26)
      {
        break;
      }

      sub_1CA27080C(v14, &unk_1EC4440B0, &unk_1CA981B10);
      result = sub_1CA27080C(v18, &unk_1EC4440B0, &unk_1CA981B10);
LABEL_9:
      if (!v19)
      {
        __break(1u);
        return result;
      }

      sub_1CA2D9CD4(v24, v11, &unk_1EC4440B0, &unk_1CA981B10);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1CA2D9CD4(v11, v21, &unk_1EC4440B0, &unk_1CA981B10);
      v21 += v41;
      v24 += v41;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_14;
      }
    }

    if (v26 >= v27)
    {
      v44 = sub_1CA429604();
      v45 = v28;
      v42 = sub_1CA429604();
      v43 = v29;
      sub_1CA27BAF0();
      v30 = sub_1CA94D1F8();

      sub_1CA27080C(v14, &unk_1EC4440B0, &unk_1CA981B10);
      result = sub_1CA27080C(v18, &unk_1EC4440B0, &unk_1CA981B10);
      v31 = v30 == -1;
      v19 = v40;
      if (!v31)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

    sub_1CA27080C(v14, &unk_1EC4440B0, &unk_1CA981B10);
    result = sub_1CA27080C(v18, &unk_1EC4440B0, &unk_1CA981B10);
LABEL_14:
    a3 = v39 + 1;
    v21 = v38 + v34;
    v22 = v37 - 1;
    v23 = v36 + v34;
    if (v39 + 1 != v35)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_1CA42D52C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_1CA27BAF0();
    v7 = v6 + 24 * v4 - 24;
    v8 = v5 - v4;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      v10 = *v9;
      v11 = v9[1];
      v12 = v8;
      v13 = v7;
      do
      {
        v18 = *v13;
        v19 = *(v13 + 8);
        result = sub_1CA94D1D8();
        if (result != -1)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v14 = *(v13 + 32);
        v16 = *(v13 + 16);
        v15 = *(v13 + 24);
        *(v13 + 24) = *v13;
        *(v13 + 40) = v16;
        *v13 = v15;
        *(v13 + 8) = v14;
        v13 -= 24;
      }

      while (!__CFADD__(v12++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1CA42D63C(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = v4;
  v10 = sub_1CA94B1C8();
  v11 = OUTLINED_FUNCTION_1_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_19();
  v127 = v14 - v15;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_45_0();
  v143 = v17;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_45_0();
  v149 = v19;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_45_0();
  v148 = v21;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_127_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_83_1();
  v134 = v24;
  v135 = a3;
  v25 = a3[1];
  if (v25 < 1)
  {
    v27 = MEMORY[0x1E69E7CC0];
LABEL_101:
    v151 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_103;
    }

    goto LABEL_139;
  }

  v121 = a4;
  v26 = 0;
  v150 = (v24 + 8);
  v147 = (v24 + 32);
  v27 = MEMORY[0x1E69E7CC0];
  v151 = v10;
  v122 = v5;
  v123 = v6;
  while (1)
  {
    v28 = v26;
    v29 = v26 + 1;
    v128 = v26;
    if (v26 + 1 < v25)
    {
      v138 = v26 + 1;
      v141 = v25;
      v136 = v27;
      v30 = v6;
      v31 = v26;
      v32 = *v135;
      v33 = *(v24 + 72);
      v34 = *v135 + v33 * v29;
      v35 = v10;
      v36 = *(v24 + 16);
      v36(v30, v34, v35);
      v130 = v36;
      v36(v5, v32 + v33 * v31, v35);
      v37 = OUTLINED_FUNCTION_104();
      v132 = sub_1CA424E48(v37, v38, v39);
      if (v7)
      {
        v118 = *v150;
        v119 = OUTLINED_FUNCTION_129();
        v118(v119);
        v120 = OUTLINED_FUNCTION_97_4();
        v118(v120);
LABEL_114:

        return;
      }

      v27 = v150;
      v40 = *v150;
      v41 = OUTLINED_FUNCTION_129();
      v40(v41);
      v42 = OUTLINED_FUNCTION_97_4();
      v40(v42);
      v43 = v128 + 2;
      v44 = v32 + v33 * (v128 + 2);
      v144 = v33;
      v45 = v141;
      while (1)
      {
        v7 = v43;
        if (++v138 >= v45)
        {
          break;
        }

        v130(v148, v44, v151);
        v27 = v149;
        v130(v149, v34, v151);
        sub_1CA94B138();
        sub_1CA94B138();
        sub_1CA27BAF0();
        v46 = OUTLINED_FUNCTION_110_2();

        v47 = OUTLINED_FUNCTION_162();
        v40(v47);
        (v40)(v148, v151);
        v45 = v141;
        v33 = v144;
        v44 += v144;
        v34 += v144;
        v43 = v7 + 1;
        if (((v132 ^ (v46 != -1)) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v138 = v45;
LABEL_10:
      if (v132)
      {
        v29 = v138;
        v10 = v151;
        if (v138 < v128)
        {
          goto LABEL_138;
        }

        if (v128 >= v138)
        {
          OUTLINED_FUNCTION_91_4();
          v27 = v136;
        }

        else
        {
          if (v45 >= v7)
          {
            v48 = v7;
          }

          else
          {
            v48 = v45;
          }

          v49 = v33 * (v48 - 1);
          v50 = v138;
          v51 = v33 * v48;
          v52 = v128 * v33;
          v53 = v128;
          OUTLINED_FUNCTION_91_4();
          do
          {
            if (v53 != --v50)
            {
              v54 = *v135;
              if (!*v135)
              {
                goto LABEL_143;
              }

              v7 = *v147;
              (*v147)(v127, v54 + v52, v151);
              v55 = v52 < v49 || v54 + v52 >= (v54 + v51);
              if (v55)
              {
                OUTLINED_FUNCTION_131_3();
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v52 != v49)
              {
                OUTLINED_FUNCTION_131_3();
                swift_arrayInitWithTakeBackToFront();
              }

              (v7)(v54 + v49, v127, v151);
              OUTLINED_FUNCTION_91_4();
              v28 = v128;
              v33 = v144;
            }

            ++v53;
            v49 -= v33;
            v51 -= v33;
            v52 += v33;
          }

          while (v53 < v50);
          v24 = v134;
          v27 = v136;
          v29 = v138;
        }
      }

      else
      {
        OUTLINED_FUNCTION_91_4();
        v24 = v134;
        v27 = v136;
        v29 = v138;
        v10 = v151;
        v28 = v128;
      }
    }

    v56 = v135[1];
    if (v29 < v56)
    {
      if (__OFSUB__(v29, v28))
      {
        goto LABEL_135;
      }

      if (v29 - v28 < v121)
      {
        break;
      }
    }

LABEL_48:
    if (v29 < v28)
    {
      goto LABEL_134;
    }

    v140 = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v108 = *(v27 + 2);
      OUTLINED_FUNCTION_21();
      sub_1CA2E49C0();
      v27 = v109;
    }

    v67 = *(v27 + 2);
    v68 = v67 + 1;
    if (v67 >= *(v27 + 3) >> 1)
    {
      sub_1CA2E49C0();
      v27 = v110;
    }

    *(v27 + 2) = v68;
    v69 = v27 + 32;
    v70 = &v27[16 * v67 + 32];
    *v70 = v128;
    *(v70 + 1) = v140;
    v146 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if (v67)
    {
      v137 = v27;
      while (1)
      {
        v71 = v68 - 1;
        v72 = &v69[16 * v68 - 16];
        v73 = &v27[16 * v68];
        if (v68 >= 4)
        {
          break;
        }

        if (v68 == 3)
        {
          v74 = *(v27 + 4);
          v75 = *(v27 + 5);
          v84 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          v77 = v84;
LABEL_69:
          if (v77)
          {
            goto LABEL_121;
          }

          v89 = *v73;
          v88 = *(v73 + 1);
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_124;
          }

          v93 = *(v72 + 1);
          v94 = v93 - *v72;
          if (__OFSUB__(v93, *v72))
          {
            goto LABEL_127;
          }

          if (__OFADD__(v91, v94))
          {
            goto LABEL_129;
          }

          if (v91 + v94 >= v76)
          {
            if (v76 < v94)
            {
              v71 = v68 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v68 < 2)
        {
          goto LABEL_123;
        }

        v96 = *v73;
        v95 = *(v73 + 1);
        v84 = __OFSUB__(v95, v96);
        v91 = v95 - v96;
        v92 = v84;
LABEL_84:
        if (v92)
        {
          goto LABEL_126;
        }

        v98 = *v72;
        v97 = *(v72 + 1);
        v84 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v84)
        {
          goto LABEL_128;
        }

        if (v99 < v91)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v71 - 1 >= v68)
        {
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
          goto LABEL_137;
        }

        if (!*v135)
        {
          goto LABEL_141;
        }

        v103 = &v69[16 * v71 - 16];
        v27 = *v103;
        v104 = v71;
        v105 = &v69[16 * v71];
        v106 = *(v105 + 1);
        sub_1CA4323EC(*v135 + *(v134 + 72) * *v103, *v135 + *(v134 + 72) * *v105, *v135 + *(v134 + 72) * v106, v146);
        if (v7)
        {
          goto LABEL_114;
        }

        if (v106 < v27)
        {
          goto LABEL_116;
        }

        v7 = *(v137 + 2);
        if (v104 > v7)
        {
          goto LABEL_117;
        }

        *v103 = v27;
        *(v103 + 1) = v106;
        if (v104 >= v7)
        {
          goto LABEL_118;
        }

        v68 = v7 - 1;
        sub_1CA627628(v105 + 16, v7 - 1 - v104, v105);
        v27 = v137;
        *(v137 + 2) = v7 - 1;
        v107 = v7 > 2;
        v7 = 0;
        if (!v107)
        {
          goto LABEL_98;
        }
      }

      v78 = &v69[16 * v68];
      v79 = *(v78 - 8);
      v80 = *(v78 - 7);
      v84 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      if (v84)
      {
        goto LABEL_119;
      }

      v83 = *(v78 - 6);
      v82 = *(v78 - 5);
      v84 = __OFSUB__(v82, v83);
      v76 = v82 - v83;
      v77 = v84;
      if (v84)
      {
        goto LABEL_120;
      }

      v85 = *(v73 + 1);
      v86 = v85 - *v73;
      if (__OFSUB__(v85, *v73))
      {
        goto LABEL_122;
      }

      v84 = __OFADD__(v76, v86);
      v87 = v76 + v86;
      if (v84)
      {
        goto LABEL_125;
      }

      if (v87 >= v81)
      {
        v101 = *v72;
        v100 = *(v72 + 1);
        v84 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v84)
        {
          goto LABEL_133;
        }

        if (v76 < v102)
        {
          v71 = v68 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v24 = v134;
    v25 = v135[1];
    v26 = v140;
    v5 = v122;
    v6 = v123;
    if (v140 >= v25)
    {
      goto LABEL_101;
    }
  }

  v57 = v28 + v121;
  if (__OFADD__(v28, v121))
  {
    goto LABEL_136;
  }

  if (v57 >= v56)
  {
    v57 = v135[1];
  }

  if (v57 < v28)
  {
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    v27 = sub_1CA627610(v27);
LABEL_103:
    v111 = v27 + 16;
    v112 = *(v27 + 2);
    while (v112 >= 2)
    {
      if (!*v135)
      {
        goto LABEL_142;
      }

      v113 = v27;
      v27 += 16 * v112;
      v114 = *v27;
      v115 = &v111[2 * v112];
      v116 = *(v115 + 1);
      sub_1CA4323EC(*v135 + *(v134 + 72) * *v27, *v135 + *(v134 + 72) * *v115, *v135 + *(v134 + 72) * v116, v151);
      if (v7)
      {
        break;
      }

      if (v116 < v114)
      {
        goto LABEL_130;
      }

      if (v112 - 2 >= *v111)
      {
        goto LABEL_131;
      }

      *v27 = v114;
      *(v27 + 1) = v116;
      v117 = *v111 - v112;
      if (*v111 < v112)
      {
        goto LABEL_132;
      }

      v112 = *v111 - 1;
      sub_1CA627628(v115 + 16, v117, v115);
      *v111 = v112;
      v27 = v113;
    }

    goto LABEL_114;
  }

  if (v29 == v57)
  {
    goto LABEL_48;
  }

  v58 = *(v24 + 72);
  v145 = *(v24 + 16);
  v59 = *v135 + v58 * (v29 - 1);
  v7 = -v58;
  v60 = v28 - v29;
  v142 = *v135;
  v125 = v58;
  v61 = *v135 + v29 * v58;
  v126 = v57;
LABEL_41:
  v139 = v29;
  v129 = v61;
  v131 = v60;
  v62 = v61;
  v133 = v59;
  while (1)
  {
    v145(v148, v62, v10);
    v145(v149, v59, v151);
    sub_1CA94B138();
    sub_1CA94B138();
    sub_1CA27BAF0();
    OUTLINED_FUNCTION_110_2();
    OUTLINED_FUNCTION_87();

    v63 = *v150;
    v10 = v151;
    (*v150)(v149, v151);
    v64 = OUTLINED_FUNCTION_162();
    v63(v64);
    if (&vars0 != 103)
    {
LABEL_46:
      v29 = v139 + 1;
      v59 = v133 + v125;
      v60 = v131 - 1;
      v61 = v129 + v125;
      if (v139 + 1 == v126)
      {
        v29 = v126;
        OUTLINED_FUNCTION_91_4();
        v28 = v128;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v142)
    {
      break;
    }

    v65 = *v147;
    (*v147)(v143, v62, v151);
    swift_arrayInitWithTakeFrontToBack();
    v66 = OUTLINED_FUNCTION_97_4();
    v65(v66);
    v59 += v7;
    v62 += v7;
    v55 = __CFADD__(v60++, 1);
    if (v55)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}

void sub_1CA42E0C4(uint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v147 = a1;
  v8 = sub_1CA9486C8();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v152 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v165 = &v143 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v143 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v161 = &v143 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v160 = &v143 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v22);
  v27 = &v143 - v23;
  v158 = v24;
  v159 = a3;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = MEMORY[0x1E69E7CC0];
LABEL_114:
    v170 = *v147;
    if (!v170)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_150;
  }

  v166 = v25;
  v143 = a4;
  v29 = 0;
  v170 = v24 + 16;
  v168 = (v24 + 32);
  v169 = (v24 + 8);
  v30 = MEMORY[0x1E69E7CC0];
  v162 = v8;
  v154 = v16;
  v144 = v26;
  v146 = &v143 - v23;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v149 = v29;
    if (v29 + 1 < v28)
    {
      v164 = v28;
      v145 = v30;
      v33 = v27;
      v34 = *v159;
      v35 = *(v24 + 72);
      v36 = v26;
      v157 = v29 + 1;
      v37 = v29;
      v38 = &v34[v35 * (v29 + 1)];
      v39 = *(v24 + 16);
      v39(v33, v38, v8);
      v40 = &v34[v35 * v37];
      v41 = v146;
      v156 = v39;
      v39(v36, v40, v8);
      LODWORD(v163) = sub_1CA422BA0();
      if (v5)
      {
        v142 = *v169;
        (*v169)(v36, v8);
        (v142)(v41, v8);
LABEL_124:

        return;
      }

      v148 = 0;
      v30 = v169;
      v42 = *v169;
      (*v169)(v36, v8);
      v155 = v42;
      (v42)(v41, v8);
      v43 = v149 + 2;
      v44 = &v34[v35 * (v149 + 2)];
      v32 = v157;
      v45 = v35;
      v167 = v35;
      v46 = v164;
      while (1)
      {
        v47 = v43;
        if (v32 + 1 >= v46)
        {
          break;
        }

        v48 = v32;
        v49 = v162;
        v5 = v156;
        (v156)(v160, v44, v162);
        v5(v161, v38, v49);
        v50 = sub_1CA9486B8();
        v52 = v51;
        if (v50 == sub_1CA9486B8() && v52 == v53)
        {
          v55 = 0;
        }

        else
        {
          v55 = sub_1CA94D7F8();
        }

        v56 = v162;
        v30 = v155;
        (v155)(v161, v162);
        (v30)(v160, v56);
        v45 = v167;
        v44 += v167;
        v38 += v167;
        v32 = v48 + 1;
        v43 = v47 + 1;
        v46 = v164;
        if ((v163 ^ v55))
        {
          goto LABEL_16;
        }
      }

      v32 = v46;
LABEL_16:
      if (v163)
      {
        v31 = v149;
        if (v32 < v149)
        {
          goto LABEL_149;
        }

        v5 = v148;
        if (v149 >= v32)
        {
          v24 = v158;
          v30 = v145;
          v8 = v162;
          v16 = v154;
          goto LABEL_39;
        }

        if (v46 >= v47)
        {
          v57 = v47;
        }

        else
        {
          v57 = v46;
        }

        v58 = v45 * (v57 - 1);
        v59 = v45 * v57;
        v60 = v149;
        v61 = v149 * v45;
        v62 = v32;
        do
        {
          if (v60 != --v62)
          {
            v63 = *v159;
            if (!*v159)
            {
              goto LABEL_154;
            }

            v64 = v162;
            v164 = *v168;
            v164(v152, &v63[v61], v162);
            v65 = v61 < v58 || &v63[v61] >= &v63[v59];
            if (v65)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v61 != v58)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v164(&v63[v58], v152, v64);
            v5 = v148;
            v45 = v167;
          }

          ++v60;
          v58 -= v45;
          v59 -= v45;
          v61 += v45;
        }

        while (v60 < v62);
      }

      else
      {
        v5 = v148;
      }

      v24 = v158;
      v30 = v145;
      v8 = v162;
      v16 = v154;
      v31 = v149;
    }

LABEL_39:
    v66 = v159[1];
    if (v32 < v66)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_146;
      }

      if (v32 - v31 < v143)
      {
        break;
      }
    }

LABEL_62:
    if (v32 < v31)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v132 = *(v30 + 2);
      sub_1CA2E49C0();
      v30 = v133;
    }

    v89 = *(v30 + 2);
    v88 = *(v30 + 3);
    v90 = v89 + 1;
    v157 = v32;
    if (v89 >= v88 >> 1)
    {
      sub_1CA2E49C0();
      v30 = v134;
    }

    *(v30 + 2) = v90;
    v91 = v30 + 32;
    v92 = &v30[16 * v89 + 32];
    v93 = v157;
    *v92 = v149;
    *(v92 + 1) = v93;
    v167 = *v147;
    if (!v167)
    {
      goto LABEL_155;
    }

    if (v89)
    {
      while (1)
      {
        v94 = v90 - 1;
        v95 = &v91[16 * v90 - 16];
        v96 = &v30[16 * v90];
        if (v90 >= 4)
        {
          break;
        }

        if (v90 == 3)
        {
          v97 = *(v30 + 4);
          v98 = *(v30 + 5);
          v107 = __OFSUB__(v98, v97);
          v99 = v98 - v97;
          v100 = v107;
LABEL_82:
          if (v100)
          {
            goto LABEL_132;
          }

          v112 = *v96;
          v111 = *(v96 + 1);
          v113 = __OFSUB__(v111, v112);
          v114 = v111 - v112;
          v115 = v113;
          if (v113)
          {
            goto LABEL_135;
          }

          v116 = *(v95 + 1);
          v117 = v116 - *v95;
          if (__OFSUB__(v116, *v95))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v114, v117))
          {
            goto LABEL_140;
          }

          if (v114 + v117 >= v99)
          {
            if (v99 < v117)
            {
              v94 = v90 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v90 < 2)
        {
          goto LABEL_134;
        }

        v119 = *v96;
        v118 = *(v96 + 1);
        v107 = __OFSUB__(v118, v119);
        v114 = v118 - v119;
        v115 = v107;
LABEL_97:
        if (v115)
        {
          goto LABEL_137;
        }

        v121 = *v95;
        v120 = *(v95 + 1);
        v107 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v107)
        {
          goto LABEL_139;
        }

        if (v122 < v114)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v94 - 1 >= v90)
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
LABEL_141:
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
          goto LABEL_148;
        }

        if (!*v159)
        {
          goto LABEL_152;
        }

        v126 = v30;
        v127 = &v91[16 * v94 - 16];
        v30 = *v127;
        v128 = &v91[16 * v94];
        v129 = *(v128 + 1);
        sub_1CA432950(&(*v159)[*(v158 + 72) * *v127], &(*v159)[*(v158 + 72) * *v128], &(*v159)[*(v158 + 72) * v129], v167);
        if (v5)
        {
          goto LABEL_124;
        }

        if (v129 < v30)
        {
          goto LABEL_127;
        }

        v130 = *(v126 + 2);
        if (v94 > v130)
        {
          goto LABEL_128;
        }

        *v127 = v30;
        *(v127 + 1) = v129;
        if (v94 >= v130)
        {
          goto LABEL_129;
        }

        v90 = v130 - 1;
        sub_1CA627628(v128 + 16, v130 - 1 - v94, &v91[16 * v94]);
        v30 = v126;
        *(v126 + 2) = v130 - 1;
        v131 = v130 > 2;
        v16 = v154;
        if (!v131)
        {
          goto LABEL_111;
        }
      }

      v101 = &v91[16 * v90];
      v102 = *(v101 - 8);
      v103 = *(v101 - 7);
      v107 = __OFSUB__(v103, v102);
      v104 = v103 - v102;
      if (v107)
      {
        goto LABEL_130;
      }

      v106 = *(v101 - 6);
      v105 = *(v101 - 5);
      v107 = __OFSUB__(v105, v106);
      v99 = v105 - v106;
      v100 = v107;
      if (v107)
      {
        goto LABEL_131;
      }

      v108 = *(v96 + 1);
      v109 = v108 - *v96;
      if (__OFSUB__(v108, *v96))
      {
        goto LABEL_133;
      }

      v107 = __OFADD__(v99, v109);
      v110 = v99 + v109;
      if (v107)
      {
        goto LABEL_136;
      }

      if (v110 >= v104)
      {
        v124 = *v95;
        v123 = *(v95 + 1);
        v107 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v107)
        {
          goto LABEL_144;
        }

        if (v99 < v125)
        {
          v94 = v90 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v24 = v158;
    v28 = v159[1];
    v29 = v157;
    v8 = v162;
    v26 = v144;
    v27 = v146;
    if (v157 >= v28)
    {
      goto LABEL_114;
    }
  }

  v67 = (v31 + v143);
  if (__OFADD__(v31, v143))
  {
    goto LABEL_147;
  }

  if (v67 >= v66)
  {
    v67 = v159[1];
  }

  if (v67 < v31)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v30 = sub_1CA627610(v30);
LABEL_116:
    v135 = v30 + 16;
    v136 = *(v30 + 2);
    while (v136 >= 2)
    {
      if (!*v159)
      {
        goto LABEL_153;
      }

      v137 = v30;
      v30 += 16 * v136;
      v138 = *v30;
      v139 = &v135[2 * v136];
      v140 = *(v139 + 1);
      sub_1CA432950(&(*v159)[*(v158 + 72) * *v30], &(*v159)[*(v158 + 72) * *v139], &(*v159)[*(v158 + 72) * v140], v170);
      if (v5)
      {
        break;
      }

      if (v140 < v138)
      {
        goto LABEL_141;
      }

      if (v136 - 2 >= *v135)
      {
        goto LABEL_142;
      }

      *v30 = v138;
      *(v30 + 1) = v140;
      v141 = *v135 - v136;
      if (*v135 < v136)
      {
        goto LABEL_143;
      }

      v136 = *v135 - 1;
      sub_1CA627628(v139 + 16, v141, v139);
      *v135 = v136;
      v30 = v137;
    }

    goto LABEL_124;
  }

  if (v32 == v67)
  {
    goto LABEL_62;
  }

  v145 = v30;
  v148 = v5;
  v68 = *v159;
  v69 = *(v24 + 72);
  v167 = *(v24 + 16);
  v70 = &v68[v69 * (v32 - 1)];
  v163 = -v69;
  v164 = v68;
  v71 = (v31 - v32);
  v150 = v69;
  v151 = v67;
  v72 = &v68[v32 * v69];
  v73 = v166;
LABEL_48:
  v156 = v70;
  v157 = v32;
  v153 = v72;
  v155 = v71;
  while (1)
  {
    v74 = v167;
    (v167)(v73, v72, v8);
    v74(v16, v70, v8);
    v75 = v16;
    v76 = sub_1CA9486B8();
    v77 = v8;
    v79 = v78;
    if (v76 == sub_1CA9486B8() && v79 == v80)
    {

      v87 = *v169;
      (*v169)(v75, v77);
      (v87)(v73, v77);
      v8 = v77;
      v16 = v75;
      goto LABEL_60;
    }

    v82 = v73;
    v83 = sub_1CA94D7F8();

    v84 = *v169;
    (*v169)(v75, v77);
    (v84)(v82, v77);
    v8 = v77;
    v16 = v75;
    if ((v83 & 1) == 0)
    {
      v73 = v166;
LABEL_60:
      v32 = v157 + 1;
      v70 = &v156[v150];
      v71 = v155 - 1;
      v72 = &v153[v150];
      if (v157 + 1 == v151)
      {
        v32 = v151;
        v5 = v148;
        v30 = v145;
        v31 = v149;
        goto LABEL_62;
      }

      goto LABEL_48;
    }

    if (!v164)
    {
      break;
    }

    v85 = *v168;
    v86 = v165;
    (*v168)(v165, v72, v77);
    swift_arrayInitWithTakeFrontToBack();
    v85(v70, v86, v77);
    v70 += v163;
    v72 += v163;
    v65 = __CFADD__(v71++, 1);
    v73 = v166;
    if (v65)
    {
      goto LABEL_60;
    }
  }

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
}

void sub_1CA42EC80(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v180 = a4;
  v179 = a1;
  v202 = sub_1CA94A4E8();
  v5 = *(v202 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v202);
  v201 = &v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_1CA94A288();
  v8 = *(v200 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v200);
  v199 = &v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for DrawerAction.DrawerActionStorage(0);
  v11 = *(*(v209 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v209);
  v208 = (&v175 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v12);
  v207 = (&v175 - v15);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v192 = (&v175 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v191 = (&v175 - v18);
  v205 = type metadata accessor for DrawerAction(0);
  v188 = *(v205 - 8);
  v19 = *(v188 + 64);
  v20 = MEMORY[0x1EEE9AC00](v205);
  v183 = &v175 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v204 = &v175 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v214 = &v175 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v206 = &v175 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v190 = &v175 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  MEMORY[0x1EEE9AC00](v31);
  v189 = a3;
  v35 = a3[1];
  if (v35 < 1)
  {
    v37 = MEMORY[0x1E69E7CC0];
LABEL_126:
    v38 = *v179;
    if (!*v179)
    {
      goto LABEL_169;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_128;
    }

    goto LABEL_163;
  }

  v175 = &v175 - v32;
  v176 = v34;
  v187 = v33;
  v36 = 0;
  v197 = (v5 + 8);
  v198 = (v5 + 32);
  v195 = (v8 + 8);
  v196 = (v8 + 32);
  v37 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v38 = v36;
    v39 = v36 + 1;
    if (v36 + 1 >= v35)
    {
      v77 = v180;
    }

    else
    {
      v203 = v35;
      v40 = *v189;
      v41 = *(v188 + 72);
      v42 = v36;
      v43 = v36 + 1;
      v44 = *v189 + v41 * v39;
      v45 = v175;
      sub_1CA42B9A4(v44, v175);
      v46 = v176;
      sub_1CA42B9A4(v40 + v41 * v42, v176);
      v47 = v193;
      LODWORD(v186) = sub_1CA424E48(v45, v46, DrawerAction.title.getter);
      v193 = v47;
      if (v47)
      {
        sub_1CA42B9FC();
        sub_1CA42B9FC();
LABEL_138:

        return;
      }

      v177 = v37;
      sub_1CA42B9FC();
      sub_1CA42B9FC();
      v178 = v42;
      v48 = v42 + 2;
      v49 = v40 + v41 * (v42 + 2);
      v37 = v187;
      v39 = v43;
      v50 = v203;
      while (1)
      {
        v51 = v48;
        if (v39 + 1 >= v50)
        {
          break;
        }

        v194 = v39;
        v52 = v190;
        sub_1CA42B9A4(v49, v190);
        sub_1CA42B9A4(v44, v37);
        sub_1CA42B9A4(v52, v191);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v55 = v199;
            v54 = v200;
            (*v196)(v199, v191, v200);
            v56 = sub_1CA94A268();
            v58 = v57;
            v59 = v195;
          }

          else
          {
            v55 = v201;
            v54 = v202;
            (*v198)(v201, v191, v202);
            v56 = sub_1CA94A4B8();
            v58 = v63;
            v59 = v197;
          }

          (*v59)(v55, v54);
        }

        else
        {
          v60 = *v191;
          v61 = [*v191 localizedName];
          v56 = sub_1CA94C3A8();
          v58 = v62;

          v37 = v187;
        }

        v212 = v56;
        v213 = v58;
        sub_1CA42B9A4(v37, v192);
        v64 = swift_getEnumCaseMultiPayload();
        if (v64)
        {
          if (v64 == 1)
          {
            v66 = v199;
            v65 = v200;
            (*v196)(v199, v192, v200);
            v67 = sub_1CA94A268();
            v69 = v68;
            v70 = v195;
          }

          else
          {
            v66 = v201;
            v65 = v202;
            (*v198)(v201, v192, v202);
            v67 = sub_1CA94A4B8();
            v69 = v74;
            v70 = v197;
          }

          (*v70)(v66, v65);
        }

        else
        {
          v71 = *v192;
          v72 = [*v192 localizedName];
          v67 = sub_1CA94C3A8();
          v69 = v73;
        }

        v210 = v67;
        v211 = v69;
        sub_1CA27BAF0();
        v75 = sub_1CA94D1F8();

        v37 = v187;
        sub_1CA42B9FC();
        sub_1CA42B9FC();
        v76 = v186 ^ (v75 != -1);
        v49 += v41;
        v44 += v41;
        v39 = v194 + 1;
        v48 = v51 + 1;
        v50 = v203;
        if ((v76 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      v39 = v50;
LABEL_23:
      if (v186)
      {
        v38 = v178;
        v77 = v180;
        if (v39 < v178)
        {
          goto LABEL_162;
        }

        if (v178 >= v39)
        {
          v37 = v177;
          goto LABEL_46;
        }

        v78 = v50 >= v51 ? v51 : v50;
        v79 = v39;
        v80 = v41 * (v78 - 1);
        v81 = v41 * v78;
        v82 = v178 * v41;
        v83 = v178;
        v84 = v79;
        do
        {
          if (v83 != --v79)
          {
            v85 = *v189;
            if (!*v189)
            {
              goto LABEL_167;
            }

            sub_1CA42BA50(v85 + v82, v183);
            v86 = v82 < v80 || v85 + v82 >= (v85 + v81);
            if (v86)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v82 != v80)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1CA42BA50(v183, v85 + v80);
            v77 = v180;
          }

          ++v83;
          v80 -= v41;
          v81 -= v41;
          v82 += v41;
        }

        while (v83 < v79);
        v37 = v177;
        v39 = v84;
      }

      else
      {
        v77 = v180;
        v37 = v177;
      }

      v38 = v178;
    }

LABEL_46:
    v87 = v189[1];
    if (v39 < v87)
    {
      if (__OFSUB__(v39, v38))
      {
        goto LABEL_159;
      }

      if (v39 - v38 < v77)
      {
        break;
      }
    }

LABEL_74:
    if (v39 < v38)
    {
      goto LABEL_158;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v194 = v39;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v164 = *(v37 + 2);
      sub_1CA2E49C0();
      v37 = v165;
    }

    v121 = *(v37 + 2);
    v122 = v121 + 1;
    if (v121 >= *(v37 + 3) >> 1)
    {
      sub_1CA2E49C0();
      v37 = v166;
    }

    *(v37 + 2) = v122;
    v123 = v37 + 32;
    v124 = &v37[16 * v121 + 32];
    v125 = v194;
    *v124 = v38;
    v124[1] = v125;
    v38 = *v179;
    if (!*v179)
    {
      goto LABEL_168;
    }

    if (v121)
    {
      while (1)
      {
        v126 = v122 - 1;
        v127 = &v123[16 * v122 - 16];
        v128 = &v37[16 * v122];
        if (v122 >= 4)
        {
          break;
        }

        if (v122 == 3)
        {
          v129 = *(v37 + 4);
          v130 = *(v37 + 5);
          v139 = __OFSUB__(v130, v129);
          v131 = v130 - v129;
          v132 = v139;
LABEL_94:
          if (v132)
          {
            goto LABEL_145;
          }

          v144 = *v128;
          v143 = *(v128 + 1);
          v145 = __OFSUB__(v143, v144);
          v146 = v143 - v144;
          v147 = v145;
          if (v145)
          {
            goto LABEL_148;
          }

          v148 = *(v127 + 1);
          v149 = v148 - *v127;
          if (__OFSUB__(v148, *v127))
          {
            goto LABEL_151;
          }

          if (__OFADD__(v146, v149))
          {
            goto LABEL_153;
          }

          if (v146 + v149 >= v131)
          {
            if (v131 < v149)
            {
              v126 = v122 - 2;
            }

            goto LABEL_116;
          }

          goto LABEL_109;
        }

        if (v122 < 2)
        {
          goto LABEL_147;
        }

        v151 = *v128;
        v150 = *(v128 + 1);
        v139 = __OFSUB__(v150, v151);
        v146 = v150 - v151;
        v147 = v139;
LABEL_109:
        if (v147)
        {
          goto LABEL_150;
        }

        v153 = *v127;
        v152 = *(v127 + 1);
        v139 = __OFSUB__(v152, v153);
        v154 = v152 - v153;
        if (v139)
        {
          goto LABEL_152;
        }

        if (v154 < v146)
        {
          goto LABEL_123;
        }

LABEL_116:
        if (v126 - 1 >= v122)
        {
          __break(1u);
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
          goto LABEL_161;
        }

        if (!*v189)
        {
          goto LABEL_165;
        }

        v158 = v37;
        v159 = &v123[16 * v126 - 16];
        v37 = *v159;
        v160 = &v123[16 * v126];
        v161 = *(v160 + 1);
        v162 = v193;
        sub_1CA432F6C(*v189 + *(v188 + 72) * *v159, *v189 + *(v188 + 72) * *v160, *v189 + *(v188 + 72) * v161, v38);
        v193 = v162;
        if (v162)
        {
          goto LABEL_138;
        }

        if (v161 < v37)
        {
          goto LABEL_140;
        }

        v163 = *(v158 + 2);
        if (v126 > v163)
        {
          goto LABEL_141;
        }

        *v159 = v37;
        *(v159 + 1) = v161;
        if (v126 >= v163)
        {
          goto LABEL_142;
        }

        v122 = v163 - 1;
        sub_1CA627628(v160 + 16, v163 - 1 - v126, &v123[16 * v126]);
        v37 = v158;
        *(v158 + 2) = v163 - 1;
        if (v163 <= 2)
        {
          goto LABEL_123;
        }
      }

      v133 = &v123[16 * v122];
      v134 = *(v133 - 8);
      v135 = *(v133 - 7);
      v139 = __OFSUB__(v135, v134);
      v136 = v135 - v134;
      if (v139)
      {
        goto LABEL_143;
      }

      v138 = *(v133 - 6);
      v137 = *(v133 - 5);
      v139 = __OFSUB__(v137, v138);
      v131 = v137 - v138;
      v132 = v139;
      if (v139)
      {
        goto LABEL_144;
      }

      v140 = *(v128 + 1);
      v141 = v140 - *v128;
      if (__OFSUB__(v140, *v128))
      {
        goto LABEL_146;
      }

      v139 = __OFADD__(v131, v141);
      v142 = v131 + v141;
      if (v139)
      {
        goto LABEL_149;
      }

      if (v142 >= v136)
      {
        v156 = *v127;
        v155 = *(v127 + 1);
        v139 = __OFSUB__(v155, v156);
        v157 = v155 - v156;
        if (v139)
        {
          goto LABEL_157;
        }

        if (v131 < v157)
        {
          v126 = v122 - 2;
        }

        goto LABEL_116;
      }

      goto LABEL_94;
    }

LABEL_123:
    v35 = v189[1];
    v36 = v194;
    if (v194 >= v35)
    {
      goto LABEL_126;
    }
  }

  v88 = v38 + v77;
  if (__OFADD__(v38, v77))
  {
    goto LABEL_160;
  }

  if (v88 >= v87)
  {
    v88 = v189[1];
  }

  if (v88 < v38)
  {
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    v37 = sub_1CA627610(v37);
LABEL_128:
    v167 = v37 + 16;
    v168 = *(v37 + 2);
    while (v168 >= 2)
    {
      if (!*v189)
      {
        goto LABEL_166;
      }

      v169 = v37;
      v37 += 16 * v168;
      v170 = *v37;
      v171 = &v167[2 * v168];
      v172 = *(v171 + 1);
      v173 = v193;
      sub_1CA432F6C(*v189 + *(v188 + 72) * *v37, *v189 + *(v188 + 72) * *v171, *v189 + *(v188 + 72) * v172, v38);
      v193 = v173;
      if (v173)
      {
        break;
      }

      if (v172 < v170)
      {
        goto LABEL_154;
      }

      if (v168 - 2 >= *v167)
      {
        goto LABEL_155;
      }

      *v37 = v170;
      *(v37 + 1) = v172;
      v174 = *v167 - v168;
      if (*v167 < v168)
      {
        goto LABEL_156;
      }

      v168 = *v167 - 1;
      sub_1CA627628(v171 + 16, v174, v171);
      *v167 = v168;
      v37 = v169;
    }

    goto LABEL_138;
  }

  if (v39 == v88)
  {
    goto LABEL_74;
  }

  v177 = v37;
  v89 = *v189;
  v90 = *(v188 + 72);
  v91 = *v189 + v90 * (v39 - 1);
  v92 = -v90;
  v178 = v38;
  v93 = v38 - v39;
  v203 = v89;
  v181 = v90;
  v94 = v89 + v39 * v90;
  v182 = v88;
LABEL_55:
  v194 = v39;
  v184 = v94;
  v185 = v93;
  v186 = v91;
  while (1)
  {
    v95 = v206;
    sub_1CA42B9A4(v94, v206);
    sub_1CA42B9A4(v91, v214);
    sub_1CA42B9A4(v95, v207);
    v96 = swift_getEnumCaseMultiPayload();
    if (v96)
    {
      if (v96 == 1)
      {
        v98 = v199;
        v97 = v200;
        (*v196)(v199, v207, v200);
        v99 = sub_1CA94A268();
        v101 = v100;
        v102 = v195;
      }

      else
      {
        v98 = v201;
        v97 = v202;
        (*v198)(v201, v207, v202);
        v99 = sub_1CA94A4B8();
        v101 = v106;
        v102 = v197;
      }

      (*v102)(v98, v97);
    }

    else
    {
      v103 = *v207;
      v104 = [*v207 localizedName];
      v99 = sub_1CA94C3A8();
      v101 = v105;
    }

    v212 = v99;
    v213 = v101;
    sub_1CA42B9A4(v214, v208);
    v107 = swift_getEnumCaseMultiPayload();
    if (v107)
    {
      if (v107 == 1)
      {
        v109 = v199;
        v108 = v200;
        (*v196)(v199, v208, v200);
        v110 = sub_1CA94A268();
        v112 = v111;
        v113 = v195;
      }

      else
      {
        v109 = v201;
        v108 = v202;
        (*v198)(v201, v208, v202);
        v110 = sub_1CA94A4B8();
        v112 = v117;
        v113 = v197;
      }

      (*v113)(v109, v108);
    }

    else
    {
      v114 = *v208;
      v115 = [*v208 localizedName];
      v110 = sub_1CA94C3A8();
      v112 = v116;
    }

    v210 = v110;
    v211 = v112;
    sub_1CA27BAF0();
    v118 = sub_1CA94D1F8();

    sub_1CA42B9FC();
    sub_1CA42B9FC();
    if (v118 != -1)
    {
LABEL_72:
      v39 = v194 + 1;
      v91 = v186 + v181;
      v93 = v185 - 1;
      v94 = v184 + v181;
      if (v194 + 1 == v182)
      {
        v39 = v182;
        v37 = v177;
        v38 = v178;
        goto LABEL_74;
      }

      goto LABEL_55;
    }

    if (!v203)
    {
      break;
    }

    v119 = v204;
    sub_1CA42BA50(v94, v204);
    swift_arrayInitWithTakeFrontToBack();
    sub_1CA42BA50(v119, v91);
    v91 += v92;
    v94 += v92;
    v86 = __CFADD__(v93++, 1);
    if (v86)
    {
      goto LABEL_72;
    }
  }

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
}

uint64_t sub_1CA42FDD4(id **a1, uint64_t a2, id **a3, uint64_t a4, uint64_t a5)
{
  v200 = a4;
  v201 = a1;
  v224 = sub_1CA94A4E8();
  v7 = *(v224 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v224);
  v223 = &v197 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = sub_1CA94A288();
  v10 = *(v222 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v222);
  v221 = &v197 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = type metadata accessor for DrawerAction.DrawerActionStorage(0);
  v13 = *(*(v238 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v238);
  v233 = (&v197 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v232 = (&v197 - v17);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v210 = (&v197 - v19);
  MEMORY[0x1EEE9AC00](v18);
  v209 = (&v197 - v20);
  v230 = type metadata accessor for DrawerAction(0);
  v211 = *(v230 - 8);
  v21 = *(v211 + 64);
  v22 = MEMORY[0x1EEE9AC00](v230);
  v204 = &v197 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v229 = &v197 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v197 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v197 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v215 = &v197 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v214 = &v197 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v198 = &v197 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v197 = &v197 - v38;
  v213 = a3;
  v39 = a3[1];
  v225 = a5;
  if (v39 < 1)
  {
    swift_retain_n();
    v41 = MEMORY[0x1E69E7CC0];
LABEL_144:
    v233 = *v201;
    if (!v233)
    {
      goto LABEL_188;
    }

    swift_retain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_146;
    }

    goto LABEL_182;
  }

  v219 = (v7 + 8);
  v220 = (v7 + 32);
  v217 = (v10 + 8);
  v218 = (v10 + 32);
  swift_retain_n();
  v40 = 0;
  v41 = MEMORY[0x1E69E7CC0];
  v226 = v28;
  v231 = v31;
  while (1)
  {
    v42 = v40;
    v43 = v40 + 1;
    i = v41;
    if (v40 + 1 >= v39)
    {
      v86 = v200;
      goto LABEL_54;
    }

    v228 = v39;
    v44 = v40;
    v45 = *v213;
    v46 = *(v211 + 72);
    v47 = v40 + 1;
    v48 = *v213 + v46 * v43;
    v49 = v197;
    sub_1CA42B9A4(v48, v197);
    v50 = v198;
    sub_1CA42B9A4(v45 + v46 * v44, v198);
    v51 = v216;
    LODWORD(v227) = sub_1CA4279D4(v49, v50);
    v216 = v51;
    if (v51)
    {
      sub_1CA42B9FC();
      sub_1CA42B9FC();

LABEL_142:
    }

    sub_1CA42B9FC();
    sub_1CA42B9FC();
    v199 = v44;
    v52 = (v44 + 2);
    v53 = v45 + v46 * (v44 + 2);
    v43 = v47;
    v41 = v46;
    v54 = v228;
    while (1)
    {
      v55 = v52;
      if (v43 + 1 >= v54)
      {
        break;
      }

      v56 = v41;
      v57 = v43;
      v58 = v214;
      sub_1CA42B9A4(v53, v214);
      v59 = v215;
      sub_1CA42B9A4(v48, v215);
      v60 = *(ActionDrawerDataSource.topHits(for:)(v58) + 16);

      v61 = *(ActionDrawerDataSource.topHits(for:)(v59) + 16);

      if (v60)
      {
        if (v61)
        {
          goto LABEL_14;
        }

        v62 = 1;
      }

      else
      {
        if (!v61)
        {
LABEL_14:
          sub_1CA42B9A4(v214, v209);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v63 = v57;
          if (EnumCaseMultiPayload)
          {
            v41 = v56;
            if (EnumCaseMultiPayload == 1)
            {
              v65 = v221;
              v66 = v222;
              (*v218)(v221, v209, v222);
              v67 = sub_1CA94A268();
              v69 = v68;
              v70 = v217;
            }

            else
            {
              v65 = v223;
              v66 = v224;
              (*v220)(v223, v209, v224);
              v67 = sub_1CA94A4B8();
              v69 = v74;
              v70 = v219;
            }

            (*v70)(v65, v66);
          }

          else
          {
            v71 = *v209;
            v72 = [*v209 localizedName];
            v67 = sub_1CA94C3A8();
            v212 = v73;

            v41 = v56;
            v69 = v212;
          }

          v236 = v67;
          v237 = v69;
          sub_1CA42B9A4(v215, v210);
          v75 = swift_getEnumCaseMultiPayload();
          if (v75)
          {
            v212 = v69;
            if (v75 == 1)
            {
              v76 = v221;
              v77 = v222;
              (*v218)(v221, v210, v222);
              v78 = sub_1CA94A268();
              v80 = v79;
              v81 = v217;
            }

            else
            {
              v76 = v223;
              v77 = v224;
              (*v220)(v223, v210, v224);
              v78 = sub_1CA94A4B8();
              v80 = v84;
              v81 = v219;
            }

            (*v81)(v76, v77);
          }

          else
          {
            v212 = *v210;
            v82 = [v212 localizedName];
            v78 = sub_1CA94C3A8();
            v80 = v83;
          }

          v234 = v78;
          v235 = v80;
          sub_1CA27BAF0();
          v85 = sub_1CA94D1D8();

          v62 = v85 == -1;
          v31 = v231;
          goto LABEL_27;
        }

        v62 = 0;
      }

      v31 = v231;
      v63 = v57;
      v41 = v56;
LABEL_27:
      sub_1CA42B9FC();
      sub_1CA42B9FC();
      v53 += v41;
      v48 += v41;
      v43 = v63 + 1;
      v52 = (v55 + 1);
      v54 = v228;
      if ((v227 & 1) != v62)
      {
        goto LABEL_30;
      }
    }

    v43 = v54;
LABEL_30:
    if ((v227 & 1) == 0)
    {
      v86 = v200;
      v28 = v226;
      goto LABEL_51;
    }

    v42 = v199;
    v86 = v200;
    if (v43 < v199)
    {
      goto LABEL_181;
    }

    if (v199 >= v43)
    {
      v28 = v226;
    }

    else
    {
      v87 = v54 >= v55 ? v55 : v54;
      v88 = v199;
      v89 = v41 * (v87 - 1);
      v90 = v43;
      v91 = v41 * v87;
      v92 = v199 * v41;
      v212 = v90;
      do
      {
        if (v88 != --v90)
        {
          v93 = *v213;
          if (!*v213)
          {
            goto LABEL_186;
          }

          sub_1CA42BA50(v93 + v92, v204);
          v94 = v92 < v89 || v93 + v92 >= v93 + v91;
          if (v94)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v92 != v89)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_1CA42BA50(v204, v93 + v89);
          v31 = v231;
        }

        ++v88;
        v89 -= v41;
        v91 -= v41;
        v92 += v41;
      }

      while (v88 < v90);
      v86 = v200;
      v28 = v226;
      v43 = v212;
LABEL_51:
      v42 = v199;
    }

    v41 = i;
LABEL_54:
    v95 = v213[1];
    v212 = v43;
    if (v43 < v95)
    {
      if (__OFSUB__(v43, v42))
      {
        goto LABEL_178;
      }

      if (v43 - v42 < v86)
      {
        break;
      }
    }

LABEL_89:
    if (v212 < v42)
    {
      goto LABEL_177;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v179 = *(v41 + 16);
      sub_1CA2E49C0();
      v41 = v180;
    }

    v128 = *(v41 + 16);
    v129 = v128 + 1;
    if (v128 >= *(v41 + 24) >> 1)
    {
      sub_1CA2E49C0();
      v41 = v181;
    }

    *(v41 + 16) = v129;
    v130 = v41 + 32;
    v131 = (v41 + 32 + 16 * v128);
    v132 = v212;
    *v131 = v42;
    v131[1] = v132;
    v228 = *v201;
    if (!v228)
    {
      goto LABEL_187;
    }

    if (v128)
    {
      v227 = v41 + 32;
      while (1)
      {
        v133 = v129 - 1;
        v134 = (v130 + 16 * (v129 - 1));
        v135 = (v41 + 16 * v129);
        if (v129 >= 4)
        {
          break;
        }

        if (v129 == 3)
        {
          v136 = *(v41 + 32);
          v137 = *(v41 + 40);
          v146 = __OFSUB__(v137, v136);
          v138 = v137 - v136;
          v139 = v146;
LABEL_110:
          if (v139)
          {
            goto LABEL_164;
          }

          v151 = *v135;
          v150 = v135[1];
          v152 = __OFSUB__(v150, v151);
          v153 = v150 - v151;
          v154 = v152;
          if (v152)
          {
            goto LABEL_167;
          }

          v155 = v134[1];
          v156 = v155 - *v134;
          if (__OFSUB__(v155, *v134))
          {
            goto LABEL_170;
          }

          if (__OFADD__(v153, v156))
          {
            goto LABEL_172;
          }

          if (v153 + v156 >= v138)
          {
            if (v138 < v156)
            {
              v133 = v129 - 2;
            }

            goto LABEL_132;
          }

          goto LABEL_125;
        }

        if (v129 < 2)
        {
          goto LABEL_166;
        }

        v158 = *v135;
        v157 = v135[1];
        v146 = __OFSUB__(v157, v158);
        v153 = v157 - v158;
        v154 = v146;
LABEL_125:
        if (v154)
        {
          goto LABEL_169;
        }

        v160 = *v134;
        v159 = v134[1];
        v146 = __OFSUB__(v159, v160);
        v161 = v159 - v160;
        if (v146)
        {
          goto LABEL_171;
        }

        if (v161 < v153)
        {
          goto LABEL_139;
        }

LABEL_132:
        if (v133 - 1 >= v129)
        {
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
          goto LABEL_180;
        }

        v165 = *v213;
        if (!*v213)
        {
          goto LABEL_184;
        }

        v166 = (v130 + 16 * (v133 - 1));
        v167 = *v166;
        v168 = v133;
        v169 = v130 + 16 * v133;
        v170 = *(v169 + 8);
        v171 = *(v211 + 72);
        v172 = (v165 + v171 * *v166);
        v173 = v165 + v171 * *v169;
        v174 = v165 + v171 * v170;
        v175 = v225;

        v176 = v172;
        v177 = v216;
        sub_1CA433B14(v176, v173, v174, v228, v175);
        v216 = v177;
        if (v177)
        {

          goto LABEL_142;
        }

        if (v170 < v167)
        {
          goto LABEL_159;
        }

        v178 = *(v41 + 16);
        if (v168 > v178)
        {
          goto LABEL_160;
        }

        *v166 = v167;
        v166[1] = v170;
        if (v168 >= v178)
        {
          goto LABEL_161;
        }

        v129 = v178 - 1;
        sub_1CA627628((v169 + 16), v178 - 1 - v168, v169);
        *(v41 + 16) = v178 - 1;
        v28 = v226;
        v130 = v227;
        v31 = v231;
        if (v178 <= 2)
        {
          goto LABEL_139;
        }
      }

      v140 = v130 + 16 * v129;
      v141 = *(v140 - 64);
      v142 = *(v140 - 56);
      v146 = __OFSUB__(v142, v141);
      v143 = v142 - v141;
      if (v146)
      {
        goto LABEL_162;
      }

      v145 = *(v140 - 48);
      v144 = *(v140 - 40);
      v146 = __OFSUB__(v144, v145);
      v138 = v144 - v145;
      v139 = v146;
      if (v146)
      {
        goto LABEL_163;
      }

      v147 = v135[1];
      v148 = v147 - *v135;
      if (__OFSUB__(v147, *v135))
      {
        goto LABEL_165;
      }

      v146 = __OFADD__(v138, v148);
      v149 = v138 + v148;
      if (v146)
      {
        goto LABEL_168;
      }

      if (v149 >= v143)
      {
        v163 = *v134;
        v162 = v134[1];
        v146 = __OFSUB__(v162, v163);
        v164 = v162 - v163;
        if (v146)
        {
          goto LABEL_176;
        }

        if (v138 < v164)
        {
          v133 = v129 - 2;
        }

        goto LABEL_132;
      }

      goto LABEL_110;
    }

LABEL_139:
    v39 = v213[1];
    v40 = v212;
    if (v212 >= v39)
    {
      goto LABEL_144;
    }
  }

  if (__OFADD__(v42, v86))
  {
    goto LABEL_179;
  }

  if (v42 + v86 >= v95)
  {
    v96 = v95;
  }

  else
  {
    v96 = (v42 + v86);
  }

  if (v96 < v42)
  {
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    v41 = sub_1CA627610(v41);
LABEL_146:
    v182 = (v41 + 16);
    v183 = *(v41 + 16);
    for (i = v41; ; v41 = i)
    {
      if (v183 < 2)
      {
      }

      v184 = *v213;
      if (!*v213)
      {
        goto LABEL_185;
      }

      v185 = (v41 + 16 * v183);
      v186 = *v185;
      v187 = v182;
      v188 = &v182[2 * v183];
      v189 = *(v188 + 1);
      v190 = *(v211 + 72);
      v191 = (v184 + v190 * *v185);
      v192 = v184 + v190 * *v188;
      v238 = v184 + v190 * v189;
      v41 = v225;

      v193 = v191;
      v194 = v216;
      sub_1CA433B14(v193, v192, v238, v233, v41);
      v216 = v194;
      if (v194)
      {
        break;
      }

      if (v189 < v186)
      {
        goto LABEL_173;
      }

      if (v183 - 2 >= *v187)
      {
        goto LABEL_174;
      }

      v182 = v187;
      *v185 = v186;
      v185[1] = v189;
      v195 = *v187 - v183;
      if (*v187 < v183)
      {
        goto LABEL_175;
      }

      v183 = *v187 - 1;
      sub_1CA627628(v188 + 16, v195, v188);
      *v187 = v183;
    }
  }

  if (v212 == v96)
  {
    goto LABEL_89;
  }

  v97 = *v213;
  v98 = *(v211 + 72);
  v99 = *v213 + v98 * (v212 - 1);
  v227 = -v98;
  v199 = v42;
  v100 = v42 - v212;
  v228 = v97;
  v202 = v98;
  v101 = v97 + v212 * v98;
  v203 = v96;
  while (2)
  {
    v206 = v101;
    v207 = v100;
    v208 = v99;
LABEL_65:
    sub_1CA42B9A4(v101, v31);
    sub_1CA42B9A4(v99, v28);
    v102 = *(ActionDrawerDataSource.topHits(for:)(v31) + 16);

    v103 = *(ActionDrawerDataSource.topHits(for:)(v28) + 16);

    if (v102)
    {
      if (!v103)
      {
        sub_1CA42B9FC();
        sub_1CA42B9FC();
        goto LABEL_82;
      }
    }

    else if (v103)
    {
      sub_1CA42B9FC();
      sub_1CA42B9FC();
LABEL_87:
      v99 = v208 + v202;
      v100 = v207 - 1;
      v101 = v206 + v202;
      if (++v212 == v203)
      {
        v212 = v203;
        v41 = i;
        v42 = v199;
        goto LABEL_89;
      }

      continue;
    }

    break;
  }

  sub_1CA42B9A4(v31, v232);
  v104 = swift_getEnumCaseMultiPayload();
  if (v104)
  {
    if (v104 == 1)
    {
      v105 = v221;
      v106 = v222;
      (*v218)(v221, v232, v222);
      v107 = sub_1CA94A268();
      v109 = v108;
      v110 = v217;
    }

    else
    {
      v105 = v223;
      v106 = v224;
      (*v220)(v223, v232, v224);
      v107 = sub_1CA94A4B8();
      v109 = v114;
      v110 = v219;
    }

    (*v110)(v105, v106);
  }

  else
  {
    v111 = *v232;
    v112 = [*v232 localizedName];
    v107 = sub_1CA94C3A8();
    v109 = v113;
  }

  v236 = v107;
  v237 = v109;
  sub_1CA42B9A4(v28, v233);
  v115 = swift_getEnumCaseMultiPayload();
  if (v115)
  {
    if (v115 == 1)
    {
      v116 = v221;
      v117 = v222;
      (*v218)(v221, v233, v222);
      v118 = sub_1CA94A268();
      v120 = v119;
      v121 = v217;
    }

    else
    {
      v116 = v223;
      v117 = v224;
      (*v220)(v223, v233, v224);
      v118 = sub_1CA94A4B8();
      v120 = v125;
      v121 = v219;
    }

    (*v121)(v116, v117);
  }

  else
  {
    v122 = *v233;
    v123 = [*v233 localizedName];
    v118 = sub_1CA94C3A8();
    v120 = v124;
  }

  v234 = v118;
  v235 = v120;
  sub_1CA27BAF0();
  v126 = sub_1CA94D1D8();

  v28 = v226;
  sub_1CA42B9FC();
  v31 = v231;
  sub_1CA42B9FC();
  if (v126 != -1)
  {
    goto LABEL_87;
  }

LABEL_82:
  if (v228)
  {
    v127 = v229;
    sub_1CA42BA50(v101, v229);
    swift_arrayInitWithTakeFrontToBack();
    sub_1CA42BA50(v127, v99);
    v99 += v227;
    v101 += v227;
    v94 = __CFADD__(v100++, 1);
    if (v94)
    {
      goto LABEL_87;
    }

    goto LABEL_65;
  }

  __break(1u);
LABEL_184:

  __break(1u);
LABEL_185:

  __break(1u);
LABEL_186:

  __break(1u);
LABEL_187:

  __break(1u);
LABEL_188:

  __break(1u);
  return result;
}

void sub_1CA431198(unint64_t *a1, uint64_t a2, unint64_t *a3, int64_t a4)
{
  v136 = a1;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4440B0, &unk_1CA981B10);
  v145 = *(v152 - 8);
  v6 = *(v145 + 64);
  v7 = MEMORY[0x1EEE9AC00](v152);
  v140 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v154 = &v132 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v132 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v150 = &v132 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v149 = &v132 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v135 = &v132 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v134 = &v132 - v22;
  v147 = a3;
  v23 = a3[1];
  if (v23 < 1)
  {
    v25 = MEMORY[0x1E69E7CC0];
LABEL_116:
    v159 = *v136;
    if (!v159)
    {
      goto LABEL_157;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v148;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_118:
      v126 = v25 + 16;
      v125 = *(v25 + 2);
      while (v125 >= 2)
      {
        if (!*v147)
        {
          goto LABEL_154;
        }

        v127 = v25;
        v25 += 16 * v125;
        v128 = *v25;
        v129 = &v126[2 * v125];
        v130 = *(v129 + 1);
        sub_1CA4347AC(*v147 + *(v145 + 72) * *v25, *v147 + *(v145 + 72) * *v129, *v147 + *(v145 + 72) * v130, v159);
        if (v24)
        {
          break;
        }

        if (v130 < v128)
        {
          goto LABEL_142;
        }

        if (v125 - 2 >= *v126)
        {
          goto LABEL_143;
        }

        *v25 = v128;
        *(v25 + 1) = v130;
        v131 = *v126 - v125;
        if (*v126 < v125)
        {
          goto LABEL_144;
        }

        v125 = *v126 - 1;
        sub_1CA627628(v129 + 16, v131, v129);
        *v126 = v125;
        v25 = v127;
      }

LABEL_126:

      return;
    }

LABEL_151:
    v25 = sub_1CA627610(v25);
    goto LABEL_118;
  }

  v133 = a4;
  v24 = 0;
  v25 = MEMORY[0x1E69E7CC0];
  v151 = v13;
  v159 = v21;
  while (1)
  {
    v26 = v24++;
    v137 = v26;
    if (v24 >= v23)
    {
      v31 = v152;
      goto LABEL_41;
    }

    v142 = v23;
    v144 = v25;
    v27 = *v147;
    v28 = *(v145 + 72);
    v29 = v134;
    sub_1CA2D9D20(*v147 + v28 * v24, v134, &unk_1EC4440B0, &unk_1CA981B10);
    v146 = v28;
    v30 = v135;
    sub_1CA2D9D20(v27 + v28 * v26, v135, &unk_1EC4440B0, &unk_1CA981B10);
    v31 = v152;
    v32 = *(v152 + 36);
    v33 = *(v29 + v32);
    v34 = *(v30 + v32);
    if (v34 >= v33)
    {
      if (v33 < v34)
      {
        LODWORD(v143) = 0;
        goto LABEL_13;
      }

      v157 = sub_1CA429604();
      v158 = v36;
      v155 = sub_1CA429604();
      v156 = v37;
      sub_1CA27BAF0();
      v38 = sub_1CA94D1F8();

      v26 = v137;

      v39 = v38 == -1;
      v31 = v152;
      v35 = v39;
    }

    else
    {
      v35 = 1;
    }

    LODWORD(v143) = v35;
LABEL_13:
    sub_1CA27080C(v30, &unk_1EC4440B0, &unk_1CA981B10);
    sub_1CA27080C(v29, &unk_1EC4440B0, &unk_1CA981B10);
    v40 = v26 + 2;
    v41 = v146 * (v26 + 2);
    v42 = v27 + v41;
    v43 = v146 * v24;
    v44 = v27 + v146 * v24;
    v25 = v144;
    do
    {
      v45 = v40;
      v46 = v24;
      v47 = v43;
      v48 = v41;
      if (v40 >= v142)
      {
        break;
      }

      v153 = v24;
      v49 = v149;
      sub_1CA2D9D20(v42, v149, &unk_1EC4440B0, &unk_1CA981B10);
      v50 = v150;
      sub_1CA2D9D20(v44, v150, &unk_1EC4440B0, &unk_1CA981B10);
      v51 = *(v31 + 36);
      v52 = *(v49 + v51);
      v53 = *(v50 + v51);
      if (v53 >= v52)
      {
        if (v52 >= v53)
        {
          v157 = sub_1CA429604();
          v158 = v55;
          v155 = sub_1CA429604();
          v156 = v56;
          sub_1CA27BAF0();
          v57 = sub_1CA94D1F8();

          v54 = v57 == -1;
        }

        else
        {
          v54 = 0;
        }
      }

      else
      {
        v54 = 1;
      }

      v25 = v144;
      sub_1CA27080C(v150, &unk_1EC4440B0, &unk_1CA981B10);
      sub_1CA27080C(v149, &unk_1EC4440B0, &unk_1CA981B10);
      v40 = v45 + 1;
      v42 += v146;
      v44 += v146;
      v46 = v153;
      v24 = v153 + 1;
      v43 = v47 + v146;
      v41 = v48 + v146;
      v39 = v143 == v54;
      v31 = v152;
    }

    while (v39);
    if (v143)
    {
      v26 = v137;
      if (v45 < v137)
      {
        goto LABEL_148;
      }

      if (v137 >= v45)
      {
        v24 = v45;
        v13 = v151;
        goto LABEL_41;
      }

      v58 = v137 * v146;
      do
      {
        if (v26 != v46)
        {
          v59 = *v147;
          if (!*v147)
          {
            goto LABEL_155;
          }

          v60 = v46;
          sub_1CA2D9CD4(v59 + v58, v140, &unk_1EC4440B0, &unk_1CA981B10);
          v61 = v58 < v47 || v59 + v58 >= v59 + v48;
          if (v61)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v58 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_1CA2D9CD4(v140, v59 + v47, &unk_1EC4440B0, &unk_1CA981B10);
          v46 = v60;
        }

        ++v26;
        v47 -= v146;
        v48 -= v146;
        v58 += v146;
        v62 = v26 < v46--;
      }

      while (v62);
      v24 = v45;
      v31 = v152;
    }

    else
    {
      v24 = v45;
    }

    v13 = v151;
    v26 = v137;
LABEL_41:
    v63 = v147[1];
    if (v24 < v63)
    {
      if (__OFSUB__(v24, v26))
      {
        goto LABEL_147;
      }

      if (v24 - v26 < v133)
      {
        break;
      }
    }

LABEL_63:
    if (v24 < v26)
    {
      goto LABEL_146;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v121 = *(v25 + 2);
      sub_1CA2E49C0();
      v25 = v122;
    }

    v79 = *(v25 + 2);
    v80 = v79 + 1;
    if (v79 >= *(v25 + 3) >> 1)
    {
      sub_1CA2E49C0();
      v25 = v123;
    }

    *(v25 + 2) = v80;
    v81 = v25 + 32;
    v82 = &v25[16 * v79 + 32];
    *v82 = v137;
    *(v82 + 1) = v24;
    v153 = *v136;
    if (!v153)
    {
      goto LABEL_156;
    }

    if (v79)
    {
      while (1)
      {
        v83 = v80 - 1;
        v84 = &v81[16 * v80 - 16];
        v85 = &v25[16 * v80];
        if (v80 >= 4)
        {
          break;
        }

        if (v80 == 3)
        {
          v86 = *(v25 + 4);
          v87 = *(v25 + 5);
          v96 = __OFSUB__(v87, v86);
          v88 = v87 - v86;
          v89 = v96;
LABEL_83:
          if (v89)
          {
            goto LABEL_133;
          }

          v101 = *v85;
          v100 = *(v85 + 1);
          v102 = __OFSUB__(v100, v101);
          v103 = v100 - v101;
          v104 = v102;
          if (v102)
          {
            goto LABEL_136;
          }

          v105 = *(v84 + 1);
          v106 = v105 - *v84;
          if (__OFSUB__(v105, *v84))
          {
            goto LABEL_139;
          }

          if (__OFADD__(v103, v106))
          {
            goto LABEL_141;
          }

          if (v103 + v106 >= v88)
          {
            if (v88 < v106)
            {
              v83 = v80 - 2;
            }

            goto LABEL_105;
          }

          goto LABEL_98;
        }

        if (v80 < 2)
        {
          goto LABEL_135;
        }

        v108 = *v85;
        v107 = *(v85 + 1);
        v96 = __OFSUB__(v107, v108);
        v103 = v107 - v108;
        v104 = v96;
LABEL_98:
        if (v104)
        {
          goto LABEL_138;
        }

        v110 = *v84;
        v109 = *(v84 + 1);
        v96 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v96)
        {
          goto LABEL_140;
        }

        if (v111 < v103)
        {
          goto LABEL_112;
        }

LABEL_105:
        if (v83 - 1 >= v80)
        {
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
LABEL_141:
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
          goto LABEL_150;
        }

        if (!*v147)
        {
          goto LABEL_153;
        }

        v115 = v25;
        v116 = &v81[16 * v83 - 16];
        v25 = *v116;
        v117 = &v81[16 * v83];
        v118 = *(v117 + 1);
        v119 = v148;
        sub_1CA4347AC(*v147 + *(v145 + 72) * *v116, *v147 + *(v145 + 72) * *v117, *v147 + *(v145 + 72) * v118, v153);
        v148 = v119;
        if (v119)
        {
          goto LABEL_126;
        }

        if (v118 < v25)
        {
          goto LABEL_128;
        }

        v120 = *(v115 + 2);
        if (v83 > v120)
        {
          goto LABEL_129;
        }

        *v116 = v25;
        *(v116 + 1) = v118;
        if (v83 >= v120)
        {
          goto LABEL_130;
        }

        v80 = v120 - 1;
        sub_1CA627628(v117 + 16, v120 - 1 - v83, &v81[16 * v83]);
        v25 = v115;
        *(v115 + 2) = v120 - 1;
        v62 = v120 > 2;
        v13 = v151;
        if (!v62)
        {
          goto LABEL_112;
        }
      }

      v90 = &v81[16 * v80];
      v91 = *(v90 - 8);
      v92 = *(v90 - 7);
      v96 = __OFSUB__(v92, v91);
      v93 = v92 - v91;
      if (v96)
      {
        goto LABEL_131;
      }

      v95 = *(v90 - 6);
      v94 = *(v90 - 5);
      v96 = __OFSUB__(v94, v95);
      v88 = v94 - v95;
      v89 = v96;
      if (v96)
      {
        goto LABEL_132;
      }

      v97 = *(v85 + 1);
      v98 = v97 - *v85;
      if (__OFSUB__(v97, *v85))
      {
        goto LABEL_134;
      }

      v96 = __OFADD__(v88, v98);
      v99 = v88 + v98;
      if (v96)
      {
        goto LABEL_137;
      }

      if (v99 >= v93)
      {
        v113 = *v84;
        v112 = *(v84 + 1);
        v96 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v96)
        {
          goto LABEL_145;
        }

        if (v88 < v114)
        {
          v83 = v80 - 2;
        }

        goto LABEL_105;
      }

      goto LABEL_83;
    }

LABEL_112:
    v23 = v147[1];
    if (v24 >= v23)
    {
      goto LABEL_116;
    }
  }

  v64 = v26 + v133;
  if (__OFADD__(v26, v133))
  {
    goto LABEL_149;
  }

  if (v64 >= v63)
  {
    v64 = v147[1];
  }

  if (v64 < v26)
  {
LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  if (v24 == v64)
  {
    goto LABEL_63;
  }

  v144 = v25;
  v65 = *(v145 + 72);
  v66 = *v147 + v65 * (v24 - 1);
  v67 = -v65;
  v68 = v26 - v24;
  v153 = *v147;
  v138 = v65;
  v139 = v64;
  v69 = v153 + v24 * v65;
LABEL_50:
  v146 = v24;
  v141 = v69;
  v142 = v68;
  v143 = v66;
  while (1)
  {
    v70 = v159;
    sub_1CA2D9D20(v69, v159, &unk_1EC4440B0, &unk_1CA981B10);
    sub_1CA2D9D20(v66, v13, &unk_1EC4440B0, &unk_1CA981B10);
    v71 = *(v31 + 36);
    v72 = *(v70 + v71);
    v73 = *&v13[v71];
    if (v73 >= v72)
    {
      if (v72 < v73)
      {
        sub_1CA27080C(v13, &unk_1EC4440B0, &unk_1CA981B10);
        sub_1CA27080C(v159, &unk_1EC4440B0, &unk_1CA981B10);
LABEL_61:
        v24 = v146 + 1;
        v66 = v143 + v138;
        v68 = v142 - 1;
        v69 = v141 + v138;
        if (v146 + 1 == v139)
        {
          v24 = v139;
          v25 = v144;
          v26 = v137;
          goto LABEL_63;
        }

        goto LABEL_50;
      }

      v74 = v159;
      v157 = sub_1CA429604();
      v158 = v75;
      v155 = sub_1CA429604();
      v156 = v76;
      sub_1CA27BAF0();
      v77 = sub_1CA94D1F8();

      v13 = v151;

      sub_1CA27080C(v13, &unk_1EC4440B0, &unk_1CA981B10);
      sub_1CA27080C(v74, &unk_1EC4440B0, &unk_1CA981B10);
      v39 = v77 == -1;
      v31 = v152;
      if (!v39)
      {
        goto LABEL_61;
      }
    }

    else
    {
      sub_1CA27080C(v13, &unk_1EC4440B0, &unk_1CA981B10);
      sub_1CA27080C(v70, &unk_1EC4440B0, &unk_1CA981B10);
    }

    if (!v153)
    {
      break;
    }

    v78 = v154;
    sub_1CA2D9CD4(v69, v154, &unk_1EC4440B0, &unk_1CA981B10);
    swift_arrayInitWithTakeFrontToBack();
    sub_1CA2D9CD4(v78, v66, &unk_1EC4440B0, &unk_1CA981B10);
    v66 += v67;
    v69 += v67;
    v61 = __CFADD__(v68++, 1);
    if (v61)
    {
      goto LABEL_61;
    }
  }

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
}

void sub_1CA431D80(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v7 = v5++;
      if (v5 < v4)
      {
        v95 = v6;
        v8 = (*a3 + 24 * v5);
        v9 = (*a3 + 24 * v7);
        v10 = 24 * v7;
        v106 = *v8;
        v108 = v8[1];
        v100 = *v9;
        v103 = v9[1];
        sub_1CA27BAF0();
        v11 = sub_1CA94D1D8();
        v12 = v7;
        v13 = v11;
        v14 = v9 + 4;
        v98 = v12;
        v15 = v12 + 2;
        while (1)
        {
          v16 = v15;
          if (++v5 >= v4)
          {
            break;
          }

          v17 = v14 + 3;
          v107 = v14[2];
          v109 = v14[3];
          v101 = *(v14 - 1);
          v104 = *v14;
          v18 = (v13 == -1) ^ (sub_1CA94D1D8() != -1);
          v15 = (v16 + 1);
          v14 = v17;
          if ((v18 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v5 = v4;
LABEL_9:
        if (v13 == -1)
        {
          v7 = v98;
          if (v5 < v98)
          {
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
            return;
          }

          if (v98 >= v5)
          {
            v6 = v95;
          }

          else
          {
            if (v4 >= v16)
            {
              v19 = v16;
            }

            else
            {
              v19 = v4;
            }

            v20 = 24 * v19;
            v21 = v5;
            v22 = v98;
            v6 = v95;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_131;
                }

                v24 = (v23 + v10);
                v25 = v23 + v20;
                v26 = *v24;
                v27 = *(v24 + 1);
                v28 = *(v25 - 24);
                v24[2] = *(v25 - 8);
                *v24 = v28;
                *(v25 - 24) = v26;
                *(v25 - 16) = v27;
              }

              ++v22;
              v20 -= 24;
              v10 += 24;
            }

            while (v22 < v21);
          }
        }

        else
        {
          v6 = v95;
          v7 = v98;
        }
      }

      v29 = a3[1];
      if (v5 < v29)
      {
        if (__OFSUB__(v5, v7))
        {
          goto LABEL_123;
        }

        if (v5 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_124;
          }

          if (v7 + a4 >= v29)
          {
            v30 = a3[1];
          }

          else
          {
            v30 = (v7 + a4);
          }

          if (v30 < v7)
          {
LABEL_125:
            __break(1u);
            goto LABEL_126;
          }

          if (v5 != v30)
          {
            v96 = v6;
            v31 = *a3;
            sub_1CA27BAF0();
            v32 = v31 + 24 * v5 - 24;
            v98 = v7;
            v33 = (v7 - v5);
            do
            {
              v34 = (v31 + 24 * v5);
              v35 = *v34;
              v36 = v34[1];
              v37 = v33;
              v38 = v32;
              do
              {
                v102 = *v38;
                v105 = *(v38 + 8);
                if (sub_1CA94D1D8() != -1)
                {
                  break;
                }

                if (!v31)
                {
                  goto LABEL_128;
                }

                v39 = *(v38 + 32);
                v41 = *(v38 + 16);
                v40 = *(v38 + 24);
                *(v38 + 24) = *v38;
                *(v38 + 40) = v41;
                *v38 = v40;
                *(v38 + 8) = v39;
                v38 -= 24;
              }

              while (!__CFADD__(v37++, 1));
              ++v5;
              v32 += 24;
              --v33;
            }

            while (v5 != v30);
            v5 = v30;
            v6 = v96;
            v7 = v98;
          }
        }
      }

      if (v5 < v7)
      {
        goto LABEL_122;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v84 = *(v6 + 2);
        sub_1CA2E49C0();
        v6 = v85;
      }

      v43 = *(v6 + 2);
      v44 = v43 + 1;
      if (v43 >= *(v6 + 3) >> 1)
      {
        sub_1CA2E49C0();
        v6 = v86;
      }

      *(v6 + 2) = v44;
      v45 = v6 + 32;
      v46 = &v6[16 * v43 + 32];
      *v46 = v7;
      *(v46 + 1) = v5;
      v98 = *a1;
      if (!*a1)
      {
        goto LABEL_132;
      }

      if (v43)
      {
        while (1)
        {
          v47 = v44 - 1;
          v48 = &v45[16 * v44 - 16];
          v49 = &v6[16 * v44];
          if (v44 >= 4)
          {
            break;
          }

          if (v44 == 3)
          {
            v50 = *(v6 + 4);
            v51 = *(v6 + 5);
            v60 = __OFSUB__(v51, v50);
            v52 = v51 - v50;
            v53 = v60;
LABEL_60:
            if (v53)
            {
              goto LABEL_109;
            }

            v65 = *v49;
            v64 = *(v49 + 1);
            v66 = __OFSUB__(v64, v65);
            v67 = v64 - v65;
            v68 = v66;
            if (v66)
            {
              goto LABEL_112;
            }

            v69 = *(v48 + 1);
            v70 = v69 - *v48;
            if (__OFSUB__(v69, *v48))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v67, v70))
            {
              goto LABEL_117;
            }

            if (v67 + v70 >= v52)
            {
              if (v52 < v70)
              {
                v47 = v44 - 2;
              }

              goto LABEL_82;
            }

            goto LABEL_75;
          }

          if (v44 < 2)
          {
            goto LABEL_111;
          }

          v72 = *v49;
          v71 = *(v49 + 1);
          v60 = __OFSUB__(v71, v72);
          v67 = v71 - v72;
          v68 = v60;
LABEL_75:
          if (v68)
          {
            goto LABEL_114;
          }

          v74 = *v48;
          v73 = *(v48 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_116;
          }

          if (v75 < v67)
          {
            goto LABEL_89;
          }

LABEL_82:
          if (v47 - 1 >= v44)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
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
LABEL_124:
            __break(1u);
            goto LABEL_125;
          }

          if (!*a3)
          {
            goto LABEL_129;
          }

          v79 = v6;
          v80 = &v45[16 * v47 - 16];
          v6 = *v80;
          v81 = &v45[16 * v47];
          v82 = *(v81 + 1);
          sub_1CA434DBC((*a3 + 24 * *v80), (*a3 + 24 * *v81), *a3 + 24 * v82, v98);
          if (v110)
          {
            goto LABEL_102;
          }

          if (v82 < v6)
          {
            goto LABEL_104;
          }

          v83 = *(v79 + 2);
          if (v47 > v83)
          {
            goto LABEL_105;
          }

          *v80 = v6;
          *(v80 + 1) = v82;
          if (v47 >= v83)
          {
            goto LABEL_106;
          }

          v44 = v83 - 1;
          sub_1CA627628(v81 + 16, v83 - 1 - v47, &v45[16 * v47]);
          v6 = v79;
          *(v79 + 2) = v83 - 1;
          if (v83 <= 2)
          {
            goto LABEL_89;
          }
        }

        v54 = &v45[16 * v44];
        v55 = *(v54 - 8);
        v56 = *(v54 - 7);
        v60 = __OFSUB__(v56, v55);
        v57 = v56 - v55;
        if (v60)
        {
          goto LABEL_107;
        }

        v59 = *(v54 - 6);
        v58 = *(v54 - 5);
        v60 = __OFSUB__(v58, v59);
        v52 = v58 - v59;
        v53 = v60;
        if (v60)
        {
          goto LABEL_108;
        }

        v61 = *(v49 + 1);
        v62 = v61 - *v49;
        if (__OFSUB__(v61, *v49))
        {
          goto LABEL_110;
        }

        v60 = __OFADD__(v52, v62);
        v63 = v52 + v62;
        if (v60)
        {
          goto LABEL_113;
        }

        if (v63 >= v57)
        {
          v77 = *v48;
          v76 = *(v48 + 1);
          v60 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v60)
          {
            goto LABEL_121;
          }

          if (v52 < v78)
          {
            v47 = v44 - 2;
          }

          goto LABEL_82;
        }

        goto LABEL_60;
      }

LABEL_89:
      v4 = a3[1];
      if (v5 >= v4)
      {
        goto LABEL_92;
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_92:
  v98 = *a1;
  if (!*a1)
  {
    goto LABEL_133;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_126:
    v6 = sub_1CA627610(v6);
  }

  v87 = v6 + 16;
  v88 = *(v6 + 2);
  while (v88 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_130;
    }

    v89 = v6;
    v6 += 16 * v88;
    v90 = *v6;
    v91 = &v87[2 * v88];
    v92 = *(v91 + 1);
    sub_1CA434DBC((*a3 + 24 * *v6), (*a3 + 24 * *v91), *a3 + 24 * v92, v98);
    if (v110)
    {
      break;
    }

    if (v92 < v90)
    {
      goto LABEL_118;
    }

    if (v88 - 2 >= *v87)
    {
      goto LABEL_119;
    }

    *v6 = v90;
    *(v6 + 1) = v92;
    v93 = *v87 - v88;
    if (*v87 < v88)
    {
      goto LABEL_120;
    }

    v88 = *v87 - 1;
    sub_1CA627628(v91 + 16, v93, v91);
    *v87 = v88;
    v6 = v89;
  }

LABEL_102:
}
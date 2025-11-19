uint64_t sub_274B5C94C(int a1, int a2, id a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, uint64_t a8)
{
  [a3 textContainerInset];
  v15 = v14;
  v16 = *(a8 + 288);
  v29.origin.x = a4;
  v29.origin.y = a5;
  v29.size.width = a6;
  v29.size.height = a7;
  MinY = CGRectGetMinY(v29);
  [a3 textContainerInset];
  v19 = v18;
  v30.origin.x = a4;
  v30.origin.y = a5;
  v30.size.width = a6;
  v30.size.height = a7;
  Height = CGRectGetHeight(v30);
  v21 = *(a8 + 280);
  [a3 bounds];
  Width = CGRectGetWidth(v31);
  [a3 textContainerInset];
  v24 = Width - v23;
  [a3 textContainerInset];
  v26 = v24 - v25 - (v16 + v16);
  if (v26 > 0.0)
  {
    v27 = [objc_opt_self() bezierPathWithRoundedRect:v15 + v16 cornerRadius:{MinY + v19 + (Height - v21) * 0.5, v26, v21, v21 * 0.5}];
    [*(a8 + 272) setFill];
    [v27 fill];
  }

  return 1;
}

id sub_274B5CB40(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = OBJC_IVAR____TtC14WorkflowUICoreP33_3E9D7953B2AD67C52890490469C980A825WFMarkdownTextDrawingView_style;
  sub_274B6826C(__src);
  memcpy(&v5[v11], __src, 0x188uLL);
  *&v5[OBJC_IVAR____TtC14WorkflowUICoreP33_3E9D7953B2AD67C52890490469C980A825WFMarkdownTextDrawingView_blockQuoteRanges] = MEMORY[0x277D84F90];
  v14.receiver = v5;
  v14.super_class = type metadata accessor for WFMarkdownTextDrawingView();
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_textContainer_, a1, a2, a3, a4, a5);

  return v12;
}

id sub_274B5CC60(void *a1)
{
  v3 = OBJC_IVAR____TtC14WorkflowUICoreP33_3E9D7953B2AD67C52890490469C980A825WFMarkdownTextDrawingView_style;
  sub_274B6826C(__src);
  memcpy(&v1[v3], __src, 0x188uLL);
  *&v1[OBJC_IVAR____TtC14WorkflowUICoreP33_3E9D7953B2AD67C52890490469C980A825WFMarkdownTextDrawingView_blockQuoteRanges] = MEMORY[0x277D84F90];
  v6.receiver = v1;
  v6.super_class = type metadata accessor for WFMarkdownTextDrawingView();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_274B5CD44(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_274B5CDE4(uint64_t a1, uint64_t a2)
{
  v75 = a2;
  v3 = sub_274BF1D34();
  v73 = *(v3 - 8);
  v74 = v3;
  MEMORY[0x28223BE20](v3);
  v72 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v70 - v6;
  MEMORY[0x28223BE20](v8);
  v71 = &v70 - v9;
  v10 = type metadata accessor for WFMarkdownStringFormatter.Block();
  MEMORY[0x28223BE20](v10);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v70 - v14);
  MEMORY[0x28223BE20](v16);
  v18 = (&v70 - v17);
  MEMORY[0x28223BE20](v19);
  v21 = (&v70 - v20);
  MEMORY[0x28223BE20](v22);
  v24 = &v70 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v70 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C310);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = (&v70 + *(v30 + 56) - v29);
  v32 = a1;
  v33 = &v70 - v29;
  sub_274B67A94(v32, &v70 - v29);
  sub_274B67A94(v75, v31);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_274B67A94(v33, v24);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v55 = v73;
        v54 = v74;
        (*(v73 + 32))(v7, v31, v74);
        v46 = sub_274BF1C94();
        v56 = *(v55 + 8);
        v56(v7, v54);
        v56(v24, v54);
        goto LABEL_33;
      }

      (*(v73 + 8))(v24, v74);
      goto LABEL_29;
    case 2u:
      sub_274B67A94(v33, v21);
      v44 = *v21;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_26;
      }

      v45 = sub_274B63778(v44, *v31);
      goto LABEL_13;
    case 3u:
      sub_274B67A94(v33, v18);
      v48 = *v18;
      v47 = v18[1];
      v49 = v18[2];
      if (swift_getEnumCaseMultiPayload() != 3)
      {

        goto LABEL_26;
      }

      v50 = v31[1];
      v51 = v31[2];
      v52 = sub_274B63878(v48, *v31);

      if ((v52 & 1) == 0)
      {

        goto LABEL_47;
      }

      v53 = sub_274B63A8C(v47, v50);

      if ((v53 & 1) == 0)
      {
        goto LABEL_47;
      }

      v45 = sub_274B63AE8(v49, v51);
LABEL_13:
      v46 = v45;

      goto LABEL_33;
    case 4u:
      sub_274B67A94(v33, v15);
      v37 = *v15;
      v36 = v15[1];
      v39 = v15[2];
      v38 = v15[3];
      if (swift_getEnumCaseMultiPayload() != 4)
      {

LABEL_26:

LABEL_29:
        sub_274AFA708(v33, &qword_28098C310);
        goto LABEL_30;
      }

      v41 = v31[2];
      v40 = v31[3];
      if (v37 == *v31 && v36 == v31[1])
      {

LABEL_36:
        if (v38)
        {
          if (!v40)
          {
            goto LABEL_48;
          }

          if (v39 == v41 && v38 == v40)
          {
          }

          else
          {
            v69 = sub_274BF5C24();

            if ((v69 & 1) == 0)
            {
              goto LABEL_49;
            }
          }
        }

        else if (v40)
        {
          goto LABEL_48;
        }

LABEL_23:
        sub_274B68210(v33);
        v46 = 1;
        return v46 & 1;
      }

      v43 = sub_274BF5C24();

      if (v43)
      {
        goto LABEL_36;
      }

LABEL_47:

LABEL_48:

LABEL_49:
      sub_274B68210(v33);
LABEL_30:
      v46 = 0;
      return v46 & 1;
    case 5u:
      sub_274B67A94(v33, v12);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v58 = v72;
        v57 = v73;
        v59 = v74;
        (*(v73 + 32))(v72, v31, v74);
        v46 = sub_274BF1C94();
        v60 = *(v57 + 8);
        v60(v58, v59);
        v60(v12, v59);
        goto LABEL_33;
      }

      (*(v73 + 8))(v12, v74);
      goto LABEL_29;
    case 6u:
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    default:
      sub_274B67A94(v33, v27);
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C2A0) + 48);
      v35 = *&v27[v34];
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v73 + 8))(v27, v74);
        goto LABEL_29;
      }

      v61 = *(v31 + v34);
      v63 = v73;
      v62 = v74;
      v64 = v71;
      (*(v73 + 32))(v71, v31, v74);
      v65 = sub_274BF1C94();
      v66 = *(v63 + 8);
      v66(v64, v62);
      v66(v27, v62);
      if ((v65 & 1) == 0)
      {
        goto LABEL_49;
      }

      v46 = v35 == v61;
LABEL_33:
      sub_274B68210(v33);
      return v46 & 1;
  }
}

BOOL sub_274B5D4E0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return (a4 & 1) != 0;
  }

  if (a4)
  {
    return 0;
  }

  return a1 == a3;
}

uint64_t sub_274B5D528(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(result + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  if (v2 >= v3)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = v9;
LABEL_19:
    v9 = (v11 - 1) & v11;
    if (*(v6 + 16))
    {
      v13 = *(*(v5 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
      result = sub_274BF5CC4();
      v14 = ~(-1 << *(v6 + 32));
      while (1)
      {
        v15 = result & v14;
        if (((*(v6 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          break;
        }

        result = v15 + 1;
        if (*(*(v6 + 48) + 8 * v15) == v13)
        {
          return 0;
        }
      }
    }
  }

  while (1)
  {
    v12 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      return 1;
    }

    v11 = *(v5 + 56 + 8 * v12);
    ++v4;
    if (v11)
    {
      v4 = v12;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_274B5D660(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_274B9107C(&v10, *(*(v1 + 48) + ((v8 << 9) | (8 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_274B5D740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v108 = a3;
  v107 = a2;
  v110 = a1;
  v112 = a4;
  v4 = sub_274BF1D34();
  v104 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v100 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v103 = &v97 - v7;
  MEMORY[0x28223BE20](v8);
  v101 = &v97 - v9;
  v134 = sub_274BF1E14();
  v10 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v12 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v97 - v14;
  MEMORY[0x28223BE20](v16);
  v121 = &v97 - v17;
  v130 = sub_274BF1DE4();
  v18 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v126 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v120 = (&v97 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C440);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v97 - v23;
  v25 = sub_274BF1E24();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274B686D0();
  sub_274BF1CC4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v25) != 1)
  {
    v123 = v12;
    v97 = v4;
    v99 = v26;
    v32 = *(v26 + 32);
    v98 = v25;
    v32(v28, v24, v25);
    result = sub_274BF1DF4();
    v34 = 0;
    v35 = *(result + 16);
    v133 = v18 + 16;
    v118 = (v10 + 88);
    v119 = v35;
    v117 = *MEMORY[0x277CC8D30];
    v115 = *MEMORY[0x277CC8D48];
    v114 = *MEMORY[0x277CC8D28];
    v113 = *MEMORY[0x277CC8D50];
    v124 = *MEMORY[0x277CC8D08];
    v128 = *MEMORY[0x277CC8D18];
    v127 = *MEMORY[0x277CC8D00];
    v136 = (v18 + 8);
    v36 = v10;
    v37 = (v10 + 8);
    v105 = *MEMORY[0x277CC8D10];
    v38 = v130;
    v39 = v120;
    v40 = v18;
    v106 = v28;
    v102 = v36;
    v111 = v18;
    v116 = result;
    v122 = (v36 + 104);
    while (1)
    {
LABEL_5:
      if (v34 == v119)
      {
        (*(v99 + 8))(v28, v98);

        goto LABEL_3;
      }

      if (v34 >= *(result + 16))
      {
        goto LABEL_42;
      }

      v41 = v28;
      v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v43 = v34;
      v129 = *(v40 + 72);
      v132 = *(v40 + 16);
      v132(v39, result + v42 + v129 * v34, v38);
      v44 = v121;
      sub_274BF1DC4();
      v45 = v134;
      v46 = (*v118)(v44, v134);
      if (v46 == v117)
      {
        break;
      }

      v28 = v41;
      if (v46 == v115)
      {

        v76 = v121;
        (*(v36 + 96))(v121, v134);
        v77 = v39;
        v78 = v38;
        v79 = *v76;
        v80 = v76[1];
        v81 = sub_274BF1DD4();
        v82 = v110;
        v83 = sub_274B615AC(v110, v81);
        MEMORY[0x28223BE20](v83);
        *(&v97 - 2) = v82;
        v84 = sub_274BDF378(sub_274B68788, (&v97 - 4), v83);

        v138 = v84;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650);
        sub_274AFA930(&qword_28098A4E0, &qword_280989650);
        v85 = sub_274BF4EB4();
        v87 = v86;

        (*v136)(v77, v78);
        (*(v99 + 8))(v41, v98);
        v88 = v112;
        *v112 = v85;
        v88[1] = v87;
        v88[2] = v79;
        v88[3] = v80;
        v75 = type metadata accessor for WFMarkdownStringFormatter.Block();
        swift_storeEnumTagMultiPayload();
        v30 = v88;
        goto LABEL_39;
      }

      if (v46 == v114)
      {

        (*v37)(v121, v134);
        sub_274B5E6A4(v110, v39, v112);
LABEL_35:
        (*v136)(v39, v38);
        return (*(v99 + 8))(v41, v98);
      }

      v34 = v43 + 1;
      if (v46 == v113)
      {
        v109 = v43 + 1;
        result = sub_274BF1DF4();
        v47 = *(result + 16);
        v131 = result;
        v137 = result + v42;
        v125 = -v47;
        v48 = -1;
        while (1)
        {
          if (v125 + v48 == -1)
          {

            v61 = v120;
            sub_274B61200(v110, v112);
            (*v136)(v61, v38);
            return (*(v99 + 8))(v106, v98);
          }

          v49 = v48 + 1;
          if (v49 >= *(v131 + 16))
          {
            break;
          }

          v135 = v49;
          v50 = v126;
          v132(v126, v137, v38);
          sub_274BF1DC4();
          v51 = *v122;
          v52 = v15;
          v53 = v37;
          v54 = v123;
          v55 = v134;
          (*v122)(v123, v128, v134);
          v56 = MEMORY[0x277C616A0](v52, v54);
          v57 = *v53;
          (*v53)(v54, v55);
          v57(v52, v55);
          if (v56 & 1) != 0 || (sub_274BF1DC4(), v51(v54, v127, v55), v58 = MEMORY[0x277C616A0](v52, v54), v57(v54, v55), v57(v52, v55), (v58))
          {

            v60 = *v136;
            v38 = v130;
            (*v136)(v50, v130);
            v15 = v52;
            v37 = v53;
            goto LABEL_24;
          }

          v137 += v129;
          sub_274BF1DC4();
          v51(v54, v124, v55);
          v59 = MEMORY[0x277C616A0](v52, v54);
          v57(v54, v55);
          v57(v52, v55);
          v60 = *v136;
          v38 = v130;
          result = (*v136)(v50, v130);
          v15 = v52;
          v37 = v53;
          v48 = v135;
          if (v59)
          {

LABEL_24:
            v39 = v120;
            v60(v120, v38);
            v28 = v106;
            v36 = v102;
            v40 = v111;
            result = v116;
            v34 = v109;
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_42:
        __break(1u);
        return result;
      }

      if (v46 == v124 || v46 == v128)
      {

        sub_274B5F5BC(v110, v112);
        goto LABEL_35;
      }

      if (v46 == v127)
      {

        v89 = sub_274BF1DD4();
        v90 = v110;
        v91 = sub_274B615AC(v110, v89);
        v92 = v100;
        v93 = sub_274BF1D24();
        MEMORY[0x28223BE20](v93);
        *(&v97 - 2) = v90;
        v94 = v103;
        sub_274BDF74C(v92, sub_274B68ABC, v91, v103);

        v95 = v104;
        v96 = v97;
        (*(v104 + 8))(v92, v97);
        (*v136)(v39, v38);
        (*(v99 + 8))(v28, v98);
        v73 = v112;
        (*(v95 + 32))(v112, v94, v96);
        v75 = type metadata accessor for WFMarkdownStringFormatter.Block();
        goto LABEL_38;
      }

      if (v46 == v105)
      {

        (*v136)(v39, v38);
        (*(v99 + 8))(v41, v98);
        v75 = type metadata accessor for WFMarkdownStringFormatter.Block();
        v73 = v112;
        goto LABEL_38;
      }

      (*v136)(v39, v38);
      (*v37)(v121, v134);
      v40 = v111;
      result = v116;
    }

    v62 = v121;
    (*(v36 + 96))(v121, v45);
    v63 = *v62;
    v64 = sub_274BF1DD4();
    v65 = v110;
    v66 = sub_274B615AC(v110, v64);
    v67 = v103;
    v68 = sub_274BF1D24();
    MEMORY[0x28223BE20](v68);
    *(&v97 - 2) = v65;
    v69 = v101;
    sub_274BDF74C(v67, sub_274B687A8, v66, v101);

    v70 = v104;
    v71 = v97;
    (*(v104 + 8))(v67, v97);
    (*v136)(v39, v38);
    (*(v99 + 8))(v41, v98);
    v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C2A0) + 48);
    v73 = v112;
    (*(v70 + 32))(v112, v69, v71);
    v74 = 2;
    if (v63 != 2)
    {
      v74 = 3;
    }

    if (v63 == 1)
    {
      v74 = 1;
    }

    *(v73 + v72) = v74;
    v75 = type metadata accessor for WFMarkdownStringFormatter.Block();
LABEL_38:
    swift_storeEnumTagMultiPayload();
    v30 = v73;
LABEL_39:
    v31 = 0;
    v29 = v75;
    return __swift_storeEnumTagSinglePayload(v30, v31, 1, v29);
  }

  sub_274AFA708(v24, &qword_28098C440);
LABEL_3:
  v29 = type metadata accessor for WFMarkdownStringFormatter.Block();
  v30 = v112;
  v31 = 1;
  return __swift_storeEnumTagSinglePayload(v30, v31, 1, v29);
}

uint64_t sub_274B5E6A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v87 = a3;
  v126 = sub_274BF1E14();
  v5 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v120 = (&v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v125 = &v87 - v8;
  MEMORY[0x28223BE20](v9);
  v124 = &v87 - v10;
  v132 = sub_274BF1DE4();
  v11 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v119 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v123 = (&v87 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C440);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v87 - v16;
  v18 = sub_274BF1E24();
  v128 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v112 = (&v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  i = sub_274BF1B34();
  v131 = *(i - 8);
  MEMORY[0x28223BE20](i);
  v22 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_274BF1BD4();
  MEMORY[0x28223BE20](v110);
  v109 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_274BF1E44();
  v24 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v107 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C388);
  MEMORY[0x28223BE20](v106);
  v105 = &v87 - v26;
  v116 = sub_274BF1CB4();
  v27 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v104 = &v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_274BF1DD4();
  v111 = a1;
  v30 = sub_274B615AC(a1, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650);
  v134 = sub_274BF4E14();
  v103 = *(v30 + 16);
  if (v103)
  {
    v102 = v22;
    v31 = 0;
    v101 = v30 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v100 = v27 + 16;
    v99 = (v24 + 8);
    v98 = (v131 + 8);
    v97 = v27 + 8;
    v93 = (v128 + 32);
    v131 = v11 + 16;
    v122 = *MEMORY[0x277CC8D20];
    v121 = (v5 + 104);
    v129 = (v5 + 8);
    v130 = v11 + 8;
    v89 = (v128 + 8);
    v118 = (v5 + 88);
    v117 = *MEMORY[0x277CC8D40];
    v88 = (v5 + 96);
    v94 = MEMORY[0x277D84F90];
    v92 = v17;
    v91 = v18;
    v90 = i;
    v114 = v27;
    v96 = v30;
    while (v31 < *(v30 + 16))
    {
      v32 = *(v27 + 72);
      v115 = v31;
      v33 = v104;
      (*(v27 + 16))(v104, v101 + v32 * v31, v116);
      v34 = v105;
      sub_274BF1CA4();
      sub_274AFA930(&qword_28098C3C0, &qword_28098C388);
      v35 = v107;
      sub_274BF1D74();
      sub_274AFA708(v34, &qword_28098C388);
      sub_274BF1E34();
      v36 = v35;
      v27 = v114;
      (*v99)(v36, v108);
      sub_274B68818(&qword_28098C420, MEMORY[0x277CC8B30]);
      v37 = sub_274BF50C4();
      v24 = v38;
      v133[0] = v37;
      v133[1] = v38;
      v39 = v102;
      sub_274BF1B14();
      sub_274ADDF6C();
      v113 = sub_274BF5774();
      v41 = v40;
      (*v98)(v39, i);

      sub_274B686D0();
      a2 = v33;
      sub_274BF1CC4();
      (*(v27 + 8))(v33, v116);
      if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
      {

        sub_274AFA708(v17, &qword_28098C440);
        v30 = v96;
        v42 = v115;
      }

      else
      {
        v95 = v41;
        a2 = v112;
        (*v93)(v112, v17, v18);
        v43 = sub_274BF1DF4();
        v44 = 0;
        v127 = *(v43 + 16);
        v128 = v43;
        while (v127 != v44)
        {
          if (v44 >= *(v128 + 16))
          {
            __break(1u);
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

          a2 = v123;
          i = v132;
          (*(v11 + 16))(v123, v128 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v44++, v132);
          v45 = v124;
          sub_274BF1DC4();
          v46 = v125;
          v47 = v11;
          v48 = v126;
          (*v121)(v125, v122, v126);
          v49 = MEMORY[0x277C616A0](v45, v46);
          v24 = v129;
          v50 = *v129;
          (*v129)(v46, v48);
          v51 = v48;
          v11 = v47;
          v50(v45, v51);
          (*(v47 + 8))(a2, i);
          if (v49)
          {

            v52 = v94;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_274BBAD94();
              v52 = v68;
            }

            v17 = v92;
            v18 = v91;
            i = v90;
            v30 = v96;
            v42 = v115;
            v53 = v95;
            v24 = *(v52 + 16);
            a2 = (v24 + 1);
            if (v24 >= *(v52 + 24) >> 1)
            {
              sub_274BBAD94();
              v94 = v69;
            }

            else
            {
              v94 = v52;
            }

            v27 = v114;
            (*v89)(v112, v18);
            v54 = v94;
            *(v94 + 16) = a2;
            v55 = v54 + 16 * v24;
            *(v55 + 32) = v113;
            *(v55 + 40) = v53;
            goto LABEL_28;
          }
        }

        v24 = sub_274BF1DF4();
        v56 = 0;
        v57 = *(v24 + 16);
        a2 = v120;
        for (i = v126; ; (*v129)(a2, i))
        {
          if (v57 == v56)
          {

            v17 = v92;
            v18 = v91;
            i = v90;
            v27 = v114;
            v30 = v96;
            v42 = v115;
            goto LABEL_27;
          }

          if (v56 >= *(v24 + 16))
          {
            goto LABEL_48;
          }

          v58 = v119;
          v59 = v132;
          (*(v11 + 16))(v119, v24 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v56, v132);
          sub_274BF1DC4();
          a2 = v120;
          (*(v11 + 8))(v58, v59);
          v60 = (*v118)(a2, i);
          if (v60 == v117)
          {
            break;
          }

          ++v56;
        }

        (*v88)(a2, i);
        v61 = *a2;
        v62 = v134;
        if (sub_274B06A2C(v61, v134))
        {
        }

        else
        {
          swift_isUniquelyReferenced_nonNull_native();
          v133[0] = v62;
          sub_274B318A0();
          v134 = v133[0];
        }

        v17 = v92;
        v18 = v91;
        i = v90;
        v27 = v114;
        v30 = v96;
        v42 = v115;
        v63 = v95;
        a2 = &v134;
        v24 = sub_274B6238C(v133, v61);
        if (*v64)
        {
          a2 = v64;
          sub_274B478A0();
          v65 = *a2;
          v128 = v24;
          v24 = *(v65 + 16);
          sub_274B03ED8(v24);
          v66 = *a2;
          *(v66 + 16) = v24 + 1;
          v67 = v66 + 16 * v24;
          *(v67 + 32) = v113;
          *(v67 + 40) = v63;
          (v128)(v133, 0);
        }

        else
        {

          (v24)(v133, 0);
        }

LABEL_27:
        (*v89)(v112, v18);
      }

LABEL_28:
      v31 = v42 + 1;
      if (v31 == v103)
      {

        i = v94;
        goto LABEL_32;
      }
    }

LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  i = MEMORY[0x277D84F90];
LABEL_32:
  if (*(i + 16))
  {
    sub_274BBB360();
    v71 = v70;
    v24 = *(v70 + 16);
    a2 = (v24 + 1);
    if (v24 < *(v70 + 24) >> 1)
    {
LABEL_34:
      *(v71 + 16) = a2;
      *(v71 + 8 * v24 + 32) = i;
      goto LABEL_36;
    }

LABEL_50:
    sub_274BBB360();
    v71 = v86;
    goto LABEL_34;
  }

  v71 = MEMORY[0x277D84F90];
LABEL_36:
  v72 = v134;

  v74 = sub_274B624B4(v73);

  v75 = *(v74 + 16);
  if (v75)
  {
    v76 = 32;
    do
    {
      if (*(v72 + 16))
      {
        v77 = sub_274BDA8E8(*(v74 + v76));
        if (v78)
        {
          v79 = *(*(v72 + 56) + 8 * v77);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_274BBB360();
            v71 = v81;
          }

          v80 = *(v71 + 16);
          if (v80 >= *(v71 + 24) >> 1)
          {
            sub_274BBB360();
            v71 = v82;
          }

          *(v71 + 16) = v80 + 1;
          *(v71 + 8 * v80 + 32) = v79;
        }
      }

      v76 += 8;
      --v75;
    }

    while (v75);
  }

  v83 = v87;
  *v87 = v71;
  v84 = type metadata accessor for WFMarkdownStringFormatter.Block();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v83, 0, 1, v84);
}

uint64_t sub_274B5F5BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v212 = a1;
  v199 = a2;
  v2 = sub_274BF1DA4();
  MEMORY[0x28223BE20](v2 - 8);
  v191 = &v187 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = sub_274BF1D04();
  v188 = *(v227 - 8);
  MEMORY[0x28223BE20](v227);
  v226 = &v187 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v225 = &v187 - v6;
  v224 = sub_274BF1BD4();
  v187 = *(v224 - 8);
  MEMORY[0x28223BE20](v224);
  v223 = &v187 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_274BF1E44();
  MEMORY[0x28223BE20](v8 - 8);
  v195 = &v187 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C388);
  MEMORY[0x28223BE20](v194);
  v193 = &v187 - v10;
  v233 = sub_274BF1D34();
  v11 = *(v233 - 8);
  MEMORY[0x28223BE20](v233);
  v198 = &v187 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v190 = &v187 - v14;
  MEMORY[0x28223BE20](v15);
  v222 = &v187 - v16;
  MEMORY[0x28223BE20](v17);
  v197 = &v187 - v18;
  MEMORY[0x28223BE20](v19);
  v232 = &v187 - v20;
  MEMORY[0x28223BE20](v21);
  v228 = &v187 - v22;
  MEMORY[0x28223BE20](v23);
  v204 = &v187 - v24;
  MEMORY[0x28223BE20](v25);
  v211 = &v187 - v26;
  MEMORY[0x28223BE20](v27);
  v196 = &v187 - v28;
  MEMORY[0x28223BE20](v29);
  v205 = &v187 - v30;
  v245 = sub_274BF1E14();
  v31 = *(v245 - 8);
  MEMORY[0x28223BE20](v245);
  v33 = &v187 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = sub_274BF1DE4();
  v34 = *(v247 - 8);
  MEMORY[0x28223BE20](v247);
  v36 = &v187 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C440);
  MEMORY[0x28223BE20](v37 - 8);
  v207 = &v187 - v38;
  v219 = sub_274BF1E24();
  v39 = *(v219 - 8);
  MEMORY[0x28223BE20](v219);
  v213 = &v187 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_274BF1CB4();
  v41 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v221 = &v187 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C478);
  MEMORY[0x28223BE20](v218);
  v206 = (&v187 - v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C480);
  MEMORY[0x28223BE20](v44 - 8);
  v217 = &v187 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v216 = (&v187 - v47);
  v48 = sub_274BF1DD4();
  v49 = sub_274B615AC(v212, v48);
  v50 = *(v49 + 16);
  if (!v50)
  {
LABEL_52:
    v113 = type metadata accessor for WFMarkdownStringFormatter.Block();
    __swift_storeEnumTagSinglePayload(v199, 1, 1, v113);
  }

  v203 = v49;
  v215 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C488);
  v51 = sub_274BF4E14();
  v52 = 0;
  v253 = v51;
  v202 = v41 + 16;
  v214 = (v41 + 32);
  v201 = (v39 + 32);
  v244 = (v34 + 16);
  v243 = (v31 + 88);
  LODWORD(v242) = *MEMORY[0x277CC8D38];
  v246 = v34;
  v53 = (v34 + 8);
  v234 = (v31 + 8);
  LODWORD(v239) = *MEMORY[0x277CC8D08];
  v54 = v215;
  v238 = (v31 + 96);
  v230 = (v11 + 16);
  LODWORD(v235) = *MEMORY[0x277CC8D18];
  v229 = (v11 + 32);
  v231 = (v11 + 8);
  v189 = (v39 + 8);
  v209 = (v41 + 8);
  v200 = v11;
  v55 = v207;
  v56 = v208;
  v210 = v41;
LABEL_3:
  while (2)
  {
    if (v52 == v54)
    {
      v57 = v56;
      v58 = 1;
      v220 = v54;
      v59 = v218;
      v60 = v217;
    }

    else
    {
      if ((v52 & 0x8000000000000000) != 0)
      {
        goto LABEL_103;
      }

      if (v52 >= *(v203 + 16))
      {
        goto LABEL_104;
      }

      v61 = v56;
      v62 = v52 + 1;
      v63 = v203 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v52;
      v59 = v218;
      v64 = *(v218 + 48);
      v65 = v206;
      *v206 = v52;
      v57 = v61;
      (*(v41 + 16))(v65 + v64, v63);
      v60 = v217;
      sub_274B21EA8(v65, v217, &qword_28098C478);
      v58 = 0;
      v220 = v62;
    }

    __swift_storeEnumTagSinglePayload(v60, v58, 1, v59);
    v66 = v60;
    v67 = v216;
    sub_274B21EA8(v66, v216, &qword_28098C480);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v67, 1, v59);
    v69 = v221;
    if (EnumTagSinglePayload != 1)
    {
      v70 = *v67;
      (*v214)(v221, v67 + *(v59 + 48), v57);
      sub_274B686D0();
      sub_274BF1CC4();
      v11 = v219;
      if (__swift_getEnumTagSinglePayload(v55, 1, v219) == 1)
      {
        (*v209)(v69, v57);
        sub_274AFA708(v55, &qword_28098C440);
        v41 = v210;
        v54 = v215;
        v52 = v220;
        v56 = v57;
        continue;
      }

      v192 = v70;
      (*v201)(v213, v55, v11);
      v71 = sub_274BF1DF4();
      v72 = v71;
      v73 = *(v71 + 16);
      if (!v73)
      {

        v94 = 0;
        v95 = 0;
        v76 = 1;
        v237 = MEMORY[0x277D84F90];
        goto LABEL_34;
      }

      v236 = 0;
      v240 = 0;
      v241 = 0;
      v74 = v246;
      v75 = v71 + ((*(v246 + 80) + 32) & ~*(v246 + 80));
      v76 = 1;
      v11 = 1;
      v237 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v73 > *(v72 + 16))
        {
          __break(1u);
          goto LABEL_52;
        }

        --v73;
        v74[2](v36, v75 + v74[9] * v73, v247);
        sub_274BF1DC4();
        v77 = v245;
        v78 = (*v243)(v33, v245);
        if (v78 == v242)
        {
          v79 = v75;
          v80 = v36;
          v81 = v72;
          v82 = v33;
          v83 = v53;
          (*v238)(v82, v77);
          v84 = v82;
          v85 = *v82;
          v240 = *v82;
          if (v11)
          {
            v76 = 0;
            v11 = 1;
            v53 = v83;
          }

          else
          {
            v248 = v241;
            v249 = sub_274BF5BE4();
            v250 = v86;
            MEMORY[0x277C648E0](46, 0xE100000000000000);
            v248 = v85;
            v87 = sub_274BF5BE4();
            MEMORY[0x277C648E0](v87);

            v88 = v249;
            v89 = v250;
            v90 = v237;
            v91 = *(v237 + 16);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v251 = v90;
            if (!isUniquelyReferenced_nonNull_native || v91 >= *(v90 + 24) >> 1)
            {
              sub_274BBAD94();
              v237 = v93;
              v251 = v93;
            }

            v53 = v83;
            sub_274BDAF60(0, 0, 1, v88, v89);
            v76 = 0;
            v11 = 0;
          }

          v33 = v84;
          v72 = v81;
          v36 = v80;
          v75 = v79;
        }

        else if (v78 == v239)
        {
          v241 = sub_274BF1DD4();
          v11 = 0;
          v236 = 1;
        }

        else
        {
          if (v78 != v235)
          {
            (*v53)(v36, v247);
            (*v234)(v33, v77);
            goto LABEL_25;
          }

          v241 = sub_274BF1DD4();
          v236 = 0;
          v11 = 0;
        }

        (*v53)(v36, v247);
LABEL_25:
        v74 = v246;
        if (!v73)
        {

          if (v236)
          {
            v94 = 256;
          }

          else
          {
            v94 = 0;
          }

          v95 = v240;
LABEL_34:
          if (!*(v237 + 16))
          {
            (*v189)(v213, v219);
            v56 = v208;
            (*v209)(v221, v208);

LABEL_48:
            v55 = v207;
            goto LABEL_49;
          }

          v236 = v94;
          v240 = v95;
          v249 = v237;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650);
          sub_274AFA930(&qword_28098A4E0, &qword_280989650);
          v241 = sub_274BF4EB4();
          v97 = v96;

          v98 = v193;
          sub_274BF1CA4();
          sub_274AFA930(&qword_28098C3C0, &qword_28098C388);
          sub_274BF1D74();
          sub_274AFA708(v98, &qword_28098C388);
          sub_274BF1D84();
          v99 = v253;
          if (*(v253 + 16))
          {
            v11 = v241;
            sub_274BDA830(v241, v97);
            v100 = v221;
            v101 = v97;
            if ((v102 & 1) == 0)
            {
              v99 = v253;
              goto LABEL_40;
            }
          }

          else
          {
            v100 = v221;
            v101 = v97;
            v11 = v241;
LABEL_40:
            swift_isUniquelyReferenced_nonNull_native();
            v249 = v99;
            sub_274B3199C(MEMORY[0x277D84F90], v192, v240, v236 | v76 & 1, v11, v101);
            v253 = v249;
          }

          v104 = sub_274B623F0(&v249, v11, v101);
          if (!*v103)
          {
            (v104)(&v249, 0);

            (*v231)(v205, v233);
            (*v189)(v213, v219);
            v56 = v208;
            (*v209)(v100, v208);
            goto LABEL_48;
          }

          v105 = v103;
          (*v230)(v196, v205, v233);
          v106 = *v105;
          v107 = swift_isUniquelyReferenced_nonNull_native();
          *v105 = v106;
          if ((v107 & 1) == 0)
          {
            sub_274BBB470();
            v106 = v111;
            *v105 = v111;
          }

          v108 = *(v106 + 16);
          if (v108 >= *(v106 + 24) >> 1)
          {
            sub_274BBB470();
            v106 = v112;
            *v105 = v112;
          }

          v55 = v207;
          *(v106 + 16) = v108 + 1;
          v11 = v200;
          v109 = v106 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v108;
          v110 = v233;
          (*(v200 + 32))(v109, v196, v233);
          (v104)(&v249, 0);

          (*(v11 + 8))(v205, v110);
          (*v189)(v213, v219);
          v56 = v208;
          (*v209)(v100, v208);
LABEL_49:
          v41 = v210;
          v54 = v215;
          v52 = v220;
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v249 = sub_274BBC790(v115);
  v11 = 0;
  sub_274B62A8C(&v249, &v253);

  v116 = v249;
  v117 = *(v249 + 16);
  v118 = v228;
  if (v117)
  {
    v119 = 0;
    v120 = v253;
    v121 = v249 + 32;
    v244 = (v188 + 8);
    v242 = MEMORY[0x277D84F90];
    v243 = (v187 + 8);
    v241 = MEMORY[0x277D84F90];
    v239 = MEMORY[0x277D84F90];
    v220 = v249;
    v219 = v117;
    v218 = v253;
    v217 = v249 + 32;
    while (v119 < *(v116 + 16))
    {
      if (*(v120 + 16))
      {
        v122 = (v121 + 16 * v119);
        v124 = *v122;
        v123 = v122[1];

        v240 = v124;
        v125 = sub_274BDA830(v124, v123);
        if (v126)
        {
          v235 = v123;
          v238 = v119;
          v127 = *(v120 + 56) + 32 * v125;
          v128 = *v127;
          v234 = *(v127 + 16);
          LODWORD(v221) = *(v127 + 24);
          v236 = *(v127 + 25);

          v129 = v204;
          sub_274BF1D24();
          v246 = *v230;
          v246(v118, v129, v233);
          v130 = *(v128 + 16);
          v237 = v128;
          if (v130)
          {
            v131 = v128 + ((*(v200 + 80) + 32) & ~*(v200 + 80));
            v245 = *(v200 + 72);
            do
            {
              v247 = v130;
              v132 = v233;
              v246(v232, v131, v233);
              v133 = v223;
              sub_274BF1BC4();
              sub_274B68818(&qword_28098C490, MEMORY[0x277CC8B30]);
              v134 = v225;
              v135 = v224;
              sub_274BF5344();
              v136 = v132;
              v137 = v226;
              sub_274BF5374();
              sub_274B68818(&qword_28098C498, MEMORY[0x277CC8C20]);
              v138 = v227;
              v139 = sub_274BF4EF4();
              v140 = *v244;
              (*v244)(v137, v138);
              v140(v134, v138);
              (*v243)(v133, v135);
              v141 = v229;
              if (v139)
              {
                v142 = *v231;
                v118 = v228;
                (*v231)(v228, v136);
                v143 = *v141;
                v144 = v222;
                (*v141)(v222, v232, v136);
              }

              else
              {
                v144 = v222;
                v118 = v228;
                v145 = v232;
                sub_274BF1C34();
                v142 = *v231;
                (*v231)(v145, v136);
                v142(v118, v136);
                v143 = *v141;
              }

              v146 = v247;
              v143(v118, v144, v233);
              v131 += v245;
              v130 = v146 - 1;
            }

            while (v130);
          }

          else
          {
            v142 = *v231;
          }

          v147 = v233;
          v142(v204, v233);
          v148 = *v229;
          (*v229)(v211, v118, v147);
          v249 = v240;
          v250 = v235;
          v251 = 15917;
          v252 = 0xE200000000000000;
          sub_274ADDF6C();
          v149 = sub_274BF5764();

          v150 = *(v149 + 16);

          v151 = v239;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_274BBB448(0, *(v151 + 16) + 1, 1, v151);
            v151 = v172;
          }

          v152 = v197;
          v154 = *(v151 + 16);
          v153 = *(v151 + 24);
          if (v154 >= v153 >> 1)
          {
            sub_274BBB448(v153 > 1, v154 + 1, 1, v151);
            v151 = v173;
          }

          *(v151 + 16) = v154 + 1;
          v239 = v151;
          *(v151 + 8 * v154 + 32) = v150 - 1;
          sub_274BF50A4();
          if (v150 <= 1)
          {

            v157 = v246;
            v246(v152, v211, v233);
            v156 = v198;
            v157(v198, v152, v233);
          }

          else
          {
            sub_274BF1D94();
            v155 = v190;
            sub_274BF1D44();
            sub_274BF1C34();
            v142(v155, v233);
            v156 = v198;
            v246(v198, v152, v233);
          }

          v158 = v241;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_274BBB470();
            v158 = v174;
          }

          v160 = *(v158 + 16);
          v159 = *(v158 + 24);
          v241 = v158;
          if (v160 >= v159 >> 1)
          {
            sub_274BBB470();
            v241 = v175;
          }

          v161 = v241;
          *(v241 + 16) = v160 + 1;
          v148((v161 + ((*(v200 + 80) + 32) & ~*(v200 + 80)) + *(v200 + 72) * v160), v156, v233);

          if (v236)
          {
            if (v221)
            {
              v11 = 1;
            }

            else
            {
              v11 = v234;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_274BBB420(0, *(v242 + 16) + 1, 1, v242);
              v242 = v176;
            }

            v163 = *(v242 + 16);
            v162 = *(v242 + 24);
            if (v163 >= v162 >> 1)
            {
              sub_274BBB420(v162 > 1, v163 + 1, 1, v242);
              v242 = v177;
            }

            v164 = v233;
            v142(v152, v233);
            v142(v211, v164);
            v165 = v242;
            *(v242 + 16) = v163 + 1;
            v166 = v165 + 16 * v163;
            *(v166 + 32) = v11;
            *(v166 + 40) = 0;
            v118 = v228;
            v116 = v220;
            v117 = v219;
            v119 = v238;
          }

          else
          {
            v167 = swift_isUniquelyReferenced_nonNull_native();
            v119 = v238;
            if ((v167 & 1) == 0)
            {
              sub_274BBB420(0, *(v242 + 16) + 1, 1, v242);
              v242 = v178;
            }

            v11 = *(v242 + 16);
            v168 = *(v242 + 24);
            if (v11 >= v168 >> 1)
            {
              sub_274BBB420(v168 > 1, v11 + 1, 1, v242);
              v242 = v179;
            }

            v169 = v233;
            v142(v152, v233);
            v142(v211, v169);
            v170 = v242;
            *(v242 + 16) = v11 + 1;
            v171 = v170 + 16 * v11;
            *(v171 + 32) = 0;
            *(v171 + 40) = 1;
            v118 = v228;
            v116 = v220;
            v117 = v219;
          }

          v120 = v218;
          v121 = v217;
        }

        else
        {
        }
      }

      if (++v119 == v117)
      {

        v180 = v241;
        v181 = v239;
        goto LABEL_98;
      }
    }

    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);

    __break(1u);
  }

  else
  {

    v181 = MEMORY[0x277D84F90];
    v180 = MEMORY[0x277D84F90];
    v242 = MEMORY[0x277D84F90];
LABEL_98:
    v182 = v199;
    if (*(v180 + 16))
    {
      *v199 = v180;
      v182[1] = v181;
      v182[2] = v242;
      v183 = type metadata accessor for WFMarkdownStringFormatter.Block();
      swift_storeEnumTagMultiPayload();
      v184 = v182;
      v185 = 0;
      v186 = v183;
    }

    else
    {

      v186 = type metadata accessor for WFMarkdownStringFormatter.Block();
      v184 = v182;
      v185 = 1;
    }

    __swift_storeEnumTagSinglePayload(v184, v185, 1, v186);
  }

  return result;
}

uint64_t sub_274B61200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_274BF1B34();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_274BF1BD4();
  MEMORY[0x28223BE20](v6);
  v7 = sub_274BF1D34();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  v14 = sub_274BF1DD4();
  v15 = sub_274B615AC(a1, v14);
  sub_274BF1D24();
  v35 = a1;
  sub_274BDF74C(v10, sub_274B68ABC, v15, v13);

  v31 = v8;
  v16 = *(v8 + 8);
  v17 = v10;
  v18 = v7;
  v16(v17, v7);
  sub_274BF1BC4();
  sub_274B68818(&qword_28098C420, MEMORY[0x277CC8B30]);
  v36 = sub_274BF50C4();
  v37 = v19;
  sub_274BF1B14();
  sub_274ADDF6C();
  v20 = sub_274BF5774();
  v22 = v21;
  (*(v32 + 8))(v5, v33);

  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    v24 = v34;
    v25 = sub_274B620D0(v20, v22);

    if (v25)
    {
      v16(v13, v18);
    }

    else
    {
      (*(v31 + 32))(v24, v13, v18);
    }

    v26 = type metadata accessor for WFMarkdownStringFormatter.Block();
    swift_storeEnumTagMultiPayload();
    v28 = v24;
    v29 = 0;
    v27 = v26;
  }

  else
  {
    v16(v13, v7);

    v27 = type metadata accessor for WFMarkdownStringFormatter.Block();
    v28 = v34;
    v29 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v28, v29, 1, v27);
}

uint64_t sub_274B615AC(uint64_t a1, uint64_t a2)
{
  v78 = a2;
  v2 = sub_274BF1DE4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C440);
  MEMORY[0x28223BE20](v6 - 8);
  v68 = &v52 - v7;
  v77 = sub_274BF1E24();
  v63 = *(v77 - 8);
  MEMORY[0x28223BE20](v77 - 8);
  v66 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C4A0);
  MEMORY[0x28223BE20](v9 - 8);
  v65 = &v52 - v10;
  v74 = sub_274BF1CD4();
  v69 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_274BF1CB4();
  v12 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v54 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v75 = &v52 - v15;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C390) - 8;
  MEMORY[0x28223BE20](v70);
  v17 = &v52 - v16;
  v18 = sub_274BF1CE4();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v52 - v23;
  sub_274BF1CF4();
  v56 = v19;
  v25 = *(v19 + 16);
  v55 = v24;
  v25(v21, v24, v18);
  v26 = MEMORY[0x277CC8C08];
  sub_274B68818(&qword_28098C4A8, MEMORY[0x277CC8C08]);
  v71 = v17;
  v72 = v18;
  sub_274BF50E4();
  v70 = *(v70 + 44);
  v27 = sub_274B68818(&qword_28098C3A8, v26);
  ++v69;
  v67 = (v12 + 16);
  v62 = (v63 + 4);
  v61 = v3 + 16;
  v60 = v3 + 8;
  v59 = v63 + 1;
  v58 = (v12 + 32);
  v57 = MEMORY[0x277D84F90];
  v53 = v12;
  v63 = (v12 + 8);
  v64 = v27;
LABEL_2:
  v28 = v71;
  for (i = v72; ; i = v72)
  {
    v30 = v73;
    sub_274BF5374();
    sub_274B68818(&qword_28098C3B0, MEMORY[0x277CC8BF8]);
    v31 = v74;
    v32 = sub_274BF4EF4();
    (*v69)(v30, v31);
    if (v32)
    {
      break;
    }

    v33 = sub_274BF5414();
    v35 = v75;
    v34 = v76;
    (*v67)(v75);
    v33(v79, 0);
    sub_274BF5384();
    sub_274B686D0();
    v36 = v68;
    sub_274BF1CC4();
    v37 = v77;
    if (__swift_getEnumTagSinglePayload(v36, 1, v77) != 1)
    {
      (*v62)(v66, v36, v37);
      result = sub_274BF1DF4();
      v40 = result;
      v41 = 0;
      v42 = *(result + 16);
      while (v42 != v41)
      {
        if (v41 >= *(v40 + 16))
        {
          __break(1u);
          return result;
        }

        (*(v3 + 16))(v5, v40 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v41++, v2);
        v43 = sub_274BF1DD4();
        result = (*(v3 + 8))(v5, v2);
        if (v43 == v78)
        {
          (*v59)(v66, v77);

          v38 = v65;
          v44 = v76;
          (*v58)(v65, v75, v76);
          v45 = 0;
          goto LABEL_12;
        }
      }

      (*v59)(v66, v77);

      v44 = v76;
      (*v63)(v75, v76);
      v45 = 1;
      v38 = v65;
LABEL_12:
      __swift_storeEnumTagSinglePayload(v38, v45, 1, v44);
      if (__swift_getEnumTagSinglePayload(v38, 1, v44) == 1)
      {
        goto LABEL_13;
      }

      v46 = *v58;
      (*v58)(v54, v38, v44);
      v47 = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274BBB270();
        v47 = v50;
      }

      v48 = *(v47 + 16);
      if (v48 >= *(v47 + 24) >> 1)
      {
        sub_274BBB270();
        v47 = v51;
      }

      *(v47 + 16) = v48 + 1;
      v49 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v57 = v47;
      v46(v47 + v49 + *(v53 + 72) * v48, v54, v44);
      goto LABEL_2;
    }

    (*v63)(v35, v34);
    sub_274AFA708(v36, &qword_28098C440);
    v38 = v65;
    __swift_storeEnumTagSinglePayload(v65, 1, 1, v34);
LABEL_13:
    sub_274AFA708(v38, &qword_28098C4A0);
    v28 = v71;
  }

  sub_274AFA708(v28, &qword_28098C390);
  (*(v56 + 8))(v55, i);
  return v57;
}

uint64_t sub_274B61F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[0] = a2;
  v14[1] = a1;
  v2 = sub_274BF1E44();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C388);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v9);
  v11 = v14 - v10;
  sub_274BF1CA4();
  OUTLINED_FUNCTION_2_19();
  sub_274AFA930(v12, &qword_28098C388);
  sub_274BF1D74();
  sub_274AFA708(v11, &qword_28098C388);
  sub_274B68818(&qword_28098C468, MEMORY[0x277CC8D88]);
  sub_274BF1C44();
  return (*(v4 + 8))(v8, v2);
}

BOOL sub_274B620D0(uint64_t a1, unint64_t a2)
{
  v4 = sub_274BF1B34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  v31 = a2;
  sub_274BF1B14();
  sub_274ADDF6C();
  v8 = sub_274BF5774();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v11 = 0;
  if ((v10 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(v10) & 0xF;
  }

  else
  {
    v12 = v8 & 0xFFFFFFFFFFFFLL;
  }

  v28 = v12;
LABEL_5:
  while (v11 != 4)
  {
    v13 = &unk_2883C69C8 + 16 * v11;
    v15 = *(v13 + 4);
    v14 = *(v13 + 5);
    v16 = v8 == v15 && v10 == v14;
    if (v16 || (sub_274BF5C24() & 1) != 0)
    {
      break;
    }

    if (sub_274BF5004() >= 3)
    {
      v29 = v11 + 1;
      v30 = v8;
      v31 = v10;
      v32 = 0;
      v33 = v12;
      if ((v14 & 0x2000000000000000) != 0)
      {
        v17 = HIBYTE(v14) & 0xF;
      }

      else
      {
        v17 = v15 & 0xFFFFFFFFFFFFLL;
      }

      while (1)
      {
        v18 = sub_274BF5054();
        if (!v19)
        {

          goto LABEL_33;
        }

        v20 = v18;
        v21 = v19;
        if (v17)
        {
          if (sub_274BF50B4() == v18 && v21 == v22)
          {

            continue;
          }

          v24 = sub_274BF5C24();

          if (v24)
          {
            goto LABEL_30;
          }
        }

        if (v20 == 32 && v21 == 0xE100000000000000)
        {
LABEL_30:

          continue;
        }

        v26 = sub_274BF5C24();

        if ((v26 & 1) == 0)
        {

          v12 = v28;
          v11 = v29;
          goto LABEL_5;
        }
      }
    }

    ++v11;
  }

LABEL_33:

  return v11 != 4;
}

uint64_t (*sub_274B6238C(void *a1, uint64_t a2))()
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[4] = sub_274B673C4(v4, a2);
  return sub_274B68AD8;
}

uint64_t (*sub_274B623F0(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_274B67454(v6, a2, a3);
  return sub_274B62464;
}

void sub_274B62468(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_274B624B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_274BBC020(*(a1 + 16), 0);
  v4 = sub_274BBF7C8(&v6, v3 + 4, v1, a1);

  sub_274AEF594();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x277D84F90];
  }

  v6 = v3;
  sub_274B62A20(&v6);
  return v6;
}

uint64_t sub_274B625B0(uint64_t a1, uint64_t (*a2)(void **, void *, uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v5 = sub_274BBBFB8(*(a1 + 16), 0);
  v6 = a2(&v8, v5 + 4, v2, a1);

  OUTLINED_FUNCTION_30_3();
  sub_274AEF594();
  if (v6 != v2)
  {
    __break(1u);
LABEL_4:
    v5 = MEMORY[0x277D84F90];
  }

  v8 = v5;
  sub_274B62B00(&v8);
  return v8;
}

BOOL sub_274B62698(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = a2[1];
  if (sub_274B06A78(*a1, a1[1], *a3))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (sub_274B06A78(v4, v5, *a3))
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v7 < v9;
}

uint64_t sub_274B62718@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v12[1] = a1;
  v14 = a2;
  v13 = sub_274BF1BD4();
  MEMORY[0x28223BE20](v13);
  v2 = sub_274BF1E44();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C388);
  MEMORY[0x28223BE20](v6);
  v8 = v12 - v7;
  sub_274BF1CA4();
  sub_274AFA930(&qword_28098C3C0, &qword_28098C388);
  sub_274BF1D74();
  sub_274AFA708(v8, &qword_28098C388);
  sub_274BF1E34();
  (*(v3 + 8))(v5, v2);
  sub_274B68818(&qword_28098C420, MEMORY[0x277CC8B30]);
  result = sub_274BF50C4();
  v10 = v14;
  *v14 = result;
  v10[1] = v11;
  return result;
}

uint64_t sub_274B62980()
{
  sub_274BF5CD4();
  MEMORY[0x277C65580](0);
  return sub_274BF5D44();
}

uint64_t sub_274B629D0()
{
  sub_274BF5CD4();
  MEMORY[0x277C65580](0);
  return sub_274BF5D44();
}

uint64_t sub_274B62A20(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_274BBFD94();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_274B64A60(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_274B62A8C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_274BBFDA8();
    v4 = v5;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  result = sub_274B64B54(v8, a2);
  *a1 = v4;
  return result;
}

uint64_t sub_274B62B00(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_274BBFDA8();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_274B64C54(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_274B62B6C(char *a1)
{
  v67 = a1;
  v1 = sub_274BF2BE4();
  v65 = *(v1 - 8);
  v66 = v1;
  MEMORY[0x28223BE20](v1);
  v64 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_274BF26B4();
  v59 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C368);
  MEMORY[0x28223BE20](v4 - 8);
  v61 = &v58 - v5;
  v6 = sub_274BF2764();
  v60 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v58 - v10;
  v12 = sub_274BF2694();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_274BF2744();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C370);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v58 - v15;
  v17 = sub_274BF2714();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_274BF2734();
  sub_274BF2684();
  sub_274BF2724();
  v21 = v61;
  v58 = v8;
  v67 = v20;
  v23 = v62;
  v22 = v63;
  v24 = v60;
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_274AFA708(v16, &qword_28098C370);
    v25 = v64;
    sub_274BF2A54();
    v26 = sub_274BF2BD4();
    v27 = sub_274BF54A4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_274AD4000, v26, v27, "Failed to initialize MathPresentation model for LaTeX rendering.", v28, 2u);
      MEMORY[0x277C664A0](v28, -1, -1);
    }

    (v65)[1](v25, v66);
    return 0;
  }

  v31 = *(v18 + 32);
  v66 = v17;
  v31(v67, v16);
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v22);
  v32 = v11;
  sub_274BF2704();
  sub_274AFA708(v21, &qword_28098C368);
  v33 = [objc_opt_self() currentTraitCollection];
  v34 = [v33 userInterfaceStyle];

  v35 = objc_opt_self();
  v36 = &selRef_whiteColor;
  if (v34 != 2)
  {
    v36 = &selRef_blackColor;
  }

  v37 = [v35 *v36];
  v38 = [v37 CGColor];

  v39 = v38;
  sub_274BF26A4();
  sub_274BF2754();
  v40 = v58;
  (*(v24 + 16))(v58, v11, v6);
  sub_274BF26C4();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = *(v24 + 8);
  v49(v40, v6);
  v69.origin.x = v42;
  v69.origin.y = v44;
  v69.size.width = v46;
  v69.size.height = v48;
  v50 = ceil(CGRectGetWidth(v69));
  v70.origin.x = v42;
  v70.origin.y = v44;
  v70.size.width = v46;
  v70.size.height = v48;
  Height = CGRectGetHeight(v70);
  if (v50 <= 0.0 || (v52 = ceil(Height), v52 <= 0.0))
  {

    (*(v59 + 8))(v23, v63);
    (*(v18 + 8))(v67, v66);
    v49(v32, v6);
    return 0;
  }

  v53 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v65 = v39;
  v54 = v53;
  v55 = swift_allocObject();
  v55[2] = v42;
  v55[3] = v44;
  v55[4] = v46;
  v55[5] = v48;
  *(v55 + 6) = v32;
  v56 = swift_allocObject();
  *(v56 + 16) = sub_274B6830C;
  *(v56 + 24) = v55;
  aBlock[4] = sub_274B6831C;
  aBlock[5] = v56;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274B63644;
  aBlock[3] = &block_descriptor_80;
  v57 = _Block_copy(aBlock);
  v64 = v32;

  v29 = [v54 imageWithActions_];
  _Block_release(v57);

  (*(v59 + 8))(v23, v63);
  (*(v18 + 8))(v67, v66);
  LOBYTE(v54) = swift_isEscapingClosureAtFileLocation();

  if ((v54 & 1) == 0)
  {
    v49(v64, v6);

    return v29;
  }

  __break(1u);
  return result;
}

uint64_t sub_274B63428(void *a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v12 = sub_274BF26E4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_274BF2764();
  v17 = *(v16 - 8);
  *&v18 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a1 CGContext];
  v25.origin.x = a3;
  v25.origin.y = a4;
  v25.size.width = a5;
  v25.size.height = a6;
  CGRectGetMinX(v25);
  v26.origin.x = a3;
  v26.origin.y = a4;
  v26.size.width = a5;
  v26.size.height = a6;
  CGRectGetMinY(v26);
  (*(v17 + 16))(v20, a2, v16);
  v22 = v21;
  sub_274BF26D4();
  sub_274BF26F4();

  (*(v13 + 8))(v15, v12);
  return (*(v17 + 8))(v20, v16);
}

void sub_274B63644(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_274B636A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_274BF4F04();

  if (a3)
  {
    type metadata accessor for Key(0);
    sub_274B68818(&qword_280989580, type metadata accessor for Key);
    v6 = sub_274BF4DE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithString:v5 attributes:v6];

  return v7;
}

BOOL sub_274B63778(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    v5 = *(a1 + 32);
    v6 = *(a2 + 32);
    v7 = *(v5 + 16);
    if (v7 == *(v6 + 16))
    {
      v8 = 1;
      while (!v7 || v5 == v6)
      {
LABEL_15:
        result = v8 == v2;
        if (v8 == v2)
        {
          return result;
        }

        if (v8 >= v2)
        {
          __break(1u);
          return result;
        }

        v5 = *(v3 + 8 * v8);
        v6 = *(v4 + 8 * v8++);
        v7 = *(v5 + 16);
        if (v7 != *(v6 + 16))
        {
          return result;
        }
      }

      v9 = (v5 + 40);
      v10 = (v6 + 40);
      while (1)
      {
        v11 = *(v9 - 1) == *(v10 - 1) && *v9 == *v10;
        if (!v11 && (sub_274BF5C24() & 1) == 0)
        {
          break;
        }

        v9 += 2;
        v10 += 2;
        if (!--v7)
        {
          goto LABEL_15;
        }
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_274B63878(uint64_t a1, uint64_t a2)
{
  v4 = sub_274BF1D34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_274B68818(&qword_28098C318, MEMORY[0x277CC8C40]);
    v22 = sub_274BF4EF4();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_274B63A8C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_274B63AE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      if (*v3 == 1)
      {
        if ((*v4 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (*(v3 - 1) != *(v4 - 1))
        {
          v5 = 1;
        }

        if (v5)
        {
          return 0;
        }
      }

      v3 += 16;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

char *sub_274B63BF0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_16(a3, result);
  }

  return result;
}

char *sub_274B63C14(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_16(a3, result);
  }

  return result;
}

char *sub_274B63C34(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[2 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_16(a3, result);
  }

  return result;
}

char *sub_274B63C54(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_16(a3, result);
  }

  return result;
}

char *sub_274B63C7C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[104 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_16(a3, result);
  }

  return result;
}

char *sub_274B63CBC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_16(a3, result);
  }

  return result;
}

void sub_274B63CFC(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_0_2(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_77_0();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_77_0();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_274B63E6C(char *a1, int64_t a2, char a3)
{
  result = sub_274B6425C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_274B63E8C(char *a1, int64_t a2, char a3)
{
  result = sub_274B6435C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_274B63EAC(char *a1, int64_t a2, char a3)
{
  result = sub_274B64468(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_274B63F44(char *a1, int64_t a2, char a3)
{
  result = sub_274B64960(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_274B63FBC()
{
  OUTLINED_FUNCTION_53();
  if (v4)
  {
    OUTLINED_FUNCTION_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12();
    }
  }

  OUTLINED_FUNCTION_24_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989648);
    v7 = OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_97(v7);
    OUTLINED_FUNCTION_76_0(v8 / 16);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v9 = (v3 + 32);
  v10 = (v0 + 32);
  if (v1)
  {
    if (v3 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_274B64090(char a1, uint64_t a2, char a3, char *a4, uint64_t *a5)
{
  if (a3)
  {
    OUTLINED_FUNCTION_13();
    if (v8 != v9)
    {
      OUTLINED_FUNCTION_32();
      if (v8)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12();
    }
  }

  else
  {
    v7 = a2;
  }

  v10 = *(a4 + 2);
  if (v7 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v7;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v12 = OUTLINED_FUNCTION_96();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 32);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v12 != a4 || &v15[32 * v10] <= v14)
    {
      memmove(v14, v15, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_274B6417C()
{
  OUTLINED_FUNCTION_53();
  if (v3)
  {
    OUTLINED_FUNCTION_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C470);
    v9 = OUTLINED_FUNCTION_96();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = 2 * ((v10 - 32) / 8);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[8 * v7] <= v11)
    {
      memmove(v11, v12, 8 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 8 * v7);
  }
}

char *sub_274B6425C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C400);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[2 * v8] <= v12)
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_274B6435C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A610);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_274B64468(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C4E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_274B64580()
{
  OUTLINED_FUNCTION_53();
  if (v4)
  {
    OUTLINED_FUNCTION_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12();
    }
  }

  OUTLINED_FUNCTION_24_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C338);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_97(v7);
    OUTLINED_FUNCTION_76_0(v8 / 104);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v9 = (v3 + 32);
  v10 = (v0 + 32);
  if (v1)
  {
    if (v3 != v0 || &v10[104 * v2] <= v9)
    {
      memmove(v9, v10, 104 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_274B6466C()
{
  OUTLINED_FUNCTION_53();
  if (v4)
  {
    OUTLINED_FUNCTION_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12();
    }
  }

  OUTLINED_FUNCTION_24_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C320);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_97(v7);
    OUTLINED_FUNCTION_76_0(v8 / 24);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v3 != v0 || v0 + 32 + 24 * v2 <= (v3 + 32))
    {
      v10 = OUTLINED_FUNCTION_30_3();
      memmove(v10, v11, v12);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C328);
    OUTLINED_FUNCTION_30_3();
    swift_arrayInitWithCopy();
  }
}

void sub_274B647AC(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void), void (*a8)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_13();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_32();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v17 = *(a7(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v23 = *(a7(0) - 8);
  if (a1)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    sub_274B63CFC(a4 + v24, v15, v20 + v24, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_274B64960(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C3E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

uint64_t sub_274B64A60(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_274BF5BD4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_274BF5174();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_274B65184(v7, v8, a1, v4);
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
    return sub_274B64E4C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_274B64B54(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  result = sub_274BF5BD4();
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
        v8 = sub_274BF5174();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;
      sub_274B65624(v9, v10, a1, v6, a2);
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
    return sub_274B64EA8(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t sub_274B64C54(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_274BF5BD4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_274BF5174();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_274B65DD0(v7, v8, a1, v4);
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
    return sub_274B6503C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_274B64D48(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_274BF5BD4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C380);
        v6 = sub_274BF5174();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_274B662D8(v7, v8, a1, v4);
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
    return sub_274B65104(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_274B64E4C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_274B64EA8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 == a2)
  {
    return result;
  }

  v26 = *a4;
  v6 = (*a4 + 16 * a3);
  v7 = result - a3;
  while (2)
  {
    v24 = v6;
    v25 = a3;
    v8 = *(v26 + 16 * a3 + 8);
    v23 = v7;
    do
    {
      v10 = *(v6 - 2);
      v9 = *(v6 - 1);
      v11 = *a5;
      if (!*(*a5 + 16))
      {

        v15 = 0;
        goto LABEL_8;
      }

      v12 = *v6;

      v13 = sub_274BDA830(v12, v8);
      if (v14)
      {
        v15 = *(*(v11 + 56) + 32 * v13 + 8);
LABEL_8:

        goto LABEL_10;
      }

      v15 = 0;
LABEL_10:

      v16 = *a5;
      if (*(*a5 + 16) && (v17 = sub_274BDA830(v10, v9), (v18 & 1) != 0))
      {
        v19 = *(*(v16 + 56) + 32 * v17 + 8);
      }

      else
      {
        v19 = 0;
      }

      if (v15 >= v19)
      {
        break;
      }

      if (!v26)
      {
        __break(1u);
        return result;
      }

      v20 = *v6;
      v8 = v6[1];
      *v6 = *(v6 - 1);
      *(v6 - 1) = v8;
      *(v6 - 2) = v20;
      v6 -= 2;
    }

    while (!__CFADD__(v7++, 1));
    a3 = v25 + 1;
    v6 = v24 + 2;
    v7 = v23 - 1;
    if (v25 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_274B6503C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_274BF5C24();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
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

uint64_t sub_274B65104(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3 - 32;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 32 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 56);
        v11 = *(v9 + 40);
        v12 = *(v9 + 16);
        *(v9 + 32) = *v9;
        *(v9 + 48) = v12;
        *v9 = v7;
        *(v9 + 8) = v11;
        *(v9 + 24) = v10;
        v9 -= 32;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 32;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_274B65184(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v78 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v73 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + 8 * v16);
                *(v17 + 8 * v16) = *(v17 + 8 * v15);
                *(v17 + 8 * v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = *a3 + 8 * v8 - 8;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + 8 * v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *v25;
                if (v23 >= *v25)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v23;
                v25[1] = v26;
                --v25;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              v21 += 8;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v75 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274BBB338(0, v7[2] + 1, 1, v7);
        v7 = v71;
      }

      v29 = v7[2];
      v28 = v7[3];
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        sub_274BBB338(v28 > 1, v29 + 1, 1, v7);
        v7 = v72;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v8;
      v76 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_56:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_71:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v33 - 1 >= v30)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = v67[1];
          sub_274B66B50((*a3 + 8 * *v65), (*a3 + 8 * *v67), (*a3 + 8 * v68), v76);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7;
          v70 = v7[2];
          if (v33 > v70)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v70)
          {
            goto LABEL_93;
          }

          v30 = v70 - 1;
          memmove(&v31[2 * v33], v67 + 2, 16 * (v70 - 1 - v33));
          v69[2] = v70 - 1;
          v19 = v70 > 2;
          v7 = v69;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v75;
      a4 = v73;
      if (v75 >= v5)
      {
        v78 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_274B667CC(&v78, *a1, a3);
LABEL_89:
}

void sub_274B65624(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v131 = a5;
  v6 = a3[1];
  if (v6 < 1)
  {
    i = MEMORY[0x277D84F90];
LABEL_111:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_154;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_113;
    }

    goto LABEL_148;
  }

  v7 = 0;
  i = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      goto LABEL_33;
    }

    v11 = *a3;
    v12 = (*a3 + 16 * v10);
    v13 = v12[1];
    v130[0] = *v12;
    v130[1] = v13;
    v14 = (v11 + 16 * v9);
    v5 = v14[1];
    v129[0] = *v14;
    v129[1] = v5;

    v121 = sub_274B62698(v130, v129, v131);
    if (v125)
    {

LABEL_123:

      return;
    }

    v114 = i;

    v15 = 16 * v9;
    v16 = v9;
    v17 = v14 + 3;
    v116 = v16;
    v18 = v16 + 2;
    v119 = v6;
    while (1)
    {
      v19 = v18;
      if (v10 + 1 >= v6)
      {
        break;
      }

      v20 = v17[2];
      v21 = *(v17 - 1);
      v22 = *v17;
      v23 = *v131;
      v126 = v10;
      if (!*(*v131 + 16))
      {

        v27 = 0;
        goto LABEL_11;
      }

      v24 = v17[1];

      v25 = sub_274BDA830(v24, v20);
      if (v26)
      {
        v27 = *(*(v23 + 56) + 32 * v25 + 8);
LABEL_11:

        goto LABEL_13;
      }

      v27 = 0;
LABEL_13:

      v28 = *v131;
      if (*(*v131 + 16) && (v29 = sub_274BDA830(v21, v22), (v30 & 1) != 0))
      {
        v31 = *(v28 + 56) + 32 * v29;
        v5 = *v31;
        i = *(v31 + 8);
      }

      else
      {
        v5 = 0;
        i = 0;
      }

      v32 = v121 ^ (v27 >= i);
      v17 += 2;
      v10 = v126 + 1;
      v18 = v19 + 1;
      v6 = v119;
      if ((v32 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v10 = v6;
LABEL_20:
    if (!v121)
    {
      i = v114;
      v9 = v116;
      goto LABEL_33;
    }

    v9 = v116;
    if (v10 < v116)
    {
      goto LABEL_147;
    }

    i = v114;
    if (v116 < v10)
    {
      if (v6 >= v19)
      {
        v33 = v19;
      }

      else
      {
        v33 = v6;
      }

      v34 = 16 * v33;
      v35 = v10;
      v36 = v116;
      do
      {
        if (v36 != --v35)
        {
          v37 = *a3;
          if (!*a3)
          {
            goto LABEL_152;
          }

          v38 = (v37 + v15);
          v39 = v37 + v34;
          v40 = *v38;
          v41 = v38[1];
          *v38 = *(v39 - 16);
          *(v39 - 16) = v40;
          *(v39 - 8) = v41;
        }

        ++v36;
        v34 -= 16;
        v15 += 16;
      }

      while (v36 < v35);
    }

LABEL_33:
    v42 = a3[1];
    if (v10 < v42)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_144;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_59:
    if (v10 < v9)
    {
      goto LABEL_143;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_274BBB338(0, *(i + 16) + 1, 1, i);
      i = v104;
    }

    v64 = *(i + 16);
    v63 = *(i + 24);
    v65 = v64 + 1;
    v128 = v10;
    if (v64 >= v63 >> 1)
    {
      sub_274BBB338(v63 > 1, v64 + 1, 1, i);
      i = v105;
    }

    *(i + 16) = v65;
    v66 = i + 32;
    v67 = (i + 32 + 16 * v64);
    *v67 = v9;
    v67[1] = v128;
    v123 = *a1;
    if (!*a1)
    {
      goto LABEL_153;
    }

    if (v64)
    {
      while (1)
      {
        v68 = v65 - 1;
        v69 = (v66 + 16 * (v65 - 1));
        v70 = (i + 16 * v65);
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v71 = *(i + 32);
          v72 = *(i + 40);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_79:
          if (v74)
          {
            goto LABEL_130;
          }

          v86 = *v70;
          v85 = v70[1];
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_133;
          }

          v90 = v69[1];
          v91 = v90 - *v69;
          if (__OFSUB__(v90, *v69))
          {
            goto LABEL_136;
          }

          if (__OFADD__(v88, v91))
          {
            goto LABEL_138;
          }

          if (v88 + v91 >= v73)
          {
            if (v73 < v91)
            {
              v68 = v65 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        if (v65 < 2)
        {
          goto LABEL_132;
        }

        v93 = *v70;
        v92 = v70[1];
        v81 = __OFSUB__(v92, v93);
        v88 = v92 - v93;
        v89 = v81;
LABEL_94:
        if (v89)
        {
          goto LABEL_135;
        }

        v95 = *v69;
        v94 = v69[1];
        v81 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v81)
        {
          goto LABEL_137;
        }

        if (v96 < v88)
        {
          goto LABEL_108;
        }

LABEL_101:
        if (v68 - 1 >= v65)
        {
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
          goto LABEL_146;
        }

        if (!*a3)
        {
          goto LABEL_150;
        }

        v5 = i;
        i = v66 + 16 * (v68 - 1);
        v100 = *i;
        v101 = v66 + 16 * v68;
        v102 = *(v101 + 8);
        sub_274B66CE4((*a3 + 16 * *i), (*a3 + 16 * *v101), (*a3 + 16 * v102), v123, v131);
        if (v125)
        {
          goto LABEL_123;
        }

        if (v102 < v100)
        {
          goto LABEL_125;
        }

        v103 = v5[2];
        if (v68 > v103)
        {
          goto LABEL_126;
        }

        *i = v100;
        *(i + 8) = v102;
        if (v68 >= v103)
        {
          goto LABEL_127;
        }

        v65 = v103 - 1;
        sub_274BBF62C((v101 + 16), v103 - 1 - v68, (v66 + 16 * v68));
        i = v5;
        v5[2] = v103 - 1;
        if (v103 <= 2)
        {
          goto LABEL_108;
        }
      }

      v75 = v66 + 16 * v65;
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_128;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_129;
      }

      v82 = v70[1];
      v83 = v82 - *v70;
      if (__OFSUB__(v82, *v70))
      {
        goto LABEL_131;
      }

      v81 = __OFADD__(v73, v83);
      v84 = v73 + v83;
      if (v81)
      {
        goto LABEL_134;
      }

      if (v84 >= v78)
      {
        v98 = *v69;
        v97 = v69[1];
        v81 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v81)
        {
          goto LABEL_142;
        }

        if (v73 < v99)
        {
          v68 = v65 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_79;
    }

LABEL_108:
    v6 = a3[1];
    v7 = v128;
    if (v128 >= v6)
    {
      goto LABEL_111;
    }
  }

  v43 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_145;
  }

  if (v43 >= v42)
  {
    v43 = a3[1];
  }

  if (v43 < v9)
  {
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    i = sub_274BBF538(i);
LABEL_113:
    v106 = i;
    v107 = (i + 16);
    for (i = *(i + 16); i >= 2; *v107 = i)
    {
      if (!*a3)
      {
        goto LABEL_151;
      }

      v108 = (v106 + 16 * i);
      v109 = *v108;
      v110 = &v107[2 * i];
      v111 = *(v110 + 1);
      sub_274B66CE4((*a3 + 16 * *v108), (*a3 + 16 * *v110), (*a3 + 16 * v111), v5, v131);
      if (v125)
      {
        break;
      }

      if (v111 < v109)
      {
        goto LABEL_139;
      }

      if (i - 2 >= *v107)
      {
        goto LABEL_140;
      }

      *v108 = v109;
      v108[1] = v111;
      v112 = *v107 - i;
      if (*v107 < i)
      {
        goto LABEL_141;
      }

      i = *v107 - 1;
      sub_274BBF62C(v110 + 16, v112, v110);
    }

    goto LABEL_123;
  }

  if (v10 == v43)
  {
    goto LABEL_59;
  }

  v115 = i;
  v44 = *a3;
  v45 = *a3 + 16 * v10;
  v46 = v9 - v10;
  v118 = v43;
  while (2)
  {
    v127 = v10;
    v47 = *(v44 + 16 * v10 + 8);
    v120 = v46;
    v122 = v45;
    v48 = v45;
LABEL_43:
    v49 = *(v48 - 2);
    v50 = *(v48 - 1);
    v51 = *v131;
    if (*(*v131 + 16))
    {
      v52 = *v48;

      v53 = sub_274BDA830(v52, v47);
      if (v54)
      {
        v55 = *(*(v51 + 56) + 32 * v53 + 8);
        goto LABEL_47;
      }

      v55 = 0;
    }

    else
    {

      v55 = 0;
LABEL_47:
    }

    v56 = *v131;
    if (*(*v131 + 16) && (v57 = sub_274BDA830(v49, v50), (v58 & 1) != 0))
    {
      v59 = *(v56 + 56) + 32 * v57;
      v5 = *v59;
      v60 = *(v59 + 8);
    }

    else
    {
      v5 = 0;
      v60 = 0;
    }

    if (v55 >= v60)
    {
LABEL_57:
      v10 = v127 + 1;
      v45 = v122 + 16;
      v46 = v120 - 1;
      if (v127 + 1 == v118)
      {
        v10 = v118;
        i = v115;
        goto LABEL_59;
      }

      continue;
    }

    break;
  }

  if (v44)
  {
    v61 = *v48;
    v47 = v48[1];
    *v48 = *(v48 - 1);
    *(v48 - 1) = v47;
    *(v48 - 2) = v61;
    v48 -= 2;
    if (__CFADD__(v46++, 1))
    {
      goto LABEL_57;
    }

    goto LABEL_43;
  }

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
}

void sub_274B65DD0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_274BF5C24();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_274BF5C24()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = (v9 + a4);
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = (v9 - v10);
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_274BF5C24() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while ((v31 + 1) != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274BBB338(0, v8[2] + 1, 1, v8);
        v8 = v83;
      }

      v40 = v8[2];
      v39 = v8[3];
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        sub_274BBB338(v39 > 1, v40 + 1, 1, v8);
        v8 = v84;
      }

      v8[2] = v41;
      v42 = v8 + 4;
      v43 = &v8[2 * v40 + 4];
      *v43 = v9;
      v43[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          v45 = &v42[2 * v41 - 2];
          v46 = &v8[2 * v41];
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = v8[4];
            v48 = v8[5];
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_69:
            if (v50)
            {
              goto LABEL_109;
            }

            v62 = *v46;
            v61 = v46[1];
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_112;
            }

            v66 = v45[1];
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_117;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v41 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v41 < 2)
          {
            goto LABEL_111;
          }

          v69 = *v46;
          v68 = v46[1];
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_84:
          if (v65)
          {
            goto LABEL_114;
          }

          v71 = *v45;
          v70 = v45[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_116;
          }

          if (v72 < v64)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v44 - 1 >= v41)
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v76 = &v42[2 * v44 - 2];
          v77 = *v76;
          v78 = &v42[2 * v44];
          v79 = v78[1];
          sub_274B6705C((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v79 < v77)
          {
            goto LABEL_104;
          }

          v80 = v8;
          v81 = v8[2];
          if (v44 > v81)
          {
            goto LABEL_105;
          }

          *v76 = v77;
          v76[1] = v79;
          if (v44 >= v81)
          {
            goto LABEL_106;
          }

          v41 = v81 - 1;
          memmove(&v42[2 * v44], v78 + 2, 16 * (v81 - 1 - v44));
          v80[2] = v81 - 1;
          v82 = v81 > 2;
          v8 = v80;
          if (!v82)
          {
            goto LABEL_98;
          }
        }

        v51 = &v42[2 * v41];
        v52 = *(v51 - 8);
        v53 = *(v51 - 7);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_107;
        }

        v56 = *(v51 - 6);
        v55 = *(v51 - 5);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_108;
        }

        v58 = v46[1];
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_110;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = v45[1];
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_118;
          }

          if (v49 < v75)
          {
            v44 = v41 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_274B668F8(&v92, *a1, a3);
LABEL_102:
}

void sub_274B662D8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v87 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 32 * v9);
        v11 = (*a3 + 32 * v7);
        v12 = 32 * v7;
        v15 = *v11;
        v14 = v11 + 8;
        v13 = v15;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v14;
          v14 += 4;
          v20 = (v10 < v13) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 32 * v6 - 32;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = (v24 + v21);
                v27 = *(v25 + 2);
                v28 = *(v25 + 3);
                v29 = *v25;
                v30 = v26[1];
                *v25 = *v26;
                v25[1] = v30;
                *v26 = v29;
                *(v26 + 2) = v27;
                *(v26 + 3) = v28;
              }

              ++v23;
              v21 -= 32;
              v12 += 32;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v31 = *a3;
            v32 = *a3 + 32 * v9 - 32;
            v33 = v7 - v9;
            do
            {
              v34 = *(v31 + 32 * v9);
              v35 = v33;
              v36 = v32;
              do
              {
                if (v34 >= *v36)
                {
                  break;
                }

                if (!v31)
                {
                  goto LABEL_111;
                }

                v37 = *(v36 + 56);
                v38 = *(v36 + 40);
                v39 = *(v36 + 16);
                *(v36 + 32) = *v36;
                *(v36 + 48) = v39;
                *v36 = v34;
                *(v36 + 8) = v38;
                *(v36 + 24) = v37;
                v36 -= 32;
              }

              while (!__CFADD__(v35++, 1));
              ++v9;
              v32 += 32;
              --v33;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v89 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274BBB338(0, v8[2] + 1, 1, v8);
        v8 = v85;
      }

      v42 = v8[2];
      v41 = v8[3];
      v43 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        sub_274BBB338(v41 > 1, v42 + 1, 1, v8);
        v8 = v86;
      }

      v8[2] = v43;
      v44 = v8 + 4;
      v45 = &v8[2 * v42 + 4];
      *v45 = v7;
      v45[1] = v9;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v42)
      {
        while (1)
        {
          v46 = v43 - 1;
          v47 = &v44[2 * v43 - 2];
          v48 = &v8[2 * v43];
          if (v43 >= 4)
          {
            break;
          }

          if (v43 == 3)
          {
            v49 = v8[4];
            v50 = v8[5];
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
LABEL_56:
            if (v52)
            {
              goto LABEL_96;
            }

            v64 = *v48;
            v63 = v48[1];
            v65 = __OFSUB__(v63, v64);
            v66 = v63 - v64;
            v67 = v65;
            if (v65)
            {
              goto LABEL_99;
            }

            v68 = v47[1];
            v69 = v68 - *v47;
            if (__OFSUB__(v68, *v47))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v66, v69))
            {
              goto LABEL_104;
            }

            if (v66 + v69 >= v51)
            {
              if (v51 < v69)
              {
                v46 = v43 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v43 < 2)
          {
            goto LABEL_98;
          }

          v71 = *v48;
          v70 = v48[1];
          v59 = __OFSUB__(v70, v71);
          v66 = v70 - v71;
          v67 = v59;
LABEL_71:
          if (v67)
          {
            goto LABEL_101;
          }

          v73 = *v47;
          v72 = v47[1];
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_103;
          }

          if (v74 < v66)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v46 - 1 >= v43)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v78 = &v44[2 * v46 - 2];
          v79 = *v78;
          v80 = &v44[2 * v46];
          v81 = v80[1];
          sub_274B67220((*a3 + 32 * *v78), (*a3 + 32 * *v80), (*a3 + 32 * v81), v90);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v81 < v79)
          {
            goto LABEL_91;
          }

          v82 = v8;
          v83 = v8[2];
          if (v46 > v83)
          {
            goto LABEL_92;
          }

          *v78 = v79;
          v78[1] = v81;
          if (v46 >= v83)
          {
            goto LABEL_93;
          }

          v43 = v83 - 1;
          memmove(&v44[2 * v46], v80 + 2, 16 * (v83 - 1 - v46));
          v82[2] = v83 - 1;
          v84 = v83 > 2;
          v8 = v82;
          v5 = 0;
          if (!v84)
          {
            goto LABEL_85;
          }
        }

        v53 = &v44[2 * v43];
        v54 = *(v53 - 8);
        v55 = *(v53 - 7);
        v59 = __OFSUB__(v55, v54);
        v56 = v55 - v54;
        if (v59)
        {
          goto LABEL_94;
        }

        v58 = *(v53 - 6);
        v57 = *(v53 - 5);
        v59 = __OFSUB__(v57, v58);
        v51 = v57 - v58;
        v52 = v59;
        if (v59)
        {
          goto LABEL_95;
        }

        v60 = v48[1];
        v61 = v60 - *v48;
        if (__OFSUB__(v60, *v48))
        {
          goto LABEL_97;
        }

        v59 = __OFADD__(v51, v61);
        v62 = v51 + v61;
        if (v59)
        {
          goto LABEL_100;
        }

        if (v62 >= v56)
        {
          v76 = *v47;
          v75 = v47[1];
          v59 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v59)
          {
            goto LABEL_105;
          }

          if (v51 < v77)
          {
            v46 = v43 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v89;
      a4 = v87;
      if (v89 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_274B66A24(&v92, *a1, a3);
LABEL_89:
}

uint64_t sub_274B667CC(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_274BBF538(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_274B66B50((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_274B668F8(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_274BBF538(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_274B6705C((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_274B66A24(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_274BBF538(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_274B67220((*a3 + 32 * *v9), (*a3 + 32 * *v11), (*a3 + 32 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_274B66B50(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 8;
  v9 = (a3 - __dst) / 8;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[8 * v8] <= a4)
    {
      memmove(a4, __src, 8 * v8);
    }

    v11 = &v4[8 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      v13 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v14 = v7 == v6;
      v6 += 8;
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 8;
    }

    v13 = *v4;
    v14 = v7 == v4;
    v4 += 8;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v7 = v13;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[8 * v9] <= a4)
  {
    memmove(a4, __dst, 8 * v9);
  }

  v11 = &v4[8 * v9];
LABEL_25:
  v16 = v6 - 8;
  for (v5 -= 8; v11 > v4 && v6 > v7; v5 -= 8)
  {
    v18 = *(v11 - 1);
    if (v18 < *v16)
    {
      v14 = v5 + 8 == v6;
      v6 -= 8;
      if (!v14)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_25;
    }

    if (v11 != v5 + 8)
    {
      *v5 = v18;
    }

    v11 -= 8;
  }

LABEL_38:
  v19 = (v11 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v19])
  {
    memmove(v6, v4, 8 * v19);
  }

  return 1;
}

uint64_t sub_274B66CE4(uint64_t *__src, uint64_t *__dst, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = a4;
  v7 = a3;
  v8 = __dst;
  v9 = __src;
  v10 = (__dst - __src) / 16;
  v11 = (a3 - __dst) / 16;
  if (v10 < v11)
  {
    if (a4 != __src || &__src[2 * v10] <= a4)
    {
      memmove(a4, __src, 16 * v10);
    }

    v13 = &v6[2 * v10];
    v51 = v7;
    while (1)
    {
      if (v6 >= v13 || v8 >= v7)
      {
        v8 = v9;
        goto LABEL_57;
      }

      v15 = v8[1];
      v16 = *v6;
      v17 = v6[1];
      v18 = *a5;
      v53 = v9;
      if (*(*a5 + 16))
      {
        v19 = *v8;

        v20 = sub_274BDA830(v19, v15);
        if ((v21 & 1) == 0)
        {
          v22 = 0;
          goto LABEL_18;
        }

        v22 = *(*(v18 + 56) + 32 * v20 + 8);
      }

      else
      {

        v22 = 0;
      }

LABEL_18:

      v23 = *a5;
      if (*(*a5 + 16) && (v24 = sub_274BDA830(v16, v17), (v25 & 1) != 0))
      {
        v26 = *(*(v23 + 56) + 32 * v24 + 8);
      }

      else
      {
        v26 = 0;
      }

      if (v22 >= v26)
      {
        v27 = v6;
        v28 = v53;
        v29 = v53 == v6;
        v6 += 2;
      }

      else
      {
        v27 = v8;
        v28 = v53;
        v29 = v53 == v8;
        v8 += 2;
      }

      v7 = v51;
      if (!v29)
      {
        *v28 = *v27;
      }

      v9 = v28 + 2;
    }
  }

  if (a4 != __dst || &__dst[2 * v11] <= a4)
  {
    memmove(a4, __dst, 16 * v11);
  }

  v13 = &v6[2 * v11];
  v50 = a5;
  v54 = v9;
LABEL_34:
  v31 = v7 - 2;
  v49 = v8 - 2;
  while (v13 > v6 && v8 > v9)
  {
    v52 = v31;
    v33 = v13 - 2;
    v34 = *(v13 - 1);
    v35 = *(v8 - 2);
    v36 = *(v8 - 1);
    v37 = *a5;
    if (*(*a5 + 16))
    {
      v38 = *v33;

      v39 = sub_274BDA830(v38, v34);
      if ((v40 & 1) == 0)
      {
        v41 = 0;
        goto LABEL_46;
      }

      v41 = *(*(v37 + 56) + 32 * v39 + 8);
    }

    else
    {

      v41 = 0;
    }

LABEL_46:

    v42 = *v50;
    if (*(*v50 + 16) && (v43 = sub_274BDA830(v35, v36), (v44 & 1) != 0))
    {
      v45 = *(*(v42 + 56) + 32 * v43 + 8);
    }

    else
    {
      v45 = 0;
    }

    if (v41 < v45)
    {
      a5 = v50;
      v7 = v52;
      v29 = v52 + 2 == v8;
      v8 -= 2;
      v9 = v54;
      if (!v29)
      {
        *v52 = *v49;
        v8 = v49;
      }

      goto LABEL_34;
    }

    a5 = v50;
    if (v13 != v52 + 2)
    {
      *v52 = *v33;
    }

    v31 = v52 - 2;
    v13 -= 2;
    v9 = v54;
  }

LABEL_57:
  v46 = (v13 - v6) / 16;
  if (v8 != v6 || v8 >= &v6[2 * v46])
  {
    memmove(v8, v6, 16 * v46);
  }

  return 1;
}

uint64_t sub_274B6705C(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 16;
  v9 = (a3 - __dst) / 16;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[16 * v8] <= a4)
    {
      memmove(a4, __src, 16 * v8);
    }

    v11 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_274BF5C24() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 16;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    *v7 = *v14;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[16 * v9] <= a4)
  {
    memmove(a4, __dst, 16 * v9);
  }

  v11 = &v4[16 * v9];
LABEL_29:
  v16 = v6 - 16;
  for (v5 -= 16; v11 > v4 && v6 > v7; v5 -= 16)
  {
    v18 = *(v11 - 2) == *(v6 - 2) && *(v11 - 1) == *(v6 - 1);
    if (!v18 && (sub_274BF5C24() & 1) != 0)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_29;
    }

    if (v11 != v5 + 16)
    {
      *v5 = *(v11 - 1);
    }

    v11 -= 16;
  }

LABEL_46:
  v19 = (v11 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v19])
  {
    memmove(v6, v4, 16 * v19);
  }

  return 1;
}

uint64_t sub_274B67220(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 32;
  v9 = (a3 - __dst) / 32;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[32 * v8] <= a4)
    {
      memmove(a4, __src, 32 * v8);
    }

    v11 = &v4[32 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 32;
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 32;
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 32;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    v15 = *(v13 + 1);
    *v7 = *v13;
    *(v7 + 1) = v15;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[32 * v9] <= a4)
  {
    memmove(a4, __dst, 32 * v9);
  }

  v11 = &v4[32 * v9];
LABEL_25:
  v17 = v6 - 32;
  for (v5 -= 32; v11 > v4 && v6 > v7; v5 -= 32)
  {
    if (*(v11 - 4) < *v17)
    {
      v14 = v5 + 32 == v6;
      v6 -= 32;
      if (!v14)
      {
        v20 = *(v17 + 1);
        *v5 = *v17;
        *(v5 + 1) = v20;
        v6 = v17;
      }

      goto LABEL_25;
    }

    if (v11 != v5 + 32)
    {
      v19 = *(v11 - 1);
      *v5 = *(v11 - 2);
      *(v5 + 1) = v19;
    }

    v11 -= 32;
  }

LABEL_38:
  v21 = (v11 - v4) / 32;
  if (v6 != v4 || v6 >= &v4[32 * v21])
  {
    memmove(v6, v4, 32 * v21);
  }

  return 1;
}

uint64_t (*sub_274B673C4(void *a1, uint64_t a2))()
{
  v4 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v4[8] = sub_274B679B4(v4);
  v4[9] = sub_274B67550(v4 + 4, a2);
  return sub_274B68ADC;
}

uint64_t (*sub_274B67454(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_274B679DC(v6);
  v6[9] = sub_274B6773C(v6 + 4, a2, a3);
  return sub_274B674EC;
}

void sub_274B674F0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_274B67550(void *a1, uint64_t a2))(uint64_t **a1)
{
  v3 = v2;
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[1] = a2;
  v6[2] = v2;
  v7 = *v2;
  v8 = sub_274BDA8E8(a2);
  *(v6 + 32) = v9 & 1;
  if (__OFADD__(*(v7 + 16), (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B6B0);
  if (sub_274BF5A74())
  {
    v12 = sub_274BDA8E8(a2);
    if ((v11 & 1) == (v13 & 1))
    {
      v10 = v12;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_274BF5C44();
    __break(1u);
    return result;
  }

LABEL_5:
  v6[3] = v10;
  if (v11)
  {
    v14 = *(*(*v3 + 56) + 8 * v10);
  }

  else
  {
    v14 = 0;
  }

  *v6 = v14;
  return sub_274B67678;
}

void sub_274B67678(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(*(v5 + 56) + 8 * v4) = v2;
    }

    else
    {
      sub_274B32194(v4, v1[1], v2, v5);
    }
  }

  else if ((*a1)[4])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650);
    sub_274BF5A84();
  }

  free(v1);
}

void (*sub_274B6773C(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v8;
  *(v8 + 5) = a3;
  *(v8 + 6) = v3;
  *(v8 + 4) = a2;
  v9 = *v3;
  v10 = sub_274BDA830(a2, a3);
  v8[26] = v11 & 1;
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B6B8);
  if (sub_274BF5A74())
  {
    v14 = sub_274BDA830(a2, a3);
    if ((v13 & 1) == (v15 & 1))
    {
      v12 = v14;
      goto LABEL_5;
    }

LABEL_13:
    result = sub_274BF5C44();
    __break(1u);
    return result;
  }

LABEL_5:
  *(v8 + 7) = v12;
  if (v13)
  {
    v16 = *(*v4 + 56) + 32 * v12;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 24);
    if (*(v16 + 25))
    {
      v20 = 256;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20 | v19;
  }

  else
  {
    v17 = 0;
    v21 = 0;
    v18 = 0uLL;
  }

  *v8 = v17;
  *(v8 + 8) = v18;
  *(v8 + 12) = v21;
  return sub_274B678AC;
}

void sub_274B678AC(uint64_t **a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = *(*a1 + 12);
  v6 = *(*a1 + 26);
  if (v3)
  {
    v7 = v1[7];
    v8 = *v1[6];
    if (v6)
    {
      v9 = v8[7] + 32 * v7;
      *v9 = v3;
      *(v9 + 8) = v2;
      *(v9 + 16) = v4;
      *(v9 + 24) = v5 & 1;
      *(v9 + 25) = HIBYTE(v5) & 1;
    }

    else
    {
      sub_274B321CC(v7, v1[4], v1[5], v3, v2, v4, v5 & 0x101, v8);
    }
  }

  else if (*(*a1 + 26))
  {
    sub_274B687C4(*(*v1[6] + 48) + 16 * v1[7]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C488);
    sub_274BF5A84();
  }

  free(v1);
}

uint64_t (*sub_274B679B4(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_274B68A98;
}

uint64_t (*sub_274B679DC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_274B67A04;
}

void sub_274B67A10(uint64_t a1, void *a2)
{
  sub_274AD8430(0, &qword_28098C290);
  v3 = sub_274BF5134();

  [a2 setTabStops_];
}

uint64_t sub_274B67A94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WFMarkdownStringFormatter.Block();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_14WorkflowUICore14WFMarkdownViewC11AttributionVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_274B67B1C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_274B67B5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274B67CA8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_274B67CE8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_274B67D94()
{
  sub_274B67E5C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_274BF1D34();
    if (v3 <= 0x3F)
    {
      sub_274B67EC8();
      if (v5 > 0x3F)
      {
        return v4;
      }

      sub_274B67F2C();
      if (v6 > 0x3F)
      {
        return v4;
      }

      sub_274B67FDC();
      if (v7 > 0x3F)
      {
        return v4;
      }

      else
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_274B67E5C()
{
  if (!qword_28098C2C8)
  {
    sub_274BF1D34();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28098C2C8);
    }
  }
}

void sub_274B67EC8()
{
  if (!qword_28098C2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989650);
    v0 = sub_274BF51A4();
    if (!v1)
    {
      atomic_store(v0, &qword_28098C2D0);
    }
  }
}

void sub_274B67F2C()
{
  if (!qword_28098C2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C2E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C2E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C2F0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_28098C2D8);
    }
  }
}

void sub_274B67FDC()
{
  if (!qword_28098C2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C300);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28098C2F8);
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for WFMarkdownStringFormatter.ListItemType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WFMarkdownStringFormatter.ListItemType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_274B680C8(uint64_t a1)
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

uint64_t sub_274B680E4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_274B6811C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 392))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_274B6815C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 376) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 392) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 392) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274B68210(uint64_t a1)
{
  v2 = type metadata accessor for WFMarkdownStringFormatter.Block();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_274B68274(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_274B68344(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_274B6839C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_274AF58B0(a1, a2);
  }

  return a1;
}

unint64_t sub_274B683B0()
{
  result = qword_28098C3B8;
  if (!qword_28098C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C3B8);
  }

  return result;
}

unint64_t sub_274B68404()
{
  result = qword_28098C3C8;
  if (!qword_28098C3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C3C8);
  }

  return result;
}

unint64_t sub_274B68458()
{
  result = qword_28098C3D0;
  if (!qword_28098C3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C3D0);
  }

  return result;
}

unint64_t sub_274B684AC()
{
  result = qword_28098C3D8;
  if (!qword_28098C3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C3D8);
  }

  return result;
}

unint64_t sub_274B68530()
{
  result = qword_28098C3E0;
  if (!qword_28098C3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C3E0);
  }

  return result;
}

void sub_274B685AC(uint64_t a1, void *a2)
{
  type metadata accessor for Key(0);
  sub_274B68818(&qword_280989580, type metadata accessor for Key);
  v3 = sub_274BF4DE4();

  [a2 setLinkTextAttributes_];
}

unint64_t sub_274B6867C()
{
  result = qword_28098C450;
  if (!qword_28098C450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C450);
  }

  return result;
}

unint64_t sub_274B686D0()
{
  result = qword_28098C460;
  if (!qword_28098C460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C460);
  }

  return result;
}

uint64_t sub_274B68724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WFMarkdownStringFormatter.Block();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_274B68818(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_274B68860()
{
  result = qword_28098C4B0;
  if (!qword_28098C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C4B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WFMarkdownStringFormatterError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_274B68984(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_274B689C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_274B68A2C()
{
  result = qword_28098C4D8;
  if (!qword_28098C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C4D8);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_40_0@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a2 - 256);
  a1[1] = result;
  return result;
}

id OUTLINED_FUNCTION_43()
{

  return sub_274B17D10();
}

id OUTLINED_FUNCTION_45_0()
{

  return [v0 (v1 + 190)];
}

id OUTLINED_FUNCTION_62_0(void *a1, double a2)
{
  v5 = round(v4 * a2);

  return [a1 (v2 + 2333)];
}

id OUTLINED_FUNCTION_63_0()
{

  return [v0 (v1 + 821)];
}

uint64_t OUTLINED_FUNCTION_65_0()
{

  return sub_274B68304();
}

id OUTLINED_FUNCTION_91(uint64_t a1, const char *a2)
{

  return [v5 a2];
}

uint64_t OUTLINED_FUNCTION_92()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

id OUTLINED_FUNCTION_93(id a1, SEL a2)
{

  return [a1 a2];
}

id OUTLINED_FUNCTION_95(id a1, SEL a2, double a3)
{
  LODWORD(a3) = v4;

  return [a1 a2];
}

id OUTLINED_FUNCTION_98(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id sub_274B68D80()
{
  v0 = objc_allocWithZone(type metadata accessor for VariableDelegate());

  return [v0 init];
}

uint64_t VariableView.init(variable:height:controlState:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *(a3 + 24) = sub_274B68D80;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a2;
  return result;
}

uint64_t VariableView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C4E8);
  MEMORY[0x28223BE20](v1);
  v3 = &v16[-v2 - 8];
  v4 = v0[1];
  v18 = *v0;
  v19[0] = v4;
  *(v19 + 9) = *(v0 + 25);
  v5 = v18;
  v6 = [v5 name];
  sub_274BF4F44();

  v7 = [v5 icon];
  [v5 isAvailable];
  sub_274BF2864();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_1_17(v8);
  v9 = &v3[*(v1 + 36)];
  *v9 = sub_274B690D8;
  v9[1] = v10;
  v9[2] = 0;
  v9[3] = 0;
  v17 = v5;
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_1_17(v11);
  sub_274B691EC(&v18, v16);
  sub_274B691EC(&v18, v16);
  sub_274B69224();
  sub_274B69268();
  OUTLINED_FUNCTION_0_18();
  sub_274B697E0(v12, v13);
  sub_274BF4494();

  return sub_274B69324(v3);
}

void sub_274B69004(void **a1)
{
  type metadata accessor for VariableDelegate();
  sub_274B697E0(qword_28098C578, type metadata accessor for VariableDelegate);
  v4 = sub_274BF2F94();
  v2 = *a1;
  v3 = v2;
  sub_274B69544(v2);
}

void sub_274B690C8(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_274B690E0(uint64_t a1, void **a2)
{
  v2 = *a2;
  type metadata accessor for VariableDelegate();
  sub_274B697E0(qword_28098C578, type metadata accessor for VariableDelegate);
  v4 = sub_274BF2F94();
  v3 = v2;
  sub_274B69544(v2);
}

uint64_t objectdestroyTm_8()
{
  sub_274B690C8(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

unint64_t sub_274B69224()
{
  result = qword_28098C4F0;
  if (!qword_28098C4F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28098C4F0);
  }

  return result;
}

unint64_t sub_274B69268()
{
  result = qword_28098C4F8;
  if (!qword_28098C4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C4E8);
    sub_274B697E0(&qword_28098C500, MEMORY[0x277D7D598]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C4F8);
  }

  return result;
}

uint64_t sub_274B69324(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C4E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_274B693CC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_274B6940C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_274B69468(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC14WorkflowUICoreP33_D6521D150D80B7008B3CC8BBAF4C7F1316VariableDelegate_variable;
  v5 = *(v1 + OBJC_IVAR____TtC14WorkflowUICoreP33_D6521D150D80B7008B3CC8BBAF4C7F1316VariableDelegate_variable);
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

LABEL_6:
    [v3 removeDelegate_];
    v5 = *(v2 + v4);
    if (!v5)
    {
      return;
    }

    goto LABEL_7;
  }

  if (a1)
  {
    sub_274B69224();
    v6 = v5;
    v3 = v3;
    v7 = sub_274BF5624();

    if (v7)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_7:

  [v5 addDelegate_];
}

void sub_274B69544(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14WorkflowUICoreP33_D6521D150D80B7008B3CC8BBAF4C7F1316VariableDelegate_variable);
  *(v1 + OBJC_IVAR____TtC14WorkflowUICoreP33_D6521D150D80B7008B3CC8BBAF4C7F1316VariableDelegate_variable) = a1;
  v2 = a1;
  sub_274B69468(v3);
}

id sub_274B695A4()
{
  v1 = *&v0[OBJC_IVAR____TtC14WorkflowUICoreP33_D6521D150D80B7008B3CC8BBAF4C7F1316VariableDelegate_variable];
  *&v0[OBJC_IVAR____TtC14WorkflowUICoreP33_D6521D150D80B7008B3CC8BBAF4C7F1316VariableDelegate_variable] = 0;

  v3.receiver = v0;
  v3.super_class = type metadata accessor for VariableDelegate();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_274B69628()
{
  type metadata accessor for VariableDelegate();
  sub_274B697E0(qword_28098C578, type metadata accessor for VariableDelegate);
  sub_274BF2CE4();
  sub_274BF2D04();
}

id sub_274B69714()
{
  *&v0[OBJC_IVAR____TtC14WorkflowUICoreP33_D6521D150D80B7008B3CC8BBAF4C7F1316VariableDelegate_variable] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VariableDelegate();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_274B697A0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for VariableDelegate();
  result = sub_274BF2CE4();
  *a1 = result;
  return result;
}

uint64_t sub_274B697E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_274B69828()
{
  type metadata accessor for ContentItemRepresentationLoader.State();
  result = sub_274BF2D94();
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

uint64_t sub_274B698E0()
{
  OUTLINED_FUNCTION_18();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();
}

uint64_t sub_274B69998(uint64_t a1)
{
  type metadata accessor for ContentItemRepresentationLoader.State();
  OUTLINED_FUNCTION_1();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return sub_274B69A5C(v5);
}

uint64_t sub_274B69A5C(uint64_t a1)
{
  OUTLINED_FUNCTION_18();
  v3 = *(v2 + 80);
  v4 = type metadata accessor for ContentItemRepresentationLoader.State();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v11[2] = v3;
  swift_getKeyPath();
  v11[0] = v3;
  swift_getKeyPath();
  (*(v6 + 16))(v9, a1, v4);

  sub_274BF2D74();
  return (*(v6 + 8))(a1, v4);
}

void sub_274B69B9C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_18();
  v5 = type metadata accessor for ContentItemRepresentationLoader.State();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &aBlock[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &aBlock[-v12];
  sub_274B698E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989630);
  v14 = sub_274BF5D64();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 2, v14);
  (*(v7 + 8))(v13, v5);
  if (EnumTagSinglePayload == 1)
  {
    __swift_storeEnumTagSinglePayload(v10, 2, 2, v14);
    sub_274B69A5C(v10);
    v16 = *(v2 + 24);
    if (v16 && (objc_opt_self(), (v17 = swift_dynamicCastObjCClass()) != 0))
    {
      v18 = v17;
      v19 = *(v2 + 16);
      v20 = swift_allocObject();
      v20[2] = v2;
      v20[3] = a1;
      v20[4] = a2;
      OUTLINED_FUNCTION_0_19(v20);
      v30 = 1107296256;
      v31 = sub_274B34420;
      v32 = &block_descriptor_6;
      v21 = _Block_copy(aBlock);
      v22 = v16;
      v23 = v19;

      sub_274ADDED0(a1);

      [v23 getObjectRepresentation:v21 forClass:{objc_msgSend(v18, sel_objectClass)}];
      _Block_release(v21);
    }

    else
    {
      v24 = *(v2 + 16);
      v25 = swift_allocObject();
      v25[2] = v2;
      v25[3] = a1;
      v25[4] = a2;
      OUTLINED_FUNCTION_0_19(v25);
      v30 = 1107296256;
      v31 = sub_274B34890;
      v32 = &block_descriptor_8;
      v26 = _Block_copy(aBlock);

      sub_274ADDED0(a1);
      v23 = v24;

      if (v16)
      {
        objc_opt_self();
        v27 = swift_dynamicCastObjCClass();
        if (v27)
        {
          v28 = v16;
        }
      }

      else
      {
        v27 = 0;
      }

      [v23 getFileRepresentation:v26 forType:v27];

      _Block_release(v26);
    }
  }
}

uint64_t sub_274B69EF0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v11 = sub_274BF4C94();
  v27 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_274BF4CD4();
  v14 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274B0F2B4();
  v25 = sub_274BF5504();
  sub_274B489B0(a1, v29);
  v17 = swift_allocObject();
  v18 = v29[1];
  *(v17 + 16) = v29[0];
  *(v17 + 32) = v18;
  *(v17 + 48) = a5;
  *(v17 + 56) = a4;
  v19 = v24;
  *(v17 + 64) = a6;
  *(v17 + 72) = v19;
  aBlock[4] = sub_274B6B100;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274B02D5C;
  aBlock[3] = &block_descriptor_12;
  v20 = _Block_copy(aBlock);

  v21 = a4;
  sub_274ADDED0(a6);

  sub_274BF4CB4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_274B349A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F90);
  sub_274B03DB4();
  sub_274BF57F4();
  v22 = v25;
  MEMORY[0x277C64DC0](0, v16, v13, v20);
  _Block_release(v20);

  (*(v27 + 8))(v13, v11);
  return (*(v14 + 8))(v16, v26);
}

uint64_t sub_274B6A1BC(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v24 = a5;
  v25 = a4;
  v7 = *(*a2 + 80);
  v8 = type metadata accessor for ContentItemRepresentationLoader.State();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v24 - v9);
  v11 = sub_274BF5724();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - v13;
  v15 = *(v7 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_274B489B0(a1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B300);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v7);
    (*(v15 + 32))(v18, v14, v7);
    (*(v15 + 16))(v10, v18, v7);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989630);
    v19 = sub_274BF5D64();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v10, 0, 2, v19);
    sub_274B69A5C(v10);
    result = (*(v15 + 8))(v18, v7);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v7);
    (*(v12 + 8))(v14, v11);
    if (a3)
    {
      *v10 = a3;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989630);
      v21 = sub_274BF5D64();
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v10, 0, 2, v21);
      v22 = a3;
    }

    else
    {
      sub_274B349FC();
      *v10 = swift_allocError();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989630);
      v23 = sub_274BF5D64();
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v10, 0, 2, v23);
    }

    result = sub_274B69A5C(v10);
  }

  if (v25)
  {
    return v25(result);
  }

  return result;
}

uint64_t sub_274B6A574(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_274BF4C94();
  v25 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_274BF4CD4();
  v23 = *(v13 - 8);
  v24 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274B0F2B4();
  v22 = sub_274BF5504();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a3;
  v16[4] = a2;
  v16[5] = a4;
  v16[6] = a5;
  aBlock[4] = sub_274B6B110;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274B02D5C;
  aBlock[3] = &block_descriptor_18;
  v17 = _Block_copy(aBlock);
  v18 = a1;

  v19 = a2;
  sub_274ADDED0(a4);

  sub_274BF4CB4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_274B349A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F90);
  sub_274B03DB4();
  sub_274BF57F4();
  v20 = v22;
  MEMORY[0x277C64DC0](0, v15, v12, v17);
  _Block_release(v17);

  (*(v25 + 8))(v12, v10);
  return (*(v23 + 8))(v15, v24);
}

uint64_t sub_274B6A830(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v25[1] = a5;
  v26 = a4;
  v7 = *(*a2 + 80);
  v8 = type metadata accessor for ContentItemRepresentationLoader.State();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (v25 - v9);
  v11 = sub_274BF5724();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v25 - v13;
  v15 = *(v7 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = v25 - v17;
  v27 = a1;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C680);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v7);
    (*(v15 + 32))(v18, v14, v7);
    (*(v15 + 16))(v10, v18, v7);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989630);
    v20 = sub_274BF5D64();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v10, 0, 2, v20);
    sub_274B69A5C(v10);
    result = (*(v15 + 8))(v18, v7);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v7);
    (*(v12 + 8))(v14, v11);
    if (a3)
    {
      *v10 = a3;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989630);
      v22 = sub_274BF5D64();
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v10, 0, 2, v22);
      v23 = a3;
    }

    else
    {
      sub_274B349FC();
      *v10 = swift_allocError();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989630);
      v24 = sub_274BF5D64();
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v10, 0, 2, v24);
    }

    result = sub_274B69A5C(v10);
  }

  if (v26)
  {
    return v26(result);
  }

  return result;
}

uint64_t sub_274B6ABE4()
{
  OUTLINED_FUNCTION_18();
  v2 = *(v1 + 104);
  type metadata accessor for ContentItemRepresentationLoader.State();
  v3 = sub_274BF2D94();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_274B6AC88()
{
  sub_274B6ABE4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_274B6AD10()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989630);
  v0 = sub_274BF5D64();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_274B6AD90(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) > 3)
  {
    goto LABEL_6;
  }

  v9 = ((a2 + ~(-1 << v6) - 252) >> v6) + 1;
  if (HIWORD(v9))
  {
    v7 = *(a1 + v5);
    if (v7)
    {
      goto LABEL_14;
    }

LABEL_22:
    v11 = *(a1 + v4);
    if (v11 >= 2)
    {
      v12 = (v11 ^ 0xFF) + 1;
    }

    else
    {
      v12 = 0;
    }

    if (v12 >= 3)
    {
      return v12 - 2;
    }

    else
    {
      return 0;
    }
  }

  if (v9 > 0xFF)
  {
    v7 = *(a1 + v5);
    if (*(a1 + v5))
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

  if (v9 < 2)
  {
    goto LABEL_22;
  }

LABEL_6:
  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 253;
}

void sub_274B6AEC0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFD)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 252) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFC)
  {
    v9 = a2 - 253;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -2 - a2;
        }

        break;
    }
  }
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_9()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

_BYTE *storeEnumTagSinglePayload for ContentItemRepresentationLoadingError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_274B6B1D0()
{
  result = qword_28098C688;
  if (!qword_28098C688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C688);
  }

  return result;
}

uint64_t SafariView.URL.getter@<X0>(uint64_t a1@<X8>)
{
  sub_274BF1F54();
  OUTLINED_FUNCTION_0_2();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t SafariView.init(URL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_274BF1F54();
  OUTLINED_FUNCTION_0_2();
  v6 = *(v5 + 32);

  return v6(a2, a1, v4);
}

uint64_t SafariView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_274BF1F54();
  OUTLINED_FUNCTION_0_2();
  (*(v3 + 16))(a1, v1);
  v4 = sub_274BF3E44();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C690);
  *(a1 + *(result + 36)) = v4;
  return result;
}

id sub_274B6B394()
{
  v1 = sub_274BF1F54();
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, v0, v2);
  v6 = [objc_allocWithZone(MEMORY[0x277CDB708]) init];
  v7 = objc_allocWithZone(MEMORY[0x277CDB700]);
  return sub_274B6B7E8(v4, v6);
}

uint64_t sub_274B6B484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274B6B7A4(&qword_28098C6C8);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_274B6B504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274B6B7A4(&qword_28098C6C8);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_274B6B584()
{
  sub_274B6B7A4(&qword_28098C6C8);
  sub_274BF3D84();
  __break(1u);
}

unint64_t sub_274B6B614()
{
  result = qword_28098C6A8;
  if (!qword_28098C6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C690);
    sub_274B6B7A4(&qword_28098C6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C6A8);
  }

  return result;
}

uint64_t sub_274B6B704()
{
  result = sub_274BF1F54();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_274B6B7A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SafariView.ViewControllerRepresentable(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_274B6B7E8(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_274BF1ED4();
  v7 = [v3 initWithURL:v6 configuration:a2];

  v8 = sub_274BF1F54();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

uint64_t WFReminderContentItem.preview(configuration:)(uint64_t a1)
{
  _s14WorkflowUICore11PreviewViewVMa_2();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v4) = *a1;
  v6 = *(a1 + 1);
  v7 = *(a1 + 8);
  *v5 = v1;
  v5[8] = v4;
  v5[9] = v6;
  *(v5 + 2) = v7;

  v8 = v1;
  sub_274BF2224();
  sub_274B6B984();
  return sub_274BF48B4();
}

uint64_t _s14WorkflowUICore11PreviewViewVMa_2()
{
  result = qword_28098C6D8;
  if (!qword_28098C6D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_274B6B984()
{
  result = qword_28098C6D0;
  if (!qword_28098C6D0)
  {
    _s14WorkflowUICore11PreviewViewVMa_2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C6D0);
  }

  return result;
}

uint64_t WFReminderContentItem.primaryAction.getter@<X0>(uint64_t a1@<X8>)
{
  sub_274BF4FE4();
  if (qword_2809893B8 != -1)
  {
    swift_once();
  }

  v2 = qword_28098C7C0;
  v3 = sub_274BF4F04();
  v4 = sub_274BF4F04();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  v6 = sub_274BF4F44();
  v8 = v7;

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_274BF2154();
  v10 = type metadata accessor for ContentItemPreview.Action();
  v11 = (a1 + v10[5]);
  *v11 = v6;
  v11[1] = v8;
  v12 = (a1 + v10[6]);
  *v12 = 0xD000000000000012;
  v12[1] = 0x8000000274C0B8B0;
  v13 = (a1 + v10[7]);
  *v13 = sub_274B6D638;
  v13[1] = v9;

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v10);
}

uint64_t sub_274B6BB68()
{
  v0 = sub_274BF2A44();
  v27 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_274BF1F54();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_274BF2A24();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_274BF2A14();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C708);
    v26 = v3;
    v24 = *(v13 + 48);
    v14 = [v12 reminder];
    v25 = v4;
    v15 = v14;
    v16 = [v14 objectID];
    v17 = v27;
    v18 = v6;
    v19 = v0;
    v20 = v16;

    *v2 = v20;
    (*(v8 + 16))(&v2[v24], v10, v7);
    (*(v17 + 104))(v2, *MEMORY[0x277D45248], v19);
    sub_274BF2A34();
    (*(v17 + 8))(v2, v19);
    v21 = [objc_opt_self() sharedContext];
    v22 = sub_274BF1ED4();
    [v21 openURL_];

    (*(v25 + 8))(v18, v26);
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_274B6BEE4@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v2 = _s14WorkflowUICore11PreviewViewVMa_2();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = [*v1 reminder];
  v6 = sub_274BF3804();
  v13 = 1;
  sub_274B6C120(v5, v1, v16);
  memcpy(v14, v16, sizeof(v14));
  memcpy(v15, v16, sizeof(v15));
  sub_274AFA6A8(v14, v11, &qword_28098C6F0);
  sub_274AFA708(v15, &qword_28098C6F0);
  memcpy(&v12[7], v14, 0x1E0uLL);
  v11[0] = v6;
  v11[1] = 0;
  LOBYTE(v11[2]) = v13;
  memcpy(&v11[2] + 1, v12, 0x1E7uLL);
  sub_274B6D754(v1, &v11[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_274B6D7B8(&v11[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C6F8);
  sub_274B6D87C();
  sub_274BF4254();

  memcpy(v16, v11, 0x1F8uLL);
  return sub_274AFA708(v16, &qword_28098C6F8);
}

uint64_t sub_274B6C120@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a1;
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989DC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_274BF3FF4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C710);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  sub_274BF46D4();
  sub_274BF3944();
  v14 = sub_274BF3954();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  v23 = sub_274BF4714();

  sub_274AFA708(v13, &qword_28098C710);
  (*(v8 + 104))(v10, *MEMORY[0x277CE0A80], v7);
  v15 = sub_274BF3EF4();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v15);
  v16 = sub_274BF3F54();
  sub_274AFA708(v6, &qword_280989DC0);
  (*(v8 + 8))(v10, v7);
  KeyPath = swift_getKeyPath();
  v18 = sub_274BF45C4();
  v19 = sub_274BF45C4();
  v20 = sub_274BF3904();
  v32 = 1;
  sub_274B6C588(v24, v25, v29);
  memcpy(v33, v29, sizeof(v33));
  memcpy(v34, v29, 0x128uLL);
  sub_274AFA6A8(v33, v28, &qword_28098C718);
  sub_274AFA708(v34, &qword_28098C718);
  memcpy(&v31[7], v33, 0x128uLL);
  LOBYTE(v13) = v32;
  sub_274BF4A94();
  sub_274BF34A4();
  v28[0] = v20;
  v28[1] = 0;
  LOBYTE(v28[2]) = v13;
  memcpy(&v28[2] + 1, v31, 0x12FuLL);
  memcpy(&v28[40], v27, 0x70uLL);
  *a3 = v23;
  *(a3 + 8) = KeyPath;
  *(a3 + 16) = v16;
  *(a3 + 24) = 1;
  *(a3 + 32) = v18;
  *(a3 + 40) = v19;
  memcpy((a3 + 48), v28, 0x1B0uLL);
  v29[0] = v20;
  v29[1] = 0;
  LOBYTE(v29[2]) = v13;
  memcpy(&v29[2] + 1, v31, 0x12FuLL);
  memcpy(v30, v27, sizeof(v30));

  sub_274AFA6A8(v28, &v26, &qword_28098C720);
  sub_274AFA708(v29, &qword_28098C720);
}

uint64_t sub_274B6C588@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v71 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C728);
  MEMORY[0x28223BE20](v5 - 8);
  v61 = &v55 - v6;
  v63 = sub_274BF2114();
  v58 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_274BF1BB4();
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x28223BE20](v8);
  v59 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989DC0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v55 - v14;
  v73 = sub_274BF3FF4();
  v16 = *(v73 - 8);
  *&v17 = MEMORY[0x28223BE20](v73).n128_u64[0];
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a1;
  v20 = [a1 title];
  v21 = v20;
  v72 = v12;
  v60 = a2;
  if (v20)
  {
    v22 = [v20 string];

    sub_274BF4F44();
  }

  v23 = *MEMORY[0x277CE0A68];
  v24 = v73;
  v57 = *(v16 + 104);
  v57(v19, v23, v73);
  v56 = sub_274BF3EF4();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v56);
  sub_274BF3F54();
  sub_274AFA708(v15, &qword_280989DC0);
  v26 = *(v16 + 8);
  v25 = (v16 + 8);
  v55 = v26;
  v26(v19, v24);
  v27 = sub_274BF40D4();
  v68 = v28;
  v69 = v27;
  v30 = v29;
  v70 = v31;

  sub_274BF4AA4();
  sub_274BF34A4();
  v67 = v30 & 1;
  v86 = v30 & 1;
  v32 = [v66 dueDateComponents];
  if (v32)
  {
    v33 = v32;
    v66 = v25;
    v34 = v59;
    sub_274BF1BA4();

    v36 = v64;
    v35 = v65;
    (*(v64 + 32))(v72, v34, v65);
    _s14WorkflowUICore11PreviewViewVMa_2();
    v37 = v61;
    sub_274BF2214();
    v38 = v37;
    v39 = v37;
    v40 = v63;
    if (__swift_getEnumTagSinglePayload(v39, 1, v63) != 1)
    {
      v41 = v58;
      (*(v58 + 32))(v62, v38, v40);
      sub_274B6CD74();
      v42 = v73;
      v57(v19, *MEMORY[0x277CE0AB0], v73);
      __swift_storeEnumTagSinglePayload(v15, 1, 1, v56);
      sub_274BF3F54();
      sub_274AFA708(v15, &qword_280989DC0);
      v55(v19, v42);
      v43 = sub_274BF40D4();
      v45 = v44;
      v47 = v46;
      v49 = v48;

      sub_274BF4AA4();
      sub_274BF34A4();
      (*(v41 + 8))(v62, v40);
      (*(v64 + 8))(v72, v65);
      v81[0] = v47 & 1;
      v82[0] = v43;
      v82[1] = v45;
      LOBYTE(v82[2]) = v47 & 1;
      v82[3] = v49;
      v82[4] = 0x3FE999999999999ALL;
      memcpy(&v82[5], __src, 0x70uLL);
      CGSizeMake(v82);
      memcpy(v83, v82, sizeof(v83));
      goto LABEL_8;
    }

    (*(v36 + 8))(v72, v35);
    sub_274AFA708(v38, &qword_28098C728);
  }

  sub_274B6D8E0(v83);
LABEL_8:
  memcpy(v82, v83, sizeof(v82));
  v51 = v68;
  v50 = v69;
  v80[0] = v69;
  v80[1] = v68;
  v52 = v67;
  LOBYTE(v80[2]) = v67;
  *(&v80[2] + 1) = *v85;
  HIDWORD(v80[2]) = *&v85[3];
  v53 = v70;
  v80[3] = v70;
  memcpy(&v80[4], v84, 0x70uLL);
  memcpy(v79, v80, 0x90uLL);
  memcpy(v81, v83, sizeof(v81));
  memcpy(&v79[144], v83, 0x98uLL);
  memcpy(v71, v79, 0x128uLL);
  sub_274AFA6A8(v80, v74, &qword_28098C730);
  sub_274AFA6A8(v81, v74, &qword_28098C738);
  sub_274AFA708(v82, &qword_28098C738);
  v74[0] = v50;
  v74[1] = v51;
  v75 = v52;
  *v76 = *v85;
  *&v76[3] = *&v85[3];
  v77 = v53;
  memcpy(v78, v84, sizeof(v78));
  return sub_274AFA708(v74, &qword_28098C730);
}

uint64_t sub_274B6CD74()
{
  v0 = sub_274BF2254();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() currentCalendar];
  sub_274BF2204();

  v5 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v5 setDateStyle_];
  [v5 setTimeStyle_];
  if ((sub_274BF21D4() & 1) == 0)
  {
    if (sub_274BF21F4())
    {
      sub_274BF4FE4();
      if (qword_2809893B8 == -1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if ((sub_274BF21E4() & 1) == 0)
      {
        [v5 setDateStyle_];
        v27 = sub_274BF20A4();
        v28 = [v5 stringFromDate_];

        v16 = sub_274BF4F44();
        goto LABEL_12;
      }

      sub_274BF4FE4();
      if (qword_2809893B8 == -1)
      {
LABEL_10:
        v17 = qword_28098C7C0;
        v18 = sub_274BF4F04();
        v19 = sub_274BF4F04();

        v20 = [v17 localizedStringForKey:v18 value:v19 table:0];

        sub_274BF4F44();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A5D8);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_274BF8D80;
        v22 = sub_274BF20A4();
        v23 = [v5 stringFromDate_];

        v24 = sub_274BF4F44();
        v26 = v25;

        *(v21 + 56) = MEMORY[0x277D837D0];
        *(v21 + 64) = sub_274B12CA0();
        *(v21 + 32) = v24;
        *(v21 + 40) = v26;
        v16 = sub_274BF4F14();

LABEL_12:

        goto LABEL_13;
      }
    }

    swift_once();
    goto LABEL_10;
  }

  sub_274BF4FE4();
  if (qword_2809893B8 != -1)
  {
    swift_once();
  }

  v6 = qword_28098C7C0;
  v7 = sub_274BF4F04();
  v8 = sub_274BF4F04();

  v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

  sub_274BF4F44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A5D8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_274BF8D80;
  v11 = sub_274BF20A4();
  v12 = [v5 stringFromDate_];

  v13 = sub_274BF4F44();
  v15 = v14;

  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_274B12CA0();
  *(v10 + 32) = v13;
  *(v10 + 40) = v15;
  v16 = sub_274BF4F14();

LABEL_13:
  (*(v1 + 8))(v3, v0);
  return v16;
}

uint64_t sub_274B6D348(id *a1)
{
  v2 = sub_274BF2A44();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_274BF1F54();
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_274BF2A24();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274BF2A14();
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C708) + 48);
  v14 = [*a1 reminder];
  v15 = [v14 objectID];

  *v5 = v15;
  (*(v10 + 16))(&v5[v13], v12, v9);
  (*(v3 + 104))(v5, *MEMORY[0x277D45248], v2);
  sub_274BF2A34();
  (*(v3 + 8))(v5, v2);
  v16 = [objc_opt_self() sharedContext];
  v17 = sub_274BF1ED4();
  [v16 openURL_];

  (*(v19 + 8))(v8, v20);
  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_274B6D668()
{
  result = sub_274B6D6F4();
  if (v1 <= 0x3F)
  {
    result = sub_274BF2254();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_274B6D6F4()
{
  result = qword_28098C6E8;
  if (!qword_28098C6E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28098C6E8);
  }

  return result;
}

uint64_t sub_274B6D754(uint64_t a1, uint64_t a2)
{
  v4 = _s14WorkflowUICore11PreviewViewVMa_2();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274B6D7B8(uint64_t a1, uint64_t a2)
{
  v4 = _s14WorkflowUICore11PreviewViewVMa_2();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_274B6D81C()
{
  v1 = *(_s14WorkflowUICore11PreviewViewVMa_2() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_274B6D348(v2);
}

unint64_t sub_274B6D87C()
{
  result = qword_28098C700;
  if (!qword_28098C700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C700);
  }

  return result;
}

uint64_t View.maximumSizeCategory(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SizeCategoryCappingModifier();
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_274BF38E4();
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  v10 = *(v6 + 20);
  *&v8[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B510);
  swift_storeEnumTagMultiPayload();
  MEMORY[0x277C63D20](v8, a2, v6, a3);
  return sub_274B6DC64(v8);
}

uint64_t type metadata accessor for SizeCategoryCappingModifier()
{
  result = qword_28098C748;
  if (!qword_28098C748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_274B6DA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_274BF38E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  KeyPath = swift_getKeyPath();
  v14 = type metadata accessor for SizeCategoryCappingModifier();
  sub_274ADE5E4(v14, v15, v16, v17, v18, v19, v20, v21, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, vars0, vars8);
  v22 = sub_274B6DE38(v9, v2);
  v23 = (*(v7 + 8))(v9, v6);
  if (v22)
  {
    (*(v7 + 16))(v12, v3, v6);
  }

  else
  {
    sub_274ADE5E4(v23, v24, v25, v26, v27, v28, v29, v30, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, vars0, vars8);
  }

  v31 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C758) + 36));
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C760);
  (*(v7 + 32))(v31 + *(v32 + 28), v12, v6);
  *v31 = KeyPath;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C768);
  return (*(*(v33 - 8) + 16))(a2, a1, v33);
}

uint64_t sub_274B6DC64(uint64_t a1)
{
  v2 = type metadata accessor for SizeCategoryCappingModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_274B6DCC0()
{
  result = qword_28098C740;
  if (!qword_28098C740)
  {
    type metadata accessor for SizeCategoryCappingModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C740);
  }

  return result;
}

void sub_274B6DD40()
{
  sub_274BF38E4();
  if (v0 <= 0x3F)
  {
    sub_274B6DDC4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_274B6DDC4()
{
  if (!qword_2815A3110)
  {
    sub_274BF38E4();
    v0 = sub_274BF2F64();
    if (!v1)
    {
      atomic_store(v0, &qword_2815A3110);
    }
  }
}

BOOL sub_274B6DE38(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v3 = sub_274BF38E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = *(v4 + 16);
  v11(&v19 - v9, a2, v3, v8);
  v12 = *(v4 + 88);
  v13 = v12(v10, v3);
  v14 = 0;
  v15 = *MEMORY[0x277CE0268];
  if (v13 != *MEMORY[0x277CE0268])
  {
    if (v13 == *MEMORY[0x277CE0298])
    {
      v14 = 1;
      goto LABEL_24;
    }

    if (v13 == *MEMORY[0x277CE02A0])
    {
      v14 = 2;
      goto LABEL_24;
    }

    if (v13 == *MEMORY[0x277CE0290])
    {
      goto LABEL_7;
    }

    if (v13 == *MEMORY[0x277CE0260])
    {
      v14 = 4;
    }

    else if (v13 == *MEMORY[0x277CE0270])
    {
      v14 = 5;
    }

    else if (v13 == *MEMORY[0x277CE0248])
    {
      v14 = 6;
    }

    else if (v13 == *MEMORY[0x277CE0280])
    {
      v14 = 7;
    }

    else if (v13 == *MEMORY[0x277CE0278])
    {
      v14 = 8;
    }

    else if (v13 == *MEMORY[0x277CE0288])
    {
      v14 = 9;
    }

    else if (v13 == *MEMORY[0x277CE0250])
    {
      v14 = 10;
    }

    else
    {
      if (v13 != *MEMORY[0x277CE0258])
      {
        (*(v4 + 8))(v10, v3);
LABEL_7:
        v14 = 3;
        goto LABEL_24;
      }

      v14 = 11;
    }
  }

LABEL_24:
  (v11)(v6, v20, v3);
  v16 = v12(v6, v3);
  if (v16 == v15)
  {
    v17 = 0;
  }

  else if (v16 == *MEMORY[0x277CE0298])
  {
    v17 = 1;
  }

  else if (v16 == *MEMORY[0x277CE02A0])
  {
    v17 = 2;
  }

  else
  {
    if (v16 != *MEMORY[0x277CE0290])
    {
      if (v16 == *MEMORY[0x277CE0260])
      {
        v17 = 4;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x277CE0270])
      {
        v17 = 5;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x277CE0248])
      {
        v17 = 6;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x277CE0280])
      {
        v17 = 7;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x277CE0278])
      {
        v17 = 8;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x277CE0288])
      {
        v17 = 9;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x277CE0250])
      {
        v17 = 10;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x277CE0258])
      {
        v17 = 11;
        return v14 < v17;
      }

      (*(v4 + 8))(v6, v3);
    }

    v17 = 3;
  }

  return v14 < v17;
}

unint64_t sub_274B6E254()
{
  result = qword_28098C770;
  if (!qword_28098C770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C758);
    sub_274AFA930(&qword_28098C778, &qword_28098C768);
    sub_274AFA930(&qword_28098C780, &qword_28098C760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C770);
  }

  return result;
}

void *sub_274B6E36C()
{
  v1 = OBJC_IVAR___WFIconHostingView_icon;
  OUTLINED_FUNCTION_3_14();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}